; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378176 () Bool)

(assert start!378176)

(declare-fun b!4015378 () Bool)

(declare-fun b_free!111681 () Bool)

(declare-fun b_next!112385 () Bool)

(assert (=> b!4015378 (= b_free!111681 (not b_next!112385))))

(declare-fun tp!1221020 () Bool)

(declare-fun b_and!308503 () Bool)

(assert (=> b!4015378 (= tp!1221020 b_and!308503)))

(declare-fun b_free!111683 () Bool)

(declare-fun b_next!112387 () Bool)

(assert (=> b!4015378 (= b_free!111683 (not b_next!112387))))

(declare-fun tp!1221015 () Bool)

(declare-fun b_and!308505 () Bool)

(assert (=> b!4015378 (= tp!1221015 b_and!308505)))

(declare-fun b!4015385 () Bool)

(declare-fun b_free!111685 () Bool)

(declare-fun b_next!112389 () Bool)

(assert (=> b!4015385 (= b_free!111685 (not b_next!112389))))

(declare-fun tp!1221009 () Bool)

(declare-fun b_and!308507 () Bool)

(assert (=> b!4015385 (= tp!1221009 b_and!308507)))

(declare-fun b_free!111687 () Bool)

(declare-fun b_next!112391 () Bool)

(assert (=> b!4015385 (= b_free!111687 (not b_next!112391))))

(declare-fun tp!1221018 () Bool)

(declare-fun b_and!308509 () Bool)

(assert (=> b!4015385 (= tp!1221018 b_and!308509)))

(declare-fun b!4015351 () Bool)

(declare-fun res!1632775 () Bool)

(declare-fun e!2490372 () Bool)

(assert (=> b!4015351 (=> (not res!1632775) (not e!2490372))))

(declare-datatypes ((C!23676 0))(
  ( (C!23677 (val!13932 Int)) )
))
(declare-datatypes ((List!43090 0))(
  ( (Nil!42966) (Cons!42966 (h!48386 C!23676) (t!333327 List!43090)) )
))
(declare-datatypes ((IArray!26107 0))(
  ( (IArray!26108 (innerList!13111 List!43090)) )
))
(declare-datatypes ((Conc!13051 0))(
  ( (Node!13051 (left!32405 Conc!13051) (right!32735 Conc!13051) (csize!26332 Int) (cheight!13262 Int)) (Leaf!20178 (xs!16357 IArray!26107) (csize!26333 Int)) (Empty!13051) )
))
(declare-datatypes ((BalanceConc!25696 0))(
  ( (BalanceConc!25697 (c!694180 Conc!13051)) )
))
(declare-datatypes ((List!43091 0))(
  ( (Nil!42967) (Cons!42967 (h!48387 (_ BitVec 16)) (t!333328 List!43091)) )
))
(declare-datatypes ((TokenValue!7070 0))(
  ( (FloatLiteralValue!14140 (text!49935 List!43091)) (TokenValueExt!7069 (__x!26357 Int)) (Broken!35350 (value!215548 List!43091)) (Object!7193) (End!7070) (Def!7070) (Underscore!7070) (Match!7070) (Else!7070) (Error!7070) (Case!7070) (If!7070) (Extends!7070) (Abstract!7070) (Class!7070) (Val!7070) (DelimiterValue!14140 (del!7130 List!43091)) (KeywordValue!7076 (value!215549 List!43091)) (CommentValue!14140 (value!215550 List!43091)) (WhitespaceValue!14140 (value!215551 List!43091)) (IndentationValue!7070 (value!215552 List!43091)) (String!49067) (Int32!7070) (Broken!35351 (value!215553 List!43091)) (Boolean!7071) (Unit!62015) (OperatorValue!7073 (op!7130 List!43091)) (IdentifierValue!14140 (value!215554 List!43091)) (IdentifierValue!14141 (value!215555 List!43091)) (WhitespaceValue!14141 (value!215556 List!43091)) (True!14140) (False!14140) (Broken!35352 (value!215557 List!43091)) (Broken!35353 (value!215558 List!43091)) (True!14141) (RightBrace!7070) (RightBracket!7070) (Colon!7070) (Null!7070) (Comma!7070) (LeftBracket!7070) (False!14141) (LeftBrace!7070) (ImaginaryLiteralValue!7070 (text!49936 List!43091)) (StringLiteralValue!21210 (value!215559 List!43091)) (EOFValue!7070 (value!215560 List!43091)) (IdentValue!7070 (value!215561 List!43091)) (DelimiterValue!14141 (value!215562 List!43091)) (DedentValue!7070 (value!215563 List!43091)) (NewLineValue!7070 (value!215564 List!43091)) (IntegerValue!21210 (value!215565 (_ BitVec 32)) (text!49937 List!43091)) (IntegerValue!21211 (value!215566 Int) (text!49938 List!43091)) (Times!7070) (Or!7070) (Equal!7070) (Minus!7070) (Broken!35354 (value!215567 List!43091)) (And!7070) (Div!7070) (LessEqual!7070) (Mod!7070) (Concat!18815) (Not!7070) (Plus!7070) (SpaceValue!7070 (value!215568 List!43091)) (IntegerValue!21212 (value!215569 Int) (text!49939 List!43091)) (StringLiteralValue!21211 (text!49940 List!43091)) (FloatLiteralValue!14141 (text!49941 List!43091)) (BytesLiteralValue!7070 (value!215570 List!43091)) (CommentValue!14141 (value!215571 List!43091)) (StringLiteralValue!21212 (value!215572 List!43091)) (ErrorTokenValue!7070 (msg!7131 List!43091)) )
))
(declare-datatypes ((String!49068 0))(
  ( (String!49069 (value!215573 String)) )
))
(declare-datatypes ((Regex!11745 0))(
  ( (ElementMatch!11745 (c!694181 C!23676)) (Concat!18816 (regOne!24002 Regex!11745) (regTwo!24002 Regex!11745)) (EmptyExpr!11745) (Star!11745 (reg!12074 Regex!11745)) (EmptyLang!11745) (Union!11745 (regOne!24003 Regex!11745) (regTwo!24003 Regex!11745)) )
))
(declare-datatypes ((TokenValueInjection!13568 0))(
  ( (TokenValueInjection!13569 (toValue!9348 Int) (toChars!9207 Int)) )
))
(declare-datatypes ((Rule!13480 0))(
  ( (Rule!13481 (regex!6840 Regex!11745) (tag!7700 String!49068) (isSeparator!6840 Bool) (transformation!6840 TokenValueInjection!13568)) )
))
(declare-datatypes ((List!43092 0))(
  ( (Nil!42968) (Cons!42968 (h!48388 Rule!13480) (t!333329 List!43092)) )
))
(declare-fun rules!2999 () List!43092)

(declare-fun isEmpty!25664 (List!43092) Bool)

(assert (=> b!4015351 (= res!1632775 (not (isEmpty!25664 rules!2999)))))

(declare-fun b!4015352 () Bool)

(declare-fun e!2490373 () Bool)

(declare-fun e!2490362 () Bool)

(assert (=> b!4015352 (= e!2490373 e!2490362)))

(declare-fun res!1632763 () Bool)

(assert (=> b!4015352 (=> res!1632763 e!2490362)))

(declare-datatypes ((Token!12818 0))(
  ( (Token!12819 (value!215574 TokenValue!7070) (rule!9888 Rule!13480) (size!32127 Int) (originalCharacters!7440 List!43090)) )
))
(declare-datatypes ((tuple2!42110 0))(
  ( (tuple2!42111 (_1!24189 Token!12818) (_2!24189 List!43090)) )
))
(declare-datatypes ((Option!9254 0))(
  ( (None!9253) (Some!9253 (v!39623 tuple2!42110)) )
))
(declare-fun lt!1423099 () Option!9254)

(get-info :version)

(assert (=> b!4015352 (= res!1632763 (not ((_ is Some!9253) lt!1423099)))))

(declare-fun lt!1423122 () List!43090)

(declare-datatypes ((LexerInterface!6429 0))(
  ( (LexerInterfaceExt!6426 (__x!26358 Int)) (Lexer!6427) )
))
(declare-fun thiss!21717 () LexerInterface!6429)

(declare-fun maxPrefix!3727 (LexerInterface!6429 List!43092 List!43090) Option!9254)

(assert (=> b!4015352 (= lt!1423099 (maxPrefix!3727 thiss!21717 rules!2999 lt!1423122))))

(declare-fun suffixResult!105 () List!43090)

(declare-fun lt!1423116 () Token!12818)

(declare-fun lt!1423120 () tuple2!42110)

(declare-fun lt!1423104 () List!43090)

(assert (=> b!4015352 (and (= suffixResult!105 lt!1423104) (= lt!1423120 (tuple2!42111 lt!1423116 lt!1423104)))))

(declare-datatypes ((Unit!62016 0))(
  ( (Unit!62017) )
))
(declare-fun lt!1423101 () Unit!62016)

(declare-fun lt!1423097 () List!43090)

(declare-fun lt!1423134 () List!43090)

(declare-fun lemmaSamePrefixThenSameSuffix!2098 (List!43090 List!43090 List!43090 List!43090 List!43090) Unit!62016)

(assert (=> b!4015352 (= lt!1423101 (lemmaSamePrefixThenSameSuffix!2098 lt!1423134 suffixResult!105 lt!1423134 lt!1423104 lt!1423097))))

(declare-fun lt!1423138 () List!43090)

(declare-fun isPrefix!3927 (List!43090 List!43090) Bool)

(assert (=> b!4015352 (isPrefix!3927 lt!1423134 lt!1423138)))

(declare-fun lt!1423110 () Unit!62016)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2768 (List!43090 List!43090) Unit!62016)

(assert (=> b!4015352 (= lt!1423110 (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423134 lt!1423104))))

(declare-fun b!4015353 () Bool)

(declare-fun e!2490382 () Bool)

(declare-fun tp_is_empty!20461 () Bool)

(declare-fun tp!1221010 () Bool)

(assert (=> b!4015353 (= e!2490382 (and tp_is_empty!20461 tp!1221010))))

(declare-fun b!4015354 () Bool)

(declare-fun e!2490358 () Bool)

(declare-fun e!2490360 () Bool)

(assert (=> b!4015354 (= e!2490358 e!2490360)))

(declare-fun res!1632749 () Bool)

(assert (=> b!4015354 (=> res!1632749 e!2490360)))

(assert (=> b!4015354 (= res!1632749 (not (isPrefix!3927 lt!1423134 lt!1423097)))))

(declare-fun prefix!494 () List!43090)

(assert (=> b!4015354 (isPrefix!3927 prefix!494 lt!1423097)))

(declare-fun lt!1423115 () Unit!62016)

(declare-fun suffix!1299 () List!43090)

(assert (=> b!4015354 (= lt!1423115 (lemmaConcatTwoListThenFirstIsPrefix!2768 prefix!494 suffix!1299))))

(declare-fun lt!1423102 () List!43090)

(assert (=> b!4015354 (isPrefix!3927 lt!1423134 lt!1423102)))

(declare-fun lt!1423145 () Unit!62016)

(assert (=> b!4015354 (= lt!1423145 (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423134 suffixResult!105))))

(declare-fun b!4015355 () Bool)

(declare-fun res!1632770 () Bool)

(assert (=> b!4015355 (=> (not res!1632770) (not e!2490372))))

(declare-fun newSuffix!27 () List!43090)

(assert (=> b!4015355 (= res!1632770 (isPrefix!3927 newSuffix!27 suffix!1299))))

(declare-fun b!4015356 () Bool)

(declare-fun e!2490378 () Bool)

(assert (=> b!4015356 (= e!2490378 e!2490373)))

(declare-fun res!1632769 () Bool)

(assert (=> b!4015356 (=> res!1632769 e!2490373)))

(assert (=> b!4015356 (= res!1632769 (not (= lt!1423138 lt!1423097)))))

(declare-fun ++!11242 (List!43090 List!43090) List!43090)

(assert (=> b!4015356 (= lt!1423138 (++!11242 lt!1423134 lt!1423104))))

(declare-fun getSuffix!2352 (List!43090 List!43090) List!43090)

(assert (=> b!4015356 (= lt!1423104 (getSuffix!2352 lt!1423097 lt!1423134))))

(declare-fun e!2490366 () Bool)

(assert (=> b!4015356 e!2490366))

(declare-fun res!1632771 () Bool)

(assert (=> b!4015356 (=> (not res!1632771) (not e!2490366))))

(assert (=> b!4015356 (= res!1632771 (isPrefix!3927 lt!1423097 lt!1423097))))

(declare-fun lt!1423098 () Unit!62016)

(declare-fun lemmaIsPrefixRefl!2503 (List!43090 List!43090) Unit!62016)

(assert (=> b!4015356 (= lt!1423098 (lemmaIsPrefixRefl!2503 lt!1423097 lt!1423097))))

(declare-fun b!4015357 () Bool)

(declare-fun e!2490368 () Bool)

(assert (=> b!4015357 (= e!2490368 (not e!2490358))))

(declare-fun res!1632772 () Bool)

(assert (=> b!4015357 (=> res!1632772 e!2490358)))

(assert (=> b!4015357 (= res!1632772 (not (= lt!1423102 lt!1423097)))))

(assert (=> b!4015357 (= lt!1423102 (++!11242 lt!1423134 suffixResult!105))))

(declare-fun lt!1423095 () Unit!62016)

(declare-fun token!484 () Token!12818)

(declare-fun lemmaInv!1055 (TokenValueInjection!13568) Unit!62016)

(assert (=> b!4015357 (= lt!1423095 (lemmaInv!1055 (transformation!6840 (rule!9888 token!484))))))

(declare-fun ruleValid!2772 (LexerInterface!6429 Rule!13480) Bool)

(assert (=> b!4015357 (ruleValid!2772 thiss!21717 (rule!9888 token!484))))

(declare-fun lt!1423143 () Unit!62016)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1846 (LexerInterface!6429 Rule!13480 List!43092) Unit!62016)

(assert (=> b!4015357 (= lt!1423143 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1846 thiss!21717 (rule!9888 token!484) rules!2999))))

(declare-fun b!4015358 () Bool)

(declare-fun e!2490379 () Bool)

(declare-fun tp!1221019 () Bool)

(assert (=> b!4015358 (= e!2490379 (and tp_is_empty!20461 tp!1221019))))

(declare-fun b!4015359 () Bool)

(declare-fun e!2490355 () Bool)

(declare-fun contains!8542 (List!43092 Rule!13480) Bool)

(assert (=> b!4015359 (= e!2490355 (contains!8542 rules!2999 (rule!9888 token!484)))))

(declare-fun b!4015360 () Bool)

(declare-fun e!2490380 () Bool)

(assert (=> b!4015360 (= e!2490362 e!2490380)))

(declare-fun res!1632765 () Bool)

(assert (=> b!4015360 (=> res!1632765 e!2490380)))

(declare-fun lt!1423107 () Option!9254)

(assert (=> b!4015360 (= res!1632765 (not (= lt!1423107 (Some!9253 (v!39623 lt!1423099)))))))

(declare-fun lt!1423128 () List!43090)

(declare-fun newSuffixResult!27 () List!43090)

(assert (=> b!4015360 (isPrefix!3927 lt!1423128 (++!11242 lt!1423128 newSuffixResult!27))))

(declare-fun lt!1423100 () Unit!62016)

(assert (=> b!4015360 (= lt!1423100 (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423128 newSuffixResult!27))))

(declare-fun lt!1423119 () List!43090)

(assert (=> b!4015360 (isPrefix!3927 lt!1423128 lt!1423119)))

(assert (=> b!4015360 (= lt!1423119 (++!11242 lt!1423128 (_2!24189 (v!39623 lt!1423099))))))

(declare-fun lt!1423137 () Unit!62016)

(assert (=> b!4015360 (= lt!1423137 (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423128 (_2!24189 (v!39623 lt!1423099))))))

(declare-fun lt!1423144 () TokenValue!7070)

(declare-fun lt!1423136 () Int)

(assert (=> b!4015360 (= lt!1423107 (Some!9253 (tuple2!42111 (Token!12819 lt!1423144 (rule!9888 (_1!24189 (v!39623 lt!1423099))) lt!1423136 lt!1423128) (_2!24189 (v!39623 lt!1423099)))))))

(declare-fun maxPrefixOneRule!2747 (LexerInterface!6429 Rule!13480 List!43090) Option!9254)

(assert (=> b!4015360 (= lt!1423107 (maxPrefixOneRule!2747 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))) lt!1423122))))

(declare-fun size!32128 (List!43090) Int)

(assert (=> b!4015360 (= lt!1423136 (size!32128 lt!1423128))))

(declare-fun apply!10037 (TokenValueInjection!13568 BalanceConc!25696) TokenValue!7070)

(declare-fun seqFromList!5065 (List!43090) BalanceConc!25696)

(assert (=> b!4015360 (= lt!1423144 (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (seqFromList!5065 lt!1423128)))))

(declare-fun lt!1423105 () Unit!62016)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1565 (LexerInterface!6429 List!43092 List!43090 List!43090 List!43090 Rule!13480) Unit!62016)

(assert (=> b!4015360 (= lt!1423105 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1565 thiss!21717 rules!2999 lt!1423128 lt!1423122 (_2!24189 (v!39623 lt!1423099)) (rule!9888 (_1!24189 (v!39623 lt!1423099)))))))

(declare-fun list!15972 (BalanceConc!25696) List!43090)

(declare-fun charsOf!4656 (Token!12818) BalanceConc!25696)

(assert (=> b!4015360 (= lt!1423128 (list!15972 (charsOf!4656 (_1!24189 (v!39623 lt!1423099)))))))

(declare-fun lt!1423091 () Unit!62016)

(assert (=> b!4015360 (= lt!1423091 (lemmaInv!1055 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))))))

(assert (=> b!4015360 (ruleValid!2772 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))))))

(declare-fun lt!1423142 () Unit!62016)

(assert (=> b!4015360 (= lt!1423142 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1846 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))) rules!2999))))

(declare-fun lt!1423125 () Unit!62016)

(declare-fun lemmaCharactersSize!1399 (Token!12818) Unit!62016)

(assert (=> b!4015360 (= lt!1423125 (lemmaCharactersSize!1399 token!484))))

(declare-fun lt!1423133 () Unit!62016)

(assert (=> b!4015360 (= lt!1423133 (lemmaCharactersSize!1399 (_1!24189 (v!39623 lt!1423099))))))

(declare-fun b!4015361 () Bool)

(declare-fun e!2490371 () Bool)

(declare-fun e!2490357 () Bool)

(assert (=> b!4015361 (= e!2490371 e!2490357)))

(declare-fun res!1632750 () Bool)

(assert (=> b!4015361 (=> res!1632750 e!2490357)))

(declare-fun lt!1423118 () List!43090)

(assert (=> b!4015361 (= res!1632750 (not (= lt!1423118 lt!1423122)))))

(declare-fun lt!1423121 () List!43090)

(assert (=> b!4015361 (= lt!1423118 (++!11242 lt!1423128 lt!1423121))))

(assert (=> b!4015361 (= lt!1423121 (getSuffix!2352 lt!1423122 lt!1423128))))

(declare-fun b!4015362 () Bool)

(declare-fun e!2490376 () Bool)

(assert (=> b!4015362 (= e!2490376 e!2490371)))

(declare-fun res!1632754 () Bool)

(assert (=> b!4015362 (=> res!1632754 e!2490371)))

(assert (=> b!4015362 (= res!1632754 (not (isPrefix!3927 lt!1423128 lt!1423097)))))

(declare-fun lt!1423135 () List!43090)

(assert (=> b!4015362 (isPrefix!3927 lt!1423128 lt!1423135)))

(declare-fun lt!1423139 () Unit!62016)

(declare-fun lt!1423096 () List!43090)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!740 (List!43090 List!43090 List!43090) Unit!62016)

(assert (=> b!4015362 (= lt!1423139 (lemmaPrefixStaysPrefixWhenAddingToSuffix!740 lt!1423128 lt!1423122 lt!1423096))))

(declare-fun b!4015363 () Bool)

(declare-fun e!2490353 () Bool)

(assert (=> b!4015363 (= e!2490360 e!2490353)))

(declare-fun res!1632764 () Bool)

(assert (=> b!4015363 (=> res!1632764 e!2490353)))

(declare-fun lt!1423094 () List!43090)

(assert (=> b!4015363 (= res!1632764 (not (= lt!1423094 prefix!494)))))

(declare-fun lt!1423140 () List!43090)

(assert (=> b!4015363 (= lt!1423094 (++!11242 lt!1423134 lt!1423140))))

(assert (=> b!4015363 (= lt!1423140 (getSuffix!2352 prefix!494 lt!1423134))))

(assert (=> b!4015363 (isPrefix!3927 lt!1423134 prefix!494)))

(declare-fun lt!1423123 () Unit!62016)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!499 (List!43090 List!43090 List!43090) Unit!62016)

(assert (=> b!4015363 (= lt!1423123 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!499 prefix!494 lt!1423134 lt!1423097))))

(declare-fun res!1632773 () Bool)

(assert (=> start!378176 (=> (not res!1632773) (not e!2490372))))

(assert (=> start!378176 (= res!1632773 ((_ is Lexer!6427) thiss!21717))))

(assert (=> start!378176 e!2490372))

(assert (=> start!378176 e!2490382))

(declare-fun e!2490377 () Bool)

(declare-fun inv!57394 (Token!12818) Bool)

(assert (=> start!378176 (and (inv!57394 token!484) e!2490377)))

(declare-fun e!2490352 () Bool)

(assert (=> start!378176 e!2490352))

(declare-fun e!2490364 () Bool)

(assert (=> start!378176 e!2490364))

(declare-fun e!2490384 () Bool)

(assert (=> start!378176 e!2490384))

(assert (=> start!378176 true))

(declare-fun e!2490383 () Bool)

(assert (=> start!378176 e!2490383))

(assert (=> start!378176 e!2490379))

(declare-fun b!4015364 () Bool)

(declare-fun e!2490361 () Bool)

(declare-fun tp!1221014 () Bool)

(declare-fun e!2490370 () Bool)

(declare-fun inv!57391 (String!49068) Bool)

(declare-fun inv!57395 (TokenValueInjection!13568) Bool)

(assert (=> b!4015364 (= e!2490361 (and tp!1221014 (inv!57391 (tag!7700 (rule!9888 token!484))) (inv!57395 (transformation!6840 (rule!9888 token!484))) e!2490370))))

(declare-fun b!4015365 () Bool)

(declare-fun e!2490365 () Bool)

(assert (=> b!4015365 (= e!2490365 e!2490376)))

(declare-fun res!1632766 () Bool)

(assert (=> b!4015365 (=> res!1632766 e!2490376)))

(assert (=> b!4015365 (= res!1632766 (not (= lt!1423135 lt!1423097)))))

(declare-fun lt!1423132 () List!43090)

(assert (=> b!4015365 (= lt!1423135 (++!11242 prefix!494 lt!1423132))))

(assert (=> b!4015365 (= lt!1423135 (++!11242 lt!1423122 lt!1423096))))

(declare-fun lt!1423113 () Unit!62016)

(declare-fun lemmaConcatAssociativity!2552 (List!43090 List!43090 List!43090) Unit!62016)

(assert (=> b!4015365 (= lt!1423113 (lemmaConcatAssociativity!2552 prefix!494 newSuffix!27 lt!1423096))))

(declare-fun b!4015366 () Bool)

(declare-fun res!1632757 () Bool)

(assert (=> b!4015366 (=> (not res!1632757) (not e!2490366))))

(declare-fun lt!1423129 () TokenValue!7070)

(assert (=> b!4015366 (= res!1632757 (= (value!215574 token!484) lt!1423129))))

(declare-fun b!4015367 () Bool)

(assert (=> b!4015367 (= e!2490357 e!2490355)))

(declare-fun res!1632767 () Bool)

(assert (=> b!4015367 (=> res!1632767 e!2490355)))

(declare-fun lt!1423093 () Int)

(assert (=> b!4015367 (= res!1632767 (<= lt!1423136 lt!1423093))))

(assert (=> b!4015367 (= (_2!24189 (v!39623 lt!1423099)) lt!1423121)))

(declare-fun lt!1423103 () Unit!62016)

(assert (=> b!4015367 (= lt!1423103 (lemmaSamePrefixThenSameSuffix!2098 lt!1423128 (_2!24189 (v!39623 lt!1423099)) lt!1423128 lt!1423121 lt!1423122))))

(assert (=> b!4015367 (isPrefix!3927 lt!1423128 lt!1423118)))

(declare-fun lt!1423117 () Unit!62016)

(assert (=> b!4015367 (= lt!1423117 (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423128 lt!1423121))))

(declare-fun b!4015368 () Bool)

(declare-fun tp!1221016 () Bool)

(assert (=> b!4015368 (= e!2490384 (and tp_is_empty!20461 tp!1221016))))

(declare-fun b!4015369 () Bool)

(declare-fun res!1632752 () Bool)

(assert (=> b!4015369 (=> res!1632752 e!2490371)))

(assert (=> b!4015369 (= res!1632752 (not (= lt!1423119 lt!1423122)))))

(declare-fun b!4015370 () Bool)

(declare-fun e!2490381 () Bool)

(assert (=> b!4015370 (= e!2490381 e!2490368)))

(declare-fun res!1632751 () Bool)

(assert (=> b!4015370 (=> (not res!1632751) (not e!2490368))))

(declare-fun lt!1423106 () Option!9254)

(assert (=> b!4015370 (= res!1632751 (= (maxPrefix!3727 thiss!21717 rules!2999 lt!1423097) lt!1423106))))

(assert (=> b!4015370 (= lt!1423106 (Some!9253 lt!1423120))))

(assert (=> b!4015370 (= lt!1423120 (tuple2!42111 token!484 suffixResult!105))))

(assert (=> b!4015370 (= lt!1423097 (++!11242 prefix!494 suffix!1299))))

(declare-fun b!4015371 () Bool)

(declare-fun e!2490367 () Bool)

(declare-fun tp!1221013 () Bool)

(assert (=> b!4015371 (= e!2490383 (and e!2490367 tp!1221013))))

(declare-fun b!4015372 () Bool)

(declare-fun res!1632768 () Bool)

(assert (=> b!4015372 (=> res!1632768 e!2490355)))

(assert (=> b!4015372 (= res!1632768 (not (isPrefix!3927 lt!1423128 lt!1423122)))))

(declare-fun b!4015373 () Bool)

(assert (=> b!4015373 (= e!2490366 (and (= (size!32127 token!484) lt!1423093) (= (originalCharacters!7440 token!484) lt!1423134)))))

(declare-fun b!4015374 () Bool)

(declare-fun e!2490369 () Bool)

(assert (=> b!4015374 (= e!2490369 e!2490378)))

(declare-fun res!1632759 () Bool)

(assert (=> b!4015374 (=> res!1632759 e!2490378)))

(declare-fun matchR!5706 (Regex!11745 List!43090) Bool)

(assert (=> b!4015374 (= res!1632759 (not (matchR!5706 (regex!6840 (rule!9888 token!484)) lt!1423134)))))

(assert (=> b!4015374 (isPrefix!3927 lt!1423134 lt!1423122)))

(declare-fun lt!1423131 () Unit!62016)

(assert (=> b!4015374 (= lt!1423131 (lemmaPrefixStaysPrefixWhenAddingToSuffix!740 lt!1423134 prefix!494 newSuffix!27))))

(declare-fun lt!1423111 () Unit!62016)

(assert (=> b!4015374 (= lt!1423111 (lemmaPrefixStaysPrefixWhenAddingToSuffix!740 lt!1423134 prefix!494 suffix!1299))))

(declare-fun b!4015375 () Bool)

(declare-fun res!1632760 () Bool)

(assert (=> b!4015375 (=> (not res!1632760) (not e!2490366))))

(assert (=> b!4015375 (= res!1632760 (= (size!32127 token!484) (size!32128 (originalCharacters!7440 token!484))))))

(declare-fun b!4015376 () Bool)

(declare-fun tp!1221008 () Bool)

(declare-fun inv!21 (TokenValue!7070) Bool)

(assert (=> b!4015376 (= e!2490377 (and (inv!21 (value!215574 token!484)) e!2490361 tp!1221008))))

(declare-fun b!4015377 () Bool)

(declare-fun res!1632758 () Bool)

(assert (=> b!4015377 (=> (not res!1632758) (not e!2490372))))

(declare-fun rulesInvariant!5772 (LexerInterface!6429 List!43092) Bool)

(assert (=> b!4015377 (= res!1632758 (rulesInvariant!5772 thiss!21717 rules!2999))))

(assert (=> b!4015378 (= e!2490370 (and tp!1221020 tp!1221015))))

(declare-fun b!4015379 () Bool)

(declare-fun tp!1221011 () Bool)

(assert (=> b!4015379 (= e!2490352 (and tp_is_empty!20461 tp!1221011))))

(declare-fun b!4015380 () Bool)

(declare-fun e!2490375 () Bool)

(assert (=> b!4015380 (= e!2490353 e!2490375)))

(declare-fun res!1632756 () Bool)

(assert (=> b!4015380 (=> res!1632756 e!2490375)))

(declare-fun lt!1423126 () List!43090)

(declare-fun lt!1423127 () List!43090)

(assert (=> b!4015380 (= res!1632756 (or (not (= lt!1423097 lt!1423127)) (not (= lt!1423097 lt!1423126))))))

(assert (=> b!4015380 (= lt!1423127 lt!1423126)))

(declare-fun lt!1423108 () List!43090)

(assert (=> b!4015380 (= lt!1423126 (++!11242 lt!1423134 lt!1423108))))

(assert (=> b!4015380 (= lt!1423127 (++!11242 lt!1423094 suffix!1299))))

(assert (=> b!4015380 (= lt!1423108 (++!11242 lt!1423140 suffix!1299))))

(declare-fun lt!1423124 () Unit!62016)

(assert (=> b!4015380 (= lt!1423124 (lemmaConcatAssociativity!2552 lt!1423134 lt!1423140 suffix!1299))))

(declare-fun b!4015381 () Bool)

(declare-fun res!1632753 () Bool)

(assert (=> b!4015381 (=> (not res!1632753) (not e!2490372))))

(assert (=> b!4015381 (= res!1632753 (>= (size!32128 suffix!1299) (size!32128 newSuffix!27)))))

(declare-fun b!4015382 () Bool)

(assert (=> b!4015382 (= e!2490375 e!2490369)))

(declare-fun res!1632762 () Bool)

(assert (=> b!4015382 (=> res!1632762 e!2490369)))

(declare-fun lt!1423109 () Option!9254)

(assert (=> b!4015382 (= res!1632762 (not (= lt!1423109 lt!1423106)))))

(assert (=> b!4015382 (= lt!1423109 (Some!9253 (tuple2!42111 lt!1423116 suffixResult!105)))))

(assert (=> b!4015382 (= lt!1423109 (maxPrefixOneRule!2747 thiss!21717 (rule!9888 token!484) lt!1423097))))

(assert (=> b!4015382 (= lt!1423116 (Token!12819 lt!1423129 (rule!9888 token!484) lt!1423093 lt!1423134))))

(assert (=> b!4015382 (= lt!1423129 (apply!10037 (transformation!6840 (rule!9888 token!484)) (seqFromList!5065 lt!1423134)))))

(declare-fun lt!1423130 () Unit!62016)

(assert (=> b!4015382 (= lt!1423130 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1565 thiss!21717 rules!2999 lt!1423134 lt!1423097 suffixResult!105 (rule!9888 token!484)))))

(assert (=> b!4015382 (= lt!1423108 suffixResult!105)))

(declare-fun lt!1423114 () Unit!62016)

(assert (=> b!4015382 (= lt!1423114 (lemmaSamePrefixThenSameSuffix!2098 lt!1423134 lt!1423108 lt!1423134 suffixResult!105 lt!1423097))))

(assert (=> b!4015382 (isPrefix!3927 lt!1423134 lt!1423126)))

(declare-fun lt!1423092 () Unit!62016)

(assert (=> b!4015382 (= lt!1423092 (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423134 lt!1423108))))

(declare-fun b!4015383 () Bool)

(declare-fun tp!1221017 () Bool)

(assert (=> b!4015383 (= e!2490364 (and tp_is_empty!20461 tp!1221017))))

(declare-fun b!4015384 () Bool)

(assert (=> b!4015384 (= e!2490380 e!2490365)))

(declare-fun res!1632774 () Bool)

(assert (=> b!4015384 (=> res!1632774 e!2490365)))

(assert (=> b!4015384 (= res!1632774 (not (= lt!1423132 suffix!1299)))))

(assert (=> b!4015384 (= lt!1423132 (++!11242 newSuffix!27 lt!1423096))))

(assert (=> b!4015384 (= lt!1423096 (getSuffix!2352 suffix!1299 newSuffix!27))))

(declare-fun e!2490363 () Bool)

(assert (=> b!4015385 (= e!2490363 (and tp!1221009 tp!1221018))))

(declare-fun b!4015386 () Bool)

(declare-fun e!2490354 () Bool)

(assert (=> b!4015386 (= e!2490354 e!2490381)))

(declare-fun res!1632755 () Bool)

(assert (=> b!4015386 (=> (not res!1632755) (not e!2490381))))

(declare-fun lt!1423141 () List!43090)

(assert (=> b!4015386 (= res!1632755 (= lt!1423141 lt!1423122))))

(assert (=> b!4015386 (= lt!1423122 (++!11242 prefix!494 newSuffix!27))))

(assert (=> b!4015386 (= lt!1423141 (++!11242 lt!1423134 newSuffixResult!27))))

(declare-fun b!4015387 () Bool)

(declare-fun tp!1221012 () Bool)

(assert (=> b!4015387 (= e!2490367 (and tp!1221012 (inv!57391 (tag!7700 (h!48388 rules!2999))) (inv!57395 (transformation!6840 (h!48388 rules!2999))) e!2490363))))

(declare-fun b!4015388 () Bool)

(assert (=> b!4015388 (= e!2490372 e!2490354)))

(declare-fun res!1632761 () Bool)

(assert (=> b!4015388 (=> (not res!1632761) (not e!2490354))))

(declare-fun lt!1423112 () Int)

(assert (=> b!4015388 (= res!1632761 (>= lt!1423112 lt!1423093))))

(assert (=> b!4015388 (= lt!1423093 (size!32128 lt!1423134))))

(assert (=> b!4015388 (= lt!1423112 (size!32128 prefix!494))))

(assert (=> b!4015388 (= lt!1423134 (list!15972 (charsOf!4656 token!484)))))

(assert (= (and start!378176 res!1632773) b!4015351))

(assert (= (and b!4015351 res!1632775) b!4015377))

(assert (= (and b!4015377 res!1632758) b!4015381))

(assert (= (and b!4015381 res!1632753) b!4015355))

(assert (= (and b!4015355 res!1632770) b!4015388))

(assert (= (and b!4015388 res!1632761) b!4015386))

(assert (= (and b!4015386 res!1632755) b!4015370))

(assert (= (and b!4015370 res!1632751) b!4015357))

(assert (= (and b!4015357 (not res!1632772)) b!4015354))

(assert (= (and b!4015354 (not res!1632749)) b!4015363))

(assert (= (and b!4015363 (not res!1632764)) b!4015380))

(assert (= (and b!4015380 (not res!1632756)) b!4015382))

(assert (= (and b!4015382 (not res!1632762)) b!4015374))

(assert (= (and b!4015374 (not res!1632759)) b!4015356))

(assert (= (and b!4015356 res!1632771) b!4015366))

(assert (= (and b!4015366 res!1632757) b!4015375))

(assert (= (and b!4015375 res!1632760) b!4015373))

(assert (= (and b!4015356 (not res!1632769)) b!4015352))

(assert (= (and b!4015352 (not res!1632763)) b!4015360))

(assert (= (and b!4015360 (not res!1632765)) b!4015384))

(assert (= (and b!4015384 (not res!1632774)) b!4015365))

(assert (= (and b!4015365 (not res!1632766)) b!4015362))

(assert (= (and b!4015362 (not res!1632754)) b!4015369))

(assert (= (and b!4015369 (not res!1632752)) b!4015361))

(assert (= (and b!4015361 (not res!1632750)) b!4015367))

(assert (= (and b!4015367 (not res!1632767)) b!4015372))

(assert (= (and b!4015372 (not res!1632768)) b!4015359))

(assert (= (and start!378176 ((_ is Cons!42966) prefix!494)) b!4015353))

(assert (= b!4015364 b!4015378))

(assert (= b!4015376 b!4015364))

(assert (= start!378176 b!4015376))

(assert (= (and start!378176 ((_ is Cons!42966) suffixResult!105)) b!4015379))

(assert (= (and start!378176 ((_ is Cons!42966) suffix!1299)) b!4015383))

(assert (= (and start!378176 ((_ is Cons!42966) newSuffix!27)) b!4015368))

(assert (= b!4015387 b!4015385))

(assert (= b!4015371 b!4015387))

(assert (= (and start!378176 ((_ is Cons!42968) rules!2999)) b!4015371))

(assert (= (and start!378176 ((_ is Cons!42966) newSuffixResult!27)) b!4015358))

(declare-fun m!4602967 () Bool)

(assert (=> start!378176 m!4602967))

(declare-fun m!4602969 () Bool)

(assert (=> b!4015382 m!4602969))

(declare-fun m!4602971 () Bool)

(assert (=> b!4015382 m!4602971))

(declare-fun m!4602973 () Bool)

(assert (=> b!4015382 m!4602973))

(declare-fun m!4602975 () Bool)

(assert (=> b!4015382 m!4602975))

(assert (=> b!4015382 m!4602975))

(declare-fun m!4602977 () Bool)

(assert (=> b!4015382 m!4602977))

(declare-fun m!4602979 () Bool)

(assert (=> b!4015382 m!4602979))

(declare-fun m!4602981 () Bool)

(assert (=> b!4015382 m!4602981))

(declare-fun m!4602983 () Bool)

(assert (=> b!4015386 m!4602983))

(declare-fun m!4602985 () Bool)

(assert (=> b!4015386 m!4602985))

(declare-fun m!4602987 () Bool)

(assert (=> b!4015374 m!4602987))

(declare-fun m!4602989 () Bool)

(assert (=> b!4015374 m!4602989))

(declare-fun m!4602991 () Bool)

(assert (=> b!4015374 m!4602991))

(declare-fun m!4602993 () Bool)

(assert (=> b!4015374 m!4602993))

(declare-fun m!4602995 () Bool)

(assert (=> b!4015384 m!4602995))

(declare-fun m!4602997 () Bool)

(assert (=> b!4015384 m!4602997))

(declare-fun m!4602999 () Bool)

(assert (=> b!4015356 m!4602999))

(declare-fun m!4603001 () Bool)

(assert (=> b!4015356 m!4603001))

(declare-fun m!4603003 () Bool)

(assert (=> b!4015356 m!4603003))

(declare-fun m!4603005 () Bool)

(assert (=> b!4015356 m!4603005))

(declare-fun m!4603007 () Bool)

(assert (=> b!4015388 m!4603007))

(declare-fun m!4603009 () Bool)

(assert (=> b!4015388 m!4603009))

(declare-fun m!4603011 () Bool)

(assert (=> b!4015388 m!4603011))

(assert (=> b!4015388 m!4603011))

(declare-fun m!4603013 () Bool)

(assert (=> b!4015388 m!4603013))

(declare-fun m!4603015 () Bool)

(assert (=> b!4015351 m!4603015))

(declare-fun m!4603017 () Bool)

(assert (=> b!4015367 m!4603017))

(declare-fun m!4603019 () Bool)

(assert (=> b!4015367 m!4603019))

(declare-fun m!4603021 () Bool)

(assert (=> b!4015367 m!4603021))

(declare-fun m!4603023 () Bool)

(assert (=> b!4015357 m!4603023))

(declare-fun m!4603025 () Bool)

(assert (=> b!4015357 m!4603025))

(declare-fun m!4603027 () Bool)

(assert (=> b!4015357 m!4603027))

(declare-fun m!4603029 () Bool)

(assert (=> b!4015357 m!4603029))

(declare-fun m!4603031 () Bool)

(assert (=> b!4015377 m!4603031))

(declare-fun m!4603033 () Bool)

(assert (=> b!4015361 m!4603033))

(declare-fun m!4603035 () Bool)

(assert (=> b!4015361 m!4603035))

(declare-fun m!4603037 () Bool)

(assert (=> b!4015375 m!4603037))

(declare-fun m!4603039 () Bool)

(assert (=> b!4015364 m!4603039))

(declare-fun m!4603041 () Bool)

(assert (=> b!4015364 m!4603041))

(declare-fun m!4603043 () Bool)

(assert (=> b!4015387 m!4603043))

(declare-fun m!4603045 () Bool)

(assert (=> b!4015387 m!4603045))

(declare-fun m!4603047 () Bool)

(assert (=> b!4015370 m!4603047))

(declare-fun m!4603049 () Bool)

(assert (=> b!4015370 m!4603049))

(declare-fun m!4603051 () Bool)

(assert (=> b!4015354 m!4603051))

(declare-fun m!4603053 () Bool)

(assert (=> b!4015354 m!4603053))

(declare-fun m!4603055 () Bool)

(assert (=> b!4015354 m!4603055))

(declare-fun m!4603057 () Bool)

(assert (=> b!4015354 m!4603057))

(declare-fun m!4603059 () Bool)

(assert (=> b!4015354 m!4603059))

(declare-fun m!4603061 () Bool)

(assert (=> b!4015365 m!4603061))

(declare-fun m!4603063 () Bool)

(assert (=> b!4015365 m!4603063))

(declare-fun m!4603065 () Bool)

(assert (=> b!4015365 m!4603065))

(declare-fun m!4603067 () Bool)

(assert (=> b!4015352 m!4603067))

(declare-fun m!4603069 () Bool)

(assert (=> b!4015352 m!4603069))

(declare-fun m!4603071 () Bool)

(assert (=> b!4015352 m!4603071))

(declare-fun m!4603073 () Bool)

(assert (=> b!4015352 m!4603073))

(declare-fun m!4603075 () Bool)

(assert (=> b!4015376 m!4603075))

(declare-fun m!4603077 () Bool)

(assert (=> b!4015360 m!4603077))

(declare-fun m!4603079 () Bool)

(assert (=> b!4015360 m!4603079))

(declare-fun m!4603081 () Bool)

(assert (=> b!4015360 m!4603081))

(declare-fun m!4603083 () Bool)

(assert (=> b!4015360 m!4603083))

(declare-fun m!4603085 () Bool)

(assert (=> b!4015360 m!4603085))

(declare-fun m!4603087 () Bool)

(assert (=> b!4015360 m!4603087))

(declare-fun m!4603089 () Bool)

(assert (=> b!4015360 m!4603089))

(declare-fun m!4603091 () Bool)

(assert (=> b!4015360 m!4603091))

(declare-fun m!4603093 () Bool)

(assert (=> b!4015360 m!4603093))

(declare-fun m!4603095 () Bool)

(assert (=> b!4015360 m!4603095))

(declare-fun m!4603097 () Bool)

(assert (=> b!4015360 m!4603097))

(declare-fun m!4603099 () Bool)

(assert (=> b!4015360 m!4603099))

(declare-fun m!4603101 () Bool)

(assert (=> b!4015360 m!4603101))

(declare-fun m!4603103 () Bool)

(assert (=> b!4015360 m!4603103))

(assert (=> b!4015360 m!4603077))

(declare-fun m!4603105 () Bool)

(assert (=> b!4015360 m!4603105))

(declare-fun m!4603107 () Bool)

(assert (=> b!4015360 m!4603107))

(assert (=> b!4015360 m!4603093))

(declare-fun m!4603109 () Bool)

(assert (=> b!4015360 m!4603109))

(declare-fun m!4603111 () Bool)

(assert (=> b!4015360 m!4603111))

(assert (=> b!4015360 m!4603079))

(declare-fun m!4603113 () Bool)

(assert (=> b!4015355 m!4603113))

(declare-fun m!4603115 () Bool)

(assert (=> b!4015381 m!4603115))

(declare-fun m!4603117 () Bool)

(assert (=> b!4015381 m!4603117))

(declare-fun m!4603119 () Bool)

(assert (=> b!4015363 m!4603119))

(declare-fun m!4603121 () Bool)

(assert (=> b!4015363 m!4603121))

(declare-fun m!4603123 () Bool)

(assert (=> b!4015363 m!4603123))

(declare-fun m!4603125 () Bool)

(assert (=> b!4015363 m!4603125))

(declare-fun m!4603127 () Bool)

(assert (=> b!4015359 m!4603127))

(declare-fun m!4603129 () Bool)

(assert (=> b!4015372 m!4603129))

(declare-fun m!4603131 () Bool)

(assert (=> b!4015362 m!4603131))

(declare-fun m!4603133 () Bool)

(assert (=> b!4015362 m!4603133))

(declare-fun m!4603135 () Bool)

(assert (=> b!4015362 m!4603135))

(declare-fun m!4603137 () Bool)

(assert (=> b!4015380 m!4603137))

(declare-fun m!4603139 () Bool)

(assert (=> b!4015380 m!4603139))

(declare-fun m!4603141 () Bool)

(assert (=> b!4015380 m!4603141))

(declare-fun m!4603143 () Bool)

(assert (=> b!4015380 m!4603143))

(check-sat (not b!4015371) (not b!4015358) b_and!308503 (not b!4015374) (not b!4015375) (not b!4015362) (not start!378176) b_and!308505 (not b!4015359) (not b!4015360) (not b!4015376) (not b!4015382) (not b!4015367) (not b!4015381) (not b!4015354) (not b_next!112389) (not b!4015370) (not b!4015352) (not b!4015380) (not b!4015357) (not b!4015361) (not b!4015364) (not b!4015387) (not b!4015351) (not b!4015353) (not b!4015379) tp_is_empty!20461 (not b_next!112385) (not b!4015372) (not b_next!112391) (not b!4015388) (not b!4015355) (not b!4015386) (not b_next!112387) (not b!4015377) (not b!4015384) (not b!4015365) b_and!308507 (not b!4015356) (not b!4015363) (not b!4015383) (not b!4015368) b_and!308509)
(check-sat (not b_next!112389) b_and!308503 b_and!308505 (not b_next!112385) (not b_next!112391) (not b_next!112387) b_and!308507 b_and!308509)
(get-model)

(declare-fun d!1189067 () Bool)

(declare-fun lt!1423148 () Int)

(assert (=> d!1189067 (>= lt!1423148 0)))

(declare-fun e!2490387 () Int)

(assert (=> d!1189067 (= lt!1423148 e!2490387)))

(declare-fun c!694184 () Bool)

(assert (=> d!1189067 (= c!694184 ((_ is Nil!42966) suffix!1299))))

(assert (=> d!1189067 (= (size!32128 suffix!1299) lt!1423148)))

(declare-fun b!4015393 () Bool)

(assert (=> b!4015393 (= e!2490387 0)))

(declare-fun b!4015394 () Bool)

(assert (=> b!4015394 (= e!2490387 (+ 1 (size!32128 (t!333327 suffix!1299))))))

(assert (= (and d!1189067 c!694184) b!4015393))

(assert (= (and d!1189067 (not c!694184)) b!4015394))

(declare-fun m!4603145 () Bool)

(assert (=> b!4015394 m!4603145))

(assert (=> b!4015381 d!1189067))

(declare-fun d!1189069 () Bool)

(declare-fun lt!1423149 () Int)

(assert (=> d!1189069 (>= lt!1423149 0)))

(declare-fun e!2490388 () Int)

(assert (=> d!1189069 (= lt!1423149 e!2490388)))

(declare-fun c!694185 () Bool)

(assert (=> d!1189069 (= c!694185 ((_ is Nil!42966) newSuffix!27))))

(assert (=> d!1189069 (= (size!32128 newSuffix!27) lt!1423149)))

(declare-fun b!4015395 () Bool)

(assert (=> b!4015395 (= e!2490388 0)))

(declare-fun b!4015396 () Bool)

(assert (=> b!4015396 (= e!2490388 (+ 1 (size!32128 (t!333327 newSuffix!27))))))

(assert (= (and d!1189069 c!694185) b!4015395))

(assert (= (and d!1189069 (not c!694185)) b!4015396))

(declare-fun m!4603147 () Bool)

(assert (=> b!4015396 m!4603147))

(assert (=> b!4015381 d!1189069))

(declare-fun d!1189071 () Bool)

(declare-fun lt!1423152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6518 (List!43092) (InoxSet Rule!13480))

(assert (=> d!1189071 (= lt!1423152 (select (content!6518 rules!2999) (rule!9888 token!484)))))

(declare-fun e!2490393 () Bool)

(assert (=> d!1189071 (= lt!1423152 e!2490393)))

(declare-fun res!1632789 () Bool)

(assert (=> d!1189071 (=> (not res!1632789) (not e!2490393))))

(assert (=> d!1189071 (= res!1632789 ((_ is Cons!42968) rules!2999))))

(assert (=> d!1189071 (= (contains!8542 rules!2999 (rule!9888 token!484)) lt!1423152)))

(declare-fun b!4015401 () Bool)

(declare-fun e!2490394 () Bool)

(assert (=> b!4015401 (= e!2490393 e!2490394)))

(declare-fun res!1632788 () Bool)

(assert (=> b!4015401 (=> res!1632788 e!2490394)))

(assert (=> b!4015401 (= res!1632788 (= (h!48388 rules!2999) (rule!9888 token!484)))))

(declare-fun b!4015402 () Bool)

(assert (=> b!4015402 (= e!2490394 (contains!8542 (t!333329 rules!2999) (rule!9888 token!484)))))

(assert (= (and d!1189071 res!1632789) b!4015401))

(assert (= (and b!4015401 (not res!1632788)) b!4015402))

(declare-fun m!4603149 () Bool)

(assert (=> d!1189071 m!4603149))

(declare-fun m!4603151 () Bool)

(assert (=> d!1189071 m!4603151))

(declare-fun m!4603153 () Bool)

(assert (=> b!4015402 m!4603153))

(assert (=> b!4015359 d!1189071))

(declare-fun b!4015439 () Bool)

(declare-fun res!1632804 () Bool)

(declare-fun e!2490414 () Bool)

(assert (=> b!4015439 (=> (not res!1632804) (not e!2490414))))

(declare-fun lt!1423162 () List!43090)

(assert (=> b!4015439 (= res!1632804 (= (size!32128 lt!1423162) (+ (size!32128 lt!1423134) (size!32128 lt!1423108))))))

(declare-fun b!4015437 () Bool)

(declare-fun e!2490413 () List!43090)

(assert (=> b!4015437 (= e!2490413 lt!1423108)))

(declare-fun b!4015440 () Bool)

(assert (=> b!4015440 (= e!2490414 (or (not (= lt!1423108 Nil!42966)) (= lt!1423162 lt!1423134)))))

(declare-fun d!1189075 () Bool)

(assert (=> d!1189075 e!2490414))

(declare-fun res!1632805 () Bool)

(assert (=> d!1189075 (=> (not res!1632805) (not e!2490414))))

(declare-fun content!6519 (List!43090) (InoxSet C!23676))

(assert (=> d!1189075 (= res!1632805 (= (content!6519 lt!1423162) ((_ map or) (content!6519 lt!1423134) (content!6519 lt!1423108))))))

(assert (=> d!1189075 (= lt!1423162 e!2490413)))

(declare-fun c!694196 () Bool)

(assert (=> d!1189075 (= c!694196 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189075 (= (++!11242 lt!1423134 lt!1423108) lt!1423162)))

(declare-fun b!4015438 () Bool)

(assert (=> b!4015438 (= e!2490413 (Cons!42966 (h!48386 lt!1423134) (++!11242 (t!333327 lt!1423134) lt!1423108)))))

(assert (= (and d!1189075 c!694196) b!4015437))

(assert (= (and d!1189075 (not c!694196)) b!4015438))

(assert (= (and d!1189075 res!1632805) b!4015439))

(assert (= (and b!4015439 res!1632804) b!4015440))

(declare-fun m!4603187 () Bool)

(assert (=> b!4015439 m!4603187))

(assert (=> b!4015439 m!4603007))

(declare-fun m!4603189 () Bool)

(assert (=> b!4015439 m!4603189))

(declare-fun m!4603191 () Bool)

(assert (=> d!1189075 m!4603191))

(declare-fun m!4603193 () Bool)

(assert (=> d!1189075 m!4603193))

(declare-fun m!4603195 () Bool)

(assert (=> d!1189075 m!4603195))

(declare-fun m!4603197 () Bool)

(assert (=> b!4015438 m!4603197))

(assert (=> b!4015380 d!1189075))

(declare-fun b!4015443 () Bool)

(declare-fun res!1632806 () Bool)

(declare-fun e!2490416 () Bool)

(assert (=> b!4015443 (=> (not res!1632806) (not e!2490416))))

(declare-fun lt!1423163 () List!43090)

(assert (=> b!4015443 (= res!1632806 (= (size!32128 lt!1423163) (+ (size!32128 lt!1423094) (size!32128 suffix!1299))))))

(declare-fun b!4015441 () Bool)

(declare-fun e!2490415 () List!43090)

(assert (=> b!4015441 (= e!2490415 suffix!1299)))

(declare-fun b!4015444 () Bool)

(assert (=> b!4015444 (= e!2490416 (or (not (= suffix!1299 Nil!42966)) (= lt!1423163 lt!1423094)))))

(declare-fun d!1189083 () Bool)

(assert (=> d!1189083 e!2490416))

(declare-fun res!1632807 () Bool)

(assert (=> d!1189083 (=> (not res!1632807) (not e!2490416))))

(assert (=> d!1189083 (= res!1632807 (= (content!6519 lt!1423163) ((_ map or) (content!6519 lt!1423094) (content!6519 suffix!1299))))))

(assert (=> d!1189083 (= lt!1423163 e!2490415)))

(declare-fun c!694197 () Bool)

(assert (=> d!1189083 (= c!694197 ((_ is Nil!42966) lt!1423094))))

(assert (=> d!1189083 (= (++!11242 lt!1423094 suffix!1299) lt!1423163)))

(declare-fun b!4015442 () Bool)

(assert (=> b!4015442 (= e!2490415 (Cons!42966 (h!48386 lt!1423094) (++!11242 (t!333327 lt!1423094) suffix!1299)))))

(assert (= (and d!1189083 c!694197) b!4015441))

(assert (= (and d!1189083 (not c!694197)) b!4015442))

(assert (= (and d!1189083 res!1632807) b!4015443))

(assert (= (and b!4015443 res!1632806) b!4015444))

(declare-fun m!4603199 () Bool)

(assert (=> b!4015443 m!4603199))

(declare-fun m!4603203 () Bool)

(assert (=> b!4015443 m!4603203))

(assert (=> b!4015443 m!4603115))

(declare-fun m!4603209 () Bool)

(assert (=> d!1189083 m!4603209))

(declare-fun m!4603211 () Bool)

(assert (=> d!1189083 m!4603211))

(declare-fun m!4603213 () Bool)

(assert (=> d!1189083 m!4603213))

(declare-fun m!4603215 () Bool)

(assert (=> b!4015442 m!4603215))

(assert (=> b!4015380 d!1189083))

(declare-fun b!4015456 () Bool)

(declare-fun res!1632811 () Bool)

(declare-fun e!2490423 () Bool)

(assert (=> b!4015456 (=> (not res!1632811) (not e!2490423))))

(declare-fun lt!1423165 () List!43090)

(assert (=> b!4015456 (= res!1632811 (= (size!32128 lt!1423165) (+ (size!32128 lt!1423140) (size!32128 suffix!1299))))))

(declare-fun b!4015454 () Bool)

(declare-fun e!2490422 () List!43090)

(assert (=> b!4015454 (= e!2490422 suffix!1299)))

(declare-fun b!4015457 () Bool)

(assert (=> b!4015457 (= e!2490423 (or (not (= suffix!1299 Nil!42966)) (= lt!1423165 lt!1423140)))))

(declare-fun d!1189087 () Bool)

(assert (=> d!1189087 e!2490423))

(declare-fun res!1632812 () Bool)

(assert (=> d!1189087 (=> (not res!1632812) (not e!2490423))))

(assert (=> d!1189087 (= res!1632812 (= (content!6519 lt!1423165) ((_ map or) (content!6519 lt!1423140) (content!6519 suffix!1299))))))

(assert (=> d!1189087 (= lt!1423165 e!2490422)))

(declare-fun c!694201 () Bool)

(assert (=> d!1189087 (= c!694201 ((_ is Nil!42966) lt!1423140))))

(assert (=> d!1189087 (= (++!11242 lt!1423140 suffix!1299) lt!1423165)))

(declare-fun b!4015455 () Bool)

(assert (=> b!4015455 (= e!2490422 (Cons!42966 (h!48386 lt!1423140) (++!11242 (t!333327 lt!1423140) suffix!1299)))))

(assert (= (and d!1189087 c!694201) b!4015454))

(assert (= (and d!1189087 (not c!694201)) b!4015455))

(assert (= (and d!1189087 res!1632812) b!4015456))

(assert (= (and b!4015456 res!1632811) b!4015457))

(declare-fun m!4603225 () Bool)

(assert (=> b!4015456 m!4603225))

(declare-fun m!4603227 () Bool)

(assert (=> b!4015456 m!4603227))

(assert (=> b!4015456 m!4603115))

(declare-fun m!4603229 () Bool)

(assert (=> d!1189087 m!4603229))

(declare-fun m!4603231 () Bool)

(assert (=> d!1189087 m!4603231))

(assert (=> d!1189087 m!4603213))

(declare-fun m!4603233 () Bool)

(assert (=> b!4015455 m!4603233))

(assert (=> b!4015380 d!1189087))

(declare-fun d!1189091 () Bool)

(assert (=> d!1189091 (= (++!11242 (++!11242 lt!1423134 lt!1423140) suffix!1299) (++!11242 lt!1423134 (++!11242 lt!1423140 suffix!1299)))))

(declare-fun lt!1423173 () Unit!62016)

(declare-fun choose!24271 (List!43090 List!43090 List!43090) Unit!62016)

(assert (=> d!1189091 (= lt!1423173 (choose!24271 lt!1423134 lt!1423140 suffix!1299))))

(assert (=> d!1189091 (= (lemmaConcatAssociativity!2552 lt!1423134 lt!1423140 suffix!1299) lt!1423173)))

(declare-fun bs!589600 () Bool)

(assert (= bs!589600 d!1189091))

(declare-fun m!4603243 () Bool)

(assert (=> bs!589600 m!4603243))

(assert (=> bs!589600 m!4603141))

(assert (=> bs!589600 m!4603141))

(declare-fun m!4603247 () Bool)

(assert (=> bs!589600 m!4603247))

(assert (=> bs!589600 m!4603119))

(assert (=> bs!589600 m!4603119))

(declare-fun m!4603249 () Bool)

(assert (=> bs!589600 m!4603249))

(assert (=> b!4015380 d!1189091))

(declare-fun b!4015478 () Bool)

(declare-fun res!1632815 () Bool)

(declare-fun e!2490434 () Bool)

(assert (=> b!4015478 (=> (not res!1632815) (not e!2490434))))

(declare-fun lt!1423177 () List!43090)

(assert (=> b!4015478 (= res!1632815 (= (size!32128 lt!1423177) (+ (size!32128 lt!1423134) (size!32128 suffixResult!105))))))

(declare-fun b!4015476 () Bool)

(declare-fun e!2490433 () List!43090)

(assert (=> b!4015476 (= e!2490433 suffixResult!105)))

(declare-fun b!4015479 () Bool)

(assert (=> b!4015479 (= e!2490434 (or (not (= suffixResult!105 Nil!42966)) (= lt!1423177 lt!1423134)))))

(declare-fun d!1189099 () Bool)

(assert (=> d!1189099 e!2490434))

(declare-fun res!1632816 () Bool)

(assert (=> d!1189099 (=> (not res!1632816) (not e!2490434))))

(assert (=> d!1189099 (= res!1632816 (= (content!6519 lt!1423177) ((_ map or) (content!6519 lt!1423134) (content!6519 suffixResult!105))))))

(assert (=> d!1189099 (= lt!1423177 e!2490433)))

(declare-fun c!694210 () Bool)

(assert (=> d!1189099 (= c!694210 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189099 (= (++!11242 lt!1423134 suffixResult!105) lt!1423177)))

(declare-fun b!4015477 () Bool)

(assert (=> b!4015477 (= e!2490433 (Cons!42966 (h!48386 lt!1423134) (++!11242 (t!333327 lt!1423134) suffixResult!105)))))

(assert (= (and d!1189099 c!694210) b!4015476))

(assert (= (and d!1189099 (not c!694210)) b!4015477))

(assert (= (and d!1189099 res!1632816) b!4015478))

(assert (= (and b!4015478 res!1632815) b!4015479))

(declare-fun m!4603269 () Bool)

(assert (=> b!4015478 m!4603269))

(assert (=> b!4015478 m!4603007))

(declare-fun m!4603271 () Bool)

(assert (=> b!4015478 m!4603271))

(declare-fun m!4603273 () Bool)

(assert (=> d!1189099 m!4603273))

(assert (=> d!1189099 m!4603193))

(declare-fun m!4603275 () Bool)

(assert (=> d!1189099 m!4603275))

(declare-fun m!4603277 () Bool)

(assert (=> b!4015477 m!4603277))

(assert (=> b!4015357 d!1189099))

(declare-fun d!1189105 () Bool)

(declare-fun e!2490447 () Bool)

(assert (=> d!1189105 e!2490447))

(declare-fun res!1632832 () Bool)

(assert (=> d!1189105 (=> (not res!1632832) (not e!2490447))))

(declare-fun semiInverseModEq!2929 (Int Int) Bool)

(assert (=> d!1189105 (= res!1632832 (semiInverseModEq!2929 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))))))

(declare-fun Unit!62019 () Unit!62016)

(assert (=> d!1189105 (= (lemmaInv!1055 (transformation!6840 (rule!9888 token!484))) Unit!62019)))

(declare-fun b!4015499 () Bool)

(declare-fun equivClasses!2828 (Int Int) Bool)

(assert (=> b!4015499 (= e!2490447 (equivClasses!2828 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))))))

(assert (= (and d!1189105 res!1632832) b!4015499))

(declare-fun m!4603297 () Bool)

(assert (=> d!1189105 m!4603297))

(declare-fun m!4603299 () Bool)

(assert (=> b!4015499 m!4603299))

(assert (=> b!4015357 d!1189105))

(declare-fun d!1189113 () Bool)

(declare-fun res!1632837 () Bool)

(declare-fun e!2490450 () Bool)

(assert (=> d!1189113 (=> (not res!1632837) (not e!2490450))))

(declare-fun validRegex!5322 (Regex!11745) Bool)

(assert (=> d!1189113 (= res!1632837 (validRegex!5322 (regex!6840 (rule!9888 token!484))))))

(assert (=> d!1189113 (= (ruleValid!2772 thiss!21717 (rule!9888 token!484)) e!2490450)))

(declare-fun b!4015504 () Bool)

(declare-fun res!1632838 () Bool)

(assert (=> b!4015504 (=> (not res!1632838) (not e!2490450))))

(declare-fun nullable!4122 (Regex!11745) Bool)

(assert (=> b!4015504 (= res!1632838 (not (nullable!4122 (regex!6840 (rule!9888 token!484)))))))

(declare-fun b!4015505 () Bool)

(assert (=> b!4015505 (= e!2490450 (not (= (tag!7700 (rule!9888 token!484)) (String!49069 ""))))))

(assert (= (and d!1189113 res!1632837) b!4015504))

(assert (= (and b!4015504 res!1632838) b!4015505))

(declare-fun m!4603303 () Bool)

(assert (=> d!1189113 m!4603303))

(declare-fun m!4603305 () Bool)

(assert (=> b!4015504 m!4603305))

(assert (=> b!4015357 d!1189113))

(declare-fun d!1189117 () Bool)

(assert (=> d!1189117 (ruleValid!2772 thiss!21717 (rule!9888 token!484))))

(declare-fun lt!1423185 () Unit!62016)

(declare-fun choose!24272 (LexerInterface!6429 Rule!13480 List!43092) Unit!62016)

(assert (=> d!1189117 (= lt!1423185 (choose!24272 thiss!21717 (rule!9888 token!484) rules!2999))))

(assert (=> d!1189117 (contains!8542 rules!2999 (rule!9888 token!484))))

(assert (=> d!1189117 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1846 thiss!21717 (rule!9888 token!484) rules!2999) lt!1423185)))

(declare-fun bs!589602 () Bool)

(assert (= bs!589602 d!1189117))

(assert (=> bs!589602 m!4603027))

(declare-fun m!4603307 () Bool)

(assert (=> bs!589602 m!4603307))

(assert (=> bs!589602 m!4603127))

(assert (=> b!4015357 d!1189117))

(declare-fun d!1189119 () Bool)

(declare-fun res!1632843 () Bool)

(declare-fun e!2490453 () Bool)

(assert (=> d!1189119 (=> (not res!1632843) (not e!2490453))))

(declare-fun isEmpty!25666 (List!43090) Bool)

(assert (=> d!1189119 (= res!1632843 (not (isEmpty!25666 (originalCharacters!7440 token!484))))))

(assert (=> d!1189119 (= (inv!57394 token!484) e!2490453)))

(declare-fun b!4015510 () Bool)

(declare-fun res!1632844 () Bool)

(assert (=> b!4015510 (=> (not res!1632844) (not e!2490453))))

(declare-fun dynLambda!18229 (Int TokenValue!7070) BalanceConc!25696)

(assert (=> b!4015510 (= res!1632844 (= (originalCharacters!7440 token!484) (list!15972 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (value!215574 token!484)))))))

(declare-fun b!4015511 () Bool)

(assert (=> b!4015511 (= e!2490453 (= (size!32127 token!484) (size!32128 (originalCharacters!7440 token!484))))))

(assert (= (and d!1189119 res!1632843) b!4015510))

(assert (= (and b!4015510 res!1632844) b!4015511))

(declare-fun b_lambda!117191 () Bool)

(assert (=> (not b_lambda!117191) (not b!4015510)))

(declare-fun t!333331 () Bool)

(declare-fun tb!241489 () Bool)

(assert (=> (and b!4015378 (= (toChars!9207 (transformation!6840 (rule!9888 token!484))) (toChars!9207 (transformation!6840 (rule!9888 token!484)))) t!333331) tb!241489))

(declare-fun b!4015516 () Bool)

(declare-fun e!2490456 () Bool)

(declare-fun tp!1221023 () Bool)

(declare-fun inv!57396 (Conc!13051) Bool)

(assert (=> b!4015516 (= e!2490456 (and (inv!57396 (c!694180 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (value!215574 token!484)))) tp!1221023))))

(declare-fun result!292666 () Bool)

(declare-fun inv!57397 (BalanceConc!25696) Bool)

(assert (=> tb!241489 (= result!292666 (and (inv!57397 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (value!215574 token!484))) e!2490456))))

(assert (= tb!241489 b!4015516))

(declare-fun m!4603309 () Bool)

(assert (=> b!4015516 m!4603309))

(declare-fun m!4603311 () Bool)

(assert (=> tb!241489 m!4603311))

(assert (=> b!4015510 t!333331))

(declare-fun b_and!308511 () Bool)

(assert (= b_and!308505 (and (=> t!333331 result!292666) b_and!308511)))

(declare-fun tb!241491 () Bool)

(declare-fun t!333333 () Bool)

(assert (=> (and b!4015385 (= (toChars!9207 (transformation!6840 (h!48388 rules!2999))) (toChars!9207 (transformation!6840 (rule!9888 token!484)))) t!333333) tb!241491))

(declare-fun result!292670 () Bool)

(assert (= result!292670 result!292666))

(assert (=> b!4015510 t!333333))

(declare-fun b_and!308513 () Bool)

(assert (= b_and!308509 (and (=> t!333333 result!292670) b_and!308513)))

(declare-fun m!4603313 () Bool)

(assert (=> d!1189119 m!4603313))

(declare-fun m!4603315 () Bool)

(assert (=> b!4015510 m!4603315))

(assert (=> b!4015510 m!4603315))

(declare-fun m!4603317 () Bool)

(assert (=> b!4015510 m!4603317))

(assert (=> b!4015511 m!4603037))

(assert (=> start!378176 d!1189119))

(declare-fun b!4015519 () Bool)

(declare-fun res!1632845 () Bool)

(declare-fun e!2490458 () Bool)

(assert (=> b!4015519 (=> (not res!1632845) (not e!2490458))))

(declare-fun lt!1423186 () List!43090)

(assert (=> b!4015519 (= res!1632845 (= (size!32128 lt!1423186) (+ (size!32128 lt!1423134) (size!32128 lt!1423104))))))

(declare-fun b!4015517 () Bool)

(declare-fun e!2490457 () List!43090)

(assert (=> b!4015517 (= e!2490457 lt!1423104)))

(declare-fun b!4015520 () Bool)

(assert (=> b!4015520 (= e!2490458 (or (not (= lt!1423104 Nil!42966)) (= lt!1423186 lt!1423134)))))

(declare-fun d!1189121 () Bool)

(assert (=> d!1189121 e!2490458))

(declare-fun res!1632846 () Bool)

(assert (=> d!1189121 (=> (not res!1632846) (not e!2490458))))

(assert (=> d!1189121 (= res!1632846 (= (content!6519 lt!1423186) ((_ map or) (content!6519 lt!1423134) (content!6519 lt!1423104))))))

(assert (=> d!1189121 (= lt!1423186 e!2490457)))

(declare-fun c!694213 () Bool)

(assert (=> d!1189121 (= c!694213 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189121 (= (++!11242 lt!1423134 lt!1423104) lt!1423186)))

(declare-fun b!4015518 () Bool)

(assert (=> b!4015518 (= e!2490457 (Cons!42966 (h!48386 lt!1423134) (++!11242 (t!333327 lt!1423134) lt!1423104)))))

(assert (= (and d!1189121 c!694213) b!4015517))

(assert (= (and d!1189121 (not c!694213)) b!4015518))

(assert (= (and d!1189121 res!1632846) b!4015519))

(assert (= (and b!4015519 res!1632845) b!4015520))

(declare-fun m!4603319 () Bool)

(assert (=> b!4015519 m!4603319))

(assert (=> b!4015519 m!4603007))

(declare-fun m!4603321 () Bool)

(assert (=> b!4015519 m!4603321))

(declare-fun m!4603323 () Bool)

(assert (=> d!1189121 m!4603323))

(assert (=> d!1189121 m!4603193))

(declare-fun m!4603325 () Bool)

(assert (=> d!1189121 m!4603325))

(declare-fun m!4603327 () Bool)

(assert (=> b!4015518 m!4603327))

(assert (=> b!4015356 d!1189121))

(declare-fun d!1189123 () Bool)

(declare-fun lt!1423199 () List!43090)

(assert (=> d!1189123 (= (++!11242 lt!1423134 lt!1423199) lt!1423097)))

(declare-fun e!2490467 () List!43090)

(assert (=> d!1189123 (= lt!1423199 e!2490467)))

(declare-fun c!694218 () Bool)

(assert (=> d!1189123 (= c!694218 ((_ is Cons!42966) lt!1423134))))

(assert (=> d!1189123 (>= (size!32128 lt!1423097) (size!32128 lt!1423134))))

(assert (=> d!1189123 (= (getSuffix!2352 lt!1423097 lt!1423134) lt!1423199)))

(declare-fun b!4015537 () Bool)

(declare-fun tail!6255 (List!43090) List!43090)

(assert (=> b!4015537 (= e!2490467 (getSuffix!2352 (tail!6255 lt!1423097) (t!333327 lt!1423134)))))

(declare-fun b!4015538 () Bool)

(assert (=> b!4015538 (= e!2490467 lt!1423097)))

(assert (= (and d!1189123 c!694218) b!4015537))

(assert (= (and d!1189123 (not c!694218)) b!4015538))

(declare-fun m!4603329 () Bool)

(assert (=> d!1189123 m!4603329))

(declare-fun m!4603331 () Bool)

(assert (=> d!1189123 m!4603331))

(assert (=> d!1189123 m!4603007))

(declare-fun m!4603333 () Bool)

(assert (=> b!4015537 m!4603333))

(assert (=> b!4015537 m!4603333))

(declare-fun m!4603335 () Bool)

(assert (=> b!4015537 m!4603335))

(assert (=> b!4015356 d!1189123))

(declare-fun d!1189125 () Bool)

(declare-fun e!2490478 () Bool)

(assert (=> d!1189125 e!2490478))

(declare-fun res!1632878 () Bool)

(assert (=> d!1189125 (=> res!1632878 e!2490478)))

(declare-fun lt!1423207 () Bool)

(assert (=> d!1189125 (= res!1632878 (not lt!1423207))))

(declare-fun e!2490477 () Bool)

(assert (=> d!1189125 (= lt!1423207 e!2490477)))

(declare-fun res!1632879 () Bool)

(assert (=> d!1189125 (=> res!1632879 e!2490477)))

(assert (=> d!1189125 (= res!1632879 ((_ is Nil!42966) lt!1423097))))

(assert (=> d!1189125 (= (isPrefix!3927 lt!1423097 lt!1423097) lt!1423207)))

(declare-fun b!4015564 () Bool)

(declare-fun e!2490479 () Bool)

(assert (=> b!4015564 (= e!2490479 (isPrefix!3927 (tail!6255 lt!1423097) (tail!6255 lt!1423097)))))

(declare-fun b!4015565 () Bool)

(assert (=> b!4015565 (= e!2490478 (>= (size!32128 lt!1423097) (size!32128 lt!1423097)))))

(declare-fun b!4015562 () Bool)

(assert (=> b!4015562 (= e!2490477 e!2490479)))

(declare-fun res!1632876 () Bool)

(assert (=> b!4015562 (=> (not res!1632876) (not e!2490479))))

(assert (=> b!4015562 (= res!1632876 (not ((_ is Nil!42966) lt!1423097)))))

(declare-fun b!4015563 () Bool)

(declare-fun res!1632877 () Bool)

(assert (=> b!4015563 (=> (not res!1632877) (not e!2490479))))

(declare-fun head!8523 (List!43090) C!23676)

(assert (=> b!4015563 (= res!1632877 (= (head!8523 lt!1423097) (head!8523 lt!1423097)))))

(assert (= (and d!1189125 (not res!1632879)) b!4015562))

(assert (= (and b!4015562 res!1632876) b!4015563))

(assert (= (and b!4015563 res!1632877) b!4015564))

(assert (= (and d!1189125 (not res!1632878)) b!4015565))

(assert (=> b!4015564 m!4603333))

(assert (=> b!4015564 m!4603333))

(assert (=> b!4015564 m!4603333))

(assert (=> b!4015564 m!4603333))

(declare-fun m!4603365 () Bool)

(assert (=> b!4015564 m!4603365))

(assert (=> b!4015565 m!4603331))

(assert (=> b!4015565 m!4603331))

(declare-fun m!4603367 () Bool)

(assert (=> b!4015563 m!4603367))

(assert (=> b!4015563 m!4603367))

(assert (=> b!4015356 d!1189125))

(declare-fun d!1189129 () Bool)

(assert (=> d!1189129 (isPrefix!3927 lt!1423097 lt!1423097)))

(declare-fun lt!1423211 () Unit!62016)

(declare-fun choose!24276 (List!43090 List!43090) Unit!62016)

(assert (=> d!1189129 (= lt!1423211 (choose!24276 lt!1423097 lt!1423097))))

(assert (=> d!1189129 (= (lemmaIsPrefixRefl!2503 lt!1423097 lt!1423097) lt!1423211)))

(declare-fun bs!589603 () Bool)

(assert (= bs!589603 d!1189129))

(assert (=> bs!589603 m!4603003))

(declare-fun m!4603383 () Bool)

(assert (=> bs!589603 m!4603383))

(assert (=> b!4015356 d!1189129))

(declare-fun d!1189135 () Bool)

(declare-fun res!1632884 () Bool)

(declare-fun e!2490487 () Bool)

(assert (=> d!1189135 (=> (not res!1632884) (not e!2490487))))

(declare-fun rulesValid!2662 (LexerInterface!6429 List!43092) Bool)

(assert (=> d!1189135 (= res!1632884 (rulesValid!2662 thiss!21717 rules!2999))))

(assert (=> d!1189135 (= (rulesInvariant!5772 thiss!21717 rules!2999) e!2490487)))

(declare-fun b!4015574 () Bool)

(declare-datatypes ((List!43093 0))(
  ( (Nil!42969) (Cons!42969 (h!48389 String!49068) (t!333378 List!43093)) )
))
(declare-fun noDuplicateTag!2663 (LexerInterface!6429 List!43092 List!43093) Bool)

(assert (=> b!4015574 (= e!2490487 (noDuplicateTag!2663 thiss!21717 rules!2999 Nil!42969))))

(assert (= (and d!1189135 res!1632884) b!4015574))

(declare-fun m!4603391 () Bool)

(assert (=> d!1189135 m!4603391))

(declare-fun m!4603393 () Bool)

(assert (=> b!4015574 m!4603393))

(assert (=> b!4015377 d!1189135))

(declare-fun d!1189141 () Bool)

(declare-fun e!2490489 () Bool)

(assert (=> d!1189141 e!2490489))

(declare-fun res!1632887 () Bool)

(assert (=> d!1189141 (=> res!1632887 e!2490489)))

(declare-fun lt!1423218 () Bool)

(assert (=> d!1189141 (= res!1632887 (not lt!1423218))))

(declare-fun e!2490488 () Bool)

(assert (=> d!1189141 (= lt!1423218 e!2490488)))

(declare-fun res!1632888 () Bool)

(assert (=> d!1189141 (=> res!1632888 e!2490488)))

(assert (=> d!1189141 (= res!1632888 ((_ is Nil!42966) newSuffix!27))))

(assert (=> d!1189141 (= (isPrefix!3927 newSuffix!27 suffix!1299) lt!1423218)))

(declare-fun b!4015577 () Bool)

(declare-fun e!2490490 () Bool)

(assert (=> b!4015577 (= e!2490490 (isPrefix!3927 (tail!6255 newSuffix!27) (tail!6255 suffix!1299)))))

(declare-fun b!4015578 () Bool)

(assert (=> b!4015578 (= e!2490489 (>= (size!32128 suffix!1299) (size!32128 newSuffix!27)))))

(declare-fun b!4015575 () Bool)

(assert (=> b!4015575 (= e!2490488 e!2490490)))

(declare-fun res!1632885 () Bool)

(assert (=> b!4015575 (=> (not res!1632885) (not e!2490490))))

(assert (=> b!4015575 (= res!1632885 (not ((_ is Nil!42966) suffix!1299)))))

(declare-fun b!4015576 () Bool)

(declare-fun res!1632886 () Bool)

(assert (=> b!4015576 (=> (not res!1632886) (not e!2490490))))

(assert (=> b!4015576 (= res!1632886 (= (head!8523 newSuffix!27) (head!8523 suffix!1299)))))

(assert (= (and d!1189141 (not res!1632888)) b!4015575))

(assert (= (and b!4015575 res!1632885) b!4015576))

(assert (= (and b!4015576 res!1632886) b!4015577))

(assert (= (and d!1189141 (not res!1632887)) b!4015578))

(declare-fun m!4603395 () Bool)

(assert (=> b!4015577 m!4603395))

(declare-fun m!4603397 () Bool)

(assert (=> b!4015577 m!4603397))

(assert (=> b!4015577 m!4603395))

(assert (=> b!4015577 m!4603397))

(declare-fun m!4603399 () Bool)

(assert (=> b!4015577 m!4603399))

(assert (=> b!4015578 m!4603115))

(assert (=> b!4015578 m!4603117))

(declare-fun m!4603401 () Bool)

(assert (=> b!4015576 m!4603401))

(declare-fun m!4603403 () Bool)

(assert (=> b!4015576 m!4603403))

(assert (=> b!4015355 d!1189141))

(declare-fun b!4015597 () Bool)

(declare-fun e!2490505 () Bool)

(declare-fun inv!17 (TokenValue!7070) Bool)

(assert (=> b!4015597 (= e!2490505 (inv!17 (value!215574 token!484)))))

(declare-fun b!4015598 () Bool)

(declare-fun res!1632899 () Bool)

(declare-fun e!2490503 () Bool)

(assert (=> b!4015598 (=> res!1632899 e!2490503)))

(assert (=> b!4015598 (= res!1632899 (not ((_ is IntegerValue!21212) (value!215574 token!484))))))

(assert (=> b!4015598 (= e!2490505 e!2490503)))

(declare-fun d!1189143 () Bool)

(declare-fun c!694225 () Bool)

(assert (=> d!1189143 (= c!694225 ((_ is IntegerValue!21210) (value!215574 token!484)))))

(declare-fun e!2490504 () Bool)

(assert (=> d!1189143 (= (inv!21 (value!215574 token!484)) e!2490504)))

(declare-fun b!4015599 () Bool)

(assert (=> b!4015599 (= e!2490504 e!2490505)))

(declare-fun c!694226 () Bool)

(assert (=> b!4015599 (= c!694226 ((_ is IntegerValue!21211) (value!215574 token!484)))))

(declare-fun b!4015600 () Bool)

(declare-fun inv!15 (TokenValue!7070) Bool)

(assert (=> b!4015600 (= e!2490503 (inv!15 (value!215574 token!484)))))

(declare-fun b!4015601 () Bool)

(declare-fun inv!16 (TokenValue!7070) Bool)

(assert (=> b!4015601 (= e!2490504 (inv!16 (value!215574 token!484)))))

(assert (= (and d!1189143 c!694225) b!4015601))

(assert (= (and d!1189143 (not c!694225)) b!4015599))

(assert (= (and b!4015599 c!694226) b!4015597))

(assert (= (and b!4015599 (not c!694226)) b!4015598))

(assert (= (and b!4015598 (not res!1632899)) b!4015600))

(declare-fun m!4603407 () Bool)

(assert (=> b!4015597 m!4603407))

(declare-fun m!4603409 () Bool)

(assert (=> b!4015600 m!4603409))

(declare-fun m!4603411 () Bool)

(assert (=> b!4015601 m!4603411))

(assert (=> b!4015376 d!1189143))

(declare-fun b!4015604 () Bool)

(declare-fun res!1632900 () Bool)

(declare-fun e!2490507 () Bool)

(assert (=> b!4015604 (=> (not res!1632900) (not e!2490507))))

(declare-fun lt!1423221 () List!43090)

(assert (=> b!4015604 (= res!1632900 (= (size!32128 lt!1423221) (+ (size!32128 prefix!494) (size!32128 lt!1423132))))))

(declare-fun b!4015602 () Bool)

(declare-fun e!2490506 () List!43090)

(assert (=> b!4015602 (= e!2490506 lt!1423132)))

(declare-fun b!4015605 () Bool)

(assert (=> b!4015605 (= e!2490507 (or (not (= lt!1423132 Nil!42966)) (= lt!1423221 prefix!494)))))

(declare-fun d!1189147 () Bool)

(assert (=> d!1189147 e!2490507))

(declare-fun res!1632901 () Bool)

(assert (=> d!1189147 (=> (not res!1632901) (not e!2490507))))

(assert (=> d!1189147 (= res!1632901 (= (content!6519 lt!1423221) ((_ map or) (content!6519 prefix!494) (content!6519 lt!1423132))))))

(assert (=> d!1189147 (= lt!1423221 e!2490506)))

(declare-fun c!694227 () Bool)

(assert (=> d!1189147 (= c!694227 ((_ is Nil!42966) prefix!494))))

(assert (=> d!1189147 (= (++!11242 prefix!494 lt!1423132) lt!1423221)))

(declare-fun b!4015603 () Bool)

(assert (=> b!4015603 (= e!2490506 (Cons!42966 (h!48386 prefix!494) (++!11242 (t!333327 prefix!494) lt!1423132)))))

(assert (= (and d!1189147 c!694227) b!4015602))

(assert (= (and d!1189147 (not c!694227)) b!4015603))

(assert (= (and d!1189147 res!1632901) b!4015604))

(assert (= (and b!4015604 res!1632900) b!4015605))

(declare-fun m!4603413 () Bool)

(assert (=> b!4015604 m!4603413))

(assert (=> b!4015604 m!4603009))

(declare-fun m!4603415 () Bool)

(assert (=> b!4015604 m!4603415))

(declare-fun m!4603417 () Bool)

(assert (=> d!1189147 m!4603417))

(declare-fun m!4603419 () Bool)

(assert (=> d!1189147 m!4603419))

(declare-fun m!4603421 () Bool)

(assert (=> d!1189147 m!4603421))

(declare-fun m!4603423 () Bool)

(assert (=> b!4015603 m!4603423))

(assert (=> b!4015365 d!1189147))

(declare-fun b!4015612 () Bool)

(declare-fun res!1632906 () Bool)

(declare-fun e!2490512 () Bool)

(assert (=> b!4015612 (=> (not res!1632906) (not e!2490512))))

(declare-fun lt!1423223 () List!43090)

(assert (=> b!4015612 (= res!1632906 (= (size!32128 lt!1423223) (+ (size!32128 lt!1423122) (size!32128 lt!1423096))))))

(declare-fun b!4015610 () Bool)

(declare-fun e!2490511 () List!43090)

(assert (=> b!4015610 (= e!2490511 lt!1423096)))

(declare-fun b!4015613 () Bool)

(assert (=> b!4015613 (= e!2490512 (or (not (= lt!1423096 Nil!42966)) (= lt!1423223 lt!1423122)))))

(declare-fun d!1189149 () Bool)

(assert (=> d!1189149 e!2490512))

(declare-fun res!1632907 () Bool)

(assert (=> d!1189149 (=> (not res!1632907) (not e!2490512))))

(assert (=> d!1189149 (= res!1632907 (= (content!6519 lt!1423223) ((_ map or) (content!6519 lt!1423122) (content!6519 lt!1423096))))))

(assert (=> d!1189149 (= lt!1423223 e!2490511)))

(declare-fun c!694228 () Bool)

(assert (=> d!1189149 (= c!694228 ((_ is Nil!42966) lt!1423122))))

(assert (=> d!1189149 (= (++!11242 lt!1423122 lt!1423096) lt!1423223)))

(declare-fun b!4015611 () Bool)

(assert (=> b!4015611 (= e!2490511 (Cons!42966 (h!48386 lt!1423122) (++!11242 (t!333327 lt!1423122) lt!1423096)))))

(assert (= (and d!1189149 c!694228) b!4015610))

(assert (= (and d!1189149 (not c!694228)) b!4015611))

(assert (= (and d!1189149 res!1632907) b!4015612))

(assert (= (and b!4015612 res!1632906) b!4015613))

(declare-fun m!4603437 () Bool)

(assert (=> b!4015612 m!4603437))

(declare-fun m!4603439 () Bool)

(assert (=> b!4015612 m!4603439))

(declare-fun m!4603441 () Bool)

(assert (=> b!4015612 m!4603441))

(declare-fun m!4603443 () Bool)

(assert (=> d!1189149 m!4603443))

(declare-fun m!4603445 () Bool)

(assert (=> d!1189149 m!4603445))

(declare-fun m!4603447 () Bool)

(assert (=> d!1189149 m!4603447))

(declare-fun m!4603449 () Bool)

(assert (=> b!4015611 m!4603449))

(assert (=> b!4015365 d!1189149))

(declare-fun d!1189153 () Bool)

(assert (=> d!1189153 (= (++!11242 (++!11242 prefix!494 newSuffix!27) lt!1423096) (++!11242 prefix!494 (++!11242 newSuffix!27 lt!1423096)))))

(declare-fun lt!1423224 () Unit!62016)

(assert (=> d!1189153 (= lt!1423224 (choose!24271 prefix!494 newSuffix!27 lt!1423096))))

(assert (=> d!1189153 (= (lemmaConcatAssociativity!2552 prefix!494 newSuffix!27 lt!1423096) lt!1423224)))

(declare-fun bs!589607 () Bool)

(assert (= bs!589607 d!1189153))

(declare-fun m!4603451 () Bool)

(assert (=> bs!589607 m!4603451))

(assert (=> bs!589607 m!4602995))

(assert (=> bs!589607 m!4602995))

(declare-fun m!4603453 () Bool)

(assert (=> bs!589607 m!4603453))

(assert (=> bs!589607 m!4602983))

(assert (=> bs!589607 m!4602983))

(declare-fun m!4603455 () Bool)

(assert (=> bs!589607 m!4603455))

(assert (=> b!4015365 d!1189153))

(declare-fun b!4015616 () Bool)

(declare-fun res!1632908 () Bool)

(declare-fun e!2490514 () Bool)

(assert (=> b!4015616 (=> (not res!1632908) (not e!2490514))))

(declare-fun lt!1423225 () List!43090)

(assert (=> b!4015616 (= res!1632908 (= (size!32128 lt!1423225) (+ (size!32128 prefix!494) (size!32128 newSuffix!27))))))

(declare-fun b!4015614 () Bool)

(declare-fun e!2490513 () List!43090)

(assert (=> b!4015614 (= e!2490513 newSuffix!27)))

(declare-fun b!4015617 () Bool)

(assert (=> b!4015617 (= e!2490514 (or (not (= newSuffix!27 Nil!42966)) (= lt!1423225 prefix!494)))))

(declare-fun d!1189155 () Bool)

(assert (=> d!1189155 e!2490514))

(declare-fun res!1632909 () Bool)

(assert (=> d!1189155 (=> (not res!1632909) (not e!2490514))))

(assert (=> d!1189155 (= res!1632909 (= (content!6519 lt!1423225) ((_ map or) (content!6519 prefix!494) (content!6519 newSuffix!27))))))

(assert (=> d!1189155 (= lt!1423225 e!2490513)))

(declare-fun c!694229 () Bool)

(assert (=> d!1189155 (= c!694229 ((_ is Nil!42966) prefix!494))))

(assert (=> d!1189155 (= (++!11242 prefix!494 newSuffix!27) lt!1423225)))

(declare-fun b!4015615 () Bool)

(assert (=> b!4015615 (= e!2490513 (Cons!42966 (h!48386 prefix!494) (++!11242 (t!333327 prefix!494) newSuffix!27)))))

(assert (= (and d!1189155 c!694229) b!4015614))

(assert (= (and d!1189155 (not c!694229)) b!4015615))

(assert (= (and d!1189155 res!1632909) b!4015616))

(assert (= (and b!4015616 res!1632908) b!4015617))

(declare-fun m!4603457 () Bool)

(assert (=> b!4015616 m!4603457))

(assert (=> b!4015616 m!4603009))

(assert (=> b!4015616 m!4603117))

(declare-fun m!4603459 () Bool)

(assert (=> d!1189155 m!4603459))

(assert (=> d!1189155 m!4603419))

(declare-fun m!4603461 () Bool)

(assert (=> d!1189155 m!4603461))

(declare-fun m!4603463 () Bool)

(assert (=> b!4015615 m!4603463))

(assert (=> b!4015386 d!1189155))

(declare-fun b!4015620 () Bool)

(declare-fun res!1632910 () Bool)

(declare-fun e!2490516 () Bool)

(assert (=> b!4015620 (=> (not res!1632910) (not e!2490516))))

(declare-fun lt!1423226 () List!43090)

(assert (=> b!4015620 (= res!1632910 (= (size!32128 lt!1423226) (+ (size!32128 lt!1423134) (size!32128 newSuffixResult!27))))))

(declare-fun b!4015618 () Bool)

(declare-fun e!2490515 () List!43090)

(assert (=> b!4015618 (= e!2490515 newSuffixResult!27)))

(declare-fun b!4015621 () Bool)

(assert (=> b!4015621 (= e!2490516 (or (not (= newSuffixResult!27 Nil!42966)) (= lt!1423226 lt!1423134)))))

(declare-fun d!1189157 () Bool)

(assert (=> d!1189157 e!2490516))

(declare-fun res!1632911 () Bool)

(assert (=> d!1189157 (=> (not res!1632911) (not e!2490516))))

(assert (=> d!1189157 (= res!1632911 (= (content!6519 lt!1423226) ((_ map or) (content!6519 lt!1423134) (content!6519 newSuffixResult!27))))))

(assert (=> d!1189157 (= lt!1423226 e!2490515)))

(declare-fun c!694230 () Bool)

(assert (=> d!1189157 (= c!694230 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189157 (= (++!11242 lt!1423134 newSuffixResult!27) lt!1423226)))

(declare-fun b!4015619 () Bool)

(assert (=> b!4015619 (= e!2490515 (Cons!42966 (h!48386 lt!1423134) (++!11242 (t!333327 lt!1423134) newSuffixResult!27)))))

(assert (= (and d!1189157 c!694230) b!4015618))

(assert (= (and d!1189157 (not c!694230)) b!4015619))

(assert (= (and d!1189157 res!1632911) b!4015620))

(assert (= (and b!4015620 res!1632910) b!4015621))

(declare-fun m!4603465 () Bool)

(assert (=> b!4015620 m!4603465))

(assert (=> b!4015620 m!4603007))

(declare-fun m!4603467 () Bool)

(assert (=> b!4015620 m!4603467))

(declare-fun m!4603469 () Bool)

(assert (=> d!1189157 m!4603469))

(assert (=> d!1189157 m!4603193))

(declare-fun m!4603471 () Bool)

(assert (=> d!1189157 m!4603471))

(declare-fun m!4603473 () Bool)

(assert (=> b!4015619 m!4603473))

(assert (=> b!4015386 d!1189157))

(declare-fun d!1189159 () Bool)

(assert (=> d!1189159 (= (inv!57391 (tag!7700 (rule!9888 token!484))) (= (mod (str.len (value!215573 (tag!7700 (rule!9888 token!484)))) 2) 0))))

(assert (=> b!4015364 d!1189159))

(declare-fun d!1189161 () Bool)

(declare-fun res!1632914 () Bool)

(declare-fun e!2490519 () Bool)

(assert (=> d!1189161 (=> (not res!1632914) (not e!2490519))))

(assert (=> d!1189161 (= res!1632914 (semiInverseModEq!2929 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))))))

(assert (=> d!1189161 (= (inv!57395 (transformation!6840 (rule!9888 token!484))) e!2490519)))

(declare-fun b!4015624 () Bool)

(assert (=> b!4015624 (= e!2490519 (equivClasses!2828 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))))))

(assert (= (and d!1189161 res!1632914) b!4015624))

(assert (=> d!1189161 m!4603297))

(assert (=> b!4015624 m!4603299))

(assert (=> b!4015364 d!1189161))

(declare-fun b!4015627 () Bool)

(declare-fun res!1632915 () Bool)

(declare-fun e!2490521 () Bool)

(assert (=> b!4015627 (=> (not res!1632915) (not e!2490521))))

(declare-fun lt!1423227 () List!43090)

(assert (=> b!4015627 (= res!1632915 (= (size!32128 lt!1423227) (+ (size!32128 lt!1423134) (size!32128 lt!1423140))))))

(declare-fun b!4015625 () Bool)

(declare-fun e!2490520 () List!43090)

(assert (=> b!4015625 (= e!2490520 lt!1423140)))

(declare-fun b!4015628 () Bool)

(assert (=> b!4015628 (= e!2490521 (or (not (= lt!1423140 Nil!42966)) (= lt!1423227 lt!1423134)))))

(declare-fun d!1189163 () Bool)

(assert (=> d!1189163 e!2490521))

(declare-fun res!1632916 () Bool)

(assert (=> d!1189163 (=> (not res!1632916) (not e!2490521))))

(assert (=> d!1189163 (= res!1632916 (= (content!6519 lt!1423227) ((_ map or) (content!6519 lt!1423134) (content!6519 lt!1423140))))))

(assert (=> d!1189163 (= lt!1423227 e!2490520)))

(declare-fun c!694231 () Bool)

(assert (=> d!1189163 (= c!694231 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189163 (= (++!11242 lt!1423134 lt!1423140) lt!1423227)))

(declare-fun b!4015626 () Bool)

(assert (=> b!4015626 (= e!2490520 (Cons!42966 (h!48386 lt!1423134) (++!11242 (t!333327 lt!1423134) lt!1423140)))))

(assert (= (and d!1189163 c!694231) b!4015625))

(assert (= (and d!1189163 (not c!694231)) b!4015626))

(assert (= (and d!1189163 res!1632916) b!4015627))

(assert (= (and b!4015627 res!1632915) b!4015628))

(declare-fun m!4603475 () Bool)

(assert (=> b!4015627 m!4603475))

(assert (=> b!4015627 m!4603007))

(assert (=> b!4015627 m!4603227))

(declare-fun m!4603477 () Bool)

(assert (=> d!1189163 m!4603477))

(assert (=> d!1189163 m!4603193))

(assert (=> d!1189163 m!4603231))

(declare-fun m!4603479 () Bool)

(assert (=> b!4015626 m!4603479))

(assert (=> b!4015363 d!1189163))

(declare-fun d!1189165 () Bool)

(declare-fun lt!1423228 () List!43090)

(assert (=> d!1189165 (= (++!11242 lt!1423134 lt!1423228) prefix!494)))

(declare-fun e!2490522 () List!43090)

(assert (=> d!1189165 (= lt!1423228 e!2490522)))

(declare-fun c!694232 () Bool)

(assert (=> d!1189165 (= c!694232 ((_ is Cons!42966) lt!1423134))))

(assert (=> d!1189165 (>= (size!32128 prefix!494) (size!32128 lt!1423134))))

(assert (=> d!1189165 (= (getSuffix!2352 prefix!494 lt!1423134) lt!1423228)))

(declare-fun b!4015629 () Bool)

(assert (=> b!4015629 (= e!2490522 (getSuffix!2352 (tail!6255 prefix!494) (t!333327 lt!1423134)))))

(declare-fun b!4015630 () Bool)

(assert (=> b!4015630 (= e!2490522 prefix!494)))

(assert (= (and d!1189165 c!694232) b!4015629))

(assert (= (and d!1189165 (not c!694232)) b!4015630))

(declare-fun m!4603481 () Bool)

(assert (=> d!1189165 m!4603481))

(assert (=> d!1189165 m!4603009))

(assert (=> d!1189165 m!4603007))

(declare-fun m!4603483 () Bool)

(assert (=> b!4015629 m!4603483))

(assert (=> b!4015629 m!4603483))

(declare-fun m!4603485 () Bool)

(assert (=> b!4015629 m!4603485))

(assert (=> b!4015363 d!1189165))

(declare-fun d!1189167 () Bool)

(declare-fun e!2490524 () Bool)

(assert (=> d!1189167 e!2490524))

(declare-fun res!1632919 () Bool)

(assert (=> d!1189167 (=> res!1632919 e!2490524)))

(declare-fun lt!1423229 () Bool)

(assert (=> d!1189167 (= res!1632919 (not lt!1423229))))

(declare-fun e!2490523 () Bool)

(assert (=> d!1189167 (= lt!1423229 e!2490523)))

(declare-fun res!1632920 () Bool)

(assert (=> d!1189167 (=> res!1632920 e!2490523)))

(assert (=> d!1189167 (= res!1632920 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189167 (= (isPrefix!3927 lt!1423134 prefix!494) lt!1423229)))

(declare-fun b!4015633 () Bool)

(declare-fun e!2490525 () Bool)

(assert (=> b!4015633 (= e!2490525 (isPrefix!3927 (tail!6255 lt!1423134) (tail!6255 prefix!494)))))

(declare-fun b!4015634 () Bool)

(assert (=> b!4015634 (= e!2490524 (>= (size!32128 prefix!494) (size!32128 lt!1423134)))))

(declare-fun b!4015631 () Bool)

(assert (=> b!4015631 (= e!2490523 e!2490525)))

(declare-fun res!1632917 () Bool)

(assert (=> b!4015631 (=> (not res!1632917) (not e!2490525))))

(assert (=> b!4015631 (= res!1632917 (not ((_ is Nil!42966) prefix!494)))))

(declare-fun b!4015632 () Bool)

(declare-fun res!1632918 () Bool)

(assert (=> b!4015632 (=> (not res!1632918) (not e!2490525))))

(assert (=> b!4015632 (= res!1632918 (= (head!8523 lt!1423134) (head!8523 prefix!494)))))

(assert (= (and d!1189167 (not res!1632920)) b!4015631))

(assert (= (and b!4015631 res!1632917) b!4015632))

(assert (= (and b!4015632 res!1632918) b!4015633))

(assert (= (and d!1189167 (not res!1632919)) b!4015634))

(declare-fun m!4603487 () Bool)

(assert (=> b!4015633 m!4603487))

(assert (=> b!4015633 m!4603483))

(assert (=> b!4015633 m!4603487))

(assert (=> b!4015633 m!4603483))

(declare-fun m!4603489 () Bool)

(assert (=> b!4015633 m!4603489))

(assert (=> b!4015634 m!4603009))

(assert (=> b!4015634 m!4603007))

(declare-fun m!4603491 () Bool)

(assert (=> b!4015632 m!4603491))

(declare-fun m!4603493 () Bool)

(assert (=> b!4015632 m!4603493))

(assert (=> b!4015363 d!1189167))

(declare-fun d!1189169 () Bool)

(assert (=> d!1189169 (isPrefix!3927 lt!1423134 prefix!494)))

(declare-fun lt!1423232 () Unit!62016)

(declare-fun choose!24278 (List!43090 List!43090 List!43090) Unit!62016)

(assert (=> d!1189169 (= lt!1423232 (choose!24278 prefix!494 lt!1423134 lt!1423097))))

(assert (=> d!1189169 (isPrefix!3927 prefix!494 lt!1423097)))

(assert (=> d!1189169 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!499 prefix!494 lt!1423134 lt!1423097) lt!1423232)))

(declare-fun bs!589608 () Bool)

(assert (= bs!589608 d!1189169))

(assert (=> bs!589608 m!4603123))

(declare-fun m!4603495 () Bool)

(assert (=> bs!589608 m!4603495))

(assert (=> bs!589608 m!4603051))

(assert (=> b!4015363 d!1189169))

(declare-fun b!4015637 () Bool)

(declare-fun res!1632921 () Bool)

(declare-fun e!2490527 () Bool)

(assert (=> b!4015637 (=> (not res!1632921) (not e!2490527))))

(declare-fun lt!1423233 () List!43090)

(assert (=> b!4015637 (= res!1632921 (= (size!32128 lt!1423233) (+ (size!32128 newSuffix!27) (size!32128 lt!1423096))))))

(declare-fun b!4015635 () Bool)

(declare-fun e!2490526 () List!43090)

(assert (=> b!4015635 (= e!2490526 lt!1423096)))

(declare-fun b!4015638 () Bool)

(assert (=> b!4015638 (= e!2490527 (or (not (= lt!1423096 Nil!42966)) (= lt!1423233 newSuffix!27)))))

(declare-fun d!1189171 () Bool)

(assert (=> d!1189171 e!2490527))

(declare-fun res!1632922 () Bool)

(assert (=> d!1189171 (=> (not res!1632922) (not e!2490527))))

(assert (=> d!1189171 (= res!1632922 (= (content!6519 lt!1423233) ((_ map or) (content!6519 newSuffix!27) (content!6519 lt!1423096))))))

(assert (=> d!1189171 (= lt!1423233 e!2490526)))

(declare-fun c!694233 () Bool)

(assert (=> d!1189171 (= c!694233 ((_ is Nil!42966) newSuffix!27))))

(assert (=> d!1189171 (= (++!11242 newSuffix!27 lt!1423096) lt!1423233)))

(declare-fun b!4015636 () Bool)

(assert (=> b!4015636 (= e!2490526 (Cons!42966 (h!48386 newSuffix!27) (++!11242 (t!333327 newSuffix!27) lt!1423096)))))

(assert (= (and d!1189171 c!694233) b!4015635))

(assert (= (and d!1189171 (not c!694233)) b!4015636))

(assert (= (and d!1189171 res!1632922) b!4015637))

(assert (= (and b!4015637 res!1632921) b!4015638))

(declare-fun m!4603497 () Bool)

(assert (=> b!4015637 m!4603497))

(assert (=> b!4015637 m!4603117))

(assert (=> b!4015637 m!4603441))

(declare-fun m!4603499 () Bool)

(assert (=> d!1189171 m!4603499))

(assert (=> d!1189171 m!4603461))

(assert (=> d!1189171 m!4603447))

(declare-fun m!4603501 () Bool)

(assert (=> b!4015636 m!4603501))

(assert (=> b!4015384 d!1189171))

(declare-fun d!1189173 () Bool)

(declare-fun lt!1423234 () List!43090)

(assert (=> d!1189173 (= (++!11242 newSuffix!27 lt!1423234) suffix!1299)))

(declare-fun e!2490528 () List!43090)

(assert (=> d!1189173 (= lt!1423234 e!2490528)))

(declare-fun c!694234 () Bool)

(assert (=> d!1189173 (= c!694234 ((_ is Cons!42966) newSuffix!27))))

(assert (=> d!1189173 (>= (size!32128 suffix!1299) (size!32128 newSuffix!27))))

(assert (=> d!1189173 (= (getSuffix!2352 suffix!1299 newSuffix!27) lt!1423234)))

(declare-fun b!4015639 () Bool)

(assert (=> b!4015639 (= e!2490528 (getSuffix!2352 (tail!6255 suffix!1299) (t!333327 newSuffix!27)))))

(declare-fun b!4015640 () Bool)

(assert (=> b!4015640 (= e!2490528 suffix!1299)))

(assert (= (and d!1189173 c!694234) b!4015639))

(assert (= (and d!1189173 (not c!694234)) b!4015640))

(declare-fun m!4603503 () Bool)

(assert (=> d!1189173 m!4603503))

(assert (=> d!1189173 m!4603115))

(assert (=> d!1189173 m!4603117))

(assert (=> b!4015639 m!4603397))

(assert (=> b!4015639 m!4603397))

(declare-fun m!4603505 () Bool)

(assert (=> b!4015639 m!4603505))

(assert (=> b!4015384 d!1189173))

(declare-fun d!1189175 () Bool)

(declare-fun e!2490530 () Bool)

(assert (=> d!1189175 e!2490530))

(declare-fun res!1632925 () Bool)

(assert (=> d!1189175 (=> res!1632925 e!2490530)))

(declare-fun lt!1423235 () Bool)

(assert (=> d!1189175 (= res!1632925 (not lt!1423235))))

(declare-fun e!2490529 () Bool)

(assert (=> d!1189175 (= lt!1423235 e!2490529)))

(declare-fun res!1632926 () Bool)

(assert (=> d!1189175 (=> res!1632926 e!2490529)))

(assert (=> d!1189175 (= res!1632926 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189175 (= (isPrefix!3927 lt!1423128 lt!1423097) lt!1423235)))

(declare-fun b!4015643 () Bool)

(declare-fun e!2490531 () Bool)

(assert (=> b!4015643 (= e!2490531 (isPrefix!3927 (tail!6255 lt!1423128) (tail!6255 lt!1423097)))))

(declare-fun b!4015644 () Bool)

(assert (=> b!4015644 (= e!2490530 (>= (size!32128 lt!1423097) (size!32128 lt!1423128)))))

(declare-fun b!4015641 () Bool)

(assert (=> b!4015641 (= e!2490529 e!2490531)))

(declare-fun res!1632923 () Bool)

(assert (=> b!4015641 (=> (not res!1632923) (not e!2490531))))

(assert (=> b!4015641 (= res!1632923 (not ((_ is Nil!42966) lt!1423097)))))

(declare-fun b!4015642 () Bool)

(declare-fun res!1632924 () Bool)

(assert (=> b!4015642 (=> (not res!1632924) (not e!2490531))))

(assert (=> b!4015642 (= res!1632924 (= (head!8523 lt!1423128) (head!8523 lt!1423097)))))

(assert (= (and d!1189175 (not res!1632926)) b!4015641))

(assert (= (and b!4015641 res!1632923) b!4015642))

(assert (= (and b!4015642 res!1632924) b!4015643))

(assert (= (and d!1189175 (not res!1632925)) b!4015644))

(declare-fun m!4603507 () Bool)

(assert (=> b!4015643 m!4603507))

(assert (=> b!4015643 m!4603333))

(assert (=> b!4015643 m!4603507))

(assert (=> b!4015643 m!4603333))

(declare-fun m!4603509 () Bool)

(assert (=> b!4015643 m!4603509))

(assert (=> b!4015644 m!4603331))

(assert (=> b!4015644 m!4603109))

(declare-fun m!4603511 () Bool)

(assert (=> b!4015642 m!4603511))

(assert (=> b!4015642 m!4603367))

(assert (=> b!4015362 d!1189175))

(declare-fun d!1189177 () Bool)

(declare-fun e!2490533 () Bool)

(assert (=> d!1189177 e!2490533))

(declare-fun res!1632929 () Bool)

(assert (=> d!1189177 (=> res!1632929 e!2490533)))

(declare-fun lt!1423236 () Bool)

(assert (=> d!1189177 (= res!1632929 (not lt!1423236))))

(declare-fun e!2490532 () Bool)

(assert (=> d!1189177 (= lt!1423236 e!2490532)))

(declare-fun res!1632930 () Bool)

(assert (=> d!1189177 (=> res!1632930 e!2490532)))

(assert (=> d!1189177 (= res!1632930 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189177 (= (isPrefix!3927 lt!1423128 lt!1423135) lt!1423236)))

(declare-fun b!4015647 () Bool)

(declare-fun e!2490534 () Bool)

(assert (=> b!4015647 (= e!2490534 (isPrefix!3927 (tail!6255 lt!1423128) (tail!6255 lt!1423135)))))

(declare-fun b!4015648 () Bool)

(assert (=> b!4015648 (= e!2490533 (>= (size!32128 lt!1423135) (size!32128 lt!1423128)))))

(declare-fun b!4015645 () Bool)

(assert (=> b!4015645 (= e!2490532 e!2490534)))

(declare-fun res!1632927 () Bool)

(assert (=> b!4015645 (=> (not res!1632927) (not e!2490534))))

(assert (=> b!4015645 (= res!1632927 (not ((_ is Nil!42966) lt!1423135)))))

(declare-fun b!4015646 () Bool)

(declare-fun res!1632928 () Bool)

(assert (=> b!4015646 (=> (not res!1632928) (not e!2490534))))

(assert (=> b!4015646 (= res!1632928 (= (head!8523 lt!1423128) (head!8523 lt!1423135)))))

(assert (= (and d!1189177 (not res!1632930)) b!4015645))

(assert (= (and b!4015645 res!1632927) b!4015646))

(assert (= (and b!4015646 res!1632928) b!4015647))

(assert (= (and d!1189177 (not res!1632929)) b!4015648))

(assert (=> b!4015647 m!4603507))

(declare-fun m!4603513 () Bool)

(assert (=> b!4015647 m!4603513))

(assert (=> b!4015647 m!4603507))

(assert (=> b!4015647 m!4603513))

(declare-fun m!4603515 () Bool)

(assert (=> b!4015647 m!4603515))

(declare-fun m!4603517 () Bool)

(assert (=> b!4015648 m!4603517))

(assert (=> b!4015648 m!4603109))

(assert (=> b!4015646 m!4603511))

(declare-fun m!4603519 () Bool)

(assert (=> b!4015646 m!4603519))

(assert (=> b!4015362 d!1189177))

(declare-fun d!1189179 () Bool)

(assert (=> d!1189179 (isPrefix!3927 lt!1423128 (++!11242 lt!1423122 lt!1423096))))

(declare-fun lt!1423241 () Unit!62016)

(declare-fun choose!24280 (List!43090 List!43090 List!43090) Unit!62016)

(assert (=> d!1189179 (= lt!1423241 (choose!24280 lt!1423128 lt!1423122 lt!1423096))))

(assert (=> d!1189179 (isPrefix!3927 lt!1423128 lt!1423122)))

(assert (=> d!1189179 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!740 lt!1423128 lt!1423122 lt!1423096) lt!1423241)))

(declare-fun bs!589609 () Bool)

(assert (= bs!589609 d!1189179))

(assert (=> bs!589609 m!4603063))

(assert (=> bs!589609 m!4603063))

(declare-fun m!4603521 () Bool)

(assert (=> bs!589609 m!4603521))

(declare-fun m!4603523 () Bool)

(assert (=> bs!589609 m!4603523))

(assert (=> bs!589609 m!4603129))

(assert (=> b!4015362 d!1189179))

(declare-fun b!4015651 () Bool)

(declare-fun res!1632931 () Bool)

(declare-fun e!2490536 () Bool)

(assert (=> b!4015651 (=> (not res!1632931) (not e!2490536))))

(declare-fun lt!1423242 () List!43090)

(assert (=> b!4015651 (= res!1632931 (= (size!32128 lt!1423242) (+ (size!32128 lt!1423128) (size!32128 lt!1423121))))))

(declare-fun b!4015649 () Bool)

(declare-fun e!2490535 () List!43090)

(assert (=> b!4015649 (= e!2490535 lt!1423121)))

(declare-fun b!4015652 () Bool)

(assert (=> b!4015652 (= e!2490536 (or (not (= lt!1423121 Nil!42966)) (= lt!1423242 lt!1423128)))))

(declare-fun d!1189181 () Bool)

(assert (=> d!1189181 e!2490536))

(declare-fun res!1632932 () Bool)

(assert (=> d!1189181 (=> (not res!1632932) (not e!2490536))))

(assert (=> d!1189181 (= res!1632932 (= (content!6519 lt!1423242) ((_ map or) (content!6519 lt!1423128) (content!6519 lt!1423121))))))

(assert (=> d!1189181 (= lt!1423242 e!2490535)))

(declare-fun c!694235 () Bool)

(assert (=> d!1189181 (= c!694235 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189181 (= (++!11242 lt!1423128 lt!1423121) lt!1423242)))

(declare-fun b!4015650 () Bool)

(assert (=> b!4015650 (= e!2490535 (Cons!42966 (h!48386 lt!1423128) (++!11242 (t!333327 lt!1423128) lt!1423121)))))

(assert (= (and d!1189181 c!694235) b!4015649))

(assert (= (and d!1189181 (not c!694235)) b!4015650))

(assert (= (and d!1189181 res!1632932) b!4015651))

(assert (= (and b!4015651 res!1632931) b!4015652))

(declare-fun m!4603525 () Bool)

(assert (=> b!4015651 m!4603525))

(assert (=> b!4015651 m!4603109))

(declare-fun m!4603527 () Bool)

(assert (=> b!4015651 m!4603527))

(declare-fun m!4603529 () Bool)

(assert (=> d!1189181 m!4603529))

(declare-fun m!4603531 () Bool)

(assert (=> d!1189181 m!4603531))

(declare-fun m!4603533 () Bool)

(assert (=> d!1189181 m!4603533))

(declare-fun m!4603535 () Bool)

(assert (=> b!4015650 m!4603535))

(assert (=> b!4015361 d!1189181))

(declare-fun d!1189183 () Bool)

(declare-fun lt!1423244 () List!43090)

(assert (=> d!1189183 (= (++!11242 lt!1423128 lt!1423244) lt!1423122)))

(declare-fun e!2490537 () List!43090)

(assert (=> d!1189183 (= lt!1423244 e!2490537)))

(declare-fun c!694236 () Bool)

(assert (=> d!1189183 (= c!694236 ((_ is Cons!42966) lt!1423128))))

(assert (=> d!1189183 (>= (size!32128 lt!1423122) (size!32128 lt!1423128))))

(assert (=> d!1189183 (= (getSuffix!2352 lt!1423122 lt!1423128) lt!1423244)))

(declare-fun b!4015653 () Bool)

(assert (=> b!4015653 (= e!2490537 (getSuffix!2352 (tail!6255 lt!1423122) (t!333327 lt!1423128)))))

(declare-fun b!4015654 () Bool)

(assert (=> b!4015654 (= e!2490537 lt!1423122)))

(assert (= (and d!1189183 c!694236) b!4015653))

(assert (= (and d!1189183 (not c!694236)) b!4015654))

(declare-fun m!4603537 () Bool)

(assert (=> d!1189183 m!4603537))

(assert (=> d!1189183 m!4603439))

(assert (=> d!1189183 m!4603109))

(declare-fun m!4603541 () Bool)

(assert (=> b!4015653 m!4603541))

(assert (=> b!4015653 m!4603541))

(declare-fun m!4603543 () Bool)

(assert (=> b!4015653 m!4603543))

(assert (=> b!4015361 d!1189183))

(declare-fun d!1189185 () Bool)

(assert (=> d!1189185 (= lt!1423108 suffixResult!105)))

(declare-fun lt!1423247 () Unit!62016)

(declare-fun choose!24281 (List!43090 List!43090 List!43090 List!43090 List!43090) Unit!62016)

(assert (=> d!1189185 (= lt!1423247 (choose!24281 lt!1423134 lt!1423108 lt!1423134 suffixResult!105 lt!1423097))))

(assert (=> d!1189185 (isPrefix!3927 lt!1423134 lt!1423097)))

(assert (=> d!1189185 (= (lemmaSamePrefixThenSameSuffix!2098 lt!1423134 lt!1423108 lt!1423134 suffixResult!105 lt!1423097) lt!1423247)))

(declare-fun bs!589611 () Bool)

(assert (= bs!589611 d!1189185))

(declare-fun m!4603545 () Bool)

(assert (=> bs!589611 m!4603545))

(assert (=> bs!589611 m!4603057))

(assert (=> b!4015382 d!1189185))

(declare-fun d!1189189 () Bool)

(declare-fun e!2490539 () Bool)

(assert (=> d!1189189 e!2490539))

(declare-fun res!1632935 () Bool)

(assert (=> d!1189189 (=> res!1632935 e!2490539)))

(declare-fun lt!1423248 () Bool)

(assert (=> d!1189189 (= res!1632935 (not lt!1423248))))

(declare-fun e!2490538 () Bool)

(assert (=> d!1189189 (= lt!1423248 e!2490538)))

(declare-fun res!1632936 () Bool)

(assert (=> d!1189189 (=> res!1632936 e!2490538)))

(assert (=> d!1189189 (= res!1632936 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189189 (= (isPrefix!3927 lt!1423134 lt!1423126) lt!1423248)))

(declare-fun b!4015657 () Bool)

(declare-fun e!2490540 () Bool)

(assert (=> b!4015657 (= e!2490540 (isPrefix!3927 (tail!6255 lt!1423134) (tail!6255 lt!1423126)))))

(declare-fun b!4015658 () Bool)

(assert (=> b!4015658 (= e!2490539 (>= (size!32128 lt!1423126) (size!32128 lt!1423134)))))

(declare-fun b!4015655 () Bool)

(assert (=> b!4015655 (= e!2490538 e!2490540)))

(declare-fun res!1632933 () Bool)

(assert (=> b!4015655 (=> (not res!1632933) (not e!2490540))))

(assert (=> b!4015655 (= res!1632933 (not ((_ is Nil!42966) lt!1423126)))))

(declare-fun b!4015656 () Bool)

(declare-fun res!1632934 () Bool)

(assert (=> b!4015656 (=> (not res!1632934) (not e!2490540))))

(assert (=> b!4015656 (= res!1632934 (= (head!8523 lt!1423134) (head!8523 lt!1423126)))))

(assert (= (and d!1189189 (not res!1632936)) b!4015655))

(assert (= (and b!4015655 res!1632933) b!4015656))

(assert (= (and b!4015656 res!1632934) b!4015657))

(assert (= (and d!1189189 (not res!1632935)) b!4015658))

(assert (=> b!4015657 m!4603487))

(declare-fun m!4603547 () Bool)

(assert (=> b!4015657 m!4603547))

(assert (=> b!4015657 m!4603487))

(assert (=> b!4015657 m!4603547))

(declare-fun m!4603549 () Bool)

(assert (=> b!4015657 m!4603549))

(declare-fun m!4603551 () Bool)

(assert (=> b!4015658 m!4603551))

(assert (=> b!4015658 m!4603007))

(assert (=> b!4015656 m!4603491))

(declare-fun m!4603553 () Bool)

(assert (=> b!4015656 m!4603553))

(assert (=> b!4015382 d!1189189))

(declare-fun d!1189191 () Bool)

(assert (=> d!1189191 (= (maxPrefixOneRule!2747 thiss!21717 (rule!9888 token!484) lt!1423097) (Some!9253 (tuple2!42111 (Token!12819 (apply!10037 (transformation!6840 (rule!9888 token!484)) (seqFromList!5065 lt!1423134)) (rule!9888 token!484) (size!32128 lt!1423134) lt!1423134) suffixResult!105)))))

(declare-fun lt!1423251 () Unit!62016)

(declare-fun choose!24282 (LexerInterface!6429 List!43092 List!43090 List!43090 List!43090 Rule!13480) Unit!62016)

(assert (=> d!1189191 (= lt!1423251 (choose!24282 thiss!21717 rules!2999 lt!1423134 lt!1423097 suffixResult!105 (rule!9888 token!484)))))

(assert (=> d!1189191 (not (isEmpty!25664 rules!2999))))

(assert (=> d!1189191 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1565 thiss!21717 rules!2999 lt!1423134 lt!1423097 suffixResult!105 (rule!9888 token!484)) lt!1423251)))

(declare-fun bs!589612 () Bool)

(assert (= bs!589612 d!1189191))

(assert (=> bs!589612 m!4602969))

(assert (=> bs!589612 m!4603007))

(declare-fun m!4603555 () Bool)

(assert (=> bs!589612 m!4603555))

(assert (=> bs!589612 m!4603015))

(assert (=> bs!589612 m!4602975))

(assert (=> bs!589612 m!4602977))

(assert (=> bs!589612 m!4602975))

(assert (=> b!4015382 d!1189191))

(declare-fun d!1189193 () Bool)

(declare-fun dynLambda!18231 (Int BalanceConc!25696) TokenValue!7070)

(assert (=> d!1189193 (= (apply!10037 (transformation!6840 (rule!9888 token!484)) (seqFromList!5065 lt!1423134)) (dynLambda!18231 (toValue!9348 (transformation!6840 (rule!9888 token!484))) (seqFromList!5065 lt!1423134)))))

(declare-fun b_lambda!117195 () Bool)

(assert (=> (not b_lambda!117195) (not d!1189193)))

(declare-fun t!333339 () Bool)

(declare-fun tb!241497 () Bool)

(assert (=> (and b!4015378 (= (toValue!9348 (transformation!6840 (rule!9888 token!484))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))) t!333339) tb!241497))

(declare-fun result!292678 () Bool)

(assert (=> tb!241497 (= result!292678 (inv!21 (dynLambda!18231 (toValue!9348 (transformation!6840 (rule!9888 token!484))) (seqFromList!5065 lt!1423134))))))

(declare-fun m!4603557 () Bool)

(assert (=> tb!241497 m!4603557))

(assert (=> d!1189193 t!333339))

(declare-fun b_and!308519 () Bool)

(assert (= b_and!308503 (and (=> t!333339 result!292678) b_and!308519)))

(declare-fun t!333341 () Bool)

(declare-fun tb!241499 () Bool)

(assert (=> (and b!4015385 (= (toValue!9348 (transformation!6840 (h!48388 rules!2999))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))) t!333341) tb!241499))

(declare-fun result!292682 () Bool)

(assert (= result!292682 result!292678))

(assert (=> d!1189193 t!333341))

(declare-fun b_and!308521 () Bool)

(assert (= b_and!308507 (and (=> t!333341 result!292682) b_and!308521)))

(assert (=> d!1189193 m!4602975))

(declare-fun m!4603559 () Bool)

(assert (=> d!1189193 m!4603559))

(assert (=> b!4015382 d!1189193))

(declare-fun d!1189195 () Bool)

(assert (=> d!1189195 (isPrefix!3927 lt!1423134 (++!11242 lt!1423134 lt!1423108))))

(declare-fun lt!1423254 () Unit!62016)

(declare-fun choose!24283 (List!43090 List!43090) Unit!62016)

(assert (=> d!1189195 (= lt!1423254 (choose!24283 lt!1423134 lt!1423108))))

(assert (=> d!1189195 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423134 lt!1423108) lt!1423254)))

(declare-fun bs!589613 () Bool)

(assert (= bs!589613 d!1189195))

(assert (=> bs!589613 m!4603137))

(assert (=> bs!589613 m!4603137))

(declare-fun m!4603561 () Bool)

(assert (=> bs!589613 m!4603561))

(declare-fun m!4603563 () Bool)

(assert (=> bs!589613 m!4603563))

(assert (=> b!4015382 d!1189195))

(declare-fun d!1189197 () Bool)

(declare-fun fromListB!2320 (List!43090) BalanceConc!25696)

(assert (=> d!1189197 (= (seqFromList!5065 lt!1423134) (fromListB!2320 lt!1423134))))

(declare-fun bs!589614 () Bool)

(assert (= bs!589614 d!1189197))

(declare-fun m!4603565 () Bool)

(assert (=> bs!589614 m!4603565))

(assert (=> b!4015382 d!1189197))

(declare-fun b!4015762 () Bool)

(declare-fun e!2490605 () Bool)

(declare-fun lt!1423306 () Option!9254)

(declare-fun get!14118 (Option!9254) tuple2!42110)

(assert (=> b!4015762 (= e!2490605 (= (size!32127 (_1!24189 (get!14118 lt!1423306))) (size!32128 (originalCharacters!7440 (_1!24189 (get!14118 lt!1423306))))))))

(declare-fun b!4015763 () Bool)

(declare-fun e!2490607 () Bool)

(assert (=> b!4015763 (= e!2490607 e!2490605)))

(declare-fun res!1633024 () Bool)

(assert (=> b!4015763 (=> (not res!1633024) (not e!2490605))))

(assert (=> b!4015763 (= res!1633024 (matchR!5706 (regex!6840 (rule!9888 token!484)) (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423306))))))))

(declare-fun b!4015765 () Bool)

(declare-fun e!2490608 () Option!9254)

(declare-datatypes ((tuple2!42114 0))(
  ( (tuple2!42115 (_1!24191 List!43090) (_2!24191 List!43090)) )
))
(declare-fun lt!1423308 () tuple2!42114)

(declare-fun size!32130 (BalanceConc!25696) Int)

(assert (=> b!4015765 (= e!2490608 (Some!9253 (tuple2!42111 (Token!12819 (apply!10037 (transformation!6840 (rule!9888 token!484)) (seqFromList!5065 (_1!24191 lt!1423308))) (rule!9888 token!484) (size!32130 (seqFromList!5065 (_1!24191 lt!1423308))) (_1!24191 lt!1423308)) (_2!24191 lt!1423308))))))

(declare-fun lt!1423309 () Unit!62016)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1336 (Regex!11745 List!43090) Unit!62016)

(assert (=> b!4015765 (= lt!1423309 (longestMatchIsAcceptedByMatchOrIsEmpty!1336 (regex!6840 (rule!9888 token!484)) lt!1423097))))

(declare-fun res!1633020 () Bool)

(declare-fun findLongestMatchInner!1363 (Regex!11745 List!43090 Int List!43090 List!43090 Int) tuple2!42114)

(assert (=> b!4015765 (= res!1633020 (isEmpty!25666 (_1!24191 (findLongestMatchInner!1363 (regex!6840 (rule!9888 token!484)) Nil!42966 (size!32128 Nil!42966) lt!1423097 lt!1423097 (size!32128 lt!1423097)))))))

(declare-fun e!2490606 () Bool)

(assert (=> b!4015765 (=> res!1633020 e!2490606)))

(assert (=> b!4015765 e!2490606))

(declare-fun lt!1423307 () Unit!62016)

(assert (=> b!4015765 (= lt!1423307 lt!1423309)))

(declare-fun lt!1423310 () Unit!62016)

(declare-fun lemmaSemiInverse!1883 (TokenValueInjection!13568 BalanceConc!25696) Unit!62016)

(assert (=> b!4015765 (= lt!1423310 (lemmaSemiInverse!1883 (transformation!6840 (rule!9888 token!484)) (seqFromList!5065 (_1!24191 lt!1423308))))))

(declare-fun b!4015766 () Bool)

(declare-fun res!1633018 () Bool)

(assert (=> b!4015766 (=> (not res!1633018) (not e!2490605))))

(assert (=> b!4015766 (= res!1633018 (= (++!11242 (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423306)))) (_2!24189 (get!14118 lt!1423306))) lt!1423097))))

(declare-fun b!4015767 () Bool)

(assert (=> b!4015767 (= e!2490608 None!9253)))

(declare-fun b!4015768 () Bool)

(declare-fun res!1633019 () Bool)

(assert (=> b!4015768 (=> (not res!1633019) (not e!2490605))))

(assert (=> b!4015768 (= res!1633019 (< (size!32128 (_2!24189 (get!14118 lt!1423306))) (size!32128 lt!1423097)))))

(declare-fun b!4015769 () Bool)

(assert (=> b!4015769 (= e!2490606 (matchR!5706 (regex!6840 (rule!9888 token!484)) (_1!24191 (findLongestMatchInner!1363 (regex!6840 (rule!9888 token!484)) Nil!42966 (size!32128 Nil!42966) lt!1423097 lt!1423097 (size!32128 lt!1423097)))))))

(declare-fun b!4015770 () Bool)

(declare-fun res!1633023 () Bool)

(assert (=> b!4015770 (=> (not res!1633023) (not e!2490605))))

(assert (=> b!4015770 (= res!1633023 (= (rule!9888 (_1!24189 (get!14118 lt!1423306))) (rule!9888 token!484)))))

(declare-fun b!4015764 () Bool)

(declare-fun res!1633021 () Bool)

(assert (=> b!4015764 (=> (not res!1633021) (not e!2490605))))

(assert (=> b!4015764 (= res!1633021 (= (value!215574 (_1!24189 (get!14118 lt!1423306))) (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (get!14118 lt!1423306)))) (seqFromList!5065 (originalCharacters!7440 (_1!24189 (get!14118 lt!1423306)))))))))

(declare-fun d!1189199 () Bool)

(assert (=> d!1189199 e!2490607))

(declare-fun res!1633022 () Bool)

(assert (=> d!1189199 (=> res!1633022 e!2490607)))

(declare-fun isEmpty!25668 (Option!9254) Bool)

(assert (=> d!1189199 (= res!1633022 (isEmpty!25668 lt!1423306))))

(assert (=> d!1189199 (= lt!1423306 e!2490608)))

(declare-fun c!694247 () Bool)

(assert (=> d!1189199 (= c!694247 (isEmpty!25666 (_1!24191 lt!1423308)))))

(declare-fun findLongestMatch!1276 (Regex!11745 List!43090) tuple2!42114)

(assert (=> d!1189199 (= lt!1423308 (findLongestMatch!1276 (regex!6840 (rule!9888 token!484)) lt!1423097))))

(assert (=> d!1189199 (ruleValid!2772 thiss!21717 (rule!9888 token!484))))

(assert (=> d!1189199 (= (maxPrefixOneRule!2747 thiss!21717 (rule!9888 token!484) lt!1423097) lt!1423306)))

(assert (= (and d!1189199 c!694247) b!4015767))

(assert (= (and d!1189199 (not c!694247)) b!4015765))

(assert (= (and b!4015765 (not res!1633020)) b!4015769))

(assert (= (and d!1189199 (not res!1633022)) b!4015763))

(assert (= (and b!4015763 res!1633024) b!4015766))

(assert (= (and b!4015766 res!1633018) b!4015768))

(assert (= (and b!4015768 res!1633019) b!4015770))

(assert (= (and b!4015770 res!1633023) b!4015764))

(assert (= (and b!4015764 res!1633021) b!4015762))

(declare-fun m!4603721 () Bool)

(assert (=> b!4015768 m!4603721))

(declare-fun m!4603723 () Bool)

(assert (=> b!4015768 m!4603723))

(assert (=> b!4015768 m!4603331))

(assert (=> b!4015762 m!4603721))

(declare-fun m!4603725 () Bool)

(assert (=> b!4015762 m!4603725))

(declare-fun m!4603727 () Bool)

(assert (=> b!4015769 m!4603727))

(assert (=> b!4015769 m!4603331))

(assert (=> b!4015769 m!4603727))

(assert (=> b!4015769 m!4603331))

(declare-fun m!4603729 () Bool)

(assert (=> b!4015769 m!4603729))

(declare-fun m!4603731 () Bool)

(assert (=> b!4015769 m!4603731))

(assert (=> b!4015764 m!4603721))

(declare-fun m!4603733 () Bool)

(assert (=> b!4015764 m!4603733))

(assert (=> b!4015764 m!4603733))

(declare-fun m!4603735 () Bool)

(assert (=> b!4015764 m!4603735))

(declare-fun m!4603737 () Bool)

(assert (=> d!1189199 m!4603737))

(declare-fun m!4603739 () Bool)

(assert (=> d!1189199 m!4603739))

(declare-fun m!4603741 () Bool)

(assert (=> d!1189199 m!4603741))

(assert (=> d!1189199 m!4603027))

(assert (=> b!4015766 m!4603721))

(declare-fun m!4603743 () Bool)

(assert (=> b!4015766 m!4603743))

(assert (=> b!4015766 m!4603743))

(declare-fun m!4603745 () Bool)

(assert (=> b!4015766 m!4603745))

(assert (=> b!4015766 m!4603745))

(declare-fun m!4603747 () Bool)

(assert (=> b!4015766 m!4603747))

(assert (=> b!4015770 m!4603721))

(assert (=> b!4015763 m!4603721))

(assert (=> b!4015763 m!4603743))

(assert (=> b!4015763 m!4603743))

(assert (=> b!4015763 m!4603745))

(assert (=> b!4015763 m!4603745))

(declare-fun m!4603749 () Bool)

(assert (=> b!4015763 m!4603749))

(declare-fun m!4603751 () Bool)

(assert (=> b!4015765 m!4603751))

(declare-fun m!4603753 () Bool)

(assert (=> b!4015765 m!4603753))

(assert (=> b!4015765 m!4603727))

(assert (=> b!4015765 m!4603331))

(assert (=> b!4015765 m!4603729))

(assert (=> b!4015765 m!4603751))

(declare-fun m!4603755 () Bool)

(assert (=> b!4015765 m!4603755))

(assert (=> b!4015765 m!4603331))

(declare-fun m!4603757 () Bool)

(assert (=> b!4015765 m!4603757))

(assert (=> b!4015765 m!4603751))

(declare-fun m!4603759 () Bool)

(assert (=> b!4015765 m!4603759))

(assert (=> b!4015765 m!4603751))

(declare-fun m!4603761 () Bool)

(assert (=> b!4015765 m!4603761))

(assert (=> b!4015765 m!4603727))

(assert (=> b!4015382 d!1189199))

(declare-fun b!4015783 () Bool)

(declare-fun res!1633031 () Bool)

(declare-fun e!2490615 () Bool)

(assert (=> b!4015783 (=> (not res!1633031) (not e!2490615))))

(declare-fun lt!1423311 () List!43090)

(assert (=> b!4015783 (= res!1633031 (= (size!32128 lt!1423311) (+ (size!32128 lt!1423128) (size!32128 (_2!24189 (v!39623 lt!1423099))))))))

(declare-fun b!4015781 () Bool)

(declare-fun e!2490614 () List!43090)

(assert (=> b!4015781 (= e!2490614 (_2!24189 (v!39623 lt!1423099)))))

(declare-fun b!4015784 () Bool)

(assert (=> b!4015784 (= e!2490615 (or (not (= (_2!24189 (v!39623 lt!1423099)) Nil!42966)) (= lt!1423311 lt!1423128)))))

(declare-fun d!1189251 () Bool)

(assert (=> d!1189251 e!2490615))

(declare-fun res!1633032 () Bool)

(assert (=> d!1189251 (=> (not res!1633032) (not e!2490615))))

(assert (=> d!1189251 (= res!1633032 (= (content!6519 lt!1423311) ((_ map or) (content!6519 lt!1423128) (content!6519 (_2!24189 (v!39623 lt!1423099))))))))

(assert (=> d!1189251 (= lt!1423311 e!2490614)))

(declare-fun c!694248 () Bool)

(assert (=> d!1189251 (= c!694248 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189251 (= (++!11242 lt!1423128 (_2!24189 (v!39623 lt!1423099))) lt!1423311)))

(declare-fun b!4015782 () Bool)

(assert (=> b!4015782 (= e!2490614 (Cons!42966 (h!48386 lt!1423128) (++!11242 (t!333327 lt!1423128) (_2!24189 (v!39623 lt!1423099)))))))

(assert (= (and d!1189251 c!694248) b!4015781))

(assert (= (and d!1189251 (not c!694248)) b!4015782))

(assert (= (and d!1189251 res!1633032) b!4015783))

(assert (= (and b!4015783 res!1633031) b!4015784))

(declare-fun m!4603767 () Bool)

(assert (=> b!4015783 m!4603767))

(assert (=> b!4015783 m!4603109))

(declare-fun m!4603769 () Bool)

(assert (=> b!4015783 m!4603769))

(declare-fun m!4603771 () Bool)

(assert (=> d!1189251 m!4603771))

(assert (=> d!1189251 m!4603531))

(declare-fun m!4603775 () Bool)

(assert (=> d!1189251 m!4603775))

(declare-fun m!4603777 () Bool)

(assert (=> b!4015782 m!4603777))

(assert (=> b!4015360 d!1189251))

(declare-fun b!4015788 () Bool)

(declare-fun res!1633033 () Bool)

(declare-fun e!2490618 () Bool)

(assert (=> b!4015788 (=> (not res!1633033) (not e!2490618))))

(declare-fun lt!1423312 () List!43090)

(assert (=> b!4015788 (= res!1633033 (= (size!32128 lt!1423312) (+ (size!32128 lt!1423128) (size!32128 newSuffixResult!27))))))

(declare-fun b!4015786 () Bool)

(declare-fun e!2490617 () List!43090)

(assert (=> b!4015786 (= e!2490617 newSuffixResult!27)))

(declare-fun b!4015789 () Bool)

(assert (=> b!4015789 (= e!2490618 (or (not (= newSuffixResult!27 Nil!42966)) (= lt!1423312 lt!1423128)))))

(declare-fun d!1189253 () Bool)

(assert (=> d!1189253 e!2490618))

(declare-fun res!1633034 () Bool)

(assert (=> d!1189253 (=> (not res!1633034) (not e!2490618))))

(assert (=> d!1189253 (= res!1633034 (= (content!6519 lt!1423312) ((_ map or) (content!6519 lt!1423128) (content!6519 newSuffixResult!27))))))

(assert (=> d!1189253 (= lt!1423312 e!2490617)))

(declare-fun c!694249 () Bool)

(assert (=> d!1189253 (= c!694249 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189253 (= (++!11242 lt!1423128 newSuffixResult!27) lt!1423312)))

(declare-fun b!4015787 () Bool)

(assert (=> b!4015787 (= e!2490617 (Cons!42966 (h!48386 lt!1423128) (++!11242 (t!333327 lt!1423128) newSuffixResult!27)))))

(assert (= (and d!1189253 c!694249) b!4015786))

(assert (= (and d!1189253 (not c!694249)) b!4015787))

(assert (= (and d!1189253 res!1633034) b!4015788))

(assert (= (and b!4015788 res!1633033) b!4015789))

(declare-fun m!4603783 () Bool)

(assert (=> b!4015788 m!4603783))

(assert (=> b!4015788 m!4603109))

(assert (=> b!4015788 m!4603467))

(declare-fun m!4603785 () Bool)

(assert (=> d!1189253 m!4603785))

(assert (=> d!1189253 m!4603531))

(assert (=> d!1189253 m!4603471))

(declare-fun m!4603787 () Bool)

(assert (=> b!4015787 m!4603787))

(assert (=> b!4015360 d!1189253))

(declare-fun d!1189257 () Bool)

(assert (=> d!1189257 (= (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (seqFromList!5065 lt!1423128)) (dynLambda!18231 (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (seqFromList!5065 lt!1423128)))))

(declare-fun b_lambda!117199 () Bool)

(assert (=> (not b_lambda!117199) (not d!1189257)))

(declare-fun t!333347 () Bool)

(declare-fun tb!241505 () Bool)

(assert (=> (and b!4015378 (= (toValue!9348 (transformation!6840 (rule!9888 token!484))) (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))) t!333347) tb!241505))

(declare-fun result!292690 () Bool)

(assert (=> tb!241505 (= result!292690 (inv!21 (dynLambda!18231 (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (seqFromList!5065 lt!1423128))))))

(declare-fun m!4603803 () Bool)

(assert (=> tb!241505 m!4603803))

(assert (=> d!1189257 t!333347))

(declare-fun b_and!308527 () Bool)

(assert (= b_and!308519 (and (=> t!333347 result!292690) b_and!308527)))

(declare-fun tb!241507 () Bool)

(declare-fun t!333349 () Bool)

(assert (=> (and b!4015385 (= (toValue!9348 (transformation!6840 (h!48388 rules!2999))) (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))) t!333349) tb!241507))

(declare-fun result!292692 () Bool)

(assert (= result!292692 result!292690))

(assert (=> d!1189257 t!333349))

(declare-fun b_and!308529 () Bool)

(assert (= b_and!308521 (and (=> t!333349 result!292692) b_and!308529)))

(assert (=> d!1189257 m!4603077))

(declare-fun m!4603805 () Bool)

(assert (=> d!1189257 m!4603805))

(assert (=> b!4015360 d!1189257))

(declare-fun b!4015800 () Bool)

(declare-fun e!2490626 () Bool)

(declare-fun lt!1423316 () Option!9254)

(assert (=> b!4015800 (= e!2490626 (= (size!32127 (_1!24189 (get!14118 lt!1423316))) (size!32128 (originalCharacters!7440 (_1!24189 (get!14118 lt!1423316))))))))

(declare-fun b!4015801 () Bool)

(declare-fun e!2490628 () Bool)

(assert (=> b!4015801 (= e!2490628 e!2490626)))

(declare-fun res!1633047 () Bool)

(assert (=> b!4015801 (=> (not res!1633047) (not e!2490626))))

(assert (=> b!4015801 (= res!1633047 (matchR!5706 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423316))))))))

(declare-fun b!4015803 () Bool)

(declare-fun e!2490629 () Option!9254)

(declare-fun lt!1423318 () tuple2!42114)

(assert (=> b!4015803 (= e!2490629 (Some!9253 (tuple2!42111 (Token!12819 (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (seqFromList!5065 (_1!24191 lt!1423318))) (rule!9888 (_1!24189 (v!39623 lt!1423099))) (size!32130 (seqFromList!5065 (_1!24191 lt!1423318))) (_1!24191 lt!1423318)) (_2!24191 lt!1423318))))))

(declare-fun lt!1423319 () Unit!62016)

(assert (=> b!4015803 (= lt!1423319 (longestMatchIsAcceptedByMatchOrIsEmpty!1336 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) lt!1423122))))

(declare-fun res!1633043 () Bool)

(assert (=> b!4015803 (= res!1633043 (isEmpty!25666 (_1!24191 (findLongestMatchInner!1363 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) Nil!42966 (size!32128 Nil!42966) lt!1423122 lt!1423122 (size!32128 lt!1423122)))))))

(declare-fun e!2490627 () Bool)

(assert (=> b!4015803 (=> res!1633043 e!2490627)))

(assert (=> b!4015803 e!2490627))

(declare-fun lt!1423317 () Unit!62016)

(assert (=> b!4015803 (= lt!1423317 lt!1423319)))

(declare-fun lt!1423320 () Unit!62016)

(assert (=> b!4015803 (= lt!1423320 (lemmaSemiInverse!1883 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (seqFromList!5065 (_1!24191 lt!1423318))))))

(declare-fun b!4015804 () Bool)

(declare-fun res!1633041 () Bool)

(assert (=> b!4015804 (=> (not res!1633041) (not e!2490626))))

(assert (=> b!4015804 (= res!1633041 (= (++!11242 (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423316)))) (_2!24189 (get!14118 lt!1423316))) lt!1423122))))

(declare-fun b!4015805 () Bool)

(assert (=> b!4015805 (= e!2490629 None!9253)))

(declare-fun b!4015806 () Bool)

(declare-fun res!1633042 () Bool)

(assert (=> b!4015806 (=> (not res!1633042) (not e!2490626))))

(assert (=> b!4015806 (= res!1633042 (< (size!32128 (_2!24189 (get!14118 lt!1423316))) (size!32128 lt!1423122)))))

(declare-fun b!4015807 () Bool)

(assert (=> b!4015807 (= e!2490627 (matchR!5706 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (_1!24191 (findLongestMatchInner!1363 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) Nil!42966 (size!32128 Nil!42966) lt!1423122 lt!1423122 (size!32128 lt!1423122)))))))

(declare-fun b!4015808 () Bool)

(declare-fun res!1633046 () Bool)

(assert (=> b!4015808 (=> (not res!1633046) (not e!2490626))))

(assert (=> b!4015808 (= res!1633046 (= (rule!9888 (_1!24189 (get!14118 lt!1423316))) (rule!9888 (_1!24189 (v!39623 lt!1423099)))))))

(declare-fun b!4015802 () Bool)

(declare-fun res!1633044 () Bool)

(assert (=> b!4015802 (=> (not res!1633044) (not e!2490626))))

(assert (=> b!4015802 (= res!1633044 (= (value!215574 (_1!24189 (get!14118 lt!1423316))) (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (get!14118 lt!1423316)))) (seqFromList!5065 (originalCharacters!7440 (_1!24189 (get!14118 lt!1423316)))))))))

(declare-fun d!1189263 () Bool)

(assert (=> d!1189263 e!2490628))

(declare-fun res!1633045 () Bool)

(assert (=> d!1189263 (=> res!1633045 e!2490628)))

(assert (=> d!1189263 (= res!1633045 (isEmpty!25668 lt!1423316))))

(assert (=> d!1189263 (= lt!1423316 e!2490629)))

(declare-fun c!694252 () Bool)

(assert (=> d!1189263 (= c!694252 (isEmpty!25666 (_1!24191 lt!1423318)))))

(assert (=> d!1189263 (= lt!1423318 (findLongestMatch!1276 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) lt!1423122))))

(assert (=> d!1189263 (ruleValid!2772 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))))))

(assert (=> d!1189263 (= (maxPrefixOneRule!2747 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))) lt!1423122) lt!1423316)))

(assert (= (and d!1189263 c!694252) b!4015805))

(assert (= (and d!1189263 (not c!694252)) b!4015803))

(assert (= (and b!4015803 (not res!1633043)) b!4015807))

(assert (= (and d!1189263 (not res!1633045)) b!4015801))

(assert (= (and b!4015801 res!1633047) b!4015804))

(assert (= (and b!4015804 res!1633041) b!4015806))

(assert (= (and b!4015806 res!1633042) b!4015808))

(assert (= (and b!4015808 res!1633046) b!4015802))

(assert (= (and b!4015802 res!1633044) b!4015800))

(declare-fun m!4603809 () Bool)

(assert (=> b!4015806 m!4603809))

(declare-fun m!4603811 () Bool)

(assert (=> b!4015806 m!4603811))

(assert (=> b!4015806 m!4603439))

(assert (=> b!4015800 m!4603809))

(declare-fun m!4603813 () Bool)

(assert (=> b!4015800 m!4603813))

(assert (=> b!4015807 m!4603727))

(assert (=> b!4015807 m!4603439))

(assert (=> b!4015807 m!4603727))

(assert (=> b!4015807 m!4603439))

(declare-fun m!4603815 () Bool)

(assert (=> b!4015807 m!4603815))

(declare-fun m!4603817 () Bool)

(assert (=> b!4015807 m!4603817))

(assert (=> b!4015802 m!4603809))

(declare-fun m!4603819 () Bool)

(assert (=> b!4015802 m!4603819))

(assert (=> b!4015802 m!4603819))

(declare-fun m!4603821 () Bool)

(assert (=> b!4015802 m!4603821))

(declare-fun m!4603823 () Bool)

(assert (=> d!1189263 m!4603823))

(declare-fun m!4603825 () Bool)

(assert (=> d!1189263 m!4603825))

(declare-fun m!4603827 () Bool)

(assert (=> d!1189263 m!4603827))

(assert (=> d!1189263 m!4603087))

(assert (=> b!4015804 m!4603809))

(declare-fun m!4603829 () Bool)

(assert (=> b!4015804 m!4603829))

(assert (=> b!4015804 m!4603829))

(declare-fun m!4603831 () Bool)

(assert (=> b!4015804 m!4603831))

(assert (=> b!4015804 m!4603831))

(declare-fun m!4603833 () Bool)

(assert (=> b!4015804 m!4603833))

(assert (=> b!4015808 m!4603809))

(assert (=> b!4015801 m!4603809))

(assert (=> b!4015801 m!4603829))

(assert (=> b!4015801 m!4603829))

(assert (=> b!4015801 m!4603831))

(assert (=> b!4015801 m!4603831))

(declare-fun m!4603835 () Bool)

(assert (=> b!4015801 m!4603835))

(declare-fun m!4603839 () Bool)

(assert (=> b!4015803 m!4603839))

(declare-fun m!4603841 () Bool)

(assert (=> b!4015803 m!4603841))

(assert (=> b!4015803 m!4603727))

(assert (=> b!4015803 m!4603439))

(assert (=> b!4015803 m!4603815))

(assert (=> b!4015803 m!4603839))

(declare-fun m!4603843 () Bool)

(assert (=> b!4015803 m!4603843))

(assert (=> b!4015803 m!4603439))

(declare-fun m!4603845 () Bool)

(assert (=> b!4015803 m!4603845))

(assert (=> b!4015803 m!4603839))

(declare-fun m!4603849 () Bool)

(assert (=> b!4015803 m!4603849))

(assert (=> b!4015803 m!4603839))

(declare-fun m!4603851 () Bool)

(assert (=> b!4015803 m!4603851))

(assert (=> b!4015803 m!4603727))

(assert (=> b!4015360 d!1189263))

(declare-fun d!1189271 () Bool)

(assert (=> d!1189271 (isPrefix!3927 lt!1423128 (++!11242 lt!1423128 (_2!24189 (v!39623 lt!1423099))))))

(declare-fun lt!1423326 () Unit!62016)

(assert (=> d!1189271 (= lt!1423326 (choose!24283 lt!1423128 (_2!24189 (v!39623 lt!1423099))))))

(assert (=> d!1189271 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423128 (_2!24189 (v!39623 lt!1423099))) lt!1423326)))

(declare-fun bs!589622 () Bool)

(assert (= bs!589622 d!1189271))

(assert (=> bs!589622 m!4603099))

(assert (=> bs!589622 m!4603099))

(declare-fun m!4603855 () Bool)

(assert (=> bs!589622 m!4603855))

(declare-fun m!4603857 () Bool)

(assert (=> bs!589622 m!4603857))

(assert (=> b!4015360 d!1189271))

(declare-fun d!1189275 () Bool)

(assert (=> d!1189275 (isPrefix!3927 lt!1423128 (++!11242 lt!1423128 newSuffixResult!27))))

(declare-fun lt!1423327 () Unit!62016)

(assert (=> d!1189275 (= lt!1423327 (choose!24283 lt!1423128 newSuffixResult!27))))

(assert (=> d!1189275 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423128 newSuffixResult!27) lt!1423327)))

(declare-fun bs!589623 () Bool)

(assert (= bs!589623 d!1189275))

(assert (=> bs!589623 m!4603079))

(assert (=> bs!589623 m!4603079))

(assert (=> bs!589623 m!4603081))

(declare-fun m!4603859 () Bool)

(assert (=> bs!589623 m!4603859))

(assert (=> b!4015360 d!1189275))

(declare-fun d!1189277 () Bool)

(declare-fun e!2490632 () Bool)

(assert (=> d!1189277 e!2490632))

(declare-fun res!1633048 () Bool)

(assert (=> d!1189277 (=> (not res!1633048) (not e!2490632))))

(assert (=> d!1189277 (= res!1633048 (semiInverseModEq!2929 (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))))))

(declare-fun Unit!62021 () Unit!62016)

(assert (=> d!1189277 (= (lemmaInv!1055 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) Unit!62021)))

(declare-fun b!4015813 () Bool)

(assert (=> b!4015813 (= e!2490632 (equivClasses!2828 (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))))))

(assert (= (and d!1189277 res!1633048) b!4015813))

(declare-fun m!4603861 () Bool)

(assert (=> d!1189277 m!4603861))

(declare-fun m!4603863 () Bool)

(assert (=> b!4015813 m!4603863))

(assert (=> b!4015360 d!1189277))

(declare-fun d!1189279 () Bool)

(assert (=> d!1189279 (ruleValid!2772 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))))))

(declare-fun lt!1423328 () Unit!62016)

(assert (=> d!1189279 (= lt!1423328 (choose!24272 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))) rules!2999))))

(assert (=> d!1189279 (contains!8542 rules!2999 (rule!9888 (_1!24189 (v!39623 lt!1423099))))))

(assert (=> d!1189279 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1846 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))) rules!2999) lt!1423328)))

(declare-fun bs!589624 () Bool)

(assert (= bs!589624 d!1189279))

(assert (=> bs!589624 m!4603087))

(declare-fun m!4603865 () Bool)

(assert (=> bs!589624 m!4603865))

(declare-fun m!4603867 () Bool)

(assert (=> bs!589624 m!4603867))

(assert (=> b!4015360 d!1189279))

(declare-fun d!1189281 () Bool)

(declare-fun e!2490634 () Bool)

(assert (=> d!1189281 e!2490634))

(declare-fun res!1633051 () Bool)

(assert (=> d!1189281 (=> res!1633051 e!2490634)))

(declare-fun lt!1423329 () Bool)

(assert (=> d!1189281 (= res!1633051 (not lt!1423329))))

(declare-fun e!2490633 () Bool)

(assert (=> d!1189281 (= lt!1423329 e!2490633)))

(declare-fun res!1633052 () Bool)

(assert (=> d!1189281 (=> res!1633052 e!2490633)))

(assert (=> d!1189281 (= res!1633052 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189281 (= (isPrefix!3927 lt!1423128 (++!11242 lt!1423128 newSuffixResult!27)) lt!1423329)))

(declare-fun b!4015816 () Bool)

(declare-fun e!2490635 () Bool)

(assert (=> b!4015816 (= e!2490635 (isPrefix!3927 (tail!6255 lt!1423128) (tail!6255 (++!11242 lt!1423128 newSuffixResult!27))))))

(declare-fun b!4015817 () Bool)

(assert (=> b!4015817 (= e!2490634 (>= (size!32128 (++!11242 lt!1423128 newSuffixResult!27)) (size!32128 lt!1423128)))))

(declare-fun b!4015814 () Bool)

(assert (=> b!4015814 (= e!2490633 e!2490635)))

(declare-fun res!1633049 () Bool)

(assert (=> b!4015814 (=> (not res!1633049) (not e!2490635))))

(assert (=> b!4015814 (= res!1633049 (not ((_ is Nil!42966) (++!11242 lt!1423128 newSuffixResult!27))))))

(declare-fun b!4015815 () Bool)

(declare-fun res!1633050 () Bool)

(assert (=> b!4015815 (=> (not res!1633050) (not e!2490635))))

(assert (=> b!4015815 (= res!1633050 (= (head!8523 lt!1423128) (head!8523 (++!11242 lt!1423128 newSuffixResult!27))))))

(assert (= (and d!1189281 (not res!1633052)) b!4015814))

(assert (= (and b!4015814 res!1633049) b!4015815))

(assert (= (and b!4015815 res!1633050) b!4015816))

(assert (= (and d!1189281 (not res!1633051)) b!4015817))

(assert (=> b!4015816 m!4603507))

(assert (=> b!4015816 m!4603079))

(declare-fun m!4603871 () Bool)

(assert (=> b!4015816 m!4603871))

(assert (=> b!4015816 m!4603507))

(assert (=> b!4015816 m!4603871))

(declare-fun m!4603873 () Bool)

(assert (=> b!4015816 m!4603873))

(assert (=> b!4015817 m!4603079))

(declare-fun m!4603875 () Bool)

(assert (=> b!4015817 m!4603875))

(assert (=> b!4015817 m!4603109))

(assert (=> b!4015815 m!4603511))

(assert (=> b!4015815 m!4603079))

(declare-fun m!4603877 () Bool)

(assert (=> b!4015815 m!4603877))

(assert (=> b!4015360 d!1189281))

(declare-fun d!1189285 () Bool)

(declare-fun e!2490637 () Bool)

(assert (=> d!1189285 e!2490637))

(declare-fun res!1633055 () Bool)

(assert (=> d!1189285 (=> res!1633055 e!2490637)))

(declare-fun lt!1423330 () Bool)

(assert (=> d!1189285 (= res!1633055 (not lt!1423330))))

(declare-fun e!2490636 () Bool)

(assert (=> d!1189285 (= lt!1423330 e!2490636)))

(declare-fun res!1633056 () Bool)

(assert (=> d!1189285 (=> res!1633056 e!2490636)))

(assert (=> d!1189285 (= res!1633056 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189285 (= (isPrefix!3927 lt!1423128 lt!1423119) lt!1423330)))

(declare-fun b!4015820 () Bool)

(declare-fun e!2490638 () Bool)

(assert (=> b!4015820 (= e!2490638 (isPrefix!3927 (tail!6255 lt!1423128) (tail!6255 lt!1423119)))))

(declare-fun b!4015821 () Bool)

(assert (=> b!4015821 (= e!2490637 (>= (size!32128 lt!1423119) (size!32128 lt!1423128)))))

(declare-fun b!4015818 () Bool)

(assert (=> b!4015818 (= e!2490636 e!2490638)))

(declare-fun res!1633053 () Bool)

(assert (=> b!4015818 (=> (not res!1633053) (not e!2490638))))

(assert (=> b!4015818 (= res!1633053 (not ((_ is Nil!42966) lt!1423119)))))

(declare-fun b!4015819 () Bool)

(declare-fun res!1633054 () Bool)

(assert (=> b!4015819 (=> (not res!1633054) (not e!2490638))))

(assert (=> b!4015819 (= res!1633054 (= (head!8523 lt!1423128) (head!8523 lt!1423119)))))

(assert (= (and d!1189285 (not res!1633056)) b!4015818))

(assert (= (and b!4015818 res!1633053) b!4015819))

(assert (= (and b!4015819 res!1633054) b!4015820))

(assert (= (and d!1189285 (not res!1633055)) b!4015821))

(assert (=> b!4015820 m!4603507))

(declare-fun m!4603879 () Bool)

(assert (=> b!4015820 m!4603879))

(assert (=> b!4015820 m!4603507))

(assert (=> b!4015820 m!4603879))

(declare-fun m!4603881 () Bool)

(assert (=> b!4015820 m!4603881))

(declare-fun m!4603883 () Bool)

(assert (=> b!4015821 m!4603883))

(assert (=> b!4015821 m!4603109))

(assert (=> b!4015819 m!4603511))

(declare-fun m!4603885 () Bool)

(assert (=> b!4015819 m!4603885))

(assert (=> b!4015360 d!1189285))

(declare-fun d!1189287 () Bool)

(declare-fun lt!1423331 () Int)

(assert (=> d!1189287 (>= lt!1423331 0)))

(declare-fun e!2490639 () Int)

(assert (=> d!1189287 (= lt!1423331 e!2490639)))

(declare-fun c!694255 () Bool)

(assert (=> d!1189287 (= c!694255 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189287 (= (size!32128 lt!1423128) lt!1423331)))

(declare-fun b!4015822 () Bool)

(assert (=> b!4015822 (= e!2490639 0)))

(declare-fun b!4015823 () Bool)

(assert (=> b!4015823 (= e!2490639 (+ 1 (size!32128 (t!333327 lt!1423128))))))

(assert (= (and d!1189287 c!694255) b!4015822))

(assert (= (and d!1189287 (not c!694255)) b!4015823))

(declare-fun m!4603887 () Bool)

(assert (=> b!4015823 m!4603887))

(assert (=> b!4015360 d!1189287))

(declare-fun d!1189289 () Bool)

(declare-fun res!1633057 () Bool)

(declare-fun e!2490640 () Bool)

(assert (=> d!1189289 (=> (not res!1633057) (not e!2490640))))

(assert (=> d!1189289 (= res!1633057 (validRegex!5322 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))))))

(assert (=> d!1189289 (= (ruleValid!2772 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) e!2490640)))

(declare-fun b!4015824 () Bool)

(declare-fun res!1633058 () Bool)

(assert (=> b!4015824 (=> (not res!1633058) (not e!2490640))))

(assert (=> b!4015824 (= res!1633058 (not (nullable!4122 (regex!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))))))

(declare-fun b!4015825 () Bool)

(assert (=> b!4015825 (= e!2490640 (not (= (tag!7700 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (String!49069 ""))))))

(assert (= (and d!1189289 res!1633057) b!4015824))

(assert (= (and b!4015824 res!1633058) b!4015825))

(declare-fun m!4603889 () Bool)

(assert (=> d!1189289 m!4603889))

(declare-fun m!4603891 () Bool)

(assert (=> b!4015824 m!4603891))

(assert (=> b!4015360 d!1189289))

(declare-fun d!1189291 () Bool)

(declare-fun lt!1423339 () BalanceConc!25696)

(assert (=> d!1189291 (= (list!15972 lt!1423339) (originalCharacters!7440 (_1!24189 (v!39623 lt!1423099))))))

(assert (=> d!1189291 (= lt!1423339 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (value!215574 (_1!24189 (v!39623 lt!1423099)))))))

(assert (=> d!1189291 (= (charsOf!4656 (_1!24189 (v!39623 lt!1423099))) lt!1423339)))

(declare-fun b_lambda!117205 () Bool)

(assert (=> (not b_lambda!117205) (not d!1189291)))

(declare-fun tb!241513 () Bool)

(declare-fun t!333355 () Bool)

(assert (=> (and b!4015378 (= (toChars!9207 (transformation!6840 (rule!9888 token!484))) (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))) t!333355) tb!241513))

(declare-fun b!4015832 () Bool)

(declare-fun e!2490646 () Bool)

(declare-fun tp!1221028 () Bool)

(assert (=> b!4015832 (= e!2490646 (and (inv!57396 (c!694180 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (value!215574 (_1!24189 (v!39623 lt!1423099)))))) tp!1221028))))

(declare-fun result!292698 () Bool)

(assert (=> tb!241513 (= result!292698 (and (inv!57397 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099))))) (value!215574 (_1!24189 (v!39623 lt!1423099))))) e!2490646))))

(assert (= tb!241513 b!4015832))

(declare-fun m!4603915 () Bool)

(assert (=> b!4015832 m!4603915))

(declare-fun m!4603919 () Bool)

(assert (=> tb!241513 m!4603919))

(assert (=> d!1189291 t!333355))

(declare-fun b_and!308539 () Bool)

(assert (= b_and!308511 (and (=> t!333355 result!292698) b_and!308539)))

(declare-fun t!333357 () Bool)

(declare-fun tb!241515 () Bool)

(assert (=> (and b!4015385 (= (toChars!9207 (transformation!6840 (h!48388 rules!2999))) (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))) t!333357) tb!241515))

(declare-fun result!292700 () Bool)

(assert (= result!292700 result!292698))

(assert (=> d!1189291 t!333357))

(declare-fun b_and!308541 () Bool)

(assert (= b_and!308513 (and (=> t!333357 result!292700) b_and!308541)))

(declare-fun m!4603923 () Bool)

(assert (=> d!1189291 m!4603923))

(declare-fun m!4603925 () Bool)

(assert (=> d!1189291 m!4603925))

(assert (=> b!4015360 d!1189291))

(declare-fun d!1189303 () Bool)

(assert (=> d!1189303 (= (size!32127 token!484) (size!32128 (originalCharacters!7440 token!484)))))

(declare-fun Unit!62023 () Unit!62016)

(assert (=> d!1189303 (= (lemmaCharactersSize!1399 token!484) Unit!62023)))

(declare-fun bs!589629 () Bool)

(assert (= bs!589629 d!1189303))

(assert (=> bs!589629 m!4603037))

(assert (=> b!4015360 d!1189303))

(declare-fun d!1189311 () Bool)

(assert (=> d!1189311 (= (seqFromList!5065 lt!1423128) (fromListB!2320 lt!1423128))))

(declare-fun bs!589630 () Bool)

(assert (= bs!589630 d!1189311))

(declare-fun m!4603935 () Bool)

(assert (=> bs!589630 m!4603935))

(assert (=> b!4015360 d!1189311))

(declare-fun d!1189313 () Bool)

(declare-fun list!15974 (Conc!13051) List!43090)

(assert (=> d!1189313 (= (list!15972 (charsOf!4656 (_1!24189 (v!39623 lt!1423099)))) (list!15974 (c!694180 (charsOf!4656 (_1!24189 (v!39623 lt!1423099))))))))

(declare-fun bs!589632 () Bool)

(assert (= bs!589632 d!1189313))

(declare-fun m!4603945 () Bool)

(assert (=> bs!589632 m!4603945))

(assert (=> b!4015360 d!1189313))

(declare-fun d!1189319 () Bool)

(assert (=> d!1189319 (= (size!32127 (_1!24189 (v!39623 lt!1423099))) (size!32128 (originalCharacters!7440 (_1!24189 (v!39623 lt!1423099)))))))

(declare-fun Unit!62024 () Unit!62016)

(assert (=> d!1189319 (= (lemmaCharactersSize!1399 (_1!24189 (v!39623 lt!1423099))) Unit!62024)))

(declare-fun bs!589633 () Bool)

(assert (= bs!589633 d!1189319))

(declare-fun m!4603947 () Bool)

(assert (=> bs!589633 m!4603947))

(assert (=> b!4015360 d!1189319))

(declare-fun d!1189321 () Bool)

(assert (=> d!1189321 (= (maxPrefixOneRule!2747 thiss!21717 (rule!9888 (_1!24189 (v!39623 lt!1423099))) lt!1423122) (Some!9253 (tuple2!42111 (Token!12819 (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))) (seqFromList!5065 lt!1423128)) (rule!9888 (_1!24189 (v!39623 lt!1423099))) (size!32128 lt!1423128) lt!1423128) (_2!24189 (v!39623 lt!1423099)))))))

(declare-fun lt!1423346 () Unit!62016)

(assert (=> d!1189321 (= lt!1423346 (choose!24282 thiss!21717 rules!2999 lt!1423128 lt!1423122 (_2!24189 (v!39623 lt!1423099)) (rule!9888 (_1!24189 (v!39623 lt!1423099)))))))

(assert (=> d!1189321 (not (isEmpty!25664 rules!2999))))

(assert (=> d!1189321 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1565 thiss!21717 rules!2999 lt!1423128 lt!1423122 (_2!24189 (v!39623 lt!1423099)) (rule!9888 (_1!24189 (v!39623 lt!1423099)))) lt!1423346)))

(declare-fun bs!589634 () Bool)

(assert (= bs!589634 d!1189321))

(assert (=> bs!589634 m!4603107))

(assert (=> bs!589634 m!4603109))

(declare-fun m!4603959 () Bool)

(assert (=> bs!589634 m!4603959))

(assert (=> bs!589634 m!4603015))

(assert (=> bs!589634 m!4603077))

(assert (=> bs!589634 m!4603105))

(assert (=> bs!589634 m!4603077))

(assert (=> b!4015360 d!1189321))

(declare-fun d!1189325 () Bool)

(declare-fun e!2490720 () Bool)

(assert (=> d!1189325 e!2490720))

(declare-fun res!1633147 () Bool)

(assert (=> d!1189325 (=> res!1633147 e!2490720)))

(declare-fun lt!1423384 () Option!9254)

(assert (=> d!1189325 (= res!1633147 (isEmpty!25668 lt!1423384))))

(declare-fun e!2490722 () Option!9254)

(assert (=> d!1189325 (= lt!1423384 e!2490722)))

(declare-fun c!694275 () Bool)

(assert (=> d!1189325 (= c!694275 (and ((_ is Cons!42968) rules!2999) ((_ is Nil!42968) (t!333329 rules!2999))))))

(declare-fun lt!1423385 () Unit!62016)

(declare-fun lt!1423386 () Unit!62016)

(assert (=> d!1189325 (= lt!1423385 lt!1423386)))

(assert (=> d!1189325 (isPrefix!3927 lt!1423097 lt!1423097)))

(assert (=> d!1189325 (= lt!1423386 (lemmaIsPrefixRefl!2503 lt!1423097 lt!1423097))))

(declare-fun rulesValidInductive!2495 (LexerInterface!6429 List!43092) Bool)

(assert (=> d!1189325 (rulesValidInductive!2495 thiss!21717 rules!2999)))

(assert (=> d!1189325 (= (maxPrefix!3727 thiss!21717 rules!2999 lt!1423097) lt!1423384)))

(declare-fun b!4015981 () Bool)

(declare-fun res!1633149 () Bool)

(declare-fun e!2490721 () Bool)

(assert (=> b!4015981 (=> (not res!1633149) (not e!2490721))))

(assert (=> b!4015981 (= res!1633149 (= (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423384)))) (originalCharacters!7440 (_1!24189 (get!14118 lt!1423384)))))))

(declare-fun b!4015982 () Bool)

(declare-fun lt!1423387 () Option!9254)

(declare-fun lt!1423383 () Option!9254)

(assert (=> b!4015982 (= e!2490722 (ite (and ((_ is None!9253) lt!1423387) ((_ is None!9253) lt!1423383)) None!9253 (ite ((_ is None!9253) lt!1423383) lt!1423387 (ite ((_ is None!9253) lt!1423387) lt!1423383 (ite (>= (size!32127 (_1!24189 (v!39623 lt!1423387))) (size!32127 (_1!24189 (v!39623 lt!1423383)))) lt!1423387 lt!1423383)))))))

(declare-fun call!286550 () Option!9254)

(assert (=> b!4015982 (= lt!1423387 call!286550)))

(assert (=> b!4015982 (= lt!1423383 (maxPrefix!3727 thiss!21717 (t!333329 rules!2999) lt!1423097))))

(declare-fun b!4015983 () Bool)

(declare-fun res!1633148 () Bool)

(assert (=> b!4015983 (=> (not res!1633148) (not e!2490721))))

(assert (=> b!4015983 (= res!1633148 (matchR!5706 (regex!6840 (rule!9888 (_1!24189 (get!14118 lt!1423384)))) (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423384))))))))

(declare-fun bm!286545 () Bool)

(assert (=> bm!286545 (= call!286550 (maxPrefixOneRule!2747 thiss!21717 (h!48388 rules!2999) lt!1423097))))

(declare-fun b!4015984 () Bool)

(declare-fun res!1633150 () Bool)

(assert (=> b!4015984 (=> (not res!1633150) (not e!2490721))))

(assert (=> b!4015984 (= res!1633150 (< (size!32128 (_2!24189 (get!14118 lt!1423384))) (size!32128 lt!1423097)))))

(declare-fun b!4015985 () Bool)

(assert (=> b!4015985 (= e!2490721 (contains!8542 rules!2999 (rule!9888 (_1!24189 (get!14118 lt!1423384)))))))

(declare-fun b!4015986 () Bool)

(assert (=> b!4015986 (= e!2490722 call!286550)))

(declare-fun b!4015987 () Bool)

(declare-fun res!1633152 () Bool)

(assert (=> b!4015987 (=> (not res!1633152) (not e!2490721))))

(assert (=> b!4015987 (= res!1633152 (= (++!11242 (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423384)))) (_2!24189 (get!14118 lt!1423384))) lt!1423097))))

(declare-fun b!4015988 () Bool)

(declare-fun res!1633153 () Bool)

(assert (=> b!4015988 (=> (not res!1633153) (not e!2490721))))

(assert (=> b!4015988 (= res!1633153 (= (value!215574 (_1!24189 (get!14118 lt!1423384))) (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (get!14118 lt!1423384)))) (seqFromList!5065 (originalCharacters!7440 (_1!24189 (get!14118 lt!1423384)))))))))

(declare-fun b!4015989 () Bool)

(assert (=> b!4015989 (= e!2490720 e!2490721)))

(declare-fun res!1633151 () Bool)

(assert (=> b!4015989 (=> (not res!1633151) (not e!2490721))))

(declare-fun isDefined!7074 (Option!9254) Bool)

(assert (=> b!4015989 (= res!1633151 (isDefined!7074 lt!1423384))))

(assert (= (and d!1189325 c!694275) b!4015986))

(assert (= (and d!1189325 (not c!694275)) b!4015982))

(assert (= (or b!4015986 b!4015982) bm!286545))

(assert (= (and d!1189325 (not res!1633147)) b!4015989))

(assert (= (and b!4015989 res!1633151) b!4015981))

(assert (= (and b!4015981 res!1633149) b!4015984))

(assert (= (and b!4015984 res!1633150) b!4015987))

(assert (= (and b!4015987 res!1633152) b!4015988))

(assert (= (and b!4015988 res!1633153) b!4015983))

(assert (= (and b!4015983 res!1633148) b!4015985))

(declare-fun m!4604129 () Bool)

(assert (=> b!4015989 m!4604129))

(declare-fun m!4604131 () Bool)

(assert (=> b!4015985 m!4604131))

(declare-fun m!4604133 () Bool)

(assert (=> b!4015985 m!4604133))

(assert (=> b!4015987 m!4604131))

(declare-fun m!4604135 () Bool)

(assert (=> b!4015987 m!4604135))

(assert (=> b!4015987 m!4604135))

(declare-fun m!4604137 () Bool)

(assert (=> b!4015987 m!4604137))

(assert (=> b!4015987 m!4604137))

(declare-fun m!4604139 () Bool)

(assert (=> b!4015987 m!4604139))

(declare-fun m!4604141 () Bool)

(assert (=> b!4015982 m!4604141))

(assert (=> b!4015981 m!4604131))

(assert (=> b!4015981 m!4604135))

(assert (=> b!4015981 m!4604135))

(assert (=> b!4015981 m!4604137))

(declare-fun m!4604143 () Bool)

(assert (=> bm!286545 m!4604143))

(assert (=> b!4015984 m!4604131))

(declare-fun m!4604145 () Bool)

(assert (=> b!4015984 m!4604145))

(assert (=> b!4015984 m!4603331))

(assert (=> b!4015988 m!4604131))

(declare-fun m!4604147 () Bool)

(assert (=> b!4015988 m!4604147))

(assert (=> b!4015988 m!4604147))

(declare-fun m!4604149 () Bool)

(assert (=> b!4015988 m!4604149))

(assert (=> b!4015983 m!4604131))

(assert (=> b!4015983 m!4604135))

(assert (=> b!4015983 m!4604135))

(assert (=> b!4015983 m!4604137))

(assert (=> b!4015983 m!4604137))

(declare-fun m!4604151 () Bool)

(assert (=> b!4015983 m!4604151))

(declare-fun m!4604153 () Bool)

(assert (=> d!1189325 m!4604153))

(assert (=> d!1189325 m!4603003))

(assert (=> d!1189325 m!4603005))

(declare-fun m!4604155 () Bool)

(assert (=> d!1189325 m!4604155))

(assert (=> b!4015370 d!1189325))

(declare-fun b!4016003 () Bool)

(declare-fun res!1633154 () Bool)

(declare-fun e!2490736 () Bool)

(assert (=> b!4016003 (=> (not res!1633154) (not e!2490736))))

(declare-fun lt!1423388 () List!43090)

(assert (=> b!4016003 (= res!1633154 (= (size!32128 lt!1423388) (+ (size!32128 prefix!494) (size!32128 suffix!1299))))))

(declare-fun b!4016001 () Bool)

(declare-fun e!2490735 () List!43090)

(assert (=> b!4016001 (= e!2490735 suffix!1299)))

(declare-fun b!4016004 () Bool)

(assert (=> b!4016004 (= e!2490736 (or (not (= suffix!1299 Nil!42966)) (= lt!1423388 prefix!494)))))

(declare-fun d!1189371 () Bool)

(assert (=> d!1189371 e!2490736))

(declare-fun res!1633155 () Bool)

(assert (=> d!1189371 (=> (not res!1633155) (not e!2490736))))

(assert (=> d!1189371 (= res!1633155 (= (content!6519 lt!1423388) ((_ map or) (content!6519 prefix!494) (content!6519 suffix!1299))))))

(assert (=> d!1189371 (= lt!1423388 e!2490735)))

(declare-fun c!694276 () Bool)

(assert (=> d!1189371 (= c!694276 ((_ is Nil!42966) prefix!494))))

(assert (=> d!1189371 (= (++!11242 prefix!494 suffix!1299) lt!1423388)))

(declare-fun b!4016002 () Bool)

(assert (=> b!4016002 (= e!2490735 (Cons!42966 (h!48386 prefix!494) (++!11242 (t!333327 prefix!494) suffix!1299)))))

(assert (= (and d!1189371 c!694276) b!4016001))

(assert (= (and d!1189371 (not c!694276)) b!4016002))

(assert (= (and d!1189371 res!1633155) b!4016003))

(assert (= (and b!4016003 res!1633154) b!4016004))

(declare-fun m!4604157 () Bool)

(assert (=> b!4016003 m!4604157))

(assert (=> b!4016003 m!4603009))

(assert (=> b!4016003 m!4603115))

(declare-fun m!4604161 () Bool)

(assert (=> d!1189371 m!4604161))

(assert (=> d!1189371 m!4603419))

(assert (=> d!1189371 m!4603213))

(declare-fun m!4604165 () Bool)

(assert (=> b!4016002 m!4604165))

(assert (=> b!4015370 d!1189371))

(declare-fun d!1189373 () Bool)

(assert (=> d!1189373 (= (_2!24189 (v!39623 lt!1423099)) lt!1423121)))

(declare-fun lt!1423389 () Unit!62016)

(assert (=> d!1189373 (= lt!1423389 (choose!24281 lt!1423128 (_2!24189 (v!39623 lt!1423099)) lt!1423128 lt!1423121 lt!1423122))))

(assert (=> d!1189373 (isPrefix!3927 lt!1423128 lt!1423122)))

(assert (=> d!1189373 (= (lemmaSamePrefixThenSameSuffix!2098 lt!1423128 (_2!24189 (v!39623 lt!1423099)) lt!1423128 lt!1423121 lt!1423122) lt!1423389)))

(declare-fun bs!589644 () Bool)

(assert (= bs!589644 d!1189373))

(declare-fun m!4604167 () Bool)

(assert (=> bs!589644 m!4604167))

(assert (=> bs!589644 m!4603129))

(assert (=> b!4015367 d!1189373))

(declare-fun d!1189375 () Bool)

(declare-fun e!2490739 () Bool)

(assert (=> d!1189375 e!2490739))

(declare-fun res!1633158 () Bool)

(assert (=> d!1189375 (=> res!1633158 e!2490739)))

(declare-fun lt!1423390 () Bool)

(assert (=> d!1189375 (= res!1633158 (not lt!1423390))))

(declare-fun e!2490738 () Bool)

(assert (=> d!1189375 (= lt!1423390 e!2490738)))

(declare-fun res!1633159 () Bool)

(assert (=> d!1189375 (=> res!1633159 e!2490738)))

(assert (=> d!1189375 (= res!1633159 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189375 (= (isPrefix!3927 lt!1423128 lt!1423118) lt!1423390)))

(declare-fun b!4016008 () Bool)

(declare-fun e!2490740 () Bool)

(assert (=> b!4016008 (= e!2490740 (isPrefix!3927 (tail!6255 lt!1423128) (tail!6255 lt!1423118)))))

(declare-fun b!4016009 () Bool)

(assert (=> b!4016009 (= e!2490739 (>= (size!32128 lt!1423118) (size!32128 lt!1423128)))))

(declare-fun b!4016006 () Bool)

(assert (=> b!4016006 (= e!2490738 e!2490740)))

(declare-fun res!1633156 () Bool)

(assert (=> b!4016006 (=> (not res!1633156) (not e!2490740))))

(assert (=> b!4016006 (= res!1633156 (not ((_ is Nil!42966) lt!1423118)))))

(declare-fun b!4016007 () Bool)

(declare-fun res!1633157 () Bool)

(assert (=> b!4016007 (=> (not res!1633157) (not e!2490740))))

(assert (=> b!4016007 (= res!1633157 (= (head!8523 lt!1423128) (head!8523 lt!1423118)))))

(assert (= (and d!1189375 (not res!1633159)) b!4016006))

(assert (= (and b!4016006 res!1633156) b!4016007))

(assert (= (and b!4016007 res!1633157) b!4016008))

(assert (= (and d!1189375 (not res!1633158)) b!4016009))

(assert (=> b!4016008 m!4603507))

(declare-fun m!4604169 () Bool)

(assert (=> b!4016008 m!4604169))

(assert (=> b!4016008 m!4603507))

(assert (=> b!4016008 m!4604169))

(declare-fun m!4604171 () Bool)

(assert (=> b!4016008 m!4604171))

(declare-fun m!4604173 () Bool)

(assert (=> b!4016009 m!4604173))

(assert (=> b!4016009 m!4603109))

(assert (=> b!4016007 m!4603511))

(declare-fun m!4604175 () Bool)

(assert (=> b!4016007 m!4604175))

(assert (=> b!4015367 d!1189375))

(declare-fun d!1189377 () Bool)

(assert (=> d!1189377 (isPrefix!3927 lt!1423128 (++!11242 lt!1423128 lt!1423121))))

(declare-fun lt!1423391 () Unit!62016)

(assert (=> d!1189377 (= lt!1423391 (choose!24283 lt!1423128 lt!1423121))))

(assert (=> d!1189377 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423128 lt!1423121) lt!1423391)))

(declare-fun bs!589645 () Bool)

(assert (= bs!589645 d!1189377))

(assert (=> bs!589645 m!4603033))

(assert (=> bs!589645 m!4603033))

(declare-fun m!4604177 () Bool)

(assert (=> bs!589645 m!4604177))

(declare-fun m!4604179 () Bool)

(assert (=> bs!589645 m!4604179))

(assert (=> b!4015367 d!1189377))

(declare-fun d!1189379 () Bool)

(declare-fun lt!1423392 () Int)

(assert (=> d!1189379 (>= lt!1423392 0)))

(declare-fun e!2490741 () Int)

(assert (=> d!1189379 (= lt!1423392 e!2490741)))

(declare-fun c!694277 () Bool)

(assert (=> d!1189379 (= c!694277 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189379 (= (size!32128 lt!1423134) lt!1423392)))

(declare-fun b!4016010 () Bool)

(assert (=> b!4016010 (= e!2490741 0)))

(declare-fun b!4016011 () Bool)

(assert (=> b!4016011 (= e!2490741 (+ 1 (size!32128 (t!333327 lt!1423134))))))

(assert (= (and d!1189379 c!694277) b!4016010))

(assert (= (and d!1189379 (not c!694277)) b!4016011))

(declare-fun m!4604181 () Bool)

(assert (=> b!4016011 m!4604181))

(assert (=> b!4015388 d!1189379))

(declare-fun d!1189381 () Bool)

(declare-fun lt!1423393 () Int)

(assert (=> d!1189381 (>= lt!1423393 0)))

(declare-fun e!2490742 () Int)

(assert (=> d!1189381 (= lt!1423393 e!2490742)))

(declare-fun c!694278 () Bool)

(assert (=> d!1189381 (= c!694278 ((_ is Nil!42966) prefix!494))))

(assert (=> d!1189381 (= (size!32128 prefix!494) lt!1423393)))

(declare-fun b!4016012 () Bool)

(assert (=> b!4016012 (= e!2490742 0)))

(declare-fun b!4016013 () Bool)

(assert (=> b!4016013 (= e!2490742 (+ 1 (size!32128 (t!333327 prefix!494))))))

(assert (= (and d!1189381 c!694278) b!4016012))

(assert (= (and d!1189381 (not c!694278)) b!4016013))

(declare-fun m!4604183 () Bool)

(assert (=> b!4016013 m!4604183))

(assert (=> b!4015388 d!1189381))

(declare-fun d!1189383 () Bool)

(assert (=> d!1189383 (= (list!15972 (charsOf!4656 token!484)) (list!15974 (c!694180 (charsOf!4656 token!484))))))

(declare-fun bs!589646 () Bool)

(assert (= bs!589646 d!1189383))

(declare-fun m!4604185 () Bool)

(assert (=> bs!589646 m!4604185))

(assert (=> b!4015388 d!1189383))

(declare-fun d!1189385 () Bool)

(declare-fun lt!1423394 () BalanceConc!25696)

(assert (=> d!1189385 (= (list!15972 lt!1423394) (originalCharacters!7440 token!484))))

(assert (=> d!1189385 (= lt!1423394 (dynLambda!18229 (toChars!9207 (transformation!6840 (rule!9888 token!484))) (value!215574 token!484)))))

(assert (=> d!1189385 (= (charsOf!4656 token!484) lt!1423394)))

(declare-fun b_lambda!117215 () Bool)

(assert (=> (not b_lambda!117215) (not d!1189385)))

(assert (=> d!1189385 t!333331))

(declare-fun b_and!308551 () Bool)

(assert (= b_and!308539 (and (=> t!333331 result!292666) b_and!308551)))

(assert (=> d!1189385 t!333333))

(declare-fun b_and!308553 () Bool)

(assert (= b_and!308541 (and (=> t!333333 result!292670) b_and!308553)))

(declare-fun m!4604187 () Bool)

(assert (=> d!1189385 m!4604187))

(assert (=> d!1189385 m!4603315))

(assert (=> b!4015388 d!1189385))

(declare-fun d!1189387 () Bool)

(assert (=> d!1189387 (= (inv!57391 (tag!7700 (h!48388 rules!2999))) (= (mod (str.len (value!215573 (tag!7700 (h!48388 rules!2999)))) 2) 0))))

(assert (=> b!4015387 d!1189387))

(declare-fun d!1189389 () Bool)

(declare-fun res!1633160 () Bool)

(declare-fun e!2490743 () Bool)

(assert (=> d!1189389 (=> (not res!1633160) (not e!2490743))))

(assert (=> d!1189389 (= res!1633160 (semiInverseModEq!2929 (toChars!9207 (transformation!6840 (h!48388 rules!2999))) (toValue!9348 (transformation!6840 (h!48388 rules!2999)))))))

(assert (=> d!1189389 (= (inv!57395 (transformation!6840 (h!48388 rules!2999))) e!2490743)))

(declare-fun b!4016014 () Bool)

(assert (=> b!4016014 (= e!2490743 (equivClasses!2828 (toChars!9207 (transformation!6840 (h!48388 rules!2999))) (toValue!9348 (transformation!6840 (h!48388 rules!2999)))))))

(assert (= (and d!1189389 res!1633160) b!4016014))

(declare-fun m!4604189 () Bool)

(assert (=> d!1189389 m!4604189))

(declare-fun m!4604191 () Bool)

(assert (=> b!4016014 m!4604191))

(assert (=> b!4015387 d!1189389))

(declare-fun d!1189391 () Bool)

(declare-fun e!2490745 () Bool)

(assert (=> d!1189391 e!2490745))

(declare-fun res!1633163 () Bool)

(assert (=> d!1189391 (=> res!1633163 e!2490745)))

(declare-fun lt!1423395 () Bool)

(assert (=> d!1189391 (= res!1633163 (not lt!1423395))))

(declare-fun e!2490744 () Bool)

(assert (=> d!1189391 (= lt!1423395 e!2490744)))

(declare-fun res!1633164 () Bool)

(assert (=> d!1189391 (=> res!1633164 e!2490744)))

(assert (=> d!1189391 (= res!1633164 ((_ is Nil!42966) prefix!494))))

(assert (=> d!1189391 (= (isPrefix!3927 prefix!494 lt!1423097) lt!1423395)))

(declare-fun b!4016017 () Bool)

(declare-fun e!2490746 () Bool)

(assert (=> b!4016017 (= e!2490746 (isPrefix!3927 (tail!6255 prefix!494) (tail!6255 lt!1423097)))))

(declare-fun b!4016018 () Bool)

(assert (=> b!4016018 (= e!2490745 (>= (size!32128 lt!1423097) (size!32128 prefix!494)))))

(declare-fun b!4016015 () Bool)

(assert (=> b!4016015 (= e!2490744 e!2490746)))

(declare-fun res!1633161 () Bool)

(assert (=> b!4016015 (=> (not res!1633161) (not e!2490746))))

(assert (=> b!4016015 (= res!1633161 (not ((_ is Nil!42966) lt!1423097)))))

(declare-fun b!4016016 () Bool)

(declare-fun res!1633162 () Bool)

(assert (=> b!4016016 (=> (not res!1633162) (not e!2490746))))

(assert (=> b!4016016 (= res!1633162 (= (head!8523 prefix!494) (head!8523 lt!1423097)))))

(assert (= (and d!1189391 (not res!1633164)) b!4016015))

(assert (= (and b!4016015 res!1633161) b!4016016))

(assert (= (and b!4016016 res!1633162) b!4016017))

(assert (= (and d!1189391 (not res!1633163)) b!4016018))

(assert (=> b!4016017 m!4603483))

(assert (=> b!4016017 m!4603333))

(assert (=> b!4016017 m!4603483))

(assert (=> b!4016017 m!4603333))

(declare-fun m!4604193 () Bool)

(assert (=> b!4016017 m!4604193))

(assert (=> b!4016018 m!4603331))

(assert (=> b!4016018 m!4603009))

(assert (=> b!4016016 m!4603493))

(assert (=> b!4016016 m!4603367))

(assert (=> b!4015354 d!1189391))

(declare-fun d!1189393 () Bool)

(declare-fun e!2490748 () Bool)

(assert (=> d!1189393 e!2490748))

(declare-fun res!1633167 () Bool)

(assert (=> d!1189393 (=> res!1633167 e!2490748)))

(declare-fun lt!1423396 () Bool)

(assert (=> d!1189393 (= res!1633167 (not lt!1423396))))

(declare-fun e!2490747 () Bool)

(assert (=> d!1189393 (= lt!1423396 e!2490747)))

(declare-fun res!1633168 () Bool)

(assert (=> d!1189393 (=> res!1633168 e!2490747)))

(assert (=> d!1189393 (= res!1633168 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189393 (= (isPrefix!3927 lt!1423134 lt!1423102) lt!1423396)))

(declare-fun b!4016021 () Bool)

(declare-fun e!2490749 () Bool)

(assert (=> b!4016021 (= e!2490749 (isPrefix!3927 (tail!6255 lt!1423134) (tail!6255 lt!1423102)))))

(declare-fun b!4016022 () Bool)

(assert (=> b!4016022 (= e!2490748 (>= (size!32128 lt!1423102) (size!32128 lt!1423134)))))

(declare-fun b!4016019 () Bool)

(assert (=> b!4016019 (= e!2490747 e!2490749)))

(declare-fun res!1633165 () Bool)

(assert (=> b!4016019 (=> (not res!1633165) (not e!2490749))))

(assert (=> b!4016019 (= res!1633165 (not ((_ is Nil!42966) lt!1423102)))))

(declare-fun b!4016020 () Bool)

(declare-fun res!1633166 () Bool)

(assert (=> b!4016020 (=> (not res!1633166) (not e!2490749))))

(assert (=> b!4016020 (= res!1633166 (= (head!8523 lt!1423134) (head!8523 lt!1423102)))))

(assert (= (and d!1189393 (not res!1633168)) b!4016019))

(assert (= (and b!4016019 res!1633165) b!4016020))

(assert (= (and b!4016020 res!1633166) b!4016021))

(assert (= (and d!1189393 (not res!1633167)) b!4016022))

(assert (=> b!4016021 m!4603487))

(declare-fun m!4604195 () Bool)

(assert (=> b!4016021 m!4604195))

(assert (=> b!4016021 m!4603487))

(assert (=> b!4016021 m!4604195))

(declare-fun m!4604197 () Bool)

(assert (=> b!4016021 m!4604197))

(declare-fun m!4604199 () Bool)

(assert (=> b!4016022 m!4604199))

(assert (=> b!4016022 m!4603007))

(assert (=> b!4016020 m!4603491))

(declare-fun m!4604201 () Bool)

(assert (=> b!4016020 m!4604201))

(assert (=> b!4015354 d!1189393))

(declare-fun d!1189395 () Bool)

(assert (=> d!1189395 (isPrefix!3927 prefix!494 (++!11242 prefix!494 suffix!1299))))

(declare-fun lt!1423397 () Unit!62016)

(assert (=> d!1189395 (= lt!1423397 (choose!24283 prefix!494 suffix!1299))))

(assert (=> d!1189395 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 prefix!494 suffix!1299) lt!1423397)))

(declare-fun bs!589647 () Bool)

(assert (= bs!589647 d!1189395))

(assert (=> bs!589647 m!4603049))

(assert (=> bs!589647 m!4603049))

(declare-fun m!4604203 () Bool)

(assert (=> bs!589647 m!4604203))

(declare-fun m!4604205 () Bool)

(assert (=> bs!589647 m!4604205))

(assert (=> b!4015354 d!1189395))

(declare-fun d!1189397 () Bool)

(declare-fun e!2490751 () Bool)

(assert (=> d!1189397 e!2490751))

(declare-fun res!1633171 () Bool)

(assert (=> d!1189397 (=> res!1633171 e!2490751)))

(declare-fun lt!1423398 () Bool)

(assert (=> d!1189397 (= res!1633171 (not lt!1423398))))

(declare-fun e!2490750 () Bool)

(assert (=> d!1189397 (= lt!1423398 e!2490750)))

(declare-fun res!1633172 () Bool)

(assert (=> d!1189397 (=> res!1633172 e!2490750)))

(assert (=> d!1189397 (= res!1633172 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189397 (= (isPrefix!3927 lt!1423134 lt!1423097) lt!1423398)))

(declare-fun b!4016025 () Bool)

(declare-fun e!2490752 () Bool)

(assert (=> b!4016025 (= e!2490752 (isPrefix!3927 (tail!6255 lt!1423134) (tail!6255 lt!1423097)))))

(declare-fun b!4016026 () Bool)

(assert (=> b!4016026 (= e!2490751 (>= (size!32128 lt!1423097) (size!32128 lt!1423134)))))

(declare-fun b!4016023 () Bool)

(assert (=> b!4016023 (= e!2490750 e!2490752)))

(declare-fun res!1633169 () Bool)

(assert (=> b!4016023 (=> (not res!1633169) (not e!2490752))))

(assert (=> b!4016023 (= res!1633169 (not ((_ is Nil!42966) lt!1423097)))))

(declare-fun b!4016024 () Bool)

(declare-fun res!1633170 () Bool)

(assert (=> b!4016024 (=> (not res!1633170) (not e!2490752))))

(assert (=> b!4016024 (= res!1633170 (= (head!8523 lt!1423134) (head!8523 lt!1423097)))))

(assert (= (and d!1189397 (not res!1633172)) b!4016023))

(assert (= (and b!4016023 res!1633169) b!4016024))

(assert (= (and b!4016024 res!1633170) b!4016025))

(assert (= (and d!1189397 (not res!1633171)) b!4016026))

(assert (=> b!4016025 m!4603487))

(assert (=> b!4016025 m!4603333))

(assert (=> b!4016025 m!4603487))

(assert (=> b!4016025 m!4603333))

(declare-fun m!4604207 () Bool)

(assert (=> b!4016025 m!4604207))

(assert (=> b!4016026 m!4603331))

(assert (=> b!4016026 m!4603007))

(assert (=> b!4016024 m!4603491))

(assert (=> b!4016024 m!4603367))

(assert (=> b!4015354 d!1189397))

(declare-fun d!1189399 () Bool)

(assert (=> d!1189399 (isPrefix!3927 lt!1423134 (++!11242 lt!1423134 suffixResult!105))))

(declare-fun lt!1423399 () Unit!62016)

(assert (=> d!1189399 (= lt!1423399 (choose!24283 lt!1423134 suffixResult!105))))

(assert (=> d!1189399 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423134 suffixResult!105) lt!1423399)))

(declare-fun bs!589648 () Bool)

(assert (= bs!589648 d!1189399))

(assert (=> bs!589648 m!4603023))

(assert (=> bs!589648 m!4603023))

(declare-fun m!4604209 () Bool)

(assert (=> bs!589648 m!4604209))

(declare-fun m!4604211 () Bool)

(assert (=> bs!589648 m!4604211))

(assert (=> b!4015354 d!1189399))

(declare-fun d!1189401 () Bool)

(declare-fun lt!1423400 () Int)

(assert (=> d!1189401 (>= lt!1423400 0)))

(declare-fun e!2490753 () Int)

(assert (=> d!1189401 (= lt!1423400 e!2490753)))

(declare-fun c!694279 () Bool)

(assert (=> d!1189401 (= c!694279 ((_ is Nil!42966) (originalCharacters!7440 token!484)))))

(assert (=> d!1189401 (= (size!32128 (originalCharacters!7440 token!484)) lt!1423400)))

(declare-fun b!4016027 () Bool)

(assert (=> b!4016027 (= e!2490753 0)))

(declare-fun b!4016028 () Bool)

(assert (=> b!4016028 (= e!2490753 (+ 1 (size!32128 (t!333327 (originalCharacters!7440 token!484)))))))

(assert (= (and d!1189401 c!694279) b!4016027))

(assert (= (and d!1189401 (not c!694279)) b!4016028))

(declare-fun m!4604213 () Bool)

(assert (=> b!4016028 m!4604213))

(assert (=> b!4015375 d!1189401))

(declare-fun bm!286548 () Bool)

(declare-fun call!286553 () Bool)

(assert (=> bm!286548 (= call!286553 (isEmpty!25666 lt!1423134))))

(declare-fun d!1189403 () Bool)

(declare-fun e!2490772 () Bool)

(assert (=> d!1189403 e!2490772))

(declare-fun c!694288 () Bool)

(assert (=> d!1189403 (= c!694288 ((_ is EmptyExpr!11745) (regex!6840 (rule!9888 token!484))))))

(declare-fun lt!1423403 () Bool)

(declare-fun e!2490770 () Bool)

(assert (=> d!1189403 (= lt!1423403 e!2490770)))

(declare-fun c!694286 () Bool)

(assert (=> d!1189403 (= c!694286 (isEmpty!25666 lt!1423134))))

(assert (=> d!1189403 (validRegex!5322 (regex!6840 (rule!9888 token!484)))))

(assert (=> d!1189403 (= (matchR!5706 (regex!6840 (rule!9888 token!484)) lt!1423134) lt!1423403)))

(declare-fun b!4016057 () Bool)

(declare-fun e!2490768 () Bool)

(assert (=> b!4016057 (= e!2490768 (= (head!8523 lt!1423134) (c!694181 (regex!6840 (rule!9888 token!484)))))))

(declare-fun b!4016058 () Bool)

(assert (=> b!4016058 (= e!2490770 (nullable!4122 (regex!6840 (rule!9888 token!484))))))

(declare-fun b!4016059 () Bool)

(declare-fun derivativeStep!3530 (Regex!11745 C!23676) Regex!11745)

(assert (=> b!4016059 (= e!2490770 (matchR!5706 (derivativeStep!3530 (regex!6840 (rule!9888 token!484)) (head!8523 lt!1423134)) (tail!6255 lt!1423134)))))

(declare-fun b!4016060 () Bool)

(declare-fun e!2490769 () Bool)

(declare-fun e!2490771 () Bool)

(assert (=> b!4016060 (= e!2490769 e!2490771)))

(declare-fun res!1633196 () Bool)

(assert (=> b!4016060 (=> res!1633196 e!2490771)))

(assert (=> b!4016060 (= res!1633196 call!286553)))

(declare-fun b!4016061 () Bool)

(declare-fun res!1633190 () Bool)

(assert (=> b!4016061 (=> (not res!1633190) (not e!2490768))))

(assert (=> b!4016061 (= res!1633190 (not call!286553))))

(declare-fun b!4016062 () Bool)

(declare-fun res!1633194 () Bool)

(assert (=> b!4016062 (=> (not res!1633194) (not e!2490768))))

(assert (=> b!4016062 (= res!1633194 (isEmpty!25666 (tail!6255 lt!1423134)))))

(declare-fun b!4016063 () Bool)

(declare-fun e!2490773 () Bool)

(assert (=> b!4016063 (= e!2490773 e!2490769)))

(declare-fun res!1633193 () Bool)

(assert (=> b!4016063 (=> (not res!1633193) (not e!2490769))))

(assert (=> b!4016063 (= res!1633193 (not lt!1423403))))

(declare-fun b!4016064 () Bool)

(declare-fun res!1633191 () Bool)

(assert (=> b!4016064 (=> res!1633191 e!2490773)))

(assert (=> b!4016064 (= res!1633191 e!2490768)))

(declare-fun res!1633189 () Bool)

(assert (=> b!4016064 (=> (not res!1633189) (not e!2490768))))

(assert (=> b!4016064 (= res!1633189 lt!1423403)))

(declare-fun b!4016065 () Bool)

(declare-fun res!1633192 () Bool)

(assert (=> b!4016065 (=> res!1633192 e!2490773)))

(assert (=> b!4016065 (= res!1633192 (not ((_ is ElementMatch!11745) (regex!6840 (rule!9888 token!484)))))))

(declare-fun e!2490774 () Bool)

(assert (=> b!4016065 (= e!2490774 e!2490773)))

(declare-fun b!4016066 () Bool)

(assert (=> b!4016066 (= e!2490772 (= lt!1423403 call!286553))))

(declare-fun b!4016067 () Bool)

(declare-fun res!1633195 () Bool)

(assert (=> b!4016067 (=> res!1633195 e!2490771)))

(assert (=> b!4016067 (= res!1633195 (not (isEmpty!25666 (tail!6255 lt!1423134))))))

(declare-fun b!4016068 () Bool)

(assert (=> b!4016068 (= e!2490771 (not (= (head!8523 lt!1423134) (c!694181 (regex!6840 (rule!9888 token!484))))))))

(declare-fun b!4016069 () Bool)

(assert (=> b!4016069 (= e!2490774 (not lt!1423403))))

(declare-fun b!4016070 () Bool)

(assert (=> b!4016070 (= e!2490772 e!2490774)))

(declare-fun c!694287 () Bool)

(assert (=> b!4016070 (= c!694287 ((_ is EmptyLang!11745) (regex!6840 (rule!9888 token!484))))))

(assert (= (and d!1189403 c!694286) b!4016058))

(assert (= (and d!1189403 (not c!694286)) b!4016059))

(assert (= (and d!1189403 c!694288) b!4016066))

(assert (= (and d!1189403 (not c!694288)) b!4016070))

(assert (= (and b!4016070 c!694287) b!4016069))

(assert (= (and b!4016070 (not c!694287)) b!4016065))

(assert (= (and b!4016065 (not res!1633192)) b!4016064))

(assert (= (and b!4016064 res!1633189) b!4016061))

(assert (= (and b!4016061 res!1633190) b!4016062))

(assert (= (and b!4016062 res!1633194) b!4016057))

(assert (= (and b!4016064 (not res!1633191)) b!4016063))

(assert (= (and b!4016063 res!1633193) b!4016060))

(assert (= (and b!4016060 (not res!1633196)) b!4016067))

(assert (= (and b!4016067 (not res!1633195)) b!4016068))

(assert (= (or b!4016066 b!4016060 b!4016061) bm!286548))

(assert (=> b!4016067 m!4603487))

(assert (=> b!4016067 m!4603487))

(declare-fun m!4604215 () Bool)

(assert (=> b!4016067 m!4604215))

(assert (=> b!4016059 m!4603491))

(assert (=> b!4016059 m!4603491))

(declare-fun m!4604217 () Bool)

(assert (=> b!4016059 m!4604217))

(assert (=> b!4016059 m!4603487))

(assert (=> b!4016059 m!4604217))

(assert (=> b!4016059 m!4603487))

(declare-fun m!4604219 () Bool)

(assert (=> b!4016059 m!4604219))

(assert (=> b!4016057 m!4603491))

(declare-fun m!4604221 () Bool)

(assert (=> d!1189403 m!4604221))

(assert (=> d!1189403 m!4603303))

(assert (=> b!4016068 m!4603491))

(assert (=> b!4016058 m!4603305))

(assert (=> b!4016062 m!4603487))

(assert (=> b!4016062 m!4603487))

(assert (=> b!4016062 m!4604215))

(assert (=> bm!286548 m!4604221))

(assert (=> b!4015374 d!1189403))

(declare-fun d!1189405 () Bool)

(declare-fun e!2490776 () Bool)

(assert (=> d!1189405 e!2490776))

(declare-fun res!1633199 () Bool)

(assert (=> d!1189405 (=> res!1633199 e!2490776)))

(declare-fun lt!1423404 () Bool)

(assert (=> d!1189405 (= res!1633199 (not lt!1423404))))

(declare-fun e!2490775 () Bool)

(assert (=> d!1189405 (= lt!1423404 e!2490775)))

(declare-fun res!1633200 () Bool)

(assert (=> d!1189405 (=> res!1633200 e!2490775)))

(assert (=> d!1189405 (= res!1633200 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189405 (= (isPrefix!3927 lt!1423134 lt!1423122) lt!1423404)))

(declare-fun b!4016073 () Bool)

(declare-fun e!2490777 () Bool)

(assert (=> b!4016073 (= e!2490777 (isPrefix!3927 (tail!6255 lt!1423134) (tail!6255 lt!1423122)))))

(declare-fun b!4016074 () Bool)

(assert (=> b!4016074 (= e!2490776 (>= (size!32128 lt!1423122) (size!32128 lt!1423134)))))

(declare-fun b!4016071 () Bool)

(assert (=> b!4016071 (= e!2490775 e!2490777)))

(declare-fun res!1633197 () Bool)

(assert (=> b!4016071 (=> (not res!1633197) (not e!2490777))))

(assert (=> b!4016071 (= res!1633197 (not ((_ is Nil!42966) lt!1423122)))))

(declare-fun b!4016072 () Bool)

(declare-fun res!1633198 () Bool)

(assert (=> b!4016072 (=> (not res!1633198) (not e!2490777))))

(assert (=> b!4016072 (= res!1633198 (= (head!8523 lt!1423134) (head!8523 lt!1423122)))))

(assert (= (and d!1189405 (not res!1633200)) b!4016071))

(assert (= (and b!4016071 res!1633197) b!4016072))

(assert (= (and b!4016072 res!1633198) b!4016073))

(assert (= (and d!1189405 (not res!1633199)) b!4016074))

(assert (=> b!4016073 m!4603487))

(assert (=> b!4016073 m!4603541))

(assert (=> b!4016073 m!4603487))

(assert (=> b!4016073 m!4603541))

(declare-fun m!4604223 () Bool)

(assert (=> b!4016073 m!4604223))

(assert (=> b!4016074 m!4603439))

(assert (=> b!4016074 m!4603007))

(assert (=> b!4016072 m!4603491))

(declare-fun m!4604225 () Bool)

(assert (=> b!4016072 m!4604225))

(assert (=> b!4015374 d!1189405))

(declare-fun d!1189407 () Bool)

(assert (=> d!1189407 (isPrefix!3927 lt!1423134 (++!11242 prefix!494 newSuffix!27))))

(declare-fun lt!1423405 () Unit!62016)

(assert (=> d!1189407 (= lt!1423405 (choose!24280 lt!1423134 prefix!494 newSuffix!27))))

(assert (=> d!1189407 (isPrefix!3927 lt!1423134 prefix!494)))

(assert (=> d!1189407 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!740 lt!1423134 prefix!494 newSuffix!27) lt!1423405)))

(declare-fun bs!589649 () Bool)

(assert (= bs!589649 d!1189407))

(assert (=> bs!589649 m!4602983))

(assert (=> bs!589649 m!4602983))

(declare-fun m!4604227 () Bool)

(assert (=> bs!589649 m!4604227))

(declare-fun m!4604229 () Bool)

(assert (=> bs!589649 m!4604229))

(assert (=> bs!589649 m!4603123))

(assert (=> b!4015374 d!1189407))

(declare-fun d!1189409 () Bool)

(assert (=> d!1189409 (isPrefix!3927 lt!1423134 (++!11242 prefix!494 suffix!1299))))

(declare-fun lt!1423406 () Unit!62016)

(assert (=> d!1189409 (= lt!1423406 (choose!24280 lt!1423134 prefix!494 suffix!1299))))

(assert (=> d!1189409 (isPrefix!3927 lt!1423134 prefix!494)))

(assert (=> d!1189409 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!740 lt!1423134 prefix!494 suffix!1299) lt!1423406)))

(declare-fun bs!589650 () Bool)

(assert (= bs!589650 d!1189409))

(assert (=> bs!589650 m!4603049))

(assert (=> bs!589650 m!4603049))

(declare-fun m!4604231 () Bool)

(assert (=> bs!589650 m!4604231))

(declare-fun m!4604233 () Bool)

(assert (=> bs!589650 m!4604233))

(assert (=> bs!589650 m!4603123))

(assert (=> b!4015374 d!1189409))

(declare-fun d!1189411 () Bool)

(declare-fun e!2490778 () Bool)

(assert (=> d!1189411 e!2490778))

(declare-fun res!1633201 () Bool)

(assert (=> d!1189411 (=> res!1633201 e!2490778)))

(declare-fun lt!1423408 () Option!9254)

(assert (=> d!1189411 (= res!1633201 (isEmpty!25668 lt!1423408))))

(declare-fun e!2490780 () Option!9254)

(assert (=> d!1189411 (= lt!1423408 e!2490780)))

(declare-fun c!694289 () Bool)

(assert (=> d!1189411 (= c!694289 (and ((_ is Cons!42968) rules!2999) ((_ is Nil!42968) (t!333329 rules!2999))))))

(declare-fun lt!1423409 () Unit!62016)

(declare-fun lt!1423410 () Unit!62016)

(assert (=> d!1189411 (= lt!1423409 lt!1423410)))

(assert (=> d!1189411 (isPrefix!3927 lt!1423122 lt!1423122)))

(assert (=> d!1189411 (= lt!1423410 (lemmaIsPrefixRefl!2503 lt!1423122 lt!1423122))))

(assert (=> d!1189411 (rulesValidInductive!2495 thiss!21717 rules!2999)))

(assert (=> d!1189411 (= (maxPrefix!3727 thiss!21717 rules!2999 lt!1423122) lt!1423408)))

(declare-fun b!4016075 () Bool)

(declare-fun res!1633203 () Bool)

(declare-fun e!2490779 () Bool)

(assert (=> b!4016075 (=> (not res!1633203) (not e!2490779))))

(assert (=> b!4016075 (= res!1633203 (= (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423408)))) (originalCharacters!7440 (_1!24189 (get!14118 lt!1423408)))))))

(declare-fun b!4016076 () Bool)

(declare-fun lt!1423411 () Option!9254)

(declare-fun lt!1423407 () Option!9254)

(assert (=> b!4016076 (= e!2490780 (ite (and ((_ is None!9253) lt!1423411) ((_ is None!9253) lt!1423407)) None!9253 (ite ((_ is None!9253) lt!1423407) lt!1423411 (ite ((_ is None!9253) lt!1423411) lt!1423407 (ite (>= (size!32127 (_1!24189 (v!39623 lt!1423411))) (size!32127 (_1!24189 (v!39623 lt!1423407)))) lt!1423411 lt!1423407)))))))

(declare-fun call!286554 () Option!9254)

(assert (=> b!4016076 (= lt!1423411 call!286554)))

(assert (=> b!4016076 (= lt!1423407 (maxPrefix!3727 thiss!21717 (t!333329 rules!2999) lt!1423122))))

(declare-fun b!4016077 () Bool)

(declare-fun res!1633202 () Bool)

(assert (=> b!4016077 (=> (not res!1633202) (not e!2490779))))

(assert (=> b!4016077 (= res!1633202 (matchR!5706 (regex!6840 (rule!9888 (_1!24189 (get!14118 lt!1423408)))) (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423408))))))))

(declare-fun bm!286549 () Bool)

(assert (=> bm!286549 (= call!286554 (maxPrefixOneRule!2747 thiss!21717 (h!48388 rules!2999) lt!1423122))))

(declare-fun b!4016078 () Bool)

(declare-fun res!1633204 () Bool)

(assert (=> b!4016078 (=> (not res!1633204) (not e!2490779))))

(assert (=> b!4016078 (= res!1633204 (< (size!32128 (_2!24189 (get!14118 lt!1423408))) (size!32128 lt!1423122)))))

(declare-fun b!4016079 () Bool)

(assert (=> b!4016079 (= e!2490779 (contains!8542 rules!2999 (rule!9888 (_1!24189 (get!14118 lt!1423408)))))))

(declare-fun b!4016080 () Bool)

(assert (=> b!4016080 (= e!2490780 call!286554)))

(declare-fun b!4016081 () Bool)

(declare-fun res!1633206 () Bool)

(assert (=> b!4016081 (=> (not res!1633206) (not e!2490779))))

(assert (=> b!4016081 (= res!1633206 (= (++!11242 (list!15972 (charsOf!4656 (_1!24189 (get!14118 lt!1423408)))) (_2!24189 (get!14118 lt!1423408))) lt!1423122))))

(declare-fun b!4016082 () Bool)

(declare-fun res!1633207 () Bool)

(assert (=> b!4016082 (=> (not res!1633207) (not e!2490779))))

(assert (=> b!4016082 (= res!1633207 (= (value!215574 (_1!24189 (get!14118 lt!1423408))) (apply!10037 (transformation!6840 (rule!9888 (_1!24189 (get!14118 lt!1423408)))) (seqFromList!5065 (originalCharacters!7440 (_1!24189 (get!14118 lt!1423408)))))))))

(declare-fun b!4016083 () Bool)

(assert (=> b!4016083 (= e!2490778 e!2490779)))

(declare-fun res!1633205 () Bool)

(assert (=> b!4016083 (=> (not res!1633205) (not e!2490779))))

(assert (=> b!4016083 (= res!1633205 (isDefined!7074 lt!1423408))))

(assert (= (and d!1189411 c!694289) b!4016080))

(assert (= (and d!1189411 (not c!694289)) b!4016076))

(assert (= (or b!4016080 b!4016076) bm!286549))

(assert (= (and d!1189411 (not res!1633201)) b!4016083))

(assert (= (and b!4016083 res!1633205) b!4016075))

(assert (= (and b!4016075 res!1633203) b!4016078))

(assert (= (and b!4016078 res!1633204) b!4016081))

(assert (= (and b!4016081 res!1633206) b!4016082))

(assert (= (and b!4016082 res!1633207) b!4016077))

(assert (= (and b!4016077 res!1633202) b!4016079))

(declare-fun m!4604235 () Bool)

(assert (=> b!4016083 m!4604235))

(declare-fun m!4604237 () Bool)

(assert (=> b!4016079 m!4604237))

(declare-fun m!4604239 () Bool)

(assert (=> b!4016079 m!4604239))

(assert (=> b!4016081 m!4604237))

(declare-fun m!4604241 () Bool)

(assert (=> b!4016081 m!4604241))

(assert (=> b!4016081 m!4604241))

(declare-fun m!4604243 () Bool)

(assert (=> b!4016081 m!4604243))

(assert (=> b!4016081 m!4604243))

(declare-fun m!4604245 () Bool)

(assert (=> b!4016081 m!4604245))

(declare-fun m!4604247 () Bool)

(assert (=> b!4016076 m!4604247))

(assert (=> b!4016075 m!4604237))

(assert (=> b!4016075 m!4604241))

(assert (=> b!4016075 m!4604241))

(assert (=> b!4016075 m!4604243))

(declare-fun m!4604249 () Bool)

(assert (=> bm!286549 m!4604249))

(assert (=> b!4016078 m!4604237))

(declare-fun m!4604251 () Bool)

(assert (=> b!4016078 m!4604251))

(assert (=> b!4016078 m!4603439))

(assert (=> b!4016082 m!4604237))

(declare-fun m!4604253 () Bool)

(assert (=> b!4016082 m!4604253))

(assert (=> b!4016082 m!4604253))

(declare-fun m!4604255 () Bool)

(assert (=> b!4016082 m!4604255))

(assert (=> b!4016077 m!4604237))

(assert (=> b!4016077 m!4604241))

(assert (=> b!4016077 m!4604241))

(assert (=> b!4016077 m!4604243))

(assert (=> b!4016077 m!4604243))

(declare-fun m!4604257 () Bool)

(assert (=> b!4016077 m!4604257))

(declare-fun m!4604259 () Bool)

(assert (=> d!1189411 m!4604259))

(declare-fun m!4604261 () Bool)

(assert (=> d!1189411 m!4604261))

(declare-fun m!4604263 () Bool)

(assert (=> d!1189411 m!4604263))

(assert (=> d!1189411 m!4604155))

(assert (=> b!4015352 d!1189411))

(declare-fun d!1189413 () Bool)

(assert (=> d!1189413 (= suffixResult!105 lt!1423104)))

(declare-fun lt!1423412 () Unit!62016)

(assert (=> d!1189413 (= lt!1423412 (choose!24281 lt!1423134 suffixResult!105 lt!1423134 lt!1423104 lt!1423097))))

(assert (=> d!1189413 (isPrefix!3927 lt!1423134 lt!1423097)))

(assert (=> d!1189413 (= (lemmaSamePrefixThenSameSuffix!2098 lt!1423134 suffixResult!105 lt!1423134 lt!1423104 lt!1423097) lt!1423412)))

(declare-fun bs!589651 () Bool)

(assert (= bs!589651 d!1189413))

(declare-fun m!4604265 () Bool)

(assert (=> bs!589651 m!4604265))

(assert (=> bs!589651 m!4603057))

(assert (=> b!4015352 d!1189413))

(declare-fun d!1189415 () Bool)

(declare-fun e!2490782 () Bool)

(assert (=> d!1189415 e!2490782))

(declare-fun res!1633210 () Bool)

(assert (=> d!1189415 (=> res!1633210 e!2490782)))

(declare-fun lt!1423413 () Bool)

(assert (=> d!1189415 (= res!1633210 (not lt!1423413))))

(declare-fun e!2490781 () Bool)

(assert (=> d!1189415 (= lt!1423413 e!2490781)))

(declare-fun res!1633211 () Bool)

(assert (=> d!1189415 (=> res!1633211 e!2490781)))

(assert (=> d!1189415 (= res!1633211 ((_ is Nil!42966) lt!1423134))))

(assert (=> d!1189415 (= (isPrefix!3927 lt!1423134 lt!1423138) lt!1423413)))

(declare-fun b!4016086 () Bool)

(declare-fun e!2490783 () Bool)

(assert (=> b!4016086 (= e!2490783 (isPrefix!3927 (tail!6255 lt!1423134) (tail!6255 lt!1423138)))))

(declare-fun b!4016087 () Bool)

(assert (=> b!4016087 (= e!2490782 (>= (size!32128 lt!1423138) (size!32128 lt!1423134)))))

(declare-fun b!4016084 () Bool)

(assert (=> b!4016084 (= e!2490781 e!2490783)))

(declare-fun res!1633208 () Bool)

(assert (=> b!4016084 (=> (not res!1633208) (not e!2490783))))

(assert (=> b!4016084 (= res!1633208 (not ((_ is Nil!42966) lt!1423138)))))

(declare-fun b!4016085 () Bool)

(declare-fun res!1633209 () Bool)

(assert (=> b!4016085 (=> (not res!1633209) (not e!2490783))))

(assert (=> b!4016085 (= res!1633209 (= (head!8523 lt!1423134) (head!8523 lt!1423138)))))

(assert (= (and d!1189415 (not res!1633211)) b!4016084))

(assert (= (and b!4016084 res!1633208) b!4016085))

(assert (= (and b!4016085 res!1633209) b!4016086))

(assert (= (and d!1189415 (not res!1633210)) b!4016087))

(assert (=> b!4016086 m!4603487))

(declare-fun m!4604267 () Bool)

(assert (=> b!4016086 m!4604267))

(assert (=> b!4016086 m!4603487))

(assert (=> b!4016086 m!4604267))

(declare-fun m!4604269 () Bool)

(assert (=> b!4016086 m!4604269))

(declare-fun m!4604271 () Bool)

(assert (=> b!4016087 m!4604271))

(assert (=> b!4016087 m!4603007))

(assert (=> b!4016085 m!4603491))

(declare-fun m!4604273 () Bool)

(assert (=> b!4016085 m!4604273))

(assert (=> b!4015352 d!1189415))

(declare-fun d!1189417 () Bool)

(assert (=> d!1189417 (isPrefix!3927 lt!1423134 (++!11242 lt!1423134 lt!1423104))))

(declare-fun lt!1423414 () Unit!62016)

(assert (=> d!1189417 (= lt!1423414 (choose!24283 lt!1423134 lt!1423104))))

(assert (=> d!1189417 (= (lemmaConcatTwoListThenFirstIsPrefix!2768 lt!1423134 lt!1423104) lt!1423414)))

(declare-fun bs!589652 () Bool)

(assert (= bs!589652 d!1189417))

(assert (=> bs!589652 m!4602999))

(assert (=> bs!589652 m!4602999))

(declare-fun m!4604275 () Bool)

(assert (=> bs!589652 m!4604275))

(declare-fun m!4604277 () Bool)

(assert (=> bs!589652 m!4604277))

(assert (=> b!4015352 d!1189417))

(declare-fun d!1189419 () Bool)

(assert (=> d!1189419 (= (isEmpty!25664 rules!2999) ((_ is Nil!42968) rules!2999))))

(assert (=> b!4015351 d!1189419))

(declare-fun d!1189421 () Bool)

(declare-fun e!2490785 () Bool)

(assert (=> d!1189421 e!2490785))

(declare-fun res!1633214 () Bool)

(assert (=> d!1189421 (=> res!1633214 e!2490785)))

(declare-fun lt!1423415 () Bool)

(assert (=> d!1189421 (= res!1633214 (not lt!1423415))))

(declare-fun e!2490784 () Bool)

(assert (=> d!1189421 (= lt!1423415 e!2490784)))

(declare-fun res!1633215 () Bool)

(assert (=> d!1189421 (=> res!1633215 e!2490784)))

(assert (=> d!1189421 (= res!1633215 ((_ is Nil!42966) lt!1423128))))

(assert (=> d!1189421 (= (isPrefix!3927 lt!1423128 lt!1423122) lt!1423415)))

(declare-fun b!4016090 () Bool)

(declare-fun e!2490786 () Bool)

(assert (=> b!4016090 (= e!2490786 (isPrefix!3927 (tail!6255 lt!1423128) (tail!6255 lt!1423122)))))

(declare-fun b!4016091 () Bool)

(assert (=> b!4016091 (= e!2490785 (>= (size!32128 lt!1423122) (size!32128 lt!1423128)))))

(declare-fun b!4016088 () Bool)

(assert (=> b!4016088 (= e!2490784 e!2490786)))

(declare-fun res!1633212 () Bool)

(assert (=> b!4016088 (=> (not res!1633212) (not e!2490786))))

(assert (=> b!4016088 (= res!1633212 (not ((_ is Nil!42966) lt!1423122)))))

(declare-fun b!4016089 () Bool)

(declare-fun res!1633213 () Bool)

(assert (=> b!4016089 (=> (not res!1633213) (not e!2490786))))

(assert (=> b!4016089 (= res!1633213 (= (head!8523 lt!1423128) (head!8523 lt!1423122)))))

(assert (= (and d!1189421 (not res!1633215)) b!4016088))

(assert (= (and b!4016088 res!1633212) b!4016089))

(assert (= (and b!4016089 res!1633213) b!4016090))

(assert (= (and d!1189421 (not res!1633214)) b!4016091))

(assert (=> b!4016090 m!4603507))

(assert (=> b!4016090 m!4603541))

(assert (=> b!4016090 m!4603507))

(assert (=> b!4016090 m!4603541))

(declare-fun m!4604279 () Bool)

(assert (=> b!4016090 m!4604279))

(assert (=> b!4016091 m!4603439))

(assert (=> b!4016091 m!4603109))

(assert (=> b!4016089 m!4603511))

(assert (=> b!4016089 m!4604225))

(assert (=> b!4015372 d!1189421))

(declare-fun b!4016105 () Bool)

(declare-fun e!2490789 () Bool)

(declare-fun tp!1221082 () Bool)

(declare-fun tp!1221079 () Bool)

(assert (=> b!4016105 (= e!2490789 (and tp!1221082 tp!1221079))))

(assert (=> b!4015364 (= tp!1221014 e!2490789)))

(declare-fun b!4016104 () Bool)

(declare-fun tp!1221080 () Bool)

(assert (=> b!4016104 (= e!2490789 tp!1221080)))

(declare-fun b!4016103 () Bool)

(declare-fun tp!1221081 () Bool)

(declare-fun tp!1221083 () Bool)

(assert (=> b!4016103 (= e!2490789 (and tp!1221081 tp!1221083))))

(declare-fun b!4016102 () Bool)

(assert (=> b!4016102 (= e!2490789 tp_is_empty!20461)))

(assert (= (and b!4015364 ((_ is ElementMatch!11745) (regex!6840 (rule!9888 token!484)))) b!4016102))

(assert (= (and b!4015364 ((_ is Concat!18816) (regex!6840 (rule!9888 token!484)))) b!4016103))

(assert (= (and b!4015364 ((_ is Star!11745) (regex!6840 (rule!9888 token!484)))) b!4016104))

(assert (= (and b!4015364 ((_ is Union!11745) (regex!6840 (rule!9888 token!484)))) b!4016105))

(declare-fun b!4016110 () Bool)

(declare-fun e!2490792 () Bool)

(declare-fun tp!1221086 () Bool)

(assert (=> b!4016110 (= e!2490792 (and tp_is_empty!20461 tp!1221086))))

(assert (=> b!4015353 (= tp!1221010 e!2490792)))

(assert (= (and b!4015353 ((_ is Cons!42966) (t!333327 prefix!494))) b!4016110))

(declare-fun b!4016111 () Bool)

(declare-fun e!2490793 () Bool)

(declare-fun tp!1221087 () Bool)

(assert (=> b!4016111 (= e!2490793 (and tp_is_empty!20461 tp!1221087))))

(assert (=> b!4015358 (= tp!1221019 e!2490793)))

(assert (= (and b!4015358 ((_ is Cons!42966) (t!333327 newSuffixResult!27))) b!4016111))

(declare-fun b!4016112 () Bool)

(declare-fun e!2490794 () Bool)

(declare-fun tp!1221088 () Bool)

(assert (=> b!4016112 (= e!2490794 (and tp_is_empty!20461 tp!1221088))))

(assert (=> b!4015379 (= tp!1221011 e!2490794)))

(assert (= (and b!4015379 ((_ is Cons!42966) (t!333327 suffixResult!105))) b!4016112))

(declare-fun b!4016113 () Bool)

(declare-fun e!2490795 () Bool)

(declare-fun tp!1221089 () Bool)

(assert (=> b!4016113 (= e!2490795 (and tp_is_empty!20461 tp!1221089))))

(assert (=> b!4015368 (= tp!1221016 e!2490795)))

(assert (= (and b!4015368 ((_ is Cons!42966) (t!333327 newSuffix!27))) b!4016113))

(declare-fun b!4016114 () Bool)

(declare-fun e!2490796 () Bool)

(declare-fun tp!1221090 () Bool)

(assert (=> b!4016114 (= e!2490796 (and tp_is_empty!20461 tp!1221090))))

(assert (=> b!4015383 (= tp!1221017 e!2490796)))

(assert (= (and b!4015383 ((_ is Cons!42966) (t!333327 suffix!1299))) b!4016114))

(declare-fun b!4016125 () Bool)

(declare-fun b_free!111693 () Bool)

(declare-fun b_next!112397 () Bool)

(assert (=> b!4016125 (= b_free!111693 (not b_next!112397))))

(declare-fun t!333371 () Bool)

(declare-fun tb!241529 () Bool)

(assert (=> (and b!4016125 (= (toValue!9348 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toValue!9348 (transformation!6840 (rule!9888 token!484)))) t!333371) tb!241529))

(declare-fun result!292726 () Bool)

(assert (= result!292726 result!292678))

(assert (=> d!1189193 t!333371))

(declare-fun t!333373 () Bool)

(declare-fun tb!241531 () Bool)

(assert (=> (and b!4016125 (= (toValue!9348 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toValue!9348 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))) t!333373) tb!241531))

(declare-fun result!292728 () Bool)

(assert (= result!292728 result!292690))

(assert (=> d!1189257 t!333373))

(declare-fun b_and!308555 () Bool)

(declare-fun tp!1221102 () Bool)

(assert (=> b!4016125 (= tp!1221102 (and (=> t!333371 result!292726) (=> t!333373 result!292728) b_and!308555))))

(declare-fun b_free!111695 () Bool)

(declare-fun b_next!112399 () Bool)

(assert (=> b!4016125 (= b_free!111695 (not b_next!112399))))

(declare-fun tb!241533 () Bool)

(declare-fun t!333375 () Bool)

(assert (=> (and b!4016125 (= (toChars!9207 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toChars!9207 (transformation!6840 (rule!9888 token!484)))) t!333375) tb!241533))

(declare-fun result!292730 () Bool)

(assert (= result!292730 result!292666))

(assert (=> b!4015510 t!333375))

(declare-fun tb!241535 () Bool)

(declare-fun t!333377 () Bool)

(assert (=> (and b!4016125 (= (toChars!9207 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toChars!9207 (transformation!6840 (rule!9888 (_1!24189 (v!39623 lt!1423099)))))) t!333377) tb!241535))

(declare-fun result!292732 () Bool)

(assert (= result!292732 result!292698))

(assert (=> d!1189291 t!333377))

(assert (=> d!1189385 t!333375))

(declare-fun b_and!308557 () Bool)

(declare-fun tp!1221101 () Bool)

(assert (=> b!4016125 (= tp!1221101 (and (=> t!333375 result!292730) (=> t!333377 result!292732) b_and!308557))))

(declare-fun e!2490807 () Bool)

(assert (=> b!4016125 (= e!2490807 (and tp!1221102 tp!1221101))))

(declare-fun b!4016124 () Bool)

(declare-fun e!2490808 () Bool)

(declare-fun tp!1221100 () Bool)

(assert (=> b!4016124 (= e!2490808 (and tp!1221100 (inv!57391 (tag!7700 (h!48388 (t!333329 rules!2999)))) (inv!57395 (transformation!6840 (h!48388 (t!333329 rules!2999)))) e!2490807))))

(declare-fun b!4016123 () Bool)

(declare-fun e!2490805 () Bool)

(declare-fun tp!1221099 () Bool)

(assert (=> b!4016123 (= e!2490805 (and e!2490808 tp!1221099))))

(assert (=> b!4015371 (= tp!1221013 e!2490805)))

(assert (= b!4016124 b!4016125))

(assert (= b!4016123 b!4016124))

(assert (= (and b!4015371 ((_ is Cons!42968) (t!333329 rules!2999))) b!4016123))

(declare-fun m!4604281 () Bool)

(assert (=> b!4016124 m!4604281))

(declare-fun m!4604283 () Bool)

(assert (=> b!4016124 m!4604283))

(declare-fun b!4016129 () Bool)

(declare-fun e!2490809 () Bool)

(declare-fun tp!1221106 () Bool)

(declare-fun tp!1221103 () Bool)

(assert (=> b!4016129 (= e!2490809 (and tp!1221106 tp!1221103))))

(assert (=> b!4015387 (= tp!1221012 e!2490809)))

(declare-fun b!4016128 () Bool)

(declare-fun tp!1221104 () Bool)

(assert (=> b!4016128 (= e!2490809 tp!1221104)))

(declare-fun b!4016127 () Bool)

(declare-fun tp!1221105 () Bool)

(declare-fun tp!1221107 () Bool)

(assert (=> b!4016127 (= e!2490809 (and tp!1221105 tp!1221107))))

(declare-fun b!4016126 () Bool)

(assert (=> b!4016126 (= e!2490809 tp_is_empty!20461)))

(assert (= (and b!4015387 ((_ is ElementMatch!11745) (regex!6840 (h!48388 rules!2999)))) b!4016126))

(assert (= (and b!4015387 ((_ is Concat!18816) (regex!6840 (h!48388 rules!2999)))) b!4016127))

(assert (= (and b!4015387 ((_ is Star!11745) (regex!6840 (h!48388 rules!2999)))) b!4016128))

(assert (= (and b!4015387 ((_ is Union!11745) (regex!6840 (h!48388 rules!2999)))) b!4016129))

(declare-fun b!4016130 () Bool)

(declare-fun e!2490810 () Bool)

(declare-fun tp!1221108 () Bool)

(assert (=> b!4016130 (= e!2490810 (and tp_is_empty!20461 tp!1221108))))

(assert (=> b!4015376 (= tp!1221008 e!2490810)))

(assert (= (and b!4015376 ((_ is Cons!42966) (originalCharacters!7440 token!484))) b!4016130))

(declare-fun b_lambda!117217 () Bool)

(assert (= b_lambda!117191 (or (and b!4015378 b_free!111683) (and b!4015385 b_free!111687 (= (toChars!9207 (transformation!6840 (h!48388 rules!2999))) (toChars!9207 (transformation!6840 (rule!9888 token!484))))) (and b!4016125 b_free!111695 (= (toChars!9207 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toChars!9207 (transformation!6840 (rule!9888 token!484))))) b_lambda!117217)))

(declare-fun b_lambda!117219 () Bool)

(assert (= b_lambda!117195 (or (and b!4015378 b_free!111681) (and b!4015385 b_free!111685 (= (toValue!9348 (transformation!6840 (h!48388 rules!2999))) (toValue!9348 (transformation!6840 (rule!9888 token!484))))) (and b!4016125 b_free!111693 (= (toValue!9348 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toValue!9348 (transformation!6840 (rule!9888 token!484))))) b_lambda!117219)))

(declare-fun b_lambda!117221 () Bool)

(assert (= b_lambda!117215 (or (and b!4015378 b_free!111683) (and b!4015385 b_free!111687 (= (toChars!9207 (transformation!6840 (h!48388 rules!2999))) (toChars!9207 (transformation!6840 (rule!9888 token!484))))) (and b!4016125 b_free!111695 (= (toChars!9207 (transformation!6840 (h!48388 (t!333329 rules!2999)))) (toChars!9207 (transformation!6840 (rule!9888 token!484))))) b_lambda!117221)))

(check-sat (not b!4015439) (not d!1189275) (not d!1189409) (not b!4015763) (not b!4016123) (not b!4015615) b_and!308555 (not b!4015537) (not d!1189413) (not d!1189135) (not b!4016105) (not b_lambda!117205) (not b!4016021) b_and!308551 (not d!1189325) (not d!1189165) (not b!4015824) (not b!4015658) (not b_next!112399) (not bm!286545) (not b!4015768) (not b!4016011) (not b!4015788) (not b!4015782) (not b!4016089) b_and!308529 (not b!4015648) (not b!4016075) (not b_next!112389) (not b!4015478) (not d!1189199) (not b!4015616) (not b!4015650) (not b!4016127) (not b!4015612) (not b!4016085) (not b!4015624) (not b!4015636) (not b!4015394) (not d!1189123) (not d!1189313) (not d!1189399) (not d!1189271) (not b!4015817) (not d!1189169) (not b!4015800) (not b!4015443) (not b!4015983) (not b!4015787) (not b!4015442) (not b!4015802) (not b!4016076) (not tb!241505) (not d!1189119) (not d!1189185) (not d!1189091) (not d!1189303) (not b!4015769) (not b!4015633) (not b!4016024) (not b!4015438) (not b!4016103) (not bm!286549) (not b!4016008) (not b!4015808) (not d!1189161) (not b!4015646) b_and!308527 (not b!4016091) (not d!1189411) (not b!4016007) (not b!4016090) (not d!1189183) (not b!4016086) (not b!4016002) (not b!4016020) (not d!1189099) (not d!1189277) b_and!308553 (not b!4016078) (not d!1189179) (not b!4015642) (not b!4016028) (not b!4015632) (not b!4015455) (not d!1189395) (not d!1189075) (not b!4015637) (not b!4015984) (not b!4015813) b_and!308557 (not d!1189291) (not b!4015519) (not b!4016073) (not b!4015563) (not tb!241489) (not d!1189087) (not b!4015981) (not b!4015770) (not b!4015820) (not b_lambda!117219) (not b!4015657) (not tb!241497) (not b!4016128) (not b!4015803) (not b!4016130) (not b!4015801) (not d!1189071) (not b!4016083) (not b!4015601) (not b!4016062) (not b!4015603) (not d!1189105) (not b!4015783) (not d!1189197) (not b_lambda!117221) (not b!4015806) (not d!1189181) (not d!1189149) (not b!4016077) (not d!1189251) (not bm!286548) (not b!4015600) (not b!4015985) (not d!1189113) (not d!1189389) (not b!4015643) (not b!4015644) (not b!4015629) (not d!1189319) (not d!1189153) (not d!1189263) (not b!4015651) (not b_next!112397) (not b!4015816) (not d!1189129) (not b!4016104) (not b!4016087) (not b!4015982) (not b!4015511) (not b!4015634) (not b!4015578) (not b!4016113) (not b!4016068) (not b!4015819) (not b!4016013) (not d!1189121) (not d!1189383) (not b!4015396) (not b!4016074) (not b!4015627) (not d!1189147) (not b!4015807) (not b!4015620) tp_is_empty!20461 (not b!4015456) (not d!1189385) (not b!4016009) (not b_next!112385) (not d!1189321) (not b_next!112391) (not d!1189371) (not b!4016082) (not b!4016114) (not b!4016072) (not b!4015576) (not d!1189155) (not d!1189403) (not d!1189289) (not b!4015647) (not d!1189163) (not b!4015656) (not d!1189279) (not b!4016014) (not d!1189311) (not b!4015639) (not b!4016081) (not b_next!112387) (not b!4015989) (not b!4016017) (not b!4015504) (not b!4015762) (not b!4015565) (not d!1189195) (not b!4016025) (not b!4016067) (not b!4016016) (not d!1189173) (not b!4015832) (not b_lambda!117217) (not d!1189373) (not d!1189407) (not b!4016057) (not b!4015988) (not tb!241513) (not b!4015619) (not b!4016124) (not b!4015402) (not b!4015611) (not b!4015653) (not b!4015823) (not b!4015516) (not b!4015764) (not d!1189253) (not b!4016058) (not b!4015821) (not d!1189191) (not d!1189377) (not b!4015499) (not b_lambda!117199) (not b!4015815) (not b!4015597) (not b!4015510) (not b!4016026) (not d!1189171) (not b!4015577) (not b!4015765) (not d!1189157) (not b!4016129) (not b!4015804) (not b!4016111) (not b!4016112) (not b!4015477) (not b!4016018) (not b!4015987) (not b!4016003) (not b!4015518) (not b!4016110) (not d!1189083) (not d!1189117) (not b!4015604) (not b!4015574) (not b!4016059) (not b!4016079) (not b!4016022) (not b!4015766) (not d!1189417) (not b!4015564) (not b!4015626))
(check-sat b_and!308555 b_and!308551 b_and!308527 b_and!308553 b_and!308557 (not b_next!112397) (not b_next!112385) (not b_next!112391) (not b_next!112387) (not b_next!112399) (not b_next!112389) b_and!308529)
