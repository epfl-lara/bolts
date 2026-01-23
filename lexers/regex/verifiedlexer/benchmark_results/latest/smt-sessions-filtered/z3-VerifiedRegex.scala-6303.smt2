; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316802 () Bool)

(assert start!316802)

(declare-fun b!3395187 () Bool)

(declare-fun b_free!88785 () Bool)

(declare-fun b_next!89489 () Bool)

(assert (=> b!3395187 (= b_free!88785 (not b_next!89489))))

(declare-fun tp!1059723 () Bool)

(declare-fun b_and!236591 () Bool)

(assert (=> b!3395187 (= tp!1059723 b_and!236591)))

(declare-fun b_free!88787 () Bool)

(declare-fun b_next!89491 () Bool)

(assert (=> b!3395187 (= b_free!88787 (not b_next!89491))))

(declare-fun tp!1059717 () Bool)

(declare-fun b_and!236593 () Bool)

(assert (=> b!3395187 (= tp!1059717 b_and!236593)))

(declare-fun b!3395193 () Bool)

(declare-fun b_free!88789 () Bool)

(declare-fun b_next!89493 () Bool)

(assert (=> b!3395193 (= b_free!88789 (not b_next!89493))))

(declare-fun tp!1059725 () Bool)

(declare-fun b_and!236595 () Bool)

(assert (=> b!3395193 (= tp!1059725 b_and!236595)))

(declare-fun b_free!88791 () Bool)

(declare-fun b_next!89495 () Bool)

(assert (=> b!3395193 (= b_free!88791 (not b_next!89495))))

(declare-fun tp!1059727 () Bool)

(declare-fun b_and!236597 () Bool)

(assert (=> b!3395193 (= tp!1059727 b_and!236597)))

(declare-fun b!3395189 () Bool)

(declare-fun b_free!88793 () Bool)

(declare-fun b_next!89497 () Bool)

(assert (=> b!3395189 (= b_free!88793 (not b_next!89497))))

(declare-fun tp!1059721 () Bool)

(declare-fun b_and!236599 () Bool)

(assert (=> b!3395189 (= tp!1059721 b_and!236599)))

(declare-fun b_free!88795 () Bool)

(declare-fun b_next!89499 () Bool)

(assert (=> b!3395189 (= b_free!88795 (not b_next!89499))))

(declare-fun tp!1059720 () Bool)

(declare-fun b_and!236601 () Bool)

(assert (=> b!3395189 (= tp!1059720 b_and!236601)))

(declare-fun e!2107394 () Bool)

(declare-fun e!2107395 () Bool)

(declare-fun b!3395162 () Bool)

(declare-datatypes ((C!20476 0))(
  ( (C!20477 (val!12286 Int)) )
))
(declare-datatypes ((Regex!10145 0))(
  ( (ElementMatch!10145 (c!578776 C!20476)) (Concat!15761 (regOne!20802 Regex!10145) (regTwo!20802 Regex!10145)) (EmptyExpr!10145) (Star!10145 (reg!10474 Regex!10145)) (EmptyLang!10145) (Union!10145 (regOne!20803 Regex!10145) (regTwo!20803 Regex!10145)) )
))
(declare-datatypes ((List!37044 0))(
  ( (Nil!36920) (Cons!36920 (h!42340 (_ BitVec 16)) (t!265153 List!37044)) )
))
(declare-datatypes ((TokenValue!5616 0))(
  ( (FloatLiteralValue!11232 (text!39757 List!37044)) (TokenValueExt!5615 (__x!23449 Int)) (Broken!28080 (value!173935 List!37044)) (Object!5739) (End!5616) (Def!5616) (Underscore!5616) (Match!5616) (Else!5616) (Error!5616) (Case!5616) (If!5616) (Extends!5616) (Abstract!5616) (Class!5616) (Val!5616) (DelimiterValue!11232 (del!5676 List!37044)) (KeywordValue!5622 (value!173936 List!37044)) (CommentValue!11232 (value!173937 List!37044)) (WhitespaceValue!11232 (value!173938 List!37044)) (IndentationValue!5616 (value!173939 List!37044)) (String!41413) (Int32!5616) (Broken!28081 (value!173940 List!37044)) (Boolean!5617) (Unit!52091) (OperatorValue!5619 (op!5676 List!37044)) (IdentifierValue!11232 (value!173941 List!37044)) (IdentifierValue!11233 (value!173942 List!37044)) (WhitespaceValue!11233 (value!173943 List!37044)) (True!11232) (False!11232) (Broken!28082 (value!173944 List!37044)) (Broken!28083 (value!173945 List!37044)) (True!11233) (RightBrace!5616) (RightBracket!5616) (Colon!5616) (Null!5616) (Comma!5616) (LeftBracket!5616) (False!11233) (LeftBrace!5616) (ImaginaryLiteralValue!5616 (text!39758 List!37044)) (StringLiteralValue!16848 (value!173946 List!37044)) (EOFValue!5616 (value!173947 List!37044)) (IdentValue!5616 (value!173948 List!37044)) (DelimiterValue!11233 (value!173949 List!37044)) (DedentValue!5616 (value!173950 List!37044)) (NewLineValue!5616 (value!173951 List!37044)) (IntegerValue!16848 (value!173952 (_ BitVec 32)) (text!39759 List!37044)) (IntegerValue!16849 (value!173953 Int) (text!39760 List!37044)) (Times!5616) (Or!5616) (Equal!5616) (Minus!5616) (Broken!28084 (value!173954 List!37044)) (And!5616) (Div!5616) (LessEqual!5616) (Mod!5616) (Concat!15762) (Not!5616) (Plus!5616) (SpaceValue!5616 (value!173955 List!37044)) (IntegerValue!16850 (value!173956 Int) (text!39761 List!37044)) (StringLiteralValue!16849 (text!39762 List!37044)) (FloatLiteralValue!11233 (text!39763 List!37044)) (BytesLiteralValue!5616 (value!173957 List!37044)) (CommentValue!11233 (value!173958 List!37044)) (StringLiteralValue!16850 (value!173959 List!37044)) (ErrorTokenValue!5616 (msg!5677 List!37044)) )
))
(declare-datatypes ((List!37045 0))(
  ( (Nil!36921) (Cons!36921 (h!42341 C!20476) (t!265154 List!37045)) )
))
(declare-datatypes ((IArray!22299 0))(
  ( (IArray!22300 (innerList!11207 List!37045)) )
))
(declare-datatypes ((Conc!11147 0))(
  ( (Node!11147 (left!28786 Conc!11147) (right!29116 Conc!11147) (csize!22524 Int) (cheight!11358 Int)) (Leaf!17451 (xs!14305 IArray!22299) (csize!22525 Int)) (Empty!11147) )
))
(declare-datatypes ((BalanceConc!21908 0))(
  ( (BalanceConc!21909 (c!578777 Conc!11147)) )
))
(declare-datatypes ((String!41414 0))(
  ( (String!41415 (value!173960 String)) )
))
(declare-datatypes ((TokenValueInjection!10660 0))(
  ( (TokenValueInjection!10661 (toValue!7582 Int) (toChars!7441 Int)) )
))
(declare-datatypes ((Rule!10572 0))(
  ( (Rule!10573 (regex!5386 Regex!10145) (tag!5970 String!41414) (isSeparator!5386 Bool) (transformation!5386 TokenValueInjection!10660)) )
))
(declare-datatypes ((Token!10138 0))(
  ( (Token!10139 (value!173961 TokenValue!5616) (rule!7946 Rule!10572) (size!27952 Int) (originalCharacters!6100 List!37045)) )
))
(declare-datatypes ((List!37046 0))(
  ( (Nil!36922) (Cons!36922 (h!42342 Token!10138) (t!265155 List!37046)) )
))
(declare-fun tokens!494 () List!37046)

(declare-fun tp!1059724 () Bool)

(declare-fun inv!21 (TokenValue!5616) Bool)

(assert (=> b!3395162 (= e!2107394 (and (inv!21 (value!173961 (h!42342 tokens!494))) e!2107395 tp!1059724))))

(declare-fun b!3395163 () Bool)

(declare-fun e!2107398 () Bool)

(declare-fun e!2107403 () Bool)

(assert (=> b!3395163 (= e!2107398 e!2107403)))

(declare-fun res!1373562 () Bool)

(assert (=> b!3395163 (=> (not res!1373562) (not e!2107403))))

(declare-datatypes ((LexerInterface!4975 0))(
  ( (LexerInterfaceExt!4972 (__x!23450 Int)) (Lexer!4973) )
))
(declare-fun thiss!18206 () LexerInterface!4975)

(declare-datatypes ((IArray!22301 0))(
  ( (IArray!22302 (innerList!11208 List!37046)) )
))
(declare-datatypes ((Conc!11148 0))(
  ( (Node!11148 (left!28787 Conc!11148) (right!29117 Conc!11148) (csize!22526 Int) (cheight!11359 Int)) (Leaf!17452 (xs!14306 IArray!22301) (csize!22527 Int)) (Empty!11148) )
))
(declare-datatypes ((BalanceConc!21910 0))(
  ( (BalanceConc!21911 (c!578778 Conc!11148)) )
))
(declare-fun lt!1153984 () BalanceConc!21910)

(declare-datatypes ((List!37047 0))(
  ( (Nil!36923) (Cons!36923 (h!42343 Rule!10572) (t!265156 List!37047)) )
))
(declare-fun rules!2135 () List!37047)

(declare-fun rulesProduceEachTokenIndividually!1426 (LexerInterface!4975 List!37047 BalanceConc!21910) Bool)

(assert (=> b!3395163 (= res!1373562 (rulesProduceEachTokenIndividually!1426 thiss!18206 rules!2135 lt!1153984))))

(declare-fun seqFromList!3825 (List!37046) BalanceConc!21910)

(assert (=> b!3395163 (= lt!1153984 (seqFromList!3825 tokens!494))))

(declare-fun lt!1153986 () List!37045)

(declare-fun b!3395164 () Bool)

(declare-fun e!2107383 () Bool)

(get-info :version)

(declare-datatypes ((tuple2!36544 0))(
  ( (tuple2!36545 (_1!21406 Token!10138) (_2!21406 List!37045)) )
))
(declare-datatypes ((Option!7425 0))(
  ( (None!7424) (Some!7424 (v!36576 tuple2!36544)) )
))
(declare-fun maxPrefix!2547 (LexerInterface!4975 List!37047 List!37045) Option!7425)

(assert (=> b!3395164 (= e!2107383 ((_ is Some!7424) (maxPrefix!2547 thiss!18206 rules!2135 lt!1153986)))))

(declare-fun lt!1153978 () List!37045)

(declare-fun lt!1153982 () List!37045)

(assert (=> b!3395164 (= (maxPrefix!2547 thiss!18206 rules!2135 lt!1153982) (Some!7424 (tuple2!36545 (h!42342 tokens!494) lt!1153978)))))

(declare-fun separatorToken!241 () Token!10138)

(declare-datatypes ((Unit!52092 0))(
  ( (Unit!52093) )
))
(declare-fun lt!1153967 () Unit!52092)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!206 (LexerInterface!4975 List!37047 Token!10138 Rule!10572 List!37045 Rule!10572) Unit!52092)

(assert (=> b!3395164 (= lt!1153967 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!206 thiss!18206 rules!2135 (h!42342 tokens!494) (rule!7946 (h!42342 tokens!494)) lt!1153978 (rule!7946 separatorToken!241)))))

(declare-fun lt!1153985 () C!20476)

(declare-fun contains!6779 (List!37045 C!20476) Bool)

(declare-fun usedCharacters!642 (Regex!10145) List!37045)

(assert (=> b!3395164 (not (contains!6779 (usedCharacters!642 (regex!5386 (rule!7946 (h!42342 tokens!494)))) lt!1153985))))

(declare-fun lt!1153966 () Unit!52092)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!226 (LexerInterface!4975 List!37047 List!37047 Rule!10572 Rule!10572 C!20476) Unit!52092)

(assert (=> b!3395164 (= lt!1153966 (lemmaNonSepRuleNotContainsCharContainedInASepRule!226 thiss!18206 rules!2135 rules!2135 (rule!7946 (h!42342 tokens!494)) (rule!7946 separatorToken!241) lt!1153985))))

(declare-fun b!3395165 () Bool)

(declare-fun res!1373567 () Bool)

(assert (=> b!3395165 (=> (not res!1373567) (not e!2107403))))

(assert (=> b!3395165 (= res!1373567 (and (not ((_ is Nil!36922) tokens!494)) ((_ is Nil!36922) (t!265155 tokens!494))))))

(declare-fun tp!1059719 () Bool)

(declare-fun e!2107396 () Bool)

(declare-fun b!3395166 () Bool)

(declare-fun e!2107405 () Bool)

(declare-fun inv!50012 (String!41414) Bool)

(declare-fun inv!50015 (TokenValueInjection!10660) Bool)

(assert (=> b!3395166 (= e!2107405 (and tp!1059719 (inv!50012 (tag!5970 (rule!7946 separatorToken!241))) (inv!50015 (transformation!5386 (rule!7946 separatorToken!241))) e!2107396))))

(declare-fun b!3395167 () Bool)

(declare-fun e!2107386 () Bool)

(declare-fun lt!1153980 () Rule!10572)

(assert (=> b!3395167 (= e!2107386 (= (rule!7946 (h!42342 tokens!494)) lt!1153980))))

(declare-fun b!3395168 () Bool)

(declare-fun e!2107380 () Bool)

(assert (=> b!3395168 (= e!2107380 e!2107383)))

(declare-fun res!1373556 () Bool)

(assert (=> b!3395168 (=> res!1373556 e!2107383)))

(declare-fun lt!1153970 () Bool)

(assert (=> b!3395168 (= res!1373556 lt!1153970)))

(declare-fun lt!1153971 () Unit!52092)

(declare-fun e!2107408 () Unit!52092)

(assert (=> b!3395168 (= lt!1153971 e!2107408)))

(declare-fun c!578775 () Bool)

(assert (=> b!3395168 (= c!578775 lt!1153970)))

(assert (=> b!3395168 (= lt!1153970 (not (contains!6779 (usedCharacters!642 (regex!5386 (rule!7946 separatorToken!241))) lt!1153985)))))

(declare-fun head!7245 (List!37045) C!20476)

(assert (=> b!3395168 (= lt!1153985 (head!7245 lt!1153978))))

(declare-fun lt!1153989 () List!37045)

(declare-fun lt!1153974 () BalanceConc!21908)

(declare-fun maxPrefixOneRule!1698 (LexerInterface!4975 Rule!10572 List!37045) Option!7425)

(declare-fun apply!8609 (TokenValueInjection!10660 BalanceConc!21908) TokenValue!5616)

(declare-fun size!27953 (List!37045) Int)

(assert (=> b!3395168 (= (maxPrefixOneRule!1698 thiss!18206 (rule!7946 (h!42342 tokens!494)) lt!1153989) (Some!7424 (tuple2!36545 (Token!10139 (apply!8609 (transformation!5386 (rule!7946 (h!42342 tokens!494))) lt!1153974) (rule!7946 (h!42342 tokens!494)) (size!27953 lt!1153989) lt!1153989) Nil!36921)))))

(declare-fun lt!1153981 () Unit!52092)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!797 (LexerInterface!4975 List!37047 List!37045 List!37045 List!37045 Rule!10572) Unit!52092)

(assert (=> b!3395168 (= lt!1153981 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!797 thiss!18206 rules!2135 lt!1153989 lt!1153989 Nil!36921 (rule!7946 (h!42342 tokens!494))))))

(declare-fun e!2107401 () Bool)

(assert (=> b!3395168 e!2107401))

(declare-fun res!1373568 () Bool)

(assert (=> b!3395168 (=> (not res!1373568) (not e!2107401))))

(declare-datatypes ((Option!7426 0))(
  ( (None!7425) (Some!7425 (v!36577 Rule!10572)) )
))
(declare-fun lt!1153979 () Option!7426)

(declare-fun isDefined!5736 (Option!7426) Bool)

(assert (=> b!3395168 (= res!1373568 (isDefined!5736 lt!1153979))))

(declare-fun getRuleFromTag!1041 (LexerInterface!4975 List!37047 String!41414) Option!7426)

(assert (=> b!3395168 (= lt!1153979 (getRuleFromTag!1041 thiss!18206 rules!2135 (tag!5970 (rule!7946 separatorToken!241))))))

(declare-fun lt!1153968 () Unit!52092)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1041 (LexerInterface!4975 List!37047 List!37045 Token!10138) Unit!52092)

(assert (=> b!3395168 (= lt!1153968 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1041 thiss!18206 rules!2135 lt!1153978 separatorToken!241))))

(declare-fun e!2107399 () Bool)

(assert (=> b!3395168 e!2107399))

(declare-fun res!1373566 () Bool)

(assert (=> b!3395168 (=> (not res!1373566) (not e!2107399))))

(declare-fun lt!1153991 () Option!7426)

(assert (=> b!3395168 (= res!1373566 (isDefined!5736 lt!1153991))))

(assert (=> b!3395168 (= lt!1153991 (getRuleFromTag!1041 thiss!18206 rules!2135 (tag!5970 (rule!7946 (h!42342 tokens!494)))))))

(declare-fun lt!1153973 () Unit!52092)

(assert (=> b!3395168 (= lt!1153973 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1041 thiss!18206 rules!2135 lt!1153989 (h!42342 tokens!494)))))

(declare-fun lt!1153977 () Unit!52092)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!970 (LexerInterface!4975 List!37047 List!37046 Token!10138) Unit!52092)

(assert (=> b!3395168 (= lt!1153977 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!970 thiss!18206 rules!2135 tokens!494 (h!42342 tokens!494)))))

(declare-fun isEmpty!21185 (List!37045) Bool)

(declare-fun getSuffix!1480 (List!37045 List!37045) List!37045)

(assert (=> b!3395168 (isEmpty!21185 (getSuffix!1480 lt!1153989 lt!1153989))))

(declare-fun lt!1153975 () Unit!52092)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!138 (List!37045) Unit!52092)

(assert (=> b!3395168 (= lt!1153975 (lemmaGetSuffixOnListWithItSelfIsEmpty!138 lt!1153989))))

(declare-fun b!3395169 () Bool)

(declare-fun e!2107392 () Bool)

(declare-fun e!2107384 () Bool)

(declare-fun tp!1059716 () Bool)

(assert (=> b!3395169 (= e!2107392 (and e!2107384 tp!1059716))))

(declare-fun res!1373561 () Bool)

(assert (=> start!316802 (=> (not res!1373561) (not e!2107398))))

(assert (=> start!316802 (= res!1373561 ((_ is Lexer!4973) thiss!18206))))

(assert (=> start!316802 e!2107398))

(assert (=> start!316802 true))

(assert (=> start!316802 e!2107392))

(declare-fun e!2107393 () Bool)

(declare-fun inv!50016 (Token!10138) Bool)

(assert (=> start!316802 (and (inv!50016 separatorToken!241) e!2107393)))

(declare-fun e!2107400 () Bool)

(assert (=> start!316802 e!2107400))

(declare-fun b!3395170 () Bool)

(declare-fun res!1373552 () Bool)

(assert (=> b!3395170 (=> (not res!1373552) (not e!2107403))))

(declare-fun rulesProduceIndividualToken!2467 (LexerInterface!4975 List!37047 Token!10138) Bool)

(assert (=> b!3395170 (= res!1373552 (rulesProduceIndividualToken!2467 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3395171 () Bool)

(declare-fun tp!1059722 () Bool)

(declare-fun e!2107389 () Bool)

(assert (=> b!3395171 (= e!2107384 (and tp!1059722 (inv!50012 (tag!5970 (h!42343 rules!2135))) (inv!50015 (transformation!5386 (h!42343 rules!2135))) e!2107389))))

(declare-fun b!3395172 () Bool)

(declare-fun res!1373557 () Bool)

(assert (=> b!3395172 (=> (not res!1373557) (not e!2107398))))

(declare-fun isEmpty!21186 (List!37047) Bool)

(assert (=> b!3395172 (= res!1373557 (not (isEmpty!21186 rules!2135)))))

(declare-fun tp!1059726 () Bool)

(declare-fun b!3395173 () Bool)

(declare-fun e!2107382 () Bool)

(assert (=> b!3395173 (= e!2107395 (and tp!1059726 (inv!50012 (tag!5970 (rule!7946 (h!42342 tokens!494)))) (inv!50015 (transformation!5386 (rule!7946 (h!42342 tokens!494)))) e!2107382))))

(declare-fun b!3395174 () Bool)

(declare-fun res!1373550 () Bool)

(assert (=> b!3395174 (=> (not res!1373550) (not e!2107398))))

(declare-fun rulesInvariant!4372 (LexerInterface!4975 List!37047) Bool)

(assert (=> b!3395174 (= res!1373550 (rulesInvariant!4372 thiss!18206 rules!2135))))

(declare-fun b!3395175 () Bool)

(declare-fun res!1373553 () Bool)

(declare-fun e!2107397 () Bool)

(assert (=> b!3395175 (=> res!1373553 e!2107397)))

(assert (=> b!3395175 (= res!1373553 (not (rulesProduceIndividualToken!2467 thiss!18206 rules!2135 (h!42342 tokens!494))))))

(declare-fun b!3395176 () Bool)

(declare-fun e!2107402 () Bool)

(assert (=> b!3395176 (= e!2107403 (not e!2107402))))

(declare-fun res!1373555 () Bool)

(assert (=> b!3395176 (=> res!1373555 e!2107402)))

(declare-fun lt!1153987 () List!37045)

(declare-fun lt!1153969 () List!37045)

(assert (=> b!3395176 (= res!1373555 (not (= lt!1153987 lt!1153969)))))

(declare-fun printList!1523 (LexerInterface!4975 List!37046) List!37045)

(assert (=> b!3395176 (= lt!1153969 (printList!1523 thiss!18206 (Cons!36922 (h!42342 tokens!494) Nil!36922)))))

(declare-fun lt!1153988 () BalanceConc!21908)

(declare-fun list!13373 (BalanceConc!21908) List!37045)

(assert (=> b!3395176 (= lt!1153987 (list!13373 lt!1153988))))

(declare-fun lt!1153992 () BalanceConc!21910)

(declare-fun printTailRec!1470 (LexerInterface!4975 BalanceConc!21910 Int BalanceConc!21908) BalanceConc!21908)

(assert (=> b!3395176 (= lt!1153988 (printTailRec!1470 thiss!18206 lt!1153992 0 (BalanceConc!21909 Empty!11147)))))

(declare-fun print!2040 (LexerInterface!4975 BalanceConc!21910) BalanceConc!21908)

(assert (=> b!3395176 (= lt!1153988 (print!2040 thiss!18206 lt!1153992))))

(declare-fun singletonSeq!2482 (Token!10138) BalanceConc!21910)

(assert (=> b!3395176 (= lt!1153992 (singletonSeq!2482 (h!42342 tokens!494)))))

(declare-fun b!3395177 () Bool)

(declare-fun tp!1059728 () Bool)

(assert (=> b!3395177 (= e!2107400 (and (inv!50016 (h!42342 tokens!494)) e!2107394 tp!1059728))))

(declare-fun b!3395178 () Bool)

(declare-fun e!2107388 () Bool)

(assert (=> b!3395178 (= e!2107388 false)))

(declare-fun b!3395179 () Bool)

(declare-fun Unit!52094 () Unit!52092)

(assert (=> b!3395179 (= e!2107408 Unit!52094)))

(declare-fun lt!1153990 () Unit!52092)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!476 (Regex!10145 List!37045 C!20476) Unit!52092)

(assert (=> b!3395179 (= lt!1153990 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!476 (regex!5386 (rule!7946 separatorToken!241)) lt!1153978 lt!1153985))))

(declare-fun res!1373569 () Bool)

(declare-fun matchR!4737 (Regex!10145 List!37045) Bool)

(assert (=> b!3395179 (= res!1373569 (not (matchR!4737 (regex!5386 (rule!7946 separatorToken!241)) lt!1153978)))))

(assert (=> b!3395179 (=> (not res!1373569) (not e!2107388))))

(assert (=> b!3395179 e!2107388))

(declare-fun b!3395180 () Bool)

(declare-fun e!2107404 () Bool)

(assert (=> b!3395180 (= e!2107401 e!2107404)))

(declare-fun res!1373554 () Bool)

(assert (=> b!3395180 (=> (not res!1373554) (not e!2107404))))

(declare-fun lt!1153972 () Rule!10572)

(assert (=> b!3395180 (= res!1373554 (matchR!4737 (regex!5386 lt!1153972) lt!1153978))))

(declare-fun get!11798 (Option!7426) Rule!10572)

(assert (=> b!3395180 (= lt!1153972 (get!11798 lt!1153979))))

(declare-fun b!3395181 () Bool)

(assert (=> b!3395181 (= e!2107399 e!2107386)))

(declare-fun res!1373560 () Bool)

(assert (=> b!3395181 (=> (not res!1373560) (not e!2107386))))

(assert (=> b!3395181 (= res!1373560 (matchR!4737 (regex!5386 lt!1153980) lt!1153989))))

(assert (=> b!3395181 (= lt!1153980 (get!11798 lt!1153991))))

(declare-fun b!3395182 () Bool)

(declare-fun e!2107385 () Bool)

(assert (=> b!3395182 (= e!2107397 e!2107385)))

(declare-fun res!1373558 () Bool)

(assert (=> b!3395182 (=> res!1373558 e!2107385)))

(declare-fun isEmpty!21187 (BalanceConc!21910) Bool)

(declare-datatypes ((tuple2!36546 0))(
  ( (tuple2!36547 (_1!21407 BalanceConc!21910) (_2!21407 BalanceConc!21908)) )
))
(declare-fun lex!2301 (LexerInterface!4975 List!37047 BalanceConc!21908) tuple2!36546)

(assert (=> b!3395182 (= res!1373558 (isEmpty!21187 (_1!21407 (lex!2301 thiss!18206 rules!2135 lt!1153974))))))

(declare-fun seqFromList!3826 (List!37045) BalanceConc!21908)

(assert (=> b!3395182 (= lt!1153974 (seqFromList!3826 lt!1153989))))

(declare-fun b!3395183 () Bool)

(assert (=> b!3395183 (= e!2107404 (= (rule!7946 separatorToken!241) lt!1153972))))

(declare-fun b!3395184 () Bool)

(declare-fun tp!1059718 () Bool)

(assert (=> b!3395184 (= e!2107393 (and (inv!21 (value!173961 separatorToken!241)) e!2107405 tp!1059718))))

(declare-fun b!3395185 () Bool)

(declare-fun res!1373564 () Bool)

(assert (=> b!3395185 (=> (not res!1373564) (not e!2107403))))

(assert (=> b!3395185 (= res!1373564 (isSeparator!5386 (rule!7946 separatorToken!241)))))

(declare-fun b!3395186 () Bool)

(declare-fun res!1373551 () Bool)

(assert (=> b!3395186 (=> (not res!1373551) (not e!2107403))))

(declare-fun sepAndNonSepRulesDisjointChars!1580 (List!37047 List!37047) Bool)

(assert (=> b!3395186 (= res!1373551 (sepAndNonSepRulesDisjointChars!1580 rules!2135 rules!2135))))

(assert (=> b!3395187 (= e!2107382 (and tp!1059723 tp!1059717))))

(declare-fun b!3395188 () Bool)

(declare-fun e!2107407 () Bool)

(assert (=> b!3395188 (= e!2107385 e!2107407)))

(declare-fun res!1373570 () Bool)

(assert (=> b!3395188 (=> res!1373570 e!2107407)))

(assert (=> b!3395188 (= res!1373570 (isSeparator!5386 (rule!7946 (h!42342 tokens!494))))))

(declare-fun lt!1153983 () Unit!52092)

(declare-fun lambda!120743 () Int)

(declare-fun forallContained!1333 (List!37046 Int Token!10138) Unit!52092)

(assert (=> b!3395188 (= lt!1153983 (forallContained!1333 tokens!494 lambda!120743 (h!42342 tokens!494)))))

(assert (=> b!3395189 (= e!2107389 (and tp!1059721 tp!1059720))))

(declare-fun b!3395190 () Bool)

(assert (=> b!3395190 (= e!2107407 e!2107380)))

(declare-fun res!1373563 () Bool)

(assert (=> b!3395190 (=> res!1373563 e!2107380)))

(assert (=> b!3395190 (= res!1373563 (not (= lt!1153986 lt!1153982)))))

(declare-fun ++!9041 (List!37045 List!37045) List!37045)

(assert (=> b!3395190 (= lt!1153982 (++!9041 lt!1153989 lt!1153978))))

(declare-fun lt!1153976 () BalanceConc!21908)

(assert (=> b!3395190 (= lt!1153986 (list!13373 lt!1153976))))

(declare-fun charsOf!3400 (Token!10138) BalanceConc!21908)

(assert (=> b!3395190 (= lt!1153978 (list!13373 (charsOf!3400 separatorToken!241)))))

(declare-fun printWithSeparatorToken!166 (LexerInterface!4975 BalanceConc!21910 Token!10138) BalanceConc!21908)

(assert (=> b!3395190 (= lt!1153976 (printWithSeparatorToken!166 thiss!18206 lt!1153984 separatorToken!241))))

(declare-fun b!3395191 () Bool)

(declare-fun Unit!52095 () Unit!52092)

(assert (=> b!3395191 (= e!2107408 Unit!52095)))

(declare-fun b!3395192 () Bool)

(declare-fun res!1373559 () Bool)

(assert (=> b!3395192 (=> (not res!1373559) (not e!2107403))))

(declare-fun forall!7793 (List!37046 Int) Bool)

(assert (=> b!3395192 (= res!1373559 (forall!7793 tokens!494 lambda!120743))))

(assert (=> b!3395193 (= e!2107396 (and tp!1059725 tp!1059727))))

(declare-fun b!3395194 () Bool)

(assert (=> b!3395194 (= e!2107402 e!2107397)))

(declare-fun res!1373565 () Bool)

(assert (=> b!3395194 (=> res!1373565 e!2107397)))

(assert (=> b!3395194 (= res!1373565 (or (not (= lt!1153969 lt!1153989)) (not (= lt!1153987 lt!1153989))))))

(assert (=> b!3395194 (= lt!1153989 (list!13373 (charsOf!3400 (h!42342 tokens!494))))))

(assert (= (and start!316802 res!1373561) b!3395172))

(assert (= (and b!3395172 res!1373557) b!3395174))

(assert (= (and b!3395174 res!1373550) b!3395163))

(assert (= (and b!3395163 res!1373562) b!3395170))

(assert (= (and b!3395170 res!1373552) b!3395185))

(assert (= (and b!3395185 res!1373564) b!3395192))

(assert (= (and b!3395192 res!1373559) b!3395186))

(assert (= (and b!3395186 res!1373551) b!3395165))

(assert (= (and b!3395165 res!1373567) b!3395176))

(assert (= (and b!3395176 (not res!1373555)) b!3395194))

(assert (= (and b!3395194 (not res!1373565)) b!3395175))

(assert (= (and b!3395175 (not res!1373553)) b!3395182))

(assert (= (and b!3395182 (not res!1373558)) b!3395188))

(assert (= (and b!3395188 (not res!1373570)) b!3395190))

(assert (= (and b!3395190 (not res!1373563)) b!3395168))

(assert (= (and b!3395168 res!1373566) b!3395181))

(assert (= (and b!3395181 res!1373560) b!3395167))

(assert (= (and b!3395168 res!1373568) b!3395180))

(assert (= (and b!3395180 res!1373554) b!3395183))

(assert (= (and b!3395168 c!578775) b!3395179))

(assert (= (and b!3395168 (not c!578775)) b!3395191))

(assert (= (and b!3395179 res!1373569) b!3395178))

(assert (= (and b!3395168 (not res!1373556)) b!3395164))

(assert (= b!3395171 b!3395189))

(assert (= b!3395169 b!3395171))

(assert (= (and start!316802 ((_ is Cons!36923) rules!2135)) b!3395169))

(assert (= b!3395166 b!3395193))

(assert (= b!3395184 b!3395166))

(assert (= start!316802 b!3395184))

(assert (= b!3395173 b!3395187))

(assert (= b!3395162 b!3395173))

(assert (= b!3395177 b!3395162))

(assert (= (and start!316802 ((_ is Cons!36922) tokens!494)) b!3395177))

(declare-fun m!3764959 () Bool)

(assert (=> b!3395181 m!3764959))

(declare-fun m!3764961 () Bool)

(assert (=> b!3395181 m!3764961))

(declare-fun m!3764963 () Bool)

(assert (=> b!3395190 m!3764963))

(declare-fun m!3764965 () Bool)

(assert (=> b!3395190 m!3764965))

(declare-fun m!3764967 () Bool)

(assert (=> b!3395190 m!3764967))

(declare-fun m!3764969 () Bool)

(assert (=> b!3395190 m!3764969))

(assert (=> b!3395190 m!3764963))

(declare-fun m!3764971 () Bool)

(assert (=> b!3395190 m!3764971))

(declare-fun m!3764973 () Bool)

(assert (=> b!3395184 m!3764973))

(declare-fun m!3764975 () Bool)

(assert (=> b!3395163 m!3764975))

(declare-fun m!3764977 () Bool)

(assert (=> b!3395163 m!3764977))

(declare-fun m!3764979 () Bool)

(assert (=> b!3395171 m!3764979))

(declare-fun m!3764981 () Bool)

(assert (=> b!3395171 m!3764981))

(declare-fun m!3764983 () Bool)

(assert (=> b!3395180 m!3764983))

(declare-fun m!3764985 () Bool)

(assert (=> b!3395180 m!3764985))

(declare-fun m!3764987 () Bool)

(assert (=> b!3395173 m!3764987))

(declare-fun m!3764989 () Bool)

(assert (=> b!3395173 m!3764989))

(declare-fun m!3764991 () Bool)

(assert (=> b!3395162 m!3764991))

(declare-fun m!3764993 () Bool)

(assert (=> b!3395179 m!3764993))

(declare-fun m!3764995 () Bool)

(assert (=> b!3395179 m!3764995))

(declare-fun m!3764997 () Bool)

(assert (=> b!3395166 m!3764997))

(declare-fun m!3764999 () Bool)

(assert (=> b!3395166 m!3764999))

(declare-fun m!3765001 () Bool)

(assert (=> b!3395174 m!3765001))

(declare-fun m!3765003 () Bool)

(assert (=> b!3395182 m!3765003))

(declare-fun m!3765005 () Bool)

(assert (=> b!3395182 m!3765005))

(declare-fun m!3765007 () Bool)

(assert (=> b!3395182 m!3765007))

(declare-fun m!3765009 () Bool)

(assert (=> b!3395186 m!3765009))

(declare-fun m!3765011 () Bool)

(assert (=> b!3395177 m!3765011))

(declare-fun m!3765013 () Bool)

(assert (=> start!316802 m!3765013))

(declare-fun m!3765015 () Bool)

(assert (=> b!3395175 m!3765015))

(declare-fun m!3765017 () Bool)

(assert (=> b!3395188 m!3765017))

(declare-fun m!3765019 () Bool)

(assert (=> b!3395164 m!3765019))

(declare-fun m!3765021 () Bool)

(assert (=> b!3395164 m!3765021))

(declare-fun m!3765023 () Bool)

(assert (=> b!3395164 m!3765023))

(declare-fun m!3765025 () Bool)

(assert (=> b!3395164 m!3765025))

(declare-fun m!3765027 () Bool)

(assert (=> b!3395164 m!3765027))

(declare-fun m!3765029 () Bool)

(assert (=> b!3395164 m!3765029))

(assert (=> b!3395164 m!3765021))

(declare-fun m!3765031 () Bool)

(assert (=> b!3395192 m!3765031))

(declare-fun m!3765033 () Bool)

(assert (=> b!3395170 m!3765033))

(declare-fun m!3765035 () Bool)

(assert (=> b!3395172 m!3765035))

(declare-fun m!3765037 () Bool)

(assert (=> b!3395194 m!3765037))

(assert (=> b!3395194 m!3765037))

(declare-fun m!3765039 () Bool)

(assert (=> b!3395194 m!3765039))

(declare-fun m!3765041 () Bool)

(assert (=> b!3395168 m!3765041))

(declare-fun m!3765043 () Bool)

(assert (=> b!3395168 m!3765043))

(assert (=> b!3395168 m!3765043))

(declare-fun m!3765045 () Bool)

(assert (=> b!3395168 m!3765045))

(declare-fun m!3765047 () Bool)

(assert (=> b!3395168 m!3765047))

(declare-fun m!3765049 () Bool)

(assert (=> b!3395168 m!3765049))

(declare-fun m!3765051 () Bool)

(assert (=> b!3395168 m!3765051))

(declare-fun m!3765053 () Bool)

(assert (=> b!3395168 m!3765053))

(declare-fun m!3765055 () Bool)

(assert (=> b!3395168 m!3765055))

(declare-fun m!3765057 () Bool)

(assert (=> b!3395168 m!3765057))

(declare-fun m!3765059 () Bool)

(assert (=> b!3395168 m!3765059))

(assert (=> b!3395168 m!3765057))

(declare-fun m!3765061 () Bool)

(assert (=> b!3395168 m!3765061))

(declare-fun m!3765063 () Bool)

(assert (=> b!3395168 m!3765063))

(declare-fun m!3765065 () Bool)

(assert (=> b!3395168 m!3765065))

(declare-fun m!3765067 () Bool)

(assert (=> b!3395168 m!3765067))

(declare-fun m!3765069 () Bool)

(assert (=> b!3395168 m!3765069))

(declare-fun m!3765071 () Bool)

(assert (=> b!3395168 m!3765071))

(declare-fun m!3765073 () Bool)

(assert (=> b!3395168 m!3765073))

(declare-fun m!3765075 () Bool)

(assert (=> b!3395176 m!3765075))

(declare-fun m!3765077 () Bool)

(assert (=> b!3395176 m!3765077))

(declare-fun m!3765079 () Bool)

(assert (=> b!3395176 m!3765079))

(declare-fun m!3765081 () Bool)

(assert (=> b!3395176 m!3765081))

(declare-fun m!3765083 () Bool)

(assert (=> b!3395176 m!3765083))

(check-sat (not b_next!89489) (not b_next!89495) b_and!236601 (not b!3395171) b_and!236597 (not b!3395177) (not b_next!89499) (not b!3395190) (not b!3395168) (not b!3395164) (not b!3395194) (not b!3395172) (not b!3395169) (not b_next!89493) (not b!3395166) (not b!3395162) (not b!3395181) (not b_next!89497) (not b!3395163) (not b_next!89491) (not b!3395186) (not b!3395174) b_and!236591 (not b!3395184) (not b!3395176) (not b!3395192) (not b!3395179) b_and!236595 b_and!236599 (not b!3395188) (not b!3395182) (not b!3395180) (not start!316802) (not b!3395175) b_and!236593 (not b!3395170) (not b!3395173))
(check-sat b_and!236591 (not b_next!89489) (not b_next!89495) b_and!236601 b_and!236597 (not b_next!89499) b_and!236595 (not b_next!89493) b_and!236599 b_and!236593 (not b_next!89497) (not b_next!89491))
