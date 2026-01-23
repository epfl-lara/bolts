; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!161806 () Bool)

(assert start!161806)

(declare-fun b!1668915 () Bool)

(declare-fun b_free!45367 () Bool)

(declare-fun b_next!46071 () Bool)

(assert (=> b!1668915 (= b_free!45367 (not b_next!46071))))

(declare-fun tp!481819 () Bool)

(declare-fun b_and!118661 () Bool)

(assert (=> b!1668915 (= tp!481819 b_and!118661)))

(declare-fun b_free!45369 () Bool)

(declare-fun b_next!46073 () Bool)

(assert (=> b!1668915 (= b_free!45369 (not b_next!46073))))

(declare-fun tp!481820 () Bool)

(declare-fun b_and!118663 () Bool)

(assert (=> b!1668915 (= tp!481820 b_and!118663)))

(declare-fun b!1668919 () Bool)

(declare-fun b_free!45371 () Bool)

(declare-fun b_next!46075 () Bool)

(assert (=> b!1668919 (= b_free!45371 (not b_next!46075))))

(declare-fun tp!481826 () Bool)

(declare-fun b_and!118665 () Bool)

(assert (=> b!1668919 (= tp!481826 b_and!118665)))

(declare-fun b_free!45373 () Bool)

(declare-fun b_next!46077 () Bool)

(assert (=> b!1668919 (= b_free!45373 (not b_next!46077))))

(declare-fun tp!481818 () Bool)

(declare-fun b_and!118667 () Bool)

(assert (=> b!1668919 (= tp!481818 b_and!118667)))

(declare-fun b!1668908 () Bool)

(declare-fun e!1069498 () Bool)

(declare-fun e!1069495 () Bool)

(assert (=> b!1668908 (= e!1069498 e!1069495)))

(declare-fun res!748418 () Bool)

(assert (=> b!1668908 (=> (not res!748418) (not e!1069495))))

(declare-datatypes ((C!9312 0))(
  ( (C!9313 (val!5252 Int)) )
))
(declare-datatypes ((List!18467 0))(
  ( (Nil!18397) (Cons!18397 (h!23798 C!9312) (t!152486 List!18467)) )
))
(declare-fun lt!628417 () List!18467)

(declare-fun lt!628412 () List!18467)

(assert (=> b!1668908 (= res!748418 (= lt!628417 lt!628412))))

(declare-fun lt!628411 () List!18467)

(declare-fun lt!628416 () List!18467)

(declare-fun ++!5012 (List!18467 List!18467) List!18467)

(assert (=> b!1668908 (= lt!628412 (++!5012 lt!628411 lt!628416))))

(declare-datatypes ((IArray!12265 0))(
  ( (IArray!12266 (innerList!6190 List!18467)) )
))
(declare-datatypes ((Conc!6130 0))(
  ( (Node!6130 (left!14716 Conc!6130) (right!15046 Conc!6130) (csize!12490 Int) (cheight!6341 Int)) (Leaf!8971 (xs!8974 IArray!12265) (csize!12491 Int)) (Empty!6130) )
))
(declare-datatypes ((BalanceConc!12204 0))(
  ( (BalanceConc!12205 (c!271555 Conc!6130)) )
))
(declare-fun lt!628409 () BalanceConc!12204)

(declare-fun list!7363 (BalanceConc!12204) List!18467)

(assert (=> b!1668908 (= lt!628417 (list!7363 lt!628409))))

(declare-fun lt!628415 () BalanceConc!12204)

(assert (=> b!1668908 (= lt!628416 (list!7363 lt!628415))))

(declare-datatypes ((List!18468 0))(
  ( (Nil!18398) (Cons!18398 (h!23799 (_ BitVec 16)) (t!152487 List!18468)) )
))
(declare-datatypes ((TokenValue!3331 0))(
  ( (FloatLiteralValue!6662 (text!23762 List!18468)) (TokenValueExt!3330 (__x!11964 Int)) (Broken!16655 (value!102015 List!18468)) (Object!3400) (End!3331) (Def!3331) (Underscore!3331) (Match!3331) (Else!3331) (Error!3331) (Case!3331) (If!3331) (Extends!3331) (Abstract!3331) (Class!3331) (Val!3331) (DelimiterValue!6662 (del!3391 List!18468)) (KeywordValue!3337 (value!102016 List!18468)) (CommentValue!6662 (value!102017 List!18468)) (WhitespaceValue!6662 (value!102018 List!18468)) (IndentationValue!3331 (value!102019 List!18468)) (String!20986) (Int32!3331) (Broken!16656 (value!102020 List!18468)) (Boolean!3332) (Unit!31176) (OperatorValue!3334 (op!3391 List!18468)) (IdentifierValue!6662 (value!102021 List!18468)) (IdentifierValue!6663 (value!102022 List!18468)) (WhitespaceValue!6663 (value!102023 List!18468)) (True!6662) (False!6662) (Broken!16657 (value!102024 List!18468)) (Broken!16658 (value!102025 List!18468)) (True!6663) (RightBrace!3331) (RightBracket!3331) (Colon!3331) (Null!3331) (Comma!3331) (LeftBracket!3331) (False!6663) (LeftBrace!3331) (ImaginaryLiteralValue!3331 (text!23763 List!18468)) (StringLiteralValue!9993 (value!102026 List!18468)) (EOFValue!3331 (value!102027 List!18468)) (IdentValue!3331 (value!102028 List!18468)) (DelimiterValue!6663 (value!102029 List!18468)) (DedentValue!3331 (value!102030 List!18468)) (NewLineValue!3331 (value!102031 List!18468)) (IntegerValue!9993 (value!102032 (_ BitVec 32)) (text!23764 List!18468)) (IntegerValue!9994 (value!102033 Int) (text!23765 List!18468)) (Times!3331) (Or!3331) (Equal!3331) (Minus!3331) (Broken!16659 (value!102034 List!18468)) (And!3331) (Div!3331) (LessEqual!3331) (Mod!3331) (Concat!7900) (Not!3331) (Plus!3331) (SpaceValue!3331 (value!102035 List!18468)) (IntegerValue!9995 (value!102036 Int) (text!23766 List!18468)) (StringLiteralValue!9994 (text!23767 List!18468)) (FloatLiteralValue!6663 (text!23768 List!18468)) (BytesLiteralValue!3331 (value!102037 List!18468)) (CommentValue!6663 (value!102038 List!18468)) (StringLiteralValue!9995 (value!102039 List!18468)) (ErrorTokenValue!3331 (msg!3392 List!18468)) )
))
(declare-datatypes ((Regex!4569 0))(
  ( (ElementMatch!4569 (c!271556 C!9312)) (Concat!7901 (regOne!9650 Regex!4569) (regTwo!9650 Regex!4569)) (EmptyExpr!4569) (Star!4569 (reg!4898 Regex!4569)) (EmptyLang!4569) (Union!4569 (regOne!9651 Regex!4569) (regTwo!9651 Regex!4569)) )
))
(declare-datatypes ((String!20987 0))(
  ( (String!20988 (value!102040 String)) )
))
(declare-datatypes ((TokenValueInjection!6322 0))(
  ( (TokenValueInjection!6323 (toValue!4704 Int) (toChars!4563 Int)) )
))
(declare-datatypes ((Rule!6282 0))(
  ( (Rule!6283 (regex!3241 Regex!4569) (tag!3525 String!20987) (isSeparator!3241 Bool) (transformation!3241 TokenValueInjection!6322)) )
))
(declare-datatypes ((Token!6048 0))(
  ( (Token!6049 (value!102041 TokenValue!3331) (rule!5129 Rule!6282) (size!14632 Int) (originalCharacters!4055 List!18467)) )
))
(declare-datatypes ((List!18469 0))(
  ( (Nil!18399) (Cons!18399 (h!23800 Token!6048) (t!152488 List!18469)) )
))
(declare-fun tokens!457 () List!18469)

(declare-fun charsOf!1890 (Token!6048) BalanceConc!12204)

(assert (=> b!1668908 (= lt!628411 (list!7363 (charsOf!1890 (h!23800 tokens!457))))))

(declare-datatypes ((IArray!12267 0))(
  ( (IArray!12268 (innerList!6191 List!18469)) )
))
(declare-datatypes ((Conc!6131 0))(
  ( (Node!6131 (left!14717 Conc!6131) (right!15047 Conc!6131) (csize!12492 Int) (cheight!6342 Int)) (Leaf!8972 (xs!8975 IArray!12267) (csize!12493 Int)) (Empty!6131) )
))
(declare-datatypes ((BalanceConc!12206 0))(
  ( (BalanceConc!12207 (c!271557 Conc!6131)) )
))
(declare-datatypes ((tuple2!18114 0))(
  ( (tuple2!18115 (_1!10459 BalanceConc!12206) (_2!10459 BalanceConc!12204)) )
))
(declare-fun lt!628410 () tuple2!18114)

(declare-datatypes ((List!18470 0))(
  ( (Nil!18400) (Cons!18400 (h!23801 Rule!6282) (t!152489 List!18470)) )
))
(declare-fun rules!1846 () List!18470)

(declare-datatypes ((LexerInterface!2870 0))(
  ( (LexerInterfaceExt!2867 (__x!11965 Int)) (Lexer!2868) )
))
(declare-fun thiss!17113 () LexerInterface!2870)

(declare-fun lex!1354 (LexerInterface!2870 List!18470 BalanceConc!12204) tuple2!18114)

(assert (=> b!1668908 (= lt!628410 (lex!1354 thiss!17113 rules!1846 lt!628415))))

(declare-fun print!1401 (LexerInterface!2870 BalanceConc!12206) BalanceConc!12204)

(declare-fun seqFromList!2218 (List!18469) BalanceConc!12206)

(assert (=> b!1668908 (= lt!628415 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))

(assert (=> b!1668908 (= lt!628409 (print!1401 thiss!17113 (seqFromList!2218 tokens!457)))))

(declare-fun b!1668909 () Bool)

(declare-fun res!748419 () Bool)

(assert (=> b!1668909 (=> (not res!748419) (not e!1069498))))

(declare-fun rulesInvariant!2539 (LexerInterface!2870 List!18470) Bool)

(assert (=> b!1668909 (= res!748419 (rulesInvariant!2539 thiss!17113 rules!1846))))

(declare-fun b!1668910 () Bool)

(declare-fun res!748414 () Bool)

(assert (=> b!1668910 (=> (not res!748414) (not e!1069498))))

(declare-fun isEmpty!11449 (List!18470) Bool)

(assert (=> b!1668910 (= res!748414 (not (isEmpty!11449 rules!1846)))))

(declare-fun e!1069491 () Bool)

(declare-fun tp!481825 () Bool)

(declare-fun e!1069494 () Bool)

(declare-fun b!1668911 () Bool)

(declare-fun inv!23743 (String!20987) Bool)

(declare-fun inv!23746 (TokenValueInjection!6322) Bool)

(assert (=> b!1668911 (= e!1069491 (and tp!481825 (inv!23743 (tag!3525 (h!23801 rules!1846))) (inv!23746 (transformation!3241 (h!23801 rules!1846))) e!1069494))))

(declare-fun b!1668912 () Bool)

(declare-fun tp!481824 () Bool)

(declare-fun e!1069493 () Bool)

(declare-fun e!1069497 () Bool)

(declare-fun inv!21 (TokenValue!3331) Bool)

(assert (=> b!1668912 (= e!1069497 (and (inv!21 (value!102041 (h!23800 tokens!457))) e!1069493 tp!481824))))

(declare-fun res!748412 () Bool)

(assert (=> start!161806 (=> (not res!748412) (not e!1069498))))

(get-info :version)

(assert (=> start!161806 (= res!748412 ((_ is Lexer!2868) thiss!17113))))

(assert (=> start!161806 e!1069498))

(assert (=> start!161806 true))

(declare-fun e!1069501 () Bool)

(assert (=> start!161806 e!1069501))

(declare-fun e!1069500 () Bool)

(assert (=> start!161806 e!1069500))

(declare-fun b!1668913 () Bool)

(declare-fun e!1069499 () Bool)

(assert (=> b!1668913 (= e!1069495 (not e!1069499))))

(declare-fun res!748413 () Bool)

(assert (=> b!1668913 (=> res!748413 e!1069499)))

(declare-fun lt!628414 () List!18469)

(assert (=> b!1668913 (= res!748413 (not (= lt!628414 (t!152488 tokens!457))))))

(declare-fun list!7364 (BalanceConc!12206) List!18469)

(assert (=> b!1668913 (= lt!628414 (list!7364 (_1!10459 lt!628410)))))

(declare-datatypes ((Unit!31177 0))(
  ( (Unit!31178) )
))
(declare-fun lt!628418 () Unit!31177)

(declare-fun theoremInvertabilityWhenTokenListSeparable!307 (LexerInterface!2870 List!18470 List!18469) Unit!31177)

(assert (=> b!1668913 (= lt!628418 (theoremInvertabilityWhenTokenListSeparable!307 thiss!17113 rules!1846 (t!152488 tokens!457)))))

(declare-fun isPrefix!1499 (List!18467 List!18467) Bool)

(assert (=> b!1668913 (isPrefix!1499 lt!628411 lt!628412)))

(declare-fun lt!628413 () Unit!31177)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1020 (List!18467 List!18467) Unit!31177)

(assert (=> b!1668913 (= lt!628413 (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!628411 lt!628416))))

(declare-fun b!1668914 () Bool)

(declare-fun $colon$colon!390 (List!18469 Token!6048) List!18469)

(assert (=> b!1668914 (= e!1069499 (= lt!628414 (list!7364 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))))

(declare-fun e!1069490 () Bool)

(assert (=> b!1668915 (= e!1069490 (and tp!481819 tp!481820))))

(declare-fun b!1668916 () Bool)

(declare-fun res!748417 () Bool)

(assert (=> b!1668916 (=> (not res!748417) (not e!1069498))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!563 (LexerInterface!2870 List!18469 List!18470) Bool)

(assert (=> b!1668916 (= res!748417 (tokensListTwoByTwoPredicateSeparableList!563 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1668917 () Bool)

(declare-fun tp!481821 () Bool)

(assert (=> b!1668917 (= e!1069501 (and e!1069491 tp!481821))))

(declare-fun tp!481822 () Bool)

(declare-fun b!1668918 () Bool)

(assert (=> b!1668918 (= e!1069493 (and tp!481822 (inv!23743 (tag!3525 (rule!5129 (h!23800 tokens!457)))) (inv!23746 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) e!1069490))))

(assert (=> b!1668919 (= e!1069494 (and tp!481826 tp!481818))))

(declare-fun b!1668920 () Bool)

(declare-fun res!748416 () Bool)

(assert (=> b!1668920 (=> (not res!748416) (not e!1069498))))

(declare-fun rulesProduceEachTokenIndividuallyList!1072 (LexerInterface!2870 List!18470 List!18469) Bool)

(assert (=> b!1668920 (= res!748416 (rulesProduceEachTokenIndividuallyList!1072 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1668921 () Bool)

(declare-fun tp!481823 () Bool)

(declare-fun inv!23747 (Token!6048) Bool)

(assert (=> b!1668921 (= e!1069500 (and (inv!23747 (h!23800 tokens!457)) e!1069497 tp!481823))))

(declare-fun b!1668922 () Bool)

(declare-fun res!748415 () Bool)

(assert (=> b!1668922 (=> (not res!748415) (not e!1069498))))

(assert (=> b!1668922 (= res!748415 (and (not ((_ is Nil!18399) tokens!457)) (not ((_ is Nil!18399) (t!152488 tokens!457)))))))

(assert (= (and start!161806 res!748412) b!1668910))

(assert (= (and b!1668910 res!748414) b!1668909))

(assert (= (and b!1668909 res!748419) b!1668920))

(assert (= (and b!1668920 res!748416) b!1668916))

(assert (= (and b!1668916 res!748417) b!1668922))

(assert (= (and b!1668922 res!748415) b!1668908))

(assert (= (and b!1668908 res!748418) b!1668913))

(assert (= (and b!1668913 (not res!748413)) b!1668914))

(assert (= b!1668911 b!1668919))

(assert (= b!1668917 b!1668911))

(assert (= (and start!161806 ((_ is Cons!18400) rules!1846)) b!1668917))

(assert (= b!1668918 b!1668915))

(assert (= b!1668912 b!1668918))

(assert (= b!1668921 b!1668912))

(assert (= (and start!161806 ((_ is Cons!18399) tokens!457)) b!1668921))

(declare-fun m!2033327 () Bool)

(assert (=> b!1668909 m!2033327))

(declare-fun m!2033329 () Bool)

(assert (=> b!1668920 m!2033329))

(declare-fun m!2033331 () Bool)

(assert (=> b!1668918 m!2033331))

(declare-fun m!2033333 () Bool)

(assert (=> b!1668918 m!2033333))

(declare-fun m!2033335 () Bool)

(assert (=> b!1668913 m!2033335))

(declare-fun m!2033337 () Bool)

(assert (=> b!1668913 m!2033337))

(declare-fun m!2033339 () Bool)

(assert (=> b!1668913 m!2033339))

(declare-fun m!2033341 () Bool)

(assert (=> b!1668913 m!2033341))

(declare-fun m!2033343 () Bool)

(assert (=> b!1668908 m!2033343))

(declare-fun m!2033345 () Bool)

(assert (=> b!1668908 m!2033345))

(declare-fun m!2033347 () Bool)

(assert (=> b!1668908 m!2033347))

(declare-fun m!2033349 () Bool)

(assert (=> b!1668908 m!2033349))

(declare-fun m!2033351 () Bool)

(assert (=> b!1668908 m!2033351))

(assert (=> b!1668908 m!2033347))

(declare-fun m!2033353 () Bool)

(assert (=> b!1668908 m!2033353))

(declare-fun m!2033355 () Bool)

(assert (=> b!1668908 m!2033355))

(declare-fun m!2033357 () Bool)

(assert (=> b!1668908 m!2033357))

(assert (=> b!1668908 m!2033349))

(declare-fun m!2033359 () Bool)

(assert (=> b!1668908 m!2033359))

(declare-fun m!2033361 () Bool)

(assert (=> b!1668908 m!2033361))

(assert (=> b!1668908 m!2033359))

(declare-fun m!2033363 () Bool)

(assert (=> b!1668910 m!2033363))

(declare-fun m!2033365 () Bool)

(assert (=> b!1668921 m!2033365))

(declare-fun m!2033367 () Bool)

(assert (=> b!1668916 m!2033367))

(declare-fun m!2033369 () Bool)

(assert (=> b!1668912 m!2033369))

(declare-fun m!2033371 () Bool)

(assert (=> b!1668911 m!2033371))

(declare-fun m!2033373 () Bool)

(assert (=> b!1668911 m!2033373))

(declare-fun m!2033375 () Bool)

(assert (=> b!1668914 m!2033375))

(assert (=> b!1668914 m!2033375))

(declare-fun m!2033377 () Bool)

(assert (=> b!1668914 m!2033377))

(assert (=> b!1668914 m!2033377))

(declare-fun m!2033379 () Bool)

(assert (=> b!1668914 m!2033379))

(check-sat (not b_next!46075) (not b!1668911) (not b_next!46071) (not b!1668918) (not b!1668908) (not b_next!46077) (not b!1668914) b_and!118661 (not b!1668920) (not b!1668921) (not b!1668913) (not b!1668909) b_and!118667 (not b!1668917) (not b!1668916) b_and!118665 (not b!1668910) b_and!118663 (not b_next!46073) (not b!1668912))
(check-sat (not b_next!46075) (not b_next!46071) b_and!118667 (not b_next!46077) b_and!118661 (not b_next!46073) b_and!118665 b_and!118663)
(get-model)

(declare-fun d!504637 () Bool)

(declare-fun list!7367 (Conc!6131) List!18469)

(assert (=> d!504637 (= (list!7364 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457))))) (list!7367 (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))))

(declare-fun bs!397931 () Bool)

(assert (= bs!397931 d!504637))

(declare-fun m!2033441 () Bool)

(assert (=> bs!397931 m!2033441))

(assert (=> b!1668914 d!504637))

(declare-fun d!504639 () Bool)

(declare-fun fromListB!1007 (List!18469) BalanceConc!12206)

(assert (=> d!504639 (= (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))) (fromListB!1007 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))

(declare-fun bs!397932 () Bool)

(assert (= bs!397932 d!504639))

(assert (=> bs!397932 m!2033375))

(declare-fun m!2033443 () Bool)

(assert (=> bs!397932 m!2033443))

(assert (=> b!1668914 d!504639))

(declare-fun d!504641 () Bool)

(assert (=> d!504641 (= ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457))) (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))))

(assert (=> b!1668914 d!504641))

(declare-fun d!504643 () Bool)

(declare-fun res!748448 () Bool)

(declare-fun e!1069530 () Bool)

(assert (=> d!504643 (=> (not res!748448) (not e!1069530))))

(declare-fun rulesValid!1194 (LexerInterface!2870 List!18470) Bool)

(assert (=> d!504643 (= res!748448 (rulesValid!1194 thiss!17113 rules!1846))))

(assert (=> d!504643 (= (rulesInvariant!2539 thiss!17113 rules!1846) e!1069530)))

(declare-fun b!1668967 () Bool)

(declare-datatypes ((List!18472 0))(
  ( (Nil!18402) (Cons!18402 (h!23803 String!20987) (t!152513 List!18472)) )
))
(declare-fun noDuplicateTag!1194 (LexerInterface!2870 List!18470 List!18472) Bool)

(assert (=> b!1668967 (= e!1069530 (noDuplicateTag!1194 thiss!17113 rules!1846 Nil!18402))))

(assert (= (and d!504643 res!748448) b!1668967))

(declare-fun m!2033445 () Bool)

(assert (=> d!504643 m!2033445))

(declare-fun m!2033447 () Bool)

(assert (=> b!1668967 m!2033447))

(assert (=> b!1668909 d!504643))

(declare-fun b!1669017 () Bool)

(declare-fun e!1069569 () Bool)

(assert (=> b!1669017 (= e!1069569 true)))

(declare-fun b!1669016 () Bool)

(declare-fun e!1069568 () Bool)

(assert (=> b!1669016 (= e!1069568 e!1069569)))

(declare-fun b!1669015 () Bool)

(declare-fun e!1069567 () Bool)

(assert (=> b!1669015 (= e!1069567 e!1069568)))

(declare-fun d!504645 () Bool)

(assert (=> d!504645 e!1069567))

(assert (= b!1669016 b!1669017))

(assert (= b!1669015 b!1669016))

(assert (= (and d!504645 ((_ is Cons!18400) rules!1846)) b!1669015))

(declare-fun order!11041 () Int)

(declare-fun lambda!68003 () Int)

(declare-fun order!11043 () Int)

(declare-fun dynLambda!8294 (Int Int) Int)

(declare-fun dynLambda!8295 (Int Int) Int)

(assert (=> b!1669017 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8295 order!11043 lambda!68003))))

(declare-fun order!11045 () Int)

(declare-fun dynLambda!8296 (Int Int) Int)

(assert (=> b!1669017 (< (dynLambda!8296 order!11045 (toChars!4563 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8295 order!11043 lambda!68003))))

(assert (=> d!504645 true))

(declare-fun lt!628507 () Bool)

(declare-fun forall!4182 (List!18469 Int) Bool)

(assert (=> d!504645 (= lt!628507 (forall!4182 tokens!457 lambda!68003))))

(declare-fun e!1069557 () Bool)

(assert (=> d!504645 (= lt!628507 e!1069557)))

(declare-fun res!748474 () Bool)

(assert (=> d!504645 (=> res!748474 e!1069557)))

(assert (=> d!504645 (= res!748474 (not ((_ is Cons!18399) tokens!457)))))

(assert (=> d!504645 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504645 (= (rulesProduceEachTokenIndividuallyList!1072 thiss!17113 rules!1846 tokens!457) lt!628507)))

(declare-fun b!1669002 () Bool)

(declare-fun e!1069558 () Bool)

(assert (=> b!1669002 (= e!1069557 e!1069558)))

(declare-fun res!748473 () Bool)

(assert (=> b!1669002 (=> (not res!748473) (not e!1069558))))

(declare-fun rulesProduceIndividualToken!1518 (LexerInterface!2870 List!18470 Token!6048) Bool)

(assert (=> b!1669002 (= res!748473 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 tokens!457)))))

(declare-fun b!1669003 () Bool)

(assert (=> b!1669003 (= e!1069558 (rulesProduceEachTokenIndividuallyList!1072 thiss!17113 rules!1846 (t!152488 tokens!457)))))

(assert (= (and d!504645 (not res!748474)) b!1669002))

(assert (= (and b!1669002 res!748473) b!1669003))

(declare-fun m!2033499 () Bool)

(assert (=> d!504645 m!2033499))

(assert (=> d!504645 m!2033363))

(declare-fun m!2033501 () Bool)

(assert (=> b!1669002 m!2033501))

(declare-fun m!2033503 () Bool)

(assert (=> b!1669003 m!2033503))

(assert (=> b!1668920 d!504645))

(declare-fun d!504669 () Bool)

(assert (=> d!504669 (= (inv!23743 (tag!3525 (rule!5129 (h!23800 tokens!457)))) (= (mod (str.len (value!102040 (tag!3525 (rule!5129 (h!23800 tokens!457))))) 2) 0))))

(assert (=> b!1668918 d!504669))

(declare-fun d!504671 () Bool)

(declare-fun res!748478 () Bool)

(declare-fun e!1069572 () Bool)

(assert (=> d!504671 (=> (not res!748478) (not e!1069572))))

(declare-fun semiInverseModEq!1266 (Int Int) Bool)

(assert (=> d!504671 (= res!748478 (semiInverseModEq!1266 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457))))))))

(assert (=> d!504671 (= (inv!23746 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) e!1069572)))

(declare-fun b!1669022 () Bool)

(declare-fun equivClasses!1207 (Int Int) Bool)

(assert (=> b!1669022 (= e!1069572 (equivClasses!1207 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457))))))))

(assert (= (and d!504671 res!748478) b!1669022))

(declare-fun m!2033581 () Bool)

(assert (=> d!504671 m!2033581))

(declare-fun m!2033583 () Bool)

(assert (=> b!1669022 m!2033583))

(assert (=> b!1668918 d!504671))

(declare-fun d!504675 () Bool)

(assert (=> d!504675 (= (list!7364 (_1!10459 lt!628410)) (list!7367 (c!271557 (_1!10459 lt!628410))))))

(declare-fun bs!397940 () Bool)

(assert (= bs!397940 d!504675))

(declare-fun m!2033585 () Bool)

(assert (=> bs!397940 m!2033585))

(assert (=> b!1668913 d!504675))

(declare-fun d!504677 () Bool)

(declare-fun e!1069591 () Bool)

(assert (=> d!504677 e!1069591))

(declare-fun res!748497 () Bool)

(assert (=> d!504677 (=> (not res!748497) (not e!1069591))))

(assert (=> d!504677 (= res!748497 (= (list!7364 (_1!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)))))) (t!152488 tokens!457)))))

(declare-fun lt!628601 () Unit!31177)

(declare-fun e!1069590 () Unit!31177)

(assert (=> d!504677 (= lt!628601 e!1069590)))

(declare-fun c!271575 () Bool)

(assert (=> d!504677 (= c!271575 (or ((_ is Nil!18399) (t!152488 tokens!457)) ((_ is Nil!18399) (t!152488 (t!152488 tokens!457)))))))

(assert (=> d!504677 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504677 (= (theoremInvertabilityWhenTokenListSeparable!307 thiss!17113 rules!1846 (t!152488 tokens!457)) lt!628601)))

(declare-fun b!1669045 () Bool)

(declare-fun Unit!31196 () Unit!31177)

(assert (=> b!1669045 (= e!1069590 Unit!31196)))

(declare-fun b!1669046 () Bool)

(declare-fun Unit!31197 () Unit!31177)

(assert (=> b!1669046 (= e!1069590 Unit!31197)))

(declare-fun lt!628610 () BalanceConc!12204)

(assert (=> b!1669046 (= lt!628610 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))

(declare-fun lt!628609 () BalanceConc!12204)

(assert (=> b!1669046 (= lt!628609 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 tokens!457)))))))

(declare-fun lt!628614 () tuple2!18114)

(assert (=> b!1669046 (= lt!628614 (lex!1354 thiss!17113 rules!1846 lt!628609))))

(declare-fun lt!628613 () List!18467)

(assert (=> b!1669046 (= lt!628613 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!628617 () List!18467)

(assert (=> b!1669046 (= lt!628617 (list!7363 lt!628609))))

(declare-fun lt!628595 () Unit!31177)

(assert (=> b!1669046 (= lt!628595 (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!628613 lt!628617))))

(assert (=> b!1669046 (isPrefix!1499 lt!628613 (++!5012 lt!628613 lt!628617))))

(declare-fun lt!628598 () Unit!31177)

(assert (=> b!1669046 (= lt!628598 lt!628595)))

(declare-fun lt!628619 () Unit!31177)

(assert (=> b!1669046 (= lt!628619 (theoremInvertabilityWhenTokenListSeparable!307 thiss!17113 rules!1846 (t!152488 (t!152488 tokens!457))))))

(declare-fun lt!628612 () Unit!31177)

(declare-fun seqFromListBHdTlConstructive!310 (Token!6048 List!18469 BalanceConc!12206) Unit!31177)

(assert (=> b!1669046 (= lt!628612 (seqFromListBHdTlConstructive!310 (h!23800 (t!152488 (t!152488 tokens!457))) (t!152488 (t!152488 (t!152488 tokens!457))) (_1!10459 lt!628614)))))

(declare-fun prepend!825 (BalanceConc!12206 Token!6048) BalanceConc!12206)

(assert (=> b!1669046 (= (list!7364 (_1!10459 lt!628614)) (list!7364 (prepend!825 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457)))) (h!23800 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628616 () Unit!31177)

(assert (=> b!1669046 (= lt!628616 lt!628612)))

(declare-datatypes ((tuple2!18120 0))(
  ( (tuple2!18121 (_1!10462 Token!6048) (_2!10462 List!18467)) )
))
(declare-datatypes ((Option!3530 0))(
  ( (None!3529) (Some!3529 (v!24792 tuple2!18120)) )
))
(declare-fun lt!628608 () Option!3530)

(declare-fun maxPrefix!1430 (LexerInterface!2870 List!18470 List!18467) Option!3530)

(assert (=> b!1669046 (= lt!628608 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 lt!628610)))))

(declare-fun singletonSeq!1750 (Token!6048) BalanceConc!12206)

(declare-fun printTailRec!921 (LexerInterface!2870 BalanceConc!12206 Int BalanceConc!12204) BalanceConc!12204)

(assert (=> b!1669046 (= (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457)))) (printTailRec!921 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) 0 (BalanceConc!12205 Empty!6130)))))

(declare-fun lt!628606 () Unit!31177)

(declare-fun Unit!31198 () Unit!31177)

(assert (=> b!1669046 (= lt!628606 Unit!31198)))

(declare-fun lt!628597 () Unit!31177)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!432 (LexerInterface!2870 List!18470 List!18467 List!18467) Unit!31177)

(assert (=> b!1669046 (= lt!628597 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!432 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))

(assert (=> b!1669046 (= (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))))

(declare-fun lt!628618 () Unit!31177)

(declare-fun Unit!31199 () Unit!31177)

(assert (=> b!1669046 (= lt!628618 Unit!31199)))

(declare-fun singletonSeq!1751 (C!9312) BalanceConc!12204)

(declare-fun apply!4948 (BalanceConc!12204 Int) C!9312)

(declare-fun head!3724 (List!18467) C!9312)

(assert (=> b!1669046 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0))) (Cons!18397 (head!3724 (originalCharacters!4055 (h!23800 (t!152488 (t!152488 tokens!457))))) Nil!18397))))

(declare-fun lt!628615 () Unit!31177)

(declare-fun Unit!31200 () Unit!31177)

(assert (=> b!1669046 (= lt!628615 Unit!31200)))

(assert (=> b!1669046 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0))) (Cons!18397 (head!3724 (list!7363 lt!628609)) Nil!18397))))

(declare-fun lt!628600 () Unit!31177)

(declare-fun Unit!31201 () Unit!31177)

(assert (=> b!1669046 (= lt!628600 Unit!31201)))

(declare-fun head!3725 (BalanceConc!12204) C!9312)

(assert (=> b!1669046 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0))) (Cons!18397 (head!3725 lt!628609) Nil!18397))))

(declare-fun lt!628603 () Unit!31177)

(declare-fun Unit!31202 () Unit!31177)

(assert (=> b!1669046 (= lt!628603 Unit!31202)))

(declare-fun isDefined!2885 (Option!3530) Bool)

(assert (=> b!1669046 (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!628605 () Unit!31177)

(declare-fun Unit!31203 () Unit!31177)

(assert (=> b!1669046 (= lt!628605 Unit!31203)))

(assert (=> b!1669046 (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!628607 () Unit!31177)

(declare-fun Unit!31204 () Unit!31177)

(assert (=> b!1669046 (= lt!628607 Unit!31204)))

(declare-fun lt!628596 () Unit!31177)

(declare-fun Unit!31205 () Unit!31177)

(assert (=> b!1669046 (= lt!628596 Unit!31205)))

(declare-fun get!5386 (Option!3530) tuple2!18120)

(assert (=> b!1669046 (= (_1!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))) (h!23800 (t!152488 tokens!457)))))

(declare-fun lt!628599 () Unit!31177)

(declare-fun Unit!31206 () Unit!31177)

(assert (=> b!1669046 (= lt!628599 Unit!31206)))

(declare-fun isEmpty!11453 (List!18467) Bool)

(assert (=> b!1669046 (isEmpty!11453 (_2!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))))

(declare-fun lt!628594 () Unit!31177)

(declare-fun Unit!31207 () Unit!31177)

(assert (=> b!1669046 (= lt!628594 Unit!31207)))

(declare-fun matchR!2060 (Regex!4569 List!18467) Bool)

(assert (=> b!1669046 (matchR!2060 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!628611 () Unit!31177)

(declare-fun Unit!31208 () Unit!31177)

(assert (=> b!1669046 (= lt!628611 Unit!31208)))

(assert (=> b!1669046 (= (rule!5129 (h!23800 (t!152488 tokens!457))) (rule!5129 (h!23800 (t!152488 tokens!457))))))

(declare-fun lt!628602 () Unit!31177)

(declare-fun Unit!31209 () Unit!31177)

(assert (=> b!1669046 (= lt!628602 Unit!31209)))

(declare-fun lt!628604 () Unit!31177)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!190 (LexerInterface!2870 List!18470 Token!6048 Rule!6282 List!18467) Unit!31177)

(assert (=> b!1669046 (= lt!628604 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!190 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457)) (rule!5129 (h!23800 (t!152488 tokens!457))) (list!7363 lt!628609)))))

(declare-fun b!1669047 () Bool)

(declare-fun isEmpty!11454 (BalanceConc!12204) Bool)

(assert (=> b!1669047 (= e!1069591 (isEmpty!11454 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)))))))))

(assert (= (and d!504677 c!271575) b!1669045))

(assert (= (and d!504677 (not c!271575)) b!1669046))

(assert (= (and d!504677 res!748497) b!1669047))

(assert (=> d!504677 m!2033359))

(assert (=> d!504677 m!2033361))

(declare-fun m!2033603 () Bool)

(assert (=> d!504677 m!2033603))

(declare-fun m!2033605 () Bool)

(assert (=> d!504677 m!2033605))

(assert (=> d!504677 m!2033359))

(assert (=> d!504677 m!2033361))

(assert (=> d!504677 m!2033363))

(declare-fun m!2033607 () Bool)

(assert (=> b!1669046 m!2033607))

(declare-fun m!2033609 () Bool)

(assert (=> b!1669046 m!2033609))

(declare-fun m!2033611 () Bool)

(assert (=> b!1669046 m!2033611))

(declare-fun m!2033613 () Bool)

(assert (=> b!1669046 m!2033613))

(declare-fun m!2033615 () Bool)

(assert (=> b!1669046 m!2033615))

(declare-fun m!2033617 () Bool)

(assert (=> b!1669046 m!2033617))

(declare-fun m!2033619 () Bool)

(assert (=> b!1669046 m!2033619))

(declare-fun m!2033621 () Bool)

(assert (=> b!1669046 m!2033621))

(declare-fun m!2033623 () Bool)

(assert (=> b!1669046 m!2033623))

(assert (=> b!1669046 m!2033615))

(declare-fun m!2033625 () Bool)

(assert (=> b!1669046 m!2033625))

(assert (=> b!1669046 m!2033623))

(declare-fun m!2033627 () Bool)

(assert (=> b!1669046 m!2033627))

(assert (=> b!1669046 m!2033611))

(declare-fun m!2033629 () Bool)

(assert (=> b!1669046 m!2033629))

(declare-fun m!2033631 () Bool)

(assert (=> b!1669046 m!2033631))

(declare-fun m!2033633 () Bool)

(assert (=> b!1669046 m!2033633))

(declare-fun m!2033635 () Bool)

(assert (=> b!1669046 m!2033635))

(declare-fun m!2033637 () Bool)

(assert (=> b!1669046 m!2033637))

(declare-fun m!2033639 () Bool)

(assert (=> b!1669046 m!2033639))

(assert (=> b!1669046 m!2033627))

(declare-fun m!2033641 () Bool)

(assert (=> b!1669046 m!2033641))

(assert (=> b!1669046 m!2033359))

(declare-fun m!2033643 () Bool)

(assert (=> b!1669046 m!2033643))

(declare-fun m!2033645 () Bool)

(assert (=> b!1669046 m!2033645))

(assert (=> b!1669046 m!2033643))

(declare-fun m!2033647 () Bool)

(assert (=> b!1669046 m!2033647))

(assert (=> b!1669046 m!2033623))

(assert (=> b!1669046 m!2033617))

(declare-fun m!2033649 () Bool)

(assert (=> b!1669046 m!2033649))

(assert (=> b!1669046 m!2033617))

(assert (=> b!1669046 m!2033623))

(declare-fun m!2033651 () Bool)

(assert (=> b!1669046 m!2033651))

(declare-fun m!2033653 () Bool)

(assert (=> b!1669046 m!2033653))

(declare-fun m!2033655 () Bool)

(assert (=> b!1669046 m!2033655))

(assert (=> b!1669046 m!2033631))

(assert (=> b!1669046 m!2033621))

(declare-fun m!2033657 () Bool)

(assert (=> b!1669046 m!2033657))

(assert (=> b!1669046 m!2033617))

(declare-fun m!2033659 () Bool)

(assert (=> b!1669046 m!2033659))

(assert (=> b!1669046 m!2033627))

(declare-fun m!2033661 () Bool)

(assert (=> b!1669046 m!2033661))

(declare-fun m!2033663 () Bool)

(assert (=> b!1669046 m!2033663))

(assert (=> b!1669046 m!2033635))

(assert (=> b!1669046 m!2033611))

(declare-fun m!2033665 () Bool)

(assert (=> b!1669046 m!2033665))

(assert (=> b!1669046 m!2033359))

(assert (=> b!1669046 m!2033361))

(assert (=> b!1669046 m!2033637))

(declare-fun m!2033667 () Bool)

(assert (=> b!1669046 m!2033667))

(assert (=> b!1669046 m!2033653))

(declare-fun m!2033669 () Bool)

(assert (=> b!1669046 m!2033669))

(declare-fun m!2033671 () Bool)

(assert (=> b!1669046 m!2033671))

(assert (=> b!1669046 m!2033663))

(declare-fun m!2033673 () Bool)

(assert (=> b!1669046 m!2033673))

(assert (=> b!1669046 m!2033633))

(assert (=> b!1669046 m!2033607))

(declare-fun m!2033675 () Bool)

(assert (=> b!1669046 m!2033675))

(declare-fun m!2033677 () Bool)

(assert (=> b!1669046 m!2033677))

(assert (=> b!1669047 m!2033359))

(assert (=> b!1669047 m!2033359))

(assert (=> b!1669047 m!2033361))

(assert (=> b!1669047 m!2033361))

(assert (=> b!1669047 m!2033603))

(declare-fun m!2033679 () Bool)

(assert (=> b!1669047 m!2033679))

(assert (=> b!1668913 d!504677))

(declare-fun b!1669057 () Bool)

(declare-fun res!748509 () Bool)

(declare-fun e!1069598 () Bool)

(assert (=> b!1669057 (=> (not res!748509) (not e!1069598))))

(assert (=> b!1669057 (= res!748509 (= (head!3724 lt!628411) (head!3724 lt!628412)))))

(declare-fun b!1669056 () Bool)

(declare-fun e!1069599 () Bool)

(assert (=> b!1669056 (= e!1069599 e!1069598)))

(declare-fun res!748507 () Bool)

(assert (=> b!1669056 (=> (not res!748507) (not e!1069598))))

(assert (=> b!1669056 (= res!748507 (not ((_ is Nil!18397) lt!628412)))))

(declare-fun d!504683 () Bool)

(declare-fun e!1069600 () Bool)

(assert (=> d!504683 e!1069600))

(declare-fun res!748508 () Bool)

(assert (=> d!504683 (=> res!748508 e!1069600)))

(declare-fun lt!628622 () Bool)

(assert (=> d!504683 (= res!748508 (not lt!628622))))

(assert (=> d!504683 (= lt!628622 e!1069599)))

(declare-fun res!748506 () Bool)

(assert (=> d!504683 (=> res!748506 e!1069599)))

(assert (=> d!504683 (= res!748506 ((_ is Nil!18397) lt!628411))))

(assert (=> d!504683 (= (isPrefix!1499 lt!628411 lt!628412) lt!628622)))

(declare-fun b!1669059 () Bool)

(declare-fun size!14636 (List!18467) Int)

(assert (=> b!1669059 (= e!1069600 (>= (size!14636 lt!628412) (size!14636 lt!628411)))))

(declare-fun b!1669058 () Bool)

(declare-fun tail!2488 (List!18467) List!18467)

(assert (=> b!1669058 (= e!1069598 (isPrefix!1499 (tail!2488 lt!628411) (tail!2488 lt!628412)))))

(assert (= (and d!504683 (not res!748506)) b!1669056))

(assert (= (and b!1669056 res!748507) b!1669057))

(assert (= (and b!1669057 res!748509) b!1669058))

(assert (= (and d!504683 (not res!748508)) b!1669059))

(declare-fun m!2033681 () Bool)

(assert (=> b!1669057 m!2033681))

(declare-fun m!2033683 () Bool)

(assert (=> b!1669057 m!2033683))

(declare-fun m!2033685 () Bool)

(assert (=> b!1669059 m!2033685))

(declare-fun m!2033687 () Bool)

(assert (=> b!1669059 m!2033687))

(declare-fun m!2033689 () Bool)

(assert (=> b!1669058 m!2033689))

(declare-fun m!2033691 () Bool)

(assert (=> b!1669058 m!2033691))

(assert (=> b!1669058 m!2033689))

(assert (=> b!1669058 m!2033691))

(declare-fun m!2033693 () Bool)

(assert (=> b!1669058 m!2033693))

(assert (=> b!1668913 d!504683))

(declare-fun d!504685 () Bool)

(assert (=> d!504685 (isPrefix!1499 lt!628411 (++!5012 lt!628411 lt!628416))))

(declare-fun lt!628625 () Unit!31177)

(declare-fun choose!10053 (List!18467 List!18467) Unit!31177)

(assert (=> d!504685 (= lt!628625 (choose!10053 lt!628411 lt!628416))))

(assert (=> d!504685 (= (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!628411 lt!628416) lt!628625)))

(declare-fun bs!397942 () Bool)

(assert (= bs!397942 d!504685))

(assert (=> bs!397942 m!2033345))

(assert (=> bs!397942 m!2033345))

(declare-fun m!2033695 () Bool)

(assert (=> bs!397942 m!2033695))

(declare-fun m!2033697 () Bool)

(assert (=> bs!397942 m!2033697))

(assert (=> b!1668913 d!504685))

(declare-fun d!504687 () Bool)

(declare-fun lt!628628 () BalanceConc!12204)

(declare-fun printList!983 (LexerInterface!2870 List!18469) List!18467)

(assert (=> d!504687 (= (list!7363 lt!628628) (printList!983 thiss!17113 (list!7364 (seqFromList!2218 tokens!457))))))

(assert (=> d!504687 (= lt!628628 (printTailRec!921 thiss!17113 (seqFromList!2218 tokens!457) 0 (BalanceConc!12205 Empty!6130)))))

(assert (=> d!504687 (= (print!1401 thiss!17113 (seqFromList!2218 tokens!457)) lt!628628)))

(declare-fun bs!397943 () Bool)

(assert (= bs!397943 d!504687))

(declare-fun m!2033699 () Bool)

(assert (=> bs!397943 m!2033699))

(assert (=> bs!397943 m!2033349))

(declare-fun m!2033701 () Bool)

(assert (=> bs!397943 m!2033701))

(assert (=> bs!397943 m!2033701))

(declare-fun m!2033703 () Bool)

(assert (=> bs!397943 m!2033703))

(assert (=> bs!397943 m!2033349))

(declare-fun m!2033705 () Bool)

(assert (=> bs!397943 m!2033705))

(assert (=> b!1668908 d!504687))

(declare-fun b!1669133 () Bool)

(declare-fun e!1069657 () Bool)

(declare-fun lt!628632 () tuple2!18114)

(declare-fun isEmpty!11455 (BalanceConc!12206) Bool)

(assert (=> b!1669133 (= e!1069657 (not (isEmpty!11455 (_1!10459 lt!628632))))))

(declare-fun b!1669134 () Bool)

(declare-fun e!1069656 () Bool)

(assert (=> b!1669134 (= e!1069656 (= (_2!10459 lt!628632) lt!628415))))

(declare-fun b!1669136 () Bool)

(assert (=> b!1669136 (= e!1069656 e!1069657)))

(declare-fun res!748519 () Bool)

(declare-fun size!14637 (BalanceConc!12204) Int)

(assert (=> b!1669136 (= res!748519 (< (size!14637 (_2!10459 lt!628632)) (size!14637 lt!628415)))))

(assert (=> b!1669136 (=> (not res!748519) (not e!1069657))))

(declare-fun b!1669137 () Bool)

(declare-fun e!1069655 () Bool)

(declare-datatypes ((tuple2!18122 0))(
  ( (tuple2!18123 (_1!10463 List!18469) (_2!10463 List!18467)) )
))
(declare-fun lexList!895 (LexerInterface!2870 List!18470 List!18467) tuple2!18122)

(assert (=> b!1669137 (= e!1069655 (= (list!7363 (_2!10459 lt!628632)) (_2!10463 (lexList!895 thiss!17113 rules!1846 (list!7363 lt!628415)))))))

(declare-fun d!504689 () Bool)

(assert (=> d!504689 e!1069655))

(declare-fun res!748518 () Bool)

(assert (=> d!504689 (=> (not res!748518) (not e!1069655))))

(assert (=> d!504689 (= res!748518 e!1069656)))

(declare-fun c!271578 () Bool)

(declare-fun size!14638 (BalanceConc!12206) Int)

(assert (=> d!504689 (= c!271578 (> (size!14638 (_1!10459 lt!628632)) 0))))

(declare-fun lexTailRecV2!618 (LexerInterface!2870 List!18470 BalanceConc!12204 BalanceConc!12204 BalanceConc!12204 BalanceConc!12206) tuple2!18114)

(assert (=> d!504689 (= lt!628632 (lexTailRecV2!618 thiss!17113 rules!1846 lt!628415 (BalanceConc!12205 Empty!6130) lt!628415 (BalanceConc!12207 Empty!6131)))))

(assert (=> d!504689 (= (lex!1354 thiss!17113 rules!1846 lt!628415) lt!628632)))

(declare-fun b!1669135 () Bool)

(declare-fun res!748520 () Bool)

(assert (=> b!1669135 (=> (not res!748520) (not e!1069655))))

(assert (=> b!1669135 (= res!748520 (= (list!7364 (_1!10459 lt!628632)) (_1!10463 (lexList!895 thiss!17113 rules!1846 (list!7363 lt!628415)))))))

(assert (= (and d!504689 c!271578) b!1669136))

(assert (= (and d!504689 (not c!271578)) b!1669134))

(assert (= (and b!1669136 res!748519) b!1669133))

(assert (= (and d!504689 res!748518) b!1669135))

(assert (= (and b!1669135 res!748520) b!1669137))

(declare-fun m!2033723 () Bool)

(assert (=> b!1669133 m!2033723))

(declare-fun m!2033725 () Bool)

(assert (=> b!1669136 m!2033725))

(declare-fun m!2033727 () Bool)

(assert (=> b!1669136 m!2033727))

(declare-fun m!2033729 () Bool)

(assert (=> b!1669135 m!2033729))

(assert (=> b!1669135 m!2033355))

(assert (=> b!1669135 m!2033355))

(declare-fun m!2033731 () Bool)

(assert (=> b!1669135 m!2033731))

(declare-fun m!2033733 () Bool)

(assert (=> d!504689 m!2033733))

(declare-fun m!2033735 () Bool)

(assert (=> d!504689 m!2033735))

(declare-fun m!2033737 () Bool)

(assert (=> b!1669137 m!2033737))

(assert (=> b!1669137 m!2033355))

(assert (=> b!1669137 m!2033355))

(assert (=> b!1669137 m!2033731))

(assert (=> b!1668908 d!504689))

(declare-fun d!504691 () Bool)

(declare-fun list!7368 (Conc!6130) List!18467)

(assert (=> d!504691 (= (list!7363 lt!628409) (list!7368 (c!271555 lt!628409)))))

(declare-fun bs!397944 () Bool)

(assert (= bs!397944 d!504691))

(declare-fun m!2033739 () Bool)

(assert (=> bs!397944 m!2033739))

(assert (=> b!1668908 d!504691))

(declare-fun d!504693 () Bool)

(declare-fun lt!628633 () BalanceConc!12204)

(assert (=> d!504693 (= (list!7363 lt!628633) (printList!983 thiss!17113 (list!7364 (seqFromList!2218 (t!152488 tokens!457)))))))

(assert (=> d!504693 (= lt!628633 (printTailRec!921 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)) 0 (BalanceConc!12205 Empty!6130)))))

(assert (=> d!504693 (= (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))) lt!628633)))

(declare-fun bs!397945 () Bool)

(assert (= bs!397945 d!504693))

(declare-fun m!2033741 () Bool)

(assert (=> bs!397945 m!2033741))

(assert (=> bs!397945 m!2033359))

(declare-fun m!2033743 () Bool)

(assert (=> bs!397945 m!2033743))

(assert (=> bs!397945 m!2033743))

(declare-fun m!2033745 () Bool)

(assert (=> bs!397945 m!2033745))

(assert (=> bs!397945 m!2033359))

(declare-fun m!2033747 () Bool)

(assert (=> bs!397945 m!2033747))

(assert (=> b!1668908 d!504693))

(declare-fun d!504695 () Bool)

(declare-fun lt!628636 () BalanceConc!12204)

(assert (=> d!504695 (= (list!7363 lt!628636) (originalCharacters!4055 (h!23800 tokens!457)))))

(declare-fun dynLambda!8297 (Int TokenValue!3331) BalanceConc!12204)

(assert (=> d!504695 (= lt!628636 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))

(assert (=> d!504695 (= (charsOf!1890 (h!23800 tokens!457)) lt!628636)))

(declare-fun b_lambda!52421 () Bool)

(assert (=> (not b_lambda!52421) (not d!504695)))

(declare-fun t!152505 () Bool)

(declare-fun tb!95775 () Bool)

(assert (=> (and b!1668915 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) t!152505) tb!95775))

(declare-fun b!1669142 () Bool)

(declare-fun e!1069660 () Bool)

(declare-fun tp!481882 () Bool)

(declare-fun inv!23750 (Conc!6130) Bool)

(assert (=> b!1669142 (= e!1069660 (and (inv!23750 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))) tp!481882))))

(declare-fun result!115720 () Bool)

(declare-fun inv!23751 (BalanceConc!12204) Bool)

(assert (=> tb!95775 (= result!115720 (and (inv!23751 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))) e!1069660))))

(assert (= tb!95775 b!1669142))

(declare-fun m!2033749 () Bool)

(assert (=> b!1669142 m!2033749))

(declare-fun m!2033751 () Bool)

(assert (=> tb!95775 m!2033751))

(assert (=> d!504695 t!152505))

(declare-fun b_and!118685 () Bool)

(assert (= b_and!118663 (and (=> t!152505 result!115720) b_and!118685)))

(declare-fun t!152507 () Bool)

(declare-fun tb!95777 () Bool)

(assert (=> (and b!1668919 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) t!152507) tb!95777))

(declare-fun result!115724 () Bool)

(assert (= result!115724 result!115720))

(assert (=> d!504695 t!152507))

(declare-fun b_and!118687 () Bool)

(assert (= b_and!118667 (and (=> t!152507 result!115724) b_and!118687)))

(declare-fun m!2033753 () Bool)

(assert (=> d!504695 m!2033753))

(declare-fun m!2033755 () Bool)

(assert (=> d!504695 m!2033755))

(assert (=> b!1668908 d!504695))

(declare-fun d!504697 () Bool)

(assert (=> d!504697 (= (seqFromList!2218 (t!152488 tokens!457)) (fromListB!1007 (t!152488 tokens!457)))))

(declare-fun bs!397946 () Bool)

(assert (= bs!397946 d!504697))

(declare-fun m!2033757 () Bool)

(assert (=> bs!397946 m!2033757))

(assert (=> b!1668908 d!504697))

(declare-fun d!504699 () Bool)

(declare-fun e!1069665 () Bool)

(assert (=> d!504699 e!1069665))

(declare-fun res!748526 () Bool)

(assert (=> d!504699 (=> (not res!748526) (not e!1069665))))

(declare-fun lt!628639 () List!18467)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2573 (List!18467) (InoxSet C!9312))

(assert (=> d!504699 (= res!748526 (= (content!2573 lt!628639) ((_ map or) (content!2573 lt!628411) (content!2573 lt!628416))))))

(declare-fun e!1069666 () List!18467)

(assert (=> d!504699 (= lt!628639 e!1069666)))

(declare-fun c!271581 () Bool)

(assert (=> d!504699 (= c!271581 ((_ is Nil!18397) lt!628411))))

(assert (=> d!504699 (= (++!5012 lt!628411 lt!628416) lt!628639)))

(declare-fun b!1669152 () Bool)

(assert (=> b!1669152 (= e!1069666 (Cons!18397 (h!23798 lt!628411) (++!5012 (t!152486 lt!628411) lt!628416)))))

(declare-fun b!1669151 () Bool)

(assert (=> b!1669151 (= e!1069666 lt!628416)))

(declare-fun b!1669153 () Bool)

(declare-fun res!748525 () Bool)

(assert (=> b!1669153 (=> (not res!748525) (not e!1069665))))

(assert (=> b!1669153 (= res!748525 (= (size!14636 lt!628639) (+ (size!14636 lt!628411) (size!14636 lt!628416))))))

(declare-fun b!1669154 () Bool)

(assert (=> b!1669154 (= e!1069665 (or (not (= lt!628416 Nil!18397)) (= lt!628639 lt!628411)))))

(assert (= (and d!504699 c!271581) b!1669151))

(assert (= (and d!504699 (not c!271581)) b!1669152))

(assert (= (and d!504699 res!748526) b!1669153))

(assert (= (and b!1669153 res!748525) b!1669154))

(declare-fun m!2033759 () Bool)

(assert (=> d!504699 m!2033759))

(declare-fun m!2033761 () Bool)

(assert (=> d!504699 m!2033761))

(declare-fun m!2033763 () Bool)

(assert (=> d!504699 m!2033763))

(declare-fun m!2033765 () Bool)

(assert (=> b!1669152 m!2033765))

(declare-fun m!2033767 () Bool)

(assert (=> b!1669153 m!2033767))

(assert (=> b!1669153 m!2033687))

(declare-fun m!2033769 () Bool)

(assert (=> b!1669153 m!2033769))

(assert (=> b!1668908 d!504699))

(declare-fun d!504701 () Bool)

(assert (=> d!504701 (= (list!7363 (charsOf!1890 (h!23800 tokens!457))) (list!7368 (c!271555 (charsOf!1890 (h!23800 tokens!457)))))))

(declare-fun bs!397947 () Bool)

(assert (= bs!397947 d!504701))

(declare-fun m!2033771 () Bool)

(assert (=> bs!397947 m!2033771))

(assert (=> b!1668908 d!504701))

(declare-fun d!504703 () Bool)

(assert (=> d!504703 (= (list!7363 lt!628415) (list!7368 (c!271555 lt!628415)))))

(declare-fun bs!397948 () Bool)

(assert (= bs!397948 d!504703))

(declare-fun m!2033773 () Bool)

(assert (=> bs!397948 m!2033773))

(assert (=> b!1668908 d!504703))

(declare-fun d!504705 () Bool)

(assert (=> d!504705 (= (seqFromList!2218 tokens!457) (fromListB!1007 tokens!457))))

(declare-fun bs!397949 () Bool)

(assert (= bs!397949 d!504705))

(declare-fun m!2033775 () Bool)

(assert (=> bs!397949 m!2033775))

(assert (=> b!1668908 d!504705))

(declare-fun b!1669165 () Bool)

(declare-fun e!1069674 () Bool)

(declare-fun inv!16 (TokenValue!3331) Bool)

(assert (=> b!1669165 (= e!1069674 (inv!16 (value!102041 (h!23800 tokens!457))))))

(declare-fun b!1669166 () Bool)

(declare-fun e!1069673 () Bool)

(declare-fun inv!15 (TokenValue!3331) Bool)

(assert (=> b!1669166 (= e!1069673 (inv!15 (value!102041 (h!23800 tokens!457))))))

(declare-fun b!1669168 () Bool)

(declare-fun e!1069675 () Bool)

(declare-fun inv!17 (TokenValue!3331) Bool)

(assert (=> b!1669168 (= e!1069675 (inv!17 (value!102041 (h!23800 tokens!457))))))

(declare-fun b!1669169 () Bool)

(assert (=> b!1669169 (= e!1069674 e!1069675)))

(declare-fun c!271587 () Bool)

(assert (=> b!1669169 (= c!271587 ((_ is IntegerValue!9994) (value!102041 (h!23800 tokens!457))))))

(declare-fun d!504707 () Bool)

(declare-fun c!271586 () Bool)

(assert (=> d!504707 (= c!271586 ((_ is IntegerValue!9993) (value!102041 (h!23800 tokens!457))))))

(assert (=> d!504707 (= (inv!21 (value!102041 (h!23800 tokens!457))) e!1069674)))

(declare-fun b!1669167 () Bool)

(declare-fun res!748529 () Bool)

(assert (=> b!1669167 (=> res!748529 e!1069673)))

(assert (=> b!1669167 (= res!748529 (not ((_ is IntegerValue!9995) (value!102041 (h!23800 tokens!457)))))))

(assert (=> b!1669167 (= e!1069675 e!1069673)))

(assert (= (and d!504707 c!271586) b!1669165))

(assert (= (and d!504707 (not c!271586)) b!1669169))

(assert (= (and b!1669169 c!271587) b!1669168))

(assert (= (and b!1669169 (not c!271587)) b!1669167))

(assert (= (and b!1669167 (not res!748529)) b!1669166))

(declare-fun m!2033777 () Bool)

(assert (=> b!1669165 m!2033777))

(declare-fun m!2033779 () Bool)

(assert (=> b!1669166 m!2033779))

(declare-fun m!2033781 () Bool)

(assert (=> b!1669168 m!2033781))

(assert (=> b!1668912 d!504707))

(declare-fun d!504709 () Bool)

(assert (=> d!504709 (= (isEmpty!11449 rules!1846) ((_ is Nil!18400) rules!1846))))

(assert (=> b!1668910 d!504709))

(declare-fun d!504711 () Bool)

(declare-fun res!748534 () Bool)

(declare-fun e!1069678 () Bool)

(assert (=> d!504711 (=> (not res!748534) (not e!1069678))))

(assert (=> d!504711 (= res!748534 (not (isEmpty!11453 (originalCharacters!4055 (h!23800 tokens!457)))))))

(assert (=> d!504711 (= (inv!23747 (h!23800 tokens!457)) e!1069678)))

(declare-fun b!1669174 () Bool)

(declare-fun res!748535 () Bool)

(assert (=> b!1669174 (=> (not res!748535) (not e!1069678))))

(assert (=> b!1669174 (= res!748535 (= (originalCharacters!4055 (h!23800 tokens!457)) (list!7363 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))))

(declare-fun b!1669175 () Bool)

(assert (=> b!1669175 (= e!1069678 (= (size!14632 (h!23800 tokens!457)) (size!14636 (originalCharacters!4055 (h!23800 tokens!457)))))))

(assert (= (and d!504711 res!748534) b!1669174))

(assert (= (and b!1669174 res!748535) b!1669175))

(declare-fun b_lambda!52423 () Bool)

(assert (=> (not b_lambda!52423) (not b!1669174)))

(assert (=> b!1669174 t!152505))

(declare-fun b_and!118689 () Bool)

(assert (= b_and!118685 (and (=> t!152505 result!115720) b_and!118689)))

(assert (=> b!1669174 t!152507))

(declare-fun b_and!118691 () Bool)

(assert (= b_and!118687 (and (=> t!152507 result!115724) b_and!118691)))

(declare-fun m!2033783 () Bool)

(assert (=> d!504711 m!2033783))

(assert (=> b!1669174 m!2033755))

(assert (=> b!1669174 m!2033755))

(declare-fun m!2033785 () Bool)

(assert (=> b!1669174 m!2033785))

(declare-fun m!2033787 () Bool)

(assert (=> b!1669175 m!2033787))

(assert (=> b!1668921 d!504711))

(declare-fun d!504713 () Bool)

(declare-fun res!748541 () Bool)

(declare-fun e!1069684 () Bool)

(assert (=> d!504713 (=> res!748541 e!1069684)))

(assert (=> d!504713 (= res!748541 (or (not ((_ is Cons!18399) tokens!457)) (not ((_ is Cons!18399) (t!152488 tokens!457)))))))

(assert (=> d!504713 (= (tokensListTwoByTwoPredicateSeparableList!563 thiss!17113 tokens!457 rules!1846) e!1069684)))

(declare-fun b!1669180 () Bool)

(declare-fun e!1069683 () Bool)

(assert (=> b!1669180 (= e!1069684 e!1069683)))

(declare-fun res!748540 () Bool)

(assert (=> b!1669180 (=> (not res!748540) (not e!1069683))))

(declare-fun separableTokensPredicate!810 (LexerInterface!2870 Token!6048 Token!6048 List!18470) Bool)

(assert (=> b!1669180 (= res!748540 (separableTokensPredicate!810 thiss!17113 (h!23800 tokens!457) (h!23800 (t!152488 tokens!457)) rules!1846))))

(declare-fun lt!628654 () Unit!31177)

(declare-fun Unit!31210 () Unit!31177)

(assert (=> b!1669180 (= lt!628654 Unit!31210)))

(assert (=> b!1669180 (> (size!14637 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) 0)))

(declare-fun lt!628655 () Unit!31177)

(declare-fun Unit!31211 () Unit!31177)

(assert (=> b!1669180 (= lt!628655 Unit!31211)))

(assert (=> b!1669180 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457)))))

(declare-fun lt!628657 () Unit!31177)

(declare-fun Unit!31212 () Unit!31177)

(assert (=> b!1669180 (= lt!628657 Unit!31212)))

(assert (=> b!1669180 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 tokens!457))))

(declare-fun lt!628656 () Unit!31177)

(declare-fun lt!628658 () Unit!31177)

(assert (=> b!1669180 (= lt!628656 lt!628658)))

(assert (=> b!1669180 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 (LexerInterface!2870 List!18470 List!18469 Token!6048) Unit!31177)

(assert (=> b!1669180 (= lt!628658 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 thiss!17113 rules!1846 tokens!457 (h!23800 (t!152488 tokens!457))))))

(declare-fun lt!628659 () Unit!31177)

(declare-fun lt!628660 () Unit!31177)

(assert (=> b!1669180 (= lt!628659 lt!628660)))

(assert (=> b!1669180 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 tokens!457))))

(assert (=> b!1669180 (= lt!628660 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 thiss!17113 rules!1846 tokens!457 (h!23800 tokens!457)))))

(declare-fun b!1669181 () Bool)

(assert (=> b!1669181 (= e!1069683 (tokensListTwoByTwoPredicateSeparableList!563 thiss!17113 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))) rules!1846))))

(assert (= (and d!504713 (not res!748541)) b!1669180))

(assert (= (and b!1669180 res!748540) b!1669181))

(declare-fun m!2033789 () Bool)

(assert (=> b!1669180 m!2033789))

(declare-fun m!2033791 () Bool)

(assert (=> b!1669180 m!2033791))

(declare-fun m!2033793 () Bool)

(assert (=> b!1669180 m!2033793))

(assert (=> b!1669180 m!2033501))

(assert (=> b!1669180 m!2033621))

(declare-fun m!2033795 () Bool)

(assert (=> b!1669180 m!2033795))

(assert (=> b!1669180 m!2033621))

(declare-fun m!2033797 () Bool)

(assert (=> b!1669180 m!2033797))

(declare-fun m!2033799 () Bool)

(assert (=> b!1669181 m!2033799))

(assert (=> b!1668916 d!504713))

(declare-fun d!504715 () Bool)

(assert (=> d!504715 (= (inv!23743 (tag!3525 (h!23801 rules!1846))) (= (mod (str.len (value!102040 (tag!3525 (h!23801 rules!1846)))) 2) 0))))

(assert (=> b!1668911 d!504715))

(declare-fun d!504717 () Bool)

(declare-fun res!748542 () Bool)

(declare-fun e!1069685 () Bool)

(assert (=> d!504717 (=> (not res!748542) (not e!1069685))))

(assert (=> d!504717 (= res!748542 (semiInverseModEq!1266 (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toValue!4704 (transformation!3241 (h!23801 rules!1846)))))))

(assert (=> d!504717 (= (inv!23746 (transformation!3241 (h!23801 rules!1846))) e!1069685)))

(declare-fun b!1669182 () Bool)

(assert (=> b!1669182 (= e!1069685 (equivClasses!1207 (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toValue!4704 (transformation!3241 (h!23801 rules!1846)))))))

(assert (= (and d!504717 res!748542) b!1669182))

(declare-fun m!2033801 () Bool)

(assert (=> d!504717 m!2033801))

(declare-fun m!2033803 () Bool)

(assert (=> b!1669182 m!2033803))

(assert (=> b!1668911 d!504717))

(declare-fun b!1669196 () Bool)

(declare-fun e!1069688 () Bool)

(declare-fun tp!481894 () Bool)

(declare-fun tp!481895 () Bool)

(assert (=> b!1669196 (= e!1069688 (and tp!481894 tp!481895))))

(declare-fun b!1669195 () Bool)

(declare-fun tp!481893 () Bool)

(assert (=> b!1669195 (= e!1069688 tp!481893)))

(assert (=> b!1668918 (= tp!481822 e!1069688)))

(declare-fun b!1669194 () Bool)

(declare-fun tp!481897 () Bool)

(declare-fun tp!481896 () Bool)

(assert (=> b!1669194 (= e!1069688 (and tp!481897 tp!481896))))

(declare-fun b!1669193 () Bool)

(declare-fun tp_is_empty!7413 () Bool)

(assert (=> b!1669193 (= e!1069688 tp_is_empty!7413)))

(assert (= (and b!1668918 ((_ is ElementMatch!4569) (regex!3241 (rule!5129 (h!23800 tokens!457))))) b!1669193))

(assert (= (and b!1668918 ((_ is Concat!7901) (regex!3241 (rule!5129 (h!23800 tokens!457))))) b!1669194))

(assert (= (and b!1668918 ((_ is Star!4569) (regex!3241 (rule!5129 (h!23800 tokens!457))))) b!1669195))

(assert (= (and b!1668918 ((_ is Union!4569) (regex!3241 (rule!5129 (h!23800 tokens!457))))) b!1669196))

(declare-fun b!1669207 () Bool)

(declare-fun b_free!45383 () Bool)

(declare-fun b_next!46087 () Bool)

(assert (=> b!1669207 (= b_free!45383 (not b_next!46087))))

(declare-fun tp!481906 () Bool)

(declare-fun b_and!118693 () Bool)

(assert (=> b!1669207 (= tp!481906 b_and!118693)))

(declare-fun b_free!45385 () Bool)

(declare-fun b_next!46089 () Bool)

(assert (=> b!1669207 (= b_free!45385 (not b_next!46089))))

(declare-fun t!152510 () Bool)

(declare-fun tb!95779 () Bool)

(assert (=> (and b!1669207 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) t!152510) tb!95779))

(declare-fun result!115730 () Bool)

(assert (= result!115730 result!115720))

(assert (=> d!504695 t!152510))

(assert (=> b!1669174 t!152510))

(declare-fun tp!481907 () Bool)

(declare-fun b_and!118695 () Bool)

(assert (=> b!1669207 (= tp!481907 (and (=> t!152510 result!115730) b_and!118695))))

(declare-fun e!1069700 () Bool)

(assert (=> b!1669207 (= e!1069700 (and tp!481906 tp!481907))))

(declare-fun b!1669206 () Bool)

(declare-fun e!1069699 () Bool)

(declare-fun tp!481908 () Bool)

(assert (=> b!1669206 (= e!1069699 (and tp!481908 (inv!23743 (tag!3525 (h!23801 (t!152489 rules!1846)))) (inv!23746 (transformation!3241 (h!23801 (t!152489 rules!1846)))) e!1069700))))

(declare-fun b!1669205 () Bool)

(declare-fun e!1069697 () Bool)

(declare-fun tp!481909 () Bool)

(assert (=> b!1669205 (= e!1069697 (and e!1069699 tp!481909))))

(assert (=> b!1668917 (= tp!481821 e!1069697)))

(assert (= b!1669206 b!1669207))

(assert (= b!1669205 b!1669206))

(assert (= (and b!1668917 ((_ is Cons!18400) (t!152489 rules!1846))) b!1669205))

(declare-fun m!2033805 () Bool)

(assert (=> b!1669206 m!2033805))

(declare-fun m!2033807 () Bool)

(assert (=> b!1669206 m!2033807))

(declare-fun b!1669212 () Bool)

(declare-fun e!1069703 () Bool)

(declare-fun tp!481912 () Bool)

(assert (=> b!1669212 (= e!1069703 (and tp_is_empty!7413 tp!481912))))

(assert (=> b!1668912 (= tp!481824 e!1069703)))

(assert (= (and b!1668912 ((_ is Cons!18397) (originalCharacters!4055 (h!23800 tokens!457)))) b!1669212))

(declare-fun b!1669226 () Bool)

(declare-fun b_free!45387 () Bool)

(declare-fun b_next!46091 () Bool)

(assert (=> b!1669226 (= b_free!45387 (not b_next!46091))))

(declare-fun tp!481924 () Bool)

(declare-fun b_and!118697 () Bool)

(assert (=> b!1669226 (= tp!481924 b_and!118697)))

(declare-fun b_free!45389 () Bool)

(declare-fun b_next!46093 () Bool)

(assert (=> b!1669226 (= b_free!45389 (not b_next!46093))))

(declare-fun t!152512 () Bool)

(declare-fun tb!95781 () Bool)

(assert (=> (and b!1669226 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) t!152512) tb!95781))

(declare-fun result!115736 () Bool)

(assert (= result!115736 result!115720))

(assert (=> d!504695 t!152512))

(assert (=> b!1669174 t!152512))

(declare-fun b_and!118699 () Bool)

(declare-fun tp!481927 () Bool)

(assert (=> b!1669226 (= tp!481927 (and (=> t!152512 result!115736) b_and!118699))))

(declare-fun e!1069716 () Bool)

(declare-fun tp!481926 () Bool)

(declare-fun e!1069719 () Bool)

(declare-fun b!1669224 () Bool)

(assert (=> b!1669224 (= e!1069719 (and (inv!21 (value!102041 (h!23800 (t!152488 tokens!457)))) e!1069716 tp!481926))))

(declare-fun e!1069720 () Bool)

(assert (=> b!1669226 (= e!1069720 (and tp!481924 tp!481927))))

(declare-fun b!1669225 () Bool)

(declare-fun tp!481923 () Bool)

(assert (=> b!1669225 (= e!1069716 (and tp!481923 (inv!23743 (tag!3525 (rule!5129 (h!23800 (t!152488 tokens!457))))) (inv!23746 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) e!1069720))))

(declare-fun tp!481925 () Bool)

(declare-fun e!1069717 () Bool)

(declare-fun b!1669223 () Bool)

(assert (=> b!1669223 (= e!1069717 (and (inv!23747 (h!23800 (t!152488 tokens!457))) e!1069719 tp!481925))))

(assert (=> b!1668921 (= tp!481823 e!1069717)))

(assert (= b!1669225 b!1669226))

(assert (= b!1669224 b!1669225))

(assert (= b!1669223 b!1669224))

(assert (= (and b!1668921 ((_ is Cons!18399) (t!152488 tokens!457))) b!1669223))

(declare-fun m!2033809 () Bool)

(assert (=> b!1669224 m!2033809))

(declare-fun m!2033811 () Bool)

(assert (=> b!1669225 m!2033811))

(declare-fun m!2033813 () Bool)

(assert (=> b!1669225 m!2033813))

(declare-fun m!2033815 () Bool)

(assert (=> b!1669223 m!2033815))

(declare-fun b!1669230 () Bool)

(declare-fun e!1069722 () Bool)

(declare-fun tp!481929 () Bool)

(declare-fun tp!481930 () Bool)

(assert (=> b!1669230 (= e!1069722 (and tp!481929 tp!481930))))

(declare-fun b!1669229 () Bool)

(declare-fun tp!481928 () Bool)

(assert (=> b!1669229 (= e!1069722 tp!481928)))

(assert (=> b!1668911 (= tp!481825 e!1069722)))

(declare-fun b!1669228 () Bool)

(declare-fun tp!481932 () Bool)

(declare-fun tp!481931 () Bool)

(assert (=> b!1669228 (= e!1069722 (and tp!481932 tp!481931))))

(declare-fun b!1669227 () Bool)

(assert (=> b!1669227 (= e!1069722 tp_is_empty!7413)))

(assert (= (and b!1668911 ((_ is ElementMatch!4569) (regex!3241 (h!23801 rules!1846)))) b!1669227))

(assert (= (and b!1668911 ((_ is Concat!7901) (regex!3241 (h!23801 rules!1846)))) b!1669228))

(assert (= (and b!1668911 ((_ is Star!4569) (regex!3241 (h!23801 rules!1846)))) b!1669229))

(assert (= (and b!1668911 ((_ is Union!4569) (regex!3241 (h!23801 rules!1846)))) b!1669230))

(declare-fun b_lambda!52425 () Bool)

(assert (= b_lambda!52423 (or (and b!1668915 b_free!45369) (and b!1668919 b_free!45373 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))))) (and b!1669207 b_free!45385 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))))) (and b!1669226 b_free!45389 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))))) b_lambda!52425)))

(declare-fun b_lambda!52427 () Bool)

(assert (= b_lambda!52421 (or (and b!1668915 b_free!45369) (and b!1668919 b_free!45373 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))))) (and b!1669207 b_free!45385 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))))) (and b!1669226 b_free!45389 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))))) b_lambda!52427)))

(check-sat (not b!1669058) b_and!118689 (not b!1669212) (not b!1669206) (not b_next!46077) (not b!1669015) (not d!504711) (not b_next!46073) (not b_lambda!52425) (not d!504671) (not d!504687) (not b!1669152) (not b!1669182) (not b_next!46075) (not b!1669224) (not d!504643) b_and!118693 (not b!1669174) (not b!1669057) (not d!504689) (not d!504705) (not b!1669003) (not b!1669196) (not b!1668967) (not b!1669022) b_and!118697 (not b_next!46071) (not b!1669165) (not b!1669046) (not d!504699) (not d!504677) (not b_lambda!52427) (not d!504675) (not b!1669194) (not b_next!46087) (not b!1669137) (not d!504691) (not b!1669142) (not b!1669230) b_and!118695 b_and!118699 (not b!1669205) (not b!1669166) (not b_next!46091) (not b!1669135) (not b!1669175) b_and!118691 (not d!504695) (not b!1669059) (not b!1669181) (not b!1669168) b_and!118665 (not d!504693) (not b!1669133) (not d!504637) (not d!504645) (not b!1669223) (not b!1669153) (not d!504697) (not b!1669195) (not b!1669180) (not d!504701) (not d!504639) (not d!504717) (not b_next!46089) b_and!118661 (not b!1669002) (not tb!95775) (not d!504685) (not b!1669225) (not b!1669229) (not b_next!46093) tp_is_empty!7413 (not d!504703) (not b!1669228) (not b!1669136) (not b!1669047))
(check-sat (not b_next!46075) b_and!118693 (not b_next!46087) b_and!118665 b_and!118689 (not b_next!46077) (not b_next!46089) b_and!118661 (not b_next!46093) (not b_next!46073) b_and!118697 (not b_next!46071) b_and!118695 b_and!118699 (not b_next!46091) b_and!118691)
(get-model)

(declare-fun d!504731 () Bool)

(assert (=> d!504731 true))

(declare-fun order!11053 () Int)

(declare-fun lambda!68009 () Int)

(declare-fun dynLambda!8299 (Int Int) Int)

(assert (=> d!504731 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8299 order!11053 lambda!68009))))

(declare-fun Forall2!532 (Int) Bool)

(assert (=> d!504731 (= (equivClasses!1207 (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (Forall2!532 lambda!68009))))

(declare-fun bs!397952 () Bool)

(assert (= bs!397952 d!504731))

(declare-fun m!2033863 () Bool)

(assert (=> bs!397952 m!2033863))

(assert (=> b!1669182 d!504731))

(declare-fun d!504737 () Bool)

(assert (=> d!504737 (= (list!7363 lt!628633) (list!7368 (c!271555 lt!628633)))))

(declare-fun bs!397953 () Bool)

(assert (= bs!397953 d!504737))

(declare-fun m!2033865 () Bool)

(assert (=> bs!397953 m!2033865))

(assert (=> d!504693 d!504737))

(declare-fun d!504739 () Bool)

(declare-fun c!271604 () Bool)

(assert (=> d!504739 (= c!271604 ((_ is Cons!18399) (list!7364 (seqFromList!2218 (t!152488 tokens!457)))))))

(declare-fun e!1069752 () List!18467)

(assert (=> d!504739 (= (printList!983 thiss!17113 (list!7364 (seqFromList!2218 (t!152488 tokens!457)))) e!1069752)))

(declare-fun b!1669279 () Bool)

(assert (=> b!1669279 (= e!1069752 (++!5012 (list!7363 (charsOf!1890 (h!23800 (list!7364 (seqFromList!2218 (t!152488 tokens!457)))))) (printList!983 thiss!17113 (t!152488 (list!7364 (seqFromList!2218 (t!152488 tokens!457)))))))))

(declare-fun b!1669280 () Bool)

(assert (=> b!1669280 (= e!1069752 Nil!18397)))

(assert (= (and d!504739 c!271604) b!1669279))

(assert (= (and d!504739 (not c!271604)) b!1669280))

(declare-fun m!2033873 () Bool)

(assert (=> b!1669279 m!2033873))

(assert (=> b!1669279 m!2033873))

(declare-fun m!2033875 () Bool)

(assert (=> b!1669279 m!2033875))

(declare-fun m!2033877 () Bool)

(assert (=> b!1669279 m!2033877))

(assert (=> b!1669279 m!2033875))

(assert (=> b!1669279 m!2033877))

(declare-fun m!2033879 () Bool)

(assert (=> b!1669279 m!2033879))

(assert (=> d!504693 d!504739))

(declare-fun d!504743 () Bool)

(assert (=> d!504743 (= (list!7364 (seqFromList!2218 (t!152488 tokens!457))) (list!7367 (c!271557 (seqFromList!2218 (t!152488 tokens!457)))))))

(declare-fun bs!397954 () Bool)

(assert (= bs!397954 d!504743))

(declare-fun m!2033881 () Bool)

(assert (=> bs!397954 m!2033881))

(assert (=> d!504693 d!504743))

(declare-fun d!504745 () Bool)

(declare-fun lt!628682 () BalanceConc!12204)

(declare-fun printListTailRec!414 (LexerInterface!2870 List!18469 List!18467) List!18467)

(declare-fun dropList!715 (BalanceConc!12206 Int) List!18469)

(assert (=> d!504745 (= (list!7363 lt!628682) (printListTailRec!414 thiss!17113 (dropList!715 (seqFromList!2218 (t!152488 tokens!457)) 0) (list!7363 (BalanceConc!12205 Empty!6130))))))

(declare-fun e!1069778 () BalanceConc!12204)

(assert (=> d!504745 (= lt!628682 e!1069778)))

(declare-fun c!271616 () Bool)

(assert (=> d!504745 (= c!271616 (>= 0 (size!14638 (seqFromList!2218 (t!152488 tokens!457)))))))

(declare-fun e!1069779 () Bool)

(assert (=> d!504745 e!1069779))

(declare-fun res!748590 () Bool)

(assert (=> d!504745 (=> (not res!748590) (not e!1069779))))

(assert (=> d!504745 (= res!748590 (>= 0 0))))

(assert (=> d!504745 (= (printTailRec!921 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)) 0 (BalanceConc!12205 Empty!6130)) lt!628682)))

(declare-fun b!1669329 () Bool)

(assert (=> b!1669329 (= e!1069779 (<= 0 (size!14638 (seqFromList!2218 (t!152488 tokens!457)))))))

(declare-fun b!1669330 () Bool)

(assert (=> b!1669330 (= e!1069778 (BalanceConc!12205 Empty!6130))))

(declare-fun b!1669331 () Bool)

(declare-fun ++!5014 (BalanceConc!12204 BalanceConc!12204) BalanceConc!12204)

(declare-fun apply!4949 (BalanceConc!12206 Int) Token!6048)

(assert (=> b!1669331 (= e!1069778 (printTailRec!921 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)) (+ 0 1) (++!5014 (BalanceConc!12205 Empty!6130) (charsOf!1890 (apply!4949 (seqFromList!2218 (t!152488 tokens!457)) 0)))))))

(declare-fun lt!628683 () List!18469)

(assert (=> b!1669331 (= lt!628683 (list!7364 (seqFromList!2218 (t!152488 tokens!457))))))

(declare-fun lt!628688 () Unit!31177)

(declare-fun lemmaDropApply!621 (List!18469 Int) Unit!31177)

(assert (=> b!1669331 (= lt!628688 (lemmaDropApply!621 lt!628683 0))))

(declare-fun head!3726 (List!18469) Token!6048)

(declare-fun drop!941 (List!18469 Int) List!18469)

(declare-fun apply!4950 (List!18469 Int) Token!6048)

(assert (=> b!1669331 (= (head!3726 (drop!941 lt!628683 0)) (apply!4950 lt!628683 0))))

(declare-fun lt!628686 () Unit!31177)

(assert (=> b!1669331 (= lt!628686 lt!628688)))

(declare-fun lt!628684 () List!18469)

(assert (=> b!1669331 (= lt!628684 (list!7364 (seqFromList!2218 (t!152488 tokens!457))))))

(declare-fun lt!628685 () Unit!31177)

(declare-fun lemmaDropTail!601 (List!18469 Int) Unit!31177)

(assert (=> b!1669331 (= lt!628685 (lemmaDropTail!601 lt!628684 0))))

(declare-fun tail!2489 (List!18469) List!18469)

(assert (=> b!1669331 (= (tail!2489 (drop!941 lt!628684 0)) (drop!941 lt!628684 (+ 0 1)))))

(declare-fun lt!628687 () Unit!31177)

(assert (=> b!1669331 (= lt!628687 lt!628685)))

(assert (= (and d!504745 res!748590) b!1669329))

(assert (= (and d!504745 c!271616) b!1669330))

(assert (= (and d!504745 (not c!271616)) b!1669331))

(declare-fun m!2033901 () Bool)

(assert (=> d!504745 m!2033901))

(declare-fun m!2033903 () Bool)

(assert (=> d!504745 m!2033903))

(assert (=> d!504745 m!2033901))

(declare-fun m!2033905 () Bool)

(assert (=> d!504745 m!2033905))

(declare-fun m!2033907 () Bool)

(assert (=> d!504745 m!2033907))

(assert (=> d!504745 m!2033359))

(assert (=> d!504745 m!2033903))

(assert (=> d!504745 m!2033359))

(declare-fun m!2033909 () Bool)

(assert (=> d!504745 m!2033909))

(assert (=> b!1669329 m!2033359))

(assert (=> b!1669329 m!2033909))

(declare-fun m!2033911 () Bool)

(assert (=> b!1669331 m!2033911))

(declare-fun m!2033913 () Bool)

(assert (=> b!1669331 m!2033913))

(declare-fun m!2033915 () Bool)

(assert (=> b!1669331 m!2033915))

(assert (=> b!1669331 m!2033359))

(declare-fun m!2033917 () Bool)

(assert (=> b!1669331 m!2033917))

(assert (=> b!1669331 m!2033359))

(assert (=> b!1669331 m!2033743))

(declare-fun m!2033919 () Bool)

(assert (=> b!1669331 m!2033919))

(declare-fun m!2033921 () Bool)

(assert (=> b!1669331 m!2033921))

(declare-fun m!2033923 () Bool)

(assert (=> b!1669331 m!2033923))

(declare-fun m!2033925 () Bool)

(assert (=> b!1669331 m!2033925))

(assert (=> b!1669331 m!2033911))

(declare-fun m!2033927 () Bool)

(assert (=> b!1669331 m!2033927))

(assert (=> b!1669331 m!2033359))

(declare-fun m!2033929 () Bool)

(assert (=> b!1669331 m!2033929))

(declare-fun m!2033931 () Bool)

(assert (=> b!1669331 m!2033931))

(assert (=> b!1669331 m!2033917))

(declare-fun m!2033933 () Bool)

(assert (=> b!1669331 m!2033933))

(assert (=> b!1669331 m!2033933))

(assert (=> b!1669331 m!2033929))

(assert (=> b!1669331 m!2033913))

(assert (=> d!504693 d!504745))

(declare-fun d!504751 () Bool)

(assert (=> d!504751 (= (list!7363 lt!628628) (list!7368 (c!271555 lt!628628)))))

(declare-fun bs!397956 () Bool)

(assert (= bs!397956 d!504751))

(declare-fun m!2033935 () Bool)

(assert (=> bs!397956 m!2033935))

(assert (=> d!504687 d!504751))

(declare-fun d!504753 () Bool)

(declare-fun c!271617 () Bool)

(assert (=> d!504753 (= c!271617 ((_ is Cons!18399) (list!7364 (seqFromList!2218 tokens!457))))))

(declare-fun e!1069780 () List!18467)

(assert (=> d!504753 (= (printList!983 thiss!17113 (list!7364 (seqFromList!2218 tokens!457))) e!1069780)))

(declare-fun b!1669332 () Bool)

(assert (=> b!1669332 (= e!1069780 (++!5012 (list!7363 (charsOf!1890 (h!23800 (list!7364 (seqFromList!2218 tokens!457))))) (printList!983 thiss!17113 (t!152488 (list!7364 (seqFromList!2218 tokens!457))))))))

(declare-fun b!1669333 () Bool)

(assert (=> b!1669333 (= e!1069780 Nil!18397)))

(assert (= (and d!504753 c!271617) b!1669332))

(assert (= (and d!504753 (not c!271617)) b!1669333))

(declare-fun m!2033937 () Bool)

(assert (=> b!1669332 m!2033937))

(assert (=> b!1669332 m!2033937))

(declare-fun m!2033939 () Bool)

(assert (=> b!1669332 m!2033939))

(declare-fun m!2033941 () Bool)

(assert (=> b!1669332 m!2033941))

(assert (=> b!1669332 m!2033939))

(assert (=> b!1669332 m!2033941))

(declare-fun m!2033943 () Bool)

(assert (=> b!1669332 m!2033943))

(assert (=> d!504687 d!504753))

(declare-fun d!504755 () Bool)

(assert (=> d!504755 (= (list!7364 (seqFromList!2218 tokens!457)) (list!7367 (c!271557 (seqFromList!2218 tokens!457))))))

(declare-fun bs!397957 () Bool)

(assert (= bs!397957 d!504755))

(declare-fun m!2033945 () Bool)

(assert (=> bs!397957 m!2033945))

(assert (=> d!504687 d!504755))

(declare-fun d!504757 () Bool)

(declare-fun lt!628689 () BalanceConc!12204)

(assert (=> d!504757 (= (list!7363 lt!628689) (printListTailRec!414 thiss!17113 (dropList!715 (seqFromList!2218 tokens!457) 0) (list!7363 (BalanceConc!12205 Empty!6130))))))

(declare-fun e!1069781 () BalanceConc!12204)

(assert (=> d!504757 (= lt!628689 e!1069781)))

(declare-fun c!271618 () Bool)

(assert (=> d!504757 (= c!271618 (>= 0 (size!14638 (seqFromList!2218 tokens!457))))))

(declare-fun e!1069782 () Bool)

(assert (=> d!504757 e!1069782))

(declare-fun res!748591 () Bool)

(assert (=> d!504757 (=> (not res!748591) (not e!1069782))))

(assert (=> d!504757 (= res!748591 (>= 0 0))))

(assert (=> d!504757 (= (printTailRec!921 thiss!17113 (seqFromList!2218 tokens!457) 0 (BalanceConc!12205 Empty!6130)) lt!628689)))

(declare-fun b!1669334 () Bool)

(assert (=> b!1669334 (= e!1069782 (<= 0 (size!14638 (seqFromList!2218 tokens!457))))))

(declare-fun b!1669335 () Bool)

(assert (=> b!1669335 (= e!1069781 (BalanceConc!12205 Empty!6130))))

(declare-fun b!1669336 () Bool)

(assert (=> b!1669336 (= e!1069781 (printTailRec!921 thiss!17113 (seqFromList!2218 tokens!457) (+ 0 1) (++!5014 (BalanceConc!12205 Empty!6130) (charsOf!1890 (apply!4949 (seqFromList!2218 tokens!457) 0)))))))

(declare-fun lt!628690 () List!18469)

(assert (=> b!1669336 (= lt!628690 (list!7364 (seqFromList!2218 tokens!457)))))

(declare-fun lt!628695 () Unit!31177)

(assert (=> b!1669336 (= lt!628695 (lemmaDropApply!621 lt!628690 0))))

(assert (=> b!1669336 (= (head!3726 (drop!941 lt!628690 0)) (apply!4950 lt!628690 0))))

(declare-fun lt!628693 () Unit!31177)

(assert (=> b!1669336 (= lt!628693 lt!628695)))

(declare-fun lt!628691 () List!18469)

(assert (=> b!1669336 (= lt!628691 (list!7364 (seqFromList!2218 tokens!457)))))

(declare-fun lt!628692 () Unit!31177)

(assert (=> b!1669336 (= lt!628692 (lemmaDropTail!601 lt!628691 0))))

(assert (=> b!1669336 (= (tail!2489 (drop!941 lt!628691 0)) (drop!941 lt!628691 (+ 0 1)))))

(declare-fun lt!628694 () Unit!31177)

(assert (=> b!1669336 (= lt!628694 lt!628692)))

(assert (= (and d!504757 res!748591) b!1669334))

(assert (= (and d!504757 c!271618) b!1669335))

(assert (= (and d!504757 (not c!271618)) b!1669336))

(assert (=> d!504757 m!2033901))

(declare-fun m!2033947 () Bool)

(assert (=> d!504757 m!2033947))

(assert (=> d!504757 m!2033901))

(declare-fun m!2033949 () Bool)

(assert (=> d!504757 m!2033949))

(declare-fun m!2033951 () Bool)

(assert (=> d!504757 m!2033951))

(assert (=> d!504757 m!2033349))

(assert (=> d!504757 m!2033947))

(assert (=> d!504757 m!2033349))

(declare-fun m!2033953 () Bool)

(assert (=> d!504757 m!2033953))

(assert (=> b!1669334 m!2033349))

(assert (=> b!1669334 m!2033953))

(declare-fun m!2033955 () Bool)

(assert (=> b!1669336 m!2033955))

(declare-fun m!2033957 () Bool)

(assert (=> b!1669336 m!2033957))

(declare-fun m!2033959 () Bool)

(assert (=> b!1669336 m!2033959))

(assert (=> b!1669336 m!2033349))

(declare-fun m!2033961 () Bool)

(assert (=> b!1669336 m!2033961))

(assert (=> b!1669336 m!2033349))

(assert (=> b!1669336 m!2033701))

(declare-fun m!2033963 () Bool)

(assert (=> b!1669336 m!2033963))

(declare-fun m!2033965 () Bool)

(assert (=> b!1669336 m!2033965))

(declare-fun m!2033967 () Bool)

(assert (=> b!1669336 m!2033967))

(declare-fun m!2033969 () Bool)

(assert (=> b!1669336 m!2033969))

(assert (=> b!1669336 m!2033955))

(declare-fun m!2033971 () Bool)

(assert (=> b!1669336 m!2033971))

(assert (=> b!1669336 m!2033349))

(declare-fun m!2033973 () Bool)

(assert (=> b!1669336 m!2033973))

(declare-fun m!2033975 () Bool)

(assert (=> b!1669336 m!2033975))

(assert (=> b!1669336 m!2033961))

(declare-fun m!2033977 () Bool)

(assert (=> b!1669336 m!2033977))

(assert (=> b!1669336 m!2033977))

(assert (=> b!1669336 m!2033973))

(assert (=> b!1669336 m!2033957))

(assert (=> d!504687 d!504757))

(declare-fun b!1669337 () Bool)

(declare-fun e!1069784 () Bool)

(assert (=> b!1669337 (= e!1069784 (inv!16 (value!102041 (h!23800 (t!152488 tokens!457)))))))

(declare-fun b!1669338 () Bool)

(declare-fun e!1069783 () Bool)

(assert (=> b!1669338 (= e!1069783 (inv!15 (value!102041 (h!23800 (t!152488 tokens!457)))))))

(declare-fun b!1669340 () Bool)

(declare-fun e!1069785 () Bool)

(assert (=> b!1669340 (= e!1069785 (inv!17 (value!102041 (h!23800 (t!152488 tokens!457)))))))

(declare-fun b!1669341 () Bool)

(assert (=> b!1669341 (= e!1069784 e!1069785)))

(declare-fun c!271620 () Bool)

(assert (=> b!1669341 (= c!271620 ((_ is IntegerValue!9994) (value!102041 (h!23800 (t!152488 tokens!457)))))))

(declare-fun d!504759 () Bool)

(declare-fun c!271619 () Bool)

(assert (=> d!504759 (= c!271619 ((_ is IntegerValue!9993) (value!102041 (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504759 (= (inv!21 (value!102041 (h!23800 (t!152488 tokens!457)))) e!1069784)))

(declare-fun b!1669339 () Bool)

(declare-fun res!748592 () Bool)

(assert (=> b!1669339 (=> res!748592 e!1069783)))

(assert (=> b!1669339 (= res!748592 (not ((_ is IntegerValue!9995) (value!102041 (h!23800 (t!152488 tokens!457))))))))

(assert (=> b!1669339 (= e!1069785 e!1069783)))

(assert (= (and d!504759 c!271619) b!1669337))

(assert (= (and d!504759 (not c!271619)) b!1669341))

(assert (= (and b!1669341 c!271620) b!1669340))

(assert (= (and b!1669341 (not c!271620)) b!1669339))

(assert (= (and b!1669339 (not res!748592)) b!1669338))

(declare-fun m!2033979 () Bool)

(assert (=> b!1669337 m!2033979))

(declare-fun m!2033981 () Bool)

(assert (=> b!1669338 m!2033981))

(declare-fun m!2033983 () Bool)

(assert (=> b!1669340 m!2033983))

(assert (=> b!1669224 d!504759))

(declare-fun d!504761 () Bool)

(declare-fun e!1069788 () Bool)

(assert (=> d!504761 e!1069788))

(declare-fun res!748595 () Bool)

(assert (=> d!504761 (=> (not res!748595) (not e!1069788))))

(declare-fun lt!628698 () BalanceConc!12206)

(assert (=> d!504761 (= res!748595 (= (list!7364 lt!628698) (t!152488 tokens!457)))))

(declare-fun fromList!410 (List!18469) Conc!6131)

(assert (=> d!504761 (= lt!628698 (BalanceConc!12207 (fromList!410 (t!152488 tokens!457))))))

(assert (=> d!504761 (= (fromListB!1007 (t!152488 tokens!457)) lt!628698)))

(declare-fun b!1669344 () Bool)

(declare-fun isBalanced!1905 (Conc!6131) Bool)

(assert (=> b!1669344 (= e!1069788 (isBalanced!1905 (fromList!410 (t!152488 tokens!457))))))

(assert (= (and d!504761 res!748595) b!1669344))

(declare-fun m!2033985 () Bool)

(assert (=> d!504761 m!2033985))

(declare-fun m!2033987 () Bool)

(assert (=> d!504761 m!2033987))

(assert (=> b!1669344 m!2033987))

(assert (=> b!1669344 m!2033987))

(declare-fun m!2033989 () Bool)

(assert (=> b!1669344 m!2033989))

(assert (=> d!504697 d!504761))

(declare-fun b!1669346 () Bool)

(declare-fun res!748599 () Bool)

(declare-fun e!1069789 () Bool)

(assert (=> b!1669346 (=> (not res!748599) (not e!1069789))))

(assert (=> b!1669346 (= res!748599 (= (head!3724 lt!628613) (head!3724 (++!5012 lt!628613 lt!628617))))))

(declare-fun b!1669345 () Bool)

(declare-fun e!1069790 () Bool)

(assert (=> b!1669345 (= e!1069790 e!1069789)))

(declare-fun res!748597 () Bool)

(assert (=> b!1669345 (=> (not res!748597) (not e!1069789))))

(assert (=> b!1669345 (= res!748597 (not ((_ is Nil!18397) (++!5012 lt!628613 lt!628617))))))

(declare-fun d!504763 () Bool)

(declare-fun e!1069791 () Bool)

(assert (=> d!504763 e!1069791))

(declare-fun res!748598 () Bool)

(assert (=> d!504763 (=> res!748598 e!1069791)))

(declare-fun lt!628699 () Bool)

(assert (=> d!504763 (= res!748598 (not lt!628699))))

(assert (=> d!504763 (= lt!628699 e!1069790)))

(declare-fun res!748596 () Bool)

(assert (=> d!504763 (=> res!748596 e!1069790)))

(assert (=> d!504763 (= res!748596 ((_ is Nil!18397) lt!628613))))

(assert (=> d!504763 (= (isPrefix!1499 lt!628613 (++!5012 lt!628613 lt!628617)) lt!628699)))

(declare-fun b!1669348 () Bool)

(assert (=> b!1669348 (= e!1069791 (>= (size!14636 (++!5012 lt!628613 lt!628617)) (size!14636 lt!628613)))))

(declare-fun b!1669347 () Bool)

(assert (=> b!1669347 (= e!1069789 (isPrefix!1499 (tail!2488 lt!628613) (tail!2488 (++!5012 lt!628613 lt!628617))))))

(assert (= (and d!504763 (not res!748596)) b!1669345))

(assert (= (and b!1669345 res!748597) b!1669346))

(assert (= (and b!1669346 res!748599) b!1669347))

(assert (= (and d!504763 (not res!748598)) b!1669348))

(declare-fun m!2033991 () Bool)

(assert (=> b!1669346 m!2033991))

(assert (=> b!1669346 m!2033643))

(declare-fun m!2033993 () Bool)

(assert (=> b!1669346 m!2033993))

(assert (=> b!1669348 m!2033643))

(declare-fun m!2033995 () Bool)

(assert (=> b!1669348 m!2033995))

(declare-fun m!2033997 () Bool)

(assert (=> b!1669348 m!2033997))

(declare-fun m!2033999 () Bool)

(assert (=> b!1669347 m!2033999))

(assert (=> b!1669347 m!2033643))

(declare-fun m!2034001 () Bool)

(assert (=> b!1669347 m!2034001))

(assert (=> b!1669347 m!2033999))

(assert (=> b!1669347 m!2034001))

(declare-fun m!2034003 () Bool)

(assert (=> b!1669347 m!2034003))

(assert (=> b!1669046 d!504763))

(declare-fun d!504765 () Bool)

(declare-fun isEmpty!11456 (Option!3530) Bool)

(assert (=> d!504765 (= (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))) (not (isEmpty!11456 (maxPrefix!1430 thiss!17113 rules!1846 (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun bs!397958 () Bool)

(assert (= bs!397958 d!504765))

(assert (=> bs!397958 m!2033663))

(declare-fun m!2034005 () Bool)

(assert (=> bs!397958 m!2034005))

(assert (=> b!1669046 d!504765))

(declare-fun b!1669377 () Bool)

(declare-fun e!1069809 () Bool)

(assert (=> b!1669377 (= e!1069809 (= (head!3724 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))) (c!271556 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun b!1669379 () Bool)

(declare-fun res!748619 () Bool)

(declare-fun e!1069807 () Bool)

(assert (=> b!1669379 (=> res!748619 e!1069807)))

(assert (=> b!1669379 (= res!748619 (not ((_ is ElementMatch!4569) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun e!1069806 () Bool)

(assert (=> b!1669379 (= e!1069806 e!1069807)))

(declare-fun b!1669380 () Bool)

(declare-fun res!748623 () Bool)

(assert (=> b!1669380 (=> res!748623 e!1069807)))

(assert (=> b!1669380 (= res!748623 e!1069809)))

(declare-fun res!748620 () Bool)

(assert (=> b!1669380 (=> (not res!748620) (not e!1069809))))

(declare-fun lt!628702 () Bool)

(assert (=> b!1669380 (= res!748620 lt!628702)))

(declare-fun bm!106563 () Bool)

(declare-fun call!106568 () Bool)

(assert (=> bm!106563 (= call!106568 (isEmpty!11453 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669381 () Bool)

(declare-fun e!1069808 () Bool)

(declare-fun derivativeStep!1128 (Regex!4569 C!9312) Regex!4569)

(assert (=> b!1669381 (= e!1069808 (matchR!2060 (derivativeStep!1128 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))) (head!3724 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))) (tail!2488 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun b!1669382 () Bool)

(declare-fun e!1069811 () Bool)

(assert (=> b!1669382 (= e!1069807 e!1069811)))

(declare-fun res!748621 () Bool)

(assert (=> b!1669382 (=> (not res!748621) (not e!1069811))))

(assert (=> b!1669382 (= res!748621 (not lt!628702))))

(declare-fun b!1669383 () Bool)

(declare-fun e!1069810 () Bool)

(assert (=> b!1669383 (= e!1069810 (= lt!628702 call!106568))))

(declare-fun b!1669384 () Bool)

(declare-fun e!1069812 () Bool)

(assert (=> b!1669384 (= e!1069812 (not (= (head!3724 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))) (c!271556 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))))))

(declare-fun b!1669385 () Bool)

(assert (=> b!1669385 (= e!1069806 (not lt!628702))))

(declare-fun d!504767 () Bool)

(assert (=> d!504767 e!1069810))

(declare-fun c!271630 () Bool)

(assert (=> d!504767 (= c!271630 ((_ is EmptyExpr!4569) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!504767 (= lt!628702 e!1069808)))

(declare-fun c!271628 () Bool)

(assert (=> d!504767 (= c!271628 (isEmpty!11453 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun validRegex!1830 (Regex!4569) Bool)

(assert (=> d!504767 (validRegex!1830 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504767 (= (matchR!2060 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))) lt!628702)))

(declare-fun b!1669378 () Bool)

(declare-fun res!748618 () Bool)

(assert (=> b!1669378 (=> (not res!748618) (not e!1069809))))

(assert (=> b!1669378 (= res!748618 (not call!106568))))

(declare-fun b!1669386 () Bool)

(declare-fun nullable!1361 (Regex!4569) Bool)

(assert (=> b!1669386 (= e!1069808 (nullable!1361 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669387 () Bool)

(assert (=> b!1669387 (= e!1069811 e!1069812)))

(declare-fun res!748617 () Bool)

(assert (=> b!1669387 (=> res!748617 e!1069812)))

(assert (=> b!1669387 (= res!748617 call!106568)))

(declare-fun b!1669388 () Bool)

(declare-fun res!748622 () Bool)

(assert (=> b!1669388 (=> (not res!748622) (not e!1069809))))

(assert (=> b!1669388 (= res!748622 (isEmpty!11453 (tail!2488 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun b!1669389 () Bool)

(assert (=> b!1669389 (= e!1069810 e!1069806)))

(declare-fun c!271629 () Bool)

(assert (=> b!1669389 (= c!271629 ((_ is EmptyLang!4569) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669390 () Bool)

(declare-fun res!748616 () Bool)

(assert (=> b!1669390 (=> res!748616 e!1069812)))

(assert (=> b!1669390 (= res!748616 (not (isEmpty!11453 (tail!2488 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))))

(assert (= (and d!504767 c!271628) b!1669386))

(assert (= (and d!504767 (not c!271628)) b!1669381))

(assert (= (and d!504767 c!271630) b!1669383))

(assert (= (and d!504767 (not c!271630)) b!1669389))

(assert (= (and b!1669389 c!271629) b!1669385))

(assert (= (and b!1669389 (not c!271629)) b!1669379))

(assert (= (and b!1669379 (not res!748619)) b!1669380))

(assert (= (and b!1669380 res!748620) b!1669378))

(assert (= (and b!1669378 res!748618) b!1669388))

(assert (= (and b!1669388 res!748622) b!1669377))

(assert (= (and b!1669380 (not res!748623)) b!1669382))

(assert (= (and b!1669382 res!748621) b!1669387))

(assert (= (and b!1669387 (not res!748617)) b!1669390))

(assert (= (and b!1669390 (not res!748616)) b!1669384))

(assert (= (or b!1669383 b!1669378 b!1669387) bm!106563))

(assert (=> b!1669377 m!2033623))

(declare-fun m!2034007 () Bool)

(assert (=> b!1669377 m!2034007))

(assert (=> b!1669384 m!2033623))

(assert (=> b!1669384 m!2034007))

(assert (=> b!1669388 m!2033623))

(declare-fun m!2034009 () Bool)

(assert (=> b!1669388 m!2034009))

(assert (=> b!1669388 m!2034009))

(declare-fun m!2034011 () Bool)

(assert (=> b!1669388 m!2034011))

(assert (=> d!504767 m!2033623))

(declare-fun m!2034013 () Bool)

(assert (=> d!504767 m!2034013))

(declare-fun m!2034015 () Bool)

(assert (=> d!504767 m!2034015))

(assert (=> b!1669381 m!2033623))

(assert (=> b!1669381 m!2034007))

(assert (=> b!1669381 m!2034007))

(declare-fun m!2034017 () Bool)

(assert (=> b!1669381 m!2034017))

(assert (=> b!1669381 m!2033623))

(assert (=> b!1669381 m!2034009))

(assert (=> b!1669381 m!2034017))

(assert (=> b!1669381 m!2034009))

(declare-fun m!2034019 () Bool)

(assert (=> b!1669381 m!2034019))

(assert (=> b!1669390 m!2033623))

(assert (=> b!1669390 m!2034009))

(assert (=> b!1669390 m!2034009))

(assert (=> b!1669390 m!2034011))

(declare-fun m!2034021 () Bool)

(assert (=> b!1669386 m!2034021))

(assert (=> bm!106563 m!2033623))

(assert (=> bm!106563 m!2034013))

(assert (=> b!1669046 d!504767))

(declare-fun d!504769 () Bool)

(assert (=> d!504769 (= (list!7363 lt!628609) (list!7368 (c!271555 lt!628609)))))

(declare-fun bs!397959 () Bool)

(assert (= bs!397959 d!504769))

(declare-fun m!2034023 () Bool)

(assert (=> bs!397959 m!2034023))

(assert (=> b!1669046 d!504769))

(declare-fun d!504771 () Bool)

(assert (=> d!504771 (= (list!7363 lt!628610) (list!7368 (c!271555 lt!628610)))))

(declare-fun bs!397960 () Bool)

(assert (= bs!397960 d!504771))

(declare-fun m!2034025 () Bool)

(assert (=> bs!397960 m!2034025))

(assert (=> b!1669046 d!504771))

(declare-fun d!504773 () Bool)

(assert (=> d!504773 (isPrefix!1499 lt!628613 (++!5012 lt!628613 lt!628617))))

(declare-fun lt!628703 () Unit!31177)

(assert (=> d!504773 (= lt!628703 (choose!10053 lt!628613 lt!628617))))

(assert (=> d!504773 (= (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!628613 lt!628617) lt!628703)))

(declare-fun bs!397961 () Bool)

(assert (= bs!397961 d!504773))

(assert (=> bs!397961 m!2033643))

(assert (=> bs!397961 m!2033643))

(assert (=> bs!397961 m!2033645))

(declare-fun m!2034027 () Bool)

(assert (=> bs!397961 m!2034027))

(assert (=> b!1669046 d!504773))

(declare-fun d!504775 () Bool)

(assert (=> d!504775 (= (head!3724 (originalCharacters!4055 (h!23800 (t!152488 (t!152488 tokens!457))))) (h!23798 (originalCharacters!4055 (h!23800 (t!152488 (t!152488 tokens!457))))))))

(assert (=> b!1669046 d!504775))

(declare-fun d!504777 () Bool)

(assert (=> d!504777 (= (seqFromList!2218 (t!152488 (t!152488 tokens!457))) (fromListB!1007 (t!152488 (t!152488 tokens!457))))))

(declare-fun bs!397962 () Bool)

(assert (= bs!397962 d!504777))

(declare-fun m!2034029 () Bool)

(assert (=> bs!397962 m!2034029))

(assert (=> b!1669046 d!504777))

(declare-fun d!504779 () Bool)

(assert (=> d!504779 (= (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7368 (c!271555 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun bs!397963 () Bool)

(assert (= bs!397963 d!504779))

(declare-fun m!2034031 () Bool)

(assert (=> bs!397963 m!2034031))

(assert (=> b!1669046 d!504779))

(declare-fun d!504781 () Bool)

(declare-fun lt!628706 () C!9312)

(declare-fun apply!4952 (List!18467 Int) C!9312)

(assert (=> d!504781 (= lt!628706 (apply!4952 (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457))))) 0))))

(declare-fun apply!4953 (Conc!6130 Int) C!9312)

(assert (=> d!504781 (= lt!628706 (apply!4953 (c!271555 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457))))) 0))))

(declare-fun e!1069815 () Bool)

(assert (=> d!504781 e!1069815))

(declare-fun res!748626 () Bool)

(assert (=> d!504781 (=> (not res!748626) (not e!1069815))))

(assert (=> d!504781 (= res!748626 (<= 0 0))))

(assert (=> d!504781 (= (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0) lt!628706)))

(declare-fun b!1669393 () Bool)

(assert (=> b!1669393 (= e!1069815 (< 0 (size!14637 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))))))))

(assert (= (and d!504781 res!748626) b!1669393))

(assert (=> d!504781 m!2033631))

(declare-fun m!2034033 () Bool)

(assert (=> d!504781 m!2034033))

(assert (=> d!504781 m!2034033))

(declare-fun m!2034035 () Bool)

(assert (=> d!504781 m!2034035))

(declare-fun m!2034037 () Bool)

(assert (=> d!504781 m!2034037))

(assert (=> b!1669393 m!2033631))

(declare-fun m!2034039 () Bool)

(assert (=> b!1669393 m!2034039))

(assert (=> b!1669046 d!504781))

(declare-fun d!504783 () Bool)

(declare-fun lt!628709 () C!9312)

(assert (=> d!504783 (= lt!628709 (head!3724 (list!7363 lt!628609)))))

(declare-fun head!3727 (Conc!6130) C!9312)

(assert (=> d!504783 (= lt!628709 (head!3727 (c!271555 lt!628609)))))

(assert (=> d!504783 (not (isEmpty!11454 lt!628609))))

(assert (=> d!504783 (= (head!3725 lt!628609) lt!628709)))

(declare-fun bs!397964 () Bool)

(assert (= bs!397964 d!504783))

(assert (=> bs!397964 m!2033617))

(assert (=> bs!397964 m!2033617))

(assert (=> bs!397964 m!2033619))

(declare-fun m!2034041 () Bool)

(assert (=> bs!397964 m!2034041))

(declare-fun m!2034043 () Bool)

(assert (=> bs!397964 m!2034043))

(assert (=> b!1669046 d!504783))

(declare-fun b!1669412 () Bool)

(declare-fun res!748646 () Bool)

(declare-fun e!1069824 () Bool)

(assert (=> b!1669412 (=> (not res!748646) (not e!1069824))))

(declare-fun lt!628720 () Option!3530)

(assert (=> b!1669412 (= res!748646 (< (size!14636 (_2!10462 (get!5386 lt!628720))) (size!14636 (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669413 () Bool)

(declare-fun e!1069822 () Option!3530)

(declare-fun lt!628721 () Option!3530)

(declare-fun lt!628724 () Option!3530)

(assert (=> b!1669413 (= e!1069822 (ite (and ((_ is None!3529) lt!628721) ((_ is None!3529) lt!628724)) None!3529 (ite ((_ is None!3529) lt!628724) lt!628721 (ite ((_ is None!3529) lt!628721) lt!628724 (ite (>= (size!14632 (_1!10462 (v!24792 lt!628721))) (size!14632 (_1!10462 (v!24792 lt!628724)))) lt!628721 lt!628724)))))))

(declare-fun call!106571 () Option!3530)

(assert (=> b!1669413 (= lt!628721 call!106571)))

(assert (=> b!1669413 (= lt!628724 (maxPrefix!1430 thiss!17113 (t!152489 rules!1846) (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))))))

(declare-fun b!1669414 () Bool)

(declare-fun res!748644 () Bool)

(assert (=> b!1669414 (=> (not res!748644) (not e!1069824))))

(assert (=> b!1669414 (= res!748644 (= (++!5012 (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628720)))) (_2!10462 (get!5386 lt!628720))) (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))))))

(declare-fun b!1669415 () Bool)

(declare-fun res!748642 () Bool)

(assert (=> b!1669415 (=> (not res!748642) (not e!1069824))))

(assert (=> b!1669415 (= res!748642 (matchR!2060 (regex!3241 (rule!5129 (_1!10462 (get!5386 lt!628720)))) (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628720))))))))

(declare-fun bm!106566 () Bool)

(declare-fun maxPrefixOneRule!833 (LexerInterface!2870 Rule!6282 List!18467) Option!3530)

(assert (=> bm!106566 (= call!106571 (maxPrefixOneRule!833 thiss!17113 (h!23801 rules!1846) (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))))))

(declare-fun b!1669416 () Bool)

(declare-fun e!1069823 () Bool)

(assert (=> b!1669416 (= e!1069823 e!1069824)))

(declare-fun res!748647 () Bool)

(assert (=> b!1669416 (=> (not res!748647) (not e!1069824))))

(assert (=> b!1669416 (= res!748647 (isDefined!2885 lt!628720))))

(declare-fun b!1669417 () Bool)

(declare-fun res!748643 () Bool)

(assert (=> b!1669417 (=> (not res!748643) (not e!1069824))))

(assert (=> b!1669417 (= res!748643 (= (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628720)))) (originalCharacters!4055 (_1!10462 (get!5386 lt!628720)))))))

(declare-fun b!1669418 () Bool)

(declare-fun res!748641 () Bool)

(assert (=> b!1669418 (=> (not res!748641) (not e!1069824))))

(declare-fun apply!4954 (TokenValueInjection!6322 BalanceConc!12204) TokenValue!3331)

(declare-fun seqFromList!2220 (List!18467) BalanceConc!12204)

(assert (=> b!1669418 (= res!748641 (= (value!102041 (_1!10462 (get!5386 lt!628720))) (apply!4954 (transformation!3241 (rule!5129 (_1!10462 (get!5386 lt!628720)))) (seqFromList!2220 (originalCharacters!4055 (_1!10462 (get!5386 lt!628720)))))))))

(declare-fun d!504785 () Bool)

(assert (=> d!504785 e!1069823))

(declare-fun res!748645 () Bool)

(assert (=> d!504785 (=> res!748645 e!1069823)))

(assert (=> d!504785 (= res!748645 (isEmpty!11456 lt!628720))))

(assert (=> d!504785 (= lt!628720 e!1069822)))

(declare-fun c!271633 () Bool)

(assert (=> d!504785 (= c!271633 (and ((_ is Cons!18400) rules!1846) ((_ is Nil!18400) (t!152489 rules!1846))))))

(declare-fun lt!628722 () Unit!31177)

(declare-fun lt!628723 () Unit!31177)

(assert (=> d!504785 (= lt!628722 lt!628723)))

(assert (=> d!504785 (isPrefix!1499 (originalCharacters!4055 (h!23800 (t!152488 tokens!457))) (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))))

(declare-fun lemmaIsPrefixRefl!1017 (List!18467 List!18467) Unit!31177)

(assert (=> d!504785 (= lt!628723 (lemmaIsPrefixRefl!1017 (originalCharacters!4055 (h!23800 (t!152488 tokens!457))) (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))))))

(declare-fun rulesValidInductive!1039 (LexerInterface!2870 List!18470) Bool)

(assert (=> d!504785 (rulesValidInductive!1039 thiss!17113 rules!1846)))

(assert (=> d!504785 (= (maxPrefix!1430 thiss!17113 rules!1846 (originalCharacters!4055 (h!23800 (t!152488 tokens!457)))) lt!628720)))

(declare-fun b!1669419 () Bool)

(declare-fun contains!3215 (List!18470 Rule!6282) Bool)

(assert (=> b!1669419 (= e!1069824 (contains!3215 rules!1846 (rule!5129 (_1!10462 (get!5386 lt!628720)))))))

(declare-fun b!1669420 () Bool)

(assert (=> b!1669420 (= e!1069822 call!106571)))

(assert (= (and d!504785 c!271633) b!1669420))

(assert (= (and d!504785 (not c!271633)) b!1669413))

(assert (= (or b!1669420 b!1669413) bm!106566))

(assert (= (and d!504785 (not res!748645)) b!1669416))

(assert (= (and b!1669416 res!748647) b!1669417))

(assert (= (and b!1669417 res!748643) b!1669412))

(assert (= (and b!1669412 res!748646) b!1669414))

(assert (= (and b!1669414 res!748644) b!1669418))

(assert (= (and b!1669418 res!748641) b!1669415))

(assert (= (and b!1669415 res!748642) b!1669419))

(declare-fun m!2034045 () Bool)

(assert (=> b!1669416 m!2034045))

(declare-fun m!2034047 () Bool)

(assert (=> b!1669417 m!2034047))

(declare-fun m!2034049 () Bool)

(assert (=> b!1669417 m!2034049))

(assert (=> b!1669417 m!2034049))

(declare-fun m!2034051 () Bool)

(assert (=> b!1669417 m!2034051))

(declare-fun m!2034053 () Bool)

(assert (=> d!504785 m!2034053))

(declare-fun m!2034055 () Bool)

(assert (=> d!504785 m!2034055))

(declare-fun m!2034057 () Bool)

(assert (=> d!504785 m!2034057))

(declare-fun m!2034059 () Bool)

(assert (=> d!504785 m!2034059))

(assert (=> b!1669414 m!2034047))

(assert (=> b!1669414 m!2034049))

(assert (=> b!1669414 m!2034049))

(assert (=> b!1669414 m!2034051))

(assert (=> b!1669414 m!2034051))

(declare-fun m!2034061 () Bool)

(assert (=> b!1669414 m!2034061))

(assert (=> b!1669418 m!2034047))

(declare-fun m!2034063 () Bool)

(assert (=> b!1669418 m!2034063))

(assert (=> b!1669418 m!2034063))

(declare-fun m!2034065 () Bool)

(assert (=> b!1669418 m!2034065))

(assert (=> b!1669412 m!2034047))

(declare-fun m!2034067 () Bool)

(assert (=> b!1669412 m!2034067))

(declare-fun m!2034069 () Bool)

(assert (=> b!1669412 m!2034069))

(assert (=> b!1669419 m!2034047))

(declare-fun m!2034071 () Bool)

(assert (=> b!1669419 m!2034071))

(declare-fun m!2034073 () Bool)

(assert (=> bm!106566 m!2034073))

(declare-fun m!2034075 () Bool)

(assert (=> b!1669413 m!2034075))

(assert (=> b!1669415 m!2034047))

(assert (=> b!1669415 m!2034049))

(assert (=> b!1669415 m!2034049))

(assert (=> b!1669415 m!2034051))

(assert (=> b!1669415 m!2034051))

(declare-fun m!2034077 () Bool)

(assert (=> b!1669415 m!2034077))

(assert (=> b!1669046 d!504785))

(declare-fun d!504787 () Bool)

(assert (=> d!504787 (= (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))) (v!24792 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))))

(assert (=> b!1669046 d!504787))

(declare-fun b!1669421 () Bool)

(declare-fun e!1069827 () Bool)

(declare-fun lt!628725 () tuple2!18114)

(assert (=> b!1669421 (= e!1069827 (not (isEmpty!11455 (_1!10459 lt!628725))))))

(declare-fun b!1669422 () Bool)

(declare-fun e!1069826 () Bool)

(assert (=> b!1669422 (= e!1069826 (= (_2!10459 lt!628725) lt!628609))))

(declare-fun b!1669424 () Bool)

(assert (=> b!1669424 (= e!1069826 e!1069827)))

(declare-fun res!748649 () Bool)

(assert (=> b!1669424 (= res!748649 (< (size!14637 (_2!10459 lt!628725)) (size!14637 lt!628609)))))

(assert (=> b!1669424 (=> (not res!748649) (not e!1069827))))

(declare-fun b!1669425 () Bool)

(declare-fun e!1069825 () Bool)

(assert (=> b!1669425 (= e!1069825 (= (list!7363 (_2!10459 lt!628725)) (_2!10463 (lexList!895 thiss!17113 rules!1846 (list!7363 lt!628609)))))))

(declare-fun d!504789 () Bool)

(assert (=> d!504789 e!1069825))

(declare-fun res!748648 () Bool)

(assert (=> d!504789 (=> (not res!748648) (not e!1069825))))

(assert (=> d!504789 (= res!748648 e!1069826)))

(declare-fun c!271634 () Bool)

(assert (=> d!504789 (= c!271634 (> (size!14638 (_1!10459 lt!628725)) 0))))

(assert (=> d!504789 (= lt!628725 (lexTailRecV2!618 thiss!17113 rules!1846 lt!628609 (BalanceConc!12205 Empty!6130) lt!628609 (BalanceConc!12207 Empty!6131)))))

(assert (=> d!504789 (= (lex!1354 thiss!17113 rules!1846 lt!628609) lt!628725)))

(declare-fun b!1669423 () Bool)

(declare-fun res!748650 () Bool)

(assert (=> b!1669423 (=> (not res!748650) (not e!1069825))))

(assert (=> b!1669423 (= res!748650 (= (list!7364 (_1!10459 lt!628725)) (_1!10463 (lexList!895 thiss!17113 rules!1846 (list!7363 lt!628609)))))))

(assert (= (and d!504789 c!271634) b!1669424))

(assert (= (and d!504789 (not c!271634)) b!1669422))

(assert (= (and b!1669424 res!748649) b!1669421))

(assert (= (and d!504789 res!748648) b!1669423))

(assert (= (and b!1669423 res!748650) b!1669425))

(declare-fun m!2034079 () Bool)

(assert (=> b!1669421 m!2034079))

(declare-fun m!2034081 () Bool)

(assert (=> b!1669424 m!2034081))

(declare-fun m!2034083 () Bool)

(assert (=> b!1669424 m!2034083))

(declare-fun m!2034085 () Bool)

(assert (=> b!1669423 m!2034085))

(assert (=> b!1669423 m!2033617))

(assert (=> b!1669423 m!2033617))

(declare-fun m!2034087 () Bool)

(assert (=> b!1669423 m!2034087))

(declare-fun m!2034089 () Bool)

(assert (=> d!504789 m!2034089))

(declare-fun m!2034091 () Bool)

(assert (=> d!504789 m!2034091))

(declare-fun m!2034093 () Bool)

(assert (=> b!1669425 m!2034093))

(assert (=> b!1669425 m!2033617))

(assert (=> b!1669425 m!2033617))

(assert (=> b!1669425 m!2034087))

(assert (=> b!1669046 d!504789))

(declare-fun d!504791 () Bool)

(assert (=> d!504791 (= (isEmpty!11453 (_2!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))) ((_ is Nil!18397) (_2!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))))))

(assert (=> b!1669046 d!504791))

(declare-fun d!504793 () Bool)

(assert (=> d!504793 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0))) (list!7368 (c!271555 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0)))))))

(declare-fun bs!397965 () Bool)

(assert (= bs!397965 d!504793))

(declare-fun m!2034095 () Bool)

(assert (=> bs!397965 m!2034095))

(assert (=> b!1669046 d!504793))

(declare-fun d!504795 () Bool)

(declare-fun lt!628726 () BalanceConc!12204)

(assert (=> d!504795 (= (list!7363 lt!628726) (printList!983 thiss!17113 (list!7364 (seqFromList!2218 (t!152488 (t!152488 tokens!457))))))))

(assert (=> d!504795 (= lt!628726 (printTailRec!921 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 tokens!457))) 0 (BalanceConc!12205 Empty!6130)))))

(assert (=> d!504795 (= (print!1401 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 tokens!457)))) lt!628726)))

(declare-fun bs!397966 () Bool)

(assert (= bs!397966 d!504795))

(declare-fun m!2034097 () Bool)

(assert (=> bs!397966 m!2034097))

(assert (=> bs!397966 m!2033653))

(declare-fun m!2034099 () Bool)

(assert (=> bs!397966 m!2034099))

(assert (=> bs!397966 m!2034099))

(declare-fun m!2034101 () Bool)

(assert (=> bs!397966 m!2034101))

(assert (=> bs!397966 m!2033653))

(declare-fun m!2034103 () Bool)

(assert (=> bs!397966 m!2034103))

(assert (=> b!1669046 d!504795))

(declare-fun d!504797 () Bool)

(declare-fun e!1069830 () Bool)

(assert (=> d!504797 e!1069830))

(declare-fun res!748653 () Bool)

(assert (=> d!504797 (=> (not res!748653) (not e!1069830))))

(declare-fun lt!628729 () BalanceConc!12206)

(assert (=> d!504797 (= res!748653 (= (list!7364 lt!628729) (Cons!18399 (h!23800 (t!152488 tokens!457)) Nil!18399)))))

(declare-fun singleton!777 (Token!6048) BalanceConc!12206)

(assert (=> d!504797 (= lt!628729 (singleton!777 (h!23800 (t!152488 tokens!457))))))

(assert (=> d!504797 (= (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) lt!628729)))

(declare-fun b!1669428 () Bool)

(assert (=> b!1669428 (= e!1069830 (isBalanced!1905 (c!271557 lt!628729)))))

(assert (= (and d!504797 res!748653) b!1669428))

(declare-fun m!2034105 () Bool)

(assert (=> d!504797 m!2034105))

(declare-fun m!2034107 () Bool)

(assert (=> d!504797 m!2034107))

(declare-fun m!2034109 () Bool)

(assert (=> b!1669428 m!2034109))

(assert (=> b!1669046 d!504797))

(declare-fun d!504799 () Bool)

(declare-fun lt!628730 () BalanceConc!12204)

(assert (=> d!504799 (= (list!7363 lt!628730) (printList!983 thiss!17113 (list!7364 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!504799 (= lt!628730 (printTailRec!921 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) 0 (BalanceConc!12205 Empty!6130)))))

(assert (=> d!504799 (= (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457)))) lt!628730)))

(declare-fun bs!397967 () Bool)

(assert (= bs!397967 d!504799))

(declare-fun m!2034111 () Bool)

(assert (=> bs!397967 m!2034111))

(assert (=> bs!397967 m!2033611))

(declare-fun m!2034113 () Bool)

(assert (=> bs!397967 m!2034113))

(assert (=> bs!397967 m!2034113))

(declare-fun m!2034115 () Bool)

(assert (=> bs!397967 m!2034115))

(assert (=> bs!397967 m!2033611))

(assert (=> bs!397967 m!2033629))

(assert (=> b!1669046 d!504799))

(declare-fun d!504801 () Bool)

(declare-fun lt!628731 () BalanceConc!12204)

(assert (=> d!504801 (= (list!7363 lt!628731) (originalCharacters!4055 (h!23800 (t!152488 (t!152488 tokens!457)))))))

(assert (=> d!504801 (= lt!628731 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (value!102041 (h!23800 (t!152488 (t!152488 tokens!457))))))))

(assert (=> d!504801 (= (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) lt!628731)))

(declare-fun b_lambda!52433 () Bool)

(assert (=> (not b_lambda!52433) (not d!504801)))

(declare-fun t!152526 () Bool)

(declare-fun tb!95791 () Bool)

(assert (=> (and b!1668915 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))))) t!152526) tb!95791))

(declare-fun b!1669429 () Bool)

(declare-fun e!1069831 () Bool)

(declare-fun tp!481934 () Bool)

(assert (=> b!1669429 (= e!1069831 (and (inv!23750 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (value!102041 (h!23800 (t!152488 (t!152488 tokens!457))))))) tp!481934))))

(declare-fun result!115746 () Bool)

(assert (=> tb!95791 (= result!115746 (and (inv!23751 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (value!102041 (h!23800 (t!152488 (t!152488 tokens!457)))))) e!1069831))))

(assert (= tb!95791 b!1669429))

(declare-fun m!2034117 () Bool)

(assert (=> b!1669429 m!2034117))

(declare-fun m!2034119 () Bool)

(assert (=> tb!95791 m!2034119))

(assert (=> d!504801 t!152526))

(declare-fun b_and!118709 () Bool)

(assert (= b_and!118689 (and (=> t!152526 result!115746) b_and!118709)))

(declare-fun t!152528 () Bool)

(declare-fun tb!95793 () Bool)

(assert (=> (and b!1668919 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))))) t!152528) tb!95793))

(declare-fun result!115748 () Bool)

(assert (= result!115748 result!115746))

(assert (=> d!504801 t!152528))

(declare-fun b_and!118711 () Bool)

(assert (= b_and!118691 (and (=> t!152528 result!115748) b_and!118711)))

(declare-fun t!152530 () Bool)

(declare-fun tb!95795 () Bool)

(assert (=> (and b!1669207 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))))) t!152530) tb!95795))

(declare-fun result!115750 () Bool)

(assert (= result!115750 result!115746))

(assert (=> d!504801 t!152530))

(declare-fun b_and!118713 () Bool)

(assert (= b_and!118695 (and (=> t!152530 result!115750) b_and!118713)))

(declare-fun t!152532 () Bool)

(declare-fun tb!95797 () Bool)

(assert (=> (and b!1669226 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))))) t!152532) tb!95797))

(declare-fun result!115752 () Bool)

(assert (= result!115752 result!115746))

(assert (=> d!504801 t!152532))

(declare-fun b_and!118715 () Bool)

(assert (= b_and!118699 (and (=> t!152532 result!115752) b_and!118715)))

(declare-fun m!2034121 () Bool)

(assert (=> d!504801 m!2034121))

(declare-fun m!2034123 () Bool)

(assert (=> d!504801 m!2034123))

(assert (=> b!1669046 d!504801))

(declare-fun d!504803 () Bool)

(declare-fun e!1069832 () Bool)

(assert (=> d!504803 e!1069832))

(declare-fun res!748655 () Bool)

(assert (=> d!504803 (=> (not res!748655) (not e!1069832))))

(declare-fun lt!628732 () List!18467)

(assert (=> d!504803 (= res!748655 (= (content!2573 lt!628732) ((_ map or) (content!2573 lt!628613) (content!2573 lt!628617))))))

(declare-fun e!1069833 () List!18467)

(assert (=> d!504803 (= lt!628732 e!1069833)))

(declare-fun c!271635 () Bool)

(assert (=> d!504803 (= c!271635 ((_ is Nil!18397) lt!628613))))

(assert (=> d!504803 (= (++!5012 lt!628613 lt!628617) lt!628732)))

(declare-fun b!1669431 () Bool)

(assert (=> b!1669431 (= e!1069833 (Cons!18397 (h!23798 lt!628613) (++!5012 (t!152486 lt!628613) lt!628617)))))

(declare-fun b!1669430 () Bool)

(assert (=> b!1669430 (= e!1069833 lt!628617)))

(declare-fun b!1669432 () Bool)

(declare-fun res!748654 () Bool)

(assert (=> b!1669432 (=> (not res!748654) (not e!1069832))))

(assert (=> b!1669432 (= res!748654 (= (size!14636 lt!628732) (+ (size!14636 lt!628613) (size!14636 lt!628617))))))

(declare-fun b!1669433 () Bool)

(assert (=> b!1669433 (= e!1069832 (or (not (= lt!628617 Nil!18397)) (= lt!628732 lt!628613)))))

(assert (= (and d!504803 c!271635) b!1669430))

(assert (= (and d!504803 (not c!271635)) b!1669431))

(assert (= (and d!504803 res!748655) b!1669432))

(assert (= (and b!1669432 res!748654) b!1669433))

(declare-fun m!2034125 () Bool)

(assert (=> d!504803 m!2034125))

(declare-fun m!2034127 () Bool)

(assert (=> d!504803 m!2034127))

(declare-fun m!2034129 () Bool)

(assert (=> d!504803 m!2034129))

(declare-fun m!2034131 () Bool)

(assert (=> b!1669431 m!2034131))

(declare-fun m!2034133 () Bool)

(assert (=> b!1669432 m!2034133))

(assert (=> b!1669432 m!2033997))

(declare-fun m!2034135 () Bool)

(assert (=> b!1669432 m!2034135))

(assert (=> b!1669046 d!504803))

(declare-fun d!504805 () Bool)

(declare-fun e!1069836 () Bool)

(assert (=> d!504805 e!1069836))

(declare-fun res!748658 () Bool)

(assert (=> d!504805 (=> (not res!748658) (not e!1069836))))

(declare-fun prepend!827 (Conc!6131 Token!6048) Conc!6131)

(assert (=> d!504805 (= res!748658 (isBalanced!1905 (prepend!827 (c!271557 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457))))) (h!23800 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628735 () BalanceConc!12206)

(assert (=> d!504805 (= lt!628735 (BalanceConc!12207 (prepend!827 (c!271557 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457))))) (h!23800 (t!152488 (t!152488 tokens!457))))))))

(assert (=> d!504805 (= (prepend!825 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457)))) (h!23800 (t!152488 (t!152488 tokens!457)))) lt!628735)))

(declare-fun b!1669436 () Bool)

(assert (=> b!1669436 (= e!1069836 (= (list!7364 lt!628735) (Cons!18399 (h!23800 (t!152488 (t!152488 tokens!457))) (list!7364 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457))))))))))

(assert (= (and d!504805 res!748658) b!1669436))

(declare-fun m!2034137 () Bool)

(assert (=> d!504805 m!2034137))

(assert (=> d!504805 m!2034137))

(declare-fun m!2034139 () Bool)

(assert (=> d!504805 m!2034139))

(declare-fun m!2034141 () Bool)

(assert (=> b!1669436 m!2034141))

(assert (=> b!1669436 m!2033635))

(declare-fun m!2034143 () Bool)

(assert (=> b!1669436 m!2034143))

(assert (=> b!1669046 d!504805))

(declare-fun b!1669448 () Bool)

(declare-fun e!1069841 () Unit!31177)

(declare-fun Unit!31228 () Unit!31177)

(assert (=> b!1669448 (= e!1069841 Unit!31228)))

(declare-fun d!504807 () Bool)

(assert (=> d!504807 (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609))))))

(declare-fun lt!628782 () Unit!31177)

(assert (=> d!504807 (= lt!628782 e!1069841)))

(declare-fun c!271639 () Bool)

(assert (=> d!504807 (= c!271639 (isEmpty!11456 (maxPrefix!1430 thiss!17113 rules!1846 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))))

(declare-fun lt!628783 () Unit!31177)

(declare-fun lt!628774 () Unit!31177)

(assert (=> d!504807 (= lt!628783 lt!628774)))

(declare-fun e!1069842 () Bool)

(assert (=> d!504807 e!1069842))

(declare-fun res!748663 () Bool)

(assert (=> d!504807 (=> (not res!748663) (not e!1069842))))

(declare-fun lt!628780 () Token!6048)

(declare-datatypes ((Option!3532 0))(
  ( (None!3531) (Some!3531 (v!24798 Rule!6282)) )
))
(declare-fun isDefined!2887 (Option!3532) Bool)

(declare-fun getRuleFromTag!334 (LexerInterface!2870 List!18470 String!20987) Option!3532)

(assert (=> d!504807 (= res!748663 (isDefined!2887 (getRuleFromTag!334 thiss!17113 rules!1846 (tag!3525 (rule!5129 lt!628780)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!334 (LexerInterface!2870 List!18470 List!18467 Token!6048) Unit!31177)

(assert (=> d!504807 (= lt!628774 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!334 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) lt!628780))))

(declare-fun lt!628772 () Unit!31177)

(declare-fun lt!628776 () Unit!31177)

(assert (=> d!504807 (= lt!628772 lt!628776)))

(declare-fun lt!628785 () List!18467)

(assert (=> d!504807 (isPrefix!1499 lt!628785 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!220 (List!18467 List!18467 List!18467) Unit!31177)

(assert (=> d!504807 (= lt!628776 (lemmaPrefixStaysPrefixWhenAddingToSuffix!220 lt!628785 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))

(assert (=> d!504807 (= lt!628785 (list!7363 (charsOf!1890 lt!628780)))))

(declare-fun lt!628770 () Unit!31177)

(declare-fun lt!628786 () Unit!31177)

(assert (=> d!504807 (= lt!628770 lt!628786)))

(declare-fun lt!628773 () List!18467)

(declare-fun lt!628779 () List!18467)

(assert (=> d!504807 (isPrefix!1499 lt!628773 (++!5012 lt!628773 lt!628779))))

(assert (=> d!504807 (= lt!628786 (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!628773 lt!628779))))

(assert (=> d!504807 (= lt!628779 (_2!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))))

(assert (=> d!504807 (= lt!628773 (list!7363 (charsOf!1890 lt!628780)))))

(assert (=> d!504807 (= lt!628780 (head!3726 (list!7364 (_1!10459 (lex!1354 thiss!17113 rules!1846 (seqFromList!2220 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))))))

(assert (=> d!504807 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504807 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!432 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)) lt!628782)))

(declare-fun b!1669445 () Bool)

(declare-fun res!748664 () Bool)

(assert (=> b!1669445 (=> (not res!748664) (not e!1069842))))

(declare-fun get!5388 (Option!3532) Rule!6282)

(assert (=> b!1669445 (= res!748664 (matchR!2060 (regex!3241 (get!5388 (getRuleFromTag!334 thiss!17113 rules!1846 (tag!3525 (rule!5129 lt!628780))))) (list!7363 (charsOf!1890 lt!628780))))))

(declare-fun b!1669446 () Bool)

(assert (=> b!1669446 (= e!1069842 (= (rule!5129 lt!628780) (get!5388 (getRuleFromTag!334 thiss!17113 rules!1846 (tag!3525 (rule!5129 lt!628780))))))))

(declare-fun b!1669447 () Bool)

(declare-fun Unit!31229 () Unit!31177)

(assert (=> b!1669447 (= e!1069841 Unit!31229)))

(declare-fun lt!628781 () List!18467)

(assert (=> b!1669447 (= lt!628781 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))

(declare-fun lt!628784 () Unit!31177)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!228 (LexerInterface!2870 Rule!6282 List!18470 List!18467) Unit!31177)

(assert (=> b!1669447 (= lt!628784 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!228 thiss!17113 (rule!5129 lt!628780) rules!1846 lt!628781))))

(assert (=> b!1669447 (isEmpty!11456 (maxPrefixOneRule!833 thiss!17113 (rule!5129 lt!628780) lt!628781))))

(declare-fun lt!628777 () Unit!31177)

(assert (=> b!1669447 (= lt!628777 lt!628784)))

(declare-fun lt!628771 () List!18467)

(assert (=> b!1669447 (= lt!628771 (list!7363 (charsOf!1890 lt!628780)))))

(declare-fun lt!628775 () Unit!31177)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!224 (LexerInterface!2870 Rule!6282 List!18467 List!18467) Unit!31177)

(assert (=> b!1669447 (= lt!628775 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!224 thiss!17113 (rule!5129 lt!628780) lt!628771 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609))))))

(assert (=> b!1669447 (not (matchR!2060 (regex!3241 (rule!5129 lt!628780)) lt!628771))))

(declare-fun lt!628778 () Unit!31177)

(assert (=> b!1669447 (= lt!628778 lt!628775)))

(assert (=> b!1669447 false))

(assert (= (and d!504807 res!748663) b!1669445))

(assert (= (and b!1669445 res!748664) b!1669446))

(assert (= (and d!504807 c!271639) b!1669447))

(assert (= (and d!504807 (not c!271639)) b!1669448))

(declare-fun m!2034145 () Bool)

(assert (=> d!504807 m!2034145))

(declare-fun m!2034147 () Bool)

(assert (=> d!504807 m!2034147))

(assert (=> d!504807 m!2033623))

(declare-fun m!2034149 () Bool)

(assert (=> d!504807 m!2034149))

(assert (=> d!504807 m!2033623))

(assert (=> d!504807 m!2033627))

(declare-fun m!2034151 () Bool)

(assert (=> d!504807 m!2034151))

(declare-fun m!2034153 () Bool)

(assert (=> d!504807 m!2034153))

(assert (=> d!504807 m!2034145))

(declare-fun m!2034155 () Bool)

(assert (=> d!504807 m!2034155))

(declare-fun m!2034157 () Bool)

(assert (=> d!504807 m!2034157))

(declare-fun m!2034159 () Bool)

(assert (=> d!504807 m!2034159))

(declare-fun m!2034161 () Bool)

(assert (=> d!504807 m!2034161))

(assert (=> d!504807 m!2034145))

(assert (=> d!504807 m!2033627))

(assert (=> d!504807 m!2033661))

(assert (=> d!504807 m!2034153))

(declare-fun m!2034163 () Bool)

(assert (=> d!504807 m!2034163))

(assert (=> d!504807 m!2034151))

(declare-fun m!2034165 () Bool)

(assert (=> d!504807 m!2034165))

(assert (=> d!504807 m!2033623))

(declare-fun m!2034167 () Bool)

(assert (=> d!504807 m!2034167))

(assert (=> d!504807 m!2034149))

(declare-fun m!2034169 () Bool)

(assert (=> d!504807 m!2034169))

(assert (=> d!504807 m!2034157))

(declare-fun m!2034171 () Bool)

(assert (=> d!504807 m!2034171))

(assert (=> d!504807 m!2034171))

(declare-fun m!2034173 () Bool)

(assert (=> d!504807 m!2034173))

(declare-fun m!2034175 () Bool)

(assert (=> d!504807 m!2034175))

(assert (=> d!504807 m!2033623))

(assert (=> d!504807 m!2033617))

(assert (=> d!504807 m!2034161))

(assert (=> d!504807 m!2033363))

(assert (=> d!504807 m!2034161))

(declare-fun m!2034177 () Bool)

(assert (=> d!504807 m!2034177))

(assert (=> d!504807 m!2033623))

(assert (=> d!504807 m!2033617))

(declare-fun m!2034179 () Bool)

(assert (=> d!504807 m!2034179))

(assert (=> b!1669445 m!2034163))

(declare-fun m!2034181 () Bool)

(assert (=> b!1669445 m!2034181))

(assert (=> b!1669445 m!2034153))

(assert (=> b!1669445 m!2034163))

(assert (=> b!1669445 m!2034151))

(assert (=> b!1669445 m!2034153))

(assert (=> b!1669445 m!2034151))

(declare-fun m!2034183 () Bool)

(assert (=> b!1669445 m!2034183))

(assert (=> b!1669446 m!2034151))

(assert (=> b!1669446 m!2034151))

(assert (=> b!1669446 m!2034183))

(declare-fun m!2034185 () Bool)

(assert (=> b!1669447 m!2034185))

(assert (=> b!1669447 m!2034161))

(declare-fun m!2034187 () Bool)

(assert (=> b!1669447 m!2034187))

(declare-fun m!2034189 () Bool)

(assert (=> b!1669447 m!2034189))

(assert (=> b!1669447 m!2034185))

(declare-fun m!2034191 () Bool)

(assert (=> b!1669447 m!2034191))

(assert (=> b!1669447 m!2033623))

(assert (=> b!1669447 m!2033617))

(assert (=> b!1669447 m!2034161))

(assert (=> b!1669447 m!2034153))

(assert (=> b!1669447 m!2034153))

(assert (=> b!1669447 m!2034163))

(declare-fun m!2034193 () Bool)

(assert (=> b!1669447 m!2034193))

(assert (=> b!1669046 d!504807))

(declare-fun d!504809 () Bool)

(assert (=> d!504809 (= (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457)))) (fromListB!1007 (t!152488 (t!152488 (t!152488 tokens!457)))))))

(declare-fun bs!397968 () Bool)

(assert (= bs!397968 d!504809))

(declare-fun m!2034195 () Bool)

(assert (=> bs!397968 m!2034195))

(assert (=> b!1669046 d!504809))

(declare-fun b!1669449 () Bool)

(declare-fun res!748670 () Bool)

(declare-fun e!1069845 () Bool)

(assert (=> b!1669449 (=> (not res!748670) (not e!1069845))))

(declare-fun lt!628787 () Option!3530)

(assert (=> b!1669449 (= res!748670 (< (size!14636 (_2!10462 (get!5386 lt!628787))) (size!14636 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun b!1669450 () Bool)

(declare-fun e!1069843 () Option!3530)

(declare-fun lt!628788 () Option!3530)

(declare-fun lt!628791 () Option!3530)

(assert (=> b!1669450 (= e!1069843 (ite (and ((_ is None!3529) lt!628788) ((_ is None!3529) lt!628791)) None!3529 (ite ((_ is None!3529) lt!628791) lt!628788 (ite ((_ is None!3529) lt!628788) lt!628791 (ite (>= (size!14632 (_1!10462 (v!24792 lt!628788))) (size!14632 (_1!10462 (v!24792 lt!628791)))) lt!628788 lt!628791)))))))

(declare-fun call!106572 () Option!3530)

(assert (=> b!1669450 (= lt!628788 call!106572)))

(assert (=> b!1669450 (= lt!628791 (maxPrefix!1430 thiss!17113 (t!152489 rules!1846) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669451 () Bool)

(declare-fun res!748668 () Bool)

(assert (=> b!1669451 (=> (not res!748668) (not e!1069845))))

(assert (=> b!1669451 (= res!748668 (= (++!5012 (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628787)))) (_2!10462 (get!5386 lt!628787))) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669452 () Bool)

(declare-fun res!748666 () Bool)

(assert (=> b!1669452 (=> (not res!748666) (not e!1069845))))

(assert (=> b!1669452 (= res!748666 (matchR!2060 (regex!3241 (rule!5129 (_1!10462 (get!5386 lt!628787)))) (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628787))))))))

(declare-fun bm!106567 () Bool)

(assert (=> bm!106567 (= call!106572 (maxPrefixOneRule!833 thiss!17113 (h!23801 rules!1846) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669453 () Bool)

(declare-fun e!1069844 () Bool)

(assert (=> b!1669453 (= e!1069844 e!1069845)))

(declare-fun res!748671 () Bool)

(assert (=> b!1669453 (=> (not res!748671) (not e!1069845))))

(assert (=> b!1669453 (= res!748671 (isDefined!2885 lt!628787))))

(declare-fun b!1669454 () Bool)

(declare-fun res!748667 () Bool)

(assert (=> b!1669454 (=> (not res!748667) (not e!1069845))))

(assert (=> b!1669454 (= res!748667 (= (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628787)))) (originalCharacters!4055 (_1!10462 (get!5386 lt!628787)))))))

(declare-fun b!1669455 () Bool)

(declare-fun res!748665 () Bool)

(assert (=> b!1669455 (=> (not res!748665) (not e!1069845))))

(assert (=> b!1669455 (= res!748665 (= (value!102041 (_1!10462 (get!5386 lt!628787))) (apply!4954 (transformation!3241 (rule!5129 (_1!10462 (get!5386 lt!628787)))) (seqFromList!2220 (originalCharacters!4055 (_1!10462 (get!5386 lt!628787)))))))))

(declare-fun d!504811 () Bool)

(assert (=> d!504811 e!1069844))

(declare-fun res!748669 () Bool)

(assert (=> d!504811 (=> res!748669 e!1069844)))

(assert (=> d!504811 (= res!748669 (isEmpty!11456 lt!628787))))

(assert (=> d!504811 (= lt!628787 e!1069843)))

(declare-fun c!271640 () Bool)

(assert (=> d!504811 (= c!271640 (and ((_ is Cons!18400) rules!1846) ((_ is Nil!18400) (t!152489 rules!1846))))))

(declare-fun lt!628789 () Unit!31177)

(declare-fun lt!628790 () Unit!31177)

(assert (=> d!504811 (= lt!628789 lt!628790)))

(assert (=> d!504811 (isPrefix!1499 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504811 (= lt!628790 (lemmaIsPrefixRefl!1017 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!504811 (rulesValidInductive!1039 thiss!17113 rules!1846)))

(assert (=> d!504811 (= (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))) lt!628787)))

(declare-fun b!1669456 () Bool)

(assert (=> b!1669456 (= e!1069845 (contains!3215 rules!1846 (rule!5129 (_1!10462 (get!5386 lt!628787)))))))

(declare-fun b!1669457 () Bool)

(assert (=> b!1669457 (= e!1069843 call!106572)))

(assert (= (and d!504811 c!271640) b!1669457))

(assert (= (and d!504811 (not c!271640)) b!1669450))

(assert (= (or b!1669457 b!1669450) bm!106567))

(assert (= (and d!504811 (not res!748669)) b!1669453))

(assert (= (and b!1669453 res!748671) b!1669454))

(assert (= (and b!1669454 res!748667) b!1669449))

(assert (= (and b!1669449 res!748670) b!1669451))

(assert (= (and b!1669451 res!748668) b!1669455))

(assert (= (and b!1669455 res!748665) b!1669452))

(assert (= (and b!1669452 res!748666) b!1669456))

(declare-fun m!2034197 () Bool)

(assert (=> b!1669453 m!2034197))

(declare-fun m!2034199 () Bool)

(assert (=> b!1669454 m!2034199))

(declare-fun m!2034201 () Bool)

(assert (=> b!1669454 m!2034201))

(assert (=> b!1669454 m!2034201))

(declare-fun m!2034203 () Bool)

(assert (=> b!1669454 m!2034203))

(declare-fun m!2034205 () Bool)

(assert (=> d!504811 m!2034205))

(assert (=> d!504811 m!2033623))

(assert (=> d!504811 m!2033623))

(declare-fun m!2034207 () Bool)

(assert (=> d!504811 m!2034207))

(assert (=> d!504811 m!2033623))

(assert (=> d!504811 m!2033623))

(declare-fun m!2034209 () Bool)

(assert (=> d!504811 m!2034209))

(assert (=> d!504811 m!2034059))

(assert (=> b!1669451 m!2034199))

(assert (=> b!1669451 m!2034201))

(assert (=> b!1669451 m!2034201))

(assert (=> b!1669451 m!2034203))

(assert (=> b!1669451 m!2034203))

(declare-fun m!2034211 () Bool)

(assert (=> b!1669451 m!2034211))

(assert (=> b!1669455 m!2034199))

(declare-fun m!2034213 () Bool)

(assert (=> b!1669455 m!2034213))

(assert (=> b!1669455 m!2034213))

(declare-fun m!2034215 () Bool)

(assert (=> b!1669455 m!2034215))

(assert (=> b!1669449 m!2034199))

(declare-fun m!2034217 () Bool)

(assert (=> b!1669449 m!2034217))

(assert (=> b!1669449 m!2033623))

(declare-fun m!2034219 () Bool)

(assert (=> b!1669449 m!2034219))

(assert (=> b!1669456 m!2034199))

(declare-fun m!2034221 () Bool)

(assert (=> b!1669456 m!2034221))

(assert (=> bm!106567 m!2033623))

(declare-fun m!2034223 () Bool)

(assert (=> bm!106567 m!2034223))

(assert (=> b!1669450 m!2033623))

(declare-fun m!2034225 () Bool)

(assert (=> b!1669450 m!2034225))

(assert (=> b!1669452 m!2034199))

(assert (=> b!1669452 m!2034201))

(assert (=> b!1669452 m!2034201))

(assert (=> b!1669452 m!2034203))

(assert (=> b!1669452 m!2034203))

(declare-fun m!2034227 () Bool)

(assert (=> b!1669452 m!2034227))

(assert (=> b!1669046 d!504811))

(declare-fun d!504813 () Bool)

(assert (=> d!504813 (= (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))) (not (isEmpty!11456 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))))

(declare-fun bs!397969 () Bool)

(assert (= bs!397969 d!504813))

(assert (=> bs!397969 m!2033627))

(declare-fun m!2034229 () Bool)

(assert (=> bs!397969 m!2034229))

(assert (=> b!1669046 d!504813))

(declare-fun b!1669458 () Bool)

(declare-fun res!748677 () Bool)

(declare-fun e!1069848 () Bool)

(assert (=> b!1669458 (=> (not res!748677) (not e!1069848))))

(declare-fun lt!628792 () Option!3530)

(assert (=> b!1669458 (= res!748677 (< (size!14636 (_2!10462 (get!5386 lt!628792))) (size!14636 (list!7363 lt!628610))))))

(declare-fun b!1669459 () Bool)

(declare-fun e!1069846 () Option!3530)

(declare-fun lt!628793 () Option!3530)

(declare-fun lt!628796 () Option!3530)

(assert (=> b!1669459 (= e!1069846 (ite (and ((_ is None!3529) lt!628793) ((_ is None!3529) lt!628796)) None!3529 (ite ((_ is None!3529) lt!628796) lt!628793 (ite ((_ is None!3529) lt!628793) lt!628796 (ite (>= (size!14632 (_1!10462 (v!24792 lt!628793))) (size!14632 (_1!10462 (v!24792 lt!628796)))) lt!628793 lt!628796)))))))

(declare-fun call!106573 () Option!3530)

(assert (=> b!1669459 (= lt!628793 call!106573)))

(assert (=> b!1669459 (= lt!628796 (maxPrefix!1430 thiss!17113 (t!152489 rules!1846) (list!7363 lt!628610)))))

(declare-fun b!1669460 () Bool)

(declare-fun res!748675 () Bool)

(assert (=> b!1669460 (=> (not res!748675) (not e!1069848))))

(assert (=> b!1669460 (= res!748675 (= (++!5012 (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628792)))) (_2!10462 (get!5386 lt!628792))) (list!7363 lt!628610)))))

(declare-fun b!1669461 () Bool)

(declare-fun res!748673 () Bool)

(assert (=> b!1669461 (=> (not res!748673) (not e!1069848))))

(assert (=> b!1669461 (= res!748673 (matchR!2060 (regex!3241 (rule!5129 (_1!10462 (get!5386 lt!628792)))) (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628792))))))))

(declare-fun bm!106568 () Bool)

(assert (=> bm!106568 (= call!106573 (maxPrefixOneRule!833 thiss!17113 (h!23801 rules!1846) (list!7363 lt!628610)))))

(declare-fun b!1669462 () Bool)

(declare-fun e!1069847 () Bool)

(assert (=> b!1669462 (= e!1069847 e!1069848)))

(declare-fun res!748678 () Bool)

(assert (=> b!1669462 (=> (not res!748678) (not e!1069848))))

(assert (=> b!1669462 (= res!748678 (isDefined!2885 lt!628792))))

(declare-fun b!1669463 () Bool)

(declare-fun res!748674 () Bool)

(assert (=> b!1669463 (=> (not res!748674) (not e!1069848))))

(assert (=> b!1669463 (= res!748674 (= (list!7363 (charsOf!1890 (_1!10462 (get!5386 lt!628792)))) (originalCharacters!4055 (_1!10462 (get!5386 lt!628792)))))))

(declare-fun b!1669464 () Bool)

(declare-fun res!748672 () Bool)

(assert (=> b!1669464 (=> (not res!748672) (not e!1069848))))

(assert (=> b!1669464 (= res!748672 (= (value!102041 (_1!10462 (get!5386 lt!628792))) (apply!4954 (transformation!3241 (rule!5129 (_1!10462 (get!5386 lt!628792)))) (seqFromList!2220 (originalCharacters!4055 (_1!10462 (get!5386 lt!628792)))))))))

(declare-fun d!504815 () Bool)

(assert (=> d!504815 e!1069847))

(declare-fun res!748676 () Bool)

(assert (=> d!504815 (=> res!748676 e!1069847)))

(assert (=> d!504815 (= res!748676 (isEmpty!11456 lt!628792))))

(assert (=> d!504815 (= lt!628792 e!1069846)))

(declare-fun c!271641 () Bool)

(assert (=> d!504815 (= c!271641 (and ((_ is Cons!18400) rules!1846) ((_ is Nil!18400) (t!152489 rules!1846))))))

(declare-fun lt!628794 () Unit!31177)

(declare-fun lt!628795 () Unit!31177)

(assert (=> d!504815 (= lt!628794 lt!628795)))

(assert (=> d!504815 (isPrefix!1499 (list!7363 lt!628610) (list!7363 lt!628610))))

(assert (=> d!504815 (= lt!628795 (lemmaIsPrefixRefl!1017 (list!7363 lt!628610) (list!7363 lt!628610)))))

(assert (=> d!504815 (rulesValidInductive!1039 thiss!17113 rules!1846)))

(assert (=> d!504815 (= (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 lt!628610)) lt!628792)))

(declare-fun b!1669465 () Bool)

(assert (=> b!1669465 (= e!1069848 (contains!3215 rules!1846 (rule!5129 (_1!10462 (get!5386 lt!628792)))))))

(declare-fun b!1669466 () Bool)

(assert (=> b!1669466 (= e!1069846 call!106573)))

(assert (= (and d!504815 c!271641) b!1669466))

(assert (= (and d!504815 (not c!271641)) b!1669459))

(assert (= (or b!1669466 b!1669459) bm!106568))

(assert (= (and d!504815 (not res!748676)) b!1669462))

(assert (= (and b!1669462 res!748678) b!1669463))

(assert (= (and b!1669463 res!748674) b!1669458))

(assert (= (and b!1669458 res!748677) b!1669460))

(assert (= (and b!1669460 res!748675) b!1669464))

(assert (= (and b!1669464 res!748672) b!1669461))

(assert (= (and b!1669461 res!748673) b!1669465))

(declare-fun m!2034231 () Bool)

(assert (=> b!1669462 m!2034231))

(declare-fun m!2034233 () Bool)

(assert (=> b!1669463 m!2034233))

(declare-fun m!2034235 () Bool)

(assert (=> b!1669463 m!2034235))

(assert (=> b!1669463 m!2034235))

(declare-fun m!2034237 () Bool)

(assert (=> b!1669463 m!2034237))

(declare-fun m!2034239 () Bool)

(assert (=> d!504815 m!2034239))

(assert (=> d!504815 m!2033615))

(assert (=> d!504815 m!2033615))

(declare-fun m!2034241 () Bool)

(assert (=> d!504815 m!2034241))

(assert (=> d!504815 m!2033615))

(assert (=> d!504815 m!2033615))

(declare-fun m!2034243 () Bool)

(assert (=> d!504815 m!2034243))

(assert (=> d!504815 m!2034059))

(assert (=> b!1669460 m!2034233))

(assert (=> b!1669460 m!2034235))

(assert (=> b!1669460 m!2034235))

(assert (=> b!1669460 m!2034237))

(assert (=> b!1669460 m!2034237))

(declare-fun m!2034245 () Bool)

(assert (=> b!1669460 m!2034245))

(assert (=> b!1669464 m!2034233))

(declare-fun m!2034247 () Bool)

(assert (=> b!1669464 m!2034247))

(assert (=> b!1669464 m!2034247))

(declare-fun m!2034249 () Bool)

(assert (=> b!1669464 m!2034249))

(assert (=> b!1669458 m!2034233))

(declare-fun m!2034251 () Bool)

(assert (=> b!1669458 m!2034251))

(assert (=> b!1669458 m!2033615))

(declare-fun m!2034253 () Bool)

(assert (=> b!1669458 m!2034253))

(assert (=> b!1669465 m!2034233))

(declare-fun m!2034255 () Bool)

(assert (=> b!1669465 m!2034255))

(assert (=> bm!106568 m!2033615))

(declare-fun m!2034257 () Bool)

(assert (=> bm!106568 m!2034257))

(assert (=> b!1669459 m!2033615))

(declare-fun m!2034259 () Bool)

(assert (=> b!1669459 m!2034259))

(assert (=> b!1669461 m!2034233))

(assert (=> b!1669461 m!2034235))

(assert (=> b!1669461 m!2034235))

(assert (=> b!1669461 m!2034237))

(assert (=> b!1669461 m!2034237))

(declare-fun m!2034261 () Bool)

(assert (=> b!1669461 m!2034261))

(assert (=> b!1669046 d!504815))

(declare-fun d!504817 () Bool)

(declare-fun e!1069850 () Bool)

(assert (=> d!504817 e!1069850))

(declare-fun res!748679 () Bool)

(assert (=> d!504817 (=> (not res!748679) (not e!1069850))))

(assert (=> d!504817 (= res!748679 (= (list!7364 (_1!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 tokens!457))))))) (t!152488 (t!152488 tokens!457))))))

(declare-fun lt!628804 () Unit!31177)

(declare-fun e!1069849 () Unit!31177)

(assert (=> d!504817 (= lt!628804 e!1069849)))

(declare-fun c!271642 () Bool)

(assert (=> d!504817 (= c!271642 (or ((_ is Nil!18399) (t!152488 (t!152488 tokens!457))) ((_ is Nil!18399) (t!152488 (t!152488 (t!152488 tokens!457))))))))

(assert (=> d!504817 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504817 (= (theoremInvertabilityWhenTokenListSeparable!307 thiss!17113 rules!1846 (t!152488 (t!152488 tokens!457))) lt!628804)))

(declare-fun b!1669467 () Bool)

(declare-fun Unit!31230 () Unit!31177)

(assert (=> b!1669467 (= e!1069849 Unit!31230)))

(declare-fun b!1669468 () Bool)

(declare-fun Unit!31231 () Unit!31177)

(assert (=> b!1669468 (= e!1069849 Unit!31231)))

(declare-fun lt!628813 () BalanceConc!12204)

(assert (=> b!1669468 (= lt!628813 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 tokens!457)))))))

(declare-fun lt!628812 () BalanceConc!12204)

(assert (=> b!1669468 (= lt!628812 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628817 () tuple2!18114)

(assert (=> b!1669468 (= lt!628817 (lex!1354 thiss!17113 rules!1846 lt!628812))))

(declare-fun lt!628816 () List!18467)

(assert (=> b!1669468 (= lt!628816 (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628820 () List!18467)

(assert (=> b!1669468 (= lt!628820 (list!7363 lt!628812))))

(declare-fun lt!628798 () Unit!31177)

(assert (=> b!1669468 (= lt!628798 (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!628816 lt!628820))))

(assert (=> b!1669468 (isPrefix!1499 lt!628816 (++!5012 lt!628816 lt!628820))))

(declare-fun lt!628801 () Unit!31177)

(assert (=> b!1669468 (= lt!628801 lt!628798)))

(declare-fun lt!628822 () Unit!31177)

(assert (=> b!1669468 (= lt!628822 (theoremInvertabilityWhenTokenListSeparable!307 thiss!17113 rules!1846 (t!152488 (t!152488 (t!152488 tokens!457)))))))

(declare-fun lt!628815 () Unit!31177)

(assert (=> b!1669468 (= lt!628815 (seqFromListBHdTlConstructive!310 (h!23800 (t!152488 (t!152488 (t!152488 tokens!457)))) (t!152488 (t!152488 (t!152488 (t!152488 tokens!457)))) (_1!10459 lt!628817)))))

(assert (=> b!1669468 (= (list!7364 (_1!10459 lt!628817)) (list!7364 (prepend!825 (seqFromList!2218 (t!152488 (t!152488 (t!152488 (t!152488 tokens!457))))) (h!23800 (t!152488 (t!152488 (t!152488 tokens!457)))))))))

(declare-fun lt!628819 () Unit!31177)

(assert (=> b!1669468 (= lt!628819 lt!628815)))

(declare-fun lt!628811 () Option!3530)

(assert (=> b!1669468 (= lt!628811 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 lt!628813)))))

(assert (=> b!1669468 (= (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 (t!152488 tokens!457))))) (printTailRec!921 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 (t!152488 tokens!457)))) 0 (BalanceConc!12205 Empty!6130)))))

(declare-fun lt!628809 () Unit!31177)

(declare-fun Unit!31232 () Unit!31177)

(assert (=> b!1669468 (= lt!628809 Unit!31232)))

(declare-fun lt!628800 () Unit!31177)

(assert (=> b!1669468 (= lt!628800 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!432 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457))))) (list!7363 lt!628812)))))

(assert (=> b!1669468 (= (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457))))) (originalCharacters!4055 (h!23800 (t!152488 (t!152488 tokens!457)))))))

(declare-fun lt!628821 () Unit!31177)

(declare-fun Unit!31233 () Unit!31177)

(assert (=> b!1669468 (= lt!628821 Unit!31233)))

(assert (=> b!1669468 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 (t!152488 tokens!457))))) 0))) (Cons!18397 (head!3724 (originalCharacters!4055 (h!23800 (t!152488 (t!152488 (t!152488 tokens!457)))))) Nil!18397))))

(declare-fun lt!628818 () Unit!31177)

(declare-fun Unit!31234 () Unit!31177)

(assert (=> b!1669468 (= lt!628818 Unit!31234)))

(assert (=> b!1669468 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 (t!152488 tokens!457))))) 0))) (Cons!18397 (head!3724 (list!7363 lt!628812)) Nil!18397))))

(declare-fun lt!628803 () Unit!31177)

(declare-fun Unit!31235 () Unit!31177)

(assert (=> b!1669468 (= lt!628803 Unit!31235)))

(assert (=> b!1669468 (= (list!7363 (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 (t!152488 tokens!457))))) 0))) (Cons!18397 (head!3725 lt!628812) Nil!18397))))

(declare-fun lt!628806 () Unit!31177)

(declare-fun Unit!31236 () Unit!31177)

(assert (=> b!1669468 (= lt!628806 Unit!31236)))

(assert (=> b!1669468 (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (originalCharacters!4055 (h!23800 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628808 () Unit!31177)

(declare-fun Unit!31237 () Unit!31177)

(assert (=> b!1669468 (= lt!628808 Unit!31237)))

(assert (=> b!1669468 (isDefined!2885 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))))))))

(declare-fun lt!628810 () Unit!31177)

(declare-fun Unit!31238 () Unit!31177)

(assert (=> b!1669468 (= lt!628810 Unit!31238)))

(declare-fun lt!628799 () Unit!31177)

(declare-fun Unit!31239 () Unit!31177)

(assert (=> b!1669468 (= lt!628799 Unit!31239)))

(assert (=> b!1669468 (= (_1!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))))))) (h!23800 (t!152488 (t!152488 tokens!457))))))

(declare-fun lt!628802 () Unit!31177)

(declare-fun Unit!31240 () Unit!31177)

(assert (=> b!1669468 (= lt!628802 Unit!31240)))

(assert (=> b!1669468 (isEmpty!11453 (_2!10462 (get!5386 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))))))))))

(declare-fun lt!628797 () Unit!31177)

(declare-fun Unit!31241 () Unit!31177)

(assert (=> b!1669468 (= lt!628797 Unit!31241)))

(assert (=> b!1669468 (matchR!2060 (regex!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))) (list!7363 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628814 () Unit!31177)

(declare-fun Unit!31242 () Unit!31177)

(assert (=> b!1669468 (= lt!628814 Unit!31242)))

(assert (=> b!1669468 (= (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))) (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))))

(declare-fun lt!628805 () Unit!31177)

(declare-fun Unit!31243 () Unit!31177)

(assert (=> b!1669468 (= lt!628805 Unit!31243)))

(declare-fun lt!628807 () Unit!31177)

(assert (=> b!1669468 (= lt!628807 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!190 thiss!17113 rules!1846 (h!23800 (t!152488 (t!152488 tokens!457))) (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))) (list!7363 lt!628812)))))

(declare-fun b!1669469 () Bool)

(assert (=> b!1669469 (= e!1069850 (isEmpty!11454 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 (t!152488 tokens!457))))))))))

(assert (= (and d!504817 c!271642) b!1669467))

(assert (= (and d!504817 (not c!271642)) b!1669468))

(assert (= (and d!504817 res!748679) b!1669469))

(assert (=> d!504817 m!2033653))

(assert (=> d!504817 m!2033669))

(declare-fun m!2034263 () Bool)

(assert (=> d!504817 m!2034263))

(declare-fun m!2034265 () Bool)

(assert (=> d!504817 m!2034265))

(assert (=> d!504817 m!2033653))

(assert (=> d!504817 m!2033669))

(assert (=> d!504817 m!2033363))

(declare-fun m!2034267 () Bool)

(assert (=> b!1669468 m!2034267))

(declare-fun m!2034269 () Bool)

(assert (=> b!1669468 m!2034269))

(declare-fun m!2034271 () Bool)

(assert (=> b!1669468 m!2034271))

(declare-fun m!2034273 () Bool)

(assert (=> b!1669468 m!2034273))

(declare-fun m!2034275 () Bool)

(assert (=> b!1669468 m!2034275))

(declare-fun m!2034277 () Bool)

(assert (=> b!1669468 m!2034277))

(declare-fun m!2034279 () Bool)

(assert (=> b!1669468 m!2034279))

(assert (=> b!1669468 m!2033631))

(assert (=> b!1669468 m!2034033))

(assert (=> b!1669468 m!2034275))

(declare-fun m!2034281 () Bool)

(assert (=> b!1669468 m!2034281))

(assert (=> b!1669468 m!2034033))

(declare-fun m!2034283 () Bool)

(assert (=> b!1669468 m!2034283))

(assert (=> b!1669468 m!2034271))

(declare-fun m!2034285 () Bool)

(assert (=> b!1669468 m!2034285))

(declare-fun m!2034287 () Bool)

(assert (=> b!1669468 m!2034287))

(declare-fun m!2034289 () Bool)

(assert (=> b!1669468 m!2034289))

(declare-fun m!2034291 () Bool)

(assert (=> b!1669468 m!2034291))

(declare-fun m!2034293 () Bool)

(assert (=> b!1669468 m!2034293))

(declare-fun m!2034295 () Bool)

(assert (=> b!1669468 m!2034295))

(assert (=> b!1669468 m!2034283))

(declare-fun m!2034297 () Bool)

(assert (=> b!1669468 m!2034297))

(assert (=> b!1669468 m!2033653))

(declare-fun m!2034299 () Bool)

(assert (=> b!1669468 m!2034299))

(declare-fun m!2034301 () Bool)

(assert (=> b!1669468 m!2034301))

(assert (=> b!1669468 m!2034299))

(declare-fun m!2034303 () Bool)

(assert (=> b!1669468 m!2034303))

(assert (=> b!1669468 m!2034033))

(assert (=> b!1669468 m!2034277))

(declare-fun m!2034305 () Bool)

(assert (=> b!1669468 m!2034305))

(assert (=> b!1669468 m!2034277))

(assert (=> b!1669468 m!2034033))

(declare-fun m!2034307 () Bool)

(assert (=> b!1669468 m!2034307))

(assert (=> b!1669468 m!2033635))

(declare-fun m!2034309 () Bool)

(assert (=> b!1669468 m!2034309))

(assert (=> b!1669468 m!2034287))

(assert (=> b!1669468 m!2033631))

(declare-fun m!2034311 () Bool)

(assert (=> b!1669468 m!2034311))

(assert (=> b!1669468 m!2034277))

(declare-fun m!2034313 () Bool)

(assert (=> b!1669468 m!2034313))

(assert (=> b!1669468 m!2034283))

(declare-fun m!2034315 () Bool)

(assert (=> b!1669468 m!2034315))

(declare-fun m!2034317 () Bool)

(assert (=> b!1669468 m!2034317))

(assert (=> b!1669468 m!2034291))

(assert (=> b!1669468 m!2034271))

(declare-fun m!2034319 () Bool)

(assert (=> b!1669468 m!2034319))

(assert (=> b!1669468 m!2033653))

(assert (=> b!1669468 m!2033669))

(assert (=> b!1669468 m!2034293))

(declare-fun m!2034321 () Bool)

(assert (=> b!1669468 m!2034321))

(assert (=> b!1669468 m!2033635))

(declare-fun m!2034323 () Bool)

(assert (=> b!1669468 m!2034323))

(declare-fun m!2034325 () Bool)

(assert (=> b!1669468 m!2034325))

(assert (=> b!1669468 m!2034317))

(declare-fun m!2034327 () Bool)

(assert (=> b!1669468 m!2034327))

(assert (=> b!1669468 m!2034289))

(assert (=> b!1669468 m!2034267))

(declare-fun m!2034329 () Bool)

(assert (=> b!1669468 m!2034329))

(declare-fun m!2034331 () Bool)

(assert (=> b!1669468 m!2034331))

(assert (=> b!1669469 m!2033653))

(assert (=> b!1669469 m!2033653))

(assert (=> b!1669469 m!2033669))

(assert (=> b!1669469 m!2033669))

(assert (=> b!1669469 m!2034263))

(declare-fun m!2034333 () Bool)

(assert (=> b!1669469 m!2034333))

(assert (=> b!1669046 d!504817))

(declare-fun d!504819 () Bool)

(declare-fun lt!628823 () BalanceConc!12204)

(assert (=> d!504819 (= (list!7363 lt!628823) (printListTailRec!414 thiss!17113 (dropList!715 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) 0) (list!7363 (BalanceConc!12205 Empty!6130))))))

(declare-fun e!1069851 () BalanceConc!12204)

(assert (=> d!504819 (= lt!628823 e!1069851)))

(declare-fun c!271643 () Bool)

(assert (=> d!504819 (= c!271643 (>= 0 (size!14638 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))))

(declare-fun e!1069852 () Bool)

(assert (=> d!504819 e!1069852))

(declare-fun res!748680 () Bool)

(assert (=> d!504819 (=> (not res!748680) (not e!1069852))))

(assert (=> d!504819 (= res!748680 (>= 0 0))))

(assert (=> d!504819 (= (printTailRec!921 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) 0 (BalanceConc!12205 Empty!6130)) lt!628823)))

(declare-fun b!1669470 () Bool)

(assert (=> b!1669470 (= e!1069852 (<= 0 (size!14638 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))))

(declare-fun b!1669471 () Bool)

(assert (=> b!1669471 (= e!1069851 (BalanceConc!12205 Empty!6130))))

(declare-fun b!1669472 () Bool)

(assert (=> b!1669472 (= e!1069851 (printTailRec!921 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) (+ 0 1) (++!5014 (BalanceConc!12205 Empty!6130) (charsOf!1890 (apply!4949 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))) 0)))))))

(declare-fun lt!628824 () List!18469)

(assert (=> b!1669472 (= lt!628824 (list!7364 (singletonSeq!1750 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!628829 () Unit!31177)

(assert (=> b!1669472 (= lt!628829 (lemmaDropApply!621 lt!628824 0))))

(assert (=> b!1669472 (= (head!3726 (drop!941 lt!628824 0)) (apply!4950 lt!628824 0))))

(declare-fun lt!628827 () Unit!31177)

(assert (=> b!1669472 (= lt!628827 lt!628829)))

(declare-fun lt!628825 () List!18469)

(assert (=> b!1669472 (= lt!628825 (list!7364 (singletonSeq!1750 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!628826 () Unit!31177)

(assert (=> b!1669472 (= lt!628826 (lemmaDropTail!601 lt!628825 0))))

(assert (=> b!1669472 (= (tail!2489 (drop!941 lt!628825 0)) (drop!941 lt!628825 (+ 0 1)))))

(declare-fun lt!628828 () Unit!31177)

(assert (=> b!1669472 (= lt!628828 lt!628826)))

(assert (= (and d!504819 res!748680) b!1669470))

(assert (= (and d!504819 c!271643) b!1669471))

(assert (= (and d!504819 (not c!271643)) b!1669472))

(assert (=> d!504819 m!2033901))

(declare-fun m!2034335 () Bool)

(assert (=> d!504819 m!2034335))

(assert (=> d!504819 m!2033901))

(declare-fun m!2034337 () Bool)

(assert (=> d!504819 m!2034337))

(declare-fun m!2034339 () Bool)

(assert (=> d!504819 m!2034339))

(assert (=> d!504819 m!2033611))

(assert (=> d!504819 m!2034335))

(assert (=> d!504819 m!2033611))

(declare-fun m!2034341 () Bool)

(assert (=> d!504819 m!2034341))

(assert (=> b!1669470 m!2033611))

(assert (=> b!1669470 m!2034341))

(declare-fun m!2034343 () Bool)

(assert (=> b!1669472 m!2034343))

(declare-fun m!2034345 () Bool)

(assert (=> b!1669472 m!2034345))

(declare-fun m!2034347 () Bool)

(assert (=> b!1669472 m!2034347))

(assert (=> b!1669472 m!2033611))

(declare-fun m!2034349 () Bool)

(assert (=> b!1669472 m!2034349))

(assert (=> b!1669472 m!2033611))

(assert (=> b!1669472 m!2034113))

(declare-fun m!2034351 () Bool)

(assert (=> b!1669472 m!2034351))

(declare-fun m!2034353 () Bool)

(assert (=> b!1669472 m!2034353))

(declare-fun m!2034355 () Bool)

(assert (=> b!1669472 m!2034355))

(declare-fun m!2034357 () Bool)

(assert (=> b!1669472 m!2034357))

(assert (=> b!1669472 m!2034343))

(declare-fun m!2034359 () Bool)

(assert (=> b!1669472 m!2034359))

(assert (=> b!1669472 m!2033611))

(declare-fun m!2034361 () Bool)

(assert (=> b!1669472 m!2034361))

(declare-fun m!2034363 () Bool)

(assert (=> b!1669472 m!2034363))

(assert (=> b!1669472 m!2034349))

(declare-fun m!2034365 () Bool)

(assert (=> b!1669472 m!2034365))

(assert (=> b!1669472 m!2034365))

(assert (=> b!1669472 m!2034361))

(assert (=> b!1669472 m!2034345))

(assert (=> b!1669046 d!504819))

(assert (=> b!1669046 d!504693))

(declare-fun d!504821 () Bool)

(assert (=> d!504821 (= (list!7364 (_1!10459 lt!628614)) (list!7364 (prepend!825 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457)))) (h!23800 (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!628832 () Unit!31177)

(declare-fun choose!10055 (Token!6048 List!18469 BalanceConc!12206) Unit!31177)

(assert (=> d!504821 (= lt!628832 (choose!10055 (h!23800 (t!152488 (t!152488 tokens!457))) (t!152488 (t!152488 (t!152488 tokens!457))) (_1!10459 lt!628614)))))

(assert (=> d!504821 (= (list!7364 (_1!10459 lt!628614)) (list!7364 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 (t!152488 tokens!457))) (h!23800 (t!152488 (t!152488 tokens!457)))))))))

(assert (=> d!504821 (= (seqFromListBHdTlConstructive!310 (h!23800 (t!152488 (t!152488 tokens!457))) (t!152488 (t!152488 (t!152488 tokens!457))) (_1!10459 lt!628614)) lt!628832)))

(declare-fun bs!397970 () Bool)

(assert (= bs!397970 d!504821))

(assert (=> bs!397970 m!2033635))

(assert (=> bs!397970 m!2033637))

(assert (=> bs!397970 m!2033667))

(assert (=> bs!397970 m!2033635))

(assert (=> bs!397970 m!2033637))

(declare-fun m!2034367 () Bool)

(assert (=> bs!397970 m!2034367))

(assert (=> bs!397970 m!2034367))

(declare-fun m!2034369 () Bool)

(assert (=> bs!397970 m!2034369))

(assert (=> bs!397970 m!2033677))

(declare-fun m!2034371 () Bool)

(assert (=> bs!397970 m!2034371))

(assert (=> bs!397970 m!2034369))

(declare-fun m!2034373 () Bool)

(assert (=> bs!397970 m!2034373))

(assert (=> b!1669046 d!504821))

(declare-fun d!504823 () Bool)

(declare-fun lt!628833 () BalanceConc!12204)

(assert (=> d!504823 (= (list!7363 lt!628833) (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))))

(assert (=> d!504823 (= lt!628833 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (value!102041 (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504823 (= (charsOf!1890 (h!23800 (t!152488 tokens!457))) lt!628833)))

(declare-fun b_lambda!52435 () Bool)

(assert (=> (not b_lambda!52435) (not d!504823)))

(declare-fun t!152534 () Bool)

(declare-fun tb!95799 () Bool)

(assert (=> (and b!1668915 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) t!152534) tb!95799))

(declare-fun b!1669473 () Bool)

(declare-fun e!1069853 () Bool)

(declare-fun tp!481935 () Bool)

(assert (=> b!1669473 (= e!1069853 (and (inv!23750 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (value!102041 (h!23800 (t!152488 tokens!457)))))) tp!481935))))

(declare-fun result!115754 () Bool)

(assert (=> tb!95799 (= result!115754 (and (inv!23751 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (value!102041 (h!23800 (t!152488 tokens!457))))) e!1069853))))

(assert (= tb!95799 b!1669473))

(declare-fun m!2034375 () Bool)

(assert (=> b!1669473 m!2034375))

(declare-fun m!2034377 () Bool)

(assert (=> tb!95799 m!2034377))

(assert (=> d!504823 t!152534))

(declare-fun b_and!118717 () Bool)

(assert (= b_and!118709 (and (=> t!152534 result!115754) b_and!118717)))

(declare-fun tb!95801 () Bool)

(declare-fun t!152536 () Bool)

(assert (=> (and b!1668919 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) t!152536) tb!95801))

(declare-fun result!115756 () Bool)

(assert (= result!115756 result!115754))

(assert (=> d!504823 t!152536))

(declare-fun b_and!118719 () Bool)

(assert (= b_and!118711 (and (=> t!152536 result!115756) b_and!118719)))

(declare-fun tb!95803 () Bool)

(declare-fun t!152538 () Bool)

(assert (=> (and b!1669207 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) t!152538) tb!95803))

(declare-fun result!115758 () Bool)

(assert (= result!115758 result!115754))

(assert (=> d!504823 t!152538))

(declare-fun b_and!118721 () Bool)

(assert (= b_and!118713 (and (=> t!152538 result!115758) b_and!118721)))

(declare-fun t!152540 () Bool)

(declare-fun tb!95805 () Bool)

(assert (=> (and b!1669226 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) t!152540) tb!95805))

(declare-fun result!115760 () Bool)

(assert (= result!115760 result!115754))

(assert (=> d!504823 t!152540))

(declare-fun b_and!118723 () Bool)

(assert (= b_and!118715 (and (=> t!152540 result!115760) b_and!118723)))

(declare-fun m!2034379 () Bool)

(assert (=> d!504823 m!2034379))

(declare-fun m!2034381 () Bool)

(assert (=> d!504823 m!2034381))

(assert (=> b!1669046 d!504823))

(declare-fun b!1669652 () Bool)

(declare-fun e!1069951 () Unit!31177)

(declare-fun Unit!31244 () Unit!31177)

(assert (=> b!1669652 (= e!1069951 Unit!31244)))

(declare-fun b!1669653 () Bool)

(declare-fun e!1069950 () Unit!31177)

(declare-fun Unit!31245 () Unit!31177)

(assert (=> b!1669653 (= e!1069950 Unit!31245)))

(declare-fun b!1669654 () Bool)

(declare-fun e!1069948 () Unit!31177)

(declare-fun Unit!31246 () Unit!31177)

(assert (=> b!1669654 (= e!1069948 Unit!31246)))

(declare-fun b!1669655 () Bool)

(assert (=> b!1669655 false))

(declare-fun lt!629361 () Unit!31177)

(declare-fun lt!629397 () Unit!31177)

(assert (=> b!1669655 (= lt!629361 lt!629397)))

(declare-fun lt!629423 () List!18467)

(assert (=> b!1669655 (not (matchR!2060 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))) lt!629423))))

(declare-fun lt!629388 () Token!6048)

(declare-fun lt!629409 () List!18467)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!112 (LexerInterface!2870 List!18470 Rule!6282 List!18467 List!18467 Rule!6282) Unit!31177)

(assert (=> b!1669655 (= lt!629397 (lemmaMaxPrefNoSmallerRuleMatches!112 thiss!17113 rules!1846 (rule!5129 lt!629388) lt!629423 lt!629409 (rule!5129 (h!23800 (t!152488 tokens!457)))))))

(assert (=> b!1669655 (= lt!629423 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun e!1069952 () Unit!31177)

(declare-fun Unit!31247 () Unit!31177)

(assert (=> b!1669655 (= e!1069952 Unit!31247)))

(declare-fun b!1669656 () Bool)

(declare-fun e!1069949 () Unit!31177)

(declare-fun Unit!31248 () Unit!31177)

(assert (=> b!1669656 (= e!1069949 Unit!31248)))

(declare-fun d!504825 () Bool)

(assert (=> d!504825 (= (maxPrefix!1430 thiss!17113 rules!1846 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609))) (Some!3529 (tuple2!18121 (h!23800 (t!152488 tokens!457)) (list!7363 lt!628609))))))

(declare-fun lt!629371 () Unit!31177)

(declare-fun Unit!31249 () Unit!31177)

(assert (=> d!504825 (= lt!629371 Unit!31249)))

(declare-fun lt!629414 () Unit!31177)

(assert (=> d!504825 (= lt!629414 e!1069951)))

(declare-fun c!271696 () Bool)

(assert (=> d!504825 (= c!271696 (not (= (rule!5129 lt!629388) (rule!5129 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!629411 () Unit!31177)

(declare-fun lt!629358 () Unit!31177)

(assert (=> d!504825 (= lt!629411 lt!629358)))

(declare-fun lt!629382 () List!18467)

(assert (=> d!504825 (= (list!7363 lt!628609) lt!629382)))

(declare-fun lemmaSamePrefixThenSameSuffix!694 (List!18467 List!18467 List!18467 List!18467 List!18467) Unit!31177)

(assert (=> d!504825 (= lt!629358 (lemmaSamePrefixThenSameSuffix!694 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) lt!629382 lt!629409))))

(declare-fun lt!629410 () Unit!31177)

(declare-fun lt!629412 () Unit!31177)

(assert (=> d!504825 (= lt!629410 lt!629412)))

(declare-fun lt!629419 () List!18467)

(declare-fun lt!629385 () List!18467)

(assert (=> d!504825 (= lt!629419 lt!629385)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!195 (List!18467 List!18467 List!18467) Unit!31177)

(assert (=> d!504825 (= lt!629412 (lemmaIsPrefixSameLengthThenSameList!195 lt!629419 lt!629385 lt!629409))))

(assert (=> d!504825 (= lt!629385 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504825 (= lt!629419 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629393 () Unit!31177)

(assert (=> d!504825 (= lt!629393 e!1069950)))

(declare-fun c!271695 () Bool)

(assert (=> d!504825 (= c!271695 (< (size!14637 (charsOf!1890 lt!629388)) (size!14637 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!629365 () Unit!31177)

(assert (=> d!504825 (= lt!629365 e!1069948)))

(declare-fun c!271693 () Bool)

(assert (=> d!504825 (= c!271693 (> (size!14637 (charsOf!1890 lt!629388)) (size!14637 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!629359 () Unit!31177)

(declare-fun lt!629389 () Unit!31177)

(assert (=> d!504825 (= lt!629359 lt!629389)))

(declare-fun rulesRegex!623 (LexerInterface!2870 List!18470) Regex!4569)

(assert (=> d!504825 (matchR!2060 (rulesRegex!623 thiss!17113 rules!1846) (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!72 (LexerInterface!2870 List!18470 List!18467 Token!6048 Rule!6282 List!18467) Unit!31177)

(assert (=> d!504825 (= lt!629389 (lemmaMaxPrefixThenMatchesRulesRegex!72 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (h!23800 (t!152488 tokens!457)) (rule!5129 (h!23800 (t!152488 tokens!457))) Nil!18397))))

(declare-fun lt!629373 () Unit!31177)

(declare-fun lt!629360 () Unit!31177)

(assert (=> d!504825 (= lt!629373 lt!629360)))

(declare-fun lt!629362 () List!18467)

(assert (=> d!504825 (= lt!629382 lt!629362)))

(declare-fun lt!629380 () List!18467)

(declare-fun lt!629408 () List!18467)

(assert (=> d!504825 (= lt!629360 (lemmaSamePrefixThenSameSuffix!694 lt!629380 lt!629382 lt!629408 lt!629362 lt!629409))))

(declare-fun getSuffix!742 (List!18467 List!18467) List!18467)

(assert (=> d!504825 (= lt!629362 (getSuffix!742 lt!629409 (list!7363 (charsOf!1890 lt!629388))))))

(assert (=> d!504825 (= lt!629408 (list!7363 (charsOf!1890 lt!629388)))))

(assert (=> d!504825 (= lt!629380 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629402 () Unit!31177)

(declare-fun lt!629374 () Unit!31177)

(assert (=> d!504825 (= lt!629402 lt!629374)))

(declare-fun lt!629407 () List!18467)

(assert (=> d!504825 (= (maxPrefixOneRule!833 thiss!17113 (rule!5129 lt!629388) lt!629409) (Some!3529 (tuple2!18121 (Token!6049 (apply!4954 (transformation!3241 (rule!5129 lt!629388)) (seqFromList!2220 lt!629407)) (rule!5129 lt!629388) (size!14636 lt!629407) lt!629407) lt!629382)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!261 (LexerInterface!2870 List!18470 List!18467 List!18467 List!18467 Rule!6282) Unit!31177)

(assert (=> d!504825 (= lt!629374 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!261 thiss!17113 rules!1846 lt!629407 lt!629409 lt!629382 (rule!5129 lt!629388)))))

(assert (=> d!504825 (= lt!629407 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629398 () Unit!31177)

(declare-fun lemmaCharactersSize!367 (Token!6048) Unit!31177)

(assert (=> d!504825 (= lt!629398 (lemmaCharactersSize!367 lt!629388))))

(declare-fun lt!629384 () Unit!31177)

(declare-fun lemmaEqSameImage!220 (TokenValueInjection!6322 BalanceConc!12204 BalanceConc!12204) Unit!31177)

(assert (=> d!504825 (= lt!629384 (lemmaEqSameImage!220 (transformation!3241 (rule!5129 lt!629388)) (charsOf!1890 lt!629388) (seqFromList!2220 (originalCharacters!4055 lt!629388))))))

(declare-fun lt!629376 () Unit!31177)

(declare-fun lemmaSemiInverse!435 (TokenValueInjection!6322 BalanceConc!12204) Unit!31177)

(assert (=> d!504825 (= lt!629376 (lemmaSemiInverse!435 (transformation!3241 (rule!5129 lt!629388)) (charsOf!1890 lt!629388)))))

(declare-fun lt!629356 () Unit!31177)

(declare-fun lemmaInv!500 (TokenValueInjection!6322) Unit!31177)

(assert (=> d!504825 (= lt!629356 (lemmaInv!500 (transformation!3241 (rule!5129 lt!629388))))))

(declare-fun lt!629353 () Unit!31177)

(declare-fun lt!629405 () Unit!31177)

(assert (=> d!504825 (= lt!629353 lt!629405)))

(declare-fun lt!629401 () List!18467)

(assert (=> d!504825 (isPrefix!1499 lt!629401 (++!5012 lt!629401 lt!629382))))

(assert (=> d!504825 (= lt!629405 (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!629401 lt!629382))))

(assert (=> d!504825 (= lt!629401 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629421 () Unit!31177)

(declare-fun lt!629383 () Unit!31177)

(assert (=> d!504825 (= lt!629421 lt!629383)))

(declare-fun e!1069953 () Bool)

(assert (=> d!504825 e!1069953))

(declare-fun res!748764 () Bool)

(assert (=> d!504825 (=> (not res!748764) (not e!1069953))))

(assert (=> d!504825 (= res!748764 (isDefined!2887 (getRuleFromTag!334 thiss!17113 rules!1846 (tag!3525 (rule!5129 lt!629388)))))))

(assert (=> d!504825 (= lt!629383 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!334 thiss!17113 rules!1846 lt!629409 lt!629388))))

(declare-fun lt!629417 () Option!3530)

(assert (=> d!504825 (= lt!629382 (_2!10462 (get!5386 lt!629417)))))

(assert (=> d!504825 (= lt!629388 (_1!10462 (get!5386 lt!629417)))))

(declare-fun lt!629416 () Unit!31177)

(assert (=> d!504825 (= lt!629416 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!432 thiss!17113 rules!1846 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))

(assert (=> d!504825 (= lt!629417 (maxPrefix!1430 thiss!17113 rules!1846 lt!629409))))

(declare-fun lt!629370 () Unit!31177)

(declare-fun lt!629368 () Unit!31177)

(assert (=> d!504825 (= lt!629370 lt!629368)))

(declare-fun lt!629387 () List!18467)

(assert (=> d!504825 (isPrefix!1499 lt!629387 (++!5012 lt!629387 (list!7363 lt!628609)))))

(assert (=> d!504825 (= lt!629368 (lemmaConcatTwoListThenFirstIsPrefix!1020 lt!629387 (list!7363 lt!628609)))))

(assert (=> d!504825 (= lt!629387 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504825 (= lt!629409 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (list!7363 lt!628609)))))

(assert (=> d!504825 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504825 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!190 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457)) (rule!5129 (h!23800 (t!152488 tokens!457))) (list!7363 lt!628609)) lt!629371)))

(declare-fun b!1669657 () Bool)

(assert (=> b!1669657 (= e!1069953 (= (rule!5129 lt!629388) (get!5388 (getRuleFromTag!334 thiss!17113 rules!1846 (tag!3525 (rule!5129 lt!629388))))))))

(declare-fun b!1669658 () Bool)

(declare-fun Unit!31264 () Unit!31177)

(assert (=> b!1669658 (= e!1069952 Unit!31264)))

(declare-fun b!1669659 () Bool)

(declare-fun e!1069954 () Unit!31177)

(declare-fun Unit!31265 () Unit!31177)

(assert (=> b!1669659 (= e!1069954 Unit!31265)))

(declare-fun b!1669660 () Bool)

(declare-fun res!748765 () Bool)

(assert (=> b!1669660 (=> (not res!748765) (not e!1069953))))

(assert (=> b!1669660 (= res!748765 (matchR!2060 (regex!3241 (get!5388 (getRuleFromTag!334 thiss!17113 rules!1846 (tag!3525 (rule!5129 lt!629388))))) (list!7363 (charsOf!1890 lt!629388))))))

(declare-fun b!1669661 () Bool)

(assert (=> b!1669661 false))

(declare-fun lt!629357 () Unit!31177)

(declare-fun lt!629396 () Unit!31177)

(assert (=> b!1669661 (= lt!629357 lt!629396)))

(assert (=> b!1669661 (= (rule!5129 lt!629388) (rule!5129 (h!23800 (t!152488 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!88 (List!18470 Rule!6282 Rule!6282) Unit!31177)

(assert (=> b!1669661 (= lt!629396 (lemmaSameIndexThenSameElement!88 rules!1846 (rule!5129 lt!629388) (rule!5129 (h!23800 (t!152488 tokens!457)))))))

(declare-fun Unit!31266 () Unit!31177)

(assert (=> b!1669661 (= e!1069954 Unit!31266)))

(declare-fun b!1669662 () Bool)

(declare-fun Unit!31267 () Unit!31177)

(assert (=> b!1669662 (= e!1069951 Unit!31267)))

(declare-fun c!271697 () Bool)

(declare-fun getIndex!140 (List!18470 Rule!6282) Int)

(assert (=> b!1669662 (= c!271697 (< (getIndex!140 rules!1846 (rule!5129 (h!23800 (t!152488 tokens!457)))) (getIndex!140 rules!1846 (rule!5129 lt!629388))))))

(declare-fun lt!629394 () Unit!31177)

(assert (=> b!1669662 (= lt!629394 e!1069952)))

(declare-fun c!271692 () Bool)

(assert (=> b!1669662 (= c!271692 (< (getIndex!140 rules!1846 (rule!5129 lt!629388)) (getIndex!140 rules!1846 (rule!5129 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!629403 () Unit!31177)

(assert (=> b!1669662 (= lt!629403 e!1069949)))

(declare-fun c!271694 () Bool)

(assert (=> b!1669662 (= c!271694 (= (getIndex!140 rules!1846 (rule!5129 lt!629388)) (getIndex!140 rules!1846 (rule!5129 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!629355 () Unit!31177)

(assert (=> b!1669662 (= lt!629355 e!1069954)))

(assert (=> b!1669662 false))

(declare-fun b!1669663 () Bool)

(assert (=> b!1669663 false))

(declare-fun lt!629379 () Unit!31177)

(declare-fun lt!629422 () Unit!31177)

(assert (=> b!1669663 (= lt!629379 lt!629422)))

(declare-fun lt!629413 () List!18467)

(assert (=> b!1669663 (not (matchR!2060 (regex!3241 (rule!5129 lt!629388)) lt!629413))))

(assert (=> b!1669663 (= lt!629422 (lemmaMaxPrefNoSmallerRuleMatches!112 thiss!17113 rules!1846 (rule!5129 (h!23800 (t!152488 tokens!457))) lt!629413 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (rule!5129 lt!629388)))))

(assert (=> b!1669663 (= lt!629413 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun Unit!31268 () Unit!31177)

(assert (=> b!1669663 (= e!1069949 Unit!31268)))

(declare-fun b!1669664 () Bool)

(declare-fun Unit!31269 () Unit!31177)

(assert (=> b!1669664 (= e!1069948 Unit!31269)))

(declare-fun lt!629420 () Unit!31177)

(assert (=> b!1669664 (= lt!629420 (lemmaMaxPrefixThenMatchesRulesRegex!72 thiss!17113 rules!1846 lt!629409 lt!629388 (rule!5129 lt!629388) lt!629382))))

(assert (=> b!1669664 (matchR!2060 (rulesRegex!623 thiss!17113 rules!1846) (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629418 () Unit!31177)

(assert (=> b!1669664 (= lt!629418 lt!629420)))

(declare-fun lt!629386 () List!18467)

(assert (=> b!1669664 (= lt!629386 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!629372 () List!18467)

(assert (=> b!1669664 (= lt!629372 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!629390 () List!18467)

(assert (=> b!1669664 (= lt!629390 (getSuffix!742 lt!629409 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(declare-fun lt!629375 () Unit!31177)

(assert (=> b!1669664 (= lt!629375 (lemmaSamePrefixThenSameSuffix!694 lt!629386 (list!7363 lt!628609) lt!629372 lt!629390 lt!629409))))

(assert (=> b!1669664 (= (list!7363 lt!628609) lt!629390)))

(declare-fun lt!629400 () Unit!31177)

(assert (=> b!1669664 (= lt!629400 lt!629375)))

(declare-fun lt!629363 () List!18467)

(assert (=> b!1669664 (= lt!629363 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!629366 () Unit!31177)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!185 (List!18467 List!18467) Unit!31177)

(assert (=> b!1669664 (= lt!629366 (lemmaAddHeadSuffixToPrefixStillPrefix!185 lt!629363 lt!629409))))

(assert (=> b!1669664 (isPrefix!1499 (++!5012 lt!629363 (Cons!18397 (head!3724 (getSuffix!742 lt!629409 lt!629363)) Nil!18397)) lt!629409)))

(declare-fun lt!629395 () Unit!31177)

(assert (=> b!1669664 (= lt!629395 lt!629366)))

(declare-fun lt!629381 () List!18467)

(assert (=> b!1669664 (= lt!629381 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629404 () List!18467)

(assert (=> b!1669664 (= lt!629404 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (Cons!18397 (head!3724 (list!7363 lt!628609)) Nil!18397)))))

(declare-fun lt!629377 () Unit!31177)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!71 (List!18467 List!18467 List!18467) Unit!31177)

(assert (=> b!1669664 (= lt!629377 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!71 lt!629381 lt!629404 lt!629409))))

(assert (=> b!1669664 (isPrefix!1499 lt!629404 lt!629381)))

(declare-fun lt!629354 () Unit!31177)

(assert (=> b!1669664 (= lt!629354 lt!629377)))

(declare-fun lt!629392 () Regex!4569)

(assert (=> b!1669664 (= lt!629392 (rulesRegex!623 thiss!17113 rules!1846))))

(declare-fun lt!629415 () List!18467)

(assert (=> b!1669664 (= lt!629415 (++!5012 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) (Cons!18397 (head!3724 (list!7363 lt!628609)) Nil!18397)))))

(declare-fun lt!629367 () List!18467)

(assert (=> b!1669664 (= lt!629367 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629406 () Unit!31177)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!72 (Regex!4569 List!18467 List!18467) Unit!31177)

(assert (=> b!1669664 (= lt!629406 (lemmaNotPrefixMatchThenCannotMatchLonger!72 lt!629392 lt!629415 lt!629367))))

(assert (=> b!1669664 (not (matchR!2060 lt!629392 lt!629367))))

(declare-fun lt!629369 () Unit!31177)

(assert (=> b!1669664 (= lt!629369 lt!629406)))

(assert (=> b!1669664 false))

(declare-fun b!1669665 () Bool)

(declare-fun Unit!31270 () Unit!31177)

(assert (=> b!1669665 (= e!1069950 Unit!31270)))

(declare-fun lt!629364 () List!18467)

(assert (=> b!1669665 (= lt!629364 (list!7363 (charsOf!1890 lt!629388)))))

(declare-fun lt!629391 () List!18467)

(assert (=> b!1669665 (= lt!629391 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457)))))))

(declare-fun lt!629378 () Unit!31177)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!162 (LexerInterface!2870 List!18470 Rule!6282 List!18467 List!18467 List!18467 Rule!6282) Unit!31177)

(assert (=> b!1669665 (= lt!629378 (lemmaMaxPrefixOutputsMaxPrefix!162 thiss!17113 rules!1846 (rule!5129 lt!629388) lt!629364 lt!629409 lt!629391 (rule!5129 (h!23800 (t!152488 tokens!457)))))))

(assert (=> b!1669665 (not (matchR!2060 (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))) lt!629391))))

(declare-fun lt!629399 () Unit!31177)

(assert (=> b!1669665 (= lt!629399 lt!629378)))

(assert (=> b!1669665 false))

(assert (= (and d!504825 res!748764) b!1669660))

(assert (= (and b!1669660 res!748765) b!1669657))

(assert (= (and d!504825 c!271693) b!1669664))

(assert (= (and d!504825 (not c!271693)) b!1669654))

(assert (= (and d!504825 c!271695) b!1669665))

(assert (= (and d!504825 (not c!271695)) b!1669653))

(assert (= (and d!504825 c!271696) b!1669662))

(assert (= (and d!504825 (not c!271696)) b!1669652))

(assert (= (and b!1669662 c!271697) b!1669655))

(assert (= (and b!1669662 (not c!271697)) b!1669658))

(assert (= (and b!1669662 c!271692) b!1669663))

(assert (= (and b!1669662 (not c!271692)) b!1669656))

(assert (= (and b!1669662 c!271694) b!1669661))

(assert (= (and b!1669662 (not c!271694)) b!1669659))

(assert (=> b!1669664 m!2033623))

(declare-fun m!2034945 () Bool)

(assert (=> b!1669664 m!2034945))

(declare-fun m!2034947 () Bool)

(assert (=> b!1669664 m!2034947))

(declare-fun m!2034949 () Bool)

(assert (=> b!1669664 m!2034949))

(assert (=> b!1669664 m!2033621))

(declare-fun m!2034951 () Bool)

(assert (=> b!1669664 m!2034951))

(declare-fun m!2034953 () Bool)

(assert (=> b!1669664 m!2034953))

(assert (=> b!1669664 m!2033621))

(assert (=> b!1669664 m!2033623))

(declare-fun m!2034955 () Bool)

(assert (=> b!1669664 m!2034955))

(declare-fun m!2034957 () Bool)

(assert (=> b!1669664 m!2034957))

(declare-fun m!2034959 () Bool)

(assert (=> b!1669664 m!2034959))

(declare-fun m!2034961 () Bool)

(assert (=> b!1669664 m!2034961))

(declare-fun m!2034963 () Bool)

(assert (=> b!1669664 m!2034963))

(declare-fun m!2034965 () Bool)

(assert (=> b!1669664 m!2034965))

(declare-fun m!2034967 () Bool)

(assert (=> b!1669664 m!2034967))

(assert (=> b!1669664 m!2034951))

(assert (=> b!1669664 m!2034949))

(declare-fun m!2034969 () Bool)

(assert (=> b!1669664 m!2034969))

(declare-fun m!2034971 () Bool)

(assert (=> b!1669664 m!2034971))

(assert (=> b!1669664 m!2033617))

(assert (=> b!1669664 m!2033619))

(assert (=> b!1669664 m!2034955))

(declare-fun m!2034973 () Bool)

(assert (=> b!1669664 m!2034973))

(assert (=> b!1669664 m!2034947))

(assert (=> b!1669664 m!2033617))

(declare-fun m!2034975 () Bool)

(assert (=> b!1669664 m!2034975))

(assert (=> b!1669664 m!2033623))

(declare-fun m!2034977 () Bool)

(assert (=> b!1669664 m!2034977))

(assert (=> b!1669664 m!2034961))

(assert (=> b!1669665 m!2034947))

(assert (=> b!1669665 m!2034949))

(declare-fun m!2034979 () Bool)

(assert (=> b!1669665 m!2034979))

(assert (=> b!1669665 m!2033621))

(declare-fun m!2034981 () Bool)

(assert (=> b!1669665 m!2034981))

(assert (=> b!1669665 m!2033621))

(assert (=> b!1669665 m!2033623))

(assert (=> b!1669665 m!2034947))

(declare-fun m!2034983 () Bool)

(assert (=> b!1669661 m!2034983))

(declare-fun m!2034985 () Bool)

(assert (=> b!1669655 m!2034985))

(declare-fun m!2034987 () Bool)

(assert (=> b!1669655 m!2034987))

(assert (=> b!1669655 m!2034947))

(assert (=> b!1669655 m!2034947))

(assert (=> b!1669655 m!2034949))

(declare-fun m!2034989 () Bool)

(assert (=> b!1669657 m!2034989))

(assert (=> b!1669657 m!2034989))

(declare-fun m!2034991 () Bool)

(assert (=> b!1669657 m!2034991))

(assert (=> d!504825 m!2034947))

(declare-fun m!2034993 () Bool)

(assert (=> d!504825 m!2034993))

(declare-fun m!2034995 () Bool)

(assert (=> d!504825 m!2034995))

(assert (=> d!504825 m!2034949))

(declare-fun m!2034997 () Bool)

(assert (=> d!504825 m!2034997))

(declare-fun m!2034999 () Bool)

(assert (=> d!504825 m!2034999))

(declare-fun m!2035001 () Bool)

(assert (=> d!504825 m!2035001))

(declare-fun m!2035003 () Bool)

(assert (=> d!504825 m!2035003))

(assert (=> d!504825 m!2034993))

(declare-fun m!2035005 () Bool)

(assert (=> d!504825 m!2035005))

(declare-fun m!2035007 () Bool)

(assert (=> d!504825 m!2035007))

(declare-fun m!2035009 () Bool)

(assert (=> d!504825 m!2035009))

(assert (=> d!504825 m!2034989))

(assert (=> d!504825 m!2034161))

(assert (=> d!504825 m!2034145))

(declare-fun m!2035011 () Bool)

(assert (=> d!504825 m!2035011))

(assert (=> d!504825 m!2034947))

(assert (=> d!504825 m!2034949))

(assert (=> d!504825 m!2033621))

(assert (=> d!504825 m!2033797))

(assert (=> d!504825 m!2033617))

(assert (=> d!504825 m!2035005))

(assert (=> d!504825 m!2033623))

(declare-fun m!2035013 () Bool)

(assert (=> d!504825 m!2035013))

(assert (=> d!504825 m!2033623))

(assert (=> d!504825 m!2033617))

(assert (=> d!504825 m!2033623))

(declare-fun m!2035015 () Bool)

(assert (=> d!504825 m!2035015))

(assert (=> d!504825 m!2034947))

(declare-fun m!2035017 () Bool)

(assert (=> d!504825 m!2035017))

(assert (=> d!504825 m!2034989))

(declare-fun m!2035019 () Bool)

(assert (=> d!504825 m!2035019))

(assert (=> d!504825 m!2034999))

(assert (=> d!504825 m!2033621))

(assert (=> d!504825 m!2033623))

(assert (=> d!504825 m!2033617))

(assert (=> d!504825 m!2034161))

(assert (=> d!504825 m!2034951))

(assert (=> d!504825 m!2033623))

(declare-fun m!2035021 () Bool)

(assert (=> d!504825 m!2035021))

(declare-fun m!2035023 () Bool)

(assert (=> d!504825 m!2035023))

(assert (=> d!504825 m!2033623))

(assert (=> d!504825 m!2033617))

(assert (=> d!504825 m!2033649))

(assert (=> d!504825 m!2034951))

(declare-fun m!2035025 () Bool)

(assert (=> d!504825 m!2035025))

(declare-fun m!2035027 () Bool)

(assert (=> d!504825 m!2035027))

(declare-fun m!2035029 () Bool)

(assert (=> d!504825 m!2035029))

(assert (=> d!504825 m!2035027))

(declare-fun m!2035031 () Bool)

(assert (=> d!504825 m!2035031))

(declare-fun m!2035033 () Bool)

(assert (=> d!504825 m!2035033))

(assert (=> d!504825 m!2033621))

(assert (=> d!504825 m!2033623))

(assert (=> d!504825 m!2033617))

(declare-fun m!2035035 () Bool)

(assert (=> d!504825 m!2035035))

(declare-fun m!2035037 () Bool)

(assert (=> d!504825 m!2035037))

(declare-fun m!2035039 () Bool)

(assert (=> d!504825 m!2035039))

(assert (=> d!504825 m!2034947))

(declare-fun m!2035041 () Bool)

(assert (=> d!504825 m!2035041))

(assert (=> d!504825 m!2033363))

(declare-fun m!2035043 () Bool)

(assert (=> d!504825 m!2035043))

(assert (=> d!504825 m!2034947))

(declare-fun m!2035045 () Bool)

(assert (=> d!504825 m!2035045))

(declare-fun m!2035047 () Bool)

(assert (=> b!1669663 m!2035047))

(assert (=> b!1669663 m!2033621))

(assert (=> b!1669663 m!2033621))

(assert (=> b!1669663 m!2033623))

(assert (=> b!1669663 m!2033623))

(declare-fun m!2035049 () Bool)

(assert (=> b!1669663 m!2035049))

(assert (=> b!1669660 m!2034947))

(assert (=> b!1669660 m!2034949))

(assert (=> b!1669660 m!2034949))

(declare-fun m!2035051 () Bool)

(assert (=> b!1669660 m!2035051))

(assert (=> b!1669660 m!2034989))

(assert (=> b!1669660 m!2034991))

(assert (=> b!1669660 m!2034989))

(assert (=> b!1669660 m!2034947))

(declare-fun m!2035053 () Bool)

(assert (=> b!1669662 m!2035053))

(declare-fun m!2035055 () Bool)

(assert (=> b!1669662 m!2035055))

(assert (=> b!1669046 d!504825))

(assert (=> b!1669046 d!504697))

(declare-fun d!504917 () Bool)

(assert (=> d!504917 (= (list!7364 (_1!10459 lt!628614)) (list!7367 (c!271557 (_1!10459 lt!628614))))))

(declare-fun bs!397988 () Bool)

(assert (= bs!397988 d!504917))

(declare-fun m!2035057 () Bool)

(assert (=> bs!397988 m!2035057))

(assert (=> b!1669046 d!504917))

(declare-fun d!504919 () Bool)

(assert (=> d!504919 (= (head!3724 (list!7363 lt!628609)) (h!23798 (list!7363 lt!628609)))))

(assert (=> b!1669046 d!504919))

(declare-fun d!504921 () Bool)

(assert (=> d!504921 (= (list!7364 (prepend!825 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457)))) (h!23800 (t!152488 (t!152488 tokens!457))))) (list!7367 (c!271557 (prepend!825 (seqFromList!2218 (t!152488 (t!152488 (t!152488 tokens!457)))) (h!23800 (t!152488 (t!152488 tokens!457)))))))))

(declare-fun bs!397989 () Bool)

(assert (= bs!397989 d!504921))

(declare-fun m!2035059 () Bool)

(assert (=> bs!397989 m!2035059))

(assert (=> b!1669046 d!504921))

(declare-fun d!504923 () Bool)

(declare-fun e!1069962 () Bool)

(assert (=> d!504923 e!1069962))

(declare-fun res!748771 () Bool)

(assert (=> d!504923 (=> (not res!748771) (not e!1069962))))

(declare-fun lt!629427 () BalanceConc!12204)

(assert (=> d!504923 (= res!748771 (= (list!7363 lt!629427) (Cons!18397 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0) Nil!18397)))))

(declare-fun singleton!780 (C!9312) BalanceConc!12204)

(assert (=> d!504923 (= lt!629427 (singleton!780 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0)))))

(assert (=> d!504923 (= (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 (t!152488 tokens!457)))) 0)) lt!629427)))

(declare-fun b!1669677 () Bool)

(declare-fun isBalanced!1906 (Conc!6130) Bool)

(assert (=> b!1669677 (= e!1069962 (isBalanced!1906 (c!271555 lt!629427)))))

(assert (= (and d!504923 res!748771) b!1669677))

(declare-fun m!2035061 () Bool)

(assert (=> d!504923 m!2035061))

(assert (=> d!504923 m!2033633))

(declare-fun m!2035063 () Bool)

(assert (=> d!504923 m!2035063))

(declare-fun m!2035065 () Bool)

(assert (=> b!1669677 m!2035065))

(assert (=> b!1669046 d!504923))

(declare-fun b!1669689 () Bool)

(declare-fun e!1069968 () List!18467)

(assert (=> b!1669689 (= e!1069968 (++!5012 (list!7368 (left!14716 (c!271555 lt!628415))) (list!7368 (right!15046 (c!271555 lt!628415)))))))

(declare-fun d!504925 () Bool)

(declare-fun c!271705 () Bool)

(assert (=> d!504925 (= c!271705 ((_ is Empty!6130) (c!271555 lt!628415)))))

(declare-fun e!1069967 () List!18467)

(assert (=> d!504925 (= (list!7368 (c!271555 lt!628415)) e!1069967)))

(declare-fun b!1669687 () Bool)

(assert (=> b!1669687 (= e!1069967 e!1069968)))

(declare-fun c!271706 () Bool)

(assert (=> b!1669687 (= c!271706 ((_ is Leaf!8971) (c!271555 lt!628415)))))

(declare-fun b!1669688 () Bool)

(declare-fun list!7371 (IArray!12265) List!18467)

(assert (=> b!1669688 (= e!1069968 (list!7371 (xs!8974 (c!271555 lt!628415))))))

(declare-fun b!1669686 () Bool)

(assert (=> b!1669686 (= e!1069967 Nil!18397)))

(assert (= (and d!504925 c!271705) b!1669686))

(assert (= (and d!504925 (not c!271705)) b!1669687))

(assert (= (and b!1669687 c!271706) b!1669688))

(assert (= (and b!1669687 (not c!271706)) b!1669689))

(declare-fun m!2035067 () Bool)

(assert (=> b!1669689 m!2035067))

(declare-fun m!2035069 () Bool)

(assert (=> b!1669689 m!2035069))

(assert (=> b!1669689 m!2035067))

(assert (=> b!1669689 m!2035069))

(declare-fun m!2035071 () Bool)

(assert (=> b!1669689 m!2035071))

(declare-fun m!2035073 () Bool)

(assert (=> b!1669688 m!2035073))

(assert (=> d!504703 d!504925))

(declare-fun d!504927 () Bool)

(declare-fun e!1069969 () Bool)

(assert (=> d!504927 e!1069969))

(declare-fun res!748772 () Bool)

(assert (=> d!504927 (=> (not res!748772) (not e!1069969))))

(declare-fun lt!629428 () BalanceConc!12206)

(assert (=> d!504927 (= res!748772 (= (list!7364 lt!629428) ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))

(assert (=> d!504927 (= lt!629428 (BalanceConc!12207 (fromList!410 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!504927 (= (fromListB!1007 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))) lt!629428)))

(declare-fun b!1669690 () Bool)

(assert (=> b!1669690 (= e!1069969 (isBalanced!1905 (fromList!410 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457))))))))

(assert (= (and d!504927 res!748772) b!1669690))

(declare-fun m!2035075 () Bool)

(assert (=> d!504927 m!2035075))

(assert (=> d!504927 m!2033375))

(declare-fun m!2035077 () Bool)

(assert (=> d!504927 m!2035077))

(assert (=> b!1669690 m!2033375))

(assert (=> b!1669690 m!2035077))

(assert (=> b!1669690 m!2035077))

(declare-fun m!2035079 () Bool)

(assert (=> b!1669690 m!2035079))

(assert (=> d!504639 d!504927))

(declare-fun d!504929 () Bool)

(declare-fun charsToInt!0 (List!18468) (_ BitVec 32))

(assert (=> d!504929 (= (inv!16 (value!102041 (h!23800 tokens!457))) (= (charsToInt!0 (text!23764 (value!102041 (h!23800 tokens!457)))) (value!102032 (value!102041 (h!23800 tokens!457)))))))

(declare-fun bs!397990 () Bool)

(assert (= bs!397990 d!504929))

(declare-fun m!2035081 () Bool)

(assert (=> bs!397990 m!2035081))

(assert (=> b!1669165 d!504929))

(declare-fun d!504931 () Bool)

(assert (=> d!504931 (= (inv!23743 (tag!3525 (h!23801 (t!152489 rules!1846)))) (= (mod (str.len (value!102040 (tag!3525 (h!23801 (t!152489 rules!1846))))) 2) 0))))

(assert (=> b!1669206 d!504931))

(declare-fun d!504933 () Bool)

(declare-fun res!748773 () Bool)

(declare-fun e!1069970 () Bool)

(assert (=> d!504933 (=> (not res!748773) (not e!1069970))))

(assert (=> d!504933 (= res!748773 (semiInverseModEq!1266 (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toValue!4704 (transformation!3241 (h!23801 (t!152489 rules!1846))))))))

(assert (=> d!504933 (= (inv!23746 (transformation!3241 (h!23801 (t!152489 rules!1846)))) e!1069970)))

(declare-fun b!1669691 () Bool)

(assert (=> b!1669691 (= e!1069970 (equivClasses!1207 (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toValue!4704 (transformation!3241 (h!23801 (t!152489 rules!1846))))))))

(assert (= (and d!504933 res!748773) b!1669691))

(declare-fun m!2035083 () Bool)

(assert (=> d!504933 m!2035083))

(declare-fun m!2035085 () Bool)

(assert (=> b!1669691 m!2035085))

(assert (=> b!1669206 d!504933))

(declare-fun d!504935 () Bool)

(declare-fun lt!629431 () Int)

(assert (=> d!504935 (= lt!629431 (size!14636 (list!7363 (_2!10459 lt!628632))))))

(declare-fun size!14639 (Conc!6130) Int)

(assert (=> d!504935 (= lt!629431 (size!14639 (c!271555 (_2!10459 lt!628632))))))

(assert (=> d!504935 (= (size!14637 (_2!10459 lt!628632)) lt!629431)))

(declare-fun bs!397991 () Bool)

(assert (= bs!397991 d!504935))

(assert (=> bs!397991 m!2033737))

(assert (=> bs!397991 m!2033737))

(declare-fun m!2035087 () Bool)

(assert (=> bs!397991 m!2035087))

(declare-fun m!2035089 () Bool)

(assert (=> bs!397991 m!2035089))

(assert (=> b!1669136 d!504935))

(declare-fun d!504937 () Bool)

(declare-fun lt!629432 () Int)

(assert (=> d!504937 (= lt!629432 (size!14636 (list!7363 lt!628415)))))

(assert (=> d!504937 (= lt!629432 (size!14639 (c!271555 lt!628415)))))

(assert (=> d!504937 (= (size!14637 lt!628415) lt!629432)))

(declare-fun bs!397992 () Bool)

(assert (= bs!397992 d!504937))

(assert (=> bs!397992 m!2033355))

(assert (=> bs!397992 m!2033355))

(declare-fun m!2035091 () Bool)

(assert (=> bs!397992 m!2035091))

(declare-fun m!2035093 () Bool)

(assert (=> bs!397992 m!2035093))

(assert (=> b!1669136 d!504937))

(declare-fun d!504939 () Bool)

(declare-fun e!1069971 () Bool)

(assert (=> d!504939 e!1069971))

(declare-fun res!748775 () Bool)

(assert (=> d!504939 (=> (not res!748775) (not e!1069971))))

(declare-fun lt!629433 () List!18467)

(assert (=> d!504939 (= res!748775 (= (content!2573 lt!629433) ((_ map or) (content!2573 (t!152486 lt!628411)) (content!2573 lt!628416))))))

(declare-fun e!1069972 () List!18467)

(assert (=> d!504939 (= lt!629433 e!1069972)))

(declare-fun c!271707 () Bool)

(assert (=> d!504939 (= c!271707 ((_ is Nil!18397) (t!152486 lt!628411)))))

(assert (=> d!504939 (= (++!5012 (t!152486 lt!628411) lt!628416) lt!629433)))

(declare-fun b!1669693 () Bool)

(assert (=> b!1669693 (= e!1069972 (Cons!18397 (h!23798 (t!152486 lt!628411)) (++!5012 (t!152486 (t!152486 lt!628411)) lt!628416)))))

(declare-fun b!1669692 () Bool)

(assert (=> b!1669692 (= e!1069972 lt!628416)))

(declare-fun b!1669694 () Bool)

(declare-fun res!748774 () Bool)

(assert (=> b!1669694 (=> (not res!748774) (not e!1069971))))

(assert (=> b!1669694 (= res!748774 (= (size!14636 lt!629433) (+ (size!14636 (t!152486 lt!628411)) (size!14636 lt!628416))))))

(declare-fun b!1669695 () Bool)

(assert (=> b!1669695 (= e!1069971 (or (not (= lt!628416 Nil!18397)) (= lt!629433 (t!152486 lt!628411))))))

(assert (= (and d!504939 c!271707) b!1669692))

(assert (= (and d!504939 (not c!271707)) b!1669693))

(assert (= (and d!504939 res!748775) b!1669694))

(assert (= (and b!1669694 res!748774) b!1669695))

(declare-fun m!2035095 () Bool)

(assert (=> d!504939 m!2035095))

(declare-fun m!2035097 () Bool)

(assert (=> d!504939 m!2035097))

(assert (=> d!504939 m!2033763))

(declare-fun m!2035099 () Bool)

(assert (=> b!1669693 m!2035099))

(declare-fun m!2035101 () Bool)

(assert (=> b!1669694 m!2035101))

(declare-fun m!2035103 () Bool)

(assert (=> b!1669694 m!2035103))

(assert (=> b!1669694 m!2033769))

(assert (=> b!1669152 d!504939))

(declare-fun d!504941 () Bool)

(assert (=> d!504941 (= (isEmpty!11453 (originalCharacters!4055 (h!23800 tokens!457))) ((_ is Nil!18397) (originalCharacters!4055 (h!23800 tokens!457))))))

(assert (=> d!504711 d!504941))

(declare-fun b!1669699 () Bool)

(declare-fun e!1069974 () List!18467)

(assert (=> b!1669699 (= e!1069974 (++!5012 (list!7368 (left!14716 (c!271555 lt!628409))) (list!7368 (right!15046 (c!271555 lt!628409)))))))

(declare-fun d!504943 () Bool)

(declare-fun c!271708 () Bool)

(assert (=> d!504943 (= c!271708 ((_ is Empty!6130) (c!271555 lt!628409)))))

(declare-fun e!1069973 () List!18467)

(assert (=> d!504943 (= (list!7368 (c!271555 lt!628409)) e!1069973)))

(declare-fun b!1669697 () Bool)

(assert (=> b!1669697 (= e!1069973 e!1069974)))

(declare-fun c!271709 () Bool)

(assert (=> b!1669697 (= c!271709 ((_ is Leaf!8971) (c!271555 lt!628409)))))

(declare-fun b!1669698 () Bool)

(assert (=> b!1669698 (= e!1069974 (list!7371 (xs!8974 (c!271555 lt!628409))))))

(declare-fun b!1669696 () Bool)

(assert (=> b!1669696 (= e!1069973 Nil!18397)))

(assert (= (and d!504943 c!271708) b!1669696))

(assert (= (and d!504943 (not c!271708)) b!1669697))

(assert (= (and b!1669697 c!271709) b!1669698))

(assert (= (and b!1669697 (not c!271709)) b!1669699))

(declare-fun m!2035105 () Bool)

(assert (=> b!1669699 m!2035105))

(declare-fun m!2035107 () Bool)

(assert (=> b!1669699 m!2035107))

(assert (=> b!1669699 m!2035105))

(assert (=> b!1669699 m!2035107))

(declare-fun m!2035109 () Bool)

(assert (=> b!1669699 m!2035109))

(declare-fun m!2035111 () Bool)

(assert (=> b!1669698 m!2035111))

(assert (=> d!504691 d!504943))

(declare-fun d!504945 () Bool)

(assert (=> d!504945 (= (list!7363 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))) (list!7368 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))))

(declare-fun bs!397993 () Bool)

(assert (= bs!397993 d!504945))

(declare-fun m!2035113 () Bool)

(assert (=> bs!397993 m!2035113))

(assert (=> b!1669174 d!504945))

(declare-fun bs!397994 () Bool)

(declare-fun d!504947 () Bool)

(assert (= bs!397994 (and d!504947 d!504645)))

(declare-fun lambda!68010 () Int)

(assert (=> bs!397994 (= lambda!68010 lambda!68003)))

(declare-fun b!1669704 () Bool)

(declare-fun e!1069979 () Bool)

(assert (=> b!1669704 (= e!1069979 true)))

(declare-fun b!1669703 () Bool)

(declare-fun e!1069978 () Bool)

(assert (=> b!1669703 (= e!1069978 e!1069979)))

(declare-fun b!1669702 () Bool)

(declare-fun e!1069977 () Bool)

(assert (=> b!1669702 (= e!1069977 e!1069978)))

(assert (=> d!504947 e!1069977))

(assert (= b!1669703 b!1669704))

(assert (= b!1669702 b!1669703))

(assert (= (and d!504947 ((_ is Cons!18400) rules!1846)) b!1669702))

(assert (=> b!1669704 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8295 order!11043 lambda!68010))))

(assert (=> b!1669704 (< (dynLambda!8296 order!11045 (toChars!4563 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8295 order!11043 lambda!68010))))

(assert (=> d!504947 true))

(declare-fun lt!629434 () Bool)

(assert (=> d!504947 (= lt!629434 (forall!4182 (t!152488 tokens!457) lambda!68010))))

(declare-fun e!1069975 () Bool)

(assert (=> d!504947 (= lt!629434 e!1069975)))

(declare-fun res!748777 () Bool)

(assert (=> d!504947 (=> res!748777 e!1069975)))

(assert (=> d!504947 (= res!748777 (not ((_ is Cons!18399) (t!152488 tokens!457))))))

(assert (=> d!504947 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504947 (= (rulesProduceEachTokenIndividuallyList!1072 thiss!17113 rules!1846 (t!152488 tokens!457)) lt!629434)))

(declare-fun b!1669700 () Bool)

(declare-fun e!1069976 () Bool)

(assert (=> b!1669700 (= e!1069975 e!1069976)))

(declare-fun res!748776 () Bool)

(assert (=> b!1669700 (=> (not res!748776) (not e!1069976))))

(assert (=> b!1669700 (= res!748776 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457))))))

(declare-fun b!1669701 () Bool)

(assert (=> b!1669701 (= e!1069976 (rulesProduceEachTokenIndividuallyList!1072 thiss!17113 rules!1846 (t!152488 (t!152488 tokens!457))))))

(assert (= (and d!504947 (not res!748777)) b!1669700))

(assert (= (and b!1669700 res!748776) b!1669701))

(declare-fun m!2035115 () Bool)

(assert (=> d!504947 m!2035115))

(assert (=> d!504947 m!2033363))

(assert (=> b!1669700 m!2033789))

(declare-fun m!2035117 () Bool)

(assert (=> b!1669701 m!2035117))

(assert (=> b!1669003 d!504947))

(declare-fun b!1669706 () Bool)

(declare-fun res!748781 () Bool)

(declare-fun e!1069980 () Bool)

(assert (=> b!1669706 (=> (not res!748781) (not e!1069980))))

(assert (=> b!1669706 (= res!748781 (= (head!3724 (tail!2488 lt!628411)) (head!3724 (tail!2488 lt!628412))))))

(declare-fun b!1669705 () Bool)

(declare-fun e!1069981 () Bool)

(assert (=> b!1669705 (= e!1069981 e!1069980)))

(declare-fun res!748779 () Bool)

(assert (=> b!1669705 (=> (not res!748779) (not e!1069980))))

(assert (=> b!1669705 (= res!748779 (not ((_ is Nil!18397) (tail!2488 lt!628412))))))

(declare-fun d!504949 () Bool)

(declare-fun e!1069982 () Bool)

(assert (=> d!504949 e!1069982))

(declare-fun res!748780 () Bool)

(assert (=> d!504949 (=> res!748780 e!1069982)))

(declare-fun lt!629435 () Bool)

(assert (=> d!504949 (= res!748780 (not lt!629435))))

(assert (=> d!504949 (= lt!629435 e!1069981)))

(declare-fun res!748778 () Bool)

(assert (=> d!504949 (=> res!748778 e!1069981)))

(assert (=> d!504949 (= res!748778 ((_ is Nil!18397) (tail!2488 lt!628411)))))

(assert (=> d!504949 (= (isPrefix!1499 (tail!2488 lt!628411) (tail!2488 lt!628412)) lt!629435)))

(declare-fun b!1669708 () Bool)

(assert (=> b!1669708 (= e!1069982 (>= (size!14636 (tail!2488 lt!628412)) (size!14636 (tail!2488 lt!628411))))))

(declare-fun b!1669707 () Bool)

(assert (=> b!1669707 (= e!1069980 (isPrefix!1499 (tail!2488 (tail!2488 lt!628411)) (tail!2488 (tail!2488 lt!628412))))))

(assert (= (and d!504949 (not res!748778)) b!1669705))

(assert (= (and b!1669705 res!748779) b!1669706))

(assert (= (and b!1669706 res!748781) b!1669707))

(assert (= (and d!504949 (not res!748780)) b!1669708))

(assert (=> b!1669706 m!2033689))

(declare-fun m!2035119 () Bool)

(assert (=> b!1669706 m!2035119))

(assert (=> b!1669706 m!2033691))

(declare-fun m!2035121 () Bool)

(assert (=> b!1669706 m!2035121))

(assert (=> b!1669708 m!2033691))

(declare-fun m!2035123 () Bool)

(assert (=> b!1669708 m!2035123))

(assert (=> b!1669708 m!2033689))

(declare-fun m!2035125 () Bool)

(assert (=> b!1669708 m!2035125))

(assert (=> b!1669707 m!2033689))

(declare-fun m!2035127 () Bool)

(assert (=> b!1669707 m!2035127))

(assert (=> b!1669707 m!2033691))

(declare-fun m!2035129 () Bool)

(assert (=> b!1669707 m!2035129))

(assert (=> b!1669707 m!2035127))

(assert (=> b!1669707 m!2035129))

(declare-fun m!2035131 () Bool)

(assert (=> b!1669707 m!2035131))

(assert (=> b!1669058 d!504949))

(declare-fun d!504951 () Bool)

(assert (=> d!504951 (= (tail!2488 lt!628411) (t!152486 lt!628411))))

(assert (=> b!1669058 d!504951))

(declare-fun d!504953 () Bool)

(assert (=> d!504953 (= (tail!2488 lt!628412) (t!152486 lt!628412))))

(assert (=> b!1669058 d!504953))

(declare-fun d!504955 () Bool)

(declare-fun c!271714 () Bool)

(assert (=> d!504955 (= c!271714 ((_ is Empty!6131) (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))))

(declare-fun e!1069987 () List!18469)

(assert (=> d!504955 (= (list!7367 (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))) e!1069987)))

(declare-fun b!1669717 () Bool)

(assert (=> b!1669717 (= e!1069987 Nil!18399)))

(declare-fun b!1669718 () Bool)

(declare-fun e!1069988 () List!18469)

(assert (=> b!1669718 (= e!1069987 e!1069988)))

(declare-fun c!271715 () Bool)

(assert (=> b!1669718 (= c!271715 ((_ is Leaf!8972) (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))))

(declare-fun b!1669720 () Bool)

(declare-fun ++!5016 (List!18469 List!18469) List!18469)

(assert (=> b!1669720 (= e!1069988 (++!5016 (list!7367 (left!14717 (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457))))))) (list!7367 (right!15047 (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457)))))))))))

(declare-fun b!1669719 () Bool)

(declare-fun list!7372 (IArray!12267) List!18469)

(assert (=> b!1669719 (= e!1069988 (list!7372 (xs!8975 (c!271557 (seqFromList!2218 ($colon$colon!390 (t!152488 (t!152488 tokens!457)) (h!23800 (t!152488 tokens!457))))))))))

(assert (= (and d!504955 c!271714) b!1669717))

(assert (= (and d!504955 (not c!271714)) b!1669718))

(assert (= (and b!1669718 c!271715) b!1669719))

(assert (= (and b!1669718 (not c!271715)) b!1669720))

(declare-fun m!2035133 () Bool)

(assert (=> b!1669720 m!2035133))

(declare-fun m!2035135 () Bool)

(assert (=> b!1669720 m!2035135))

(assert (=> b!1669720 m!2035133))

(assert (=> b!1669720 m!2035135))

(declare-fun m!2035137 () Bool)

(assert (=> b!1669720 m!2035137))

(declare-fun m!2035139 () Bool)

(assert (=> b!1669719 m!2035139))

(assert (=> d!504637 d!504955))

(declare-fun d!504957 () Bool)

(declare-fun c!271716 () Bool)

(assert (=> d!504957 (= c!271716 ((_ is Empty!6131) (c!271557 (_1!10459 lt!628410))))))

(declare-fun e!1069989 () List!18469)

(assert (=> d!504957 (= (list!7367 (c!271557 (_1!10459 lt!628410))) e!1069989)))

(declare-fun b!1669721 () Bool)

(assert (=> b!1669721 (= e!1069989 Nil!18399)))

(declare-fun b!1669722 () Bool)

(declare-fun e!1069990 () List!18469)

(assert (=> b!1669722 (= e!1069989 e!1069990)))

(declare-fun c!271717 () Bool)

(assert (=> b!1669722 (= c!271717 ((_ is Leaf!8972) (c!271557 (_1!10459 lt!628410))))))

(declare-fun b!1669724 () Bool)

(assert (=> b!1669724 (= e!1069990 (++!5016 (list!7367 (left!14717 (c!271557 (_1!10459 lt!628410)))) (list!7367 (right!15047 (c!271557 (_1!10459 lt!628410))))))))

(declare-fun b!1669723 () Bool)

(assert (=> b!1669723 (= e!1069990 (list!7372 (xs!8975 (c!271557 (_1!10459 lt!628410)))))))

(assert (= (and d!504957 c!271716) b!1669721))

(assert (= (and d!504957 (not c!271716)) b!1669722))

(assert (= (and b!1669722 c!271717) b!1669723))

(assert (= (and b!1669722 (not c!271717)) b!1669724))

(declare-fun m!2035141 () Bool)

(assert (=> b!1669724 m!2035141))

(declare-fun m!2035143 () Bool)

(assert (=> b!1669724 m!2035143))

(assert (=> b!1669724 m!2035141))

(assert (=> b!1669724 m!2035143))

(declare-fun m!2035145 () Bool)

(assert (=> b!1669724 m!2035145))

(declare-fun m!2035147 () Bool)

(assert (=> b!1669723 m!2035147))

(assert (=> d!504675 d!504957))

(declare-fun d!504959 () Bool)

(declare-fun c!271720 () Bool)

(assert (=> d!504959 (= c!271720 ((_ is Nil!18397) lt!628639))))

(declare-fun e!1069993 () (InoxSet C!9312))

(assert (=> d!504959 (= (content!2573 lt!628639) e!1069993)))

(declare-fun b!1669729 () Bool)

(assert (=> b!1669729 (= e!1069993 ((as const (Array C!9312 Bool)) false))))

(declare-fun b!1669730 () Bool)

(assert (=> b!1669730 (= e!1069993 ((_ map or) (store ((as const (Array C!9312 Bool)) false) (h!23798 lt!628639) true) (content!2573 (t!152486 lt!628639))))))

(assert (= (and d!504959 c!271720) b!1669729))

(assert (= (and d!504959 (not c!271720)) b!1669730))

(declare-fun m!2035149 () Bool)

(assert (=> b!1669730 m!2035149))

(declare-fun m!2035151 () Bool)

(assert (=> b!1669730 m!2035151))

(assert (=> d!504699 d!504959))

(declare-fun d!504961 () Bool)

(declare-fun c!271721 () Bool)

(assert (=> d!504961 (= c!271721 ((_ is Nil!18397) lt!628411))))

(declare-fun e!1069994 () (InoxSet C!9312))

(assert (=> d!504961 (= (content!2573 lt!628411) e!1069994)))

(declare-fun b!1669731 () Bool)

(assert (=> b!1669731 (= e!1069994 ((as const (Array C!9312 Bool)) false))))

(declare-fun b!1669732 () Bool)

(assert (=> b!1669732 (= e!1069994 ((_ map or) (store ((as const (Array C!9312 Bool)) false) (h!23798 lt!628411) true) (content!2573 (t!152486 lt!628411))))))

(assert (= (and d!504961 c!271721) b!1669731))

(assert (= (and d!504961 (not c!271721)) b!1669732))

(declare-fun m!2035153 () Bool)

(assert (=> b!1669732 m!2035153))

(assert (=> b!1669732 m!2035097))

(assert (=> d!504699 d!504961))

(declare-fun d!504963 () Bool)

(declare-fun c!271722 () Bool)

(assert (=> d!504963 (= c!271722 ((_ is Nil!18397) lt!628416))))

(declare-fun e!1069995 () (InoxSet C!9312))

(assert (=> d!504963 (= (content!2573 lt!628416) e!1069995)))

(declare-fun b!1669733 () Bool)

(assert (=> b!1669733 (= e!1069995 ((as const (Array C!9312 Bool)) false))))

(declare-fun b!1669734 () Bool)

(assert (=> b!1669734 (= e!1069995 ((_ map or) (store ((as const (Array C!9312 Bool)) false) (h!23798 lt!628416) true) (content!2573 (t!152486 lt!628416))))))

(assert (= (and d!504963 c!271722) b!1669733))

(assert (= (and d!504963 (not c!271722)) b!1669734))

(declare-fun m!2035155 () Bool)

(assert (=> b!1669734 m!2035155))

(declare-fun m!2035157 () Bool)

(assert (=> b!1669734 m!2035157))

(assert (=> d!504699 d!504963))

(declare-fun d!504965 () Bool)

(declare-fun lt!629463 () Bool)

(declare-fun e!1070036 () Bool)

(assert (=> d!504965 (= lt!629463 e!1070036)))

(declare-fun res!748815 () Bool)

(assert (=> d!504965 (=> (not res!748815) (not e!1070036))))

(assert (=> d!504965 (= res!748815 (= (list!7364 (_1!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 tokens!457)))))) (list!7364 (singletonSeq!1750 (h!23800 tokens!457)))))))

(declare-fun e!1070037 () Bool)

(assert (=> d!504965 (= lt!629463 e!1070037)))

(declare-fun res!748814 () Bool)

(assert (=> d!504965 (=> (not res!748814) (not e!1070037))))

(declare-fun lt!629464 () tuple2!18114)

(assert (=> d!504965 (= res!748814 (= (size!14638 (_1!10459 lt!629464)) 1))))

(assert (=> d!504965 (= lt!629464 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 tokens!457)))))))

(assert (=> d!504965 (not (isEmpty!11449 rules!1846))))

(assert (=> d!504965 (= (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 tokens!457)) lt!629463)))

(declare-fun b!1669801 () Bool)

(declare-fun res!748816 () Bool)

(assert (=> b!1669801 (=> (not res!748816) (not e!1070037))))

(assert (=> b!1669801 (= res!748816 (= (apply!4949 (_1!10459 lt!629464) 0) (h!23800 tokens!457)))))

(declare-fun b!1669802 () Bool)

(assert (=> b!1669802 (= e!1070037 (isEmpty!11454 (_2!10459 lt!629464)))))

(declare-fun b!1669803 () Bool)

(assert (=> b!1669803 (= e!1070036 (isEmpty!11454 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 tokens!457)))))))))

(assert (= (and d!504965 res!748814) b!1669801))

(assert (= (and b!1669801 res!748816) b!1669802))

(assert (= (and d!504965 res!748815) b!1669803))

(declare-fun m!2035269 () Bool)

(assert (=> d!504965 m!2035269))

(declare-fun m!2035271 () Bool)

(assert (=> d!504965 m!2035271))

(assert (=> d!504965 m!2035269))

(declare-fun m!2035273 () Bool)

(assert (=> d!504965 m!2035273))

(assert (=> d!504965 m!2035271))

(declare-fun m!2035275 () Bool)

(assert (=> d!504965 m!2035275))

(assert (=> d!504965 m!2035269))

(declare-fun m!2035277 () Bool)

(assert (=> d!504965 m!2035277))

(declare-fun m!2035279 () Bool)

(assert (=> d!504965 m!2035279))

(assert (=> d!504965 m!2033363))

(declare-fun m!2035281 () Bool)

(assert (=> b!1669801 m!2035281))

(declare-fun m!2035283 () Bool)

(assert (=> b!1669802 m!2035283))

(assert (=> b!1669803 m!2035269))

(assert (=> b!1669803 m!2035269))

(assert (=> b!1669803 m!2035271))

(assert (=> b!1669803 m!2035271))

(assert (=> b!1669803 m!2035275))

(declare-fun m!2035285 () Bool)

(assert (=> b!1669803 m!2035285))

(assert (=> b!1669180 d!504965))

(declare-fun d!505005 () Bool)

(declare-fun prefixMatchZipperSequence!670 (Regex!4569 BalanceConc!12204) Bool)

(assert (=> d!505005 (= (separableTokensPredicate!810 thiss!17113 (h!23800 tokens!457) (h!23800 (t!152488 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!670 (rulesRegex!623 thiss!17113 rules!1846) (++!5014 (charsOf!1890 (h!23800 tokens!457)) (singletonSeq!1751 (apply!4948 (charsOf!1890 (h!23800 (t!152488 tokens!457))) 0))))))))

(declare-fun bs!398002 () Bool)

(assert (= bs!398002 d!505005))

(declare-fun m!2035287 () Bool)

(assert (=> bs!398002 m!2035287))

(declare-fun m!2035289 () Bool)

(assert (=> bs!398002 m!2035289))

(assert (=> bs!398002 m!2033347))

(assert (=> bs!398002 m!2034951))

(declare-fun m!2035291 () Bool)

(assert (=> bs!398002 m!2035291))

(declare-fun m!2035293 () Bool)

(assert (=> bs!398002 m!2035293))

(assert (=> bs!398002 m!2033621))

(assert (=> bs!398002 m!2034951))

(assert (=> bs!398002 m!2033621))

(assert (=> bs!398002 m!2035287))

(assert (=> bs!398002 m!2033347))

(assert (=> bs!398002 m!2035289))

(assert (=> bs!398002 m!2035291))

(assert (=> b!1669180 d!505005))

(declare-fun d!505007 () Bool)

(declare-fun lt!629465 () Int)

(assert (=> d!505007 (= lt!629465 (size!14636 (list!7363 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!505007 (= lt!629465 (size!14639 (c!271555 (charsOf!1890 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!505007 (= (size!14637 (charsOf!1890 (h!23800 (t!152488 tokens!457)))) lt!629465)))

(declare-fun bs!398003 () Bool)

(assert (= bs!398003 d!505007))

(assert (=> bs!398003 m!2033621))

(assert (=> bs!398003 m!2033623))

(assert (=> bs!398003 m!2033623))

(assert (=> bs!398003 m!2034219))

(declare-fun m!2035295 () Bool)

(assert (=> bs!398003 m!2035295))

(assert (=> b!1669180 d!505007))

(declare-fun d!505009 () Bool)

(assert (=> d!505009 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 tokens!457))))

(declare-fun lt!629468 () Unit!31177)

(declare-fun choose!10056 (LexerInterface!2870 List!18470 List!18469 Token!6048) Unit!31177)

(assert (=> d!505009 (= lt!629468 (choose!10056 thiss!17113 rules!1846 tokens!457 (h!23800 tokens!457)))))

(assert (=> d!505009 (not (isEmpty!11449 rules!1846))))

(assert (=> d!505009 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 thiss!17113 rules!1846 tokens!457 (h!23800 tokens!457)) lt!629468)))

(declare-fun bs!398004 () Bool)

(assert (= bs!398004 d!505009))

(assert (=> bs!398004 m!2033501))

(declare-fun m!2035297 () Bool)

(assert (=> bs!398004 m!2035297))

(assert (=> bs!398004 m!2033363))

(assert (=> b!1669180 d!505009))

(assert (=> b!1669180 d!504823))

(declare-fun d!505011 () Bool)

(declare-fun lt!629469 () Bool)

(declare-fun e!1070038 () Bool)

(assert (=> d!505011 (= lt!629469 e!1070038)))

(declare-fun res!748818 () Bool)

(assert (=> d!505011 (=> (not res!748818) (not e!1070038))))

(assert (=> d!505011 (= res!748818 (= (list!7364 (_1!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))) (list!7364 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))))

(declare-fun e!1070039 () Bool)

(assert (=> d!505011 (= lt!629469 e!1070039)))

(declare-fun res!748817 () Bool)

(assert (=> d!505011 (=> (not res!748817) (not e!1070039))))

(declare-fun lt!629470 () tuple2!18114)

(assert (=> d!505011 (= res!748817 (= (size!14638 (_1!10459 lt!629470)) 1))))

(assert (=> d!505011 (= lt!629470 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!505011 (not (isEmpty!11449 rules!1846))))

(assert (=> d!505011 (= (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457))) lt!629469)))

(declare-fun b!1669804 () Bool)

(declare-fun res!748819 () Bool)

(assert (=> b!1669804 (=> (not res!748819) (not e!1070039))))

(assert (=> b!1669804 (= res!748819 (= (apply!4949 (_1!10459 lt!629470) 0) (h!23800 (t!152488 tokens!457))))))

(declare-fun b!1669805 () Bool)

(assert (=> b!1669805 (= e!1070039 (isEmpty!11454 (_2!10459 lt!629470)))))

(declare-fun b!1669806 () Bool)

(assert (=> b!1669806 (= e!1070038 (isEmpty!11454 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (singletonSeq!1750 (h!23800 (t!152488 tokens!457))))))))))

(assert (= (and d!505011 res!748817) b!1669804))

(assert (= (and b!1669804 res!748819) b!1669805))

(assert (= (and d!505011 res!748818) b!1669806))

(assert (=> d!505011 m!2033611))

(assert (=> d!505011 m!2033613))

(assert (=> d!505011 m!2033611))

(declare-fun m!2035299 () Bool)

(assert (=> d!505011 m!2035299))

(assert (=> d!505011 m!2033613))

(declare-fun m!2035301 () Bool)

(assert (=> d!505011 m!2035301))

(assert (=> d!505011 m!2033611))

(assert (=> d!505011 m!2034113))

(declare-fun m!2035303 () Bool)

(assert (=> d!505011 m!2035303))

(assert (=> d!505011 m!2033363))

(declare-fun m!2035305 () Bool)

(assert (=> b!1669804 m!2035305))

(declare-fun m!2035307 () Bool)

(assert (=> b!1669805 m!2035307))

(assert (=> b!1669806 m!2033611))

(assert (=> b!1669806 m!2033611))

(assert (=> b!1669806 m!2033613))

(assert (=> b!1669806 m!2033613))

(assert (=> b!1669806 m!2035301))

(declare-fun m!2035309 () Bool)

(assert (=> b!1669806 m!2035309))

(assert (=> b!1669180 d!505011))

(declare-fun d!505013 () Bool)

(assert (=> d!505013 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 tokens!457)))))

(declare-fun lt!629471 () Unit!31177)

(assert (=> d!505013 (= lt!629471 (choose!10056 thiss!17113 rules!1846 tokens!457 (h!23800 (t!152488 tokens!457))))))

(assert (=> d!505013 (not (isEmpty!11449 rules!1846))))

(assert (=> d!505013 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 thiss!17113 rules!1846 tokens!457 (h!23800 (t!152488 tokens!457))) lt!629471)))

(declare-fun bs!398005 () Bool)

(assert (= bs!398005 d!505013))

(assert (=> bs!398005 m!2033789))

(declare-fun m!2035311 () Bool)

(assert (=> bs!398005 m!2035311))

(assert (=> bs!398005 m!2033363))

(assert (=> b!1669180 d!505013))

(declare-fun b!1669808 () Bool)

(declare-fun res!748823 () Bool)

(declare-fun e!1070040 () Bool)

(assert (=> b!1669808 (=> (not res!748823) (not e!1070040))))

(assert (=> b!1669808 (= res!748823 (= (head!3724 lt!628411) (head!3724 (++!5012 lt!628411 lt!628416))))))

(declare-fun b!1669807 () Bool)

(declare-fun e!1070041 () Bool)

(assert (=> b!1669807 (= e!1070041 e!1070040)))

(declare-fun res!748821 () Bool)

(assert (=> b!1669807 (=> (not res!748821) (not e!1070040))))

(assert (=> b!1669807 (= res!748821 (not ((_ is Nil!18397) (++!5012 lt!628411 lt!628416))))))

(declare-fun d!505015 () Bool)

(declare-fun e!1070042 () Bool)

(assert (=> d!505015 e!1070042))

(declare-fun res!748822 () Bool)

(assert (=> d!505015 (=> res!748822 e!1070042)))

(declare-fun lt!629472 () Bool)

(assert (=> d!505015 (= res!748822 (not lt!629472))))

(assert (=> d!505015 (= lt!629472 e!1070041)))

(declare-fun res!748820 () Bool)

(assert (=> d!505015 (=> res!748820 e!1070041)))

(assert (=> d!505015 (= res!748820 ((_ is Nil!18397) lt!628411))))

(assert (=> d!505015 (= (isPrefix!1499 lt!628411 (++!5012 lt!628411 lt!628416)) lt!629472)))

(declare-fun b!1669810 () Bool)

(assert (=> b!1669810 (= e!1070042 (>= (size!14636 (++!5012 lt!628411 lt!628416)) (size!14636 lt!628411)))))

(declare-fun b!1669809 () Bool)

(assert (=> b!1669809 (= e!1070040 (isPrefix!1499 (tail!2488 lt!628411) (tail!2488 (++!5012 lt!628411 lt!628416))))))

(assert (= (and d!505015 (not res!748820)) b!1669807))

(assert (= (and b!1669807 res!748821) b!1669808))

(assert (= (and b!1669808 res!748823) b!1669809))

(assert (= (and d!505015 (not res!748822)) b!1669810))

(assert (=> b!1669808 m!2033681))

(assert (=> b!1669808 m!2033345))

(declare-fun m!2035313 () Bool)

(assert (=> b!1669808 m!2035313))

(assert (=> b!1669810 m!2033345))

(declare-fun m!2035315 () Bool)

(assert (=> b!1669810 m!2035315))

(assert (=> b!1669810 m!2033687))

(assert (=> b!1669809 m!2033689))

(assert (=> b!1669809 m!2033345))

(declare-fun m!2035317 () Bool)

(assert (=> b!1669809 m!2035317))

(assert (=> b!1669809 m!2033689))

(assert (=> b!1669809 m!2035317))

(declare-fun m!2035319 () Bool)

(assert (=> b!1669809 m!2035319))

(assert (=> d!504685 d!505015))

(assert (=> d!504685 d!504699))

(declare-fun d!505017 () Bool)

(assert (=> d!505017 (isPrefix!1499 lt!628411 (++!5012 lt!628411 lt!628416))))

(assert (=> d!505017 true))

(declare-fun _$46!1127 () Unit!31177)

(assert (=> d!505017 (= (choose!10053 lt!628411 lt!628416) _$46!1127)))

(declare-fun bs!398006 () Bool)

(assert (= bs!398006 d!505017))

(assert (=> bs!398006 m!2033345))

(assert (=> bs!398006 m!2033345))

(assert (=> bs!398006 m!2033695))

(assert (=> d!504685 d!505017))

(declare-fun bs!398007 () Bool)

(declare-fun d!505019 () Bool)

(assert (= bs!398007 (and d!505019 d!504731)))

(declare-fun lambda!68017 () Int)

(assert (=> bs!398007 (= (= (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (= lambda!68017 lambda!68009))))

(assert (=> d!505019 true))

(assert (=> d!505019 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) (dynLambda!8299 order!11053 lambda!68017))))

(assert (=> d!505019 (= (equivClasses!1207 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) (Forall2!532 lambda!68017))))

(declare-fun bs!398008 () Bool)

(assert (= bs!398008 d!505019))

(declare-fun m!2035321 () Bool)

(assert (=> bs!398008 m!2035321))

(assert (=> b!1669022 d!505019))

(declare-fun d!505021 () Bool)

(assert (=> d!505021 (= (inv!23751 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))) (isBalanced!1906 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))))

(declare-fun bs!398009 () Bool)

(assert (= bs!398009 d!505021))

(declare-fun m!2035323 () Bool)

(assert (=> bs!398009 m!2035323))

(assert (=> tb!95775 d!505021))

(declare-fun d!505023 () Bool)

(declare-fun e!1070043 () Bool)

(assert (=> d!505023 e!1070043))

(declare-fun res!748824 () Bool)

(assert (=> d!505023 (=> (not res!748824) (not e!1070043))))

(declare-fun lt!629473 () BalanceConc!12206)

(assert (=> d!505023 (= res!748824 (= (list!7364 lt!629473) tokens!457))))

(assert (=> d!505023 (= lt!629473 (BalanceConc!12207 (fromList!410 tokens!457)))))

(assert (=> d!505023 (= (fromListB!1007 tokens!457) lt!629473)))

(declare-fun b!1669811 () Bool)

(assert (=> b!1669811 (= e!1070043 (isBalanced!1905 (fromList!410 tokens!457)))))

(assert (= (and d!505023 res!748824) b!1669811))

(declare-fun m!2035325 () Bool)

(assert (=> d!505023 m!2035325))

(declare-fun m!2035327 () Bool)

(assert (=> d!505023 m!2035327))

(assert (=> b!1669811 m!2035327))

(assert (=> b!1669811 m!2035327))

(declare-fun m!2035329 () Bool)

(assert (=> b!1669811 m!2035329))

(assert (=> d!504705 d!505023))

(declare-fun d!505025 () Bool)

(assert (=> d!505025 (= (inv!23743 (tag!3525 (rule!5129 (h!23800 (t!152488 tokens!457))))) (= (mod (str.len (value!102040 (tag!3525 (rule!5129 (h!23800 (t!152488 tokens!457)))))) 2) 0))))

(assert (=> b!1669225 d!505025))

(declare-fun d!505027 () Bool)

(declare-fun res!748825 () Bool)

(declare-fun e!1070044 () Bool)

(assert (=> d!505027 (=> (not res!748825) (not e!1070044))))

(assert (=> d!505027 (= res!748825 (semiInverseModEq!1266 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toValue!4704 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))))))

(assert (=> d!505027 (= (inv!23746 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) e!1070044)))

(declare-fun b!1669812 () Bool)

(assert (=> b!1669812 (= e!1070044 (equivClasses!1207 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toValue!4704 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))))))

(assert (= (and d!505027 res!748825) b!1669812))

(declare-fun m!2035331 () Bool)

(assert (=> d!505027 m!2035331))

(declare-fun m!2035333 () Bool)

(assert (=> b!1669812 m!2035333))

(assert (=> b!1669225 d!505027))

(declare-fun d!505029 () Bool)

(declare-fun c!271739 () Bool)

(assert (=> d!505029 (= c!271739 ((_ is Node!6130) (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))))

(declare-fun e!1070049 () Bool)

(assert (=> d!505029 (= (inv!23750 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))) e!1070049)))

(declare-fun b!1669819 () Bool)

(declare-fun inv!23753 (Conc!6130) Bool)

(assert (=> b!1669819 (= e!1070049 (inv!23753 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))))

(declare-fun b!1669820 () Bool)

(declare-fun e!1070050 () Bool)

(assert (=> b!1669820 (= e!1070049 e!1070050)))

(declare-fun res!748828 () Bool)

(assert (=> b!1669820 (= res!748828 (not ((_ is Leaf!8971) (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))))))))

(assert (=> b!1669820 (=> res!748828 e!1070050)))

(declare-fun b!1669821 () Bool)

(declare-fun inv!23755 (Conc!6130) Bool)

(assert (=> b!1669821 (= e!1070050 (inv!23755 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))))))

(assert (= (and d!505029 c!271739) b!1669819))

(assert (= (and d!505029 (not c!271739)) b!1669820))

(assert (= (and b!1669820 (not res!748828)) b!1669821))

(declare-fun m!2035335 () Bool)

(assert (=> b!1669819 m!2035335))

(declare-fun m!2035337 () Bool)

(assert (=> b!1669821 m!2035337))

(assert (=> b!1669142 d!505029))

(declare-fun d!505031 () Bool)

(declare-fun charsToBigInt!1 (List!18468) Int)

(assert (=> d!505031 (= (inv!17 (value!102041 (h!23800 tokens!457))) (= (charsToBigInt!1 (text!23765 (value!102041 (h!23800 tokens!457)))) (value!102033 (value!102041 (h!23800 tokens!457)))))))

(declare-fun bs!398010 () Bool)

(assert (= bs!398010 d!505031))

(declare-fun m!2035339 () Bool)

(assert (=> bs!398010 m!2035339))

(assert (=> b!1669168 d!505031))

(declare-fun d!505033 () Bool)

(declare-fun charsToBigInt!0 (List!18468 Int) Int)

(assert (=> d!505033 (= (inv!15 (value!102041 (h!23800 tokens!457))) (= (charsToBigInt!0 (text!23766 (value!102041 (h!23800 tokens!457))) 0) (value!102036 (value!102041 (h!23800 tokens!457)))))))

(declare-fun bs!398011 () Bool)

(assert (= bs!398011 d!505033))

(declare-fun m!2035341 () Bool)

(assert (=> bs!398011 m!2035341))

(assert (=> b!1669166 d!505033))

(declare-fun d!505035 () Bool)

(assert (=> d!505035 true))

(declare-fun order!11059 () Int)

(declare-fun lambda!68020 () Int)

(declare-fun dynLambda!8302 (Int Int) Int)

(assert (=> d!505035 (< (dynLambda!8296 order!11045 (toChars!4563 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8302 order!11059 lambda!68020))))

(assert (=> d!505035 true))

(assert (=> d!505035 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (dynLambda!8302 order!11059 lambda!68020))))

(declare-fun Forall!662 (Int) Bool)

(assert (=> d!505035 (= (semiInverseModEq!1266 (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toValue!4704 (transformation!3241 (h!23801 rules!1846)))) (Forall!662 lambda!68020))))

(declare-fun bs!398012 () Bool)

(assert (= bs!398012 d!505035))

(declare-fun m!2035343 () Bool)

(assert (=> bs!398012 m!2035343))

(assert (=> d!504717 d!505035))

(declare-fun bs!398013 () Bool)

(declare-fun d!505037 () Bool)

(assert (= bs!398013 (and d!505037 d!505035)))

(declare-fun lambda!68021 () Int)

(assert (=> bs!398013 (= (and (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (h!23801 rules!1846)))) (= (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toValue!4704 (transformation!3241 (h!23801 rules!1846))))) (= lambda!68021 lambda!68020))))

(assert (=> d!505037 true))

(assert (=> d!505037 (< (dynLambda!8296 order!11045 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) (dynLambda!8302 order!11059 lambda!68021))))

(assert (=> d!505037 true))

(assert (=> d!505037 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) (dynLambda!8302 order!11059 lambda!68021))))

(assert (=> d!505037 (= (semiInverseModEq!1266 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toValue!4704 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) (Forall!662 lambda!68021))))

(declare-fun bs!398014 () Bool)

(assert (= bs!398014 d!505037))

(declare-fun m!2035345 () Bool)

(assert (=> bs!398014 m!2035345))

(assert (=> d!504671 d!505037))

(declare-fun d!505039 () Bool)

(declare-fun res!748829 () Bool)

(declare-fun e!1070051 () Bool)

(assert (=> d!505039 (=> (not res!748829) (not e!1070051))))

(assert (=> d!505039 (= res!748829 (not (isEmpty!11453 (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))))))

(assert (=> d!505039 (= (inv!23747 (h!23800 (t!152488 tokens!457))) e!1070051)))

(declare-fun b!1669826 () Bool)

(declare-fun res!748830 () Bool)

(assert (=> b!1669826 (=> (not res!748830) (not e!1070051))))

(assert (=> b!1669826 (= res!748830 (= (originalCharacters!4055 (h!23800 (t!152488 tokens!457))) (list!7363 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (value!102041 (h!23800 (t!152488 tokens!457)))))))))

(declare-fun b!1669827 () Bool)

(assert (=> b!1669827 (= e!1070051 (= (size!14632 (h!23800 (t!152488 tokens!457))) (size!14636 (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))))))

(assert (= (and d!505039 res!748829) b!1669826))

(assert (= (and b!1669826 res!748830) b!1669827))

(declare-fun b_lambda!52441 () Bool)

(assert (=> (not b_lambda!52441) (not b!1669826)))

(assert (=> b!1669826 t!152534))

(declare-fun b_and!118741 () Bool)

(assert (= b_and!118717 (and (=> t!152534 result!115754) b_and!118741)))

(assert (=> b!1669826 t!152536))

(declare-fun b_and!118743 () Bool)

(assert (= b_and!118719 (and (=> t!152536 result!115756) b_and!118743)))

(assert (=> b!1669826 t!152538))

(declare-fun b_and!118745 () Bool)

(assert (= b_and!118721 (and (=> t!152538 result!115758) b_and!118745)))

(assert (=> b!1669826 t!152540))

(declare-fun b_and!118747 () Bool)

(assert (= b_and!118723 (and (=> t!152540 result!115760) b_and!118747)))

(declare-fun m!2035347 () Bool)

(assert (=> d!505039 m!2035347))

(assert (=> b!1669826 m!2034381))

(assert (=> b!1669826 m!2034381))

(declare-fun m!2035349 () Bool)

(assert (=> b!1669826 m!2035349))

(assert (=> b!1669827 m!2034069))

(assert (=> b!1669223 d!505039))

(declare-fun d!505041 () Bool)

(assert (=> d!505041 (= (list!7364 (_1!10459 lt!628632)) (list!7367 (c!271557 (_1!10459 lt!628632))))))

(declare-fun bs!398015 () Bool)

(assert (= bs!398015 d!505041))

(declare-fun m!2035351 () Bool)

(assert (=> bs!398015 m!2035351))

(assert (=> b!1669135 d!505041))

(declare-fun d!505043 () Bool)

(declare-fun e!1070071 () Bool)

(assert (=> d!505043 e!1070071))

(declare-fun c!271753 () Bool)

(declare-fun lt!629584 () tuple2!18122)

(declare-fun size!14642 (List!18469) Int)

(assert (=> d!505043 (= c!271753 (> (size!14642 (_1!10463 lt!629584)) 0))))

(declare-fun e!1070072 () tuple2!18122)

(assert (=> d!505043 (= lt!629584 e!1070072)))

(declare-fun c!271754 () Bool)

(declare-fun lt!629583 () Option!3530)

(assert (=> d!505043 (= c!271754 ((_ is Some!3529) lt!629583))))

(assert (=> d!505043 (= lt!629583 (maxPrefix!1430 thiss!17113 rules!1846 (list!7363 lt!628415)))))

(assert (=> d!505043 (= (lexList!895 thiss!17113 rules!1846 (list!7363 lt!628415)) lt!629584)))

(declare-fun b!1669859 () Bool)

(assert (=> b!1669859 (= e!1070071 (= (_2!10463 lt!629584) (list!7363 lt!628415)))))

(declare-fun b!1669860 () Bool)

(declare-fun e!1070070 () Bool)

(assert (=> b!1669860 (= e!1070071 e!1070070)))

(declare-fun res!748836 () Bool)

(assert (=> b!1669860 (= res!748836 (< (size!14636 (_2!10463 lt!629584)) (size!14636 (list!7363 lt!628415))))))

(assert (=> b!1669860 (=> (not res!748836) (not e!1070070))))

(declare-fun b!1669861 () Bool)

(assert (=> b!1669861 (= e!1070072 (tuple2!18123 Nil!18399 (list!7363 lt!628415)))))

(declare-fun b!1669862 () Bool)

(declare-fun isEmpty!11461 (List!18469) Bool)

(assert (=> b!1669862 (= e!1070070 (not (isEmpty!11461 (_1!10463 lt!629584))))))

(declare-fun b!1669863 () Bool)

(declare-fun lt!629582 () tuple2!18122)

(assert (=> b!1669863 (= e!1070072 (tuple2!18123 (Cons!18399 (_1!10462 (v!24792 lt!629583)) (_1!10463 lt!629582)) (_2!10463 lt!629582)))))

(assert (=> b!1669863 (= lt!629582 (lexList!895 thiss!17113 rules!1846 (_2!10462 (v!24792 lt!629583))))))

(assert (= (and d!505043 c!271754) b!1669863))

(assert (= (and d!505043 (not c!271754)) b!1669861))

(assert (= (and d!505043 c!271753) b!1669860))

(assert (= (and d!505043 (not c!271753)) b!1669859))

(assert (= (and b!1669860 res!748836) b!1669862))

(declare-fun m!2035355 () Bool)

(assert (=> d!505043 m!2035355))

(assert (=> d!505043 m!2033355))

(declare-fun m!2035359 () Bool)

(assert (=> d!505043 m!2035359))

(declare-fun m!2035363 () Bool)

(assert (=> b!1669860 m!2035363))

(assert (=> b!1669860 m!2033355))

(assert (=> b!1669860 m!2035091))

(declare-fun m!2035369 () Bool)

(assert (=> b!1669862 m!2035369))

(declare-fun m!2035371 () Bool)

(assert (=> b!1669863 m!2035371))

(assert (=> b!1669135 d!505043))

(assert (=> b!1669135 d!504703))

(declare-fun lt!629587 () Bool)

(declare-fun d!505045 () Bool)

(assert (=> d!505045 (= lt!629587 (isEmpty!11453 (list!7363 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))))))

(declare-fun isEmpty!11462 (Conc!6130) Bool)

(assert (=> d!505045 (= lt!629587 (isEmpty!11462 (c!271555 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))))))

(assert (=> d!505045 (= (isEmpty!11454 (_2!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)))))) lt!629587)))

(declare-fun bs!398016 () Bool)

(assert (= bs!398016 d!505045))

(declare-fun m!2035451 () Bool)

(assert (=> bs!398016 m!2035451))

(assert (=> bs!398016 m!2035451))

(declare-fun m!2035453 () Bool)

(assert (=> bs!398016 m!2035453))

(declare-fun m!2035457 () Bool)

(assert (=> bs!398016 m!2035457))

(assert (=> b!1669047 d!505045))

(declare-fun b!1669868 () Bool)

(declare-fun e!1070077 () Bool)

(declare-fun lt!629588 () tuple2!18114)

(assert (=> b!1669868 (= e!1070077 (not (isEmpty!11455 (_1!10459 lt!629588))))))

(declare-fun b!1669869 () Bool)

(declare-fun e!1070076 () Bool)

(assert (=> b!1669869 (= e!1070076 (= (_2!10459 lt!629588) (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)))))))

(declare-fun b!1669871 () Bool)

(assert (=> b!1669871 (= e!1070076 e!1070077)))

(declare-fun res!748838 () Bool)

(assert (=> b!1669871 (= res!748838 (< (size!14637 (_2!10459 lt!629588)) (size!14637 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))))

(assert (=> b!1669871 (=> (not res!748838) (not e!1070077))))

(declare-fun b!1669872 () Bool)

(declare-fun e!1070075 () Bool)

(assert (=> b!1669872 (= e!1070075 (= (list!7363 (_2!10459 lt!629588)) (_2!10463 (lexList!895 thiss!17113 rules!1846 (list!7363 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))))))

(declare-fun d!505049 () Bool)

(assert (=> d!505049 e!1070075))

(declare-fun res!748837 () Bool)

(assert (=> d!505049 (=> (not res!748837) (not e!1070075))))

(assert (=> d!505049 (= res!748837 e!1070076)))

(declare-fun c!271757 () Bool)

(assert (=> d!505049 (= c!271757 (> (size!14638 (_1!10459 lt!629588)) 0))))

(assert (=> d!505049 (= lt!629588 (lexTailRecV2!618 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))) (BalanceConc!12205 Empty!6130) (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))) (BalanceConc!12207 Empty!6131)))))

(assert (=> d!505049 (= (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)))) lt!629588)))

(declare-fun b!1669870 () Bool)

(declare-fun res!748839 () Bool)

(assert (=> b!1669870 (=> (not res!748839) (not e!1070075))))

(assert (=> b!1669870 (= res!748839 (= (list!7364 (_1!10459 lt!629588)) (_1!10463 (lexList!895 thiss!17113 rules!1846 (list!7363 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))))))

(assert (= (and d!505049 c!271757) b!1669871))

(assert (= (and d!505049 (not c!271757)) b!1669869))

(assert (= (and b!1669871 res!748838) b!1669868))

(assert (= (and d!505049 res!748837) b!1669870))

(assert (= (and b!1669870 res!748839) b!1669872))

(declare-fun m!2035467 () Bool)

(assert (=> b!1669868 m!2035467))

(declare-fun m!2035469 () Bool)

(assert (=> b!1669871 m!2035469))

(assert (=> b!1669871 m!2033361))

(declare-fun m!2035471 () Bool)

(assert (=> b!1669871 m!2035471))

(declare-fun m!2035473 () Bool)

(assert (=> b!1669870 m!2035473))

(assert (=> b!1669870 m!2033361))

(declare-fun m!2035475 () Bool)

(assert (=> b!1669870 m!2035475))

(assert (=> b!1669870 m!2035475))

(declare-fun m!2035477 () Bool)

(assert (=> b!1669870 m!2035477))

(declare-fun m!2035479 () Bool)

(assert (=> d!505049 m!2035479))

(assert (=> d!505049 m!2033361))

(assert (=> d!505049 m!2033361))

(declare-fun m!2035481 () Bool)

(assert (=> d!505049 m!2035481))

(declare-fun m!2035483 () Bool)

(assert (=> b!1669872 m!2035483))

(assert (=> b!1669872 m!2033361))

(assert (=> b!1669872 m!2035475))

(assert (=> b!1669872 m!2035475))

(assert (=> b!1669872 m!2035477))

(assert (=> b!1669047 d!505049))

(assert (=> b!1669047 d!504693))

(assert (=> b!1669047 d!504697))

(declare-fun d!505055 () Bool)

(assert (=> d!505055 (= (list!7363 (_2!10459 lt!628632)) (list!7368 (c!271555 (_2!10459 lt!628632))))))

(declare-fun bs!398018 () Bool)

(assert (= bs!398018 d!505055))

(declare-fun m!2035485 () Bool)

(assert (=> bs!398018 m!2035485))

(assert (=> b!1669137 d!505055))

(assert (=> b!1669137 d!505043))

(assert (=> b!1669137 d!504703))

(declare-fun d!505057 () Bool)

(declare-fun lt!629595 () Int)

(assert (=> d!505057 (>= lt!629595 0)))

(declare-fun e!1070080 () Int)

(assert (=> d!505057 (= lt!629595 e!1070080)))

(declare-fun c!271760 () Bool)

(assert (=> d!505057 (= c!271760 ((_ is Nil!18397) lt!628639))))

(assert (=> d!505057 (= (size!14636 lt!628639) lt!629595)))

(declare-fun b!1669877 () Bool)

(assert (=> b!1669877 (= e!1070080 0)))

(declare-fun b!1669878 () Bool)

(assert (=> b!1669878 (= e!1070080 (+ 1 (size!14636 (t!152486 lt!628639))))))

(assert (= (and d!505057 c!271760) b!1669877))

(assert (= (and d!505057 (not c!271760)) b!1669878))

(declare-fun m!2035497 () Bool)

(assert (=> b!1669878 m!2035497))

(assert (=> b!1669153 d!505057))

(declare-fun d!505065 () Bool)

(declare-fun lt!629596 () Int)

(assert (=> d!505065 (>= lt!629596 0)))

(declare-fun e!1070081 () Int)

(assert (=> d!505065 (= lt!629596 e!1070081)))

(declare-fun c!271761 () Bool)

(assert (=> d!505065 (= c!271761 ((_ is Nil!18397) lt!628411))))

(assert (=> d!505065 (= (size!14636 lt!628411) lt!629596)))

(declare-fun b!1669879 () Bool)

(assert (=> b!1669879 (= e!1070081 0)))

(declare-fun b!1669880 () Bool)

(assert (=> b!1669880 (= e!1070081 (+ 1 (size!14636 (t!152486 lt!628411))))))

(assert (= (and d!505065 c!271761) b!1669879))

(assert (= (and d!505065 (not c!271761)) b!1669880))

(assert (=> b!1669880 m!2035103))

(assert (=> b!1669153 d!505065))

(declare-fun d!505067 () Bool)

(declare-fun lt!629597 () Int)

(assert (=> d!505067 (>= lt!629597 0)))

(declare-fun e!1070082 () Int)

(assert (=> d!505067 (= lt!629597 e!1070082)))

(declare-fun c!271762 () Bool)

(assert (=> d!505067 (= c!271762 ((_ is Nil!18397) lt!628416))))

(assert (=> d!505067 (= (size!14636 lt!628416) lt!629597)))

(declare-fun b!1669881 () Bool)

(assert (=> b!1669881 (= e!1070082 0)))

(declare-fun b!1669882 () Bool)

(assert (=> b!1669882 (= e!1070082 (+ 1 (size!14636 (t!152486 lt!628416))))))

(assert (= (and d!505067 c!271762) b!1669881))

(assert (= (and d!505067 (not c!271762)) b!1669882))

(declare-fun m!2035499 () Bool)

(assert (=> b!1669882 m!2035499))

(assert (=> b!1669153 d!505067))

(declare-fun d!505069 () Bool)

(declare-fun lt!629600 () Int)

(assert (=> d!505069 (= lt!629600 (size!14642 (list!7364 (_1!10459 lt!628632))))))

(declare-fun size!14643 (Conc!6131) Int)

(assert (=> d!505069 (= lt!629600 (size!14643 (c!271557 (_1!10459 lt!628632))))))

(assert (=> d!505069 (= (size!14638 (_1!10459 lt!628632)) lt!629600)))

(declare-fun bs!398022 () Bool)

(assert (= bs!398022 d!505069))

(assert (=> bs!398022 m!2033729))

(assert (=> bs!398022 m!2033729))

(declare-fun m!2035501 () Bool)

(assert (=> bs!398022 m!2035501))

(declare-fun m!2035503 () Bool)

(assert (=> bs!398022 m!2035503))

(assert (=> d!504689 d!505069))

(declare-fun lt!629719 () BalanceConc!12204)

(declare-datatypes ((tuple2!18126 0))(
  ( (tuple2!18127 (_1!10465 Token!6048) (_2!10465 BalanceConc!12204)) )
))
(declare-datatypes ((Option!3534 0))(
  ( (None!3533) (Some!3533 (v!24800 tuple2!18126)) )
))
(declare-fun lt!629715 () Option!3534)

(declare-fun b!1670001 () Bool)

(declare-fun e!1070152 () tuple2!18114)

(declare-fun append!570 (BalanceConc!12206 Token!6048) BalanceConc!12206)

(assert (=> b!1670001 (= e!1070152 (lexTailRecV2!618 thiss!17113 rules!1846 lt!628415 lt!629719 (_2!10465 (v!24800 lt!629715)) (append!570 (BalanceConc!12207 Empty!6131) (_1!10465 (v!24800 lt!629715)))))))

(declare-fun lt!629700 () tuple2!18114)

(declare-fun lexRec!383 (LexerInterface!2870 List!18470 BalanceConc!12204) tuple2!18114)

(assert (=> b!1670001 (= lt!629700 (lexRec!383 thiss!17113 rules!1846 (_2!10465 (v!24800 lt!629715))))))

(declare-fun lt!629709 () List!18467)

(assert (=> b!1670001 (= lt!629709 (list!7363 (BalanceConc!12205 Empty!6130)))))

(declare-fun lt!629731 () List!18467)

(assert (=> b!1670001 (= lt!629731 (list!7363 (charsOf!1890 (_1!10465 (v!24800 lt!629715)))))))

(declare-fun lt!629718 () List!18467)

(assert (=> b!1670001 (= lt!629718 (list!7363 (_2!10465 (v!24800 lt!629715))))))

(declare-fun lt!629698 () Unit!31177)

(declare-fun lemmaConcatAssociativity!1042 (List!18467 List!18467 List!18467) Unit!31177)

(assert (=> b!1670001 (= lt!629698 (lemmaConcatAssociativity!1042 lt!629709 lt!629731 lt!629718))))

(assert (=> b!1670001 (= (++!5012 (++!5012 lt!629709 lt!629731) lt!629718) (++!5012 lt!629709 (++!5012 lt!629731 lt!629718)))))

(declare-fun lt!629705 () Unit!31177)

(assert (=> b!1670001 (= lt!629705 lt!629698)))

(declare-fun lt!629721 () Option!3534)

(declare-fun maxPrefixZipperSequence!745 (LexerInterface!2870 List!18470 BalanceConc!12204) Option!3534)

(assert (=> b!1670001 (= lt!629721 (maxPrefixZipperSequence!745 thiss!17113 rules!1846 lt!628415))))

(declare-fun c!271785 () Bool)

(assert (=> b!1670001 (= c!271785 ((_ is Some!3533) lt!629721))))

(declare-fun e!1070151 () tuple2!18114)

(assert (=> b!1670001 (= (lexRec!383 thiss!17113 rules!1846 lt!628415) e!1070151)))

(declare-fun lt!629711 () Unit!31177)

(declare-fun Unit!31276 () Unit!31177)

(assert (=> b!1670001 (= lt!629711 Unit!31276)))

(declare-fun lt!629723 () List!18469)

(assert (=> b!1670001 (= lt!629723 (list!7364 (BalanceConc!12207 Empty!6131)))))

(declare-fun lt!629706 () List!18469)

(assert (=> b!1670001 (= lt!629706 (Cons!18399 (_1!10465 (v!24800 lt!629715)) Nil!18399))))

(declare-fun lt!629716 () List!18469)

(assert (=> b!1670001 (= lt!629716 (list!7364 (_1!10459 lt!629700)))))

(declare-fun lt!629710 () Unit!31177)

(declare-fun lemmaConcatAssociativity!1043 (List!18469 List!18469 List!18469) Unit!31177)

(assert (=> b!1670001 (= lt!629710 (lemmaConcatAssociativity!1043 lt!629723 lt!629706 lt!629716))))

(assert (=> b!1670001 (= (++!5016 (++!5016 lt!629723 lt!629706) lt!629716) (++!5016 lt!629723 (++!5016 lt!629706 lt!629716)))))

(declare-fun lt!629712 () Unit!31177)

(assert (=> b!1670001 (= lt!629712 lt!629710)))

(declare-fun lt!629701 () List!18467)

(assert (=> b!1670001 (= lt!629701 (++!5012 (list!7363 (BalanceConc!12205 Empty!6130)) (list!7363 (charsOf!1890 (_1!10465 (v!24800 lt!629715))))))))

(declare-fun lt!629729 () List!18467)

(assert (=> b!1670001 (= lt!629729 (list!7363 (_2!10465 (v!24800 lt!629715))))))

(declare-fun lt!629722 () List!18469)

(assert (=> b!1670001 (= lt!629722 (list!7364 (append!570 (BalanceConc!12207 Empty!6131) (_1!10465 (v!24800 lt!629715)))))))

(declare-fun lt!629730 () Unit!31177)

(declare-fun lemmaLexThenLexPrefix!271 (LexerInterface!2870 List!18470 List!18467 List!18467 List!18469 List!18469 List!18467) Unit!31177)

(assert (=> b!1670001 (= lt!629730 (lemmaLexThenLexPrefix!271 thiss!17113 rules!1846 lt!629701 lt!629729 lt!629722 (list!7364 (_1!10459 lt!629700)) (list!7363 (_2!10459 lt!629700))))))

(assert (=> b!1670001 (= (lexList!895 thiss!17113 rules!1846 lt!629701) (tuple2!18123 lt!629722 Nil!18397))))

(declare-fun lt!629702 () Unit!31177)

(assert (=> b!1670001 (= lt!629702 lt!629730)))

(declare-fun lt!629703 () BalanceConc!12204)

(assert (=> b!1670001 (= lt!629703 (++!5014 (BalanceConc!12205 Empty!6130) (charsOf!1890 (_1!10465 (v!24800 lt!629715)))))))

(declare-fun lt!629708 () Option!3534)

(assert (=> b!1670001 (= lt!629708 (maxPrefixZipperSequence!745 thiss!17113 rules!1846 lt!629703))))

(declare-fun c!271784 () Bool)

(assert (=> b!1670001 (= c!271784 ((_ is Some!3533) lt!629708))))

(declare-fun e!1070149 () tuple2!18114)

(assert (=> b!1670001 (= (lexRec!383 thiss!17113 rules!1846 (++!5014 (BalanceConc!12205 Empty!6130) (charsOf!1890 (_1!10465 (v!24800 lt!629715))))) e!1070149)))

(declare-fun lt!629728 () Unit!31177)

(declare-fun Unit!31277 () Unit!31177)

(assert (=> b!1670001 (= lt!629728 Unit!31277)))

(assert (=> b!1670001 (= lt!629719 (++!5014 (BalanceConc!12205 Empty!6130) (charsOf!1890 (_1!10465 (v!24800 lt!629715)))))))

(declare-fun lt!629727 () List!18467)

(assert (=> b!1670001 (= lt!629727 (list!7363 lt!629719))))

(declare-fun lt!629717 () List!18467)

(assert (=> b!1670001 (= lt!629717 (list!7363 (_2!10465 (v!24800 lt!629715))))))

(declare-fun lt!629725 () Unit!31177)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!330 (List!18467 List!18467) Unit!31177)

(assert (=> b!1670001 (= lt!629725 (lemmaConcatTwoListThenFSndIsSuffix!330 lt!629727 lt!629717))))

(declare-fun isSuffix!429 (List!18467 List!18467) Bool)

(assert (=> b!1670001 (isSuffix!429 lt!629717 (++!5012 lt!629727 lt!629717))))

(declare-fun lt!629724 () Unit!31177)

(assert (=> b!1670001 (= lt!629724 lt!629725)))

(declare-fun b!1670002 () Bool)

(assert (=> b!1670002 (= e!1070151 (tuple2!18115 (BalanceConc!12207 Empty!6131) lt!628415))))

(declare-fun b!1670003 () Bool)

(assert (=> b!1670003 (= e!1070149 (tuple2!18115 (BalanceConc!12207 Empty!6131) lt!629703))))

(declare-fun b!1670004 () Bool)

(declare-fun lt!629713 () tuple2!18114)

(assert (=> b!1670004 (= lt!629713 (lexRec!383 thiss!17113 rules!1846 (_2!10465 (v!24800 lt!629721))))))

(assert (=> b!1670004 (= e!1070151 (tuple2!18115 (prepend!825 (_1!10459 lt!629713) (_1!10465 (v!24800 lt!629721))) (_2!10459 lt!629713)))))

(declare-fun lt!629704 () tuple2!18114)

(declare-fun b!1670005 () Bool)

(declare-fun e!1070150 () Bool)

(assert (=> b!1670005 (= e!1070150 (= (list!7363 (_2!10459 lt!629704)) (list!7363 (_2!10459 (lexRec!383 thiss!17113 rules!1846 lt!628415)))))))

(declare-fun d!505071 () Bool)

(assert (=> d!505071 e!1070150))

(declare-fun res!748854 () Bool)

(assert (=> d!505071 (=> (not res!748854) (not e!1070150))))

(assert (=> d!505071 (= res!748854 (= (list!7364 (_1!10459 lt!629704)) (list!7364 (_1!10459 (lexRec!383 thiss!17113 rules!1846 lt!628415)))))))

(assert (=> d!505071 (= lt!629704 e!1070152)))

(declare-fun c!271783 () Bool)

(assert (=> d!505071 (= c!271783 ((_ is Some!3533) lt!629715))))

(declare-fun maxPrefixZipperSequenceV2!278 (LexerInterface!2870 List!18470 BalanceConc!12204 BalanceConc!12204) Option!3534)

(assert (=> d!505071 (= lt!629715 (maxPrefixZipperSequenceV2!278 thiss!17113 rules!1846 lt!628415 lt!628415))))

(declare-fun lt!629720 () Unit!31177)

(declare-fun lt!629726 () Unit!31177)

(assert (=> d!505071 (= lt!629720 lt!629726)))

(declare-fun lt!629699 () List!18467)

(declare-fun lt!629707 () List!18467)

(assert (=> d!505071 (isSuffix!429 lt!629699 (++!5012 lt!629707 lt!629699))))

(assert (=> d!505071 (= lt!629726 (lemmaConcatTwoListThenFSndIsSuffix!330 lt!629707 lt!629699))))

(assert (=> d!505071 (= lt!629699 (list!7363 lt!628415))))

(assert (=> d!505071 (= lt!629707 (list!7363 (BalanceConc!12205 Empty!6130)))))

(assert (=> d!505071 (= (lexTailRecV2!618 thiss!17113 rules!1846 lt!628415 (BalanceConc!12205 Empty!6130) lt!628415 (BalanceConc!12207 Empty!6131)) lt!629704)))

(declare-fun b!1670006 () Bool)

(declare-fun lt!629714 () tuple2!18114)

(assert (=> b!1670006 (= lt!629714 (lexRec!383 thiss!17113 rules!1846 (_2!10465 (v!24800 lt!629708))))))

(assert (=> b!1670006 (= e!1070149 (tuple2!18115 (prepend!825 (_1!10459 lt!629714) (_1!10465 (v!24800 lt!629708))) (_2!10459 lt!629714)))))

(declare-fun b!1670007 () Bool)

(assert (=> b!1670007 (= e!1070152 (tuple2!18115 (BalanceConc!12207 Empty!6131) lt!628415))))

(assert (= (and d!505071 c!271783) b!1670001))

(assert (= (and d!505071 (not c!271783)) b!1670007))

(assert (= (and b!1670001 c!271785) b!1670004))

(assert (= (and b!1670001 (not c!271785)) b!1670002))

(assert (= (and b!1670001 c!271784) b!1670006))

(assert (= (and b!1670001 (not c!271784)) b!1670003))

(assert (= (and d!505071 res!748854) b!1670005))

(declare-fun m!2035645 () Bool)

(assert (=> b!1670005 m!2035645))

(declare-fun m!2035647 () Bool)

(assert (=> b!1670005 m!2035647))

(declare-fun m!2035649 () Bool)

(assert (=> b!1670005 m!2035649))

(declare-fun m!2035651 () Bool)

(assert (=> b!1670001 m!2035651))

(declare-fun m!2035653 () Bool)

(assert (=> b!1670001 m!2035653))

(declare-fun m!2035655 () Bool)

(assert (=> b!1670001 m!2035655))

(declare-fun m!2035657 () Bool)

(assert (=> b!1670001 m!2035657))

(declare-fun m!2035659 () Bool)

(assert (=> b!1670001 m!2035659))

(declare-fun m!2035661 () Bool)

(assert (=> b!1670001 m!2035661))

(declare-fun m!2035663 () Bool)

(assert (=> b!1670001 m!2035663))

(declare-fun m!2035665 () Bool)

(assert (=> b!1670001 m!2035665))

(declare-fun m!2035667 () Bool)

(assert (=> b!1670001 m!2035667))

(declare-fun m!2035669 () Bool)

(assert (=> b!1670001 m!2035669))

(declare-fun m!2035671 () Bool)

(assert (=> b!1670001 m!2035671))

(declare-fun m!2035673 () Bool)

(assert (=> b!1670001 m!2035673))

(declare-fun m!2035675 () Bool)

(assert (=> b!1670001 m!2035675))

(declare-fun m!2035677 () Bool)

(assert (=> b!1670001 m!2035677))

(assert (=> b!1670001 m!2035671))

(declare-fun m!2035679 () Bool)

(assert (=> b!1670001 m!2035679))

(declare-fun m!2035681 () Bool)

(assert (=> b!1670001 m!2035681))

(declare-fun m!2035683 () Bool)

(assert (=> b!1670001 m!2035683))

(declare-fun m!2035685 () Bool)

(assert (=> b!1670001 m!2035685))

(declare-fun m!2035687 () Bool)

(assert (=> b!1670001 m!2035687))

(assert (=> b!1670001 m!2035663))

(declare-fun m!2035689 () Bool)

(assert (=> b!1670001 m!2035689))

(assert (=> b!1670001 m!2035655))

(declare-fun m!2035691 () Bool)

(assert (=> b!1670001 m!2035691))

(assert (=> b!1670001 m!2035679))

(declare-fun m!2035693 () Bool)

(assert (=> b!1670001 m!2035693))

(assert (=> b!1670001 m!2035685))

(assert (=> b!1670001 m!2035647))

(declare-fun m!2035695 () Bool)

(assert (=> b!1670001 m!2035695))

(assert (=> b!1670001 m!2035661))

(declare-fun m!2035697 () Bool)

(assert (=> b!1670001 m!2035697))

(assert (=> b!1670001 m!2035663))

(assert (=> b!1670001 m!2033901))

(assert (=> b!1670001 m!2035675))

(assert (=> b!1670001 m!2035675))

(declare-fun m!2035699 () Bool)

(assert (=> b!1670001 m!2035699))

(assert (=> b!1670001 m!2035677))

(declare-fun m!2035701 () Bool)

(assert (=> b!1670001 m!2035701))

(declare-fun m!2035703 () Bool)

(assert (=> b!1670001 m!2035703))

(declare-fun m!2035705 () Bool)

(assert (=> b!1670001 m!2035705))

(assert (=> b!1670001 m!2035659))

(declare-fun m!2035707 () Bool)

(assert (=> b!1670001 m!2035707))

(assert (=> b!1670001 m!2035705))

(assert (=> b!1670001 m!2033901))

(assert (=> b!1670001 m!2035699))

(declare-fun m!2035709 () Bool)

(assert (=> b!1670001 m!2035709))

(declare-fun m!2035711 () Bool)

(assert (=> b!1670001 m!2035711))

(declare-fun m!2035713 () Bool)

(assert (=> b!1670004 m!2035713))

(declare-fun m!2035715 () Bool)

(assert (=> b!1670004 m!2035715))

(declare-fun m!2035717 () Bool)

(assert (=> b!1670006 m!2035717))

(declare-fun m!2035719 () Bool)

(assert (=> b!1670006 m!2035719))

(assert (=> d!505071 m!2033901))

(declare-fun m!2035721 () Bool)

(assert (=> d!505071 m!2035721))

(assert (=> d!505071 m!2035647))

(declare-fun m!2035723 () Bool)

(assert (=> d!505071 m!2035723))

(declare-fun m!2035725 () Bool)

(assert (=> d!505071 m!2035725))

(declare-fun m!2035727 () Bool)

(assert (=> d!505071 m!2035727))

(declare-fun m!2035729 () Bool)

(assert (=> d!505071 m!2035729))

(assert (=> d!505071 m!2033355))

(declare-fun m!2035731 () Bool)

(assert (=> d!505071 m!2035731))

(assert (=> d!505071 m!2035725))

(assert (=> d!504689 d!505071))

(declare-fun d!505129 () Bool)

(declare-fun lt!629734 () Bool)

(assert (=> d!505129 (= lt!629734 (isEmpty!11461 (list!7364 (_1!10459 lt!628632))))))

(declare-fun isEmpty!11463 (Conc!6131) Bool)

(assert (=> d!505129 (= lt!629734 (isEmpty!11463 (c!271557 (_1!10459 lt!628632))))))

(assert (=> d!505129 (= (isEmpty!11455 (_1!10459 lt!628632)) lt!629734)))

(declare-fun bs!398039 () Bool)

(assert (= bs!398039 d!505129))

(assert (=> bs!398039 m!2033729))

(assert (=> bs!398039 m!2033729))

(declare-fun m!2035733 () Bool)

(assert (=> bs!398039 m!2035733))

(declare-fun m!2035735 () Bool)

(assert (=> bs!398039 m!2035735))

(assert (=> b!1669133 d!505129))

(declare-fun d!505131 () Bool)

(assert (=> d!505131 (= (list!7363 lt!628636) (list!7368 (c!271555 lt!628636)))))

(declare-fun bs!398040 () Bool)

(assert (= bs!398040 d!505131))

(declare-fun m!2035737 () Bool)

(assert (=> bs!398040 m!2035737))

(assert (=> d!504695 d!505131))

(assert (=> d!504677 d!504709))

(assert (=> d!504677 d!505049))

(assert (=> d!504677 d!504693))

(assert (=> d!504677 d!504697))

(declare-fun d!505133 () Bool)

(assert (=> d!505133 (= (list!7364 (_1!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457)))))) (list!7367 (c!271557 (_1!10459 (lex!1354 thiss!17113 rules!1846 (print!1401 thiss!17113 (seqFromList!2218 (t!152488 tokens!457))))))))))

(declare-fun bs!398041 () Bool)

(assert (= bs!398041 d!505133))

(declare-fun m!2035739 () Bool)

(assert (=> bs!398041 m!2035739))

(assert (=> d!504677 d!505133))

(declare-fun d!505135 () Bool)

(declare-fun lt!629735 () Int)

(assert (=> d!505135 (>= lt!629735 0)))

(declare-fun e!1070156 () Int)

(assert (=> d!505135 (= lt!629735 e!1070156)))

(declare-fun c!271786 () Bool)

(assert (=> d!505135 (= c!271786 ((_ is Nil!18397) (originalCharacters!4055 (h!23800 tokens!457))))))

(assert (=> d!505135 (= (size!14636 (originalCharacters!4055 (h!23800 tokens!457))) lt!629735)))

(declare-fun b!1670020 () Bool)

(assert (=> b!1670020 (= e!1070156 0)))

(declare-fun b!1670021 () Bool)

(assert (=> b!1670021 (= e!1070156 (+ 1 (size!14636 (t!152486 (originalCharacters!4055 (h!23800 tokens!457))))))))

(assert (= (and d!505135 c!271786) b!1670020))

(assert (= (and d!505135 (not c!271786)) b!1670021))

(declare-fun m!2035741 () Bool)

(assert (=> b!1670021 m!2035741))

(assert (=> b!1669175 d!505135))

(declare-fun d!505137 () Bool)

(assert (=> d!505137 true))

(declare-fun lt!629738 () Bool)

(assert (=> d!505137 (= lt!629738 (rulesValidInductive!1039 thiss!17113 rules!1846))))

(declare-fun lambda!68030 () Int)

(declare-fun forall!4183 (List!18470 Int) Bool)

(assert (=> d!505137 (= lt!629738 (forall!4183 rules!1846 lambda!68030))))

(assert (=> d!505137 (= (rulesValid!1194 thiss!17113 rules!1846) lt!629738)))

(declare-fun bs!398042 () Bool)

(assert (= bs!398042 d!505137))

(assert (=> bs!398042 m!2034059))

(declare-fun m!2035743 () Bool)

(assert (=> bs!398042 m!2035743))

(assert (=> d!504643 d!505137))

(declare-fun b!1670027 () Bool)

(declare-fun e!1070158 () List!18467)

(assert (=> b!1670027 (= e!1070158 (++!5012 (list!7368 (left!14716 (c!271555 (charsOf!1890 (h!23800 tokens!457))))) (list!7368 (right!15046 (c!271555 (charsOf!1890 (h!23800 tokens!457)))))))))

(declare-fun d!505139 () Bool)

(declare-fun c!271787 () Bool)

(assert (=> d!505139 (= c!271787 ((_ is Empty!6130) (c!271555 (charsOf!1890 (h!23800 tokens!457)))))))

(declare-fun e!1070157 () List!18467)

(assert (=> d!505139 (= (list!7368 (c!271555 (charsOf!1890 (h!23800 tokens!457)))) e!1070157)))

(declare-fun b!1670025 () Bool)

(assert (=> b!1670025 (= e!1070157 e!1070158)))

(declare-fun c!271788 () Bool)

(assert (=> b!1670025 (= c!271788 ((_ is Leaf!8971) (c!271555 (charsOf!1890 (h!23800 tokens!457)))))))

(declare-fun b!1670026 () Bool)

(assert (=> b!1670026 (= e!1070158 (list!7371 (xs!8974 (c!271555 (charsOf!1890 (h!23800 tokens!457))))))))

(declare-fun b!1670024 () Bool)

(assert (=> b!1670024 (= e!1070157 Nil!18397)))

(assert (= (and d!505139 c!271787) b!1670024))

(assert (= (and d!505139 (not c!271787)) b!1670025))

(assert (= (and b!1670025 c!271788) b!1670026))

(assert (= (and b!1670025 (not c!271788)) b!1670027))

(declare-fun m!2035745 () Bool)

(assert (=> b!1670027 m!2035745))

(declare-fun m!2035747 () Bool)

(assert (=> b!1670027 m!2035747))

(assert (=> b!1670027 m!2035745))

(assert (=> b!1670027 m!2035747))

(declare-fun m!2035749 () Bool)

(assert (=> b!1670027 m!2035749))

(declare-fun m!2035751 () Bool)

(assert (=> b!1670026 m!2035751))

(assert (=> d!504701 d!505139))

(assert (=> b!1669002 d!504965))

(declare-fun d!505141 () Bool)

(assert (=> d!505141 (= (head!3724 lt!628411) (h!23798 lt!628411))))

(assert (=> b!1669057 d!505141))

(declare-fun d!505143 () Bool)

(assert (=> d!505143 (= (head!3724 lt!628412) (h!23798 lt!628412))))

(assert (=> b!1669057 d!505143))

(declare-fun d!505145 () Bool)

(declare-fun lt!629739 () Int)

(assert (=> d!505145 (>= lt!629739 0)))

(declare-fun e!1070159 () Int)

(assert (=> d!505145 (= lt!629739 e!1070159)))

(declare-fun c!271789 () Bool)

(assert (=> d!505145 (= c!271789 ((_ is Nil!18397) lt!628412))))

(assert (=> d!505145 (= (size!14636 lt!628412) lt!629739)))

(declare-fun b!1670028 () Bool)

(assert (=> b!1670028 (= e!1070159 0)))

(declare-fun b!1670029 () Bool)

(assert (=> b!1670029 (= e!1070159 (+ 1 (size!14636 (t!152486 lt!628412))))))

(assert (= (and d!505145 c!271789) b!1670028))

(assert (= (and d!505145 (not c!271789)) b!1670029))

(declare-fun m!2035753 () Bool)

(assert (=> b!1670029 m!2035753))

(assert (=> b!1669059 d!505145))

(assert (=> b!1669059 d!505065))

(declare-fun d!505147 () Bool)

(declare-fun res!748859 () Bool)

(declare-fun e!1070164 () Bool)

(assert (=> d!505147 (=> res!748859 e!1070164)))

(assert (=> d!505147 (= res!748859 ((_ is Nil!18399) tokens!457))))

(assert (=> d!505147 (= (forall!4182 tokens!457 lambda!68003) e!1070164)))

(declare-fun b!1670034 () Bool)

(declare-fun e!1070165 () Bool)

(assert (=> b!1670034 (= e!1070164 e!1070165)))

(declare-fun res!748860 () Bool)

(assert (=> b!1670034 (=> (not res!748860) (not e!1070165))))

(declare-fun dynLambda!8303 (Int Token!6048) Bool)

(assert (=> b!1670034 (= res!748860 (dynLambda!8303 lambda!68003 (h!23800 tokens!457)))))

(declare-fun b!1670035 () Bool)

(assert (=> b!1670035 (= e!1070165 (forall!4182 (t!152488 tokens!457) lambda!68003))))

(assert (= (and d!505147 (not res!748859)) b!1670034))

(assert (= (and b!1670034 res!748860) b!1670035))

(declare-fun b_lambda!52451 () Bool)

(assert (=> (not b_lambda!52451) (not b!1670034)))

(declare-fun m!2035755 () Bool)

(assert (=> b!1670034 m!2035755))

(declare-fun m!2035757 () Bool)

(assert (=> b!1670035 m!2035757))

(assert (=> d!504645 d!505147))

(assert (=> d!504645 d!504709))

(declare-fun d!505149 () Bool)

(declare-fun res!748865 () Bool)

(declare-fun e!1070170 () Bool)

(assert (=> d!505149 (=> res!748865 e!1070170)))

(assert (=> d!505149 (= res!748865 ((_ is Nil!18400) rules!1846))))

(assert (=> d!505149 (= (noDuplicateTag!1194 thiss!17113 rules!1846 Nil!18402) e!1070170)))

(declare-fun b!1670040 () Bool)

(declare-fun e!1070171 () Bool)

(assert (=> b!1670040 (= e!1070170 e!1070171)))

(declare-fun res!748866 () Bool)

(assert (=> b!1670040 (=> (not res!748866) (not e!1070171))))

(declare-fun contains!3218 (List!18472 String!20987) Bool)

(assert (=> b!1670040 (= res!748866 (not (contains!3218 Nil!18402 (tag!3525 (h!23801 rules!1846)))))))

(declare-fun b!1670041 () Bool)

(assert (=> b!1670041 (= e!1070171 (noDuplicateTag!1194 thiss!17113 (t!152489 rules!1846) (Cons!18402 (tag!3525 (h!23801 rules!1846)) Nil!18402)))))

(assert (= (and d!505149 (not res!748865)) b!1670040))

(assert (= (and b!1670040 res!748866) b!1670041))

(declare-fun m!2035759 () Bool)

(assert (=> b!1670040 m!2035759))

(declare-fun m!2035761 () Bool)

(assert (=> b!1670041 m!2035761))

(assert (=> b!1668967 d!505149))

(declare-fun d!505151 () Bool)

(declare-fun res!748868 () Bool)

(declare-fun e!1070173 () Bool)

(assert (=> d!505151 (=> res!748868 e!1070173)))

(assert (=> d!505151 (= res!748868 (or (not ((_ is Cons!18399) (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))) (not ((_ is Cons!18399) (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))))))))

(assert (=> d!505151 (= (tokensListTwoByTwoPredicateSeparableList!563 thiss!17113 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))) rules!1846) e!1070173)))

(declare-fun b!1670042 () Bool)

(declare-fun e!1070172 () Bool)

(assert (=> b!1670042 (= e!1070173 e!1070172)))

(declare-fun res!748867 () Bool)

(assert (=> b!1670042 (=> (not res!748867) (not e!1070172))))

(assert (=> b!1670042 (= res!748867 (separableTokensPredicate!810 thiss!17113 (h!23800 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457)))) (h!23800 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))) rules!1846))))

(declare-fun lt!629740 () Unit!31177)

(declare-fun Unit!31278 () Unit!31177)

(assert (=> b!1670042 (= lt!629740 Unit!31278)))

(assert (=> b!1670042 (> (size!14637 (charsOf!1890 (h!23800 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))))) 0)))

(declare-fun lt!629741 () Unit!31177)

(declare-fun Unit!31279 () Unit!31177)

(assert (=> b!1670042 (= lt!629741 Unit!31279)))

(assert (=> b!1670042 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))))))

(declare-fun lt!629743 () Unit!31177)

(declare-fun Unit!31280 () Unit!31177)

(assert (=> b!1670042 (= lt!629743 Unit!31280)))

(assert (=> b!1670042 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457)))))))

(declare-fun lt!629742 () Unit!31177)

(declare-fun lt!629744 () Unit!31177)

(assert (=> b!1670042 (= lt!629742 lt!629744)))

(assert (=> b!1670042 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))))))

(assert (=> b!1670042 (= lt!629744 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 thiss!17113 rules!1846 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))) (h!23800 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457)))))))))

(declare-fun lt!629745 () Unit!31177)

(declare-fun lt!629746 () Unit!31177)

(assert (=> b!1670042 (= lt!629745 lt!629746)))

(assert (=> b!1670042 (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457)))))))

(assert (=> b!1670042 (= lt!629746 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!630 thiss!17113 rules!1846 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))) (h!23800 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))))))

(declare-fun b!1670043 () Bool)

(assert (=> b!1670043 (= e!1070172 (tokensListTwoByTwoPredicateSeparableList!563 thiss!17113 (Cons!18399 (h!23800 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457))))) (t!152488 (t!152488 (Cons!18399 (h!23800 (t!152488 tokens!457)) (t!152488 (t!152488 tokens!457)))))) rules!1846))))

(assert (= (and d!505151 (not res!748868)) b!1670042))

(assert (= (and b!1670042 res!748867) b!1670043))

(declare-fun m!2035763 () Bool)

(assert (=> b!1670042 m!2035763))

(declare-fun m!2035765 () Bool)

(assert (=> b!1670042 m!2035765))

(declare-fun m!2035767 () Bool)

(assert (=> b!1670042 m!2035767))

(declare-fun m!2035769 () Bool)

(assert (=> b!1670042 m!2035769))

(declare-fun m!2035771 () Bool)

(assert (=> b!1670042 m!2035771))

(declare-fun m!2035773 () Bool)

(assert (=> b!1670042 m!2035773))

(assert (=> b!1670042 m!2035771))

(declare-fun m!2035775 () Bool)

(assert (=> b!1670042 m!2035775))

(declare-fun m!2035777 () Bool)

(assert (=> b!1670043 m!2035777))

(assert (=> b!1669181 d!505151))

(declare-fun b!1670047 () Bool)

(declare-fun e!1070174 () Bool)

(declare-fun tp!482018 () Bool)

(declare-fun tp!482019 () Bool)

(assert (=> b!1670047 (= e!1070174 (and tp!482018 tp!482019))))

(declare-fun b!1670046 () Bool)

(declare-fun tp!482017 () Bool)

(assert (=> b!1670046 (= e!1070174 tp!482017)))

(assert (=> b!1669195 (= tp!481893 e!1070174)))

(declare-fun b!1670045 () Bool)

(declare-fun tp!482021 () Bool)

(declare-fun tp!482020 () Bool)

(assert (=> b!1670045 (= e!1070174 (and tp!482021 tp!482020))))

(declare-fun b!1670044 () Bool)

(assert (=> b!1670044 (= e!1070174 tp_is_empty!7413)))

(assert (= (and b!1669195 ((_ is ElementMatch!4569) (reg!4898 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670044))

(assert (= (and b!1669195 ((_ is Concat!7901) (reg!4898 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670045))

(assert (= (and b!1669195 ((_ is Star!4569) (reg!4898 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670046))

(assert (= (and b!1669195 ((_ is Union!4569) (reg!4898 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670047))

(declare-fun b!1670051 () Bool)

(declare-fun e!1070175 () Bool)

(declare-fun tp!482023 () Bool)

(declare-fun tp!482024 () Bool)

(assert (=> b!1670051 (= e!1070175 (and tp!482023 tp!482024))))

(declare-fun b!1670050 () Bool)

(declare-fun tp!482022 () Bool)

(assert (=> b!1670050 (= e!1070175 tp!482022)))

(assert (=> b!1669225 (= tp!481923 e!1070175)))

(declare-fun b!1670049 () Bool)

(declare-fun tp!482026 () Bool)

(declare-fun tp!482025 () Bool)

(assert (=> b!1670049 (= e!1070175 (and tp!482026 tp!482025))))

(declare-fun b!1670048 () Bool)

(assert (=> b!1670048 (= e!1070175 tp_is_empty!7413)))

(assert (= (and b!1669225 ((_ is ElementMatch!4569) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) b!1670048))

(assert (= (and b!1669225 ((_ is Concat!7901) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) b!1670049))

(assert (= (and b!1669225 ((_ is Star!4569) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) b!1670050))

(assert (= (and b!1669225 ((_ is Union!4569) (regex!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) b!1670051))

(declare-fun tp!482033 () Bool)

(declare-fun e!1070180 () Bool)

(declare-fun tp!482035 () Bool)

(declare-fun b!1670060 () Bool)

(assert (=> b!1670060 (= e!1070180 (and (inv!23750 (left!14716 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))))) tp!482033 (inv!23750 (right!15046 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))))) tp!482035))))

(declare-fun b!1670062 () Bool)

(declare-fun e!1070181 () Bool)

(declare-fun tp!482034 () Bool)

(assert (=> b!1670062 (= e!1070181 tp!482034)))

(declare-fun b!1670061 () Bool)

(declare-fun inv!23756 (IArray!12265) Bool)

(assert (=> b!1670061 (= e!1070180 (and (inv!23756 (xs!8974 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))))) e!1070181))))

(assert (=> b!1669142 (= tp!481882 (and (inv!23750 (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457))))) e!1070180))))

(assert (= (and b!1669142 ((_ is Node!6130) (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))))) b!1670060))

(assert (= b!1670061 b!1670062))

(assert (= (and b!1669142 ((_ is Leaf!8971) (c!271555 (dynLambda!8297 (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (value!102041 (h!23800 tokens!457)))))) b!1670061))

(declare-fun m!2035779 () Bool)

(assert (=> b!1670060 m!2035779))

(declare-fun m!2035781 () Bool)

(assert (=> b!1670060 m!2035781))

(declare-fun m!2035783 () Bool)

(assert (=> b!1670061 m!2035783))

(assert (=> b!1669142 m!2033749))

(declare-fun b!1670066 () Bool)

(declare-fun e!1070182 () Bool)

(declare-fun tp!482037 () Bool)

(declare-fun tp!482038 () Bool)

(assert (=> b!1670066 (= e!1070182 (and tp!482037 tp!482038))))

(declare-fun b!1670065 () Bool)

(declare-fun tp!482036 () Bool)

(assert (=> b!1670065 (= e!1070182 tp!482036)))

(assert (=> b!1669196 (= tp!481894 e!1070182)))

(declare-fun b!1670064 () Bool)

(declare-fun tp!482040 () Bool)

(declare-fun tp!482039 () Bool)

(assert (=> b!1670064 (= e!1070182 (and tp!482040 tp!482039))))

(declare-fun b!1670063 () Bool)

(assert (=> b!1670063 (= e!1070182 tp_is_empty!7413)))

(assert (= (and b!1669196 ((_ is ElementMatch!4569) (regOne!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670063))

(assert (= (and b!1669196 ((_ is Concat!7901) (regOne!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670064))

(assert (= (and b!1669196 ((_ is Star!4569) (regOne!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670065))

(assert (= (and b!1669196 ((_ is Union!4569) (regOne!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670066))

(declare-fun b!1670070 () Bool)

(declare-fun e!1070183 () Bool)

(declare-fun tp!482042 () Bool)

(declare-fun tp!482043 () Bool)

(assert (=> b!1670070 (= e!1070183 (and tp!482042 tp!482043))))

(declare-fun b!1670069 () Bool)

(declare-fun tp!482041 () Bool)

(assert (=> b!1670069 (= e!1070183 tp!482041)))

(assert (=> b!1669196 (= tp!481895 e!1070183)))

(declare-fun b!1670068 () Bool)

(declare-fun tp!482045 () Bool)

(declare-fun tp!482044 () Bool)

(assert (=> b!1670068 (= e!1070183 (and tp!482045 tp!482044))))

(declare-fun b!1670067 () Bool)

(assert (=> b!1670067 (= e!1070183 tp_is_empty!7413)))

(assert (= (and b!1669196 ((_ is ElementMatch!4569) (regTwo!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670067))

(assert (= (and b!1669196 ((_ is Concat!7901) (regTwo!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670068))

(assert (= (and b!1669196 ((_ is Star!4569) (regTwo!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670069))

(assert (= (and b!1669196 ((_ is Union!4569) (regTwo!9651 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670070))

(declare-fun b!1670073 () Bool)

(declare-fun e!1070186 () Bool)

(assert (=> b!1670073 (= e!1070186 true)))

(declare-fun b!1670072 () Bool)

(declare-fun e!1070185 () Bool)

(assert (=> b!1670072 (= e!1070185 e!1070186)))

(declare-fun b!1670071 () Bool)

(declare-fun e!1070184 () Bool)

(assert (=> b!1670071 (= e!1070184 e!1070185)))

(assert (=> b!1669015 e!1070184))

(assert (= b!1670072 b!1670073))

(assert (= b!1670071 b!1670072))

(assert (= (and b!1669015 ((_ is Cons!18400) (t!152489 rules!1846))) b!1670071))

(assert (=> b!1670073 (< (dynLambda!8294 order!11041 (toValue!4704 (transformation!3241 (h!23801 (t!152489 rules!1846))))) (dynLambda!8295 order!11043 lambda!68003))))

(assert (=> b!1670073 (< (dynLambda!8296 order!11045 (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846))))) (dynLambda!8295 order!11043 lambda!68003))))

(declare-fun b!1670077 () Bool)

(declare-fun e!1070187 () Bool)

(declare-fun tp!482047 () Bool)

(declare-fun tp!482048 () Bool)

(assert (=> b!1670077 (= e!1070187 (and tp!482047 tp!482048))))

(declare-fun b!1670076 () Bool)

(declare-fun tp!482046 () Bool)

(assert (=> b!1670076 (= e!1070187 tp!482046)))

(assert (=> b!1669194 (= tp!481897 e!1070187)))

(declare-fun b!1670075 () Bool)

(declare-fun tp!482050 () Bool)

(declare-fun tp!482049 () Bool)

(assert (=> b!1670075 (= e!1070187 (and tp!482050 tp!482049))))

(declare-fun b!1670074 () Bool)

(assert (=> b!1670074 (= e!1070187 tp_is_empty!7413)))

(assert (= (and b!1669194 ((_ is ElementMatch!4569) (regOne!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670074))

(assert (= (and b!1669194 ((_ is Concat!7901) (regOne!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670075))

(assert (= (and b!1669194 ((_ is Star!4569) (regOne!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670076))

(assert (= (and b!1669194 ((_ is Union!4569) (regOne!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670077))

(declare-fun b!1670081 () Bool)

(declare-fun e!1070188 () Bool)

(declare-fun tp!482052 () Bool)

(declare-fun tp!482053 () Bool)

(assert (=> b!1670081 (= e!1070188 (and tp!482052 tp!482053))))

(declare-fun b!1670080 () Bool)

(declare-fun tp!482051 () Bool)

(assert (=> b!1670080 (= e!1070188 tp!482051)))

(assert (=> b!1669194 (= tp!481896 e!1070188)))

(declare-fun b!1670079 () Bool)

(declare-fun tp!482055 () Bool)

(declare-fun tp!482054 () Bool)

(assert (=> b!1670079 (= e!1070188 (and tp!482055 tp!482054))))

(declare-fun b!1670078 () Bool)

(assert (=> b!1670078 (= e!1070188 tp_is_empty!7413)))

(assert (= (and b!1669194 ((_ is ElementMatch!4569) (regTwo!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670078))

(assert (= (and b!1669194 ((_ is Concat!7901) (regTwo!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670079))

(assert (= (and b!1669194 ((_ is Star!4569) (regTwo!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670080))

(assert (= (and b!1669194 ((_ is Union!4569) (regTwo!9650 (regex!3241 (rule!5129 (h!23800 tokens!457)))))) b!1670081))

(declare-fun b!1670082 () Bool)

(declare-fun e!1070189 () Bool)

(declare-fun tp!482056 () Bool)

(assert (=> b!1670082 (= e!1070189 (and tp_is_empty!7413 tp!482056))))

(assert (=> b!1669224 (= tp!481926 e!1070189)))

(assert (= (and b!1669224 ((_ is Cons!18397) (originalCharacters!4055 (h!23800 (t!152488 tokens!457))))) b!1670082))

(declare-fun b!1670086 () Bool)

(declare-fun b_free!45399 () Bool)

(declare-fun b_next!46103 () Bool)

(assert (=> b!1670086 (= b_free!45399 (not b_next!46103))))

(declare-fun tp!482058 () Bool)

(declare-fun b_and!118757 () Bool)

(assert (=> b!1670086 (= tp!482058 b_and!118757)))

(declare-fun b_free!45401 () Bool)

(declare-fun b_next!46105 () Bool)

(assert (=> b!1670086 (= b_free!45401 (not b_next!46105))))

(declare-fun t!152571 () Bool)

(declare-fun tb!95827 () Bool)

(assert (=> (and b!1670086 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) t!152571) tb!95827))

(declare-fun result!115786 () Bool)

(assert (= result!115786 result!115754))

(assert (=> b!1669826 t!152571))

(declare-fun t!152573 () Bool)

(declare-fun tb!95829 () Bool)

(assert (=> (and b!1670086 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))))) t!152573) tb!95829))

(declare-fun result!115788 () Bool)

(assert (= result!115788 result!115746))

(assert (=> d!504801 t!152573))

(assert (=> d!504823 t!152571))

(declare-fun t!152575 () Bool)

(declare-fun tb!95831 () Bool)

(assert (=> (and b!1670086 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) t!152575) tb!95831))

(declare-fun result!115790 () Bool)

(assert (= result!115790 result!115720))

(assert (=> b!1669174 t!152575))

(assert (=> d!504695 t!152575))

(declare-fun tp!482061 () Bool)

(declare-fun b_and!118759 () Bool)

(assert (=> b!1670086 (= tp!482061 (and (=> t!152573 result!115788) (=> t!152571 result!115786) (=> t!152575 result!115790) b_and!118759))))

(declare-fun b!1670084 () Bool)

(declare-fun e!1070193 () Bool)

(declare-fun tp!482060 () Bool)

(declare-fun e!1070190 () Bool)

(assert (=> b!1670084 (= e!1070193 (and (inv!21 (value!102041 (h!23800 (t!152488 (t!152488 tokens!457))))) e!1070190 tp!482060))))

(declare-fun e!1070194 () Bool)

(assert (=> b!1670086 (= e!1070194 (and tp!482058 tp!482061))))

(declare-fun b!1670085 () Bool)

(declare-fun tp!482057 () Bool)

(assert (=> b!1670085 (= e!1070190 (and tp!482057 (inv!23743 (tag!3525 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (inv!23746 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) e!1070194))))

(declare-fun b!1670083 () Bool)

(declare-fun tp!482059 () Bool)

(declare-fun e!1070191 () Bool)

(assert (=> b!1670083 (= e!1070191 (and (inv!23747 (h!23800 (t!152488 (t!152488 tokens!457)))) e!1070193 tp!482059))))

(assert (=> b!1669223 (= tp!481925 e!1070191)))

(assert (= b!1670085 b!1670086))

(assert (= b!1670084 b!1670085))

(assert (= b!1670083 b!1670084))

(assert (= (and b!1669223 ((_ is Cons!18399) (t!152488 (t!152488 tokens!457)))) b!1670083))

(declare-fun m!2035785 () Bool)

(assert (=> b!1670084 m!2035785))

(declare-fun m!2035787 () Bool)

(assert (=> b!1670085 m!2035787))

(declare-fun m!2035789 () Bool)

(assert (=> b!1670085 m!2035789))

(declare-fun m!2035791 () Bool)

(assert (=> b!1670083 m!2035791))

(declare-fun b!1670090 () Bool)

(declare-fun e!1070196 () Bool)

(declare-fun tp!482063 () Bool)

(declare-fun tp!482064 () Bool)

(assert (=> b!1670090 (= e!1070196 (and tp!482063 tp!482064))))

(declare-fun b!1670089 () Bool)

(declare-fun tp!482062 () Bool)

(assert (=> b!1670089 (= e!1070196 tp!482062)))

(assert (=> b!1669230 (= tp!481929 e!1070196)))

(declare-fun b!1670088 () Bool)

(declare-fun tp!482066 () Bool)

(declare-fun tp!482065 () Bool)

(assert (=> b!1670088 (= e!1070196 (and tp!482066 tp!482065))))

(declare-fun b!1670087 () Bool)

(assert (=> b!1670087 (= e!1070196 tp_is_empty!7413)))

(assert (= (and b!1669230 ((_ is ElementMatch!4569) (regOne!9651 (regex!3241 (h!23801 rules!1846))))) b!1670087))

(assert (= (and b!1669230 ((_ is Concat!7901) (regOne!9651 (regex!3241 (h!23801 rules!1846))))) b!1670088))

(assert (= (and b!1669230 ((_ is Star!4569) (regOne!9651 (regex!3241 (h!23801 rules!1846))))) b!1670089))

(assert (= (and b!1669230 ((_ is Union!4569) (regOne!9651 (regex!3241 (h!23801 rules!1846))))) b!1670090))

(declare-fun b!1670094 () Bool)

(declare-fun e!1070197 () Bool)

(declare-fun tp!482068 () Bool)

(declare-fun tp!482069 () Bool)

(assert (=> b!1670094 (= e!1070197 (and tp!482068 tp!482069))))

(declare-fun b!1670093 () Bool)

(declare-fun tp!482067 () Bool)

(assert (=> b!1670093 (= e!1070197 tp!482067)))

(assert (=> b!1669230 (= tp!481930 e!1070197)))

(declare-fun b!1670092 () Bool)

(declare-fun tp!482071 () Bool)

(declare-fun tp!482070 () Bool)

(assert (=> b!1670092 (= e!1070197 (and tp!482071 tp!482070))))

(declare-fun b!1670091 () Bool)

(assert (=> b!1670091 (= e!1070197 tp_is_empty!7413)))

(assert (= (and b!1669230 ((_ is ElementMatch!4569) (regTwo!9651 (regex!3241 (h!23801 rules!1846))))) b!1670091))

(assert (= (and b!1669230 ((_ is Concat!7901) (regTwo!9651 (regex!3241 (h!23801 rules!1846))))) b!1670092))

(assert (= (and b!1669230 ((_ is Star!4569) (regTwo!9651 (regex!3241 (h!23801 rules!1846))))) b!1670093))

(assert (= (and b!1669230 ((_ is Union!4569) (regTwo!9651 (regex!3241 (h!23801 rules!1846))))) b!1670094))

(declare-fun b!1670098 () Bool)

(declare-fun e!1070198 () Bool)

(declare-fun tp!482073 () Bool)

(declare-fun tp!482074 () Bool)

(assert (=> b!1670098 (= e!1070198 (and tp!482073 tp!482074))))

(declare-fun b!1670097 () Bool)

(declare-fun tp!482072 () Bool)

(assert (=> b!1670097 (= e!1070198 tp!482072)))

(assert (=> b!1669206 (= tp!481908 e!1070198)))

(declare-fun b!1670096 () Bool)

(declare-fun tp!482076 () Bool)

(declare-fun tp!482075 () Bool)

(assert (=> b!1670096 (= e!1070198 (and tp!482076 tp!482075))))

(declare-fun b!1670095 () Bool)

(assert (=> b!1670095 (= e!1070198 tp_is_empty!7413)))

(assert (= (and b!1669206 ((_ is ElementMatch!4569) (regex!3241 (h!23801 (t!152489 rules!1846))))) b!1670095))

(assert (= (and b!1669206 ((_ is Concat!7901) (regex!3241 (h!23801 (t!152489 rules!1846))))) b!1670096))

(assert (= (and b!1669206 ((_ is Star!4569) (regex!3241 (h!23801 (t!152489 rules!1846))))) b!1670097))

(assert (= (and b!1669206 ((_ is Union!4569) (regex!3241 (h!23801 (t!152489 rules!1846))))) b!1670098))

(declare-fun b!1670101 () Bool)

(declare-fun b_free!45403 () Bool)

(declare-fun b_next!46107 () Bool)

(assert (=> b!1670101 (= b_free!45403 (not b_next!46107))))

(declare-fun tp!482077 () Bool)

(declare-fun b_and!118761 () Bool)

(assert (=> b!1670101 (= tp!482077 b_and!118761)))

(declare-fun b_free!45405 () Bool)

(declare-fun b_next!46109 () Bool)

(assert (=> b!1670101 (= b_free!45405 (not b_next!46109))))

(declare-fun tb!95833 () Bool)

(declare-fun t!152577 () Bool)

(assert (=> (and b!1670101 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457)))))) t!152577) tb!95833))

(declare-fun result!115792 () Bool)

(assert (= result!115792 result!115754))

(assert (=> b!1669826 t!152577))

(declare-fun t!152579 () Bool)

(declare-fun tb!95835 () Bool)

(assert (=> (and b!1670101 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457))))))) t!152579) tb!95835))

(declare-fun result!115794 () Bool)

(assert (= result!115794 result!115746))

(assert (=> d!504801 t!152579))

(assert (=> d!504823 t!152577))

(declare-fun t!152581 () Bool)

(declare-fun tb!95837 () Bool)

(assert (=> (and b!1670101 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457))))) t!152581) tb!95837))

(declare-fun result!115796 () Bool)

(assert (= result!115796 result!115720))

(assert (=> b!1669174 t!152581))

(assert (=> d!504695 t!152581))

(declare-fun b_and!118763 () Bool)

(declare-fun tp!482078 () Bool)

(assert (=> b!1670101 (= tp!482078 (and (=> t!152577 result!115792) (=> t!152579 result!115794) (=> t!152581 result!115796) b_and!118763))))

(declare-fun e!1070202 () Bool)

(assert (=> b!1670101 (= e!1070202 (and tp!482077 tp!482078))))

(declare-fun b!1670100 () Bool)

(declare-fun tp!482079 () Bool)

(declare-fun e!1070201 () Bool)

(assert (=> b!1670100 (= e!1070201 (and tp!482079 (inv!23743 (tag!3525 (h!23801 (t!152489 (t!152489 rules!1846))))) (inv!23746 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) e!1070202))))

(declare-fun b!1670099 () Bool)

(declare-fun e!1070199 () Bool)

(declare-fun tp!482080 () Bool)

(assert (=> b!1670099 (= e!1070199 (and e!1070201 tp!482080))))

(assert (=> b!1669205 (= tp!481909 e!1070199)))

(assert (= b!1670100 b!1670101))

(assert (= b!1670099 b!1670100))

(assert (= (and b!1669205 ((_ is Cons!18400) (t!152489 (t!152489 rules!1846)))) b!1670099))

(declare-fun m!2035793 () Bool)

(assert (=> b!1670100 m!2035793))

(declare-fun m!2035795 () Bool)

(assert (=> b!1670100 m!2035795))

(declare-fun b!1670105 () Bool)

(declare-fun e!1070203 () Bool)

(declare-fun tp!482082 () Bool)

(declare-fun tp!482083 () Bool)

(assert (=> b!1670105 (= e!1070203 (and tp!482082 tp!482083))))

(declare-fun b!1670104 () Bool)

(declare-fun tp!482081 () Bool)

(assert (=> b!1670104 (= e!1070203 tp!482081)))

(assert (=> b!1669228 (= tp!481932 e!1070203)))

(declare-fun b!1670103 () Bool)

(declare-fun tp!482085 () Bool)

(declare-fun tp!482084 () Bool)

(assert (=> b!1670103 (= e!1070203 (and tp!482085 tp!482084))))

(declare-fun b!1670102 () Bool)

(assert (=> b!1670102 (= e!1070203 tp_is_empty!7413)))

(assert (= (and b!1669228 ((_ is ElementMatch!4569) (regOne!9650 (regex!3241 (h!23801 rules!1846))))) b!1670102))

(assert (= (and b!1669228 ((_ is Concat!7901) (regOne!9650 (regex!3241 (h!23801 rules!1846))))) b!1670103))

(assert (= (and b!1669228 ((_ is Star!4569) (regOne!9650 (regex!3241 (h!23801 rules!1846))))) b!1670104))

(assert (= (and b!1669228 ((_ is Union!4569) (regOne!9650 (regex!3241 (h!23801 rules!1846))))) b!1670105))

(declare-fun b!1670109 () Bool)

(declare-fun e!1070204 () Bool)

(declare-fun tp!482087 () Bool)

(declare-fun tp!482088 () Bool)

(assert (=> b!1670109 (= e!1070204 (and tp!482087 tp!482088))))

(declare-fun b!1670108 () Bool)

(declare-fun tp!482086 () Bool)

(assert (=> b!1670108 (= e!1070204 tp!482086)))

(assert (=> b!1669228 (= tp!481931 e!1070204)))

(declare-fun b!1670107 () Bool)

(declare-fun tp!482090 () Bool)

(declare-fun tp!482089 () Bool)

(assert (=> b!1670107 (= e!1070204 (and tp!482090 tp!482089))))

(declare-fun b!1670106 () Bool)

(assert (=> b!1670106 (= e!1070204 tp_is_empty!7413)))

(assert (= (and b!1669228 ((_ is ElementMatch!4569) (regTwo!9650 (regex!3241 (h!23801 rules!1846))))) b!1670106))

(assert (= (and b!1669228 ((_ is Concat!7901) (regTwo!9650 (regex!3241 (h!23801 rules!1846))))) b!1670107))

(assert (= (and b!1669228 ((_ is Star!4569) (regTwo!9650 (regex!3241 (h!23801 rules!1846))))) b!1670108))

(assert (= (and b!1669228 ((_ is Union!4569) (regTwo!9650 (regex!3241 (h!23801 rules!1846))))) b!1670109))

(declare-fun b!1670113 () Bool)

(declare-fun e!1070205 () Bool)

(declare-fun tp!482092 () Bool)

(declare-fun tp!482093 () Bool)

(assert (=> b!1670113 (= e!1070205 (and tp!482092 tp!482093))))

(declare-fun b!1670112 () Bool)

(declare-fun tp!482091 () Bool)

(assert (=> b!1670112 (= e!1070205 tp!482091)))

(assert (=> b!1669229 (= tp!481928 e!1070205)))

(declare-fun b!1670111 () Bool)

(declare-fun tp!482095 () Bool)

(declare-fun tp!482094 () Bool)

(assert (=> b!1670111 (= e!1070205 (and tp!482095 tp!482094))))

(declare-fun b!1670110 () Bool)

(assert (=> b!1670110 (= e!1070205 tp_is_empty!7413)))

(assert (= (and b!1669229 ((_ is ElementMatch!4569) (reg!4898 (regex!3241 (h!23801 rules!1846))))) b!1670110))

(assert (= (and b!1669229 ((_ is Concat!7901) (reg!4898 (regex!3241 (h!23801 rules!1846))))) b!1670111))

(assert (= (and b!1669229 ((_ is Star!4569) (reg!4898 (regex!3241 (h!23801 rules!1846))))) b!1670112))

(assert (= (and b!1669229 ((_ is Union!4569) (reg!4898 (regex!3241 (h!23801 rules!1846))))) b!1670113))

(declare-fun b!1670114 () Bool)

(declare-fun e!1070206 () Bool)

(declare-fun tp!482096 () Bool)

(assert (=> b!1670114 (= e!1070206 (and tp_is_empty!7413 tp!482096))))

(assert (=> b!1669212 (= tp!481912 e!1070206)))

(assert (= (and b!1669212 ((_ is Cons!18397) (t!152486 (originalCharacters!4055 (h!23800 tokens!457))))) b!1670114))

(declare-fun b_lambda!52453 () Bool)

(assert (= b_lambda!52435 (or (and b!1670101 b_free!45405 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1668919 b_free!45373 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1669226 b_free!45389) (and b!1670086 b_free!45401 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1669207 b_free!45385 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1668915 b_free!45369 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) b_lambda!52453)))

(declare-fun b_lambda!52455 () Bool)

(assert (= b_lambda!52433 (or (and b!1668919 b_free!45373 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))))) (and b!1670101 b_free!45405 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))))) (and b!1669207 b_free!45385 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))))) (and b!1668915 b_free!45369 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))))) (and b!1669226 b_free!45389 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))))) (and b!1670086 b_free!45401) b_lambda!52455)))

(declare-fun b_lambda!52457 () Bool)

(assert (= b_lambda!52441 (or (and b!1670101 b_free!45405 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 (t!152489 rules!1846))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1668919 b_free!45373 (= (toChars!4563 (transformation!3241 (h!23801 rules!1846))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1669226 b_free!45389) (and b!1670086 b_free!45401 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 (t!152488 tokens!457)))))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1669207 b_free!45385 (= (toChars!4563 (transformation!3241 (h!23801 (t!152489 rules!1846)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) (and b!1668915 b_free!45369 (= (toChars!4563 (transformation!3241 (rule!5129 (h!23800 tokens!457)))) (toChars!4563 (transformation!3241 (rule!5129 (h!23800 (t!152488 tokens!457))))))) b_lambda!52457)))

(declare-fun b_lambda!52459 () Bool)

(assert (= b_lambda!52451 (or d!504645 b_lambda!52459)))

(declare-fun bs!398043 () Bool)

(declare-fun d!505153 () Bool)

(assert (= bs!398043 (and d!505153 d!504645)))

(assert (=> bs!398043 (= (dynLambda!8303 lambda!68003 (h!23800 tokens!457)) (rulesProduceIndividualToken!1518 thiss!17113 rules!1846 (h!23800 tokens!457)))))

(assert (=> bs!398043 m!2033501))

(assert (=> b!1670034 d!505153))

(check-sat (not b!1670096) (not bm!106566) (not b_lambda!52425) (not b!1670077) (not b!1669878) (not b!1669452) (not d!504939) (not b!1669381) (not b!1669388) (not b!1669689) (not b_next!46075) (not d!505007) (not d!504799) (not b!1670075) (not d!504813) (not d!504745) (not b!1670080) (not b!1669723) (not b!1670090) (not b!1669473) (not b!1670092) b_and!118693 (not b!1669707) (not d!504785) (not b!1669868) (not d!505021) (not bm!106568) (not b!1670041) (not b!1669456) (not b!1670035) (not b!1670066) (not b!1669863) (not b!1670097) (not b!1669347) b_and!118757 (not b!1669416) (not b_next!46103) (not b!1669664) (not d!504935) (not b!1670006) (not b!1669805) (not d!504779) b_and!118763 (not d!505049) (not d!504789) (not b!1670105) (not b!1669432) b_and!118697 (not b!1670001) (not d!505011) (not d!504923) (not b!1669414) (not b!1669431) (not b!1669662) (not b!1670005) (not d!505129) (not b!1669462) (not b_next!46071) (not b!1670081) (not b!1669393) (not b!1669329) (not d!504927) (not b!1669677) (not b!1669694) (not b!1669860) (not b!1670083) (not b!1669470) (not b!1669872) (not b!1669708) (not d!504811) (not b!1670046) (not b!1669458) (not d!505033) (not d!505133) (not b!1670051) (not b!1670108) (not b!1669802) (not d!504937) (not b!1669424) (not b!1669811) (not b!1670085) (not d!504817) (not d!504767) (not b!1669880) (not b_lambda!52427) (not d!505017) (not b!1669826) (not b!1669331) (not b!1669732) (not tb!95791) b_and!118745 (not b!1670068) (not b!1669464) (not b!1669803) (not b!1670103) (not b!1670093) (not b!1670050) (not b_next!46087) (not b!1669348) (not tb!95799) (not b!1669702) (not b!1669701) (not d!504757) (not b_next!46105) (not d!504807) (not b!1669390) (not d!504797) (not b!1669142) (not b!1670082) (not bs!398043) (not b!1670026) (not b!1669450) (not bm!106563) (not d!504781) (not b!1670107) (not b_next!46091) (not b!1669445) (not b!1669690) (not b!1669460) (not b!1670027) (not b!1669415) (not b!1669334) (not d!504793) (not b!1669734) (not d!504825) (not d!504917) (not b!1670112) (not b!1669808) (not b_next!46109) (not d!504751) (not d!504815) (not b!1670098) (not b!1669699) (not b!1669469) (not b!1669449) (not d!504783) (not b!1669691) (not b!1670045) (not b!1669454) (not b!1669428) (not b!1669429) (not b!1669386) (not b!1669663) (not b!1669468) b_and!118665 (not d!504929) (not b!1670069) (not b!1669706) (not b!1669332) (not b!1670047) (not b_lambda!52459) (not b!1669472) (not b!1669804) (not b!1669446) b_and!118761 (not b!1669812) (not b!1669661) (not b!1670111) (not b!1669700) (not d!504777) (not b!1669871) (not b!1669801) (not d!504731) b_and!118759 (not b!1670064) (not b!1669806) (not d!505013) (not b!1669827) (not b!1669344) (not b!1669459) (not d!505043) (not b!1669455) (not d!505035) (not b!1669346) (not b!1669418) (not d!504801) (not b!1669657) (not d!504771) (not b!1669340) (not b!1670061) (not b!1669688) (not b_lambda!52453) (not b!1669336) (not d!504761) (not b!1669862) (not d!504933) (not d!505023) (not b!1669412) (not b!1669436) (not b!1669870) (not d!505071) (not d!505041) (not b!1670076) (not b!1670021) b_and!118741 (not b!1670113) (not d!504769) (not d!504743) (not b!1670071) (not d!504965) (not d!505027) (not b_lambda!52457) (not b!1669465) (not b_next!46077) (not d!504921) (not b_next!46107) (not b!1669421) (not d!505005) (not b_lambda!52455) (not d!504803) (not b_next!46089) (not b!1669809) (not b!1670049) (not b!1670029) (not d!505045) (not b!1669720) (not b!1670094) (not b!1670040) (not b!1669730) (not b!1669423) (not b!1670042) (not b!1669417) (not b!1670084) (not d!505037) (not b!1669693) (not b!1669461) (not b!1670114) (not b!1669384) (not b!1669698) (not b!1669719) (not b!1669463) (not d!504755) (not d!505055) (not b!1669665) (not d!505137) b_and!118661 (not b!1669419) (not b!1670070) (not b!1669377) b_and!118743 (not d!505069) (not b!1670099) (not bm!106567) (not b!1670079) (not b!1669660) (not b!1669447) (not b!1669810) (not b_next!46093) tp_is_empty!7413 (not b!1670100) (not d!505019) b_and!118747 (not b!1669882) (not b!1670065) (not b!1669425) (not b!1670089) (not b!1669451) (not b!1669413) (not b!1670088) (not b!1670104) (not b!1670060) (not d!504773) (not b!1670062) (not d!504819) (not b!1670043) (not d!504795) (not b!1670109) (not d!505131) (not b!1669337) (not b!1669655) (not d!504823) (not d!504945) (not d!504765) (not b!1669821) (not d!504947) (not d!504737) (not d!504821) (not b!1669279) (not b!1669724) (not b!1670004) (not b_next!46073) (not b!1669819) (not d!504809) (not d!504805) (not d!505039) (not b!1669338) (not b!1669453) (not d!505031) (not d!505009))
(check-sat (not b_next!46075) b_and!118693 b_and!118763 b_and!118745 (not b_next!46087) (not b_next!46105) (not b_next!46091) (not b_next!46109) b_and!118665 b_and!118761 b_and!118759 (not b_next!46089) (not b_next!46073) b_and!118757 (not b_next!46103) b_and!118697 (not b_next!46071) (not b_next!46077) b_and!118741 (not b_next!46107) b_and!118661 b_and!118743 (not b_next!46093) b_and!118747)
