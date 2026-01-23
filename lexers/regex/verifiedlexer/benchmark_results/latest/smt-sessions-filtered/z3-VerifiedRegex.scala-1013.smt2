; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50528 () Bool)

(assert start!50528)

(declare-fun b!546472 () Bool)

(declare-fun b_free!15185 () Bool)

(declare-fun b_next!15201 () Bool)

(assert (=> b!546472 (= b_free!15185 (not b_next!15201))))

(declare-fun tp!173441 () Bool)

(declare-fun b_and!53371 () Bool)

(assert (=> b!546472 (= tp!173441 b_and!53371)))

(declare-fun b_free!15187 () Bool)

(declare-fun b_next!15203 () Bool)

(assert (=> b!546472 (= b_free!15187 (not b_next!15203))))

(declare-fun tp!173445 () Bool)

(declare-fun b_and!53373 () Bool)

(assert (=> b!546472 (= tp!173445 b_and!53373)))

(declare-fun b!546470 () Bool)

(declare-fun b_free!15189 () Bool)

(declare-fun b_next!15205 () Bool)

(assert (=> b!546470 (= b_free!15189 (not b_next!15205))))

(declare-fun tp!173440 () Bool)

(declare-fun b_and!53375 () Bool)

(assert (=> b!546470 (= tp!173440 b_and!53375)))

(declare-fun b_free!15191 () Bool)

(declare-fun b_next!15207 () Bool)

(assert (=> b!546470 (= b_free!15191 (not b_next!15207))))

(declare-fun tp!173446 () Bool)

(declare-fun b_and!53377 () Bool)

(assert (=> b!546470 (= tp!173446 b_and!53377)))

(declare-fun b!546443 () Bool)

(declare-fun res!233495 () Bool)

(declare-fun e!330256 () Bool)

(assert (=> b!546443 (=> (not res!233495) (not e!330256))))

(declare-datatypes ((C!3616 0))(
  ( (C!3617 (val!2034 Int)) )
))
(declare-datatypes ((Regex!1347 0))(
  ( (ElementMatch!1347 (c!103010 C!3616)) (Concat!2384 (regOne!3206 Regex!1347) (regTwo!3206 Regex!1347)) (EmptyExpr!1347) (Star!1347 (reg!1676 Regex!1347)) (EmptyLang!1347) (Union!1347 (regOne!3207 Regex!1347) (regTwo!3207 Regex!1347)) )
))
(declare-datatypes ((List!5389 0))(
  ( (Nil!5379) (Cons!5379 (h!10780 (_ BitVec 16)) (t!74762 List!5389)) )
))
(declare-datatypes ((List!5390 0))(
  ( (Nil!5380) (Cons!5380 (h!10781 C!3616) (t!74763 List!5390)) )
))
(declare-datatypes ((IArray!3461 0))(
  ( (IArray!3462 (innerList!1788 List!5390)) )
))
(declare-datatypes ((Conc!1730 0))(
  ( (Node!1730 (left!4457 Conc!1730) (right!4787 Conc!1730) (csize!3690 Int) (cheight!1941 Int)) (Leaf!2744 (xs!4367 IArray!3461) (csize!3691 Int)) (Empty!1730) )
))
(declare-datatypes ((BalanceConc!3468 0))(
  ( (BalanceConc!3469 (c!103011 Conc!1730)) )
))
(declare-datatypes ((TokenValue!1037 0))(
  ( (FloatLiteralValue!2074 (text!7704 List!5389)) (TokenValueExt!1036 (__x!3972 Int)) (Broken!5185 (value!33711 List!5389)) (Object!1046) (End!1037) (Def!1037) (Underscore!1037) (Match!1037) (Else!1037) (Error!1037) (Case!1037) (If!1037) (Extends!1037) (Abstract!1037) (Class!1037) (Val!1037) (DelimiterValue!2074 (del!1097 List!5389)) (KeywordValue!1043 (value!33712 List!5389)) (CommentValue!2074 (value!33713 List!5389)) (WhitespaceValue!2074 (value!33714 List!5389)) (IndentationValue!1037 (value!33715 List!5389)) (String!6928) (Int32!1037) (Broken!5186 (value!33716 List!5389)) (Boolean!1038) (Unit!9446) (OperatorValue!1040 (op!1097 List!5389)) (IdentifierValue!2074 (value!33717 List!5389)) (IdentifierValue!2075 (value!33718 List!5389)) (WhitespaceValue!2075 (value!33719 List!5389)) (True!2074) (False!2074) (Broken!5187 (value!33720 List!5389)) (Broken!5188 (value!33721 List!5389)) (True!2075) (RightBrace!1037) (RightBracket!1037) (Colon!1037) (Null!1037) (Comma!1037) (LeftBracket!1037) (False!2075) (LeftBrace!1037) (ImaginaryLiteralValue!1037 (text!7705 List!5389)) (StringLiteralValue!3111 (value!33722 List!5389)) (EOFValue!1037 (value!33723 List!5389)) (IdentValue!1037 (value!33724 List!5389)) (DelimiterValue!2075 (value!33725 List!5389)) (DedentValue!1037 (value!33726 List!5389)) (NewLineValue!1037 (value!33727 List!5389)) (IntegerValue!3111 (value!33728 (_ BitVec 32)) (text!7706 List!5389)) (IntegerValue!3112 (value!33729 Int) (text!7707 List!5389)) (Times!1037) (Or!1037) (Equal!1037) (Minus!1037) (Broken!5189 (value!33730 List!5389)) (And!1037) (Div!1037) (LessEqual!1037) (Mod!1037) (Concat!2385) (Not!1037) (Plus!1037) (SpaceValue!1037 (value!33731 List!5389)) (IntegerValue!3113 (value!33732 Int) (text!7708 List!5389)) (StringLiteralValue!3112 (text!7709 List!5389)) (FloatLiteralValue!2075 (text!7710 List!5389)) (BytesLiteralValue!1037 (value!33733 List!5389)) (CommentValue!2075 (value!33734 List!5389)) (StringLiteralValue!3113 (value!33735 List!5389)) (ErrorTokenValue!1037 (msg!1098 List!5389)) )
))
(declare-datatypes ((String!6929 0))(
  ( (String!6930 (value!33736 String)) )
))
(declare-datatypes ((TokenValueInjection!1842 0))(
  ( (TokenValueInjection!1843 (toValue!1860 Int) (toChars!1719 Int)) )
))
(declare-datatypes ((Rule!1826 0))(
  ( (Rule!1827 (regex!1013 Regex!1347) (tag!1275 String!6929) (isSeparator!1013 Bool) (transformation!1013 TokenValueInjection!1842)) )
))
(declare-datatypes ((Token!1762 0))(
  ( (Token!1763 (value!33737 TokenValue!1037) (rule!1731 Rule!1826) (size!4312 Int) (originalCharacters!1052 List!5390)) )
))
(declare-datatypes ((tuple2!6416 0))(
  ( (tuple2!6417 (_1!3472 Token!1762) (_2!3472 List!5390)) )
))
(declare-datatypes ((Option!1363 0))(
  ( (None!1362) (Some!1362 (v!16181 tuple2!6416)) )
))
(declare-fun lt!229139 () Option!1363)

(declare-fun get!2034 (Option!1363) tuple2!6416)

(assert (=> b!546443 (= res!233495 (= (_1!3472 (get!2034 lt!229139)) (_1!3472 (v!16181 lt!229139))))))

(declare-fun b!546444 () Bool)

(declare-fun e!330237 () Bool)

(declare-fun e!330248 () Bool)

(assert (=> b!546444 (= e!330237 e!330248)))

(declare-fun res!233476 () Bool)

(assert (=> b!546444 (=> res!233476 e!330248)))

(declare-fun lt!229126 () Int)

(declare-fun lt!229152 () Int)

(assert (=> b!546444 (= res!233476 (>= lt!229126 lt!229152))))

(declare-fun b!546445 () Bool)

(declare-fun e!330242 () Bool)

(declare-fun e!330241 () Bool)

(assert (=> b!546445 (= e!330242 e!330241)))

(declare-fun res!233480 () Bool)

(assert (=> b!546445 (=> (not res!233480) (not e!330241))))

(declare-fun lt!229117 () List!5390)

(declare-fun lt!229140 () List!5390)

(assert (=> b!546445 (= res!233480 (= lt!229117 lt!229140))))

(declare-fun lt!229150 () List!5390)

(declare-fun suffix!1342 () List!5390)

(declare-fun ++!1501 (List!5390 List!5390) List!5390)

(assert (=> b!546445 (= lt!229117 (++!1501 lt!229150 suffix!1342))))

(declare-fun b!546446 () Bool)

(declare-fun e!330247 () Bool)

(assert (=> b!546446 (= e!330247 false)))

(declare-fun e!330234 () Bool)

(declare-fun b!546447 () Bool)

(declare-fun lt!229120 () List!5390)

(declare-fun lt!229115 () List!5390)

(declare-fun lt!229136 () tuple2!6416)

(declare-fun lt!229125 () TokenValue!1037)

(assert (=> b!546447 (= e!330234 (and (= (size!4312 (_1!3472 (v!16181 lt!229139))) lt!229126) (= (originalCharacters!1052 (_1!3472 (v!16181 lt!229139))) lt!229120) (= lt!229136 (tuple2!6417 (Token!1763 lt!229125 (rule!1731 (_1!3472 (v!16181 lt!229139))) lt!229126 lt!229120) lt!229115))))))

(declare-fun b!546448 () Bool)

(declare-fun e!330246 () Bool)

(declare-fun e!330239 () Bool)

(assert (=> b!546448 (= e!330246 e!330239)))

(declare-fun res!233494 () Bool)

(assert (=> b!546448 (=> (not res!233494) (not e!330239))))

(declare-fun lt!229138 () Option!1363)

(declare-fun isDefined!1175 (Option!1363) Bool)

(assert (=> b!546448 (= res!233494 (isDefined!1175 lt!229138))))

(declare-datatypes ((List!5391 0))(
  ( (Nil!5381) (Cons!5381 (h!10782 Rule!1826) (t!74764 List!5391)) )
))
(declare-fun rules!3103 () List!5391)

(declare-datatypes ((LexerInterface!899 0))(
  ( (LexerInterfaceExt!896 (__x!3973 Int)) (Lexer!897) )
))
(declare-fun thiss!22590 () LexerInterface!899)

(declare-fun maxPrefix!597 (LexerInterface!899 List!5391 List!5390) Option!1363)

(assert (=> b!546448 (= lt!229138 (maxPrefix!597 thiss!22590 rules!3103 lt!229140))))

(declare-fun input!2705 () List!5390)

(assert (=> b!546448 (= lt!229140 (++!1501 input!2705 suffix!1342))))

(declare-fun b!546449 () Bool)

(declare-fun res!233486 () Bool)

(declare-fun e!330257 () Bool)

(assert (=> b!546449 (=> (not res!233486) (not e!330257))))

(declare-fun token!491 () Token!1762)

(declare-fun size!4313 (List!5390) Int)

(assert (=> b!546449 (= res!233486 (= (size!4312 token!491) (size!4313 (originalCharacters!1052 token!491))))))

(declare-fun e!330243 () Bool)

(declare-fun e!330258 () Bool)

(declare-fun b!546450 () Bool)

(declare-fun tp!173443 () Bool)

(declare-fun inv!6746 (String!6929) Bool)

(declare-fun inv!6749 (TokenValueInjection!1842) Bool)

(assert (=> b!546450 (= e!330243 (and tp!173443 (inv!6746 (tag!1275 (rule!1731 token!491))) (inv!6749 (transformation!1013 (rule!1731 token!491))) e!330258))))

(declare-fun b!546451 () Bool)

(declare-fun e!330233 () Bool)

(assert (=> b!546451 (= e!330239 e!330233)))

(declare-fun res!233493 () Bool)

(assert (=> b!546451 (=> (not res!233493) (not e!330233))))

(declare-fun lt!229118 () tuple2!6416)

(assert (=> b!546451 (= res!233493 (and (= (_1!3472 lt!229118) token!491) (= (_2!3472 lt!229118) suffix!1342)))))

(assert (=> b!546451 (= lt!229118 (get!2034 lt!229138))))

(declare-fun b!546452 () Bool)

(declare-fun res!233490 () Bool)

(declare-fun e!330245 () Bool)

(assert (=> b!546452 (=> res!233490 e!330245)))

(assert (=> b!546452 (= res!233490 (not (= lt!229138 (Some!1362 (tuple2!6417 token!491 suffix!1342)))))))

(declare-fun b!546453 () Bool)

(assert (=> b!546453 (= e!330233 e!330242)))

(declare-fun res!233485 () Bool)

(assert (=> b!546453 (=> (not res!233485) (not e!330242))))

(get-info :version)

(assert (=> b!546453 (= res!233485 ((_ is Some!1362) lt!229139))))

(assert (=> b!546453 (= lt!229139 (maxPrefix!597 thiss!22590 rules!3103 input!2705))))

(declare-fun b!546454 () Bool)

(declare-fun e!330236 () Bool)

(assert (=> b!546454 (= e!330241 (not e!330236))))

(declare-fun res!233488 () Bool)

(assert (=> b!546454 (=> res!233488 e!330236)))

(declare-fun isPrefix!655 (List!5390 List!5390) Bool)

(assert (=> b!546454 (= res!233488 (not (isPrefix!655 input!2705 lt!229117)))))

(assert (=> b!546454 (isPrefix!655 lt!229150 lt!229117)))

(declare-datatypes ((Unit!9447 0))(
  ( (Unit!9448) )
))
(declare-fun lt!229137 () Unit!9447)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!506 (List!5390 List!5390) Unit!9447)

(assert (=> b!546454 (= lt!229137 (lemmaConcatTwoListThenFirstIsPrefix!506 lt!229150 suffix!1342))))

(assert (=> b!546454 (isPrefix!655 input!2705 lt!229140)))

(declare-fun lt!229134 () Unit!9447)

(assert (=> b!546454 (= lt!229134 (lemmaConcatTwoListThenFirstIsPrefix!506 input!2705 suffix!1342))))

(assert (=> b!546454 e!330234))

(declare-fun res!233479 () Bool)

(assert (=> b!546454 (=> (not res!233479) (not e!330234))))

(assert (=> b!546454 (= res!233479 (= (value!33737 (_1!3472 (v!16181 lt!229139))) lt!229125))))

(declare-fun lt!229130 () BalanceConc!3468)

(declare-fun apply!1288 (TokenValueInjection!1842 BalanceConc!3468) TokenValue!1037)

(assert (=> b!546454 (= lt!229125 (apply!1288 (transformation!1013 (rule!1731 (_1!3472 (v!16181 lt!229139)))) lt!229130))))

(declare-fun seqFromList!1211 (List!5390) BalanceConc!3468)

(assert (=> b!546454 (= lt!229130 (seqFromList!1211 lt!229120))))

(declare-fun lt!229129 () Unit!9447)

(declare-fun lemmaInv!161 (TokenValueInjection!1842) Unit!9447)

(assert (=> b!546454 (= lt!229129 (lemmaInv!161 (transformation!1013 (rule!1731 token!491))))))

(declare-fun lt!229144 () Unit!9447)

(assert (=> b!546454 (= lt!229144 (lemmaInv!161 (transformation!1013 (rule!1731 (_1!3472 (v!16181 lt!229139))))))))

(declare-fun ruleValid!233 (LexerInterface!899 Rule!1826) Bool)

(assert (=> b!546454 (ruleValid!233 thiss!22590 (rule!1731 token!491))))

(declare-fun lt!229116 () Unit!9447)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!92 (LexerInterface!899 Rule!1826 List!5391) Unit!9447)

(assert (=> b!546454 (= lt!229116 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!92 thiss!22590 (rule!1731 token!491) rules!3103))))

(assert (=> b!546454 (ruleValid!233 thiss!22590 (rule!1731 (_1!3472 (v!16181 lt!229139))))))

(declare-fun lt!229146 () Unit!9447)

(assert (=> b!546454 (= lt!229146 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!92 thiss!22590 (rule!1731 (_1!3472 (v!16181 lt!229139))) rules!3103))))

(assert (=> b!546454 (isPrefix!655 input!2705 input!2705)))

(declare-fun lt!229132 () Unit!9447)

(declare-fun lemmaIsPrefixRefl!395 (List!5390 List!5390) Unit!9447)

(assert (=> b!546454 (= lt!229132 (lemmaIsPrefixRefl!395 input!2705 input!2705))))

(assert (=> b!546454 (= (_2!3472 (v!16181 lt!229139)) lt!229115)))

(declare-fun lt!229147 () Unit!9447)

(declare-fun lemmaSamePrefixThenSameSuffix!382 (List!5390 List!5390 List!5390 List!5390 List!5390) Unit!9447)

(assert (=> b!546454 (= lt!229147 (lemmaSamePrefixThenSameSuffix!382 lt!229120 (_2!3472 (v!16181 lt!229139)) lt!229120 lt!229115 input!2705))))

(declare-fun getSuffix!178 (List!5390 List!5390) List!5390)

(assert (=> b!546454 (= lt!229115 (getSuffix!178 input!2705 lt!229120))))

(declare-fun lt!229128 () List!5390)

(assert (=> b!546454 (isPrefix!655 lt!229120 lt!229128)))

(assert (=> b!546454 (= lt!229128 (++!1501 lt!229120 (_2!3472 (v!16181 lt!229139))))))

(declare-fun lt!229151 () Unit!9447)

(assert (=> b!546454 (= lt!229151 (lemmaConcatTwoListThenFirstIsPrefix!506 lt!229120 (_2!3472 (v!16181 lt!229139))))))

(declare-fun lt!229142 () Unit!9447)

(declare-fun lemmaCharactersSize!92 (Token!1762) Unit!9447)

(assert (=> b!546454 (= lt!229142 (lemmaCharactersSize!92 token!491))))

(declare-fun lt!229141 () Unit!9447)

(assert (=> b!546454 (= lt!229141 (lemmaCharactersSize!92 (_1!3472 (v!16181 lt!229139))))))

(declare-fun lt!229133 () Unit!9447)

(declare-fun e!330235 () Unit!9447)

(assert (=> b!546454 (= lt!229133 e!330235)))

(declare-fun c!103009 () Bool)

(assert (=> b!546454 (= c!103009 (> lt!229126 lt!229152))))

(assert (=> b!546454 (= lt!229152 (size!4313 lt!229150))))

(assert (=> b!546454 (= lt!229126 (size!4313 lt!229120))))

(declare-fun list!2231 (BalanceConc!3468) List!5390)

(declare-fun charsOf!642 (Token!1762) BalanceConc!3468)

(assert (=> b!546454 (= lt!229120 (list!2231 (charsOf!642 (_1!3472 (v!16181 lt!229139)))))))

(assert (=> b!546454 (= lt!229139 (Some!1362 lt!229136))))

(assert (=> b!546454 (= lt!229136 (tuple2!6417 (_1!3472 (v!16181 lt!229139)) (_2!3472 (v!16181 lt!229139))))))

(declare-fun lt!229119 () Unit!9447)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!98 (List!5390 List!5390 List!5390 List!5390) Unit!9447)

(assert (=> b!546454 (= lt!229119 (lemmaConcatSameAndSameSizesThenSameLists!98 lt!229150 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!546456 () Bool)

(declare-fun e!330251 () Unit!9447)

(declare-fun Unit!9449 () Unit!9447)

(assert (=> b!546456 (= e!330251 Unit!9449)))

(declare-fun lt!229153 () Unit!9447)

(declare-fun lemmaSemiInverse!142 (TokenValueInjection!1842 BalanceConc!3468) Unit!9447)

(assert (=> b!546456 (= lt!229153 (lemmaSemiInverse!142 (transformation!1013 (rule!1731 (_1!3472 (v!16181 lt!229139)))) lt!229130))))

(declare-fun lt!229122 () Unit!9447)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!18 (LexerInterface!899 List!5391 Rule!1826 List!5390 List!5390 List!5390 Rule!1826) Unit!9447)

(assert (=> b!546456 (= lt!229122 (lemmaMaxPrefixOutputsMaxPrefix!18 thiss!22590 rules!3103 (rule!1731 (_1!3472 (v!16181 lt!229139))) lt!229120 input!2705 input!2705 (rule!1731 token!491)))))

(declare-fun res!233475 () Bool)

(declare-fun matchR!506 (Regex!1347 List!5390) Bool)

(assert (=> b!546456 (= res!233475 (not (matchR!506 (regex!1013 (rule!1731 token!491)) input!2705)))))

(assert (=> b!546456 (=> (not res!233475) (not e!330247))))

(assert (=> b!546456 e!330247))

(declare-fun b!546457 () Bool)

(declare-fun Unit!9450 () Unit!9447)

(assert (=> b!546457 (= e!330235 Unit!9450)))

(assert (=> b!546457 false))

(declare-fun b!546458 () Bool)

(declare-fun res!233478 () Bool)

(assert (=> b!546458 (=> res!233478 e!330245)))

(declare-fun contains!1255 (List!5391 Rule!1826) Bool)

(assert (=> b!546458 (= res!233478 (not (contains!1255 rules!3103 (rule!1731 token!491))))))

(declare-fun b!546459 () Bool)

(declare-fun Unit!9451 () Unit!9447)

(assert (=> b!546459 (= e!330251 Unit!9451)))

(declare-fun b!546460 () Bool)

(declare-fun res!233487 () Bool)

(declare-fun e!330238 () Bool)

(assert (=> b!546460 (=> (not res!233487) (not e!330238))))

(declare-fun isEmpty!3884 (List!5390) Bool)

(assert (=> b!546460 (= res!233487 (not (isEmpty!3884 input!2705)))))

(declare-fun b!546461 () Bool)

(assert (=> b!546461 (= e!330236 e!330245)))

(declare-fun res!233470 () Bool)

(assert (=> b!546461 (=> res!233470 e!330245)))

(assert (=> b!546461 (= res!233470 (or (not (= lt!229126 lt!229152)) (not (= lt!229128 input!2705)) (not (= lt!229128 lt!229150))))))

(declare-fun lt!229145 () Unit!9447)

(declare-fun lt!229149 () BalanceConc!3468)

(assert (=> b!546461 (= lt!229145 (lemmaSemiInverse!142 (transformation!1013 (rule!1731 token!491)) lt!229149))))

(declare-fun lt!229148 () Unit!9447)

(assert (=> b!546461 (= lt!229148 (lemmaSemiInverse!142 (transformation!1013 (rule!1731 (_1!3472 (v!16181 lt!229139)))) lt!229130))))

(declare-fun lt!229131 () Unit!9447)

(assert (=> b!546461 (= lt!229131 e!330251)))

(declare-fun c!103008 () Bool)

(assert (=> b!546461 (= c!103008 (< lt!229126 lt!229152))))

(assert (=> b!546461 e!330237))

(declare-fun res!233473 () Bool)

(assert (=> b!546461 (=> (not res!233473) (not e!330237))))

(declare-fun lt!229121 () TokenValue!1037)

(declare-fun maxPrefixOneRule!312 (LexerInterface!899 Rule!1826 List!5390) Option!1363)

(assert (=> b!546461 (= res!233473 (= (maxPrefixOneRule!312 thiss!22590 (rule!1731 token!491) lt!229140) (Some!1362 (tuple2!6417 (Token!1763 lt!229121 (rule!1731 token!491) lt!229152 lt!229150) suffix!1342))))))

(declare-fun lt!229127 () Unit!9447)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!64 (LexerInterface!899 List!5391 List!5390 List!5390 List!5390 Rule!1826) Unit!9447)

(assert (=> b!546461 (= lt!229127 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!64 thiss!22590 rules!3103 lt!229150 lt!229140 suffix!1342 (rule!1731 token!491)))))

(assert (=> b!546461 (= (maxPrefixOneRule!312 thiss!22590 (rule!1731 (_1!3472 (v!16181 lt!229139))) input!2705) (Some!1362 (tuple2!6417 (Token!1763 lt!229125 (rule!1731 (_1!3472 (v!16181 lt!229139))) lt!229126 lt!229120) (_2!3472 (v!16181 lt!229139)))))))

(declare-fun lt!229135 () Unit!9447)

(assert (=> b!546461 (= lt!229135 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!64 thiss!22590 rules!3103 lt!229120 input!2705 (_2!3472 (v!16181 lt!229139)) (rule!1731 (_1!3472 (v!16181 lt!229139)))))))

(assert (=> b!546461 e!330257))

(declare-fun res!233492 () Bool)

(assert (=> b!546461 (=> (not res!233492) (not e!330257))))

(assert (=> b!546461 (= res!233492 (= (value!33737 token!491) lt!229121))))

(assert (=> b!546461 (= lt!229121 (apply!1288 (transformation!1013 (rule!1731 token!491)) lt!229149))))

(assert (=> b!546461 (= lt!229149 (seqFromList!1211 lt!229150))))

(declare-fun lt!229123 () List!5390)

(assert (=> b!546461 (= suffix!1342 lt!229123)))

(declare-fun lt!229124 () Unit!9447)

(assert (=> b!546461 (= lt!229124 (lemmaSamePrefixThenSameSuffix!382 lt!229150 suffix!1342 lt!229150 lt!229123 lt!229140))))

(assert (=> b!546461 (= lt!229123 (getSuffix!178 lt!229140 lt!229150))))

(declare-fun b!546462 () Bool)

(declare-fun e!330250 () Bool)

(declare-fun e!330255 () Bool)

(declare-fun tp!173444 () Bool)

(assert (=> b!546462 (= e!330250 (and e!330255 tp!173444))))

(declare-fun b!546463 () Bool)

(declare-fun e!330249 () Bool)

(declare-fun tp_is_empty!3049 () Bool)

(declare-fun tp!173448 () Bool)

(assert (=> b!546463 (= e!330249 (and tp_is_empty!3049 tp!173448))))

(declare-fun b!546464 () Bool)

(assert (=> b!546464 (= e!330245 true)))

(declare-fun lt!229114 () Int)

(assert (=> b!546464 (= lt!229114 (size!4313 input!2705))))

(declare-fun lt!229143 () Int)

(assert (=> b!546464 (= lt!229143 (size!4313 lt!229140))))

(declare-fun b!546465 () Bool)

(declare-fun res!233483 () Bool)

(assert (=> b!546465 (=> (not res!233483) (not e!330238))))

(declare-fun isEmpty!3885 (List!5391) Bool)

(assert (=> b!546465 (= res!233483 (not (isEmpty!3885 rules!3103)))))

(declare-fun b!546466 () Bool)

(declare-fun res!233477 () Bool)

(assert (=> b!546466 (=> (not res!233477) (not e!330234))))

(assert (=> b!546466 (= res!233477 (= (size!4312 (_1!3472 (v!16181 lt!229139))) (size!4313 (originalCharacters!1052 (_1!3472 (v!16181 lt!229139))))))))

(declare-fun b!546467 () Bool)

(assert (=> b!546467 (= e!330238 e!330246)))

(declare-fun res!233471 () Bool)

(assert (=> b!546467 (=> (not res!233471) (not e!330246))))

(assert (=> b!546467 (= res!233471 (= lt!229150 input!2705))))

(assert (=> b!546467 (= lt!229150 (list!2231 (charsOf!642 token!491)))))

(declare-fun b!546468 () Bool)

(declare-fun res!233472 () Bool)

(assert (=> b!546468 (=> (not res!233472) (not e!330238))))

(declare-fun rulesInvariant!862 (LexerInterface!899 List!5391) Bool)

(assert (=> b!546468 (= res!233472 (rulesInvariant!862 thiss!22590 rules!3103))))

(declare-fun b!546469 () Bool)

(declare-fun res!233491 () Bool)

(assert (=> b!546469 (=> res!233491 e!330245)))

(assert (=> b!546469 (= res!233491 (= (rule!1731 (_1!3472 (v!16181 lt!229139))) (rule!1731 token!491)))))

(assert (=> b!546470 (= e!330258 (and tp!173440 tp!173446))))

(declare-fun e!330254 () Bool)

(declare-fun b!546471 () Bool)

(declare-fun tp!173447 () Bool)

(assert (=> b!546471 (= e!330255 (and tp!173447 (inv!6746 (tag!1275 (h!10782 rules!3103))) (inv!6749 (transformation!1013 (h!10782 rules!3103))) e!330254))))

(assert (=> b!546472 (= e!330254 (and tp!173441 tp!173445))))

(declare-fun b!546473 () Bool)

(declare-fun res!233482 () Bool)

(assert (=> b!546473 (=> res!233482 e!330245)))

(assert (=> b!546473 (= res!233482 (not (contains!1255 rules!3103 (rule!1731 (_1!3472 (v!16181 lt!229139))))))))

(declare-fun b!546474 () Bool)

(assert (=> b!546474 (= e!330248 e!330256)))

(declare-fun res!233496 () Bool)

(assert (=> b!546474 (=> (not res!233496) (not e!330256))))

(assert (=> b!546474 (= res!233496 (isDefined!1175 lt!229139))))

(declare-fun b!546475 () Bool)

(declare-fun res!233481 () Bool)

(assert (=> b!546475 (=> res!233481 e!330245)))

(declare-fun getIndex!14 (List!5391 Rule!1826) Int)

(assert (=> b!546475 (= res!233481 (>= (getIndex!14 rules!3103 (rule!1731 (_1!3472 (v!16181 lt!229139)))) (getIndex!14 rules!3103 (rule!1731 token!491))))))

(declare-fun b!546476 () Bool)

(declare-fun e!330252 () Bool)

(declare-fun tp!173442 () Bool)

(assert (=> b!546476 (= e!330252 (and tp_is_empty!3049 tp!173442))))

(declare-fun b!546477 () Bool)

(assert (=> b!546477 (= e!330257 (and (= (size!4312 token!491) lt!229152) (= (originalCharacters!1052 token!491) lt!229150) (= (tuple2!6417 token!491 suffix!1342) (tuple2!6417 (Token!1763 lt!229121 (rule!1731 token!491) lt!229152 lt!229150) lt!229123))))))

(declare-fun b!546455 () Bool)

(declare-fun Unit!9452 () Unit!9447)

(assert (=> b!546455 (= e!330235 Unit!9452)))

(declare-fun res!233474 () Bool)

(assert (=> start!50528 (=> (not res!233474) (not e!330238))))

(assert (=> start!50528 (= res!233474 ((_ is Lexer!897) thiss!22590))))

(assert (=> start!50528 e!330238))

(assert (=> start!50528 e!330252))

(assert (=> start!50528 e!330250))

(declare-fun e!330232 () Bool)

(declare-fun inv!6750 (Token!1762) Bool)

(assert (=> start!50528 (and (inv!6750 token!491) e!330232)))

(assert (=> start!50528 true))

(assert (=> start!50528 e!330249))

(declare-fun b!546478 () Bool)

(declare-fun tp!173439 () Bool)

(declare-fun inv!21 (TokenValue!1037) Bool)

(assert (=> b!546478 (= e!330232 (and (inv!21 (value!33737 token!491)) e!330243 tp!173439))))

(declare-fun b!546479 () Bool)

(declare-fun res!233484 () Bool)

(assert (=> b!546479 (=> res!233484 e!330245)))

(assert (=> b!546479 (= res!233484 (not (isEmpty!3884 (_2!3472 (v!16181 lt!229139)))))))

(declare-fun b!546480 () Bool)

(assert (=> b!546480 (= e!330256 (= lt!229115 (_2!3472 (v!16181 lt!229139))))))

(declare-fun b!546481 () Bool)

(declare-fun res!233489 () Bool)

(assert (=> b!546481 (=> res!233489 e!330245)))

(assert (=> b!546481 (= res!233489 (or (not (= lt!229120 lt!229150)) (not (= (originalCharacters!1052 (_1!3472 (v!16181 lt!229139))) (originalCharacters!1052 token!491)))))))

(assert (= (and start!50528 res!233474) b!546465))

(assert (= (and b!546465 res!233483) b!546468))

(assert (= (and b!546468 res!233472) b!546460))

(assert (= (and b!546460 res!233487) b!546467))

(assert (= (and b!546467 res!233471) b!546448))

(assert (= (and b!546448 res!233494) b!546451))

(assert (= (and b!546451 res!233493) b!546453))

(assert (= (and b!546453 res!233485) b!546445))

(assert (= (and b!546445 res!233480) b!546454))

(assert (= (and b!546454 c!103009) b!546457))

(assert (= (and b!546454 (not c!103009)) b!546455))

(assert (= (and b!546454 res!233479) b!546466))

(assert (= (and b!546466 res!233477) b!546447))

(assert (= (and b!546454 (not res!233488)) b!546461))

(assert (= (and b!546461 res!233492) b!546449))

(assert (= (and b!546449 res!233486) b!546477))

(assert (= (and b!546461 res!233473) b!546444))

(assert (= (and b!546444 (not res!233476)) b!546474))

(assert (= (and b!546474 res!233496) b!546443))

(assert (= (and b!546443 res!233495) b!546480))

(assert (= (and b!546461 c!103008) b!546456))

(assert (= (and b!546461 (not c!103008)) b!546459))

(assert (= (and b!546456 res!233475) b!546446))

(assert (= (and b!546461 (not res!233470)) b!546479))

(assert (= (and b!546479 (not res!233484)) b!546481))

(assert (= (and b!546481 (not res!233489)) b!546473))

(assert (= (and b!546473 (not res!233482)) b!546458))

(assert (= (and b!546458 (not res!233478)) b!546469))

(assert (= (and b!546469 (not res!233491)) b!546475))

(assert (= (and b!546475 (not res!233481)) b!546452))

(assert (= (and b!546452 (not res!233490)) b!546464))

(assert (= (and start!50528 ((_ is Cons!5380) suffix!1342)) b!546476))

(assert (= b!546471 b!546472))

(assert (= b!546462 b!546471))

(assert (= (and start!50528 ((_ is Cons!5381) rules!3103)) b!546462))

(assert (= b!546450 b!546470))

(assert (= b!546478 b!546450))

(assert (= start!50528 b!546478))

(assert (= (and start!50528 ((_ is Cons!5380) input!2705)) b!546463))

(declare-fun m!795209 () Bool)

(assert (=> b!546465 m!795209))

(declare-fun m!795211 () Bool)

(assert (=> b!546461 m!795211))

(declare-fun m!795213 () Bool)

(assert (=> b!546461 m!795213))

(declare-fun m!795215 () Bool)

(assert (=> b!546461 m!795215))

(declare-fun m!795217 () Bool)

(assert (=> b!546461 m!795217))

(declare-fun m!795219 () Bool)

(assert (=> b!546461 m!795219))

(declare-fun m!795221 () Bool)

(assert (=> b!546461 m!795221))

(declare-fun m!795223 () Bool)

(assert (=> b!546461 m!795223))

(declare-fun m!795225 () Bool)

(assert (=> b!546461 m!795225))

(declare-fun m!795227 () Bool)

(assert (=> b!546461 m!795227))

(declare-fun m!795229 () Bool)

(assert (=> b!546461 m!795229))

(declare-fun m!795231 () Bool)

(assert (=> b!546453 m!795231))

(declare-fun m!795233 () Bool)

(assert (=> b!546473 m!795233))

(declare-fun m!795235 () Bool)

(assert (=> b!546479 m!795235))

(declare-fun m!795237 () Bool)

(assert (=> b!546449 m!795237))

(declare-fun m!795239 () Bool)

(assert (=> b!546443 m!795239))

(declare-fun m!795241 () Bool)

(assert (=> b!546450 m!795241))

(declare-fun m!795243 () Bool)

(assert (=> b!546450 m!795243))

(declare-fun m!795245 () Bool)

(assert (=> start!50528 m!795245))

(declare-fun m!795247 () Bool)

(assert (=> b!546454 m!795247))

(declare-fun m!795249 () Bool)

(assert (=> b!546454 m!795249))

(declare-fun m!795251 () Bool)

(assert (=> b!546454 m!795251))

(declare-fun m!795253 () Bool)

(assert (=> b!546454 m!795253))

(declare-fun m!795255 () Bool)

(assert (=> b!546454 m!795255))

(declare-fun m!795257 () Bool)

(assert (=> b!546454 m!795257))

(declare-fun m!795259 () Bool)

(assert (=> b!546454 m!795259))

(declare-fun m!795261 () Bool)

(assert (=> b!546454 m!795261))

(declare-fun m!795263 () Bool)

(assert (=> b!546454 m!795263))

(declare-fun m!795265 () Bool)

(assert (=> b!546454 m!795265))

(declare-fun m!795267 () Bool)

(assert (=> b!546454 m!795267))

(declare-fun m!795269 () Bool)

(assert (=> b!546454 m!795269))

(declare-fun m!795271 () Bool)

(assert (=> b!546454 m!795271))

(declare-fun m!795273 () Bool)

(assert (=> b!546454 m!795273))

(declare-fun m!795275 () Bool)

(assert (=> b!546454 m!795275))

(declare-fun m!795277 () Bool)

(assert (=> b!546454 m!795277))

(declare-fun m!795279 () Bool)

(assert (=> b!546454 m!795279))

(declare-fun m!795281 () Bool)

(assert (=> b!546454 m!795281))

(declare-fun m!795283 () Bool)

(assert (=> b!546454 m!795283))

(declare-fun m!795285 () Bool)

(assert (=> b!546454 m!795285))

(declare-fun m!795287 () Bool)

(assert (=> b!546454 m!795287))

(declare-fun m!795289 () Bool)

(assert (=> b!546454 m!795289))

(declare-fun m!795291 () Bool)

(assert (=> b!546454 m!795291))

(declare-fun m!795293 () Bool)

(assert (=> b!546454 m!795293))

(assert (=> b!546454 m!795289))

(declare-fun m!795295 () Bool)

(assert (=> b!546454 m!795295))

(declare-fun m!795297 () Bool)

(assert (=> b!546454 m!795297))

(declare-fun m!795299 () Bool)

(assert (=> b!546454 m!795299))

(declare-fun m!795301 () Bool)

(assert (=> b!546475 m!795301))

(declare-fun m!795303 () Bool)

(assert (=> b!546475 m!795303))

(declare-fun m!795305 () Bool)

(assert (=> b!546445 m!795305))

(declare-fun m!795307 () Bool)

(assert (=> b!546464 m!795307))

(declare-fun m!795309 () Bool)

(assert (=> b!546464 m!795309))

(assert (=> b!546456 m!795229))

(declare-fun m!795311 () Bool)

(assert (=> b!546456 m!795311))

(declare-fun m!795313 () Bool)

(assert (=> b!546456 m!795313))

(declare-fun m!795315 () Bool)

(assert (=> b!546460 m!795315))

(declare-fun m!795317 () Bool)

(assert (=> b!546466 m!795317))

(declare-fun m!795319 () Bool)

(assert (=> b!546474 m!795319))

(declare-fun m!795321 () Bool)

(assert (=> b!546448 m!795321))

(declare-fun m!795323 () Bool)

(assert (=> b!546448 m!795323))

(declare-fun m!795325 () Bool)

(assert (=> b!546448 m!795325))

(declare-fun m!795327 () Bool)

(assert (=> b!546478 m!795327))

(declare-fun m!795329 () Bool)

(assert (=> b!546458 m!795329))

(declare-fun m!795331 () Bool)

(assert (=> b!546471 m!795331))

(declare-fun m!795333 () Bool)

(assert (=> b!546471 m!795333))

(declare-fun m!795335 () Bool)

(assert (=> b!546468 m!795335))

(declare-fun m!795337 () Bool)

(assert (=> b!546451 m!795337))

(declare-fun m!795339 () Bool)

(assert (=> b!546467 m!795339))

(assert (=> b!546467 m!795339))

(declare-fun m!795341 () Bool)

(assert (=> b!546467 m!795341))

(check-sat (not b!546449) (not b!546464) (not b!546462) (not start!50528) (not b_next!15207) (not b!546463) (not b!546450) (not b_next!15205) (not b!546456) (not b!546453) (not b!546465) (not b!546476) (not b!546474) (not b!546473) tp_is_empty!3049 (not b!546451) (not b!546443) (not b_next!15203) (not b!546445) b_and!53371 (not b!546468) b_and!53377 (not b!546479) (not b!546460) (not b!546458) b_and!53373 (not b!546461) (not b!546454) (not b!546475) b_and!53375 (not b!546471) (not b!546466) (not b!546448) (not b!546467) (not b_next!15201) (not b!546478))
(check-sat (not b_next!15203) b_and!53371 b_and!53377 b_and!53373 (not b_next!15207) (not b_next!15205) b_and!53375 (not b_next!15201))
