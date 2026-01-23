; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!49054 () Bool)

(assert start!49054)

(declare-fun b!533365 () Bool)

(declare-fun b_free!14481 () Bool)

(declare-fun b_next!14497 () Bool)

(assert (=> b!533365 (= b_free!14481 (not b_next!14497))))

(declare-fun tp!170214 () Bool)

(declare-fun b_and!52131 () Bool)

(assert (=> b!533365 (= tp!170214 b_and!52131)))

(declare-fun b_free!14483 () Bool)

(declare-fun b_next!14499 () Bool)

(assert (=> b!533365 (= b_free!14483 (not b_next!14499))))

(declare-fun tp!170219 () Bool)

(declare-fun b_and!52133 () Bool)

(assert (=> b!533365 (= tp!170219 b_and!52133)))

(declare-fun b!533357 () Bool)

(declare-fun b_free!14485 () Bool)

(declare-fun b_next!14501 () Bool)

(assert (=> b!533357 (= b_free!14485 (not b_next!14501))))

(declare-fun tp!170221 () Bool)

(declare-fun b_and!52135 () Bool)

(assert (=> b!533357 (= tp!170221 b_and!52135)))

(declare-fun b_free!14487 () Bool)

(declare-fun b_next!14503 () Bool)

(assert (=> b!533357 (= b_free!14487 (not b_next!14503))))

(declare-fun tp!170216 () Bool)

(declare-fun b_and!52137 () Bool)

(assert (=> b!533357 (= tp!170216 b_and!52137)))

(declare-fun b!533352 () Bool)

(declare-fun e!321311 () Bool)

(declare-fun tp_is_empty!2895 () Bool)

(declare-fun tp!170220 () Bool)

(assert (=> b!533352 (= e!321311 (and tp_is_empty!2895 tp!170220))))

(declare-fun res!225346 () Bool)

(declare-fun e!321319 () Bool)

(assert (=> start!49054 (=> (not res!225346) (not e!321319))))

(declare-datatypes ((LexerInterface!822 0))(
  ( (LexerInterfaceExt!819 (__x!3818 Int)) (Lexer!820) )
))
(declare-fun thiss!22590 () LexerInterface!822)

(assert (=> start!49054 (= res!225346 (is-Lexer!820 thiss!22590))))

(assert (=> start!49054 e!321319))

(declare-fun e!321317 () Bool)

(assert (=> start!49054 e!321317))

(declare-fun e!321322 () Bool)

(assert (=> start!49054 e!321322))

(declare-datatypes ((String!6545 0))(
  ( (String!6546 (value!31518 String)) )
))
(declare-datatypes ((C!3462 0))(
  ( (C!3463 (val!1957 Int)) )
))
(declare-datatypes ((Regex!1270 0))(
  ( (ElementMatch!1270 (c!101692 C!3462)) (Concat!2230 (regOne!3052 Regex!1270) (regTwo!3052 Regex!1270)) (EmptyExpr!1270) (Star!1270 (reg!1599 Regex!1270)) (EmptyLang!1270) (Union!1270 (regOne!3053 Regex!1270) (regTwo!3053 Regex!1270)) )
))
(declare-datatypes ((List!5136 0))(
  ( (Nil!5126) (Cons!5126 (h!10527 (_ BitVec 16)) (t!73921 List!5136)) )
))
(declare-datatypes ((TokenValue!960 0))(
  ( (FloatLiteralValue!1920 (text!7165 List!5136)) (TokenValueExt!959 (__x!3819 Int)) (Broken!4800 (value!31519 List!5136)) (Object!969) (End!960) (Def!960) (Underscore!960) (Match!960) (Else!960) (Error!960) (Case!960) (If!960) (Extends!960) (Abstract!960) (Class!960) (Val!960) (DelimiterValue!1920 (del!1020 List!5136)) (KeywordValue!966 (value!31520 List!5136)) (CommentValue!1920 (value!31521 List!5136)) (WhitespaceValue!1920 (value!31522 List!5136)) (IndentationValue!960 (value!31523 List!5136)) (String!6547) (Int32!960) (Broken!4801 (value!31524 List!5136)) (Boolean!961) (Unit!8939) (OperatorValue!963 (op!1020 List!5136)) (IdentifierValue!1920 (value!31525 List!5136)) (IdentifierValue!1921 (value!31526 List!5136)) (WhitespaceValue!1921 (value!31527 List!5136)) (True!1920) (False!1920) (Broken!4802 (value!31528 List!5136)) (Broken!4803 (value!31529 List!5136)) (True!1921) (RightBrace!960) (RightBracket!960) (Colon!960) (Null!960) (Comma!960) (LeftBracket!960) (False!1921) (LeftBrace!960) (ImaginaryLiteralValue!960 (text!7166 List!5136)) (StringLiteralValue!2880 (value!31530 List!5136)) (EOFValue!960 (value!31531 List!5136)) (IdentValue!960 (value!31532 List!5136)) (DelimiterValue!1921 (value!31533 List!5136)) (DedentValue!960 (value!31534 List!5136)) (NewLineValue!960 (value!31535 List!5136)) (IntegerValue!2880 (value!31536 (_ BitVec 32)) (text!7167 List!5136)) (IntegerValue!2881 (value!31537 Int) (text!7168 List!5136)) (Times!960) (Or!960) (Equal!960) (Minus!960) (Broken!4804 (value!31538 List!5136)) (And!960) (Div!960) (LessEqual!960) (Mod!960) (Concat!2231) (Not!960) (Plus!960) (SpaceValue!960 (value!31539 List!5136)) (IntegerValue!2882 (value!31540 Int) (text!7169 List!5136)) (StringLiteralValue!2881 (text!7170 List!5136)) (FloatLiteralValue!1921 (text!7171 List!5136)) (BytesLiteralValue!960 (value!31541 List!5136)) (CommentValue!1921 (value!31542 List!5136)) (StringLiteralValue!2882 (value!31543 List!5136)) (ErrorTokenValue!960 (msg!1021 List!5136)) )
))
(declare-datatypes ((List!5137 0))(
  ( (Nil!5127) (Cons!5127 (h!10528 C!3462) (t!73922 List!5137)) )
))
(declare-datatypes ((IArray!3307 0))(
  ( (IArray!3308 (innerList!1711 List!5137)) )
))
(declare-datatypes ((Conc!1653 0))(
  ( (Node!1653 (left!4318 Conc!1653) (right!4648 Conc!1653) (csize!3536 Int) (cheight!1864 Int)) (Leaf!2629 (xs!4290 IArray!3307) (csize!3537 Int)) (Empty!1653) )
))
(declare-datatypes ((BalanceConc!3314 0))(
  ( (BalanceConc!3315 (c!101693 Conc!1653)) )
))
(declare-datatypes ((TokenValueInjection!1688 0))(
  ( (TokenValueInjection!1689 (toValue!1783 Int) (toChars!1642 Int)) )
))
(declare-datatypes ((Rule!1672 0))(
  ( (Rule!1673 (regex!936 Regex!1270) (tag!1198 String!6545) (isSeparator!936 Bool) (transformation!936 TokenValueInjection!1688)) )
))
(declare-datatypes ((Token!1608 0))(
  ( (Token!1609 (value!31544 TokenValue!960) (rule!1638 Rule!1672) (size!4142 Int) (originalCharacters!975 List!5137)) )
))
(declare-fun token!491 () Token!1608)

(declare-fun e!321307 () Bool)

(declare-fun inv!6437 (Token!1608) Bool)

(assert (=> start!49054 (and (inv!6437 token!491) e!321307)))

(assert (=> start!49054 true))

(assert (=> start!49054 e!321311))

(declare-fun b!533353 () Bool)

(declare-fun res!225349 () Bool)

(declare-fun e!321312 () Bool)

(assert (=> b!533353 (=> (not res!225349) (not e!321312))))

(declare-datatypes ((tuple2!6230 0))(
  ( (tuple2!6231 (_1!3379 Token!1608) (_2!3379 List!5137)) )
))
(declare-datatypes ((Option!1286 0))(
  ( (None!1285) (Some!1285 (v!16092 tuple2!6230)) )
))
(declare-fun lt!219644 () Option!1286)

(declare-fun size!4143 (List!5137) Int)

(assert (=> b!533353 (= res!225349 (= (size!4142 (_1!3379 (v!16092 lt!219644))) (size!4143 (originalCharacters!975 (_1!3379 (v!16092 lt!219644))))))))

(declare-fun b!533354 () Bool)

(declare-fun e!321315 () Bool)

(declare-fun e!321310 () Bool)

(assert (=> b!533354 (= e!321315 e!321310)))

(declare-fun res!225348 () Bool)

(assert (=> b!533354 (=> (not res!225348) (not e!321310))))

(assert (=> b!533354 (= res!225348 (is-Some!1285 lt!219644))))

(declare-fun input!2705 () List!5137)

(declare-datatypes ((List!5138 0))(
  ( (Nil!5128) (Cons!5128 (h!10529 Rule!1672) (t!73923 List!5138)) )
))
(declare-fun rules!3103 () List!5138)

(declare-fun maxPrefix!520 (LexerInterface!822 List!5138 List!5137) Option!1286)

(assert (=> b!533354 (= lt!219644 (maxPrefix!520 thiss!22590 rules!3103 input!2705))))

(declare-fun b!533355 () Bool)

(declare-datatypes ((Unit!8940 0))(
  ( (Unit!8941) )
))
(declare-fun e!321316 () Unit!8940)

(declare-fun Unit!8942 () Unit!8940)

(assert (=> b!533355 (= e!321316 Unit!8942)))

(assert (=> b!533355 false))

(declare-fun b!533356 () Bool)

(declare-fun tp!170215 () Bool)

(assert (=> b!533356 (= e!321317 (and tp_is_empty!2895 tp!170215))))

(declare-fun e!321321 () Bool)

(assert (=> b!533357 (= e!321321 (and tp!170221 tp!170216))))

(declare-fun b!533358 () Bool)

(declare-fun res!225343 () Bool)

(assert (=> b!533358 (=> (not res!225343) (not e!321310))))

(declare-fun suffix!1342 () List!5137)

(declare-fun lt!219658 () List!5137)

(declare-fun lt!219659 () List!5137)

(declare-fun ++!1424 (List!5137 List!5137) List!5137)

(assert (=> b!533358 (= res!225343 (= (++!1424 lt!219658 suffix!1342) lt!219659))))

(declare-fun b!533359 () Bool)

(declare-fun tp!170217 () Bool)

(declare-fun e!321308 () Bool)

(declare-fun inv!6434 (String!6545) Bool)

(declare-fun inv!6438 (TokenValueInjection!1688) Bool)

(assert (=> b!533359 (= e!321308 (and tp!170217 (inv!6434 (tag!1198 (h!10529 rules!3103))) (inv!6438 (transformation!936 (h!10529 rules!3103))) e!321321))))

(declare-fun b!533360 () Bool)

(declare-fun Unit!8943 () Unit!8940)

(assert (=> b!533360 (= e!321316 Unit!8943)))

(declare-fun b!533361 () Bool)

(declare-fun e!321318 () Bool)

(assert (=> b!533361 (= e!321318 e!321315)))

(declare-fun res!225350 () Bool)

(assert (=> b!533361 (=> (not res!225350) (not e!321315))))

(declare-fun lt!219657 () tuple2!6230)

(assert (=> b!533361 (= res!225350 (and (= (_1!3379 lt!219657) token!491) (= (_2!3379 lt!219657) suffix!1342)))))

(declare-fun lt!219645 () Option!1286)

(declare-fun get!1919 (Option!1286) tuple2!6230)

(assert (=> b!533361 (= lt!219657 (get!1919 lt!219645))))

(declare-fun b!533362 () Bool)

(declare-fun e!321323 () Bool)

(assert (=> b!533362 (= e!321323 e!321318)))

(declare-fun res!225352 () Bool)

(assert (=> b!533362 (=> (not res!225352) (not e!321318))))

(declare-fun isDefined!1098 (Option!1286) Bool)

(assert (=> b!533362 (= res!225352 (isDefined!1098 lt!219645))))

(assert (=> b!533362 (= lt!219645 (maxPrefix!520 thiss!22590 rules!3103 lt!219659))))

(assert (=> b!533362 (= lt!219659 (++!1424 input!2705 suffix!1342))))

(declare-fun b!533363 () Bool)

(declare-fun res!225344 () Bool)

(assert (=> b!533363 (=> (not res!225344) (not e!321319))))

(declare-fun isEmpty!3708 (List!5138) Bool)

(assert (=> b!533363 (= res!225344 (not (isEmpty!3708 rules!3103)))))

(declare-fun e!321325 () Bool)

(declare-fun tp!170222 () Bool)

(declare-fun b!533364 () Bool)

(declare-fun inv!21 (TokenValue!960) Bool)

(assert (=> b!533364 (= e!321307 (and (inv!21 (value!31544 token!491)) e!321325 tp!170222))))

(declare-fun e!321314 () Bool)

(assert (=> b!533365 (= e!321314 (and tp!170214 tp!170219))))

(declare-fun b!533366 () Bool)

(assert (=> b!533366 (= e!321319 e!321323)))

(declare-fun res!225354 () Bool)

(assert (=> b!533366 (=> (not res!225354) (not e!321323))))

(assert (=> b!533366 (= res!225354 (= lt!219658 input!2705))))

(declare-fun list!2132 (BalanceConc!3314) List!5137)

(declare-fun charsOf!565 (Token!1608) BalanceConc!3314)

(assert (=> b!533366 (= lt!219658 (list!2132 (charsOf!565 token!491)))))

(declare-fun b!533367 () Bool)

(declare-fun e!321313 () Bool)

(assert (=> b!533367 (= e!321310 (not e!321313))))

(declare-fun res!225351 () Bool)

(assert (=> b!533367 (=> res!225351 e!321313)))

(declare-fun lt!219651 () Int)

(assert (=> b!533367 (= res!225351 (< (size!4143 input!2705) lt!219651))))

(assert (=> b!533367 e!321312))

(declare-fun res!225353 () Bool)

(assert (=> b!533367 (=> (not res!225353) (not e!321312))))

(declare-fun lt!219646 () List!5137)

(declare-fun apply!1211 (TokenValueInjection!1688 BalanceConc!3314) TokenValue!960)

(declare-fun seqFromList!1134 (List!5137) BalanceConc!3314)

(assert (=> b!533367 (= res!225353 (= (value!31544 (_1!3379 (v!16092 lt!219644))) (apply!1211 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))) (seqFromList!1134 lt!219646))))))

(declare-fun lt!219653 () Unit!8940)

(declare-fun lemmaInv!84 (TokenValueInjection!1688) Unit!8940)

(assert (=> b!533367 (= lt!219653 (lemmaInv!84 (transformation!936 (rule!1638 token!491))))))

(declare-fun lt!219643 () Unit!8940)

(assert (=> b!533367 (= lt!219643 (lemmaInv!84 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))))))

(declare-fun ruleValid!156 (LexerInterface!822 Rule!1672) Bool)

(assert (=> b!533367 (ruleValid!156 thiss!22590 (rule!1638 token!491))))

(declare-fun lt!219648 () Unit!8940)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!15 (LexerInterface!822 Rule!1672 List!5138) Unit!8940)

(assert (=> b!533367 (= lt!219648 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!15 thiss!22590 (rule!1638 token!491) rules!3103))))

(assert (=> b!533367 (ruleValid!156 thiss!22590 (rule!1638 (_1!3379 (v!16092 lt!219644))))))

(declare-fun lt!219652 () Unit!8940)

(assert (=> b!533367 (= lt!219652 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!15 thiss!22590 (rule!1638 (_1!3379 (v!16092 lt!219644))) rules!3103))))

(declare-fun isPrefix!578 (List!5137 List!5137) Bool)

(assert (=> b!533367 (isPrefix!578 input!2705 input!2705)))

(declare-fun lt!219655 () Unit!8940)

(declare-fun lemmaIsPrefixRefl!318 (List!5137 List!5137) Unit!8940)

(assert (=> b!533367 (= lt!219655 (lemmaIsPrefixRefl!318 input!2705 input!2705))))

(declare-fun lt!219654 () List!5137)

(assert (=> b!533367 (= (_2!3379 (v!16092 lt!219644)) lt!219654)))

(declare-fun lt!219649 () Unit!8940)

(declare-fun lemmaSamePrefixThenSameSuffix!305 (List!5137 List!5137 List!5137 List!5137 List!5137) Unit!8940)

(assert (=> b!533367 (= lt!219649 (lemmaSamePrefixThenSameSuffix!305 lt!219646 (_2!3379 (v!16092 lt!219644)) lt!219646 lt!219654 input!2705))))

(declare-fun getSuffix!101 (List!5137 List!5137) List!5137)

(assert (=> b!533367 (= lt!219654 (getSuffix!101 input!2705 lt!219646))))

(assert (=> b!533367 (isPrefix!578 lt!219646 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644))))))

(declare-fun lt!219642 () Unit!8940)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!429 (List!5137 List!5137) Unit!8940)

(assert (=> b!533367 (= lt!219642 (lemmaConcatTwoListThenFirstIsPrefix!429 lt!219646 (_2!3379 (v!16092 lt!219644))))))

(declare-fun lt!219650 () Unit!8940)

(declare-fun lemmaCharactersSize!15 (Token!1608) Unit!8940)

(assert (=> b!533367 (= lt!219650 (lemmaCharactersSize!15 token!491))))

(declare-fun lt!219660 () Unit!8940)

(assert (=> b!533367 (= lt!219660 (lemmaCharactersSize!15 (_1!3379 (v!16092 lt!219644))))))

(declare-fun lt!219647 () Unit!8940)

(assert (=> b!533367 (= lt!219647 e!321316)))

(declare-fun c!101691 () Bool)

(assert (=> b!533367 (= c!101691 (> lt!219651 (size!4143 lt!219658)))))

(assert (=> b!533367 (= lt!219651 (size!4143 lt!219646))))

(assert (=> b!533367 (= lt!219646 (list!2132 (charsOf!565 (_1!3379 (v!16092 lt!219644)))))))

(assert (=> b!533367 (= lt!219644 (Some!1285 (v!16092 lt!219644)))))

(declare-fun lt!219656 () Unit!8940)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!21 (List!5137 List!5137 List!5137 List!5137) Unit!8940)

(assert (=> b!533367 (= lt!219656 (lemmaConcatSameAndSameSizesThenSameLists!21 lt!219658 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!533368 () Bool)

(declare-fun res!225347 () Bool)

(assert (=> b!533368 (=> (not res!225347) (not e!321319))))

(declare-fun rulesInvariant!785 (LexerInterface!822 List!5138) Bool)

(assert (=> b!533368 (= res!225347 (rulesInvariant!785 thiss!22590 rules!3103))))

(declare-fun b!533369 () Bool)

(declare-fun res!225345 () Bool)

(assert (=> b!533369 (=> (not res!225345) (not e!321319))))

(declare-fun isEmpty!3709 (List!5137) Bool)

(assert (=> b!533369 (= res!225345 (not (isEmpty!3709 input!2705)))))

(declare-fun b!533370 () Bool)

(declare-fun tp!170213 () Bool)

(assert (=> b!533370 (= e!321322 (and e!321308 tp!170213))))

(declare-fun b!533371 () Bool)

(assert (=> b!533371 (= e!321312 (and (= (size!4142 (_1!3379 (v!16092 lt!219644))) lt!219651) (= (originalCharacters!975 (_1!3379 (v!16092 lt!219644))) lt!219646)))))

(declare-fun b!533372 () Bool)

(assert (=> b!533372 (= e!321313 (isPrefix!578 lt!219646 input!2705))))

(declare-fun b!533373 () Bool)

(declare-fun tp!170218 () Bool)

(assert (=> b!533373 (= e!321325 (and tp!170218 (inv!6434 (tag!1198 (rule!1638 token!491))) (inv!6438 (transformation!936 (rule!1638 token!491))) e!321314))))

(assert (= (and start!49054 res!225346) b!533363))

(assert (= (and b!533363 res!225344) b!533368))

(assert (= (and b!533368 res!225347) b!533369))

(assert (= (and b!533369 res!225345) b!533366))

(assert (= (and b!533366 res!225354) b!533362))

(assert (= (and b!533362 res!225352) b!533361))

(assert (= (and b!533361 res!225350) b!533354))

(assert (= (and b!533354 res!225348) b!533358))

(assert (= (and b!533358 res!225343) b!533367))

(assert (= (and b!533367 c!101691) b!533355))

(assert (= (and b!533367 (not c!101691)) b!533360))

(assert (= (and b!533367 res!225353) b!533353))

(assert (= (and b!533353 res!225349) b!533371))

(assert (= (and b!533367 (not res!225351)) b!533372))

(assert (= (and start!49054 (is-Cons!5127 suffix!1342)) b!533356))

(assert (= b!533359 b!533357))

(assert (= b!533370 b!533359))

(assert (= (and start!49054 (is-Cons!5128 rules!3103)) b!533370))

(assert (= b!533373 b!533365))

(assert (= b!533364 b!533373))

(assert (= start!49054 b!533364))

(assert (= (and start!49054 (is-Cons!5127 input!2705)) b!533352))

(declare-fun m!778703 () Bool)

(assert (=> b!533368 m!778703))

(declare-fun m!778705 () Bool)

(assert (=> b!533364 m!778705))

(declare-fun m!778707 () Bool)

(assert (=> start!49054 m!778707))

(declare-fun m!778709 () Bool)

(assert (=> b!533362 m!778709))

(declare-fun m!778711 () Bool)

(assert (=> b!533362 m!778711))

(declare-fun m!778713 () Bool)

(assert (=> b!533362 m!778713))

(declare-fun m!778715 () Bool)

(assert (=> b!533369 m!778715))

(declare-fun m!778717 () Bool)

(assert (=> b!533359 m!778717))

(declare-fun m!778719 () Bool)

(assert (=> b!533359 m!778719))

(declare-fun m!778721 () Bool)

(assert (=> b!533361 m!778721))

(declare-fun m!778723 () Bool)

(assert (=> b!533354 m!778723))

(declare-fun m!778725 () Bool)

(assert (=> b!533353 m!778725))

(declare-fun m!778727 () Bool)

(assert (=> b!533367 m!778727))

(declare-fun m!778729 () Bool)

(assert (=> b!533367 m!778729))

(declare-fun m!778731 () Bool)

(assert (=> b!533367 m!778731))

(declare-fun m!778733 () Bool)

(assert (=> b!533367 m!778733))

(declare-fun m!778735 () Bool)

(assert (=> b!533367 m!778735))

(declare-fun m!778737 () Bool)

(assert (=> b!533367 m!778737))

(declare-fun m!778739 () Bool)

(assert (=> b!533367 m!778739))

(declare-fun m!778741 () Bool)

(assert (=> b!533367 m!778741))

(assert (=> b!533367 m!778739))

(declare-fun m!778743 () Bool)

(assert (=> b!533367 m!778743))

(declare-fun m!778745 () Bool)

(assert (=> b!533367 m!778745))

(declare-fun m!778747 () Bool)

(assert (=> b!533367 m!778747))

(declare-fun m!778749 () Bool)

(assert (=> b!533367 m!778749))

(declare-fun m!778751 () Bool)

(assert (=> b!533367 m!778751))

(declare-fun m!778753 () Bool)

(assert (=> b!533367 m!778753))

(declare-fun m!778755 () Bool)

(assert (=> b!533367 m!778755))

(declare-fun m!778757 () Bool)

(assert (=> b!533367 m!778757))

(declare-fun m!778759 () Bool)

(assert (=> b!533367 m!778759))

(declare-fun m!778761 () Bool)

(assert (=> b!533367 m!778761))

(assert (=> b!533367 m!778735))

(declare-fun m!778763 () Bool)

(assert (=> b!533367 m!778763))

(declare-fun m!778765 () Bool)

(assert (=> b!533367 m!778765))

(declare-fun m!778767 () Bool)

(assert (=> b!533367 m!778767))

(declare-fun m!778769 () Bool)

(assert (=> b!533367 m!778769))

(declare-fun m!778771 () Bool)

(assert (=> b!533367 m!778771))

(assert (=> b!533367 m!778755))

(declare-fun m!778773 () Bool)

(assert (=> b!533358 m!778773))

(declare-fun m!778775 () Bool)

(assert (=> b!533366 m!778775))

(assert (=> b!533366 m!778775))

(declare-fun m!778777 () Bool)

(assert (=> b!533366 m!778777))

(declare-fun m!778779 () Bool)

(assert (=> b!533363 m!778779))

(declare-fun m!778781 () Bool)

(assert (=> b!533373 m!778781))

(declare-fun m!778783 () Bool)

(assert (=> b!533373 m!778783))

(declare-fun m!778785 () Bool)

(assert (=> b!533372 m!778785))

(push 1)

(assert (not b!533372))

(assert b_and!52131)

(assert (not b!533368))

(assert b_and!52137)

(assert (not b!533353))

(assert (not b!533364))

(assert (not b!533370))

(assert (not b!533359))

(assert (not b!533367))

(assert (not b_next!14501))

(assert tp_is_empty!2895)

(assert (not b!533352))

(assert (not b!533366))

(assert (not b_next!14497))

(assert (not b!533354))

(assert (not b!533361))

(assert b_and!52133)

(assert (not b!533356))

(assert (not b!533373))

(assert (not b_next!14499))

(assert (not start!49054))

(assert (not b!533369))

(assert (not b!533358))

(assert (not b!533363))

(assert (not b_next!14503))

(assert (not b!533362))

(assert b_and!52135)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!14501))

(assert (not b_next!14497))

(assert b_and!52131)

(assert b_and!52137)

(assert b_and!52133)

(assert (not b_next!14499))

(assert (not b_next!14503))

(assert b_and!52135)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!188884 () Bool)

(assert (=> d!188884 (= (isEmpty!3708 rules!3103) (is-Nil!5128 rules!3103))))

(assert (=> b!533363 d!188884))

(declare-fun d!188888 () Bool)

(assert (=> d!188888 (= (inv!6434 (tag!1198 (rule!1638 token!491))) (= (mod (str.len (value!31518 (tag!1198 (rule!1638 token!491)))) 2) 0))))

(assert (=> b!533373 d!188888))

(declare-fun d!188890 () Bool)

(declare-fun res!225401 () Bool)

(declare-fun e!321385 () Bool)

(assert (=> d!188890 (=> (not res!225401) (not e!321385))))

(declare-fun semiInverseModEq!370 (Int Int) Bool)

(assert (=> d!188890 (= res!225401 (semiInverseModEq!370 (toChars!1642 (transformation!936 (rule!1638 token!491))) (toValue!1783 (transformation!936 (rule!1638 token!491)))))))

(assert (=> d!188890 (= (inv!6438 (transformation!936 (rule!1638 token!491))) e!321385)))

(declare-fun b!533442 () Bool)

(declare-fun equivClasses!353 (Int Int) Bool)

(assert (=> b!533442 (= e!321385 (equivClasses!353 (toChars!1642 (transformation!936 (rule!1638 token!491))) (toValue!1783 (transformation!936 (rule!1638 token!491)))))))

(assert (= (and d!188890 res!225401) b!533442))

(declare-fun m!778873 () Bool)

(assert (=> d!188890 m!778873))

(declare-fun m!778875 () Bool)

(assert (=> b!533442 m!778875))

(assert (=> b!533373 d!188890))

(declare-fun b!533492 () Bool)

(declare-fun res!225433 () Bool)

(declare-fun e!321413 () Bool)

(assert (=> b!533492 (=> (not res!225433) (not e!321413))))

(declare-fun lt!219735 () Option!1286)

(assert (=> b!533492 (= res!225433 (< (size!4143 (_2!3379 (get!1919 lt!219735))) (size!4143 input!2705)))))

(declare-fun b!533493 () Bool)

(declare-fun e!321415 () Bool)

(assert (=> b!533493 (= e!321415 e!321413)))

(declare-fun res!225432 () Bool)

(assert (=> b!533493 (=> (not res!225432) (not e!321413))))

(assert (=> b!533493 (= res!225432 (isDefined!1098 lt!219735))))

(declare-fun b!533494 () Bool)

(declare-fun contains!1194 (List!5138 Rule!1672) Bool)

(assert (=> b!533494 (= e!321413 (contains!1194 rules!3103 (rule!1638 (_1!3379 (get!1919 lt!219735)))))))

(declare-fun b!533495 () Bool)

(declare-fun res!225434 () Bool)

(assert (=> b!533495 (=> (not res!225434) (not e!321413))))

(assert (=> b!533495 (= res!225434 (= (value!31544 (_1!3379 (get!1919 lt!219735))) (apply!1211 (transformation!936 (rule!1638 (_1!3379 (get!1919 lt!219735)))) (seqFromList!1134 (originalCharacters!975 (_1!3379 (get!1919 lt!219735)))))))))

(declare-fun bm!38177 () Bool)

(declare-fun call!38182 () Option!1286)

(declare-fun maxPrefixOneRule!243 (LexerInterface!822 Rule!1672 List!5137) Option!1286)

(assert (=> bm!38177 (= call!38182 (maxPrefixOneRule!243 thiss!22590 (h!10529 rules!3103) input!2705))))

(declare-fun d!188892 () Bool)

(assert (=> d!188892 e!321415))

(declare-fun res!225435 () Bool)

(assert (=> d!188892 (=> res!225435 e!321415)))

(declare-fun isEmpty!3712 (Option!1286) Bool)

(assert (=> d!188892 (= res!225435 (isEmpty!3712 lt!219735))))

(declare-fun e!321414 () Option!1286)

(assert (=> d!188892 (= lt!219735 e!321414)))

(declare-fun c!101708 () Bool)

(assert (=> d!188892 (= c!101708 (and (is-Cons!5128 rules!3103) (is-Nil!5128 (t!73923 rules!3103))))))

(declare-fun lt!219737 () Unit!8940)

(declare-fun lt!219733 () Unit!8940)

(assert (=> d!188892 (= lt!219737 lt!219733)))

(assert (=> d!188892 (isPrefix!578 input!2705 input!2705)))

(assert (=> d!188892 (= lt!219733 (lemmaIsPrefixRefl!318 input!2705 input!2705))))

(declare-fun rulesValidInductive!325 (LexerInterface!822 List!5138) Bool)

(assert (=> d!188892 (rulesValidInductive!325 thiss!22590 rules!3103)))

(assert (=> d!188892 (= (maxPrefix!520 thiss!22590 rules!3103 input!2705) lt!219735)))

(declare-fun b!533496 () Bool)

(declare-fun res!225431 () Bool)

(assert (=> b!533496 (=> (not res!225431) (not e!321413))))

(assert (=> b!533496 (= res!225431 (= (list!2132 (charsOf!565 (_1!3379 (get!1919 lt!219735)))) (originalCharacters!975 (_1!3379 (get!1919 lt!219735)))))))

(declare-fun b!533497 () Bool)

(declare-fun res!225430 () Bool)

(assert (=> b!533497 (=> (not res!225430) (not e!321413))))

(assert (=> b!533497 (= res!225430 (= (++!1424 (list!2132 (charsOf!565 (_1!3379 (get!1919 lt!219735)))) (_2!3379 (get!1919 lt!219735))) input!2705))))

(declare-fun b!533498 () Bool)

(assert (=> b!533498 (= e!321414 call!38182)))

(declare-fun b!533499 () Bool)

(declare-fun res!225436 () Bool)

(assert (=> b!533499 (=> (not res!225436) (not e!321413))))

(declare-fun matchR!443 (Regex!1270 List!5137) Bool)

(assert (=> b!533499 (= res!225436 (matchR!443 (regex!936 (rule!1638 (_1!3379 (get!1919 lt!219735)))) (list!2132 (charsOf!565 (_1!3379 (get!1919 lt!219735))))))))

(declare-fun b!533500 () Bool)

(declare-fun lt!219736 () Option!1286)

(declare-fun lt!219734 () Option!1286)

(assert (=> b!533500 (= e!321414 (ite (and (is-None!1285 lt!219736) (is-None!1285 lt!219734)) None!1285 (ite (is-None!1285 lt!219734) lt!219736 (ite (is-None!1285 lt!219736) lt!219734 (ite (>= (size!4142 (_1!3379 (v!16092 lt!219736))) (size!4142 (_1!3379 (v!16092 lt!219734)))) lt!219736 lt!219734)))))))

(assert (=> b!533500 (= lt!219736 call!38182)))

(assert (=> b!533500 (= lt!219734 (maxPrefix!520 thiss!22590 (t!73923 rules!3103) input!2705))))

(assert (= (and d!188892 c!101708) b!533498))

(assert (= (and d!188892 (not c!101708)) b!533500))

(assert (= (or b!533498 b!533500) bm!38177))

(assert (= (and d!188892 (not res!225435)) b!533493))

(assert (= (and b!533493 res!225432) b!533496))

(assert (= (and b!533496 res!225431) b!533492))

(assert (= (and b!533492 res!225433) b!533497))

(assert (= (and b!533497 res!225430) b!533495))

(assert (= (and b!533495 res!225434) b!533499))

(assert (= (and b!533499 res!225436) b!533494))

(declare-fun m!778895 () Bool)

(assert (=> d!188892 m!778895))

(assert (=> d!188892 m!778749))

(assert (=> d!188892 m!778743))

(declare-fun m!778897 () Bool)

(assert (=> d!188892 m!778897))

(declare-fun m!778899 () Bool)

(assert (=> b!533495 m!778899))

(declare-fun m!778901 () Bool)

(assert (=> b!533495 m!778901))

(assert (=> b!533495 m!778901))

(declare-fun m!778903 () Bool)

(assert (=> b!533495 m!778903))

(declare-fun m!778905 () Bool)

(assert (=> bm!38177 m!778905))

(assert (=> b!533496 m!778899))

(declare-fun m!778907 () Bool)

(assert (=> b!533496 m!778907))

(assert (=> b!533496 m!778907))

(declare-fun m!778909 () Bool)

(assert (=> b!533496 m!778909))

(declare-fun m!778911 () Bool)

(assert (=> b!533493 m!778911))

(assert (=> b!533494 m!778899))

(declare-fun m!778913 () Bool)

(assert (=> b!533494 m!778913))

(assert (=> b!533492 m!778899))

(declare-fun m!778915 () Bool)

(assert (=> b!533492 m!778915))

(assert (=> b!533492 m!778753))

(assert (=> b!533499 m!778899))

(assert (=> b!533499 m!778907))

(assert (=> b!533499 m!778907))

(assert (=> b!533499 m!778909))

(assert (=> b!533499 m!778909))

(declare-fun m!778917 () Bool)

(assert (=> b!533499 m!778917))

(assert (=> b!533497 m!778899))

(assert (=> b!533497 m!778907))

(assert (=> b!533497 m!778907))

(assert (=> b!533497 m!778909))

(assert (=> b!533497 m!778909))

(declare-fun m!778919 () Bool)

(assert (=> b!533497 m!778919))

(declare-fun m!778923 () Bool)

(assert (=> b!533500 m!778923))

(assert (=> b!533354 d!188892))

(declare-fun b!533515 () Bool)

(declare-fun e!321425 () Bool)

(declare-fun inv!16 (TokenValue!960) Bool)

(assert (=> b!533515 (= e!321425 (inv!16 (value!31544 token!491)))))

(declare-fun b!533516 () Bool)

(declare-fun e!321427 () Bool)

(declare-fun inv!15 (TokenValue!960) Bool)

(assert (=> b!533516 (= e!321427 (inv!15 (value!31544 token!491)))))

(declare-fun d!188902 () Bool)

(declare-fun c!101713 () Bool)

(assert (=> d!188902 (= c!101713 (is-IntegerValue!2880 (value!31544 token!491)))))

(assert (=> d!188902 (= (inv!21 (value!31544 token!491)) e!321425)))

(declare-fun b!533517 () Bool)

(declare-fun res!225443 () Bool)

(assert (=> b!533517 (=> res!225443 e!321427)))

(assert (=> b!533517 (= res!225443 (not (is-IntegerValue!2882 (value!31544 token!491))))))

(declare-fun e!321426 () Bool)

(assert (=> b!533517 (= e!321426 e!321427)))

(declare-fun b!533518 () Bool)

(assert (=> b!533518 (= e!321425 e!321426)))

(declare-fun c!101714 () Bool)

(assert (=> b!533518 (= c!101714 (is-IntegerValue!2881 (value!31544 token!491)))))

(declare-fun b!533519 () Bool)

(declare-fun inv!17 (TokenValue!960) Bool)

(assert (=> b!533519 (= e!321426 (inv!17 (value!31544 token!491)))))

(assert (= (and d!188902 c!101713) b!533515))

(assert (= (and d!188902 (not c!101713)) b!533518))

(assert (= (and b!533518 c!101714) b!533519))

(assert (= (and b!533518 (not c!101714)) b!533517))

(assert (= (and b!533517 (not res!225443)) b!533516))

(declare-fun m!778935 () Bool)

(assert (=> b!533515 m!778935))

(declare-fun m!778937 () Bool)

(assert (=> b!533516 m!778937))

(declare-fun m!778939 () Bool)

(assert (=> b!533519 m!778939))

(assert (=> b!533364 d!188902))

(declare-fun d!188906 () Bool)

(declare-fun lt!219741 () Int)

(assert (=> d!188906 (>= lt!219741 0)))

(declare-fun e!321430 () Int)

(assert (=> d!188906 (= lt!219741 e!321430)))

(declare-fun c!101717 () Bool)

(assert (=> d!188906 (= c!101717 (is-Nil!5127 (originalCharacters!975 (_1!3379 (v!16092 lt!219644)))))))

(assert (=> d!188906 (= (size!4143 (originalCharacters!975 (_1!3379 (v!16092 lt!219644)))) lt!219741)))

(declare-fun b!533524 () Bool)

(assert (=> b!533524 (= e!321430 0)))

(declare-fun b!533525 () Bool)

(assert (=> b!533525 (= e!321430 (+ 1 (size!4143 (t!73922 (originalCharacters!975 (_1!3379 (v!16092 lt!219644)))))))))

(assert (= (and d!188906 c!101717) b!533524))

(assert (= (and d!188906 (not c!101717)) b!533525))

(declare-fun m!778941 () Bool)

(assert (=> b!533525 m!778941))

(assert (=> b!533353 d!188906))

(declare-fun d!188908 () Bool)

(declare-fun list!2134 (Conc!1653) List!5137)

(assert (=> d!188908 (= (list!2132 (charsOf!565 token!491)) (list!2134 (c!101693 (charsOf!565 token!491))))))

(declare-fun bs!67223 () Bool)

(assert (= bs!67223 d!188908))

(declare-fun m!778943 () Bool)

(assert (=> bs!67223 m!778943))

(assert (=> b!533366 d!188908))

(declare-fun d!188910 () Bool)

(declare-fun lt!219744 () BalanceConc!3314)

(assert (=> d!188910 (= (list!2132 lt!219744) (originalCharacters!975 token!491))))

(declare-fun dynLambda!3074 (Int TokenValue!960) BalanceConc!3314)

(assert (=> d!188910 (= lt!219744 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 token!491))) (value!31544 token!491)))))

(assert (=> d!188910 (= (charsOf!565 token!491) lt!219744)))

(declare-fun b_lambda!20601 () Bool)

(assert (=> (not b_lambda!20601) (not d!188910)))

(declare-fun t!73932 () Bool)

(declare-fun tb!47359 () Bool)

(assert (=> (and b!533365 (= (toChars!1642 (transformation!936 (rule!1638 token!491))) (toChars!1642 (transformation!936 (rule!1638 token!491)))) t!73932) tb!47359))

(declare-fun b!533533 () Bool)

(declare-fun e!321436 () Bool)

(declare-fun tp!170258 () Bool)

(declare-fun inv!6441 (Conc!1653) Bool)

(assert (=> b!533533 (= e!321436 (and (inv!6441 (c!101693 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 token!491))) (value!31544 token!491)))) tp!170258))))

(declare-fun result!52816 () Bool)

(declare-fun inv!6442 (BalanceConc!3314) Bool)

(assert (=> tb!47359 (= result!52816 (and (inv!6442 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 token!491))) (value!31544 token!491))) e!321436))))

(assert (= tb!47359 b!533533))

(declare-fun m!778949 () Bool)

(assert (=> b!533533 m!778949))

(declare-fun m!778951 () Bool)

(assert (=> tb!47359 m!778951))

(assert (=> d!188910 t!73932))

(declare-fun b_and!52151 () Bool)

(assert (= b_and!52133 (and (=> t!73932 result!52816) b_and!52151)))

(declare-fun t!73934 () Bool)

(declare-fun tb!47361 () Bool)

(assert (=> (and b!533357 (= (toChars!1642 (transformation!936 (h!10529 rules!3103))) (toChars!1642 (transformation!936 (rule!1638 token!491)))) t!73934) tb!47361))

(declare-fun result!52820 () Bool)

(assert (= result!52820 result!52816))

(assert (=> d!188910 t!73934))

(declare-fun b_and!52153 () Bool)

(assert (= b_and!52137 (and (=> t!73934 result!52820) b_and!52153)))

(declare-fun m!778953 () Bool)

(assert (=> d!188910 m!778953))

(declare-fun m!778955 () Bool)

(assert (=> d!188910 m!778955))

(assert (=> b!533366 d!188910))

(declare-fun d!188914 () Bool)

(assert (=> d!188914 (ruleValid!156 thiss!22590 (rule!1638 (_1!3379 (v!16092 lt!219644))))))

(declare-fun lt!219747 () Unit!8940)

(declare-fun choose!3743 (LexerInterface!822 Rule!1672 List!5138) Unit!8940)

(assert (=> d!188914 (= lt!219747 (choose!3743 thiss!22590 (rule!1638 (_1!3379 (v!16092 lt!219644))) rules!3103))))

(assert (=> d!188914 (contains!1194 rules!3103 (rule!1638 (_1!3379 (v!16092 lt!219644))))))

(assert (=> d!188914 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!15 thiss!22590 (rule!1638 (_1!3379 (v!16092 lt!219644))) rules!3103) lt!219747)))

(declare-fun bs!67224 () Bool)

(assert (= bs!67224 d!188914))

(assert (=> bs!67224 m!778733))

(declare-fun m!778957 () Bool)

(assert (=> bs!67224 m!778957))

(declare-fun m!778959 () Bool)

(assert (=> bs!67224 m!778959))

(assert (=> b!533367 d!188914))

(declare-fun d!188916 () Bool)

(assert (=> d!188916 (and (= lt!219658 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!219750 () Unit!8940)

(declare-fun choose!3744 (List!5137 List!5137 List!5137 List!5137) Unit!8940)

(assert (=> d!188916 (= lt!219750 (choose!3744 lt!219658 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!188916 (= (++!1424 lt!219658 suffix!1342) (++!1424 input!2705 suffix!1342))))

(assert (=> d!188916 (= (lemmaConcatSameAndSameSizesThenSameLists!21 lt!219658 suffix!1342 input!2705 suffix!1342) lt!219750)))

(declare-fun bs!67225 () Bool)

(assert (= bs!67225 d!188916))

(declare-fun m!778961 () Bool)

(assert (=> bs!67225 m!778961))

(assert (=> bs!67225 m!778773))

(assert (=> bs!67225 m!778713))

(assert (=> b!533367 d!188916))

(declare-fun d!188918 () Bool)

(declare-fun lt!219751 () Int)

(assert (=> d!188918 (>= lt!219751 0)))

(declare-fun e!321437 () Int)

(assert (=> d!188918 (= lt!219751 e!321437)))

(declare-fun c!101718 () Bool)

(assert (=> d!188918 (= c!101718 (is-Nil!5127 lt!219658))))

(assert (=> d!188918 (= (size!4143 lt!219658) lt!219751)))

(declare-fun b!533534 () Bool)

(assert (=> b!533534 (= e!321437 0)))

(declare-fun b!533535 () Bool)

(assert (=> b!533535 (= e!321437 (+ 1 (size!4143 (t!73922 lt!219658))))))

(assert (= (and d!188918 c!101718) b!533534))

(assert (= (and d!188918 (not c!101718)) b!533535))

(declare-fun m!778963 () Bool)

(assert (=> b!533535 m!778963))

(assert (=> b!533367 d!188918))

(declare-fun d!188920 () Bool)

(declare-fun lt!219754 () Int)

(assert (=> d!188920 (>= lt!219754 0)))

(declare-fun e!321440 () Int)

(assert (=> d!188920 (= lt!219754 e!321440)))

(declare-fun c!101721 () Bool)

(assert (=> d!188920 (= c!101721 (is-Nil!5127 lt!219646))))

(assert (=> d!188920 (= (size!4143 lt!219646) lt!219754)))

(declare-fun b!533540 () Bool)

(assert (=> b!533540 (= e!321440 0)))

(declare-fun b!533541 () Bool)

(assert (=> b!533541 (= e!321440 (+ 1 (size!4143 (t!73922 lt!219646))))))

(assert (= (and d!188920 c!101721) b!533540))

(assert (= (and d!188920 (not c!101721)) b!533541))

(declare-fun m!778965 () Bool)

(assert (=> b!533541 m!778965))

(assert (=> b!533367 d!188920))

(declare-fun d!188922 () Bool)

(assert (=> d!188922 (isPrefix!578 lt!219646 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644))))))

(declare-fun lt!219757 () Unit!8940)

(declare-fun choose!3745 (List!5137 List!5137) Unit!8940)

(assert (=> d!188922 (= lt!219757 (choose!3745 lt!219646 (_2!3379 (v!16092 lt!219644))))))

(assert (=> d!188922 (= (lemmaConcatTwoListThenFirstIsPrefix!429 lt!219646 (_2!3379 (v!16092 lt!219644))) lt!219757)))

(declare-fun bs!67226 () Bool)

(assert (= bs!67226 d!188922))

(assert (=> bs!67226 m!778735))

(assert (=> bs!67226 m!778735))

(assert (=> bs!67226 m!778763))

(declare-fun m!778967 () Bool)

(assert (=> bs!67226 m!778967))

(assert (=> b!533367 d!188922))

(declare-fun d!188924 () Bool)

(declare-fun lt!219758 () Int)

(assert (=> d!188924 (>= lt!219758 0)))

(declare-fun e!321443 () Int)

(assert (=> d!188924 (= lt!219758 e!321443)))

(declare-fun c!101722 () Bool)

(assert (=> d!188924 (= c!101722 (is-Nil!5127 input!2705))))

(assert (=> d!188924 (= (size!4143 input!2705) lt!219758)))

(declare-fun b!533546 () Bool)

(assert (=> b!533546 (= e!321443 0)))

(declare-fun b!533547 () Bool)

(assert (=> b!533547 (= e!321443 (+ 1 (size!4143 (t!73922 input!2705))))))

(assert (= (and d!188924 c!101722) b!533546))

(assert (= (and d!188924 (not c!101722)) b!533547))

(declare-fun m!778969 () Bool)

(assert (=> b!533547 m!778969))

(assert (=> b!533367 d!188924))

(declare-fun b!533561 () Bool)

(declare-fun res!225464 () Bool)

(declare-fun e!321452 () Bool)

(assert (=> b!533561 (=> (not res!225464) (not e!321452))))

(declare-fun head!1169 (List!5137) C!3462)

(assert (=> b!533561 (= res!225464 (= (head!1169 input!2705) (head!1169 input!2705)))))

(declare-fun b!533562 () Bool)

(declare-fun tail!698 (List!5137) List!5137)

(assert (=> b!533562 (= e!321452 (isPrefix!578 (tail!698 input!2705) (tail!698 input!2705)))))

(declare-fun b!533563 () Bool)

(declare-fun e!321454 () Bool)

(assert (=> b!533563 (= e!321454 (>= (size!4143 input!2705) (size!4143 input!2705)))))

(declare-fun d!188926 () Bool)

(assert (=> d!188926 e!321454))

(declare-fun res!225463 () Bool)

(assert (=> d!188926 (=> res!225463 e!321454)))

(declare-fun lt!219762 () Bool)

(assert (=> d!188926 (= res!225463 (not lt!219762))))

(declare-fun e!321453 () Bool)

(assert (=> d!188926 (= lt!219762 e!321453)))

(declare-fun res!225461 () Bool)

(assert (=> d!188926 (=> res!225461 e!321453)))

(assert (=> d!188926 (= res!225461 (is-Nil!5127 input!2705))))

(assert (=> d!188926 (= (isPrefix!578 input!2705 input!2705) lt!219762)))

(declare-fun b!533560 () Bool)

(assert (=> b!533560 (= e!321453 e!321452)))

(declare-fun res!225462 () Bool)

(assert (=> b!533560 (=> (not res!225462) (not e!321452))))

(assert (=> b!533560 (= res!225462 (not (is-Nil!5127 input!2705)))))

(assert (= (and d!188926 (not res!225461)) b!533560))

(assert (= (and b!533560 res!225462) b!533561))

(assert (= (and b!533561 res!225464) b!533562))

(assert (= (and d!188926 (not res!225463)) b!533563))

(declare-fun m!778981 () Bool)

(assert (=> b!533561 m!778981))

(assert (=> b!533561 m!778981))

(declare-fun m!778985 () Bool)

(assert (=> b!533562 m!778985))

(assert (=> b!533562 m!778985))

(assert (=> b!533562 m!778985))

(assert (=> b!533562 m!778985))

(declare-fun m!778987 () Bool)

(assert (=> b!533562 m!778987))

(assert (=> b!533563 m!778753))

(assert (=> b!533563 m!778753))

(assert (=> b!533367 d!188926))

(declare-fun d!188930 () Bool)

(assert (=> d!188930 (= (list!2132 (charsOf!565 (_1!3379 (v!16092 lt!219644)))) (list!2134 (c!101693 (charsOf!565 (_1!3379 (v!16092 lt!219644))))))))

(declare-fun bs!67227 () Bool)

(assert (= bs!67227 d!188930))

(declare-fun m!778989 () Bool)

(assert (=> bs!67227 m!778989))

(assert (=> b!533367 d!188930))

(declare-fun d!188932 () Bool)

(assert (=> d!188932 (ruleValid!156 thiss!22590 (rule!1638 token!491))))

(declare-fun lt!219764 () Unit!8940)

(assert (=> d!188932 (= lt!219764 (choose!3743 thiss!22590 (rule!1638 token!491) rules!3103))))

(assert (=> d!188932 (contains!1194 rules!3103 (rule!1638 token!491))))

(assert (=> d!188932 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!15 thiss!22590 (rule!1638 token!491) rules!3103) lt!219764)))

(declare-fun bs!67228 () Bool)

(assert (= bs!67228 d!188932))

(assert (=> bs!67228 m!778729))

(declare-fun m!778991 () Bool)

(assert (=> bs!67228 m!778991))

(declare-fun m!778993 () Bool)

(assert (=> bs!67228 m!778993))

(assert (=> b!533367 d!188932))

(declare-fun d!188934 () Bool)

(declare-fun res!225469 () Bool)

(declare-fun e!321458 () Bool)

(assert (=> d!188934 (=> (not res!225469) (not e!321458))))

(declare-fun validRegex!427 (Regex!1270) Bool)

(assert (=> d!188934 (= res!225469 (validRegex!427 (regex!936 (rule!1638 token!491))))))

(assert (=> d!188934 (= (ruleValid!156 thiss!22590 (rule!1638 token!491)) e!321458)))

(declare-fun b!533569 () Bool)

(declare-fun res!225470 () Bool)

(assert (=> b!533569 (=> (not res!225470) (not e!321458))))

(declare-fun nullable!332 (Regex!1270) Bool)

(assert (=> b!533569 (= res!225470 (not (nullable!332 (regex!936 (rule!1638 token!491)))))))

(declare-fun b!533570 () Bool)

(assert (=> b!533570 (= e!321458 (not (= (tag!1198 (rule!1638 token!491)) (String!6546 ""))))))

(assert (= (and d!188934 res!225469) b!533569))

(assert (= (and b!533569 res!225470) b!533570))

(declare-fun m!779003 () Bool)

(assert (=> d!188934 m!779003))

(declare-fun m!779005 () Bool)

(assert (=> b!533569 m!779005))

(assert (=> b!533367 d!188934))

(declare-fun d!188938 () Bool)

(assert (=> d!188938 (isPrefix!578 input!2705 input!2705)))

(declare-fun lt!219767 () Unit!8940)

(declare-fun choose!3746 (List!5137 List!5137) Unit!8940)

(assert (=> d!188938 (= lt!219767 (choose!3746 input!2705 input!2705))))

(assert (=> d!188938 (= (lemmaIsPrefixRefl!318 input!2705 input!2705) lt!219767)))

(declare-fun bs!67229 () Bool)

(assert (= bs!67229 d!188938))

(assert (=> bs!67229 m!778749))

(declare-fun m!779007 () Bool)

(assert (=> bs!67229 m!779007))

(assert (=> b!533367 d!188938))

(declare-fun d!188940 () Bool)

(declare-fun dynLambda!3075 (Int BalanceConc!3314) TokenValue!960)

(assert (=> d!188940 (= (apply!1211 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))) (seqFromList!1134 lt!219646)) (dynLambda!3075 (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (seqFromList!1134 lt!219646)))))

(declare-fun b_lambda!20605 () Bool)

(assert (=> (not b_lambda!20605) (not d!188940)))

(declare-fun tb!47367 () Bool)

(declare-fun t!73940 () Bool)

(assert (=> (and b!533365 (= (toValue!1783 (transformation!936 (rule!1638 token!491))) (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))) t!73940) tb!47367))

(declare-fun result!52826 () Bool)

(assert (=> tb!47367 (= result!52826 (inv!21 (dynLambda!3075 (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (seqFromList!1134 lt!219646))))))

(declare-fun m!779009 () Bool)

(assert (=> tb!47367 m!779009))

(assert (=> d!188940 t!73940))

(declare-fun b_and!52159 () Bool)

(assert (= b_and!52131 (and (=> t!73940 result!52826) b_and!52159)))

(declare-fun t!73942 () Bool)

(declare-fun tb!47369 () Bool)

(assert (=> (and b!533357 (= (toValue!1783 (transformation!936 (h!10529 rules!3103))) (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))) t!73942) tb!47369))

(declare-fun result!52830 () Bool)

(assert (= result!52830 result!52826))

(assert (=> d!188940 t!73942))

(declare-fun b_and!52161 () Bool)

(assert (= b_and!52135 (and (=> t!73942 result!52830) b_and!52161)))

(assert (=> d!188940 m!778739))

(declare-fun m!779011 () Bool)

(assert (=> d!188940 m!779011))

(assert (=> b!533367 d!188940))

(declare-fun d!188942 () Bool)

(declare-fun lt!219770 () List!5137)

(assert (=> d!188942 (= (++!1424 lt!219646 lt!219770) input!2705)))

(declare-fun e!321464 () List!5137)

(assert (=> d!188942 (= lt!219770 e!321464)))

(declare-fun c!101726 () Bool)

(assert (=> d!188942 (= c!101726 (is-Cons!5127 lt!219646))))

(assert (=> d!188942 (>= (size!4143 input!2705) (size!4143 lt!219646))))

(assert (=> d!188942 (= (getSuffix!101 input!2705 lt!219646) lt!219770)))

(declare-fun b!533577 () Bool)

(assert (=> b!533577 (= e!321464 (getSuffix!101 (tail!698 input!2705) (t!73922 lt!219646)))))

(declare-fun b!533578 () Bool)

(assert (=> b!533578 (= e!321464 input!2705)))

(assert (= (and d!188942 c!101726) b!533577))

(assert (= (and d!188942 (not c!101726)) b!533578))

(declare-fun m!779015 () Bool)

(assert (=> d!188942 m!779015))

(assert (=> d!188942 m!778753))

(assert (=> d!188942 m!778761))

(assert (=> b!533577 m!778985))

(assert (=> b!533577 m!778985))

(declare-fun m!779017 () Bool)

(assert (=> b!533577 m!779017))

(assert (=> b!533367 d!188942))

(declare-fun d!188946 () Bool)

(declare-fun res!225471 () Bool)

(declare-fun e!321467 () Bool)

(assert (=> d!188946 (=> (not res!225471) (not e!321467))))

(assert (=> d!188946 (= res!225471 (validRegex!427 (regex!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))))))

(assert (=> d!188946 (= (ruleValid!156 thiss!22590 (rule!1638 (_1!3379 (v!16092 lt!219644)))) e!321467)))

(declare-fun b!533583 () Bool)

(declare-fun res!225472 () Bool)

(assert (=> b!533583 (=> (not res!225472) (not e!321467))))

(assert (=> b!533583 (= res!225472 (not (nullable!332 (regex!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))))))

(declare-fun b!533584 () Bool)

(assert (=> b!533584 (= e!321467 (not (= (tag!1198 (rule!1638 (_1!3379 (v!16092 lt!219644)))) (String!6546 ""))))))

(assert (= (and d!188946 res!225471) b!533583))

(assert (= (and b!533583 res!225472) b!533584))

(declare-fun m!779019 () Bool)

(assert (=> d!188946 m!779019))

(declare-fun m!779021 () Bool)

(assert (=> b!533583 m!779021))

(assert (=> b!533367 d!188946))

(declare-fun d!188948 () Bool)

(assert (=> d!188948 (= (size!4142 (_1!3379 (v!16092 lt!219644))) (size!4143 (originalCharacters!975 (_1!3379 (v!16092 lt!219644)))))))

(declare-fun Unit!8949 () Unit!8940)

(assert (=> d!188948 (= (lemmaCharactersSize!15 (_1!3379 (v!16092 lt!219644))) Unit!8949)))

(declare-fun bs!67231 () Bool)

(assert (= bs!67231 d!188948))

(assert (=> bs!67231 m!778725))

(assert (=> b!533367 d!188948))

(declare-fun d!188950 () Bool)

(declare-fun e!321471 () Bool)

(assert (=> d!188950 e!321471))

(declare-fun res!225475 () Bool)

(assert (=> d!188950 (=> (not res!225475) (not e!321471))))

(assert (=> d!188950 (= res!225475 (semiInverseModEq!370 (toChars!1642 (transformation!936 (rule!1638 token!491))) (toValue!1783 (transformation!936 (rule!1638 token!491)))))))

(declare-fun Unit!8950 () Unit!8940)

(assert (=> d!188950 (= (lemmaInv!84 (transformation!936 (rule!1638 token!491))) Unit!8950)))

(declare-fun b!533589 () Bool)

(assert (=> b!533589 (= e!321471 (equivClasses!353 (toChars!1642 (transformation!936 (rule!1638 token!491))) (toValue!1783 (transformation!936 (rule!1638 token!491)))))))

(assert (= (and d!188950 res!225475) b!533589))

(assert (=> d!188950 m!778873))

(assert (=> b!533589 m!778875))

(assert (=> b!533367 d!188950))

(declare-fun d!188954 () Bool)

(declare-fun fromListB!506 (List!5137) BalanceConc!3314)

(assert (=> d!188954 (= (seqFromList!1134 lt!219646) (fromListB!506 lt!219646))))

(declare-fun bs!67232 () Bool)

(assert (= bs!67232 d!188954))

(declare-fun m!779025 () Bool)

(assert (=> bs!67232 m!779025))

(assert (=> b!533367 d!188954))

(declare-fun d!188956 () Bool)

(assert (=> d!188956 (= (_2!3379 (v!16092 lt!219644)) lt!219654)))

(declare-fun lt!219779 () Unit!8940)

(declare-fun choose!3747 (List!5137 List!5137 List!5137 List!5137 List!5137) Unit!8940)

(assert (=> d!188956 (= lt!219779 (choose!3747 lt!219646 (_2!3379 (v!16092 lt!219644)) lt!219646 lt!219654 input!2705))))

(assert (=> d!188956 (isPrefix!578 lt!219646 input!2705)))

(assert (=> d!188956 (= (lemmaSamePrefixThenSameSuffix!305 lt!219646 (_2!3379 (v!16092 lt!219644)) lt!219646 lt!219654 input!2705) lt!219779)))

(declare-fun bs!67234 () Bool)

(assert (= bs!67234 d!188956))

(declare-fun m!779029 () Bool)

(assert (=> bs!67234 m!779029))

(assert (=> bs!67234 m!778785))

(assert (=> b!533367 d!188956))

(declare-fun d!188960 () Bool)

(declare-fun lt!219780 () BalanceConc!3314)

(assert (=> d!188960 (= (list!2132 lt!219780) (originalCharacters!975 (_1!3379 (v!16092 lt!219644))))))

(assert (=> d!188960 (= lt!219780 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (value!31544 (_1!3379 (v!16092 lt!219644)))))))

(assert (=> d!188960 (= (charsOf!565 (_1!3379 (v!16092 lt!219644))) lt!219780)))

(declare-fun b_lambda!20607 () Bool)

(assert (=> (not b_lambda!20607) (not d!188960)))

(declare-fun t!73944 () Bool)

(declare-fun tb!47371 () Bool)

(assert (=> (and b!533365 (= (toChars!1642 (transformation!936 (rule!1638 token!491))) (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))) t!73944) tb!47371))

(declare-fun b!533590 () Bool)

(declare-fun e!321472 () Bool)

(declare-fun tp!170260 () Bool)

(assert (=> b!533590 (= e!321472 (and (inv!6441 (c!101693 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (value!31544 (_1!3379 (v!16092 lt!219644)))))) tp!170260))))

(declare-fun result!52832 () Bool)

(assert (=> tb!47371 (= result!52832 (and (inv!6442 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (value!31544 (_1!3379 (v!16092 lt!219644))))) e!321472))))

(assert (= tb!47371 b!533590))

(declare-fun m!779031 () Bool)

(assert (=> b!533590 m!779031))

(declare-fun m!779033 () Bool)

(assert (=> tb!47371 m!779033))

(assert (=> d!188960 t!73944))

(declare-fun b_and!52163 () Bool)

(assert (= b_and!52151 (and (=> t!73944 result!52832) b_and!52163)))

(declare-fun tb!47373 () Bool)

(declare-fun t!73946 () Bool)

(assert (=> (and b!533357 (= (toChars!1642 (transformation!936 (h!10529 rules!3103))) (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))) t!73946) tb!47373))

(declare-fun result!52834 () Bool)

(assert (= result!52834 result!52832))

(assert (=> d!188960 t!73946))

(declare-fun b_and!52165 () Bool)

(assert (= b_and!52153 (and (=> t!73946 result!52834) b_and!52165)))

(declare-fun m!779035 () Bool)

(assert (=> d!188960 m!779035))

(declare-fun m!779037 () Bool)

(assert (=> d!188960 m!779037))

(assert (=> b!533367 d!188960))

(declare-fun d!188962 () Bool)

(assert (=> d!188962 (= (size!4142 token!491) (size!4143 (originalCharacters!975 token!491)))))

(declare-fun Unit!8951 () Unit!8940)

(assert (=> d!188962 (= (lemmaCharactersSize!15 token!491) Unit!8951)))

(declare-fun bs!67235 () Bool)

(assert (= bs!67235 d!188962))

(declare-fun m!779039 () Bool)

(assert (=> bs!67235 m!779039))

(assert (=> b!533367 d!188962))

(declare-fun d!188964 () Bool)

(declare-fun e!321473 () Bool)

(assert (=> d!188964 e!321473))

(declare-fun res!225476 () Bool)

(assert (=> d!188964 (=> (not res!225476) (not e!321473))))

(assert (=> d!188964 (= res!225476 (semiInverseModEq!370 (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))))))

(declare-fun Unit!8952 () Unit!8940)

(assert (=> d!188964 (= (lemmaInv!84 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) Unit!8952)))

(declare-fun b!533591 () Bool)

(assert (=> b!533591 (= e!321473 (equivClasses!353 (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644))))) (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))))))

(assert (= (and d!188964 res!225476) b!533591))

(declare-fun m!779041 () Bool)

(assert (=> d!188964 m!779041))

(declare-fun m!779043 () Bool)

(assert (=> b!533591 m!779043))

(assert (=> b!533367 d!188964))

(declare-fun b!533601 () Bool)

(declare-fun e!321479 () List!5137)

(assert (=> b!533601 (= e!321479 (Cons!5127 (h!10528 lt!219646) (++!1424 (t!73922 lt!219646) (_2!3379 (v!16092 lt!219644)))))))

(declare-fun b!533600 () Bool)

(assert (=> b!533600 (= e!321479 (_2!3379 (v!16092 lt!219644)))))

(declare-fun d!188966 () Bool)

(declare-fun e!321478 () Bool)

(assert (=> d!188966 e!321478))

(declare-fun res!225482 () Bool)

(assert (=> d!188966 (=> (not res!225482) (not e!321478))))

(declare-fun lt!219786 () List!5137)

(declare-fun content!905 (List!5137) (Set C!3462))

(assert (=> d!188966 (= res!225482 (= (content!905 lt!219786) (set.union (content!905 lt!219646) (content!905 (_2!3379 (v!16092 lt!219644))))))))

(assert (=> d!188966 (= lt!219786 e!321479)))

(declare-fun c!101732 () Bool)

(assert (=> d!188966 (= c!101732 (is-Nil!5127 lt!219646))))

(assert (=> d!188966 (= (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644))) lt!219786)))

(declare-fun b!533602 () Bool)

(declare-fun res!225481 () Bool)

(assert (=> b!533602 (=> (not res!225481) (not e!321478))))

(assert (=> b!533602 (= res!225481 (= (size!4143 lt!219786) (+ (size!4143 lt!219646) (size!4143 (_2!3379 (v!16092 lt!219644))))))))

(declare-fun b!533603 () Bool)

(assert (=> b!533603 (= e!321478 (or (not (= (_2!3379 (v!16092 lt!219644)) Nil!5127)) (= lt!219786 lt!219646)))))

(assert (= (and d!188966 c!101732) b!533600))

(assert (= (and d!188966 (not c!101732)) b!533601))

(assert (= (and d!188966 res!225482) b!533602))

(assert (= (and b!533602 res!225481) b!533603))

(declare-fun m!779047 () Bool)

(assert (=> b!533601 m!779047))

(declare-fun m!779049 () Bool)

(assert (=> d!188966 m!779049))

(declare-fun m!779051 () Bool)

(assert (=> d!188966 m!779051))

(declare-fun m!779053 () Bool)

(assert (=> d!188966 m!779053))

(declare-fun m!779055 () Bool)

(assert (=> b!533602 m!779055))

(assert (=> b!533602 m!778761))

(declare-fun m!779057 () Bool)

(assert (=> b!533602 m!779057))

(assert (=> b!533367 d!188966))

(declare-fun b!533605 () Bool)

(declare-fun res!225486 () Bool)

(declare-fun e!321480 () Bool)

(assert (=> b!533605 (=> (not res!225486) (not e!321480))))

(assert (=> b!533605 (= res!225486 (= (head!1169 lt!219646) (head!1169 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644))))))))

(declare-fun b!533606 () Bool)

(assert (=> b!533606 (= e!321480 (isPrefix!578 (tail!698 lt!219646) (tail!698 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644))))))))

(declare-fun b!533607 () Bool)

(declare-fun e!321482 () Bool)

(assert (=> b!533607 (= e!321482 (>= (size!4143 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644)))) (size!4143 lt!219646)))))

(declare-fun d!188970 () Bool)

(assert (=> d!188970 e!321482))

(declare-fun res!225485 () Bool)

(assert (=> d!188970 (=> res!225485 e!321482)))

(declare-fun lt!219787 () Bool)

(assert (=> d!188970 (= res!225485 (not lt!219787))))

(declare-fun e!321481 () Bool)

(assert (=> d!188970 (= lt!219787 e!321481)))

(declare-fun res!225483 () Bool)

(assert (=> d!188970 (=> res!225483 e!321481)))

(assert (=> d!188970 (= res!225483 (is-Nil!5127 lt!219646))))

(assert (=> d!188970 (= (isPrefix!578 lt!219646 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644)))) lt!219787)))

(declare-fun b!533604 () Bool)

(assert (=> b!533604 (= e!321481 e!321480)))

(declare-fun res!225484 () Bool)

(assert (=> b!533604 (=> (not res!225484) (not e!321480))))

(assert (=> b!533604 (= res!225484 (not (is-Nil!5127 (++!1424 lt!219646 (_2!3379 (v!16092 lt!219644))))))))

(assert (= (and d!188970 (not res!225483)) b!533604))

(assert (= (and b!533604 res!225484) b!533605))

(assert (= (and b!533605 res!225486) b!533606))

(assert (= (and d!188970 (not res!225485)) b!533607))

(declare-fun m!779059 () Bool)

(assert (=> b!533605 m!779059))

(assert (=> b!533605 m!778735))

(declare-fun m!779061 () Bool)

(assert (=> b!533605 m!779061))

(declare-fun m!779063 () Bool)

(assert (=> b!533606 m!779063))

(assert (=> b!533606 m!778735))

(declare-fun m!779065 () Bool)

(assert (=> b!533606 m!779065))

(assert (=> b!533606 m!779063))

(assert (=> b!533606 m!779065))

(declare-fun m!779067 () Bool)

(assert (=> b!533606 m!779067))

(assert (=> b!533607 m!778735))

(declare-fun m!779069 () Bool)

(assert (=> b!533607 m!779069))

(assert (=> b!533607 m!778761))

(assert (=> b!533367 d!188970))

(declare-fun d!188972 () Bool)

(declare-fun res!225495 () Bool)

(declare-fun e!321487 () Bool)

(assert (=> d!188972 (=> (not res!225495) (not e!321487))))

(assert (=> d!188972 (= res!225495 (not (isEmpty!3709 (originalCharacters!975 token!491))))))

(assert (=> d!188972 (= (inv!6437 token!491) e!321487)))

(declare-fun b!533616 () Bool)

(declare-fun res!225496 () Bool)

(assert (=> b!533616 (=> (not res!225496) (not e!321487))))

(assert (=> b!533616 (= res!225496 (= (originalCharacters!975 token!491) (list!2132 (dynLambda!3074 (toChars!1642 (transformation!936 (rule!1638 token!491))) (value!31544 token!491)))))))

(declare-fun b!533617 () Bool)

(assert (=> b!533617 (= e!321487 (= (size!4142 token!491) (size!4143 (originalCharacters!975 token!491))))))

(assert (= (and d!188972 res!225495) b!533616))

(assert (= (and b!533616 res!225496) b!533617))

(declare-fun b_lambda!20609 () Bool)

(assert (=> (not b_lambda!20609) (not b!533616)))

(assert (=> b!533616 t!73932))

(declare-fun b_and!52167 () Bool)

(assert (= b_and!52163 (and (=> t!73932 result!52816) b_and!52167)))

(assert (=> b!533616 t!73934))

(declare-fun b_and!52169 () Bool)

(assert (= b_and!52165 (and (=> t!73934 result!52820) b_and!52169)))

(declare-fun m!779071 () Bool)

(assert (=> d!188972 m!779071))

(assert (=> b!533616 m!778955))

(assert (=> b!533616 m!778955))

(declare-fun m!779073 () Bool)

(assert (=> b!533616 m!779073))

(assert (=> b!533617 m!779039))

(assert (=> start!49054 d!188972))

(declare-fun b!533619 () Bool)

(declare-fun e!321489 () List!5137)

(assert (=> b!533619 (= e!321489 (Cons!5127 (h!10528 lt!219658) (++!1424 (t!73922 lt!219658) suffix!1342)))))

(declare-fun b!533618 () Bool)

(assert (=> b!533618 (= e!321489 suffix!1342)))

(declare-fun d!188974 () Bool)

(declare-fun e!321488 () Bool)

(assert (=> d!188974 e!321488))

(declare-fun res!225498 () Bool)

(assert (=> d!188974 (=> (not res!225498) (not e!321488))))

(declare-fun lt!219788 () List!5137)

(assert (=> d!188974 (= res!225498 (= (content!905 lt!219788) (set.union (content!905 lt!219658) (content!905 suffix!1342))))))

(assert (=> d!188974 (= lt!219788 e!321489)))

(declare-fun c!101733 () Bool)

(assert (=> d!188974 (= c!101733 (is-Nil!5127 lt!219658))))

(assert (=> d!188974 (= (++!1424 lt!219658 suffix!1342) lt!219788)))

(declare-fun b!533620 () Bool)

(declare-fun res!225497 () Bool)

(assert (=> b!533620 (=> (not res!225497) (not e!321488))))

(assert (=> b!533620 (= res!225497 (= (size!4143 lt!219788) (+ (size!4143 lt!219658) (size!4143 suffix!1342))))))

(declare-fun b!533621 () Bool)

(assert (=> b!533621 (= e!321488 (or (not (= suffix!1342 Nil!5127)) (= lt!219788 lt!219658)))))

(assert (= (and d!188974 c!101733) b!533618))

(assert (= (and d!188974 (not c!101733)) b!533619))

(assert (= (and d!188974 res!225498) b!533620))

(assert (= (and b!533620 res!225497) b!533621))

(declare-fun m!779075 () Bool)

(assert (=> b!533619 m!779075))

(declare-fun m!779077 () Bool)

(assert (=> d!188974 m!779077))

(declare-fun m!779079 () Bool)

(assert (=> d!188974 m!779079))

(declare-fun m!779081 () Bool)

(assert (=> d!188974 m!779081))

(declare-fun m!779083 () Bool)

(assert (=> b!533620 m!779083))

(assert (=> b!533620 m!778731))

(declare-fun m!779085 () Bool)

(assert (=> b!533620 m!779085))

(assert (=> b!533358 d!188974))

(declare-fun d!188976 () Bool)

(declare-fun res!225503 () Bool)

(declare-fun e!321493 () Bool)

(assert (=> d!188976 (=> (not res!225503) (not e!321493))))

(declare-fun rulesValid!335 (LexerInterface!822 List!5138) Bool)

(assert (=> d!188976 (= res!225503 (rulesValid!335 thiss!22590 rules!3103))))

(assert (=> d!188976 (= (rulesInvariant!785 thiss!22590 rules!3103) e!321493)))

(declare-fun b!533626 () Bool)

(declare-datatypes ((List!5142 0))(
  ( (Nil!5132) (Cons!5132 (h!10533 String!6545) (t!73963 List!5142)) )
))
(declare-fun noDuplicateTag!335 (LexerInterface!822 List!5138 List!5142) Bool)

(assert (=> b!533626 (= e!321493 (noDuplicateTag!335 thiss!22590 rules!3103 Nil!5132))))

(assert (= (and d!188976 res!225503) b!533626))

(declare-fun m!779091 () Bool)

(assert (=> d!188976 m!779091))

(declare-fun m!779093 () Bool)

(assert (=> b!533626 m!779093))

(assert (=> b!533368 d!188976))

(declare-fun d!188980 () Bool)

(assert (=> d!188980 (= (inv!6434 (tag!1198 (h!10529 rules!3103))) (= (mod (str.len (value!31518 (tag!1198 (h!10529 rules!3103)))) 2) 0))))

(assert (=> b!533359 d!188980))

(declare-fun d!188982 () Bool)

(declare-fun res!225504 () Bool)

(declare-fun e!321494 () Bool)

(assert (=> d!188982 (=> (not res!225504) (not e!321494))))

(assert (=> d!188982 (= res!225504 (semiInverseModEq!370 (toChars!1642 (transformation!936 (h!10529 rules!3103))) (toValue!1783 (transformation!936 (h!10529 rules!3103)))))))

(assert (=> d!188982 (= (inv!6438 (transformation!936 (h!10529 rules!3103))) e!321494)))

(declare-fun b!533627 () Bool)

(assert (=> b!533627 (= e!321494 (equivClasses!353 (toChars!1642 (transformation!936 (h!10529 rules!3103))) (toValue!1783 (transformation!936 (h!10529 rules!3103)))))))

(assert (= (and d!188982 res!225504) b!533627))

(declare-fun m!779095 () Bool)

(assert (=> d!188982 m!779095))

(declare-fun m!779097 () Bool)

(assert (=> b!533627 m!779097))

(assert (=> b!533359 d!188982))

(declare-fun d!188984 () Bool)

(assert (=> d!188984 (= (isEmpty!3709 input!2705) (is-Nil!5127 input!2705))))

(assert (=> b!533369 d!188984))

(declare-fun d!188986 () Bool)

(assert (=> d!188986 (= (isDefined!1098 lt!219645) (not (isEmpty!3712 lt!219645)))))

(declare-fun bs!67237 () Bool)

(assert (= bs!67237 d!188986))

(declare-fun m!779099 () Bool)

(assert (=> bs!67237 m!779099))

(assert (=> b!533362 d!188986))

(declare-fun b!533628 () Bool)

(declare-fun res!225508 () Bool)

(declare-fun e!321495 () Bool)

(assert (=> b!533628 (=> (not res!225508) (not e!321495))))

(declare-fun lt!219791 () Option!1286)

(assert (=> b!533628 (= res!225508 (< (size!4143 (_2!3379 (get!1919 lt!219791))) (size!4143 lt!219659)))))

(declare-fun b!533629 () Bool)

(declare-fun e!321497 () Bool)

(assert (=> b!533629 (= e!321497 e!321495)))

(declare-fun res!225507 () Bool)

(assert (=> b!533629 (=> (not res!225507) (not e!321495))))

(assert (=> b!533629 (= res!225507 (isDefined!1098 lt!219791))))

(declare-fun b!533630 () Bool)

(assert (=> b!533630 (= e!321495 (contains!1194 rules!3103 (rule!1638 (_1!3379 (get!1919 lt!219791)))))))

(declare-fun b!533631 () Bool)

(declare-fun res!225509 () Bool)

(assert (=> b!533631 (=> (not res!225509) (not e!321495))))

(assert (=> b!533631 (= res!225509 (= (value!31544 (_1!3379 (get!1919 lt!219791))) (apply!1211 (transformation!936 (rule!1638 (_1!3379 (get!1919 lt!219791)))) (seqFromList!1134 (originalCharacters!975 (_1!3379 (get!1919 lt!219791)))))))))

(declare-fun bm!38178 () Bool)

(declare-fun call!38183 () Option!1286)

(assert (=> bm!38178 (= call!38183 (maxPrefixOneRule!243 thiss!22590 (h!10529 rules!3103) lt!219659))))

(declare-fun d!188988 () Bool)

(assert (=> d!188988 e!321497))

(declare-fun res!225510 () Bool)

(assert (=> d!188988 (=> res!225510 e!321497)))

(assert (=> d!188988 (= res!225510 (isEmpty!3712 lt!219791))))

(declare-fun e!321496 () Option!1286)

(assert (=> d!188988 (= lt!219791 e!321496)))

(declare-fun c!101734 () Bool)

(assert (=> d!188988 (= c!101734 (and (is-Cons!5128 rules!3103) (is-Nil!5128 (t!73923 rules!3103))))))

(declare-fun lt!219793 () Unit!8940)

(declare-fun lt!219789 () Unit!8940)

(assert (=> d!188988 (= lt!219793 lt!219789)))

(assert (=> d!188988 (isPrefix!578 lt!219659 lt!219659)))

(assert (=> d!188988 (= lt!219789 (lemmaIsPrefixRefl!318 lt!219659 lt!219659))))

(assert (=> d!188988 (rulesValidInductive!325 thiss!22590 rules!3103)))

(assert (=> d!188988 (= (maxPrefix!520 thiss!22590 rules!3103 lt!219659) lt!219791)))

(declare-fun b!533632 () Bool)

(declare-fun res!225506 () Bool)

(assert (=> b!533632 (=> (not res!225506) (not e!321495))))

(assert (=> b!533632 (= res!225506 (= (list!2132 (charsOf!565 (_1!3379 (get!1919 lt!219791)))) (originalCharacters!975 (_1!3379 (get!1919 lt!219791)))))))

(declare-fun b!533633 () Bool)

(declare-fun res!225505 () Bool)

(assert (=> b!533633 (=> (not res!225505) (not e!321495))))

(assert (=> b!533633 (= res!225505 (= (++!1424 (list!2132 (charsOf!565 (_1!3379 (get!1919 lt!219791)))) (_2!3379 (get!1919 lt!219791))) lt!219659))))

(declare-fun b!533634 () Bool)

(assert (=> b!533634 (= e!321496 call!38183)))

(declare-fun b!533635 () Bool)

(declare-fun res!225511 () Bool)

(assert (=> b!533635 (=> (not res!225511) (not e!321495))))

(assert (=> b!533635 (= res!225511 (matchR!443 (regex!936 (rule!1638 (_1!3379 (get!1919 lt!219791)))) (list!2132 (charsOf!565 (_1!3379 (get!1919 lt!219791))))))))

(declare-fun b!533636 () Bool)

(declare-fun lt!219792 () Option!1286)

(declare-fun lt!219790 () Option!1286)

(assert (=> b!533636 (= e!321496 (ite (and (is-None!1285 lt!219792) (is-None!1285 lt!219790)) None!1285 (ite (is-None!1285 lt!219790) lt!219792 (ite (is-None!1285 lt!219792) lt!219790 (ite (>= (size!4142 (_1!3379 (v!16092 lt!219792))) (size!4142 (_1!3379 (v!16092 lt!219790)))) lt!219792 lt!219790)))))))

(assert (=> b!533636 (= lt!219792 call!38183)))

(assert (=> b!533636 (= lt!219790 (maxPrefix!520 thiss!22590 (t!73923 rules!3103) lt!219659))))

(assert (= (and d!188988 c!101734) b!533634))

(assert (= (and d!188988 (not c!101734)) b!533636))

(assert (= (or b!533634 b!533636) bm!38178))

(assert (= (and d!188988 (not res!225510)) b!533629))

(assert (= (and b!533629 res!225507) b!533632))

(assert (= (and b!533632 res!225506) b!533628))

(assert (= (and b!533628 res!225508) b!533633))

(assert (= (and b!533633 res!225505) b!533631))

(assert (= (and b!533631 res!225509) b!533635))

(assert (= (and b!533635 res!225511) b!533630))

(declare-fun m!779101 () Bool)

(assert (=> d!188988 m!779101))

(declare-fun m!779103 () Bool)

(assert (=> d!188988 m!779103))

(declare-fun m!779105 () Bool)

(assert (=> d!188988 m!779105))

(assert (=> d!188988 m!778897))

(declare-fun m!779107 () Bool)

(assert (=> b!533631 m!779107))

(declare-fun m!779109 () Bool)

(assert (=> b!533631 m!779109))

(assert (=> b!533631 m!779109))

(declare-fun m!779111 () Bool)

(assert (=> b!533631 m!779111))

(declare-fun m!779113 () Bool)

(assert (=> bm!38178 m!779113))

(assert (=> b!533632 m!779107))

(declare-fun m!779115 () Bool)

(assert (=> b!533632 m!779115))

(assert (=> b!533632 m!779115))

(declare-fun m!779117 () Bool)

(assert (=> b!533632 m!779117))

(declare-fun m!779119 () Bool)

(assert (=> b!533629 m!779119))

(assert (=> b!533630 m!779107))

(declare-fun m!779121 () Bool)

(assert (=> b!533630 m!779121))

(assert (=> b!533628 m!779107))

(declare-fun m!779123 () Bool)

(assert (=> b!533628 m!779123))

(declare-fun m!779125 () Bool)

(assert (=> b!533628 m!779125))

(assert (=> b!533635 m!779107))

(assert (=> b!533635 m!779115))

(assert (=> b!533635 m!779115))

(assert (=> b!533635 m!779117))

(assert (=> b!533635 m!779117))

(declare-fun m!779127 () Bool)

(assert (=> b!533635 m!779127))

(assert (=> b!533633 m!779107))

(assert (=> b!533633 m!779115))

(assert (=> b!533633 m!779115))

(assert (=> b!533633 m!779117))

(assert (=> b!533633 m!779117))

(declare-fun m!779131 () Bool)

(assert (=> b!533633 m!779131))

(declare-fun m!779135 () Bool)

(assert (=> b!533636 m!779135))

(assert (=> b!533362 d!188988))

(declare-fun b!533638 () Bool)

(declare-fun e!321499 () List!5137)

(assert (=> b!533638 (= e!321499 (Cons!5127 (h!10528 input!2705) (++!1424 (t!73922 input!2705) suffix!1342)))))

(declare-fun b!533637 () Bool)

(assert (=> b!533637 (= e!321499 suffix!1342)))

(declare-fun d!188990 () Bool)

(declare-fun e!321498 () Bool)

(assert (=> d!188990 e!321498))

(declare-fun res!225513 () Bool)

(assert (=> d!188990 (=> (not res!225513) (not e!321498))))

(declare-fun lt!219797 () List!5137)

(assert (=> d!188990 (= res!225513 (= (content!905 lt!219797) (set.union (content!905 input!2705) (content!905 suffix!1342))))))

(assert (=> d!188990 (= lt!219797 e!321499)))

(declare-fun c!101735 () Bool)

(assert (=> d!188990 (= c!101735 (is-Nil!5127 input!2705))))

(assert (=> d!188990 (= (++!1424 input!2705 suffix!1342) lt!219797)))

(declare-fun b!533639 () Bool)

(declare-fun res!225512 () Bool)

(assert (=> b!533639 (=> (not res!225512) (not e!321498))))

(assert (=> b!533639 (= res!225512 (= (size!4143 lt!219797) (+ (size!4143 input!2705) (size!4143 suffix!1342))))))

(declare-fun b!533640 () Bool)

(assert (=> b!533640 (= e!321498 (or (not (= suffix!1342 Nil!5127)) (= lt!219797 input!2705)))))

(assert (= (and d!188990 c!101735) b!533637))

(assert (= (and d!188990 (not c!101735)) b!533638))

(assert (= (and d!188990 res!225513) b!533639))

(assert (= (and b!533639 res!225512) b!533640))

(declare-fun m!779137 () Bool)

(assert (=> b!533638 m!779137))

(declare-fun m!779139 () Bool)

(assert (=> d!188990 m!779139))

(declare-fun m!779141 () Bool)

(assert (=> d!188990 m!779141))

(assert (=> d!188990 m!779081))

(declare-fun m!779143 () Bool)

(assert (=> b!533639 m!779143))

(assert (=> b!533639 m!778753))

(assert (=> b!533639 m!779085))

(assert (=> b!533362 d!188990))

(declare-fun b!533644 () Bool)

(declare-fun res!225519 () Bool)

(declare-fun e!321501 () Bool)

(assert (=> b!533644 (=> (not res!225519) (not e!321501))))

(assert (=> b!533644 (= res!225519 (= (head!1169 lt!219646) (head!1169 input!2705)))))

(declare-fun b!533645 () Bool)

(assert (=> b!533645 (= e!321501 (isPrefix!578 (tail!698 lt!219646) (tail!698 input!2705)))))

(declare-fun b!533646 () Bool)

(declare-fun e!321503 () Bool)

(assert (=> b!533646 (= e!321503 (>= (size!4143 input!2705) (size!4143 lt!219646)))))

(declare-fun d!188994 () Bool)

(assert (=> d!188994 e!321503))

(declare-fun res!225518 () Bool)

(assert (=> d!188994 (=> res!225518 e!321503)))

(declare-fun lt!219798 () Bool)

(assert (=> d!188994 (= res!225518 (not lt!219798))))

(declare-fun e!321502 () Bool)

(assert (=> d!188994 (= lt!219798 e!321502)))

(declare-fun res!225516 () Bool)

(assert (=> d!188994 (=> res!225516 e!321502)))

(assert (=> d!188994 (= res!225516 (is-Nil!5127 lt!219646))))

(assert (=> d!188994 (= (isPrefix!578 lt!219646 input!2705) lt!219798)))

(declare-fun b!533643 () Bool)

(assert (=> b!533643 (= e!321502 e!321501)))

(declare-fun res!225517 () Bool)

(assert (=> b!533643 (=> (not res!225517) (not e!321501))))

(assert (=> b!533643 (= res!225517 (not (is-Nil!5127 input!2705)))))

(assert (= (and d!188994 (not res!225516)) b!533643))

(assert (= (and b!533643 res!225517) b!533644))

(assert (= (and b!533644 res!225519) b!533645))

(assert (= (and d!188994 (not res!225518)) b!533646))

(assert (=> b!533644 m!779059))

(assert (=> b!533644 m!778981))

(assert (=> b!533645 m!779063))

(assert (=> b!533645 m!778985))

(assert (=> b!533645 m!779063))

(assert (=> b!533645 m!778985))

(declare-fun m!779149 () Bool)

(assert (=> b!533645 m!779149))

(assert (=> b!533646 m!778753))

(assert (=> b!533646 m!778761))

(assert (=> b!533372 d!188994))

(declare-fun d!188998 () Bool)

(assert (=> d!188998 (= (get!1919 lt!219645) (v!16092 lt!219645))))

(assert (=> b!533361 d!188998))

(declare-fun b!533653 () Bool)

(declare-fun e!321507 () Bool)

(declare-fun tp!170263 () Bool)

(assert (=> b!533653 (= e!321507 (and tp_is_empty!2895 tp!170263))))

(assert (=> b!533352 (= tp!170220 e!321507)))

(assert (= (and b!533352 (is-Cons!5127 (t!73922 input!2705))) b!533653))

(declare-fun e!321510 () Bool)

(assert (=> b!533373 (= tp!170218 e!321510)))

(declare-fun b!533664 () Bool)

(assert (=> b!533664 (= e!321510 tp_is_empty!2895)))

(declare-fun b!533666 () Bool)

(declare-fun tp!170278 () Bool)

(assert (=> b!533666 (= e!321510 tp!170278)))

(declare-fun b!533665 () Bool)

(declare-fun tp!170277 () Bool)

(declare-fun tp!170274 () Bool)

(assert (=> b!533665 (= e!321510 (and tp!170277 tp!170274))))

(declare-fun b!533667 () Bool)

(declare-fun tp!170275 () Bool)

(declare-fun tp!170276 () Bool)

(assert (=> b!533667 (= e!321510 (and tp!170275 tp!170276))))

(assert (= (and b!533373 (is-ElementMatch!1270 (regex!936 (rule!1638 token!491)))) b!533664))

(assert (= (and b!533373 (is-Concat!2230 (regex!936 (rule!1638 token!491)))) b!533665))

(assert (= (and b!533373 (is-Star!1270 (regex!936 (rule!1638 token!491)))) b!533666))

(assert (= (and b!533373 (is-Union!1270 (regex!936 (rule!1638 token!491)))) b!533667))

(declare-fun b!533681 () Bool)

(declare-fun b_free!14497 () Bool)

(declare-fun b_next!14513 () Bool)

(assert (=> b!533681 (= b_free!14497 (not b_next!14513))))

(declare-fun tb!47375 () Bool)

(declare-fun t!73948 () Bool)

(assert (=> (and b!533681 (= (toValue!1783 (transformation!936 (h!10529 (t!73923 rules!3103)))) (toValue!1783 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))) t!73948) tb!47375))

(declare-fun result!52842 () Bool)

(assert (= result!52842 result!52826))

(assert (=> d!188940 t!73948))

(declare-fun tp!170287 () Bool)

(declare-fun b_and!52171 () Bool)

(assert (=> b!533681 (= tp!170287 (and (=> t!73948 result!52842) b_and!52171))))

(declare-fun b_free!14499 () Bool)

(declare-fun b_next!14515 () Bool)

(assert (=> b!533681 (= b_free!14499 (not b_next!14515))))

(declare-fun t!73950 () Bool)

(declare-fun tb!47377 () Bool)

(assert (=> (and b!533681 (= (toChars!1642 (transformation!936 (h!10529 (t!73923 rules!3103)))) (toChars!1642 (transformation!936 (rule!1638 token!491)))) t!73950) tb!47377))

(declare-fun result!52844 () Bool)

(assert (= result!52844 result!52816))

(assert (=> d!188910 t!73950))

(declare-fun t!73952 () Bool)

(declare-fun tb!47379 () Bool)

(assert (=> (and b!533681 (= (toChars!1642 (transformation!936 (h!10529 (t!73923 rules!3103)))) (toChars!1642 (transformation!936 (rule!1638 (_1!3379 (v!16092 lt!219644)))))) t!73952) tb!47379))

(declare-fun result!52846 () Bool)

(assert (= result!52846 result!52832))

(assert (=> d!188960 t!73952))

(assert (=> b!533616 t!73950))

(declare-fun b_and!52173 () Bool)

(declare-fun tp!170290 () Bool)

(assert (=> b!533681 (= tp!170290 (and (=> t!73950 result!52844) (=> t!73952 result!52846) b_and!52173))))

(declare-fun e!321523 () Bool)

(assert (=> b!533681 (= e!321523 (and tp!170287 tp!170290))))

(declare-fun e!321521 () Bool)

(declare-fun tp!170289 () Bool)

(declare-fun b!533680 () Bool)

(assert (=> b!533680 (= e!321521 (and tp!170289 (inv!6434 (tag!1198 (h!10529 (t!73923 rules!3103)))) (inv!6438 (transformation!936 (h!10529 (t!73923 rules!3103)))) e!321523))))

(declare-fun b!533679 () Bool)

(declare-fun e!321524 () Bool)

(declare-fun tp!170288 () Bool)

(assert (=> b!533679 (= e!321524 (and e!321521 tp!170288))))

(assert (=> b!533370 (= tp!170213 e!321524)))

(assert (= b!533680 b!533681))

(assert (= b!533679 b!533680))

(assert (= (and b!533370 (is-Cons!5128 (t!73923 rules!3103))) b!533679))

(declare-fun m!779161 () Bool)

(assert (=> b!533680 m!779161))

(declare-fun m!779163 () Bool)

(assert (=> b!533680 m!779163))

(declare-fun e!321525 () Bool)

(assert (=> b!533359 (= tp!170217 e!321525)))

(declare-fun b!533682 () Bool)

(assert (=> b!533682 (= e!321525 tp_is_empty!2895)))

(declare-fun b!533684 () Bool)

(declare-fun tp!170295 () Bool)

(assert (=> b!533684 (= e!321525 tp!170295)))

(declare-fun b!533683 () Bool)

(declare-fun tp!170294 () Bool)

(declare-fun tp!170291 () Bool)

(assert (=> b!533683 (= e!321525 (and tp!170294 tp!170291))))

(declare-fun b!533685 () Bool)

(declare-fun tp!170292 () Bool)

(declare-fun tp!170293 () Bool)

(assert (=> b!533685 (= e!321525 (and tp!170292 tp!170293))))

(assert (= (and b!533359 (is-ElementMatch!1270 (regex!936 (h!10529 rules!3103)))) b!533682))

(assert (= (and b!533359 (is-Concat!2230 (regex!936 (h!10529 rules!3103)))) b!533683))

(assert (= (and b!533359 (is-Star!1270 (regex!936 (h!10529 rules!3103)))) b!533684))

(assert (= (and b!533359 (is-Union!1270 (regex!936 (h!10529 rules!3103)))) b!533685))

(declare-fun b!533686 () Bool)

(declare-fun e!321526 () Bool)

(declare-fun tp!170296 () Bool)

(assert (=> b!533686 (= e!321526 (and tp_is_empty!2895 tp!170296))))

(assert (=> b!533364 (= tp!170222 e!321526)))

(assert (= (and b!533364 (is-Cons!5127 (originalCharacters!975 token!491))) b!533686))

(declare-fun b!533687 () Bool)

(declare-fun e!321527 () Bool)

(declare-fun tp!170297 () Bool)

(assert (=> b!533687 (= e!321527 (and tp_is_empty!2895 tp!170297))))

(assert (=> b!533356 (= tp!170215 e!321527)))

(assert (= (and b!533356 (is-Cons!5127 (t!73922 suffix!1342))) b!533687))

(declare-fun b_lambda!20611 () Bool)

(assert (= b_lambda!20609 (or (and b!533365 b_free!14483) (and b!533357 b_free!14487 (= (toChars!1642 (transformation!936 (h!10529 rules!3103))) (toChars!1642 (transformation!936 (rule!1638 token!491))))) (and b!533681 b_free!14499 (= (toChars!1642 (transformation!936 (h!10529 (t!73923 rules!3103)))) (toChars!1642 (transformation!936 (rule!1638 token!491))))) b_lambda!20611)))

(declare-fun b_lambda!20613 () Bool)

(assert (= b_lambda!20601 (or (and b!533365 b_free!14483) (and b!533357 b_free!14487 (= (toChars!1642 (transformation!936 (h!10529 rules!3103))) (toChars!1642 (transformation!936 (rule!1638 token!491))))) (and b!533681 b_free!14499 (= (toChars!1642 (transformation!936 (h!10529 (t!73923 rules!3103)))) (toChars!1642 (transformation!936 (rule!1638 token!491))))) b_lambda!20613)))

(push 1)

(assert (not d!188974))

(assert (not b!533630))

(assert (not b_next!14501))

(assert (not d!188976))

(assert tp_is_empty!2895)

(assert (not b!533493))

(assert (not b!533639))

(assert (not b!533680))

(assert (not d!188962))

(assert (not b_next!14513))

(assert (not b!533626))

(assert (not bm!38177))

(assert (not d!188934))

(assert (not b!533577))

(assert (not b_next!14497))

(assert b_and!52173)

(assert (not b!533645))

(assert (not d!188966))

(assert (not d!188946))

(assert (not b!533602))

(assert (not d!188950))

(assert (not b!533497))

(assert (not b_lambda!20607))

(assert (not d!188964))

(assert (not d!188914))

(assert (not d!188972))

(assert (not b!533684))

(assert (not b!533496))

(assert (not b!533679))

(assert b_and!52171)

(assert (not b!533666))

(assert (not b!533547))

(assert (not b!533562))

(assert (not b!533525))

(assert (not b_lambda!20613))

(assert (not d!188938))

(assert (not tb!47359))

(assert (not b!533646))

(assert (not b!533495))

(assert (not tb!47371))

(assert (not b!533605))

(assert (not d!188930))

(assert (not b!533516))

(assert b_and!52159)

(assert (not b!533563))

(assert (not b!533636))

(assert (not b!533667))

(assert (not b!533601))

(assert (not b_next!14515))

(assert (not d!188990))

(assert (not b!533569))

(assert (not d!188954))

(assert (not d!188908))

(assert (not b!533541))

(assert (not b!533629))

(assert (not b!533638))

(assert (not b!533685))

(assert (not b!533627))

(assert (not b!533535))

(assert (not b_lambda!20611))

(assert (not b!533686))

(assert (not b!533683))

(assert (not d!188982))

(assert (not b_next!14499))

(assert (not d!188922))

(assert (not b!533665))

(assert (not b!533635))

(assert (not b!533628))

(assert (not b!533591))

(assert (not d!188960))

(assert (not b!533653))

(assert (not b!533644))

(assert (not d!188956))

(assert (not b!533632))

(assert (not b!533589))

(assert (not b!533619))

(assert (not b!533442))

(assert (not b!533616))

(assert (not b!533492))

(assert (not b!533687))

(assert (not d!188986))

(assert (not b!533519))

(assert (not b!533617))

(assert (not b!533590))

(assert (not d!188988))

(assert (not d!188910))

(assert (not tb!47367))

(assert b_and!52169)

(assert (not b!533561))

(assert (not b!533494))

(assert (not b_lambda!20605))

(assert b_and!52167)

(assert (not b!533533))

(assert (not b!533583))

(assert (not b!533631))

(assert (not b!533515))

(assert (not d!188942))

(assert (not b!533499))

(assert (not d!188892))

(assert (not b!533500))

(assert (not d!188932))

(assert (not b!533633))

(assert (not d!188948))

(assert (not d!188890))

(assert (not b!533607))

(assert (not b_next!14503))

(assert (not b!533620))

(assert (not b!533606))

(assert (not bm!38178))

(assert (not d!188916))

(assert b_and!52161)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!14501))

(assert (not b_next!14513))

(assert b_and!52171)

(assert b_and!52159)

(assert (not b_next!14515))

(assert (not b_next!14499))

(assert b_and!52169)

(assert b_and!52167)

(assert b_and!52173)

(assert (not b_next!14497))

(assert (not b_next!14503))

(assert b_and!52161)

(check-sat)

(pop 1)

