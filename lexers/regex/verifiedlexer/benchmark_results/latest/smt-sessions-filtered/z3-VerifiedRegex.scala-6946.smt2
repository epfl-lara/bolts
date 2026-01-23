; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367640 () Bool)

(assert start!367640)

(declare-fun b!3921208 () Bool)

(declare-fun b_free!106661 () Bool)

(declare-fun b_next!107365 () Bool)

(assert (=> b!3921208 (= b_free!106661 (not b_next!107365))))

(declare-fun tp!1193618 () Bool)

(declare-fun b_and!298871 () Bool)

(assert (=> b!3921208 (= tp!1193618 b_and!298871)))

(declare-fun b_free!106663 () Bool)

(declare-fun b_next!107367 () Bool)

(assert (=> b!3921208 (= b_free!106663 (not b_next!107367))))

(declare-fun tp!1193614 () Bool)

(declare-fun b_and!298873 () Bool)

(assert (=> b!3921208 (= tp!1193614 b_and!298873)))

(declare-fun b!3921224 () Bool)

(declare-fun b_free!106665 () Bool)

(declare-fun b_next!107369 () Bool)

(assert (=> b!3921224 (= b_free!106665 (not b_next!107369))))

(declare-fun tp!1193628 () Bool)

(declare-fun b_and!298875 () Bool)

(assert (=> b!3921224 (= tp!1193628 b_and!298875)))

(declare-fun b_free!106667 () Bool)

(declare-fun b_next!107371 () Bool)

(assert (=> b!3921224 (= b_free!106667 (not b_next!107371))))

(declare-fun tp!1193620 () Bool)

(declare-fun b_and!298877 () Bool)

(assert (=> b!3921224 (= tp!1193620 b_and!298877)))

(declare-fun b!3921205 () Bool)

(declare-fun b_free!106669 () Bool)

(declare-fun b_next!107373 () Bool)

(assert (=> b!3921205 (= b_free!106669 (not b_next!107373))))

(declare-fun tp!1193617 () Bool)

(declare-fun b_and!298879 () Bool)

(assert (=> b!3921205 (= tp!1193617 b_and!298879)))

(declare-fun b_free!106671 () Bool)

(declare-fun b_next!107375 () Bool)

(assert (=> b!3921205 (= b_free!106671 (not b_next!107375))))

(declare-fun tp!1193615 () Bool)

(declare-fun b_and!298881 () Bool)

(assert (=> b!3921205 (= tp!1193615 b_and!298881)))

(declare-fun b!3921193 () Bool)

(declare-datatypes ((Unit!59753 0))(
  ( (Unit!59754) )
))
(declare-fun e!2424802 () Unit!59753)

(declare-fun Unit!59755 () Unit!59753)

(assert (=> b!3921193 (= e!2424802 Unit!59755)))

(declare-fun lt!1366823 () Unit!59753)

(declare-datatypes ((C!22956 0))(
  ( (C!22957 (val!13572 Int)) )
))
(declare-datatypes ((List!41703 0))(
  ( (Nil!41579) (Cons!41579 (h!46999 C!22956) (t!324550 List!41703)) )
))
(declare-fun prefix!426 () List!41703)

(declare-fun suffix!1176 () List!41703)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2438 (List!41703 List!41703) Unit!59753)

(assert (=> b!3921193 (= lt!1366823 (lemmaConcatTwoListThenFirstIsPrefix!2438 prefix!426 suffix!1176))))

(declare-fun lt!1366802 () List!41703)

(declare-fun isPrefix!3575 (List!41703 List!41703) Bool)

(assert (=> b!3921193 (isPrefix!3575 prefix!426 lt!1366802)))

(declare-fun lt!1366815 () Unit!59753)

(declare-fun lt!1366819 () List!41703)

(declare-fun lemmaIsPrefixSameLengthThenSameList!771 (List!41703 List!41703 List!41703) Unit!59753)

(assert (=> b!3921193 (= lt!1366815 (lemmaIsPrefixSameLengthThenSameList!771 lt!1366819 prefix!426 lt!1366802))))

(assert (=> b!3921193 (= lt!1366819 prefix!426)))

(declare-datatypes ((List!41704 0))(
  ( (Nil!41580) (Cons!41580 (h!47000 (_ BitVec 16)) (t!324551 List!41704)) )
))
(declare-datatypes ((TokenValue!6710 0))(
  ( (FloatLiteralValue!13420 (text!47415 List!41704)) (TokenValueExt!6709 (__x!25637 Int)) (Broken!33550 (value!205288 List!41704)) (Object!6833) (End!6710) (Def!6710) (Underscore!6710) (Match!6710) (Else!6710) (Error!6710) (Case!6710) (If!6710) (Extends!6710) (Abstract!6710) (Class!6710) (Val!6710) (DelimiterValue!13420 (del!6770 List!41704)) (KeywordValue!6716 (value!205289 List!41704)) (CommentValue!13420 (value!205290 List!41704)) (WhitespaceValue!13420 (value!205291 List!41704)) (IndentationValue!6710 (value!205292 List!41704)) (String!47267) (Int32!6710) (Broken!33551 (value!205293 List!41704)) (Boolean!6711) (Unit!59756) (OperatorValue!6713 (op!6770 List!41704)) (IdentifierValue!13420 (value!205294 List!41704)) (IdentifierValue!13421 (value!205295 List!41704)) (WhitespaceValue!13421 (value!205296 List!41704)) (True!13420) (False!13420) (Broken!33552 (value!205297 List!41704)) (Broken!33553 (value!205298 List!41704)) (True!13421) (RightBrace!6710) (RightBracket!6710) (Colon!6710) (Null!6710) (Comma!6710) (LeftBracket!6710) (False!13421) (LeftBrace!6710) (ImaginaryLiteralValue!6710 (text!47416 List!41704)) (StringLiteralValue!20130 (value!205299 List!41704)) (EOFValue!6710 (value!205300 List!41704)) (IdentValue!6710 (value!205301 List!41704)) (DelimiterValue!13421 (value!205302 List!41704)) (DedentValue!6710 (value!205303 List!41704)) (NewLineValue!6710 (value!205304 List!41704)) (IntegerValue!20130 (value!205305 (_ BitVec 32)) (text!47417 List!41704)) (IntegerValue!20131 (value!205306 Int) (text!47418 List!41704)) (Times!6710) (Or!6710) (Equal!6710) (Minus!6710) (Broken!33554 (value!205307 List!41704)) (And!6710) (Div!6710) (LessEqual!6710) (Mod!6710) (Concat!18095) (Not!6710) (Plus!6710) (SpaceValue!6710 (value!205308 List!41704)) (IntegerValue!20132 (value!205309 Int) (text!47419 List!41704)) (StringLiteralValue!20131 (text!47420 List!41704)) (FloatLiteralValue!13421 (text!47421 List!41704)) (BytesLiteralValue!6710 (value!205310 List!41704)) (CommentValue!13421 (value!205311 List!41704)) (StringLiteralValue!20132 (value!205312 List!41704)) (ErrorTokenValue!6710 (msg!6771 List!41704)) )
))
(declare-datatypes ((Regex!11385 0))(
  ( (ElementMatch!11385 (c!681438 C!22956)) (Concat!18096 (regOne!23282 Regex!11385) (regTwo!23282 Regex!11385)) (EmptyExpr!11385) (Star!11385 (reg!11714 Regex!11385)) (EmptyLang!11385) (Union!11385 (regOne!23283 Regex!11385) (regTwo!23283 Regex!11385)) )
))
(declare-datatypes ((String!47268 0))(
  ( (String!47269 (value!205313 String)) )
))
(declare-datatypes ((IArray!25387 0))(
  ( (IArray!25388 (innerList!12751 List!41703)) )
))
(declare-datatypes ((Conc!12691 0))(
  ( (Node!12691 (left!31781 Conc!12691) (right!32111 Conc!12691) (csize!25612 Int) (cheight!12902 Int)) (Leaf!19638 (xs!15997 IArray!25387) (csize!25613 Int)) (Empty!12691) )
))
(declare-datatypes ((BalanceConc!24976 0))(
  ( (BalanceConc!24977 (c!681439 Conc!12691)) )
))
(declare-datatypes ((TokenValueInjection!12848 0))(
  ( (TokenValueInjection!12849 (toValue!8932 Int) (toChars!8791 Int)) )
))
(declare-datatypes ((Rule!12760 0))(
  ( (Rule!12761 (regex!6480 Regex!11385) (tag!7340 String!47268) (isSeparator!6480 Bool) (transformation!6480 TokenValueInjection!12848)) )
))
(declare-datatypes ((Token!12098 0))(
  ( (Token!12099 (value!205314 TokenValue!6710) (rule!9412 Rule!12760) (size!31213 Int) (originalCharacters!7080 List!41703)) )
))
(declare-datatypes ((tuple2!40842 0))(
  ( (tuple2!40843 (_1!23555 Token!12098) (_2!23555 List!41703)) )
))
(declare-datatypes ((Option!8900 0))(
  ( (None!8899) (Some!8899 (v!39225 tuple2!40842)) )
))
(declare-fun lt!1366804 () Option!8900)

(declare-fun lt!1366816 () Unit!59753)

(declare-fun lemmaSamePrefixThenSameSuffix!1796 (List!41703 List!41703 List!41703 List!41703 List!41703) Unit!59753)

(assert (=> b!3921193 (= lt!1366816 (lemmaSamePrefixThenSameSuffix!1796 lt!1366819 (_2!23555 (v!39225 lt!1366804)) prefix!426 suffix!1176 lt!1366802))))

(assert (=> b!3921193 false))

(declare-fun b!3921194 () Bool)

(declare-fun res!1586222 () Bool)

(declare-fun e!2424805 () Bool)

(assert (=> b!3921194 (=> (not res!1586222) (not e!2424805))))

(declare-datatypes ((List!41705 0))(
  ( (Nil!41581) (Cons!41581 (h!47001 Rule!12760) (t!324552 List!41705)) )
))
(declare-fun rules!2768 () List!41705)

(declare-fun isEmpty!24758 (List!41705) Bool)

(assert (=> b!3921194 (= res!1586222 (not (isEmpty!24758 rules!2768)))))

(declare-fun b!3921195 () Bool)

(declare-fun c!681435 () Bool)

(declare-datatypes ((List!41706 0))(
  ( (Nil!41582) (Cons!41582 (h!47002 Token!12098) (t!324553 List!41706)) )
))
(declare-fun lt!1366810 () List!41706)

(declare-fun isEmpty!24759 (List!41706) Bool)

(assert (=> b!3921195 (= c!681435 (isEmpty!24759 lt!1366810))))

(declare-fun prefixTokens!80 () List!41706)

(declare-fun tail!6019 (List!41706) List!41706)

(assert (=> b!3921195 (= lt!1366810 (tail!6019 prefixTokens!80))))

(declare-fun e!2424797 () Unit!59753)

(declare-fun e!2424824 () Unit!59753)

(assert (=> b!3921195 (= e!2424797 e!2424824)))

(declare-fun b!3921196 () Bool)

(declare-fun tp!1193622 () Bool)

(declare-fun e!2424816 () Bool)

(declare-fun e!2424811 () Bool)

(declare-fun inv!55773 (String!47268) Bool)

(declare-fun inv!55776 (TokenValueInjection!12848) Bool)

(assert (=> b!3921196 (= e!2424816 (and tp!1193622 (inv!55773 (tag!7340 (rule!9412 (h!47002 prefixTokens!80)))) (inv!55776 (transformation!6480 (rule!9412 (h!47002 prefixTokens!80)))) e!2424811))))

(declare-fun b!3921197 () Bool)

(declare-fun e!2424823 () Bool)

(assert (=> b!3921197 (= e!2424823 false)))

(declare-fun b!3921198 () Bool)

(declare-fun e!2424801 () Bool)

(declare-fun size!31214 (List!41703) Int)

(assert (=> b!3921198 (= e!2424801 (= (size!31213 (_1!23555 (v!39225 lt!1366804))) (size!31214 (originalCharacters!7080 (_1!23555 (v!39225 lt!1366804))))))))

(declare-fun b!3921199 () Bool)

(declare-fun e!2424810 () Unit!59753)

(declare-fun Unit!59757 () Unit!59753)

(assert (=> b!3921199 (= e!2424810 Unit!59757)))

(declare-fun b!3921200 () Bool)

(declare-fun res!1586212 () Bool)

(assert (=> b!3921200 (=> (not res!1586212) (not e!2424805))))

(declare-fun isEmpty!24760 (List!41703) Bool)

(assert (=> b!3921200 (= res!1586212 (not (isEmpty!24760 prefix!426)))))

(declare-fun b!3921201 () Bool)

(declare-fun e!2424809 () Bool)

(declare-fun e!2424806 () Bool)

(declare-fun tp!1193627 () Bool)

(declare-fun inv!55777 (Token!12098) Bool)

(assert (=> b!3921201 (= e!2424806 (and (inv!55777 (h!47002 prefixTokens!80)) e!2424809 tp!1193627))))

(declare-fun res!1586211 () Bool)

(assert (=> start!367640 (=> (not res!1586211) (not e!2424805))))

(declare-datatypes ((LexerInterface!6069 0))(
  ( (LexerInterfaceExt!6066 (__x!25638 Int)) (Lexer!6067) )
))
(declare-fun thiss!20629 () LexerInterface!6069)

(get-info :version)

(assert (=> start!367640 (= res!1586211 ((_ is Lexer!6067) thiss!20629))))

(assert (=> start!367640 e!2424805))

(declare-fun e!2424822 () Bool)

(assert (=> start!367640 e!2424822))

(assert (=> start!367640 true))

(declare-fun e!2424819 () Bool)

(assert (=> start!367640 e!2424819))

(declare-fun e!2424813 () Bool)

(assert (=> start!367640 e!2424813))

(assert (=> start!367640 e!2424806))

(declare-fun e!2424826 () Bool)

(assert (=> start!367640 e!2424826))

(declare-fun e!2424798 () Bool)

(assert (=> start!367640 e!2424798))

(declare-fun e!2424812 () Bool)

(declare-fun e!2424818 () Bool)

(declare-fun suffixTokens!72 () List!41706)

(declare-fun tp!1193623 () Bool)

(declare-fun b!3921202 () Bool)

(declare-fun inv!21 (TokenValue!6710) Bool)

(assert (=> b!3921202 (= e!2424818 (and (inv!21 (value!205314 (h!47002 suffixTokens!72))) e!2424812 tp!1193623))))

(declare-fun b!3921203 () Bool)

(declare-fun res!1586210 () Bool)

(declare-fun e!2424804 () Bool)

(assert (=> b!3921203 (=> res!1586210 e!2424804)))

(declare-datatypes ((tuple2!40844 0))(
  ( (tuple2!40845 (_1!23556 List!41706) (_2!23556 List!41703)) )
))
(declare-fun lt!1366806 () tuple2!40844)

(declare-fun lt!1366829 () tuple2!40844)

(declare-fun ++!10717 (List!41706 List!41706) List!41706)

(assert (=> b!3921203 (= res!1586210 (not (= lt!1366806 (tuple2!40845 (++!10717 (Cons!41582 (_1!23555 (v!39225 lt!1366804)) Nil!41582) (_1!23556 lt!1366829)) (_2!23556 lt!1366829)))))))

(declare-fun b!3921204 () Bool)

(declare-fun Unit!59758 () Unit!59753)

(assert (=> b!3921204 (= e!2424824 Unit!59758)))

(declare-fun lt!1366807 () tuple2!40842)

(declare-fun lt!1366827 () Unit!59753)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!528 (List!41703 List!41703 List!41703 List!41703) Unit!59753)

(assert (=> b!3921204 (= lt!1366827 (lemmaConcatSameAndSameSizesThenSameLists!528 lt!1366819 (_2!23555 (v!39225 lt!1366804)) lt!1366819 (_2!23555 lt!1366807)))))

(assert (=> b!3921204 (= (_2!23555 (v!39225 lt!1366804)) (_2!23555 lt!1366807))))

(declare-fun lt!1366817 () Unit!59753)

(declare-fun suffixResult!91 () List!41703)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!80 (LexerInterface!6069 List!41705 List!41703 List!41703 List!41706 List!41703) Unit!59753)

(assert (=> b!3921204 (= lt!1366817 (lemmaLexWithSmallerInputCannotProduceSameResults!80 thiss!20629 rules!2768 suffix!1176 (_2!23555 lt!1366807) suffixTokens!72 suffixResult!91))))

(declare-fun res!1586217 () Bool)

(declare-fun call!284626 () tuple2!40844)

(declare-fun lt!1366814 () tuple2!40844)

(assert (=> b!3921204 (= res!1586217 (not (= call!284626 lt!1366814)))))

(assert (=> b!3921204 (=> (not res!1586217) (not e!2424823))))

(assert (=> b!3921204 e!2424823))

(declare-fun e!2424800 () Bool)

(assert (=> b!3921205 (= e!2424800 (and tp!1193617 tp!1193615))))

(declare-fun b!3921206 () Bool)

(declare-fun e!2424817 () Bool)

(assert (=> b!3921206 (= e!2424805 e!2424817)))

(declare-fun res!1586220 () Bool)

(assert (=> b!3921206 (=> (not res!1586220) (not e!2424817))))

(declare-fun lt!1366821 () List!41706)

(assert (=> b!3921206 (= res!1586220 (= lt!1366806 (tuple2!40845 lt!1366821 suffixResult!91)))))

(declare-fun lexList!1837 (LexerInterface!6069 List!41705 List!41703) tuple2!40844)

(assert (=> b!3921206 (= lt!1366806 (lexList!1837 thiss!20629 rules!2768 lt!1366802))))

(assert (=> b!3921206 (= lt!1366821 (++!10717 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10718 (List!41703 List!41703) List!41703)

(assert (=> b!3921206 (= lt!1366802 (++!10718 prefix!426 suffix!1176))))

(declare-fun tp!1193616 () Bool)

(declare-fun b!3921207 () Bool)

(assert (=> b!3921207 (= e!2424809 (and (inv!21 (value!205314 (h!47002 prefixTokens!80))) e!2424816 tp!1193616))))

(declare-fun e!2424808 () Bool)

(assert (=> b!3921208 (= e!2424808 (and tp!1193618 tp!1193614))))

(declare-fun b!3921209 () Bool)

(declare-fun res!1586213 () Bool)

(assert (=> b!3921209 (=> (not res!1586213) (not e!2424805))))

(assert (=> b!3921209 (= res!1586213 (not (isEmpty!24759 prefixTokens!80)))))

(declare-fun b!3921210 () Bool)

(declare-fun Unit!59759 () Unit!59753)

(assert (=> b!3921210 (= e!2424797 Unit!59759)))

(declare-fun b!3921211 () Bool)

(declare-fun tp_is_empty!19741 () Bool)

(declare-fun tp!1193624 () Bool)

(assert (=> b!3921211 (= e!2424822 (and tp_is_empty!19741 tp!1193624))))

(declare-fun b!3921212 () Bool)

(declare-fun tp!1193625 () Bool)

(assert (=> b!3921212 (= e!2424819 (and tp_is_empty!19741 tp!1193625))))

(declare-fun bm!284621 () Bool)

(assert (=> bm!284621 (= call!284626 (lexList!1837 thiss!20629 rules!2768 (_2!23555 lt!1366807)))))

(declare-fun b!3921213 () Bool)

(declare-fun res!1586221 () Bool)

(assert (=> b!3921213 (=> (not res!1586221) (not e!2424805))))

(declare-fun rulesInvariant!5412 (LexerInterface!6069 List!41705) Bool)

(assert (=> b!3921213 (= res!1586221 (rulesInvariant!5412 thiss!20629 rules!2768))))

(declare-fun b!3921214 () Bool)

(declare-fun e!2424799 () Bool)

(assert (=> b!3921214 (= e!2424799 (not e!2424804))))

(declare-fun res!1586216 () Bool)

(assert (=> b!3921214 (=> res!1586216 e!2424804)))

(declare-fun lt!1366822 () List!41703)

(assert (=> b!3921214 (= res!1586216 (not (= lt!1366822 lt!1366802)))))

(assert (=> b!3921214 (= lt!1366829 (lexList!1837 thiss!20629 rules!2768 (_2!23555 (v!39225 lt!1366804))))))

(declare-fun lt!1366805 () List!41703)

(declare-fun lt!1366818 () TokenValue!6710)

(declare-fun lt!1366801 () Int)

(assert (=> b!3921214 (and (= (size!31213 (_1!23555 (v!39225 lt!1366804))) lt!1366801) (= (originalCharacters!7080 (_1!23555 (v!39225 lt!1366804))) lt!1366819) (= (v!39225 lt!1366804) (tuple2!40843 (Token!12099 lt!1366818 (rule!9412 (_1!23555 (v!39225 lt!1366804))) lt!1366801 lt!1366819) lt!1366805)))))

(assert (=> b!3921214 (= lt!1366801 (size!31214 lt!1366819))))

(assert (=> b!3921214 e!2424801))

(declare-fun res!1586218 () Bool)

(assert (=> b!3921214 (=> (not res!1586218) (not e!2424801))))

(assert (=> b!3921214 (= res!1586218 (= (value!205314 (_1!23555 (v!39225 lt!1366804))) lt!1366818))))

(declare-fun apply!9719 (TokenValueInjection!12848 BalanceConc!24976) TokenValue!6710)

(declare-fun seqFromList!4747 (List!41703) BalanceConc!24976)

(assert (=> b!3921214 (= lt!1366818 (apply!9719 (transformation!6480 (rule!9412 (_1!23555 (v!39225 lt!1366804)))) (seqFromList!4747 lt!1366819)))))

(assert (=> b!3921214 (= (_2!23555 (v!39225 lt!1366804)) lt!1366805)))

(declare-fun lt!1366812 () Unit!59753)

(assert (=> b!3921214 (= lt!1366812 (lemmaSamePrefixThenSameSuffix!1796 lt!1366819 (_2!23555 (v!39225 lt!1366804)) lt!1366819 lt!1366805 lt!1366802))))

(declare-fun getSuffix!2030 (List!41703 List!41703) List!41703)

(assert (=> b!3921214 (= lt!1366805 (getSuffix!2030 lt!1366802 lt!1366819))))

(assert (=> b!3921214 (isPrefix!3575 lt!1366819 lt!1366822)))

(assert (=> b!3921214 (= lt!1366822 (++!10718 lt!1366819 (_2!23555 (v!39225 lt!1366804))))))

(declare-fun lt!1366828 () Unit!59753)

(assert (=> b!3921214 (= lt!1366828 (lemmaConcatTwoListThenFirstIsPrefix!2438 lt!1366819 (_2!23555 (v!39225 lt!1366804))))))

(declare-fun list!15457 (BalanceConc!24976) List!41703)

(declare-fun charsOf!4304 (Token!12098) BalanceConc!24976)

(assert (=> b!3921214 (= lt!1366819 (list!15457 (charsOf!4304 (_1!23555 (v!39225 lt!1366804)))))))

(declare-fun ruleValid!2428 (LexerInterface!6069 Rule!12760) Bool)

(assert (=> b!3921214 (ruleValid!2428 thiss!20629 (rule!9412 (_1!23555 (v!39225 lt!1366804))))))

(declare-fun lt!1366803 () Unit!59753)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1508 (LexerInterface!6069 Rule!12760 List!41705) Unit!59753)

(assert (=> b!3921214 (= lt!1366803 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1508 thiss!20629 (rule!9412 (_1!23555 (v!39225 lt!1366804))) rules!2768))))

(declare-fun lt!1366800 () Unit!59753)

(declare-fun lemmaCharactersSize!1137 (Token!12098) Unit!59753)

(assert (=> b!3921214 (= lt!1366800 (lemmaCharactersSize!1137 (_1!23555 (v!39225 lt!1366804))))))

(declare-fun b!3921215 () Bool)

(declare-fun e!2424820 () Bool)

(assert (=> b!3921215 (= e!2424817 e!2424820)))

(declare-fun res!1586209 () Bool)

(assert (=> b!3921215 (=> (not res!1586209) (not e!2424820))))

(assert (=> b!3921215 (= res!1586209 (= (lexList!1837 thiss!20629 rules!2768 suffix!1176) lt!1366814))))

(assert (=> b!3921215 (= lt!1366814 (tuple2!40845 suffixTokens!72 suffixResult!91))))

(declare-fun b!3921216 () Bool)

(declare-fun lt!1366811 () Int)

(declare-fun lt!1366820 () Int)

(assert (=> b!3921216 (= e!2424804 (> lt!1366811 lt!1366820))))

(declare-fun lt!1366825 () Unit!59753)

(assert (=> b!3921216 (= lt!1366825 e!2424802)))

(declare-fun c!681437 () Bool)

(assert (=> b!3921216 (= c!681437 (= lt!1366811 lt!1366820))))

(declare-fun lt!1366813 () Unit!59753)

(assert (=> b!3921216 (= lt!1366813 e!2424810)))

(declare-fun c!681434 () Bool)

(assert (=> b!3921216 (= c!681434 (< lt!1366811 lt!1366820))))

(assert (=> b!3921216 (= lt!1366820 (size!31214 suffix!1176))))

(assert (=> b!3921216 (= lt!1366811 (size!31214 (_2!23555 (v!39225 lt!1366804))))))

(declare-fun b!3921217 () Bool)

(assert (=> b!3921217 (= e!2424820 e!2424799)))

(declare-fun res!1586214 () Bool)

(assert (=> b!3921217 (=> (not res!1586214) (not e!2424799))))

(assert (=> b!3921217 (= res!1586214 ((_ is Some!8899) lt!1366804))))

(declare-fun maxPrefix!3373 (LexerInterface!6069 List!41705 List!41703) Option!8900)

(assert (=> b!3921217 (= lt!1366804 (maxPrefix!3373 thiss!20629 rules!2768 lt!1366802))))

(declare-fun b!3921218 () Bool)

(declare-fun e!2424807 () Bool)

(declare-fun tp!1193613 () Bool)

(assert (=> b!3921218 (= e!2424813 (and e!2424807 tp!1193613))))

(declare-fun b!3921219 () Bool)

(declare-fun e!2424821 () Bool)

(assert (=> b!3921219 (= e!2424821 false)))

(declare-fun b!3921220 () Bool)

(declare-fun res!1586215 () Bool)

(assert (=> b!3921220 (=> res!1586215 e!2424804)))

(assert (=> b!3921220 (= res!1586215 (or (not (= lt!1366829 (tuple2!40845 (_1!23556 lt!1366829) (_2!23556 lt!1366829)))) (= (_2!23555 (v!39225 lt!1366804)) suffix!1176)))))

(declare-fun b!3921221 () Bool)

(declare-fun tp!1193612 () Bool)

(assert (=> b!3921221 (= e!2424812 (and tp!1193612 (inv!55773 (tag!7340 (rule!9412 (h!47002 suffixTokens!72)))) (inv!55776 (transformation!6480 (rule!9412 (h!47002 suffixTokens!72)))) e!2424808))))

(declare-fun b!3921222 () Bool)

(declare-fun Unit!59760 () Unit!59753)

(assert (=> b!3921222 (= e!2424824 Unit!59760)))

(declare-fun lt!1366809 () Unit!59753)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!80 (LexerInterface!6069 List!41705 List!41703 List!41703 List!41706 List!41703 List!41706) Unit!59753)

(assert (=> b!3921222 (= lt!1366809 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!80 thiss!20629 rules!2768 suffix!1176 (_2!23555 lt!1366807) suffixTokens!72 suffixResult!91 lt!1366810))))

(declare-fun res!1586219 () Bool)

(assert (=> b!3921222 (= res!1586219 (not (= call!284626 (tuple2!40845 (++!10717 lt!1366810 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3921222 (=> (not res!1586219) (not e!2424821))))

(assert (=> b!3921222 e!2424821))

(declare-fun b!3921223 () Bool)

(declare-fun tp!1193626 () Bool)

(assert (=> b!3921223 (= e!2424798 (and tp_is_empty!19741 tp!1193626))))

(assert (=> b!3921224 (= e!2424811 (and tp!1193628 tp!1193620))))

(declare-fun b!3921225 () Bool)

(declare-fun tp!1193621 () Bool)

(assert (=> b!3921225 (= e!2424826 (and (inv!55777 (h!47002 suffixTokens!72)) e!2424818 tp!1193621))))

(declare-fun b!3921226 () Bool)

(declare-fun Unit!59761 () Unit!59753)

(assert (=> b!3921226 (= e!2424810 Unit!59761)))

(declare-fun lt!1366824 () Int)

(assert (=> b!3921226 (= lt!1366824 (size!31214 lt!1366802))))

(declare-fun lt!1366826 () Unit!59753)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1311 (LexerInterface!6069 List!41705 List!41703 List!41703 List!41703 Rule!12760) Unit!59753)

(assert (=> b!3921226 (= lt!1366826 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1311 thiss!20629 rules!2768 lt!1366819 lt!1366802 (_2!23555 (v!39225 lt!1366804)) (rule!9412 (_1!23555 (v!39225 lt!1366804)))))))

(declare-fun maxPrefixOneRule!2443 (LexerInterface!6069 Rule!12760 List!41703) Option!8900)

(assert (=> b!3921226 (= (maxPrefixOneRule!2443 thiss!20629 (rule!9412 (_1!23555 (v!39225 lt!1366804))) lt!1366802) (Some!8899 (tuple2!40843 (Token!12099 lt!1366818 (rule!9412 (_1!23555 (v!39225 lt!1366804))) lt!1366801 lt!1366819) (_2!23555 (v!39225 lt!1366804)))))))

(declare-fun get!13740 (Option!8900) tuple2!40842)

(assert (=> b!3921226 (= lt!1366807 (get!13740 lt!1366804))))

(declare-fun c!681436 () Bool)

(assert (=> b!3921226 (= c!681436 (< (size!31214 (_2!23555 lt!1366807)) lt!1366820))))

(declare-fun lt!1366808 () Unit!59753)

(assert (=> b!3921226 (= lt!1366808 e!2424797)))

(assert (=> b!3921226 false))

(declare-fun b!3921227 () Bool)

(declare-fun tp!1193619 () Bool)

(assert (=> b!3921227 (= e!2424807 (and tp!1193619 (inv!55773 (tag!7340 (h!47001 rules!2768))) (inv!55776 (transformation!6480 (h!47001 rules!2768))) e!2424800))))

(declare-fun b!3921228 () Bool)

(declare-fun Unit!59762 () Unit!59753)

(assert (=> b!3921228 (= e!2424802 Unit!59762)))

(assert (= (and start!367640 res!1586211) b!3921194))

(assert (= (and b!3921194 res!1586222) b!3921213))

(assert (= (and b!3921213 res!1586221) b!3921209))

(assert (= (and b!3921209 res!1586213) b!3921200))

(assert (= (and b!3921200 res!1586212) b!3921206))

(assert (= (and b!3921206 res!1586220) b!3921215))

(assert (= (and b!3921215 res!1586209) b!3921217))

(assert (= (and b!3921217 res!1586214) b!3921214))

(assert (= (and b!3921214 res!1586218) b!3921198))

(assert (= (and b!3921214 (not res!1586216)) b!3921203))

(assert (= (and b!3921203 (not res!1586210)) b!3921220))

(assert (= (and b!3921220 (not res!1586215)) b!3921216))

(assert (= (and b!3921216 c!681434) b!3921226))

(assert (= (and b!3921216 (not c!681434)) b!3921199))

(assert (= (and b!3921226 c!681436) b!3921195))

(assert (= (and b!3921226 (not c!681436)) b!3921210))

(assert (= (and b!3921195 c!681435) b!3921204))

(assert (= (and b!3921195 (not c!681435)) b!3921222))

(assert (= (and b!3921204 res!1586217) b!3921197))

(assert (= (and b!3921222 res!1586219) b!3921219))

(assert (= (or b!3921204 b!3921222) bm!284621))

(assert (= (and b!3921216 c!681437) b!3921193))

(assert (= (and b!3921216 (not c!681437)) b!3921228))

(assert (= (and start!367640 ((_ is Cons!41579) suffixResult!91)) b!3921211))

(assert (= (and start!367640 ((_ is Cons!41579) suffix!1176)) b!3921212))

(assert (= b!3921227 b!3921205))

(assert (= b!3921218 b!3921227))

(assert (= (and start!367640 ((_ is Cons!41581) rules!2768)) b!3921218))

(assert (= b!3921196 b!3921224))

(assert (= b!3921207 b!3921196))

(assert (= b!3921201 b!3921207))

(assert (= (and start!367640 ((_ is Cons!41582) prefixTokens!80)) b!3921201))

(assert (= b!3921221 b!3921208))

(assert (= b!3921202 b!3921221))

(assert (= b!3921225 b!3921202))

(assert (= (and start!367640 ((_ is Cons!41582) suffixTokens!72)) b!3921225))

(assert (= (and start!367640 ((_ is Cons!41579) prefix!426)) b!3921223))

(declare-fun m!4484907 () Bool)

(assert (=> b!3921193 m!4484907))

(declare-fun m!4484909 () Bool)

(assert (=> b!3921193 m!4484909))

(declare-fun m!4484911 () Bool)

(assert (=> b!3921193 m!4484911))

(declare-fun m!4484913 () Bool)

(assert (=> b!3921193 m!4484913))

(declare-fun m!4484915 () Bool)

(assert (=> b!3921209 m!4484915))

(declare-fun m!4484917 () Bool)

(assert (=> b!3921216 m!4484917))

(declare-fun m!4484919 () Bool)

(assert (=> b!3921216 m!4484919))

(declare-fun m!4484921 () Bool)

(assert (=> b!3921215 m!4484921))

(declare-fun m!4484923 () Bool)

(assert (=> b!3921204 m!4484923))

(declare-fun m!4484925 () Bool)

(assert (=> b!3921204 m!4484925))

(declare-fun m!4484927 () Bool)

(assert (=> b!3921227 m!4484927))

(declare-fun m!4484929 () Bool)

(assert (=> b!3921227 m!4484929))

(declare-fun m!4484931 () Bool)

(assert (=> b!3921207 m!4484931))

(declare-fun m!4484933 () Bool)

(assert (=> b!3921203 m!4484933))

(declare-fun m!4484935 () Bool)

(assert (=> bm!284621 m!4484935))

(declare-fun m!4484937 () Bool)

(assert (=> b!3921195 m!4484937))

(declare-fun m!4484939 () Bool)

(assert (=> b!3921195 m!4484939))

(declare-fun m!4484941 () Bool)

(assert (=> b!3921201 m!4484941))

(declare-fun m!4484943 () Bool)

(assert (=> b!3921217 m!4484943))

(declare-fun m!4484945 () Bool)

(assert (=> b!3921202 m!4484945))

(declare-fun m!4484947 () Bool)

(assert (=> b!3921196 m!4484947))

(declare-fun m!4484949 () Bool)

(assert (=> b!3921196 m!4484949))

(declare-fun m!4484951 () Bool)

(assert (=> b!3921214 m!4484951))

(declare-fun m!4484953 () Bool)

(assert (=> b!3921214 m!4484953))

(declare-fun m!4484955 () Bool)

(assert (=> b!3921214 m!4484955))

(declare-fun m!4484957 () Bool)

(assert (=> b!3921214 m!4484957))

(declare-fun m!4484959 () Bool)

(assert (=> b!3921214 m!4484959))

(assert (=> b!3921214 m!4484951))

(declare-fun m!4484961 () Bool)

(assert (=> b!3921214 m!4484961))

(declare-fun m!4484963 () Bool)

(assert (=> b!3921214 m!4484963))

(assert (=> b!3921214 m!4484955))

(declare-fun m!4484965 () Bool)

(assert (=> b!3921214 m!4484965))

(declare-fun m!4484967 () Bool)

(assert (=> b!3921214 m!4484967))

(declare-fun m!4484969 () Bool)

(assert (=> b!3921214 m!4484969))

(declare-fun m!4484971 () Bool)

(assert (=> b!3921214 m!4484971))

(declare-fun m!4484973 () Bool)

(assert (=> b!3921214 m!4484973))

(declare-fun m!4484975 () Bool)

(assert (=> b!3921214 m!4484975))

(declare-fun m!4484977 () Bool)

(assert (=> b!3921214 m!4484977))

(declare-fun m!4484979 () Bool)

(assert (=> b!3921206 m!4484979))

(declare-fun m!4484981 () Bool)

(assert (=> b!3921206 m!4484981))

(declare-fun m!4484983 () Bool)

(assert (=> b!3921206 m!4484983))

(declare-fun m!4484985 () Bool)

(assert (=> b!3921213 m!4484985))

(declare-fun m!4484987 () Bool)

(assert (=> b!3921226 m!4484987))

(declare-fun m!4484989 () Bool)

(assert (=> b!3921226 m!4484989))

(declare-fun m!4484991 () Bool)

(assert (=> b!3921226 m!4484991))

(declare-fun m!4484993 () Bool)

(assert (=> b!3921226 m!4484993))

(declare-fun m!4484995 () Bool)

(assert (=> b!3921226 m!4484995))

(declare-fun m!4484997 () Bool)

(assert (=> b!3921200 m!4484997))

(declare-fun m!4484999 () Bool)

(assert (=> b!3921225 m!4484999))

(declare-fun m!4485001 () Bool)

(assert (=> b!3921221 m!4485001))

(declare-fun m!4485003 () Bool)

(assert (=> b!3921221 m!4485003))

(declare-fun m!4485005 () Bool)

(assert (=> b!3921222 m!4485005))

(declare-fun m!4485007 () Bool)

(assert (=> b!3921222 m!4485007))

(declare-fun m!4485009 () Bool)

(assert (=> b!3921198 m!4485009))

(declare-fun m!4485011 () Bool)

(assert (=> b!3921194 m!4485011))

(check-sat (not bm!284621) (not b!3921223) (not b!3921195) (not b_next!107375) b_and!298871 (not b!3921203) b_and!298873 (not b!3921217) (not b_next!107371) (not b!3921211) (not b!3921214) (not b!3921194) (not b!3921198) (not b!3921196) (not b!3921193) (not b!3921222) (not b!3921216) (not b_next!107365) b_and!298879 (not b!3921202) b_and!298877 (not b!3921227) b_and!298875 (not b!3921221) b_and!298881 tp_is_empty!19741 (not b_next!107373) (not b!3921204) (not b!3921200) (not b!3921225) (not b!3921215) (not b_next!107369) (not b!3921209) (not b_next!107367) (not b!3921218) (not b!3921213) (not b!3921206) (not b!3921207) (not b!3921212) (not b!3921226) (not b!3921201))
(check-sat b_and!298873 (not b_next!107371) (not b_next!107365) b_and!298879 (not b_next!107375) (not b_next!107369) (not b_next!107367) b_and!298871 b_and!298877 b_and!298875 b_and!298881 (not b_next!107373))
