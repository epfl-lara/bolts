; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42994 () Bool)

(assert start!42994)

(declare-fun b!453563 () Bool)

(declare-fun b_free!12601 () Bool)

(declare-fun b_next!12601 () Bool)

(assert (=> b!453563 (= b_free!12601 (not b_next!12601))))

(declare-fun tp!126087 () Bool)

(declare-fun b_and!48713 () Bool)

(assert (=> b!453563 (= tp!126087 b_and!48713)))

(declare-fun b_free!12603 () Bool)

(declare-fun b_next!12603 () Bool)

(assert (=> b!453563 (= b_free!12603 (not b_next!12603))))

(declare-fun tp!126084 () Bool)

(declare-fun b_and!48715 () Bool)

(assert (=> b!453563 (= tp!126084 b_and!48715)))

(declare-fun b!453541 () Bool)

(declare-fun b_free!12605 () Bool)

(declare-fun b_next!12605 () Bool)

(assert (=> b!453541 (= b_free!12605 (not b_next!12605))))

(declare-fun tp!126090 () Bool)

(declare-fun b_and!48717 () Bool)

(assert (=> b!453541 (= tp!126090 b_and!48717)))

(declare-fun b_free!12607 () Bool)

(declare-fun b_next!12607 () Bool)

(assert (=> b!453541 (= b_free!12607 (not b_next!12607))))

(declare-fun tp!126083 () Bool)

(declare-fun b_and!48719 () Bool)

(assert (=> b!453541 (= tp!126083 b_and!48719)))

(declare-fun b!453549 () Bool)

(declare-fun b_free!12609 () Bool)

(declare-fun b_next!12609 () Bool)

(assert (=> b!453549 (= b_free!12609 (not b_next!12609))))

(declare-fun tp!126079 () Bool)

(declare-fun b_and!48721 () Bool)

(assert (=> b!453549 (= tp!126079 b_and!48721)))

(declare-fun b_free!12611 () Bool)

(declare-fun b_next!12611 () Bool)

(assert (=> b!453549 (= b_free!12611 (not b_next!12611))))

(declare-fun tp!126086 () Bool)

(declare-fun b_and!48723 () Bool)

(assert (=> b!453549 (= tp!126086 b_and!48723)))

(declare-fun bs!56134 () Bool)

(declare-fun b!453551 () Bool)

(declare-fun b!453544 () Bool)

(assert (= bs!56134 (and b!453551 b!453544)))

(declare-fun lambda!13238 () Int)

(declare-fun lambda!13237 () Int)

(assert (=> bs!56134 (not (= lambda!13238 lambda!13237))))

(declare-fun b!453578 () Bool)

(declare-fun e!277436 () Bool)

(assert (=> b!453578 (= e!277436 true)))

(declare-fun b!453577 () Bool)

(declare-fun e!277435 () Bool)

(assert (=> b!453577 (= e!277435 e!277436)))

(declare-fun b!453576 () Bool)

(declare-fun e!277434 () Bool)

(assert (=> b!453576 (= e!277434 e!277435)))

(assert (=> b!453551 e!277434))

(assert (= b!453577 b!453578))

(assert (= b!453576 b!453577))

(declare-datatypes ((List!4406 0))(
  ( (Nil!4396) (Cons!4396 (h!9793 (_ BitVec 16)) (t!71094 List!4406)) )
))
(declare-datatypes ((TokenValue!875 0))(
  ( (FloatLiteralValue!1750 (text!6570 List!4406)) (TokenValueExt!874 (__x!3237 Int)) (Broken!4375 (value!28600 List!4406)) (Object!884) (End!875) (Def!875) (Underscore!875) (Match!875) (Else!875) (Error!875) (Case!875) (If!875) (Extends!875) (Abstract!875) (Class!875) (Val!875) (DelimiterValue!1750 (del!935 List!4406)) (KeywordValue!881 (value!28601 List!4406)) (CommentValue!1750 (value!28602 List!4406)) (WhitespaceValue!1750 (value!28603 List!4406)) (IndentationValue!875 (value!28604 List!4406)) (String!5454) (Int32!875) (Broken!4376 (value!28605 List!4406)) (Boolean!876) (Unit!7942) (OperatorValue!878 (op!935 List!4406)) (IdentifierValue!1750 (value!28606 List!4406)) (IdentifierValue!1751 (value!28607 List!4406)) (WhitespaceValue!1751 (value!28608 List!4406)) (True!1750) (False!1750) (Broken!4377 (value!28609 List!4406)) (Broken!4378 (value!28610 List!4406)) (True!1751) (RightBrace!875) (RightBracket!875) (Colon!875) (Null!875) (Comma!875) (LeftBracket!875) (False!1751) (LeftBrace!875) (ImaginaryLiteralValue!875 (text!6571 List!4406)) (StringLiteralValue!2625 (value!28611 List!4406)) (EOFValue!875 (value!28612 List!4406)) (IdentValue!875 (value!28613 List!4406)) (DelimiterValue!1751 (value!28614 List!4406)) (DedentValue!875 (value!28615 List!4406)) (NewLineValue!875 (value!28616 List!4406)) (IntegerValue!2625 (value!28617 (_ BitVec 32)) (text!6572 List!4406)) (IntegerValue!2626 (value!28618 Int) (text!6573 List!4406)) (Times!875) (Or!875) (Equal!875) (Minus!875) (Broken!4379 (value!28619 List!4406)) (And!875) (Div!875) (LessEqual!875) (Mod!875) (Concat!1952) (Not!875) (Plus!875) (SpaceValue!875 (value!28620 List!4406)) (IntegerValue!2627 (value!28621 Int) (text!6574 List!4406)) (StringLiteralValue!2626 (text!6575 List!4406)) (FloatLiteralValue!1751 (text!6576 List!4406)) (BytesLiteralValue!875 (value!28622 List!4406)) (CommentValue!1751 (value!28623 List!4406)) (StringLiteralValue!2627 (value!28624 List!4406)) (ErrorTokenValue!875 (msg!936 List!4406)) )
))
(declare-datatypes ((C!3076 0))(
  ( (C!3077 (val!1424 Int)) )
))
(declare-datatypes ((List!4407 0))(
  ( (Nil!4397) (Cons!4397 (h!9794 C!3076) (t!71095 List!4407)) )
))
(declare-datatypes ((IArray!3057 0))(
  ( (IArray!3058 (innerList!1586 List!4407)) )
))
(declare-datatypes ((Conc!1528 0))(
  ( (Node!1528 (left!3701 Conc!1528) (right!4031 Conc!1528) (csize!3286 Int) (cheight!1739 Int)) (Leaf!2294 (xs!4159 IArray!3057) (csize!3287 Int)) (Empty!1528) )
))
(declare-datatypes ((BalanceConc!3064 0))(
  ( (BalanceConc!3065 (c!91720 Conc!1528)) )
))
(declare-datatypes ((TokenValueInjection!1522 0))(
  ( (TokenValueInjection!1523 (toValue!1668 Int) (toChars!1527 Int)) )
))
(declare-datatypes ((String!5455 0))(
  ( (String!5456 (value!28625 String)) )
))
(declare-datatypes ((Regex!1077 0))(
  ( (ElementMatch!1077 (c!91721 C!3076)) (Concat!1953 (regOne!2666 Regex!1077) (regTwo!2666 Regex!1077)) (EmptyExpr!1077) (Star!1077 (reg!1406 Regex!1077)) (EmptyLang!1077) (Union!1077 (regOne!2667 Regex!1077) (regTwo!2667 Regex!1077)) )
))
(declare-datatypes ((Rule!1506 0))(
  ( (Rule!1507 (regex!853 Regex!1077) (tag!1113 String!5455) (isSeparator!853 Bool) (transformation!853 TokenValueInjection!1522)) )
))
(declare-datatypes ((List!4408 0))(
  ( (Nil!4398) (Cons!4398 (h!9795 Rule!1506) (t!71096 List!4408)) )
))
(declare-fun rules!1920 () List!4408)

(get-info :version)

(assert (= (and b!453551 ((_ is Cons!4398) rules!1920)) b!453576))

(declare-fun order!3871 () Int)

(declare-fun order!3869 () Int)

(declare-fun dynLambda!2656 (Int Int) Int)

(declare-fun dynLambda!2657 (Int Int) Int)

(assert (=> b!453578 (< (dynLambda!2656 order!3869 (toValue!1668 (transformation!853 (h!9795 rules!1920)))) (dynLambda!2657 order!3871 lambda!13238))))

(declare-fun order!3873 () Int)

(declare-fun dynLambda!2658 (Int Int) Int)

(assert (=> b!453578 (< (dynLambda!2658 order!3873 (toChars!1527 (transformation!853 (h!9795 rules!1920)))) (dynLambda!2657 order!3871 lambda!13238))))

(assert (=> b!453551 true))

(declare-fun b!453537 () Bool)

(declare-fun tp!126081 () Bool)

(declare-fun e!277417 () Bool)

(declare-fun e!277418 () Bool)

(declare-fun inv!5471 (String!5455) Bool)

(declare-fun inv!5474 (TokenValueInjection!1522) Bool)

(assert (=> b!453537 (= e!277418 (and tp!126081 (inv!5471 (tag!1113 (h!9795 rules!1920))) (inv!5474 (transformation!853 (h!9795 rules!1920))) e!277417))))

(declare-fun b!453538 () Bool)

(declare-fun e!277409 () Bool)

(declare-fun e!277423 () Bool)

(assert (=> b!453538 (= e!277409 e!277423)))

(declare-fun res!201541 () Bool)

(assert (=> b!453538 (=> res!201541 e!277423)))

(declare-fun lt!201667 () Bool)

(assert (=> b!453538 (= res!201541 lt!201667)))

(declare-fun e!277422 () Bool)

(assert (=> b!453538 e!277422))

(declare-fun res!201542 () Bool)

(assert (=> b!453538 (=> (not res!201542) (not e!277422))))

(declare-datatypes ((Token!1450 0))(
  ( (Token!1451 (value!28626 TokenValue!875) (rule!1544 Rule!1506) (size!3613 Int) (originalCharacters!896 List!4407)) )
))
(declare-datatypes ((tuple2!5334 0))(
  ( (tuple2!5335 (_1!2883 Token!1450) (_2!2883 List!4407)) )
))
(declare-fun lt!201678 () tuple2!5334)

(declare-datatypes ((List!4409 0))(
  ( (Nil!4399) (Cons!4399 (h!9796 Token!1450) (t!71097 List!4409)) )
))
(declare-fun tokens!465 () List!4409)

(assert (=> b!453538 (= res!201542 (= (_1!2883 lt!201678) (h!9796 tokens!465)))))

(declare-datatypes ((Option!1138 0))(
  ( (None!1137) (Some!1137 (v!15458 tuple2!5334)) )
))
(declare-fun lt!201662 () Option!1138)

(declare-fun get!1609 (Option!1138) tuple2!5334)

(assert (=> b!453538 (= lt!201678 (get!1609 lt!201662))))

(declare-fun isDefined!977 (Option!1138) Bool)

(assert (=> b!453538 (isDefined!977 lt!201662)))

(declare-datatypes ((LexerInterface!739 0))(
  ( (LexerInterfaceExt!736 (__x!3238 Int)) (Lexer!737) )
))
(declare-fun thiss!17480 () LexerInterface!739)

(declare-fun lt!201673 () List!4407)

(declare-fun maxPrefix!455 (LexerInterface!739 List!4408 List!4407) Option!1138)

(assert (=> b!453538 (= lt!201662 (maxPrefix!455 thiss!17480 rules!1920 lt!201673))))

(declare-fun b!453539 () Bool)

(declare-fun matchR!395 (Regex!1077 List!4407) Bool)

(assert (=> b!453539 (= e!277422 (matchR!395 (regex!853 (rule!1544 (h!9796 tokens!465))) lt!201673))))

(declare-fun b!453540 () Bool)

(declare-fun res!201547 () Bool)

(declare-fun e!277403 () Bool)

(assert (=> b!453540 (=> res!201547 e!277403)))

(declare-fun rulesProduceIndividualToken!488 (LexerInterface!739 List!4408 Token!1450) Bool)

(assert (=> b!453540 (= res!201547 (not (rulesProduceIndividualToken!488 thiss!17480 rules!1920 (h!9796 tokens!465))))))

(declare-fun e!277408 () Bool)

(assert (=> b!453541 (= e!277408 (and tp!126090 tp!126083))))

(declare-fun b!453542 () Bool)

(declare-fun res!201549 () Bool)

(declare-fun e!277404 () Bool)

(assert (=> b!453542 (=> (not res!201549) (not e!277404))))

(assert (=> b!453542 (= res!201549 ((_ is Cons!4399) tokens!465))))

(declare-fun b!453543 () Bool)

(declare-fun tp!126080 () Bool)

(declare-fun e!277406 () Bool)

(declare-fun e!277427 () Bool)

(declare-fun inv!5475 (Token!1450) Bool)

(assert (=> b!453543 (= e!277406 (and (inv!5475 (h!9796 tokens!465)) e!277427 tp!126080))))

(declare-fun res!201540 () Bool)

(assert (=> b!453544 (=> (not res!201540) (not e!277404))))

(declare-fun forall!1274 (List!4409 Int) Bool)

(assert (=> b!453544 (= res!201540 (forall!1274 tokens!465 lambda!13237))))

(declare-fun b!453545 () Bool)

(declare-fun res!201532 () Bool)

(assert (=> b!453545 (=> (not res!201532) (not e!277404))))

(declare-fun separatorToken!170 () Token!1450)

(assert (=> b!453545 (= res!201532 (rulesProduceIndividualToken!488 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!453546 () Bool)

(assert (=> b!453546 (= e!277423 true)))

(declare-fun lt!201661 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!315 (LexerInterface!739 List!4408 List!4409) Bool)

(assert (=> b!453546 (= lt!201661 (rulesProduceEachTokenIndividuallyList!315 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!453547 () Bool)

(declare-fun e!277412 () Bool)

(declare-fun e!277416 () Bool)

(assert (=> b!453547 (= e!277412 e!277416)))

(declare-fun res!201544 () Bool)

(assert (=> b!453547 (=> res!201544 e!277416)))

(declare-fun e!277426 () Bool)

(assert (=> b!453547 (= res!201544 e!277426)))

(declare-fun res!201531 () Bool)

(assert (=> b!453547 (=> (not res!201531) (not e!277426))))

(assert (=> b!453547 (= res!201531 (not lt!201667))))

(declare-fun lt!201660 () List!4407)

(declare-fun lt!201671 () List!4407)

(assert (=> b!453547 (= lt!201667 (= lt!201660 lt!201671))))

(declare-fun tp!126085 () Bool)

(declare-fun b!453548 () Bool)

(declare-fun e!277420 () Bool)

(assert (=> b!453548 (= e!277420 (and tp!126085 (inv!5471 (tag!1113 (rule!1544 (h!9796 tokens!465)))) (inv!5474 (transformation!853 (rule!1544 (h!9796 tokens!465)))) e!277408))))

(assert (=> b!453549 (= e!277417 (and tp!126079 tp!126086))))

(declare-fun b!453550 () Bool)

(declare-fun res!201530 () Bool)

(assert (=> b!453550 (=> (not res!201530) (not e!277404))))

(assert (=> b!453550 (= res!201530 (isSeparator!853 (rule!1544 separatorToken!170)))))

(assert (=> b!453551 (= e!277403 e!277409)))

(declare-fun res!201543 () Bool)

(assert (=> b!453551 (=> res!201543 e!277409)))

(declare-datatypes ((tuple2!5336 0))(
  ( (tuple2!5337 (_1!2884 Token!1450) (_2!2884 BalanceConc!3064)) )
))
(declare-datatypes ((Option!1139 0))(
  ( (None!1138) (Some!1138 (v!15459 tuple2!5336)) )
))
(declare-fun isDefined!978 (Option!1139) Bool)

(declare-fun maxPrefixZipperSequence!418 (LexerInterface!739 List!4408 BalanceConc!3064) Option!1139)

(declare-fun seqFromList!1071 (List!4407) BalanceConc!3064)

(assert (=> b!453551 (= res!201543 (not (isDefined!978 (maxPrefixZipperSequence!418 thiss!17480 rules!1920 (seqFromList!1071 (originalCharacters!896 (h!9796 tokens!465)))))))))

(declare-datatypes ((Unit!7943 0))(
  ( (Unit!7944) )
))
(declare-fun lt!201665 () Unit!7943)

(declare-fun forallContained!406 (List!4409 Int Token!1450) Unit!7943)

(assert (=> b!453551 (= lt!201665 (forallContained!406 tokens!465 lambda!13238 (h!9796 tokens!465)))))

(assert (=> b!453551 (= lt!201673 (originalCharacters!896 (h!9796 tokens!465)))))

(declare-fun lt!201676 () List!4407)

(declare-fun b!453552 () Bool)

(declare-fun ++!1278 (List!4407 List!4407) List!4407)

(assert (=> b!453552 (= e!277426 (not (= lt!201660 (++!1278 lt!201673 lt!201676))))))

(declare-fun b!453553 () Bool)

(declare-fun e!277405 () Bool)

(assert (=> b!453553 (= e!277405 (not e!277412))))

(declare-fun res!201536 () Bool)

(assert (=> b!453553 (=> res!201536 e!277412)))

(declare-fun list!1953 (BalanceConc!3064) List!4407)

(declare-datatypes ((IArray!3059 0))(
  ( (IArray!3060 (innerList!1587 List!4409)) )
))
(declare-datatypes ((Conc!1529 0))(
  ( (Node!1529 (left!3702 Conc!1529) (right!4032 Conc!1529) (csize!3288 Int) (cheight!1740 Int)) (Leaf!2295 (xs!4160 IArray!3059) (csize!3289 Int)) (Empty!1529) )
))
(declare-datatypes ((BalanceConc!3066 0))(
  ( (BalanceConc!3067 (c!91722 Conc!1529)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!412 (LexerInterface!739 List!4408 BalanceConc!3066 Token!1450 Int) BalanceConc!3064)

(declare-fun seqFromList!1072 (List!4409) BalanceConc!3066)

(assert (=> b!453553 (= res!201536 (not (= lt!201676 (list!1953 (printWithSeparatorTokenWhenNeededRec!412 thiss!17480 rules!1920 (seqFromList!1072 (t!71097 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!201669 () List!4407)

(assert (=> b!453553 (= lt!201669 lt!201671)))

(declare-fun lt!201664 () List!4407)

(assert (=> b!453553 (= lt!201671 (++!1278 lt!201673 lt!201664))))

(declare-fun lt!201675 () List!4407)

(assert (=> b!453553 (= lt!201669 (++!1278 (++!1278 lt!201673 lt!201675) lt!201676))))

(declare-fun lt!201677 () Unit!7943)

(declare-fun lemmaConcatAssociativity!588 (List!4407 List!4407 List!4407) Unit!7943)

(assert (=> b!453553 (= lt!201677 (lemmaConcatAssociativity!588 lt!201673 lt!201675 lt!201676))))

(declare-fun charsOf!496 (Token!1450) BalanceConc!3064)

(assert (=> b!453553 (= lt!201673 (list!1953 (charsOf!496 (h!9796 tokens!465))))))

(assert (=> b!453553 (= lt!201664 (++!1278 lt!201675 lt!201676))))

(declare-fun printWithSeparatorTokenWhenNeededList!420 (LexerInterface!739 List!4408 List!4409 Token!1450) List!4407)

(assert (=> b!453553 (= lt!201676 (printWithSeparatorTokenWhenNeededList!420 thiss!17480 rules!1920 (t!71097 tokens!465) separatorToken!170))))

(assert (=> b!453553 (= lt!201675 (list!1953 (charsOf!496 separatorToken!170)))))

(declare-fun b!453554 () Bool)

(declare-fun res!201548 () Bool)

(assert (=> b!453554 (=> res!201548 e!277403)))

(declare-fun isEmpty!3363 (BalanceConc!3066) Bool)

(declare-datatypes ((tuple2!5338 0))(
  ( (tuple2!5339 (_1!2885 BalanceConc!3066) (_2!2885 BalanceConc!3064)) )
))
(declare-fun lex!531 (LexerInterface!739 List!4408 BalanceConc!3064) tuple2!5338)

(assert (=> b!453554 (= res!201548 (isEmpty!3363 (_1!2885 (lex!531 thiss!17480 rules!1920 (seqFromList!1071 lt!201673)))))))

(declare-fun b!453555 () Bool)

(declare-fun res!201535 () Bool)

(assert (=> b!453555 (=> (not res!201535) (not e!277422))))

(declare-fun isEmpty!3364 (List!4407) Bool)

(assert (=> b!453555 (= res!201535 (isEmpty!3364 (_2!2883 lt!201678)))))

(declare-fun b!453556 () Bool)

(declare-fun e!277424 () Bool)

(declare-fun e!277413 () Bool)

(declare-fun tp!126088 () Bool)

(declare-fun inv!21 (TokenValue!875) Bool)

(assert (=> b!453556 (= e!277424 (and (inv!21 (value!28626 separatorToken!170)) e!277413 tp!126088))))

(declare-fun b!453557 () Bool)

(assert (=> b!453557 (= e!277416 e!277403)))

(declare-fun res!201539 () Bool)

(assert (=> b!453557 (=> res!201539 e!277403)))

(declare-fun lt!201663 () List!4407)

(declare-fun lt!201670 () List!4407)

(assert (=> b!453557 (= res!201539 (or (not (= lt!201670 lt!201663)) (not (= lt!201663 lt!201673)) (not (= lt!201670 lt!201673))))))

(declare-fun printList!413 (LexerInterface!739 List!4409) List!4407)

(assert (=> b!453557 (= lt!201663 (printList!413 thiss!17480 (Cons!4399 (h!9796 tokens!465) Nil!4399)))))

(declare-fun lt!201672 () BalanceConc!3064)

(assert (=> b!453557 (= lt!201670 (list!1953 lt!201672))))

(declare-fun lt!201666 () BalanceConc!3066)

(declare-fun printTailRec!425 (LexerInterface!739 BalanceConc!3066 Int BalanceConc!3064) BalanceConc!3064)

(assert (=> b!453557 (= lt!201672 (printTailRec!425 thiss!17480 lt!201666 0 (BalanceConc!3065 Empty!1528)))))

(declare-fun print!464 (LexerInterface!739 BalanceConc!3066) BalanceConc!3064)

(assert (=> b!453557 (= lt!201672 (print!464 thiss!17480 lt!201666))))

(declare-fun singletonSeq!399 (Token!1450) BalanceConc!3066)

(assert (=> b!453557 (= lt!201666 (singletonSeq!399 (h!9796 tokens!465)))))

(declare-fun b!453558 () Bool)

(declare-fun e!277410 () Bool)

(assert (=> b!453558 (= e!277410 e!277404)))

(declare-fun res!201546 () Bool)

(assert (=> b!453558 (=> (not res!201546) (not e!277404))))

(declare-fun lt!201668 () BalanceConc!3066)

(declare-fun rulesProduceEachTokenIndividually!531 (LexerInterface!739 List!4408 BalanceConc!3066) Bool)

(assert (=> b!453558 (= res!201546 (rulesProduceEachTokenIndividually!531 thiss!17480 rules!1920 lt!201668))))

(assert (=> b!453558 (= lt!201668 (seqFromList!1072 tokens!465))))

(declare-fun b!453559 () Bool)

(declare-fun res!201545 () Bool)

(assert (=> b!453559 (=> (not res!201545) (not e!277405))))

(declare-fun lt!201674 () List!4407)

(assert (=> b!453559 (= res!201545 (= (list!1953 (seqFromList!1071 lt!201660)) lt!201674))))

(declare-fun b!453560 () Bool)

(declare-fun res!201538 () Bool)

(assert (=> b!453560 (=> (not res!201538) (not e!277410))))

(declare-fun rulesInvariant!705 (LexerInterface!739 List!4408) Bool)

(assert (=> b!453560 (= res!201538 (rulesInvariant!705 thiss!17480 rules!1920))))

(declare-fun b!453561 () Bool)

(declare-fun res!201537 () Bool)

(assert (=> b!453561 (=> (not res!201537) (not e!277404))))

(declare-fun sepAndNonSepRulesDisjointChars!442 (List!4408 List!4408) Bool)

(assert (=> b!453561 (= res!201537 (sepAndNonSepRulesDisjointChars!442 rules!1920 rules!1920))))

(declare-fun b!453562 () Bool)

(declare-fun tp!126089 () Bool)

(assert (=> b!453562 (= e!277427 (and (inv!21 (value!28626 (h!9796 tokens!465))) e!277420 tp!126089))))

(declare-fun e!277419 () Bool)

(assert (=> b!453563 (= e!277419 (and tp!126087 tp!126084))))

(declare-fun b!453564 () Bool)

(declare-fun e!277414 () Bool)

(declare-fun tp!126091 () Bool)

(assert (=> b!453564 (= e!277414 (and e!277418 tp!126091))))

(declare-fun b!453565 () Bool)

(assert (=> b!453565 (= e!277404 e!277405)))

(declare-fun res!201533 () Bool)

(assert (=> b!453565 (=> (not res!201533) (not e!277405))))

(assert (=> b!453565 (= res!201533 (= lt!201660 lt!201674))))

(assert (=> b!453565 (= lt!201674 (list!1953 (printWithSeparatorTokenWhenNeededRec!412 thiss!17480 rules!1920 lt!201668 separatorToken!170 0)))))

(assert (=> b!453565 (= lt!201660 (printWithSeparatorTokenWhenNeededList!420 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!453566 () Bool)

(declare-fun res!201534 () Bool)

(assert (=> b!453566 (=> (not res!201534) (not e!277410))))

(declare-fun isEmpty!3365 (List!4408) Bool)

(assert (=> b!453566 (= res!201534 (not (isEmpty!3365 rules!1920)))))

(declare-fun res!201550 () Bool)

(assert (=> start!42994 (=> (not res!201550) (not e!277410))))

(assert (=> start!42994 (= res!201550 ((_ is Lexer!737) thiss!17480))))

(assert (=> start!42994 e!277410))

(assert (=> start!42994 true))

(assert (=> start!42994 e!277414))

(assert (=> start!42994 (and (inv!5475 separatorToken!170) e!277424)))

(assert (=> start!42994 e!277406))

(declare-fun tp!126082 () Bool)

(declare-fun b!453567 () Bool)

(assert (=> b!453567 (= e!277413 (and tp!126082 (inv!5471 (tag!1113 (rule!1544 separatorToken!170))) (inv!5474 (transformation!853 (rule!1544 separatorToken!170))) e!277419))))

(assert (= (and start!42994 res!201550) b!453566))

(assert (= (and b!453566 res!201534) b!453560))

(assert (= (and b!453560 res!201538) b!453558))

(assert (= (and b!453558 res!201546) b!453545))

(assert (= (and b!453545 res!201532) b!453550))

(assert (= (and b!453550 res!201530) b!453544))

(assert (= (and b!453544 res!201540) b!453561))

(assert (= (and b!453561 res!201537) b!453542))

(assert (= (and b!453542 res!201549) b!453565))

(assert (= (and b!453565 res!201533) b!453559))

(assert (= (and b!453559 res!201545) b!453553))

(assert (= (and b!453553 (not res!201536)) b!453547))

(assert (= (and b!453547 res!201531) b!453552))

(assert (= (and b!453547 (not res!201544)) b!453557))

(assert (= (and b!453557 (not res!201539)) b!453540))

(assert (= (and b!453540 (not res!201547)) b!453554))

(assert (= (and b!453554 (not res!201548)) b!453551))

(assert (= (and b!453551 (not res!201543)) b!453538))

(assert (= (and b!453538 res!201542) b!453555))

(assert (= (and b!453555 res!201535) b!453539))

(assert (= (and b!453538 (not res!201541)) b!453546))

(assert (= b!453537 b!453549))

(assert (= b!453564 b!453537))

(assert (= (and start!42994 ((_ is Cons!4398) rules!1920)) b!453564))

(assert (= b!453567 b!453563))

(assert (= b!453556 b!453567))

(assert (= start!42994 b!453556))

(assert (= b!453548 b!453541))

(assert (= b!453562 b!453548))

(assert (= b!453543 b!453562))

(assert (= (and start!42994 ((_ is Cons!4399) tokens!465)) b!453543))

(declare-fun m!717721 () Bool)

(assert (=> b!453561 m!717721))

(declare-fun m!717723 () Bool)

(assert (=> b!453562 m!717723))

(declare-fun m!717725 () Bool)

(assert (=> b!453557 m!717725))

(declare-fun m!717727 () Bool)

(assert (=> b!453557 m!717727))

(declare-fun m!717729 () Bool)

(assert (=> b!453557 m!717729))

(declare-fun m!717731 () Bool)

(assert (=> b!453557 m!717731))

(declare-fun m!717733 () Bool)

(assert (=> b!453557 m!717733))

(declare-fun m!717735 () Bool)

(assert (=> b!453560 m!717735))

(declare-fun m!717737 () Bool)

(assert (=> b!453567 m!717737))

(declare-fun m!717739 () Bool)

(assert (=> b!453567 m!717739))

(declare-fun m!717741 () Bool)

(assert (=> b!453554 m!717741))

(assert (=> b!453554 m!717741))

(declare-fun m!717743 () Bool)

(assert (=> b!453554 m!717743))

(declare-fun m!717745 () Bool)

(assert (=> b!453554 m!717745))

(declare-fun m!717747 () Bool)

(assert (=> b!453551 m!717747))

(assert (=> b!453551 m!717747))

(declare-fun m!717749 () Bool)

(assert (=> b!453551 m!717749))

(assert (=> b!453551 m!717749))

(declare-fun m!717751 () Bool)

(assert (=> b!453551 m!717751))

(declare-fun m!717753 () Bool)

(assert (=> b!453551 m!717753))

(declare-fun m!717755 () Bool)

(assert (=> b!453559 m!717755))

(assert (=> b!453559 m!717755))

(declare-fun m!717757 () Bool)

(assert (=> b!453559 m!717757))

(declare-fun m!717759 () Bool)

(assert (=> b!453556 m!717759))

(declare-fun m!717761 () Bool)

(assert (=> start!42994 m!717761))

(declare-fun m!717763 () Bool)

(assert (=> b!453558 m!717763))

(declare-fun m!717765 () Bool)

(assert (=> b!453558 m!717765))

(declare-fun m!717767 () Bool)

(assert (=> b!453539 m!717767))

(declare-fun m!717769 () Bool)

(assert (=> b!453538 m!717769))

(declare-fun m!717771 () Bool)

(assert (=> b!453538 m!717771))

(declare-fun m!717773 () Bool)

(assert (=> b!453538 m!717773))

(declare-fun m!717775 () Bool)

(assert (=> b!453553 m!717775))

(declare-fun m!717777 () Bool)

(assert (=> b!453553 m!717777))

(declare-fun m!717779 () Bool)

(assert (=> b!453553 m!717779))

(declare-fun m!717781 () Bool)

(assert (=> b!453553 m!717781))

(declare-fun m!717783 () Bool)

(assert (=> b!453553 m!717783))

(assert (=> b!453553 m!717777))

(declare-fun m!717785 () Bool)

(assert (=> b!453553 m!717785))

(declare-fun m!717787 () Bool)

(assert (=> b!453553 m!717787))

(assert (=> b!453553 m!717775))

(declare-fun m!717789 () Bool)

(assert (=> b!453553 m!717789))

(declare-fun m!717791 () Bool)

(assert (=> b!453553 m!717791))

(assert (=> b!453553 m!717785))

(declare-fun m!717793 () Bool)

(assert (=> b!453553 m!717793))

(declare-fun m!717795 () Bool)

(assert (=> b!453553 m!717795))

(assert (=> b!453553 m!717791))

(declare-fun m!717797 () Bool)

(assert (=> b!453553 m!717797))

(assert (=> b!453553 m!717789))

(declare-fun m!717799 () Bool)

(assert (=> b!453553 m!717799))

(declare-fun m!717801 () Bool)

(assert (=> b!453548 m!717801))

(declare-fun m!717803 () Bool)

(assert (=> b!453548 m!717803))

(declare-fun m!717805 () Bool)

(assert (=> b!453545 m!717805))

(declare-fun m!717807 () Bool)

(assert (=> b!453540 m!717807))

(declare-fun m!717809 () Bool)

(assert (=> b!453537 m!717809))

(declare-fun m!717811 () Bool)

(assert (=> b!453537 m!717811))

(declare-fun m!717813 () Bool)

(assert (=> b!453566 m!717813))

(declare-fun m!717815 () Bool)

(assert (=> b!453544 m!717815))

(declare-fun m!717817 () Bool)

(assert (=> b!453565 m!717817))

(assert (=> b!453565 m!717817))

(declare-fun m!717819 () Bool)

(assert (=> b!453565 m!717819))

(declare-fun m!717821 () Bool)

(assert (=> b!453565 m!717821))

(declare-fun m!717823 () Bool)

(assert (=> b!453546 m!717823))

(declare-fun m!717825 () Bool)

(assert (=> b!453555 m!717825))

(declare-fun m!717827 () Bool)

(assert (=> b!453543 m!717827))

(declare-fun m!717829 () Bool)

(assert (=> b!453552 m!717829))

(check-sat b_and!48723 (not b!453565) b_and!48719 (not b_next!12607) (not b!453544) b_and!48717 (not start!42994) (not b!453554) (not b!453561) (not b!453558) (not b!453564) (not b!453555) (not b!453543) (not b!453546) (not b_next!12609) (not b!453537) (not b!453552) b_and!48715 (not b!453540) (not b!453557) (not b!453566) (not b!453548) (not b!453539) (not b_next!12603) (not b_next!12605) (not b!453567) (not b!453556) (not b!453551) (not b!453545) (not b_next!12601) (not b!453560) (not b_next!12611) (not b!453538) b_and!48713 (not b!453562) (not b!453559) b_and!48721 (not b!453553) (not b!453576))
(check-sat (not b_next!12609) b_and!48723 b_and!48715 (not b_next!12603) b_and!48719 (not b_next!12605) (not b_next!12607) (not b_next!12601) (not b_next!12611) b_and!48717 b_and!48713 b_and!48721)
