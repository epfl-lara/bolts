; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372188 () Bool)

(assert start!372188)

(declare-fun b!3957745 () Bool)

(declare-fun b_free!109101 () Bool)

(declare-fun b_next!109805 () Bool)

(assert (=> b!3957745 (= b_free!109101 (not b_next!109805))))

(declare-fun tp!1206173 () Bool)

(declare-fun b_and!303727 () Bool)

(assert (=> b!3957745 (= tp!1206173 b_and!303727)))

(declare-fun b_free!109103 () Bool)

(declare-fun b_next!109807 () Bool)

(assert (=> b!3957745 (= b_free!109103 (not b_next!109807))))

(declare-fun tp!1206160 () Bool)

(declare-fun b_and!303729 () Bool)

(assert (=> b!3957745 (= tp!1206160 b_and!303729)))

(declare-fun b!3957731 () Bool)

(declare-fun b_free!109105 () Bool)

(declare-fun b_next!109809 () Bool)

(assert (=> b!3957731 (= b_free!109105 (not b_next!109809))))

(declare-fun tp!1206176 () Bool)

(declare-fun b_and!303731 () Bool)

(assert (=> b!3957731 (= tp!1206176 b_and!303731)))

(declare-fun b_free!109107 () Bool)

(declare-fun b_next!109811 () Bool)

(assert (=> b!3957731 (= b_free!109107 (not b_next!109811))))

(declare-fun tp!1206162 () Bool)

(declare-fun b_and!303733 () Bool)

(assert (=> b!3957731 (= tp!1206162 b_and!303733)))

(declare-fun b!3957739 () Bool)

(declare-fun b_free!109109 () Bool)

(declare-fun b_next!109813 () Bool)

(assert (=> b!3957739 (= b_free!109109 (not b_next!109813))))

(declare-fun tp!1206163 () Bool)

(declare-fun b_and!303735 () Bool)

(assert (=> b!3957739 (= tp!1206163 b_and!303735)))

(declare-fun b_free!109111 () Bool)

(declare-fun b_next!109815 () Bool)

(assert (=> b!3957739 (= b_free!109111 (not b_next!109815))))

(declare-fun tp!1206172 () Bool)

(declare-fun b_and!303737 () Bool)

(assert (=> b!3957739 (= tp!1206172 b_and!303737)))

(declare-fun b!3957724 () Bool)

(declare-fun e!2450372 () Bool)

(declare-fun tp_is_empty!19989 () Bool)

(declare-fun tp!1206167 () Bool)

(assert (=> b!3957724 (= e!2450372 (and tp_is_empty!19989 tp!1206167))))

(declare-fun b!3957725 () Bool)

(declare-fun e!2450362 () Bool)

(declare-fun e!2450370 () Bool)

(assert (=> b!3957725 (= e!2450362 e!2450370)))

(declare-fun res!1601623 () Bool)

(assert (=> b!3957725 (=> res!1601623 e!2450370)))

(declare-datatypes ((List!42259 0))(
  ( (Nil!42135) (Cons!42135 (h!47555 (_ BitVec 16)) (t!329514 List!42259)) )
))
(declare-datatypes ((TokenValue!6834 0))(
  ( (FloatLiteralValue!13668 (text!48283 List!42259)) (TokenValueExt!6833 (__x!25885 Int)) (Broken!34170 (value!208822 List!42259)) (Object!6957) (End!6834) (Def!6834) (Underscore!6834) (Match!6834) (Else!6834) (Error!6834) (Case!6834) (If!6834) (Extends!6834) (Abstract!6834) (Class!6834) (Val!6834) (DelimiterValue!13668 (del!6894 List!42259)) (KeywordValue!6840 (value!208823 List!42259)) (CommentValue!13668 (value!208824 List!42259)) (WhitespaceValue!13668 (value!208825 List!42259)) (IndentationValue!6834 (value!208826 List!42259)) (String!47887) (Int32!6834) (Broken!34171 (value!208827 List!42259)) (Boolean!6835) (Unit!60621) (OperatorValue!6837 (op!6894 List!42259)) (IdentifierValue!13668 (value!208828 List!42259)) (IdentifierValue!13669 (value!208829 List!42259)) (WhitespaceValue!13669 (value!208830 List!42259)) (True!13668) (False!13668) (Broken!34172 (value!208831 List!42259)) (Broken!34173 (value!208832 List!42259)) (True!13669) (RightBrace!6834) (RightBracket!6834) (Colon!6834) (Null!6834) (Comma!6834) (LeftBracket!6834) (False!13669) (LeftBrace!6834) (ImaginaryLiteralValue!6834 (text!48284 List!42259)) (StringLiteralValue!20502 (value!208833 List!42259)) (EOFValue!6834 (value!208834 List!42259)) (IdentValue!6834 (value!208835 List!42259)) (DelimiterValue!13669 (value!208836 List!42259)) (DedentValue!6834 (value!208837 List!42259)) (NewLineValue!6834 (value!208838 List!42259)) (IntegerValue!20502 (value!208839 (_ BitVec 32)) (text!48285 List!42259)) (IntegerValue!20503 (value!208840 Int) (text!48286 List!42259)) (Times!6834) (Or!6834) (Equal!6834) (Minus!6834) (Broken!34174 (value!208841 List!42259)) (And!6834) (Div!6834) (LessEqual!6834) (Mod!6834) (Concat!18343) (Not!6834) (Plus!6834) (SpaceValue!6834 (value!208842 List!42259)) (IntegerValue!20504 (value!208843 Int) (text!48287 List!42259)) (StringLiteralValue!20503 (text!48288 List!42259)) (FloatLiteralValue!13669 (text!48289 List!42259)) (BytesLiteralValue!6834 (value!208844 List!42259)) (CommentValue!13669 (value!208845 List!42259)) (StringLiteralValue!20504 (value!208846 List!42259)) (ErrorTokenValue!6834 (msg!6895 List!42259)) )
))
(declare-datatypes ((C!23204 0))(
  ( (C!23205 (val!13696 Int)) )
))
(declare-datatypes ((Regex!11509 0))(
  ( (ElementMatch!11509 (c!686868 C!23204)) (Concat!18344 (regOne!23530 Regex!11509) (regTwo!23530 Regex!11509)) (EmptyExpr!11509) (Star!11509 (reg!11838 Regex!11509)) (EmptyLang!11509) (Union!11509 (regOne!23531 Regex!11509) (regTwo!23531 Regex!11509)) )
))
(declare-datatypes ((String!47888 0))(
  ( (String!47889 (value!208847 String)) )
))
(declare-datatypes ((List!42260 0))(
  ( (Nil!42136) (Cons!42136 (h!47556 C!23204) (t!329515 List!42260)) )
))
(declare-datatypes ((IArray!25635 0))(
  ( (IArray!25636 (innerList!12875 List!42260)) )
))
(declare-datatypes ((Conc!12815 0))(
  ( (Node!12815 (left!31999 Conc!12815) (right!32329 Conc!12815) (csize!25860 Int) (cheight!13026 Int)) (Leaf!19824 (xs!16121 IArray!25635) (csize!25861 Int)) (Empty!12815) )
))
(declare-datatypes ((BalanceConc!25224 0))(
  ( (BalanceConc!25225 (c!686869 Conc!12815)) )
))
(declare-datatypes ((TokenValueInjection!13096 0))(
  ( (TokenValueInjection!13097 (toValue!9084 Int) (toChars!8943 Int)) )
))
(declare-datatypes ((Rule!13008 0))(
  ( (Rule!13009 (regex!6604 Regex!11509) (tag!7464 String!47888) (isSeparator!6604 Bool) (transformation!6604 TokenValueInjection!13096)) )
))
(declare-datatypes ((Token!12346 0))(
  ( (Token!12347 (value!208848 TokenValue!6834) (rule!9578 Rule!13008) (size!31558 Int) (originalCharacters!7204 List!42260)) )
))
(declare-datatypes ((List!42261 0))(
  ( (Nil!42137) (Cons!42137 (h!47557 Token!12346) (t!329516 List!42261)) )
))
(declare-fun lt!1383930 () List!42261)

(declare-fun isEmpty!25188 (List!42261) Bool)

(assert (=> b!3957725 (= res!1601623 (isEmpty!25188 lt!1383930))))

(declare-fun prefixTokens!80 () List!42261)

(declare-fun tail!6137 (List!42261) List!42261)

(assert (=> b!3957725 (= lt!1383930 (tail!6137 prefixTokens!80))))

(declare-fun b!3957726 () Bool)

(declare-fun e!2450371 () Bool)

(declare-datatypes ((tuple2!41422 0))(
  ( (tuple2!41423 (_1!23845 Token!12346) (_2!23845 List!42260)) )
))
(declare-datatypes ((Option!9024 0))(
  ( (None!9023) (Some!9023 (v!39369 tuple2!41422)) )
))
(declare-fun lt!1383941 () Option!9024)

(declare-fun size!31559 (List!42260) Int)

(assert (=> b!3957726 (= e!2450371 (= (size!31558 (_1!23845 (v!39369 lt!1383941))) (size!31559 (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941))))))))

(declare-fun e!2450382 () Bool)

(declare-fun e!2450386 () Bool)

(declare-fun tp!1206161 () Bool)

(declare-fun b!3957728 () Bool)

(declare-fun inv!21 (TokenValue!6834) Bool)

(assert (=> b!3957728 (= e!2450386 (and (inv!21 (value!208848 (h!47557 prefixTokens!80))) e!2450382 tp!1206161))))

(declare-fun b!3957729 () Bool)

(declare-fun e!2450388 () Bool)

(declare-fun tp!1206175 () Bool)

(assert (=> b!3957729 (= e!2450388 (and tp_is_empty!19989 tp!1206175))))

(declare-fun b!3957730 () Bool)

(declare-fun res!1601616 () Bool)

(assert (=> b!3957730 (=> res!1601616 e!2450370)))

(declare-fun lt!1383944 () Token!12346)

(assert (=> b!3957730 (= res!1601616 (not (= (_1!23845 (v!39369 lt!1383941)) lt!1383944)))))

(declare-fun e!2450383 () Bool)

(assert (=> b!3957731 (= e!2450383 (and tp!1206176 tp!1206162))))

(declare-fun b!3957732 () Bool)

(declare-fun res!1601606 () Bool)

(assert (=> b!3957732 (=> res!1601606 e!2450370)))

(declare-fun suffixResult!91 () List!42260)

(declare-datatypes ((LexerInterface!6193 0))(
  ( (LexerInterfaceExt!6190 (__x!25886 Int)) (Lexer!6191) )
))
(declare-fun thiss!20629 () LexerInterface!6193)

(declare-fun lt!1383928 () tuple2!41422)

(declare-fun suffixTokens!72 () List!42261)

(declare-datatypes ((List!42262 0))(
  ( (Nil!42138) (Cons!42138 (h!47558 Rule!13008) (t!329517 List!42262)) )
))
(declare-fun rules!2768 () List!42262)

(declare-datatypes ((tuple2!41424 0))(
  ( (tuple2!41425 (_1!23846 List!42261) (_2!23846 List!42260)) )
))
(declare-fun lexList!1961 (LexerInterface!6193 List!42262 List!42260) tuple2!41424)

(declare-fun ++!10965 (List!42261 List!42261) List!42261)

(assert (=> b!3957732 (= res!1601606 (not (= (lexList!1961 thiss!20629 rules!2768 (_2!23845 lt!1383928)) (tuple2!41425 (++!10965 lt!1383930 suffixTokens!72) suffixResult!91))))))

(declare-fun b!3957733 () Bool)

(declare-fun res!1601617 () Bool)

(declare-fun e!2450379 () Bool)

(assert (=> b!3957733 (=> (not res!1601617) (not e!2450379))))

(declare-fun rulesInvariant!5536 (LexerInterface!6193 List!42262) Bool)

(assert (=> b!3957733 (= res!1601617 (rulesInvariant!5536 thiss!20629 rules!2768))))

(declare-fun b!3957734 () Bool)

(declare-fun res!1601619 () Bool)

(assert (=> b!3957734 (=> (not res!1601619) (not e!2450379))))

(assert (=> b!3957734 (= res!1601619 (not (isEmpty!25188 prefixTokens!80)))))

(declare-fun b!3957735 () Bool)

(declare-fun res!1601610 () Bool)

(declare-fun e!2450377 () Bool)

(assert (=> b!3957735 (=> (not res!1601610) (not e!2450377))))

(declare-fun suffix!1176 () List!42260)

(assert (=> b!3957735 (= res!1601610 (= (lexList!1961 thiss!20629 rules!2768 suffix!1176) (tuple2!41425 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3957736 () Bool)

(declare-fun e!2450369 () Bool)

(declare-fun e!2450365 () Bool)

(declare-fun tp!1206174 () Bool)

(assert (=> b!3957736 (= e!2450369 (and e!2450365 tp!1206174))))

(declare-fun b!3957737 () Bool)

(declare-fun e!2450376 () Bool)

(declare-fun e!2450373 () Bool)

(assert (=> b!3957737 (= e!2450376 (not e!2450373))))

(declare-fun res!1601608 () Bool)

(assert (=> b!3957737 (=> res!1601608 e!2450373)))

(declare-fun lt!1383933 () List!42260)

(declare-fun lt!1383943 () List!42260)

(assert (=> b!3957737 (= res!1601608 (not (= lt!1383933 lt!1383943)))))

(declare-fun lt!1383934 () tuple2!41424)

(assert (=> b!3957737 (= lt!1383934 (lexList!1961 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1383941))))))

(declare-fun lt!1383927 () TokenValue!6834)

(declare-fun lt!1383939 () Int)

(declare-fun lt!1383926 () List!42260)

(declare-fun lt!1383938 () List!42260)

(assert (=> b!3957737 (and (= (size!31558 (_1!23845 (v!39369 lt!1383941))) lt!1383939) (= (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941))) lt!1383938) (= (v!39369 lt!1383941) (tuple2!41423 (Token!12347 lt!1383927 (rule!9578 (_1!23845 (v!39369 lt!1383941))) lt!1383939 lt!1383938) lt!1383926)))))

(assert (=> b!3957737 (= lt!1383939 (size!31559 lt!1383938))))

(assert (=> b!3957737 e!2450371))

(declare-fun res!1601622 () Bool)

(assert (=> b!3957737 (=> (not res!1601622) (not e!2450371))))

(assert (=> b!3957737 (= res!1601622 (= (value!208848 (_1!23845 (v!39369 lt!1383941))) lt!1383927))))

(declare-fun apply!9835 (TokenValueInjection!13096 BalanceConc!25224) TokenValue!6834)

(declare-fun seqFromList!4863 (List!42260) BalanceConc!25224)

(assert (=> b!3957737 (= lt!1383927 (apply!9835 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (seqFromList!4863 lt!1383938)))))

(assert (=> b!3957737 (= (_2!23845 (v!39369 lt!1383941)) lt!1383926)))

(declare-datatypes ((Unit!60622 0))(
  ( (Unit!60623) )
))
(declare-fun lt!1383942 () Unit!60622)

(declare-fun lemmaSamePrefixThenSameSuffix!1902 (List!42260 List!42260 List!42260 List!42260 List!42260) Unit!60622)

(assert (=> b!3957737 (= lt!1383942 (lemmaSamePrefixThenSameSuffix!1902 lt!1383938 (_2!23845 (v!39369 lt!1383941)) lt!1383938 lt!1383926 lt!1383943))))

(declare-fun getSuffix!2144 (List!42260 List!42260) List!42260)

(assert (=> b!3957737 (= lt!1383926 (getSuffix!2144 lt!1383943 lt!1383938))))

(declare-fun isPrefix!3693 (List!42260 List!42260) Bool)

(assert (=> b!3957737 (isPrefix!3693 lt!1383938 lt!1383933)))

(declare-fun ++!10966 (List!42260 List!42260) List!42260)

(assert (=> b!3957737 (= lt!1383933 (++!10966 lt!1383938 (_2!23845 (v!39369 lt!1383941))))))

(declare-fun lt!1383937 () Unit!60622)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2552 (List!42260 List!42260) Unit!60622)

(assert (=> b!3957737 (= lt!1383937 (lemmaConcatTwoListThenFirstIsPrefix!2552 lt!1383938 (_2!23845 (v!39369 lt!1383941))))))

(declare-fun list!15644 (BalanceConc!25224) List!42260)

(declare-fun charsOf!4422 (Token!12346) BalanceConc!25224)

(assert (=> b!3957737 (= lt!1383938 (list!15644 (charsOf!4422 (_1!23845 (v!39369 lt!1383941)))))))

(declare-fun ruleValid!2546 (LexerInterface!6193 Rule!13008) Bool)

(assert (=> b!3957737 (ruleValid!2546 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))

(declare-fun lt!1383945 () Unit!60622)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1622 (LexerInterface!6193 Rule!13008 List!42262) Unit!60622)

(assert (=> b!3957737 (= lt!1383945 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1622 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))) rules!2768))))

(declare-fun lt!1383932 () Unit!60622)

(declare-fun lemmaCharactersSize!1257 (Token!12346) Unit!60622)

(assert (=> b!3957737 (= lt!1383932 (lemmaCharactersSize!1257 (_1!23845 (v!39369 lt!1383941))))))

(declare-fun b!3957738 () Bool)

(assert (=> b!3957738 (= e!2450379 e!2450377)))

(declare-fun res!1601609 () Bool)

(assert (=> b!3957738 (=> (not res!1601609) (not e!2450377))))

(declare-fun lt!1383924 () tuple2!41424)

(declare-fun lt!1383940 () List!42261)

(assert (=> b!3957738 (= res!1601609 (= lt!1383924 (tuple2!41425 lt!1383940 suffixResult!91)))))

(assert (=> b!3957738 (= lt!1383924 (lexList!1961 thiss!20629 rules!2768 lt!1383943))))

(assert (=> b!3957738 (= lt!1383940 (++!10965 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42260)

(assert (=> b!3957738 (= lt!1383943 (++!10966 prefix!426 suffix!1176))))

(declare-fun e!2450368 () Bool)

(assert (=> b!3957739 (= e!2450368 (and tp!1206163 tp!1206172))))

(declare-fun b!3957740 () Bool)

(declare-fun res!1601618 () Bool)

(assert (=> b!3957740 (=> (not res!1601618) (not e!2450379))))

(declare-fun isEmpty!25189 (List!42262) Bool)

(assert (=> b!3957740 (= res!1601618 (not (isEmpty!25189 rules!2768)))))

(declare-fun b!3957727 () Bool)

(declare-fun res!1601612 () Bool)

(assert (=> b!3957727 (=> res!1601612 e!2450373)))

(assert (=> b!3957727 (= res!1601612 (not (= lt!1383924 (tuple2!41425 (++!10965 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137) (_1!23846 lt!1383934)) (_2!23846 lt!1383934)))))))

(declare-fun res!1601605 () Bool)

(assert (=> start!372188 (=> (not res!1601605) (not e!2450379))))

(get-info :version)

(assert (=> start!372188 (= res!1601605 ((_ is Lexer!6191) thiss!20629))))

(assert (=> start!372188 e!2450379))

(assert (=> start!372188 e!2450372))

(assert (=> start!372188 true))

(assert (=> start!372188 e!2450388))

(assert (=> start!372188 e!2450369))

(declare-fun e!2450374 () Bool)

(assert (=> start!372188 e!2450374))

(declare-fun e!2450387 () Bool)

(assert (=> start!372188 e!2450387))

(declare-fun e!2450359 () Bool)

(assert (=> start!372188 e!2450359))

(declare-fun b!3957741 () Bool)

(assert (=> b!3957741 (= e!2450377 e!2450376)))

(declare-fun res!1601615 () Bool)

(assert (=> b!3957741 (=> (not res!1601615) (not e!2450376))))

(assert (=> b!3957741 (= res!1601615 ((_ is Some!9023) lt!1383941))))

(declare-fun maxPrefix!3497 (LexerInterface!6193 List!42262 List!42260) Option!9024)

(assert (=> b!3957741 (= lt!1383941 (maxPrefix!3497 thiss!20629 rules!2768 lt!1383943))))

(declare-fun tp!1206164 () Bool)

(declare-fun e!2450363 () Bool)

(declare-fun b!3957742 () Bool)

(declare-fun inv!56366 (Token!12346) Bool)

(assert (=> b!3957742 (= e!2450387 (and (inv!56366 (h!47557 suffixTokens!72)) e!2450363 tp!1206164))))

(declare-fun b!3957743 () Bool)

(declare-fun e!2450364 () Bool)

(declare-fun e!2450375 () Bool)

(assert (=> b!3957743 (= e!2450364 e!2450375)))

(declare-fun res!1601614 () Bool)

(assert (=> b!3957743 (=> res!1601614 e!2450375)))

(declare-fun lt!1383936 () Int)

(declare-fun lt!1383929 () Int)

(declare-fun lt!1383931 () Int)

(assert (=> b!3957743 (= res!1601614 (or (not (= (+ lt!1383931 lt!1383936) lt!1383929)) (<= lt!1383939 lt!1383931)))))

(assert (=> b!3957743 (= lt!1383931 (size!31559 prefix!426))))

(declare-fun b!3957744 () Bool)

(declare-fun e!2450366 () Bool)

(assert (=> b!3957744 (= e!2450373 e!2450366)))

(declare-fun res!1601607 () Bool)

(assert (=> b!3957744 (=> res!1601607 e!2450366)))

(declare-fun lt!1383925 () Int)

(assert (=> b!3957744 (= res!1601607 (>= lt!1383925 lt!1383936))))

(assert (=> b!3957744 (= lt!1383936 (size!31559 suffix!1176))))

(assert (=> b!3957744 (= lt!1383925 (size!31559 (_2!23845 (v!39369 lt!1383941))))))

(declare-fun e!2450367 () Bool)

(assert (=> b!3957745 (= e!2450367 (and tp!1206173 tp!1206160))))

(declare-fun b!3957746 () Bool)

(declare-fun e!2450384 () Bool)

(assert (=> b!3957746 (= e!2450375 e!2450384)))

(declare-fun res!1601613 () Bool)

(assert (=> b!3957746 (=> res!1601613 e!2450384)))

(declare-fun matchR!5530 (Regex!11509 List!42260) Bool)

(assert (=> b!3957746 (= res!1601613 (not (matchR!5530 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) lt!1383938)))))

(declare-fun maxPrefixOneRule!2547 (LexerInterface!6193 Rule!13008 List!42260) Option!9024)

(assert (=> b!3957746 (= (maxPrefixOneRule!2547 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))) lt!1383943) (Some!9023 (tuple2!41423 (Token!12347 lt!1383927 (rule!9578 (_1!23845 (v!39369 lt!1383941))) lt!1383939 lt!1383938) (_2!23845 (v!39369 lt!1383941)))))))

(declare-fun lt!1383935 () Unit!60622)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1373 (LexerInterface!6193 List!42262 List!42260 List!42260 List!42260 Rule!13008) Unit!60622)

(assert (=> b!3957746 (= lt!1383935 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1373 thiss!20629 rules!2768 lt!1383938 lt!1383943 (_2!23845 (v!39369 lt!1383941)) (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))

(declare-fun tp!1206168 () Bool)

(declare-fun b!3957747 () Bool)

(declare-fun inv!56363 (String!47888) Bool)

(declare-fun inv!56367 (TokenValueInjection!13096) Bool)

(assert (=> b!3957747 (= e!2450382 (and tp!1206168 (inv!56363 (tag!7464 (rule!9578 (h!47557 prefixTokens!80)))) (inv!56367 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) e!2450367))))

(declare-fun b!3957748 () Bool)

(assert (=> b!3957748 (= e!2450384 e!2450362)))

(declare-fun res!1601611 () Bool)

(assert (=> b!3957748 (=> res!1601611 e!2450362)))

(assert (=> b!3957748 (= res!1601611 (not (= (_1!23845 lt!1383928) lt!1383944)))))

(declare-fun head!8411 (List!42261) Token!12346)

(assert (=> b!3957748 (= lt!1383944 (head!8411 prefixTokens!80))))

(declare-fun get!13896 (Option!9024) tuple2!41422)

(assert (=> b!3957748 (= lt!1383928 (get!13896 lt!1383941))))

(declare-fun tp!1206169 () Bool)

(declare-fun e!2450381 () Bool)

(declare-fun b!3957749 () Bool)

(assert (=> b!3957749 (= e!2450381 (and tp!1206169 (inv!56363 (tag!7464 (rule!9578 (h!47557 suffixTokens!72)))) (inv!56367 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) e!2450383))))

(declare-fun b!3957750 () Bool)

(declare-fun tp!1206171 () Bool)

(assert (=> b!3957750 (= e!2450359 (and tp_is_empty!19989 tp!1206171))))

(declare-fun b!3957751 () Bool)

(declare-fun res!1601621 () Bool)

(assert (=> b!3957751 (=> (not res!1601621) (not e!2450379))))

(declare-fun isEmpty!25190 (List!42260) Bool)

(assert (=> b!3957751 (= res!1601621 (not (isEmpty!25190 prefix!426)))))

(declare-fun b!3957752 () Bool)

(assert (=> b!3957752 (= e!2450366 e!2450364)))

(declare-fun res!1601604 () Bool)

(assert (=> b!3957752 (=> res!1601604 e!2450364)))

(assert (=> b!3957752 (= res!1601604 (not (= (+ lt!1383939 lt!1383925) lt!1383929)))))

(assert (=> b!3957752 (= lt!1383929 (size!31559 lt!1383943))))

(declare-fun tp!1206166 () Bool)

(declare-fun b!3957753 () Bool)

(assert (=> b!3957753 (= e!2450363 (and (inv!21 (value!208848 (h!47557 suffixTokens!72))) e!2450381 tp!1206166))))

(declare-fun b!3957754 () Bool)

(declare-fun res!1601624 () Bool)

(assert (=> b!3957754 (=> res!1601624 e!2450362)))

(assert (=> b!3957754 (= res!1601624 (>= (size!31559 (_2!23845 lt!1383928)) lt!1383936))))

(declare-fun b!3957755 () Bool)

(assert (=> b!3957755 (= e!2450370 (not (isEmpty!25190 suffix!1176)))))

(declare-fun b!3957756 () Bool)

(declare-fun res!1601620 () Bool)

(assert (=> b!3957756 (=> res!1601620 e!2450373)))

(assert (=> b!3957756 (= res!1601620 (or (not (= lt!1383934 (tuple2!41425 (_1!23846 lt!1383934) (_2!23846 lt!1383934)))) (= (_2!23845 (v!39369 lt!1383941)) suffix!1176)))))

(declare-fun b!3957757 () Bool)

(declare-fun tp!1206170 () Bool)

(assert (=> b!3957757 (= e!2450365 (and tp!1206170 (inv!56363 (tag!7464 (h!47558 rules!2768))) (inv!56367 (transformation!6604 (h!47558 rules!2768))) e!2450368))))

(declare-fun b!3957758 () Bool)

(declare-fun tp!1206165 () Bool)

(assert (=> b!3957758 (= e!2450374 (and (inv!56366 (h!47557 prefixTokens!80)) e!2450386 tp!1206165))))

(assert (= (and start!372188 res!1601605) b!3957740))

(assert (= (and b!3957740 res!1601618) b!3957733))

(assert (= (and b!3957733 res!1601617) b!3957734))

(assert (= (and b!3957734 res!1601619) b!3957751))

(assert (= (and b!3957751 res!1601621) b!3957738))

(assert (= (and b!3957738 res!1601609) b!3957735))

(assert (= (and b!3957735 res!1601610) b!3957741))

(assert (= (and b!3957741 res!1601615) b!3957737))

(assert (= (and b!3957737 res!1601622) b!3957726))

(assert (= (and b!3957737 (not res!1601608)) b!3957727))

(assert (= (and b!3957727 (not res!1601612)) b!3957756))

(assert (= (and b!3957756 (not res!1601620)) b!3957744))

(assert (= (and b!3957744 (not res!1601607)) b!3957752))

(assert (= (and b!3957752 (not res!1601604)) b!3957743))

(assert (= (and b!3957743 (not res!1601614)) b!3957746))

(assert (= (and b!3957746 (not res!1601613)) b!3957748))

(assert (= (and b!3957748 (not res!1601611)) b!3957754))

(assert (= (and b!3957754 (not res!1601624)) b!3957725))

(assert (= (and b!3957725 (not res!1601623)) b!3957730))

(assert (= (and b!3957730 (not res!1601616)) b!3957732))

(assert (= (and b!3957732 (not res!1601606)) b!3957755))

(assert (= (and start!372188 ((_ is Cons!42136) suffixResult!91)) b!3957724))

(assert (= (and start!372188 ((_ is Cons!42136) suffix!1176)) b!3957729))

(assert (= b!3957757 b!3957739))

(assert (= b!3957736 b!3957757))

(assert (= (and start!372188 ((_ is Cons!42138) rules!2768)) b!3957736))

(assert (= b!3957747 b!3957745))

(assert (= b!3957728 b!3957747))

(assert (= b!3957758 b!3957728))

(assert (= (and start!372188 ((_ is Cons!42137) prefixTokens!80)) b!3957758))

(assert (= b!3957749 b!3957731))

(assert (= b!3957753 b!3957749))

(assert (= b!3957742 b!3957753))

(assert (= (and start!372188 ((_ is Cons!42137) suffixTokens!72)) b!3957742))

(assert (= (and start!372188 ((_ is Cons!42136) prefix!426)) b!3957750))

(declare-fun m!4526573 () Bool)

(assert (=> b!3957726 m!4526573))

(declare-fun m!4526575 () Bool)

(assert (=> b!3957741 m!4526575))

(declare-fun m!4526577 () Bool)

(assert (=> b!3957732 m!4526577))

(declare-fun m!4526579 () Bool)

(assert (=> b!3957732 m!4526579))

(declare-fun m!4526581 () Bool)

(assert (=> b!3957743 m!4526581))

(declare-fun m!4526583 () Bool)

(assert (=> b!3957755 m!4526583))

(declare-fun m!4526585 () Bool)

(assert (=> b!3957751 m!4526585))

(declare-fun m!4526587 () Bool)

(assert (=> b!3957747 m!4526587))

(declare-fun m!4526589 () Bool)

(assert (=> b!3957747 m!4526589))

(declare-fun m!4526591 () Bool)

(assert (=> b!3957746 m!4526591))

(declare-fun m!4526593 () Bool)

(assert (=> b!3957746 m!4526593))

(declare-fun m!4526595 () Bool)

(assert (=> b!3957746 m!4526595))

(declare-fun m!4526597 () Bool)

(assert (=> b!3957738 m!4526597))

(declare-fun m!4526599 () Bool)

(assert (=> b!3957738 m!4526599))

(declare-fun m!4526601 () Bool)

(assert (=> b!3957738 m!4526601))

(declare-fun m!4526603 () Bool)

(assert (=> b!3957744 m!4526603))

(declare-fun m!4526605 () Bool)

(assert (=> b!3957744 m!4526605))

(declare-fun m!4526607 () Bool)

(assert (=> b!3957735 m!4526607))

(declare-fun m!4526609 () Bool)

(assert (=> b!3957740 m!4526609))

(declare-fun m!4526611 () Bool)

(assert (=> b!3957734 m!4526611))

(declare-fun m!4526613 () Bool)

(assert (=> b!3957742 m!4526613))

(declare-fun m!4526615 () Bool)

(assert (=> b!3957748 m!4526615))

(declare-fun m!4526617 () Bool)

(assert (=> b!3957748 m!4526617))

(declare-fun m!4526619 () Bool)

(assert (=> b!3957754 m!4526619))

(declare-fun m!4526621 () Bool)

(assert (=> b!3957752 m!4526621))

(declare-fun m!4526623 () Bool)

(assert (=> b!3957733 m!4526623))

(declare-fun m!4526625 () Bool)

(assert (=> b!3957758 m!4526625))

(declare-fun m!4526627 () Bool)

(assert (=> b!3957728 m!4526627))

(declare-fun m!4526629 () Bool)

(assert (=> b!3957727 m!4526629))

(declare-fun m!4526631 () Bool)

(assert (=> b!3957737 m!4526631))

(declare-fun m!4526633 () Bool)

(assert (=> b!3957737 m!4526633))

(declare-fun m!4526635 () Bool)

(assert (=> b!3957737 m!4526635))

(declare-fun m!4526637 () Bool)

(assert (=> b!3957737 m!4526637))

(declare-fun m!4526639 () Bool)

(assert (=> b!3957737 m!4526639))

(declare-fun m!4526641 () Bool)

(assert (=> b!3957737 m!4526641))

(declare-fun m!4526643 () Bool)

(assert (=> b!3957737 m!4526643))

(declare-fun m!4526645 () Bool)

(assert (=> b!3957737 m!4526645))

(assert (=> b!3957737 m!4526639))

(declare-fun m!4526647 () Bool)

(assert (=> b!3957737 m!4526647))

(declare-fun m!4526649 () Bool)

(assert (=> b!3957737 m!4526649))

(declare-fun m!4526651 () Bool)

(assert (=> b!3957737 m!4526651))

(assert (=> b!3957737 m!4526641))

(declare-fun m!4526653 () Bool)

(assert (=> b!3957737 m!4526653))

(declare-fun m!4526655 () Bool)

(assert (=> b!3957737 m!4526655))

(declare-fun m!4526657 () Bool)

(assert (=> b!3957737 m!4526657))

(declare-fun m!4526659 () Bool)

(assert (=> b!3957757 m!4526659))

(declare-fun m!4526661 () Bool)

(assert (=> b!3957757 m!4526661))

(declare-fun m!4526663 () Bool)

(assert (=> b!3957725 m!4526663))

(declare-fun m!4526665 () Bool)

(assert (=> b!3957725 m!4526665))

(declare-fun m!4526667 () Bool)

(assert (=> b!3957749 m!4526667))

(declare-fun m!4526669 () Bool)

(assert (=> b!3957749 m!4526669))

(declare-fun m!4526671 () Bool)

(assert (=> b!3957753 m!4526671))

(check-sat (not b_next!109811) (not b_next!109807) (not b!3957757) (not b!3957747) (not b!3957740) (not b_next!109809) (not b!3957728) (not b!3957743) (not b!3957746) b_and!303727 b_and!303729 (not b!3957749) b_and!303731 (not b!3957752) (not b!3957727) b_and!303737 (not b!3957738) (not b!3957725) b_and!303735 (not b!3957732) (not b!3957755) (not b!3957737) (not b_next!109805) (not b!3957758) (not b!3957744) (not b!3957742) (not b!3957754) (not b!3957733) tp_is_empty!19989 (not b_next!109815) (not b!3957748) (not b!3957741) (not b!3957734) (not b!3957724) (not b!3957736) (not b!3957753) (not b!3957729) (not b!3957735) (not b!3957751) (not b!3957750) b_and!303733 (not b!3957726) (not b_next!109813))
(check-sat (not b_next!109811) (not b_next!109807) b_and!303737 b_and!303735 (not b_next!109809) b_and!303727 (not b_next!109805) b_and!303729 (not b_next!109815) b_and!303731 b_and!303733 (not b_next!109813))
(get-model)

(declare-fun d!1173093 () Bool)

(declare-fun lt!1383948 () Int)

(assert (=> d!1173093 (>= lt!1383948 0)))

(declare-fun e!2450391 () Int)

(assert (=> d!1173093 (= lt!1383948 e!2450391)))

(declare-fun c!686872 () Bool)

(assert (=> d!1173093 (= c!686872 ((_ is Nil!42136) (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941)))))))

(assert (=> d!1173093 (= (size!31559 (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941)))) lt!1383948)))

(declare-fun b!3957763 () Bool)

(assert (=> b!3957763 (= e!2450391 0)))

(declare-fun b!3957764 () Bool)

(assert (=> b!3957764 (= e!2450391 (+ 1 (size!31559 (t!329515 (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941)))))))))

(assert (= (and d!1173093 c!686872) b!3957763))

(assert (= (and d!1173093 (not c!686872)) b!3957764))

(declare-fun m!4526673 () Bool)

(assert (=> b!3957764 m!4526673))

(assert (=> b!3957726 d!1173093))

(declare-fun b!3957773 () Bool)

(declare-fun e!2450397 () List!42261)

(assert (=> b!3957773 (= e!2450397 (_1!23846 lt!1383934))))

(declare-fun e!2450396 () Bool)

(declare-fun b!3957776 () Bool)

(declare-fun lt!1383951 () List!42261)

(assert (=> b!3957776 (= e!2450396 (or (not (= (_1!23846 lt!1383934) Nil!42137)) (= lt!1383951 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137))))))

(declare-fun d!1173095 () Bool)

(assert (=> d!1173095 e!2450396))

(declare-fun res!1601631 () Bool)

(assert (=> d!1173095 (=> (not res!1601631) (not e!2450396))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6398 (List!42261) (InoxSet Token!12346))

(assert (=> d!1173095 (= res!1601631 (= (content!6398 lt!1383951) ((_ map or) (content!6398 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137)) (content!6398 (_1!23846 lt!1383934)))))))

(assert (=> d!1173095 (= lt!1383951 e!2450397)))

(declare-fun c!686875 () Bool)

(assert (=> d!1173095 (= c!686875 ((_ is Nil!42137) (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137)))))

(assert (=> d!1173095 (= (++!10965 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137) (_1!23846 lt!1383934)) lt!1383951)))

(declare-fun b!3957774 () Bool)

(assert (=> b!3957774 (= e!2450397 (Cons!42137 (h!47557 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137)) (++!10965 (t!329516 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137)) (_1!23846 lt!1383934))))))

(declare-fun b!3957775 () Bool)

(declare-fun res!1601632 () Bool)

(assert (=> b!3957775 (=> (not res!1601632) (not e!2450396))))

(declare-fun size!31561 (List!42261) Int)

(assert (=> b!3957775 (= res!1601632 (= (size!31561 lt!1383951) (+ (size!31561 (Cons!42137 (_1!23845 (v!39369 lt!1383941)) Nil!42137)) (size!31561 (_1!23846 lt!1383934)))))))

(assert (= (and d!1173095 c!686875) b!3957773))

(assert (= (and d!1173095 (not c!686875)) b!3957774))

(assert (= (and d!1173095 res!1601631) b!3957775))

(assert (= (and b!3957775 res!1601632) b!3957776))

(declare-fun m!4526675 () Bool)

(assert (=> d!1173095 m!4526675))

(declare-fun m!4526677 () Bool)

(assert (=> d!1173095 m!4526677))

(declare-fun m!4526679 () Bool)

(assert (=> d!1173095 m!4526679))

(declare-fun m!4526681 () Bool)

(assert (=> b!3957774 m!4526681))

(declare-fun m!4526683 () Bool)

(assert (=> b!3957775 m!4526683))

(declare-fun m!4526685 () Bool)

(assert (=> b!3957775 m!4526685))

(declare-fun m!4526687 () Bool)

(assert (=> b!3957775 m!4526687))

(assert (=> b!3957727 d!1173095))

(declare-fun d!1173097 () Bool)

(assert (=> d!1173097 (= (head!8411 prefixTokens!80) (h!47557 prefixTokens!80))))

(assert (=> b!3957748 d!1173097))

(declare-fun d!1173099 () Bool)

(assert (=> d!1173099 (= (get!13896 lt!1383941) (v!39369 lt!1383941))))

(assert (=> b!3957748 d!1173099))

(declare-fun d!1173101 () Bool)

(assert (=> d!1173101 (= (isEmpty!25188 lt!1383930) ((_ is Nil!42137) lt!1383930))))

(assert (=> b!3957725 d!1173101))

(declare-fun d!1173103 () Bool)

(assert (=> d!1173103 (= (tail!6137 prefixTokens!80) (t!329516 prefixTokens!80))))

(assert (=> b!3957725 d!1173103))

(declare-fun b!3957805 () Bool)

(declare-fun res!1601655 () Bool)

(declare-fun e!2450413 () Bool)

(assert (=> b!3957805 (=> res!1601655 e!2450413)))

(declare-fun e!2450415 () Bool)

(assert (=> b!3957805 (= res!1601655 e!2450415)))

(declare-fun res!1601652 () Bool)

(assert (=> b!3957805 (=> (not res!1601652) (not e!2450415))))

(declare-fun lt!1383954 () Bool)

(assert (=> b!3957805 (= res!1601652 lt!1383954)))

(declare-fun b!3957806 () Bool)

(declare-fun e!2450414 () Bool)

(declare-fun nullable!4042 (Regex!11509) Bool)

(assert (=> b!3957806 (= e!2450414 (nullable!4042 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))))

(declare-fun b!3957807 () Bool)

(declare-fun e!2450416 () Bool)

(assert (=> b!3957807 (= e!2450413 e!2450416)))

(declare-fun res!1601653 () Bool)

(assert (=> b!3957807 (=> (not res!1601653) (not e!2450416))))

(assert (=> b!3957807 (= res!1601653 (not lt!1383954))))

(declare-fun b!3957808 () Bool)

(declare-fun e!2450417 () Bool)

(declare-fun call!285355 () Bool)

(assert (=> b!3957808 (= e!2450417 (= lt!1383954 call!285355))))

(declare-fun b!3957809 () Bool)

(declare-fun e!2450418 () Bool)

(assert (=> b!3957809 (= e!2450417 e!2450418)))

(declare-fun c!686882 () Bool)

(assert (=> b!3957809 (= c!686882 ((_ is EmptyLang!11509) (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))))

(declare-fun b!3957810 () Bool)

(declare-fun res!1601651 () Bool)

(declare-fun e!2450412 () Bool)

(assert (=> b!3957810 (=> res!1601651 e!2450412)))

(declare-fun tail!6138 (List!42260) List!42260)

(assert (=> b!3957810 (= res!1601651 (not (isEmpty!25190 (tail!6138 lt!1383938))))))

(declare-fun b!3957811 () Bool)

(declare-fun res!1601658 () Bool)

(assert (=> b!3957811 (=> (not res!1601658) (not e!2450415))))

(assert (=> b!3957811 (= res!1601658 (isEmpty!25190 (tail!6138 lt!1383938)))))

(declare-fun d!1173105 () Bool)

(assert (=> d!1173105 e!2450417))

(declare-fun c!686883 () Bool)

(assert (=> d!1173105 (= c!686883 ((_ is EmptyExpr!11509) (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))))

(assert (=> d!1173105 (= lt!1383954 e!2450414)))

(declare-fun c!686884 () Bool)

(assert (=> d!1173105 (= c!686884 (isEmpty!25190 lt!1383938))))

(declare-fun validRegex!5241 (Regex!11509) Bool)

(assert (=> d!1173105 (validRegex!5241 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))

(assert (=> d!1173105 (= (matchR!5530 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) lt!1383938) lt!1383954)))

(declare-fun b!3957812 () Bool)

(declare-fun head!8412 (List!42260) C!23204)

(assert (=> b!3957812 (= e!2450415 (= (head!8412 lt!1383938) (c!686868 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))))

(declare-fun b!3957813 () Bool)

(assert (=> b!3957813 (= e!2450412 (not (= (head!8412 lt!1383938) (c!686868 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))))))

(declare-fun b!3957814 () Bool)

(declare-fun res!1601654 () Bool)

(assert (=> b!3957814 (=> res!1601654 e!2450413)))

(assert (=> b!3957814 (= res!1601654 (not ((_ is ElementMatch!11509) (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))))

(assert (=> b!3957814 (= e!2450418 e!2450413)))

(declare-fun b!3957815 () Bool)

(declare-fun derivativeStep!3466 (Regex!11509 C!23204) Regex!11509)

(assert (=> b!3957815 (= e!2450414 (matchR!5530 (derivativeStep!3466 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (head!8412 lt!1383938)) (tail!6138 lt!1383938)))))

(declare-fun b!3957816 () Bool)

(assert (=> b!3957816 (= e!2450416 e!2450412)))

(declare-fun res!1601656 () Bool)

(assert (=> b!3957816 (=> res!1601656 e!2450412)))

(assert (=> b!3957816 (= res!1601656 call!285355)))

(declare-fun b!3957817 () Bool)

(assert (=> b!3957817 (= e!2450418 (not lt!1383954))))

(declare-fun bm!285350 () Bool)

(assert (=> bm!285350 (= call!285355 (isEmpty!25190 lt!1383938))))

(declare-fun b!3957818 () Bool)

(declare-fun res!1601657 () Bool)

(assert (=> b!3957818 (=> (not res!1601657) (not e!2450415))))

(assert (=> b!3957818 (= res!1601657 (not call!285355))))

(assert (= (and d!1173105 c!686884) b!3957806))

(assert (= (and d!1173105 (not c!686884)) b!3957815))

(assert (= (and d!1173105 c!686883) b!3957808))

(assert (= (and d!1173105 (not c!686883)) b!3957809))

(assert (= (and b!3957809 c!686882) b!3957817))

(assert (= (and b!3957809 (not c!686882)) b!3957814))

(assert (= (and b!3957814 (not res!1601654)) b!3957805))

(assert (= (and b!3957805 res!1601652) b!3957818))

(assert (= (and b!3957818 res!1601657) b!3957811))

(assert (= (and b!3957811 res!1601658) b!3957812))

(assert (= (and b!3957805 (not res!1601655)) b!3957807))

(assert (= (and b!3957807 res!1601653) b!3957816))

(assert (= (and b!3957816 (not res!1601656)) b!3957810))

(assert (= (and b!3957810 (not res!1601651)) b!3957813))

(assert (= (or b!3957808 b!3957818 b!3957816) bm!285350))

(declare-fun m!4526689 () Bool)

(assert (=> b!3957812 m!4526689))

(assert (=> b!3957815 m!4526689))

(assert (=> b!3957815 m!4526689))

(declare-fun m!4526691 () Bool)

(assert (=> b!3957815 m!4526691))

(declare-fun m!4526693 () Bool)

(assert (=> b!3957815 m!4526693))

(assert (=> b!3957815 m!4526691))

(assert (=> b!3957815 m!4526693))

(declare-fun m!4526695 () Bool)

(assert (=> b!3957815 m!4526695))

(assert (=> b!3957810 m!4526693))

(assert (=> b!3957810 m!4526693))

(declare-fun m!4526697 () Bool)

(assert (=> b!3957810 m!4526697))

(declare-fun m!4526699 () Bool)

(assert (=> bm!285350 m!4526699))

(assert (=> d!1173105 m!4526699))

(declare-fun m!4526701 () Bool)

(assert (=> d!1173105 m!4526701))

(declare-fun m!4526703 () Bool)

(assert (=> b!3957806 m!4526703))

(assert (=> b!3957811 m!4526693))

(assert (=> b!3957811 m!4526693))

(assert (=> b!3957811 m!4526697))

(assert (=> b!3957813 m!4526689))

(assert (=> b!3957746 d!1173105))

(declare-fun b!3957977 () Bool)

(declare-fun e!2450507 () Bool)

(declare-fun e!2450506 () Bool)

(assert (=> b!3957977 (= e!2450507 e!2450506)))

(declare-fun res!1601738 () Bool)

(assert (=> b!3957977 (=> (not res!1601738) (not e!2450506))))

(declare-fun lt!1383998 () Option!9024)

(assert (=> b!3957977 (= res!1601738 (matchR!5530 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (list!15644 (charsOf!4422 (_1!23845 (get!13896 lt!1383998))))))))

(declare-fun b!3957978 () Bool)

(declare-fun res!1601739 () Bool)

(assert (=> b!3957978 (=> (not res!1601739) (not e!2450506))))

(assert (=> b!3957978 (= res!1601739 (= (value!208848 (_1!23845 (get!13896 lt!1383998))) (apply!9835 (transformation!6604 (rule!9578 (_1!23845 (get!13896 lt!1383998)))) (seqFromList!4863 (originalCharacters!7204 (_1!23845 (get!13896 lt!1383998)))))))))

(declare-fun b!3957979 () Bool)

(declare-fun res!1601734 () Bool)

(assert (=> b!3957979 (=> (not res!1601734) (not e!2450506))))

(assert (=> b!3957979 (= res!1601734 (= (rule!9578 (_1!23845 (get!13896 lt!1383998))) (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))

(declare-fun b!3957980 () Bool)

(declare-fun e!2450504 () Bool)

(declare-datatypes ((tuple2!41426 0))(
  ( (tuple2!41427 (_1!23847 List!42260) (_2!23847 List!42260)) )
))
(declare-fun findLongestMatchInner!1289 (Regex!11509 List!42260 Int List!42260 List!42260 Int) tuple2!41426)

(assert (=> b!3957980 (= e!2450504 (matchR!5530 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (_1!23847 (findLongestMatchInner!1289 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) Nil!42136 (size!31559 Nil!42136) lt!1383943 lt!1383943 (size!31559 lt!1383943)))))))

(declare-fun d!1173107 () Bool)

(assert (=> d!1173107 e!2450507))

(declare-fun res!1601737 () Bool)

(assert (=> d!1173107 (=> res!1601737 e!2450507)))

(declare-fun isEmpty!25191 (Option!9024) Bool)

(assert (=> d!1173107 (= res!1601737 (isEmpty!25191 lt!1383998))))

(declare-fun e!2450505 () Option!9024)

(assert (=> d!1173107 (= lt!1383998 e!2450505)))

(declare-fun c!686924 () Bool)

(declare-fun lt!1383995 () tuple2!41426)

(assert (=> d!1173107 (= c!686924 (isEmpty!25190 (_1!23847 lt!1383995)))))

(declare-fun findLongestMatch!1202 (Regex!11509 List!42260) tuple2!41426)

(assert (=> d!1173107 (= lt!1383995 (findLongestMatch!1202 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) lt!1383943))))

(assert (=> d!1173107 (ruleValid!2546 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))

(assert (=> d!1173107 (= (maxPrefixOneRule!2547 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))) lt!1383943) lt!1383998)))

(declare-fun b!3957981 () Bool)

(declare-fun res!1601735 () Bool)

(assert (=> b!3957981 (=> (not res!1601735) (not e!2450506))))

(assert (=> b!3957981 (= res!1601735 (< (size!31559 (_2!23845 (get!13896 lt!1383998))) (size!31559 lt!1383943)))))

(declare-fun b!3957982 () Bool)

(assert (=> b!3957982 (= e!2450506 (= (size!31558 (_1!23845 (get!13896 lt!1383998))) (size!31559 (originalCharacters!7204 (_1!23845 (get!13896 lt!1383998))))))))

(declare-fun b!3957983 () Bool)

(assert (=> b!3957983 (= e!2450505 None!9023)))

(declare-fun b!3957984 () Bool)

(declare-fun res!1601740 () Bool)

(assert (=> b!3957984 (=> (not res!1601740) (not e!2450506))))

(assert (=> b!3957984 (= res!1601740 (= (++!10966 (list!15644 (charsOf!4422 (_1!23845 (get!13896 lt!1383998)))) (_2!23845 (get!13896 lt!1383998))) lt!1383943))))

(declare-fun b!3957985 () Bool)

(declare-fun size!31562 (BalanceConc!25224) Int)

(assert (=> b!3957985 (= e!2450505 (Some!9023 (tuple2!41423 (Token!12347 (apply!9835 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (seqFromList!4863 (_1!23847 lt!1383995))) (rule!9578 (_1!23845 (v!39369 lt!1383941))) (size!31562 (seqFromList!4863 (_1!23847 lt!1383995))) (_1!23847 lt!1383995)) (_2!23847 lt!1383995))))))

(declare-fun lt!1383999 () Unit!60622)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1262 (Regex!11509 List!42260) Unit!60622)

(assert (=> b!3957985 (= lt!1383999 (longestMatchIsAcceptedByMatchOrIsEmpty!1262 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) lt!1383943))))

(declare-fun res!1601736 () Bool)

(assert (=> b!3957985 (= res!1601736 (isEmpty!25190 (_1!23847 (findLongestMatchInner!1289 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) Nil!42136 (size!31559 Nil!42136) lt!1383943 lt!1383943 (size!31559 lt!1383943)))))))

(assert (=> b!3957985 (=> res!1601736 e!2450504)))

(assert (=> b!3957985 e!2450504))

(declare-fun lt!1383996 () Unit!60622)

(assert (=> b!3957985 (= lt!1383996 lt!1383999)))

(declare-fun lt!1383997 () Unit!60622)

(declare-fun lemmaSemiInverse!1797 (TokenValueInjection!13096 BalanceConc!25224) Unit!60622)

(assert (=> b!3957985 (= lt!1383997 (lemmaSemiInverse!1797 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (seqFromList!4863 (_1!23847 lt!1383995))))))

(assert (= (and d!1173107 c!686924) b!3957983))

(assert (= (and d!1173107 (not c!686924)) b!3957985))

(assert (= (and b!3957985 (not res!1601736)) b!3957980))

(assert (= (and d!1173107 (not res!1601737)) b!3957977))

(assert (= (and b!3957977 res!1601738) b!3957984))

(assert (= (and b!3957984 res!1601740) b!3957981))

(assert (= (and b!3957981 res!1601735) b!3957979))

(assert (= (and b!3957979 res!1601734) b!3957978))

(assert (= (and b!3957978 res!1601739) b!3957982))

(declare-fun m!4526839 () Bool)

(assert (=> d!1173107 m!4526839))

(declare-fun m!4526841 () Bool)

(assert (=> d!1173107 m!4526841))

(declare-fun m!4526843 () Bool)

(assert (=> d!1173107 m!4526843))

(assert (=> d!1173107 m!4526653))

(declare-fun m!4526845 () Bool)

(assert (=> b!3957985 m!4526845))

(declare-fun m!4526847 () Bool)

(assert (=> b!3957985 m!4526847))

(declare-fun m!4526849 () Bool)

(assert (=> b!3957985 m!4526849))

(assert (=> b!3957985 m!4526621))

(declare-fun m!4526851 () Bool)

(assert (=> b!3957985 m!4526851))

(declare-fun m!4526853 () Bool)

(assert (=> b!3957985 m!4526853))

(assert (=> b!3957985 m!4526845))

(declare-fun m!4526855 () Bool)

(assert (=> b!3957985 m!4526855))

(assert (=> b!3957985 m!4526849))

(assert (=> b!3957985 m!4526621))

(declare-fun m!4526857 () Bool)

(assert (=> b!3957985 m!4526857))

(assert (=> b!3957985 m!4526845))

(assert (=> b!3957985 m!4526845))

(declare-fun m!4526859 () Bool)

(assert (=> b!3957985 m!4526859))

(declare-fun m!4526861 () Bool)

(assert (=> b!3957979 m!4526861))

(assert (=> b!3957980 m!4526849))

(assert (=> b!3957980 m!4526621))

(assert (=> b!3957980 m!4526849))

(assert (=> b!3957980 m!4526621))

(assert (=> b!3957980 m!4526857))

(declare-fun m!4526863 () Bool)

(assert (=> b!3957980 m!4526863))

(assert (=> b!3957982 m!4526861))

(declare-fun m!4526865 () Bool)

(assert (=> b!3957982 m!4526865))

(assert (=> b!3957981 m!4526861))

(declare-fun m!4526867 () Bool)

(assert (=> b!3957981 m!4526867))

(assert (=> b!3957981 m!4526621))

(assert (=> b!3957978 m!4526861))

(declare-fun m!4526869 () Bool)

(assert (=> b!3957978 m!4526869))

(assert (=> b!3957978 m!4526869))

(declare-fun m!4526871 () Bool)

(assert (=> b!3957978 m!4526871))

(assert (=> b!3957977 m!4526861))

(declare-fun m!4526873 () Bool)

(assert (=> b!3957977 m!4526873))

(assert (=> b!3957977 m!4526873))

(declare-fun m!4526875 () Bool)

(assert (=> b!3957977 m!4526875))

(assert (=> b!3957977 m!4526875))

(declare-fun m!4526877 () Bool)

(assert (=> b!3957977 m!4526877))

(assert (=> b!3957984 m!4526861))

(assert (=> b!3957984 m!4526873))

(assert (=> b!3957984 m!4526873))

(assert (=> b!3957984 m!4526875))

(assert (=> b!3957984 m!4526875))

(declare-fun m!4526879 () Bool)

(assert (=> b!3957984 m!4526879))

(assert (=> b!3957746 d!1173107))

(declare-fun d!1173159 () Bool)

(assert (=> d!1173159 (= (maxPrefixOneRule!2547 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))) lt!1383943) (Some!9023 (tuple2!41423 (Token!12347 (apply!9835 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (seqFromList!4863 lt!1383938)) (rule!9578 (_1!23845 (v!39369 lt!1383941))) (size!31559 lt!1383938) lt!1383938) (_2!23845 (v!39369 lt!1383941)))))))

(declare-fun lt!1384024 () Unit!60622)

(declare-fun choose!23624 (LexerInterface!6193 List!42262 List!42260 List!42260 List!42260 Rule!13008) Unit!60622)

(assert (=> d!1173159 (= lt!1384024 (choose!23624 thiss!20629 rules!2768 lt!1383938 lt!1383943 (_2!23845 (v!39369 lt!1383941)) (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))

(assert (=> d!1173159 (not (isEmpty!25189 rules!2768))))

(assert (=> d!1173159 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1373 thiss!20629 rules!2768 lt!1383938 lt!1383943 (_2!23845 (v!39369 lt!1383941)) (rule!9578 (_1!23845 (v!39369 lt!1383941)))) lt!1384024)))

(declare-fun bs!587198 () Bool)

(assert (= bs!587198 d!1173159))

(assert (=> bs!587198 m!4526609))

(assert (=> bs!587198 m!4526593))

(assert (=> bs!587198 m!4526649))

(declare-fun m!4526943 () Bool)

(assert (=> bs!587198 m!4526943))

(assert (=> bs!587198 m!4526641))

(assert (=> bs!587198 m!4526641))

(assert (=> bs!587198 m!4526643))

(assert (=> b!3957746 d!1173159))

(declare-fun d!1173181 () Bool)

(assert (=> d!1173181 (= (inv!56363 (tag!7464 (rule!9578 (h!47557 prefixTokens!80)))) (= (mod (str.len (value!208847 (tag!7464 (rule!9578 (h!47557 prefixTokens!80))))) 2) 0))))

(assert (=> b!3957747 d!1173181))

(declare-fun d!1173183 () Bool)

(declare-fun res!1601766 () Bool)

(declare-fun e!2450530 () Bool)

(assert (=> d!1173183 (=> (not res!1601766) (not e!2450530))))

(declare-fun semiInverseModEq!2847 (Int Int) Bool)

(assert (=> d!1173183 (= res!1601766 (semiInverseModEq!2847 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toValue!9084 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))))))

(assert (=> d!1173183 (= (inv!56367 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) e!2450530)))

(declare-fun b!3958029 () Bool)

(declare-fun equivClasses!2746 (Int Int) Bool)

(assert (=> b!3958029 (= e!2450530 (equivClasses!2746 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toValue!9084 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))))))

(assert (= (and d!1173183 res!1601766) b!3958029))

(declare-fun m!4526945 () Bool)

(assert (=> d!1173183 m!4526945))

(declare-fun m!4526947 () Bool)

(assert (=> b!3958029 m!4526947))

(assert (=> b!3957747 d!1173183))

(declare-fun d!1173185 () Bool)

(assert (=> d!1173185 (= (isEmpty!25190 prefix!426) ((_ is Nil!42136) prefix!426))))

(assert (=> b!3957751 d!1173185))

(declare-fun d!1173187 () Bool)

(assert (=> d!1173187 (= (inv!56363 (tag!7464 (rule!9578 (h!47557 suffixTokens!72)))) (= (mod (str.len (value!208847 (tag!7464 (rule!9578 (h!47557 suffixTokens!72))))) 2) 0))))

(assert (=> b!3957749 d!1173187))

(declare-fun d!1173189 () Bool)

(declare-fun res!1601767 () Bool)

(declare-fun e!2450531 () Bool)

(assert (=> d!1173189 (=> (not res!1601767) (not e!2450531))))

(assert (=> d!1173189 (= res!1601767 (semiInverseModEq!2847 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toValue!9084 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))))))

(assert (=> d!1173189 (= (inv!56367 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) e!2450531)))

(declare-fun b!3958030 () Bool)

(assert (=> b!3958030 (= e!2450531 (equivClasses!2746 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toValue!9084 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))))))

(assert (= (and d!1173189 res!1601767) b!3958030))

(declare-fun m!4526949 () Bool)

(assert (=> d!1173189 m!4526949))

(declare-fun m!4526951 () Bool)

(assert (=> b!3958030 m!4526951))

(assert (=> b!3957749 d!1173189))

(declare-fun b!3958041 () Bool)

(declare-fun res!1601770 () Bool)

(declare-fun e!2450539 () Bool)

(assert (=> b!3958041 (=> res!1601770 e!2450539)))

(assert (=> b!3958041 (= res!1601770 (not ((_ is IntegerValue!20504) (value!208848 (h!47557 prefixTokens!80)))))))

(declare-fun e!2450538 () Bool)

(assert (=> b!3958041 (= e!2450538 e!2450539)))

(declare-fun b!3958042 () Bool)

(declare-fun e!2450540 () Bool)

(declare-fun inv!16 (TokenValue!6834) Bool)

(assert (=> b!3958042 (= e!2450540 (inv!16 (value!208848 (h!47557 prefixTokens!80))))))

(declare-fun b!3958043 () Bool)

(declare-fun inv!15 (TokenValue!6834) Bool)

(assert (=> b!3958043 (= e!2450539 (inv!15 (value!208848 (h!47557 prefixTokens!80))))))

(declare-fun d!1173191 () Bool)

(declare-fun c!686938 () Bool)

(assert (=> d!1173191 (= c!686938 ((_ is IntegerValue!20502) (value!208848 (h!47557 prefixTokens!80))))))

(assert (=> d!1173191 (= (inv!21 (value!208848 (h!47557 prefixTokens!80))) e!2450540)))

(declare-fun b!3958044 () Bool)

(assert (=> b!3958044 (= e!2450540 e!2450538)))

(declare-fun c!686939 () Bool)

(assert (=> b!3958044 (= c!686939 ((_ is IntegerValue!20503) (value!208848 (h!47557 prefixTokens!80))))))

(declare-fun b!3958045 () Bool)

(declare-fun inv!17 (TokenValue!6834) Bool)

(assert (=> b!3958045 (= e!2450538 (inv!17 (value!208848 (h!47557 prefixTokens!80))))))

(assert (= (and d!1173191 c!686938) b!3958042))

(assert (= (and d!1173191 (not c!686938)) b!3958044))

(assert (= (and b!3958044 c!686939) b!3958045))

(assert (= (and b!3958044 (not c!686939)) b!3958041))

(assert (= (and b!3958041 (not res!1601770)) b!3958043))

(declare-fun m!4526953 () Bool)

(assert (=> b!3958042 m!4526953))

(declare-fun m!4526955 () Bool)

(assert (=> b!3958043 m!4526955))

(declare-fun m!4526957 () Bool)

(assert (=> b!3958045 m!4526957))

(assert (=> b!3957728 d!1173191))

(declare-fun b!3958046 () Bool)

(declare-fun res!1601771 () Bool)

(declare-fun e!2450542 () Bool)

(assert (=> b!3958046 (=> res!1601771 e!2450542)))

(assert (=> b!3958046 (= res!1601771 (not ((_ is IntegerValue!20504) (value!208848 (h!47557 suffixTokens!72)))))))

(declare-fun e!2450541 () Bool)

(assert (=> b!3958046 (= e!2450541 e!2450542)))

(declare-fun b!3958047 () Bool)

(declare-fun e!2450543 () Bool)

(assert (=> b!3958047 (= e!2450543 (inv!16 (value!208848 (h!47557 suffixTokens!72))))))

(declare-fun b!3958048 () Bool)

(assert (=> b!3958048 (= e!2450542 (inv!15 (value!208848 (h!47557 suffixTokens!72))))))

(declare-fun d!1173193 () Bool)

(declare-fun c!686940 () Bool)

(assert (=> d!1173193 (= c!686940 ((_ is IntegerValue!20502) (value!208848 (h!47557 suffixTokens!72))))))

(assert (=> d!1173193 (= (inv!21 (value!208848 (h!47557 suffixTokens!72))) e!2450543)))

(declare-fun b!3958049 () Bool)

(assert (=> b!3958049 (= e!2450543 e!2450541)))

(declare-fun c!686941 () Bool)

(assert (=> b!3958049 (= c!686941 ((_ is IntegerValue!20503) (value!208848 (h!47557 suffixTokens!72))))))

(declare-fun b!3958050 () Bool)

(assert (=> b!3958050 (= e!2450541 (inv!17 (value!208848 (h!47557 suffixTokens!72))))))

(assert (= (and d!1173193 c!686940) b!3958047))

(assert (= (and d!1173193 (not c!686940)) b!3958049))

(assert (= (and b!3958049 c!686941) b!3958050))

(assert (= (and b!3958049 (not c!686941)) b!3958046))

(assert (= (and b!3958046 (not res!1601771)) b!3958048))

(declare-fun m!4526959 () Bool)

(assert (=> b!3958047 m!4526959))

(declare-fun m!4526961 () Bool)

(assert (=> b!3958048 m!4526961))

(declare-fun m!4526963 () Bool)

(assert (=> b!3958050 m!4526963))

(assert (=> b!3957753 d!1173193))

(declare-fun b!3958088 () Bool)

(declare-fun e!2450559 () tuple2!41424)

(declare-fun lt!1384046 () Option!9024)

(declare-fun lt!1384048 () tuple2!41424)

(assert (=> b!3958088 (= e!2450559 (tuple2!41425 (Cons!42137 (_1!23845 (v!39369 lt!1384046)) (_1!23846 lt!1384048)) (_2!23846 lt!1384048)))))

(assert (=> b!3958088 (= lt!1384048 (lexList!1961 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1384046))))))

(declare-fun b!3958089 () Bool)

(assert (=> b!3958089 (= e!2450559 (tuple2!41425 Nil!42137 (_2!23845 lt!1383928)))))

(declare-fun b!3958090 () Bool)

(declare-fun e!2450561 () Bool)

(declare-fun e!2450560 () Bool)

(assert (=> b!3958090 (= e!2450561 e!2450560)))

(declare-fun res!1601795 () Bool)

(declare-fun lt!1384047 () tuple2!41424)

(assert (=> b!3958090 (= res!1601795 (< (size!31559 (_2!23846 lt!1384047)) (size!31559 (_2!23845 lt!1383928))))))

(assert (=> b!3958090 (=> (not res!1601795) (not e!2450560))))

(declare-fun b!3958091 () Bool)

(assert (=> b!3958091 (= e!2450561 (= (_2!23846 lt!1384047) (_2!23845 lt!1383928)))))

(declare-fun b!3958092 () Bool)

(assert (=> b!3958092 (= e!2450560 (not (isEmpty!25188 (_1!23846 lt!1384047))))))

(declare-fun d!1173195 () Bool)

(assert (=> d!1173195 e!2450561))

(declare-fun c!686949 () Bool)

(assert (=> d!1173195 (= c!686949 (> (size!31561 (_1!23846 lt!1384047)) 0))))

(assert (=> d!1173195 (= lt!1384047 e!2450559)))

(declare-fun c!686950 () Bool)

(assert (=> d!1173195 (= c!686950 ((_ is Some!9023) lt!1384046))))

(assert (=> d!1173195 (= lt!1384046 (maxPrefix!3497 thiss!20629 rules!2768 (_2!23845 lt!1383928)))))

(assert (=> d!1173195 (= (lexList!1961 thiss!20629 rules!2768 (_2!23845 lt!1383928)) lt!1384047)))

(assert (= (and d!1173195 c!686950) b!3958088))

(assert (= (and d!1173195 (not c!686950)) b!3958089))

(assert (= (and d!1173195 c!686949) b!3958090))

(assert (= (and d!1173195 (not c!686949)) b!3958091))

(assert (= (and b!3958090 res!1601795) b!3958092))

(declare-fun m!4526981 () Bool)

(assert (=> b!3958088 m!4526981))

(declare-fun m!4526983 () Bool)

(assert (=> b!3958090 m!4526983))

(assert (=> b!3958090 m!4526619))

(declare-fun m!4526987 () Bool)

(assert (=> b!3958092 m!4526987))

(declare-fun m!4526989 () Bool)

(assert (=> d!1173195 m!4526989))

(declare-fun m!4526991 () Bool)

(assert (=> d!1173195 m!4526991))

(assert (=> b!3957732 d!1173195))

(declare-fun b!3958093 () Bool)

(declare-fun e!2450563 () List!42261)

(assert (=> b!3958093 (= e!2450563 suffixTokens!72)))

(declare-fun b!3958096 () Bool)

(declare-fun lt!1384049 () List!42261)

(declare-fun e!2450562 () Bool)

(assert (=> b!3958096 (= e!2450562 (or (not (= suffixTokens!72 Nil!42137)) (= lt!1384049 lt!1383930)))))

(declare-fun d!1173197 () Bool)

(assert (=> d!1173197 e!2450562))

(declare-fun res!1601796 () Bool)

(assert (=> d!1173197 (=> (not res!1601796) (not e!2450562))))

(assert (=> d!1173197 (= res!1601796 (= (content!6398 lt!1384049) ((_ map or) (content!6398 lt!1383930) (content!6398 suffixTokens!72))))))

(assert (=> d!1173197 (= lt!1384049 e!2450563)))

(declare-fun c!686951 () Bool)

(assert (=> d!1173197 (= c!686951 ((_ is Nil!42137) lt!1383930))))

(assert (=> d!1173197 (= (++!10965 lt!1383930 suffixTokens!72) lt!1384049)))

(declare-fun b!3958094 () Bool)

(assert (=> b!3958094 (= e!2450563 (Cons!42137 (h!47557 lt!1383930) (++!10965 (t!329516 lt!1383930) suffixTokens!72)))))

(declare-fun b!3958095 () Bool)

(declare-fun res!1601797 () Bool)

(assert (=> b!3958095 (=> (not res!1601797) (not e!2450562))))

(assert (=> b!3958095 (= res!1601797 (= (size!31561 lt!1384049) (+ (size!31561 lt!1383930) (size!31561 suffixTokens!72))))))

(assert (= (and d!1173197 c!686951) b!3958093))

(assert (= (and d!1173197 (not c!686951)) b!3958094))

(assert (= (and d!1173197 res!1601796) b!3958095))

(assert (= (and b!3958095 res!1601797) b!3958096))

(declare-fun m!4527005 () Bool)

(assert (=> d!1173197 m!4527005))

(declare-fun m!4527009 () Bool)

(assert (=> d!1173197 m!4527009))

(declare-fun m!4527011 () Bool)

(assert (=> d!1173197 m!4527011))

(declare-fun m!4527013 () Bool)

(assert (=> b!3958094 m!4527013))

(declare-fun m!4527015 () Bool)

(assert (=> b!3958095 m!4527015))

(declare-fun m!4527017 () Bool)

(assert (=> b!3958095 m!4527017))

(declare-fun m!4527019 () Bool)

(assert (=> b!3958095 m!4527019))

(assert (=> b!3957732 d!1173197))

(declare-fun d!1173201 () Bool)

(declare-fun lt!1384050 () Int)

(assert (=> d!1173201 (>= lt!1384050 0)))

(declare-fun e!2450564 () Int)

(assert (=> d!1173201 (= lt!1384050 e!2450564)))

(declare-fun c!686952 () Bool)

(assert (=> d!1173201 (= c!686952 ((_ is Nil!42136) lt!1383943))))

(assert (=> d!1173201 (= (size!31559 lt!1383943) lt!1384050)))

(declare-fun b!3958097 () Bool)

(assert (=> b!3958097 (= e!2450564 0)))

(declare-fun b!3958098 () Bool)

(assert (=> b!3958098 (= e!2450564 (+ 1 (size!31559 (t!329515 lt!1383943))))))

(assert (= (and d!1173201 c!686952) b!3958097))

(assert (= (and d!1173201 (not c!686952)) b!3958098))

(declare-fun m!4527021 () Bool)

(assert (=> b!3958098 m!4527021))

(assert (=> b!3957752 d!1173201))

(declare-fun d!1173203 () Bool)

(assert (=> d!1173203 (= (isEmpty!25188 prefixTokens!80) ((_ is Nil!42137) prefixTokens!80))))

(assert (=> b!3957734 d!1173203))

(declare-fun b!3958099 () Bool)

(declare-fun e!2450565 () tuple2!41424)

(declare-fun lt!1384051 () Option!9024)

(declare-fun lt!1384053 () tuple2!41424)

(assert (=> b!3958099 (= e!2450565 (tuple2!41425 (Cons!42137 (_1!23845 (v!39369 lt!1384051)) (_1!23846 lt!1384053)) (_2!23846 lt!1384053)))))

(assert (=> b!3958099 (= lt!1384053 (lexList!1961 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1384051))))))

(declare-fun b!3958100 () Bool)

(assert (=> b!3958100 (= e!2450565 (tuple2!41425 Nil!42137 suffix!1176))))

(declare-fun b!3958101 () Bool)

(declare-fun e!2450567 () Bool)

(declare-fun e!2450566 () Bool)

(assert (=> b!3958101 (= e!2450567 e!2450566)))

(declare-fun res!1601798 () Bool)

(declare-fun lt!1384052 () tuple2!41424)

(assert (=> b!3958101 (= res!1601798 (< (size!31559 (_2!23846 lt!1384052)) (size!31559 suffix!1176)))))

(assert (=> b!3958101 (=> (not res!1601798) (not e!2450566))))

(declare-fun b!3958102 () Bool)

(assert (=> b!3958102 (= e!2450567 (= (_2!23846 lt!1384052) suffix!1176))))

(declare-fun b!3958103 () Bool)

(assert (=> b!3958103 (= e!2450566 (not (isEmpty!25188 (_1!23846 lt!1384052))))))

(declare-fun d!1173205 () Bool)

(assert (=> d!1173205 e!2450567))

(declare-fun c!686953 () Bool)

(assert (=> d!1173205 (= c!686953 (> (size!31561 (_1!23846 lt!1384052)) 0))))

(assert (=> d!1173205 (= lt!1384052 e!2450565)))

(declare-fun c!686954 () Bool)

(assert (=> d!1173205 (= c!686954 ((_ is Some!9023) lt!1384051))))

(assert (=> d!1173205 (= lt!1384051 (maxPrefix!3497 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1173205 (= (lexList!1961 thiss!20629 rules!2768 suffix!1176) lt!1384052)))

(assert (= (and d!1173205 c!686954) b!3958099))

(assert (= (and d!1173205 (not c!686954)) b!3958100))

(assert (= (and d!1173205 c!686953) b!3958101))

(assert (= (and d!1173205 (not c!686953)) b!3958102))

(assert (= (and b!3958101 res!1601798) b!3958103))

(declare-fun m!4527023 () Bool)

(assert (=> b!3958099 m!4527023))

(declare-fun m!4527025 () Bool)

(assert (=> b!3958101 m!4527025))

(assert (=> b!3958101 m!4526603))

(declare-fun m!4527027 () Bool)

(assert (=> b!3958103 m!4527027))

(declare-fun m!4527029 () Bool)

(assert (=> d!1173205 m!4527029))

(declare-fun m!4527031 () Bool)

(assert (=> d!1173205 m!4527031))

(assert (=> b!3957735 d!1173205))

(declare-fun d!1173207 () Bool)

(declare-fun res!1601801 () Bool)

(declare-fun e!2450571 () Bool)

(assert (=> d!1173207 (=> (not res!1601801) (not e!2450571))))

(declare-fun rulesValid!2580 (LexerInterface!6193 List!42262) Bool)

(assert (=> d!1173207 (= res!1601801 (rulesValid!2580 thiss!20629 rules!2768))))

(assert (=> d!1173207 (= (rulesInvariant!5536 thiss!20629 rules!2768) e!2450571)))

(declare-fun b!3958107 () Bool)

(declare-datatypes ((List!42263 0))(
  ( (Nil!42139) (Cons!42139 (h!47559 String!47888) (t!329614 List!42263)) )
))
(declare-fun noDuplicateTag!2581 (LexerInterface!6193 List!42262 List!42263) Bool)

(assert (=> b!3958107 (= e!2450571 (noDuplicateTag!2581 thiss!20629 rules!2768 Nil!42139))))

(assert (= (and d!1173207 res!1601801) b!3958107))

(declare-fun m!4527041 () Bool)

(assert (=> d!1173207 m!4527041))

(declare-fun m!4527043 () Bool)

(assert (=> b!3958107 m!4527043))

(assert (=> b!3957733 d!1173207))

(declare-fun d!1173211 () Bool)

(declare-fun lt!1384057 () Int)

(assert (=> d!1173211 (>= lt!1384057 0)))

(declare-fun e!2450572 () Int)

(assert (=> d!1173211 (= lt!1384057 e!2450572)))

(declare-fun c!686955 () Bool)

(assert (=> d!1173211 (= c!686955 ((_ is Nil!42136) (_2!23845 lt!1383928)))))

(assert (=> d!1173211 (= (size!31559 (_2!23845 lt!1383928)) lt!1384057)))

(declare-fun b!3958108 () Bool)

(assert (=> b!3958108 (= e!2450572 0)))

(declare-fun b!3958109 () Bool)

(assert (=> b!3958109 (= e!2450572 (+ 1 (size!31559 (t!329515 (_2!23845 lt!1383928)))))))

(assert (= (and d!1173211 c!686955) b!3958108))

(assert (= (and d!1173211 (not c!686955)) b!3958109))

(declare-fun m!4527045 () Bool)

(assert (=> b!3958109 m!4527045))

(assert (=> b!3957754 d!1173211))

(declare-fun d!1173213 () Bool)

(assert (=> d!1173213 (= (isEmpty!25190 suffix!1176) ((_ is Nil!42136) suffix!1176))))

(assert (=> b!3957755 d!1173213))

(declare-fun d!1173215 () Bool)

(assert (=> d!1173215 (= (_2!23845 (v!39369 lt!1383941)) lt!1383926)))

(declare-fun lt!1384062 () Unit!60622)

(declare-fun choose!23626 (List!42260 List!42260 List!42260 List!42260 List!42260) Unit!60622)

(assert (=> d!1173215 (= lt!1384062 (choose!23626 lt!1383938 (_2!23845 (v!39369 lt!1383941)) lt!1383938 lt!1383926 lt!1383943))))

(assert (=> d!1173215 (isPrefix!3693 lt!1383938 lt!1383943)))

(assert (=> d!1173215 (= (lemmaSamePrefixThenSameSuffix!1902 lt!1383938 (_2!23845 (v!39369 lt!1383941)) lt!1383938 lt!1383926 lt!1383943) lt!1384062)))

(declare-fun bs!587199 () Bool)

(assert (= bs!587199 d!1173215))

(declare-fun m!4527047 () Bool)

(assert (=> bs!587199 m!4527047))

(declare-fun m!4527049 () Bool)

(assert (=> bs!587199 m!4527049))

(assert (=> b!3957737 d!1173215))

(declare-fun b!3958134 () Bool)

(declare-fun e!2450588 () List!42260)

(assert (=> b!3958134 (= e!2450588 (_2!23845 (v!39369 lt!1383941)))))

(declare-fun b!3958137 () Bool)

(declare-fun e!2450589 () Bool)

(declare-fun lt!1384068 () List!42260)

(assert (=> b!3958137 (= e!2450589 (or (not (= (_2!23845 (v!39369 lt!1383941)) Nil!42136)) (= lt!1384068 lt!1383938)))))

(declare-fun b!3958135 () Bool)

(assert (=> b!3958135 (= e!2450588 (Cons!42136 (h!47556 lt!1383938) (++!10966 (t!329515 lt!1383938) (_2!23845 (v!39369 lt!1383941)))))))

(declare-fun b!3958136 () Bool)

(declare-fun res!1601818 () Bool)

(assert (=> b!3958136 (=> (not res!1601818) (not e!2450589))))

(assert (=> b!3958136 (= res!1601818 (= (size!31559 lt!1384068) (+ (size!31559 lt!1383938) (size!31559 (_2!23845 (v!39369 lt!1383941))))))))

(declare-fun d!1173217 () Bool)

(assert (=> d!1173217 e!2450589))

(declare-fun res!1601819 () Bool)

(assert (=> d!1173217 (=> (not res!1601819) (not e!2450589))))

(declare-fun content!6399 (List!42260) (InoxSet C!23204))

(assert (=> d!1173217 (= res!1601819 (= (content!6399 lt!1384068) ((_ map or) (content!6399 lt!1383938) (content!6399 (_2!23845 (v!39369 lt!1383941))))))))

(assert (=> d!1173217 (= lt!1384068 e!2450588)))

(declare-fun c!686960 () Bool)

(assert (=> d!1173217 (= c!686960 ((_ is Nil!42136) lt!1383938))))

(assert (=> d!1173217 (= (++!10966 lt!1383938 (_2!23845 (v!39369 lt!1383941))) lt!1384068)))

(assert (= (and d!1173217 c!686960) b!3958134))

(assert (= (and d!1173217 (not c!686960)) b!3958135))

(assert (= (and d!1173217 res!1601819) b!3958136))

(assert (= (and b!3958136 res!1601818) b!3958137))

(declare-fun m!4527061 () Bool)

(assert (=> b!3958135 m!4527061))

(declare-fun m!4527065 () Bool)

(assert (=> b!3958136 m!4527065))

(assert (=> b!3958136 m!4526649))

(assert (=> b!3958136 m!4526605))

(declare-fun m!4527069 () Bool)

(assert (=> d!1173217 m!4527069))

(declare-fun m!4527071 () Bool)

(assert (=> d!1173217 m!4527071))

(declare-fun m!4527073 () Bool)

(assert (=> d!1173217 m!4527073))

(assert (=> b!3957737 d!1173217))

(declare-fun d!1173223 () Bool)

(assert (=> d!1173223 (= (size!31558 (_1!23845 (v!39369 lt!1383941))) (size!31559 (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941)))))))

(declare-fun Unit!60624 () Unit!60622)

(assert (=> d!1173223 (= (lemmaCharactersSize!1257 (_1!23845 (v!39369 lt!1383941))) Unit!60624)))

(declare-fun bs!587200 () Bool)

(assert (= bs!587200 d!1173223))

(assert (=> bs!587200 m!4526573))

(assert (=> b!3957737 d!1173223))

(declare-fun d!1173225 () Bool)

(declare-fun list!15645 (Conc!12815) List!42260)

(assert (=> d!1173225 (= (list!15644 (charsOf!4422 (_1!23845 (v!39369 lt!1383941)))) (list!15645 (c!686869 (charsOf!4422 (_1!23845 (v!39369 lt!1383941))))))))

(declare-fun bs!587202 () Bool)

(assert (= bs!587202 d!1173225))

(declare-fun m!4527077 () Bool)

(assert (=> bs!587202 m!4527077))

(assert (=> b!3957737 d!1173225))

(declare-fun d!1173229 () Bool)

(declare-fun res!1601825 () Bool)

(declare-fun e!2450596 () Bool)

(assert (=> d!1173229 (=> (not res!1601825) (not e!2450596))))

(assert (=> d!1173229 (= res!1601825 (validRegex!5241 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))))

(assert (=> d!1173229 (= (ruleValid!2546 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) e!2450596)))

(declare-fun b!3958149 () Bool)

(declare-fun res!1601826 () Bool)

(assert (=> b!3958149 (=> (not res!1601826) (not e!2450596))))

(assert (=> b!3958149 (= res!1601826 (not (nullable!4042 (regex!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))))))

(declare-fun b!3958150 () Bool)

(assert (=> b!3958150 (= e!2450596 (not (= (tag!7464 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (String!47889 ""))))))

(assert (= (and d!1173229 res!1601825) b!3958149))

(assert (= (and b!3958149 res!1601826) b!3958150))

(assert (=> d!1173229 m!4526701))

(assert (=> b!3958149 m!4526703))

(assert (=> b!3957737 d!1173229))

(declare-fun d!1173235 () Bool)

(declare-fun lt!1384078 () List!42260)

(assert (=> d!1173235 (= (++!10966 lt!1383938 lt!1384078) lt!1383943)))

(declare-fun e!2450599 () List!42260)

(assert (=> d!1173235 (= lt!1384078 e!2450599)))

(declare-fun c!686966 () Bool)

(assert (=> d!1173235 (= c!686966 ((_ is Cons!42136) lt!1383938))))

(assert (=> d!1173235 (>= (size!31559 lt!1383943) (size!31559 lt!1383938))))

(assert (=> d!1173235 (= (getSuffix!2144 lt!1383943 lt!1383938) lt!1384078)))

(declare-fun b!3958155 () Bool)

(assert (=> b!3958155 (= e!2450599 (getSuffix!2144 (tail!6138 lt!1383943) (t!329515 lt!1383938)))))

(declare-fun b!3958156 () Bool)

(assert (=> b!3958156 (= e!2450599 lt!1383943)))

(assert (= (and d!1173235 c!686966) b!3958155))

(assert (= (and d!1173235 (not c!686966)) b!3958156))

(declare-fun m!4527095 () Bool)

(assert (=> d!1173235 m!4527095))

(assert (=> d!1173235 m!4526621))

(assert (=> d!1173235 m!4526649))

(declare-fun m!4527097 () Bool)

(assert (=> b!3958155 m!4527097))

(assert (=> b!3958155 m!4527097))

(declare-fun m!4527099 () Bool)

(assert (=> b!3958155 m!4527099))

(assert (=> b!3957737 d!1173235))

(declare-fun d!1173241 () Bool)

(declare-fun fromListB!2247 (List!42260) BalanceConc!25224)

(assert (=> d!1173241 (= (seqFromList!4863 lt!1383938) (fromListB!2247 lt!1383938))))

(declare-fun bs!587206 () Bool)

(assert (= bs!587206 d!1173241))

(declare-fun m!4527105 () Bool)

(assert (=> bs!587206 m!4527105))

(assert (=> b!3957737 d!1173241))

(declare-fun b!3958177 () Bool)

(declare-fun e!2450616 () Bool)

(declare-fun e!2450615 () Bool)

(assert (=> b!3958177 (= e!2450616 e!2450615)))

(declare-fun res!1601846 () Bool)

(assert (=> b!3958177 (=> (not res!1601846) (not e!2450615))))

(assert (=> b!3958177 (= res!1601846 (not ((_ is Nil!42136) lt!1383933)))))

(declare-fun d!1173245 () Bool)

(declare-fun e!2450614 () Bool)

(assert (=> d!1173245 e!2450614))

(declare-fun res!1601843 () Bool)

(assert (=> d!1173245 (=> res!1601843 e!2450614)))

(declare-fun lt!1384084 () Bool)

(assert (=> d!1173245 (= res!1601843 (not lt!1384084))))

(assert (=> d!1173245 (= lt!1384084 e!2450616)))

(declare-fun res!1601844 () Bool)

(assert (=> d!1173245 (=> res!1601844 e!2450616)))

(assert (=> d!1173245 (= res!1601844 ((_ is Nil!42136) lt!1383938))))

(assert (=> d!1173245 (= (isPrefix!3693 lt!1383938 lt!1383933) lt!1384084)))

(declare-fun b!3958180 () Bool)

(assert (=> b!3958180 (= e!2450614 (>= (size!31559 lt!1383933) (size!31559 lt!1383938)))))

(declare-fun b!3958179 () Bool)

(assert (=> b!3958179 (= e!2450615 (isPrefix!3693 (tail!6138 lt!1383938) (tail!6138 lt!1383933)))))

(declare-fun b!3958178 () Bool)

(declare-fun res!1601845 () Bool)

(assert (=> b!3958178 (=> (not res!1601845) (not e!2450615))))

(assert (=> b!3958178 (= res!1601845 (= (head!8412 lt!1383938) (head!8412 lt!1383933)))))

(assert (= (and d!1173245 (not res!1601844)) b!3958177))

(assert (= (and b!3958177 res!1601846) b!3958178))

(assert (= (and b!3958178 res!1601845) b!3958179))

(assert (= (and d!1173245 (not res!1601843)) b!3958180))

(declare-fun m!4527117 () Bool)

(assert (=> b!3958180 m!4527117))

(assert (=> b!3958180 m!4526649))

(assert (=> b!3958179 m!4526693))

(declare-fun m!4527119 () Bool)

(assert (=> b!3958179 m!4527119))

(assert (=> b!3958179 m!4526693))

(assert (=> b!3958179 m!4527119))

(declare-fun m!4527121 () Bool)

(assert (=> b!3958179 m!4527121))

(assert (=> b!3958178 m!4526689))

(declare-fun m!4527123 () Bool)

(assert (=> b!3958178 m!4527123))

(assert (=> b!3957737 d!1173245))

(declare-fun d!1173251 () Bool)

(declare-fun dynLambda!18019 (Int BalanceConc!25224) TokenValue!6834)

(assert (=> d!1173251 (= (apply!9835 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))) (seqFromList!4863 lt!1383938)) (dynLambda!18019 (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))) (seqFromList!4863 lt!1383938)))))

(declare-fun b_lambda!115791 () Bool)

(assert (=> (not b_lambda!115791) (not d!1173251)))

(declare-fun t!329543 () Bool)

(declare-fun tb!238545 () Bool)

(assert (=> (and b!3957745 (= (toValue!9084 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329543) tb!238545))

(declare-fun result!288862 () Bool)

(assert (=> tb!238545 (= result!288862 (inv!21 (dynLambda!18019 (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))) (seqFromList!4863 lt!1383938))))))

(declare-fun m!4527131 () Bool)

(assert (=> tb!238545 m!4527131))

(assert (=> d!1173251 t!329543))

(declare-fun b_and!303763 () Bool)

(assert (= b_and!303727 (and (=> t!329543 result!288862) b_and!303763)))

(declare-fun t!329545 () Bool)

(declare-fun tb!238547 () Bool)

(assert (=> (and b!3957731 (= (toValue!9084 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329545) tb!238547))

(declare-fun result!288866 () Bool)

(assert (= result!288866 result!288862))

(assert (=> d!1173251 t!329545))

(declare-fun b_and!303765 () Bool)

(assert (= b_and!303731 (and (=> t!329545 result!288866) b_and!303765)))

(declare-fun t!329547 () Bool)

(declare-fun tb!238549 () Bool)

(assert (=> (and b!3957739 (= (toValue!9084 (transformation!6604 (h!47558 rules!2768))) (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329547) tb!238549))

(declare-fun result!288868 () Bool)

(assert (= result!288868 result!288862))

(assert (=> d!1173251 t!329547))

(declare-fun b_and!303767 () Bool)

(assert (= b_and!303735 (and (=> t!329547 result!288868) b_and!303767)))

(assert (=> d!1173251 m!4526641))

(declare-fun m!4527133 () Bool)

(assert (=> d!1173251 m!4527133))

(assert (=> b!3957737 d!1173251))

(declare-fun b!3958185 () Bool)

(declare-fun e!2450621 () tuple2!41424)

(declare-fun lt!1384089 () Option!9024)

(declare-fun lt!1384091 () tuple2!41424)

(assert (=> b!3958185 (= e!2450621 (tuple2!41425 (Cons!42137 (_1!23845 (v!39369 lt!1384089)) (_1!23846 lt!1384091)) (_2!23846 lt!1384091)))))

(assert (=> b!3958185 (= lt!1384091 (lexList!1961 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1384089))))))

(declare-fun b!3958186 () Bool)

(assert (=> b!3958186 (= e!2450621 (tuple2!41425 Nil!42137 (_2!23845 (v!39369 lt!1383941))))))

(declare-fun b!3958187 () Bool)

(declare-fun e!2450623 () Bool)

(declare-fun e!2450622 () Bool)

(assert (=> b!3958187 (= e!2450623 e!2450622)))

(declare-fun res!1601847 () Bool)

(declare-fun lt!1384090 () tuple2!41424)

(assert (=> b!3958187 (= res!1601847 (< (size!31559 (_2!23846 lt!1384090)) (size!31559 (_2!23845 (v!39369 lt!1383941)))))))

(assert (=> b!3958187 (=> (not res!1601847) (not e!2450622))))

(declare-fun b!3958188 () Bool)

(assert (=> b!3958188 (= e!2450623 (= (_2!23846 lt!1384090) (_2!23845 (v!39369 lt!1383941))))))

(declare-fun b!3958189 () Bool)

(assert (=> b!3958189 (= e!2450622 (not (isEmpty!25188 (_1!23846 lt!1384090))))))

(declare-fun d!1173257 () Bool)

(assert (=> d!1173257 e!2450623))

(declare-fun c!686969 () Bool)

(assert (=> d!1173257 (= c!686969 (> (size!31561 (_1!23846 lt!1384090)) 0))))

(assert (=> d!1173257 (= lt!1384090 e!2450621)))

(declare-fun c!686970 () Bool)

(assert (=> d!1173257 (= c!686970 ((_ is Some!9023) lt!1384089))))

(assert (=> d!1173257 (= lt!1384089 (maxPrefix!3497 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1383941))))))

(assert (=> d!1173257 (= (lexList!1961 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1383941))) lt!1384090)))

(assert (= (and d!1173257 c!686970) b!3958185))

(assert (= (and d!1173257 (not c!686970)) b!3958186))

(assert (= (and d!1173257 c!686969) b!3958187))

(assert (= (and d!1173257 (not c!686969)) b!3958188))

(assert (= (and b!3958187 res!1601847) b!3958189))

(declare-fun m!4527139 () Bool)

(assert (=> b!3958185 m!4527139))

(declare-fun m!4527141 () Bool)

(assert (=> b!3958187 m!4527141))

(assert (=> b!3958187 m!4526605))

(declare-fun m!4527143 () Bool)

(assert (=> b!3958189 m!4527143))

(declare-fun m!4527145 () Bool)

(assert (=> d!1173257 m!4527145))

(declare-fun m!4527147 () Bool)

(assert (=> d!1173257 m!4527147))

(assert (=> b!3957737 d!1173257))

(declare-fun d!1173261 () Bool)

(assert (=> d!1173261 (ruleValid!2546 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))

(declare-fun lt!1384095 () Unit!60622)

(declare-fun choose!23627 (LexerInterface!6193 Rule!13008 List!42262) Unit!60622)

(assert (=> d!1173261 (= lt!1384095 (choose!23627 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))) rules!2768))))

(declare-fun contains!8424 (List!42262 Rule!13008) Bool)

(assert (=> d!1173261 (contains!8424 rules!2768 (rule!9578 (_1!23845 (v!39369 lt!1383941))))))

(assert (=> d!1173261 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1622 thiss!20629 (rule!9578 (_1!23845 (v!39369 lt!1383941))) rules!2768) lt!1384095)))

(declare-fun bs!587209 () Bool)

(assert (= bs!587209 d!1173261))

(assert (=> bs!587209 m!4526653))

(declare-fun m!4527153 () Bool)

(assert (=> bs!587209 m!4527153))

(declare-fun m!4527155 () Bool)

(assert (=> bs!587209 m!4527155))

(assert (=> b!3957737 d!1173261))

(declare-fun d!1173263 () Bool)

(declare-fun lt!1384098 () BalanceConc!25224)

(assert (=> d!1173263 (= (list!15644 lt!1384098) (originalCharacters!7204 (_1!23845 (v!39369 lt!1383941))))))

(declare-fun dynLambda!18020 (Int TokenValue!6834) BalanceConc!25224)

(assert (=> d!1173263 (= lt!1384098 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))) (value!208848 (_1!23845 (v!39369 lt!1383941)))))))

(assert (=> d!1173263 (= (charsOf!4422 (_1!23845 (v!39369 lt!1383941))) lt!1384098)))

(declare-fun b_lambda!115793 () Bool)

(assert (=> (not b_lambda!115793) (not d!1173263)))

(declare-fun t!329549 () Bool)

(declare-fun tb!238551 () Bool)

(assert (=> (and b!3957745 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329549) tb!238551))

(declare-fun b!3958211 () Bool)

(declare-fun e!2450647 () Bool)

(declare-fun tp!1206199 () Bool)

(declare-fun inv!56370 (Conc!12815) Bool)

(assert (=> b!3958211 (= e!2450647 (and (inv!56370 (c!686869 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))) (value!208848 (_1!23845 (v!39369 lt!1383941)))))) tp!1206199))))

(declare-fun result!288872 () Bool)

(declare-fun inv!56371 (BalanceConc!25224) Bool)

(assert (=> tb!238551 (= result!288872 (and (inv!56371 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941))))) (value!208848 (_1!23845 (v!39369 lt!1383941))))) e!2450647))))

(assert (= tb!238551 b!3958211))

(declare-fun m!4527157 () Bool)

(assert (=> b!3958211 m!4527157))

(declare-fun m!4527159 () Bool)

(assert (=> tb!238551 m!4527159))

(assert (=> d!1173263 t!329549))

(declare-fun b_and!303773 () Bool)

(assert (= b_and!303729 (and (=> t!329549 result!288872) b_and!303773)))

(declare-fun tb!238561 () Bool)

(declare-fun t!329559 () Bool)

(assert (=> (and b!3957731 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329559) tb!238561))

(declare-fun result!288884 () Bool)

(assert (= result!288884 result!288872))

(assert (=> d!1173263 t!329559))

(declare-fun b_and!303775 () Bool)

(assert (= b_and!303733 (and (=> t!329559 result!288884) b_and!303775)))

(declare-fun t!329561 () Bool)

(declare-fun tb!238563 () Bool)

(assert (=> (and b!3957739 (= (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329561) tb!238563))

(declare-fun result!288886 () Bool)

(assert (= result!288886 result!288872))

(assert (=> d!1173263 t!329561))

(declare-fun b_and!303777 () Bool)

(assert (= b_and!303737 (and (=> t!329561 result!288886) b_and!303777)))

(declare-fun m!4527161 () Bool)

(assert (=> d!1173263 m!4527161))

(declare-fun m!4527163 () Bool)

(assert (=> d!1173263 m!4527163))

(assert (=> b!3957737 d!1173263))

(declare-fun d!1173265 () Bool)

(assert (=> d!1173265 (isPrefix!3693 lt!1383938 (++!10966 lt!1383938 (_2!23845 (v!39369 lt!1383941))))))

(declare-fun lt!1384101 () Unit!60622)

(declare-fun choose!23628 (List!42260 List!42260) Unit!60622)

(assert (=> d!1173265 (= lt!1384101 (choose!23628 lt!1383938 (_2!23845 (v!39369 lt!1383941))))))

(assert (=> d!1173265 (= (lemmaConcatTwoListThenFirstIsPrefix!2552 lt!1383938 (_2!23845 (v!39369 lt!1383941))) lt!1384101)))

(declare-fun bs!587210 () Bool)

(assert (= bs!587210 d!1173265))

(assert (=> bs!587210 m!4526631))

(assert (=> bs!587210 m!4526631))

(declare-fun m!4527173 () Bool)

(assert (=> bs!587210 m!4527173))

(declare-fun m!4527175 () Bool)

(assert (=> bs!587210 m!4527175))

(assert (=> b!3957737 d!1173265))

(declare-fun d!1173267 () Bool)

(declare-fun lt!1384102 () Int)

(assert (=> d!1173267 (>= lt!1384102 0)))

(declare-fun e!2450659 () Int)

(assert (=> d!1173267 (= lt!1384102 e!2450659)))

(declare-fun c!686971 () Bool)

(assert (=> d!1173267 (= c!686971 ((_ is Nil!42136) lt!1383938))))

(assert (=> d!1173267 (= (size!31559 lt!1383938) lt!1384102)))

(declare-fun b!3958225 () Bool)

(assert (=> b!3958225 (= e!2450659 0)))

(declare-fun b!3958226 () Bool)

(assert (=> b!3958226 (= e!2450659 (+ 1 (size!31559 (t!329515 lt!1383938))))))

(assert (= (and d!1173267 c!686971) b!3958225))

(assert (= (and d!1173267 (not c!686971)) b!3958226))

(declare-fun m!4527177 () Bool)

(assert (=> b!3958226 m!4527177))

(assert (=> b!3957737 d!1173267))

(declare-fun d!1173269 () Bool)

(declare-fun res!1601855 () Bool)

(declare-fun e!2450674 () Bool)

(assert (=> d!1173269 (=> (not res!1601855) (not e!2450674))))

(assert (=> d!1173269 (= res!1601855 (not (isEmpty!25190 (originalCharacters!7204 (h!47557 prefixTokens!80)))))))

(assert (=> d!1173269 (= (inv!56366 (h!47557 prefixTokens!80)) e!2450674)))

(declare-fun b!3958251 () Bool)

(declare-fun res!1601856 () Bool)

(assert (=> b!3958251 (=> (not res!1601856) (not e!2450674))))

(assert (=> b!3958251 (= res!1601856 (= (originalCharacters!7204 (h!47557 prefixTokens!80)) (list!15644 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (value!208848 (h!47557 prefixTokens!80))))))))

(declare-fun b!3958252 () Bool)

(assert (=> b!3958252 (= e!2450674 (= (size!31558 (h!47557 prefixTokens!80)) (size!31559 (originalCharacters!7204 (h!47557 prefixTokens!80)))))))

(assert (= (and d!1173269 res!1601855) b!3958251))

(assert (= (and b!3958251 res!1601856) b!3958252))

(declare-fun b_lambda!115795 () Bool)

(assert (=> (not b_lambda!115795) (not b!3958251)))

(declare-fun t!329574 () Bool)

(declare-fun tb!238575 () Bool)

(assert (=> (and b!3957745 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))) t!329574) tb!238575))

(declare-fun b!3958257 () Bool)

(declare-fun e!2450679 () Bool)

(declare-fun tp!1206238 () Bool)

(assert (=> b!3958257 (= e!2450679 (and (inv!56370 (c!686869 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (value!208848 (h!47557 prefixTokens!80))))) tp!1206238))))

(declare-fun result!288906 () Bool)

(assert (=> tb!238575 (= result!288906 (and (inv!56371 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (value!208848 (h!47557 prefixTokens!80)))) e!2450679))))

(assert (= tb!238575 b!3958257))

(declare-fun m!4527183 () Bool)

(assert (=> b!3958257 m!4527183))

(declare-fun m!4527185 () Bool)

(assert (=> tb!238575 m!4527185))

(assert (=> b!3958251 t!329574))

(declare-fun b_and!303787 () Bool)

(assert (= b_and!303773 (and (=> t!329574 result!288906) b_and!303787)))

(declare-fun t!329581 () Bool)

(declare-fun tb!238583 () Bool)

(assert (=> (and b!3957731 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))) t!329581) tb!238583))

(declare-fun result!288912 () Bool)

(assert (= result!288912 result!288906))

(assert (=> b!3958251 t!329581))

(declare-fun b_and!303789 () Bool)

(assert (= b_and!303775 (and (=> t!329581 result!288912) b_and!303789)))

(declare-fun tb!238585 () Bool)

(declare-fun t!329583 () Bool)

(assert (=> (and b!3957739 (= (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))) t!329583) tb!238585))

(declare-fun result!288914 () Bool)

(assert (= result!288914 result!288906))

(assert (=> b!3958251 t!329583))

(declare-fun b_and!303791 () Bool)

(assert (= b_and!303777 (and (=> t!329583 result!288914) b_and!303791)))

(declare-fun m!4527187 () Bool)

(assert (=> d!1173269 m!4527187))

(declare-fun m!4527191 () Bool)

(assert (=> b!3958251 m!4527191))

(assert (=> b!3958251 m!4527191))

(declare-fun m!4527199 () Bool)

(assert (=> b!3958251 m!4527199))

(declare-fun m!4527201 () Bool)

(assert (=> b!3958252 m!4527201))

(assert (=> b!3957758 d!1173269))

(declare-fun d!1173271 () Bool)

(assert (=> d!1173271 (= (inv!56363 (tag!7464 (h!47558 rules!2768))) (= (mod (str.len (value!208847 (tag!7464 (h!47558 rules!2768)))) 2) 0))))

(assert (=> b!3957757 d!1173271))

(declare-fun d!1173273 () Bool)

(declare-fun res!1601857 () Bool)

(declare-fun e!2450681 () Bool)

(assert (=> d!1173273 (=> (not res!1601857) (not e!2450681))))

(assert (=> d!1173273 (= res!1601857 (semiInverseModEq!2847 (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toValue!9084 (transformation!6604 (h!47558 rules!2768)))))))

(assert (=> d!1173273 (= (inv!56367 (transformation!6604 (h!47558 rules!2768))) e!2450681)))

(declare-fun b!3958262 () Bool)

(assert (=> b!3958262 (= e!2450681 (equivClasses!2746 (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toValue!9084 (transformation!6604 (h!47558 rules!2768)))))))

(assert (= (and d!1173273 res!1601857) b!3958262))

(declare-fun m!4527203 () Bool)

(assert (=> d!1173273 m!4527203))

(declare-fun m!4527205 () Bool)

(assert (=> b!3958262 m!4527205))

(assert (=> b!3957757 d!1173273))

(declare-fun d!1173275 () Bool)

(assert (=> d!1173275 (= (isEmpty!25189 rules!2768) ((_ is Nil!42138) rules!2768))))

(assert (=> b!3957740 d!1173275))

(declare-fun b!3958268 () Bool)

(declare-fun e!2450684 () tuple2!41424)

(declare-fun lt!1384103 () Option!9024)

(declare-fun lt!1384105 () tuple2!41424)

(assert (=> b!3958268 (= e!2450684 (tuple2!41425 (Cons!42137 (_1!23845 (v!39369 lt!1384103)) (_1!23846 lt!1384105)) (_2!23846 lt!1384105)))))

(assert (=> b!3958268 (= lt!1384105 (lexList!1961 thiss!20629 rules!2768 (_2!23845 (v!39369 lt!1384103))))))

(declare-fun b!3958269 () Bool)

(assert (=> b!3958269 (= e!2450684 (tuple2!41425 Nil!42137 lt!1383943))))

(declare-fun b!3958270 () Bool)

(declare-fun e!2450686 () Bool)

(declare-fun e!2450685 () Bool)

(assert (=> b!3958270 (= e!2450686 e!2450685)))

(declare-fun res!1601858 () Bool)

(declare-fun lt!1384104 () tuple2!41424)

(assert (=> b!3958270 (= res!1601858 (< (size!31559 (_2!23846 lt!1384104)) (size!31559 lt!1383943)))))

(assert (=> b!3958270 (=> (not res!1601858) (not e!2450685))))

(declare-fun b!3958271 () Bool)

(assert (=> b!3958271 (= e!2450686 (= (_2!23846 lt!1384104) lt!1383943))))

(declare-fun b!3958272 () Bool)

(assert (=> b!3958272 (= e!2450685 (not (isEmpty!25188 (_1!23846 lt!1384104))))))

(declare-fun d!1173277 () Bool)

(assert (=> d!1173277 e!2450686))

(declare-fun c!686972 () Bool)

(assert (=> d!1173277 (= c!686972 (> (size!31561 (_1!23846 lt!1384104)) 0))))

(assert (=> d!1173277 (= lt!1384104 e!2450684)))

(declare-fun c!686973 () Bool)

(assert (=> d!1173277 (= c!686973 ((_ is Some!9023) lt!1384103))))

(assert (=> d!1173277 (= lt!1384103 (maxPrefix!3497 thiss!20629 rules!2768 lt!1383943))))

(assert (=> d!1173277 (= (lexList!1961 thiss!20629 rules!2768 lt!1383943) lt!1384104)))

(assert (= (and d!1173277 c!686973) b!3958268))

(assert (= (and d!1173277 (not c!686973)) b!3958269))

(assert (= (and d!1173277 c!686972) b!3958270))

(assert (= (and d!1173277 (not c!686972)) b!3958271))

(assert (= (and b!3958270 res!1601858) b!3958272))

(declare-fun m!4527207 () Bool)

(assert (=> b!3958268 m!4527207))

(declare-fun m!4527209 () Bool)

(assert (=> b!3958270 m!4527209))

(assert (=> b!3958270 m!4526621))

(declare-fun m!4527211 () Bool)

(assert (=> b!3958272 m!4527211))

(declare-fun m!4527213 () Bool)

(assert (=> d!1173277 m!4527213))

(assert (=> d!1173277 m!4526575))

(assert (=> b!3957738 d!1173277))

(declare-fun b!3958273 () Bool)

(declare-fun e!2450688 () List!42261)

(assert (=> b!3958273 (= e!2450688 suffixTokens!72)))

(declare-fun e!2450687 () Bool)

(declare-fun lt!1384106 () List!42261)

(declare-fun b!3958276 () Bool)

(assert (=> b!3958276 (= e!2450687 (or (not (= suffixTokens!72 Nil!42137)) (= lt!1384106 prefixTokens!80)))))

(declare-fun d!1173279 () Bool)

(assert (=> d!1173279 e!2450687))

(declare-fun res!1601859 () Bool)

(assert (=> d!1173279 (=> (not res!1601859) (not e!2450687))))

(assert (=> d!1173279 (= res!1601859 (= (content!6398 lt!1384106) ((_ map or) (content!6398 prefixTokens!80) (content!6398 suffixTokens!72))))))

(assert (=> d!1173279 (= lt!1384106 e!2450688)))

(declare-fun c!686974 () Bool)

(assert (=> d!1173279 (= c!686974 ((_ is Nil!42137) prefixTokens!80))))

(assert (=> d!1173279 (= (++!10965 prefixTokens!80 suffixTokens!72) lt!1384106)))

(declare-fun b!3958274 () Bool)

(assert (=> b!3958274 (= e!2450688 (Cons!42137 (h!47557 prefixTokens!80) (++!10965 (t!329516 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3958275 () Bool)

(declare-fun res!1601860 () Bool)

(assert (=> b!3958275 (=> (not res!1601860) (not e!2450687))))

(assert (=> b!3958275 (= res!1601860 (= (size!31561 lt!1384106) (+ (size!31561 prefixTokens!80) (size!31561 suffixTokens!72))))))

(assert (= (and d!1173279 c!686974) b!3958273))

(assert (= (and d!1173279 (not c!686974)) b!3958274))

(assert (= (and d!1173279 res!1601859) b!3958275))

(assert (= (and b!3958275 res!1601860) b!3958276))

(declare-fun m!4527215 () Bool)

(assert (=> d!1173279 m!4527215))

(declare-fun m!4527217 () Bool)

(assert (=> d!1173279 m!4527217))

(assert (=> d!1173279 m!4527011))

(declare-fun m!4527219 () Bool)

(assert (=> b!3958274 m!4527219))

(declare-fun m!4527221 () Bool)

(assert (=> b!3958275 m!4527221))

(declare-fun m!4527223 () Bool)

(assert (=> b!3958275 m!4527223))

(assert (=> b!3958275 m!4527019))

(assert (=> b!3957738 d!1173279))

(declare-fun b!3958277 () Bool)

(declare-fun e!2450689 () List!42260)

(assert (=> b!3958277 (= e!2450689 suffix!1176)))

(declare-fun lt!1384107 () List!42260)

(declare-fun b!3958280 () Bool)

(declare-fun e!2450690 () Bool)

(assert (=> b!3958280 (= e!2450690 (or (not (= suffix!1176 Nil!42136)) (= lt!1384107 prefix!426)))))

(declare-fun b!3958278 () Bool)

(assert (=> b!3958278 (= e!2450689 (Cons!42136 (h!47556 prefix!426) (++!10966 (t!329515 prefix!426) suffix!1176)))))

(declare-fun b!3958279 () Bool)

(declare-fun res!1601861 () Bool)

(assert (=> b!3958279 (=> (not res!1601861) (not e!2450690))))

(assert (=> b!3958279 (= res!1601861 (= (size!31559 lt!1384107) (+ (size!31559 prefix!426) (size!31559 suffix!1176))))))

(declare-fun d!1173281 () Bool)

(assert (=> d!1173281 e!2450690))

(declare-fun res!1601862 () Bool)

(assert (=> d!1173281 (=> (not res!1601862) (not e!2450690))))

(assert (=> d!1173281 (= res!1601862 (= (content!6399 lt!1384107) ((_ map or) (content!6399 prefix!426) (content!6399 suffix!1176))))))

(assert (=> d!1173281 (= lt!1384107 e!2450689)))

(declare-fun c!686975 () Bool)

(assert (=> d!1173281 (= c!686975 ((_ is Nil!42136) prefix!426))))

(assert (=> d!1173281 (= (++!10966 prefix!426 suffix!1176) lt!1384107)))

(assert (= (and d!1173281 c!686975) b!3958277))

(assert (= (and d!1173281 (not c!686975)) b!3958278))

(assert (= (and d!1173281 res!1601862) b!3958279))

(assert (= (and b!3958279 res!1601861) b!3958280))

(declare-fun m!4527225 () Bool)

(assert (=> b!3958278 m!4527225))

(declare-fun m!4527227 () Bool)

(assert (=> b!3958279 m!4527227))

(assert (=> b!3958279 m!4526581))

(assert (=> b!3958279 m!4526603))

(declare-fun m!4527229 () Bool)

(assert (=> d!1173281 m!4527229))

(declare-fun m!4527231 () Bool)

(assert (=> d!1173281 m!4527231))

(declare-fun m!4527233 () Bool)

(assert (=> d!1173281 m!4527233))

(assert (=> b!3957738 d!1173281))

(declare-fun d!1173283 () Bool)

(declare-fun res!1601863 () Bool)

(declare-fun e!2450691 () Bool)

(assert (=> d!1173283 (=> (not res!1601863) (not e!2450691))))

(assert (=> d!1173283 (= res!1601863 (not (isEmpty!25190 (originalCharacters!7204 (h!47557 suffixTokens!72)))))))

(assert (=> d!1173283 (= (inv!56366 (h!47557 suffixTokens!72)) e!2450691)))

(declare-fun b!3958281 () Bool)

(declare-fun res!1601864 () Bool)

(assert (=> b!3958281 (=> (not res!1601864) (not e!2450691))))

(assert (=> b!3958281 (= res!1601864 (= (originalCharacters!7204 (h!47557 suffixTokens!72)) (list!15644 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (value!208848 (h!47557 suffixTokens!72))))))))

(declare-fun b!3958282 () Bool)

(assert (=> b!3958282 (= e!2450691 (= (size!31558 (h!47557 suffixTokens!72)) (size!31559 (originalCharacters!7204 (h!47557 suffixTokens!72)))))))

(assert (= (and d!1173283 res!1601863) b!3958281))

(assert (= (and b!3958281 res!1601864) b!3958282))

(declare-fun b_lambda!115801 () Bool)

(assert (=> (not b_lambda!115801) (not b!3958281)))

(declare-fun tb!238587 () Bool)

(declare-fun t!329585 () Bool)

(assert (=> (and b!3957745 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))) t!329585) tb!238587))

(declare-fun b!3958283 () Bool)

(declare-fun e!2450692 () Bool)

(declare-fun tp!1206250 () Bool)

(assert (=> b!3958283 (= e!2450692 (and (inv!56370 (c!686869 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (value!208848 (h!47557 suffixTokens!72))))) tp!1206250))))

(declare-fun result!288916 () Bool)

(assert (=> tb!238587 (= result!288916 (and (inv!56371 (dynLambda!18020 (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (value!208848 (h!47557 suffixTokens!72)))) e!2450692))))

(assert (= tb!238587 b!3958283))

(declare-fun m!4527235 () Bool)

(assert (=> b!3958283 m!4527235))

(declare-fun m!4527237 () Bool)

(assert (=> tb!238587 m!4527237))

(assert (=> b!3958281 t!329585))

(declare-fun b_and!303793 () Bool)

(assert (= b_and!303787 (and (=> t!329585 result!288916) b_and!303793)))

(declare-fun t!329587 () Bool)

(declare-fun tb!238589 () Bool)

(assert (=> (and b!3957731 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))) t!329587) tb!238589))

(declare-fun result!288918 () Bool)

(assert (= result!288918 result!288916))

(assert (=> b!3958281 t!329587))

(declare-fun b_and!303795 () Bool)

(assert (= b_and!303789 (and (=> t!329587 result!288918) b_and!303795)))

(declare-fun t!329589 () Bool)

(declare-fun tb!238591 () Bool)

(assert (=> (and b!3957739 (= (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))) t!329589) tb!238591))

(declare-fun result!288920 () Bool)

(assert (= result!288920 result!288916))

(assert (=> b!3958281 t!329589))

(declare-fun b_and!303797 () Bool)

(assert (= b_and!303791 (and (=> t!329589 result!288920) b_and!303797)))

(declare-fun m!4527239 () Bool)

(assert (=> d!1173283 m!4527239))

(declare-fun m!4527241 () Bool)

(assert (=> b!3958281 m!4527241))

(assert (=> b!3958281 m!4527241))

(declare-fun m!4527243 () Bool)

(assert (=> b!3958281 m!4527243))

(declare-fun m!4527245 () Bool)

(assert (=> b!3958282 m!4527245))

(assert (=> b!3957742 d!1173283))

(declare-fun d!1173285 () Bool)

(declare-fun lt!1384108 () Int)

(assert (=> d!1173285 (>= lt!1384108 0)))

(declare-fun e!2450693 () Int)

(assert (=> d!1173285 (= lt!1384108 e!2450693)))

(declare-fun c!686976 () Bool)

(assert (=> d!1173285 (= c!686976 ((_ is Nil!42136) prefix!426))))

(assert (=> d!1173285 (= (size!31559 prefix!426) lt!1384108)))

(declare-fun b!3958284 () Bool)

(assert (=> b!3958284 (= e!2450693 0)))

(declare-fun b!3958285 () Bool)

(assert (=> b!3958285 (= e!2450693 (+ 1 (size!31559 (t!329515 prefix!426))))))

(assert (= (and d!1173285 c!686976) b!3958284))

(assert (= (and d!1173285 (not c!686976)) b!3958285))

(declare-fun m!4527247 () Bool)

(assert (=> b!3958285 m!4527247))

(assert (=> b!3957743 d!1173285))

(declare-fun b!3958304 () Bool)

(declare-fun e!2450700 () Bool)

(declare-fun e!2450702 () Bool)

(assert (=> b!3958304 (= e!2450700 e!2450702)))

(declare-fun res!1601879 () Bool)

(assert (=> b!3958304 (=> (not res!1601879) (not e!2450702))))

(declare-fun lt!1384119 () Option!9024)

(declare-fun isDefined!6995 (Option!9024) Bool)

(assert (=> b!3958304 (= res!1601879 (isDefined!6995 lt!1384119))))

(declare-fun b!3958305 () Bool)

(declare-fun res!1601884 () Bool)

(assert (=> b!3958305 (=> (not res!1601884) (not e!2450702))))

(assert (=> b!3958305 (= res!1601884 (< (size!31559 (_2!23845 (get!13896 lt!1384119))) (size!31559 lt!1383943)))))

(declare-fun d!1173287 () Bool)

(assert (=> d!1173287 e!2450700))

(declare-fun res!1601882 () Bool)

(assert (=> d!1173287 (=> res!1601882 e!2450700)))

(assert (=> d!1173287 (= res!1601882 (isEmpty!25191 lt!1384119))))

(declare-fun e!2450701 () Option!9024)

(assert (=> d!1173287 (= lt!1384119 e!2450701)))

(declare-fun c!686979 () Bool)

(assert (=> d!1173287 (= c!686979 (and ((_ is Cons!42138) rules!2768) ((_ is Nil!42138) (t!329517 rules!2768))))))

(declare-fun lt!1384120 () Unit!60622)

(declare-fun lt!1384122 () Unit!60622)

(assert (=> d!1173287 (= lt!1384120 lt!1384122)))

(assert (=> d!1173287 (isPrefix!3693 lt!1383943 lt!1383943)))

(declare-fun lemmaIsPrefixRefl!2336 (List!42260 List!42260) Unit!60622)

(assert (=> d!1173287 (= lt!1384122 (lemmaIsPrefixRefl!2336 lt!1383943 lt!1383943))))

(declare-fun rulesValidInductive!2394 (LexerInterface!6193 List!42262) Bool)

(assert (=> d!1173287 (rulesValidInductive!2394 thiss!20629 rules!2768)))

(assert (=> d!1173287 (= (maxPrefix!3497 thiss!20629 rules!2768 lt!1383943) lt!1384119)))

(declare-fun call!285364 () Option!9024)

(declare-fun bm!285359 () Bool)

(assert (=> bm!285359 (= call!285364 (maxPrefixOneRule!2547 thiss!20629 (h!47558 rules!2768) lt!1383943))))

(declare-fun b!3958306 () Bool)

(assert (=> b!3958306 (= e!2450702 (contains!8424 rules!2768 (rule!9578 (_1!23845 (get!13896 lt!1384119)))))))

(declare-fun b!3958307 () Bool)

(declare-fun res!1601885 () Bool)

(assert (=> b!3958307 (=> (not res!1601885) (not e!2450702))))

(assert (=> b!3958307 (= res!1601885 (= (value!208848 (_1!23845 (get!13896 lt!1384119))) (apply!9835 (transformation!6604 (rule!9578 (_1!23845 (get!13896 lt!1384119)))) (seqFromList!4863 (originalCharacters!7204 (_1!23845 (get!13896 lt!1384119)))))))))

(declare-fun b!3958308 () Bool)

(assert (=> b!3958308 (= e!2450701 call!285364)))

(declare-fun b!3958309 () Bool)

(declare-fun lt!1384123 () Option!9024)

(declare-fun lt!1384121 () Option!9024)

(assert (=> b!3958309 (= e!2450701 (ite (and ((_ is None!9023) lt!1384123) ((_ is None!9023) lt!1384121)) None!9023 (ite ((_ is None!9023) lt!1384121) lt!1384123 (ite ((_ is None!9023) lt!1384123) lt!1384121 (ite (>= (size!31558 (_1!23845 (v!39369 lt!1384123))) (size!31558 (_1!23845 (v!39369 lt!1384121)))) lt!1384123 lt!1384121)))))))

(assert (=> b!3958309 (= lt!1384123 call!285364)))

(assert (=> b!3958309 (= lt!1384121 (maxPrefix!3497 thiss!20629 (t!329517 rules!2768) lt!1383943))))

(declare-fun b!3958310 () Bool)

(declare-fun res!1601880 () Bool)

(assert (=> b!3958310 (=> (not res!1601880) (not e!2450702))))

(assert (=> b!3958310 (= res!1601880 (= (list!15644 (charsOf!4422 (_1!23845 (get!13896 lt!1384119)))) (originalCharacters!7204 (_1!23845 (get!13896 lt!1384119)))))))

(declare-fun b!3958311 () Bool)

(declare-fun res!1601883 () Bool)

(assert (=> b!3958311 (=> (not res!1601883) (not e!2450702))))

(assert (=> b!3958311 (= res!1601883 (matchR!5530 (regex!6604 (rule!9578 (_1!23845 (get!13896 lt!1384119)))) (list!15644 (charsOf!4422 (_1!23845 (get!13896 lt!1384119))))))))

(declare-fun b!3958312 () Bool)

(declare-fun res!1601881 () Bool)

(assert (=> b!3958312 (=> (not res!1601881) (not e!2450702))))

(assert (=> b!3958312 (= res!1601881 (= (++!10966 (list!15644 (charsOf!4422 (_1!23845 (get!13896 lt!1384119)))) (_2!23845 (get!13896 lt!1384119))) lt!1383943))))

(assert (= (and d!1173287 c!686979) b!3958308))

(assert (= (and d!1173287 (not c!686979)) b!3958309))

(assert (= (or b!3958308 b!3958309) bm!285359))

(assert (= (and d!1173287 (not res!1601882)) b!3958304))

(assert (= (and b!3958304 res!1601879) b!3958310))

(assert (= (and b!3958310 res!1601880) b!3958305))

(assert (= (and b!3958305 res!1601884) b!3958312))

(assert (= (and b!3958312 res!1601881) b!3958307))

(assert (= (and b!3958307 res!1601885) b!3958311))

(assert (= (and b!3958311 res!1601883) b!3958306))

(declare-fun m!4527249 () Bool)

(assert (=> b!3958307 m!4527249))

(declare-fun m!4527251 () Bool)

(assert (=> b!3958307 m!4527251))

(assert (=> b!3958307 m!4527251))

(declare-fun m!4527253 () Bool)

(assert (=> b!3958307 m!4527253))

(declare-fun m!4527255 () Bool)

(assert (=> bm!285359 m!4527255))

(assert (=> b!3958305 m!4527249))

(declare-fun m!4527257 () Bool)

(assert (=> b!3958305 m!4527257))

(assert (=> b!3958305 m!4526621))

(assert (=> b!3958311 m!4527249))

(declare-fun m!4527259 () Bool)

(assert (=> b!3958311 m!4527259))

(assert (=> b!3958311 m!4527259))

(declare-fun m!4527261 () Bool)

(assert (=> b!3958311 m!4527261))

(assert (=> b!3958311 m!4527261))

(declare-fun m!4527263 () Bool)

(assert (=> b!3958311 m!4527263))

(declare-fun m!4527265 () Bool)

(assert (=> b!3958309 m!4527265))

(assert (=> b!3958310 m!4527249))

(assert (=> b!3958310 m!4527259))

(assert (=> b!3958310 m!4527259))

(assert (=> b!3958310 m!4527261))

(declare-fun m!4527267 () Bool)

(assert (=> d!1173287 m!4527267))

(declare-fun m!4527269 () Bool)

(assert (=> d!1173287 m!4527269))

(declare-fun m!4527271 () Bool)

(assert (=> d!1173287 m!4527271))

(declare-fun m!4527273 () Bool)

(assert (=> d!1173287 m!4527273))

(declare-fun m!4527275 () Bool)

(assert (=> b!3958304 m!4527275))

(assert (=> b!3958312 m!4527249))

(assert (=> b!3958312 m!4527259))

(assert (=> b!3958312 m!4527259))

(assert (=> b!3958312 m!4527261))

(assert (=> b!3958312 m!4527261))

(declare-fun m!4527277 () Bool)

(assert (=> b!3958312 m!4527277))

(assert (=> b!3958306 m!4527249))

(declare-fun m!4527279 () Bool)

(assert (=> b!3958306 m!4527279))

(assert (=> b!3957741 d!1173287))

(declare-fun d!1173289 () Bool)

(declare-fun lt!1384124 () Int)

(assert (=> d!1173289 (>= lt!1384124 0)))

(declare-fun e!2450703 () Int)

(assert (=> d!1173289 (= lt!1384124 e!2450703)))

(declare-fun c!686980 () Bool)

(assert (=> d!1173289 (= c!686980 ((_ is Nil!42136) suffix!1176))))

(assert (=> d!1173289 (= (size!31559 suffix!1176) lt!1384124)))

(declare-fun b!3958313 () Bool)

(assert (=> b!3958313 (= e!2450703 0)))

(declare-fun b!3958314 () Bool)

(assert (=> b!3958314 (= e!2450703 (+ 1 (size!31559 (t!329515 suffix!1176))))))

(assert (= (and d!1173289 c!686980) b!3958313))

(assert (= (and d!1173289 (not c!686980)) b!3958314))

(declare-fun m!4527281 () Bool)

(assert (=> b!3958314 m!4527281))

(assert (=> b!3957744 d!1173289))

(declare-fun d!1173291 () Bool)

(declare-fun lt!1384125 () Int)

(assert (=> d!1173291 (>= lt!1384125 0)))

(declare-fun e!2450704 () Int)

(assert (=> d!1173291 (= lt!1384125 e!2450704)))

(declare-fun c!686981 () Bool)

(assert (=> d!1173291 (= c!686981 ((_ is Nil!42136) (_2!23845 (v!39369 lt!1383941))))))

(assert (=> d!1173291 (= (size!31559 (_2!23845 (v!39369 lt!1383941))) lt!1384125)))

(declare-fun b!3958315 () Bool)

(assert (=> b!3958315 (= e!2450704 0)))

(declare-fun b!3958316 () Bool)

(assert (=> b!3958316 (= e!2450704 (+ 1 (size!31559 (t!329515 (_2!23845 (v!39369 lt!1383941))))))))

(assert (= (and d!1173291 c!686981) b!3958315))

(assert (= (and d!1173291 (not c!686981)) b!3958316))

(declare-fun m!4527283 () Bool)

(assert (=> b!3958316 m!4527283))

(assert (=> b!3957744 d!1173291))

(declare-fun b!3958330 () Bool)

(declare-fun b_free!109125 () Bool)

(declare-fun b_next!109829 () Bool)

(assert (=> b!3958330 (= b_free!109125 (not b_next!109829))))

(declare-fun t!329591 () Bool)

(declare-fun tb!238593 () Bool)

(assert (=> (and b!3958330 (= (toValue!9084 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329591) tb!238593))

(declare-fun result!288924 () Bool)

(assert (= result!288924 result!288862))

(assert (=> d!1173251 t!329591))

(declare-fun tp!1206265 () Bool)

(declare-fun b_and!303799 () Bool)

(assert (=> b!3958330 (= tp!1206265 (and (=> t!329591 result!288924) b_and!303799))))

(declare-fun b_free!109127 () Bool)

(declare-fun b_next!109831 () Bool)

(assert (=> b!3958330 (= b_free!109127 (not b_next!109831))))

(declare-fun t!329593 () Bool)

(declare-fun tb!238595 () Bool)

(assert (=> (and b!3958330 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329593) tb!238595))

(declare-fun result!288926 () Bool)

(assert (= result!288926 result!288872))

(assert (=> d!1173263 t!329593))

(declare-fun t!329595 () Bool)

(declare-fun tb!238597 () Bool)

(assert (=> (and b!3958330 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))) t!329595) tb!238597))

(declare-fun result!288928 () Bool)

(assert (= result!288928 result!288906))

(assert (=> b!3958251 t!329595))

(declare-fun t!329597 () Bool)

(declare-fun tb!238599 () Bool)

(assert (=> (and b!3958330 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))) t!329597) tb!238599))

(declare-fun result!288930 () Bool)

(assert (= result!288930 result!288916))

(assert (=> b!3958281 t!329597))

(declare-fun tp!1206263 () Bool)

(declare-fun b_and!303801 () Bool)

(assert (=> b!3958330 (= tp!1206263 (and (=> t!329593 result!288926) (=> t!329595 result!288928) (=> t!329597 result!288930) b_and!303801))))

(declare-fun e!2450721 () Bool)

(assert (=> b!3957758 (= tp!1206165 e!2450721)))

(declare-fun e!2450718 () Bool)

(declare-fun tp!1206262 () Bool)

(declare-fun e!2450717 () Bool)

(declare-fun b!3958329 () Bool)

(assert (=> b!3958329 (= e!2450717 (and tp!1206262 (inv!56363 (tag!7464 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (inv!56367 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) e!2450718))))

(declare-fun e!2450722 () Bool)

(declare-fun tp!1206261 () Bool)

(declare-fun b!3958327 () Bool)

(assert (=> b!3958327 (= e!2450721 (and (inv!56366 (h!47557 (t!329516 prefixTokens!80))) e!2450722 tp!1206261))))

(assert (=> b!3958330 (= e!2450718 (and tp!1206265 tp!1206263))))

(declare-fun b!3958328 () Bool)

(declare-fun tp!1206264 () Bool)

(assert (=> b!3958328 (= e!2450722 (and (inv!21 (value!208848 (h!47557 (t!329516 prefixTokens!80)))) e!2450717 tp!1206264))))

(assert (= b!3958329 b!3958330))

(assert (= b!3958328 b!3958329))

(assert (= b!3958327 b!3958328))

(assert (= (and b!3957758 ((_ is Cons!42137) (t!329516 prefixTokens!80))) b!3958327))

(declare-fun m!4527285 () Bool)

(assert (=> b!3958329 m!4527285))

(declare-fun m!4527287 () Bool)

(assert (=> b!3958329 m!4527287))

(declare-fun m!4527289 () Bool)

(assert (=> b!3958327 m!4527289))

(declare-fun m!4527291 () Bool)

(assert (=> b!3958328 m!4527291))

(declare-fun b!3958344 () Bool)

(declare-fun e!2450725 () Bool)

(declare-fun tp!1206279 () Bool)

(declare-fun tp!1206276 () Bool)

(assert (=> b!3958344 (= e!2450725 (and tp!1206279 tp!1206276))))

(declare-fun b!3958342 () Bool)

(declare-fun tp!1206280 () Bool)

(declare-fun tp!1206278 () Bool)

(assert (=> b!3958342 (= e!2450725 (and tp!1206280 tp!1206278))))

(assert (=> b!3957757 (= tp!1206170 e!2450725)))

(declare-fun b!3958343 () Bool)

(declare-fun tp!1206277 () Bool)

(assert (=> b!3958343 (= e!2450725 tp!1206277)))

(declare-fun b!3958341 () Bool)

(assert (=> b!3958341 (= e!2450725 tp_is_empty!19989)))

(assert (= (and b!3957757 ((_ is ElementMatch!11509) (regex!6604 (h!47558 rules!2768)))) b!3958341))

(assert (= (and b!3957757 ((_ is Concat!18344) (regex!6604 (h!47558 rules!2768)))) b!3958342))

(assert (= (and b!3957757 ((_ is Star!11509) (regex!6604 (h!47558 rules!2768)))) b!3958343))

(assert (= (and b!3957757 ((_ is Union!11509) (regex!6604 (h!47558 rules!2768)))) b!3958344))

(declare-fun b!3958348 () Bool)

(declare-fun e!2450726 () Bool)

(declare-fun tp!1206284 () Bool)

(declare-fun tp!1206281 () Bool)

(assert (=> b!3958348 (= e!2450726 (and tp!1206284 tp!1206281))))

(declare-fun b!3958346 () Bool)

(declare-fun tp!1206285 () Bool)

(declare-fun tp!1206283 () Bool)

(assert (=> b!3958346 (= e!2450726 (and tp!1206285 tp!1206283))))

(assert (=> b!3957747 (= tp!1206168 e!2450726)))

(declare-fun b!3958347 () Bool)

(declare-fun tp!1206282 () Bool)

(assert (=> b!3958347 (= e!2450726 tp!1206282)))

(declare-fun b!3958345 () Bool)

(assert (=> b!3958345 (= e!2450726 tp_is_empty!19989)))

(assert (= (and b!3957747 ((_ is ElementMatch!11509) (regex!6604 (rule!9578 (h!47557 prefixTokens!80))))) b!3958345))

(assert (= (and b!3957747 ((_ is Concat!18344) (regex!6604 (rule!9578 (h!47557 prefixTokens!80))))) b!3958346))

(assert (= (and b!3957747 ((_ is Star!11509) (regex!6604 (rule!9578 (h!47557 prefixTokens!80))))) b!3958347))

(assert (= (and b!3957747 ((_ is Union!11509) (regex!6604 (rule!9578 (h!47557 prefixTokens!80))))) b!3958348))

(declare-fun b!3958359 () Bool)

(declare-fun b_free!109129 () Bool)

(declare-fun b_next!109833 () Bool)

(assert (=> b!3958359 (= b_free!109129 (not b_next!109833))))

(declare-fun tb!238601 () Bool)

(declare-fun t!329599 () Bool)

(assert (=> (and b!3958359 (= (toValue!9084 (transformation!6604 (h!47558 (t!329517 rules!2768)))) (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329599) tb!238601))

(declare-fun result!288936 () Bool)

(assert (= result!288936 result!288862))

(assert (=> d!1173251 t!329599))

(declare-fun tp!1206295 () Bool)

(declare-fun b_and!303803 () Bool)

(assert (=> b!3958359 (= tp!1206295 (and (=> t!329599 result!288936) b_and!303803))))

(declare-fun b_free!109131 () Bool)

(declare-fun b_next!109835 () Bool)

(assert (=> b!3958359 (= b_free!109131 (not b_next!109835))))

(declare-fun tb!238603 () Bool)

(declare-fun t!329601 () Bool)

(assert (=> (and b!3958359 (= (toChars!8943 (transformation!6604 (h!47558 (t!329517 rules!2768)))) (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329601) tb!238603))

(declare-fun result!288938 () Bool)

(assert (= result!288938 result!288872))

(assert (=> d!1173263 t!329601))

(declare-fun t!329603 () Bool)

(declare-fun tb!238605 () Bool)

(assert (=> (and b!3958359 (= (toChars!8943 (transformation!6604 (h!47558 (t!329517 rules!2768)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))) t!329603) tb!238605))

(declare-fun result!288940 () Bool)

(assert (= result!288940 result!288906))

(assert (=> b!3958251 t!329603))

(declare-fun tb!238607 () Bool)

(declare-fun t!329605 () Bool)

(assert (=> (and b!3958359 (= (toChars!8943 (transformation!6604 (h!47558 (t!329517 rules!2768)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))) t!329605) tb!238607))

(declare-fun result!288942 () Bool)

(assert (= result!288942 result!288916))

(assert (=> b!3958281 t!329605))

(declare-fun tp!1206297 () Bool)

(declare-fun b_and!303805 () Bool)

(assert (=> b!3958359 (= tp!1206297 (and (=> t!329601 result!288938) (=> t!329603 result!288940) (=> t!329605 result!288942) b_and!303805))))

(declare-fun e!2450737 () Bool)

(assert (=> b!3958359 (= e!2450737 (and tp!1206295 tp!1206297))))

(declare-fun e!2450736 () Bool)

(declare-fun b!3958358 () Bool)

(declare-fun tp!1206296 () Bool)

(assert (=> b!3958358 (= e!2450736 (and tp!1206296 (inv!56363 (tag!7464 (h!47558 (t!329517 rules!2768)))) (inv!56367 (transformation!6604 (h!47558 (t!329517 rules!2768)))) e!2450737))))

(declare-fun b!3958357 () Bool)

(declare-fun e!2450735 () Bool)

(declare-fun tp!1206294 () Bool)

(assert (=> b!3958357 (= e!2450735 (and e!2450736 tp!1206294))))

(assert (=> b!3957736 (= tp!1206174 e!2450735)))

(assert (= b!3958358 b!3958359))

(assert (= b!3958357 b!3958358))

(assert (= (and b!3957736 ((_ is Cons!42138) (t!329517 rules!2768))) b!3958357))

(declare-fun m!4527293 () Bool)

(assert (=> b!3958358 m!4527293))

(declare-fun m!4527295 () Bool)

(assert (=> b!3958358 m!4527295))

(declare-fun b!3958364 () Bool)

(declare-fun e!2450741 () Bool)

(declare-fun tp!1206300 () Bool)

(assert (=> b!3958364 (= e!2450741 (and tp_is_empty!19989 tp!1206300))))

(assert (=> b!3957729 (= tp!1206175 e!2450741)))

(assert (= (and b!3957729 ((_ is Cons!42136) (t!329515 suffix!1176))) b!3958364))

(declare-fun b!3958365 () Bool)

(declare-fun e!2450742 () Bool)

(declare-fun tp!1206301 () Bool)

(assert (=> b!3958365 (= e!2450742 (and tp_is_empty!19989 tp!1206301))))

(assert (=> b!3957750 (= tp!1206171 e!2450742)))

(assert (= (and b!3957750 ((_ is Cons!42136) (t!329515 prefix!426))) b!3958365))

(declare-fun b!3958369 () Bool)

(declare-fun e!2450743 () Bool)

(declare-fun tp!1206305 () Bool)

(declare-fun tp!1206302 () Bool)

(assert (=> b!3958369 (= e!2450743 (and tp!1206305 tp!1206302))))

(declare-fun b!3958367 () Bool)

(declare-fun tp!1206306 () Bool)

(declare-fun tp!1206304 () Bool)

(assert (=> b!3958367 (= e!2450743 (and tp!1206306 tp!1206304))))

(assert (=> b!3957749 (= tp!1206169 e!2450743)))

(declare-fun b!3958368 () Bool)

(declare-fun tp!1206303 () Bool)

(assert (=> b!3958368 (= e!2450743 tp!1206303)))

(declare-fun b!3958366 () Bool)

(assert (=> b!3958366 (= e!2450743 tp_is_empty!19989)))

(assert (= (and b!3957749 ((_ is ElementMatch!11509) (regex!6604 (rule!9578 (h!47557 suffixTokens!72))))) b!3958366))

(assert (= (and b!3957749 ((_ is Concat!18344) (regex!6604 (rule!9578 (h!47557 suffixTokens!72))))) b!3958367))

(assert (= (and b!3957749 ((_ is Star!11509) (regex!6604 (rule!9578 (h!47557 suffixTokens!72))))) b!3958368))

(assert (= (and b!3957749 ((_ is Union!11509) (regex!6604 (rule!9578 (h!47557 suffixTokens!72))))) b!3958369))

(declare-fun b!3958370 () Bool)

(declare-fun e!2450744 () Bool)

(declare-fun tp!1206307 () Bool)

(assert (=> b!3958370 (= e!2450744 (and tp_is_empty!19989 tp!1206307))))

(assert (=> b!3957728 (= tp!1206161 e!2450744)))

(assert (= (and b!3957728 ((_ is Cons!42136) (originalCharacters!7204 (h!47557 prefixTokens!80)))) b!3958370))

(declare-fun b!3958371 () Bool)

(declare-fun e!2450745 () Bool)

(declare-fun tp!1206308 () Bool)

(assert (=> b!3958371 (= e!2450745 (and tp_is_empty!19989 tp!1206308))))

(assert (=> b!3957753 (= tp!1206166 e!2450745)))

(assert (= (and b!3957753 ((_ is Cons!42136) (originalCharacters!7204 (h!47557 suffixTokens!72)))) b!3958371))

(declare-fun b!3958375 () Bool)

(declare-fun b_free!109133 () Bool)

(declare-fun b_next!109837 () Bool)

(assert (=> b!3958375 (= b_free!109133 (not b_next!109837))))

(declare-fun t!329607 () Bool)

(declare-fun tb!238609 () Bool)

(assert (=> (and b!3958375 (= (toValue!9084 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (toValue!9084 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329607) tb!238609))

(declare-fun result!288946 () Bool)

(assert (= result!288946 result!288862))

(assert (=> d!1173251 t!329607))

(declare-fun b_and!303807 () Bool)

(declare-fun tp!1206313 () Bool)

(assert (=> b!3958375 (= tp!1206313 (and (=> t!329607 result!288946) b_and!303807))))

(declare-fun b_free!109135 () Bool)

(declare-fun b_next!109839 () Bool)

(assert (=> b!3958375 (= b_free!109135 (not b_next!109839))))

(declare-fun tb!238611 () Bool)

(declare-fun t!329609 () Bool)

(assert (=> (and b!3958375 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (toChars!8943 (transformation!6604 (rule!9578 (_1!23845 (v!39369 lt!1383941)))))) t!329609) tb!238611))

(declare-fun result!288948 () Bool)

(assert (= result!288948 result!288872))

(assert (=> d!1173263 t!329609))

(declare-fun tb!238613 () Bool)

(declare-fun t!329611 () Bool)

(assert (=> (and b!3958375 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80))))) t!329611) tb!238613))

(declare-fun result!288950 () Bool)

(assert (= result!288950 result!288906))

(assert (=> b!3958251 t!329611))

(declare-fun t!329613 () Bool)

(declare-fun tb!238615 () Bool)

(assert (=> (and b!3958375 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72))))) t!329613) tb!238615))

(declare-fun result!288952 () Bool)

(assert (= result!288952 result!288916))

(assert (=> b!3958281 t!329613))

(declare-fun b_and!303809 () Bool)

(declare-fun tp!1206311 () Bool)

(assert (=> b!3958375 (= tp!1206311 (and (=> t!329609 result!288948) (=> t!329611 result!288950) (=> t!329613 result!288952) b_and!303809))))

(declare-fun e!2450750 () Bool)

(assert (=> b!3957742 (= tp!1206164 e!2450750)))

(declare-fun tp!1206310 () Bool)

(declare-fun e!2450747 () Bool)

(declare-fun b!3958374 () Bool)

(declare-fun e!2450746 () Bool)

(assert (=> b!3958374 (= e!2450746 (and tp!1206310 (inv!56363 (tag!7464 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (inv!56367 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) e!2450747))))

(declare-fun tp!1206309 () Bool)

(declare-fun e!2450751 () Bool)

(declare-fun b!3958372 () Bool)

(assert (=> b!3958372 (= e!2450750 (and (inv!56366 (h!47557 (t!329516 suffixTokens!72))) e!2450751 tp!1206309))))

(assert (=> b!3958375 (= e!2450747 (and tp!1206313 tp!1206311))))

(declare-fun tp!1206312 () Bool)

(declare-fun b!3958373 () Bool)

(assert (=> b!3958373 (= e!2450751 (and (inv!21 (value!208848 (h!47557 (t!329516 suffixTokens!72)))) e!2450746 tp!1206312))))

(assert (= b!3958374 b!3958375))

(assert (= b!3958373 b!3958374))

(assert (= b!3958372 b!3958373))

(assert (= (and b!3957742 ((_ is Cons!42137) (t!329516 suffixTokens!72))) b!3958372))

(declare-fun m!4527297 () Bool)

(assert (=> b!3958374 m!4527297))

(declare-fun m!4527299 () Bool)

(assert (=> b!3958374 m!4527299))

(declare-fun m!4527301 () Bool)

(assert (=> b!3958372 m!4527301))

(declare-fun m!4527303 () Bool)

(assert (=> b!3958373 m!4527303))

(declare-fun b!3958376 () Bool)

(declare-fun e!2450752 () Bool)

(declare-fun tp!1206314 () Bool)

(assert (=> b!3958376 (= e!2450752 (and tp_is_empty!19989 tp!1206314))))

(assert (=> b!3957724 (= tp!1206167 e!2450752)))

(assert (= (and b!3957724 ((_ is Cons!42136) (t!329515 suffixResult!91))) b!3958376))

(declare-fun b_lambda!115803 () Bool)

(assert (= b_lambda!115795 (or (and b!3957739 b_free!109111 (= (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))))) (and b!3957745 b_free!109103) (and b!3958330 b_free!109127 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))))) (and b!3958359 b_free!109131 (= (toChars!8943 (transformation!6604 (h!47558 (t!329517 rules!2768)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))))) (and b!3957731 b_free!109107 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))))) (and b!3958375 b_free!109135 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))))) b_lambda!115803)))

(declare-fun b_lambda!115805 () Bool)

(assert (= b_lambda!115801 (or (and b!3957745 b_free!109103 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 prefixTokens!80)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))))) (and b!3957731 b_free!109107) (and b!3958330 b_free!109127 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 prefixTokens!80))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))))) (and b!3958375 b_free!109135 (= (toChars!8943 (transformation!6604 (rule!9578 (h!47557 (t!329516 suffixTokens!72))))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))))) (and b!3958359 b_free!109131 (= (toChars!8943 (transformation!6604 (h!47558 (t!329517 rules!2768)))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))))) (and b!3957739 b_free!109111 (= (toChars!8943 (transformation!6604 (h!47558 rules!2768))) (toChars!8943 (transformation!6604 (rule!9578 (h!47557 suffixTokens!72)))))) b_lambda!115805)))

(check-sat (not b!3958226) (not b_next!109811) (not b!3957812) (not b!3958275) (not b_lambda!115793) (not b!3958306) (not b!3957815) (not b!3958251) (not b_lambda!115805) (not b!3958282) (not b_next!109807) (not b!3957764) (not b!3958374) (not b!3958262) (not d!1173223) (not b!3958045) (not b_next!109831) (not b!3958178) (not b!3958358) (not b!3957806) (not d!1173095) (not b!3958376) (not b!3958136) (not b!3958092) (not b!3958371) (not b!3957978) (not b!3958268) (not bm!285350) (not b_next!109835) (not b!3958098) (not b!3958189) (not b!3958185) (not d!1173189) (not b_next!109839) (not b!3958187) (not b!3957813) (not b!3958257) (not d!1173257) (not b!3958042) (not b!3958348) (not d!1173197) (not b!3957979) (not b_next!109837) (not b_next!109833) (not b_next!109809) (not b!3958099) (not b!3958312) (not b!3958372) (not b!3958328) (not b!3958103) (not d!1173215) (not b!3958305) b_and!303765 (not d!1173265) (not d!1173287) (not b!3957984) (not d!1173217) (not b!3957985) (not b!3958101) (not b!3958180) b_and!303807 (not tb!238575) (not b!3958179) (not d!1173279) (not d!1173277) (not b!3958047) (not b!3958309) b_and!303763 (not b!3958344) (not b!3958346) (not bm!285359) (not b!3958272) (not d!1173269) (not d!1173107) (not b!3958281) (not b!3958029) (not d!1173229) (not b!3958310) b_and!303795 (not b!3958279) (not b!3958109) (not b!3957774) (not b!3957810) (not b_next!109805) (not d!1173283) (not tb!238545) (not d!1173183) b_and!303809 (not b!3958278) (not b!3958342) (not b!3958364) (not b!3958285) (not b!3957980) (not b!3958307) (not d!1173263) (not b!3958090) (not b!3958274) (not tb!238587) b_and!303793 (not b!3958050) b_and!303767 (not b!3958211) (not d!1173241) (not b!3958094) b_and!303805 (not b!3958270) (not d!1173273) (not b!3958365) (not b!3958316) (not b!3958088) (not b!3958107) (not b!3957982) (not b!3958357) b_and!303799 (not b!3958283) (not b!3958030) (not b!3958314) (not b!3958095) (not d!1173261) (not b!3958304) (not b!3958343) (not b!3958048) (not b_next!109829) (not b!3957977) (not b!3958373) (not b_lambda!115803) (not b!3958135) (not d!1173207) b_and!303801 tp_is_empty!19989 (not d!1173235) (not d!1173159) (not b_lambda!115791) (not b_next!109815) (not b!3958369) (not d!1173195) (not tb!238551) (not b!3958252) (not b!3958327) (not d!1173105) (not b!3958368) (not b!3958370) (not b!3958043) (not d!1173225) (not b!3958367) (not d!1173281) (not b!3958347) b_and!303797 (not b!3957811) (not b!3957981) (not d!1173205) b_and!303803 (not b!3958329) (not b!3958155) (not b_next!109813) (not b!3958311) (not b!3957775) (not b!3958149))
(check-sat (not b_next!109811) (not b_next!109807) (not b_next!109831) b_and!303765 b_and!303807 b_and!303763 b_and!303795 (not b_next!109805) b_and!303809 b_and!303805 b_and!303799 (not b_next!109829) b_and!303801 (not b_next!109815) b_and!303797 (not b_next!109835) (not b_next!109839) (not b_next!109837) (not b_next!109809) (not b_next!109833) b_and!303793 b_and!303767 b_and!303803 (not b_next!109813))
