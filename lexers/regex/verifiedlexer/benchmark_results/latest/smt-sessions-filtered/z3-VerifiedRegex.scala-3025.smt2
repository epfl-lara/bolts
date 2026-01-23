; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180822 () Bool)

(assert start!180822)

(declare-fun b!1824632 () Bool)

(declare-fun b_free!50759 () Bool)

(declare-fun b_next!51463 () Bool)

(assert (=> b!1824632 (= b_free!50759 (not b_next!51463))))

(declare-fun tp!515895 () Bool)

(declare-fun b_and!141665 () Bool)

(assert (=> b!1824632 (= tp!515895 b_and!141665)))

(declare-fun b_free!50761 () Bool)

(declare-fun b_next!51465 () Bool)

(assert (=> b!1824632 (= b_free!50761 (not b_next!51465))))

(declare-fun tp!515890 () Bool)

(declare-fun b_and!141667 () Bool)

(assert (=> b!1824632 (= tp!515890 b_and!141667)))

(declare-fun b!1824635 () Bool)

(declare-fun b_free!50763 () Bool)

(declare-fun b_next!51467 () Bool)

(assert (=> b!1824635 (= b_free!50763 (not b_next!51467))))

(declare-fun tp!515897 () Bool)

(declare-fun b_and!141669 () Bool)

(assert (=> b!1824635 (= tp!515897 b_and!141669)))

(declare-fun b_free!50765 () Bool)

(declare-fun b_next!51469 () Bool)

(assert (=> b!1824635 (= b_free!50765 (not b_next!51469))))

(declare-fun tp!515901 () Bool)

(declare-fun b_and!141671 () Bool)

(assert (=> b!1824635 (= tp!515901 b_and!141671)))

(declare-fun b!1824638 () Bool)

(declare-fun b_free!50767 () Bool)

(declare-fun b_next!51471 () Bool)

(assert (=> b!1824638 (= b_free!50767 (not b_next!51471))))

(declare-fun tp!515900 () Bool)

(declare-fun b_and!141673 () Bool)

(assert (=> b!1824638 (= tp!515900 b_and!141673)))

(declare-fun b_free!50769 () Bool)

(declare-fun b_next!51473 () Bool)

(assert (=> b!1824638 (= b_free!50769 (not b_next!51473))))

(declare-fun tp!515896 () Bool)

(declare-fun b_and!141675 () Bool)

(assert (=> b!1824638 (= tp!515896 b_and!141675)))

(declare-fun b!1824626 () Bool)

(declare-fun res!820554 () Bool)

(declare-fun e!1166166 () Bool)

(assert (=> b!1824626 (=> (not res!820554) (not e!1166166))))

(declare-datatypes ((List!20088 0))(
  ( (Nil!20018) (Cons!20018 (h!25419 (_ BitVec 16)) (t!170191 List!20088)) )
))
(declare-datatypes ((TokenValue!3701 0))(
  ( (FloatLiteralValue!7402 (text!26352 List!20088)) (TokenValueExt!3700 (__x!12704 Int)) (Broken!18505 (value!112554 List!20088)) (Object!3770) (End!3701) (Def!3701) (Underscore!3701) (Match!3701) (Else!3701) (Error!3701) (Case!3701) (If!3701) (Extends!3701) (Abstract!3701) (Class!3701) (Val!3701) (DelimiterValue!7402 (del!3761 List!20088)) (KeywordValue!3707 (value!112555 List!20088)) (CommentValue!7402 (value!112556 List!20088)) (WhitespaceValue!7402 (value!112557 List!20088)) (IndentationValue!3701 (value!112558 List!20088)) (String!22836) (Int32!3701) (Broken!18506 (value!112559 List!20088)) (Boolean!3702) (Unit!34694) (OperatorValue!3704 (op!3761 List!20088)) (IdentifierValue!7402 (value!112560 List!20088)) (IdentifierValue!7403 (value!112561 List!20088)) (WhitespaceValue!7403 (value!112562 List!20088)) (True!7402) (False!7402) (Broken!18507 (value!112563 List!20088)) (Broken!18508 (value!112564 List!20088)) (True!7403) (RightBrace!3701) (RightBracket!3701) (Colon!3701) (Null!3701) (Comma!3701) (LeftBracket!3701) (False!7403) (LeftBrace!3701) (ImaginaryLiteralValue!3701 (text!26353 List!20088)) (StringLiteralValue!11103 (value!112565 List!20088)) (EOFValue!3701 (value!112566 List!20088)) (IdentValue!3701 (value!112567 List!20088)) (DelimiterValue!7403 (value!112568 List!20088)) (DedentValue!3701 (value!112569 List!20088)) (NewLineValue!3701 (value!112570 List!20088)) (IntegerValue!11103 (value!112571 (_ BitVec 32)) (text!26354 List!20088)) (IntegerValue!11104 (value!112572 Int) (text!26355 List!20088)) (Times!3701) (Or!3701) (Equal!3701) (Minus!3701) (Broken!18509 (value!112573 List!20088)) (And!3701) (Div!3701) (LessEqual!3701) (Mod!3701) (Concat!8640) (Not!3701) (Plus!3701) (SpaceValue!3701 (value!112574 List!20088)) (IntegerValue!11105 (value!112575 Int) (text!26356 List!20088)) (StringLiteralValue!11104 (text!26357 List!20088)) (FloatLiteralValue!7403 (text!26358 List!20088)) (BytesLiteralValue!3701 (value!112576 List!20088)) (CommentValue!7403 (value!112577 List!20088)) (StringLiteralValue!11105 (value!112578 List!20088)) (ErrorTokenValue!3701 (msg!3762 List!20088)) )
))
(declare-datatypes ((C!10052 0))(
  ( (C!10053 (val!5622 Int)) )
))
(declare-datatypes ((List!20089 0))(
  ( (Nil!20019) (Cons!20019 (h!25420 C!10052) (t!170192 List!20089)) )
))
(declare-datatypes ((IArray!13291 0))(
  ( (IArray!13292 (innerList!6703 List!20089)) )
))
(declare-datatypes ((Conc!6643 0))(
  ( (Node!6643 (left!16026 Conc!6643) (right!16356 Conc!6643) (csize!13516 Int) (cheight!6854 Int)) (Leaf!9669 (xs!9519 IArray!13291) (csize!13517 Int)) (Empty!6643) )
))
(declare-datatypes ((BalanceConc!13230 0))(
  ( (BalanceConc!13231 (c!297686 Conc!6643)) )
))
(declare-datatypes ((TokenValueInjection!7062 0))(
  ( (TokenValueInjection!7063 (toValue!5150 Int) (toChars!5009 Int)) )
))
(declare-datatypes ((Regex!4939 0))(
  ( (ElementMatch!4939 (c!297687 C!10052)) (Concat!8641 (regOne!10390 Regex!4939) (regTwo!10390 Regex!4939)) (EmptyExpr!4939) (Star!4939 (reg!5268 Regex!4939)) (EmptyLang!4939) (Union!4939 (regOne!10391 Regex!4939) (regTwo!10391 Regex!4939)) )
))
(declare-datatypes ((String!22837 0))(
  ( (String!22838 (value!112579 String)) )
))
(declare-datatypes ((Rule!7022 0))(
  ( (Rule!7023 (regex!3611 Regex!4939) (tag!4025 String!22837) (isSeparator!3611 Bool) (transformation!3611 TokenValueInjection!7062)) )
))
(declare-datatypes ((List!20090 0))(
  ( (Nil!20020) (Cons!20020 (h!25421 Rule!7022) (t!170193 List!20090)) )
))
(declare-fun rules!4538 () List!20090)

(declare-fun rule!559 () Rule!7022)

(declare-fun contains!3669 (List!20090 Rule!7022) Bool)

(assert (=> b!1824626 (= res!820554 (contains!3669 rules!4538 rule!559))))

(declare-fun b!1824627 () Bool)

(declare-fun e!1166168 () Bool)

(declare-fun e!1166154 () Bool)

(declare-fun tp!515891 () Bool)

(assert (=> b!1824627 (= e!1166168 (and e!1166154 tp!515891))))

(declare-datatypes ((LexerInterface!3240 0))(
  ( (LexerInterfaceExt!3237 (__x!12705 Int)) (Lexer!3238) )
))
(declare-fun thiss!28068 () LexerInterface!3240)

(declare-fun b!1824628 () Bool)

(declare-fun lambda!71560 () Int)

(declare-fun e!1166164 () Bool)

(declare-fun rulesRegex!941 (LexerInterface!3240 List!20090) Regex!4939)

(declare-datatypes ((List!20091 0))(
  ( (Nil!20021) (Cons!20021 (h!25422 Regex!4939) (t!170194 List!20091)) )
))
(declare-fun generalisedUnion!464 (List!20091) Regex!4939)

(declare-fun map!4145 (List!20090 Int) List!20091)

(assert (=> b!1824628 (= e!1166164 (= (rulesRegex!941 thiss!28068 rules!4538) (generalisedUnion!464 (map!4145 rules!4538 lambda!71560))))))

(declare-fun suffix!1667 () List!20089)

(declare-datatypes ((Token!6776 0))(
  ( (Token!6777 (value!112580 TokenValue!3701) (rule!5755 Rule!7022) (size!15881 Int) (originalCharacters!4419 List!20089)) )
))
(declare-fun token!556 () Token!6776)

(declare-fun input!3612 () List!20089)

(declare-datatypes ((Unit!34695 0))(
  ( (Unit!34696) )
))
(declare-fun lt!708971 () Unit!34695)

(declare-fun lemma!490 (List!20089 Rule!7022 List!20090 List!20089 LexerInterface!3240 Token!6776 List!20090) Unit!34695)

(assert (=> b!1824628 (= lt!708971 (lemma!490 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1824629 () Bool)

(declare-fun res!820550 () Bool)

(assert (=> b!1824629 (=> (not res!820550) (not e!1166166))))

(declare-fun rulesInvariant!2909 (LexerInterface!3240 List!20090) Bool)

(assert (=> b!1824629 (= res!820550 (rulesInvariant!2909 thiss!28068 rules!4538))))

(declare-fun b!1824630 () Bool)

(declare-fun e!1166156 () Bool)

(declare-fun tp_is_empty!8113 () Bool)

(declare-fun tp!515894 () Bool)

(assert (=> b!1824630 (= e!1166156 (and tp_is_empty!8113 tp!515894))))

(declare-fun b!1824631 () Bool)

(declare-fun res!820553 () Bool)

(declare-fun e!1166169 () Bool)

(assert (=> b!1824631 (=> (not res!820553) (not e!1166169))))

(assert (=> b!1824631 (= res!820553 (= (rule!5755 token!556) rule!559))))

(declare-fun e!1166158 () Bool)

(assert (=> b!1824632 (= e!1166158 (and tp!515895 tp!515890))))

(declare-fun b!1824633 () Bool)

(assert (=> b!1824633 (= e!1166166 e!1166169)))

(declare-fun res!820552 () Bool)

(assert (=> b!1824633 (=> (not res!820552) (not e!1166169))))

(declare-datatypes ((tuple2!19518 0))(
  ( (tuple2!19519 (_1!11161 Token!6776) (_2!11161 List!20089)) )
))
(declare-datatypes ((Option!4191 0))(
  ( (None!4190) (Some!4190 (v!25741 tuple2!19518)) )
))
(declare-fun lt!708976 () Option!4191)

(declare-fun maxPrefix!1788 (LexerInterface!3240 List!20090 List!20089) Option!4191)

(assert (=> b!1824633 (= res!820552 (= (maxPrefix!1788 thiss!28068 rules!4538 input!3612) lt!708976))))

(assert (=> b!1824633 (= lt!708976 (Some!4190 (tuple2!19519 token!556 suffix!1667)))))

(declare-fun b!1824634 () Bool)

(declare-fun e!1166171 () Bool)

(declare-fun e!1166160 () Bool)

(assert (=> b!1824634 (= e!1166171 (not e!1166160))))

(declare-fun res!820556 () Bool)

(assert (=> b!1824634 (=> res!820556 e!1166160)))

(declare-fun lt!708970 () List!20089)

(declare-fun matchR!2404 (Regex!4939 List!20089) Bool)

(assert (=> b!1824634 (= res!820556 (not (matchR!2404 (regex!3611 rule!559) lt!708970)))))

(declare-fun ruleValid!1103 (LexerInterface!3240 Rule!7022) Bool)

(assert (=> b!1824634 (ruleValid!1103 thiss!28068 rule!559)))

(declare-fun lt!708969 () Unit!34695)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!624 (LexerInterface!3240 Rule!7022 List!20090) Unit!34695)

(assert (=> b!1824634 (= lt!708969 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!624 thiss!28068 rule!559 rules!4538))))

(declare-fun e!1166155 () Bool)

(assert (=> b!1824635 (= e!1166155 (and tp!515897 tp!515901))))

(declare-fun b!1824636 () Bool)

(assert (=> b!1824636 (= e!1166160 e!1166164)))

(declare-fun res!820557 () Bool)

(assert (=> b!1824636 (=> res!820557 e!1166164)))

(declare-fun lt!708973 () Option!4191)

(assert (=> b!1824636 (= res!820557 (not (= lt!708973 lt!708976)))))

(declare-fun lt!708975 () TokenValue!3701)

(declare-fun lt!708972 () Int)

(assert (=> b!1824636 (= lt!708973 (Some!4190 (tuple2!19519 (Token!6777 lt!708975 rule!559 lt!708972 lt!708970) suffix!1667)))))

(declare-fun maxPrefixOneRule!1153 (LexerInterface!3240 Rule!7022 List!20089) Option!4191)

(assert (=> b!1824636 (= lt!708973 (maxPrefixOneRule!1153 thiss!28068 rule!559 input!3612))))

(declare-fun size!15882 (List!20089) Int)

(assert (=> b!1824636 (= lt!708972 (size!15882 lt!708970))))

(declare-fun apply!5403 (TokenValueInjection!7062 BalanceConc!13230) TokenValue!3701)

(declare-fun seqFromList!2572 (List!20089) BalanceConc!13230)

(assert (=> b!1824636 (= lt!708975 (apply!5403 (transformation!3611 rule!559) (seqFromList!2572 lt!708970)))))

(declare-fun lt!708974 () Unit!34695)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!529 (LexerInterface!3240 List!20090 List!20089 List!20089 List!20089 Rule!7022) Unit!34695)

(assert (=> b!1824636 (= lt!708974 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!529 thiss!28068 rules!4538 lt!708970 input!3612 suffix!1667 rule!559))))

(declare-fun b!1824637 () Bool)

(declare-fun tp!515898 () Bool)

(declare-fun e!1166172 () Bool)

(declare-fun inv!26057 (String!22837) Bool)

(declare-fun inv!26060 (TokenValueInjection!7062) Bool)

(assert (=> b!1824637 (= e!1166172 (and tp!515898 (inv!26057 (tag!4025 rule!559)) (inv!26060 (transformation!3611 rule!559)) e!1166158))))

(declare-fun b!1824639 () Bool)

(assert (=> b!1824639 (= e!1166169 e!1166171)))

(declare-fun res!820551 () Bool)

(assert (=> b!1824639 (=> (not res!820551) (not e!1166171))))

(declare-fun ++!5435 (List!20089 List!20089) List!20089)

(assert (=> b!1824639 (= res!820551 (= input!3612 (++!5435 lt!708970 suffix!1667)))))

(declare-fun list!8135 (BalanceConc!13230) List!20089)

(declare-fun charsOf!2254 (Token!6776) BalanceConc!13230)

(assert (=> b!1824639 (= lt!708970 (list!8135 (charsOf!2254 token!556)))))

(declare-fun b!1824640 () Bool)

(declare-fun res!820555 () Bool)

(assert (=> b!1824640 (=> (not res!820555) (not e!1166166))))

(declare-fun isEmpty!12641 (List!20090) Bool)

(assert (=> b!1824640 (= res!820555 (not (isEmpty!12641 rules!4538)))))

(declare-fun b!1824641 () Bool)

(declare-fun e!1166157 () Bool)

(declare-fun tp!515902 () Bool)

(assert (=> b!1824641 (= e!1166157 (and tp_is_empty!8113 tp!515902))))

(declare-fun b!1824642 () Bool)

(declare-fun tp!515893 () Bool)

(declare-fun e!1166159 () Bool)

(assert (=> b!1824642 (= e!1166154 (and tp!515893 (inv!26057 (tag!4025 (h!25421 rules!4538))) (inv!26060 (transformation!3611 (h!25421 rules!4538))) e!1166159))))

(declare-fun e!1166170 () Bool)

(declare-fun tp!515892 () Bool)

(declare-fun e!1166163 () Bool)

(declare-fun b!1824643 () Bool)

(declare-fun inv!21 (TokenValue!3701) Bool)

(assert (=> b!1824643 (= e!1166163 (and (inv!21 (value!112580 token!556)) e!1166170 tp!515892))))

(declare-fun b!1824644 () Bool)

(declare-fun tp!515899 () Bool)

(assert (=> b!1824644 (= e!1166170 (and tp!515899 (inv!26057 (tag!4025 (rule!5755 token!556))) (inv!26060 (transformation!3611 (rule!5755 token!556))) e!1166155))))

(assert (=> b!1824638 (= e!1166159 (and tp!515900 tp!515896))))

(declare-fun res!820558 () Bool)

(assert (=> start!180822 (=> (not res!820558) (not e!1166166))))

(get-info :version)

(assert (=> start!180822 (= res!820558 ((_ is Lexer!3238) thiss!28068))))

(assert (=> start!180822 e!1166166))

(assert (=> start!180822 e!1166157))

(assert (=> start!180822 true))

(assert (=> start!180822 e!1166168))

(declare-fun inv!26061 (Token!6776) Bool)

(assert (=> start!180822 (and (inv!26061 token!556) e!1166163)))

(assert (=> start!180822 e!1166172))

(assert (=> start!180822 e!1166156))

(assert (= (and start!180822 res!820558) b!1824640))

(assert (= (and b!1824640 res!820555) b!1824629))

(assert (= (and b!1824629 res!820550) b!1824626))

(assert (= (and b!1824626 res!820554) b!1824633))

(assert (= (and b!1824633 res!820552) b!1824631))

(assert (= (and b!1824631 res!820553) b!1824639))

(assert (= (and b!1824639 res!820551) b!1824634))

(assert (= (and b!1824634 (not res!820556)) b!1824636))

(assert (= (and b!1824636 (not res!820557)) b!1824628))

(assert (= (and start!180822 ((_ is Cons!20019) suffix!1667)) b!1824641))

(assert (= b!1824642 b!1824638))

(assert (= b!1824627 b!1824642))

(assert (= (and start!180822 ((_ is Cons!20020) rules!4538)) b!1824627))

(assert (= b!1824644 b!1824635))

(assert (= b!1824643 b!1824644))

(assert (= start!180822 b!1824643))

(assert (= b!1824637 b!1824632))

(assert (= start!180822 b!1824637))

(assert (= (and start!180822 ((_ is Cons!20019) input!3612)) b!1824630))

(declare-fun m!2253151 () Bool)

(assert (=> b!1824633 m!2253151))

(declare-fun m!2253153 () Bool)

(assert (=> b!1824634 m!2253153))

(declare-fun m!2253155 () Bool)

(assert (=> b!1824634 m!2253155))

(declare-fun m!2253157 () Bool)

(assert (=> b!1824634 m!2253157))

(declare-fun m!2253159 () Bool)

(assert (=> b!1824644 m!2253159))

(declare-fun m!2253161 () Bool)

(assert (=> b!1824644 m!2253161))

(declare-fun m!2253163 () Bool)

(assert (=> b!1824643 m!2253163))

(declare-fun m!2253165 () Bool)

(assert (=> b!1824639 m!2253165))

(declare-fun m!2253167 () Bool)

(assert (=> b!1824639 m!2253167))

(assert (=> b!1824639 m!2253167))

(declare-fun m!2253169 () Bool)

(assert (=> b!1824639 m!2253169))

(declare-fun m!2253171 () Bool)

(assert (=> b!1824628 m!2253171))

(declare-fun m!2253173 () Bool)

(assert (=> b!1824628 m!2253173))

(assert (=> b!1824628 m!2253173))

(declare-fun m!2253175 () Bool)

(assert (=> b!1824628 m!2253175))

(declare-fun m!2253177 () Bool)

(assert (=> b!1824628 m!2253177))

(declare-fun m!2253179 () Bool)

(assert (=> b!1824636 m!2253179))

(declare-fun m!2253181 () Bool)

(assert (=> b!1824636 m!2253181))

(declare-fun m!2253183 () Bool)

(assert (=> b!1824636 m!2253183))

(declare-fun m!2253185 () Bool)

(assert (=> b!1824636 m!2253185))

(declare-fun m!2253187 () Bool)

(assert (=> b!1824636 m!2253187))

(assert (=> b!1824636 m!2253179))

(declare-fun m!2253189 () Bool)

(assert (=> b!1824629 m!2253189))

(declare-fun m!2253191 () Bool)

(assert (=> start!180822 m!2253191))

(declare-fun m!2253193 () Bool)

(assert (=> b!1824637 m!2253193))

(declare-fun m!2253195 () Bool)

(assert (=> b!1824637 m!2253195))

(declare-fun m!2253197 () Bool)

(assert (=> b!1824642 m!2253197))

(declare-fun m!2253199 () Bool)

(assert (=> b!1824642 m!2253199))

(declare-fun m!2253201 () Bool)

(assert (=> b!1824640 m!2253201))

(declare-fun m!2253203 () Bool)

(assert (=> b!1824626 m!2253203))

(check-sat (not b!1824628) (not b!1824639) (not b!1824629) (not start!180822) (not b_next!51473) (not b_next!51463) (not b!1824643) (not b!1824633) b_and!141667 (not b!1824636) (not b!1824634) tp_is_empty!8113 (not b_next!51467) b_and!141669 (not b!1824641) (not b!1824627) (not b!1824644) b_and!141675 (not b_next!51469) b_and!141665 (not b!1824642) (not b!1824626) (not b_next!51465) (not b!1824630) (not b_next!51471) b_and!141673 (not b!1824637) (not b!1824640) b_and!141671)
(check-sat (not b_next!51473) (not b_next!51463) b_and!141667 b_and!141665 (not b_next!51465) (not b_next!51471) b_and!141673 b_and!141671 (not b_next!51467) b_and!141669 b_and!141675 (not b_next!51469))
(get-model)

(declare-fun b!1824743 () Bool)

(declare-fun e!1166232 () Option!4191)

(assert (=> b!1824743 (= e!1166232 None!4190)))

(declare-fun b!1824744 () Bool)

(declare-fun res!820629 () Bool)

(declare-fun e!1166233 () Bool)

(assert (=> b!1824744 (=> (not res!820629) (not e!1166233))))

(declare-fun lt!709011 () Option!4191)

(declare-fun get!6188 (Option!4191) tuple2!19518)

(assert (=> b!1824744 (= res!820629 (< (size!15882 (_2!11161 (get!6188 lt!709011))) (size!15882 input!3612)))))

(declare-fun b!1824745 () Bool)

(declare-fun res!820631 () Bool)

(assert (=> b!1824745 (=> (not res!820631) (not e!1166233))))

(assert (=> b!1824745 (= res!820631 (= (++!5435 (list!8135 (charsOf!2254 (_1!11161 (get!6188 lt!709011)))) (_2!11161 (get!6188 lt!709011))) input!3612))))

(declare-fun b!1824747 () Bool)

(declare-fun res!820630 () Bool)

(assert (=> b!1824747 (=> (not res!820630) (not e!1166233))))

(assert (=> b!1824747 (= res!820630 (= (value!112580 (_1!11161 (get!6188 lt!709011))) (apply!5403 (transformation!3611 (rule!5755 (_1!11161 (get!6188 lt!709011)))) (seqFromList!2572 (originalCharacters!4419 (_1!11161 (get!6188 lt!709011)))))))))

(declare-fun b!1824748 () Bool)

(declare-fun e!1166231 () Bool)

(assert (=> b!1824748 (= e!1166231 e!1166233)))

(declare-fun res!820627 () Bool)

(assert (=> b!1824748 (=> (not res!820627) (not e!1166233))))

(assert (=> b!1824748 (= res!820627 (matchR!2404 (regex!3611 rule!559) (list!8135 (charsOf!2254 (_1!11161 (get!6188 lt!709011))))))))

(declare-fun b!1824749 () Bool)

(declare-fun res!820626 () Bool)

(assert (=> b!1824749 (=> (not res!820626) (not e!1166233))))

(assert (=> b!1824749 (= res!820626 (= (rule!5755 (_1!11161 (get!6188 lt!709011))) rule!559))))

(declare-fun b!1824750 () Bool)

(declare-fun e!1166230 () Bool)

(declare-datatypes ((tuple2!19522 0))(
  ( (tuple2!19523 (_1!11163 List!20089) (_2!11163 List!20089)) )
))
(declare-fun findLongestMatchInner!505 (Regex!4939 List!20089 Int List!20089 List!20089 Int) tuple2!19522)

(assert (=> b!1824750 (= e!1166230 (matchR!2404 (regex!3611 rule!559) (_1!11163 (findLongestMatchInner!505 (regex!3611 rule!559) Nil!20019 (size!15882 Nil!20019) input!3612 input!3612 (size!15882 input!3612)))))))

(declare-fun b!1824751 () Bool)

(declare-fun lt!709012 () tuple2!19522)

(declare-fun size!15884 (BalanceConc!13230) Int)

(assert (=> b!1824751 (= e!1166232 (Some!4190 (tuple2!19519 (Token!6777 (apply!5403 (transformation!3611 rule!559) (seqFromList!2572 (_1!11163 lt!709012))) rule!559 (size!15884 (seqFromList!2572 (_1!11163 lt!709012))) (_1!11163 lt!709012)) (_2!11163 lt!709012))))))

(declare-fun lt!709014 () Unit!34695)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!489 (Regex!4939 List!20089) Unit!34695)

(assert (=> b!1824751 (= lt!709014 (longestMatchIsAcceptedByMatchOrIsEmpty!489 (regex!3611 rule!559) input!3612))))

(declare-fun res!820628 () Bool)

(declare-fun isEmpty!12644 (List!20089) Bool)

(assert (=> b!1824751 (= res!820628 (isEmpty!12644 (_1!11163 (findLongestMatchInner!505 (regex!3611 rule!559) Nil!20019 (size!15882 Nil!20019) input!3612 input!3612 (size!15882 input!3612)))))))

(assert (=> b!1824751 (=> res!820628 e!1166230)))

(assert (=> b!1824751 e!1166230))

(declare-fun lt!709013 () Unit!34695)

(assert (=> b!1824751 (= lt!709013 lt!709014)))

(declare-fun lt!709015 () Unit!34695)

(declare-fun lemmaSemiInverse!719 (TokenValueInjection!7062 BalanceConc!13230) Unit!34695)

(assert (=> b!1824751 (= lt!709015 (lemmaSemiInverse!719 (transformation!3611 rule!559) (seqFromList!2572 (_1!11163 lt!709012))))))

(declare-fun d!558480 () Bool)

(assert (=> d!558480 e!1166231))

(declare-fun res!820632 () Bool)

(assert (=> d!558480 (=> res!820632 e!1166231)))

(declare-fun isEmpty!12645 (Option!4191) Bool)

(assert (=> d!558480 (= res!820632 (isEmpty!12645 lt!709011))))

(assert (=> d!558480 (= lt!709011 e!1166232)))

(declare-fun c!297702 () Bool)

(assert (=> d!558480 (= c!297702 (isEmpty!12644 (_1!11163 lt!709012)))))

(declare-fun findLongestMatch!432 (Regex!4939 List!20089) tuple2!19522)

(assert (=> d!558480 (= lt!709012 (findLongestMatch!432 (regex!3611 rule!559) input!3612))))

(assert (=> d!558480 (ruleValid!1103 thiss!28068 rule!559)))

(assert (=> d!558480 (= (maxPrefixOneRule!1153 thiss!28068 rule!559 input!3612) lt!709011)))

(declare-fun b!1824746 () Bool)

(assert (=> b!1824746 (= e!1166233 (= (size!15881 (_1!11161 (get!6188 lt!709011))) (size!15882 (originalCharacters!4419 (_1!11161 (get!6188 lt!709011))))))))

(assert (= (and d!558480 c!297702) b!1824743))

(assert (= (and d!558480 (not c!297702)) b!1824751))

(assert (= (and b!1824751 (not res!820628)) b!1824750))

(assert (= (and d!558480 (not res!820632)) b!1824748))

(assert (= (and b!1824748 res!820627) b!1824745))

(assert (= (and b!1824745 res!820631) b!1824744))

(assert (= (and b!1824744 res!820629) b!1824749))

(assert (= (and b!1824749 res!820626) b!1824747))

(assert (= (and b!1824747 res!820630) b!1824746))

(declare-fun m!2253305 () Bool)

(assert (=> b!1824750 m!2253305))

(declare-fun m!2253307 () Bool)

(assert (=> b!1824750 m!2253307))

(assert (=> b!1824750 m!2253305))

(assert (=> b!1824750 m!2253307))

(declare-fun m!2253309 () Bool)

(assert (=> b!1824750 m!2253309))

(declare-fun m!2253311 () Bool)

(assert (=> b!1824750 m!2253311))

(declare-fun m!2253313 () Bool)

(assert (=> d!558480 m!2253313))

(declare-fun m!2253315 () Bool)

(assert (=> d!558480 m!2253315))

(declare-fun m!2253317 () Bool)

(assert (=> d!558480 m!2253317))

(assert (=> d!558480 m!2253155))

(declare-fun m!2253319 () Bool)

(assert (=> b!1824749 m!2253319))

(assert (=> b!1824748 m!2253319))

(declare-fun m!2253321 () Bool)

(assert (=> b!1824748 m!2253321))

(assert (=> b!1824748 m!2253321))

(declare-fun m!2253323 () Bool)

(assert (=> b!1824748 m!2253323))

(assert (=> b!1824748 m!2253323))

(declare-fun m!2253325 () Bool)

(assert (=> b!1824748 m!2253325))

(declare-fun m!2253327 () Bool)

(assert (=> b!1824751 m!2253327))

(declare-fun m!2253329 () Bool)

(assert (=> b!1824751 m!2253329))

(assert (=> b!1824751 m!2253305))

(assert (=> b!1824751 m!2253307))

(assert (=> b!1824751 m!2253309))

(assert (=> b!1824751 m!2253307))

(assert (=> b!1824751 m!2253327))

(assert (=> b!1824751 m!2253305))

(declare-fun m!2253331 () Bool)

(assert (=> b!1824751 m!2253331))

(assert (=> b!1824751 m!2253327))

(declare-fun m!2253333 () Bool)

(assert (=> b!1824751 m!2253333))

(assert (=> b!1824751 m!2253327))

(declare-fun m!2253335 () Bool)

(assert (=> b!1824751 m!2253335))

(declare-fun m!2253337 () Bool)

(assert (=> b!1824751 m!2253337))

(assert (=> b!1824744 m!2253319))

(declare-fun m!2253339 () Bool)

(assert (=> b!1824744 m!2253339))

(assert (=> b!1824744 m!2253307))

(assert (=> b!1824745 m!2253319))

(assert (=> b!1824745 m!2253321))

(assert (=> b!1824745 m!2253321))

(assert (=> b!1824745 m!2253323))

(assert (=> b!1824745 m!2253323))

(declare-fun m!2253341 () Bool)

(assert (=> b!1824745 m!2253341))

(assert (=> b!1824746 m!2253319))

(declare-fun m!2253343 () Bool)

(assert (=> b!1824746 m!2253343))

(assert (=> b!1824747 m!2253319))

(declare-fun m!2253345 () Bool)

(assert (=> b!1824747 m!2253345))

(assert (=> b!1824747 m!2253345))

(declare-fun m!2253347 () Bool)

(assert (=> b!1824747 m!2253347))

(assert (=> b!1824636 d!558480))

(declare-fun d!558512 () Bool)

(declare-fun fromListB!1176 (List!20089) BalanceConc!13230)

(assert (=> d!558512 (= (seqFromList!2572 lt!708970) (fromListB!1176 lt!708970))))

(declare-fun bs!407536 () Bool)

(assert (= bs!407536 d!558512))

(declare-fun m!2253353 () Bool)

(assert (=> bs!407536 m!2253353))

(assert (=> b!1824636 d!558512))

(declare-fun d!558518 () Bool)

(declare-fun dynLambda!9956 (Int BalanceConc!13230) TokenValue!3701)

(assert (=> d!558518 (= (apply!5403 (transformation!3611 rule!559) (seqFromList!2572 lt!708970)) (dynLambda!9956 (toValue!5150 (transformation!3611 rule!559)) (seqFromList!2572 lt!708970)))))

(declare-fun b_lambda!60263 () Bool)

(assert (=> (not b_lambda!60263) (not d!558518)))

(declare-fun t!170208 () Bool)

(declare-fun tb!111505 () Bool)

(assert (=> (and b!1824632 (= (toValue!5150 (transformation!3611 rule!559)) (toValue!5150 (transformation!3611 rule!559))) t!170208) tb!111505))

(declare-fun result!134028 () Bool)

(assert (=> tb!111505 (= result!134028 (inv!21 (dynLambda!9956 (toValue!5150 (transformation!3611 rule!559)) (seqFromList!2572 lt!708970))))))

(declare-fun m!2253357 () Bool)

(assert (=> tb!111505 m!2253357))

(assert (=> d!558518 t!170208))

(declare-fun b_and!141695 () Bool)

(assert (= b_and!141665 (and (=> t!170208 result!134028) b_and!141695)))

(declare-fun t!170210 () Bool)

(declare-fun tb!111507 () Bool)

(assert (=> (and b!1824635 (= (toValue!5150 (transformation!3611 (rule!5755 token!556))) (toValue!5150 (transformation!3611 rule!559))) t!170210) tb!111507))

(declare-fun result!134032 () Bool)

(assert (= result!134032 result!134028))

(assert (=> d!558518 t!170210))

(declare-fun b_and!141697 () Bool)

(assert (= b_and!141669 (and (=> t!170210 result!134032) b_and!141697)))

(declare-fun tb!111509 () Bool)

(declare-fun t!170212 () Bool)

(assert (=> (and b!1824638 (= (toValue!5150 (transformation!3611 (h!25421 rules!4538))) (toValue!5150 (transformation!3611 rule!559))) t!170212) tb!111509))

(declare-fun result!134034 () Bool)

(assert (= result!134034 result!134028))

(assert (=> d!558518 t!170212))

(declare-fun b_and!141699 () Bool)

(assert (= b_and!141673 (and (=> t!170212 result!134034) b_and!141699)))

(assert (=> d!558518 m!2253179))

(declare-fun m!2253359 () Bool)

(assert (=> d!558518 m!2253359))

(assert (=> b!1824636 d!558518))

(declare-fun d!558522 () Bool)

(declare-fun lt!709026 () Int)

(assert (=> d!558522 (>= lt!709026 0)))

(declare-fun e!1166256 () Int)

(assert (=> d!558522 (= lt!709026 e!1166256)))

(declare-fun c!297714 () Bool)

(assert (=> d!558522 (= c!297714 ((_ is Nil!20019) lt!708970))))

(assert (=> d!558522 (= (size!15882 lt!708970) lt!709026)))

(declare-fun b!1824792 () Bool)

(assert (=> b!1824792 (= e!1166256 0)))

(declare-fun b!1824793 () Bool)

(assert (=> b!1824793 (= e!1166256 (+ 1 (size!15882 (t!170192 lt!708970))))))

(assert (= (and d!558522 c!297714) b!1824792))

(assert (= (and d!558522 (not c!297714)) b!1824793))

(declare-fun m!2253361 () Bool)

(assert (=> b!1824793 m!2253361))

(assert (=> b!1824636 d!558522))

(declare-fun d!558524 () Bool)

(assert (=> d!558524 (= (maxPrefixOneRule!1153 thiss!28068 rule!559 input!3612) (Some!4190 (tuple2!19519 (Token!6777 (apply!5403 (transformation!3611 rule!559) (seqFromList!2572 lt!708970)) rule!559 (size!15882 lt!708970) lt!708970) suffix!1667)))))

(declare-fun lt!709033 () Unit!34695)

(declare-fun choose!11502 (LexerInterface!3240 List!20090 List!20089 List!20089 List!20089 Rule!7022) Unit!34695)

(assert (=> d!558524 (= lt!709033 (choose!11502 thiss!28068 rules!4538 lt!708970 input!3612 suffix!1667 rule!559))))

(assert (=> d!558524 (not (isEmpty!12641 rules!4538))))

(assert (=> d!558524 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!529 thiss!28068 rules!4538 lt!708970 input!3612 suffix!1667 rule!559) lt!709033)))

(declare-fun bs!407539 () Bool)

(assert (= bs!407539 d!558524))

(assert (=> bs!407539 m!2253187))

(assert (=> bs!407539 m!2253201))

(assert (=> bs!407539 m!2253183))

(assert (=> bs!407539 m!2253179))

(assert (=> bs!407539 m!2253181))

(declare-fun m!2253385 () Bool)

(assert (=> bs!407539 m!2253385))

(assert (=> bs!407539 m!2253179))

(assert (=> b!1824636 d!558524))

(declare-fun b!1824861 () Bool)

(declare-fun res!820701 () Bool)

(declare-fun e!1166291 () Bool)

(assert (=> b!1824861 (=> res!820701 e!1166291)))

(declare-fun e!1166290 () Bool)

(assert (=> b!1824861 (= res!820701 e!1166290)))

(declare-fun res!820696 () Bool)

(assert (=> b!1824861 (=> (not res!820696) (not e!1166290))))

(declare-fun lt!709046 () Bool)

(assert (=> b!1824861 (= res!820696 lt!709046)))

(declare-fun b!1824862 () Bool)

(declare-fun e!1166289 () Bool)

(assert (=> b!1824862 (= e!1166291 e!1166289)))

(declare-fun res!820700 () Bool)

(assert (=> b!1824862 (=> (not res!820700) (not e!1166289))))

(assert (=> b!1824862 (= res!820700 (not lt!709046))))

(declare-fun bm!114491 () Bool)

(declare-fun call!114496 () Bool)

(assert (=> bm!114491 (= call!114496 (isEmpty!12644 lt!708970))))

(declare-fun b!1824863 () Bool)

(declare-fun e!1166294 () Bool)

(assert (=> b!1824863 (= e!1166294 (= lt!709046 call!114496))))

(declare-fun b!1824864 () Bool)

(declare-fun res!820695 () Bool)

(assert (=> b!1824864 (=> res!820695 e!1166291)))

(assert (=> b!1824864 (= res!820695 (not ((_ is ElementMatch!4939) (regex!3611 rule!559))))))

(declare-fun e!1166292 () Bool)

(assert (=> b!1824864 (= e!1166292 e!1166291)))

(declare-fun b!1824865 () Bool)

(declare-fun res!820697 () Bool)

(assert (=> b!1824865 (=> (not res!820697) (not e!1166290))))

(assert (=> b!1824865 (= res!820697 (not call!114496))))

(declare-fun b!1824866 () Bool)

(declare-fun e!1166293 () Bool)

(declare-fun nullable!1531 (Regex!4939) Bool)

(assert (=> b!1824866 (= e!1166293 (nullable!1531 (regex!3611 rule!559)))))

(declare-fun b!1824867 () Bool)

(declare-fun derivativeStep!1296 (Regex!4939 C!10052) Regex!4939)

(declare-fun head!4254 (List!20089) C!10052)

(declare-fun tail!2713 (List!20089) List!20089)

(assert (=> b!1824867 (= e!1166293 (matchR!2404 (derivativeStep!1296 (regex!3611 rule!559) (head!4254 lt!708970)) (tail!2713 lt!708970)))))

(declare-fun d!558536 () Bool)

(assert (=> d!558536 e!1166294))

(declare-fun c!297728 () Bool)

(assert (=> d!558536 (= c!297728 ((_ is EmptyExpr!4939) (regex!3611 rule!559)))))

(assert (=> d!558536 (= lt!709046 e!1166293)))

(declare-fun c!297727 () Bool)

(assert (=> d!558536 (= c!297727 (isEmpty!12644 lt!708970))))

(declare-fun validRegex!2009 (Regex!4939) Bool)

(assert (=> d!558536 (validRegex!2009 (regex!3611 rule!559))))

(assert (=> d!558536 (= (matchR!2404 (regex!3611 rule!559) lt!708970) lt!709046)))

(declare-fun b!1824868 () Bool)

(declare-fun res!820694 () Bool)

(declare-fun e!1166288 () Bool)

(assert (=> b!1824868 (=> res!820694 e!1166288)))

(assert (=> b!1824868 (= res!820694 (not (isEmpty!12644 (tail!2713 lt!708970))))))

(declare-fun b!1824869 () Bool)

(assert (=> b!1824869 (= e!1166294 e!1166292)))

(declare-fun c!297726 () Bool)

(assert (=> b!1824869 (= c!297726 ((_ is EmptyLang!4939) (regex!3611 rule!559)))))

(declare-fun b!1824870 () Bool)

(assert (=> b!1824870 (= e!1166292 (not lt!709046))))

(declare-fun b!1824871 () Bool)

(assert (=> b!1824871 (= e!1166288 (not (= (head!4254 lt!708970) (c!297687 (regex!3611 rule!559)))))))

(declare-fun b!1824872 () Bool)

(declare-fun res!820699 () Bool)

(assert (=> b!1824872 (=> (not res!820699) (not e!1166290))))

(assert (=> b!1824872 (= res!820699 (isEmpty!12644 (tail!2713 lt!708970)))))

(declare-fun b!1824873 () Bool)

(assert (=> b!1824873 (= e!1166290 (= (head!4254 lt!708970) (c!297687 (regex!3611 rule!559))))))

(declare-fun b!1824874 () Bool)

(assert (=> b!1824874 (= e!1166289 e!1166288)))

(declare-fun res!820698 () Bool)

(assert (=> b!1824874 (=> res!820698 e!1166288)))

(assert (=> b!1824874 (= res!820698 call!114496)))

(assert (= (and d!558536 c!297727) b!1824866))

(assert (= (and d!558536 (not c!297727)) b!1824867))

(assert (= (and d!558536 c!297728) b!1824863))

(assert (= (and d!558536 (not c!297728)) b!1824869))

(assert (= (and b!1824869 c!297726) b!1824870))

(assert (= (and b!1824869 (not c!297726)) b!1824864))

(assert (= (and b!1824864 (not res!820695)) b!1824861))

(assert (= (and b!1824861 res!820696) b!1824865))

(assert (= (and b!1824865 res!820697) b!1824872))

(assert (= (and b!1824872 res!820699) b!1824873))

(assert (= (and b!1824861 (not res!820701)) b!1824862))

(assert (= (and b!1824862 res!820700) b!1824874))

(assert (= (and b!1824874 (not res!820698)) b!1824868))

(assert (= (and b!1824868 (not res!820694)) b!1824871))

(assert (= (or b!1824863 b!1824865 b!1824874) bm!114491))

(declare-fun m!2253387 () Bool)

(assert (=> b!1824868 m!2253387))

(assert (=> b!1824868 m!2253387))

(declare-fun m!2253389 () Bool)

(assert (=> b!1824868 m!2253389))

(declare-fun m!2253391 () Bool)

(assert (=> bm!114491 m!2253391))

(assert (=> b!1824872 m!2253387))

(assert (=> b!1824872 m!2253387))

(assert (=> b!1824872 m!2253389))

(declare-fun m!2253393 () Bool)

(assert (=> b!1824873 m!2253393))

(assert (=> b!1824871 m!2253393))

(declare-fun m!2253395 () Bool)

(assert (=> b!1824866 m!2253395))

(assert (=> d!558536 m!2253391))

(declare-fun m!2253397 () Bool)

(assert (=> d!558536 m!2253397))

(assert (=> b!1824867 m!2253393))

(assert (=> b!1824867 m!2253393))

(declare-fun m!2253399 () Bool)

(assert (=> b!1824867 m!2253399))

(assert (=> b!1824867 m!2253387))

(assert (=> b!1824867 m!2253399))

(assert (=> b!1824867 m!2253387))

(declare-fun m!2253401 () Bool)

(assert (=> b!1824867 m!2253401))

(assert (=> b!1824634 d!558536))

(declare-fun d!558538 () Bool)

(declare-fun res!820713 () Bool)

(declare-fun e!1166300 () Bool)

(assert (=> d!558538 (=> (not res!820713) (not e!1166300))))

(assert (=> d!558538 (= res!820713 (validRegex!2009 (regex!3611 rule!559)))))

(assert (=> d!558538 (= (ruleValid!1103 thiss!28068 rule!559) e!1166300)))

(declare-fun b!1824888 () Bool)

(declare-fun res!820714 () Bool)

(assert (=> b!1824888 (=> (not res!820714) (not e!1166300))))

(assert (=> b!1824888 (= res!820714 (not (nullable!1531 (regex!3611 rule!559))))))

(declare-fun b!1824889 () Bool)

(assert (=> b!1824889 (= e!1166300 (not (= (tag!4025 rule!559) (String!22838 ""))))))

(assert (= (and d!558538 res!820713) b!1824888))

(assert (= (and b!1824888 res!820714) b!1824889))

(assert (=> d!558538 m!2253397))

(assert (=> b!1824888 m!2253395))

(assert (=> b!1824634 d!558538))

(declare-fun d!558540 () Bool)

(assert (=> d!558540 (ruleValid!1103 thiss!28068 rule!559)))

(declare-fun lt!709054 () Unit!34695)

(declare-fun choose!11503 (LexerInterface!3240 Rule!7022 List!20090) Unit!34695)

(assert (=> d!558540 (= lt!709054 (choose!11503 thiss!28068 rule!559 rules!4538))))

(assert (=> d!558540 (contains!3669 rules!4538 rule!559)))

(assert (=> d!558540 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!624 thiss!28068 rule!559 rules!4538) lt!709054)))

(declare-fun bs!407540 () Bool)

(assert (= bs!407540 d!558540))

(assert (=> bs!407540 m!2253155))

(declare-fun m!2253435 () Bool)

(assert (=> bs!407540 m!2253435))

(assert (=> bs!407540 m!2253203))

(assert (=> b!1824634 d!558540))

(declare-fun b!1824900 () Bool)

(declare-fun e!1166309 () Bool)

(declare-fun e!1166308 () Bool)

(assert (=> b!1824900 (= e!1166309 e!1166308)))

(declare-fun c!297735 () Bool)

(assert (=> b!1824900 (= c!297735 ((_ is IntegerValue!11104) (value!112580 token!556)))))

(declare-fun d!558544 () Bool)

(declare-fun c!297734 () Bool)

(assert (=> d!558544 (= c!297734 ((_ is IntegerValue!11103) (value!112580 token!556)))))

(assert (=> d!558544 (= (inv!21 (value!112580 token!556)) e!1166309)))

(declare-fun b!1824901 () Bool)

(declare-fun res!820717 () Bool)

(declare-fun e!1166307 () Bool)

(assert (=> b!1824901 (=> res!820717 e!1166307)))

(assert (=> b!1824901 (= res!820717 (not ((_ is IntegerValue!11105) (value!112580 token!556))))))

(assert (=> b!1824901 (= e!1166308 e!1166307)))

(declare-fun b!1824902 () Bool)

(declare-fun inv!16 (TokenValue!3701) Bool)

(assert (=> b!1824902 (= e!1166309 (inv!16 (value!112580 token!556)))))

(declare-fun b!1824903 () Bool)

(declare-fun inv!17 (TokenValue!3701) Bool)

(assert (=> b!1824903 (= e!1166308 (inv!17 (value!112580 token!556)))))

(declare-fun b!1824904 () Bool)

(declare-fun inv!15 (TokenValue!3701) Bool)

(assert (=> b!1824904 (= e!1166307 (inv!15 (value!112580 token!556)))))

(assert (= (and d!558544 c!297734) b!1824902))

(assert (= (and d!558544 (not c!297734)) b!1824900))

(assert (= (and b!1824900 c!297735) b!1824903))

(assert (= (and b!1824900 (not c!297735)) b!1824901))

(assert (= (and b!1824901 (not res!820717)) b!1824904))

(declare-fun m!2253437 () Bool)

(assert (=> b!1824902 m!2253437))

(declare-fun m!2253439 () Bool)

(assert (=> b!1824903 m!2253439))

(declare-fun m!2253441 () Bool)

(assert (=> b!1824904 m!2253441))

(assert (=> b!1824643 d!558544))

(declare-fun d!558546 () Bool)

(assert (=> d!558546 (= (inv!26057 (tag!4025 (rule!5755 token!556))) (= (mod (str.len (value!112579 (tag!4025 (rule!5755 token!556)))) 2) 0))))

(assert (=> b!1824644 d!558546))

(declare-fun d!558548 () Bool)

(declare-fun res!820720 () Bool)

(declare-fun e!1166312 () Bool)

(assert (=> d!558548 (=> (not res!820720) (not e!1166312))))

(declare-fun semiInverseModEq!1446 (Int Int) Bool)

(assert (=> d!558548 (= res!820720 (semiInverseModEq!1446 (toChars!5009 (transformation!3611 (rule!5755 token!556))) (toValue!5150 (transformation!3611 (rule!5755 token!556)))))))

(assert (=> d!558548 (= (inv!26060 (transformation!3611 (rule!5755 token!556))) e!1166312)))

(declare-fun b!1824907 () Bool)

(declare-fun equivClasses!1387 (Int Int) Bool)

(assert (=> b!1824907 (= e!1166312 (equivClasses!1387 (toChars!5009 (transformation!3611 (rule!5755 token!556))) (toValue!5150 (transformation!3611 (rule!5755 token!556)))))))

(assert (= (and d!558548 res!820720) b!1824907))

(declare-fun m!2253449 () Bool)

(assert (=> d!558548 m!2253449))

(declare-fun m!2253451 () Bool)

(assert (=> b!1824907 m!2253451))

(assert (=> b!1824644 d!558548))

(declare-fun b!1824926 () Bool)

(declare-fun e!1166321 () Bool)

(declare-fun lt!709068 () Option!4191)

(assert (=> b!1824926 (= e!1166321 (contains!3669 rules!4538 (rule!5755 (_1!11161 (get!6188 lt!709068)))))))

(declare-fun b!1824927 () Bool)

(declare-fun e!1166320 () Option!4191)

(declare-fun call!114500 () Option!4191)

(assert (=> b!1824927 (= e!1166320 call!114500)))

(declare-fun b!1824928 () Bool)

(declare-fun lt!709069 () Option!4191)

(declare-fun lt!709072 () Option!4191)

(assert (=> b!1824928 (= e!1166320 (ite (and ((_ is None!4190) lt!709069) ((_ is None!4190) lt!709072)) None!4190 (ite ((_ is None!4190) lt!709072) lt!709069 (ite ((_ is None!4190) lt!709069) lt!709072 (ite (>= (size!15881 (_1!11161 (v!25741 lt!709069))) (size!15881 (_1!11161 (v!25741 lt!709072)))) lt!709069 lt!709072)))))))

(assert (=> b!1824928 (= lt!709069 call!114500)))

(assert (=> b!1824928 (= lt!709072 (maxPrefix!1788 thiss!28068 (t!170193 rules!4538) input!3612))))

(declare-fun b!1824929 () Bool)

(declare-fun res!820735 () Bool)

(assert (=> b!1824929 (=> (not res!820735) (not e!1166321))))

(assert (=> b!1824929 (= res!820735 (< (size!15882 (_2!11161 (get!6188 lt!709068))) (size!15882 input!3612)))))

(declare-fun b!1824930 () Bool)

(declare-fun res!820739 () Bool)

(assert (=> b!1824930 (=> (not res!820739) (not e!1166321))))

(assert (=> b!1824930 (= res!820739 (= (list!8135 (charsOf!2254 (_1!11161 (get!6188 lt!709068)))) (originalCharacters!4419 (_1!11161 (get!6188 lt!709068)))))))

(declare-fun b!1824931 () Bool)

(declare-fun res!820741 () Bool)

(assert (=> b!1824931 (=> (not res!820741) (not e!1166321))))

(assert (=> b!1824931 (= res!820741 (matchR!2404 (regex!3611 (rule!5755 (_1!11161 (get!6188 lt!709068)))) (list!8135 (charsOf!2254 (_1!11161 (get!6188 lt!709068))))))))

(declare-fun b!1824932 () Bool)

(declare-fun res!820736 () Bool)

(assert (=> b!1824932 (=> (not res!820736) (not e!1166321))))

(assert (=> b!1824932 (= res!820736 (= (value!112580 (_1!11161 (get!6188 lt!709068))) (apply!5403 (transformation!3611 (rule!5755 (_1!11161 (get!6188 lt!709068)))) (seqFromList!2572 (originalCharacters!4419 (_1!11161 (get!6188 lt!709068)))))))))

(declare-fun b!1824933 () Bool)

(declare-fun res!820738 () Bool)

(assert (=> b!1824933 (=> (not res!820738) (not e!1166321))))

(assert (=> b!1824933 (= res!820738 (= (++!5435 (list!8135 (charsOf!2254 (_1!11161 (get!6188 lt!709068)))) (_2!11161 (get!6188 lt!709068))) input!3612))))

(declare-fun b!1824934 () Bool)

(declare-fun e!1166319 () Bool)

(assert (=> b!1824934 (= e!1166319 e!1166321)))

(declare-fun res!820740 () Bool)

(assert (=> b!1824934 (=> (not res!820740) (not e!1166321))))

(declare-fun isDefined!3508 (Option!4191) Bool)

(assert (=> b!1824934 (= res!820740 (isDefined!3508 lt!709068))))

(declare-fun bm!114495 () Bool)

(assert (=> bm!114495 (= call!114500 (maxPrefixOneRule!1153 thiss!28068 (h!25421 rules!4538) input!3612))))

(declare-fun d!558552 () Bool)

(assert (=> d!558552 e!1166319))

(declare-fun res!820737 () Bool)

(assert (=> d!558552 (=> res!820737 e!1166319)))

(assert (=> d!558552 (= res!820737 (isEmpty!12645 lt!709068))))

(assert (=> d!558552 (= lt!709068 e!1166320)))

(declare-fun c!297738 () Bool)

(assert (=> d!558552 (= c!297738 (and ((_ is Cons!20020) rules!4538) ((_ is Nil!20020) (t!170193 rules!4538))))))

(declare-fun lt!709071 () Unit!34695)

(declare-fun lt!709070 () Unit!34695)

(assert (=> d!558552 (= lt!709071 lt!709070)))

(declare-fun isPrefix!1821 (List!20089 List!20089) Bool)

(assert (=> d!558552 (isPrefix!1821 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1198 (List!20089 List!20089) Unit!34695)

(assert (=> d!558552 (= lt!709070 (lemmaIsPrefixRefl!1198 input!3612 input!3612))))

(declare-fun rulesValidInductive!1240 (LexerInterface!3240 List!20090) Bool)

(assert (=> d!558552 (rulesValidInductive!1240 thiss!28068 rules!4538)))

(assert (=> d!558552 (= (maxPrefix!1788 thiss!28068 rules!4538 input!3612) lt!709068)))

(assert (= (and d!558552 c!297738) b!1824927))

(assert (= (and d!558552 (not c!297738)) b!1824928))

(assert (= (or b!1824927 b!1824928) bm!114495))

(assert (= (and d!558552 (not res!820737)) b!1824934))

(assert (= (and b!1824934 res!820740) b!1824930))

(assert (= (and b!1824930 res!820739) b!1824929))

(assert (= (and b!1824929 res!820735) b!1824933))

(assert (= (and b!1824933 res!820738) b!1824932))

(assert (= (and b!1824932 res!820736) b!1824931))

(assert (= (and b!1824931 res!820741) b!1824926))

(declare-fun m!2253453 () Bool)

(assert (=> b!1824934 m!2253453))

(declare-fun m!2253455 () Bool)

(assert (=> b!1824929 m!2253455))

(declare-fun m!2253457 () Bool)

(assert (=> b!1824929 m!2253457))

(assert (=> b!1824929 m!2253307))

(assert (=> b!1824930 m!2253455))

(declare-fun m!2253459 () Bool)

(assert (=> b!1824930 m!2253459))

(assert (=> b!1824930 m!2253459))

(declare-fun m!2253461 () Bool)

(assert (=> b!1824930 m!2253461))

(assert (=> b!1824932 m!2253455))

(declare-fun m!2253463 () Bool)

(assert (=> b!1824932 m!2253463))

(assert (=> b!1824932 m!2253463))

(declare-fun m!2253465 () Bool)

(assert (=> b!1824932 m!2253465))

(declare-fun m!2253467 () Bool)

(assert (=> bm!114495 m!2253467))

(declare-fun m!2253469 () Bool)

(assert (=> b!1824928 m!2253469))

(assert (=> b!1824926 m!2253455))

(declare-fun m!2253471 () Bool)

(assert (=> b!1824926 m!2253471))

(assert (=> b!1824933 m!2253455))

(assert (=> b!1824933 m!2253459))

(assert (=> b!1824933 m!2253459))

(assert (=> b!1824933 m!2253461))

(assert (=> b!1824933 m!2253461))

(declare-fun m!2253473 () Bool)

(assert (=> b!1824933 m!2253473))

(assert (=> b!1824931 m!2253455))

(assert (=> b!1824931 m!2253459))

(assert (=> b!1824931 m!2253459))

(assert (=> b!1824931 m!2253461))

(assert (=> b!1824931 m!2253461))

(declare-fun m!2253475 () Bool)

(assert (=> b!1824931 m!2253475))

(declare-fun m!2253477 () Bool)

(assert (=> d!558552 m!2253477))

(declare-fun m!2253479 () Bool)

(assert (=> d!558552 m!2253479))

(declare-fun m!2253481 () Bool)

(assert (=> d!558552 m!2253481))

(declare-fun m!2253483 () Bool)

(assert (=> d!558552 m!2253483))

(assert (=> b!1824633 d!558552))

(declare-fun d!558554 () Bool)

(declare-fun res!820746 () Bool)

(declare-fun e!1166324 () Bool)

(assert (=> d!558554 (=> (not res!820746) (not e!1166324))))

(assert (=> d!558554 (= res!820746 (not (isEmpty!12644 (originalCharacters!4419 token!556))))))

(assert (=> d!558554 (= (inv!26061 token!556) e!1166324)))

(declare-fun b!1824939 () Bool)

(declare-fun res!820747 () Bool)

(assert (=> b!1824939 (=> (not res!820747) (not e!1166324))))

(declare-fun dynLambda!9958 (Int TokenValue!3701) BalanceConc!13230)

(assert (=> b!1824939 (= res!820747 (= (originalCharacters!4419 token!556) (list!8135 (dynLambda!9958 (toChars!5009 (transformation!3611 (rule!5755 token!556))) (value!112580 token!556)))))))

(declare-fun b!1824940 () Bool)

(assert (=> b!1824940 (= e!1166324 (= (size!15881 token!556) (size!15882 (originalCharacters!4419 token!556))))))

(assert (= (and d!558554 res!820746) b!1824939))

(assert (= (and b!1824939 res!820747) b!1824940))

(declare-fun b_lambda!60265 () Bool)

(assert (=> (not b_lambda!60265) (not b!1824939)))

(declare-fun t!170214 () Bool)

(declare-fun tb!111511 () Bool)

(assert (=> (and b!1824632 (= (toChars!5009 (transformation!3611 rule!559)) (toChars!5009 (transformation!3611 (rule!5755 token!556)))) t!170214) tb!111511))

(declare-fun b!1824945 () Bool)

(declare-fun e!1166327 () Bool)

(declare-fun tp!515908 () Bool)

(declare-fun inv!26064 (Conc!6643) Bool)

(assert (=> b!1824945 (= e!1166327 (and (inv!26064 (c!297686 (dynLambda!9958 (toChars!5009 (transformation!3611 (rule!5755 token!556))) (value!112580 token!556)))) tp!515908))))

(declare-fun result!134036 () Bool)

(declare-fun inv!26065 (BalanceConc!13230) Bool)

(assert (=> tb!111511 (= result!134036 (and (inv!26065 (dynLambda!9958 (toChars!5009 (transformation!3611 (rule!5755 token!556))) (value!112580 token!556))) e!1166327))))

(assert (= tb!111511 b!1824945))

(declare-fun m!2253485 () Bool)

(assert (=> b!1824945 m!2253485))

(declare-fun m!2253487 () Bool)

(assert (=> tb!111511 m!2253487))

(assert (=> b!1824939 t!170214))

(declare-fun b_and!141701 () Bool)

(assert (= b_and!141667 (and (=> t!170214 result!134036) b_and!141701)))

(declare-fun t!170216 () Bool)

(declare-fun tb!111513 () Bool)

(assert (=> (and b!1824635 (= (toChars!5009 (transformation!3611 (rule!5755 token!556))) (toChars!5009 (transformation!3611 (rule!5755 token!556)))) t!170216) tb!111513))

(declare-fun result!134040 () Bool)

(assert (= result!134040 result!134036))

(assert (=> b!1824939 t!170216))

(declare-fun b_and!141703 () Bool)

(assert (= b_and!141671 (and (=> t!170216 result!134040) b_and!141703)))

(declare-fun t!170218 () Bool)

(declare-fun tb!111515 () Bool)

(assert (=> (and b!1824638 (= (toChars!5009 (transformation!3611 (h!25421 rules!4538))) (toChars!5009 (transformation!3611 (rule!5755 token!556)))) t!170218) tb!111515))

(declare-fun result!134042 () Bool)

(assert (= result!134042 result!134036))

(assert (=> b!1824939 t!170218))

(declare-fun b_and!141705 () Bool)

(assert (= b_and!141675 (and (=> t!170218 result!134042) b_and!141705)))

(declare-fun m!2253489 () Bool)

(assert (=> d!558554 m!2253489))

(declare-fun m!2253491 () Bool)

(assert (=> b!1824939 m!2253491))

(assert (=> b!1824939 m!2253491))

(declare-fun m!2253493 () Bool)

(assert (=> b!1824939 m!2253493))

(declare-fun m!2253495 () Bool)

(assert (=> b!1824940 m!2253495))

(assert (=> start!180822 d!558554))

(declare-fun d!558556 () Bool)

(assert (=> d!558556 (= (inv!26057 (tag!4025 (h!25421 rules!4538))) (= (mod (str.len (value!112579 (tag!4025 (h!25421 rules!4538)))) 2) 0))))

(assert (=> b!1824642 d!558556))

(declare-fun d!558558 () Bool)

(declare-fun res!820748 () Bool)

(declare-fun e!1166328 () Bool)

(assert (=> d!558558 (=> (not res!820748) (not e!1166328))))

(assert (=> d!558558 (= res!820748 (semiInverseModEq!1446 (toChars!5009 (transformation!3611 (h!25421 rules!4538))) (toValue!5150 (transformation!3611 (h!25421 rules!4538)))))))

(assert (=> d!558558 (= (inv!26060 (transformation!3611 (h!25421 rules!4538))) e!1166328)))

(declare-fun b!1824946 () Bool)

(assert (=> b!1824946 (= e!1166328 (equivClasses!1387 (toChars!5009 (transformation!3611 (h!25421 rules!4538))) (toValue!5150 (transformation!3611 (h!25421 rules!4538)))))))

(assert (= (and d!558558 res!820748) b!1824946))

(declare-fun m!2253497 () Bool)

(assert (=> d!558558 m!2253497))

(declare-fun m!2253499 () Bool)

(assert (=> b!1824946 m!2253499))

(assert (=> b!1824642 d!558558))

(declare-fun b!1824955 () Bool)

(declare-fun e!1166334 () List!20089)

(assert (=> b!1824955 (= e!1166334 suffix!1667)))

(declare-fun b!1824957 () Bool)

(declare-fun res!820753 () Bool)

(declare-fun e!1166333 () Bool)

(assert (=> b!1824957 (=> (not res!820753) (not e!1166333))))

(declare-fun lt!709075 () List!20089)

(assert (=> b!1824957 (= res!820753 (= (size!15882 lt!709075) (+ (size!15882 lt!708970) (size!15882 suffix!1667))))))

(declare-fun b!1824958 () Bool)

(assert (=> b!1824958 (= e!1166333 (or (not (= suffix!1667 Nil!20019)) (= lt!709075 lt!708970)))))

(declare-fun b!1824956 () Bool)

(assert (=> b!1824956 (= e!1166334 (Cons!20019 (h!25420 lt!708970) (++!5435 (t!170192 lt!708970) suffix!1667)))))

(declare-fun d!558560 () Bool)

(assert (=> d!558560 e!1166333))

(declare-fun res!820754 () Bool)

(assert (=> d!558560 (=> (not res!820754) (not e!1166333))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2946 (List!20089) (InoxSet C!10052))

(assert (=> d!558560 (= res!820754 (= (content!2946 lt!709075) ((_ map or) (content!2946 lt!708970) (content!2946 suffix!1667))))))

(assert (=> d!558560 (= lt!709075 e!1166334)))

(declare-fun c!297741 () Bool)

(assert (=> d!558560 (= c!297741 ((_ is Nil!20019) lt!708970))))

(assert (=> d!558560 (= (++!5435 lt!708970 suffix!1667) lt!709075)))

(assert (= (and d!558560 c!297741) b!1824955))

(assert (= (and d!558560 (not c!297741)) b!1824956))

(assert (= (and d!558560 res!820754) b!1824957))

(assert (= (and b!1824957 res!820753) b!1824958))

(declare-fun m!2253501 () Bool)

(assert (=> b!1824957 m!2253501))

(assert (=> b!1824957 m!2253183))

(declare-fun m!2253503 () Bool)

(assert (=> b!1824957 m!2253503))

(declare-fun m!2253505 () Bool)

(assert (=> b!1824956 m!2253505))

(declare-fun m!2253507 () Bool)

(assert (=> d!558560 m!2253507))

(declare-fun m!2253509 () Bool)

(assert (=> d!558560 m!2253509))

(declare-fun m!2253511 () Bool)

(assert (=> d!558560 m!2253511))

(assert (=> b!1824639 d!558560))

(declare-fun d!558562 () Bool)

(declare-fun list!8137 (Conc!6643) List!20089)

(assert (=> d!558562 (= (list!8135 (charsOf!2254 token!556)) (list!8137 (c!297686 (charsOf!2254 token!556))))))

(declare-fun bs!407543 () Bool)

(assert (= bs!407543 d!558562))

(declare-fun m!2253513 () Bool)

(assert (=> bs!407543 m!2253513))

(assert (=> b!1824639 d!558562))

(declare-fun d!558564 () Bool)

(declare-fun lt!709078 () BalanceConc!13230)

(assert (=> d!558564 (= (list!8135 lt!709078) (originalCharacters!4419 token!556))))

(assert (=> d!558564 (= lt!709078 (dynLambda!9958 (toChars!5009 (transformation!3611 (rule!5755 token!556))) (value!112580 token!556)))))

(assert (=> d!558564 (= (charsOf!2254 token!556) lt!709078)))

(declare-fun b_lambda!60267 () Bool)

(assert (=> (not b_lambda!60267) (not d!558564)))

(assert (=> d!558564 t!170214))

(declare-fun b_and!141707 () Bool)

(assert (= b_and!141701 (and (=> t!170214 result!134036) b_and!141707)))

(assert (=> d!558564 t!170216))

(declare-fun b_and!141709 () Bool)

(assert (= b_and!141703 (and (=> t!170216 result!134040) b_and!141709)))

(assert (=> d!558564 t!170218))

(declare-fun b_and!141711 () Bool)

(assert (= b_and!141705 (and (=> t!170218 result!134042) b_and!141711)))

(declare-fun m!2253515 () Bool)

(assert (=> d!558564 m!2253515))

(assert (=> d!558564 m!2253491))

(assert (=> b!1824639 d!558564))

(declare-fun d!558566 () Bool)

(assert (=> d!558566 (= (isEmpty!12641 rules!4538) ((_ is Nil!20020) rules!4538))))

(assert (=> b!1824640 d!558566))

(declare-fun d!558568 () Bool)

(declare-fun res!820757 () Bool)

(declare-fun e!1166337 () Bool)

(assert (=> d!558568 (=> (not res!820757) (not e!1166337))))

(declare-fun rulesValid!1373 (LexerInterface!3240 List!20090) Bool)

(assert (=> d!558568 (= res!820757 (rulesValid!1373 thiss!28068 rules!4538))))

(assert (=> d!558568 (= (rulesInvariant!2909 thiss!28068 rules!4538) e!1166337)))

(declare-fun b!1824961 () Bool)

(declare-datatypes ((List!20093 0))(
  ( (Nil!20023) (Cons!20023 (h!25424 String!22837) (t!170228 List!20093)) )
))
(declare-fun noDuplicateTag!1371 (LexerInterface!3240 List!20090 List!20093) Bool)

(assert (=> b!1824961 (= e!1166337 (noDuplicateTag!1371 thiss!28068 rules!4538 Nil!20023))))

(assert (= (and d!558568 res!820757) b!1824961))

(declare-fun m!2253517 () Bool)

(assert (=> d!558568 m!2253517))

(declare-fun m!2253519 () Bool)

(assert (=> b!1824961 m!2253519))

(assert (=> b!1824629 d!558568))

(declare-fun bs!407544 () Bool)

(declare-fun d!558570 () Bool)

(assert (= bs!407544 (and d!558570 b!1824628)))

(declare-fun lambda!71566 () Int)

(assert (=> bs!407544 (= lambda!71566 lambda!71560)))

(declare-fun lt!709081 () Unit!34695)

(declare-fun lemma!492 (List!20090 LexerInterface!3240 List!20090) Unit!34695)

(assert (=> d!558570 (= lt!709081 (lemma!492 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!558570 (= (rulesRegex!941 thiss!28068 rules!4538) (generalisedUnion!464 (map!4145 rules!4538 lambda!71566)))))

(declare-fun bs!407545 () Bool)

(assert (= bs!407545 d!558570))

(declare-fun m!2253521 () Bool)

(assert (=> bs!407545 m!2253521))

(declare-fun m!2253523 () Bool)

(assert (=> bs!407545 m!2253523))

(assert (=> bs!407545 m!2253523))

(declare-fun m!2253525 () Bool)

(assert (=> bs!407545 m!2253525))

(assert (=> b!1824628 d!558570))

(declare-fun b!1825064 () Bool)

(declare-fun e!1166398 () Bool)

(declare-fun e!1166397 () Bool)

(assert (=> b!1825064 (= e!1166398 e!1166397)))

(declare-fun c!297771 () Bool)

(declare-fun isEmpty!12647 (List!20091) Bool)

(declare-fun tail!2715 (List!20091) List!20091)

(assert (=> b!1825064 (= c!297771 (isEmpty!12647 (tail!2715 (map!4145 rules!4538 lambda!71560))))))

(declare-fun b!1825065 () Bool)

(declare-fun e!1166399 () Regex!4939)

(declare-fun e!1166400 () Regex!4939)

(assert (=> b!1825065 (= e!1166399 e!1166400)))

(declare-fun c!297770 () Bool)

(assert (=> b!1825065 (= c!297770 ((_ is Cons!20021) (map!4145 rules!4538 lambda!71560)))))

(declare-fun b!1825066 () Bool)

(declare-fun lt!709105 () Regex!4939)

(declare-fun isEmptyLang!117 (Regex!4939) Bool)

(assert (=> b!1825066 (= e!1166398 (isEmptyLang!117 lt!709105))))

(declare-fun b!1825067 () Bool)

(assert (=> b!1825067 (= e!1166400 EmptyLang!4939)))

(declare-fun b!1825068 () Bool)

(declare-fun e!1166396 () Bool)

(assert (=> b!1825068 (= e!1166396 e!1166398)))

(declare-fun c!297769 () Bool)

(assert (=> b!1825068 (= c!297769 (isEmpty!12647 (map!4145 rules!4538 lambda!71560)))))

(declare-fun b!1825069 () Bool)

(assert (=> b!1825069 (= e!1166400 (Union!4939 (h!25422 (map!4145 rules!4538 lambda!71560)) (generalisedUnion!464 (t!170194 (map!4145 rules!4538 lambda!71560)))))))

(declare-fun b!1825070 () Bool)

(declare-fun isUnion!117 (Regex!4939) Bool)

(assert (=> b!1825070 (= e!1166397 (isUnion!117 lt!709105))))

(declare-fun b!1825071 () Bool)

(assert (=> b!1825071 (= e!1166399 (h!25422 (map!4145 rules!4538 lambda!71560)))))

(declare-fun d!558572 () Bool)

(assert (=> d!558572 e!1166396))

(declare-fun res!820769 () Bool)

(assert (=> d!558572 (=> (not res!820769) (not e!1166396))))

(assert (=> d!558572 (= res!820769 (validRegex!2009 lt!709105))))

(assert (=> d!558572 (= lt!709105 e!1166399)))

(declare-fun c!297768 () Bool)

(declare-fun e!1166401 () Bool)

(assert (=> d!558572 (= c!297768 e!1166401)))

(declare-fun res!820768 () Bool)

(assert (=> d!558572 (=> (not res!820768) (not e!1166401))))

(assert (=> d!558572 (= res!820768 ((_ is Cons!20021) (map!4145 rules!4538 lambda!71560)))))

(declare-fun lambda!71578 () Int)

(declare-fun forall!4317 (List!20091 Int) Bool)

(assert (=> d!558572 (forall!4317 (map!4145 rules!4538 lambda!71560) lambda!71578)))

(assert (=> d!558572 (= (generalisedUnion!464 (map!4145 rules!4538 lambda!71560)) lt!709105)))

(declare-fun b!1825072 () Bool)

(declare-fun head!4256 (List!20091) Regex!4939)

(assert (=> b!1825072 (= e!1166397 (= lt!709105 (head!4256 (map!4145 rules!4538 lambda!71560))))))

(declare-fun b!1825073 () Bool)

(assert (=> b!1825073 (= e!1166401 (isEmpty!12647 (t!170194 (map!4145 rules!4538 lambda!71560))))))

(assert (= (and d!558572 res!820768) b!1825073))

(assert (= (and d!558572 c!297768) b!1825071))

(assert (= (and d!558572 (not c!297768)) b!1825065))

(assert (= (and b!1825065 c!297770) b!1825069))

(assert (= (and b!1825065 (not c!297770)) b!1825067))

(assert (= (and d!558572 res!820769) b!1825068))

(assert (= (and b!1825068 c!297769) b!1825066))

(assert (= (and b!1825068 (not c!297769)) b!1825064))

(assert (= (and b!1825064 c!297771) b!1825072))

(assert (= (and b!1825064 (not c!297771)) b!1825070))

(declare-fun m!2253575 () Bool)

(assert (=> d!558572 m!2253575))

(assert (=> d!558572 m!2253173))

(declare-fun m!2253577 () Bool)

(assert (=> d!558572 m!2253577))

(declare-fun m!2253579 () Bool)

(assert (=> b!1825070 m!2253579))

(assert (=> b!1825072 m!2253173))

(declare-fun m!2253581 () Bool)

(assert (=> b!1825072 m!2253581))

(declare-fun m!2253583 () Bool)

(assert (=> b!1825066 m!2253583))

(declare-fun m!2253585 () Bool)

(assert (=> b!1825073 m!2253585))

(assert (=> b!1825068 m!2253173))

(declare-fun m!2253587 () Bool)

(assert (=> b!1825068 m!2253587))

(declare-fun m!2253589 () Bool)

(assert (=> b!1825069 m!2253589))

(assert (=> b!1825064 m!2253173))

(declare-fun m!2253591 () Bool)

(assert (=> b!1825064 m!2253591))

(assert (=> b!1825064 m!2253591))

(declare-fun m!2253593 () Bool)

(assert (=> b!1825064 m!2253593))

(assert (=> b!1824628 d!558572))

(declare-fun d!558580 () Bool)

(declare-fun lt!709108 () List!20091)

(declare-fun size!15887 (List!20091) Int)

(declare-fun size!15888 (List!20090) Int)

(assert (=> d!558580 (= (size!15887 lt!709108) (size!15888 rules!4538))))

(declare-fun e!1166404 () List!20091)

(assert (=> d!558580 (= lt!709108 e!1166404)))

(declare-fun c!297774 () Bool)

(assert (=> d!558580 (= c!297774 ((_ is Nil!20020) rules!4538))))

(assert (=> d!558580 (= (map!4145 rules!4538 lambda!71560) lt!709108)))

(declare-fun b!1825078 () Bool)

(assert (=> b!1825078 (= e!1166404 Nil!20021)))

(declare-fun b!1825079 () Bool)

(declare-fun $colon$colon!450 (List!20091 Regex!4939) List!20091)

(declare-fun dynLambda!9959 (Int Rule!7022) Regex!4939)

(assert (=> b!1825079 (= e!1166404 ($colon$colon!450 (map!4145 (t!170193 rules!4538) lambda!71560) (dynLambda!9959 lambda!71560 (h!25421 rules!4538))))))

(assert (= (and d!558580 c!297774) b!1825078))

(assert (= (and d!558580 (not c!297774)) b!1825079))

(declare-fun b_lambda!60279 () Bool)

(assert (=> (not b_lambda!60279) (not b!1825079)))

(declare-fun m!2253595 () Bool)

(assert (=> d!558580 m!2253595))

(declare-fun m!2253597 () Bool)

(assert (=> d!558580 m!2253597))

(declare-fun m!2253599 () Bool)

(assert (=> b!1825079 m!2253599))

(declare-fun m!2253601 () Bool)

(assert (=> b!1825079 m!2253601))

(assert (=> b!1825079 m!2253599))

(assert (=> b!1825079 m!2253601))

(declare-fun m!2253603 () Bool)

(assert (=> b!1825079 m!2253603))

(assert (=> b!1824628 d!558580))

(declare-fun bs!407550 () Bool)

(declare-fun d!558582 () Bool)

(assert (= bs!407550 (and d!558582 b!1824628)))

(declare-fun lambda!71583 () Int)

(assert (=> bs!407550 (= lambda!71583 lambda!71560)))

(declare-fun bs!407551 () Bool)

(assert (= bs!407551 (and d!558582 d!558570)))

(assert (=> bs!407551 (= lambda!71583 lambda!71566)))

(declare-fun bs!407552 () Bool)

(assert (= bs!407552 (and d!558582 d!558572)))

(declare-fun lambda!71584 () Int)

(assert (=> bs!407552 (= lambda!71584 lambda!71578)))

(assert (=> d!558582 (forall!4317 (map!4145 rules!4538 lambda!71583) lambda!71584)))

(declare-fun lt!709119 () Unit!34695)

(declare-fun e!1166407 () Unit!34695)

(assert (=> d!558582 (= lt!709119 e!1166407)))

(declare-fun c!297777 () Bool)

(assert (=> d!558582 (= c!297777 ((_ is Nil!20020) rules!4538))))

(assert (=> d!558582 (rulesValid!1373 thiss!28068 rules!4538)))

(declare-fun lt!709121 () Unit!34695)

(declare-fun lt!709122 () Unit!34695)

(assert (=> d!558582 (= lt!709121 lt!709122)))

(declare-fun lt!709120 () List!20089)

(assert (=> d!558582 (= (maxPrefixOneRule!1153 thiss!28068 rule!559 input!3612) (Some!4190 (tuple2!19519 (Token!6777 (apply!5403 (transformation!3611 rule!559) (seqFromList!2572 lt!709120)) rule!559 (size!15882 lt!709120) lt!709120) suffix!1667)))))

(assert (=> d!558582 (= lt!709122 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!529 thiss!28068 rules!4538 lt!709120 input!3612 suffix!1667 rule!559))))

(assert (=> d!558582 (= lt!709120 (list!8135 (charsOf!2254 token!556)))))

(assert (=> d!558582 (= (lemma!490 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!709119)))

(declare-fun b!1825084 () Bool)

(declare-fun Unit!34699 () Unit!34695)

(assert (=> b!1825084 (= e!1166407 Unit!34699)))

(declare-fun b!1825085 () Bool)

(declare-fun Unit!34700 () Unit!34695)

(assert (=> b!1825085 (= e!1166407 Unit!34700)))

(declare-fun lt!709123 () Unit!34695)

(assert (=> b!1825085 (= lt!709123 (lemma!490 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170193 rules!4538)))))

(assert (= (and d!558582 c!297777) b!1825084))

(assert (= (and d!558582 (not c!297777)) b!1825085))

(declare-fun m!2253605 () Bool)

(assert (=> d!558582 m!2253605))

(declare-fun m!2253607 () Bool)

(assert (=> d!558582 m!2253607))

(assert (=> d!558582 m!2253167))

(assert (=> d!558582 m!2253169))

(declare-fun m!2253609 () Bool)

(assert (=> d!558582 m!2253609))

(declare-fun m!2253611 () Bool)

(assert (=> d!558582 m!2253611))

(assert (=> d!558582 m!2253187))

(assert (=> d!558582 m!2253517))

(declare-fun m!2253613 () Bool)

(assert (=> d!558582 m!2253613))

(assert (=> d!558582 m!2253613))

(declare-fun m!2253615 () Bool)

(assert (=> d!558582 m!2253615))

(assert (=> d!558582 m!2253167))

(assert (=> d!558582 m!2253609))

(declare-fun m!2253617 () Bool)

(assert (=> b!1825085 m!2253617))

(assert (=> b!1824628 d!558582))

(declare-fun d!558584 () Bool)

(declare-fun lt!709126 () Bool)

(declare-fun content!2947 (List!20090) (InoxSet Rule!7022))

(assert (=> d!558584 (= lt!709126 (select (content!2947 rules!4538) rule!559))))

(declare-fun e!1166413 () Bool)

(assert (=> d!558584 (= lt!709126 e!1166413)))

(declare-fun res!820775 () Bool)

(assert (=> d!558584 (=> (not res!820775) (not e!1166413))))

(assert (=> d!558584 (= res!820775 ((_ is Cons!20020) rules!4538))))

(assert (=> d!558584 (= (contains!3669 rules!4538 rule!559) lt!709126)))

(declare-fun b!1825090 () Bool)

(declare-fun e!1166412 () Bool)

(assert (=> b!1825090 (= e!1166413 e!1166412)))

(declare-fun res!820774 () Bool)

(assert (=> b!1825090 (=> res!820774 e!1166412)))

(assert (=> b!1825090 (= res!820774 (= (h!25421 rules!4538) rule!559))))

(declare-fun b!1825091 () Bool)

(assert (=> b!1825091 (= e!1166412 (contains!3669 (t!170193 rules!4538) rule!559))))

(assert (= (and d!558584 res!820775) b!1825090))

(assert (= (and b!1825090 (not res!820774)) b!1825091))

(declare-fun m!2253619 () Bool)

(assert (=> d!558584 m!2253619))

(declare-fun m!2253621 () Bool)

(assert (=> d!558584 m!2253621))

(declare-fun m!2253623 () Bool)

(assert (=> b!1825091 m!2253623))

(assert (=> b!1824626 d!558584))

(declare-fun d!558586 () Bool)

(assert (=> d!558586 (= (inv!26057 (tag!4025 rule!559)) (= (mod (str.len (value!112579 (tag!4025 rule!559))) 2) 0))))

(assert (=> b!1824637 d!558586))

(declare-fun d!558588 () Bool)

(declare-fun res!820776 () Bool)

(declare-fun e!1166414 () Bool)

(assert (=> d!558588 (=> (not res!820776) (not e!1166414))))

(assert (=> d!558588 (= res!820776 (semiInverseModEq!1446 (toChars!5009 (transformation!3611 rule!559)) (toValue!5150 (transformation!3611 rule!559))))))

(assert (=> d!558588 (= (inv!26060 (transformation!3611 rule!559)) e!1166414)))

(declare-fun b!1825092 () Bool)

(assert (=> b!1825092 (= e!1166414 (equivClasses!1387 (toChars!5009 (transformation!3611 rule!559)) (toValue!5150 (transformation!3611 rule!559))))))

(assert (= (and d!558588 res!820776) b!1825092))

(declare-fun m!2253625 () Bool)

(assert (=> d!558588 m!2253625))

(declare-fun m!2253627 () Bool)

(assert (=> b!1825092 m!2253627))

(assert (=> b!1824637 d!558588))

(declare-fun b!1825097 () Bool)

(declare-fun e!1166417 () Bool)

(declare-fun tp!515953 () Bool)

(assert (=> b!1825097 (= e!1166417 (and tp_is_empty!8113 tp!515953))))

(assert (=> b!1824630 (= tp!515894 e!1166417)))

(assert (= (and b!1824630 ((_ is Cons!20019) (t!170192 input!3612))) b!1825097))

(declare-fun b!1825098 () Bool)

(declare-fun e!1166418 () Bool)

(declare-fun tp!515954 () Bool)

(assert (=> b!1825098 (= e!1166418 (and tp_is_empty!8113 tp!515954))))

(assert (=> b!1824641 (= tp!515902 e!1166418)))

(assert (= (and b!1824641 ((_ is Cons!20019) (t!170192 suffix!1667))) b!1825098))

(declare-fun b!1825099 () Bool)

(declare-fun e!1166419 () Bool)

(declare-fun tp!515955 () Bool)

(assert (=> b!1825099 (= e!1166419 (and tp_is_empty!8113 tp!515955))))

(assert (=> b!1824643 (= tp!515892 e!1166419)))

(assert (= (and b!1824643 ((_ is Cons!20019) (originalCharacters!4419 token!556))) b!1825099))

(declare-fun b!1825110 () Bool)

(declare-fun b_free!50775 () Bool)

(declare-fun b_next!51479 () Bool)

(assert (=> b!1825110 (= b_free!50775 (not b_next!51479))))

(declare-fun tb!111521 () Bool)

(declare-fun t!170225 () Bool)

(assert (=> (and b!1825110 (= (toValue!5150 (transformation!3611 (h!25421 (t!170193 rules!4538)))) (toValue!5150 (transformation!3611 rule!559))) t!170225) tb!111521))

(declare-fun result!134058 () Bool)

(assert (= result!134058 result!134028))

(assert (=> d!558518 t!170225))

(declare-fun tp!515966 () Bool)

(declare-fun b_and!141717 () Bool)

(assert (=> b!1825110 (= tp!515966 (and (=> t!170225 result!134058) b_and!141717))))

(declare-fun b_free!50777 () Bool)

(declare-fun b_next!51481 () Bool)

(assert (=> b!1825110 (= b_free!50777 (not b_next!51481))))

(declare-fun t!170227 () Bool)

(declare-fun tb!111523 () Bool)

(assert (=> (and b!1825110 (= (toChars!5009 (transformation!3611 (h!25421 (t!170193 rules!4538)))) (toChars!5009 (transformation!3611 (rule!5755 token!556)))) t!170227) tb!111523))

(declare-fun result!134060 () Bool)

(assert (= result!134060 result!134036))

(assert (=> b!1824939 t!170227))

(assert (=> d!558564 t!170227))

(declare-fun tp!515967 () Bool)

(declare-fun b_and!141719 () Bool)

(assert (=> b!1825110 (= tp!515967 (and (=> t!170227 result!134060) b_and!141719))))

(declare-fun e!1166429 () Bool)

(assert (=> b!1825110 (= e!1166429 (and tp!515966 tp!515967))))

(declare-fun tp!515965 () Bool)

(declare-fun b!1825109 () Bool)

(declare-fun e!1166428 () Bool)

(assert (=> b!1825109 (= e!1166428 (and tp!515965 (inv!26057 (tag!4025 (h!25421 (t!170193 rules!4538)))) (inv!26060 (transformation!3611 (h!25421 (t!170193 rules!4538)))) e!1166429))))

(declare-fun b!1825108 () Bool)

(declare-fun e!1166431 () Bool)

(declare-fun tp!515964 () Bool)

(assert (=> b!1825108 (= e!1166431 (and e!1166428 tp!515964))))

(assert (=> b!1824627 (= tp!515891 e!1166431)))

(assert (= b!1825109 b!1825110))

(assert (= b!1825108 b!1825109))

(assert (= (and b!1824627 ((_ is Cons!20020) (t!170193 rules!4538))) b!1825108))

(declare-fun m!2253629 () Bool)

(assert (=> b!1825109 m!2253629))

(declare-fun m!2253631 () Bool)

(assert (=> b!1825109 m!2253631))

(declare-fun b!1825123 () Bool)

(declare-fun e!1166434 () Bool)

(declare-fun tp!515980 () Bool)

(assert (=> b!1825123 (= e!1166434 tp!515980)))

(declare-fun b!1825122 () Bool)

(declare-fun tp!515982 () Bool)

(declare-fun tp!515979 () Bool)

(assert (=> b!1825122 (= e!1166434 (and tp!515982 tp!515979))))

(assert (=> b!1824644 (= tp!515899 e!1166434)))

(declare-fun b!1825121 () Bool)

(assert (=> b!1825121 (= e!1166434 tp_is_empty!8113)))

(declare-fun b!1825124 () Bool)

(declare-fun tp!515978 () Bool)

(declare-fun tp!515981 () Bool)

(assert (=> b!1825124 (= e!1166434 (and tp!515978 tp!515981))))

(assert (= (and b!1824644 ((_ is ElementMatch!4939) (regex!3611 (rule!5755 token!556)))) b!1825121))

(assert (= (and b!1824644 ((_ is Concat!8641) (regex!3611 (rule!5755 token!556)))) b!1825122))

(assert (= (and b!1824644 ((_ is Star!4939) (regex!3611 (rule!5755 token!556)))) b!1825123))

(assert (= (and b!1824644 ((_ is Union!4939) (regex!3611 (rule!5755 token!556)))) b!1825124))

(declare-fun b!1825127 () Bool)

(declare-fun e!1166435 () Bool)

(declare-fun tp!515985 () Bool)

(assert (=> b!1825127 (= e!1166435 tp!515985)))

(declare-fun b!1825126 () Bool)

(declare-fun tp!515987 () Bool)

(declare-fun tp!515984 () Bool)

(assert (=> b!1825126 (= e!1166435 (and tp!515987 tp!515984))))

(assert (=> b!1824642 (= tp!515893 e!1166435)))

(declare-fun b!1825125 () Bool)

(assert (=> b!1825125 (= e!1166435 tp_is_empty!8113)))

(declare-fun b!1825128 () Bool)

(declare-fun tp!515983 () Bool)

(declare-fun tp!515986 () Bool)

(assert (=> b!1825128 (= e!1166435 (and tp!515983 tp!515986))))

(assert (= (and b!1824642 ((_ is ElementMatch!4939) (regex!3611 (h!25421 rules!4538)))) b!1825125))

(assert (= (and b!1824642 ((_ is Concat!8641) (regex!3611 (h!25421 rules!4538)))) b!1825126))

(assert (= (and b!1824642 ((_ is Star!4939) (regex!3611 (h!25421 rules!4538)))) b!1825127))

(assert (= (and b!1824642 ((_ is Union!4939) (regex!3611 (h!25421 rules!4538)))) b!1825128))

(declare-fun b!1825131 () Bool)

(declare-fun e!1166436 () Bool)

(declare-fun tp!515990 () Bool)

(assert (=> b!1825131 (= e!1166436 tp!515990)))

(declare-fun b!1825130 () Bool)

(declare-fun tp!515992 () Bool)

(declare-fun tp!515989 () Bool)

(assert (=> b!1825130 (= e!1166436 (and tp!515992 tp!515989))))

(assert (=> b!1824637 (= tp!515898 e!1166436)))

(declare-fun b!1825129 () Bool)

(assert (=> b!1825129 (= e!1166436 tp_is_empty!8113)))

(declare-fun b!1825132 () Bool)

(declare-fun tp!515988 () Bool)

(declare-fun tp!515991 () Bool)

(assert (=> b!1825132 (= e!1166436 (and tp!515988 tp!515991))))

(assert (= (and b!1824637 ((_ is ElementMatch!4939) (regex!3611 rule!559))) b!1825129))

(assert (= (and b!1824637 ((_ is Concat!8641) (regex!3611 rule!559))) b!1825130))

(assert (= (and b!1824637 ((_ is Star!4939) (regex!3611 rule!559))) b!1825131))

(assert (= (and b!1824637 ((_ is Union!4939) (regex!3611 rule!559))) b!1825132))

(declare-fun b_lambda!60281 () Bool)

(assert (= b_lambda!60279 (or b!1824628 b_lambda!60281)))

(declare-fun bs!407553 () Bool)

(declare-fun d!558590 () Bool)

(assert (= bs!407553 (and d!558590 b!1824628)))

(assert (=> bs!407553 (= (dynLambda!9959 lambda!71560 (h!25421 rules!4538)) (regex!3611 (h!25421 rules!4538)))))

(assert (=> b!1825079 d!558590))

(declare-fun b_lambda!60283 () Bool)

(assert (= b_lambda!60263 (or (and b!1824632 b_free!50759) (and b!1824635 b_free!50763 (= (toValue!5150 (transformation!3611 (rule!5755 token!556))) (toValue!5150 (transformation!3611 rule!559)))) (and b!1824638 b_free!50767 (= (toValue!5150 (transformation!3611 (h!25421 rules!4538))) (toValue!5150 (transformation!3611 rule!559)))) (and b!1825110 b_free!50775 (= (toValue!5150 (transformation!3611 (h!25421 (t!170193 rules!4538)))) (toValue!5150 (transformation!3611 rule!559)))) b_lambda!60283)))

(declare-fun b_lambda!60285 () Bool)

(assert (= b_lambda!60265 (or (and b!1824632 b_free!50761 (= (toChars!5009 (transformation!3611 rule!559)) (toChars!5009 (transformation!3611 (rule!5755 token!556))))) (and b!1824635 b_free!50765) (and b!1824638 b_free!50769 (= (toChars!5009 (transformation!3611 (h!25421 rules!4538))) (toChars!5009 (transformation!3611 (rule!5755 token!556))))) (and b!1825110 b_free!50777 (= (toChars!5009 (transformation!3611 (h!25421 (t!170193 rules!4538)))) (toChars!5009 (transformation!3611 (rule!5755 token!556))))) b_lambda!60285)))

(declare-fun b_lambda!60287 () Bool)

(assert (= b_lambda!60267 (or (and b!1824632 b_free!50761 (= (toChars!5009 (transformation!3611 rule!559)) (toChars!5009 (transformation!3611 (rule!5755 token!556))))) (and b!1824635 b_free!50765) (and b!1824638 b_free!50769 (= (toChars!5009 (transformation!3611 (h!25421 rules!4538))) (toChars!5009 (transformation!3611 (rule!5755 token!556))))) (and b!1825110 b_free!50777 (= (toChars!5009 (transformation!3611 (h!25421 (t!170193 rules!4538)))) (toChars!5009 (transformation!3611 (rule!5755 token!556))))) b_lambda!60287)))

(check-sat (not b!1825130) (not b!1824945) (not b!1824933) (not b_next!51465) (not tb!111505) tp_is_empty!8113 (not b!1825068) (not b!1825109) b_and!141699 (not b!1824888) (not b_next!51467) (not d!558552) (not b!1824940) b_and!141695 (not b!1824749) (not b!1824946) (not b!1824745) (not b!1825064) (not b!1824929) (not b!1824873) (not bm!114491) (not b!1825070) (not b_lambda!60287) (not b!1825108) (not d!558580) (not b!1825091) (not b_next!51479) b_and!141709 (not b!1824868) (not b!1824961) (not b!1824932) b_and!141707 (not d!558540) (not b_next!51473) (not b!1825097) (not d!558560) (not b!1825073) (not b!1824956) (not b_next!51469) (not b!1824926) (not b!1824939) (not b!1825123) (not b!1824928) (not b_next!51463) (not b_lambda!60281) (not b!1824793) (not b!1824957) (not d!558564) (not b!1824871) (not b!1825085) (not b!1824747) (not b!1825079) (not b!1825092) (not d!558572) (not b!1825124) (not b_next!51481) (not b!1824748) (not b!1824934) (not b!1824902) (not d!558524) (not d!558538) (not b!1824931) (not b!1825132) (not b!1825128) (not d!558582) (not d!558480) (not b!1825131) b_and!141711 (not d!558558) (not d!558548) (not d!558570) (not b!1824907) (not d!558584) (not b!1825127) (not b!1825099) (not b_lambda!60285) (not b!1825126) (not b!1824872) (not b!1824930) (not tb!111511) (not b!1824750) (not d!558512) b_and!141697 (not bm!114495) (not d!558536) (not b!1824903) (not b!1825072) (not b_next!51471) (not b!1825098) (not b!1824751) b_and!141717 (not b!1824866) (not b!1824867) (not b!1824904) (not b!1824746) (not d!558568) (not b!1825122) (not b!1825069) (not d!558554) (not d!558588) (not b!1825066) b_and!141719 (not d!558562) (not b_lambda!60283) (not b!1824744))
(check-sat b_and!141695 (not b_next!51479) b_and!141709 b_and!141707 (not b_next!51473) (not b_next!51469) (not b_next!51463) (not b_next!51481) b_and!141711 b_and!141697 (not b_next!51465) (not b_next!51471) b_and!141717 b_and!141719 b_and!141699 (not b_next!51467))
