; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101590 () Bool)

(assert start!101590)

(declare-fun b!1160330 () Bool)

(declare-fun e!742733 () Bool)

(assert (=> b!1160330 (= e!742733 true)))

(declare-fun b!1160329 () Bool)

(declare-fun e!742732 () Bool)

(assert (=> b!1160329 (= e!742732 e!742733)))

(declare-fun b!1160321 () Bool)

(assert (=> b!1160321 e!742732))

(assert (= b!1160329 b!1160330))

(assert (= b!1160321 b!1160329))

(declare-fun b!1160307 () Bool)

(declare-fun e!742724 () Bool)

(declare-fun lt!394423 () Bool)

(assert (=> b!1160307 (= e!742724 lt!394423)))

(declare-fun b!1160308 () Bool)

(declare-fun e!742726 () Bool)

(declare-fun e!742716 () Bool)

(assert (=> b!1160308 (= e!742726 e!742716)))

(declare-fun res!522816 () Bool)

(assert (=> b!1160308 (=> (not res!522816) (not e!742716))))

(declare-datatypes ((List!11409 0))(
  ( (Nil!11385) (Cons!11385 (h!16786 (_ BitVec 16)) (t!109627 List!11409)) )
))
(declare-datatypes ((TokenValue!2043 0))(
  ( (FloatLiteralValue!4086 (text!14746 List!11409)) (TokenValueExt!2042 (__x!7797 Int)) (Broken!10215 (value!64315 List!11409)) (Object!2066) (End!2043) (Def!2043) (Underscore!2043) (Match!2043) (Else!2043) (Error!2043) (Case!2043) (If!2043) (Extends!2043) (Abstract!2043) (Class!2043) (Val!2043) (DelimiterValue!4086 (del!2103 List!11409)) (KeywordValue!2049 (value!64316 List!11409)) (CommentValue!4086 (value!64317 List!11409)) (WhitespaceValue!4086 (value!64318 List!11409)) (IndentationValue!2043 (value!64319 List!11409)) (String!13802) (Int32!2043) (Broken!10216 (value!64320 List!11409)) (Boolean!2044) (Unit!17388) (OperatorValue!2046 (op!2103 List!11409)) (IdentifierValue!4086 (value!64321 List!11409)) (IdentifierValue!4087 (value!64322 List!11409)) (WhitespaceValue!4087 (value!64323 List!11409)) (True!4086) (False!4086) (Broken!10217 (value!64324 List!11409)) (Broken!10218 (value!64325 List!11409)) (True!4087) (RightBrace!2043) (RightBracket!2043) (Colon!2043) (Null!2043) (Comma!2043) (LeftBracket!2043) (False!4087) (LeftBrace!2043) (ImaginaryLiteralValue!2043 (text!14747 List!11409)) (StringLiteralValue!6129 (value!64326 List!11409)) (EOFValue!2043 (value!64327 List!11409)) (IdentValue!2043 (value!64328 List!11409)) (DelimiterValue!4087 (value!64329 List!11409)) (DedentValue!2043 (value!64330 List!11409)) (NewLineValue!2043 (value!64331 List!11409)) (IntegerValue!6129 (value!64332 (_ BitVec 32)) (text!14748 List!11409)) (IntegerValue!6130 (value!64333 Int) (text!14749 List!11409)) (Times!2043) (Or!2043) (Equal!2043) (Minus!2043) (Broken!10219 (value!64334 List!11409)) (And!2043) (Div!2043) (LessEqual!2043) (Mod!2043) (Concat!5290) (Not!2043) (Plus!2043) (SpaceValue!2043 (value!64335 List!11409)) (IntegerValue!6131 (value!64336 Int) (text!14750 List!11409)) (StringLiteralValue!6130 (text!14751 List!11409)) (FloatLiteralValue!4087 (text!14752 List!11409)) (BytesLiteralValue!2043 (value!64337 List!11409)) (CommentValue!4087 (value!64338 List!11409)) (StringLiteralValue!6131 (value!64339 List!11409)) (ErrorTokenValue!2043 (msg!2104 List!11409)) )
))
(declare-datatypes ((C!6812 0))(
  ( (C!6813 (val!3662 Int)) )
))
(declare-datatypes ((Regex!3247 0))(
  ( (ElementMatch!3247 (c!194210 C!6812)) (Concat!5291 (regOne!7006 Regex!3247) (regTwo!7006 Regex!3247)) (EmptyExpr!3247) (Star!3247 (reg!3576 Regex!3247)) (EmptyLang!3247) (Union!3247 (regOne!7007 Regex!3247) (regTwo!7007 Regex!3247)) )
))
(declare-datatypes ((String!13803 0))(
  ( (String!13804 (value!64340 String)) )
))
(declare-datatypes ((List!11410 0))(
  ( (Nil!11386) (Cons!11386 (h!16787 C!6812) (t!109628 List!11410)) )
))
(declare-datatypes ((IArray!7437 0))(
  ( (IArray!7438 (innerList!3776 List!11410)) )
))
(declare-datatypes ((Conc!3716 0))(
  ( (Node!3716 (left!9942 Conc!3716) (right!10272 Conc!3716) (csize!7662 Int) (cheight!3927 Int)) (Leaf!5715 (xs!6421 IArray!7437) (csize!7663 Int)) (Empty!3716) )
))
(declare-datatypes ((BalanceConc!7454 0))(
  ( (BalanceConc!7455 (c!194211 Conc!3716)) )
))
(declare-datatypes ((TokenValueInjection!3786 0))(
  ( (TokenValueInjection!3787 (toValue!3078 Int) (toChars!2937 Int)) )
))
(declare-datatypes ((Rule!3754 0))(
  ( (Rule!3755 (regex!1977 Regex!3247) (tag!2239 String!13803) (isSeparator!1977 Bool) (transformation!1977 TokenValueInjection!3786)) )
))
(declare-datatypes ((Token!3616 0))(
  ( (Token!3617 (value!64341 TokenValue!2043) (rule!3398 Rule!3754) (size!8946 Int) (originalCharacters!2531 List!11410)) )
))
(declare-datatypes ((List!11411 0))(
  ( (Nil!11387) (Cons!11387 (h!16788 Token!3616) (t!109629 List!11411)) )
))
(declare-datatypes ((IArray!7439 0))(
  ( (IArray!7440 (innerList!3777 List!11411)) )
))
(declare-datatypes ((Conc!3717 0))(
  ( (Node!3717 (left!9943 Conc!3717) (right!10273 Conc!3717) (csize!7664 Int) (cheight!3928 Int)) (Leaf!5716 (xs!6422 IArray!7439) (csize!7665 Int)) (Empty!3717) )
))
(declare-datatypes ((BalanceConc!7456 0))(
  ( (BalanceConc!7457 (c!194212 Conc!3717)) )
))
(declare-datatypes ((List!11412 0))(
  ( (Nil!11388) (Cons!11388 (h!16789 Rule!3754) (t!109630 List!11412)) )
))
(declare-datatypes ((PrintableTokens!640 0))(
  ( (PrintableTokens!641 (rules!9474 List!11412) (tokens!1578 BalanceConc!7456)) )
))
(declare-fun thiss!10527 () PrintableTokens!640)

(declare-datatypes ((LexerInterface!1672 0))(
  ( (LexerInterfaceExt!1669 (__x!7798 Int)) (Lexer!1670) )
))
(declare-fun rulesInvariant!1546 (LexerInterface!1672 List!11412) Bool)

(assert (=> b!1160308 (= res!522816 (rulesInvariant!1546 Lexer!1670 (rules!9474 thiss!10527)))))

(declare-datatypes ((Unit!17389 0))(
  ( (Unit!17390) )
))
(declare-fun lt!394421 () Unit!17389)

(declare-fun lemmaInvariant!164 (PrintableTokens!640) Unit!17389)

(assert (=> b!1160308 (= lt!394421 (lemmaInvariant!164 thiss!10527))))

(declare-fun b!1160309 () Bool)

(declare-fun e!742718 () Bool)

(declare-fun lt!394422 () List!11411)

(declare-fun rulesProduceEachTokenIndividuallyList!540 (LexerInterface!1672 List!11412 List!11411) Bool)

(assert (=> b!1160309 (= e!742718 (rulesProduceEachTokenIndividuallyList!540 Lexer!1670 (rules!9474 thiss!10527) (t!109629 lt!394422)))))

(declare-fun b!1160310 () Bool)

(declare-fun e!742723 () Bool)

(declare-fun e!742719 () Bool)

(assert (=> b!1160310 (= e!742723 e!742719)))

(declare-fun res!522820 () Bool)

(assert (=> b!1160310 (=> res!522820 e!742719)))

(declare-fun lambda!47215 () Int)

(declare-fun forall!2958 (List!11411 Int) Bool)

(assert (=> b!1160310 (= res!522820 (not (forall!2958 lt!394422 lambda!47215)))))

(declare-fun e!742725 () Bool)

(assert (=> b!1160310 e!742725))

(declare-fun res!522827 () Bool)

(assert (=> b!1160310 (=> (not res!522827) (not e!742725))))

(assert (=> b!1160310 (= res!522827 (forall!2958 lt!394422 lambda!47215))))

(declare-fun lt!394417 () List!11411)

(declare-fun lt!394418 () Unit!17389)

(declare-fun lemmaForallSubseq!125 (List!11411 List!11411 Int) Unit!17389)

(assert (=> b!1160310 (= lt!394418 (lemmaForallSubseq!125 lt!394422 lt!394417 lambda!47215))))

(declare-fun lt!394420 () BalanceConc!7456)

(declare-fun list!4192 (BalanceConc!7456) List!11411)

(assert (=> b!1160310 (= lt!394422 (list!4192 lt!394420))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!251 (BalanceConc!7456 Int Int) BalanceConc!7456)

(assert (=> b!1160310 (= lt!394420 (slice!251 (tokens!1578 thiss!10527) from!787 to!267))))

(declare-fun subseq!233 (List!11411 List!11411) Bool)

(declare-fun slice!252 (List!11411 Int Int) List!11411)

(assert (=> b!1160310 (subseq!233 (slice!252 lt!394417 from!787 to!267) lt!394417)))

(declare-fun lt!394424 () Unit!17389)

(declare-fun lemmaSliceSubseq!74 (List!11411 Int Int) Unit!17389)

(assert (=> b!1160310 (= lt!394424 (lemmaSliceSubseq!74 lt!394417 from!787 to!267))))

(declare-fun b!1160311 () Bool)

(assert (=> b!1160311 (= e!742719 e!742724)))

(declare-fun res!522828 () Bool)

(assert (=> b!1160311 (=> res!522828 e!742724)))

(declare-fun lt!394419 () Int)

(assert (=> b!1160311 (= res!522828 (> 0 lt!394419))))

(declare-fun separableTokens!114 (LexerInterface!1672 BalanceConc!7456 List!11412) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!47 (LexerInterface!1672 BalanceConc!7456 Int List!11412) Bool)

(assert (=> b!1160311 (= (separableTokens!114 Lexer!1670 lt!394420 (rules!9474 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!47 Lexer!1670 lt!394420 0 (rules!9474 thiss!10527)))))

(declare-fun b!1160312 () Bool)

(declare-fun res!522826 () Bool)

(assert (=> b!1160312 (=> (not res!522826) (not e!742725))))

(declare-fun rulesProduceEachTokenIndividually!711 (LexerInterface!1672 List!11412 BalanceConc!7456) Bool)

(declare-fun forall!2959 (BalanceConc!7456 Int) Bool)

(assert (=> b!1160312 (= res!522826 (= (rulesProduceEachTokenIndividually!711 Lexer!1670 (rules!9474 thiss!10527) lt!394420) (forall!2959 lt!394420 lambda!47215)))))

(declare-fun b!1160313 () Bool)

(declare-fun e!742721 () Bool)

(assert (=> b!1160313 (= e!742721 e!742718)))

(declare-fun res!522825 () Bool)

(assert (=> b!1160313 (=> (not res!522825) (not e!742718))))

(declare-fun rulesProduceIndividualToken!709 (LexerInterface!1672 List!11412 Token!3616) Bool)

(assert (=> b!1160313 (= res!522825 (rulesProduceIndividualToken!709 Lexer!1670 (rules!9474 thiss!10527) (h!16788 lt!394422)))))

(declare-fun b!1160314 () Bool)

(declare-fun e!742715 () Bool)

(assert (=> b!1160314 (= e!742715 (rulesProduceEachTokenIndividuallyList!540 Lexer!1670 (rules!9474 thiss!10527) (t!109629 lt!394417)))))

(declare-fun b!1160315 () Bool)

(declare-fun e!742720 () Bool)

(declare-fun tp!333725 () Bool)

(declare-fun inv!14968 (Conc!3717) Bool)

(assert (=> b!1160315 (= e!742720 (and (inv!14968 (c!194212 (tokens!1578 thiss!10527))) tp!333725))))

(declare-fun b!1160316 () Bool)

(declare-fun e!742717 () Bool)

(assert (=> b!1160316 (= e!742717 e!742726)))

(declare-fun res!522819 () Bool)

(assert (=> b!1160316 (=> (not res!522819) (not e!742726))))

(assert (=> b!1160316 (= res!522819 (<= to!267 lt!394419))))

(declare-fun size!8947 (BalanceConc!7456) Int)

(assert (=> b!1160316 (= lt!394419 (size!8947 (tokens!1578 thiss!10527)))))

(declare-fun b!1160317 () Bool)

(declare-fun res!522817 () Bool)

(assert (=> b!1160317 (=> res!522817 e!742724)))

(declare-fun isEmpty!6971 (List!11412) Bool)

(assert (=> b!1160317 (= res!522817 (isEmpty!6971 (rules!9474 thiss!10527)))))

(declare-fun res!522821 () Bool)

(assert (=> start!101590 (=> (not res!522821) (not e!742717))))

(assert (=> start!101590 (= res!522821 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101590 e!742717))

(assert (=> start!101590 true))

(declare-fun e!742727 () Bool)

(declare-fun inv!14969 (PrintableTokens!640) Bool)

(assert (=> start!101590 (and (inv!14969 thiss!10527) e!742727)))

(declare-fun b!1160318 () Bool)

(declare-fun e!742722 () Bool)

(assert (=> b!1160318 (= e!742722 e!742715)))

(declare-fun res!522829 () Bool)

(assert (=> b!1160318 (=> (not res!522829) (not e!742715))))

(assert (=> b!1160318 (= res!522829 (rulesProduceIndividualToken!709 Lexer!1670 (rules!9474 thiss!10527) (h!16788 lt!394417)))))

(declare-fun tp!333726 () Bool)

(declare-fun b!1160319 () Bool)

(declare-fun inv!14970 (BalanceConc!7456) Bool)

(assert (=> b!1160319 (= e!742727 (and tp!333726 (inv!14970 (tokens!1578 thiss!10527)) e!742720))))

(declare-fun b!1160320 () Bool)

(assert (=> b!1160320 (= e!742725 (= (rulesProduceEachTokenIndividuallyList!540 Lexer!1670 (rules!9474 thiss!10527) lt!394422) e!742721))))

(declare-fun res!522822 () Bool)

(assert (=> b!1160320 (=> res!522822 e!742721)))

(get-info :version)

(assert (=> b!1160320 (= res!522822 (not ((_ is Cons!11387) lt!394422)))))

(assert (=> b!1160321 (= e!742716 (not e!742723))))

(declare-fun res!522824 () Bool)

(assert (=> b!1160321 (=> res!522824 e!742723)))

(assert (=> b!1160321 (= res!522824 (not (forall!2959 (tokens!1578 thiss!10527) lambda!47215)))))

(assert (=> b!1160321 (= (rulesProduceEachTokenIndividuallyList!540 Lexer!1670 (rules!9474 thiss!10527) lt!394417) e!742722)))

(declare-fun res!522823 () Bool)

(assert (=> b!1160321 (=> res!522823 e!742722)))

(assert (=> b!1160321 (= res!522823 (not ((_ is Cons!11387) lt!394417)))))

(assert (=> b!1160321 (= lt!394417 (list!4192 (tokens!1578 thiss!10527)))))

(assert (=> b!1160321 (= lt!394423 (forall!2959 (tokens!1578 thiss!10527) lambda!47215))))

(assert (=> b!1160321 (= lt!394423 (rulesProduceEachTokenIndividually!711 Lexer!1670 (rules!9474 thiss!10527) (tokens!1578 thiss!10527)))))

(declare-fun b!1160322 () Bool)

(declare-fun res!522818 () Bool)

(assert (=> b!1160322 (=> res!522818 e!742719)))

(assert (=> b!1160322 (= res!522818 (not (forall!2959 lt!394420 lambda!47215)))))

(assert (= (and start!101590 res!522821) b!1160316))

(assert (= (and b!1160316 res!522819) b!1160308))

(assert (= (and b!1160308 res!522816) b!1160321))

(assert (= (and b!1160321 (not res!522823)) b!1160318))

(assert (= (and b!1160318 res!522829) b!1160314))

(assert (= (and b!1160321 (not res!522824)) b!1160310))

(assert (= (and b!1160310 res!522827) b!1160312))

(assert (= (and b!1160312 res!522826) b!1160320))

(assert (= (and b!1160320 (not res!522822)) b!1160313))

(assert (= (and b!1160313 res!522825) b!1160309))

(assert (= (and b!1160310 (not res!522820)) b!1160322))

(assert (= (and b!1160322 (not res!522818)) b!1160311))

(assert (= (and b!1160311 (not res!522828)) b!1160317))

(assert (= (and b!1160317 (not res!522817)) b!1160307))

(assert (= b!1160319 b!1160315))

(assert (= start!101590 b!1160319))

(declare-fun m!1326925 () Bool)

(assert (=> b!1160313 m!1326925))

(declare-fun m!1326927 () Bool)

(assert (=> b!1160314 m!1326927))

(declare-fun m!1326929 () Bool)

(assert (=> b!1160309 m!1326929))

(declare-fun m!1326931 () Bool)

(assert (=> b!1160322 m!1326931))

(declare-fun m!1326933 () Bool)

(assert (=> b!1160310 m!1326933))

(declare-fun m!1326935 () Bool)

(assert (=> b!1160310 m!1326935))

(declare-fun m!1326937 () Bool)

(assert (=> b!1160310 m!1326937))

(assert (=> b!1160310 m!1326933))

(declare-fun m!1326939 () Bool)

(assert (=> b!1160310 m!1326939))

(declare-fun m!1326941 () Bool)

(assert (=> b!1160310 m!1326941))

(declare-fun m!1326943 () Bool)

(assert (=> b!1160310 m!1326943))

(declare-fun m!1326945 () Bool)

(assert (=> b!1160310 m!1326945))

(assert (=> b!1160310 m!1326935))

(declare-fun m!1326947 () Bool)

(assert (=> start!101590 m!1326947))

(declare-fun m!1326949 () Bool)

(assert (=> b!1160320 m!1326949))

(declare-fun m!1326951 () Bool)

(assert (=> b!1160319 m!1326951))

(declare-fun m!1326953 () Bool)

(assert (=> b!1160311 m!1326953))

(declare-fun m!1326955 () Bool)

(assert (=> b!1160311 m!1326955))

(declare-fun m!1326957 () Bool)

(assert (=> b!1160321 m!1326957))

(declare-fun m!1326959 () Bool)

(assert (=> b!1160321 m!1326959))

(declare-fun m!1326961 () Bool)

(assert (=> b!1160321 m!1326961))

(assert (=> b!1160321 m!1326961))

(declare-fun m!1326963 () Bool)

(assert (=> b!1160321 m!1326963))

(declare-fun m!1326965 () Bool)

(assert (=> b!1160315 m!1326965))

(declare-fun m!1326967 () Bool)

(assert (=> b!1160317 m!1326967))

(declare-fun m!1326969 () Bool)

(assert (=> b!1160312 m!1326969))

(assert (=> b!1160312 m!1326931))

(declare-fun m!1326971 () Bool)

(assert (=> b!1160318 m!1326971))

(declare-fun m!1326973 () Bool)

(assert (=> b!1160316 m!1326973))

(declare-fun m!1326975 () Bool)

(assert (=> b!1160308 m!1326975))

(declare-fun m!1326977 () Bool)

(assert (=> b!1160308 m!1326977))

(check-sat (not b!1160317) (not b!1160314) (not b!1160313) (not b!1160320) (not b!1160322) (not b!1160311) (not b!1160318) (not b!1160330) (not b!1160321) (not b!1160309) (not start!101590) (not b!1160316) (not b!1160319) (not b!1160310) (not b!1160308) (not b!1160315) (not b!1160312) (not b!1160329))
(check-sat)
