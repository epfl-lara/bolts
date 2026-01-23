; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28602 () Bool)

(assert start!28602)

(declare-fun b!266690 () Bool)

(declare-fun b_free!9913 () Bool)

(declare-fun b_next!9913 () Bool)

(assert (=> b!266690 (= b_free!9913 (not b_next!9913))))

(declare-fun tp!101766 () Bool)

(declare-fun b_and!21021 () Bool)

(assert (=> b!266690 (= tp!101766 b_and!21021)))

(declare-fun b_free!9915 () Bool)

(declare-fun b_next!9915 () Bool)

(assert (=> b!266690 (= b_free!9915 (not b_next!9915))))

(declare-fun tp!101770 () Bool)

(declare-fun b_and!21023 () Bool)

(assert (=> b!266690 (= tp!101770 b_and!21023)))

(declare-fun b!266683 () Bool)

(declare-fun b_free!9917 () Bool)

(declare-fun b_next!9917 () Bool)

(assert (=> b!266683 (= b_free!9917 (not b_next!9917))))

(declare-fun tp!101768 () Bool)

(declare-fun b_and!21025 () Bool)

(assert (=> b!266683 (= tp!101768 b_and!21025)))

(declare-fun b_free!9919 () Bool)

(declare-fun b_next!9919 () Bool)

(assert (=> b!266683 (= b_free!9919 (not b_next!9919))))

(declare-fun tp!101763 () Bool)

(declare-fun b_and!21027 () Bool)

(assert (=> b!266683 (= tp!101763 b_and!21027)))

(declare-fun b!266671 () Bool)

(declare-fun b_free!9921 () Bool)

(declare-fun b_next!9921 () Bool)

(assert (=> b!266671 (= b_free!9921 (not b_next!9921))))

(declare-fun tp!101769 () Bool)

(declare-fun b_and!21029 () Bool)

(assert (=> b!266671 (= tp!101769 b_and!21029)))

(declare-fun b_free!9923 () Bool)

(declare-fun b_next!9923 () Bool)

(assert (=> b!266671 (= b_free!9923 (not b_next!9923))))

(declare-fun tp!101773 () Bool)

(declare-fun b_and!21031 () Bool)

(assert (=> b!266671 (= tp!101773 b_and!21031)))

(declare-fun b!266669 () Bool)

(declare-fun tp!101767 () Bool)

(declare-datatypes ((List!3809 0))(
  ( (Nil!3799) (Cons!3799 (h!9196 (_ BitVec 16)) (t!37793 List!3809)) )
))
(declare-datatypes ((TokenValue!747 0))(
  ( (FloatLiteralValue!1494 (text!5674 List!3809)) (TokenValueExt!746 (__x!2981 Int)) (Broken!3735 (value!24952 List!3809)) (Object!756) (End!747) (Def!747) (Underscore!747) (Match!747) (Else!747) (Error!747) (Case!747) (If!747) (Extends!747) (Abstract!747) (Class!747) (Val!747) (DelimiterValue!1494 (del!807 List!3809)) (KeywordValue!753 (value!24953 List!3809)) (CommentValue!1494 (value!24954 List!3809)) (WhitespaceValue!1494 (value!24955 List!3809)) (IndentationValue!747 (value!24956 List!3809)) (String!4814) (Int32!747) (Broken!3736 (value!24957 List!3809)) (Boolean!748) (Unit!4817) (OperatorValue!750 (op!807 List!3809)) (IdentifierValue!1494 (value!24958 List!3809)) (IdentifierValue!1495 (value!24959 List!3809)) (WhitespaceValue!1495 (value!24960 List!3809)) (True!1494) (False!1494) (Broken!3737 (value!24961 List!3809)) (Broken!3738 (value!24962 List!3809)) (True!1495) (RightBrace!747) (RightBracket!747) (Colon!747) (Null!747) (Comma!747) (LeftBracket!747) (False!1495) (LeftBrace!747) (ImaginaryLiteralValue!747 (text!5675 List!3809)) (StringLiteralValue!2241 (value!24963 List!3809)) (EOFValue!747 (value!24964 List!3809)) (IdentValue!747 (value!24965 List!3809)) (DelimiterValue!1495 (value!24966 List!3809)) (DedentValue!747 (value!24967 List!3809)) (NewLineValue!747 (value!24968 List!3809)) (IntegerValue!2241 (value!24969 (_ BitVec 32)) (text!5676 List!3809)) (IntegerValue!2242 (value!24970 Int) (text!5677 List!3809)) (Times!747) (Or!747) (Equal!747) (Minus!747) (Broken!3739 (value!24971 List!3809)) (And!747) (Div!747) (LessEqual!747) (Mod!747) (Concat!1696) (Not!747) (Plus!747) (SpaceValue!747 (value!24972 List!3809)) (IntegerValue!2243 (value!24973 Int) (text!5678 List!3809)) (StringLiteralValue!2242 (text!5679 List!3809)) (FloatLiteralValue!1495 (text!5680 List!3809)) (BytesLiteralValue!747 (value!24974 List!3809)) (CommentValue!1495 (value!24975 List!3809)) (StringLiteralValue!2243 (value!24976 List!3809)) (ErrorTokenValue!747 (msg!808 List!3809)) )
))
(declare-datatypes ((C!2820 0))(
  ( (C!2821 (val!1296 Int)) )
))
(declare-datatypes ((List!3810 0))(
  ( (Nil!3800) (Cons!3800 (h!9197 C!2820) (t!37794 List!3810)) )
))
(declare-datatypes ((IArray!2545 0))(
  ( (IArray!2546 (innerList!1330 List!3810)) )
))
(declare-datatypes ((Conc!1272 0))(
  ( (Node!1272 (left!3125 Conc!1272) (right!3455 Conc!1272) (csize!2774 Int) (cheight!1483 Int)) (Leaf!1974 (xs!3871 IArray!2545) (csize!2775 Int)) (Empty!1272) )
))
(declare-datatypes ((BalanceConc!2552 0))(
  ( (BalanceConc!2553 (c!50459 Conc!1272)) )
))
(declare-datatypes ((String!4815 0))(
  ( (String!4816 (value!24977 String)) )
))
(declare-datatypes ((TokenValueInjection!1266 0))(
  ( (TokenValueInjection!1267 (toValue!1456 Int) (toChars!1315 Int)) )
))
(declare-datatypes ((Regex!949 0))(
  ( (ElementMatch!949 (c!50460 C!2820)) (Concat!1697 (regOne!2410 Regex!949) (regTwo!2410 Regex!949)) (EmptyExpr!949) (Star!949 (reg!1278 Regex!949)) (EmptyLang!949) (Union!949 (regOne!2411 Regex!949) (regTwo!2411 Regex!949)) )
))
(declare-datatypes ((Rule!1250 0))(
  ( (Rule!1251 (regex!725 Regex!949) (tag!935 String!4815) (isSeparator!725 Bool) (transformation!725 TokenValueInjection!1266)) )
))
(declare-datatypes ((List!3811 0))(
  ( (Nil!3801) (Cons!3801 (h!9198 Rule!1250) (t!37795 List!3811)) )
))
(declare-fun rules!1920 () List!3811)

(declare-fun e!165660 () Bool)

(declare-fun e!165675 () Bool)

(declare-fun inv!4695 (String!4815) Bool)

(declare-fun inv!4698 (TokenValueInjection!1266) Bool)

(assert (=> b!266669 (= e!165660 (and tp!101767 (inv!4695 (tag!935 (h!9198 rules!1920))) (inv!4698 (transformation!725 (h!9198 rules!1920))) e!165675))))

(declare-fun b!266670 () Bool)

(declare-fun e!165658 () Bool)

(declare-fun e!165661 () Bool)

(assert (=> b!266670 (= e!165658 e!165661)))

(declare-fun res!122178 () Bool)

(assert (=> b!266670 (=> (not res!122178) (not e!165661))))

(declare-fun lt!109204 () List!3810)

(declare-fun lt!109212 () List!3810)

(assert (=> b!266670 (= res!122178 (= lt!109204 lt!109212))))

(declare-datatypes ((Token!1194 0))(
  ( (Token!1195 (value!24978 TokenValue!747) (rule!1310 Rule!1250) (size!3023 Int) (originalCharacters!768 List!3810)) )
))
(declare-fun separatorToken!170 () Token!1194)

(declare-datatypes ((List!3812 0))(
  ( (Nil!3802) (Cons!3802 (h!9199 Token!1194) (t!37796 List!3812)) )
))
(declare-datatypes ((IArray!2547 0))(
  ( (IArray!2548 (innerList!1331 List!3812)) )
))
(declare-datatypes ((Conc!1273 0))(
  ( (Node!1273 (left!3126 Conc!1273) (right!3456 Conc!1273) (csize!2776 Int) (cheight!1484 Int)) (Leaf!1975 (xs!3872 IArray!2547) (csize!2777 Int)) (Empty!1273) )
))
(declare-datatypes ((BalanceConc!2554 0))(
  ( (BalanceConc!2555 (c!50461 Conc!1273)) )
))
(declare-fun lt!109203 () BalanceConc!2554)

(declare-datatypes ((LexerInterface!611 0))(
  ( (LexerInterfaceExt!608 (__x!2982 Int)) (Lexer!609) )
))
(declare-fun thiss!17480 () LexerInterface!611)

(declare-fun list!1545 (BalanceConc!2552) List!3810)

(declare-fun printWithSeparatorTokenWhenNeededRec!286 (LexerInterface!611 List!3811 BalanceConc!2554 Token!1194 Int) BalanceConc!2552)

(assert (=> b!266670 (= lt!109212 (list!1545 (printWithSeparatorTokenWhenNeededRec!286 thiss!17480 rules!1920 lt!109203 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3812)

(declare-fun printWithSeparatorTokenWhenNeededList!294 (LexerInterface!611 List!3811 List!3812 Token!1194) List!3810)

(assert (=> b!266670 (= lt!109204 (printWithSeparatorTokenWhenNeededList!294 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!266671 (= e!165675 (and tp!101769 tp!101773))))

(declare-fun e!165673 () Bool)

(declare-fun tp!101775 () Bool)

(declare-fun e!165656 () Bool)

(declare-fun b!266672 () Bool)

(declare-fun inv!21 (TokenValue!747) Bool)

(assert (=> b!266672 (= e!165656 (and (inv!21 (value!24978 (h!9199 tokens!465))) e!165673 tp!101775))))

(declare-fun b!266674 () Bool)

(declare-fun res!122181 () Bool)

(assert (=> b!266674 (=> (not res!122181) (not e!165658))))

(get-info :version)

(assert (=> b!266674 (= res!122181 ((_ is Cons!3802) tokens!465))))

(declare-fun b!266675 () Bool)

(declare-fun res!122171 () Bool)

(declare-fun e!165657 () Bool)

(assert (=> b!266675 (=> (not res!122171) (not e!165657))))

(declare-fun isEmpty!2396 (List!3811) Bool)

(assert (=> b!266675 (= res!122171 (not (isEmpty!2396 rules!1920)))))

(declare-fun b!266676 () Bool)

(declare-fun e!165666 () Bool)

(assert (=> b!266676 (= e!165661 (not e!165666))))

(declare-fun res!122182 () Bool)

(assert (=> b!266676 (=> res!122182 e!165666)))

(declare-fun lt!109202 () List!3810)

(declare-fun seqFromList!817 (List!3812) BalanceConc!2554)

(assert (=> b!266676 (= res!122182 (not (= lt!109202 (list!1545 (printWithSeparatorTokenWhenNeededRec!286 thiss!17480 rules!1920 (seqFromList!817 (t!37796 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!109205 () List!3810)

(declare-fun lt!109214 () List!3810)

(assert (=> b!266676 (= lt!109205 lt!109214)))

(declare-fun lt!109210 () List!3810)

(declare-fun lt!109206 () List!3810)

(declare-fun ++!986 (List!3810 List!3810) List!3810)

(assert (=> b!266676 (= lt!109214 (++!986 lt!109210 lt!109206))))

(declare-fun lt!109211 () List!3810)

(assert (=> b!266676 (= lt!109205 (++!986 (++!986 lt!109210 lt!109211) lt!109202))))

(declare-datatypes ((Unit!4818 0))(
  ( (Unit!4819) )
))
(declare-fun lt!109209 () Unit!4818)

(declare-fun lemmaConcatAssociativity!422 (List!3810 List!3810 List!3810) Unit!4818)

(assert (=> b!266676 (= lt!109209 (lemmaConcatAssociativity!422 lt!109210 lt!109211 lt!109202))))

(declare-fun charsOf!370 (Token!1194) BalanceConc!2552)

(assert (=> b!266676 (= lt!109210 (list!1545 (charsOf!370 (h!9199 tokens!465))))))

(assert (=> b!266676 (= lt!109206 (++!986 lt!109211 lt!109202))))

(assert (=> b!266676 (= lt!109202 (printWithSeparatorTokenWhenNeededList!294 thiss!17480 rules!1920 (t!37796 tokens!465) separatorToken!170))))

(assert (=> b!266676 (= lt!109211 (list!1545 (charsOf!370 separatorToken!170)))))

(declare-fun b!266677 () Bool)

(declare-fun res!122179 () Bool)

(assert (=> b!266677 (=> (not res!122179) (not e!165658))))

(declare-fun lambda!8988 () Int)

(declare-fun forall!947 (List!3812 Int) Bool)

(assert (=> b!266677 (= res!122179 (forall!947 tokens!465 lambda!8988))))

(declare-fun b!266678 () Bool)

(declare-fun res!122170 () Bool)

(assert (=> b!266678 (=> (not res!122170) (not e!165658))))

(assert (=> b!266678 (= res!122170 (isSeparator!725 (rule!1310 separatorToken!170)))))

(declare-fun e!165674 () Bool)

(declare-fun b!266679 () Bool)

(assert (=> b!266679 (= e!165674 (not (= lt!109204 (++!986 lt!109210 lt!109202))))))

(declare-fun b!266680 () Bool)

(declare-fun res!122180 () Bool)

(assert (=> b!266680 (=> (not res!122180) (not e!165661))))

(declare-fun seqFromList!818 (List!3810) BalanceConc!2552)

(assert (=> b!266680 (= res!122180 (= (list!1545 (seqFromList!818 lt!109204)) lt!109212))))

(declare-fun b!266681 () Bool)

(declare-fun e!165669 () Bool)

(declare-fun tp!101764 () Bool)

(assert (=> b!266681 (= e!165669 (and e!165660 tp!101764))))

(declare-fun b!266682 () Bool)

(assert (=> b!266682 (= e!165657 e!165658)))

(declare-fun res!122169 () Bool)

(assert (=> b!266682 (=> (not res!122169) (not e!165658))))

(declare-fun rulesProduceEachTokenIndividually!403 (LexerInterface!611 List!3811 BalanceConc!2554) Bool)

(assert (=> b!266682 (= res!122169 (rulesProduceEachTokenIndividually!403 thiss!17480 rules!1920 lt!109203))))

(assert (=> b!266682 (= lt!109203 (seqFromList!817 tokens!465))))

(declare-fun e!165665 () Bool)

(assert (=> b!266683 (= e!165665 (and tp!101768 tp!101763))))

(declare-fun b!266684 () Bool)

(declare-fun res!122176 () Bool)

(assert (=> b!266684 (=> (not res!122176) (not e!165657))))

(declare-fun rulesInvariant!577 (LexerInterface!611 List!3811) Bool)

(assert (=> b!266684 (= res!122176 (rulesInvariant!577 thiss!17480 rules!1920))))

(declare-fun res!122177 () Bool)

(assert (=> start!28602 (=> (not res!122177) (not e!165657))))

(assert (=> start!28602 (= res!122177 ((_ is Lexer!609) thiss!17480))))

(assert (=> start!28602 e!165657))

(assert (=> start!28602 true))

(assert (=> start!28602 e!165669))

(declare-fun e!165667 () Bool)

(declare-fun inv!4699 (Token!1194) Bool)

(assert (=> start!28602 (and (inv!4699 separatorToken!170) e!165667)))

(declare-fun e!165670 () Bool)

(assert (=> start!28602 e!165670))

(declare-fun b!266673 () Bool)

(declare-fun lt!109207 () List!3810)

(declare-fun lt!109201 () List!3810)

(assert (=> b!266673 (= e!165666 (or (not (= lt!109201 lt!109207)) (not (= lt!109207 lt!109210)) (= lt!109201 lt!109210)))))

(declare-fun printList!287 (LexerInterface!611 List!3812) List!3810)

(assert (=> b!266673 (= lt!109207 (printList!287 thiss!17480 (Cons!3802 (h!9199 tokens!465) Nil!3802)))))

(declare-fun lt!109213 () BalanceConc!2552)

(assert (=> b!266673 (= lt!109201 (list!1545 lt!109213))))

(declare-fun lt!109208 () BalanceConc!2554)

(declare-fun printTailRec!299 (LexerInterface!611 BalanceConc!2554 Int BalanceConc!2552) BalanceConc!2552)

(assert (=> b!266673 (= lt!109213 (printTailRec!299 thiss!17480 lt!109208 0 (BalanceConc!2553 Empty!1272)))))

(declare-fun print!336 (LexerInterface!611 BalanceConc!2554) BalanceConc!2552)

(assert (=> b!266673 (= lt!109213 (print!336 thiss!17480 lt!109208))))

(declare-fun singletonSeq!271 (Token!1194) BalanceConc!2554)

(assert (=> b!266673 (= lt!109208 (singletonSeq!271 (h!9199 tokens!465)))))

(declare-fun e!165663 () Bool)

(declare-fun e!165659 () Bool)

(declare-fun tp!101771 () Bool)

(declare-fun b!266685 () Bool)

(assert (=> b!266685 (= e!165659 (and tp!101771 (inv!4695 (tag!935 (rule!1310 separatorToken!170))) (inv!4698 (transformation!725 (rule!1310 separatorToken!170))) e!165663))))

(declare-fun b!266686 () Bool)

(declare-fun tp!101772 () Bool)

(assert (=> b!266686 (= e!165670 (and (inv!4699 (h!9199 tokens!465)) e!165656 tp!101772))))

(declare-fun tp!101765 () Bool)

(declare-fun b!266687 () Bool)

(assert (=> b!266687 (= e!165673 (and tp!101765 (inv!4695 (tag!935 (rule!1310 (h!9199 tokens!465)))) (inv!4698 (transformation!725 (rule!1310 (h!9199 tokens!465)))) e!165665))))

(declare-fun b!266688 () Bool)

(declare-fun res!122175 () Bool)

(assert (=> b!266688 (=> (not res!122175) (not e!165658))))

(declare-fun sepAndNonSepRulesDisjointChars!314 (List!3811 List!3811) Bool)

(assert (=> b!266688 (= res!122175 (sepAndNonSepRulesDisjointChars!314 rules!1920 rules!1920))))

(declare-fun b!266689 () Bool)

(declare-fun res!122172 () Bool)

(assert (=> b!266689 (=> res!122172 e!165666)))

(assert (=> b!266689 (= res!122172 e!165674)))

(declare-fun res!122174 () Bool)

(assert (=> b!266689 (=> (not res!122174) (not e!165674))))

(assert (=> b!266689 (= res!122174 (not (= lt!109204 lt!109214)))))

(assert (=> b!266690 (= e!165663 (and tp!101766 tp!101770))))

(declare-fun tp!101774 () Bool)

(declare-fun b!266691 () Bool)

(assert (=> b!266691 (= e!165667 (and (inv!21 (value!24978 separatorToken!170)) e!165659 tp!101774))))

(declare-fun b!266692 () Bool)

(declare-fun res!122173 () Bool)

(assert (=> b!266692 (=> (not res!122173) (not e!165658))))

(declare-fun rulesProduceIndividualToken!360 (LexerInterface!611 List!3811 Token!1194) Bool)

(assert (=> b!266692 (= res!122173 (rulesProduceIndividualToken!360 thiss!17480 rules!1920 separatorToken!170))))

(assert (= (and start!28602 res!122177) b!266675))

(assert (= (and b!266675 res!122171) b!266684))

(assert (= (and b!266684 res!122176) b!266682))

(assert (= (and b!266682 res!122169) b!266692))

(assert (= (and b!266692 res!122173) b!266678))

(assert (= (and b!266678 res!122170) b!266677))

(assert (= (and b!266677 res!122179) b!266688))

(assert (= (and b!266688 res!122175) b!266674))

(assert (= (and b!266674 res!122181) b!266670))

(assert (= (and b!266670 res!122178) b!266680))

(assert (= (and b!266680 res!122180) b!266676))

(assert (= (and b!266676 (not res!122182)) b!266689))

(assert (= (and b!266689 res!122174) b!266679))

(assert (= (and b!266689 (not res!122172)) b!266673))

(assert (= b!266669 b!266671))

(assert (= b!266681 b!266669))

(assert (= (and start!28602 ((_ is Cons!3801) rules!1920)) b!266681))

(assert (= b!266685 b!266690))

(assert (= b!266691 b!266685))

(assert (= start!28602 b!266691))

(assert (= b!266687 b!266683))

(assert (= b!266672 b!266687))

(assert (= b!266686 b!266672))

(assert (= (and start!28602 ((_ is Cons!3802) tokens!465)) b!266686))

(declare-fun m!334357 () Bool)

(assert (=> b!266670 m!334357))

(assert (=> b!266670 m!334357))

(declare-fun m!334359 () Bool)

(assert (=> b!266670 m!334359))

(declare-fun m!334361 () Bool)

(assert (=> b!266670 m!334361))

(declare-fun m!334363 () Bool)

(assert (=> b!266691 m!334363))

(declare-fun m!334365 () Bool)

(assert (=> b!266688 m!334365))

(declare-fun m!334367 () Bool)

(assert (=> b!266686 m!334367))

(declare-fun m!334369 () Bool)

(assert (=> b!266692 m!334369))

(declare-fun m!334371 () Bool)

(assert (=> b!266682 m!334371))

(declare-fun m!334373 () Bool)

(assert (=> b!266682 m!334373))

(declare-fun m!334375 () Bool)

(assert (=> b!266673 m!334375))

(declare-fun m!334377 () Bool)

(assert (=> b!266673 m!334377))

(declare-fun m!334379 () Bool)

(assert (=> b!266673 m!334379))

(declare-fun m!334381 () Bool)

(assert (=> b!266673 m!334381))

(declare-fun m!334383 () Bool)

(assert (=> b!266673 m!334383))

(declare-fun m!334385 () Bool)

(assert (=> b!266675 m!334385))

(declare-fun m!334387 () Bool)

(assert (=> b!266679 m!334387))

(declare-fun m!334389 () Bool)

(assert (=> b!266680 m!334389))

(assert (=> b!266680 m!334389))

(declare-fun m!334391 () Bool)

(assert (=> b!266680 m!334391))

(declare-fun m!334393 () Bool)

(assert (=> b!266685 m!334393))

(declare-fun m!334395 () Bool)

(assert (=> b!266685 m!334395))

(declare-fun m!334397 () Bool)

(assert (=> b!266687 m!334397))

(declare-fun m!334399 () Bool)

(assert (=> b!266687 m!334399))

(declare-fun m!334401 () Bool)

(assert (=> b!266677 m!334401))

(declare-fun m!334403 () Bool)

(assert (=> b!266669 m!334403))

(declare-fun m!334405 () Bool)

(assert (=> b!266669 m!334405))

(declare-fun m!334407 () Bool)

(assert (=> b!266684 m!334407))

(declare-fun m!334409 () Bool)

(assert (=> b!266676 m!334409))

(declare-fun m!334411 () Bool)

(assert (=> b!266676 m!334411))

(declare-fun m!334413 () Bool)

(assert (=> b!266676 m!334413))

(declare-fun m!334415 () Bool)

(assert (=> b!266676 m!334415))

(declare-fun m!334417 () Bool)

(assert (=> b!266676 m!334417))

(declare-fun m!334419 () Bool)

(assert (=> b!266676 m!334419))

(declare-fun m!334421 () Bool)

(assert (=> b!266676 m!334421))

(assert (=> b!266676 m!334415))

(declare-fun m!334423 () Bool)

(assert (=> b!266676 m!334423))

(assert (=> b!266676 m!334409))

(declare-fun m!334425 () Bool)

(assert (=> b!266676 m!334425))

(declare-fun m!334427 () Bool)

(assert (=> b!266676 m!334427))

(assert (=> b!266676 m!334419))

(declare-fun m!334429 () Bool)

(assert (=> b!266676 m!334429))

(assert (=> b!266676 m!334427))

(declare-fun m!334431 () Bool)

(assert (=> b!266676 m!334431))

(assert (=> b!266676 m!334425))

(declare-fun m!334433 () Bool)

(assert (=> b!266676 m!334433))

(declare-fun m!334435 () Bool)

(assert (=> start!28602 m!334435))

(declare-fun m!334437 () Bool)

(assert (=> b!266672 m!334437))

(check-sat (not start!28602) b_and!21025 (not b!266672) (not b!266673) (not b!266669) (not b_next!9913) b_and!21023 (not b_next!9923) (not b!266681) b_and!21027 b_and!21029 (not b!266679) (not b!266685) (not b_next!9921) (not b_next!9915) (not b!266688) (not b!266687) b_and!21031 (not b!266670) b_and!21021 (not b_next!9919) (not b_next!9917) (not b!266677) (not b!266680) (not b!266676) (not b!266684) (not b!266675) (not b!266691) (not b!266686) (not b!266692) (not b!266682))
(check-sat b_and!21025 b_and!21031 (not b_next!9913) b_and!21023 (not b_next!9923) b_and!21027 b_and!21029 (not b_next!9921) (not b_next!9915) b_and!21021 (not b_next!9919) (not b_next!9917))
