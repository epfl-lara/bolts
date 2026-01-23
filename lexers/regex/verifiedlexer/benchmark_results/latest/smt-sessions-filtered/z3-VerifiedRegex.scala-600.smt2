; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18466 () Bool)

(assert start!18466)

(declare-fun b!171036 () Bool)

(declare-fun b_free!6609 () Bool)

(declare-fun b_next!6609 () Bool)

(assert (=> b!171036 (= b_free!6609 (not b_next!6609))))

(declare-fun tp!84372 () Bool)

(declare-fun b_and!11233 () Bool)

(assert (=> b!171036 (= tp!84372 b_and!11233)))

(declare-fun b_free!6611 () Bool)

(declare-fun b_next!6611 () Bool)

(assert (=> b!171036 (= b_free!6611 (not b_next!6611))))

(declare-fun tp!84370 () Bool)

(declare-fun b_and!11235 () Bool)

(assert (=> b!171036 (= tp!84370 b_and!11235)))

(declare-fun b!171058 () Bool)

(declare-fun b_free!6613 () Bool)

(declare-fun b_next!6613 () Bool)

(assert (=> b!171058 (= b_free!6613 (not b_next!6613))))

(declare-fun tp!84362 () Bool)

(declare-fun b_and!11237 () Bool)

(assert (=> b!171058 (= tp!84362 b_and!11237)))

(declare-fun b_free!6615 () Bool)

(declare-fun b_next!6615 () Bool)

(assert (=> b!171058 (= b_free!6615 (not b_next!6615))))

(declare-fun tp!84361 () Bool)

(declare-fun b_and!11239 () Bool)

(assert (=> b!171058 (= tp!84361 b_and!11239)))

(declare-fun b!171041 () Bool)

(declare-fun b_free!6617 () Bool)

(declare-fun b_next!6617 () Bool)

(assert (=> b!171041 (= b_free!6617 (not b_next!6617))))

(declare-fun tp!84365 () Bool)

(declare-fun b_and!11241 () Bool)

(assert (=> b!171041 (= tp!84365 b_and!11241)))

(declare-fun b_free!6619 () Bool)

(declare-fun b_next!6619 () Bool)

(assert (=> b!171041 (= b_free!6619 (not b_next!6619))))

(declare-fun tp!84371 () Bool)

(declare-fun b_and!11243 () Bool)

(assert (=> b!171041 (= tp!84371 b_and!11243)))

(declare-fun bs!16596 () Bool)

(declare-fun b!171060 () Bool)

(declare-fun b!171062 () Bool)

(assert (= bs!16596 (and b!171060 b!171062)))

(declare-fun lambda!4892 () Int)

(declare-fun lambda!4891 () Int)

(assert (=> bs!16596 (not (= lambda!4892 lambda!4891))))

(declare-fun b!171074 () Bool)

(declare-fun e!103656 () Bool)

(assert (=> b!171074 (= e!103656 true)))

(declare-fun b!171073 () Bool)

(declare-fun e!103655 () Bool)

(assert (=> b!171073 (= e!103655 e!103656)))

(declare-fun b!171072 () Bool)

(declare-fun e!103654 () Bool)

(assert (=> b!171072 (= e!103654 e!103655)))

(assert (=> b!171060 e!103654))

(assert (= b!171073 b!171074))

(assert (= b!171072 b!171073))

(declare-datatypes ((List!2927 0))(
  ( (Nil!2917) (Cons!2917 (h!8314 (_ BitVec 16)) (t!27129 List!2927)) )
))
(declare-datatypes ((TokenValue!545 0))(
  ( (FloatLiteralValue!1090 (text!4260 List!2927)) (TokenValueExt!544 (__x!2577 Int)) (Broken!2725 (value!19195 List!2927)) (Object!554) (End!545) (Def!545) (Underscore!545) (Match!545) (Else!545) (Error!545) (Case!545) (If!545) (Extends!545) (Abstract!545) (Class!545) (Val!545) (DelimiterValue!1090 (del!605 List!2927)) (KeywordValue!551 (value!19196 List!2927)) (CommentValue!1090 (value!19197 List!2927)) (WhitespaceValue!1090 (value!19198 List!2927)) (IndentationValue!545 (value!19199 List!2927)) (String!3804) (Int32!545) (Broken!2726 (value!19200 List!2927)) (Boolean!546) (Unit!2547) (OperatorValue!548 (op!605 List!2927)) (IdentifierValue!1090 (value!19201 List!2927)) (IdentifierValue!1091 (value!19202 List!2927)) (WhitespaceValue!1091 (value!19203 List!2927)) (True!1090) (False!1090) (Broken!2727 (value!19204 List!2927)) (Broken!2728 (value!19205 List!2927)) (True!1091) (RightBrace!545) (RightBracket!545) (Colon!545) (Null!545) (Comma!545) (LeftBracket!545) (False!1091) (LeftBrace!545) (ImaginaryLiteralValue!545 (text!4261 List!2927)) (StringLiteralValue!1635 (value!19206 List!2927)) (EOFValue!545 (value!19207 List!2927)) (IdentValue!545 (value!19208 List!2927)) (DelimiterValue!1091 (value!19209 List!2927)) (DedentValue!545 (value!19210 List!2927)) (NewLineValue!545 (value!19211 List!2927)) (IntegerValue!1635 (value!19212 (_ BitVec 32)) (text!4262 List!2927)) (IntegerValue!1636 (value!19213 Int) (text!4263 List!2927)) (Times!545) (Or!545) (Equal!545) (Minus!545) (Broken!2729 (value!19214 List!2927)) (And!545) (Div!545) (LessEqual!545) (Mod!545) (Concat!1292) (Not!545) (Plus!545) (SpaceValue!545 (value!19215 List!2927)) (IntegerValue!1637 (value!19216 Int) (text!4264 List!2927)) (StringLiteralValue!1636 (text!4265 List!2927)) (FloatLiteralValue!1091 (text!4266 List!2927)) (BytesLiteralValue!545 (value!19217 List!2927)) (CommentValue!1091 (value!19218 List!2927)) (StringLiteralValue!1637 (value!19219 List!2927)) (ErrorTokenValue!545 (msg!606 List!2927)) )
))
(declare-datatypes ((C!2416 0))(
  ( (C!2417 (val!1094 Int)) )
))
(declare-datatypes ((List!2928 0))(
  ( (Nil!2918) (Cons!2918 (h!8315 C!2416) (t!27130 List!2928)) )
))
(declare-datatypes ((IArray!1737 0))(
  ( (IArray!1738 (innerList!926 List!2928)) )
))
(declare-datatypes ((Conc!868 0))(
  ( (Node!868 (left!2232 Conc!868) (right!2562 Conc!868) (csize!1966 Int) (cheight!1079 Int)) (Leaf!1469 (xs!3463 IArray!1737) (csize!1967 Int)) (Empty!868) )
))
(declare-datatypes ((BalanceConc!1744 0))(
  ( (BalanceConc!1745 (c!33816 Conc!868)) )
))
(declare-datatypes ((TokenValueInjection!862 0))(
  ( (TokenValueInjection!863 (toValue!1186 Int) (toChars!1045 Int)) )
))
(declare-datatypes ((String!3805 0))(
  ( (String!3806 (value!19220 String)) )
))
(declare-datatypes ((Regex!747 0))(
  ( (ElementMatch!747 (c!33817 C!2416)) (Concat!1293 (regOne!2006 Regex!747) (regTwo!2006 Regex!747)) (EmptyExpr!747) (Star!747 (reg!1076 Regex!747)) (EmptyLang!747) (Union!747 (regOne!2007 Regex!747) (regTwo!2007 Regex!747)) )
))
(declare-datatypes ((Rule!846 0))(
  ( (Rule!847 (regex!523 Regex!747) (tag!701 String!3805) (isSeparator!523 Bool) (transformation!523 TokenValueInjection!862)) )
))
(declare-datatypes ((List!2929 0))(
  ( (Nil!2919) (Cons!2919 (h!8316 Rule!846) (t!27131 List!2929)) )
))
(declare-fun rules!1920 () List!2929)

(get-info :version)

(assert (= (and b!171060 ((_ is Cons!2919) rules!1920)) b!171072))

(declare-fun order!1599 () Int)

(declare-fun order!1597 () Int)

(declare-fun dynLambda!1107 (Int Int) Int)

(declare-fun dynLambda!1108 (Int Int) Int)

(assert (=> b!171074 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4892))))

(declare-fun order!1601 () Int)

(declare-fun dynLambda!1109 (Int Int) Int)

(assert (=> b!171074 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4892))))

(assert (=> b!171060 true))

(declare-fun b!171035 () Bool)

(declare-fun res!77371 () Bool)

(declare-fun e!103638 () Bool)

(assert (=> b!171035 (=> (not res!77371) (not e!103638))))

(declare-datatypes ((Token!790 0))(
  ( (Token!791 (value!19221 TokenValue!545) (rule!1030 Rule!846) (size!2411 Int) (originalCharacters!566 List!2928)) )
))
(declare-fun separatorToken!170 () Token!790)

(declare-datatypes ((LexerInterface!409 0))(
  ( (LexerInterfaceExt!406 (__x!2578 Int)) (Lexer!407) )
))
(declare-fun thiss!17480 () LexerInterface!409)

(declare-fun rulesProduceIndividualToken!158 (LexerInterface!409 List!2929 Token!790) Bool)

(assert (=> b!171035 (= res!77371 (rulesProduceIndividualToken!158 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!103625 () Bool)

(assert (=> b!171036 (= e!103625 (and tp!84372 tp!84370))))

(declare-datatypes ((List!2930 0))(
  ( (Nil!2920) (Cons!2920 (h!8317 Token!790) (t!27132 List!2930)) )
))
(declare-fun tokens!465 () List!2930)

(declare-fun e!103632 () Bool)

(declare-fun e!103636 () Bool)

(declare-fun tp!84368 () Bool)

(declare-fun b!171037 () Bool)

(declare-fun inv!21 (TokenValue!545) Bool)

(assert (=> b!171037 (= e!103632 (and (inv!21 (value!19221 (h!8317 tokens!465))) e!103636 tp!84368))))

(declare-fun b!171038 () Bool)

(declare-fun res!77368 () Bool)

(declare-fun e!103628 () Bool)

(assert (=> b!171038 (=> res!77368 e!103628)))

(declare-fun lt!54115 () List!2928)

(declare-datatypes ((IArray!1739 0))(
  ( (IArray!1740 (innerList!927 List!2930)) )
))
(declare-datatypes ((Conc!869 0))(
  ( (Node!869 (left!2233 Conc!869) (right!2563 Conc!869) (csize!1968 Int) (cheight!1080 Int)) (Leaf!1470 (xs!3464 IArray!1739) (csize!1969 Int)) (Empty!869) )
))
(declare-datatypes ((BalanceConc!1746 0))(
  ( (BalanceConc!1747 (c!33818 Conc!869)) )
))
(declare-fun isEmpty!1246 (BalanceConc!1746) Bool)

(declare-datatypes ((tuple2!2826 0))(
  ( (tuple2!2827 (_1!1629 BalanceConc!1746) (_2!1629 BalanceConc!1744)) )
))
(declare-fun lex!209 (LexerInterface!409 List!2929 BalanceConc!1744) tuple2!2826)

(declare-fun seqFromList!423 (List!2928) BalanceConc!1744)

(assert (=> b!171038 (= res!77368 (isEmpty!1246 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115)))))))

(declare-fun b!171039 () Bool)

(declare-fun res!77358 () Bool)

(declare-fun e!103645 () Bool)

(assert (=> b!171039 (=> (not res!77358) (not e!103645))))

(declare-fun lt!54105 () List!2928)

(declare-fun lt!54109 () List!2928)

(declare-fun list!1061 (BalanceConc!1744) List!2928)

(assert (=> b!171039 (= res!77358 (= (list!1061 (seqFromList!423 lt!54105)) lt!54109))))

(declare-fun b!171040 () Bool)

(declare-fun e!103626 () Bool)

(assert (=> b!171040 (= e!103645 (not e!103626))))

(declare-fun res!77370 () Bool)

(assert (=> b!171040 (=> res!77370 e!103626)))

(declare-fun lt!54119 () List!2928)

(declare-fun printWithSeparatorTokenWhenNeededRec!92 (LexerInterface!409 List!2929 BalanceConc!1746 Token!790 Int) BalanceConc!1744)

(declare-fun seqFromList!424 (List!2930) BalanceConc!1746)

(assert (=> b!171040 (= res!77370 (not (= lt!54119 (list!1061 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!54120 () List!2928)

(declare-fun lt!54112 () List!2928)

(assert (=> b!171040 (= lt!54120 lt!54112)))

(declare-fun lt!54111 () List!2928)

(declare-fun ++!670 (List!2928 List!2928) List!2928)

(assert (=> b!171040 (= lt!54112 (++!670 lt!54115 lt!54111))))

(declare-fun lt!54104 () List!2928)

(assert (=> b!171040 (= lt!54120 (++!670 (++!670 lt!54115 lt!54104) lt!54119))))

(declare-datatypes ((Unit!2548 0))(
  ( (Unit!2549) )
))
(declare-fun lt!54117 () Unit!2548)

(declare-fun lemmaConcatAssociativity!208 (List!2928 List!2928 List!2928) Unit!2548)

(assert (=> b!171040 (= lt!54117 (lemmaConcatAssociativity!208 lt!54115 lt!54104 lt!54119))))

(declare-fun charsOf!178 (Token!790) BalanceConc!1744)

(assert (=> b!171040 (= lt!54115 (list!1061 (charsOf!178 (h!8317 tokens!465))))))

(assert (=> b!171040 (= lt!54111 (++!670 lt!54104 lt!54119))))

(declare-fun printWithSeparatorTokenWhenNeededList!102 (LexerInterface!409 List!2929 List!2930 Token!790) List!2928)

(assert (=> b!171040 (= lt!54119 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 tokens!465) separatorToken!170))))

(assert (=> b!171040 (= lt!54104 (list!1061 (charsOf!178 separatorToken!170)))))

(declare-fun res!77369 () Bool)

(declare-fun e!103635 () Bool)

(assert (=> start!18466 (=> (not res!77369) (not e!103635))))

(assert (=> start!18466 (= res!77369 ((_ is Lexer!407) thiss!17480))))

(assert (=> start!18466 e!103635))

(assert (=> start!18466 true))

(declare-fun e!103641 () Bool)

(assert (=> start!18466 e!103641))

(declare-fun e!103646 () Bool)

(declare-fun inv!3743 (Token!790) Bool)

(assert (=> start!18466 (and (inv!3743 separatorToken!170) e!103646)))

(declare-fun e!103644 () Bool)

(assert (=> start!18466 e!103644))

(declare-fun e!103633 () Bool)

(assert (=> b!171041 (= e!103633 (and tp!84365 tp!84371))))

(declare-fun b!171042 () Bool)

(declare-fun res!77372 () Bool)

(assert (=> b!171042 (=> (not res!77372) (not e!103635))))

(declare-fun rulesInvariant!375 (LexerInterface!409 List!2929) Bool)

(assert (=> b!171042 (= res!77372 (rulesInvariant!375 thiss!17480 rules!1920))))

(declare-fun b!171043 () Bool)

(declare-fun e!103647 () Bool)

(declare-datatypes ((tuple2!2828 0))(
  ( (tuple2!2829 (_1!1630 Token!790) (_2!1630 List!2928)) )
))
(declare-fun lt!54106 () tuple2!2828)

(declare-fun isEmpty!1247 (List!2928) Bool)

(assert (=> b!171043 (= e!103647 (isEmpty!1247 (_2!1630 lt!54106)))))

(declare-fun b!171044 () Bool)

(declare-fun res!77361 () Bool)

(assert (=> b!171044 (=> (not res!77361) (not e!103635))))

(declare-fun isEmpty!1248 (List!2929) Bool)

(assert (=> b!171044 (= res!77361 (not (isEmpty!1248 rules!1920)))))

(declare-fun b!171045 () Bool)

(declare-fun res!77375 () Bool)

(assert (=> b!171045 (=> res!77375 e!103626)))

(declare-fun e!103629 () Bool)

(assert (=> b!171045 (= res!77375 e!103629)))

(declare-fun res!77360 () Bool)

(assert (=> b!171045 (=> (not res!77360) (not e!103629))))

(assert (=> b!171045 (= res!77360 (not (= lt!54105 lt!54112)))))

(declare-fun b!171046 () Bool)

(declare-fun e!103631 () Bool)

(declare-fun tp!84367 () Bool)

(declare-fun e!103634 () Bool)

(declare-fun inv!3740 (String!3805) Bool)

(declare-fun inv!3744 (TokenValueInjection!862) Bool)

(assert (=> b!171046 (= e!103631 (and tp!84367 (inv!3740 (tag!701 (rule!1030 separatorToken!170))) (inv!3744 (transformation!523 (rule!1030 separatorToken!170))) e!103634))))

(declare-fun b!171047 () Bool)

(declare-fun e!103637 () Bool)

(declare-fun validRegex!181 (Regex!747) Bool)

(assert (=> b!171047 (= e!103637 (validRegex!181 (regex!523 (rule!1030 (h!8317 tokens!465)))))))

(assert (=> b!171047 e!103647))

(declare-fun res!77364 () Bool)

(assert (=> b!171047 (=> (not res!77364) (not e!103647))))

(assert (=> b!171047 (= res!77364 (= (_1!1630 lt!54106) (h!8317 tokens!465)))))

(declare-datatypes ((Option!320 0))(
  ( (None!319) (Some!319 (v!13762 tuple2!2828)) )
))
(declare-fun lt!54118 () Option!320)

(declare-fun get!801 (Option!320) tuple2!2828)

(assert (=> b!171047 (= lt!54106 (get!801 lt!54118))))

(declare-fun isDefined!171 (Option!320) Bool)

(assert (=> b!171047 (isDefined!171 lt!54118)))

(declare-fun maxPrefix!139 (LexerInterface!409 List!2929 List!2928) Option!320)

(assert (=> b!171047 (= lt!54118 (maxPrefix!139 thiss!17480 rules!1920 lt!54115))))

(declare-fun b!171048 () Bool)

(assert (=> b!171048 (= e!103635 e!103638)))

(declare-fun res!77376 () Bool)

(assert (=> b!171048 (=> (not res!77376) (not e!103638))))

(declare-fun lt!54114 () BalanceConc!1746)

(declare-fun rulesProduceEachTokenIndividually!201 (LexerInterface!409 List!2929 BalanceConc!1746) Bool)

(assert (=> b!171048 (= res!77376 (rulesProduceEachTokenIndividually!201 thiss!17480 rules!1920 lt!54114))))

(assert (=> b!171048 (= lt!54114 (seqFromList!424 tokens!465))))

(declare-fun b!171049 () Bool)

(declare-fun res!77362 () Bool)

(assert (=> b!171049 (=> (not res!77362) (not e!103638))))

(assert (=> b!171049 (= res!77362 (isSeparator!523 (rule!1030 separatorToken!170)))))

(declare-fun b!171050 () Bool)

(assert (=> b!171050 (= e!103629 (not (= lt!54105 (++!670 lt!54115 lt!54119))))))

(declare-fun e!103630 () Bool)

(declare-fun b!171051 () Bool)

(declare-fun tp!84364 () Bool)

(assert (=> b!171051 (= e!103630 (and tp!84364 (inv!3740 (tag!701 (h!8316 rules!1920))) (inv!3744 (transformation!523 (h!8316 rules!1920))) e!103625))))

(declare-fun tp!84369 () Bool)

(declare-fun b!171052 () Bool)

(assert (=> b!171052 (= e!103646 (and (inv!21 (value!19221 separatorToken!170)) e!103631 tp!84369))))

(declare-fun b!171053 () Bool)

(declare-fun res!77374 () Bool)

(assert (=> b!171053 (=> (not res!77374) (not e!103638))))

(declare-fun sepAndNonSepRulesDisjointChars!112 (List!2929 List!2929) Bool)

(assert (=> b!171053 (= res!77374 (sepAndNonSepRulesDisjointChars!112 rules!1920 rules!1920))))

(declare-fun b!171054 () Bool)

(declare-fun tp!84363 () Bool)

(assert (=> b!171054 (= e!103641 (and e!103630 tp!84363))))

(declare-fun b!171055 () Bool)

(assert (=> b!171055 (= e!103626 e!103628)))

(declare-fun res!77373 () Bool)

(assert (=> b!171055 (=> res!77373 e!103628)))

(declare-fun lt!54107 () List!2928)

(declare-fun lt!54113 () List!2928)

(assert (=> b!171055 (= res!77373 (or (not (= lt!54107 lt!54113)) (not (= lt!54113 lt!54115)) (not (= lt!54107 lt!54115))))))

(declare-fun printList!93 (LexerInterface!409 List!2930) List!2928)

(assert (=> b!171055 (= lt!54113 (printList!93 thiss!17480 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))

(declare-fun lt!54110 () BalanceConc!1744)

(assert (=> b!171055 (= lt!54107 (list!1061 lt!54110))))

(declare-fun lt!54116 () BalanceConc!1746)

(declare-fun printTailRec!103 (LexerInterface!409 BalanceConc!1746 Int BalanceConc!1744) BalanceConc!1744)

(assert (=> b!171055 (= lt!54110 (printTailRec!103 thiss!17480 lt!54116 0 (BalanceConc!1745 Empty!868)))))

(declare-fun print!140 (LexerInterface!409 BalanceConc!1746) BalanceConc!1744)

(assert (=> b!171055 (= lt!54110 (print!140 thiss!17480 lt!54116))))

(declare-fun singletonSeq!75 (Token!790) BalanceConc!1746)

(assert (=> b!171055 (= lt!54116 (singletonSeq!75 (h!8317 tokens!465)))))

(declare-fun b!171056 () Bool)

(assert (=> b!171056 (= e!103638 e!103645)))

(declare-fun res!77366 () Bool)

(assert (=> b!171056 (=> (not res!77366) (not e!103645))))

(assert (=> b!171056 (= res!77366 (= lt!54105 lt!54109))))

(assert (=> b!171056 (= lt!54109 (list!1061 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0)))))

(assert (=> b!171056 (= lt!54105 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!171057 () Bool)

(declare-fun tp!84373 () Bool)

(assert (=> b!171057 (= e!103636 (and tp!84373 (inv!3740 (tag!701 (rule!1030 (h!8317 tokens!465)))) (inv!3744 (transformation!523 (rule!1030 (h!8317 tokens!465)))) e!103633))))

(assert (=> b!171058 (= e!103634 (and tp!84362 tp!84361))))

(declare-fun b!171059 () Bool)

(declare-fun res!77359 () Bool)

(assert (=> b!171059 (=> (not res!77359) (not e!103638))))

(assert (=> b!171059 (= res!77359 ((_ is Cons!2920) tokens!465))))

(assert (=> b!171060 (= e!103628 e!103637)))

(declare-fun res!77367 () Bool)

(assert (=> b!171060 (=> res!77367 e!103637)))

(declare-datatypes ((tuple2!2830 0))(
  ( (tuple2!2831 (_1!1631 Token!790) (_2!1631 BalanceConc!1744)) )
))
(declare-datatypes ((Option!321 0))(
  ( (None!320) (Some!320 (v!13763 tuple2!2830)) )
))
(declare-fun isDefined!172 (Option!321) Bool)

(declare-fun maxPrefixZipperSequence!102 (LexerInterface!409 List!2929 BalanceConc!1744) Option!321)

(assert (=> b!171060 (= res!77367 (not (isDefined!172 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))

(declare-fun lt!54108 () Unit!2548)

(declare-fun forallContained!90 (List!2930 Int Token!790) Unit!2548)

(assert (=> b!171060 (= lt!54108 (forallContained!90 tokens!465 lambda!4892 (h!8317 tokens!465)))))

(assert (=> b!171060 (= lt!54115 (originalCharacters!566 (h!8317 tokens!465)))))

(declare-fun b!171061 () Bool)

(declare-fun tp!84366 () Bool)

(assert (=> b!171061 (= e!103644 (and (inv!3743 (h!8317 tokens!465)) e!103632 tp!84366))))

(declare-fun res!77365 () Bool)

(assert (=> b!171062 (=> (not res!77365) (not e!103638))))

(declare-fun forall!573 (List!2930 Int) Bool)

(assert (=> b!171062 (= res!77365 (forall!573 tokens!465 lambda!4891))))

(declare-fun b!171063 () Bool)

(declare-fun res!77363 () Bool)

(assert (=> b!171063 (=> res!77363 e!103628)))

(assert (=> b!171063 (= res!77363 (not (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 tokens!465))))))

(assert (= (and start!18466 res!77369) b!171044))

(assert (= (and b!171044 res!77361) b!171042))

(assert (= (and b!171042 res!77372) b!171048))

(assert (= (and b!171048 res!77376) b!171035))

(assert (= (and b!171035 res!77371) b!171049))

(assert (= (and b!171049 res!77362) b!171062))

(assert (= (and b!171062 res!77365) b!171053))

(assert (= (and b!171053 res!77374) b!171059))

(assert (= (and b!171059 res!77359) b!171056))

(assert (= (and b!171056 res!77366) b!171039))

(assert (= (and b!171039 res!77358) b!171040))

(assert (= (and b!171040 (not res!77370)) b!171045))

(assert (= (and b!171045 res!77360) b!171050))

(assert (= (and b!171045 (not res!77375)) b!171055))

(assert (= (and b!171055 (not res!77373)) b!171063))

(assert (= (and b!171063 (not res!77363)) b!171038))

(assert (= (and b!171038 (not res!77368)) b!171060))

(assert (= (and b!171060 (not res!77367)) b!171047))

(assert (= (and b!171047 res!77364) b!171043))

(assert (= b!171051 b!171036))

(assert (= b!171054 b!171051))

(assert (= (and start!18466 ((_ is Cons!2919) rules!1920)) b!171054))

(assert (= b!171046 b!171058))

(assert (= b!171052 b!171046))

(assert (= start!18466 b!171052))

(assert (= b!171057 b!171041))

(assert (= b!171037 b!171057))

(assert (= b!171061 b!171037))

(assert (= (and start!18466 ((_ is Cons!2920) tokens!465)) b!171061))

(declare-fun m!167087 () Bool)

(assert (=> b!171037 m!167087))

(declare-fun m!167089 () Bool)

(assert (=> b!171061 m!167089))

(declare-fun m!167091 () Bool)

(assert (=> b!171052 m!167091))

(declare-fun m!167093 () Bool)

(assert (=> b!171043 m!167093))

(declare-fun m!167095 () Bool)

(assert (=> b!171046 m!167095))

(declare-fun m!167097 () Bool)

(assert (=> b!171046 m!167097))

(declare-fun m!167099 () Bool)

(assert (=> b!171048 m!167099))

(declare-fun m!167101 () Bool)

(assert (=> b!171048 m!167101))

(declare-fun m!167103 () Bool)

(assert (=> b!171042 m!167103))

(declare-fun m!167105 () Bool)

(assert (=> b!171060 m!167105))

(assert (=> b!171060 m!167105))

(declare-fun m!167107 () Bool)

(assert (=> b!171060 m!167107))

(assert (=> b!171060 m!167107))

(declare-fun m!167109 () Bool)

(assert (=> b!171060 m!167109))

(declare-fun m!167111 () Bool)

(assert (=> b!171060 m!167111))

(declare-fun m!167113 () Bool)

(assert (=> b!171050 m!167113))

(declare-fun m!167115 () Bool)

(assert (=> b!171053 m!167115))

(declare-fun m!167117 () Bool)

(assert (=> b!171051 m!167117))

(declare-fun m!167119 () Bool)

(assert (=> b!171051 m!167119))

(declare-fun m!167121 () Bool)

(assert (=> start!18466 m!167121))

(declare-fun m!167123 () Bool)

(assert (=> b!171040 m!167123))

(declare-fun m!167125 () Bool)

(assert (=> b!171040 m!167125))

(declare-fun m!167127 () Bool)

(assert (=> b!171040 m!167127))

(declare-fun m!167129 () Bool)

(assert (=> b!171040 m!167129))

(declare-fun m!167131 () Bool)

(assert (=> b!171040 m!167131))

(assert (=> b!171040 m!167129))

(declare-fun m!167133 () Bool)

(assert (=> b!171040 m!167133))

(declare-fun m!167135 () Bool)

(assert (=> b!171040 m!167135))

(declare-fun m!167137 () Bool)

(assert (=> b!171040 m!167137))

(assert (=> b!171040 m!167133))

(declare-fun m!167139 () Bool)

(assert (=> b!171040 m!167139))

(assert (=> b!171040 m!167137))

(declare-fun m!167141 () Bool)

(assert (=> b!171040 m!167141))

(declare-fun m!167143 () Bool)

(assert (=> b!171040 m!167143))

(declare-fun m!167145 () Bool)

(assert (=> b!171040 m!167145))

(assert (=> b!171040 m!167123))

(assert (=> b!171040 m!167143))

(declare-fun m!167147 () Bool)

(assert (=> b!171040 m!167147))

(declare-fun m!167149 () Bool)

(assert (=> b!171035 m!167149))

(declare-fun m!167151 () Bool)

(assert (=> b!171039 m!167151))

(assert (=> b!171039 m!167151))

(declare-fun m!167153 () Bool)

(assert (=> b!171039 m!167153))

(declare-fun m!167155 () Bool)

(assert (=> b!171057 m!167155))

(declare-fun m!167157 () Bool)

(assert (=> b!171057 m!167157))

(declare-fun m!167159 () Bool)

(assert (=> b!171038 m!167159))

(assert (=> b!171038 m!167159))

(declare-fun m!167161 () Bool)

(assert (=> b!171038 m!167161))

(declare-fun m!167163 () Bool)

(assert (=> b!171038 m!167163))

(declare-fun m!167165 () Bool)

(assert (=> b!171044 m!167165))

(declare-fun m!167167 () Bool)

(assert (=> b!171056 m!167167))

(assert (=> b!171056 m!167167))

(declare-fun m!167169 () Bool)

(assert (=> b!171056 m!167169))

(declare-fun m!167171 () Bool)

(assert (=> b!171056 m!167171))

(declare-fun m!167173 () Bool)

(assert (=> b!171062 m!167173))

(declare-fun m!167175 () Bool)

(assert (=> b!171063 m!167175))

(declare-fun m!167177 () Bool)

(assert (=> b!171055 m!167177))

(declare-fun m!167179 () Bool)

(assert (=> b!171055 m!167179))

(declare-fun m!167181 () Bool)

(assert (=> b!171055 m!167181))

(declare-fun m!167183 () Bool)

(assert (=> b!171055 m!167183))

(declare-fun m!167185 () Bool)

(assert (=> b!171055 m!167185))

(declare-fun m!167187 () Bool)

(assert (=> b!171047 m!167187))

(declare-fun m!167189 () Bool)

(assert (=> b!171047 m!167189))

(declare-fun m!167191 () Bool)

(assert (=> b!171047 m!167191))

(declare-fun m!167193 () Bool)

(assert (=> b!171047 m!167193))

(check-sat (not b!171061) b_and!11235 (not b!171054) (not b_next!6611) (not b_next!6615) (not b!171050) (not b!171057) (not b!171044) (not b!171042) b_and!11239 (not b!171037) (not b_next!6613) (not b!171051) (not b!171053) (not b_next!6617) (not b!171035) (not b!171046) (not b!171072) (not b!171047) (not b!171038) b_and!11233 (not b_next!6619) (not b_next!6609) (not b!171062) (not b!171055) (not b!171060) (not b!171056) (not start!18466) (not b!171063) (not b!171048) (not b!171043) b_and!11237 (not b!171052) b_and!11241 b_and!11243 (not b!171040) (not b!171039))
(check-sat b_and!11235 (not b_next!6617) b_and!11233 (not b_next!6611) (not b_next!6615) b_and!11237 b_and!11239 (not b_next!6613) (not b_next!6619) (not b_next!6609) b_and!11241 b_and!11243)
(get-model)

(declare-fun d!42677 () Bool)

(declare-fun isEmpty!1252 (Option!321) Bool)

(assert (=> d!42677 (= (isDefined!172 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))) (not (isEmpty!1252 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))

(declare-fun bs!16597 () Bool)

(assert (= bs!16597 d!42677))

(assert (=> bs!16597 m!167107))

(declare-fun m!167195 () Bool)

(assert (=> bs!16597 m!167195))

(assert (=> b!171060 d!42677))

(declare-fun b!171137 () Bool)

(declare-fun lt!54146 () Option!321)

(declare-fun e!103701 () Bool)

(declare-fun get!802 (Option!321) tuple2!2830)

(declare-fun maxPrefixZipper!42 (LexerInterface!409 List!2929 List!2928) Option!320)

(assert (=> b!171137 (= e!103701 (= (list!1061 (_2!1631 (get!802 lt!54146))) (_2!1630 (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun b!171138 () Bool)

(declare-fun e!103696 () Option!321)

(declare-fun lt!54145 () Option!321)

(declare-fun lt!54144 () Option!321)

(assert (=> b!171138 (= e!103696 (ite (and ((_ is None!320) lt!54145) ((_ is None!320) lt!54144)) None!320 (ite ((_ is None!320) lt!54144) lt!54145 (ite ((_ is None!320) lt!54145) lt!54144 (ite (>= (size!2411 (_1!1631 (v!13763 lt!54145))) (size!2411 (_1!1631 (v!13763 lt!54144)))) lt!54145 lt!54144)))))))

(declare-fun call!7457 () Option!321)

(assert (=> b!171138 (= lt!54145 call!7457)))

(assert (=> b!171138 (= lt!54144 (maxPrefixZipperSequence!102 thiss!17480 (t!27131 rules!1920) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(declare-fun b!171139 () Bool)

(declare-fun e!103697 () Bool)

(declare-fun e!103699 () Bool)

(assert (=> b!171139 (= e!103697 e!103699)))

(declare-fun res!77421 () Bool)

(assert (=> b!171139 (=> (not res!77421) (not e!103699))))

(assert (=> b!171139 (= res!77421 (= (_1!1631 (get!802 lt!54146)) (_1!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun d!42679 () Bool)

(declare-fun e!103700 () Bool)

(assert (=> d!42679 e!103700))

(declare-fun res!77419 () Bool)

(assert (=> d!42679 (=> (not res!77419) (not e!103700))))

(assert (=> d!42679 (= res!77419 (= (isDefined!172 lt!54146) (isDefined!171 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))))

(assert (=> d!42679 (= lt!54146 e!103696)))

(declare-fun c!33830 () Bool)

(assert (=> d!42679 (= c!33830 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!54141 () Unit!2548)

(declare-fun lt!54142 () Unit!2548)

(assert (=> d!42679 (= lt!54141 lt!54142)))

(declare-fun lt!54143 () List!2928)

(declare-fun lt!54147 () List!2928)

(declare-fun isPrefix!230 (List!2928 List!2928) Bool)

(assert (=> d!42679 (isPrefix!230 lt!54143 lt!54147)))

(declare-fun lemmaIsPrefixRefl!138 (List!2928 List!2928) Unit!2548)

(assert (=> d!42679 (= lt!54142 (lemmaIsPrefixRefl!138 lt!54143 lt!54147))))

(assert (=> d!42679 (= lt!54147 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!42679 (= lt!54143 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(declare-fun rulesValidInductive!123 (LexerInterface!409 List!2929) Bool)

(assert (=> d!42679 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!42679 (= (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) lt!54146)))

(declare-fun bm!7452 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!43 (LexerInterface!409 Rule!846 BalanceConc!1744) Option!321)

(assert (=> bm!7452 (= call!7457 (maxPrefixOneRuleZipperSequence!43 thiss!17480 (h!8316 rules!1920) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(declare-fun b!171140 () Bool)

(assert (=> b!171140 (= e!103699 (= (list!1061 (_2!1631 (get!802 lt!54146))) (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun b!171141 () Bool)

(declare-fun res!77423 () Bool)

(assert (=> b!171141 (=> (not res!77423) (not e!103700))))

(declare-fun e!103698 () Bool)

(assert (=> b!171141 (= res!77423 e!103698)))

(declare-fun res!77420 () Bool)

(assert (=> b!171141 (=> res!77420 e!103698)))

(assert (=> b!171141 (= res!77420 (not (isDefined!172 lt!54146)))))

(declare-fun b!171142 () Bool)

(assert (=> b!171142 (= e!103700 e!103697)))

(declare-fun res!77418 () Bool)

(assert (=> b!171142 (=> res!77418 e!103697)))

(assert (=> b!171142 (= res!77418 (not (isDefined!172 lt!54146)))))

(declare-fun b!171143 () Bool)

(assert (=> b!171143 (= e!103696 call!7457)))

(declare-fun b!171144 () Bool)

(assert (=> b!171144 (= e!103698 e!103701)))

(declare-fun res!77422 () Bool)

(assert (=> b!171144 (=> (not res!77422) (not e!103701))))

(assert (=> b!171144 (= res!77422 (= (_1!1631 (get!802 lt!54146)) (_1!1630 (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(assert (= (and d!42679 c!33830) b!171143))

(assert (= (and d!42679 (not c!33830)) b!171138))

(assert (= (or b!171143 b!171138) bm!7452))

(assert (= (and d!42679 res!77419) b!171141))

(assert (= (and b!171141 (not res!77420)) b!171144))

(assert (= (and b!171144 res!77422) b!171137))

(assert (= (and b!171141 res!77423) b!171142))

(assert (= (and b!171142 (not res!77418)) b!171139))

(assert (= (and b!171139 res!77421) b!171140))

(declare-fun m!167245 () Bool)

(assert (=> b!171142 m!167245))

(declare-fun m!167247 () Bool)

(assert (=> b!171144 m!167247))

(assert (=> b!171144 m!167105))

(declare-fun m!167249 () Bool)

(assert (=> b!171144 m!167249))

(assert (=> b!171144 m!167249))

(declare-fun m!167251 () Bool)

(assert (=> b!171144 m!167251))

(assert (=> b!171144 m!167251))

(declare-fun m!167253 () Bool)

(assert (=> b!171144 m!167253))

(assert (=> b!171140 m!167105))

(assert (=> b!171140 m!167249))

(declare-fun m!167255 () Bool)

(assert (=> b!171140 m!167255))

(assert (=> b!171140 m!167247))

(assert (=> b!171140 m!167249))

(declare-fun m!167257 () Bool)

(assert (=> b!171140 m!167257))

(assert (=> b!171140 m!167257))

(declare-fun m!167259 () Bool)

(assert (=> b!171140 m!167259))

(assert (=> b!171139 m!167247))

(assert (=> b!171139 m!167105))

(assert (=> b!171139 m!167249))

(assert (=> b!171139 m!167249))

(assert (=> b!171139 m!167257))

(assert (=> b!171139 m!167257))

(assert (=> b!171139 m!167259))

(assert (=> b!171138 m!167105))

(declare-fun m!167261 () Bool)

(assert (=> b!171138 m!167261))

(assert (=> b!171141 m!167245))

(assert (=> b!171137 m!167105))

(assert (=> b!171137 m!167249))

(assert (=> b!171137 m!167247))

(assert (=> b!171137 m!167249))

(assert (=> b!171137 m!167251))

(assert (=> b!171137 m!167255))

(assert (=> b!171137 m!167251))

(assert (=> b!171137 m!167253))

(assert (=> d!42679 m!167245))

(declare-fun m!167263 () Bool)

(assert (=> d!42679 m!167263))

(assert (=> d!42679 m!167105))

(assert (=> d!42679 m!167249))

(assert (=> d!42679 m!167249))

(assert (=> d!42679 m!167251))

(assert (=> d!42679 m!167251))

(declare-fun m!167265 () Bool)

(assert (=> d!42679 m!167265))

(declare-fun m!167267 () Bool)

(assert (=> d!42679 m!167267))

(declare-fun m!167269 () Bool)

(assert (=> d!42679 m!167269))

(assert (=> bm!7452 m!167105))

(declare-fun m!167271 () Bool)

(assert (=> bm!7452 m!167271))

(assert (=> b!171060 d!42679))

(declare-fun d!42699 () Bool)

(declare-fun fromListB!167 (List!2928) BalanceConc!1744)

(assert (=> d!42699 (= (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))) (fromListB!167 (originalCharacters!566 (h!8317 tokens!465))))))

(declare-fun bs!16600 () Bool)

(assert (= bs!16600 d!42699))

(declare-fun m!167273 () Bool)

(assert (=> bs!16600 m!167273))

(assert (=> b!171060 d!42699))

(declare-fun d!42701 () Bool)

(declare-fun dynLambda!1111 (Int Token!790) Bool)

(assert (=> d!42701 (dynLambda!1111 lambda!4892 (h!8317 tokens!465))))

(declare-fun lt!54150 () Unit!2548)

(declare-fun choose!1831 (List!2930 Int Token!790) Unit!2548)

(assert (=> d!42701 (= lt!54150 (choose!1831 tokens!465 lambda!4892 (h!8317 tokens!465)))))

(declare-fun e!103704 () Bool)

(assert (=> d!42701 e!103704))

(declare-fun res!77426 () Bool)

(assert (=> d!42701 (=> (not res!77426) (not e!103704))))

(assert (=> d!42701 (= res!77426 (forall!573 tokens!465 lambda!4892))))

(assert (=> d!42701 (= (forallContained!90 tokens!465 lambda!4892 (h!8317 tokens!465)) lt!54150)))

(declare-fun b!171147 () Bool)

(declare-fun contains!467 (List!2930 Token!790) Bool)

(assert (=> b!171147 (= e!103704 (contains!467 tokens!465 (h!8317 tokens!465)))))

(assert (= (and d!42701 res!77426) b!171147))

(declare-fun b_lambda!3861 () Bool)

(assert (=> (not b_lambda!3861) (not d!42701)))

(declare-fun m!167275 () Bool)

(assert (=> d!42701 m!167275))

(declare-fun m!167277 () Bool)

(assert (=> d!42701 m!167277))

(declare-fun m!167279 () Bool)

(assert (=> d!42701 m!167279))

(declare-fun m!167281 () Bool)

(assert (=> b!171147 m!167281))

(assert (=> b!171060 d!42701))

(declare-fun d!42703 () Bool)

(declare-fun lt!54153 () Bool)

(declare-fun isEmpty!1253 (List!2930) Bool)

(declare-fun list!1064 (BalanceConc!1746) List!2930)

(assert (=> d!42703 (= lt!54153 (isEmpty!1253 (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))))))

(declare-fun isEmpty!1254 (Conc!869) Bool)

(assert (=> d!42703 (= lt!54153 (isEmpty!1254 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))))))

(assert (=> d!42703 (= (isEmpty!1246 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115)))) lt!54153)))

(declare-fun bs!16601 () Bool)

(assert (= bs!16601 d!42703))

(declare-fun m!167283 () Bool)

(assert (=> bs!16601 m!167283))

(assert (=> bs!16601 m!167283))

(declare-fun m!167285 () Bool)

(assert (=> bs!16601 m!167285))

(declare-fun m!167287 () Bool)

(assert (=> bs!16601 m!167287))

(assert (=> b!171038 d!42703))

(declare-fun b!171176 () Bool)

(declare-fun e!103725 () Bool)

(declare-fun lt!54176 () tuple2!2826)

(assert (=> b!171176 (= e!103725 (not (isEmpty!1246 (_1!1629 lt!54176))))))

(declare-fun b!171177 () Bool)

(declare-fun e!103726 () Bool)

(assert (=> b!171177 (= e!103726 (= (_2!1629 lt!54176) (seqFromList!423 lt!54115)))))

(declare-fun b!171178 () Bool)

(assert (=> b!171178 (= e!103726 e!103725)))

(declare-fun res!77449 () Bool)

(declare-fun size!2415 (BalanceConc!1744) Int)

(assert (=> b!171178 (= res!77449 (< (size!2415 (_2!1629 lt!54176)) (size!2415 (seqFromList!423 lt!54115))))))

(assert (=> b!171178 (=> (not res!77449) (not e!103725))))

(declare-fun b!171179 () Bool)

(declare-fun e!103724 () Bool)

(declare-datatypes ((tuple2!2834 0))(
  ( (tuple2!2835 (_1!1633 List!2930) (_2!1633 List!2928)) )
))
(declare-fun lexList!115 (LexerInterface!409 List!2929 List!2928) tuple2!2834)

(assert (=> b!171179 (= e!103724 (= (list!1061 (_2!1629 lt!54176)) (_2!1633 (lexList!115 thiss!17480 rules!1920 (list!1061 (seqFromList!423 lt!54115))))))))

(declare-fun d!42705 () Bool)

(assert (=> d!42705 e!103724))

(declare-fun res!77448 () Bool)

(assert (=> d!42705 (=> (not res!77448) (not e!103724))))

(assert (=> d!42705 (= res!77448 e!103726)))

(declare-fun c!33835 () Bool)

(declare-fun size!2416 (BalanceConc!1746) Int)

(assert (=> d!42705 (= c!33835 (> (size!2416 (_1!1629 lt!54176)) 0))))

(declare-fun lexTailRecV2!102 (LexerInterface!409 List!2929 BalanceConc!1744 BalanceConc!1744 BalanceConc!1744 BalanceConc!1746) tuple2!2826)

(assert (=> d!42705 (= lt!54176 (lexTailRecV2!102 thiss!17480 rules!1920 (seqFromList!423 lt!54115) (BalanceConc!1745 Empty!868) (seqFromList!423 lt!54115) (BalanceConc!1747 Empty!869)))))

(assert (=> d!42705 (= (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115)) lt!54176)))

(declare-fun b!171180 () Bool)

(declare-fun res!77447 () Bool)

(assert (=> b!171180 (=> (not res!77447) (not e!103724))))

(assert (=> b!171180 (= res!77447 (= (list!1064 (_1!1629 lt!54176)) (_1!1633 (lexList!115 thiss!17480 rules!1920 (list!1061 (seqFromList!423 lt!54115))))))))

(assert (= (and d!42705 c!33835) b!171178))

(assert (= (and d!42705 (not c!33835)) b!171177))

(assert (= (and b!171178 res!77449) b!171176))

(assert (= (and d!42705 res!77448) b!171180))

(assert (= (and b!171180 res!77447) b!171179))

(declare-fun m!167311 () Bool)

(assert (=> b!171180 m!167311))

(assert (=> b!171180 m!167159))

(declare-fun m!167313 () Bool)

(assert (=> b!171180 m!167313))

(assert (=> b!171180 m!167313))

(declare-fun m!167315 () Bool)

(assert (=> b!171180 m!167315))

(declare-fun m!167317 () Bool)

(assert (=> b!171176 m!167317))

(declare-fun m!167319 () Bool)

(assert (=> b!171178 m!167319))

(assert (=> b!171178 m!167159))

(declare-fun m!167321 () Bool)

(assert (=> b!171178 m!167321))

(declare-fun m!167323 () Bool)

(assert (=> b!171179 m!167323))

(assert (=> b!171179 m!167159))

(assert (=> b!171179 m!167313))

(assert (=> b!171179 m!167313))

(assert (=> b!171179 m!167315))

(declare-fun m!167325 () Bool)

(assert (=> d!42705 m!167325))

(assert (=> d!42705 m!167159))

(assert (=> d!42705 m!167159))

(declare-fun m!167327 () Bool)

(assert (=> d!42705 m!167327))

(assert (=> b!171038 d!42705))

(declare-fun d!42715 () Bool)

(assert (=> d!42715 (= (seqFromList!423 lt!54115) (fromListB!167 lt!54115))))

(declare-fun bs!16603 () Bool)

(assert (= bs!16603 d!42715))

(declare-fun m!167329 () Bool)

(assert (=> bs!16603 m!167329))

(assert (=> b!171038 d!42715))

(declare-fun d!42717 () Bool)

(declare-fun res!77455 () Bool)

(declare-fun e!103731 () Bool)

(assert (=> d!42717 (=> (not res!77455) (not e!103731))))

(assert (=> d!42717 (= res!77455 (not (isEmpty!1247 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!42717 (= (inv!3743 (h!8317 tokens!465)) e!103731)))

(declare-fun b!171188 () Bool)

(declare-fun res!77456 () Bool)

(assert (=> b!171188 (=> (not res!77456) (not e!103731))))

(declare-fun dynLambda!1112 (Int TokenValue!545) BalanceConc!1744)

(assert (=> b!171188 (= res!77456 (= (originalCharacters!566 (h!8317 tokens!465)) (list!1061 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))))

(declare-fun b!171189 () Bool)

(declare-fun size!2417 (List!2928) Int)

(assert (=> b!171189 (= e!103731 (= (size!2411 (h!8317 tokens!465)) (size!2417 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (= (and d!42717 res!77455) b!171188))

(assert (= (and b!171188 res!77456) b!171189))

(declare-fun b_lambda!3863 () Bool)

(assert (=> (not b_lambda!3863) (not b!171188)))

(declare-fun t!27141 () Bool)

(declare-fun tb!6707 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27141) tb!6707))

(declare-fun b!171194 () Bool)

(declare-fun e!103734 () Bool)

(declare-fun tp!84379 () Bool)

(declare-fun inv!3747 (Conc!868) Bool)

(assert (=> b!171194 (= e!103734 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))) tp!84379))))

(declare-fun result!9412 () Bool)

(declare-fun inv!3748 (BalanceConc!1744) Bool)

(assert (=> tb!6707 (= result!9412 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))) e!103734))))

(assert (= tb!6707 b!171194))

(declare-fun m!167367 () Bool)

(assert (=> b!171194 m!167367))

(declare-fun m!167369 () Bool)

(assert (=> tb!6707 m!167369))

(assert (=> b!171188 t!27141))

(declare-fun b_and!11251 () Bool)

(assert (= b_and!11235 (and (=> t!27141 result!9412) b_and!11251)))

(declare-fun t!27143 () Bool)

(declare-fun tb!6709 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27143) tb!6709))

(declare-fun result!9416 () Bool)

(assert (= result!9416 result!9412))

(assert (=> b!171188 t!27143))

(declare-fun b_and!11253 () Bool)

(assert (= b_and!11239 (and (=> t!27143 result!9416) b_and!11253)))

(declare-fun t!27145 () Bool)

(declare-fun tb!6711 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27145) tb!6711))

(declare-fun result!9418 () Bool)

(assert (= result!9418 result!9412))

(assert (=> b!171188 t!27145))

(declare-fun b_and!11255 () Bool)

(assert (= b_and!11243 (and (=> t!27145 result!9418) b_and!11255)))

(declare-fun m!167371 () Bool)

(assert (=> d!42717 m!167371))

(declare-fun m!167373 () Bool)

(assert (=> b!171188 m!167373))

(assert (=> b!171188 m!167373))

(declare-fun m!167375 () Bool)

(assert (=> b!171188 m!167375))

(declare-fun m!167377 () Bool)

(assert (=> b!171189 m!167377))

(assert (=> b!171061 d!42717))

(declare-fun d!42721 () Bool)

(declare-fun fromListB!168 (List!2930) BalanceConc!1746)

(assert (=> d!42721 (= (seqFromList!424 (t!27132 tokens!465)) (fromListB!168 (t!27132 tokens!465)))))

(declare-fun bs!16604 () Bool)

(assert (= bs!16604 d!42721))

(declare-fun m!167379 () Bool)

(assert (=> bs!16604 m!167379))

(assert (=> b!171040 d!42721))

(declare-fun b!171203 () Bool)

(declare-fun e!103740 () List!2928)

(assert (=> b!171203 (= e!103740 lt!54104)))

(declare-fun b!171206 () Bool)

(declare-fun e!103739 () Bool)

(declare-fun lt!54189 () List!2928)

(assert (=> b!171206 (= e!103739 (or (not (= lt!54104 Nil!2918)) (= lt!54189 lt!54115)))))

(declare-fun d!42723 () Bool)

(assert (=> d!42723 e!103739))

(declare-fun res!77461 () Bool)

(assert (=> d!42723 (=> (not res!77461) (not e!103739))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!400 (List!2928) (InoxSet C!2416))

(assert (=> d!42723 (= res!77461 (= (content!400 lt!54189) ((_ map or) (content!400 lt!54115) (content!400 lt!54104))))))

(assert (=> d!42723 (= lt!54189 e!103740)))

(declare-fun c!33839 () Bool)

(assert (=> d!42723 (= c!33839 ((_ is Nil!2918) lt!54115))))

(assert (=> d!42723 (= (++!670 lt!54115 lt!54104) lt!54189)))

(declare-fun b!171205 () Bool)

(declare-fun res!77462 () Bool)

(assert (=> b!171205 (=> (not res!77462) (not e!103739))))

(assert (=> b!171205 (= res!77462 (= (size!2417 lt!54189) (+ (size!2417 lt!54115) (size!2417 lt!54104))))))

(declare-fun b!171204 () Bool)

(assert (=> b!171204 (= e!103740 (Cons!2918 (h!8315 lt!54115) (++!670 (t!27130 lt!54115) lt!54104)))))

(assert (= (and d!42723 c!33839) b!171203))

(assert (= (and d!42723 (not c!33839)) b!171204))

(assert (= (and d!42723 res!77461) b!171205))

(assert (= (and b!171205 res!77462) b!171206))

(declare-fun m!167385 () Bool)

(assert (=> d!42723 m!167385))

(declare-fun m!167387 () Bool)

(assert (=> d!42723 m!167387))

(declare-fun m!167389 () Bool)

(assert (=> d!42723 m!167389))

(declare-fun m!167391 () Bool)

(assert (=> b!171205 m!167391))

(declare-fun m!167393 () Bool)

(assert (=> b!171205 m!167393))

(declare-fun m!167395 () Bool)

(assert (=> b!171205 m!167395))

(declare-fun m!167397 () Bool)

(assert (=> b!171204 m!167397))

(assert (=> b!171040 d!42723))

(declare-fun bs!16610 () Bool)

(declare-fun b!171309 () Bool)

(assert (= bs!16610 (and b!171309 b!171062)))

(declare-fun lambda!4895 () Int)

(assert (=> bs!16610 (not (= lambda!4895 lambda!4891))))

(declare-fun bs!16611 () Bool)

(assert (= bs!16611 (and b!171309 b!171060)))

(assert (=> bs!16611 (= lambda!4895 lambda!4892)))

(declare-fun b!171314 () Bool)

(declare-fun e!103803 () Bool)

(assert (=> b!171314 (= e!103803 true)))

(declare-fun b!171313 () Bool)

(declare-fun e!103802 () Bool)

(assert (=> b!171313 (= e!103802 e!103803)))

(declare-fun b!171312 () Bool)

(declare-fun e!103801 () Bool)

(assert (=> b!171312 (= e!103801 e!103802)))

(assert (=> b!171309 e!103801))

(assert (= b!171313 b!171314))

(assert (= b!171312 b!171313))

(assert (= (and b!171309 ((_ is Cons!2919) rules!1920)) b!171312))

(assert (=> b!171314 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4895))))

(assert (=> b!171314 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4895))))

(assert (=> b!171309 true))

(declare-fun bm!7475 () Bool)

(declare-fun call!7484 () BalanceConc!1744)

(declare-fun call!7482 () BalanceConc!1744)

(assert (=> bm!7475 (= call!7484 call!7482)))

(declare-fun b!171304 () Bool)

(declare-fun e!103800 () List!2928)

(assert (=> b!171304 (= e!103800 Nil!2918)))

(assert (=> b!171304 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 tokens!465)))) (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 tokens!465))) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!54228 () Unit!2548)

(declare-fun Unit!2550 () Unit!2548)

(assert (=> b!171304 (= lt!54228 Unit!2550)))

(declare-fun call!7483 () List!2928)

(declare-fun lt!54227 () Unit!2548)

(declare-fun lt!54225 () List!2928)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 (LexerInterface!409 List!2929 List!2928 List!2928) Unit!2548)

(assert (=> b!171304 (= lt!54227 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7483 lt!54225))))

(assert (=> b!171304 false))

(declare-fun lt!54223 () Unit!2548)

(declare-fun Unit!2551 () Unit!2548)

(assert (=> b!171304 (= lt!54223 Unit!2551)))

(declare-fun b!171305 () Bool)

(declare-fun c!33865 () Bool)

(declare-fun lt!54226 () Option!320)

(assert (=> b!171305 (= c!33865 (and ((_ is Some!319) lt!54226) (not (= (_1!1630 (v!13762 lt!54226)) (h!8317 (t!27132 tokens!465))))))))

(declare-fun e!103799 () List!2928)

(assert (=> b!171305 (= e!103799 e!103800)))

(declare-fun bm!7476 () Bool)

(declare-fun c!33863 () Bool)

(declare-fun c!33864 () Bool)

(assert (=> bm!7476 (= c!33863 c!33864)))

(declare-fun e!103798 () List!2928)

(declare-fun call!7480 () List!2928)

(assert (=> bm!7476 (= call!7480 (++!670 e!103798 (ite c!33864 lt!54225 call!7483)))))

(declare-fun b!171306 () Bool)

(assert (=> b!171306 (= e!103799 call!7480)))

(declare-fun b!171307 () Bool)

(assert (=> b!171307 (= e!103800 (++!670 call!7480 lt!54225))))

(declare-fun b!171308 () Bool)

(declare-fun e!103797 () List!2928)

(assert (=> b!171308 (= e!103797 Nil!2918)))

(assert (=> b!171309 (= e!103797 e!103799)))

(declare-fun lt!54224 () Unit!2548)

(assert (=> b!171309 (= lt!54224 (forallContained!90 (t!27132 tokens!465) lambda!4895 (h!8317 (t!27132 tokens!465))))))

(assert (=> b!171309 (= lt!54225 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 (t!27132 tokens!465)) separatorToken!170))))

(assert (=> b!171309 (= lt!54226 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225)))))

(assert (=> b!171309 (= c!33864 (and ((_ is Some!319) lt!54226) (= (_1!1630 (v!13762 lt!54226)) (h!8317 (t!27132 tokens!465)))))))

(declare-fun bm!7477 () Bool)

(assert (=> bm!7477 (= call!7482 (charsOf!178 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))))))

(declare-fun d!42727 () Bool)

(declare-fun c!33866 () Bool)

(assert (=> d!42727 (= c!33866 ((_ is Cons!2920) (t!27132 tokens!465)))))

(assert (=> d!42727 (= (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 tokens!465) separatorToken!170) e!103797)))

(declare-fun call!7481 () List!2928)

(declare-fun bm!7478 () Bool)

(assert (=> bm!7478 (= call!7481 (list!1061 (ite c!33864 call!7482 call!7484)))))

(declare-fun b!171310 () Bool)

(assert (=> b!171310 (= e!103798 call!7481)))

(declare-fun bm!7479 () Bool)

(assert (=> bm!7479 (= call!7483 call!7481)))

(declare-fun b!171311 () Bool)

(assert (=> b!171311 (= e!103798 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))))))

(assert (= (and d!42727 c!33866) b!171309))

(assert (= (and d!42727 (not c!33866)) b!171308))

(assert (= (and b!171309 c!33864) b!171306))

(assert (= (and b!171309 (not c!33864)) b!171305))

(assert (= (and b!171305 c!33865) b!171307))

(assert (= (and b!171305 (not c!33865)) b!171304))

(assert (= (or b!171307 b!171304) bm!7475))

(assert (= (or b!171307 b!171304) bm!7479))

(assert (= (or b!171306 bm!7475) bm!7477))

(assert (= (or b!171306 bm!7479) bm!7478))

(assert (= (or b!171306 b!171307) bm!7476))

(assert (= (and bm!7476 c!33863) b!171310))

(assert (= (and bm!7476 (not c!33863)) b!171311))

(declare-fun m!167479 () Bool)

(assert (=> b!171304 m!167479))

(assert (=> b!171304 m!167479))

(declare-fun m!167481 () Bool)

(assert (=> b!171304 m!167481))

(assert (=> b!171304 m!167479))

(declare-fun m!167483 () Bool)

(assert (=> b!171304 m!167483))

(declare-fun m!167485 () Bool)

(assert (=> b!171304 m!167485))

(declare-fun m!167487 () Bool)

(assert (=> bm!7477 m!167487))

(declare-fun m!167489 () Bool)

(assert (=> bm!7476 m!167489))

(declare-fun m!167491 () Bool)

(assert (=> bm!7478 m!167491))

(declare-fun m!167493 () Bool)

(assert (=> b!171307 m!167493))

(declare-fun m!167495 () Bool)

(assert (=> b!171311 m!167495))

(assert (=> b!171311 m!167495))

(declare-fun m!167497 () Bool)

(assert (=> b!171311 m!167497))

(assert (=> b!171309 m!167495))

(assert (=> b!171309 m!167497))

(declare-fun m!167499 () Bool)

(assert (=> b!171309 m!167499))

(declare-fun m!167501 () Bool)

(assert (=> b!171309 m!167501))

(declare-fun m!167503 () Bool)

(assert (=> b!171309 m!167503))

(assert (=> b!171309 m!167495))

(assert (=> b!171309 m!167497))

(assert (=> b!171309 m!167499))

(declare-fun m!167505 () Bool)

(assert (=> b!171309 m!167505))

(assert (=> b!171040 d!42727))

(declare-fun bs!16619 () Bool)

(declare-fun d!42751 () Bool)

(assert (= bs!16619 (and d!42751 b!171062)))

(declare-fun lambda!4906 () Int)

(assert (=> bs!16619 (= lambda!4906 lambda!4891)))

(declare-fun bs!16620 () Bool)

(assert (= bs!16620 (and d!42751 b!171060)))

(assert (=> bs!16620 (not (= lambda!4906 lambda!4892))))

(declare-fun bs!16621 () Bool)

(assert (= bs!16621 (and d!42751 b!171309)))

(assert (=> bs!16621 (not (= lambda!4906 lambda!4895))))

(declare-fun bs!16622 () Bool)

(declare-fun b!171387 () Bool)

(assert (= bs!16622 (and b!171387 b!171062)))

(declare-fun lambda!4907 () Int)

(assert (=> bs!16622 (not (= lambda!4907 lambda!4891))))

(declare-fun bs!16623 () Bool)

(assert (= bs!16623 (and b!171387 b!171060)))

(assert (=> bs!16623 (= lambda!4907 lambda!4892)))

(declare-fun bs!16624 () Bool)

(assert (= bs!16624 (and b!171387 b!171309)))

(assert (=> bs!16624 (= lambda!4907 lambda!4895)))

(declare-fun bs!16625 () Bool)

(assert (= bs!16625 (and b!171387 d!42751)))

(assert (=> bs!16625 (not (= lambda!4907 lambda!4906))))

(declare-fun b!171395 () Bool)

(declare-fun e!103856 () Bool)

(assert (=> b!171395 (= e!103856 true)))

(declare-fun b!171394 () Bool)

(declare-fun e!103855 () Bool)

(assert (=> b!171394 (= e!103855 e!103856)))

(declare-fun b!171393 () Bool)

(declare-fun e!103854 () Bool)

(assert (=> b!171393 (= e!103854 e!103855)))

(assert (=> b!171387 e!103854))

(assert (= b!171394 b!171395))

(assert (= b!171393 b!171394))

(assert (= (and b!171387 ((_ is Cons!2919) rules!1920)) b!171393))

(assert (=> b!171395 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4907))))

(assert (=> b!171395 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4907))))

(assert (=> b!171387 true))

(declare-fun b!171382 () Bool)

(declare-fun e!103849 () BalanceConc!1744)

(declare-fun call!7512 () Token!790)

(assert (=> b!171382 (= e!103849 (charsOf!178 call!7512))))

(declare-fun b!171383 () Bool)

(declare-fun c!33892 () Bool)

(declare-fun e!103853 () Bool)

(assert (=> b!171383 (= c!33892 e!103853)))

(declare-fun res!77534 () Bool)

(assert (=> b!171383 (=> (not res!77534) (not e!103853))))

(declare-fun lt!54316 () Option!321)

(assert (=> b!171383 (= res!77534 ((_ is Some!320) lt!54316))))

(declare-fun e!103851 () BalanceConc!1744)

(declare-fun e!103850 () BalanceConc!1744)

(assert (=> b!171383 (= e!103851 e!103850)))

(declare-fun b!171384 () Bool)

(declare-fun call!7510 () Token!790)

(assert (=> b!171384 (= e!103853 (not (= (_1!1631 (v!13763 lt!54316)) call!7510)))))

(declare-fun b!171385 () Bool)

(assert (=> b!171385 (= e!103850 (BalanceConc!1745 Empty!868))))

(assert (=> b!171385 (= (print!140 thiss!17480 (singletonSeq!75 call!7512)) (printTailRec!103 thiss!17480 (singletonSeq!75 call!7512) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!54321 () Unit!2548)

(declare-fun Unit!2552 () Unit!2548)

(assert (=> b!171385 (= lt!54321 Unit!2552)))

(declare-fun lt!54311 () BalanceConc!1744)

(declare-fun call!7514 () BalanceConc!1744)

(declare-fun lt!54314 () Unit!2548)

(assert (=> b!171385 (= lt!54314 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 (list!1061 call!7514) (list!1061 lt!54311)))))

(assert (=> b!171385 false))

(declare-fun lt!54317 () Unit!2548)

(declare-fun Unit!2553 () Unit!2548)

(assert (=> b!171385 (= lt!54317 Unit!2553)))

(declare-fun c!33889 () Bool)

(declare-fun call!7513 () BalanceConc!1744)

(declare-fun bm!7505 () Bool)

(assert (=> bm!7505 (= call!7513 (charsOf!178 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))))))

(declare-fun b!171386 () Bool)

(declare-fun e!103847 () BalanceConc!1744)

(assert (=> b!171386 (= e!103847 (BalanceConc!1745 Empty!868))))

(declare-fun lt!54315 () BalanceConc!1744)

(declare-fun dropList!90 (BalanceConc!1746 Int) List!2930)

(assert (=> d!42751 (= (list!1061 lt!54315) (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) separatorToken!170))))

(assert (=> d!42751 (= lt!54315 e!103847)))

(declare-fun c!33890 () Bool)

(assert (=> d!42751 (= c!33890 (>= 0 (size!2416 (seqFromList!424 (t!27132 tokens!465)))))))

(declare-fun lt!54318 () Unit!2548)

(declare-fun lemmaContentSubsetPreservesForall!33 (List!2930 List!2930 Int) Unit!2548)

(assert (=> d!42751 (= lt!54318 (lemmaContentSubsetPreservesForall!33 (list!1064 (seqFromList!424 (t!27132 tokens!465))) (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) lambda!4906))))

(declare-fun e!103852 () Bool)

(assert (=> d!42751 e!103852))

(declare-fun res!77533 () Bool)

(assert (=> d!42751 (=> (not res!77533) (not e!103852))))

(assert (=> d!42751 (= res!77533 (>= 0 0))))

(assert (=> d!42751 (= (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0) lt!54315)))

(assert (=> b!171387 (= e!103847 e!103851)))

(declare-fun lt!54320 () List!2930)

(assert (=> b!171387 (= lt!54320 (list!1064 (seqFromList!424 (t!27132 tokens!465))))))

(declare-fun lt!54309 () Unit!2548)

(declare-fun lemmaDropApply!130 (List!2930 Int) Unit!2548)

(assert (=> b!171387 (= lt!54309 (lemmaDropApply!130 lt!54320 0))))

(declare-fun head!604 (List!2930) Token!790)

(declare-fun drop!143 (List!2930 Int) List!2930)

(declare-fun apply!422 (List!2930 Int) Token!790)

(assert (=> b!171387 (= (head!604 (drop!143 lt!54320 0)) (apply!422 lt!54320 0))))

(declare-fun lt!54313 () Unit!2548)

(assert (=> b!171387 (= lt!54313 lt!54309)))

(declare-fun lt!54308 () List!2930)

(assert (=> b!171387 (= lt!54308 (list!1064 (seqFromList!424 (t!27132 tokens!465))))))

(declare-fun lt!54312 () Unit!2548)

(declare-fun lemmaDropTail!122 (List!2930 Int) Unit!2548)

(assert (=> b!171387 (= lt!54312 (lemmaDropTail!122 lt!54308 0))))

(declare-fun tail!344 (List!2930) List!2930)

(assert (=> b!171387 (= (tail!344 (drop!143 lt!54308 0)) (drop!143 lt!54308 (+ 0 1)))))

(declare-fun lt!54319 () Unit!2548)

(assert (=> b!171387 (= lt!54319 lt!54312)))

(declare-fun lt!54310 () Unit!2548)

(declare-fun apply!423 (BalanceConc!1746 Int) Token!790)

(assert (=> b!171387 (= lt!54310 (forallContained!90 (list!1064 (seqFromList!424 (t!27132 tokens!465))) lambda!4907 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(assert (=> b!171387 (= lt!54311 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun ++!672 (BalanceConc!1744 BalanceConc!1744) BalanceConc!1744)

(assert (=> b!171387 (= lt!54316 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))

(declare-fun res!77535 () Bool)

(assert (=> b!171387 (= res!77535 ((_ is Some!320) lt!54316))))

(declare-fun e!103848 () Bool)

(assert (=> b!171387 (=> (not res!77535) (not e!103848))))

(assert (=> b!171387 (= c!33889 e!103848)))

(declare-fun b!171388 () Bool)

(declare-fun call!7511 () BalanceConc!1744)

(assert (=> b!171388 (= e!103851 call!7511)))

(declare-fun b!171389 () Bool)

(assert (=> b!171389 (= e!103848 (= (_1!1631 (v!13763 lt!54316)) (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(declare-fun bm!7506 () Bool)

(assert (=> bm!7506 (= call!7514 call!7513)))

(declare-fun b!171390 () Bool)

(assert (=> b!171390 (= e!103850 (++!672 call!7511 lt!54311))))

(declare-fun b!171391 () Bool)

(assert (=> b!171391 (= e!103852 (<= 0 (size!2416 (seqFromList!424 (t!27132 tokens!465)))))))

(declare-fun bm!7507 () Bool)

(declare-fun c!33891 () Bool)

(assert (=> bm!7507 (= c!33891 c!33889)))

(assert (=> bm!7507 (= call!7511 (++!672 e!103849 (ite c!33889 lt!54311 call!7514)))))

(declare-fun b!171392 () Bool)

(assert (=> b!171392 (= e!103849 call!7513)))

(declare-fun bm!7508 () Bool)

(assert (=> bm!7508 (= call!7512 call!7510)))

(declare-fun bm!7509 () Bool)

(assert (=> bm!7509 (= call!7510 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))

(assert (= (and d!42751 res!77533) b!171391))

(assert (= (and d!42751 c!33890) b!171386))

(assert (= (and d!42751 (not c!33890)) b!171387))

(assert (= (and b!171387 res!77535) b!171389))

(assert (= (and b!171387 c!33889) b!171388))

(assert (= (and b!171387 (not c!33889)) b!171383))

(assert (= (and b!171383 res!77534) b!171384))

(assert (= (and b!171383 c!33892) b!171390))

(assert (= (and b!171383 (not c!33892)) b!171385))

(assert (= (or b!171390 b!171385) bm!7508))

(assert (= (or b!171390 b!171385) bm!7506))

(assert (= (or b!171388 b!171384 bm!7508) bm!7509))

(assert (= (or b!171388 bm!7506) bm!7505))

(assert (= (or b!171388 b!171390) bm!7507))

(assert (= (and bm!7507 c!33891) b!171392))

(assert (= (and bm!7507 (not c!33891)) b!171382))

(declare-fun m!167601 () Bool)

(assert (=> b!171387 m!167601))

(declare-fun m!167603 () Bool)

(assert (=> b!171387 m!167603))

(declare-fun m!167605 () Bool)

(assert (=> b!171387 m!167605))

(declare-fun m!167607 () Bool)

(assert (=> b!171387 m!167607))

(assert (=> b!171387 m!167605))

(declare-fun m!167609 () Bool)

(assert (=> b!171387 m!167609))

(declare-fun m!167611 () Bool)

(assert (=> b!171387 m!167611))

(assert (=> b!171387 m!167123))

(assert (=> b!171387 m!167605))

(assert (=> b!171387 m!167609))

(declare-fun m!167613 () Bool)

(assert (=> b!171387 m!167613))

(declare-fun m!167615 () Bool)

(assert (=> b!171387 m!167615))

(assert (=> b!171387 m!167123))

(declare-fun m!167617 () Bool)

(assert (=> b!171387 m!167617))

(declare-fun m!167619 () Bool)

(assert (=> b!171387 m!167619))

(declare-fun m!167621 () Bool)

(assert (=> b!171387 m!167621))

(declare-fun m!167623 () Bool)

(assert (=> b!171387 m!167623))

(assert (=> b!171387 m!167601))

(declare-fun m!167625 () Bool)

(assert (=> b!171387 m!167625))

(assert (=> b!171387 m!167619))

(assert (=> b!171387 m!167613))

(declare-fun m!167627 () Bool)

(assert (=> b!171387 m!167627))

(declare-fun m!167629 () Bool)

(assert (=> b!171387 m!167629))

(assert (=> b!171387 m!167123))

(assert (=> b!171387 m!167603))

(declare-fun m!167631 () Bool)

(assert (=> b!171385 m!167631))

(declare-fun m!167633 () Bool)

(assert (=> b!171385 m!167633))

(assert (=> b!171385 m!167631))

(declare-fun m!167635 () Bool)

(assert (=> b!171385 m!167635))

(declare-fun m!167637 () Bool)

(assert (=> b!171385 m!167637))

(assert (=> b!171385 m!167633))

(declare-fun m!167639 () Bool)

(assert (=> b!171385 m!167639))

(assert (=> b!171385 m!167635))

(assert (=> b!171385 m!167633))

(declare-fun m!167641 () Bool)

(assert (=> b!171385 m!167641))

(assert (=> b!171389 m!167123))

(assert (=> b!171389 m!167605))

(assert (=> b!171391 m!167123))

(declare-fun m!167643 () Bool)

(assert (=> b!171391 m!167643))

(assert (=> bm!7509 m!167123))

(assert (=> bm!7509 m!167605))

(assert (=> d!42751 m!167123))

(declare-fun m!167645 () Bool)

(assert (=> d!42751 m!167645))

(assert (=> d!42751 m!167123))

(assert (=> d!42751 m!167643))

(declare-fun m!167647 () Bool)

(assert (=> d!42751 m!167647))

(assert (=> d!42751 m!167603))

(assert (=> d!42751 m!167645))

(declare-fun m!167649 () Bool)

(assert (=> d!42751 m!167649))

(assert (=> d!42751 m!167123))

(assert (=> d!42751 m!167603))

(assert (=> d!42751 m!167645))

(declare-fun m!167651 () Bool)

(assert (=> d!42751 m!167651))

(declare-fun m!167653 () Bool)

(assert (=> bm!7507 m!167653))

(declare-fun m!167655 () Bool)

(assert (=> b!171390 m!167655))

(declare-fun m!167657 () Bool)

(assert (=> b!171382 m!167657))

(declare-fun m!167659 () Bool)

(assert (=> bm!7505 m!167659))

(assert (=> b!171040 d!42751))

(declare-fun d!42767 () Bool)

(declare-fun lt!54324 () BalanceConc!1744)

(assert (=> d!42767 (= (list!1061 lt!54324) (originalCharacters!566 separatorToken!170))))

(assert (=> d!42767 (= lt!54324 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))

(assert (=> d!42767 (= (charsOf!178 separatorToken!170) lt!54324)))

(declare-fun b_lambda!3871 () Bool)

(assert (=> (not b_lambda!3871) (not d!42767)))

(declare-fun tb!6719 () Bool)

(declare-fun t!27164 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27164) tb!6719))

(declare-fun b!171396 () Bool)

(declare-fun e!103857 () Bool)

(declare-fun tp!84381 () Bool)

(assert (=> b!171396 (= e!103857 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))) tp!84381))))

(declare-fun result!9426 () Bool)

(assert (=> tb!6719 (= result!9426 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))) e!103857))))

(assert (= tb!6719 b!171396))

(declare-fun m!167661 () Bool)

(assert (=> b!171396 m!167661))

(declare-fun m!167663 () Bool)

(assert (=> tb!6719 m!167663))

(assert (=> d!42767 t!27164))

(declare-fun b_and!11269 () Bool)

(assert (= b_and!11251 (and (=> t!27164 result!9426) b_and!11269)))

(declare-fun t!27166 () Bool)

(declare-fun tb!6721 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27166) tb!6721))

(declare-fun result!9428 () Bool)

(assert (= result!9428 result!9426))

(assert (=> d!42767 t!27166))

(declare-fun b_and!11271 () Bool)

(assert (= b_and!11253 (and (=> t!27166 result!9428) b_and!11271)))

(declare-fun tb!6723 () Bool)

(declare-fun t!27168 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27168) tb!6723))

(declare-fun result!9430 () Bool)

(assert (= result!9430 result!9426))

(assert (=> d!42767 t!27168))

(declare-fun b_and!11273 () Bool)

(assert (= b_and!11255 (and (=> t!27168 result!9430) b_and!11273)))

(declare-fun m!167665 () Bool)

(assert (=> d!42767 m!167665))

(declare-fun m!167667 () Bool)

(assert (=> d!42767 m!167667))

(assert (=> b!171040 d!42767))

(declare-fun d!42769 () Bool)

(declare-fun list!1065 (Conc!868) List!2928)

(assert (=> d!42769 (= (list!1061 (charsOf!178 (h!8317 tokens!465))) (list!1065 (c!33816 (charsOf!178 (h!8317 tokens!465)))))))

(declare-fun bs!16626 () Bool)

(assert (= bs!16626 d!42769))

(declare-fun m!167669 () Bool)

(assert (=> bs!16626 m!167669))

(assert (=> b!171040 d!42769))

(declare-fun d!42771 () Bool)

(declare-fun lt!54325 () BalanceConc!1744)

(assert (=> d!42771 (= (list!1061 lt!54325) (originalCharacters!566 (h!8317 tokens!465)))))

(assert (=> d!42771 (= lt!54325 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))

(assert (=> d!42771 (= (charsOf!178 (h!8317 tokens!465)) lt!54325)))

(declare-fun b_lambda!3873 () Bool)

(assert (=> (not b_lambda!3873) (not d!42771)))

(assert (=> d!42771 t!27141))

(declare-fun b_and!11275 () Bool)

(assert (= b_and!11269 (and (=> t!27141 result!9412) b_and!11275)))

(assert (=> d!42771 t!27143))

(declare-fun b_and!11277 () Bool)

(assert (= b_and!11271 (and (=> t!27143 result!9416) b_and!11277)))

(assert (=> d!42771 t!27145))

(declare-fun b_and!11279 () Bool)

(assert (= b_and!11273 (and (=> t!27145 result!9418) b_and!11279)))

(declare-fun m!167671 () Bool)

(assert (=> d!42771 m!167671))

(assert (=> d!42771 m!167373))

(assert (=> b!171040 d!42771))

(declare-fun b!171397 () Bool)

(declare-fun e!103859 () List!2928)

(assert (=> b!171397 (= e!103859 lt!54111)))

(declare-fun b!171400 () Bool)

(declare-fun lt!54326 () List!2928)

(declare-fun e!103858 () Bool)

(assert (=> b!171400 (= e!103858 (or (not (= lt!54111 Nil!2918)) (= lt!54326 lt!54115)))))

(declare-fun d!42773 () Bool)

(assert (=> d!42773 e!103858))

(declare-fun res!77536 () Bool)

(assert (=> d!42773 (=> (not res!77536) (not e!103858))))

(assert (=> d!42773 (= res!77536 (= (content!400 lt!54326) ((_ map or) (content!400 lt!54115) (content!400 lt!54111))))))

(assert (=> d!42773 (= lt!54326 e!103859)))

(declare-fun c!33893 () Bool)

(assert (=> d!42773 (= c!33893 ((_ is Nil!2918) lt!54115))))

(assert (=> d!42773 (= (++!670 lt!54115 lt!54111) lt!54326)))

(declare-fun b!171399 () Bool)

(declare-fun res!77537 () Bool)

(assert (=> b!171399 (=> (not res!77537) (not e!103858))))

(assert (=> b!171399 (= res!77537 (= (size!2417 lt!54326) (+ (size!2417 lt!54115) (size!2417 lt!54111))))))

(declare-fun b!171398 () Bool)

(assert (=> b!171398 (= e!103859 (Cons!2918 (h!8315 lt!54115) (++!670 (t!27130 lt!54115) lt!54111)))))

(assert (= (and d!42773 c!33893) b!171397))

(assert (= (and d!42773 (not c!33893)) b!171398))

(assert (= (and d!42773 res!77536) b!171399))

(assert (= (and b!171399 res!77537) b!171400))

(declare-fun m!167673 () Bool)

(assert (=> d!42773 m!167673))

(assert (=> d!42773 m!167387))

(declare-fun m!167675 () Bool)

(assert (=> d!42773 m!167675))

(declare-fun m!167677 () Bool)

(assert (=> b!171399 m!167677))

(assert (=> b!171399 m!167393))

(declare-fun m!167679 () Bool)

(assert (=> b!171399 m!167679))

(declare-fun m!167681 () Bool)

(assert (=> b!171398 m!167681))

(assert (=> b!171040 d!42773))

(declare-fun b!171401 () Bool)

(declare-fun e!103861 () List!2928)

(assert (=> b!171401 (= e!103861 lt!54119)))

(declare-fun e!103860 () Bool)

(declare-fun b!171404 () Bool)

(declare-fun lt!54327 () List!2928)

(assert (=> b!171404 (= e!103860 (or (not (= lt!54119 Nil!2918)) (= lt!54327 lt!54104)))))

(declare-fun d!42775 () Bool)

(assert (=> d!42775 e!103860))

(declare-fun res!77538 () Bool)

(assert (=> d!42775 (=> (not res!77538) (not e!103860))))

(assert (=> d!42775 (= res!77538 (= (content!400 lt!54327) ((_ map or) (content!400 lt!54104) (content!400 lt!54119))))))

(assert (=> d!42775 (= lt!54327 e!103861)))

(declare-fun c!33894 () Bool)

(assert (=> d!42775 (= c!33894 ((_ is Nil!2918) lt!54104))))

(assert (=> d!42775 (= (++!670 lt!54104 lt!54119) lt!54327)))

(declare-fun b!171403 () Bool)

(declare-fun res!77539 () Bool)

(assert (=> b!171403 (=> (not res!77539) (not e!103860))))

(assert (=> b!171403 (= res!77539 (= (size!2417 lt!54327) (+ (size!2417 lt!54104) (size!2417 lt!54119))))))

(declare-fun b!171402 () Bool)

(assert (=> b!171402 (= e!103861 (Cons!2918 (h!8315 lt!54104) (++!670 (t!27130 lt!54104) lt!54119)))))

(assert (= (and d!42775 c!33894) b!171401))

(assert (= (and d!42775 (not c!33894)) b!171402))

(assert (= (and d!42775 res!77538) b!171403))

(assert (= (and b!171403 res!77539) b!171404))

(declare-fun m!167683 () Bool)

(assert (=> d!42775 m!167683))

(assert (=> d!42775 m!167389))

(declare-fun m!167685 () Bool)

(assert (=> d!42775 m!167685))

(declare-fun m!167687 () Bool)

(assert (=> b!171403 m!167687))

(assert (=> b!171403 m!167395))

(declare-fun m!167689 () Bool)

(assert (=> b!171403 m!167689))

(declare-fun m!167691 () Bool)

(assert (=> b!171402 m!167691))

(assert (=> b!171040 d!42775))

(declare-fun d!42777 () Bool)

(assert (=> d!42777 (= (list!1061 (charsOf!178 separatorToken!170)) (list!1065 (c!33816 (charsOf!178 separatorToken!170))))))

(declare-fun bs!16627 () Bool)

(assert (= bs!16627 d!42777))

(declare-fun m!167693 () Bool)

(assert (=> bs!16627 m!167693))

(assert (=> b!171040 d!42777))

(declare-fun b!171405 () Bool)

(declare-fun e!103863 () List!2928)

(assert (=> b!171405 (= e!103863 lt!54119)))

(declare-fun lt!54328 () List!2928)

(declare-fun e!103862 () Bool)

(declare-fun b!171408 () Bool)

(assert (=> b!171408 (= e!103862 (or (not (= lt!54119 Nil!2918)) (= lt!54328 (++!670 lt!54115 lt!54104))))))

(declare-fun d!42779 () Bool)

(assert (=> d!42779 e!103862))

(declare-fun res!77540 () Bool)

(assert (=> d!42779 (=> (not res!77540) (not e!103862))))

(assert (=> d!42779 (= res!77540 (= (content!400 lt!54328) ((_ map or) (content!400 (++!670 lt!54115 lt!54104)) (content!400 lt!54119))))))

(assert (=> d!42779 (= lt!54328 e!103863)))

(declare-fun c!33895 () Bool)

(assert (=> d!42779 (= c!33895 ((_ is Nil!2918) (++!670 lt!54115 lt!54104)))))

(assert (=> d!42779 (= (++!670 (++!670 lt!54115 lt!54104) lt!54119) lt!54328)))

(declare-fun b!171407 () Bool)

(declare-fun res!77541 () Bool)

(assert (=> b!171407 (=> (not res!77541) (not e!103862))))

(assert (=> b!171407 (= res!77541 (= (size!2417 lt!54328) (+ (size!2417 (++!670 lt!54115 lt!54104)) (size!2417 lt!54119))))))

(declare-fun b!171406 () Bool)

(assert (=> b!171406 (= e!103863 (Cons!2918 (h!8315 (++!670 lt!54115 lt!54104)) (++!670 (t!27130 (++!670 lt!54115 lt!54104)) lt!54119)))))

(assert (= (and d!42779 c!33895) b!171405))

(assert (= (and d!42779 (not c!33895)) b!171406))

(assert (= (and d!42779 res!77540) b!171407))

(assert (= (and b!171407 res!77541) b!171408))

(declare-fun m!167695 () Bool)

(assert (=> d!42779 m!167695))

(assert (=> d!42779 m!167133))

(declare-fun m!167697 () Bool)

(assert (=> d!42779 m!167697))

(assert (=> d!42779 m!167685))

(declare-fun m!167699 () Bool)

(assert (=> b!171407 m!167699))

(assert (=> b!171407 m!167133))

(declare-fun m!167701 () Bool)

(assert (=> b!171407 m!167701))

(assert (=> b!171407 m!167689))

(declare-fun m!167703 () Bool)

(assert (=> b!171406 m!167703))

(assert (=> b!171040 d!42779))

(declare-fun d!42781 () Bool)

(assert (=> d!42781 (= (list!1061 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0)) (list!1065 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!16628 () Bool)

(assert (= bs!16628 d!42781))

(declare-fun m!167705 () Bool)

(assert (=> bs!16628 m!167705))

(assert (=> b!171040 d!42781))

(declare-fun d!42783 () Bool)

(assert (=> d!42783 (= (++!670 (++!670 lt!54115 lt!54104) lt!54119) (++!670 lt!54115 (++!670 lt!54104 lt!54119)))))

(declare-fun lt!54331 () Unit!2548)

(declare-fun choose!1832 (List!2928 List!2928 List!2928) Unit!2548)

(assert (=> d!42783 (= lt!54331 (choose!1832 lt!54115 lt!54104 lt!54119))))

(assert (=> d!42783 (= (lemmaConcatAssociativity!208 lt!54115 lt!54104 lt!54119) lt!54331)))

(declare-fun bs!16629 () Bool)

(assert (= bs!16629 d!42783))

(assert (=> bs!16629 m!167147))

(declare-fun m!167707 () Bool)

(assert (=> bs!16629 m!167707))

(declare-fun m!167709 () Bool)

(assert (=> bs!16629 m!167709))

(assert (=> bs!16629 m!167147))

(assert (=> bs!16629 m!167133))

(assert (=> bs!16629 m!167139))

(assert (=> bs!16629 m!167133))

(assert (=> b!171040 d!42783))

(declare-fun d!42785 () Bool)

(assert (=> d!42785 (= (list!1061 (seqFromList!423 lt!54105)) (list!1065 (c!33816 (seqFromList!423 lt!54105))))))

(declare-fun bs!16630 () Bool)

(assert (= bs!16630 d!42785))

(declare-fun m!167711 () Bool)

(assert (=> bs!16630 m!167711))

(assert (=> b!171039 d!42785))

(declare-fun d!42787 () Bool)

(assert (=> d!42787 (= (seqFromList!423 lt!54105) (fromListB!167 lt!54105))))

(declare-fun bs!16631 () Bool)

(assert (= bs!16631 d!42787))

(declare-fun m!167713 () Bool)

(assert (=> bs!16631 m!167713))

(assert (=> b!171039 d!42787))

(declare-fun b!171409 () Bool)

(declare-fun e!103865 () List!2928)

(assert (=> b!171409 (= e!103865 lt!54119)))

(declare-fun e!103864 () Bool)

(declare-fun b!171412 () Bool)

(declare-fun lt!54332 () List!2928)

(assert (=> b!171412 (= e!103864 (or (not (= lt!54119 Nil!2918)) (= lt!54332 lt!54115)))))

(declare-fun d!42789 () Bool)

(assert (=> d!42789 e!103864))

(declare-fun res!77542 () Bool)

(assert (=> d!42789 (=> (not res!77542) (not e!103864))))

(assert (=> d!42789 (= res!77542 (= (content!400 lt!54332) ((_ map or) (content!400 lt!54115) (content!400 lt!54119))))))

(assert (=> d!42789 (= lt!54332 e!103865)))

(declare-fun c!33896 () Bool)

(assert (=> d!42789 (= c!33896 ((_ is Nil!2918) lt!54115))))

(assert (=> d!42789 (= (++!670 lt!54115 lt!54119) lt!54332)))

(declare-fun b!171411 () Bool)

(declare-fun res!77543 () Bool)

(assert (=> b!171411 (=> (not res!77543) (not e!103864))))

(assert (=> b!171411 (= res!77543 (= (size!2417 lt!54332) (+ (size!2417 lt!54115) (size!2417 lt!54119))))))

(declare-fun b!171410 () Bool)

(assert (=> b!171410 (= e!103865 (Cons!2918 (h!8315 lt!54115) (++!670 (t!27130 lt!54115) lt!54119)))))

(assert (= (and d!42789 c!33896) b!171409))

(assert (= (and d!42789 (not c!33896)) b!171410))

(assert (= (and d!42789 res!77542) b!171411))

(assert (= (and b!171411 res!77543) b!171412))

(declare-fun m!167715 () Bool)

(assert (=> d!42789 m!167715))

(assert (=> d!42789 m!167387))

(assert (=> d!42789 m!167685))

(declare-fun m!167717 () Bool)

(assert (=> b!171411 m!167717))

(assert (=> b!171411 m!167393))

(assert (=> b!171411 m!167689))

(declare-fun m!167719 () Bool)

(assert (=> b!171410 m!167719))

(assert (=> b!171050 d!42789))

(declare-fun b!171423 () Bool)

(declare-fun e!103872 () Bool)

(declare-fun e!103874 () Bool)

(assert (=> b!171423 (= e!103872 e!103874)))

(declare-fun c!33902 () Bool)

(assert (=> b!171423 (= c!33902 ((_ is IntegerValue!1636) (value!19221 separatorToken!170)))))

(declare-fun b!171424 () Bool)

(declare-fun e!103873 () Bool)

(declare-fun inv!15 (TokenValue!545) Bool)

(assert (=> b!171424 (= e!103873 (inv!15 (value!19221 separatorToken!170)))))

(declare-fun b!171425 () Bool)

(declare-fun inv!17 (TokenValue!545) Bool)

(assert (=> b!171425 (= e!103874 (inv!17 (value!19221 separatorToken!170)))))

(declare-fun d!42791 () Bool)

(declare-fun c!33901 () Bool)

(assert (=> d!42791 (= c!33901 ((_ is IntegerValue!1635) (value!19221 separatorToken!170)))))

(assert (=> d!42791 (= (inv!21 (value!19221 separatorToken!170)) e!103872)))

(declare-fun b!171426 () Bool)

(declare-fun res!77546 () Bool)

(assert (=> b!171426 (=> res!77546 e!103873)))

(assert (=> b!171426 (= res!77546 (not ((_ is IntegerValue!1637) (value!19221 separatorToken!170))))))

(assert (=> b!171426 (= e!103874 e!103873)))

(declare-fun b!171427 () Bool)

(declare-fun inv!16 (TokenValue!545) Bool)

(assert (=> b!171427 (= e!103872 (inv!16 (value!19221 separatorToken!170)))))

(assert (= (and d!42791 c!33901) b!171427))

(assert (= (and d!42791 (not c!33901)) b!171423))

(assert (= (and b!171423 c!33902) b!171425))

(assert (= (and b!171423 (not c!33902)) b!171426))

(assert (= (and b!171426 (not res!77546)) b!171424))

(declare-fun m!167721 () Bool)

(assert (=> b!171424 m!167721))

(declare-fun m!167723 () Bool)

(assert (=> b!171425 m!167723))

(declare-fun m!167725 () Bool)

(assert (=> b!171427 m!167725))

(assert (=> b!171052 d!42791))

(declare-fun d!42793 () Bool)

(assert (=> d!42793 (= (inv!3740 (tag!701 (h!8316 rules!1920))) (= (mod (str.len (value!19220 (tag!701 (h!8316 rules!1920)))) 2) 0))))

(assert (=> b!171051 d!42793))

(declare-fun d!42795 () Bool)

(declare-fun res!77549 () Bool)

(declare-fun e!103877 () Bool)

(assert (=> d!42795 (=> (not res!77549) (not e!103877))))

(declare-fun semiInverseModEq!181 (Int Int) Bool)

(assert (=> d!42795 (= res!77549 (semiInverseModEq!181 (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (h!8316 rules!1920)))))))

(assert (=> d!42795 (= (inv!3744 (transformation!523 (h!8316 rules!1920))) e!103877)))

(declare-fun b!171430 () Bool)

(declare-fun equivClasses!164 (Int Int) Bool)

(assert (=> b!171430 (= e!103877 (equivClasses!164 (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (h!8316 rules!1920)))))))

(assert (= (and d!42795 res!77549) b!171430))

(declare-fun m!167727 () Bool)

(assert (=> d!42795 m!167727))

(declare-fun m!167729 () Bool)

(assert (=> b!171430 m!167729))

(assert (=> b!171051 d!42795))

(declare-fun d!42797 () Bool)

(declare-fun res!77554 () Bool)

(declare-fun e!103882 () Bool)

(assert (=> d!42797 (=> res!77554 e!103882)))

(assert (=> d!42797 (= res!77554 ((_ is Nil!2920) tokens!465))))

(assert (=> d!42797 (= (forall!573 tokens!465 lambda!4891) e!103882)))

(declare-fun b!171435 () Bool)

(declare-fun e!103883 () Bool)

(assert (=> b!171435 (= e!103882 e!103883)))

(declare-fun res!77555 () Bool)

(assert (=> b!171435 (=> (not res!77555) (not e!103883))))

(assert (=> b!171435 (= res!77555 (dynLambda!1111 lambda!4891 (h!8317 tokens!465)))))

(declare-fun b!171436 () Bool)

(assert (=> b!171436 (= e!103883 (forall!573 (t!27132 tokens!465) lambda!4891))))

(assert (= (and d!42797 (not res!77554)) b!171435))

(assert (= (and b!171435 res!77555) b!171436))

(declare-fun b_lambda!3875 () Bool)

(assert (=> (not b_lambda!3875) (not b!171435)))

(declare-fun m!167731 () Bool)

(assert (=> b!171435 m!167731))

(declare-fun m!167733 () Bool)

(assert (=> b!171436 m!167733))

(assert (=> b!171062 d!42797))

(declare-fun d!42799 () Bool)

(declare-fun res!77560 () Bool)

(declare-fun e!103888 () Bool)

(assert (=> d!42799 (=> res!77560 e!103888)))

(assert (=> d!42799 (= res!77560 (not ((_ is Cons!2919) rules!1920)))))

(assert (=> d!42799 (= (sepAndNonSepRulesDisjointChars!112 rules!1920 rules!1920) e!103888)))

(declare-fun b!171441 () Bool)

(declare-fun e!103889 () Bool)

(assert (=> b!171441 (= e!103888 e!103889)))

(declare-fun res!77561 () Bool)

(assert (=> b!171441 (=> (not res!77561) (not e!103889))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!39 (Rule!846 List!2929) Bool)

(assert (=> b!171441 (= res!77561 (ruleDisjointCharsFromAllFromOtherType!39 (h!8316 rules!1920) rules!1920))))

(declare-fun b!171442 () Bool)

(assert (=> b!171442 (= e!103889 (sepAndNonSepRulesDisjointChars!112 rules!1920 (t!27131 rules!1920)))))

(assert (= (and d!42799 (not res!77560)) b!171441))

(assert (= (and b!171441 res!77561) b!171442))

(declare-fun m!167735 () Bool)

(assert (=> b!171441 m!167735))

(declare-fun m!167737 () Bool)

(assert (=> b!171442 m!167737))

(assert (=> b!171053 d!42799))

(declare-fun d!42801 () Bool)

(declare-fun lt!54358 () Bool)

(declare-fun e!103917 () Bool)

(assert (=> d!42801 (= lt!54358 e!103917)))

(declare-fun res!77573 () Bool)

(assert (=> d!42801 (=> (not res!77573) (not e!103917))))

(assert (=> d!42801 (= res!77573 (= (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))))) (list!1064 (singletonSeq!75 (h!8317 tokens!465)))))))

(declare-fun e!103918 () Bool)

(assert (=> d!42801 (= lt!54358 e!103918)))

(declare-fun res!77574 () Bool)

(assert (=> d!42801 (=> (not res!77574) (not e!103918))))

(declare-fun lt!54357 () tuple2!2826)

(assert (=> d!42801 (= res!77574 (= (size!2416 (_1!1629 lt!54357)) 1))))

(assert (=> d!42801 (= lt!54357 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))))))

(assert (=> d!42801 (not (isEmpty!1248 rules!1920))))

(assert (=> d!42801 (= (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 tokens!465)) lt!54358)))

(declare-fun b!171491 () Bool)

(declare-fun res!77575 () Bool)

(assert (=> b!171491 (=> (not res!77575) (not e!103918))))

(assert (=> b!171491 (= res!77575 (= (apply!423 (_1!1629 lt!54357) 0) (h!8317 tokens!465)))))

(declare-fun b!171492 () Bool)

(declare-fun isEmpty!1256 (BalanceConc!1744) Bool)

(assert (=> b!171492 (= e!103918 (isEmpty!1256 (_2!1629 lt!54357)))))

(declare-fun b!171493 () Bool)

(assert (=> b!171493 (= e!103917 (isEmpty!1256 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))))))))

(assert (= (and d!42801 res!77574) b!171491))

(assert (= (and b!171491 res!77575) b!171492))

(assert (= (and d!42801 res!77573) b!171493))

(assert (=> d!42801 m!167165))

(declare-fun m!167787 () Bool)

(assert (=> d!42801 m!167787))

(declare-fun m!167789 () Bool)

(assert (=> d!42801 m!167789))

(assert (=> d!42801 m!167183))

(assert (=> d!42801 m!167183))

(declare-fun m!167791 () Bool)

(assert (=> d!42801 m!167791))

(declare-fun m!167793 () Bool)

(assert (=> d!42801 m!167793))

(declare-fun m!167795 () Bool)

(assert (=> d!42801 m!167795))

(assert (=> d!42801 m!167183))

(assert (=> d!42801 m!167793))

(declare-fun m!167797 () Bool)

(assert (=> b!171491 m!167797))

(declare-fun m!167799 () Bool)

(assert (=> b!171492 m!167799))

(assert (=> b!171493 m!167183))

(assert (=> b!171493 m!167183))

(assert (=> b!171493 m!167793))

(assert (=> b!171493 m!167793))

(assert (=> b!171493 m!167795))

(declare-fun m!167801 () Bool)

(assert (=> b!171493 m!167801))

(assert (=> b!171063 d!42801))

(declare-fun d!42813 () Bool)

(declare-fun res!77576 () Bool)

(declare-fun e!103919 () Bool)

(assert (=> d!42813 (=> (not res!77576) (not e!103919))))

(assert (=> d!42813 (= res!77576 (not (isEmpty!1247 (originalCharacters!566 separatorToken!170))))))

(assert (=> d!42813 (= (inv!3743 separatorToken!170) e!103919)))

(declare-fun b!171494 () Bool)

(declare-fun res!77577 () Bool)

(assert (=> b!171494 (=> (not res!77577) (not e!103919))))

(assert (=> b!171494 (= res!77577 (= (originalCharacters!566 separatorToken!170) (list!1061 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))))

(declare-fun b!171495 () Bool)

(assert (=> b!171495 (= e!103919 (= (size!2411 separatorToken!170) (size!2417 (originalCharacters!566 separatorToken!170))))))

(assert (= (and d!42813 res!77576) b!171494))

(assert (= (and b!171494 res!77577) b!171495))

(declare-fun b_lambda!3877 () Bool)

(assert (=> (not b_lambda!3877) (not b!171494)))

(assert (=> b!171494 t!27164))

(declare-fun b_and!11281 () Bool)

(assert (= b_and!11275 (and (=> t!27164 result!9426) b_and!11281)))

(assert (=> b!171494 t!27166))

(declare-fun b_and!11283 () Bool)

(assert (= b_and!11277 (and (=> t!27166 result!9428) b_and!11283)))

(assert (=> b!171494 t!27168))

(declare-fun b_and!11285 () Bool)

(assert (= b_and!11279 (and (=> t!27168 result!9430) b_and!11285)))

(declare-fun m!167803 () Bool)

(assert (=> d!42813 m!167803))

(assert (=> b!171494 m!167667))

(assert (=> b!171494 m!167667))

(declare-fun m!167805 () Bool)

(assert (=> b!171494 m!167805))

(declare-fun m!167807 () Bool)

(assert (=> b!171495 m!167807))

(assert (=> start!18466 d!42813))

(declare-fun d!42815 () Bool)

(declare-fun res!77580 () Bool)

(declare-fun e!103922 () Bool)

(assert (=> d!42815 (=> (not res!77580) (not e!103922))))

(declare-fun rulesValid!147 (LexerInterface!409 List!2929) Bool)

(assert (=> d!42815 (= res!77580 (rulesValid!147 thiss!17480 rules!1920))))

(assert (=> d!42815 (= (rulesInvariant!375 thiss!17480 rules!1920) e!103922)))

(declare-fun b!171498 () Bool)

(declare-datatypes ((List!2932 0))(
  ( (Nil!2922) (Cons!2922 (h!8319 String!3805) (t!27198 List!2932)) )
))
(declare-fun noDuplicateTag!147 (LexerInterface!409 List!2929 List!2932) Bool)

(assert (=> b!171498 (= e!103922 (noDuplicateTag!147 thiss!17480 rules!1920 Nil!2922))))

(assert (= (and d!42815 res!77580) b!171498))

(declare-fun m!167809 () Bool)

(assert (=> d!42815 m!167809))

(declare-fun m!167811 () Bool)

(assert (=> b!171498 m!167811))

(assert (=> b!171042 d!42815))

(declare-fun d!42817 () Bool)

(assert (=> d!42817 (= (isEmpty!1248 rules!1920) ((_ is Nil!2919) rules!1920))))

(assert (=> b!171044 d!42817))

(declare-fun d!42819 () Bool)

(assert (=> d!42819 (= (isEmpty!1247 (_2!1630 lt!54106)) ((_ is Nil!2918) (_2!1630 lt!54106)))))

(assert (=> b!171043 d!42819))

(declare-fun d!42821 () Bool)

(assert (=> d!42821 (= (list!1061 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0)) (list!1065 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0))))))

(declare-fun bs!16636 () Bool)

(assert (= bs!16636 d!42821))

(declare-fun m!167813 () Bool)

(assert (=> bs!16636 m!167813))

(assert (=> b!171056 d!42821))

(declare-fun bs!16637 () Bool)

(declare-fun d!42823 () Bool)

(assert (= bs!16637 (and d!42823 b!171060)))

(declare-fun lambda!4911 () Int)

(assert (=> bs!16637 (not (= lambda!4911 lambda!4892))))

(declare-fun bs!16638 () Bool)

(assert (= bs!16638 (and d!42823 b!171309)))

(assert (=> bs!16638 (not (= lambda!4911 lambda!4895))))

(declare-fun bs!16639 () Bool)

(assert (= bs!16639 (and d!42823 b!171387)))

(assert (=> bs!16639 (not (= lambda!4911 lambda!4907))))

(declare-fun bs!16640 () Bool)

(assert (= bs!16640 (and d!42823 d!42751)))

(assert (=> bs!16640 (= lambda!4911 lambda!4906)))

(declare-fun bs!16641 () Bool)

(assert (= bs!16641 (and d!42823 b!171062)))

(assert (=> bs!16641 (= lambda!4911 lambda!4891)))

(declare-fun bs!16642 () Bool)

(declare-fun b!171504 () Bool)

(assert (= bs!16642 (and b!171504 b!171060)))

(declare-fun lambda!4912 () Int)

(assert (=> bs!16642 (= lambda!4912 lambda!4892)))

(declare-fun bs!16643 () Bool)

(assert (= bs!16643 (and b!171504 b!171309)))

(assert (=> bs!16643 (= lambda!4912 lambda!4895)))

(declare-fun bs!16644 () Bool)

(assert (= bs!16644 (and b!171504 b!171387)))

(assert (=> bs!16644 (= lambda!4912 lambda!4907)))

(declare-fun bs!16645 () Bool)

(assert (= bs!16645 (and b!171504 d!42751)))

(assert (=> bs!16645 (not (= lambda!4912 lambda!4906))))

(declare-fun bs!16646 () Bool)

(assert (= bs!16646 (and b!171504 b!171062)))

(assert (=> bs!16646 (not (= lambda!4912 lambda!4891))))

(declare-fun bs!16647 () Bool)

(assert (= bs!16647 (and b!171504 d!42823)))

(assert (=> bs!16647 (not (= lambda!4912 lambda!4911))))

(declare-fun b!171512 () Bool)

(declare-fun e!103932 () Bool)

(assert (=> b!171512 (= e!103932 true)))

(declare-fun b!171511 () Bool)

(declare-fun e!103931 () Bool)

(assert (=> b!171511 (= e!103931 e!103932)))

(declare-fun b!171510 () Bool)

(declare-fun e!103930 () Bool)

(assert (=> b!171510 (= e!103930 e!103931)))

(assert (=> b!171504 e!103930))

(assert (= b!171511 b!171512))

(assert (= b!171510 b!171511))

(assert (= (and b!171504 ((_ is Cons!2919) rules!1920)) b!171510))

(assert (=> b!171512 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4912))))

(assert (=> b!171512 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4912))))

(assert (=> b!171504 true))

(declare-fun b!171499 () Bool)

(declare-fun e!103925 () BalanceConc!1744)

(declare-fun call!7532 () Token!790)

(assert (=> b!171499 (= e!103925 (charsOf!178 call!7532))))

(declare-fun b!171500 () Bool)

(declare-fun c!33923 () Bool)

(declare-fun e!103929 () Bool)

(assert (=> b!171500 (= c!33923 e!103929)))

(declare-fun res!77582 () Bool)

(assert (=> b!171500 (=> (not res!77582) (not e!103929))))

(declare-fun lt!54367 () Option!321)

(assert (=> b!171500 (= res!77582 ((_ is Some!320) lt!54367))))

(declare-fun e!103927 () BalanceConc!1744)

(declare-fun e!103926 () BalanceConc!1744)

(assert (=> b!171500 (= e!103927 e!103926)))

(declare-fun b!171501 () Bool)

(declare-fun call!7530 () Token!790)

(assert (=> b!171501 (= e!103929 (not (= (_1!1631 (v!13763 lt!54367)) call!7530)))))

(declare-fun b!171502 () Bool)

(assert (=> b!171502 (= e!103926 (BalanceConc!1745 Empty!868))))

(assert (=> b!171502 (= (print!140 thiss!17480 (singletonSeq!75 call!7532)) (printTailRec!103 thiss!17480 (singletonSeq!75 call!7532) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!54372 () Unit!2548)

(declare-fun Unit!2558 () Unit!2548)

(assert (=> b!171502 (= lt!54372 Unit!2558)))

(declare-fun call!7534 () BalanceConc!1744)

(declare-fun lt!54365 () Unit!2548)

(declare-fun lt!54362 () BalanceConc!1744)

(assert (=> b!171502 (= lt!54365 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 (list!1061 call!7534) (list!1061 lt!54362)))))

(assert (=> b!171502 false))

(declare-fun lt!54368 () Unit!2548)

(declare-fun Unit!2559 () Unit!2548)

(assert (=> b!171502 (= lt!54368 Unit!2559)))

(declare-fun bm!7525 () Bool)

(declare-fun c!33920 () Bool)

(declare-fun call!7533 () BalanceConc!1744)

(assert (=> bm!7525 (= call!7533 (charsOf!178 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))))))

(declare-fun b!171503 () Bool)

(declare-fun e!103923 () BalanceConc!1744)

(assert (=> b!171503 (= e!103923 (BalanceConc!1745 Empty!868))))

(declare-fun lt!54366 () BalanceConc!1744)

(assert (=> d!42823 (= (list!1061 lt!54366) (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (dropList!90 lt!54114 0) separatorToken!170))))

(assert (=> d!42823 (= lt!54366 e!103923)))

(declare-fun c!33921 () Bool)

(assert (=> d!42823 (= c!33921 (>= 0 (size!2416 lt!54114)))))

(declare-fun lt!54369 () Unit!2548)

(assert (=> d!42823 (= lt!54369 (lemmaContentSubsetPreservesForall!33 (list!1064 lt!54114) (dropList!90 lt!54114 0) lambda!4911))))

(declare-fun e!103928 () Bool)

(assert (=> d!42823 e!103928))

(declare-fun res!77581 () Bool)

(assert (=> d!42823 (=> (not res!77581) (not e!103928))))

(assert (=> d!42823 (= res!77581 (>= 0 0))))

(assert (=> d!42823 (= (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0) lt!54366)))

(assert (=> b!171504 (= e!103923 e!103927)))

(declare-fun lt!54371 () List!2930)

(assert (=> b!171504 (= lt!54371 (list!1064 lt!54114))))

(declare-fun lt!54360 () Unit!2548)

(assert (=> b!171504 (= lt!54360 (lemmaDropApply!130 lt!54371 0))))

(assert (=> b!171504 (= (head!604 (drop!143 lt!54371 0)) (apply!422 lt!54371 0))))

(declare-fun lt!54364 () Unit!2548)

(assert (=> b!171504 (= lt!54364 lt!54360)))

(declare-fun lt!54359 () List!2930)

(assert (=> b!171504 (= lt!54359 (list!1064 lt!54114))))

(declare-fun lt!54363 () Unit!2548)

(assert (=> b!171504 (= lt!54363 (lemmaDropTail!122 lt!54359 0))))

(assert (=> b!171504 (= (tail!344 (drop!143 lt!54359 0)) (drop!143 lt!54359 (+ 0 1)))))

(declare-fun lt!54370 () Unit!2548)

(assert (=> b!171504 (= lt!54370 lt!54363)))

(declare-fun lt!54361 () Unit!2548)

(assert (=> b!171504 (= lt!54361 (forallContained!90 (list!1064 lt!54114) lambda!4912 (apply!423 lt!54114 0)))))

(assert (=> b!171504 (= lt!54362 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 (+ 0 1)))))

(assert (=> b!171504 (= lt!54367 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))

(declare-fun res!77583 () Bool)

(assert (=> b!171504 (= res!77583 ((_ is Some!320) lt!54367))))

(declare-fun e!103924 () Bool)

(assert (=> b!171504 (=> (not res!77583) (not e!103924))))

(assert (=> b!171504 (= c!33920 e!103924)))

(declare-fun b!171505 () Bool)

(declare-fun call!7531 () BalanceConc!1744)

(assert (=> b!171505 (= e!103927 call!7531)))

(declare-fun b!171506 () Bool)

(assert (=> b!171506 (= e!103924 (= (_1!1631 (v!13763 lt!54367)) (apply!423 lt!54114 0)))))

(declare-fun bm!7526 () Bool)

(assert (=> bm!7526 (= call!7534 call!7533)))

(declare-fun b!171507 () Bool)

(assert (=> b!171507 (= e!103926 (++!672 call!7531 lt!54362))))

(declare-fun b!171508 () Bool)

(assert (=> b!171508 (= e!103928 (<= 0 (size!2416 lt!54114)))))

(declare-fun bm!7527 () Bool)

(declare-fun c!33922 () Bool)

(assert (=> bm!7527 (= c!33922 c!33920)))

(assert (=> bm!7527 (= call!7531 (++!672 e!103925 (ite c!33920 lt!54362 call!7534)))))

(declare-fun b!171509 () Bool)

(assert (=> b!171509 (= e!103925 call!7533)))

(declare-fun bm!7528 () Bool)

(assert (=> bm!7528 (= call!7532 call!7530)))

(declare-fun bm!7529 () Bool)

(assert (=> bm!7529 (= call!7530 (apply!423 lt!54114 0))))

(assert (= (and d!42823 res!77581) b!171508))

(assert (= (and d!42823 c!33921) b!171503))

(assert (= (and d!42823 (not c!33921)) b!171504))

(assert (= (and b!171504 res!77583) b!171506))

(assert (= (and b!171504 c!33920) b!171505))

(assert (= (and b!171504 (not c!33920)) b!171500))

(assert (= (and b!171500 res!77582) b!171501))

(assert (= (and b!171500 c!33923) b!171507))

(assert (= (and b!171500 (not c!33923)) b!171502))

(assert (= (or b!171507 b!171502) bm!7528))

(assert (= (or b!171507 b!171502) bm!7526))

(assert (= (or b!171505 b!171501 bm!7528) bm!7529))

(assert (= (or b!171505 bm!7526) bm!7525))

(assert (= (or b!171505 b!171507) bm!7527))

(assert (= (and bm!7527 c!33922) b!171509))

(assert (= (and bm!7527 (not c!33922)) b!171499))

(declare-fun m!167815 () Bool)

(assert (=> b!171504 m!167815))

(declare-fun m!167817 () Bool)

(assert (=> b!171504 m!167817))

(declare-fun m!167819 () Bool)

(assert (=> b!171504 m!167819))

(declare-fun m!167821 () Bool)

(assert (=> b!171504 m!167821))

(assert (=> b!171504 m!167819))

(declare-fun m!167823 () Bool)

(assert (=> b!171504 m!167823))

(declare-fun m!167825 () Bool)

(assert (=> b!171504 m!167825))

(assert (=> b!171504 m!167819))

(assert (=> b!171504 m!167823))

(declare-fun m!167827 () Bool)

(assert (=> b!171504 m!167827))

(declare-fun m!167829 () Bool)

(assert (=> b!171504 m!167829))

(declare-fun m!167831 () Bool)

(assert (=> b!171504 m!167831))

(declare-fun m!167833 () Bool)

(assert (=> b!171504 m!167833))

(declare-fun m!167835 () Bool)

(assert (=> b!171504 m!167835))

(declare-fun m!167837 () Bool)

(assert (=> b!171504 m!167837))

(assert (=> b!171504 m!167815))

(declare-fun m!167839 () Bool)

(assert (=> b!171504 m!167839))

(assert (=> b!171504 m!167833))

(assert (=> b!171504 m!167827))

(declare-fun m!167841 () Bool)

(assert (=> b!171504 m!167841))

(declare-fun m!167843 () Bool)

(assert (=> b!171504 m!167843))

(assert (=> b!171504 m!167817))

(declare-fun m!167845 () Bool)

(assert (=> b!171502 m!167845))

(declare-fun m!167847 () Bool)

(assert (=> b!171502 m!167847))

(assert (=> b!171502 m!167845))

(declare-fun m!167849 () Bool)

(assert (=> b!171502 m!167849))

(declare-fun m!167851 () Bool)

(assert (=> b!171502 m!167851))

(assert (=> b!171502 m!167847))

(declare-fun m!167853 () Bool)

(assert (=> b!171502 m!167853))

(assert (=> b!171502 m!167849))

(assert (=> b!171502 m!167847))

(declare-fun m!167855 () Bool)

(assert (=> b!171502 m!167855))

(assert (=> b!171506 m!167819))

(declare-fun m!167857 () Bool)

(assert (=> b!171508 m!167857))

(assert (=> bm!7529 m!167819))

(declare-fun m!167859 () Bool)

(assert (=> d!42823 m!167859))

(assert (=> d!42823 m!167857))

(declare-fun m!167861 () Bool)

(assert (=> d!42823 m!167861))

(assert (=> d!42823 m!167817))

(assert (=> d!42823 m!167859))

(declare-fun m!167863 () Bool)

(assert (=> d!42823 m!167863))

(assert (=> d!42823 m!167817))

(assert (=> d!42823 m!167859))

(declare-fun m!167865 () Bool)

(assert (=> d!42823 m!167865))

(declare-fun m!167867 () Bool)

(assert (=> bm!7527 m!167867))

(declare-fun m!167869 () Bool)

(assert (=> b!171507 m!167869))

(declare-fun m!167871 () Bool)

(assert (=> b!171499 m!167871))

(declare-fun m!167873 () Bool)

(assert (=> bm!7525 m!167873))

(assert (=> b!171056 d!42823))

(declare-fun bs!16648 () Bool)

(declare-fun b!171518 () Bool)

(assert (= bs!16648 (and b!171518 b!171060)))

(declare-fun lambda!4913 () Int)

(assert (=> bs!16648 (= lambda!4913 lambda!4892)))

(declare-fun bs!16649 () Bool)

(assert (= bs!16649 (and b!171518 b!171309)))

(assert (=> bs!16649 (= lambda!4913 lambda!4895)))

(declare-fun bs!16650 () Bool)

(assert (= bs!16650 (and b!171518 b!171387)))

(assert (=> bs!16650 (= lambda!4913 lambda!4907)))

(declare-fun bs!16651 () Bool)

(assert (= bs!16651 (and b!171518 d!42751)))

(assert (=> bs!16651 (not (= lambda!4913 lambda!4906))))

(declare-fun bs!16652 () Bool)

(assert (= bs!16652 (and b!171518 b!171504)))

(assert (=> bs!16652 (= lambda!4913 lambda!4912)))

(declare-fun bs!16653 () Bool)

(assert (= bs!16653 (and b!171518 b!171062)))

(assert (=> bs!16653 (not (= lambda!4913 lambda!4891))))

(declare-fun bs!16654 () Bool)

(assert (= bs!16654 (and b!171518 d!42823)))

(assert (=> bs!16654 (not (= lambda!4913 lambda!4911))))

(declare-fun b!171523 () Bool)

(declare-fun e!103939 () Bool)

(assert (=> b!171523 (= e!103939 true)))

(declare-fun b!171522 () Bool)

(declare-fun e!103938 () Bool)

(assert (=> b!171522 (= e!103938 e!103939)))

(declare-fun b!171521 () Bool)

(declare-fun e!103937 () Bool)

(assert (=> b!171521 (= e!103937 e!103938)))

(assert (=> b!171518 e!103937))

(assert (= b!171522 b!171523))

(assert (= b!171521 b!171522))

(assert (= (and b!171518 ((_ is Cons!2919) rules!1920)) b!171521))

(assert (=> b!171523 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4913))))

(assert (=> b!171523 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4913))))

(assert (=> b!171518 true))

(declare-fun bm!7530 () Bool)

(declare-fun call!7539 () BalanceConc!1744)

(declare-fun call!7537 () BalanceConc!1744)

(assert (=> bm!7530 (= call!7539 call!7537)))

(declare-fun b!171513 () Bool)

(declare-fun e!103936 () List!2928)

(assert (=> b!171513 (= e!103936 Nil!2918)))

(assert (=> b!171513 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))) (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!54378 () Unit!2548)

(declare-fun Unit!2560 () Unit!2548)

(assert (=> b!171513 (= lt!54378 Unit!2560)))

(declare-fun lt!54377 () Unit!2548)

(declare-fun lt!54375 () List!2928)

(declare-fun call!7538 () List!2928)

(assert (=> b!171513 (= lt!54377 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7538 lt!54375))))

(assert (=> b!171513 false))

(declare-fun lt!54373 () Unit!2548)

(declare-fun Unit!2561 () Unit!2548)

(assert (=> b!171513 (= lt!54373 Unit!2561)))

(declare-fun b!171514 () Bool)

(declare-fun c!33926 () Bool)

(declare-fun lt!54376 () Option!320)

(assert (=> b!171514 (= c!33926 (and ((_ is Some!319) lt!54376) (not (= (_1!1630 (v!13762 lt!54376)) (h!8317 tokens!465)))))))

(declare-fun e!103935 () List!2928)

(assert (=> b!171514 (= e!103935 e!103936)))

(declare-fun bm!7531 () Bool)

(declare-fun c!33924 () Bool)

(declare-fun c!33925 () Bool)

(assert (=> bm!7531 (= c!33924 c!33925)))

(declare-fun e!103934 () List!2928)

(declare-fun call!7535 () List!2928)

(assert (=> bm!7531 (= call!7535 (++!670 e!103934 (ite c!33925 lt!54375 call!7538)))))

(declare-fun b!171515 () Bool)

(assert (=> b!171515 (= e!103935 call!7535)))

(declare-fun b!171516 () Bool)

(assert (=> b!171516 (= e!103936 (++!670 call!7535 lt!54375))))

(declare-fun b!171517 () Bool)

(declare-fun e!103933 () List!2928)

(assert (=> b!171517 (= e!103933 Nil!2918)))

(assert (=> b!171518 (= e!103933 e!103935)))

(declare-fun lt!54374 () Unit!2548)

(assert (=> b!171518 (= lt!54374 (forallContained!90 tokens!465 lambda!4913 (h!8317 tokens!465)))))

(assert (=> b!171518 (= lt!54375 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 tokens!465) separatorToken!170))))

(assert (=> b!171518 (= lt!54376 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375)))))

(assert (=> b!171518 (= c!33925 (and ((_ is Some!319) lt!54376) (= (_1!1630 (v!13762 lt!54376)) (h!8317 tokens!465))))))

(declare-fun bm!7532 () Bool)

(assert (=> bm!7532 (= call!7537 (charsOf!178 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))))))

(declare-fun d!42825 () Bool)

(declare-fun c!33927 () Bool)

(assert (=> d!42825 (= c!33927 ((_ is Cons!2920) tokens!465))))

(assert (=> d!42825 (= (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!103933)))

(declare-fun bm!7533 () Bool)

(declare-fun call!7536 () List!2928)

(assert (=> bm!7533 (= call!7536 (list!1061 (ite c!33925 call!7537 call!7539)))))

(declare-fun b!171519 () Bool)

(assert (=> b!171519 (= e!103934 call!7536)))

(declare-fun bm!7534 () Bool)

(assert (=> bm!7534 (= call!7538 call!7536)))

(declare-fun b!171520 () Bool)

(assert (=> b!171520 (= e!103934 (list!1061 (charsOf!178 (h!8317 tokens!465))))))

(assert (= (and d!42825 c!33927) b!171518))

(assert (= (and d!42825 (not c!33927)) b!171517))

(assert (= (and b!171518 c!33925) b!171515))

(assert (= (and b!171518 (not c!33925)) b!171514))

(assert (= (and b!171514 c!33926) b!171516))

(assert (= (and b!171514 (not c!33926)) b!171513))

(assert (= (or b!171516 b!171513) bm!7530))

(assert (= (or b!171516 b!171513) bm!7534))

(assert (= (or b!171515 bm!7530) bm!7532))

(assert (= (or b!171515 bm!7534) bm!7533))

(assert (= (or b!171515 b!171516) bm!7531))

(assert (= (and bm!7531 c!33924) b!171519))

(assert (= (and bm!7531 (not c!33924)) b!171520))

(assert (=> b!171513 m!167183))

(assert (=> b!171513 m!167183))

(assert (=> b!171513 m!167793))

(assert (=> b!171513 m!167183))

(declare-fun m!167875 () Bool)

(assert (=> b!171513 m!167875))

(declare-fun m!167877 () Bool)

(assert (=> b!171513 m!167877))

(declare-fun m!167879 () Bool)

(assert (=> bm!7532 m!167879))

(declare-fun m!167881 () Bool)

(assert (=> bm!7531 m!167881))

(declare-fun m!167883 () Bool)

(assert (=> bm!7533 m!167883))

(declare-fun m!167885 () Bool)

(assert (=> b!171516 m!167885))

(assert (=> b!171520 m!167137))

(assert (=> b!171520 m!167137))

(assert (=> b!171520 m!167141))

(assert (=> b!171518 m!167137))

(assert (=> b!171518 m!167141))

(declare-fun m!167887 () Bool)

(assert (=> b!171518 m!167887))

(declare-fun m!167889 () Bool)

(assert (=> b!171518 m!167889))

(assert (=> b!171518 m!167127))

(assert (=> b!171518 m!167137))

(assert (=> b!171518 m!167141))

(assert (=> b!171518 m!167887))

(declare-fun m!167891 () Bool)

(assert (=> b!171518 m!167891))

(assert (=> b!171056 d!42825))

(declare-fun d!42827 () Bool)

(assert (=> d!42827 (= (list!1061 lt!54110) (list!1065 (c!33816 lt!54110)))))

(declare-fun bs!16655 () Bool)

(assert (= bs!16655 d!42827))

(declare-fun m!167893 () Bool)

(assert (=> bs!16655 m!167893))

(assert (=> b!171055 d!42827))

(declare-fun d!42829 () Bool)

(declare-fun lt!54381 () BalanceConc!1744)

(assert (=> d!42829 (= (list!1061 lt!54381) (printList!93 thiss!17480 (list!1064 lt!54116)))))

(assert (=> d!42829 (= lt!54381 (printTailRec!103 thiss!17480 lt!54116 0 (BalanceConc!1745 Empty!868)))))

(assert (=> d!42829 (= (print!140 thiss!17480 lt!54116) lt!54381)))

(declare-fun bs!16656 () Bool)

(assert (= bs!16656 d!42829))

(declare-fun m!167895 () Bool)

(assert (=> bs!16656 m!167895))

(declare-fun m!167897 () Bool)

(assert (=> bs!16656 m!167897))

(assert (=> bs!16656 m!167897))

(declare-fun m!167899 () Bool)

(assert (=> bs!16656 m!167899))

(assert (=> bs!16656 m!167181))

(assert (=> b!171055 d!42829))

(declare-fun d!42831 () Bool)

(declare-fun lt!54404 () BalanceConc!1744)

(declare-fun printListTailRec!58 (LexerInterface!409 List!2930 List!2928) List!2928)

(assert (=> d!42831 (= (list!1061 lt!54404) (printListTailRec!58 thiss!17480 (dropList!90 lt!54116 0) (list!1061 (BalanceConc!1745 Empty!868))))))

(declare-fun e!103947 () BalanceConc!1744)

(assert (=> d!42831 (= lt!54404 e!103947)))

(declare-fun c!33930 () Bool)

(assert (=> d!42831 (= c!33930 (>= 0 (size!2416 lt!54116)))))

(declare-fun e!103946 () Bool)

(assert (=> d!42831 e!103946))

(declare-fun res!77588 () Bool)

(assert (=> d!42831 (=> (not res!77588) (not e!103946))))

(assert (=> d!42831 (= res!77588 (>= 0 0))))

(assert (=> d!42831 (= (printTailRec!103 thiss!17480 lt!54116 0 (BalanceConc!1745 Empty!868)) lt!54404)))

(declare-fun b!171532 () Bool)

(assert (=> b!171532 (= e!103946 (<= 0 (size!2416 lt!54116)))))

(declare-fun b!171533 () Bool)

(assert (=> b!171533 (= e!103947 (BalanceConc!1745 Empty!868))))

(declare-fun b!171534 () Bool)

(assert (=> b!171534 (= e!103947 (printTailRec!103 thiss!17480 lt!54116 (+ 0 1) (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 lt!54116 0)))))))

(declare-fun lt!54402 () List!2930)

(assert (=> b!171534 (= lt!54402 (list!1064 lt!54116))))

(declare-fun lt!54399 () Unit!2548)

(assert (=> b!171534 (= lt!54399 (lemmaDropApply!130 lt!54402 0))))

(assert (=> b!171534 (= (head!604 (drop!143 lt!54402 0)) (apply!422 lt!54402 0))))

(declare-fun lt!54401 () Unit!2548)

(assert (=> b!171534 (= lt!54401 lt!54399)))

(declare-fun lt!54398 () List!2930)

(assert (=> b!171534 (= lt!54398 (list!1064 lt!54116))))

(declare-fun lt!54403 () Unit!2548)

(assert (=> b!171534 (= lt!54403 (lemmaDropTail!122 lt!54398 0))))

(assert (=> b!171534 (= (tail!344 (drop!143 lt!54398 0)) (drop!143 lt!54398 (+ 0 1)))))

(declare-fun lt!54400 () Unit!2548)

(assert (=> b!171534 (= lt!54400 lt!54403)))

(assert (= (and d!42831 res!77588) b!171532))

(assert (= (and d!42831 c!33930) b!171533))

(assert (= (and d!42831 (not c!33930)) b!171534))

(declare-fun m!167901 () Bool)

(assert (=> d!42831 m!167901))

(declare-fun m!167903 () Bool)

(assert (=> d!42831 m!167903))

(declare-fun m!167905 () Bool)

(assert (=> d!42831 m!167905))

(declare-fun m!167907 () Bool)

(assert (=> d!42831 m!167907))

(declare-fun m!167909 () Bool)

(assert (=> d!42831 m!167909))

(assert (=> d!42831 m!167907))

(assert (=> d!42831 m!167905))

(assert (=> b!171532 m!167903))

(declare-fun m!167911 () Bool)

(assert (=> b!171534 m!167911))

(declare-fun m!167913 () Bool)

(assert (=> b!171534 m!167913))

(declare-fun m!167915 () Bool)

(assert (=> b!171534 m!167915))

(declare-fun m!167917 () Bool)

(assert (=> b!171534 m!167917))

(assert (=> b!171534 m!167915))

(assert (=> b!171534 m!167897))

(declare-fun m!167919 () Bool)

(assert (=> b!171534 m!167919))

(declare-fun m!167921 () Bool)

(assert (=> b!171534 m!167921))

(assert (=> b!171534 m!167919))

(declare-fun m!167923 () Bool)

(assert (=> b!171534 m!167923))

(assert (=> b!171534 m!167911))

(declare-fun m!167925 () Bool)

(assert (=> b!171534 m!167925))

(assert (=> b!171534 m!167917))

(declare-fun m!167927 () Bool)

(assert (=> b!171534 m!167927))

(assert (=> b!171534 m!167927))

(declare-fun m!167929 () Bool)

(assert (=> b!171534 m!167929))

(declare-fun m!167931 () Bool)

(assert (=> b!171534 m!167931))

(declare-fun m!167933 () Bool)

(assert (=> b!171534 m!167933))

(assert (=> b!171055 d!42831))

(declare-fun d!42833 () Bool)

(declare-fun e!103963 () Bool)

(assert (=> d!42833 e!103963))

(declare-fun res!77598 () Bool)

(assert (=> d!42833 (=> (not res!77598) (not e!103963))))

(declare-fun lt!54422 () BalanceConc!1746)

(assert (=> d!42833 (= res!77598 (= (list!1064 lt!54422) (Cons!2920 (h!8317 tokens!465) Nil!2920)))))

(declare-fun singleton!39 (Token!790) BalanceConc!1746)

(assert (=> d!42833 (= lt!54422 (singleton!39 (h!8317 tokens!465)))))

(assert (=> d!42833 (= (singletonSeq!75 (h!8317 tokens!465)) lt!54422)))

(declare-fun b!171555 () Bool)

(declare-fun isBalanced!240 (Conc!869) Bool)

(assert (=> b!171555 (= e!103963 (isBalanced!240 (c!33818 lt!54422)))))

(assert (= (and d!42833 res!77598) b!171555))

(declare-fun m!167957 () Bool)

(assert (=> d!42833 m!167957))

(declare-fun m!167959 () Bool)

(assert (=> d!42833 m!167959))

(declare-fun m!167961 () Bool)

(assert (=> b!171555 m!167961))

(assert (=> b!171055 d!42833))

(declare-fun d!42847 () Bool)

(declare-fun c!33937 () Bool)

(assert (=> d!42847 (= c!33937 ((_ is Cons!2920) (Cons!2920 (h!8317 tokens!465) Nil!2920)))))

(declare-fun e!103969 () List!2928)

(assert (=> d!42847 (= (printList!93 thiss!17480 (Cons!2920 (h!8317 tokens!465) Nil!2920)) e!103969)))

(declare-fun b!171563 () Bool)

(assert (=> b!171563 (= e!103969 (++!670 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))) (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))))

(declare-fun b!171564 () Bool)

(assert (=> b!171564 (= e!103969 Nil!2918)))

(assert (= (and d!42847 c!33937) b!171563))

(assert (= (and d!42847 (not c!33937)) b!171564))

(declare-fun m!167963 () Bool)

(assert (=> b!171563 m!167963))

(assert (=> b!171563 m!167963))

(declare-fun m!167965 () Bool)

(assert (=> b!171563 m!167965))

(declare-fun m!167967 () Bool)

(assert (=> b!171563 m!167967))

(assert (=> b!171563 m!167965))

(assert (=> b!171563 m!167967))

(declare-fun m!167969 () Bool)

(assert (=> b!171563 m!167969))

(assert (=> b!171055 d!42847))

(declare-fun d!42849 () Bool)

(assert (=> d!42849 (= (inv!3740 (tag!701 (rule!1030 (h!8317 tokens!465)))) (= (mod (str.len (value!19220 (tag!701 (rule!1030 (h!8317 tokens!465))))) 2) 0))))

(assert (=> b!171057 d!42849))

(declare-fun d!42851 () Bool)

(declare-fun res!77599 () Bool)

(declare-fun e!103970 () Bool)

(assert (=> d!42851 (=> (not res!77599) (not e!103970))))

(assert (=> d!42851 (= res!77599 (semiInverseModEq!181 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465))))))))

(assert (=> d!42851 (= (inv!3744 (transformation!523 (rule!1030 (h!8317 tokens!465)))) e!103970)))

(declare-fun b!171565 () Bool)

(assert (=> b!171565 (= e!103970 (equivClasses!164 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465))))))))

(assert (= (and d!42851 res!77599) b!171565))

(declare-fun m!167991 () Bool)

(assert (=> d!42851 m!167991))

(declare-fun m!167993 () Bool)

(assert (=> b!171565 m!167993))

(assert (=> b!171057 d!42851))

(declare-fun d!42853 () Bool)

(declare-fun lt!54424 () Bool)

(declare-fun e!103971 () Bool)

(assert (=> d!42853 (= lt!54424 e!103971)))

(declare-fun res!77600 () Bool)

(assert (=> d!42853 (=> (not res!77600) (not e!103971))))

(assert (=> d!42853 (= res!77600 (= (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))))) (list!1064 (singletonSeq!75 separatorToken!170))))))

(declare-fun e!103972 () Bool)

(assert (=> d!42853 (= lt!54424 e!103972)))

(declare-fun res!77601 () Bool)

(assert (=> d!42853 (=> (not res!77601) (not e!103972))))

(declare-fun lt!54423 () tuple2!2826)

(assert (=> d!42853 (= res!77601 (= (size!2416 (_1!1629 lt!54423)) 1))))

(assert (=> d!42853 (= lt!54423 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))))))

(assert (=> d!42853 (not (isEmpty!1248 rules!1920))))

(assert (=> d!42853 (= (rulesProduceIndividualToken!158 thiss!17480 rules!1920 separatorToken!170) lt!54424)))

(declare-fun b!171566 () Bool)

(declare-fun res!77602 () Bool)

(assert (=> b!171566 (=> (not res!77602) (not e!103972))))

(assert (=> b!171566 (= res!77602 (= (apply!423 (_1!1629 lt!54423) 0) separatorToken!170))))

(declare-fun b!171567 () Bool)

(assert (=> b!171567 (= e!103972 (isEmpty!1256 (_2!1629 lt!54423)))))

(declare-fun b!171568 () Bool)

(assert (=> b!171568 (= e!103971 (isEmpty!1256 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))))))))

(assert (= (and d!42853 res!77601) b!171566))

(assert (= (and b!171566 res!77602) b!171567))

(assert (= (and d!42853 res!77600) b!171568))

(assert (=> d!42853 m!167165))

(declare-fun m!168025 () Bool)

(assert (=> d!42853 m!168025))

(declare-fun m!168029 () Bool)

(assert (=> d!42853 m!168029))

(declare-fun m!168033 () Bool)

(assert (=> d!42853 m!168033))

(assert (=> d!42853 m!168033))

(declare-fun m!168037 () Bool)

(assert (=> d!42853 m!168037))

(declare-fun m!168041 () Bool)

(assert (=> d!42853 m!168041))

(declare-fun m!168043 () Bool)

(assert (=> d!42853 m!168043))

(assert (=> d!42853 m!168033))

(assert (=> d!42853 m!168041))

(declare-fun m!168045 () Bool)

(assert (=> b!171566 m!168045))

(declare-fun m!168047 () Bool)

(assert (=> b!171567 m!168047))

(assert (=> b!171568 m!168033))

(assert (=> b!171568 m!168033))

(assert (=> b!171568 m!168041))

(assert (=> b!171568 m!168041))

(assert (=> b!171568 m!168043))

(declare-fun m!168049 () Bool)

(assert (=> b!171568 m!168049))

(assert (=> b!171035 d!42853))

(declare-fun d!42857 () Bool)

(assert (=> d!42857 (= (inv!3740 (tag!701 (rule!1030 separatorToken!170))) (= (mod (str.len (value!19220 (tag!701 (rule!1030 separatorToken!170)))) 2) 0))))

(assert (=> b!171046 d!42857))

(declare-fun d!42859 () Bool)

(declare-fun res!77603 () Bool)

(declare-fun e!103978 () Bool)

(assert (=> d!42859 (=> (not res!77603) (not e!103978))))

(assert (=> d!42859 (= res!77603 (semiInverseModEq!181 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))))))

(assert (=> d!42859 (= (inv!3744 (transformation!523 (rule!1030 separatorToken!170))) e!103978)))

(declare-fun b!171579 () Bool)

(assert (=> b!171579 (= e!103978 (equivClasses!164 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))))))

(assert (= (and d!42859 res!77603) b!171579))

(declare-fun m!168051 () Bool)

(assert (=> d!42859 m!168051))

(declare-fun m!168053 () Bool)

(assert (=> b!171579 m!168053))

(assert (=> b!171046 d!42859))

(declare-fun b!171583 () Bool)

(declare-fun e!103982 () Bool)

(declare-fun e!103984 () Bool)

(assert (=> b!171583 (= e!103982 e!103984)))

(declare-fun c!33944 () Bool)

(assert (=> b!171583 (= c!33944 ((_ is IntegerValue!1636) (value!19221 (h!8317 tokens!465))))))

(declare-fun b!171584 () Bool)

(declare-fun e!103983 () Bool)

(assert (=> b!171584 (= e!103983 (inv!15 (value!19221 (h!8317 tokens!465))))))

(declare-fun b!171585 () Bool)

(assert (=> b!171585 (= e!103984 (inv!17 (value!19221 (h!8317 tokens!465))))))

(declare-fun d!42861 () Bool)

(declare-fun c!33943 () Bool)

(assert (=> d!42861 (= c!33943 ((_ is IntegerValue!1635) (value!19221 (h!8317 tokens!465))))))

(assert (=> d!42861 (= (inv!21 (value!19221 (h!8317 tokens!465))) e!103982)))

(declare-fun b!171586 () Bool)

(declare-fun res!77604 () Bool)

(assert (=> b!171586 (=> res!77604 e!103983)))

(assert (=> b!171586 (= res!77604 (not ((_ is IntegerValue!1637) (value!19221 (h!8317 tokens!465)))))))

(assert (=> b!171586 (= e!103984 e!103983)))

(declare-fun b!171587 () Bool)

(assert (=> b!171587 (= e!103982 (inv!16 (value!19221 (h!8317 tokens!465))))))

(assert (= (and d!42861 c!33943) b!171587))

(assert (= (and d!42861 (not c!33943)) b!171583))

(assert (= (and b!171583 c!33944) b!171585))

(assert (= (and b!171583 (not c!33944)) b!171586))

(assert (= (and b!171586 (not res!77604)) b!171584))

(declare-fun m!168055 () Bool)

(assert (=> b!171584 m!168055))

(declare-fun m!168057 () Bool)

(assert (=> b!171585 m!168057))

(declare-fun m!168059 () Bool)

(assert (=> b!171587 m!168059))

(assert (=> b!171037 d!42861))

(declare-fun bs!16690 () Bool)

(declare-fun d!42863 () Bool)

(assert (= bs!16690 (and d!42863 b!171060)))

(declare-fun lambda!4926 () Int)

(assert (=> bs!16690 (= lambda!4926 lambda!4892)))

(declare-fun bs!16692 () Bool)

(assert (= bs!16692 (and d!42863 b!171309)))

(assert (=> bs!16692 (= lambda!4926 lambda!4895)))

(declare-fun bs!16693 () Bool)

(assert (= bs!16693 (and d!42863 b!171387)))

(assert (=> bs!16693 (= lambda!4926 lambda!4907)))

(declare-fun bs!16694 () Bool)

(assert (= bs!16694 (and d!42863 d!42751)))

(assert (=> bs!16694 (not (= lambda!4926 lambda!4906))))

(declare-fun bs!16695 () Bool)

(assert (= bs!16695 (and d!42863 b!171518)))

(assert (=> bs!16695 (= lambda!4926 lambda!4913)))

(declare-fun bs!16696 () Bool)

(assert (= bs!16696 (and d!42863 b!171504)))

(assert (=> bs!16696 (= lambda!4926 lambda!4912)))

(declare-fun bs!16697 () Bool)

(assert (= bs!16697 (and d!42863 b!171062)))

(assert (=> bs!16697 (not (= lambda!4926 lambda!4891))))

(declare-fun bs!16698 () Bool)

(assert (= bs!16698 (and d!42863 d!42823)))

(assert (=> bs!16698 (not (= lambda!4926 lambda!4911))))

(declare-fun b!171690 () Bool)

(declare-fun e!104064 () Bool)

(assert (=> b!171690 (= e!104064 true)))

(declare-fun b!171689 () Bool)

(declare-fun e!104063 () Bool)

(assert (=> b!171689 (= e!104063 e!104064)))

(declare-fun b!171688 () Bool)

(declare-fun e!104062 () Bool)

(assert (=> b!171688 (= e!104062 e!104063)))

(assert (=> d!42863 e!104062))

(assert (= b!171689 b!171690))

(assert (= b!171688 b!171689))

(assert (= (and d!42863 ((_ is Cons!2919) rules!1920)) b!171688))

(assert (=> b!171690 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4926))))

(assert (=> b!171690 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4926))))

(assert (=> d!42863 true))

(declare-fun e!104061 () Bool)

(assert (=> d!42863 e!104061))

(declare-fun res!77638 () Bool)

(assert (=> d!42863 (=> (not res!77638) (not e!104061))))

(declare-fun lt!54459 () Bool)

(assert (=> d!42863 (= res!77638 (= lt!54459 (forall!573 (list!1064 lt!54114) lambda!4926)))))

(declare-fun forall!575 (BalanceConc!1746 Int) Bool)

(assert (=> d!42863 (= lt!54459 (forall!575 lt!54114 lambda!4926))))

(assert (=> d!42863 (not (isEmpty!1248 rules!1920))))

(assert (=> d!42863 (= (rulesProduceEachTokenIndividually!201 thiss!17480 rules!1920 lt!54114) lt!54459)))

(declare-fun b!171687 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!113 (LexerInterface!409 List!2929 List!2930) Bool)

(assert (=> b!171687 (= e!104061 (= lt!54459 (rulesProduceEachTokenIndividuallyList!113 thiss!17480 rules!1920 (list!1064 lt!54114))))))

(assert (= (and d!42863 res!77638) b!171687))

(assert (=> d!42863 m!167817))

(assert (=> d!42863 m!167817))

(declare-fun m!168161 () Bool)

(assert (=> d!42863 m!168161))

(declare-fun m!168163 () Bool)

(assert (=> d!42863 m!168163))

(assert (=> d!42863 m!167165))

(assert (=> b!171687 m!167817))

(assert (=> b!171687 m!167817))

(declare-fun m!168165 () Bool)

(assert (=> b!171687 m!168165))

(assert (=> b!171048 d!42863))

(declare-fun d!42887 () Bool)

(assert (=> d!42887 (= (seqFromList!424 tokens!465) (fromListB!168 tokens!465))))

(declare-fun bs!16699 () Bool)

(assert (= bs!16699 d!42887))

(declare-fun m!168167 () Bool)

(assert (=> bs!16699 m!168167))

(assert (=> b!171048 d!42887))

(declare-fun bm!7554 () Bool)

(declare-fun call!7559 () Bool)

(declare-fun call!7560 () Bool)

(assert (=> bm!7554 (= call!7559 call!7560)))

(declare-fun b!171709 () Bool)

(declare-fun e!104082 () Bool)

(declare-fun e!104079 () Bool)

(assert (=> b!171709 (= e!104082 e!104079)))

(declare-fun c!33955 () Bool)

(assert (=> b!171709 (= c!33955 ((_ is Union!747) (regex!523 (rule!1030 (h!8317 tokens!465)))))))

(declare-fun b!171710 () Bool)

(declare-fun e!104081 () Bool)

(declare-fun call!7561 () Bool)

(assert (=> b!171710 (= e!104081 call!7561)))

(declare-fun b!171711 () Bool)

(declare-fun e!104085 () Bool)

(assert (=> b!171711 (= e!104082 e!104085)))

(declare-fun res!77651 () Bool)

(declare-fun nullable!108 (Regex!747) Bool)

(assert (=> b!171711 (= res!77651 (not (nullable!108 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))

(assert (=> b!171711 (=> (not res!77651) (not e!104085))))

(declare-fun b!171712 () Bool)

(declare-fun e!104083 () Bool)

(assert (=> b!171712 (= e!104083 e!104082)))

(declare-fun c!33954 () Bool)

(assert (=> b!171712 (= c!33954 ((_ is Star!747) (regex!523 (rule!1030 (h!8317 tokens!465)))))))

(declare-fun d!42889 () Bool)

(declare-fun res!77652 () Bool)

(assert (=> d!42889 (=> res!77652 e!104083)))

(assert (=> d!42889 (= res!77652 ((_ is ElementMatch!747) (regex!523 (rule!1030 (h!8317 tokens!465)))))))

(assert (=> d!42889 (= (validRegex!181 (regex!523 (rule!1030 (h!8317 tokens!465)))) e!104083)))

(declare-fun b!171713 () Bool)

(assert (=> b!171713 (= e!104085 call!7560)))

(declare-fun b!171714 () Bool)

(declare-fun res!77650 () Bool)

(declare-fun e!104084 () Bool)

(assert (=> b!171714 (=> res!77650 e!104084)))

(assert (=> b!171714 (= res!77650 (not ((_ is Concat!1293) (regex!523 (rule!1030 (h!8317 tokens!465))))))))

(assert (=> b!171714 (= e!104079 e!104084)))

(declare-fun bm!7555 () Bool)

(assert (=> bm!7555 (= call!7561 (validRegex!181 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))

(declare-fun b!171715 () Bool)

(declare-fun res!77649 () Bool)

(assert (=> b!171715 (=> (not res!77649) (not e!104081))))

(assert (=> b!171715 (= res!77649 call!7559)))

(assert (=> b!171715 (= e!104079 e!104081)))

(declare-fun b!171716 () Bool)

(declare-fun e!104080 () Bool)

(assert (=> b!171716 (= e!104080 call!7559)))

(declare-fun b!171717 () Bool)

(assert (=> b!171717 (= e!104084 e!104080)))

(declare-fun res!77653 () Bool)

(assert (=> b!171717 (=> (not res!77653) (not e!104080))))

(assert (=> b!171717 (= res!77653 call!7561)))

(declare-fun bm!7556 () Bool)

(assert (=> bm!7556 (= call!7560 (validRegex!181 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))

(assert (= (and d!42889 (not res!77652)) b!171712))

(assert (= (and b!171712 c!33954) b!171711))

(assert (= (and b!171712 (not c!33954)) b!171709))

(assert (= (and b!171711 res!77651) b!171713))

(assert (= (and b!171709 c!33955) b!171715))

(assert (= (and b!171709 (not c!33955)) b!171714))

(assert (= (and b!171715 res!77649) b!171710))

(assert (= (and b!171714 (not res!77650)) b!171717))

(assert (= (and b!171717 res!77653) b!171716))

(assert (= (or b!171715 b!171716) bm!7554))

(assert (= (or b!171710 b!171717) bm!7555))

(assert (= (or b!171713 bm!7554) bm!7556))

(declare-fun m!168169 () Bool)

(assert (=> b!171711 m!168169))

(declare-fun m!168171 () Bool)

(assert (=> bm!7555 m!168171))

(declare-fun m!168173 () Bool)

(assert (=> bm!7556 m!168173))

(assert (=> b!171047 d!42889))

(declare-fun d!42891 () Bool)

(assert (=> d!42891 (= (get!801 lt!54118) (v!13762 lt!54118))))

(assert (=> b!171047 d!42891))

(declare-fun d!42893 () Bool)

(declare-fun isEmpty!1257 (Option!320) Bool)

(assert (=> d!42893 (= (isDefined!171 lt!54118) (not (isEmpty!1257 lt!54118)))))

(declare-fun bs!16700 () Bool)

(assert (= bs!16700 d!42893))

(declare-fun m!168175 () Bool)

(assert (=> bs!16700 m!168175))

(assert (=> b!171047 d!42893))

(declare-fun b!171736 () Bool)

(declare-fun e!104092 () Option!320)

(declare-fun lt!54472 () Option!320)

(declare-fun lt!54471 () Option!320)

(assert (=> b!171736 (= e!104092 (ite (and ((_ is None!319) lt!54472) ((_ is None!319) lt!54471)) None!319 (ite ((_ is None!319) lt!54471) lt!54472 (ite ((_ is None!319) lt!54472) lt!54471 (ite (>= (size!2411 (_1!1630 (v!13762 lt!54472))) (size!2411 (_1!1630 (v!13762 lt!54471)))) lt!54472 lt!54471)))))))

(declare-fun call!7564 () Option!320)

(assert (=> b!171736 (= lt!54472 call!7564)))

(assert (=> b!171736 (= lt!54471 (maxPrefix!139 thiss!17480 (t!27131 rules!1920) lt!54115))))

(declare-fun b!171737 () Bool)

(assert (=> b!171737 (= e!104092 call!7564)))

(declare-fun b!171738 () Bool)

(declare-fun res!77669 () Bool)

(declare-fun e!104094 () Bool)

(assert (=> b!171738 (=> (not res!77669) (not e!104094))))

(declare-fun lt!54473 () Option!320)

(assert (=> b!171738 (= res!77669 (< (size!2417 (_2!1630 (get!801 lt!54473))) (size!2417 lt!54115)))))

(declare-fun bm!7559 () Bool)

(declare-fun maxPrefixOneRule!73 (LexerInterface!409 Rule!846 List!2928) Option!320)

(assert (=> bm!7559 (= call!7564 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) lt!54115))))

(declare-fun b!171740 () Bool)

(declare-fun contains!469 (List!2929 Rule!846) Bool)

(assert (=> b!171740 (= e!104094 (contains!469 rules!1920 (rule!1030 (_1!1630 (get!801 lt!54473)))))))

(declare-fun b!171741 () Bool)

(declare-fun e!104093 () Bool)

(assert (=> b!171741 (= e!104093 e!104094)))

(declare-fun res!77673 () Bool)

(assert (=> b!171741 (=> (not res!77673) (not e!104094))))

(assert (=> b!171741 (= res!77673 (isDefined!171 lt!54473))))

(declare-fun b!171742 () Bool)

(declare-fun res!77671 () Bool)

(assert (=> b!171742 (=> (not res!77671) (not e!104094))))

(declare-fun apply!424 (TokenValueInjection!862 BalanceConc!1744) TokenValue!545)

(assert (=> b!171742 (= res!77671 (= (value!19221 (_1!1630 (get!801 lt!54473))) (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54473)))))))))

(declare-fun b!171739 () Bool)

(declare-fun res!77674 () Bool)

(assert (=> b!171739 (=> (not res!77674) (not e!104094))))

(declare-fun matchR!85 (Regex!747 List!2928) Bool)

(assert (=> b!171739 (= res!77674 (matchR!85 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473)))) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))))))

(declare-fun d!42895 () Bool)

(assert (=> d!42895 e!104093))

(declare-fun res!77670 () Bool)

(assert (=> d!42895 (=> res!77670 e!104093)))

(assert (=> d!42895 (= res!77670 (isEmpty!1257 lt!54473))))

(assert (=> d!42895 (= lt!54473 e!104092)))

(declare-fun c!33958 () Bool)

(assert (=> d!42895 (= c!33958 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!54470 () Unit!2548)

(declare-fun lt!54474 () Unit!2548)

(assert (=> d!42895 (= lt!54470 lt!54474)))

(assert (=> d!42895 (isPrefix!230 lt!54115 lt!54115)))

(assert (=> d!42895 (= lt!54474 (lemmaIsPrefixRefl!138 lt!54115 lt!54115))))

(assert (=> d!42895 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!42895 (= (maxPrefix!139 thiss!17480 rules!1920 lt!54115) lt!54473)))

(declare-fun b!171743 () Bool)

(declare-fun res!77668 () Bool)

(assert (=> b!171743 (=> (not res!77668) (not e!104094))))

(assert (=> b!171743 (= res!77668 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))) (_2!1630 (get!801 lt!54473))) lt!54115))))

(declare-fun b!171744 () Bool)

(declare-fun res!77672 () Bool)

(assert (=> b!171744 (=> (not res!77672) (not e!104094))))

(assert (=> b!171744 (= res!77672 (= (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))) (originalCharacters!566 (_1!1630 (get!801 lt!54473)))))))

(assert (= (and d!42895 c!33958) b!171737))

(assert (= (and d!42895 (not c!33958)) b!171736))

(assert (= (or b!171737 b!171736) bm!7559))

(assert (= (and d!42895 (not res!77670)) b!171741))

(assert (= (and b!171741 res!77673) b!171744))

(assert (= (and b!171744 res!77672) b!171738))

(assert (= (and b!171738 res!77669) b!171743))

(assert (= (and b!171743 res!77668) b!171742))

(assert (= (and b!171742 res!77671) b!171739))

(assert (= (and b!171739 res!77674) b!171740))

(declare-fun m!168177 () Bool)

(assert (=> b!171744 m!168177))

(declare-fun m!168179 () Bool)

(assert (=> b!171744 m!168179))

(assert (=> b!171744 m!168179))

(declare-fun m!168181 () Bool)

(assert (=> b!171744 m!168181))

(assert (=> b!171739 m!168177))

(assert (=> b!171739 m!168179))

(assert (=> b!171739 m!168179))

(assert (=> b!171739 m!168181))

(assert (=> b!171739 m!168181))

(declare-fun m!168183 () Bool)

(assert (=> b!171739 m!168183))

(assert (=> b!171743 m!168177))

(assert (=> b!171743 m!168179))

(assert (=> b!171743 m!168179))

(assert (=> b!171743 m!168181))

(assert (=> b!171743 m!168181))

(declare-fun m!168185 () Bool)

(assert (=> b!171743 m!168185))

(declare-fun m!168187 () Bool)

(assert (=> b!171741 m!168187))

(declare-fun m!168189 () Bool)

(assert (=> bm!7559 m!168189))

(assert (=> b!171742 m!168177))

(declare-fun m!168191 () Bool)

(assert (=> b!171742 m!168191))

(assert (=> b!171742 m!168191))

(declare-fun m!168193 () Bool)

(assert (=> b!171742 m!168193))

(assert (=> b!171738 m!168177))

(declare-fun m!168195 () Bool)

(assert (=> b!171738 m!168195))

(assert (=> b!171738 m!167393))

(assert (=> b!171740 m!168177))

(declare-fun m!168197 () Bool)

(assert (=> b!171740 m!168197))

(declare-fun m!168199 () Bool)

(assert (=> d!42895 m!168199))

(declare-fun m!168201 () Bool)

(assert (=> d!42895 m!168201))

(declare-fun m!168203 () Bool)

(assert (=> d!42895 m!168203))

(assert (=> d!42895 m!167263))

(declare-fun m!168205 () Bool)

(assert (=> b!171736 m!168205))

(assert (=> b!171047 d!42895))

(declare-fun b!171758 () Bool)

(declare-fun b_free!6629 () Bool)

(declare-fun b_next!6629 () Bool)

(assert (=> b!171758 (= b_free!6629 (not b_next!6629))))

(declare-fun tp!84451 () Bool)

(declare-fun b_and!11301 () Bool)

(assert (=> b!171758 (= tp!84451 b_and!11301)))

(declare-fun b_free!6631 () Bool)

(declare-fun b_next!6631 () Bool)

(assert (=> b!171758 (= b_free!6631 (not b_next!6631))))

(declare-fun t!27190 () Bool)

(declare-fun tb!6733 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27190) tb!6733))

(declare-fun result!9450 () Bool)

(assert (= result!9450 result!9412))

(assert (=> b!171188 t!27190))

(declare-fun tb!6735 () Bool)

(declare-fun t!27192 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27192) tb!6735))

(declare-fun result!9452 () Bool)

(assert (= result!9452 result!9426))

(assert (=> d!42767 t!27192))

(assert (=> d!42771 t!27190))

(assert (=> b!171494 t!27192))

(declare-fun tp!84448 () Bool)

(declare-fun b_and!11303 () Bool)

(assert (=> b!171758 (= tp!84448 (and (=> t!27190 result!9450) (=> t!27192 result!9452) b_and!11303))))

(declare-fun e!104109 () Bool)

(assert (=> b!171758 (= e!104109 (and tp!84451 tp!84448))))

(declare-fun b!171756 () Bool)

(declare-fun e!104108 () Bool)

(declare-fun e!104107 () Bool)

(declare-fun tp!84450 () Bool)

(assert (=> b!171756 (= e!104107 (and (inv!21 (value!19221 (h!8317 (t!27132 tokens!465)))) e!104108 tp!84450))))

(declare-fun e!104111 () Bool)

(declare-fun b!171755 () Bool)

(declare-fun tp!84449 () Bool)

(assert (=> b!171755 (= e!104111 (and (inv!3743 (h!8317 (t!27132 tokens!465))) e!104107 tp!84449))))

(assert (=> b!171061 (= tp!84366 e!104111)))

(declare-fun tp!84452 () Bool)

(declare-fun b!171757 () Bool)

(assert (=> b!171757 (= e!104108 (and tp!84452 (inv!3740 (tag!701 (rule!1030 (h!8317 (t!27132 tokens!465))))) (inv!3744 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) e!104109))))

(assert (= b!171757 b!171758))

(assert (= b!171756 b!171757))

(assert (= b!171755 b!171756))

(assert (= (and b!171061 ((_ is Cons!2920) (t!27132 tokens!465))) b!171755))

(declare-fun m!168207 () Bool)

(assert (=> b!171756 m!168207))

(declare-fun m!168209 () Bool)

(assert (=> b!171755 m!168209))

(declare-fun m!168211 () Bool)

(assert (=> b!171757 m!168211))

(declare-fun m!168213 () Bool)

(assert (=> b!171757 m!168213))

(declare-fun b!171763 () Bool)

(declare-fun e!104115 () Bool)

(declare-fun tp_is_empty!1659 () Bool)

(declare-fun tp!84455 () Bool)

(assert (=> b!171763 (= e!104115 (and tp_is_empty!1659 tp!84455))))

(assert (=> b!171052 (= tp!84369 e!104115)))

(assert (= (and b!171052 ((_ is Cons!2918) (originalCharacters!566 separatorToken!170))) b!171763))

(declare-fun b!171775 () Bool)

(declare-fun e!104118 () Bool)

(declare-fun tp!84466 () Bool)

(declare-fun tp!84469 () Bool)

(assert (=> b!171775 (= e!104118 (and tp!84466 tp!84469))))

(declare-fun b!171777 () Bool)

(declare-fun tp!84467 () Bool)

(declare-fun tp!84470 () Bool)

(assert (=> b!171777 (= e!104118 (and tp!84467 tp!84470))))

(declare-fun b!171776 () Bool)

(declare-fun tp!84468 () Bool)

(assert (=> b!171776 (= e!104118 tp!84468)))

(declare-fun b!171774 () Bool)

(assert (=> b!171774 (= e!104118 tp_is_empty!1659)))

(assert (=> b!171051 (= tp!84364 e!104118)))

(assert (= (and b!171051 ((_ is ElementMatch!747) (regex!523 (h!8316 rules!1920)))) b!171774))

(assert (= (and b!171051 ((_ is Concat!1293) (regex!523 (h!8316 rules!1920)))) b!171775))

(assert (= (and b!171051 ((_ is Star!747) (regex!523 (h!8316 rules!1920)))) b!171776))

(assert (= (and b!171051 ((_ is Union!747) (regex!523 (h!8316 rules!1920)))) b!171777))

(declare-fun b!171780 () Bool)

(declare-fun e!104121 () Bool)

(assert (=> b!171780 (= e!104121 true)))

(declare-fun b!171779 () Bool)

(declare-fun e!104120 () Bool)

(assert (=> b!171779 (= e!104120 e!104121)))

(declare-fun b!171778 () Bool)

(declare-fun e!104119 () Bool)

(assert (=> b!171778 (= e!104119 e!104120)))

(assert (=> b!171072 e!104119))

(assert (= b!171779 b!171780))

(assert (= b!171778 b!171779))

(assert (= (and b!171072 ((_ is Cons!2919) (t!27131 rules!1920))) b!171778))

(assert (=> b!171780 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4892))))

(assert (=> b!171780 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4892))))

(declare-fun b!171791 () Bool)

(declare-fun b_free!6633 () Bool)

(declare-fun b_next!6633 () Bool)

(assert (=> b!171791 (= b_free!6633 (not b_next!6633))))

(declare-fun tp!84481 () Bool)

(declare-fun b_and!11305 () Bool)

(assert (=> b!171791 (= tp!84481 b_and!11305)))

(declare-fun b_free!6635 () Bool)

(declare-fun b_next!6635 () Bool)

(assert (=> b!171791 (= b_free!6635 (not b_next!6635))))

(declare-fun t!27195 () Bool)

(declare-fun tb!6737 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27195) tb!6737))

(declare-fun result!9460 () Bool)

(assert (= result!9460 result!9412))

(assert (=> b!171188 t!27195))

(declare-fun tb!6739 () Bool)

(declare-fun t!27197 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27197) tb!6739))

(declare-fun result!9462 () Bool)

(assert (= result!9462 result!9426))

(assert (=> d!42767 t!27197))

(assert (=> d!42771 t!27195))

(assert (=> b!171494 t!27197))

(declare-fun tp!84480 () Bool)

(declare-fun b_and!11307 () Bool)

(assert (=> b!171791 (= tp!84480 (and (=> t!27195 result!9460) (=> t!27197 result!9462) b_and!11307))))

(declare-fun e!104130 () Bool)

(assert (=> b!171791 (= e!104130 (and tp!84481 tp!84480))))

(declare-fun tp!84482 () Bool)

(declare-fun e!104132 () Bool)

(declare-fun b!171790 () Bool)

(assert (=> b!171790 (= e!104132 (and tp!84482 (inv!3740 (tag!701 (h!8316 (t!27131 rules!1920)))) (inv!3744 (transformation!523 (h!8316 (t!27131 rules!1920)))) e!104130))))

(declare-fun b!171789 () Bool)

(declare-fun e!104131 () Bool)

(declare-fun tp!84479 () Bool)

(assert (=> b!171789 (= e!104131 (and e!104132 tp!84479))))

(assert (=> b!171054 (= tp!84363 e!104131)))

(assert (= b!171790 b!171791))

(assert (= b!171789 b!171790))

(assert (= (and b!171054 ((_ is Cons!2919) (t!27131 rules!1920))) b!171789))

(declare-fun m!168215 () Bool)

(assert (=> b!171790 m!168215))

(declare-fun m!168217 () Bool)

(assert (=> b!171790 m!168217))

(declare-fun b!171793 () Bool)

(declare-fun e!104134 () Bool)

(declare-fun tp!84483 () Bool)

(declare-fun tp!84486 () Bool)

(assert (=> b!171793 (= e!104134 (and tp!84483 tp!84486))))

(declare-fun b!171795 () Bool)

(declare-fun tp!84484 () Bool)

(declare-fun tp!84487 () Bool)

(assert (=> b!171795 (= e!104134 (and tp!84484 tp!84487))))

(declare-fun b!171794 () Bool)

(declare-fun tp!84485 () Bool)

(assert (=> b!171794 (= e!104134 tp!84485)))

(declare-fun b!171792 () Bool)

(assert (=> b!171792 (= e!104134 tp_is_empty!1659)))

(assert (=> b!171057 (= tp!84373 e!104134)))

(assert (= (and b!171057 ((_ is ElementMatch!747) (regex!523 (rule!1030 (h!8317 tokens!465))))) b!171792))

(assert (= (and b!171057 ((_ is Concat!1293) (regex!523 (rule!1030 (h!8317 tokens!465))))) b!171793))

(assert (= (and b!171057 ((_ is Star!747) (regex!523 (rule!1030 (h!8317 tokens!465))))) b!171794))

(assert (= (and b!171057 ((_ is Union!747) (regex!523 (rule!1030 (h!8317 tokens!465))))) b!171795))

(declare-fun b!171797 () Bool)

(declare-fun e!104135 () Bool)

(declare-fun tp!84488 () Bool)

(declare-fun tp!84491 () Bool)

(assert (=> b!171797 (= e!104135 (and tp!84488 tp!84491))))

(declare-fun b!171799 () Bool)

(declare-fun tp!84489 () Bool)

(declare-fun tp!84492 () Bool)

(assert (=> b!171799 (= e!104135 (and tp!84489 tp!84492))))

(declare-fun b!171798 () Bool)

(declare-fun tp!84490 () Bool)

(assert (=> b!171798 (= e!104135 tp!84490)))

(declare-fun b!171796 () Bool)

(assert (=> b!171796 (= e!104135 tp_is_empty!1659)))

(assert (=> b!171046 (= tp!84367 e!104135)))

(assert (= (and b!171046 ((_ is ElementMatch!747) (regex!523 (rule!1030 separatorToken!170)))) b!171796))

(assert (= (and b!171046 ((_ is Concat!1293) (regex!523 (rule!1030 separatorToken!170)))) b!171797))

(assert (= (and b!171046 ((_ is Star!747) (regex!523 (rule!1030 separatorToken!170)))) b!171798))

(assert (= (and b!171046 ((_ is Union!747) (regex!523 (rule!1030 separatorToken!170)))) b!171799))

(declare-fun b!171800 () Bool)

(declare-fun e!104136 () Bool)

(declare-fun tp!84493 () Bool)

(assert (=> b!171800 (= e!104136 (and tp_is_empty!1659 tp!84493))))

(assert (=> b!171037 (= tp!84368 e!104136)))

(assert (= (and b!171037 ((_ is Cons!2918) (originalCharacters!566 (h!8317 tokens!465)))) b!171800))

(declare-fun b_lambda!3895 () Bool)

(assert (= b_lambda!3875 (or b!171062 b_lambda!3895)))

(declare-fun bs!16701 () Bool)

(declare-fun d!42897 () Bool)

(assert (= bs!16701 (and d!42897 b!171062)))

(assert (=> bs!16701 (= (dynLambda!1111 lambda!4891 (h!8317 tokens!465)) (not (isSeparator!523 (rule!1030 (h!8317 tokens!465)))))))

(assert (=> b!171435 d!42897))

(declare-fun b_lambda!3897 () Bool)

(assert (= b_lambda!3871 (or (and b!171758 b_free!6631 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) (and b!171041 b_free!6619 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) (and b!171058 b_free!6615) (and b!171791 b_free!6635 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) (and b!171036 b_free!6611 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) b_lambda!3897)))

(declare-fun b_lambda!3899 () Bool)

(assert (= b_lambda!3877 (or (and b!171758 b_free!6631 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) (and b!171041 b_free!6619 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) (and b!171058 b_free!6615) (and b!171791 b_free!6635 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) (and b!171036 b_free!6611 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))))) b_lambda!3899)))

(declare-fun b_lambda!3901 () Bool)

(assert (= b_lambda!3861 (or b!171060 b_lambda!3901)))

(declare-fun bs!16702 () Bool)

(declare-fun d!42899 () Bool)

(assert (= bs!16702 (and d!42899 b!171060)))

(assert (=> bs!16702 (= (dynLambda!1111 lambda!4892 (h!8317 tokens!465)) (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 tokens!465)))))

(assert (=> bs!16702 m!167175))

(assert (=> d!42701 d!42899))

(declare-fun b_lambda!3903 () Bool)

(assert (= b_lambda!3873 (or (and b!171758 b_free!6631 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (and b!171058 b_free!6615 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (and b!171791 b_free!6635 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (and b!171041 b_free!6619) (and b!171036 b_free!6611 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) b_lambda!3903)))

(declare-fun b_lambda!3905 () Bool)

(assert (= b_lambda!3863 (or (and b!171758 b_free!6631 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (and b!171058 b_free!6615 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (and b!171791 b_free!6635 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (and b!171041 b_free!6619) (and b!171036 b_free!6611 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) b_lambda!3905)))

(check-sat (not b!171176) (not b!171742) (not b!171743) (not b_next!6631) (not b!171763) (not d!42699) (not b!171205) (not b!171740) (not bm!7559) (not b!171494) (not d!42721) (not b!171382) (not b!171790) (not d!42715) (not d!42827) (not b!171739) (not b_lambda!3903) (not b!171442) (not b!171778) (not b!171180) (not b!171178) (not b_next!6617) (not b!171430) (not b!171398) (not b_lambda!3897) (not b!171565) (not d!42829) (not d!42887) (not b!171579) b_and!11305 (not b!171141) (not b!171427) (not b!171425) (not b!171584) (not b!171798) (not bm!7478) (not bs!16702) (not b!171513) (not b!171534) (not b_lambda!3905) b_and!11233 (not b!171555) (not b!171144) (not d!42723) (not b!171399) (not b_next!6619) (not b_lambda!3895) (not d!42779) (not bm!7476) (not b_next!6609) (not b!171138) (not d!42705) (not b_next!6633) (not b!171139) (not d!42801) (not d!42851) b_and!11307 (not b!171508) (not b!171789) (not b!171797) (not b!171532) (not bm!7531) (not b!171410) (not b!171687) (not b_lambda!3901) (not d!42815) (not b_next!6611) (not d!42821) (not d!42777) (not b!171563) (not b!171179) (not b_lambda!3899) (not b!171498) (not d!42701) (not d!42773) (not d!42831) (not b!171777) b_and!11285 (not b!171406) (not b!171499) (not b!171492) b_and!11283 (not d!42795) (not b!171311) (not b!171194) (not b_next!6635) (not b!171309) (not tb!6719) (not b!171312) (not d!42859) (not b!171587) (not b!171393) (not d!42769) (not d!42823) (not d!42717) (not bm!7556) (not b!171504) (not bm!7533) (not b!171441) b_and!11301 (not d!42679) (not bm!7507) (not b!171391) (not b!171518) (not b!171387) (not b!171744) (not b!171502) (not b!171304) (not bm!7505) (not b!171799) (not b!171495) (not d!42893) (not d!42775) (not b!171755) (not d!42895) (not b_next!6615) (not b!171506) (not bm!7529) (not b!171516) (not b!171188) (not bm!7509) (not b!171389) (not b!171776) (not b!171510) (not b!171396) (not b!171585) (not b!171507) (not b!171738) (not b!171411) (not b!171800) (not d!42703) b_and!11237 (not b!171147) (not d!42789) (not d!42863) (not b!171567) (not bm!7525) (not bm!7477) (not b!171736) (not d!42783) (not d!42781) (not b!171140) (not b!171757) (not b!171424) (not d!42751) (not bm!7532) (not b!171307) (not tb!6707) (not b!171390) (not b!171568) (not b!171756) (not b!171491) (not d!42677) (not b!171493) (not d!42767) (not b!171793) (not b!171403) (not d!42785) (not b!171436) b_and!11303 (not bm!7527) (not b!171189) (not b!171520) tp_is_empty!1659 (not d!42853) (not b!171566) (not d!42833) (not b!171521) (not b!171402) (not b_next!6613) (not b!171688) (not d!42771) (not b!171794) (not b!171775) (not b!171137) (not b!171204) (not b!171407) b_and!11241 (not b!171142) (not bm!7555) (not b!171795) (not d!42813) (not b_next!6629) (not bm!7452) (not b!171385) (not b!171741) (not b!171711) b_and!11281 (not d!42787))
(check-sat (not b_next!6631) (not b_next!6617) b_and!11305 b_and!11233 (not b_next!6611) b_and!11285 b_and!11301 (not b_next!6615) b_and!11237 b_and!11303 (not b_next!6613) b_and!11241 (not b_next!6629) b_and!11281 (not b_next!6619) (not b_next!6609) (not b_next!6633) b_and!11307 b_and!11283 (not b_next!6635))
(get-model)

(declare-fun d!42901 () Bool)

(declare-fun lt!54477 () Token!790)

(assert (=> d!42901 (= lt!54477 (apply!422 (list!1064 lt!54114) 0))))

(declare-fun apply!425 (Conc!869 Int) Token!790)

(assert (=> d!42901 (= lt!54477 (apply!425 (c!33818 lt!54114) 0))))

(declare-fun e!104139 () Bool)

(assert (=> d!42901 e!104139))

(declare-fun res!77686 () Bool)

(assert (=> d!42901 (=> (not res!77686) (not e!104139))))

(assert (=> d!42901 (= res!77686 (<= 0 0))))

(assert (=> d!42901 (= (apply!423 lt!54114 0) lt!54477)))

(declare-fun b!171803 () Bool)

(assert (=> b!171803 (= e!104139 (< 0 (size!2416 lt!54114)))))

(assert (= (and d!42901 res!77686) b!171803))

(assert (=> d!42901 m!167817))

(assert (=> d!42901 m!167817))

(declare-fun m!168219 () Bool)

(assert (=> d!42901 m!168219))

(declare-fun m!168221 () Bool)

(assert (=> d!42901 m!168221))

(assert (=> b!171803 m!167857))

(assert (=> bm!7529 d!42901))

(declare-fun d!42903 () Bool)

(assert (=> d!42903 (= (isDefined!172 lt!54146) (not (isEmpty!1252 lt!54146)))))

(declare-fun bs!16703 () Bool)

(assert (= bs!16703 d!42903))

(declare-fun m!168223 () Bool)

(assert (=> bs!16703 m!168223))

(assert (=> b!171141 d!42903))

(declare-fun b!171804 () Bool)

(declare-fun e!104141 () List!2928)

(assert (=> b!171804 (= e!104141 lt!54225)))

(declare-fun b!171807 () Bool)

(declare-fun e!104140 () Bool)

(declare-fun lt!54478 () List!2928)

(assert (=> b!171807 (= e!104140 (or (not (= lt!54225 Nil!2918)) (= lt!54478 call!7480)))))

(declare-fun d!42905 () Bool)

(assert (=> d!42905 e!104140))

(declare-fun res!77687 () Bool)

(assert (=> d!42905 (=> (not res!77687) (not e!104140))))

(assert (=> d!42905 (= res!77687 (= (content!400 lt!54478) ((_ map or) (content!400 call!7480) (content!400 lt!54225))))))

(assert (=> d!42905 (= lt!54478 e!104141)))

(declare-fun c!33959 () Bool)

(assert (=> d!42905 (= c!33959 ((_ is Nil!2918) call!7480))))

(assert (=> d!42905 (= (++!670 call!7480 lt!54225) lt!54478)))

(declare-fun b!171806 () Bool)

(declare-fun res!77688 () Bool)

(assert (=> b!171806 (=> (not res!77688) (not e!104140))))

(assert (=> b!171806 (= res!77688 (= (size!2417 lt!54478) (+ (size!2417 call!7480) (size!2417 lt!54225))))))

(declare-fun b!171805 () Bool)

(assert (=> b!171805 (= e!104141 (Cons!2918 (h!8315 call!7480) (++!670 (t!27130 call!7480) lt!54225)))))

(assert (= (and d!42905 c!33959) b!171804))

(assert (= (and d!42905 (not c!33959)) b!171805))

(assert (= (and d!42905 res!77687) b!171806))

(assert (= (and b!171806 res!77688) b!171807))

(declare-fun m!168225 () Bool)

(assert (=> d!42905 m!168225))

(declare-fun m!168227 () Bool)

(assert (=> d!42905 m!168227))

(declare-fun m!168229 () Bool)

(assert (=> d!42905 m!168229))

(declare-fun m!168231 () Bool)

(assert (=> b!171806 m!168231))

(declare-fun m!168233 () Bool)

(assert (=> b!171806 m!168233))

(declare-fun m!168235 () Bool)

(assert (=> b!171806 m!168235))

(declare-fun m!168237 () Bool)

(assert (=> b!171805 m!168237))

(assert (=> b!171307 d!42905))

(declare-fun d!42907 () Bool)

(declare-fun res!77689 () Bool)

(declare-fun e!104142 () Bool)

(assert (=> d!42907 (=> res!77689 e!104142)))

(assert (=> d!42907 (= res!77689 ((_ is Nil!2920) (t!27132 tokens!465)))))

(assert (=> d!42907 (= (forall!573 (t!27132 tokens!465) lambda!4891) e!104142)))

(declare-fun b!171808 () Bool)

(declare-fun e!104143 () Bool)

(assert (=> b!171808 (= e!104142 e!104143)))

(declare-fun res!77690 () Bool)

(assert (=> b!171808 (=> (not res!77690) (not e!104143))))

(assert (=> b!171808 (= res!77690 (dynLambda!1111 lambda!4891 (h!8317 (t!27132 tokens!465))))))

(declare-fun b!171809 () Bool)

(assert (=> b!171809 (= e!104143 (forall!573 (t!27132 (t!27132 tokens!465)) lambda!4891))))

(assert (= (and d!42907 (not res!77689)) b!171808))

(assert (= (and b!171808 res!77690) b!171809))

(declare-fun b_lambda!3907 () Bool)

(assert (=> (not b_lambda!3907) (not b!171808)))

(declare-fun m!168239 () Bool)

(assert (=> b!171808 m!168239))

(declare-fun m!168241 () Bool)

(assert (=> b!171809 m!168241))

(assert (=> b!171436 d!42907))

(declare-fun b!171818 () Bool)

(declare-fun e!104148 () List!2928)

(assert (=> b!171818 (= e!104148 Nil!2918)))

(declare-fun d!42909 () Bool)

(declare-fun c!33964 () Bool)

(assert (=> d!42909 (= c!33964 ((_ is Empty!868) (c!33816 lt!54110)))))

(assert (=> d!42909 (= (list!1065 (c!33816 lt!54110)) e!104148)))

(declare-fun b!171819 () Bool)

(declare-fun e!104149 () List!2928)

(assert (=> b!171819 (= e!104148 e!104149)))

(declare-fun c!33965 () Bool)

(assert (=> b!171819 (= c!33965 ((_ is Leaf!1469) (c!33816 lt!54110)))))

(declare-fun b!171821 () Bool)

(assert (=> b!171821 (= e!104149 (++!670 (list!1065 (left!2232 (c!33816 lt!54110))) (list!1065 (right!2562 (c!33816 lt!54110)))))))

(declare-fun b!171820 () Bool)

(declare-fun list!1066 (IArray!1737) List!2928)

(assert (=> b!171820 (= e!104149 (list!1066 (xs!3463 (c!33816 lt!54110))))))

(assert (= (and d!42909 c!33964) b!171818))

(assert (= (and d!42909 (not c!33964)) b!171819))

(assert (= (and b!171819 c!33965) b!171820))

(assert (= (and b!171819 (not c!33965)) b!171821))

(declare-fun m!168243 () Bool)

(assert (=> b!171821 m!168243))

(declare-fun m!168245 () Bool)

(assert (=> b!171821 m!168245))

(assert (=> b!171821 m!168243))

(assert (=> b!171821 m!168245))

(declare-fun m!168247 () Bool)

(assert (=> b!171821 m!168247))

(declare-fun m!168249 () Bool)

(assert (=> b!171820 m!168249))

(assert (=> d!42827 d!42909))

(declare-fun b!171822 () Bool)

(declare-fun e!104151 () List!2928)

(assert (=> b!171822 (= e!104151 lt!54119)))

(declare-fun lt!54479 () List!2928)

(declare-fun b!171825 () Bool)

(declare-fun e!104150 () Bool)

(assert (=> b!171825 (= e!104150 (or (not (= lt!54119 Nil!2918)) (= lt!54479 (t!27130 (++!670 lt!54115 lt!54104)))))))

(declare-fun d!42911 () Bool)

(assert (=> d!42911 e!104150))

(declare-fun res!77691 () Bool)

(assert (=> d!42911 (=> (not res!77691) (not e!104150))))

(assert (=> d!42911 (= res!77691 (= (content!400 lt!54479) ((_ map or) (content!400 (t!27130 (++!670 lt!54115 lt!54104))) (content!400 lt!54119))))))

(assert (=> d!42911 (= lt!54479 e!104151)))

(declare-fun c!33966 () Bool)

(assert (=> d!42911 (= c!33966 ((_ is Nil!2918) (t!27130 (++!670 lt!54115 lt!54104))))))

(assert (=> d!42911 (= (++!670 (t!27130 (++!670 lt!54115 lt!54104)) lt!54119) lt!54479)))

(declare-fun b!171824 () Bool)

(declare-fun res!77692 () Bool)

(assert (=> b!171824 (=> (not res!77692) (not e!104150))))

(assert (=> b!171824 (= res!77692 (= (size!2417 lt!54479) (+ (size!2417 (t!27130 (++!670 lt!54115 lt!54104))) (size!2417 lt!54119))))))

(declare-fun b!171823 () Bool)

(assert (=> b!171823 (= e!104151 (Cons!2918 (h!8315 (t!27130 (++!670 lt!54115 lt!54104))) (++!670 (t!27130 (t!27130 (++!670 lt!54115 lt!54104))) lt!54119)))))

(assert (= (and d!42911 c!33966) b!171822))

(assert (= (and d!42911 (not c!33966)) b!171823))

(assert (= (and d!42911 res!77691) b!171824))

(assert (= (and b!171824 res!77692) b!171825))

(declare-fun m!168251 () Bool)

(assert (=> d!42911 m!168251))

(declare-fun m!168253 () Bool)

(assert (=> d!42911 m!168253))

(assert (=> d!42911 m!167685))

(declare-fun m!168255 () Bool)

(assert (=> b!171824 m!168255))

(declare-fun m!168257 () Bool)

(assert (=> b!171824 m!168257))

(assert (=> b!171824 m!167689))

(declare-fun m!168259 () Bool)

(assert (=> b!171823 m!168259))

(assert (=> b!171406 d!42911))

(declare-fun d!42913 () Bool)

(declare-fun lt!54482 () Int)

(declare-fun size!2418 (List!2930) Int)

(assert (=> d!42913 (= lt!54482 (size!2418 (list!1064 lt!54114)))))

(declare-fun size!2419 (Conc!869) Int)

(assert (=> d!42913 (= lt!54482 (size!2419 (c!33818 lt!54114)))))

(assert (=> d!42913 (= (size!2416 lt!54114) lt!54482)))

(declare-fun bs!16704 () Bool)

(assert (= bs!16704 d!42913))

(assert (=> bs!16704 m!167817))

(assert (=> bs!16704 m!167817))

(declare-fun m!168261 () Bool)

(assert (=> bs!16704 m!168261))

(declare-fun m!168263 () Bool)

(assert (=> bs!16704 m!168263))

(assert (=> b!171508 d!42913))

(declare-fun d!42915 () Bool)

(assert (=> d!42915 (forall!573 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) lambda!4906)))

(declare-fun lt!54485 () Unit!2548)

(declare-fun choose!1835 (List!2930 List!2930 Int) Unit!2548)

(assert (=> d!42915 (= lt!54485 (choose!1835 (list!1064 (seqFromList!424 (t!27132 tokens!465))) (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) lambda!4906))))

(assert (=> d!42915 (forall!573 (list!1064 (seqFromList!424 (t!27132 tokens!465))) lambda!4906)))

(assert (=> d!42915 (= (lemmaContentSubsetPreservesForall!33 (list!1064 (seqFromList!424 (t!27132 tokens!465))) (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) lambda!4906) lt!54485)))

(declare-fun bs!16705 () Bool)

(assert (= bs!16705 d!42915))

(assert (=> bs!16705 m!167645))

(declare-fun m!168265 () Bool)

(assert (=> bs!16705 m!168265))

(assert (=> bs!16705 m!167603))

(assert (=> bs!16705 m!167645))

(declare-fun m!168267 () Bool)

(assert (=> bs!16705 m!168267))

(assert (=> bs!16705 m!167603))

(declare-fun m!168269 () Bool)

(assert (=> bs!16705 m!168269))

(assert (=> d!42751 d!42915))

(declare-fun bs!16706 () Bool)

(declare-fun b!171831 () Bool)

(assert (= bs!16706 (and b!171831 b!171060)))

(declare-fun lambda!4927 () Int)

(assert (=> bs!16706 (= lambda!4927 lambda!4892)))

(declare-fun bs!16707 () Bool)

(assert (= bs!16707 (and b!171831 b!171309)))

(assert (=> bs!16707 (= lambda!4927 lambda!4895)))

(declare-fun bs!16708 () Bool)

(assert (= bs!16708 (and b!171831 b!171387)))

(assert (=> bs!16708 (= lambda!4927 lambda!4907)))

(declare-fun bs!16709 () Bool)

(assert (= bs!16709 (and b!171831 d!42751)))

(assert (=> bs!16709 (not (= lambda!4927 lambda!4906))))

(declare-fun bs!16710 () Bool)

(assert (= bs!16710 (and b!171831 b!171518)))

(assert (=> bs!16710 (= lambda!4927 lambda!4913)))

(declare-fun bs!16711 () Bool)

(assert (= bs!16711 (and b!171831 b!171504)))

(assert (=> bs!16711 (= lambda!4927 lambda!4912)))

(declare-fun bs!16712 () Bool)

(assert (= bs!16712 (and b!171831 b!171062)))

(assert (=> bs!16712 (not (= lambda!4927 lambda!4891))))

(declare-fun bs!16713 () Bool)

(assert (= bs!16713 (and b!171831 d!42823)))

(assert (=> bs!16713 (not (= lambda!4927 lambda!4911))))

(declare-fun bs!16714 () Bool)

(assert (= bs!16714 (and b!171831 d!42863)))

(assert (=> bs!16714 (= lambda!4927 lambda!4926)))

(declare-fun b!171836 () Bool)

(declare-fun e!104158 () Bool)

(assert (=> b!171836 (= e!104158 true)))

(declare-fun b!171835 () Bool)

(declare-fun e!104157 () Bool)

(assert (=> b!171835 (= e!104157 e!104158)))

(declare-fun b!171834 () Bool)

(declare-fun e!104156 () Bool)

(assert (=> b!171834 (= e!104156 e!104157)))

(assert (=> b!171831 e!104156))

(assert (= b!171835 b!171836))

(assert (= b!171834 b!171835))

(assert (= (and b!171831 ((_ is Cons!2919) rules!1920)) b!171834))

(assert (=> b!171836 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4927))))

(assert (=> b!171836 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4927))))

(assert (=> b!171831 true))

(declare-fun bm!7560 () Bool)

(declare-fun call!7569 () BalanceConc!1744)

(declare-fun call!7567 () BalanceConc!1744)

(assert (=> bm!7560 (= call!7569 call!7567)))

(declare-fun b!171826 () Bool)

(declare-fun e!104155 () List!2928)

(assert (=> b!171826 (= e!104155 Nil!2918)))

(assert (=> b!171826 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)))) (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0))) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!54491 () Unit!2548)

(declare-fun Unit!2566 () Unit!2548)

(assert (=> b!171826 (= lt!54491 Unit!2566)))

(declare-fun lt!54490 () Unit!2548)

(declare-fun call!7568 () List!2928)

(declare-fun lt!54488 () List!2928)

(assert (=> b!171826 (= lt!54490 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7568 lt!54488))))

(assert (=> b!171826 false))

(declare-fun lt!54486 () Unit!2548)

(declare-fun Unit!2567 () Unit!2548)

(assert (=> b!171826 (= lt!54486 Unit!2567)))

(declare-fun b!171827 () Bool)

(declare-fun c!33969 () Bool)

(declare-fun lt!54489 () Option!320)

(assert (=> b!171827 (= c!33969 (and ((_ is Some!319) lt!54489) (not (= (_1!1630 (v!13762 lt!54489)) (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0))))))))

(declare-fun e!104154 () List!2928)

(assert (=> b!171827 (= e!104154 e!104155)))

(declare-fun bm!7561 () Bool)

(declare-fun c!33967 () Bool)

(declare-fun c!33968 () Bool)

(assert (=> bm!7561 (= c!33967 c!33968)))

(declare-fun call!7565 () List!2928)

(declare-fun e!104153 () List!2928)

(assert (=> bm!7561 (= call!7565 (++!670 e!104153 (ite c!33968 lt!54488 call!7568)))))

(declare-fun b!171828 () Bool)

(assert (=> b!171828 (= e!104154 call!7565)))

(declare-fun b!171829 () Bool)

(assert (=> b!171829 (= e!104155 (++!670 call!7565 lt!54488))))

(declare-fun b!171830 () Bool)

(declare-fun e!104152 () List!2928)

(assert (=> b!171830 (= e!104152 Nil!2918)))

(assert (=> b!171831 (= e!104152 e!104154)))

(declare-fun lt!54487 () Unit!2548)

(assert (=> b!171831 (= lt!54487 (forallContained!90 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) lambda!4927 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0))))))

(assert (=> b!171831 (= lt!54488 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!171831 (= lt!54489 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)))) lt!54488)))))

(assert (=> b!171831 (= c!33968 (and ((_ is Some!319) lt!54489) (= (_1!1630 (v!13762 lt!54489)) (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)))))))

(declare-fun bm!7562 () Bool)

(assert (=> bm!7562 (= call!7567 (charsOf!178 (ite c!33968 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)) (ite c!33969 separatorToken!170 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0))))))))

(declare-fun d!42917 () Bool)

(declare-fun c!33970 () Bool)

(assert (=> d!42917 (= c!33970 ((_ is Cons!2920) (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(assert (=> d!42917 (= (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) separatorToken!170) e!104152)))

(declare-fun call!7566 () List!2928)

(declare-fun bm!7563 () Bool)

(assert (=> bm!7563 (= call!7566 (list!1061 (ite c!33968 call!7567 call!7569)))))

(declare-fun b!171832 () Bool)

(assert (=> b!171832 (= e!104153 call!7566)))

(declare-fun bm!7564 () Bool)

(assert (=> bm!7564 (= call!7568 call!7566)))

(declare-fun b!171833 () Bool)

(assert (=> b!171833 (= e!104153 (list!1061 (charsOf!178 (h!8317 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0)))))))

(assert (= (and d!42917 c!33970) b!171831))

(assert (= (and d!42917 (not c!33970)) b!171830))

(assert (= (and b!171831 c!33968) b!171828))

(assert (= (and b!171831 (not c!33968)) b!171827))

(assert (= (and b!171827 c!33969) b!171829))

(assert (= (and b!171827 (not c!33969)) b!171826))

(assert (= (or b!171829 b!171826) bm!7560))

(assert (= (or b!171829 b!171826) bm!7564))

(assert (= (or b!171828 bm!7560) bm!7562))

(assert (= (or b!171828 bm!7564) bm!7563))

(assert (= (or b!171828 b!171829) bm!7561))

(assert (= (and bm!7561 c!33967) b!171832))

(assert (= (and bm!7561 (not c!33967)) b!171833))

(declare-fun m!168271 () Bool)

(assert (=> b!171826 m!168271))

(assert (=> b!171826 m!168271))

(declare-fun m!168273 () Bool)

(assert (=> b!171826 m!168273))

(assert (=> b!171826 m!168271))

(declare-fun m!168275 () Bool)

(assert (=> b!171826 m!168275))

(declare-fun m!168277 () Bool)

(assert (=> b!171826 m!168277))

(declare-fun m!168279 () Bool)

(assert (=> bm!7562 m!168279))

(declare-fun m!168281 () Bool)

(assert (=> bm!7561 m!168281))

(declare-fun m!168283 () Bool)

(assert (=> bm!7563 m!168283))

(declare-fun m!168285 () Bool)

(assert (=> b!171829 m!168285))

(declare-fun m!168287 () Bool)

(assert (=> b!171833 m!168287))

(assert (=> b!171833 m!168287))

(declare-fun m!168289 () Bool)

(assert (=> b!171833 m!168289))

(assert (=> b!171831 m!168287))

(assert (=> b!171831 m!168289))

(declare-fun m!168291 () Bool)

(assert (=> b!171831 m!168291))

(assert (=> b!171831 m!167645))

(declare-fun m!168293 () Bool)

(assert (=> b!171831 m!168293))

(declare-fun m!168295 () Bool)

(assert (=> b!171831 m!168295))

(assert (=> b!171831 m!168287))

(assert (=> b!171831 m!168289))

(assert (=> b!171831 m!168291))

(declare-fun m!168297 () Bool)

(assert (=> b!171831 m!168297))

(assert (=> d!42751 d!42917))

(declare-fun d!42919 () Bool)

(assert (=> d!42919 (= (list!1061 lt!54315) (list!1065 (c!33816 lt!54315)))))

(declare-fun bs!16715 () Bool)

(assert (= bs!16715 d!42919))

(declare-fun m!168299 () Bool)

(assert (=> bs!16715 m!168299))

(assert (=> d!42751 d!42919))

(declare-fun d!42921 () Bool)

(declare-fun list!1067 (Conc!869) List!2930)

(assert (=> d!42921 (= (dropList!90 (seqFromList!424 (t!27132 tokens!465)) 0) (drop!143 (list!1067 (c!33818 (seqFromList!424 (t!27132 tokens!465)))) 0))))

(declare-fun bs!16716 () Bool)

(assert (= bs!16716 d!42921))

(declare-fun m!168301 () Bool)

(assert (=> bs!16716 m!168301))

(assert (=> bs!16716 m!168301))

(declare-fun m!168303 () Bool)

(assert (=> bs!16716 m!168303))

(assert (=> d!42751 d!42921))

(declare-fun d!42923 () Bool)

(declare-fun lt!54492 () Int)

(assert (=> d!42923 (= lt!54492 (size!2418 (list!1064 (seqFromList!424 (t!27132 tokens!465)))))))

(assert (=> d!42923 (= lt!54492 (size!2419 (c!33818 (seqFromList!424 (t!27132 tokens!465)))))))

(assert (=> d!42923 (= (size!2416 (seqFromList!424 (t!27132 tokens!465))) lt!54492)))

(declare-fun bs!16717 () Bool)

(assert (= bs!16717 d!42923))

(assert (=> bs!16717 m!167123))

(assert (=> bs!16717 m!167603))

(assert (=> bs!16717 m!167603))

(declare-fun m!168305 () Bool)

(assert (=> bs!16717 m!168305))

(declare-fun m!168307 () Bool)

(assert (=> bs!16717 m!168307))

(assert (=> d!42751 d!42923))

(declare-fun d!42925 () Bool)

(assert (=> d!42925 (= (list!1064 (seqFromList!424 (t!27132 tokens!465))) (list!1067 (c!33818 (seqFromList!424 (t!27132 tokens!465)))))))

(declare-fun bs!16718 () Bool)

(assert (= bs!16718 d!42925))

(assert (=> bs!16718 m!168301))

(assert (=> d!42751 d!42925))

(declare-fun d!42927 () Bool)

(assert (=> d!42927 (= (list!1061 (ite c!33864 call!7482 call!7484)) (list!1065 (c!33816 (ite c!33864 call!7482 call!7484))))))

(declare-fun bs!16719 () Bool)

(assert (= bs!16719 d!42927))

(declare-fun m!168309 () Bool)

(assert (=> bs!16719 m!168309))

(assert (=> bm!7478 d!42927))

(declare-fun d!42929 () Bool)

(declare-fun charsToInt!0 (List!2927) (_ BitVec 32))

(assert (=> d!42929 (= (inv!16 (value!19221 (h!8317 tokens!465))) (= (charsToInt!0 (text!4262 (value!19221 (h!8317 tokens!465)))) (value!19212 (value!19221 (h!8317 tokens!465)))))))

(declare-fun bs!16720 () Bool)

(assert (= bs!16720 d!42929))

(declare-fun m!168311 () Bool)

(assert (=> bs!16720 m!168311))

(assert (=> b!171587 d!42929))

(declare-fun d!42931 () Bool)

(assert (=> d!42931 (= (list!1061 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))) (list!1065 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))))

(declare-fun bs!16721 () Bool)

(assert (= bs!16721 d!42931))

(declare-fun m!168313 () Bool)

(assert (=> bs!16721 m!168313))

(assert (=> b!171188 d!42931))

(declare-fun d!42933 () Bool)

(assert (=> d!42933 (= (isEmpty!1257 lt!54118) (not ((_ is Some!319) lt!54118)))))

(assert (=> d!42893 d!42933))

(declare-fun d!42935 () Bool)

(assert (=> d!42935 (= (get!801 lt!54473) (v!13762 lt!54473))))

(assert (=> b!171742 d!42935))

(declare-fun d!42937 () Bool)

(declare-fun dynLambda!1114 (Int BalanceConc!1744) TokenValue!545)

(assert (=> d!42937 (= (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54473))))) (dynLambda!1114 (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473))))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54473))))))))

(declare-fun b_lambda!3909 () Bool)

(assert (=> (not b_lambda!3909) (not d!42937)))

(declare-fun tb!6741 () Bool)

(declare-fun t!27201 () Bool)

(assert (=> (and b!171036 (= (toValue!1186 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27201) tb!6741))

(declare-fun result!9464 () Bool)

(assert (=> tb!6741 (= result!9464 (inv!21 (dynLambda!1114 (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473))))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54473)))))))))

(declare-fun m!168315 () Bool)

(assert (=> tb!6741 m!168315))

(assert (=> d!42937 t!27201))

(declare-fun b_and!11309 () Bool)

(assert (= b_and!11233 (and (=> t!27201 result!9464) b_and!11309)))

(declare-fun t!27203 () Bool)

(declare-fun tb!6743 () Bool)

(assert (=> (and b!171758 (= (toValue!1186 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27203) tb!6743))

(declare-fun result!9468 () Bool)

(assert (= result!9468 result!9464))

(assert (=> d!42937 t!27203))

(declare-fun b_and!11311 () Bool)

(assert (= b_and!11301 (and (=> t!27203 result!9468) b_and!11311)))

(declare-fun t!27205 () Bool)

(declare-fun tb!6745 () Bool)

(assert (=> (and b!171041 (= (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27205) tb!6745))

(declare-fun result!9470 () Bool)

(assert (= result!9470 result!9464))

(assert (=> d!42937 t!27205))

(declare-fun b_and!11313 () Bool)

(assert (= b_and!11241 (and (=> t!27205 result!9470) b_and!11313)))

(declare-fun tb!6747 () Bool)

(declare-fun t!27207 () Bool)

(assert (=> (and b!171791 (= (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27207) tb!6747))

(declare-fun result!9472 () Bool)

(assert (= result!9472 result!9464))

(assert (=> d!42937 t!27207))

(declare-fun b_and!11315 () Bool)

(assert (= b_and!11305 (and (=> t!27207 result!9472) b_and!11315)))

(declare-fun t!27209 () Bool)

(declare-fun tb!6749 () Bool)

(assert (=> (and b!171058 (= (toValue!1186 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27209) tb!6749))

(declare-fun result!9474 () Bool)

(assert (= result!9474 result!9464))

(assert (=> d!42937 t!27209))

(declare-fun b_and!11317 () Bool)

(assert (= b_and!11237 (and (=> t!27209 result!9474) b_and!11317)))

(assert (=> d!42937 m!168191))

(declare-fun m!168317 () Bool)

(assert (=> d!42937 m!168317))

(assert (=> b!171742 d!42937))

(declare-fun d!42939 () Bool)

(assert (=> d!42939 (= (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54473)))) (fromListB!167 (originalCharacters!566 (_1!1630 (get!801 lt!54473)))))))

(declare-fun bs!16722 () Bool)

(assert (= bs!16722 d!42939))

(declare-fun m!168319 () Bool)

(assert (=> bs!16722 m!168319))

(assert (=> b!171742 d!42939))

(declare-fun b!171839 () Bool)

(declare-fun e!104162 () List!2928)

(assert (=> b!171839 (= e!104162 Nil!2918)))

(declare-fun d!42941 () Bool)

(declare-fun c!33971 () Bool)

(assert (=> d!42941 (= c!33971 ((_ is Empty!868) (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0))))))

(assert (=> d!42941 (= (list!1065 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0))) e!104162)))

(declare-fun b!171840 () Bool)

(declare-fun e!104163 () List!2928)

(assert (=> b!171840 (= e!104162 e!104163)))

(declare-fun c!33972 () Bool)

(assert (=> b!171840 (= c!33972 ((_ is Leaf!1469) (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0))))))

(declare-fun b!171842 () Bool)

(assert (=> b!171842 (= e!104163 (++!670 (list!1065 (left!2232 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0)))) (list!1065 (right!2562 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0))))))))

(declare-fun b!171841 () Bool)

(assert (=> b!171841 (= e!104163 (list!1066 (xs!3463 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 0)))))))

(assert (= (and d!42941 c!33971) b!171839))

(assert (= (and d!42941 (not c!33971)) b!171840))

(assert (= (and b!171840 c!33972) b!171841))

(assert (= (and b!171840 (not c!33972)) b!171842))

(declare-fun m!168321 () Bool)

(assert (=> b!171842 m!168321))

(declare-fun m!168323 () Bool)

(assert (=> b!171842 m!168323))

(assert (=> b!171842 m!168321))

(assert (=> b!171842 m!168323))

(declare-fun m!168325 () Bool)

(assert (=> b!171842 m!168325))

(declare-fun m!168327 () Bool)

(assert (=> b!171841 m!168327))

(assert (=> d!42821 d!42941))

(declare-fun d!42943 () Bool)

(declare-fun c!33975 () Bool)

(assert (=> d!42943 (= c!33975 ((_ is Nil!2918) lt!54328))))

(declare-fun e!104166 () (InoxSet C!2416))

(assert (=> d!42943 (= (content!400 lt!54328) e!104166)))

(declare-fun b!171847 () Bool)

(assert (=> b!171847 (= e!104166 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!171848 () Bool)

(assert (=> b!171848 (= e!104166 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54328) true) (content!400 (t!27130 lt!54328))))))

(assert (= (and d!42943 c!33975) b!171847))

(assert (= (and d!42943 (not c!33975)) b!171848))

(declare-fun m!168329 () Bool)

(assert (=> b!171848 m!168329))

(declare-fun m!168331 () Bool)

(assert (=> b!171848 m!168331))

(assert (=> d!42779 d!42943))

(declare-fun d!42945 () Bool)

(declare-fun c!33976 () Bool)

(assert (=> d!42945 (= c!33976 ((_ is Nil!2918) (++!670 lt!54115 lt!54104)))))

(declare-fun e!104167 () (InoxSet C!2416))

(assert (=> d!42945 (= (content!400 (++!670 lt!54115 lt!54104)) e!104167)))

(declare-fun b!171849 () Bool)

(assert (=> b!171849 (= e!104167 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!171850 () Bool)

(assert (=> b!171850 (= e!104167 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 (++!670 lt!54115 lt!54104)) true) (content!400 (t!27130 (++!670 lt!54115 lt!54104)))))))

(assert (= (and d!42945 c!33976) b!171849))

(assert (= (and d!42945 (not c!33976)) b!171850))

(declare-fun m!168333 () Bool)

(assert (=> b!171850 m!168333))

(assert (=> b!171850 m!168253))

(assert (=> d!42779 d!42945))

(declare-fun d!42947 () Bool)

(declare-fun c!33977 () Bool)

(assert (=> d!42947 (= c!33977 ((_ is Nil!2918) lt!54119))))

(declare-fun e!104168 () (InoxSet C!2416))

(assert (=> d!42947 (= (content!400 lt!54119) e!104168)))

(declare-fun b!171851 () Bool)

(assert (=> b!171851 (= e!104168 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!171852 () Bool)

(assert (=> b!171852 (= e!104168 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54119) true) (content!400 (t!27130 lt!54119))))))

(assert (= (and d!42947 c!33977) b!171851))

(assert (= (and d!42947 (not c!33977)) b!171852))

(declare-fun m!168335 () Bool)

(assert (=> b!171852 m!168335))

(declare-fun m!168337 () Bool)

(assert (=> b!171852 m!168337))

(assert (=> d!42779 d!42947))

(declare-fun d!42949 () Bool)

(declare-fun e!104171 () Bool)

(assert (=> d!42949 e!104171))

(declare-fun res!77695 () Bool)

(assert (=> d!42949 (=> (not res!77695) (not e!104171))))

(declare-fun lt!54495 () BalanceConc!1744)

(assert (=> d!42949 (= res!77695 (= (list!1061 lt!54495) (originalCharacters!566 (h!8317 tokens!465))))))

(declare-fun fromList!108 (List!2928) Conc!868)

(assert (=> d!42949 (= lt!54495 (BalanceConc!1745 (fromList!108 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!42949 (= (fromListB!167 (originalCharacters!566 (h!8317 tokens!465))) lt!54495)))

(declare-fun b!171855 () Bool)

(declare-fun isBalanced!241 (Conc!868) Bool)

(assert (=> b!171855 (= e!104171 (isBalanced!241 (fromList!108 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (= (and d!42949 res!77695) b!171855))

(declare-fun m!168339 () Bool)

(assert (=> d!42949 m!168339))

(declare-fun m!168341 () Bool)

(assert (=> d!42949 m!168341))

(assert (=> b!171855 m!168341))

(assert (=> b!171855 m!168341))

(declare-fun m!168343 () Bool)

(assert (=> b!171855 m!168343))

(assert (=> d!42699 d!42949))

(declare-fun d!42951 () Bool)

(assert (=> d!42951 (= (inv!3740 (tag!701 (rule!1030 (h!8317 (t!27132 tokens!465))))) (= (mod (str.len (value!19220 (tag!701 (rule!1030 (h!8317 (t!27132 tokens!465)))))) 2) 0))))

(assert (=> b!171757 d!42951))

(declare-fun d!42953 () Bool)

(declare-fun res!77696 () Bool)

(declare-fun e!104172 () Bool)

(assert (=> d!42953 (=> (not res!77696) (not e!104172))))

(assert (=> d!42953 (= res!77696 (semiInverseModEq!181 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))))))

(assert (=> d!42953 (= (inv!3744 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) e!104172)))

(declare-fun b!171856 () Bool)

(assert (=> b!171856 (= e!104172 (equivClasses!164 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))))))

(assert (= (and d!42953 res!77696) b!171856))

(declare-fun m!168345 () Bool)

(assert (=> d!42953 m!168345))

(declare-fun m!168347 () Bool)

(assert (=> b!171856 m!168347))

(assert (=> b!171757 d!42953))

(declare-fun d!42955 () Bool)

(assert (=> d!42955 (= (list!1061 call!7534) (list!1065 (c!33816 call!7534)))))

(declare-fun bs!16723 () Bool)

(assert (= bs!16723 d!42955))

(declare-fun m!168349 () Bool)

(assert (=> bs!16723 m!168349))

(assert (=> b!171502 d!42955))

(declare-fun d!42957 () Bool)

(declare-fun lt!54502 () BalanceConc!1744)

(assert (=> d!42957 (= (list!1061 lt!54502) (printListTailRec!58 thiss!17480 (dropList!90 (singletonSeq!75 call!7532) 0) (list!1061 (BalanceConc!1745 Empty!868))))))

(declare-fun e!104174 () BalanceConc!1744)

(assert (=> d!42957 (= lt!54502 e!104174)))

(declare-fun c!33979 () Bool)

(assert (=> d!42957 (= c!33979 (>= 0 (size!2416 (singletonSeq!75 call!7532))))))

(declare-fun e!104173 () Bool)

(assert (=> d!42957 e!104173))

(declare-fun res!77697 () Bool)

(assert (=> d!42957 (=> (not res!77697) (not e!104173))))

(assert (=> d!42957 (= res!77697 (>= 0 0))))

(assert (=> d!42957 (= (printTailRec!103 thiss!17480 (singletonSeq!75 call!7532) 0 (BalanceConc!1745 Empty!868)) lt!54502)))

(declare-fun b!171857 () Bool)

(assert (=> b!171857 (= e!104173 (<= 0 (size!2416 (singletonSeq!75 call!7532))))))

(declare-fun b!171858 () Bool)

(assert (=> b!171858 (= e!104174 (BalanceConc!1745 Empty!868))))

(declare-fun b!171859 () Bool)

(assert (=> b!171859 (= e!104174 (printTailRec!103 thiss!17480 (singletonSeq!75 call!7532) (+ 0 1) (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 (singletonSeq!75 call!7532) 0)))))))

(declare-fun lt!54500 () List!2930)

(assert (=> b!171859 (= lt!54500 (list!1064 (singletonSeq!75 call!7532)))))

(declare-fun lt!54497 () Unit!2548)

(assert (=> b!171859 (= lt!54497 (lemmaDropApply!130 lt!54500 0))))

(assert (=> b!171859 (= (head!604 (drop!143 lt!54500 0)) (apply!422 lt!54500 0))))

(declare-fun lt!54499 () Unit!2548)

(assert (=> b!171859 (= lt!54499 lt!54497)))

(declare-fun lt!54496 () List!2930)

(assert (=> b!171859 (= lt!54496 (list!1064 (singletonSeq!75 call!7532)))))

(declare-fun lt!54501 () Unit!2548)

(assert (=> b!171859 (= lt!54501 (lemmaDropTail!122 lt!54496 0))))

(assert (=> b!171859 (= (tail!344 (drop!143 lt!54496 0)) (drop!143 lt!54496 (+ 0 1)))))

(declare-fun lt!54498 () Unit!2548)

(assert (=> b!171859 (= lt!54498 lt!54501)))

(assert (= (and d!42957 res!77697) b!171857))

(assert (= (and d!42957 c!33979) b!171858))

(assert (= (and d!42957 (not c!33979)) b!171859))

(declare-fun m!168351 () Bool)

(assert (=> d!42957 m!168351))

(assert (=> d!42957 m!167847))

(declare-fun m!168353 () Bool)

(assert (=> d!42957 m!168353))

(declare-fun m!168355 () Bool)

(assert (=> d!42957 m!168355))

(assert (=> d!42957 m!167907))

(declare-fun m!168357 () Bool)

(assert (=> d!42957 m!168357))

(assert (=> d!42957 m!167907))

(assert (=> d!42957 m!167847))

(assert (=> d!42957 m!168355))

(assert (=> b!171857 m!167847))

(assert (=> b!171857 m!168353))

(declare-fun m!168359 () Bool)

(assert (=> b!171859 m!168359))

(declare-fun m!168361 () Bool)

(assert (=> b!171859 m!168361))

(declare-fun m!168363 () Bool)

(assert (=> b!171859 m!168363))

(declare-fun m!168365 () Bool)

(assert (=> b!171859 m!168365))

(assert (=> b!171859 m!167847))

(assert (=> b!171859 m!168363))

(assert (=> b!171859 m!167847))

(declare-fun m!168367 () Bool)

(assert (=> b!171859 m!168367))

(declare-fun m!168369 () Bool)

(assert (=> b!171859 m!168369))

(declare-fun m!168371 () Bool)

(assert (=> b!171859 m!168371))

(assert (=> b!171859 m!168369))

(declare-fun m!168373 () Bool)

(assert (=> b!171859 m!168373))

(assert (=> b!171859 m!168359))

(declare-fun m!168375 () Bool)

(assert (=> b!171859 m!168375))

(assert (=> b!171859 m!168365))

(declare-fun m!168377 () Bool)

(assert (=> b!171859 m!168377))

(assert (=> b!171859 m!167847))

(assert (=> b!171859 m!168377))

(declare-fun m!168379 () Bool)

(assert (=> b!171859 m!168379))

(declare-fun m!168381 () Bool)

(assert (=> b!171859 m!168381))

(declare-fun m!168383 () Bool)

(assert (=> b!171859 m!168383))

(assert (=> b!171502 d!42957))

(declare-fun d!42959 () Bool)

(declare-fun e!104175 () Bool)

(assert (=> d!42959 e!104175))

(declare-fun res!77698 () Bool)

(assert (=> d!42959 (=> (not res!77698) (not e!104175))))

(declare-fun lt!54503 () BalanceConc!1746)

(assert (=> d!42959 (= res!77698 (= (list!1064 lt!54503) (Cons!2920 call!7532 Nil!2920)))))

(assert (=> d!42959 (= lt!54503 (singleton!39 call!7532))))

(assert (=> d!42959 (= (singletonSeq!75 call!7532) lt!54503)))

(declare-fun b!171860 () Bool)

(assert (=> b!171860 (= e!104175 (isBalanced!240 (c!33818 lt!54503)))))

(assert (= (and d!42959 res!77698) b!171860))

(declare-fun m!168385 () Bool)

(assert (=> d!42959 m!168385))

(declare-fun m!168387 () Bool)

(assert (=> d!42959 m!168387))

(declare-fun m!168389 () Bool)

(assert (=> b!171860 m!168389))

(assert (=> b!171502 d!42959))

(declare-fun e!104186 () Bool)

(declare-fun b!171878 () Bool)

(declare-fun lt!54546 () Token!790)

(declare-datatypes ((Option!322 0))(
  ( (None!321) (Some!321 (v!13774 Rule!846)) )
))
(declare-fun get!804 (Option!322) Rule!846)

(declare-fun getRuleFromTag!23 (LexerInterface!409 List!2929 String!3805) Option!322)

(assert (=> b!171878 (= e!104186 (= (rule!1030 lt!54546) (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54546))))))))

(declare-fun b!171877 () Bool)

(declare-fun res!77713 () Bool)

(assert (=> b!171877 (=> (not res!77713) (not e!104186))))

(assert (=> b!171877 (= res!77713 (matchR!85 (regex!523 (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54546))))) (list!1061 (charsOf!178 lt!54546))))))

(declare-fun b!171880 () Bool)

(declare-fun e!104187 () Unit!2548)

(declare-fun Unit!2568 () Unit!2548)

(assert (=> b!171880 (= e!104187 Unit!2568)))

(declare-fun b!171879 () Bool)

(declare-fun Unit!2569 () Unit!2548)

(assert (=> b!171879 (= e!104187 Unit!2569)))

(declare-fun lt!54553 () List!2928)

(assert (=> b!171879 (= lt!54553 (++!670 (list!1061 call!7534) (list!1061 lt!54362)))))

(declare-fun lt!54541 () Unit!2548)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!23 (LexerInterface!409 Rule!846 List!2929 List!2928) Unit!2548)

(assert (=> b!171879 (= lt!54541 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!23 thiss!17480 (rule!1030 lt!54546) rules!1920 lt!54553))))

(assert (=> b!171879 (isEmpty!1257 (maxPrefixOneRule!73 thiss!17480 (rule!1030 lt!54546) lt!54553))))

(declare-fun lt!54550 () Unit!2548)

(assert (=> b!171879 (= lt!54550 lt!54541)))

(declare-fun lt!54555 () List!2928)

(assert (=> b!171879 (= lt!54555 (list!1061 (charsOf!178 lt!54546)))))

(declare-fun lt!54551 () Unit!2548)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!23 (LexerInterface!409 Rule!846 List!2928 List!2928) Unit!2548)

(assert (=> b!171879 (= lt!54551 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!23 thiss!17480 (rule!1030 lt!54546) lt!54555 (++!670 (list!1061 call!7534) (list!1061 lt!54362))))))

(assert (=> b!171879 (not (matchR!85 (regex!523 (rule!1030 lt!54546)) lt!54555))))

(declare-fun lt!54549 () Unit!2548)

(assert (=> b!171879 (= lt!54549 lt!54551)))

(assert (=> b!171879 false))

(declare-fun d!42961 () Bool)

(assert (=> d!42961 (isDefined!171 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 call!7534) (list!1061 lt!54362))))))

(declare-fun lt!54554 () Unit!2548)

(assert (=> d!42961 (= lt!54554 e!104187)))

(declare-fun c!33982 () Bool)

(assert (=> d!42961 (= c!33982 (isEmpty!1257 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 call!7534) (list!1061 lt!54362)))))))

(declare-fun lt!54544 () Unit!2548)

(declare-fun lt!54552 () Unit!2548)

(assert (=> d!42961 (= lt!54544 lt!54552)))

(assert (=> d!42961 e!104186))

(declare-fun res!77714 () Bool)

(assert (=> d!42961 (=> (not res!77714) (not e!104186))))

(declare-fun isDefined!173 (Option!322) Bool)

(assert (=> d!42961 (= res!77714 (isDefined!173 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54546)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!23 (LexerInterface!409 List!2929 List!2928 Token!790) Unit!2548)

(assert (=> d!42961 (= lt!54552 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!23 thiss!17480 rules!1920 (list!1061 call!7534) lt!54546))))

(declare-fun lt!54542 () Unit!2548)

(declare-fun lt!54548 () Unit!2548)

(assert (=> d!42961 (= lt!54542 lt!54548)))

(declare-fun lt!54556 () List!2928)

(assert (=> d!42961 (isPrefix!230 lt!54556 (++!670 (list!1061 call!7534) (list!1061 lt!54362)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!23 (List!2928 List!2928 List!2928) Unit!2548)

(assert (=> d!42961 (= lt!54548 (lemmaPrefixStaysPrefixWhenAddingToSuffix!23 lt!54556 (list!1061 call!7534) (list!1061 lt!54362)))))

(assert (=> d!42961 (= lt!54556 (list!1061 (charsOf!178 lt!54546)))))

(declare-fun lt!54540 () Unit!2548)

(declare-fun lt!54545 () Unit!2548)

(assert (=> d!42961 (= lt!54540 lt!54545)))

(declare-fun lt!54547 () List!2928)

(declare-fun lt!54543 () List!2928)

(assert (=> d!42961 (isPrefix!230 lt!54547 (++!670 lt!54547 lt!54543))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!127 (List!2928 List!2928) Unit!2548)

(assert (=> d!42961 (= lt!54545 (lemmaConcatTwoListThenFirstIsPrefix!127 lt!54547 lt!54543))))

(assert (=> d!42961 (= lt!54543 (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 call!7534)))))))

(assert (=> d!42961 (= lt!54547 (list!1061 (charsOf!178 lt!54546)))))

(assert (=> d!42961 (= lt!54546 (head!604 (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 (list!1061 call!7534)))))))))

(assert (=> d!42961 (not (isEmpty!1248 rules!1920))))

(assert (=> d!42961 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 (list!1061 call!7534) (list!1061 lt!54362)) lt!54554)))

(assert (= (and d!42961 res!77714) b!171877))

(assert (= (and b!171877 res!77713) b!171878))

(assert (= (and d!42961 c!33982) b!171879))

(assert (= (and d!42961 (not c!33982)) b!171880))

(declare-fun m!168397 () Bool)

(assert (=> b!171878 m!168397))

(assert (=> b!171878 m!168397))

(declare-fun m!168399 () Bool)

(assert (=> b!171878 m!168399))

(assert (=> b!171877 m!168397))

(assert (=> b!171877 m!168397))

(assert (=> b!171877 m!168399))

(declare-fun m!168401 () Bool)

(assert (=> b!171877 m!168401))

(declare-fun m!168403 () Bool)

(assert (=> b!171877 m!168403))

(declare-fun m!168405 () Bool)

(assert (=> b!171877 m!168405))

(assert (=> b!171877 m!168401))

(assert (=> b!171877 m!168405))

(declare-fun m!168407 () Bool)

(assert (=> b!171879 m!168407))

(declare-fun m!168409 () Bool)

(assert (=> b!171879 m!168409))

(declare-fun m!168411 () Bool)

(assert (=> b!171879 m!168411))

(assert (=> b!171879 m!168407))

(declare-fun m!168413 () Bool)

(assert (=> b!171879 m!168413))

(declare-fun m!168415 () Bool)

(assert (=> b!171879 m!168415))

(declare-fun m!168417 () Bool)

(assert (=> b!171879 m!168417))

(assert (=> b!171879 m!168405))

(assert (=> b!171879 m!168401))

(assert (=> b!171879 m!167845))

(assert (=> b!171879 m!167849))

(assert (=> b!171879 m!168413))

(assert (=> b!171879 m!168405))

(declare-fun m!168419 () Bool)

(assert (=> d!42961 m!168419))

(declare-fun m!168421 () Bool)

(assert (=> d!42961 m!168421))

(assert (=> d!42961 m!168397))

(assert (=> d!42961 m!168397))

(declare-fun m!168423 () Bool)

(assert (=> d!42961 m!168423))

(assert (=> d!42961 m!167165))

(assert (=> d!42961 m!167845))

(declare-fun m!168425 () Bool)

(assert (=> d!42961 m!168425))

(declare-fun m!168427 () Bool)

(assert (=> d!42961 m!168427))

(declare-fun m!168429 () Bool)

(assert (=> d!42961 m!168429))

(assert (=> d!42961 m!168413))

(declare-fun m!168431 () Bool)

(assert (=> d!42961 m!168431))

(assert (=> d!42961 m!168419))

(declare-fun m!168433 () Bool)

(assert (=> d!42961 m!168433))

(assert (=> d!42961 m!167845))

(assert (=> d!42961 m!168427))

(assert (=> d!42961 m!167845))

(assert (=> d!42961 m!167849))

(declare-fun m!168435 () Bool)

(assert (=> d!42961 m!168435))

(assert (=> d!42961 m!168405))

(assert (=> d!42961 m!168401))

(assert (=> d!42961 m!167845))

(declare-fun m!168437 () Bool)

(assert (=> d!42961 m!168437))

(assert (=> d!42961 m!168413))

(declare-fun m!168439 () Bool)

(assert (=> d!42961 m!168439))

(assert (=> d!42961 m!168431))

(declare-fun m!168441 () Bool)

(assert (=> d!42961 m!168441))

(assert (=> d!42961 m!168421))

(declare-fun m!168443 () Bool)

(assert (=> d!42961 m!168443))

(assert (=> d!42961 m!167845))

(assert (=> d!42961 m!167849))

(assert (=> d!42961 m!168413))

(assert (=> d!42961 m!168425))

(declare-fun m!168445 () Bool)

(assert (=> d!42961 m!168445))

(declare-fun m!168447 () Bool)

(assert (=> d!42961 m!168447))

(assert (=> d!42961 m!168431))

(declare-fun m!168449 () Bool)

(assert (=> d!42961 m!168449))

(assert (=> d!42961 m!168405))

(assert (=> b!171502 d!42961))

(declare-fun d!42969 () Bool)

(assert (=> d!42969 (= (list!1061 lt!54362) (list!1065 (c!33816 lt!54362)))))

(declare-fun bs!16724 () Bool)

(assert (= bs!16724 d!42969))

(declare-fun m!168451 () Bool)

(assert (=> bs!16724 m!168451))

(assert (=> b!171502 d!42969))

(declare-fun d!42971 () Bool)

(declare-fun lt!54560 () BalanceConc!1744)

(assert (=> d!42971 (= (list!1061 lt!54560) (printList!93 thiss!17480 (list!1064 (singletonSeq!75 call!7532))))))

(assert (=> d!42971 (= lt!54560 (printTailRec!103 thiss!17480 (singletonSeq!75 call!7532) 0 (BalanceConc!1745 Empty!868)))))

(assert (=> d!42971 (= (print!140 thiss!17480 (singletonSeq!75 call!7532)) lt!54560)))

(declare-fun bs!16725 () Bool)

(assert (= bs!16725 d!42971))

(declare-fun m!168453 () Bool)

(assert (=> bs!16725 m!168453))

(assert (=> bs!16725 m!167847))

(assert (=> bs!16725 m!168367))

(assert (=> bs!16725 m!168367))

(declare-fun m!168455 () Bool)

(assert (=> bs!16725 m!168455))

(assert (=> bs!16725 m!167847))

(assert (=> bs!16725 m!167855))

(assert (=> b!171502 d!42971))

(declare-fun b!171885 () Bool)

(declare-fun e!104191 () List!2928)

(assert (=> b!171885 (= e!104191 Nil!2918)))

(declare-fun d!42973 () Bool)

(declare-fun c!33983 () Bool)

(assert (=> d!42973 (= c!33983 ((_ is Empty!868) (c!33816 (seqFromList!423 lt!54105))))))

(assert (=> d!42973 (= (list!1065 (c!33816 (seqFromList!423 lt!54105))) e!104191)))

(declare-fun b!171886 () Bool)

(declare-fun e!104192 () List!2928)

(assert (=> b!171886 (= e!104191 e!104192)))

(declare-fun c!33984 () Bool)

(assert (=> b!171886 (= c!33984 ((_ is Leaf!1469) (c!33816 (seqFromList!423 lt!54105))))))

(declare-fun b!171888 () Bool)

(assert (=> b!171888 (= e!104192 (++!670 (list!1065 (left!2232 (c!33816 (seqFromList!423 lt!54105)))) (list!1065 (right!2562 (c!33816 (seqFromList!423 lt!54105))))))))

(declare-fun b!171887 () Bool)

(assert (=> b!171887 (= e!104192 (list!1066 (xs!3463 (c!33816 (seqFromList!423 lt!54105)))))))

(assert (= (and d!42973 c!33983) b!171885))

(assert (= (and d!42973 (not c!33983)) b!171886))

(assert (= (and b!171886 c!33984) b!171887))

(assert (= (and b!171886 (not c!33984)) b!171888))

(declare-fun m!168457 () Bool)

(assert (=> b!171888 m!168457))

(declare-fun m!168459 () Bool)

(assert (=> b!171888 m!168459))

(assert (=> b!171888 m!168457))

(assert (=> b!171888 m!168459))

(declare-fun m!168461 () Bool)

(assert (=> b!171888 m!168461))

(declare-fun m!168463 () Bool)

(assert (=> b!171887 m!168463))

(assert (=> d!42785 d!42973))

(declare-fun d!42975 () Bool)

(declare-fun lt!54562 () BalanceConc!1744)

(assert (=> d!42975 (= (list!1061 lt!54562) (originalCharacters!566 call!7512))))

(assert (=> d!42975 (= lt!54562 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 call!7512))) (value!19221 call!7512)))))

(assert (=> d!42975 (= (charsOf!178 call!7512) lt!54562)))

(declare-fun b_lambda!3911 () Bool)

(assert (=> (not b_lambda!3911) (not d!42975)))

(declare-fun tb!6751 () Bool)

(declare-fun t!27211 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27211) tb!6751))

(declare-fun b!171889 () Bool)

(declare-fun e!104193 () Bool)

(declare-fun tp!84494 () Bool)

(assert (=> b!171889 (= e!104193 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 call!7512))) (value!19221 call!7512)))) tp!84494))))

(declare-fun result!9476 () Bool)

(assert (=> tb!6751 (= result!9476 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 call!7512))) (value!19221 call!7512))) e!104193))))

(assert (= tb!6751 b!171889))

(declare-fun m!168467 () Bool)

(assert (=> b!171889 m!168467))

(declare-fun m!168469 () Bool)

(assert (=> tb!6751 m!168469))

(assert (=> d!42975 t!27211))

(declare-fun b_and!11319 () Bool)

(assert (= b_and!11281 (and (=> t!27211 result!9476) b_and!11319)))

(declare-fun t!27213 () Bool)

(declare-fun tb!6753 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27213) tb!6753))

(declare-fun result!9478 () Bool)

(assert (= result!9478 result!9476))

(assert (=> d!42975 t!27213))

(declare-fun b_and!11321 () Bool)

(assert (= b_and!11285 (and (=> t!27213 result!9478) b_and!11321)))

(declare-fun tb!6755 () Bool)

(declare-fun t!27215 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27215) tb!6755))

(declare-fun result!9480 () Bool)

(assert (= result!9480 result!9476))

(assert (=> d!42975 t!27215))

(declare-fun b_and!11323 () Bool)

(assert (= b_and!11303 (and (=> t!27215 result!9480) b_and!11323)))

(declare-fun t!27217 () Bool)

(declare-fun tb!6757 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27217) tb!6757))

(declare-fun result!9482 () Bool)

(assert (= result!9482 result!9476))

(assert (=> d!42975 t!27217))

(declare-fun b_and!11325 () Bool)

(assert (= b_and!11283 (and (=> t!27217 result!9482) b_and!11325)))

(declare-fun t!27219 () Bool)

(declare-fun tb!6759 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27219) tb!6759))

(declare-fun result!9484 () Bool)

(assert (= result!9484 result!9476))

(assert (=> d!42975 t!27219))

(declare-fun b_and!11327 () Bool)

(assert (= b_and!11307 (and (=> t!27219 result!9484) b_and!11327)))

(declare-fun m!168471 () Bool)

(assert (=> d!42975 m!168471))

(declare-fun m!168473 () Bool)

(assert (=> d!42975 m!168473))

(assert (=> b!171382 d!42975))

(declare-fun d!42979 () Bool)

(declare-fun lt!54565 () Int)

(assert (=> d!42979 (>= lt!54565 0)))

(declare-fun e!104196 () Int)

(assert (=> d!42979 (= lt!54565 e!104196)))

(declare-fun c!33987 () Bool)

(assert (=> d!42979 (= c!33987 ((_ is Nil!2918) lt!54189))))

(assert (=> d!42979 (= (size!2417 lt!54189) lt!54565)))

(declare-fun b!171894 () Bool)

(assert (=> b!171894 (= e!104196 0)))

(declare-fun b!171895 () Bool)

(assert (=> b!171895 (= e!104196 (+ 1 (size!2417 (t!27130 lt!54189))))))

(assert (= (and d!42979 c!33987) b!171894))

(assert (= (and d!42979 (not c!33987)) b!171895))

(declare-fun m!168475 () Bool)

(assert (=> b!171895 m!168475))

(assert (=> b!171205 d!42979))

(declare-fun d!42981 () Bool)

(declare-fun lt!54568 () Int)

(assert (=> d!42981 (>= lt!54568 0)))

(declare-fun e!104197 () Int)

(assert (=> d!42981 (= lt!54568 e!104197)))

(declare-fun c!33988 () Bool)

(assert (=> d!42981 (= c!33988 ((_ is Nil!2918) lt!54115))))

(assert (=> d!42981 (= (size!2417 lt!54115) lt!54568)))

(declare-fun b!171896 () Bool)

(assert (=> b!171896 (= e!104197 0)))

(declare-fun b!171897 () Bool)

(assert (=> b!171897 (= e!104197 (+ 1 (size!2417 (t!27130 lt!54115))))))

(assert (= (and d!42981 c!33988) b!171896))

(assert (= (and d!42981 (not c!33988)) b!171897))

(declare-fun m!168477 () Bool)

(assert (=> b!171897 m!168477))

(assert (=> b!171205 d!42981))

(declare-fun d!42983 () Bool)

(declare-fun lt!54569 () Int)

(assert (=> d!42983 (>= lt!54569 0)))

(declare-fun e!104202 () Int)

(assert (=> d!42983 (= lt!54569 e!104202)))

(declare-fun c!33989 () Bool)

(assert (=> d!42983 (= c!33989 ((_ is Nil!2918) lt!54104))))

(assert (=> d!42983 (= (size!2417 lt!54104) lt!54569)))

(declare-fun b!171902 () Bool)

(assert (=> b!171902 (= e!104202 0)))

(declare-fun b!171903 () Bool)

(assert (=> b!171903 (= e!104202 (+ 1 (size!2417 (t!27130 lt!54104))))))

(assert (= (and d!42983 c!33989) b!171902))

(assert (= (and d!42983 (not c!33989)) b!171903))

(declare-fun m!168479 () Bool)

(assert (=> b!171903 m!168479))

(assert (=> b!171205 d!42983))

(declare-fun d!42985 () Bool)

(declare-fun res!77723 () Bool)

(declare-fun e!104203 () Bool)

(assert (=> d!42985 (=> res!77723 e!104203)))

(assert (=> d!42985 (= res!77723 (not ((_ is Cons!2919) (t!27131 rules!1920))))))

(assert (=> d!42985 (= (sepAndNonSepRulesDisjointChars!112 rules!1920 (t!27131 rules!1920)) e!104203)))

(declare-fun b!171904 () Bool)

(declare-fun e!104204 () Bool)

(assert (=> b!171904 (= e!104203 e!104204)))

(declare-fun res!77724 () Bool)

(assert (=> b!171904 (=> (not res!77724) (not e!104204))))

(assert (=> b!171904 (= res!77724 (ruleDisjointCharsFromAllFromOtherType!39 (h!8316 (t!27131 rules!1920)) rules!1920))))

(declare-fun b!171905 () Bool)

(assert (=> b!171905 (= e!104204 (sepAndNonSepRulesDisjointChars!112 rules!1920 (t!27131 (t!27131 rules!1920))))))

(assert (= (and d!42985 (not res!77723)) b!171904))

(assert (= (and b!171904 res!77724) b!171905))

(declare-fun m!168481 () Bool)

(assert (=> b!171904 m!168481))

(declare-fun m!168483 () Bool)

(assert (=> b!171905 m!168483))

(assert (=> b!171442 d!42985))

(declare-fun b!171944 () Bool)

(declare-fun e!104226 () Bool)

(declare-fun head!606 (List!2928) C!2416)

(assert (=> b!171944 (= e!104226 (not (= (head!606 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) (c!33817 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473))))))))))

(declare-fun b!171945 () Bool)

(declare-fun e!104232 () Bool)

(assert (=> b!171945 (= e!104232 (nullable!108 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473))))))))

(declare-fun bm!7567 () Bool)

(declare-fun call!7572 () Bool)

(assert (=> bm!7567 (= call!7572 (isEmpty!1247 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))))))

(declare-fun b!171946 () Bool)

(declare-fun e!104228 () Bool)

(assert (=> b!171946 (= e!104228 e!104226)))

(declare-fun res!77750 () Bool)

(assert (=> b!171946 (=> res!77750 e!104226)))

(assert (=> b!171946 (= res!77750 call!7572)))

(declare-fun b!171947 () Bool)

(declare-fun e!104229 () Bool)

(declare-fun e!104230 () Bool)

(assert (=> b!171947 (= e!104229 e!104230)))

(declare-fun c!33997 () Bool)

(assert (=> b!171947 (= c!33997 ((_ is EmptyLang!747) (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473))))))))

(declare-fun b!171948 () Bool)

(declare-fun derivativeStep!73 (Regex!747 C!2416) Regex!747)

(declare-fun tail!346 (List!2928) List!2928)

(assert (=> b!171948 (= e!104232 (matchR!85 (derivativeStep!73 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473)))) (head!606 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))))) (tail!346 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))))))))

(declare-fun b!171949 () Bool)

(declare-fun res!77746 () Bool)

(declare-fun e!104231 () Bool)

(assert (=> b!171949 (=> res!77746 e!104231)))

(declare-fun e!104227 () Bool)

(assert (=> b!171949 (= res!77746 e!104227)))

(declare-fun res!77751 () Bool)

(assert (=> b!171949 (=> (not res!77751) (not e!104227))))

(declare-fun lt!54583 () Bool)

(assert (=> b!171949 (= res!77751 lt!54583)))

(declare-fun b!171950 () Bool)

(declare-fun res!77747 () Bool)

(assert (=> b!171950 (=> res!77747 e!104231)))

(assert (=> b!171950 (= res!77747 (not ((_ is ElementMatch!747) (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))))))

(assert (=> b!171950 (= e!104230 e!104231)))

(declare-fun d!42987 () Bool)

(assert (=> d!42987 e!104229))

(declare-fun c!33998 () Bool)

(assert (=> d!42987 (= c!33998 ((_ is EmptyExpr!747) (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473))))))))

(assert (=> d!42987 (= lt!54583 e!104232)))

(declare-fun c!33999 () Bool)

(assert (=> d!42987 (= c!33999 (isEmpty!1247 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))))))

(assert (=> d!42987 (validRegex!181 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))))

(assert (=> d!42987 (= (matchR!85 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473)))) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) lt!54583)))

(declare-fun b!171951 () Bool)

(assert (=> b!171951 (= e!104229 (= lt!54583 call!7572))))

(declare-fun b!171952 () Bool)

(declare-fun res!77749 () Bool)

(assert (=> b!171952 (=> (not res!77749) (not e!104227))))

(assert (=> b!171952 (= res!77749 (isEmpty!1247 (tail!346 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))))))))

(declare-fun b!171953 () Bool)

(assert (=> b!171953 (= e!104230 (not lt!54583))))

(declare-fun b!171954 () Bool)

(assert (=> b!171954 (= e!104231 e!104228)))

(declare-fun res!77748 () Bool)

(assert (=> b!171954 (=> (not res!77748) (not e!104228))))

(assert (=> b!171954 (= res!77748 (not lt!54583))))

(declare-fun b!171955 () Bool)

(declare-fun res!77752 () Bool)

(assert (=> b!171955 (=> res!77752 e!104226)))

(assert (=> b!171955 (= res!77752 (not (isEmpty!1247 (tail!346 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))))))))

(declare-fun b!171956 () Bool)

(declare-fun res!77745 () Bool)

(assert (=> b!171956 (=> (not res!77745) (not e!104227))))

(assert (=> b!171956 (= res!77745 (not call!7572))))

(declare-fun b!171957 () Bool)

(assert (=> b!171957 (= e!104227 (= (head!606 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) (c!33817 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))))))

(assert (= (and d!42987 c!33999) b!171945))

(assert (= (and d!42987 (not c!33999)) b!171948))

(assert (= (and d!42987 c!33998) b!171951))

(assert (= (and d!42987 (not c!33998)) b!171947))

(assert (= (and b!171947 c!33997) b!171953))

(assert (= (and b!171947 (not c!33997)) b!171950))

(assert (= (and b!171950 (not res!77747)) b!171949))

(assert (= (and b!171949 res!77751) b!171956))

(assert (= (and b!171956 res!77745) b!171952))

(assert (= (and b!171952 res!77749) b!171957))

(assert (= (and b!171949 (not res!77746)) b!171954))

(assert (= (and b!171954 res!77748) b!171946))

(assert (= (and b!171946 (not res!77750)) b!171955))

(assert (= (and b!171955 (not res!77752)) b!171944))

(assert (= (or b!171951 b!171946 b!171956) bm!7567))

(assert (=> b!171952 m!168181))

(declare-fun m!168515 () Bool)

(assert (=> b!171952 m!168515))

(assert (=> b!171952 m!168515))

(declare-fun m!168519 () Bool)

(assert (=> b!171952 m!168519))

(declare-fun m!168523 () Bool)

(assert (=> b!171945 m!168523))

(assert (=> b!171957 m!168181))

(declare-fun m!168527 () Bool)

(assert (=> b!171957 m!168527))

(assert (=> b!171948 m!168181))

(assert (=> b!171948 m!168527))

(assert (=> b!171948 m!168527))

(declare-fun m!168531 () Bool)

(assert (=> b!171948 m!168531))

(assert (=> b!171948 m!168181))

(assert (=> b!171948 m!168515))

(assert (=> b!171948 m!168531))

(assert (=> b!171948 m!168515))

(declare-fun m!168537 () Bool)

(assert (=> b!171948 m!168537))

(assert (=> d!42987 m!168181))

(declare-fun m!168543 () Bool)

(assert (=> d!42987 m!168543))

(declare-fun m!168545 () Bool)

(assert (=> d!42987 m!168545))

(assert (=> bm!7567 m!168181))

(assert (=> bm!7567 m!168543))

(assert (=> b!171955 m!168181))

(assert (=> b!171955 m!168515))

(assert (=> b!171955 m!168515))

(assert (=> b!171955 m!168519))

(assert (=> b!171944 m!168181))

(assert (=> b!171944 m!168527))

(assert (=> b!171739 d!42987))

(assert (=> b!171739 d!42935))

(declare-fun d!42999 () Bool)

(assert (=> d!42999 (= (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))) (list!1065 (c!33816 (charsOf!178 (_1!1630 (get!801 lt!54473))))))))

(declare-fun bs!16728 () Bool)

(assert (= bs!16728 d!42999))

(declare-fun m!168559 () Bool)

(assert (=> bs!16728 m!168559))

(assert (=> b!171739 d!42999))

(declare-fun d!43001 () Bool)

(declare-fun lt!54584 () BalanceConc!1744)

(assert (=> d!43001 (= (list!1061 lt!54584) (originalCharacters!566 (_1!1630 (get!801 lt!54473))))))

(assert (=> d!43001 (= lt!54584 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473))))) (value!19221 (_1!1630 (get!801 lt!54473)))))))

(assert (=> d!43001 (= (charsOf!178 (_1!1630 (get!801 lt!54473))) lt!54584)))

(declare-fun b_lambda!3917 () Bool)

(assert (=> (not b_lambda!3917) (not d!43001)))

(declare-fun tb!6781 () Bool)

(declare-fun t!27241 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27241) tb!6781))

(declare-fun b!171958 () Bool)

(declare-fun e!104233 () Bool)

(declare-fun tp!84497 () Bool)

(assert (=> b!171958 (= e!104233 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473))))) (value!19221 (_1!1630 (get!801 lt!54473)))))) tp!84497))))

(declare-fun result!9506 () Bool)

(assert (=> tb!6781 (= result!9506 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473))))) (value!19221 (_1!1630 (get!801 lt!54473))))) e!104233))))

(assert (= tb!6781 b!171958))

(declare-fun m!168567 () Bool)

(assert (=> b!171958 m!168567))

(declare-fun m!168569 () Bool)

(assert (=> tb!6781 m!168569))

(assert (=> d!43001 t!27241))

(declare-fun b_and!11349 () Bool)

(assert (= b_and!11323 (and (=> t!27241 result!9506) b_and!11349)))

(declare-fun tb!6783 () Bool)

(declare-fun t!27243 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27243) tb!6783))

(declare-fun result!9508 () Bool)

(assert (= result!9508 result!9506))

(assert (=> d!43001 t!27243))

(declare-fun b_and!11351 () Bool)

(assert (= b_and!11327 (and (=> t!27243 result!9508) b_and!11351)))

(declare-fun tb!6785 () Bool)

(declare-fun t!27245 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27245) tb!6785))

(declare-fun result!9510 () Bool)

(assert (= result!9510 result!9506))

(assert (=> d!43001 t!27245))

(declare-fun b_and!11353 () Bool)

(assert (= b_and!11325 (and (=> t!27245 result!9510) b_and!11353)))

(declare-fun t!27247 () Bool)

(declare-fun tb!6787 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27247) tb!6787))

(declare-fun result!9512 () Bool)

(assert (= result!9512 result!9506))

(assert (=> d!43001 t!27247))

(declare-fun b_and!11355 () Bool)

(assert (= b_and!11319 (and (=> t!27247 result!9512) b_and!11355)))

(declare-fun tb!6789 () Bool)

(declare-fun t!27249 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27249) tb!6789))

(declare-fun result!9514 () Bool)

(assert (= result!9514 result!9506))

(assert (=> d!43001 t!27249))

(declare-fun b_and!11357 () Bool)

(assert (= b_and!11321 (and (=> t!27249 result!9514) b_and!11357)))

(declare-fun m!168571 () Bool)

(assert (=> d!43001 m!168571))

(declare-fun m!168573 () Bool)

(assert (=> d!43001 m!168573))

(assert (=> b!171739 d!43001))

(declare-fun d!43005 () Bool)

(assert (=> d!43005 (= (list!1061 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))) (list!1065 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))))

(declare-fun bs!16729 () Bool)

(assert (= bs!16729 d!43005))

(declare-fun m!168575 () Bool)

(assert (=> bs!16729 m!168575))

(assert (=> b!171494 d!43005))

(declare-fun d!43007 () Bool)

(declare-fun c!34002 () Bool)

(assert (=> d!43007 (= c!34002 ((_ is Node!868) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))))

(declare-fun e!104238 () Bool)

(assert (=> d!43007 (= (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))) e!104238)))

(declare-fun b!171965 () Bool)

(declare-fun inv!3749 (Conc!868) Bool)

(assert (=> b!171965 (= e!104238 (inv!3749 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))))

(declare-fun b!171966 () Bool)

(declare-fun e!104239 () Bool)

(assert (=> b!171966 (= e!104238 e!104239)))

(declare-fun res!77755 () Bool)

(assert (=> b!171966 (= res!77755 (not ((_ is Leaf!1469) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))))))))

(assert (=> b!171966 (=> res!77755 e!104239)))

(declare-fun b!171967 () Bool)

(declare-fun inv!3750 (Conc!868) Bool)

(assert (=> b!171967 (= e!104239 (inv!3750 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))))

(assert (= (and d!43007 c!34002) b!171965))

(assert (= (and d!43007 (not c!34002)) b!171966))

(assert (= (and b!171966 (not res!77755)) b!171967))

(declare-fun m!168577 () Bool)

(assert (=> b!171965 m!168577))

(declare-fun m!168579 () Bool)

(assert (=> b!171967 m!168579))

(assert (=> b!171396 d!43007))

(declare-fun d!43009 () Bool)

(declare-fun e!104242 () Bool)

(assert (=> d!43009 e!104242))

(declare-fun res!77758 () Bool)

(assert (=> d!43009 (=> (not res!77758) (not e!104242))))

(declare-fun lt!54587 () BalanceConc!1746)

(assert (=> d!43009 (= res!77758 (= (list!1064 lt!54587) tokens!465))))

(declare-fun fromList!109 (List!2930) Conc!869)

(assert (=> d!43009 (= lt!54587 (BalanceConc!1747 (fromList!109 tokens!465)))))

(assert (=> d!43009 (= (fromListB!168 tokens!465) lt!54587)))

(declare-fun b!171970 () Bool)

(assert (=> b!171970 (= e!104242 (isBalanced!240 (fromList!109 tokens!465)))))

(assert (= (and d!43009 res!77758) b!171970))

(declare-fun m!168581 () Bool)

(assert (=> d!43009 m!168581))

(declare-fun m!168583 () Bool)

(assert (=> d!43009 m!168583))

(assert (=> b!171970 m!168583))

(assert (=> b!171970 m!168583))

(declare-fun m!168585 () Bool)

(assert (=> b!171970 m!168585))

(assert (=> d!42887 d!43009))

(declare-fun d!43011 () Bool)

(assert (=> d!43011 (= (isEmpty!1247 (originalCharacters!566 (h!8317 tokens!465))) ((_ is Nil!2918) (originalCharacters!566 (h!8317 tokens!465))))))

(assert (=> d!42717 d!43011))

(declare-fun d!43013 () Bool)

(declare-fun lt!54590 () Bool)

(declare-fun content!402 (List!2930) (InoxSet Token!790))

(assert (=> d!43013 (= lt!54590 (select (content!402 tokens!465) (h!8317 tokens!465)))))

(declare-fun e!104248 () Bool)

(assert (=> d!43013 (= lt!54590 e!104248)))

(declare-fun res!77763 () Bool)

(assert (=> d!43013 (=> (not res!77763) (not e!104248))))

(assert (=> d!43013 (= res!77763 ((_ is Cons!2920) tokens!465))))

(assert (=> d!43013 (= (contains!467 tokens!465 (h!8317 tokens!465)) lt!54590)))

(declare-fun b!171975 () Bool)

(declare-fun e!104247 () Bool)

(assert (=> b!171975 (= e!104248 e!104247)))

(declare-fun res!77764 () Bool)

(assert (=> b!171975 (=> res!77764 e!104247)))

(assert (=> b!171975 (= res!77764 (= (h!8317 tokens!465) (h!8317 tokens!465)))))

(declare-fun b!171976 () Bool)

(assert (=> b!171976 (= e!104247 (contains!467 (t!27132 tokens!465) (h!8317 tokens!465)))))

(assert (= (and d!43013 res!77763) b!171975))

(assert (= (and b!171975 (not res!77764)) b!171976))

(declare-fun m!168587 () Bool)

(assert (=> d!43013 m!168587))

(declare-fun m!168589 () Bool)

(assert (=> d!43013 m!168589))

(declare-fun m!168591 () Bool)

(assert (=> b!171976 m!168591))

(assert (=> b!171147 d!43013))

(declare-fun d!43015 () Bool)

(assert (=> d!43015 (= (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))) (v!13762 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))

(assert (=> b!171137 d!43015))

(declare-fun lt!54601 () Option!320)

(declare-fun d!43017 () Bool)

(assert (=> d!43017 (= lt!54601 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(declare-fun e!104251 () Option!320)

(assert (=> d!43017 (= lt!54601 e!104251)))

(declare-fun c!34006 () Bool)

(assert (=> d!43017 (= c!34006 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!54602 () Unit!2548)

(declare-fun lt!54605 () Unit!2548)

(assert (=> d!43017 (= lt!54602 lt!54605)))

(assert (=> d!43017 (isPrefix!230 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!43017 (= lt!54605 (lemmaIsPrefixRefl!138 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(assert (=> d!43017 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!43017 (= (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))) lt!54601)))

(declare-fun bm!7570 () Bool)

(declare-fun call!7575 () Option!320)

(declare-fun maxPrefixOneRuleZipper!10 (LexerInterface!409 Rule!846 List!2928) Option!320)

(assert (=> bm!7570 (= call!7575 (maxPrefixOneRuleZipper!10 thiss!17480 (h!8316 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(declare-fun b!171981 () Bool)

(assert (=> b!171981 (= e!104251 call!7575)))

(declare-fun b!171982 () Bool)

(declare-fun lt!54603 () Option!320)

(declare-fun lt!54604 () Option!320)

(assert (=> b!171982 (= e!104251 (ite (and ((_ is None!319) lt!54603) ((_ is None!319) lt!54604)) None!319 (ite ((_ is None!319) lt!54604) lt!54603 (ite ((_ is None!319) lt!54603) lt!54604 (ite (>= (size!2411 (_1!1630 (v!13762 lt!54603))) (size!2411 (_1!1630 (v!13762 lt!54604)))) lt!54603 lt!54604)))))))

(assert (=> b!171982 (= lt!54603 call!7575)))

(assert (=> b!171982 (= lt!54604 (maxPrefixZipper!42 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(assert (= (and d!43017 c!34006) b!171981))

(assert (= (and d!43017 (not c!34006)) b!171982))

(assert (= (or b!171981 b!171982) bm!7570))

(assert (=> d!43017 m!167249))

(assert (=> d!43017 m!167257))

(assert (=> d!43017 m!167249))

(assert (=> d!43017 m!167249))

(declare-fun m!168593 () Bool)

(assert (=> d!43017 m!168593))

(assert (=> d!43017 m!167249))

(assert (=> d!43017 m!167249))

(declare-fun m!168595 () Bool)

(assert (=> d!43017 m!168595))

(assert (=> d!43017 m!167263))

(assert (=> bm!7570 m!167249))

(declare-fun m!168597 () Bool)

(assert (=> bm!7570 m!168597))

(assert (=> b!171982 m!167249))

(declare-fun m!168599 () Bool)

(assert (=> b!171982 m!168599))

(assert (=> b!171137 d!43017))

(declare-fun d!43019 () Bool)

(assert (=> d!43019 (= (list!1061 (_2!1631 (get!802 lt!54146))) (list!1065 (c!33816 (_2!1631 (get!802 lt!54146)))))))

(declare-fun bs!16730 () Bool)

(assert (= bs!16730 d!43019))

(declare-fun m!168601 () Bool)

(assert (=> bs!16730 m!168601))

(assert (=> b!171137 d!43019))

(declare-fun d!43021 () Bool)

(assert (=> d!43021 (= (get!802 lt!54146) (v!13763 lt!54146))))

(assert (=> b!171137 d!43021))

(declare-fun d!43023 () Bool)

(assert (=> d!43023 (= (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) (list!1065 (c!33816 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(declare-fun bs!16731 () Bool)

(assert (= bs!16731 d!43023))

(declare-fun m!168603 () Bool)

(assert (=> bs!16731 m!168603))

(assert (=> b!171137 d!43023))

(declare-fun lt!54606 () BalanceConc!1744)

(declare-fun d!43025 () Bool)

(assert (=> d!43025 (= (list!1061 lt!54606) (originalCharacters!566 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))))))

(assert (=> d!43025 (= lt!54606 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))))) (value!19221 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))))

(assert (=> d!43025 (= (charsOf!178 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))) lt!54606)))

(declare-fun b_lambda!3919 () Bool)

(assert (=> (not b_lambda!3919) (not d!43025)))

(declare-fun t!27251 () Bool)

(declare-fun tb!6791 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27251) tb!6791))

(declare-fun e!104252 () Bool)

(declare-fun b!171983 () Bool)

(declare-fun tp!84498 () Bool)

(assert (=> b!171983 (= e!104252 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))))) (value!19221 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) tp!84498))))

(declare-fun result!9516 () Bool)

(assert (=> tb!6791 (= result!9516 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))))) (value!19221 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512))))) e!104252))))

(assert (= tb!6791 b!171983))

(declare-fun m!168605 () Bool)

(assert (=> b!171983 m!168605))

(declare-fun m!168607 () Bool)

(assert (=> tb!6791 m!168607))

(assert (=> d!43025 t!27251))

(declare-fun b_and!11359 () Bool)

(assert (= b_and!11357 (and (=> t!27251 result!9516) b_and!11359)))

(declare-fun tb!6793 () Bool)

(declare-fun t!27253 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27253) tb!6793))

(declare-fun result!9518 () Bool)

(assert (= result!9518 result!9516))

(assert (=> d!43025 t!27253))

(declare-fun b_and!11361 () Bool)

(assert (= b_and!11355 (and (=> t!27253 result!9518) b_and!11361)))

(declare-fun t!27255 () Bool)

(declare-fun tb!6795 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27255) tb!6795))

(declare-fun result!9520 () Bool)

(assert (= result!9520 result!9516))

(assert (=> d!43025 t!27255))

(declare-fun b_and!11363 () Bool)

(assert (= b_and!11349 (and (=> t!27255 result!9520) b_and!11363)))

(declare-fun tb!6797 () Bool)

(declare-fun t!27257 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27257) tb!6797))

(declare-fun result!9522 () Bool)

(assert (= result!9522 result!9516))

(assert (=> d!43025 t!27257))

(declare-fun b_and!11365 () Bool)

(assert (= b_and!11351 (and (=> t!27257 result!9522) b_and!11365)))

(declare-fun tb!6799 () Bool)

(declare-fun t!27259 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27259) tb!6799))

(declare-fun result!9524 () Bool)

(assert (= result!9524 result!9516))

(assert (=> d!43025 t!27259))

(declare-fun b_and!11367 () Bool)

(assert (= b_and!11353 (and (=> t!27259 result!9524) b_and!11367)))

(declare-fun m!168609 () Bool)

(assert (=> d!43025 m!168609))

(declare-fun m!168611 () Bool)

(assert (=> d!43025 m!168611))

(assert (=> bm!7505 d!43025))

(declare-fun d!43027 () Bool)

(assert (=> d!43027 (= (list!1061 (ite c!33925 call!7537 call!7539)) (list!1065 (c!33816 (ite c!33925 call!7537 call!7539))))))

(declare-fun bs!16732 () Bool)

(assert (= bs!16732 d!43027))

(declare-fun m!168613 () Bool)

(assert (=> bs!16732 m!168613))

(assert (=> bm!7533 d!43027))

(declare-fun d!43029 () Bool)

(assert (=> d!43029 (= (list!1061 lt!54381) (list!1065 (c!33816 lt!54381)))))

(declare-fun bs!16733 () Bool)

(assert (= bs!16733 d!43029))

(declare-fun m!168615 () Bool)

(assert (=> bs!16733 m!168615))

(assert (=> d!42829 d!43029))

(declare-fun d!43031 () Bool)

(declare-fun c!34007 () Bool)

(assert (=> d!43031 (= c!34007 ((_ is Cons!2920) (list!1064 lt!54116)))))

(declare-fun e!104253 () List!2928)

(assert (=> d!43031 (= (printList!93 thiss!17480 (list!1064 lt!54116)) e!104253)))

(declare-fun b!171984 () Bool)

(assert (=> b!171984 (= e!104253 (++!670 (list!1061 (charsOf!178 (h!8317 (list!1064 lt!54116)))) (printList!93 thiss!17480 (t!27132 (list!1064 lt!54116)))))))

(declare-fun b!171985 () Bool)

(assert (=> b!171985 (= e!104253 Nil!2918)))

(assert (= (and d!43031 c!34007) b!171984))

(assert (= (and d!43031 (not c!34007)) b!171985))

(declare-fun m!168617 () Bool)

(assert (=> b!171984 m!168617))

(assert (=> b!171984 m!168617))

(declare-fun m!168619 () Bool)

(assert (=> b!171984 m!168619))

(declare-fun m!168621 () Bool)

(assert (=> b!171984 m!168621))

(assert (=> b!171984 m!168619))

(assert (=> b!171984 m!168621))

(declare-fun m!168623 () Bool)

(assert (=> b!171984 m!168623))

(assert (=> d!42829 d!43031))

(declare-fun d!43033 () Bool)

(assert (=> d!43033 (= (list!1064 lt!54116) (list!1067 (c!33818 lt!54116)))))

(declare-fun bs!16734 () Bool)

(assert (= bs!16734 d!43033))

(declare-fun m!168625 () Bool)

(assert (=> bs!16734 m!168625))

(assert (=> d!42829 d!43033))

(assert (=> d!42829 d!42831))

(declare-fun d!43035 () Bool)

(assert (=> d!43035 (= (isEmpty!1247 (originalCharacters!566 separatorToken!170)) ((_ is Nil!2918) (originalCharacters!566 separatorToken!170)))))

(assert (=> d!42813 d!43035))

(declare-fun d!43037 () Bool)

(declare-fun res!77765 () Bool)

(declare-fun e!104254 () Bool)

(assert (=> d!43037 (=> res!77765 e!104254)))

(assert (=> d!43037 (= res!77765 ((_ is Nil!2920) (list!1064 lt!54114)))))

(assert (=> d!43037 (= (forall!573 (list!1064 lt!54114) lambda!4926) e!104254)))

(declare-fun b!171986 () Bool)

(declare-fun e!104255 () Bool)

(assert (=> b!171986 (= e!104254 e!104255)))

(declare-fun res!77766 () Bool)

(assert (=> b!171986 (=> (not res!77766) (not e!104255))))

(assert (=> b!171986 (= res!77766 (dynLambda!1111 lambda!4926 (h!8317 (list!1064 lt!54114))))))

(declare-fun b!171987 () Bool)

(assert (=> b!171987 (= e!104255 (forall!573 (t!27132 (list!1064 lt!54114)) lambda!4926))))

(assert (= (and d!43037 (not res!77765)) b!171986))

(assert (= (and b!171986 res!77766) b!171987))

(declare-fun b_lambda!3921 () Bool)

(assert (=> (not b_lambda!3921) (not b!171986)))

(declare-fun m!168627 () Bool)

(assert (=> b!171986 m!168627))

(declare-fun m!168629 () Bool)

(assert (=> b!171987 m!168629))

(assert (=> d!42863 d!43037))

(declare-fun d!43039 () Bool)

(assert (=> d!43039 (= (list!1064 lt!54114) (list!1067 (c!33818 lt!54114)))))

(declare-fun bs!16735 () Bool)

(assert (= bs!16735 d!43039))

(declare-fun m!168631 () Bool)

(assert (=> bs!16735 m!168631))

(assert (=> d!42863 d!43039))

(declare-fun d!43041 () Bool)

(declare-fun lt!54609 () Bool)

(assert (=> d!43041 (= lt!54609 (forall!573 (list!1064 lt!54114) lambda!4926))))

(declare-fun forall!577 (Conc!869 Int) Bool)

(assert (=> d!43041 (= lt!54609 (forall!577 (c!33818 lt!54114) lambda!4926))))

(assert (=> d!43041 (= (forall!575 lt!54114 lambda!4926) lt!54609)))

(declare-fun bs!16736 () Bool)

(assert (= bs!16736 d!43041))

(assert (=> bs!16736 m!167817))

(assert (=> bs!16736 m!167817))

(assert (=> bs!16736 m!168161))

(declare-fun m!168633 () Bool)

(assert (=> bs!16736 m!168633))

(assert (=> d!42863 d!43041))

(assert (=> d!42863 d!42817))

(declare-fun d!43043 () Bool)

(assert (=> d!43043 true))

(declare-fun lt!54612 () Bool)

(assert (=> d!43043 (= lt!54612 (rulesValidInductive!123 thiss!17480 rules!1920))))

(declare-fun lambda!4933 () Int)

(declare-fun forall!578 (List!2929 Int) Bool)

(assert (=> d!43043 (= lt!54612 (forall!578 rules!1920 lambda!4933))))

(assert (=> d!43043 (= (rulesValid!147 thiss!17480 rules!1920) lt!54612)))

(declare-fun bs!16737 () Bool)

(assert (= bs!16737 d!43043))

(assert (=> bs!16737 m!167263))

(declare-fun m!168635 () Bool)

(assert (=> bs!16737 m!168635))

(assert (=> d!42815 d!43043))

(declare-fun d!43045 () Bool)

(assert (=> d!43045 (= (list!1061 lt!54324) (list!1065 (c!33816 lt!54324)))))

(declare-fun bs!16738 () Bool)

(assert (= bs!16738 d!43045))

(declare-fun m!168637 () Bool)

(assert (=> bs!16738 m!168637))

(assert (=> d!42767 d!43045))

(declare-fun d!43047 () Bool)

(assert (=> d!43047 (dynLambda!1111 lambda!4892 (h!8317 tokens!465))))

(assert (=> d!43047 true))

(declare-fun _$7!259 () Unit!2548)

(assert (=> d!43047 (= (choose!1831 tokens!465 lambda!4892 (h!8317 tokens!465)) _$7!259)))

(declare-fun b_lambda!3923 () Bool)

(assert (=> (not b_lambda!3923) (not d!43047)))

(declare-fun bs!16739 () Bool)

(assert (= bs!16739 d!43047))

(assert (=> bs!16739 m!167275))

(assert (=> d!42701 d!43047))

(declare-fun d!43049 () Bool)

(declare-fun res!77767 () Bool)

(declare-fun e!104256 () Bool)

(assert (=> d!43049 (=> res!77767 e!104256)))

(assert (=> d!43049 (= res!77767 ((_ is Nil!2920) tokens!465))))

(assert (=> d!43049 (= (forall!573 tokens!465 lambda!4892) e!104256)))

(declare-fun b!171990 () Bool)

(declare-fun e!104257 () Bool)

(assert (=> b!171990 (= e!104256 e!104257)))

(declare-fun res!77768 () Bool)

(assert (=> b!171990 (=> (not res!77768) (not e!104257))))

(assert (=> b!171990 (= res!77768 (dynLambda!1111 lambda!4892 (h!8317 tokens!465)))))

(declare-fun b!171991 () Bool)

(assert (=> b!171991 (= e!104257 (forall!573 (t!27132 tokens!465) lambda!4892))))

(assert (= (and d!43049 (not res!77767)) b!171990))

(assert (= (and b!171990 res!77768) b!171991))

(declare-fun b_lambda!3925 () Bool)

(assert (=> (not b_lambda!3925) (not b!171990)))

(assert (=> b!171990 m!167275))

(declare-fun m!168639 () Bool)

(assert (=> b!171991 m!168639))

(assert (=> d!42701 d!43049))

(assert (=> b!171140 d!43019))

(declare-fun b!171992 () Bool)

(declare-fun e!104258 () Option!320)

(declare-fun lt!54615 () Option!320)

(declare-fun lt!54614 () Option!320)

(assert (=> b!171992 (= e!104258 (ite (and ((_ is None!319) lt!54615) ((_ is None!319) lt!54614)) None!319 (ite ((_ is None!319) lt!54614) lt!54615 (ite ((_ is None!319) lt!54615) lt!54614 (ite (>= (size!2411 (_1!1630 (v!13762 lt!54615))) (size!2411 (_1!1630 (v!13762 lt!54614)))) lt!54615 lt!54614)))))))

(declare-fun call!7576 () Option!320)

(assert (=> b!171992 (= lt!54615 call!7576)))

(assert (=> b!171992 (= lt!54614 (maxPrefix!139 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(declare-fun b!171993 () Bool)

(assert (=> b!171993 (= e!104258 call!7576)))

(declare-fun b!171994 () Bool)

(declare-fun res!77770 () Bool)

(declare-fun e!104260 () Bool)

(assert (=> b!171994 (=> (not res!77770) (not e!104260))))

(declare-fun lt!54616 () Option!320)

(assert (=> b!171994 (= res!77770 (< (size!2417 (_2!1630 (get!801 lt!54616))) (size!2417 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))

(declare-fun bm!7571 () Bool)

(assert (=> bm!7571 (= call!7576 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(declare-fun b!171996 () Bool)

(assert (=> b!171996 (= e!104260 (contains!469 rules!1920 (rule!1030 (_1!1630 (get!801 lt!54616)))))))

(declare-fun b!171997 () Bool)

(declare-fun e!104259 () Bool)

(assert (=> b!171997 (= e!104259 e!104260)))

(declare-fun res!77774 () Bool)

(assert (=> b!171997 (=> (not res!77774) (not e!104260))))

(assert (=> b!171997 (= res!77774 (isDefined!171 lt!54616))))

(declare-fun b!171998 () Bool)

(declare-fun res!77772 () Bool)

(assert (=> b!171998 (=> (not res!77772) (not e!104260))))

(assert (=> b!171998 (= res!77772 (= (value!19221 (_1!1630 (get!801 lt!54616))) (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54616)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54616)))))))))

(declare-fun b!171995 () Bool)

(declare-fun res!77775 () Bool)

(assert (=> b!171995 (=> (not res!77775) (not e!104260))))

(assert (=> b!171995 (= res!77775 (matchR!85 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54616)))) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54616))))))))

(declare-fun d!43051 () Bool)

(assert (=> d!43051 e!104259))

(declare-fun res!77771 () Bool)

(assert (=> d!43051 (=> res!77771 e!104259)))

(assert (=> d!43051 (= res!77771 (isEmpty!1257 lt!54616))))

(assert (=> d!43051 (= lt!54616 e!104258)))

(declare-fun c!34008 () Bool)

(assert (=> d!43051 (= c!34008 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!54613 () Unit!2548)

(declare-fun lt!54617 () Unit!2548)

(assert (=> d!43051 (= lt!54613 lt!54617)))

(assert (=> d!43051 (isPrefix!230 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!43051 (= lt!54617 (lemmaIsPrefixRefl!138 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(assert (=> d!43051 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!43051 (= (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))) lt!54616)))

(declare-fun b!171999 () Bool)

(declare-fun res!77769 () Bool)

(assert (=> b!171999 (=> (not res!77769) (not e!104260))))

(assert (=> b!171999 (= res!77769 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54616)))) (_2!1630 (get!801 lt!54616))) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))

(declare-fun b!172000 () Bool)

(declare-fun res!77773 () Bool)

(assert (=> b!172000 (=> (not res!77773) (not e!104260))))

(assert (=> b!172000 (= res!77773 (= (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54616)))) (originalCharacters!566 (_1!1630 (get!801 lt!54616)))))))

(assert (= (and d!43051 c!34008) b!171993))

(assert (= (and d!43051 (not c!34008)) b!171992))

(assert (= (or b!171993 b!171992) bm!7571))

(assert (= (and d!43051 (not res!77771)) b!171997))

(assert (= (and b!171997 res!77774) b!172000))

(assert (= (and b!172000 res!77773) b!171994))

(assert (= (and b!171994 res!77770) b!171999))

(assert (= (and b!171999 res!77769) b!171998))

(assert (= (and b!171998 res!77772) b!171995))

(assert (= (and b!171995 res!77775) b!171996))

(declare-fun m!168641 () Bool)

(assert (=> b!172000 m!168641))

(declare-fun m!168643 () Bool)

(assert (=> b!172000 m!168643))

(assert (=> b!172000 m!168643))

(declare-fun m!168645 () Bool)

(assert (=> b!172000 m!168645))

(assert (=> b!171995 m!168641))

(assert (=> b!171995 m!168643))

(assert (=> b!171995 m!168643))

(assert (=> b!171995 m!168645))

(assert (=> b!171995 m!168645))

(declare-fun m!168647 () Bool)

(assert (=> b!171995 m!168647))

(assert (=> b!171999 m!168641))

(assert (=> b!171999 m!168643))

(assert (=> b!171999 m!168643))

(assert (=> b!171999 m!168645))

(assert (=> b!171999 m!168645))

(declare-fun m!168649 () Bool)

(assert (=> b!171999 m!168649))

(declare-fun m!168651 () Bool)

(assert (=> b!171997 m!168651))

(assert (=> bm!7571 m!167249))

(declare-fun m!168653 () Bool)

(assert (=> bm!7571 m!168653))

(assert (=> b!171998 m!168641))

(declare-fun m!168655 () Bool)

(assert (=> b!171998 m!168655))

(assert (=> b!171998 m!168655))

(declare-fun m!168657 () Bool)

(assert (=> b!171998 m!168657))

(assert (=> b!171994 m!168641))

(declare-fun m!168659 () Bool)

(assert (=> b!171994 m!168659))

(assert (=> b!171994 m!167249))

(declare-fun m!168661 () Bool)

(assert (=> b!171994 m!168661))

(assert (=> b!171996 m!168641))

(declare-fun m!168663 () Bool)

(assert (=> b!171996 m!168663))

(declare-fun m!168665 () Bool)

(assert (=> d!43051 m!168665))

(assert (=> d!43051 m!167249))

(assert (=> d!43051 m!167249))

(assert (=> d!43051 m!168593))

(assert (=> d!43051 m!167249))

(assert (=> d!43051 m!167249))

(assert (=> d!43051 m!168595))

(assert (=> d!43051 m!167263))

(assert (=> b!171992 m!167249))

(declare-fun m!168667 () Bool)

(assert (=> b!171992 m!168667))

(assert (=> b!171140 d!43051))

(declare-fun d!43053 () Bool)

(assert (=> d!43053 (= (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))) (v!13762 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))

(assert (=> b!171140 d!43053))

(assert (=> b!171140 d!43021))

(assert (=> b!171140 d!43023))

(declare-fun d!43055 () Bool)

(declare-fun lt!54618 () Token!790)

(assert (=> d!43055 (= lt!54618 (apply!422 (list!1064 (seqFromList!424 (t!27132 tokens!465))) 0))))

(assert (=> d!43055 (= lt!54618 (apply!425 (c!33818 (seqFromList!424 (t!27132 tokens!465))) 0))))

(declare-fun e!104261 () Bool)

(assert (=> d!43055 e!104261))

(declare-fun res!77776 () Bool)

(assert (=> d!43055 (=> (not res!77776) (not e!104261))))

(assert (=> d!43055 (= res!77776 (<= 0 0))))

(assert (=> d!43055 (= (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0) lt!54618)))

(declare-fun b!172001 () Bool)

(assert (=> b!172001 (= e!104261 (< 0 (size!2416 (seqFromList!424 (t!27132 tokens!465)))))))

(assert (= (and d!43055 res!77776) b!172001))

(assert (=> d!43055 m!167123))

(assert (=> d!43055 m!167603))

(assert (=> d!43055 m!167603))

(declare-fun m!168669 () Bool)

(assert (=> d!43055 m!168669))

(declare-fun m!168671 () Bool)

(assert (=> d!43055 m!168671))

(assert (=> b!172001 m!167123))

(assert (=> b!172001 m!167643))

(assert (=> b!171389 d!43055))

(declare-fun d!43057 () Bool)

(declare-fun lt!54619 () Token!790)

(assert (=> d!43057 (= lt!54619 (apply!422 (list!1064 (_1!1629 lt!54423)) 0))))

(assert (=> d!43057 (= lt!54619 (apply!425 (c!33818 (_1!1629 lt!54423)) 0))))

(declare-fun e!104262 () Bool)

(assert (=> d!43057 e!104262))

(declare-fun res!77777 () Bool)

(assert (=> d!43057 (=> (not res!77777) (not e!104262))))

(assert (=> d!43057 (= res!77777 (<= 0 0))))

(assert (=> d!43057 (= (apply!423 (_1!1629 lt!54423) 0) lt!54619)))

(declare-fun b!172002 () Bool)

(assert (=> b!172002 (= e!104262 (< 0 (size!2416 (_1!1629 lt!54423))))))

(assert (= (and d!43057 res!77777) b!172002))

(declare-fun m!168673 () Bool)

(assert (=> d!43057 m!168673))

(assert (=> d!43057 m!168673))

(declare-fun m!168675 () Bool)

(assert (=> d!43057 m!168675))

(declare-fun m!168677 () Bool)

(assert (=> d!43057 m!168677))

(assert (=> b!172002 m!168025))

(assert (=> b!171566 d!43057))

(declare-fun d!43059 () Bool)

(assert (=> d!43059 (= (isEmpty!1257 lt!54473) (not ((_ is Some!319) lt!54473)))))

(assert (=> d!42895 d!43059))

(declare-fun d!43061 () Bool)

(declare-fun e!104270 () Bool)

(assert (=> d!43061 e!104270))

(declare-fun res!77787 () Bool)

(assert (=> d!43061 (=> res!77787 e!104270)))

(declare-fun lt!54622 () Bool)

(assert (=> d!43061 (= res!77787 (not lt!54622))))

(declare-fun e!104269 () Bool)

(assert (=> d!43061 (= lt!54622 e!104269)))

(declare-fun res!77786 () Bool)

(assert (=> d!43061 (=> res!77786 e!104269)))

(assert (=> d!43061 (= res!77786 ((_ is Nil!2918) lt!54115))))

(assert (=> d!43061 (= (isPrefix!230 lt!54115 lt!54115) lt!54622)))

(declare-fun b!172012 () Bool)

(declare-fun res!77788 () Bool)

(declare-fun e!104271 () Bool)

(assert (=> b!172012 (=> (not res!77788) (not e!104271))))

(assert (=> b!172012 (= res!77788 (= (head!606 lt!54115) (head!606 lt!54115)))))

(declare-fun b!172013 () Bool)

(assert (=> b!172013 (= e!104271 (isPrefix!230 (tail!346 lt!54115) (tail!346 lt!54115)))))

(declare-fun b!172011 () Bool)

(assert (=> b!172011 (= e!104269 e!104271)))

(declare-fun res!77789 () Bool)

(assert (=> b!172011 (=> (not res!77789) (not e!104271))))

(assert (=> b!172011 (= res!77789 (not ((_ is Nil!2918) lt!54115)))))

(declare-fun b!172014 () Bool)

(assert (=> b!172014 (= e!104270 (>= (size!2417 lt!54115) (size!2417 lt!54115)))))

(assert (= (and d!43061 (not res!77786)) b!172011))

(assert (= (and b!172011 res!77789) b!172012))

(assert (= (and b!172012 res!77788) b!172013))

(assert (= (and d!43061 (not res!77787)) b!172014))

(declare-fun m!168679 () Bool)

(assert (=> b!172012 m!168679))

(assert (=> b!172012 m!168679))

(declare-fun m!168681 () Bool)

(assert (=> b!172013 m!168681))

(assert (=> b!172013 m!168681))

(assert (=> b!172013 m!168681))

(assert (=> b!172013 m!168681))

(declare-fun m!168683 () Bool)

(assert (=> b!172013 m!168683))

(assert (=> b!172014 m!167393))

(assert (=> b!172014 m!167393))

(assert (=> d!42895 d!43061))

(declare-fun d!43063 () Bool)

(assert (=> d!43063 (isPrefix!230 lt!54115 lt!54115)))

(declare-fun lt!54625 () Unit!2548)

(declare-fun choose!1837 (List!2928 List!2928) Unit!2548)

(assert (=> d!43063 (= lt!54625 (choose!1837 lt!54115 lt!54115))))

(assert (=> d!43063 (= (lemmaIsPrefixRefl!138 lt!54115 lt!54115) lt!54625)))

(declare-fun bs!16740 () Bool)

(assert (= bs!16740 d!43063))

(assert (=> bs!16740 m!168201))

(declare-fun m!168685 () Bool)

(assert (=> bs!16740 m!168685))

(assert (=> d!42895 d!43063))

(declare-fun bs!16741 () Bool)

(declare-fun d!43065 () Bool)

(assert (= bs!16741 (and d!43065 d!43043)))

(declare-fun lambda!4936 () Int)

(assert (=> bs!16741 (= lambda!4936 lambda!4933)))

(assert (=> d!43065 true))

(declare-fun lt!54628 () Bool)

(assert (=> d!43065 (= lt!54628 (forall!578 rules!1920 lambda!4936))))

(declare-fun e!104277 () Bool)

(assert (=> d!43065 (= lt!54628 e!104277)))

(declare-fun res!77795 () Bool)

(assert (=> d!43065 (=> res!77795 e!104277)))

(assert (=> d!43065 (= res!77795 (not ((_ is Cons!2919) rules!1920)))))

(assert (=> d!43065 (= (rulesValidInductive!123 thiss!17480 rules!1920) lt!54628)))

(declare-fun b!172019 () Bool)

(declare-fun e!104276 () Bool)

(assert (=> b!172019 (= e!104277 e!104276)))

(declare-fun res!77794 () Bool)

(assert (=> b!172019 (=> (not res!77794) (not e!104276))))

(declare-fun ruleValid!58 (LexerInterface!409 Rule!846) Bool)

(assert (=> b!172019 (= res!77794 (ruleValid!58 thiss!17480 (h!8316 rules!1920)))))

(declare-fun b!172020 () Bool)

(assert (=> b!172020 (= e!104276 (rulesValidInductive!123 thiss!17480 (t!27131 rules!1920)))))

(assert (= (and d!43065 (not res!77795)) b!172019))

(assert (= (and b!172019 res!77794) b!172020))

(declare-fun m!168687 () Bool)

(assert (=> d!43065 m!168687))

(declare-fun m!168689 () Bool)

(assert (=> b!172019 m!168689))

(declare-fun m!168691 () Bool)

(assert (=> b!172020 m!168691))

(assert (=> d!42895 d!43065))

(declare-fun b!172021 () Bool)

(declare-fun e!104279 () List!2928)

(assert (=> b!172021 (= e!104279 lt!54375)))

(declare-fun b!172024 () Bool)

(declare-fun lt!54629 () List!2928)

(declare-fun e!104278 () Bool)

(assert (=> b!172024 (= e!104278 (or (not (= lt!54375 Nil!2918)) (= lt!54629 call!7535)))))

(declare-fun d!43067 () Bool)

(assert (=> d!43067 e!104278))

(declare-fun res!77796 () Bool)

(assert (=> d!43067 (=> (not res!77796) (not e!104278))))

(assert (=> d!43067 (= res!77796 (= (content!400 lt!54629) ((_ map or) (content!400 call!7535) (content!400 lt!54375))))))

(assert (=> d!43067 (= lt!54629 e!104279)))

(declare-fun c!34009 () Bool)

(assert (=> d!43067 (= c!34009 ((_ is Nil!2918) call!7535))))

(assert (=> d!43067 (= (++!670 call!7535 lt!54375) lt!54629)))

(declare-fun b!172023 () Bool)

(declare-fun res!77797 () Bool)

(assert (=> b!172023 (=> (not res!77797) (not e!104278))))

(assert (=> b!172023 (= res!77797 (= (size!2417 lt!54629) (+ (size!2417 call!7535) (size!2417 lt!54375))))))

(declare-fun b!172022 () Bool)

(assert (=> b!172022 (= e!104279 (Cons!2918 (h!8315 call!7535) (++!670 (t!27130 call!7535) lt!54375)))))

(assert (= (and d!43067 c!34009) b!172021))

(assert (= (and d!43067 (not c!34009)) b!172022))

(assert (= (and d!43067 res!77796) b!172023))

(assert (= (and b!172023 res!77797) b!172024))

(declare-fun m!168693 () Bool)

(assert (=> d!43067 m!168693))

(declare-fun m!168695 () Bool)

(assert (=> d!43067 m!168695))

(declare-fun m!168697 () Bool)

(assert (=> d!43067 m!168697))

(declare-fun m!168699 () Bool)

(assert (=> b!172023 m!168699))

(declare-fun m!168701 () Bool)

(assert (=> b!172023 m!168701))

(declare-fun m!168703 () Bool)

(assert (=> b!172023 m!168703))

(declare-fun m!168705 () Bool)

(assert (=> b!172022 m!168705))

(assert (=> b!171516 d!43067))

(declare-fun d!43069 () Bool)

(declare-fun lt!54630 () Int)

(assert (=> d!43069 (>= lt!54630 0)))

(declare-fun e!104280 () Int)

(assert (=> d!43069 (= lt!54630 e!104280)))

(declare-fun c!34010 () Bool)

(assert (=> d!43069 (= c!34010 ((_ is Nil!2918) lt!54328))))

(assert (=> d!43069 (= (size!2417 lt!54328) lt!54630)))

(declare-fun b!172025 () Bool)

(assert (=> b!172025 (= e!104280 0)))

(declare-fun b!172026 () Bool)

(assert (=> b!172026 (= e!104280 (+ 1 (size!2417 (t!27130 lt!54328))))))

(assert (= (and d!43069 c!34010) b!172025))

(assert (= (and d!43069 (not c!34010)) b!172026))

(declare-fun m!168707 () Bool)

(assert (=> b!172026 m!168707))

(assert (=> b!171407 d!43069))

(declare-fun d!43071 () Bool)

(declare-fun lt!54631 () Int)

(assert (=> d!43071 (>= lt!54631 0)))

(declare-fun e!104281 () Int)

(assert (=> d!43071 (= lt!54631 e!104281)))

(declare-fun c!34011 () Bool)

(assert (=> d!43071 (= c!34011 ((_ is Nil!2918) (++!670 lt!54115 lt!54104)))))

(assert (=> d!43071 (= (size!2417 (++!670 lt!54115 lt!54104)) lt!54631)))

(declare-fun b!172027 () Bool)

(assert (=> b!172027 (= e!104281 0)))

(declare-fun b!172028 () Bool)

(assert (=> b!172028 (= e!104281 (+ 1 (size!2417 (t!27130 (++!670 lt!54115 lt!54104)))))))

(assert (= (and d!43071 c!34011) b!172027))

(assert (= (and d!43071 (not c!34011)) b!172028))

(assert (=> b!172028 m!168257))

(assert (=> b!171407 d!43071))

(declare-fun d!43073 () Bool)

(declare-fun lt!54632 () Int)

(assert (=> d!43073 (>= lt!54632 0)))

(declare-fun e!104282 () Int)

(assert (=> d!43073 (= lt!54632 e!104282)))

(declare-fun c!34012 () Bool)

(assert (=> d!43073 (= c!34012 ((_ is Nil!2918) lt!54119))))

(assert (=> d!43073 (= (size!2417 lt!54119) lt!54632)))

(declare-fun b!172029 () Bool)

(assert (=> b!172029 (= e!104282 0)))

(declare-fun b!172030 () Bool)

(assert (=> b!172030 (= e!104282 (+ 1 (size!2417 (t!27130 lt!54119))))))

(assert (= (and d!43073 c!34012) b!172029))

(assert (= (and d!43073 (not c!34012)) b!172030))

(declare-fun m!168709 () Bool)

(assert (=> b!172030 m!168709))

(assert (=> b!171407 d!43073))

(assert (=> b!171144 d!43021))

(assert (=> b!171144 d!43015))

(assert (=> b!171144 d!43017))

(assert (=> b!171144 d!43023))

(declare-fun b!172041 () Bool)

(declare-fun res!77808 () Bool)

(declare-fun e!104285 () Bool)

(assert (=> b!172041 (=> (not res!77808) (not e!104285))))

(declare-fun height!94 (Conc!868) Int)

(declare-fun ++!674 (Conc!868 Conc!868) Conc!868)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!172041 (= res!77808 (>= (height!94 (++!674 (c!33816 e!103925) (c!33816 (ite c!33920 lt!54362 call!7534)))) (max!0 (height!94 (c!33816 e!103925)) (height!94 (c!33816 (ite c!33920 lt!54362 call!7534))))))))

(declare-fun b!172039 () Bool)

(declare-fun res!77809 () Bool)

(assert (=> b!172039 (=> (not res!77809) (not e!104285))))

(assert (=> b!172039 (= res!77809 (isBalanced!241 (++!674 (c!33816 e!103925) (c!33816 (ite c!33920 lt!54362 call!7534)))))))

(declare-fun lt!54635 () BalanceConc!1744)

(declare-fun b!172042 () Bool)

(assert (=> b!172042 (= e!104285 (= (list!1061 lt!54635) (++!670 (list!1061 e!103925) (list!1061 (ite c!33920 lt!54362 call!7534)))))))

(declare-fun b!172040 () Bool)

(declare-fun res!77807 () Bool)

(assert (=> b!172040 (=> (not res!77807) (not e!104285))))

(assert (=> b!172040 (= res!77807 (<= (height!94 (++!674 (c!33816 e!103925) (c!33816 (ite c!33920 lt!54362 call!7534)))) (+ (max!0 (height!94 (c!33816 e!103925)) (height!94 (c!33816 (ite c!33920 lt!54362 call!7534)))) 1)))))

(declare-fun d!43075 () Bool)

(assert (=> d!43075 e!104285))

(declare-fun res!77806 () Bool)

(assert (=> d!43075 (=> (not res!77806) (not e!104285))))

(declare-fun appendAssocInst!31 (Conc!868 Conc!868) Bool)

(assert (=> d!43075 (= res!77806 (appendAssocInst!31 (c!33816 e!103925) (c!33816 (ite c!33920 lt!54362 call!7534))))))

(assert (=> d!43075 (= lt!54635 (BalanceConc!1745 (++!674 (c!33816 e!103925) (c!33816 (ite c!33920 lt!54362 call!7534)))))))

(assert (=> d!43075 (= (++!672 e!103925 (ite c!33920 lt!54362 call!7534)) lt!54635)))

(assert (= (and d!43075 res!77806) b!172039))

(assert (= (and b!172039 res!77809) b!172040))

(assert (= (and b!172040 res!77807) b!172041))

(assert (= (and b!172041 res!77808) b!172042))

(declare-fun m!168711 () Bool)

(assert (=> b!172042 m!168711))

(declare-fun m!168713 () Bool)

(assert (=> b!172042 m!168713))

(declare-fun m!168715 () Bool)

(assert (=> b!172042 m!168715))

(assert (=> b!172042 m!168713))

(assert (=> b!172042 m!168715))

(declare-fun m!168717 () Bool)

(assert (=> b!172042 m!168717))

(declare-fun m!168719 () Bool)

(assert (=> b!172039 m!168719))

(assert (=> b!172039 m!168719))

(declare-fun m!168721 () Bool)

(assert (=> b!172039 m!168721))

(assert (=> b!172040 m!168719))

(declare-fun m!168723 () Bool)

(assert (=> b!172040 m!168723))

(assert (=> b!172040 m!168719))

(declare-fun m!168725 () Bool)

(assert (=> b!172040 m!168725))

(declare-fun m!168727 () Bool)

(assert (=> b!172040 m!168727))

(assert (=> b!172040 m!168725))

(assert (=> b!172040 m!168727))

(declare-fun m!168729 () Bool)

(assert (=> b!172040 m!168729))

(assert (=> b!172041 m!168719))

(assert (=> b!172041 m!168723))

(assert (=> b!172041 m!168719))

(assert (=> b!172041 m!168725))

(assert (=> b!172041 m!168727))

(assert (=> b!172041 m!168725))

(assert (=> b!172041 m!168727))

(assert (=> b!172041 m!168729))

(declare-fun m!168731 () Bool)

(assert (=> d!43075 m!168731))

(assert (=> d!43075 m!168719))

(assert (=> bm!7527 d!43075))

(declare-fun b!172045 () Bool)

(declare-fun res!77812 () Bool)

(declare-fun e!104286 () Bool)

(assert (=> b!172045 (=> (not res!77812) (not e!104286))))

(assert (=> b!172045 (= res!77812 (>= (height!94 (++!674 (c!33816 e!103849) (c!33816 (ite c!33889 lt!54311 call!7514)))) (max!0 (height!94 (c!33816 e!103849)) (height!94 (c!33816 (ite c!33889 lt!54311 call!7514))))))))

(declare-fun b!172043 () Bool)

(declare-fun res!77813 () Bool)

(assert (=> b!172043 (=> (not res!77813) (not e!104286))))

(assert (=> b!172043 (= res!77813 (isBalanced!241 (++!674 (c!33816 e!103849) (c!33816 (ite c!33889 lt!54311 call!7514)))))))

(declare-fun lt!54636 () BalanceConc!1744)

(declare-fun b!172046 () Bool)

(assert (=> b!172046 (= e!104286 (= (list!1061 lt!54636) (++!670 (list!1061 e!103849) (list!1061 (ite c!33889 lt!54311 call!7514)))))))

(declare-fun b!172044 () Bool)

(declare-fun res!77811 () Bool)

(assert (=> b!172044 (=> (not res!77811) (not e!104286))))

(assert (=> b!172044 (= res!77811 (<= (height!94 (++!674 (c!33816 e!103849) (c!33816 (ite c!33889 lt!54311 call!7514)))) (+ (max!0 (height!94 (c!33816 e!103849)) (height!94 (c!33816 (ite c!33889 lt!54311 call!7514)))) 1)))))

(declare-fun d!43077 () Bool)

(assert (=> d!43077 e!104286))

(declare-fun res!77810 () Bool)

(assert (=> d!43077 (=> (not res!77810) (not e!104286))))

(assert (=> d!43077 (= res!77810 (appendAssocInst!31 (c!33816 e!103849) (c!33816 (ite c!33889 lt!54311 call!7514))))))

(assert (=> d!43077 (= lt!54636 (BalanceConc!1745 (++!674 (c!33816 e!103849) (c!33816 (ite c!33889 lt!54311 call!7514)))))))

(assert (=> d!43077 (= (++!672 e!103849 (ite c!33889 lt!54311 call!7514)) lt!54636)))

(assert (= (and d!43077 res!77810) b!172043))

(assert (= (and b!172043 res!77813) b!172044))

(assert (= (and b!172044 res!77811) b!172045))

(assert (= (and b!172045 res!77812) b!172046))

(declare-fun m!168733 () Bool)

(assert (=> b!172046 m!168733))

(declare-fun m!168735 () Bool)

(assert (=> b!172046 m!168735))

(declare-fun m!168737 () Bool)

(assert (=> b!172046 m!168737))

(assert (=> b!172046 m!168735))

(assert (=> b!172046 m!168737))

(declare-fun m!168739 () Bool)

(assert (=> b!172046 m!168739))

(declare-fun m!168741 () Bool)

(assert (=> b!172043 m!168741))

(assert (=> b!172043 m!168741))

(declare-fun m!168743 () Bool)

(assert (=> b!172043 m!168743))

(assert (=> b!172044 m!168741))

(declare-fun m!168745 () Bool)

(assert (=> b!172044 m!168745))

(assert (=> b!172044 m!168741))

(declare-fun m!168747 () Bool)

(assert (=> b!172044 m!168747))

(declare-fun m!168749 () Bool)

(assert (=> b!172044 m!168749))

(assert (=> b!172044 m!168747))

(assert (=> b!172044 m!168749))

(declare-fun m!168751 () Bool)

(assert (=> b!172044 m!168751))

(assert (=> b!172045 m!168741))

(assert (=> b!172045 m!168745))

(assert (=> b!172045 m!168741))

(assert (=> b!172045 m!168747))

(assert (=> b!172045 m!168749))

(assert (=> b!172045 m!168747))

(assert (=> b!172045 m!168749))

(assert (=> b!172045 m!168751))

(declare-fun m!168753 () Bool)

(assert (=> d!43077 m!168753))

(assert (=> d!43077 m!168741))

(assert (=> bm!7507 d!43077))

(declare-fun d!43079 () Bool)

(assert (=> d!43079 (= (list!1064 lt!54422) (list!1067 (c!33818 lt!54422)))))

(declare-fun bs!16742 () Bool)

(assert (= bs!16742 d!43079))

(declare-fun m!168755 () Bool)

(assert (=> bs!16742 m!168755))

(assert (=> d!42833 d!43079))

(declare-fun d!43081 () Bool)

(declare-fun e!104289 () Bool)

(assert (=> d!43081 e!104289))

(declare-fun res!77816 () Bool)

(assert (=> d!43081 (=> (not res!77816) (not e!104289))))

(declare-fun lt!54639 () BalanceConc!1746)

(assert (=> d!43081 (= res!77816 (= (list!1064 lt!54639) (Cons!2920 (h!8317 tokens!465) Nil!2920)))))

(declare-fun choose!1839 (Token!790) BalanceConc!1746)

(assert (=> d!43081 (= lt!54639 (choose!1839 (h!8317 tokens!465)))))

(assert (=> d!43081 (= (singleton!39 (h!8317 tokens!465)) lt!54639)))

(declare-fun b!172049 () Bool)

(assert (=> b!172049 (= e!104289 (isBalanced!240 (c!33818 lt!54639)))))

(assert (= (and d!43081 res!77816) b!172049))

(declare-fun m!168757 () Bool)

(assert (=> d!43081 m!168757))

(declare-fun m!168759 () Bool)

(assert (=> d!43081 m!168759))

(declare-fun m!168761 () Bool)

(assert (=> b!172049 m!168761))

(assert (=> d!42833 d!43081))

(declare-fun lt!54640 () BalanceConc!1744)

(declare-fun d!43083 () Bool)

(assert (=> d!43083 (= (list!1061 lt!54640) (originalCharacters!566 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))))))

(assert (=> d!43083 (= lt!54640 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))))) (value!19221 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))))

(assert (=> d!43083 (= (charsOf!178 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))) lt!54640)))

(declare-fun b_lambda!3927 () Bool)

(assert (=> (not b_lambda!3927) (not d!43083)))

(declare-fun tb!6801 () Bool)

(declare-fun t!27262 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27262) tb!6801))

(declare-fun e!104290 () Bool)

(declare-fun tp!84499 () Bool)

(declare-fun b!172050 () Bool)

(assert (=> b!172050 (= e!104290 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))))) (value!19221 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) tp!84499))))

(declare-fun result!9526 () Bool)

(assert (=> tb!6801 (= result!9526 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))))) (value!19221 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465))))))) e!104290))))

(assert (= tb!6801 b!172050))

(declare-fun m!168763 () Bool)

(assert (=> b!172050 m!168763))

(declare-fun m!168765 () Bool)

(assert (=> tb!6801 m!168765))

(assert (=> d!43083 t!27262))

(declare-fun b_and!11369 () Bool)

(assert (= b_and!11361 (and (=> t!27262 result!9526) b_and!11369)))

(declare-fun t!27264 () Bool)

(declare-fun tb!6803 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27264) tb!6803))

(declare-fun result!9528 () Bool)

(assert (= result!9528 result!9526))

(assert (=> d!43083 t!27264))

(declare-fun b_and!11371 () Bool)

(assert (= b_and!11365 (and (=> t!27264 result!9528) b_and!11371)))

(declare-fun tb!6805 () Bool)

(declare-fun t!27266 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27266) tb!6805))

(declare-fun result!9530 () Bool)

(assert (= result!9530 result!9526))

(assert (=> d!43083 t!27266))

(declare-fun b_and!11373 () Bool)

(assert (= b_and!11363 (and (=> t!27266 result!9530) b_and!11373)))

(declare-fun t!27268 () Bool)

(declare-fun tb!6807 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27268) tb!6807))

(declare-fun result!9532 () Bool)

(assert (= result!9532 result!9526))

(assert (=> d!43083 t!27268))

(declare-fun b_and!11375 () Bool)

(assert (= b_and!11359 (and (=> t!27268 result!9532) b_and!11375)))

(declare-fun tb!6809 () Bool)

(declare-fun t!27270 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27270) tb!6809))

(declare-fun result!9534 () Bool)

(assert (= result!9534 result!9526))

(assert (=> d!43083 t!27270))

(declare-fun b_and!11377 () Bool)

(assert (= b_and!11367 (and (=> t!27270 result!9534) b_and!11377)))

(declare-fun m!168767 () Bool)

(assert (=> d!43083 m!168767))

(declare-fun m!168769 () Bool)

(assert (=> d!43083 m!168769))

(assert (=> bm!7477 d!43083))

(declare-fun d!43085 () Bool)

(declare-fun lt!54641 () BalanceConc!1744)

(assert (=> d!43085 (= (list!1061 lt!54641) (printList!93 thiss!17480 (list!1064 (singletonSeq!75 (h!8317 tokens!465)))))))

(assert (=> d!43085 (= lt!54641 (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)) 0 (BalanceConc!1745 Empty!868)))))

(assert (=> d!43085 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))) lt!54641)))

(declare-fun bs!16743 () Bool)

(assert (= bs!16743 d!43085))

(declare-fun m!168771 () Bool)

(assert (=> bs!16743 m!168771))

(assert (=> bs!16743 m!167183))

(assert (=> bs!16743 m!167791))

(assert (=> bs!16743 m!167791))

(declare-fun m!168773 () Bool)

(assert (=> bs!16743 m!168773))

(assert (=> bs!16743 m!167183))

(assert (=> bs!16743 m!167875))

(assert (=> b!171513 d!43085))

(assert (=> b!171513 d!42833))

(declare-fun d!43087 () Bool)

(declare-fun lt!54648 () BalanceConc!1744)

(assert (=> d!43087 (= (list!1061 lt!54648) (printListTailRec!58 thiss!17480 (dropList!90 (singletonSeq!75 (h!8317 tokens!465)) 0) (list!1061 (BalanceConc!1745 Empty!868))))))

(declare-fun e!104292 () BalanceConc!1744)

(assert (=> d!43087 (= lt!54648 e!104292)))

(declare-fun c!34016 () Bool)

(assert (=> d!43087 (= c!34016 (>= 0 (size!2416 (singletonSeq!75 (h!8317 tokens!465)))))))

(declare-fun e!104291 () Bool)

(assert (=> d!43087 e!104291))

(declare-fun res!77817 () Bool)

(assert (=> d!43087 (=> (not res!77817) (not e!104291))))

(assert (=> d!43087 (= res!77817 (>= 0 0))))

(assert (=> d!43087 (= (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)) 0 (BalanceConc!1745 Empty!868)) lt!54648)))

(declare-fun b!172051 () Bool)

(assert (=> b!172051 (= e!104291 (<= 0 (size!2416 (singletonSeq!75 (h!8317 tokens!465)))))))

(declare-fun b!172052 () Bool)

(assert (=> b!172052 (= e!104292 (BalanceConc!1745 Empty!868))))

(declare-fun b!172053 () Bool)

(assert (=> b!172053 (= e!104292 (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)) (+ 0 1) (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 (singletonSeq!75 (h!8317 tokens!465)) 0)))))))

(declare-fun lt!54646 () List!2930)

(assert (=> b!172053 (= lt!54646 (list!1064 (singletonSeq!75 (h!8317 tokens!465))))))

(declare-fun lt!54643 () Unit!2548)

(assert (=> b!172053 (= lt!54643 (lemmaDropApply!130 lt!54646 0))))

(assert (=> b!172053 (= (head!604 (drop!143 lt!54646 0)) (apply!422 lt!54646 0))))

(declare-fun lt!54645 () Unit!2548)

(assert (=> b!172053 (= lt!54645 lt!54643)))

(declare-fun lt!54642 () List!2930)

(assert (=> b!172053 (= lt!54642 (list!1064 (singletonSeq!75 (h!8317 tokens!465))))))

(declare-fun lt!54647 () Unit!2548)

(assert (=> b!172053 (= lt!54647 (lemmaDropTail!122 lt!54642 0))))

(assert (=> b!172053 (= (tail!344 (drop!143 lt!54642 0)) (drop!143 lt!54642 (+ 0 1)))))

(declare-fun lt!54644 () Unit!2548)

(assert (=> b!172053 (= lt!54644 lt!54647)))

(assert (= (and d!43087 res!77817) b!172051))

(assert (= (and d!43087 c!34016) b!172052))

(assert (= (and d!43087 (not c!34016)) b!172053))

(declare-fun m!168775 () Bool)

(assert (=> d!43087 m!168775))

(assert (=> d!43087 m!167183))

(declare-fun m!168777 () Bool)

(assert (=> d!43087 m!168777))

(declare-fun m!168779 () Bool)

(assert (=> d!43087 m!168779))

(assert (=> d!43087 m!167907))

(declare-fun m!168781 () Bool)

(assert (=> d!43087 m!168781))

(assert (=> d!43087 m!167907))

(assert (=> d!43087 m!167183))

(assert (=> d!43087 m!168779))

(assert (=> b!172051 m!167183))

(assert (=> b!172051 m!168777))

(declare-fun m!168783 () Bool)

(assert (=> b!172053 m!168783))

(declare-fun m!168785 () Bool)

(assert (=> b!172053 m!168785))

(declare-fun m!168787 () Bool)

(assert (=> b!172053 m!168787))

(declare-fun m!168789 () Bool)

(assert (=> b!172053 m!168789))

(assert (=> b!172053 m!167183))

(assert (=> b!172053 m!168787))

(assert (=> b!172053 m!167183))

(assert (=> b!172053 m!167791))

(declare-fun m!168791 () Bool)

(assert (=> b!172053 m!168791))

(declare-fun m!168793 () Bool)

(assert (=> b!172053 m!168793))

(assert (=> b!172053 m!168791))

(declare-fun m!168795 () Bool)

(assert (=> b!172053 m!168795))

(assert (=> b!172053 m!168783))

(declare-fun m!168797 () Bool)

(assert (=> b!172053 m!168797))

(assert (=> b!172053 m!168789))

(declare-fun m!168799 () Bool)

(assert (=> b!172053 m!168799))

(assert (=> b!172053 m!167183))

(assert (=> b!172053 m!168799))

(declare-fun m!168801 () Bool)

(assert (=> b!172053 m!168801))

(declare-fun m!168803 () Bool)

(assert (=> b!172053 m!168803))

(declare-fun m!168805 () Bool)

(assert (=> b!172053 m!168805))

(assert (=> b!171513 d!43087))

(declare-fun b!172055 () Bool)

(declare-fun e!104293 () Bool)

(declare-fun lt!54655 () Token!790)

(assert (=> b!172055 (= e!104293 (= (rule!1030 lt!54655) (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54655))))))))

(declare-fun b!172054 () Bool)

(declare-fun res!77818 () Bool)

(assert (=> b!172054 (=> (not res!77818) (not e!104293))))

(assert (=> b!172054 (= res!77818 (matchR!85 (regex!523 (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54655))))) (list!1061 (charsOf!178 lt!54655))))))

(declare-fun b!172057 () Bool)

(declare-fun e!104294 () Unit!2548)

(declare-fun Unit!2572 () Unit!2548)

(assert (=> b!172057 (= e!104294 Unit!2572)))

(declare-fun b!172056 () Bool)

(declare-fun Unit!2573 () Unit!2548)

(assert (=> b!172056 (= e!104294 Unit!2573)))

(declare-fun lt!54662 () List!2928)

(assert (=> b!172056 (= lt!54662 (++!670 call!7538 lt!54375))))

(declare-fun lt!54650 () Unit!2548)

(assert (=> b!172056 (= lt!54650 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!23 thiss!17480 (rule!1030 lt!54655) rules!1920 lt!54662))))

(assert (=> b!172056 (isEmpty!1257 (maxPrefixOneRule!73 thiss!17480 (rule!1030 lt!54655) lt!54662))))

(declare-fun lt!54659 () Unit!2548)

(assert (=> b!172056 (= lt!54659 lt!54650)))

(declare-fun lt!54664 () List!2928)

(assert (=> b!172056 (= lt!54664 (list!1061 (charsOf!178 lt!54655)))))

(declare-fun lt!54660 () Unit!2548)

(assert (=> b!172056 (= lt!54660 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!23 thiss!17480 (rule!1030 lt!54655) lt!54664 (++!670 call!7538 lt!54375)))))

(assert (=> b!172056 (not (matchR!85 (regex!523 (rule!1030 lt!54655)) lt!54664))))

(declare-fun lt!54658 () Unit!2548)

(assert (=> b!172056 (= lt!54658 lt!54660)))

(assert (=> b!172056 false))

(declare-fun d!43089 () Bool)

(assert (=> d!43089 (isDefined!171 (maxPrefix!139 thiss!17480 rules!1920 (++!670 call!7538 lt!54375)))))

(declare-fun lt!54663 () Unit!2548)

(assert (=> d!43089 (= lt!54663 e!104294)))

(declare-fun c!34017 () Bool)

(assert (=> d!43089 (= c!34017 (isEmpty!1257 (maxPrefix!139 thiss!17480 rules!1920 (++!670 call!7538 lt!54375))))))

(declare-fun lt!54653 () Unit!2548)

(declare-fun lt!54661 () Unit!2548)

(assert (=> d!43089 (= lt!54653 lt!54661)))

(assert (=> d!43089 e!104293))

(declare-fun res!77819 () Bool)

(assert (=> d!43089 (=> (not res!77819) (not e!104293))))

(assert (=> d!43089 (= res!77819 (isDefined!173 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54655)))))))

(assert (=> d!43089 (= lt!54661 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!23 thiss!17480 rules!1920 call!7538 lt!54655))))

(declare-fun lt!54651 () Unit!2548)

(declare-fun lt!54657 () Unit!2548)

(assert (=> d!43089 (= lt!54651 lt!54657)))

(declare-fun lt!54665 () List!2928)

(assert (=> d!43089 (isPrefix!230 lt!54665 (++!670 call!7538 lt!54375))))

(assert (=> d!43089 (= lt!54657 (lemmaPrefixStaysPrefixWhenAddingToSuffix!23 lt!54665 call!7538 lt!54375))))

(assert (=> d!43089 (= lt!54665 (list!1061 (charsOf!178 lt!54655)))))

(declare-fun lt!54649 () Unit!2548)

(declare-fun lt!54654 () Unit!2548)

(assert (=> d!43089 (= lt!54649 lt!54654)))

(declare-fun lt!54656 () List!2928)

(declare-fun lt!54652 () List!2928)

(assert (=> d!43089 (isPrefix!230 lt!54656 (++!670 lt!54656 lt!54652))))

(assert (=> d!43089 (= lt!54654 (lemmaConcatTwoListThenFirstIsPrefix!127 lt!54656 lt!54652))))

(assert (=> d!43089 (= lt!54652 (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 call!7538))))))

(assert (=> d!43089 (= lt!54656 (list!1061 (charsOf!178 lt!54655)))))

(assert (=> d!43089 (= lt!54655 (head!604 (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 call!7538))))))))

(assert (=> d!43089 (not (isEmpty!1248 rules!1920))))

(assert (=> d!43089 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7538 lt!54375) lt!54663)))

(assert (= (and d!43089 res!77819) b!172054))

(assert (= (and b!172054 res!77818) b!172055))

(assert (= (and d!43089 c!34017) b!172056))

(assert (= (and d!43089 (not c!34017)) b!172057))

(declare-fun m!168807 () Bool)

(assert (=> b!172055 m!168807))

(assert (=> b!172055 m!168807))

(declare-fun m!168809 () Bool)

(assert (=> b!172055 m!168809))

(assert (=> b!172054 m!168807))

(assert (=> b!172054 m!168807))

(assert (=> b!172054 m!168809))

(declare-fun m!168811 () Bool)

(assert (=> b!172054 m!168811))

(declare-fun m!168813 () Bool)

(assert (=> b!172054 m!168813))

(declare-fun m!168815 () Bool)

(assert (=> b!172054 m!168815))

(assert (=> b!172054 m!168811))

(assert (=> b!172054 m!168815))

(declare-fun m!168817 () Bool)

(assert (=> b!172056 m!168817))

(declare-fun m!168819 () Bool)

(assert (=> b!172056 m!168819))

(declare-fun m!168821 () Bool)

(assert (=> b!172056 m!168821))

(assert (=> b!172056 m!168817))

(declare-fun m!168823 () Bool)

(assert (=> b!172056 m!168823))

(declare-fun m!168825 () Bool)

(assert (=> b!172056 m!168825))

(declare-fun m!168827 () Bool)

(assert (=> b!172056 m!168827))

(assert (=> b!172056 m!168815))

(assert (=> b!172056 m!168811))

(assert (=> b!172056 m!168823))

(assert (=> b!172056 m!168815))

(declare-fun m!168829 () Bool)

(assert (=> d!43089 m!168829))

(declare-fun m!168831 () Bool)

(assert (=> d!43089 m!168831))

(assert (=> d!43089 m!168807))

(assert (=> d!43089 m!168807))

(declare-fun m!168833 () Bool)

(assert (=> d!43089 m!168833))

(assert (=> d!43089 m!167165))

(declare-fun m!168835 () Bool)

(assert (=> d!43089 m!168835))

(declare-fun m!168837 () Bool)

(assert (=> d!43089 m!168837))

(declare-fun m!168839 () Bool)

(assert (=> d!43089 m!168839))

(assert (=> d!43089 m!168823))

(declare-fun m!168841 () Bool)

(assert (=> d!43089 m!168841))

(assert (=> d!43089 m!168829))

(declare-fun m!168843 () Bool)

(assert (=> d!43089 m!168843))

(assert (=> d!43089 m!168837))

(declare-fun m!168845 () Bool)

(assert (=> d!43089 m!168845))

(assert (=> d!43089 m!168815))

(assert (=> d!43089 m!168811))

(declare-fun m!168847 () Bool)

(assert (=> d!43089 m!168847))

(assert (=> d!43089 m!168823))

(declare-fun m!168849 () Bool)

(assert (=> d!43089 m!168849))

(assert (=> d!43089 m!168841))

(declare-fun m!168851 () Bool)

(assert (=> d!43089 m!168851))

(assert (=> d!43089 m!168831))

(declare-fun m!168853 () Bool)

(assert (=> d!43089 m!168853))

(assert (=> d!43089 m!168823))

(assert (=> d!43089 m!168835))

(declare-fun m!168855 () Bool)

(assert (=> d!43089 m!168855))

(declare-fun m!168857 () Bool)

(assert (=> d!43089 m!168857))

(assert (=> d!43089 m!168841))

(declare-fun m!168859 () Bool)

(assert (=> d!43089 m!168859))

(assert (=> d!43089 m!168815))

(assert (=> b!171513 d!43089))

(declare-fun d!43091 () Bool)

(declare-fun res!77824 () Bool)

(declare-fun e!104299 () Bool)

(assert (=> d!43091 (=> res!77824 e!104299)))

(assert (=> d!43091 (= res!77824 ((_ is Nil!2919) rules!1920))))

(assert (=> d!43091 (= (noDuplicateTag!147 thiss!17480 rules!1920 Nil!2922) e!104299)))

(declare-fun b!172062 () Bool)

(declare-fun e!104300 () Bool)

(assert (=> b!172062 (= e!104299 e!104300)))

(declare-fun res!77825 () Bool)

(assert (=> b!172062 (=> (not res!77825) (not e!104300))))

(declare-fun contains!471 (List!2932 String!3805) Bool)

(assert (=> b!172062 (= res!77825 (not (contains!471 Nil!2922 (tag!701 (h!8316 rules!1920)))))))

(declare-fun b!172063 () Bool)

(assert (=> b!172063 (= e!104300 (noDuplicateTag!147 thiss!17480 (t!27131 rules!1920) (Cons!2922 (tag!701 (h!8316 rules!1920)) Nil!2922)))))

(assert (= (and d!43091 (not res!77824)) b!172062))

(assert (= (and b!172062 res!77825) b!172063))

(declare-fun m!168861 () Bool)

(assert (=> b!172062 m!168861))

(declare-fun m!168863 () Bool)

(assert (=> b!172063 m!168863))

(assert (=> b!171498 d!43091))

(declare-fun bs!16744 () Bool)

(declare-fun b!172069 () Bool)

(assert (= bs!16744 (and b!172069 b!171060)))

(declare-fun lambda!4937 () Int)

(assert (=> bs!16744 (= lambda!4937 lambda!4892)))

(declare-fun bs!16745 () Bool)

(assert (= bs!16745 (and b!172069 b!171309)))

(assert (=> bs!16745 (= lambda!4937 lambda!4895)))

(declare-fun bs!16746 () Bool)

(assert (= bs!16746 (and b!172069 d!42751)))

(assert (=> bs!16746 (not (= lambda!4937 lambda!4906))))

(declare-fun bs!16747 () Bool)

(assert (= bs!16747 (and b!172069 b!171518)))

(assert (=> bs!16747 (= lambda!4937 lambda!4913)))

(declare-fun bs!16748 () Bool)

(assert (= bs!16748 (and b!172069 b!171504)))

(assert (=> bs!16748 (= lambda!4937 lambda!4912)))

(declare-fun bs!16749 () Bool)

(assert (= bs!16749 (and b!172069 b!171062)))

(assert (=> bs!16749 (not (= lambda!4937 lambda!4891))))

(declare-fun bs!16750 () Bool)

(assert (= bs!16750 (and b!172069 d!42823)))

(assert (=> bs!16750 (not (= lambda!4937 lambda!4911))))

(declare-fun bs!16751 () Bool)

(assert (= bs!16751 (and b!172069 d!42863)))

(assert (=> bs!16751 (= lambda!4937 lambda!4926)))

(declare-fun bs!16752 () Bool)

(assert (= bs!16752 (and b!172069 b!171831)))

(assert (=> bs!16752 (= lambda!4937 lambda!4927)))

(declare-fun bs!16753 () Bool)

(assert (= bs!16753 (and b!172069 b!171387)))

(assert (=> bs!16753 (= lambda!4937 lambda!4907)))

(declare-fun b!172074 () Bool)

(declare-fun e!104307 () Bool)

(assert (=> b!172074 (= e!104307 true)))

(declare-fun b!172073 () Bool)

(declare-fun e!104306 () Bool)

(assert (=> b!172073 (= e!104306 e!104307)))

(declare-fun b!172072 () Bool)

(declare-fun e!104305 () Bool)

(assert (=> b!172072 (= e!104305 e!104306)))

(assert (=> b!172069 e!104305))

(assert (= b!172073 b!172074))

(assert (= b!172072 b!172073))

(assert (= (and b!172069 ((_ is Cons!2919) rules!1920)) b!172072))

(assert (=> b!172074 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4937))))

(assert (=> b!172074 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4937))))

(assert (=> b!172069 true))

(declare-fun bm!7572 () Bool)

(declare-fun call!7581 () BalanceConc!1744)

(declare-fun call!7579 () BalanceConc!1744)

(assert (=> bm!7572 (= call!7581 call!7579)))

(declare-fun b!172064 () Bool)

(declare-fun e!104304 () List!2928)

(assert (=> b!172064 (= e!104304 Nil!2918)))

(assert (=> b!172064 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 (dropList!90 lt!54114 0)))) (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (dropList!90 lt!54114 0))) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!54671 () Unit!2548)

(declare-fun Unit!2574 () Unit!2548)

(assert (=> b!172064 (= lt!54671 Unit!2574)))

(declare-fun call!7580 () List!2928)

(declare-fun lt!54668 () List!2928)

(declare-fun lt!54670 () Unit!2548)

(assert (=> b!172064 (= lt!54670 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7580 lt!54668))))

(assert (=> b!172064 false))

(declare-fun lt!54666 () Unit!2548)

(declare-fun Unit!2575 () Unit!2548)

(assert (=> b!172064 (= lt!54666 Unit!2575)))

(declare-fun b!172065 () Bool)

(declare-fun c!34020 () Bool)

(declare-fun lt!54669 () Option!320)

(assert (=> b!172065 (= c!34020 (and ((_ is Some!319) lt!54669) (not (= (_1!1630 (v!13762 lt!54669)) (h!8317 (dropList!90 lt!54114 0))))))))

(declare-fun e!104303 () List!2928)

(assert (=> b!172065 (= e!104303 e!104304)))

(declare-fun bm!7573 () Bool)

(declare-fun c!34018 () Bool)

(declare-fun c!34019 () Bool)

(assert (=> bm!7573 (= c!34018 c!34019)))

(declare-fun e!104302 () List!2928)

(declare-fun call!7577 () List!2928)

(assert (=> bm!7573 (= call!7577 (++!670 e!104302 (ite c!34019 lt!54668 call!7580)))))

(declare-fun b!172066 () Bool)

(assert (=> b!172066 (= e!104303 call!7577)))

(declare-fun b!172067 () Bool)

(assert (=> b!172067 (= e!104304 (++!670 call!7577 lt!54668))))

(declare-fun b!172068 () Bool)

(declare-fun e!104301 () List!2928)

(assert (=> b!172068 (= e!104301 Nil!2918)))

(assert (=> b!172069 (= e!104301 e!104303)))

(declare-fun lt!54667 () Unit!2548)

(assert (=> b!172069 (= lt!54667 (forallContained!90 (dropList!90 lt!54114 0) lambda!4937 (h!8317 (dropList!90 lt!54114 0))))))

(assert (=> b!172069 (= lt!54668 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 (dropList!90 lt!54114 0)) separatorToken!170))))

(assert (=> b!172069 (= lt!54669 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 (dropList!90 lt!54114 0)))) lt!54668)))))

(assert (=> b!172069 (= c!34019 (and ((_ is Some!319) lt!54669) (= (_1!1630 (v!13762 lt!54669)) (h!8317 (dropList!90 lt!54114 0)))))))

(declare-fun bm!7574 () Bool)

(assert (=> bm!7574 (= call!7579 (charsOf!178 (ite c!34019 (h!8317 (dropList!90 lt!54114 0)) (ite c!34020 separatorToken!170 (h!8317 (dropList!90 lt!54114 0))))))))

(declare-fun d!43093 () Bool)

(declare-fun c!34021 () Bool)

(assert (=> d!43093 (= c!34021 ((_ is Cons!2920) (dropList!90 lt!54114 0)))))

(assert (=> d!43093 (= (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (dropList!90 lt!54114 0) separatorToken!170) e!104301)))

(declare-fun bm!7575 () Bool)

(declare-fun call!7578 () List!2928)

(assert (=> bm!7575 (= call!7578 (list!1061 (ite c!34019 call!7579 call!7581)))))

(declare-fun b!172070 () Bool)

(assert (=> b!172070 (= e!104302 call!7578)))

(declare-fun bm!7576 () Bool)

(assert (=> bm!7576 (= call!7580 call!7578)))

(declare-fun b!172071 () Bool)

(assert (=> b!172071 (= e!104302 (list!1061 (charsOf!178 (h!8317 (dropList!90 lt!54114 0)))))))

(assert (= (and d!43093 c!34021) b!172069))

(assert (= (and d!43093 (not c!34021)) b!172068))

(assert (= (and b!172069 c!34019) b!172066))

(assert (= (and b!172069 (not c!34019)) b!172065))

(assert (= (and b!172065 c!34020) b!172067))

(assert (= (and b!172065 (not c!34020)) b!172064))

(assert (= (or b!172067 b!172064) bm!7572))

(assert (= (or b!172067 b!172064) bm!7576))

(assert (= (or b!172066 bm!7572) bm!7574))

(assert (= (or b!172066 bm!7576) bm!7575))

(assert (= (or b!172066 b!172067) bm!7573))

(assert (= (and bm!7573 c!34018) b!172070))

(assert (= (and bm!7573 (not c!34018)) b!172071))

(declare-fun m!168865 () Bool)

(assert (=> b!172064 m!168865))

(assert (=> b!172064 m!168865))

(declare-fun m!168867 () Bool)

(assert (=> b!172064 m!168867))

(assert (=> b!172064 m!168865))

(declare-fun m!168869 () Bool)

(assert (=> b!172064 m!168869))

(declare-fun m!168871 () Bool)

(assert (=> b!172064 m!168871))

(declare-fun m!168873 () Bool)

(assert (=> bm!7574 m!168873))

(declare-fun m!168875 () Bool)

(assert (=> bm!7573 m!168875))

(declare-fun m!168877 () Bool)

(assert (=> bm!7575 m!168877))

(declare-fun m!168879 () Bool)

(assert (=> b!172067 m!168879))

(declare-fun m!168881 () Bool)

(assert (=> b!172071 m!168881))

(assert (=> b!172071 m!168881))

(declare-fun m!168883 () Bool)

(assert (=> b!172071 m!168883))

(assert (=> b!172069 m!168881))

(assert (=> b!172069 m!168883))

(declare-fun m!168885 () Bool)

(assert (=> b!172069 m!168885))

(assert (=> b!172069 m!167859))

(declare-fun m!168887 () Bool)

(assert (=> b!172069 m!168887))

(declare-fun m!168889 () Bool)

(assert (=> b!172069 m!168889))

(assert (=> b!172069 m!168881))

(assert (=> b!172069 m!168883))

(assert (=> b!172069 m!168885))

(declare-fun m!168891 () Bool)

(assert (=> b!172069 m!168891))

(assert (=> d!42823 d!43093))

(declare-fun d!43095 () Bool)

(assert (=> d!43095 (= (list!1061 lt!54366) (list!1065 (c!33816 lt!54366)))))

(declare-fun bs!16754 () Bool)

(assert (= bs!16754 d!43095))

(declare-fun m!168893 () Bool)

(assert (=> bs!16754 m!168893))

(assert (=> d!42823 d!43095))

(declare-fun d!43097 () Bool)

(assert (=> d!43097 (= (dropList!90 lt!54114 0) (drop!143 (list!1067 (c!33818 lt!54114)) 0))))

(declare-fun bs!16755 () Bool)

(assert (= bs!16755 d!43097))

(assert (=> bs!16755 m!168631))

(assert (=> bs!16755 m!168631))

(declare-fun m!168895 () Bool)

(assert (=> bs!16755 m!168895))

(assert (=> d!42823 d!43097))

(assert (=> d!42823 d!42913))

(assert (=> d!42823 d!43039))

(declare-fun d!43099 () Bool)

(assert (=> d!43099 (forall!573 (dropList!90 lt!54114 0) lambda!4911)))

(declare-fun lt!54672 () Unit!2548)

(assert (=> d!43099 (= lt!54672 (choose!1835 (list!1064 lt!54114) (dropList!90 lt!54114 0) lambda!4911))))

(assert (=> d!43099 (forall!573 (list!1064 lt!54114) lambda!4911)))

(assert (=> d!43099 (= (lemmaContentSubsetPreservesForall!33 (list!1064 lt!54114) (dropList!90 lt!54114 0) lambda!4911) lt!54672)))

(declare-fun bs!16756 () Bool)

(assert (= bs!16756 d!43099))

(assert (=> bs!16756 m!167859))

(declare-fun m!168897 () Bool)

(assert (=> bs!16756 m!168897))

(assert (=> bs!16756 m!167817))

(assert (=> bs!16756 m!167859))

(declare-fun m!168899 () Bool)

(assert (=> bs!16756 m!168899))

(assert (=> bs!16756 m!167817))

(declare-fun m!168901 () Bool)

(assert (=> bs!16756 m!168901))

(assert (=> d!42823 d!43099))

(declare-fun d!43101 () Bool)

(assert (=> d!43101 (= (isEmpty!1253 (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))) ((_ is Nil!2920) (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))))))

(assert (=> d!42703 d!43101))

(declare-fun d!43103 () Bool)

(assert (=> d!43103 (= (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115)))) (list!1067 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))))))

(declare-fun bs!16757 () Bool)

(assert (= bs!16757 d!43103))

(declare-fun m!168903 () Bool)

(assert (=> bs!16757 m!168903))

(assert (=> d!42703 d!43103))

(declare-fun d!43105 () Bool)

(declare-fun lt!54675 () Bool)

(assert (=> d!43105 (= lt!54675 (isEmpty!1253 (list!1067 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115)))))))))

(assert (=> d!43105 (= lt!54675 (= (size!2419 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))) 0))))

(assert (=> d!43105 (= (isEmpty!1254 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))) lt!54675)))

(declare-fun bs!16758 () Bool)

(assert (= bs!16758 d!43105))

(assert (=> bs!16758 m!168903))

(assert (=> bs!16758 m!168903))

(declare-fun m!168905 () Bool)

(assert (=> bs!16758 m!168905))

(declare-fun m!168907 () Bool)

(assert (=> bs!16758 m!168907))

(assert (=> d!42703 d!43105))

(assert (=> b!171506 d!42901))

(declare-fun d!43107 () Bool)

(declare-fun e!104308 () Bool)

(assert (=> d!43107 e!104308))

(declare-fun res!77826 () Bool)

(assert (=> d!43107 (=> (not res!77826) (not e!104308))))

(declare-fun lt!54676 () BalanceConc!1744)

(assert (=> d!43107 (= res!77826 (= (list!1061 lt!54676) lt!54105))))

(assert (=> d!43107 (= lt!54676 (BalanceConc!1745 (fromList!108 lt!54105)))))

(assert (=> d!43107 (= (fromListB!167 lt!54105) lt!54676)))

(declare-fun b!172075 () Bool)

(assert (=> b!172075 (= e!104308 (isBalanced!241 (fromList!108 lt!54105)))))

(assert (= (and d!43107 res!77826) b!172075))

(declare-fun m!168909 () Bool)

(assert (=> d!43107 m!168909))

(declare-fun m!168911 () Bool)

(assert (=> d!43107 m!168911))

(assert (=> b!172075 m!168911))

(assert (=> b!172075 m!168911))

(declare-fun m!168913 () Bool)

(assert (=> b!172075 m!168913))

(assert (=> d!42787 d!43107))

(declare-fun d!43109 () Bool)

(assert (=> d!43109 (= (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) (list!1065 (c!33816 (charsOf!178 (h!8317 (t!27132 tokens!465))))))))

(declare-fun bs!16759 () Bool)

(assert (= bs!16759 d!43109))

(declare-fun m!168915 () Bool)

(assert (=> bs!16759 m!168915))

(assert (=> b!171311 d!43109))

(declare-fun d!43111 () Bool)

(declare-fun lt!54677 () BalanceConc!1744)

(assert (=> d!43111 (= (list!1061 lt!54677) (originalCharacters!566 (h!8317 (t!27132 tokens!465))))))

(assert (=> d!43111 (= lt!54677 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (value!19221 (h!8317 (t!27132 tokens!465)))))))

(assert (=> d!43111 (= (charsOf!178 (h!8317 (t!27132 tokens!465))) lt!54677)))

(declare-fun b_lambda!3929 () Bool)

(assert (=> (not b_lambda!3929) (not d!43111)))

(declare-fun t!27273 () Bool)

(declare-fun tb!6811 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27273) tb!6811))

(declare-fun b!172076 () Bool)

(declare-fun e!104309 () Bool)

(declare-fun tp!84500 () Bool)

(assert (=> b!172076 (= e!104309 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (value!19221 (h!8317 (t!27132 tokens!465)))))) tp!84500))))

(declare-fun result!9536 () Bool)

(assert (=> tb!6811 (= result!9536 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (value!19221 (h!8317 (t!27132 tokens!465))))) e!104309))))

(assert (= tb!6811 b!172076))

(declare-fun m!168917 () Bool)

(assert (=> b!172076 m!168917))

(declare-fun m!168919 () Bool)

(assert (=> tb!6811 m!168919))

(assert (=> d!43111 t!27273))

(declare-fun b_and!11379 () Bool)

(assert (= b_and!11377 (and (=> t!27273 result!9536) b_and!11379)))

(declare-fun tb!6813 () Bool)

(declare-fun t!27275 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27275) tb!6813))

(declare-fun result!9538 () Bool)

(assert (= result!9538 result!9536))

(assert (=> d!43111 t!27275))

(declare-fun b_and!11381 () Bool)

(assert (= b_and!11369 (and (=> t!27275 result!9538) b_and!11381)))

(declare-fun tb!6815 () Bool)

(declare-fun t!27277 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27277) tb!6815))

(declare-fun result!9540 () Bool)

(assert (= result!9540 result!9536))

(assert (=> d!43111 t!27277))

(declare-fun b_and!11383 () Bool)

(assert (= b_and!11371 (and (=> t!27277 result!9540) b_and!11383)))

(declare-fun t!27279 () Bool)

(declare-fun tb!6817 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27279) tb!6817))

(declare-fun result!9542 () Bool)

(assert (= result!9542 result!9536))

(assert (=> d!43111 t!27279))

(declare-fun b_and!11385 () Bool)

(assert (= b_and!11375 (and (=> t!27279 result!9542) b_and!11385)))

(declare-fun t!27281 () Bool)

(declare-fun tb!6819 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27281) tb!6819))

(declare-fun result!9544 () Bool)

(assert (= result!9544 result!9536))

(assert (=> d!43111 t!27281))

(declare-fun b_and!11387 () Bool)

(assert (= b_and!11373 (and (=> t!27281 result!9544) b_and!11387)))

(declare-fun m!168921 () Bool)

(assert (=> d!43111 m!168921))

(declare-fun m!168923 () Bool)

(assert (=> d!43111 m!168923))

(assert (=> b!171311 d!43111))

(declare-fun d!43113 () Bool)

(assert (=> d!43113 true))

(declare-fun order!1603 () Int)

(declare-fun lambda!4940 () Int)

(declare-fun dynLambda!1116 (Int Int) Int)

(assert (=> d!43113 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1116 order!1603 lambda!4940))))

(declare-fun Forall2!111 (Int) Bool)

(assert (=> d!43113 (= (equivClasses!164 (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (Forall2!111 lambda!4940))))

(declare-fun bs!16760 () Bool)

(assert (= bs!16760 d!43113))

(declare-fun m!168925 () Bool)

(assert (=> bs!16760 m!168925))

(assert (=> b!171430 d!43113))

(declare-fun bs!16761 () Bool)

(declare-fun d!43115 () Bool)

(assert (= bs!16761 (and d!43115 d!43113)))

(declare-fun lambda!4941 () Int)

(assert (=> bs!16761 (= (= (toValue!1186 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (= lambda!4941 lambda!4940))))

(assert (=> d!43115 true))

(assert (=> d!43115 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))) (dynLambda!1116 order!1603 lambda!4941))))

(assert (=> d!43115 (= (equivClasses!164 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))) (Forall2!111 lambda!4941))))

(declare-fun bs!16762 () Bool)

(assert (= bs!16762 d!43115))

(declare-fun m!168927 () Bool)

(assert (=> bs!16762 m!168927))

(assert (=> b!171579 d!43115))

(declare-fun d!43117 () Bool)

(declare-fun lt!54712 () Int)

(assert (=> d!43117 (>= lt!54712 0)))

(declare-fun e!104316 () Int)

(assert (=> d!43117 (= lt!54712 e!104316)))

(declare-fun c!34024 () Bool)

(assert (=> d!43117 (= c!34024 ((_ is Nil!2918) lt!54326))))

(assert (=> d!43117 (= (size!2417 lt!54326) lt!54712)))

(declare-fun b!172089 () Bool)

(assert (=> b!172089 (= e!104316 0)))

(declare-fun b!172090 () Bool)

(assert (=> b!172090 (= e!104316 (+ 1 (size!2417 (t!27130 lt!54326))))))

(assert (= (and d!43117 c!34024) b!172089))

(assert (= (and d!43117 (not c!34024)) b!172090))

(declare-fun m!168929 () Bool)

(assert (=> b!172090 m!168929))

(assert (=> b!171399 d!43117))

(assert (=> b!171399 d!42981))

(declare-fun d!43119 () Bool)

(declare-fun lt!54713 () Int)

(assert (=> d!43119 (>= lt!54713 0)))

(declare-fun e!104317 () Int)

(assert (=> d!43119 (= lt!54713 e!104317)))

(declare-fun c!34025 () Bool)

(assert (=> d!43119 (= c!34025 ((_ is Nil!2918) lt!54111))))

(assert (=> d!43119 (= (size!2417 lt!54111) lt!54713)))

(declare-fun b!172091 () Bool)

(assert (=> b!172091 (= e!104317 0)))

(declare-fun b!172092 () Bool)

(assert (=> b!172092 (= e!104317 (+ 1 (size!2417 (t!27130 lt!54111))))))

(assert (= (and d!43119 c!34025) b!172091))

(assert (= (and d!43119 (not c!34025)) b!172092))

(declare-fun m!168931 () Bool)

(assert (=> b!172092 m!168931))

(assert (=> b!171399 d!43119))

(declare-fun d!43121 () Bool)

(declare-fun charsToBigInt!0 (List!2927 Int) Int)

(assert (=> d!43121 (= (inv!15 (value!19221 (h!8317 tokens!465))) (= (charsToBigInt!0 (text!4264 (value!19221 (h!8317 tokens!465))) 0) (value!19216 (value!19221 (h!8317 tokens!465)))))))

(declare-fun bs!16763 () Bool)

(assert (= bs!16763 d!43121))

(declare-fun m!168933 () Bool)

(assert (=> bs!16763 m!168933))

(assert (=> b!171584 d!43121))

(declare-fun b!172113 () Bool)

(declare-fun e!104327 () Bool)

(declare-fun e!104326 () Bool)

(assert (=> b!172113 (= e!104327 e!104326)))

(declare-fun res!77850 () Bool)

(assert (=> b!172113 (=> (not res!77850) (not e!104326))))

(declare-fun height!95 (Conc!869) Int)

(assert (=> b!172113 (= res!77850 (<= (- 1) (- (height!95 (left!2233 (c!33818 lt!54422))) (height!95 (right!2563 (c!33818 lt!54422))))))))

(declare-fun b!172114 () Bool)

(declare-fun res!77849 () Bool)

(assert (=> b!172114 (=> (not res!77849) (not e!104326))))

(assert (=> b!172114 (= res!77849 (isBalanced!240 (left!2233 (c!33818 lt!54422))))))

(declare-fun d!43123 () Bool)

(declare-fun res!77853 () Bool)

(assert (=> d!43123 (=> res!77853 e!104327)))

(assert (=> d!43123 (= res!77853 (not ((_ is Node!869) (c!33818 lt!54422))))))

(assert (=> d!43123 (= (isBalanced!240 (c!33818 lt!54422)) e!104327)))

(declare-fun b!172115 () Bool)

(declare-fun res!77852 () Bool)

(assert (=> b!172115 (=> (not res!77852) (not e!104326))))

(assert (=> b!172115 (= res!77852 (not (isEmpty!1254 (left!2233 (c!33818 lt!54422)))))))

(declare-fun b!172116 () Bool)

(declare-fun res!77854 () Bool)

(assert (=> b!172116 (=> (not res!77854) (not e!104326))))

(assert (=> b!172116 (= res!77854 (<= (- (height!95 (left!2233 (c!33818 lt!54422))) (height!95 (right!2563 (c!33818 lt!54422)))) 1))))

(declare-fun b!172117 () Bool)

(declare-fun res!77851 () Bool)

(assert (=> b!172117 (=> (not res!77851) (not e!104326))))

(assert (=> b!172117 (= res!77851 (isBalanced!240 (right!2563 (c!33818 lt!54422))))))

(declare-fun b!172118 () Bool)

(assert (=> b!172118 (= e!104326 (not (isEmpty!1254 (right!2563 (c!33818 lt!54422)))))))

(assert (= (and d!43123 (not res!77853)) b!172113))

(assert (= (and b!172113 res!77850) b!172116))

(assert (= (and b!172116 res!77854) b!172114))

(assert (= (and b!172114 res!77849) b!172117))

(assert (= (and b!172117 res!77851) b!172115))

(assert (= (and b!172115 res!77852) b!172118))

(declare-fun m!169011 () Bool)

(assert (=> b!172114 m!169011))

(declare-fun m!169013 () Bool)

(assert (=> b!172115 m!169013))

(declare-fun m!169015 () Bool)

(assert (=> b!172118 m!169015))

(declare-fun m!169017 () Bool)

(assert (=> b!172113 m!169017))

(declare-fun m!169019 () Bool)

(assert (=> b!172113 m!169019))

(declare-fun m!169023 () Bool)

(assert (=> b!172117 m!169023))

(assert (=> b!172116 m!169017))

(assert (=> b!172116 m!169019))

(assert (=> b!171555 d!43123))

(declare-fun d!43135 () Bool)

(declare-fun c!34029 () Bool)

(assert (=> d!43135 (= c!34029 ((_ is Node!868) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))))

(declare-fun e!104330 () Bool)

(assert (=> d!43135 (= (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))) e!104330)))

(declare-fun b!172123 () Bool)

(assert (=> b!172123 (= e!104330 (inv!3749 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))))

(declare-fun b!172124 () Bool)

(declare-fun e!104331 () Bool)

(assert (=> b!172124 (= e!104330 e!104331)))

(declare-fun res!77857 () Bool)

(assert (=> b!172124 (= res!77857 (not ((_ is Leaf!1469) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))))))))

(assert (=> b!172124 (=> res!77857 e!104331)))

(declare-fun b!172125 () Bool)

(assert (=> b!172125 (= e!104331 (inv!3750 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))))

(assert (= (and d!43135 c!34029) b!172123))

(assert (= (and d!43135 (not c!34029)) b!172124))

(assert (= (and b!172124 (not res!77857)) b!172125))

(declare-fun m!169035 () Bool)

(assert (=> b!172123 m!169035))

(declare-fun m!169037 () Bool)

(assert (=> b!172125 m!169037))

(assert (=> b!171194 d!43135))

(declare-fun d!43141 () Bool)

(assert (=> d!43141 (= (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))) (isBalanced!241 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))))))

(declare-fun bs!16768 () Bool)

(assert (= bs!16768 d!43141))

(declare-fun m!169047 () Bool)

(assert (=> bs!16768 m!169047))

(assert (=> tb!6719 d!43141))

(declare-fun b!172129 () Bool)

(declare-fun e!104335 () List!2928)

(assert (=> b!172129 (= e!104335 (_2!1630 (get!801 lt!54473)))))

(declare-fun b!172132 () Bool)

(declare-fun e!104334 () Bool)

(declare-fun lt!54735 () List!2928)

(assert (=> b!172132 (= e!104334 (or (not (= (_2!1630 (get!801 lt!54473)) Nil!2918)) (= lt!54735 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))))))))

(declare-fun d!43145 () Bool)

(assert (=> d!43145 e!104334))

(declare-fun res!77858 () Bool)

(assert (=> d!43145 (=> (not res!77858) (not e!104334))))

(assert (=> d!43145 (= res!77858 (= (content!400 lt!54735) ((_ map or) (content!400 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) (content!400 (_2!1630 (get!801 lt!54473))))))))

(assert (=> d!43145 (= lt!54735 e!104335)))

(declare-fun c!34031 () Bool)

(assert (=> d!43145 (= c!34031 ((_ is Nil!2918) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))))))

(assert (=> d!43145 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473)))) (_2!1630 (get!801 lt!54473))) lt!54735)))

(declare-fun b!172131 () Bool)

(declare-fun res!77859 () Bool)

(assert (=> b!172131 (=> (not res!77859) (not e!104334))))

(assert (=> b!172131 (= res!77859 (= (size!2417 lt!54735) (+ (size!2417 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) (size!2417 (_2!1630 (get!801 lt!54473))))))))

(declare-fun b!172130 () Bool)

(assert (=> b!172130 (= e!104335 (Cons!2918 (h!8315 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) (++!670 (t!27130 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54473))))) (_2!1630 (get!801 lt!54473)))))))

(assert (= (and d!43145 c!34031) b!172129))

(assert (= (and d!43145 (not c!34031)) b!172130))

(assert (= (and d!43145 res!77858) b!172131))

(assert (= (and b!172131 res!77859) b!172132))

(declare-fun m!169057 () Bool)

(assert (=> d!43145 m!169057))

(assert (=> d!43145 m!168181))

(declare-fun m!169059 () Bool)

(assert (=> d!43145 m!169059))

(declare-fun m!169061 () Bool)

(assert (=> d!43145 m!169061))

(declare-fun m!169063 () Bool)

(assert (=> b!172131 m!169063))

(assert (=> b!172131 m!168181))

(declare-fun m!169065 () Bool)

(assert (=> b!172131 m!169065))

(assert (=> b!172131 m!168195))

(declare-fun m!169067 () Bool)

(assert (=> b!172130 m!169067))

(assert (=> b!171743 d!43145))

(assert (=> b!171743 d!42999))

(assert (=> b!171743 d!43001))

(assert (=> b!171743 d!42935))

(declare-fun b!172133 () Bool)

(declare-fun e!104336 () List!2928)

(assert (=> b!172133 (= e!104336 Nil!2918)))

(declare-fun d!43149 () Bool)

(declare-fun c!34032 () Bool)

(assert (=> d!43149 (= c!34032 ((_ is Empty!868) (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0))))))

(assert (=> d!43149 (= (list!1065 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0))) e!104336)))

(declare-fun b!172134 () Bool)

(declare-fun e!104337 () List!2928)

(assert (=> b!172134 (= e!104336 e!104337)))

(declare-fun c!34033 () Bool)

(assert (=> b!172134 (= c!34033 ((_ is Leaf!1469) (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0))))))

(declare-fun b!172136 () Bool)

(assert (=> b!172136 (= e!104337 (++!670 (list!1065 (left!2232 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0)))) (list!1065 (right!2562 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0))))))))

(declare-fun b!172135 () Bool)

(assert (=> b!172135 (= e!104337 (list!1066 (xs!3463 (c!33816 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 0)))))))

(assert (= (and d!43149 c!34032) b!172133))

(assert (= (and d!43149 (not c!34032)) b!172134))

(assert (= (and b!172134 c!34033) b!172135))

(assert (= (and b!172134 (not c!34033)) b!172136))

(declare-fun m!169069 () Bool)

(assert (=> b!172136 m!169069))

(declare-fun m!169071 () Bool)

(assert (=> b!172136 m!169071))

(assert (=> b!172136 m!169069))

(assert (=> b!172136 m!169071))

(declare-fun m!169073 () Bool)

(assert (=> b!172136 m!169073))

(declare-fun m!169075 () Bool)

(assert (=> b!172135 m!169075))

(assert (=> d!42781 d!43149))

(declare-fun d!43151 () Bool)

(assert (=> d!43151 (= (tail!344 (drop!143 lt!54398 0)) (t!27132 (drop!143 lt!54398 0)))))

(assert (=> b!171534 d!43151))

(declare-fun d!43153 () Bool)

(assert (=> d!43153 (= (tail!344 (drop!143 lt!54398 0)) (drop!143 lt!54398 (+ 0 1)))))

(declare-fun lt!54741 () Unit!2548)

(declare-fun choose!1843 (List!2930 Int) Unit!2548)

(assert (=> d!43153 (= lt!54741 (choose!1843 lt!54398 0))))

(declare-fun e!104351 () Bool)

(assert (=> d!43153 e!104351))

(declare-fun res!77868 () Bool)

(assert (=> d!43153 (=> (not res!77868) (not e!104351))))

(assert (=> d!43153 (= res!77868 (>= 0 0))))

(assert (=> d!43153 (= (lemmaDropTail!122 lt!54398 0) lt!54741)))

(declare-fun b!172152 () Bool)

(assert (=> b!172152 (= e!104351 (< 0 (size!2418 lt!54398)))))

(assert (= (and d!43153 res!77868) b!172152))

(assert (=> d!43153 m!167911))

(assert (=> d!43153 m!167911))

(assert (=> d!43153 m!167913))

(assert (=> d!43153 m!167931))

(declare-fun m!169101 () Bool)

(assert (=> d!43153 m!169101))

(declare-fun m!169103 () Bool)

(assert (=> b!172152 m!169103))

(assert (=> b!171534 d!43153))

(assert (=> b!171534 d!43033))

(declare-fun d!43167 () Bool)

(assert (=> d!43167 (= (head!604 (drop!143 lt!54402 0)) (apply!422 lt!54402 0))))

(declare-fun lt!54744 () Unit!2548)

(declare-fun choose!1844 (List!2930 Int) Unit!2548)

(assert (=> d!43167 (= lt!54744 (choose!1844 lt!54402 0))))

(declare-fun e!104360 () Bool)

(assert (=> d!43167 e!104360))

(declare-fun res!77871 () Bool)

(assert (=> d!43167 (=> (not res!77871) (not e!104360))))

(assert (=> d!43167 (= res!77871 (>= 0 0))))

(assert (=> d!43167 (= (lemmaDropApply!130 lt!54402 0) lt!54744)))

(declare-fun b!172170 () Bool)

(assert (=> b!172170 (= e!104360 (< 0 (size!2418 lt!54402)))))

(assert (= (and d!43167 res!77871) b!172170))

(assert (=> d!43167 m!167919))

(assert (=> d!43167 m!167919))

(assert (=> d!43167 m!167921))

(assert (=> d!43167 m!167925))

(declare-fun m!169121 () Bool)

(assert (=> d!43167 m!169121))

(declare-fun m!169123 () Bool)

(assert (=> b!172170 m!169123))

(assert (=> b!171534 d!43167))

(declare-fun b!172189 () Bool)

(declare-fun e!104372 () Int)

(declare-fun e!104375 () Int)

(assert (=> b!172189 (= e!104372 e!104375)))

(declare-fun c!34054 () Bool)

(declare-fun call!7587 () Int)

(assert (=> b!172189 (= c!34054 (>= 0 call!7587))))

(declare-fun bm!7582 () Bool)

(assert (=> bm!7582 (= call!7587 (size!2418 lt!54398))))

(declare-fun b!172190 () Bool)

(declare-fun e!104374 () List!2930)

(assert (=> b!172190 (= e!104374 lt!54398)))

(declare-fun b!172191 () Bool)

(assert (=> b!172191 (= e!104375 0)))

(declare-fun b!172192 () Bool)

(declare-fun e!104373 () Bool)

(declare-fun lt!54747 () List!2930)

(assert (=> b!172192 (= e!104373 (= (size!2418 lt!54747) e!104372))))

(declare-fun c!34056 () Bool)

(assert (=> b!172192 (= c!34056 (<= 0 0))))

(declare-fun d!43175 () Bool)

(assert (=> d!43175 e!104373))

(declare-fun res!77874 () Bool)

(assert (=> d!43175 (=> (not res!77874) (not e!104373))))

(assert (=> d!43175 (= res!77874 (= ((_ map implies) (content!402 lt!54747) (content!402 lt!54398)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104371 () List!2930)

(assert (=> d!43175 (= lt!54747 e!104371)))

(declare-fun c!34055 () Bool)

(assert (=> d!43175 (= c!34055 ((_ is Nil!2920) lt!54398))))

(assert (=> d!43175 (= (drop!143 lt!54398 0) lt!54747)))

(declare-fun b!172193 () Bool)

(assert (=> b!172193 (= e!104371 e!104374)))

(declare-fun c!34053 () Bool)

(assert (=> b!172193 (= c!34053 (<= 0 0))))

(declare-fun b!172194 () Bool)

(assert (=> b!172194 (= e!104375 (- call!7587 0))))

(declare-fun b!172195 () Bool)

(assert (=> b!172195 (= e!104372 call!7587)))

(declare-fun b!172196 () Bool)

(assert (=> b!172196 (= e!104374 (drop!143 (t!27132 lt!54398) (- 0 1)))))

(declare-fun b!172197 () Bool)

(assert (=> b!172197 (= e!104371 Nil!2920)))

(assert (= (and d!43175 c!34055) b!172197))

(assert (= (and d!43175 (not c!34055)) b!172193))

(assert (= (and b!172193 c!34053) b!172190))

(assert (= (and b!172193 (not c!34053)) b!172196))

(assert (= (and d!43175 res!77874) b!172192))

(assert (= (and b!172192 c!34056) b!172195))

(assert (= (and b!172192 (not c!34056)) b!172189))

(assert (= (and b!172189 c!34054) b!172191))

(assert (= (and b!172189 (not c!34054)) b!172194))

(assert (= (or b!172195 b!172189 b!172194) bm!7582))

(assert (=> bm!7582 m!169103))

(declare-fun m!169125 () Bool)

(assert (=> b!172192 m!169125))

(declare-fun m!169127 () Bool)

(assert (=> d!43175 m!169127))

(declare-fun m!169129 () Bool)

(assert (=> d!43175 m!169129))

(declare-fun m!169131 () Bool)

(assert (=> b!172196 m!169131))

(assert (=> b!171534 d!43175))

(declare-fun d!43177 () Bool)

(declare-fun lt!54750 () Token!790)

(assert (=> d!43177 (contains!467 lt!54402 lt!54750)))

(declare-fun e!104380 () Token!790)

(assert (=> d!43177 (= lt!54750 e!104380)))

(declare-fun c!34059 () Bool)

(assert (=> d!43177 (= c!34059 (= 0 0))))

(declare-fun e!104381 () Bool)

(assert (=> d!43177 e!104381))

(declare-fun res!77877 () Bool)

(assert (=> d!43177 (=> (not res!77877) (not e!104381))))

(assert (=> d!43177 (= res!77877 (<= 0 0))))

(assert (=> d!43177 (= (apply!422 lt!54402 0) lt!54750)))

(declare-fun b!172204 () Bool)

(assert (=> b!172204 (= e!104381 (< 0 (size!2418 lt!54402)))))

(declare-fun b!172205 () Bool)

(assert (=> b!172205 (= e!104380 (head!604 lt!54402))))

(declare-fun b!172206 () Bool)

(assert (=> b!172206 (= e!104380 (apply!422 (tail!344 lt!54402) (- 0 1)))))

(assert (= (and d!43177 res!77877) b!172204))

(assert (= (and d!43177 c!34059) b!172205))

(assert (= (and d!43177 (not c!34059)) b!172206))

(declare-fun m!169133 () Bool)

(assert (=> d!43177 m!169133))

(assert (=> b!172204 m!169123))

(declare-fun m!169135 () Bool)

(assert (=> b!172205 m!169135))

(declare-fun m!169137 () Bool)

(assert (=> b!172206 m!169137))

(assert (=> b!172206 m!169137))

(declare-fun m!169139 () Bool)

(assert (=> b!172206 m!169139))

(assert (=> b!171534 d!43177))

(declare-fun d!43179 () Bool)

(declare-fun lt!54757 () BalanceConc!1744)

(assert (=> d!43179 (= (list!1061 lt!54757) (printListTailRec!58 thiss!17480 (dropList!90 lt!54116 (+ 0 1)) (list!1061 (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 lt!54116 0))))))))

(declare-fun e!104383 () BalanceConc!1744)

(assert (=> d!43179 (= lt!54757 e!104383)))

(declare-fun c!34060 () Bool)

(assert (=> d!43179 (= c!34060 (>= (+ 0 1) (size!2416 lt!54116)))))

(declare-fun e!104382 () Bool)

(assert (=> d!43179 e!104382))

(declare-fun res!77878 () Bool)

(assert (=> d!43179 (=> (not res!77878) (not e!104382))))

(assert (=> d!43179 (= res!77878 (>= (+ 0 1) 0))))

(assert (=> d!43179 (= (printTailRec!103 thiss!17480 lt!54116 (+ 0 1) (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 lt!54116 0)))) lt!54757)))

(declare-fun b!172207 () Bool)

(assert (=> b!172207 (= e!104382 (<= (+ 0 1) (size!2416 lt!54116)))))

(declare-fun b!172208 () Bool)

(assert (=> b!172208 (= e!104383 (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 lt!54116 0))))))

(declare-fun b!172209 () Bool)

(assert (=> b!172209 (= e!104383 (printTailRec!103 thiss!17480 lt!54116 (+ 0 1 1) (++!672 (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 lt!54116 0))) (charsOf!178 (apply!423 lt!54116 (+ 0 1))))))))

(declare-fun lt!54755 () List!2930)

(assert (=> b!172209 (= lt!54755 (list!1064 lt!54116))))

(declare-fun lt!54752 () Unit!2548)

(assert (=> b!172209 (= lt!54752 (lemmaDropApply!130 lt!54755 (+ 0 1)))))

(assert (=> b!172209 (= (head!604 (drop!143 lt!54755 (+ 0 1))) (apply!422 lt!54755 (+ 0 1)))))

(declare-fun lt!54754 () Unit!2548)

(assert (=> b!172209 (= lt!54754 lt!54752)))

(declare-fun lt!54751 () List!2930)

(assert (=> b!172209 (= lt!54751 (list!1064 lt!54116))))

(declare-fun lt!54756 () Unit!2548)

(assert (=> b!172209 (= lt!54756 (lemmaDropTail!122 lt!54751 (+ 0 1)))))

(assert (=> b!172209 (= (tail!344 (drop!143 lt!54751 (+ 0 1))) (drop!143 lt!54751 (+ 0 1 1)))))

(declare-fun lt!54753 () Unit!2548)

(assert (=> b!172209 (= lt!54753 lt!54756)))

(assert (= (and d!43179 res!77878) b!172207))

(assert (= (and d!43179 c!34060) b!172208))

(assert (= (and d!43179 (not c!34060)) b!172209))

(declare-fun m!169141 () Bool)

(assert (=> d!43179 m!169141))

(assert (=> d!43179 m!167903))

(declare-fun m!169143 () Bool)

(assert (=> d!43179 m!169143))

(declare-fun m!169145 () Bool)

(assert (=> d!43179 m!169145))

(declare-fun m!169147 () Bool)

(assert (=> d!43179 m!169147))

(assert (=> d!43179 m!167927))

(assert (=> d!43179 m!169145))

(assert (=> d!43179 m!169143))

(assert (=> b!172207 m!167903))

(declare-fun m!169149 () Bool)

(assert (=> b!172209 m!169149))

(declare-fun m!169151 () Bool)

(assert (=> b!172209 m!169151))

(declare-fun m!169153 () Bool)

(assert (=> b!172209 m!169153))

(declare-fun m!169155 () Bool)

(assert (=> b!172209 m!169155))

(assert (=> b!172209 m!169153))

(assert (=> b!172209 m!167897))

(declare-fun m!169157 () Bool)

(assert (=> b!172209 m!169157))

(declare-fun m!169159 () Bool)

(assert (=> b!172209 m!169159))

(assert (=> b!172209 m!169157))

(declare-fun m!169161 () Bool)

(assert (=> b!172209 m!169161))

(assert (=> b!172209 m!169149))

(declare-fun m!169163 () Bool)

(assert (=> b!172209 m!169163))

(assert (=> b!172209 m!167927))

(assert (=> b!172209 m!169155))

(declare-fun m!169165 () Bool)

(assert (=> b!172209 m!169165))

(assert (=> b!172209 m!169165))

(declare-fun m!169167 () Bool)

(assert (=> b!172209 m!169167))

(declare-fun m!169169 () Bool)

(assert (=> b!172209 m!169169))

(declare-fun m!169171 () Bool)

(assert (=> b!172209 m!169171))

(assert (=> b!171534 d!43179))

(declare-fun d!43181 () Bool)

(declare-fun lt!54758 () BalanceConc!1744)

(assert (=> d!43181 (= (list!1061 lt!54758) (originalCharacters!566 (apply!423 lt!54116 0)))))

(assert (=> d!43181 (= lt!54758 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0)))) (value!19221 (apply!423 lt!54116 0))))))

(assert (=> d!43181 (= (charsOf!178 (apply!423 lt!54116 0)) lt!54758)))

(declare-fun b_lambda!3933 () Bool)

(assert (=> (not b_lambda!3933) (not d!43181)))

(declare-fun tb!6831 () Bool)

(declare-fun t!27295 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27295) tb!6831))

(declare-fun b!172210 () Bool)

(declare-fun e!104384 () Bool)

(declare-fun tp!84502 () Bool)

(assert (=> b!172210 (= e!104384 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0)))) (value!19221 (apply!423 lt!54116 0))))) tp!84502))))

(declare-fun result!9556 () Bool)

(assert (=> tb!6831 (= result!9556 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0)))) (value!19221 (apply!423 lt!54116 0)))) e!104384))))

(assert (= tb!6831 b!172210))

(declare-fun m!169173 () Bool)

(assert (=> b!172210 m!169173))

(declare-fun m!169175 () Bool)

(assert (=> tb!6831 m!169175))

(assert (=> d!43181 t!27295))

(declare-fun b_and!11399 () Bool)

(assert (= b_and!11379 (and (=> t!27295 result!9556) b_and!11399)))

(declare-fun tb!6833 () Bool)

(declare-fun t!27297 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27297) tb!6833))

(declare-fun result!9558 () Bool)

(assert (= result!9558 result!9556))

(assert (=> d!43181 t!27297))

(declare-fun b_and!11401 () Bool)

(assert (= b_and!11385 (and (=> t!27297 result!9558) b_and!11401)))

(declare-fun t!27299 () Bool)

(declare-fun tb!6835 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27299) tb!6835))

(declare-fun result!9560 () Bool)

(assert (= result!9560 result!9556))

(assert (=> d!43181 t!27299))

(declare-fun b_and!11403 () Bool)

(assert (= b_and!11383 (and (=> t!27299 result!9560) b_and!11403)))

(declare-fun t!27301 () Bool)

(declare-fun tb!6837 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27301) tb!6837))

(declare-fun result!9562 () Bool)

(assert (= result!9562 result!9556))

(assert (=> d!43181 t!27301))

(declare-fun b_and!11405 () Bool)

(assert (= b_and!11387 (and (=> t!27301 result!9562) b_and!11405)))

(declare-fun t!27303 () Bool)

(declare-fun tb!6839 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27303) tb!6839))

(declare-fun result!9564 () Bool)

(assert (= result!9564 result!9556))

(assert (=> d!43181 t!27303))

(declare-fun b_and!11407 () Bool)

(assert (= b_and!11381 (and (=> t!27303 result!9564) b_and!11407)))

(declare-fun m!169177 () Bool)

(assert (=> d!43181 m!169177))

(declare-fun m!169179 () Bool)

(assert (=> d!43181 m!169179))

(assert (=> b!171534 d!43181))

(declare-fun b!172215 () Bool)

(declare-fun e!104388 () Int)

(declare-fun e!104391 () Int)

(assert (=> b!172215 (= e!104388 e!104391)))

(declare-fun c!34064 () Bool)

(declare-fun call!7588 () Int)

(assert (=> b!172215 (= c!34064 (>= (+ 0 1) call!7588))))

(declare-fun bm!7583 () Bool)

(assert (=> bm!7583 (= call!7588 (size!2418 lt!54398))))

(declare-fun b!172216 () Bool)

(declare-fun e!104390 () List!2930)

(assert (=> b!172216 (= e!104390 lt!54398)))

(declare-fun b!172217 () Bool)

(assert (=> b!172217 (= e!104391 0)))

(declare-fun b!172218 () Bool)

(declare-fun e!104389 () Bool)

(declare-fun lt!54765 () List!2930)

(assert (=> b!172218 (= e!104389 (= (size!2418 lt!54765) e!104388))))

(declare-fun c!34066 () Bool)

(assert (=> b!172218 (= c!34066 (<= (+ 0 1) 0))))

(declare-fun d!43183 () Bool)

(assert (=> d!43183 e!104389))

(declare-fun res!77879 () Bool)

(assert (=> d!43183 (=> (not res!77879) (not e!104389))))

(assert (=> d!43183 (= res!77879 (= ((_ map implies) (content!402 lt!54765) (content!402 lt!54398)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104387 () List!2930)

(assert (=> d!43183 (= lt!54765 e!104387)))

(declare-fun c!34065 () Bool)

(assert (=> d!43183 (= c!34065 ((_ is Nil!2920) lt!54398))))

(assert (=> d!43183 (= (drop!143 lt!54398 (+ 0 1)) lt!54765)))

(declare-fun b!172219 () Bool)

(assert (=> b!172219 (= e!104387 e!104390)))

(declare-fun c!34063 () Bool)

(assert (=> b!172219 (= c!34063 (<= (+ 0 1) 0))))

(declare-fun b!172220 () Bool)

(assert (=> b!172220 (= e!104391 (- call!7588 (+ 0 1)))))

(declare-fun b!172221 () Bool)

(assert (=> b!172221 (= e!104388 call!7588)))

(declare-fun b!172222 () Bool)

(assert (=> b!172222 (= e!104390 (drop!143 (t!27132 lt!54398) (- (+ 0 1) 1)))))

(declare-fun b!172223 () Bool)

(assert (=> b!172223 (= e!104387 Nil!2920)))

(assert (= (and d!43183 c!34065) b!172223))

(assert (= (and d!43183 (not c!34065)) b!172219))

(assert (= (and b!172219 c!34063) b!172216))

(assert (= (and b!172219 (not c!34063)) b!172222))

(assert (= (and d!43183 res!77879) b!172218))

(assert (= (and b!172218 c!34066) b!172221))

(assert (= (and b!172218 (not c!34066)) b!172215))

(assert (= (and b!172215 c!34064) b!172217))

(assert (= (and b!172215 (not c!34064)) b!172220))

(assert (= (or b!172221 b!172215 b!172220) bm!7583))

(assert (=> bm!7583 m!169103))

(declare-fun m!169181 () Bool)

(assert (=> b!172218 m!169181))

(declare-fun m!169183 () Bool)

(assert (=> d!43183 m!169183))

(assert (=> d!43183 m!169129))

(declare-fun m!169185 () Bool)

(assert (=> b!172222 m!169185))

(assert (=> b!171534 d!43183))

(declare-fun d!43185 () Bool)

(declare-fun lt!54766 () Token!790)

(assert (=> d!43185 (= lt!54766 (apply!422 (list!1064 lt!54116) 0))))

(assert (=> d!43185 (= lt!54766 (apply!425 (c!33818 lt!54116) 0))))

(declare-fun e!104396 () Bool)

(assert (=> d!43185 e!104396))

(declare-fun res!77882 () Bool)

(assert (=> d!43185 (=> (not res!77882) (not e!104396))))

(assert (=> d!43185 (= res!77882 (<= 0 0))))

(assert (=> d!43185 (= (apply!423 lt!54116 0) lt!54766)))

(declare-fun b!172230 () Bool)

(assert (=> b!172230 (= e!104396 (< 0 (size!2416 lt!54116)))))

(assert (= (and d!43185 res!77882) b!172230))

(assert (=> d!43185 m!167897))

(assert (=> d!43185 m!167897))

(declare-fun m!169187 () Bool)

(assert (=> d!43185 m!169187))

(declare-fun m!169189 () Bool)

(assert (=> d!43185 m!169189))

(assert (=> b!172230 m!167903))

(assert (=> b!171534 d!43185))

(declare-fun b!172231 () Bool)

(declare-fun e!104398 () Int)

(declare-fun e!104401 () Int)

(assert (=> b!172231 (= e!104398 e!104401)))

(declare-fun c!34070 () Bool)

(declare-fun call!7589 () Int)

(assert (=> b!172231 (= c!34070 (>= 0 call!7589))))

(declare-fun bm!7584 () Bool)

(assert (=> bm!7584 (= call!7589 (size!2418 lt!54402))))

(declare-fun b!172232 () Bool)

(declare-fun e!104400 () List!2930)

(assert (=> b!172232 (= e!104400 lt!54402)))

(declare-fun b!172233 () Bool)

(assert (=> b!172233 (= e!104401 0)))

(declare-fun b!172234 () Bool)

(declare-fun e!104399 () Bool)

(declare-fun lt!54767 () List!2930)

(assert (=> b!172234 (= e!104399 (= (size!2418 lt!54767) e!104398))))

(declare-fun c!34072 () Bool)

(assert (=> b!172234 (= c!34072 (<= 0 0))))

(declare-fun d!43187 () Bool)

(assert (=> d!43187 e!104399))

(declare-fun res!77883 () Bool)

(assert (=> d!43187 (=> (not res!77883) (not e!104399))))

(assert (=> d!43187 (= res!77883 (= ((_ map implies) (content!402 lt!54767) (content!402 lt!54402)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104397 () List!2930)

(assert (=> d!43187 (= lt!54767 e!104397)))

(declare-fun c!34071 () Bool)

(assert (=> d!43187 (= c!34071 ((_ is Nil!2920) lt!54402))))

(assert (=> d!43187 (= (drop!143 lt!54402 0) lt!54767)))

(declare-fun b!172235 () Bool)

(assert (=> b!172235 (= e!104397 e!104400)))

(declare-fun c!34069 () Bool)

(assert (=> b!172235 (= c!34069 (<= 0 0))))

(declare-fun b!172236 () Bool)

(assert (=> b!172236 (= e!104401 (- call!7589 0))))

(declare-fun b!172237 () Bool)

(assert (=> b!172237 (= e!104398 call!7589)))

(declare-fun b!172238 () Bool)

(assert (=> b!172238 (= e!104400 (drop!143 (t!27132 lt!54402) (- 0 1)))))

(declare-fun b!172239 () Bool)

(assert (=> b!172239 (= e!104397 Nil!2920)))

(assert (= (and d!43187 c!34071) b!172239))

(assert (= (and d!43187 (not c!34071)) b!172235))

(assert (= (and b!172235 c!34069) b!172232))

(assert (= (and b!172235 (not c!34069)) b!172238))

(assert (= (and d!43187 res!77883) b!172234))

(assert (= (and b!172234 c!34072) b!172237))

(assert (= (and b!172234 (not c!34072)) b!172231))

(assert (= (and b!172231 c!34070) b!172233))

(assert (= (and b!172231 (not c!34070)) b!172236))

(assert (= (or b!172237 b!172231 b!172236) bm!7584))

(assert (=> bm!7584 m!169123))

(declare-fun m!169191 () Bool)

(assert (=> b!172234 m!169191))

(declare-fun m!169193 () Bool)

(assert (=> d!43187 m!169193))

(declare-fun m!169195 () Bool)

(assert (=> d!43187 m!169195))

(declare-fun m!169197 () Bool)

(assert (=> b!172238 m!169197))

(assert (=> b!171534 d!43187))

(declare-fun b!172242 () Bool)

(declare-fun res!77886 () Bool)

(declare-fun e!104402 () Bool)

(assert (=> b!172242 (=> (not res!77886) (not e!104402))))

(assert (=> b!172242 (= res!77886 (>= (height!94 (++!674 (c!33816 (BalanceConc!1745 Empty!868)) (c!33816 (charsOf!178 (apply!423 lt!54116 0))))) (max!0 (height!94 (c!33816 (BalanceConc!1745 Empty!868))) (height!94 (c!33816 (charsOf!178 (apply!423 lt!54116 0)))))))))

(declare-fun b!172240 () Bool)

(declare-fun res!77887 () Bool)

(assert (=> b!172240 (=> (not res!77887) (not e!104402))))

(assert (=> b!172240 (= res!77887 (isBalanced!241 (++!674 (c!33816 (BalanceConc!1745 Empty!868)) (c!33816 (charsOf!178 (apply!423 lt!54116 0))))))))

(declare-fun b!172243 () Bool)

(declare-fun lt!54768 () BalanceConc!1744)

(assert (=> b!172243 (= e!104402 (= (list!1061 lt!54768) (++!670 (list!1061 (BalanceConc!1745 Empty!868)) (list!1061 (charsOf!178 (apply!423 lt!54116 0))))))))

(declare-fun b!172241 () Bool)

(declare-fun res!77885 () Bool)

(assert (=> b!172241 (=> (not res!77885) (not e!104402))))

(assert (=> b!172241 (= res!77885 (<= (height!94 (++!674 (c!33816 (BalanceConc!1745 Empty!868)) (c!33816 (charsOf!178 (apply!423 lt!54116 0))))) (+ (max!0 (height!94 (c!33816 (BalanceConc!1745 Empty!868))) (height!94 (c!33816 (charsOf!178 (apply!423 lt!54116 0))))) 1)))))

(declare-fun d!43189 () Bool)

(assert (=> d!43189 e!104402))

(declare-fun res!77884 () Bool)

(assert (=> d!43189 (=> (not res!77884) (not e!104402))))

(assert (=> d!43189 (= res!77884 (appendAssocInst!31 (c!33816 (BalanceConc!1745 Empty!868)) (c!33816 (charsOf!178 (apply!423 lt!54116 0)))))))

(assert (=> d!43189 (= lt!54768 (BalanceConc!1745 (++!674 (c!33816 (BalanceConc!1745 Empty!868)) (c!33816 (charsOf!178 (apply!423 lt!54116 0))))))))

(assert (=> d!43189 (= (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 lt!54116 0))) lt!54768)))

(assert (= (and d!43189 res!77884) b!172240))

(assert (= (and b!172240 res!77887) b!172241))

(assert (= (and b!172241 res!77885) b!172242))

(assert (= (and b!172242 res!77886) b!172243))

(declare-fun m!169199 () Bool)

(assert (=> b!172243 m!169199))

(assert (=> b!172243 m!167907))

(assert (=> b!172243 m!167917))

(declare-fun m!169201 () Bool)

(assert (=> b!172243 m!169201))

(assert (=> b!172243 m!167907))

(assert (=> b!172243 m!169201))

(declare-fun m!169203 () Bool)

(assert (=> b!172243 m!169203))

(declare-fun m!169205 () Bool)

(assert (=> b!172240 m!169205))

(assert (=> b!172240 m!169205))

(declare-fun m!169207 () Bool)

(assert (=> b!172240 m!169207))

(assert (=> b!172241 m!169205))

(declare-fun m!169209 () Bool)

(assert (=> b!172241 m!169209))

(assert (=> b!172241 m!169205))

(declare-fun m!169211 () Bool)

(assert (=> b!172241 m!169211))

(declare-fun m!169213 () Bool)

(assert (=> b!172241 m!169213))

(assert (=> b!172241 m!169211))

(assert (=> b!172241 m!169213))

(declare-fun m!169215 () Bool)

(assert (=> b!172241 m!169215))

(assert (=> b!172242 m!169205))

(assert (=> b!172242 m!169209))

(assert (=> b!172242 m!169205))

(assert (=> b!172242 m!169211))

(assert (=> b!172242 m!169213))

(assert (=> b!172242 m!169211))

(assert (=> b!172242 m!169213))

(assert (=> b!172242 m!169215))

(declare-fun m!169227 () Bool)

(assert (=> d!43189 m!169227))

(assert (=> d!43189 m!169205))

(assert (=> b!171534 d!43189))

(declare-fun d!43193 () Bool)

(assert (=> d!43193 (= (head!604 (drop!143 lt!54402 0)) (h!8317 (drop!143 lt!54402 0)))))

(assert (=> b!171534 d!43193))

(declare-fun lt!54772 () BalanceConc!1744)

(declare-fun d!43197 () Bool)

(assert (=> d!43197 (= (list!1061 lt!54772) (originalCharacters!566 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))))))

(assert (=> d!43197 (= lt!54772 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))))) (value!19221 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))))

(assert (=> d!43197 (= (charsOf!178 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))) lt!54772)))

(declare-fun b_lambda!3935 () Bool)

(assert (=> (not b_lambda!3935) (not d!43197)))

(declare-fun tb!6841 () Bool)

(declare-fun t!27305 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27305) tb!6841))

(declare-fun b!172249 () Bool)

(declare-fun tp!84503 () Bool)

(declare-fun e!104406 () Bool)

(assert (=> b!172249 (= e!104406 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))))) (value!19221 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) tp!84503))))

(declare-fun result!9566 () Bool)

(assert (=> tb!6841 (= result!9566 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))))) (value!19221 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532))))) e!104406))))

(assert (= tb!6841 b!172249))

(declare-fun m!169233 () Bool)

(assert (=> b!172249 m!169233))

(declare-fun m!169235 () Bool)

(assert (=> tb!6841 m!169235))

(assert (=> d!43197 t!27305))

(declare-fun b_and!11409 () Bool)

(assert (= b_and!11399 (and (=> t!27305 result!9566) b_and!11409)))

(declare-fun tb!6843 () Bool)

(declare-fun t!27307 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27307) tb!6843))

(declare-fun result!9568 () Bool)

(assert (= result!9568 result!9566))

(assert (=> d!43197 t!27307))

(declare-fun b_and!11411 () Bool)

(assert (= b_and!11403 (and (=> t!27307 result!9568) b_and!11411)))

(declare-fun t!27309 () Bool)

(declare-fun tb!6845 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27309) tb!6845))

(declare-fun result!9570 () Bool)

(assert (= result!9570 result!9566))

(assert (=> d!43197 t!27309))

(declare-fun b_and!11413 () Bool)

(assert (= b_and!11401 (and (=> t!27309 result!9570) b_and!11413)))

(declare-fun tb!6847 () Bool)

(declare-fun t!27311 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27311) tb!6847))

(declare-fun result!9572 () Bool)

(assert (= result!9572 result!9566))

(assert (=> d!43197 t!27311))

(declare-fun b_and!11415 () Bool)

(assert (= b_and!11405 (and (=> t!27311 result!9572) b_and!11415)))

(declare-fun t!27313 () Bool)

(declare-fun tb!6849 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27313) tb!6849))

(declare-fun result!9574 () Bool)

(assert (= result!9574 result!9566))

(assert (=> d!43197 t!27313))

(declare-fun b_and!11417 () Bool)

(assert (= b_and!11407 (and (=> t!27313 result!9574) b_and!11417)))

(declare-fun m!169237 () Bool)

(assert (=> d!43197 m!169237))

(declare-fun m!169239 () Bool)

(assert (=> d!43197 m!169239))

(assert (=> bm!7525 d!43197))

(declare-fun d!43203 () Bool)

(declare-fun e!104407 () Bool)

(assert (=> d!43203 e!104407))

(declare-fun res!77889 () Bool)

(assert (=> d!43203 (=> (not res!77889) (not e!104407))))

(declare-fun lt!54773 () BalanceConc!1744)

(assert (=> d!43203 (= res!77889 (= (list!1061 lt!54773) lt!54115))))

(assert (=> d!43203 (= lt!54773 (BalanceConc!1745 (fromList!108 lt!54115)))))

(assert (=> d!43203 (= (fromListB!167 lt!54115) lt!54773)))

(declare-fun b!172250 () Bool)

(assert (=> b!172250 (= e!104407 (isBalanced!241 (fromList!108 lt!54115)))))

(assert (= (and d!43203 res!77889) b!172250))

(declare-fun m!169241 () Bool)

(assert (=> d!43203 m!169241))

(declare-fun m!169243 () Bool)

(assert (=> d!43203 m!169243))

(assert (=> b!172250 m!169243))

(assert (=> b!172250 m!169243))

(declare-fun m!169245 () Bool)

(assert (=> b!172250 m!169245))

(assert (=> d!42715 d!43203))

(declare-fun d!43205 () Bool)

(assert (=> d!43205 (= (inv!16 (value!19221 separatorToken!170)) (= (charsToInt!0 (text!4262 (value!19221 separatorToken!170))) (value!19212 (value!19221 separatorToken!170))))))

(declare-fun bs!16775 () Bool)

(assert (= bs!16775 d!43205))

(declare-fun m!169247 () Bool)

(assert (=> bs!16775 m!169247))

(assert (=> b!171427 d!43205))

(declare-fun b!172251 () Bool)

(declare-fun e!104409 () List!2928)

(assert (=> b!172251 (= e!104409 lt!54104)))

(declare-fun b!172254 () Bool)

(declare-fun e!104408 () Bool)

(declare-fun lt!54774 () List!2928)

(assert (=> b!172254 (= e!104408 (or (not (= lt!54104 Nil!2918)) (= lt!54774 (t!27130 lt!54115))))))

(declare-fun d!43207 () Bool)

(assert (=> d!43207 e!104408))

(declare-fun res!77890 () Bool)

(assert (=> d!43207 (=> (not res!77890) (not e!104408))))

(assert (=> d!43207 (= res!77890 (= (content!400 lt!54774) ((_ map or) (content!400 (t!27130 lt!54115)) (content!400 lt!54104))))))

(assert (=> d!43207 (= lt!54774 e!104409)))

(declare-fun c!34075 () Bool)

(assert (=> d!43207 (= c!34075 ((_ is Nil!2918) (t!27130 lt!54115)))))

(assert (=> d!43207 (= (++!670 (t!27130 lt!54115) lt!54104) lt!54774)))

(declare-fun b!172253 () Bool)

(declare-fun res!77891 () Bool)

(assert (=> b!172253 (=> (not res!77891) (not e!104408))))

(assert (=> b!172253 (= res!77891 (= (size!2417 lt!54774) (+ (size!2417 (t!27130 lt!54115)) (size!2417 lt!54104))))))

(declare-fun b!172252 () Bool)

(assert (=> b!172252 (= e!104409 (Cons!2918 (h!8315 (t!27130 lt!54115)) (++!670 (t!27130 (t!27130 lt!54115)) lt!54104)))))

(assert (= (and d!43207 c!34075) b!172251))

(assert (= (and d!43207 (not c!34075)) b!172252))

(assert (= (and d!43207 res!77890) b!172253))

(assert (= (and b!172253 res!77891) b!172254))

(declare-fun m!169249 () Bool)

(assert (=> d!43207 m!169249))

(declare-fun m!169251 () Bool)

(assert (=> d!43207 m!169251))

(assert (=> d!43207 m!167389))

(declare-fun m!169253 () Bool)

(assert (=> b!172253 m!169253))

(assert (=> b!172253 m!168477))

(assert (=> b!172253 m!167395))

(declare-fun m!169255 () Bool)

(assert (=> b!172252 m!169255))

(assert (=> b!171204 d!43207))

(declare-fun d!43209 () Bool)

(assert (=> d!43209 (= (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))) (isBalanced!241 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))))))

(declare-fun bs!16776 () Bool)

(assert (= bs!16776 d!43209))

(declare-fun m!169257 () Bool)

(assert (=> bs!16776 m!169257))

(assert (=> tb!6707 d!43209))

(declare-fun d!43211 () Bool)

(declare-fun lt!54775 () Int)

(assert (=> d!43211 (>= lt!54775 0)))

(declare-fun e!104410 () Int)

(assert (=> d!43211 (= lt!54775 e!104410)))

(declare-fun c!34076 () Bool)

(assert (=> d!43211 (= c!34076 ((_ is Nil!2918) (originalCharacters!566 separatorToken!170)))))

(assert (=> d!43211 (= (size!2417 (originalCharacters!566 separatorToken!170)) lt!54775)))

(declare-fun b!172255 () Bool)

(assert (=> b!172255 (= e!104410 0)))

(declare-fun b!172256 () Bool)

(assert (=> b!172256 (= e!104410 (+ 1 (size!2417 (t!27130 (originalCharacters!566 separatorToken!170)))))))

(assert (= (and d!43211 c!34076) b!172255))

(assert (= (and d!43211 (not c!34076)) b!172256))

(declare-fun m!169259 () Bool)

(assert (=> b!172256 m!169259))

(assert (=> b!171495 d!43211))

(declare-fun b!172305 () Bool)

(declare-fun res!77924 () Bool)

(declare-fun e!104433 () Bool)

(assert (=> b!172305 (=> (not res!77924) (not e!104433))))

(declare-fun lt!54814 () Option!320)

(assert (=> b!172305 (= res!77924 (= (rule!1030 (_1!1630 (get!801 lt!54814))) (h!8316 rules!1920)))))

(declare-fun b!172306 () Bool)

(declare-fun res!77920 () Bool)

(assert (=> b!172306 (=> (not res!77920) (not e!104433))))

(assert (=> b!172306 (= res!77920 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54814)))) (_2!1630 (get!801 lt!54814))) lt!54115))))

(declare-fun b!172307 () Bool)

(declare-fun e!104435 () Bool)

(declare-datatypes ((tuple2!2836 0))(
  ( (tuple2!2837 (_1!1634 List!2928) (_2!1634 List!2928)) )
))
(declare-fun findLongestMatchInner!51 (Regex!747 List!2928 Int List!2928 List!2928 Int) tuple2!2836)

(assert (=> b!172307 (= e!104435 (matchR!85 (regex!523 (h!8316 rules!1920)) (_1!1634 (findLongestMatchInner!51 (regex!523 (h!8316 rules!1920)) Nil!2918 (size!2417 Nil!2918) lt!54115 lt!54115 (size!2417 lt!54115)))))))

(declare-fun b!172308 () Bool)

(declare-fun e!104434 () Option!320)

(declare-fun lt!54815 () tuple2!2836)

(assert (=> b!172308 (= e!104434 (Some!319 (tuple2!2829 (Token!791 (apply!424 (transformation!523 (h!8316 rules!1920)) (seqFromList!423 (_1!1634 lt!54815))) (h!8316 rules!1920) (size!2415 (seqFromList!423 (_1!1634 lt!54815))) (_1!1634 lt!54815)) (_2!1634 lt!54815))))))

(declare-fun lt!54816 () Unit!2548)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!35 (Regex!747 List!2928) Unit!2548)

(assert (=> b!172308 (= lt!54816 (longestMatchIsAcceptedByMatchOrIsEmpty!35 (regex!523 (h!8316 rules!1920)) lt!54115))))

(declare-fun res!77919 () Bool)

(assert (=> b!172308 (= res!77919 (isEmpty!1247 (_1!1634 (findLongestMatchInner!51 (regex!523 (h!8316 rules!1920)) Nil!2918 (size!2417 Nil!2918) lt!54115 lt!54115 (size!2417 lt!54115)))))))

(assert (=> b!172308 (=> res!77919 e!104435)))

(assert (=> b!172308 e!104435))

(declare-fun lt!54818 () Unit!2548)

(assert (=> b!172308 (= lt!54818 lt!54816)))

(declare-fun lt!54817 () Unit!2548)

(declare-fun lemmaSemiInverse!31 (TokenValueInjection!862 BalanceConc!1744) Unit!2548)

(assert (=> b!172308 (= lt!54817 (lemmaSemiInverse!31 (transformation!523 (h!8316 rules!1920)) (seqFromList!423 (_1!1634 lt!54815))))))

(declare-fun b!172309 () Bool)

(declare-fun e!104432 () Bool)

(assert (=> b!172309 (= e!104432 e!104433)))

(declare-fun res!77921 () Bool)

(assert (=> b!172309 (=> (not res!77921) (not e!104433))))

(assert (=> b!172309 (= res!77921 (matchR!85 (regex!523 (h!8316 rules!1920)) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54814))))))))

(declare-fun b!172310 () Bool)

(assert (=> b!172310 (= e!104434 None!319)))

(declare-fun b!172311 () Bool)

(declare-fun res!77923 () Bool)

(assert (=> b!172311 (=> (not res!77923) (not e!104433))))

(assert (=> b!172311 (= res!77923 (= (value!19221 (_1!1630 (get!801 lt!54814))) (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54814)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54814)))))))))

(declare-fun b!172312 () Bool)

(declare-fun res!77925 () Bool)

(assert (=> b!172312 (=> (not res!77925) (not e!104433))))

(assert (=> b!172312 (= res!77925 (< (size!2417 (_2!1630 (get!801 lt!54814))) (size!2417 lt!54115)))))

(declare-fun d!43213 () Bool)

(assert (=> d!43213 e!104432))

(declare-fun res!77922 () Bool)

(assert (=> d!43213 (=> res!77922 e!104432)))

(assert (=> d!43213 (= res!77922 (isEmpty!1257 lt!54814))))

(assert (=> d!43213 (= lt!54814 e!104434)))

(declare-fun c!34090 () Bool)

(assert (=> d!43213 (= c!34090 (isEmpty!1247 (_1!1634 lt!54815)))))

(declare-fun findLongestMatch!33 (Regex!747 List!2928) tuple2!2836)

(assert (=> d!43213 (= lt!54815 (findLongestMatch!33 (regex!523 (h!8316 rules!1920)) lt!54115))))

(assert (=> d!43213 (ruleValid!58 thiss!17480 (h!8316 rules!1920))))

(assert (=> d!43213 (= (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) lt!54115) lt!54814)))

(declare-fun b!172313 () Bool)

(assert (=> b!172313 (= e!104433 (= (size!2411 (_1!1630 (get!801 lt!54814))) (size!2417 (originalCharacters!566 (_1!1630 (get!801 lt!54814))))))))

(assert (= (and d!43213 c!34090) b!172310))

(assert (= (and d!43213 (not c!34090)) b!172308))

(assert (= (and b!172308 (not res!77919)) b!172307))

(assert (= (and d!43213 (not res!77922)) b!172309))

(assert (= (and b!172309 res!77921) b!172306))

(assert (= (and b!172306 res!77920) b!172312))

(assert (= (and b!172312 res!77925) b!172305))

(assert (= (and b!172305 res!77924) b!172311))

(assert (= (and b!172311 res!77923) b!172313))

(declare-fun m!169331 () Bool)

(assert (=> d!43213 m!169331))

(declare-fun m!169333 () Bool)

(assert (=> d!43213 m!169333))

(declare-fun m!169335 () Bool)

(assert (=> d!43213 m!169335))

(assert (=> d!43213 m!168689))

(assert (=> b!172308 m!167393))

(declare-fun m!169337 () Bool)

(assert (=> b!172308 m!169337))

(declare-fun m!169339 () Bool)

(assert (=> b!172308 m!169339))

(declare-fun m!169341 () Bool)

(assert (=> b!172308 m!169341))

(declare-fun m!169343 () Bool)

(assert (=> b!172308 m!169343))

(assert (=> b!172308 m!169337))

(assert (=> b!172308 m!167393))

(declare-fun m!169345 () Bool)

(assert (=> b!172308 m!169345))

(assert (=> b!172308 m!169341))

(declare-fun m!169347 () Bool)

(assert (=> b!172308 m!169347))

(assert (=> b!172308 m!169341))

(declare-fun m!169349 () Bool)

(assert (=> b!172308 m!169349))

(assert (=> b!172308 m!169341))

(declare-fun m!169351 () Bool)

(assert (=> b!172308 m!169351))

(declare-fun m!169353 () Bool)

(assert (=> b!172311 m!169353))

(declare-fun m!169355 () Bool)

(assert (=> b!172311 m!169355))

(assert (=> b!172311 m!169355))

(declare-fun m!169357 () Bool)

(assert (=> b!172311 m!169357))

(assert (=> b!172305 m!169353))

(assert (=> b!172307 m!169337))

(assert (=> b!172307 m!167393))

(assert (=> b!172307 m!169337))

(assert (=> b!172307 m!167393))

(assert (=> b!172307 m!169345))

(declare-fun m!169359 () Bool)

(assert (=> b!172307 m!169359))

(assert (=> b!172312 m!169353))

(declare-fun m!169361 () Bool)

(assert (=> b!172312 m!169361))

(assert (=> b!172312 m!167393))

(assert (=> b!172313 m!169353))

(declare-fun m!169363 () Bool)

(assert (=> b!172313 m!169363))

(assert (=> b!172309 m!169353))

(declare-fun m!169365 () Bool)

(assert (=> b!172309 m!169365))

(assert (=> b!172309 m!169365))

(declare-fun m!169367 () Bool)

(assert (=> b!172309 m!169367))

(assert (=> b!172309 m!169367))

(declare-fun m!169369 () Bool)

(assert (=> b!172309 m!169369))

(assert (=> b!172306 m!169353))

(assert (=> b!172306 m!169365))

(assert (=> b!172306 m!169365))

(assert (=> b!172306 m!169367))

(assert (=> b!172306 m!169367))

(declare-fun m!169371 () Bool)

(assert (=> b!172306 m!169371))

(assert (=> bm!7559 d!43213))

(declare-fun bs!16792 () Bool)

(declare-fun d!43227 () Bool)

(assert (= bs!16792 (and d!43227 b!172069)))

(declare-fun lambda!4948 () Int)

(assert (=> bs!16792 (= lambda!4948 lambda!4937)))

(declare-fun bs!16793 () Bool)

(assert (= bs!16793 (and d!43227 b!171060)))

(assert (=> bs!16793 (= lambda!4948 lambda!4892)))

(declare-fun bs!16794 () Bool)

(assert (= bs!16794 (and d!43227 b!171309)))

(assert (=> bs!16794 (= lambda!4948 lambda!4895)))

(declare-fun bs!16795 () Bool)

(assert (= bs!16795 (and d!43227 d!42751)))

(assert (=> bs!16795 (not (= lambda!4948 lambda!4906))))

(declare-fun bs!16796 () Bool)

(assert (= bs!16796 (and d!43227 b!171518)))

(assert (=> bs!16796 (= lambda!4948 lambda!4913)))

(declare-fun bs!16797 () Bool)

(assert (= bs!16797 (and d!43227 b!171504)))

(assert (=> bs!16797 (= lambda!4948 lambda!4912)))

(declare-fun bs!16798 () Bool)

(assert (= bs!16798 (and d!43227 b!171062)))

(assert (=> bs!16798 (not (= lambda!4948 lambda!4891))))

(declare-fun bs!16799 () Bool)

(assert (= bs!16799 (and d!43227 d!42823)))

(assert (=> bs!16799 (not (= lambda!4948 lambda!4911))))

(declare-fun bs!16800 () Bool)

(assert (= bs!16800 (and d!43227 d!42863)))

(assert (=> bs!16800 (= lambda!4948 lambda!4926)))

(declare-fun bs!16801 () Bool)

(assert (= bs!16801 (and d!43227 b!171831)))

(assert (=> bs!16801 (= lambda!4948 lambda!4927)))

(declare-fun bs!16802 () Bool)

(assert (= bs!16802 (and d!43227 b!171387)))

(assert (=> bs!16802 (= lambda!4948 lambda!4907)))

(declare-fun b!172445 () Bool)

(declare-fun e!104518 () Bool)

(assert (=> b!172445 (= e!104518 true)))

(declare-fun b!172444 () Bool)

(declare-fun e!104517 () Bool)

(assert (=> b!172444 (= e!104517 e!104518)))

(declare-fun b!172443 () Bool)

(declare-fun e!104516 () Bool)

(assert (=> b!172443 (= e!104516 e!104517)))

(assert (=> d!43227 e!104516))

(assert (= b!172444 b!172445))

(assert (= b!172443 b!172444))

(assert (= (and d!43227 ((_ is Cons!2919) rules!1920)) b!172443))

(assert (=> b!172445 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4948))))

(assert (=> b!172445 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4948))))

(assert (=> d!43227 true))

(declare-fun lt!54865 () Bool)

(assert (=> d!43227 (= lt!54865 (forall!573 (list!1064 lt!54114) lambda!4948))))

(declare-fun e!104514 () Bool)

(assert (=> d!43227 (= lt!54865 e!104514)))

(declare-fun res!77981 () Bool)

(assert (=> d!43227 (=> res!77981 e!104514)))

(assert (=> d!43227 (= res!77981 (not ((_ is Cons!2920) (list!1064 lt!54114))))))

(assert (=> d!43227 (not (isEmpty!1248 rules!1920))))

(assert (=> d!43227 (= (rulesProduceEachTokenIndividuallyList!113 thiss!17480 rules!1920 (list!1064 lt!54114)) lt!54865)))

(declare-fun b!172441 () Bool)

(declare-fun e!104515 () Bool)

(assert (=> b!172441 (= e!104514 e!104515)))

(declare-fun res!77982 () Bool)

(assert (=> b!172441 (=> (not res!77982) (not e!104515))))

(assert (=> b!172441 (= res!77982 (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 (list!1064 lt!54114))))))

(declare-fun b!172442 () Bool)

(assert (=> b!172442 (= e!104515 (rulesProduceEachTokenIndividuallyList!113 thiss!17480 rules!1920 (t!27132 (list!1064 lt!54114))))))

(assert (= (and d!43227 (not res!77981)) b!172441))

(assert (= (and b!172441 res!77982) b!172442))

(assert (=> d!43227 m!167817))

(declare-fun m!169601 () Bool)

(assert (=> d!43227 m!169601))

(assert (=> d!43227 m!167165))

(declare-fun m!169603 () Bool)

(assert (=> b!172441 m!169603))

(declare-fun m!169605 () Bool)

(assert (=> b!172442 m!169605))

(assert (=> b!171687 d!43227))

(assert (=> b!171687 d!43039))

(declare-fun d!43313 () Bool)

(assert (=> d!43313 true))

(declare-fun order!1607 () Int)

(declare-fun lambda!4951 () Int)

(declare-fun dynLambda!1117 (Int Int) Int)

(assert (=> d!43313 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (dynLambda!1117 order!1607 lambda!4951))))

(assert (=> d!43313 true))

(assert (=> d!43313 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (dynLambda!1117 order!1607 lambda!4951))))

(declare-fun Forall!136 (Int) Bool)

(assert (=> d!43313 (= (semiInverseModEq!181 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (Forall!136 lambda!4951))))

(declare-fun bs!16803 () Bool)

(assert (= bs!16803 d!43313))

(declare-fun m!169607 () Bool)

(assert (=> bs!16803 m!169607))

(assert (=> d!42851 d!43313))

(declare-fun d!43315 () Bool)

(declare-fun lt!54866 () BalanceConc!1744)

(assert (=> d!43315 (= (list!1061 lt!54866) (originalCharacters!566 call!7532))))

(assert (=> d!43315 (= lt!54866 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 call!7532))) (value!19221 call!7532)))))

(assert (=> d!43315 (= (charsOf!178 call!7532) lt!54866)))

(declare-fun b_lambda!3943 () Bool)

(assert (=> (not b_lambda!3943) (not d!43315)))

(declare-fun t!27349 () Bool)

(declare-fun tb!6881 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27349) tb!6881))

(declare-fun b!172450 () Bool)

(declare-fun e!104519 () Bool)

(declare-fun tp!84507 () Bool)

(assert (=> b!172450 (= e!104519 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 call!7532))) (value!19221 call!7532)))) tp!84507))))

(declare-fun result!9606 () Bool)

(assert (=> tb!6881 (= result!9606 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 call!7532))) (value!19221 call!7532))) e!104519))))

(assert (= tb!6881 b!172450))

(declare-fun m!169609 () Bool)

(assert (=> b!172450 m!169609))

(declare-fun m!169611 () Bool)

(assert (=> tb!6881 m!169611))

(assert (=> d!43315 t!27349))

(declare-fun b_and!11449 () Bool)

(assert (= b_and!11413 (and (=> t!27349 result!9606) b_and!11449)))

(declare-fun t!27351 () Bool)

(declare-fun tb!6883 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27351) tb!6883))

(declare-fun result!9608 () Bool)

(assert (= result!9608 result!9606))

(assert (=> d!43315 t!27351))

(declare-fun b_and!11451 () Bool)

(assert (= b_and!11411 (and (=> t!27351 result!9608) b_and!11451)))

(declare-fun t!27353 () Bool)

(declare-fun tb!6885 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27353) tb!6885))

(declare-fun result!9610 () Bool)

(assert (= result!9610 result!9606))

(assert (=> d!43315 t!27353))

(declare-fun b_and!11453 () Bool)

(assert (= b_and!11415 (and (=> t!27353 result!9610) b_and!11453)))

(declare-fun tb!6887 () Bool)

(declare-fun t!27355 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27355) tb!6887))

(declare-fun result!9612 () Bool)

(assert (= result!9612 result!9606))

(assert (=> d!43315 t!27355))

(declare-fun b_and!11455 () Bool)

(assert (= b_and!11417 (and (=> t!27355 result!9612) b_and!11455)))

(declare-fun t!27357 () Bool)

(declare-fun tb!6889 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27357) tb!6889))

(declare-fun result!9614 () Bool)

(assert (= result!9614 result!9606))

(assert (=> d!43315 t!27357))

(declare-fun b_and!11457 () Bool)

(assert (= b_and!11409 (and (=> t!27357 result!9614) b_and!11457)))

(declare-fun m!169613 () Bool)

(assert (=> d!43315 m!169613))

(declare-fun m!169615 () Bool)

(assert (=> d!43315 m!169615))

(assert (=> b!171499 d!43315))

(declare-fun b!172451 () Bool)

(declare-fun e!104521 () List!2928)

(assert (=> b!172451 (= e!104521 lt!54119)))

(declare-fun e!104520 () Bool)

(declare-fun b!172454 () Bool)

(declare-fun lt!54867 () List!2928)

(assert (=> b!172454 (= e!104520 (or (not (= lt!54119 Nil!2918)) (= lt!54867 (t!27130 lt!54115))))))

(declare-fun d!43317 () Bool)

(assert (=> d!43317 e!104520))

(declare-fun res!77983 () Bool)

(assert (=> d!43317 (=> (not res!77983) (not e!104520))))

(assert (=> d!43317 (= res!77983 (= (content!400 lt!54867) ((_ map or) (content!400 (t!27130 lt!54115)) (content!400 lt!54119))))))

(assert (=> d!43317 (= lt!54867 e!104521)))

(declare-fun c!34125 () Bool)

(assert (=> d!43317 (= c!34125 ((_ is Nil!2918) (t!27130 lt!54115)))))

(assert (=> d!43317 (= (++!670 (t!27130 lt!54115) lt!54119) lt!54867)))

(declare-fun b!172453 () Bool)

(declare-fun res!77984 () Bool)

(assert (=> b!172453 (=> (not res!77984) (not e!104520))))

(assert (=> b!172453 (= res!77984 (= (size!2417 lt!54867) (+ (size!2417 (t!27130 lt!54115)) (size!2417 lt!54119))))))

(declare-fun b!172452 () Bool)

(assert (=> b!172452 (= e!104521 (Cons!2918 (h!8315 (t!27130 lt!54115)) (++!670 (t!27130 (t!27130 lt!54115)) lt!54119)))))

(assert (= (and d!43317 c!34125) b!172451))

(assert (= (and d!43317 (not c!34125)) b!172452))

(assert (= (and d!43317 res!77983) b!172453))

(assert (= (and b!172453 res!77984) b!172454))

(declare-fun m!169617 () Bool)

(assert (=> d!43317 m!169617))

(assert (=> d!43317 m!169251))

(assert (=> d!43317 m!167685))

(declare-fun m!169619 () Bool)

(assert (=> b!172453 m!169619))

(assert (=> b!172453 m!168477))

(assert (=> b!172453 m!167689))

(declare-fun m!169621 () Bool)

(assert (=> b!172452 m!169621))

(assert (=> b!171410 d!43317))

(declare-fun e!104522 () Bool)

(declare-fun lt!54874 () Token!790)

(declare-fun b!172456 () Bool)

(assert (=> b!172456 (= e!104522 (= (rule!1030 lt!54874) (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54874))))))))

(declare-fun b!172455 () Bool)

(declare-fun res!77985 () Bool)

(assert (=> b!172455 (=> (not res!77985) (not e!104522))))

(assert (=> b!172455 (= res!77985 (matchR!85 (regex!523 (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54874))))) (list!1061 (charsOf!178 lt!54874))))))

(declare-fun b!172458 () Bool)

(declare-fun e!104523 () Unit!2548)

(declare-fun Unit!2582 () Unit!2548)

(assert (=> b!172458 (= e!104523 Unit!2582)))

(declare-fun b!172457 () Bool)

(declare-fun Unit!2583 () Unit!2548)

(assert (=> b!172457 (= e!104523 Unit!2583)))

(declare-fun lt!54881 () List!2928)

(assert (=> b!172457 (= lt!54881 (++!670 (list!1061 call!7514) (list!1061 lt!54311)))))

(declare-fun lt!54869 () Unit!2548)

(assert (=> b!172457 (= lt!54869 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!23 thiss!17480 (rule!1030 lt!54874) rules!1920 lt!54881))))

(assert (=> b!172457 (isEmpty!1257 (maxPrefixOneRule!73 thiss!17480 (rule!1030 lt!54874) lt!54881))))

(declare-fun lt!54878 () Unit!2548)

(assert (=> b!172457 (= lt!54878 lt!54869)))

(declare-fun lt!54883 () List!2928)

(assert (=> b!172457 (= lt!54883 (list!1061 (charsOf!178 lt!54874)))))

(declare-fun lt!54879 () Unit!2548)

(assert (=> b!172457 (= lt!54879 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!23 thiss!17480 (rule!1030 lt!54874) lt!54883 (++!670 (list!1061 call!7514) (list!1061 lt!54311))))))

(assert (=> b!172457 (not (matchR!85 (regex!523 (rule!1030 lt!54874)) lt!54883))))

(declare-fun lt!54877 () Unit!2548)

(assert (=> b!172457 (= lt!54877 lt!54879)))

(assert (=> b!172457 false))

(declare-fun d!43319 () Bool)

(assert (=> d!43319 (isDefined!171 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 call!7514) (list!1061 lt!54311))))))

(declare-fun lt!54882 () Unit!2548)

(assert (=> d!43319 (= lt!54882 e!104523)))

(declare-fun c!34126 () Bool)

(assert (=> d!43319 (= c!34126 (isEmpty!1257 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 call!7514) (list!1061 lt!54311)))))))

(declare-fun lt!54872 () Unit!2548)

(declare-fun lt!54880 () Unit!2548)

(assert (=> d!43319 (= lt!54872 lt!54880)))

(assert (=> d!43319 e!104522))

(declare-fun res!77986 () Bool)

(assert (=> d!43319 (=> (not res!77986) (not e!104522))))

(assert (=> d!43319 (= res!77986 (isDefined!173 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!54874)))))))

(assert (=> d!43319 (= lt!54880 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!23 thiss!17480 rules!1920 (list!1061 call!7514) lt!54874))))

(declare-fun lt!54870 () Unit!2548)

(declare-fun lt!54876 () Unit!2548)

(assert (=> d!43319 (= lt!54870 lt!54876)))

(declare-fun lt!54884 () List!2928)

(assert (=> d!43319 (isPrefix!230 lt!54884 (++!670 (list!1061 call!7514) (list!1061 lt!54311)))))

(assert (=> d!43319 (= lt!54876 (lemmaPrefixStaysPrefixWhenAddingToSuffix!23 lt!54884 (list!1061 call!7514) (list!1061 lt!54311)))))

(assert (=> d!43319 (= lt!54884 (list!1061 (charsOf!178 lt!54874)))))

(declare-fun lt!54868 () Unit!2548)

(declare-fun lt!54873 () Unit!2548)

(assert (=> d!43319 (= lt!54868 lt!54873)))

(declare-fun lt!54875 () List!2928)

(declare-fun lt!54871 () List!2928)

(assert (=> d!43319 (isPrefix!230 lt!54875 (++!670 lt!54875 lt!54871))))

(assert (=> d!43319 (= lt!54873 (lemmaConcatTwoListThenFirstIsPrefix!127 lt!54875 lt!54871))))

(assert (=> d!43319 (= lt!54871 (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 call!7514)))))))

(assert (=> d!43319 (= lt!54875 (list!1061 (charsOf!178 lt!54874)))))

(assert (=> d!43319 (= lt!54874 (head!604 (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 (list!1061 call!7514)))))))))

(assert (=> d!43319 (not (isEmpty!1248 rules!1920))))

(assert (=> d!43319 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 (list!1061 call!7514) (list!1061 lt!54311)) lt!54882)))

(assert (= (and d!43319 res!77986) b!172455))

(assert (= (and b!172455 res!77985) b!172456))

(assert (= (and d!43319 c!34126) b!172457))

(assert (= (and d!43319 (not c!34126)) b!172458))

(declare-fun m!169623 () Bool)

(assert (=> b!172456 m!169623))

(assert (=> b!172456 m!169623))

(declare-fun m!169625 () Bool)

(assert (=> b!172456 m!169625))

(assert (=> b!172455 m!169623))

(assert (=> b!172455 m!169623))

(assert (=> b!172455 m!169625))

(declare-fun m!169627 () Bool)

(assert (=> b!172455 m!169627))

(declare-fun m!169629 () Bool)

(assert (=> b!172455 m!169629))

(declare-fun m!169631 () Bool)

(assert (=> b!172455 m!169631))

(assert (=> b!172455 m!169627))

(assert (=> b!172455 m!169631))

(declare-fun m!169633 () Bool)

(assert (=> b!172457 m!169633))

(declare-fun m!169635 () Bool)

(assert (=> b!172457 m!169635))

(declare-fun m!169637 () Bool)

(assert (=> b!172457 m!169637))

(assert (=> b!172457 m!169633))

(declare-fun m!169639 () Bool)

(assert (=> b!172457 m!169639))

(declare-fun m!169641 () Bool)

(assert (=> b!172457 m!169641))

(declare-fun m!169643 () Bool)

(assert (=> b!172457 m!169643))

(assert (=> b!172457 m!169631))

(assert (=> b!172457 m!169627))

(assert (=> b!172457 m!167631))

(assert (=> b!172457 m!167635))

(assert (=> b!172457 m!169639))

(assert (=> b!172457 m!169631))

(declare-fun m!169645 () Bool)

(assert (=> d!43319 m!169645))

(declare-fun m!169647 () Bool)

(assert (=> d!43319 m!169647))

(assert (=> d!43319 m!169623))

(assert (=> d!43319 m!169623))

(declare-fun m!169649 () Bool)

(assert (=> d!43319 m!169649))

(assert (=> d!43319 m!167165))

(assert (=> d!43319 m!167631))

(declare-fun m!169651 () Bool)

(assert (=> d!43319 m!169651))

(declare-fun m!169653 () Bool)

(assert (=> d!43319 m!169653))

(declare-fun m!169655 () Bool)

(assert (=> d!43319 m!169655))

(assert (=> d!43319 m!169639))

(declare-fun m!169657 () Bool)

(assert (=> d!43319 m!169657))

(assert (=> d!43319 m!169645))

(declare-fun m!169659 () Bool)

(assert (=> d!43319 m!169659))

(assert (=> d!43319 m!167631))

(assert (=> d!43319 m!169653))

(assert (=> d!43319 m!167631))

(assert (=> d!43319 m!167635))

(declare-fun m!169661 () Bool)

(assert (=> d!43319 m!169661))

(assert (=> d!43319 m!169631))

(assert (=> d!43319 m!169627))

(assert (=> d!43319 m!167631))

(declare-fun m!169663 () Bool)

(assert (=> d!43319 m!169663))

(assert (=> d!43319 m!169639))

(declare-fun m!169665 () Bool)

(assert (=> d!43319 m!169665))

(assert (=> d!43319 m!169657))

(declare-fun m!169667 () Bool)

(assert (=> d!43319 m!169667))

(assert (=> d!43319 m!169647))

(declare-fun m!169669 () Bool)

(assert (=> d!43319 m!169669))

(assert (=> d!43319 m!167631))

(assert (=> d!43319 m!167635))

(assert (=> d!43319 m!169639))

(assert (=> d!43319 m!169651))

(declare-fun m!169671 () Bool)

(assert (=> d!43319 m!169671))

(declare-fun m!169673 () Bool)

(assert (=> d!43319 m!169673))

(assert (=> d!43319 m!169657))

(declare-fun m!169675 () Bool)

(assert (=> d!43319 m!169675))

(assert (=> d!43319 m!169631))

(assert (=> b!171385 d!43319))

(declare-fun d!43321 () Bool)

(declare-fun lt!54885 () BalanceConc!1744)

(assert (=> d!43321 (= (list!1061 lt!54885) (printList!93 thiss!17480 (list!1064 (singletonSeq!75 call!7512))))))

(assert (=> d!43321 (= lt!54885 (printTailRec!103 thiss!17480 (singletonSeq!75 call!7512) 0 (BalanceConc!1745 Empty!868)))))

(assert (=> d!43321 (= (print!140 thiss!17480 (singletonSeq!75 call!7512)) lt!54885)))

(declare-fun bs!16804 () Bool)

(assert (= bs!16804 d!43321))

(declare-fun m!169677 () Bool)

(assert (=> bs!16804 m!169677))

(assert (=> bs!16804 m!167633))

(declare-fun m!169679 () Bool)

(assert (=> bs!16804 m!169679))

(assert (=> bs!16804 m!169679))

(declare-fun m!169681 () Bool)

(assert (=> bs!16804 m!169681))

(assert (=> bs!16804 m!167633))

(assert (=> bs!16804 m!167641))

(assert (=> b!171385 d!43321))

(declare-fun d!43323 () Bool)

(declare-fun e!104524 () Bool)

(assert (=> d!43323 e!104524))

(declare-fun res!77987 () Bool)

(assert (=> d!43323 (=> (not res!77987) (not e!104524))))

(declare-fun lt!54886 () BalanceConc!1746)

(assert (=> d!43323 (= res!77987 (= (list!1064 lt!54886) (Cons!2920 call!7512 Nil!2920)))))

(assert (=> d!43323 (= lt!54886 (singleton!39 call!7512))))

(assert (=> d!43323 (= (singletonSeq!75 call!7512) lt!54886)))

(declare-fun b!172459 () Bool)

(assert (=> b!172459 (= e!104524 (isBalanced!240 (c!33818 lt!54886)))))

(assert (= (and d!43323 res!77987) b!172459))

(declare-fun m!169683 () Bool)

(assert (=> d!43323 m!169683))

(declare-fun m!169685 () Bool)

(assert (=> d!43323 m!169685))

(declare-fun m!169687 () Bool)

(assert (=> b!172459 m!169687))

(assert (=> b!171385 d!43323))

(declare-fun d!43325 () Bool)

(declare-fun lt!54893 () BalanceConc!1744)

(assert (=> d!43325 (= (list!1061 lt!54893) (printListTailRec!58 thiss!17480 (dropList!90 (singletonSeq!75 call!7512) 0) (list!1061 (BalanceConc!1745 Empty!868))))))

(declare-fun e!104526 () BalanceConc!1744)

(assert (=> d!43325 (= lt!54893 e!104526)))

(declare-fun c!34127 () Bool)

(assert (=> d!43325 (= c!34127 (>= 0 (size!2416 (singletonSeq!75 call!7512))))))

(declare-fun e!104525 () Bool)

(assert (=> d!43325 e!104525))

(declare-fun res!77988 () Bool)

(assert (=> d!43325 (=> (not res!77988) (not e!104525))))

(assert (=> d!43325 (= res!77988 (>= 0 0))))

(assert (=> d!43325 (= (printTailRec!103 thiss!17480 (singletonSeq!75 call!7512) 0 (BalanceConc!1745 Empty!868)) lt!54893)))

(declare-fun b!172460 () Bool)

(assert (=> b!172460 (= e!104525 (<= 0 (size!2416 (singletonSeq!75 call!7512))))))

(declare-fun b!172461 () Bool)

(assert (=> b!172461 (= e!104526 (BalanceConc!1745 Empty!868))))

(declare-fun b!172462 () Bool)

(assert (=> b!172462 (= e!104526 (printTailRec!103 thiss!17480 (singletonSeq!75 call!7512) (+ 0 1) (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 (singletonSeq!75 call!7512) 0)))))))

(declare-fun lt!54891 () List!2930)

(assert (=> b!172462 (= lt!54891 (list!1064 (singletonSeq!75 call!7512)))))

(declare-fun lt!54888 () Unit!2548)

(assert (=> b!172462 (= lt!54888 (lemmaDropApply!130 lt!54891 0))))

(assert (=> b!172462 (= (head!604 (drop!143 lt!54891 0)) (apply!422 lt!54891 0))))

(declare-fun lt!54890 () Unit!2548)

(assert (=> b!172462 (= lt!54890 lt!54888)))

(declare-fun lt!54887 () List!2930)

(assert (=> b!172462 (= lt!54887 (list!1064 (singletonSeq!75 call!7512)))))

(declare-fun lt!54892 () Unit!2548)

(assert (=> b!172462 (= lt!54892 (lemmaDropTail!122 lt!54887 0))))

(assert (=> b!172462 (= (tail!344 (drop!143 lt!54887 0)) (drop!143 lt!54887 (+ 0 1)))))

(declare-fun lt!54889 () Unit!2548)

(assert (=> b!172462 (= lt!54889 lt!54892)))

(assert (= (and d!43325 res!77988) b!172460))

(assert (= (and d!43325 c!34127) b!172461))

(assert (= (and d!43325 (not c!34127)) b!172462))

(declare-fun m!169689 () Bool)

(assert (=> d!43325 m!169689))

(assert (=> d!43325 m!167633))

(declare-fun m!169691 () Bool)

(assert (=> d!43325 m!169691))

(declare-fun m!169693 () Bool)

(assert (=> d!43325 m!169693))

(assert (=> d!43325 m!167907))

(declare-fun m!169695 () Bool)

(assert (=> d!43325 m!169695))

(assert (=> d!43325 m!167907))

(assert (=> d!43325 m!167633))

(assert (=> d!43325 m!169693))

(assert (=> b!172460 m!167633))

(assert (=> b!172460 m!169691))

(declare-fun m!169697 () Bool)

(assert (=> b!172462 m!169697))

(declare-fun m!169699 () Bool)

(assert (=> b!172462 m!169699))

(declare-fun m!169701 () Bool)

(assert (=> b!172462 m!169701))

(declare-fun m!169703 () Bool)

(assert (=> b!172462 m!169703))

(assert (=> b!172462 m!167633))

(assert (=> b!172462 m!169701))

(assert (=> b!172462 m!167633))

(assert (=> b!172462 m!169679))

(declare-fun m!169705 () Bool)

(assert (=> b!172462 m!169705))

(declare-fun m!169707 () Bool)

(assert (=> b!172462 m!169707))

(assert (=> b!172462 m!169705))

(declare-fun m!169709 () Bool)

(assert (=> b!172462 m!169709))

(assert (=> b!172462 m!169697))

(declare-fun m!169711 () Bool)

(assert (=> b!172462 m!169711))

(assert (=> b!172462 m!169703))

(declare-fun m!169713 () Bool)

(assert (=> b!172462 m!169713))

(assert (=> b!172462 m!167633))

(assert (=> b!172462 m!169713))

(declare-fun m!169715 () Bool)

(assert (=> b!172462 m!169715))

(declare-fun m!169717 () Bool)

(assert (=> b!172462 m!169717))

(declare-fun m!169719 () Bool)

(assert (=> b!172462 m!169719))

(assert (=> b!171385 d!43325))

(declare-fun d!43327 () Bool)

(assert (=> d!43327 (= (list!1061 lt!54311) (list!1065 (c!33816 lt!54311)))))

(declare-fun bs!16805 () Bool)

(assert (= bs!16805 d!43327))

(declare-fun m!169721 () Bool)

(assert (=> bs!16805 m!169721))

(assert (=> b!171385 d!43327))

(declare-fun d!43329 () Bool)

(assert (=> d!43329 (= (list!1061 call!7514) (list!1065 (c!33816 call!7514)))))

(declare-fun bs!16806 () Bool)

(assert (= bs!16806 d!43329))

(declare-fun m!169723 () Bool)

(assert (=> bs!16806 m!169723))

(assert (=> b!171385 d!43329))

(declare-fun d!43331 () Bool)

(declare-fun lt!54894 () Bool)

(assert (=> d!43331 (= lt!54894 (isEmpty!1253 (list!1064 (_1!1629 lt!54176))))))

(assert (=> d!43331 (= lt!54894 (isEmpty!1254 (c!33818 (_1!1629 lt!54176))))))

(assert (=> d!43331 (= (isEmpty!1246 (_1!1629 lt!54176)) lt!54894)))

(declare-fun bs!16807 () Bool)

(assert (= bs!16807 d!43331))

(assert (=> bs!16807 m!167311))

(assert (=> bs!16807 m!167311))

(declare-fun m!169725 () Bool)

(assert (=> bs!16807 m!169725))

(declare-fun m!169727 () Bool)

(assert (=> bs!16807 m!169727))

(assert (=> b!171176 d!43331))

(declare-fun d!43333 () Bool)

(declare-fun lt!54895 () Token!790)

(assert (=> d!43333 (= lt!54895 (apply!422 (list!1064 (_1!1629 lt!54357)) 0))))

(assert (=> d!43333 (= lt!54895 (apply!425 (c!33818 (_1!1629 lt!54357)) 0))))

(declare-fun e!104527 () Bool)

(assert (=> d!43333 e!104527))

(declare-fun res!77989 () Bool)

(assert (=> d!43333 (=> (not res!77989) (not e!104527))))

(assert (=> d!43333 (= res!77989 (<= 0 0))))

(assert (=> d!43333 (= (apply!423 (_1!1629 lt!54357) 0) lt!54895)))

(declare-fun b!172463 () Bool)

(assert (=> b!172463 (= e!104527 (< 0 (size!2416 (_1!1629 lt!54357))))))

(assert (= (and d!43333 res!77989) b!172463))

(declare-fun m!169729 () Bool)

(assert (=> d!43333 m!169729))

(assert (=> d!43333 m!169729))

(declare-fun m!169731 () Bool)

(assert (=> d!43333 m!169731))

(declare-fun m!169733 () Bool)

(assert (=> d!43333 m!169733))

(assert (=> b!172463 m!167787))

(assert (=> b!171491 d!43333))

(declare-fun b!172464 () Bool)

(declare-fun e!104528 () Option!320)

(declare-fun lt!54898 () Option!320)

(declare-fun lt!54897 () Option!320)

(assert (=> b!172464 (= e!104528 (ite (and ((_ is None!319) lt!54898) ((_ is None!319) lt!54897)) None!319 (ite ((_ is None!319) lt!54897) lt!54898 (ite ((_ is None!319) lt!54898) lt!54897 (ite (>= (size!2411 (_1!1630 (v!13762 lt!54898))) (size!2411 (_1!1630 (v!13762 lt!54897)))) lt!54898 lt!54897)))))))

(declare-fun call!7599 () Option!320)

(assert (=> b!172464 (= lt!54898 call!7599)))

(assert (=> b!172464 (= lt!54897 (maxPrefix!139 thiss!17480 (t!27131 (t!27131 rules!1920)) lt!54115))))

(declare-fun b!172465 () Bool)

(assert (=> b!172465 (= e!104528 call!7599)))

(declare-fun b!172466 () Bool)

(declare-fun res!77991 () Bool)

(declare-fun e!104530 () Bool)

(assert (=> b!172466 (=> (not res!77991) (not e!104530))))

(declare-fun lt!54899 () Option!320)

(assert (=> b!172466 (= res!77991 (< (size!2417 (_2!1630 (get!801 lt!54899))) (size!2417 lt!54115)))))

(declare-fun bm!7594 () Bool)

(assert (=> bm!7594 (= call!7599 (maxPrefixOneRule!73 thiss!17480 (h!8316 (t!27131 rules!1920)) lt!54115))))

(declare-fun b!172468 () Bool)

(assert (=> b!172468 (= e!104530 (contains!469 (t!27131 rules!1920) (rule!1030 (_1!1630 (get!801 lt!54899)))))))

(declare-fun b!172469 () Bool)

(declare-fun e!104529 () Bool)

(assert (=> b!172469 (= e!104529 e!104530)))

(declare-fun res!77995 () Bool)

(assert (=> b!172469 (=> (not res!77995) (not e!104530))))

(assert (=> b!172469 (= res!77995 (isDefined!171 lt!54899))))

(declare-fun b!172470 () Bool)

(declare-fun res!77993 () Bool)

(assert (=> b!172470 (=> (not res!77993) (not e!104530))))

(assert (=> b!172470 (= res!77993 (= (value!19221 (_1!1630 (get!801 lt!54899))) (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54899)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!54899)))))))))

(declare-fun b!172467 () Bool)

(declare-fun res!77996 () Bool)

(assert (=> b!172467 (=> (not res!77996) (not e!104530))))

(assert (=> b!172467 (= res!77996 (matchR!85 (regex!523 (rule!1030 (_1!1630 (get!801 lt!54899)))) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54899))))))))

(declare-fun d!43335 () Bool)

(assert (=> d!43335 e!104529))

(declare-fun res!77992 () Bool)

(assert (=> d!43335 (=> res!77992 e!104529)))

(assert (=> d!43335 (= res!77992 (isEmpty!1257 lt!54899))))

(assert (=> d!43335 (= lt!54899 e!104528)))

(declare-fun c!34128 () Bool)

(assert (=> d!43335 (= c!34128 (and ((_ is Cons!2919) (t!27131 rules!1920)) ((_ is Nil!2919) (t!27131 (t!27131 rules!1920)))))))

(declare-fun lt!54896 () Unit!2548)

(declare-fun lt!54900 () Unit!2548)

(assert (=> d!43335 (= lt!54896 lt!54900)))

(assert (=> d!43335 (isPrefix!230 lt!54115 lt!54115)))

(assert (=> d!43335 (= lt!54900 (lemmaIsPrefixRefl!138 lt!54115 lt!54115))))

(assert (=> d!43335 (rulesValidInductive!123 thiss!17480 (t!27131 rules!1920))))

(assert (=> d!43335 (= (maxPrefix!139 thiss!17480 (t!27131 rules!1920) lt!54115) lt!54899)))

(declare-fun b!172471 () Bool)

(declare-fun res!77990 () Bool)

(assert (=> b!172471 (=> (not res!77990) (not e!104530))))

(assert (=> b!172471 (= res!77990 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54899)))) (_2!1630 (get!801 lt!54899))) lt!54115))))

(declare-fun b!172472 () Bool)

(declare-fun res!77994 () Bool)

(assert (=> b!172472 (=> (not res!77994) (not e!104530))))

(assert (=> b!172472 (= res!77994 (= (list!1061 (charsOf!178 (_1!1630 (get!801 lt!54899)))) (originalCharacters!566 (_1!1630 (get!801 lt!54899)))))))

(assert (= (and d!43335 c!34128) b!172465))

(assert (= (and d!43335 (not c!34128)) b!172464))

(assert (= (or b!172465 b!172464) bm!7594))

(assert (= (and d!43335 (not res!77992)) b!172469))

(assert (= (and b!172469 res!77995) b!172472))

(assert (= (and b!172472 res!77994) b!172466))

(assert (= (and b!172466 res!77991) b!172471))

(assert (= (and b!172471 res!77990) b!172470))

(assert (= (and b!172470 res!77993) b!172467))

(assert (= (and b!172467 res!77996) b!172468))

(declare-fun m!169735 () Bool)

(assert (=> b!172472 m!169735))

(declare-fun m!169737 () Bool)

(assert (=> b!172472 m!169737))

(assert (=> b!172472 m!169737))

(declare-fun m!169739 () Bool)

(assert (=> b!172472 m!169739))

(assert (=> b!172467 m!169735))

(assert (=> b!172467 m!169737))

(assert (=> b!172467 m!169737))

(assert (=> b!172467 m!169739))

(assert (=> b!172467 m!169739))

(declare-fun m!169741 () Bool)

(assert (=> b!172467 m!169741))

(assert (=> b!172471 m!169735))

(assert (=> b!172471 m!169737))

(assert (=> b!172471 m!169737))

(assert (=> b!172471 m!169739))

(assert (=> b!172471 m!169739))

(declare-fun m!169743 () Bool)

(assert (=> b!172471 m!169743))

(declare-fun m!169745 () Bool)

(assert (=> b!172469 m!169745))

(declare-fun m!169747 () Bool)

(assert (=> bm!7594 m!169747))

(assert (=> b!172470 m!169735))

(declare-fun m!169749 () Bool)

(assert (=> b!172470 m!169749))

(assert (=> b!172470 m!169749))

(declare-fun m!169751 () Bool)

(assert (=> b!172470 m!169751))

(assert (=> b!172466 m!169735))

(declare-fun m!169753 () Bool)

(assert (=> b!172466 m!169753))

(assert (=> b!172466 m!167393))

(assert (=> b!172468 m!169735))

(declare-fun m!169755 () Bool)

(assert (=> b!172468 m!169755))

(declare-fun m!169757 () Bool)

(assert (=> d!43335 m!169757))

(assert (=> d!43335 m!168201))

(assert (=> d!43335 m!168203))

(assert (=> d!43335 m!168691))

(declare-fun m!169759 () Bool)

(assert (=> b!172464 m!169759))

(assert (=> b!171736 d!43335))

(declare-fun d!43337 () Bool)

(declare-fun lt!54903 () Bool)

(assert (=> d!43337 (= lt!54903 (isEmpty!1247 (list!1061 (_2!1629 lt!54423))))))

(declare-fun isEmpty!1260 (Conc!868) Bool)

(assert (=> d!43337 (= lt!54903 (isEmpty!1260 (c!33816 (_2!1629 lt!54423))))))

(assert (=> d!43337 (= (isEmpty!1256 (_2!1629 lt!54423)) lt!54903)))

(declare-fun bs!16808 () Bool)

(assert (= bs!16808 d!43337))

(declare-fun m!169761 () Bool)

(assert (=> bs!16808 m!169761))

(assert (=> bs!16808 m!169761))

(declare-fun m!169763 () Bool)

(assert (=> bs!16808 m!169763))

(declare-fun m!169765 () Bool)

(assert (=> bs!16808 m!169765))

(assert (=> b!171567 d!43337))

(declare-fun d!43339 () Bool)

(assert (=> d!43339 (= (list!1064 (_1!1629 lt!54176)) (list!1067 (c!33818 (_1!1629 lt!54176))))))

(declare-fun bs!16809 () Bool)

(assert (= bs!16809 d!43339))

(declare-fun m!169767 () Bool)

(assert (=> bs!16809 m!169767))

(assert (=> b!171180 d!43339))

(declare-fun b!172483 () Bool)

(declare-fun e!104539 () tuple2!2834)

(assert (=> b!172483 (= e!104539 (tuple2!2835 Nil!2920 (list!1061 (seqFromList!423 lt!54115))))))

(declare-fun b!172484 () Bool)

(declare-fun e!104538 () Bool)

(declare-fun e!104537 () Bool)

(assert (=> b!172484 (= e!104538 e!104537)))

(declare-fun res!77999 () Bool)

(declare-fun lt!54911 () tuple2!2834)

(assert (=> b!172484 (= res!77999 (< (size!2417 (_2!1633 lt!54911)) (size!2417 (list!1061 (seqFromList!423 lt!54115)))))))

(assert (=> b!172484 (=> (not res!77999) (not e!104537))))

(declare-fun b!172485 () Bool)

(assert (=> b!172485 (= e!104537 (not (isEmpty!1253 (_1!1633 lt!54911))))))

(declare-fun d!43341 () Bool)

(assert (=> d!43341 e!104538))

(declare-fun c!34134 () Bool)

(assert (=> d!43341 (= c!34134 (> (size!2418 (_1!1633 lt!54911)) 0))))

(assert (=> d!43341 (= lt!54911 e!104539)))

(declare-fun c!34133 () Bool)

(declare-fun lt!54912 () Option!320)

(assert (=> d!43341 (= c!34133 ((_ is Some!319) lt!54912))))

(assert (=> d!43341 (= lt!54912 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (seqFromList!423 lt!54115))))))

(assert (=> d!43341 (= (lexList!115 thiss!17480 rules!1920 (list!1061 (seqFromList!423 lt!54115))) lt!54911)))

(declare-fun b!172486 () Bool)

(declare-fun lt!54910 () tuple2!2834)

(assert (=> b!172486 (= e!104539 (tuple2!2835 (Cons!2920 (_1!1630 (v!13762 lt!54912)) (_1!1633 lt!54910)) (_2!1633 lt!54910)))))

(assert (=> b!172486 (= lt!54910 (lexList!115 thiss!17480 rules!1920 (_2!1630 (v!13762 lt!54912))))))

(declare-fun b!172487 () Bool)

(assert (=> b!172487 (= e!104538 (= (_2!1633 lt!54911) (list!1061 (seqFromList!423 lt!54115))))))

(assert (= (and d!43341 c!34133) b!172486))

(assert (= (and d!43341 (not c!34133)) b!172483))

(assert (= (and d!43341 c!34134) b!172484))

(assert (= (and d!43341 (not c!34134)) b!172487))

(assert (= (and b!172484 res!77999) b!172485))

(declare-fun m!169769 () Bool)

(assert (=> b!172484 m!169769))

(assert (=> b!172484 m!167313))

(declare-fun m!169771 () Bool)

(assert (=> b!172484 m!169771))

(declare-fun m!169773 () Bool)

(assert (=> b!172485 m!169773))

(declare-fun m!169775 () Bool)

(assert (=> d!43341 m!169775))

(assert (=> d!43341 m!167313))

(declare-fun m!169777 () Bool)

(assert (=> d!43341 m!169777))

(declare-fun m!169779 () Bool)

(assert (=> b!172486 m!169779))

(assert (=> b!171180 d!43341))

(declare-fun d!43343 () Bool)

(assert (=> d!43343 (= (list!1061 (seqFromList!423 lt!54115)) (list!1065 (c!33816 (seqFromList!423 lt!54115))))))

(declare-fun bs!16810 () Bool)

(assert (= bs!16810 d!43343))

(declare-fun m!169781 () Bool)

(assert (=> bs!16810 m!169781))

(assert (=> b!171180 d!43343))

(declare-fun bs!16836 () Bool)

(declare-fun b!172567 () Bool)

(assert (= bs!16836 (and b!172567 d!43313)))

(declare-fun lambda!4960 () Int)

(assert (=> bs!16836 (= (and (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (= (toValue!1186 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (= lambda!4960 lambda!4951))))

(declare-fun b!172593 () Bool)

(declare-fun e!104609 () Bool)

(assert (=> b!172593 (= e!104609 true)))

(declare-fun b!172592 () Bool)

(declare-fun e!104608 () Bool)

(assert (=> b!172592 (= e!104608 e!104609)))

(assert (=> b!172567 e!104608))

(assert (= b!172592 b!172593))

(assert (= b!172567 b!172592))

(assert (=> b!172593 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1117 order!1607 lambda!4960))))

(assert (=> b!172593 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1117 order!1607 lambda!4960))))

(declare-fun b!172566 () Bool)

(declare-fun e!104596 () Bool)

(declare-fun e!104592 () Bool)

(assert (=> b!172566 (= e!104596 e!104592)))

(declare-fun res!78042 () Bool)

(assert (=> b!172566 (=> res!78042 e!104592)))

(declare-fun lt!54980 () Option!321)

(assert (=> b!172566 (= res!78042 (not (isDefined!172 lt!54980)))))

(declare-fun e!104595 () Option!321)

(declare-datatypes ((tuple2!2838 0))(
  ( (tuple2!2839 (_1!1635 BalanceConc!1744) (_2!1635 BalanceConc!1744)) )
))
(declare-fun lt!54987 () tuple2!2838)

(assert (=> b!172567 (= e!104595 (Some!320 (tuple2!2831 (Token!791 (apply!424 (transformation!523 (h!8316 rules!1920)) (_1!1635 lt!54987)) (h!8316 rules!1920) (size!2415 (_1!1635 lt!54987)) (list!1061 (_1!1635 lt!54987))) (_2!1635 lt!54987))))))

(declare-fun lt!54986 () List!2928)

(assert (=> b!172567 (= lt!54986 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(declare-fun lt!54978 () Unit!2548)

(assert (=> b!172567 (= lt!54978 (longestMatchIsAcceptedByMatchOrIsEmpty!35 (regex!523 (h!8316 rules!1920)) lt!54986))))

(declare-fun res!78041 () Bool)

(assert (=> b!172567 (= res!78041 (isEmpty!1247 (_1!1634 (findLongestMatchInner!51 (regex!523 (h!8316 rules!1920)) Nil!2918 (size!2417 Nil!2918) lt!54986 lt!54986 (size!2417 lt!54986)))))))

(declare-fun e!104594 () Bool)

(assert (=> b!172567 (=> res!78041 e!104594)))

(assert (=> b!172567 e!104594))

(declare-fun lt!54979 () Unit!2548)

(assert (=> b!172567 (= lt!54979 lt!54978)))

(declare-fun lt!54981 () Unit!2548)

(declare-fun lemmaInv!13 (TokenValueInjection!862) Unit!2548)

(assert (=> b!172567 (= lt!54981 (lemmaInv!13 (transformation!523 (h!8316 rules!1920))))))

(declare-fun lt!54984 () Unit!2548)

(declare-fun ForallOf!10 (Int BalanceConc!1744) Unit!2548)

(assert (=> b!172567 (= lt!54984 (ForallOf!10 lambda!4960 (_1!1635 lt!54987)))))

(declare-fun lt!54983 () Unit!2548)

(assert (=> b!172567 (= lt!54983 (ForallOf!10 lambda!4960 (seqFromList!423 (list!1061 (_1!1635 lt!54987)))))))

(declare-fun lt!54982 () Option!321)

(assert (=> b!172567 (= lt!54982 (Some!320 (tuple2!2831 (Token!791 (apply!424 (transformation!523 (h!8316 rules!1920)) (_1!1635 lt!54987)) (h!8316 rules!1920) (size!2415 (_1!1635 lt!54987)) (list!1061 (_1!1635 lt!54987))) (_2!1635 lt!54987))))))

(declare-fun lt!54985 () Unit!2548)

(declare-fun lemmaEqSameImage!10 (TokenValueInjection!862 BalanceConc!1744 BalanceConc!1744) Unit!2548)

(assert (=> b!172567 (= lt!54985 (lemmaEqSameImage!10 (transformation!523 (h!8316 rules!1920)) (_1!1635 lt!54987) (seqFromList!423 (list!1061 (_1!1635 lt!54987)))))))

(declare-fun b!172568 () Bool)

(assert (=> b!172568 (= e!104595 None!320)))

(declare-fun d!43345 () Bool)

(assert (=> d!43345 e!104596))

(declare-fun res!78043 () Bool)

(assert (=> d!43345 (=> (not res!78043) (not e!104596))))

(assert (=> d!43345 (= res!78043 (= (isDefined!172 lt!54980) (isDefined!171 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))))

(assert (=> d!43345 (= lt!54980 e!104595)))

(declare-fun c!34152 () Bool)

(assert (=> d!43345 (= c!34152 (isEmpty!1256 (_1!1635 lt!54987)))))

(declare-fun findLongestMatchWithZipperSequence!10 (Regex!747 BalanceConc!1744) tuple2!2838)

(assert (=> d!43345 (= lt!54987 (findLongestMatchWithZipperSequence!10 (regex!523 (h!8316 rules!1920)) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!43345 (ruleValid!58 thiss!17480 (h!8316 rules!1920))))

(assert (=> d!43345 (= (maxPrefixOneRuleZipperSequence!43 thiss!17480 (h!8316 rules!1920) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) lt!54980)))

(declare-fun b!172569 () Bool)

(declare-fun e!104593 () Bool)

(assert (=> b!172569 (= e!104592 e!104593)))

(declare-fun res!78040 () Bool)

(assert (=> b!172569 (=> (not res!78040) (not e!104593))))

(assert (=> b!172569 (= res!78040 (= (_1!1631 (get!802 lt!54980)) (_1!1630 (get!801 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun b!172570 () Bool)

(assert (=> b!172570 (= e!104593 (= (list!1061 (_2!1631 (get!802 lt!54980))) (_2!1630 (get!801 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun b!172571 () Bool)

(assert (=> b!172571 (= e!104594 (matchR!85 (regex!523 (h!8316 rules!1920)) (_1!1634 (findLongestMatchInner!51 (regex!523 (h!8316 rules!1920)) Nil!2918 (size!2417 Nil!2918) lt!54986 lt!54986 (size!2417 lt!54986)))))))

(assert (= (and d!43345 c!34152) b!172568))

(assert (= (and d!43345 (not c!34152)) b!172567))

(assert (= (and b!172567 (not res!78041)) b!172571))

(assert (= (and d!43345 res!78043) b!172566))

(assert (= (and b!172566 (not res!78042)) b!172569))

(assert (= (and b!172569 res!78040) b!172570))

(assert (=> b!172567 m!167105))

(assert (=> b!172567 m!167249))

(assert (=> b!172567 m!169337))

(declare-fun m!169979 () Bool)

(assert (=> b!172567 m!169979))

(declare-fun m!169981 () Bool)

(assert (=> b!172567 m!169981))

(declare-fun m!169983 () Bool)

(assert (=> b!172567 m!169983))

(assert (=> b!172567 m!169337))

(declare-fun m!169985 () Bool)

(assert (=> b!172567 m!169985))

(declare-fun m!169987 () Bool)

(assert (=> b!172567 m!169987))

(assert (=> b!172567 m!169979))

(declare-fun m!169989 () Bool)

(assert (=> b!172567 m!169989))

(declare-fun m!169991 () Bool)

(assert (=> b!172567 m!169991))

(declare-fun m!169993 () Bool)

(assert (=> b!172567 m!169993))

(assert (=> b!172567 m!169979))

(assert (=> b!172567 m!169985))

(declare-fun m!169995 () Bool)

(assert (=> b!172567 m!169995))

(declare-fun m!169997 () Bool)

(assert (=> b!172567 m!169997))

(declare-fun m!170003 () Bool)

(assert (=> b!172567 m!170003))

(declare-fun m!170007 () Bool)

(assert (=> b!172567 m!170007))

(assert (=> b!172567 m!169993))

(declare-fun m!170013 () Bool)

(assert (=> b!172566 m!170013))

(assert (=> b!172571 m!169337))

(assert (=> b!172571 m!169985))

(assert (=> b!172571 m!169337))

(assert (=> b!172571 m!169985))

(assert (=> b!172571 m!169987))

(declare-fun m!170015 () Bool)

(assert (=> b!172571 m!170015))

(assert (=> d!43345 m!167105))

(assert (=> d!43345 m!167249))

(assert (=> d!43345 m!168653))

(declare-fun m!170017 () Bool)

(assert (=> d!43345 m!170017))

(assert (=> d!43345 m!167105))

(declare-fun m!170019 () Bool)

(assert (=> d!43345 m!170019))

(assert (=> d!43345 m!167249))

(assert (=> d!43345 m!168653))

(assert (=> d!43345 m!170013))

(declare-fun m!170021 () Bool)

(assert (=> d!43345 m!170021))

(assert (=> d!43345 m!168689))

(assert (=> b!172570 m!167105))

(assert (=> b!172570 m!167249))

(declare-fun m!170023 () Bool)

(assert (=> b!172570 m!170023))

(assert (=> b!172570 m!168653))

(declare-fun m!170025 () Bool)

(assert (=> b!172570 m!170025))

(declare-fun m!170027 () Bool)

(assert (=> b!172570 m!170027))

(assert (=> b!172570 m!167249))

(assert (=> b!172570 m!168653))

(assert (=> b!172569 m!170023))

(assert (=> b!172569 m!167105))

(assert (=> b!172569 m!167249))

(assert (=> b!172569 m!167249))

(assert (=> b!172569 m!168653))

(assert (=> b!172569 m!168653))

(assert (=> b!172569 m!170025))

(assert (=> bm!7452 d!43345))

(declare-fun bs!16837 () Bool)

(declare-fun d!43387 () Bool)

(assert (= bs!16837 (and d!43387 d!43313)))

(declare-fun lambda!4961 () Int)

(assert (=> bs!16837 (= (and (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (= (toValue!1186 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (= lambda!4961 lambda!4951))))

(declare-fun bs!16838 () Bool)

(assert (= bs!16838 (and d!43387 b!172567)))

(assert (=> bs!16838 (= lambda!4961 lambda!4960)))

(assert (=> d!43387 true))

(assert (=> d!43387 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1117 order!1607 lambda!4961))))

(assert (=> d!43387 true))

(assert (=> d!43387 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1117 order!1607 lambda!4961))))

(assert (=> d!43387 (= (semiInverseModEq!181 (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (Forall!136 lambda!4961))))

(declare-fun bs!16839 () Bool)

(assert (= bs!16839 d!43387))

(declare-fun m!170037 () Bool)

(assert (=> bs!16839 m!170037))

(assert (=> d!42795 d!43387))

(declare-fun b!172618 () Bool)

(declare-fun e!104626 () List!2928)

(assert (=> b!172618 (= e!104626 (ite c!33864 lt!54225 call!7483))))

(declare-fun e!104625 () Bool)

(declare-fun lt!54998 () List!2928)

(declare-fun b!172621 () Bool)

(assert (=> b!172621 (= e!104625 (or (not (= (ite c!33864 lt!54225 call!7483) Nil!2918)) (= lt!54998 e!103798)))))

(declare-fun d!43389 () Bool)

(assert (=> d!43389 e!104625))

(declare-fun res!78060 () Bool)

(assert (=> d!43389 (=> (not res!78060) (not e!104625))))

(assert (=> d!43389 (= res!78060 (= (content!400 lt!54998) ((_ map or) (content!400 e!103798) (content!400 (ite c!33864 lt!54225 call!7483)))))))

(assert (=> d!43389 (= lt!54998 e!104626)))

(declare-fun c!34164 () Bool)

(assert (=> d!43389 (= c!34164 ((_ is Nil!2918) e!103798))))

(assert (=> d!43389 (= (++!670 e!103798 (ite c!33864 lt!54225 call!7483)) lt!54998)))

(declare-fun b!172620 () Bool)

(declare-fun res!78061 () Bool)

(assert (=> b!172620 (=> (not res!78061) (not e!104625))))

(assert (=> b!172620 (= res!78061 (= (size!2417 lt!54998) (+ (size!2417 e!103798) (size!2417 (ite c!33864 lt!54225 call!7483)))))))

(declare-fun b!172619 () Bool)

(assert (=> b!172619 (= e!104626 (Cons!2918 (h!8315 e!103798) (++!670 (t!27130 e!103798) (ite c!33864 lt!54225 call!7483))))))

(assert (= (and d!43389 c!34164) b!172618))

(assert (= (and d!43389 (not c!34164)) b!172619))

(assert (= (and d!43389 res!78060) b!172620))

(assert (= (and b!172620 res!78061) b!172621))

(declare-fun m!170047 () Bool)

(assert (=> d!43389 m!170047))

(declare-fun m!170049 () Bool)

(assert (=> d!43389 m!170049))

(declare-fun m!170051 () Bool)

(assert (=> d!43389 m!170051))

(declare-fun m!170053 () Bool)

(assert (=> b!172620 m!170053))

(declare-fun m!170055 () Bool)

(assert (=> b!172620 m!170055))

(declare-fun m!170057 () Bool)

(assert (=> b!172620 m!170057))

(declare-fun m!170059 () Bool)

(assert (=> b!172619 m!170059))

(assert (=> bm!7476 d!43389))

(declare-fun d!43391 () Bool)

(declare-fun c!34165 () Bool)

(assert (=> d!43391 (= c!34165 ((_ is Nil!2918) lt!54326))))

(declare-fun e!104627 () (InoxSet C!2416))

(assert (=> d!43391 (= (content!400 lt!54326) e!104627)))

(declare-fun b!172622 () Bool)

(assert (=> b!172622 (= e!104627 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!172623 () Bool)

(assert (=> b!172623 (= e!104627 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54326) true) (content!400 (t!27130 lt!54326))))))

(assert (= (and d!43391 c!34165) b!172622))

(assert (= (and d!43391 (not c!34165)) b!172623))

(declare-fun m!170067 () Bool)

(assert (=> b!172623 m!170067))

(declare-fun m!170069 () Bool)

(assert (=> b!172623 m!170069))

(assert (=> d!42773 d!43391))

(declare-fun d!43393 () Bool)

(declare-fun c!34166 () Bool)

(assert (=> d!43393 (= c!34166 ((_ is Nil!2918) lt!54115))))

(declare-fun e!104628 () (InoxSet C!2416))

(assert (=> d!43393 (= (content!400 lt!54115) e!104628)))

(declare-fun b!172624 () Bool)

(assert (=> b!172624 (= e!104628 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!172625 () Bool)

(assert (=> b!172625 (= e!104628 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54115) true) (content!400 (t!27130 lt!54115))))))

(assert (= (and d!43393 c!34166) b!172624))

(assert (= (and d!43393 (not c!34166)) b!172625))

(declare-fun m!170075 () Bool)

(assert (=> b!172625 m!170075))

(assert (=> b!172625 m!169251))

(assert (=> d!42773 d!43393))

(declare-fun d!43395 () Bool)

(declare-fun c!34167 () Bool)

(assert (=> d!43395 (= c!34167 ((_ is Nil!2918) lt!54111))))

(declare-fun e!104629 () (InoxSet C!2416))

(assert (=> d!43395 (= (content!400 lt!54111) e!104629)))

(declare-fun b!172626 () Bool)

(assert (=> b!172626 (= e!104629 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!172627 () Bool)

(assert (=> b!172627 (= e!104629 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54111) true) (content!400 (t!27130 lt!54111))))))

(assert (= (and d!43395 c!34167) b!172626))

(assert (= (and d!43395 (not c!34167)) b!172627))

(declare-fun m!170077 () Bool)

(assert (=> b!172627 m!170077))

(declare-fun m!170079 () Bool)

(assert (=> b!172627 m!170079))

(assert (=> d!42773 d!43395))

(declare-fun b!172628 () Bool)

(declare-fun e!104630 () List!2928)

(assert (=> b!172628 (= e!104630 Nil!2918)))

(declare-fun d!43397 () Bool)

(declare-fun c!34168 () Bool)

(assert (=> d!43397 (= c!34168 ((_ is Empty!868) (c!33816 (charsOf!178 (h!8317 tokens!465)))))))

(assert (=> d!43397 (= (list!1065 (c!33816 (charsOf!178 (h!8317 tokens!465)))) e!104630)))

(declare-fun b!172629 () Bool)

(declare-fun e!104631 () List!2928)

(assert (=> b!172629 (= e!104630 e!104631)))

(declare-fun c!34169 () Bool)

(assert (=> b!172629 (= c!34169 ((_ is Leaf!1469) (c!33816 (charsOf!178 (h!8317 tokens!465)))))))

(declare-fun b!172631 () Bool)

(assert (=> b!172631 (= e!104631 (++!670 (list!1065 (left!2232 (c!33816 (charsOf!178 (h!8317 tokens!465))))) (list!1065 (right!2562 (c!33816 (charsOf!178 (h!8317 tokens!465)))))))))

(declare-fun b!172630 () Bool)

(assert (=> b!172630 (= e!104631 (list!1066 (xs!3463 (c!33816 (charsOf!178 (h!8317 tokens!465))))))))

(assert (= (and d!43397 c!34168) b!172628))

(assert (= (and d!43397 (not c!34168)) b!172629))

(assert (= (and b!172629 c!34169) b!172630))

(assert (= (and b!172629 (not c!34169)) b!172631))

(declare-fun m!170083 () Bool)

(assert (=> b!172631 m!170083))

(declare-fun m!170085 () Bool)

(assert (=> b!172631 m!170085))

(assert (=> b!172631 m!170083))

(assert (=> b!172631 m!170085))

(declare-fun m!170087 () Bool)

(assert (=> b!172631 m!170087))

(declare-fun m!170089 () Bool)

(assert (=> b!172630 m!170089))

(assert (=> d!42769 d!43397))

(declare-fun d!43403 () Bool)

(declare-fun lt!55000 () Int)

(assert (=> d!43403 (= lt!55000 (size!2418 (list!1064 lt!54116)))))

(assert (=> d!43403 (= lt!55000 (size!2419 (c!33818 lt!54116)))))

(assert (=> d!43403 (= (size!2416 lt!54116) lt!55000)))

(declare-fun bs!16841 () Bool)

(assert (= bs!16841 d!43403))

(assert (=> bs!16841 m!167897))

(assert (=> bs!16841 m!167897))

(declare-fun m!170091 () Bool)

(assert (=> bs!16841 m!170091))

(declare-fun m!170093 () Bool)

(assert (=> bs!16841 m!170093))

(assert (=> d!42831 d!43403))

(declare-fun d!43405 () Bool)

(assert (=> d!43405 (= (list!1061 (BalanceConc!1745 Empty!868)) (list!1065 (c!33816 (BalanceConc!1745 Empty!868))))))

(declare-fun bs!16842 () Bool)

(assert (= bs!16842 d!43405))

(declare-fun m!170101 () Bool)

(assert (=> bs!16842 m!170101))

(assert (=> d!42831 d!43405))

(declare-fun d!43407 () Bool)

(assert (=> d!43407 (= (list!1061 lt!54404) (list!1065 (c!33816 lt!54404)))))

(declare-fun bs!16843 () Bool)

(assert (= bs!16843 d!43407))

(declare-fun m!170109 () Bool)

(assert (=> bs!16843 m!170109))

(assert (=> d!42831 d!43407))

(declare-fun d!43409 () Bool)

(assert (=> d!43409 (= (dropList!90 lt!54116 0) (drop!143 (list!1067 (c!33818 lt!54116)) 0))))

(declare-fun bs!16844 () Bool)

(assert (= bs!16844 d!43409))

(assert (=> bs!16844 m!168625))

(assert (=> bs!16844 m!168625))

(declare-fun m!170117 () Bool)

(assert (=> bs!16844 m!170117))

(assert (=> d!42831 d!43409))

(declare-fun d!43411 () Bool)

(declare-fun lt!55028 () List!2928)

(assert (=> d!43411 (= lt!55028 (++!670 (list!1061 (BalanceConc!1745 Empty!868)) (printList!93 thiss!17480 (dropList!90 lt!54116 0))))))

(declare-fun e!104650 () List!2928)

(assert (=> d!43411 (= lt!55028 e!104650)))

(declare-fun c!34180 () Bool)

(assert (=> d!43411 (= c!34180 ((_ is Cons!2920) (dropList!90 lt!54116 0)))))

(assert (=> d!43411 (= (printListTailRec!58 thiss!17480 (dropList!90 lt!54116 0) (list!1061 (BalanceConc!1745 Empty!868))) lt!55028)))

(declare-fun b!172663 () Bool)

(assert (=> b!172663 (= e!104650 (printListTailRec!58 thiss!17480 (t!27132 (dropList!90 lt!54116 0)) (++!670 (list!1061 (BalanceConc!1745 Empty!868)) (list!1061 (charsOf!178 (h!8317 (dropList!90 lt!54116 0)))))))))

(declare-fun lt!55026 () List!2928)

(assert (=> b!172663 (= lt!55026 (list!1061 (charsOf!178 (h!8317 (dropList!90 lt!54116 0)))))))

(declare-fun lt!55029 () List!2928)

(assert (=> b!172663 (= lt!55029 (printList!93 thiss!17480 (t!27132 (dropList!90 lt!54116 0))))))

(declare-fun lt!55030 () Unit!2548)

(assert (=> b!172663 (= lt!55030 (lemmaConcatAssociativity!208 (list!1061 (BalanceConc!1745 Empty!868)) lt!55026 lt!55029))))

(assert (=> b!172663 (= (++!670 (++!670 (list!1061 (BalanceConc!1745 Empty!868)) lt!55026) lt!55029) (++!670 (list!1061 (BalanceConc!1745 Empty!868)) (++!670 lt!55026 lt!55029)))))

(declare-fun lt!55027 () Unit!2548)

(assert (=> b!172663 (= lt!55027 lt!55030)))

(declare-fun b!172664 () Bool)

(assert (=> b!172664 (= e!104650 (list!1061 (BalanceConc!1745 Empty!868)))))

(assert (= (and d!43411 c!34180) b!172663))

(assert (= (and d!43411 (not c!34180)) b!172664))

(assert (=> d!43411 m!167905))

(declare-fun m!170185 () Bool)

(assert (=> d!43411 m!170185))

(assert (=> d!43411 m!167907))

(assert (=> d!43411 m!170185))

(declare-fun m!170189 () Bool)

(assert (=> d!43411 m!170189))

(declare-fun m!170191 () Bool)

(assert (=> b!172663 m!170191))

(assert (=> b!172663 m!167907))

(assert (=> b!172663 m!170191))

(declare-fun m!170193 () Bool)

(assert (=> b!172663 m!170193))

(declare-fun m!170195 () Bool)

(assert (=> b!172663 m!170195))

(declare-fun m!170197 () Bool)

(assert (=> b!172663 m!170197))

(assert (=> b!172663 m!167907))

(declare-fun m!170199 () Bool)

(assert (=> b!172663 m!170199))

(declare-fun m!170201 () Bool)

(assert (=> b!172663 m!170201))

(declare-fun m!170203 () Bool)

(assert (=> b!172663 m!170203))

(declare-fun m!170205 () Bool)

(assert (=> b!172663 m!170205))

(assert (=> b!172663 m!170203))

(assert (=> b!172663 m!167907))

(assert (=> b!172663 m!170205))

(assert (=> b!172663 m!170195))

(declare-fun m!170207 () Bool)

(assert (=> b!172663 m!170207))

(declare-fun m!170209 () Bool)

(assert (=> b!172663 m!170209))

(assert (=> b!172663 m!167907))

(assert (=> b!172663 m!170207))

(assert (=> d!42831 d!43411))

(declare-fun d!43421 () Bool)

(declare-fun c!34181 () Bool)

(assert (=> d!43421 (= c!34181 ((_ is Nil!2918) lt!54332))))

(declare-fun e!104653 () (InoxSet C!2416))

(assert (=> d!43421 (= (content!400 lt!54332) e!104653)))

(declare-fun b!172667 () Bool)

(assert (=> b!172667 (= e!104653 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!172668 () Bool)

(assert (=> b!172668 (= e!104653 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54332) true) (content!400 (t!27130 lt!54332))))))

(assert (= (and d!43421 c!34181) b!172667))

(assert (= (and d!43421 (not c!34181)) b!172668))

(declare-fun m!170219 () Bool)

(assert (=> b!172668 m!170219))

(declare-fun m!170221 () Bool)

(assert (=> b!172668 m!170221))

(assert (=> d!42789 d!43421))

(assert (=> d!42789 d!43393))

(assert (=> d!42789 d!42947))

(assert (=> b!171391 d!42923))

(declare-fun b!172678 () Bool)

(declare-fun e!104659 () Option!320)

(declare-fun lt!55036 () Option!320)

(declare-fun lt!55035 () Option!320)

(assert (=> b!172678 (= e!104659 (ite (and ((_ is None!319) lt!55036) ((_ is None!319) lt!55035)) None!319 (ite ((_ is None!319) lt!55035) lt!55036 (ite ((_ is None!319) lt!55036) lt!55035 (ite (>= (size!2411 (_1!1630 (v!13762 lt!55036))) (size!2411 (_1!1630 (v!13762 lt!55035)))) lt!55036 lt!55035)))))))

(declare-fun call!7617 () Option!320)

(assert (=> b!172678 (= lt!55036 call!7617)))

(assert (=> b!172678 (= lt!55035 (maxPrefix!139 thiss!17480 (t!27131 rules!1920) (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225)))))

(declare-fun b!172679 () Bool)

(assert (=> b!172679 (= e!104659 call!7617)))

(declare-fun b!172680 () Bool)

(declare-fun res!78074 () Bool)

(declare-fun e!104661 () Bool)

(assert (=> b!172680 (=> (not res!78074) (not e!104661))))

(declare-fun lt!55037 () Option!320)

(assert (=> b!172680 (= res!78074 (< (size!2417 (_2!1630 (get!801 lt!55037))) (size!2417 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225))))))

(declare-fun bm!7612 () Bool)

(assert (=> bm!7612 (= call!7617 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225)))))

(declare-fun b!172682 () Bool)

(assert (=> b!172682 (= e!104661 (contains!469 rules!1920 (rule!1030 (_1!1630 (get!801 lt!55037)))))))

(declare-fun b!172683 () Bool)

(declare-fun e!104660 () Bool)

(assert (=> b!172683 (= e!104660 e!104661)))

(declare-fun res!78078 () Bool)

(assert (=> b!172683 (=> (not res!78078) (not e!104661))))

(assert (=> b!172683 (= res!78078 (isDefined!171 lt!55037))))

(declare-fun b!172684 () Bool)

(declare-fun res!78076 () Bool)

(assert (=> b!172684 (=> (not res!78076) (not e!104661))))

(assert (=> b!172684 (= res!78076 (= (value!19221 (_1!1630 (get!801 lt!55037))) (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!55037)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!55037)))))))))

(declare-fun b!172681 () Bool)

(declare-fun res!78079 () Bool)

(assert (=> b!172681 (=> (not res!78079) (not e!104661))))

(assert (=> b!172681 (= res!78079 (matchR!85 (regex!523 (rule!1030 (_1!1630 (get!801 lt!55037)))) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!55037))))))))

(declare-fun d!43425 () Bool)

(assert (=> d!43425 e!104660))

(declare-fun res!78075 () Bool)

(assert (=> d!43425 (=> res!78075 e!104660)))

(assert (=> d!43425 (= res!78075 (isEmpty!1257 lt!55037))))

(assert (=> d!43425 (= lt!55037 e!104659)))

(declare-fun c!34186 () Bool)

(assert (=> d!43425 (= c!34186 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!55034 () Unit!2548)

(declare-fun lt!55038 () Unit!2548)

(assert (=> d!43425 (= lt!55034 lt!55038)))

(assert (=> d!43425 (isPrefix!230 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225) (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225))))

(assert (=> d!43425 (= lt!55038 (lemmaIsPrefixRefl!138 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225) (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225)))))

(assert (=> d!43425 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!43425 (= (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225)) lt!55037)))

(declare-fun b!172685 () Bool)

(declare-fun res!78073 () Bool)

(assert (=> b!172685 (=> (not res!78073) (not e!104661))))

(assert (=> b!172685 (= res!78073 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!55037)))) (_2!1630 (get!801 lt!55037))) (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225)))))

(declare-fun b!172686 () Bool)

(declare-fun res!78077 () Bool)

(assert (=> b!172686 (=> (not res!78077) (not e!104661))))

(assert (=> b!172686 (= res!78077 (= (list!1061 (charsOf!178 (_1!1630 (get!801 lt!55037)))) (originalCharacters!566 (_1!1630 (get!801 lt!55037)))))))

(assert (= (and d!43425 c!34186) b!172679))

(assert (= (and d!43425 (not c!34186)) b!172678))

(assert (= (or b!172679 b!172678) bm!7612))

(assert (= (and d!43425 (not res!78075)) b!172683))

(assert (= (and b!172683 res!78078) b!172686))

(assert (= (and b!172686 res!78077) b!172680))

(assert (= (and b!172680 res!78074) b!172685))

(assert (= (and b!172685 res!78073) b!172684))

(assert (= (and b!172684 res!78076) b!172681))

(assert (= (and b!172681 res!78079) b!172682))

(declare-fun m!170235 () Bool)

(assert (=> b!172686 m!170235))

(declare-fun m!170237 () Bool)

(assert (=> b!172686 m!170237))

(assert (=> b!172686 m!170237))

(declare-fun m!170239 () Bool)

(assert (=> b!172686 m!170239))

(assert (=> b!172681 m!170235))

(assert (=> b!172681 m!170237))

(assert (=> b!172681 m!170237))

(assert (=> b!172681 m!170239))

(assert (=> b!172681 m!170239))

(declare-fun m!170241 () Bool)

(assert (=> b!172681 m!170241))

(assert (=> b!172685 m!170235))

(assert (=> b!172685 m!170237))

(assert (=> b!172685 m!170237))

(assert (=> b!172685 m!170239))

(assert (=> b!172685 m!170239))

(declare-fun m!170243 () Bool)

(assert (=> b!172685 m!170243))

(declare-fun m!170245 () Bool)

(assert (=> b!172683 m!170245))

(assert (=> bm!7612 m!167499))

(declare-fun m!170249 () Bool)

(assert (=> bm!7612 m!170249))

(assert (=> b!172684 m!170235))

(declare-fun m!170253 () Bool)

(assert (=> b!172684 m!170253))

(assert (=> b!172684 m!170253))

(declare-fun m!170255 () Bool)

(assert (=> b!172684 m!170255))

(assert (=> b!172680 m!170235))

(declare-fun m!170257 () Bool)

(assert (=> b!172680 m!170257))

(assert (=> b!172680 m!167499))

(declare-fun m!170259 () Bool)

(assert (=> b!172680 m!170259))

(assert (=> b!172682 m!170235))

(declare-fun m!170261 () Bool)

(assert (=> b!172682 m!170261))

(declare-fun m!170263 () Bool)

(assert (=> d!43425 m!170263))

(assert (=> d!43425 m!167499))

(assert (=> d!43425 m!167499))

(declare-fun m!170265 () Bool)

(assert (=> d!43425 m!170265))

(assert (=> d!43425 m!167499))

(assert (=> d!43425 m!167499))

(declare-fun m!170271 () Bool)

(assert (=> d!43425 m!170271))

(assert (=> d!43425 m!167263))

(assert (=> b!172678 m!167499))

(declare-fun m!170273 () Bool)

(assert (=> b!172678 m!170273))

(assert (=> b!171309 d!43425))

(declare-fun b!172690 () Bool)

(declare-fun e!104666 () List!2928)

(assert (=> b!172690 (= e!104666 lt!54225)))

(declare-fun b!172693 () Bool)

(declare-fun lt!55042 () List!2928)

(declare-fun e!104665 () Bool)

(assert (=> b!172693 (= e!104665 (or (not (= lt!54225 Nil!2918)) (= lt!55042 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))))))))

(declare-fun d!43439 () Bool)

(assert (=> d!43439 e!104665))

(declare-fun res!78082 () Bool)

(assert (=> d!43439 (=> (not res!78082) (not e!104665))))

(assert (=> d!43439 (= res!78082 (= (content!400 lt!55042) ((_ map or) (content!400 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465))))) (content!400 lt!54225))))))

(assert (=> d!43439 (= lt!55042 e!104666)))

(declare-fun c!34187 () Bool)

(assert (=> d!43439 (= c!34187 ((_ is Nil!2918) (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465))))))))

(assert (=> d!43439 (= (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465)))) lt!54225) lt!55042)))

(declare-fun b!172692 () Bool)

(declare-fun res!78083 () Bool)

(assert (=> b!172692 (=> (not res!78083) (not e!104665))))

(assert (=> b!172692 (= res!78083 (= (size!2417 lt!55042) (+ (size!2417 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465))))) (size!2417 lt!54225))))))

(declare-fun b!172691 () Bool)

(assert (=> b!172691 (= e!104666 (Cons!2918 (h!8315 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465))))) (++!670 (t!27130 (list!1061 (charsOf!178 (h!8317 (t!27132 tokens!465))))) lt!54225)))))

(assert (= (and d!43439 c!34187) b!172690))

(assert (= (and d!43439 (not c!34187)) b!172691))

(assert (= (and d!43439 res!78082) b!172692))

(assert (= (and b!172692 res!78083) b!172693))

(declare-fun m!170275 () Bool)

(assert (=> d!43439 m!170275))

(assert (=> d!43439 m!167497))

(declare-fun m!170277 () Bool)

(assert (=> d!43439 m!170277))

(assert (=> d!43439 m!168229))

(declare-fun m!170279 () Bool)

(assert (=> b!172692 m!170279))

(assert (=> b!172692 m!167497))

(declare-fun m!170281 () Bool)

(assert (=> b!172692 m!170281))

(assert (=> b!172692 m!168235))

(declare-fun m!170283 () Bool)

(assert (=> b!172691 m!170283))

(assert (=> b!171309 d!43439))

(declare-fun d!43441 () Bool)

(assert (=> d!43441 (dynLambda!1111 lambda!4895 (h!8317 (t!27132 tokens!465)))))

(declare-fun lt!55043 () Unit!2548)

(assert (=> d!43441 (= lt!55043 (choose!1831 (t!27132 tokens!465) lambda!4895 (h!8317 (t!27132 tokens!465))))))

(declare-fun e!104667 () Bool)

(assert (=> d!43441 e!104667))

(declare-fun res!78084 () Bool)

(assert (=> d!43441 (=> (not res!78084) (not e!104667))))

(assert (=> d!43441 (= res!78084 (forall!573 (t!27132 tokens!465) lambda!4895))))

(assert (=> d!43441 (= (forallContained!90 (t!27132 tokens!465) lambda!4895 (h!8317 (t!27132 tokens!465))) lt!55043)))

(declare-fun b!172694 () Bool)

(assert (=> b!172694 (= e!104667 (contains!467 (t!27132 tokens!465) (h!8317 (t!27132 tokens!465))))))

(assert (= (and d!43441 res!78084) b!172694))

(declare-fun b_lambda!3949 () Bool)

(assert (=> (not b_lambda!3949) (not d!43441)))

(declare-fun m!170285 () Bool)

(assert (=> d!43441 m!170285))

(declare-fun m!170287 () Bool)

(assert (=> d!43441 m!170287))

(declare-fun m!170289 () Bool)

(assert (=> d!43441 m!170289))

(declare-fun m!170291 () Bool)

(assert (=> b!172694 m!170291))

(assert (=> b!171309 d!43441))

(declare-fun bs!16868 () Bool)

(declare-fun b!172700 () Bool)

(assert (= bs!16868 (and b!172700 d!43227)))

(declare-fun lambda!4964 () Int)

(assert (=> bs!16868 (= lambda!4964 lambda!4948)))

(declare-fun bs!16870 () Bool)

(assert (= bs!16870 (and b!172700 b!172069)))

(assert (=> bs!16870 (= lambda!4964 lambda!4937)))

(declare-fun bs!16871 () Bool)

(assert (= bs!16871 (and b!172700 b!171060)))

(assert (=> bs!16871 (= lambda!4964 lambda!4892)))

(declare-fun bs!16872 () Bool)

(assert (= bs!16872 (and b!172700 b!171309)))

(assert (=> bs!16872 (= lambda!4964 lambda!4895)))

(declare-fun bs!16873 () Bool)

(assert (= bs!16873 (and b!172700 d!42751)))

(assert (=> bs!16873 (not (= lambda!4964 lambda!4906))))

(declare-fun bs!16874 () Bool)

(assert (= bs!16874 (and b!172700 b!171518)))

(assert (=> bs!16874 (= lambda!4964 lambda!4913)))

(declare-fun bs!16875 () Bool)

(assert (= bs!16875 (and b!172700 b!171504)))

(assert (=> bs!16875 (= lambda!4964 lambda!4912)))

(declare-fun bs!16876 () Bool)

(assert (= bs!16876 (and b!172700 b!171062)))

(assert (=> bs!16876 (not (= lambda!4964 lambda!4891))))

(declare-fun bs!16877 () Bool)

(assert (= bs!16877 (and b!172700 d!42823)))

(assert (=> bs!16877 (not (= lambda!4964 lambda!4911))))

(declare-fun bs!16878 () Bool)

(assert (= bs!16878 (and b!172700 d!42863)))

(assert (=> bs!16878 (= lambda!4964 lambda!4926)))

(declare-fun bs!16879 () Bool)

(assert (= bs!16879 (and b!172700 b!171831)))

(assert (=> bs!16879 (= lambda!4964 lambda!4927)))

(declare-fun bs!16880 () Bool)

(assert (= bs!16880 (and b!172700 b!171387)))

(assert (=> bs!16880 (= lambda!4964 lambda!4907)))

(declare-fun b!172705 () Bool)

(declare-fun e!104674 () Bool)

(assert (=> b!172705 (= e!104674 true)))

(declare-fun b!172704 () Bool)

(declare-fun e!104673 () Bool)

(assert (=> b!172704 (= e!104673 e!104674)))

(declare-fun b!172703 () Bool)

(declare-fun e!104672 () Bool)

(assert (=> b!172703 (= e!104672 e!104673)))

(assert (=> b!172700 e!104672))

(assert (= b!172704 b!172705))

(assert (= b!172703 b!172704))

(assert (= (and b!172700 ((_ is Cons!2919) rules!1920)) b!172703))

(assert (=> b!172705 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4964))))

(assert (=> b!172705 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4964))))

(assert (=> b!172700 true))

(declare-fun bm!7613 () Bool)

(declare-fun call!7622 () BalanceConc!1744)

(declare-fun call!7620 () BalanceConc!1744)

(assert (=> bm!7613 (= call!7622 call!7620)))

(declare-fun b!172695 () Bool)

(declare-fun e!104671 () List!2928)

(assert (=> b!172695 (= e!104671 Nil!2918)))

(assert (=> b!172695 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 (t!27132 tokens!465))))) (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 (t!27132 tokens!465)))) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!55049 () Unit!2548)

(declare-fun Unit!2588 () Unit!2548)

(assert (=> b!172695 (= lt!55049 Unit!2588)))

(declare-fun lt!55046 () List!2928)

(declare-fun call!7621 () List!2928)

(declare-fun lt!55048 () Unit!2548)

(assert (=> b!172695 (= lt!55048 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7621 lt!55046))))

(assert (=> b!172695 false))

(declare-fun lt!55044 () Unit!2548)

(declare-fun Unit!2589 () Unit!2548)

(assert (=> b!172695 (= lt!55044 Unit!2589)))

(declare-fun b!172696 () Bool)

(declare-fun c!34190 () Bool)

(declare-fun lt!55047 () Option!320)

(assert (=> b!172696 (= c!34190 (and ((_ is Some!319) lt!55047) (not (= (_1!1630 (v!13762 lt!55047)) (h!8317 (t!27132 (t!27132 tokens!465)))))))))

(declare-fun e!104670 () List!2928)

(assert (=> b!172696 (= e!104670 e!104671)))

(declare-fun bm!7614 () Bool)

(declare-fun c!34188 () Bool)

(declare-fun c!34189 () Bool)

(assert (=> bm!7614 (= c!34188 c!34189)))

(declare-fun call!7618 () List!2928)

(declare-fun e!104669 () List!2928)

(assert (=> bm!7614 (= call!7618 (++!670 e!104669 (ite c!34189 lt!55046 call!7621)))))

(declare-fun b!172697 () Bool)

(assert (=> b!172697 (= e!104670 call!7618)))

(declare-fun b!172698 () Bool)

(assert (=> b!172698 (= e!104671 (++!670 call!7618 lt!55046))))

(declare-fun b!172699 () Bool)

(declare-fun e!104668 () List!2928)

(assert (=> b!172699 (= e!104668 Nil!2918)))

(assert (=> b!172700 (= e!104668 e!104670)))

(declare-fun lt!55045 () Unit!2548)

(assert (=> b!172700 (= lt!55045 (forallContained!90 (t!27132 (t!27132 tokens!465)) lambda!4964 (h!8317 (t!27132 (t!27132 tokens!465)))))))

(assert (=> b!172700 (= lt!55046 (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 (t!27132 (t!27132 tokens!465))) separatorToken!170))))

(assert (=> b!172700 (= lt!55047 (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 (t!27132 tokens!465))))) lt!55046)))))

(assert (=> b!172700 (= c!34189 (and ((_ is Some!319) lt!55047) (= (_1!1630 (v!13762 lt!55047)) (h!8317 (t!27132 (t!27132 tokens!465))))))))

(declare-fun bm!7615 () Bool)

(assert (=> bm!7615 (= call!7620 (charsOf!178 (ite c!34189 (h!8317 (t!27132 (t!27132 tokens!465))) (ite c!34190 separatorToken!170 (h!8317 (t!27132 (t!27132 tokens!465)))))))))

(declare-fun d!43443 () Bool)

(declare-fun c!34191 () Bool)

(assert (=> d!43443 (= c!34191 ((_ is Cons!2920) (t!27132 (t!27132 tokens!465))))))

(assert (=> d!43443 (= (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (t!27132 (t!27132 tokens!465)) separatorToken!170) e!104668)))

(declare-fun bm!7616 () Bool)

(declare-fun call!7619 () List!2928)

(assert (=> bm!7616 (= call!7619 (list!1061 (ite c!34189 call!7620 call!7622)))))

(declare-fun b!172701 () Bool)

(assert (=> b!172701 (= e!104669 call!7619)))

(declare-fun bm!7617 () Bool)

(assert (=> bm!7617 (= call!7621 call!7619)))

(declare-fun b!172702 () Bool)

(assert (=> b!172702 (= e!104669 (list!1061 (charsOf!178 (h!8317 (t!27132 (t!27132 tokens!465))))))))

(assert (= (and d!43443 c!34191) b!172700))

(assert (= (and d!43443 (not c!34191)) b!172699))

(assert (= (and b!172700 c!34189) b!172697))

(assert (= (and b!172700 (not c!34189)) b!172696))

(assert (= (and b!172696 c!34190) b!172698))

(assert (= (and b!172696 (not c!34190)) b!172695))

(assert (= (or b!172698 b!172695) bm!7613))

(assert (= (or b!172698 b!172695) bm!7617))

(assert (= (or b!172697 bm!7613) bm!7615))

(assert (= (or b!172697 bm!7617) bm!7616))

(assert (= (or b!172697 b!172698) bm!7614))

(assert (= (and bm!7614 c!34188) b!172701))

(assert (= (and bm!7614 (not c!34188)) b!172702))

(declare-fun m!170319 () Bool)

(assert (=> b!172695 m!170319))

(assert (=> b!172695 m!170319))

(declare-fun m!170321 () Bool)

(assert (=> b!172695 m!170321))

(assert (=> b!172695 m!170319))

(declare-fun m!170323 () Bool)

(assert (=> b!172695 m!170323))

(declare-fun m!170325 () Bool)

(assert (=> b!172695 m!170325))

(declare-fun m!170327 () Bool)

(assert (=> bm!7615 m!170327))

(declare-fun m!170329 () Bool)

(assert (=> bm!7614 m!170329))

(declare-fun m!170331 () Bool)

(assert (=> bm!7616 m!170331))

(declare-fun m!170333 () Bool)

(assert (=> b!172698 m!170333))

(declare-fun m!170335 () Bool)

(assert (=> b!172702 m!170335))

(assert (=> b!172702 m!170335))

(declare-fun m!170337 () Bool)

(assert (=> b!172702 m!170337))

(assert (=> b!172700 m!170335))

(assert (=> b!172700 m!170337))

(declare-fun m!170339 () Bool)

(assert (=> b!172700 m!170339))

(declare-fun m!170341 () Bool)

(assert (=> b!172700 m!170341))

(declare-fun m!170343 () Bool)

(assert (=> b!172700 m!170343))

(assert (=> b!172700 m!170335))

(assert (=> b!172700 m!170337))

(assert (=> b!172700 m!170339))

(declare-fun m!170345 () Bool)

(assert (=> b!172700 m!170345))

(assert (=> b!171309 d!43443))

(assert (=> b!171309 d!43109))

(assert (=> b!171309 d!43111))

(assert (=> d!42783 d!42779))

(assert (=> d!42783 d!42723))

(declare-fun d!43451 () Bool)

(assert (=> d!43451 (= (++!670 (++!670 lt!54115 lt!54104) lt!54119) (++!670 lt!54115 (++!670 lt!54104 lt!54119)))))

(assert (=> d!43451 true))

(declare-fun _$52!597 () Unit!2548)

(assert (=> d!43451 (= (choose!1832 lt!54115 lt!54104 lt!54119) _$52!597)))

(declare-fun bs!16882 () Bool)

(assert (= bs!16882 d!43451))

(assert (=> bs!16882 m!167133))

(assert (=> bs!16882 m!167133))

(assert (=> bs!16882 m!167139))

(assert (=> bs!16882 m!167147))

(assert (=> bs!16882 m!167147))

(assert (=> bs!16882 m!167707))

(assert (=> d!42783 d!43451))

(declare-fun b!172720 () Bool)

(declare-fun e!104682 () List!2928)

(assert (=> b!172720 (= e!104682 (++!670 lt!54104 lt!54119))))

(declare-fun lt!55059 () List!2928)

(declare-fun b!172723 () Bool)

(declare-fun e!104681 () Bool)

(assert (=> b!172723 (= e!104681 (or (not (= (++!670 lt!54104 lt!54119) Nil!2918)) (= lt!55059 lt!54115)))))

(declare-fun d!43453 () Bool)

(assert (=> d!43453 e!104681))

(declare-fun res!78095 () Bool)

(assert (=> d!43453 (=> (not res!78095) (not e!104681))))

(assert (=> d!43453 (= res!78095 (= (content!400 lt!55059) ((_ map or) (content!400 lt!54115) (content!400 (++!670 lt!54104 lt!54119)))))))

(assert (=> d!43453 (= lt!55059 e!104682)))

(declare-fun c!34194 () Bool)

(assert (=> d!43453 (= c!34194 ((_ is Nil!2918) lt!54115))))

(assert (=> d!43453 (= (++!670 lt!54115 (++!670 lt!54104 lt!54119)) lt!55059)))

(declare-fun b!172722 () Bool)

(declare-fun res!78096 () Bool)

(assert (=> b!172722 (=> (not res!78096) (not e!104681))))

(assert (=> b!172722 (= res!78096 (= (size!2417 lt!55059) (+ (size!2417 lt!54115) (size!2417 (++!670 lt!54104 lt!54119)))))))

(declare-fun b!172721 () Bool)

(assert (=> b!172721 (= e!104682 (Cons!2918 (h!8315 lt!54115) (++!670 (t!27130 lt!54115) (++!670 lt!54104 lt!54119))))))

(assert (= (and d!43453 c!34194) b!172720))

(assert (= (and d!43453 (not c!34194)) b!172721))

(assert (= (and d!43453 res!78095) b!172722))

(assert (= (and b!172722 res!78096) b!172723))

(declare-fun m!170379 () Bool)

(assert (=> d!43453 m!170379))

(assert (=> d!43453 m!167387))

(assert (=> d!43453 m!167147))

(declare-fun m!170381 () Bool)

(assert (=> d!43453 m!170381))

(declare-fun m!170383 () Bool)

(assert (=> b!172722 m!170383))

(assert (=> b!172722 m!167393))

(assert (=> b!172722 m!167147))

(declare-fun m!170385 () Bool)

(assert (=> b!172722 m!170385))

(assert (=> b!172721 m!167147))

(declare-fun m!170391 () Bool)

(assert (=> b!172721 m!170391))

(assert (=> d!42783 d!43453))

(assert (=> d!42783 d!42775))

(assert (=> bm!7509 d!43055))

(declare-fun d!43457 () Bool)

(declare-fun charsToBigInt!1 (List!2927) Int)

(assert (=> d!43457 (= (inv!17 (value!19221 (h!8317 tokens!465))) (= (charsToBigInt!1 (text!4263 (value!19221 (h!8317 tokens!465)))) (value!19213 (value!19221 (h!8317 tokens!465)))))))

(declare-fun bs!16885 () Bool)

(assert (= bs!16885 d!43457))

(declare-fun m!170397 () Bool)

(assert (=> bs!16885 m!170397))

(assert (=> b!171585 d!43457))

(declare-fun b!172738 () Bool)

(declare-fun e!104693 () List!2928)

(assert (=> b!172738 (= e!104693 lt!54111)))

(declare-fun b!172741 () Bool)

(declare-fun e!104692 () Bool)

(declare-fun lt!55067 () List!2928)

(assert (=> b!172741 (= e!104692 (or (not (= lt!54111 Nil!2918)) (= lt!55067 (t!27130 lt!54115))))))

(declare-fun d!43461 () Bool)

(assert (=> d!43461 e!104692))

(declare-fun res!78098 () Bool)

(assert (=> d!43461 (=> (not res!78098) (not e!104692))))

(assert (=> d!43461 (= res!78098 (= (content!400 lt!55067) ((_ map or) (content!400 (t!27130 lt!54115)) (content!400 lt!54111))))))

(assert (=> d!43461 (= lt!55067 e!104693)))

(declare-fun c!34200 () Bool)

(assert (=> d!43461 (= c!34200 ((_ is Nil!2918) (t!27130 lt!54115)))))

(assert (=> d!43461 (= (++!670 (t!27130 lt!54115) lt!54111) lt!55067)))

(declare-fun b!172740 () Bool)

(declare-fun res!78099 () Bool)

(assert (=> b!172740 (=> (not res!78099) (not e!104692))))

(assert (=> b!172740 (= res!78099 (= (size!2417 lt!55067) (+ (size!2417 (t!27130 lt!54115)) (size!2417 lt!54111))))))

(declare-fun b!172739 () Bool)

(assert (=> b!172739 (= e!104693 (Cons!2918 (h!8315 (t!27130 lt!54115)) (++!670 (t!27130 (t!27130 lt!54115)) lt!54111)))))

(assert (= (and d!43461 c!34200) b!172738))

(assert (= (and d!43461 (not c!34200)) b!172739))

(assert (= (and d!43461 res!78098) b!172740))

(assert (= (and b!172740 res!78099) b!172741))

(declare-fun m!170399 () Bool)

(assert (=> d!43461 m!170399))

(assert (=> d!43461 m!169251))

(assert (=> d!43461 m!167675))

(declare-fun m!170401 () Bool)

(assert (=> b!172740 m!170401))

(assert (=> b!172740 m!168477))

(assert (=> b!172740 m!167679))

(declare-fun m!170403 () Bool)

(assert (=> b!172739 m!170403))

(assert (=> b!171398 d!43461))

(declare-fun d!43463 () Bool)

(assert (=> d!43463 (= (list!1061 lt!54325) (list!1065 (c!33816 lt!54325)))))

(declare-fun bs!16895 () Bool)

(assert (= bs!16895 d!43463))

(declare-fun m!170405 () Bool)

(assert (=> bs!16895 m!170405))

(assert (=> d!42771 d!43463))

(assert (=> d!42801 d!42833))

(declare-fun d!43465 () Bool)

(declare-fun lt!55068 () Int)

(assert (=> d!43465 (= lt!55068 (size!2418 (list!1064 (_1!1629 lt!54357))))))

(assert (=> d!43465 (= lt!55068 (size!2419 (c!33818 (_1!1629 lt!54357))))))

(assert (=> d!43465 (= (size!2416 (_1!1629 lt!54357)) lt!55068)))

(declare-fun bs!16898 () Bool)

(assert (= bs!16898 d!43465))

(assert (=> bs!16898 m!169729))

(assert (=> bs!16898 m!169729))

(declare-fun m!170407 () Bool)

(assert (=> bs!16898 m!170407))

(declare-fun m!170409 () Bool)

(assert (=> bs!16898 m!170409))

(assert (=> d!42801 d!43465))

(declare-fun d!43467 () Bool)

(assert (=> d!43467 (= (list!1064 (singletonSeq!75 (h!8317 tokens!465))) (list!1067 (c!33818 (singletonSeq!75 (h!8317 tokens!465)))))))

(declare-fun bs!16899 () Bool)

(assert (= bs!16899 d!43467))

(declare-fun m!170411 () Bool)

(assert (=> bs!16899 m!170411))

(assert (=> d!42801 d!43467))

(declare-fun b!172742 () Bool)

(declare-fun e!104695 () Bool)

(declare-fun lt!55069 () tuple2!2826)

(assert (=> b!172742 (= e!104695 (not (isEmpty!1246 (_1!1629 lt!55069))))))

(declare-fun e!104696 () Bool)

(declare-fun b!172743 () Bool)

(assert (=> b!172743 (= e!104696 (= (_2!1629 lt!55069) (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))))))

(declare-fun b!172744 () Bool)

(assert (=> b!172744 (= e!104696 e!104695)))

(declare-fun res!78102 () Bool)

(assert (=> b!172744 (= res!78102 (< (size!2415 (_2!1629 lt!55069)) (size!2415 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))))))))

(assert (=> b!172744 (=> (not res!78102) (not e!104695))))

(declare-fun e!104694 () Bool)

(declare-fun b!172745 () Bool)

(assert (=> b!172745 (= e!104694 (= (list!1061 (_2!1629 lt!55069)) (_2!1633 (lexList!115 thiss!17480 rules!1920 (list!1061 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))))))))))

(declare-fun d!43469 () Bool)

(assert (=> d!43469 e!104694))

(declare-fun res!78101 () Bool)

(assert (=> d!43469 (=> (not res!78101) (not e!104694))))

(assert (=> d!43469 (= res!78101 e!104696)))

(declare-fun c!34201 () Bool)

(assert (=> d!43469 (= c!34201 (> (size!2416 (_1!1629 lt!55069)) 0))))

(assert (=> d!43469 (= lt!55069 (lexTailRecV2!102 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))) (BalanceConc!1745 Empty!868) (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))) (BalanceConc!1747 Empty!869)))))

(assert (=> d!43469 (= (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))) lt!55069)))

(declare-fun b!172746 () Bool)

(declare-fun res!78100 () Bool)

(assert (=> b!172746 (=> (not res!78100) (not e!104694))))

(assert (=> b!172746 (= res!78100 (= (list!1064 (_1!1629 lt!55069)) (_1!1633 (lexList!115 thiss!17480 rules!1920 (list!1061 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))))))))))

(assert (= (and d!43469 c!34201) b!172744))

(assert (= (and d!43469 (not c!34201)) b!172743))

(assert (= (and b!172744 res!78102) b!172742))

(assert (= (and d!43469 res!78101) b!172746))

(assert (= (and b!172746 res!78100) b!172745))

(declare-fun m!170415 () Bool)

(assert (=> b!172746 m!170415))

(assert (=> b!172746 m!167793))

(declare-fun m!170419 () Bool)

(assert (=> b!172746 m!170419))

(assert (=> b!172746 m!170419))

(declare-fun m!170423 () Bool)

(assert (=> b!172746 m!170423))

(declare-fun m!170427 () Bool)

(assert (=> b!172742 m!170427))

(declare-fun m!170431 () Bool)

(assert (=> b!172744 m!170431))

(assert (=> b!172744 m!167793))

(declare-fun m!170433 () Bool)

(assert (=> b!172744 m!170433))

(declare-fun m!170437 () Bool)

(assert (=> b!172745 m!170437))

(assert (=> b!172745 m!167793))

(assert (=> b!172745 m!170419))

(assert (=> b!172745 m!170419))

(assert (=> b!172745 m!170423))

(declare-fun m!170445 () Bool)

(assert (=> d!43469 m!170445))

(assert (=> d!43469 m!167793))

(assert (=> d!43469 m!167793))

(declare-fun m!170451 () Bool)

(assert (=> d!43469 m!170451))

(assert (=> d!42801 d!43469))

(declare-fun d!43471 () Bool)

(assert (=> d!43471 (= (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))))) (list!1067 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))))))))))

(declare-fun bs!16900 () Bool)

(assert (= bs!16900 d!43471))

(declare-fun m!170459 () Bool)

(assert (=> bs!16900 m!170459))

(assert (=> d!42801 d!43471))

(assert (=> d!42801 d!42817))

(assert (=> d!42801 d!43085))

(assert (=> b!171744 d!42999))

(assert (=> b!171744 d!43001))

(assert (=> b!171744 d!42935))

(declare-fun b!172751 () Bool)

(declare-fun e!104700 () List!2928)

(assert (=> b!172751 (= e!104700 lt!54119)))

(declare-fun e!104699 () Bool)

(declare-fun b!172754 () Bool)

(declare-fun lt!55071 () List!2928)

(assert (=> b!172754 (= e!104699 (or (not (= lt!54119 Nil!2918)) (= lt!55071 (t!27130 lt!54104))))))

(declare-fun d!43475 () Bool)

(assert (=> d!43475 e!104699))

(declare-fun res!78105 () Bool)

(assert (=> d!43475 (=> (not res!78105) (not e!104699))))

(assert (=> d!43475 (= res!78105 (= (content!400 lt!55071) ((_ map or) (content!400 (t!27130 lt!54104)) (content!400 lt!54119))))))

(assert (=> d!43475 (= lt!55071 e!104700)))

(declare-fun c!34203 () Bool)

(assert (=> d!43475 (= c!34203 ((_ is Nil!2918) (t!27130 lt!54104)))))

(assert (=> d!43475 (= (++!670 (t!27130 lt!54104) lt!54119) lt!55071)))

(declare-fun b!172753 () Bool)

(declare-fun res!78106 () Bool)

(assert (=> b!172753 (=> (not res!78106) (not e!104699))))

(assert (=> b!172753 (= res!78106 (= (size!2417 lt!55071) (+ (size!2417 (t!27130 lt!54104)) (size!2417 lt!54119))))))

(declare-fun b!172752 () Bool)

(assert (=> b!172752 (= e!104700 (Cons!2918 (h!8315 (t!27130 lt!54104)) (++!670 (t!27130 (t!27130 lt!54104)) lt!54119)))))

(assert (= (and d!43475 c!34203) b!172751))

(assert (= (and d!43475 (not c!34203)) b!172752))

(assert (= (and d!43475 res!78105) b!172753))

(assert (= (and b!172753 res!78106) b!172754))

(declare-fun m!170465 () Bool)

(assert (=> d!43475 m!170465))

(declare-fun m!170467 () Bool)

(assert (=> d!43475 m!170467))

(assert (=> d!43475 m!167685))

(declare-fun m!170471 () Bool)

(assert (=> b!172753 m!170471))

(assert (=> b!172753 m!168479))

(assert (=> b!172753 m!167689))

(declare-fun m!170477 () Bool)

(assert (=> b!172752 m!170477))

(assert (=> b!171402 d!43475))

(declare-fun bs!16902 () Bool)

(declare-fun d!43477 () Bool)

(assert (= bs!16902 (and d!43477 d!43113)))

(declare-fun lambda!4966 () Int)

(assert (=> bs!16902 (= (= (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (= lambda!4966 lambda!4940))))

(declare-fun bs!16903 () Bool)

(assert (= bs!16903 (and d!43477 d!43115)))

(assert (=> bs!16903 (= (= (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))) (= lambda!4966 lambda!4941))))

(assert (=> d!43477 true))

(assert (=> d!43477 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (dynLambda!1116 order!1603 lambda!4966))))

(assert (=> d!43477 (= (equivClasses!164 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (Forall2!111 lambda!4966))))

(declare-fun bs!16904 () Bool)

(assert (= bs!16904 d!43477))

(declare-fun m!170485 () Bool)

(assert (=> bs!16904 m!170485))

(assert (=> b!171565 d!43477))

(declare-fun bs!16907 () Bool)

(declare-fun d!43483 () Bool)

(assert (= bs!16907 (and d!43483 d!43313)))

(declare-fun lambda!4967 () Int)

(assert (=> bs!16907 (= (and (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) (= (toValue!1186 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (rule!1030 (h!8317 tokens!465)))))) (= lambda!4967 lambda!4951))))

(declare-fun bs!16909 () Bool)

(assert (= bs!16909 (and d!43483 b!172567)))

(assert (=> bs!16909 (= (and (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (= (toValue!1186 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (h!8316 rules!1920))))) (= lambda!4967 lambda!4960))))

(declare-fun bs!16910 () Bool)

(assert (= bs!16910 (and d!43483 d!43387)))

(assert (=> bs!16910 (= (and (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (= (toValue!1186 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (h!8316 rules!1920))))) (= lambda!4967 lambda!4961))))

(assert (=> d!43483 true))

(assert (=> d!43483 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) (dynLambda!1117 order!1607 lambda!4967))))

(assert (=> d!43483 true))

(assert (=> d!43483 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))) (dynLambda!1117 order!1607 lambda!4967))))

(assert (=> d!43483 (= (semiInverseModEq!181 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toValue!1186 (transformation!523 (rule!1030 separatorToken!170)))) (Forall!136 lambda!4967))))

(declare-fun bs!16911 () Bool)

(assert (= bs!16911 d!43483))

(declare-fun m!170505 () Bool)

(assert (=> bs!16911 m!170505))

(assert (=> d!42859 d!43483))

(declare-fun d!43495 () Bool)

(declare-fun lt!55076 () Bool)

(declare-fun content!405 (List!2929) (InoxSet Rule!846))

(assert (=> d!43495 (= lt!55076 (select (content!405 rules!1920) (rule!1030 (_1!1630 (get!801 lt!54473)))))))

(declare-fun e!104712 () Bool)

(assert (=> d!43495 (= lt!55076 e!104712)))

(declare-fun res!78111 () Bool)

(assert (=> d!43495 (=> (not res!78111) (not e!104712))))

(assert (=> d!43495 (= res!78111 ((_ is Cons!2919) rules!1920))))

(assert (=> d!43495 (= (contains!469 rules!1920 (rule!1030 (_1!1630 (get!801 lt!54473)))) lt!55076)))

(declare-fun b!172766 () Bool)

(declare-fun e!104711 () Bool)

(assert (=> b!172766 (= e!104712 e!104711)))

(declare-fun res!78112 () Bool)

(assert (=> b!172766 (=> res!78112 e!104711)))

(assert (=> b!172766 (= res!78112 (= (h!8316 rules!1920) (rule!1030 (_1!1630 (get!801 lt!54473)))))))

(declare-fun b!172767 () Bool)

(assert (=> b!172767 (= e!104711 (contains!469 (t!27131 rules!1920) (rule!1030 (_1!1630 (get!801 lt!54473)))))))

(assert (= (and d!43495 res!78111) b!172766))

(assert (= (and b!172766 (not res!78112)) b!172767))

(declare-fun m!170515 () Bool)

(assert (=> d!43495 m!170515))

(declare-fun m!170517 () Bool)

(assert (=> d!43495 m!170517))

(declare-fun m!170521 () Bool)

(assert (=> b!172767 m!170521))

(assert (=> b!171740 d!43495))

(assert (=> b!171740 d!42935))

(declare-fun d!43503 () Bool)

(declare-fun res!78113 () Bool)

(declare-fun e!104714 () Bool)

(assert (=> d!43503 (=> (not res!78113) (not e!104714))))

(assert (=> d!43503 (= res!78113 (not (isEmpty!1247 (originalCharacters!566 (h!8317 (t!27132 tokens!465))))))))

(assert (=> d!43503 (= (inv!3743 (h!8317 (t!27132 tokens!465))) e!104714)))

(declare-fun b!172770 () Bool)

(declare-fun res!78114 () Bool)

(assert (=> b!172770 (=> (not res!78114) (not e!104714))))

(assert (=> b!172770 (= res!78114 (= (originalCharacters!566 (h!8317 (t!27132 tokens!465))) (list!1061 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (value!19221 (h!8317 (t!27132 tokens!465)))))))))

(declare-fun b!172771 () Bool)

(assert (=> b!172771 (= e!104714 (= (size!2411 (h!8317 (t!27132 tokens!465))) (size!2417 (originalCharacters!566 (h!8317 (t!27132 tokens!465))))))))

(assert (= (and d!43503 res!78113) b!172770))

(assert (= (and b!172770 res!78114) b!172771))

(declare-fun b_lambda!3957 () Bool)

(assert (=> (not b_lambda!3957) (not b!172770)))

(assert (=> b!172770 t!27279))

(declare-fun b_and!11489 () Bool)

(assert (= b_and!11449 (and (=> t!27279 result!9542) b_and!11489)))

(assert (=> b!172770 t!27277))

(declare-fun b_and!11491 () Bool)

(assert (= b_and!11451 (and (=> t!27277 result!9540) b_and!11491)))

(assert (=> b!172770 t!27275))

(declare-fun b_and!11493 () Bool)

(assert (= b_and!11455 (and (=> t!27275 result!9538) b_and!11493)))

(assert (=> b!172770 t!27281))

(declare-fun b_and!11495 () Bool)

(assert (= b_and!11453 (and (=> t!27281 result!9544) b_and!11495)))

(assert (=> b!172770 t!27273))

(declare-fun b_and!11497 () Bool)

(assert (= b_and!11457 (and (=> t!27273 result!9536) b_and!11497)))

(declare-fun m!170527 () Bool)

(assert (=> d!43503 m!170527))

(assert (=> b!172770 m!168923))

(assert (=> b!172770 m!168923))

(declare-fun m!170535 () Bool)

(assert (=> b!172770 m!170535))

(declare-fun m!170537 () Bool)

(assert (=> b!172771 m!170537))

(assert (=> b!171755 d!43503))

(declare-fun d!43513 () Bool)

(declare-fun lt!55082 () Int)

(assert (=> d!43513 (>= lt!55082 0)))

(declare-fun e!104719 () Int)

(assert (=> d!43513 (= lt!55082 e!104719)))

(declare-fun c!34209 () Bool)

(assert (=> d!43513 (= c!34209 ((_ is Nil!2918) lt!54332))))

(assert (=> d!43513 (= (size!2417 lt!54332) lt!55082)))

(declare-fun b!172781 () Bool)

(assert (=> b!172781 (= e!104719 0)))

(declare-fun b!172782 () Bool)

(assert (=> b!172782 (= e!104719 (+ 1 (size!2417 (t!27130 lt!54332))))))

(assert (= (and d!43513 c!34209) b!172781))

(assert (= (and d!43513 (not c!34209)) b!172782))

(declare-fun m!170539 () Bool)

(assert (=> b!172782 m!170539))

(assert (=> b!171411 d!43513))

(assert (=> b!171411 d!42981))

(assert (=> b!171411 d!43073))

(declare-fun d!43515 () Bool)

(assert (=> d!43515 (= (inv!15 (value!19221 separatorToken!170)) (= (charsToBigInt!0 (text!4264 (value!19221 separatorToken!170)) 0) (value!19216 (value!19221 separatorToken!170))))))

(declare-fun bs!16913 () Bool)

(assert (= bs!16913 d!43515))

(declare-fun m!170541 () Bool)

(assert (=> bs!16913 m!170541))

(assert (=> b!171424 d!43515))

(declare-fun d!43517 () Bool)

(declare-fun lt!55083 () Bool)

(assert (=> d!43517 (= lt!55083 (isEmpty!1247 (list!1061 (_2!1629 lt!54357))))))

(assert (=> d!43517 (= lt!55083 (isEmpty!1260 (c!33816 (_2!1629 lt!54357))))))

(assert (=> d!43517 (= (isEmpty!1256 (_2!1629 lt!54357)) lt!55083)))

(declare-fun bs!16914 () Bool)

(assert (= bs!16914 d!43517))

(declare-fun m!170543 () Bool)

(assert (=> bs!16914 m!170543))

(assert (=> bs!16914 m!170543))

(declare-fun m!170545 () Bool)

(assert (=> bs!16914 m!170545))

(declare-fun m!170549 () Bool)

(assert (=> bs!16914 m!170549))

(assert (=> b!171492 d!43517))

(declare-fun d!43519 () Bool)

(declare-fun c!34210 () Bool)

(assert (=> d!43519 (= c!34210 ((_ is Nil!2918) lt!54327))))

(declare-fun e!104720 () (InoxSet C!2416))

(assert (=> d!43519 (= (content!400 lt!54327) e!104720)))

(declare-fun b!172783 () Bool)

(assert (=> b!172783 (= e!104720 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!172784 () Bool)

(assert (=> b!172784 (= e!104720 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54327) true) (content!400 (t!27130 lt!54327))))))

(assert (= (and d!43519 c!34210) b!172783))

(assert (= (and d!43519 (not c!34210)) b!172784))

(declare-fun m!170565 () Bool)

(assert (=> b!172784 m!170565))

(declare-fun m!170567 () Bool)

(assert (=> b!172784 m!170567))

(assert (=> d!42775 d!43519))

(declare-fun d!43521 () Bool)

(declare-fun c!34211 () Bool)

(assert (=> d!43521 (= c!34211 ((_ is Nil!2918) lt!54104))))

(declare-fun e!104721 () (InoxSet C!2416))

(assert (=> d!43521 (= (content!400 lt!54104) e!104721)))

(declare-fun b!172785 () Bool)

(assert (=> b!172785 (= e!104721 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!172786 () Bool)

(assert (=> b!172786 (= e!104721 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54104) true) (content!400 (t!27130 lt!54104))))))

(assert (= (and d!43521 c!34211) b!172785))

(assert (= (and d!43521 (not c!34211)) b!172786))

(declare-fun m!170569 () Bool)

(assert (=> b!172786 m!170569))

(assert (=> b!172786 m!170467))

(assert (=> d!42775 d!43521))

(assert (=> d!42775 d!42947))

(assert (=> bs!16702 d!42801))

(declare-fun d!43523 () Bool)

(assert (=> d!43523 (= (list!1061 (_2!1629 lt!54176)) (list!1065 (c!33816 (_2!1629 lt!54176))))))

(declare-fun bs!16915 () Bool)

(assert (= bs!16915 d!43523))

(declare-fun m!170573 () Bool)

(assert (=> bs!16915 m!170573))

(assert (=> b!171179 d!43523))

(assert (=> b!171179 d!43341))

(assert (=> b!171179 d!43343))

(assert (=> b!171139 d!43021))

(assert (=> b!171139 d!43053))

(assert (=> b!171139 d!43051))

(assert (=> b!171139 d!43023))

(declare-fun d!43529 () Bool)

(assert (=> d!43529 (dynLambda!1111 lambda!4907 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))

(declare-fun lt!55084 () Unit!2548)

(assert (=> d!43529 (= lt!55084 (choose!1831 (list!1064 (seqFromList!424 (t!27132 tokens!465))) lambda!4907 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(declare-fun e!104723 () Bool)

(assert (=> d!43529 e!104723))

(declare-fun res!78120 () Bool)

(assert (=> d!43529 (=> (not res!78120) (not e!104723))))

(assert (=> d!43529 (= res!78120 (forall!573 (list!1064 (seqFromList!424 (t!27132 tokens!465))) lambda!4907))))

(assert (=> d!43529 (= (forallContained!90 (list!1064 (seqFromList!424 (t!27132 tokens!465))) lambda!4907 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!55084)))

(declare-fun b!172789 () Bool)

(assert (=> b!172789 (= e!104723 (contains!467 (list!1064 (seqFromList!424 (t!27132 tokens!465))) (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(assert (= (and d!43529 res!78120) b!172789))

(declare-fun b_lambda!3959 () Bool)

(assert (=> (not b_lambda!3959) (not d!43529)))

(assert (=> d!43529 m!167605))

(declare-fun m!170583 () Bool)

(assert (=> d!43529 m!170583))

(assert (=> d!43529 m!167603))

(assert (=> d!43529 m!167605))

(declare-fun m!170585 () Bool)

(assert (=> d!43529 m!170585))

(assert (=> d!43529 m!167603))

(declare-fun m!170587 () Bool)

(assert (=> d!43529 m!170587))

(assert (=> b!172789 m!167603))

(assert (=> b!172789 m!167605))

(declare-fun m!170589 () Bool)

(assert (=> b!172789 m!170589))

(assert (=> b!171387 d!43529))

(declare-fun b!172796 () Bool)

(declare-fun e!104728 () Int)

(declare-fun e!104731 () Int)

(assert (=> b!172796 (= e!104728 e!104731)))

(declare-fun c!34216 () Bool)

(declare-fun call!7629 () Int)

(assert (=> b!172796 (= c!34216 (>= (+ 0 1) call!7629))))

(declare-fun bm!7624 () Bool)

(assert (=> bm!7624 (= call!7629 (size!2418 lt!54308))))

(declare-fun b!172797 () Bool)

(declare-fun e!104730 () List!2930)

(assert (=> b!172797 (= e!104730 lt!54308)))

(declare-fun b!172798 () Bool)

(assert (=> b!172798 (= e!104731 0)))

(declare-fun b!172799 () Bool)

(declare-fun e!104729 () Bool)

(declare-fun lt!55086 () List!2930)

(assert (=> b!172799 (= e!104729 (= (size!2418 lt!55086) e!104728))))

(declare-fun c!34218 () Bool)

(assert (=> b!172799 (= c!34218 (<= (+ 0 1) 0))))

(declare-fun d!43535 () Bool)

(assert (=> d!43535 e!104729))

(declare-fun res!78123 () Bool)

(assert (=> d!43535 (=> (not res!78123) (not e!104729))))

(assert (=> d!43535 (= res!78123 (= ((_ map implies) (content!402 lt!55086) (content!402 lt!54308)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104727 () List!2930)

(assert (=> d!43535 (= lt!55086 e!104727)))

(declare-fun c!34217 () Bool)

(assert (=> d!43535 (= c!34217 ((_ is Nil!2920) lt!54308))))

(assert (=> d!43535 (= (drop!143 lt!54308 (+ 0 1)) lt!55086)))

(declare-fun b!172800 () Bool)

(assert (=> b!172800 (= e!104727 e!104730)))

(declare-fun c!34215 () Bool)

(assert (=> b!172800 (= c!34215 (<= (+ 0 1) 0))))

(declare-fun b!172801 () Bool)

(assert (=> b!172801 (= e!104731 (- call!7629 (+ 0 1)))))

(declare-fun b!172802 () Bool)

(assert (=> b!172802 (= e!104728 call!7629)))

(declare-fun b!172803 () Bool)

(assert (=> b!172803 (= e!104730 (drop!143 (t!27132 lt!54308) (- (+ 0 1) 1)))))

(declare-fun b!172804 () Bool)

(assert (=> b!172804 (= e!104727 Nil!2920)))

(assert (= (and d!43535 c!34217) b!172804))

(assert (= (and d!43535 (not c!34217)) b!172800))

(assert (= (and b!172800 c!34215) b!172797))

(assert (= (and b!172800 (not c!34215)) b!172803))

(assert (= (and d!43535 res!78123) b!172799))

(assert (= (and b!172799 c!34218) b!172802))

(assert (= (and b!172799 (not c!34218)) b!172796))

(assert (= (and b!172796 c!34216) b!172798))

(assert (= (and b!172796 (not c!34216)) b!172801))

(assert (= (or b!172802 b!172796 b!172801) bm!7624))

(declare-fun m!170605 () Bool)

(assert (=> bm!7624 m!170605))

(declare-fun m!170607 () Bool)

(assert (=> b!172799 m!170607))

(declare-fun m!170609 () Bool)

(assert (=> d!43535 m!170609))

(declare-fun m!170611 () Bool)

(assert (=> d!43535 m!170611))

(declare-fun m!170613 () Bool)

(assert (=> b!172803 m!170613))

(assert (=> b!171387 d!43535))

(declare-fun d!43539 () Bool)

(assert (=> d!43539 (= (head!604 (drop!143 lt!54320 0)) (h!8317 (drop!143 lt!54320 0)))))

(assert (=> b!171387 d!43539))

(declare-fun d!43541 () Bool)

(declare-fun lt!55087 () Token!790)

(assert (=> d!43541 (contains!467 lt!54320 lt!55087)))

(declare-fun e!104732 () Token!790)

(assert (=> d!43541 (= lt!55087 e!104732)))

(declare-fun c!34219 () Bool)

(assert (=> d!43541 (= c!34219 (= 0 0))))

(declare-fun e!104733 () Bool)

(assert (=> d!43541 e!104733))

(declare-fun res!78124 () Bool)

(assert (=> d!43541 (=> (not res!78124) (not e!104733))))

(assert (=> d!43541 (= res!78124 (<= 0 0))))

(assert (=> d!43541 (= (apply!422 lt!54320 0) lt!55087)))

(declare-fun b!172805 () Bool)

(assert (=> b!172805 (= e!104733 (< 0 (size!2418 lt!54320)))))

(declare-fun b!172806 () Bool)

(assert (=> b!172806 (= e!104732 (head!604 lt!54320))))

(declare-fun b!172807 () Bool)

(assert (=> b!172807 (= e!104732 (apply!422 (tail!344 lt!54320) (- 0 1)))))

(assert (= (and d!43541 res!78124) b!172805))

(assert (= (and d!43541 c!34219) b!172806))

(assert (= (and d!43541 (not c!34219)) b!172807))

(declare-fun m!170615 () Bool)

(assert (=> d!43541 m!170615))

(declare-fun m!170617 () Bool)

(assert (=> b!172805 m!170617))

(declare-fun m!170619 () Bool)

(assert (=> b!172806 m!170619))

(declare-fun m!170621 () Bool)

(assert (=> b!172807 m!170621))

(assert (=> b!172807 m!170621))

(declare-fun m!170623 () Bool)

(assert (=> b!172807 m!170623))

(assert (=> b!171387 d!43541))

(declare-fun d!43543 () Bool)

(assert (=> d!43543 (= (head!604 (drop!143 lt!54320 0)) (apply!422 lt!54320 0))))

(declare-fun lt!55088 () Unit!2548)

(assert (=> d!43543 (= lt!55088 (choose!1844 lt!54320 0))))

(declare-fun e!104734 () Bool)

(assert (=> d!43543 e!104734))

(declare-fun res!78125 () Bool)

(assert (=> d!43543 (=> (not res!78125) (not e!104734))))

(assert (=> d!43543 (= res!78125 (>= 0 0))))

(assert (=> d!43543 (= (lemmaDropApply!130 lt!54320 0) lt!55088)))

(declare-fun b!172808 () Bool)

(assert (=> b!172808 (= e!104734 (< 0 (size!2418 lt!54320)))))

(assert (= (and d!43543 res!78125) b!172808))

(assert (=> d!43543 m!167619))

(assert (=> d!43543 m!167619))

(assert (=> d!43543 m!167621))

(assert (=> d!43543 m!167629))

(declare-fun m!170625 () Bool)

(assert (=> d!43543 m!170625))

(assert (=> b!172808 m!170617))

(assert (=> b!171387 d!43543))

(declare-fun b!172811 () Bool)

(declare-fun res!78128 () Bool)

(declare-fun e!104735 () Bool)

(assert (=> b!172811 (=> (not res!78128) (not e!104735))))

(assert (=> b!172811 (= res!78128 (>= (height!94 (++!674 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))) (c!33816 lt!54311))) (max!0 (height!94 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))) (height!94 (c!33816 lt!54311)))))))

(declare-fun b!172809 () Bool)

(declare-fun res!78129 () Bool)

(assert (=> b!172809 (=> (not res!78129) (not e!104735))))

(assert (=> b!172809 (= res!78129 (isBalanced!241 (++!674 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))) (c!33816 lt!54311))))))

(declare-fun b!172812 () Bool)

(declare-fun lt!55089 () BalanceConc!1744)

(assert (=> b!172812 (= e!104735 (= (list!1061 lt!55089) (++!670 (list!1061 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))) (list!1061 lt!54311))))))

(declare-fun b!172810 () Bool)

(declare-fun res!78127 () Bool)

(assert (=> b!172810 (=> (not res!78127) (not e!104735))))

(assert (=> b!172810 (= res!78127 (<= (height!94 (++!674 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))) (c!33816 lt!54311))) (+ (max!0 (height!94 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))) (height!94 (c!33816 lt!54311))) 1)))))

(declare-fun d!43545 () Bool)

(assert (=> d!43545 e!104735))

(declare-fun res!78126 () Bool)

(assert (=> d!43545 (=> (not res!78126) (not e!104735))))

(assert (=> d!43545 (= res!78126 (appendAssocInst!31 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))) (c!33816 lt!54311)))))

(assert (=> d!43545 (= lt!55089 (BalanceConc!1745 (++!674 (c!33816 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))) (c!33816 lt!54311))))))

(assert (=> d!43545 (= (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311) lt!55089)))

(assert (= (and d!43545 res!78126) b!172809))

(assert (= (and b!172809 res!78129) b!172810))

(assert (= (and b!172810 res!78127) b!172811))

(assert (= (and b!172811 res!78128) b!172812))

(declare-fun m!170627 () Bool)

(assert (=> b!172812 m!170627))

(assert (=> b!172812 m!167609))

(declare-fun m!170629 () Bool)

(assert (=> b!172812 m!170629))

(assert (=> b!172812 m!167635))

(assert (=> b!172812 m!170629))

(assert (=> b!172812 m!167635))

(declare-fun m!170631 () Bool)

(assert (=> b!172812 m!170631))

(declare-fun m!170633 () Bool)

(assert (=> b!172809 m!170633))

(assert (=> b!172809 m!170633))

(declare-fun m!170635 () Bool)

(assert (=> b!172809 m!170635))

(assert (=> b!172810 m!170633))

(declare-fun m!170637 () Bool)

(assert (=> b!172810 m!170637))

(assert (=> b!172810 m!170633))

(declare-fun m!170639 () Bool)

(assert (=> b!172810 m!170639))

(declare-fun m!170641 () Bool)

(assert (=> b!172810 m!170641))

(assert (=> b!172810 m!170639))

(assert (=> b!172810 m!170641))

(declare-fun m!170643 () Bool)

(assert (=> b!172810 m!170643))

(assert (=> b!172811 m!170633))

(assert (=> b!172811 m!170637))

(assert (=> b!172811 m!170633))

(assert (=> b!172811 m!170639))

(assert (=> b!172811 m!170641))

(assert (=> b!172811 m!170639))

(assert (=> b!172811 m!170641))

(assert (=> b!172811 m!170643))

(declare-fun m!170645 () Bool)

(assert (=> d!43545 m!170645))

(assert (=> d!43545 m!170633))

(assert (=> b!171387 d!43545))

(declare-fun d!43547 () Bool)

(assert (=> d!43547 (= (tail!344 (drop!143 lt!54308 0)) (t!27132 (drop!143 lt!54308 0)))))

(assert (=> b!171387 d!43547))

(assert (=> b!171387 d!42925))

(declare-fun bs!16916 () Bool)

(declare-fun d!43549 () Bool)

(assert (= bs!16916 (and d!43549 d!43227)))

(declare-fun lambda!4968 () Int)

(assert (=> bs!16916 (not (= lambda!4968 lambda!4948))))

(declare-fun bs!16917 () Bool)

(assert (= bs!16917 (and d!43549 b!172069)))

(assert (=> bs!16917 (not (= lambda!4968 lambda!4937))))

(declare-fun bs!16918 () Bool)

(assert (= bs!16918 (and d!43549 b!171060)))

(assert (=> bs!16918 (not (= lambda!4968 lambda!4892))))

(declare-fun bs!16919 () Bool)

(assert (= bs!16919 (and d!43549 b!171309)))

(assert (=> bs!16919 (not (= lambda!4968 lambda!4895))))

(declare-fun bs!16920 () Bool)

(assert (= bs!16920 (and d!43549 d!42751)))

(assert (=> bs!16920 (= lambda!4968 lambda!4906)))

(declare-fun bs!16921 () Bool)

(assert (= bs!16921 (and d!43549 b!172700)))

(assert (=> bs!16921 (not (= lambda!4968 lambda!4964))))

(declare-fun bs!16922 () Bool)

(assert (= bs!16922 (and d!43549 b!171518)))

(assert (=> bs!16922 (not (= lambda!4968 lambda!4913))))

(declare-fun bs!16923 () Bool)

(assert (= bs!16923 (and d!43549 b!171504)))

(assert (=> bs!16923 (not (= lambda!4968 lambda!4912))))

(declare-fun bs!16924 () Bool)

(assert (= bs!16924 (and d!43549 b!171062)))

(assert (=> bs!16924 (= lambda!4968 lambda!4891)))

(declare-fun bs!16925 () Bool)

(assert (= bs!16925 (and d!43549 d!42823)))

(assert (=> bs!16925 (= lambda!4968 lambda!4911)))

(declare-fun bs!16926 () Bool)

(assert (= bs!16926 (and d!43549 d!42863)))

(assert (=> bs!16926 (not (= lambda!4968 lambda!4926))))

(declare-fun bs!16927 () Bool)

(assert (= bs!16927 (and d!43549 b!171831)))

(assert (=> bs!16927 (not (= lambda!4968 lambda!4927))))

(declare-fun bs!16928 () Bool)

(assert (= bs!16928 (and d!43549 b!171387)))

(assert (=> bs!16928 (not (= lambda!4968 lambda!4907))))

(declare-fun bs!16929 () Bool)

(declare-fun b!172818 () Bool)

(assert (= bs!16929 (and b!172818 d!43227)))

(declare-fun lambda!4969 () Int)

(assert (=> bs!16929 (= lambda!4969 lambda!4948)))

(declare-fun bs!16930 () Bool)

(assert (= bs!16930 (and b!172818 b!172069)))

(assert (=> bs!16930 (= lambda!4969 lambda!4937)))

(declare-fun bs!16931 () Bool)

(assert (= bs!16931 (and b!172818 b!171060)))

(assert (=> bs!16931 (= lambda!4969 lambda!4892)))

(declare-fun bs!16932 () Bool)

(assert (= bs!16932 (and b!172818 b!171309)))

(assert (=> bs!16932 (= lambda!4969 lambda!4895)))

(declare-fun bs!16933 () Bool)

(assert (= bs!16933 (and b!172818 d!42751)))

(assert (=> bs!16933 (not (= lambda!4969 lambda!4906))))

(declare-fun bs!16934 () Bool)

(assert (= bs!16934 (and b!172818 b!172700)))

(assert (=> bs!16934 (= lambda!4969 lambda!4964)))

(declare-fun bs!16935 () Bool)

(assert (= bs!16935 (and b!172818 b!171518)))

(assert (=> bs!16935 (= lambda!4969 lambda!4913)))

(declare-fun bs!16936 () Bool)

(assert (= bs!16936 (and b!172818 b!171504)))

(assert (=> bs!16936 (= lambda!4969 lambda!4912)))

(declare-fun bs!16937 () Bool)

(assert (= bs!16937 (and b!172818 d!42823)))

(assert (=> bs!16937 (not (= lambda!4969 lambda!4911))))

(declare-fun bs!16938 () Bool)

(assert (= bs!16938 (and b!172818 d!42863)))

(assert (=> bs!16938 (= lambda!4969 lambda!4926)))

(declare-fun bs!16939 () Bool)

(assert (= bs!16939 (and b!172818 b!171831)))

(assert (=> bs!16939 (= lambda!4969 lambda!4927)))

(declare-fun bs!16940 () Bool)

(assert (= bs!16940 (and b!172818 b!171387)))

(assert (=> bs!16940 (= lambda!4969 lambda!4907)))

(declare-fun bs!16941 () Bool)

(assert (= bs!16941 (and b!172818 b!171062)))

(assert (=> bs!16941 (not (= lambda!4969 lambda!4891))))

(declare-fun bs!16942 () Bool)

(assert (= bs!16942 (and b!172818 d!43549)))

(assert (=> bs!16942 (not (= lambda!4969 lambda!4968))))

(declare-fun b!172830 () Bool)

(declare-fun e!104747 () Bool)

(assert (=> b!172830 (= e!104747 true)))

(declare-fun b!172829 () Bool)

(declare-fun e!104746 () Bool)

(assert (=> b!172829 (= e!104746 e!104747)))

(declare-fun b!172828 () Bool)

(declare-fun e!104745 () Bool)

(assert (=> b!172828 (= e!104745 e!104746)))

(assert (=> b!172818 e!104745))

(assert (= b!172829 b!172830))

(assert (= b!172828 b!172829))

(assert (= (and b!172818 ((_ is Cons!2919) rules!1920)) b!172828))

(assert (=> b!172830 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4969))))

(assert (=> b!172830 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4969))))

(assert (=> b!172818 true))

(declare-fun b!172813 () Bool)

(declare-fun e!104738 () BalanceConc!1744)

(declare-fun call!7632 () Token!790)

(assert (=> b!172813 (= e!104738 (charsOf!178 call!7632))))

(declare-fun b!172814 () Bool)

(declare-fun c!34223 () Bool)

(declare-fun e!104742 () Bool)

(assert (=> b!172814 (= c!34223 e!104742)))

(declare-fun res!78131 () Bool)

(assert (=> b!172814 (=> (not res!78131) (not e!104742))))

(declare-fun lt!55098 () Option!321)

(assert (=> b!172814 (= res!78131 ((_ is Some!320) lt!55098))))

(declare-fun e!104740 () BalanceConc!1744)

(declare-fun e!104739 () BalanceConc!1744)

(assert (=> b!172814 (= e!104740 e!104739)))

(declare-fun b!172815 () Bool)

(declare-fun call!7630 () Token!790)

(assert (=> b!172815 (= e!104742 (not (= (_1!1631 (v!13763 lt!55098)) call!7630)))))

(declare-fun b!172816 () Bool)

(assert (=> b!172816 (= e!104739 (BalanceConc!1745 Empty!868))))

(assert (=> b!172816 (= (print!140 thiss!17480 (singletonSeq!75 call!7632)) (printTailRec!103 thiss!17480 (singletonSeq!75 call!7632) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!55103 () Unit!2548)

(declare-fun Unit!2594 () Unit!2548)

(assert (=> b!172816 (= lt!55103 Unit!2594)))

(declare-fun call!7634 () BalanceConc!1744)

(declare-fun lt!55093 () BalanceConc!1744)

(declare-fun lt!55096 () Unit!2548)

(assert (=> b!172816 (= lt!55096 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 (list!1061 call!7634) (list!1061 lt!55093)))))

(assert (=> b!172816 false))

(declare-fun lt!55099 () Unit!2548)

(declare-fun Unit!2595 () Unit!2548)

(assert (=> b!172816 (= lt!55099 Unit!2595)))

(declare-fun call!7633 () BalanceConc!1744)

(declare-fun bm!7625 () Bool)

(declare-fun c!34220 () Bool)

(assert (=> bm!7625 (= call!7633 (charsOf!178 (ite c!34220 call!7630 (ite c!34223 separatorToken!170 call!7632))))))

(declare-fun b!172817 () Bool)

(declare-fun e!104736 () BalanceConc!1744)

(assert (=> b!172817 (= e!104736 (BalanceConc!1745 Empty!868))))

(declare-fun lt!55097 () BalanceConc!1744)

(assert (=> d!43549 (= (list!1061 lt!55097) (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (dropList!90 (seqFromList!424 (t!27132 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!43549 (= lt!55097 e!104736)))

(declare-fun c!34221 () Bool)

(assert (=> d!43549 (= c!34221 (>= (+ 0 1) (size!2416 (seqFromList!424 (t!27132 tokens!465)))))))

(declare-fun lt!55100 () Unit!2548)

(assert (=> d!43549 (= lt!55100 (lemmaContentSubsetPreservesForall!33 (list!1064 (seqFromList!424 (t!27132 tokens!465))) (dropList!90 (seqFromList!424 (t!27132 tokens!465)) (+ 0 1)) lambda!4968))))

(declare-fun e!104741 () Bool)

(assert (=> d!43549 e!104741))

(declare-fun res!78130 () Bool)

(assert (=> d!43549 (=> (not res!78130) (not e!104741))))

(assert (=> d!43549 (= res!78130 (>= (+ 0 1) 0))))

(assert (=> d!43549 (= (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 (+ 0 1)) lt!55097)))

(assert (=> b!172818 (= e!104736 e!104740)))

(declare-fun lt!55102 () List!2930)

(assert (=> b!172818 (= lt!55102 (list!1064 (seqFromList!424 (t!27132 tokens!465))))))

(declare-fun lt!55091 () Unit!2548)

(assert (=> b!172818 (= lt!55091 (lemmaDropApply!130 lt!55102 (+ 0 1)))))

(assert (=> b!172818 (= (head!604 (drop!143 lt!55102 (+ 0 1))) (apply!422 lt!55102 (+ 0 1)))))

(declare-fun lt!55095 () Unit!2548)

(assert (=> b!172818 (= lt!55095 lt!55091)))

(declare-fun lt!55090 () List!2930)

(assert (=> b!172818 (= lt!55090 (list!1064 (seqFromList!424 (t!27132 tokens!465))))))

(declare-fun lt!55094 () Unit!2548)

(assert (=> b!172818 (= lt!55094 (lemmaDropTail!122 lt!55090 (+ 0 1)))))

(assert (=> b!172818 (= (tail!344 (drop!143 lt!55090 (+ 0 1))) (drop!143 lt!55090 (+ 0 1 1)))))

(declare-fun lt!55101 () Unit!2548)

(assert (=> b!172818 (= lt!55101 lt!55094)))

(declare-fun lt!55092 () Unit!2548)

(assert (=> b!172818 (= lt!55092 (forallContained!90 (list!1064 (seqFromList!424 (t!27132 tokens!465))) lambda!4969 (apply!423 (seqFromList!424 (t!27132 tokens!465)) (+ 0 1))))))

(assert (=> b!172818 (= lt!55093 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 (seqFromList!424 (t!27132 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!172818 (= lt!55098 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) (+ 0 1))) lt!55093)))))

(declare-fun res!78132 () Bool)

(assert (=> b!172818 (= res!78132 ((_ is Some!320) lt!55098))))

(declare-fun e!104737 () Bool)

(assert (=> b!172818 (=> (not res!78132) (not e!104737))))

(assert (=> b!172818 (= c!34220 e!104737)))

(declare-fun b!172819 () Bool)

(declare-fun call!7631 () BalanceConc!1744)

(assert (=> b!172819 (= e!104740 call!7631)))

(declare-fun b!172820 () Bool)

(assert (=> b!172820 (= e!104737 (= (_1!1631 (v!13763 lt!55098)) (apply!423 (seqFromList!424 (t!27132 tokens!465)) (+ 0 1))))))

(declare-fun bm!7626 () Bool)

(assert (=> bm!7626 (= call!7634 call!7633)))

(declare-fun b!172821 () Bool)

(assert (=> b!172821 (= e!104739 (++!672 call!7631 lt!55093))))

(declare-fun b!172822 () Bool)

(assert (=> b!172822 (= e!104741 (<= (+ 0 1) (size!2416 (seqFromList!424 (t!27132 tokens!465)))))))

(declare-fun bm!7627 () Bool)

(declare-fun c!34222 () Bool)

(assert (=> bm!7627 (= c!34222 c!34220)))

(assert (=> bm!7627 (= call!7631 (++!672 e!104738 (ite c!34220 lt!55093 call!7634)))))

(declare-fun b!172823 () Bool)

(assert (=> b!172823 (= e!104738 call!7633)))

(declare-fun bm!7628 () Bool)

(assert (=> bm!7628 (= call!7632 call!7630)))

(declare-fun bm!7629 () Bool)

(assert (=> bm!7629 (= call!7630 (apply!423 (seqFromList!424 (t!27132 tokens!465)) (+ 0 1)))))

(assert (= (and d!43549 res!78130) b!172822))

(assert (= (and d!43549 c!34221) b!172817))

(assert (= (and d!43549 (not c!34221)) b!172818))

(assert (= (and b!172818 res!78132) b!172820))

(assert (= (and b!172818 c!34220) b!172819))

(assert (= (and b!172818 (not c!34220)) b!172814))

(assert (= (and b!172814 res!78131) b!172815))

(assert (= (and b!172814 c!34223) b!172821))

(assert (= (and b!172814 (not c!34223)) b!172816))

(assert (= (or b!172821 b!172816) bm!7628))

(assert (= (or b!172821 b!172816) bm!7626))

(assert (= (or b!172819 b!172815 bm!7628) bm!7629))

(assert (= (or b!172819 bm!7626) bm!7625))

(assert (= (or b!172819 b!172821) bm!7627))

(assert (= (and bm!7627 c!34222) b!172823))

(assert (= (and bm!7627 (not c!34222)) b!172813))

(declare-fun m!170679 () Bool)

(assert (=> b!172818 m!170679))

(assert (=> b!172818 m!167603))

(declare-fun m!170681 () Bool)

(assert (=> b!172818 m!170681))

(declare-fun m!170683 () Bool)

(assert (=> b!172818 m!170683))

(assert (=> b!172818 m!170681))

(declare-fun m!170685 () Bool)

(assert (=> b!172818 m!170685))

(declare-fun m!170687 () Bool)

(assert (=> b!172818 m!170687))

(assert (=> b!172818 m!167123))

(assert (=> b!172818 m!170681))

(assert (=> b!172818 m!170685))

(declare-fun m!170689 () Bool)

(assert (=> b!172818 m!170689))

(declare-fun m!170691 () Bool)

(assert (=> b!172818 m!170691))

(assert (=> b!172818 m!167123))

(declare-fun m!170695 () Bool)

(assert (=> b!172818 m!170695))

(declare-fun m!170697 () Bool)

(assert (=> b!172818 m!170697))

(declare-fun m!170699 () Bool)

(assert (=> b!172818 m!170699))

(declare-fun m!170701 () Bool)

(assert (=> b!172818 m!170701))

(assert (=> b!172818 m!170679))

(declare-fun m!170703 () Bool)

(assert (=> b!172818 m!170703))

(assert (=> b!172818 m!170697))

(assert (=> b!172818 m!170689))

(declare-fun m!170705 () Bool)

(assert (=> b!172818 m!170705))

(declare-fun m!170707 () Bool)

(assert (=> b!172818 m!170707))

(assert (=> b!172818 m!167123))

(assert (=> b!172818 m!167603))

(declare-fun m!170709 () Bool)

(assert (=> b!172816 m!170709))

(declare-fun m!170711 () Bool)

(assert (=> b!172816 m!170711))

(assert (=> b!172816 m!170709))

(declare-fun m!170713 () Bool)

(assert (=> b!172816 m!170713))

(declare-fun m!170715 () Bool)

(assert (=> b!172816 m!170715))

(assert (=> b!172816 m!170711))

(declare-fun m!170717 () Bool)

(assert (=> b!172816 m!170717))

(assert (=> b!172816 m!170713))

(assert (=> b!172816 m!170711))

(declare-fun m!170719 () Bool)

(assert (=> b!172816 m!170719))

(assert (=> b!172820 m!167123))

(assert (=> b!172820 m!170681))

(assert (=> b!172822 m!167123))

(assert (=> b!172822 m!167643))

(assert (=> bm!7629 m!167123))

(assert (=> bm!7629 m!170681))

(assert (=> d!43549 m!167123))

(declare-fun m!170721 () Bool)

(assert (=> d!43549 m!170721))

(assert (=> d!43549 m!167123))

(assert (=> d!43549 m!167643))

(declare-fun m!170723 () Bool)

(assert (=> d!43549 m!170723))

(assert (=> d!43549 m!167603))

(assert (=> d!43549 m!170721))

(declare-fun m!170725 () Bool)

(assert (=> d!43549 m!170725))

(assert (=> d!43549 m!167123))

(assert (=> d!43549 m!167603))

(assert (=> d!43549 m!170721))

(declare-fun m!170727 () Bool)

(assert (=> d!43549 m!170727))

(declare-fun m!170729 () Bool)

(assert (=> bm!7627 m!170729))

(declare-fun m!170731 () Bool)

(assert (=> b!172821 m!170731))

(declare-fun m!170733 () Bool)

(assert (=> b!172813 m!170733))

(declare-fun m!170735 () Bool)

(assert (=> bm!7625 m!170735))

(assert (=> b!171387 d!43549))

(declare-fun b!172833 () Bool)

(declare-fun e!104750 () Int)

(declare-fun e!104753 () Int)

(assert (=> b!172833 (= e!104750 e!104753)))

(declare-fun c!34228 () Bool)

(declare-fun call!7635 () Int)

(assert (=> b!172833 (= c!34228 (>= 0 call!7635))))

(declare-fun bm!7630 () Bool)

(assert (=> bm!7630 (= call!7635 (size!2418 lt!54320))))

(declare-fun b!172834 () Bool)

(declare-fun e!104752 () List!2930)

(assert (=> b!172834 (= e!104752 lt!54320)))

(declare-fun b!172835 () Bool)

(assert (=> b!172835 (= e!104753 0)))

(declare-fun b!172836 () Bool)

(declare-fun e!104751 () Bool)

(declare-fun lt!55120 () List!2930)

(assert (=> b!172836 (= e!104751 (= (size!2418 lt!55120) e!104750))))

(declare-fun c!34230 () Bool)

(assert (=> b!172836 (= c!34230 (<= 0 0))))

(declare-fun d!43561 () Bool)

(assert (=> d!43561 e!104751))

(declare-fun res!78133 () Bool)

(assert (=> d!43561 (=> (not res!78133) (not e!104751))))

(assert (=> d!43561 (= res!78133 (= ((_ map implies) (content!402 lt!55120) (content!402 lt!54320)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104749 () List!2930)

(assert (=> d!43561 (= lt!55120 e!104749)))

(declare-fun c!34229 () Bool)

(assert (=> d!43561 (= c!34229 ((_ is Nil!2920) lt!54320))))

(assert (=> d!43561 (= (drop!143 lt!54320 0) lt!55120)))

(declare-fun b!172837 () Bool)

(assert (=> b!172837 (= e!104749 e!104752)))

(declare-fun c!34227 () Bool)

(assert (=> b!172837 (= c!34227 (<= 0 0))))

(declare-fun b!172838 () Bool)

(assert (=> b!172838 (= e!104753 (- call!7635 0))))

(declare-fun b!172839 () Bool)

(assert (=> b!172839 (= e!104750 call!7635)))

(declare-fun b!172840 () Bool)

(assert (=> b!172840 (= e!104752 (drop!143 (t!27132 lt!54320) (- 0 1)))))

(declare-fun b!172841 () Bool)

(assert (=> b!172841 (= e!104749 Nil!2920)))

(assert (= (and d!43561 c!34229) b!172841))

(assert (= (and d!43561 (not c!34229)) b!172837))

(assert (= (and b!172837 c!34227) b!172834))

(assert (= (and b!172837 (not c!34227)) b!172840))

(assert (= (and d!43561 res!78133) b!172836))

(assert (= (and b!172836 c!34230) b!172839))

(assert (= (and b!172836 (not c!34230)) b!172833))

(assert (= (and b!172833 c!34228) b!172835))

(assert (= (and b!172833 (not c!34228)) b!172838))

(assert (= (or b!172839 b!172833 b!172838) bm!7630))

(assert (=> bm!7630 m!170617))

(declare-fun m!170737 () Bool)

(assert (=> b!172836 m!170737))

(declare-fun m!170739 () Bool)

(assert (=> d!43561 m!170739))

(declare-fun m!170741 () Bool)

(assert (=> d!43561 m!170741))

(declare-fun m!170743 () Bool)

(assert (=> b!172840 m!170743))

(assert (=> b!171387 d!43561))

(declare-fun d!43563 () Bool)

(assert (=> d!43563 (= (tail!344 (drop!143 lt!54308 0)) (drop!143 lt!54308 (+ 0 1)))))

(declare-fun lt!55121 () Unit!2548)

(assert (=> d!43563 (= lt!55121 (choose!1843 lt!54308 0))))

(declare-fun e!104754 () Bool)

(assert (=> d!43563 e!104754))

(declare-fun res!78134 () Bool)

(assert (=> d!43563 (=> (not res!78134) (not e!104754))))

(assert (=> d!43563 (= res!78134 (>= 0 0))))

(assert (=> d!43563 (= (lemmaDropTail!122 lt!54308 0) lt!55121)))

(declare-fun b!172842 () Bool)

(assert (=> b!172842 (= e!104754 (< 0 (size!2418 lt!54308)))))

(assert (= (and d!43563 res!78134) b!172842))

(assert (=> d!43563 m!167601))

(assert (=> d!43563 m!167601))

(assert (=> d!43563 m!167625))

(assert (=> d!43563 m!167615))

(declare-fun m!170745 () Bool)

(assert (=> d!43563 m!170745))

(assert (=> b!172842 m!170605))

(assert (=> b!171387 d!43563))

(declare-fun lt!55127 () Option!321)

(declare-fun b!172843 () Bool)

(declare-fun e!104760 () Bool)

(assert (=> b!172843 (= e!104760 (= (list!1061 (_2!1631 (get!802 lt!55127))) (_2!1630 (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))))))

(declare-fun b!172844 () Bool)

(declare-fun e!104755 () Option!321)

(declare-fun lt!55126 () Option!321)

(declare-fun lt!55125 () Option!321)

(assert (=> b!172844 (= e!104755 (ite (and ((_ is None!320) lt!55126) ((_ is None!320) lt!55125)) None!320 (ite ((_ is None!320) lt!55125) lt!55126 (ite ((_ is None!320) lt!55126) lt!55125 (ite (>= (size!2411 (_1!1631 (v!13763 lt!55126))) (size!2411 (_1!1631 (v!13763 lt!55125)))) lt!55126 lt!55125)))))))

(declare-fun call!7636 () Option!321)

(assert (=> b!172844 (= lt!55126 call!7636)))

(assert (=> b!172844 (= lt!55125 (maxPrefixZipperSequence!102 thiss!17480 (t!27131 rules!1920) (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))

(declare-fun b!172845 () Bool)

(declare-fun e!104756 () Bool)

(declare-fun e!104758 () Bool)

(assert (=> b!172845 (= e!104756 e!104758)))

(declare-fun res!78138 () Bool)

(assert (=> b!172845 (=> (not res!78138) (not e!104758))))

(assert (=> b!172845 (= res!78138 (= (_1!1631 (get!802 lt!55127)) (_1!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))))))

(declare-fun d!43565 () Bool)

(declare-fun e!104759 () Bool)

(assert (=> d!43565 e!104759))

(declare-fun res!78136 () Bool)

(assert (=> d!43565 (=> (not res!78136) (not e!104759))))

(assert (=> d!43565 (= res!78136 (= (isDefined!172 lt!55127) (isDefined!171 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311))))))))

(assert (=> d!43565 (= lt!55127 e!104755)))

(declare-fun c!34231 () Bool)

(assert (=> d!43565 (= c!34231 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!55122 () Unit!2548)

(declare-fun lt!55123 () Unit!2548)

(assert (=> d!43565 (= lt!55122 lt!55123)))

(declare-fun lt!55124 () List!2928)

(declare-fun lt!55128 () List!2928)

(assert (=> d!43565 (isPrefix!230 lt!55124 lt!55128)))

(assert (=> d!43565 (= lt!55123 (lemmaIsPrefixRefl!138 lt!55124 lt!55128))))

(assert (=> d!43565 (= lt!55128 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))

(assert (=> d!43565 (= lt!55124 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))

(assert (=> d!43565 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!43565 (= (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)) lt!55127)))

(declare-fun bm!7631 () Bool)

(assert (=> bm!7631 (= call!7636 (maxPrefixOneRuleZipperSequence!43 thiss!17480 (h!8316 rules!1920) (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))

(declare-fun b!172846 () Bool)

(assert (=> b!172846 (= e!104758 (= (list!1061 (_2!1631 (get!802 lt!55127))) (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))))))

(declare-fun b!172847 () Bool)

(declare-fun res!78140 () Bool)

(assert (=> b!172847 (=> (not res!78140) (not e!104759))))

(declare-fun e!104757 () Bool)

(assert (=> b!172847 (= res!78140 e!104757)))

(declare-fun res!78137 () Bool)

(assert (=> b!172847 (=> res!78137 e!104757)))

(assert (=> b!172847 (= res!78137 (not (isDefined!172 lt!55127)))))

(declare-fun b!172848 () Bool)

(assert (=> b!172848 (= e!104759 e!104756)))

(declare-fun res!78135 () Bool)

(assert (=> b!172848 (=> res!78135 e!104756)))

(assert (=> b!172848 (= res!78135 (not (isDefined!172 lt!55127)))))

(declare-fun b!172849 () Bool)

(assert (=> b!172849 (= e!104755 call!7636)))

(declare-fun b!172850 () Bool)

(assert (=> b!172850 (= e!104757 e!104760)))

(declare-fun res!78139 () Bool)

(assert (=> b!172850 (=> (not res!78139) (not e!104760))))

(assert (=> b!172850 (= res!78139 (= (_1!1631 (get!802 lt!55127)) (_1!1630 (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!54311)))))))))

(assert (= (and d!43565 c!34231) b!172849))

(assert (= (and d!43565 (not c!34231)) b!172844))

(assert (= (or b!172849 b!172844) bm!7631))

(assert (= (and d!43565 res!78136) b!172847))

(assert (= (and b!172847 (not res!78137)) b!172850))

(assert (= (and b!172850 res!78139) b!172843))

(assert (= (and b!172847 res!78140) b!172848))

(assert (= (and b!172848 (not res!78135)) b!172845))

(assert (= (and b!172845 res!78138) b!172846))

(declare-fun m!170747 () Bool)

(assert (=> b!172848 m!170747))

(declare-fun m!170749 () Bool)

(assert (=> b!172850 m!170749))

(assert (=> b!172850 m!167613))

(declare-fun m!170751 () Bool)

(assert (=> b!172850 m!170751))

(assert (=> b!172850 m!170751))

(declare-fun m!170753 () Bool)

(assert (=> b!172850 m!170753))

(assert (=> b!172850 m!170753))

(declare-fun m!170755 () Bool)

(assert (=> b!172850 m!170755))

(assert (=> b!172846 m!167613))

(assert (=> b!172846 m!170751))

(declare-fun m!170757 () Bool)

(assert (=> b!172846 m!170757))

(assert (=> b!172846 m!170749))

(assert (=> b!172846 m!170751))

(declare-fun m!170759 () Bool)

(assert (=> b!172846 m!170759))

(assert (=> b!172846 m!170759))

(declare-fun m!170761 () Bool)

(assert (=> b!172846 m!170761))

(assert (=> b!172845 m!170749))

(assert (=> b!172845 m!167613))

(assert (=> b!172845 m!170751))

(assert (=> b!172845 m!170751))

(assert (=> b!172845 m!170759))

(assert (=> b!172845 m!170759))

(assert (=> b!172845 m!170761))

(assert (=> b!172844 m!167613))

(declare-fun m!170763 () Bool)

(assert (=> b!172844 m!170763))

(assert (=> b!172847 m!170747))

(assert (=> b!172843 m!167613))

(assert (=> b!172843 m!170751))

(assert (=> b!172843 m!170749))

(assert (=> b!172843 m!170751))

(assert (=> b!172843 m!170753))

(assert (=> b!172843 m!170757))

(assert (=> b!172843 m!170753))

(assert (=> b!172843 m!170755))

(assert (=> d!43565 m!170747))

(assert (=> d!43565 m!167263))

(assert (=> d!43565 m!167613))

(assert (=> d!43565 m!170751))

(assert (=> d!43565 m!170751))

(assert (=> d!43565 m!170753))

(assert (=> d!43565 m!170753))

(declare-fun m!170765 () Bool)

(assert (=> d!43565 m!170765))

(declare-fun m!170767 () Bool)

(assert (=> d!43565 m!170767))

(declare-fun m!170769 () Bool)

(assert (=> d!43565 m!170769))

(assert (=> bm!7631 m!167613))

(declare-fun m!170771 () Bool)

(assert (=> bm!7631 m!170771))

(assert (=> b!171387 d!43565))

(declare-fun b!172869 () Bool)

(declare-fun e!104768 () Int)

(declare-fun e!104771 () Int)

(assert (=> b!172869 (= e!104768 e!104771)))

(declare-fun c!34233 () Bool)

(declare-fun call!7637 () Int)

(assert (=> b!172869 (= c!34233 (>= 0 call!7637))))

(declare-fun bm!7632 () Bool)

(assert (=> bm!7632 (= call!7637 (size!2418 lt!54308))))

(declare-fun b!172870 () Bool)

(declare-fun e!104770 () List!2930)

(assert (=> b!172870 (= e!104770 lt!54308)))

(declare-fun b!172871 () Bool)

(assert (=> b!172871 (= e!104771 0)))

(declare-fun b!172872 () Bool)

(declare-fun e!104769 () Bool)

(declare-fun lt!55129 () List!2930)

(assert (=> b!172872 (= e!104769 (= (size!2418 lt!55129) e!104768))))

(declare-fun c!34235 () Bool)

(assert (=> b!172872 (= c!34235 (<= 0 0))))

(declare-fun d!43567 () Bool)

(assert (=> d!43567 e!104769))

(declare-fun res!78159 () Bool)

(assert (=> d!43567 (=> (not res!78159) (not e!104769))))

(assert (=> d!43567 (= res!78159 (= ((_ map implies) (content!402 lt!55129) (content!402 lt!54308)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104767 () List!2930)

(assert (=> d!43567 (= lt!55129 e!104767)))

(declare-fun c!34234 () Bool)

(assert (=> d!43567 (= c!34234 ((_ is Nil!2920) lt!54308))))

(assert (=> d!43567 (= (drop!143 lt!54308 0) lt!55129)))

(declare-fun b!172873 () Bool)

(assert (=> b!172873 (= e!104767 e!104770)))

(declare-fun c!34232 () Bool)

(assert (=> b!172873 (= c!34232 (<= 0 0))))

(declare-fun b!172874 () Bool)

(assert (=> b!172874 (= e!104771 (- call!7637 0))))

(declare-fun b!172875 () Bool)

(assert (=> b!172875 (= e!104768 call!7637)))

(declare-fun b!172876 () Bool)

(assert (=> b!172876 (= e!104770 (drop!143 (t!27132 lt!54308) (- 0 1)))))

(declare-fun b!172877 () Bool)

(assert (=> b!172877 (= e!104767 Nil!2920)))

(assert (= (and d!43567 c!34234) b!172877))

(assert (= (and d!43567 (not c!34234)) b!172873))

(assert (= (and b!172873 c!34232) b!172870))

(assert (= (and b!172873 (not c!34232)) b!172876))

(assert (= (and d!43567 res!78159) b!172872))

(assert (= (and b!172872 c!34235) b!172875))

(assert (= (and b!172872 (not c!34235)) b!172869))

(assert (= (and b!172869 c!34233) b!172871))

(assert (= (and b!172869 (not c!34233)) b!172874))

(assert (= (or b!172875 b!172869 b!172874) bm!7632))

(assert (=> bm!7632 m!170605))

(declare-fun m!170781 () Bool)

(assert (=> b!172872 m!170781))

(declare-fun m!170785 () Bool)

(assert (=> d!43567 m!170785))

(assert (=> d!43567 m!170611))

(declare-fun m!170789 () Bool)

(assert (=> b!172876 m!170789))

(assert (=> b!171387 d!43567))

(assert (=> b!171387 d!43055))

(declare-fun d!43571 () Bool)

(declare-fun lt!55131 () BalanceConc!1744)

(assert (=> d!43571 (= (list!1061 lt!55131) (originalCharacters!566 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(assert (=> d!43571 (= lt!55131 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))) (value!19221 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))))

(assert (=> d!43571 (= (charsOf!178 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) lt!55131)))

(declare-fun b_lambda!3961 () Bool)

(assert (=> (not b_lambda!3961) (not d!43571)))

(declare-fun t!27392 () Bool)

(declare-fun tb!6921 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27392) tb!6921))

(declare-fun b!172880 () Bool)

(declare-fun e!104773 () Bool)

(declare-fun tp!84510 () Bool)

(assert (=> b!172880 (= e!104773 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))) (value!19221 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) tp!84510))))

(declare-fun result!9648 () Bool)

(assert (=> tb!6921 (= result!9648 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))) (value!19221 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))) e!104773))))

(assert (= tb!6921 b!172880))

(declare-fun m!170795 () Bool)

(assert (=> b!172880 m!170795))

(declare-fun m!170797 () Bool)

(assert (=> tb!6921 m!170797))

(assert (=> d!43571 t!27392))

(declare-fun b_and!11499 () Bool)

(assert (= b_and!11489 (and (=> t!27392 result!9648) b_and!11499)))

(declare-fun tb!6923 () Bool)

(declare-fun t!27394 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27394) tb!6923))

(declare-fun result!9650 () Bool)

(assert (= result!9650 result!9648))

(assert (=> d!43571 t!27394))

(declare-fun b_and!11501 () Bool)

(assert (= b_and!11491 (and (=> t!27394 result!9650) b_and!11501)))

(declare-fun t!27396 () Bool)

(declare-fun tb!6925 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27396) tb!6925))

(declare-fun result!9652 () Bool)

(assert (= result!9652 result!9648))

(assert (=> d!43571 t!27396))

(declare-fun b_and!11503 () Bool)

(assert (= b_and!11495 (and (=> t!27396 result!9652) b_and!11503)))

(declare-fun t!27398 () Bool)

(declare-fun tb!6927 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27398) tb!6927))

(declare-fun result!9654 () Bool)

(assert (= result!9654 result!9648))

(assert (=> d!43571 t!27398))

(declare-fun b_and!11505 () Bool)

(assert (= b_and!11493 (and (=> t!27398 result!9654) b_and!11505)))

(declare-fun tb!6929 () Bool)

(declare-fun t!27400 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27400) tb!6929))

(declare-fun result!9656 () Bool)

(assert (= result!9656 result!9648))

(assert (=> d!43571 t!27400))

(declare-fun b_and!11507 () Bool)

(assert (= b_and!11497 (and (=> t!27400 result!9656) b_and!11507)))

(declare-fun m!170799 () Bool)

(assert (=> d!43571 m!170799))

(declare-fun m!170801 () Bool)

(assert (=> d!43571 m!170801))

(assert (=> b!171387 d!43571))

(declare-fun d!43577 () Bool)

(declare-fun lt!55132 () Bool)

(assert (=> d!43577 (= lt!55132 (isEmpty!1247 (list!1061 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)))))))))

(assert (=> d!43577 (= lt!55132 (isEmpty!1260 (c!33816 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)))))))))

(assert (=> d!43577 (= (isEmpty!1256 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))))) lt!55132)))

(declare-fun bs!16948 () Bool)

(assert (= bs!16948 d!43577))

(declare-fun m!170803 () Bool)

(assert (=> bs!16948 m!170803))

(assert (=> bs!16948 m!170803))

(declare-fun m!170805 () Bool)

(assert (=> bs!16948 m!170805))

(declare-fun m!170807 () Bool)

(assert (=> bs!16948 m!170807))

(assert (=> b!171568 d!43577))

(declare-fun b!172881 () Bool)

(declare-fun e!104775 () Bool)

(declare-fun lt!55133 () tuple2!2826)

(assert (=> b!172881 (= e!104775 (not (isEmpty!1246 (_1!1629 lt!55133))))))

(declare-fun b!172882 () Bool)

(declare-fun e!104776 () Bool)

(assert (=> b!172882 (= e!104776 (= (_2!1629 lt!55133) (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))))))

(declare-fun b!172883 () Bool)

(assert (=> b!172883 (= e!104776 e!104775)))

(declare-fun res!78162 () Bool)

(assert (=> b!172883 (= res!78162 (< (size!2415 (_2!1629 lt!55133)) (size!2415 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)))))))

(assert (=> b!172883 (=> (not res!78162) (not e!104775))))

(declare-fun e!104774 () Bool)

(declare-fun b!172884 () Bool)

(assert (=> b!172884 (= e!104774 (= (list!1061 (_2!1629 lt!55133)) (_2!1633 (lexList!115 thiss!17480 rules!1920 (list!1061 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)))))))))

(declare-fun d!43579 () Bool)

(assert (=> d!43579 e!104774))

(declare-fun res!78161 () Bool)

(assert (=> d!43579 (=> (not res!78161) (not e!104774))))

(assert (=> d!43579 (= res!78161 e!104776)))

(declare-fun c!34237 () Bool)

(assert (=> d!43579 (= c!34237 (> (size!2416 (_1!1629 lt!55133)) 0))))

(assert (=> d!43579 (= lt!55133 (lexTailRecV2!102 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)) (BalanceConc!1745 Empty!868) (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)) (BalanceConc!1747 Empty!869)))))

(assert (=> d!43579 (= (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))) lt!55133)))

(declare-fun b!172885 () Bool)

(declare-fun res!78160 () Bool)

(assert (=> b!172885 (=> (not res!78160) (not e!104774))))

(assert (=> b!172885 (= res!78160 (= (list!1064 (_1!1629 lt!55133)) (_1!1633 (lexList!115 thiss!17480 rules!1920 (list!1061 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)))))))))

(assert (= (and d!43579 c!34237) b!172883))

(assert (= (and d!43579 (not c!34237)) b!172882))

(assert (= (and b!172883 res!78162) b!172881))

(assert (= (and d!43579 res!78161) b!172885))

(assert (= (and b!172885 res!78160) b!172884))

(declare-fun m!170809 () Bool)

(assert (=> b!172885 m!170809))

(assert (=> b!172885 m!168041))

(declare-fun m!170811 () Bool)

(assert (=> b!172885 m!170811))

(assert (=> b!172885 m!170811))

(declare-fun m!170813 () Bool)

(assert (=> b!172885 m!170813))

(declare-fun m!170815 () Bool)

(assert (=> b!172881 m!170815))

(declare-fun m!170817 () Bool)

(assert (=> b!172883 m!170817))

(assert (=> b!172883 m!168041))

(declare-fun m!170819 () Bool)

(assert (=> b!172883 m!170819))

(declare-fun m!170821 () Bool)

(assert (=> b!172884 m!170821))

(assert (=> b!172884 m!168041))

(assert (=> b!172884 m!170811))

(assert (=> b!172884 m!170811))

(assert (=> b!172884 m!170813))

(declare-fun m!170823 () Bool)

(assert (=> d!43579 m!170823))

(assert (=> d!43579 m!168041))

(assert (=> d!43579 m!168041))

(declare-fun m!170825 () Bool)

(assert (=> d!43579 m!170825))

(assert (=> b!171568 d!43579))

(declare-fun d!43581 () Bool)

(declare-fun lt!55134 () BalanceConc!1744)

(assert (=> d!43581 (= (list!1061 lt!55134) (printList!93 thiss!17480 (list!1064 (singletonSeq!75 separatorToken!170))))))

(assert (=> d!43581 (= lt!55134 (printTailRec!103 thiss!17480 (singletonSeq!75 separatorToken!170) 0 (BalanceConc!1745 Empty!868)))))

(assert (=> d!43581 (= (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)) lt!55134)))

(declare-fun bs!16949 () Bool)

(assert (= bs!16949 d!43581))

(declare-fun m!170827 () Bool)

(assert (=> bs!16949 m!170827))

(assert (=> bs!16949 m!168033))

(assert (=> bs!16949 m!168037))

(assert (=> bs!16949 m!168037))

(declare-fun m!170829 () Bool)

(assert (=> bs!16949 m!170829))

(assert (=> bs!16949 m!168033))

(declare-fun m!170831 () Bool)

(assert (=> bs!16949 m!170831))

(assert (=> b!171568 d!43581))

(declare-fun d!43583 () Bool)

(declare-fun e!104779 () Bool)

(assert (=> d!43583 e!104779))

(declare-fun res!78165 () Bool)

(assert (=> d!43583 (=> (not res!78165) (not e!104779))))

(declare-fun lt!55135 () BalanceConc!1746)

(assert (=> d!43583 (= res!78165 (= (list!1064 lt!55135) (Cons!2920 separatorToken!170 Nil!2920)))))

(assert (=> d!43583 (= lt!55135 (singleton!39 separatorToken!170))))

(assert (=> d!43583 (= (singletonSeq!75 separatorToken!170) lt!55135)))

(declare-fun b!172888 () Bool)

(assert (=> b!172888 (= e!104779 (isBalanced!240 (c!33818 lt!55135)))))

(assert (= (and d!43583 res!78165) b!172888))

(declare-fun m!170833 () Bool)

(assert (=> d!43583 m!170833))

(declare-fun m!170835 () Bool)

(assert (=> d!43583 m!170835))

(declare-fun m!170837 () Bool)

(assert (=> b!172888 m!170837))

(assert (=> b!171568 d!43583))

(declare-fun d!43585 () Bool)

(assert (=> d!43585 (dynLambda!1111 lambda!4913 (h!8317 tokens!465))))

(declare-fun lt!55136 () Unit!2548)

(assert (=> d!43585 (= lt!55136 (choose!1831 tokens!465 lambda!4913 (h!8317 tokens!465)))))

(declare-fun e!104780 () Bool)

(assert (=> d!43585 e!104780))

(declare-fun res!78166 () Bool)

(assert (=> d!43585 (=> (not res!78166) (not e!104780))))

(assert (=> d!43585 (= res!78166 (forall!573 tokens!465 lambda!4913))))

(assert (=> d!43585 (= (forallContained!90 tokens!465 lambda!4913 (h!8317 tokens!465)) lt!55136)))

(declare-fun b!172889 () Bool)

(assert (=> b!172889 (= e!104780 (contains!467 tokens!465 (h!8317 tokens!465)))))

(assert (= (and d!43585 res!78166) b!172889))

(declare-fun b_lambda!3963 () Bool)

(assert (=> (not b_lambda!3963) (not d!43585)))

(declare-fun m!170839 () Bool)

(assert (=> d!43585 m!170839))

(declare-fun m!170841 () Bool)

(assert (=> d!43585 m!170841))

(declare-fun m!170843 () Bool)

(assert (=> d!43585 m!170843))

(assert (=> b!172889 m!167281))

(assert (=> b!171518 d!43585))

(declare-fun b!172890 () Bool)

(declare-fun e!104782 () List!2928)

(assert (=> b!172890 (= e!104782 lt!54375)))

(declare-fun e!104781 () Bool)

(declare-fun b!172893 () Bool)

(declare-fun lt!55137 () List!2928)

(assert (=> b!172893 (= e!104781 (or (not (= lt!54375 Nil!2918)) (= lt!55137 (list!1061 (charsOf!178 (h!8317 tokens!465))))))))

(declare-fun d!43587 () Bool)

(assert (=> d!43587 e!104781))

(declare-fun res!78167 () Bool)

(assert (=> d!43587 (=> (not res!78167) (not e!104781))))

(assert (=> d!43587 (= res!78167 (= (content!400 lt!55137) ((_ map or) (content!400 (list!1061 (charsOf!178 (h!8317 tokens!465)))) (content!400 lt!54375))))))

(assert (=> d!43587 (= lt!55137 e!104782)))

(declare-fun c!34238 () Bool)

(assert (=> d!43587 (= c!34238 ((_ is Nil!2918) (list!1061 (charsOf!178 (h!8317 tokens!465)))))))

(assert (=> d!43587 (= (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375) lt!55137)))

(declare-fun b!172892 () Bool)

(declare-fun res!78168 () Bool)

(assert (=> b!172892 (=> (not res!78168) (not e!104781))))

(assert (=> b!172892 (= res!78168 (= (size!2417 lt!55137) (+ (size!2417 (list!1061 (charsOf!178 (h!8317 tokens!465)))) (size!2417 lt!54375))))))

(declare-fun b!172891 () Bool)

(assert (=> b!172891 (= e!104782 (Cons!2918 (h!8315 (list!1061 (charsOf!178 (h!8317 tokens!465)))) (++!670 (t!27130 (list!1061 (charsOf!178 (h!8317 tokens!465)))) lt!54375)))))

(assert (= (and d!43587 c!34238) b!172890))

(assert (= (and d!43587 (not c!34238)) b!172891))

(assert (= (and d!43587 res!78167) b!172892))

(assert (= (and b!172892 res!78168) b!172893))

(declare-fun m!170845 () Bool)

(assert (=> d!43587 m!170845))

(assert (=> d!43587 m!167141))

(declare-fun m!170847 () Bool)

(assert (=> d!43587 m!170847))

(assert (=> d!43587 m!168697))

(declare-fun m!170849 () Bool)

(assert (=> b!172892 m!170849))

(assert (=> b!172892 m!167141))

(declare-fun m!170851 () Bool)

(assert (=> b!172892 m!170851))

(assert (=> b!172892 m!168703))

(declare-fun m!170853 () Bool)

(assert (=> b!172891 m!170853))

(assert (=> b!171518 d!43587))

(assert (=> b!171518 d!42727))

(declare-fun b!172894 () Bool)

(declare-fun e!104783 () Option!320)

(declare-fun lt!55140 () Option!320)

(declare-fun lt!55139 () Option!320)

(assert (=> b!172894 (= e!104783 (ite (and ((_ is None!319) lt!55140) ((_ is None!319) lt!55139)) None!319 (ite ((_ is None!319) lt!55139) lt!55140 (ite ((_ is None!319) lt!55140) lt!55139 (ite (>= (size!2411 (_1!1630 (v!13762 lt!55140))) (size!2411 (_1!1630 (v!13762 lt!55139)))) lt!55140 lt!55139)))))))

(declare-fun call!7638 () Option!320)

(assert (=> b!172894 (= lt!55140 call!7638)))

(assert (=> b!172894 (= lt!55139 (maxPrefix!139 thiss!17480 (t!27131 rules!1920) (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375)))))

(declare-fun b!172895 () Bool)

(assert (=> b!172895 (= e!104783 call!7638)))

(declare-fun b!172896 () Bool)

(declare-fun res!78170 () Bool)

(declare-fun e!104785 () Bool)

(assert (=> b!172896 (=> (not res!78170) (not e!104785))))

(declare-fun lt!55141 () Option!320)

(assert (=> b!172896 (= res!78170 (< (size!2417 (_2!1630 (get!801 lt!55141))) (size!2417 (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375))))))

(declare-fun bm!7633 () Bool)

(assert (=> bm!7633 (= call!7638 (maxPrefixOneRule!73 thiss!17480 (h!8316 rules!1920) (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375)))))

(declare-fun b!172898 () Bool)

(assert (=> b!172898 (= e!104785 (contains!469 rules!1920 (rule!1030 (_1!1630 (get!801 lt!55141)))))))

(declare-fun b!172899 () Bool)

(declare-fun e!104784 () Bool)

(assert (=> b!172899 (= e!104784 e!104785)))

(declare-fun res!78174 () Bool)

(assert (=> b!172899 (=> (not res!78174) (not e!104785))))

(assert (=> b!172899 (= res!78174 (isDefined!171 lt!55141))))

(declare-fun b!172900 () Bool)

(declare-fun res!78172 () Bool)

(assert (=> b!172900 (=> (not res!78172) (not e!104785))))

(assert (=> b!172900 (= res!78172 (= (value!19221 (_1!1630 (get!801 lt!55141))) (apply!424 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!55141)))) (seqFromList!423 (originalCharacters!566 (_1!1630 (get!801 lt!55141)))))))))

(declare-fun b!172897 () Bool)

(declare-fun res!78175 () Bool)

(assert (=> b!172897 (=> (not res!78175) (not e!104785))))

(assert (=> b!172897 (= res!78175 (matchR!85 (regex!523 (rule!1030 (_1!1630 (get!801 lt!55141)))) (list!1061 (charsOf!178 (_1!1630 (get!801 lt!55141))))))))

(declare-fun d!43589 () Bool)

(assert (=> d!43589 e!104784))

(declare-fun res!78171 () Bool)

(assert (=> d!43589 (=> res!78171 e!104784)))

(assert (=> d!43589 (= res!78171 (isEmpty!1257 lt!55141))))

(assert (=> d!43589 (= lt!55141 e!104783)))

(declare-fun c!34239 () Bool)

(assert (=> d!43589 (= c!34239 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!55138 () Unit!2548)

(declare-fun lt!55142 () Unit!2548)

(assert (=> d!43589 (= lt!55138 lt!55142)))

(assert (=> d!43589 (isPrefix!230 (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375) (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375))))

(assert (=> d!43589 (= lt!55142 (lemmaIsPrefixRefl!138 (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375) (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375)))))

(assert (=> d!43589 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!43589 (= (maxPrefix!139 thiss!17480 rules!1920 (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375)) lt!55141)))

(declare-fun b!172901 () Bool)

(declare-fun res!78169 () Bool)

(assert (=> b!172901 (=> (not res!78169) (not e!104785))))

(assert (=> b!172901 (= res!78169 (= (++!670 (list!1061 (charsOf!178 (_1!1630 (get!801 lt!55141)))) (_2!1630 (get!801 lt!55141))) (++!670 (list!1061 (charsOf!178 (h!8317 tokens!465))) lt!54375)))))

(declare-fun b!172902 () Bool)

(declare-fun res!78173 () Bool)

(assert (=> b!172902 (=> (not res!78173) (not e!104785))))

(assert (=> b!172902 (= res!78173 (= (list!1061 (charsOf!178 (_1!1630 (get!801 lt!55141)))) (originalCharacters!566 (_1!1630 (get!801 lt!55141)))))))

(assert (= (and d!43589 c!34239) b!172895))

(assert (= (and d!43589 (not c!34239)) b!172894))

(assert (= (or b!172895 b!172894) bm!7633))

(assert (= (and d!43589 (not res!78171)) b!172899))

(assert (= (and b!172899 res!78174) b!172902))

(assert (= (and b!172902 res!78173) b!172896))

(assert (= (and b!172896 res!78170) b!172901))

(assert (= (and b!172901 res!78169) b!172900))

(assert (= (and b!172900 res!78172) b!172897))

(assert (= (and b!172897 res!78175) b!172898))

(declare-fun m!170869 () Bool)

(assert (=> b!172902 m!170869))

(declare-fun m!170873 () Bool)

(assert (=> b!172902 m!170873))

(assert (=> b!172902 m!170873))

(declare-fun m!170875 () Bool)

(assert (=> b!172902 m!170875))

(assert (=> b!172897 m!170869))

(assert (=> b!172897 m!170873))

(assert (=> b!172897 m!170873))

(assert (=> b!172897 m!170875))

(assert (=> b!172897 m!170875))

(declare-fun m!170881 () Bool)

(assert (=> b!172897 m!170881))

(assert (=> b!172901 m!170869))

(assert (=> b!172901 m!170873))

(assert (=> b!172901 m!170873))

(assert (=> b!172901 m!170875))

(assert (=> b!172901 m!170875))

(declare-fun m!170883 () Bool)

(assert (=> b!172901 m!170883))

(declare-fun m!170885 () Bool)

(assert (=> b!172899 m!170885))

(assert (=> bm!7633 m!167887))

(declare-fun m!170887 () Bool)

(assert (=> bm!7633 m!170887))

(assert (=> b!172900 m!170869))

(declare-fun m!170889 () Bool)

(assert (=> b!172900 m!170889))

(assert (=> b!172900 m!170889))

(declare-fun m!170891 () Bool)

(assert (=> b!172900 m!170891))

(assert (=> b!172896 m!170869))

(declare-fun m!170893 () Bool)

(assert (=> b!172896 m!170893))

(assert (=> b!172896 m!167887))

(declare-fun m!170895 () Bool)

(assert (=> b!172896 m!170895))

(assert (=> b!172898 m!170869))

(declare-fun m!170897 () Bool)

(assert (=> b!172898 m!170897))

(declare-fun m!170901 () Bool)

(assert (=> d!43589 m!170901))

(assert (=> d!43589 m!167887))

(assert (=> d!43589 m!167887))

(declare-fun m!170903 () Bool)

(assert (=> d!43589 m!170903))

(assert (=> d!43589 m!167887))

(assert (=> d!43589 m!167887))

(declare-fun m!170909 () Bool)

(assert (=> d!43589 m!170909))

(assert (=> d!43589 m!167263))

(assert (=> b!172894 m!167887))

(declare-fun m!170915 () Bool)

(assert (=> b!172894 m!170915))

(assert (=> b!171518 d!43589))

(assert (=> b!171518 d!42769))

(assert (=> b!171518 d!42771))

(declare-fun d!43601 () Bool)

(assert (=> d!43601 (= (isEmpty!1252 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))) (not ((_ is Some!320) (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))

(assert (=> d!42677 d!43601))

(declare-fun d!43611 () Bool)

(declare-fun e!104792 () Bool)

(assert (=> d!43611 e!104792))

(declare-fun res!78182 () Bool)

(assert (=> d!43611 (=> (not res!78182) (not e!104792))))

(declare-fun lt!55148 () BalanceConc!1746)

(assert (=> d!43611 (= res!78182 (= (list!1064 lt!55148) (t!27132 tokens!465)))))

(assert (=> d!43611 (= lt!55148 (BalanceConc!1747 (fromList!109 (t!27132 tokens!465))))))

(assert (=> d!43611 (= (fromListB!168 (t!27132 tokens!465)) lt!55148)))

(declare-fun b!172913 () Bool)

(assert (=> b!172913 (= e!104792 (isBalanced!240 (fromList!109 (t!27132 tokens!465))))))

(assert (= (and d!43611 res!78182) b!172913))

(declare-fun m!170939 () Bool)

(assert (=> d!43611 m!170939))

(declare-fun m!170941 () Bool)

(assert (=> d!43611 m!170941))

(assert (=> b!172913 m!170941))

(assert (=> b!172913 m!170941))

(declare-fun m!170943 () Bool)

(assert (=> b!172913 m!170943))

(assert (=> d!42721 d!43611))

(declare-fun d!43617 () Bool)

(declare-fun lt!55150 () Int)

(assert (=> d!43617 (= lt!55150 (size!2418 (list!1064 (_1!1629 lt!54176))))))

(assert (=> d!43617 (= lt!55150 (size!2419 (c!33818 (_1!1629 lt!54176))))))

(assert (=> d!43617 (= (size!2416 (_1!1629 lt!54176)) lt!55150)))

(declare-fun bs!16956 () Bool)

(assert (= bs!16956 d!43617))

(assert (=> bs!16956 m!167311))

(assert (=> bs!16956 m!167311))

(declare-fun m!170945 () Bool)

(assert (=> bs!16956 m!170945))

(declare-fun m!170947 () Bool)

(assert (=> bs!16956 m!170947))

(assert (=> d!42705 d!43617))

(declare-fun lt!55317 () tuple2!2826)

(declare-fun e!104821 () Bool)

(declare-fun b!172959 () Bool)

(declare-fun lexRec!66 (LexerInterface!409 List!2929 BalanceConc!1744) tuple2!2826)

(assert (=> b!172959 (= e!104821 (= (list!1061 (_2!1629 lt!55317)) (list!1061 (_2!1629 (lexRec!66 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))))))

(declare-fun b!172961 () Bool)

(declare-fun lt!55302 () tuple2!2826)

(declare-fun lt!55296 () Option!321)

(assert (=> b!172961 (= lt!55302 (lexRec!66 thiss!17480 rules!1920 (_2!1631 (v!13763 lt!55296))))))

(declare-fun e!104820 () tuple2!2826)

(declare-fun prepend!149 (BalanceConc!1746 Token!790) BalanceConc!1746)

(assert (=> b!172961 (= e!104820 (tuple2!2827 (prepend!149 (_1!1629 lt!55302) (_1!1631 (v!13763 lt!55296))) (_2!1629 lt!55302)))))

(declare-fun lt!55303 () tuple2!2826)

(declare-fun lt!55318 () Option!321)

(declare-fun b!172962 () Bool)

(assert (=> b!172962 (= lt!55303 (lexRec!66 thiss!17480 rules!1920 (_2!1631 (v!13763 lt!55318))))))

(declare-fun e!104818 () tuple2!2826)

(assert (=> b!172962 (= e!104818 (tuple2!2827 (prepend!149 (_1!1629 lt!55303) (_1!1631 (v!13763 lt!55318))) (_2!1629 lt!55303)))))

(declare-fun b!172963 () Bool)

(declare-fun e!104819 () tuple2!2826)

(assert (=> b!172963 (= e!104819 (tuple2!2827 (BalanceConc!1747 Empty!869) (seqFromList!423 lt!54115)))))

(declare-fun d!43619 () Bool)

(assert (=> d!43619 e!104821))

(declare-fun res!78191 () Bool)

(assert (=> d!43619 (=> (not res!78191) (not e!104821))))

(assert (=> d!43619 (= res!78191 (= (list!1064 (_1!1629 lt!55317)) (list!1064 (_1!1629 (lexRec!66 thiss!17480 rules!1920 (seqFromList!423 lt!54115))))))))

(assert (=> d!43619 (= lt!55317 e!104819)))

(declare-fun c!34258 () Bool)

(declare-fun lt!55304 () Option!321)

(assert (=> d!43619 (= c!34258 ((_ is Some!320) lt!55304))))

(declare-fun maxPrefixZipperSequenceV2!51 (LexerInterface!409 List!2929 BalanceConc!1744 BalanceConc!1744) Option!321)

(assert (=> d!43619 (= lt!55304 (maxPrefixZipperSequenceV2!51 thiss!17480 rules!1920 (seqFromList!423 lt!54115) (seqFromList!423 lt!54115)))))

(declare-fun lt!55322 () Unit!2548)

(declare-fun lt!55307 () Unit!2548)

(assert (=> d!43619 (= lt!55322 lt!55307)))

(declare-fun lt!55301 () List!2928)

(declare-fun lt!55325 () List!2928)

(declare-fun isSuffix!51 (List!2928 List!2928) Bool)

(assert (=> d!43619 (isSuffix!51 lt!55301 (++!670 lt!55325 lt!55301))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!51 (List!2928 List!2928) Unit!2548)

(assert (=> d!43619 (= lt!55307 (lemmaConcatTwoListThenFSndIsSuffix!51 lt!55325 lt!55301))))

(assert (=> d!43619 (= lt!55301 (list!1061 (seqFromList!423 lt!54115)))))

(assert (=> d!43619 (= lt!55325 (list!1061 (BalanceConc!1745 Empty!868)))))

(assert (=> d!43619 (= (lexTailRecV2!102 thiss!17480 rules!1920 (seqFromList!423 lt!54115) (BalanceConc!1745 Empty!868) (seqFromList!423 lt!54115) (BalanceConc!1747 Empty!869)) lt!55317)))

(declare-fun b!172960 () Bool)

(assert (=> b!172960 (= e!104820 (tuple2!2827 (BalanceConc!1747 Empty!869) (seqFromList!423 lt!54115)))))

(declare-fun lt!55319 () BalanceConc!1744)

(declare-fun b!172964 () Bool)

(declare-fun append!71 (BalanceConc!1746 Token!790) BalanceConc!1746)

(assert (=> b!172964 (= e!104819 (lexTailRecV2!102 thiss!17480 rules!1920 (seqFromList!423 lt!54115) lt!55319 (_2!1631 (v!13763 lt!55304)) (append!71 (BalanceConc!1747 Empty!869) (_1!1631 (v!13763 lt!55304)))))))

(declare-fun lt!55328 () tuple2!2826)

(assert (=> b!172964 (= lt!55328 (lexRec!66 thiss!17480 rules!1920 (_2!1631 (v!13763 lt!55304))))))

(declare-fun lt!55316 () List!2928)

(assert (=> b!172964 (= lt!55316 (list!1061 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!55321 () List!2928)

(assert (=> b!172964 (= lt!55321 (list!1061 (charsOf!178 (_1!1631 (v!13763 lt!55304)))))))

(declare-fun lt!55298 () List!2928)

(assert (=> b!172964 (= lt!55298 (list!1061 (_2!1631 (v!13763 lt!55304))))))

(declare-fun lt!55299 () Unit!2548)

(assert (=> b!172964 (= lt!55299 (lemmaConcatAssociativity!208 lt!55316 lt!55321 lt!55298))))

(assert (=> b!172964 (= (++!670 (++!670 lt!55316 lt!55321) lt!55298) (++!670 lt!55316 (++!670 lt!55321 lt!55298)))))

(declare-fun lt!55320 () Unit!2548)

(assert (=> b!172964 (= lt!55320 lt!55299)))

(assert (=> b!172964 (= lt!55296 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (seqFromList!423 lt!54115)))))

(declare-fun c!34259 () Bool)

(assert (=> b!172964 (= c!34259 ((_ is Some!320) lt!55296))))

(assert (=> b!172964 (= (lexRec!66 thiss!17480 rules!1920 (seqFromList!423 lt!54115)) e!104820)))

(declare-fun lt!55314 () Unit!2548)

(declare-fun Unit!2598 () Unit!2548)

(assert (=> b!172964 (= lt!55314 Unit!2598)))

(declare-fun lt!55329 () List!2930)

(assert (=> b!172964 (= lt!55329 (list!1064 (BalanceConc!1747 Empty!869)))))

(declare-fun lt!55326 () List!2930)

(assert (=> b!172964 (= lt!55326 (Cons!2920 (_1!1631 (v!13763 lt!55304)) Nil!2920))))

(declare-fun lt!55311 () List!2930)

(assert (=> b!172964 (= lt!55311 (list!1064 (_1!1629 lt!55328)))))

(declare-fun lt!55305 () Unit!2548)

(declare-fun lemmaConcatAssociativity!210 (List!2930 List!2930 List!2930) Unit!2548)

(assert (=> b!172964 (= lt!55305 (lemmaConcatAssociativity!210 lt!55329 lt!55326 lt!55311))))

(declare-fun ++!676 (List!2930 List!2930) List!2930)

(assert (=> b!172964 (= (++!676 (++!676 lt!55329 lt!55326) lt!55311) (++!676 lt!55329 (++!676 lt!55326 lt!55311)))))

(declare-fun lt!55323 () Unit!2548)

(assert (=> b!172964 (= lt!55323 lt!55305)))

(declare-fun lt!55308 () List!2928)

(assert (=> b!172964 (= lt!55308 (++!670 (list!1061 (BalanceConc!1745 Empty!868)) (list!1061 (charsOf!178 (_1!1631 (v!13763 lt!55304))))))))

(declare-fun lt!55312 () List!2928)

(assert (=> b!172964 (= lt!55312 (list!1061 (_2!1631 (v!13763 lt!55304))))))

(declare-fun lt!55306 () List!2930)

(assert (=> b!172964 (= lt!55306 (list!1064 (append!71 (BalanceConc!1747 Empty!869) (_1!1631 (v!13763 lt!55304)))))))

(declare-fun lt!55324 () Unit!2548)

(declare-fun lemmaLexThenLexPrefix!53 (LexerInterface!409 List!2929 List!2928 List!2928 List!2930 List!2930 List!2928) Unit!2548)

(assert (=> b!172964 (= lt!55324 (lemmaLexThenLexPrefix!53 thiss!17480 rules!1920 lt!55308 lt!55312 lt!55306 (list!1064 (_1!1629 lt!55328)) (list!1061 (_2!1629 lt!55328))))))

(assert (=> b!172964 (= (lexList!115 thiss!17480 rules!1920 lt!55308) (tuple2!2835 lt!55306 Nil!2918))))

(declare-fun lt!55297 () Unit!2548)

(assert (=> b!172964 (= lt!55297 lt!55324)))

(declare-fun lt!55300 () BalanceConc!1744)

(assert (=> b!172964 (= lt!55300 (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (_1!1631 (v!13763 lt!55304)))))))

(assert (=> b!172964 (= lt!55318 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 lt!55300))))

(declare-fun c!34260 () Bool)

(assert (=> b!172964 (= c!34260 ((_ is Some!320) lt!55318))))

(assert (=> b!172964 (= (lexRec!66 thiss!17480 rules!1920 (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (_1!1631 (v!13763 lt!55304))))) e!104818)))

(declare-fun lt!55327 () Unit!2548)

(declare-fun Unit!2599 () Unit!2548)

(assert (=> b!172964 (= lt!55327 Unit!2599)))

(assert (=> b!172964 (= lt!55319 (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (_1!1631 (v!13763 lt!55304)))))))

(declare-fun lt!55313 () List!2928)

(assert (=> b!172964 (= lt!55313 (list!1061 lt!55319))))

(declare-fun lt!55310 () List!2928)

(assert (=> b!172964 (= lt!55310 (list!1061 (_2!1631 (v!13763 lt!55304))))))

(declare-fun lt!55315 () Unit!2548)

(assert (=> b!172964 (= lt!55315 (lemmaConcatTwoListThenFSndIsSuffix!51 lt!55313 lt!55310))))

(assert (=> b!172964 (isSuffix!51 lt!55310 (++!670 lt!55313 lt!55310))))

(declare-fun lt!55309 () Unit!2548)

(assert (=> b!172964 (= lt!55309 lt!55315)))

(declare-fun b!172965 () Bool)

(assert (=> b!172965 (= e!104818 (tuple2!2827 (BalanceConc!1747 Empty!869) lt!55300))))

(assert (= (and d!43619 c!34258) b!172964))

(assert (= (and d!43619 (not c!34258)) b!172963))

(assert (= (and b!172964 c!34259) b!172961))

(assert (= (and b!172964 (not c!34259)) b!172960))

(assert (= (and b!172964 c!34260) b!172962))

(assert (= (and b!172964 (not c!34260)) b!172965))

(assert (= (and d!43619 res!78191) b!172959))

(declare-fun m!171017 () Bool)

(assert (=> b!172964 m!171017))

(declare-fun m!171019 () Bool)

(assert (=> b!172964 m!171019))

(declare-fun m!171021 () Bool)

(assert (=> b!172964 m!171021))

(declare-fun m!171023 () Bool)

(assert (=> b!172964 m!171023))

(declare-fun m!171025 () Bool)

(assert (=> b!172964 m!171025))

(declare-fun m!171027 () Bool)

(assert (=> b!172964 m!171027))

(declare-fun m!171029 () Bool)

(assert (=> b!172964 m!171029))

(assert (=> b!172964 m!167159))

(declare-fun m!171031 () Bool)

(assert (=> b!172964 m!171031))

(declare-fun m!171033 () Bool)

(assert (=> b!172964 m!171033))

(declare-fun m!171035 () Bool)

(assert (=> b!172964 m!171035))

(declare-fun m!171037 () Bool)

(assert (=> b!172964 m!171037))

(declare-fun m!171039 () Bool)

(assert (=> b!172964 m!171039))

(declare-fun m!171041 () Bool)

(assert (=> b!172964 m!171041))

(declare-fun m!171043 () Bool)

(assert (=> b!172964 m!171043))

(declare-fun m!171045 () Bool)

(assert (=> b!172964 m!171045))

(declare-fun m!171047 () Bool)

(assert (=> b!172964 m!171047))

(declare-fun m!171049 () Bool)

(assert (=> b!172964 m!171049))

(declare-fun m!171051 () Bool)

(assert (=> b!172964 m!171051))

(assert (=> b!172964 m!171049))

(declare-fun m!171053 () Bool)

(assert (=> b!172964 m!171053))

(assert (=> b!172964 m!171017))

(declare-fun m!171055 () Bool)

(assert (=> b!172964 m!171055))

(assert (=> b!172964 m!171039))

(declare-fun m!171057 () Bool)

(assert (=> b!172964 m!171057))

(declare-fun m!171059 () Bool)

(assert (=> b!172964 m!171059))

(assert (=> b!172964 m!171027))

(assert (=> b!172964 m!171059))

(assert (=> b!172964 m!171043))

(declare-fun m!171061 () Bool)

(assert (=> b!172964 m!171061))

(assert (=> b!172964 m!171025))

(declare-fun m!171063 () Bool)

(assert (=> b!172964 m!171063))

(assert (=> b!172964 m!167159))

(assert (=> b!172964 m!171035))

(declare-fun m!171065 () Bool)

(assert (=> b!172964 m!171065))

(assert (=> b!172964 m!171059))

(declare-fun m!171067 () Bool)

(assert (=> b!172964 m!171067))

(assert (=> b!172964 m!171035))

(declare-fun m!171069 () Bool)

(assert (=> b!172964 m!171069))

(assert (=> b!172964 m!167159))

(declare-fun m!171071 () Bool)

(assert (=> b!172964 m!171071))

(declare-fun m!171073 () Bool)

(assert (=> b!172964 m!171073))

(assert (=> b!172964 m!167907))

(assert (=> b!172964 m!171061))

(declare-fun m!171075 () Bool)

(assert (=> b!172964 m!171075))

(assert (=> b!172964 m!171021))

(assert (=> b!172964 m!167907))

(assert (=> b!172964 m!171067))

(declare-fun m!171077 () Bool)

(assert (=> b!172964 m!171077))

(declare-fun m!171079 () Bool)

(assert (=> b!172964 m!171079))

(declare-fun m!171081 () Bool)

(assert (=> b!172962 m!171081))

(declare-fun m!171083 () Bool)

(assert (=> b!172962 m!171083))

(declare-fun m!171085 () Bool)

(assert (=> b!172961 m!171085))

(declare-fun m!171087 () Bool)

(assert (=> b!172961 m!171087))

(declare-fun m!171089 () Bool)

(assert (=> b!172959 m!171089))

(assert (=> b!172959 m!167159))

(assert (=> b!172959 m!171031))

(declare-fun m!171091 () Bool)

(assert (=> b!172959 m!171091))

(declare-fun m!171093 () Bool)

(assert (=> d!43619 m!171093))

(declare-fun m!171095 () Bool)

(assert (=> d!43619 m!171095))

(assert (=> d!43619 m!167159))

(assert (=> d!43619 m!167313))

(declare-fun m!171097 () Bool)

(assert (=> d!43619 m!171097))

(assert (=> d!43619 m!167159))

(assert (=> d!43619 m!167159))

(declare-fun m!171099 () Bool)

(assert (=> d!43619 m!171099))

(assert (=> d!43619 m!167159))

(assert (=> d!43619 m!171031))

(declare-fun m!171101 () Bool)

(assert (=> d!43619 m!171101))

(assert (=> d!43619 m!167907))

(assert (=> d!43619 m!171101))

(declare-fun m!171103 () Bool)

(assert (=> d!43619 m!171103))

(assert (=> d!42705 d!43619))

(assert (=> b!171142 d!42903))

(declare-fun b!172968 () Bool)

(declare-fun res!78194 () Bool)

(declare-fun e!104822 () Bool)

(assert (=> b!172968 (=> (not res!78194) (not e!104822))))

(assert (=> b!172968 (= res!78194 (>= (height!94 (++!674 (c!33816 call!7511) (c!33816 lt!54311))) (max!0 (height!94 (c!33816 call!7511)) (height!94 (c!33816 lt!54311)))))))

(declare-fun b!172966 () Bool)

(declare-fun res!78195 () Bool)

(assert (=> b!172966 (=> (not res!78195) (not e!104822))))

(assert (=> b!172966 (= res!78195 (isBalanced!241 (++!674 (c!33816 call!7511) (c!33816 lt!54311))))))

(declare-fun b!172969 () Bool)

(declare-fun lt!55330 () BalanceConc!1744)

(assert (=> b!172969 (= e!104822 (= (list!1061 lt!55330) (++!670 (list!1061 call!7511) (list!1061 lt!54311))))))

(declare-fun b!172967 () Bool)

(declare-fun res!78193 () Bool)

(assert (=> b!172967 (=> (not res!78193) (not e!104822))))

(assert (=> b!172967 (= res!78193 (<= (height!94 (++!674 (c!33816 call!7511) (c!33816 lt!54311))) (+ (max!0 (height!94 (c!33816 call!7511)) (height!94 (c!33816 lt!54311))) 1)))))

(declare-fun d!43637 () Bool)

(assert (=> d!43637 e!104822))

(declare-fun res!78192 () Bool)

(assert (=> d!43637 (=> (not res!78192) (not e!104822))))

(assert (=> d!43637 (= res!78192 (appendAssocInst!31 (c!33816 call!7511) (c!33816 lt!54311)))))

(assert (=> d!43637 (= lt!55330 (BalanceConc!1745 (++!674 (c!33816 call!7511) (c!33816 lt!54311))))))

(assert (=> d!43637 (= (++!672 call!7511 lt!54311) lt!55330)))

(assert (= (and d!43637 res!78192) b!172966))

(assert (= (and b!172966 res!78195) b!172967))

(assert (= (and b!172967 res!78193) b!172968))

(assert (= (and b!172968 res!78194) b!172969))

(declare-fun m!171105 () Bool)

(assert (=> b!172969 m!171105))

(declare-fun m!171107 () Bool)

(assert (=> b!172969 m!171107))

(assert (=> b!172969 m!167635))

(assert (=> b!172969 m!171107))

(assert (=> b!172969 m!167635))

(declare-fun m!171109 () Bool)

(assert (=> b!172969 m!171109))

(declare-fun m!171111 () Bool)

(assert (=> b!172966 m!171111))

(assert (=> b!172966 m!171111))

(declare-fun m!171113 () Bool)

(assert (=> b!172966 m!171113))

(assert (=> b!172967 m!171111))

(declare-fun m!171115 () Bool)

(assert (=> b!172967 m!171115))

(assert (=> b!172967 m!171111))

(declare-fun m!171117 () Bool)

(assert (=> b!172967 m!171117))

(assert (=> b!172967 m!170641))

(assert (=> b!172967 m!171117))

(assert (=> b!172967 m!170641))

(declare-fun m!171119 () Bool)

(assert (=> b!172967 m!171119))

(assert (=> b!172968 m!171111))

(assert (=> b!172968 m!171115))

(assert (=> b!172968 m!171111))

(assert (=> b!172968 m!171117))

(assert (=> b!172968 m!170641))

(assert (=> b!172968 m!171117))

(assert (=> b!172968 m!170641))

(assert (=> b!172968 m!171119))

(declare-fun m!171121 () Bool)

(assert (=> d!43637 m!171121))

(assert (=> d!43637 m!171111))

(assert (=> b!171390 d!43637))

(declare-fun bm!7639 () Bool)

(declare-fun call!7644 () Bool)

(declare-fun call!7645 () Bool)

(assert (=> bm!7639 (= call!7644 call!7645)))

(declare-fun b!172977 () Bool)

(declare-fun e!104830 () Bool)

(declare-fun e!104827 () Bool)

(assert (=> b!172977 (= e!104830 e!104827)))

(declare-fun c!34265 () Bool)

(assert (=> b!172977 (= c!34265 ((_ is Union!747) (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))

(declare-fun b!172978 () Bool)

(declare-fun e!104829 () Bool)

(declare-fun call!7646 () Bool)

(assert (=> b!172978 (= e!104829 call!7646)))

(declare-fun b!172979 () Bool)

(declare-fun e!104833 () Bool)

(assert (=> b!172979 (= e!104830 e!104833)))

(declare-fun res!78199 () Bool)

(assert (=> b!172979 (= res!78199 (not (nullable!108 (reg!1076 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))))

(assert (=> b!172979 (=> (not res!78199) (not e!104833))))

(declare-fun b!172980 () Bool)

(declare-fun e!104831 () Bool)

(assert (=> b!172980 (= e!104831 e!104830)))

(declare-fun c!34264 () Bool)

(assert (=> b!172980 (= c!34264 ((_ is Star!747) (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))

(declare-fun d!43639 () Bool)

(declare-fun res!78200 () Bool)

(assert (=> d!43639 (=> res!78200 e!104831)))

(assert (=> d!43639 (= res!78200 ((_ is ElementMatch!747) (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))

(assert (=> d!43639 (= (validRegex!181 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))) e!104831)))

(declare-fun b!172981 () Bool)

(assert (=> b!172981 (= e!104833 call!7645)))

(declare-fun b!172982 () Bool)

(declare-fun res!78198 () Bool)

(declare-fun e!104832 () Bool)

(assert (=> b!172982 (=> res!78198 e!104832)))

(assert (=> b!172982 (= res!78198 (not ((_ is Concat!1293) (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))))

(assert (=> b!172982 (= e!104827 e!104832)))

(declare-fun bm!7640 () Bool)

(assert (=> bm!7640 (= call!7646 (validRegex!181 (ite c!34265 (regTwo!2007 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))) (regOne!2006 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))))

(declare-fun b!172983 () Bool)

(declare-fun res!78197 () Bool)

(assert (=> b!172983 (=> (not res!78197) (not e!104829))))

(assert (=> b!172983 (= res!78197 call!7644)))

(assert (=> b!172983 (= e!104827 e!104829)))

(declare-fun b!172984 () Bool)

(declare-fun e!104828 () Bool)

(assert (=> b!172984 (= e!104828 call!7644)))

(declare-fun b!172985 () Bool)

(assert (=> b!172985 (= e!104832 e!104828)))

(declare-fun res!78201 () Bool)

(assert (=> b!172985 (=> (not res!78201) (not e!104828))))

(assert (=> b!172985 (= res!78201 call!7646)))

(declare-fun bm!7641 () Bool)

(assert (=> bm!7641 (= call!7645 (validRegex!181 (ite c!34264 (reg!1076 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))) (ite c!34265 (regOne!2007 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))) (regTwo!2006 (ite c!33954 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))) (ite c!33955 (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))))))

(assert (= (and d!43639 (not res!78200)) b!172980))

(assert (= (and b!172980 c!34264) b!172979))

(assert (= (and b!172980 (not c!34264)) b!172977))

(assert (= (and b!172979 res!78199) b!172981))

(assert (= (and b!172977 c!34265) b!172983))

(assert (= (and b!172977 (not c!34265)) b!172982))

(assert (= (and b!172983 res!78197) b!172978))

(assert (= (and b!172982 (not res!78198)) b!172985))

(assert (= (and b!172985 res!78201) b!172984))

(assert (= (or b!172983 b!172984) bm!7639))

(assert (= (or b!172978 b!172985) bm!7640))

(assert (= (or b!172981 bm!7639) bm!7641))

(declare-fun m!171123 () Bool)

(assert (=> b!172979 m!171123))

(declare-fun m!171125 () Bool)

(assert (=> bm!7640 m!171125))

(declare-fun m!171127 () Bool)

(assert (=> bm!7641 m!171127))

(assert (=> bm!7556 d!43639))

(declare-fun d!43641 () Bool)

(assert (=> d!43641 (= (inv!3740 (tag!701 (h!8316 (t!27131 rules!1920)))) (= (mod (str.len (value!19220 (tag!701 (h!8316 (t!27131 rules!1920))))) 2) 0))))

(assert (=> b!171790 d!43641))

(declare-fun d!43643 () Bool)

(declare-fun res!78202 () Bool)

(declare-fun e!104834 () Bool)

(assert (=> d!43643 (=> (not res!78202) (not e!104834))))

(assert (=> d!43643 (= res!78202 (semiInverseModEq!181 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))))))

(assert (=> d!43643 (= (inv!3744 (transformation!523 (h!8316 (t!27131 rules!1920)))) e!104834)))

(declare-fun b!172986 () Bool)

(assert (=> b!172986 (= e!104834 (equivClasses!164 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))))))

(assert (= (and d!43643 res!78202) b!172986))

(declare-fun m!171129 () Bool)

(assert (=> d!43643 m!171129))

(declare-fun m!171131 () Bool)

(assert (=> b!172986 m!171131))

(assert (=> b!171790 d!43643))

(declare-fun e!104836 () List!2928)

(declare-fun b!172987 () Bool)

(assert (=> b!172987 (= e!104836 (ite c!33925 lt!54375 call!7538))))

(declare-fun e!104835 () Bool)

(declare-fun b!172990 () Bool)

(declare-fun lt!55365 () List!2928)

(assert (=> b!172990 (= e!104835 (or (not (= (ite c!33925 lt!54375 call!7538) Nil!2918)) (= lt!55365 e!103934)))))

(declare-fun d!43645 () Bool)

(assert (=> d!43645 e!104835))

(declare-fun res!78203 () Bool)

(assert (=> d!43645 (=> (not res!78203) (not e!104835))))

(assert (=> d!43645 (= res!78203 (= (content!400 lt!55365) ((_ map or) (content!400 e!103934) (content!400 (ite c!33925 lt!54375 call!7538)))))))

(assert (=> d!43645 (= lt!55365 e!104836)))

(declare-fun c!34266 () Bool)

(assert (=> d!43645 (= c!34266 ((_ is Nil!2918) e!103934))))

(assert (=> d!43645 (= (++!670 e!103934 (ite c!33925 lt!54375 call!7538)) lt!55365)))

(declare-fun b!172989 () Bool)

(declare-fun res!78204 () Bool)

(assert (=> b!172989 (=> (not res!78204) (not e!104835))))

(assert (=> b!172989 (= res!78204 (= (size!2417 lt!55365) (+ (size!2417 e!103934) (size!2417 (ite c!33925 lt!54375 call!7538)))))))

(declare-fun b!172988 () Bool)

(assert (=> b!172988 (= e!104836 (Cons!2918 (h!8315 e!103934) (++!670 (t!27130 e!103934) (ite c!33925 lt!54375 call!7538))))))

(assert (= (and d!43645 c!34266) b!172987))

(assert (= (and d!43645 (not c!34266)) b!172988))

(assert (= (and d!43645 res!78203) b!172989))

(assert (= (and b!172989 res!78204) b!172990))

(declare-fun m!171145 () Bool)

(assert (=> d!43645 m!171145))

(declare-fun m!171147 () Bool)

(assert (=> d!43645 m!171147))

(declare-fun m!171149 () Bool)

(assert (=> d!43645 m!171149))

(declare-fun m!171151 () Bool)

(assert (=> b!172989 m!171151))

(declare-fun m!171153 () Bool)

(assert (=> b!172989 m!171153))

(declare-fun m!171155 () Bool)

(assert (=> b!172989 m!171155))

(declare-fun m!171159 () Bool)

(assert (=> b!172988 m!171159))

(assert (=> bm!7531 d!43645))

(declare-fun b!172993 () Bool)

(declare-fun res!78207 () Bool)

(declare-fun e!104837 () Bool)

(assert (=> b!172993 (=> (not res!78207) (not e!104837))))

(assert (=> b!172993 (= res!78207 (>= (height!94 (++!674 (c!33816 call!7531) (c!33816 lt!54362))) (max!0 (height!94 (c!33816 call!7531)) (height!94 (c!33816 lt!54362)))))))

(declare-fun b!172991 () Bool)

(declare-fun res!78208 () Bool)

(assert (=> b!172991 (=> (not res!78208) (not e!104837))))

(assert (=> b!172991 (= res!78208 (isBalanced!241 (++!674 (c!33816 call!7531) (c!33816 lt!54362))))))

(declare-fun b!172994 () Bool)

(declare-fun lt!55366 () BalanceConc!1744)

(assert (=> b!172994 (= e!104837 (= (list!1061 lt!55366) (++!670 (list!1061 call!7531) (list!1061 lt!54362))))))

(declare-fun b!172992 () Bool)

(declare-fun res!78206 () Bool)

(assert (=> b!172992 (=> (not res!78206) (not e!104837))))

(assert (=> b!172992 (= res!78206 (<= (height!94 (++!674 (c!33816 call!7531) (c!33816 lt!54362))) (+ (max!0 (height!94 (c!33816 call!7531)) (height!94 (c!33816 lt!54362))) 1)))))

(declare-fun d!43647 () Bool)

(assert (=> d!43647 e!104837))

(declare-fun res!78205 () Bool)

(assert (=> d!43647 (=> (not res!78205) (not e!104837))))

(assert (=> d!43647 (= res!78205 (appendAssocInst!31 (c!33816 call!7531) (c!33816 lt!54362)))))

(assert (=> d!43647 (= lt!55366 (BalanceConc!1745 (++!674 (c!33816 call!7531) (c!33816 lt!54362))))))

(assert (=> d!43647 (= (++!672 call!7531 lt!54362) lt!55366)))

(assert (= (and d!43647 res!78205) b!172991))

(assert (= (and b!172991 res!78208) b!172992))

(assert (= (and b!172992 res!78206) b!172993))

(assert (= (and b!172993 res!78207) b!172994))

(declare-fun m!171207 () Bool)

(assert (=> b!172994 m!171207))

(declare-fun m!171211 () Bool)

(assert (=> b!172994 m!171211))

(assert (=> b!172994 m!167849))

(assert (=> b!172994 m!171211))

(assert (=> b!172994 m!167849))

(declare-fun m!171215 () Bool)

(assert (=> b!172994 m!171215))

(declare-fun m!171219 () Bool)

(assert (=> b!172991 m!171219))

(assert (=> b!172991 m!171219))

(declare-fun m!171223 () Bool)

(assert (=> b!172991 m!171223))

(assert (=> b!172992 m!171219))

(declare-fun m!171227 () Bool)

(assert (=> b!172992 m!171227))

(assert (=> b!172992 m!171219))

(declare-fun m!171229 () Bool)

(assert (=> b!172992 m!171229))

(declare-fun m!171231 () Bool)

(assert (=> b!172992 m!171231))

(assert (=> b!172992 m!171229))

(assert (=> b!172992 m!171231))

(declare-fun m!171237 () Bool)

(assert (=> b!172992 m!171237))

(assert (=> b!172993 m!171219))

(assert (=> b!172993 m!171227))

(assert (=> b!172993 m!171219))

(assert (=> b!172993 m!171229))

(assert (=> b!172993 m!171231))

(assert (=> b!172993 m!171229))

(assert (=> b!172993 m!171231))

(assert (=> b!172993 m!171237))

(declare-fun m!171247 () Bool)

(assert (=> d!43647 m!171247))

(assert (=> d!43647 m!171219))

(assert (=> b!171507 d!43647))

(declare-fun bm!7642 () Bool)

(declare-fun call!7647 () Bool)

(declare-fun call!7648 () Bool)

(assert (=> bm!7642 (= call!7647 call!7648)))

(declare-fun b!172995 () Bool)

(declare-fun e!104841 () Bool)

(declare-fun e!104838 () Bool)

(assert (=> b!172995 (= e!104841 e!104838)))

(declare-fun c!34268 () Bool)

(assert (=> b!172995 (= c!34268 ((_ is Union!747) (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))

(declare-fun b!172996 () Bool)

(declare-fun e!104840 () Bool)

(declare-fun call!7649 () Bool)

(assert (=> b!172996 (= e!104840 call!7649)))

(declare-fun b!172997 () Bool)

(declare-fun e!104844 () Bool)

(assert (=> b!172997 (= e!104841 e!104844)))

(declare-fun res!78211 () Bool)

(assert (=> b!172997 (= res!78211 (not (nullable!108 (reg!1076 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))))

(assert (=> b!172997 (=> (not res!78211) (not e!104844))))

(declare-fun b!172998 () Bool)

(declare-fun e!104842 () Bool)

(assert (=> b!172998 (= e!104842 e!104841)))

(declare-fun c!34267 () Bool)

(assert (=> b!172998 (= c!34267 ((_ is Star!747) (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))

(declare-fun d!43649 () Bool)

(declare-fun res!78212 () Bool)

(assert (=> d!43649 (=> res!78212 e!104842)))

(assert (=> d!43649 (= res!78212 ((_ is ElementMatch!747) (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))

(assert (=> d!43649 (= (validRegex!181 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) e!104842)))

(declare-fun b!172999 () Bool)

(assert (=> b!172999 (= e!104844 call!7648)))

(declare-fun b!173000 () Bool)

(declare-fun res!78210 () Bool)

(declare-fun e!104843 () Bool)

(assert (=> b!173000 (=> res!78210 e!104843)))

(assert (=> b!173000 (= res!78210 (not ((_ is Concat!1293) (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))

(assert (=> b!173000 (= e!104838 e!104843)))

(declare-fun bm!7643 () Bool)

(assert (=> bm!7643 (= call!7649 (validRegex!181 (ite c!34268 (regTwo!2007 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) (regOne!2006 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))))))))

(declare-fun b!173001 () Bool)

(declare-fun res!78209 () Bool)

(assert (=> b!173001 (=> (not res!78209) (not e!104840))))

(assert (=> b!173001 (= res!78209 call!7647)))

(assert (=> b!173001 (= e!104838 e!104840)))

(declare-fun b!173002 () Bool)

(declare-fun e!104839 () Bool)

(assert (=> b!173002 (= e!104839 call!7647)))

(declare-fun b!173003 () Bool)

(assert (=> b!173003 (= e!104843 e!104839)))

(declare-fun res!78213 () Bool)

(assert (=> b!173003 (=> (not res!78213) (not e!104839))))

(assert (=> b!173003 (= res!78213 call!7649)))

(declare-fun bm!7644 () Bool)

(assert (=> bm!7644 (= call!7648 (validRegex!181 (ite c!34267 (reg!1076 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) (ite c!34268 (regOne!2007 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) (regTwo!2006 (ite c!33955 (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465))))))))))))

(assert (= (and d!43649 (not res!78212)) b!172998))

(assert (= (and b!172998 c!34267) b!172997))

(assert (= (and b!172998 (not c!34267)) b!172995))

(assert (= (and b!172997 res!78211) b!172999))

(assert (= (and b!172995 c!34268) b!173001))

(assert (= (and b!172995 (not c!34268)) b!173000))

(assert (= (and b!173001 res!78209) b!172996))

(assert (= (and b!173000 (not res!78210)) b!173003))

(assert (= (and b!173003 res!78213) b!173002))

(assert (= (or b!173001 b!173002) bm!7642))

(assert (= (or b!172996 b!173003) bm!7643))

(assert (= (or b!172999 bm!7642) bm!7644))

(declare-fun m!171257 () Bool)

(assert (=> b!172997 m!171257))

(declare-fun m!171261 () Bool)

(assert (=> bm!7643 m!171261))

(declare-fun m!171263 () Bool)

(assert (=> bm!7644 m!171263))

(assert (=> bm!7555 d!43649))

(declare-fun d!43657 () Bool)

(declare-fun c!34271 () Bool)

(assert (=> d!43657 (= c!34271 ((_ is Nil!2918) lt!54189))))

(declare-fun e!104849 () (InoxSet C!2416))

(assert (=> d!43657 (= (content!400 lt!54189) e!104849)))

(declare-fun b!173010 () Bool)

(assert (=> b!173010 (= e!104849 ((as const (Array C!2416 Bool)) false))))

(declare-fun b!173011 () Bool)

(assert (=> b!173011 (= e!104849 ((_ map or) (store ((as const (Array C!2416 Bool)) false) (h!8315 lt!54189) true) (content!400 (t!27130 lt!54189))))))

(assert (= (and d!43657 c!34271) b!173010))

(assert (= (and d!43657 (not c!34271)) b!173011))

(declare-fun m!171265 () Bool)

(assert (=> b!173011 m!171265))

(declare-fun m!171267 () Bool)

(assert (=> b!173011 m!171267))

(assert (=> d!42723 d!43657))

(assert (=> d!42723 d!43393))

(assert (=> d!42723 d!43521))

(declare-fun d!43659 () Bool)

(declare-fun lt!55369 () Int)

(assert (=> d!43659 (>= lt!55369 0)))

(declare-fun e!104850 () Int)

(assert (=> d!43659 (= lt!55369 e!104850)))

(declare-fun c!34272 () Bool)

(assert (=> d!43659 (= c!34272 ((_ is Nil!2918) (originalCharacters!566 (h!8317 tokens!465))))))

(assert (=> d!43659 (= (size!2417 (originalCharacters!566 (h!8317 tokens!465))) lt!55369)))

(declare-fun b!173012 () Bool)

(assert (=> b!173012 (= e!104850 0)))

(declare-fun b!173013 () Bool)

(assert (=> b!173013 (= e!104850 (+ 1 (size!2417 (t!27130 (originalCharacters!566 (h!8317 tokens!465))))))))

(assert (= (and d!43659 c!34272) b!173012))

(assert (= (and d!43659 (not c!34272)) b!173013))

(declare-fun m!171273 () Bool)

(assert (=> b!173013 m!171273))

(assert (=> b!171189 d!43659))

(declare-fun d!43663 () Bool)

(declare-fun lt!55370 () Int)

(assert (=> d!43663 (>= lt!55370 0)))

(declare-fun e!104851 () Int)

(assert (=> d!43663 (= lt!55370 e!104851)))

(declare-fun c!34273 () Bool)

(assert (=> d!43663 (= c!34273 ((_ is Nil!2918) lt!54327))))

(assert (=> d!43663 (= (size!2417 lt!54327) lt!55370)))

(declare-fun b!173014 () Bool)

(assert (=> b!173014 (= e!104851 0)))

(declare-fun b!173015 () Bool)

(assert (=> b!173015 (= e!104851 (+ 1 (size!2417 (t!27130 lt!54327))))))

(assert (= (and d!43663 c!34273) b!173014))

(assert (= (and d!43663 (not c!34273)) b!173015))

(declare-fun m!171275 () Bool)

(assert (=> b!173015 m!171275))

(assert (=> b!171403 d!43663))

(assert (=> b!171403 d!42983))

(assert (=> b!171403 d!43073))

(declare-fun b!173016 () Bool)

(declare-fun e!104853 () Int)

(declare-fun e!104856 () Int)

(assert (=> b!173016 (= e!104853 e!104856)))

(declare-fun c!34275 () Bool)

(declare-fun call!7650 () Int)

(assert (=> b!173016 (= c!34275 (>= 0 call!7650))))

(declare-fun bm!7645 () Bool)

(assert (=> bm!7645 (= call!7650 (size!2418 lt!54371))))

(declare-fun b!173017 () Bool)

(declare-fun e!104855 () List!2930)

(assert (=> b!173017 (= e!104855 lt!54371)))

(declare-fun b!173018 () Bool)

(assert (=> b!173018 (= e!104856 0)))

(declare-fun b!173019 () Bool)

(declare-fun e!104854 () Bool)

(declare-fun lt!55371 () List!2930)

(assert (=> b!173019 (= e!104854 (= (size!2418 lt!55371) e!104853))))

(declare-fun c!34277 () Bool)

(assert (=> b!173019 (= c!34277 (<= 0 0))))

(declare-fun d!43665 () Bool)

(assert (=> d!43665 e!104854))

(declare-fun res!78216 () Bool)

(assert (=> d!43665 (=> (not res!78216) (not e!104854))))

(assert (=> d!43665 (= res!78216 (= ((_ map implies) (content!402 lt!55371) (content!402 lt!54371)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104852 () List!2930)

(assert (=> d!43665 (= lt!55371 e!104852)))

(declare-fun c!34276 () Bool)

(assert (=> d!43665 (= c!34276 ((_ is Nil!2920) lt!54371))))

(assert (=> d!43665 (= (drop!143 lt!54371 0) lt!55371)))

(declare-fun b!173020 () Bool)

(assert (=> b!173020 (= e!104852 e!104855)))

(declare-fun c!34274 () Bool)

(assert (=> b!173020 (= c!34274 (<= 0 0))))

(declare-fun b!173021 () Bool)

(assert (=> b!173021 (= e!104856 (- call!7650 0))))

(declare-fun b!173022 () Bool)

(assert (=> b!173022 (= e!104853 call!7650)))

(declare-fun b!173023 () Bool)

(assert (=> b!173023 (= e!104855 (drop!143 (t!27132 lt!54371) (- 0 1)))))

(declare-fun b!173024 () Bool)

(assert (=> b!173024 (= e!104852 Nil!2920)))

(assert (= (and d!43665 c!34276) b!173024))

(assert (= (and d!43665 (not c!34276)) b!173020))

(assert (= (and b!173020 c!34274) b!173017))

(assert (= (and b!173020 (not c!34274)) b!173023))

(assert (= (and d!43665 res!78216) b!173019))

(assert (= (and b!173019 c!34277) b!173022))

(assert (= (and b!173019 (not c!34277)) b!173016))

(assert (= (and b!173016 c!34275) b!173018))

(assert (= (and b!173016 (not c!34275)) b!173021))

(assert (= (or b!173022 b!173016 b!173021) bm!7645))

(declare-fun m!171277 () Bool)

(assert (=> bm!7645 m!171277))

(declare-fun m!171279 () Bool)

(assert (=> b!173019 m!171279))

(declare-fun m!171281 () Bool)

(assert (=> d!43665 m!171281))

(declare-fun m!171283 () Bool)

(assert (=> d!43665 m!171283))

(declare-fun m!171285 () Bool)

(assert (=> b!173023 m!171285))

(assert (=> b!171504 d!43665))

(declare-fun bs!16977 () Bool)

(declare-fun d!43667 () Bool)

(assert (= bs!16977 (and d!43667 d!43227)))

(declare-fun lambda!4974 () Int)

(assert (=> bs!16977 (not (= lambda!4974 lambda!4948))))

(declare-fun bs!16978 () Bool)

(assert (= bs!16978 (and d!43667 b!172818)))

(assert (=> bs!16978 (not (= lambda!4974 lambda!4969))))

(declare-fun bs!16979 () Bool)

(assert (= bs!16979 (and d!43667 b!172069)))

(assert (=> bs!16979 (not (= lambda!4974 lambda!4937))))

(declare-fun bs!16980 () Bool)

(assert (= bs!16980 (and d!43667 b!171060)))

(assert (=> bs!16980 (not (= lambda!4974 lambda!4892))))

(declare-fun bs!16981 () Bool)

(assert (= bs!16981 (and d!43667 b!171309)))

(assert (=> bs!16981 (not (= lambda!4974 lambda!4895))))

(declare-fun bs!16982 () Bool)

(assert (= bs!16982 (and d!43667 d!42751)))

(assert (=> bs!16982 (= lambda!4974 lambda!4906)))

(declare-fun bs!16983 () Bool)

(assert (= bs!16983 (and d!43667 b!172700)))

(assert (=> bs!16983 (not (= lambda!4974 lambda!4964))))

(declare-fun bs!16984 () Bool)

(assert (= bs!16984 (and d!43667 b!171518)))

(assert (=> bs!16984 (not (= lambda!4974 lambda!4913))))

(declare-fun bs!16985 () Bool)

(assert (= bs!16985 (and d!43667 b!171504)))

(assert (=> bs!16985 (not (= lambda!4974 lambda!4912))))

(declare-fun bs!16986 () Bool)

(assert (= bs!16986 (and d!43667 d!42823)))

(assert (=> bs!16986 (= lambda!4974 lambda!4911)))

(declare-fun bs!16987 () Bool)

(assert (= bs!16987 (and d!43667 d!42863)))

(assert (=> bs!16987 (not (= lambda!4974 lambda!4926))))

(declare-fun bs!16988 () Bool)

(assert (= bs!16988 (and d!43667 b!171831)))

(assert (=> bs!16988 (not (= lambda!4974 lambda!4927))))

(declare-fun bs!16989 () Bool)

(assert (= bs!16989 (and d!43667 b!171387)))

(assert (=> bs!16989 (not (= lambda!4974 lambda!4907))))

(declare-fun bs!16991 () Bool)

(assert (= bs!16991 (and d!43667 b!171062)))

(assert (=> bs!16991 (= lambda!4974 lambda!4891)))

(declare-fun bs!16992 () Bool)

(assert (= bs!16992 (and d!43667 d!43549)))

(assert (=> bs!16992 (= lambda!4974 lambda!4968)))

(declare-fun bs!16993 () Bool)

(declare-fun b!173030 () Bool)

(assert (= bs!16993 (and b!173030 d!43227)))

(declare-fun lambda!4975 () Int)

(assert (=> bs!16993 (= lambda!4975 lambda!4948)))

(declare-fun bs!16994 () Bool)

(assert (= bs!16994 (and b!173030 b!172818)))

(assert (=> bs!16994 (= lambda!4975 lambda!4969)))

(declare-fun bs!16995 () Bool)

(assert (= bs!16995 (and b!173030 b!172069)))

(assert (=> bs!16995 (= lambda!4975 lambda!4937)))

(declare-fun bs!16996 () Bool)

(assert (= bs!16996 (and b!173030 b!171060)))

(assert (=> bs!16996 (= lambda!4975 lambda!4892)))

(declare-fun bs!16997 () Bool)

(assert (= bs!16997 (and b!173030 b!171309)))

(assert (=> bs!16997 (= lambda!4975 lambda!4895)))

(declare-fun bs!16998 () Bool)

(assert (= bs!16998 (and b!173030 d!42751)))

(assert (=> bs!16998 (not (= lambda!4975 lambda!4906))))

(declare-fun bs!16999 () Bool)

(assert (= bs!16999 (and b!173030 b!172700)))

(assert (=> bs!16999 (= lambda!4975 lambda!4964)))

(declare-fun bs!17000 () Bool)

(assert (= bs!17000 (and b!173030 b!171518)))

(assert (=> bs!17000 (= lambda!4975 lambda!4913)))

(declare-fun bs!17001 () Bool)

(assert (= bs!17001 (and b!173030 b!171504)))

(assert (=> bs!17001 (= lambda!4975 lambda!4912)))

(declare-fun bs!17002 () Bool)

(assert (= bs!17002 (and b!173030 d!42863)))

(assert (=> bs!17002 (= lambda!4975 lambda!4926)))

(declare-fun bs!17003 () Bool)

(assert (= bs!17003 (and b!173030 b!171831)))

(assert (=> bs!17003 (= lambda!4975 lambda!4927)))

(declare-fun bs!17004 () Bool)

(assert (= bs!17004 (and b!173030 b!171387)))

(assert (=> bs!17004 (= lambda!4975 lambda!4907)))

(declare-fun bs!17005 () Bool)

(assert (= bs!17005 (and b!173030 b!171062)))

(assert (=> bs!17005 (not (= lambda!4975 lambda!4891))))

(declare-fun bs!17006 () Bool)

(assert (= bs!17006 (and b!173030 d!43549)))

(assert (=> bs!17006 (not (= lambda!4975 lambda!4968))))

(declare-fun bs!17007 () Bool)

(assert (= bs!17007 (and b!173030 d!42823)))

(assert (=> bs!17007 (not (= lambda!4975 lambda!4911))))

(declare-fun bs!17008 () Bool)

(assert (= bs!17008 (and b!173030 d!43667)))

(assert (=> bs!17008 (not (= lambda!4975 lambda!4974))))

(declare-fun b!173039 () Bool)

(declare-fun e!104867 () Bool)

(assert (=> b!173039 (= e!104867 true)))

(declare-fun b!173038 () Bool)

(declare-fun e!104866 () Bool)

(assert (=> b!173038 (= e!104866 e!104867)))

(declare-fun b!173037 () Bool)

(declare-fun e!104865 () Bool)

(assert (=> b!173037 (= e!104865 e!104866)))

(assert (=> b!173030 e!104865))

(assert (= b!173038 b!173039))

(assert (= b!173037 b!173038))

(assert (= (and b!173030 ((_ is Cons!2919) rules!1920)) b!173037))

(assert (=> b!173039 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4975))))

(assert (=> b!173039 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 rules!1920)))) (dynLambda!1108 order!1599 lambda!4975))))

(assert (=> b!173030 true))

(declare-fun b!173025 () Bool)

(declare-fun e!104859 () BalanceConc!1744)

(declare-fun call!7653 () Token!790)

(assert (=> b!173025 (= e!104859 (charsOf!178 call!7653))))

(declare-fun b!173026 () Bool)

(declare-fun c!34281 () Bool)

(declare-fun e!104863 () Bool)

(assert (=> b!173026 (= c!34281 e!104863)))

(declare-fun res!78218 () Bool)

(assert (=> b!173026 (=> (not res!78218) (not e!104863))))

(declare-fun lt!55380 () Option!321)

(assert (=> b!173026 (= res!78218 ((_ is Some!320) lt!55380))))

(declare-fun e!104861 () BalanceConc!1744)

(declare-fun e!104860 () BalanceConc!1744)

(assert (=> b!173026 (= e!104861 e!104860)))

(declare-fun b!173027 () Bool)

(declare-fun call!7651 () Token!790)

(assert (=> b!173027 (= e!104863 (not (= (_1!1631 (v!13763 lt!55380)) call!7651)))))

(declare-fun b!173028 () Bool)

(assert (=> b!173028 (= e!104860 (BalanceConc!1745 Empty!868))))

(assert (=> b!173028 (= (print!140 thiss!17480 (singletonSeq!75 call!7653)) (printTailRec!103 thiss!17480 (singletonSeq!75 call!7653) 0 (BalanceConc!1745 Empty!868)))))

(declare-fun lt!55385 () Unit!2548)

(declare-fun Unit!2600 () Unit!2548)

(assert (=> b!173028 (= lt!55385 Unit!2600)))

(declare-fun call!7655 () BalanceConc!1744)

(declare-fun lt!55378 () Unit!2548)

(declare-fun lt!55375 () BalanceConc!1744)

(assert (=> b!173028 (= lt!55378 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 (list!1061 call!7655) (list!1061 lt!55375)))))

(assert (=> b!173028 false))

(declare-fun lt!55381 () Unit!2548)

(declare-fun Unit!2601 () Unit!2548)

(assert (=> b!173028 (= lt!55381 Unit!2601)))

(declare-fun c!34278 () Bool)

(declare-fun bm!7646 () Bool)

(declare-fun call!7654 () BalanceConc!1744)

(assert (=> bm!7646 (= call!7654 (charsOf!178 (ite c!34278 call!7651 (ite c!34281 separatorToken!170 call!7653))))))

(declare-fun b!173029 () Bool)

(declare-fun e!104857 () BalanceConc!1744)

(assert (=> b!173029 (= e!104857 (BalanceConc!1745 Empty!868))))

(declare-fun lt!55379 () BalanceConc!1744)

(assert (=> d!43667 (= (list!1061 lt!55379) (printWithSeparatorTokenWhenNeededList!102 thiss!17480 rules!1920 (dropList!90 lt!54114 (+ 0 1)) separatorToken!170))))

(assert (=> d!43667 (= lt!55379 e!104857)))

(declare-fun c!34279 () Bool)

(assert (=> d!43667 (= c!34279 (>= (+ 0 1) (size!2416 lt!54114)))))

(declare-fun lt!55382 () Unit!2548)

(assert (=> d!43667 (= lt!55382 (lemmaContentSubsetPreservesForall!33 (list!1064 lt!54114) (dropList!90 lt!54114 (+ 0 1)) lambda!4974))))

(declare-fun e!104862 () Bool)

(assert (=> d!43667 e!104862))

(declare-fun res!78217 () Bool)

(assert (=> d!43667 (=> (not res!78217) (not e!104862))))

(assert (=> d!43667 (= res!78217 (>= (+ 0 1) 0))))

(assert (=> d!43667 (= (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 (+ 0 1)) lt!55379)))

(assert (=> b!173030 (= e!104857 e!104861)))

(declare-fun lt!55384 () List!2930)

(assert (=> b!173030 (= lt!55384 (list!1064 lt!54114))))

(declare-fun lt!55373 () Unit!2548)

(assert (=> b!173030 (= lt!55373 (lemmaDropApply!130 lt!55384 (+ 0 1)))))

(assert (=> b!173030 (= (head!604 (drop!143 lt!55384 (+ 0 1))) (apply!422 lt!55384 (+ 0 1)))))

(declare-fun lt!55377 () Unit!2548)

(assert (=> b!173030 (= lt!55377 lt!55373)))

(declare-fun lt!55372 () List!2930)

(assert (=> b!173030 (= lt!55372 (list!1064 lt!54114))))

(declare-fun lt!55376 () Unit!2548)

(assert (=> b!173030 (= lt!55376 (lemmaDropTail!122 lt!55372 (+ 0 1)))))

(assert (=> b!173030 (= (tail!344 (drop!143 lt!55372 (+ 0 1))) (drop!143 lt!55372 (+ 0 1 1)))))

(declare-fun lt!55383 () Unit!2548)

(assert (=> b!173030 (= lt!55383 lt!55376)))

(declare-fun lt!55374 () Unit!2548)

(assert (=> b!173030 (= lt!55374 (forallContained!90 (list!1064 lt!54114) lambda!4975 (apply!423 lt!54114 (+ 0 1))))))

(assert (=> b!173030 (= lt!55375 (printWithSeparatorTokenWhenNeededRec!92 thiss!17480 rules!1920 lt!54114 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!173030 (= lt!55380 (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (++!672 (charsOf!178 (apply!423 lt!54114 (+ 0 1))) lt!55375)))))

(declare-fun res!78219 () Bool)

(assert (=> b!173030 (= res!78219 ((_ is Some!320) lt!55380))))

(declare-fun e!104858 () Bool)

(assert (=> b!173030 (=> (not res!78219) (not e!104858))))

(assert (=> b!173030 (= c!34278 e!104858)))

(declare-fun b!173031 () Bool)

(declare-fun call!7652 () BalanceConc!1744)

(assert (=> b!173031 (= e!104861 call!7652)))

(declare-fun b!173032 () Bool)

(assert (=> b!173032 (= e!104858 (= (_1!1631 (v!13763 lt!55380)) (apply!423 lt!54114 (+ 0 1))))))

(declare-fun bm!7647 () Bool)

(assert (=> bm!7647 (= call!7655 call!7654)))

(declare-fun b!173033 () Bool)

(assert (=> b!173033 (= e!104860 (++!672 call!7652 lt!55375))))

(declare-fun b!173034 () Bool)

(assert (=> b!173034 (= e!104862 (<= (+ 0 1) (size!2416 lt!54114)))))

(declare-fun bm!7648 () Bool)

(declare-fun c!34280 () Bool)

(assert (=> bm!7648 (= c!34280 c!34278)))

(assert (=> bm!7648 (= call!7652 (++!672 e!104859 (ite c!34278 lt!55375 call!7655)))))

(declare-fun b!173035 () Bool)

(assert (=> b!173035 (= e!104859 call!7654)))

(declare-fun bm!7649 () Bool)

(assert (=> bm!7649 (= call!7653 call!7651)))

(declare-fun bm!7650 () Bool)

(assert (=> bm!7650 (= call!7651 (apply!423 lt!54114 (+ 0 1)))))

(assert (= (and d!43667 res!78217) b!173034))

(assert (= (and d!43667 c!34279) b!173029))

(assert (= (and d!43667 (not c!34279)) b!173030))

(assert (= (and b!173030 res!78219) b!173032))

(assert (= (and b!173030 c!34278) b!173031))

(assert (= (and b!173030 (not c!34278)) b!173026))

(assert (= (and b!173026 res!78218) b!173027))

(assert (= (and b!173026 c!34281) b!173033))

(assert (= (and b!173026 (not c!34281)) b!173028))

(assert (= (or b!173033 b!173028) bm!7649))

(assert (= (or b!173033 b!173028) bm!7647))

(assert (= (or b!173031 b!173027 bm!7649) bm!7650))

(assert (= (or b!173031 bm!7647) bm!7646))

(assert (= (or b!173031 b!173033) bm!7648))

(assert (= (and bm!7648 c!34280) b!173035))

(assert (= (and bm!7648 (not c!34280)) b!173025))

(declare-fun m!171311 () Bool)

(assert (=> b!173030 m!171311))

(assert (=> b!173030 m!167817))

(declare-fun m!171315 () Bool)

(assert (=> b!173030 m!171315))

(declare-fun m!171319 () Bool)

(assert (=> b!173030 m!171319))

(assert (=> b!173030 m!171315))

(declare-fun m!171321 () Bool)

(assert (=> b!173030 m!171321))

(declare-fun m!171325 () Bool)

(assert (=> b!173030 m!171325))

(assert (=> b!173030 m!171315))

(assert (=> b!173030 m!171321))

(declare-fun m!171331 () Bool)

(assert (=> b!173030 m!171331))

(declare-fun m!171333 () Bool)

(assert (=> b!173030 m!171333))

(declare-fun m!171337 () Bool)

(assert (=> b!173030 m!171337))

(declare-fun m!171341 () Bool)

(assert (=> b!173030 m!171341))

(declare-fun m!171343 () Bool)

(assert (=> b!173030 m!171343))

(declare-fun m!171345 () Bool)

(assert (=> b!173030 m!171345))

(assert (=> b!173030 m!171311))

(declare-fun m!171347 () Bool)

(assert (=> b!173030 m!171347))

(assert (=> b!173030 m!171341))

(assert (=> b!173030 m!171331))

(declare-fun m!171349 () Bool)

(assert (=> b!173030 m!171349))

(declare-fun m!171351 () Bool)

(assert (=> b!173030 m!171351))

(assert (=> b!173030 m!167817))

(declare-fun m!171353 () Bool)

(assert (=> b!173028 m!171353))

(declare-fun m!171355 () Bool)

(assert (=> b!173028 m!171355))

(assert (=> b!173028 m!171353))

(declare-fun m!171359 () Bool)

(assert (=> b!173028 m!171359))

(declare-fun m!171361 () Bool)

(assert (=> b!173028 m!171361))

(assert (=> b!173028 m!171355))

(declare-fun m!171363 () Bool)

(assert (=> b!173028 m!171363))

(assert (=> b!173028 m!171359))

(assert (=> b!173028 m!171355))

(declare-fun m!171365 () Bool)

(assert (=> b!173028 m!171365))

(assert (=> b!173032 m!171315))

(assert (=> b!173034 m!167857))

(assert (=> bm!7650 m!171315))

(declare-fun m!171367 () Bool)

(assert (=> d!43667 m!171367))

(assert (=> d!43667 m!167857))

(declare-fun m!171369 () Bool)

(assert (=> d!43667 m!171369))

(assert (=> d!43667 m!167817))

(assert (=> d!43667 m!171367))

(declare-fun m!171371 () Bool)

(assert (=> d!43667 m!171371))

(assert (=> d!43667 m!167817))

(assert (=> d!43667 m!171367))

(declare-fun m!171373 () Bool)

(assert (=> d!43667 m!171373))

(declare-fun m!171375 () Bool)

(assert (=> bm!7648 m!171375))

(declare-fun m!171377 () Bool)

(assert (=> b!173033 m!171377))

(declare-fun m!171379 () Bool)

(assert (=> b!173025 m!171379))

(declare-fun m!171381 () Bool)

(assert (=> bm!7646 m!171381))

(assert (=> b!171504 d!43667))

(declare-fun b!173063 () Bool)

(declare-fun e!104881 () Int)

(declare-fun e!104884 () Int)

(assert (=> b!173063 (= e!104881 e!104884)))

(declare-fun c!34291 () Bool)

(declare-fun call!7658 () Int)

(assert (=> b!173063 (= c!34291 (>= (+ 0 1) call!7658))))

(declare-fun bm!7653 () Bool)

(assert (=> bm!7653 (= call!7658 (size!2418 lt!54359))))

(declare-fun b!173064 () Bool)

(declare-fun e!104883 () List!2930)

(assert (=> b!173064 (= e!104883 lt!54359)))

(declare-fun b!173065 () Bool)

(assert (=> b!173065 (= e!104884 0)))

(declare-fun b!173066 () Bool)

(declare-fun e!104882 () Bool)

(declare-fun lt!55394 () List!2930)

(assert (=> b!173066 (= e!104882 (= (size!2418 lt!55394) e!104881))))

(declare-fun c!34293 () Bool)

(assert (=> b!173066 (= c!34293 (<= (+ 0 1) 0))))

(declare-fun d!43681 () Bool)

(assert (=> d!43681 e!104882))

(declare-fun res!78227 () Bool)

(assert (=> d!43681 (=> (not res!78227) (not e!104882))))

(assert (=> d!43681 (= res!78227 (= ((_ map implies) (content!402 lt!55394) (content!402 lt!54359)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104880 () List!2930)

(assert (=> d!43681 (= lt!55394 e!104880)))

(declare-fun c!34292 () Bool)

(assert (=> d!43681 (= c!34292 ((_ is Nil!2920) lt!54359))))

(assert (=> d!43681 (= (drop!143 lt!54359 (+ 0 1)) lt!55394)))

(declare-fun b!173067 () Bool)

(assert (=> b!173067 (= e!104880 e!104883)))

(declare-fun c!34290 () Bool)

(assert (=> b!173067 (= c!34290 (<= (+ 0 1) 0))))

(declare-fun b!173068 () Bool)

(assert (=> b!173068 (= e!104884 (- call!7658 (+ 0 1)))))

(declare-fun b!173069 () Bool)

(assert (=> b!173069 (= e!104881 call!7658)))

(declare-fun b!173070 () Bool)

(assert (=> b!173070 (= e!104883 (drop!143 (t!27132 lt!54359) (- (+ 0 1) 1)))))

(declare-fun b!173071 () Bool)

(assert (=> b!173071 (= e!104880 Nil!2920)))

(assert (= (and d!43681 c!34292) b!173071))

(assert (= (and d!43681 (not c!34292)) b!173067))

(assert (= (and b!173067 c!34290) b!173064))

(assert (= (and b!173067 (not c!34290)) b!173070))

(assert (= (and d!43681 res!78227) b!173066))

(assert (= (and b!173066 c!34293) b!173069))

(assert (= (and b!173066 (not c!34293)) b!173063))

(assert (= (and b!173063 c!34291) b!173065))

(assert (= (and b!173063 (not c!34291)) b!173068))

(assert (= (or b!173069 b!173063 b!173068) bm!7653))

(declare-fun m!171393 () Bool)

(assert (=> bm!7653 m!171393))

(declare-fun m!171395 () Bool)

(assert (=> b!173066 m!171395))

(declare-fun m!171397 () Bool)

(assert (=> d!43681 m!171397))

(declare-fun m!171399 () Bool)

(assert (=> d!43681 m!171399))

(declare-fun m!171401 () Bool)

(assert (=> b!173070 m!171401))

(assert (=> b!171504 d!43681))

(declare-fun d!43685 () Bool)

(assert (=> d!43685 (= (tail!344 (drop!143 lt!54359 0)) (t!27132 (drop!143 lt!54359 0)))))

(assert (=> b!171504 d!43685))

(declare-fun b!173081 () Bool)

(declare-fun e!104891 () Int)

(declare-fun e!104894 () Int)

(assert (=> b!173081 (= e!104891 e!104894)))

(declare-fun c!34299 () Bool)

(declare-fun call!7660 () Int)

(assert (=> b!173081 (= c!34299 (>= 0 call!7660))))

(declare-fun bm!7655 () Bool)

(assert (=> bm!7655 (= call!7660 (size!2418 lt!54359))))

(declare-fun b!173082 () Bool)

(declare-fun e!104893 () List!2930)

(assert (=> b!173082 (= e!104893 lt!54359)))

(declare-fun b!173083 () Bool)

(assert (=> b!173083 (= e!104894 0)))

(declare-fun b!173084 () Bool)

(declare-fun e!104892 () Bool)

(declare-fun lt!55396 () List!2930)

(assert (=> b!173084 (= e!104892 (= (size!2418 lt!55396) e!104891))))

(declare-fun c!34301 () Bool)

(assert (=> b!173084 (= c!34301 (<= 0 0))))

(declare-fun d!43687 () Bool)

(assert (=> d!43687 e!104892))

(declare-fun res!78229 () Bool)

(assert (=> d!43687 (=> (not res!78229) (not e!104892))))

(assert (=> d!43687 (= res!78229 (= ((_ map implies) (content!402 lt!55396) (content!402 lt!54359)) ((as const (InoxSet Token!790)) true)))))

(declare-fun e!104890 () List!2930)

(assert (=> d!43687 (= lt!55396 e!104890)))

(declare-fun c!34300 () Bool)

(assert (=> d!43687 (= c!34300 ((_ is Nil!2920) lt!54359))))

(assert (=> d!43687 (= (drop!143 lt!54359 0) lt!55396)))

(declare-fun b!173085 () Bool)

(assert (=> b!173085 (= e!104890 e!104893)))

(declare-fun c!34298 () Bool)

(assert (=> b!173085 (= c!34298 (<= 0 0))))

(declare-fun b!173086 () Bool)

(assert (=> b!173086 (= e!104894 (- call!7660 0))))

(declare-fun b!173087 () Bool)

(assert (=> b!173087 (= e!104891 call!7660)))

(declare-fun b!173088 () Bool)

(assert (=> b!173088 (= e!104893 (drop!143 (t!27132 lt!54359) (- 0 1)))))

(declare-fun b!173089 () Bool)

(assert (=> b!173089 (= e!104890 Nil!2920)))

(assert (= (and d!43687 c!34300) b!173089))

(assert (= (and d!43687 (not c!34300)) b!173085))

(assert (= (and b!173085 c!34298) b!173082))

(assert (= (and b!173085 (not c!34298)) b!173088))

(assert (= (and d!43687 res!78229) b!173084))

(assert (= (and b!173084 c!34301) b!173087))

(assert (= (and b!173084 (not c!34301)) b!173081))

(assert (= (and b!173081 c!34299) b!173083))

(assert (= (and b!173081 (not c!34299)) b!173086))

(assert (= (or b!173087 b!173081 b!173086) bm!7655))

(assert (=> bm!7655 m!171393))

(declare-fun m!171415 () Bool)

(assert (=> b!173084 m!171415))

(declare-fun m!171419 () Bool)

(assert (=> d!43687 m!171419))

(assert (=> d!43687 m!171399))

(declare-fun m!171421 () Bool)

(assert (=> b!173088 m!171421))

(assert (=> b!171504 d!43687))

(declare-fun d!43695 () Bool)

(assert (=> d!43695 (= (head!604 (drop!143 lt!54371 0)) (h!8317 (drop!143 lt!54371 0)))))

(assert (=> b!171504 d!43695))

(assert (=> b!171504 d!43039))

(declare-fun d!43697 () Bool)

(declare-fun lt!55405 () Token!790)

(assert (=> d!43697 (contains!467 lt!54371 lt!55405)))

(declare-fun e!104903 () Token!790)

(assert (=> d!43697 (= lt!55405 e!104903)))

(declare-fun c!34304 () Bool)

(assert (=> d!43697 (= c!34304 (= 0 0))))

(declare-fun e!104904 () Bool)

(assert (=> d!43697 e!104904))

(declare-fun res!78237 () Bool)

(assert (=> d!43697 (=> (not res!78237) (not e!104904))))

(assert (=> d!43697 (= res!78237 (<= 0 0))))

(assert (=> d!43697 (= (apply!422 lt!54371 0) lt!55405)))

(declare-fun b!173101 () Bool)

(assert (=> b!173101 (= e!104904 (< 0 (size!2418 lt!54371)))))

(declare-fun b!173102 () Bool)

(assert (=> b!173102 (= e!104903 (head!604 lt!54371))))

(declare-fun b!173103 () Bool)

(assert (=> b!173103 (= e!104903 (apply!422 (tail!344 lt!54371) (- 0 1)))))

(assert (= (and d!43697 res!78237) b!173101))

(assert (= (and d!43697 c!34304) b!173102))

(assert (= (and d!43697 (not c!34304)) b!173103))

(declare-fun m!171423 () Bool)

(assert (=> d!43697 m!171423))

(assert (=> b!173101 m!171277))

(declare-fun m!171425 () Bool)

(assert (=> b!173102 m!171425))

(declare-fun m!171427 () Bool)

(assert (=> b!173103 m!171427))

(assert (=> b!173103 m!171427))

(declare-fun m!171429 () Bool)

(assert (=> b!173103 m!171429))

(assert (=> b!171504 d!43697))

(declare-fun b!173106 () Bool)

(declare-fun res!78240 () Bool)

(declare-fun e!104905 () Bool)

(assert (=> b!173106 (=> (not res!78240) (not e!104905))))

(assert (=> b!173106 (= res!78240 (>= (height!94 (++!674 (c!33816 (charsOf!178 (apply!423 lt!54114 0))) (c!33816 lt!54362))) (max!0 (height!94 (c!33816 (charsOf!178 (apply!423 lt!54114 0)))) (height!94 (c!33816 lt!54362)))))))

(declare-fun b!173104 () Bool)

(declare-fun res!78241 () Bool)

(assert (=> b!173104 (=> (not res!78241) (not e!104905))))

(assert (=> b!173104 (= res!78241 (isBalanced!241 (++!674 (c!33816 (charsOf!178 (apply!423 lt!54114 0))) (c!33816 lt!54362))))))

(declare-fun lt!55406 () BalanceConc!1744)

(declare-fun b!173107 () Bool)

(assert (=> b!173107 (= e!104905 (= (list!1061 lt!55406) (++!670 (list!1061 (charsOf!178 (apply!423 lt!54114 0))) (list!1061 lt!54362))))))

(declare-fun b!173105 () Bool)

(declare-fun res!78239 () Bool)

(assert (=> b!173105 (=> (not res!78239) (not e!104905))))

(assert (=> b!173105 (= res!78239 (<= (height!94 (++!674 (c!33816 (charsOf!178 (apply!423 lt!54114 0))) (c!33816 lt!54362))) (+ (max!0 (height!94 (c!33816 (charsOf!178 (apply!423 lt!54114 0)))) (height!94 (c!33816 lt!54362))) 1)))))

(declare-fun d!43699 () Bool)

(assert (=> d!43699 e!104905))

(declare-fun res!78238 () Bool)

(assert (=> d!43699 (=> (not res!78238) (not e!104905))))

(assert (=> d!43699 (= res!78238 (appendAssocInst!31 (c!33816 (charsOf!178 (apply!423 lt!54114 0))) (c!33816 lt!54362)))))

(assert (=> d!43699 (= lt!55406 (BalanceConc!1745 (++!674 (c!33816 (charsOf!178 (apply!423 lt!54114 0))) (c!33816 lt!54362))))))

(assert (=> d!43699 (= (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362) lt!55406)))

(assert (= (and d!43699 res!78238) b!173104))

(assert (= (and b!173104 res!78241) b!173105))

(assert (= (and b!173105 res!78239) b!173106))

(assert (= (and b!173106 res!78240) b!173107))

(declare-fun m!171431 () Bool)

(assert (=> b!173107 m!171431))

(assert (=> b!173107 m!167823))

(declare-fun m!171433 () Bool)

(assert (=> b!173107 m!171433))

(assert (=> b!173107 m!167849))

(assert (=> b!173107 m!171433))

(assert (=> b!173107 m!167849))

(declare-fun m!171435 () Bool)

(assert (=> b!173107 m!171435))

(declare-fun m!171437 () Bool)

(assert (=> b!173104 m!171437))

(assert (=> b!173104 m!171437))

(declare-fun m!171439 () Bool)

(assert (=> b!173104 m!171439))

(assert (=> b!173105 m!171437))

(declare-fun m!171443 () Bool)

(assert (=> b!173105 m!171443))

(assert (=> b!173105 m!171437))

(declare-fun m!171449 () Bool)

(assert (=> b!173105 m!171449))

(assert (=> b!173105 m!171231))

(assert (=> b!173105 m!171449))

(assert (=> b!173105 m!171231))

(declare-fun m!171455 () Bool)

(assert (=> b!173105 m!171455))

(assert (=> b!173106 m!171437))

(assert (=> b!173106 m!171443))

(assert (=> b!173106 m!171437))

(assert (=> b!173106 m!171449))

(assert (=> b!173106 m!171231))

(assert (=> b!173106 m!171449))

(assert (=> b!173106 m!171231))

(assert (=> b!173106 m!171455))

(declare-fun m!171461 () Bool)

(assert (=> d!43699 m!171461))

(assert (=> d!43699 m!171437))

(assert (=> b!171504 d!43699))

(declare-fun d!43701 () Bool)

(declare-fun lt!55407 () BalanceConc!1744)

(assert (=> d!43701 (= (list!1061 lt!55407) (originalCharacters!566 (apply!423 lt!54114 0)))))

(assert (=> d!43701 (= lt!55407 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0)))) (value!19221 (apply!423 lt!54114 0))))))

(assert (=> d!43701 (= (charsOf!178 (apply!423 lt!54114 0)) lt!55407)))

(declare-fun b_lambda!3969 () Bool)

(assert (=> (not b_lambda!3969) (not d!43701)))

(declare-fun tb!6941 () Bool)

(declare-fun t!27412 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27412) tb!6941))

(declare-fun b!173108 () Bool)

(declare-fun e!104906 () Bool)

(declare-fun tp!84512 () Bool)

(assert (=> b!173108 (= e!104906 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0)))) (value!19221 (apply!423 lt!54114 0))))) tp!84512))))

(declare-fun result!9668 () Bool)

(assert (=> tb!6941 (= result!9668 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0)))) (value!19221 (apply!423 lt!54114 0)))) e!104906))))

(assert (= tb!6941 b!173108))

(declare-fun m!171475 () Bool)

(assert (=> b!173108 m!171475))

(declare-fun m!171477 () Bool)

(assert (=> tb!6941 m!171477))

(assert (=> d!43701 t!27412))

(declare-fun b_and!11519 () Bool)

(assert (= b_and!11499 (and (=> t!27412 result!9668) b_and!11519)))

(declare-fun tb!6943 () Bool)

(declare-fun t!27414 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27414) tb!6943))

(declare-fun result!9670 () Bool)

(assert (= result!9670 result!9668))

(assert (=> d!43701 t!27414))

(declare-fun b_and!11521 () Bool)

(assert (= b_and!11505 (and (=> t!27414 result!9670) b_and!11521)))

(declare-fun t!27416 () Bool)

(declare-fun tb!6945 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27416) tb!6945))

(declare-fun result!9672 () Bool)

(assert (= result!9672 result!9668))

(assert (=> d!43701 t!27416))

(declare-fun b_and!11523 () Bool)

(assert (= b_and!11503 (and (=> t!27416 result!9672) b_and!11523)))

(declare-fun tb!6947 () Bool)

(declare-fun t!27418 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27418) tb!6947))

(declare-fun result!9674 () Bool)

(assert (= result!9674 result!9668))

(assert (=> d!43701 t!27418))

(declare-fun b_and!11525 () Bool)

(assert (= b_and!11501 (and (=> t!27418 result!9674) b_and!11525)))

(declare-fun t!27420 () Bool)

(declare-fun tb!6949 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27420) tb!6949))

(declare-fun result!9676 () Bool)

(assert (= result!9676 result!9668))

(assert (=> d!43701 t!27420))

(declare-fun b_and!11527 () Bool)

(assert (= b_and!11507 (and (=> t!27420 result!9676) b_and!11527)))

(declare-fun m!171479 () Bool)

(assert (=> d!43701 m!171479))

(declare-fun m!171483 () Bool)

(assert (=> d!43701 m!171483))

(assert (=> b!171504 d!43701))

(declare-fun d!43705 () Bool)

(assert (=> d!43705 (= (tail!344 (drop!143 lt!54359 0)) (drop!143 lt!54359 (+ 0 1)))))

(declare-fun lt!55409 () Unit!2548)

(assert (=> d!43705 (= lt!55409 (choose!1843 lt!54359 0))))

(declare-fun e!104908 () Bool)

(assert (=> d!43705 e!104908))

(declare-fun res!78243 () Bool)

(assert (=> d!43705 (=> (not res!78243) (not e!104908))))

(assert (=> d!43705 (= res!78243 (>= 0 0))))

(assert (=> d!43705 (= (lemmaDropTail!122 lt!54359 0) lt!55409)))

(declare-fun b!173110 () Bool)

(assert (=> b!173110 (= e!104908 (< 0 (size!2418 lt!54359)))))

(assert (= (and d!43705 res!78243) b!173110))

(assert (=> d!43705 m!167815))

(assert (=> d!43705 m!167815))

(assert (=> d!43705 m!167839))

(assert (=> d!43705 m!167829))

(declare-fun m!171491 () Bool)

(assert (=> d!43705 m!171491))

(assert (=> b!173110 m!171393))

(assert (=> b!171504 d!43705))

(declare-fun d!43709 () Bool)

(assert (=> d!43709 (= (head!604 (drop!143 lt!54371 0)) (apply!422 lt!54371 0))))

(declare-fun lt!55424 () Unit!2548)

(assert (=> d!43709 (= lt!55424 (choose!1844 lt!54371 0))))

(declare-fun e!104916 () Bool)

(assert (=> d!43709 e!104916))

(declare-fun res!78247 () Bool)

(assert (=> d!43709 (=> (not res!78247) (not e!104916))))

(assert (=> d!43709 (= res!78247 (>= 0 0))))

(assert (=> d!43709 (= (lemmaDropApply!130 lt!54371 0) lt!55424)))

(declare-fun b!173122 () Bool)

(assert (=> b!173122 (= e!104916 (< 0 (size!2418 lt!54371)))))

(assert (= (and d!43709 res!78247) b!173122))

(assert (=> d!43709 m!167833))

(assert (=> d!43709 m!167833))

(assert (=> d!43709 m!167835))

(assert (=> d!43709 m!167843))

(declare-fun m!171493 () Bool)

(assert (=> d!43709 m!171493))

(assert (=> b!173122 m!171277))

(assert (=> b!171504 d!43709))

(assert (=> b!171504 d!42901))

(declare-fun b!173123 () Bool)

(declare-fun e!104922 () Bool)

(declare-fun lt!55430 () Option!321)

(assert (=> b!173123 (= e!104922 (= (list!1061 (_2!1631 (get!802 lt!55430))) (_2!1630 (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))))))

(declare-fun b!173124 () Bool)

(declare-fun e!104917 () Option!321)

(declare-fun lt!55429 () Option!321)

(declare-fun lt!55428 () Option!321)

(assert (=> b!173124 (= e!104917 (ite (and ((_ is None!320) lt!55429) ((_ is None!320) lt!55428)) None!320 (ite ((_ is None!320) lt!55428) lt!55429 (ite ((_ is None!320) lt!55429) lt!55428 (ite (>= (size!2411 (_1!1631 (v!13763 lt!55429))) (size!2411 (_1!1631 (v!13763 lt!55428)))) lt!55429 lt!55428)))))))

(declare-fun call!7667 () Option!321)

(assert (=> b!173124 (= lt!55429 call!7667)))

(assert (=> b!173124 (= lt!55428 (maxPrefixZipperSequence!102 thiss!17480 (t!27131 rules!1920) (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))

(declare-fun b!173125 () Bool)

(declare-fun e!104918 () Bool)

(declare-fun e!104920 () Bool)

(assert (=> b!173125 (= e!104918 e!104920)))

(declare-fun res!78251 () Bool)

(assert (=> b!173125 (=> (not res!78251) (not e!104920))))

(assert (=> b!173125 (= res!78251 (= (_1!1631 (get!802 lt!55430)) (_1!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))))))

(declare-fun d!43711 () Bool)

(declare-fun e!104921 () Bool)

(assert (=> d!43711 e!104921))

(declare-fun res!78249 () Bool)

(assert (=> d!43711 (=> (not res!78249) (not e!104921))))

(assert (=> d!43711 (= res!78249 (= (isDefined!172 lt!55430) (isDefined!171 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362))))))))

(assert (=> d!43711 (= lt!55430 e!104917)))

(declare-fun c!34309 () Bool)

(assert (=> d!43711 (= c!34309 (and ((_ is Cons!2919) rules!1920) ((_ is Nil!2919) (t!27131 rules!1920))))))

(declare-fun lt!55425 () Unit!2548)

(declare-fun lt!55426 () Unit!2548)

(assert (=> d!43711 (= lt!55425 lt!55426)))

(declare-fun lt!55427 () List!2928)

(declare-fun lt!55431 () List!2928)

(assert (=> d!43711 (isPrefix!230 lt!55427 lt!55431)))

(assert (=> d!43711 (= lt!55426 (lemmaIsPrefixRefl!138 lt!55427 lt!55431))))

(assert (=> d!43711 (= lt!55431 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))

(assert (=> d!43711 (= lt!55427 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))

(assert (=> d!43711 (rulesValidInductive!123 thiss!17480 rules!1920)))

(assert (=> d!43711 (= (maxPrefixZipperSequence!102 thiss!17480 rules!1920 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)) lt!55430)))

(declare-fun bm!7662 () Bool)

(assert (=> bm!7662 (= call!7667 (maxPrefixOneRuleZipperSequence!43 thiss!17480 (h!8316 rules!1920) (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))

(declare-fun b!173126 () Bool)

(assert (=> b!173126 (= e!104920 (= (list!1061 (_2!1631 (get!802 lt!55430))) (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))))))

(declare-fun b!173127 () Bool)

(declare-fun res!78253 () Bool)

(assert (=> b!173127 (=> (not res!78253) (not e!104921))))

(declare-fun e!104919 () Bool)

(assert (=> b!173127 (= res!78253 e!104919)))

(declare-fun res!78250 () Bool)

(assert (=> b!173127 (=> res!78250 e!104919)))

(assert (=> b!173127 (= res!78250 (not (isDefined!172 lt!55430)))))

(declare-fun b!173128 () Bool)

(assert (=> b!173128 (= e!104921 e!104918)))

(declare-fun res!78248 () Bool)

(assert (=> b!173128 (=> res!78248 e!104918)))

(assert (=> b!173128 (= res!78248 (not (isDefined!172 lt!55430)))))

(declare-fun b!173129 () Bool)

(assert (=> b!173129 (= e!104917 call!7667)))

(declare-fun b!173130 () Bool)

(assert (=> b!173130 (= e!104919 e!104922)))

(declare-fun res!78252 () Bool)

(assert (=> b!173130 (=> (not res!78252) (not e!104922))))

(assert (=> b!173130 (= res!78252 (= (_1!1631 (get!802 lt!55430)) (_1!1630 (get!801 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (++!672 (charsOf!178 (apply!423 lt!54114 0)) lt!54362)))))))))

(assert (= (and d!43711 c!34309) b!173129))

(assert (= (and d!43711 (not c!34309)) b!173124))

(assert (= (or b!173129 b!173124) bm!7662))

(assert (= (and d!43711 res!78249) b!173127))

(assert (= (and b!173127 (not res!78250)) b!173130))

(assert (= (and b!173130 res!78252) b!173123))

(assert (= (and b!173127 res!78253) b!173128))

(assert (= (and b!173128 (not res!78248)) b!173125))

(assert (= (and b!173125 res!78251) b!173126))

(declare-fun m!171495 () Bool)

(assert (=> b!173128 m!171495))

(declare-fun m!171497 () Bool)

(assert (=> b!173130 m!171497))

(assert (=> b!173130 m!167827))

(declare-fun m!171499 () Bool)

(assert (=> b!173130 m!171499))

(assert (=> b!173130 m!171499))

(declare-fun m!171501 () Bool)

(assert (=> b!173130 m!171501))

(assert (=> b!173130 m!171501))

(declare-fun m!171503 () Bool)

(assert (=> b!173130 m!171503))

(assert (=> b!173126 m!167827))

(assert (=> b!173126 m!171499))

(declare-fun m!171505 () Bool)

(assert (=> b!173126 m!171505))

(assert (=> b!173126 m!171497))

(assert (=> b!173126 m!171499))

(declare-fun m!171507 () Bool)

(assert (=> b!173126 m!171507))

(assert (=> b!173126 m!171507))

(declare-fun m!171509 () Bool)

(assert (=> b!173126 m!171509))

(assert (=> b!173125 m!171497))

(assert (=> b!173125 m!167827))

(assert (=> b!173125 m!171499))

(assert (=> b!173125 m!171499))

(assert (=> b!173125 m!171507))

(assert (=> b!173125 m!171507))

(assert (=> b!173125 m!171509))

(assert (=> b!173124 m!167827))

(declare-fun m!171511 () Bool)

(assert (=> b!173124 m!171511))

(assert (=> b!173127 m!171495))

(assert (=> b!173123 m!167827))

(assert (=> b!173123 m!171499))

(assert (=> b!173123 m!171497))

(assert (=> b!173123 m!171499))

(assert (=> b!173123 m!171501))

(assert (=> b!173123 m!171505))

(assert (=> b!173123 m!171501))

(assert (=> b!173123 m!171503))

(assert (=> d!43711 m!171495))

(assert (=> d!43711 m!167263))

(assert (=> d!43711 m!167827))

(assert (=> d!43711 m!171499))

(assert (=> d!43711 m!171499))

(assert (=> d!43711 m!171501))

(assert (=> d!43711 m!171501))

(declare-fun m!171513 () Bool)

(assert (=> d!43711 m!171513))

(declare-fun m!171515 () Bool)

(assert (=> d!43711 m!171515))

(declare-fun m!171517 () Bool)

(assert (=> d!43711 m!171517))

(assert (=> bm!7662 m!167827))

(declare-fun m!171519 () Bool)

(assert (=> bm!7662 m!171519))

(assert (=> b!171504 d!43711))

(declare-fun d!43713 () Bool)

(assert (=> d!43713 (dynLambda!1111 lambda!4912 (apply!423 lt!54114 0))))

(declare-fun lt!55432 () Unit!2548)

(assert (=> d!43713 (= lt!55432 (choose!1831 (list!1064 lt!54114) lambda!4912 (apply!423 lt!54114 0)))))

(declare-fun e!104926 () Bool)

(assert (=> d!43713 e!104926))

(declare-fun res!78254 () Bool)

(assert (=> d!43713 (=> (not res!78254) (not e!104926))))

(assert (=> d!43713 (= res!78254 (forall!573 (list!1064 lt!54114) lambda!4912))))

(assert (=> d!43713 (= (forallContained!90 (list!1064 lt!54114) lambda!4912 (apply!423 lt!54114 0)) lt!55432)))

(declare-fun b!173134 () Bool)

(assert (=> b!173134 (= e!104926 (contains!467 (list!1064 lt!54114) (apply!423 lt!54114 0)))))

(assert (= (and d!43713 res!78254) b!173134))

(declare-fun b_lambda!3973 () Bool)

(assert (=> (not b_lambda!3973) (not d!43713)))

(assert (=> d!43713 m!167819))

(declare-fun m!171521 () Bool)

(assert (=> d!43713 m!171521))

(assert (=> d!43713 m!167817))

(assert (=> d!43713 m!167819))

(declare-fun m!171523 () Bool)

(assert (=> d!43713 m!171523))

(assert (=> d!43713 m!167817))

(declare-fun m!171525 () Bool)

(assert (=> d!43713 m!171525))

(assert (=> b!173134 m!167817))

(assert (=> b!173134 m!167819))

(declare-fun m!171527 () Bool)

(assert (=> b!173134 m!171527))

(assert (=> b!171504 d!43713))

(assert (=> d!42853 d!43583))

(declare-fun d!43715 () Bool)

(assert (=> d!43715 (= (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170))))) (list!1067 (c!33818 (_1!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 separatorToken!170)))))))))

(declare-fun bs!17040 () Bool)

(assert (= bs!17040 d!43715))

(declare-fun m!171529 () Bool)

(assert (=> bs!17040 m!171529))

(assert (=> d!42853 d!43715))

(assert (=> d!42853 d!43579))

(declare-fun d!43717 () Bool)

(assert (=> d!43717 (= (list!1064 (singletonSeq!75 separatorToken!170)) (list!1067 (c!33818 (singletonSeq!75 separatorToken!170))))))

(declare-fun bs!17041 () Bool)

(assert (= bs!17041 d!43717))

(declare-fun m!171531 () Bool)

(assert (=> bs!17041 m!171531))

(assert (=> d!42853 d!43717))

(assert (=> d!42853 d!43581))

(assert (=> d!42853 d!42817))

(declare-fun d!43719 () Bool)

(declare-fun lt!55433 () Int)

(assert (=> d!43719 (= lt!55433 (size!2418 (list!1064 (_1!1629 lt!54423))))))

(assert (=> d!43719 (= lt!55433 (size!2419 (c!33818 (_1!1629 lt!54423))))))

(assert (=> d!43719 (= (size!2416 (_1!1629 lt!54423)) lt!55433)))

(declare-fun bs!17042 () Bool)

(assert (= bs!17042 d!43719))

(assert (=> bs!17042 m!168673))

(assert (=> bs!17042 m!168673))

(declare-fun m!171533 () Bool)

(assert (=> bs!17042 m!171533))

(declare-fun m!171535 () Bool)

(assert (=> bs!17042 m!171535))

(assert (=> d!42853 d!43719))

(declare-fun d!43721 () Bool)

(declare-fun nullableFct!31 (Regex!747) Bool)

(assert (=> d!43721 (= (nullable!108 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465))))) (nullableFct!31 (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465))))))))

(declare-fun bs!17043 () Bool)

(assert (= bs!17043 d!43721))

(declare-fun m!171581 () Bool)

(assert (=> bs!17043 m!171581))

(assert (=> b!171711 d!43721))

(assert (=> d!42679 d!43065))

(assert (=> d!42679 d!43017))

(declare-fun d!43723 () Bool)

(assert (=> d!43723 (isPrefix!230 lt!54143 lt!54147)))

(declare-fun lt!55434 () Unit!2548)

(assert (=> d!43723 (= lt!55434 (choose!1837 lt!54143 lt!54147))))

(assert (=> d!43723 (= (lemmaIsPrefixRefl!138 lt!54143 lt!54147) lt!55434)))

(declare-fun bs!17044 () Bool)

(assert (= bs!17044 d!43723))

(assert (=> bs!17044 m!167267))

(declare-fun m!171593 () Bool)

(assert (=> bs!17044 m!171593))

(assert (=> d!42679 d!43723))

(declare-fun d!43725 () Bool)

(declare-fun e!104928 () Bool)

(assert (=> d!43725 e!104928))

(declare-fun res!78256 () Bool)

(assert (=> d!43725 (=> res!78256 e!104928)))

(declare-fun lt!55435 () Bool)

(assert (=> d!43725 (= res!78256 (not lt!55435))))

(declare-fun e!104927 () Bool)

(assert (=> d!43725 (= lt!55435 e!104927)))

(declare-fun res!78255 () Bool)

(assert (=> d!43725 (=> res!78255 e!104927)))

(assert (=> d!43725 (= res!78255 ((_ is Nil!2918) lt!54143))))

(assert (=> d!43725 (= (isPrefix!230 lt!54143 lt!54147) lt!55435)))

(declare-fun b!173136 () Bool)

(declare-fun res!78257 () Bool)

(declare-fun e!104929 () Bool)

(assert (=> b!173136 (=> (not res!78257) (not e!104929))))

(assert (=> b!173136 (= res!78257 (= (head!606 lt!54143) (head!606 lt!54147)))))

(declare-fun b!173137 () Bool)

(assert (=> b!173137 (= e!104929 (isPrefix!230 (tail!346 lt!54143) (tail!346 lt!54147)))))

(declare-fun b!173135 () Bool)

(assert (=> b!173135 (= e!104927 e!104929)))

(declare-fun res!78258 () Bool)

(assert (=> b!173135 (=> (not res!78258) (not e!104929))))

(assert (=> b!173135 (= res!78258 (not ((_ is Nil!2918) lt!54147)))))

(declare-fun b!173138 () Bool)

(assert (=> b!173138 (= e!104928 (>= (size!2417 lt!54147) (size!2417 lt!54143)))))

(assert (= (and d!43725 (not res!78255)) b!173135))

(assert (= (and b!173135 res!78258) b!173136))

(assert (= (and b!173136 res!78257) b!173137))

(assert (= (and d!43725 (not res!78256)) b!173138))

(declare-fun m!171597 () Bool)

(assert (=> b!173136 m!171597))

(declare-fun m!171599 () Bool)

(assert (=> b!173136 m!171599))

(declare-fun m!171603 () Bool)

(assert (=> b!173137 m!171603))

(declare-fun m!171605 () Bool)

(assert (=> b!173137 m!171605))

(assert (=> b!173137 m!171603))

(assert (=> b!173137 m!171605))

(declare-fun m!171607 () Bool)

(assert (=> b!173137 m!171607))

(declare-fun m!171609 () Bool)

(assert (=> b!173138 m!171609))

(declare-fun m!171611 () Bool)

(assert (=> b!173138 m!171611))

(assert (=> d!42679 d!43725))

(declare-fun d!43731 () Bool)

(assert (=> d!43731 (= (isDefined!171 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))) (not (isEmpty!1257 (maxPrefixZipper!42 thiss!17480 rules!1920 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))))

(declare-fun bs!17045 () Bool)

(assert (= bs!17045 d!43731))

(assert (=> bs!17045 m!167251))

(declare-fun m!171613 () Bool)

(assert (=> bs!17045 m!171613))

(assert (=> d!42679 d!43731))

(assert (=> d!42679 d!42903))

(assert (=> d!42679 d!43023))

(declare-fun d!43733 () Bool)

(assert (=> d!43733 (= (isDefined!171 lt!54473) (not (isEmpty!1257 lt!54473)))))

(declare-fun bs!17046 () Bool)

(assert (= bs!17046 d!43733))

(assert (=> bs!17046 m!168199))

(assert (=> b!171741 d!43733))

(declare-fun b!173140 () Bool)

(declare-fun e!104932 () List!2928)

(assert (=> b!173140 (= e!104932 (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))

(declare-fun b!173143 () Bool)

(declare-fun lt!55437 () List!2928)

(declare-fun e!104931 () Bool)

(assert (=> b!173143 (= e!104931 (or (not (= (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))) Nil!2918)) (= lt!55437 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))))))

(declare-fun d!43735 () Bool)

(assert (=> d!43735 e!104931))

(declare-fun res!78260 () Bool)

(assert (=> d!43735 (=> (not res!78260) (not e!104931))))

(assert (=> d!43735 (= res!78260 (= (content!400 lt!55437) ((_ map or) (content!400 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (content!400 (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))))))

(assert (=> d!43735 (= lt!55437 e!104932)))

(declare-fun c!34310 () Bool)

(assert (=> d!43735 (= c!34310 ((_ is Nil!2918) (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))))

(assert (=> d!43735 (= (++!670 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))) (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920)))) lt!55437)))

(declare-fun b!173142 () Bool)

(declare-fun res!78261 () Bool)

(assert (=> b!173142 (=> (not res!78261) (not e!104931))))

(assert (=> b!173142 (= res!78261 (= (size!2417 lt!55437) (+ (size!2417 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (size!2417 (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))))))

(declare-fun b!173141 () Bool)

(assert (=> b!173141 (= e!104932 (Cons!2918 (h!8315 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (++!670 (t!27130 (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))))

(assert (= (and d!43735 c!34310) b!173140))

(assert (= (and d!43735 (not c!34310)) b!173141))

(assert (= (and d!43735 res!78260) b!173142))

(assert (= (and b!173142 res!78261) b!173143))

(declare-fun m!171617 () Bool)

(assert (=> d!43735 m!171617))

(assert (=> d!43735 m!167965))

(declare-fun m!171619 () Bool)

(assert (=> d!43735 m!171619))

(assert (=> d!43735 m!167967))

(declare-fun m!171621 () Bool)

(assert (=> d!43735 m!171621))

(declare-fun m!171623 () Bool)

(assert (=> b!173142 m!171623))

(assert (=> b!173142 m!167965))

(declare-fun m!171625 () Bool)

(assert (=> b!173142 m!171625))

(assert (=> b!173142 m!167967))

(declare-fun m!171627 () Bool)

(assert (=> b!173142 m!171627))

(assert (=> b!173141 m!167967))

(declare-fun m!171631 () Bool)

(assert (=> b!173141 m!171631))

(assert (=> b!171563 d!43735))

(declare-fun d!43741 () Bool)

(assert (=> d!43741 (= (list!1061 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))) (list!1065 (c!33816 (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))))

(declare-fun bs!17048 () Bool)

(assert (= bs!17048 d!43741))

(declare-fun m!171633 () Bool)

(assert (=> bs!17048 m!171633))

(assert (=> b!171563 d!43741))

(declare-fun d!43743 () Bool)

(declare-fun lt!55440 () BalanceConc!1744)

(assert (=> d!43743 (= (list!1061 lt!55440) (originalCharacters!566 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))

(assert (=> d!43743 (= lt!55440 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (value!19221 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))))

(assert (=> d!43743 (= (charsOf!178 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))) lt!55440)))

(declare-fun b_lambda!3975 () Bool)

(assert (=> (not b_lambda!3975) (not d!43743)))

(declare-fun t!27422 () Bool)

(declare-fun tb!6951 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27422) tb!6951))

(declare-fun b!173148 () Bool)

(declare-fun e!104935 () Bool)

(declare-fun tp!84513 () Bool)

(assert (=> b!173148 (= e!104935 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (value!19221 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) tp!84513))))

(declare-fun result!9678 () Bool)

(assert (=> tb!6951 (= result!9678 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (value!19221 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) e!104935))))

(assert (= tb!6951 b!173148))

(declare-fun m!171639 () Bool)

(assert (=> b!173148 m!171639))

(declare-fun m!171641 () Bool)

(assert (=> tb!6951 m!171641))

(assert (=> d!43743 t!27422))

(declare-fun b_and!11529 () Bool)

(assert (= b_and!11525 (and (=> t!27422 result!9678) b_and!11529)))

(declare-fun t!27424 () Bool)

(declare-fun tb!6953 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27424) tb!6953))

(declare-fun result!9680 () Bool)

(assert (= result!9680 result!9678))

(assert (=> d!43743 t!27424))

(declare-fun b_and!11531 () Bool)

(assert (= b_and!11523 (and (=> t!27424 result!9680) b_and!11531)))

(declare-fun tb!6955 () Bool)

(declare-fun t!27426 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27426) tb!6955))

(declare-fun result!9682 () Bool)

(assert (= result!9682 result!9678))

(assert (=> d!43743 t!27426))

(declare-fun b_and!11533 () Bool)

(assert (= b_and!11521 (and (=> t!27426 result!9682) b_and!11533)))

(declare-fun tb!6957 () Bool)

(declare-fun t!27428 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27428) tb!6957))

(declare-fun result!9684 () Bool)

(assert (= result!9684 result!9678))

(assert (=> d!43743 t!27428))

(declare-fun b_and!11535 () Bool)

(assert (= b_and!11527 (and (=> t!27428 result!9684) b_and!11535)))

(declare-fun t!27430 () Bool)

(declare-fun tb!6959 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27430) tb!6959))

(declare-fun result!9686 () Bool)

(assert (= result!9686 result!9678))

(assert (=> d!43743 t!27430))

(declare-fun b_and!11537 () Bool)

(assert (= b_and!11519 (and (=> t!27430 result!9686) b_and!11537)))

(declare-fun m!171643 () Bool)

(assert (=> d!43743 m!171643))

(declare-fun m!171645 () Bool)

(assert (=> d!43743 m!171645))

(assert (=> b!171563 d!43743))

(declare-fun d!43749 () Bool)

(declare-fun c!34313 () Bool)

(assert (=> d!43749 (= c!34313 ((_ is Cons!2920) (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))

(declare-fun e!104936 () List!2928)

(assert (=> d!43749 (= (printList!93 thiss!17480 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))) e!104936)))

(declare-fun b!173149 () Bool)

(assert (=> b!173149 (= e!104936 (++!670 (list!1061 (charsOf!178 (h!8317 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))))) (printList!93 thiss!17480 (t!27132 (t!27132 (Cons!2920 (h!8317 tokens!465) Nil!2920))))))))

(declare-fun b!173150 () Bool)

(assert (=> b!173150 (= e!104936 Nil!2918)))

(assert (= (and d!43749 c!34313) b!173149))

(assert (= (and d!43749 (not c!34313)) b!173150))

(declare-fun m!171647 () Bool)

(assert (=> b!173149 m!171647))

(assert (=> b!173149 m!171647))

(declare-fun m!171649 () Bool)

(assert (=> b!173149 m!171649))

(declare-fun m!171651 () Bool)

(assert (=> b!173149 m!171651))

(assert (=> b!173149 m!171649))

(assert (=> b!173149 m!171651))

(declare-fun m!171653 () Bool)

(assert (=> b!173149 m!171653))

(assert (=> b!171563 d!43749))

(assert (=> b!171532 d!43403))

(declare-fun b!173151 () Bool)

(declare-fun e!104937 () Bool)

(declare-fun e!104939 () Bool)

(assert (=> b!173151 (= e!104937 e!104939)))

(declare-fun c!34315 () Bool)

(assert (=> b!173151 (= c!34315 ((_ is IntegerValue!1636) (value!19221 (h!8317 (t!27132 tokens!465)))))))

(declare-fun b!173152 () Bool)

(declare-fun e!104938 () Bool)

(assert (=> b!173152 (= e!104938 (inv!15 (value!19221 (h!8317 (t!27132 tokens!465)))))))

(declare-fun b!173153 () Bool)

(assert (=> b!173153 (= e!104939 (inv!17 (value!19221 (h!8317 (t!27132 tokens!465)))))))

(declare-fun d!43751 () Bool)

(declare-fun c!34314 () Bool)

(assert (=> d!43751 (= c!34314 ((_ is IntegerValue!1635) (value!19221 (h!8317 (t!27132 tokens!465)))))))

(assert (=> d!43751 (= (inv!21 (value!19221 (h!8317 (t!27132 tokens!465)))) e!104937)))

(declare-fun b!173154 () Bool)

(declare-fun res!78262 () Bool)

(assert (=> b!173154 (=> res!78262 e!104938)))

(assert (=> b!173154 (= res!78262 (not ((_ is IntegerValue!1637) (value!19221 (h!8317 (t!27132 tokens!465))))))))

(assert (=> b!173154 (= e!104939 e!104938)))

(declare-fun b!173155 () Bool)

(assert (=> b!173155 (= e!104937 (inv!16 (value!19221 (h!8317 (t!27132 tokens!465)))))))

(assert (= (and d!43751 c!34314) b!173155))

(assert (= (and d!43751 (not c!34314)) b!173151))

(assert (= (and b!173151 c!34315) b!173153))

(assert (= (and b!173151 (not c!34315)) b!173154))

(assert (= (and b!173154 (not res!78262)) b!173152))

(declare-fun m!171655 () Bool)

(assert (=> b!173152 m!171655))

(declare-fun m!171657 () Bool)

(assert (=> b!173153 m!171657))

(declare-fun m!171659 () Bool)

(assert (=> b!173155 m!171659))

(assert (=> b!171756 d!43751))

(declare-fun d!43753 () Bool)

(assert (=> d!43753 (= (inv!17 (value!19221 separatorToken!170)) (= (charsToBigInt!1 (text!4263 (value!19221 separatorToken!170))) (value!19213 (value!19221 separatorToken!170))))))

(declare-fun bs!17050 () Bool)

(assert (= bs!17050 d!43753))

(declare-fun m!171661 () Bool)

(assert (=> bs!17050 m!171661))

(assert (=> b!171425 d!43753))

(assert (=> b!171520 d!42769))

(assert (=> b!171520 d!42771))

(declare-fun lt!55441 () Bool)

(declare-fun d!43755 () Bool)

(assert (=> d!43755 (= lt!55441 (isEmpty!1247 (list!1061 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))))))))))

(assert (=> d!43755 (= lt!55441 (isEmpty!1260 (c!33816 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465))))))))))

(assert (=> d!43755 (= (isEmpty!1256 (_2!1629 (lex!209 thiss!17480 rules!1920 (print!140 thiss!17480 (singletonSeq!75 (h!8317 tokens!465)))))) lt!55441)))

(declare-fun bs!17051 () Bool)

(assert (= bs!17051 d!43755))

(declare-fun m!171663 () Bool)

(assert (=> bs!17051 m!171663))

(assert (=> bs!17051 m!171663))

(declare-fun m!171665 () Bool)

(assert (=> bs!17051 m!171665))

(declare-fun m!171667 () Bool)

(assert (=> bs!17051 m!171667))

(assert (=> b!171493 d!43755))

(assert (=> b!171493 d!43469))

(assert (=> b!171493 d!43085))

(assert (=> b!171493 d!42833))

(declare-fun b!173177 () Bool)

(declare-fun e!104952 () Bool)

(declare-fun e!104953 () Bool)

(assert (=> b!173177 (= e!104952 e!104953)))

(declare-fun res!78270 () Bool)

(assert (=> b!173177 (= res!78270 (not ((_ is Cons!2919) rules!1920)))))

(assert (=> b!173177 (=> res!78270 e!104953)))

(declare-fun b!173178 () Bool)

(declare-fun e!104954 () Bool)

(declare-fun call!7670 () Bool)

(assert (=> b!173178 (= e!104954 call!7670)))

(declare-fun b!173179 () Bool)

(assert (=> b!173179 (= e!104953 call!7670)))

(declare-fun d!43757 () Bool)

(declare-fun c!34321 () Bool)

(assert (=> d!43757 (= c!34321 (and ((_ is Cons!2919) rules!1920) (not (= (isSeparator!523 (h!8316 rules!1920)) (isSeparator!523 (h!8316 rules!1920))))))))

(assert (=> d!43757 (= (ruleDisjointCharsFromAllFromOtherType!39 (h!8316 rules!1920) rules!1920) e!104952)))

(declare-fun b!173180 () Bool)

(assert (=> b!173180 (= e!104952 e!104954)))

(declare-fun res!78271 () Bool)

(declare-fun rulesUseDisjointChars!26 (Rule!846 Rule!846) Bool)

(assert (=> b!173180 (= res!78271 (rulesUseDisjointChars!26 (h!8316 rules!1920) (h!8316 rules!1920)))))

(assert (=> b!173180 (=> (not res!78271) (not e!104954))))

(declare-fun bm!7665 () Bool)

(assert (=> bm!7665 (= call!7670 (ruleDisjointCharsFromAllFromOtherType!39 (h!8316 rules!1920) (t!27131 rules!1920)))))

(assert (= (and d!43757 c!34321) b!173180))

(assert (= (and d!43757 (not c!34321)) b!173177))

(assert (= (and b!173180 res!78271) b!173178))

(assert (= (and b!173177 (not res!78270)) b!173179))

(assert (= (or b!173178 b!173179) bm!7665))

(declare-fun m!171681 () Bool)

(assert (=> b!173180 m!171681))

(declare-fun m!171683 () Bool)

(assert (=> bm!7665 m!171683))

(assert (=> b!171441 d!43757))

(declare-fun d!43765 () Bool)

(declare-fun lt!55443 () Int)

(assert (=> d!43765 (>= lt!55443 0)))

(declare-fun e!104961 () Int)

(assert (=> d!43765 (= lt!55443 e!104961)))

(declare-fun c!34324 () Bool)

(assert (=> d!43765 (= c!34324 ((_ is Nil!2918) (_2!1630 (get!801 lt!54473))))))

(assert (=> d!43765 (= (size!2417 (_2!1630 (get!801 lt!54473))) lt!55443)))

(declare-fun b!173185 () Bool)

(assert (=> b!173185 (= e!104961 0)))

(declare-fun b!173186 () Bool)

(assert (=> b!173186 (= e!104961 (+ 1 (size!2417 (t!27130 (_2!1630 (get!801 lt!54473))))))))

(assert (= (and d!43765 c!34324) b!173185))

(assert (= (and d!43765 (not c!34324)) b!173186))

(declare-fun m!171685 () Bool)

(assert (=> b!173186 m!171685))

(assert (=> b!171738 d!43765))

(assert (=> b!171738 d!42935))

(assert (=> b!171738 d!42981))

(declare-fun b!173187 () Bool)

(declare-fun e!104962 () List!2928)

(assert (=> b!173187 (= e!104962 Nil!2918)))

(declare-fun d!43767 () Bool)

(declare-fun c!34325 () Bool)

(assert (=> d!43767 (= c!34325 ((_ is Empty!868) (c!33816 (charsOf!178 separatorToken!170))))))

(assert (=> d!43767 (= (list!1065 (c!33816 (charsOf!178 separatorToken!170))) e!104962)))

(declare-fun b!173188 () Bool)

(declare-fun e!104963 () List!2928)

(assert (=> b!173188 (= e!104962 e!104963)))

(declare-fun c!34326 () Bool)

(assert (=> b!173188 (= c!34326 ((_ is Leaf!1469) (c!33816 (charsOf!178 separatorToken!170))))))

(declare-fun b!173190 () Bool)

(assert (=> b!173190 (= e!104963 (++!670 (list!1065 (left!2232 (c!33816 (charsOf!178 separatorToken!170)))) (list!1065 (right!2562 (c!33816 (charsOf!178 separatorToken!170))))))))

(declare-fun b!173189 () Bool)

(assert (=> b!173189 (= e!104963 (list!1066 (xs!3463 (c!33816 (charsOf!178 separatorToken!170)))))))

(assert (= (and d!43767 c!34325) b!173187))

(assert (= (and d!43767 (not c!34325)) b!173188))

(assert (= (and b!173188 c!34326) b!173189))

(assert (= (and b!173188 (not c!34326)) b!173190))

(declare-fun m!171687 () Bool)

(assert (=> b!173190 m!171687))

(declare-fun m!171689 () Bool)

(assert (=> b!173190 m!171689))

(assert (=> b!173190 m!171687))

(assert (=> b!173190 m!171689))

(declare-fun m!171691 () Bool)

(assert (=> b!173190 m!171691))

(declare-fun m!171693 () Bool)

(assert (=> b!173189 m!171693))

(assert (=> d!42777 d!43767))

(declare-fun d!43769 () Bool)

(declare-fun lt!55446 () Int)

(assert (=> d!43769 (= lt!55446 (size!2417 (list!1061 (_2!1629 lt!54176))))))

(declare-fun size!2423 (Conc!868) Int)

(assert (=> d!43769 (= lt!55446 (size!2423 (c!33816 (_2!1629 lt!54176))))))

(assert (=> d!43769 (= (size!2415 (_2!1629 lt!54176)) lt!55446)))

(declare-fun bs!17055 () Bool)

(assert (= bs!17055 d!43769))

(assert (=> bs!17055 m!167323))

(assert (=> bs!17055 m!167323))

(declare-fun m!171707 () Bool)

(assert (=> bs!17055 m!171707))

(declare-fun m!171709 () Bool)

(assert (=> bs!17055 m!171709))

(assert (=> b!171178 d!43769))

(declare-fun d!43775 () Bool)

(declare-fun lt!55447 () Int)

(assert (=> d!43775 (= lt!55447 (size!2417 (list!1061 (seqFromList!423 lt!54115))))))

(assert (=> d!43775 (= lt!55447 (size!2423 (c!33816 (seqFromList!423 lt!54115))))))

(assert (=> d!43775 (= (size!2415 (seqFromList!423 lt!54115)) lt!55447)))

(declare-fun bs!17056 () Bool)

(assert (= bs!17056 d!43775))

(assert (=> bs!17056 m!167159))

(assert (=> bs!17056 m!167313))

(assert (=> bs!17056 m!167313))

(assert (=> bs!17056 m!169771))

(declare-fun m!171713 () Bool)

(assert (=> bs!17056 m!171713))

(assert (=> b!171178 d!43775))

(declare-fun e!104976 () Bool)

(declare-fun b!173201 () Bool)

(declare-fun lt!55453 () Option!321)

(assert (=> b!173201 (= e!104976 (= (list!1061 (_2!1631 (get!802 lt!55453))) (_2!1630 (get!801 (maxPrefixZipper!42 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun b!173202 () Bool)

(declare-fun e!104971 () Option!321)

(declare-fun lt!55452 () Option!321)

(declare-fun lt!55451 () Option!321)

(assert (=> b!173202 (= e!104971 (ite (and ((_ is None!320) lt!55452) ((_ is None!320) lt!55451)) None!320 (ite ((_ is None!320) lt!55451) lt!55452 (ite ((_ is None!320) lt!55452) lt!55451 (ite (>= (size!2411 (_1!1631 (v!13763 lt!55452))) (size!2411 (_1!1631 (v!13763 lt!55451)))) lt!55452 lt!55451)))))))

(declare-fun call!7674 () Option!321)

(assert (=> b!173202 (= lt!55452 call!7674)))

(assert (=> b!173202 (= lt!55451 (maxPrefixZipperSequence!102 thiss!17480 (t!27131 (t!27131 rules!1920)) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(declare-fun b!173203 () Bool)

(declare-fun e!104972 () Bool)

(declare-fun e!104974 () Bool)

(assert (=> b!173203 (= e!104972 e!104974)))

(declare-fun res!78283 () Bool)

(assert (=> b!173203 (=> (not res!78283) (not e!104974))))

(assert (=> b!173203 (= res!78283 (= (_1!1631 (get!802 lt!55453)) (_1!1630 (get!801 (maxPrefix!139 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun d!43777 () Bool)

(declare-fun e!104975 () Bool)

(assert (=> d!43777 e!104975))

(declare-fun res!78281 () Bool)

(assert (=> d!43777 (=> (not res!78281) (not e!104975))))

(assert (=> d!43777 (= res!78281 (= (isDefined!172 lt!55453) (isDefined!171 (maxPrefixZipper!42 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465))))))))))

(assert (=> d!43777 (= lt!55453 e!104971)))

(declare-fun c!34330 () Bool)

(assert (=> d!43777 (= c!34330 (and ((_ is Cons!2919) (t!27131 rules!1920)) ((_ is Nil!2919) (t!27131 (t!27131 rules!1920)))))))

(declare-fun lt!55448 () Unit!2548)

(declare-fun lt!55449 () Unit!2548)

(assert (=> d!43777 (= lt!55448 lt!55449)))

(declare-fun lt!55450 () List!2928)

(declare-fun lt!55454 () List!2928)

(assert (=> d!43777 (isPrefix!230 lt!55450 lt!55454)))

(assert (=> d!43777 (= lt!55449 (lemmaIsPrefixRefl!138 lt!55450 lt!55454))))

(assert (=> d!43777 (= lt!55454 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!43777 (= lt!55450 (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(assert (=> d!43777 (rulesValidInductive!123 thiss!17480 (t!27131 rules!1920))))

(assert (=> d!43777 (= (maxPrefixZipperSequence!102 thiss!17480 (t!27131 rules!1920) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))) lt!55453)))

(declare-fun bm!7669 () Bool)

(assert (=> bm!7669 (= call!7674 (maxPrefixOneRuleZipperSequence!43 thiss!17480 (h!8316 (t!27131 rules!1920)) (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))

(declare-fun b!173204 () Bool)

(assert (=> b!173204 (= e!104974 (= (list!1061 (_2!1631 (get!802 lt!55453))) (_2!1630 (get!801 (maxPrefix!139 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(declare-fun b!173205 () Bool)

(declare-fun res!78285 () Bool)

(assert (=> b!173205 (=> (not res!78285) (not e!104975))))

(declare-fun e!104973 () Bool)

(assert (=> b!173205 (= res!78285 e!104973)))

(declare-fun res!78282 () Bool)

(assert (=> b!173205 (=> res!78282 e!104973)))

(assert (=> b!173205 (= res!78282 (not (isDefined!172 lt!55453)))))

(declare-fun b!173206 () Bool)

(assert (=> b!173206 (= e!104975 e!104972)))

(declare-fun res!78280 () Bool)

(assert (=> b!173206 (=> res!78280 e!104972)))

(assert (=> b!173206 (= res!78280 (not (isDefined!172 lt!55453)))))

(declare-fun b!173207 () Bool)

(assert (=> b!173207 (= e!104971 call!7674)))

(declare-fun b!173208 () Bool)

(assert (=> b!173208 (= e!104973 e!104976)))

(declare-fun res!78284 () Bool)

(assert (=> b!173208 (=> (not res!78284) (not e!104976))))

(assert (=> b!173208 (= res!78284 (= (_1!1631 (get!802 lt!55453)) (_1!1630 (get!801 (maxPrefixZipper!42 thiss!17480 (t!27131 rules!1920) (list!1061 (seqFromList!423 (originalCharacters!566 (h!8317 tokens!465)))))))))))

(assert (= (and d!43777 c!34330) b!173207))

(assert (= (and d!43777 (not c!34330)) b!173202))

(assert (= (or b!173207 b!173202) bm!7669))

(assert (= (and d!43777 res!78281) b!173205))

(assert (= (and b!173205 (not res!78282)) b!173208))

(assert (= (and b!173208 res!78284) b!173201))

(assert (= (and b!173205 res!78285) b!173206))

(assert (= (and b!173206 (not res!78280)) b!173203))

(assert (= (and b!173203 res!78283) b!173204))

(declare-fun m!171721 () Bool)

(assert (=> b!173206 m!171721))

(declare-fun m!171723 () Bool)

(assert (=> b!173208 m!171723))

(assert (=> b!173208 m!167105))

(assert (=> b!173208 m!167249))

(assert (=> b!173208 m!167249))

(assert (=> b!173208 m!168599))

(assert (=> b!173208 m!168599))

(declare-fun m!171725 () Bool)

(assert (=> b!173208 m!171725))

(assert (=> b!173204 m!167105))

(assert (=> b!173204 m!167249))

(declare-fun m!171727 () Bool)

(assert (=> b!173204 m!171727))

(assert (=> b!173204 m!171723))

(assert (=> b!173204 m!167249))

(assert (=> b!173204 m!168667))

(assert (=> b!173204 m!168667))

(declare-fun m!171729 () Bool)

(assert (=> b!173204 m!171729))

(assert (=> b!173203 m!171723))

(assert (=> b!173203 m!167105))

(assert (=> b!173203 m!167249))

(assert (=> b!173203 m!167249))

(assert (=> b!173203 m!168667))

(assert (=> b!173203 m!168667))

(assert (=> b!173203 m!171729))

(assert (=> b!173202 m!167105))

(declare-fun m!171731 () Bool)

(assert (=> b!173202 m!171731))

(assert (=> b!173205 m!171721))

(assert (=> b!173201 m!167105))

(assert (=> b!173201 m!167249))

(assert (=> b!173201 m!171723))

(assert (=> b!173201 m!167249))

(assert (=> b!173201 m!168599))

(assert (=> b!173201 m!171727))

(assert (=> b!173201 m!168599))

(assert (=> b!173201 m!171725))

(assert (=> d!43777 m!171721))

(assert (=> d!43777 m!168691))

(assert (=> d!43777 m!167105))

(assert (=> d!43777 m!167249))

(assert (=> d!43777 m!167249))

(assert (=> d!43777 m!168599))

(assert (=> d!43777 m!168599))

(declare-fun m!171745 () Bool)

(assert (=> d!43777 m!171745))

(declare-fun m!171747 () Bool)

(assert (=> d!43777 m!171747))

(declare-fun m!171749 () Bool)

(assert (=> d!43777 m!171749))

(assert (=> bm!7669 m!167105))

(declare-fun m!171753 () Bool)

(assert (=> bm!7669 m!171753))

(assert (=> b!171138 d!43777))

(declare-fun d!43785 () Bool)

(declare-fun lt!55460 () BalanceConc!1744)

(assert (=> d!43785 (= (list!1061 lt!55460) (printList!93 thiss!17480 (list!1064 (singletonSeq!75 (h!8317 (t!27132 tokens!465))))))))

(assert (=> d!43785 (= lt!55460 (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 tokens!465))) 0 (BalanceConc!1745 Empty!868)))))

(assert (=> d!43785 (= (print!140 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 tokens!465)))) lt!55460)))

(declare-fun bs!17059 () Bool)

(assert (= bs!17059 d!43785))

(declare-fun m!171761 () Bool)

(assert (=> bs!17059 m!171761))

(assert (=> bs!17059 m!167479))

(declare-fun m!171763 () Bool)

(assert (=> bs!17059 m!171763))

(assert (=> bs!17059 m!171763))

(declare-fun m!171765 () Bool)

(assert (=> bs!17059 m!171765))

(assert (=> bs!17059 m!167479))

(assert (=> bs!17059 m!167483))

(assert (=> b!171304 d!43785))

(declare-fun d!43787 () Bool)

(declare-fun e!104980 () Bool)

(assert (=> d!43787 e!104980))

(declare-fun res!78293 () Bool)

(assert (=> d!43787 (=> (not res!78293) (not e!104980))))

(declare-fun lt!55461 () BalanceConc!1746)

(assert (=> d!43787 (= res!78293 (= (list!1064 lt!55461) (Cons!2920 (h!8317 (t!27132 tokens!465)) Nil!2920)))))

(assert (=> d!43787 (= lt!55461 (singleton!39 (h!8317 (t!27132 tokens!465))))))

(assert (=> d!43787 (= (singletonSeq!75 (h!8317 (t!27132 tokens!465))) lt!55461)))

(declare-fun b!173218 () Bool)

(assert (=> b!173218 (= e!104980 (isBalanced!240 (c!33818 lt!55461)))))

(assert (= (and d!43787 res!78293) b!173218))

(declare-fun m!171773 () Bool)

(assert (=> d!43787 m!171773))

(declare-fun m!171775 () Bool)

(assert (=> d!43787 m!171775))

(declare-fun m!171777 () Bool)

(assert (=> b!173218 m!171777))

(assert (=> b!171304 d!43787))

(declare-fun d!43791 () Bool)

(declare-fun lt!55470 () BalanceConc!1744)

(assert (=> d!43791 (= (list!1061 lt!55470) (printListTailRec!58 thiss!17480 (dropList!90 (singletonSeq!75 (h!8317 (t!27132 tokens!465))) 0) (list!1061 (BalanceConc!1745 Empty!868))))))

(declare-fun e!104983 () BalanceConc!1744)

(assert (=> d!43791 (= lt!55470 e!104983)))

(declare-fun c!34333 () Bool)

(assert (=> d!43791 (= c!34333 (>= 0 (size!2416 (singletonSeq!75 (h!8317 (t!27132 tokens!465))))))))

(declare-fun e!104982 () Bool)

(assert (=> d!43791 e!104982))

(declare-fun res!78294 () Bool)

(assert (=> d!43791 (=> (not res!78294) (not e!104982))))

(assert (=> d!43791 (= res!78294 (>= 0 0))))

(assert (=> d!43791 (= (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 tokens!465))) 0 (BalanceConc!1745 Empty!868)) lt!55470)))

(declare-fun b!173221 () Bool)

(assert (=> b!173221 (= e!104982 (<= 0 (size!2416 (singletonSeq!75 (h!8317 (t!27132 tokens!465))))))))

(declare-fun b!173222 () Bool)

(assert (=> b!173222 (= e!104983 (BalanceConc!1745 Empty!868))))

(declare-fun b!173223 () Bool)

(assert (=> b!173223 (= e!104983 (printTailRec!103 thiss!17480 (singletonSeq!75 (h!8317 (t!27132 tokens!465))) (+ 0 1) (++!672 (BalanceConc!1745 Empty!868) (charsOf!178 (apply!423 (singletonSeq!75 (h!8317 (t!27132 tokens!465))) 0)))))))

(declare-fun lt!55468 () List!2930)

(assert (=> b!173223 (= lt!55468 (list!1064 (singletonSeq!75 (h!8317 (t!27132 tokens!465)))))))

(declare-fun lt!55465 () Unit!2548)

(assert (=> b!173223 (= lt!55465 (lemmaDropApply!130 lt!55468 0))))

(assert (=> b!173223 (= (head!604 (drop!143 lt!55468 0)) (apply!422 lt!55468 0))))

(declare-fun lt!55467 () Unit!2548)

(assert (=> b!173223 (= lt!55467 lt!55465)))

(declare-fun lt!55464 () List!2930)

(assert (=> b!173223 (= lt!55464 (list!1064 (singletonSeq!75 (h!8317 (t!27132 tokens!465)))))))

(declare-fun lt!55469 () Unit!2548)

(assert (=> b!173223 (= lt!55469 (lemmaDropTail!122 lt!55464 0))))

(assert (=> b!173223 (= (tail!344 (drop!143 lt!55464 0)) (drop!143 lt!55464 (+ 0 1)))))

(declare-fun lt!55466 () Unit!2548)

(assert (=> b!173223 (= lt!55466 lt!55469)))

(assert (= (and d!43791 res!78294) b!173221))

(assert (= (and d!43791 c!34333) b!173222))

(assert (= (and d!43791 (not c!34333)) b!173223))

(declare-fun m!171791 () Bool)

(assert (=> d!43791 m!171791))

(assert (=> d!43791 m!167479))

(declare-fun m!171793 () Bool)

(assert (=> d!43791 m!171793))

(declare-fun m!171795 () Bool)

(assert (=> d!43791 m!171795))

(assert (=> d!43791 m!167907))

(declare-fun m!171797 () Bool)

(assert (=> d!43791 m!171797))

(assert (=> d!43791 m!167907))

(assert (=> d!43791 m!167479))

(assert (=> d!43791 m!171795))

(assert (=> b!173221 m!167479))

(assert (=> b!173221 m!171793))

(declare-fun m!171799 () Bool)

(assert (=> b!173223 m!171799))

(declare-fun m!171801 () Bool)

(assert (=> b!173223 m!171801))

(declare-fun m!171803 () Bool)

(assert (=> b!173223 m!171803))

(declare-fun m!171805 () Bool)

(assert (=> b!173223 m!171805))

(assert (=> b!173223 m!167479))

(assert (=> b!173223 m!171803))

(assert (=> b!173223 m!167479))

(assert (=> b!173223 m!171763))

(declare-fun m!171807 () Bool)

(assert (=> b!173223 m!171807))

(declare-fun m!171809 () Bool)

(assert (=> b!173223 m!171809))

(assert (=> b!173223 m!171807))

(declare-fun m!171811 () Bool)

(assert (=> b!173223 m!171811))

(assert (=> b!173223 m!171799))

(declare-fun m!171813 () Bool)

(assert (=> b!173223 m!171813))

(assert (=> b!173223 m!171805))

(declare-fun m!171815 () Bool)

(assert (=> b!173223 m!171815))

(assert (=> b!173223 m!167479))

(assert (=> b!173223 m!171815))

(declare-fun m!171817 () Bool)

(assert (=> b!173223 m!171817))

(declare-fun m!171819 () Bool)

(assert (=> b!173223 m!171819))

(declare-fun m!171821 () Bool)

(assert (=> b!173223 m!171821))

(assert (=> b!171304 d!43791))

(declare-fun e!104987 () Bool)

(declare-fun b!173230 () Bool)

(declare-fun lt!55478 () Token!790)

(assert (=> b!173230 (= e!104987 (= (rule!1030 lt!55478) (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!55478))))))))

(declare-fun b!173229 () Bool)

(declare-fun res!78296 () Bool)

(assert (=> b!173229 (=> (not res!78296) (not e!104987))))

(assert (=> b!173229 (= res!78296 (matchR!85 (regex!523 (get!804 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!55478))))) (list!1061 (charsOf!178 lt!55478))))))

(declare-fun b!173232 () Bool)

(declare-fun e!104988 () Unit!2548)

(declare-fun Unit!2604 () Unit!2548)

(assert (=> b!173232 (= e!104988 Unit!2604)))

(declare-fun b!173231 () Bool)

(declare-fun Unit!2605 () Unit!2548)

(assert (=> b!173231 (= e!104988 Unit!2605)))

(declare-fun lt!55485 () List!2928)

(assert (=> b!173231 (= lt!55485 (++!670 call!7483 lt!54225))))

(declare-fun lt!55473 () Unit!2548)

(assert (=> b!173231 (= lt!55473 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!23 thiss!17480 (rule!1030 lt!55478) rules!1920 lt!55485))))

(assert (=> b!173231 (isEmpty!1257 (maxPrefixOneRule!73 thiss!17480 (rule!1030 lt!55478) lt!55485))))

(declare-fun lt!55482 () Unit!2548)

(assert (=> b!173231 (= lt!55482 lt!55473)))

(declare-fun lt!55487 () List!2928)

(assert (=> b!173231 (= lt!55487 (list!1061 (charsOf!178 lt!55478)))))

(declare-fun lt!55483 () Unit!2548)

(assert (=> b!173231 (= lt!55483 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!23 thiss!17480 (rule!1030 lt!55478) lt!55487 (++!670 call!7483 lt!54225)))))

(assert (=> b!173231 (not (matchR!85 (regex!523 (rule!1030 lt!55478)) lt!55487))))

(declare-fun lt!55481 () Unit!2548)

(assert (=> b!173231 (= lt!55481 lt!55483)))

(assert (=> b!173231 false))

(declare-fun d!43801 () Bool)

(assert (=> d!43801 (isDefined!171 (maxPrefix!139 thiss!17480 rules!1920 (++!670 call!7483 lt!54225)))))

(declare-fun lt!55486 () Unit!2548)

(assert (=> d!43801 (= lt!55486 e!104988)))

(declare-fun c!34336 () Bool)

(assert (=> d!43801 (= c!34336 (isEmpty!1257 (maxPrefix!139 thiss!17480 rules!1920 (++!670 call!7483 lt!54225))))))

(declare-fun lt!55476 () Unit!2548)

(declare-fun lt!55484 () Unit!2548)

(assert (=> d!43801 (= lt!55476 lt!55484)))

(assert (=> d!43801 e!104987))

(declare-fun res!78297 () Bool)

(assert (=> d!43801 (=> (not res!78297) (not e!104987))))

(assert (=> d!43801 (= res!78297 (isDefined!173 (getRuleFromTag!23 thiss!17480 rules!1920 (tag!701 (rule!1030 lt!55478)))))))

(assert (=> d!43801 (= lt!55484 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!23 thiss!17480 rules!1920 call!7483 lt!55478))))

(declare-fun lt!55474 () Unit!2548)

(declare-fun lt!55480 () Unit!2548)

(assert (=> d!43801 (= lt!55474 lt!55480)))

(declare-fun lt!55488 () List!2928)

(assert (=> d!43801 (isPrefix!230 lt!55488 (++!670 call!7483 lt!54225))))

(assert (=> d!43801 (= lt!55480 (lemmaPrefixStaysPrefixWhenAddingToSuffix!23 lt!55488 call!7483 lt!54225))))

(assert (=> d!43801 (= lt!55488 (list!1061 (charsOf!178 lt!55478)))))

(declare-fun lt!55472 () Unit!2548)

(declare-fun lt!55477 () Unit!2548)

(assert (=> d!43801 (= lt!55472 lt!55477)))

(declare-fun lt!55479 () List!2928)

(declare-fun lt!55475 () List!2928)

(assert (=> d!43801 (isPrefix!230 lt!55479 (++!670 lt!55479 lt!55475))))

(assert (=> d!43801 (= lt!55477 (lemmaConcatTwoListThenFirstIsPrefix!127 lt!55479 lt!55475))))

(assert (=> d!43801 (= lt!55475 (_2!1630 (get!801 (maxPrefix!139 thiss!17480 rules!1920 call!7483))))))

(assert (=> d!43801 (= lt!55479 (list!1061 (charsOf!178 lt!55478)))))

(assert (=> d!43801 (= lt!55478 (head!604 (list!1064 (_1!1629 (lex!209 thiss!17480 rules!1920 (seqFromList!423 call!7483))))))))

(assert (=> d!43801 (not (isEmpty!1248 rules!1920))))

(assert (=> d!43801 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!37 thiss!17480 rules!1920 call!7483 lt!54225) lt!55486)))

(assert (= (and d!43801 res!78297) b!173229))

(assert (= (and b!173229 res!78296) b!173230))

(assert (= (and d!43801 c!34336) b!173231))

(assert (= (and d!43801 (not c!34336)) b!173232))

(declare-fun m!171833 () Bool)

(assert (=> b!173230 m!171833))

(assert (=> b!173230 m!171833))

(declare-fun m!171835 () Bool)

(assert (=> b!173230 m!171835))

(assert (=> b!173229 m!171833))

(assert (=> b!173229 m!171833))

(assert (=> b!173229 m!171835))

(declare-fun m!171837 () Bool)

(assert (=> b!173229 m!171837))

(declare-fun m!171839 () Bool)

(assert (=> b!173229 m!171839))

(declare-fun m!171841 () Bool)

(assert (=> b!173229 m!171841))

(assert (=> b!173229 m!171837))

(assert (=> b!173229 m!171841))

(declare-fun m!171843 () Bool)

(assert (=> b!173231 m!171843))

(declare-fun m!171845 () Bool)

(assert (=> b!173231 m!171845))

(declare-fun m!171847 () Bool)

(assert (=> b!173231 m!171847))

(assert (=> b!173231 m!171843))

(declare-fun m!171849 () Bool)

(assert (=> b!173231 m!171849))

(declare-fun m!171851 () Bool)

(assert (=> b!173231 m!171851))

(declare-fun m!171853 () Bool)

(assert (=> b!173231 m!171853))

(assert (=> b!173231 m!171841))

(assert (=> b!173231 m!171837))

(assert (=> b!173231 m!171849))

(assert (=> b!173231 m!171841))

(declare-fun m!171855 () Bool)

(assert (=> d!43801 m!171855))

(declare-fun m!171857 () Bool)

(assert (=> d!43801 m!171857))

(assert (=> d!43801 m!171833))

(assert (=> d!43801 m!171833))

(declare-fun m!171859 () Bool)

(assert (=> d!43801 m!171859))

(assert (=> d!43801 m!167165))

(declare-fun m!171861 () Bool)

(assert (=> d!43801 m!171861))

(declare-fun m!171863 () Bool)

(assert (=> d!43801 m!171863))

(declare-fun m!171865 () Bool)

(assert (=> d!43801 m!171865))

(assert (=> d!43801 m!171849))

(declare-fun m!171867 () Bool)

(assert (=> d!43801 m!171867))

(assert (=> d!43801 m!171855))

(declare-fun m!171869 () Bool)

(assert (=> d!43801 m!171869))

(assert (=> d!43801 m!171863))

(declare-fun m!171871 () Bool)

(assert (=> d!43801 m!171871))

(assert (=> d!43801 m!171841))

(assert (=> d!43801 m!171837))

(declare-fun m!171873 () Bool)

(assert (=> d!43801 m!171873))

(assert (=> d!43801 m!171849))

(declare-fun m!171875 () Bool)

(assert (=> d!43801 m!171875))

(assert (=> d!43801 m!171867))

(declare-fun m!171877 () Bool)

(assert (=> d!43801 m!171877))

(assert (=> d!43801 m!171857))

(declare-fun m!171879 () Bool)

(assert (=> d!43801 m!171879))

(assert (=> d!43801 m!171849))

(assert (=> d!43801 m!171861))

(declare-fun m!171883 () Bool)

(assert (=> d!43801 m!171883))

(declare-fun m!171885 () Bool)

(assert (=> d!43801 m!171885))

(assert (=> d!43801 m!171867))

(declare-fun m!171887 () Bool)

(assert (=> d!43801 m!171887))

(assert (=> d!43801 m!171841))

(assert (=> b!171304 d!43801))

(declare-fun lt!55491 () BalanceConc!1744)

(declare-fun d!43811 () Bool)

(assert (=> d!43811 (= (list!1061 lt!55491) (originalCharacters!566 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))))))

(assert (=> d!43811 (= lt!55491 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))))) (value!19221 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))))

(assert (=> d!43811 (= (charsOf!178 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))) lt!55491)))

(declare-fun b_lambda!3983 () Bool)

(assert (=> (not b_lambda!3983) (not d!43811)))

(declare-fun t!27432 () Bool)

(declare-fun tb!6961 () Bool)

(assert (=> (and b!171791 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27432) tb!6961))

(declare-fun tp!84514 () Bool)

(declare-fun e!104995 () Bool)

(declare-fun b!173245 () Bool)

(assert (=> b!173245 (= e!104995 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))))) (value!19221 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) tp!84514))))

(declare-fun result!9688 () Bool)

(assert (=> tb!6961 (= result!9688 (and (inv!3748 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))))) (value!19221 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465)))))) e!104995))))

(assert (= tb!6961 b!173245))

(declare-fun m!171891 () Bool)

(assert (=> b!173245 m!171891))

(declare-fun m!171893 () Bool)

(assert (=> tb!6961 m!171893))

(assert (=> d!43811 t!27432))

(declare-fun b_and!11539 () Bool)

(assert (= b_and!11529 (and (=> t!27432 result!9688) b_and!11539)))

(declare-fun t!27434 () Bool)

(declare-fun tb!6963 () Bool)

(assert (=> (and b!171041 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27434) tb!6963))

(declare-fun result!9690 () Bool)

(assert (= result!9690 result!9688))

(assert (=> d!43811 t!27434))

(declare-fun b_and!11541 () Bool)

(assert (= b_and!11537 (and (=> t!27434 result!9690) b_and!11541)))

(declare-fun tb!6965 () Bool)

(declare-fun t!27436 () Bool)

(assert (=> (and b!171758 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27436) tb!6965))

(declare-fun result!9692 () Bool)

(assert (= result!9692 result!9688))

(assert (=> d!43811 t!27436))

(declare-fun b_and!11543 () Bool)

(assert (= b_and!11531 (and (=> t!27436 result!9692) b_and!11543)))

(declare-fun t!27438 () Bool)

(declare-fun tb!6967 () Bool)

(assert (=> (and b!171058 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27438) tb!6967))

(declare-fun result!9694 () Bool)

(assert (= result!9694 result!9688))

(assert (=> d!43811 t!27438))

(declare-fun b_and!11545 () Bool)

(assert (= b_and!11535 (and (=> t!27438 result!9694) b_and!11545)))

(declare-fun t!27440 () Bool)

(declare-fun tb!6969 () Bool)

(assert (=> (and b!171036 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27440) tb!6969))

(declare-fun result!9696 () Bool)

(assert (= result!9696 result!9688))

(assert (=> d!43811 t!27440))

(declare-fun b_and!11547 () Bool)

(assert (= b_and!11533 (and (=> t!27440 result!9696) b_and!11547)))

(declare-fun m!171915 () Bool)

(assert (=> d!43811 m!171915))

(declare-fun m!171917 () Bool)

(assert (=> d!43811 m!171917))

(assert (=> bm!7532 d!43811))

(declare-fun b!173247 () Bool)

(declare-fun e!104996 () Bool)

(declare-fun tp!84515 () Bool)

(declare-fun tp!84518 () Bool)

(assert (=> b!173247 (= e!104996 (and tp!84515 tp!84518))))

(declare-fun b!173249 () Bool)

(declare-fun tp!84516 () Bool)

(declare-fun tp!84519 () Bool)

(assert (=> b!173249 (= e!104996 (and tp!84516 tp!84519))))

(declare-fun b!173248 () Bool)

(declare-fun tp!84517 () Bool)

(assert (=> b!173248 (= e!104996 tp!84517)))

(declare-fun b!173246 () Bool)

(assert (=> b!173246 (= e!104996 tp_is_empty!1659)))

(assert (=> b!171797 (= tp!84488 e!104996)))

(assert (= (and b!171797 ((_ is ElementMatch!747) (regOne!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173246))

(assert (= (and b!171797 ((_ is Concat!1293) (regOne!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173247))

(assert (= (and b!171797 ((_ is Star!747) (regOne!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173248))

(assert (= (and b!171797 ((_ is Union!747) (regOne!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173249))

(declare-fun b!173251 () Bool)

(declare-fun e!104997 () Bool)

(declare-fun tp!84520 () Bool)

(declare-fun tp!84523 () Bool)

(assert (=> b!173251 (= e!104997 (and tp!84520 tp!84523))))

(declare-fun b!173253 () Bool)

(declare-fun tp!84521 () Bool)

(declare-fun tp!84524 () Bool)

(assert (=> b!173253 (= e!104997 (and tp!84521 tp!84524))))

(declare-fun b!173252 () Bool)

(declare-fun tp!84522 () Bool)

(assert (=> b!173252 (= e!104997 tp!84522)))

(declare-fun b!173250 () Bool)

(assert (=> b!173250 (= e!104997 tp_is_empty!1659)))

(assert (=> b!171797 (= tp!84491 e!104997)))

(assert (= (and b!171797 ((_ is ElementMatch!747) (regTwo!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173250))

(assert (= (and b!171797 ((_ is Concat!1293) (regTwo!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173251))

(assert (= (and b!171797 ((_ is Star!747) (regTwo!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173252))

(assert (= (and b!171797 ((_ is Union!747) (regTwo!2006 (regex!523 (rule!1030 separatorToken!170))))) b!173253))

(declare-fun b!173255 () Bool)

(declare-fun e!104998 () Bool)

(declare-fun tp!84525 () Bool)

(declare-fun tp!84528 () Bool)

(assert (=> b!173255 (= e!104998 (and tp!84525 tp!84528))))

(declare-fun b!173257 () Bool)

(declare-fun tp!84526 () Bool)

(declare-fun tp!84529 () Bool)

(assert (=> b!173257 (= e!104998 (and tp!84526 tp!84529))))

(declare-fun b!173256 () Bool)

(declare-fun tp!84527 () Bool)

(assert (=> b!173256 (= e!104998 tp!84527)))

(declare-fun b!173254 () Bool)

(assert (=> b!173254 (= e!104998 tp_is_empty!1659)))

(assert (=> b!171790 (= tp!84482 e!104998)))

(assert (= (and b!171790 ((_ is ElementMatch!747) (regex!523 (h!8316 (t!27131 rules!1920))))) b!173254))

(assert (= (and b!171790 ((_ is Concat!1293) (regex!523 (h!8316 (t!27131 rules!1920))))) b!173255))

(assert (= (and b!171790 ((_ is Star!747) (regex!523 (h!8316 (t!27131 rules!1920))))) b!173256))

(assert (= (and b!171790 ((_ is Union!747) (regex!523 (h!8316 (t!27131 rules!1920))))) b!173257))

(declare-fun b!173258 () Bool)

(declare-fun e!104999 () Bool)

(declare-fun tp!84530 () Bool)

(assert (=> b!173258 (= e!104999 (and tp_is_empty!1659 tp!84530))))

(assert (=> b!171763 (= tp!84455 e!104999)))

(assert (= (and b!171763 ((_ is Cons!2918) (t!27130 (originalCharacters!566 separatorToken!170)))) b!173258))

(declare-fun b!173261 () Bool)

(declare-fun b_free!6637 () Bool)

(declare-fun b_next!6637 () Bool)

(assert (=> b!173261 (= b_free!6637 (not b_next!6637))))

(declare-fun t!27442 () Bool)

(declare-fun tb!6971 () Bool)

(assert (=> (and b!173261 (= (toValue!1186 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27442) tb!6971))

(declare-fun result!9698 () Bool)

(assert (= result!9698 result!9464))

(assert (=> d!42937 t!27442))

(declare-fun tp!84533 () Bool)

(declare-fun b_and!11549 () Bool)

(assert (=> b!173261 (= tp!84533 (and (=> t!27442 result!9698) b_and!11549))))

(declare-fun b_free!6639 () Bool)

(declare-fun b_next!6639 () Bool)

(assert (=> b!173261 (= b_free!6639 (not b_next!6639))))

(declare-fun tb!6973 () Bool)

(declare-fun t!27444 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27444) tb!6973))

(declare-fun result!9700 () Bool)

(assert (= result!9700 result!9516))

(assert (=> d!43025 t!27444))

(declare-fun tb!6975 () Bool)

(declare-fun t!27446 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27446) tb!6975))

(declare-fun result!9702 () Bool)

(assert (= result!9702 result!9678))

(assert (=> d!43743 t!27446))

(declare-fun tb!6977 () Bool)

(declare-fun t!27448 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27448) tb!6977))

(declare-fun result!9704 () Bool)

(assert (= result!9704 result!9536))

(assert (=> b!172770 t!27448))

(declare-fun tb!6979 () Bool)

(declare-fun t!27450 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27450) tb!6979))

(declare-fun result!9706 () Bool)

(assert (= result!9706 result!9606))

(assert (=> d!43315 t!27450))

(declare-fun tb!6981 () Bool)

(declare-fun t!27452 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27452) tb!6981))

(declare-fun result!9708 () Bool)

(assert (= result!9708 result!9426))

(assert (=> d!42767 t!27452))

(declare-fun t!27454 () Bool)

(declare-fun tb!6983 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27454) tb!6983))

(declare-fun result!9710 () Bool)

(assert (= result!9710 result!9648))

(assert (=> d!43571 t!27454))

(declare-fun t!27456 () Bool)

(declare-fun tb!6985 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27456) tb!6985))

(declare-fun result!9712 () Bool)

(assert (= result!9712 result!9412))

(assert (=> b!171188 t!27456))

(declare-fun tb!6987 () Bool)

(declare-fun t!27458 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27458) tb!6987))

(declare-fun result!9714 () Bool)

(assert (= result!9714 result!9506))

(assert (=> d!43001 t!27458))

(declare-fun tb!6989 () Bool)

(declare-fun t!27460 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27460) tb!6989))

(declare-fun result!9716 () Bool)

(assert (= result!9716 result!9688))

(assert (=> d!43811 t!27460))

(declare-fun t!27462 () Bool)

(declare-fun tb!6991 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27462) tb!6991))

(declare-fun result!9718 () Bool)

(assert (= result!9718 result!9476))

(assert (=> d!42975 t!27462))

(declare-fun t!27464 () Bool)

(declare-fun tb!6993 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27464) tb!6993))

(declare-fun result!9720 () Bool)

(assert (= result!9720 result!9526))

(assert (=> d!43083 t!27464))

(declare-fun t!27466 () Bool)

(declare-fun tb!6995 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27466) tb!6995))

(declare-fun result!9722 () Bool)

(assert (= result!9722 result!9566))

(assert (=> d!43197 t!27466))

(assert (=> b!171494 t!27452))

(declare-fun t!27468 () Bool)

(declare-fun tb!6997 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27468) tb!6997))

(declare-fun result!9724 () Bool)

(assert (= result!9724 result!9668))

(assert (=> d!43701 t!27468))

(declare-fun t!27470 () Bool)

(declare-fun tb!6999 () Bool)

(assert (=> (and b!173261 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27470) tb!6999))

(declare-fun result!9726 () Bool)

(assert (= result!9726 result!9556))

(assert (=> d!43181 t!27470))

(assert (=> d!42771 t!27456))

(assert (=> d!43111 t!27448))

(declare-fun b_and!11551 () Bool)

(declare-fun tp!84532 () Bool)

(assert (=> b!173261 (= tp!84532 (and (=> t!27450 result!9706) (=> t!27466 result!9722) (=> t!27456 result!9712) (=> t!27462 result!9718) (=> t!27458 result!9714) (=> t!27464 result!9720) (=> t!27448 result!9704) (=> t!27446 result!9702) (=> t!27468 result!9724) (=> t!27444 result!9700) (=> t!27454 result!9710) (=> t!27452 result!9708) (=> t!27460 result!9716) (=> t!27470 result!9726) b_and!11551))))

(declare-fun e!105000 () Bool)

(assert (=> b!173261 (= e!105000 (and tp!84533 tp!84532))))

(declare-fun b!173260 () Bool)

(declare-fun e!105002 () Bool)

(declare-fun tp!84534 () Bool)

(assert (=> b!173260 (= e!105002 (and tp!84534 (inv!3740 (tag!701 (h!8316 (t!27131 (t!27131 rules!1920))))) (inv!3744 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) e!105000))))

(declare-fun b!173259 () Bool)

(declare-fun e!105001 () Bool)

(declare-fun tp!84531 () Bool)

(assert (=> b!173259 (= e!105001 (and e!105002 tp!84531))))

(assert (=> b!171789 (= tp!84479 e!105001)))

(assert (= b!173260 b!173261))

(assert (= b!173259 b!173260))

(assert (= (and b!171789 ((_ is Cons!2919) (t!27131 (t!27131 rules!1920)))) b!173259))

(declare-fun m!171933 () Bool)

(assert (=> b!173260 m!171933))

(declare-fun m!171935 () Bool)

(assert (=> b!173260 m!171935))

(declare-fun b!173267 () Bool)

(declare-fun e!105011 () Bool)

(assert (=> b!173267 (= e!105011 true)))

(declare-fun b!173266 () Bool)

(declare-fun e!105010 () Bool)

(assert (=> b!173266 (= e!105010 e!105011)))

(declare-fun b!173265 () Bool)

(declare-fun e!105009 () Bool)

(assert (=> b!173265 (= e!105009 e!105010)))

(assert (=> b!171778 e!105009))

(assert (= b!173266 b!173267))

(assert (= b!173265 b!173266))

(assert (= (and b!171778 ((_ is Cons!2919) (t!27131 (t!27131 rules!1920)))) b!173265))

(assert (=> b!173267 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920)))))) (dynLambda!1108 order!1599 lambda!4892))))

(assert (=> b!173267 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920)))))) (dynLambda!1108 order!1599 lambda!4892))))

(declare-fun b!173271 () Bool)

(declare-fun e!105012 () Bool)

(declare-fun tp!84535 () Bool)

(declare-fun tp!84538 () Bool)

(assert (=> b!173271 (= e!105012 (and tp!84535 tp!84538))))

(declare-fun b!173273 () Bool)

(declare-fun tp!84536 () Bool)

(declare-fun tp!84539 () Bool)

(assert (=> b!173273 (= e!105012 (and tp!84536 tp!84539))))

(declare-fun b!173272 () Bool)

(declare-fun tp!84537 () Bool)

(assert (=> b!173272 (= e!105012 tp!84537)))

(declare-fun b!173270 () Bool)

(assert (=> b!173270 (= e!105012 tp_is_empty!1659)))

(assert (=> b!171795 (= tp!84484 e!105012)))

(assert (= (and b!171795 ((_ is ElementMatch!747) (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173270))

(assert (= (and b!171795 ((_ is Concat!1293) (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173271))

(assert (= (and b!171795 ((_ is Star!747) (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173272))

(assert (= (and b!171795 ((_ is Union!747) (regOne!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173273))

(declare-fun b!173275 () Bool)

(declare-fun e!105013 () Bool)

(declare-fun tp!84540 () Bool)

(declare-fun tp!84543 () Bool)

(assert (=> b!173275 (= e!105013 (and tp!84540 tp!84543))))

(declare-fun b!173277 () Bool)

(declare-fun tp!84541 () Bool)

(declare-fun tp!84544 () Bool)

(assert (=> b!173277 (= e!105013 (and tp!84541 tp!84544))))

(declare-fun b!173276 () Bool)

(declare-fun tp!84542 () Bool)

(assert (=> b!173276 (= e!105013 tp!84542)))

(declare-fun b!173274 () Bool)

(assert (=> b!173274 (= e!105013 tp_is_empty!1659)))

(assert (=> b!171795 (= tp!84487 e!105013)))

(assert (= (and b!171795 ((_ is ElementMatch!747) (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173274))

(assert (= (and b!171795 ((_ is Concat!1293) (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173275))

(assert (= (and b!171795 ((_ is Star!747) (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173276))

(assert (= (and b!171795 ((_ is Union!747) (regTwo!2007 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173277))

(declare-fun b!173279 () Bool)

(declare-fun e!105014 () Bool)

(declare-fun tp!84545 () Bool)

(declare-fun tp!84548 () Bool)

(assert (=> b!173279 (= e!105014 (and tp!84545 tp!84548))))

(declare-fun b!173281 () Bool)

(declare-fun tp!84546 () Bool)

(declare-fun tp!84549 () Bool)

(assert (=> b!173281 (= e!105014 (and tp!84546 tp!84549))))

(declare-fun b!173280 () Bool)

(declare-fun tp!84547 () Bool)

(assert (=> b!173280 (= e!105014 tp!84547)))

(declare-fun b!173278 () Bool)

(assert (=> b!173278 (= e!105014 tp_is_empty!1659)))

(assert (=> b!171793 (= tp!84483 e!105014)))

(assert (= (and b!171793 ((_ is ElementMatch!747) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173278))

(assert (= (and b!171793 ((_ is Concat!1293) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173279))

(assert (= (and b!171793 ((_ is Star!747) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173280))

(assert (= (and b!171793 ((_ is Union!747) (regOne!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173281))

(declare-fun b!173283 () Bool)

(declare-fun e!105015 () Bool)

(declare-fun tp!84550 () Bool)

(declare-fun tp!84553 () Bool)

(assert (=> b!173283 (= e!105015 (and tp!84550 tp!84553))))

(declare-fun b!173285 () Bool)

(declare-fun tp!84551 () Bool)

(declare-fun tp!84554 () Bool)

(assert (=> b!173285 (= e!105015 (and tp!84551 tp!84554))))

(declare-fun b!173284 () Bool)

(declare-fun tp!84552 () Bool)

(assert (=> b!173284 (= e!105015 tp!84552)))

(declare-fun b!173282 () Bool)

(assert (=> b!173282 (= e!105015 tp_is_empty!1659)))

(assert (=> b!171793 (= tp!84486 e!105015)))

(assert (= (and b!171793 ((_ is ElementMatch!747) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173282))

(assert (= (and b!171793 ((_ is Concat!1293) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173283))

(assert (= (and b!171793 ((_ is Star!747) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173284))

(assert (= (and b!171793 ((_ is Union!747) (regTwo!2006 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173285))

(declare-fun b!173287 () Bool)

(declare-fun e!105016 () Bool)

(declare-fun tp!84555 () Bool)

(declare-fun tp!84558 () Bool)

(assert (=> b!173287 (= e!105016 (and tp!84555 tp!84558))))

(declare-fun b!173290 () Bool)

(declare-fun tp!84556 () Bool)

(declare-fun tp!84559 () Bool)

(assert (=> b!173290 (= e!105016 (and tp!84556 tp!84559))))

(declare-fun b!173288 () Bool)

(declare-fun tp!84557 () Bool)

(assert (=> b!173288 (= e!105016 tp!84557)))

(declare-fun b!173286 () Bool)

(assert (=> b!173286 (= e!105016 tp_is_empty!1659)))

(assert (=> b!171794 (= tp!84485 e!105016)))

(assert (= (and b!171794 ((_ is ElementMatch!747) (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173286))

(assert (= (and b!171794 ((_ is Concat!1293) (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173287))

(assert (= (and b!171794 ((_ is Star!747) (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173288))

(assert (= (and b!171794 ((_ is Union!747) (reg!1076 (regex!523 (rule!1030 (h!8317 tokens!465)))))) b!173290))

(declare-fun e!105027 () Bool)

(declare-fun tp!84569 () Bool)

(declare-fun tp!84568 () Bool)

(declare-fun b!173305 () Bool)

(assert (=> b!173305 (= e!105027 (and (inv!3747 (left!2232 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))))) tp!84568 (inv!3747 (right!2562 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))))) tp!84569))))

(declare-fun b!173307 () Bool)

(declare-fun e!105026 () Bool)

(declare-fun tp!84567 () Bool)

(assert (=> b!173307 (= e!105026 tp!84567)))

(declare-fun b!173306 () Bool)

(declare-fun inv!3754 (IArray!1737) Bool)

(assert (=> b!173306 (= e!105027 (and (inv!3754 (xs!3463 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))))) e!105026))))

(assert (=> b!171194 (= tp!84379 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465))))) e!105027))))

(assert (= (and b!171194 ((_ is Node!868) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))))) b!173305))

(assert (= b!173306 b!173307))

(assert (= (and b!171194 ((_ is Leaf!1469) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (value!19221 (h!8317 tokens!465)))))) b!173306))

(declare-fun m!171961 () Bool)

(assert (=> b!173305 m!171961))

(declare-fun m!171965 () Bool)

(assert (=> b!173305 m!171965))

(declare-fun m!171969 () Bool)

(assert (=> b!173306 m!171969))

(assert (=> b!171194 m!167367))

(declare-fun b!173310 () Bool)

(declare-fun e!105030 () Bool)

(assert (=> b!173310 (= e!105030 true)))

(declare-fun b!173309 () Bool)

(declare-fun e!105029 () Bool)

(assert (=> b!173309 (= e!105029 e!105030)))

(declare-fun b!173308 () Bool)

(declare-fun e!105028 () Bool)

(assert (=> b!173308 (= e!105028 e!105029)))

(assert (=> b!171521 e!105028))

(assert (= b!173309 b!173310))

(assert (= b!173308 b!173309))

(assert (= (and b!171521 ((_ is Cons!2919) (t!27131 rules!1920))) b!173308))

(assert (=> b!173310 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4913))))

(assert (=> b!173310 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4913))))

(declare-fun b!173315 () Bool)

(declare-fun e!105034 () Bool)

(assert (=> b!173315 (= e!105034 true)))

(declare-fun b!173314 () Bool)

(declare-fun e!105033 () Bool)

(assert (=> b!173314 (= e!105033 e!105034)))

(declare-fun b!173313 () Bool)

(declare-fun e!105032 () Bool)

(assert (=> b!173313 (= e!105032 e!105033)))

(assert (=> b!171510 e!105032))

(assert (= b!173314 b!173315))

(assert (= b!173313 b!173314))

(assert (= (and b!171510 ((_ is Cons!2919) (t!27131 rules!1920))) b!173313))

(assert (=> b!173315 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4912))))

(assert (=> b!173315 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4912))))

(declare-fun b!173317 () Bool)

(declare-fun e!105035 () Bool)

(declare-fun tp!84570 () Bool)

(declare-fun tp!84573 () Bool)

(assert (=> b!173317 (= e!105035 (and tp!84570 tp!84573))))

(declare-fun b!173319 () Bool)

(declare-fun tp!84571 () Bool)

(declare-fun tp!84574 () Bool)

(assert (=> b!173319 (= e!105035 (and tp!84571 tp!84574))))

(declare-fun b!173318 () Bool)

(declare-fun tp!84572 () Bool)

(assert (=> b!173318 (= e!105035 tp!84572)))

(declare-fun b!173316 () Bool)

(assert (=> b!173316 (= e!105035 tp_is_empty!1659)))

(assert (=> b!171777 (= tp!84467 e!105035)))

(assert (= (and b!171777 ((_ is ElementMatch!747) (regOne!2007 (regex!523 (h!8316 rules!1920))))) b!173316))

(assert (= (and b!171777 ((_ is Concat!1293) (regOne!2007 (regex!523 (h!8316 rules!1920))))) b!173317))

(assert (= (and b!171777 ((_ is Star!747) (regOne!2007 (regex!523 (h!8316 rules!1920))))) b!173318))

(assert (= (and b!171777 ((_ is Union!747) (regOne!2007 (regex!523 (h!8316 rules!1920))))) b!173319))

(declare-fun b!173322 () Bool)

(declare-fun e!105037 () Bool)

(declare-fun tp!84575 () Bool)

(declare-fun tp!84578 () Bool)

(assert (=> b!173322 (= e!105037 (and tp!84575 tp!84578))))

(declare-fun b!173324 () Bool)

(declare-fun tp!84576 () Bool)

(declare-fun tp!84579 () Bool)

(assert (=> b!173324 (= e!105037 (and tp!84576 tp!84579))))

(declare-fun b!173323 () Bool)

(declare-fun tp!84577 () Bool)

(assert (=> b!173323 (= e!105037 tp!84577)))

(declare-fun b!173321 () Bool)

(assert (=> b!173321 (= e!105037 tp_is_empty!1659)))

(assert (=> b!171777 (= tp!84470 e!105037)))

(assert (= (and b!171777 ((_ is ElementMatch!747) (regTwo!2007 (regex!523 (h!8316 rules!1920))))) b!173321))

(assert (= (and b!171777 ((_ is Concat!1293) (regTwo!2007 (regex!523 (h!8316 rules!1920))))) b!173322))

(assert (= (and b!171777 ((_ is Star!747) (regTwo!2007 (regex!523 (h!8316 rules!1920))))) b!173323))

(assert (= (and b!171777 ((_ is Union!747) (regTwo!2007 (regex!523 (h!8316 rules!1920))))) b!173324))

(declare-fun b!173326 () Bool)

(declare-fun e!105038 () Bool)

(declare-fun tp!84580 () Bool)

(declare-fun tp!84583 () Bool)

(assert (=> b!173326 (= e!105038 (and tp!84580 tp!84583))))

(declare-fun b!173328 () Bool)

(declare-fun tp!84581 () Bool)

(declare-fun tp!84584 () Bool)

(assert (=> b!173328 (= e!105038 (and tp!84581 tp!84584))))

(declare-fun b!173327 () Bool)

(declare-fun tp!84582 () Bool)

(assert (=> b!173327 (= e!105038 tp!84582)))

(declare-fun b!173325 () Bool)

(assert (=> b!173325 (= e!105038 tp_is_empty!1659)))

(assert (=> b!171757 (= tp!84452 e!105038)))

(assert (= (and b!171757 ((_ is ElementMatch!747) (regex!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) b!173325))

(assert (= (and b!171757 ((_ is Concat!1293) (regex!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) b!173326))

(assert (= (and b!171757 ((_ is Star!747) (regex!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) b!173327))

(assert (= (and b!171757 ((_ is Union!747) (regex!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) b!173328))

(declare-fun b!173330 () Bool)

(declare-fun e!105039 () Bool)

(declare-fun tp!84585 () Bool)

(declare-fun tp!84588 () Bool)

(assert (=> b!173330 (= e!105039 (and tp!84585 tp!84588))))

(declare-fun b!173332 () Bool)

(declare-fun tp!84586 () Bool)

(declare-fun tp!84589 () Bool)

(assert (=> b!173332 (= e!105039 (and tp!84586 tp!84589))))

(declare-fun b!173331 () Bool)

(declare-fun tp!84587 () Bool)

(assert (=> b!173331 (= e!105039 tp!84587)))

(declare-fun b!173329 () Bool)

(assert (=> b!173329 (= e!105039 tp_is_empty!1659)))

(assert (=> b!171776 (= tp!84468 e!105039)))

(assert (= (and b!171776 ((_ is ElementMatch!747) (reg!1076 (regex!523 (h!8316 rules!1920))))) b!173329))

(assert (= (and b!171776 ((_ is Concat!1293) (reg!1076 (regex!523 (h!8316 rules!1920))))) b!173330))

(assert (= (and b!171776 ((_ is Star!747) (reg!1076 (regex!523 (h!8316 rules!1920))))) b!173331))

(assert (= (and b!171776 ((_ is Union!747) (reg!1076 (regex!523 (h!8316 rules!1920))))) b!173332))

(declare-fun b!173338 () Bool)

(declare-fun e!105044 () Bool)

(assert (=> b!173338 (= e!105044 true)))

(declare-fun b!173336 () Bool)

(declare-fun e!105042 () Bool)

(assert (=> b!173336 (= e!105042 e!105044)))

(declare-fun b!173334 () Bool)

(declare-fun e!105040 () Bool)

(assert (=> b!173334 (= e!105040 e!105042)))

(assert (=> b!171312 e!105040))

(assert (= b!173336 b!173338))

(assert (= b!173334 b!173336))

(assert (= (and b!171312 ((_ is Cons!2919) (t!27131 rules!1920))) b!173334))

(assert (=> b!173338 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4895))))

(assert (=> b!173338 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4895))))

(declare-fun b!173339 () Bool)

(declare-fun e!105045 () Bool)

(declare-fun tp!84590 () Bool)

(assert (=> b!173339 (= e!105045 (and tp_is_empty!1659 tp!84590))))

(assert (=> b!171756 (= tp!84450 e!105045)))

(assert (= (and b!171756 ((_ is Cons!2918) (originalCharacters!566 (h!8317 (t!27132 tokens!465))))) b!173339))

(declare-fun b!173343 () Bool)

(declare-fun b_free!6641 () Bool)

(declare-fun b_next!6641 () Bool)

(assert (=> b!173343 (= b_free!6641 (not b_next!6641))))

(declare-fun t!27482 () Bool)

(declare-fun tb!7011 () Bool)

(assert (=> (and b!173343 (= (toValue!1186 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toValue!1186 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27482) tb!7011))

(declare-fun result!9740 () Bool)

(assert (= result!9740 result!9464))

(assert (=> d!42937 t!27482))

(declare-fun b_and!11563 () Bool)

(declare-fun tp!84594 () Bool)

(assert (=> b!173343 (= tp!84594 (and (=> t!27482 result!9740) b_and!11563))))

(declare-fun b_free!6643 () Bool)

(declare-fun b_next!6643 () Bool)

(assert (=> b!173343 (= b_free!6643 (not b_next!6643))))

(declare-fun tb!7013 () Bool)

(declare-fun t!27484 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33889 call!7510 (ite c!33892 separatorToken!170 call!7512)))))) t!27484) tb!7013))

(declare-fun result!9742 () Bool)

(assert (= result!9742 result!9516))

(assert (=> d!43025 t!27484))

(declare-fun t!27486 () Bool)

(declare-fun tb!7015 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (Cons!2920 (h!8317 tokens!465) Nil!2920)))))) t!27486) tb!7015))

(declare-fun result!9744 () Bool)

(assert (= result!9744 result!9678))

(assert (=> d!43743 t!27486))

(declare-fun t!27488 () Bool)

(declare-fun tb!7017 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465)))))) t!27488) tb!7017))

(declare-fun result!9746 () Bool)

(assert (= result!9746 result!9536))

(assert (=> b!172770 t!27488))

(declare-fun tb!7019 () Bool)

(declare-fun t!27490 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 call!7532)))) t!27490) tb!7019))

(declare-fun result!9748 () Bool)

(assert (= result!9748 result!9606))

(assert (=> d!43315 t!27490))

(declare-fun tb!7021 () Bool)

(declare-fun t!27492 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 separatorToken!170)))) t!27492) tb!7021))

(declare-fun result!9750 () Bool)

(assert (= result!9750 result!9426))

(assert (=> d!42767 t!27492))

(declare-fun t!27494 () Bool)

(declare-fun tb!7023 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0))))) t!27494) tb!7023))

(declare-fun result!9752 () Bool)

(assert (= result!9752 result!9648))

(assert (=> d!43571 t!27494))

(declare-fun t!27496 () Bool)

(declare-fun tb!7025 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465))))) t!27496) tb!7025))

(declare-fun result!9754 () Bool)

(assert (= result!9754 result!9412))

(assert (=> b!171188 t!27496))

(declare-fun tb!7027 () Bool)

(declare-fun t!27498 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (_1!1630 (get!801 lt!54473)))))) t!27498) tb!7027))

(declare-fun result!9756 () Bool)

(assert (= result!9756 result!9506))

(assert (=> d!43001 t!27498))

(declare-fun tb!7029 () Bool)

(declare-fun t!27500 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33925 (h!8317 tokens!465) (ite c!33926 separatorToken!170 (h!8317 tokens!465))))))) t!27500) tb!7029))

(declare-fun result!9758 () Bool)

(assert (= result!9758 result!9688))

(assert (=> d!43811 t!27500))

(declare-fun t!27502 () Bool)

(declare-fun tb!7031 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 call!7512)))) t!27502) tb!7031))

(declare-fun result!9760 () Bool)

(assert (= result!9760 result!9476))

(assert (=> d!42975 t!27502))

(declare-fun t!27504 () Bool)

(declare-fun tb!7033 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33864 (h!8317 (t!27132 tokens!465)) (ite c!33865 separatorToken!170 (h!8317 (t!27132 tokens!465)))))))) t!27504) tb!7033))

(declare-fun result!9762 () Bool)

(assert (= result!9762 result!9526))

(assert (=> d!43083 t!27504))

(declare-fun t!27506 () Bool)

(declare-fun tb!7035 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (ite c!33920 call!7530 (ite c!33923 separatorToken!170 call!7532)))))) t!27506) tb!7035))

(declare-fun result!9764 () Bool)

(assert (= result!9764 result!9566))

(assert (=> d!43197 t!27506))

(assert (=> b!171494 t!27492))

(declare-fun t!27508 () Bool)

(declare-fun tb!7037 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54114 0))))) t!27508) tb!7037))

(declare-fun result!9766 () Bool)

(assert (= result!9766 result!9668))

(assert (=> d!43701 t!27508))

(declare-fun tb!7039 () Bool)

(declare-fun t!27510 () Bool)

(assert (=> (and b!173343 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (apply!423 lt!54116 0))))) t!27510) tb!7039))

(declare-fun result!9768 () Bool)

(assert (= result!9768 result!9556))

(assert (=> d!43181 t!27510))

(assert (=> d!42771 t!27496))

(assert (=> d!43111 t!27488))

(declare-fun b_and!11565 () Bool)

(declare-fun tp!84591 () Bool)

(assert (=> b!173343 (= tp!84591 (and (=> t!27488 result!9746) (=> t!27504 result!9762) (=> t!27486 result!9744) (=> t!27500 result!9758) (=> t!27492 result!9750) (=> t!27484 result!9742) (=> t!27506 result!9764) (=> t!27510 result!9768) (=> t!27490 result!9748) (=> t!27502 result!9760) (=> t!27498 result!9756) (=> t!27508 result!9766) (=> t!27496 result!9754) (=> t!27494 result!9752) b_and!11565))))

(declare-fun e!105048 () Bool)

(assert (=> b!173343 (= e!105048 (and tp!84594 tp!84591))))

(declare-fun e!105047 () Bool)

(declare-fun e!105046 () Bool)

(declare-fun tp!84593 () Bool)

(declare-fun b!173341 () Bool)

(assert (=> b!173341 (= e!105046 (and (inv!21 (value!19221 (h!8317 (t!27132 (t!27132 tokens!465))))) e!105047 tp!84593))))

(declare-fun e!105050 () Bool)

(declare-fun tp!84592 () Bool)

(declare-fun b!173340 () Bool)

(assert (=> b!173340 (= e!105050 (and (inv!3743 (h!8317 (t!27132 (t!27132 tokens!465)))) e!105046 tp!84592))))

(assert (=> b!171755 (= tp!84449 e!105050)))

(declare-fun b!173342 () Bool)

(declare-fun tp!84595 () Bool)

(assert (=> b!173342 (= e!105047 (and tp!84595 (inv!3740 (tag!701 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (inv!3744 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) e!105048))))

(assert (= b!173342 b!173343))

(assert (= b!173341 b!173342))

(assert (= b!173340 b!173341))

(assert (= (and b!171755 ((_ is Cons!2920) (t!27132 (t!27132 tokens!465)))) b!173340))

(declare-fun m!172017 () Bool)

(assert (=> b!173341 m!172017))

(declare-fun m!172019 () Bool)

(assert (=> b!173340 m!172019))

(declare-fun m!172021 () Bool)

(assert (=> b!173342 m!172021))

(declare-fun m!172023 () Bool)

(assert (=> b!173342 m!172023))

(declare-fun b!173349 () Bool)

(declare-fun e!105054 () Bool)

(declare-fun tp!84596 () Bool)

(declare-fun tp!84599 () Bool)

(assert (=> b!173349 (= e!105054 (and tp!84596 tp!84599))))

(declare-fun b!173351 () Bool)

(declare-fun tp!84597 () Bool)

(declare-fun tp!84600 () Bool)

(assert (=> b!173351 (= e!105054 (and tp!84597 tp!84600))))

(declare-fun b!173350 () Bool)

(declare-fun tp!84598 () Bool)

(assert (=> b!173350 (= e!105054 tp!84598)))

(declare-fun b!173348 () Bool)

(assert (=> b!173348 (= e!105054 tp_is_empty!1659)))

(assert (=> b!171775 (= tp!84466 e!105054)))

(assert (= (and b!171775 ((_ is ElementMatch!747) (regOne!2006 (regex!523 (h!8316 rules!1920))))) b!173348))

(assert (= (and b!171775 ((_ is Concat!1293) (regOne!2006 (regex!523 (h!8316 rules!1920))))) b!173349))

(assert (= (and b!171775 ((_ is Star!747) (regOne!2006 (regex!523 (h!8316 rules!1920))))) b!173350))

(assert (= (and b!171775 ((_ is Union!747) (regOne!2006 (regex!523 (h!8316 rules!1920))))) b!173351))

(declare-fun b!173353 () Bool)

(declare-fun e!105055 () Bool)

(declare-fun tp!84601 () Bool)

(declare-fun tp!84604 () Bool)

(assert (=> b!173353 (= e!105055 (and tp!84601 tp!84604))))

(declare-fun b!173355 () Bool)

(declare-fun tp!84602 () Bool)

(declare-fun tp!84605 () Bool)

(assert (=> b!173355 (= e!105055 (and tp!84602 tp!84605))))

(declare-fun b!173354 () Bool)

(declare-fun tp!84603 () Bool)

(assert (=> b!173354 (= e!105055 tp!84603)))

(declare-fun b!173352 () Bool)

(assert (=> b!173352 (= e!105055 tp_is_empty!1659)))

(assert (=> b!171775 (= tp!84469 e!105055)))

(assert (= (and b!171775 ((_ is ElementMatch!747) (regTwo!2006 (regex!523 (h!8316 rules!1920))))) b!173352))

(assert (= (and b!171775 ((_ is Concat!1293) (regTwo!2006 (regex!523 (h!8316 rules!1920))))) b!173353))

(assert (= (and b!171775 ((_ is Star!747) (regTwo!2006 (regex!523 (h!8316 rules!1920))))) b!173354))

(assert (= (and b!171775 ((_ is Union!747) (regTwo!2006 (regex!523 (h!8316 rules!1920))))) b!173355))

(declare-fun b!173356 () Bool)

(declare-fun e!105056 () Bool)

(declare-fun tp!84606 () Bool)

(assert (=> b!173356 (= e!105056 (and tp_is_empty!1659 tp!84606))))

(assert (=> b!171800 (= tp!84493 e!105056)))

(assert (= (and b!171800 ((_ is Cons!2918) (t!27130 (originalCharacters!566 (h!8317 tokens!465))))) b!173356))

(declare-fun tp!84609 () Bool)

(declare-fun e!105058 () Bool)

(declare-fun b!173357 () Bool)

(declare-fun tp!84608 () Bool)

(assert (=> b!173357 (= e!105058 (and (inv!3747 (left!2232 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))))) tp!84608 (inv!3747 (right!2562 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))))) tp!84609))))

(declare-fun b!173359 () Bool)

(declare-fun e!105057 () Bool)

(declare-fun tp!84607 () Bool)

(assert (=> b!173359 (= e!105057 tp!84607)))

(declare-fun b!173358 () Bool)

(assert (=> b!173358 (= e!105058 (and (inv!3754 (xs!3463 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))))) e!105057))))

(assert (=> b!171396 (= tp!84381 (and (inv!3747 (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170)))) e!105058))))

(assert (= (and b!171396 ((_ is Node!868) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))))) b!173357))

(assert (= b!173358 b!173359))

(assert (= (and b!171396 ((_ is Leaf!1469) (c!33816 (dynLambda!1112 (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (value!19221 separatorToken!170))))) b!173358))

(declare-fun m!172025 () Bool)

(assert (=> b!173357 m!172025))

(declare-fun m!172029 () Bool)

(assert (=> b!173357 m!172029))

(declare-fun m!172031 () Bool)

(assert (=> b!173358 m!172031))

(assert (=> b!171396 m!167661))

(declare-fun b!173362 () Bool)

(declare-fun e!105061 () Bool)

(assert (=> b!173362 (= e!105061 true)))

(declare-fun b!173361 () Bool)

(declare-fun e!105060 () Bool)

(assert (=> b!173361 (= e!105060 e!105061)))

(declare-fun b!173360 () Bool)

(declare-fun e!105059 () Bool)

(assert (=> b!173360 (= e!105059 e!105060)))

(assert (=> b!171393 e!105059))

(assert (= b!173361 b!173362))

(assert (= b!173360 b!173361))

(assert (= (and b!171393 ((_ is Cons!2919) (t!27131 rules!1920))) b!173360))

(assert (=> b!173362 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4907))))

(assert (=> b!173362 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4907))))

(declare-fun b!173364 () Bool)

(declare-fun e!105062 () Bool)

(declare-fun tp!84610 () Bool)

(declare-fun tp!84613 () Bool)

(assert (=> b!173364 (= e!105062 (and tp!84610 tp!84613))))

(declare-fun b!173366 () Bool)

(declare-fun tp!84611 () Bool)

(declare-fun tp!84614 () Bool)

(assert (=> b!173366 (= e!105062 (and tp!84611 tp!84614))))

(declare-fun b!173365 () Bool)

(declare-fun tp!84612 () Bool)

(assert (=> b!173365 (= e!105062 tp!84612)))

(declare-fun b!173363 () Bool)

(assert (=> b!173363 (= e!105062 tp_is_empty!1659)))

(assert (=> b!171799 (= tp!84489 e!105062)))

(assert (= (and b!171799 ((_ is ElementMatch!747) (regOne!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173363))

(assert (= (and b!171799 ((_ is Concat!1293) (regOne!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173364))

(assert (= (and b!171799 ((_ is Star!747) (regOne!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173365))

(assert (= (and b!171799 ((_ is Union!747) (regOne!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173366))

(declare-fun b!173368 () Bool)

(declare-fun e!105063 () Bool)

(declare-fun tp!84615 () Bool)

(declare-fun tp!84618 () Bool)

(assert (=> b!173368 (= e!105063 (and tp!84615 tp!84618))))

(declare-fun b!173370 () Bool)

(declare-fun tp!84616 () Bool)

(declare-fun tp!84619 () Bool)

(assert (=> b!173370 (= e!105063 (and tp!84616 tp!84619))))

(declare-fun b!173369 () Bool)

(declare-fun tp!84617 () Bool)

(assert (=> b!173369 (= e!105063 tp!84617)))

(declare-fun b!173367 () Bool)

(assert (=> b!173367 (= e!105063 tp_is_empty!1659)))

(assert (=> b!171799 (= tp!84492 e!105063)))

(assert (= (and b!171799 ((_ is ElementMatch!747) (regTwo!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173367))

(assert (= (and b!171799 ((_ is Concat!1293) (regTwo!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173368))

(assert (= (and b!171799 ((_ is Star!747) (regTwo!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173369))

(assert (= (and b!171799 ((_ is Union!747) (regTwo!2007 (regex!523 (rule!1030 separatorToken!170))))) b!173370))

(declare-fun b!173373 () Bool)

(declare-fun e!105066 () Bool)

(assert (=> b!173373 (= e!105066 true)))

(declare-fun b!173372 () Bool)

(declare-fun e!105065 () Bool)

(assert (=> b!173372 (= e!105065 e!105066)))

(declare-fun b!173371 () Bool)

(declare-fun e!105064 () Bool)

(assert (=> b!173371 (= e!105064 e!105065)))

(assert (=> b!171688 e!105064))

(assert (= b!173372 b!173373))

(assert (= b!173371 b!173372))

(assert (= (and b!171688 ((_ is Cons!2919) (t!27131 rules!1920))) b!173371))

(assert (=> b!173373 (< (dynLambda!1107 order!1597 (toValue!1186 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4926))))

(assert (=> b!173373 (< (dynLambda!1109 order!1601 (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920))))) (dynLambda!1108 order!1599 lambda!4926))))

(declare-fun b!173375 () Bool)

(declare-fun e!105067 () Bool)

(declare-fun tp!84620 () Bool)

(declare-fun tp!84623 () Bool)

(assert (=> b!173375 (= e!105067 (and tp!84620 tp!84623))))

(declare-fun b!173377 () Bool)

(declare-fun tp!84621 () Bool)

(declare-fun tp!84624 () Bool)

(assert (=> b!173377 (= e!105067 (and tp!84621 tp!84624))))

(declare-fun b!173376 () Bool)

(declare-fun tp!84622 () Bool)

(assert (=> b!173376 (= e!105067 tp!84622)))

(declare-fun b!173374 () Bool)

(assert (=> b!173374 (= e!105067 tp_is_empty!1659)))

(assert (=> b!171798 (= tp!84490 e!105067)))

(assert (= (and b!171798 ((_ is ElementMatch!747) (reg!1076 (regex!523 (rule!1030 separatorToken!170))))) b!173374))

(assert (= (and b!171798 ((_ is Concat!1293) (reg!1076 (regex!523 (rule!1030 separatorToken!170))))) b!173375))

(assert (= (and b!171798 ((_ is Star!747) (reg!1076 (regex!523 (rule!1030 separatorToken!170))))) b!173376))

(assert (= (and b!171798 ((_ is Union!747) (reg!1076 (regex!523 (rule!1030 separatorToken!170))))) b!173377))

(declare-fun b_lambda!3987 () Bool)

(assert (= b_lambda!3973 (or b!171504 b_lambda!3987)))

(declare-fun bs!17068 () Bool)

(declare-fun d!43843 () Bool)

(assert (= bs!17068 (and d!43843 b!171504)))

(assert (=> bs!17068 (= (dynLambda!1111 lambda!4912 (apply!423 lt!54114 0)) (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (apply!423 lt!54114 0)))))

(assert (=> bs!17068 m!167819))

(declare-fun m!172087 () Bool)

(assert (=> bs!17068 m!172087))

(assert (=> d!43713 d!43843))

(declare-fun b_lambda!3989 () Bool)

(assert (= b_lambda!3921 (or d!42863 b_lambda!3989)))

(declare-fun bs!17069 () Bool)

(declare-fun d!43845 () Bool)

(assert (= bs!17069 (and d!43845 d!42863)))

(assert (=> bs!17069 (= (dynLambda!1111 lambda!4926 (h!8317 (list!1064 lt!54114))) (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 (list!1064 lt!54114))))))

(assert (=> bs!17069 m!169603))

(assert (=> b!171986 d!43845))

(declare-fun b_lambda!3991 () Bool)

(assert (= b_lambda!3929 (or (and b!171058 b_free!6615 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171036 b_free!6611 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171041 b_free!6619 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171758 b_free!6631) (and b!173343 b_free!6643 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171791 b_free!6635 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!173261 b_free!6639 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) b_lambda!3991)))

(declare-fun b_lambda!3993 () Bool)

(assert (= b_lambda!3963 (or b!171518 b_lambda!3993)))

(declare-fun bs!17070 () Bool)

(declare-fun d!43847 () Bool)

(assert (= bs!17070 (and d!43847 b!171518)))

(assert (=> bs!17070 (= (dynLambda!1111 lambda!4913 (h!8317 tokens!465)) (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 tokens!465)))))

(assert (=> bs!17070 m!167175))

(assert (=> d!43585 d!43847))

(declare-fun b_lambda!3995 () Bool)

(assert (= b_lambda!3923 (or b!171060 b_lambda!3995)))

(assert (=> d!43047 d!42899))

(declare-fun b_lambda!3997 () Bool)

(assert (= b_lambda!3957 (or (and b!171058 b_free!6615 (= (toChars!1045 (transformation!523 (rule!1030 separatorToken!170))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171036 b_free!6611 (= (toChars!1045 (transformation!523 (h!8316 rules!1920))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171041 b_free!6619 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 tokens!465)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171758 b_free!6631) (and b!173343 b_free!6643 (= (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 (t!27132 tokens!465)))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!171791 b_free!6635 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 rules!1920)))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) (and b!173261 b_free!6639 (= (toChars!1045 (transformation!523 (h!8316 (t!27131 (t!27131 rules!1920))))) (toChars!1045 (transformation!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))) b_lambda!3997)))

(declare-fun b_lambda!3999 () Bool)

(assert (= b_lambda!3907 (or b!171062 b_lambda!3999)))

(declare-fun bs!17072 () Bool)

(declare-fun d!43849 () Bool)

(assert (= bs!17072 (and d!43849 b!171062)))

(assert (=> bs!17072 (= (dynLambda!1111 lambda!4891 (h!8317 (t!27132 tokens!465))) (not (isSeparator!523 (rule!1030 (h!8317 (t!27132 tokens!465))))))))

(assert (=> b!171808 d!43849))

(declare-fun b_lambda!4001 () Bool)

(assert (= b_lambda!3949 (or b!171309 b_lambda!4001)))

(declare-fun bs!17074 () Bool)

(declare-fun d!43851 () Bool)

(assert (= bs!17074 (and d!43851 b!171309)))

(assert (=> bs!17074 (= (dynLambda!1111 lambda!4895 (h!8317 (t!27132 tokens!465))) (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (h!8317 (t!27132 tokens!465))))))

(declare-fun m!172089 () Bool)

(assert (=> bs!17074 m!172089))

(assert (=> d!43441 d!43851))

(declare-fun b_lambda!4003 () Bool)

(assert (= b_lambda!3925 (or b!171060 b_lambda!4003)))

(assert (=> b!171990 d!42899))

(declare-fun b_lambda!4005 () Bool)

(assert (= b_lambda!3959 (or b!171387 b_lambda!4005)))

(declare-fun bs!17075 () Bool)

(declare-fun d!43853 () Bool)

(assert (= bs!17075 (and d!43853 b!171387)))

(assert (=> bs!17075 (= (dynLambda!1111 lambda!4907 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)) (rulesProduceIndividualToken!158 thiss!17480 rules!1920 (apply!423 (seqFromList!424 (t!27132 tokens!465)) 0)))))

(assert (=> bs!17075 m!167605))

(declare-fun m!172093 () Bool)

(assert (=> bs!17075 m!172093))

(assert (=> d!43529 d!43853))

(check-sat (not d!42957) (not d!43753) (not b!173128) (not b!172816) (not b!171945) (not d!43451) (not b!171833) (not b!173377) (not b!172013) (not bm!7633) (not b!171889) (not b!171850) (not d!43189) (not b!172050) (not b!173103) (not b!173249) (not b!172808) (not b!172698) (not d!43323) (not b!171994) (not b!172822) (not b!172889) b_and!11551 (not d!43733) (not b!172062) (not b!172818) (not b!173255) (not b!171955) (not b!173340) (not d!43471) (not bm!7612) (not b!173358) (not d!43313) (not b!173070) (not b!172806) (not bm!7582) (not b!173101) (not b!171857) (not b_next!6631) (not d!43105) (not tb!6801) (not b!173229) (not b!172049) (not b_lambda!3975) (not b!173256) (not d!42925) (not d!43075) (not b!172752) (not bm!7583) (not b!173349) (not d!43033) (not b!172988) (not b!173231) (not d!42911) (not d!43341) (not b!172845) (not tb!6921) (not b!172821) (not b!173019) (not b!173032) (not d!43227) (not b!172820) (not b!172019) (not d!43517) (not b!173319) (not d!43095) (not b_lambda!3903) (not bm!7641) (not b!173306) (not b!172222) (not bm!7629) (not b!172786) (not b!172306) (not b!171957) (not b!171831) (not b!171948) (not d!43345) (not b!173307) (not b!172884) (not b!172619) (not b!173203) (not d!43721) (not b!172472) (not b!173110) (not d!43495) (not b!172722) (not d!43701) b_and!11311 (not b!172623) (not b_next!6617) (not bm!7631) (not b!171860) (not b!172452) (not d!43089) (not d!42953) (not d!43067) (not b!172571) (not bm!7562) (not b!172118) (not b!173327) (not b!172056) (not b!171877) (not d!42975) (not d!43001) (not b!172770) (not b!172744) (not d!43039) (not b!172742) (not b!172486) (not b!173248) (not d!43205) (not b!172207) (not b!172484) (not d!43469) (not b!172570) (not bm!7653) (not d!43571) (not b!171803) (not b!172771) (not b!173124) (not b_lambda!3897) (not b!173138) (not b!173127) (not b!173356) (not b!172002) (not d!43325) (not b_lambda!4001) (not d!43005) b_and!11309 (not b!173371) (not d!43425) (not d!43329) (not b!172253) (not d!43717) (not b!171852) (not b!173190) (not d!43775) (not d!43085) (not b!172721) b_and!11565 (not d!43463) (not b_lambda!3919) (not b_next!6639) (not b!173136) (not d!43711) (not d!42921) (not b!172746) (not tb!6841) (not bm!7615) (not b!172876) (not d!43581) (not d!42987) (not b!173260) (not tb!6751) (not b!172115) (not b!172682) (not b!173230) (not b!172894) (not b!173142) (not b!172043) (not b!172069) (not b!172075) (not d!43477) (not b!172204) (not b_lambda!3905) (not d!43175) (not b!172767) (not b!171995) (not d!43801) (not b!173252) (not b!171970) (not b!171834) (not b!173284) (not b_lambda!3997) (not d!43545) (not d!42927) (not d!43213) (not d!43029) (not b!173350) (not b!171992) (not b!172809) (not b!171809) (not b!172694) (not b!172899) (not b!173137) (not d!43109) (not b!171903) (not d!43043) (not b!172567) (not b!171826) (not d!43197) (not b!172001) (not b!172691) (not d!43439) (not b!173152) (not b!173125) (not b!173066) (not b!172880) (not b!171996) (not d!42969) (not d!43645) (not b_next!6619) (not b_lambda!3895) (not d!43407) (not d!43403) (not b!171848) (not bm!7662) (not d!43207) (not b!173322) (not b!172044) (not b!172668) (not b!172023) (not b!172843) (not b_next!6609) (not b!171897) (not b!172962) (not b!172136) (not bm!7614) (not bm!7573) (not b_next!6633) (not b!173201) (not b!172014) (not b!173141) (not b!173360) (not b!172883) (not b!172064) (not d!43343) (not d!43787) (not tb!6941) (not d!42939) (not b!173351) (not d!43589) (not b!172789) (not b!173189) (not b!172989) (not b!172901) (not d!42903) (not tb!6811) (not d!43335) (not d!43063) (not b!173359) (not d!43025) (not b_lambda!3901) (not b!173288) (not b!173369) b_and!11547 (not b!173271) (not d!43541) (not b_lambda!3943) (not b_next!6611) (not b!173037) (not d!43099) (not b!171823) (not b!173148) (not b!173023) (not b!173330) (not bm!7624) (not d!42931) (not b!172012) (not b!173376) (not d!43121) (not b!172630) (not b!172702) (not d!43577) (not b!173104) (not b!172807) (not b!172620) b_and!11315 (not b!172686) (not b!173013) (not b!171841) (not b_lambda!3899) (not b!172307) (not b!172913) (not d!43013) (not b!173251) (not b!172627) (not bm!7571) (not b!172685) (not b!172842) (not d!43087) (not b!172888) (not b!172898) (not b_lambda!3917) (not b!173323) (not bm!7650) (not b!173370) (not b!172170) (not b!172885) (not b!172460) (not d!43321) (not b!172753) (not bm!7648) (not b!172986) (not b_next!6643) (not bs!17068) (not d!43115) (not b!172468) (not b!173223) (not b!173317) (not b!171998) (not b!172072) (not b!171984) (not b!171905) (not b_lambda!3993) (not d!43167) (not b!172022) (not d!43561) (not d!43389) (not tb!6741) (not d!43719) (not b!173328) (not b!172850) (not b!172891) (not d!43055) (not b!172123) (not b!172848) (not b!173355) (not b!173273) (not d!43183) (not bm!7625) (not tb!6831) (not b!173290) (not b!172566) (not b!171987) (not bs!17074) (not b!172969) (not d!43585) (not b!172230) (not b!171194) (not d!43467) (not b!172455) (not d!43567) (not b_next!6635) (not b!173155) (not b_lambda!3911) (not b!172784) (not b!173245) (not b!173205) (not b!172993) (not d!43647) (not b!172959) (not b!173283) (not d!43103) (not b!173130) (not d!43057) (not b!171856) (not b!172076) (not b!172471) (not b!172312) (not b!171821) (not d!43457) (not b!172803) (not b!172997) (not d!43027) (not b!173331) (not b!172836) (not b!172309) (not bs!17069) (not b!173106) (not d!43515) (not tb!6961) (not bm!7594) (not d!43083) (not d!43387) (not b!172030) (not b!171887) (not b!172892) (not b!172114) (not d!43617) (not b!173257) (not bm!7630) (not b!172040) (not b!173276) (not b!171997) (not b!173353) (not b!172569) (not b!172631) (not b!173153) (not b!171805) (not tb!6881) (not b!171904) (not b!173204) (not d!43699) (not d!42949) (not d!42959) (not b!171965) (not b!171806) (not b!173011) (not b!172745) b_and!11545 (not d!43111) (not d!43177) (not b!173033) (not d!43409) (not b_lambda!3999) (not tb!6791) (not b!172039) (not b!173134) (not d!43319) (not bm!7584) (not bm!7563) (not b!171888) (not d!43619) (not b!172000) (not b!172967) (not b!172116) (not d!43549) (not b!172092) (not d!43337) (not b!172740) (not b_next!6615) (not d!43713) (not b!172241) (not b!172844) (not b!172442) (not d!43181) (not b!172234) b_and!11563 (not b!173123) (not b!172113) (not b!173281) (not d!43331) (not b!172242) (not bm!7574) (not d!43681) (not d!43475) (not d!43077) (not b!171859) (not b!172041) (not b!171982) (not d!42901) (not b!173015) (not b!172466) (not b!171855) b_and!11539 (not b!171396) (not d!43009) (not d!43315) (not b!173324) (not b!172463) (not b!172250) b_and!11317 (not b!173357) (not b!172991) (not b!172805) (not b!172902) (not b!172063) (not b!172055) (not b!172846) (not d!43453) (not b!173180) (not d!43405) (not b!172782) (not d!43203) (not d!43107) (not b!172979) (not d!42915) (not b!172992) (not d!43543) (not b!173105) (not b!172799) (not b!172968) (not b!172663) (not b!173318) (not b!172209) (not b!171820) (not b!173028) (not b!172125) (not b!172680) (not d!43565) (not b!172443) (not bm!7645) (not d!43333) (not b_lambda!3935) (not b!172152) (not d!43411) (not b!172692) (not b_lambda!3991) (not d!43755) (not b!172218) (not b!173280) (not d!43791) (not b!172900) (not b!173259) (not b!172467) (not b!172683) (not b!172249) (not b!173368) (not b!172206) (not bm!7646) (not b!173126) (not b!171895) (not d!42913) (not bm!7644) (not b!172485) (not d!43769) (not b!172045) (not d!43081) (not d!43045) (not d!43735) (not bm!7575) (not b!173341) (not b!173277) (not bm!7632) (not d!43185) (not b!173186) (not b!171829) (not b!172135) (not b!172192) (not d!43339) (not d!43051) (not d!42955) (not b!173025) (not d!43209) (not d!42999) (not bm!7643) (not b!172240) (not b_lambda!3927) (not d!43523) (not b!173313) (not b!173122) (not d!43187) (not b!172130) (not b!172897) (not b_lambda!3995) (not b_next!6641) (not d!43327) (not b!172812) (not d!43441) (not d!43529) (not b!173208) (not b!173107) (not b!172457) (not b!173365) (not d!43687) (not bm!7655) (not d!43777) (not d!43563) (not b!172196) (not b!172695) (not b!172678) (not b!173354) (not b!171878) (not b!173221) (not tb!6951) (not b_lambda!3987) (not b!173285) (not b!172469) (not b!172305) (not b!173084) (not bm!7567) (not b!171952) (not bm!7665) (not d!43065) (not d!43665) (not b!173332) (not d!43079) (not b!172881) (not b_lambda!3989) (not b!173326) (not b!173272) (not bs!17070) (not tb!6781) (not b!173287) (not b!172453) (not d!43811) (not b!172994) (not b!172896) (not b!172026) (not b!173339) (not b!171824) (not b!172053) (not b!173364) (not b!172813) (not b_lambda!3983) (not d!43317) (not b_lambda!4005) (not b!172256) (not b!173342) (not b_lambda!4003) (not b!172441) b_and!11541 (not d!43587) (not d!43579) (not b!172811) (not d!43041) (not b!172739) (not b!173258) (not d!43465) (not d!43705) (not b!172840) (not d!42929) (not d!43113) (not b_lambda!3933) (not b!171879) (not d!42923) (not b!172700) (not d!43637) (not b_lambda!3969) (not b!172872) (not bm!7627) (not b!172046) (not b!172470) (not b!171944) tp_is_empty!1659 (not b!172243) (not b!172966) (not b_next!6637) (not b!172462) (not d!43145) (not d!43141) (not b!172238) (not b!171991) (not b!171983) (not b!172681) (not bm!7640) (not b_lambda!3909) (not d!43715) (not bm!7669) (not d!43723) (not b!171976) (not d!42919) (not b_next!6613) (not d!43483) (not d!43023) (not b!173218) (not b!172020) (not b!172964) (not b!172450) (not b!172828) (not b!172625) (not b!172961) (not b!173149) (not b!173308) (not b!173102) (not b!172847) (not d!43583) (not d!43697) (not d!42905) (not b!173206) (not b!172308) (not b!172117) (not b!173305) (not b_lambda!3961) (not b!171999) (not b!172067) (not bm!7570) (not b!173030) b_and!11543 (not d!43731) (not d!43019) (not b!172252) (not b!172131) (not d!43741) (not b!172210) (not b!172028) (not b!173253) (not b!173034) (not b!172205) (not d!43017) (not b!172054) (not d!42971) (not b!173247) (not bs!17075) (not b!172464) (not d!43667) (not b!173275) (not b!172810) (not b!171842) b_and!11549 (not b!173375) (not d!43461) (not b!172313) (not b!171958) (not b!172684) (not b!173265) (not b!173334) (not d!43611) (not b_next!6629) (not d!43535) (not b!173108) (not b!171967) (not d!43743) (not d!43785) (not d!42961) (not b!172311) (not b!172042) (not b!172456) (not b!173202) (not d!43179) (not b!172090) (not d!43709) (not b!172703) (not b!173279) (not b!173088) (not d!43643) (not b!172071) (not b!173366) (not bm!7561) (not b!172459) (not bm!7616) b_and!11313 (not d!43097) (not b!172051) (not d!43503) (not d!43153))
(check-sat b_and!11551 (not b_next!6631) (not b_next!6633) b_and!11315 (not b_next!6643) (not b_next!6635) b_and!11545 (not b_next!6615) b_and!11317 (not b_next!6641) b_and!11541 (not b_next!6637) (not b_next!6613) b_and!11543 b_and!11313 b_and!11311 (not b_next!6617) b_and!11309 b_and!11565 (not b_next!6639) (not b_next!6619) (not b_next!6609) b_and!11547 (not b_next!6611) b_and!11563 b_and!11539 b_and!11549 (not b_next!6629))
