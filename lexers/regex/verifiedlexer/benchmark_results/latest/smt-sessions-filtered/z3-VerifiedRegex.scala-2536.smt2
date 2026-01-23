; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136210 () Bool)

(assert start!136210)

(declare-datatypes ((C!8148 0))(
  ( (C!8149 (val!4644 Int)) )
))
(declare-datatypes ((List!15228 0))(
  ( (Nil!15162) (Cons!15162 (h!20563 C!8148) (t!134363 List!15228)) )
))
(declare-datatypes ((IArray!10341 0))(
  ( (IArray!10342 (innerList!5228 List!15228)) )
))
(declare-datatypes ((Conc!5168 0))(
  ( (Node!5168 (left!12886 Conc!5168) (right!13216 Conc!5168) (csize!10566 Int) (cheight!5379 Int)) (Leaf!7705 (xs!7915 IArray!10341) (csize!10567 Int)) (Empty!5168) )
))
(declare-datatypes ((BalanceConc!10276 0))(
  ( (BalanceConc!10277 (c!240722 Conc!5168)) )
))
(declare-datatypes ((List!15229 0))(
  ( (Nil!15163) (Cons!15163 (h!20564 (_ BitVec 16)) (t!134364 List!15229)) )
))
(declare-datatypes ((TokenValue!2761 0))(
  ( (FloatLiteralValue!5522 (text!19772 List!15229)) (TokenValueExt!2760 (__x!9312 Int)) (Broken!13805 (value!85745 List!15229)) (Object!2826) (End!2761) (Def!2761) (Underscore!2761) (Match!2761) (Else!2761) (Error!2761) (Case!2761) (If!2761) (Extends!2761) (Abstract!2761) (Class!2761) (Val!2761) (DelimiterValue!5522 (del!2821 List!15229)) (KeywordValue!2767 (value!85746 List!15229)) (CommentValue!5522 (value!85747 List!15229)) (WhitespaceValue!5522 (value!85748 List!15229)) (IndentationValue!2761 (value!85749 List!15229)) (String!18060) (Int32!2761) (Broken!13806 (value!85750 List!15229)) (Boolean!2762) (Unit!24212) (OperatorValue!2764 (op!2821 List!15229)) (IdentifierValue!5522 (value!85751 List!15229)) (IdentifierValue!5523 (value!85752 List!15229)) (WhitespaceValue!5523 (value!85753 List!15229)) (True!5522) (False!5522) (Broken!13807 (value!85754 List!15229)) (Broken!13808 (value!85755 List!15229)) (True!5523) (RightBrace!2761) (RightBracket!2761) (Colon!2761) (Null!2761) (Comma!2761) (LeftBracket!2761) (False!5523) (LeftBrace!2761) (ImaginaryLiteralValue!2761 (text!19773 List!15229)) (StringLiteralValue!8283 (value!85756 List!15229)) (EOFValue!2761 (value!85757 List!15229)) (IdentValue!2761 (value!85758 List!15229)) (DelimiterValue!5523 (value!85759 List!15229)) (DedentValue!2761 (value!85760 List!15229)) (NewLineValue!2761 (value!85761 List!15229)) (IntegerValue!8283 (value!85762 (_ BitVec 32)) (text!19774 List!15229)) (IntegerValue!8284 (value!85763 Int) (text!19775 List!15229)) (Times!2761) (Or!2761) (Equal!2761) (Minus!2761) (Broken!13809 (value!85764 List!15229)) (And!2761) (Div!2761) (LessEqual!2761) (Mod!2761) (Concat!6746) (Not!2761) (Plus!2761) (SpaceValue!2761 (value!85765 List!15229)) (IntegerValue!8285 (value!85766 Int) (text!19776 List!15229)) (StringLiteralValue!8284 (text!19777 List!15229)) (FloatLiteralValue!5523 (text!19778 List!15229)) (BytesLiteralValue!2761 (value!85767 List!15229)) (CommentValue!5523 (value!85768 List!15229)) (StringLiteralValue!8285 (value!85769 List!15229)) (ErrorTokenValue!2761 (msg!2822 List!15229)) )
))
(declare-datatypes ((Regex!3985 0))(
  ( (ElementMatch!3985 (c!240723 C!8148)) (Concat!6747 (regOne!8482 Regex!3985) (regTwo!8482 Regex!3985)) (EmptyExpr!3985) (Star!3985 (reg!4314 Regex!3985)) (EmptyLang!3985) (Union!3985 (regOne!8483 Regex!3985) (regTwo!8483 Regex!3985)) )
))
(declare-datatypes ((String!18061 0))(
  ( (String!18062 (value!85770 String)) )
))
(declare-datatypes ((TokenValueInjection!5182 0))(
  ( (TokenValueInjection!5183 (toValue!3982 Int) (toChars!3841 Int)) )
))
(declare-datatypes ((Rule!5142 0))(
  ( (Rule!5143 (regex!2671 Regex!3985) (tag!2935 String!18061) (isSeparator!2671 Bool) (transformation!2671 TokenValueInjection!5182)) )
))
(declare-datatypes ((Token!5004 0))(
  ( (Token!5005 (value!85771 TokenValue!2761) (rule!4444 Rule!5142) (size!12401 Int) (originalCharacters!3533 List!15228)) )
))
(declare-datatypes ((List!15230 0))(
  ( (Nil!15164) (Cons!15164 (h!20565 Token!5004) (t!134365 List!15230)) )
))
(declare-datatypes ((IArray!10343 0))(
  ( (IArray!10344 (innerList!5229 List!15230)) )
))
(declare-datatypes ((Conc!5169 0))(
  ( (Node!5169 (left!12887 Conc!5169) (right!13217 Conc!5169) (csize!10568 Int) (cheight!5380 Int)) (Leaf!7706 (xs!7916 IArray!10343) (csize!10569 Int)) (Empty!5169) )
))
(declare-datatypes ((BalanceConc!10278 0))(
  ( (BalanceConc!10279 (c!240724 Conc!5169)) )
))
(declare-datatypes ((List!15231 0))(
  ( (Nil!15165) (Cons!15165 (h!20566 Rule!5142) (t!134366 List!15231)) )
))
(declare-datatypes ((PrintableTokens!1124 0))(
  ( (PrintableTokens!1125 (rules!11658 List!15231) (tokens!2096 BalanceConc!10278)) )
))
(declare-fun other!32 () PrintableTokens!1124)

(declare-fun e!931738 () Bool)

(declare-fun tp!411488 () Bool)

(declare-fun b!1460543 () Bool)

(declare-fun e!931739 () Bool)

(declare-fun inv!20258 (BalanceConc!10278) Bool)

(assert (=> b!1460543 (= e!931738 (and tp!411488 (inv!20258 (tokens!2096 other!32)) e!931739))))

(declare-fun b!1460544 () Bool)

(declare-fun res!660884 () Bool)

(declare-fun e!931744 () Bool)

(assert (=> b!1460544 (=> res!660884 e!931744)))

(declare-fun lt!504438 () List!15230)

(declare-fun thiss!10022 () PrintableTokens!1124)

(declare-datatypes ((LexerInterface!2327 0))(
  ( (LexerInterfaceExt!2324 (__x!9313 Int)) (Lexer!2325) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!245 (LexerInterface!2327 List!15230 List!15231) Bool)

(assert (=> b!1460544 (= res!660884 (not (tokensListTwoByTwoPredicateSeparableList!245 Lexer!2325 lt!504438 (rules!11658 thiss!10022))))))

(declare-fun b!1460545 () Bool)

(declare-fun lt!504446 () Token!5004)

(declare-fun lt!504445 () Token!5004)

(declare-fun separableTokensPredicate!536 (LexerInterface!2327 Token!5004 Token!5004 List!15231) Bool)

(assert (=> b!1460545 (= e!931744 (separableTokensPredicate!536 Lexer!2325 lt!504445 lt!504446 (rules!11658 thiss!10022)))))

(declare-fun rulesProduceIndividualToken!1246 (LexerInterface!2327 List!15231 Token!5004) Bool)

(assert (=> b!1460545 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504446)))

(declare-fun lt!504437 () List!15230)

(declare-datatypes ((Unit!24213 0))(
  ( (Unit!24214) )
))
(declare-fun lt!504441 () Unit!24213)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 (LexerInterface!2327 List!15231 List!15230 Token!5004) Unit!24213)

(assert (=> b!1460545 (= lt!504441 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504437 lt!504446))))

(declare-fun head!3000 (List!15230) Token!5004)

(assert (=> b!1460545 (= lt!504446 (head!3000 lt!504437))))

(assert (=> b!1460545 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504445)))

(declare-fun lt!504440 () Unit!24213)

(assert (=> b!1460545 (= lt!504440 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504438 lt!504445))))

(declare-fun last!272 (List!15230) Token!5004)

(assert (=> b!1460545 (= lt!504445 (last!272 lt!504438))))

(declare-fun b!1460547 () Bool)

(declare-fun res!660890 () Bool)

(assert (=> b!1460547 (=> res!660890 e!931744)))

(assert (=> b!1460547 (= res!660890 (not (tokensListTwoByTwoPredicateSeparableList!245 Lexer!2325 lt!504437 (rules!11658 thiss!10022))))))

(declare-fun b!1460548 () Bool)

(declare-fun res!660886 () Bool)

(assert (=> b!1460548 (=> res!660886 e!931744)))

(declare-fun rulesInvariant!2160 (LexerInterface!2327 List!15231) Bool)

(assert (=> b!1460548 (= res!660886 (not (rulesInvariant!2160 Lexer!2325 (rules!11658 thiss!10022))))))

(declare-fun b!1460549 () Bool)

(declare-fun res!660892 () Bool)

(assert (=> b!1460549 (=> res!660892 e!931744)))

(declare-fun isEmpty!9511 (List!15230) Bool)

(assert (=> b!1460549 (= res!660892 (isEmpty!9511 lt!504437))))

(declare-fun b!1460550 () Bool)

(declare-fun e!931742 () Bool)

(declare-fun e!931741 () Bool)

(assert (=> b!1460550 (= e!931742 e!931741)))

(declare-fun res!660895 () Bool)

(assert (=> b!1460550 (=> (not res!660895) (not e!931741))))

(declare-fun isEmpty!9512 (BalanceConc!10278) Bool)

(assert (=> b!1460550 (= res!660895 (not (isEmpty!9512 (tokens!2096 other!32))))))

(declare-fun lt!504439 () Unit!24213)

(declare-fun lemmaInvariant!367 (PrintableTokens!1124) Unit!24213)

(assert (=> b!1460550 (= lt!504439 (lemmaInvariant!367 thiss!10022))))

(declare-fun lt!504442 () Unit!24213)

(assert (=> b!1460550 (= lt!504442 (lemmaInvariant!367 other!32))))

(declare-fun b!1460551 () Bool)

(declare-fun res!660885 () Bool)

(assert (=> b!1460551 (=> res!660885 e!931744)))

(declare-fun rulesProduceEachTokenIndividuallyList!746 (LexerInterface!2327 List!15231 List!15230) Bool)

(assert (=> b!1460551 (= res!660885 (not (rulesProduceEachTokenIndividuallyList!746 Lexer!2325 (rules!11658 thiss!10022) lt!504437)))))

(declare-fun b!1460552 () Bool)

(declare-fun e!931743 () Bool)

(declare-fun tp!411485 () Bool)

(declare-fun inv!20259 (Conc!5169) Bool)

(assert (=> b!1460552 (= e!931743 (and (inv!20259 (c!240724 (tokens!2096 thiss!10022))) tp!411485))))

(declare-fun b!1460553 () Bool)

(declare-fun res!660889 () Bool)

(assert (=> b!1460553 (=> (not res!660889) (not e!931741))))

(assert (=> b!1460553 (= res!660889 (not (isEmpty!9512 (tokens!2096 thiss!10022))))))

(declare-fun b!1460554 () Bool)

(declare-fun tp!411486 () Bool)

(assert (=> b!1460554 (= e!931739 (and (inv!20259 (c!240724 (tokens!2096 other!32))) tp!411486))))

(declare-fun b!1460555 () Bool)

(declare-fun res!660894 () Bool)

(assert (=> b!1460555 (=> res!660894 e!931744)))

(assert (=> b!1460555 (= res!660894 (isEmpty!9511 lt!504438))))

(declare-fun b!1460546 () Bool)

(assert (=> b!1460546 (= e!931741 (not e!931744))))

(declare-fun res!660891 () Bool)

(assert (=> b!1460546 (=> res!660891 e!931744)))

(declare-fun lt!504447 () Token!5004)

(declare-fun lt!504443 () Token!5004)

(assert (=> b!1460546 (= res!660891 (not (separableTokensPredicate!536 Lexer!2325 lt!504443 lt!504447 (rules!11658 thiss!10022))))))

(assert (=> b!1460546 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504447)))

(declare-fun lt!504436 () Unit!24213)

(assert (=> b!1460546 (= lt!504436 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504437 lt!504447))))

(declare-fun head!3001 (BalanceConc!10278) Token!5004)

(assert (=> b!1460546 (= lt!504447 (head!3001 (tokens!2096 other!32)))))

(declare-fun list!6069 (BalanceConc!10278) List!15230)

(assert (=> b!1460546 (= lt!504437 (list!6069 (tokens!2096 other!32)))))

(assert (=> b!1460546 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504443)))

(declare-fun lt!504444 () Unit!24213)

(assert (=> b!1460546 (= lt!504444 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504438 lt!504443))))

(declare-fun last!273 (BalanceConc!10278) Token!5004)

(assert (=> b!1460546 (= lt!504443 (last!273 (tokens!2096 thiss!10022)))))

(assert (=> b!1460546 (= lt!504438 (list!6069 (tokens!2096 thiss!10022)))))

(declare-fun res!660888 () Bool)

(assert (=> start!136210 (=> (not res!660888) (not e!931742))))

(assert (=> start!136210 (= res!660888 (= (rules!11658 thiss!10022) (rules!11658 other!32)))))

(assert (=> start!136210 e!931742))

(declare-fun e!931740 () Bool)

(declare-fun inv!20260 (PrintableTokens!1124) Bool)

(assert (=> start!136210 (and (inv!20260 thiss!10022) e!931740)))

(assert (=> start!136210 (and (inv!20260 other!32) e!931738)))

(declare-fun b!1460556 () Bool)

(declare-fun tp!411487 () Bool)

(assert (=> b!1460556 (= e!931740 (and tp!411487 (inv!20258 (tokens!2096 thiss!10022)) e!931743))))

(declare-fun b!1460557 () Bool)

(declare-fun res!660893 () Bool)

(assert (=> b!1460557 (=> res!660893 e!931744)))

(declare-fun isEmpty!9513 (List!15231) Bool)

(assert (=> b!1460557 (= res!660893 (isEmpty!9513 (rules!11658 thiss!10022)))))

(declare-fun b!1460558 () Bool)

(declare-fun res!660887 () Bool)

(assert (=> b!1460558 (=> res!660887 e!931744)))

(assert (=> b!1460558 (= res!660887 (not (rulesProduceEachTokenIndividuallyList!746 Lexer!2325 (rules!11658 thiss!10022) lt!504438)))))

(assert (= (and start!136210 res!660888) b!1460550))

(assert (= (and b!1460550 res!660895) b!1460553))

(assert (= (and b!1460553 res!660889) b!1460546))

(assert (= (and b!1460546 (not res!660891)) b!1460557))

(assert (= (and b!1460557 (not res!660893)) b!1460548))

(assert (= (and b!1460548 (not res!660886)) b!1460558))

(assert (= (and b!1460558 (not res!660887)) b!1460551))

(assert (= (and b!1460551 (not res!660885)) b!1460544))

(assert (= (and b!1460544 (not res!660884)) b!1460547))

(assert (= (and b!1460547 (not res!660890)) b!1460555))

(assert (= (and b!1460555 (not res!660894)) b!1460549))

(assert (= (and b!1460549 (not res!660892)) b!1460545))

(assert (= b!1460556 b!1460552))

(assert (= start!136210 b!1460556))

(assert (= b!1460543 b!1460554))

(assert (= start!136210 b!1460543))

(declare-fun m!1695057 () Bool)

(assert (=> b!1460545 m!1695057))

(declare-fun m!1695059 () Bool)

(assert (=> b!1460545 m!1695059))

(declare-fun m!1695061 () Bool)

(assert (=> b!1460545 m!1695061))

(declare-fun m!1695063 () Bool)

(assert (=> b!1460545 m!1695063))

(declare-fun m!1695065 () Bool)

(assert (=> b!1460545 m!1695065))

(declare-fun m!1695067 () Bool)

(assert (=> b!1460545 m!1695067))

(declare-fun m!1695069 () Bool)

(assert (=> b!1460545 m!1695069))

(declare-fun m!1695071 () Bool)

(assert (=> b!1460554 m!1695071))

(declare-fun m!1695073 () Bool)

(assert (=> start!136210 m!1695073))

(declare-fun m!1695075 () Bool)

(assert (=> start!136210 m!1695075))

(declare-fun m!1695077 () Bool)

(assert (=> b!1460543 m!1695077))

(declare-fun m!1695079 () Bool)

(assert (=> b!1460549 m!1695079))

(declare-fun m!1695081 () Bool)

(assert (=> b!1460546 m!1695081))

(declare-fun m!1695083 () Bool)

(assert (=> b!1460546 m!1695083))

(declare-fun m!1695085 () Bool)

(assert (=> b!1460546 m!1695085))

(declare-fun m!1695087 () Bool)

(assert (=> b!1460546 m!1695087))

(declare-fun m!1695089 () Bool)

(assert (=> b!1460546 m!1695089))

(declare-fun m!1695091 () Bool)

(assert (=> b!1460546 m!1695091))

(declare-fun m!1695093 () Bool)

(assert (=> b!1460546 m!1695093))

(declare-fun m!1695095 () Bool)

(assert (=> b!1460546 m!1695095))

(declare-fun m!1695097 () Bool)

(assert (=> b!1460546 m!1695097))

(declare-fun m!1695099 () Bool)

(assert (=> b!1460553 m!1695099))

(declare-fun m!1695101 () Bool)

(assert (=> b!1460555 m!1695101))

(declare-fun m!1695103 () Bool)

(assert (=> b!1460552 m!1695103))

(declare-fun m!1695105 () Bool)

(assert (=> b!1460558 m!1695105))

(declare-fun m!1695107 () Bool)

(assert (=> b!1460550 m!1695107))

(declare-fun m!1695109 () Bool)

(assert (=> b!1460550 m!1695109))

(declare-fun m!1695111 () Bool)

(assert (=> b!1460550 m!1695111))

(declare-fun m!1695113 () Bool)

(assert (=> b!1460557 m!1695113))

(declare-fun m!1695115 () Bool)

(assert (=> b!1460551 m!1695115))

(declare-fun m!1695117 () Bool)

(assert (=> b!1460556 m!1695117))

(declare-fun m!1695119 () Bool)

(assert (=> b!1460544 m!1695119))

(declare-fun m!1695121 () Bool)

(assert (=> b!1460547 m!1695121))

(declare-fun m!1695123 () Bool)

(assert (=> b!1460548 m!1695123))

(check-sat (not b!1460545) (not b!1460557) (not b!1460551) (not b!1460547) (not b!1460556) (not b!1460552) (not b!1460555) (not b!1460554) (not b!1460548) (not b!1460553) (not start!136210) (not b!1460549) (not b!1460550) (not b!1460546) (not b!1460544) (not b!1460558) (not b!1460543))
(check-sat)
(get-model)

(declare-fun d!427499 () Bool)

(get-info :version)

(assert (=> d!427499 (= (isEmpty!9511 lt!504438) ((_ is Nil!15164) lt!504438))))

(assert (=> b!1460555 d!427499))

(declare-fun d!427501 () Bool)

(declare-fun lt!504450 () Token!5004)

(declare-fun contains!2904 (List!15230 Token!5004) Bool)

(assert (=> d!427501 (contains!2904 lt!504438 lt!504450)))

(declare-fun e!931747 () Token!5004)

(assert (=> d!427501 (= lt!504450 e!931747)))

(declare-fun c!240727 () Bool)

(assert (=> d!427501 (= c!240727 (and ((_ is Cons!15164) lt!504438) ((_ is Nil!15164) (t!134365 lt!504438))))))

(assert (=> d!427501 (not (isEmpty!9511 lt!504438))))

(assert (=> d!427501 (= (last!272 lt!504438) lt!504450)))

(declare-fun b!1460563 () Bool)

(assert (=> b!1460563 (= e!931747 (h!20565 lt!504438))))

(declare-fun b!1460564 () Bool)

(assert (=> b!1460564 (= e!931747 (last!272 (t!134365 lt!504438)))))

(assert (= (and d!427501 c!240727) b!1460563))

(assert (= (and d!427501 (not c!240727)) b!1460564))

(declare-fun m!1695125 () Bool)

(assert (=> d!427501 m!1695125))

(assert (=> d!427501 m!1695101))

(declare-fun m!1695127 () Bool)

(assert (=> b!1460564 m!1695127))

(assert (=> b!1460545 d!427501))

(declare-fun d!427503 () Bool)

(declare-fun prefixMatchZipperSequence!349 (Regex!3985 BalanceConc!10276) Bool)

(declare-fun rulesRegex!407 (LexerInterface!2327 List!15231) Regex!3985)

(declare-fun ++!4074 (BalanceConc!10276 BalanceConc!10276) BalanceConc!10276)

(declare-fun charsOf!1534 (Token!5004) BalanceConc!10276)

(declare-fun singletonSeq!1272 (C!8148) BalanceConc!10276)

(declare-fun apply!3945 (BalanceConc!10276 Int) C!8148)

(assert (=> d!427503 (= (separableTokensPredicate!536 Lexer!2325 lt!504445 lt!504446 (rules!11658 thiss!10022)) (not (prefixMatchZipperSequence!349 (rulesRegex!407 Lexer!2325 (rules!11658 thiss!10022)) (++!4074 (charsOf!1534 lt!504445) (singletonSeq!1272 (apply!3945 (charsOf!1534 lt!504446) 0))))))))

(declare-fun bs!344122 () Bool)

(assert (= bs!344122 d!427503))

(declare-fun m!1695129 () Bool)

(assert (=> bs!344122 m!1695129))

(declare-fun m!1695131 () Bool)

(assert (=> bs!344122 m!1695131))

(declare-fun m!1695133 () Bool)

(assert (=> bs!344122 m!1695133))

(declare-fun m!1695135 () Bool)

(assert (=> bs!344122 m!1695135))

(declare-fun m!1695137 () Bool)

(assert (=> bs!344122 m!1695137))

(assert (=> bs!344122 m!1695135))

(declare-fun m!1695139 () Bool)

(assert (=> bs!344122 m!1695139))

(declare-fun m!1695141 () Bool)

(assert (=> bs!344122 m!1695141))

(assert (=> bs!344122 m!1695131))

(assert (=> bs!344122 m!1695139))

(assert (=> bs!344122 m!1695137))

(assert (=> bs!344122 m!1695141))

(assert (=> bs!344122 m!1695129))

(assert (=> b!1460545 d!427503))

(declare-fun d!427505 () Bool)

(assert (=> d!427505 (= (head!3000 lt!504437) (h!20565 lt!504437))))

(assert (=> b!1460545 d!427505))

(declare-fun d!427507 () Bool)

(declare-fun lt!504456 () Bool)

(declare-fun e!931757 () Bool)

(assert (=> d!427507 (= lt!504456 e!931757)))

(declare-fun res!660920 () Bool)

(assert (=> d!427507 (=> (not res!660920) (not e!931757))))

(declare-datatypes ((tuple2!14238 0))(
  ( (tuple2!14239 (_1!8005 BalanceConc!10278) (_2!8005 BalanceConc!10276)) )
))
(declare-fun lex!1072 (LexerInterface!2327 List!15231 BalanceConc!10276) tuple2!14238)

(declare-fun print!1099 (LexerInterface!2327 BalanceConc!10278) BalanceConc!10276)

(declare-fun singletonSeq!1273 (Token!5004) BalanceConc!10278)

(assert (=> d!427507 (= res!660920 (= (list!6069 (_1!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504446))))) (list!6069 (singletonSeq!1273 lt!504446))))))

(declare-fun e!931756 () Bool)

(assert (=> d!427507 (= lt!504456 e!931756)))

(declare-fun res!660921 () Bool)

(assert (=> d!427507 (=> (not res!660921) (not e!931756))))

(declare-fun lt!504455 () tuple2!14238)

(declare-fun size!12404 (BalanceConc!10278) Int)

(assert (=> d!427507 (= res!660921 (= (size!12404 (_1!8005 lt!504455)) 1))))

(assert (=> d!427507 (= lt!504455 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504446))))))

(assert (=> d!427507 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427507 (= (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504446) lt!504456)))

(declare-fun b!1460583 () Bool)

(declare-fun res!660919 () Bool)

(assert (=> b!1460583 (=> (not res!660919) (not e!931756))))

(declare-fun apply!3947 (BalanceConc!10278 Int) Token!5004)

(assert (=> b!1460583 (= res!660919 (= (apply!3947 (_1!8005 lt!504455) 0) lt!504446))))

(declare-fun b!1460584 () Bool)

(declare-fun isEmpty!9516 (BalanceConc!10276) Bool)

(assert (=> b!1460584 (= e!931756 (isEmpty!9516 (_2!8005 lt!504455)))))

(declare-fun b!1460585 () Bool)

(assert (=> b!1460585 (= e!931757 (isEmpty!9516 (_2!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504446))))))))

(assert (= (and d!427507 res!660921) b!1460583))

(assert (= (and b!1460583 res!660919) b!1460584))

(assert (= (and d!427507 res!660920) b!1460585))

(declare-fun m!1695159 () Bool)

(assert (=> d!427507 m!1695159))

(declare-fun m!1695161 () Bool)

(assert (=> d!427507 m!1695161))

(assert (=> d!427507 m!1695161))

(declare-fun m!1695163 () Bool)

(assert (=> d!427507 m!1695163))

(declare-fun m!1695165 () Bool)

(assert (=> d!427507 m!1695165))

(declare-fun m!1695167 () Bool)

(assert (=> d!427507 m!1695167))

(declare-fun m!1695169 () Bool)

(assert (=> d!427507 m!1695169))

(assert (=> d!427507 m!1695161))

(assert (=> d!427507 m!1695165))

(assert (=> d!427507 m!1695113))

(declare-fun m!1695171 () Bool)

(assert (=> b!1460583 m!1695171))

(declare-fun m!1695173 () Bool)

(assert (=> b!1460584 m!1695173))

(assert (=> b!1460585 m!1695161))

(assert (=> b!1460585 m!1695161))

(assert (=> b!1460585 m!1695165))

(assert (=> b!1460585 m!1695165))

(assert (=> b!1460585 m!1695167))

(declare-fun m!1695175 () Bool)

(assert (=> b!1460585 m!1695175))

(assert (=> b!1460545 d!427507))

(declare-fun d!427519 () Bool)

(assert (=> d!427519 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504445)))

(declare-fun lt!504483 () Unit!24213)

(declare-fun choose!8976 (LexerInterface!2327 List!15231 List!15230 Token!5004) Unit!24213)

(assert (=> d!427519 (= lt!504483 (choose!8976 Lexer!2325 (rules!11658 thiss!10022) lt!504438 lt!504445))))

(assert (=> d!427519 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427519 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504438 lt!504445) lt!504483)))

(declare-fun bs!344126 () Bool)

(assert (= bs!344126 d!427519))

(assert (=> bs!344126 m!1695069))

(declare-fun m!1695205 () Bool)

(assert (=> bs!344126 m!1695205))

(assert (=> bs!344126 m!1695113))

(assert (=> b!1460545 d!427519))

(declare-fun d!427529 () Bool)

(declare-fun lt!504485 () Bool)

(declare-fun e!931773 () Bool)

(assert (=> d!427529 (= lt!504485 e!931773)))

(declare-fun res!660933 () Bool)

(assert (=> d!427529 (=> (not res!660933) (not e!931773))))

(assert (=> d!427529 (= res!660933 (= (list!6069 (_1!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504445))))) (list!6069 (singletonSeq!1273 lt!504445))))))

(declare-fun e!931772 () Bool)

(assert (=> d!427529 (= lt!504485 e!931772)))

(declare-fun res!660934 () Bool)

(assert (=> d!427529 (=> (not res!660934) (not e!931772))))

(declare-fun lt!504484 () tuple2!14238)

(assert (=> d!427529 (= res!660934 (= (size!12404 (_1!8005 lt!504484)) 1))))

(assert (=> d!427529 (= lt!504484 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504445))))))

(assert (=> d!427529 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427529 (= (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504445) lt!504485)))

(declare-fun b!1460604 () Bool)

(declare-fun res!660932 () Bool)

(assert (=> b!1460604 (=> (not res!660932) (not e!931772))))

(assert (=> b!1460604 (= res!660932 (= (apply!3947 (_1!8005 lt!504484) 0) lt!504445))))

(declare-fun b!1460605 () Bool)

(assert (=> b!1460605 (= e!931772 (isEmpty!9516 (_2!8005 lt!504484)))))

(declare-fun b!1460606 () Bool)

(assert (=> b!1460606 (= e!931773 (isEmpty!9516 (_2!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504445))))))))

(assert (= (and d!427529 res!660934) b!1460604))

(assert (= (and b!1460604 res!660932) b!1460605))

(assert (= (and d!427529 res!660933) b!1460606))

(declare-fun m!1695207 () Bool)

(assert (=> d!427529 m!1695207))

(declare-fun m!1695209 () Bool)

(assert (=> d!427529 m!1695209))

(assert (=> d!427529 m!1695209))

(declare-fun m!1695211 () Bool)

(assert (=> d!427529 m!1695211))

(declare-fun m!1695213 () Bool)

(assert (=> d!427529 m!1695213))

(declare-fun m!1695215 () Bool)

(assert (=> d!427529 m!1695215))

(declare-fun m!1695217 () Bool)

(assert (=> d!427529 m!1695217))

(assert (=> d!427529 m!1695209))

(assert (=> d!427529 m!1695213))

(assert (=> d!427529 m!1695113))

(declare-fun m!1695219 () Bool)

(assert (=> b!1460604 m!1695219))

(declare-fun m!1695221 () Bool)

(assert (=> b!1460605 m!1695221))

(assert (=> b!1460606 m!1695209))

(assert (=> b!1460606 m!1695209))

(assert (=> b!1460606 m!1695213))

(assert (=> b!1460606 m!1695213))

(assert (=> b!1460606 m!1695215))

(declare-fun m!1695223 () Bool)

(assert (=> b!1460606 m!1695223))

(assert (=> b!1460545 d!427529))

(declare-fun d!427531 () Bool)

(assert (=> d!427531 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504446)))

(declare-fun lt!504486 () Unit!24213)

(assert (=> d!427531 (= lt!504486 (choose!8976 Lexer!2325 (rules!11658 thiss!10022) lt!504437 lt!504446))))

(assert (=> d!427531 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427531 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504437 lt!504446) lt!504486)))

(declare-fun bs!344127 () Bool)

(assert (= bs!344127 d!427531))

(assert (=> bs!344127 m!1695063))

(declare-fun m!1695225 () Bool)

(assert (=> bs!344127 m!1695225))

(assert (=> bs!344127 m!1695113))

(assert (=> b!1460545 d!427531))

(declare-fun d!427533 () Bool)

(declare-fun isBalanced!1549 (Conc!5169) Bool)

(assert (=> d!427533 (= (inv!20258 (tokens!2096 thiss!10022)) (isBalanced!1549 (c!240724 (tokens!2096 thiss!10022))))))

(declare-fun bs!344128 () Bool)

(assert (= bs!344128 d!427533))

(declare-fun m!1695227 () Bool)

(assert (=> bs!344128 m!1695227))

(assert (=> b!1460556 d!427533))

(declare-fun d!427535 () Bool)

(declare-fun list!6071 (Conc!5169) List!15230)

(assert (=> d!427535 (= (list!6069 (tokens!2096 other!32)) (list!6071 (c!240724 (tokens!2096 other!32))))))

(declare-fun bs!344129 () Bool)

(assert (= bs!344129 d!427535))

(declare-fun m!1695229 () Bool)

(assert (=> bs!344129 m!1695229))

(assert (=> b!1460546 d!427535))

(declare-fun d!427537 () Bool)

(declare-fun lt!504489 () Token!5004)

(assert (=> d!427537 (= lt!504489 (head!3000 (list!6069 (tokens!2096 other!32))))))

(declare-fun head!3003 (Conc!5169) Token!5004)

(assert (=> d!427537 (= lt!504489 (head!3003 (c!240724 (tokens!2096 other!32))))))

(assert (=> d!427537 (not (isEmpty!9512 (tokens!2096 other!32)))))

(assert (=> d!427537 (= (head!3001 (tokens!2096 other!32)) lt!504489)))

(declare-fun bs!344130 () Bool)

(assert (= bs!344130 d!427537))

(assert (=> bs!344130 m!1695087))

(assert (=> bs!344130 m!1695087))

(declare-fun m!1695231 () Bool)

(assert (=> bs!344130 m!1695231))

(declare-fun m!1695233 () Bool)

(assert (=> bs!344130 m!1695233))

(assert (=> bs!344130 m!1695107))

(assert (=> b!1460546 d!427537))

(declare-fun d!427539 () Bool)

(assert (=> d!427539 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504443)))

(declare-fun lt!504490 () Unit!24213)

(assert (=> d!427539 (= lt!504490 (choose!8976 Lexer!2325 (rules!11658 thiss!10022) lt!504438 lt!504443))))

(assert (=> d!427539 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427539 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504438 lt!504443) lt!504490)))

(declare-fun bs!344131 () Bool)

(assert (= bs!344131 d!427539))

(assert (=> bs!344131 m!1695089))

(declare-fun m!1695235 () Bool)

(assert (=> bs!344131 m!1695235))

(assert (=> bs!344131 m!1695113))

(assert (=> b!1460546 d!427539))

(declare-fun d!427541 () Bool)

(declare-fun lt!504493 () Token!5004)

(assert (=> d!427541 (= lt!504493 (last!272 (list!6069 (tokens!2096 thiss!10022))))))

(declare-fun last!275 (Conc!5169) Token!5004)

(assert (=> d!427541 (= lt!504493 (last!275 (c!240724 (tokens!2096 thiss!10022))))))

(assert (=> d!427541 (not (isEmpty!9512 (tokens!2096 thiss!10022)))))

(assert (=> d!427541 (= (last!273 (tokens!2096 thiss!10022)) lt!504493)))

(declare-fun bs!344132 () Bool)

(assert (= bs!344132 d!427541))

(assert (=> bs!344132 m!1695085))

(assert (=> bs!344132 m!1695085))

(declare-fun m!1695237 () Bool)

(assert (=> bs!344132 m!1695237))

(declare-fun m!1695239 () Bool)

(assert (=> bs!344132 m!1695239))

(assert (=> bs!344132 m!1695099))

(assert (=> b!1460546 d!427541))

(declare-fun d!427543 () Bool)

(declare-fun lt!504495 () Bool)

(declare-fun e!931775 () Bool)

(assert (=> d!427543 (= lt!504495 e!931775)))

(declare-fun res!660936 () Bool)

(assert (=> d!427543 (=> (not res!660936) (not e!931775))))

(assert (=> d!427543 (= res!660936 (= (list!6069 (_1!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504443))))) (list!6069 (singletonSeq!1273 lt!504443))))))

(declare-fun e!931774 () Bool)

(assert (=> d!427543 (= lt!504495 e!931774)))

(declare-fun res!660937 () Bool)

(assert (=> d!427543 (=> (not res!660937) (not e!931774))))

(declare-fun lt!504494 () tuple2!14238)

(assert (=> d!427543 (= res!660937 (= (size!12404 (_1!8005 lt!504494)) 1))))

(assert (=> d!427543 (= lt!504494 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504443))))))

(assert (=> d!427543 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427543 (= (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504443) lt!504495)))

(declare-fun b!1460607 () Bool)

(declare-fun res!660935 () Bool)

(assert (=> b!1460607 (=> (not res!660935) (not e!931774))))

(assert (=> b!1460607 (= res!660935 (= (apply!3947 (_1!8005 lt!504494) 0) lt!504443))))

(declare-fun b!1460608 () Bool)

(assert (=> b!1460608 (= e!931774 (isEmpty!9516 (_2!8005 lt!504494)))))

(declare-fun b!1460609 () Bool)

(assert (=> b!1460609 (= e!931775 (isEmpty!9516 (_2!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504443))))))))

(assert (= (and d!427543 res!660937) b!1460607))

(assert (= (and b!1460607 res!660935) b!1460608))

(assert (= (and d!427543 res!660936) b!1460609))

(declare-fun m!1695241 () Bool)

(assert (=> d!427543 m!1695241))

(declare-fun m!1695243 () Bool)

(assert (=> d!427543 m!1695243))

(assert (=> d!427543 m!1695243))

(declare-fun m!1695245 () Bool)

(assert (=> d!427543 m!1695245))

(declare-fun m!1695247 () Bool)

(assert (=> d!427543 m!1695247))

(declare-fun m!1695249 () Bool)

(assert (=> d!427543 m!1695249))

(declare-fun m!1695251 () Bool)

(assert (=> d!427543 m!1695251))

(assert (=> d!427543 m!1695243))

(assert (=> d!427543 m!1695247))

(assert (=> d!427543 m!1695113))

(declare-fun m!1695253 () Bool)

(assert (=> b!1460607 m!1695253))

(declare-fun m!1695255 () Bool)

(assert (=> b!1460608 m!1695255))

(assert (=> b!1460609 m!1695243))

(assert (=> b!1460609 m!1695243))

(assert (=> b!1460609 m!1695247))

(assert (=> b!1460609 m!1695247))

(assert (=> b!1460609 m!1695249))

(declare-fun m!1695257 () Bool)

(assert (=> b!1460609 m!1695257))

(assert (=> b!1460546 d!427543))

(declare-fun d!427545 () Bool)

(assert (=> d!427545 (= (list!6069 (tokens!2096 thiss!10022)) (list!6071 (c!240724 (tokens!2096 thiss!10022))))))

(declare-fun bs!344133 () Bool)

(assert (= bs!344133 d!427545))

(declare-fun m!1695259 () Bool)

(assert (=> bs!344133 m!1695259))

(assert (=> b!1460546 d!427545))

(declare-fun d!427547 () Bool)

(assert (=> d!427547 (= (separableTokensPredicate!536 Lexer!2325 lt!504443 lt!504447 (rules!11658 thiss!10022)) (not (prefixMatchZipperSequence!349 (rulesRegex!407 Lexer!2325 (rules!11658 thiss!10022)) (++!4074 (charsOf!1534 lt!504443) (singletonSeq!1272 (apply!3945 (charsOf!1534 lt!504447) 0))))))))

(declare-fun bs!344134 () Bool)

(assert (= bs!344134 d!427547))

(assert (=> bs!344134 m!1695129))

(declare-fun m!1695261 () Bool)

(assert (=> bs!344134 m!1695261))

(declare-fun m!1695263 () Bool)

(assert (=> bs!344134 m!1695263))

(declare-fun m!1695265 () Bool)

(assert (=> bs!344134 m!1695265))

(declare-fun m!1695267 () Bool)

(assert (=> bs!344134 m!1695267))

(assert (=> bs!344134 m!1695265))

(declare-fun m!1695269 () Bool)

(assert (=> bs!344134 m!1695269))

(declare-fun m!1695271 () Bool)

(assert (=> bs!344134 m!1695271))

(assert (=> bs!344134 m!1695261))

(assert (=> bs!344134 m!1695269))

(assert (=> bs!344134 m!1695267))

(assert (=> bs!344134 m!1695271))

(assert (=> bs!344134 m!1695129))

(assert (=> b!1460546 d!427547))

(declare-fun d!427549 () Bool)

(declare-fun lt!504497 () Bool)

(declare-fun e!931777 () Bool)

(assert (=> d!427549 (= lt!504497 e!931777)))

(declare-fun res!660939 () Bool)

(assert (=> d!427549 (=> (not res!660939) (not e!931777))))

(assert (=> d!427549 (= res!660939 (= (list!6069 (_1!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504447))))) (list!6069 (singletonSeq!1273 lt!504447))))))

(declare-fun e!931776 () Bool)

(assert (=> d!427549 (= lt!504497 e!931776)))

(declare-fun res!660940 () Bool)

(assert (=> d!427549 (=> (not res!660940) (not e!931776))))

(declare-fun lt!504496 () tuple2!14238)

(assert (=> d!427549 (= res!660940 (= (size!12404 (_1!8005 lt!504496)) 1))))

(assert (=> d!427549 (= lt!504496 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504447))))))

(assert (=> d!427549 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427549 (= (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504447) lt!504497)))

(declare-fun b!1460610 () Bool)

(declare-fun res!660938 () Bool)

(assert (=> b!1460610 (=> (not res!660938) (not e!931776))))

(assert (=> b!1460610 (= res!660938 (= (apply!3947 (_1!8005 lt!504496) 0) lt!504447))))

(declare-fun b!1460611 () Bool)

(assert (=> b!1460611 (= e!931776 (isEmpty!9516 (_2!8005 lt!504496)))))

(declare-fun b!1460612 () Bool)

(assert (=> b!1460612 (= e!931777 (isEmpty!9516 (_2!8005 (lex!1072 Lexer!2325 (rules!11658 thiss!10022) (print!1099 Lexer!2325 (singletonSeq!1273 lt!504447))))))))

(assert (= (and d!427549 res!660940) b!1460610))

(assert (= (and b!1460610 res!660938) b!1460611))

(assert (= (and d!427549 res!660939) b!1460612))

(declare-fun m!1695273 () Bool)

(assert (=> d!427549 m!1695273))

(declare-fun m!1695275 () Bool)

(assert (=> d!427549 m!1695275))

(assert (=> d!427549 m!1695275))

(declare-fun m!1695277 () Bool)

(assert (=> d!427549 m!1695277))

(declare-fun m!1695279 () Bool)

(assert (=> d!427549 m!1695279))

(declare-fun m!1695281 () Bool)

(assert (=> d!427549 m!1695281))

(declare-fun m!1695283 () Bool)

(assert (=> d!427549 m!1695283))

(assert (=> d!427549 m!1695275))

(assert (=> d!427549 m!1695279))

(assert (=> d!427549 m!1695113))

(declare-fun m!1695285 () Bool)

(assert (=> b!1460610 m!1695285))

(declare-fun m!1695287 () Bool)

(assert (=> b!1460611 m!1695287))

(assert (=> b!1460612 m!1695275))

(assert (=> b!1460612 m!1695275))

(assert (=> b!1460612 m!1695279))

(assert (=> b!1460612 m!1695279))

(assert (=> b!1460612 m!1695281))

(declare-fun m!1695289 () Bool)

(assert (=> b!1460612 m!1695289))

(assert (=> b!1460546 d!427549))

(declare-fun d!427551 () Bool)

(assert (=> d!427551 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) lt!504447)))

(declare-fun lt!504498 () Unit!24213)

(assert (=> d!427551 (= lt!504498 (choose!8976 Lexer!2325 (rules!11658 thiss!10022) lt!504437 lt!504447))))

(assert (=> d!427551 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427551 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504437 lt!504447) lt!504498)))

(declare-fun bs!344135 () Bool)

(assert (= bs!344135 d!427551))

(assert (=> bs!344135 m!1695097))

(declare-fun m!1695291 () Bool)

(assert (=> bs!344135 m!1695291))

(assert (=> bs!344135 m!1695113))

(assert (=> b!1460546 d!427551))

(declare-fun d!427553 () Bool)

(assert (=> d!427553 (= (isEmpty!9513 (rules!11658 thiss!10022)) ((_ is Nil!15165) (rules!11658 thiss!10022)))))

(assert (=> b!1460557 d!427553))

(declare-fun d!427555 () Bool)

(declare-fun lt!504501 () Bool)

(assert (=> d!427555 (= lt!504501 (isEmpty!9511 (list!6069 (tokens!2096 thiss!10022))))))

(declare-fun isEmpty!9517 (Conc!5169) Bool)

(assert (=> d!427555 (= lt!504501 (isEmpty!9517 (c!240724 (tokens!2096 thiss!10022))))))

(assert (=> d!427555 (= (isEmpty!9512 (tokens!2096 thiss!10022)) lt!504501)))

(declare-fun bs!344136 () Bool)

(assert (= bs!344136 d!427555))

(assert (=> bs!344136 m!1695085))

(assert (=> bs!344136 m!1695085))

(declare-fun m!1695293 () Bool)

(assert (=> bs!344136 m!1695293))

(declare-fun m!1695295 () Bool)

(assert (=> bs!344136 m!1695295))

(assert (=> b!1460553 d!427555))

(declare-fun d!427557 () Bool)

(assert (=> d!427557 (= (inv!20258 (tokens!2096 other!32)) (isBalanced!1549 (c!240724 (tokens!2096 other!32))))))

(declare-fun bs!344137 () Bool)

(assert (= bs!344137 d!427557))

(declare-fun m!1695297 () Bool)

(assert (=> bs!344137 m!1695297))

(assert (=> b!1460543 d!427557))

(declare-fun d!427559 () Bool)

(declare-fun c!240734 () Bool)

(assert (=> d!427559 (= c!240734 ((_ is Node!5169) (c!240724 (tokens!2096 other!32))))))

(declare-fun e!931782 () Bool)

(assert (=> d!427559 (= (inv!20259 (c!240724 (tokens!2096 other!32))) e!931782)))

(declare-fun b!1460619 () Bool)

(declare-fun inv!20263 (Conc!5169) Bool)

(assert (=> b!1460619 (= e!931782 (inv!20263 (c!240724 (tokens!2096 other!32))))))

(declare-fun b!1460620 () Bool)

(declare-fun e!931783 () Bool)

(assert (=> b!1460620 (= e!931782 e!931783)))

(declare-fun res!660943 () Bool)

(assert (=> b!1460620 (= res!660943 (not ((_ is Leaf!7706) (c!240724 (tokens!2096 other!32)))))))

(assert (=> b!1460620 (=> res!660943 e!931783)))

(declare-fun b!1460621 () Bool)

(declare-fun inv!20264 (Conc!5169) Bool)

(assert (=> b!1460621 (= e!931783 (inv!20264 (c!240724 (tokens!2096 other!32))))))

(assert (= (and d!427559 c!240734) b!1460619))

(assert (= (and d!427559 (not c!240734)) b!1460620))

(assert (= (and b!1460620 (not res!660943)) b!1460621))

(declare-fun m!1695299 () Bool)

(assert (=> b!1460619 m!1695299))

(declare-fun m!1695301 () Bool)

(assert (=> b!1460621 m!1695301))

(assert (=> b!1460554 d!427559))

(declare-fun d!427561 () Bool)

(declare-fun res!660972 () Bool)

(declare-fun e!931801 () Bool)

(assert (=> d!427561 (=> (not res!660972) (not e!931801))))

(assert (=> d!427561 (= res!660972 (not (isEmpty!9513 (rules!11658 thiss!10022))))))

(assert (=> d!427561 (= (inv!20260 thiss!10022) e!931801)))

(declare-fun b!1460650 () Bool)

(declare-fun res!660973 () Bool)

(assert (=> b!1460650 (=> (not res!660973) (not e!931801))))

(assert (=> b!1460650 (= res!660973 (rulesInvariant!2160 Lexer!2325 (rules!11658 thiss!10022)))))

(declare-fun b!1460651 () Bool)

(declare-fun res!660974 () Bool)

(assert (=> b!1460651 (=> (not res!660974) (not e!931801))))

(declare-fun rulesProduceEachTokenIndividually!877 (LexerInterface!2327 List!15231 BalanceConc!10278) Bool)

(assert (=> b!1460651 (= res!660974 (rulesProduceEachTokenIndividually!877 Lexer!2325 (rules!11658 thiss!10022) (tokens!2096 thiss!10022)))))

(declare-fun b!1460652 () Bool)

(declare-fun separableTokens!261 (LexerInterface!2327 BalanceConc!10278 List!15231) Bool)

(assert (=> b!1460652 (= e!931801 (separableTokens!261 Lexer!2325 (tokens!2096 thiss!10022) (rules!11658 thiss!10022)))))

(assert (= (and d!427561 res!660972) b!1460650))

(assert (= (and b!1460650 res!660973) b!1460651))

(assert (= (and b!1460651 res!660974) b!1460652))

(assert (=> d!427561 m!1695113))

(assert (=> b!1460650 m!1695123))

(declare-fun m!1695345 () Bool)

(assert (=> b!1460651 m!1695345))

(declare-fun m!1695347 () Bool)

(assert (=> b!1460652 m!1695347))

(assert (=> start!136210 d!427561))

(declare-fun d!427577 () Bool)

(declare-fun res!660975 () Bool)

(declare-fun e!931802 () Bool)

(assert (=> d!427577 (=> (not res!660975) (not e!931802))))

(assert (=> d!427577 (= res!660975 (not (isEmpty!9513 (rules!11658 other!32))))))

(assert (=> d!427577 (= (inv!20260 other!32) e!931802)))

(declare-fun b!1460653 () Bool)

(declare-fun res!660976 () Bool)

(assert (=> b!1460653 (=> (not res!660976) (not e!931802))))

(assert (=> b!1460653 (= res!660976 (rulesInvariant!2160 Lexer!2325 (rules!11658 other!32)))))

(declare-fun b!1460654 () Bool)

(declare-fun res!660977 () Bool)

(assert (=> b!1460654 (=> (not res!660977) (not e!931802))))

(assert (=> b!1460654 (= res!660977 (rulesProduceEachTokenIndividually!877 Lexer!2325 (rules!11658 other!32) (tokens!2096 other!32)))))

(declare-fun b!1460655 () Bool)

(assert (=> b!1460655 (= e!931802 (separableTokens!261 Lexer!2325 (tokens!2096 other!32) (rules!11658 other!32)))))

(assert (= (and d!427577 res!660975) b!1460653))

(assert (= (and b!1460653 res!660976) b!1460654))

(assert (= (and b!1460654 res!660977) b!1460655))

(declare-fun m!1695349 () Bool)

(assert (=> d!427577 m!1695349))

(declare-fun m!1695351 () Bool)

(assert (=> b!1460653 m!1695351))

(declare-fun m!1695353 () Bool)

(assert (=> b!1460654 m!1695353))

(declare-fun m!1695355 () Bool)

(assert (=> b!1460655 m!1695355))

(assert (=> start!136210 d!427577))

(declare-fun d!427579 () Bool)

(declare-fun res!660982 () Bool)

(declare-fun e!931807 () Bool)

(assert (=> d!427579 (=> res!660982 e!931807)))

(assert (=> d!427579 (= res!660982 (or (not ((_ is Cons!15164) lt!504438)) (not ((_ is Cons!15164) (t!134365 lt!504438)))))))

(assert (=> d!427579 (= (tokensListTwoByTwoPredicateSeparableList!245 Lexer!2325 lt!504438 (rules!11658 thiss!10022)) e!931807)))

(declare-fun b!1460660 () Bool)

(declare-fun e!931808 () Bool)

(assert (=> b!1460660 (= e!931807 e!931808)))

(declare-fun res!660983 () Bool)

(assert (=> b!1460660 (=> (not res!660983) (not e!931808))))

(assert (=> b!1460660 (= res!660983 (separableTokensPredicate!536 Lexer!2325 (h!20565 lt!504438) (h!20565 (t!134365 lt!504438)) (rules!11658 thiss!10022)))))

(declare-fun lt!504536 () Unit!24213)

(declare-fun Unit!24223 () Unit!24213)

(assert (=> b!1460660 (= lt!504536 Unit!24223)))

(declare-fun size!12405 (BalanceConc!10276) Int)

(assert (=> b!1460660 (> (size!12405 (charsOf!1534 (h!20565 (t!134365 lt!504438)))) 0)))

(declare-fun lt!504538 () Unit!24213)

(declare-fun Unit!24224 () Unit!24213)

(assert (=> b!1460660 (= lt!504538 Unit!24224)))

(assert (=> b!1460660 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 (t!134365 lt!504438)))))

(declare-fun lt!504540 () Unit!24213)

(declare-fun Unit!24225 () Unit!24213)

(assert (=> b!1460660 (= lt!504540 Unit!24225)))

(assert (=> b!1460660 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 lt!504438))))

(declare-fun lt!504537 () Unit!24213)

(declare-fun lt!504542 () Unit!24213)

(assert (=> b!1460660 (= lt!504537 lt!504542)))

(assert (=> b!1460660 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 (t!134365 lt!504438)))))

(assert (=> b!1460660 (= lt!504542 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504438 (h!20565 (t!134365 lt!504438))))))

(declare-fun lt!504539 () Unit!24213)

(declare-fun lt!504541 () Unit!24213)

(assert (=> b!1460660 (= lt!504539 lt!504541)))

(assert (=> b!1460660 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 lt!504438))))

(assert (=> b!1460660 (= lt!504541 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504438 (h!20565 lt!504438)))))

(declare-fun b!1460661 () Bool)

(assert (=> b!1460661 (= e!931808 (tokensListTwoByTwoPredicateSeparableList!245 Lexer!2325 (Cons!15164 (h!20565 (t!134365 lt!504438)) (t!134365 (t!134365 lt!504438))) (rules!11658 thiss!10022)))))

(assert (= (and d!427579 (not res!660982)) b!1460660))

(assert (= (and b!1460660 res!660983) b!1460661))

(declare-fun m!1695365 () Bool)

(assert (=> b!1460660 m!1695365))

(declare-fun m!1695367 () Bool)

(assert (=> b!1460660 m!1695367))

(declare-fun m!1695369 () Bool)

(assert (=> b!1460660 m!1695369))

(declare-fun m!1695371 () Bool)

(assert (=> b!1460660 m!1695371))

(declare-fun m!1695373 () Bool)

(assert (=> b!1460660 m!1695373))

(assert (=> b!1460660 m!1695373))

(declare-fun m!1695375 () Bool)

(assert (=> b!1460660 m!1695375))

(declare-fun m!1695377 () Bool)

(assert (=> b!1460660 m!1695377))

(declare-fun m!1695379 () Bool)

(assert (=> b!1460661 m!1695379))

(assert (=> b!1460544 d!427579))

(declare-fun d!427587 () Bool)

(declare-fun lt!504543 () Bool)

(assert (=> d!427587 (= lt!504543 (isEmpty!9511 (list!6069 (tokens!2096 other!32))))))

(assert (=> d!427587 (= lt!504543 (isEmpty!9517 (c!240724 (tokens!2096 other!32))))))

(assert (=> d!427587 (= (isEmpty!9512 (tokens!2096 other!32)) lt!504543)))

(declare-fun bs!344142 () Bool)

(assert (= bs!344142 d!427587))

(assert (=> bs!344142 m!1695087))

(assert (=> bs!344142 m!1695087))

(declare-fun m!1695381 () Bool)

(assert (=> bs!344142 m!1695381))

(declare-fun m!1695383 () Bool)

(assert (=> bs!344142 m!1695383))

(assert (=> b!1460550 d!427587))

(declare-fun d!427589 () Bool)

(declare-fun e!931813 () Bool)

(assert (=> d!427589 e!931813))

(declare-fun res!660991 () Bool)

(assert (=> d!427589 (=> (not res!660991) (not e!931813))))

(assert (=> d!427589 (= res!660991 (rulesInvariant!2160 Lexer!2325 (rules!11658 thiss!10022)))))

(declare-fun Unit!24226 () Unit!24213)

(assert (=> d!427589 (= (lemmaInvariant!367 thiss!10022) Unit!24226)))

(declare-fun b!1460669 () Bool)

(declare-fun res!660992 () Bool)

(assert (=> b!1460669 (=> (not res!660992) (not e!931813))))

(assert (=> b!1460669 (= res!660992 (rulesProduceEachTokenIndividually!877 Lexer!2325 (rules!11658 thiss!10022) (tokens!2096 thiss!10022)))))

(declare-fun b!1460670 () Bool)

(assert (=> b!1460670 (= e!931813 (separableTokens!261 Lexer!2325 (tokens!2096 thiss!10022) (rules!11658 thiss!10022)))))

(assert (= (and d!427589 res!660991) b!1460669))

(assert (= (and b!1460669 res!660992) b!1460670))

(assert (=> d!427589 m!1695123))

(assert (=> b!1460669 m!1695345))

(assert (=> b!1460670 m!1695347))

(assert (=> b!1460550 d!427589))

(declare-fun d!427603 () Bool)

(declare-fun e!931814 () Bool)

(assert (=> d!427603 e!931814))

(declare-fun res!660993 () Bool)

(assert (=> d!427603 (=> (not res!660993) (not e!931814))))

(assert (=> d!427603 (= res!660993 (rulesInvariant!2160 Lexer!2325 (rules!11658 other!32)))))

(declare-fun Unit!24227 () Unit!24213)

(assert (=> d!427603 (= (lemmaInvariant!367 other!32) Unit!24227)))

(declare-fun b!1460671 () Bool)

(declare-fun res!660994 () Bool)

(assert (=> b!1460671 (=> (not res!660994) (not e!931814))))

(assert (=> b!1460671 (= res!660994 (rulesProduceEachTokenIndividually!877 Lexer!2325 (rules!11658 other!32) (tokens!2096 other!32)))))

(declare-fun b!1460672 () Bool)

(assert (=> b!1460672 (= e!931814 (separableTokens!261 Lexer!2325 (tokens!2096 other!32) (rules!11658 other!32)))))

(assert (= (and d!427603 res!660993) b!1460671))

(assert (= (and b!1460671 res!660994) b!1460672))

(assert (=> d!427603 m!1695351))

(assert (=> b!1460671 m!1695353))

(assert (=> b!1460672 m!1695355))

(assert (=> b!1460550 d!427603))

(declare-fun b!1460753 () Bool)

(declare-fun e!931880 () Bool)

(assert (=> b!1460753 (= e!931880 true)))

(declare-fun b!1460752 () Bool)

(declare-fun e!931879 () Bool)

(assert (=> b!1460752 (= e!931879 e!931880)))

(declare-fun b!1460751 () Bool)

(declare-fun e!931878 () Bool)

(assert (=> b!1460751 (= e!931878 e!931879)))

(declare-fun d!427605 () Bool)

(assert (=> d!427605 e!931878))

(assert (= b!1460752 b!1460753))

(assert (= b!1460751 b!1460752))

(assert (= (and d!427605 ((_ is Cons!15165) (rules!11658 thiss!10022))) b!1460751))

(declare-fun order!9133 () Int)

(declare-fun lambda!63284 () Int)

(declare-fun order!9135 () Int)

(declare-fun dynLambda!6917 (Int Int) Int)

(declare-fun dynLambda!6918 (Int Int) Int)

(assert (=> b!1460753 (< (dynLambda!6917 order!9133 (toValue!3982 (transformation!2671 (h!20566 (rules!11658 thiss!10022))))) (dynLambda!6918 order!9135 lambda!63284))))

(declare-fun order!9137 () Int)

(declare-fun dynLambda!6919 (Int Int) Int)

(assert (=> b!1460753 (< (dynLambda!6919 order!9137 (toChars!3841 (transformation!2671 (h!20566 (rules!11658 thiss!10022))))) (dynLambda!6918 order!9135 lambda!63284))))

(assert (=> d!427605 true))

(declare-fun lt!504565 () Bool)

(declare-fun forall!3738 (List!15230 Int) Bool)

(assert (=> d!427605 (= lt!504565 (forall!3738 lt!504437 lambda!63284))))

(declare-fun e!931871 () Bool)

(assert (=> d!427605 (= lt!504565 e!931871)))

(declare-fun res!661013 () Bool)

(assert (=> d!427605 (=> res!661013 e!931871)))

(assert (=> d!427605 (= res!661013 (not ((_ is Cons!15164) lt!504437)))))

(assert (=> d!427605 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427605 (= (rulesProduceEachTokenIndividuallyList!746 Lexer!2325 (rules!11658 thiss!10022) lt!504437) lt!504565)))

(declare-fun b!1460741 () Bool)

(declare-fun e!931870 () Bool)

(assert (=> b!1460741 (= e!931871 e!931870)))

(declare-fun res!661014 () Bool)

(assert (=> b!1460741 (=> (not res!661014) (not e!931870))))

(assert (=> b!1460741 (= res!661014 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 lt!504437)))))

(declare-fun b!1460742 () Bool)

(assert (=> b!1460742 (= e!931870 (rulesProduceEachTokenIndividuallyList!746 Lexer!2325 (rules!11658 thiss!10022) (t!134365 lt!504437)))))

(assert (= (and d!427605 (not res!661013)) b!1460741))

(assert (= (and b!1460741 res!661014) b!1460742))

(declare-fun m!1695509 () Bool)

(assert (=> d!427605 m!1695509))

(assert (=> d!427605 m!1695113))

(declare-fun m!1695511 () Bool)

(assert (=> b!1460741 m!1695511))

(declare-fun m!1695513 () Bool)

(assert (=> b!1460742 m!1695513))

(assert (=> b!1460551 d!427605))

(declare-fun d!427623 () Bool)

(declare-fun c!240738 () Bool)

(assert (=> d!427623 (= c!240738 ((_ is Node!5169) (c!240724 (tokens!2096 thiss!10022))))))

(declare-fun e!931881 () Bool)

(assert (=> d!427623 (= (inv!20259 (c!240724 (tokens!2096 thiss!10022))) e!931881)))

(declare-fun b!1460756 () Bool)

(assert (=> b!1460756 (= e!931881 (inv!20263 (c!240724 (tokens!2096 thiss!10022))))))

(declare-fun b!1460757 () Bool)

(declare-fun e!931882 () Bool)

(assert (=> b!1460757 (= e!931881 e!931882)))

(declare-fun res!661015 () Bool)

(assert (=> b!1460757 (= res!661015 (not ((_ is Leaf!7706) (c!240724 (tokens!2096 thiss!10022)))))))

(assert (=> b!1460757 (=> res!661015 e!931882)))

(declare-fun b!1460758 () Bool)

(assert (=> b!1460758 (= e!931882 (inv!20264 (c!240724 (tokens!2096 thiss!10022))))))

(assert (= (and d!427623 c!240738) b!1460756))

(assert (= (and d!427623 (not c!240738)) b!1460757))

(assert (= (and b!1460757 (not res!661015)) b!1460758))

(declare-fun m!1695515 () Bool)

(assert (=> b!1460756 m!1695515))

(declare-fun m!1695517 () Bool)

(assert (=> b!1460758 m!1695517))

(assert (=> b!1460552 d!427623))

(declare-fun d!427625 () Bool)

(declare-fun res!661016 () Bool)

(declare-fun e!931883 () Bool)

(assert (=> d!427625 (=> res!661016 e!931883)))

(assert (=> d!427625 (= res!661016 (or (not ((_ is Cons!15164) lt!504437)) (not ((_ is Cons!15164) (t!134365 lt!504437)))))))

(assert (=> d!427625 (= (tokensListTwoByTwoPredicateSeparableList!245 Lexer!2325 lt!504437 (rules!11658 thiss!10022)) e!931883)))

(declare-fun b!1460759 () Bool)

(declare-fun e!931884 () Bool)

(assert (=> b!1460759 (= e!931883 e!931884)))

(declare-fun res!661017 () Bool)

(assert (=> b!1460759 (=> (not res!661017) (not e!931884))))

(assert (=> b!1460759 (= res!661017 (separableTokensPredicate!536 Lexer!2325 (h!20565 lt!504437) (h!20565 (t!134365 lt!504437)) (rules!11658 thiss!10022)))))

(declare-fun lt!504566 () Unit!24213)

(declare-fun Unit!24228 () Unit!24213)

(assert (=> b!1460759 (= lt!504566 Unit!24228)))

(assert (=> b!1460759 (> (size!12405 (charsOf!1534 (h!20565 (t!134365 lt!504437)))) 0)))

(declare-fun lt!504568 () Unit!24213)

(declare-fun Unit!24229 () Unit!24213)

(assert (=> b!1460759 (= lt!504568 Unit!24229)))

(assert (=> b!1460759 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 (t!134365 lt!504437)))))

(declare-fun lt!504570 () Unit!24213)

(declare-fun Unit!24230 () Unit!24213)

(assert (=> b!1460759 (= lt!504570 Unit!24230)))

(assert (=> b!1460759 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 lt!504437))))

(declare-fun lt!504567 () Unit!24213)

(declare-fun lt!504572 () Unit!24213)

(assert (=> b!1460759 (= lt!504567 lt!504572)))

(assert (=> b!1460759 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 (t!134365 lt!504437)))))

(assert (=> b!1460759 (= lt!504572 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504437 (h!20565 (t!134365 lt!504437))))))

(declare-fun lt!504569 () Unit!24213)

(declare-fun lt!504571 () Unit!24213)

(assert (=> b!1460759 (= lt!504569 lt!504571)))

(assert (=> b!1460759 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 lt!504437))))

(assert (=> b!1460759 (= lt!504571 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!429 Lexer!2325 (rules!11658 thiss!10022) lt!504437 (h!20565 lt!504437)))))

(declare-fun b!1460760 () Bool)

(assert (=> b!1460760 (= e!931884 (tokensListTwoByTwoPredicateSeparableList!245 Lexer!2325 (Cons!15164 (h!20565 (t!134365 lt!504437)) (t!134365 (t!134365 lt!504437))) (rules!11658 thiss!10022)))))

(assert (= (and d!427625 (not res!661016)) b!1460759))

(assert (= (and b!1460759 res!661017) b!1460760))

(declare-fun m!1695519 () Bool)

(assert (=> b!1460759 m!1695519))

(declare-fun m!1695521 () Bool)

(assert (=> b!1460759 m!1695521))

(declare-fun m!1695523 () Bool)

(assert (=> b!1460759 m!1695523))

(assert (=> b!1460759 m!1695511))

(declare-fun m!1695525 () Bool)

(assert (=> b!1460759 m!1695525))

(assert (=> b!1460759 m!1695525))

(declare-fun m!1695527 () Bool)

(assert (=> b!1460759 m!1695527))

(declare-fun m!1695529 () Bool)

(assert (=> b!1460759 m!1695529))

(declare-fun m!1695531 () Bool)

(assert (=> b!1460760 m!1695531))

(assert (=> b!1460547 d!427625))

(declare-fun bs!344151 () Bool)

(declare-fun d!427627 () Bool)

(assert (= bs!344151 (and d!427627 d!427605)))

(declare-fun lambda!63285 () Int)

(assert (=> bs!344151 (= lambda!63285 lambda!63284)))

(declare-fun b!1460765 () Bool)

(declare-fun e!931889 () Bool)

(assert (=> b!1460765 (= e!931889 true)))

(declare-fun b!1460764 () Bool)

(declare-fun e!931888 () Bool)

(assert (=> b!1460764 (= e!931888 e!931889)))

(declare-fun b!1460763 () Bool)

(declare-fun e!931887 () Bool)

(assert (=> b!1460763 (= e!931887 e!931888)))

(assert (=> d!427627 e!931887))

(assert (= b!1460764 b!1460765))

(assert (= b!1460763 b!1460764))

(assert (= (and d!427627 ((_ is Cons!15165) (rules!11658 thiss!10022))) b!1460763))

(assert (=> b!1460765 (< (dynLambda!6917 order!9133 (toValue!3982 (transformation!2671 (h!20566 (rules!11658 thiss!10022))))) (dynLambda!6918 order!9135 lambda!63285))))

(assert (=> b!1460765 (< (dynLambda!6919 order!9137 (toChars!3841 (transformation!2671 (h!20566 (rules!11658 thiss!10022))))) (dynLambda!6918 order!9135 lambda!63285))))

(assert (=> d!427627 true))

(declare-fun lt!504573 () Bool)

(assert (=> d!427627 (= lt!504573 (forall!3738 lt!504438 lambda!63285))))

(declare-fun e!931886 () Bool)

(assert (=> d!427627 (= lt!504573 e!931886)))

(declare-fun res!661018 () Bool)

(assert (=> d!427627 (=> res!661018 e!931886)))

(assert (=> d!427627 (= res!661018 (not ((_ is Cons!15164) lt!504438)))))

(assert (=> d!427627 (not (isEmpty!9513 (rules!11658 thiss!10022)))))

(assert (=> d!427627 (= (rulesProduceEachTokenIndividuallyList!746 Lexer!2325 (rules!11658 thiss!10022) lt!504438) lt!504573)))

(declare-fun b!1460761 () Bool)

(declare-fun e!931885 () Bool)

(assert (=> b!1460761 (= e!931886 e!931885)))

(declare-fun res!661019 () Bool)

(assert (=> b!1460761 (=> (not res!661019) (not e!931885))))

(assert (=> b!1460761 (= res!661019 (rulesProduceIndividualToken!1246 Lexer!2325 (rules!11658 thiss!10022) (h!20565 lt!504438)))))

(declare-fun b!1460762 () Bool)

(assert (=> b!1460762 (= e!931885 (rulesProduceEachTokenIndividuallyList!746 Lexer!2325 (rules!11658 thiss!10022) (t!134365 lt!504438)))))

(assert (= (and d!427627 (not res!661018)) b!1460761))

(assert (= (and b!1460761 res!661019) b!1460762))

(declare-fun m!1695533 () Bool)

(assert (=> d!427627 m!1695533))

(assert (=> d!427627 m!1695113))

(assert (=> b!1460761 m!1695371))

(declare-fun m!1695535 () Bool)

(assert (=> b!1460762 m!1695535))

(assert (=> b!1460558 d!427627))

(declare-fun d!427629 () Bool)

(declare-fun res!661022 () Bool)

(declare-fun e!931892 () Bool)

(assert (=> d!427629 (=> (not res!661022) (not e!931892))))

(declare-fun rulesValid!988 (LexerInterface!2327 List!15231) Bool)

(assert (=> d!427629 (= res!661022 (rulesValid!988 Lexer!2325 (rules!11658 thiss!10022)))))

(assert (=> d!427629 (= (rulesInvariant!2160 Lexer!2325 (rules!11658 thiss!10022)) e!931892)))

(declare-fun b!1460768 () Bool)

(declare-datatypes ((List!15233 0))(
  ( (Nil!15167) (Cons!15167 (h!20568 String!18061) (t!134376 List!15233)) )
))
(declare-fun noDuplicateTag!988 (LexerInterface!2327 List!15231 List!15233) Bool)

(assert (=> b!1460768 (= e!931892 (noDuplicateTag!988 Lexer!2325 (rules!11658 thiss!10022) Nil!15167))))

(assert (= (and d!427629 res!661022) b!1460768))

(declare-fun m!1695537 () Bool)

(assert (=> d!427629 m!1695537))

(declare-fun m!1695539 () Bool)

(assert (=> b!1460768 m!1695539))

(assert (=> b!1460548 d!427629))

(declare-fun d!427631 () Bool)

(assert (=> d!427631 (= (isEmpty!9511 lt!504437) ((_ is Nil!15164) lt!504437))))

(assert (=> b!1460549 d!427631))

(declare-fun b!1460779 () Bool)

(declare-fun b_free!36455 () Bool)

(declare-fun b_next!37159 () Bool)

(assert (=> b!1460779 (= b_free!36455 (not b_next!37159))))

(declare-fun tp!411526 () Bool)

(declare-fun b_and!99769 () Bool)

(assert (=> b!1460779 (= tp!411526 b_and!99769)))

(declare-fun b_free!36457 () Bool)

(declare-fun b_next!37161 () Bool)

(assert (=> b!1460779 (= b_free!36457 (not b_next!37161))))

(declare-fun tp!411528 () Bool)

(declare-fun b_and!99771 () Bool)

(assert (=> b!1460779 (= tp!411528 b_and!99771)))

(declare-fun e!931904 () Bool)

(assert (=> b!1460779 (= e!931904 (and tp!411526 tp!411528))))

(declare-fun e!931903 () Bool)

(declare-fun tp!411527 () Bool)

(declare-fun b!1460778 () Bool)

(declare-fun inv!20254 (String!18061) Bool)

(declare-fun inv!20267 (TokenValueInjection!5182) Bool)

(assert (=> b!1460778 (= e!931903 (and tp!411527 (inv!20254 (tag!2935 (h!20566 (rules!11658 thiss!10022)))) (inv!20267 (transformation!2671 (h!20566 (rules!11658 thiss!10022)))) e!931904))))

(declare-fun b!1460777 () Bool)

(declare-fun e!931901 () Bool)

(declare-fun tp!411525 () Bool)

(assert (=> b!1460777 (= e!931901 (and e!931903 tp!411525))))

(assert (=> b!1460556 (= tp!411487 e!931901)))

(assert (= b!1460778 b!1460779))

(assert (= b!1460777 b!1460778))

(assert (= (and b!1460556 ((_ is Cons!15165) (rules!11658 thiss!10022))) b!1460777))

(declare-fun m!1695541 () Bool)

(assert (=> b!1460778 m!1695541))

(declare-fun m!1695543 () Bool)

(assert (=> b!1460778 m!1695543))

(declare-fun tp!411536 () Bool)

(declare-fun b!1460788 () Bool)

(declare-fun tp!411537 () Bool)

(declare-fun e!931909 () Bool)

(assert (=> b!1460788 (= e!931909 (and (inv!20259 (left!12887 (c!240724 (tokens!2096 thiss!10022)))) tp!411536 (inv!20259 (right!13217 (c!240724 (tokens!2096 thiss!10022)))) tp!411537))))

(declare-fun b!1460790 () Bool)

(declare-fun e!931910 () Bool)

(declare-fun tp!411535 () Bool)

(assert (=> b!1460790 (= e!931910 tp!411535)))

(declare-fun b!1460789 () Bool)

(declare-fun inv!20268 (IArray!10343) Bool)

(assert (=> b!1460789 (= e!931909 (and (inv!20268 (xs!7916 (c!240724 (tokens!2096 thiss!10022)))) e!931910))))

(assert (=> b!1460552 (= tp!411485 (and (inv!20259 (c!240724 (tokens!2096 thiss!10022))) e!931909))))

(assert (= (and b!1460552 ((_ is Node!5169) (c!240724 (tokens!2096 thiss!10022)))) b!1460788))

(assert (= b!1460789 b!1460790))

(assert (= (and b!1460552 ((_ is Leaf!7706) (c!240724 (tokens!2096 thiss!10022)))) b!1460789))

(declare-fun m!1695545 () Bool)

(assert (=> b!1460788 m!1695545))

(declare-fun m!1695547 () Bool)

(assert (=> b!1460788 m!1695547))

(declare-fun m!1695549 () Bool)

(assert (=> b!1460789 m!1695549))

(assert (=> b!1460552 m!1695103))

(declare-fun b!1460793 () Bool)

(declare-fun b_free!36459 () Bool)

(declare-fun b_next!37163 () Bool)

(assert (=> b!1460793 (= b_free!36459 (not b_next!37163))))

(declare-fun tp!411539 () Bool)

(declare-fun b_and!99773 () Bool)

(assert (=> b!1460793 (= tp!411539 b_and!99773)))

(declare-fun b_free!36461 () Bool)

(declare-fun b_next!37165 () Bool)

(assert (=> b!1460793 (= b_free!36461 (not b_next!37165))))

(declare-fun tp!411541 () Bool)

(declare-fun b_and!99775 () Bool)

(assert (=> b!1460793 (= tp!411541 b_and!99775)))

(declare-fun e!931914 () Bool)

(assert (=> b!1460793 (= e!931914 (and tp!411539 tp!411541))))

(declare-fun e!931913 () Bool)

(declare-fun tp!411540 () Bool)

(declare-fun b!1460792 () Bool)

(assert (=> b!1460792 (= e!931913 (and tp!411540 (inv!20254 (tag!2935 (h!20566 (rules!11658 other!32)))) (inv!20267 (transformation!2671 (h!20566 (rules!11658 other!32)))) e!931914))))

(declare-fun b!1460791 () Bool)

(declare-fun e!931911 () Bool)

(declare-fun tp!411538 () Bool)

(assert (=> b!1460791 (= e!931911 (and e!931913 tp!411538))))

(assert (=> b!1460543 (= tp!411488 e!931911)))

(assert (= b!1460792 b!1460793))

(assert (= b!1460791 b!1460792))

(assert (= (and b!1460543 ((_ is Cons!15165) (rules!11658 other!32))) b!1460791))

(declare-fun m!1695551 () Bool)

(assert (=> b!1460792 m!1695551))

(declare-fun m!1695553 () Bool)

(assert (=> b!1460792 m!1695553))

(declare-fun e!931915 () Bool)

(declare-fun tp!411543 () Bool)

(declare-fun b!1460794 () Bool)

(declare-fun tp!411544 () Bool)

(assert (=> b!1460794 (= e!931915 (and (inv!20259 (left!12887 (c!240724 (tokens!2096 other!32)))) tp!411543 (inv!20259 (right!13217 (c!240724 (tokens!2096 other!32)))) tp!411544))))

(declare-fun b!1460796 () Bool)

(declare-fun e!931916 () Bool)

(declare-fun tp!411542 () Bool)

(assert (=> b!1460796 (= e!931916 tp!411542)))

(declare-fun b!1460795 () Bool)

(assert (=> b!1460795 (= e!931915 (and (inv!20268 (xs!7916 (c!240724 (tokens!2096 other!32)))) e!931916))))

(assert (=> b!1460554 (= tp!411486 (and (inv!20259 (c!240724 (tokens!2096 other!32))) e!931915))))

(assert (= (and b!1460554 ((_ is Node!5169) (c!240724 (tokens!2096 other!32)))) b!1460794))

(assert (= b!1460795 b!1460796))

(assert (= (and b!1460554 ((_ is Leaf!7706) (c!240724 (tokens!2096 other!32)))) b!1460795))

(declare-fun m!1695555 () Bool)

(assert (=> b!1460794 m!1695555))

(declare-fun m!1695557 () Bool)

(assert (=> b!1460794 m!1695557))

(declare-fun m!1695559 () Bool)

(assert (=> b!1460795 m!1695559))

(assert (=> b!1460554 m!1695071))

(check-sat (not b!1460610) (not d!427627) (not b!1460758) (not b_next!37163) (not d!427629) (not d!427541) b_and!99773 (not b!1460612) (not d!427577) b_and!99775 (not d!427547) (not d!427533) (not b!1460789) (not d!427555) (not b!1460652) (not b_next!37161) (not b!1460760) (not b!1460619) (not b!1460661) (not d!427561) (not b!1460791) (not b!1460741) (not b!1460761) (not b!1460670) (not b!1460583) (not d!427501) (not d!427545) (not b!1460759) (not d!427543) (not b!1460756) (not d!427589) (not b!1460777) (not d!427535) (not b!1460585) (not d!427587) (not b!1460564) (not b!1460552) (not b!1460792) (not b!1460762) (not b!1460605) (not b!1460650) (not b!1460606) (not d!427519) (not b!1460796) (not b!1460554) (not d!427507) (not b!1460621) (not b!1460653) (not b!1460654) (not b!1460778) (not d!427529) (not b!1460795) b_and!99769 (not b!1460655) (not d!427551) (not b!1460788) (not b!1460584) (not b!1460768) (not b!1460651) (not b!1460672) (not d!427537) (not b_next!37159) (not d!427603) (not b!1460669) (not b_next!37165) (not b!1460660) (not b!1460611) (not b!1460794) (not b!1460671) (not b!1460609) (not d!427503) (not d!427605) (not d!427539) (not b!1460790) (not b!1460742) (not d!427531) (not b!1460604) (not b!1460607) (not b!1460608) (not b!1460763) (not d!427557) b_and!99771 (not d!427549) (not b!1460751))
(check-sat b_and!99775 (not b_next!37161) (not b_next!37163) b_and!99769 (not b_next!37159) (not b_next!37165) b_and!99771 b_and!99773)
