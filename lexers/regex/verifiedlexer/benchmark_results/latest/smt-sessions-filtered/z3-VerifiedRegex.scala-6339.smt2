; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323910 () Bool)

(assert start!323910)

(declare-fun b!3479954 () Bool)

(declare-fun b_free!90273 () Bool)

(declare-fun b_next!90977 () Bool)

(assert (=> b!3479954 (= b_free!90273 (not b_next!90977))))

(declare-fun tp!1081158 () Bool)

(declare-fun b_and!245531 () Bool)

(assert (=> b!3479954 (= tp!1081158 b_and!245531)))

(declare-fun b_free!90275 () Bool)

(declare-fun b_next!90979 () Bool)

(assert (=> b!3479954 (= b_free!90275 (not b_next!90979))))

(declare-fun tp!1081152 () Bool)

(declare-fun b_and!245533 () Bool)

(assert (=> b!3479954 (= tp!1081152 b_and!245533)))

(declare-fun b!3479955 () Bool)

(declare-fun b_free!90277 () Bool)

(declare-fun b_next!90981 () Bool)

(assert (=> b!3479955 (= b_free!90277 (not b_next!90981))))

(declare-fun tp!1081154 () Bool)

(declare-fun b_and!245535 () Bool)

(assert (=> b!3479955 (= tp!1081154 b_and!245535)))

(declare-fun b_free!90279 () Bool)

(declare-fun b_next!90983 () Bool)

(assert (=> b!3479955 (= b_free!90279 (not b_next!90983))))

(declare-fun tp!1081157 () Bool)

(declare-fun b_and!245537 () Bool)

(assert (=> b!3479955 (= tp!1081157 b_and!245537)))

(declare-fun b!3479941 () Bool)

(declare-fun b_free!90281 () Bool)

(declare-fun b_next!90985 () Bool)

(assert (=> b!3479941 (= b_free!90281 (not b_next!90985))))

(declare-fun tp!1081159 () Bool)

(declare-fun b_and!245539 () Bool)

(assert (=> b!3479941 (= tp!1081159 b_and!245539)))

(declare-fun b_free!90283 () Bool)

(declare-fun b_next!90987 () Bool)

(assert (=> b!3479941 (= b_free!90283 (not b_next!90987))))

(declare-fun tp!1081148 () Bool)

(declare-fun b_and!245541 () Bool)

(assert (=> b!3479941 (= tp!1081148 b_and!245541)))

(declare-fun bs!561885 () Bool)

(declare-fun b!3479962 () Bool)

(declare-fun b!3479971 () Bool)

(assert (= bs!561885 (and b!3479962 b!3479971)))

(declare-fun lambda!122215 () Int)

(declare-fun lambda!122214 () Int)

(assert (=> bs!561885 (not (= lambda!122215 lambda!122214))))

(declare-fun b!3479990 () Bool)

(declare-fun e!2155694 () Bool)

(assert (=> b!3479990 (= e!2155694 true)))

(declare-fun b!3479989 () Bool)

(declare-fun e!2155693 () Bool)

(assert (=> b!3479989 (= e!2155693 e!2155694)))

(declare-fun b!3479988 () Bool)

(declare-fun e!2155692 () Bool)

(assert (=> b!3479988 (= e!2155692 e!2155693)))

(assert (=> b!3479962 e!2155692))

(assert (= b!3479989 b!3479990))

(assert (= b!3479988 b!3479989))

(declare-datatypes ((C!20620 0))(
  ( (C!20621 (val!12358 Int)) )
))
(declare-datatypes ((Regex!10217 0))(
  ( (ElementMatch!10217 (c!596726 C!20620)) (Concat!15905 (regOne!20946 Regex!10217) (regTwo!20946 Regex!10217)) (EmptyExpr!10217) (Star!10217 (reg!10546 Regex!10217)) (EmptyLang!10217) (Union!10217 (regOne!20947 Regex!10217) (regTwo!20947 Regex!10217)) )
))
(declare-datatypes ((List!37378 0))(
  ( (Nil!37254) (Cons!37254 (h!42674 (_ BitVec 16)) (t!275435 List!37378)) )
))
(declare-datatypes ((TokenValue!5688 0))(
  ( (FloatLiteralValue!11376 (text!40261 List!37378)) (TokenValueExt!5687 (__x!23593 Int)) (Broken!28440 (value!175987 List!37378)) (Object!5811) (End!5688) (Def!5688) (Underscore!5688) (Match!5688) (Else!5688) (Error!5688) (Case!5688) (If!5688) (Extends!5688) (Abstract!5688) (Class!5688) (Val!5688) (DelimiterValue!11376 (del!5748 List!37378)) (KeywordValue!5694 (value!175988 List!37378)) (CommentValue!11376 (value!175989 List!37378)) (WhitespaceValue!11376 (value!175990 List!37378)) (IndentationValue!5688 (value!175991 List!37378)) (String!41773) (Int32!5688) (Broken!28441 (value!175992 List!37378)) (Boolean!5689) (Unit!52687) (OperatorValue!5691 (op!5748 List!37378)) (IdentifierValue!11376 (value!175993 List!37378)) (IdentifierValue!11377 (value!175994 List!37378)) (WhitespaceValue!11377 (value!175995 List!37378)) (True!11376) (False!11376) (Broken!28442 (value!175996 List!37378)) (Broken!28443 (value!175997 List!37378)) (True!11377) (RightBrace!5688) (RightBracket!5688) (Colon!5688) (Null!5688) (Comma!5688) (LeftBracket!5688) (False!11377) (LeftBrace!5688) (ImaginaryLiteralValue!5688 (text!40262 List!37378)) (StringLiteralValue!17064 (value!175998 List!37378)) (EOFValue!5688 (value!175999 List!37378)) (IdentValue!5688 (value!176000 List!37378)) (DelimiterValue!11377 (value!176001 List!37378)) (DedentValue!5688 (value!176002 List!37378)) (NewLineValue!5688 (value!176003 List!37378)) (IntegerValue!17064 (value!176004 (_ BitVec 32)) (text!40263 List!37378)) (IntegerValue!17065 (value!176005 Int) (text!40264 List!37378)) (Times!5688) (Or!5688) (Equal!5688) (Minus!5688) (Broken!28444 (value!176006 List!37378)) (And!5688) (Div!5688) (LessEqual!5688) (Mod!5688) (Concat!15906) (Not!5688) (Plus!5688) (SpaceValue!5688 (value!176007 List!37378)) (IntegerValue!17066 (value!176008 Int) (text!40265 List!37378)) (StringLiteralValue!17065 (text!40266 List!37378)) (FloatLiteralValue!11377 (text!40267 List!37378)) (BytesLiteralValue!5688 (value!176009 List!37378)) (CommentValue!11377 (value!176010 List!37378)) (StringLiteralValue!17066 (value!176011 List!37378)) (ErrorTokenValue!5688 (msg!5749 List!37378)) )
))
(declare-datatypes ((List!37379 0))(
  ( (Nil!37255) (Cons!37255 (h!42675 C!20620) (t!275436 List!37379)) )
))
(declare-datatypes ((IArray!22587 0))(
  ( (IArray!22588 (innerList!11351 List!37379)) )
))
(declare-datatypes ((Conc!11291 0))(
  ( (Node!11291 (left!29086 Conc!11291) (right!29416 Conc!11291) (csize!22812 Int) (cheight!11502 Int)) (Leaf!17631 (xs!14469 IArray!22587) (csize!22813 Int)) (Empty!11291) )
))
(declare-datatypes ((BalanceConc!22196 0))(
  ( (BalanceConc!22197 (c!596727 Conc!11291)) )
))
(declare-datatypes ((String!41774 0))(
  ( (String!41775 (value!176012 String)) )
))
(declare-datatypes ((TokenValueInjection!10804 0))(
  ( (TokenValueInjection!10805 (toValue!7694 Int) (toChars!7553 Int)) )
))
(declare-datatypes ((Rule!10716 0))(
  ( (Rule!10717 (regex!5458 Regex!10217) (tag!6080 String!41774) (isSeparator!5458 Bool) (transformation!5458 TokenValueInjection!10804)) )
))
(declare-datatypes ((List!37380 0))(
  ( (Nil!37256) (Cons!37256 (h!42676 Rule!10716) (t!275437 List!37380)) )
))
(declare-fun rules!2135 () List!37380)

(get-info :version)

(assert (= (and b!3479962 ((_ is Cons!37256) rules!2135)) b!3479988))

(declare-fun order!19933 () Int)

(declare-fun order!19935 () Int)

(declare-fun dynLambda!15768 (Int Int) Int)

(declare-fun dynLambda!15769 (Int Int) Int)

(assert (=> b!3479990 (< (dynLambda!15768 order!19933 (toValue!7694 (transformation!5458 (h!42676 rules!2135)))) (dynLambda!15769 order!19935 lambda!122215))))

(declare-fun order!19937 () Int)

(declare-fun dynLambda!15770 (Int Int) Int)

(assert (=> b!3479990 (< (dynLambda!15770 order!19937 (toChars!7553 (transformation!5458 (h!42676 rules!2135)))) (dynLambda!15769 order!19935 lambda!122215))))

(assert (=> b!3479962 true))

(declare-fun e!2155672 () Bool)

(assert (=> b!3479941 (= e!2155672 (and tp!1081159 tp!1081148))))

(declare-fun b!3479942 () Bool)

(declare-fun res!1404299 () Bool)

(declare-fun e!2155657 () Bool)

(assert (=> b!3479942 (=> (not res!1404299) (not e!2155657))))

(declare-datatypes ((Token!10282 0))(
  ( (Token!10283 (value!176013 TokenValue!5688) (rule!8064 Rule!10716) (size!28295 Int) (originalCharacters!6172 List!37379)) )
))
(declare-datatypes ((List!37381 0))(
  ( (Nil!37257) (Cons!37257 (h!42677 Token!10282) (t!275438 List!37381)) )
))
(declare-datatypes ((IArray!22589 0))(
  ( (IArray!22590 (innerList!11352 List!37381)) )
))
(declare-datatypes ((Conc!11292 0))(
  ( (Node!11292 (left!29087 Conc!11292) (right!29417 Conc!11292) (csize!22814 Int) (cheight!11503 Int)) (Leaf!17632 (xs!14470 IArray!22589) (csize!22815 Int)) (Empty!11292) )
))
(declare-datatypes ((BalanceConc!22198 0))(
  ( (BalanceConc!22199 (c!596728 Conc!11292)) )
))
(declare-datatypes ((tuple2!37024 0))(
  ( (tuple2!37025 (_1!21646 BalanceConc!22198) (_2!21646 BalanceConc!22196)) )
))
(declare-fun lt!1185066 () tuple2!37024)

(declare-fun separatorToken!241 () Token!10282)

(declare-fun apply!8820 (BalanceConc!22198 Int) Token!10282)

(assert (=> b!3479942 (= res!1404299 (= (apply!8820 (_1!21646 lt!1185066) 0) separatorToken!241))))

(declare-fun b!3479943 () Bool)

(declare-fun e!2155660 () Bool)

(declare-fun e!2155674 () Bool)

(assert (=> b!3479943 (= e!2155660 e!2155674)))

(declare-fun res!1404316 () Bool)

(assert (=> b!3479943 (=> (not res!1404316) (not e!2155674))))

(declare-fun lt!1185072 () Rule!10716)

(declare-fun lt!1185061 () List!37379)

(declare-fun matchR!4801 (Regex!10217 List!37379) Bool)

(assert (=> b!3479943 (= res!1404316 (matchR!4801 (regex!5458 lt!1185072) lt!1185061))))

(declare-datatypes ((Option!7569 0))(
  ( (None!7568) (Some!7568 (v!36956 Rule!10716)) )
))
(declare-fun lt!1185049 () Option!7569)

(declare-fun get!11940 (Option!7569) Rule!10716)

(assert (=> b!3479943 (= lt!1185072 (get!11940 lt!1185049))))

(declare-fun b!3479944 () Bool)

(declare-fun res!1404302 () Bool)

(declare-fun e!2155663 () Bool)

(assert (=> b!3479944 (=> (not res!1404302) (not e!2155663))))

(declare-fun isEmpty!21653 (List!37380) Bool)

(assert (=> b!3479944 (= res!1404302 (not (isEmpty!21653 rules!2135)))))

(declare-fun tokens!494 () List!37381)

(declare-fun b!3479945 () Bool)

(declare-fun e!2155656 () Bool)

(declare-fun tp!1081151 () Bool)

(declare-fun e!2155670 () Bool)

(declare-fun inv!50444 (String!41774) Bool)

(declare-fun inv!50447 (TokenValueInjection!10804) Bool)

(assert (=> b!3479945 (= e!2155670 (and tp!1081151 (inv!50444 (tag!6080 (rule!8064 (h!42677 tokens!494)))) (inv!50447 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) e!2155656))))

(declare-fun b!3479946 () Bool)

(declare-fun e!2155659 () Bool)

(declare-fun e!2155673 () Bool)

(assert (=> b!3479946 (= e!2155659 e!2155673)))

(declare-fun res!1404315 () Bool)

(assert (=> b!3479946 (=> res!1404315 e!2155673)))

(declare-datatypes ((LexerInterface!5047 0))(
  ( (LexerInterfaceExt!5044 (__x!23594 Int)) (Lexer!5045) )
))
(declare-fun thiss!18206 () LexerInterface!5047)

(declare-fun lt!1185063 () BalanceConc!22196)

(declare-fun isEmpty!21654 (BalanceConc!22198) Bool)

(declare-fun lex!2373 (LexerInterface!5047 List!37380 BalanceConc!22196) tuple2!37024)

(assert (=> b!3479946 (= res!1404315 (isEmpty!21654 (_1!21646 (lex!2373 thiss!18206 rules!2135 lt!1185063))))))

(declare-fun seqFromList!3969 (List!37379) BalanceConc!22196)

(assert (=> b!3479946 (= lt!1185063 (seqFromList!3969 lt!1185061))))

(declare-fun b!3479947 () Bool)

(declare-fun e!2155664 () Bool)

(assert (=> b!3479947 (= e!2155664 e!2155659)))

(declare-fun res!1404318 () Bool)

(assert (=> b!3479947 (=> res!1404318 e!2155659)))

(declare-fun lt!1185073 () List!37379)

(declare-fun lt!1185069 () List!37379)

(assert (=> b!3479947 (= res!1404318 (or (not (= lt!1185073 lt!1185061)) (not (= lt!1185069 lt!1185061))))))

(declare-fun list!13587 (BalanceConc!22196) List!37379)

(declare-fun charsOf!3472 (Token!10282) BalanceConc!22196)

(assert (=> b!3479947 (= lt!1185061 (list!13587 (charsOf!3472 (h!42677 tokens!494))))))

(declare-fun b!3479948 () Bool)

(declare-fun e!2155683 () Bool)

(declare-fun e!2155676 () Bool)

(assert (=> b!3479948 (= e!2155683 e!2155676)))

(declare-fun res!1404304 () Bool)

(assert (=> b!3479948 (=> (not res!1404304) (not e!2155676))))

(declare-fun lt!1185057 () Rule!10716)

(declare-fun lt!1185051 () List!37379)

(assert (=> b!3479948 (= res!1404304 (matchR!4801 (regex!5458 lt!1185057) lt!1185051))))

(declare-fun lt!1185082 () Option!7569)

(assert (=> b!3479948 (= lt!1185057 (get!11940 lt!1185082))))

(declare-fun b!3479949 () Bool)

(declare-fun e!2155679 () Bool)

(declare-fun e!2155678 () Bool)

(assert (=> b!3479949 (= e!2155679 e!2155678)))

(declare-fun res!1404301 () Bool)

(assert (=> b!3479949 (=> res!1404301 e!2155678)))

(declare-fun lt!1185060 () List!37379)

(declare-fun lt!1185054 () List!37379)

(assert (=> b!3479949 (= res!1404301 (not (= lt!1185060 lt!1185054)))))

(declare-fun lt!1185071 () List!37379)

(declare-fun ++!9203 (List!37379 List!37379) List!37379)

(assert (=> b!3479949 (= lt!1185054 (++!9203 (++!9203 lt!1185061 lt!1185051) lt!1185071))))

(declare-fun b!3479950 () Bool)

(declare-fun res!1404295 () Bool)

(assert (=> b!3479950 (=> (not res!1404295) (not e!2155663))))

(declare-fun sepAndNonSepRulesDisjointChars!1652 (List!37380 List!37380) Bool)

(assert (=> b!3479950 (= res!1404295 (sepAndNonSepRulesDisjointChars!1652 rules!2135 rules!2135))))

(declare-fun b!3479951 () Bool)

(assert (=> b!3479951 (= e!2155674 (= (rule!8064 (h!42677 tokens!494)) lt!1185072))))

(declare-fun b!3479952 () Bool)

(declare-fun res!1404307 () Bool)

(assert (=> b!3479952 (=> (not res!1404307) (not e!2155663))))

(assert (=> b!3479952 (= res!1404307 (and (not ((_ is Nil!37257) tokens!494)) (not ((_ is Nil!37257) (t!275438 tokens!494)))))))

(declare-fun b!3479953 () Bool)

(declare-fun e!2155662 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1869 (LexerInterface!5047 List!37380 List!37381) Bool)

(assert (=> b!3479953 (= e!2155662 (rulesProduceEachTokenIndividuallyList!1869 thiss!18206 rules!2135 tokens!494))))

(assert (=> b!3479954 (= e!2155656 (and tp!1081158 tp!1081152))))

(declare-fun e!2155669 () Bool)

(assert (=> b!3479955 (= e!2155669 (and tp!1081154 tp!1081157))))

(declare-fun tp!1081149 () Bool)

(declare-fun b!3479956 () Bool)

(declare-fun e!2155681 () Bool)

(declare-fun e!2155661 () Bool)

(declare-fun inv!21 (TokenValue!5688) Bool)

(assert (=> b!3479956 (= e!2155661 (and (inv!21 (value!176013 separatorToken!241)) e!2155681 tp!1081149))))

(declare-fun b!3479957 () Bool)

(declare-fun e!2155655 () Bool)

(assert (=> b!3479957 (= e!2155673 e!2155655)))

(declare-fun res!1404300 () Bool)

(assert (=> b!3479957 (=> res!1404300 e!2155655)))

(assert (=> b!3479957 (= res!1404300 (or (isSeparator!5458 (rule!8064 (h!42677 tokens!494))) (isSeparator!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))))))

(declare-datatypes ((Unit!52688 0))(
  ( (Unit!52689) )
))
(declare-fun lt!1185052 () Unit!52688)

(declare-fun forallContained!1405 (List!37381 Int Token!10282) Unit!52688)

(assert (=> b!3479957 (= lt!1185052 (forallContained!1405 tokens!494 lambda!122214 (h!42677 (t!275438 tokens!494))))))

(declare-fun lt!1185068 () Unit!52688)

(assert (=> b!3479957 (= lt!1185068 (forallContained!1405 tokens!494 lambda!122214 (h!42677 tokens!494)))))

(declare-fun b!3479958 () Bool)

(declare-fun e!2155675 () Bool)

(declare-fun e!2155682 () Bool)

(declare-fun tp!1081160 () Bool)

(assert (=> b!3479958 (= e!2155675 (and e!2155682 tp!1081160))))

(declare-fun b!3479959 () Bool)

(declare-fun res!1404303 () Bool)

(assert (=> b!3479959 (=> (not res!1404303) (not e!2155663))))

(declare-fun rulesProduceIndividualToken!2539 (LexerInterface!5047 List!37380 Token!10282) Bool)

(assert (=> b!3479959 (= res!1404303 (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3479960 () Bool)

(declare-fun e!2155654 () Bool)

(assert (=> b!3479960 (= e!2155678 e!2155654)))

(declare-fun res!1404293 () Bool)

(assert (=> b!3479960 (=> res!1404293 e!2155654)))

(declare-fun lt!1185065 () List!37379)

(assert (=> b!3479960 (= res!1404293 (not (= lt!1185060 lt!1185065)))))

(assert (=> b!3479960 (= lt!1185054 lt!1185065)))

(declare-fun lt!1185081 () List!37379)

(assert (=> b!3479960 (= lt!1185065 (++!9203 lt!1185061 lt!1185081))))

(declare-fun lt!1185074 () Unit!52688)

(declare-fun lemmaConcatAssociativity!1982 (List!37379 List!37379 List!37379) Unit!52688)

(assert (=> b!3479960 (= lt!1185074 (lemmaConcatAssociativity!1982 lt!1185061 lt!1185051 lt!1185071))))

(declare-fun b!3479961 () Bool)

(declare-fun e!2155671 () Unit!52688)

(declare-fun Unit!52690 () Unit!52688)

(assert (=> b!3479961 (= e!2155671 Unit!52690)))

(assert (=> b!3479962 (= e!2155654 e!2155662)))

(declare-fun res!1404308 () Bool)

(assert (=> b!3479962 (=> res!1404308 e!2155662)))

(declare-fun contains!6945 (List!37381 Token!10282) Bool)

(assert (=> b!3479962 (= res!1404308 (not (contains!6945 tokens!494 (h!42677 (t!275438 tokens!494)))))))

(declare-datatypes ((tuple2!37026 0))(
  ( (tuple2!37027 (_1!21647 Token!10282) (_2!21647 List!37379)) )
))
(declare-datatypes ((Option!7570 0))(
  ( (None!7569) (Some!7569 (v!36957 tuple2!37026)) )
))
(declare-fun maxPrefix!2587 (LexerInterface!5047 List!37380 List!37379) Option!7570)

(assert (=> b!3479962 (= (maxPrefix!2587 thiss!18206 rules!2135 lt!1185065) (Some!7569 (tuple2!37027 (h!42677 tokens!494) lt!1185081)))))

(declare-fun lt!1185075 () Unit!52688)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!214 (LexerInterface!5047 List!37380 Token!10282 Rule!10716 List!37379 Rule!10716) Unit!52688)

(assert (=> b!3479962 (= lt!1185075 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!214 thiss!18206 rules!2135 (h!42677 tokens!494) (rule!8064 (h!42677 tokens!494)) lt!1185081 (rule!8064 separatorToken!241)))))

(declare-fun lt!1185055 () C!20620)

(declare-fun contains!6946 (List!37379 C!20620) Bool)

(declare-fun usedCharacters!692 (Regex!10217) List!37379)

(assert (=> b!3479962 (not (contains!6946 (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494)))) lt!1185055))))

(declare-fun lt!1185078 () Unit!52688)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!258 (LexerInterface!5047 List!37380 List!37380 Rule!10716 Rule!10716 C!20620) Unit!52688)

(assert (=> b!3479962 (= lt!1185078 (lemmaNonSepRuleNotContainsCharContainedInASepRule!258 thiss!18206 rules!2135 rules!2135 (rule!8064 (h!42677 tokens!494)) (rule!8064 separatorToken!241) lt!1185055))))

(declare-fun lt!1185050 () Unit!52688)

(assert (=> b!3479962 (= lt!1185050 (forallContained!1405 tokens!494 lambda!122215 (h!42677 (t!275438 tokens!494))))))

(declare-fun e!2155665 () Bool)

(assert (=> b!3479962 (= (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 (t!275438 tokens!494))) e!2155665)))

(declare-fun res!1404317 () Bool)

(assert (=> b!3479962 (=> (not res!1404317) (not e!2155665))))

(declare-fun lt!1185056 () tuple2!37024)

(declare-fun size!28296 (BalanceConc!22198) Int)

(assert (=> b!3479962 (= res!1404317 (= (size!28296 (_1!21646 lt!1185056)) 1))))

(declare-fun lt!1185053 () BalanceConc!22196)

(assert (=> b!3479962 (= lt!1185056 (lex!2373 thiss!18206 rules!2135 lt!1185053))))

(declare-fun lt!1185064 () BalanceConc!22198)

(declare-fun printTailRec!1542 (LexerInterface!5047 BalanceConc!22198 Int BalanceConc!22196) BalanceConc!22196)

(assert (=> b!3479962 (= lt!1185053 (printTailRec!1542 thiss!18206 lt!1185064 0 (BalanceConc!22197 Empty!11291)))))

(declare-fun print!2112 (LexerInterface!5047 BalanceConc!22198) BalanceConc!22196)

(assert (=> b!3479962 (= lt!1185053 (print!2112 thiss!18206 lt!1185064))))

(declare-fun singletonSeq!2554 (Token!10282) BalanceConc!22198)

(assert (=> b!3479962 (= lt!1185064 (singletonSeq!2554 (h!42677 (t!275438 tokens!494))))))

(assert (=> b!3479962 e!2155657))

(declare-fun res!1404297 () Bool)

(assert (=> b!3479962 (=> (not res!1404297) (not e!2155657))))

(assert (=> b!3479962 (= res!1404297 (= (size!28296 (_1!21646 lt!1185066)) 1))))

(declare-fun lt!1185076 () BalanceConc!22196)

(assert (=> b!3479962 (= lt!1185066 (lex!2373 thiss!18206 rules!2135 lt!1185076))))

(declare-fun lt!1185048 () BalanceConc!22198)

(assert (=> b!3479962 (= lt!1185076 (printTailRec!1542 thiss!18206 lt!1185048 0 (BalanceConc!22197 Empty!11291)))))

(assert (=> b!3479962 (= lt!1185076 (print!2112 thiss!18206 lt!1185048))))

(assert (=> b!3479962 (= lt!1185048 (singletonSeq!2554 separatorToken!241))))

(declare-fun lt!1185067 () Unit!52688)

(assert (=> b!3479962 (= lt!1185067 e!2155671)))

(declare-fun c!596725 () Bool)

(assert (=> b!3479962 (= c!596725 (not (contains!6946 (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241))) lt!1185055)))))

(declare-fun head!7351 (List!37379) C!20620)

(assert (=> b!3479962 (= lt!1185055 (head!7351 lt!1185051))))

(assert (=> b!3479962 e!2155683))

(declare-fun res!1404306 () Bool)

(assert (=> b!3479962 (=> (not res!1404306) (not e!2155683))))

(declare-fun isDefined!5830 (Option!7569) Bool)

(assert (=> b!3479962 (= res!1404306 (isDefined!5830 lt!1185082))))

(declare-fun getRuleFromTag!1101 (LexerInterface!5047 List!37380 String!41774) Option!7569)

(assert (=> b!3479962 (= lt!1185082 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 separatorToken!241))))))

(declare-fun lt!1185077 () Unit!52688)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1101 (LexerInterface!5047 List!37380 List!37379 Token!10282) Unit!52688)

(assert (=> b!3479962 (= lt!1185077 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1101 thiss!18206 rules!2135 lt!1185051 separatorToken!241))))

(declare-fun maxPrefixOneRule!1754 (LexerInterface!5047 Rule!10716 List!37379) Option!7570)

(declare-fun apply!8821 (TokenValueInjection!10804 BalanceConc!22196) TokenValue!5688)

(declare-fun size!28297 (List!37379) Int)

(assert (=> b!3479962 (= (maxPrefixOneRule!1754 thiss!18206 (rule!8064 (h!42677 tokens!494)) lt!1185061) (Some!7569 (tuple2!37027 (Token!10283 (apply!8821 (transformation!5458 (rule!8064 (h!42677 tokens!494))) lt!1185063) (rule!8064 (h!42677 tokens!494)) (size!28297 lt!1185061) lt!1185061) Nil!37255)))))

(declare-fun lt!1185079 () Unit!52688)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!847 (LexerInterface!5047 List!37380 List!37379 List!37379 List!37379 Rule!10716) Unit!52688)

(assert (=> b!3479962 (= lt!1185079 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!847 thiss!18206 rules!2135 lt!1185061 lt!1185061 Nil!37255 (rule!8064 (h!42677 tokens!494))))))

(assert (=> b!3479962 e!2155660))

(declare-fun res!1404309 () Bool)

(assert (=> b!3479962 (=> (not res!1404309) (not e!2155660))))

(assert (=> b!3479962 (= res!1404309 (isDefined!5830 lt!1185049))))

(assert (=> b!3479962 (= lt!1185049 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 (h!42677 tokens!494)))))))

(declare-fun lt!1185059 () Unit!52688)

(assert (=> b!3479962 (= lt!1185059 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1101 thiss!18206 rules!2135 lt!1185061 (h!42677 tokens!494)))))

(declare-fun lt!1185062 () Unit!52688)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1036 (LexerInterface!5047 List!37380 List!37381 Token!10282) Unit!52688)

(assert (=> b!3479962 (= lt!1185062 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1036 thiss!18206 rules!2135 tokens!494 (h!42677 tokens!494)))))

(declare-fun b!3479963 () Bool)

(declare-fun res!1404294 () Bool)

(assert (=> b!3479963 (=> (not res!1404294) (not e!2155663))))

(declare-fun rulesProduceEachTokenIndividually!1498 (LexerInterface!5047 List!37380 BalanceConc!22198) Bool)

(declare-fun seqFromList!3970 (List!37381) BalanceConc!22198)

(assert (=> b!3479963 (= res!1404294 (rulesProduceEachTokenIndividually!1498 thiss!18206 rules!2135 (seqFromList!3970 tokens!494)))))

(declare-fun e!2155658 () Bool)

(declare-fun b!3479964 () Bool)

(declare-fun tp!1081150 () Bool)

(assert (=> b!3479964 (= e!2155658 (and (inv!21 (value!176013 (h!42677 tokens!494))) e!2155670 tp!1081150))))

(declare-fun b!3479965 () Bool)

(declare-fun res!1404310 () Bool)

(assert (=> b!3479965 (=> (not res!1404310) (not e!2155663))))

(declare-fun rulesInvariant!4444 (LexerInterface!5047 List!37380) Bool)

(assert (=> b!3479965 (= res!1404310 (rulesInvariant!4444 thiss!18206 rules!2135))))

(declare-fun b!3479966 () Bool)

(declare-fun e!2155684 () Bool)

(assert (=> b!3479966 (= e!2155684 false)))

(declare-fun b!3479967 () Bool)

(declare-fun tp!1081156 () Bool)

(assert (=> b!3479967 (= e!2155681 (and tp!1081156 (inv!50444 (tag!6080 (rule!8064 separatorToken!241))) (inv!50447 (transformation!5458 (rule!8064 separatorToken!241))) e!2155669))))

(declare-fun tp!1081155 () Bool)

(declare-fun b!3479968 () Bool)

(assert (=> b!3479968 (= e!2155682 (and tp!1081155 (inv!50444 (tag!6080 (h!42676 rules!2135))) (inv!50447 (transformation!5458 (h!42676 rules!2135))) e!2155672))))

(declare-fun e!2155668 () Bool)

(declare-fun b!3479969 () Bool)

(declare-fun tp!1081153 () Bool)

(declare-fun inv!50448 (Token!10282) Bool)

(assert (=> b!3479969 (= e!2155668 (and (inv!50448 (h!42677 tokens!494)) e!2155658 tp!1081153))))

(declare-fun b!3479970 () Bool)

(declare-fun isEmpty!21655 (BalanceConc!22196) Bool)

(assert (=> b!3479970 (= e!2155665 (isEmpty!21655 (_2!21646 lt!1185056)))))

(declare-fun res!1404312 () Bool)

(assert (=> b!3479971 (=> (not res!1404312) (not e!2155663))))

(declare-fun forall!7967 (List!37381 Int) Bool)

(assert (=> b!3479971 (= res!1404312 (forall!7967 tokens!494 lambda!122214))))

(declare-fun res!1404296 () Bool)

(assert (=> start!323910 (=> (not res!1404296) (not e!2155663))))

(assert (=> start!323910 (= res!1404296 ((_ is Lexer!5045) thiss!18206))))

(assert (=> start!323910 e!2155663))

(assert (=> start!323910 true))

(assert (=> start!323910 e!2155675))

(assert (=> start!323910 e!2155668))

(assert (=> start!323910 (and (inv!50448 separatorToken!241) e!2155661)))

(declare-fun b!3479972 () Bool)

(declare-fun Unit!52691 () Unit!52688)

(assert (=> b!3479972 (= e!2155671 Unit!52691)))

(declare-fun lt!1185080 () Unit!52688)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!516 (Regex!10217 List!37379 C!20620) Unit!52688)

(assert (=> b!3479972 (= lt!1185080 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!516 (regex!5458 (rule!8064 separatorToken!241)) lt!1185051 lt!1185055))))

(declare-fun res!1404311 () Bool)

(assert (=> b!3479972 (= res!1404311 (not (matchR!4801 (regex!5458 (rule!8064 separatorToken!241)) lt!1185051)))))

(assert (=> b!3479972 (=> (not res!1404311) (not e!2155684))))

(assert (=> b!3479972 e!2155684))

(declare-fun b!3479973 () Bool)

(declare-fun res!1404314 () Bool)

(assert (=> b!3479973 (=> (not res!1404314) (not e!2155663))))

(assert (=> b!3479973 (= res!1404314 (isSeparator!5458 (rule!8064 separatorToken!241)))))

(declare-fun b!3479974 () Bool)

(assert (=> b!3479974 (= e!2155676 (= (rule!8064 separatorToken!241) lt!1185057))))

(declare-fun b!3479975 () Bool)

(declare-fun res!1404313 () Bool)

(assert (=> b!3479975 (=> res!1404313 e!2155659)))

(assert (=> b!3479975 (= res!1404313 (not (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 tokens!494))))))

(declare-fun b!3479976 () Bool)

(assert (=> b!3479976 (= e!2155663 (not e!2155664))))

(declare-fun res!1404305 () Bool)

(assert (=> b!3479976 (=> res!1404305 e!2155664)))

(assert (=> b!3479976 (= res!1404305 (not (= lt!1185069 lt!1185073)))))

(declare-fun printList!1595 (LexerInterface!5047 List!37381) List!37379)

(assert (=> b!3479976 (= lt!1185073 (printList!1595 thiss!18206 (Cons!37257 (h!42677 tokens!494) Nil!37257)))))

(declare-fun lt!1185070 () BalanceConc!22196)

(assert (=> b!3479976 (= lt!1185069 (list!13587 lt!1185070))))

(declare-fun lt!1185058 () BalanceConc!22198)

(assert (=> b!3479976 (= lt!1185070 (printTailRec!1542 thiss!18206 lt!1185058 0 (BalanceConc!22197 Empty!11291)))))

(assert (=> b!3479976 (= lt!1185070 (print!2112 thiss!18206 lt!1185058))))

(assert (=> b!3479976 (= lt!1185058 (singletonSeq!2554 (h!42677 tokens!494)))))

(declare-fun b!3479977 () Bool)

(assert (=> b!3479977 (= e!2155657 (isEmpty!21655 (_2!21646 lt!1185066)))))

(declare-fun b!3479978 () Bool)

(declare-fun res!1404319 () Bool)

(assert (=> b!3479978 (=> (not res!1404319) (not e!2155665))))

(assert (=> b!3479978 (= res!1404319 (= (apply!8820 (_1!21646 lt!1185056) 0) (h!42677 (t!275438 tokens!494))))))

(declare-fun b!3479979 () Bool)

(assert (=> b!3479979 (= e!2155655 e!2155679)))

(declare-fun res!1404298 () Bool)

(assert (=> b!3479979 (=> res!1404298 e!2155679)))

(declare-fun printWithSeparatorTokenList!334 (LexerInterface!5047 List!37381 Token!10282) List!37379)

(assert (=> b!3479979 (= res!1404298 (not (= lt!1185071 (++!9203 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051) (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241)))))))

(assert (=> b!3479979 (= lt!1185081 (++!9203 lt!1185051 lt!1185071))))

(assert (=> b!3479979 (= lt!1185051 (list!13587 (charsOf!3472 separatorToken!241)))))

(assert (=> b!3479979 (= lt!1185071 (printWithSeparatorTokenList!334 thiss!18206 (t!275438 tokens!494) separatorToken!241))))

(assert (=> b!3479979 (= lt!1185060 (printWithSeparatorTokenList!334 thiss!18206 tokens!494 separatorToken!241))))

(assert (= (and start!323910 res!1404296) b!3479944))

(assert (= (and b!3479944 res!1404302) b!3479965))

(assert (= (and b!3479965 res!1404310) b!3479963))

(assert (= (and b!3479963 res!1404294) b!3479959))

(assert (= (and b!3479959 res!1404303) b!3479973))

(assert (= (and b!3479973 res!1404314) b!3479971))

(assert (= (and b!3479971 res!1404312) b!3479950))

(assert (= (and b!3479950 res!1404295) b!3479952))

(assert (= (and b!3479952 res!1404307) b!3479976))

(assert (= (and b!3479976 (not res!1404305)) b!3479947))

(assert (= (and b!3479947 (not res!1404318)) b!3479975))

(assert (= (and b!3479975 (not res!1404313)) b!3479946))

(assert (= (and b!3479946 (not res!1404315)) b!3479957))

(assert (= (and b!3479957 (not res!1404300)) b!3479979))

(assert (= (and b!3479979 (not res!1404298)) b!3479949))

(assert (= (and b!3479949 (not res!1404301)) b!3479960))

(assert (= (and b!3479960 (not res!1404293)) b!3479962))

(assert (= (and b!3479962 res!1404309) b!3479943))

(assert (= (and b!3479943 res!1404316) b!3479951))

(assert (= (and b!3479962 res!1404306) b!3479948))

(assert (= (and b!3479948 res!1404304) b!3479974))

(assert (= (and b!3479962 c!596725) b!3479972))

(assert (= (and b!3479962 (not c!596725)) b!3479961))

(assert (= (and b!3479972 res!1404311) b!3479966))

(assert (= (and b!3479962 res!1404297) b!3479942))

(assert (= (and b!3479942 res!1404299) b!3479977))

(assert (= (and b!3479962 res!1404317) b!3479978))

(assert (= (and b!3479978 res!1404319) b!3479970))

(assert (= (and b!3479962 (not res!1404308)) b!3479953))

(assert (= b!3479968 b!3479941))

(assert (= b!3479958 b!3479968))

(assert (= (and start!323910 ((_ is Cons!37256) rules!2135)) b!3479958))

(assert (= b!3479945 b!3479954))

(assert (= b!3479964 b!3479945))

(assert (= b!3479969 b!3479964))

(assert (= (and start!323910 ((_ is Cons!37257) tokens!494)) b!3479969))

(assert (= b!3479967 b!3479955))

(assert (= b!3479956 b!3479967))

(assert (= start!323910 b!3479956))

(declare-fun m!3896339 () Bool)

(assert (=> b!3479957 m!3896339))

(declare-fun m!3896341 () Bool)

(assert (=> b!3479957 m!3896341))

(declare-fun m!3896343 () Bool)

(assert (=> b!3479969 m!3896343))

(declare-fun m!3896345 () Bool)

(assert (=> b!3479977 m!3896345))

(declare-fun m!3896347 () Bool)

(assert (=> b!3479960 m!3896347))

(declare-fun m!3896349 () Bool)

(assert (=> b!3479960 m!3896349))

(declare-fun m!3896351 () Bool)

(assert (=> b!3479964 m!3896351))

(declare-fun m!3896353 () Bool)

(assert (=> b!3479948 m!3896353))

(declare-fun m!3896355 () Bool)

(assert (=> b!3479948 m!3896355))

(declare-fun m!3896357 () Bool)

(assert (=> b!3479950 m!3896357))

(declare-fun m!3896359 () Bool)

(assert (=> b!3479965 m!3896359))

(declare-fun m!3896361 () Bool)

(assert (=> b!3479943 m!3896361))

(declare-fun m!3896363 () Bool)

(assert (=> b!3479943 m!3896363))

(declare-fun m!3896365 () Bool)

(assert (=> b!3479944 m!3896365))

(declare-fun m!3896367 () Bool)

(assert (=> b!3479945 m!3896367))

(declare-fun m!3896369 () Bool)

(assert (=> b!3479945 m!3896369))

(declare-fun m!3896371 () Bool)

(assert (=> b!3479976 m!3896371))

(declare-fun m!3896373 () Bool)

(assert (=> b!3479976 m!3896373))

(declare-fun m!3896375 () Bool)

(assert (=> b!3479976 m!3896375))

(declare-fun m!3896377 () Bool)

(assert (=> b!3479976 m!3896377))

(declare-fun m!3896379 () Bool)

(assert (=> b!3479976 m!3896379))

(declare-fun m!3896381 () Bool)

(assert (=> start!323910 m!3896381))

(declare-fun m!3896383 () Bool)

(assert (=> b!3479975 m!3896383))

(declare-fun m!3896385 () Bool)

(assert (=> b!3479947 m!3896385))

(assert (=> b!3479947 m!3896385))

(declare-fun m!3896387 () Bool)

(assert (=> b!3479947 m!3896387))

(declare-fun m!3896389 () Bool)

(assert (=> b!3479978 m!3896389))

(declare-fun m!3896391 () Bool)

(assert (=> b!3479972 m!3896391))

(declare-fun m!3896393 () Bool)

(assert (=> b!3479972 m!3896393))

(declare-fun m!3896395 () Bool)

(assert (=> b!3479979 m!3896395))

(declare-fun m!3896397 () Bool)

(assert (=> b!3479979 m!3896397))

(declare-fun m!3896399 () Bool)

(assert (=> b!3479979 m!3896399))

(declare-fun m!3896401 () Bool)

(assert (=> b!3479979 m!3896401))

(declare-fun m!3896403 () Bool)

(assert (=> b!3479979 m!3896403))

(assert (=> b!3479979 m!3896395))

(declare-fun m!3896405 () Bool)

(assert (=> b!3479979 m!3896405))

(declare-fun m!3896407 () Bool)

(assert (=> b!3479979 m!3896407))

(declare-fun m!3896409 () Bool)

(assert (=> b!3479979 m!3896409))

(declare-fun m!3896411 () Bool)

(assert (=> b!3479979 m!3896411))

(assert (=> b!3479979 m!3896405))

(assert (=> b!3479979 m!3896407))

(assert (=> b!3479979 m!3896409))

(assert (=> b!3479979 m!3896397))

(declare-fun m!3896413 () Bool)

(assert (=> b!3479979 m!3896413))

(declare-fun m!3896415 () Bool)

(assert (=> b!3479963 m!3896415))

(assert (=> b!3479963 m!3896415))

(declare-fun m!3896417 () Bool)

(assert (=> b!3479963 m!3896417))

(declare-fun m!3896419 () Bool)

(assert (=> b!3479968 m!3896419))

(declare-fun m!3896421 () Bool)

(assert (=> b!3479968 m!3896421))

(declare-fun m!3896423 () Bool)

(assert (=> b!3479967 m!3896423))

(declare-fun m!3896425 () Bool)

(assert (=> b!3479967 m!3896425))

(declare-fun m!3896427 () Bool)

(assert (=> b!3479959 m!3896427))

(declare-fun m!3896429 () Bool)

(assert (=> b!3479953 m!3896429))

(declare-fun m!3896431 () Bool)

(assert (=> b!3479946 m!3896431))

(declare-fun m!3896433 () Bool)

(assert (=> b!3479946 m!3896433))

(declare-fun m!3896435 () Bool)

(assert (=> b!3479946 m!3896435))

(declare-fun m!3896437 () Bool)

(assert (=> b!3479949 m!3896437))

(assert (=> b!3479949 m!3896437))

(declare-fun m!3896439 () Bool)

(assert (=> b!3479949 m!3896439))

(declare-fun m!3896441 () Bool)

(assert (=> b!3479956 m!3896441))

(declare-fun m!3896443 () Bool)

(assert (=> b!3479942 m!3896443))

(declare-fun m!3896445 () Bool)

(assert (=> b!3479970 m!3896445))

(declare-fun m!3896447 () Bool)

(assert (=> b!3479971 m!3896447))

(declare-fun m!3896449 () Bool)

(assert (=> b!3479962 m!3896449))

(declare-fun m!3896451 () Bool)

(assert (=> b!3479962 m!3896451))

(declare-fun m!3896453 () Bool)

(assert (=> b!3479962 m!3896453))

(declare-fun m!3896455 () Bool)

(assert (=> b!3479962 m!3896455))

(declare-fun m!3896457 () Bool)

(assert (=> b!3479962 m!3896457))

(declare-fun m!3896459 () Bool)

(assert (=> b!3479962 m!3896459))

(declare-fun m!3896461 () Bool)

(assert (=> b!3479962 m!3896461))

(declare-fun m!3896463 () Bool)

(assert (=> b!3479962 m!3896463))

(declare-fun m!3896465 () Bool)

(assert (=> b!3479962 m!3896465))

(declare-fun m!3896467 () Bool)

(assert (=> b!3479962 m!3896467))

(declare-fun m!3896469 () Bool)

(assert (=> b!3479962 m!3896469))

(declare-fun m!3896471 () Bool)

(assert (=> b!3479962 m!3896471))

(declare-fun m!3896473 () Bool)

(assert (=> b!3479962 m!3896473))

(declare-fun m!3896475 () Bool)

(assert (=> b!3479962 m!3896475))

(declare-fun m!3896477 () Bool)

(assert (=> b!3479962 m!3896477))

(assert (=> b!3479962 m!3896451))

(declare-fun m!3896479 () Bool)

(assert (=> b!3479962 m!3896479))

(declare-fun m!3896481 () Bool)

(assert (=> b!3479962 m!3896481))

(declare-fun m!3896483 () Bool)

(assert (=> b!3479962 m!3896483))

(declare-fun m!3896485 () Bool)

(assert (=> b!3479962 m!3896485))

(declare-fun m!3896487 () Bool)

(assert (=> b!3479962 m!3896487))

(declare-fun m!3896489 () Bool)

(assert (=> b!3479962 m!3896489))

(assert (=> b!3479962 m!3896469))

(declare-fun m!3896491 () Bool)

(assert (=> b!3479962 m!3896491))

(declare-fun m!3896493 () Bool)

(assert (=> b!3479962 m!3896493))

(declare-fun m!3896495 () Bool)

(assert (=> b!3479962 m!3896495))

(declare-fun m!3896497 () Bool)

(assert (=> b!3479962 m!3896497))

(declare-fun m!3896499 () Bool)

(assert (=> b!3479962 m!3896499))

(declare-fun m!3896501 () Bool)

(assert (=> b!3479962 m!3896501))

(declare-fun m!3896503 () Bool)

(assert (=> b!3479962 m!3896503))

(declare-fun m!3896505 () Bool)

(assert (=> b!3479962 m!3896505))

(declare-fun m!3896507 () Bool)

(assert (=> b!3479962 m!3896507))

(declare-fun m!3896509 () Bool)

(assert (=> b!3479962 m!3896509))

(declare-fun m!3896511 () Bool)

(assert (=> b!3479962 m!3896511))

(check-sat (not b!3479963) (not b!3479968) (not b!3479958) (not b!3479950) (not b_next!90981) (not b!3479965) (not b!3479948) b_and!245535 (not b!3479943) (not b_next!90977) (not b!3479967) (not b!3479988) (not b!3479978) (not b!3479953) b_and!245531 (not b_next!90983) (not b_next!90979) (not b!3479970) (not b!3479944) b_and!245539 (not b!3479976) (not b!3479959) (not b!3479956) (not b!3479957) b_and!245537 (not start!323910) (not b!3479946) (not b!3479972) (not b!3479960) (not b!3479945) b_and!245541 (not b!3479979) b_and!245533 (not b!3479947) (not b!3479969) (not b!3479962) (not b!3479971) (not b!3479977) (not b_next!90987) (not b_next!90985) (not b!3479942) (not b!3479964) (not b!3479949) (not b!3479975))
(check-sat (not b_next!90981) b_and!245539 b_and!245537 b_and!245541 b_and!245535 b_and!245533 (not b_next!90977) b_and!245531 (not b_next!90983) (not b_next!90979) (not b_next!90987) (not b_next!90985))
(get-model)

(declare-fun b!3480055 () Bool)

(declare-fun e!2155730 () Bool)

(declare-fun e!2155731 () Bool)

(assert (=> b!3480055 (= e!2155730 e!2155731)))

(declare-fun c!596739 () Bool)

(assert (=> b!3480055 (= c!596739 ((_ is EmptyLang!10217) (regex!5458 lt!1185057)))))

(declare-fun b!3480056 () Bool)

(declare-fun e!2155734 () Bool)

(declare-fun e!2155736 () Bool)

(assert (=> b!3480056 (= e!2155734 e!2155736)))

(declare-fun res!1404376 () Bool)

(assert (=> b!3480056 (=> res!1404376 e!2155736)))

(declare-fun call!250941 () Bool)

(assert (=> b!3480056 (= res!1404376 call!250941)))

(declare-fun b!3480057 () Bool)

(declare-fun e!2155735 () Bool)

(assert (=> b!3480057 (= e!2155735 (= (head!7351 lt!1185051) (c!596726 (regex!5458 lt!1185057))))))

(declare-fun bm!250936 () Bool)

(declare-fun isEmpty!21657 (List!37379) Bool)

(assert (=> bm!250936 (= call!250941 (isEmpty!21657 lt!1185051))))

(declare-fun d!1005022 () Bool)

(assert (=> d!1005022 e!2155730))

(declare-fun c!596741 () Bool)

(assert (=> d!1005022 (= c!596741 ((_ is EmptyExpr!10217) (regex!5458 lt!1185057)))))

(declare-fun lt!1185089 () Bool)

(declare-fun e!2155733 () Bool)

(assert (=> d!1005022 (= lt!1185089 e!2155733)))

(declare-fun c!596740 () Bool)

(assert (=> d!1005022 (= c!596740 (isEmpty!21657 lt!1185051))))

(declare-fun validRegex!4657 (Regex!10217) Bool)

(assert (=> d!1005022 (validRegex!4657 (regex!5458 lt!1185057))))

(assert (=> d!1005022 (= (matchR!4801 (regex!5458 lt!1185057) lt!1185051) lt!1185089)))

(declare-fun b!3480058 () Bool)

(declare-fun res!1404372 () Bool)

(declare-fun e!2155732 () Bool)

(assert (=> b!3480058 (=> res!1404372 e!2155732)))

(assert (=> b!3480058 (= res!1404372 e!2155735)))

(declare-fun res!1404370 () Bool)

(assert (=> b!3480058 (=> (not res!1404370) (not e!2155735))))

(assert (=> b!3480058 (= res!1404370 lt!1185089)))

(declare-fun b!3480059 () Bool)

(assert (=> b!3480059 (= e!2155730 (= lt!1185089 call!250941))))

(declare-fun b!3480060 () Bool)

(declare-fun derivativeStep!3054 (Regex!10217 C!20620) Regex!10217)

(declare-fun tail!5458 (List!37379) List!37379)

(assert (=> b!3480060 (= e!2155733 (matchR!4801 (derivativeStep!3054 (regex!5458 lt!1185057) (head!7351 lt!1185051)) (tail!5458 lt!1185051)))))

(declare-fun b!3480061 () Bool)

(declare-fun nullable!3501 (Regex!10217) Bool)

(assert (=> b!3480061 (= e!2155733 (nullable!3501 (regex!5458 lt!1185057)))))

(declare-fun b!3480062 () Bool)

(declare-fun res!1404373 () Bool)

(assert (=> b!3480062 (=> res!1404373 e!2155732)))

(assert (=> b!3480062 (= res!1404373 (not ((_ is ElementMatch!10217) (regex!5458 lt!1185057))))))

(assert (=> b!3480062 (= e!2155731 e!2155732)))

(declare-fun b!3480063 () Bool)

(declare-fun res!1404374 () Bool)

(assert (=> b!3480063 (=> res!1404374 e!2155736)))

(assert (=> b!3480063 (= res!1404374 (not (isEmpty!21657 (tail!5458 lt!1185051))))))

(declare-fun b!3480064 () Bool)

(assert (=> b!3480064 (= e!2155736 (not (= (head!7351 lt!1185051) (c!596726 (regex!5458 lt!1185057)))))))

(declare-fun b!3480065 () Bool)

(assert (=> b!3480065 (= e!2155732 e!2155734)))

(declare-fun res!1404369 () Bool)

(assert (=> b!3480065 (=> (not res!1404369) (not e!2155734))))

(assert (=> b!3480065 (= res!1404369 (not lt!1185089))))

(declare-fun b!3480066 () Bool)

(declare-fun res!1404375 () Bool)

(assert (=> b!3480066 (=> (not res!1404375) (not e!2155735))))

(assert (=> b!3480066 (= res!1404375 (isEmpty!21657 (tail!5458 lt!1185051)))))

(declare-fun b!3480067 () Bool)

(assert (=> b!3480067 (= e!2155731 (not lt!1185089))))

(declare-fun b!3480068 () Bool)

(declare-fun res!1404371 () Bool)

(assert (=> b!3480068 (=> (not res!1404371) (not e!2155735))))

(assert (=> b!3480068 (= res!1404371 (not call!250941))))

(assert (= (and d!1005022 c!596740) b!3480061))

(assert (= (and d!1005022 (not c!596740)) b!3480060))

(assert (= (and d!1005022 c!596741) b!3480059))

(assert (= (and d!1005022 (not c!596741)) b!3480055))

(assert (= (and b!3480055 c!596739) b!3480067))

(assert (= (and b!3480055 (not c!596739)) b!3480062))

(assert (= (and b!3480062 (not res!1404373)) b!3480058))

(assert (= (and b!3480058 res!1404370) b!3480068))

(assert (= (and b!3480068 res!1404371) b!3480066))

(assert (= (and b!3480066 res!1404375) b!3480057))

(assert (= (and b!3480058 (not res!1404372)) b!3480065))

(assert (= (and b!3480065 res!1404369) b!3480056))

(assert (= (and b!3480056 (not res!1404376)) b!3480063))

(assert (= (and b!3480063 (not res!1404374)) b!3480064))

(assert (= (or b!3480059 b!3480056 b!3480068) bm!250936))

(declare-fun m!3896563 () Bool)

(assert (=> b!3480061 m!3896563))

(assert (=> b!3480064 m!3896467))

(assert (=> b!3480060 m!3896467))

(assert (=> b!3480060 m!3896467))

(declare-fun m!3896565 () Bool)

(assert (=> b!3480060 m!3896565))

(declare-fun m!3896567 () Bool)

(assert (=> b!3480060 m!3896567))

(assert (=> b!3480060 m!3896565))

(assert (=> b!3480060 m!3896567))

(declare-fun m!3896569 () Bool)

(assert (=> b!3480060 m!3896569))

(declare-fun m!3896571 () Bool)

(assert (=> d!1005022 m!3896571))

(declare-fun m!3896573 () Bool)

(assert (=> d!1005022 m!3896573))

(assert (=> b!3480057 m!3896467))

(assert (=> b!3480066 m!3896567))

(assert (=> b!3480066 m!3896567))

(declare-fun m!3896575 () Bool)

(assert (=> b!3480066 m!3896575))

(assert (=> b!3480063 m!3896567))

(assert (=> b!3480063 m!3896567))

(assert (=> b!3480063 m!3896575))

(assert (=> bm!250936 m!3896571))

(assert (=> b!3479948 d!1005022))

(declare-fun d!1005042 () Bool)

(assert (=> d!1005042 (= (get!11940 lt!1185082) (v!36956 lt!1185082))))

(assert (=> b!3479948 d!1005042))

(declare-fun d!1005044 () Bool)

(declare-fun res!1404381 () Bool)

(declare-fun e!2155739 () Bool)

(assert (=> d!1005044 (=> (not res!1404381) (not e!2155739))))

(assert (=> d!1005044 (= res!1404381 (not (isEmpty!21657 (originalCharacters!6172 (h!42677 tokens!494)))))))

(assert (=> d!1005044 (= (inv!50448 (h!42677 tokens!494)) e!2155739)))

(declare-fun b!3480073 () Bool)

(declare-fun res!1404382 () Bool)

(assert (=> b!3480073 (=> (not res!1404382) (not e!2155739))))

(declare-fun dynLambda!15773 (Int TokenValue!5688) BalanceConc!22196)

(assert (=> b!3480073 (= res!1404382 (= (originalCharacters!6172 (h!42677 tokens!494)) (list!13587 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (value!176013 (h!42677 tokens!494))))))))

(declare-fun b!3480074 () Bool)

(assert (=> b!3480074 (= e!2155739 (= (size!28295 (h!42677 tokens!494)) (size!28297 (originalCharacters!6172 (h!42677 tokens!494)))))))

(assert (= (and d!1005044 res!1404381) b!3480073))

(assert (= (and b!3480073 res!1404382) b!3480074))

(declare-fun b_lambda!100645 () Bool)

(assert (=> (not b_lambda!100645) (not b!3480073)))

(declare-fun t!275446 () Bool)

(declare-fun tb!190797 () Bool)

(assert (=> (and b!3479954 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275446) tb!190797))

(declare-fun b!3480079 () Bool)

(declare-fun e!2155742 () Bool)

(declare-fun tp!1081166 () Bool)

(declare-fun inv!50451 (Conc!11291) Bool)

(assert (=> b!3480079 (= e!2155742 (and (inv!50451 (c!596727 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (value!176013 (h!42677 tokens!494))))) tp!1081166))))

(declare-fun result!234940 () Bool)

(declare-fun inv!50452 (BalanceConc!22196) Bool)

(assert (=> tb!190797 (= result!234940 (and (inv!50452 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (value!176013 (h!42677 tokens!494)))) e!2155742))))

(assert (= tb!190797 b!3480079))

(declare-fun m!3896577 () Bool)

(assert (=> b!3480079 m!3896577))

(declare-fun m!3896579 () Bool)

(assert (=> tb!190797 m!3896579))

(assert (=> b!3480073 t!275446))

(declare-fun b_and!245549 () Bool)

(assert (= b_and!245533 (and (=> t!275446 result!234940) b_and!245549)))

(declare-fun t!275448 () Bool)

(declare-fun tb!190799 () Bool)

(assert (=> (and b!3479955 (= (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275448) tb!190799))

(declare-fun result!234944 () Bool)

(assert (= result!234944 result!234940))

(assert (=> b!3480073 t!275448))

(declare-fun b_and!245551 () Bool)

(assert (= b_and!245537 (and (=> t!275448 result!234944) b_and!245551)))

(declare-fun tb!190801 () Bool)

(declare-fun t!275450 () Bool)

(assert (=> (and b!3479941 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275450) tb!190801))

(declare-fun result!234946 () Bool)

(assert (= result!234946 result!234940))

(assert (=> b!3480073 t!275450))

(declare-fun b_and!245553 () Bool)

(assert (= b_and!245541 (and (=> t!275450 result!234946) b_and!245553)))

(declare-fun m!3896581 () Bool)

(assert (=> d!1005044 m!3896581))

(declare-fun m!3896583 () Bool)

(assert (=> b!3480073 m!3896583))

(assert (=> b!3480073 m!3896583))

(declare-fun m!3896585 () Bool)

(assert (=> b!3480073 m!3896585))

(declare-fun m!3896587 () Bool)

(assert (=> b!3480074 m!3896587))

(assert (=> b!3479969 d!1005044))

(declare-fun d!1005046 () Bool)

(declare-fun res!1404387 () Bool)

(declare-fun e!2155747 () Bool)

(assert (=> d!1005046 (=> res!1404387 e!2155747)))

(assert (=> d!1005046 (= res!1404387 ((_ is Nil!37257) tokens!494))))

(assert (=> d!1005046 (= (forall!7967 tokens!494 lambda!122214) e!2155747)))

(declare-fun b!3480084 () Bool)

(declare-fun e!2155748 () Bool)

(assert (=> b!3480084 (= e!2155747 e!2155748)))

(declare-fun res!1404388 () Bool)

(assert (=> b!3480084 (=> (not res!1404388) (not e!2155748))))

(declare-fun dynLambda!15774 (Int Token!10282) Bool)

(assert (=> b!3480084 (= res!1404388 (dynLambda!15774 lambda!122214 (h!42677 tokens!494)))))

(declare-fun b!3480085 () Bool)

(assert (=> b!3480085 (= e!2155748 (forall!7967 (t!275438 tokens!494) lambda!122214))))

(assert (= (and d!1005046 (not res!1404387)) b!3480084))

(assert (= (and b!3480084 res!1404388) b!3480085))

(declare-fun b_lambda!100647 () Bool)

(assert (=> (not b_lambda!100647) (not b!3480084)))

(declare-fun m!3896589 () Bool)

(assert (=> b!3480084 m!3896589))

(declare-fun m!3896591 () Bool)

(assert (=> b!3480085 m!3896591))

(assert (=> b!3479971 d!1005046))

(declare-fun d!1005048 () Bool)

(declare-fun lt!1185092 () Bool)

(assert (=> d!1005048 (= lt!1185092 (isEmpty!21657 (list!13587 (_2!21646 lt!1185056))))))

(declare-fun isEmpty!21658 (Conc!11291) Bool)

(assert (=> d!1005048 (= lt!1185092 (isEmpty!21658 (c!596727 (_2!21646 lt!1185056))))))

(assert (=> d!1005048 (= (isEmpty!21655 (_2!21646 lt!1185056)) lt!1185092)))

(declare-fun bs!561886 () Bool)

(assert (= bs!561886 d!1005048))

(declare-fun m!3896593 () Bool)

(assert (=> bs!561886 m!3896593))

(assert (=> bs!561886 m!3896593))

(declare-fun m!3896595 () Bool)

(assert (=> bs!561886 m!3896595))

(declare-fun m!3896597 () Bool)

(assert (=> bs!561886 m!3896597))

(assert (=> b!3479970 d!1005048))

(declare-fun e!2155753 () Bool)

(declare-fun b!3480097 () Bool)

(declare-fun lt!1185095 () List!37379)

(assert (=> b!3480097 (= e!2155753 (or (not (= lt!1185071 Nil!37255)) (= lt!1185095 (++!9203 lt!1185061 lt!1185051))))))

(declare-fun b!3480096 () Bool)

(declare-fun res!1404393 () Bool)

(assert (=> b!3480096 (=> (not res!1404393) (not e!2155753))))

(assert (=> b!3480096 (= res!1404393 (= (size!28297 lt!1185095) (+ (size!28297 (++!9203 lt!1185061 lt!1185051)) (size!28297 lt!1185071))))))

(declare-fun d!1005050 () Bool)

(assert (=> d!1005050 e!2155753))

(declare-fun res!1404394 () Bool)

(assert (=> d!1005050 (=> (not res!1404394) (not e!2155753))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5219 (List!37379) (InoxSet C!20620))

(assert (=> d!1005050 (= res!1404394 (= (content!5219 lt!1185095) ((_ map or) (content!5219 (++!9203 lt!1185061 lt!1185051)) (content!5219 lt!1185071))))))

(declare-fun e!2155754 () List!37379)

(assert (=> d!1005050 (= lt!1185095 e!2155754)))

(declare-fun c!596744 () Bool)

(assert (=> d!1005050 (= c!596744 ((_ is Nil!37255) (++!9203 lt!1185061 lt!1185051)))))

(assert (=> d!1005050 (= (++!9203 (++!9203 lt!1185061 lt!1185051) lt!1185071) lt!1185095)))

(declare-fun b!3480094 () Bool)

(assert (=> b!3480094 (= e!2155754 lt!1185071)))

(declare-fun b!3480095 () Bool)

(assert (=> b!3480095 (= e!2155754 (Cons!37255 (h!42675 (++!9203 lt!1185061 lt!1185051)) (++!9203 (t!275436 (++!9203 lt!1185061 lt!1185051)) lt!1185071)))))

(assert (= (and d!1005050 c!596744) b!3480094))

(assert (= (and d!1005050 (not c!596744)) b!3480095))

(assert (= (and d!1005050 res!1404394) b!3480096))

(assert (= (and b!3480096 res!1404393) b!3480097))

(declare-fun m!3896599 () Bool)

(assert (=> b!3480096 m!3896599))

(assert (=> b!3480096 m!3896437))

(declare-fun m!3896601 () Bool)

(assert (=> b!3480096 m!3896601))

(declare-fun m!3896603 () Bool)

(assert (=> b!3480096 m!3896603))

(declare-fun m!3896605 () Bool)

(assert (=> d!1005050 m!3896605))

(assert (=> d!1005050 m!3896437))

(declare-fun m!3896607 () Bool)

(assert (=> d!1005050 m!3896607))

(declare-fun m!3896609 () Bool)

(assert (=> d!1005050 m!3896609))

(declare-fun m!3896611 () Bool)

(assert (=> b!3480095 m!3896611))

(assert (=> b!3479949 d!1005050))

(declare-fun e!2155755 () Bool)

(declare-fun lt!1185096 () List!37379)

(declare-fun b!3480101 () Bool)

(assert (=> b!3480101 (= e!2155755 (or (not (= lt!1185051 Nil!37255)) (= lt!1185096 lt!1185061)))))

(declare-fun b!3480100 () Bool)

(declare-fun res!1404395 () Bool)

(assert (=> b!3480100 (=> (not res!1404395) (not e!2155755))))

(assert (=> b!3480100 (= res!1404395 (= (size!28297 lt!1185096) (+ (size!28297 lt!1185061) (size!28297 lt!1185051))))))

(declare-fun d!1005052 () Bool)

(assert (=> d!1005052 e!2155755))

(declare-fun res!1404396 () Bool)

(assert (=> d!1005052 (=> (not res!1404396) (not e!2155755))))

(assert (=> d!1005052 (= res!1404396 (= (content!5219 lt!1185096) ((_ map or) (content!5219 lt!1185061) (content!5219 lt!1185051))))))

(declare-fun e!2155756 () List!37379)

(assert (=> d!1005052 (= lt!1185096 e!2155756)))

(declare-fun c!596745 () Bool)

(assert (=> d!1005052 (= c!596745 ((_ is Nil!37255) lt!1185061))))

(assert (=> d!1005052 (= (++!9203 lt!1185061 lt!1185051) lt!1185096)))

(declare-fun b!3480098 () Bool)

(assert (=> b!3480098 (= e!2155756 lt!1185051)))

(declare-fun b!3480099 () Bool)

(assert (=> b!3480099 (= e!2155756 (Cons!37255 (h!42675 lt!1185061) (++!9203 (t!275436 lt!1185061) lt!1185051)))))

(assert (= (and d!1005052 c!596745) b!3480098))

(assert (= (and d!1005052 (not c!596745)) b!3480099))

(assert (= (and d!1005052 res!1404396) b!3480100))

(assert (= (and b!3480100 res!1404395) b!3480101))

(declare-fun m!3896613 () Bool)

(assert (=> b!3480100 m!3896613))

(assert (=> b!3480100 m!3896483))

(declare-fun m!3896615 () Bool)

(assert (=> b!3480100 m!3896615))

(declare-fun m!3896617 () Bool)

(assert (=> d!1005052 m!3896617))

(declare-fun m!3896619 () Bool)

(assert (=> d!1005052 m!3896619))

(declare-fun m!3896621 () Bool)

(assert (=> d!1005052 m!3896621))

(declare-fun m!3896623 () Bool)

(assert (=> b!3480099 m!3896623))

(assert (=> b!3479949 d!1005052))

(declare-fun d!1005054 () Bool)

(assert (=> d!1005054 (= (inv!50444 (tag!6080 (rule!8064 separatorToken!241))) (= (mod (str.len (value!176012 (tag!6080 (rule!8064 separatorToken!241)))) 2) 0))))

(assert (=> b!3479967 d!1005054))

(declare-fun d!1005056 () Bool)

(declare-fun res!1404399 () Bool)

(declare-fun e!2155759 () Bool)

(assert (=> d!1005056 (=> (not res!1404399) (not e!2155759))))

(declare-fun semiInverseModEq!2297 (Int Int) Bool)

(assert (=> d!1005056 (= res!1404399 (semiInverseModEq!2297 (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toValue!7694 (transformation!5458 (rule!8064 separatorToken!241)))))))

(assert (=> d!1005056 (= (inv!50447 (transformation!5458 (rule!8064 separatorToken!241))) e!2155759)))

(declare-fun b!3480104 () Bool)

(declare-fun equivClasses!2196 (Int Int) Bool)

(assert (=> b!3480104 (= e!2155759 (equivClasses!2196 (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toValue!7694 (transformation!5458 (rule!8064 separatorToken!241)))))))

(assert (= (and d!1005056 res!1404399) b!3480104))

(declare-fun m!3896625 () Bool)

(assert (=> d!1005056 m!3896625))

(declare-fun m!3896627 () Bool)

(assert (=> b!3480104 m!3896627))

(assert (=> b!3479967 d!1005056))

(declare-fun d!1005058 () Bool)

(assert (=> d!1005058 (= (inv!50444 (tag!6080 (rule!8064 (h!42677 tokens!494)))) (= (mod (str.len (value!176012 (tag!6080 (rule!8064 (h!42677 tokens!494))))) 2) 0))))

(assert (=> b!3479945 d!1005058))

(declare-fun d!1005060 () Bool)

(declare-fun res!1404400 () Bool)

(declare-fun e!2155760 () Bool)

(assert (=> d!1005060 (=> (not res!1404400) (not e!2155760))))

(assert (=> d!1005060 (= res!1404400 (semiInverseModEq!2297 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))))))

(assert (=> d!1005060 (= (inv!50447 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) e!2155760)))

(declare-fun b!3480105 () Bool)

(assert (=> b!3480105 (= e!2155760 (equivClasses!2196 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))))))

(assert (= (and d!1005060 res!1404400) b!3480105))

(declare-fun m!3896629 () Bool)

(assert (=> d!1005060 m!3896629))

(declare-fun m!3896631 () Bool)

(assert (=> b!3480105 m!3896631))

(assert (=> b!3479945 d!1005060))

(declare-fun d!1005062 () Bool)

(assert (=> d!1005062 (= (inv!50444 (tag!6080 (h!42676 rules!2135))) (= (mod (str.len (value!176012 (tag!6080 (h!42676 rules!2135)))) 2) 0))))

(assert (=> b!3479968 d!1005062))

(declare-fun d!1005064 () Bool)

(declare-fun res!1404401 () Bool)

(declare-fun e!2155761 () Bool)

(assert (=> d!1005064 (=> (not res!1404401) (not e!2155761))))

(assert (=> d!1005064 (= res!1404401 (semiInverseModEq!2297 (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toValue!7694 (transformation!5458 (h!42676 rules!2135)))))))

(assert (=> d!1005064 (= (inv!50447 (transformation!5458 (h!42676 rules!2135))) e!2155761)))

(declare-fun b!3480106 () Bool)

(assert (=> b!3480106 (= e!2155761 (equivClasses!2196 (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toValue!7694 (transformation!5458 (h!42676 rules!2135)))))))

(assert (= (and d!1005064 res!1404401) b!3480106))

(declare-fun m!3896633 () Bool)

(assert (=> d!1005064 m!3896633))

(declare-fun m!3896635 () Bool)

(assert (=> b!3480106 m!3896635))

(assert (=> b!3479968 d!1005064))

(declare-fun d!1005066 () Bool)

(declare-fun list!13590 (Conc!11291) List!37379)

(assert (=> d!1005066 (= (list!13587 (charsOf!3472 (h!42677 tokens!494))) (list!13590 (c!596727 (charsOf!3472 (h!42677 tokens!494)))))))

(declare-fun bs!561887 () Bool)

(assert (= bs!561887 d!1005066))

(declare-fun m!3896637 () Bool)

(assert (=> bs!561887 m!3896637))

(assert (=> b!3479947 d!1005066))

(declare-fun d!1005068 () Bool)

(declare-fun lt!1185099 () BalanceConc!22196)

(assert (=> d!1005068 (= (list!13587 lt!1185099) (originalCharacters!6172 (h!42677 tokens!494)))))

(assert (=> d!1005068 (= lt!1185099 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (value!176013 (h!42677 tokens!494))))))

(assert (=> d!1005068 (= (charsOf!3472 (h!42677 tokens!494)) lt!1185099)))

(declare-fun b_lambda!100649 () Bool)

(assert (=> (not b_lambda!100649) (not d!1005068)))

(assert (=> d!1005068 t!275446))

(declare-fun b_and!245555 () Bool)

(assert (= b_and!245549 (and (=> t!275446 result!234940) b_and!245555)))

(assert (=> d!1005068 t!275448))

(declare-fun b_and!245557 () Bool)

(assert (= b_and!245551 (and (=> t!275448 result!234944) b_and!245557)))

(assert (=> d!1005068 t!275450))

(declare-fun b_and!245559 () Bool)

(assert (= b_and!245553 (and (=> t!275450 result!234946) b_and!245559)))

(declare-fun m!3896639 () Bool)

(assert (=> d!1005068 m!3896639))

(assert (=> d!1005068 m!3896583))

(assert (=> b!3479947 d!1005068))

(declare-fun d!1005070 () Bool)

(declare-fun lt!1185102 () Bool)

(declare-fun isEmpty!21659 (List!37381) Bool)

(declare-fun list!13591 (BalanceConc!22198) List!37381)

(assert (=> d!1005070 (= lt!1185102 (isEmpty!21659 (list!13591 (_1!21646 (lex!2373 thiss!18206 rules!2135 lt!1185063)))))))

(declare-fun isEmpty!21660 (Conc!11292) Bool)

(assert (=> d!1005070 (= lt!1185102 (isEmpty!21660 (c!596728 (_1!21646 (lex!2373 thiss!18206 rules!2135 lt!1185063)))))))

(assert (=> d!1005070 (= (isEmpty!21654 (_1!21646 (lex!2373 thiss!18206 rules!2135 lt!1185063))) lt!1185102)))

(declare-fun bs!561888 () Bool)

(assert (= bs!561888 d!1005070))

(declare-fun m!3896641 () Bool)

(assert (=> bs!561888 m!3896641))

(assert (=> bs!561888 m!3896641))

(declare-fun m!3896643 () Bool)

(assert (=> bs!561888 m!3896643))

(declare-fun m!3896645 () Bool)

(assert (=> bs!561888 m!3896645))

(assert (=> b!3479946 d!1005070))

(declare-fun d!1005072 () Bool)

(declare-fun e!2155790 () Bool)

(assert (=> d!1005072 e!2155790))

(declare-fun res!1404428 () Bool)

(assert (=> d!1005072 (=> (not res!1404428) (not e!2155790))))

(declare-fun e!2155791 () Bool)

(assert (=> d!1005072 (= res!1404428 e!2155791)))

(declare-fun c!596748 () Bool)

(declare-fun lt!1185115 () tuple2!37024)

(assert (=> d!1005072 (= c!596748 (> (size!28296 (_1!21646 lt!1185115)) 0))))

(declare-fun lexTailRecV2!1069 (LexerInterface!5047 List!37380 BalanceConc!22196 BalanceConc!22196 BalanceConc!22196 BalanceConc!22198) tuple2!37024)

(assert (=> d!1005072 (= lt!1185115 (lexTailRecV2!1069 thiss!18206 rules!2135 lt!1185063 (BalanceConc!22197 Empty!11291) lt!1185063 (BalanceConc!22199 Empty!11292)))))

(assert (=> d!1005072 (= (lex!2373 thiss!18206 rules!2135 lt!1185063) lt!1185115)))

(declare-fun b!3480139 () Bool)

(declare-fun e!2155789 () Bool)

(assert (=> b!3480139 (= e!2155791 e!2155789)))

(declare-fun res!1404427 () Bool)

(declare-fun size!28298 (BalanceConc!22196) Int)

(assert (=> b!3480139 (= res!1404427 (< (size!28298 (_2!21646 lt!1185115)) (size!28298 lt!1185063)))))

(assert (=> b!3480139 (=> (not res!1404427) (not e!2155789))))

(declare-fun b!3480140 () Bool)

(declare-datatypes ((tuple2!37028 0))(
  ( (tuple2!37029 (_1!21648 List!37381) (_2!21648 List!37379)) )
))
(declare-fun lexList!1461 (LexerInterface!5047 List!37380 List!37379) tuple2!37028)

(assert (=> b!3480140 (= e!2155790 (= (list!13587 (_2!21646 lt!1185115)) (_2!21648 (lexList!1461 thiss!18206 rules!2135 (list!13587 lt!1185063)))))))

(declare-fun b!3480141 () Bool)

(declare-fun res!1404426 () Bool)

(assert (=> b!3480141 (=> (not res!1404426) (not e!2155790))))

(assert (=> b!3480141 (= res!1404426 (= (list!13591 (_1!21646 lt!1185115)) (_1!21648 (lexList!1461 thiss!18206 rules!2135 (list!13587 lt!1185063)))))))

(declare-fun b!3480142 () Bool)

(assert (=> b!3480142 (= e!2155791 (= (_2!21646 lt!1185115) lt!1185063))))

(declare-fun b!3480143 () Bool)

(assert (=> b!3480143 (= e!2155789 (not (isEmpty!21654 (_1!21646 lt!1185115))))))

(assert (= (and d!1005072 c!596748) b!3480139))

(assert (= (and d!1005072 (not c!596748)) b!3480142))

(assert (= (and b!3480139 res!1404427) b!3480143))

(assert (= (and d!1005072 res!1404428) b!3480141))

(assert (= (and b!3480141 res!1404426) b!3480140))

(declare-fun m!3896689 () Bool)

(assert (=> b!3480139 m!3896689))

(declare-fun m!3896691 () Bool)

(assert (=> b!3480139 m!3896691))

(declare-fun m!3896693 () Bool)

(assert (=> b!3480140 m!3896693))

(declare-fun m!3896695 () Bool)

(assert (=> b!3480140 m!3896695))

(assert (=> b!3480140 m!3896695))

(declare-fun m!3896697 () Bool)

(assert (=> b!3480140 m!3896697))

(declare-fun m!3896699 () Bool)

(assert (=> b!3480141 m!3896699))

(assert (=> b!3480141 m!3896695))

(assert (=> b!3480141 m!3896695))

(assert (=> b!3480141 m!3896697))

(declare-fun m!3896701 () Bool)

(assert (=> b!3480143 m!3896701))

(declare-fun m!3896703 () Bool)

(assert (=> d!1005072 m!3896703))

(declare-fun m!3896705 () Bool)

(assert (=> d!1005072 m!3896705))

(assert (=> b!3479946 d!1005072))

(declare-fun d!1005088 () Bool)

(declare-fun fromListB!1809 (List!37379) BalanceConc!22196)

(assert (=> d!1005088 (= (seqFromList!3969 lt!1185061) (fromListB!1809 lt!1185061))))

(declare-fun bs!561892 () Bool)

(assert (= bs!561892 d!1005088))

(declare-fun m!3896707 () Bool)

(assert (=> bs!561892 m!3896707))

(assert (=> b!3479946 d!1005088))

(declare-fun d!1005090 () Bool)

(declare-fun c!596754 () Bool)

(assert (=> d!1005090 (= c!596754 ((_ is IntegerValue!17064) (value!176013 (h!42677 tokens!494))))))

(declare-fun e!2155799 () Bool)

(assert (=> d!1005090 (= (inv!21 (value!176013 (h!42677 tokens!494))) e!2155799)))

(declare-fun b!3480154 () Bool)

(declare-fun res!1404431 () Bool)

(declare-fun e!2155800 () Bool)

(assert (=> b!3480154 (=> res!1404431 e!2155800)))

(assert (=> b!3480154 (= res!1404431 (not ((_ is IntegerValue!17066) (value!176013 (h!42677 tokens!494)))))))

(declare-fun e!2155798 () Bool)

(assert (=> b!3480154 (= e!2155798 e!2155800)))

(declare-fun b!3480155 () Bool)

(declare-fun inv!16 (TokenValue!5688) Bool)

(assert (=> b!3480155 (= e!2155799 (inv!16 (value!176013 (h!42677 tokens!494))))))

(declare-fun b!3480156 () Bool)

(assert (=> b!3480156 (= e!2155799 e!2155798)))

(declare-fun c!596753 () Bool)

(assert (=> b!3480156 (= c!596753 ((_ is IntegerValue!17065) (value!176013 (h!42677 tokens!494))))))

(declare-fun b!3480157 () Bool)

(declare-fun inv!17 (TokenValue!5688) Bool)

(assert (=> b!3480157 (= e!2155798 (inv!17 (value!176013 (h!42677 tokens!494))))))

(declare-fun b!3480158 () Bool)

(declare-fun inv!15 (TokenValue!5688) Bool)

(assert (=> b!3480158 (= e!2155800 (inv!15 (value!176013 (h!42677 tokens!494))))))

(assert (= (and d!1005090 c!596754) b!3480155))

(assert (= (and d!1005090 (not c!596754)) b!3480156))

(assert (= (and b!3480156 c!596753) b!3480157))

(assert (= (and b!3480156 (not c!596753)) b!3480154))

(assert (= (and b!3480154 (not res!1404431)) b!3480158))

(declare-fun m!3896709 () Bool)

(assert (=> b!3480155 m!3896709))

(declare-fun m!3896711 () Bool)

(assert (=> b!3480157 m!3896711))

(declare-fun m!3896713 () Bool)

(assert (=> b!3480158 m!3896713))

(assert (=> b!3479964 d!1005090))

(declare-fun b!3480159 () Bool)

(declare-fun e!2155801 () Bool)

(declare-fun e!2155802 () Bool)

(assert (=> b!3480159 (= e!2155801 e!2155802)))

(declare-fun c!596755 () Bool)

(assert (=> b!3480159 (= c!596755 ((_ is EmptyLang!10217) (regex!5458 lt!1185072)))))

(declare-fun b!3480160 () Bool)

(declare-fun e!2155805 () Bool)

(declare-fun e!2155807 () Bool)

(assert (=> b!3480160 (= e!2155805 e!2155807)))

(declare-fun res!1404439 () Bool)

(assert (=> b!3480160 (=> res!1404439 e!2155807)))

(declare-fun call!250942 () Bool)

(assert (=> b!3480160 (= res!1404439 call!250942)))

(declare-fun b!3480161 () Bool)

(declare-fun e!2155806 () Bool)

(assert (=> b!3480161 (= e!2155806 (= (head!7351 lt!1185061) (c!596726 (regex!5458 lt!1185072))))))

(declare-fun bm!250937 () Bool)

(assert (=> bm!250937 (= call!250942 (isEmpty!21657 lt!1185061))))

(declare-fun d!1005092 () Bool)

(assert (=> d!1005092 e!2155801))

(declare-fun c!596757 () Bool)

(assert (=> d!1005092 (= c!596757 ((_ is EmptyExpr!10217) (regex!5458 lt!1185072)))))

(declare-fun lt!1185116 () Bool)

(declare-fun e!2155804 () Bool)

(assert (=> d!1005092 (= lt!1185116 e!2155804)))

(declare-fun c!596756 () Bool)

(assert (=> d!1005092 (= c!596756 (isEmpty!21657 lt!1185061))))

(assert (=> d!1005092 (validRegex!4657 (regex!5458 lt!1185072))))

(assert (=> d!1005092 (= (matchR!4801 (regex!5458 lt!1185072) lt!1185061) lt!1185116)))

(declare-fun b!3480162 () Bool)

(declare-fun res!1404435 () Bool)

(declare-fun e!2155803 () Bool)

(assert (=> b!3480162 (=> res!1404435 e!2155803)))

(assert (=> b!3480162 (= res!1404435 e!2155806)))

(declare-fun res!1404433 () Bool)

(assert (=> b!3480162 (=> (not res!1404433) (not e!2155806))))

(assert (=> b!3480162 (= res!1404433 lt!1185116)))

(declare-fun b!3480163 () Bool)

(assert (=> b!3480163 (= e!2155801 (= lt!1185116 call!250942))))

(declare-fun b!3480164 () Bool)

(assert (=> b!3480164 (= e!2155804 (matchR!4801 (derivativeStep!3054 (regex!5458 lt!1185072) (head!7351 lt!1185061)) (tail!5458 lt!1185061)))))

(declare-fun b!3480165 () Bool)

(assert (=> b!3480165 (= e!2155804 (nullable!3501 (regex!5458 lt!1185072)))))

(declare-fun b!3480166 () Bool)

(declare-fun res!1404436 () Bool)

(assert (=> b!3480166 (=> res!1404436 e!2155803)))

(assert (=> b!3480166 (= res!1404436 (not ((_ is ElementMatch!10217) (regex!5458 lt!1185072))))))

(assert (=> b!3480166 (= e!2155802 e!2155803)))

(declare-fun b!3480167 () Bool)

(declare-fun res!1404437 () Bool)

(assert (=> b!3480167 (=> res!1404437 e!2155807)))

(assert (=> b!3480167 (= res!1404437 (not (isEmpty!21657 (tail!5458 lt!1185061))))))

(declare-fun b!3480168 () Bool)

(assert (=> b!3480168 (= e!2155807 (not (= (head!7351 lt!1185061) (c!596726 (regex!5458 lt!1185072)))))))

(declare-fun b!3480169 () Bool)

(assert (=> b!3480169 (= e!2155803 e!2155805)))

(declare-fun res!1404432 () Bool)

(assert (=> b!3480169 (=> (not res!1404432) (not e!2155805))))

(assert (=> b!3480169 (= res!1404432 (not lt!1185116))))

(declare-fun b!3480170 () Bool)

(declare-fun res!1404438 () Bool)

(assert (=> b!3480170 (=> (not res!1404438) (not e!2155806))))

(assert (=> b!3480170 (= res!1404438 (isEmpty!21657 (tail!5458 lt!1185061)))))

(declare-fun b!3480171 () Bool)

(assert (=> b!3480171 (= e!2155802 (not lt!1185116))))

(declare-fun b!3480172 () Bool)

(declare-fun res!1404434 () Bool)

(assert (=> b!3480172 (=> (not res!1404434) (not e!2155806))))

(assert (=> b!3480172 (= res!1404434 (not call!250942))))

(assert (= (and d!1005092 c!596756) b!3480165))

(assert (= (and d!1005092 (not c!596756)) b!3480164))

(assert (= (and d!1005092 c!596757) b!3480163))

(assert (= (and d!1005092 (not c!596757)) b!3480159))

(assert (= (and b!3480159 c!596755) b!3480171))

(assert (= (and b!3480159 (not c!596755)) b!3480166))

(assert (= (and b!3480166 (not res!1404436)) b!3480162))

(assert (= (and b!3480162 res!1404433) b!3480172))

(assert (= (and b!3480172 res!1404434) b!3480170))

(assert (= (and b!3480170 res!1404438) b!3480161))

(assert (= (and b!3480162 (not res!1404435)) b!3480169))

(assert (= (and b!3480169 res!1404432) b!3480160))

(assert (= (and b!3480160 (not res!1404439)) b!3480167))

(assert (= (and b!3480167 (not res!1404437)) b!3480168))

(assert (= (or b!3480163 b!3480160 b!3480172) bm!250937))

(declare-fun m!3896715 () Bool)

(assert (=> b!3480165 m!3896715))

(declare-fun m!3896717 () Bool)

(assert (=> b!3480168 m!3896717))

(assert (=> b!3480164 m!3896717))

(assert (=> b!3480164 m!3896717))

(declare-fun m!3896719 () Bool)

(assert (=> b!3480164 m!3896719))

(declare-fun m!3896721 () Bool)

(assert (=> b!3480164 m!3896721))

(assert (=> b!3480164 m!3896719))

(assert (=> b!3480164 m!3896721))

(declare-fun m!3896723 () Bool)

(assert (=> b!3480164 m!3896723))

(declare-fun m!3896725 () Bool)

(assert (=> d!1005092 m!3896725))

(declare-fun m!3896727 () Bool)

(assert (=> d!1005092 m!3896727))

(assert (=> b!3480161 m!3896717))

(assert (=> b!3480170 m!3896721))

(assert (=> b!3480170 m!3896721))

(declare-fun m!3896729 () Bool)

(assert (=> b!3480170 m!3896729))

(assert (=> b!3480167 m!3896721))

(assert (=> b!3480167 m!3896721))

(assert (=> b!3480167 m!3896729))

(assert (=> bm!250937 m!3896725))

(assert (=> b!3479943 d!1005092))

(declare-fun d!1005094 () Bool)

(assert (=> d!1005094 (= (get!11940 lt!1185049) (v!36956 lt!1185049))))

(assert (=> b!3479943 d!1005094))

(declare-fun d!1005096 () Bool)

(declare-fun lt!1185123 () Token!10282)

(declare-fun apply!8824 (List!37381 Int) Token!10282)

(assert (=> d!1005096 (= lt!1185123 (apply!8824 (list!13591 (_1!21646 lt!1185066)) 0))))

(declare-fun apply!8825 (Conc!11292 Int) Token!10282)

(assert (=> d!1005096 (= lt!1185123 (apply!8825 (c!596728 (_1!21646 lt!1185066)) 0))))

(declare-fun e!2155814 () Bool)

(assert (=> d!1005096 e!2155814))

(declare-fun res!1404448 () Bool)

(assert (=> d!1005096 (=> (not res!1404448) (not e!2155814))))

(assert (=> d!1005096 (= res!1404448 (<= 0 0))))

(assert (=> d!1005096 (= (apply!8820 (_1!21646 lt!1185066) 0) lt!1185123)))

(declare-fun b!3480181 () Bool)

(assert (=> b!3480181 (= e!2155814 (< 0 (size!28296 (_1!21646 lt!1185066))))))

(assert (= (and d!1005096 res!1404448) b!3480181))

(declare-fun m!3896731 () Bool)

(assert (=> d!1005096 m!3896731))

(assert (=> d!1005096 m!3896731))

(declare-fun m!3896733 () Bool)

(assert (=> d!1005096 m!3896733))

(declare-fun m!3896735 () Bool)

(assert (=> d!1005096 m!3896735))

(assert (=> b!3480181 m!3896501))

(assert (=> b!3479942 d!1005096))

(declare-fun d!1005098 () Bool)

(assert (=> d!1005098 (= (isEmpty!21653 rules!2135) ((_ is Nil!37256) rules!2135))))

(assert (=> b!3479944 d!1005098))

(declare-fun d!1005100 () Bool)

(declare-fun res!1404455 () Bool)

(declare-fun e!2155820 () Bool)

(assert (=> d!1005100 (=> (not res!1404455) (not e!2155820))))

(declare-fun rulesValid!2057 (LexerInterface!5047 List!37380) Bool)

(assert (=> d!1005100 (= res!1404455 (rulesValid!2057 thiss!18206 rules!2135))))

(assert (=> d!1005100 (= (rulesInvariant!4444 thiss!18206 rules!2135) e!2155820)))

(declare-fun b!3480188 () Bool)

(declare-datatypes ((List!37383 0))(
  ( (Nil!37259) (Cons!37259 (h!42679 String!41774) (t!275538 List!37383)) )
))
(declare-fun noDuplicateTag!2053 (LexerInterface!5047 List!37380 List!37383) Bool)

(assert (=> b!3480188 (= e!2155820 (noDuplicateTag!2053 thiss!18206 rules!2135 Nil!37259))))

(assert (= (and d!1005100 res!1404455) b!3480188))

(declare-fun m!3896755 () Bool)

(assert (=> d!1005100 m!3896755))

(declare-fun m!3896759 () Bool)

(assert (=> b!3480188 m!3896759))

(assert (=> b!3479965 d!1005100))

(declare-fun bs!561900 () Bool)

(declare-fun d!1005104 () Bool)

(assert (= bs!561900 (and d!1005104 b!3479971)))

(declare-fun lambda!122225 () Int)

(assert (=> bs!561900 (not (= lambda!122225 lambda!122214))))

(declare-fun bs!561901 () Bool)

(assert (= bs!561901 (and d!1005104 b!3479962)))

(assert (=> bs!561901 (= lambda!122225 lambda!122215)))

(declare-fun b!3480292 () Bool)

(declare-fun e!2155883 () Bool)

(assert (=> b!3480292 (= e!2155883 true)))

(declare-fun b!3480291 () Bool)

(declare-fun e!2155882 () Bool)

(assert (=> b!3480291 (= e!2155882 e!2155883)))

(declare-fun b!3480290 () Bool)

(declare-fun e!2155881 () Bool)

(assert (=> b!3480290 (= e!2155881 e!2155882)))

(assert (=> d!1005104 e!2155881))

(assert (= b!3480291 b!3480292))

(assert (= b!3480290 b!3480291))

(assert (= (and d!1005104 ((_ is Cons!37256) rules!2135)) b!3480290))

(assert (=> b!3480292 (< (dynLambda!15768 order!19933 (toValue!7694 (transformation!5458 (h!42676 rules!2135)))) (dynLambda!15769 order!19935 lambda!122225))))

(assert (=> b!3480292 (< (dynLambda!15770 order!19937 (toChars!7553 (transformation!5458 (h!42676 rules!2135)))) (dynLambda!15769 order!19935 lambda!122225))))

(assert (=> d!1005104 true))

(declare-fun e!2155880 () Bool)

(assert (=> d!1005104 e!2155880))

(declare-fun res!1404508 () Bool)

(assert (=> d!1005104 (=> (not res!1404508) (not e!2155880))))

(declare-fun lt!1185175 () Bool)

(assert (=> d!1005104 (= res!1404508 (= lt!1185175 (forall!7967 (list!13591 (seqFromList!3970 tokens!494)) lambda!122225)))))

(declare-fun forall!7969 (BalanceConc!22198 Int) Bool)

(assert (=> d!1005104 (= lt!1185175 (forall!7969 (seqFromList!3970 tokens!494) lambda!122225))))

(assert (=> d!1005104 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005104 (= (rulesProduceEachTokenIndividually!1498 thiss!18206 rules!2135 (seqFromList!3970 tokens!494)) lt!1185175)))

(declare-fun b!3480289 () Bool)

(assert (=> b!3480289 (= e!2155880 (= lt!1185175 (rulesProduceEachTokenIndividuallyList!1869 thiss!18206 rules!2135 (list!13591 (seqFromList!3970 tokens!494)))))))

(assert (= (and d!1005104 res!1404508) b!3480289))

(assert (=> d!1005104 m!3896415))

(declare-fun m!3896889 () Bool)

(assert (=> d!1005104 m!3896889))

(assert (=> d!1005104 m!3896889))

(declare-fun m!3896891 () Bool)

(assert (=> d!1005104 m!3896891))

(assert (=> d!1005104 m!3896415))

(declare-fun m!3896893 () Bool)

(assert (=> d!1005104 m!3896893))

(assert (=> d!1005104 m!3896365))

(assert (=> b!3480289 m!3896415))

(assert (=> b!3480289 m!3896889))

(assert (=> b!3480289 m!3896889))

(declare-fun m!3896895 () Bool)

(assert (=> b!3480289 m!3896895))

(assert (=> b!3479963 d!1005104))

(declare-fun d!1005144 () Bool)

(declare-fun fromListB!1810 (List!37381) BalanceConc!22198)

(assert (=> d!1005144 (= (seqFromList!3970 tokens!494) (fromListB!1810 tokens!494))))

(declare-fun bs!561902 () Bool)

(assert (= bs!561902 d!1005144))

(declare-fun m!3896897 () Bool)

(assert (=> bs!561902 m!3896897))

(assert (=> b!3479963 d!1005144))

(declare-fun d!1005146 () Bool)

(assert (=> d!1005146 (not (contains!6946 (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494)))) lt!1185055))))

(declare-fun lt!1185178 () Unit!52688)

(declare-fun choose!20165 (LexerInterface!5047 List!37380 List!37380 Rule!10716 Rule!10716 C!20620) Unit!52688)

(assert (=> d!1005146 (= lt!1185178 (choose!20165 thiss!18206 rules!2135 rules!2135 (rule!8064 (h!42677 tokens!494)) (rule!8064 separatorToken!241) lt!1185055))))

(assert (=> d!1005146 (rulesInvariant!4444 thiss!18206 rules!2135)))

(assert (=> d!1005146 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!258 thiss!18206 rules!2135 rules!2135 (rule!8064 (h!42677 tokens!494)) (rule!8064 separatorToken!241) lt!1185055) lt!1185178)))

(declare-fun bs!561903 () Bool)

(assert (= bs!561903 d!1005146))

(assert (=> bs!561903 m!3896469))

(assert (=> bs!561903 m!3896469))

(assert (=> bs!561903 m!3896491))

(declare-fun m!3896899 () Bool)

(assert (=> bs!561903 m!3896899))

(assert (=> bs!561903 m!3896359))

(assert (=> b!3479962 d!1005146))

(declare-fun d!1005148 () Bool)

(declare-fun e!2155886 () Bool)

(assert (=> d!1005148 e!2155886))

(declare-fun res!1404511 () Bool)

(assert (=> d!1005148 (=> (not res!1404511) (not e!2155886))))

(declare-fun lt!1185181 () BalanceConc!22198)

(assert (=> d!1005148 (= res!1404511 (= (list!13591 lt!1185181) (Cons!37257 separatorToken!241 Nil!37257)))))

(declare-fun singleton!1134 (Token!10282) BalanceConc!22198)

(assert (=> d!1005148 (= lt!1185181 (singleton!1134 separatorToken!241))))

(assert (=> d!1005148 (= (singletonSeq!2554 separatorToken!241) lt!1185181)))

(declare-fun b!3480295 () Bool)

(declare-fun isBalanced!3433 (Conc!11292) Bool)

(assert (=> b!3480295 (= e!2155886 (isBalanced!3433 (c!596728 lt!1185181)))))

(assert (= (and d!1005148 res!1404511) b!3480295))

(declare-fun m!3896901 () Bool)

(assert (=> d!1005148 m!3896901))

(declare-fun m!3896903 () Bool)

(assert (=> d!1005148 m!3896903))

(declare-fun m!3896905 () Bool)

(assert (=> b!3480295 m!3896905))

(assert (=> b!3479962 d!1005148))

(declare-fun d!1005150 () Bool)

(declare-fun lt!1185184 () Int)

(assert (=> d!1005150 (>= lt!1185184 0)))

(declare-fun e!2155889 () Int)

(assert (=> d!1005150 (= lt!1185184 e!2155889)))

(declare-fun c!596786 () Bool)

(assert (=> d!1005150 (= c!596786 ((_ is Nil!37255) lt!1185061))))

(assert (=> d!1005150 (= (size!28297 lt!1185061) lt!1185184)))

(declare-fun b!3480300 () Bool)

(assert (=> b!3480300 (= e!2155889 0)))

(declare-fun b!3480301 () Bool)

(assert (=> b!3480301 (= e!2155889 (+ 1 (size!28297 (t!275436 lt!1185061))))))

(assert (= (and d!1005150 c!596786) b!3480300))

(assert (= (and d!1005150 (not c!596786)) b!3480301))

(declare-fun m!3896907 () Bool)

(assert (=> b!3480301 m!3896907))

(assert (=> b!3479962 d!1005150))

(declare-fun b!3480314 () Bool)

(declare-fun e!2155899 () Bool)

(declare-fun lt!1185192 () Option!7569)

(assert (=> b!3480314 (= e!2155899 (= (tag!6080 (get!11940 lt!1185192)) (tag!6080 (rule!8064 separatorToken!241))))))

(declare-fun b!3480315 () Bool)

(declare-fun lt!1185191 () Unit!52688)

(declare-fun lt!1185193 () Unit!52688)

(assert (=> b!3480315 (= lt!1185191 lt!1185193)))

(assert (=> b!3480315 (rulesInvariant!4444 thiss!18206 (t!275437 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!445 (LexerInterface!5047 Rule!10716 List!37380) Unit!52688)

(assert (=> b!3480315 (= lt!1185193 (lemmaInvariantOnRulesThenOnTail!445 thiss!18206 (h!42676 rules!2135) (t!275437 rules!2135)))))

(declare-fun e!2155901 () Option!7569)

(assert (=> b!3480315 (= e!2155901 (getRuleFromTag!1101 thiss!18206 (t!275437 rules!2135) (tag!6080 (rule!8064 separatorToken!241))))))

(declare-fun b!3480316 () Bool)

(declare-fun e!2155898 () Option!7569)

(assert (=> b!3480316 (= e!2155898 (Some!7568 (h!42676 rules!2135)))))

(declare-fun d!1005152 () Bool)

(declare-fun e!2155900 () Bool)

(assert (=> d!1005152 e!2155900))

(declare-fun res!1404517 () Bool)

(assert (=> d!1005152 (=> res!1404517 e!2155900)))

(declare-fun isEmpty!21664 (Option!7569) Bool)

(assert (=> d!1005152 (= res!1404517 (isEmpty!21664 lt!1185192))))

(assert (=> d!1005152 (= lt!1185192 e!2155898)))

(declare-fun c!596791 () Bool)

(assert (=> d!1005152 (= c!596791 (and ((_ is Cons!37256) rules!2135) (= (tag!6080 (h!42676 rules!2135)) (tag!6080 (rule!8064 separatorToken!241)))))))

(assert (=> d!1005152 (rulesInvariant!4444 thiss!18206 rules!2135)))

(assert (=> d!1005152 (= (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 separatorToken!241))) lt!1185192)))

(declare-fun b!3480317 () Bool)

(assert (=> b!3480317 (= e!2155900 e!2155899)))

(declare-fun res!1404516 () Bool)

(assert (=> b!3480317 (=> (not res!1404516) (not e!2155899))))

(declare-fun contains!6947 (List!37380 Rule!10716) Bool)

(assert (=> b!3480317 (= res!1404516 (contains!6947 rules!2135 (get!11940 lt!1185192)))))

(declare-fun b!3480318 () Bool)

(assert (=> b!3480318 (= e!2155898 e!2155901)))

(declare-fun c!596792 () Bool)

(assert (=> b!3480318 (= c!596792 (and ((_ is Cons!37256) rules!2135) (not (= (tag!6080 (h!42676 rules!2135)) (tag!6080 (rule!8064 separatorToken!241))))))))

(declare-fun b!3480319 () Bool)

(assert (=> b!3480319 (= e!2155901 None!7568)))

(assert (= (and d!1005152 c!596791) b!3480316))

(assert (= (and d!1005152 (not c!596791)) b!3480318))

(assert (= (and b!3480318 c!596792) b!3480315))

(assert (= (and b!3480318 (not c!596792)) b!3480319))

(assert (= (and d!1005152 (not res!1404517)) b!3480317))

(assert (= (and b!3480317 res!1404516) b!3480314))

(declare-fun m!3896909 () Bool)

(assert (=> b!3480314 m!3896909))

(declare-fun m!3896911 () Bool)

(assert (=> b!3480315 m!3896911))

(declare-fun m!3896913 () Bool)

(assert (=> b!3480315 m!3896913))

(declare-fun m!3896915 () Bool)

(assert (=> b!3480315 m!3896915))

(declare-fun m!3896917 () Bool)

(assert (=> d!1005152 m!3896917))

(assert (=> d!1005152 m!3896359))

(assert (=> b!3480317 m!3896909))

(assert (=> b!3480317 m!3896909))

(declare-fun m!3896919 () Bool)

(assert (=> b!3480317 m!3896919))

(assert (=> b!3479962 d!1005152))

(declare-fun d!1005154 () Bool)

(declare-fun e!2155903 () Bool)

(assert (=> d!1005154 e!2155903))

(declare-fun res!1404520 () Bool)

(assert (=> d!1005154 (=> (not res!1404520) (not e!2155903))))

(declare-fun e!2155904 () Bool)

(assert (=> d!1005154 (= res!1404520 e!2155904)))

(declare-fun c!596793 () Bool)

(declare-fun lt!1185194 () tuple2!37024)

(assert (=> d!1005154 (= c!596793 (> (size!28296 (_1!21646 lt!1185194)) 0))))

(assert (=> d!1005154 (= lt!1185194 (lexTailRecV2!1069 thiss!18206 rules!2135 lt!1185076 (BalanceConc!22197 Empty!11291) lt!1185076 (BalanceConc!22199 Empty!11292)))))

(assert (=> d!1005154 (= (lex!2373 thiss!18206 rules!2135 lt!1185076) lt!1185194)))

(declare-fun b!3480320 () Bool)

(declare-fun e!2155902 () Bool)

(assert (=> b!3480320 (= e!2155904 e!2155902)))

(declare-fun res!1404519 () Bool)

(assert (=> b!3480320 (= res!1404519 (< (size!28298 (_2!21646 lt!1185194)) (size!28298 lt!1185076)))))

(assert (=> b!3480320 (=> (not res!1404519) (not e!2155902))))

(declare-fun b!3480321 () Bool)

(assert (=> b!3480321 (= e!2155903 (= (list!13587 (_2!21646 lt!1185194)) (_2!21648 (lexList!1461 thiss!18206 rules!2135 (list!13587 lt!1185076)))))))

(declare-fun b!3480322 () Bool)

(declare-fun res!1404518 () Bool)

(assert (=> b!3480322 (=> (not res!1404518) (not e!2155903))))

(assert (=> b!3480322 (= res!1404518 (= (list!13591 (_1!21646 lt!1185194)) (_1!21648 (lexList!1461 thiss!18206 rules!2135 (list!13587 lt!1185076)))))))

(declare-fun b!3480323 () Bool)

(assert (=> b!3480323 (= e!2155904 (= (_2!21646 lt!1185194) lt!1185076))))

(declare-fun b!3480324 () Bool)

(assert (=> b!3480324 (= e!2155902 (not (isEmpty!21654 (_1!21646 lt!1185194))))))

(assert (= (and d!1005154 c!596793) b!3480320))

(assert (= (and d!1005154 (not c!596793)) b!3480323))

(assert (= (and b!3480320 res!1404519) b!3480324))

(assert (= (and d!1005154 res!1404520) b!3480322))

(assert (= (and b!3480322 res!1404518) b!3480321))

(declare-fun m!3896921 () Bool)

(assert (=> b!3480320 m!3896921))

(declare-fun m!3896923 () Bool)

(assert (=> b!3480320 m!3896923))

(declare-fun m!3896925 () Bool)

(assert (=> b!3480321 m!3896925))

(declare-fun m!3896927 () Bool)

(assert (=> b!3480321 m!3896927))

(assert (=> b!3480321 m!3896927))

(declare-fun m!3896929 () Bool)

(assert (=> b!3480321 m!3896929))

(declare-fun m!3896931 () Bool)

(assert (=> b!3480322 m!3896931))

(assert (=> b!3480322 m!3896927))

(assert (=> b!3480322 m!3896927))

(assert (=> b!3480322 m!3896929))

(declare-fun m!3896933 () Bool)

(assert (=> b!3480324 m!3896933))

(declare-fun m!3896935 () Bool)

(assert (=> d!1005154 m!3896935))

(declare-fun m!3896937 () Bool)

(assert (=> d!1005154 m!3896937))

(assert (=> b!3479962 d!1005154))

(declare-fun d!1005156 () Bool)

(assert (=> d!1005156 (= (isDefined!5830 lt!1185082) (not (isEmpty!21664 lt!1185082)))))

(declare-fun bs!561904 () Bool)

(assert (= bs!561904 d!1005156))

(declare-fun m!3896939 () Bool)

(assert (=> bs!561904 m!3896939))

(assert (=> b!3479962 d!1005156))

(declare-fun d!1005158 () Bool)

(declare-fun lt!1185197 () Int)

(declare-fun size!28300 (List!37381) Int)

(assert (=> d!1005158 (= lt!1185197 (size!28300 (list!13591 (_1!21646 lt!1185066))))))

(declare-fun size!28301 (Conc!11292) Int)

(assert (=> d!1005158 (= lt!1185197 (size!28301 (c!596728 (_1!21646 lt!1185066))))))

(assert (=> d!1005158 (= (size!28296 (_1!21646 lt!1185066)) lt!1185197)))

(declare-fun bs!561905 () Bool)

(assert (= bs!561905 d!1005158))

(assert (=> bs!561905 m!3896731))

(assert (=> bs!561905 m!3896731))

(declare-fun m!3896941 () Bool)

(assert (=> bs!561905 m!3896941))

(declare-fun m!3896943 () Bool)

(assert (=> bs!561905 m!3896943))

(assert (=> b!3479962 d!1005158))

(declare-fun d!1005160 () Bool)

(declare-fun e!2155906 () Bool)

(assert (=> d!1005160 e!2155906))

(declare-fun res!1404523 () Bool)

(assert (=> d!1005160 (=> (not res!1404523) (not e!2155906))))

(declare-fun e!2155907 () Bool)

(assert (=> d!1005160 (= res!1404523 e!2155907)))

(declare-fun c!596794 () Bool)

(declare-fun lt!1185198 () tuple2!37024)

(assert (=> d!1005160 (= c!596794 (> (size!28296 (_1!21646 lt!1185198)) 0))))

(assert (=> d!1005160 (= lt!1185198 (lexTailRecV2!1069 thiss!18206 rules!2135 lt!1185053 (BalanceConc!22197 Empty!11291) lt!1185053 (BalanceConc!22199 Empty!11292)))))

(assert (=> d!1005160 (= (lex!2373 thiss!18206 rules!2135 lt!1185053) lt!1185198)))

(declare-fun b!3480325 () Bool)

(declare-fun e!2155905 () Bool)

(assert (=> b!3480325 (= e!2155907 e!2155905)))

(declare-fun res!1404522 () Bool)

(assert (=> b!3480325 (= res!1404522 (< (size!28298 (_2!21646 lt!1185198)) (size!28298 lt!1185053)))))

(assert (=> b!3480325 (=> (not res!1404522) (not e!2155905))))

(declare-fun b!3480326 () Bool)

(assert (=> b!3480326 (= e!2155906 (= (list!13587 (_2!21646 lt!1185198)) (_2!21648 (lexList!1461 thiss!18206 rules!2135 (list!13587 lt!1185053)))))))

(declare-fun b!3480327 () Bool)

(declare-fun res!1404521 () Bool)

(assert (=> b!3480327 (=> (not res!1404521) (not e!2155906))))

(assert (=> b!3480327 (= res!1404521 (= (list!13591 (_1!21646 lt!1185198)) (_1!21648 (lexList!1461 thiss!18206 rules!2135 (list!13587 lt!1185053)))))))

(declare-fun b!3480328 () Bool)

(assert (=> b!3480328 (= e!2155907 (= (_2!21646 lt!1185198) lt!1185053))))

(declare-fun b!3480329 () Bool)

(assert (=> b!3480329 (= e!2155905 (not (isEmpty!21654 (_1!21646 lt!1185198))))))

(assert (= (and d!1005160 c!596794) b!3480325))

(assert (= (and d!1005160 (not c!596794)) b!3480328))

(assert (= (and b!3480325 res!1404522) b!3480329))

(assert (= (and d!1005160 res!1404523) b!3480327))

(assert (= (and b!3480327 res!1404521) b!3480326))

(declare-fun m!3896945 () Bool)

(assert (=> b!3480325 m!3896945))

(declare-fun m!3896947 () Bool)

(assert (=> b!3480325 m!3896947))

(declare-fun m!3896949 () Bool)

(assert (=> b!3480326 m!3896949))

(declare-fun m!3896951 () Bool)

(assert (=> b!3480326 m!3896951))

(assert (=> b!3480326 m!3896951))

(declare-fun m!3896953 () Bool)

(assert (=> b!3480326 m!3896953))

(declare-fun m!3896955 () Bool)

(assert (=> b!3480327 m!3896955))

(assert (=> b!3480327 m!3896951))

(assert (=> b!3480327 m!3896951))

(assert (=> b!3480327 m!3896953))

(declare-fun m!3896957 () Bool)

(assert (=> b!3480329 m!3896957))

(declare-fun m!3896959 () Bool)

(assert (=> d!1005160 m!3896959))

(declare-fun m!3896961 () Bool)

(assert (=> d!1005160 m!3896961))

(assert (=> b!3479962 d!1005160))

(declare-fun d!1005162 () Bool)

(declare-fun lt!1185201 () BalanceConc!22196)

(assert (=> d!1005162 (= (list!13587 lt!1185201) (printList!1595 thiss!18206 (list!13591 lt!1185048)))))

(assert (=> d!1005162 (= lt!1185201 (printTailRec!1542 thiss!18206 lt!1185048 0 (BalanceConc!22197 Empty!11291)))))

(assert (=> d!1005162 (= (print!2112 thiss!18206 lt!1185048) lt!1185201)))

(declare-fun bs!561906 () Bool)

(assert (= bs!561906 d!1005162))

(declare-fun m!3896963 () Bool)

(assert (=> bs!561906 m!3896963))

(declare-fun m!3896965 () Bool)

(assert (=> bs!561906 m!3896965))

(assert (=> bs!561906 m!3896965))

(declare-fun m!3896967 () Bool)

(assert (=> bs!561906 m!3896967))

(assert (=> bs!561906 m!3896511))

(assert (=> b!3479962 d!1005162))

(declare-fun d!1005164 () Bool)

(assert (=> d!1005164 (= (maxPrefix!2587 thiss!18206 rules!2135 (++!9203 (list!13587 (charsOf!3472 (h!42677 tokens!494))) lt!1185081)) (Some!7569 (tuple2!37027 (h!42677 tokens!494) lt!1185081)))))

(declare-fun lt!1185204 () Unit!52688)

(declare-fun choose!20167 (LexerInterface!5047 List!37380 Token!10282 Rule!10716 List!37379 Rule!10716) Unit!52688)

(assert (=> d!1005164 (= lt!1185204 (choose!20167 thiss!18206 rules!2135 (h!42677 tokens!494) (rule!8064 (h!42677 tokens!494)) lt!1185081 (rule!8064 separatorToken!241)))))

(assert (=> d!1005164 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005164 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!214 thiss!18206 rules!2135 (h!42677 tokens!494) (rule!8064 (h!42677 tokens!494)) lt!1185081 (rule!8064 separatorToken!241)) lt!1185204)))

(declare-fun bs!561907 () Bool)

(assert (= bs!561907 d!1005164))

(assert (=> bs!561907 m!3896385))

(assert (=> bs!561907 m!3896387))

(assert (=> bs!561907 m!3896365))

(declare-fun m!3896969 () Bool)

(assert (=> bs!561907 m!3896969))

(declare-fun m!3896971 () Bool)

(assert (=> bs!561907 m!3896971))

(assert (=> bs!561907 m!3896385))

(declare-fun m!3896973 () Bool)

(assert (=> bs!561907 m!3896973))

(assert (=> bs!561907 m!3896387))

(assert (=> bs!561907 m!3896969))

(assert (=> b!3479962 d!1005164))

(declare-fun b!3480361 () Bool)

(declare-fun e!2155927 () List!37379)

(declare-fun e!2155926 () List!37379)

(assert (=> b!3480361 (= e!2155927 e!2155926)))

(declare-fun c!596809 () Bool)

(assert (=> b!3480361 (= c!596809 ((_ is ElementMatch!10217) (regex!5458 (rule!8064 separatorToken!241))))))

(declare-fun bm!250950 () Bool)

(declare-fun c!596806 () Bool)

(declare-fun c!596807 () Bool)

(declare-fun call!250956 () List!37379)

(assert (=> bm!250950 (= call!250956 (usedCharacters!692 (ite c!596807 (reg!10546 (regex!5458 (rule!8064 separatorToken!241))) (ite c!596806 (regOne!20947 (regex!5458 (rule!8064 separatorToken!241))) (regTwo!20946 (regex!5458 (rule!8064 separatorToken!241)))))))))

(declare-fun b!3480362 () Bool)

(assert (=> b!3480362 (= c!596807 ((_ is Star!10217) (regex!5458 (rule!8064 separatorToken!241))))))

(declare-fun e!2155925 () List!37379)

(assert (=> b!3480362 (= e!2155926 e!2155925)))

(declare-fun b!3480363 () Bool)

(declare-fun e!2155928 () List!37379)

(declare-fun call!250958 () List!37379)

(assert (=> b!3480363 (= e!2155928 call!250958)))

(declare-fun b!3480364 () Bool)

(assert (=> b!3480364 (= e!2155925 call!250956)))

(declare-fun bm!250951 () Bool)

(declare-fun call!250957 () List!37379)

(assert (=> bm!250951 (= call!250957 (usedCharacters!692 (ite c!596806 (regTwo!20947 (regex!5458 (rule!8064 separatorToken!241))) (regOne!20946 (regex!5458 (rule!8064 separatorToken!241))))))))

(declare-fun bm!250952 () Bool)

(declare-fun call!250955 () List!37379)

(assert (=> bm!250952 (= call!250958 (++!9203 (ite c!596806 call!250955 call!250957) (ite c!596806 call!250957 call!250955)))))

(declare-fun d!1005166 () Bool)

(declare-fun c!596808 () Bool)

(assert (=> d!1005166 (= c!596808 (or ((_ is EmptyExpr!10217) (regex!5458 (rule!8064 separatorToken!241))) ((_ is EmptyLang!10217) (regex!5458 (rule!8064 separatorToken!241)))))))

(assert (=> d!1005166 (= (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241))) e!2155927)))

(declare-fun b!3480365 () Bool)

(assert (=> b!3480365 (= e!2155928 call!250958)))

(declare-fun b!3480366 () Bool)

(assert (=> b!3480366 (= e!2155925 e!2155928)))

(assert (=> b!3480366 (= c!596806 ((_ is Union!10217) (regex!5458 (rule!8064 separatorToken!241))))))

(declare-fun b!3480367 () Bool)

(assert (=> b!3480367 (= e!2155926 (Cons!37255 (c!596726 (regex!5458 (rule!8064 separatorToken!241))) Nil!37255))))

(declare-fun b!3480368 () Bool)

(assert (=> b!3480368 (= e!2155927 Nil!37255)))

(declare-fun bm!250953 () Bool)

(assert (=> bm!250953 (= call!250955 call!250956)))

(assert (= (and d!1005166 c!596808) b!3480368))

(assert (= (and d!1005166 (not c!596808)) b!3480361))

(assert (= (and b!3480361 c!596809) b!3480367))

(assert (= (and b!3480361 (not c!596809)) b!3480362))

(assert (= (and b!3480362 c!596807) b!3480364))

(assert (= (and b!3480362 (not c!596807)) b!3480366))

(assert (= (and b!3480366 c!596806) b!3480363))

(assert (= (and b!3480366 (not c!596806)) b!3480365))

(assert (= (or b!3480363 b!3480365) bm!250951))

(assert (= (or b!3480363 b!3480365) bm!250953))

(assert (= (or b!3480363 b!3480365) bm!250952))

(assert (= (or b!3480364 bm!250953) bm!250950))

(declare-fun m!3896993 () Bool)

(assert (=> bm!250950 m!3896993))

(declare-fun m!3896995 () Bool)

(assert (=> bm!250951 m!3896995))

(declare-fun m!3896997 () Bool)

(assert (=> bm!250952 m!3896997))

(assert (=> b!3479962 d!1005166))

(declare-fun d!1005170 () Bool)

(declare-fun lt!1185211 () Bool)

(assert (=> d!1005170 (= lt!1185211 (select (content!5219 (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494))))) lt!1185055))))

(declare-fun e!2155936 () Bool)

(assert (=> d!1005170 (= lt!1185211 e!2155936)))

(declare-fun res!1404539 () Bool)

(assert (=> d!1005170 (=> (not res!1404539) (not e!2155936))))

(assert (=> d!1005170 (= res!1404539 ((_ is Cons!37255) (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494))))))))

(assert (=> d!1005170 (= (contains!6946 (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494)))) lt!1185055) lt!1185211)))

(declare-fun b!3480377 () Bool)

(declare-fun e!2155935 () Bool)

(assert (=> b!3480377 (= e!2155936 e!2155935)))

(declare-fun res!1404540 () Bool)

(assert (=> b!3480377 (=> res!1404540 e!2155935)))

(assert (=> b!3480377 (= res!1404540 (= (h!42675 (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494))))) lt!1185055))))

(declare-fun b!3480378 () Bool)

(assert (=> b!3480378 (= e!2155935 (contains!6946 (t!275436 (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494))))) lt!1185055))))

(assert (= (and d!1005170 res!1404539) b!3480377))

(assert (= (and b!3480377 (not res!1404540)) b!3480378))

(assert (=> d!1005170 m!3896469))

(declare-fun m!3897011 () Bool)

(assert (=> d!1005170 m!3897011))

(declare-fun m!3897013 () Bool)

(assert (=> d!1005170 m!3897013))

(declare-fun m!3897015 () Bool)

(assert (=> b!3480378 m!3897015))

(assert (=> b!3479962 d!1005170))

(declare-fun d!1005176 () Bool)

(assert (=> d!1005176 (= (isDefined!5830 lt!1185049) (not (isEmpty!21664 lt!1185049)))))

(declare-fun bs!561909 () Bool)

(assert (= bs!561909 d!1005176))

(declare-fun m!3897017 () Bool)

(assert (=> bs!561909 m!3897017))

(assert (=> b!3479962 d!1005176))

(declare-fun b!3480379 () Bool)

(declare-fun e!2155939 () List!37379)

(declare-fun e!2155938 () List!37379)

(assert (=> b!3480379 (= e!2155939 e!2155938)))

(declare-fun c!596814 () Bool)

(assert (=> b!3480379 (= c!596814 ((_ is ElementMatch!10217) (regex!5458 (rule!8064 (h!42677 tokens!494)))))))

(declare-fun bm!250954 () Bool)

(declare-fun call!250960 () List!37379)

(declare-fun c!596811 () Bool)

(declare-fun c!596812 () Bool)

(assert (=> bm!250954 (= call!250960 (usedCharacters!692 (ite c!596812 (reg!10546 (regex!5458 (rule!8064 (h!42677 tokens!494)))) (ite c!596811 (regOne!20947 (regex!5458 (rule!8064 (h!42677 tokens!494)))) (regTwo!20946 (regex!5458 (rule!8064 (h!42677 tokens!494))))))))))

(declare-fun b!3480380 () Bool)

(assert (=> b!3480380 (= c!596812 ((_ is Star!10217) (regex!5458 (rule!8064 (h!42677 tokens!494)))))))

(declare-fun e!2155937 () List!37379)

(assert (=> b!3480380 (= e!2155938 e!2155937)))

(declare-fun b!3480381 () Bool)

(declare-fun e!2155940 () List!37379)

(declare-fun call!250962 () List!37379)

(assert (=> b!3480381 (= e!2155940 call!250962)))

(declare-fun b!3480382 () Bool)

(assert (=> b!3480382 (= e!2155937 call!250960)))

(declare-fun bm!250955 () Bool)

(declare-fun call!250961 () List!37379)

(assert (=> bm!250955 (= call!250961 (usedCharacters!692 (ite c!596811 (regTwo!20947 (regex!5458 (rule!8064 (h!42677 tokens!494)))) (regOne!20946 (regex!5458 (rule!8064 (h!42677 tokens!494)))))))))

(declare-fun call!250959 () List!37379)

(declare-fun bm!250956 () Bool)

(assert (=> bm!250956 (= call!250962 (++!9203 (ite c!596811 call!250959 call!250961) (ite c!596811 call!250961 call!250959)))))

(declare-fun d!1005178 () Bool)

(declare-fun c!596813 () Bool)

(assert (=> d!1005178 (= c!596813 (or ((_ is EmptyExpr!10217) (regex!5458 (rule!8064 (h!42677 tokens!494)))) ((_ is EmptyLang!10217) (regex!5458 (rule!8064 (h!42677 tokens!494))))))))

(assert (=> d!1005178 (= (usedCharacters!692 (regex!5458 (rule!8064 (h!42677 tokens!494)))) e!2155939)))

(declare-fun b!3480383 () Bool)

(assert (=> b!3480383 (= e!2155940 call!250962)))

(declare-fun b!3480384 () Bool)

(assert (=> b!3480384 (= e!2155937 e!2155940)))

(assert (=> b!3480384 (= c!596811 ((_ is Union!10217) (regex!5458 (rule!8064 (h!42677 tokens!494)))))))

(declare-fun b!3480385 () Bool)

(assert (=> b!3480385 (= e!2155938 (Cons!37255 (c!596726 (regex!5458 (rule!8064 (h!42677 tokens!494)))) Nil!37255))))

(declare-fun b!3480386 () Bool)

(assert (=> b!3480386 (= e!2155939 Nil!37255)))

(declare-fun bm!250957 () Bool)

(assert (=> bm!250957 (= call!250959 call!250960)))

(assert (= (and d!1005178 c!596813) b!3480386))

(assert (= (and d!1005178 (not c!596813)) b!3480379))

(assert (= (and b!3480379 c!596814) b!3480385))

(assert (= (and b!3480379 (not c!596814)) b!3480380))

(assert (= (and b!3480380 c!596812) b!3480382))

(assert (= (and b!3480380 (not c!596812)) b!3480384))

(assert (= (and b!3480384 c!596811) b!3480381))

(assert (= (and b!3480384 (not c!596811)) b!3480383))

(assert (= (or b!3480381 b!3480383) bm!250955))

(assert (= (or b!3480381 b!3480383) bm!250957))

(assert (= (or b!3480381 b!3480383) bm!250956))

(assert (= (or b!3480382 bm!250957) bm!250954))

(declare-fun m!3897023 () Bool)

(assert (=> bm!250954 m!3897023))

(declare-fun m!3897025 () Bool)

(assert (=> bm!250955 m!3897025))

(declare-fun m!3897027 () Bool)

(assert (=> bm!250956 m!3897027))

(assert (=> b!3479962 d!1005178))

(declare-fun d!1005182 () Bool)

(assert (=> d!1005182 (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 tokens!494))))

(declare-fun lt!1185222 () Unit!52688)

(declare-fun choose!20168 (LexerInterface!5047 List!37380 List!37381 Token!10282) Unit!52688)

(assert (=> d!1005182 (= lt!1185222 (choose!20168 thiss!18206 rules!2135 tokens!494 (h!42677 tokens!494)))))

(assert (=> d!1005182 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005182 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1036 thiss!18206 rules!2135 tokens!494 (h!42677 tokens!494)) lt!1185222)))

(declare-fun bs!561913 () Bool)

(assert (= bs!561913 d!1005182))

(assert (=> bs!561913 m!3896383))

(declare-fun m!3897097 () Bool)

(assert (=> bs!561913 m!3897097))

(assert (=> bs!561913 m!3896365))

(assert (=> b!3479962 d!1005182))

(declare-fun d!1005206 () Bool)

(assert (=> d!1005206 (dynLambda!15774 lambda!122215 (h!42677 (t!275438 tokens!494)))))

(declare-fun lt!1185225 () Unit!52688)

(declare-fun choose!20169 (List!37381 Int Token!10282) Unit!52688)

(assert (=> d!1005206 (= lt!1185225 (choose!20169 tokens!494 lambda!122215 (h!42677 (t!275438 tokens!494))))))

(declare-fun e!2155958 () Bool)

(assert (=> d!1005206 e!2155958))

(declare-fun res!1404550 () Bool)

(assert (=> d!1005206 (=> (not res!1404550) (not e!2155958))))

(assert (=> d!1005206 (= res!1404550 (forall!7967 tokens!494 lambda!122215))))

(assert (=> d!1005206 (= (forallContained!1405 tokens!494 lambda!122215 (h!42677 (t!275438 tokens!494))) lt!1185225)))

(declare-fun b!3480417 () Bool)

(assert (=> b!3480417 (= e!2155958 (contains!6945 tokens!494 (h!42677 (t!275438 tokens!494))))))

(assert (= (and d!1005206 res!1404550) b!3480417))

(declare-fun b_lambda!100665 () Bool)

(assert (=> (not b_lambda!100665) (not d!1005206)))

(declare-fun m!3897099 () Bool)

(assert (=> d!1005206 m!3897099))

(declare-fun m!3897101 () Bool)

(assert (=> d!1005206 m!3897101))

(declare-fun m!3897103 () Bool)

(assert (=> d!1005206 m!3897103))

(assert (=> b!3480417 m!3896477))

(assert (=> b!3479962 d!1005206))

(declare-fun d!1005208 () Bool)

(declare-fun lt!1185272 () Bool)

(declare-fun e!2156009 () Bool)

(assert (=> d!1005208 (= lt!1185272 e!2156009)))

(declare-fun res!1404605 () Bool)

(assert (=> d!1005208 (=> (not res!1404605) (not e!2156009))))

(assert (=> d!1005208 (= res!1404605 (= (list!13591 (_1!21646 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 (h!42677 (t!275438 tokens!494))))))) (list!13591 (singletonSeq!2554 (h!42677 (t!275438 tokens!494))))))))

(declare-fun e!2156010 () Bool)

(assert (=> d!1005208 (= lt!1185272 e!2156010)))

(declare-fun res!1404604 () Bool)

(assert (=> d!1005208 (=> (not res!1404604) (not e!2156010))))

(declare-fun lt!1185271 () tuple2!37024)

(assert (=> d!1005208 (= res!1404604 (= (size!28296 (_1!21646 lt!1185271)) 1))))

(assert (=> d!1005208 (= lt!1185271 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 (h!42677 (t!275438 tokens!494))))))))

(assert (=> d!1005208 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005208 (= (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 (t!275438 tokens!494))) lt!1185272)))

(declare-fun b!3480500 () Bool)

(declare-fun res!1404606 () Bool)

(assert (=> b!3480500 (=> (not res!1404606) (not e!2156010))))

(assert (=> b!3480500 (= res!1404606 (= (apply!8820 (_1!21646 lt!1185271) 0) (h!42677 (t!275438 tokens!494))))))

(declare-fun b!3480501 () Bool)

(assert (=> b!3480501 (= e!2156010 (isEmpty!21655 (_2!21646 lt!1185271)))))

(declare-fun b!3480502 () Bool)

(assert (=> b!3480502 (= e!2156009 (isEmpty!21655 (_2!21646 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 (h!42677 (t!275438 tokens!494))))))))))

(assert (= (and d!1005208 res!1404604) b!3480500))

(assert (= (and b!3480500 res!1404606) b!3480501))

(assert (= (and d!1005208 res!1404605) b!3480502))

(assert (=> d!1005208 m!3896505))

(declare-fun m!3897217 () Bool)

(assert (=> d!1005208 m!3897217))

(declare-fun m!3897219 () Bool)

(assert (=> d!1005208 m!3897219))

(assert (=> d!1005208 m!3896365))

(declare-fun m!3897221 () Bool)

(assert (=> d!1005208 m!3897221))

(assert (=> d!1005208 m!3896505))

(declare-fun m!3897223 () Bool)

(assert (=> d!1005208 m!3897223))

(assert (=> d!1005208 m!3897223))

(declare-fun m!3897225 () Bool)

(assert (=> d!1005208 m!3897225))

(assert (=> d!1005208 m!3896505))

(declare-fun m!3897227 () Bool)

(assert (=> b!3480500 m!3897227))

(declare-fun m!3897229 () Bool)

(assert (=> b!3480501 m!3897229))

(assert (=> b!3480502 m!3896505))

(assert (=> b!3480502 m!3896505))

(assert (=> b!3480502 m!3897223))

(assert (=> b!3480502 m!3897223))

(assert (=> b!3480502 m!3897225))

(declare-fun m!3897231 () Bool)

(assert (=> b!3480502 m!3897231))

(assert (=> b!3479962 d!1005208))

(declare-fun d!1005236 () Bool)

(declare-fun lt!1185273 () BalanceConc!22196)

(assert (=> d!1005236 (= (list!13587 lt!1185273) (printList!1595 thiss!18206 (list!13591 lt!1185064)))))

(assert (=> d!1005236 (= lt!1185273 (printTailRec!1542 thiss!18206 lt!1185064 0 (BalanceConc!22197 Empty!11291)))))

(assert (=> d!1005236 (= (print!2112 thiss!18206 lt!1185064) lt!1185273)))

(declare-fun bs!561920 () Bool)

(assert (= bs!561920 d!1005236))

(declare-fun m!3897233 () Bool)

(assert (=> bs!561920 m!3897233))

(declare-fun m!3897235 () Bool)

(assert (=> bs!561920 m!3897235))

(assert (=> bs!561920 m!3897235))

(declare-fun m!3897237 () Bool)

(assert (=> bs!561920 m!3897237))

(assert (=> bs!561920 m!3896481))

(assert (=> b!3479962 d!1005236))

(declare-fun b!3480526 () Bool)

(declare-fun res!1404624 () Bool)

(declare-fun e!2156023 () Bool)

(assert (=> b!3480526 (=> (not res!1404624) (not e!2156023))))

(declare-fun lt!1185301 () Option!7570)

(declare-fun get!11941 (Option!7570) tuple2!37026)

(assert (=> b!3480526 (= res!1404624 (matchR!4801 (regex!5458 (rule!8064 (_1!21647 (get!11941 lt!1185301)))) (list!13587 (charsOf!3472 (_1!21647 (get!11941 lt!1185301))))))))

(declare-fun b!3480527 () Bool)

(declare-fun e!2156021 () Bool)

(assert (=> b!3480527 (= e!2156021 e!2156023)))

(declare-fun res!1404625 () Bool)

(assert (=> b!3480527 (=> (not res!1404625) (not e!2156023))))

(declare-fun isDefined!5831 (Option!7570) Bool)

(assert (=> b!3480527 (= res!1404625 (isDefined!5831 lt!1185301))))

(declare-fun b!3480528 () Bool)

(declare-fun res!1404628 () Bool)

(assert (=> b!3480528 (=> (not res!1404628) (not e!2156023))))

(assert (=> b!3480528 (= res!1404628 (= (value!176013 (_1!21647 (get!11941 lt!1185301))) (apply!8821 (transformation!5458 (rule!8064 (_1!21647 (get!11941 lt!1185301)))) (seqFromList!3969 (originalCharacters!6172 (_1!21647 (get!11941 lt!1185301)))))))))

(declare-fun b!3480529 () Bool)

(declare-fun e!2156022 () Option!7570)

(declare-fun lt!1185300 () Option!7570)

(declare-fun lt!1185303 () Option!7570)

(assert (=> b!3480529 (= e!2156022 (ite (and ((_ is None!7569) lt!1185300) ((_ is None!7569) lt!1185303)) None!7569 (ite ((_ is None!7569) lt!1185303) lt!1185300 (ite ((_ is None!7569) lt!1185300) lt!1185303 (ite (>= (size!28295 (_1!21647 (v!36957 lt!1185300))) (size!28295 (_1!21647 (v!36957 lt!1185303)))) lt!1185300 lt!1185303)))))))

(declare-fun call!250968 () Option!7570)

(assert (=> b!3480529 (= lt!1185300 call!250968)))

(assert (=> b!3480529 (= lt!1185303 (maxPrefix!2587 thiss!18206 (t!275437 rules!2135) lt!1185065))))

(declare-fun b!3480530 () Bool)

(declare-fun res!1404627 () Bool)

(assert (=> b!3480530 (=> (not res!1404627) (not e!2156023))))

(assert (=> b!3480530 (= res!1404627 (< (size!28297 (_2!21647 (get!11941 lt!1185301))) (size!28297 lt!1185065)))))

(declare-fun b!3480531 () Bool)

(declare-fun res!1404630 () Bool)

(assert (=> b!3480531 (=> (not res!1404630) (not e!2156023))))

(assert (=> b!3480531 (= res!1404630 (= (++!9203 (list!13587 (charsOf!3472 (_1!21647 (get!11941 lt!1185301)))) (_2!21647 (get!11941 lt!1185301))) lt!1185065))))

(declare-fun b!3480532 () Bool)

(assert (=> b!3480532 (= e!2156023 (contains!6947 rules!2135 (rule!8064 (_1!21647 (get!11941 lt!1185301)))))))

(declare-fun b!3480533 () Bool)

(assert (=> b!3480533 (= e!2156022 call!250968)))

(declare-fun b!3480534 () Bool)

(declare-fun res!1404626 () Bool)

(assert (=> b!3480534 (=> (not res!1404626) (not e!2156023))))

(assert (=> b!3480534 (= res!1404626 (= (list!13587 (charsOf!3472 (_1!21647 (get!11941 lt!1185301)))) (originalCharacters!6172 (_1!21647 (get!11941 lt!1185301)))))))

(declare-fun d!1005238 () Bool)

(assert (=> d!1005238 e!2156021))

(declare-fun res!1404629 () Bool)

(assert (=> d!1005238 (=> res!1404629 e!2156021)))

(declare-fun isEmpty!21666 (Option!7570) Bool)

(assert (=> d!1005238 (= res!1404629 (isEmpty!21666 lt!1185301))))

(assert (=> d!1005238 (= lt!1185301 e!2156022)))

(declare-fun c!596842 () Bool)

(assert (=> d!1005238 (= c!596842 (and ((_ is Cons!37256) rules!2135) ((_ is Nil!37256) (t!275437 rules!2135))))))

(declare-fun lt!1185302 () Unit!52688)

(declare-fun lt!1185299 () Unit!52688)

(assert (=> d!1005238 (= lt!1185302 lt!1185299)))

(declare-fun isPrefix!2857 (List!37379 List!37379) Bool)

(assert (=> d!1005238 (isPrefix!2857 lt!1185065 lt!1185065)))

(declare-fun lemmaIsPrefixRefl!1816 (List!37379 List!37379) Unit!52688)

(assert (=> d!1005238 (= lt!1185299 (lemmaIsPrefixRefl!1816 lt!1185065 lt!1185065))))

(declare-fun rulesValidInductive!1866 (LexerInterface!5047 List!37380) Bool)

(assert (=> d!1005238 (rulesValidInductive!1866 thiss!18206 rules!2135)))

(assert (=> d!1005238 (= (maxPrefix!2587 thiss!18206 rules!2135 lt!1185065) lt!1185301)))

(declare-fun bm!250963 () Bool)

(assert (=> bm!250963 (= call!250968 (maxPrefixOneRule!1754 thiss!18206 (h!42676 rules!2135) lt!1185065))))

(assert (= (and d!1005238 c!596842) b!3480533))

(assert (= (and d!1005238 (not c!596842)) b!3480529))

(assert (= (or b!3480533 b!3480529) bm!250963))

(assert (= (and d!1005238 (not res!1404629)) b!3480527))

(assert (= (and b!3480527 res!1404625) b!3480534))

(assert (= (and b!3480534 res!1404626) b!3480530))

(assert (= (and b!3480530 res!1404627) b!3480531))

(assert (= (and b!3480531 res!1404630) b!3480528))

(assert (= (and b!3480528 res!1404628) b!3480526))

(assert (= (and b!3480526 res!1404624) b!3480532))

(declare-fun m!3897295 () Bool)

(assert (=> bm!250963 m!3897295))

(declare-fun m!3897297 () Bool)

(assert (=> d!1005238 m!3897297))

(declare-fun m!3897299 () Bool)

(assert (=> d!1005238 m!3897299))

(declare-fun m!3897301 () Bool)

(assert (=> d!1005238 m!3897301))

(declare-fun m!3897303 () Bool)

(assert (=> d!1005238 m!3897303))

(declare-fun m!3897305 () Bool)

(assert (=> b!3480534 m!3897305))

(declare-fun m!3897307 () Bool)

(assert (=> b!3480534 m!3897307))

(assert (=> b!3480534 m!3897307))

(declare-fun m!3897309 () Bool)

(assert (=> b!3480534 m!3897309))

(declare-fun m!3897311 () Bool)

(assert (=> b!3480527 m!3897311))

(assert (=> b!3480531 m!3897305))

(assert (=> b!3480531 m!3897307))

(assert (=> b!3480531 m!3897307))

(assert (=> b!3480531 m!3897309))

(assert (=> b!3480531 m!3897309))

(declare-fun m!3897313 () Bool)

(assert (=> b!3480531 m!3897313))

(assert (=> b!3480528 m!3897305))

(declare-fun m!3897315 () Bool)

(assert (=> b!3480528 m!3897315))

(assert (=> b!3480528 m!3897315))

(declare-fun m!3897317 () Bool)

(assert (=> b!3480528 m!3897317))

(assert (=> b!3480526 m!3897305))

(assert (=> b!3480526 m!3897307))

(assert (=> b!3480526 m!3897307))

(assert (=> b!3480526 m!3897309))

(assert (=> b!3480526 m!3897309))

(declare-fun m!3897319 () Bool)

(assert (=> b!3480526 m!3897319))

(declare-fun m!3897321 () Bool)

(assert (=> b!3480529 m!3897321))

(assert (=> b!3480530 m!3897305))

(declare-fun m!3897323 () Bool)

(assert (=> b!3480530 m!3897323))

(declare-fun m!3897325 () Bool)

(assert (=> b!3480530 m!3897325))

(assert (=> b!3480532 m!3897305))

(declare-fun m!3897327 () Bool)

(assert (=> b!3480532 m!3897327))

(assert (=> b!3479962 d!1005238))

(declare-fun d!1005250 () Bool)

(declare-fun lt!1185304 () Int)

(assert (=> d!1005250 (= lt!1185304 (size!28300 (list!13591 (_1!21646 lt!1185056))))))

(assert (=> d!1005250 (= lt!1185304 (size!28301 (c!596728 (_1!21646 lt!1185056))))))

(assert (=> d!1005250 (= (size!28296 (_1!21646 lt!1185056)) lt!1185304)))

(declare-fun bs!561923 () Bool)

(assert (= bs!561923 d!1005250))

(declare-fun m!3897329 () Bool)

(assert (=> bs!561923 m!3897329))

(assert (=> bs!561923 m!3897329))

(declare-fun m!3897331 () Bool)

(assert (=> bs!561923 m!3897331))

(declare-fun m!3897333 () Bool)

(assert (=> bs!561923 m!3897333))

(assert (=> b!3479962 d!1005250))

(declare-fun b!3480535 () Bool)

(declare-fun e!2156025 () Bool)

(declare-fun lt!1185306 () Option!7569)

(assert (=> b!3480535 (= e!2156025 (= (tag!6080 (get!11940 lt!1185306)) (tag!6080 (rule!8064 (h!42677 tokens!494)))))))

(declare-fun b!3480536 () Bool)

(declare-fun lt!1185305 () Unit!52688)

(declare-fun lt!1185307 () Unit!52688)

(assert (=> b!3480536 (= lt!1185305 lt!1185307)))

(assert (=> b!3480536 (rulesInvariant!4444 thiss!18206 (t!275437 rules!2135))))

(assert (=> b!3480536 (= lt!1185307 (lemmaInvariantOnRulesThenOnTail!445 thiss!18206 (h!42676 rules!2135) (t!275437 rules!2135)))))

(declare-fun e!2156027 () Option!7569)

(assert (=> b!3480536 (= e!2156027 (getRuleFromTag!1101 thiss!18206 (t!275437 rules!2135) (tag!6080 (rule!8064 (h!42677 tokens!494)))))))

(declare-fun b!3480537 () Bool)

(declare-fun e!2156024 () Option!7569)

(assert (=> b!3480537 (= e!2156024 (Some!7568 (h!42676 rules!2135)))))

(declare-fun d!1005252 () Bool)

(declare-fun e!2156026 () Bool)

(assert (=> d!1005252 e!2156026))

(declare-fun res!1404632 () Bool)

(assert (=> d!1005252 (=> res!1404632 e!2156026)))

(assert (=> d!1005252 (= res!1404632 (isEmpty!21664 lt!1185306))))

(assert (=> d!1005252 (= lt!1185306 e!2156024)))

(declare-fun c!596843 () Bool)

(assert (=> d!1005252 (= c!596843 (and ((_ is Cons!37256) rules!2135) (= (tag!6080 (h!42676 rules!2135)) (tag!6080 (rule!8064 (h!42677 tokens!494))))))))

(assert (=> d!1005252 (rulesInvariant!4444 thiss!18206 rules!2135)))

(assert (=> d!1005252 (= (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 (h!42677 tokens!494)))) lt!1185306)))

(declare-fun b!3480538 () Bool)

(assert (=> b!3480538 (= e!2156026 e!2156025)))

(declare-fun res!1404631 () Bool)

(assert (=> b!3480538 (=> (not res!1404631) (not e!2156025))))

(assert (=> b!3480538 (= res!1404631 (contains!6947 rules!2135 (get!11940 lt!1185306)))))

(declare-fun b!3480539 () Bool)

(assert (=> b!3480539 (= e!2156024 e!2156027)))

(declare-fun c!596844 () Bool)

(assert (=> b!3480539 (= c!596844 (and ((_ is Cons!37256) rules!2135) (not (= (tag!6080 (h!42676 rules!2135)) (tag!6080 (rule!8064 (h!42677 tokens!494)))))))))

(declare-fun b!3480540 () Bool)

(assert (=> b!3480540 (= e!2156027 None!7568)))

(assert (= (and d!1005252 c!596843) b!3480537))

(assert (= (and d!1005252 (not c!596843)) b!3480539))

(assert (= (and b!3480539 c!596844) b!3480536))

(assert (= (and b!3480539 (not c!596844)) b!3480540))

(assert (= (and d!1005252 (not res!1404632)) b!3480538))

(assert (= (and b!3480538 res!1404631) b!3480535))

(declare-fun m!3897335 () Bool)

(assert (=> b!3480535 m!3897335))

(assert (=> b!3480536 m!3896911))

(assert (=> b!3480536 m!3896913))

(declare-fun m!3897337 () Bool)

(assert (=> b!3480536 m!3897337))

(declare-fun m!3897339 () Bool)

(assert (=> d!1005252 m!3897339))

(assert (=> d!1005252 m!3896359))

(assert (=> b!3480538 m!3897335))

(assert (=> b!3480538 m!3897335))

(declare-fun m!3897341 () Bool)

(assert (=> b!3480538 m!3897341))

(assert (=> b!3479962 d!1005252))

(declare-fun d!1005254 () Bool)

(declare-fun lt!1185336 () BalanceConc!22196)

(declare-fun printListTailRec!702 (LexerInterface!5047 List!37381 List!37379) List!37379)

(declare-fun dropList!1219 (BalanceConc!22198 Int) List!37381)

(assert (=> d!1005254 (= (list!13587 lt!1185336) (printListTailRec!702 thiss!18206 (dropList!1219 lt!1185064 0) (list!13587 (BalanceConc!22197 Empty!11291))))))

(declare-fun e!2156041 () BalanceConc!22196)

(assert (=> d!1005254 (= lt!1185336 e!2156041)))

(declare-fun c!596849 () Bool)

(assert (=> d!1005254 (= c!596849 (>= 0 (size!28296 lt!1185064)))))

(declare-fun e!2156040 () Bool)

(assert (=> d!1005254 e!2156040))

(declare-fun res!1404649 () Bool)

(assert (=> d!1005254 (=> (not res!1404649) (not e!2156040))))

(assert (=> d!1005254 (= res!1404649 (>= 0 0))))

(assert (=> d!1005254 (= (printTailRec!1542 thiss!18206 lt!1185064 0 (BalanceConc!22197 Empty!11291)) lt!1185336)))

(declare-fun b!3480565 () Bool)

(assert (=> b!3480565 (= e!2156040 (<= 0 (size!28296 lt!1185064)))))

(declare-fun b!3480566 () Bool)

(assert (=> b!3480566 (= e!2156041 (BalanceConc!22197 Empty!11291))))

(declare-fun b!3480567 () Bool)

(declare-fun ++!9205 (BalanceConc!22196 BalanceConc!22196) BalanceConc!22196)

(assert (=> b!3480567 (= e!2156041 (printTailRec!1542 thiss!18206 lt!1185064 (+ 0 1) (++!9205 (BalanceConc!22197 Empty!11291) (charsOf!3472 (apply!8820 lt!1185064 0)))))))

(declare-fun lt!1185332 () List!37381)

(assert (=> b!3480567 (= lt!1185332 (list!13591 lt!1185064))))

(declare-fun lt!1185338 () Unit!52688)

(declare-fun lemmaDropApply!1177 (List!37381 Int) Unit!52688)

(assert (=> b!3480567 (= lt!1185338 (lemmaDropApply!1177 lt!1185332 0))))

(declare-fun head!7353 (List!37381) Token!10282)

(declare-fun drop!2027 (List!37381 Int) List!37381)

(assert (=> b!3480567 (= (head!7353 (drop!2027 lt!1185332 0)) (apply!8824 lt!1185332 0))))

(declare-fun lt!1185337 () Unit!52688)

(assert (=> b!3480567 (= lt!1185337 lt!1185338)))

(declare-fun lt!1185334 () List!37381)

(assert (=> b!3480567 (= lt!1185334 (list!13591 lt!1185064))))

(declare-fun lt!1185335 () Unit!52688)

(declare-fun lemmaDropTail!1061 (List!37381 Int) Unit!52688)

(assert (=> b!3480567 (= lt!1185335 (lemmaDropTail!1061 lt!1185334 0))))

(declare-fun tail!5461 (List!37381) List!37381)

(assert (=> b!3480567 (= (tail!5461 (drop!2027 lt!1185334 0)) (drop!2027 lt!1185334 (+ 0 1)))))

(declare-fun lt!1185333 () Unit!52688)

(assert (=> b!3480567 (= lt!1185333 lt!1185335)))

(assert (= (and d!1005254 res!1404649) b!3480565))

(assert (= (and d!1005254 c!596849) b!3480566))

(assert (= (and d!1005254 (not c!596849)) b!3480567))

(declare-fun m!3897343 () Bool)

(assert (=> d!1005254 m!3897343))

(declare-fun m!3897345 () Bool)

(assert (=> d!1005254 m!3897345))

(declare-fun m!3897347 () Bool)

(assert (=> d!1005254 m!3897347))

(declare-fun m!3897349 () Bool)

(assert (=> d!1005254 m!3897349))

(assert (=> d!1005254 m!3897343))

(declare-fun m!3897351 () Bool)

(assert (=> d!1005254 m!3897351))

(assert (=> d!1005254 m!3897349))

(assert (=> b!3480565 m!3897347))

(declare-fun m!3897353 () Bool)

(assert (=> b!3480567 m!3897353))

(declare-fun m!3897355 () Bool)

(assert (=> b!3480567 m!3897355))

(declare-fun m!3897357 () Bool)

(assert (=> b!3480567 m!3897357))

(declare-fun m!3897359 () Bool)

(assert (=> b!3480567 m!3897359))

(declare-fun m!3897361 () Bool)

(assert (=> b!3480567 m!3897361))

(declare-fun m!3897363 () Bool)

(assert (=> b!3480567 m!3897363))

(declare-fun m!3897365 () Bool)

(assert (=> b!3480567 m!3897365))

(assert (=> b!3480567 m!3897353))

(declare-fun m!3897367 () Bool)

(assert (=> b!3480567 m!3897367))

(declare-fun m!3897369 () Bool)

(assert (=> b!3480567 m!3897369))

(assert (=> b!3480567 m!3897363))

(assert (=> b!3480567 m!3897367))

(declare-fun m!3897371 () Bool)

(assert (=> b!3480567 m!3897371))

(assert (=> b!3480567 m!3897371))

(declare-fun m!3897373 () Bool)

(assert (=> b!3480567 m!3897373))

(assert (=> b!3480567 m!3897235))

(declare-fun m!3897375 () Bool)

(assert (=> b!3480567 m!3897375))

(assert (=> b!3480567 m!3897359))

(assert (=> b!3479962 d!1005254))

(declare-fun d!1005256 () Bool)

(declare-fun dynLambda!15775 (Int BalanceConc!22196) TokenValue!5688)

(assert (=> d!1005256 (= (apply!8821 (transformation!5458 (rule!8064 (h!42677 tokens!494))) lt!1185063) (dynLambda!15775 (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) lt!1185063))))

(declare-fun b_lambda!100669 () Bool)

(assert (=> (not b_lambda!100669) (not d!1005256)))

(declare-fun t!275479 () Bool)

(declare-fun tb!190815 () Bool)

(assert (=> (and b!3479954 (= (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275479) tb!190815))

(declare-fun result!234960 () Bool)

(assert (=> tb!190815 (= result!234960 (inv!21 (dynLambda!15775 (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) lt!1185063)))))

(declare-fun m!3897377 () Bool)

(assert (=> tb!190815 m!3897377))

(assert (=> d!1005256 t!275479))

(declare-fun b_and!245585 () Bool)

(assert (= b_and!245531 (and (=> t!275479 result!234960) b_and!245585)))

(declare-fun t!275481 () Bool)

(declare-fun tb!190817 () Bool)

(assert (=> (and b!3479955 (= (toValue!7694 (transformation!5458 (rule!8064 separatorToken!241))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275481) tb!190817))

(declare-fun result!234964 () Bool)

(assert (= result!234964 result!234960))

(assert (=> d!1005256 t!275481))

(declare-fun b_and!245587 () Bool)

(assert (= b_and!245535 (and (=> t!275481 result!234964) b_and!245587)))

(declare-fun tb!190819 () Bool)

(declare-fun t!275483 () Bool)

(assert (=> (and b!3479941 (= (toValue!7694 (transformation!5458 (h!42676 rules!2135))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275483) tb!190819))

(declare-fun result!234966 () Bool)

(assert (= result!234966 result!234960))

(assert (=> d!1005256 t!275483))

(declare-fun b_and!245589 () Bool)

(assert (= b_and!245539 (and (=> t!275483 result!234966) b_and!245589)))

(declare-fun m!3897379 () Bool)

(assert (=> d!1005256 m!3897379))

(assert (=> b!3479962 d!1005256))

(declare-fun d!1005258 () Bool)

(declare-fun lt!1185341 () Bool)

(declare-fun content!5220 (List!37381) (InoxSet Token!10282))

(assert (=> d!1005258 (= lt!1185341 (select (content!5220 tokens!494) (h!42677 (t!275438 tokens!494))))))

(declare-fun e!2156049 () Bool)

(assert (=> d!1005258 (= lt!1185341 e!2156049)))

(declare-fun res!1404655 () Bool)

(assert (=> d!1005258 (=> (not res!1404655) (not e!2156049))))

(assert (=> d!1005258 (= res!1404655 ((_ is Cons!37257) tokens!494))))

(assert (=> d!1005258 (= (contains!6945 tokens!494 (h!42677 (t!275438 tokens!494))) lt!1185341)))

(declare-fun b!3480574 () Bool)

(declare-fun e!2156050 () Bool)

(assert (=> b!3480574 (= e!2156049 e!2156050)))

(declare-fun res!1404654 () Bool)

(assert (=> b!3480574 (=> res!1404654 e!2156050)))

(assert (=> b!3480574 (= res!1404654 (= (h!42677 tokens!494) (h!42677 (t!275438 tokens!494))))))

(declare-fun b!3480575 () Bool)

(assert (=> b!3480575 (= e!2156050 (contains!6945 (t!275438 tokens!494) (h!42677 (t!275438 tokens!494))))))

(assert (= (and d!1005258 res!1404655) b!3480574))

(assert (= (and b!3480574 (not res!1404654)) b!3480575))

(declare-fun m!3897381 () Bool)

(assert (=> d!1005258 m!3897381))

(declare-fun m!3897383 () Bool)

(assert (=> d!1005258 m!3897383))

(declare-fun m!3897385 () Bool)

(assert (=> b!3480575 m!3897385))

(assert (=> b!3479962 d!1005258))

(declare-fun d!1005260 () Bool)

(declare-fun lt!1185347 () Bool)

(assert (=> d!1005260 (= lt!1185347 (select (content!5219 (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241)))) lt!1185055))))

(declare-fun e!2156056 () Bool)

(assert (=> d!1005260 (= lt!1185347 e!2156056)))

(declare-fun res!1404663 () Bool)

(assert (=> d!1005260 (=> (not res!1404663) (not e!2156056))))

(assert (=> d!1005260 (= res!1404663 ((_ is Cons!37255) (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241)))))))

(assert (=> d!1005260 (= (contains!6946 (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241))) lt!1185055) lt!1185347)))

(declare-fun b!3480585 () Bool)

(declare-fun e!2156055 () Bool)

(assert (=> b!3480585 (= e!2156056 e!2156055)))

(declare-fun res!1404664 () Bool)

(assert (=> b!3480585 (=> res!1404664 e!2156055)))

(assert (=> b!3480585 (= res!1404664 (= (h!42675 (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241)))) lt!1185055))))

(declare-fun b!3480586 () Bool)

(assert (=> b!3480586 (= e!2156055 (contains!6946 (t!275436 (usedCharacters!692 (regex!5458 (rule!8064 separatorToken!241)))) lt!1185055))))

(assert (= (and d!1005260 res!1404663) b!3480585))

(assert (= (and b!3480585 (not res!1404664)) b!3480586))

(assert (=> d!1005260 m!3896451))

(declare-fun m!3897387 () Bool)

(assert (=> d!1005260 m!3897387))

(declare-fun m!3897389 () Bool)

(assert (=> d!1005260 m!3897389))

(declare-fun m!3897391 () Bool)

(assert (=> b!3480586 m!3897391))

(assert (=> b!3479962 d!1005260))

(declare-fun d!1005262 () Bool)

(assert (=> d!1005262 (= (head!7351 lt!1185051) (h!42675 lt!1185051))))

(assert (=> b!3479962 d!1005262))

(declare-fun d!1005264 () Bool)

(declare-fun e!2156062 () Bool)

(assert (=> d!1005264 e!2156062))

(declare-fun res!1404669 () Bool)

(assert (=> d!1005264 (=> (not res!1404669) (not e!2156062))))

(assert (=> d!1005264 (= res!1404669 (isDefined!5830 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 (h!42677 tokens!494))))))))

(declare-fun lt!1185350 () Unit!52688)

(declare-fun choose!20170 (LexerInterface!5047 List!37380 List!37379 Token!10282) Unit!52688)

(assert (=> d!1005264 (= lt!1185350 (choose!20170 thiss!18206 rules!2135 lt!1185061 (h!42677 tokens!494)))))

(assert (=> d!1005264 (rulesInvariant!4444 thiss!18206 rules!2135)))

(assert (=> d!1005264 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1101 thiss!18206 rules!2135 lt!1185061 (h!42677 tokens!494)) lt!1185350)))

(declare-fun b!3480593 () Bool)

(declare-fun res!1404670 () Bool)

(assert (=> b!3480593 (=> (not res!1404670) (not e!2156062))))

(assert (=> b!3480593 (= res!1404670 (matchR!4801 (regex!5458 (get!11940 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 (h!42677 tokens!494)))))) (list!13587 (charsOf!3472 (h!42677 tokens!494)))))))

(declare-fun b!3480594 () Bool)

(assert (=> b!3480594 (= e!2156062 (= (rule!8064 (h!42677 tokens!494)) (get!11940 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 (h!42677 tokens!494)))))))))

(assert (= (and d!1005264 res!1404669) b!3480593))

(assert (= (and b!3480593 res!1404670) b!3480594))

(assert (=> d!1005264 m!3896453))

(assert (=> d!1005264 m!3896453))

(declare-fun m!3897441 () Bool)

(assert (=> d!1005264 m!3897441))

(declare-fun m!3897443 () Bool)

(assert (=> d!1005264 m!3897443))

(assert (=> d!1005264 m!3896359))

(assert (=> b!3480593 m!3896387))

(declare-fun m!3897445 () Bool)

(assert (=> b!3480593 m!3897445))

(assert (=> b!3480593 m!3896453))

(declare-fun m!3897447 () Bool)

(assert (=> b!3480593 m!3897447))

(assert (=> b!3480593 m!3896453))

(assert (=> b!3480593 m!3896385))

(assert (=> b!3480593 m!3896387))

(assert (=> b!3480593 m!3896385))

(assert (=> b!3480594 m!3896453))

(assert (=> b!3480594 m!3896453))

(assert (=> b!3480594 m!3897447))

(assert (=> b!3479962 d!1005264))

(declare-fun d!1005270 () Bool)

(assert (=> d!1005270 (= (maxPrefixOneRule!1754 thiss!18206 (rule!8064 (h!42677 tokens!494)) lt!1185061) (Some!7569 (tuple2!37027 (Token!10283 (apply!8821 (transformation!5458 (rule!8064 (h!42677 tokens!494))) (seqFromList!3969 lt!1185061)) (rule!8064 (h!42677 tokens!494)) (size!28297 lt!1185061) lt!1185061) Nil!37255)))))

(declare-fun lt!1185363 () Unit!52688)

(declare-fun choose!20173 (LexerInterface!5047 List!37380 List!37379 List!37379 List!37379 Rule!10716) Unit!52688)

(assert (=> d!1005270 (= lt!1185363 (choose!20173 thiss!18206 rules!2135 lt!1185061 lt!1185061 Nil!37255 (rule!8064 (h!42677 tokens!494))))))

(assert (=> d!1005270 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005270 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!847 thiss!18206 rules!2135 lt!1185061 lt!1185061 Nil!37255 (rule!8064 (h!42677 tokens!494))) lt!1185363)))

(declare-fun bs!561924 () Bool)

(assert (= bs!561924 d!1005270))

(assert (=> bs!561924 m!3896483))

(assert (=> bs!561924 m!3896435))

(assert (=> bs!561924 m!3896461))

(assert (=> bs!561924 m!3896435))

(declare-fun m!3897489 () Bool)

(assert (=> bs!561924 m!3897489))

(assert (=> bs!561924 m!3896365))

(declare-fun m!3897491 () Bool)

(assert (=> bs!561924 m!3897491))

(assert (=> b!3479962 d!1005270))

(declare-fun b!3480646 () Bool)

(declare-fun e!2156089 () Bool)

(declare-fun lt!1185378 () Option!7570)

(assert (=> b!3480646 (= e!2156089 (= (size!28295 (_1!21647 (get!11941 lt!1185378))) (size!28297 (originalCharacters!6172 (_1!21647 (get!11941 lt!1185378))))))))

(declare-fun b!3480647 () Bool)

(declare-fun res!1404696 () Bool)

(assert (=> b!3480647 (=> (not res!1404696) (not e!2156089))))

(assert (=> b!3480647 (= res!1404696 (= (value!176013 (_1!21647 (get!11941 lt!1185378))) (apply!8821 (transformation!5458 (rule!8064 (_1!21647 (get!11941 lt!1185378)))) (seqFromList!3969 (originalCharacters!6172 (_1!21647 (get!11941 lt!1185378)))))))))

(declare-fun b!3480648 () Bool)

(declare-fun e!2156091 () Option!7570)

(declare-datatypes ((tuple2!37032 0))(
  ( (tuple2!37033 (_1!21650 List!37379) (_2!21650 List!37379)) )
))
(declare-fun lt!1185376 () tuple2!37032)

(assert (=> b!3480648 (= e!2156091 (Some!7569 (tuple2!37027 (Token!10283 (apply!8821 (transformation!5458 (rule!8064 (h!42677 tokens!494))) (seqFromList!3969 (_1!21650 lt!1185376))) (rule!8064 (h!42677 tokens!494)) (size!28298 (seqFromList!3969 (_1!21650 lt!1185376))) (_1!21650 lt!1185376)) (_2!21650 lt!1185376))))))

(declare-fun lt!1185377 () Unit!52688)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!895 (Regex!10217 List!37379) Unit!52688)

(assert (=> b!3480648 (= lt!1185377 (longestMatchIsAcceptedByMatchOrIsEmpty!895 (regex!5458 (rule!8064 (h!42677 tokens!494))) lt!1185061))))

(declare-fun res!1404694 () Bool)

(declare-fun findLongestMatchInner!922 (Regex!10217 List!37379 Int List!37379 List!37379 Int) tuple2!37032)

(assert (=> b!3480648 (= res!1404694 (isEmpty!21657 (_1!21650 (findLongestMatchInner!922 (regex!5458 (rule!8064 (h!42677 tokens!494))) Nil!37255 (size!28297 Nil!37255) lt!1185061 lt!1185061 (size!28297 lt!1185061)))))))

(declare-fun e!2156088 () Bool)

(assert (=> b!3480648 (=> res!1404694 e!2156088)))

(assert (=> b!3480648 e!2156088))

(declare-fun lt!1185375 () Unit!52688)

(assert (=> b!3480648 (= lt!1185375 lt!1185377)))

(declare-fun lt!1185374 () Unit!52688)

(declare-fun lemmaSemiInverse!1272 (TokenValueInjection!10804 BalanceConc!22196) Unit!52688)

(assert (=> b!3480648 (= lt!1185374 (lemmaSemiInverse!1272 (transformation!5458 (rule!8064 (h!42677 tokens!494))) (seqFromList!3969 (_1!21650 lt!1185376))))))

(declare-fun b!3480649 () Bool)

(declare-fun res!1404698 () Bool)

(assert (=> b!3480649 (=> (not res!1404698) (not e!2156089))))

(assert (=> b!3480649 (= res!1404698 (= (++!9203 (list!13587 (charsOf!3472 (_1!21647 (get!11941 lt!1185378)))) (_2!21647 (get!11941 lt!1185378))) lt!1185061))))

(declare-fun b!3480650 () Bool)

(declare-fun res!1404695 () Bool)

(assert (=> b!3480650 (=> (not res!1404695) (not e!2156089))))

(assert (=> b!3480650 (= res!1404695 (= (rule!8064 (_1!21647 (get!11941 lt!1185378))) (rule!8064 (h!42677 tokens!494))))))

(declare-fun b!3480651 () Bool)

(assert (=> b!3480651 (= e!2156088 (matchR!4801 (regex!5458 (rule!8064 (h!42677 tokens!494))) (_1!21650 (findLongestMatchInner!922 (regex!5458 (rule!8064 (h!42677 tokens!494))) Nil!37255 (size!28297 Nil!37255) lt!1185061 lt!1185061 (size!28297 lt!1185061)))))))

(declare-fun b!3480652 () Bool)

(declare-fun res!1404697 () Bool)

(assert (=> b!3480652 (=> (not res!1404697) (not e!2156089))))

(assert (=> b!3480652 (= res!1404697 (< (size!28297 (_2!21647 (get!11941 lt!1185378))) (size!28297 lt!1185061)))))

(declare-fun d!1005276 () Bool)

(declare-fun e!2156090 () Bool)

(assert (=> d!1005276 e!2156090))

(declare-fun res!1404692 () Bool)

(assert (=> d!1005276 (=> res!1404692 e!2156090)))

(assert (=> d!1005276 (= res!1404692 (isEmpty!21666 lt!1185378))))

(assert (=> d!1005276 (= lt!1185378 e!2156091)))

(declare-fun c!596866 () Bool)

(assert (=> d!1005276 (= c!596866 (isEmpty!21657 (_1!21650 lt!1185376)))))

(declare-fun findLongestMatch!837 (Regex!10217 List!37379) tuple2!37032)

(assert (=> d!1005276 (= lt!1185376 (findLongestMatch!837 (regex!5458 (rule!8064 (h!42677 tokens!494))) lt!1185061))))

(declare-fun ruleValid!1753 (LexerInterface!5047 Rule!10716) Bool)

(assert (=> d!1005276 (ruleValid!1753 thiss!18206 (rule!8064 (h!42677 tokens!494)))))

(assert (=> d!1005276 (= (maxPrefixOneRule!1754 thiss!18206 (rule!8064 (h!42677 tokens!494)) lt!1185061) lt!1185378)))

(declare-fun b!3480653 () Bool)

(assert (=> b!3480653 (= e!2156091 None!7569)))

(declare-fun b!3480654 () Bool)

(assert (=> b!3480654 (= e!2156090 e!2156089)))

(declare-fun res!1404693 () Bool)

(assert (=> b!3480654 (=> (not res!1404693) (not e!2156089))))

(assert (=> b!3480654 (= res!1404693 (matchR!4801 (regex!5458 (rule!8064 (h!42677 tokens!494))) (list!13587 (charsOf!3472 (_1!21647 (get!11941 lt!1185378))))))))

(assert (= (and d!1005276 c!596866) b!3480653))

(assert (= (and d!1005276 (not c!596866)) b!3480648))

(assert (= (and b!3480648 (not res!1404694)) b!3480651))

(assert (= (and d!1005276 (not res!1404692)) b!3480654))

(assert (= (and b!3480654 res!1404693) b!3480649))

(assert (= (and b!3480649 res!1404698) b!3480652))

(assert (= (and b!3480652 res!1404697) b!3480650))

(assert (= (and b!3480650 res!1404695) b!3480647))

(assert (= (and b!3480647 res!1404696) b!3480646))

(declare-fun m!3897499 () Bool)

(assert (=> d!1005276 m!3897499))

(declare-fun m!3897501 () Bool)

(assert (=> d!1005276 m!3897501))

(declare-fun m!3897503 () Bool)

(assert (=> d!1005276 m!3897503))

(declare-fun m!3897505 () Bool)

(assert (=> d!1005276 m!3897505))

(declare-fun m!3897507 () Bool)

(assert (=> b!3480649 m!3897507))

(declare-fun m!3897509 () Bool)

(assert (=> b!3480649 m!3897509))

(assert (=> b!3480649 m!3897509))

(declare-fun m!3897511 () Bool)

(assert (=> b!3480649 m!3897511))

(assert (=> b!3480649 m!3897511))

(declare-fun m!3897513 () Bool)

(assert (=> b!3480649 m!3897513))

(assert (=> b!3480647 m!3897507))

(declare-fun m!3897515 () Bool)

(assert (=> b!3480647 m!3897515))

(assert (=> b!3480647 m!3897515))

(declare-fun m!3897517 () Bool)

(assert (=> b!3480647 m!3897517))

(declare-fun m!3897519 () Bool)

(assert (=> b!3480648 m!3897519))

(declare-fun m!3897521 () Bool)

(assert (=> b!3480648 m!3897521))

(assert (=> b!3480648 m!3896483))

(assert (=> b!3480648 m!3897519))

(declare-fun m!3897523 () Bool)

(assert (=> b!3480648 m!3897523))

(assert (=> b!3480648 m!3896483))

(declare-fun m!3897525 () Bool)

(assert (=> b!3480648 m!3897525))

(assert (=> b!3480648 m!3897519))

(declare-fun m!3897527 () Bool)

(assert (=> b!3480648 m!3897527))

(assert (=> b!3480648 m!3897523))

(declare-fun m!3897529 () Bool)

(assert (=> b!3480648 m!3897529))

(declare-fun m!3897531 () Bool)

(assert (=> b!3480648 m!3897531))

(assert (=> b!3480648 m!3897519))

(declare-fun m!3897533 () Bool)

(assert (=> b!3480648 m!3897533))

(assert (=> b!3480652 m!3897507))

(declare-fun m!3897535 () Bool)

(assert (=> b!3480652 m!3897535))

(assert (=> b!3480652 m!3896483))

(assert (=> b!3480654 m!3897507))

(assert (=> b!3480654 m!3897509))

(assert (=> b!3480654 m!3897509))

(assert (=> b!3480654 m!3897511))

(assert (=> b!3480654 m!3897511))

(declare-fun m!3897537 () Bool)

(assert (=> b!3480654 m!3897537))

(assert (=> b!3480650 m!3897507))

(assert (=> b!3480646 m!3897507))

(declare-fun m!3897539 () Bool)

(assert (=> b!3480646 m!3897539))

(assert (=> b!3480651 m!3897523))

(assert (=> b!3480651 m!3896483))

(assert (=> b!3480651 m!3897523))

(assert (=> b!3480651 m!3896483))

(assert (=> b!3480651 m!3897525))

(declare-fun m!3897541 () Bool)

(assert (=> b!3480651 m!3897541))

(assert (=> b!3479962 d!1005276))

(declare-fun d!1005280 () Bool)

(declare-fun e!2156092 () Bool)

(assert (=> d!1005280 e!2156092))

(declare-fun res!1404699 () Bool)

(assert (=> d!1005280 (=> (not res!1404699) (not e!2156092))))

(declare-fun lt!1185379 () BalanceConc!22198)

(assert (=> d!1005280 (= res!1404699 (= (list!13591 lt!1185379) (Cons!37257 (h!42677 (t!275438 tokens!494)) Nil!37257)))))

(assert (=> d!1005280 (= lt!1185379 (singleton!1134 (h!42677 (t!275438 tokens!494))))))

(assert (=> d!1005280 (= (singletonSeq!2554 (h!42677 (t!275438 tokens!494))) lt!1185379)))

(declare-fun b!3480655 () Bool)

(assert (=> b!3480655 (= e!2156092 (isBalanced!3433 (c!596728 lt!1185379)))))

(assert (= (and d!1005280 res!1404699) b!3480655))

(declare-fun m!3897543 () Bool)

(assert (=> d!1005280 m!3897543))

(declare-fun m!3897545 () Bool)

(assert (=> d!1005280 m!3897545))

(declare-fun m!3897547 () Bool)

(assert (=> b!3480655 m!3897547))

(assert (=> b!3479962 d!1005280))

(declare-fun d!1005282 () Bool)

(declare-fun e!2156093 () Bool)

(assert (=> d!1005282 e!2156093))

(declare-fun res!1404700 () Bool)

(assert (=> d!1005282 (=> (not res!1404700) (not e!2156093))))

(assert (=> d!1005282 (= res!1404700 (isDefined!5830 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 separatorToken!241)))))))

(declare-fun lt!1185380 () Unit!52688)

(assert (=> d!1005282 (= lt!1185380 (choose!20170 thiss!18206 rules!2135 lt!1185051 separatorToken!241))))

(assert (=> d!1005282 (rulesInvariant!4444 thiss!18206 rules!2135)))

(assert (=> d!1005282 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1101 thiss!18206 rules!2135 lt!1185051 separatorToken!241) lt!1185380)))

(declare-fun b!3480656 () Bool)

(declare-fun res!1404701 () Bool)

(assert (=> b!3480656 (=> (not res!1404701) (not e!2156093))))

(assert (=> b!3480656 (= res!1404701 (matchR!4801 (regex!5458 (get!11940 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 separatorToken!241))))) (list!13587 (charsOf!3472 separatorToken!241))))))

(declare-fun b!3480657 () Bool)

(assert (=> b!3480657 (= e!2156093 (= (rule!8064 separatorToken!241) (get!11940 (getRuleFromTag!1101 thiss!18206 rules!2135 (tag!6080 (rule!8064 separatorToken!241))))))))

(assert (= (and d!1005282 res!1404700) b!3480656))

(assert (= (and b!3480656 res!1404701) b!3480657))

(assert (=> d!1005282 m!3896503))

(assert (=> d!1005282 m!3896503))

(declare-fun m!3897549 () Bool)

(assert (=> d!1005282 m!3897549))

(declare-fun m!3897551 () Bool)

(assert (=> d!1005282 m!3897551))

(assert (=> d!1005282 m!3896359))

(assert (=> b!3480656 m!3896413))

(declare-fun m!3897553 () Bool)

(assert (=> b!3480656 m!3897553))

(assert (=> b!3480656 m!3896503))

(declare-fun m!3897555 () Bool)

(assert (=> b!3480656 m!3897555))

(assert (=> b!3480656 m!3896503))

(assert (=> b!3480656 m!3896397))

(assert (=> b!3480656 m!3896413))

(assert (=> b!3480656 m!3896397))

(assert (=> b!3480657 m!3896503))

(assert (=> b!3480657 m!3896503))

(assert (=> b!3480657 m!3897555))

(assert (=> b!3479962 d!1005282))

(declare-fun d!1005284 () Bool)

(declare-fun lt!1185385 () BalanceConc!22196)

(assert (=> d!1005284 (= (list!13587 lt!1185385) (printListTailRec!702 thiss!18206 (dropList!1219 lt!1185048 0) (list!13587 (BalanceConc!22197 Empty!11291))))))

(declare-fun e!2156095 () BalanceConc!22196)

(assert (=> d!1005284 (= lt!1185385 e!2156095)))

(declare-fun c!596867 () Bool)

(assert (=> d!1005284 (= c!596867 (>= 0 (size!28296 lt!1185048)))))

(declare-fun e!2156094 () Bool)

(assert (=> d!1005284 e!2156094))

(declare-fun res!1404702 () Bool)

(assert (=> d!1005284 (=> (not res!1404702) (not e!2156094))))

(assert (=> d!1005284 (= res!1404702 (>= 0 0))))

(assert (=> d!1005284 (= (printTailRec!1542 thiss!18206 lt!1185048 0 (BalanceConc!22197 Empty!11291)) lt!1185385)))

(declare-fun b!3480658 () Bool)

(assert (=> b!3480658 (= e!2156094 (<= 0 (size!28296 lt!1185048)))))

(declare-fun b!3480659 () Bool)

(assert (=> b!3480659 (= e!2156095 (BalanceConc!22197 Empty!11291))))

(declare-fun b!3480660 () Bool)

(assert (=> b!3480660 (= e!2156095 (printTailRec!1542 thiss!18206 lt!1185048 (+ 0 1) (++!9205 (BalanceConc!22197 Empty!11291) (charsOf!3472 (apply!8820 lt!1185048 0)))))))

(declare-fun lt!1185381 () List!37381)

(assert (=> b!3480660 (= lt!1185381 (list!13591 lt!1185048))))

(declare-fun lt!1185387 () Unit!52688)

(assert (=> b!3480660 (= lt!1185387 (lemmaDropApply!1177 lt!1185381 0))))

(assert (=> b!3480660 (= (head!7353 (drop!2027 lt!1185381 0)) (apply!8824 lt!1185381 0))))

(declare-fun lt!1185386 () Unit!52688)

(assert (=> b!3480660 (= lt!1185386 lt!1185387)))

(declare-fun lt!1185383 () List!37381)

(assert (=> b!3480660 (= lt!1185383 (list!13591 lt!1185048))))

(declare-fun lt!1185384 () Unit!52688)

(assert (=> b!3480660 (= lt!1185384 (lemmaDropTail!1061 lt!1185383 0))))

(assert (=> b!3480660 (= (tail!5461 (drop!2027 lt!1185383 0)) (drop!2027 lt!1185383 (+ 0 1)))))

(declare-fun lt!1185382 () Unit!52688)

(assert (=> b!3480660 (= lt!1185382 lt!1185384)))

(assert (= (and d!1005284 res!1404702) b!3480658))

(assert (= (and d!1005284 c!596867) b!3480659))

(assert (= (and d!1005284 (not c!596867)) b!3480660))

(assert (=> d!1005284 m!3897343))

(declare-fun m!3897557 () Bool)

(assert (=> d!1005284 m!3897557))

(declare-fun m!3897559 () Bool)

(assert (=> d!1005284 m!3897559))

(declare-fun m!3897561 () Bool)

(assert (=> d!1005284 m!3897561))

(assert (=> d!1005284 m!3897343))

(declare-fun m!3897563 () Bool)

(assert (=> d!1005284 m!3897563))

(assert (=> d!1005284 m!3897561))

(assert (=> b!3480658 m!3897559))

(declare-fun m!3897565 () Bool)

(assert (=> b!3480660 m!3897565))

(declare-fun m!3897567 () Bool)

(assert (=> b!3480660 m!3897567))

(declare-fun m!3897569 () Bool)

(assert (=> b!3480660 m!3897569))

(declare-fun m!3897571 () Bool)

(assert (=> b!3480660 m!3897571))

(declare-fun m!3897573 () Bool)

(assert (=> b!3480660 m!3897573))

(declare-fun m!3897575 () Bool)

(assert (=> b!3480660 m!3897575))

(declare-fun m!3897577 () Bool)

(assert (=> b!3480660 m!3897577))

(assert (=> b!3480660 m!3897565))

(declare-fun m!3897579 () Bool)

(assert (=> b!3480660 m!3897579))

(declare-fun m!3897581 () Bool)

(assert (=> b!3480660 m!3897581))

(assert (=> b!3480660 m!3897575))

(assert (=> b!3480660 m!3897579))

(declare-fun m!3897583 () Bool)

(assert (=> b!3480660 m!3897583))

(assert (=> b!3480660 m!3897583))

(declare-fun m!3897585 () Bool)

(assert (=> b!3480660 m!3897585))

(assert (=> b!3480660 m!3896965))

(declare-fun m!3897587 () Bool)

(assert (=> b!3480660 m!3897587))

(assert (=> b!3480660 m!3897571))

(assert (=> b!3479962 d!1005284))

(declare-fun d!1005286 () Bool)

(declare-fun lt!1185389 () Bool)

(declare-fun e!2156096 () Bool)

(assert (=> d!1005286 (= lt!1185389 e!2156096)))

(declare-fun res!1404704 () Bool)

(assert (=> d!1005286 (=> (not res!1404704) (not e!2156096))))

(assert (=> d!1005286 (= res!1404704 (= (list!13591 (_1!21646 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 separatorToken!241))))) (list!13591 (singletonSeq!2554 separatorToken!241))))))

(declare-fun e!2156097 () Bool)

(assert (=> d!1005286 (= lt!1185389 e!2156097)))

(declare-fun res!1404703 () Bool)

(assert (=> d!1005286 (=> (not res!1404703) (not e!2156097))))

(declare-fun lt!1185388 () tuple2!37024)

(assert (=> d!1005286 (= res!1404703 (= (size!28296 (_1!21646 lt!1185388)) 1))))

(assert (=> d!1005286 (= lt!1185388 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 separatorToken!241))))))

(assert (=> d!1005286 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005286 (= (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 separatorToken!241) lt!1185389)))

(declare-fun b!3480661 () Bool)

(declare-fun res!1404705 () Bool)

(assert (=> b!3480661 (=> (not res!1404705) (not e!2156097))))

(assert (=> b!3480661 (= res!1404705 (= (apply!8820 (_1!21646 lt!1185388) 0) separatorToken!241))))

(declare-fun b!3480662 () Bool)

(assert (=> b!3480662 (= e!2156097 (isEmpty!21655 (_2!21646 lt!1185388)))))

(declare-fun b!3480663 () Bool)

(assert (=> b!3480663 (= e!2156096 (isEmpty!21655 (_2!21646 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 separatorToken!241))))))))

(assert (= (and d!1005286 res!1404703) b!3480661))

(assert (= (and b!3480661 res!1404705) b!3480662))

(assert (= (and d!1005286 res!1404704) b!3480663))

(assert (=> d!1005286 m!3896489))

(declare-fun m!3897589 () Bool)

(assert (=> d!1005286 m!3897589))

(declare-fun m!3897591 () Bool)

(assert (=> d!1005286 m!3897591))

(assert (=> d!1005286 m!3896365))

(declare-fun m!3897593 () Bool)

(assert (=> d!1005286 m!3897593))

(assert (=> d!1005286 m!3896489))

(declare-fun m!3897595 () Bool)

(assert (=> d!1005286 m!3897595))

(assert (=> d!1005286 m!3897595))

(declare-fun m!3897597 () Bool)

(assert (=> d!1005286 m!3897597))

(assert (=> d!1005286 m!3896489))

(declare-fun m!3897599 () Bool)

(assert (=> b!3480661 m!3897599))

(declare-fun m!3897601 () Bool)

(assert (=> b!3480662 m!3897601))

(assert (=> b!3480663 m!3896489))

(assert (=> b!3480663 m!3896489))

(assert (=> b!3480663 m!3897595))

(assert (=> b!3480663 m!3897595))

(assert (=> b!3480663 m!3897597))

(declare-fun m!3897603 () Bool)

(assert (=> b!3480663 m!3897603))

(assert (=> b!3479959 d!1005286))

(declare-fun lt!1185390 () List!37379)

(declare-fun b!3480667 () Bool)

(declare-fun e!2156098 () Bool)

(assert (=> b!3480667 (= e!2156098 (or (not (= lt!1185081 Nil!37255)) (= lt!1185390 lt!1185061)))))

(declare-fun b!3480666 () Bool)

(declare-fun res!1404706 () Bool)

(assert (=> b!3480666 (=> (not res!1404706) (not e!2156098))))

(assert (=> b!3480666 (= res!1404706 (= (size!28297 lt!1185390) (+ (size!28297 lt!1185061) (size!28297 lt!1185081))))))

(declare-fun d!1005288 () Bool)

(assert (=> d!1005288 e!2156098))

(declare-fun res!1404707 () Bool)

(assert (=> d!1005288 (=> (not res!1404707) (not e!2156098))))

(assert (=> d!1005288 (= res!1404707 (= (content!5219 lt!1185390) ((_ map or) (content!5219 lt!1185061) (content!5219 lt!1185081))))))

(declare-fun e!2156099 () List!37379)

(assert (=> d!1005288 (= lt!1185390 e!2156099)))

(declare-fun c!596868 () Bool)

(assert (=> d!1005288 (= c!596868 ((_ is Nil!37255) lt!1185061))))

(assert (=> d!1005288 (= (++!9203 lt!1185061 lt!1185081) lt!1185390)))

(declare-fun b!3480664 () Bool)

(assert (=> b!3480664 (= e!2156099 lt!1185081)))

(declare-fun b!3480665 () Bool)

(assert (=> b!3480665 (= e!2156099 (Cons!37255 (h!42675 lt!1185061) (++!9203 (t!275436 lt!1185061) lt!1185081)))))

(assert (= (and d!1005288 c!596868) b!3480664))

(assert (= (and d!1005288 (not c!596868)) b!3480665))

(assert (= (and d!1005288 res!1404707) b!3480666))

(assert (= (and b!3480666 res!1404706) b!3480667))

(declare-fun m!3897605 () Bool)

(assert (=> b!3480666 m!3897605))

(assert (=> b!3480666 m!3896483))

(declare-fun m!3897607 () Bool)

(assert (=> b!3480666 m!3897607))

(declare-fun m!3897609 () Bool)

(assert (=> d!1005288 m!3897609))

(assert (=> d!1005288 m!3896619))

(declare-fun m!3897611 () Bool)

(assert (=> d!1005288 m!3897611))

(declare-fun m!3897613 () Bool)

(assert (=> b!3480665 m!3897613))

(assert (=> b!3479960 d!1005288))

(declare-fun d!1005290 () Bool)

(assert (=> d!1005290 (= (++!9203 (++!9203 lt!1185061 lt!1185051) lt!1185071) (++!9203 lt!1185061 (++!9203 lt!1185051 lt!1185071)))))

(declare-fun lt!1185393 () Unit!52688)

(declare-fun choose!20175 (List!37379 List!37379 List!37379) Unit!52688)

(assert (=> d!1005290 (= lt!1185393 (choose!20175 lt!1185061 lt!1185051 lt!1185071))))

(assert (=> d!1005290 (= (lemmaConcatAssociativity!1982 lt!1185061 lt!1185051 lt!1185071) lt!1185393)))

(declare-fun bs!561925 () Bool)

(assert (= bs!561925 d!1005290))

(assert (=> bs!561925 m!3896399))

(declare-fun m!3897615 () Bool)

(assert (=> bs!561925 m!3897615))

(declare-fun m!3897617 () Bool)

(assert (=> bs!561925 m!3897617))

(assert (=> bs!561925 m!3896437))

(assert (=> bs!561925 m!3896439))

(assert (=> bs!561925 m!3896437))

(assert (=> bs!561925 m!3896399))

(assert (=> b!3479960 d!1005290))

(declare-fun d!1005292 () Bool)

(declare-fun c!596870 () Bool)

(assert (=> d!1005292 (= c!596870 ((_ is IntegerValue!17064) (value!176013 separatorToken!241)))))

(declare-fun e!2156101 () Bool)

(assert (=> d!1005292 (= (inv!21 (value!176013 separatorToken!241)) e!2156101)))

(declare-fun b!3480668 () Bool)

(declare-fun res!1404708 () Bool)

(declare-fun e!2156102 () Bool)

(assert (=> b!3480668 (=> res!1404708 e!2156102)))

(assert (=> b!3480668 (= res!1404708 (not ((_ is IntegerValue!17066) (value!176013 separatorToken!241))))))

(declare-fun e!2156100 () Bool)

(assert (=> b!3480668 (= e!2156100 e!2156102)))

(declare-fun b!3480669 () Bool)

(assert (=> b!3480669 (= e!2156101 (inv!16 (value!176013 separatorToken!241)))))

(declare-fun b!3480670 () Bool)

(assert (=> b!3480670 (= e!2156101 e!2156100)))

(declare-fun c!596869 () Bool)

(assert (=> b!3480670 (= c!596869 ((_ is IntegerValue!17065) (value!176013 separatorToken!241)))))

(declare-fun b!3480671 () Bool)

(assert (=> b!3480671 (= e!2156100 (inv!17 (value!176013 separatorToken!241)))))

(declare-fun b!3480672 () Bool)

(assert (=> b!3480672 (= e!2156102 (inv!15 (value!176013 separatorToken!241)))))

(assert (= (and d!1005292 c!596870) b!3480669))

(assert (= (and d!1005292 (not c!596870)) b!3480670))

(assert (= (and b!3480670 c!596869) b!3480671))

(assert (= (and b!3480670 (not c!596869)) b!3480668))

(assert (= (and b!3480668 (not res!1404708)) b!3480672))

(declare-fun m!3897619 () Bool)

(assert (=> b!3480669 m!3897619))

(declare-fun m!3897621 () Bool)

(assert (=> b!3480671 m!3897621))

(declare-fun m!3897623 () Bool)

(assert (=> b!3480672 m!3897623))

(assert (=> b!3479956 d!1005292))

(declare-fun d!1005294 () Bool)

(declare-fun lt!1185394 () Bool)

(assert (=> d!1005294 (= lt!1185394 (isEmpty!21657 (list!13587 (_2!21646 lt!1185066))))))

(assert (=> d!1005294 (= lt!1185394 (isEmpty!21658 (c!596727 (_2!21646 lt!1185066))))))

(assert (=> d!1005294 (= (isEmpty!21655 (_2!21646 lt!1185066)) lt!1185394)))

(declare-fun bs!561926 () Bool)

(assert (= bs!561926 d!1005294))

(declare-fun m!3897625 () Bool)

(assert (=> bs!561926 m!3897625))

(assert (=> bs!561926 m!3897625))

(declare-fun m!3897627 () Bool)

(assert (=> bs!561926 m!3897627))

(declare-fun m!3897629 () Bool)

(assert (=> bs!561926 m!3897629))

(assert (=> b!3479977 d!1005294))

(declare-fun d!1005296 () Bool)

(declare-fun c!596873 () Bool)

(assert (=> d!1005296 (= c!596873 ((_ is Cons!37257) tokens!494))))

(declare-fun e!2156105 () List!37379)

(assert (=> d!1005296 (= (printWithSeparatorTokenList!334 thiss!18206 tokens!494 separatorToken!241) e!2156105)))

(declare-fun b!3480677 () Bool)

(assert (=> b!3480677 (= e!2156105 (++!9203 (++!9203 (list!13587 (charsOf!3472 (h!42677 tokens!494))) (list!13587 (charsOf!3472 separatorToken!241))) (printWithSeparatorTokenList!334 thiss!18206 (t!275438 tokens!494) separatorToken!241)))))

(declare-fun b!3480678 () Bool)

(assert (=> b!3480678 (= e!2156105 Nil!37255)))

(assert (= (and d!1005296 c!596873) b!3480677))

(assert (= (and d!1005296 (not c!596873)) b!3480678))

(assert (=> b!3480677 m!3896397))

(assert (=> b!3480677 m!3896413))

(assert (=> b!3480677 m!3896387))

(assert (=> b!3480677 m!3896413))

(declare-fun m!3897631 () Bool)

(assert (=> b!3480677 m!3897631))

(assert (=> b!3480677 m!3896403))

(assert (=> b!3480677 m!3896385))

(assert (=> b!3480677 m!3896387))

(assert (=> b!3480677 m!3896385))

(assert (=> b!3480677 m!3896397))

(assert (=> b!3480677 m!3897631))

(assert (=> b!3480677 m!3896403))

(declare-fun m!3897633 () Bool)

(assert (=> b!3480677 m!3897633))

(assert (=> b!3479979 d!1005296))

(declare-fun lt!1185395 () List!37379)

(declare-fun b!3480682 () Bool)

(declare-fun e!2156106 () Bool)

(assert (=> b!3480682 (= e!2156106 (or (not (= lt!1185071 Nil!37255)) (= lt!1185395 lt!1185051)))))

(declare-fun b!3480681 () Bool)

(declare-fun res!1404709 () Bool)

(assert (=> b!3480681 (=> (not res!1404709) (not e!2156106))))

(assert (=> b!3480681 (= res!1404709 (= (size!28297 lt!1185395) (+ (size!28297 lt!1185051) (size!28297 lt!1185071))))))

(declare-fun d!1005298 () Bool)

(assert (=> d!1005298 e!2156106))

(declare-fun res!1404710 () Bool)

(assert (=> d!1005298 (=> (not res!1404710) (not e!2156106))))

(assert (=> d!1005298 (= res!1404710 (= (content!5219 lt!1185395) ((_ map or) (content!5219 lt!1185051) (content!5219 lt!1185071))))))

(declare-fun e!2156107 () List!37379)

(assert (=> d!1005298 (= lt!1185395 e!2156107)))

(declare-fun c!596874 () Bool)

(assert (=> d!1005298 (= c!596874 ((_ is Nil!37255) lt!1185051))))

(assert (=> d!1005298 (= (++!9203 lt!1185051 lt!1185071) lt!1185395)))

(declare-fun b!3480679 () Bool)

(assert (=> b!3480679 (= e!2156107 lt!1185071)))

(declare-fun b!3480680 () Bool)

(assert (=> b!3480680 (= e!2156107 (Cons!37255 (h!42675 lt!1185051) (++!9203 (t!275436 lt!1185051) lt!1185071)))))

(assert (= (and d!1005298 c!596874) b!3480679))

(assert (= (and d!1005298 (not c!596874)) b!3480680))

(assert (= (and d!1005298 res!1404710) b!3480681))

(assert (= (and b!3480681 res!1404709) b!3480682))

(declare-fun m!3897635 () Bool)

(assert (=> b!3480681 m!3897635))

(assert (=> b!3480681 m!3896615))

(assert (=> b!3480681 m!3896603))

(declare-fun m!3897637 () Bool)

(assert (=> d!1005298 m!3897637))

(assert (=> d!1005298 m!3896621))

(assert (=> d!1005298 m!3896609))

(declare-fun m!3897639 () Bool)

(assert (=> b!3480680 m!3897639))

(assert (=> b!3479979 d!1005298))

(declare-fun b!3480686 () Bool)

(declare-fun e!2156108 () Bool)

(declare-fun lt!1185396 () List!37379)

(assert (=> b!3480686 (= e!2156108 (or (not (= lt!1185051 Nil!37255)) (= lt!1185396 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))))))))

(declare-fun b!3480685 () Bool)

(declare-fun res!1404711 () Bool)

(assert (=> b!3480685 (=> (not res!1404711) (not e!2156108))))

(assert (=> b!3480685 (= res!1404711 (= (size!28297 lt!1185396) (+ (size!28297 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494))))) (size!28297 lt!1185051))))))

(declare-fun d!1005300 () Bool)

(assert (=> d!1005300 e!2156108))

(declare-fun res!1404712 () Bool)

(assert (=> d!1005300 (=> (not res!1404712) (not e!2156108))))

(assert (=> d!1005300 (= res!1404712 (= (content!5219 lt!1185396) ((_ map or) (content!5219 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494))))) (content!5219 lt!1185051))))))

(declare-fun e!2156109 () List!37379)

(assert (=> d!1005300 (= lt!1185396 e!2156109)))

(declare-fun c!596875 () Bool)

(assert (=> d!1005300 (= c!596875 ((_ is Nil!37255) (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494))))))))

(assert (=> d!1005300 (= (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051) lt!1185396)))

(declare-fun b!3480683 () Bool)

(assert (=> b!3480683 (= e!2156109 lt!1185051)))

(declare-fun b!3480684 () Bool)

(assert (=> b!3480684 (= e!2156109 (Cons!37255 (h!42675 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494))))) (++!9203 (t!275436 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494))))) lt!1185051)))))

(assert (= (and d!1005300 c!596875) b!3480683))

(assert (= (and d!1005300 (not c!596875)) b!3480684))

(assert (= (and d!1005300 res!1404712) b!3480685))

(assert (= (and b!3480685 res!1404711) b!3480686))

(declare-fun m!3897641 () Bool)

(assert (=> b!3480685 m!3897641))

(assert (=> b!3480685 m!3896405))

(declare-fun m!3897643 () Bool)

(assert (=> b!3480685 m!3897643))

(assert (=> b!3480685 m!3896615))

(declare-fun m!3897645 () Bool)

(assert (=> d!1005300 m!3897645))

(assert (=> d!1005300 m!3896405))

(declare-fun m!3897647 () Bool)

(assert (=> d!1005300 m!3897647))

(assert (=> d!1005300 m!3896621))

(declare-fun m!3897649 () Bool)

(assert (=> b!3480684 m!3897649))

(assert (=> b!3479979 d!1005300))

(declare-fun d!1005302 () Bool)

(declare-fun lt!1185397 () BalanceConc!22196)

(assert (=> d!1005302 (= (list!13587 lt!1185397) (originalCharacters!6172 separatorToken!241))))

(assert (=> d!1005302 (= lt!1185397 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (value!176013 separatorToken!241)))))

(assert (=> d!1005302 (= (charsOf!3472 separatorToken!241) lt!1185397)))

(declare-fun b_lambda!100673 () Bool)

(assert (=> (not b_lambda!100673) (not d!1005302)))

(declare-fun t!275491 () Bool)

(declare-fun tb!190827 () Bool)

(assert (=> (and b!3479954 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241)))) t!275491) tb!190827))

(declare-fun b!3480687 () Bool)

(declare-fun e!2156110 () Bool)

(declare-fun tp!1081169 () Bool)

(assert (=> b!3480687 (= e!2156110 (and (inv!50451 (c!596727 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (value!176013 separatorToken!241)))) tp!1081169))))

(declare-fun result!234976 () Bool)

(assert (=> tb!190827 (= result!234976 (and (inv!50452 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (value!176013 separatorToken!241))) e!2156110))))

(assert (= tb!190827 b!3480687))

(declare-fun m!3897651 () Bool)

(assert (=> b!3480687 m!3897651))

(declare-fun m!3897653 () Bool)

(assert (=> tb!190827 m!3897653))

(assert (=> d!1005302 t!275491))

(declare-fun b_and!245597 () Bool)

(assert (= b_and!245555 (and (=> t!275491 result!234976) b_and!245597)))

(declare-fun t!275493 () Bool)

(declare-fun tb!190829 () Bool)

(assert (=> (and b!3479955 (= (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241)))) t!275493) tb!190829))

(declare-fun result!234978 () Bool)

(assert (= result!234978 result!234976))

(assert (=> d!1005302 t!275493))

(declare-fun b_and!245599 () Bool)

(assert (= b_and!245557 (and (=> t!275493 result!234978) b_and!245599)))

(declare-fun tb!190831 () Bool)

(declare-fun t!275495 () Bool)

(assert (=> (and b!3479941 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241)))) t!275495) tb!190831))

(declare-fun result!234980 () Bool)

(assert (= result!234980 result!234976))

(assert (=> d!1005302 t!275495))

(declare-fun b_and!245601 () Bool)

(assert (= b_and!245559 (and (=> t!275495 result!234980) b_and!245601)))

(declare-fun m!3897655 () Bool)

(assert (=> d!1005302 m!3897655))

(declare-fun m!3897657 () Bool)

(assert (=> d!1005302 m!3897657))

(assert (=> b!3479979 d!1005302))

(declare-fun d!1005304 () Bool)

(assert (=> d!1005304 (= (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) (list!13590 (c!596727 (charsOf!3472 (h!42677 (t!275438 tokens!494))))))))

(declare-fun bs!561927 () Bool)

(assert (= bs!561927 d!1005304))

(declare-fun m!3897659 () Bool)

(assert (=> bs!561927 m!3897659))

(assert (=> b!3479979 d!1005304))

(declare-fun d!1005306 () Bool)

(declare-fun c!596876 () Bool)

(assert (=> d!1005306 (= c!596876 ((_ is Cons!37257) (t!275438 (t!275438 tokens!494))))))

(declare-fun e!2156111 () List!37379)

(assert (=> d!1005306 (= (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241) e!2156111)))

(declare-fun b!3480688 () Bool)

(assert (=> b!3480688 (= e!2156111 (++!9203 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 (t!275438 tokens!494))))) (list!13587 (charsOf!3472 separatorToken!241))) (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 (t!275438 tokens!494))) separatorToken!241)))))

(declare-fun b!3480689 () Bool)

(assert (=> b!3480689 (= e!2156111 Nil!37255)))

(assert (= (and d!1005306 c!596876) b!3480688))

(assert (= (and d!1005306 (not c!596876)) b!3480689))

(assert (=> b!3480688 m!3896397))

(assert (=> b!3480688 m!3896413))

(declare-fun m!3897661 () Bool)

(assert (=> b!3480688 m!3897661))

(assert (=> b!3480688 m!3896413))

(declare-fun m!3897663 () Bool)

(assert (=> b!3480688 m!3897663))

(declare-fun m!3897665 () Bool)

(assert (=> b!3480688 m!3897665))

(declare-fun m!3897667 () Bool)

(assert (=> b!3480688 m!3897667))

(assert (=> b!3480688 m!3897661))

(assert (=> b!3480688 m!3897667))

(assert (=> b!3480688 m!3896397))

(assert (=> b!3480688 m!3897663))

(assert (=> b!3480688 m!3897665))

(declare-fun m!3897669 () Bool)

(assert (=> b!3480688 m!3897669))

(assert (=> b!3479979 d!1005306))

(declare-fun d!1005308 () Bool)

(declare-fun c!596877 () Bool)

(assert (=> d!1005308 (= c!596877 ((_ is Cons!37257) (t!275438 tokens!494)))))

(declare-fun e!2156112 () List!37379)

(assert (=> d!1005308 (= (printWithSeparatorTokenList!334 thiss!18206 (t!275438 tokens!494) separatorToken!241) e!2156112)))

(declare-fun b!3480690 () Bool)

(assert (=> b!3480690 (= e!2156112 (++!9203 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) (list!13587 (charsOf!3472 separatorToken!241))) (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241)))))

(declare-fun b!3480691 () Bool)

(assert (=> b!3480691 (= e!2156112 Nil!37255)))

(assert (= (and d!1005308 c!596877) b!3480690))

(assert (= (and d!1005308 (not c!596877)) b!3480691))

(assert (=> b!3480690 m!3896397))

(assert (=> b!3480690 m!3896413))

(assert (=> b!3480690 m!3896405))

(assert (=> b!3480690 m!3896413))

(declare-fun m!3897671 () Bool)

(assert (=> b!3480690 m!3897671))

(assert (=> b!3480690 m!3896409))

(assert (=> b!3480690 m!3896395))

(assert (=> b!3480690 m!3896405))

(assert (=> b!3480690 m!3896395))

(assert (=> b!3480690 m!3896397))

(assert (=> b!3480690 m!3897671))

(assert (=> b!3480690 m!3896409))

(declare-fun m!3897673 () Bool)

(assert (=> b!3480690 m!3897673))

(assert (=> b!3479979 d!1005308))

(declare-fun e!2156113 () Bool)

(declare-fun lt!1185398 () List!37379)

(declare-fun b!3480695 () Bool)

(assert (=> b!3480695 (= e!2156113 (or (not (= (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241) Nil!37255)) (= lt!1185398 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051))))))

(declare-fun b!3480694 () Bool)

(declare-fun res!1404713 () Bool)

(assert (=> b!3480694 (=> (not res!1404713) (not e!2156113))))

(assert (=> b!3480694 (= res!1404713 (= (size!28297 lt!1185398) (+ (size!28297 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051)) (size!28297 (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241)))))))

(declare-fun d!1005310 () Bool)

(assert (=> d!1005310 e!2156113))

(declare-fun res!1404714 () Bool)

(assert (=> d!1005310 (=> (not res!1404714) (not e!2156113))))

(assert (=> d!1005310 (= res!1404714 (= (content!5219 lt!1185398) ((_ map or) (content!5219 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051)) (content!5219 (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241)))))))

(declare-fun e!2156114 () List!37379)

(assert (=> d!1005310 (= lt!1185398 e!2156114)))

(declare-fun c!596878 () Bool)

(assert (=> d!1005310 (= c!596878 ((_ is Nil!37255) (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051)))))

(assert (=> d!1005310 (= (++!9203 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051) (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241)) lt!1185398)))

(declare-fun b!3480692 () Bool)

(assert (=> b!3480692 (= e!2156114 (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241))))

(declare-fun b!3480693 () Bool)

(assert (=> b!3480693 (= e!2156114 (Cons!37255 (h!42675 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051)) (++!9203 (t!275436 (++!9203 (list!13587 (charsOf!3472 (h!42677 (t!275438 tokens!494)))) lt!1185051)) (printWithSeparatorTokenList!334 thiss!18206 (t!275438 (t!275438 tokens!494)) separatorToken!241))))))

(assert (= (and d!1005310 c!596878) b!3480692))

(assert (= (and d!1005310 (not c!596878)) b!3480693))

(assert (= (and d!1005310 res!1404714) b!3480694))

(assert (= (and b!3480694 res!1404713) b!3480695))

(declare-fun m!3897675 () Bool)

(assert (=> b!3480694 m!3897675))

(assert (=> b!3480694 m!3896407))

(declare-fun m!3897677 () Bool)

(assert (=> b!3480694 m!3897677))

(assert (=> b!3480694 m!3896409))

(declare-fun m!3897679 () Bool)

(assert (=> b!3480694 m!3897679))

(declare-fun m!3897681 () Bool)

(assert (=> d!1005310 m!3897681))

(assert (=> d!1005310 m!3896407))

(declare-fun m!3897683 () Bool)

(assert (=> d!1005310 m!3897683))

(assert (=> d!1005310 m!3896409))

(declare-fun m!3897685 () Bool)

(assert (=> d!1005310 m!3897685))

(assert (=> b!3480693 m!3896409))

(declare-fun m!3897687 () Bool)

(assert (=> b!3480693 m!3897687))

(assert (=> b!3479979 d!1005310))

(declare-fun d!1005312 () Bool)

(assert (=> d!1005312 (= (list!13587 (charsOf!3472 separatorToken!241)) (list!13590 (c!596727 (charsOf!3472 separatorToken!241))))))

(declare-fun bs!561928 () Bool)

(assert (= bs!561928 d!1005312))

(declare-fun m!3897689 () Bool)

(assert (=> bs!561928 m!3897689))

(assert (=> b!3479979 d!1005312))

(declare-fun d!1005314 () Bool)

(declare-fun lt!1185399 () BalanceConc!22196)

(assert (=> d!1005314 (= (list!13587 lt!1185399) (originalCharacters!6172 (h!42677 (t!275438 tokens!494))))))

(assert (=> d!1005314 (= lt!1185399 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (value!176013 (h!42677 (t!275438 tokens!494)))))))

(assert (=> d!1005314 (= (charsOf!3472 (h!42677 (t!275438 tokens!494))) lt!1185399)))

(declare-fun b_lambda!100675 () Bool)

(assert (=> (not b_lambda!100675) (not d!1005314)))

(declare-fun t!275497 () Bool)

(declare-fun tb!190833 () Bool)

(assert (=> (and b!3479954 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494)))))) t!275497) tb!190833))

(declare-fun b!3480696 () Bool)

(declare-fun e!2156115 () Bool)

(declare-fun tp!1081170 () Bool)

(assert (=> b!3480696 (= e!2156115 (and (inv!50451 (c!596727 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (value!176013 (h!42677 (t!275438 tokens!494)))))) tp!1081170))))

(declare-fun result!234982 () Bool)

(assert (=> tb!190833 (= result!234982 (and (inv!50452 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (value!176013 (h!42677 (t!275438 tokens!494))))) e!2156115))))

(assert (= tb!190833 b!3480696))

(declare-fun m!3897691 () Bool)

(assert (=> b!3480696 m!3897691))

(declare-fun m!3897693 () Bool)

(assert (=> tb!190833 m!3897693))

(assert (=> d!1005314 t!275497))

(declare-fun b_and!245603 () Bool)

(assert (= b_and!245597 (and (=> t!275497 result!234982) b_and!245603)))

(declare-fun t!275499 () Bool)

(declare-fun tb!190835 () Bool)

(assert (=> (and b!3479955 (= (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494)))))) t!275499) tb!190835))

(declare-fun result!234984 () Bool)

(assert (= result!234984 result!234982))

(assert (=> d!1005314 t!275499))

(declare-fun b_and!245605 () Bool)

(assert (= b_and!245599 (and (=> t!275499 result!234984) b_and!245605)))

(declare-fun t!275501 () Bool)

(declare-fun tb!190837 () Bool)

(assert (=> (and b!3479941 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494)))))) t!275501) tb!190837))

(declare-fun result!234986 () Bool)

(assert (= result!234986 result!234982))

(assert (=> d!1005314 t!275501))

(declare-fun b_and!245607 () Bool)

(assert (= b_and!245601 (and (=> t!275501 result!234986) b_and!245607)))

(declare-fun m!3897695 () Bool)

(assert (=> d!1005314 m!3897695))

(declare-fun m!3897697 () Bool)

(assert (=> d!1005314 m!3897697))

(assert (=> b!3479979 d!1005314))

(declare-fun d!1005316 () Bool)

(declare-fun res!1404715 () Bool)

(declare-fun e!2156116 () Bool)

(assert (=> d!1005316 (=> (not res!1404715) (not e!2156116))))

(assert (=> d!1005316 (= res!1404715 (not (isEmpty!21657 (originalCharacters!6172 separatorToken!241))))))

(assert (=> d!1005316 (= (inv!50448 separatorToken!241) e!2156116)))

(declare-fun b!3480697 () Bool)

(declare-fun res!1404716 () Bool)

(assert (=> b!3480697 (=> (not res!1404716) (not e!2156116))))

(assert (=> b!3480697 (= res!1404716 (= (originalCharacters!6172 separatorToken!241) (list!13587 (dynLambda!15773 (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (value!176013 separatorToken!241)))))))

(declare-fun b!3480698 () Bool)

(assert (=> b!3480698 (= e!2156116 (= (size!28295 separatorToken!241) (size!28297 (originalCharacters!6172 separatorToken!241))))))

(assert (= (and d!1005316 res!1404715) b!3480697))

(assert (= (and b!3480697 res!1404716) b!3480698))

(declare-fun b_lambda!100677 () Bool)

(assert (=> (not b_lambda!100677) (not b!3480697)))

(assert (=> b!3480697 t!275491))

(declare-fun b_and!245609 () Bool)

(assert (= b_and!245603 (and (=> t!275491 result!234976) b_and!245609)))

(assert (=> b!3480697 t!275493))

(declare-fun b_and!245611 () Bool)

(assert (= b_and!245605 (and (=> t!275493 result!234978) b_and!245611)))

(assert (=> b!3480697 t!275495))

(declare-fun b_and!245613 () Bool)

(assert (= b_and!245607 (and (=> t!275495 result!234980) b_and!245613)))

(declare-fun m!3897699 () Bool)

(assert (=> d!1005316 m!3897699))

(assert (=> b!3480697 m!3897657))

(assert (=> b!3480697 m!3897657))

(declare-fun m!3897701 () Bool)

(assert (=> b!3480697 m!3897701))

(declare-fun m!3897703 () Bool)

(assert (=> b!3480698 m!3897703))

(assert (=> start!323910 d!1005316))

(declare-fun d!1005318 () Bool)

(declare-fun lt!1185400 () Token!10282)

(assert (=> d!1005318 (= lt!1185400 (apply!8824 (list!13591 (_1!21646 lt!1185056)) 0))))

(assert (=> d!1005318 (= lt!1185400 (apply!8825 (c!596728 (_1!21646 lt!1185056)) 0))))

(declare-fun e!2156117 () Bool)

(assert (=> d!1005318 e!2156117))

(declare-fun res!1404717 () Bool)

(assert (=> d!1005318 (=> (not res!1404717) (not e!2156117))))

(assert (=> d!1005318 (= res!1404717 (<= 0 0))))

(assert (=> d!1005318 (= (apply!8820 (_1!21646 lt!1185056) 0) lt!1185400)))

(declare-fun b!3480699 () Bool)

(assert (=> b!3480699 (= e!2156117 (< 0 (size!28296 (_1!21646 lt!1185056))))))

(assert (= (and d!1005318 res!1404717) b!3480699))

(assert (=> d!1005318 m!3897329))

(assert (=> d!1005318 m!3897329))

(declare-fun m!3897705 () Bool)

(assert (=> d!1005318 m!3897705))

(declare-fun m!3897707 () Bool)

(assert (=> d!1005318 m!3897707))

(assert (=> b!3480699 m!3896455))

(assert (=> b!3479978 d!1005318))

(declare-fun d!1005320 () Bool)

(assert (=> d!1005320 (dynLambda!15774 lambda!122214 (h!42677 (t!275438 tokens!494)))))

(declare-fun lt!1185401 () Unit!52688)

(assert (=> d!1005320 (= lt!1185401 (choose!20169 tokens!494 lambda!122214 (h!42677 (t!275438 tokens!494))))))

(declare-fun e!2156118 () Bool)

(assert (=> d!1005320 e!2156118))

(declare-fun res!1404718 () Bool)

(assert (=> d!1005320 (=> (not res!1404718) (not e!2156118))))

(assert (=> d!1005320 (= res!1404718 (forall!7967 tokens!494 lambda!122214))))

(assert (=> d!1005320 (= (forallContained!1405 tokens!494 lambda!122214 (h!42677 (t!275438 tokens!494))) lt!1185401)))

(declare-fun b!3480700 () Bool)

(assert (=> b!3480700 (= e!2156118 (contains!6945 tokens!494 (h!42677 (t!275438 tokens!494))))))

(assert (= (and d!1005320 res!1404718) b!3480700))

(declare-fun b_lambda!100679 () Bool)

(assert (=> (not b_lambda!100679) (not d!1005320)))

(declare-fun m!3897709 () Bool)

(assert (=> d!1005320 m!3897709))

(declare-fun m!3897711 () Bool)

(assert (=> d!1005320 m!3897711))

(assert (=> d!1005320 m!3896447))

(assert (=> b!3480700 m!3896477))

(assert (=> b!3479957 d!1005320))

(declare-fun d!1005322 () Bool)

(assert (=> d!1005322 (dynLambda!15774 lambda!122214 (h!42677 tokens!494))))

(declare-fun lt!1185404 () Unit!52688)

(assert (=> d!1005322 (= lt!1185404 (choose!20169 tokens!494 lambda!122214 (h!42677 tokens!494)))))

(declare-fun e!2156119 () Bool)

(assert (=> d!1005322 e!2156119))

(declare-fun res!1404719 () Bool)

(assert (=> d!1005322 (=> (not res!1404719) (not e!2156119))))

(assert (=> d!1005322 (= res!1404719 (forall!7967 tokens!494 lambda!122214))))

(assert (=> d!1005322 (= (forallContained!1405 tokens!494 lambda!122214 (h!42677 tokens!494)) lt!1185404)))

(declare-fun b!3480701 () Bool)

(assert (=> b!3480701 (= e!2156119 (contains!6945 tokens!494 (h!42677 tokens!494)))))

(assert (= (and d!1005322 res!1404719) b!3480701))

(declare-fun b_lambda!100681 () Bool)

(assert (=> (not b_lambda!100681) (not d!1005322)))

(assert (=> d!1005322 m!3896589))

(declare-fun m!3897713 () Bool)

(assert (=> d!1005322 m!3897713))

(assert (=> d!1005322 m!3896447))

(declare-fun m!3897715 () Bool)

(assert (=> b!3480701 m!3897715))

(assert (=> b!3479957 d!1005322))

(declare-fun d!1005324 () Bool)

(declare-fun lt!1185406 () Bool)

(declare-fun e!2156120 () Bool)

(assert (=> d!1005324 (= lt!1185406 e!2156120)))

(declare-fun res!1404721 () Bool)

(assert (=> d!1005324 (=> (not res!1404721) (not e!2156120))))

(assert (=> d!1005324 (= res!1404721 (= (list!13591 (_1!21646 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 (h!42677 tokens!494)))))) (list!13591 (singletonSeq!2554 (h!42677 tokens!494)))))))

(declare-fun e!2156121 () Bool)

(assert (=> d!1005324 (= lt!1185406 e!2156121)))

(declare-fun res!1404720 () Bool)

(assert (=> d!1005324 (=> (not res!1404720) (not e!2156121))))

(declare-fun lt!1185405 () tuple2!37024)

(assert (=> d!1005324 (= res!1404720 (= (size!28296 (_1!21646 lt!1185405)) 1))))

(assert (=> d!1005324 (= lt!1185405 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 (h!42677 tokens!494)))))))

(assert (=> d!1005324 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005324 (= (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 tokens!494)) lt!1185406)))

(declare-fun b!3480702 () Bool)

(declare-fun res!1404722 () Bool)

(assert (=> b!3480702 (=> (not res!1404722) (not e!2156121))))

(assert (=> b!3480702 (= res!1404722 (= (apply!8820 (_1!21646 lt!1185405) 0) (h!42677 tokens!494)))))

(declare-fun b!3480703 () Bool)

(assert (=> b!3480703 (= e!2156121 (isEmpty!21655 (_2!21646 lt!1185405)))))

(declare-fun b!3480704 () Bool)

(assert (=> b!3480704 (= e!2156120 (isEmpty!21655 (_2!21646 (lex!2373 thiss!18206 rules!2135 (print!2112 thiss!18206 (singletonSeq!2554 (h!42677 tokens!494)))))))))

(assert (= (and d!1005324 res!1404720) b!3480702))

(assert (= (and b!3480702 res!1404722) b!3480703))

(assert (= (and d!1005324 res!1404721) b!3480704))

(assert (=> d!1005324 m!3896373))

(declare-fun m!3897719 () Bool)

(assert (=> d!1005324 m!3897719))

(declare-fun m!3897721 () Bool)

(assert (=> d!1005324 m!3897721))

(assert (=> d!1005324 m!3896365))

(declare-fun m!3897723 () Bool)

(assert (=> d!1005324 m!3897723))

(assert (=> d!1005324 m!3896373))

(declare-fun m!3897725 () Bool)

(assert (=> d!1005324 m!3897725))

(assert (=> d!1005324 m!3897725))

(declare-fun m!3897727 () Bool)

(assert (=> d!1005324 m!3897727))

(assert (=> d!1005324 m!3896373))

(declare-fun m!3897729 () Bool)

(assert (=> b!3480702 m!3897729))

(declare-fun m!3897731 () Bool)

(assert (=> b!3480703 m!3897731))

(assert (=> b!3480704 m!3896373))

(assert (=> b!3480704 m!3896373))

(assert (=> b!3480704 m!3897725))

(assert (=> b!3480704 m!3897725))

(assert (=> b!3480704 m!3897727))

(declare-fun m!3897733 () Bool)

(assert (=> b!3480704 m!3897733))

(assert (=> b!3479975 d!1005324))

(declare-fun bs!561937 () Bool)

(declare-fun d!1005328 () Bool)

(assert (= bs!561937 (and d!1005328 b!3479971)))

(declare-fun lambda!122231 () Int)

(assert (=> bs!561937 (not (= lambda!122231 lambda!122214))))

(declare-fun bs!561938 () Bool)

(assert (= bs!561938 (and d!1005328 b!3479962)))

(assert (=> bs!561938 (= lambda!122231 lambda!122215)))

(declare-fun bs!561939 () Bool)

(assert (= bs!561939 (and d!1005328 d!1005104)))

(assert (=> bs!561939 (= lambda!122231 lambda!122225)))

(declare-fun b!3480812 () Bool)

(declare-fun e!2156199 () Bool)

(assert (=> b!3480812 (= e!2156199 true)))

(declare-fun b!3480811 () Bool)

(declare-fun e!2156198 () Bool)

(assert (=> b!3480811 (= e!2156198 e!2156199)))

(declare-fun b!3480810 () Bool)

(declare-fun e!2156197 () Bool)

(assert (=> b!3480810 (= e!2156197 e!2156198)))

(assert (=> d!1005328 e!2156197))

(assert (= b!3480811 b!3480812))

(assert (= b!3480810 b!3480811))

(assert (= (and d!1005328 ((_ is Cons!37256) rules!2135)) b!3480810))

(assert (=> b!3480812 (< (dynLambda!15768 order!19933 (toValue!7694 (transformation!5458 (h!42676 rules!2135)))) (dynLambda!15769 order!19935 lambda!122231))))

(assert (=> b!3480812 (< (dynLambda!15770 order!19937 (toChars!7553 (transformation!5458 (h!42676 rules!2135)))) (dynLambda!15769 order!19935 lambda!122231))))

(assert (=> d!1005328 true))

(declare-fun lt!1185425 () Bool)

(assert (=> d!1005328 (= lt!1185425 (forall!7967 tokens!494 lambda!122231))))

(declare-fun e!2156195 () Bool)

(assert (=> d!1005328 (= lt!1185425 e!2156195)))

(declare-fun res!1404751 () Bool)

(assert (=> d!1005328 (=> res!1404751 e!2156195)))

(assert (=> d!1005328 (= res!1404751 (not ((_ is Cons!37257) tokens!494)))))

(assert (=> d!1005328 (not (isEmpty!21653 rules!2135))))

(assert (=> d!1005328 (= (rulesProduceEachTokenIndividuallyList!1869 thiss!18206 rules!2135 tokens!494) lt!1185425)))

(declare-fun b!3480808 () Bool)

(declare-fun e!2156196 () Bool)

(assert (=> b!3480808 (= e!2156195 e!2156196)))

(declare-fun res!1404750 () Bool)

(assert (=> b!3480808 (=> (not res!1404750) (not e!2156196))))

(assert (=> b!3480808 (= res!1404750 (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 tokens!494)))))

(declare-fun b!3480809 () Bool)

(assert (=> b!3480809 (= e!2156196 (rulesProduceEachTokenIndividuallyList!1869 thiss!18206 rules!2135 (t!275438 tokens!494)))))

(assert (= (and d!1005328 (not res!1404751)) b!3480808))

(assert (= (and b!3480808 res!1404750) b!3480809))

(declare-fun m!3897829 () Bool)

(assert (=> d!1005328 m!3897829))

(assert (=> d!1005328 m!3896365))

(assert (=> b!3480808 m!3896383))

(declare-fun m!3897831 () Bool)

(assert (=> b!3480809 m!3897831))

(assert (=> b!3479953 d!1005328))

(declare-fun d!1005360 () Bool)

(assert (=> d!1005360 (= (list!13587 lt!1185070) (list!13590 (c!596727 lt!1185070)))))

(declare-fun bs!561940 () Bool)

(assert (= bs!561940 d!1005360))

(declare-fun m!3897833 () Bool)

(assert (=> bs!561940 m!3897833))

(assert (=> b!3479976 d!1005360))

(declare-fun d!1005362 () Bool)

(declare-fun lt!1185426 () BalanceConc!22196)

(assert (=> d!1005362 (= (list!13587 lt!1185426) (printList!1595 thiss!18206 (list!13591 lt!1185058)))))

(assert (=> d!1005362 (= lt!1185426 (printTailRec!1542 thiss!18206 lt!1185058 0 (BalanceConc!22197 Empty!11291)))))

(assert (=> d!1005362 (= (print!2112 thiss!18206 lt!1185058) lt!1185426)))

(declare-fun bs!561941 () Bool)

(assert (= bs!561941 d!1005362))

(declare-fun m!3897835 () Bool)

(assert (=> bs!561941 m!3897835))

(declare-fun m!3897837 () Bool)

(assert (=> bs!561941 m!3897837))

(assert (=> bs!561941 m!3897837))

(declare-fun m!3897839 () Bool)

(assert (=> bs!561941 m!3897839))

(assert (=> bs!561941 m!3896375))

(assert (=> b!3479976 d!1005362))

(declare-fun d!1005364 () Bool)

(declare-fun lt!1185431 () BalanceConc!22196)

(assert (=> d!1005364 (= (list!13587 lt!1185431) (printListTailRec!702 thiss!18206 (dropList!1219 lt!1185058 0) (list!13587 (BalanceConc!22197 Empty!11291))))))

(declare-fun e!2156201 () BalanceConc!22196)

(assert (=> d!1005364 (= lt!1185431 e!2156201)))

(declare-fun c!596889 () Bool)

(assert (=> d!1005364 (= c!596889 (>= 0 (size!28296 lt!1185058)))))

(declare-fun e!2156200 () Bool)

(assert (=> d!1005364 e!2156200))

(declare-fun res!1404752 () Bool)

(assert (=> d!1005364 (=> (not res!1404752) (not e!2156200))))

(assert (=> d!1005364 (= res!1404752 (>= 0 0))))

(assert (=> d!1005364 (= (printTailRec!1542 thiss!18206 lt!1185058 0 (BalanceConc!22197 Empty!11291)) lt!1185431)))

(declare-fun b!3480813 () Bool)

(assert (=> b!3480813 (= e!2156200 (<= 0 (size!28296 lt!1185058)))))

(declare-fun b!3480814 () Bool)

(assert (=> b!3480814 (= e!2156201 (BalanceConc!22197 Empty!11291))))

(declare-fun b!3480815 () Bool)

(assert (=> b!3480815 (= e!2156201 (printTailRec!1542 thiss!18206 lt!1185058 (+ 0 1) (++!9205 (BalanceConc!22197 Empty!11291) (charsOf!3472 (apply!8820 lt!1185058 0)))))))

(declare-fun lt!1185427 () List!37381)

(assert (=> b!3480815 (= lt!1185427 (list!13591 lt!1185058))))

(declare-fun lt!1185433 () Unit!52688)

(assert (=> b!3480815 (= lt!1185433 (lemmaDropApply!1177 lt!1185427 0))))

(assert (=> b!3480815 (= (head!7353 (drop!2027 lt!1185427 0)) (apply!8824 lt!1185427 0))))

(declare-fun lt!1185432 () Unit!52688)

(assert (=> b!3480815 (= lt!1185432 lt!1185433)))

(declare-fun lt!1185429 () List!37381)

(assert (=> b!3480815 (= lt!1185429 (list!13591 lt!1185058))))

(declare-fun lt!1185430 () Unit!52688)

(assert (=> b!3480815 (= lt!1185430 (lemmaDropTail!1061 lt!1185429 0))))

(assert (=> b!3480815 (= (tail!5461 (drop!2027 lt!1185429 0)) (drop!2027 lt!1185429 (+ 0 1)))))

(declare-fun lt!1185428 () Unit!52688)

(assert (=> b!3480815 (= lt!1185428 lt!1185430)))

(assert (= (and d!1005364 res!1404752) b!3480813))

(assert (= (and d!1005364 c!596889) b!3480814))

(assert (= (and d!1005364 (not c!596889)) b!3480815))

(assert (=> d!1005364 m!3897343))

(declare-fun m!3897841 () Bool)

(assert (=> d!1005364 m!3897841))

(declare-fun m!3897843 () Bool)

(assert (=> d!1005364 m!3897843))

(declare-fun m!3897845 () Bool)

(assert (=> d!1005364 m!3897845))

(assert (=> d!1005364 m!3897343))

(declare-fun m!3897847 () Bool)

(assert (=> d!1005364 m!3897847))

(assert (=> d!1005364 m!3897845))

(assert (=> b!3480813 m!3897843))

(declare-fun m!3897849 () Bool)

(assert (=> b!3480815 m!3897849))

(declare-fun m!3897851 () Bool)

(assert (=> b!3480815 m!3897851))

(declare-fun m!3897853 () Bool)

(assert (=> b!3480815 m!3897853))

(declare-fun m!3897855 () Bool)

(assert (=> b!3480815 m!3897855))

(declare-fun m!3897857 () Bool)

(assert (=> b!3480815 m!3897857))

(declare-fun m!3897859 () Bool)

(assert (=> b!3480815 m!3897859))

(declare-fun m!3897861 () Bool)

(assert (=> b!3480815 m!3897861))

(assert (=> b!3480815 m!3897849))

(declare-fun m!3897863 () Bool)

(assert (=> b!3480815 m!3897863))

(declare-fun m!3897865 () Bool)

(assert (=> b!3480815 m!3897865))

(assert (=> b!3480815 m!3897859))

(assert (=> b!3480815 m!3897863))

(declare-fun m!3897867 () Bool)

(assert (=> b!3480815 m!3897867))

(assert (=> b!3480815 m!3897867))

(declare-fun m!3897869 () Bool)

(assert (=> b!3480815 m!3897869))

(assert (=> b!3480815 m!3897837))

(declare-fun m!3897871 () Bool)

(assert (=> b!3480815 m!3897871))

(assert (=> b!3480815 m!3897855))

(assert (=> b!3479976 d!1005364))

(declare-fun d!1005366 () Bool)

(declare-fun e!2156202 () Bool)

(assert (=> d!1005366 e!2156202))

(declare-fun res!1404753 () Bool)

(assert (=> d!1005366 (=> (not res!1404753) (not e!2156202))))

(declare-fun lt!1185434 () BalanceConc!22198)

(assert (=> d!1005366 (= res!1404753 (= (list!13591 lt!1185434) (Cons!37257 (h!42677 tokens!494) Nil!37257)))))

(assert (=> d!1005366 (= lt!1185434 (singleton!1134 (h!42677 tokens!494)))))

(assert (=> d!1005366 (= (singletonSeq!2554 (h!42677 tokens!494)) lt!1185434)))

(declare-fun b!3480816 () Bool)

(assert (=> b!3480816 (= e!2156202 (isBalanced!3433 (c!596728 lt!1185434)))))

(assert (= (and d!1005366 res!1404753) b!3480816))

(declare-fun m!3897873 () Bool)

(assert (=> d!1005366 m!3897873))

(declare-fun m!3897875 () Bool)

(assert (=> d!1005366 m!3897875))

(declare-fun m!3897877 () Bool)

(assert (=> b!3480816 m!3897877))

(assert (=> b!3479976 d!1005366))

(declare-fun d!1005368 () Bool)

(declare-fun c!596892 () Bool)

(assert (=> d!1005368 (= c!596892 ((_ is Cons!37257) (Cons!37257 (h!42677 tokens!494) Nil!37257)))))

(declare-fun e!2156205 () List!37379)

(assert (=> d!1005368 (= (printList!1595 thiss!18206 (Cons!37257 (h!42677 tokens!494) Nil!37257)) e!2156205)))

(declare-fun b!3480821 () Bool)

(assert (=> b!3480821 (= e!2156205 (++!9203 (list!13587 (charsOf!3472 (h!42677 (Cons!37257 (h!42677 tokens!494) Nil!37257)))) (printList!1595 thiss!18206 (t!275438 (Cons!37257 (h!42677 tokens!494) Nil!37257)))))))

(declare-fun b!3480822 () Bool)

(assert (=> b!3480822 (= e!2156205 Nil!37255)))

(assert (= (and d!1005368 c!596892) b!3480821))

(assert (= (and d!1005368 (not c!596892)) b!3480822))

(declare-fun m!3897879 () Bool)

(assert (=> b!3480821 m!3897879))

(assert (=> b!3480821 m!3897879))

(declare-fun m!3897881 () Bool)

(assert (=> b!3480821 m!3897881))

(declare-fun m!3897883 () Bool)

(assert (=> b!3480821 m!3897883))

(assert (=> b!3480821 m!3897881))

(assert (=> b!3480821 m!3897883))

(declare-fun m!3897885 () Bool)

(assert (=> b!3480821 m!3897885))

(assert (=> b!3479976 d!1005368))

(declare-fun d!1005370 () Bool)

(assert (=> d!1005370 (not (matchR!4801 (regex!5458 (rule!8064 separatorToken!241)) lt!1185051))))

(declare-fun lt!1185437 () Unit!52688)

(declare-fun choose!20178 (Regex!10217 List!37379 C!20620) Unit!52688)

(assert (=> d!1005370 (= lt!1185437 (choose!20178 (regex!5458 (rule!8064 separatorToken!241)) lt!1185051 lt!1185055))))

(assert (=> d!1005370 (validRegex!4657 (regex!5458 (rule!8064 separatorToken!241)))))

(assert (=> d!1005370 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!516 (regex!5458 (rule!8064 separatorToken!241)) lt!1185051 lt!1185055) lt!1185437)))

(declare-fun bs!561942 () Bool)

(assert (= bs!561942 d!1005370))

(assert (=> bs!561942 m!3896393))

(declare-fun m!3897887 () Bool)

(assert (=> bs!561942 m!3897887))

(declare-fun m!3897889 () Bool)

(assert (=> bs!561942 m!3897889))

(assert (=> b!3479972 d!1005370))

(declare-fun b!3480823 () Bool)

(declare-fun e!2156206 () Bool)

(declare-fun e!2156207 () Bool)

(assert (=> b!3480823 (= e!2156206 e!2156207)))

(declare-fun c!596894 () Bool)

(assert (=> b!3480823 (= c!596894 ((_ is EmptyLang!10217) (regex!5458 (rule!8064 separatorToken!241))))))

(declare-fun b!3480824 () Bool)

(declare-fun e!2156210 () Bool)

(declare-fun e!2156212 () Bool)

(assert (=> b!3480824 (= e!2156210 e!2156212)))

(declare-fun res!1404761 () Bool)

(assert (=> b!3480824 (=> res!1404761 e!2156212)))

(declare-fun call!250986 () Bool)

(assert (=> b!3480824 (= res!1404761 call!250986)))

(declare-fun b!3480825 () Bool)

(declare-fun e!2156211 () Bool)

(assert (=> b!3480825 (= e!2156211 (= (head!7351 lt!1185051) (c!596726 (regex!5458 (rule!8064 separatorToken!241)))))))

(declare-fun bm!250981 () Bool)

(assert (=> bm!250981 (= call!250986 (isEmpty!21657 lt!1185051))))

(declare-fun d!1005372 () Bool)

(assert (=> d!1005372 e!2156206))

(declare-fun c!596896 () Bool)

(assert (=> d!1005372 (= c!596896 ((_ is EmptyExpr!10217) (regex!5458 (rule!8064 separatorToken!241))))))

(declare-fun lt!1185438 () Bool)

(declare-fun e!2156209 () Bool)

(assert (=> d!1005372 (= lt!1185438 e!2156209)))

(declare-fun c!596895 () Bool)

(assert (=> d!1005372 (= c!596895 (isEmpty!21657 lt!1185051))))

(assert (=> d!1005372 (validRegex!4657 (regex!5458 (rule!8064 separatorToken!241)))))

(assert (=> d!1005372 (= (matchR!4801 (regex!5458 (rule!8064 separatorToken!241)) lt!1185051) lt!1185438)))

(declare-fun b!3480826 () Bool)

(declare-fun res!1404757 () Bool)

(declare-fun e!2156208 () Bool)

(assert (=> b!3480826 (=> res!1404757 e!2156208)))

(assert (=> b!3480826 (= res!1404757 e!2156211)))

(declare-fun res!1404755 () Bool)

(assert (=> b!3480826 (=> (not res!1404755) (not e!2156211))))

(assert (=> b!3480826 (= res!1404755 lt!1185438)))

(declare-fun b!3480827 () Bool)

(assert (=> b!3480827 (= e!2156206 (= lt!1185438 call!250986))))

(declare-fun b!3480828 () Bool)

(assert (=> b!3480828 (= e!2156209 (matchR!4801 (derivativeStep!3054 (regex!5458 (rule!8064 separatorToken!241)) (head!7351 lt!1185051)) (tail!5458 lt!1185051)))))

(declare-fun b!3480829 () Bool)

(assert (=> b!3480829 (= e!2156209 (nullable!3501 (regex!5458 (rule!8064 separatorToken!241))))))

(declare-fun b!3480830 () Bool)

(declare-fun res!1404758 () Bool)

(assert (=> b!3480830 (=> res!1404758 e!2156208)))

(assert (=> b!3480830 (= res!1404758 (not ((_ is ElementMatch!10217) (regex!5458 (rule!8064 separatorToken!241)))))))

(assert (=> b!3480830 (= e!2156207 e!2156208)))

(declare-fun b!3480831 () Bool)

(declare-fun res!1404759 () Bool)

(assert (=> b!3480831 (=> res!1404759 e!2156212)))

(assert (=> b!3480831 (= res!1404759 (not (isEmpty!21657 (tail!5458 lt!1185051))))))

(declare-fun b!3480832 () Bool)

(assert (=> b!3480832 (= e!2156212 (not (= (head!7351 lt!1185051) (c!596726 (regex!5458 (rule!8064 separatorToken!241))))))))

(declare-fun b!3480833 () Bool)

(assert (=> b!3480833 (= e!2156208 e!2156210)))

(declare-fun res!1404754 () Bool)

(assert (=> b!3480833 (=> (not res!1404754) (not e!2156210))))

(assert (=> b!3480833 (= res!1404754 (not lt!1185438))))

(declare-fun b!3480834 () Bool)

(declare-fun res!1404760 () Bool)

(assert (=> b!3480834 (=> (not res!1404760) (not e!2156211))))

(assert (=> b!3480834 (= res!1404760 (isEmpty!21657 (tail!5458 lt!1185051)))))

(declare-fun b!3480835 () Bool)

(assert (=> b!3480835 (= e!2156207 (not lt!1185438))))

(declare-fun b!3480836 () Bool)

(declare-fun res!1404756 () Bool)

(assert (=> b!3480836 (=> (not res!1404756) (not e!2156211))))

(assert (=> b!3480836 (= res!1404756 (not call!250986))))

(assert (= (and d!1005372 c!596895) b!3480829))

(assert (= (and d!1005372 (not c!596895)) b!3480828))

(assert (= (and d!1005372 c!596896) b!3480827))

(assert (= (and d!1005372 (not c!596896)) b!3480823))

(assert (= (and b!3480823 c!596894) b!3480835))

(assert (= (and b!3480823 (not c!596894)) b!3480830))

(assert (= (and b!3480830 (not res!1404758)) b!3480826))

(assert (= (and b!3480826 res!1404755) b!3480836))

(assert (= (and b!3480836 res!1404756) b!3480834))

(assert (= (and b!3480834 res!1404760) b!3480825))

(assert (= (and b!3480826 (not res!1404757)) b!3480833))

(assert (= (and b!3480833 res!1404754) b!3480824))

(assert (= (and b!3480824 (not res!1404761)) b!3480831))

(assert (= (and b!3480831 (not res!1404759)) b!3480832))

(assert (= (or b!3480827 b!3480824 b!3480836) bm!250981))

(declare-fun m!3897891 () Bool)

(assert (=> b!3480829 m!3897891))

(assert (=> b!3480832 m!3896467))

(assert (=> b!3480828 m!3896467))

(assert (=> b!3480828 m!3896467))

(declare-fun m!3897893 () Bool)

(assert (=> b!3480828 m!3897893))

(assert (=> b!3480828 m!3896567))

(assert (=> b!3480828 m!3897893))

(assert (=> b!3480828 m!3896567))

(declare-fun m!3897895 () Bool)

(assert (=> b!3480828 m!3897895))

(assert (=> d!1005372 m!3896571))

(assert (=> d!1005372 m!3897889))

(assert (=> b!3480825 m!3896467))

(assert (=> b!3480834 m!3896567))

(assert (=> b!3480834 m!3896567))

(assert (=> b!3480834 m!3896575))

(assert (=> b!3480831 m!3896567))

(assert (=> b!3480831 m!3896567))

(assert (=> b!3480831 m!3896575))

(assert (=> bm!250981 m!3896571))

(assert (=> b!3479972 d!1005372))

(declare-fun d!1005374 () Bool)

(declare-fun res!1404766 () Bool)

(declare-fun e!2156217 () Bool)

(assert (=> d!1005374 (=> res!1404766 e!2156217)))

(assert (=> d!1005374 (= res!1404766 (not ((_ is Cons!37256) rules!2135)))))

(assert (=> d!1005374 (= (sepAndNonSepRulesDisjointChars!1652 rules!2135 rules!2135) e!2156217)))

(declare-fun b!3480841 () Bool)

(declare-fun e!2156218 () Bool)

(assert (=> b!3480841 (= e!2156217 e!2156218)))

(declare-fun res!1404767 () Bool)

(assert (=> b!3480841 (=> (not res!1404767) (not e!2156218))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!733 (Rule!10716 List!37380) Bool)

(assert (=> b!3480841 (= res!1404767 (ruleDisjointCharsFromAllFromOtherType!733 (h!42676 rules!2135) rules!2135))))

(declare-fun b!3480842 () Bool)

(assert (=> b!3480842 (= e!2156218 (sepAndNonSepRulesDisjointChars!1652 rules!2135 (t!275437 rules!2135)))))

(assert (= (and d!1005374 (not res!1404766)) b!3480841))

(assert (= (and b!3480841 res!1404767) b!3480842))

(declare-fun m!3897897 () Bool)

(assert (=> b!3480841 m!3897897))

(declare-fun m!3897899 () Bool)

(assert (=> b!3480842 m!3897899))

(assert (=> b!3479950 d!1005374))

(declare-fun b!3480845 () Bool)

(declare-fun e!2156221 () Bool)

(assert (=> b!3480845 (= e!2156221 true)))

(declare-fun b!3480844 () Bool)

(declare-fun e!2156220 () Bool)

(assert (=> b!3480844 (= e!2156220 e!2156221)))

(declare-fun b!3480843 () Bool)

(declare-fun e!2156219 () Bool)

(assert (=> b!3480843 (= e!2156219 e!2156220)))

(assert (=> b!3479988 e!2156219))

(assert (= b!3480844 b!3480845))

(assert (= b!3480843 b!3480844))

(assert (= (and b!3479988 ((_ is Cons!37256) (t!275437 rules!2135))) b!3480843))

(assert (=> b!3480845 (< (dynLambda!15768 order!19933 (toValue!7694 (transformation!5458 (h!42676 (t!275437 rules!2135))))) (dynLambda!15769 order!19935 lambda!122215))))

(assert (=> b!3480845 (< (dynLambda!15770 order!19937 (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135))))) (dynLambda!15769 order!19935 lambda!122215))))

(declare-fun b!3480856 () Bool)

(declare-fun b_free!90293 () Bool)

(declare-fun b_next!90997 () Bool)

(assert (=> b!3480856 (= b_free!90293 (not b_next!90997))))

(declare-fun t!275523 () Bool)

(declare-fun tb!190855 () Bool)

(assert (=> (and b!3480856 (= (toValue!7694 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275523) tb!190855))

(declare-fun result!235014 () Bool)

(assert (= result!235014 result!234960))

(assert (=> d!1005256 t!275523))

(declare-fun tp!1081236 () Bool)

(declare-fun b_and!245623 () Bool)

(assert (=> b!3480856 (= tp!1081236 (and (=> t!275523 result!235014) b_and!245623))))

(declare-fun b_free!90295 () Bool)

(declare-fun b_next!90999 () Bool)

(assert (=> b!3480856 (= b_free!90295 (not b_next!90999))))

(declare-fun t!275525 () Bool)

(declare-fun tb!190857 () Bool)

(assert (=> (and b!3480856 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241)))) t!275525) tb!190857))

(declare-fun result!235016 () Bool)

(assert (= result!235016 result!234976))

(assert (=> b!3480697 t!275525))

(declare-fun tb!190859 () Bool)

(declare-fun t!275527 () Bool)

(assert (=> (and b!3480856 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494)))))) t!275527) tb!190859))

(declare-fun result!235018 () Bool)

(assert (= result!235018 result!234982))

(assert (=> d!1005314 t!275527))

(declare-fun t!275529 () Bool)

(declare-fun tb!190861 () Bool)

(assert (=> (and b!3480856 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275529) tb!190861))

(declare-fun result!235020 () Bool)

(assert (= result!235020 result!234940))

(assert (=> d!1005068 t!275529))

(assert (=> d!1005302 t!275525))

(assert (=> b!3480073 t!275529))

(declare-fun tp!1081238 () Bool)

(declare-fun b_and!245625 () Bool)

(assert (=> b!3480856 (= tp!1081238 (and (=> t!275525 result!235016) (=> t!275529 result!235020) (=> t!275527 result!235018) b_and!245625))))

(declare-fun e!2156232 () Bool)

(assert (=> b!3480856 (= e!2156232 (and tp!1081236 tp!1081238))))

(declare-fun tp!1081237 () Bool)

(declare-fun b!3480855 () Bool)

(declare-fun e!2156230 () Bool)

(assert (=> b!3480855 (= e!2156230 (and tp!1081237 (inv!50444 (tag!6080 (h!42676 (t!275437 rules!2135)))) (inv!50447 (transformation!5458 (h!42676 (t!275437 rules!2135)))) e!2156232))))

(declare-fun b!3480854 () Bool)

(declare-fun e!2156231 () Bool)

(declare-fun tp!1081235 () Bool)

(assert (=> b!3480854 (= e!2156231 (and e!2156230 tp!1081235))))

(assert (=> b!3479958 (= tp!1081160 e!2156231)))

(assert (= b!3480855 b!3480856))

(assert (= b!3480854 b!3480855))

(assert (= (and b!3479958 ((_ is Cons!37256) (t!275437 rules!2135))) b!3480854))

(declare-fun m!3897901 () Bool)

(assert (=> b!3480855 m!3897901))

(declare-fun m!3897903 () Bool)

(assert (=> b!3480855 m!3897903))

(declare-fun b!3480870 () Bool)

(declare-fun b_free!90297 () Bool)

(declare-fun b_next!91001 () Bool)

(assert (=> b!3480870 (= b_free!90297 (not b_next!91001))))

(declare-fun t!275531 () Bool)

(declare-fun tb!190863 () Bool)

(assert (=> (and b!3480870 (= (toValue!7694 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275531) tb!190863))

(declare-fun result!235024 () Bool)

(assert (= result!235024 result!234960))

(assert (=> d!1005256 t!275531))

(declare-fun tp!1081252 () Bool)

(declare-fun b_and!245627 () Bool)

(assert (=> b!3480870 (= tp!1081252 (and (=> t!275531 result!235024) b_and!245627))))

(declare-fun b_free!90299 () Bool)

(declare-fun b_next!91003 () Bool)

(assert (=> b!3480870 (= b_free!90299 (not b_next!91003))))

(declare-fun t!275533 () Bool)

(declare-fun tb!190865 () Bool)

(assert (=> (and b!3480870 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241)))) t!275533) tb!190865))

(declare-fun result!235026 () Bool)

(assert (= result!235026 result!234976))

(assert (=> b!3480697 t!275533))

(declare-fun t!275535 () Bool)

(declare-fun tb!190867 () Bool)

(assert (=> (and b!3480870 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494)))))) t!275535) tb!190867))

(declare-fun result!235028 () Bool)

(assert (= result!235028 result!234982))

(assert (=> d!1005314 t!275535))

(declare-fun t!275537 () Bool)

(declare-fun tb!190869 () Bool)

(assert (=> (and b!3480870 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494))))) t!275537) tb!190869))

(declare-fun result!235030 () Bool)

(assert (= result!235030 result!234940))

(assert (=> d!1005068 t!275537))

(assert (=> d!1005302 t!275533))

(assert (=> b!3480073 t!275537))

(declare-fun b_and!245629 () Bool)

(declare-fun tp!1081249 () Bool)

(assert (=> b!3480870 (= tp!1081249 (and (=> t!275535 result!235028) (=> t!275533 result!235026) (=> t!275537 result!235030) b_and!245629))))

(declare-fun e!2156250 () Bool)

(declare-fun b!3480868 () Bool)

(declare-fun tp!1081251 () Bool)

(declare-fun e!2156251 () Bool)

(assert (=> b!3480868 (= e!2156251 (and (inv!21 (value!176013 (h!42677 (t!275438 tokens!494)))) e!2156250 tp!1081251))))

(declare-fun tp!1081250 () Bool)

(declare-fun b!3480869 () Bool)

(declare-fun e!2156249 () Bool)

(assert (=> b!3480869 (= e!2156250 (and tp!1081250 (inv!50444 (tag!6080 (rule!8064 (h!42677 (t!275438 tokens!494))))) (inv!50447 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) e!2156249))))

(declare-fun e!2156248 () Bool)

(declare-fun tp!1081253 () Bool)

(declare-fun b!3480867 () Bool)

(assert (=> b!3480867 (= e!2156248 (and (inv!50448 (h!42677 (t!275438 tokens!494))) e!2156251 tp!1081253))))

(assert (=> b!3479969 (= tp!1081153 e!2156248)))

(assert (=> b!3480870 (= e!2156249 (and tp!1081252 tp!1081249))))

(assert (= b!3480869 b!3480870))

(assert (= b!3480868 b!3480869))

(assert (= b!3480867 b!3480868))

(assert (= (and b!3479969 ((_ is Cons!37257) (t!275438 tokens!494))) b!3480867))

(declare-fun m!3897905 () Bool)

(assert (=> b!3480868 m!3897905))

(declare-fun m!3897907 () Bool)

(assert (=> b!3480869 m!3897907))

(declare-fun m!3897909 () Bool)

(assert (=> b!3480869 m!3897909))

(declare-fun m!3897911 () Bool)

(assert (=> b!3480867 m!3897911))

(declare-fun b!3480875 () Bool)

(declare-fun e!2156254 () Bool)

(declare-fun tp_is_empty!17585 () Bool)

(declare-fun tp!1081256 () Bool)

(assert (=> b!3480875 (= e!2156254 (and tp_is_empty!17585 tp!1081256))))

(assert (=> b!3479956 (= tp!1081149 e!2156254)))

(assert (= (and b!3479956 ((_ is Cons!37255) (originalCharacters!6172 separatorToken!241))) b!3480875))

(declare-fun b!3480889 () Bool)

(declare-fun e!2156257 () Bool)

(declare-fun tp!1081271 () Bool)

(declare-fun tp!1081270 () Bool)

(assert (=> b!3480889 (= e!2156257 (and tp!1081271 tp!1081270))))

(assert (=> b!3479967 (= tp!1081156 e!2156257)))

(declare-fun b!3480887 () Bool)

(declare-fun tp!1081269 () Bool)

(declare-fun tp!1081268 () Bool)

(assert (=> b!3480887 (= e!2156257 (and tp!1081269 tp!1081268))))

(declare-fun b!3480886 () Bool)

(assert (=> b!3480886 (= e!2156257 tp_is_empty!17585)))

(declare-fun b!3480888 () Bool)

(declare-fun tp!1081267 () Bool)

(assert (=> b!3480888 (= e!2156257 tp!1081267)))

(assert (= (and b!3479967 ((_ is ElementMatch!10217) (regex!5458 (rule!8064 separatorToken!241)))) b!3480886))

(assert (= (and b!3479967 ((_ is Concat!15905) (regex!5458 (rule!8064 separatorToken!241)))) b!3480887))

(assert (= (and b!3479967 ((_ is Star!10217) (regex!5458 (rule!8064 separatorToken!241)))) b!3480888))

(assert (= (and b!3479967 ((_ is Union!10217) (regex!5458 (rule!8064 separatorToken!241)))) b!3480889))

(declare-fun b!3480893 () Bool)

(declare-fun e!2156258 () Bool)

(declare-fun tp!1081276 () Bool)

(declare-fun tp!1081275 () Bool)

(assert (=> b!3480893 (= e!2156258 (and tp!1081276 tp!1081275))))

(assert (=> b!3479945 (= tp!1081151 e!2156258)))

(declare-fun b!3480891 () Bool)

(declare-fun tp!1081274 () Bool)

(declare-fun tp!1081273 () Bool)

(assert (=> b!3480891 (= e!2156258 (and tp!1081274 tp!1081273))))

(declare-fun b!3480890 () Bool)

(assert (=> b!3480890 (= e!2156258 tp_is_empty!17585)))

(declare-fun b!3480892 () Bool)

(declare-fun tp!1081272 () Bool)

(assert (=> b!3480892 (= e!2156258 tp!1081272)))

(assert (= (and b!3479945 ((_ is ElementMatch!10217) (regex!5458 (rule!8064 (h!42677 tokens!494))))) b!3480890))

(assert (= (and b!3479945 ((_ is Concat!15905) (regex!5458 (rule!8064 (h!42677 tokens!494))))) b!3480891))

(assert (= (and b!3479945 ((_ is Star!10217) (regex!5458 (rule!8064 (h!42677 tokens!494))))) b!3480892))

(assert (= (and b!3479945 ((_ is Union!10217) (regex!5458 (rule!8064 (h!42677 tokens!494))))) b!3480893))

(declare-fun b!3480897 () Bool)

(declare-fun e!2156259 () Bool)

(declare-fun tp!1081281 () Bool)

(declare-fun tp!1081280 () Bool)

(assert (=> b!3480897 (= e!2156259 (and tp!1081281 tp!1081280))))

(assert (=> b!3479968 (= tp!1081155 e!2156259)))

(declare-fun b!3480895 () Bool)

(declare-fun tp!1081279 () Bool)

(declare-fun tp!1081278 () Bool)

(assert (=> b!3480895 (= e!2156259 (and tp!1081279 tp!1081278))))

(declare-fun b!3480894 () Bool)

(assert (=> b!3480894 (= e!2156259 tp_is_empty!17585)))

(declare-fun b!3480896 () Bool)

(declare-fun tp!1081277 () Bool)

(assert (=> b!3480896 (= e!2156259 tp!1081277)))

(assert (= (and b!3479968 ((_ is ElementMatch!10217) (regex!5458 (h!42676 rules!2135)))) b!3480894))

(assert (= (and b!3479968 ((_ is Concat!15905) (regex!5458 (h!42676 rules!2135)))) b!3480895))

(assert (= (and b!3479968 ((_ is Star!10217) (regex!5458 (h!42676 rules!2135)))) b!3480896))

(assert (= (and b!3479968 ((_ is Union!10217) (regex!5458 (h!42676 rules!2135)))) b!3480897))

(declare-fun b!3480898 () Bool)

(declare-fun e!2156260 () Bool)

(declare-fun tp!1081282 () Bool)

(assert (=> b!3480898 (= e!2156260 (and tp_is_empty!17585 tp!1081282))))

(assert (=> b!3479964 (= tp!1081150 e!2156260)))

(assert (= (and b!3479964 ((_ is Cons!37255) (originalCharacters!6172 (h!42677 tokens!494)))) b!3480898))

(declare-fun b_lambda!100703 () Bool)

(assert (= b_lambda!100677 (or (and b!3479955 b_free!90279) (and b!3479954 b_free!90275 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) (and b!3480856 b_free!90295 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) (and b!3479941 b_free!90283 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) (and b!3480870 b_free!90299 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) b_lambda!100703)))

(declare-fun b_lambda!100705 () Bool)

(assert (= b_lambda!100645 (or (and b!3479941 b_free!90283 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3479955 b_free!90279 (= (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3479954 b_free!90275) (and b!3480870 b_free!90299 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3480856 b_free!90295 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) b_lambda!100705)))

(declare-fun b_lambda!100707 () Bool)

(assert (= b_lambda!100665 (or b!3479962 b_lambda!100707)))

(declare-fun bs!561943 () Bool)

(declare-fun d!1005376 () Bool)

(assert (= bs!561943 (and d!1005376 b!3479962)))

(assert (=> bs!561943 (= (dynLambda!15774 lambda!122215 (h!42677 (t!275438 tokens!494))) (rulesProduceIndividualToken!2539 thiss!18206 rules!2135 (h!42677 (t!275438 tokens!494))))))

(assert (=> bs!561943 m!3896493))

(assert (=> d!1005206 d!1005376))

(declare-fun b_lambda!100709 () Bool)

(assert (= b_lambda!100669 (or (and b!3479954 b_free!90273) (and b!3480870 b_free!90297 (= (toValue!7694 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3479955 b_free!90277 (= (toValue!7694 (transformation!5458 (rule!8064 separatorToken!241))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3479941 b_free!90281 (= (toValue!7694 (transformation!5458 (h!42676 rules!2135))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3480856 b_free!90293 (= (toValue!7694 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toValue!7694 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) b_lambda!100709)))

(declare-fun b_lambda!100711 () Bool)

(assert (= b_lambda!100681 (or b!3479971 b_lambda!100711)))

(declare-fun bs!561944 () Bool)

(declare-fun d!1005378 () Bool)

(assert (= bs!561944 (and d!1005378 b!3479971)))

(assert (=> bs!561944 (= (dynLambda!15774 lambda!122214 (h!42677 tokens!494)) (not (isSeparator!5458 (rule!8064 (h!42677 tokens!494)))))))

(assert (=> d!1005322 d!1005378))

(declare-fun b_lambda!100713 () Bool)

(assert (= b_lambda!100679 (or b!3479971 b_lambda!100713)))

(declare-fun bs!561945 () Bool)

(declare-fun d!1005380 () Bool)

(assert (= bs!561945 (and d!1005380 b!3479971)))

(assert (=> bs!561945 (= (dynLambda!15774 lambda!122214 (h!42677 (t!275438 tokens!494))) (not (isSeparator!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))))))

(assert (=> d!1005320 d!1005380))

(declare-fun b_lambda!100715 () Bool)

(assert (= b_lambda!100673 (or (and b!3479955 b_free!90279) (and b!3479954 b_free!90275 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) (and b!3480856 b_free!90295 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) (and b!3479941 b_free!90283 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) (and b!3480870 b_free!90299 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))))) b_lambda!100715)))

(declare-fun b_lambda!100717 () Bool)

(assert (= b_lambda!100649 (or (and b!3479941 b_free!90283 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3479955 b_free!90279 (= (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3479954 b_free!90275) (and b!3480870 b_free!90299 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) (and b!3480856 b_free!90295 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))))) b_lambda!100717)))

(declare-fun b_lambda!100719 () Bool)

(assert (= b_lambda!100647 (or b!3479971 b_lambda!100719)))

(assert (=> b!3480084 d!1005378))

(declare-fun b_lambda!100721 () Bool)

(assert (= b_lambda!100675 (or (and b!3479955 b_free!90279 (= (toChars!7553 (transformation!5458 (rule!8064 separatorToken!241))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))))) (and b!3480870 b_free!90299) (and b!3479941 b_free!90283 (= (toChars!7553 (transformation!5458 (h!42676 rules!2135))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))))) (and b!3479954 b_free!90275 (= (toChars!7553 (transformation!5458 (rule!8064 (h!42677 tokens!494)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))))) (and b!3480856 b_free!90295 (= (toChars!7553 (transformation!5458 (h!42676 (t!275437 rules!2135)))) (toChars!7553 (transformation!5458 (rule!8064 (h!42677 (t!275438 tokens!494))))))) b_lambda!100721)))

(check-sat (not b!3480693) b_and!245585 (not b!3480526) (not b!3480531) (not b!3480875) (not b!3480290) (not bm!250952) (not b_lambda!100717) (not b!3480538) (not b!3480188) (not b!3480057) (not d!1005302) (not b!3480502) (not b!3480810) (not b!3480808) (not d!1005146) (not d!1005072) (not b!3480699) (not d!1005064) (not d!1005328) (not b_lambda!100707) (not d!1005052) (not b!3480141) (not b!3480655) (not b!3480326) (not b!3480161) (not d!1005286) (not d!1005250) tp_is_empty!17585 (not d!1005290) (not d!1005282) (not b!3480869) (not b!3480821) (not b!3480698) (not bm!250956) (not bm!250950) (not b!3480701) (not b_next!90983) (not b!3480829) (not b_next!90979) (not d!1005170) (not b!3480671) (not b!3480079) (not d!1005092) (not b!3480168) (not b!3480650) (not b!3480165) (not b!3480181) (not d!1005164) (not b!3480530) (not b_lambda!100715) (not tb!190815) (not d!1005100) (not bm!250981) b_and!245589 (not d!1005206) (not b!3480657) (not b_next!90981) (not b!3480893) (not d!1005362) (not b!3480816) (not b!3480301) (not d!1005066) (not b!3480105) (not b!3480535) (not b!3480073) (not b!3480660) (not b!3480656) (not b!3480527) (not b!3480074) (not d!1005304) (not b!3480143) (not b!3480099) (not bm!250936) (not bm!250955) (not b!3480687) (not b!3480315) (not b!3480565) (not d!1005310) (not bs!561943) (not b!3480696) (not bm!250954) b_and!245609 (not b!3480289) (not b!3480155) (not b_lambda!100703) (not b!3480832) (not d!1005060) (not b!3480854) (not d!1005360) (not d!1005176) (not d!1005048) b_and!245613 (not b!3480809) (not b!3480529) (not b!3480329) (not b!3480100) (not b!3480889) (not d!1005158) (not b!3480532) (not b!3480855) (not d!1005236) (not b!3480586) (not b!3480694) (not b!3480106) (not b!3480061) (not b!3480140) (not b_lambda!100713) (not b!3480697) (not d!1005312) (not b!3480327) (not b!3480063) (not d!1005148) (not d!1005270) (not d!1005370) (not d!1005022) (not d!1005276) (not d!1005154) (not d!1005288) (not b!3480170) (not b!3480085) (not b!3480677) (not b!3480158) (not b!3480654) (not tb!190833) (not d!1005162) (not d!1005096) (not d!1005372) (not b!3480666) (not b!3480647) (not b!3480867) b_and!245629 (not b!3480649) (not d!1005260) b_and!245611 (not bm!250937) (not bm!250951) (not b!3480868) (not b!3480378) (not b!3480662) (not b_lambda!100721) (not b!3480536) (not b!3480096) (not d!1005314) (not b!3480534) (not b!3480060) (not b!3480157) (not b!3480896) (not d!1005364) (not b_lambda!100719) (not b!3480575) (not b!3480669) (not b!3480703) (not d!1005156) (not b!3480700) (not b!3480688) (not b!3480324) (not d!1005324) (not tb!190797) (not d!1005104) (not b!3480895) (not d!1005182) (not b!3480528) b_and!245627 (not b!3480665) (not b!3480594) (not b!3480702) (not b_next!90977) (not b!3480891) (not b!3480888) b_and!245587 (not b!3480704) (not b!3480690) (not b!3480321) (not b_next!90999) (not bm!250963) (not b!3480658) (not b!3480831) (not b!3480815) (not b!3480320) (not b!3480417) (not d!1005264) (not d!1005238) (not d!1005366) (not d!1005300) (not b!3480897) (not d!1005160) (not d!1005050) (not b!3480685) (not b!3480828) (not b_next!90997) (not d!1005294) (not b_next!91001) (not b!3480813) (not d!1005144) (not d!1005152) (not b_lambda!100709) (not b!3480661) (not b!3480567) (not b!3480593) (not d!1005208) (not d!1005284) (not d!1005252) (not b!3480843) (not b!3480898) (not b_next!91003) (not d!1005044) (not b!3480325) (not b_lambda!100711) (not d!1005316) (not tb!190827) (not d!1005056) (not d!1005320) (not b!3480164) (not b_next!90985) (not b!3480680) b_and!245625 (not b_lambda!100705) (not d!1005070) (not b!3480892) (not b!3480663) (not b!3480139) (not d!1005318) (not b_next!90987) (not d!1005280) (not b!3480295) (not b!3480842) (not b!3480322) (not b!3480825) (not b!3480064) (not b!3480648) (not b!3480314) b_and!245623 (not b!3480167) (not b!3480066) (not d!1005068) (not d!1005254) (not b!3480652) (not b!3480646) (not b!3480104) (not b!3480672) (not b!3480501) (not b!3480317) (not d!1005298) (not b!3480651) (not b!3480500) (not d!1005322) (not b!3480095) (not b!3480834) (not b!3480887) (not b!3480684) (not b!3480841) (not b!3480681) (not d!1005088) (not d!1005258))
(check-sat b_and!245585 b_and!245589 (not b_next!90981) b_and!245609 b_and!245613 b_and!245629 b_and!245611 b_and!245627 (not b_next!90999) (not b_next!90997) (not b_next!91001) (not b_next!91003) b_and!245623 (not b_next!90983) (not b_next!90979) (not b_next!90977) b_and!245587 (not b_next!90987) (not b_next!90985) b_and!245625)
