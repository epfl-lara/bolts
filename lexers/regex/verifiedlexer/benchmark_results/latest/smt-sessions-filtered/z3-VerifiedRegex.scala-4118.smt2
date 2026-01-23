; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220632 () Bool)

(assert start!220632)

(declare-fun b!2260012 () Bool)

(declare-fun b_free!66701 () Bool)

(declare-fun b_next!67405 () Bool)

(assert (=> b!2260012 (= b_free!66701 (not b_next!67405))))

(declare-fun tp!714695 () Bool)

(declare-fun b_and!177513 () Bool)

(assert (=> b!2260012 (= tp!714695 b_and!177513)))

(declare-fun b_free!66703 () Bool)

(declare-fun b_next!67407 () Bool)

(assert (=> b!2260012 (= b_free!66703 (not b_next!67407))))

(declare-fun tp!714696 () Bool)

(declare-fun b_and!177515 () Bool)

(assert (=> b!2260012 (= tp!714696 b_and!177515)))

(declare-fun b!2260004 () Bool)

(declare-fun b_free!66705 () Bool)

(declare-fun b_next!67409 () Bool)

(assert (=> b!2260004 (= b_free!66705 (not b_next!67409))))

(declare-fun tp!714692 () Bool)

(declare-fun b_and!177517 () Bool)

(assert (=> b!2260004 (= tp!714692 b_and!177517)))

(declare-fun b_free!66707 () Bool)

(declare-fun b_next!67411 () Bool)

(assert (=> b!2260004 (= b_free!66707 (not b_next!67411))))

(declare-fun tp!714682 () Bool)

(declare-fun b_and!177519 () Bool)

(assert (=> b!2260004 (= tp!714682 b_and!177519)))

(declare-fun b!2260016 () Bool)

(declare-fun b_free!66709 () Bool)

(declare-fun b_next!67413 () Bool)

(assert (=> b!2260016 (= b_free!66709 (not b_next!67413))))

(declare-fun tp!714684 () Bool)

(declare-fun b_and!177521 () Bool)

(assert (=> b!2260016 (= tp!714684 b_and!177521)))

(declare-fun b_free!66711 () Bool)

(declare-fun b_next!67415 () Bool)

(assert (=> b!2260016 (= b_free!66711 (not b_next!67415))))

(declare-fun tp!714693 () Bool)

(declare-fun b_and!177523 () Bool)

(assert (=> b!2260016 (= tp!714693 b_and!177523)))

(declare-fun b!2260013 () Bool)

(declare-fun b_free!66713 () Bool)

(declare-fun b_next!67417 () Bool)

(assert (=> b!2260013 (= b_free!66713 (not b_next!67417))))

(declare-fun tp!714688 () Bool)

(declare-fun b_and!177525 () Bool)

(assert (=> b!2260013 (= tp!714688 b_and!177525)))

(declare-fun b_free!66715 () Bool)

(declare-fun b_next!67419 () Bool)

(assert (=> b!2260013 (= b_free!66715 (not b_next!67419))))

(declare-fun tp!714694 () Bool)

(declare-fun b_and!177527 () Bool)

(assert (=> b!2260013 (= tp!714694 b_and!177527)))

(declare-fun b!2259989 () Bool)

(declare-fun e!1447000 () Bool)

(declare-fun tp_is_empty!10451 () Bool)

(declare-fun tp!714690 () Bool)

(assert (=> b!2259989 (= e!1447000 (and tp_is_empty!10451 tp!714690))))

(declare-fun e!1447021 () Bool)

(declare-fun e!1447022 () Bool)

(declare-fun tp!714685 () Bool)

(declare-fun b!2259990 () Bool)

(declare-datatypes ((List!26929 0))(
  ( (Nil!26835) (Cons!26835 (h!32236 (_ BitVec 16)) (t!201547 List!26929)) )
))
(declare-datatypes ((TokenValue!4429 0))(
  ( (FloatLiteralValue!8858 (text!31448 List!26929)) (TokenValueExt!4428 (__x!17918 Int)) (Broken!22145 (value!135403 List!26929)) (Object!4522) (End!4429) (Def!4429) (Underscore!4429) (Match!4429) (Else!4429) (Error!4429) (Case!4429) (If!4429) (Extends!4429) (Abstract!4429) (Class!4429) (Val!4429) (DelimiterValue!8858 (del!4489 List!26929)) (KeywordValue!4435 (value!135404 List!26929)) (CommentValue!8858 (value!135405 List!26929)) (WhitespaceValue!8858 (value!135406 List!26929)) (IndentationValue!4429 (value!135407 List!26929)) (String!29248) (Int32!4429) (Broken!22146 (value!135408 List!26929)) (Boolean!4430) (Unit!39765) (OperatorValue!4432 (op!4489 List!26929)) (IdentifierValue!8858 (value!135409 List!26929)) (IdentifierValue!8859 (value!135410 List!26929)) (WhitespaceValue!8859 (value!135411 List!26929)) (True!8858) (False!8858) (Broken!22147 (value!135412 List!26929)) (Broken!22148 (value!135413 List!26929)) (True!8859) (RightBrace!4429) (RightBracket!4429) (Colon!4429) (Null!4429) (Comma!4429) (LeftBracket!4429) (False!8859) (LeftBrace!4429) (ImaginaryLiteralValue!4429 (text!31449 List!26929)) (StringLiteralValue!13287 (value!135414 List!26929)) (EOFValue!4429 (value!135415 List!26929)) (IdentValue!4429 (value!135416 List!26929)) (DelimiterValue!8859 (value!135417 List!26929)) (DedentValue!4429 (value!135418 List!26929)) (NewLineValue!4429 (value!135419 List!26929)) (IntegerValue!13287 (value!135420 (_ BitVec 32)) (text!31450 List!26929)) (IntegerValue!13288 (value!135421 Int) (text!31451 List!26929)) (Times!4429) (Or!4429) (Equal!4429) (Minus!4429) (Broken!22149 (value!135422 List!26929)) (And!4429) (Div!4429) (LessEqual!4429) (Mod!4429) (Concat!11044) (Not!4429) (Plus!4429) (SpaceValue!4429 (value!135423 List!26929)) (IntegerValue!13289 (value!135424 Int) (text!31452 List!26929)) (StringLiteralValue!13288 (text!31453 List!26929)) (FloatLiteralValue!8859 (text!31454 List!26929)) (BytesLiteralValue!4429 (value!135425 List!26929)) (CommentValue!8859 (value!135426 List!26929)) (StringLiteralValue!13289 (value!135427 List!26929)) (ErrorTokenValue!4429 (msg!4490 List!26929)) )
))
(declare-datatypes ((C!13376 0))(
  ( (C!13377 (val!7736 Int)) )
))
(declare-datatypes ((List!26930 0))(
  ( (Nil!26836) (Cons!26836 (h!32237 C!13376) (t!201548 List!26930)) )
))
(declare-datatypes ((IArray!17369 0))(
  ( (IArray!17370 (innerList!8742 List!26930)) )
))
(declare-datatypes ((Conc!8682 0))(
  ( (Node!8682 (left!20372 Conc!8682) (right!20702 Conc!8682) (csize!17594 Int) (cheight!8893 Int)) (Leaf!12801 (xs!11624 IArray!17369) (csize!17595 Int)) (Empty!8682) )
))
(declare-datatypes ((BalanceConc!17092 0))(
  ( (BalanceConc!17093 (c!359064 Conc!8682)) )
))
(declare-datatypes ((String!29249 0))(
  ( (String!29250 (value!135428 String)) )
))
(declare-datatypes ((Regex!6615 0))(
  ( (ElementMatch!6615 (c!359065 C!13376)) (Concat!11045 (regOne!13742 Regex!6615) (regTwo!13742 Regex!6615)) (EmptyExpr!6615) (Star!6615 (reg!6944 Regex!6615)) (EmptyLang!6615) (Union!6615 (regOne!13743 Regex!6615) (regTwo!13743 Regex!6615)) )
))
(declare-datatypes ((TokenValueInjection!8398 0))(
  ( (TokenValueInjection!8399 (toValue!6013 Int) (toChars!5872 Int)) )
))
(declare-datatypes ((Rule!8334 0))(
  ( (Rule!8335 (regex!4267 Regex!6615) (tag!4757 String!29249) (isSeparator!4267 Bool) (transformation!4267 TokenValueInjection!8398)) )
))
(declare-datatypes ((List!26931 0))(
  ( (Nil!26837) (Cons!26837 (h!32238 Rule!8334) (t!201549 List!26931)) )
))
(declare-fun rules!1750 () List!26931)

(declare-fun inv!36370 (String!29249) Bool)

(declare-fun inv!36373 (TokenValueInjection!8398) Bool)

(assert (=> b!2259990 (= e!1447022 (and tp!714685 (inv!36370 (tag!4757 (h!32238 rules!1750))) (inv!36373 (transformation!4267 (h!32238 rules!1750))) e!1447021))))

(declare-fun b!2259991 () Bool)

(declare-fun e!1446999 () Bool)

(declare-fun tp!714689 () Bool)

(assert (=> b!2259991 (= e!1446999 (and tp_is_empty!10451 tp!714689))))

(declare-fun tp!714697 () Bool)

(declare-fun e!1446998 () Bool)

(declare-fun e!1447020 () Bool)

(declare-fun r!2363 () Rule!8334)

(declare-fun b!2259992 () Bool)

(assert (=> b!2259992 (= e!1446998 (and tp!714697 (inv!36370 (tag!4757 r!2363)) (inv!36373 (transformation!4267 r!2363)) e!1447020))))

(declare-fun b!2259993 () Bool)

(declare-fun res!966094 () Bool)

(declare-fun e!1447016 () Bool)

(assert (=> b!2259993 (=> (not res!966094) (not e!1447016))))

(declare-fun isEmpty!15165 (List!26931) Bool)

(assert (=> b!2259993 (= res!966094 (not (isEmpty!15165 rules!1750)))))

(declare-fun b!2259994 () Bool)

(declare-fun res!966097 () Bool)

(declare-fun e!1447004 () Bool)

(assert (=> b!2259994 (=> (not res!966097) (not e!1447004))))

(declare-fun e!1447001 () Bool)

(assert (=> b!2259994 (= res!966097 e!1447001)))

(declare-fun res!966102 () Bool)

(assert (=> b!2259994 (=> res!966102 e!1447001)))

(declare-fun lt!839774 () Bool)

(assert (=> b!2259994 (= res!966102 lt!839774)))

(declare-fun b!2259995 () Bool)

(declare-fun e!1447023 () Bool)

(declare-datatypes ((Token!8012 0))(
  ( (Token!8013 (value!135429 TokenValue!4429) (rule!6577 Rule!8334) (size!21026 Int) (originalCharacters!5037 List!26930)) )
))
(declare-datatypes ((List!26932 0))(
  ( (Nil!26838) (Cons!26838 (h!32239 Token!8012) (t!201550 List!26932)) )
))
(declare-fun tokens!456 () List!26932)

(declare-fun matchR!2876 (Regex!6615 List!26930) Bool)

(declare-fun list!10345 (BalanceConc!17092) List!26930)

(declare-fun charsOf!2655 (Token!8012) BalanceConc!17092)

(declare-fun head!4846 (List!26932) Token!8012)

(assert (=> b!2259995 (= e!1447023 (not (matchR!2876 (regex!4267 r!2363) (list!10345 (charsOf!2655 (head!4846 tokens!456))))))))

(declare-fun e!1447006 () Bool)

(declare-fun e!1447002 () Bool)

(declare-fun tp!714681 () Bool)

(declare-fun b!2259996 () Bool)

(declare-fun otherR!12 () Rule!8334)

(assert (=> b!2259996 (= e!1447006 (and tp!714681 (inv!36370 (tag!4757 otherR!12)) (inv!36373 (transformation!4267 otherR!12)) e!1447002))))

(declare-fun b!2259997 () Bool)

(declare-fun e!1447009 () Bool)

(declare-fun e!1447014 () Bool)

(declare-fun tp!714680 () Bool)

(declare-fun inv!36374 (Token!8012) Bool)

(assert (=> b!2259997 (= e!1447009 (and (inv!36374 (h!32239 tokens!456)) e!1447014 tp!714680))))

(declare-fun b!2259998 () Bool)

(assert (=> b!2259998 (= e!1447001 (= (rule!6577 (head!4846 tokens!456)) r!2363))))

(declare-fun e!1446996 () Bool)

(declare-fun b!2259999 () Bool)

(declare-fun tp!714691 () Bool)

(declare-fun inv!21 (TokenValue!4429) Bool)

(assert (=> b!2259999 (= e!1447014 (and (inv!21 (value!135429 (h!32239 tokens!456))) e!1446996 tp!714691))))

(declare-fun b!2260001 () Bool)

(declare-fun res!966092 () Bool)

(assert (=> b!2260001 (=> (not res!966092) (not e!1447016))))

(declare-fun contains!4621 (List!26931 Rule!8334) Bool)

(assert (=> b!2260001 (= res!966092 (contains!4621 rules!1750 r!2363))))

(declare-fun b!2260002 () Bool)

(declare-fun e!1447003 () Bool)

(assert (=> b!2260002 (= e!1447003 e!1447004)))

(declare-fun res!966104 () Bool)

(assert (=> b!2260002 (=> (not res!966104) (not e!1447004))))

(declare-fun e!1447010 () Bool)

(assert (=> b!2260002 (= res!966104 e!1447010)))

(declare-fun res!966095 () Bool)

(assert (=> b!2260002 (=> res!966095 e!1447010)))

(assert (=> b!2260002 (= res!966095 lt!839774)))

(declare-fun isEmpty!15166 (List!26932) Bool)

(assert (=> b!2260002 (= lt!839774 (isEmpty!15166 tokens!456))))

(declare-fun e!1446997 () Bool)

(declare-fun tp!714683 () Bool)

(declare-fun b!2260003 () Bool)

(assert (=> b!2260003 (= e!1446996 (and tp!714683 (inv!36370 (tag!4757 (rule!6577 (h!32239 tokens!456)))) (inv!36373 (transformation!4267 (rule!6577 (h!32239 tokens!456)))) e!1446997))))

(assert (=> b!2260004 (= e!1447020 (and tp!714692 tp!714682))))

(declare-fun b!2260005 () Bool)

(declare-fun e!1447019 () Bool)

(assert (=> b!2260005 (= e!1447004 (not e!1447019))))

(declare-fun res!966101 () Bool)

(assert (=> b!2260005 (=> res!966101 e!1447019)))

(assert (=> b!2260005 (= res!966101 e!1447023)))

(declare-fun res!966093 () Bool)

(assert (=> b!2260005 (=> (not res!966093) (not e!1447023))))

(assert (=> b!2260005 (= res!966093 (not lt!839774))))

(declare-datatypes ((LexerInterface!3864 0))(
  ( (LexerInterfaceExt!3861 (__x!17919 Int)) (Lexer!3862) )
))
(declare-fun thiss!16613 () LexerInterface!3864)

(declare-fun ruleValid!1359 (LexerInterface!3864 Rule!8334) Bool)

(assert (=> b!2260005 (ruleValid!1359 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39766 0))(
  ( (Unit!39767) )
))
(declare-fun lt!839777 () Unit!39766)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!766 (LexerInterface!3864 Rule!8334 List!26931) Unit!39766)

(assert (=> b!2260005 (= lt!839777 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!766 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2260006 () Bool)

(declare-fun res!966098 () Bool)

(assert (=> b!2260006 (=> (not res!966098) (not e!1447016))))

(declare-fun rulesInvariant!3366 (LexerInterface!3864 List!26931) Bool)

(assert (=> b!2260006 (= res!966098 (rulesInvariant!3366 thiss!16613 rules!1750))))

(declare-fun b!2260007 () Bool)

(declare-fun e!1447005 () Unit!39766)

(declare-fun Unit!39768 () Unit!39766)

(assert (=> b!2260007 (= e!1447005 Unit!39768)))

(declare-fun lt!839782 () Unit!39766)

(declare-fun lemmaSameIndexThenSameElement!134 (List!26931 Rule!8334 Rule!8334) Unit!39766)

(assert (=> b!2260007 (= lt!839782 (lemmaSameIndexThenSameElement!134 rules!1750 r!2363 otherR!12))))

(assert (=> b!2260007 false))

(declare-fun b!2260008 () Bool)

(declare-fun res!966099 () Bool)

(assert (=> b!2260008 (=> (not res!966099) (not e!1447016))))

(assert (=> b!2260008 (= res!966099 (contains!4621 rules!1750 otherR!12))))

(declare-fun b!2260009 () Bool)

(assert (=> b!2260009 (= e!1447016 e!1447003)))

(declare-fun res!966103 () Bool)

(assert (=> b!2260009 (=> (not res!966103) (not e!1447003))))

(declare-datatypes ((IArray!17371 0))(
  ( (IArray!17372 (innerList!8743 List!26932)) )
))
(declare-datatypes ((Conc!8683 0))(
  ( (Node!8683 (left!20373 Conc!8683) (right!20703 Conc!8683) (csize!17596 Int) (cheight!8894 Int)) (Leaf!12802 (xs!11625 IArray!17371) (csize!17597 Int)) (Empty!8683) )
))
(declare-datatypes ((BalanceConc!17094 0))(
  ( (BalanceConc!17095 (c!359066 Conc!8683)) )
))
(declare-datatypes ((tuple2!26420 0))(
  ( (tuple2!26421 (_1!15720 BalanceConc!17094) (_2!15720 BalanceConc!17092)) )
))
(declare-fun lt!839779 () tuple2!26420)

(declare-fun suffix!886 () List!26930)

(declare-datatypes ((tuple2!26422 0))(
  ( (tuple2!26423 (_1!15721 List!26932) (_2!15721 List!26930)) )
))
(declare-fun list!10346 (BalanceConc!17094) List!26932)

(assert (=> b!2260009 (= res!966103 (= (tuple2!26423 (list!10346 (_1!15720 lt!839779)) (list!10345 (_2!15720 lt!839779))) (tuple2!26423 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26930)

(declare-fun lex!1703 (LexerInterface!3864 List!26931 BalanceConc!17092) tuple2!26420)

(declare-fun seqFromList!2971 (List!26930) BalanceConc!17092)

(assert (=> b!2260009 (= lt!839779 (lex!1703 thiss!16613 rules!1750 (seqFromList!2971 input!1722)))))

(declare-fun b!2260010 () Bool)

(declare-fun otherP!12 () List!26930)

(declare-fun size!21027 (BalanceConc!17092) Int)

(declare-fun size!21028 (List!26930) Int)

(assert (=> b!2260010 (= e!1447010 (<= (size!21027 (charsOf!2655 (head!4846 tokens!456))) (size!21028 otherP!12)))))

(declare-fun b!2260011 () Bool)

(declare-fun res!966107 () Bool)

(assert (=> b!2260011 (=> (not res!966107) (not e!1447004))))

(declare-fun isPrefix!2257 (List!26930 List!26930) Bool)

(assert (=> b!2260011 (= res!966107 (isPrefix!2257 otherP!12 input!1722))))

(assert (=> b!2260012 (= e!1446997 (and tp!714695 tp!714696))))

(assert (=> b!2260013 (= e!1447002 (and tp!714688 tp!714694))))

(declare-fun b!2260014 () Bool)

(declare-fun e!1447018 () Bool)

(declare-fun e!1447011 () Bool)

(assert (=> b!2260014 (= e!1447018 e!1447011)))

(declare-fun res!966105 () Bool)

(assert (=> b!2260014 (=> res!966105 e!1447011)))

(get-info :version)

(assert (=> b!2260014 (= res!966105 ((_ is Nil!26838) tokens!456))))

(declare-fun lt!839775 () Unit!39766)

(assert (=> b!2260014 (= lt!839775 e!1447005)))

(declare-fun c!359063 () Bool)

(declare-fun lt!839778 () Int)

(declare-fun lt!839780 () Int)

(assert (=> b!2260014 (= c!359063 (= lt!839778 lt!839780))))

(declare-fun b!2260015 () Bool)

(assert (=> b!2260015 (= e!1447011 true)))

(declare-fun lt!839781 () Bool)

(declare-fun rulesValidInductive!1487 (LexerInterface!3864 List!26931) Bool)

(assert (=> b!2260015 (= lt!839781 (rulesValidInductive!1487 thiss!16613 rules!1750))))

(assert (=> b!2260016 (= e!1447021 (and tp!714684 tp!714693))))

(declare-fun b!2260017 () Bool)

(declare-fun res!966096 () Bool)

(assert (=> b!2260017 (=> (not res!966096) (not e!1447004))))

(assert (=> b!2260017 (= res!966096 (not (= r!2363 otherR!12)))))

(declare-fun b!2260018 () Bool)

(declare-fun e!1447012 () Bool)

(declare-fun tp!714687 () Bool)

(assert (=> b!2260018 (= e!1447012 (and tp_is_empty!10451 tp!714687))))

(declare-fun b!2260000 () Bool)

(declare-fun e!1446995 () Bool)

(declare-fun tp!714686 () Bool)

(assert (=> b!2260000 (= e!1446995 (and e!1447022 tp!714686))))

(declare-fun res!966106 () Bool)

(assert (=> start!220632 (=> (not res!966106) (not e!1447016))))

(assert (=> start!220632 (= res!966106 ((_ is Lexer!3862) thiss!16613))))

(assert (=> start!220632 e!1447016))

(assert (=> start!220632 true))

(assert (=> start!220632 e!1447012))

(assert (=> start!220632 e!1447006))

(assert (=> start!220632 e!1447000))

(assert (=> start!220632 e!1446999))

(assert (=> start!220632 e!1446995))

(assert (=> start!220632 e!1446998))

(assert (=> start!220632 e!1447009))

(declare-fun b!2260019 () Bool)

(assert (=> b!2260019 (= e!1447019 e!1447018)))

(declare-fun res!966100 () Bool)

(assert (=> b!2260019 (=> res!966100 e!1447018)))

(assert (=> b!2260019 (= res!966100 (> lt!839778 lt!839780))))

(declare-fun getIndex!288 (List!26931 Rule!8334) Int)

(assert (=> b!2260019 (= lt!839780 (getIndex!288 rules!1750 otherR!12))))

(assert (=> b!2260019 (= lt!839778 (getIndex!288 rules!1750 r!2363))))

(assert (=> b!2260019 (ruleValid!1359 thiss!16613 otherR!12)))

(declare-fun lt!839776 () Unit!39766)

(assert (=> b!2260019 (= lt!839776 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!766 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2260020 () Bool)

(declare-fun Unit!39769 () Unit!39766)

(assert (=> b!2260020 (= e!1447005 Unit!39769)))

(assert (= (and start!220632 res!966106) b!2259993))

(assert (= (and b!2259993 res!966094) b!2260006))

(assert (= (and b!2260006 res!966098) b!2260001))

(assert (= (and b!2260001 res!966092) b!2260008))

(assert (= (and b!2260008 res!966099) b!2260009))

(assert (= (and b!2260009 res!966103) b!2260002))

(assert (= (and b!2260002 (not res!966095)) b!2260010))

(assert (= (and b!2260002 res!966104) b!2259994))

(assert (= (and b!2259994 (not res!966102)) b!2259998))

(assert (= (and b!2259994 res!966097) b!2260011))

(assert (= (and b!2260011 res!966107) b!2260017))

(assert (= (and b!2260017 res!966096) b!2260005))

(assert (= (and b!2260005 res!966093) b!2259995))

(assert (= (and b!2260005 (not res!966101)) b!2260019))

(assert (= (and b!2260019 (not res!966100)) b!2260014))

(assert (= (and b!2260014 c!359063) b!2260007))

(assert (= (and b!2260014 (not c!359063)) b!2260020))

(assert (= (and b!2260014 (not res!966105)) b!2260015))

(assert (= (and start!220632 ((_ is Cons!26836) input!1722)) b!2260018))

(assert (= b!2259996 b!2260013))

(assert (= start!220632 b!2259996))

(assert (= (and start!220632 ((_ is Cons!26836) suffix!886)) b!2259989))

(assert (= (and start!220632 ((_ is Cons!26836) otherP!12)) b!2259991))

(assert (= b!2259990 b!2260016))

(assert (= b!2260000 b!2259990))

(assert (= (and start!220632 ((_ is Cons!26837) rules!1750)) b!2260000))

(assert (= b!2259992 b!2260004))

(assert (= start!220632 b!2259992))

(assert (= b!2260003 b!2260012))

(assert (= b!2259999 b!2260003))

(assert (= b!2259997 b!2259999))

(assert (= (and start!220632 ((_ is Cons!26838) tokens!456)) b!2259997))

(declare-fun m!2689647 () Bool)

(assert (=> b!2260005 m!2689647))

(declare-fun m!2689649 () Bool)

(assert (=> b!2260005 m!2689649))

(declare-fun m!2689651 () Bool)

(assert (=> b!2260011 m!2689651))

(declare-fun m!2689653 () Bool)

(assert (=> b!2260006 m!2689653))

(declare-fun m!2689655 () Bool)

(assert (=> b!2259997 m!2689655))

(declare-fun m!2689657 () Bool)

(assert (=> b!2260001 m!2689657))

(declare-fun m!2689659 () Bool)

(assert (=> b!2259995 m!2689659))

(assert (=> b!2259995 m!2689659))

(declare-fun m!2689661 () Bool)

(assert (=> b!2259995 m!2689661))

(assert (=> b!2259995 m!2689661))

(declare-fun m!2689663 () Bool)

(assert (=> b!2259995 m!2689663))

(assert (=> b!2259995 m!2689663))

(declare-fun m!2689665 () Bool)

(assert (=> b!2259995 m!2689665))

(declare-fun m!2689667 () Bool)

(assert (=> b!2260002 m!2689667))

(declare-fun m!2689669 () Bool)

(assert (=> b!2260003 m!2689669))

(declare-fun m!2689671 () Bool)

(assert (=> b!2260003 m!2689671))

(assert (=> b!2259998 m!2689659))

(declare-fun m!2689673 () Bool)

(assert (=> b!2260015 m!2689673))

(declare-fun m!2689675 () Bool)

(assert (=> b!2260009 m!2689675))

(declare-fun m!2689677 () Bool)

(assert (=> b!2260009 m!2689677))

(declare-fun m!2689679 () Bool)

(assert (=> b!2260009 m!2689679))

(assert (=> b!2260009 m!2689679))

(declare-fun m!2689681 () Bool)

(assert (=> b!2260009 m!2689681))

(declare-fun m!2689683 () Bool)

(assert (=> b!2260008 m!2689683))

(declare-fun m!2689685 () Bool)

(assert (=> b!2259990 m!2689685))

(declare-fun m!2689687 () Bool)

(assert (=> b!2259990 m!2689687))

(declare-fun m!2689689 () Bool)

(assert (=> b!2259999 m!2689689))

(assert (=> b!2260010 m!2689659))

(assert (=> b!2260010 m!2689659))

(assert (=> b!2260010 m!2689661))

(assert (=> b!2260010 m!2689661))

(declare-fun m!2689691 () Bool)

(assert (=> b!2260010 m!2689691))

(declare-fun m!2689693 () Bool)

(assert (=> b!2260010 m!2689693))

(declare-fun m!2689695 () Bool)

(assert (=> b!2259993 m!2689695))

(declare-fun m!2689697 () Bool)

(assert (=> b!2260019 m!2689697))

(declare-fun m!2689699 () Bool)

(assert (=> b!2260019 m!2689699))

(declare-fun m!2689701 () Bool)

(assert (=> b!2260019 m!2689701))

(declare-fun m!2689703 () Bool)

(assert (=> b!2260019 m!2689703))

(declare-fun m!2689705 () Bool)

(assert (=> b!2260007 m!2689705))

(declare-fun m!2689707 () Bool)

(assert (=> b!2259992 m!2689707))

(declare-fun m!2689709 () Bool)

(assert (=> b!2259992 m!2689709))

(declare-fun m!2689711 () Bool)

(assert (=> b!2259996 m!2689711))

(declare-fun m!2689713 () Bool)

(assert (=> b!2259996 m!2689713))

(check-sat (not b!2259999) (not b!2259996) (not b_next!67409) (not b!2259990) (not b!2260010) (not b!2260003) (not b_next!67415) (not b!2260006) (not b_next!67405) (not b_next!67417) (not b!2259989) (not b!2259995) b_and!177519 (not b!2259998) (not b_next!67411) b_and!177513 b_and!177515 (not b!2259992) (not b!2260019) (not b!2260009) (not b_next!67419) (not b!2260008) (not b!2260005) (not b!2259997) b_and!177527 (not b_next!67413) tp_is_empty!10451 (not b!2260015) (not b_next!67407) b_and!177517 b_and!177521 (not b!2260007) (not b!2260002) (not b!2260018) (not b!2259991) (not b!2260000) (not b!2259993) (not b!2260011) (not b!2260001) b_and!177525 b_and!177523)
(check-sat (not b_next!67409) (not b_next!67415) (not b_next!67405) (not b_next!67419) b_and!177527 (not b_next!67417) (not b_next!67413) b_and!177521 b_and!177519 (not b_next!67411) b_and!177513 b_and!177515 (not b_next!67407) b_and!177517 b_and!177525 b_and!177523)
