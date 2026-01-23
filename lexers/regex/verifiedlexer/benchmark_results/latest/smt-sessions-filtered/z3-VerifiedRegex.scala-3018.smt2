; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180354 () Bool)

(assert start!180354)

(declare-fun b!1821238 () Bool)

(declare-fun b_free!50559 () Bool)

(declare-fun b_next!51263 () Bool)

(assert (=> b!1821238 (= b_free!50559 (not b_next!51263))))

(declare-fun tp!514819 () Bool)

(declare-fun b_and!141245 () Bool)

(assert (=> b!1821238 (= tp!514819 b_and!141245)))

(declare-fun b_free!50561 () Bool)

(declare-fun b_next!51265 () Bool)

(assert (=> b!1821238 (= b_free!50561 (not b_next!51265))))

(declare-fun tp!514827 () Bool)

(declare-fun b_and!141247 () Bool)

(assert (=> b!1821238 (= tp!514827 b_and!141247)))

(declare-fun b!1821237 () Bool)

(declare-fun b_free!50563 () Bool)

(declare-fun b_next!51267 () Bool)

(assert (=> b!1821237 (= b_free!50563 (not b_next!51267))))

(declare-fun tp!514817 () Bool)

(declare-fun b_and!141249 () Bool)

(assert (=> b!1821237 (= tp!514817 b_and!141249)))

(declare-fun b_free!50565 () Bool)

(declare-fun b_next!51269 () Bool)

(assert (=> b!1821237 (= b_free!50565 (not b_next!51269))))

(declare-fun tp!514825 () Bool)

(declare-fun b_and!141251 () Bool)

(assert (=> b!1821237 (= tp!514825 b_and!141251)))

(declare-fun b!1821227 () Bool)

(declare-fun b_free!50567 () Bool)

(declare-fun b_next!51271 () Bool)

(assert (=> b!1821227 (= b_free!50567 (not b_next!51271))))

(declare-fun tp!514818 () Bool)

(declare-fun b_and!141253 () Bool)

(assert (=> b!1821227 (= tp!514818 b_and!141253)))

(declare-fun b_free!50569 () Bool)

(declare-fun b_next!51273 () Bool)

(assert (=> b!1821227 (= b_free!50569 (not b_next!51273))))

(declare-fun tp!514816 () Bool)

(declare-fun b_and!141255 () Bool)

(assert (=> b!1821227 (= tp!514816 b_and!141255)))

(declare-fun b!1821241 () Bool)

(assert (=> b!1821241 true))

(declare-fun b!1821222 () Bool)

(declare-fun e!1163873 () Bool)

(declare-fun tp_is_empty!8085 () Bool)

(declare-fun tp!514823 () Bool)

(assert (=> b!1821222 (= e!1163873 (and tp_is_empty!8085 tp!514823))))

(declare-fun b!1821223 () Bool)

(declare-fun tp!514828 () Bool)

(declare-datatypes ((List!20028 0))(
  ( (Nil!19958) (Cons!19958 (h!25359 (_ BitVec 16)) (t!169905 List!20028)) )
))
(declare-datatypes ((TokenValue!3687 0))(
  ( (FloatLiteralValue!7374 (text!26254 List!20028)) (TokenValueExt!3686 (__x!12676 Int)) (Broken!18435 (value!112155 List!20028)) (Object!3756) (End!3687) (Def!3687) (Underscore!3687) (Match!3687) (Else!3687) (Error!3687) (Case!3687) (If!3687) (Extends!3687) (Abstract!3687) (Class!3687) (Val!3687) (DelimiterValue!7374 (del!3747 List!20028)) (KeywordValue!3693 (value!112156 List!20028)) (CommentValue!7374 (value!112157 List!20028)) (WhitespaceValue!7374 (value!112158 List!20028)) (IndentationValue!3687 (value!112159 List!20028)) (String!22766) (Int32!3687) (Broken!18436 (value!112160 List!20028)) (Boolean!3688) (Unit!34634) (OperatorValue!3690 (op!3747 List!20028)) (IdentifierValue!7374 (value!112161 List!20028)) (IdentifierValue!7375 (value!112162 List!20028)) (WhitespaceValue!7375 (value!112163 List!20028)) (True!7374) (False!7374) (Broken!18437 (value!112164 List!20028)) (Broken!18438 (value!112165 List!20028)) (True!7375) (RightBrace!3687) (RightBracket!3687) (Colon!3687) (Null!3687) (Comma!3687) (LeftBracket!3687) (False!7375) (LeftBrace!3687) (ImaginaryLiteralValue!3687 (text!26255 List!20028)) (StringLiteralValue!11061 (value!112166 List!20028)) (EOFValue!3687 (value!112167 List!20028)) (IdentValue!3687 (value!112168 List!20028)) (DelimiterValue!7375 (value!112169 List!20028)) (DedentValue!3687 (value!112170 List!20028)) (NewLineValue!3687 (value!112171 List!20028)) (IntegerValue!11061 (value!112172 (_ BitVec 32)) (text!26256 List!20028)) (IntegerValue!11062 (value!112173 Int) (text!26257 List!20028)) (Times!3687) (Or!3687) (Equal!3687) (Minus!3687) (Broken!18439 (value!112174 List!20028)) (And!3687) (Div!3687) (LessEqual!3687) (Mod!3687) (Concat!8612) (Not!3687) (Plus!3687) (SpaceValue!3687 (value!112175 List!20028)) (IntegerValue!11063 (value!112176 Int) (text!26258 List!20028)) (StringLiteralValue!11062 (text!26259 List!20028)) (FloatLiteralValue!7375 (text!26260 List!20028)) (BytesLiteralValue!3687 (value!112177 List!20028)) (CommentValue!7375 (value!112178 List!20028)) (StringLiteralValue!11063 (value!112179 List!20028)) (ErrorTokenValue!3687 (msg!3748 List!20028)) )
))
(declare-datatypes ((C!10024 0))(
  ( (C!10025 (val!5608 Int)) )
))
(declare-datatypes ((List!20029 0))(
  ( (Nil!19959) (Cons!19959 (h!25360 C!10024) (t!169906 List!20029)) )
))
(declare-datatypes ((IArray!13263 0))(
  ( (IArray!13264 (innerList!6689 List!20029)) )
))
(declare-datatypes ((Conc!6629 0))(
  ( (Node!6629 (left!15981 Conc!6629) (right!16311 Conc!6629) (csize!13488 Int) (cheight!6840 Int)) (Leaf!9648 (xs!9505 IArray!13263) (csize!13489 Int)) (Empty!6629) )
))
(declare-datatypes ((BalanceConc!13202 0))(
  ( (BalanceConc!13203 (c!297186 Conc!6629)) )
))
(declare-datatypes ((TokenValueInjection!7034 0))(
  ( (TokenValueInjection!7035 (toValue!5132 Int) (toChars!4991 Int)) )
))
(declare-datatypes ((String!22767 0))(
  ( (String!22768 (value!112180 String)) )
))
(declare-datatypes ((Regex!4925 0))(
  ( (ElementMatch!4925 (c!297187 C!10024)) (Concat!8613 (regOne!10362 Regex!4925) (regTwo!10362 Regex!4925)) (EmptyExpr!4925) (Star!4925 (reg!5254 Regex!4925)) (EmptyLang!4925) (Union!4925 (regOne!10363 Regex!4925) (regTwo!10363 Regex!4925)) )
))
(declare-datatypes ((Rule!6994 0))(
  ( (Rule!6995 (regex!3597 Regex!4925) (tag!4011 String!22767) (isSeparator!3597 Bool) (transformation!3597 TokenValueInjection!7034)) )
))
(declare-datatypes ((List!20030 0))(
  ( (Nil!19960) (Cons!19960 (h!25361 Rule!6994) (t!169907 List!20030)) )
))
(declare-fun rules!4538 () List!20030)

(declare-fun e!1163876 () Bool)

(declare-fun e!1163883 () Bool)

(declare-fun inv!25990 (String!22767) Bool)

(declare-fun inv!25993 (TokenValueInjection!7034) Bool)

(assert (=> b!1821223 (= e!1163876 (and tp!514828 (inv!25990 (tag!4011 (h!25361 rules!4538))) (inv!25993 (transformation!3597 (h!25361 rules!4538))) e!1163883))))

(declare-fun b!1821224 () Bool)

(declare-fun e!1163870 () Bool)

(declare-fun tp!514824 () Bool)

(assert (=> b!1821224 (= e!1163870 (and e!1163876 tp!514824))))

(declare-fun b!1821225 () Bool)

(declare-fun e!1163887 () Bool)

(declare-fun e!1163869 () Bool)

(assert (=> b!1821225 (= e!1163887 (not e!1163869))))

(declare-fun res!819029 () Bool)

(assert (=> b!1821225 (=> res!819029 e!1163869)))

(declare-fun rule!559 () Rule!6994)

(declare-fun lt!707629 () List!20029)

(declare-fun matchR!2390 (Regex!4925 List!20029) Bool)

(assert (=> b!1821225 (= res!819029 (not (matchR!2390 (regex!3597 rule!559) lt!707629)))))

(declare-datatypes ((LexerInterface!3226 0))(
  ( (LexerInterfaceExt!3223 (__x!12677 Int)) (Lexer!3224) )
))
(declare-fun thiss!28068 () LexerInterface!3226)

(declare-fun ruleValid!1089 (LexerInterface!3226 Rule!6994) Bool)

(assert (=> b!1821225 (ruleValid!1089 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34635 0))(
  ( (Unit!34636) )
))
(declare-fun lt!707624 () Unit!34635)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!610 (LexerInterface!3226 Rule!6994 List!20030) Unit!34635)

(assert (=> b!1821225 (= lt!707624 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!610 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1821226 () Bool)

(declare-fun e!1163875 () Bool)

(declare-fun tp!514820 () Bool)

(assert (=> b!1821226 (= e!1163875 (and tp_is_empty!8085 tp!514820))))

(declare-fun e!1163878 () Bool)

(assert (=> b!1821227 (= e!1163878 (and tp!514818 tp!514816))))

(declare-fun b!1821228 () Bool)

(declare-fun e!1163888 () Bool)

(declare-fun e!1163874 () Bool)

(assert (=> b!1821228 (= e!1163888 e!1163874)))

(declare-fun res!819020 () Bool)

(assert (=> b!1821228 (=> res!819020 e!1163874)))

(declare-datatypes ((List!20031 0))(
  ( (Nil!19961) (Cons!19961 (h!25362 Regex!4925) (t!169908 List!20031)) )
))
(declare-fun lt!707634 () List!20031)

(declare-fun contains!3642 (List!20031 Regex!4925) Bool)

(assert (=> b!1821228 (= res!819020 (not (contains!3642 lt!707634 (regex!3597 rule!559))))))

(declare-fun lambda!71309 () Int)

(declare-fun map!4126 (List!20030 Int) List!20031)

(assert (=> b!1821228 (= lt!707634 (map!4126 rules!4538 lambda!71309))))

(declare-fun suffix!1667 () List!20029)

(declare-fun lt!707626 () Unit!34635)

(declare-fun input!3612 () List!20029)

(declare-datatypes ((Token!6748 0))(
  ( (Token!6749 (value!112181 TokenValue!3687) (rule!5727 Rule!6994) (size!15837 Int) (originalCharacters!4405 List!20029)) )
))
(declare-fun token!556 () Token!6748)

(declare-fun lemma!463 (List!20029 Rule!6994 List!20030 List!20029 LexerInterface!3226 Token!6748 List!20030) Unit!34635)

(assert (=> b!1821228 (= lt!707626 (lemma!463 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun tp!514822 () Bool)

(declare-fun b!1821229 () Bool)

(declare-fun e!1163880 () Bool)

(assert (=> b!1821229 (= e!1163880 (and tp!514822 (inv!25990 (tag!4011 (rule!5727 token!556))) (inv!25993 (transformation!3597 (rule!5727 token!556))) e!1163878))))

(declare-fun res!819024 () Bool)

(declare-fun e!1163872 () Bool)

(assert (=> start!180354 (=> (not res!819024) (not e!1163872))))

(get-info :version)

(assert (=> start!180354 (= res!819024 ((_ is Lexer!3224) thiss!28068))))

(assert (=> start!180354 e!1163872))

(assert (=> start!180354 e!1163875))

(assert (=> start!180354 true))

(assert (=> start!180354 e!1163870))

(declare-fun e!1163886 () Bool)

(declare-fun inv!25994 (Token!6748) Bool)

(assert (=> start!180354 (and (inv!25994 token!556) e!1163886)))

(declare-fun e!1163882 () Bool)

(assert (=> start!180354 e!1163882))

(assert (=> start!180354 e!1163873))

(declare-fun b!1821230 () Bool)

(declare-fun res!819022 () Bool)

(assert (=> b!1821230 (=> (not res!819022) (not e!1163872))))

(declare-fun rulesInvariant!2895 (LexerInterface!3226 List!20030) Bool)

(assert (=> b!1821230 (= res!819022 (rulesInvariant!2895 thiss!28068 rules!4538))))

(declare-fun b!1821231 () Bool)

(declare-fun res!819030 () Bool)

(declare-fun e!1163884 () Bool)

(assert (=> b!1821231 (=> (not res!819030) (not e!1163884))))

(assert (=> b!1821231 (= res!819030 (= (rule!5727 token!556) rule!559))))

(declare-fun b!1821232 () Bool)

(declare-fun e!1163877 () Bool)

(assert (=> b!1821232 (= e!1163877 e!1163888)))

(declare-fun res!819027 () Bool)

(assert (=> b!1821232 (=> res!819027 e!1163888)))

(declare-fun lt!707628 () Regex!4925)

(declare-fun lt!707632 () List!20031)

(declare-fun generalisedUnion!452 (List!20031) Regex!4925)

(assert (=> b!1821232 (= res!819027 (not (= lt!707628 (generalisedUnion!452 lt!707632))))))

(declare-fun rulesRegex!929 (LexerInterface!3226 List!20030) Regex!4925)

(assert (=> b!1821232 (= lt!707628 (rulesRegex!929 thiss!28068 rules!4538))))

(assert (=> b!1821232 (= lt!707632 (map!4126 rules!4538 lambda!71309))))

(declare-fun lt!707631 () Unit!34635)

(declare-fun lemma!464 (List!20029 Rule!6994 List!20030 List!20029 LexerInterface!3226 Token!6748 List!20030) Unit!34635)

(assert (=> b!1821232 (= lt!707631 (lemma!464 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821233 () Bool)

(declare-fun e!1163871 () Bool)

(declare-fun tp!514826 () Bool)

(assert (=> b!1821233 (= e!1163882 (and tp!514826 (inv!25990 (tag!4011 rule!559)) (inv!25993 (transformation!3597 rule!559)) e!1163871))))

(declare-fun b!1821234 () Bool)

(assert (=> b!1821234 (= e!1163869 e!1163877)))

(declare-fun res!819026 () Bool)

(assert (=> b!1821234 (=> res!819026 e!1163877)))

(declare-datatypes ((tuple2!19478 0))(
  ( (tuple2!19479 (_1!11141 Token!6748) (_2!11141 List!20029)) )
))
(declare-datatypes ((Option!4177 0))(
  ( (None!4176) (Some!4176 (v!25717 tuple2!19478)) )
))
(declare-fun lt!707623 () Option!4177)

(declare-fun lt!707627 () Option!4177)

(assert (=> b!1821234 (= res!819026 (not (= lt!707623 lt!707627)))))

(declare-fun lt!707630 () Int)

(declare-fun lt!707625 () TokenValue!3687)

(assert (=> b!1821234 (= lt!707623 (Some!4176 (tuple2!19479 (Token!6749 lt!707625 rule!559 lt!707630 lt!707629) suffix!1667)))))

(declare-fun maxPrefixOneRule!1139 (LexerInterface!3226 Rule!6994 List!20029) Option!4177)

(assert (=> b!1821234 (= lt!707623 (maxPrefixOneRule!1139 thiss!28068 rule!559 input!3612))))

(declare-fun size!15838 (List!20029) Int)

(assert (=> b!1821234 (= lt!707630 (size!15838 lt!707629))))

(declare-fun apply!5389 (TokenValueInjection!7034 BalanceConc!13202) TokenValue!3687)

(declare-fun seqFromList!2558 (List!20029) BalanceConc!13202)

(assert (=> b!1821234 (= lt!707625 (apply!5389 (transformation!3597 rule!559) (seqFromList!2558 lt!707629)))))

(declare-fun lt!707633 () Unit!34635)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!515 (LexerInterface!3226 List!20030 List!20029 List!20029 List!20029 Rule!6994) Unit!34635)

(assert (=> b!1821234 (= lt!707633 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!515 thiss!28068 rules!4538 lt!707629 input!3612 suffix!1667 rule!559))))

(declare-fun b!1821235 () Bool)

(assert (=> b!1821235 (= e!1163884 e!1163887)))

(declare-fun res!819023 () Bool)

(assert (=> b!1821235 (=> (not res!819023) (not e!1163887))))

(declare-fun ++!5421 (List!20029 List!20029) List!20029)

(assert (=> b!1821235 (= res!819023 (= input!3612 (++!5421 lt!707629 suffix!1667)))))

(declare-fun list!8113 (BalanceConc!13202) List!20029)

(declare-fun charsOf!2240 (Token!6748) BalanceConc!13202)

(assert (=> b!1821235 (= lt!707629 (list!8113 (charsOf!2240 token!556)))))

(declare-fun b!1821236 () Bool)

(assert (=> b!1821236 (= e!1163872 e!1163884)))

(declare-fun res!819021 () Bool)

(assert (=> b!1821236 (=> (not res!819021) (not e!1163884))))

(declare-fun maxPrefix!1774 (LexerInterface!3226 List!20030 List!20029) Option!4177)

(assert (=> b!1821236 (= res!819021 (= (maxPrefix!1774 thiss!28068 rules!4538 input!3612) lt!707627))))

(assert (=> b!1821236 (= lt!707627 (Some!4176 (tuple2!19479 token!556 suffix!1667)))))

(assert (=> b!1821237 (= e!1163871 (and tp!514817 tp!514825))))

(assert (=> b!1821238 (= e!1163883 (and tp!514819 tp!514827))))

(declare-fun b!1821239 () Bool)

(declare-fun res!819028 () Bool)

(assert (=> b!1821239 (=> (not res!819028) (not e!1163872))))

(declare-fun isEmpty!12611 (List!20030) Bool)

(assert (=> b!1821239 (= res!819028 (not (isEmpty!12611 rules!4538)))))

(declare-fun b!1821240 () Bool)

(declare-fun res!819025 () Bool)

(assert (=> b!1821240 (=> (not res!819025) (not e!1163872))))

(declare-fun contains!3643 (List!20030 Rule!6994) Bool)

(assert (=> b!1821240 (= res!819025 (contains!3643 rules!4538 rule!559))))

(assert (=> b!1821241 (= e!1163874 true)))

(declare-fun lambda!71310 () Int)

(declare-fun exists!627 (List!20031 Int) Bool)

(assert (=> b!1821241 (= (matchR!2390 lt!707628 lt!707629) (exists!627 lt!707634 lambda!71310))))

(declare-fun lt!707622 () Unit!34635)

(declare-fun matchRGenUnionSpec!212 (Regex!4925 List!20031 List!20029) Unit!34635)

(assert (=> b!1821241 (= lt!707622 (matchRGenUnionSpec!212 lt!707628 lt!707634 lt!707629))))

(declare-fun tp!514821 () Bool)

(declare-fun b!1821242 () Bool)

(declare-fun inv!21 (TokenValue!3687) Bool)

(assert (=> b!1821242 (= e!1163886 (and (inv!21 (value!112181 token!556)) e!1163880 tp!514821))))

(assert (= (and start!180354 res!819024) b!1821239))

(assert (= (and b!1821239 res!819028) b!1821230))

(assert (= (and b!1821230 res!819022) b!1821240))

(assert (= (and b!1821240 res!819025) b!1821236))

(assert (= (and b!1821236 res!819021) b!1821231))

(assert (= (and b!1821231 res!819030) b!1821235))

(assert (= (and b!1821235 res!819023) b!1821225))

(assert (= (and b!1821225 (not res!819029)) b!1821234))

(assert (= (and b!1821234 (not res!819026)) b!1821232))

(assert (= (and b!1821232 (not res!819027)) b!1821228))

(assert (= (and b!1821228 (not res!819020)) b!1821241))

(assert (= (and start!180354 ((_ is Cons!19959) suffix!1667)) b!1821226))

(assert (= b!1821223 b!1821238))

(assert (= b!1821224 b!1821223))

(assert (= (and start!180354 ((_ is Cons!19960) rules!4538)) b!1821224))

(assert (= b!1821229 b!1821227))

(assert (= b!1821242 b!1821229))

(assert (= start!180354 b!1821242))

(assert (= b!1821233 b!1821237))

(assert (= start!180354 b!1821233))

(assert (= (and start!180354 ((_ is Cons!19959) input!3612)) b!1821222))

(declare-fun m!2250085 () Bool)

(assert (=> b!1821228 m!2250085))

(declare-fun m!2250087 () Bool)

(assert (=> b!1821228 m!2250087))

(declare-fun m!2250089 () Bool)

(assert (=> b!1821228 m!2250089))

(declare-fun m!2250091 () Bool)

(assert (=> b!1821223 m!2250091))

(declare-fun m!2250093 () Bool)

(assert (=> b!1821223 m!2250093))

(declare-fun m!2250095 () Bool)

(assert (=> b!1821236 m!2250095))

(declare-fun m!2250097 () Bool)

(assert (=> b!1821225 m!2250097))

(declare-fun m!2250099 () Bool)

(assert (=> b!1821225 m!2250099))

(declare-fun m!2250101 () Bool)

(assert (=> b!1821225 m!2250101))

(declare-fun m!2250103 () Bool)

(assert (=> b!1821229 m!2250103))

(declare-fun m!2250105 () Bool)

(assert (=> b!1821229 m!2250105))

(declare-fun m!2250107 () Bool)

(assert (=> start!180354 m!2250107))

(declare-fun m!2250109 () Bool)

(assert (=> b!1821240 m!2250109))

(declare-fun m!2250111 () Bool)

(assert (=> b!1821239 m!2250111))

(declare-fun m!2250113 () Bool)

(assert (=> b!1821242 m!2250113))

(declare-fun m!2250115 () Bool)

(assert (=> b!1821234 m!2250115))

(declare-fun m!2250117 () Bool)

(assert (=> b!1821234 m!2250117))

(declare-fun m!2250119 () Bool)

(assert (=> b!1821234 m!2250119))

(declare-fun m!2250121 () Bool)

(assert (=> b!1821234 m!2250121))

(assert (=> b!1821234 m!2250117))

(declare-fun m!2250123 () Bool)

(assert (=> b!1821234 m!2250123))

(declare-fun m!2250125 () Bool)

(assert (=> b!1821235 m!2250125))

(declare-fun m!2250127 () Bool)

(assert (=> b!1821235 m!2250127))

(assert (=> b!1821235 m!2250127))

(declare-fun m!2250129 () Bool)

(assert (=> b!1821235 m!2250129))

(declare-fun m!2250131 () Bool)

(assert (=> b!1821232 m!2250131))

(declare-fun m!2250133 () Bool)

(assert (=> b!1821232 m!2250133))

(assert (=> b!1821232 m!2250087))

(declare-fun m!2250135 () Bool)

(assert (=> b!1821232 m!2250135))

(declare-fun m!2250137 () Bool)

(assert (=> b!1821241 m!2250137))

(declare-fun m!2250139 () Bool)

(assert (=> b!1821241 m!2250139))

(declare-fun m!2250141 () Bool)

(assert (=> b!1821241 m!2250141))

(declare-fun m!2250143 () Bool)

(assert (=> b!1821233 m!2250143))

(declare-fun m!2250145 () Bool)

(assert (=> b!1821233 m!2250145))

(declare-fun m!2250147 () Bool)

(assert (=> b!1821230 m!2250147))

(check-sat (not b!1821235) (not b!1821233) (not b!1821234) (not b!1821222) (not b!1821239) (not b!1821223) b_and!141247 b_and!141245 (not start!180354) b_and!141253 (not b_next!51273) b_and!141255 (not b!1821236) (not b!1821225) (not b!1821232) (not b!1821242) (not b!1821241) (not b!1821228) (not b!1821224) (not b_next!51267) (not b_next!51269) (not b!1821226) (not b!1821229) tp_is_empty!8085 b_and!141249 (not b_next!51271) b_and!141251 (not b_next!51263) (not b!1821230) (not b!1821240) (not b_next!51265))
(check-sat (not b_next!51267) (not b_next!51269) b_and!141247 b_and!141245 b_and!141253 (not b_next!51265) (not b_next!51273) b_and!141255 b_and!141249 (not b_next!51271) b_and!141251 (not b_next!51263))
