; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!181456 () Bool)

(assert start!181456)

(declare-fun b!1828936 () Bool)

(declare-fun b_free!51043 () Bool)

(declare-fun b_next!51747 () Bool)

(assert (=> b!1828936 (= b_free!51043 (not b_next!51747))))

(declare-fun tp!517379 () Bool)

(declare-fun b_and!142237 () Bool)

(assert (=> b!1828936 (= tp!517379 b_and!142237)))

(declare-fun b_free!51045 () Bool)

(declare-fun b_next!51749 () Bool)

(assert (=> b!1828936 (= b_free!51045 (not b_next!51749))))

(declare-fun tp!517374 () Bool)

(declare-fun b_and!142239 () Bool)

(assert (=> b!1828936 (= tp!517374 b_and!142239)))

(declare-fun b!1828921 () Bool)

(declare-fun b_free!51047 () Bool)

(declare-fun b_next!51751 () Bool)

(assert (=> b!1828921 (= b_free!51047 (not b_next!51751))))

(declare-fun tp!517385 () Bool)

(declare-fun b_and!142241 () Bool)

(assert (=> b!1828921 (= tp!517385 b_and!142241)))

(declare-fun b_free!51049 () Bool)

(declare-fun b_next!51753 () Bool)

(assert (=> b!1828921 (= b_free!51049 (not b_next!51753))))

(declare-fun tp!517375 () Bool)

(declare-fun b_and!142243 () Bool)

(assert (=> b!1828921 (= tp!517375 b_and!142243)))

(declare-fun b!1828920 () Bool)

(declare-fun b_free!51051 () Bool)

(declare-fun b_next!51755 () Bool)

(assert (=> b!1828920 (= b_free!51051 (not b_next!51755))))

(declare-fun tp!517382 () Bool)

(declare-fun b_and!142245 () Bool)

(assert (=> b!1828920 (= tp!517382 b_and!142245)))

(declare-fun b_free!51053 () Bool)

(declare-fun b_next!51757 () Bool)

(assert (=> b!1828920 (= b_free!51053 (not b_next!51757))))

(declare-fun tp!517378 () Bool)

(declare-fun b_and!142247 () Bool)

(assert (=> b!1828920 (= tp!517378 b_and!142247)))

(declare-fun e!1168965 () Bool)

(declare-fun tp!517376 () Bool)

(declare-datatypes ((List!20165 0))(
  ( (Nil!20095) (Cons!20095 (h!25496 (_ BitVec 16)) (t!170498 List!20165)) )
))
(declare-datatypes ((TokenValue!3720 0))(
  ( (FloatLiteralValue!7440 (text!26485 List!20165)) (TokenValueExt!3719 (__x!12742 Int)) (Broken!18600 (value!113097 List!20165)) (Object!3789) (End!3720) (Def!3720) (Underscore!3720) (Match!3720) (Else!3720) (Error!3720) (Case!3720) (If!3720) (Extends!3720) (Abstract!3720) (Class!3720) (Val!3720) (DelimiterValue!7440 (del!3780 List!20165)) (KeywordValue!3726 (value!113098 List!20165)) (CommentValue!7440 (value!113099 List!20165)) (WhitespaceValue!7440 (value!113100 List!20165)) (IndentationValue!3720 (value!113101 List!20165)) (String!22933) (Int32!3720) (Broken!18601 (value!113102 List!20165)) (Boolean!3721) (Unit!34763) (OperatorValue!3723 (op!3780 List!20165)) (IdentifierValue!7440 (value!113103 List!20165)) (IdentifierValue!7441 (value!113104 List!20165)) (WhitespaceValue!7441 (value!113105 List!20165)) (True!7440) (False!7440) (Broken!18602 (value!113106 List!20165)) (Broken!18603 (value!113107 List!20165)) (True!7441) (RightBrace!3720) (RightBracket!3720) (Colon!3720) (Null!3720) (Comma!3720) (LeftBracket!3720) (False!7441) (LeftBrace!3720) (ImaginaryLiteralValue!3720 (text!26486 List!20165)) (StringLiteralValue!11160 (value!113108 List!20165)) (EOFValue!3720 (value!113109 List!20165)) (IdentValue!3720 (value!113110 List!20165)) (DelimiterValue!7441 (value!113111 List!20165)) (DedentValue!3720 (value!113112 List!20165)) (NewLineValue!3720 (value!113113 List!20165)) (IntegerValue!11160 (value!113114 (_ BitVec 32)) (text!26487 List!20165)) (IntegerValue!11161 (value!113115 Int) (text!26488 List!20165)) (Times!3720) (Or!3720) (Equal!3720) (Minus!3720) (Broken!18604 (value!113116 List!20165)) (And!3720) (Div!3720) (LessEqual!3720) (Mod!3720) (Concat!8678) (Not!3720) (Plus!3720) (SpaceValue!3720 (value!113117 List!20165)) (IntegerValue!11162 (value!113118 Int) (text!26489 List!20165)) (StringLiteralValue!11161 (text!26490 List!20165)) (FloatLiteralValue!7441 (text!26491 List!20165)) (BytesLiteralValue!3720 (value!113119 List!20165)) (CommentValue!7441 (value!113120 List!20165)) (StringLiteralValue!11162 (value!113121 List!20165)) (ErrorTokenValue!3720 (msg!3781 List!20165)) )
))
(declare-datatypes ((C!10090 0))(
  ( (C!10091 (val!5641 Int)) )
))
(declare-datatypes ((List!20166 0))(
  ( (Nil!20096) (Cons!20096 (h!25497 C!10090) (t!170499 List!20166)) )
))
(declare-datatypes ((IArray!13329 0))(
  ( (IArray!13330 (innerList!6722 List!20166)) )
))
(declare-datatypes ((Conc!6662 0))(
  ( (Node!6662 (left!16075 Conc!6662) (right!16405 Conc!6662) (csize!13554 Int) (cheight!6873 Int)) (Leaf!9698 (xs!9538 IArray!13329) (csize!13555 Int)) (Empty!6662) )
))
(declare-datatypes ((BalanceConc!13268 0))(
  ( (BalanceConc!13269 (c!298279 Conc!6662)) )
))
(declare-datatypes ((TokenValueInjection!7100 0))(
  ( (TokenValueInjection!7101 (toValue!5173 Int) (toChars!5032 Int)) )
))
(declare-datatypes ((Regex!4958 0))(
  ( (ElementMatch!4958 (c!298280 C!10090)) (Concat!8679 (regOne!10428 Regex!4958) (regTwo!10428 Regex!4958)) (EmptyExpr!4958) (Star!4958 (reg!5287 Regex!4958)) (EmptyLang!4958) (Union!4958 (regOne!10429 Regex!4958) (regTwo!10429 Regex!4958)) )
))
(declare-datatypes ((String!22934 0))(
  ( (String!22935 (value!113122 String)) )
))
(declare-datatypes ((Rule!7060 0))(
  ( (Rule!7061 (regex!3630 Regex!4958) (tag!4044 String!22934) (isSeparator!3630 Bool) (transformation!3630 TokenValueInjection!7100)) )
))
(declare-datatypes ((List!20167 0))(
  ( (Nil!20097) (Cons!20097 (h!25498 Rule!7060) (t!170500 List!20167)) )
))
(declare-fun rules!4538 () List!20167)

(declare-fun b!1828917 () Bool)

(declare-fun e!1168980 () Bool)

(declare-fun inv!26155 (String!22934) Bool)

(declare-fun inv!26158 (TokenValueInjection!7100) Bool)

(assert (=> b!1828917 (= e!1168965 (and tp!517376 (inv!26155 (tag!4044 (h!25498 rules!4538))) (inv!26158 (transformation!3630 (h!25498 rules!4538))) e!1168980))))

(declare-fun b!1828918 () Bool)

(declare-fun e!1168976 () Bool)

(declare-fun e!1168971 () Bool)

(assert (=> b!1828918 (= e!1168976 (not e!1168971))))

(declare-fun res!822467 () Bool)

(assert (=> b!1828918 (=> res!822467 e!1168971)))

(declare-fun rule!559 () Rule!7060)

(declare-fun lt!710188 () List!20166)

(declare-fun matchR!2421 (Regex!4958 List!20166) Bool)

(assert (=> b!1828918 (= res!822467 (not (matchR!2421 (regex!3630 rule!559) lt!710188)))))

(declare-datatypes ((LexerInterface!3259 0))(
  ( (LexerInterfaceExt!3256 (__x!12743 Int)) (Lexer!3257) )
))
(declare-fun thiss!28068 () LexerInterface!3259)

(declare-fun ruleValid!1120 (LexerInterface!3259 Rule!7060) Bool)

(assert (=> b!1828918 (ruleValid!1120 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34764 0))(
  ( (Unit!34765) )
))
(declare-fun lt!710181 () Unit!34764)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!639 (LexerInterface!3259 Rule!7060 List!20167) Unit!34764)

(assert (=> b!1828918 (= lt!710181 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!639 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1828919 () Bool)

(declare-fun e!1168969 () Bool)

(declare-fun tp_is_empty!8151 () Bool)

(declare-fun tp!517381 () Bool)

(assert (=> b!1828919 (= e!1168969 (and tp_is_empty!8151 tp!517381))))

(declare-fun e!1168970 () Bool)

(assert (=> b!1828920 (= e!1168970 (and tp!517382 tp!517378))))

(assert (=> b!1828921 (= e!1168980 (and tp!517385 tp!517375))))

(declare-fun b!1828922 () Bool)

(declare-fun e!1168973 () Bool)

(declare-fun e!1168966 () Bool)

(assert (=> b!1828922 (= e!1168973 e!1168966)))

(declare-fun res!822458 () Bool)

(assert (=> b!1828922 (=> (not res!822458) (not e!1168966))))

(declare-datatypes ((Token!6814 0))(
  ( (Token!6815 (value!113123 TokenValue!3720) (rule!5792 Rule!7060) (size!15935 Int) (originalCharacters!4438 List!20166)) )
))
(declare-datatypes ((tuple2!19572 0))(
  ( (tuple2!19573 (_1!11188 Token!6814) (_2!11188 List!20166)) )
))
(declare-datatypes ((Option!4210 0))(
  ( (None!4209) (Some!4209 (v!25776 tuple2!19572)) )
))
(declare-fun lt!710187 () Option!4210)

(declare-fun input!3612 () List!20166)

(declare-fun maxPrefix!1807 (LexerInterface!3259 List!20167 List!20166) Option!4210)

(assert (=> b!1828922 (= res!822458 (= (maxPrefix!1807 thiss!28068 rules!4538 input!3612) lt!710187))))

(declare-fun token!556 () Token!6814)

(declare-fun suffix!1667 () List!20166)

(assert (=> b!1828922 (= lt!710187 (Some!4209 (tuple2!19573 token!556 suffix!1667)))))

(declare-fun b!1828923 () Bool)

(declare-fun e!1168979 () Bool)

(declare-fun tp!517377 () Bool)

(assert (=> b!1828923 (= e!1168979 (and tp!517377 (inv!26155 (tag!4044 rule!559)) (inv!26158 (transformation!3630 rule!559)) e!1168970))))

(declare-fun b!1828924 () Bool)

(declare-fun e!1168983 () Bool)

(declare-datatypes ((List!20168 0))(
  ( (Nil!20098) (Cons!20098 (h!25499 Regex!4958) (t!170501 List!20168)) )
))
(declare-fun lt!710182 () List!20168)

(declare-fun lambda!71780 () Int)

(declare-fun forall!4326 (List!20168 Int) Bool)

(assert (=> b!1828924 (= e!1168983 (forall!4326 lt!710182 lambda!71780))))

(declare-fun tp!517373 () Bool)

(declare-fun b!1828925 () Bool)

(declare-fun e!1168972 () Bool)

(declare-fun e!1168975 () Bool)

(assert (=> b!1828925 (= e!1168975 (and tp!517373 (inv!26155 (tag!4044 (rule!5792 token!556))) (inv!26158 (transformation!3630 (rule!5792 token!556))) e!1168972))))

(declare-fun b!1828926 () Bool)

(declare-fun e!1168982 () Bool)

(assert (=> b!1828926 (= e!1168982 e!1168983)))

(declare-fun res!822465 () Bool)

(assert (=> b!1828926 (=> res!822465 e!1168983)))

(declare-fun contains!3698 (List!20168 Regex!4958) Bool)

(assert (=> b!1828926 (= res!822465 (not (contains!3698 lt!710182 (regex!3630 rule!559))))))

(declare-fun lambda!71779 () Int)

(declare-fun map!4164 (List!20167 Int) List!20168)

(assert (=> b!1828926 (= lt!710182 (map!4164 rules!4538 lambda!71779))))

(declare-fun lt!710184 () Unit!34764)

(declare-fun lemma!513 (List!20166 Rule!7060 List!20167 List!20166 LexerInterface!3259 Token!6814 List!20167) Unit!34764)

(assert (=> b!1828926 (= lt!710184 (lemma!513 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1828927 () Bool)

(declare-fun res!822462 () Bool)

(assert (=> b!1828927 (=> (not res!822462) (not e!1168973))))

(declare-fun isEmpty!12690 (List!20167) Bool)

(assert (=> b!1828927 (= res!822462 (not (isEmpty!12690 rules!4538)))))

(declare-fun b!1828928 () Bool)

(declare-fun e!1168977 () Bool)

(declare-fun tp!517380 () Bool)

(assert (=> b!1828928 (= e!1168977 (and tp_is_empty!8151 tp!517380))))

(declare-fun b!1828929 () Bool)

(declare-fun res!822461 () Bool)

(assert (=> b!1828929 (=> (not res!822461) (not e!1168973))))

(declare-fun rulesInvariant!2928 (LexerInterface!3259 List!20167) Bool)

(assert (=> b!1828929 (= res!822461 (rulesInvariant!2928 thiss!28068 rules!4538))))

(declare-fun b!1828930 () Bool)

(declare-fun e!1168981 () Bool)

(declare-fun tp!517384 () Bool)

(assert (=> b!1828930 (= e!1168981 (and e!1168965 tp!517384))))

(declare-fun res!822463 () Bool)

(assert (=> start!181456 (=> (not res!822463) (not e!1168973))))

(assert (=> start!181456 (= res!822463 (is-Lexer!3257 thiss!28068))))

(assert (=> start!181456 e!1168973))

(assert (=> start!181456 e!1168977))

(assert (=> start!181456 true))

(assert (=> start!181456 e!1168981))

(declare-fun e!1168984 () Bool)

(declare-fun inv!26159 (Token!6814) Bool)

(assert (=> start!181456 (and (inv!26159 token!556) e!1168984)))

(assert (=> start!181456 e!1168979))

(assert (=> start!181456 e!1168969))

(declare-fun b!1828931 () Bool)

(declare-fun res!822464 () Bool)

(assert (=> b!1828931 (=> (not res!822464) (not e!1168973))))

(declare-fun contains!3699 (List!20167 Rule!7060) Bool)

(assert (=> b!1828931 (= res!822464 (contains!3699 rules!4538 rule!559))))

(declare-fun b!1828932 () Bool)

(declare-fun e!1168974 () Bool)

(assert (=> b!1828932 (= e!1168971 e!1168974)))

(declare-fun res!822466 () Bool)

(assert (=> b!1828932 (=> res!822466 e!1168974)))

(declare-fun lt!710185 () Option!4210)

(assert (=> b!1828932 (= res!822466 (not (= lt!710185 lt!710187)))))

(declare-fun lt!710190 () Int)

(declare-fun lt!710189 () TokenValue!3720)

(assert (=> b!1828932 (= lt!710185 (Some!4209 (tuple2!19573 (Token!6815 lt!710189 rule!559 lt!710190 lt!710188) suffix!1667)))))

(declare-fun maxPrefixOneRule!1168 (LexerInterface!3259 Rule!7060 List!20166) Option!4210)

(assert (=> b!1828932 (= lt!710185 (maxPrefixOneRule!1168 thiss!28068 rule!559 input!3612))))

(declare-fun size!15936 (List!20166) Int)

(assert (=> b!1828932 (= lt!710190 (size!15936 lt!710188))))

(declare-fun apply!5418 (TokenValueInjection!7100 BalanceConc!13268) TokenValue!3720)

(declare-fun seqFromList!2587 (List!20166) BalanceConc!13268)

(assert (=> b!1828932 (= lt!710189 (apply!5418 (transformation!3630 rule!559) (seqFromList!2587 lt!710188)))))

(declare-fun lt!710186 () Unit!34764)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!538 (LexerInterface!3259 List!20167 List!20166 List!20166 List!20166 Rule!7060) Unit!34764)

(assert (=> b!1828932 (= lt!710186 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!538 thiss!28068 rules!4538 lt!710188 input!3612 suffix!1667 rule!559))))

(declare-fun b!1828933 () Bool)

(assert (=> b!1828933 (= e!1168974 e!1168982)))

(declare-fun res!822457 () Bool)

(assert (=> b!1828933 (=> res!822457 e!1168982)))

(declare-fun rulesRegex!950 (LexerInterface!3259 List!20167) Regex!4958)

(declare-fun generalisedUnion!473 (List!20168) Regex!4958)

(assert (=> b!1828933 (= res!822457 (not (= (rulesRegex!950 thiss!28068 rules!4538) (generalisedUnion!473 (map!4164 rules!4538 lambda!71779)))))))

(declare-fun lt!710183 () Unit!34764)

(declare-fun lemma!514 (List!20166 Rule!7060 List!20167 List!20166 LexerInterface!3259 Token!6814 List!20167) Unit!34764)

(assert (=> b!1828933 (= lt!710183 (lemma!514 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1828934 () Bool)

(declare-fun tp!517383 () Bool)

(declare-fun inv!21 (TokenValue!3720) Bool)

(assert (=> b!1828934 (= e!1168984 (and (inv!21 (value!113123 token!556)) e!1168975 tp!517383))))

(declare-fun b!1828935 () Bool)

(declare-fun res!822459 () Bool)

(assert (=> b!1828935 (=> (not res!822459) (not e!1168966))))

(assert (=> b!1828935 (= res!822459 (= (rule!5792 token!556) rule!559))))

(assert (=> b!1828936 (= e!1168972 (and tp!517379 tp!517374))))

(declare-fun b!1828937 () Bool)

(assert (=> b!1828937 (= e!1168966 e!1168976)))

(declare-fun res!822460 () Bool)

(assert (=> b!1828937 (=> (not res!822460) (not e!1168976))))

(declare-fun ++!5454 (List!20166 List!20166) List!20166)

(assert (=> b!1828937 (= res!822460 (= input!3612 (++!5454 lt!710188 suffix!1667)))))

(declare-fun list!8168 (BalanceConc!13268) List!20166)

(declare-fun charsOf!2273 (Token!6814) BalanceConc!13268)

(assert (=> b!1828937 (= lt!710188 (list!8168 (charsOf!2273 token!556)))))

(assert (= (and start!181456 res!822463) b!1828927))

(assert (= (and b!1828927 res!822462) b!1828929))

(assert (= (and b!1828929 res!822461) b!1828931))

(assert (= (and b!1828931 res!822464) b!1828922))

(assert (= (and b!1828922 res!822458) b!1828935))

(assert (= (and b!1828935 res!822459) b!1828937))

(assert (= (and b!1828937 res!822460) b!1828918))

(assert (= (and b!1828918 (not res!822467)) b!1828932))

(assert (= (and b!1828932 (not res!822466)) b!1828933))

(assert (= (and b!1828933 (not res!822457)) b!1828926))

(assert (= (and b!1828926 (not res!822465)) b!1828924))

(assert (= (and start!181456 (is-Cons!20096 suffix!1667)) b!1828928))

(assert (= b!1828917 b!1828921))

(assert (= b!1828930 b!1828917))

(assert (= (and start!181456 (is-Cons!20097 rules!4538)) b!1828930))

(assert (= b!1828925 b!1828936))

(assert (= b!1828934 b!1828925))

(assert (= start!181456 b!1828934))

(assert (= b!1828923 b!1828920))

(assert (= start!181456 b!1828923))

(assert (= (and start!181456 (is-Cons!20096 input!3612)) b!1828919))

(declare-fun m!2256745 () Bool)

(assert (=> b!1828918 m!2256745))

(declare-fun m!2256747 () Bool)

(assert (=> b!1828918 m!2256747))

(declare-fun m!2256749 () Bool)

(assert (=> b!1828918 m!2256749))

(declare-fun m!2256751 () Bool)

(assert (=> b!1828926 m!2256751))

(declare-fun m!2256753 () Bool)

(assert (=> b!1828926 m!2256753))

(declare-fun m!2256755 () Bool)

(assert (=> b!1828926 m!2256755))

(declare-fun m!2256757 () Bool)

(assert (=> b!1828923 m!2256757))

(declare-fun m!2256759 () Bool)

(assert (=> b!1828923 m!2256759))

(declare-fun m!2256761 () Bool)

(assert (=> b!1828937 m!2256761))

(declare-fun m!2256763 () Bool)

(assert (=> b!1828937 m!2256763))

(assert (=> b!1828937 m!2256763))

(declare-fun m!2256765 () Bool)

(assert (=> b!1828937 m!2256765))

(declare-fun m!2256767 () Bool)

(assert (=> b!1828934 m!2256767))

(declare-fun m!2256769 () Bool)

(assert (=> start!181456 m!2256769))

(declare-fun m!2256771 () Bool)

(assert (=> b!1828933 m!2256771))

(assert (=> b!1828933 m!2256753))

(assert (=> b!1828933 m!2256753))

(declare-fun m!2256773 () Bool)

(assert (=> b!1828933 m!2256773))

(declare-fun m!2256775 () Bool)

(assert (=> b!1828933 m!2256775))

(declare-fun m!2256777 () Bool)

(assert (=> b!1828917 m!2256777))

(declare-fun m!2256779 () Bool)

(assert (=> b!1828917 m!2256779))

(declare-fun m!2256781 () Bool)

(assert (=> b!1828929 m!2256781))

(declare-fun m!2256783 () Bool)

(assert (=> b!1828925 m!2256783))

(declare-fun m!2256785 () Bool)

(assert (=> b!1828925 m!2256785))

(declare-fun m!2256787 () Bool)

(assert (=> b!1828927 m!2256787))

(declare-fun m!2256789 () Bool)

(assert (=> b!1828932 m!2256789))

(declare-fun m!2256791 () Bool)

(assert (=> b!1828932 m!2256791))

(declare-fun m!2256793 () Bool)

(assert (=> b!1828932 m!2256793))

(declare-fun m!2256795 () Bool)

(assert (=> b!1828932 m!2256795))

(declare-fun m!2256797 () Bool)

(assert (=> b!1828932 m!2256797))

(assert (=> b!1828932 m!2256791))

(declare-fun m!2256799 () Bool)

(assert (=> b!1828931 m!2256799))

(declare-fun m!2256801 () Bool)

(assert (=> b!1828922 m!2256801))

(declare-fun m!2256803 () Bool)

(assert (=> b!1828924 m!2256803))

(push 1)

(assert (not b!1828931))

(assert (not b!1828933))

(assert (not b!1828927))

(assert b_and!142247)

(assert b_and!142245)

(assert (not b_next!51755))

(assert b_and!142243)

(assert (not b!1828922))

(assert (not b!1828930))

(assert (not b_next!51751))

(assert (not b!1828928))

(assert (not b!1828923))

(assert (not start!181456))

(assert (not b!1828932))

(assert (not b_next!51749))

(assert (not b!1828918))

(assert (not b!1828917))

(assert (not b!1828934))

(assert (not b_next!51757))

(assert b_and!142241)

(assert b_and!142237)

(assert tp_is_empty!8151)

(assert (not b!1828924))

(assert (not b!1828926))

(assert (not b_next!51747))

(assert (not b!1828929))

(assert b_and!142239)

(assert (not b!1828937))

(assert (not b!1828919))

(assert (not b_next!51753))

(assert (not b!1828925))

(check-sat)

(pop 1)

(push 1)

(assert b_and!142247)

(assert b_and!142245)

(assert (not b_next!51749))

(assert (not b_next!51755))

(assert b_and!142243)

(assert (not b_next!51757))

(assert (not b_next!51751))

(assert (not b_next!51747))

(assert b_and!142239)

(assert (not b_next!51753))

(assert b_and!142241)

(assert b_and!142237)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!559338 () Bool)

(declare-fun lt!710223 () Bool)

(declare-fun content!2972 (List!20168) (Set Regex!4958))

(assert (=> d!559338 (= lt!710223 (set.member (regex!3630 rule!559) (content!2972 lt!710182)))))

(declare-fun e!1169053 () Bool)

(assert (=> d!559338 (= lt!710223 e!1169053)))

(declare-fun res!822509 () Bool)

(assert (=> d!559338 (=> (not res!822509) (not e!1169053))))

(assert (=> d!559338 (= res!822509 (is-Cons!20098 lt!710182))))

(assert (=> d!559338 (= (contains!3698 lt!710182 (regex!3630 rule!559)) lt!710223)))

(declare-fun b!1829005 () Bool)

(declare-fun e!1169054 () Bool)

(assert (=> b!1829005 (= e!1169053 e!1169054)))

(declare-fun res!822510 () Bool)

(assert (=> b!1829005 (=> res!822510 e!1169054)))

(assert (=> b!1829005 (= res!822510 (= (h!25499 lt!710182) (regex!3630 rule!559)))))

(declare-fun b!1829006 () Bool)

(assert (=> b!1829006 (= e!1169054 (contains!3698 (t!170501 lt!710182) (regex!3630 rule!559)))))

(assert (= (and d!559338 res!822509) b!1829005))

(assert (= (and b!1829005 (not res!822510)) b!1829006))

(declare-fun m!2256865 () Bool)

(assert (=> d!559338 m!2256865))

(declare-fun m!2256867 () Bool)

(assert (=> d!559338 m!2256867))

(declare-fun m!2256869 () Bool)

(assert (=> b!1829006 m!2256869))

(assert (=> b!1828926 d!559338))

(declare-fun d!559340 () Bool)

(declare-fun lt!710226 () List!20168)

(declare-fun size!15939 (List!20168) Int)

(declare-fun size!15940 (List!20167) Int)

(assert (=> d!559340 (= (size!15939 lt!710226) (size!15940 rules!4538))))

(declare-fun e!1169057 () List!20168)

(assert (=> d!559340 (= lt!710226 e!1169057)))

(declare-fun c!298286 () Bool)

(assert (=> d!559340 (= c!298286 (is-Nil!20097 rules!4538))))

(assert (=> d!559340 (= (map!4164 rules!4538 lambda!71779) lt!710226)))

(declare-fun b!1829011 () Bool)

(assert (=> b!1829011 (= e!1169057 Nil!20098)))

(declare-fun b!1829012 () Bool)

(declare-fun $colon$colon!455 (List!20168 Regex!4958) List!20168)

(declare-fun dynLambda!9992 (Int Rule!7060) Regex!4958)

(assert (=> b!1829012 (= e!1169057 ($colon$colon!455 (map!4164 (t!170500 rules!4538) lambda!71779) (dynLambda!9992 lambda!71779 (h!25498 rules!4538))))))

(assert (= (and d!559340 c!298286) b!1829011))

(assert (= (and d!559340 (not c!298286)) b!1829012))

(declare-fun b_lambda!60449 () Bool)

(assert (=> (not b_lambda!60449) (not b!1829012)))

(declare-fun m!2256871 () Bool)

(assert (=> d!559340 m!2256871))

(declare-fun m!2256873 () Bool)

(assert (=> d!559340 m!2256873))

(declare-fun m!2256875 () Bool)

(assert (=> b!1829012 m!2256875))

(declare-fun m!2256877 () Bool)

(assert (=> b!1829012 m!2256877))

(assert (=> b!1829012 m!2256875))

(assert (=> b!1829012 m!2256877))

(declare-fun m!2256879 () Bool)

(assert (=> b!1829012 m!2256879))

(assert (=> b!1828926 d!559340))

(declare-fun bs!407728 () Bool)

(declare-fun d!559342 () Bool)

(assert (= bs!407728 (and d!559342 b!1828933)))

(declare-fun lambda!71791 () Int)

(assert (=> bs!407728 (= lambda!71791 lambda!71779)))

(assert (=> d!559342 (contains!3698 (map!4164 rules!4538 lambda!71791) (regex!3630 rule!559))))

(declare-fun lt!710237 () Unit!34764)

(declare-fun e!1169060 () Unit!34764)

(assert (=> d!559342 (= lt!710237 e!1169060)))

(declare-fun c!298289 () Bool)

(assert (=> d!559342 (= c!298289 (and (is-Cons!20097 rules!4538) (not (= (h!25498 rules!4538) rule!559))))))

(declare-fun rulesValid!1383 (LexerInterface!3259 List!20167) Bool)

(assert (=> d!559342 (rulesValid!1383 thiss!28068 rules!4538)))

(declare-fun lt!710240 () Unit!34764)

(assert (=> d!559342 (= lt!710240 (lemma!514 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun lt!710238 () Unit!34764)

(declare-fun lt!710239 () Unit!34764)

(assert (=> d!559342 (= lt!710238 lt!710239)))

(declare-fun lt!710241 () List!20166)

(assert (=> d!559342 (= (maxPrefixOneRule!1168 thiss!28068 rule!559 input!3612) (Some!4209 (tuple2!19573 (Token!6815 (apply!5418 (transformation!3630 rule!559) (seqFromList!2587 lt!710241)) rule!559 (size!15936 lt!710241) lt!710241) suffix!1667)))))

(assert (=> d!559342 (= lt!710239 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!538 thiss!28068 rules!4538 lt!710241 input!3612 suffix!1667 rule!559))))

(assert (=> d!559342 (= lt!710241 (list!8168 (charsOf!2273 token!556)))))

(assert (=> d!559342 (= (lemma!513 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!710237)))

(declare-fun b!1829017 () Bool)

(assert (=> b!1829017 (= e!1169060 (lemma!513 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170500 rules!4538)))))

(declare-fun b!1829018 () Bool)

(declare-fun Unit!34769 () Unit!34764)

(assert (=> b!1829018 (= e!1169060 Unit!34769)))

(assert (= (and d!559342 c!298289) b!1829017))

(assert (= (and d!559342 (not c!298289)) b!1829018))

(assert (=> d!559342 m!2256763))

(assert (=> d!559342 m!2256765))

(assert (=> d!559342 m!2256795))

(declare-fun m!2256881 () Bool)

(assert (=> d!559342 m!2256881))

(declare-fun m!2256883 () Bool)

(assert (=> d!559342 m!2256883))

(declare-fun m!2256885 () Bool)

(assert (=> d!559342 m!2256885))

(assert (=> d!559342 m!2256763))

(assert (=> d!559342 m!2256885))

(declare-fun m!2256887 () Bool)

(assert (=> d!559342 m!2256887))

(assert (=> d!559342 m!2256775))

(declare-fun m!2256889 () Bool)

(assert (=> d!559342 m!2256889))

(assert (=> d!559342 m!2256889))

(declare-fun m!2256891 () Bool)

(assert (=> d!559342 m!2256891))

(declare-fun m!2256893 () Bool)

(assert (=> d!559342 m!2256893))

(declare-fun m!2256895 () Bool)

(assert (=> b!1829017 m!2256895))

(assert (=> b!1828926 d!559342))

(declare-fun d!559344 () Bool)

(declare-fun e!1169065 () Bool)

(assert (=> d!559344 e!1169065))

(declare-fun res!822515 () Bool)

(assert (=> d!559344 (=> (not res!822515) (not e!1169065))))

(declare-fun lt!710244 () List!20166)

(declare-fun content!2973 (List!20166) (Set C!10090))

(assert (=> d!559344 (= res!822515 (= (content!2973 lt!710244) (set.union (content!2973 lt!710188) (content!2973 suffix!1667))))))

(declare-fun e!1169066 () List!20166)

(assert (=> d!559344 (= lt!710244 e!1169066)))

(declare-fun c!298292 () Bool)

(assert (=> d!559344 (= c!298292 (is-Nil!20096 lt!710188))))

(assert (=> d!559344 (= (++!5454 lt!710188 suffix!1667) lt!710244)))

(declare-fun b!1829029 () Bool)

(declare-fun res!822516 () Bool)

(assert (=> b!1829029 (=> (not res!822516) (not e!1169065))))

(assert (=> b!1829029 (= res!822516 (= (size!15936 lt!710244) (+ (size!15936 lt!710188) (size!15936 suffix!1667))))))

(declare-fun b!1829028 () Bool)

(assert (=> b!1829028 (= e!1169066 (Cons!20096 (h!25497 lt!710188) (++!5454 (t!170499 lt!710188) suffix!1667)))))

(declare-fun b!1829027 () Bool)

(assert (=> b!1829027 (= e!1169066 suffix!1667)))

(declare-fun b!1829030 () Bool)

(assert (=> b!1829030 (= e!1169065 (or (not (= suffix!1667 Nil!20096)) (= lt!710244 lt!710188)))))

(assert (= (and d!559344 c!298292) b!1829027))

(assert (= (and d!559344 (not c!298292)) b!1829028))

(assert (= (and d!559344 res!822515) b!1829029))

(assert (= (and b!1829029 res!822516) b!1829030))

(declare-fun m!2256897 () Bool)

(assert (=> d!559344 m!2256897))

(declare-fun m!2256899 () Bool)

(assert (=> d!559344 m!2256899))

(declare-fun m!2256901 () Bool)

(assert (=> d!559344 m!2256901))

(declare-fun m!2256903 () Bool)

(assert (=> b!1829029 m!2256903))

(assert (=> b!1829029 m!2256789))

(declare-fun m!2256905 () Bool)

(assert (=> b!1829029 m!2256905))

(declare-fun m!2256907 () Bool)

(assert (=> b!1829028 m!2256907))

(assert (=> b!1828937 d!559344))

(declare-fun d!559348 () Bool)

(declare-fun list!8170 (Conc!6662) List!20166)

(assert (=> d!559348 (= (list!8168 (charsOf!2273 token!556)) (list!8170 (c!298279 (charsOf!2273 token!556))))))

(declare-fun bs!407729 () Bool)

(assert (= bs!407729 d!559348))

(declare-fun m!2256909 () Bool)

(assert (=> bs!407729 m!2256909))

(assert (=> b!1828937 d!559348))

(declare-fun d!559350 () Bool)

(declare-fun lt!710247 () BalanceConc!13268)

(assert (=> d!559350 (= (list!8168 lt!710247) (originalCharacters!4438 token!556))))

(declare-fun dynLambda!9993 (Int TokenValue!3720) BalanceConc!13268)

(assert (=> d!559350 (= lt!710247 (dynLambda!9993 (toChars!5032 (transformation!3630 (rule!5792 token!556))) (value!113123 token!556)))))

(assert (=> d!559350 (= (charsOf!2273 token!556) lt!710247)))

(declare-fun b_lambda!60451 () Bool)

(assert (=> (not b_lambda!60451) (not d!559350)))

(declare-fun t!170507 () Bool)

(declare-fun tb!111721 () Bool)

(assert (=> (and b!1828936 (= (toChars!5032 (transformation!3630 (rule!5792 token!556))) (toChars!5032 (transformation!3630 (rule!5792 token!556)))) t!170507) tb!111721))

(declare-fun b!1829039 () Bool)

(declare-fun e!1169071 () Bool)

(declare-fun tp!517427 () Bool)

(declare-fun inv!26162 (Conc!6662) Bool)

(assert (=> b!1829039 (= e!1169071 (and (inv!26162 (c!298279 (dynLambda!9993 (toChars!5032 (transformation!3630 (rule!5792 token!556))) (value!113123 token!556)))) tp!517427))))

(declare-fun result!134356 () Bool)

(declare-fun inv!26163 (BalanceConc!13268) Bool)

(assert (=> tb!111721 (= result!134356 (and (inv!26163 (dynLambda!9993 (toChars!5032 (transformation!3630 (rule!5792 token!556))) (value!113123 token!556))) e!1169071))))

(assert (= tb!111721 b!1829039))

(declare-fun m!2256911 () Bool)

(assert (=> b!1829039 m!2256911))

(declare-fun m!2256913 () Bool)

(assert (=> tb!111721 m!2256913))

(assert (=> d!559350 t!170507))

(declare-fun b_and!142261 () Bool)

(assert (= b_and!142239 (and (=> t!170507 result!134356) b_and!142261)))

(declare-fun tb!111723 () Bool)

(declare-fun t!170509 () Bool)

(assert (=> (and b!1828921 (= (toChars!5032 (transformation!3630 (h!25498 rules!4538))) (toChars!5032 (transformation!3630 (rule!5792 token!556)))) t!170509) tb!111723))

(declare-fun result!134360 () Bool)

(assert (= result!134360 result!134356))

(assert (=> d!559350 t!170509))

(declare-fun b_and!142263 () Bool)

(assert (= b_and!142243 (and (=> t!170509 result!134360) b_and!142263)))

(declare-fun tb!111725 () Bool)

(declare-fun t!170511 () Bool)

(assert (=> (and b!1828920 (= (toChars!5032 (transformation!3630 rule!559)) (toChars!5032 (transformation!3630 (rule!5792 token!556)))) t!170511) tb!111725))

(declare-fun result!134362 () Bool)

(assert (= result!134362 result!134356))

(assert (=> d!559350 t!170511))

(declare-fun b_and!142265 () Bool)

(assert (= b_and!142247 (and (=> t!170511 result!134362) b_and!142265)))

(declare-fun m!2256915 () Bool)

(assert (=> d!559350 m!2256915))

(declare-fun m!2256917 () Bool)

(assert (=> d!559350 m!2256917))

(assert (=> b!1828937 d!559350))

(declare-fun d!559352 () Bool)

(assert (=> d!559352 (= (isEmpty!12690 rules!4538) (is-Nil!20097 rules!4538))))

(assert (=> b!1828927 d!559352))

(declare-fun d!559354 () Bool)

(assert (=> d!559354 (= (inv!26155 (tag!4044 (rule!5792 token!556))) (= (mod (str.len (value!113122 (tag!4044 (rule!5792 token!556)))) 2) 0))))

(assert (=> b!1828925 d!559354))

(declare-fun d!559356 () Bool)

(declare-fun res!822523 () Bool)

(declare-fun e!1169076 () Bool)

(assert (=> d!559356 (=> (not res!822523) (not e!1169076))))

(declare-fun semiInverseModEq!1457 (Int Int) Bool)

(assert (=> d!559356 (= res!822523 (semiInverseModEq!1457 (toChars!5032 (transformation!3630 (rule!5792 token!556))) (toValue!5173 (transformation!3630 (rule!5792 token!556)))))))

(assert (=> d!559356 (= (inv!26158 (transformation!3630 (rule!5792 token!556))) e!1169076)))

(declare-fun b!1829046 () Bool)

(declare-fun equivClasses!1398 (Int Int) Bool)

(assert (=> b!1829046 (= e!1169076 (equivClasses!1398 (toChars!5032 (transformation!3630 (rule!5792 token!556))) (toValue!5173 (transformation!3630 (rule!5792 token!556)))))))

(assert (= (and d!559356 res!822523) b!1829046))

(declare-fun m!2256919 () Bool)

(assert (=> d!559356 m!2256919))

(declare-fun m!2256921 () Bool)

(assert (=> b!1829046 m!2256921))

(assert (=> b!1828925 d!559356))

(declare-fun b!1829083 () Bool)

(declare-fun e!1169101 () Bool)

(declare-fun e!1169097 () Bool)

(assert (=> b!1829083 (= e!1169101 e!1169097)))

(declare-fun res!822545 () Bool)

(assert (=> b!1829083 (=> (not res!822545) (not e!1169097))))

(declare-fun lt!710256 () Bool)

(assert (=> b!1829083 (= res!822545 (not lt!710256))))

(declare-fun b!1829084 () Bool)

(declare-fun e!1169096 () Bool)

(declare-fun head!4269 (List!20166) C!10090)

(assert (=> b!1829084 (= e!1169096 (= (head!4269 lt!710188) (c!298280 (regex!3630 rule!559))))))

(declare-fun b!1829085 () Bool)

(declare-fun res!822542 () Bool)

(assert (=> b!1829085 (=> (not res!822542) (not e!1169096))))

(declare-fun call!114625 () Bool)

(assert (=> b!1829085 (= res!822542 (not call!114625))))

(declare-fun b!1829087 () Bool)

(declare-fun e!1169100 () Bool)

(assert (=> b!1829087 (= e!1169100 (not lt!710256))))

(declare-fun b!1829088 () Bool)

(declare-fun res!822543 () Bool)

(assert (=> b!1829088 (=> res!822543 e!1169101)))

(assert (=> b!1829088 (= res!822543 (not (is-ElementMatch!4958 (regex!3630 rule!559))))))

(assert (=> b!1829088 (= e!1169100 e!1169101)))

(declare-fun b!1829089 () Bool)

(declare-fun res!822544 () Bool)

(declare-fun e!1169098 () Bool)

(assert (=> b!1829089 (=> res!822544 e!1169098)))

(declare-fun isEmpty!12692 (List!20166) Bool)

(declare-fun tail!2728 (List!20166) List!20166)

(assert (=> b!1829089 (= res!822544 (not (isEmpty!12692 (tail!2728 lt!710188))))))

(declare-fun b!1829090 () Bool)

(assert (=> b!1829090 (= e!1169097 e!1169098)))

(declare-fun res!822548 () Bool)

(assert (=> b!1829090 (=> res!822548 e!1169098)))

(assert (=> b!1829090 (= res!822548 call!114625)))

(declare-fun b!1829091 () Bool)

(declare-fun e!1169099 () Bool)

(declare-fun nullable!1540 (Regex!4958) Bool)

(assert (=> b!1829091 (= e!1169099 (nullable!1540 (regex!3630 rule!559)))))

(declare-fun d!559358 () Bool)

(declare-fun e!1169095 () Bool)

(assert (=> d!559358 e!1169095))

(declare-fun c!298304 () Bool)

(assert (=> d!559358 (= c!298304 (is-EmptyExpr!4958 (regex!3630 rule!559)))))

(assert (=> d!559358 (= lt!710256 e!1169099)))

(declare-fun c!298302 () Bool)

(assert (=> d!559358 (= c!298302 (isEmpty!12692 lt!710188))))

(declare-fun validRegex!2020 (Regex!4958) Bool)

(assert (=> d!559358 (validRegex!2020 (regex!3630 rule!559))))

(assert (=> d!559358 (= (matchR!2421 (regex!3630 rule!559) lt!710188) lt!710256)))

(declare-fun b!1829086 () Bool)

(declare-fun res!822547 () Bool)

(assert (=> b!1829086 (=> (not res!822547) (not e!1169096))))

(assert (=> b!1829086 (= res!822547 (isEmpty!12692 (tail!2728 lt!710188)))))

(declare-fun b!1829092 () Bool)

(assert (=> b!1829092 (= e!1169095 e!1169100)))

(declare-fun c!298303 () Bool)

(assert (=> b!1829092 (= c!298303 (is-EmptyLang!4958 (regex!3630 rule!559)))))

(declare-fun b!1829093 () Bool)

(declare-fun res!822549 () Bool)

(assert (=> b!1829093 (=> res!822549 e!1169101)))

(assert (=> b!1829093 (= res!822549 e!1169096)))

(declare-fun res!822546 () Bool)

(assert (=> b!1829093 (=> (not res!822546) (not e!1169096))))

(assert (=> b!1829093 (= res!822546 lt!710256)))

(declare-fun b!1829094 () Bool)

(assert (=> b!1829094 (= e!1169098 (not (= (head!4269 lt!710188) (c!298280 (regex!3630 rule!559)))))))

(declare-fun bm!114620 () Bool)

(assert (=> bm!114620 (= call!114625 (isEmpty!12692 lt!710188))))

(declare-fun b!1829095 () Bool)

(assert (=> b!1829095 (= e!1169095 (= lt!710256 call!114625))))

(declare-fun b!1829096 () Bool)

(declare-fun derivativeStep!1304 (Regex!4958 C!10090) Regex!4958)

(assert (=> b!1829096 (= e!1169099 (matchR!2421 (derivativeStep!1304 (regex!3630 rule!559) (head!4269 lt!710188)) (tail!2728 lt!710188)))))

(assert (= (and d!559358 c!298302) b!1829091))

(assert (= (and d!559358 (not c!298302)) b!1829096))

(assert (= (and d!559358 c!298304) b!1829095))

(assert (= (and d!559358 (not c!298304)) b!1829092))

(assert (= (and b!1829092 c!298303) b!1829087))

(assert (= (and b!1829092 (not c!298303)) b!1829088))

(assert (= (and b!1829088 (not res!822543)) b!1829093))

(assert (= (and b!1829093 res!822546) b!1829085))

(assert (= (and b!1829085 res!822542) b!1829086))

(assert (= (and b!1829086 res!822547) b!1829084))

(assert (= (and b!1829093 (not res!822549)) b!1829083))

(assert (= (and b!1829083 res!822545) b!1829090))

(assert (= (and b!1829090 (not res!822548)) b!1829089))

(assert (= (and b!1829089 (not res!822544)) b!1829094))

(assert (= (or b!1829095 b!1829085 b!1829090) bm!114620))

(declare-fun m!2256941 () Bool)

(assert (=> d!559358 m!2256941))

(declare-fun m!2256943 () Bool)

(assert (=> d!559358 m!2256943))

(assert (=> bm!114620 m!2256941))

(declare-fun m!2256945 () Bool)

(assert (=> b!1829091 m!2256945))

(declare-fun m!2256947 () Bool)

(assert (=> b!1829084 m!2256947))

(assert (=> b!1829094 m!2256947))

(assert (=> b!1829096 m!2256947))

(assert (=> b!1829096 m!2256947))

(declare-fun m!2256949 () Bool)

(assert (=> b!1829096 m!2256949))

(declare-fun m!2256953 () Bool)

(assert (=> b!1829096 m!2256953))

(assert (=> b!1829096 m!2256949))

(assert (=> b!1829096 m!2256953))

(declare-fun m!2256955 () Bool)

(assert (=> b!1829096 m!2256955))

(assert (=> b!1829086 m!2256953))

(assert (=> b!1829086 m!2256953))

(declare-fun m!2256958 () Bool)

(assert (=> b!1829086 m!2256958))

(assert (=> b!1829089 m!2256953))

(assert (=> b!1829089 m!2256953))

(assert (=> b!1829089 m!2256958))

(assert (=> b!1828918 d!559358))

(declare-fun d!559364 () Bool)

(declare-fun res!822554 () Bool)

(declare-fun e!1169105 () Bool)

(assert (=> d!559364 (=> (not res!822554) (not e!1169105))))

(assert (=> d!559364 (= res!822554 (validRegex!2020 (regex!3630 rule!559)))))

(assert (=> d!559364 (= (ruleValid!1120 thiss!28068 rule!559) e!1169105)))

(declare-fun b!1829102 () Bool)

(declare-fun res!822555 () Bool)

(assert (=> b!1829102 (=> (not res!822555) (not e!1169105))))

(assert (=> b!1829102 (= res!822555 (not (nullable!1540 (regex!3630 rule!559))))))

(declare-fun b!1829103 () Bool)

(assert (=> b!1829103 (= e!1169105 (not (= (tag!4044 rule!559) (String!22935 ""))))))

(assert (= (and d!559364 res!822554) b!1829102))

(assert (= (and b!1829102 res!822555) b!1829103))

(assert (=> d!559364 m!2256943))

(assert (=> b!1829102 m!2256945))

(assert (=> b!1828918 d!559364))

(declare-fun d!559368 () Bool)

(assert (=> d!559368 (ruleValid!1120 thiss!28068 rule!559)))

(declare-fun lt!710259 () Unit!34764)

(declare-fun choose!11521 (LexerInterface!3259 Rule!7060 List!20167) Unit!34764)

(assert (=> d!559368 (= lt!710259 (choose!11521 thiss!28068 rule!559 rules!4538))))

(assert (=> d!559368 (contains!3699 rules!4538 rule!559)))

(assert (=> d!559368 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!639 thiss!28068 rule!559 rules!4538) lt!710259)))

(declare-fun bs!407731 () Bool)

(assert (= bs!407731 d!559368))

(assert (=> bs!407731 m!2256747))

(declare-fun m!2256961 () Bool)

(assert (=> bs!407731 m!2256961))

(assert (=> bs!407731 m!2256799))

(assert (=> b!1828918 d!559368))

(declare-fun d!559370 () Bool)

(declare-fun res!822561 () Bool)

(declare-fun e!1169111 () Bool)

(assert (=> d!559370 (=> (not res!822561) (not e!1169111))))

(assert (=> d!559370 (= res!822561 (rulesValid!1383 thiss!28068 rules!4538))))

(assert (=> d!559370 (= (rulesInvariant!2928 thiss!28068 rules!4538) e!1169111)))

(declare-fun b!1829109 () Bool)

(declare-datatypes ((List!20173 0))(
  ( (Nil!20103) (Cons!20103 (h!25504 String!22934) (t!170528 List!20173)) )
))
(declare-fun noDuplicateTag!1381 (LexerInterface!3259 List!20167 List!20173) Bool)

(assert (=> b!1829109 (= e!1169111 (noDuplicateTag!1381 thiss!28068 rules!4538 Nil!20103))))

(assert (= (and d!559370 res!822561) b!1829109))

(assert (=> d!559370 m!2256881))

(declare-fun m!2256967 () Bool)

(assert (=> b!1829109 m!2256967))

(assert (=> b!1828929 d!559370))

(declare-fun d!559374 () Bool)

(assert (=> d!559374 (= (inv!26155 (tag!4044 (h!25498 rules!4538))) (= (mod (str.len (value!113122 (tag!4044 (h!25498 rules!4538)))) 2) 0))))

(assert (=> b!1828917 d!559374))

(declare-fun d!559376 () Bool)

(declare-fun res!822562 () Bool)

(declare-fun e!1169112 () Bool)

(assert (=> d!559376 (=> (not res!822562) (not e!1169112))))

(assert (=> d!559376 (= res!822562 (semiInverseModEq!1457 (toChars!5032 (transformation!3630 (h!25498 rules!4538))) (toValue!5173 (transformation!3630 (h!25498 rules!4538)))))))

(assert (=> d!559376 (= (inv!26158 (transformation!3630 (h!25498 rules!4538))) e!1169112)))

(declare-fun b!1829110 () Bool)

(assert (=> b!1829110 (= e!1169112 (equivClasses!1398 (toChars!5032 (transformation!3630 (h!25498 rules!4538))) (toValue!5173 (transformation!3630 (h!25498 rules!4538)))))))

(assert (= (and d!559376 res!822562) b!1829110))

(declare-fun m!2256969 () Bool)

(assert (=> d!559376 m!2256969))

(declare-fun m!2256971 () Bool)

(assert (=> b!1829110 m!2256971))

(assert (=> b!1828917 d!559376))

(declare-fun d!559378 () Bool)

(declare-fun res!822571 () Bool)

(declare-fun e!1169119 () Bool)

(assert (=> d!559378 (=> (not res!822571) (not e!1169119))))

(assert (=> d!559378 (= res!822571 (not (isEmpty!12692 (originalCharacters!4438 token!556))))))

(assert (=> d!559378 (= (inv!26159 token!556) e!1169119)))

(declare-fun b!1829119 () Bool)

(declare-fun res!822572 () Bool)

(assert (=> b!1829119 (=> (not res!822572) (not e!1169119))))

(assert (=> b!1829119 (= res!822572 (= (originalCharacters!4438 token!556) (list!8168 (dynLambda!9993 (toChars!5032 (transformation!3630 (rule!5792 token!556))) (value!113123 token!556)))))))

(declare-fun b!1829120 () Bool)

(assert (=> b!1829120 (= e!1169119 (= (size!15935 token!556) (size!15936 (originalCharacters!4438 token!556))))))

(assert (= (and d!559378 res!822571) b!1829119))

(assert (= (and b!1829119 res!822572) b!1829120))

(declare-fun b_lambda!60455 () Bool)

(assert (=> (not b_lambda!60455) (not b!1829119)))

(assert (=> b!1829119 t!170507))

(declare-fun b_and!142273 () Bool)

(assert (= b_and!142261 (and (=> t!170507 result!134356) b_and!142273)))

(assert (=> b!1829119 t!170509))

(declare-fun b_and!142275 () Bool)

(assert (= b_and!142263 (and (=> t!170509 result!134360) b_and!142275)))

(assert (=> b!1829119 t!170511))

(declare-fun b_and!142277 () Bool)

(assert (= b_and!142265 (and (=> t!170511 result!134362) b_and!142277)))

(declare-fun m!2256973 () Bool)

(assert (=> d!559378 m!2256973))

(assert (=> b!1829119 m!2256917))

(assert (=> b!1829119 m!2256917))

(declare-fun m!2256975 () Bool)

(assert (=> b!1829119 m!2256975))

(declare-fun m!2256977 () Bool)

(assert (=> b!1829120 m!2256977))

(assert (=> start!181456 d!559378))

(declare-fun d!559380 () Bool)

(assert (=> d!559380 (= (maxPrefixOneRule!1168 thiss!28068 rule!559 input!3612) (Some!4209 (tuple2!19573 (Token!6815 (apply!5418 (transformation!3630 rule!559) (seqFromList!2587 lt!710188)) rule!559 (size!15936 lt!710188) lt!710188) suffix!1667)))))

(declare-fun lt!710265 () Unit!34764)

(declare-fun choose!11522 (LexerInterface!3259 List!20167 List!20166 List!20166 List!20166 Rule!7060) Unit!34764)

(assert (=> d!559380 (= lt!710265 (choose!11522 thiss!28068 rules!4538 lt!710188 input!3612 suffix!1667 rule!559))))

(assert (=> d!559380 (not (isEmpty!12690 rules!4538))))

(assert (=> d!559380 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!538 thiss!28068 rules!4538 lt!710188 input!3612 suffix!1667 rule!559) lt!710265)))

(declare-fun bs!407732 () Bool)

(assert (= bs!407732 d!559380))

(assert (=> bs!407732 m!2256795))

(assert (=> bs!407732 m!2256791))

(assert (=> bs!407732 m!2256791))

(assert (=> bs!407732 m!2256793))

(declare-fun m!2256985 () Bool)

(assert (=> bs!407732 m!2256985))

(assert (=> bs!407732 m!2256789))

(assert (=> bs!407732 m!2256787))

(assert (=> b!1828932 d!559380))

(declare-fun b!1829192 () Bool)

(declare-fun res!822628 () Bool)

(declare-fun e!1169157 () Bool)

(assert (=> b!1829192 (=> (not res!822628) (not e!1169157))))

(declare-fun lt!710282 () Option!4210)

(declare-fun get!6209 (Option!4210) tuple2!19572)

(assert (=> b!1829192 (= res!822628 (= (value!113123 (_1!11188 (get!6209 lt!710282))) (apply!5418 (transformation!3630 (rule!5792 (_1!11188 (get!6209 lt!710282)))) (seqFromList!2587 (originalCharacters!4438 (_1!11188 (get!6209 lt!710282)))))))))

(declare-fun b!1829193 () Bool)

(declare-fun e!1169160 () Bool)

(declare-datatypes ((tuple2!19576 0))(
  ( (tuple2!19577 (_1!11190 List!20166) (_2!11190 List!20166)) )
))
(declare-fun findLongestMatchInner!512 (Regex!4958 List!20166 Int List!20166 List!20166 Int) tuple2!19576)

(assert (=> b!1829193 (= e!1169160 (matchR!2421 (regex!3630 rule!559) (_1!11190 (findLongestMatchInner!512 (regex!3630 rule!559) Nil!20096 (size!15936 Nil!20096) input!3612 input!3612 (size!15936 input!3612)))))))

(declare-fun b!1829194 () Bool)

(declare-fun res!822622 () Bool)

(assert (=> b!1829194 (=> (not res!822622) (not e!1169157))))

(assert (=> b!1829194 (= res!822622 (= (++!5454 (list!8168 (charsOf!2273 (_1!11188 (get!6209 lt!710282)))) (_2!11188 (get!6209 lt!710282))) input!3612))))

(declare-fun d!559384 () Bool)

(declare-fun e!1169159 () Bool)

(assert (=> d!559384 e!1169159))

(declare-fun res!822625 () Bool)

(assert (=> d!559384 (=> res!822625 e!1169159)))

(declare-fun isEmpty!12693 (Option!4210) Bool)

(assert (=> d!559384 (= res!822625 (isEmpty!12693 lt!710282))))

(declare-fun e!1169158 () Option!4210)

(assert (=> d!559384 (= lt!710282 e!1169158)))

(declare-fun c!298316 () Bool)

(declare-fun lt!710284 () tuple2!19576)

(assert (=> d!559384 (= c!298316 (isEmpty!12692 (_1!11190 lt!710284)))))

(declare-fun findLongestMatch!439 (Regex!4958 List!20166) tuple2!19576)

(assert (=> d!559384 (= lt!710284 (findLongestMatch!439 (regex!3630 rule!559) input!3612))))

(assert (=> d!559384 (ruleValid!1120 thiss!28068 rule!559)))

(assert (=> d!559384 (= (maxPrefixOneRule!1168 thiss!28068 rule!559 input!3612) lt!710282)))

(declare-fun b!1829195 () Bool)

(assert (=> b!1829195 (= e!1169159 e!1169157)))

(declare-fun res!822627 () Bool)

(assert (=> b!1829195 (=> (not res!822627) (not e!1169157))))

(assert (=> b!1829195 (= res!822627 (matchR!2421 (regex!3630 rule!559) (list!8168 (charsOf!2273 (_1!11188 (get!6209 lt!710282))))))))

(declare-fun b!1829196 () Bool)

(declare-fun res!822626 () Bool)

(assert (=> b!1829196 (=> (not res!822626) (not e!1169157))))

(assert (=> b!1829196 (= res!822626 (< (size!15936 (_2!11188 (get!6209 lt!710282))) (size!15936 input!3612)))))

(declare-fun b!1829197 () Bool)

(declare-fun size!15941 (BalanceConc!13268) Int)

(assert (=> b!1829197 (= e!1169158 (Some!4209 (tuple2!19573 (Token!6815 (apply!5418 (transformation!3630 rule!559) (seqFromList!2587 (_1!11190 lt!710284))) rule!559 (size!15941 (seqFromList!2587 (_1!11190 lt!710284))) (_1!11190 lt!710284)) (_2!11190 lt!710284))))))

(declare-fun lt!710286 () Unit!34764)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!496 (Regex!4958 List!20166) Unit!34764)

(assert (=> b!1829197 (= lt!710286 (longestMatchIsAcceptedByMatchOrIsEmpty!496 (regex!3630 rule!559) input!3612))))

(declare-fun res!822624 () Bool)

(assert (=> b!1829197 (= res!822624 (isEmpty!12692 (_1!11190 (findLongestMatchInner!512 (regex!3630 rule!559) Nil!20096 (size!15936 Nil!20096) input!3612 input!3612 (size!15936 input!3612)))))))

(assert (=> b!1829197 (=> res!822624 e!1169160)))

(assert (=> b!1829197 e!1169160))

(declare-fun lt!710285 () Unit!34764)

(assert (=> b!1829197 (= lt!710285 lt!710286)))

(declare-fun lt!710283 () Unit!34764)

(declare-fun lemmaSemiInverse!726 (TokenValueInjection!7100 BalanceConc!13268) Unit!34764)

(assert (=> b!1829197 (= lt!710283 (lemmaSemiInverse!726 (transformation!3630 rule!559) (seqFromList!2587 (_1!11190 lt!710284))))))

(declare-fun b!1829198 () Bool)

(assert (=> b!1829198 (= e!1169157 (= (size!15935 (_1!11188 (get!6209 lt!710282))) (size!15936 (originalCharacters!4438 (_1!11188 (get!6209 lt!710282))))))))

(declare-fun b!1829199 () Bool)

(assert (=> b!1829199 (= e!1169158 None!4209)))

(declare-fun b!1829200 () Bool)

(declare-fun res!822623 () Bool)

(assert (=> b!1829200 (=> (not res!822623) (not e!1169157))))

(assert (=> b!1829200 (= res!822623 (= (rule!5792 (_1!11188 (get!6209 lt!710282))) rule!559))))

(assert (= (and d!559384 c!298316) b!1829199))

(assert (= (and d!559384 (not c!298316)) b!1829197))

(assert (= (and b!1829197 (not res!822624)) b!1829193))

(assert (= (and d!559384 (not res!822625)) b!1829195))

(assert (= (and b!1829195 res!822627) b!1829194))

(assert (= (and b!1829194 res!822622) b!1829196))

(assert (= (and b!1829196 res!822626) b!1829200))

(assert (= (and b!1829200 res!822623) b!1829192))

(assert (= (and b!1829192 res!822628) b!1829198))

(declare-fun m!2257009 () Bool)

(assert (=> b!1829194 m!2257009))

(declare-fun m!2257011 () Bool)

(assert (=> b!1829194 m!2257011))

(assert (=> b!1829194 m!2257011))

(declare-fun m!2257013 () Bool)

(assert (=> b!1829194 m!2257013))

(assert (=> b!1829194 m!2257013))

(declare-fun m!2257015 () Bool)

(assert (=> b!1829194 m!2257015))

(declare-fun m!2257017 () Bool)

(assert (=> d!559384 m!2257017))

(declare-fun m!2257019 () Bool)

(assert (=> d!559384 m!2257019))

(declare-fun m!2257021 () Bool)

(assert (=> d!559384 m!2257021))

(assert (=> d!559384 m!2256747))

(declare-fun m!2257023 () Bool)

(assert (=> b!1829193 m!2257023))

(declare-fun m!2257025 () Bool)

(assert (=> b!1829193 m!2257025))

(assert (=> b!1829193 m!2257023))

(assert (=> b!1829193 m!2257025))

(declare-fun m!2257027 () Bool)

(assert (=> b!1829193 m!2257027))

(declare-fun m!2257029 () Bool)

(assert (=> b!1829193 m!2257029))

(assert (=> b!1829198 m!2257009))

(declare-fun m!2257031 () Bool)

(assert (=> b!1829198 m!2257031))

(assert (=> b!1829195 m!2257009))

(assert (=> b!1829195 m!2257011))

(assert (=> b!1829195 m!2257011))

(assert (=> b!1829195 m!2257013))

(assert (=> b!1829195 m!2257013))

(declare-fun m!2257033 () Bool)

(assert (=> b!1829195 m!2257033))

(assert (=> b!1829192 m!2257009))

(declare-fun m!2257035 () Bool)

(assert (=> b!1829192 m!2257035))

(assert (=> b!1829192 m!2257035))

(declare-fun m!2257037 () Bool)

(assert (=> b!1829192 m!2257037))

(declare-fun m!2257039 () Bool)

(assert (=> b!1829197 m!2257039))

(declare-fun m!2257041 () Bool)

(assert (=> b!1829197 m!2257041))

(assert (=> b!1829197 m!2257025))

(declare-fun m!2257043 () Bool)

(assert (=> b!1829197 m!2257043))

(assert (=> b!1829197 m!2257023))

(assert (=> b!1829197 m!2257025))

(assert (=> b!1829197 m!2257027))

(assert (=> b!1829197 m!2257039))

(assert (=> b!1829197 m!2257023))

(declare-fun m!2257045 () Bool)

(assert (=> b!1829197 m!2257045))

(assert (=> b!1829197 m!2257039))

(declare-fun m!2257047 () Bool)

(assert (=> b!1829197 m!2257047))

(assert (=> b!1829197 m!2257039))

(declare-fun m!2257049 () Bool)

(assert (=> b!1829197 m!2257049))

(assert (=> b!1829200 m!2257009))

(assert (=> b!1829196 m!2257009))

(declare-fun m!2257051 () Bool)

(assert (=> b!1829196 m!2257051))

(assert (=> b!1829196 m!2257025))

(assert (=> b!1828932 d!559384))

(declare-fun d!559396 () Bool)

(declare-fun fromListB!1183 (List!20166) BalanceConc!13268)

(assert (=> d!559396 (= (seqFromList!2587 lt!710188) (fromListB!1183 lt!710188))))

(declare-fun bs!407734 () Bool)

(assert (= bs!407734 d!559396))

(declare-fun m!2257053 () Bool)

(assert (=> bs!407734 m!2257053))

(assert (=> b!1828932 d!559396))

(declare-fun d!559398 () Bool)

(declare-fun lt!710289 () Int)

(assert (=> d!559398 (>= lt!710289 0)))

(declare-fun e!1169163 () Int)

(assert (=> d!559398 (= lt!710289 e!1169163)))

(declare-fun c!298319 () Bool)

(assert (=> d!559398 (= c!298319 (is-Nil!20096 lt!710188))))

(assert (=> d!559398 (= (size!15936 lt!710188) lt!710289)))

(declare-fun b!1829205 () Bool)

(assert (=> b!1829205 (= e!1169163 0)))

(declare-fun b!1829206 () Bool)

(assert (=> b!1829206 (= e!1169163 (+ 1 (size!15936 (t!170499 lt!710188))))))

(assert (= (and d!559398 c!298319) b!1829205))

(assert (= (and d!559398 (not c!298319)) b!1829206))

(declare-fun m!2257055 () Bool)

(assert (=> b!1829206 m!2257055))

(assert (=> b!1828932 d!559398))

(declare-fun d!559400 () Bool)

(declare-fun dynLambda!9994 (Int BalanceConc!13268) TokenValue!3720)

(assert (=> d!559400 (= (apply!5418 (transformation!3630 rule!559) (seqFromList!2587 lt!710188)) (dynLambda!9994 (toValue!5173 (transformation!3630 rule!559)) (seqFromList!2587 lt!710188)))))

(declare-fun b_lambda!60457 () Bool)

(assert (=> (not b_lambda!60457) (not d!559400)))

(declare-fun tb!111733 () Bool)

(declare-fun t!170519 () Bool)

(assert (=> (and b!1828936 (= (toValue!5173 (transformation!3630 (rule!5792 token!556))) (toValue!5173 (transformation!3630 rule!559))) t!170519) tb!111733))

(declare-fun result!134372 () Bool)

(assert (=> tb!111733 (= result!134372 (inv!21 (dynLambda!9994 (toValue!5173 (transformation!3630 rule!559)) (seqFromList!2587 lt!710188))))))

(declare-fun m!2257057 () Bool)

(assert (=> tb!111733 m!2257057))

(assert (=> d!559400 t!170519))

(declare-fun b_and!142279 () Bool)

(assert (= b_and!142237 (and (=> t!170519 result!134372) b_and!142279)))

(declare-fun tb!111735 () Bool)

(declare-fun t!170521 () Bool)

(assert (=> (and b!1828921 (= (toValue!5173 (transformation!3630 (h!25498 rules!4538))) (toValue!5173 (transformation!3630 rule!559))) t!170521) tb!111735))

(declare-fun result!134376 () Bool)

(assert (= result!134376 result!134372))

(assert (=> d!559400 t!170521))

(declare-fun b_and!142281 () Bool)

(assert (= b_and!142241 (and (=> t!170521 result!134376) b_and!142281)))

(declare-fun t!170523 () Bool)

(declare-fun tb!111737 () Bool)

(assert (=> (and b!1828920 (= (toValue!5173 (transformation!3630 rule!559)) (toValue!5173 (transformation!3630 rule!559))) t!170523) tb!111737))

(declare-fun result!134378 () Bool)

(assert (= result!134378 result!134372))

(assert (=> d!559400 t!170523))

(declare-fun b_and!142283 () Bool)

(assert (= b_and!142245 (and (=> t!170523 result!134378) b_and!142283)))

(assert (=> d!559400 m!2256791))

(declare-fun m!2257059 () Bool)

(assert (=> d!559400 m!2257059))

(assert (=> b!1828932 d!559400))

(declare-fun d!559402 () Bool)

(declare-fun lt!710292 () Bool)

(declare-fun content!2974 (List!20167) (Set Rule!7060))

(assert (=> d!559402 (= lt!710292 (set.member rule!559 (content!2974 rules!4538)))))

(declare-fun e!1169172 () Bool)

(assert (=> d!559402 (= lt!710292 e!1169172)))

(declare-fun res!822634 () Bool)

(assert (=> d!559402 (=> (not res!822634) (not e!1169172))))

(assert (=> d!559402 (= res!822634 (is-Cons!20097 rules!4538))))

(assert (=> d!559402 (= (contains!3699 rules!4538 rule!559) lt!710292)))

(declare-fun b!1829213 () Bool)

(declare-fun e!1169171 () Bool)

(assert (=> b!1829213 (= e!1169172 e!1169171)))

(declare-fun res!822633 () Bool)

(assert (=> b!1829213 (=> res!822633 e!1169171)))

(assert (=> b!1829213 (= res!822633 (= (h!25498 rules!4538) rule!559))))

(declare-fun b!1829214 () Bool)

(assert (=> b!1829214 (= e!1169171 (contains!3699 (t!170500 rules!4538) rule!559))))

(assert (= (and d!559402 res!822634) b!1829213))

(assert (= (and b!1829213 (not res!822633)) b!1829214))

(declare-fun m!2257061 () Bool)

(assert (=> d!559402 m!2257061))

(declare-fun m!2257063 () Bool)

(assert (=> d!559402 m!2257063))

(declare-fun m!2257065 () Bool)

(assert (=> b!1829214 m!2257065))

(assert (=> b!1828931 d!559402))

(declare-fun b!1829225 () Bool)

(declare-fun e!1169180 () Bool)

(declare-fun inv!15 (TokenValue!3720) Bool)

(assert (=> b!1829225 (= e!1169180 (inv!15 (value!113123 token!556)))))

(declare-fun b!1829226 () Bool)

(declare-fun e!1169179 () Bool)

(declare-fun e!1169181 () Bool)

(assert (=> b!1829226 (= e!1169179 e!1169181)))

(declare-fun c!298325 () Bool)

(assert (=> b!1829226 (= c!298325 (is-IntegerValue!11161 (value!113123 token!556)))))

(declare-fun b!1829227 () Bool)

(declare-fun inv!16 (TokenValue!3720) Bool)

(assert (=> b!1829227 (= e!1169179 (inv!16 (value!113123 token!556)))))

(declare-fun b!1829229 () Bool)

(declare-fun res!822637 () Bool)

(assert (=> b!1829229 (=> res!822637 e!1169180)))

(assert (=> b!1829229 (= res!822637 (not (is-IntegerValue!11162 (value!113123 token!556))))))

(assert (=> b!1829229 (= e!1169181 e!1169180)))

(declare-fun d!559404 () Bool)

(declare-fun c!298324 () Bool)

(assert (=> d!559404 (= c!298324 (is-IntegerValue!11160 (value!113123 token!556)))))

(assert (=> d!559404 (= (inv!21 (value!113123 token!556)) e!1169179)))

(declare-fun b!1829228 () Bool)

(declare-fun inv!17 (TokenValue!3720) Bool)

(assert (=> b!1829228 (= e!1169181 (inv!17 (value!113123 token!556)))))

(assert (= (and d!559404 c!298324) b!1829227))

(assert (= (and d!559404 (not c!298324)) b!1829226))

(assert (= (and b!1829226 c!298325) b!1829228))

(assert (= (and b!1829226 (not c!298325)) b!1829229))

(assert (= (and b!1829229 (not res!822637)) b!1829225))

(declare-fun m!2257067 () Bool)

(assert (=> b!1829225 m!2257067))

(declare-fun m!2257069 () Bool)

(assert (=> b!1829227 m!2257069))

(declare-fun m!2257071 () Bool)

(assert (=> b!1829228 m!2257071))

(assert (=> b!1828934 d!559404))

(declare-fun d!559406 () Bool)

(declare-fun res!822642 () Bool)

(declare-fun e!1169186 () Bool)

(assert (=> d!559406 (=> res!822642 e!1169186)))

(assert (=> d!559406 (= res!822642 (is-Nil!20098 lt!710182))))

(assert (=> d!559406 (= (forall!4326 lt!710182 lambda!71780) e!1169186)))

(declare-fun b!1829234 () Bool)

(declare-fun e!1169187 () Bool)

(assert (=> b!1829234 (= e!1169186 e!1169187)))

(declare-fun res!822643 () Bool)

(assert (=> b!1829234 (=> (not res!822643) (not e!1169187))))

(declare-fun dynLambda!9995 (Int Regex!4958) Bool)

(assert (=> b!1829234 (= res!822643 (dynLambda!9995 lambda!71780 (h!25499 lt!710182)))))

(declare-fun b!1829235 () Bool)

(assert (=> b!1829235 (= e!1169187 (forall!4326 (t!170501 lt!710182) lambda!71780))))

(assert (= (and d!559406 (not res!822642)) b!1829234))

(assert (= (and b!1829234 res!822643) b!1829235))

(declare-fun b_lambda!60459 () Bool)

(assert (=> (not b_lambda!60459) (not b!1829234)))

(declare-fun m!2257073 () Bool)

(assert (=> b!1829234 m!2257073))

(declare-fun m!2257075 () Bool)

(assert (=> b!1829235 m!2257075))

(assert (=> b!1828924 d!559406))

(declare-fun b!1829272 () Bool)

(declare-fun e!1169201 () Option!4210)

(declare-fun lt!710316 () Option!4210)

(declare-fun lt!710313 () Option!4210)

(assert (=> b!1829272 (= e!1169201 (ite (and (is-None!4209 lt!710316) (is-None!4209 lt!710313)) None!4209 (ite (is-None!4209 lt!710313) lt!710316 (ite (is-None!4209 lt!710316) lt!710313 (ite (>= (size!15935 (_1!11188 (v!25776 lt!710316))) (size!15935 (_1!11188 (v!25776 lt!710313)))) lt!710316 lt!710313)))))))

(declare-fun call!114633 () Option!4210)

(assert (=> b!1829272 (= lt!710316 call!114633)))

(assert (=> b!1829272 (= lt!710313 (maxPrefix!1807 thiss!28068 (t!170500 rules!4538) input!3612))))

(declare-fun b!1829273 () Bool)

(declare-fun res!822672 () Bool)

(declare-fun e!1169202 () Bool)

(assert (=> b!1829273 (=> (not res!822672) (not e!1169202))))

(declare-fun lt!710317 () Option!4210)

(assert (=> b!1829273 (= res!822672 (matchR!2421 (regex!3630 (rule!5792 (_1!11188 (get!6209 lt!710317)))) (list!8168 (charsOf!2273 (_1!11188 (get!6209 lt!710317))))))))

(declare-fun b!1829274 () Bool)

(declare-fun res!822677 () Bool)

(assert (=> b!1829274 (=> (not res!822677) (not e!1169202))))

(assert (=> b!1829274 (= res!822677 (= (value!113123 (_1!11188 (get!6209 lt!710317))) (apply!5418 (transformation!3630 (rule!5792 (_1!11188 (get!6209 lt!710317)))) (seqFromList!2587 (originalCharacters!4438 (_1!11188 (get!6209 lt!710317)))))))))

(declare-fun b!1829275 () Bool)

(declare-fun res!822673 () Bool)

(assert (=> b!1829275 (=> (not res!822673) (not e!1169202))))

(assert (=> b!1829275 (= res!822673 (= (list!8168 (charsOf!2273 (_1!11188 (get!6209 lt!710317)))) (originalCharacters!4438 (_1!11188 (get!6209 lt!710317)))))))

(declare-fun bm!114628 () Bool)

(assert (=> bm!114628 (= call!114633 (maxPrefixOneRule!1168 thiss!28068 (h!25498 rules!4538) input!3612))))

(declare-fun b!1829276 () Bool)

(declare-fun res!822674 () Bool)

(assert (=> b!1829276 (=> (not res!822674) (not e!1169202))))

(assert (=> b!1829276 (= res!822674 (< (size!15936 (_2!11188 (get!6209 lt!710317))) (size!15936 input!3612)))))

(declare-fun b!1829277 () Bool)

(assert (=> b!1829277 (= e!1169202 (contains!3699 rules!4538 (rule!5792 (_1!11188 (get!6209 lt!710317)))))))

(declare-fun b!1829278 () Bool)

(declare-fun res!822678 () Bool)

(assert (=> b!1829278 (=> (not res!822678) (not e!1169202))))

(assert (=> b!1829278 (= res!822678 (= (++!5454 (list!8168 (charsOf!2273 (_1!11188 (get!6209 lt!710317)))) (_2!11188 (get!6209 lt!710317))) input!3612))))

(declare-fun d!559408 () Bool)

(declare-fun e!1169200 () Bool)

(assert (=> d!559408 e!1169200))

(declare-fun res!822675 () Bool)

(assert (=> d!559408 (=> res!822675 e!1169200)))

(assert (=> d!559408 (= res!822675 (isEmpty!12693 lt!710317))))

(assert (=> d!559408 (= lt!710317 e!1169201)))

(declare-fun c!298330 () Bool)

(assert (=> d!559408 (= c!298330 (and (is-Cons!20097 rules!4538) (is-Nil!20097 (t!170500 rules!4538))))))

(declare-fun lt!710314 () Unit!34764)

(declare-fun lt!710315 () Unit!34764)

(assert (=> d!559408 (= lt!710314 lt!710315)))

(declare-fun isPrefix!1832 (List!20166 List!20166) Bool)

(assert (=> d!559408 (isPrefix!1832 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1209 (List!20166 List!20166) Unit!34764)

(assert (=> d!559408 (= lt!710315 (lemmaIsPrefixRefl!1209 input!3612 input!3612))))

(declare-fun rulesValidInductive!1251 (LexerInterface!3259 List!20167) Bool)

(assert (=> d!559408 (rulesValidInductive!1251 thiss!28068 rules!4538)))

(assert (=> d!559408 (= (maxPrefix!1807 thiss!28068 rules!4538 input!3612) lt!710317)))

(declare-fun b!1829279 () Bool)

(assert (=> b!1829279 (= e!1169200 e!1169202)))

(declare-fun res!822676 () Bool)

(assert (=> b!1829279 (=> (not res!822676) (not e!1169202))))

(declare-fun isDefined!3519 (Option!4210) Bool)

(assert (=> b!1829279 (= res!822676 (isDefined!3519 lt!710317))))

(declare-fun b!1829280 () Bool)

(assert (=> b!1829280 (= e!1169201 call!114633)))

(assert (= (and d!559408 c!298330) b!1829280))

(assert (= (and d!559408 (not c!298330)) b!1829272))

(assert (= (or b!1829280 b!1829272) bm!114628))

(assert (= (and d!559408 (not res!822675)) b!1829279))

(assert (= (and b!1829279 res!822676) b!1829275))

(assert (= (and b!1829275 res!822673) b!1829276))

(assert (= (and b!1829276 res!822674) b!1829278))

(assert (= (and b!1829278 res!822678) b!1829274))

(assert (= (and b!1829274 res!822677) b!1829273))

(assert (= (and b!1829273 res!822672) b!1829277))

(declare-fun m!2257077 () Bool)

(assert (=> b!1829274 m!2257077))

(declare-fun m!2257079 () Bool)

(assert (=> b!1829274 m!2257079))

(assert (=> b!1829274 m!2257079))

(declare-fun m!2257081 () Bool)

(assert (=> b!1829274 m!2257081))

(assert (=> b!1829277 m!2257077))

(declare-fun m!2257083 () Bool)

(assert (=> b!1829277 m!2257083))

(declare-fun m!2257085 () Bool)

(assert (=> bm!114628 m!2257085))

(declare-fun m!2257087 () Bool)

(assert (=> b!1829279 m!2257087))

(declare-fun m!2257089 () Bool)

(assert (=> b!1829272 m!2257089))

(assert (=> b!1829276 m!2257077))

(declare-fun m!2257091 () Bool)

(assert (=> b!1829276 m!2257091))

(assert (=> b!1829276 m!2257025))

(assert (=> b!1829273 m!2257077))

(declare-fun m!2257093 () Bool)

(assert (=> b!1829273 m!2257093))

(assert (=> b!1829273 m!2257093))

(declare-fun m!2257095 () Bool)

(assert (=> b!1829273 m!2257095))

(assert (=> b!1829273 m!2257095))

(declare-fun m!2257097 () Bool)

(assert (=> b!1829273 m!2257097))

(assert (=> b!1829278 m!2257077))

(assert (=> b!1829278 m!2257093))

(assert (=> b!1829278 m!2257093))

(assert (=> b!1829278 m!2257095))

(assert (=> b!1829278 m!2257095))

(declare-fun m!2257099 () Bool)

(assert (=> b!1829278 m!2257099))

(assert (=> b!1829275 m!2257077))

(assert (=> b!1829275 m!2257093))

(assert (=> b!1829275 m!2257093))

(assert (=> b!1829275 m!2257095))

(declare-fun m!2257101 () Bool)

(assert (=> d!559408 m!2257101))

(declare-fun m!2257103 () Bool)

(assert (=> d!559408 m!2257103))

(declare-fun m!2257105 () Bool)

(assert (=> d!559408 m!2257105))

(declare-fun m!2257107 () Bool)

(assert (=> d!559408 m!2257107))

(assert (=> b!1828922 d!559408))

(declare-fun bs!407735 () Bool)

(declare-fun d!559410 () Bool)

(assert (= bs!407735 (and d!559410 b!1828933)))

(declare-fun lambda!71794 () Int)

(assert (=> bs!407735 (= lambda!71794 lambda!71779)))

(declare-fun bs!407736 () Bool)

(assert (= bs!407736 (and d!559410 d!559342)))

(assert (=> bs!407736 (= lambda!71794 lambda!71791)))

(declare-fun lt!710320 () Unit!34764)

(declare-fun lemma!517 (List!20167 LexerInterface!3259 List!20167) Unit!34764)

(assert (=> d!559410 (= lt!710320 (lemma!517 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!559410 (= (rulesRegex!950 thiss!28068 rules!4538) (generalisedUnion!473 (map!4164 rules!4538 lambda!71794)))))

(declare-fun bs!407737 () Bool)

(assert (= bs!407737 d!559410))

(declare-fun m!2257109 () Bool)

(assert (=> bs!407737 m!2257109))

(declare-fun m!2257111 () Bool)

(assert (=> bs!407737 m!2257111))

(assert (=> bs!407737 m!2257111))

(declare-fun m!2257113 () Bool)

(assert (=> bs!407737 m!2257113))

(assert (=> b!1828933 d!559410))

(declare-fun bs!407738 () Bool)

(declare-fun d!559412 () Bool)

(assert (= bs!407738 (and d!559412 b!1828924)))

(declare-fun lambda!71797 () Int)

(assert (=> bs!407738 (= lambda!71797 lambda!71780)))

(declare-fun b!1829310 () Bool)

(declare-fun e!1169218 () Bool)

(declare-fun lt!710328 () Regex!4958)

(declare-fun isUnion!122 (Regex!4958) Bool)

(assert (=> b!1829310 (= e!1169218 (isUnion!122 lt!710328))))

(declare-fun b!1829311 () Bool)

(declare-fun e!1169219 () Bool)

(declare-fun isEmptyLang!122 (Regex!4958) Bool)

(assert (=> b!1829311 (= e!1169219 (isEmptyLang!122 lt!710328))))

(declare-fun b!1829312 () Bool)

(declare-fun head!4270 (List!20168) Regex!4958)

(assert (=> b!1829312 (= e!1169218 (= lt!710328 (head!4270 (map!4164 rules!4538 lambda!71779))))))

(declare-fun b!1829313 () Bool)

(declare-fun e!1169220 () Regex!4958)

(assert (=> b!1829313 (= e!1169220 (Union!4958 (h!25499 (map!4164 rules!4538 lambda!71779)) (generalisedUnion!473 (t!170501 (map!4164 rules!4538 lambda!71779)))))))

(declare-fun b!1829314 () Bool)

(assert (=> b!1829314 (= e!1169219 e!1169218)))

(declare-fun c!298340 () Bool)

(declare-fun isEmpty!12694 (List!20168) Bool)

(declare-fun tail!2729 (List!20168) List!20168)

(assert (=> b!1829314 (= c!298340 (isEmpty!12694 (tail!2729 (map!4164 rules!4538 lambda!71779))))))

(declare-fun e!1169223 () Bool)

(assert (=> d!559412 e!1169223))

(declare-fun res!822691 () Bool)

(assert (=> d!559412 (=> (not res!822691) (not e!1169223))))

(assert (=> d!559412 (= res!822691 (validRegex!2020 lt!710328))))

(declare-fun e!1169222 () Regex!4958)

(assert (=> d!559412 (= lt!710328 e!1169222)))

(declare-fun c!298341 () Bool)

(declare-fun e!1169221 () Bool)

(assert (=> d!559412 (= c!298341 e!1169221)))

(declare-fun res!822690 () Bool)

(assert (=> d!559412 (=> (not res!822690) (not e!1169221))))

(assert (=> d!559412 (= res!822690 (is-Cons!20098 (map!4164 rules!4538 lambda!71779)))))

(assert (=> d!559412 (forall!4326 (map!4164 rules!4538 lambda!71779) lambda!71797)))

(assert (=> d!559412 (= (generalisedUnion!473 (map!4164 rules!4538 lambda!71779)) lt!710328)))

(declare-fun b!1829315 () Bool)

(assert (=> b!1829315 (= e!1169223 e!1169219)))

(declare-fun c!298342 () Bool)

(assert (=> b!1829315 (= c!298342 (isEmpty!12694 (map!4164 rules!4538 lambda!71779)))))

(declare-fun b!1829316 () Bool)

(assert (=> b!1829316 (= e!1169222 (h!25499 (map!4164 rules!4538 lambda!71779)))))

(declare-fun b!1829317 () Bool)

(assert (=> b!1829317 (= e!1169220 EmptyLang!4958)))

(declare-fun b!1829318 () Bool)

(assert (=> b!1829318 (= e!1169222 e!1169220)))

(declare-fun c!298343 () Bool)

(assert (=> b!1829318 (= c!298343 (is-Cons!20098 (map!4164 rules!4538 lambda!71779)))))

(declare-fun b!1829319 () Bool)

(assert (=> b!1829319 (= e!1169221 (isEmpty!12694 (t!170501 (map!4164 rules!4538 lambda!71779))))))

(assert (= (and d!559412 res!822690) b!1829319))

(assert (= (and d!559412 c!298341) b!1829316))

(assert (= (and d!559412 (not c!298341)) b!1829318))

(assert (= (and b!1829318 c!298343) b!1829313))

(assert (= (and b!1829318 (not c!298343)) b!1829317))

(assert (= (and d!559412 res!822691) b!1829315))

(assert (= (and b!1829315 c!298342) b!1829311))

(assert (= (and b!1829315 (not c!298342)) b!1829314))

(assert (= (and b!1829314 c!298340) b!1829312))

(assert (= (and b!1829314 (not c!298340)) b!1829310))

(assert (=> b!1829314 m!2256753))

(declare-fun m!2257149 () Bool)

(assert (=> b!1829314 m!2257149))

(assert (=> b!1829314 m!2257149))

(declare-fun m!2257151 () Bool)

(assert (=> b!1829314 m!2257151))

(declare-fun m!2257153 () Bool)

(assert (=> b!1829310 m!2257153))

(declare-fun m!2257155 () Bool)

(assert (=> b!1829319 m!2257155))

(assert (=> b!1829315 m!2256753))

(declare-fun m!2257157 () Bool)

(assert (=> b!1829315 m!2257157))

(assert (=> b!1829312 m!2256753))

(declare-fun m!2257159 () Bool)

(assert (=> b!1829312 m!2257159))

(declare-fun m!2257161 () Bool)

(assert (=> d!559412 m!2257161))

(assert (=> d!559412 m!2256753))

(declare-fun m!2257163 () Bool)

(assert (=> d!559412 m!2257163))

(declare-fun m!2257165 () Bool)

(assert (=> b!1829311 m!2257165))

(declare-fun m!2257167 () Bool)

(assert (=> b!1829313 m!2257167))

(assert (=> b!1828933 d!559412))

(assert (=> b!1828933 d!559340))

(declare-fun bs!407739 () Bool)

(declare-fun d!559416 () Bool)

(assert (= bs!407739 (and d!559416 b!1828933)))

(declare-fun lambda!71802 () Int)

(assert (=> bs!407739 (= lambda!71802 lambda!71779)))

(declare-fun bs!407740 () Bool)

(assert (= bs!407740 (and d!559416 d!559342)))

(assert (=> bs!407740 (= lambda!71802 lambda!71791)))

(declare-fun bs!407741 () Bool)

(assert (= bs!407741 (and d!559416 d!559410)))

(assert (=> bs!407741 (= lambda!71802 lambda!71794)))

(declare-fun bs!407742 () Bool)

(assert (= bs!407742 (and d!559416 b!1828924)))

(declare-fun lambda!71803 () Int)

(assert (=> bs!407742 (= lambda!71803 lambda!71780)))

(declare-fun bs!407743 () Bool)

(assert (= bs!407743 (and d!559416 d!559412)))

(assert (=> bs!407743 (= lambda!71803 lambda!71797)))

(assert (=> d!559416 (forall!4326 (map!4164 rules!4538 lambda!71802) lambda!71803)))

(declare-fun lt!710345 () Unit!34764)

(declare-fun e!1169235 () Unit!34764)

(assert (=> d!559416 (= lt!710345 e!1169235)))

(declare-fun c!298349 () Bool)

(assert (=> d!559416 (= c!298349 (is-Nil!20097 rules!4538))))

(assert (=> d!559416 (rulesValid!1383 thiss!28068 rules!4538)))

(declare-fun lt!710349 () Unit!34764)

(declare-fun lt!710347 () Unit!34764)

(assert (=> d!559416 (= lt!710349 lt!710347)))

(declare-fun lt!710348 () List!20166)

(assert (=> d!559416 (= (maxPrefixOneRule!1168 thiss!28068 rule!559 input!3612) (Some!4209 (tuple2!19573 (Token!6815 (apply!5418 (transformation!3630 rule!559) (seqFromList!2587 lt!710348)) rule!559 (size!15936 lt!710348) lt!710348) suffix!1667)))))

(assert (=> d!559416 (= lt!710347 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!538 thiss!28068 rules!4538 lt!710348 input!3612 suffix!1667 rule!559))))

(assert (=> d!559416 (= lt!710348 (list!8168 (charsOf!2273 token!556)))))

(assert (=> d!559416 (= (lemma!514 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!710345)))

(declare-fun b!1829336 () Bool)

(declare-fun Unit!34770 () Unit!34764)

(assert (=> b!1829336 (= e!1169235 Unit!34770)))

(declare-fun b!1829337 () Bool)

(declare-fun Unit!34771 () Unit!34764)

(assert (=> b!1829337 (= e!1169235 Unit!34771)))

(declare-fun lt!710346 () Unit!34764)

(assert (=> b!1829337 (= lt!710346 (lemma!514 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170500 rules!4538)))))

(assert (= (and d!559416 c!298349) b!1829336))

(assert (= (and d!559416 (not c!298349)) b!1829337))

(assert (=> d!559416 m!2256795))

(assert (=> d!559416 m!2256763))

(declare-fun m!2257185 () Bool)

(assert (=> d!559416 m!2257185))

(assert (=> d!559416 m!2257185))

(declare-fun m!2257187 () Bool)

(assert (=> d!559416 m!2257187))

(declare-fun m!2257189 () Bool)

(assert (=> d!559416 m!2257189))

(declare-fun m!2257191 () Bool)

(assert (=> d!559416 m!2257191))

(declare-fun m!2257193 () Bool)

(assert (=> d!559416 m!2257193))

(declare-fun m!2257195 () Bool)

(assert (=> d!559416 m!2257195))

(assert (=> d!559416 m!2256881))

(assert (=> d!559416 m!2257189))

(assert (=> d!559416 m!2256763))

(assert (=> d!559416 m!2256765))

(declare-fun m!2257197 () Bool)

(assert (=> b!1829337 m!2257197))

(assert (=> b!1828933 d!559416))

(declare-fun d!559422 () Bool)

(assert (=> d!559422 (= (inv!26155 (tag!4044 rule!559)) (= (mod (str.len (value!113122 (tag!4044 rule!559))) 2) 0))))

(assert (=> b!1828923 d!559422))

(declare-fun d!559424 () Bool)

(declare-fun res!822698 () Bool)

(declare-fun e!1169236 () Bool)

(assert (=> d!559424 (=> (not res!822698) (not e!1169236))))

(assert (=> d!559424 (= res!822698 (semiInverseModEq!1457 (toChars!5032 (transformation!3630 rule!559)) (toValue!5173 (transformation!3630 rule!559))))))

(assert (=> d!559424 (= (inv!26158 (transformation!3630 rule!559)) e!1169236)))

(declare-fun b!1829338 () Bool)

(assert (=> b!1829338 (= e!1169236 (equivClasses!1398 (toChars!5032 (transformation!3630 rule!559)) (toValue!5173 (transformation!3630 rule!559))))))

(assert (= (and d!559424 res!822698) b!1829338))

(declare-fun m!2257199 () Bool)

(assert (=> d!559424 m!2257199))

(declare-fun m!2257201 () Bool)

(assert (=> b!1829338 m!2257201))

(assert (=> b!1828923 d!559424))

(declare-fun b!1829349 () Bool)

(declare-fun b_free!51067 () Bool)

(declare-fun b_next!51771 () Bool)

(assert (=> b!1829349 (= b_free!51067 (not b_next!51771))))

(declare-fun t!170525 () Bool)

(declare-fun tb!111739 () Bool)

(assert (=> (and b!1829349 (= (toValue!5173 (transformation!3630 (h!25498 (t!170500 rules!4538)))) (toValue!5173 (transformation!3630 rule!559))) t!170525) tb!111739))

(declare-fun result!134382 () Bool)

(assert (= result!134382 result!134372))

(assert (=> d!559400 t!170525))

(declare-fun b_and!142285 () Bool)

(declare-fun tp!517439 () Bool)

(assert (=> b!1829349 (= tp!517439 (and (=> t!170525 result!134382) b_and!142285))))

(declare-fun b_free!51069 () Bool)

(declare-fun b_next!51773 () Bool)

(assert (=> b!1829349 (= b_free!51069 (not b_next!51773))))

(declare-fun tb!111741 () Bool)

(declare-fun t!170527 () Bool)

(assert (=> (and b!1829349 (= (toChars!5032 (transformation!3630 (h!25498 (t!170500 rules!4538)))) (toChars!5032 (transformation!3630 (rule!5792 token!556)))) t!170527) tb!111741))

(declare-fun result!134384 () Bool)

(assert (= result!134384 result!134356))

(assert (=> d!559350 t!170527))

(assert (=> b!1829119 t!170527))

(declare-fun b_and!142287 () Bool)

(declare-fun tp!517441 () Bool)

(assert (=> b!1829349 (= tp!517441 (and (=> t!170527 result!134384) b_and!142287))))

(declare-fun e!1169246 () Bool)

(assert (=> b!1829349 (= e!1169246 (and tp!517439 tp!517441))))

(declare-fun e!1169248 () Bool)

(declare-fun tp!517442 () Bool)

(declare-fun b!1829348 () Bool)

(assert (=> b!1829348 (= e!1169248 (and tp!517442 (inv!26155 (tag!4044 (h!25498 (t!170500 rules!4538)))) (inv!26158 (transformation!3630 (h!25498 (t!170500 rules!4538)))) e!1169246))))

(declare-fun b!1829347 () Bool)

(declare-fun e!1169247 () Bool)

(declare-fun tp!517440 () Bool)

(assert (=> b!1829347 (= e!1169247 (and e!1169248 tp!517440))))

(assert (=> b!1828930 (= tp!517384 e!1169247)))

(assert (= b!1829348 b!1829349))

(assert (= b!1829347 b!1829348))

(assert (= (and b!1828930 (is-Cons!20097 (t!170500 rules!4538))) b!1829347))

(declare-fun m!2257203 () Bool)

(assert (=> b!1829348 m!2257203))

(declare-fun m!2257205 () Bool)

(assert (=> b!1829348 m!2257205))

(declare-fun b!1829360 () Bool)

(declare-fun e!1169251 () Bool)

(assert (=> b!1829360 (= e!1169251 tp_is_empty!8151)))

(declare-fun b!1829363 () Bool)

(declare-fun tp!517455 () Bool)

(declare-fun tp!517457 () Bool)

(assert (=> b!1829363 (= e!1169251 (and tp!517455 tp!517457))))

(declare-fun b!1829362 () Bool)

(declare-fun tp!517453 () Bool)

(assert (=> b!1829362 (= e!1169251 tp!517453)))

(assert (=> b!1828925 (= tp!517373 e!1169251)))

(declare-fun b!1829361 () Bool)

(declare-fun tp!517456 () Bool)

(declare-fun tp!517454 () Bool)

(assert (=> b!1829361 (= e!1169251 (and tp!517456 tp!517454))))

(assert (= (and b!1828925 (is-ElementMatch!4958 (regex!3630 (rule!5792 token!556)))) b!1829360))

(assert (= (and b!1828925 (is-Concat!8679 (regex!3630 (rule!5792 token!556)))) b!1829361))

(assert (= (and b!1828925 (is-Star!4958 (regex!3630 (rule!5792 token!556)))) b!1829362))

(assert (= (and b!1828925 (is-Union!4958 (regex!3630 (rule!5792 token!556)))) b!1829363))

(declare-fun b!1829368 () Bool)

(declare-fun e!1169254 () Bool)

(declare-fun tp!517460 () Bool)

(assert (=> b!1829368 (= e!1169254 (and tp_is_empty!8151 tp!517460))))

(assert (=> b!1828934 (= tp!517383 e!1169254)))

(assert (= (and b!1828934 (is-Cons!20096 (originalCharacters!4438 token!556))) b!1829368))

(declare-fun b!1829369 () Bool)

(declare-fun e!1169255 () Bool)

(declare-fun tp!517461 () Bool)

(assert (=> b!1829369 (= e!1169255 (and tp_is_empty!8151 tp!517461))))

(assert (=> b!1828919 (= tp!517381 e!1169255)))

(assert (= (and b!1828919 (is-Cons!20096 (t!170499 input!3612))) b!1829369))

(declare-fun b!1829370 () Bool)

(declare-fun e!1169256 () Bool)

(assert (=> b!1829370 (= e!1169256 tp_is_empty!8151)))

(declare-fun b!1829373 () Bool)

(declare-fun tp!517464 () Bool)

(declare-fun tp!517466 () Bool)

(assert (=> b!1829373 (= e!1169256 (and tp!517464 tp!517466))))

(declare-fun b!1829372 () Bool)

(declare-fun tp!517462 () Bool)

(assert (=> b!1829372 (= e!1169256 tp!517462)))

(assert (=> b!1828917 (= tp!517376 e!1169256)))

(declare-fun b!1829371 () Bool)

(declare-fun tp!517465 () Bool)

(declare-fun tp!517463 () Bool)

(assert (=> b!1829371 (= e!1169256 (and tp!517465 tp!517463))))

(assert (= (and b!1828917 (is-ElementMatch!4958 (regex!3630 (h!25498 rules!4538)))) b!1829370))

(assert (= (and b!1828917 (is-Concat!8679 (regex!3630 (h!25498 rules!4538)))) b!1829371))

(assert (= (and b!1828917 (is-Star!4958 (regex!3630 (h!25498 rules!4538)))) b!1829372))

(assert (= (and b!1828917 (is-Union!4958 (regex!3630 (h!25498 rules!4538)))) b!1829373))

(declare-fun b!1829374 () Bool)

(declare-fun e!1169257 () Bool)

(declare-fun tp!517467 () Bool)

(assert (=> b!1829374 (= e!1169257 (and tp_is_empty!8151 tp!517467))))

(assert (=> b!1828928 (= tp!517380 e!1169257)))

(assert (= (and b!1828928 (is-Cons!20096 (t!170499 suffix!1667))) b!1829374))

(declare-fun b!1829375 () Bool)

(declare-fun e!1169258 () Bool)

(assert (=> b!1829375 (= e!1169258 tp_is_empty!8151)))

(declare-fun b!1829378 () Bool)

(declare-fun tp!517470 () Bool)

(declare-fun tp!517472 () Bool)

(assert (=> b!1829378 (= e!1169258 (and tp!517470 tp!517472))))

(declare-fun b!1829377 () Bool)

(declare-fun tp!517468 () Bool)

(assert (=> b!1829377 (= e!1169258 tp!517468)))

(assert (=> b!1828923 (= tp!517377 e!1169258)))

(declare-fun b!1829376 () Bool)

(declare-fun tp!517471 () Bool)

(declare-fun tp!517469 () Bool)

(assert (=> b!1829376 (= e!1169258 (and tp!517471 tp!517469))))

(assert (= (and b!1828923 (is-ElementMatch!4958 (regex!3630 rule!559))) b!1829375))

(assert (= (and b!1828923 (is-Concat!8679 (regex!3630 rule!559))) b!1829376))

(assert (= (and b!1828923 (is-Star!4958 (regex!3630 rule!559))) b!1829377))

(assert (= (and b!1828923 (is-Union!4958 (regex!3630 rule!559))) b!1829378))

(declare-fun b_lambda!60463 () Bool)

(assert (= b_lambda!60457 (or (and b!1828936 b_free!51043 (= (toValue!5173 (transformation!3630 (rule!5792 token!556))) (toValue!5173 (transformation!3630 rule!559)))) (and b!1828921 b_free!51047 (= (toValue!5173 (transformation!3630 (h!25498 rules!4538))) (toValue!5173 (transformation!3630 rule!559)))) (and b!1828920 b_free!51051) (and b!1829349 b_free!51067 (= (toValue!5173 (transformation!3630 (h!25498 (t!170500 rules!4538)))) (toValue!5173 (transformation!3630 rule!559)))) b_lambda!60463)))

(declare-fun b_lambda!60465 () Bool)

(assert (= b_lambda!60455 (or (and b!1828936 b_free!51045) (and b!1828921 b_free!51049 (= (toChars!5032 (transformation!3630 (h!25498 rules!4538))) (toChars!5032 (transformation!3630 (rule!5792 token!556))))) (and b!1828920 b_free!51053 (= (toChars!5032 (transformation!3630 rule!559)) (toChars!5032 (transformation!3630 (rule!5792 token!556))))) (and b!1829349 b_free!51069 (= (toChars!5032 (transformation!3630 (h!25498 (t!170500 rules!4538)))) (toChars!5032 (transformation!3630 (rule!5792 token!556))))) b_lambda!60465)))

(declare-fun b_lambda!60467 () Bool)

(assert (= b_lambda!60451 (or (and b!1828936 b_free!51045) (and b!1828921 b_free!51049 (= (toChars!5032 (transformation!3630 (h!25498 rules!4538))) (toChars!5032 (transformation!3630 (rule!5792 token!556))))) (and b!1828920 b_free!51053 (= (toChars!5032 (transformation!3630 rule!559)) (toChars!5032 (transformation!3630 (rule!5792 token!556))))) (and b!1829349 b_free!51069 (= (toChars!5032 (transformation!3630 (h!25498 (t!170500 rules!4538)))) (toChars!5032 (transformation!3630 (rule!5792 token!556))))) b_lambda!60467)))

(declare-fun b_lambda!60469 () Bool)

(assert (= b_lambda!60459 (or b!1828924 b_lambda!60469)))

(declare-fun bs!407744 () Bool)

(declare-fun d!559426 () Bool)

(assert (= bs!407744 (and d!559426 b!1828924)))

(assert (=> bs!407744 (= (dynLambda!9995 lambda!71780 (h!25499 lt!710182)) (validRegex!2020 (h!25499 lt!710182)))))

(declare-fun m!2257207 () Bool)

(assert (=> bs!407744 m!2257207))

(assert (=> b!1829234 d!559426))

(declare-fun b_lambda!60471 () Bool)

(assert (= b_lambda!60449 (or b!1828933 b_lambda!60471)))

(declare-fun bs!407745 () Bool)

(declare-fun d!559428 () Bool)

(assert (= bs!407745 (and d!559428 b!1828933)))

(assert (=> bs!407745 (= (dynLambda!9992 lambda!71779 (h!25498 rules!4538)) (regex!3630 (h!25498 rules!4538)))))

(assert (=> b!1829012 d!559428))

(push 1)

(assert (not b!1829369))

(assert (not d!559344))

(assert (not d!559412))

(assert (not d!559342))

(assert (not bm!114620))

(assert (not b!1829337))

(assert (not b!1829006))

(assert (not b!1829228))

(assert (not d!559340))

(assert (not b!1829377))

(assert (not b_next!51773))

(assert (not b!1829029))

(assert (not b!1829347))

(assert b_and!142285)

(assert (not b!1829278))

(assert (not b!1829374))

(assert (not b!1829039))

(assert (not b!1829109))

(assert (not b!1829314))

(assert (not b!1829225))

(assert (not b_lambda!60469))

(assert (not b!1829214))

(assert (not b!1829277))

(assert (not b!1829120))

(assert (not b!1829362))

(assert (not b!1829313))

(assert (not b!1829373))

(assert (not d!559364))

(assert (not b!1829235))

(assert (not b!1829196))

(assert (not d!559410))

(assert b_and!142287)

(assert (not b!1829089))

(assert (not bm!114628))

(assert (not b!1829017))

(assert (not b!1829273))

(assert (not b!1829275))

(assert (not b!1829084))

(assert (not b!1829310))

(assert (not d!559368))

(assert (not b!1829046))

(assert (not b!1829119))

(assert b_and!142281)

(assert (not b_next!51749))

(assert (not b_next!51755))

(assert (not b!1829028))

(assert (not d!559396))

(assert (not b!1829372))

(assert (not b_next!51771))

(assert (not b!1829206))

(assert (not b!1829378))

(assert (not tb!111721))

(assert (not b!1829192))

(assert (not b_next!51757))

(assert (not b!1829012))

(assert (not b_lambda!60467))

(assert (not b!1829193))

(assert (not b!1829274))

(assert (not b!1829363))

(assert (not d!559402))

(assert (not d!559416))

(assert b_and!142279)

(assert (not b!1829368))

(assert (not b!1829197))

(assert (not d!559338))

(assert (not d!559408))

(assert (not tb!111733))

(assert (not b!1829094))

(assert (not b!1829319))

(assert (not b!1829338))

(assert b_and!142277)

(assert (not d!559378))

(assert (not b!1829279))

(assert (not b!1829110))

(assert (not d!559376))

(assert (not b!1829102))

(assert (not b!1829272))

(assert (not b!1829312))

(assert (not bs!407744))

(assert (not b!1829227))

(assert b_and!142283)

(assert (not b!1829194))

(assert (not d!559424))

(assert (not b_next!51751))

(assert tp_is_empty!8151)

(assert (not b!1829371))

(assert (not b!1829198))

(assert (not b_next!51747))

(assert (not d!559348))

(assert (not b!1829200))

(assert (not d!559350))

(assert (not b!1829315))

(assert (not b!1829276))

(assert (not d!559380))

(assert (not b_lambda!60471))

(assert (not d!559370))

(assert (not b!1829348))

(assert (not b!1829091))

(assert (not b!1829376))

(assert (not d!559384))

(assert (not d!559356))

(assert (not b!1829086))

(assert (not b!1829096))

(assert (not b_lambda!60465))

(assert b_and!142273)

(assert b_and!142275)

(assert (not b!1829195))

(assert (not b!1829311))

(assert (not d!559358))

(assert (not b_next!51753))

(assert (not b!1829361))

(assert (not b_lambda!60463))

(check-sat)

(pop 1)

(push 1)

(assert b_and!142287)

(assert (not b_next!51755))

(assert (not b_next!51771))

(assert (not b_next!51757))

(assert b_and!142279)

(assert b_and!142277)

(assert (not b_next!51747))

(assert b_and!142273)

(assert b_and!142275)

(assert (not b_next!51753))

(assert (not b_next!51773))

(assert b_and!142285)

(assert b_and!142281)

(assert (not b_next!51749))

(assert b_and!142283)

(assert (not b_next!51751))

(check-sat)

(pop 1)

