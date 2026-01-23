; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137834 () Bool)

(assert start!137834)

(declare-fun b!1471548 () Bool)

(declare-fun b_free!37239 () Bool)

(declare-fun b_next!37943 () Bool)

(assert (=> b!1471548 (= b_free!37239 (not b_next!37943))))

(declare-fun tp!415522 () Bool)

(declare-fun b_and!101009 () Bool)

(assert (=> b!1471548 (= tp!415522 b_and!101009)))

(declare-fun b_free!37241 () Bool)

(declare-fun b_next!37945 () Bool)

(assert (=> b!1471548 (= b_free!37241 (not b_next!37945))))

(declare-fun tp!415526 () Bool)

(declare-fun b_and!101011 () Bool)

(assert (=> b!1471548 (= tp!415526 b_and!101011)))

(declare-fun b!1471540 () Bool)

(declare-fun b_free!37243 () Bool)

(declare-fun b_next!37947 () Bool)

(assert (=> b!1471540 (= b_free!37243 (not b_next!37947))))

(declare-fun tp!415530 () Bool)

(declare-fun b_and!101013 () Bool)

(assert (=> b!1471540 (= tp!415530 b_and!101013)))

(declare-fun b_free!37245 () Bool)

(declare-fun b_next!37949 () Bool)

(assert (=> b!1471540 (= b_free!37245 (not b_next!37949))))

(declare-fun tp!415521 () Bool)

(declare-fun b_and!101015 () Bool)

(assert (=> b!1471540 (= tp!415521 b_and!101015)))

(declare-fun b!1471536 () Bool)

(declare-fun b_free!37247 () Bool)

(declare-fun b_next!37951 () Bool)

(assert (=> b!1471536 (= b_free!37247 (not b_next!37951))))

(declare-fun tp!415523 () Bool)

(declare-fun b_and!101017 () Bool)

(assert (=> b!1471536 (= tp!415523 b_and!101017)))

(declare-fun b_free!37249 () Bool)

(declare-fun b_next!37953 () Bool)

(assert (=> b!1471536 (= b_free!37249 (not b_next!37953))))

(declare-fun tp!415534 () Bool)

(declare-fun b_and!101019 () Bool)

(assert (=> b!1471536 (= tp!415534 b_and!101019)))

(declare-fun b!1471530 () Bool)

(declare-fun res!665182 () Bool)

(declare-fun e!939745 () Bool)

(assert (=> b!1471530 (=> (not res!665182) (not e!939745))))

(declare-datatypes ((List!15503 0))(
  ( (Nil!15437) (Cons!15437 (h!20838 (_ BitVec 16)) (t!135756 List!15503)) )
))
(declare-datatypes ((C!8296 0))(
  ( (C!8297 (val!4718 Int)) )
))
(declare-datatypes ((List!15504 0))(
  ( (Nil!15438) (Cons!15438 (h!20839 C!8296) (t!135757 List!15504)) )
))
(declare-datatypes ((Regex!4059 0))(
  ( (ElementMatch!4059 (c!242288 C!8296)) (Concat!6894 (regOne!8630 Regex!4059) (regTwo!8630 Regex!4059)) (EmptyExpr!4059) (Star!4059 (reg!4388 Regex!4059)) (EmptyLang!4059) (Union!4059 (regOne!8631 Regex!4059) (regTwo!8631 Regex!4059)) )
))
(declare-datatypes ((TokenValue!2835 0))(
  ( (FloatLiteralValue!5670 (text!20290 List!15503)) (TokenValueExt!2834 (__x!9460 Int)) (Broken!14175 (value!87854 List!15503)) (Object!2900) (End!2835) (Def!2835) (Underscore!2835) (Match!2835) (Else!2835) (Error!2835) (Case!2835) (If!2835) (Extends!2835) (Abstract!2835) (Class!2835) (Val!2835) (DelimiterValue!5670 (del!2895 List!15503)) (KeywordValue!2841 (value!87855 List!15503)) (CommentValue!5670 (value!87856 List!15503)) (WhitespaceValue!5670 (value!87857 List!15503)) (IndentationValue!2835 (value!87858 List!15503)) (String!18430) (Int32!2835) (Broken!14176 (value!87859 List!15503)) (Boolean!2836) (Unit!25124) (OperatorValue!2838 (op!2895 List!15503)) (IdentifierValue!5670 (value!87860 List!15503)) (IdentifierValue!5671 (value!87861 List!15503)) (WhitespaceValue!5671 (value!87862 List!15503)) (True!5670) (False!5670) (Broken!14177 (value!87863 List!15503)) (Broken!14178 (value!87864 List!15503)) (True!5671) (RightBrace!2835) (RightBracket!2835) (Colon!2835) (Null!2835) (Comma!2835) (LeftBracket!2835) (False!5671) (LeftBrace!2835) (ImaginaryLiteralValue!2835 (text!20291 List!15503)) (StringLiteralValue!8505 (value!87865 List!15503)) (EOFValue!2835 (value!87866 List!15503)) (IdentValue!2835 (value!87867 List!15503)) (DelimiterValue!5671 (value!87868 List!15503)) (DedentValue!2835 (value!87869 List!15503)) (NewLineValue!2835 (value!87870 List!15503)) (IntegerValue!8505 (value!87871 (_ BitVec 32)) (text!20292 List!15503)) (IntegerValue!8506 (value!87872 Int) (text!20293 List!15503)) (Times!2835) (Or!2835) (Equal!2835) (Minus!2835) (Broken!14179 (value!87873 List!15503)) (And!2835) (Div!2835) (LessEqual!2835) (Mod!2835) (Concat!6895) (Not!2835) (Plus!2835) (SpaceValue!2835 (value!87874 List!15503)) (IntegerValue!8507 (value!87875 Int) (text!20294 List!15503)) (StringLiteralValue!8506 (text!20295 List!15503)) (FloatLiteralValue!5671 (text!20296 List!15503)) (BytesLiteralValue!2835 (value!87876 List!15503)) (CommentValue!5671 (value!87877 List!15503)) (StringLiteralValue!8507 (value!87878 List!15503)) (ErrorTokenValue!2835 (msg!2896 List!15503)) )
))
(declare-datatypes ((IArray!10535 0))(
  ( (IArray!10536 (innerList!5325 List!15504)) )
))
(declare-datatypes ((Conc!5265 0))(
  ( (Node!5265 (left!13060 Conc!5265) (right!13390 Conc!5265) (csize!10760 Int) (cheight!5476 Int)) (Leaf!7839 (xs!8020 IArray!10535) (csize!10761 Int)) (Empty!5265) )
))
(declare-datatypes ((BalanceConc!10470 0))(
  ( (BalanceConc!10471 (c!242289 Conc!5265)) )
))
(declare-datatypes ((TokenValueInjection!5330 0))(
  ( (TokenValueInjection!5331 (toValue!4072 Int) (toChars!3931 Int)) )
))
(declare-datatypes ((String!18431 0))(
  ( (String!18432 (value!87879 String)) )
))
(declare-datatypes ((Rule!5290 0))(
  ( (Rule!5291 (regex!2745 Regex!4059) (tag!3009 String!18431) (isSeparator!2745 Bool) (transformation!2745 TokenValueInjection!5330)) )
))
(declare-datatypes ((List!15505 0))(
  ( (Nil!15439) (Cons!15439 (h!20840 Rule!5290) (t!135758 List!15505)) )
))
(declare-fun rules!4290 () List!15505)

(declare-fun isEmpty!9640 (List!15505) Bool)

(assert (=> b!1471530 (= res!665182 (not (isEmpty!9640 rules!4290)))))

(declare-fun b!1471531 () Bool)

(declare-fun res!665189 () Bool)

(assert (=> b!1471531 (=> (not res!665189) (not e!939745))))

(declare-datatypes ((Token!5152 0))(
  ( (Token!5153 (value!87880 TokenValue!2835) (rule!4522 Rule!5290) (size!12540 Int) (originalCharacters!3607 List!15504)) )
))
(declare-datatypes ((List!15506 0))(
  ( (Nil!15440) (Cons!15440 (h!20841 Token!5152) (t!135759 List!15506)) )
))
(declare-fun l2!3105 () List!15506)

(declare-datatypes ((LexerInterface!2401 0))(
  ( (LexerInterfaceExt!2398 (__x!9461 Int)) (Lexer!2399) )
))
(declare-fun thiss!27374 () LexerInterface!2401)

(declare-fun tokensListTwoByTwoPredicateSeparableList!261 (LexerInterface!2401 List!15506 List!15505) Bool)

(assert (=> b!1471531 (= res!665189 (tokensListTwoByTwoPredicateSeparableList!261 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1471532 () Bool)

(declare-fun res!665181 () Bool)

(assert (=> b!1471532 (=> (not res!665181) (not e!939745))))

(declare-fun l1!3136 () List!15506)

(assert (=> b!1471532 (= res!665181 (tokensListTwoByTwoPredicateSeparableList!261 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1471533 () Bool)

(declare-fun res!665184 () Bool)

(assert (=> b!1471533 (=> (not res!665184) (not e!939745))))

(declare-fun isEmpty!9641 (List!15506) Bool)

(assert (=> b!1471533 (= res!665184 (not (isEmpty!9641 l1!3136)))))

(declare-fun tp!415529 () Bool)

(declare-fun e!939742 () Bool)

(declare-fun b!1471534 () Bool)

(declare-fun e!939744 () Bool)

(declare-fun inv!20646 (Token!5152) Bool)

(assert (=> b!1471534 (= e!939744 (and (inv!20646 (h!20841 l2!3105)) e!939742 tp!415529))))

(declare-fun b!1471535 () Bool)

(declare-fun tp!415532 () Bool)

(declare-fun e!939733 () Bool)

(declare-fun e!939740 () Bool)

(assert (=> b!1471535 (= e!939733 (and (inv!20646 (h!20841 l1!3136)) e!939740 tp!415532))))

(declare-fun e!939739 () Bool)

(assert (=> b!1471536 (= e!939739 (and tp!415523 tp!415534))))

(declare-fun b!1471537 () Bool)

(declare-fun res!665185 () Bool)

(assert (=> b!1471537 (=> (not res!665185) (not e!939745))))

(declare-fun rulesProduceEachTokenIndividuallyList!768 (LexerInterface!2401 List!15505 List!15506) Bool)

(assert (=> b!1471537 (= res!665185 (rulesProduceEachTokenIndividuallyList!768 thiss!27374 rules!4290 l2!3105))))

(declare-fun tp!415528 () Bool)

(declare-fun e!939746 () Bool)

(declare-fun b!1471539 () Bool)

(declare-fun inv!20643 (String!18431) Bool)

(declare-fun inv!20647 (TokenValueInjection!5330) Bool)

(assert (=> b!1471539 (= e!939746 (and tp!415528 (inv!20643 (tag!3009 (rule!4522 (h!20841 l2!3105)))) (inv!20647 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) e!939739))))

(declare-fun e!939737 () Bool)

(assert (=> b!1471540 (= e!939737 (and tp!415530 tp!415521))))

(declare-fun e!939731 () Bool)

(declare-fun b!1471541 () Bool)

(declare-fun tp!415533 () Bool)

(declare-fun inv!21 (TokenValue!2835) Bool)

(assert (=> b!1471541 (= e!939740 (and (inv!21 (value!87880 (h!20841 l1!3136))) e!939731 tp!415533))))

(declare-fun b!1471542 () Bool)

(assert (=> b!1471542 (= e!939745 (not (not (= l2!3105 Nil!15440))))))

(declare-fun lt!511479 () Token!5152)

(declare-fun rulesProduceIndividualToken!1260 (LexerInterface!2401 List!15505 Token!5152) Bool)

(assert (=> b!1471542 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 lt!511479)))

(declare-datatypes ((Unit!25125 0))(
  ( (Unit!25126) )
))
(declare-fun lt!511478 () Unit!25125)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 (LexerInterface!2401 List!15505 List!15506 Token!5152) Unit!25125)

(assert (=> b!1471542 (= lt!511478 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 thiss!27374 rules!4290 l1!3136 lt!511479))))

(declare-fun last!303 (List!15506) Token!5152)

(assert (=> b!1471542 (= lt!511479 (last!303 l1!3136))))

(declare-fun b!1471543 () Bool)

(declare-fun e!939732 () Bool)

(declare-fun tp!415524 () Bool)

(assert (=> b!1471543 (= e!939731 (and tp!415524 (inv!20643 (tag!3009 (rule!4522 (h!20841 l1!3136)))) (inv!20647 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) e!939732))))

(declare-fun e!939736 () Bool)

(declare-fun b!1471544 () Bool)

(declare-fun tp!415525 () Bool)

(assert (=> b!1471544 (= e!939736 (and tp!415525 (inv!20643 (tag!3009 (h!20840 rules!4290))) (inv!20647 (transformation!2745 (h!20840 rules!4290))) e!939737))))

(declare-fun b!1471545 () Bool)

(declare-fun tp!415531 () Bool)

(assert (=> b!1471545 (= e!939742 (and (inv!21 (value!87880 (h!20841 l2!3105))) e!939746 tp!415531))))

(declare-fun b!1471546 () Bool)

(declare-fun res!665186 () Bool)

(assert (=> b!1471546 (=> (not res!665186) (not e!939745))))

(assert (=> b!1471546 (= res!665186 (rulesProduceEachTokenIndividuallyList!768 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1471547 () Bool)

(declare-fun e!939735 () Bool)

(declare-fun tp!415527 () Bool)

(assert (=> b!1471547 (= e!939735 (and e!939736 tp!415527))))

(assert (=> b!1471548 (= e!939732 (and tp!415522 tp!415526))))

(declare-fun b!1471549 () Bool)

(declare-fun res!665188 () Bool)

(assert (=> b!1471549 (=> (not res!665188) (not e!939745))))

(declare-fun rulesInvariant!2190 (LexerInterface!2401 List!15505) Bool)

(assert (=> b!1471549 (= res!665188 (rulesInvariant!2190 thiss!27374 rules!4290))))

(declare-fun res!665183 () Bool)

(assert (=> start!137834 (=> (not res!665183) (not e!939745))))

(get-info :version)

(assert (=> start!137834 (= res!665183 ((_ is Lexer!2399) thiss!27374))))

(assert (=> start!137834 e!939745))

(assert (=> start!137834 true))

(assert (=> start!137834 e!939735))

(assert (=> start!137834 e!939733))

(assert (=> start!137834 e!939744))

(declare-fun b!1471538 () Bool)

(declare-fun res!665187 () Bool)

(assert (=> b!1471538 (=> (not res!665187) (not e!939745))))

(assert (=> b!1471538 (= res!665187 (not (isEmpty!9641 l2!3105)))))

(assert (= (and start!137834 res!665183) b!1471530))

(assert (= (and b!1471530 res!665182) b!1471549))

(assert (= (and b!1471549 res!665188) b!1471546))

(assert (= (and b!1471546 res!665186) b!1471537))

(assert (= (and b!1471537 res!665185) b!1471532))

(assert (= (and b!1471532 res!665181) b!1471531))

(assert (= (and b!1471531 res!665189) b!1471533))

(assert (= (and b!1471533 res!665184) b!1471538))

(assert (= (and b!1471538 res!665187) b!1471542))

(assert (= b!1471544 b!1471540))

(assert (= b!1471547 b!1471544))

(assert (= (and start!137834 ((_ is Cons!15439) rules!4290)) b!1471547))

(assert (= b!1471543 b!1471548))

(assert (= b!1471541 b!1471543))

(assert (= b!1471535 b!1471541))

(assert (= (and start!137834 ((_ is Cons!15440) l1!3136)) b!1471535))

(assert (= b!1471539 b!1471536))

(assert (= b!1471545 b!1471539))

(assert (= b!1471534 b!1471545))

(assert (= (and start!137834 ((_ is Cons!15440) l2!3105)) b!1471534))

(declare-fun m!1715643 () Bool)

(assert (=> b!1471543 m!1715643))

(declare-fun m!1715645 () Bool)

(assert (=> b!1471543 m!1715645))

(declare-fun m!1715647 () Bool)

(assert (=> b!1471534 m!1715647))

(declare-fun m!1715649 () Bool)

(assert (=> b!1471532 m!1715649))

(declare-fun m!1715651 () Bool)

(assert (=> b!1471537 m!1715651))

(declare-fun m!1715653 () Bool)

(assert (=> b!1471538 m!1715653))

(declare-fun m!1715655 () Bool)

(assert (=> b!1471533 m!1715655))

(declare-fun m!1715657 () Bool)

(assert (=> b!1471531 m!1715657))

(declare-fun m!1715659 () Bool)

(assert (=> b!1471541 m!1715659))

(declare-fun m!1715661 () Bool)

(assert (=> b!1471546 m!1715661))

(declare-fun m!1715663 () Bool)

(assert (=> b!1471539 m!1715663))

(declare-fun m!1715665 () Bool)

(assert (=> b!1471539 m!1715665))

(declare-fun m!1715667 () Bool)

(assert (=> b!1471542 m!1715667))

(declare-fun m!1715669 () Bool)

(assert (=> b!1471542 m!1715669))

(declare-fun m!1715671 () Bool)

(assert (=> b!1471542 m!1715671))

(declare-fun m!1715673 () Bool)

(assert (=> b!1471549 m!1715673))

(declare-fun m!1715675 () Bool)

(assert (=> b!1471545 m!1715675))

(declare-fun m!1715677 () Bool)

(assert (=> b!1471544 m!1715677))

(declare-fun m!1715679 () Bool)

(assert (=> b!1471544 m!1715679))

(declare-fun m!1715681 () Bool)

(assert (=> b!1471530 m!1715681))

(declare-fun m!1715683 () Bool)

(assert (=> b!1471535 m!1715683))

(check-sat b_and!101013 (not b!1471539) (not b_next!37945) (not b!1471541) b_and!101015 (not b!1471549) (not b!1471545) b_and!101011 (not b!1471546) b_and!101019 (not b!1471537) (not b!1471534) (not b!1471547) (not b!1471543) (not b!1471544) (not b!1471542) b_and!101017 (not b_next!37943) (not b!1471530) (not b_next!37953) b_and!101009 (not b!1471533) (not b!1471538) (not b!1471531) (not b!1471535) (not b_next!37949) (not b_next!37947) (not b_next!37951) (not b!1471532))
(check-sat b_and!101013 (not b_next!37945) (not b_next!37953) b_and!101009 b_and!101015 b_and!101011 b_and!101019 (not b_next!37951) b_and!101017 (not b_next!37943) (not b_next!37949) (not b_next!37947))
(get-model)

(declare-fun d!431536 () Bool)

(declare-fun c!242301 () Bool)

(assert (=> d!431536 (= c!242301 ((_ is IntegerValue!8505) (value!87880 (h!20841 l2!3105))))))

(declare-fun e!939764 () Bool)

(assert (=> d!431536 (= (inv!21 (value!87880 (h!20841 l2!3105))) e!939764)))

(declare-fun b!1471575 () Bool)

(declare-fun e!939763 () Bool)

(assert (=> b!1471575 (= e!939764 e!939763)))

(declare-fun c!242300 () Bool)

(assert (=> b!1471575 (= c!242300 ((_ is IntegerValue!8506) (value!87880 (h!20841 l2!3105))))))

(declare-fun b!1471576 () Bool)

(declare-fun inv!16 (TokenValue!2835) Bool)

(assert (=> b!1471576 (= e!939764 (inv!16 (value!87880 (h!20841 l2!3105))))))

(declare-fun b!1471577 () Bool)

(declare-fun res!665199 () Bool)

(declare-fun e!939762 () Bool)

(assert (=> b!1471577 (=> res!665199 e!939762)))

(assert (=> b!1471577 (= res!665199 (not ((_ is IntegerValue!8507) (value!87880 (h!20841 l2!3105)))))))

(assert (=> b!1471577 (= e!939763 e!939762)))

(declare-fun b!1471578 () Bool)

(declare-fun inv!15 (TokenValue!2835) Bool)

(assert (=> b!1471578 (= e!939762 (inv!15 (value!87880 (h!20841 l2!3105))))))

(declare-fun b!1471579 () Bool)

(declare-fun inv!17 (TokenValue!2835) Bool)

(assert (=> b!1471579 (= e!939763 (inv!17 (value!87880 (h!20841 l2!3105))))))

(assert (= (and d!431536 c!242301) b!1471576))

(assert (= (and d!431536 (not c!242301)) b!1471575))

(assert (= (and b!1471575 c!242300) b!1471579))

(assert (= (and b!1471575 (not c!242300)) b!1471577))

(assert (= (and b!1471577 (not res!665199)) b!1471578))

(declare-fun m!1715691 () Bool)

(assert (=> b!1471576 m!1715691))

(declare-fun m!1715693 () Bool)

(assert (=> b!1471578 m!1715693))

(declare-fun m!1715695 () Bool)

(assert (=> b!1471579 m!1715695))

(assert (=> b!1471545 d!431536))

(declare-fun d!431540 () Bool)

(declare-fun res!665208 () Bool)

(declare-fun e!939769 () Bool)

(assert (=> d!431540 (=> (not res!665208) (not e!939769))))

(declare-fun isEmpty!9642 (List!15504) Bool)

(assert (=> d!431540 (= res!665208 (not (isEmpty!9642 (originalCharacters!3607 (h!20841 l2!3105)))))))

(assert (=> d!431540 (= (inv!20646 (h!20841 l2!3105)) e!939769)))

(declare-fun b!1471588 () Bool)

(declare-fun res!665209 () Bool)

(assert (=> b!1471588 (=> (not res!665209) (not e!939769))))

(declare-fun list!6167 (BalanceConc!10470) List!15504)

(declare-fun dynLambda!7007 (Int TokenValue!2835) BalanceConc!10470)

(assert (=> b!1471588 (= res!665209 (= (originalCharacters!3607 (h!20841 l2!3105)) (list!6167 (dynLambda!7007 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (value!87880 (h!20841 l2!3105))))))))

(declare-fun b!1471589 () Bool)

(declare-fun size!12541 (List!15504) Int)

(assert (=> b!1471589 (= e!939769 (= (size!12540 (h!20841 l2!3105)) (size!12541 (originalCharacters!3607 (h!20841 l2!3105)))))))

(assert (= (and d!431540 res!665208) b!1471588))

(assert (= (and b!1471588 res!665209) b!1471589))

(declare-fun b_lambda!45951 () Bool)

(assert (=> (not b_lambda!45951) (not b!1471588)))

(declare-fun tb!83417 () Bool)

(declare-fun t!135761 () Bool)

(assert (=> (and b!1471548 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105))))) t!135761) tb!83417))

(declare-fun b!1471596 () Bool)

(declare-fun e!939773 () Bool)

(declare-fun tp!415537 () Bool)

(declare-fun inv!20648 (Conc!5265) Bool)

(assert (=> b!1471596 (= e!939773 (and (inv!20648 (c!242289 (dynLambda!7007 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (value!87880 (h!20841 l2!3105))))) tp!415537))))

(declare-fun result!100262 () Bool)

(declare-fun inv!20649 (BalanceConc!10470) Bool)

(assert (=> tb!83417 (= result!100262 (and (inv!20649 (dynLambda!7007 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (value!87880 (h!20841 l2!3105)))) e!939773))))

(assert (= tb!83417 b!1471596))

(declare-fun m!1715697 () Bool)

(assert (=> b!1471596 m!1715697))

(declare-fun m!1715699 () Bool)

(assert (=> tb!83417 m!1715699))

(assert (=> b!1471588 t!135761))

(declare-fun b_and!101021 () Bool)

(assert (= b_and!101011 (and (=> t!135761 result!100262) b_and!101021)))

(declare-fun t!135763 () Bool)

(declare-fun tb!83419 () Bool)

(assert (=> (and b!1471540 (= (toChars!3931 (transformation!2745 (h!20840 rules!4290))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105))))) t!135763) tb!83419))

(declare-fun result!100266 () Bool)

(assert (= result!100266 result!100262))

(assert (=> b!1471588 t!135763))

(declare-fun b_and!101023 () Bool)

(assert (= b_and!101015 (and (=> t!135763 result!100266) b_and!101023)))

(declare-fun t!135765 () Bool)

(declare-fun tb!83421 () Bool)

(assert (=> (and b!1471536 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105))))) t!135765) tb!83421))

(declare-fun result!100268 () Bool)

(assert (= result!100268 result!100262))

(assert (=> b!1471588 t!135765))

(declare-fun b_and!101025 () Bool)

(assert (= b_and!101019 (and (=> t!135765 result!100268) b_and!101025)))

(declare-fun m!1715701 () Bool)

(assert (=> d!431540 m!1715701))

(declare-fun m!1715703 () Bool)

(assert (=> b!1471588 m!1715703))

(assert (=> b!1471588 m!1715703))

(declare-fun m!1715705 () Bool)

(assert (=> b!1471588 m!1715705))

(declare-fun m!1715707 () Bool)

(assert (=> b!1471589 m!1715707))

(assert (=> b!1471534 d!431540))

(declare-fun d!431542 () Bool)

(declare-fun res!665212 () Bool)

(declare-fun e!939776 () Bool)

(assert (=> d!431542 (=> (not res!665212) (not e!939776))))

(assert (=> d!431542 (= res!665212 (not (isEmpty!9642 (originalCharacters!3607 (h!20841 l1!3136)))))))

(assert (=> d!431542 (= (inv!20646 (h!20841 l1!3136)) e!939776)))

(declare-fun b!1471601 () Bool)

(declare-fun res!665213 () Bool)

(assert (=> b!1471601 (=> (not res!665213) (not e!939776))))

(assert (=> b!1471601 (= res!665213 (= (originalCharacters!3607 (h!20841 l1!3136)) (list!6167 (dynLambda!7007 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (value!87880 (h!20841 l1!3136))))))))

(declare-fun b!1471602 () Bool)

(assert (=> b!1471602 (= e!939776 (= (size!12540 (h!20841 l1!3136)) (size!12541 (originalCharacters!3607 (h!20841 l1!3136)))))))

(assert (= (and d!431542 res!665212) b!1471601))

(assert (= (and b!1471601 res!665213) b!1471602))

(declare-fun b_lambda!45955 () Bool)

(assert (=> (not b_lambda!45955) (not b!1471601)))

(declare-fun t!135769 () Bool)

(declare-fun tb!83425 () Bool)

(assert (=> (and b!1471548 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136))))) t!135769) tb!83425))

(declare-fun b!1471603 () Bool)

(declare-fun e!939777 () Bool)

(declare-fun tp!415540 () Bool)

(assert (=> b!1471603 (= e!939777 (and (inv!20648 (c!242289 (dynLambda!7007 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (value!87880 (h!20841 l1!3136))))) tp!415540))))

(declare-fun result!100274 () Bool)

(assert (=> tb!83425 (= result!100274 (and (inv!20649 (dynLambda!7007 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (value!87880 (h!20841 l1!3136)))) e!939777))))

(assert (= tb!83425 b!1471603))

(declare-fun m!1715709 () Bool)

(assert (=> b!1471603 m!1715709))

(declare-fun m!1715711 () Bool)

(assert (=> tb!83425 m!1715711))

(assert (=> b!1471601 t!135769))

(declare-fun b_and!101027 () Bool)

(assert (= b_and!101021 (and (=> t!135769 result!100274) b_and!101027)))

(declare-fun t!135771 () Bool)

(declare-fun tb!83427 () Bool)

(assert (=> (and b!1471540 (= (toChars!3931 (transformation!2745 (h!20840 rules!4290))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136))))) t!135771) tb!83427))

(declare-fun result!100276 () Bool)

(assert (= result!100276 result!100274))

(assert (=> b!1471601 t!135771))

(declare-fun b_and!101029 () Bool)

(assert (= b_and!101023 (and (=> t!135771 result!100276) b_and!101029)))

(declare-fun tb!83429 () Bool)

(declare-fun t!135773 () Bool)

(assert (=> (and b!1471536 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136))))) t!135773) tb!83429))

(declare-fun result!100278 () Bool)

(assert (= result!100278 result!100274))

(assert (=> b!1471601 t!135773))

(declare-fun b_and!101031 () Bool)

(assert (= b_and!101025 (and (=> t!135773 result!100278) b_and!101031)))

(declare-fun m!1715713 () Bool)

(assert (=> d!431542 m!1715713))

(declare-fun m!1715715 () Bool)

(assert (=> b!1471601 m!1715715))

(assert (=> b!1471601 m!1715715))

(declare-fun m!1715717 () Bool)

(assert (=> b!1471601 m!1715717))

(declare-fun m!1715719 () Bool)

(assert (=> b!1471602 m!1715719))

(assert (=> b!1471535 d!431542))

(declare-fun b!1471625 () Bool)

(declare-fun e!939797 () Bool)

(assert (=> b!1471625 (= e!939797 true)))

(declare-fun b!1471624 () Bool)

(declare-fun e!939796 () Bool)

(assert (=> b!1471624 (= e!939796 e!939797)))

(declare-fun b!1471623 () Bool)

(declare-fun e!939795 () Bool)

(assert (=> b!1471623 (= e!939795 e!939796)))

(declare-fun d!431544 () Bool)

(assert (=> d!431544 e!939795))

(assert (= b!1471624 b!1471625))

(assert (= b!1471623 b!1471624))

(assert (= (and d!431544 ((_ is Cons!15439) rules!4290)) b!1471623))

(declare-fun order!9271 () Int)

(declare-fun lambda!63518 () Int)

(declare-fun order!9273 () Int)

(declare-fun dynLambda!7012 (Int Int) Int)

(declare-fun dynLambda!7013 (Int Int) Int)

(assert (=> b!1471625 (< (dynLambda!7012 order!9271 (toValue!4072 (transformation!2745 (h!20840 rules!4290)))) (dynLambda!7013 order!9273 lambda!63518))))

(declare-fun order!9275 () Int)

(declare-fun dynLambda!7014 (Int Int) Int)

(assert (=> b!1471625 (< (dynLambda!7014 order!9275 (toChars!3931 (transformation!2745 (h!20840 rules!4290)))) (dynLambda!7013 order!9273 lambda!63518))))

(assert (=> d!431544 true))

(declare-fun lt!511484 () Bool)

(declare-fun forall!3770 (List!15506 Int) Bool)

(assert (=> d!431544 (= lt!511484 (forall!3770 l1!3136 lambda!63518))))

(declare-fun e!939788 () Bool)

(assert (=> d!431544 (= lt!511484 e!939788)))

(declare-fun res!665223 () Bool)

(assert (=> d!431544 (=> res!665223 e!939788)))

(assert (=> d!431544 (= res!665223 (not ((_ is Cons!15440) l1!3136)))))

(assert (=> d!431544 (not (isEmpty!9640 rules!4290))))

(assert (=> d!431544 (= (rulesProduceEachTokenIndividuallyList!768 thiss!27374 rules!4290 l1!3136) lt!511484)))

(declare-fun b!1471613 () Bool)

(declare-fun e!939787 () Bool)

(assert (=> b!1471613 (= e!939788 e!939787)))

(declare-fun res!665222 () Bool)

(assert (=> b!1471613 (=> (not res!665222) (not e!939787))))

(assert (=> b!1471613 (= res!665222 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 l1!3136)))))

(declare-fun b!1471614 () Bool)

(assert (=> b!1471614 (= e!939787 (rulesProduceEachTokenIndividuallyList!768 thiss!27374 rules!4290 (t!135759 l1!3136)))))

(assert (= (and d!431544 (not res!665223)) b!1471613))

(assert (= (and b!1471613 res!665222) b!1471614))

(declare-fun m!1715733 () Bool)

(assert (=> d!431544 m!1715733))

(assert (=> d!431544 m!1715681))

(declare-fun m!1715735 () Bool)

(assert (=> b!1471613 m!1715735))

(declare-fun m!1715737 () Bool)

(assert (=> b!1471614 m!1715737))

(assert (=> b!1471546 d!431544))

(declare-fun bs!345149 () Bool)

(declare-fun d!431548 () Bool)

(assert (= bs!345149 (and d!431548 d!431544)))

(declare-fun lambda!63521 () Int)

(assert (=> bs!345149 (= lambda!63521 lambda!63518)))

(declare-fun b!1471632 () Bool)

(declare-fun e!939802 () Bool)

(assert (=> b!1471632 (= e!939802 true)))

(declare-fun b!1471631 () Bool)

(declare-fun e!939801 () Bool)

(assert (=> b!1471631 (= e!939801 e!939802)))

(declare-fun b!1471630 () Bool)

(declare-fun e!939800 () Bool)

(assert (=> b!1471630 (= e!939800 e!939801)))

(assert (=> d!431548 e!939800))

(assert (= b!1471631 b!1471632))

(assert (= b!1471630 b!1471631))

(assert (= (and d!431548 ((_ is Cons!15439) rules!4290)) b!1471630))

(assert (=> b!1471632 (< (dynLambda!7012 order!9271 (toValue!4072 (transformation!2745 (h!20840 rules!4290)))) (dynLambda!7013 order!9273 lambda!63521))))

(assert (=> b!1471632 (< (dynLambda!7014 order!9275 (toChars!3931 (transformation!2745 (h!20840 rules!4290)))) (dynLambda!7013 order!9273 lambda!63521))))

(assert (=> d!431548 true))

(declare-fun lt!511485 () Bool)

(assert (=> d!431548 (= lt!511485 (forall!3770 l2!3105 lambda!63521))))

(declare-fun e!939799 () Bool)

(assert (=> d!431548 (= lt!511485 e!939799)))

(declare-fun res!665225 () Bool)

(assert (=> d!431548 (=> res!665225 e!939799)))

(assert (=> d!431548 (= res!665225 (not ((_ is Cons!15440) l2!3105)))))

(assert (=> d!431548 (not (isEmpty!9640 rules!4290))))

(assert (=> d!431548 (= (rulesProduceEachTokenIndividuallyList!768 thiss!27374 rules!4290 l2!3105) lt!511485)))

(declare-fun b!1471628 () Bool)

(declare-fun e!939798 () Bool)

(assert (=> b!1471628 (= e!939799 e!939798)))

(declare-fun res!665224 () Bool)

(assert (=> b!1471628 (=> (not res!665224) (not e!939798))))

(assert (=> b!1471628 (= res!665224 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 l2!3105)))))

(declare-fun b!1471629 () Bool)

(assert (=> b!1471629 (= e!939798 (rulesProduceEachTokenIndividuallyList!768 thiss!27374 rules!4290 (t!135759 l2!3105)))))

(assert (= (and d!431548 (not res!665225)) b!1471628))

(assert (= (and b!1471628 res!665224) b!1471629))

(declare-fun m!1715739 () Bool)

(assert (=> d!431548 m!1715739))

(assert (=> d!431548 m!1715681))

(declare-fun m!1715741 () Bool)

(assert (=> b!1471628 m!1715741))

(declare-fun m!1715743 () Bool)

(assert (=> b!1471629 m!1715743))

(assert (=> b!1471537 d!431548))

(declare-fun d!431550 () Bool)

(declare-fun res!665230 () Bool)

(declare-fun e!939813 () Bool)

(assert (=> d!431550 (=> (not res!665230) (not e!939813))))

(declare-fun rulesValid!1001 (LexerInterface!2401 List!15505) Bool)

(assert (=> d!431550 (= res!665230 (rulesValid!1001 thiss!27374 rules!4290))))

(assert (=> d!431550 (= (rulesInvariant!2190 thiss!27374 rules!4290) e!939813)))

(declare-fun b!1471645 () Bool)

(declare-datatypes ((List!15508 0))(
  ( (Nil!15442) (Cons!15442 (h!20843 String!18431) (t!135817 List!15508)) )
))
(declare-fun noDuplicateTag!1001 (LexerInterface!2401 List!15505 List!15508) Bool)

(assert (=> b!1471645 (= e!939813 (noDuplicateTag!1001 thiss!27374 rules!4290 Nil!15442))))

(assert (= (and d!431550 res!665230) b!1471645))

(declare-fun m!1715745 () Bool)

(assert (=> d!431550 m!1715745))

(declare-fun m!1715747 () Bool)

(assert (=> b!1471645 m!1715747))

(assert (=> b!1471549 d!431550))

(declare-fun d!431552 () Bool)

(assert (=> d!431552 (= (isEmpty!9641 l2!3105) ((_ is Nil!15440) l2!3105))))

(assert (=> b!1471538 d!431552))

(declare-fun d!431554 () Bool)

(assert (=> d!431554 (= (inv!20643 (tag!3009 (rule!4522 (h!20841 l2!3105)))) (= (mod (str.len (value!87879 (tag!3009 (rule!4522 (h!20841 l2!3105))))) 2) 0))))

(assert (=> b!1471539 d!431554))

(declare-fun d!431558 () Bool)

(declare-fun res!665233 () Bool)

(declare-fun e!939819 () Bool)

(assert (=> d!431558 (=> (not res!665233) (not e!939819))))

(declare-fun semiInverseModEq!1027 (Int Int) Bool)

(assert (=> d!431558 (= res!665233 (semiInverseModEq!1027 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (toValue!4072 (transformation!2745 (rule!4522 (h!20841 l2!3105))))))))

(assert (=> d!431558 (= (inv!20647 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) e!939819)))

(declare-fun b!1471653 () Bool)

(declare-fun equivClasses!986 (Int Int) Bool)

(assert (=> b!1471653 (= e!939819 (equivClasses!986 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (toValue!4072 (transformation!2745 (rule!4522 (h!20841 l2!3105))))))))

(assert (= (and d!431558 res!665233) b!1471653))

(declare-fun m!1715755 () Bool)

(assert (=> d!431558 m!1715755))

(declare-fun m!1715757 () Bool)

(assert (=> b!1471653 m!1715757))

(assert (=> b!1471539 d!431558))

(declare-fun d!431564 () Bool)

(declare-fun c!242303 () Bool)

(assert (=> d!431564 (= c!242303 ((_ is IntegerValue!8505) (value!87880 (h!20841 l1!3136))))))

(declare-fun e!939822 () Bool)

(assert (=> d!431564 (= (inv!21 (value!87880 (h!20841 l1!3136))) e!939822)))

(declare-fun b!1471654 () Bool)

(declare-fun e!939821 () Bool)

(assert (=> b!1471654 (= e!939822 e!939821)))

(declare-fun c!242302 () Bool)

(assert (=> b!1471654 (= c!242302 ((_ is IntegerValue!8506) (value!87880 (h!20841 l1!3136))))))

(declare-fun b!1471655 () Bool)

(assert (=> b!1471655 (= e!939822 (inv!16 (value!87880 (h!20841 l1!3136))))))

(declare-fun b!1471656 () Bool)

(declare-fun res!665234 () Bool)

(declare-fun e!939820 () Bool)

(assert (=> b!1471656 (=> res!665234 e!939820)))

(assert (=> b!1471656 (= res!665234 (not ((_ is IntegerValue!8507) (value!87880 (h!20841 l1!3136)))))))

(assert (=> b!1471656 (= e!939821 e!939820)))

(declare-fun b!1471657 () Bool)

(assert (=> b!1471657 (= e!939820 (inv!15 (value!87880 (h!20841 l1!3136))))))

(declare-fun b!1471658 () Bool)

(assert (=> b!1471658 (= e!939821 (inv!17 (value!87880 (h!20841 l1!3136))))))

(assert (= (and d!431564 c!242303) b!1471655))

(assert (= (and d!431564 (not c!242303)) b!1471654))

(assert (= (and b!1471654 c!242302) b!1471658))

(assert (= (and b!1471654 (not c!242302)) b!1471656))

(assert (= (and b!1471656 (not res!665234)) b!1471657))

(declare-fun m!1715759 () Bool)

(assert (=> b!1471655 m!1715759))

(declare-fun m!1715761 () Bool)

(assert (=> b!1471657 m!1715761))

(declare-fun m!1715763 () Bool)

(assert (=> b!1471658 m!1715763))

(assert (=> b!1471541 d!431564))

(declare-fun d!431566 () Bool)

(assert (=> d!431566 (= (isEmpty!9640 rules!4290) ((_ is Nil!15439) rules!4290))))

(assert (=> b!1471530 d!431566))

(declare-fun d!431568 () Bool)

(declare-fun res!665247 () Bool)

(declare-fun e!939835 () Bool)

(assert (=> d!431568 (=> res!665247 e!939835)))

(assert (=> d!431568 (= res!665247 (or (not ((_ is Cons!15440) l2!3105)) (not ((_ is Cons!15440) (t!135759 l2!3105)))))))

(assert (=> d!431568 (= (tokensListTwoByTwoPredicateSeparableList!261 thiss!27374 l2!3105 rules!4290) e!939835)))

(declare-fun b!1471671 () Bool)

(declare-fun e!939836 () Bool)

(assert (=> b!1471671 (= e!939835 e!939836)))

(declare-fun res!665248 () Bool)

(assert (=> b!1471671 (=> (not res!665248) (not e!939836))))

(declare-fun separableTokensPredicate!548 (LexerInterface!2401 Token!5152 Token!5152 List!15505) Bool)

(assert (=> b!1471671 (= res!665248 (separableTokensPredicate!548 thiss!27374 (h!20841 l2!3105) (h!20841 (t!135759 l2!3105)) rules!4290))))

(declare-fun lt!511506 () Unit!25125)

(declare-fun Unit!25130 () Unit!25125)

(assert (=> b!1471671 (= lt!511506 Unit!25130)))

(declare-fun size!12544 (BalanceConc!10470) Int)

(declare-fun charsOf!1576 (Token!5152) BalanceConc!10470)

(assert (=> b!1471671 (> (size!12544 (charsOf!1576 (h!20841 (t!135759 l2!3105)))) 0)))

(declare-fun lt!511508 () Unit!25125)

(declare-fun Unit!25131 () Unit!25125)

(assert (=> b!1471671 (= lt!511508 Unit!25131)))

(assert (=> b!1471671 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 (t!135759 l2!3105)))))

(declare-fun lt!511510 () Unit!25125)

(declare-fun Unit!25132 () Unit!25125)

(assert (=> b!1471671 (= lt!511510 Unit!25132)))

(assert (=> b!1471671 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 l2!3105))))

(declare-fun lt!511505 () Unit!25125)

(declare-fun lt!511509 () Unit!25125)

(assert (=> b!1471671 (= lt!511505 lt!511509)))

(assert (=> b!1471671 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 (t!135759 l2!3105)))))

(assert (=> b!1471671 (= lt!511509 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 thiss!27374 rules!4290 l2!3105 (h!20841 (t!135759 l2!3105))))))

(declare-fun lt!511507 () Unit!25125)

(declare-fun lt!511511 () Unit!25125)

(assert (=> b!1471671 (= lt!511507 lt!511511)))

(assert (=> b!1471671 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 l2!3105))))

(assert (=> b!1471671 (= lt!511511 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 thiss!27374 rules!4290 l2!3105 (h!20841 l2!3105)))))

(declare-fun b!1471672 () Bool)

(assert (=> b!1471672 (= e!939836 (tokensListTwoByTwoPredicateSeparableList!261 thiss!27374 (Cons!15440 (h!20841 (t!135759 l2!3105)) (t!135759 (t!135759 l2!3105))) rules!4290))))

(assert (= (and d!431568 (not res!665247)) b!1471671))

(assert (= (and b!1471671 res!665248) b!1471672))

(declare-fun m!1715773 () Bool)

(assert (=> b!1471671 m!1715773))

(declare-fun m!1715775 () Bool)

(assert (=> b!1471671 m!1715775))

(declare-fun m!1715777 () Bool)

(assert (=> b!1471671 m!1715777))

(declare-fun m!1715779 () Bool)

(assert (=> b!1471671 m!1715779))

(assert (=> b!1471671 m!1715777))

(declare-fun m!1715781 () Bool)

(assert (=> b!1471671 m!1715781))

(assert (=> b!1471671 m!1715741))

(declare-fun m!1715783 () Bool)

(assert (=> b!1471671 m!1715783))

(declare-fun m!1715785 () Bool)

(assert (=> b!1471672 m!1715785))

(assert (=> b!1471531 d!431568))

(declare-fun d!431574 () Bool)

(declare-fun lt!511538 () Bool)

(declare-fun e!939851 () Bool)

(assert (=> d!431574 (= lt!511538 e!939851)))

(declare-fun res!665268 () Bool)

(assert (=> d!431574 (=> (not res!665268) (not e!939851))))

(declare-datatypes ((IArray!10539 0))(
  ( (IArray!10540 (innerList!5327 List!15506)) )
))
(declare-datatypes ((Conc!5267 0))(
  ( (Node!5267 (left!13066 Conc!5267) (right!13396 Conc!5267) (csize!10764 Int) (cheight!5478 Int)) (Leaf!7841 (xs!8022 IArray!10539) (csize!10765 Int)) (Empty!5267) )
))
(declare-datatypes ((BalanceConc!10474 0))(
  ( (BalanceConc!10475 (c!242313 Conc!5267)) )
))
(declare-fun list!6170 (BalanceConc!10474) List!15506)

(declare-datatypes ((tuple2!14282 0))(
  ( (tuple2!14283 (_1!8027 BalanceConc!10474) (_2!8027 BalanceConc!10470)) )
))
(declare-fun lex!1084 (LexerInterface!2401 List!15505 BalanceConc!10470) tuple2!14282)

(declare-fun print!1119 (LexerInterface!2401 BalanceConc!10474) BalanceConc!10470)

(declare-fun singletonSeq!1294 (Token!5152) BalanceConc!10474)

(assert (=> d!431574 (= res!665268 (= (list!6170 (_1!8027 (lex!1084 thiss!27374 rules!4290 (print!1119 thiss!27374 (singletonSeq!1294 lt!511479))))) (list!6170 (singletonSeq!1294 lt!511479))))))

(declare-fun e!939850 () Bool)

(assert (=> d!431574 (= lt!511538 e!939850)))

(declare-fun res!665267 () Bool)

(assert (=> d!431574 (=> (not res!665267) (not e!939850))))

(declare-fun lt!511537 () tuple2!14282)

(declare-fun size!12546 (BalanceConc!10474) Int)

(assert (=> d!431574 (= res!665267 (= (size!12546 (_1!8027 lt!511537)) 1))))

(assert (=> d!431574 (= lt!511537 (lex!1084 thiss!27374 rules!4290 (print!1119 thiss!27374 (singletonSeq!1294 lt!511479))))))

(assert (=> d!431574 (not (isEmpty!9640 rules!4290))))

(assert (=> d!431574 (= (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 lt!511479) lt!511538)))

(declare-fun b!1471688 () Bool)

(declare-fun res!665266 () Bool)

(assert (=> b!1471688 (=> (not res!665266) (not e!939850))))

(declare-fun apply!3993 (BalanceConc!10474 Int) Token!5152)

(assert (=> b!1471688 (= res!665266 (= (apply!3993 (_1!8027 lt!511537) 0) lt!511479))))

(declare-fun b!1471689 () Bool)

(declare-fun isEmpty!9645 (BalanceConc!10470) Bool)

(assert (=> b!1471689 (= e!939850 (isEmpty!9645 (_2!8027 lt!511537)))))

(declare-fun b!1471690 () Bool)

(assert (=> b!1471690 (= e!939851 (isEmpty!9645 (_2!8027 (lex!1084 thiss!27374 rules!4290 (print!1119 thiss!27374 (singletonSeq!1294 lt!511479))))))))

(assert (= (and d!431574 res!665267) b!1471688))

(assert (= (and b!1471688 res!665266) b!1471689))

(assert (= (and d!431574 res!665268) b!1471690))

(assert (=> d!431574 m!1715681))

(declare-fun m!1715807 () Bool)

(assert (=> d!431574 m!1715807))

(declare-fun m!1715809 () Bool)

(assert (=> d!431574 m!1715809))

(declare-fun m!1715811 () Bool)

(assert (=> d!431574 m!1715811))

(declare-fun m!1715813 () Bool)

(assert (=> d!431574 m!1715813))

(assert (=> d!431574 m!1715809))

(declare-fun m!1715815 () Bool)

(assert (=> d!431574 m!1715815))

(assert (=> d!431574 m!1715811))

(declare-fun m!1715817 () Bool)

(assert (=> d!431574 m!1715817))

(assert (=> d!431574 m!1715809))

(declare-fun m!1715819 () Bool)

(assert (=> b!1471688 m!1715819))

(declare-fun m!1715821 () Bool)

(assert (=> b!1471689 m!1715821))

(assert (=> b!1471690 m!1715809))

(assert (=> b!1471690 m!1715809))

(assert (=> b!1471690 m!1715811))

(assert (=> b!1471690 m!1715811))

(assert (=> b!1471690 m!1715817))

(declare-fun m!1715823 () Bool)

(assert (=> b!1471690 m!1715823))

(assert (=> b!1471542 d!431574))

(declare-fun d!431582 () Bool)

(assert (=> d!431582 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 lt!511479)))

(declare-fun lt!511543 () Unit!25125)

(declare-fun choose!9030 (LexerInterface!2401 List!15505 List!15506 Token!5152) Unit!25125)

(assert (=> d!431582 (= lt!511543 (choose!9030 thiss!27374 rules!4290 l1!3136 lt!511479))))

(assert (=> d!431582 (not (isEmpty!9640 rules!4290))))

(assert (=> d!431582 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 thiss!27374 rules!4290 l1!3136 lt!511479) lt!511543)))

(declare-fun bs!345150 () Bool)

(assert (= bs!345150 d!431582))

(assert (=> bs!345150 m!1715667))

(declare-fun m!1715843 () Bool)

(assert (=> bs!345150 m!1715843))

(assert (=> bs!345150 m!1715681))

(assert (=> b!1471542 d!431582))

(declare-fun d!431586 () Bool)

(declare-fun lt!511549 () Token!5152)

(declare-fun contains!2921 (List!15506 Token!5152) Bool)

(assert (=> d!431586 (contains!2921 l1!3136 lt!511549)))

(declare-fun e!939856 () Token!5152)

(assert (=> d!431586 (= lt!511549 e!939856)))

(declare-fun c!242306 () Bool)

(assert (=> d!431586 (= c!242306 (and ((_ is Cons!15440) l1!3136) ((_ is Nil!15440) (t!135759 l1!3136))))))

(assert (=> d!431586 (not (isEmpty!9641 l1!3136))))

(assert (=> d!431586 (= (last!303 l1!3136) lt!511549)))

(declare-fun b!1471700 () Bool)

(assert (=> b!1471700 (= e!939856 (h!20841 l1!3136))))

(declare-fun b!1471701 () Bool)

(assert (=> b!1471701 (= e!939856 (last!303 (t!135759 l1!3136)))))

(assert (= (and d!431586 c!242306) b!1471700))

(assert (= (and d!431586 (not c!242306)) b!1471701))

(declare-fun m!1715847 () Bool)

(assert (=> d!431586 m!1715847))

(assert (=> d!431586 m!1715655))

(declare-fun m!1715849 () Bool)

(assert (=> b!1471701 m!1715849))

(assert (=> b!1471542 d!431586))

(declare-fun d!431590 () Bool)

(assert (=> d!431590 (= (inv!20643 (tag!3009 (rule!4522 (h!20841 l1!3136)))) (= (mod (str.len (value!87879 (tag!3009 (rule!4522 (h!20841 l1!3136))))) 2) 0))))

(assert (=> b!1471543 d!431590))

(declare-fun d!431592 () Bool)

(declare-fun res!665272 () Bool)

(declare-fun e!939857 () Bool)

(assert (=> d!431592 (=> (not res!665272) (not e!939857))))

(assert (=> d!431592 (= res!665272 (semiInverseModEq!1027 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (toValue!4072 (transformation!2745 (rule!4522 (h!20841 l1!3136))))))))

(assert (=> d!431592 (= (inv!20647 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) e!939857)))

(declare-fun b!1471702 () Bool)

(assert (=> b!1471702 (= e!939857 (equivClasses!986 (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (toValue!4072 (transformation!2745 (rule!4522 (h!20841 l1!3136))))))))

(assert (= (and d!431592 res!665272) b!1471702))

(declare-fun m!1715851 () Bool)

(assert (=> d!431592 m!1715851))

(declare-fun m!1715853 () Bool)

(assert (=> b!1471702 m!1715853))

(assert (=> b!1471543 d!431592))

(declare-fun d!431594 () Bool)

(declare-fun res!665273 () Bool)

(declare-fun e!939858 () Bool)

(assert (=> d!431594 (=> res!665273 e!939858)))

(assert (=> d!431594 (= res!665273 (or (not ((_ is Cons!15440) l1!3136)) (not ((_ is Cons!15440) (t!135759 l1!3136)))))))

(assert (=> d!431594 (= (tokensListTwoByTwoPredicateSeparableList!261 thiss!27374 l1!3136 rules!4290) e!939858)))

(declare-fun b!1471703 () Bool)

(declare-fun e!939859 () Bool)

(assert (=> b!1471703 (= e!939858 e!939859)))

(declare-fun res!665274 () Bool)

(assert (=> b!1471703 (=> (not res!665274) (not e!939859))))

(assert (=> b!1471703 (= res!665274 (separableTokensPredicate!548 thiss!27374 (h!20841 l1!3136) (h!20841 (t!135759 l1!3136)) rules!4290))))

(declare-fun lt!511551 () Unit!25125)

(declare-fun Unit!25133 () Unit!25125)

(assert (=> b!1471703 (= lt!511551 Unit!25133)))

(assert (=> b!1471703 (> (size!12544 (charsOf!1576 (h!20841 (t!135759 l1!3136)))) 0)))

(declare-fun lt!511553 () Unit!25125)

(declare-fun Unit!25134 () Unit!25125)

(assert (=> b!1471703 (= lt!511553 Unit!25134)))

(assert (=> b!1471703 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 (t!135759 l1!3136)))))

(declare-fun lt!511555 () Unit!25125)

(declare-fun Unit!25135 () Unit!25125)

(assert (=> b!1471703 (= lt!511555 Unit!25135)))

(assert (=> b!1471703 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 l1!3136))))

(declare-fun lt!511550 () Unit!25125)

(declare-fun lt!511554 () Unit!25125)

(assert (=> b!1471703 (= lt!511550 lt!511554)))

(assert (=> b!1471703 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 (t!135759 l1!3136)))))

(assert (=> b!1471703 (= lt!511554 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 thiss!27374 rules!4290 l1!3136 (h!20841 (t!135759 l1!3136))))))

(declare-fun lt!511552 () Unit!25125)

(declare-fun lt!511556 () Unit!25125)

(assert (=> b!1471703 (= lt!511552 lt!511556)))

(assert (=> b!1471703 (rulesProduceIndividualToken!1260 thiss!27374 rules!4290 (h!20841 l1!3136))))

(assert (=> b!1471703 (= lt!511556 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!441 thiss!27374 rules!4290 l1!3136 (h!20841 l1!3136)))))

(declare-fun b!1471704 () Bool)

(assert (=> b!1471704 (= e!939859 (tokensListTwoByTwoPredicateSeparableList!261 thiss!27374 (Cons!15440 (h!20841 (t!135759 l1!3136)) (t!135759 (t!135759 l1!3136))) rules!4290))))

(assert (= (and d!431594 (not res!665273)) b!1471703))

(assert (= (and b!1471703 res!665274) b!1471704))

(declare-fun m!1715855 () Bool)

(assert (=> b!1471703 m!1715855))

(declare-fun m!1715857 () Bool)

(assert (=> b!1471703 m!1715857))

(declare-fun m!1715859 () Bool)

(assert (=> b!1471703 m!1715859))

(declare-fun m!1715861 () Bool)

(assert (=> b!1471703 m!1715861))

(assert (=> b!1471703 m!1715859))

(declare-fun m!1715863 () Bool)

(assert (=> b!1471703 m!1715863))

(assert (=> b!1471703 m!1715735))

(declare-fun m!1715865 () Bool)

(assert (=> b!1471703 m!1715865))

(declare-fun m!1715867 () Bool)

(assert (=> b!1471704 m!1715867))

(assert (=> b!1471532 d!431594))

(declare-fun d!431596 () Bool)

(assert (=> d!431596 (= (isEmpty!9641 l1!3136) ((_ is Nil!15440) l1!3136))))

(assert (=> b!1471533 d!431596))

(declare-fun d!431598 () Bool)

(assert (=> d!431598 (= (inv!20643 (tag!3009 (h!20840 rules!4290))) (= (mod (str.len (value!87879 (tag!3009 (h!20840 rules!4290)))) 2) 0))))

(assert (=> b!1471544 d!431598))

(declare-fun d!431600 () Bool)

(declare-fun res!665275 () Bool)

(declare-fun e!939862 () Bool)

(assert (=> d!431600 (=> (not res!665275) (not e!939862))))

(assert (=> d!431600 (= res!665275 (semiInverseModEq!1027 (toChars!3931 (transformation!2745 (h!20840 rules!4290))) (toValue!4072 (transformation!2745 (h!20840 rules!4290)))))))

(assert (=> d!431600 (= (inv!20647 (transformation!2745 (h!20840 rules!4290))) e!939862)))

(declare-fun b!1471709 () Bool)

(assert (=> b!1471709 (= e!939862 (equivClasses!986 (toChars!3931 (transformation!2745 (h!20840 rules!4290))) (toValue!4072 (transformation!2745 (h!20840 rules!4290)))))))

(assert (= (and d!431600 res!665275) b!1471709))

(declare-fun m!1715869 () Bool)

(assert (=> d!431600 m!1715869))

(declare-fun m!1715871 () Bool)

(assert (=> b!1471709 m!1715871))

(assert (=> b!1471544 d!431600))

(declare-fun b!1471716 () Bool)

(declare-fun e!939866 () Bool)

(declare-fun tp_is_empty!6921 () Bool)

(declare-fun tp!415544 () Bool)

(assert (=> b!1471716 (= e!939866 (and tp_is_empty!6921 tp!415544))))

(assert (=> b!1471545 (= tp!415531 e!939866)))

(assert (= (and b!1471545 ((_ is Cons!15438) (originalCharacters!3607 (h!20841 l2!3105)))) b!1471716))

(declare-fun b!1471743 () Bool)

(declare-fun b_free!37251 () Bool)

(declare-fun b_next!37955 () Bool)

(assert (=> b!1471743 (= b_free!37251 (not b_next!37955))))

(declare-fun tp!415555 () Bool)

(declare-fun b_and!101039 () Bool)

(assert (=> b!1471743 (= tp!415555 b_and!101039)))

(declare-fun b_free!37253 () Bool)

(declare-fun b_next!37957 () Bool)

(assert (=> b!1471743 (= b_free!37253 (not b_next!37957))))

(declare-fun t!135787 () Bool)

(declare-fun tb!83435 () Bool)

(assert (=> (and b!1471743 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l2!3105))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105))))) t!135787) tb!83435))

(declare-fun result!100288 () Bool)

(assert (= result!100288 result!100262))

(assert (=> b!1471588 t!135787))

(declare-fun tb!83437 () Bool)

(declare-fun t!135789 () Bool)

(assert (=> (and b!1471743 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l2!3105))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136))))) t!135789) tb!83437))

(declare-fun result!100290 () Bool)

(assert (= result!100290 result!100274))

(assert (=> b!1471601 t!135789))

(declare-fun b_and!101041 () Bool)

(declare-fun tp!415559 () Bool)

(assert (=> b!1471743 (= tp!415559 (and (=> t!135787 result!100288) (=> t!135789 result!100290) b_and!101041))))

(declare-fun e!939894 () Bool)

(assert (=> b!1471743 (= e!939894 (and tp!415555 tp!415559))))

(declare-fun b!1471741 () Bool)

(declare-fun e!939890 () Bool)

(declare-fun e!939891 () Bool)

(declare-fun tp!415557 () Bool)

(assert (=> b!1471741 (= e!939890 (and (inv!21 (value!87880 (h!20841 (t!135759 l2!3105)))) e!939891 tp!415557))))

(declare-fun b!1471742 () Bool)

(declare-fun tp!415558 () Bool)

(assert (=> b!1471742 (= e!939891 (and tp!415558 (inv!20643 (tag!3009 (rule!4522 (h!20841 (t!135759 l2!3105))))) (inv!20647 (transformation!2745 (rule!4522 (h!20841 (t!135759 l2!3105))))) e!939894))))

(declare-fun e!939892 () Bool)

(assert (=> b!1471534 (= tp!415529 e!939892)))

(declare-fun b!1471740 () Bool)

(declare-fun tp!415556 () Bool)

(assert (=> b!1471740 (= e!939892 (and (inv!20646 (h!20841 (t!135759 l2!3105))) e!939890 tp!415556))))

(assert (= b!1471742 b!1471743))

(assert (= b!1471741 b!1471742))

(assert (= b!1471740 b!1471741))

(assert (= (and b!1471534 ((_ is Cons!15440) (t!135759 l2!3105))) b!1471740))

(declare-fun m!1715905 () Bool)

(assert (=> b!1471741 m!1715905))

(declare-fun m!1715907 () Bool)

(assert (=> b!1471742 m!1715907))

(declare-fun m!1715909 () Bool)

(assert (=> b!1471742 m!1715909))

(declare-fun m!1715911 () Bool)

(assert (=> b!1471740 m!1715911))

(declare-fun b!1471749 () Bool)

(declare-fun b_free!37255 () Bool)

(declare-fun b_next!37959 () Bool)

(assert (=> b!1471749 (= b_free!37255 (not b_next!37959))))

(declare-fun tp!415560 () Bool)

(declare-fun b_and!101043 () Bool)

(assert (=> b!1471749 (= tp!415560 b_and!101043)))

(declare-fun b_free!37257 () Bool)

(declare-fun b_next!37961 () Bool)

(assert (=> b!1471749 (= b_free!37257 (not b_next!37961))))

(declare-fun tb!83441 () Bool)

(declare-fun t!135793 () Bool)

(assert (=> (and b!1471749 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l1!3136))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105))))) t!135793) tb!83441))

(declare-fun result!100294 () Bool)

(assert (= result!100294 result!100262))

(assert (=> b!1471588 t!135793))

(declare-fun t!135795 () Bool)

(declare-fun tb!83443 () Bool)

(assert (=> (and b!1471749 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l1!3136))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136))))) t!135795) tb!83443))

(declare-fun result!100296 () Bool)

(assert (= result!100296 result!100274))

(assert (=> b!1471601 t!135795))

(declare-fun tp!415564 () Bool)

(declare-fun b_and!101045 () Bool)

(assert (=> b!1471749 (= tp!415564 (and (=> t!135793 result!100294) (=> t!135795 result!100296) b_and!101045))))

(declare-fun e!939901 () Bool)

(assert (=> b!1471749 (= e!939901 (and tp!415560 tp!415564))))

(declare-fun tp!415562 () Bool)

(declare-fun e!939897 () Bool)

(declare-fun b!1471747 () Bool)

(declare-fun e!939898 () Bool)

(assert (=> b!1471747 (= e!939897 (and (inv!21 (value!87880 (h!20841 (t!135759 l1!3136)))) e!939898 tp!415562))))

(declare-fun b!1471748 () Bool)

(declare-fun tp!415563 () Bool)

(assert (=> b!1471748 (= e!939898 (and tp!415563 (inv!20643 (tag!3009 (rule!4522 (h!20841 (t!135759 l1!3136))))) (inv!20647 (transformation!2745 (rule!4522 (h!20841 (t!135759 l1!3136))))) e!939901))))

(declare-fun e!939899 () Bool)

(assert (=> b!1471535 (= tp!415532 e!939899)))

(declare-fun b!1471746 () Bool)

(declare-fun tp!415561 () Bool)

(assert (=> b!1471746 (= e!939899 (and (inv!20646 (h!20841 (t!135759 l1!3136))) e!939897 tp!415561))))

(assert (= b!1471748 b!1471749))

(assert (= b!1471747 b!1471748))

(assert (= b!1471746 b!1471747))

(assert (= (and b!1471535 ((_ is Cons!15440) (t!135759 l1!3136))) b!1471746))

(declare-fun m!1715925 () Bool)

(assert (=> b!1471747 m!1715925))

(declare-fun m!1715927 () Bool)

(assert (=> b!1471748 m!1715927))

(declare-fun m!1715929 () Bool)

(assert (=> b!1471748 m!1715929))

(declare-fun m!1715931 () Bool)

(assert (=> b!1471746 m!1715931))

(declare-fun b!1471772 () Bool)

(declare-fun b_free!37259 () Bool)

(declare-fun b_next!37963 () Bool)

(assert (=> b!1471772 (= b_free!37259 (not b_next!37963))))

(declare-fun tp!415580 () Bool)

(declare-fun b_and!101053 () Bool)

(assert (=> b!1471772 (= tp!415580 b_and!101053)))

(declare-fun b_free!37261 () Bool)

(declare-fun b_next!37965 () Bool)

(assert (=> b!1471772 (= b_free!37261 (not b_next!37965))))

(declare-fun t!135801 () Bool)

(declare-fun tb!83449 () Bool)

(assert (=> (and b!1471772 (= (toChars!3931 (transformation!2745 (h!20840 (t!135758 rules!4290)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105))))) t!135801) tb!83449))

(declare-fun result!100308 () Bool)

(assert (= result!100308 result!100262))

(assert (=> b!1471588 t!135801))

(declare-fun tb!83451 () Bool)

(declare-fun t!135803 () Bool)

(assert (=> (and b!1471772 (= (toChars!3931 (transformation!2745 (h!20840 (t!135758 rules!4290)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136))))) t!135803) tb!83451))

(declare-fun result!100310 () Bool)

(assert (= result!100310 result!100274))

(assert (=> b!1471601 t!135803))

(declare-fun tp!415578 () Bool)

(declare-fun b_and!101055 () Bool)

(assert (=> b!1471772 (= tp!415578 (and (=> t!135801 result!100308) (=> t!135803 result!100310) b_and!101055))))

(declare-fun e!939923 () Bool)

(assert (=> b!1471772 (= e!939923 (and tp!415580 tp!415578))))

(declare-fun e!939921 () Bool)

(declare-fun tp!415577 () Bool)

(declare-fun b!1471771 () Bool)

(assert (=> b!1471771 (= e!939921 (and tp!415577 (inv!20643 (tag!3009 (h!20840 (t!135758 rules!4290)))) (inv!20647 (transformation!2745 (h!20840 (t!135758 rules!4290)))) e!939923))))

(declare-fun b!1471770 () Bool)

(declare-fun e!939922 () Bool)

(declare-fun tp!415579 () Bool)

(assert (=> b!1471770 (= e!939922 (and e!939921 tp!415579))))

(assert (=> b!1471547 (= tp!415527 e!939922)))

(assert (= b!1471771 b!1471772))

(assert (= b!1471770 b!1471771))

(assert (= (and b!1471547 ((_ is Cons!15439) (t!135758 rules!4290))) b!1471770))

(declare-fun m!1715933 () Bool)

(assert (=> b!1471771 m!1715933))

(declare-fun m!1715935 () Bool)

(assert (=> b!1471771 m!1715935))

(declare-fun b!1471790 () Bool)

(declare-fun e!939933 () Bool)

(declare-fun tp!415601 () Bool)

(declare-fun tp!415604 () Bool)

(assert (=> b!1471790 (= e!939933 (and tp!415601 tp!415604))))

(declare-fun b!1471787 () Bool)

(assert (=> b!1471787 (= e!939933 tp_is_empty!6921)))

(declare-fun b!1471789 () Bool)

(declare-fun tp!415605 () Bool)

(assert (=> b!1471789 (= e!939933 tp!415605)))

(assert (=> b!1471539 (= tp!415528 e!939933)))

(declare-fun b!1471788 () Bool)

(declare-fun tp!415603 () Bool)

(declare-fun tp!415602 () Bool)

(assert (=> b!1471788 (= e!939933 (and tp!415603 tp!415602))))

(assert (= (and b!1471539 ((_ is ElementMatch!4059) (regex!2745 (rule!4522 (h!20841 l2!3105))))) b!1471787))

(assert (= (and b!1471539 ((_ is Concat!6894) (regex!2745 (rule!4522 (h!20841 l2!3105))))) b!1471788))

(assert (= (and b!1471539 ((_ is Star!4059) (regex!2745 (rule!4522 (h!20841 l2!3105))))) b!1471789))

(assert (= (and b!1471539 ((_ is Union!4059) (regex!2745 (rule!4522 (h!20841 l2!3105))))) b!1471790))

(declare-fun b!1471791 () Bool)

(declare-fun e!939934 () Bool)

(declare-fun tp!415606 () Bool)

(assert (=> b!1471791 (= e!939934 (and tp_is_empty!6921 tp!415606))))

(assert (=> b!1471541 (= tp!415533 e!939934)))

(assert (= (and b!1471541 ((_ is Cons!15438) (originalCharacters!3607 (h!20841 l1!3136)))) b!1471791))

(declare-fun b!1471797 () Bool)

(declare-fun e!939937 () Bool)

(declare-fun tp!415610 () Bool)

(declare-fun tp!415615 () Bool)

(assert (=> b!1471797 (= e!939937 (and tp!415610 tp!415615))))

(declare-fun b!1471792 () Bool)

(assert (=> b!1471792 (= e!939937 tp_is_empty!6921)))

(declare-fun b!1471795 () Bool)

(declare-fun tp!415616 () Bool)

(assert (=> b!1471795 (= e!939937 tp!415616)))

(assert (=> b!1471543 (= tp!415524 e!939937)))

(declare-fun b!1471793 () Bool)

(declare-fun tp!415614 () Bool)

(declare-fun tp!415611 () Bool)

(assert (=> b!1471793 (= e!939937 (and tp!415614 tp!415611))))

(assert (= (and b!1471543 ((_ is ElementMatch!4059) (regex!2745 (rule!4522 (h!20841 l1!3136))))) b!1471792))

(assert (= (and b!1471543 ((_ is Concat!6894) (regex!2745 (rule!4522 (h!20841 l1!3136))))) b!1471793))

(assert (= (and b!1471543 ((_ is Star!4059) (regex!2745 (rule!4522 (h!20841 l1!3136))))) b!1471795))

(assert (= (and b!1471543 ((_ is Union!4059) (regex!2745 (rule!4522 (h!20841 l1!3136))))) b!1471797))

(declare-fun b!1471803 () Bool)

(declare-fun e!939942 () Bool)

(declare-fun tp!415617 () Bool)

(declare-fun tp!415620 () Bool)

(assert (=> b!1471803 (= e!939942 (and tp!415617 tp!415620))))

(declare-fun b!1471800 () Bool)

(assert (=> b!1471800 (= e!939942 tp_is_empty!6921)))

(declare-fun b!1471802 () Bool)

(declare-fun tp!415621 () Bool)

(assert (=> b!1471802 (= e!939942 tp!415621)))

(assert (=> b!1471544 (= tp!415525 e!939942)))

(declare-fun b!1471801 () Bool)

(declare-fun tp!415619 () Bool)

(declare-fun tp!415618 () Bool)

(assert (=> b!1471801 (= e!939942 (and tp!415619 tp!415618))))

(assert (= (and b!1471544 ((_ is ElementMatch!4059) (regex!2745 (h!20840 rules!4290)))) b!1471800))

(assert (= (and b!1471544 ((_ is Concat!6894) (regex!2745 (h!20840 rules!4290)))) b!1471801))

(assert (= (and b!1471544 ((_ is Star!4059) (regex!2745 (h!20840 rules!4290)))) b!1471802))

(assert (= (and b!1471544 ((_ is Union!4059) (regex!2745 (h!20840 rules!4290)))) b!1471803))

(declare-fun b_lambda!45959 () Bool)

(assert (= b_lambda!45951 (or (and b!1471743 b_free!37253 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l2!3105))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))))) (and b!1471772 b_free!37261 (= (toChars!3931 (transformation!2745 (h!20840 (t!135758 rules!4290)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))))) (and b!1471540 b_free!37245 (= (toChars!3931 (transformation!2745 (h!20840 rules!4290))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))))) (and b!1471536 b_free!37249) (and b!1471749 b_free!37257 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l1!3136))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))))) (and b!1471548 b_free!37241 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))))) b_lambda!45959)))

(declare-fun b_lambda!45961 () Bool)

(assert (= b_lambda!45955 (or (and b!1471548 b_free!37241) (and b!1471772 b_free!37261 (= (toChars!3931 (transformation!2745 (h!20840 (t!135758 rules!4290)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))))) (and b!1471536 b_free!37249 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l2!3105)))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))))) (and b!1471743 b_free!37253 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l2!3105))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))))) (and b!1471540 b_free!37245 (= (toChars!3931 (transformation!2745 (h!20840 rules!4290))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))))) (and b!1471749 b_free!37257 (= (toChars!3931 (transformation!2745 (rule!4522 (h!20841 (t!135759 l1!3136))))) (toChars!3931 (transformation!2745 (rule!4522 (h!20841 l1!3136)))))) b_lambda!45961)))

(check-sat (not b!1471602) b_and!101041 b_and!101039 b_and!101043 b_and!101029 b_and!101017 (not b!1471589) (not b!1471601) b_and!101013 (not b!1471795) (not b!1471672) (not b!1471803) tp_is_empty!6921 (not b!1471802) (not b!1471690) (not b_next!37945) b_and!101027 (not b!1471623) (not d!431558) (not b_next!37953) (not b!1471771) (not d!431548) (not b!1471630) b_and!101055 b_and!101045 (not b!1471579) (not d!431600) (not b_next!37959) (not b_lambda!45961) (not b!1471576) (not b!1471716) (not b!1471704) b_and!101009 (not b!1471701) (not b!1471702) b_and!101031 (not b!1471789) (not b!1471688) (not b!1471653) (not b!1471801) (not b!1471671) (not b!1471748) (not b!1471658) (not d!431574) (not d!431582) (not b!1471791) (not b_next!37957) (not b!1471629) (not b_next!37963) (not b!1471741) (not b!1471614) (not tb!83425) (not b!1471793) (not d!431540) b_and!101053 (not b!1471588) (not b_next!37965) (not b!1471747) (not b!1471742) (not b!1471655) (not b!1471740) (not b_next!37949) (not b_next!37947) (not b!1471578) (not b!1471657) (not b!1471797) (not b_next!37951) (not b_lambda!45959) (not b!1471746) (not b_next!37961) (not d!431592) (not d!431550) (not d!431544) (not b!1471709) (not tb!83417) (not d!431586) (not b_next!37955) (not b!1471628) (not d!431542) (not b!1471689) (not b!1471703) (not b!1471788) (not b_next!37943) (not b!1471645) (not b!1471596) (not b!1471790) (not b!1471613) (not b!1471770) (not b!1471603))
(check-sat b_and!101013 (not b_next!37945) b_and!101055 b_and!101045 (not b_next!37959) b_and!101009 b_and!101041 b_and!101031 b_and!101039 b_and!101043 b_and!101053 (not b_next!37965) b_and!101029 (not b_next!37951) (not b_next!37961) b_and!101017 b_and!101027 (not b_next!37953) (not b_next!37963) (not b_next!37957) (not b_next!37949) (not b_next!37947) (not b_next!37955) (not b_next!37943))
