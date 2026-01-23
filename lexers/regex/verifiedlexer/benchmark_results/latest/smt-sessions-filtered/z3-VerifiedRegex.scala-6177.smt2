; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298614 () Bool)

(assert start!298614)

(declare-fun b!3185169 () Bool)

(declare-fun b_free!84097 () Bool)

(declare-fun b_next!84801 () Bool)

(assert (=> b!3185169 (= b_free!84097 (not b_next!84801))))

(declare-fun tp!1007370 () Bool)

(declare-fun b_and!210727 () Bool)

(assert (=> b!3185169 (= tp!1007370 b_and!210727)))

(declare-fun b_free!84099 () Bool)

(declare-fun b_next!84803 () Bool)

(assert (=> b!3185169 (= b_free!84099 (not b_next!84803))))

(declare-fun tp!1007363 () Bool)

(declare-fun b_and!210729 () Bool)

(assert (=> b!3185169 (= tp!1007363 b_and!210729)))

(declare-fun b!3185182 () Bool)

(declare-fun b_free!84101 () Bool)

(declare-fun b_next!84805 () Bool)

(assert (=> b!3185182 (= b_free!84101 (not b_next!84805))))

(declare-fun tp!1007367 () Bool)

(declare-fun b_and!210731 () Bool)

(assert (=> b!3185182 (= tp!1007367 b_and!210731)))

(declare-fun b_free!84103 () Bool)

(declare-fun b_next!84807 () Bool)

(assert (=> b!3185182 (= b_free!84103 (not b_next!84807))))

(declare-fun tp!1007364 () Bool)

(declare-fun b_and!210733 () Bool)

(assert (=> b!3185182 (= tp!1007364 b_and!210733)))

(declare-fun b!3185155 () Bool)

(declare-fun b_free!84105 () Bool)

(declare-fun b_next!84809 () Bool)

(assert (=> b!3185155 (= b_free!84105 (not b_next!84809))))

(declare-fun tp!1007368 () Bool)

(declare-fun b_and!210735 () Bool)

(assert (=> b!3185155 (= tp!1007368 b_and!210735)))

(declare-fun b_free!84107 () Bool)

(declare-fun b_next!84811 () Bool)

(assert (=> b!3185155 (= b_free!84107 (not b_next!84811))))

(declare-fun tp!1007366 () Bool)

(declare-fun b_and!210737 () Bool)

(assert (=> b!3185155 (= tp!1007366 b_and!210737)))

(declare-fun b!3185150 () Bool)

(declare-fun res!1294942 () Bool)

(declare-fun e!1984744 () Bool)

(assert (=> b!3185150 (=> (not res!1294942) (not e!1984744))))

(declare-datatypes ((C!19972 0))(
  ( (C!19973 (val!12034 Int)) )
))
(declare-datatypes ((Regex!9893 0))(
  ( (ElementMatch!9893 (c!534886 C!19972)) (Concat!15257 (regOne!20298 Regex!9893) (regTwo!20298 Regex!9893)) (EmptyExpr!9893) (Star!9893 (reg!10222 Regex!9893)) (EmptyLang!9893) (Union!9893 (regOne!20299 Regex!9893) (regTwo!20299 Regex!9893)) )
))
(declare-datatypes ((List!35924 0))(
  ( (Nil!35800) (Cons!35800 (h!41220 (_ BitVec 16)) (t!235513 List!35924)) )
))
(declare-datatypes ((TokenValue!5364 0))(
  ( (FloatLiteralValue!10728 (text!37993 List!35924)) (TokenValueExt!5363 (__x!22945 Int)) (Broken!26820 (value!166753 List!35924)) (Object!5487) (End!5364) (Def!5364) (Underscore!5364) (Match!5364) (Else!5364) (Error!5364) (Case!5364) (If!5364) (Extends!5364) (Abstract!5364) (Class!5364) (Val!5364) (DelimiterValue!10728 (del!5424 List!35924)) (KeywordValue!5370 (value!166754 List!35924)) (CommentValue!10728 (value!166755 List!35924)) (WhitespaceValue!10728 (value!166756 List!35924)) (IndentationValue!5364 (value!166757 List!35924)) (String!40153) (Int32!5364) (Broken!26821 (value!166758 List!35924)) (Boolean!5365) (Unit!50209) (OperatorValue!5367 (op!5424 List!35924)) (IdentifierValue!10728 (value!166759 List!35924)) (IdentifierValue!10729 (value!166760 List!35924)) (WhitespaceValue!10729 (value!166761 List!35924)) (True!10728) (False!10728) (Broken!26822 (value!166762 List!35924)) (Broken!26823 (value!166763 List!35924)) (True!10729) (RightBrace!5364) (RightBracket!5364) (Colon!5364) (Null!5364) (Comma!5364) (LeftBracket!5364) (False!10729) (LeftBrace!5364) (ImaginaryLiteralValue!5364 (text!37994 List!35924)) (StringLiteralValue!16092 (value!166764 List!35924)) (EOFValue!5364 (value!166765 List!35924)) (IdentValue!5364 (value!166766 List!35924)) (DelimiterValue!10729 (value!166767 List!35924)) (DedentValue!5364 (value!166768 List!35924)) (NewLineValue!5364 (value!166769 List!35924)) (IntegerValue!16092 (value!166770 (_ BitVec 32)) (text!37995 List!35924)) (IntegerValue!16093 (value!166771 Int) (text!37996 List!35924)) (Times!5364) (Or!5364) (Equal!5364) (Minus!5364) (Broken!26824 (value!166772 List!35924)) (And!5364) (Div!5364) (LessEqual!5364) (Mod!5364) (Concat!15258) (Not!5364) (Plus!5364) (SpaceValue!5364 (value!166773 List!35924)) (IntegerValue!16094 (value!166774 Int) (text!37997 List!35924)) (StringLiteralValue!16093 (text!37998 List!35924)) (FloatLiteralValue!10729 (text!37999 List!35924)) (BytesLiteralValue!5364 (value!166775 List!35924)) (CommentValue!10729 (value!166776 List!35924)) (StringLiteralValue!16094 (value!166777 List!35924)) (ErrorTokenValue!5364 (msg!5425 List!35924)) )
))
(declare-datatypes ((List!35925 0))(
  ( (Nil!35801) (Cons!35801 (h!41221 C!19972) (t!235514 List!35925)) )
))
(declare-datatypes ((IArray!21291 0))(
  ( (IArray!21292 (innerList!10703 List!35925)) )
))
(declare-datatypes ((Conc!10643 0))(
  ( (Node!10643 (left!27844 Conc!10643) (right!28174 Conc!10643) (csize!21516 Int) (cheight!10854 Int)) (Leaf!16821 (xs!13761 IArray!21291) (csize!21517 Int)) (Empty!10643) )
))
(declare-datatypes ((BalanceConc!20900 0))(
  ( (BalanceConc!20901 (c!534887 Conc!10643)) )
))
(declare-datatypes ((String!40154 0))(
  ( (String!40155 (value!166778 String)) )
))
(declare-datatypes ((TokenValueInjection!10156 0))(
  ( (TokenValueInjection!10157 (toValue!7194 Int) (toChars!7053 Int)) )
))
(declare-datatypes ((Rule!10068 0))(
  ( (Rule!10069 (regex!5134 Regex!9893) (tag!5648 String!40154) (isSeparator!5134 Bool) (transformation!5134 TokenValueInjection!10156)) )
))
(declare-datatypes ((List!35926 0))(
  ( (Nil!35802) (Cons!35802 (h!41222 Rule!10068) (t!235515 List!35926)) )
))
(declare-fun rules!2135 () List!35926)

(declare-fun isEmpty!19931 (List!35926) Bool)

(assert (=> b!3185150 (= res!1294942 (not (isEmpty!19931 rules!2135)))))

(declare-fun b!3185151 () Bool)

(declare-datatypes ((Unit!50210 0))(
  ( (Unit!50211) )
))
(declare-fun e!1984764 () Unit!50210)

(declare-fun Unit!50212 () Unit!50210)

(assert (=> b!3185151 (= e!1984764 Unit!50212)))

(declare-fun b!3185152 () Bool)

(declare-fun e!1984769 () Bool)

(declare-fun e!1984768 () Bool)

(assert (=> b!3185152 (= e!1984769 e!1984768)))

(declare-fun res!1294948 () Bool)

(assert (=> b!3185152 (=> res!1294948 e!1984768)))

(declare-fun lt!1071319 () List!35925)

(declare-fun lt!1071333 () List!35925)

(declare-fun lt!1071317 () List!35925)

(assert (=> b!3185152 (= res!1294948 (or (not (= lt!1071319 lt!1071333)) (not (= lt!1071317 lt!1071333))))))

(declare-datatypes ((Token!9634 0))(
  ( (Token!9635 (value!166779 TokenValue!5364) (rule!7556 Rule!10068) (size!27010 Int) (originalCharacters!5848 List!35925)) )
))
(declare-datatypes ((List!35927 0))(
  ( (Nil!35803) (Cons!35803 (h!41223 Token!9634) (t!235516 List!35927)) )
))
(declare-fun tokens!494 () List!35927)

(declare-fun list!12711 (BalanceConc!20900) List!35925)

(declare-fun charsOf!3156 (Token!9634) BalanceConc!20900)

(assert (=> b!3185152 (= lt!1071333 (list!12711 (charsOf!3156 (h!41223 tokens!494))))))

(declare-fun b!3185153 () Bool)

(declare-fun e!1984766 () Bool)

(assert (=> b!3185153 (= e!1984768 e!1984766)))

(declare-fun res!1294945 () Bool)

(assert (=> b!3185153 (=> res!1294945 e!1984766)))

(declare-datatypes ((LexerInterface!4723 0))(
  ( (LexerInterfaceExt!4720 (__x!22946 Int)) (Lexer!4721) )
))
(declare-fun thiss!18206 () LexerInterface!4723)

(declare-fun lt!1071329 () BalanceConc!20900)

(declare-datatypes ((IArray!21293 0))(
  ( (IArray!21294 (innerList!10704 List!35927)) )
))
(declare-datatypes ((Conc!10644 0))(
  ( (Node!10644 (left!27845 Conc!10644) (right!28175 Conc!10644) (csize!21518 Int) (cheight!10855 Int)) (Leaf!16822 (xs!13762 IArray!21293) (csize!21519 Int)) (Empty!10644) )
))
(declare-datatypes ((BalanceConc!20902 0))(
  ( (BalanceConc!20903 (c!534888 Conc!10644)) )
))
(declare-fun isEmpty!19932 (BalanceConc!20902) Bool)

(declare-datatypes ((tuple2!35158 0))(
  ( (tuple2!35159 (_1!20713 BalanceConc!20902) (_2!20713 BalanceConc!20900)) )
))
(declare-fun lex!2063 (LexerInterface!4723 List!35926 BalanceConc!20900) tuple2!35158)

(assert (=> b!3185153 (= res!1294945 (isEmpty!19932 (_1!20713 (lex!2063 thiss!18206 rules!2135 lt!1071329))))))

(declare-fun seqFromList!3347 (List!35925) BalanceConc!20900)

(assert (=> b!3185153 (= lt!1071329 (seqFromList!3347 lt!1071333))))

(declare-fun b!3185154 () Bool)

(declare-fun e!1984754 () Bool)

(declare-fun lt!1071318 () Rule!10068)

(assert (=> b!3185154 (= e!1984754 (= (rule!7556 (h!41223 tokens!494)) lt!1071318))))

(declare-fun e!1984757 () Bool)

(assert (=> b!3185155 (= e!1984757 (and tp!1007368 tp!1007366))))

(declare-fun b!3185156 () Bool)

(declare-fun e!1984747 () Bool)

(declare-fun e!1984759 () Bool)

(declare-fun tp!1007372 () Bool)

(assert (=> b!3185156 (= e!1984747 (and e!1984759 tp!1007372))))

(declare-fun e!1984758 () Bool)

(declare-fun tp!1007362 () Bool)

(declare-fun e!1984753 () Bool)

(declare-fun b!3185157 () Bool)

(declare-fun inv!48652 (Token!9634) Bool)

(assert (=> b!3185157 (= e!1984758 (and (inv!48652 (h!41223 tokens!494)) e!1984753 tp!1007362))))

(declare-fun b!3185158 () Bool)

(declare-fun e!1984762 () Bool)

(assert (=> b!3185158 (= e!1984762 (not e!1984769))))

(declare-fun res!1294939 () Bool)

(assert (=> b!3185158 (=> res!1294939 e!1984769)))

(assert (=> b!3185158 (= res!1294939 (not (= lt!1071317 lt!1071319)))))

(declare-fun printList!1277 (LexerInterface!4723 List!35927) List!35925)

(assert (=> b!3185158 (= lt!1071319 (printList!1277 thiss!18206 (Cons!35803 (h!41223 tokens!494) Nil!35803)))))

(declare-fun lt!1071310 () BalanceConc!20900)

(assert (=> b!3185158 (= lt!1071317 (list!12711 lt!1071310))))

(declare-fun lt!1071313 () BalanceConc!20902)

(declare-fun printTailRec!1222 (LexerInterface!4723 BalanceConc!20902 Int BalanceConc!20900) BalanceConc!20900)

(assert (=> b!3185158 (= lt!1071310 (printTailRec!1222 thiss!18206 lt!1071313 0 (BalanceConc!20901 Empty!10643)))))

(declare-fun print!1790 (LexerInterface!4723 BalanceConc!20902) BalanceConc!20900)

(assert (=> b!3185158 (= lt!1071310 (print!1790 thiss!18206 lt!1071313))))

(declare-fun singletonSeq!2230 (Token!9634) BalanceConc!20902)

(assert (=> b!3185158 (= lt!1071313 (singletonSeq!2230 (h!41223 tokens!494)))))

(declare-fun tp!1007369 () Bool)

(declare-fun b!3185159 () Bool)

(declare-fun e!1984772 () Bool)

(declare-fun inv!21 (TokenValue!5364) Bool)

(assert (=> b!3185159 (= e!1984753 (and (inv!21 (value!166779 (h!41223 tokens!494))) e!1984772 tp!1007369))))

(declare-fun b!3185160 () Bool)

(declare-fun res!1294946 () Bool)

(assert (=> b!3185160 (=> (not res!1294946) (not e!1984762))))

(declare-fun separatorToken!241 () Token!9634)

(declare-fun rulesProduceIndividualToken!2215 (LexerInterface!4723 List!35926 Token!9634) Bool)

(assert (=> b!3185160 (= res!1294946 (rulesProduceIndividualToken!2215 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3185161 () Bool)

(declare-fun e!1984755 () Bool)

(assert (=> b!3185161 (= e!1984755 e!1984754)))

(declare-fun res!1294929 () Bool)

(assert (=> b!3185161 (=> (not res!1294929) (not e!1984754))))

(declare-fun matchR!4551 (Regex!9893 List!35925) Bool)

(assert (=> b!3185161 (= res!1294929 (matchR!4551 (regex!5134 lt!1071318) lt!1071333))))

(declare-datatypes ((Option!6999 0))(
  ( (None!6998) (Some!6998 (v!35476 Rule!10068)) )
))
(declare-fun lt!1071316 () Option!6999)

(declare-fun get!11394 (Option!6999) Rule!10068)

(assert (=> b!3185161 (= lt!1071318 (get!11394 lt!1071316))))

(declare-fun b!3185162 () Bool)

(declare-fun Unit!50213 () Unit!50210)

(assert (=> b!3185162 (= e!1984764 Unit!50213)))

(declare-fun lt!1071334 () Unit!50210)

(declare-fun lt!1071332 () List!35925)

(declare-fun lt!1071312 () C!19972)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!332 (Regex!9893 List!35925 C!19972) Unit!50210)

(assert (=> b!3185162 (= lt!1071334 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!332 (regex!5134 (rule!7556 separatorToken!241)) lt!1071332 lt!1071312))))

(declare-fun res!1294937 () Bool)

(assert (=> b!3185162 (= res!1294937 (not (matchR!4551 (regex!5134 (rule!7556 separatorToken!241)) lt!1071332)))))

(declare-fun e!1984770 () Bool)

(assert (=> b!3185162 (=> (not res!1294937) (not e!1984770))))

(assert (=> b!3185162 e!1984770))

(declare-fun b!3185163 () Bool)

(declare-fun e!1984767 () Bool)

(declare-fun lt!1071331 () Rule!10068)

(assert (=> b!3185163 (= e!1984767 (= (rule!7556 separatorToken!241) lt!1071331))))

(declare-fun res!1294932 () Bool)

(assert (=> start!298614 (=> (not res!1294932) (not e!1984744))))

(get-info :version)

(assert (=> start!298614 (= res!1294932 ((_ is Lexer!4721) thiss!18206))))

(assert (=> start!298614 e!1984744))

(assert (=> start!298614 true))

(assert (=> start!298614 e!1984747))

(declare-fun e!1984751 () Bool)

(assert (=> start!298614 (and (inv!48652 separatorToken!241) e!1984751)))

(assert (=> start!298614 e!1984758))

(declare-fun b!3185164 () Bool)

(declare-fun e!1984748 () Bool)

(declare-fun e!1984756 () Bool)

(assert (=> b!3185164 (= e!1984748 e!1984756)))

(declare-fun res!1294941 () Bool)

(assert (=> b!3185164 (=> res!1294941 e!1984756)))

(declare-fun lt!1071309 () List!35925)

(declare-fun lt!1071327 () List!35925)

(assert (=> b!3185164 (= res!1294941 (not (= lt!1071309 lt!1071327)))))

(declare-fun ++!8564 (List!35925 List!35925) List!35925)

(assert (=> b!3185164 (= lt!1071327 (++!8564 lt!1071333 lt!1071332))))

(declare-fun lt!1071323 () BalanceConc!20900)

(assert (=> b!3185164 (= lt!1071309 (list!12711 lt!1071323))))

(assert (=> b!3185164 (= lt!1071332 (list!12711 (charsOf!3156 separatorToken!241)))))

(declare-fun lt!1071328 () BalanceConc!20902)

(declare-fun printWithSeparatorToken!32 (LexerInterface!4723 BalanceConc!20902 Token!9634) BalanceConc!20900)

(assert (=> b!3185164 (= lt!1071323 (printWithSeparatorToken!32 thiss!18206 lt!1071328 separatorToken!241))))

(declare-fun b!3185165 () Bool)

(declare-fun e!1984765 () Bool)

(declare-fun tp!1007365 () Bool)

(assert (=> b!3185165 (= e!1984751 (and (inv!21 (value!166779 separatorToken!241)) e!1984765 tp!1007365))))

(declare-fun b!3185166 () Bool)

(assert (=> b!3185166 (= e!1984770 false)))

(declare-fun b!3185167 () Bool)

(declare-fun res!1294949 () Bool)

(assert (=> b!3185167 (=> res!1294949 e!1984768)))

(assert (=> b!3185167 (= res!1294949 (not (rulesProduceIndividualToken!2215 thiss!18206 rules!2135 (h!41223 tokens!494))))))

(declare-fun b!3185168 () Bool)

(declare-fun e!1984750 () Bool)

(assert (=> b!3185168 (= e!1984750 true)))

(declare-fun lt!1071314 () Bool)

(declare-fun rulesValidInductive!1759 (LexerInterface!4723 List!35926) Bool)

(assert (=> b!3185168 (= lt!1071314 (rulesValidInductive!1759 thiss!18206 rules!2135))))

(declare-datatypes ((tuple2!35160 0))(
  ( (tuple2!35161 (_1!20714 Token!9634) (_2!20714 List!35925)) )
))
(declare-datatypes ((Option!7000 0))(
  ( (None!6999) (Some!6999 (v!35477 tuple2!35160)) )
))
(declare-fun maxPrefix!2401 (LexerInterface!4723 List!35926 List!35925) Option!7000)

(assert (=> b!3185168 (= (maxPrefix!2401 thiss!18206 rules!2135 lt!1071327) (Some!6999 (tuple2!35161 (h!41223 tokens!494) lt!1071332)))))

(declare-fun lt!1071308 () Unit!50210)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!112 (LexerInterface!4723 List!35926 Token!9634 Rule!10068 List!35925 Rule!10068) Unit!50210)

(assert (=> b!3185168 (= lt!1071308 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!112 thiss!18206 rules!2135 (h!41223 tokens!494) (rule!7556 (h!41223 tokens!494)) lt!1071332 (rule!7556 separatorToken!241)))))

(declare-fun contains!6349 (List!35925 C!19972) Bool)

(declare-fun usedCharacters!478 (Regex!9893) List!35925)

(assert (=> b!3185168 (not (contains!6349 (usedCharacters!478 (regex!5134 (rule!7556 (h!41223 tokens!494)))) lt!1071312))))

(declare-fun lt!1071307 () Unit!50210)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!110 (LexerInterface!4723 List!35926 List!35926 Rule!10068 Rule!10068 C!19972) Unit!50210)

(assert (=> b!3185168 (= lt!1071307 (lemmaNonSepRuleNotContainsCharContainedInASepRule!110 thiss!18206 rules!2135 rules!2135 (rule!7556 (h!41223 tokens!494)) (rule!7556 separatorToken!241) lt!1071312))))

(declare-fun e!1984752 () Bool)

(assert (=> b!3185169 (= e!1984752 (and tp!1007370 tp!1007363))))

(declare-fun b!3185170 () Bool)

(assert (=> b!3185170 (= e!1984744 e!1984762)))

(declare-fun res!1294934 () Bool)

(assert (=> b!3185170 (=> (not res!1294934) (not e!1984762))))

(declare-fun rulesProduceEachTokenIndividually!1174 (LexerInterface!4723 List!35926 BalanceConc!20902) Bool)

(assert (=> b!3185170 (= res!1294934 (rulesProduceEachTokenIndividually!1174 thiss!18206 rules!2135 lt!1071328))))

(declare-fun seqFromList!3348 (List!35927) BalanceConc!20902)

(assert (=> b!3185170 (= lt!1071328 (seqFromList!3348 tokens!494))))

(declare-fun b!3185171 () Bool)

(declare-fun e!1984760 () Bool)

(assert (=> b!3185171 (= e!1984760 e!1984767)))

(declare-fun res!1294943 () Bool)

(assert (=> b!3185171 (=> (not res!1294943) (not e!1984767))))

(assert (=> b!3185171 (= res!1294943 (matchR!4551 (regex!5134 lt!1071331) lt!1071332))))

(declare-fun lt!1071325 () Option!6999)

(assert (=> b!3185171 (= lt!1071331 (get!11394 lt!1071325))))

(declare-fun e!1984761 () Bool)

(declare-fun tp!1007374 () Bool)

(declare-fun b!3185172 () Bool)

(declare-fun inv!48649 (String!40154) Bool)

(declare-fun inv!48653 (TokenValueInjection!10156) Bool)

(assert (=> b!3185172 (= e!1984765 (and tp!1007374 (inv!48649 (tag!5648 (rule!7556 separatorToken!241))) (inv!48653 (transformation!5134 (rule!7556 separatorToken!241))) e!1984761))))

(declare-fun b!3185173 () Bool)

(declare-fun res!1294930 () Bool)

(assert (=> b!3185173 (=> (not res!1294930) (not e!1984762))))

(declare-fun lambda!116519 () Int)

(declare-fun forall!7256 (List!35927 Int) Bool)

(assert (=> b!3185173 (= res!1294930 (forall!7256 tokens!494 lambda!116519))))

(declare-fun b!3185174 () Bool)

(declare-fun tp!1007373 () Bool)

(assert (=> b!3185174 (= e!1984772 (and tp!1007373 (inv!48649 (tag!5648 (rule!7556 (h!41223 tokens!494)))) (inv!48653 (transformation!5134 (rule!7556 (h!41223 tokens!494)))) e!1984752))))

(declare-fun b!3185175 () Bool)

(assert (=> b!3185175 (= e!1984756 e!1984750)))

(declare-fun res!1294931 () Bool)

(assert (=> b!3185175 (=> res!1294931 e!1984750)))

(declare-fun lt!1071324 () Bool)

(assert (=> b!3185175 (= res!1294931 lt!1071324)))

(declare-fun lt!1071326 () Unit!50210)

(assert (=> b!3185175 (= lt!1071326 e!1984764)))

(declare-fun c!534885 () Bool)

(assert (=> b!3185175 (= c!534885 lt!1071324)))

(assert (=> b!3185175 (= lt!1071324 (not (contains!6349 (usedCharacters!478 (regex!5134 (rule!7556 separatorToken!241))) lt!1071312)))))

(declare-fun head!6965 (List!35925) C!19972)

(assert (=> b!3185175 (= lt!1071312 (head!6965 lt!1071332))))

(declare-fun maxPrefixOneRule!1528 (LexerInterface!4723 Rule!10068 List!35925) Option!7000)

(declare-fun apply!8062 (TokenValueInjection!10156 BalanceConc!20900) TokenValue!5364)

(declare-fun size!27011 (List!35925) Int)

(assert (=> b!3185175 (= (maxPrefixOneRule!1528 thiss!18206 (rule!7556 (h!41223 tokens!494)) lt!1071333) (Some!6999 (tuple2!35161 (Token!9635 (apply!8062 (transformation!5134 (rule!7556 (h!41223 tokens!494))) lt!1071329) (rule!7556 (h!41223 tokens!494)) (size!27011 lt!1071333) lt!1071333) Nil!35801)))))

(declare-fun lt!1071311 () Unit!50210)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!641 (LexerInterface!4723 List!35926 List!35925 List!35925 List!35925 Rule!10068) Unit!50210)

(assert (=> b!3185175 (= lt!1071311 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!641 thiss!18206 rules!2135 lt!1071333 lt!1071333 Nil!35801 (rule!7556 (h!41223 tokens!494))))))

(assert (=> b!3185175 e!1984760))

(declare-fun res!1294935 () Bool)

(assert (=> b!3185175 (=> (not res!1294935) (not e!1984760))))

(declare-fun isDefined!5482 (Option!6999) Bool)

(assert (=> b!3185175 (= res!1294935 (isDefined!5482 lt!1071325))))

(declare-fun getRuleFromTag!863 (LexerInterface!4723 List!35926 String!40154) Option!6999)

(assert (=> b!3185175 (= lt!1071325 (getRuleFromTag!863 thiss!18206 rules!2135 (tag!5648 (rule!7556 separatorToken!241))))))

(declare-fun lt!1071330 () Unit!50210)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!863 (LexerInterface!4723 List!35926 List!35925 Token!9634) Unit!50210)

(assert (=> b!3185175 (= lt!1071330 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!863 thiss!18206 rules!2135 lt!1071332 separatorToken!241))))

(assert (=> b!3185175 e!1984755))

(declare-fun res!1294936 () Bool)

(assert (=> b!3185175 (=> (not res!1294936) (not e!1984755))))

(assert (=> b!3185175 (= res!1294936 (isDefined!5482 lt!1071316))))

(assert (=> b!3185175 (= lt!1071316 (getRuleFromTag!863 thiss!18206 rules!2135 (tag!5648 (rule!7556 (h!41223 tokens!494)))))))

(declare-fun lt!1071315 () Unit!50210)

(assert (=> b!3185175 (= lt!1071315 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!863 thiss!18206 rules!2135 lt!1071333 (h!41223 tokens!494)))))

(declare-fun lt!1071320 () Unit!50210)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!784 (LexerInterface!4723 List!35926 List!35927 Token!9634) Unit!50210)

(assert (=> b!3185175 (= lt!1071320 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!784 thiss!18206 rules!2135 tokens!494 (h!41223 tokens!494)))))

(declare-fun isEmpty!19933 (List!35925) Bool)

(declare-fun getSuffix!1350 (List!35925 List!35925) List!35925)

(assert (=> b!3185175 (isEmpty!19933 (getSuffix!1350 lt!1071333 lt!1071333))))

(declare-fun lt!1071321 () Unit!50210)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!28 (List!35925) Unit!50210)

(assert (=> b!3185175 (= lt!1071321 (lemmaGetSuffixOnListWithItSelfIsEmpty!28 lt!1071333))))

(declare-fun b!3185176 () Bool)

(assert (=> b!3185176 (= e!1984766 e!1984748)))

(declare-fun res!1294938 () Bool)

(assert (=> b!3185176 (=> res!1294938 e!1984748)))

(assert (=> b!3185176 (= res!1294938 (isSeparator!5134 (rule!7556 (h!41223 tokens!494))))))

(declare-fun lt!1071322 () Unit!50210)

(declare-fun forallContained!1117 (List!35927 Int Token!9634) Unit!50210)

(assert (=> b!3185176 (= lt!1071322 (forallContained!1117 tokens!494 lambda!116519 (h!41223 tokens!494)))))

(declare-fun b!3185177 () Bool)

(declare-fun res!1294940 () Bool)

(assert (=> b!3185177 (=> (not res!1294940) (not e!1984762))))

(assert (=> b!3185177 (= res!1294940 (isSeparator!5134 (rule!7556 separatorToken!241)))))

(declare-fun b!3185178 () Bool)

(declare-fun res!1294947 () Bool)

(assert (=> b!3185178 (=> (not res!1294947) (not e!1984762))))

(assert (=> b!3185178 (= res!1294947 (and (not ((_ is Nil!35803) tokens!494)) ((_ is Nil!35803) (t!235516 tokens!494))))))

(declare-fun b!3185179 () Bool)

(declare-fun res!1294944 () Bool)

(assert (=> b!3185179 (=> (not res!1294944) (not e!1984762))))

(declare-fun sepAndNonSepRulesDisjointChars!1328 (List!35926 List!35926) Bool)

(assert (=> b!3185179 (= res!1294944 (sepAndNonSepRulesDisjointChars!1328 rules!2135 rules!2135))))

(declare-fun b!3185180 () Bool)

(declare-fun tp!1007371 () Bool)

(assert (=> b!3185180 (= e!1984759 (and tp!1007371 (inv!48649 (tag!5648 (h!41222 rules!2135))) (inv!48653 (transformation!5134 (h!41222 rules!2135))) e!1984757))))

(declare-fun b!3185181 () Bool)

(declare-fun res!1294933 () Bool)

(assert (=> b!3185181 (=> (not res!1294933) (not e!1984744))))

(declare-fun rulesInvariant!4120 (LexerInterface!4723 List!35926) Bool)

(assert (=> b!3185181 (= res!1294933 (rulesInvariant!4120 thiss!18206 rules!2135))))

(assert (=> b!3185182 (= e!1984761 (and tp!1007367 tp!1007364))))

(assert (= (and start!298614 res!1294932) b!3185150))

(assert (= (and b!3185150 res!1294942) b!3185181))

(assert (= (and b!3185181 res!1294933) b!3185170))

(assert (= (and b!3185170 res!1294934) b!3185160))

(assert (= (and b!3185160 res!1294946) b!3185177))

(assert (= (and b!3185177 res!1294940) b!3185173))

(assert (= (and b!3185173 res!1294930) b!3185179))

(assert (= (and b!3185179 res!1294944) b!3185178))

(assert (= (and b!3185178 res!1294947) b!3185158))

(assert (= (and b!3185158 (not res!1294939)) b!3185152))

(assert (= (and b!3185152 (not res!1294948)) b!3185167))

(assert (= (and b!3185167 (not res!1294949)) b!3185153))

(assert (= (and b!3185153 (not res!1294945)) b!3185176))

(assert (= (and b!3185176 (not res!1294938)) b!3185164))

(assert (= (and b!3185164 (not res!1294941)) b!3185175))

(assert (= (and b!3185175 res!1294936) b!3185161))

(assert (= (and b!3185161 res!1294929) b!3185154))

(assert (= (and b!3185175 res!1294935) b!3185171))

(assert (= (and b!3185171 res!1294943) b!3185163))

(assert (= (and b!3185175 c!534885) b!3185162))

(assert (= (and b!3185175 (not c!534885)) b!3185151))

(assert (= (and b!3185162 res!1294937) b!3185166))

(assert (= (and b!3185175 (not res!1294931)) b!3185168))

(assert (= b!3185180 b!3185155))

(assert (= b!3185156 b!3185180))

(assert (= (and start!298614 ((_ is Cons!35802) rules!2135)) b!3185156))

(assert (= b!3185172 b!3185182))

(assert (= b!3185165 b!3185172))

(assert (= start!298614 b!3185165))

(assert (= b!3185174 b!3185169))

(assert (= b!3185159 b!3185174))

(assert (= b!3185157 b!3185159))

(assert (= (and start!298614 ((_ is Cons!35803) tokens!494)) b!3185157))

(declare-fun m!3442377 () Bool)

(assert (=> b!3185180 m!3442377))

(declare-fun m!3442379 () Bool)

(assert (=> b!3185180 m!3442379))

(declare-fun m!3442381 () Bool)

(assert (=> b!3185181 m!3442381))

(declare-fun m!3442383 () Bool)

(assert (=> b!3185167 m!3442383))

(declare-fun m!3442385 () Bool)

(assert (=> start!298614 m!3442385))

(declare-fun m!3442387 () Bool)

(assert (=> b!3185168 m!3442387))

(declare-fun m!3442389 () Bool)

(assert (=> b!3185168 m!3442389))

(declare-fun m!3442391 () Bool)

(assert (=> b!3185168 m!3442391))

(declare-fun m!3442393 () Bool)

(assert (=> b!3185168 m!3442393))

(declare-fun m!3442395 () Bool)

(assert (=> b!3185168 m!3442395))

(assert (=> b!3185168 m!3442393))

(declare-fun m!3442397 () Bool)

(assert (=> b!3185168 m!3442397))

(declare-fun m!3442399 () Bool)

(assert (=> b!3185153 m!3442399))

(declare-fun m!3442401 () Bool)

(assert (=> b!3185153 m!3442401))

(declare-fun m!3442403 () Bool)

(assert (=> b!3185153 m!3442403))

(declare-fun m!3442405 () Bool)

(assert (=> b!3185175 m!3442405))

(declare-fun m!3442407 () Bool)

(assert (=> b!3185175 m!3442407))

(declare-fun m!3442409 () Bool)

(assert (=> b!3185175 m!3442409))

(declare-fun m!3442411 () Bool)

(assert (=> b!3185175 m!3442411))

(declare-fun m!3442413 () Bool)

(assert (=> b!3185175 m!3442413))

(declare-fun m!3442415 () Bool)

(assert (=> b!3185175 m!3442415))

(declare-fun m!3442417 () Bool)

(assert (=> b!3185175 m!3442417))

(declare-fun m!3442419 () Bool)

(assert (=> b!3185175 m!3442419))

(assert (=> b!3185175 m!3442407))

(declare-fun m!3442421 () Bool)

(assert (=> b!3185175 m!3442421))

(declare-fun m!3442423 () Bool)

(assert (=> b!3185175 m!3442423))

(declare-fun m!3442425 () Bool)

(assert (=> b!3185175 m!3442425))

(declare-fun m!3442427 () Bool)

(assert (=> b!3185175 m!3442427))

(declare-fun m!3442429 () Bool)

(assert (=> b!3185175 m!3442429))

(declare-fun m!3442431 () Bool)

(assert (=> b!3185175 m!3442431))

(declare-fun m!3442433 () Bool)

(assert (=> b!3185175 m!3442433))

(declare-fun m!3442435 () Bool)

(assert (=> b!3185175 m!3442435))

(assert (=> b!3185175 m!3442409))

(declare-fun m!3442437 () Bool)

(assert (=> b!3185175 m!3442437))

(declare-fun m!3442439 () Bool)

(assert (=> b!3185176 m!3442439))

(declare-fun m!3442441 () Bool)

(assert (=> b!3185150 m!3442441))

(declare-fun m!3442443 () Bool)

(assert (=> b!3185159 m!3442443))

(declare-fun m!3442445 () Bool)

(assert (=> b!3185164 m!3442445))

(declare-fun m!3442447 () Bool)

(assert (=> b!3185164 m!3442447))

(declare-fun m!3442449 () Bool)

(assert (=> b!3185164 m!3442449))

(assert (=> b!3185164 m!3442447))

(declare-fun m!3442451 () Bool)

(assert (=> b!3185164 m!3442451))

(declare-fun m!3442453 () Bool)

(assert (=> b!3185164 m!3442453))

(declare-fun m!3442455 () Bool)

(assert (=> b!3185165 m!3442455))

(declare-fun m!3442457 () Bool)

(assert (=> b!3185160 m!3442457))

(declare-fun m!3442459 () Bool)

(assert (=> b!3185158 m!3442459))

(declare-fun m!3442461 () Bool)

(assert (=> b!3185158 m!3442461))

(declare-fun m!3442463 () Bool)

(assert (=> b!3185158 m!3442463))

(declare-fun m!3442465 () Bool)

(assert (=> b!3185158 m!3442465))

(declare-fun m!3442467 () Bool)

(assert (=> b!3185158 m!3442467))

(declare-fun m!3442469 () Bool)

(assert (=> b!3185174 m!3442469))

(declare-fun m!3442471 () Bool)

(assert (=> b!3185174 m!3442471))

(declare-fun m!3442473 () Bool)

(assert (=> b!3185161 m!3442473))

(declare-fun m!3442475 () Bool)

(assert (=> b!3185161 m!3442475))

(declare-fun m!3442477 () Bool)

(assert (=> b!3185179 m!3442477))

(declare-fun m!3442479 () Bool)

(assert (=> b!3185173 m!3442479))

(declare-fun m!3442481 () Bool)

(assert (=> b!3185162 m!3442481))

(declare-fun m!3442483 () Bool)

(assert (=> b!3185162 m!3442483))

(declare-fun m!3442485 () Bool)

(assert (=> b!3185170 m!3442485))

(declare-fun m!3442487 () Bool)

(assert (=> b!3185170 m!3442487))

(declare-fun m!3442489 () Bool)

(assert (=> b!3185157 m!3442489))

(declare-fun m!3442491 () Bool)

(assert (=> b!3185172 m!3442491))

(declare-fun m!3442493 () Bool)

(assert (=> b!3185172 m!3442493))

(declare-fun m!3442495 () Bool)

(assert (=> b!3185152 m!3442495))

(assert (=> b!3185152 m!3442495))

(declare-fun m!3442497 () Bool)

(assert (=> b!3185152 m!3442497))

(declare-fun m!3442499 () Bool)

(assert (=> b!3185171 m!3442499))

(declare-fun m!3442501 () Bool)

(assert (=> b!3185171 m!3442501))

(check-sat (not b!3185172) (not start!298614) (not b!3185152) (not b_next!84809) b_and!210729 (not b!3185168) (not b!3185160) (not b!3185158) (not b!3185159) (not b!3185157) (not b!3185173) (not b!3185181) (not b_next!84805) (not b!3185171) (not b_next!84807) (not b!3185175) b_and!210733 (not b!3185162) (not b!3185153) b_and!210735 (not b!3185167) (not b_next!84801) (not b!3185170) b_and!210727 (not b_next!84803) (not b!3185156) b_and!210731 (not b!3185180) b_and!210737 (not b!3185164) (not b!3185150) (not b!3185174) (not b_next!84811) (not b!3185161) (not b!3185165) (not b!3185176) (not b!3185179))
(check-sat b_and!210733 b_and!210735 (not b_next!84801) (not b_next!84809) b_and!210729 (not b_next!84811) (not b_next!84805) (not b_next!84807) b_and!210727 (not b_next!84803) b_and!210731 b_and!210737)
