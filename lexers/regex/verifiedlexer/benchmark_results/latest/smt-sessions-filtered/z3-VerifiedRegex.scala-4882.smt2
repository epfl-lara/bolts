; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250756 () Bool)

(assert start!250756)

(declare-fun b!2589520 () Bool)

(declare-fun b_free!72933 () Bool)

(declare-fun b_next!73637 () Bool)

(assert (=> b!2589520 (= b_free!72933 (not b_next!73637))))

(declare-fun tp!822518 () Bool)

(declare-fun b_and!190187 () Bool)

(assert (=> b!2589520 (= tp!822518 b_and!190187)))

(declare-fun b_free!72935 () Bool)

(declare-fun b_next!73639 () Bool)

(assert (=> b!2589520 (= b_free!72935 (not b_next!73639))))

(declare-fun tp!822507 () Bool)

(declare-fun b_and!190189 () Bool)

(assert (=> b!2589520 (= tp!822507 b_and!190189)))

(declare-fun b!2589528 () Bool)

(declare-fun b_free!72937 () Bool)

(declare-fun b_next!73641 () Bool)

(assert (=> b!2589528 (= b_free!72937 (not b_next!73641))))

(declare-fun tp!822515 () Bool)

(declare-fun b_and!190191 () Bool)

(assert (=> b!2589528 (= tp!822515 b_and!190191)))

(declare-fun b_free!72939 () Bool)

(declare-fun b_next!73643 () Bool)

(assert (=> b!2589528 (= b_free!72939 (not b_next!73643))))

(declare-fun tp!822508 () Bool)

(declare-fun b_and!190193 () Bool)

(assert (=> b!2589528 (= tp!822508 b_and!190193)))

(declare-fun b!2589519 () Bool)

(declare-fun b_free!72941 () Bool)

(declare-fun b_next!73645 () Bool)

(assert (=> b!2589519 (= b_free!72941 (not b_next!73645))))

(declare-fun tp!822516 () Bool)

(declare-fun b_and!190195 () Bool)

(assert (=> b!2589519 (= tp!822516 b_and!190195)))

(declare-fun b_free!72943 () Bool)

(declare-fun b_next!73647 () Bool)

(assert (=> b!2589519 (= b_free!72943 (not b_next!73647))))

(declare-fun tp!822513 () Bool)

(declare-fun b_and!190197 () Bool)

(assert (=> b!2589519 (= tp!822513 b_and!190197)))

(declare-fun b!2589535 () Bool)

(declare-fun b_free!72945 () Bool)

(declare-fun b_next!73649 () Bool)

(assert (=> b!2589535 (= b_free!72945 (not b_next!73649))))

(declare-fun tp!822506 () Bool)

(declare-fun b_and!190199 () Bool)

(assert (=> b!2589535 (= tp!822506 b_and!190199)))

(declare-fun b_free!72947 () Bool)

(declare-fun b_next!73651 () Bool)

(assert (=> b!2589535 (= b_free!72947 (not b_next!73651))))

(declare-fun tp!822520 () Bool)

(declare-fun b_and!190201 () Bool)

(assert (=> b!2589535 (= tp!822520 b_and!190201)))

(declare-fun b!2589518 () Bool)

(declare-fun e!1633430 () Bool)

(declare-datatypes ((List!29873 0))(
  ( (Nil!29773) (Cons!29773 (h!35193 (_ BitVec 16)) (t!212886 List!29873)) )
))
(declare-datatypes ((TokenValue!4745 0))(
  ( (FloatLiteralValue!9490 (text!33660 List!29873)) (TokenValueExt!4744 (__x!19323 Int)) (Broken!23725 (value!146127 List!29873)) (Object!4844) (End!4745) (Def!4745) (Underscore!4745) (Match!4745) (Else!4745) (Error!4745) (Case!4745) (If!4745) (Extends!4745) (Abstract!4745) (Class!4745) (Val!4745) (DelimiterValue!9490 (del!4805 List!29873)) (KeywordValue!4751 (value!146128 List!29873)) (CommentValue!9490 (value!146129 List!29873)) (WhitespaceValue!9490 (value!146130 List!29873)) (IndentationValue!4745 (value!146131 List!29873)) (String!33132) (Int32!4745) (Broken!23726 (value!146132 List!29873)) (Boolean!4746) (Unit!43641) (OperatorValue!4748 (op!4805 List!29873)) (IdentifierValue!9490 (value!146133 List!29873)) (IdentifierValue!9491 (value!146134 List!29873)) (WhitespaceValue!9491 (value!146135 List!29873)) (True!9490) (False!9490) (Broken!23727 (value!146136 List!29873)) (Broken!23728 (value!146137 List!29873)) (True!9491) (RightBrace!4745) (RightBracket!4745) (Colon!4745) (Null!4745) (Comma!4745) (LeftBracket!4745) (False!9491) (LeftBrace!4745) (ImaginaryLiteralValue!4745 (text!33661 List!29873)) (StringLiteralValue!14235 (value!146138 List!29873)) (EOFValue!4745 (value!146139 List!29873)) (IdentValue!4745 (value!146140 List!29873)) (DelimiterValue!9491 (value!146141 List!29873)) (DedentValue!4745 (value!146142 List!29873)) (NewLineValue!4745 (value!146143 List!29873)) (IntegerValue!14235 (value!146144 (_ BitVec 32)) (text!33662 List!29873)) (IntegerValue!14236 (value!146145 Int) (text!33663 List!29873)) (Times!4745) (Or!4745) (Equal!4745) (Minus!4745) (Broken!23729 (value!146146 List!29873)) (And!4745) (Div!4745) (LessEqual!4745) (Mod!4745) (Concat!12412) (Not!4745) (Plus!4745) (SpaceValue!4745 (value!146147 List!29873)) (IntegerValue!14237 (value!146148 Int) (text!33664 List!29873)) (StringLiteralValue!14236 (text!33665 List!29873)) (FloatLiteralValue!9491 (text!33666 List!29873)) (BytesLiteralValue!4745 (value!146149 List!29873)) (CommentValue!9491 (value!146150 List!29873)) (StringLiteralValue!14237 (value!146151 List!29873)) (ErrorTokenValue!4745 (msg!4806 List!29873)) )
))
(declare-datatypes ((C!15492 0))(
  ( (C!15493 (val!9442 Int)) )
))
(declare-datatypes ((List!29874 0))(
  ( (Nil!29774) (Cons!29774 (h!35194 C!15492) (t!212887 List!29874)) )
))
(declare-datatypes ((IArray!18583 0))(
  ( (IArray!18584 (innerList!9349 List!29874)) )
))
(declare-datatypes ((Conc!9289 0))(
  ( (Node!9289 (left!22695 Conc!9289) (right!23025 Conc!9289) (csize!18808 Int) (cheight!9500 Int)) (Leaf!14172 (xs!12273 IArray!18583) (csize!18809 Int)) (Empty!9289) )
))
(declare-datatypes ((BalanceConc!18192 0))(
  ( (BalanceConc!18193 (c!417529 Conc!9289)) )
))
(declare-datatypes ((String!33133 0))(
  ( (String!33134 (value!146152 String)) )
))
(declare-datatypes ((TokenValueInjection!8930 0))(
  ( (TokenValueInjection!8931 (toValue!6417 Int) (toChars!6276 Int)) )
))
(declare-datatypes ((Regex!7667 0))(
  ( (ElementMatch!7667 (c!417530 C!15492)) (Concat!12413 (regOne!15846 Regex!7667) (regTwo!15846 Regex!7667)) (EmptyExpr!7667) (Star!7667 (reg!7996 Regex!7667)) (EmptyLang!7667) (Union!7667 (regOne!15847 Regex!7667) (regTwo!15847 Regex!7667)) )
))
(declare-datatypes ((Rule!8846 0))(
  ( (Rule!8847 (regex!4523 Regex!7667) (tag!5013 String!33133) (isSeparator!4523 Bool) (transformation!4523 TokenValueInjection!8930)) )
))
(declare-fun rule!570 () Rule!8846)

(declare-fun lt!910251 () List!29874)

(declare-fun matchR!3600 (Regex!7667 List!29874) Bool)

(assert (=> b!2589518 (= e!1633430 (not (not (matchR!3600 (regex!4523 rule!570) lt!910251))))))

(declare-datatypes ((LexerInterface!4120 0))(
  ( (LexerInterfaceExt!4117 (__x!19324 Int)) (Lexer!4118) )
))
(declare-fun thiss!28211 () LexerInterface!4120)

(declare-fun ruleValid!1529 (LexerInterface!4120 Rule!8846) Bool)

(assert (=> b!2589518 (ruleValid!1529 thiss!28211 rule!570)))

(declare-datatypes ((List!29875 0))(
  ( (Nil!29775) (Cons!29775 (h!35195 Rule!8846) (t!212888 List!29875)) )
))
(declare-fun rules!4580 () List!29875)

(declare-datatypes ((Unit!43642 0))(
  ( (Unit!43643) )
))
(declare-fun lt!910246 () Unit!43642)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!922 (LexerInterface!4120 Rule!8846 List!29875) Unit!43642)

(assert (=> b!2589518 (= lt!910246 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!922 thiss!28211 rule!570 rules!4580))))

(declare-fun e!1633419 () Bool)

(assert (=> b!2589519 (= e!1633419 (and tp!822516 tp!822513))))

(declare-fun e!1633420 () Bool)

(assert (=> b!2589520 (= e!1633420 (and tp!822518 tp!822507))))

(declare-fun b!2589521 () Bool)

(declare-fun e!1633435 () Bool)

(declare-fun e!1633434 () Bool)

(declare-fun tp!822521 () Bool)

(assert (=> b!2589521 (= e!1633435 (and e!1633434 tp!822521))))

(declare-fun b!2589522 () Bool)

(declare-fun res!1088542 () Bool)

(declare-fun e!1633437 () Bool)

(assert (=> b!2589522 (=> (not res!1088542) (not e!1633437))))

(declare-fun isEmpty!17117 (List!29875) Bool)

(assert (=> b!2589522 (= res!1088542 (not (isEmpty!17117 rules!4580)))))

(declare-fun e!1633438 () Bool)

(declare-fun b!2589523 () Bool)

(declare-fun e!1633422 () Bool)

(declare-fun tp!822517 () Bool)

(declare-fun inv!40210 (String!33133) Bool)

(declare-fun inv!40213 (TokenValueInjection!8930) Bool)

(assert (=> b!2589523 (= e!1633438 (and tp!822517 (inv!40210 (tag!5013 rule!570)) (inv!40213 (transformation!4523 rule!570)) e!1633422))))

(declare-fun b!2589524 () Bool)

(declare-fun e!1633425 () Bool)

(assert (=> b!2589524 (= e!1633425 true)))

(declare-fun lt!910248 () Bool)

(declare-fun rs!798 () List!29875)

(declare-fun rulesValid!1695 (LexerInterface!4120 List!29875) Bool)

(assert (=> b!2589524 (= lt!910248 (rulesValid!1695 thiss!28211 rs!798))))

(declare-fun b!2589525 () Bool)

(declare-fun res!1088548 () Bool)

(assert (=> b!2589525 (=> (not res!1088548) (not e!1633437))))

(declare-fun contains!5329 (List!29875 Rule!8846) Bool)

(assert (=> b!2589525 (= res!1088548 (contains!5329 rules!4580 rule!570))))

(declare-fun res!1088545 () Bool)

(assert (=> start!250756 (=> (not res!1088545) (not e!1633437))))

(get-info :version)

(assert (=> start!250756 (= res!1088545 ((_ is Lexer!4118) thiss!28211))))

(assert (=> start!250756 e!1633437))

(declare-fun e!1633432 () Bool)

(assert (=> start!250756 e!1633432))

(assert (=> start!250756 true))

(declare-fun e!1633431 () Bool)

(assert (=> start!250756 e!1633431))

(declare-datatypes ((Token!8516 0))(
  ( (Token!8517 (value!146153 TokenValue!4745) (rule!6893 Rule!8846) (size!23089 Int) (originalCharacters!5289 List!29874)) )
))
(declare-fun token!562 () Token!8516)

(declare-fun e!1633433 () Bool)

(declare-fun inv!40214 (Token!8516) Bool)

(assert (=> start!250756 (and (inv!40214 token!562) e!1633433)))

(declare-fun e!1633436 () Bool)

(assert (=> start!250756 e!1633436))

(assert (=> start!250756 e!1633435))

(assert (=> start!250756 e!1633438))

(declare-fun b!2589517 () Bool)

(declare-fun res!1088550 () Bool)

(assert (=> b!2589517 (=> (not res!1088550) (not e!1633437))))

(declare-fun input!3654 () List!29874)

(declare-fun suffix!1684 () List!29874)

(declare-datatypes ((tuple2!29726 0))(
  ( (tuple2!29727 (_1!17405 Token!8516) (_2!17405 List!29874)) )
))
(declare-datatypes ((Option!5938 0))(
  ( (None!5937) (Some!5937 (v!32048 tuple2!29726)) )
))
(declare-fun maxPrefix!2292 (LexerInterface!4120 List!29875 List!29874) Option!5938)

(assert (=> b!2589517 (= res!1088550 (= (maxPrefix!2292 thiss!28211 rules!4580 input!3654) (Some!5937 (tuple2!29727 token!562 suffix!1684))))))

(declare-fun e!1633421 () Bool)

(declare-fun b!2589526 () Bool)

(declare-fun tp!822511 () Bool)

(assert (=> b!2589526 (= e!1633434 (and tp!822511 (inv!40210 (tag!5013 (h!35195 rs!798))) (inv!40213 (transformation!4523 (h!35195 rs!798))) e!1633421))))

(declare-fun b!2589527 () Bool)

(declare-fun res!1088547 () Bool)

(assert (=> b!2589527 (=> (not res!1088547) (not e!1633437))))

(declare-fun rulesInvariant!3620 (LexerInterface!4120 List!29875) Bool)

(assert (=> b!2589527 (= res!1088547 (rulesInvariant!3620 thiss!28211 rules!4580))))

(assert (=> b!2589528 (= e!1633421 (and tp!822515 tp!822508))))

(declare-fun b!2589529 () Bool)

(declare-fun e!1633426 () Bool)

(declare-fun tp!822512 () Bool)

(assert (=> b!2589529 (= e!1633432 (and e!1633426 tp!822512))))

(declare-fun b!2589530 () Bool)

(assert (=> b!2589530 (= e!1633437 (not e!1633425))))

(declare-fun res!1088546 () Bool)

(assert (=> b!2589530 (=> res!1088546 e!1633425)))

(declare-fun lt!910253 () Option!5938)

(assert (=> b!2589530 (= res!1088546 (not (= lt!910253 (Some!5937 (tuple2!29727 token!562 suffix!1684)))))))

(declare-fun lt!910252 () TokenValue!4745)

(declare-fun lt!910250 () List!29874)

(declare-fun lt!910247 () Int)

(assert (=> b!2589530 (= lt!910253 (Some!5937 (tuple2!29727 (Token!8517 lt!910252 rule!570 lt!910247 lt!910250) suffix!1684)))))

(declare-fun maxPrefixOneRule!1458 (LexerInterface!4120 Rule!8846 List!29874) Option!5938)

(assert (=> b!2589530 (= lt!910253 (maxPrefixOneRule!1458 thiss!28211 rule!570 input!3654))))

(declare-fun size!23090 (List!29874) Int)

(assert (=> b!2589530 (= lt!910247 (size!23090 lt!910250))))

(declare-fun apply!7028 (TokenValueInjection!8930 BalanceConc!18192) TokenValue!4745)

(declare-fun seqFromList!3163 (List!29874) BalanceConc!18192)

(assert (=> b!2589530 (= lt!910252 (apply!7028 (transformation!4523 rule!570) (seqFromList!3163 lt!910250)))))

(declare-fun lt!910249 () Unit!43642)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!621 (LexerInterface!4120 List!29875 List!29874 List!29874 List!29874 Rule!8846) Unit!43642)

(assert (=> b!2589530 (= lt!910249 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!621 thiss!28211 rules!4580 lt!910250 input!3654 suffix!1684 rule!570))))

(declare-fun list!11259 (BalanceConc!18192) List!29874)

(declare-fun charsOf!2852 (Token!8516) BalanceConc!18192)

(assert (=> b!2589530 (= lt!910250 (list!11259 (charsOf!2852 token!562)))))

(declare-fun tp!822509 () Bool)

(declare-fun b!2589531 () Bool)

(assert (=> b!2589531 (= e!1633426 (and tp!822509 (inv!40210 (tag!5013 (h!35195 rules!4580))) (inv!40213 (transformation!4523 (h!35195 rules!4580))) e!1633420))))

(declare-fun b!2589532 () Bool)

(declare-fun res!1088543 () Bool)

(assert (=> b!2589532 (=> (not res!1088543) (not e!1633437))))

(assert (=> b!2589532 (= res!1088543 (= (rule!6893 token!562) rule!570))))

(declare-fun e!1633439 () Bool)

(declare-fun tp!822522 () Bool)

(declare-fun b!2589533 () Bool)

(declare-fun inv!21 (TokenValue!4745) Bool)

(assert (=> b!2589533 (= e!1633433 (and (inv!21 (value!146153 token!562)) e!1633439 tp!822522))))

(declare-fun b!2589534 () Bool)

(declare-fun tp!822519 () Bool)

(assert (=> b!2589534 (= e!1633439 (and tp!822519 (inv!40210 (tag!5013 (rule!6893 token!562))) (inv!40213 (transformation!4523 (rule!6893 token!562))) e!1633419))))

(assert (=> b!2589535 (= e!1633422 (and tp!822506 tp!822520))))

(declare-fun b!2589536 () Bool)

(declare-fun tp_is_empty!13229 () Bool)

(declare-fun tp!822514 () Bool)

(assert (=> b!2589536 (= e!1633431 (and tp_is_empty!13229 tp!822514))))

(declare-fun b!2589537 () Bool)

(declare-fun res!1088544 () Bool)

(assert (=> b!2589537 (=> (not res!1088544) (not e!1633437))))

(assert (=> b!2589537 (= res!1088544 e!1633430)))

(declare-fun res!1088549 () Bool)

(assert (=> b!2589537 (=> (not res!1088549) (not e!1633430))))

(declare-fun ++!7313 (List!29874 List!29874) List!29874)

(assert (=> b!2589537 (= res!1088549 (= input!3654 (++!7313 lt!910251 suffix!1684)))))

(assert (=> b!2589537 (= lt!910251 (list!11259 (charsOf!2852 token!562)))))

(declare-fun b!2589538 () Bool)

(declare-fun tp!822510 () Bool)

(assert (=> b!2589538 (= e!1633436 (and tp_is_empty!13229 tp!822510))))

(declare-fun b!2589539 () Bool)

(declare-fun res!1088551 () Bool)

(assert (=> b!2589539 (=> res!1088551 e!1633425)))

(assert (=> b!2589539 (= res!1088551 (not (matchR!3600 (regex!4523 rule!570) lt!910250)))))

(assert (= (and start!250756 res!1088545) b!2589522))

(assert (= (and b!2589522 res!1088542) b!2589527))

(assert (= (and b!2589527 res!1088547) b!2589525))

(assert (= (and b!2589525 res!1088548) b!2589517))

(assert (= (and b!2589517 res!1088550) b!2589532))

(assert (= (and b!2589532 res!1088543) b!2589537))

(assert (= (and b!2589537 res!1088549) b!2589518))

(assert (= (and b!2589537 res!1088544) b!2589530))

(assert (= (and b!2589530 (not res!1088546)) b!2589539))

(assert (= (and b!2589539 (not res!1088551)) b!2589524))

(assert (= b!2589531 b!2589520))

(assert (= b!2589529 b!2589531))

(assert (= (and start!250756 ((_ is Cons!29775) rules!4580)) b!2589529))

(assert (= (and start!250756 ((_ is Cons!29774) input!3654)) b!2589536))

(assert (= b!2589534 b!2589519))

(assert (= b!2589533 b!2589534))

(assert (= start!250756 b!2589533))

(assert (= (and start!250756 ((_ is Cons!29774) suffix!1684)) b!2589538))

(assert (= b!2589526 b!2589528))

(assert (= b!2589521 b!2589526))

(assert (= (and start!250756 ((_ is Cons!29775) rs!798)) b!2589521))

(assert (= b!2589523 b!2589535))

(assert (= start!250756 b!2589523))

(declare-fun m!2925647 () Bool)

(assert (=> b!2589533 m!2925647))

(declare-fun m!2925649 () Bool)

(assert (=> b!2589527 m!2925649))

(declare-fun m!2925651 () Bool)

(assert (=> b!2589530 m!2925651))

(declare-fun m!2925653 () Bool)

(assert (=> b!2589530 m!2925653))

(assert (=> b!2589530 m!2925651))

(declare-fun m!2925655 () Bool)

(assert (=> b!2589530 m!2925655))

(declare-fun m!2925657 () Bool)

(assert (=> b!2589530 m!2925657))

(declare-fun m!2925659 () Bool)

(assert (=> b!2589530 m!2925659))

(assert (=> b!2589530 m!2925657))

(declare-fun m!2925661 () Bool)

(assert (=> b!2589530 m!2925661))

(declare-fun m!2925663 () Bool)

(assert (=> b!2589530 m!2925663))

(declare-fun m!2925665 () Bool)

(assert (=> b!2589531 m!2925665))

(declare-fun m!2925667 () Bool)

(assert (=> b!2589531 m!2925667))

(declare-fun m!2925669 () Bool)

(assert (=> b!2589522 m!2925669))

(declare-fun m!2925671 () Bool)

(assert (=> b!2589518 m!2925671))

(declare-fun m!2925673 () Bool)

(assert (=> b!2589518 m!2925673))

(declare-fun m!2925675 () Bool)

(assert (=> b!2589518 m!2925675))

(declare-fun m!2925677 () Bool)

(assert (=> b!2589517 m!2925677))

(declare-fun m!2925679 () Bool)

(assert (=> b!2589537 m!2925679))

(assert (=> b!2589537 m!2925651))

(assert (=> b!2589537 m!2925651))

(assert (=> b!2589537 m!2925653))

(declare-fun m!2925681 () Bool)

(assert (=> b!2589539 m!2925681))

(declare-fun m!2925683 () Bool)

(assert (=> b!2589534 m!2925683))

(declare-fun m!2925685 () Bool)

(assert (=> b!2589534 m!2925685))

(declare-fun m!2925687 () Bool)

(assert (=> start!250756 m!2925687))

(declare-fun m!2925689 () Bool)

(assert (=> b!2589523 m!2925689))

(declare-fun m!2925691 () Bool)

(assert (=> b!2589523 m!2925691))

(declare-fun m!2925693 () Bool)

(assert (=> b!2589524 m!2925693))

(declare-fun m!2925695 () Bool)

(assert (=> b!2589525 m!2925695))

(declare-fun m!2925697 () Bool)

(assert (=> b!2589526 m!2925697))

(declare-fun m!2925699 () Bool)

(assert (=> b!2589526 m!2925699))

(check-sat (not b!2589525) (not b_next!73647) (not b_next!73639) (not b!2589521) (not b_next!73649) (not b!2589526) (not b!2589539) tp_is_empty!13229 (not b!2589538) (not start!250756) b_and!190201 (not b!2589531) (not b!2589534) (not b!2589518) (not b!2589517) (not b!2589527) (not b!2589524) b_and!190199 (not b_next!73637) (not b_next!73651) b_and!190191 b_and!190187 (not b_next!73645) (not b!2589529) (not b!2589537) b_and!190195 (not b!2589530) (not b_next!73643) b_and!190197 b_and!190189 (not b_next!73641) (not b!2589522) (not b!2589533) (not b!2589536) b_and!190193 (not b!2589523))
(check-sat (not b_next!73647) b_and!190201 (not b_next!73639) (not b_next!73649) b_and!190199 b_and!190195 (not b_next!73643) (not b_next!73641) b_and!190193 (not b_next!73637) (not b_next!73651) b_and!190191 b_and!190187 (not b_next!73645) b_and!190197 b_and!190189)
