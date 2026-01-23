; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41242 () Bool)

(assert start!41242)

(declare-fun b!438006 () Bool)

(declare-fun b_free!12233 () Bool)

(declare-fun b_next!12233 () Bool)

(assert (=> b!438006 (= b_free!12233 (not b_next!12233))))

(declare-fun tp!124070 () Bool)

(declare-fun b_and!47237 () Bool)

(assert (=> b!438006 (= tp!124070 b_and!47237)))

(declare-fun b_free!12235 () Bool)

(declare-fun b_next!12235 () Bool)

(assert (=> b!438006 (= b_free!12235 (not b_next!12235))))

(declare-fun tp!124066 () Bool)

(declare-fun b_and!47239 () Bool)

(assert (=> b!438006 (= tp!124066 b_and!47239)))

(declare-fun b!438057 () Bool)

(declare-fun b_free!12237 () Bool)

(declare-fun b_next!12237 () Bool)

(assert (=> b!438057 (= b_free!12237 (not b_next!12237))))

(declare-fun tp!124073 () Bool)

(declare-fun b_and!47241 () Bool)

(assert (=> b!438057 (= tp!124073 b_and!47241)))

(declare-fun b_free!12239 () Bool)

(declare-fun b_next!12239 () Bool)

(assert (=> b!438057 (= b_free!12239 (not b_next!12239))))

(declare-fun tp!124063 () Bool)

(declare-fun b_and!47243 () Bool)

(assert (=> b!438057 (= tp!124063 b_and!47243)))

(declare-fun b!438017 () Bool)

(declare-fun b_free!12241 () Bool)

(declare-fun b_next!12241 () Bool)

(assert (=> b!438017 (= b_free!12241 (not b_next!12241))))

(declare-fun tp!124067 () Bool)

(declare-fun b_and!47245 () Bool)

(assert (=> b!438017 (= tp!124067 b_and!47245)))

(declare-fun b_free!12243 () Bool)

(declare-fun b_next!12243 () Bool)

(assert (=> b!438017 (= b_free!12243 (not b_next!12243))))

(declare-fun tp!124072 () Bool)

(declare-fun b_and!47247 () Bool)

(assert (=> b!438017 (= tp!124072 b_and!47247)))

(declare-fun bs!54094 () Bool)

(declare-fun b!438047 () Bool)

(declare-fun b!438039 () Bool)

(assert (= bs!54094 (and b!438047 b!438039)))

(declare-fun lambda!12712 () Int)

(declare-fun lambda!12711 () Int)

(assert (=> bs!54094 (not (= lambda!12712 lambda!12711))))

(declare-fun b!438068 () Bool)

(declare-fun e!267592 () Bool)

(assert (=> b!438068 (= e!267592 true)))

(declare-fun b!438067 () Bool)

(declare-fun e!267591 () Bool)

(assert (=> b!438067 (= e!267591 e!267592)))

(declare-fun b!438066 () Bool)

(declare-fun e!267590 () Bool)

(assert (=> b!438066 (= e!267590 e!267591)))

(assert (=> b!438047 e!267590))

(assert (= b!438067 b!438068))

(assert (= b!438066 b!438067))

(declare-datatypes ((C!3036 0))(
  ( (C!3037 (val!1404 Int)) )
))
(declare-datatypes ((List!4314 0))(
  ( (Nil!4304) (Cons!4304 (h!9701 (_ BitVec 16)) (t!69336 List!4314)) )
))
(declare-datatypes ((TokenValue!855 0))(
  ( (FloatLiteralValue!1710 (text!6430 List!4314)) (TokenValueExt!854 (__x!3197 Int)) (Broken!4275 (value!28030 List!4314)) (Object!864) (End!855) (Def!855) (Underscore!855) (Match!855) (Else!855) (Error!855) (Case!855) (If!855) (Extends!855) (Abstract!855) (Class!855) (Val!855) (DelimiterValue!1710 (del!915 List!4314)) (KeywordValue!861 (value!28031 List!4314)) (CommentValue!1710 (value!28032 List!4314)) (WhitespaceValue!1710 (value!28033 List!4314)) (IndentationValue!855 (value!28034 List!4314)) (String!5354) (Int32!855) (Broken!4276 (value!28035 List!4314)) (Boolean!856) (Unit!7588) (OperatorValue!858 (op!915 List!4314)) (IdentifierValue!1710 (value!28036 List!4314)) (IdentifierValue!1711 (value!28037 List!4314)) (WhitespaceValue!1711 (value!28038 List!4314)) (True!1710) (False!1710) (Broken!4277 (value!28039 List!4314)) (Broken!4278 (value!28040 List!4314)) (True!1711) (RightBrace!855) (RightBracket!855) (Colon!855) (Null!855) (Comma!855) (LeftBracket!855) (False!1711) (LeftBrace!855) (ImaginaryLiteralValue!855 (text!6431 List!4314)) (StringLiteralValue!2565 (value!28041 List!4314)) (EOFValue!855 (value!28042 List!4314)) (IdentValue!855 (value!28043 List!4314)) (DelimiterValue!1711 (value!28044 List!4314)) (DedentValue!855 (value!28045 List!4314)) (NewLineValue!855 (value!28046 List!4314)) (IntegerValue!2565 (value!28047 (_ BitVec 32)) (text!6432 List!4314)) (IntegerValue!2566 (value!28048 Int) (text!6433 List!4314)) (Times!855) (Or!855) (Equal!855) (Minus!855) (Broken!4279 (value!28049 List!4314)) (And!855) (Div!855) (LessEqual!855) (Mod!855) (Concat!1912) (Not!855) (Plus!855) (SpaceValue!855 (value!28050 List!4314)) (IntegerValue!2567 (value!28051 Int) (text!6434 List!4314)) (StringLiteralValue!2566 (text!6435 List!4314)) (FloatLiteralValue!1711 (text!6436 List!4314)) (BytesLiteralValue!855 (value!28052 List!4314)) (CommentValue!1711 (value!28053 List!4314)) (StringLiteralValue!2567 (value!28054 List!4314)) (ErrorTokenValue!855 (msg!916 List!4314)) )
))
(declare-datatypes ((List!4315 0))(
  ( (Nil!4305) (Cons!4305 (h!9702 C!3036) (t!69337 List!4315)) )
))
(declare-datatypes ((IArray!2977 0))(
  ( (IArray!2978 (innerList!1546 List!4315)) )
))
(declare-datatypes ((Conc!1488 0))(
  ( (Node!1488 (left!3611 Conc!1488) (right!3941 Conc!1488) (csize!3206 Int) (cheight!1699 Int)) (Leaf!2244 (xs!4119 IArray!2977) (csize!3207 Int)) (Empty!1488) )
))
(declare-datatypes ((BalanceConc!2984 0))(
  ( (BalanceConc!2985 (c!88710 Conc!1488)) )
))
(declare-datatypes ((TokenValueInjection!1482 0))(
  ( (TokenValueInjection!1483 (toValue!1640 Int) (toChars!1499 Int)) )
))
(declare-datatypes ((Regex!1057 0))(
  ( (ElementMatch!1057 (c!88711 C!3036)) (Concat!1913 (regOne!2626 Regex!1057) (regTwo!2626 Regex!1057)) (EmptyExpr!1057) (Star!1057 (reg!1386 Regex!1057)) (EmptyLang!1057) (Union!1057 (regOne!2627 Regex!1057) (regTwo!2627 Regex!1057)) )
))
(declare-datatypes ((String!5355 0))(
  ( (String!5356 (value!28055 String)) )
))
(declare-datatypes ((Rule!1466 0))(
  ( (Rule!1467 (regex!833 Regex!1057) (tag!1083 String!5355) (isSeparator!833 Bool) (transformation!833 TokenValueInjection!1482)) )
))
(declare-datatypes ((List!4316 0))(
  ( (Nil!4306) (Cons!4306 (h!9703 Rule!1466) (t!69338 List!4316)) )
))
(declare-fun rules!1920 () List!4316)

(get-info :version)

(assert (= (and b!438047 ((_ is Cons!4306) rules!1920)) b!438066))

(declare-fun order!3733 () Int)

(declare-fun order!3735 () Int)

(declare-fun dynLambda!2560 (Int Int) Int)

(declare-fun dynLambda!2561 (Int Int) Int)

(assert (=> b!438068 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12712))))

(declare-fun order!3737 () Int)

(declare-fun dynLambda!2562 (Int Int) Int)

(assert (=> b!438068 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12712))))

(assert (=> b!438047 true))

(declare-fun b!438003 () Bool)

(declare-fun e!267551 () Bool)

(declare-fun e!267560 () Bool)

(assert (=> b!438003 (= e!267551 e!267560)))

(declare-fun res!194138 () Bool)

(assert (=> b!438003 (=> res!194138 e!267560)))

(declare-datatypes ((Token!1410 0))(
  ( (Token!1411 (value!28056 TokenValue!855) (rule!1508 Rule!1466) (size!3526 Int) (originalCharacters!876 List!4315)) )
))
(declare-fun separatorToken!170 () Token!1410)

(declare-fun lt!192667 () List!4315)

(declare-fun matchR!375 (Regex!1057 List!4315) Bool)

(assert (=> b!438003 (= res!194138 (not (matchR!375 (regex!833 (rule!1508 separatorToken!170)) lt!192667)))))

(declare-datatypes ((LexerInterface!719 0))(
  ( (LexerInterfaceExt!716 (__x!3198 Int)) (Lexer!717) )
))
(declare-fun thiss!17480 () LexerInterface!719)

(declare-fun ruleValid!126 (LexerInterface!719 Rule!1466) Bool)

(assert (=> b!438003 (ruleValid!126 thiss!17480 (rule!1508 separatorToken!170))))

(declare-datatypes ((Unit!7589 0))(
  ( (Unit!7590) )
))
(declare-fun lt!192639 () Unit!7589)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!6 (LexerInterface!719 Rule!1466 List!4316) Unit!7589)

(assert (=> b!438003 (= lt!192639 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!6 thiss!17480 (rule!1508 separatorToken!170) rules!1920))))

(declare-fun b!438004 () Bool)

(declare-fun res!194165 () Bool)

(declare-fun e!267574 () Bool)

(assert (=> b!438004 (=> (not res!194165) (not e!267574))))

(declare-datatypes ((List!4317 0))(
  ( (Nil!4307) (Cons!4307 (h!9704 Token!1410) (t!69339 List!4317)) )
))
(declare-datatypes ((IArray!2979 0))(
  ( (IArray!2980 (innerList!1547 List!4317)) )
))
(declare-datatypes ((Conc!1489 0))(
  ( (Node!1489 (left!3612 Conc!1489) (right!3942 Conc!1489) (csize!3208 Int) (cheight!1700 Int)) (Leaf!2245 (xs!4120 IArray!2979) (csize!3209 Int)) (Empty!1489) )
))
(declare-datatypes ((BalanceConc!2986 0))(
  ( (BalanceConc!2987 (c!88712 Conc!1489)) )
))
(declare-datatypes ((tuple2!5170 0))(
  ( (tuple2!5171 (_1!2801 BalanceConc!2986) (_2!2801 BalanceConc!2984)) )
))
(declare-fun lt!192656 () tuple2!5170)

(declare-fun lt!192655 () Token!1410)

(declare-fun apply!1070 (BalanceConc!2986 Int) Token!1410)

(assert (=> b!438004 (= res!194165 (= (apply!1070 (_1!2801 lt!192656) 0) lt!192655))))

(declare-fun b!438005 () Bool)

(declare-fun e!267558 () Bool)

(declare-fun e!267559 () Bool)

(assert (=> b!438005 (= e!267558 (not e!267559))))

(declare-fun res!194175 () Bool)

(assert (=> b!438005 (=> res!194175 e!267559)))

(declare-fun lt!192638 () List!4315)

(declare-fun tokens!465 () List!4317)

(declare-fun list!1899 (BalanceConc!2984) List!4315)

(declare-fun printWithSeparatorTokenWhenNeededRec!392 (LexerInterface!719 List!4316 BalanceConc!2986 Token!1410 Int) BalanceConc!2984)

(declare-fun seqFromList!1031 (List!4317) BalanceConc!2986)

(assert (=> b!438005 (= res!194175 (not (= lt!192638 (list!1899 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 (seqFromList!1031 (t!69339 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!192662 () List!4315)

(declare-fun lt!192651 () List!4315)

(assert (=> b!438005 (= lt!192662 lt!192651)))

(declare-fun lt!192671 () List!4315)

(declare-fun lt!192681 () List!4315)

(declare-fun ++!1238 (List!4315 List!4315) List!4315)

(assert (=> b!438005 (= lt!192651 (++!1238 lt!192671 lt!192681))))

(assert (=> b!438005 (= lt!192662 (++!1238 (++!1238 lt!192671 lt!192667) lt!192638))))

(declare-fun lt!192633 () Unit!7589)

(declare-fun lemmaConcatAssociativity!564 (List!4315 List!4315 List!4315) Unit!7589)

(assert (=> b!438005 (= lt!192633 (lemmaConcatAssociativity!564 lt!192671 lt!192667 lt!192638))))

(declare-fun charsOf!476 (Token!1410) BalanceConc!2984)

(assert (=> b!438005 (= lt!192671 (list!1899 (charsOf!476 (h!9704 tokens!465))))))

(assert (=> b!438005 (= lt!192681 (++!1238 lt!192667 lt!192638))))

(declare-fun printWithSeparatorTokenWhenNeededList!400 (LexerInterface!719 List!4316 List!4317 Token!1410) List!4315)

(assert (=> b!438005 (= lt!192638 (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 (t!69339 tokens!465) separatorToken!170))))

(assert (=> b!438005 (= lt!192667 (list!1899 (charsOf!476 separatorToken!170)))))

(declare-fun e!267564 () Bool)

(assert (=> b!438006 (= e!267564 (and tp!124070 tp!124066))))

(declare-fun b!438007 () Bool)

(declare-fun res!194173 () Bool)

(assert (=> b!438007 (=> res!194173 e!267551)))

(declare-datatypes ((tuple2!5172 0))(
  ( (tuple2!5173 (_1!2802 Token!1410) (_2!2802 List!4315)) )
))
(declare-fun lt!192653 () tuple2!5172)

(declare-fun isEmpty!3210 (List!4315) Bool)

(assert (=> b!438007 (= res!194173 (not (isEmpty!3210 (_2!2802 lt!192653))))))

(declare-fun b!438008 () Bool)

(declare-fun e!267573 () Unit!7589)

(declare-fun Unit!7591 () Unit!7589)

(assert (=> b!438008 (= e!267573 Unit!7591)))

(declare-fun lt!192678 () C!3036)

(declare-fun lt!192668 () Unit!7589)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!92 (LexerInterface!719 List!4316 List!4316 Rule!1466 Rule!1466 C!3036) Unit!7589)

(assert (=> b!438008 (= lt!192668 (lemmaSepRuleNotContainsCharContainedInANonSepRule!92 thiss!17480 rules!1920 rules!1920 (rule!1508 lt!192655) (rule!1508 separatorToken!170) lt!192678))))

(assert (=> b!438008 false))

(declare-fun b!438009 () Bool)

(declare-fun res!194174 () Bool)

(declare-fun e!267548 () Bool)

(assert (=> b!438009 (=> (not res!194174) (not e!267548))))

(declare-fun rulesInvariant!685 (LexerInterface!719 List!4316) Bool)

(assert (=> b!438009 (= res!194174 (rulesInvariant!685 thiss!17480 rules!1920))))

(declare-fun b!438010 () Bool)

(declare-fun res!194141 () Bool)

(declare-fun e!267572 () Bool)

(assert (=> b!438010 (=> (not res!194141) (not e!267572))))

(assert (=> b!438010 (= res!194141 ((_ is Cons!4307) tokens!465))))

(declare-fun b!438011 () Bool)

(declare-fun e!267552 () Unit!7589)

(declare-fun Unit!7592 () Unit!7589)

(assert (=> b!438011 (= e!267552 Unit!7592)))

(declare-fun lt!192659 () Unit!7589)

(declare-fun lt!192665 () C!3036)

(declare-fun lt!192657 () List!4315)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!112 (Regex!1057 List!4315 C!3036) Unit!7589)

(assert (=> b!438011 (= lt!192659 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!112 (regex!833 (rule!1508 lt!192655)) lt!192657 lt!192665))))

(declare-fun res!194162 () Bool)

(assert (=> b!438011 (= res!194162 (not (matchR!375 (regex!833 (rule!1508 lt!192655)) lt!192657)))))

(declare-fun e!267543 () Bool)

(assert (=> b!438011 (=> (not res!194162) (not e!267543))))

(assert (=> b!438011 e!267543))

(declare-fun b!438012 () Bool)

(declare-fun e!267550 () Bool)

(declare-fun e!267561 () Bool)

(assert (=> b!438012 (= e!267550 e!267561)))

(declare-fun res!194146 () Bool)

(assert (=> b!438012 (=> (not res!194146) (not e!267561))))

(declare-fun lt!192647 () Rule!1466)

(assert (=> b!438012 (= res!194146 (matchR!375 (regex!833 lt!192647) lt!192667))))

(declare-datatypes ((Option!1081 0))(
  ( (None!1080) (Some!1080 (v!15345 Rule!1466)) )
))
(declare-fun lt!192660 () Option!1081)

(declare-fun get!1551 (Option!1081) Rule!1466)

(assert (=> b!438012 (= lt!192647 (get!1551 lt!192660))))

(declare-fun b!438013 () Bool)

(assert (=> b!438013 (= e!267572 e!267558)))

(declare-fun res!194147 () Bool)

(assert (=> b!438013 (=> (not res!194147) (not e!267558))))

(declare-fun lt!192658 () List!4315)

(declare-fun lt!192679 () List!4315)

(assert (=> b!438013 (= res!194147 (= lt!192658 lt!192679))))

(declare-fun lt!192646 () BalanceConc!2986)

(assert (=> b!438013 (= lt!192679 (list!1899 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 lt!192646 separatorToken!170 0)))))

(assert (=> b!438013 (= lt!192658 (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!438014 () Bool)

(declare-fun e!267562 () Bool)

(declare-fun e!267582 () Bool)

(assert (=> b!438014 (= e!267562 e!267582)))

(declare-fun res!194159 () Bool)

(assert (=> b!438014 (=> (not res!194159) (not e!267582))))

(declare-datatypes ((Option!1082 0))(
  ( (None!1081) (Some!1081 (v!15346 tuple2!5172)) )
))
(declare-fun lt!192677 () Option!1082)

(declare-fun isDefined!920 (Option!1082) Bool)

(assert (=> b!438014 (= res!194159 (isDefined!920 lt!192677))))

(declare-fun maxPrefix!435 (LexerInterface!719 List!4316 List!4315) Option!1082)

(assert (=> b!438014 (= lt!192677 (maxPrefix!435 thiss!17480 rules!1920 lt!192658))))

(declare-fun b!438015 () Bool)

(declare-fun Unit!7593 () Unit!7589)

(assert (=> b!438015 (= e!267552 Unit!7593)))

(declare-fun b!438016 () Bool)

(declare-fun tp!124064 () Bool)

(declare-fun e!267575 () Bool)

(declare-fun e!267581 () Bool)

(declare-fun inv!5366 (String!5355) Bool)

(declare-fun inv!5369 (TokenValueInjection!1482) Bool)

(assert (=> b!438016 (= e!267581 (and tp!124064 (inv!5366 (tag!1083 (rule!1508 separatorToken!170))) (inv!5369 (transformation!833 (rule!1508 separatorToken!170))) e!267575))))

(assert (=> b!438017 (= e!267575 (and tp!124067 tp!124072))))

(declare-fun res!194142 () Bool)

(assert (=> start!41242 (=> (not res!194142) (not e!267548))))

(assert (=> start!41242 (= res!194142 ((_ is Lexer!717) thiss!17480))))

(assert (=> start!41242 e!267548))

(assert (=> start!41242 true))

(declare-fun e!267554 () Bool)

(assert (=> start!41242 e!267554))

(declare-fun e!267544 () Bool)

(declare-fun inv!5370 (Token!1410) Bool)

(assert (=> start!41242 (and (inv!5370 separatorToken!170) e!267544)))

(declare-fun e!267553 () Bool)

(assert (=> start!41242 e!267553))

(declare-fun b!438018 () Bool)

(declare-fun isEmpty!3211 (BalanceConc!2984) Bool)

(assert (=> b!438018 (= e!267574 (isEmpty!3211 (_2!2801 lt!192656)))))

(declare-fun b!438019 () Bool)

(declare-fun res!194148 () Bool)

(assert (=> b!438019 (=> (not res!194148) (not e!267558))))

(declare-fun seqFromList!1032 (List!4315) BalanceConc!2984)

(assert (=> b!438019 (= res!194148 (= (list!1899 (seqFromList!1032 lt!192658)) lt!192679))))

(declare-fun b!438020 () Bool)

(declare-fun e!267547 () Bool)

(assert (=> b!438020 (= e!267547 (not (= lt!192658 (++!1238 lt!192671 lt!192638))))))

(declare-fun b!438021 () Bool)

(assert (=> b!438021 (= e!267543 false)))

(declare-fun b!438022 () Bool)

(assert (=> b!438022 (= e!267548 e!267572)))

(declare-fun res!194153 () Bool)

(assert (=> b!438022 (=> (not res!194153) (not e!267572))))

(declare-fun rulesProduceEachTokenIndividually!511 (LexerInterface!719 List!4316 BalanceConc!2986) Bool)

(assert (=> b!438022 (= res!194153 (rulesProduceEachTokenIndividually!511 thiss!17480 rules!1920 lt!192646))))

(assert (=> b!438022 (= lt!192646 (seqFromList!1031 tokens!465))))

(declare-fun b!438023 () Bool)

(declare-fun e!267556 () Bool)

(declare-fun e!267583 () Bool)

(assert (=> b!438023 (= e!267556 e!267583)))

(declare-fun res!194158 () Bool)

(assert (=> b!438023 (=> res!194158 e!267583)))

(declare-fun lt!192666 () Option!1082)

(assert (=> b!438023 (= res!194158 (not (isDefined!920 lt!192666)))))

(assert (=> b!438023 (= lt!192666 (maxPrefix!435 thiss!17480 rules!1920 lt!192667))))

(declare-fun b!438024 () Bool)

(declare-fun e!267545 () Bool)

(assert (=> b!438024 (= e!267559 e!267545)))

(declare-fun res!194154 () Bool)

(assert (=> b!438024 (=> res!194154 e!267545)))

(assert (=> b!438024 (= res!194154 e!267547)))

(declare-fun res!194149 () Bool)

(assert (=> b!438024 (=> (not res!194149) (not e!267547))))

(declare-fun lt!192640 () Bool)

(assert (=> b!438024 (= res!194149 (not lt!192640))))

(assert (=> b!438024 (= lt!192640 (= lt!192658 lt!192651))))

(declare-fun b!438025 () Bool)

(declare-fun e!267555 () Bool)

(assert (=> b!438025 (= e!267555 e!267556)))

(declare-fun res!194169 () Bool)

(assert (=> b!438025 (=> res!194169 e!267556)))

(declare-fun contains!942 (List!4316 Rule!1466) Bool)

(assert (=> b!438025 (= res!194169 (not (contains!942 rules!1920 (rule!1508 separatorToken!170))))))

(declare-fun lt!192654 () Unit!7589)

(assert (=> b!438025 (= lt!192654 e!267573)))

(declare-fun c!88709 () Bool)

(declare-fun contains!943 (List!4315 C!3036) Bool)

(declare-fun usedCharacters!134 (Regex!1057) List!4315)

(assert (=> b!438025 (= c!88709 (contains!943 (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170))) lt!192678))))

(declare-fun head!1067 (List!4315) C!3036)

(assert (=> b!438025 (= lt!192678 (head!1067 lt!192638))))

(declare-fun lt!192661 () Unit!7589)

(assert (=> b!438025 (= lt!192661 e!267552)))

(declare-fun c!88708 () Bool)

(assert (=> b!438025 (= c!88708 (not (contains!943 (usedCharacters!134 (regex!833 (rule!1508 lt!192655))) lt!192665)))))

(assert (=> b!438025 (= lt!192665 (head!1067 lt!192657))))

(declare-fun e!267566 () Bool)

(assert (=> b!438025 e!267566))

(declare-fun res!194155 () Bool)

(assert (=> b!438025 (=> (not res!194155) (not e!267566))))

(declare-fun lt!192652 () Option!1081)

(declare-fun isDefined!921 (Option!1081) Bool)

(assert (=> b!438025 (= res!194155 (isDefined!921 lt!192652))))

(declare-fun getRuleFromTag!192 (LexerInterface!719 List!4316 String!5355) Option!1081)

(assert (=> b!438025 (= lt!192652 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 lt!192655))))))

(declare-fun lt!192682 () Unit!7589)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!192 (LexerInterface!719 List!4316 List!4315 Token!1410) Unit!7589)

(assert (=> b!438025 (= lt!192682 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!192 thiss!17480 rules!1920 lt!192657 lt!192655))))

(assert (=> b!438025 (= lt!192657 (list!1899 (charsOf!476 lt!192655)))))

(declare-fun lt!192669 () Unit!7589)

(declare-fun forallContained!386 (List!4317 Int Token!1410) Unit!7589)

(assert (=> b!438025 (= lt!192669 (forallContained!386 tokens!465 lambda!12712 lt!192655))))

(assert (=> b!438025 e!267574))

(declare-fun res!194150 () Bool)

(assert (=> b!438025 (=> (not res!194150) (not e!267574))))

(declare-fun size!3527 (BalanceConc!2986) Int)

(assert (=> b!438025 (= res!194150 (= (size!3527 (_1!2801 lt!192656)) 1))))

(declare-fun lt!192641 () BalanceConc!2984)

(declare-fun lex!511 (LexerInterface!719 List!4316 BalanceConc!2984) tuple2!5170)

(assert (=> b!438025 (= lt!192656 (lex!511 thiss!17480 rules!1920 lt!192641))))

(declare-fun lt!192644 () BalanceConc!2986)

(declare-fun printTailRec!405 (LexerInterface!719 BalanceConc!2986 Int BalanceConc!2984) BalanceConc!2984)

(assert (=> b!438025 (= lt!192641 (printTailRec!405 thiss!17480 lt!192644 0 (BalanceConc!2985 Empty!1488)))))

(declare-fun print!444 (LexerInterface!719 BalanceConc!2986) BalanceConc!2984)

(assert (=> b!438025 (= lt!192641 (print!444 thiss!17480 lt!192644))))

(declare-fun singletonSeq!379 (Token!1410) BalanceConc!2986)

(assert (=> b!438025 (= lt!192644 (singletonSeq!379 lt!192655))))

(assert (=> b!438025 e!267550))

(declare-fun res!194163 () Bool)

(assert (=> b!438025 (=> (not res!194163) (not e!267550))))

(assert (=> b!438025 (= res!194163 (isDefined!921 lt!192660))))

(assert (=> b!438025 (= lt!192660 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 separatorToken!170))))))

(declare-fun lt!192649 () Unit!7589)

(assert (=> b!438025 (= lt!192649 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!192 thiss!17480 rules!1920 lt!192667 separatorToken!170))))

(declare-fun e!267578 () Bool)

(assert (=> b!438025 e!267578))

(declare-fun res!194167 () Bool)

(assert (=> b!438025 (=> (not res!194167) (not e!267578))))

(declare-fun lt!192634 () tuple2!5170)

(assert (=> b!438025 (= res!194167 (= (size!3527 (_1!2801 lt!192634)) 1))))

(declare-fun lt!192635 () BalanceConc!2984)

(assert (=> b!438025 (= lt!192634 (lex!511 thiss!17480 rules!1920 lt!192635))))

(declare-fun lt!192648 () BalanceConc!2986)

(assert (=> b!438025 (= lt!192635 (printTailRec!405 thiss!17480 lt!192648 0 (BalanceConc!2985 Empty!1488)))))

(assert (=> b!438025 (= lt!192635 (print!444 thiss!17480 lt!192648))))

(assert (=> b!438025 (= lt!192648 (singletonSeq!379 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!468 (LexerInterface!719 List!4316 Token!1410) Bool)

(assert (=> b!438025 (rulesProduceIndividualToken!468 thiss!17480 rules!1920 lt!192655)))

(declare-fun lt!192650 () Unit!7589)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!182 (LexerInterface!719 List!4316 List!4317 Token!1410) Unit!7589)

(assert (=> b!438025 (= lt!192650 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!182 thiss!17480 rules!1920 tokens!465 lt!192655))))

(declare-fun head!1068 (List!4317) Token!1410)

(assert (=> b!438025 (= lt!192655 (head!1068 (t!69339 tokens!465)))))

(declare-fun lt!192670 () Unit!7589)

(declare-fun e!267570 () Unit!7589)

(assert (=> b!438025 (= lt!192670 e!267570)))

(declare-fun c!88707 () Bool)

(declare-fun isEmpty!3212 (List!4317) Bool)

(assert (=> b!438025 (= c!88707 (isEmpty!3212 (t!69339 tokens!465)))))

(declare-fun lt!192636 () Option!1082)

(assert (=> b!438025 (= lt!192636 (maxPrefix!435 thiss!17480 rules!1920 lt!192681))))

(declare-fun lt!192673 () tuple2!5172)

(assert (=> b!438025 (= lt!192681 (_2!2802 lt!192673))))

(declare-fun lt!192637 () Unit!7589)

(declare-fun lemmaSamePrefixThenSameSuffix!278 (List!4315 List!4315 List!4315 List!4315 List!4315) Unit!7589)

(assert (=> b!438025 (= lt!192637 (lemmaSamePrefixThenSameSuffix!278 lt!192671 lt!192681 lt!192671 (_2!2802 lt!192673) lt!192658))))

(declare-fun get!1552 (Option!1082) tuple2!5172)

(assert (=> b!438025 (= lt!192673 (get!1552 (maxPrefix!435 thiss!17480 rules!1920 lt!192658)))))

(declare-fun isPrefix!493 (List!4315 List!4315) Bool)

(assert (=> b!438025 (isPrefix!493 lt!192671 lt!192651)))

(declare-fun lt!192643 () Unit!7589)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!384 (List!4315 List!4315) Unit!7589)

(assert (=> b!438025 (= lt!192643 (lemmaConcatTwoListThenFirstIsPrefix!384 lt!192671 lt!192681))))

(assert (=> b!438025 e!267562))

(declare-fun res!194170 () Bool)

(assert (=> b!438025 (=> res!194170 e!267562)))

(assert (=> b!438025 (= res!194170 (isEmpty!3212 tokens!465))))

(declare-fun lt!192664 () Unit!7589)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!240 (LexerInterface!719 List!4316 List!4317 Token!1410) Unit!7589)

(assert (=> b!438025 (= lt!192664 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!240 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!438026 () Bool)

(declare-fun Unit!7594 () Unit!7589)

(assert (=> b!438026 (= e!267570 Unit!7594)))

(assert (=> b!438026 false))

(declare-fun b!438027 () Bool)

(assert (=> b!438027 (= e!267583 e!267551)))

(declare-fun res!194143 () Bool)

(assert (=> b!438027 (=> res!194143 e!267551)))

(assert (=> b!438027 (= res!194143 (not (= (_1!2802 lt!192653) separatorToken!170)))))

(assert (=> b!438027 (= lt!192653 (get!1552 lt!192666))))

(declare-fun b!438028 () Bool)

(declare-fun Unit!7595 () Unit!7589)

(assert (=> b!438028 (= e!267570 Unit!7595)))

(declare-fun b!438029 () Bool)

(declare-fun res!194164 () Bool)

(assert (=> b!438029 (=> (not res!194164) (not e!267578))))

(assert (=> b!438029 (= res!194164 (= (apply!1070 (_1!2801 lt!192634) 0) separatorToken!170))))

(declare-fun b!438030 () Bool)

(declare-fun res!194140 () Bool)

(assert (=> b!438030 (=> res!194140 e!267556)))

(assert (=> b!438030 (= res!194140 (not (contains!942 rules!1920 (rule!1508 lt!192655))))))

(declare-fun b!438031 () Bool)

(assert (=> b!438031 (= e!267560 (not (isEmpty!3210 lt!192638)))))

(declare-fun b!438032 () Bool)

(declare-fun e!267579 () Bool)

(assert (=> b!438032 (= e!267579 e!267555)))

(declare-fun res!194168 () Bool)

(assert (=> b!438032 (=> res!194168 e!267555)))

(assert (=> b!438032 (= res!194168 (not lt!192640))))

(declare-fun e!267569 () Bool)

(assert (=> b!438032 e!267569))

(declare-fun res!194145 () Bool)

(assert (=> b!438032 (=> (not res!194145) (not e!267569))))

(declare-fun lt!192663 () tuple2!5172)

(assert (=> b!438032 (= res!194145 (= (_1!2802 lt!192663) (h!9704 tokens!465)))))

(declare-fun lt!192642 () Option!1082)

(assert (=> b!438032 (= lt!192663 (get!1552 lt!192642))))

(assert (=> b!438032 (isDefined!920 lt!192642)))

(assert (=> b!438032 (= lt!192642 (maxPrefix!435 thiss!17480 rules!1920 lt!192671))))

(declare-fun b!438033 () Bool)

(declare-fun res!194166 () Bool)

(assert (=> b!438033 (=> res!194166 e!267556)))

(assert (=> b!438033 (= res!194166 (isSeparator!833 (rule!1508 lt!192655)))))

(declare-fun b!438034 () Bool)

(assert (=> b!438034 (= e!267569 (matchR!375 (regex!833 (rule!1508 (h!9704 tokens!465))) lt!192671))))

(declare-fun b!438035 () Bool)

(declare-fun tp!124069 () Bool)

(declare-fun inv!21 (TokenValue!855) Bool)

(assert (=> b!438035 (= e!267544 (and (inv!21 (value!28056 separatorToken!170)) e!267581 tp!124069))))

(declare-fun b!438036 () Bool)

(declare-fun e!267557 () Bool)

(declare-fun tp!124074 () Bool)

(assert (=> b!438036 (= e!267554 (and e!267557 tp!124074))))

(declare-fun b!438037 () Bool)

(declare-fun Unit!7596 () Unit!7589)

(assert (=> b!438037 (= e!267573 Unit!7596)))

(declare-fun b!438038 () Bool)

(declare-fun res!194144 () Bool)

(declare-fun e!267563 () Bool)

(assert (=> b!438038 (=> res!194144 e!267563)))

(declare-fun isEmpty!3213 (BalanceConc!2986) Bool)

(assert (=> b!438038 (= res!194144 (isEmpty!3213 (_1!2801 (lex!511 thiss!17480 rules!1920 (seqFromList!1032 lt!192671)))))))

(declare-fun res!194152 () Bool)

(assert (=> b!438039 (=> (not res!194152) (not e!267572))))

(declare-fun forall!1234 (List!4317 Int) Bool)

(assert (=> b!438039 (= res!194152 (forall!1234 tokens!465 lambda!12711))))

(declare-fun b!438040 () Bool)

(declare-fun res!194151 () Bool)

(assert (=> b!438040 (=> (not res!194151) (not e!267569))))

(assert (=> b!438040 (= res!194151 (isEmpty!3210 (_2!2802 lt!192663)))))

(declare-fun b!438041 () Bool)

(declare-fun tp!124075 () Bool)

(declare-fun e!267565 () Bool)

(assert (=> b!438041 (= e!267553 (and (inv!5370 (h!9704 tokens!465)) e!267565 tp!124075))))

(declare-fun b!438042 () Bool)

(declare-fun e!267576 () Bool)

(declare-fun lt!192675 () Rule!1466)

(assert (=> b!438042 (= e!267576 (= (rule!1508 lt!192655) lt!192675))))

(declare-fun e!267549 () Bool)

(declare-fun tp!124071 () Bool)

(declare-fun e!267568 () Bool)

(declare-fun b!438043 () Bool)

(assert (=> b!438043 (= e!267568 (and tp!124071 (inv!5366 (tag!1083 (rule!1508 (h!9704 tokens!465)))) (inv!5369 (transformation!833 (rule!1508 (h!9704 tokens!465)))) e!267549))))

(declare-fun b!438044 () Bool)

(declare-fun res!194156 () Bool)

(assert (=> b!438044 (=> (not res!194156) (not e!267572))))

(assert (=> b!438044 (= res!194156 (rulesProduceIndividualToken!468 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!438045 () Bool)

(declare-fun res!194157 () Bool)

(assert (=> b!438045 (=> (not res!194157) (not e!267548))))

(declare-fun isEmpty!3214 (List!4316) Bool)

(assert (=> b!438045 (= res!194157 (not (isEmpty!3214 rules!1920)))))

(declare-fun b!438046 () Bool)

(declare-fun res!194172 () Bool)

(assert (=> b!438046 (=> (not res!194172) (not e!267572))))

(declare-fun sepAndNonSepRulesDisjointChars!422 (List!4316 List!4316) Bool)

(assert (=> b!438046 (= res!194172 (sepAndNonSepRulesDisjointChars!422 rules!1920 rules!1920))))

(assert (=> b!438047 (= e!267563 e!267579)))

(declare-fun res!194171 () Bool)

(assert (=> b!438047 (=> res!194171 e!267579)))

(declare-datatypes ((tuple2!5174 0))(
  ( (tuple2!5175 (_1!2803 Token!1410) (_2!2803 BalanceConc!2984)) )
))
(declare-datatypes ((Option!1083 0))(
  ( (None!1082) (Some!1082 (v!15347 tuple2!5174)) )
))
(declare-fun isDefined!922 (Option!1083) Bool)

(declare-fun maxPrefixZipperSequence!398 (LexerInterface!719 List!4316 BalanceConc!2984) Option!1083)

(assert (=> b!438047 (= res!194171 (not (isDefined!922 (maxPrefixZipperSequence!398 thiss!17480 rules!1920 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))))

(declare-fun lt!192674 () Unit!7589)

(assert (=> b!438047 (= lt!192674 (forallContained!386 tokens!465 lambda!12712 (h!9704 tokens!465)))))

(assert (=> b!438047 (= lt!192671 (originalCharacters!876 (h!9704 tokens!465)))))

(declare-fun b!438048 () Bool)

(assert (=> b!438048 (= e!267561 (= (rule!1508 separatorToken!170) lt!192647))))

(declare-fun b!438049 () Bool)

(assert (=> b!438049 (= e!267566 e!267576)))

(declare-fun res!194139 () Bool)

(assert (=> b!438049 (=> (not res!194139) (not e!267576))))

(assert (=> b!438049 (= res!194139 (matchR!375 (regex!833 lt!192675) lt!192657))))

(assert (=> b!438049 (= lt!192675 (get!1551 lt!192652))))

(declare-fun tp!124068 () Bool)

(declare-fun b!438050 () Bool)

(assert (=> b!438050 (= e!267557 (and tp!124068 (inv!5366 (tag!1083 (h!9703 rules!1920))) (inv!5369 (transformation!833 (h!9703 rules!1920))) e!267564))))

(declare-fun b!438051 () Bool)

(assert (=> b!438051 (= e!267578 (isEmpty!3211 (_2!2801 lt!192634)))))

(declare-fun tp!124065 () Bool)

(declare-fun b!438052 () Bool)

(assert (=> b!438052 (= e!267565 (and (inv!21 (value!28056 (h!9704 tokens!465))) e!267568 tp!124065))))

(declare-fun b!438053 () Bool)

(declare-fun res!194137 () Bool)

(assert (=> b!438053 (=> (not res!194137) (not e!267572))))

(assert (=> b!438053 (= res!194137 (isSeparator!833 (rule!1508 separatorToken!170)))))

(declare-fun b!438054 () Bool)

(declare-fun res!194160 () Bool)

(assert (=> b!438054 (=> res!194160 e!267563)))

(assert (=> b!438054 (= res!194160 (not (rulesProduceIndividualToken!468 thiss!17480 rules!1920 (h!9704 tokens!465))))))

(declare-fun b!438055 () Bool)

(assert (=> b!438055 (= e!267582 (= (_1!2802 (get!1552 lt!192677)) (head!1068 tokens!465)))))

(declare-fun b!438056 () Bool)

(assert (=> b!438056 (= e!267545 e!267563)))

(declare-fun res!194161 () Bool)

(assert (=> b!438056 (=> res!194161 e!267563)))

(declare-fun lt!192645 () List!4315)

(declare-fun lt!192672 () List!4315)

(assert (=> b!438056 (= res!194161 (or (not (= lt!192672 lt!192645)) (not (= lt!192645 lt!192671)) (not (= lt!192672 lt!192671))))))

(declare-fun printList!393 (LexerInterface!719 List!4317) List!4315)

(assert (=> b!438056 (= lt!192645 (printList!393 thiss!17480 (Cons!4307 (h!9704 tokens!465) Nil!4307)))))

(declare-fun lt!192676 () BalanceConc!2984)

(assert (=> b!438056 (= lt!192672 (list!1899 lt!192676))))

(declare-fun lt!192680 () BalanceConc!2986)

(assert (=> b!438056 (= lt!192676 (printTailRec!405 thiss!17480 lt!192680 0 (BalanceConc!2985 Empty!1488)))))

(assert (=> b!438056 (= lt!192676 (print!444 thiss!17480 lt!192680))))

(assert (=> b!438056 (= lt!192680 (singletonSeq!379 (h!9704 tokens!465)))))

(assert (=> b!438057 (= e!267549 (and tp!124073 tp!124063))))

(assert (= (and start!41242 res!194142) b!438045))

(assert (= (and b!438045 res!194157) b!438009))

(assert (= (and b!438009 res!194174) b!438022))

(assert (= (and b!438022 res!194153) b!438044))

(assert (= (and b!438044 res!194156) b!438053))

(assert (= (and b!438053 res!194137) b!438039))

(assert (= (and b!438039 res!194152) b!438046))

(assert (= (and b!438046 res!194172) b!438010))

(assert (= (and b!438010 res!194141) b!438013))

(assert (= (and b!438013 res!194147) b!438019))

(assert (= (and b!438019 res!194148) b!438005))

(assert (= (and b!438005 (not res!194175)) b!438024))

(assert (= (and b!438024 res!194149) b!438020))

(assert (= (and b!438024 (not res!194154)) b!438056))

(assert (= (and b!438056 (not res!194161)) b!438054))

(assert (= (and b!438054 (not res!194160)) b!438038))

(assert (= (and b!438038 (not res!194144)) b!438047))

(assert (= (and b!438047 (not res!194171)) b!438032))

(assert (= (and b!438032 res!194145) b!438040))

(assert (= (and b!438040 res!194151) b!438034))

(assert (= (and b!438032 (not res!194168)) b!438025))

(assert (= (and b!438025 (not res!194170)) b!438014))

(assert (= (and b!438014 res!194159) b!438055))

(assert (= (and b!438025 c!88707) b!438026))

(assert (= (and b!438025 (not c!88707)) b!438028))

(assert (= (and b!438025 res!194167) b!438029))

(assert (= (and b!438029 res!194164) b!438051))

(assert (= (and b!438025 res!194163) b!438012))

(assert (= (and b!438012 res!194146) b!438048))

(assert (= (and b!438025 res!194150) b!438004))

(assert (= (and b!438004 res!194165) b!438018))

(assert (= (and b!438025 res!194155) b!438049))

(assert (= (and b!438049 res!194139) b!438042))

(assert (= (and b!438025 c!88708) b!438011))

(assert (= (and b!438025 (not c!88708)) b!438015))

(assert (= (and b!438011 res!194162) b!438021))

(assert (= (and b!438025 c!88709) b!438008))

(assert (= (and b!438025 (not c!88709)) b!438037))

(assert (= (and b!438025 (not res!194169)) b!438030))

(assert (= (and b!438030 (not res!194140)) b!438033))

(assert (= (and b!438033 (not res!194166)) b!438023))

(assert (= (and b!438023 (not res!194158)) b!438027))

(assert (= (and b!438027 (not res!194143)) b!438007))

(assert (= (and b!438007 (not res!194173)) b!438003))

(assert (= (and b!438003 (not res!194138)) b!438031))

(assert (= b!438050 b!438006))

(assert (= b!438036 b!438050))

(assert (= (and start!41242 ((_ is Cons!4306) rules!1920)) b!438036))

(assert (= b!438016 b!438017))

(assert (= b!438035 b!438016))

(assert (= start!41242 b!438035))

(assert (= b!438043 b!438057))

(assert (= b!438052 b!438043))

(assert (= b!438041 b!438052))

(assert (= (and start!41242 ((_ is Cons!4307) tokens!465)) b!438041))

(declare-fun m!689345 () Bool)

(assert (=> b!438016 m!689345))

(declare-fun m!689347 () Bool)

(assert (=> b!438016 m!689347))

(declare-fun m!689349 () Bool)

(assert (=> b!438032 m!689349))

(declare-fun m!689351 () Bool)

(assert (=> b!438032 m!689351))

(declare-fun m!689353 () Bool)

(assert (=> b!438032 m!689353))

(declare-fun m!689355 () Bool)

(assert (=> b!438054 m!689355))

(declare-fun m!689357 () Bool)

(assert (=> b!438023 m!689357))

(declare-fun m!689359 () Bool)

(assert (=> b!438023 m!689359))

(declare-fun m!689361 () Bool)

(assert (=> b!438030 m!689361))

(declare-fun m!689363 () Bool)

(assert (=> b!438056 m!689363))

(declare-fun m!689365 () Bool)

(assert (=> b!438056 m!689365))

(declare-fun m!689367 () Bool)

(assert (=> b!438056 m!689367))

(declare-fun m!689369 () Bool)

(assert (=> b!438056 m!689369))

(declare-fun m!689371 () Bool)

(assert (=> b!438056 m!689371))

(declare-fun m!689373 () Bool)

(assert (=> b!438045 m!689373))

(declare-fun m!689375 () Bool)

(assert (=> b!438009 m!689375))

(declare-fun m!689377 () Bool)

(assert (=> b!438031 m!689377))

(declare-fun m!689379 () Bool)

(assert (=> b!438003 m!689379))

(declare-fun m!689381 () Bool)

(assert (=> b!438003 m!689381))

(declare-fun m!689383 () Bool)

(assert (=> b!438003 m!689383))

(declare-fun m!689385 () Bool)

(assert (=> b!438011 m!689385))

(declare-fun m!689387 () Bool)

(assert (=> b!438011 m!689387))

(declare-fun m!689389 () Bool)

(assert (=> b!438018 m!689389))

(declare-fun m!689391 () Bool)

(assert (=> b!438020 m!689391))

(declare-fun m!689393 () Bool)

(assert (=> b!438019 m!689393))

(assert (=> b!438019 m!689393))

(declare-fun m!689395 () Bool)

(assert (=> b!438019 m!689395))

(declare-fun m!689397 () Bool)

(assert (=> b!438055 m!689397))

(declare-fun m!689399 () Bool)

(assert (=> b!438055 m!689399))

(declare-fun m!689401 () Bool)

(assert (=> b!438005 m!689401))

(declare-fun m!689403 () Bool)

(assert (=> b!438005 m!689403))

(declare-fun m!689405 () Bool)

(assert (=> b!438005 m!689405))

(declare-fun m!689407 () Bool)

(assert (=> b!438005 m!689407))

(assert (=> b!438005 m!689405))

(declare-fun m!689409 () Bool)

(assert (=> b!438005 m!689409))

(declare-fun m!689411 () Bool)

(assert (=> b!438005 m!689411))

(assert (=> b!438005 m!689401))

(declare-fun m!689413 () Bool)

(assert (=> b!438005 m!689413))

(declare-fun m!689415 () Bool)

(assert (=> b!438005 m!689415))

(declare-fun m!689417 () Bool)

(assert (=> b!438005 m!689417))

(assert (=> b!438005 m!689415))

(declare-fun m!689419 () Bool)

(assert (=> b!438005 m!689419))

(declare-fun m!689421 () Bool)

(assert (=> b!438005 m!689421))

(assert (=> b!438005 m!689417))

(declare-fun m!689423 () Bool)

(assert (=> b!438005 m!689423))

(assert (=> b!438005 m!689413))

(declare-fun m!689425 () Bool)

(assert (=> b!438005 m!689425))

(declare-fun m!689427 () Bool)

(assert (=> b!438007 m!689427))

(declare-fun m!689429 () Bool)

(assert (=> b!438039 m!689429))

(declare-fun m!689431 () Bool)

(assert (=> b!438052 m!689431))

(declare-fun m!689433 () Bool)

(assert (=> b!438008 m!689433))

(declare-fun m!689435 () Bool)

(assert (=> b!438022 m!689435))

(declare-fun m!689437 () Bool)

(assert (=> b!438022 m!689437))

(declare-fun m!689439 () Bool)

(assert (=> b!438047 m!689439))

(assert (=> b!438047 m!689439))

(declare-fun m!689441 () Bool)

(assert (=> b!438047 m!689441))

(assert (=> b!438047 m!689441))

(declare-fun m!689443 () Bool)

(assert (=> b!438047 m!689443))

(declare-fun m!689445 () Bool)

(assert (=> b!438047 m!689445))

(declare-fun m!689447 () Bool)

(assert (=> b!438035 m!689447))

(declare-fun m!689449 () Bool)

(assert (=> b!438027 m!689449))

(declare-fun m!689451 () Bool)

(assert (=> b!438025 m!689451))

(declare-fun m!689453 () Bool)

(assert (=> b!438025 m!689453))

(declare-fun m!689455 () Bool)

(assert (=> b!438025 m!689455))

(declare-fun m!689457 () Bool)

(assert (=> b!438025 m!689457))

(declare-fun m!689459 () Bool)

(assert (=> b!438025 m!689459))

(declare-fun m!689461 () Bool)

(assert (=> b!438025 m!689461))

(declare-fun m!689463 () Bool)

(assert (=> b!438025 m!689463))

(declare-fun m!689465 () Bool)

(assert (=> b!438025 m!689465))

(declare-fun m!689467 () Bool)

(assert (=> b!438025 m!689467))

(declare-fun m!689469 () Bool)

(assert (=> b!438025 m!689469))

(declare-fun m!689471 () Bool)

(assert (=> b!438025 m!689471))

(declare-fun m!689473 () Bool)

(assert (=> b!438025 m!689473))

(declare-fun m!689475 () Bool)

(assert (=> b!438025 m!689475))

(declare-fun m!689477 () Bool)

(assert (=> b!438025 m!689477))

(declare-fun m!689479 () Bool)

(assert (=> b!438025 m!689479))

(declare-fun m!689481 () Bool)

(assert (=> b!438025 m!689481))

(declare-fun m!689483 () Bool)

(assert (=> b!438025 m!689483))

(declare-fun m!689485 () Bool)

(assert (=> b!438025 m!689485))

(declare-fun m!689487 () Bool)

(assert (=> b!438025 m!689487))

(declare-fun m!689489 () Bool)

(assert (=> b!438025 m!689489))

(declare-fun m!689491 () Bool)

(assert (=> b!438025 m!689491))

(declare-fun m!689493 () Bool)

(assert (=> b!438025 m!689493))

(assert (=> b!438025 m!689487))

(declare-fun m!689495 () Bool)

(assert (=> b!438025 m!689495))

(declare-fun m!689497 () Bool)

(assert (=> b!438025 m!689497))

(declare-fun m!689499 () Bool)

(assert (=> b!438025 m!689499))

(declare-fun m!689501 () Bool)

(assert (=> b!438025 m!689501))

(declare-fun m!689503 () Bool)

(assert (=> b!438025 m!689503))

(declare-fun m!689505 () Bool)

(assert (=> b!438025 m!689505))

(declare-fun m!689507 () Bool)

(assert (=> b!438025 m!689507))

(declare-fun m!689509 () Bool)

(assert (=> b!438025 m!689509))

(declare-fun m!689511 () Bool)

(assert (=> b!438025 m!689511))

(declare-fun m!689513 () Bool)

(assert (=> b!438025 m!689513))

(declare-fun m!689515 () Bool)

(assert (=> b!438025 m!689515))

(declare-fun m!689517 () Bool)

(assert (=> b!438025 m!689517))

(assert (=> b!438025 m!689451))

(declare-fun m!689519 () Bool)

(assert (=> b!438025 m!689519))

(declare-fun m!689521 () Bool)

(assert (=> b!438025 m!689521))

(assert (=> b!438025 m!689485))

(declare-fun m!689523 () Bool)

(assert (=> b!438025 m!689523))

(declare-fun m!689525 () Bool)

(assert (=> b!438025 m!689525))

(assert (=> b!438025 m!689479))

(declare-fun m!689527 () Bool)

(assert (=> b!438040 m!689527))

(declare-fun m!689529 () Bool)

(assert (=> b!438013 m!689529))

(assert (=> b!438013 m!689529))

(declare-fun m!689531 () Bool)

(assert (=> b!438013 m!689531))

(declare-fun m!689533 () Bool)

(assert (=> b!438013 m!689533))

(declare-fun m!689535 () Bool)

(assert (=> b!438041 m!689535))

(declare-fun m!689537 () Bool)

(assert (=> b!438034 m!689537))

(declare-fun m!689539 () Bool)

(assert (=> b!438038 m!689539))

(assert (=> b!438038 m!689539))

(declare-fun m!689541 () Bool)

(assert (=> b!438038 m!689541))

(declare-fun m!689543 () Bool)

(assert (=> b!438038 m!689543))

(declare-fun m!689545 () Bool)

(assert (=> b!438029 m!689545))

(declare-fun m!689547 () Bool)

(assert (=> b!438049 m!689547))

(declare-fun m!689549 () Bool)

(assert (=> b!438049 m!689549))

(declare-fun m!689551 () Bool)

(assert (=> b!438014 m!689551))

(assert (=> b!438014 m!689487))

(declare-fun m!689553 () Bool)

(assert (=> b!438046 m!689553))

(declare-fun m!689555 () Bool)

(assert (=> b!438004 m!689555))

(declare-fun m!689557 () Bool)

(assert (=> b!438051 m!689557))

(declare-fun m!689559 () Bool)

(assert (=> start!41242 m!689559))

(declare-fun m!689561 () Bool)

(assert (=> b!438012 m!689561))

(declare-fun m!689563 () Bool)

(assert (=> b!438012 m!689563))

(declare-fun m!689565 () Bool)

(assert (=> b!438044 m!689565))

(declare-fun m!689567 () Bool)

(assert (=> b!438043 m!689567))

(declare-fun m!689569 () Bool)

(assert (=> b!438043 m!689569))

(declare-fun m!689571 () Bool)

(assert (=> b!438050 m!689571))

(declare-fun m!689573 () Bool)

(assert (=> b!438050 m!689573))

(check-sat (not b_next!12233) (not b!438044) (not b!438035) (not b!438011) (not b!438008) b_and!47247 (not b_next!12241) (not b!438054) (not b!438056) (not b!438052) (not b!438041) (not b!438034) (not b!438022) b_and!47245 (not b!438018) b_and!47239 (not b!438004) (not start!41242) (not b_next!12243) (not b!438040) (not b_next!12237) (not b!438032) (not b!438029) (not b_next!12239) (not b!438045) (not b!438038) (not b!438039) b_and!47241 (not b!438043) (not b!438007) (not b!438030) (not b!438005) (not b!438009) b_and!47237 (not b!438055) (not b!438031) b_and!47243 (not b!438046) (not b!438016) (not b!438027) (not b!438036) (not b_next!12235) (not b!438047) (not b!438023) (not b!438019) (not b!438049) (not b!438051) (not b!438012) (not b!438050) (not b!438025) (not b!438020) (not b!438014) (not b!438066) (not b!438003) (not b!438013))
(check-sat (not b_next!12233) (not b_next!12243) (not b_next!12237) (not b_next!12239) b_and!47241 b_and!47237 b_and!47243 (not b_next!12235) b_and!47247 (not b_next!12241) b_and!47245 b_and!47239)
(get-model)

(declare-fun d!166976 () Bool)

(assert (=> d!166976 (= (inv!5366 (tag!1083 (rule!1508 separatorToken!170))) (= (mod (str.len (value!28055 (tag!1083 (rule!1508 separatorToken!170)))) 2) 0))))

(assert (=> b!438016 d!166976))

(declare-fun d!166978 () Bool)

(declare-fun res!194193 () Bool)

(declare-fun e!267595 () Bool)

(assert (=> d!166978 (=> (not res!194193) (not e!267595))))

(declare-fun semiInverseModEq!328 (Int Int) Bool)

(assert (=> d!166978 (= res!194193 (semiInverseModEq!328 (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toValue!1640 (transformation!833 (rule!1508 separatorToken!170)))))))

(assert (=> d!166978 (= (inv!5369 (transformation!833 (rule!1508 separatorToken!170))) e!267595)))

(declare-fun b!438073 () Bool)

(declare-fun equivClasses!311 (Int Int) Bool)

(assert (=> b!438073 (= e!267595 (equivClasses!311 (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toValue!1640 (transformation!833 (rule!1508 separatorToken!170)))))))

(assert (= (and d!166978 res!194193) b!438073))

(declare-fun m!689577 () Bool)

(assert (=> d!166978 m!689577))

(declare-fun m!689579 () Bool)

(assert (=> b!438073 m!689579))

(assert (=> b!438016 d!166978))

(declare-fun d!166980 () Bool)

(declare-fun lt!192685 () Bool)

(declare-fun list!1902 (BalanceConc!2986) List!4317)

(assert (=> d!166980 (= lt!192685 (isEmpty!3212 (list!1902 (_1!2801 (lex!511 thiss!17480 rules!1920 (seqFromList!1032 lt!192671))))))))

(declare-fun isEmpty!3216 (Conc!1489) Bool)

(assert (=> d!166980 (= lt!192685 (isEmpty!3216 (c!88712 (_1!2801 (lex!511 thiss!17480 rules!1920 (seqFromList!1032 lt!192671))))))))

(assert (=> d!166980 (= (isEmpty!3213 (_1!2801 (lex!511 thiss!17480 rules!1920 (seqFromList!1032 lt!192671)))) lt!192685)))

(declare-fun bs!54096 () Bool)

(assert (= bs!54096 d!166980))

(declare-fun m!689581 () Bool)

(assert (=> bs!54096 m!689581))

(assert (=> bs!54096 m!689581))

(declare-fun m!689583 () Bool)

(assert (=> bs!54096 m!689583))

(declare-fun m!689585 () Bool)

(assert (=> bs!54096 m!689585))

(assert (=> b!438038 d!166980))

(declare-fun b!438102 () Bool)

(declare-fun e!267615 () Bool)

(declare-fun e!267616 () Bool)

(assert (=> b!438102 (= e!267615 e!267616)))

(declare-fun res!194207 () Bool)

(declare-fun lt!192716 () tuple2!5170)

(declare-fun size!3528 (BalanceConc!2984) Int)

(assert (=> b!438102 (= res!194207 (< (size!3528 (_2!2801 lt!192716)) (size!3528 (seqFromList!1032 lt!192671))))))

(assert (=> b!438102 (=> (not res!194207) (not e!267616))))

(declare-fun b!438103 () Bool)

(declare-fun res!194208 () Bool)

(declare-fun e!267614 () Bool)

(assert (=> b!438103 (=> (not res!194208) (not e!267614))))

(declare-datatypes ((tuple2!5176 0))(
  ( (tuple2!5177 (_1!2804 List!4317) (_2!2804 List!4315)) )
))
(declare-fun lexList!276 (LexerInterface!719 List!4316 List!4315) tuple2!5176)

(assert (=> b!438103 (= res!194208 (= (list!1902 (_1!2801 lt!192716)) (_1!2804 (lexList!276 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 lt!192671))))))))

(declare-fun b!438104 () Bool)

(assert (=> b!438104 (= e!267614 (= (list!1899 (_2!2801 lt!192716)) (_2!2804 (lexList!276 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 lt!192671))))))))

(declare-fun d!166982 () Bool)

(assert (=> d!166982 e!267614))

(declare-fun res!194206 () Bool)

(assert (=> d!166982 (=> (not res!194206) (not e!267614))))

(assert (=> d!166982 (= res!194206 e!267615)))

(declare-fun c!88721 () Bool)

(assert (=> d!166982 (= c!88721 (> (size!3527 (_1!2801 lt!192716)) 0))))

(declare-fun lexTailRecV2!244 (LexerInterface!719 List!4316 BalanceConc!2984 BalanceConc!2984 BalanceConc!2984 BalanceConc!2986) tuple2!5170)

(assert (=> d!166982 (= lt!192716 (lexTailRecV2!244 thiss!17480 rules!1920 (seqFromList!1032 lt!192671) (BalanceConc!2985 Empty!1488) (seqFromList!1032 lt!192671) (BalanceConc!2987 Empty!1489)))))

(assert (=> d!166982 (= (lex!511 thiss!17480 rules!1920 (seqFromList!1032 lt!192671)) lt!192716)))

(declare-fun b!438105 () Bool)

(assert (=> b!438105 (= e!267616 (not (isEmpty!3213 (_1!2801 lt!192716))))))

(declare-fun b!438106 () Bool)

(assert (=> b!438106 (= e!267615 (= (_2!2801 lt!192716) (seqFromList!1032 lt!192671)))))

(assert (= (and d!166982 c!88721) b!438102))

(assert (= (and d!166982 (not c!88721)) b!438106))

(assert (= (and b!438102 res!194207) b!438105))

(assert (= (and d!166982 res!194206) b!438103))

(assert (= (and b!438103 res!194208) b!438104))

(declare-fun m!689587 () Bool)

(assert (=> b!438105 m!689587))

(declare-fun m!689589 () Bool)

(assert (=> b!438102 m!689589))

(assert (=> b!438102 m!689539))

(declare-fun m!689591 () Bool)

(assert (=> b!438102 m!689591))

(declare-fun m!689593 () Bool)

(assert (=> b!438103 m!689593))

(assert (=> b!438103 m!689539))

(declare-fun m!689595 () Bool)

(assert (=> b!438103 m!689595))

(assert (=> b!438103 m!689595))

(declare-fun m!689597 () Bool)

(assert (=> b!438103 m!689597))

(declare-fun m!689599 () Bool)

(assert (=> b!438104 m!689599))

(assert (=> b!438104 m!689539))

(assert (=> b!438104 m!689595))

(assert (=> b!438104 m!689595))

(assert (=> b!438104 m!689597))

(declare-fun m!689601 () Bool)

(assert (=> d!166982 m!689601))

(assert (=> d!166982 m!689539))

(assert (=> d!166982 m!689539))

(declare-fun m!689603 () Bool)

(assert (=> d!166982 m!689603))

(assert (=> b!438038 d!166982))

(declare-fun d!166984 () Bool)

(declare-fun fromListB!456 (List!4315) BalanceConc!2984)

(assert (=> d!166984 (= (seqFromList!1032 lt!192671) (fromListB!456 lt!192671))))

(declare-fun bs!54097 () Bool)

(assert (= bs!54097 d!166984))

(declare-fun m!689605 () Bool)

(assert (=> bs!54097 m!689605))

(assert (=> b!438038 d!166984))

(declare-fun d!166986 () Bool)

(declare-fun res!194216 () Bool)

(declare-fun e!267627 () Bool)

(assert (=> d!166986 (=> res!194216 e!267627)))

(assert (=> d!166986 (= res!194216 ((_ is Nil!4307) tokens!465))))

(assert (=> d!166986 (= (forall!1234 tokens!465 lambda!12711) e!267627)))

(declare-fun b!438120 () Bool)

(declare-fun e!267628 () Bool)

(assert (=> b!438120 (= e!267627 e!267628)))

(declare-fun res!194217 () Bool)

(assert (=> b!438120 (=> (not res!194217) (not e!267628))))

(declare-fun dynLambda!2563 (Int Token!1410) Bool)

(assert (=> b!438120 (= res!194217 (dynLambda!2563 lambda!12711 (h!9704 tokens!465)))))

(declare-fun b!438121 () Bool)

(assert (=> b!438121 (= e!267628 (forall!1234 (t!69339 tokens!465) lambda!12711))))

(assert (= (and d!166986 (not res!194216)) b!438120))

(assert (= (and b!438120 res!194217) b!438121))

(declare-fun b_lambda!18099 () Bool)

(assert (=> (not b_lambda!18099) (not b!438120)))

(declare-fun m!689607 () Bool)

(assert (=> b!438120 m!689607))

(declare-fun m!689609 () Bool)

(assert (=> b!438121 m!689609))

(assert (=> b!438039 d!166986))

(declare-fun d!166988 () Bool)

(declare-fun list!1903 (Conc!1488) List!4315)

(assert (=> d!166988 (= (list!1899 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 lt!192646 separatorToken!170 0)) (list!1903 (c!88710 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 lt!192646 separatorToken!170 0))))))

(declare-fun bs!54103 () Bool)

(assert (= bs!54103 d!166988))

(declare-fun m!689611 () Bool)

(assert (=> bs!54103 m!689611))

(assert (=> b!438013 d!166988))

(declare-fun bs!54109 () Bool)

(declare-fun d!166990 () Bool)

(assert (= bs!54109 (and d!166990 b!438039)))

(declare-fun lambda!12726 () Int)

(assert (=> bs!54109 (= lambda!12726 lambda!12711)))

(declare-fun bs!54110 () Bool)

(assert (= bs!54110 (and d!166990 b!438047)))

(assert (=> bs!54110 (not (= lambda!12726 lambda!12712))))

(declare-fun bs!54111 () Bool)

(declare-fun b!438200 () Bool)

(assert (= bs!54111 (and b!438200 b!438039)))

(declare-fun lambda!12727 () Int)

(assert (=> bs!54111 (not (= lambda!12727 lambda!12711))))

(declare-fun bs!54112 () Bool)

(assert (= bs!54112 (and b!438200 b!438047)))

(assert (=> bs!54112 (= lambda!12727 lambda!12712)))

(declare-fun bs!54113 () Bool)

(assert (= bs!54113 (and b!438200 d!166990)))

(assert (=> bs!54113 (not (= lambda!12727 lambda!12726))))

(declare-fun b!438207 () Bool)

(declare-fun e!267682 () Bool)

(assert (=> b!438207 (= e!267682 true)))

(declare-fun b!438206 () Bool)

(declare-fun e!267681 () Bool)

(assert (=> b!438206 (= e!267681 e!267682)))

(declare-fun b!438205 () Bool)

(declare-fun e!267680 () Bool)

(assert (=> b!438205 (= e!267680 e!267681)))

(assert (=> b!438200 e!267680))

(assert (= b!438206 b!438207))

(assert (= b!438205 b!438206))

(assert (= (and b!438200 ((_ is Cons!4306) rules!1920)) b!438205))

(assert (=> b!438207 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12727))))

(assert (=> b!438207 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12727))))

(assert (=> b!438200 true))

(declare-fun b!438194 () Bool)

(declare-fun e!267673 () Bool)

(declare-fun lt!192780 () Option!1083)

(assert (=> b!438194 (= e!267673 (= (_1!2803 (v!15347 lt!192780)) (apply!1070 lt!192646 0)))))

(declare-fun b!438195 () Bool)

(declare-fun e!267674 () BalanceConc!2984)

(assert (=> b!438195 (= e!267674 (BalanceConc!2985 Empty!1488))))

(declare-fun call!30119 () Token!1410)

(assert (=> b!438195 (= (print!444 thiss!17480 (singletonSeq!379 call!30119)) (printTailRec!405 thiss!17480 (singletonSeq!379 call!30119) 0 (BalanceConc!2985 Empty!1488)))))

(declare-fun lt!192791 () Unit!7589)

(declare-fun Unit!7601 () Unit!7589)

(assert (=> b!438195 (= lt!192791 Unit!7601)))

(declare-fun lt!192785 () BalanceConc!2984)

(declare-fun lt!192793 () Unit!7589)

(declare-fun call!30116 () BalanceConc!2984)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!180 (LexerInterface!719 List!4316 List!4315 List!4315) Unit!7589)

(assert (=> b!438195 (= lt!192793 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!180 thiss!17480 rules!1920 (list!1899 call!30116) (list!1899 lt!192785)))))

(assert (=> b!438195 false))

(declare-fun lt!192792 () Unit!7589)

(declare-fun Unit!7602 () Unit!7589)

(assert (=> b!438195 (= lt!192792 Unit!7602)))

(declare-fun b!438196 () Bool)

(declare-fun e!267679 () Bool)

(assert (=> b!438196 (= e!267679 (<= 0 (size!3527 lt!192646)))))

(declare-fun b!438197 () Bool)

(declare-fun call!30117 () BalanceConc!2984)

(declare-fun ++!1240 (BalanceConc!2984 BalanceConc!2984) BalanceConc!2984)

(assert (=> b!438197 (= e!267674 (++!1240 call!30117 lt!192785))))

(declare-fun bm!30110 () Bool)

(declare-fun call!30118 () BalanceConc!2984)

(assert (=> bm!30110 (= call!30116 call!30118)))

(declare-fun lt!192782 () BalanceConc!2984)

(declare-fun dropList!232 (BalanceConc!2986 Int) List!4317)

(assert (=> d!166990 (= (list!1899 lt!192782) (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 (dropList!232 lt!192646 0) separatorToken!170))))

(declare-fun e!267677 () BalanceConc!2984)

(assert (=> d!166990 (= lt!192782 e!267677)))

(declare-fun c!88753 () Bool)

(assert (=> d!166990 (= c!88753 (>= 0 (size!3527 lt!192646)))))

(declare-fun lt!192784 () Unit!7589)

(declare-fun lemmaContentSubsetPreservesForall!176 (List!4317 List!4317 Int) Unit!7589)

(assert (=> d!166990 (= lt!192784 (lemmaContentSubsetPreservesForall!176 (list!1902 lt!192646) (dropList!232 lt!192646 0) lambda!12726))))

(assert (=> d!166990 e!267679))

(declare-fun res!194230 () Bool)

(assert (=> d!166990 (=> (not res!194230) (not e!267679))))

(assert (=> d!166990 (= res!194230 (>= 0 0))))

(assert (=> d!166990 (= (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 lt!192646 separatorToken!170 0) lt!192782)))

(declare-fun bm!30111 () Bool)

(declare-fun call!30115 () Token!1410)

(assert (=> bm!30111 (= call!30115 (apply!1070 lt!192646 0))))

(declare-fun b!438198 () Bool)

(declare-fun e!267675 () BalanceConc!2984)

(assert (=> b!438198 (= e!267675 call!30117)))

(declare-fun b!438199 () Bool)

(assert (=> b!438199 (= e!267677 (BalanceConc!2985 Empty!1488))))

(assert (=> b!438200 (= e!267677 e!267675)))

(declare-fun lt!192786 () List!4317)

(assert (=> b!438200 (= lt!192786 (list!1902 lt!192646))))

(declare-fun lt!192788 () Unit!7589)

(declare-fun lemmaDropApply!272 (List!4317 Int) Unit!7589)

(assert (=> b!438200 (= lt!192788 (lemmaDropApply!272 lt!192786 0))))

(declare-fun drop!301 (List!4317 Int) List!4317)

(declare-fun apply!1072 (List!4317 Int) Token!1410)

(assert (=> b!438200 (= (head!1068 (drop!301 lt!192786 0)) (apply!1072 lt!192786 0))))

(declare-fun lt!192781 () Unit!7589)

(assert (=> b!438200 (= lt!192781 lt!192788)))

(declare-fun lt!192783 () List!4317)

(assert (=> b!438200 (= lt!192783 (list!1902 lt!192646))))

(declare-fun lt!192787 () Unit!7589)

(declare-fun lemmaDropTail!264 (List!4317 Int) Unit!7589)

(assert (=> b!438200 (= lt!192787 (lemmaDropTail!264 lt!192783 0))))

(declare-fun tail!612 (List!4317) List!4317)

(assert (=> b!438200 (= (tail!612 (drop!301 lt!192783 0)) (drop!301 lt!192783 (+ 0 1)))))

(declare-fun lt!192790 () Unit!7589)

(assert (=> b!438200 (= lt!192790 lt!192787)))

(declare-fun lt!192789 () Unit!7589)

(assert (=> b!438200 (= lt!192789 (forallContained!386 (list!1902 lt!192646) lambda!12727 (apply!1070 lt!192646 0)))))

(assert (=> b!438200 (= lt!192785 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 lt!192646 separatorToken!170 (+ 0 1)))))

(assert (=> b!438200 (= lt!192780 (maxPrefixZipperSequence!398 thiss!17480 rules!1920 (++!1240 (charsOf!476 (apply!1070 lt!192646 0)) lt!192785)))))

(declare-fun res!194229 () Bool)

(assert (=> b!438200 (= res!194229 ((_ is Some!1082) lt!192780))))

(assert (=> b!438200 (=> (not res!194229) (not e!267673))))

(declare-fun c!88754 () Bool)

(assert (=> b!438200 (= c!88754 e!267673)))

(declare-fun b!438201 () Bool)

(declare-fun c!88755 () Bool)

(declare-fun e!267678 () Bool)

(assert (=> b!438201 (= c!88755 e!267678)))

(declare-fun res!194228 () Bool)

(assert (=> b!438201 (=> (not res!194228) (not e!267678))))

(assert (=> b!438201 (= res!194228 ((_ is Some!1082) lt!192780))))

(assert (=> b!438201 (= e!267675 e!267674)))

(declare-fun bm!30112 () Bool)

(declare-fun c!88756 () Bool)

(assert (=> bm!30112 (= c!88756 c!88754)))

(declare-fun e!267676 () BalanceConc!2984)

(assert (=> bm!30112 (= call!30117 (++!1240 e!267676 (ite c!88754 lt!192785 call!30116)))))

(declare-fun b!438202 () Bool)

(assert (=> b!438202 (= e!267678 (not (= (_1!2803 (v!15347 lt!192780)) call!30115)))))

(declare-fun b!438203 () Bool)

(assert (=> b!438203 (= e!267676 call!30118)))

(declare-fun bm!30113 () Bool)

(assert (=> bm!30113 (= call!30118 (charsOf!476 (ite c!88754 call!30115 (ite c!88755 separatorToken!170 call!30119))))))

(declare-fun b!438204 () Bool)

(assert (=> b!438204 (= e!267676 (charsOf!476 call!30119))))

(declare-fun bm!30114 () Bool)

(assert (=> bm!30114 (= call!30119 call!30115)))

(assert (= (and d!166990 res!194230) b!438196))

(assert (= (and d!166990 c!88753) b!438199))

(assert (= (and d!166990 (not c!88753)) b!438200))

(assert (= (and b!438200 res!194229) b!438194))

(assert (= (and b!438200 c!88754) b!438198))

(assert (= (and b!438200 (not c!88754)) b!438201))

(assert (= (and b!438201 res!194228) b!438202))

(assert (= (and b!438201 c!88755) b!438197))

(assert (= (and b!438201 (not c!88755)) b!438195))

(assert (= (or b!438197 b!438195) bm!30114))

(assert (= (or b!438197 b!438195) bm!30110))

(assert (= (or b!438198 b!438202 bm!30114) bm!30111))

(assert (= (or b!438198 bm!30110) bm!30113))

(assert (= (or b!438198 b!438197) bm!30112))

(assert (= (and bm!30112 c!88756) b!438203))

(assert (= (and bm!30112 (not c!88756)) b!438204))

(declare-fun m!689711 () Bool)

(assert (=> b!438200 m!689711))

(declare-fun m!689713 () Bool)

(assert (=> b!438200 m!689713))

(declare-fun m!689715 () Bool)

(assert (=> b!438200 m!689715))

(assert (=> b!438200 m!689713))

(declare-fun m!689717 () Bool)

(assert (=> b!438200 m!689717))

(declare-fun m!689719 () Bool)

(assert (=> b!438200 m!689719))

(declare-fun m!689721 () Bool)

(assert (=> b!438200 m!689721))

(declare-fun m!689723 () Bool)

(assert (=> b!438200 m!689723))

(assert (=> b!438200 m!689711))

(declare-fun m!689725 () Bool)

(assert (=> b!438200 m!689725))

(assert (=> b!438200 m!689719))

(declare-fun m!689727 () Bool)

(assert (=> b!438200 m!689727))

(assert (=> b!438200 m!689721))

(declare-fun m!689729 () Bool)

(assert (=> b!438200 m!689729))

(declare-fun m!689731 () Bool)

(assert (=> b!438200 m!689731))

(declare-fun m!689733 () Bool)

(assert (=> b!438200 m!689733))

(declare-fun m!689735 () Bool)

(assert (=> b!438200 m!689735))

(declare-fun m!689737 () Bool)

(assert (=> b!438200 m!689737))

(assert (=> b!438200 m!689713))

(assert (=> b!438200 m!689729))

(assert (=> b!438200 m!689731))

(declare-fun m!689739 () Bool)

(assert (=> b!438200 m!689739))

(assert (=> bm!30111 m!689713))

(declare-fun m!689741 () Bool)

(assert (=> bm!30112 m!689741))

(declare-fun m!689743 () Bool)

(assert (=> b!438204 m!689743))

(declare-fun m!689745 () Bool)

(assert (=> b!438197 m!689745))

(declare-fun m!689747 () Bool)

(assert (=> bm!30113 m!689747))

(assert (=> b!438194 m!689713))

(assert (=> d!166990 m!689711))

(declare-fun m!689749 () Bool)

(assert (=> d!166990 m!689749))

(declare-fun m!689751 () Bool)

(assert (=> d!166990 m!689751))

(declare-fun m!689753 () Bool)

(assert (=> d!166990 m!689753))

(assert (=> d!166990 m!689711))

(declare-fun m!689755 () Bool)

(assert (=> d!166990 m!689755))

(assert (=> d!166990 m!689749))

(declare-fun m!689757 () Bool)

(assert (=> d!166990 m!689757))

(assert (=> d!166990 m!689749))

(assert (=> b!438196 m!689755))

(declare-fun m!689759 () Bool)

(assert (=> b!438195 m!689759))

(declare-fun m!689761 () Bool)

(assert (=> b!438195 m!689761))

(declare-fun m!689763 () Bool)

(assert (=> b!438195 m!689763))

(declare-fun m!689765 () Bool)

(assert (=> b!438195 m!689765))

(assert (=> b!438195 m!689761))

(assert (=> b!438195 m!689765))

(assert (=> b!438195 m!689759))

(declare-fun m!689767 () Bool)

(assert (=> b!438195 m!689767))

(assert (=> b!438195 m!689761))

(declare-fun m!689769 () Bool)

(assert (=> b!438195 m!689769))

(assert (=> b!438013 d!166990))

(declare-fun bs!54115 () Bool)

(declare-fun b!438249 () Bool)

(assert (= bs!54115 (and b!438249 b!438039)))

(declare-fun lambda!12730 () Int)

(assert (=> bs!54115 (not (= lambda!12730 lambda!12711))))

(declare-fun bs!54116 () Bool)

(assert (= bs!54116 (and b!438249 b!438047)))

(assert (=> bs!54116 (= lambda!12730 lambda!12712)))

(declare-fun bs!54117 () Bool)

(assert (= bs!54117 (and b!438249 d!166990)))

(assert (=> bs!54117 (not (= lambda!12730 lambda!12726))))

(declare-fun bs!54118 () Bool)

(assert (= bs!54118 (and b!438249 b!438200)))

(assert (=> bs!54118 (= lambda!12730 lambda!12727)))

(declare-fun b!438261 () Bool)

(declare-fun e!267715 () Bool)

(assert (=> b!438261 (= e!267715 true)))

(declare-fun b!438260 () Bool)

(declare-fun e!267714 () Bool)

(assert (=> b!438260 (= e!267714 e!267715)))

(declare-fun b!438259 () Bool)

(declare-fun e!267713 () Bool)

(assert (=> b!438259 (= e!267713 e!267714)))

(assert (=> b!438249 e!267713))

(assert (= b!438260 b!438261))

(assert (= b!438259 b!438260))

(assert (= (and b!438249 ((_ is Cons!4306) rules!1920)) b!438259))

(assert (=> b!438261 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12730))))

(assert (=> b!438261 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12730))))

(assert (=> b!438249 true))

(declare-fun e!267712 () List!4315)

(declare-fun e!267710 () List!4315)

(assert (=> b!438249 (= e!267712 e!267710)))

(declare-fun lt!192813 () Unit!7589)

(assert (=> b!438249 (= lt!192813 (forallContained!386 tokens!465 lambda!12730 (h!9704 tokens!465)))))

(declare-fun lt!192814 () List!4315)

(assert (=> b!438249 (= lt!192814 (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 (t!69339 tokens!465) separatorToken!170))))

(declare-fun lt!192809 () Option!1082)

(assert (=> b!438249 (= lt!192809 (maxPrefix!435 thiss!17480 rules!1920 (++!1238 (list!1899 (charsOf!476 (h!9704 tokens!465))) lt!192814)))))

(declare-fun c!88770 () Bool)

(assert (=> b!438249 (= c!88770 (and ((_ is Some!1081) lt!192809) (= (_1!2802 (v!15346 lt!192809)) (h!9704 tokens!465))))))

(declare-fun bm!30125 () Bool)

(declare-fun c!88771 () Bool)

(assert (=> bm!30125 (= c!88771 c!88770)))

(declare-fun call!30130 () List!4315)

(declare-fun e!267708 () List!4315)

(declare-fun call!30134 () List!4315)

(assert (=> bm!30125 (= call!30134 (++!1238 e!267708 (ite c!88770 lt!192814 call!30130)))))

(declare-fun bm!30126 () Bool)

(declare-fun call!30132 () BalanceConc!2984)

(assert (=> bm!30126 (= call!30132 (charsOf!476 (h!9704 tokens!465)))))

(declare-fun b!438250 () Bool)

(declare-fun e!267709 () List!4315)

(assert (=> b!438250 (= e!267709 Nil!4305)))

(assert (=> b!438250 (= (print!444 thiss!17480 (singletonSeq!379 (h!9704 tokens!465))) (printTailRec!405 thiss!17480 (singletonSeq!379 (h!9704 tokens!465)) 0 (BalanceConc!2985 Empty!1488)))))

(declare-fun lt!192810 () Unit!7589)

(declare-fun Unit!7603 () Unit!7589)

(assert (=> b!438250 (= lt!192810 Unit!7603)))

(declare-fun lt!192811 () Unit!7589)

(assert (=> b!438250 (= lt!192811 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!180 thiss!17480 rules!1920 call!30130 lt!192814))))

(assert (=> b!438250 false))

(declare-fun lt!192812 () Unit!7589)

(declare-fun Unit!7604 () Unit!7589)

(assert (=> b!438250 (= lt!192812 Unit!7604)))

(declare-fun d!167006 () Bool)

(declare-fun c!88772 () Bool)

(assert (=> d!167006 (= c!88772 ((_ is Cons!4307) tokens!465))))

(assert (=> d!167006 (= (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!267712)))

(declare-fun b!438251 () Bool)

(declare-fun call!30133 () BalanceConc!2984)

(assert (=> b!438251 (= e!267708 (list!1899 call!30133))))

(declare-fun bm!30127 () Bool)

(declare-fun call!30131 () List!4315)

(declare-fun e!267711 () BalanceConc!2984)

(assert (=> bm!30127 (= call!30131 (list!1899 (ite c!88770 call!30132 e!267711)))))

(declare-fun b!438252 () Bool)

(assert (=> b!438252 (= e!267708 call!30131)))

(declare-fun b!438253 () Bool)

(assert (=> b!438253 (= e!267711 (charsOf!476 separatorToken!170))))

(declare-fun b!438254 () Bool)

(assert (=> b!438254 (= e!267710 call!30134)))

(declare-fun b!438255 () Bool)

(declare-fun c!88774 () Bool)

(assert (=> b!438255 (= c!88774 (and ((_ is Some!1081) lt!192809) (not (= (_1!2802 (v!15346 lt!192809)) (h!9704 tokens!465)))))))

(assert (=> b!438255 (= e!267710 e!267709)))

(declare-fun b!438256 () Bool)

(assert (=> b!438256 (= e!267711 call!30133)))

(declare-fun b!438257 () Bool)

(assert (=> b!438257 (= e!267712 Nil!4305)))

(declare-fun b!438258 () Bool)

(assert (=> b!438258 (= e!267709 (++!1238 call!30134 lt!192814))))

(declare-fun bm!30128 () Bool)

(assert (=> bm!30128 (= call!30133 call!30132)))

(declare-fun bm!30129 () Bool)

(assert (=> bm!30129 (= call!30130 call!30131)))

(declare-fun c!88773 () Bool)

(assert (=> bm!30129 (= c!88773 c!88774)))

(assert (= (and d!167006 c!88772) b!438249))

(assert (= (and d!167006 (not c!88772)) b!438257))

(assert (= (and b!438249 c!88770) b!438254))

(assert (= (and b!438249 (not c!88770)) b!438255))

(assert (= (and b!438255 c!88774) b!438258))

(assert (= (and b!438255 (not c!88774)) b!438250))

(assert (= (or b!438258 b!438250) bm!30128))

(assert (= (or b!438258 b!438250) bm!30129))

(assert (= (and bm!30129 c!88773) b!438253))

(assert (= (and bm!30129 (not c!88773)) b!438256))

(assert (= (or b!438254 bm!30128) bm!30126))

(assert (= (or b!438254 bm!30129) bm!30127))

(assert (= (or b!438254 b!438258) bm!30125))

(assert (= (and bm!30125 c!88771) b!438252))

(assert (= (and bm!30125 (not c!88771)) b!438251))

(declare-fun m!689795 () Bool)

(assert (=> bm!30127 m!689795))

(assert (=> b!438249 m!689417))

(declare-fun m!689797 () Bool)

(assert (=> b!438249 m!689797))

(declare-fun m!689799 () Bool)

(assert (=> b!438249 m!689799))

(assert (=> b!438249 m!689417))

(assert (=> b!438249 m!689423))

(declare-fun m!689801 () Bool)

(assert (=> b!438249 m!689801))

(assert (=> b!438249 m!689403))

(assert (=> b!438249 m!689423))

(assert (=> b!438249 m!689797))

(assert (=> bm!30126 m!689417))

(declare-fun m!689803 () Bool)

(assert (=> bm!30125 m!689803))

(assert (=> b!438253 m!689405))

(declare-fun m!689805 () Bool)

(assert (=> b!438251 m!689805))

(declare-fun m!689807 () Bool)

(assert (=> b!438258 m!689807))

(assert (=> b!438250 m!689371))

(assert (=> b!438250 m!689371))

(declare-fun m!689809 () Bool)

(assert (=> b!438250 m!689809))

(assert (=> b!438250 m!689371))

(declare-fun m!689811 () Bool)

(assert (=> b!438250 m!689811))

(declare-fun m!689813 () Bool)

(assert (=> b!438250 m!689813))

(assert (=> b!438013 d!167006))

(declare-fun b!438290 () Bool)

(declare-fun e!267733 () Bool)

(declare-fun e!267730 () Bool)

(assert (=> b!438290 (= e!267733 e!267730)))

(declare-fun c!88781 () Bool)

(assert (=> b!438290 (= c!88781 ((_ is EmptyLang!1057) (regex!833 (rule!1508 (h!9704 tokens!465)))))))

(declare-fun b!438291 () Bool)

(declare-fun e!267732 () Bool)

(assert (=> b!438291 (= e!267732 (not (= (head!1067 lt!192671) (c!88711 (regex!833 (rule!1508 (h!9704 tokens!465)))))))))

(declare-fun b!438292 () Bool)

(declare-fun res!194263 () Bool)

(declare-fun e!267736 () Bool)

(assert (=> b!438292 (=> res!194263 e!267736)))

(assert (=> b!438292 (= res!194263 (not ((_ is ElementMatch!1057) (regex!833 (rule!1508 (h!9704 tokens!465))))))))

(assert (=> b!438292 (= e!267730 e!267736)))

(declare-fun b!438293 () Bool)

(declare-fun e!267735 () Bool)

(declare-fun nullable!231 (Regex!1057) Bool)

(assert (=> b!438293 (= e!267735 (nullable!231 (regex!833 (rule!1508 (h!9704 tokens!465)))))))

(declare-fun b!438294 () Bool)

(declare-fun res!194267 () Bool)

(declare-fun e!267734 () Bool)

(assert (=> b!438294 (=> (not res!194267) (not e!267734))))

(declare-fun tail!613 (List!4315) List!4315)

(assert (=> b!438294 (= res!194267 (isEmpty!3210 (tail!613 lt!192671)))))

(declare-fun d!167014 () Bool)

(assert (=> d!167014 e!267733))

(declare-fun c!88783 () Bool)

(assert (=> d!167014 (= c!88783 ((_ is EmptyExpr!1057) (regex!833 (rule!1508 (h!9704 tokens!465)))))))

(declare-fun lt!192817 () Bool)

(assert (=> d!167014 (= lt!192817 e!267735)))

(declare-fun c!88782 () Bool)

(assert (=> d!167014 (= c!88782 (isEmpty!3210 lt!192671))))

(declare-fun validRegex!306 (Regex!1057) Bool)

(assert (=> d!167014 (validRegex!306 (regex!833 (rule!1508 (h!9704 tokens!465))))))

(assert (=> d!167014 (= (matchR!375 (regex!833 (rule!1508 (h!9704 tokens!465))) lt!192671) lt!192817)))

(declare-fun b!438295 () Bool)

(declare-fun res!194266 () Bool)

(assert (=> b!438295 (=> (not res!194266) (not e!267734))))

(declare-fun call!30137 () Bool)

(assert (=> b!438295 (= res!194266 (not call!30137))))

(declare-fun b!438296 () Bool)

(assert (=> b!438296 (= e!267733 (= lt!192817 call!30137))))

(declare-fun b!438297 () Bool)

(declare-fun res!194265 () Bool)

(assert (=> b!438297 (=> res!194265 e!267736)))

(assert (=> b!438297 (= res!194265 e!267734)))

(declare-fun res!194264 () Bool)

(assert (=> b!438297 (=> (not res!194264) (not e!267734))))

(assert (=> b!438297 (= res!194264 lt!192817)))

(declare-fun b!438298 () Bool)

(assert (=> b!438298 (= e!267730 (not lt!192817))))

(declare-fun b!438299 () Bool)

(declare-fun e!267731 () Bool)

(assert (=> b!438299 (= e!267731 e!267732)))

(declare-fun res!194268 () Bool)

(assert (=> b!438299 (=> res!194268 e!267732)))

(assert (=> b!438299 (= res!194268 call!30137)))

(declare-fun b!438300 () Bool)

(declare-fun derivativeStep!197 (Regex!1057 C!3036) Regex!1057)

(assert (=> b!438300 (= e!267735 (matchR!375 (derivativeStep!197 (regex!833 (rule!1508 (h!9704 tokens!465))) (head!1067 lt!192671)) (tail!613 lt!192671)))))

(declare-fun bm!30132 () Bool)

(assert (=> bm!30132 (= call!30137 (isEmpty!3210 lt!192671))))

(declare-fun b!438301 () Bool)

(declare-fun res!194269 () Bool)

(assert (=> b!438301 (=> res!194269 e!267732)))

(assert (=> b!438301 (= res!194269 (not (isEmpty!3210 (tail!613 lt!192671))))))

(declare-fun b!438302 () Bool)

(assert (=> b!438302 (= e!267734 (= (head!1067 lt!192671) (c!88711 (regex!833 (rule!1508 (h!9704 tokens!465))))))))

(declare-fun b!438303 () Bool)

(assert (=> b!438303 (= e!267736 e!267731)))

(declare-fun res!194262 () Bool)

(assert (=> b!438303 (=> (not res!194262) (not e!267731))))

(assert (=> b!438303 (= res!194262 (not lt!192817))))

(assert (= (and d!167014 c!88782) b!438293))

(assert (= (and d!167014 (not c!88782)) b!438300))

(assert (= (and d!167014 c!88783) b!438296))

(assert (= (and d!167014 (not c!88783)) b!438290))

(assert (= (and b!438290 c!88781) b!438298))

(assert (= (and b!438290 (not c!88781)) b!438292))

(assert (= (and b!438292 (not res!194263)) b!438297))

(assert (= (and b!438297 res!194264) b!438295))

(assert (= (and b!438295 res!194266) b!438294))

(assert (= (and b!438294 res!194267) b!438302))

(assert (= (and b!438297 (not res!194265)) b!438303))

(assert (= (and b!438303 res!194262) b!438299))

(assert (= (and b!438299 (not res!194268)) b!438301))

(assert (= (and b!438301 (not res!194269)) b!438291))

(assert (= (or b!438296 b!438295 b!438299) bm!30132))

(declare-fun m!689815 () Bool)

(assert (=> b!438293 m!689815))

(declare-fun m!689817 () Bool)

(assert (=> b!438300 m!689817))

(assert (=> b!438300 m!689817))

(declare-fun m!689819 () Bool)

(assert (=> b!438300 m!689819))

(declare-fun m!689821 () Bool)

(assert (=> b!438300 m!689821))

(assert (=> b!438300 m!689819))

(assert (=> b!438300 m!689821))

(declare-fun m!689823 () Bool)

(assert (=> b!438300 m!689823))

(declare-fun m!689825 () Bool)

(assert (=> bm!30132 m!689825))

(assert (=> d!167014 m!689825))

(declare-fun m!689827 () Bool)

(assert (=> d!167014 m!689827))

(assert (=> b!438294 m!689821))

(assert (=> b!438294 m!689821))

(declare-fun m!689829 () Bool)

(assert (=> b!438294 m!689829))

(assert (=> b!438302 m!689817))

(assert (=> b!438301 m!689821))

(assert (=> b!438301 m!689821))

(assert (=> b!438301 m!689829))

(assert (=> b!438291 m!689817))

(assert (=> b!438034 d!167014))

(declare-fun d!167016 () Bool)

(declare-fun c!88788 () Bool)

(assert (=> d!167016 (= c!88788 ((_ is IntegerValue!2565) (value!28056 separatorToken!170)))))

(declare-fun e!267744 () Bool)

(assert (=> d!167016 (= (inv!21 (value!28056 separatorToken!170)) e!267744)))

(declare-fun b!438314 () Bool)

(declare-fun e!267743 () Bool)

(declare-fun inv!15 (TokenValue!855) Bool)

(assert (=> b!438314 (= e!267743 (inv!15 (value!28056 separatorToken!170)))))

(declare-fun b!438315 () Bool)

(declare-fun inv!16 (TokenValue!855) Bool)

(assert (=> b!438315 (= e!267744 (inv!16 (value!28056 separatorToken!170)))))

(declare-fun b!438316 () Bool)

(declare-fun e!267745 () Bool)

(declare-fun inv!17 (TokenValue!855) Bool)

(assert (=> b!438316 (= e!267745 (inv!17 (value!28056 separatorToken!170)))))

(declare-fun b!438317 () Bool)

(declare-fun res!194272 () Bool)

(assert (=> b!438317 (=> res!194272 e!267743)))

(assert (=> b!438317 (= res!194272 (not ((_ is IntegerValue!2567) (value!28056 separatorToken!170))))))

(assert (=> b!438317 (= e!267745 e!267743)))

(declare-fun b!438318 () Bool)

(assert (=> b!438318 (= e!267744 e!267745)))

(declare-fun c!88789 () Bool)

(assert (=> b!438318 (= c!88789 ((_ is IntegerValue!2566) (value!28056 separatorToken!170)))))

(assert (= (and d!167016 c!88788) b!438315))

(assert (= (and d!167016 (not c!88788)) b!438318))

(assert (= (and b!438318 c!88789) b!438316))

(assert (= (and b!438318 (not c!88789)) b!438317))

(assert (= (and b!438317 (not res!194272)) b!438314))

(declare-fun m!689831 () Bool)

(assert (=> b!438314 m!689831))

(declare-fun m!689833 () Bool)

(assert (=> b!438315 m!689833))

(declare-fun m!689835 () Bool)

(assert (=> b!438316 m!689835))

(assert (=> b!438035 d!167016))

(declare-fun d!167018 () Bool)

(assert (=> d!167018 (= (list!1899 lt!192676) (list!1903 (c!88710 lt!192676)))))

(declare-fun bs!54119 () Bool)

(assert (= bs!54119 d!167018))

(declare-fun m!689837 () Bool)

(assert (=> bs!54119 m!689837))

(assert (=> b!438056 d!167018))

(declare-fun d!167020 () Bool)

(declare-fun lt!192831 () BalanceConc!2984)

(assert (=> d!167020 (= (list!1899 lt!192831) (printList!393 thiss!17480 (list!1902 lt!192680)))))

(assert (=> d!167020 (= lt!192831 (printTailRec!405 thiss!17480 lt!192680 0 (BalanceConc!2985 Empty!1488)))))

(assert (=> d!167020 (= (print!444 thiss!17480 lt!192680) lt!192831)))

(declare-fun bs!54121 () Bool)

(assert (= bs!54121 d!167020))

(declare-fun m!689861 () Bool)

(assert (=> bs!54121 m!689861))

(declare-fun m!689863 () Bool)

(assert (=> bs!54121 m!689863))

(assert (=> bs!54121 m!689863))

(declare-fun m!689865 () Bool)

(assert (=> bs!54121 m!689865))

(assert (=> bs!54121 m!689363))

(assert (=> b!438056 d!167020))

(declare-fun d!167028 () Bool)

(declare-fun lt!192865 () BalanceConc!2984)

(declare-fun printListTailRec!196 (LexerInterface!719 List!4317 List!4315) List!4315)

(assert (=> d!167028 (= (list!1899 lt!192865) (printListTailRec!196 thiss!17480 (dropList!232 lt!192680 0) (list!1899 (BalanceConc!2985 Empty!1488))))))

(declare-fun e!267768 () BalanceConc!2984)

(assert (=> d!167028 (= lt!192865 e!267768)))

(declare-fun c!88792 () Bool)

(assert (=> d!167028 (= c!88792 (>= 0 (size!3527 lt!192680)))))

(declare-fun e!267769 () Bool)

(assert (=> d!167028 e!267769))

(declare-fun res!194297 () Bool)

(assert (=> d!167028 (=> (not res!194297) (not e!267769))))

(assert (=> d!167028 (= res!194297 (>= 0 0))))

(assert (=> d!167028 (= (printTailRec!405 thiss!17480 lt!192680 0 (BalanceConc!2985 Empty!1488)) lt!192865)))

(declare-fun b!438347 () Bool)

(assert (=> b!438347 (= e!267769 (<= 0 (size!3527 lt!192680)))))

(declare-fun b!438348 () Bool)

(assert (=> b!438348 (= e!267768 (BalanceConc!2985 Empty!1488))))

(declare-fun b!438349 () Bool)

(assert (=> b!438349 (= e!267768 (printTailRec!405 thiss!17480 lt!192680 (+ 0 1) (++!1240 (BalanceConc!2985 Empty!1488) (charsOf!476 (apply!1070 lt!192680 0)))))))

(declare-fun lt!192863 () List!4317)

(assert (=> b!438349 (= lt!192863 (list!1902 lt!192680))))

(declare-fun lt!192862 () Unit!7589)

(assert (=> b!438349 (= lt!192862 (lemmaDropApply!272 lt!192863 0))))

(assert (=> b!438349 (= (head!1068 (drop!301 lt!192863 0)) (apply!1072 lt!192863 0))))

(declare-fun lt!192860 () Unit!7589)

(assert (=> b!438349 (= lt!192860 lt!192862)))

(declare-fun lt!192859 () List!4317)

(assert (=> b!438349 (= lt!192859 (list!1902 lt!192680))))

(declare-fun lt!192861 () Unit!7589)

(assert (=> b!438349 (= lt!192861 (lemmaDropTail!264 lt!192859 0))))

(assert (=> b!438349 (= (tail!612 (drop!301 lt!192859 0)) (drop!301 lt!192859 (+ 0 1)))))

(declare-fun lt!192864 () Unit!7589)

(assert (=> b!438349 (= lt!192864 lt!192861)))

(assert (= (and d!167028 res!194297) b!438347))

(assert (= (and d!167028 c!88792) b!438348))

(assert (= (and d!167028 (not c!88792)) b!438349))

(declare-fun m!689913 () Bool)

(assert (=> d!167028 m!689913))

(declare-fun m!689915 () Bool)

(assert (=> d!167028 m!689915))

(declare-fun m!689917 () Bool)

(assert (=> d!167028 m!689917))

(assert (=> d!167028 m!689913))

(declare-fun m!689919 () Bool)

(assert (=> d!167028 m!689919))

(declare-fun m!689921 () Bool)

(assert (=> d!167028 m!689921))

(assert (=> d!167028 m!689915))

(assert (=> b!438347 m!689919))

(declare-fun m!689923 () Bool)

(assert (=> b!438349 m!689923))

(declare-fun m!689925 () Bool)

(assert (=> b!438349 m!689925))

(declare-fun m!689927 () Bool)

(assert (=> b!438349 m!689927))

(declare-fun m!689929 () Bool)

(assert (=> b!438349 m!689929))

(assert (=> b!438349 m!689925))

(declare-fun m!689931 () Bool)

(assert (=> b!438349 m!689931))

(declare-fun m!689933 () Bool)

(assert (=> b!438349 m!689933))

(assert (=> b!438349 m!689863))

(declare-fun m!689935 () Bool)

(assert (=> b!438349 m!689935))

(declare-fun m!689937 () Bool)

(assert (=> b!438349 m!689937))

(declare-fun m!689939 () Bool)

(assert (=> b!438349 m!689939))

(declare-fun m!689941 () Bool)

(assert (=> b!438349 m!689941))

(declare-fun m!689943 () Bool)

(assert (=> b!438349 m!689943))

(assert (=> b!438349 m!689943))

(assert (=> b!438349 m!689935))

(assert (=> b!438349 m!689927))

(declare-fun m!689945 () Bool)

(assert (=> b!438349 m!689945))

(assert (=> b!438349 m!689941))

(assert (=> b!438056 d!167028))

(declare-fun d!167048 () Bool)

(declare-fun e!267772 () Bool)

(assert (=> d!167048 e!267772))

(declare-fun res!194300 () Bool)

(assert (=> d!167048 (=> (not res!194300) (not e!267772))))

(declare-fun lt!192868 () BalanceConc!2986)

(assert (=> d!167048 (= res!194300 (= (list!1902 lt!192868) (Cons!4307 (h!9704 tokens!465) Nil!4307)))))

(declare-fun singleton!182 (Token!1410) BalanceConc!2986)

(assert (=> d!167048 (= lt!192868 (singleton!182 (h!9704 tokens!465)))))

(assert (=> d!167048 (= (singletonSeq!379 (h!9704 tokens!465)) lt!192868)))

(declare-fun b!438352 () Bool)

(declare-fun isBalanced!455 (Conc!1489) Bool)

(assert (=> b!438352 (= e!267772 (isBalanced!455 (c!88712 lt!192868)))))

(assert (= (and d!167048 res!194300) b!438352))

(declare-fun m!689947 () Bool)

(assert (=> d!167048 m!689947))

(declare-fun m!689949 () Bool)

(assert (=> d!167048 m!689949))

(declare-fun m!689951 () Bool)

(assert (=> b!438352 m!689951))

(assert (=> b!438056 d!167048))

(declare-fun d!167050 () Bool)

(declare-fun c!88799 () Bool)

(assert (=> d!167050 (= c!88799 ((_ is Cons!4307) (Cons!4307 (h!9704 tokens!465) Nil!4307)))))

(declare-fun e!267783 () List!4315)

(assert (=> d!167050 (= (printList!393 thiss!17480 (Cons!4307 (h!9704 tokens!465) Nil!4307)) e!267783)))

(declare-fun b!438369 () Bool)

(assert (=> b!438369 (= e!267783 (++!1238 (list!1899 (charsOf!476 (h!9704 (Cons!4307 (h!9704 tokens!465) Nil!4307)))) (printList!393 thiss!17480 (t!69339 (Cons!4307 (h!9704 tokens!465) Nil!4307)))))))

(declare-fun b!438370 () Bool)

(assert (=> b!438370 (= e!267783 Nil!4305)))

(assert (= (and d!167050 c!88799) b!438369))

(assert (= (and d!167050 (not c!88799)) b!438370))

(declare-fun m!689953 () Bool)

(assert (=> b!438369 m!689953))

(assert (=> b!438369 m!689953))

(declare-fun m!689955 () Bool)

(assert (=> b!438369 m!689955))

(declare-fun m!689957 () Bool)

(assert (=> b!438369 m!689957))

(assert (=> b!438369 m!689955))

(assert (=> b!438369 m!689957))

(declare-fun m!689959 () Bool)

(assert (=> b!438369 m!689959))

(assert (=> b!438056 d!167050))

(declare-fun d!167052 () Bool)

(declare-fun isEmpty!3218 (Option!1082) Bool)

(assert (=> d!167052 (= (isDefined!920 lt!192677) (not (isEmpty!3218 lt!192677)))))

(declare-fun bs!54125 () Bool)

(assert (= bs!54125 d!167052))

(declare-fun m!689961 () Bool)

(assert (=> bs!54125 m!689961))

(assert (=> b!438014 d!167052))

(declare-fun b!438430 () Bool)

(declare-fun res!194331 () Bool)

(declare-fun e!267816 () Bool)

(assert (=> b!438430 (=> (not res!194331) (not e!267816))))

(declare-fun lt!192911 () Option!1082)

(assert (=> b!438430 (= res!194331 (matchR!375 (regex!833 (rule!1508 (_1!2802 (get!1552 lt!192911)))) (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!192911))))))))

(declare-fun b!438431 () Bool)

(declare-fun res!194326 () Bool)

(assert (=> b!438431 (=> (not res!194326) (not e!267816))))

(assert (=> b!438431 (= res!194326 (= (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!192911)))) (originalCharacters!876 (_1!2802 (get!1552 lt!192911)))))))

(declare-fun b!438432 () Bool)

(declare-fun e!267815 () Bool)

(assert (=> b!438432 (= e!267815 e!267816)))

(declare-fun res!194330 () Bool)

(assert (=> b!438432 (=> (not res!194330) (not e!267816))))

(assert (=> b!438432 (= res!194330 (isDefined!920 lt!192911))))

(declare-fun b!438433 () Bool)

(declare-fun res!194329 () Bool)

(assert (=> b!438433 (=> (not res!194329) (not e!267816))))

(declare-fun apply!1073 (TokenValueInjection!1482 BalanceConc!2984) TokenValue!855)

(assert (=> b!438433 (= res!194329 (= (value!28056 (_1!2802 (get!1552 lt!192911))) (apply!1073 (transformation!833 (rule!1508 (_1!2802 (get!1552 lt!192911)))) (seqFromList!1032 (originalCharacters!876 (_1!2802 (get!1552 lt!192911)))))))))

(declare-fun b!438434 () Bool)

(declare-fun e!267814 () Option!1082)

(declare-fun lt!192912 () Option!1082)

(declare-fun lt!192913 () Option!1082)

(assert (=> b!438434 (= e!267814 (ite (and ((_ is None!1081) lt!192912) ((_ is None!1081) lt!192913)) None!1081 (ite ((_ is None!1081) lt!192913) lt!192912 (ite ((_ is None!1081) lt!192912) lt!192913 (ite (>= (size!3526 (_1!2802 (v!15346 lt!192912))) (size!3526 (_1!2802 (v!15346 lt!192913)))) lt!192912 lt!192913)))))))

(declare-fun call!30152 () Option!1082)

(assert (=> b!438434 (= lt!192912 call!30152)))

(assert (=> b!438434 (= lt!192913 (maxPrefix!435 thiss!17480 (t!69338 rules!1920) lt!192658))))

(declare-fun b!438436 () Bool)

(declare-fun res!194327 () Bool)

(assert (=> b!438436 (=> (not res!194327) (not e!267816))))

(declare-fun size!3532 (List!4315) Int)

(assert (=> b!438436 (= res!194327 (< (size!3532 (_2!2802 (get!1552 lt!192911))) (size!3532 lt!192658)))))

(declare-fun bm!30147 () Bool)

(declare-fun maxPrefixOneRule!208 (LexerInterface!719 Rule!1466 List!4315) Option!1082)

(assert (=> bm!30147 (= call!30152 (maxPrefixOneRule!208 thiss!17480 (h!9703 rules!1920) lt!192658))))

(declare-fun b!438437 () Bool)

(assert (=> b!438437 (= e!267816 (contains!942 rules!1920 (rule!1508 (_1!2802 (get!1552 lt!192911)))))))

(declare-fun b!438438 () Bool)

(assert (=> b!438438 (= e!267814 call!30152)))

(declare-fun d!167054 () Bool)

(assert (=> d!167054 e!267815))

(declare-fun res!194332 () Bool)

(assert (=> d!167054 (=> res!194332 e!267815)))

(assert (=> d!167054 (= res!194332 (isEmpty!3218 lt!192911))))

(assert (=> d!167054 (= lt!192911 e!267814)))

(declare-fun c!88819 () Bool)

(assert (=> d!167054 (= c!88819 (and ((_ is Cons!4306) rules!1920) ((_ is Nil!4306) (t!69338 rules!1920))))))

(declare-fun lt!192914 () Unit!7589)

(declare-fun lt!192915 () Unit!7589)

(assert (=> d!167054 (= lt!192914 lt!192915)))

(assert (=> d!167054 (isPrefix!493 lt!192658 lt!192658)))

(declare-fun lemmaIsPrefixRefl!274 (List!4315 List!4315) Unit!7589)

(assert (=> d!167054 (= lt!192915 (lemmaIsPrefixRefl!274 lt!192658 lt!192658))))

(declare-fun rulesValidInductive!269 (LexerInterface!719 List!4316) Bool)

(assert (=> d!167054 (rulesValidInductive!269 thiss!17480 rules!1920)))

(assert (=> d!167054 (= (maxPrefix!435 thiss!17480 rules!1920 lt!192658) lt!192911)))

(declare-fun b!438435 () Bool)

(declare-fun res!194328 () Bool)

(assert (=> b!438435 (=> (not res!194328) (not e!267816))))

(assert (=> b!438435 (= res!194328 (= (++!1238 (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!192911)))) (_2!2802 (get!1552 lt!192911))) lt!192658))))

(assert (= (and d!167054 c!88819) b!438438))

(assert (= (and d!167054 (not c!88819)) b!438434))

(assert (= (or b!438438 b!438434) bm!30147))

(assert (= (and d!167054 (not res!194332)) b!438432))

(assert (= (and b!438432 res!194330) b!438431))

(assert (= (and b!438431 res!194326) b!438436))

(assert (= (and b!438436 res!194327) b!438435))

(assert (= (and b!438435 res!194328) b!438433))

(assert (= (and b!438433 res!194329) b!438430))

(assert (= (and b!438430 res!194331) b!438437))

(declare-fun m!690023 () Bool)

(assert (=> d!167054 m!690023))

(declare-fun m!690025 () Bool)

(assert (=> d!167054 m!690025))

(declare-fun m!690027 () Bool)

(assert (=> d!167054 m!690027))

(declare-fun m!690029 () Bool)

(assert (=> d!167054 m!690029))

(declare-fun m!690031 () Bool)

(assert (=> b!438435 m!690031))

(declare-fun m!690033 () Bool)

(assert (=> b!438435 m!690033))

(assert (=> b!438435 m!690033))

(declare-fun m!690035 () Bool)

(assert (=> b!438435 m!690035))

(assert (=> b!438435 m!690035))

(declare-fun m!690037 () Bool)

(assert (=> b!438435 m!690037))

(assert (=> b!438430 m!690031))

(assert (=> b!438430 m!690033))

(assert (=> b!438430 m!690033))

(assert (=> b!438430 m!690035))

(assert (=> b!438430 m!690035))

(declare-fun m!690039 () Bool)

(assert (=> b!438430 m!690039))

(assert (=> b!438433 m!690031))

(declare-fun m!690041 () Bool)

(assert (=> b!438433 m!690041))

(assert (=> b!438433 m!690041))

(declare-fun m!690043 () Bool)

(assert (=> b!438433 m!690043))

(assert (=> b!438437 m!690031))

(declare-fun m!690045 () Bool)

(assert (=> b!438437 m!690045))

(assert (=> b!438431 m!690031))

(assert (=> b!438431 m!690033))

(assert (=> b!438431 m!690033))

(assert (=> b!438431 m!690035))

(declare-fun m!690047 () Bool)

(assert (=> b!438434 m!690047))

(assert (=> b!438436 m!690031))

(declare-fun m!690049 () Bool)

(assert (=> b!438436 m!690049))

(declare-fun m!690051 () Bool)

(assert (=> b!438436 m!690051))

(declare-fun m!690053 () Bool)

(assert (=> b!438432 m!690053))

(declare-fun m!690055 () Bool)

(assert (=> bm!30147 m!690055))

(assert (=> b!438014 d!167054))

(declare-fun d!167064 () Bool)

(assert (=> d!167064 (= (inv!5366 (tag!1083 (rule!1508 (h!9704 tokens!465)))) (= (mod (str.len (value!28055 (tag!1083 (rule!1508 (h!9704 tokens!465))))) 2) 0))))

(assert (=> b!438043 d!167064))

(declare-fun d!167066 () Bool)

(declare-fun res!194334 () Bool)

(declare-fun e!267818 () Bool)

(assert (=> d!167066 (=> (not res!194334) (not e!267818))))

(assert (=> d!167066 (= res!194334 (semiInverseModEq!328 (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toValue!1640 (transformation!833 (rule!1508 (h!9704 tokens!465))))))))

(assert (=> d!167066 (= (inv!5369 (transformation!833 (rule!1508 (h!9704 tokens!465)))) e!267818)))

(declare-fun b!438440 () Bool)

(assert (=> b!438440 (= e!267818 (equivClasses!311 (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toValue!1640 (transformation!833 (rule!1508 (h!9704 tokens!465))))))))

(assert (= (and d!167066 res!194334) b!438440))

(declare-fun m!690057 () Bool)

(assert (=> d!167066 m!690057))

(declare-fun m!690059 () Bool)

(assert (=> b!438440 m!690059))

(assert (=> b!438043 d!167066))

(declare-fun bs!54126 () Bool)

(declare-fun d!167068 () Bool)

(assert (= bs!54126 (and d!167068 b!438200)))

(declare-fun lambda!12735 () Int)

(assert (=> bs!54126 (= lambda!12735 lambda!12727)))

(declare-fun bs!54127 () Bool)

(assert (= bs!54127 (and d!167068 b!438047)))

(assert (=> bs!54127 (= lambda!12735 lambda!12712)))

(declare-fun bs!54128 () Bool)

(assert (= bs!54128 (and d!167068 b!438039)))

(assert (=> bs!54128 (not (= lambda!12735 lambda!12711))))

(declare-fun bs!54129 () Bool)

(assert (= bs!54129 (and d!167068 d!166990)))

(assert (=> bs!54129 (not (= lambda!12735 lambda!12726))))

(declare-fun bs!54130 () Bool)

(assert (= bs!54130 (and d!167068 b!438249)))

(assert (=> bs!54130 (= lambda!12735 lambda!12730)))

(declare-fun b!438473 () Bool)

(declare-fun e!267833 () Bool)

(assert (=> b!438473 (= e!267833 true)))

(declare-fun b!438472 () Bool)

(declare-fun e!267832 () Bool)

(assert (=> b!438472 (= e!267832 e!267833)))

(declare-fun b!438471 () Bool)

(declare-fun e!267831 () Bool)

(assert (=> b!438471 (= e!267831 e!267832)))

(assert (=> d!167068 e!267831))

(assert (= b!438472 b!438473))

(assert (= b!438471 b!438472))

(assert (= (and d!167068 ((_ is Cons!4306) rules!1920)) b!438471))

(assert (=> b!438473 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12735))))

(assert (=> b!438473 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12735))))

(assert (=> d!167068 true))

(declare-fun e!267830 () Bool)

(assert (=> d!167068 e!267830))

(declare-fun res!194358 () Bool)

(assert (=> d!167068 (=> (not res!194358) (not e!267830))))

(declare-fun lt!192934 () Bool)

(assert (=> d!167068 (= res!194358 (= lt!192934 (forall!1234 (list!1902 lt!192646) lambda!12735)))))

(declare-fun forall!1235 (BalanceConc!2986 Int) Bool)

(assert (=> d!167068 (= lt!192934 (forall!1235 lt!192646 lambda!12735))))

(assert (=> d!167068 (not (isEmpty!3214 rules!1920))))

(assert (=> d!167068 (= (rulesProduceEachTokenIndividually!511 thiss!17480 rules!1920 lt!192646) lt!192934)))

(declare-fun b!438470 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!302 (LexerInterface!719 List!4316 List!4317) Bool)

(assert (=> b!438470 (= e!267830 (= lt!192934 (rulesProduceEachTokenIndividuallyList!302 thiss!17480 rules!1920 (list!1902 lt!192646))))))

(assert (= (and d!167068 res!194358) b!438470))

(assert (=> d!167068 m!689711))

(assert (=> d!167068 m!689711))

(declare-fun m!690095 () Bool)

(assert (=> d!167068 m!690095))

(declare-fun m!690097 () Bool)

(assert (=> d!167068 m!690097))

(assert (=> d!167068 m!689373))

(assert (=> b!438470 m!689711))

(assert (=> b!438470 m!689711))

(declare-fun m!690099 () Bool)

(assert (=> b!438470 m!690099))

(assert (=> b!438022 d!167068))

(declare-fun d!167076 () Bool)

(declare-fun fromListB!458 (List!4317) BalanceConc!2986)

(assert (=> d!167076 (= (seqFromList!1031 tokens!465) (fromListB!458 tokens!465))))

(declare-fun bs!54131 () Bool)

(assert (= bs!54131 d!167076))

(declare-fun m!690101 () Bool)

(assert (=> bs!54131 m!690101))

(assert (=> b!438022 d!167076))

(declare-fun d!167078 () Bool)

(assert (=> d!167078 (= (isDefined!920 lt!192666) (not (isEmpty!3218 lt!192666)))))

(declare-fun bs!54132 () Bool)

(assert (= bs!54132 d!167078))

(declare-fun m!690103 () Bool)

(assert (=> bs!54132 m!690103))

(assert (=> b!438023 d!167078))

(declare-fun b!438474 () Bool)

(declare-fun res!194364 () Bool)

(declare-fun e!267836 () Bool)

(assert (=> b!438474 (=> (not res!194364) (not e!267836))))

(declare-fun lt!192935 () Option!1082)

(assert (=> b!438474 (= res!194364 (matchR!375 (regex!833 (rule!1508 (_1!2802 (get!1552 lt!192935)))) (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!192935))))))))

(declare-fun b!438475 () Bool)

(declare-fun res!194359 () Bool)

(assert (=> b!438475 (=> (not res!194359) (not e!267836))))

(assert (=> b!438475 (= res!194359 (= (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!192935)))) (originalCharacters!876 (_1!2802 (get!1552 lt!192935)))))))

(declare-fun b!438476 () Bool)

(declare-fun e!267835 () Bool)

(assert (=> b!438476 (= e!267835 e!267836)))

(declare-fun res!194363 () Bool)

(assert (=> b!438476 (=> (not res!194363) (not e!267836))))

(assert (=> b!438476 (= res!194363 (isDefined!920 lt!192935))))

(declare-fun b!438477 () Bool)

(declare-fun res!194362 () Bool)

(assert (=> b!438477 (=> (not res!194362) (not e!267836))))

(assert (=> b!438477 (= res!194362 (= (value!28056 (_1!2802 (get!1552 lt!192935))) (apply!1073 (transformation!833 (rule!1508 (_1!2802 (get!1552 lt!192935)))) (seqFromList!1032 (originalCharacters!876 (_1!2802 (get!1552 lt!192935)))))))))

(declare-fun b!438478 () Bool)

(declare-fun e!267834 () Option!1082)

(declare-fun lt!192936 () Option!1082)

(declare-fun lt!192937 () Option!1082)

(assert (=> b!438478 (= e!267834 (ite (and ((_ is None!1081) lt!192936) ((_ is None!1081) lt!192937)) None!1081 (ite ((_ is None!1081) lt!192937) lt!192936 (ite ((_ is None!1081) lt!192936) lt!192937 (ite (>= (size!3526 (_1!2802 (v!15346 lt!192936))) (size!3526 (_1!2802 (v!15346 lt!192937)))) lt!192936 lt!192937)))))))

(declare-fun call!30156 () Option!1082)

(assert (=> b!438478 (= lt!192936 call!30156)))

(assert (=> b!438478 (= lt!192937 (maxPrefix!435 thiss!17480 (t!69338 rules!1920) lt!192667))))

(declare-fun b!438480 () Bool)

(declare-fun res!194360 () Bool)

(assert (=> b!438480 (=> (not res!194360) (not e!267836))))

(assert (=> b!438480 (= res!194360 (< (size!3532 (_2!2802 (get!1552 lt!192935))) (size!3532 lt!192667)))))

(declare-fun bm!30151 () Bool)

(assert (=> bm!30151 (= call!30156 (maxPrefixOneRule!208 thiss!17480 (h!9703 rules!1920) lt!192667))))

(declare-fun b!438481 () Bool)

(assert (=> b!438481 (= e!267836 (contains!942 rules!1920 (rule!1508 (_1!2802 (get!1552 lt!192935)))))))

(declare-fun b!438482 () Bool)

(assert (=> b!438482 (= e!267834 call!30156)))

(declare-fun d!167080 () Bool)

(assert (=> d!167080 e!267835))

(declare-fun res!194365 () Bool)

(assert (=> d!167080 (=> res!194365 e!267835)))

(assert (=> d!167080 (= res!194365 (isEmpty!3218 lt!192935))))

(assert (=> d!167080 (= lt!192935 e!267834)))

(declare-fun c!88823 () Bool)

(assert (=> d!167080 (= c!88823 (and ((_ is Cons!4306) rules!1920) ((_ is Nil!4306) (t!69338 rules!1920))))))

(declare-fun lt!192938 () Unit!7589)

(declare-fun lt!192939 () Unit!7589)

(assert (=> d!167080 (= lt!192938 lt!192939)))

(assert (=> d!167080 (isPrefix!493 lt!192667 lt!192667)))

(assert (=> d!167080 (= lt!192939 (lemmaIsPrefixRefl!274 lt!192667 lt!192667))))

(assert (=> d!167080 (rulesValidInductive!269 thiss!17480 rules!1920)))

(assert (=> d!167080 (= (maxPrefix!435 thiss!17480 rules!1920 lt!192667) lt!192935)))

(declare-fun b!438479 () Bool)

(declare-fun res!194361 () Bool)

(assert (=> b!438479 (=> (not res!194361) (not e!267836))))

(assert (=> b!438479 (= res!194361 (= (++!1238 (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!192935)))) (_2!2802 (get!1552 lt!192935))) lt!192667))))

(assert (= (and d!167080 c!88823) b!438482))

(assert (= (and d!167080 (not c!88823)) b!438478))

(assert (= (or b!438482 b!438478) bm!30151))

(assert (= (and d!167080 (not res!194365)) b!438476))

(assert (= (and b!438476 res!194363) b!438475))

(assert (= (and b!438475 res!194359) b!438480))

(assert (= (and b!438480 res!194360) b!438479))

(assert (= (and b!438479 res!194361) b!438477))

(assert (= (and b!438477 res!194362) b!438474))

(assert (= (and b!438474 res!194364) b!438481))

(declare-fun m!690105 () Bool)

(assert (=> d!167080 m!690105))

(declare-fun m!690107 () Bool)

(assert (=> d!167080 m!690107))

(declare-fun m!690109 () Bool)

(assert (=> d!167080 m!690109))

(assert (=> d!167080 m!690029))

(declare-fun m!690111 () Bool)

(assert (=> b!438479 m!690111))

(declare-fun m!690113 () Bool)

(assert (=> b!438479 m!690113))

(assert (=> b!438479 m!690113))

(declare-fun m!690115 () Bool)

(assert (=> b!438479 m!690115))

(assert (=> b!438479 m!690115))

(declare-fun m!690117 () Bool)

(assert (=> b!438479 m!690117))

(assert (=> b!438474 m!690111))

(assert (=> b!438474 m!690113))

(assert (=> b!438474 m!690113))

(assert (=> b!438474 m!690115))

(assert (=> b!438474 m!690115))

(declare-fun m!690119 () Bool)

(assert (=> b!438474 m!690119))

(assert (=> b!438477 m!690111))

(declare-fun m!690121 () Bool)

(assert (=> b!438477 m!690121))

(assert (=> b!438477 m!690121))

(declare-fun m!690123 () Bool)

(assert (=> b!438477 m!690123))

(assert (=> b!438481 m!690111))

(declare-fun m!690125 () Bool)

(assert (=> b!438481 m!690125))

(assert (=> b!438475 m!690111))

(assert (=> b!438475 m!690113))

(assert (=> b!438475 m!690113))

(assert (=> b!438475 m!690115))

(declare-fun m!690127 () Bool)

(assert (=> b!438478 m!690127))

(assert (=> b!438480 m!690111))

(declare-fun m!690129 () Bool)

(assert (=> b!438480 m!690129))

(declare-fun m!690131 () Bool)

(assert (=> b!438480 m!690131))

(declare-fun m!690133 () Bool)

(assert (=> b!438476 m!690133))

(declare-fun m!690135 () Bool)

(assert (=> bm!30151 m!690135))

(assert (=> b!438023 d!167080))

(declare-fun d!167082 () Bool)

(declare-fun lt!192971 () Bool)

(declare-fun e!267868 () Bool)

(assert (=> d!167082 (= lt!192971 e!267868)))

(declare-fun res!194397 () Bool)

(assert (=> d!167082 (=> (not res!194397) (not e!267868))))

(assert (=> d!167082 (= res!194397 (= (list!1902 (_1!2801 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 separatorToken!170))))) (list!1902 (singletonSeq!379 separatorToken!170))))))

(declare-fun e!267867 () Bool)

(assert (=> d!167082 (= lt!192971 e!267867)))

(declare-fun res!194395 () Bool)

(assert (=> d!167082 (=> (not res!194395) (not e!267867))))

(declare-fun lt!192972 () tuple2!5170)

(assert (=> d!167082 (= res!194395 (= (size!3527 (_1!2801 lt!192972)) 1))))

(assert (=> d!167082 (= lt!192972 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 separatorToken!170))))))

(assert (=> d!167082 (not (isEmpty!3214 rules!1920))))

(assert (=> d!167082 (= (rulesProduceIndividualToken!468 thiss!17480 rules!1920 separatorToken!170) lt!192971)))

(declare-fun b!438527 () Bool)

(declare-fun res!194396 () Bool)

(assert (=> b!438527 (=> (not res!194396) (not e!267867))))

(assert (=> b!438527 (= res!194396 (= (apply!1070 (_1!2801 lt!192972) 0) separatorToken!170))))

(declare-fun b!438528 () Bool)

(assert (=> b!438528 (= e!267867 (isEmpty!3211 (_2!2801 lt!192972)))))

(declare-fun b!438529 () Bool)

(assert (=> b!438529 (= e!267868 (isEmpty!3211 (_2!2801 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 separatorToken!170))))))))

(assert (= (and d!167082 res!194395) b!438527))

(assert (= (and b!438527 res!194396) b!438528))

(assert (= (and d!167082 res!194397) b!438529))

(declare-fun m!690261 () Bool)

(assert (=> d!167082 m!690261))

(assert (=> d!167082 m!689497))

(declare-fun m!690263 () Bool)

(assert (=> d!167082 m!690263))

(assert (=> d!167082 m!689497))

(declare-fun m!690265 () Bool)

(assert (=> d!167082 m!690265))

(assert (=> d!167082 m!690265))

(declare-fun m!690267 () Bool)

(assert (=> d!167082 m!690267))

(assert (=> d!167082 m!689497))

(assert (=> d!167082 m!689373))

(declare-fun m!690269 () Bool)

(assert (=> d!167082 m!690269))

(declare-fun m!690271 () Bool)

(assert (=> b!438527 m!690271))

(declare-fun m!690273 () Bool)

(assert (=> b!438528 m!690273))

(assert (=> b!438529 m!689497))

(assert (=> b!438529 m!689497))

(assert (=> b!438529 m!690265))

(assert (=> b!438529 m!690265))

(assert (=> b!438529 m!690267))

(declare-fun m!690275 () Bool)

(assert (=> b!438529 m!690275))

(assert (=> b!438044 d!167082))

(declare-fun d!167112 () Bool)

(declare-fun lt!192975 () Bool)

(assert (=> d!167112 (= lt!192975 (isEmpty!3210 (list!1899 (_2!2801 lt!192656))))))

(declare-fun isEmpty!3220 (Conc!1488) Bool)

(assert (=> d!167112 (= lt!192975 (isEmpty!3220 (c!88710 (_2!2801 lt!192656))))))

(assert (=> d!167112 (= (isEmpty!3211 (_2!2801 lt!192656)) lt!192975)))

(declare-fun bs!54138 () Bool)

(assert (= bs!54138 d!167112))

(declare-fun m!690277 () Bool)

(assert (=> bs!54138 m!690277))

(assert (=> bs!54138 m!690277))

(declare-fun m!690279 () Bool)

(assert (=> bs!54138 m!690279))

(declare-fun m!690281 () Bool)

(assert (=> bs!54138 m!690281))

(assert (=> b!438018 d!167112))

(declare-fun d!167114 () Bool)

(assert (=> d!167114 (= (list!1899 (seqFromList!1032 lt!192658)) (list!1903 (c!88710 (seqFromList!1032 lt!192658))))))

(declare-fun bs!54139 () Bool)

(assert (= bs!54139 d!167114))

(declare-fun m!690283 () Bool)

(assert (=> bs!54139 m!690283))

(assert (=> b!438019 d!167114))

(declare-fun d!167116 () Bool)

(assert (=> d!167116 (= (seqFromList!1032 lt!192658) (fromListB!456 lt!192658))))

(declare-fun bs!54140 () Bool)

(assert (= bs!54140 d!167116))

(declare-fun m!690285 () Bool)

(assert (=> bs!54140 m!690285))

(assert (=> b!438019 d!167116))

(declare-fun d!167118 () Bool)

(assert (=> d!167118 (= (isEmpty!3210 (_2!2802 lt!192663)) ((_ is Nil!4305) (_2!2802 lt!192663)))))

(assert (=> b!438040 d!167118))

(declare-fun d!167120 () Bool)

(declare-fun res!194402 () Bool)

(declare-fun e!267871 () Bool)

(assert (=> d!167120 (=> (not res!194402) (not e!267871))))

(assert (=> d!167120 (= res!194402 (not (isEmpty!3210 (originalCharacters!876 (h!9704 tokens!465)))))))

(assert (=> d!167120 (= (inv!5370 (h!9704 tokens!465)) e!267871)))

(declare-fun b!438534 () Bool)

(declare-fun res!194403 () Bool)

(assert (=> b!438534 (=> (not res!194403) (not e!267871))))

(declare-fun dynLambda!2566 (Int TokenValue!855) BalanceConc!2984)

(assert (=> b!438534 (= res!194403 (= (originalCharacters!876 (h!9704 tokens!465)) (list!1899 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (value!28056 (h!9704 tokens!465))))))))

(declare-fun b!438535 () Bool)

(assert (=> b!438535 (= e!267871 (= (size!3526 (h!9704 tokens!465)) (size!3532 (originalCharacters!876 (h!9704 tokens!465)))))))

(assert (= (and d!167120 res!194402) b!438534))

(assert (= (and b!438534 res!194403) b!438535))

(declare-fun b_lambda!18107 () Bool)

(assert (=> (not b_lambda!18107) (not b!438534)))

(declare-fun t!69368 () Bool)

(declare-fun tb!44151 () Bool)

(assert (=> (and b!438006 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465))))) t!69368) tb!44151))

(declare-fun b!438540 () Bool)

(declare-fun e!267874 () Bool)

(declare-fun tp!124081 () Bool)

(declare-fun inv!5373 (Conc!1488) Bool)

(assert (=> b!438540 (= e!267874 (and (inv!5373 (c!88710 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (value!28056 (h!9704 tokens!465))))) tp!124081))))

(declare-fun result!48592 () Bool)

(declare-fun inv!5374 (BalanceConc!2984) Bool)

(assert (=> tb!44151 (= result!48592 (and (inv!5374 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (value!28056 (h!9704 tokens!465)))) e!267874))))

(assert (= tb!44151 b!438540))

(declare-fun m!690287 () Bool)

(assert (=> b!438540 m!690287))

(declare-fun m!690289 () Bool)

(assert (=> tb!44151 m!690289))

(assert (=> b!438534 t!69368))

(declare-fun b_and!47255 () Bool)

(assert (= b_and!47239 (and (=> t!69368 result!48592) b_and!47255)))

(declare-fun t!69370 () Bool)

(declare-fun tb!44153 () Bool)

(assert (=> (and b!438057 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465))))) t!69370) tb!44153))

(declare-fun result!48596 () Bool)

(assert (= result!48596 result!48592))

(assert (=> b!438534 t!69370))

(declare-fun b_and!47257 () Bool)

(assert (= b_and!47243 (and (=> t!69370 result!48596) b_and!47257)))

(declare-fun t!69372 () Bool)

(declare-fun tb!44155 () Bool)

(assert (=> (and b!438017 (= (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465))))) t!69372) tb!44155))

(declare-fun result!48598 () Bool)

(assert (= result!48598 result!48592))

(assert (=> b!438534 t!69372))

(declare-fun b_and!47259 () Bool)

(assert (= b_and!47247 (and (=> t!69372 result!48598) b_and!47259)))

(declare-fun m!690291 () Bool)

(assert (=> d!167120 m!690291))

(declare-fun m!690293 () Bool)

(assert (=> b!438534 m!690293))

(assert (=> b!438534 m!690293))

(declare-fun m!690295 () Bool)

(assert (=> b!438534 m!690295))

(declare-fun m!690297 () Bool)

(assert (=> b!438535 m!690297))

(assert (=> b!438041 d!167120))

(declare-fun b!438550 () Bool)

(declare-fun e!267879 () List!4315)

(assert (=> b!438550 (= e!267879 (Cons!4305 (h!9702 lt!192671) (++!1238 (t!69337 lt!192671) lt!192638)))))

(declare-fun b!438549 () Bool)

(assert (=> b!438549 (= e!267879 lt!192638)))

(declare-fun d!167122 () Bool)

(declare-fun e!267880 () Bool)

(assert (=> d!167122 e!267880))

(declare-fun res!194409 () Bool)

(assert (=> d!167122 (=> (not res!194409) (not e!267880))))

(declare-fun lt!192978 () List!4315)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!715 (List!4315) (InoxSet C!3036))

(assert (=> d!167122 (= res!194409 (= (content!715 lt!192978) ((_ map or) (content!715 lt!192671) (content!715 lt!192638))))))

(assert (=> d!167122 (= lt!192978 e!267879)))

(declare-fun c!88831 () Bool)

(assert (=> d!167122 (= c!88831 ((_ is Nil!4305) lt!192671))))

(assert (=> d!167122 (= (++!1238 lt!192671 lt!192638) lt!192978)))

(declare-fun b!438551 () Bool)

(declare-fun res!194408 () Bool)

(assert (=> b!438551 (=> (not res!194408) (not e!267880))))

(assert (=> b!438551 (= res!194408 (= (size!3532 lt!192978) (+ (size!3532 lt!192671) (size!3532 lt!192638))))))

(declare-fun b!438552 () Bool)

(assert (=> b!438552 (= e!267880 (or (not (= lt!192638 Nil!4305)) (= lt!192978 lt!192671)))))

(assert (= (and d!167122 c!88831) b!438549))

(assert (= (and d!167122 (not c!88831)) b!438550))

(assert (= (and d!167122 res!194409) b!438551))

(assert (= (and b!438551 res!194408) b!438552))

(declare-fun m!690299 () Bool)

(assert (=> b!438550 m!690299))

(declare-fun m!690301 () Bool)

(assert (=> d!167122 m!690301))

(declare-fun m!690303 () Bool)

(assert (=> d!167122 m!690303))

(declare-fun m!690305 () Bool)

(assert (=> d!167122 m!690305))

(declare-fun m!690307 () Bool)

(assert (=> b!438551 m!690307))

(declare-fun m!690309 () Bool)

(assert (=> b!438551 m!690309))

(declare-fun m!690311 () Bool)

(assert (=> b!438551 m!690311))

(assert (=> b!438020 d!167122))

(declare-fun d!167124 () Bool)

(assert (=> d!167124 (= (seqFromList!1031 (t!69339 tokens!465)) (fromListB!458 (t!69339 tokens!465)))))

(declare-fun bs!54141 () Bool)

(assert (= bs!54141 d!167124))

(declare-fun m!690313 () Bool)

(assert (=> bs!54141 m!690313))

(assert (=> b!438005 d!167124))

(declare-fun b!438554 () Bool)

(declare-fun e!267881 () List!4315)

(assert (=> b!438554 (= e!267881 (Cons!4305 (h!9702 lt!192667) (++!1238 (t!69337 lt!192667) lt!192638)))))

(declare-fun b!438553 () Bool)

(assert (=> b!438553 (= e!267881 lt!192638)))

(declare-fun d!167126 () Bool)

(declare-fun e!267882 () Bool)

(assert (=> d!167126 e!267882))

(declare-fun res!194411 () Bool)

(assert (=> d!167126 (=> (not res!194411) (not e!267882))))

(declare-fun lt!192979 () List!4315)

(assert (=> d!167126 (= res!194411 (= (content!715 lt!192979) ((_ map or) (content!715 lt!192667) (content!715 lt!192638))))))

(assert (=> d!167126 (= lt!192979 e!267881)))

(declare-fun c!88832 () Bool)

(assert (=> d!167126 (= c!88832 ((_ is Nil!4305) lt!192667))))

(assert (=> d!167126 (= (++!1238 lt!192667 lt!192638) lt!192979)))

(declare-fun b!438555 () Bool)

(declare-fun res!194410 () Bool)

(assert (=> b!438555 (=> (not res!194410) (not e!267882))))

(assert (=> b!438555 (= res!194410 (= (size!3532 lt!192979) (+ (size!3532 lt!192667) (size!3532 lt!192638))))))

(declare-fun b!438556 () Bool)

(assert (=> b!438556 (= e!267882 (or (not (= lt!192638 Nil!4305)) (= lt!192979 lt!192667)))))

(assert (= (and d!167126 c!88832) b!438553))

(assert (= (and d!167126 (not c!88832)) b!438554))

(assert (= (and d!167126 res!194411) b!438555))

(assert (= (and b!438555 res!194410) b!438556))

(declare-fun m!690315 () Bool)

(assert (=> b!438554 m!690315))

(declare-fun m!690317 () Bool)

(assert (=> d!167126 m!690317))

(declare-fun m!690319 () Bool)

(assert (=> d!167126 m!690319))

(assert (=> d!167126 m!690305))

(declare-fun m!690321 () Bool)

(assert (=> b!438555 m!690321))

(assert (=> b!438555 m!690131))

(assert (=> b!438555 m!690311))

(assert (=> b!438005 d!167126))

(declare-fun d!167128 () Bool)

(assert (=> d!167128 (= (list!1899 (charsOf!476 separatorToken!170)) (list!1903 (c!88710 (charsOf!476 separatorToken!170))))))

(declare-fun bs!54142 () Bool)

(assert (= bs!54142 d!167128))

(declare-fun m!690323 () Bool)

(assert (=> bs!54142 m!690323))

(assert (=> b!438005 d!167128))

(declare-fun d!167130 () Bool)

(assert (=> d!167130 (= (list!1899 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 (seqFromList!1031 (t!69339 tokens!465)) separatorToken!170 0)) (list!1903 (c!88710 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 (seqFromList!1031 (t!69339 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!54143 () Bool)

(assert (= bs!54143 d!167130))

(declare-fun m!690325 () Bool)

(assert (=> bs!54143 m!690325))

(assert (=> b!438005 d!167130))

(declare-fun b!438558 () Bool)

(declare-fun e!267883 () List!4315)

(assert (=> b!438558 (= e!267883 (Cons!4305 (h!9702 lt!192671) (++!1238 (t!69337 lt!192671) lt!192681)))))

(declare-fun b!438557 () Bool)

(assert (=> b!438557 (= e!267883 lt!192681)))

(declare-fun d!167132 () Bool)

(declare-fun e!267884 () Bool)

(assert (=> d!167132 e!267884))

(declare-fun res!194413 () Bool)

(assert (=> d!167132 (=> (not res!194413) (not e!267884))))

(declare-fun lt!192980 () List!4315)

(assert (=> d!167132 (= res!194413 (= (content!715 lt!192980) ((_ map or) (content!715 lt!192671) (content!715 lt!192681))))))

(assert (=> d!167132 (= lt!192980 e!267883)))

(declare-fun c!88833 () Bool)

(assert (=> d!167132 (= c!88833 ((_ is Nil!4305) lt!192671))))

(assert (=> d!167132 (= (++!1238 lt!192671 lt!192681) lt!192980)))

(declare-fun b!438559 () Bool)

(declare-fun res!194412 () Bool)

(assert (=> b!438559 (=> (not res!194412) (not e!267884))))

(assert (=> b!438559 (= res!194412 (= (size!3532 lt!192980) (+ (size!3532 lt!192671) (size!3532 lt!192681))))))

(declare-fun b!438560 () Bool)

(assert (=> b!438560 (= e!267884 (or (not (= lt!192681 Nil!4305)) (= lt!192980 lt!192671)))))

(assert (= (and d!167132 c!88833) b!438557))

(assert (= (and d!167132 (not c!88833)) b!438558))

(assert (= (and d!167132 res!194413) b!438559))

(assert (= (and b!438559 res!194412) b!438560))

(declare-fun m!690327 () Bool)

(assert (=> b!438558 m!690327))

(declare-fun m!690329 () Bool)

(assert (=> d!167132 m!690329))

(assert (=> d!167132 m!690303))

(declare-fun m!690331 () Bool)

(assert (=> d!167132 m!690331))

(declare-fun m!690333 () Bool)

(assert (=> b!438559 m!690333))

(assert (=> b!438559 m!690309))

(declare-fun m!690335 () Bool)

(assert (=> b!438559 m!690335))

(assert (=> b!438005 d!167132))

(declare-fun bs!54144 () Bool)

(declare-fun d!167134 () Bool)

(assert (= bs!54144 (and d!167134 b!438200)))

(declare-fun lambda!12736 () Int)

(assert (=> bs!54144 (not (= lambda!12736 lambda!12727))))

(declare-fun bs!54145 () Bool)

(assert (= bs!54145 (and d!167134 b!438047)))

(assert (=> bs!54145 (not (= lambda!12736 lambda!12712))))

(declare-fun bs!54146 () Bool)

(assert (= bs!54146 (and d!167134 b!438039)))

(assert (=> bs!54146 (= lambda!12736 lambda!12711)))

(declare-fun bs!54147 () Bool)

(assert (= bs!54147 (and d!167134 d!166990)))

(assert (=> bs!54147 (= lambda!12736 lambda!12726)))

(declare-fun bs!54148 () Bool)

(assert (= bs!54148 (and d!167134 d!167068)))

(assert (=> bs!54148 (not (= lambda!12736 lambda!12735))))

(declare-fun bs!54149 () Bool)

(assert (= bs!54149 (and d!167134 b!438249)))

(assert (=> bs!54149 (not (= lambda!12736 lambda!12730))))

(declare-fun bs!54150 () Bool)

(declare-fun b!438567 () Bool)

(assert (= bs!54150 (and b!438567 b!438200)))

(declare-fun lambda!12737 () Int)

(assert (=> bs!54150 (= lambda!12737 lambda!12727)))

(declare-fun bs!54151 () Bool)

(assert (= bs!54151 (and b!438567 b!438047)))

(assert (=> bs!54151 (= lambda!12737 lambda!12712)))

(declare-fun bs!54152 () Bool)

(assert (= bs!54152 (and b!438567 b!438039)))

(assert (=> bs!54152 (not (= lambda!12737 lambda!12711))))

(declare-fun bs!54153 () Bool)

(assert (= bs!54153 (and b!438567 d!166990)))

(assert (=> bs!54153 (not (= lambda!12737 lambda!12726))))

(declare-fun bs!54154 () Bool)

(assert (= bs!54154 (and b!438567 d!167068)))

(assert (=> bs!54154 (= lambda!12737 lambda!12735)))

(declare-fun bs!54155 () Bool)

(assert (= bs!54155 (and b!438567 b!438249)))

(assert (=> bs!54155 (= lambda!12737 lambda!12730)))

(declare-fun bs!54156 () Bool)

(assert (= bs!54156 (and b!438567 d!167134)))

(assert (=> bs!54156 (not (= lambda!12737 lambda!12736))))

(declare-fun b!438574 () Bool)

(declare-fun e!267894 () Bool)

(assert (=> b!438574 (= e!267894 true)))

(declare-fun b!438573 () Bool)

(declare-fun e!267893 () Bool)

(assert (=> b!438573 (= e!267893 e!267894)))

(declare-fun b!438572 () Bool)

(declare-fun e!267892 () Bool)

(assert (=> b!438572 (= e!267892 e!267893)))

(assert (=> b!438567 e!267892))

(assert (= b!438573 b!438574))

(assert (= b!438572 b!438573))

(assert (= (and b!438567 ((_ is Cons!4306) rules!1920)) b!438572))

(assert (=> b!438574 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12737))))

(assert (=> b!438574 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12737))))

(assert (=> b!438567 true))

(declare-fun b!438561 () Bool)

(declare-fun e!267885 () Bool)

(declare-fun lt!192981 () Option!1083)

(assert (=> b!438561 (= e!267885 (= (_1!2803 (v!15347 lt!192981)) (apply!1070 (seqFromList!1031 (t!69339 tokens!465)) 0)))))

(declare-fun b!438562 () Bool)

(declare-fun e!267886 () BalanceConc!2984)

(assert (=> b!438562 (= e!267886 (BalanceConc!2985 Empty!1488))))

(declare-fun call!30161 () Token!1410)

(assert (=> b!438562 (= (print!444 thiss!17480 (singletonSeq!379 call!30161)) (printTailRec!405 thiss!17480 (singletonSeq!379 call!30161) 0 (BalanceConc!2985 Empty!1488)))))

(declare-fun lt!192992 () Unit!7589)

(declare-fun Unit!7605 () Unit!7589)

(assert (=> b!438562 (= lt!192992 Unit!7605)))

(declare-fun lt!192994 () Unit!7589)

(declare-fun lt!192986 () BalanceConc!2984)

(declare-fun call!30158 () BalanceConc!2984)

(assert (=> b!438562 (= lt!192994 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!180 thiss!17480 rules!1920 (list!1899 call!30158) (list!1899 lt!192986)))))

(assert (=> b!438562 false))

(declare-fun lt!192993 () Unit!7589)

(declare-fun Unit!7606 () Unit!7589)

(assert (=> b!438562 (= lt!192993 Unit!7606)))

(declare-fun b!438563 () Bool)

(declare-fun e!267891 () Bool)

(assert (=> b!438563 (= e!267891 (<= 0 (size!3527 (seqFromList!1031 (t!69339 tokens!465)))))))

(declare-fun b!438564 () Bool)

(declare-fun call!30159 () BalanceConc!2984)

(assert (=> b!438564 (= e!267886 (++!1240 call!30159 lt!192986))))

(declare-fun bm!30152 () Bool)

(declare-fun call!30160 () BalanceConc!2984)

(assert (=> bm!30152 (= call!30158 call!30160)))

(declare-fun lt!192983 () BalanceConc!2984)

(assert (=> d!167134 (= (list!1899 lt!192983) (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 (dropList!232 (seqFromList!1031 (t!69339 tokens!465)) 0) separatorToken!170))))

(declare-fun e!267889 () BalanceConc!2984)

(assert (=> d!167134 (= lt!192983 e!267889)))

(declare-fun c!88834 () Bool)

(assert (=> d!167134 (= c!88834 (>= 0 (size!3527 (seqFromList!1031 (t!69339 tokens!465)))))))

(declare-fun lt!192985 () Unit!7589)

(assert (=> d!167134 (= lt!192985 (lemmaContentSubsetPreservesForall!176 (list!1902 (seqFromList!1031 (t!69339 tokens!465))) (dropList!232 (seqFromList!1031 (t!69339 tokens!465)) 0) lambda!12736))))

(assert (=> d!167134 e!267891))

(declare-fun res!194416 () Bool)

(assert (=> d!167134 (=> (not res!194416) (not e!267891))))

(assert (=> d!167134 (= res!194416 (>= 0 0))))

(assert (=> d!167134 (= (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 (seqFromList!1031 (t!69339 tokens!465)) separatorToken!170 0) lt!192983)))

(declare-fun bm!30153 () Bool)

(declare-fun call!30157 () Token!1410)

(assert (=> bm!30153 (= call!30157 (apply!1070 (seqFromList!1031 (t!69339 tokens!465)) 0))))

(declare-fun b!438565 () Bool)

(declare-fun e!267887 () BalanceConc!2984)

(assert (=> b!438565 (= e!267887 call!30159)))

(declare-fun b!438566 () Bool)

(assert (=> b!438566 (= e!267889 (BalanceConc!2985 Empty!1488))))

(assert (=> b!438567 (= e!267889 e!267887)))

(declare-fun lt!192987 () List!4317)

(assert (=> b!438567 (= lt!192987 (list!1902 (seqFromList!1031 (t!69339 tokens!465))))))

(declare-fun lt!192989 () Unit!7589)

(assert (=> b!438567 (= lt!192989 (lemmaDropApply!272 lt!192987 0))))

(assert (=> b!438567 (= (head!1068 (drop!301 lt!192987 0)) (apply!1072 lt!192987 0))))

(declare-fun lt!192982 () Unit!7589)

(assert (=> b!438567 (= lt!192982 lt!192989)))

(declare-fun lt!192984 () List!4317)

(assert (=> b!438567 (= lt!192984 (list!1902 (seqFromList!1031 (t!69339 tokens!465))))))

(declare-fun lt!192988 () Unit!7589)

(assert (=> b!438567 (= lt!192988 (lemmaDropTail!264 lt!192984 0))))

(assert (=> b!438567 (= (tail!612 (drop!301 lt!192984 0)) (drop!301 lt!192984 (+ 0 1)))))

(declare-fun lt!192991 () Unit!7589)

(assert (=> b!438567 (= lt!192991 lt!192988)))

(declare-fun lt!192990 () Unit!7589)

(assert (=> b!438567 (= lt!192990 (forallContained!386 (list!1902 (seqFromList!1031 (t!69339 tokens!465))) lambda!12737 (apply!1070 (seqFromList!1031 (t!69339 tokens!465)) 0)))))

(assert (=> b!438567 (= lt!192986 (printWithSeparatorTokenWhenNeededRec!392 thiss!17480 rules!1920 (seqFromList!1031 (t!69339 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!438567 (= lt!192981 (maxPrefixZipperSequence!398 thiss!17480 rules!1920 (++!1240 (charsOf!476 (apply!1070 (seqFromList!1031 (t!69339 tokens!465)) 0)) lt!192986)))))

(declare-fun res!194415 () Bool)

(assert (=> b!438567 (= res!194415 ((_ is Some!1082) lt!192981))))

(assert (=> b!438567 (=> (not res!194415) (not e!267885))))

(declare-fun c!88835 () Bool)

(assert (=> b!438567 (= c!88835 e!267885)))

(declare-fun b!438568 () Bool)

(declare-fun c!88836 () Bool)

(declare-fun e!267890 () Bool)

(assert (=> b!438568 (= c!88836 e!267890)))

(declare-fun res!194414 () Bool)

(assert (=> b!438568 (=> (not res!194414) (not e!267890))))

(assert (=> b!438568 (= res!194414 ((_ is Some!1082) lt!192981))))

(assert (=> b!438568 (= e!267887 e!267886)))

(declare-fun bm!30154 () Bool)

(declare-fun c!88837 () Bool)

(assert (=> bm!30154 (= c!88837 c!88835)))

(declare-fun e!267888 () BalanceConc!2984)

(assert (=> bm!30154 (= call!30159 (++!1240 e!267888 (ite c!88835 lt!192986 call!30158)))))

(declare-fun b!438569 () Bool)

(assert (=> b!438569 (= e!267890 (not (= (_1!2803 (v!15347 lt!192981)) call!30157)))))

(declare-fun b!438570 () Bool)

(assert (=> b!438570 (= e!267888 call!30160)))

(declare-fun bm!30155 () Bool)

(assert (=> bm!30155 (= call!30160 (charsOf!476 (ite c!88835 call!30157 (ite c!88836 separatorToken!170 call!30161))))))

(declare-fun b!438571 () Bool)

(assert (=> b!438571 (= e!267888 (charsOf!476 call!30161))))

(declare-fun bm!30156 () Bool)

(assert (=> bm!30156 (= call!30161 call!30157)))

(assert (= (and d!167134 res!194416) b!438563))

(assert (= (and d!167134 c!88834) b!438566))

(assert (= (and d!167134 (not c!88834)) b!438567))

(assert (= (and b!438567 res!194415) b!438561))

(assert (= (and b!438567 c!88835) b!438565))

(assert (= (and b!438567 (not c!88835)) b!438568))

(assert (= (and b!438568 res!194414) b!438569))

(assert (= (and b!438568 c!88836) b!438564))

(assert (= (and b!438568 (not c!88836)) b!438562))

(assert (= (or b!438564 b!438562) bm!30156))

(assert (= (or b!438564 b!438562) bm!30152))

(assert (= (or b!438565 b!438569 bm!30156) bm!30153))

(assert (= (or b!438565 bm!30152) bm!30155))

(assert (= (or b!438565 b!438564) bm!30154))

(assert (= (and bm!30154 c!88837) b!438570))

(assert (= (and bm!30154 (not c!88837)) b!438571))

(declare-fun m!690337 () Bool)

(assert (=> b!438567 m!690337))

(declare-fun m!690339 () Bool)

(assert (=> b!438567 m!690339))

(declare-fun m!690341 () Bool)

(assert (=> b!438567 m!690341))

(assert (=> b!438567 m!689401))

(assert (=> b!438567 m!690339))

(assert (=> b!438567 m!689401))

(declare-fun m!690343 () Bool)

(assert (=> b!438567 m!690343))

(declare-fun m!690345 () Bool)

(assert (=> b!438567 m!690345))

(declare-fun m!690347 () Bool)

(assert (=> b!438567 m!690347))

(declare-fun m!690349 () Bool)

(assert (=> b!438567 m!690349))

(assert (=> b!438567 m!689401))

(assert (=> b!438567 m!690337))

(declare-fun m!690351 () Bool)

(assert (=> b!438567 m!690351))

(assert (=> b!438567 m!690345))

(declare-fun m!690353 () Bool)

(assert (=> b!438567 m!690353))

(assert (=> b!438567 m!690347))

(declare-fun m!690355 () Bool)

(assert (=> b!438567 m!690355))

(declare-fun m!690357 () Bool)

(assert (=> b!438567 m!690357))

(declare-fun m!690359 () Bool)

(assert (=> b!438567 m!690359))

(declare-fun m!690361 () Bool)

(assert (=> b!438567 m!690361))

(declare-fun m!690363 () Bool)

(assert (=> b!438567 m!690363))

(assert (=> b!438567 m!690339))

(assert (=> b!438567 m!690355))

(assert (=> b!438567 m!690357))

(declare-fun m!690365 () Bool)

(assert (=> b!438567 m!690365))

(assert (=> bm!30153 m!689401))

(assert (=> bm!30153 m!690339))

(declare-fun m!690367 () Bool)

(assert (=> bm!30154 m!690367))

(declare-fun m!690369 () Bool)

(assert (=> b!438571 m!690369))

(declare-fun m!690371 () Bool)

(assert (=> b!438564 m!690371))

(declare-fun m!690373 () Bool)

(assert (=> bm!30155 m!690373))

(assert (=> b!438561 m!689401))

(assert (=> b!438561 m!690339))

(assert (=> d!167134 m!690337))

(declare-fun m!690375 () Bool)

(assert (=> d!167134 m!690375))

(declare-fun m!690377 () Bool)

(assert (=> d!167134 m!690377))

(declare-fun m!690379 () Bool)

(assert (=> d!167134 m!690379))

(assert (=> d!167134 m!689401))

(assert (=> d!167134 m!690337))

(assert (=> d!167134 m!689401))

(declare-fun m!690381 () Bool)

(assert (=> d!167134 m!690381))

(assert (=> d!167134 m!690375))

(declare-fun m!690383 () Bool)

(assert (=> d!167134 m!690383))

(assert (=> d!167134 m!689401))

(assert (=> d!167134 m!690375))

(assert (=> b!438563 m!689401))

(assert (=> b!438563 m!690381))

(declare-fun m!690385 () Bool)

(assert (=> b!438562 m!690385))

(declare-fun m!690387 () Bool)

(assert (=> b!438562 m!690387))

(declare-fun m!690389 () Bool)

(assert (=> b!438562 m!690389))

(declare-fun m!690391 () Bool)

(assert (=> b!438562 m!690391))

(assert (=> b!438562 m!690387))

(assert (=> b!438562 m!690391))

(assert (=> b!438562 m!690385))

(declare-fun m!690393 () Bool)

(assert (=> b!438562 m!690393))

(assert (=> b!438562 m!690387))

(declare-fun m!690395 () Bool)

(assert (=> b!438562 m!690395))

(assert (=> b!438005 d!167134))

(declare-fun d!167136 () Bool)

(declare-fun lt!192997 () BalanceConc!2984)

(assert (=> d!167136 (= (list!1899 lt!192997) (originalCharacters!876 separatorToken!170))))

(assert (=> d!167136 (= lt!192997 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (value!28056 separatorToken!170)))))

(assert (=> d!167136 (= (charsOf!476 separatorToken!170) lt!192997)))

(declare-fun b_lambda!18109 () Bool)

(assert (=> (not b_lambda!18109) (not d!167136)))

(declare-fun tb!44157 () Bool)

(declare-fun t!69374 () Bool)

(assert (=> (and b!438006 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170)))) t!69374) tb!44157))

(declare-fun b!438575 () Bool)

(declare-fun e!267895 () Bool)

(declare-fun tp!124082 () Bool)

(assert (=> b!438575 (= e!267895 (and (inv!5373 (c!88710 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (value!28056 separatorToken!170)))) tp!124082))))

(declare-fun result!48600 () Bool)

(assert (=> tb!44157 (= result!48600 (and (inv!5374 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (value!28056 separatorToken!170))) e!267895))))

(assert (= tb!44157 b!438575))

(declare-fun m!690397 () Bool)

(assert (=> b!438575 m!690397))

(declare-fun m!690399 () Bool)

(assert (=> tb!44157 m!690399))

(assert (=> d!167136 t!69374))

(declare-fun b_and!47261 () Bool)

(assert (= b_and!47255 (and (=> t!69374 result!48600) b_and!47261)))

(declare-fun tb!44159 () Bool)

(declare-fun t!69376 () Bool)

(assert (=> (and b!438057 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170)))) t!69376) tb!44159))

(declare-fun result!48602 () Bool)

(assert (= result!48602 result!48600))

(assert (=> d!167136 t!69376))

(declare-fun b_and!47263 () Bool)

(assert (= b_and!47257 (and (=> t!69376 result!48602) b_and!47263)))

(declare-fun t!69378 () Bool)

(declare-fun tb!44161 () Bool)

(assert (=> (and b!438017 (= (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170)))) t!69378) tb!44161))

(declare-fun result!48604 () Bool)

(assert (= result!48604 result!48600))

(assert (=> d!167136 t!69378))

(declare-fun b_and!47265 () Bool)

(assert (= b_and!47259 (and (=> t!69378 result!48604) b_and!47265)))

(declare-fun m!690401 () Bool)

(assert (=> d!167136 m!690401))

(declare-fun m!690403 () Bool)

(assert (=> d!167136 m!690403))

(assert (=> b!438005 d!167136))

(declare-fun e!267896 () List!4315)

(declare-fun b!438577 () Bool)

(assert (=> b!438577 (= e!267896 (Cons!4305 (h!9702 (++!1238 lt!192671 lt!192667)) (++!1238 (t!69337 (++!1238 lt!192671 lt!192667)) lt!192638)))))

(declare-fun b!438576 () Bool)

(assert (=> b!438576 (= e!267896 lt!192638)))

(declare-fun d!167138 () Bool)

(declare-fun e!267897 () Bool)

(assert (=> d!167138 e!267897))

(declare-fun res!194418 () Bool)

(assert (=> d!167138 (=> (not res!194418) (not e!267897))))

(declare-fun lt!192998 () List!4315)

(assert (=> d!167138 (= res!194418 (= (content!715 lt!192998) ((_ map or) (content!715 (++!1238 lt!192671 lt!192667)) (content!715 lt!192638))))))

(assert (=> d!167138 (= lt!192998 e!267896)))

(declare-fun c!88838 () Bool)

(assert (=> d!167138 (= c!88838 ((_ is Nil!4305) (++!1238 lt!192671 lt!192667)))))

(assert (=> d!167138 (= (++!1238 (++!1238 lt!192671 lt!192667) lt!192638) lt!192998)))

(declare-fun b!438578 () Bool)

(declare-fun res!194417 () Bool)

(assert (=> b!438578 (=> (not res!194417) (not e!267897))))

(assert (=> b!438578 (= res!194417 (= (size!3532 lt!192998) (+ (size!3532 (++!1238 lt!192671 lt!192667)) (size!3532 lt!192638))))))

(declare-fun b!438579 () Bool)

(assert (=> b!438579 (= e!267897 (or (not (= lt!192638 Nil!4305)) (= lt!192998 (++!1238 lt!192671 lt!192667))))))

(assert (= (and d!167138 c!88838) b!438576))

(assert (= (and d!167138 (not c!88838)) b!438577))

(assert (= (and d!167138 res!194418) b!438578))

(assert (= (and b!438578 res!194417) b!438579))

(declare-fun m!690405 () Bool)

(assert (=> b!438577 m!690405))

(declare-fun m!690407 () Bool)

(assert (=> d!167138 m!690407))

(assert (=> d!167138 m!689415))

(declare-fun m!690409 () Bool)

(assert (=> d!167138 m!690409))

(assert (=> d!167138 m!690305))

(declare-fun m!690411 () Bool)

(assert (=> b!438578 m!690411))

(assert (=> b!438578 m!689415))

(declare-fun m!690413 () Bool)

(assert (=> b!438578 m!690413))

(assert (=> b!438578 m!690311))

(assert (=> b!438005 d!167138))

(declare-fun d!167140 () Bool)

(declare-fun lt!192999 () BalanceConc!2984)

(assert (=> d!167140 (= (list!1899 lt!192999) (originalCharacters!876 (h!9704 tokens!465)))))

(assert (=> d!167140 (= lt!192999 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (value!28056 (h!9704 tokens!465))))))

(assert (=> d!167140 (= (charsOf!476 (h!9704 tokens!465)) lt!192999)))

(declare-fun b_lambda!18111 () Bool)

(assert (=> (not b_lambda!18111) (not d!167140)))

(assert (=> d!167140 t!69368))

(declare-fun b_and!47267 () Bool)

(assert (= b_and!47261 (and (=> t!69368 result!48592) b_and!47267)))

(assert (=> d!167140 t!69370))

(declare-fun b_and!47269 () Bool)

(assert (= b_and!47263 (and (=> t!69370 result!48596) b_and!47269)))

(assert (=> d!167140 t!69372))

(declare-fun b_and!47271 () Bool)

(assert (= b_and!47265 (and (=> t!69372 result!48598) b_and!47271)))

(declare-fun m!690415 () Bool)

(assert (=> d!167140 m!690415))

(assert (=> d!167140 m!690293))

(assert (=> b!438005 d!167140))

(declare-fun b!438581 () Bool)

(declare-fun e!267898 () List!4315)

(assert (=> b!438581 (= e!267898 (Cons!4305 (h!9702 lt!192671) (++!1238 (t!69337 lt!192671) lt!192667)))))

(declare-fun b!438580 () Bool)

(assert (=> b!438580 (= e!267898 lt!192667)))

(declare-fun d!167142 () Bool)

(declare-fun e!267899 () Bool)

(assert (=> d!167142 e!267899))

(declare-fun res!194420 () Bool)

(assert (=> d!167142 (=> (not res!194420) (not e!267899))))

(declare-fun lt!193000 () List!4315)

(assert (=> d!167142 (= res!194420 (= (content!715 lt!193000) ((_ map or) (content!715 lt!192671) (content!715 lt!192667))))))

(assert (=> d!167142 (= lt!193000 e!267898)))

(declare-fun c!88839 () Bool)

(assert (=> d!167142 (= c!88839 ((_ is Nil!4305) lt!192671))))

(assert (=> d!167142 (= (++!1238 lt!192671 lt!192667) lt!193000)))

(declare-fun b!438582 () Bool)

(declare-fun res!194419 () Bool)

(assert (=> b!438582 (=> (not res!194419) (not e!267899))))

(assert (=> b!438582 (= res!194419 (= (size!3532 lt!193000) (+ (size!3532 lt!192671) (size!3532 lt!192667))))))

(declare-fun b!438583 () Bool)

(assert (=> b!438583 (= e!267899 (or (not (= lt!192667 Nil!4305)) (= lt!193000 lt!192671)))))

(assert (= (and d!167142 c!88839) b!438580))

(assert (= (and d!167142 (not c!88839)) b!438581))

(assert (= (and d!167142 res!194420) b!438582))

(assert (= (and b!438582 res!194419) b!438583))

(declare-fun m!690417 () Bool)

(assert (=> b!438581 m!690417))

(declare-fun m!690419 () Bool)

(assert (=> d!167142 m!690419))

(assert (=> d!167142 m!690303))

(assert (=> d!167142 m!690319))

(declare-fun m!690421 () Bool)

(assert (=> b!438582 m!690421))

(assert (=> b!438582 m!690309))

(assert (=> b!438582 m!690131))

(assert (=> b!438005 d!167142))

(declare-fun bs!54157 () Bool)

(declare-fun b!438584 () Bool)

(assert (= bs!54157 (and b!438584 b!438200)))

(declare-fun lambda!12738 () Int)

(assert (=> bs!54157 (= lambda!12738 lambda!12727)))

(declare-fun bs!54158 () Bool)

(assert (= bs!54158 (and b!438584 b!438047)))

(assert (=> bs!54158 (= lambda!12738 lambda!12712)))

(declare-fun bs!54159 () Bool)

(assert (= bs!54159 (and b!438584 b!438039)))

(assert (=> bs!54159 (not (= lambda!12738 lambda!12711))))

(declare-fun bs!54160 () Bool)

(assert (= bs!54160 (and b!438584 d!166990)))

(assert (=> bs!54160 (not (= lambda!12738 lambda!12726))))

(declare-fun bs!54161 () Bool)

(assert (= bs!54161 (and b!438584 d!167068)))

(assert (=> bs!54161 (= lambda!12738 lambda!12735)))

(declare-fun bs!54162 () Bool)

(assert (= bs!54162 (and b!438584 b!438249)))

(assert (=> bs!54162 (= lambda!12738 lambda!12730)))

(declare-fun bs!54163 () Bool)

(assert (= bs!54163 (and b!438584 d!167134)))

(assert (=> bs!54163 (not (= lambda!12738 lambda!12736))))

(declare-fun bs!54164 () Bool)

(assert (= bs!54164 (and b!438584 b!438567)))

(assert (=> bs!54164 (= lambda!12738 lambda!12737)))

(declare-fun b!438596 () Bool)

(declare-fun e!267907 () Bool)

(assert (=> b!438596 (= e!267907 true)))

(declare-fun b!438595 () Bool)

(declare-fun e!267906 () Bool)

(assert (=> b!438595 (= e!267906 e!267907)))

(declare-fun b!438594 () Bool)

(declare-fun e!267905 () Bool)

(assert (=> b!438594 (= e!267905 e!267906)))

(assert (=> b!438584 e!267905))

(assert (= b!438595 b!438596))

(assert (= b!438594 b!438595))

(assert (= (and b!438584 ((_ is Cons!4306) rules!1920)) b!438594))

(assert (=> b!438596 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12738))))

(assert (=> b!438596 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 rules!1920)))) (dynLambda!2561 order!3735 lambda!12738))))

(assert (=> b!438584 true))

(declare-fun e!267904 () List!4315)

(declare-fun e!267902 () List!4315)

(assert (=> b!438584 (= e!267904 e!267902)))

(declare-fun lt!193005 () Unit!7589)

(assert (=> b!438584 (= lt!193005 (forallContained!386 (t!69339 tokens!465) lambda!12738 (h!9704 (t!69339 tokens!465))))))

(declare-fun lt!193006 () List!4315)

(assert (=> b!438584 (= lt!193006 (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 (t!69339 (t!69339 tokens!465)) separatorToken!170))))

(declare-fun lt!193001 () Option!1082)

(assert (=> b!438584 (= lt!193001 (maxPrefix!435 thiss!17480 rules!1920 (++!1238 (list!1899 (charsOf!476 (h!9704 (t!69339 tokens!465)))) lt!193006)))))

(declare-fun c!88840 () Bool)

(assert (=> b!438584 (= c!88840 (and ((_ is Some!1081) lt!193001) (= (_1!2802 (v!15346 lt!193001)) (h!9704 (t!69339 tokens!465)))))))

(declare-fun bm!30157 () Bool)

(declare-fun c!88841 () Bool)

(assert (=> bm!30157 (= c!88841 c!88840)))

(declare-fun call!30162 () List!4315)

(declare-fun call!30166 () List!4315)

(declare-fun e!267900 () List!4315)

(assert (=> bm!30157 (= call!30166 (++!1238 e!267900 (ite c!88840 lt!193006 call!30162)))))

(declare-fun bm!30158 () Bool)

(declare-fun call!30164 () BalanceConc!2984)

(assert (=> bm!30158 (= call!30164 (charsOf!476 (h!9704 (t!69339 tokens!465))))))

(declare-fun b!438585 () Bool)

(declare-fun e!267901 () List!4315)

(assert (=> b!438585 (= e!267901 Nil!4305)))

(assert (=> b!438585 (= (print!444 thiss!17480 (singletonSeq!379 (h!9704 (t!69339 tokens!465)))) (printTailRec!405 thiss!17480 (singletonSeq!379 (h!9704 (t!69339 tokens!465))) 0 (BalanceConc!2985 Empty!1488)))))

(declare-fun lt!193002 () Unit!7589)

(declare-fun Unit!7607 () Unit!7589)

(assert (=> b!438585 (= lt!193002 Unit!7607)))

(declare-fun lt!193003 () Unit!7589)

(assert (=> b!438585 (= lt!193003 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!180 thiss!17480 rules!1920 call!30162 lt!193006))))

(assert (=> b!438585 false))

(declare-fun lt!193004 () Unit!7589)

(declare-fun Unit!7608 () Unit!7589)

(assert (=> b!438585 (= lt!193004 Unit!7608)))

(declare-fun d!167144 () Bool)

(declare-fun c!88842 () Bool)

(assert (=> d!167144 (= c!88842 ((_ is Cons!4307) (t!69339 tokens!465)))))

(assert (=> d!167144 (= (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 (t!69339 tokens!465) separatorToken!170) e!267904)))

(declare-fun b!438586 () Bool)

(declare-fun call!30165 () BalanceConc!2984)

(assert (=> b!438586 (= e!267900 (list!1899 call!30165))))

(declare-fun e!267903 () BalanceConc!2984)

(declare-fun call!30163 () List!4315)

(declare-fun bm!30159 () Bool)

(assert (=> bm!30159 (= call!30163 (list!1899 (ite c!88840 call!30164 e!267903)))))

(declare-fun b!438587 () Bool)

(assert (=> b!438587 (= e!267900 call!30163)))

(declare-fun b!438588 () Bool)

(assert (=> b!438588 (= e!267903 (charsOf!476 separatorToken!170))))

(declare-fun b!438589 () Bool)

(assert (=> b!438589 (= e!267902 call!30166)))

(declare-fun b!438590 () Bool)

(declare-fun c!88844 () Bool)

(assert (=> b!438590 (= c!88844 (and ((_ is Some!1081) lt!193001) (not (= (_1!2802 (v!15346 lt!193001)) (h!9704 (t!69339 tokens!465))))))))

(assert (=> b!438590 (= e!267902 e!267901)))

(declare-fun b!438591 () Bool)

(assert (=> b!438591 (= e!267903 call!30165)))

(declare-fun b!438592 () Bool)

(assert (=> b!438592 (= e!267904 Nil!4305)))

(declare-fun b!438593 () Bool)

(assert (=> b!438593 (= e!267901 (++!1238 call!30166 lt!193006))))

(declare-fun bm!30160 () Bool)

(assert (=> bm!30160 (= call!30165 call!30164)))

(declare-fun bm!30161 () Bool)

(assert (=> bm!30161 (= call!30162 call!30163)))

(declare-fun c!88843 () Bool)

(assert (=> bm!30161 (= c!88843 c!88844)))

(assert (= (and d!167144 c!88842) b!438584))

(assert (= (and d!167144 (not c!88842)) b!438592))

(assert (= (and b!438584 c!88840) b!438589))

(assert (= (and b!438584 (not c!88840)) b!438590))

(assert (= (and b!438590 c!88844) b!438593))

(assert (= (and b!438590 (not c!88844)) b!438585))

(assert (= (or b!438593 b!438585) bm!30160))

(assert (= (or b!438593 b!438585) bm!30161))

(assert (= (and bm!30161 c!88843) b!438588))

(assert (= (and bm!30161 (not c!88843)) b!438591))

(assert (= (or b!438589 bm!30160) bm!30158))

(assert (= (or b!438589 bm!30161) bm!30159))

(assert (= (or b!438589 b!438593) bm!30157))

(assert (= (and bm!30157 c!88841) b!438587))

(assert (= (and bm!30157 (not c!88841)) b!438586))

(declare-fun m!690423 () Bool)

(assert (=> bm!30159 m!690423))

(declare-fun m!690425 () Bool)

(assert (=> b!438584 m!690425))

(declare-fun m!690427 () Bool)

(assert (=> b!438584 m!690427))

(declare-fun m!690429 () Bool)

(assert (=> b!438584 m!690429))

(assert (=> b!438584 m!690425))

(declare-fun m!690431 () Bool)

(assert (=> b!438584 m!690431))

(declare-fun m!690433 () Bool)

(assert (=> b!438584 m!690433))

(declare-fun m!690435 () Bool)

(assert (=> b!438584 m!690435))

(assert (=> b!438584 m!690431))

(assert (=> b!438584 m!690427))

(assert (=> bm!30158 m!690425))

(declare-fun m!690437 () Bool)

(assert (=> bm!30157 m!690437))

(assert (=> b!438588 m!689405))

(declare-fun m!690439 () Bool)

(assert (=> b!438586 m!690439))

(declare-fun m!690441 () Bool)

(assert (=> b!438593 m!690441))

(declare-fun m!690443 () Bool)

(assert (=> b!438585 m!690443))

(assert (=> b!438585 m!690443))

(declare-fun m!690445 () Bool)

(assert (=> b!438585 m!690445))

(assert (=> b!438585 m!690443))

(declare-fun m!690447 () Bool)

(assert (=> b!438585 m!690447))

(declare-fun m!690449 () Bool)

(assert (=> b!438585 m!690449))

(assert (=> b!438005 d!167144))

(declare-fun d!167146 () Bool)

(assert (=> d!167146 (= (++!1238 (++!1238 lt!192671 lt!192667) lt!192638) (++!1238 lt!192671 (++!1238 lt!192667 lt!192638)))))

(declare-fun lt!193009 () Unit!7589)

(declare-fun choose!3305 (List!4315 List!4315 List!4315) Unit!7589)

(assert (=> d!167146 (= lt!193009 (choose!3305 lt!192671 lt!192667 lt!192638))))

(assert (=> d!167146 (= (lemmaConcatAssociativity!564 lt!192671 lt!192667 lt!192638) lt!193009)))

(declare-fun bs!54165 () Bool)

(assert (= bs!54165 d!167146))

(assert (=> bs!54165 m!689415))

(assert (=> bs!54165 m!689415))

(assert (=> bs!54165 m!689419))

(declare-fun m!690451 () Bool)

(assert (=> bs!54165 m!690451))

(assert (=> bs!54165 m!689409))

(declare-fun m!690453 () Bool)

(assert (=> bs!54165 m!690453))

(assert (=> bs!54165 m!689409))

(assert (=> b!438005 d!167146))

(declare-fun d!167148 () Bool)

(assert (=> d!167148 (= (list!1899 (charsOf!476 (h!9704 tokens!465))) (list!1903 (c!88710 (charsOf!476 (h!9704 tokens!465)))))))

(declare-fun bs!54166 () Bool)

(assert (= bs!54166 d!167148))

(declare-fun m!690455 () Bool)

(assert (=> bs!54166 m!690455))

(assert (=> b!438005 d!167148))

(declare-fun d!167150 () Bool)

(assert (=> d!167150 (= (get!1552 lt!192666) (v!15346 lt!192666))))

(assert (=> b!438027 d!167150))

(declare-fun b!438597 () Bool)

(declare-fun e!267911 () Bool)

(declare-fun e!267908 () Bool)

(assert (=> b!438597 (= e!267911 e!267908)))

(declare-fun c!88845 () Bool)

(assert (=> b!438597 (= c!88845 ((_ is EmptyLang!1057) (regex!833 lt!192675)))))

(declare-fun b!438598 () Bool)

(declare-fun e!267910 () Bool)

(assert (=> b!438598 (= e!267910 (not (= (head!1067 lt!192657) (c!88711 (regex!833 lt!192675)))))))

(declare-fun b!438599 () Bool)

(declare-fun res!194422 () Bool)

(declare-fun e!267914 () Bool)

(assert (=> b!438599 (=> res!194422 e!267914)))

(assert (=> b!438599 (= res!194422 (not ((_ is ElementMatch!1057) (regex!833 lt!192675))))))

(assert (=> b!438599 (= e!267908 e!267914)))

(declare-fun b!438600 () Bool)

(declare-fun e!267913 () Bool)

(assert (=> b!438600 (= e!267913 (nullable!231 (regex!833 lt!192675)))))

(declare-fun b!438601 () Bool)

(declare-fun res!194426 () Bool)

(declare-fun e!267912 () Bool)

(assert (=> b!438601 (=> (not res!194426) (not e!267912))))

(assert (=> b!438601 (= res!194426 (isEmpty!3210 (tail!613 lt!192657)))))

(declare-fun d!167152 () Bool)

(assert (=> d!167152 e!267911))

(declare-fun c!88847 () Bool)

(assert (=> d!167152 (= c!88847 ((_ is EmptyExpr!1057) (regex!833 lt!192675)))))

(declare-fun lt!193010 () Bool)

(assert (=> d!167152 (= lt!193010 e!267913)))

(declare-fun c!88846 () Bool)

(assert (=> d!167152 (= c!88846 (isEmpty!3210 lt!192657))))

(assert (=> d!167152 (validRegex!306 (regex!833 lt!192675))))

(assert (=> d!167152 (= (matchR!375 (regex!833 lt!192675) lt!192657) lt!193010)))

(declare-fun b!438602 () Bool)

(declare-fun res!194425 () Bool)

(assert (=> b!438602 (=> (not res!194425) (not e!267912))))

(declare-fun call!30167 () Bool)

(assert (=> b!438602 (= res!194425 (not call!30167))))

(declare-fun b!438603 () Bool)

(assert (=> b!438603 (= e!267911 (= lt!193010 call!30167))))

(declare-fun b!438604 () Bool)

(declare-fun res!194424 () Bool)

(assert (=> b!438604 (=> res!194424 e!267914)))

(assert (=> b!438604 (= res!194424 e!267912)))

(declare-fun res!194423 () Bool)

(assert (=> b!438604 (=> (not res!194423) (not e!267912))))

(assert (=> b!438604 (= res!194423 lt!193010)))

(declare-fun b!438605 () Bool)

(assert (=> b!438605 (= e!267908 (not lt!193010))))

(declare-fun b!438606 () Bool)

(declare-fun e!267909 () Bool)

(assert (=> b!438606 (= e!267909 e!267910)))

(declare-fun res!194427 () Bool)

(assert (=> b!438606 (=> res!194427 e!267910)))

(assert (=> b!438606 (= res!194427 call!30167)))

(declare-fun b!438607 () Bool)

(assert (=> b!438607 (= e!267913 (matchR!375 (derivativeStep!197 (regex!833 lt!192675) (head!1067 lt!192657)) (tail!613 lt!192657)))))

(declare-fun bm!30162 () Bool)

(assert (=> bm!30162 (= call!30167 (isEmpty!3210 lt!192657))))

(declare-fun b!438608 () Bool)

(declare-fun res!194428 () Bool)

(assert (=> b!438608 (=> res!194428 e!267910)))

(assert (=> b!438608 (= res!194428 (not (isEmpty!3210 (tail!613 lt!192657))))))

(declare-fun b!438609 () Bool)

(assert (=> b!438609 (= e!267912 (= (head!1067 lt!192657) (c!88711 (regex!833 lt!192675))))))

(declare-fun b!438610 () Bool)

(assert (=> b!438610 (= e!267914 e!267909)))

(declare-fun res!194421 () Bool)

(assert (=> b!438610 (=> (not res!194421) (not e!267909))))

(assert (=> b!438610 (= res!194421 (not lt!193010))))

(assert (= (and d!167152 c!88846) b!438600))

(assert (= (and d!167152 (not c!88846)) b!438607))

(assert (= (and d!167152 c!88847) b!438603))

(assert (= (and d!167152 (not c!88847)) b!438597))

(assert (= (and b!438597 c!88845) b!438605))

(assert (= (and b!438597 (not c!88845)) b!438599))

(assert (= (and b!438599 (not res!194422)) b!438604))

(assert (= (and b!438604 res!194423) b!438602))

(assert (= (and b!438602 res!194425) b!438601))

(assert (= (and b!438601 res!194426) b!438609))

(assert (= (and b!438604 (not res!194424)) b!438610))

(assert (= (and b!438610 res!194421) b!438606))

(assert (= (and b!438606 (not res!194427)) b!438608))

(assert (= (and b!438608 (not res!194428)) b!438598))

(assert (= (or b!438603 b!438602 b!438606) bm!30162))

(declare-fun m!690457 () Bool)

(assert (=> b!438600 m!690457))

(assert (=> b!438607 m!689525))

(assert (=> b!438607 m!689525))

(declare-fun m!690459 () Bool)

(assert (=> b!438607 m!690459))

(declare-fun m!690461 () Bool)

(assert (=> b!438607 m!690461))

(assert (=> b!438607 m!690459))

(assert (=> b!438607 m!690461))

(declare-fun m!690463 () Bool)

(assert (=> b!438607 m!690463))

(declare-fun m!690465 () Bool)

(assert (=> bm!30162 m!690465))

(assert (=> d!167152 m!690465))

(declare-fun m!690467 () Bool)

(assert (=> d!167152 m!690467))

(assert (=> b!438601 m!690461))

(assert (=> b!438601 m!690461))

(declare-fun m!690469 () Bool)

(assert (=> b!438601 m!690469))

(assert (=> b!438609 m!689525))

(assert (=> b!438608 m!690461))

(assert (=> b!438608 m!690461))

(assert (=> b!438608 m!690469))

(assert (=> b!438598 m!689525))

(assert (=> b!438049 d!167152))

(declare-fun d!167154 () Bool)

(assert (=> d!167154 (= (get!1551 lt!192652) (v!15345 lt!192652))))

(assert (=> b!438049 d!167154))

(declare-fun d!167156 () Bool)

(assert (=> d!167156 (= (isEmpty!3210 (_2!2802 lt!192653)) ((_ is Nil!4305) (_2!2802 lt!192653)))))

(assert (=> b!438007 d!167156))

(declare-fun d!167158 () Bool)

(assert (=> d!167158 (= (isEmpty!3214 rules!1920) ((_ is Nil!4306) rules!1920))))

(assert (=> b!438045 d!167158))

(declare-fun d!167160 () Bool)

(declare-fun res!194429 () Bool)

(declare-fun e!267915 () Bool)

(assert (=> d!167160 (=> (not res!194429) (not e!267915))))

(assert (=> d!167160 (= res!194429 (not (isEmpty!3210 (originalCharacters!876 separatorToken!170))))))

(assert (=> d!167160 (= (inv!5370 separatorToken!170) e!267915)))

(declare-fun b!438611 () Bool)

(declare-fun res!194430 () Bool)

(assert (=> b!438611 (=> (not res!194430) (not e!267915))))

(assert (=> b!438611 (= res!194430 (= (originalCharacters!876 separatorToken!170) (list!1899 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (value!28056 separatorToken!170)))))))

(declare-fun b!438612 () Bool)

(assert (=> b!438612 (= e!267915 (= (size!3526 separatorToken!170) (size!3532 (originalCharacters!876 separatorToken!170))))))

(assert (= (and d!167160 res!194429) b!438611))

(assert (= (and b!438611 res!194430) b!438612))

(declare-fun b_lambda!18113 () Bool)

(assert (=> (not b_lambda!18113) (not b!438611)))

(assert (=> b!438611 t!69374))

(declare-fun b_and!47273 () Bool)

(assert (= b_and!47267 (and (=> t!69374 result!48600) b_and!47273)))

(assert (=> b!438611 t!69376))

(declare-fun b_and!47275 () Bool)

(assert (= b_and!47269 (and (=> t!69376 result!48602) b_and!47275)))

(assert (=> b!438611 t!69378))

(declare-fun b_and!47277 () Bool)

(assert (= b_and!47271 (and (=> t!69378 result!48604) b_and!47277)))

(declare-fun m!690471 () Bool)

(assert (=> d!167160 m!690471))

(assert (=> b!438611 m!690403))

(assert (=> b!438611 m!690403))

(declare-fun m!690473 () Bool)

(assert (=> b!438611 m!690473))

(declare-fun m!690475 () Bool)

(assert (=> b!438612 m!690475))

(assert (=> start!41242 d!167160))

(declare-fun b!438613 () Bool)

(declare-fun e!267919 () Bool)

(declare-fun e!267916 () Bool)

(assert (=> b!438613 (= e!267919 e!267916)))

(declare-fun c!88848 () Bool)

(assert (=> b!438613 (= c!88848 ((_ is EmptyLang!1057) (regex!833 (rule!1508 separatorToken!170))))))

(declare-fun b!438614 () Bool)

(declare-fun e!267918 () Bool)

(assert (=> b!438614 (= e!267918 (not (= (head!1067 lt!192667) (c!88711 (regex!833 (rule!1508 separatorToken!170))))))))

(declare-fun b!438615 () Bool)

(declare-fun res!194432 () Bool)

(declare-fun e!267922 () Bool)

(assert (=> b!438615 (=> res!194432 e!267922)))

(assert (=> b!438615 (= res!194432 (not ((_ is ElementMatch!1057) (regex!833 (rule!1508 separatorToken!170)))))))

(assert (=> b!438615 (= e!267916 e!267922)))

(declare-fun b!438616 () Bool)

(declare-fun e!267921 () Bool)

(assert (=> b!438616 (= e!267921 (nullable!231 (regex!833 (rule!1508 separatorToken!170))))))

(declare-fun b!438617 () Bool)

(declare-fun res!194436 () Bool)

(declare-fun e!267920 () Bool)

(assert (=> b!438617 (=> (not res!194436) (not e!267920))))

(assert (=> b!438617 (= res!194436 (isEmpty!3210 (tail!613 lt!192667)))))

(declare-fun d!167162 () Bool)

(assert (=> d!167162 e!267919))

(declare-fun c!88850 () Bool)

(assert (=> d!167162 (= c!88850 ((_ is EmptyExpr!1057) (regex!833 (rule!1508 separatorToken!170))))))

(declare-fun lt!193011 () Bool)

(assert (=> d!167162 (= lt!193011 e!267921)))

(declare-fun c!88849 () Bool)

(assert (=> d!167162 (= c!88849 (isEmpty!3210 lt!192667))))

(assert (=> d!167162 (validRegex!306 (regex!833 (rule!1508 separatorToken!170)))))

(assert (=> d!167162 (= (matchR!375 (regex!833 (rule!1508 separatorToken!170)) lt!192667) lt!193011)))

(declare-fun b!438618 () Bool)

(declare-fun res!194435 () Bool)

(assert (=> b!438618 (=> (not res!194435) (not e!267920))))

(declare-fun call!30168 () Bool)

(assert (=> b!438618 (= res!194435 (not call!30168))))

(declare-fun b!438619 () Bool)

(assert (=> b!438619 (= e!267919 (= lt!193011 call!30168))))

(declare-fun b!438620 () Bool)

(declare-fun res!194434 () Bool)

(assert (=> b!438620 (=> res!194434 e!267922)))

(assert (=> b!438620 (= res!194434 e!267920)))

(declare-fun res!194433 () Bool)

(assert (=> b!438620 (=> (not res!194433) (not e!267920))))

(assert (=> b!438620 (= res!194433 lt!193011)))

(declare-fun b!438621 () Bool)

(assert (=> b!438621 (= e!267916 (not lt!193011))))

(declare-fun b!438622 () Bool)

(declare-fun e!267917 () Bool)

(assert (=> b!438622 (= e!267917 e!267918)))

(declare-fun res!194437 () Bool)

(assert (=> b!438622 (=> res!194437 e!267918)))

(assert (=> b!438622 (= res!194437 call!30168)))

(declare-fun b!438623 () Bool)

(assert (=> b!438623 (= e!267921 (matchR!375 (derivativeStep!197 (regex!833 (rule!1508 separatorToken!170)) (head!1067 lt!192667)) (tail!613 lt!192667)))))

(declare-fun bm!30163 () Bool)

(assert (=> bm!30163 (= call!30168 (isEmpty!3210 lt!192667))))

(declare-fun b!438624 () Bool)

(declare-fun res!194438 () Bool)

(assert (=> b!438624 (=> res!194438 e!267918)))

(assert (=> b!438624 (= res!194438 (not (isEmpty!3210 (tail!613 lt!192667))))))

(declare-fun b!438625 () Bool)

(assert (=> b!438625 (= e!267920 (= (head!1067 lt!192667) (c!88711 (regex!833 (rule!1508 separatorToken!170)))))))

(declare-fun b!438626 () Bool)

(assert (=> b!438626 (= e!267922 e!267917)))

(declare-fun res!194431 () Bool)

(assert (=> b!438626 (=> (not res!194431) (not e!267917))))

(assert (=> b!438626 (= res!194431 (not lt!193011))))

(assert (= (and d!167162 c!88849) b!438616))

(assert (= (and d!167162 (not c!88849)) b!438623))

(assert (= (and d!167162 c!88850) b!438619))

(assert (= (and d!167162 (not c!88850)) b!438613))

(assert (= (and b!438613 c!88848) b!438621))

(assert (= (and b!438613 (not c!88848)) b!438615))

(assert (= (and b!438615 (not res!194432)) b!438620))

(assert (= (and b!438620 res!194433) b!438618))

(assert (= (and b!438618 res!194435) b!438617))

(assert (= (and b!438617 res!194436) b!438625))

(assert (= (and b!438620 (not res!194434)) b!438626))

(assert (= (and b!438626 res!194431) b!438622))

(assert (= (and b!438622 (not res!194437)) b!438624))

(assert (= (and b!438624 (not res!194438)) b!438614))

(assert (= (or b!438619 b!438618 b!438622) bm!30163))

(declare-fun m!690477 () Bool)

(assert (=> b!438616 m!690477))

(declare-fun m!690479 () Bool)

(assert (=> b!438623 m!690479))

(assert (=> b!438623 m!690479))

(declare-fun m!690481 () Bool)

(assert (=> b!438623 m!690481))

(declare-fun m!690483 () Bool)

(assert (=> b!438623 m!690483))

(assert (=> b!438623 m!690481))

(assert (=> b!438623 m!690483))

(declare-fun m!690485 () Bool)

(assert (=> b!438623 m!690485))

(declare-fun m!690487 () Bool)

(assert (=> bm!30163 m!690487))

(assert (=> d!167162 m!690487))

(declare-fun m!690489 () Bool)

(assert (=> d!167162 m!690489))

(assert (=> b!438617 m!690483))

(assert (=> b!438617 m!690483))

(declare-fun m!690491 () Bool)

(assert (=> b!438617 m!690491))

(assert (=> b!438625 m!690479))

(assert (=> b!438624 m!690483))

(assert (=> b!438624 m!690483))

(assert (=> b!438624 m!690491))

(assert (=> b!438614 m!690479))

(assert (=> b!438003 d!167162))

(declare-fun d!167164 () Bool)

(declare-fun res!194443 () Bool)

(declare-fun e!267925 () Bool)

(assert (=> d!167164 (=> (not res!194443) (not e!267925))))

(assert (=> d!167164 (= res!194443 (validRegex!306 (regex!833 (rule!1508 separatorToken!170))))))

(assert (=> d!167164 (= (ruleValid!126 thiss!17480 (rule!1508 separatorToken!170)) e!267925)))

(declare-fun b!438631 () Bool)

(declare-fun res!194444 () Bool)

(assert (=> b!438631 (=> (not res!194444) (not e!267925))))

(assert (=> b!438631 (= res!194444 (not (nullable!231 (regex!833 (rule!1508 separatorToken!170)))))))

(declare-fun b!438632 () Bool)

(assert (=> b!438632 (= e!267925 (not (= (tag!1083 (rule!1508 separatorToken!170)) (String!5356 ""))))))

(assert (= (and d!167164 res!194443) b!438631))

(assert (= (and b!438631 res!194444) b!438632))

(assert (=> d!167164 m!690489))

(assert (=> b!438631 m!690477))

(assert (=> b!438003 d!167164))

(declare-fun d!167166 () Bool)

(assert (=> d!167166 (ruleValid!126 thiss!17480 (rule!1508 separatorToken!170))))

(declare-fun lt!193014 () Unit!7589)

(declare-fun choose!3306 (LexerInterface!719 Rule!1466 List!4316) Unit!7589)

(assert (=> d!167166 (= lt!193014 (choose!3306 thiss!17480 (rule!1508 separatorToken!170) rules!1920))))

(assert (=> d!167166 (contains!942 rules!1920 (rule!1508 separatorToken!170))))

(assert (=> d!167166 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!6 thiss!17480 (rule!1508 separatorToken!170) rules!1920) lt!193014)))

(declare-fun bs!54167 () Bool)

(assert (= bs!54167 d!167166))

(assert (=> bs!54167 m!689381))

(declare-fun m!690493 () Bool)

(assert (=> bs!54167 m!690493))

(assert (=> bs!54167 m!689499))

(assert (=> b!438003 d!167166))

(declare-fun d!167168 () Bool)

(declare-fun lt!193017 () Bool)

(assert (=> d!167168 (= lt!193017 (select (content!715 (usedCharacters!134 (regex!833 (rule!1508 lt!192655)))) lt!192665))))

(declare-fun e!267930 () Bool)

(assert (=> d!167168 (= lt!193017 e!267930)))

(declare-fun res!194450 () Bool)

(assert (=> d!167168 (=> (not res!194450) (not e!267930))))

(assert (=> d!167168 (= res!194450 ((_ is Cons!4305) (usedCharacters!134 (regex!833 (rule!1508 lt!192655)))))))

(assert (=> d!167168 (= (contains!943 (usedCharacters!134 (regex!833 (rule!1508 lt!192655))) lt!192665) lt!193017)))

(declare-fun b!438637 () Bool)

(declare-fun e!267931 () Bool)

(assert (=> b!438637 (= e!267930 e!267931)))

(declare-fun res!194449 () Bool)

(assert (=> b!438637 (=> res!194449 e!267931)))

(assert (=> b!438637 (= res!194449 (= (h!9702 (usedCharacters!134 (regex!833 (rule!1508 lt!192655)))) lt!192665))))

(declare-fun b!438638 () Bool)

(assert (=> b!438638 (= e!267931 (contains!943 (t!69337 (usedCharacters!134 (regex!833 (rule!1508 lt!192655)))) lt!192665))))

(assert (= (and d!167168 res!194450) b!438637))

(assert (= (and b!438637 (not res!194449)) b!438638))

(assert (=> d!167168 m!689485))

(declare-fun m!690495 () Bool)

(assert (=> d!167168 m!690495))

(declare-fun m!690497 () Bool)

(assert (=> d!167168 m!690497))

(declare-fun m!690499 () Bool)

(assert (=> b!438638 m!690499))

(assert (=> b!438025 d!167168))

(assert (=> b!438025 d!167054))

(declare-fun d!167170 () Bool)

(declare-fun lt!193018 () Bool)

(declare-fun e!267933 () Bool)

(assert (=> d!167170 (= lt!193018 e!267933)))

(declare-fun res!194453 () Bool)

(assert (=> d!167170 (=> (not res!194453) (not e!267933))))

(assert (=> d!167170 (= res!194453 (= (list!1902 (_1!2801 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 lt!192655))))) (list!1902 (singletonSeq!379 lt!192655))))))

(declare-fun e!267932 () Bool)

(assert (=> d!167170 (= lt!193018 e!267932)))

(declare-fun res!194451 () Bool)

(assert (=> d!167170 (=> (not res!194451) (not e!267932))))

(declare-fun lt!193019 () tuple2!5170)

(assert (=> d!167170 (= res!194451 (= (size!3527 (_1!2801 lt!193019)) 1))))

(assert (=> d!167170 (= lt!193019 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 lt!192655))))))

(assert (=> d!167170 (not (isEmpty!3214 rules!1920))))

(assert (=> d!167170 (= (rulesProduceIndividualToken!468 thiss!17480 rules!1920 lt!192655) lt!193018)))

(declare-fun b!438639 () Bool)

(declare-fun res!194452 () Bool)

(assert (=> b!438639 (=> (not res!194452) (not e!267932))))

(assert (=> b!438639 (= res!194452 (= (apply!1070 (_1!2801 lt!193019) 0) lt!192655))))

(declare-fun b!438640 () Bool)

(assert (=> b!438640 (= e!267932 (isEmpty!3211 (_2!2801 lt!193019)))))

(declare-fun b!438641 () Bool)

(assert (=> b!438641 (= e!267933 (isEmpty!3211 (_2!2801 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 lt!192655))))))))

(assert (= (and d!167170 res!194451) b!438639))

(assert (= (and b!438639 res!194452) b!438640))

(assert (= (and d!167170 res!194453) b!438641))

(declare-fun m!690501 () Bool)

(assert (=> d!167170 m!690501))

(assert (=> d!167170 m!689495))

(declare-fun m!690503 () Bool)

(assert (=> d!167170 m!690503))

(assert (=> d!167170 m!689495))

(declare-fun m!690505 () Bool)

(assert (=> d!167170 m!690505))

(assert (=> d!167170 m!690505))

(declare-fun m!690507 () Bool)

(assert (=> d!167170 m!690507))

(assert (=> d!167170 m!689495))

(assert (=> d!167170 m!689373))

(declare-fun m!690509 () Bool)

(assert (=> d!167170 m!690509))

(declare-fun m!690511 () Bool)

(assert (=> b!438639 m!690511))

(declare-fun m!690513 () Bool)

(assert (=> b!438640 m!690513))

(assert (=> b!438641 m!689495))

(assert (=> b!438641 m!689495))

(assert (=> b!438641 m!690505))

(assert (=> b!438641 m!690505))

(assert (=> b!438641 m!690507))

(declare-fun m!690515 () Bool)

(assert (=> b!438641 m!690515))

(assert (=> b!438025 d!167170))

(declare-fun d!167172 () Bool)

(declare-fun lt!193020 () BalanceConc!2984)

(assert (=> d!167172 (= (list!1899 lt!193020) (printList!393 thiss!17480 (list!1902 lt!192648)))))

(assert (=> d!167172 (= lt!193020 (printTailRec!405 thiss!17480 lt!192648 0 (BalanceConc!2985 Empty!1488)))))

(assert (=> d!167172 (= (print!444 thiss!17480 lt!192648) lt!193020)))

(declare-fun bs!54168 () Bool)

(assert (= bs!54168 d!167172))

(declare-fun m!690517 () Bool)

(assert (=> bs!54168 m!690517))

(declare-fun m!690519 () Bool)

(assert (=> bs!54168 m!690519))

(assert (=> bs!54168 m!690519))

(declare-fun m!690521 () Bool)

(assert (=> bs!54168 m!690521))

(assert (=> bs!54168 m!689517))

(assert (=> b!438025 d!167172))

(declare-fun d!167174 () Bool)

(assert (=> d!167174 (= (get!1552 (maxPrefix!435 thiss!17480 rules!1920 lt!192658)) (v!15346 (maxPrefix!435 thiss!17480 rules!1920 lt!192658)))))

(assert (=> b!438025 d!167174))

(declare-fun d!167176 () Bool)

(assert (=> d!167176 (= (isEmpty!3212 tokens!465) ((_ is Nil!4307) tokens!465))))

(assert (=> b!438025 d!167176))

(declare-fun d!167178 () Bool)

(declare-fun lt!193021 () BalanceConc!2984)

(assert (=> d!167178 (= (list!1899 lt!193021) (originalCharacters!876 lt!192655))))

(assert (=> d!167178 (= lt!193021 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 lt!192655))) (value!28056 lt!192655)))))

(assert (=> d!167178 (= (charsOf!476 lt!192655) lt!193021)))

(declare-fun b_lambda!18115 () Bool)

(assert (=> (not b_lambda!18115) (not d!167178)))

(declare-fun t!69380 () Bool)

(declare-fun tb!44163 () Bool)

(assert (=> (and b!438006 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 lt!192655)))) t!69380) tb!44163))

(declare-fun b!438642 () Bool)

(declare-fun e!267934 () Bool)

(declare-fun tp!124083 () Bool)

(assert (=> b!438642 (= e!267934 (and (inv!5373 (c!88710 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 lt!192655))) (value!28056 lt!192655)))) tp!124083))))

(declare-fun result!48606 () Bool)

(assert (=> tb!44163 (= result!48606 (and (inv!5374 (dynLambda!2566 (toChars!1499 (transformation!833 (rule!1508 lt!192655))) (value!28056 lt!192655))) e!267934))))

(assert (= tb!44163 b!438642))

(declare-fun m!690523 () Bool)

(assert (=> b!438642 m!690523))

(declare-fun m!690525 () Bool)

(assert (=> tb!44163 m!690525))

(assert (=> d!167178 t!69380))

(declare-fun b_and!47279 () Bool)

(assert (= b_and!47273 (and (=> t!69380 result!48606) b_and!47279)))

(declare-fun tb!44165 () Bool)

(declare-fun t!69382 () Bool)

(assert (=> (and b!438057 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toChars!1499 (transformation!833 (rule!1508 lt!192655)))) t!69382) tb!44165))

(declare-fun result!48608 () Bool)

(assert (= result!48608 result!48606))

(assert (=> d!167178 t!69382))

(declare-fun b_and!47281 () Bool)

(assert (= b_and!47275 (and (=> t!69382 result!48608) b_and!47281)))

(declare-fun tb!44167 () Bool)

(declare-fun t!69384 () Bool)

(assert (=> (and b!438017 (= (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toChars!1499 (transformation!833 (rule!1508 lt!192655)))) t!69384) tb!44167))

(declare-fun result!48610 () Bool)

(assert (= result!48610 result!48606))

(assert (=> d!167178 t!69384))

(declare-fun b_and!47283 () Bool)

(assert (= b_and!47277 (and (=> t!69384 result!48610) b_and!47283)))

(declare-fun m!690527 () Bool)

(assert (=> d!167178 m!690527))

(declare-fun m!690529 () Bool)

(assert (=> d!167178 m!690529))

(assert (=> b!438025 d!167178))

(declare-fun b!438684 () Bool)

(declare-fun e!267962 () Option!1081)

(assert (=> b!438684 (= e!267962 (Some!1080 (h!9703 rules!1920)))))

(declare-fun b!438685 () Bool)

(declare-fun e!267964 () Bool)

(declare-fun lt!193039 () Option!1081)

(assert (=> b!438685 (= e!267964 (= (tag!1083 (get!1551 lt!193039)) (tag!1083 (rule!1508 separatorToken!170))))))

(declare-fun b!438686 () Bool)

(declare-fun lt!193041 () Unit!7589)

(declare-fun lt!193040 () Unit!7589)

(assert (=> b!438686 (= lt!193041 lt!193040)))

(assert (=> b!438686 (rulesInvariant!685 thiss!17480 (t!69338 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!74 (LexerInterface!719 Rule!1466 List!4316) Unit!7589)

(assert (=> b!438686 (= lt!193040 (lemmaInvariantOnRulesThenOnTail!74 thiss!17480 (h!9703 rules!1920) (t!69338 rules!1920)))))

(declare-fun e!267963 () Option!1081)

(assert (=> b!438686 (= e!267963 (getRuleFromTag!192 thiss!17480 (t!69338 rules!1920) (tag!1083 (rule!1508 separatorToken!170))))))

(declare-fun b!438687 () Bool)

(declare-fun e!267965 () Bool)

(assert (=> b!438687 (= e!267965 e!267964)))

(declare-fun res!194478 () Bool)

(assert (=> b!438687 (=> (not res!194478) (not e!267964))))

(assert (=> b!438687 (= res!194478 (contains!942 rules!1920 (get!1551 lt!193039)))))

(declare-fun b!438689 () Bool)

(assert (=> b!438689 (= e!267962 e!267963)))

(declare-fun c!88860 () Bool)

(assert (=> b!438689 (= c!88860 (and ((_ is Cons!4306) rules!1920) (not (= (tag!1083 (h!9703 rules!1920)) (tag!1083 (rule!1508 separatorToken!170))))))))

(declare-fun b!438688 () Bool)

(assert (=> b!438688 (= e!267963 None!1080)))

(declare-fun d!167180 () Bool)

(assert (=> d!167180 e!267965))

(declare-fun res!194477 () Bool)

(assert (=> d!167180 (=> res!194477 e!267965)))

(declare-fun isEmpty!3221 (Option!1081) Bool)

(assert (=> d!167180 (= res!194477 (isEmpty!3221 lt!193039))))

(assert (=> d!167180 (= lt!193039 e!267962)))

(declare-fun c!88861 () Bool)

(assert (=> d!167180 (= c!88861 (and ((_ is Cons!4306) rules!1920) (= (tag!1083 (h!9703 rules!1920)) (tag!1083 (rule!1508 separatorToken!170)))))))

(assert (=> d!167180 (rulesInvariant!685 thiss!17480 rules!1920)))

(assert (=> d!167180 (= (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 separatorToken!170))) lt!193039)))

(assert (= (and d!167180 c!88861) b!438684))

(assert (= (and d!167180 (not c!88861)) b!438689))

(assert (= (and b!438689 c!88860) b!438686))

(assert (= (and b!438689 (not c!88860)) b!438688))

(assert (= (and d!167180 (not res!194477)) b!438687))

(assert (= (and b!438687 res!194478) b!438685))

(declare-fun m!690585 () Bool)

(assert (=> b!438685 m!690585))

(declare-fun m!690587 () Bool)

(assert (=> b!438686 m!690587))

(declare-fun m!690589 () Bool)

(assert (=> b!438686 m!690589))

(declare-fun m!690591 () Bool)

(assert (=> b!438686 m!690591))

(assert (=> b!438687 m!690585))

(assert (=> b!438687 m!690585))

(declare-fun m!690593 () Bool)

(assert (=> b!438687 m!690593))

(declare-fun m!690595 () Bool)

(assert (=> d!167180 m!690595))

(assert (=> d!167180 m!689375))

(assert (=> b!438025 d!167180))

(declare-fun d!167192 () Bool)

(assert (=> d!167192 (= (list!1899 (charsOf!476 lt!192655)) (list!1903 (c!88710 (charsOf!476 lt!192655))))))

(declare-fun bs!54170 () Bool)

(assert (= bs!54170 d!167192))

(declare-fun m!690597 () Bool)

(assert (=> bs!54170 m!690597))

(assert (=> b!438025 d!167192))

(declare-fun b!438690 () Bool)

(declare-fun res!194484 () Bool)

(declare-fun e!267968 () Bool)

(assert (=> b!438690 (=> (not res!194484) (not e!267968))))

(declare-fun lt!193042 () Option!1082)

(assert (=> b!438690 (= res!194484 (matchR!375 (regex!833 (rule!1508 (_1!2802 (get!1552 lt!193042)))) (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!193042))))))))

(declare-fun b!438691 () Bool)

(declare-fun res!194479 () Bool)

(assert (=> b!438691 (=> (not res!194479) (not e!267968))))

(assert (=> b!438691 (= res!194479 (= (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!193042)))) (originalCharacters!876 (_1!2802 (get!1552 lt!193042)))))))

(declare-fun b!438692 () Bool)

(declare-fun e!267967 () Bool)

(assert (=> b!438692 (= e!267967 e!267968)))

(declare-fun res!194483 () Bool)

(assert (=> b!438692 (=> (not res!194483) (not e!267968))))

(assert (=> b!438692 (= res!194483 (isDefined!920 lt!193042))))

(declare-fun b!438693 () Bool)

(declare-fun res!194482 () Bool)

(assert (=> b!438693 (=> (not res!194482) (not e!267968))))

(assert (=> b!438693 (= res!194482 (= (value!28056 (_1!2802 (get!1552 lt!193042))) (apply!1073 (transformation!833 (rule!1508 (_1!2802 (get!1552 lt!193042)))) (seqFromList!1032 (originalCharacters!876 (_1!2802 (get!1552 lt!193042)))))))))

(declare-fun b!438694 () Bool)

(declare-fun e!267966 () Option!1082)

(declare-fun lt!193043 () Option!1082)

(declare-fun lt!193044 () Option!1082)

(assert (=> b!438694 (= e!267966 (ite (and ((_ is None!1081) lt!193043) ((_ is None!1081) lt!193044)) None!1081 (ite ((_ is None!1081) lt!193044) lt!193043 (ite ((_ is None!1081) lt!193043) lt!193044 (ite (>= (size!3526 (_1!2802 (v!15346 lt!193043))) (size!3526 (_1!2802 (v!15346 lt!193044)))) lt!193043 lt!193044)))))))

(declare-fun call!30174 () Option!1082)

(assert (=> b!438694 (= lt!193043 call!30174)))

(assert (=> b!438694 (= lt!193044 (maxPrefix!435 thiss!17480 (t!69338 rules!1920) lt!192681))))

(declare-fun b!438696 () Bool)

(declare-fun res!194480 () Bool)

(assert (=> b!438696 (=> (not res!194480) (not e!267968))))

(assert (=> b!438696 (= res!194480 (< (size!3532 (_2!2802 (get!1552 lt!193042))) (size!3532 lt!192681)))))

(declare-fun bm!30169 () Bool)

(assert (=> bm!30169 (= call!30174 (maxPrefixOneRule!208 thiss!17480 (h!9703 rules!1920) lt!192681))))

(declare-fun b!438697 () Bool)

(assert (=> b!438697 (= e!267968 (contains!942 rules!1920 (rule!1508 (_1!2802 (get!1552 lt!193042)))))))

(declare-fun b!438698 () Bool)

(assert (=> b!438698 (= e!267966 call!30174)))

(declare-fun d!167194 () Bool)

(assert (=> d!167194 e!267967))

(declare-fun res!194485 () Bool)

(assert (=> d!167194 (=> res!194485 e!267967)))

(assert (=> d!167194 (= res!194485 (isEmpty!3218 lt!193042))))

(assert (=> d!167194 (= lt!193042 e!267966)))

(declare-fun c!88862 () Bool)

(assert (=> d!167194 (= c!88862 (and ((_ is Cons!4306) rules!1920) ((_ is Nil!4306) (t!69338 rules!1920))))))

(declare-fun lt!193045 () Unit!7589)

(declare-fun lt!193046 () Unit!7589)

(assert (=> d!167194 (= lt!193045 lt!193046)))

(assert (=> d!167194 (isPrefix!493 lt!192681 lt!192681)))

(assert (=> d!167194 (= lt!193046 (lemmaIsPrefixRefl!274 lt!192681 lt!192681))))

(assert (=> d!167194 (rulesValidInductive!269 thiss!17480 rules!1920)))

(assert (=> d!167194 (= (maxPrefix!435 thiss!17480 rules!1920 lt!192681) lt!193042)))

(declare-fun b!438695 () Bool)

(declare-fun res!194481 () Bool)

(assert (=> b!438695 (=> (not res!194481) (not e!267968))))

(assert (=> b!438695 (= res!194481 (= (++!1238 (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!193042)))) (_2!2802 (get!1552 lt!193042))) lt!192681))))

(assert (= (and d!167194 c!88862) b!438698))

(assert (= (and d!167194 (not c!88862)) b!438694))

(assert (= (or b!438698 b!438694) bm!30169))

(assert (= (and d!167194 (not res!194485)) b!438692))

(assert (= (and b!438692 res!194483) b!438691))

(assert (= (and b!438691 res!194479) b!438696))

(assert (= (and b!438696 res!194480) b!438695))

(assert (= (and b!438695 res!194481) b!438693))

(assert (= (and b!438693 res!194482) b!438690))

(assert (= (and b!438690 res!194484) b!438697))

(declare-fun m!690599 () Bool)

(assert (=> d!167194 m!690599))

(declare-fun m!690601 () Bool)

(assert (=> d!167194 m!690601))

(declare-fun m!690603 () Bool)

(assert (=> d!167194 m!690603))

(assert (=> d!167194 m!690029))

(declare-fun m!690605 () Bool)

(assert (=> b!438695 m!690605))

(declare-fun m!690607 () Bool)

(assert (=> b!438695 m!690607))

(assert (=> b!438695 m!690607))

(declare-fun m!690609 () Bool)

(assert (=> b!438695 m!690609))

(assert (=> b!438695 m!690609))

(declare-fun m!690611 () Bool)

(assert (=> b!438695 m!690611))

(assert (=> b!438690 m!690605))

(assert (=> b!438690 m!690607))

(assert (=> b!438690 m!690607))

(assert (=> b!438690 m!690609))

(assert (=> b!438690 m!690609))

(declare-fun m!690613 () Bool)

(assert (=> b!438690 m!690613))

(assert (=> b!438693 m!690605))

(declare-fun m!690615 () Bool)

(assert (=> b!438693 m!690615))

(assert (=> b!438693 m!690615))

(declare-fun m!690617 () Bool)

(assert (=> b!438693 m!690617))

(assert (=> b!438697 m!690605))

(declare-fun m!690619 () Bool)

(assert (=> b!438697 m!690619))

(assert (=> b!438691 m!690605))

(assert (=> b!438691 m!690607))

(assert (=> b!438691 m!690607))

(assert (=> b!438691 m!690609))

(declare-fun m!690621 () Bool)

(assert (=> b!438694 m!690621))

(assert (=> b!438696 m!690605))

(declare-fun m!690623 () Bool)

(assert (=> b!438696 m!690623))

(assert (=> b!438696 m!690335))

(declare-fun m!690625 () Bool)

(assert (=> b!438692 m!690625))

(declare-fun m!690627 () Bool)

(assert (=> bm!30169 m!690627))

(assert (=> b!438025 d!167194))

(declare-fun d!167196 () Bool)

(assert (=> d!167196 (dynLambda!2563 lambda!12712 lt!192655)))

(declare-fun lt!193051 () Unit!7589)

(declare-fun choose!3308 (List!4317 Int Token!1410) Unit!7589)

(assert (=> d!167196 (= lt!193051 (choose!3308 tokens!465 lambda!12712 lt!192655))))

(declare-fun e!267973 () Bool)

(assert (=> d!167196 e!267973))

(declare-fun res!194492 () Bool)

(assert (=> d!167196 (=> (not res!194492) (not e!267973))))

(assert (=> d!167196 (= res!194492 (forall!1234 tokens!465 lambda!12712))))

(assert (=> d!167196 (= (forallContained!386 tokens!465 lambda!12712 lt!192655) lt!193051)))

(declare-fun b!438705 () Bool)

(declare-fun contains!945 (List!4317 Token!1410) Bool)

(assert (=> b!438705 (= e!267973 (contains!945 tokens!465 lt!192655))))

(assert (= (and d!167196 res!194492) b!438705))

(declare-fun b_lambda!18117 () Bool)

(assert (=> (not b_lambda!18117) (not d!167196)))

(declare-fun m!690629 () Bool)

(assert (=> d!167196 m!690629))

(declare-fun m!690631 () Bool)

(assert (=> d!167196 m!690631))

(declare-fun m!690633 () Bool)

(assert (=> d!167196 m!690633))

(declare-fun m!690635 () Bool)

(assert (=> b!438705 m!690635))

(assert (=> b!438025 d!167196))

(declare-fun d!167198 () Bool)

(assert (=> d!167198 (= lt!192681 (_2!2802 lt!192673))))

(declare-fun lt!193056 () Unit!7589)

(declare-fun choose!3309 (List!4315 List!4315 List!4315 List!4315 List!4315) Unit!7589)

(assert (=> d!167198 (= lt!193056 (choose!3309 lt!192671 lt!192681 lt!192671 (_2!2802 lt!192673) lt!192658))))

(assert (=> d!167198 (isPrefix!493 lt!192671 lt!192658)))

(assert (=> d!167198 (= (lemmaSamePrefixThenSameSuffix!278 lt!192671 lt!192681 lt!192671 (_2!2802 lt!192673) lt!192658) lt!193056)))

(declare-fun bs!54171 () Bool)

(assert (= bs!54171 d!167198))

(declare-fun m!690645 () Bool)

(assert (=> bs!54171 m!690645))

(declare-fun m!690647 () Bool)

(assert (=> bs!54171 m!690647))

(assert (=> b!438025 d!167198))

(declare-fun d!167202 () Bool)

(declare-fun e!267976 () Bool)

(assert (=> d!167202 e!267976))

(declare-fun res!194497 () Bool)

(assert (=> d!167202 (=> (not res!194497) (not e!267976))))

(declare-fun lt!193057 () BalanceConc!2986)

(assert (=> d!167202 (= res!194497 (= (list!1902 lt!193057) (Cons!4307 separatorToken!170 Nil!4307)))))

(assert (=> d!167202 (= lt!193057 (singleton!182 separatorToken!170))))

(assert (=> d!167202 (= (singletonSeq!379 separatorToken!170) lt!193057)))

(declare-fun b!438710 () Bool)

(assert (=> b!438710 (= e!267976 (isBalanced!455 (c!88712 lt!193057)))))

(assert (= (and d!167202 res!194497) b!438710))

(declare-fun m!690655 () Bool)

(assert (=> d!167202 m!690655))

(declare-fun m!690659 () Bool)

(assert (=> d!167202 m!690659))

(declare-fun m!690661 () Bool)

(assert (=> b!438710 m!690661))

(assert (=> b!438025 d!167202))

(declare-fun d!167204 () Bool)

(declare-fun lt!193067 () Int)

(declare-fun size!3534 (List!4317) Int)

(assert (=> d!167204 (= lt!193067 (size!3534 (list!1902 (_1!2801 lt!192656))))))

(declare-fun size!3535 (Conc!1489) Int)

(assert (=> d!167204 (= lt!193067 (size!3535 (c!88712 (_1!2801 lt!192656))))))

(assert (=> d!167204 (= (size!3527 (_1!2801 lt!192656)) lt!193067)))

(declare-fun bs!54173 () Bool)

(assert (= bs!54173 d!167204))

(declare-fun m!690699 () Bool)

(assert (=> bs!54173 m!690699))

(assert (=> bs!54173 m!690699))

(declare-fun m!690703 () Bool)

(assert (=> bs!54173 m!690703))

(declare-fun m!690705 () Bool)

(assert (=> bs!54173 m!690705))

(assert (=> b!438025 d!167204))

(declare-fun d!167212 () Bool)

(assert (=> d!167212 (rulesProduceIndividualToken!468 thiss!17480 rules!1920 lt!192655)))

(declare-fun lt!193086 () Unit!7589)

(declare-fun choose!3310 (LexerInterface!719 List!4316 List!4317 Token!1410) Unit!7589)

(assert (=> d!167212 (= lt!193086 (choose!3310 thiss!17480 rules!1920 tokens!465 lt!192655))))

(assert (=> d!167212 (not (isEmpty!3214 rules!1920))))

(assert (=> d!167212 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!182 thiss!17480 rules!1920 tokens!465 lt!192655) lt!193086)))

(declare-fun bs!54178 () Bool)

(assert (= bs!54178 d!167212))

(assert (=> bs!54178 m!689505))

(declare-fun m!690771 () Bool)

(assert (=> bs!54178 m!690771))

(assert (=> bs!54178 m!689373))

(assert (=> b!438025 d!167212))

(declare-fun d!167236 () Bool)

(declare-fun e!267994 () Bool)

(assert (=> d!167236 e!267994))

(declare-fun res!194517 () Bool)

(assert (=> d!167236 (=> (not res!194517) (not e!267994))))

(assert (=> d!167236 (= res!194517 (isDefined!921 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 lt!192655)))))))

(declare-fun lt!193089 () Unit!7589)

(declare-fun choose!3311 (LexerInterface!719 List!4316 List!4315 Token!1410) Unit!7589)

(assert (=> d!167236 (= lt!193089 (choose!3311 thiss!17480 rules!1920 lt!192657 lt!192655))))

(assert (=> d!167236 (rulesInvariant!685 thiss!17480 rules!1920)))

(assert (=> d!167236 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!192 thiss!17480 rules!1920 lt!192657 lt!192655) lt!193089)))

(declare-fun b!438740 () Bool)

(declare-fun res!194518 () Bool)

(assert (=> b!438740 (=> (not res!194518) (not e!267994))))

(assert (=> b!438740 (= res!194518 (matchR!375 (regex!833 (get!1551 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 lt!192655))))) (list!1899 (charsOf!476 lt!192655))))))

(declare-fun b!438741 () Bool)

(assert (=> b!438741 (= e!267994 (= (rule!1508 lt!192655) (get!1551 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 lt!192655))))))))

(assert (= (and d!167236 res!194517) b!438740))

(assert (= (and b!438740 res!194518) b!438741))

(assert (=> d!167236 m!689473))

(assert (=> d!167236 m!689473))

(declare-fun m!690773 () Bool)

(assert (=> d!167236 m!690773))

(declare-fun m!690775 () Bool)

(assert (=> d!167236 m!690775))

(assert (=> d!167236 m!689375))

(assert (=> b!438740 m!689479))

(assert (=> b!438740 m!689473))

(assert (=> b!438740 m!689473))

(declare-fun m!690777 () Bool)

(assert (=> b!438740 m!690777))

(assert (=> b!438740 m!689481))

(declare-fun m!690779 () Bool)

(assert (=> b!438740 m!690779))

(assert (=> b!438740 m!689479))

(assert (=> b!438740 m!689481))

(assert (=> b!438741 m!689473))

(assert (=> b!438741 m!689473))

(assert (=> b!438741 m!690777))

(assert (=> b!438025 d!167236))

(declare-fun d!167238 () Bool)

(assert (=> d!167238 (= (isEmpty!3212 (t!69339 tokens!465)) ((_ is Nil!4307) (t!69339 tokens!465)))))

(assert (=> b!438025 d!167238))

(declare-fun d!167240 () Bool)

(declare-fun lt!193096 () BalanceConc!2984)

(assert (=> d!167240 (= (list!1899 lt!193096) (printListTailRec!196 thiss!17480 (dropList!232 lt!192648 0) (list!1899 (BalanceConc!2985 Empty!1488))))))

(declare-fun e!267995 () BalanceConc!2984)

(assert (=> d!167240 (= lt!193096 e!267995)))

(declare-fun c!88869 () Bool)

(assert (=> d!167240 (= c!88869 (>= 0 (size!3527 lt!192648)))))

(declare-fun e!267996 () Bool)

(assert (=> d!167240 e!267996))

(declare-fun res!194519 () Bool)

(assert (=> d!167240 (=> (not res!194519) (not e!267996))))

(assert (=> d!167240 (= res!194519 (>= 0 0))))

(assert (=> d!167240 (= (printTailRec!405 thiss!17480 lt!192648 0 (BalanceConc!2985 Empty!1488)) lt!193096)))

(declare-fun b!438742 () Bool)

(assert (=> b!438742 (= e!267996 (<= 0 (size!3527 lt!192648)))))

(declare-fun b!438743 () Bool)

(assert (=> b!438743 (= e!267995 (BalanceConc!2985 Empty!1488))))

(declare-fun b!438744 () Bool)

(assert (=> b!438744 (= e!267995 (printTailRec!405 thiss!17480 lt!192648 (+ 0 1) (++!1240 (BalanceConc!2985 Empty!1488) (charsOf!476 (apply!1070 lt!192648 0)))))))

(declare-fun lt!193094 () List!4317)

(assert (=> b!438744 (= lt!193094 (list!1902 lt!192648))))

(declare-fun lt!193093 () Unit!7589)

(assert (=> b!438744 (= lt!193093 (lemmaDropApply!272 lt!193094 0))))

(assert (=> b!438744 (= (head!1068 (drop!301 lt!193094 0)) (apply!1072 lt!193094 0))))

(declare-fun lt!193091 () Unit!7589)

(assert (=> b!438744 (= lt!193091 lt!193093)))

(declare-fun lt!193090 () List!4317)

(assert (=> b!438744 (= lt!193090 (list!1902 lt!192648))))

(declare-fun lt!193092 () Unit!7589)

(assert (=> b!438744 (= lt!193092 (lemmaDropTail!264 lt!193090 0))))

(assert (=> b!438744 (= (tail!612 (drop!301 lt!193090 0)) (drop!301 lt!193090 (+ 0 1)))))

(declare-fun lt!193095 () Unit!7589)

(assert (=> b!438744 (= lt!193095 lt!193092)))

(assert (= (and d!167240 res!194519) b!438742))

(assert (= (and d!167240 c!88869) b!438743))

(assert (= (and d!167240 (not c!88869)) b!438744))

(declare-fun m!690781 () Bool)

(assert (=> d!167240 m!690781))

(assert (=> d!167240 m!689915))

(declare-fun m!690783 () Bool)

(assert (=> d!167240 m!690783))

(assert (=> d!167240 m!690781))

(declare-fun m!690785 () Bool)

(assert (=> d!167240 m!690785))

(declare-fun m!690787 () Bool)

(assert (=> d!167240 m!690787))

(assert (=> d!167240 m!689915))

(assert (=> b!438742 m!690785))

(declare-fun m!690789 () Bool)

(assert (=> b!438744 m!690789))

(declare-fun m!690791 () Bool)

(assert (=> b!438744 m!690791))

(declare-fun m!690793 () Bool)

(assert (=> b!438744 m!690793))

(declare-fun m!690795 () Bool)

(assert (=> b!438744 m!690795))

(assert (=> b!438744 m!690791))

(declare-fun m!690797 () Bool)

(assert (=> b!438744 m!690797))

(declare-fun m!690799 () Bool)

(assert (=> b!438744 m!690799))

(assert (=> b!438744 m!690519))

(declare-fun m!690801 () Bool)

(assert (=> b!438744 m!690801))

(declare-fun m!690803 () Bool)

(assert (=> b!438744 m!690803))

(declare-fun m!690805 () Bool)

(assert (=> b!438744 m!690805))

(declare-fun m!690807 () Bool)

(assert (=> b!438744 m!690807))

(declare-fun m!690809 () Bool)

(assert (=> b!438744 m!690809))

(assert (=> b!438744 m!690809))

(assert (=> b!438744 m!690801))

(assert (=> b!438744 m!690793))

(declare-fun m!690811 () Bool)

(assert (=> b!438744 m!690811))

(assert (=> b!438744 m!690807))

(assert (=> b!438025 d!167240))

(declare-fun bm!30179 () Bool)

(declare-fun call!30186 () List!4315)

(declare-fun call!30187 () List!4315)

(declare-fun call!30185 () List!4315)

(assert (=> bm!30179 (= call!30186 (++!1238 call!30187 call!30185))))

(declare-fun c!88879 () Bool)

(declare-fun call!30184 () List!4315)

(declare-fun c!88881 () Bool)

(declare-fun bm!30180 () Bool)

(assert (=> bm!30180 (= call!30184 (usedCharacters!134 (ite c!88879 (reg!1386 (regex!833 (rule!1508 lt!192655))) (ite c!88881 (regTwo!2627 (regex!833 (rule!1508 lt!192655))) (regTwo!2626 (regex!833 (rule!1508 lt!192655)))))))))

(declare-fun d!167242 () Bool)

(declare-fun c!88878 () Bool)

(assert (=> d!167242 (= c!88878 (or ((_ is EmptyExpr!1057) (regex!833 (rule!1508 lt!192655))) ((_ is EmptyLang!1057) (regex!833 (rule!1508 lt!192655)))))))

(declare-fun e!268007 () List!4315)

(assert (=> d!167242 (= (usedCharacters!134 (regex!833 (rule!1508 lt!192655))) e!268007)))

(declare-fun b!438761 () Bool)

(declare-fun e!268006 () List!4315)

(assert (=> b!438761 (= e!268006 call!30184)))

(declare-fun b!438762 () Bool)

(declare-fun e!268008 () List!4315)

(assert (=> b!438762 (= e!268008 call!30186)))

(declare-fun b!438763 () Bool)

(assert (=> b!438763 (= e!268006 e!268008)))

(assert (=> b!438763 (= c!88881 ((_ is Union!1057) (regex!833 (rule!1508 lt!192655))))))

(declare-fun b!438764 () Bool)

(assert (=> b!438764 (= e!268008 call!30186)))

(declare-fun b!438765 () Bool)

(declare-fun e!268005 () List!4315)

(assert (=> b!438765 (= e!268005 (Cons!4305 (c!88711 (regex!833 (rule!1508 lt!192655))) Nil!4305))))

(declare-fun b!438766 () Bool)

(assert (=> b!438766 (= e!268007 Nil!4305)))

(declare-fun b!438767 () Bool)

(assert (=> b!438767 (= e!268007 e!268005)))

(declare-fun c!88880 () Bool)

(assert (=> b!438767 (= c!88880 ((_ is ElementMatch!1057) (regex!833 (rule!1508 lt!192655))))))

(declare-fun bm!30181 () Bool)

(assert (=> bm!30181 (= call!30187 (usedCharacters!134 (ite c!88881 (regOne!2627 (regex!833 (rule!1508 lt!192655))) (regOne!2626 (regex!833 (rule!1508 lt!192655))))))))

(declare-fun bm!30182 () Bool)

(assert (=> bm!30182 (= call!30185 call!30184)))

(declare-fun b!438768 () Bool)

(assert (=> b!438768 (= c!88879 ((_ is Star!1057) (regex!833 (rule!1508 lt!192655))))))

(assert (=> b!438768 (= e!268005 e!268006)))

(assert (= (and d!167242 c!88878) b!438766))

(assert (= (and d!167242 (not c!88878)) b!438767))

(assert (= (and b!438767 c!88880) b!438765))

(assert (= (and b!438767 (not c!88880)) b!438768))

(assert (= (and b!438768 c!88879) b!438761))

(assert (= (and b!438768 (not c!88879)) b!438763))

(assert (= (and b!438763 c!88881) b!438762))

(assert (= (and b!438763 (not c!88881)) b!438764))

(assert (= (or b!438762 b!438764) bm!30181))

(assert (= (or b!438762 b!438764) bm!30182))

(assert (= (or b!438762 b!438764) bm!30179))

(assert (= (or b!438761 bm!30182) bm!30180))

(declare-fun m!690813 () Bool)

(assert (=> bm!30179 m!690813))

(declare-fun m!690815 () Bool)

(assert (=> bm!30180 m!690815))

(declare-fun m!690817 () Bool)

(assert (=> bm!30181 m!690817))

(assert (=> b!438025 d!167242))

(declare-fun d!167244 () Bool)

(assert (=> d!167244 (= (head!1067 lt!192657) (h!9702 lt!192657))))

(assert (=> b!438025 d!167244))

(declare-fun d!167246 () Bool)

(declare-fun lt!193099 () BalanceConc!2984)

(assert (=> d!167246 (= (list!1899 lt!193099) (printList!393 thiss!17480 (list!1902 lt!192644)))))

(assert (=> d!167246 (= lt!193099 (printTailRec!405 thiss!17480 lt!192644 0 (BalanceConc!2985 Empty!1488)))))

(assert (=> d!167246 (= (print!444 thiss!17480 lt!192644) lt!193099)))

(declare-fun bs!54179 () Bool)

(assert (= bs!54179 d!167246))

(declare-fun m!690819 () Bool)

(assert (=> bs!54179 m!690819))

(declare-fun m!690821 () Bool)

(assert (=> bs!54179 m!690821))

(assert (=> bs!54179 m!690821))

(declare-fun m!690823 () Bool)

(assert (=> bs!54179 m!690823))

(assert (=> bs!54179 m!689457))

(assert (=> b!438025 d!167246))

(declare-fun d!167248 () Bool)

(assert (=> d!167248 (= (isDefined!921 lt!192660) (not (isEmpty!3221 lt!192660)))))

(declare-fun bs!54180 () Bool)

(assert (= bs!54180 d!167248))

(declare-fun m!690825 () Bool)

(assert (=> bs!54180 m!690825))

(assert (=> b!438025 d!167248))

(declare-fun b!438786 () Bool)

(declare-fun e!268022 () Bool)

(assert (=> b!438786 (= e!268022 (>= (size!3532 lt!192651) (size!3532 lt!192671)))))

(declare-fun b!438785 () Bool)

(declare-fun e!268023 () Bool)

(assert (=> b!438785 (= e!268023 (isPrefix!493 (tail!613 lt!192671) (tail!613 lt!192651)))))

(declare-fun b!438783 () Bool)

(declare-fun e!268021 () Bool)

(assert (=> b!438783 (= e!268021 e!268023)))

(declare-fun res!194531 () Bool)

(assert (=> b!438783 (=> (not res!194531) (not e!268023))))

(assert (=> b!438783 (= res!194531 (not ((_ is Nil!4305) lt!192651)))))

(declare-fun b!438784 () Bool)

(declare-fun res!194533 () Bool)

(assert (=> b!438784 (=> (not res!194533) (not e!268023))))

(assert (=> b!438784 (= res!194533 (= (head!1067 lt!192671) (head!1067 lt!192651)))))

(declare-fun d!167250 () Bool)

(assert (=> d!167250 e!268022))

(declare-fun res!194534 () Bool)

(assert (=> d!167250 (=> res!194534 e!268022)))

(declare-fun lt!193103 () Bool)

(assert (=> d!167250 (= res!194534 (not lt!193103))))

(assert (=> d!167250 (= lt!193103 e!268021)))

(declare-fun res!194532 () Bool)

(assert (=> d!167250 (=> res!194532 e!268021)))

(assert (=> d!167250 (= res!194532 ((_ is Nil!4305) lt!192671))))

(assert (=> d!167250 (= (isPrefix!493 lt!192671 lt!192651) lt!193103)))

(assert (= (and d!167250 (not res!194532)) b!438783))

(assert (= (and b!438783 res!194531) b!438784))

(assert (= (and b!438784 res!194533) b!438785))

(assert (= (and d!167250 (not res!194534)) b!438786))

(declare-fun m!690833 () Bool)

(assert (=> b!438786 m!690833))

(assert (=> b!438786 m!690309))

(assert (=> b!438785 m!689821))

(declare-fun m!690835 () Bool)

(assert (=> b!438785 m!690835))

(assert (=> b!438785 m!689821))

(assert (=> b!438785 m!690835))

(declare-fun m!690837 () Bool)

(assert (=> b!438785 m!690837))

(assert (=> b!438784 m!689817))

(declare-fun m!690839 () Bool)

(assert (=> b!438784 m!690839))

(assert (=> b!438025 d!167250))

(declare-fun b!438787 () Bool)

(declare-fun e!268025 () Bool)

(declare-fun e!268026 () Bool)

(assert (=> b!438787 (= e!268025 e!268026)))

(declare-fun res!194536 () Bool)

(declare-fun lt!193104 () tuple2!5170)

(assert (=> b!438787 (= res!194536 (< (size!3528 (_2!2801 lt!193104)) (size!3528 lt!192635)))))

(assert (=> b!438787 (=> (not res!194536) (not e!268026))))

(declare-fun b!438788 () Bool)

(declare-fun res!194537 () Bool)

(declare-fun e!268024 () Bool)

(assert (=> b!438788 (=> (not res!194537) (not e!268024))))

(assert (=> b!438788 (= res!194537 (= (list!1902 (_1!2801 lt!193104)) (_1!2804 (lexList!276 thiss!17480 rules!1920 (list!1899 lt!192635)))))))

(declare-fun b!438789 () Bool)

(assert (=> b!438789 (= e!268024 (= (list!1899 (_2!2801 lt!193104)) (_2!2804 (lexList!276 thiss!17480 rules!1920 (list!1899 lt!192635)))))))

(declare-fun d!167254 () Bool)

(assert (=> d!167254 e!268024))

(declare-fun res!194535 () Bool)

(assert (=> d!167254 (=> (not res!194535) (not e!268024))))

(assert (=> d!167254 (= res!194535 e!268025)))

(declare-fun c!88882 () Bool)

(assert (=> d!167254 (= c!88882 (> (size!3527 (_1!2801 lt!193104)) 0))))

(assert (=> d!167254 (= lt!193104 (lexTailRecV2!244 thiss!17480 rules!1920 lt!192635 (BalanceConc!2985 Empty!1488) lt!192635 (BalanceConc!2987 Empty!1489)))))

(assert (=> d!167254 (= (lex!511 thiss!17480 rules!1920 lt!192635) lt!193104)))

(declare-fun b!438790 () Bool)

(assert (=> b!438790 (= e!268026 (not (isEmpty!3213 (_1!2801 lt!193104))))))

(declare-fun b!438791 () Bool)

(assert (=> b!438791 (= e!268025 (= (_2!2801 lt!193104) lt!192635))))

(assert (= (and d!167254 c!88882) b!438787))

(assert (= (and d!167254 (not c!88882)) b!438791))

(assert (= (and b!438787 res!194536) b!438790))

(assert (= (and d!167254 res!194535) b!438788))

(assert (= (and b!438788 res!194537) b!438789))

(declare-fun m!690841 () Bool)

(assert (=> b!438790 m!690841))

(declare-fun m!690843 () Bool)

(assert (=> b!438787 m!690843))

(declare-fun m!690845 () Bool)

(assert (=> b!438787 m!690845))

(declare-fun m!690847 () Bool)

(assert (=> b!438788 m!690847))

(declare-fun m!690849 () Bool)

(assert (=> b!438788 m!690849))

(assert (=> b!438788 m!690849))

(declare-fun m!690851 () Bool)

(assert (=> b!438788 m!690851))

(declare-fun m!690853 () Bool)

(assert (=> b!438789 m!690853))

(assert (=> b!438789 m!690849))

(assert (=> b!438789 m!690849))

(assert (=> b!438789 m!690851))

(declare-fun m!690855 () Bool)

(assert (=> d!167254 m!690855))

(declare-fun m!690857 () Bool)

(assert (=> d!167254 m!690857))

(assert (=> b!438025 d!167254))

(declare-fun d!167256 () Bool)

(declare-fun lt!193112 () BalanceConc!2984)

(assert (=> d!167256 (= (list!1899 lt!193112) (printListTailRec!196 thiss!17480 (dropList!232 lt!192644 0) (list!1899 (BalanceConc!2985 Empty!1488))))))

(declare-fun e!268028 () BalanceConc!2984)

(assert (=> d!167256 (= lt!193112 e!268028)))

(declare-fun c!88883 () Bool)

(assert (=> d!167256 (= c!88883 (>= 0 (size!3527 lt!192644)))))

(declare-fun e!268029 () Bool)

(assert (=> d!167256 e!268029))

(declare-fun res!194539 () Bool)

(assert (=> d!167256 (=> (not res!194539) (not e!268029))))

(assert (=> d!167256 (= res!194539 (>= 0 0))))

(assert (=> d!167256 (= (printTailRec!405 thiss!17480 lt!192644 0 (BalanceConc!2985 Empty!1488)) lt!193112)))

(declare-fun b!438793 () Bool)

(assert (=> b!438793 (= e!268029 (<= 0 (size!3527 lt!192644)))))

(declare-fun b!438794 () Bool)

(assert (=> b!438794 (= e!268028 (BalanceConc!2985 Empty!1488))))

(declare-fun b!438795 () Bool)

(assert (=> b!438795 (= e!268028 (printTailRec!405 thiss!17480 lt!192644 (+ 0 1) (++!1240 (BalanceConc!2985 Empty!1488) (charsOf!476 (apply!1070 lt!192644 0)))))))

(declare-fun lt!193110 () List!4317)

(assert (=> b!438795 (= lt!193110 (list!1902 lt!192644))))

(declare-fun lt!193109 () Unit!7589)

(assert (=> b!438795 (= lt!193109 (lemmaDropApply!272 lt!193110 0))))

(assert (=> b!438795 (= (head!1068 (drop!301 lt!193110 0)) (apply!1072 lt!193110 0))))

(declare-fun lt!193107 () Unit!7589)

(assert (=> b!438795 (= lt!193107 lt!193109)))

(declare-fun lt!193106 () List!4317)

(assert (=> b!438795 (= lt!193106 (list!1902 lt!192644))))

(declare-fun lt!193108 () Unit!7589)

(assert (=> b!438795 (= lt!193108 (lemmaDropTail!264 lt!193106 0))))

(assert (=> b!438795 (= (tail!612 (drop!301 lt!193106 0)) (drop!301 lt!193106 (+ 0 1)))))

(declare-fun lt!193111 () Unit!7589)

(assert (=> b!438795 (= lt!193111 lt!193108)))

(assert (= (and d!167256 res!194539) b!438793))

(assert (= (and d!167256 c!88883) b!438794))

(assert (= (and d!167256 (not c!88883)) b!438795))

(declare-fun m!690867 () Bool)

(assert (=> d!167256 m!690867))

(assert (=> d!167256 m!689915))

(declare-fun m!690869 () Bool)

(assert (=> d!167256 m!690869))

(assert (=> d!167256 m!690867))

(declare-fun m!690871 () Bool)

(assert (=> d!167256 m!690871))

(declare-fun m!690873 () Bool)

(assert (=> d!167256 m!690873))

(assert (=> d!167256 m!689915))

(assert (=> b!438793 m!690871))

(declare-fun m!690875 () Bool)

(assert (=> b!438795 m!690875))

(declare-fun m!690877 () Bool)

(assert (=> b!438795 m!690877))

(declare-fun m!690879 () Bool)

(assert (=> b!438795 m!690879))

(declare-fun m!690881 () Bool)

(assert (=> b!438795 m!690881))

(assert (=> b!438795 m!690877))

(declare-fun m!690883 () Bool)

(assert (=> b!438795 m!690883))

(declare-fun m!690885 () Bool)

(assert (=> b!438795 m!690885))

(assert (=> b!438795 m!690821))

(declare-fun m!690887 () Bool)

(assert (=> b!438795 m!690887))

(declare-fun m!690889 () Bool)

(assert (=> b!438795 m!690889))

(declare-fun m!690891 () Bool)

(assert (=> b!438795 m!690891))

(declare-fun m!690893 () Bool)

(assert (=> b!438795 m!690893))

(declare-fun m!690895 () Bool)

(assert (=> b!438795 m!690895))

(assert (=> b!438795 m!690895))

(assert (=> b!438795 m!690887))

(assert (=> b!438795 m!690879))

(declare-fun m!690897 () Bool)

(assert (=> b!438795 m!690897))

(assert (=> b!438795 m!690893))

(assert (=> b!438025 d!167256))

(declare-fun d!167266 () Bool)

(declare-fun e!268030 () Bool)

(assert (=> d!167266 e!268030))

(declare-fun res!194540 () Bool)

(assert (=> d!167266 (=> (not res!194540) (not e!268030))))

(assert (=> d!167266 (= res!194540 (isDefined!921 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 separatorToken!170)))))))

(declare-fun lt!193113 () Unit!7589)

(assert (=> d!167266 (= lt!193113 (choose!3311 thiss!17480 rules!1920 lt!192667 separatorToken!170))))

(assert (=> d!167266 (rulesInvariant!685 thiss!17480 rules!1920)))

(assert (=> d!167266 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!192 thiss!17480 rules!1920 lt!192667 separatorToken!170) lt!193113)))

(declare-fun b!438796 () Bool)

(declare-fun res!194541 () Bool)

(assert (=> b!438796 (=> (not res!194541) (not e!268030))))

(assert (=> b!438796 (= res!194541 (matchR!375 (regex!833 (get!1551 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 separatorToken!170))))) (list!1899 (charsOf!476 separatorToken!170))))))

(declare-fun b!438797 () Bool)

(assert (=> b!438797 (= e!268030 (= (rule!1508 separatorToken!170) (get!1551 (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 separatorToken!170))))))))

(assert (= (and d!167266 res!194540) b!438796))

(assert (= (and b!438796 res!194541) b!438797))

(assert (=> d!167266 m!689471))

(assert (=> d!167266 m!689471))

(declare-fun m!690899 () Bool)

(assert (=> d!167266 m!690899))

(declare-fun m!690901 () Bool)

(assert (=> d!167266 m!690901))

(assert (=> d!167266 m!689375))

(assert (=> b!438796 m!689405))

(assert (=> b!438796 m!689471))

(assert (=> b!438796 m!689471))

(declare-fun m!690903 () Bool)

(assert (=> b!438796 m!690903))

(assert (=> b!438796 m!689407))

(declare-fun m!690905 () Bool)

(assert (=> b!438796 m!690905))

(assert (=> b!438796 m!689405))

(assert (=> b!438796 m!689407))

(assert (=> b!438797 m!689471))

(assert (=> b!438797 m!689471))

(assert (=> b!438797 m!690903))

(assert (=> b!438025 d!167266))

(declare-fun b!438802 () Bool)

(declare-fun e!268033 () Option!1081)

(assert (=> b!438802 (= e!268033 (Some!1080 (h!9703 rules!1920)))))

(declare-fun b!438803 () Bool)

(declare-fun e!268035 () Bool)

(declare-fun lt!193114 () Option!1081)

(assert (=> b!438803 (= e!268035 (= (tag!1083 (get!1551 lt!193114)) (tag!1083 (rule!1508 lt!192655))))))

(declare-fun b!438804 () Bool)

(declare-fun lt!193116 () Unit!7589)

(declare-fun lt!193115 () Unit!7589)

(assert (=> b!438804 (= lt!193116 lt!193115)))

(assert (=> b!438804 (rulesInvariant!685 thiss!17480 (t!69338 rules!1920))))

(assert (=> b!438804 (= lt!193115 (lemmaInvariantOnRulesThenOnTail!74 thiss!17480 (h!9703 rules!1920) (t!69338 rules!1920)))))

(declare-fun e!268034 () Option!1081)

(assert (=> b!438804 (= e!268034 (getRuleFromTag!192 thiss!17480 (t!69338 rules!1920) (tag!1083 (rule!1508 lt!192655))))))

(declare-fun b!438805 () Bool)

(declare-fun e!268036 () Bool)

(assert (=> b!438805 (= e!268036 e!268035)))

(declare-fun res!194547 () Bool)

(assert (=> b!438805 (=> (not res!194547) (not e!268035))))

(assert (=> b!438805 (= res!194547 (contains!942 rules!1920 (get!1551 lt!193114)))))

(declare-fun b!438807 () Bool)

(assert (=> b!438807 (= e!268033 e!268034)))

(declare-fun c!88884 () Bool)

(assert (=> b!438807 (= c!88884 (and ((_ is Cons!4306) rules!1920) (not (= (tag!1083 (h!9703 rules!1920)) (tag!1083 (rule!1508 lt!192655))))))))

(declare-fun b!438806 () Bool)

(assert (=> b!438806 (= e!268034 None!1080)))

(declare-fun d!167268 () Bool)

(assert (=> d!167268 e!268036))

(declare-fun res!194546 () Bool)

(assert (=> d!167268 (=> res!194546 e!268036)))

(assert (=> d!167268 (= res!194546 (isEmpty!3221 lt!193114))))

(assert (=> d!167268 (= lt!193114 e!268033)))

(declare-fun c!88885 () Bool)

(assert (=> d!167268 (= c!88885 (and ((_ is Cons!4306) rules!1920) (= (tag!1083 (h!9703 rules!1920)) (tag!1083 (rule!1508 lt!192655)))))))

(assert (=> d!167268 (rulesInvariant!685 thiss!17480 rules!1920)))

(assert (=> d!167268 (= (getRuleFromTag!192 thiss!17480 rules!1920 (tag!1083 (rule!1508 lt!192655))) lt!193114)))

(assert (= (and d!167268 c!88885) b!438802))

(assert (= (and d!167268 (not c!88885)) b!438807))

(assert (= (and b!438807 c!88884) b!438804))

(assert (= (and b!438807 (not c!88884)) b!438806))

(assert (= (and d!167268 (not res!194546)) b!438805))

(assert (= (and b!438805 res!194547) b!438803))

(declare-fun m!690907 () Bool)

(assert (=> b!438803 m!690907))

(assert (=> b!438804 m!690587))

(assert (=> b!438804 m!690589))

(declare-fun m!690909 () Bool)

(assert (=> b!438804 m!690909))

(assert (=> b!438805 m!690907))

(assert (=> b!438805 m!690907))

(declare-fun m!690911 () Bool)

(assert (=> b!438805 m!690911))

(declare-fun m!690913 () Bool)

(assert (=> d!167268 m!690913))

(assert (=> d!167268 m!689375))

(assert (=> b!438025 d!167268))

(declare-fun b!438810 () Bool)

(declare-fun e!268039 () Bool)

(declare-fun e!268040 () Bool)

(assert (=> b!438810 (= e!268039 e!268040)))

(declare-fun res!194551 () Bool)

(declare-fun lt!193117 () tuple2!5170)

(assert (=> b!438810 (= res!194551 (< (size!3528 (_2!2801 lt!193117)) (size!3528 lt!192641)))))

(assert (=> b!438810 (=> (not res!194551) (not e!268040))))

(declare-fun b!438811 () Bool)

(declare-fun res!194552 () Bool)

(declare-fun e!268038 () Bool)

(assert (=> b!438811 (=> (not res!194552) (not e!268038))))

(assert (=> b!438811 (= res!194552 (= (list!1902 (_1!2801 lt!193117)) (_1!2804 (lexList!276 thiss!17480 rules!1920 (list!1899 lt!192641)))))))

(declare-fun b!438812 () Bool)

(assert (=> b!438812 (= e!268038 (= (list!1899 (_2!2801 lt!193117)) (_2!2804 (lexList!276 thiss!17480 rules!1920 (list!1899 lt!192641)))))))

(declare-fun d!167270 () Bool)

(assert (=> d!167270 e!268038))

(declare-fun res!194550 () Bool)

(assert (=> d!167270 (=> (not res!194550) (not e!268038))))

(assert (=> d!167270 (= res!194550 e!268039)))

(declare-fun c!88886 () Bool)

(assert (=> d!167270 (= c!88886 (> (size!3527 (_1!2801 lt!193117)) 0))))

(assert (=> d!167270 (= lt!193117 (lexTailRecV2!244 thiss!17480 rules!1920 lt!192641 (BalanceConc!2985 Empty!1488) lt!192641 (BalanceConc!2987 Empty!1489)))))

(assert (=> d!167270 (= (lex!511 thiss!17480 rules!1920 lt!192641) lt!193117)))

(declare-fun b!438813 () Bool)

(assert (=> b!438813 (= e!268040 (not (isEmpty!3213 (_1!2801 lt!193117))))))

(declare-fun b!438814 () Bool)

(assert (=> b!438814 (= e!268039 (= (_2!2801 lt!193117) lt!192641))))

(assert (= (and d!167270 c!88886) b!438810))

(assert (= (and d!167270 (not c!88886)) b!438814))

(assert (= (and b!438810 res!194551) b!438813))

(assert (= (and d!167270 res!194550) b!438811))

(assert (= (and b!438811 res!194552) b!438812))

(declare-fun m!690915 () Bool)

(assert (=> b!438813 m!690915))

(declare-fun m!690917 () Bool)

(assert (=> b!438810 m!690917))

(declare-fun m!690919 () Bool)

(assert (=> b!438810 m!690919))

(declare-fun m!690921 () Bool)

(assert (=> b!438811 m!690921))

(declare-fun m!690923 () Bool)

(assert (=> b!438811 m!690923))

(assert (=> b!438811 m!690923))

(declare-fun m!690925 () Bool)

(assert (=> b!438811 m!690925))

(declare-fun m!690929 () Bool)

(assert (=> b!438812 m!690929))

(assert (=> b!438812 m!690923))

(assert (=> b!438812 m!690923))

(assert (=> b!438812 m!690925))

(declare-fun m!690933 () Bool)

(assert (=> d!167270 m!690933))

(declare-fun m!690935 () Bool)

(assert (=> d!167270 m!690935))

(assert (=> b!438025 d!167270))

(declare-fun d!167272 () Bool)

(declare-fun lt!193118 () Bool)

(assert (=> d!167272 (= lt!193118 (select (content!715 (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170)))) lt!192678))))

(declare-fun e!268042 () Bool)

(assert (=> d!167272 (= lt!193118 e!268042)))

(declare-fun res!194554 () Bool)

(assert (=> d!167272 (=> (not res!194554) (not e!268042))))

(assert (=> d!167272 (= res!194554 ((_ is Cons!4305) (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170)))))))

(assert (=> d!167272 (= (contains!943 (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170))) lt!192678) lt!193118)))

(declare-fun b!438816 () Bool)

(declare-fun e!268043 () Bool)

(assert (=> b!438816 (= e!268042 e!268043)))

(declare-fun res!194553 () Bool)

(assert (=> b!438816 (=> res!194553 e!268043)))

(assert (=> b!438816 (= res!194553 (= (h!9702 (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170)))) lt!192678))))

(declare-fun b!438817 () Bool)

(assert (=> b!438817 (= e!268043 (contains!943 (t!69337 (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170)))) lt!192678))))

(assert (= (and d!167272 res!194554) b!438816))

(assert (= (and b!438816 (not res!194553)) b!438817))

(assert (=> d!167272 m!689451))

(declare-fun m!690945 () Bool)

(assert (=> d!167272 m!690945))

(declare-fun m!690949 () Bool)

(assert (=> d!167272 m!690949))

(declare-fun m!690951 () Bool)

(assert (=> b!438817 m!690951))

(assert (=> b!438025 d!167272))

(declare-fun d!167278 () Bool)

(assert (=> d!167278 (= (head!1068 (t!69339 tokens!465)) (h!9704 (t!69339 tokens!465)))))

(assert (=> b!438025 d!167278))

(declare-fun d!167284 () Bool)

(declare-fun e!268150 () Bool)

(assert (=> d!167284 e!268150))

(declare-fun res!194663 () Bool)

(assert (=> d!167284 (=> res!194663 e!268150)))

(assert (=> d!167284 (= res!194663 (isEmpty!3212 tokens!465))))

(declare-fun lt!193175 () Unit!7589)

(declare-fun choose!3313 (LexerInterface!719 List!4316 List!4317 Token!1410) Unit!7589)

(assert (=> d!167284 (= lt!193175 (choose!3313 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!167284 (not (isEmpty!3214 rules!1920))))

(assert (=> d!167284 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!240 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!193175)))

(declare-fun b!439004 () Bool)

(declare-fun e!268149 () Bool)

(assert (=> b!439004 (= e!268150 e!268149)))

(declare-fun res!194662 () Bool)

(assert (=> b!439004 (=> (not res!194662) (not e!268149))))

(assert (=> b!439004 (= res!194662 (isDefined!920 (maxPrefix!435 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!439005 () Bool)

(assert (=> b!439005 (= e!268149 (= (_1!2802 (get!1552 (maxPrefix!435 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!400 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1068 tokens!465)))))

(assert (= (and d!167284 (not res!194663)) b!439004))

(assert (= (and b!439004 res!194662) b!439005))

(assert (=> d!167284 m!689475))

(declare-fun m!691249 () Bool)

(assert (=> d!167284 m!691249))

(assert (=> d!167284 m!689373))

(assert (=> b!439004 m!689533))

(assert (=> b!439004 m!689533))

(declare-fun m!691251 () Bool)

(assert (=> b!439004 m!691251))

(assert (=> b!439004 m!691251))

(declare-fun m!691253 () Bool)

(assert (=> b!439004 m!691253))

(assert (=> b!439005 m!689533))

(assert (=> b!439005 m!689533))

(assert (=> b!439005 m!691251))

(assert (=> b!439005 m!691251))

(declare-fun m!691255 () Bool)

(assert (=> b!439005 m!691255))

(assert (=> b!439005 m!689399))

(assert (=> b!438025 d!167284))

(declare-fun d!167360 () Bool)

(declare-fun lt!193178 () Bool)

(declare-fun content!717 (List!4316) (InoxSet Rule!1466))

(assert (=> d!167360 (= lt!193178 (select (content!717 rules!1920) (rule!1508 separatorToken!170)))))

(declare-fun e!268156 () Bool)

(assert (=> d!167360 (= lt!193178 e!268156)))

(declare-fun res!194668 () Bool)

(assert (=> d!167360 (=> (not res!194668) (not e!268156))))

(assert (=> d!167360 (= res!194668 ((_ is Cons!4306) rules!1920))))

(assert (=> d!167360 (= (contains!942 rules!1920 (rule!1508 separatorToken!170)) lt!193178)))

(declare-fun b!439010 () Bool)

(declare-fun e!268155 () Bool)

(assert (=> b!439010 (= e!268156 e!268155)))

(declare-fun res!194669 () Bool)

(assert (=> b!439010 (=> res!194669 e!268155)))

(assert (=> b!439010 (= res!194669 (= (h!9703 rules!1920) (rule!1508 separatorToken!170)))))

(declare-fun b!439011 () Bool)

(assert (=> b!439011 (= e!268155 (contains!942 (t!69338 rules!1920) (rule!1508 separatorToken!170)))))

(assert (= (and d!167360 res!194668) b!439010))

(assert (= (and b!439010 (not res!194669)) b!439011))

(declare-fun m!691257 () Bool)

(assert (=> d!167360 m!691257))

(declare-fun m!691259 () Bool)

(assert (=> d!167360 m!691259))

(declare-fun m!691261 () Bool)

(assert (=> b!439011 m!691261))

(assert (=> b!438025 d!167360))

(declare-fun bm!30201 () Bool)

(declare-fun call!30208 () List!4315)

(declare-fun call!30209 () List!4315)

(declare-fun call!30207 () List!4315)

(assert (=> bm!30201 (= call!30208 (++!1238 call!30209 call!30207))))

(declare-fun c!88927 () Bool)

(declare-fun c!88925 () Bool)

(declare-fun bm!30202 () Bool)

(declare-fun call!30206 () List!4315)

(assert (=> bm!30202 (= call!30206 (usedCharacters!134 (ite c!88925 (reg!1386 (regex!833 (rule!1508 separatorToken!170))) (ite c!88927 (regTwo!2627 (regex!833 (rule!1508 separatorToken!170))) (regTwo!2626 (regex!833 (rule!1508 separatorToken!170)))))))))

(declare-fun d!167362 () Bool)

(declare-fun c!88924 () Bool)

(assert (=> d!167362 (= c!88924 (or ((_ is EmptyExpr!1057) (regex!833 (rule!1508 separatorToken!170))) ((_ is EmptyLang!1057) (regex!833 (rule!1508 separatorToken!170)))))))

(declare-fun e!268159 () List!4315)

(assert (=> d!167362 (= (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170))) e!268159)))

(declare-fun b!439012 () Bool)

(declare-fun e!268158 () List!4315)

(assert (=> b!439012 (= e!268158 call!30206)))

(declare-fun b!439013 () Bool)

(declare-fun e!268160 () List!4315)

(assert (=> b!439013 (= e!268160 call!30208)))

(declare-fun b!439014 () Bool)

(assert (=> b!439014 (= e!268158 e!268160)))

(assert (=> b!439014 (= c!88927 ((_ is Union!1057) (regex!833 (rule!1508 separatorToken!170))))))

(declare-fun b!439015 () Bool)

(assert (=> b!439015 (= e!268160 call!30208)))

(declare-fun b!439016 () Bool)

(declare-fun e!268157 () List!4315)

(assert (=> b!439016 (= e!268157 (Cons!4305 (c!88711 (regex!833 (rule!1508 separatorToken!170))) Nil!4305))))

(declare-fun b!439017 () Bool)

(assert (=> b!439017 (= e!268159 Nil!4305)))

(declare-fun b!439018 () Bool)

(assert (=> b!439018 (= e!268159 e!268157)))

(declare-fun c!88926 () Bool)

(assert (=> b!439018 (= c!88926 ((_ is ElementMatch!1057) (regex!833 (rule!1508 separatorToken!170))))))

(declare-fun bm!30203 () Bool)

(assert (=> bm!30203 (= call!30209 (usedCharacters!134 (ite c!88927 (regOne!2627 (regex!833 (rule!1508 separatorToken!170))) (regOne!2626 (regex!833 (rule!1508 separatorToken!170))))))))

(declare-fun bm!30204 () Bool)

(assert (=> bm!30204 (= call!30207 call!30206)))

(declare-fun b!439019 () Bool)

(assert (=> b!439019 (= c!88925 ((_ is Star!1057) (regex!833 (rule!1508 separatorToken!170))))))

(assert (=> b!439019 (= e!268157 e!268158)))

(assert (= (and d!167362 c!88924) b!439017))

(assert (= (and d!167362 (not c!88924)) b!439018))

(assert (= (and b!439018 c!88926) b!439016))

(assert (= (and b!439018 (not c!88926)) b!439019))

(assert (= (and b!439019 c!88925) b!439012))

(assert (= (and b!439019 (not c!88925)) b!439014))

(assert (= (and b!439014 c!88927) b!439013))

(assert (= (and b!439014 (not c!88927)) b!439015))

(assert (= (or b!439013 b!439015) bm!30203))

(assert (= (or b!439013 b!439015) bm!30204))

(assert (= (or b!439013 b!439015) bm!30201))

(assert (= (or b!439012 bm!30204) bm!30202))

(declare-fun m!691263 () Bool)

(assert (=> bm!30201 m!691263))

(declare-fun m!691265 () Bool)

(assert (=> bm!30202 m!691265))

(declare-fun m!691267 () Bool)

(assert (=> bm!30203 m!691267))

(assert (=> b!438025 d!167362))

(declare-fun d!167364 () Bool)

(assert (=> d!167364 (= (isDefined!921 lt!192652) (not (isEmpty!3221 lt!192652)))))

(declare-fun bs!54221 () Bool)

(assert (= bs!54221 d!167364))

(declare-fun m!691269 () Bool)

(assert (=> bs!54221 m!691269))

(assert (=> b!438025 d!167364))

(declare-fun d!167366 () Bool)

(declare-fun e!268161 () Bool)

(assert (=> d!167366 e!268161))

(declare-fun res!194670 () Bool)

(assert (=> d!167366 (=> (not res!194670) (not e!268161))))

(declare-fun lt!193179 () BalanceConc!2986)

(assert (=> d!167366 (= res!194670 (= (list!1902 lt!193179) (Cons!4307 lt!192655 Nil!4307)))))

(assert (=> d!167366 (= lt!193179 (singleton!182 lt!192655))))

(assert (=> d!167366 (= (singletonSeq!379 lt!192655) lt!193179)))

(declare-fun b!439020 () Bool)

(assert (=> b!439020 (= e!268161 (isBalanced!455 (c!88712 lt!193179)))))

(assert (= (and d!167366 res!194670) b!439020))

(declare-fun m!691271 () Bool)

(assert (=> d!167366 m!691271))

(declare-fun m!691273 () Bool)

(assert (=> d!167366 m!691273))

(declare-fun m!691275 () Bool)

(assert (=> b!439020 m!691275))

(assert (=> b!438025 d!167366))

(declare-fun d!167368 () Bool)

(declare-fun lt!193180 () Int)

(assert (=> d!167368 (= lt!193180 (size!3534 (list!1902 (_1!2801 lt!192634))))))

(assert (=> d!167368 (= lt!193180 (size!3535 (c!88712 (_1!2801 lt!192634))))))

(assert (=> d!167368 (= (size!3527 (_1!2801 lt!192634)) lt!193180)))

(declare-fun bs!54222 () Bool)

(assert (= bs!54222 d!167368))

(declare-fun m!691277 () Bool)

(assert (=> bs!54222 m!691277))

(assert (=> bs!54222 m!691277))

(declare-fun m!691279 () Bool)

(assert (=> bs!54222 m!691279))

(declare-fun m!691281 () Bool)

(assert (=> bs!54222 m!691281))

(assert (=> b!438025 d!167368))

(declare-fun d!167370 () Bool)

(assert (=> d!167370 (isPrefix!493 lt!192671 (++!1238 lt!192671 lt!192681))))

(declare-fun lt!193183 () Unit!7589)

(declare-fun choose!3314 (List!4315 List!4315) Unit!7589)

(assert (=> d!167370 (= lt!193183 (choose!3314 lt!192671 lt!192681))))

(assert (=> d!167370 (= (lemmaConcatTwoListThenFirstIsPrefix!384 lt!192671 lt!192681) lt!193183)))

(declare-fun bs!54223 () Bool)

(assert (= bs!54223 d!167370))

(assert (=> bs!54223 m!689411))

(assert (=> bs!54223 m!689411))

(declare-fun m!691283 () Bool)

(assert (=> bs!54223 m!691283))

(declare-fun m!691285 () Bool)

(assert (=> bs!54223 m!691285))

(assert (=> b!438025 d!167370))

(declare-fun d!167372 () Bool)

(assert (=> d!167372 (= (head!1067 lt!192638) (h!9702 lt!192638))))

(assert (=> b!438025 d!167372))

(declare-fun d!167374 () Bool)

(declare-fun res!194675 () Bool)

(declare-fun e!268166 () Bool)

(assert (=> d!167374 (=> res!194675 e!268166)))

(assert (=> d!167374 (= res!194675 (not ((_ is Cons!4306) rules!1920)))))

(assert (=> d!167374 (= (sepAndNonSepRulesDisjointChars!422 rules!1920 rules!1920) e!268166)))

(declare-fun b!439025 () Bool)

(declare-fun e!268167 () Bool)

(assert (=> b!439025 (= e!268166 e!268167)))

(declare-fun res!194676 () Bool)

(assert (=> b!439025 (=> (not res!194676) (not e!268167))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!186 (Rule!1466 List!4316) Bool)

(assert (=> b!439025 (= res!194676 (ruleDisjointCharsFromAllFromOtherType!186 (h!9703 rules!1920) rules!1920))))

(declare-fun b!439026 () Bool)

(assert (=> b!439026 (= e!268167 (sepAndNonSepRulesDisjointChars!422 rules!1920 (t!69338 rules!1920)))))

(assert (= (and d!167374 (not res!194675)) b!439025))

(assert (= (and b!439025 res!194676) b!439026))

(declare-fun m!691287 () Bool)

(assert (=> b!439025 m!691287))

(declare-fun m!691289 () Bool)

(assert (=> b!439026 m!691289))

(assert (=> b!438046 d!167374))

(declare-fun d!167376 () Bool)

(declare-fun isEmpty!3223 (Option!1083) Bool)

(assert (=> d!167376 (= (isDefined!922 (maxPrefixZipperSequence!398 thiss!17480 rules!1920 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465))))) (not (isEmpty!3223 (maxPrefixZipperSequence!398 thiss!17480 rules!1920 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))))

(declare-fun bs!54224 () Bool)

(assert (= bs!54224 d!167376))

(assert (=> bs!54224 m!689441))

(declare-fun m!691291 () Bool)

(assert (=> bs!54224 m!691291))

(assert (=> b!438047 d!167376))

(declare-fun b!439125 () Bool)

(declare-fun e!268243 () Option!1083)

(declare-fun call!30215 () Option!1083)

(assert (=> b!439125 (= e!268243 call!30215)))

(declare-fun b!439126 () Bool)

(declare-fun e!268246 () Bool)

(declare-fun e!268244 () Bool)

(assert (=> b!439126 (= e!268246 e!268244)))

(declare-fun res!194713 () Bool)

(assert (=> b!439126 (=> (not res!194713) (not e!268244))))

(declare-fun lt!193220 () Option!1083)

(declare-fun get!1553 (Option!1083) tuple2!5174)

(assert (=> b!439126 (= res!194713 (= (_1!2803 (get!1553 lt!193220)) (_1!2802 (get!1552 (maxPrefix!435 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))))))

(declare-fun b!439127 () Bool)

(declare-fun e!268242 () Bool)

(declare-fun e!268247 () Bool)

(assert (=> b!439127 (= e!268242 e!268247)))

(declare-fun res!194709 () Bool)

(assert (=> b!439127 (=> (not res!194709) (not e!268247))))

(declare-fun maxPrefixZipper!178 (LexerInterface!719 List!4316 List!4315) Option!1082)

(assert (=> b!439127 (= res!194709 (= (_1!2803 (get!1553 lt!193220)) (_1!2802 (get!1552 (maxPrefixZipper!178 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))))))

(declare-fun b!439128 () Bool)

(declare-fun lt!193221 () Option!1083)

(declare-fun lt!193224 () Option!1083)

(assert (=> b!439128 (= e!268243 (ite (and ((_ is None!1082) lt!193221) ((_ is None!1082) lt!193224)) None!1082 (ite ((_ is None!1082) lt!193224) lt!193221 (ite ((_ is None!1082) lt!193221) lt!193224 (ite (>= (size!3526 (_1!2803 (v!15347 lt!193221))) (size!3526 (_1!2803 (v!15347 lt!193224)))) lt!193221 lt!193224)))))))

(assert (=> b!439128 (= lt!193221 call!30215)))

(assert (=> b!439128 (= lt!193224 (maxPrefixZipperSequence!398 thiss!17480 (t!69338 rules!1920) (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))

(declare-fun d!167378 () Bool)

(declare-fun e!268245 () Bool)

(assert (=> d!167378 e!268245))

(declare-fun res!194712 () Bool)

(assert (=> d!167378 (=> (not res!194712) (not e!268245))))

(assert (=> d!167378 (= res!194712 (= (isDefined!922 lt!193220) (isDefined!920 (maxPrefixZipper!178 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465))))))))))

(assert (=> d!167378 (= lt!193220 e!268243)))

(declare-fun c!88933 () Bool)

(assert (=> d!167378 (= c!88933 (and ((_ is Cons!4306) rules!1920) ((_ is Nil!4306) (t!69338 rules!1920))))))

(declare-fun lt!193223 () Unit!7589)

(declare-fun lt!193222 () Unit!7589)

(assert (=> d!167378 (= lt!193223 lt!193222)))

(declare-fun lt!193225 () List!4315)

(declare-fun lt!193226 () List!4315)

(assert (=> d!167378 (isPrefix!493 lt!193225 lt!193226)))

(assert (=> d!167378 (= lt!193222 (lemmaIsPrefixRefl!274 lt!193225 lt!193226))))

(assert (=> d!167378 (= lt!193226 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))

(assert (=> d!167378 (= lt!193225 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))

(assert (=> d!167378 (rulesValidInductive!269 thiss!17480 rules!1920)))

(assert (=> d!167378 (= (maxPrefixZipperSequence!398 thiss!17480 rules!1920 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))) lt!193220)))

(declare-fun bm!30210 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!179 (LexerInterface!719 Rule!1466 BalanceConc!2984) Option!1083)

(assert (=> bm!30210 (= call!30215 (maxPrefixOneRuleZipperSequence!179 thiss!17480 (h!9703 rules!1920) (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))

(declare-fun b!439129 () Bool)

(assert (=> b!439129 (= e!268245 e!268246)))

(declare-fun res!194710 () Bool)

(assert (=> b!439129 (=> res!194710 e!268246)))

(assert (=> b!439129 (= res!194710 (not (isDefined!922 lt!193220)))))

(declare-fun b!439130 () Bool)

(assert (=> b!439130 (= e!268244 (= (list!1899 (_2!2803 (get!1553 lt!193220))) (_2!2802 (get!1552 (maxPrefix!435 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))))))

(declare-fun b!439131 () Bool)

(assert (=> b!439131 (= e!268247 (= (list!1899 (_2!2803 (get!1553 lt!193220))) (_2!2802 (get!1552 (maxPrefixZipper!178 thiss!17480 rules!1920 (list!1899 (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465)))))))))))

(declare-fun b!439132 () Bool)

(declare-fun res!194711 () Bool)

(assert (=> b!439132 (=> (not res!194711) (not e!268245))))

(assert (=> b!439132 (= res!194711 e!268242)))

(declare-fun res!194714 () Bool)

(assert (=> b!439132 (=> res!194714 e!268242)))

(assert (=> b!439132 (= res!194714 (not (isDefined!922 lt!193220)))))

(assert (= (and d!167378 c!88933) b!439125))

(assert (= (and d!167378 (not c!88933)) b!439128))

(assert (= (or b!439125 b!439128) bm!30210))

(assert (= (and d!167378 res!194712) b!439132))

(assert (= (and b!439132 (not res!194714)) b!439127))

(assert (= (and b!439127 res!194709) b!439131))

(assert (= (and b!439132 res!194711) b!439129))

(assert (= (and b!439129 (not res!194710)) b!439126))

(assert (= (and b!439126 res!194713) b!439130))

(declare-fun m!691343 () Bool)

(assert (=> b!439131 m!691343))

(assert (=> b!439131 m!689439))

(declare-fun m!691345 () Bool)

(assert (=> b!439131 m!691345))

(declare-fun m!691347 () Bool)

(assert (=> b!439131 m!691347))

(declare-fun m!691349 () Bool)

(assert (=> b!439131 m!691349))

(declare-fun m!691351 () Bool)

(assert (=> b!439131 m!691351))

(assert (=> b!439131 m!691345))

(assert (=> b!439131 m!691347))

(assert (=> d!167378 m!690029))

(declare-fun m!691353 () Bool)

(assert (=> d!167378 m!691353))

(assert (=> d!167378 m!691347))

(declare-fun m!691355 () Bool)

(assert (=> d!167378 m!691355))

(declare-fun m!691357 () Bool)

(assert (=> d!167378 m!691357))

(assert (=> d!167378 m!689439))

(assert (=> d!167378 m!691345))

(declare-fun m!691359 () Bool)

(assert (=> d!167378 m!691359))

(assert (=> d!167378 m!691345))

(assert (=> d!167378 m!691347))

(assert (=> b!439128 m!689439))

(declare-fun m!691361 () Bool)

(assert (=> b!439128 m!691361))

(assert (=> bm!30210 m!689439))

(declare-fun m!691363 () Bool)

(assert (=> bm!30210 m!691363))

(assert (=> b!439126 m!691351))

(assert (=> b!439126 m!689439))

(assert (=> b!439126 m!691345))

(assert (=> b!439126 m!691345))

(declare-fun m!691365 () Bool)

(assert (=> b!439126 m!691365))

(assert (=> b!439126 m!691365))

(declare-fun m!691367 () Bool)

(assert (=> b!439126 m!691367))

(assert (=> b!439129 m!691359))

(assert (=> b!439127 m!691351))

(assert (=> b!439127 m!689439))

(assert (=> b!439127 m!691345))

(assert (=> b!439127 m!691345))

(assert (=> b!439127 m!691347))

(assert (=> b!439127 m!691347))

(assert (=> b!439127 m!691349))

(assert (=> b!439130 m!691345))

(assert (=> b!439130 m!691365))

(assert (=> b!439130 m!691343))

(assert (=> b!439130 m!691365))

(assert (=> b!439130 m!691367))

(assert (=> b!439130 m!689439))

(assert (=> b!439130 m!691345))

(assert (=> b!439130 m!691351))

(assert (=> b!439132 m!691359))

(assert (=> b!438047 d!167378))

(declare-fun d!167394 () Bool)

(assert (=> d!167394 (= (seqFromList!1032 (originalCharacters!876 (h!9704 tokens!465))) (fromListB!456 (originalCharacters!876 (h!9704 tokens!465))))))

(declare-fun bs!54229 () Bool)

(assert (= bs!54229 d!167394))

(declare-fun m!691369 () Bool)

(assert (=> bs!54229 m!691369))

(assert (=> b!438047 d!167394))

(declare-fun d!167396 () Bool)

(assert (=> d!167396 (dynLambda!2563 lambda!12712 (h!9704 tokens!465))))

(declare-fun lt!193227 () Unit!7589)

(assert (=> d!167396 (= lt!193227 (choose!3308 tokens!465 lambda!12712 (h!9704 tokens!465)))))

(declare-fun e!268248 () Bool)

(assert (=> d!167396 e!268248))

(declare-fun res!194715 () Bool)

(assert (=> d!167396 (=> (not res!194715) (not e!268248))))

(assert (=> d!167396 (= res!194715 (forall!1234 tokens!465 lambda!12712))))

(assert (=> d!167396 (= (forallContained!386 tokens!465 lambda!12712 (h!9704 tokens!465)) lt!193227)))

(declare-fun b!439133 () Bool)

(assert (=> b!439133 (= e!268248 (contains!945 tokens!465 (h!9704 tokens!465)))))

(assert (= (and d!167396 res!194715) b!439133))

(declare-fun b_lambda!18143 () Bool)

(assert (=> (not b_lambda!18143) (not d!167396)))

(declare-fun m!691371 () Bool)

(assert (=> d!167396 m!691371))

(declare-fun m!691373 () Bool)

(assert (=> d!167396 m!691373))

(assert (=> d!167396 m!690633))

(declare-fun m!691375 () Bool)

(assert (=> b!439133 m!691375))

(assert (=> b!438047 d!167396))

(declare-fun d!167398 () Bool)

(declare-fun lt!193230 () Token!1410)

(assert (=> d!167398 (= lt!193230 (apply!1072 (list!1902 (_1!2801 lt!192656)) 0))))

(declare-fun apply!1076 (Conc!1489 Int) Token!1410)

(assert (=> d!167398 (= lt!193230 (apply!1076 (c!88712 (_1!2801 lt!192656)) 0))))

(declare-fun e!268251 () Bool)

(assert (=> d!167398 e!268251))

(declare-fun res!194718 () Bool)

(assert (=> d!167398 (=> (not res!194718) (not e!268251))))

(assert (=> d!167398 (= res!194718 (<= 0 0))))

(assert (=> d!167398 (= (apply!1070 (_1!2801 lt!192656) 0) lt!193230)))

(declare-fun b!439136 () Bool)

(assert (=> b!439136 (= e!268251 (< 0 (size!3527 (_1!2801 lt!192656))))))

(assert (= (and d!167398 res!194718) b!439136))

(assert (=> d!167398 m!690699))

(assert (=> d!167398 m!690699))

(declare-fun m!691377 () Bool)

(assert (=> d!167398 m!691377))

(declare-fun m!691379 () Bool)

(assert (=> d!167398 m!691379))

(assert (=> b!439136 m!689483))

(assert (=> b!438004 d!167398))

(declare-fun d!167400 () Bool)

(assert (=> d!167400 (not (matchR!375 (regex!833 (rule!1508 lt!192655)) lt!192657))))

(declare-fun lt!193233 () Unit!7589)

(declare-fun choose!3315 (Regex!1057 List!4315 C!3036) Unit!7589)

(assert (=> d!167400 (= lt!193233 (choose!3315 (regex!833 (rule!1508 lt!192655)) lt!192657 lt!192665))))

(assert (=> d!167400 (validRegex!306 (regex!833 (rule!1508 lt!192655)))))

(assert (=> d!167400 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!112 (regex!833 (rule!1508 lt!192655)) lt!192657 lt!192665) lt!193233)))

(declare-fun bs!54230 () Bool)

(assert (= bs!54230 d!167400))

(assert (=> bs!54230 m!689387))

(declare-fun m!691381 () Bool)

(assert (=> bs!54230 m!691381))

(declare-fun m!691383 () Bool)

(assert (=> bs!54230 m!691383))

(assert (=> b!438011 d!167400))

(declare-fun b!439137 () Bool)

(declare-fun e!268255 () Bool)

(declare-fun e!268252 () Bool)

(assert (=> b!439137 (= e!268255 e!268252)))

(declare-fun c!88935 () Bool)

(assert (=> b!439137 (= c!88935 ((_ is EmptyLang!1057) (regex!833 (rule!1508 lt!192655))))))

(declare-fun b!439138 () Bool)

(declare-fun e!268254 () Bool)

(assert (=> b!439138 (= e!268254 (not (= (head!1067 lt!192657) (c!88711 (regex!833 (rule!1508 lt!192655))))))))

(declare-fun b!439139 () Bool)

(declare-fun res!194720 () Bool)

(declare-fun e!268258 () Bool)

(assert (=> b!439139 (=> res!194720 e!268258)))

(assert (=> b!439139 (= res!194720 (not ((_ is ElementMatch!1057) (regex!833 (rule!1508 lt!192655)))))))

(assert (=> b!439139 (= e!268252 e!268258)))

(declare-fun b!439140 () Bool)

(declare-fun e!268257 () Bool)

(assert (=> b!439140 (= e!268257 (nullable!231 (regex!833 (rule!1508 lt!192655))))))

(declare-fun b!439141 () Bool)

(declare-fun res!194724 () Bool)

(declare-fun e!268256 () Bool)

(assert (=> b!439141 (=> (not res!194724) (not e!268256))))

(assert (=> b!439141 (= res!194724 (isEmpty!3210 (tail!613 lt!192657)))))

(declare-fun d!167402 () Bool)

(assert (=> d!167402 e!268255))

(declare-fun c!88937 () Bool)

(assert (=> d!167402 (= c!88937 ((_ is EmptyExpr!1057) (regex!833 (rule!1508 lt!192655))))))

(declare-fun lt!193234 () Bool)

(assert (=> d!167402 (= lt!193234 e!268257)))

(declare-fun c!88936 () Bool)

(assert (=> d!167402 (= c!88936 (isEmpty!3210 lt!192657))))

(assert (=> d!167402 (validRegex!306 (regex!833 (rule!1508 lt!192655)))))

(assert (=> d!167402 (= (matchR!375 (regex!833 (rule!1508 lt!192655)) lt!192657) lt!193234)))

(declare-fun b!439142 () Bool)

(declare-fun res!194723 () Bool)

(assert (=> b!439142 (=> (not res!194723) (not e!268256))))

(declare-fun call!30216 () Bool)

(assert (=> b!439142 (= res!194723 (not call!30216))))

(declare-fun b!439143 () Bool)

(assert (=> b!439143 (= e!268255 (= lt!193234 call!30216))))

(declare-fun b!439144 () Bool)

(declare-fun res!194722 () Bool)

(assert (=> b!439144 (=> res!194722 e!268258)))

(assert (=> b!439144 (= res!194722 e!268256)))

(declare-fun res!194721 () Bool)

(assert (=> b!439144 (=> (not res!194721) (not e!268256))))

(assert (=> b!439144 (= res!194721 lt!193234)))

(declare-fun b!439145 () Bool)

(assert (=> b!439145 (= e!268252 (not lt!193234))))

(declare-fun b!439146 () Bool)

(declare-fun e!268253 () Bool)

(assert (=> b!439146 (= e!268253 e!268254)))

(declare-fun res!194725 () Bool)

(assert (=> b!439146 (=> res!194725 e!268254)))

(assert (=> b!439146 (= res!194725 call!30216)))

(declare-fun b!439147 () Bool)

(assert (=> b!439147 (= e!268257 (matchR!375 (derivativeStep!197 (regex!833 (rule!1508 lt!192655)) (head!1067 lt!192657)) (tail!613 lt!192657)))))

(declare-fun bm!30211 () Bool)

(assert (=> bm!30211 (= call!30216 (isEmpty!3210 lt!192657))))

(declare-fun b!439148 () Bool)

(declare-fun res!194726 () Bool)

(assert (=> b!439148 (=> res!194726 e!268254)))

(assert (=> b!439148 (= res!194726 (not (isEmpty!3210 (tail!613 lt!192657))))))

(declare-fun b!439149 () Bool)

(assert (=> b!439149 (= e!268256 (= (head!1067 lt!192657) (c!88711 (regex!833 (rule!1508 lt!192655)))))))

(declare-fun b!439150 () Bool)

(assert (=> b!439150 (= e!268258 e!268253)))

(declare-fun res!194719 () Bool)

(assert (=> b!439150 (=> (not res!194719) (not e!268253))))

(assert (=> b!439150 (= res!194719 (not lt!193234))))

(assert (= (and d!167402 c!88936) b!439140))

(assert (= (and d!167402 (not c!88936)) b!439147))

(assert (= (and d!167402 c!88937) b!439143))

(assert (= (and d!167402 (not c!88937)) b!439137))

(assert (= (and b!439137 c!88935) b!439145))

(assert (= (and b!439137 (not c!88935)) b!439139))

(assert (= (and b!439139 (not res!194720)) b!439144))

(assert (= (and b!439144 res!194721) b!439142))

(assert (= (and b!439142 res!194723) b!439141))

(assert (= (and b!439141 res!194724) b!439149))

(assert (= (and b!439144 (not res!194722)) b!439150))

(assert (= (and b!439150 res!194719) b!439146))

(assert (= (and b!439146 (not res!194725)) b!439148))

(assert (= (and b!439148 (not res!194726)) b!439138))

(assert (= (or b!439143 b!439142 b!439146) bm!30211))

(declare-fun m!691385 () Bool)

(assert (=> b!439140 m!691385))

(assert (=> b!439147 m!689525))

(assert (=> b!439147 m!689525))

(declare-fun m!691387 () Bool)

(assert (=> b!439147 m!691387))

(assert (=> b!439147 m!690461))

(assert (=> b!439147 m!691387))

(assert (=> b!439147 m!690461))

(declare-fun m!691389 () Bool)

(assert (=> b!439147 m!691389))

(assert (=> bm!30211 m!690465))

(assert (=> d!167402 m!690465))

(assert (=> d!167402 m!691383))

(assert (=> b!439141 m!690461))

(assert (=> b!439141 m!690461))

(assert (=> b!439141 m!690469))

(assert (=> b!439149 m!689525))

(assert (=> b!439148 m!690461))

(assert (=> b!439148 m!690461))

(assert (=> b!439148 m!690469))

(assert (=> b!439138 m!689525))

(assert (=> b!438011 d!167402))

(declare-fun d!167404 () Bool)

(assert (=> d!167404 (= (get!1552 lt!192642) (v!15346 lt!192642))))

(assert (=> b!438032 d!167404))

(declare-fun d!167406 () Bool)

(assert (=> d!167406 (= (isDefined!920 lt!192642) (not (isEmpty!3218 lt!192642)))))

(declare-fun bs!54231 () Bool)

(assert (= bs!54231 d!167406))

(declare-fun m!691391 () Bool)

(assert (=> bs!54231 m!691391))

(assert (=> b!438032 d!167406))

(declare-fun b!439151 () Bool)

(declare-fun res!194732 () Bool)

(declare-fun e!268261 () Bool)

(assert (=> b!439151 (=> (not res!194732) (not e!268261))))

(declare-fun lt!193235 () Option!1082)

(assert (=> b!439151 (= res!194732 (matchR!375 (regex!833 (rule!1508 (_1!2802 (get!1552 lt!193235)))) (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!193235))))))))

(declare-fun b!439152 () Bool)

(declare-fun res!194727 () Bool)

(assert (=> b!439152 (=> (not res!194727) (not e!268261))))

(assert (=> b!439152 (= res!194727 (= (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!193235)))) (originalCharacters!876 (_1!2802 (get!1552 lt!193235)))))))

(declare-fun b!439153 () Bool)

(declare-fun e!268260 () Bool)

(assert (=> b!439153 (= e!268260 e!268261)))

(declare-fun res!194731 () Bool)

(assert (=> b!439153 (=> (not res!194731) (not e!268261))))

(assert (=> b!439153 (= res!194731 (isDefined!920 lt!193235))))

(declare-fun b!439154 () Bool)

(declare-fun res!194730 () Bool)

(assert (=> b!439154 (=> (not res!194730) (not e!268261))))

(assert (=> b!439154 (= res!194730 (= (value!28056 (_1!2802 (get!1552 lt!193235))) (apply!1073 (transformation!833 (rule!1508 (_1!2802 (get!1552 lt!193235)))) (seqFromList!1032 (originalCharacters!876 (_1!2802 (get!1552 lt!193235)))))))))

(declare-fun b!439155 () Bool)

(declare-fun e!268259 () Option!1082)

(declare-fun lt!193236 () Option!1082)

(declare-fun lt!193237 () Option!1082)

(assert (=> b!439155 (= e!268259 (ite (and ((_ is None!1081) lt!193236) ((_ is None!1081) lt!193237)) None!1081 (ite ((_ is None!1081) lt!193237) lt!193236 (ite ((_ is None!1081) lt!193236) lt!193237 (ite (>= (size!3526 (_1!2802 (v!15346 lt!193236))) (size!3526 (_1!2802 (v!15346 lt!193237)))) lt!193236 lt!193237)))))))

(declare-fun call!30217 () Option!1082)

(assert (=> b!439155 (= lt!193236 call!30217)))

(assert (=> b!439155 (= lt!193237 (maxPrefix!435 thiss!17480 (t!69338 rules!1920) lt!192671))))

(declare-fun b!439157 () Bool)

(declare-fun res!194728 () Bool)

(assert (=> b!439157 (=> (not res!194728) (not e!268261))))

(assert (=> b!439157 (= res!194728 (< (size!3532 (_2!2802 (get!1552 lt!193235))) (size!3532 lt!192671)))))

(declare-fun bm!30212 () Bool)

(assert (=> bm!30212 (= call!30217 (maxPrefixOneRule!208 thiss!17480 (h!9703 rules!1920) lt!192671))))

(declare-fun b!439158 () Bool)

(assert (=> b!439158 (= e!268261 (contains!942 rules!1920 (rule!1508 (_1!2802 (get!1552 lt!193235)))))))

(declare-fun b!439159 () Bool)

(assert (=> b!439159 (= e!268259 call!30217)))

(declare-fun d!167408 () Bool)

(assert (=> d!167408 e!268260))

(declare-fun res!194733 () Bool)

(assert (=> d!167408 (=> res!194733 e!268260)))

(assert (=> d!167408 (= res!194733 (isEmpty!3218 lt!193235))))

(assert (=> d!167408 (= lt!193235 e!268259)))

(declare-fun c!88938 () Bool)

(assert (=> d!167408 (= c!88938 (and ((_ is Cons!4306) rules!1920) ((_ is Nil!4306) (t!69338 rules!1920))))))

(declare-fun lt!193238 () Unit!7589)

(declare-fun lt!193239 () Unit!7589)

(assert (=> d!167408 (= lt!193238 lt!193239)))

(assert (=> d!167408 (isPrefix!493 lt!192671 lt!192671)))

(assert (=> d!167408 (= lt!193239 (lemmaIsPrefixRefl!274 lt!192671 lt!192671))))

(assert (=> d!167408 (rulesValidInductive!269 thiss!17480 rules!1920)))

(assert (=> d!167408 (= (maxPrefix!435 thiss!17480 rules!1920 lt!192671) lt!193235)))

(declare-fun b!439156 () Bool)

(declare-fun res!194729 () Bool)

(assert (=> b!439156 (=> (not res!194729) (not e!268261))))

(assert (=> b!439156 (= res!194729 (= (++!1238 (list!1899 (charsOf!476 (_1!2802 (get!1552 lt!193235)))) (_2!2802 (get!1552 lt!193235))) lt!192671))))

(assert (= (and d!167408 c!88938) b!439159))

(assert (= (and d!167408 (not c!88938)) b!439155))

(assert (= (or b!439159 b!439155) bm!30212))

(assert (= (and d!167408 (not res!194733)) b!439153))

(assert (= (and b!439153 res!194731) b!439152))

(assert (= (and b!439152 res!194727) b!439157))

(assert (= (and b!439157 res!194728) b!439156))

(assert (= (and b!439156 res!194729) b!439154))

(assert (= (and b!439154 res!194730) b!439151))

(assert (= (and b!439151 res!194732) b!439158))

(declare-fun m!691393 () Bool)

(assert (=> d!167408 m!691393))

(declare-fun m!691395 () Bool)

(assert (=> d!167408 m!691395))

(declare-fun m!691397 () Bool)

(assert (=> d!167408 m!691397))

(assert (=> d!167408 m!690029))

(declare-fun m!691399 () Bool)

(assert (=> b!439156 m!691399))

(declare-fun m!691401 () Bool)

(assert (=> b!439156 m!691401))

(assert (=> b!439156 m!691401))

(declare-fun m!691403 () Bool)

(assert (=> b!439156 m!691403))

(assert (=> b!439156 m!691403))

(declare-fun m!691405 () Bool)

(assert (=> b!439156 m!691405))

(assert (=> b!439151 m!691399))

(assert (=> b!439151 m!691401))

(assert (=> b!439151 m!691401))

(assert (=> b!439151 m!691403))

(assert (=> b!439151 m!691403))

(declare-fun m!691407 () Bool)

(assert (=> b!439151 m!691407))

(assert (=> b!439154 m!691399))

(declare-fun m!691409 () Bool)

(assert (=> b!439154 m!691409))

(assert (=> b!439154 m!691409))

(declare-fun m!691411 () Bool)

(assert (=> b!439154 m!691411))

(assert (=> b!439158 m!691399))

(declare-fun m!691413 () Bool)

(assert (=> b!439158 m!691413))

(assert (=> b!439152 m!691399))

(assert (=> b!439152 m!691401))

(assert (=> b!439152 m!691401))

(assert (=> b!439152 m!691403))

(declare-fun m!691415 () Bool)

(assert (=> b!439155 m!691415))

(assert (=> b!439157 m!691399))

(declare-fun m!691417 () Bool)

(assert (=> b!439157 m!691417))

(assert (=> b!439157 m!690309))

(declare-fun m!691419 () Bool)

(assert (=> b!439153 m!691419))

(declare-fun m!691421 () Bool)

(assert (=> bm!30212 m!691421))

(assert (=> b!438032 d!167408))

(declare-fun d!167410 () Bool)

(declare-fun lt!193240 () Bool)

(declare-fun e!268263 () Bool)

(assert (=> d!167410 (= lt!193240 e!268263)))

(declare-fun res!194736 () Bool)

(assert (=> d!167410 (=> (not res!194736) (not e!268263))))

(assert (=> d!167410 (= res!194736 (= (list!1902 (_1!2801 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 (h!9704 tokens!465)))))) (list!1902 (singletonSeq!379 (h!9704 tokens!465)))))))

(declare-fun e!268262 () Bool)

(assert (=> d!167410 (= lt!193240 e!268262)))

(declare-fun res!194734 () Bool)

(assert (=> d!167410 (=> (not res!194734) (not e!268262))))

(declare-fun lt!193241 () tuple2!5170)

(assert (=> d!167410 (= res!194734 (= (size!3527 (_1!2801 lt!193241)) 1))))

(assert (=> d!167410 (= lt!193241 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 (h!9704 tokens!465)))))))

(assert (=> d!167410 (not (isEmpty!3214 rules!1920))))

(assert (=> d!167410 (= (rulesProduceIndividualToken!468 thiss!17480 rules!1920 (h!9704 tokens!465)) lt!193240)))

(declare-fun b!439160 () Bool)

(declare-fun res!194735 () Bool)

(assert (=> b!439160 (=> (not res!194735) (not e!268262))))

(assert (=> b!439160 (= res!194735 (= (apply!1070 (_1!2801 lt!193241) 0) (h!9704 tokens!465)))))

(declare-fun b!439161 () Bool)

(assert (=> b!439161 (= e!268262 (isEmpty!3211 (_2!2801 lt!193241)))))

(declare-fun b!439162 () Bool)

(assert (=> b!439162 (= e!268263 (isEmpty!3211 (_2!2801 (lex!511 thiss!17480 rules!1920 (print!444 thiss!17480 (singletonSeq!379 (h!9704 tokens!465)))))))))

(assert (= (and d!167410 res!194734) b!439160))

(assert (= (and b!439160 res!194735) b!439161))

(assert (= (and d!167410 res!194736) b!439162))

(declare-fun m!691423 () Bool)

(assert (=> d!167410 m!691423))

(assert (=> d!167410 m!689371))

(declare-fun m!691425 () Bool)

(assert (=> d!167410 m!691425))

(assert (=> d!167410 m!689371))

(assert (=> d!167410 m!689809))

(assert (=> d!167410 m!689809))

(declare-fun m!691427 () Bool)

(assert (=> d!167410 m!691427))

(assert (=> d!167410 m!689371))

(assert (=> d!167410 m!689373))

(declare-fun m!691429 () Bool)

(assert (=> d!167410 m!691429))

(declare-fun m!691431 () Bool)

(assert (=> b!439160 m!691431))

(declare-fun m!691433 () Bool)

(assert (=> b!439161 m!691433))

(assert (=> b!439162 m!689371))

(assert (=> b!439162 m!689371))

(assert (=> b!439162 m!689809))

(assert (=> b!439162 m!689809))

(assert (=> b!439162 m!691427))

(declare-fun m!691435 () Bool)

(assert (=> b!439162 m!691435))

(assert (=> b!438054 d!167410))

(declare-fun d!167412 () Bool)

(assert (=> d!167412 (= (get!1552 lt!192677) (v!15346 lt!192677))))

(assert (=> b!438055 d!167412))

(declare-fun d!167414 () Bool)

(assert (=> d!167414 (= (head!1068 tokens!465) (h!9704 tokens!465))))

(assert (=> b!438055 d!167414))

(declare-fun b!439163 () Bool)

(declare-fun e!268267 () Bool)

(declare-fun e!268264 () Bool)

(assert (=> b!439163 (= e!268267 e!268264)))

(declare-fun c!88939 () Bool)

(assert (=> b!439163 (= c!88939 ((_ is EmptyLang!1057) (regex!833 lt!192647)))))

(declare-fun b!439164 () Bool)

(declare-fun e!268266 () Bool)

(assert (=> b!439164 (= e!268266 (not (= (head!1067 lt!192667) (c!88711 (regex!833 lt!192647)))))))

(declare-fun b!439165 () Bool)

(declare-fun res!194738 () Bool)

(declare-fun e!268270 () Bool)

(assert (=> b!439165 (=> res!194738 e!268270)))

(assert (=> b!439165 (= res!194738 (not ((_ is ElementMatch!1057) (regex!833 lt!192647))))))

(assert (=> b!439165 (= e!268264 e!268270)))

(declare-fun b!439166 () Bool)

(declare-fun e!268269 () Bool)

(assert (=> b!439166 (= e!268269 (nullable!231 (regex!833 lt!192647)))))

(declare-fun b!439167 () Bool)

(declare-fun res!194742 () Bool)

(declare-fun e!268268 () Bool)

(assert (=> b!439167 (=> (not res!194742) (not e!268268))))

(assert (=> b!439167 (= res!194742 (isEmpty!3210 (tail!613 lt!192667)))))

(declare-fun d!167416 () Bool)

(assert (=> d!167416 e!268267))

(declare-fun c!88941 () Bool)

(assert (=> d!167416 (= c!88941 ((_ is EmptyExpr!1057) (regex!833 lt!192647)))))

(declare-fun lt!193242 () Bool)

(assert (=> d!167416 (= lt!193242 e!268269)))

(declare-fun c!88940 () Bool)

(assert (=> d!167416 (= c!88940 (isEmpty!3210 lt!192667))))

(assert (=> d!167416 (validRegex!306 (regex!833 lt!192647))))

(assert (=> d!167416 (= (matchR!375 (regex!833 lt!192647) lt!192667) lt!193242)))

(declare-fun b!439168 () Bool)

(declare-fun res!194741 () Bool)

(assert (=> b!439168 (=> (not res!194741) (not e!268268))))

(declare-fun call!30218 () Bool)

(assert (=> b!439168 (= res!194741 (not call!30218))))

(declare-fun b!439169 () Bool)

(assert (=> b!439169 (= e!268267 (= lt!193242 call!30218))))

(declare-fun b!439170 () Bool)

(declare-fun res!194740 () Bool)

(assert (=> b!439170 (=> res!194740 e!268270)))

(assert (=> b!439170 (= res!194740 e!268268)))

(declare-fun res!194739 () Bool)

(assert (=> b!439170 (=> (not res!194739) (not e!268268))))

(assert (=> b!439170 (= res!194739 lt!193242)))

(declare-fun b!439171 () Bool)

(assert (=> b!439171 (= e!268264 (not lt!193242))))

(declare-fun b!439172 () Bool)

(declare-fun e!268265 () Bool)

(assert (=> b!439172 (= e!268265 e!268266)))

(declare-fun res!194743 () Bool)

(assert (=> b!439172 (=> res!194743 e!268266)))

(assert (=> b!439172 (= res!194743 call!30218)))

(declare-fun b!439173 () Bool)

(assert (=> b!439173 (= e!268269 (matchR!375 (derivativeStep!197 (regex!833 lt!192647) (head!1067 lt!192667)) (tail!613 lt!192667)))))

(declare-fun bm!30213 () Bool)

(assert (=> bm!30213 (= call!30218 (isEmpty!3210 lt!192667))))

(declare-fun b!439174 () Bool)

(declare-fun res!194744 () Bool)

(assert (=> b!439174 (=> res!194744 e!268266)))

(assert (=> b!439174 (= res!194744 (not (isEmpty!3210 (tail!613 lt!192667))))))

(declare-fun b!439175 () Bool)

(assert (=> b!439175 (= e!268268 (= (head!1067 lt!192667) (c!88711 (regex!833 lt!192647))))))

(declare-fun b!439176 () Bool)

(assert (=> b!439176 (= e!268270 e!268265)))

(declare-fun res!194737 () Bool)

(assert (=> b!439176 (=> (not res!194737) (not e!268265))))

(assert (=> b!439176 (= res!194737 (not lt!193242))))

(assert (= (and d!167416 c!88940) b!439166))

(assert (= (and d!167416 (not c!88940)) b!439173))

(assert (= (and d!167416 c!88941) b!439169))

(assert (= (and d!167416 (not c!88941)) b!439163))

(assert (= (and b!439163 c!88939) b!439171))

(assert (= (and b!439163 (not c!88939)) b!439165))

(assert (= (and b!439165 (not res!194738)) b!439170))

(assert (= (and b!439170 res!194739) b!439168))

(assert (= (and b!439168 res!194741) b!439167))

(assert (= (and b!439167 res!194742) b!439175))

(assert (= (and b!439170 (not res!194740)) b!439176))

(assert (= (and b!439176 res!194737) b!439172))

(assert (= (and b!439172 (not res!194743)) b!439174))

(assert (= (and b!439174 (not res!194744)) b!439164))

(assert (= (or b!439169 b!439168 b!439172) bm!30213))

(declare-fun m!691437 () Bool)

(assert (=> b!439166 m!691437))

(assert (=> b!439173 m!690479))

(assert (=> b!439173 m!690479))

(declare-fun m!691439 () Bool)

(assert (=> b!439173 m!691439))

(assert (=> b!439173 m!690483))

(assert (=> b!439173 m!691439))

(assert (=> b!439173 m!690483))

(declare-fun m!691441 () Bool)

(assert (=> b!439173 m!691441))

(assert (=> bm!30213 m!690487))

(assert (=> d!167416 m!690487))

(declare-fun m!691443 () Bool)

(assert (=> d!167416 m!691443))

(assert (=> b!439167 m!690483))

(assert (=> b!439167 m!690483))

(assert (=> b!439167 m!690491))

(assert (=> b!439175 m!690479))

(assert (=> b!439174 m!690483))

(assert (=> b!439174 m!690483))

(assert (=> b!439174 m!690491))

(assert (=> b!439164 m!690479))

(assert (=> b!438012 d!167416))

(declare-fun d!167418 () Bool)

(assert (=> d!167418 (= (get!1551 lt!192660) (v!15345 lt!192660))))

(assert (=> b!438012 d!167418))

(declare-fun d!167420 () Bool)

(declare-fun lt!193243 () Token!1410)

(assert (=> d!167420 (= lt!193243 (apply!1072 (list!1902 (_1!2801 lt!192634)) 0))))

(assert (=> d!167420 (= lt!193243 (apply!1076 (c!88712 (_1!2801 lt!192634)) 0))))

(declare-fun e!268271 () Bool)

(assert (=> d!167420 e!268271))

(declare-fun res!194745 () Bool)

(assert (=> d!167420 (=> (not res!194745) (not e!268271))))

(assert (=> d!167420 (= res!194745 (<= 0 0))))

(assert (=> d!167420 (= (apply!1070 (_1!2801 lt!192634) 0) lt!193243)))

(declare-fun b!439177 () Bool)

(assert (=> b!439177 (= e!268271 (< 0 (size!3527 (_1!2801 lt!192634))))))

(assert (= (and d!167420 res!194745) b!439177))

(assert (=> d!167420 m!691277))

(assert (=> d!167420 m!691277))

(declare-fun m!691445 () Bool)

(assert (=> d!167420 m!691445))

(declare-fun m!691447 () Bool)

(assert (=> d!167420 m!691447))

(assert (=> b!439177 m!689465))

(assert (=> b!438029 d!167420))

(declare-fun d!167422 () Bool)

(assert (=> d!167422 (= (inv!5366 (tag!1083 (h!9703 rules!1920))) (= (mod (str.len (value!28055 (tag!1083 (h!9703 rules!1920)))) 2) 0))))

(assert (=> b!438050 d!167422))

(declare-fun d!167424 () Bool)

(declare-fun res!194746 () Bool)

(declare-fun e!268272 () Bool)

(assert (=> d!167424 (=> (not res!194746) (not e!268272))))

(assert (=> d!167424 (= res!194746 (semiInverseModEq!328 (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toValue!1640 (transformation!833 (h!9703 rules!1920)))))))

(assert (=> d!167424 (= (inv!5369 (transformation!833 (h!9703 rules!1920))) e!268272)))

(declare-fun b!439178 () Bool)

(assert (=> b!439178 (= e!268272 (equivClasses!311 (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toValue!1640 (transformation!833 (h!9703 rules!1920)))))))

(assert (= (and d!167424 res!194746) b!439178))

(declare-fun m!691449 () Bool)

(assert (=> d!167424 m!691449))

(declare-fun m!691451 () Bool)

(assert (=> b!439178 m!691451))

(assert (=> b!438050 d!167424))

(declare-fun d!167426 () Bool)

(declare-fun lt!193244 () Bool)

(assert (=> d!167426 (= lt!193244 (isEmpty!3210 (list!1899 (_2!2801 lt!192634))))))

(assert (=> d!167426 (= lt!193244 (isEmpty!3220 (c!88710 (_2!2801 lt!192634))))))

(assert (=> d!167426 (= (isEmpty!3211 (_2!2801 lt!192634)) lt!193244)))

(declare-fun bs!54232 () Bool)

(assert (= bs!54232 d!167426))

(declare-fun m!691453 () Bool)

(assert (=> bs!54232 m!691453))

(assert (=> bs!54232 m!691453))

(declare-fun m!691455 () Bool)

(assert (=> bs!54232 m!691455))

(declare-fun m!691457 () Bool)

(assert (=> bs!54232 m!691457))

(assert (=> b!438051 d!167426))

(declare-fun d!167428 () Bool)

(assert (=> d!167428 (not (contains!943 (usedCharacters!134 (regex!833 (rule!1508 separatorToken!170))) lt!192678))))

(declare-fun lt!193247 () Unit!7589)

(declare-fun choose!3316 (LexerInterface!719 List!4316 List!4316 Rule!1466 Rule!1466 C!3036) Unit!7589)

(assert (=> d!167428 (= lt!193247 (choose!3316 thiss!17480 rules!1920 rules!1920 (rule!1508 lt!192655) (rule!1508 separatorToken!170) lt!192678))))

(assert (=> d!167428 (rulesInvariant!685 thiss!17480 rules!1920)))

(assert (=> d!167428 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!92 thiss!17480 rules!1920 rules!1920 (rule!1508 lt!192655) (rule!1508 separatorToken!170) lt!192678) lt!193247)))

(declare-fun bs!54233 () Bool)

(assert (= bs!54233 d!167428))

(assert (=> bs!54233 m!689451))

(assert (=> bs!54233 m!689451))

(assert (=> bs!54233 m!689453))

(declare-fun m!691459 () Bool)

(assert (=> bs!54233 m!691459))

(assert (=> bs!54233 m!689375))

(assert (=> b!438008 d!167428))

(declare-fun d!167430 () Bool)

(declare-fun res!194749 () Bool)

(declare-fun e!268275 () Bool)

(assert (=> d!167430 (=> (not res!194749) (not e!268275))))

(declare-fun rulesValid!293 (LexerInterface!719 List!4316) Bool)

(assert (=> d!167430 (= res!194749 (rulesValid!293 thiss!17480 rules!1920))))

(assert (=> d!167430 (= (rulesInvariant!685 thiss!17480 rules!1920) e!268275)))

(declare-fun b!439181 () Bool)

(declare-datatypes ((List!4318 0))(
  ( (Nil!4308) (Cons!4308 (h!9705 String!5355) (t!69426 List!4318)) )
))
(declare-fun noDuplicateTag!293 (LexerInterface!719 List!4316 List!4318) Bool)

(assert (=> b!439181 (= e!268275 (noDuplicateTag!293 thiss!17480 rules!1920 Nil!4308))))

(assert (= (and d!167430 res!194749) b!439181))

(declare-fun m!691461 () Bool)

(assert (=> d!167430 m!691461))

(declare-fun m!691463 () Bool)

(assert (=> b!439181 m!691463))

(assert (=> b!438009 d!167430))

(declare-fun d!167432 () Bool)

(declare-fun lt!193248 () Bool)

(assert (=> d!167432 (= lt!193248 (select (content!717 rules!1920) (rule!1508 lt!192655)))))

(declare-fun e!268277 () Bool)

(assert (=> d!167432 (= lt!193248 e!268277)))

(declare-fun res!194750 () Bool)

(assert (=> d!167432 (=> (not res!194750) (not e!268277))))

(assert (=> d!167432 (= res!194750 ((_ is Cons!4306) rules!1920))))

(assert (=> d!167432 (= (contains!942 rules!1920 (rule!1508 lt!192655)) lt!193248)))

(declare-fun b!439182 () Bool)

(declare-fun e!268276 () Bool)

(assert (=> b!439182 (= e!268277 e!268276)))

(declare-fun res!194751 () Bool)

(assert (=> b!439182 (=> res!194751 e!268276)))

(assert (=> b!439182 (= res!194751 (= (h!9703 rules!1920) (rule!1508 lt!192655)))))

(declare-fun b!439183 () Bool)

(assert (=> b!439183 (= e!268276 (contains!942 (t!69338 rules!1920) (rule!1508 lt!192655)))))

(assert (= (and d!167432 res!194750) b!439182))

(assert (= (and b!439182 (not res!194751)) b!439183))

(assert (=> d!167432 m!691257))

(declare-fun m!691465 () Bool)

(assert (=> d!167432 m!691465))

(declare-fun m!691467 () Bool)

(assert (=> b!439183 m!691467))

(assert (=> b!438030 d!167432))

(declare-fun d!167434 () Bool)

(assert (=> d!167434 (= (isEmpty!3210 lt!192638) ((_ is Nil!4305) lt!192638))))

(assert (=> b!438031 d!167434))

(declare-fun d!167436 () Bool)

(declare-fun c!88943 () Bool)

(assert (=> d!167436 (= c!88943 ((_ is IntegerValue!2565) (value!28056 (h!9704 tokens!465))))))

(declare-fun e!268279 () Bool)

(assert (=> d!167436 (= (inv!21 (value!28056 (h!9704 tokens!465))) e!268279)))

(declare-fun b!439184 () Bool)

(declare-fun e!268278 () Bool)

(assert (=> b!439184 (= e!268278 (inv!15 (value!28056 (h!9704 tokens!465))))))

(declare-fun b!439185 () Bool)

(assert (=> b!439185 (= e!268279 (inv!16 (value!28056 (h!9704 tokens!465))))))

(declare-fun b!439186 () Bool)

(declare-fun e!268280 () Bool)

(assert (=> b!439186 (= e!268280 (inv!17 (value!28056 (h!9704 tokens!465))))))

(declare-fun b!439187 () Bool)

(declare-fun res!194752 () Bool)

(assert (=> b!439187 (=> res!194752 e!268278)))

(assert (=> b!439187 (= res!194752 (not ((_ is IntegerValue!2567) (value!28056 (h!9704 tokens!465)))))))

(assert (=> b!439187 (= e!268280 e!268278)))

(declare-fun b!439188 () Bool)

(assert (=> b!439188 (= e!268279 e!268280)))

(declare-fun c!88944 () Bool)

(assert (=> b!439188 (= c!88944 ((_ is IntegerValue!2566) (value!28056 (h!9704 tokens!465))))))

(assert (= (and d!167436 c!88943) b!439185))

(assert (= (and d!167436 (not c!88943)) b!439188))

(assert (= (and b!439188 c!88944) b!439186))

(assert (= (and b!439188 (not c!88944)) b!439187))

(assert (= (and b!439187 (not res!194752)) b!439184))

(declare-fun m!691469 () Bool)

(assert (=> b!439184 m!691469))

(declare-fun m!691471 () Bool)

(assert (=> b!439185 m!691471))

(declare-fun m!691473 () Bool)

(assert (=> b!439186 m!691473))

(assert (=> b!438052 d!167436))

(declare-fun b!439191 () Bool)

(declare-fun e!268283 () Bool)

(assert (=> b!439191 (= e!268283 true)))

(declare-fun b!439190 () Bool)

(declare-fun e!268282 () Bool)

(assert (=> b!439190 (= e!268282 e!268283)))

(declare-fun b!439189 () Bool)

(declare-fun e!268281 () Bool)

(assert (=> b!439189 (= e!268281 e!268282)))

(assert (=> b!438066 e!268281))

(assert (= b!439190 b!439191))

(assert (= b!439189 b!439190))

(assert (= (and b!438066 ((_ is Cons!4306) (t!69338 rules!1920))) b!439189))

(assert (=> b!439191 (< (dynLambda!2560 order!3733 (toValue!1640 (transformation!833 (h!9703 (t!69338 rules!1920))))) (dynLambda!2561 order!3735 lambda!12712))))

(assert (=> b!439191 (< (dynLambda!2562 order!3737 (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920))))) (dynLambda!2561 order!3735 lambda!12712))))

(declare-fun e!268286 () Bool)

(assert (=> b!438016 (= tp!124064 e!268286)))

(declare-fun b!439204 () Bool)

(declare-fun tp!124153 () Bool)

(assert (=> b!439204 (= e!268286 tp!124153)))

(declare-fun b!439203 () Bool)

(declare-fun tp!124154 () Bool)

(declare-fun tp!124156 () Bool)

(assert (=> b!439203 (= e!268286 (and tp!124154 tp!124156))))

(declare-fun b!439205 () Bool)

(declare-fun tp!124152 () Bool)

(declare-fun tp!124155 () Bool)

(assert (=> b!439205 (= e!268286 (and tp!124152 tp!124155))))

(declare-fun b!439202 () Bool)

(declare-fun tp_is_empty!1955 () Bool)

(assert (=> b!439202 (= e!268286 tp_is_empty!1955)))

(assert (= (and b!438016 ((_ is ElementMatch!1057) (regex!833 (rule!1508 separatorToken!170)))) b!439202))

(assert (= (and b!438016 ((_ is Concat!1913) (regex!833 (rule!1508 separatorToken!170)))) b!439203))

(assert (= (and b!438016 ((_ is Star!1057) (regex!833 (rule!1508 separatorToken!170)))) b!439204))

(assert (= (and b!438016 ((_ is Union!1057) (regex!833 (rule!1508 separatorToken!170)))) b!439205))

(declare-fun b!439210 () Bool)

(declare-fun e!268289 () Bool)

(declare-fun tp!124159 () Bool)

(assert (=> b!439210 (= e!268289 (and tp_is_empty!1955 tp!124159))))

(assert (=> b!438035 (= tp!124069 e!268289)))

(assert (= (and b!438035 ((_ is Cons!4305) (originalCharacters!876 separatorToken!170))) b!439210))

(declare-fun b!439221 () Bool)

(declare-fun b_free!12253 () Bool)

(declare-fun b_next!12253 () Bool)

(assert (=> b!439221 (= b_free!12253 (not b_next!12253))))

(declare-fun tp!124168 () Bool)

(declare-fun b_and!47317 () Bool)

(assert (=> b!439221 (= tp!124168 b_and!47317)))

(declare-fun b_free!12255 () Bool)

(declare-fun b_next!12255 () Bool)

(assert (=> b!439221 (= b_free!12255 (not b_next!12255))))

(declare-fun t!69415 () Bool)

(declare-fun tb!44193 () Bool)

(assert (=> (and b!439221 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465))))) t!69415) tb!44193))

(declare-fun result!48650 () Bool)

(assert (= result!48650 result!48592))

(assert (=> b!438534 t!69415))

(assert (=> d!167140 t!69415))

(declare-fun tb!44195 () Bool)

(declare-fun t!69417 () Bool)

(assert (=> (and b!439221 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170)))) t!69417) tb!44195))

(declare-fun result!48652 () Bool)

(assert (= result!48652 result!48600))

(assert (=> b!438611 t!69417))

(assert (=> d!167136 t!69417))

(declare-fun tb!44197 () Bool)

(declare-fun t!69419 () Bool)

(assert (=> (and b!439221 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 lt!192655)))) t!69419) tb!44197))

(declare-fun result!48654 () Bool)

(assert (= result!48654 result!48606))

(assert (=> d!167178 t!69419))

(declare-fun tp!124169 () Bool)

(declare-fun b_and!47319 () Bool)

(assert (=> b!439221 (= tp!124169 (and (=> t!69415 result!48650) (=> t!69419 result!48654) (=> t!69417 result!48652) b_and!47319))))

(declare-fun e!268301 () Bool)

(assert (=> b!439221 (= e!268301 (and tp!124168 tp!124169))))

(declare-fun b!439220 () Bool)

(declare-fun e!268300 () Bool)

(declare-fun tp!124170 () Bool)

(assert (=> b!439220 (= e!268300 (and tp!124170 (inv!5366 (tag!1083 (h!9703 (t!69338 rules!1920)))) (inv!5369 (transformation!833 (h!9703 (t!69338 rules!1920)))) e!268301))))

(declare-fun b!439219 () Bool)

(declare-fun e!268298 () Bool)

(declare-fun tp!124171 () Bool)

(assert (=> b!439219 (= e!268298 (and e!268300 tp!124171))))

(assert (=> b!438036 (= tp!124074 e!268298)))

(assert (= b!439220 b!439221))

(assert (= b!439219 b!439220))

(assert (= (and b!438036 ((_ is Cons!4306) (t!69338 rules!1920))) b!439219))

(declare-fun m!691475 () Bool)

(assert (=> b!439220 m!691475))

(declare-fun m!691477 () Bool)

(assert (=> b!439220 m!691477))

(declare-fun e!268302 () Bool)

(assert (=> b!438043 (= tp!124071 e!268302)))

(declare-fun b!439224 () Bool)

(declare-fun tp!124173 () Bool)

(assert (=> b!439224 (= e!268302 tp!124173)))

(declare-fun b!439223 () Bool)

(declare-fun tp!124174 () Bool)

(declare-fun tp!124176 () Bool)

(assert (=> b!439223 (= e!268302 (and tp!124174 tp!124176))))

(declare-fun b!439225 () Bool)

(declare-fun tp!124172 () Bool)

(declare-fun tp!124175 () Bool)

(assert (=> b!439225 (= e!268302 (and tp!124172 tp!124175))))

(declare-fun b!439222 () Bool)

(assert (=> b!439222 (= e!268302 tp_is_empty!1955)))

(assert (= (and b!438043 ((_ is ElementMatch!1057) (regex!833 (rule!1508 (h!9704 tokens!465))))) b!439222))

(assert (= (and b!438043 ((_ is Concat!1913) (regex!833 (rule!1508 (h!9704 tokens!465))))) b!439223))

(assert (= (and b!438043 ((_ is Star!1057) (regex!833 (rule!1508 (h!9704 tokens!465))))) b!439224))

(assert (= (and b!438043 ((_ is Union!1057) (regex!833 (rule!1508 (h!9704 tokens!465))))) b!439225))

(declare-fun e!268303 () Bool)

(assert (=> b!438050 (= tp!124068 e!268303)))

(declare-fun b!439228 () Bool)

(declare-fun tp!124178 () Bool)

(assert (=> b!439228 (= e!268303 tp!124178)))

(declare-fun b!439227 () Bool)

(declare-fun tp!124179 () Bool)

(declare-fun tp!124181 () Bool)

(assert (=> b!439227 (= e!268303 (and tp!124179 tp!124181))))

(declare-fun b!439229 () Bool)

(declare-fun tp!124177 () Bool)

(declare-fun tp!124180 () Bool)

(assert (=> b!439229 (= e!268303 (and tp!124177 tp!124180))))

(declare-fun b!439226 () Bool)

(assert (=> b!439226 (= e!268303 tp_is_empty!1955)))

(assert (= (and b!438050 ((_ is ElementMatch!1057) (regex!833 (h!9703 rules!1920)))) b!439226))

(assert (= (and b!438050 ((_ is Concat!1913) (regex!833 (h!9703 rules!1920)))) b!439227))

(assert (= (and b!438050 ((_ is Star!1057) (regex!833 (h!9703 rules!1920)))) b!439228))

(assert (= (and b!438050 ((_ is Union!1057) (regex!833 (h!9703 rules!1920)))) b!439229))

(declare-fun b!439243 () Bool)

(declare-fun b_free!12257 () Bool)

(declare-fun b_next!12257 () Bool)

(assert (=> b!439243 (= b_free!12257 (not b_next!12257))))

(declare-fun tp!124195 () Bool)

(declare-fun b_and!47321 () Bool)

(assert (=> b!439243 (= tp!124195 b_and!47321)))

(declare-fun b_free!12259 () Bool)

(declare-fun b_next!12259 () Bool)

(assert (=> b!439243 (= b_free!12259 (not b_next!12259))))

(declare-fun t!69421 () Bool)

(declare-fun tb!44199 () Bool)

(assert (=> (and b!439243 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465))))) t!69421) tb!44199))

(declare-fun result!48658 () Bool)

(assert (= result!48658 result!48592))

(assert (=> b!438534 t!69421))

(assert (=> d!167140 t!69421))

(declare-fun t!69423 () Bool)

(declare-fun tb!44201 () Bool)

(assert (=> (and b!439243 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170)))) t!69423) tb!44201))

(declare-fun result!48660 () Bool)

(assert (= result!48660 result!48600))

(assert (=> b!438611 t!69423))

(assert (=> d!167136 t!69423))

(declare-fun t!69425 () Bool)

(declare-fun tb!44203 () Bool)

(assert (=> (and b!439243 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 lt!192655)))) t!69425) tb!44203))

(declare-fun result!48662 () Bool)

(assert (= result!48662 result!48606))

(assert (=> d!167178 t!69425))

(declare-fun b_and!47323 () Bool)

(declare-fun tp!124192 () Bool)

(assert (=> b!439243 (= tp!124192 (and (=> t!69421 result!48658) (=> t!69425 result!48662) (=> t!69423 result!48660) b_and!47323))))

(declare-fun e!268316 () Bool)

(assert (=> b!439243 (= e!268316 (and tp!124195 tp!124192))))

(declare-fun e!268321 () Bool)

(declare-fun tp!124196 () Bool)

(declare-fun b!439241 () Bool)

(declare-fun e!268317 () Bool)

(assert (=> b!439241 (= e!268317 (and (inv!21 (value!28056 (h!9704 (t!69339 tokens!465)))) e!268321 tp!124196))))

(declare-fun tp!124194 () Bool)

(declare-fun b!439242 () Bool)

(assert (=> b!439242 (= e!268321 (and tp!124194 (inv!5366 (tag!1083 (rule!1508 (h!9704 (t!69339 tokens!465))))) (inv!5369 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) e!268316))))

(declare-fun tp!124193 () Bool)

(declare-fun e!268318 () Bool)

(declare-fun b!439240 () Bool)

(assert (=> b!439240 (= e!268318 (and (inv!5370 (h!9704 (t!69339 tokens!465))) e!268317 tp!124193))))

(assert (=> b!438041 (= tp!124075 e!268318)))

(assert (= b!439242 b!439243))

(assert (= b!439241 b!439242))

(assert (= b!439240 b!439241))

(assert (= (and b!438041 ((_ is Cons!4307) (t!69339 tokens!465))) b!439240))

(declare-fun m!691479 () Bool)

(assert (=> b!439241 m!691479))

(declare-fun m!691481 () Bool)

(assert (=> b!439242 m!691481))

(declare-fun m!691483 () Bool)

(assert (=> b!439242 m!691483))

(declare-fun m!691485 () Bool)

(assert (=> b!439240 m!691485))

(declare-fun b!439244 () Bool)

(declare-fun e!268322 () Bool)

(declare-fun tp!124197 () Bool)

(assert (=> b!439244 (= e!268322 (and tp_is_empty!1955 tp!124197))))

(assert (=> b!438052 (= tp!124065 e!268322)))

(assert (= (and b!438052 ((_ is Cons!4305) (originalCharacters!876 (h!9704 tokens!465)))) b!439244))

(declare-fun b_lambda!18145 () Bool)

(assert (= b_lambda!18109 (or (and b!438017 b_free!12243) (and b!438006 b_free!12235 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) (and b!439221 b_free!12255 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) (and b!438057 b_free!12239 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) (and b!439243 b_free!12259 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) b_lambda!18145)))

(declare-fun b_lambda!18147 () Bool)

(assert (= b_lambda!18113 (or (and b!438017 b_free!12243) (and b!438006 b_free!12235 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) (and b!439221 b_free!12255 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) (and b!438057 b_free!12239 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) (and b!439243 b_free!12259 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))))) b_lambda!18147)))

(declare-fun b_lambda!18149 () Bool)

(assert (= b_lambda!18117 (or b!438047 b_lambda!18149)))

(declare-fun bs!54234 () Bool)

(declare-fun d!167438 () Bool)

(assert (= bs!54234 (and d!167438 b!438047)))

(assert (=> bs!54234 (= (dynLambda!2563 lambda!12712 lt!192655) (rulesProduceIndividualToken!468 thiss!17480 rules!1920 lt!192655))))

(assert (=> bs!54234 m!689505))

(assert (=> d!167196 d!167438))

(declare-fun b_lambda!18151 () Bool)

(assert (= b_lambda!18107 (or (and b!438006 b_free!12235 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) (and b!438017 b_free!12243 (= (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) (and b!438057 b_free!12239) (and b!439221 b_free!12255 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) (and b!439243 b_free!12259 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) b_lambda!18151)))

(declare-fun b_lambda!18153 () Bool)

(assert (= b_lambda!18111 (or (and b!438006 b_free!12235 (= (toChars!1499 (transformation!833 (h!9703 rules!1920))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) (and b!438017 b_free!12243 (= (toChars!1499 (transformation!833 (rule!1508 separatorToken!170))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) (and b!438057 b_free!12239) (and b!439221 b_free!12255 (= (toChars!1499 (transformation!833 (h!9703 (t!69338 rules!1920)))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) (and b!439243 b_free!12259 (= (toChars!1499 (transformation!833 (rule!1508 (h!9704 (t!69339 tokens!465))))) (toChars!1499 (transformation!833 (rule!1508 (h!9704 tokens!465)))))) b_lambda!18153)))

(declare-fun b_lambda!18155 () Bool)

(assert (= b_lambda!18143 (or b!438047 b_lambda!18155)))

(declare-fun bs!54235 () Bool)

(declare-fun d!167440 () Bool)

(assert (= bs!54235 (and d!167440 b!438047)))

(assert (=> bs!54235 (= (dynLambda!2563 lambda!12712 (h!9704 tokens!465)) (rulesProduceIndividualToken!468 thiss!17480 rules!1920 (h!9704 tokens!465)))))

(assert (=> bs!54235 m!689355))

(assert (=> d!167396 d!167440))

(declare-fun b_lambda!18157 () Bool)

(assert (= b_lambda!18099 (or b!438039 b_lambda!18157)))

(declare-fun bs!54236 () Bool)

(declare-fun d!167442 () Bool)

(assert (= bs!54236 (and d!167442 b!438039)))

(assert (=> bs!54236 (= (dynLambda!2563 lambda!12711 (h!9704 tokens!465)) (not (isSeparator!833 (rule!1508 (h!9704 tokens!465)))))))

(assert (=> b!438120 d!167442))

(check-sat (not bm!30151) (not b!438705) (not b!439185) (not b!439128) (not tb!44151) (not b!439126) (not bm!30179) (not d!167126) (not b!438554) (not b_next!12233) (not b!439025) (not b_lambda!18157) (not b!439140) (not b!438585) (not b!438567) (not b_lambda!18151) (not d!166978) (not b!438640) (not b!438535) (not bm!30211) (not bs!54235) (not b!438435) b_and!47323 (not b!439166) (not b!439205) (not b!439133) (not b!438804) (not b!439241) b_and!47245 (not b!439151) (not b!438369) (not d!167048) (not b!439005) (not bm!30127) (not b!439178) (not d!167078) (not b!438805) (not bm!30126) b_and!47281 (not d!166982) (not b!438433) (not b!438788) (not d!167164) (not b!438437) (not d!167256) (not b!438474) (not b!438685) (not b!438563) (not b!438562) (not d!167014) (not b!438577) (not bm!30180) (not b!439184) (not d!167194) (not b_lambda!18145) (not d!167408) (not b!439223) (not b!438812) (not b!438611) (not b!438744) (not bm!30125) (not d!167398) (not b!438561) (not b!439155) (not b!439224) (not b!439181) (not b_next!12243) (not b!438695) (not b!438253) (not tb!44163) (not b!438584) (not d!167378) (not b_next!12237) (not b!439173) (not d!167248) (not d!167246) (not d!167170) (not bm!30169) (not b!439149) (not b!438564) (not d!167066) (not d!167052) (not b!438534) (not b!438559) (not b!438555) (not b!438813) (not b!439240) (not d!167018) (not d!167198) (not b_lambda!18147) (not b!438436) (not b!438121) (not b!438786) (not b!439153) (not d!167364) (not b!438793) (not b!438430) (not d!167426) (not d!167268) (not bm!30155) (not d!167370) (not b!438551) (not b_next!12239) (not b!439020) (not b!439148) (not b!438803) (not b!438614) (not b!439160) (not b!438434) (not b!438710) b_and!47241 (not d!167394) (not b!439132) (not b!439158) (not d!167152) (not b!438582) (not b!438817) (not bs!54234) (not d!167136) (not d!167420) (not d!167146) (not b!438624) (not d!167128) (not b!438251) (not d!167236) (not b!438789) (not b!438810) (not b!439227) (not b!438696) (not b!438811) (not b!438691) (not d!167138) (not b!438475) (not d!167162) (not d!167366) (not b!439004) (not b!438432) (not b!438641) (not d!167196) (not b!438528) (not b!438073) (not b!439229) (not b!438197) (not b!438617) (not d!167272) (not d!167254) (not b_next!12255) (not d!167122) (not b!438103) (not d!167160) (not b!438527) (not b!438795) (not b!438787) (not b!438315) (not b!439141) b_and!47237 (not d!167142) (not b!438697) (not d!167410) (not d!167054) (not bm!30147) (not b!438742) b_and!47321 (not b!439177) (not b!438623) (not d!167028) (not d!167376) (not b!438616) (not b!438586) (not b!438477) (not d!167424) (not d!167178) (not d!167192) (not b!438686) (not b!438196) (not b_next!12235) (not b!438601) (not b!438316) (not bm!30111) (not b!438612) (not d!167120) (not d!167266) (not b_lambda!18115) (not b!438204) (not b!438594) (not b!439129) (not b!438593) (not b!438607) (not b!438352) (not d!167148) (not d!167284) (not b!439156) (not b!439152) (not d!167080) (not d!167172) (not b!438195) (not b!439203) (not b!438104) (not d!167134) (not d!167360) (not bm!30210) (not b!439164) (not d!167416) (not bm!30212) (not b!438740) (not d!167212) (not bm!30162) (not b!438797) (not b!438293) (not b!439183) (not b!439225) (not d!166984) (not b!438609) (not d!167202) (not bm!30181) (not b!438440) (not b!438687) (not b!438784) (not d!167402) (not bm!30154) tp_is_empty!1955 (not b!438608) b_and!47279 (not b!438625) (not d!166990) (not bm!30158) (not b!438571) (not b!438598) (not d!167068) (not b!439167) (not bm!30132) (not b!438250) (not b!438639) (not b!438693) (not b!438431) (not b!438790) (not d!167180) (not bm!30201) (not b!438796) (not d!167020) (not d!167204) (not b!439174) (not b!438479) (not b!439228) (not b!438741) (not b!439210) (not b!438588) (not b!438642) (not b_lambda!18153) (not d!167368) (not b!438294) (not bm!30113) (not b!438785) (not b!438349) (not b!438631) (not bm!30203) (not bm!30153) (not d!167140) b_and!47283 (not d!167168) (not b!439138) (not b!439244) (not d!167166) (not b_next!12241) b_and!47317 (not b!438690) (not d!166980) (not b!438638) (not d!167076) (not b!439220) (not bm!30202) (not b!438102) (not bm!30157) (not b!438692) (not b!439189) (not b!439157) (not b!438471) (not b!439175) (not b!438259) (not b!438291) (not b!438470) (not b!439131) (not b!438550) (not b!438478) (not b!438476) (not b!438529) (not b!438347) (not b_next!12253) b_and!47319 (not b!439204) (not d!167428) (not b!438600) (not b!439242) (not b!438194) (not b!439147) (not b_next!12257) (not d!167112) (not b!438200) (not bm!30163) (not b!439136) (not b_lambda!18155) (not b!439162) (not b!438105) (not d!167114) (not b!438558) (not b!438249) (not b!438581) (not b!438540) (not b!438301) (not tb!44157) (not b!438302) (not b!438314) (not b!439130) (not d!167400) (not d!167432) (not b!438480) (not d!167240) (not b!439011) (not b!439186) (not b!438300) (not d!167082) (not b_next!12259) (not d!167130) (not b!438575) (not b!438578) (not d!166988) (not b!438572) (not b!438694) (not b!439161) (not d!167396) (not d!167132) (not bm!30213) (not b!438205) (not b_lambda!18149) (not b!438258) (not bm!30112) (not d!167270) (not d!167124) (not bm!30159) (not d!167116) (not b!439219) (not d!167406) (not b!439026) (not b!439154) (not b!438481) (not d!167430) (not b!439127))
(check-sat (not b_next!12233) b_and!47323 b_and!47245 b_and!47281 (not b_next!12243) (not b_next!12237) (not b_next!12239) b_and!47241 (not b_next!12255) (not b_next!12235) b_and!47279 b_and!47283 (not b_next!12257) (not b_next!12259) b_and!47237 b_and!47321 (not b_next!12241) b_and!47317 b_and!47319 (not b_next!12253))
