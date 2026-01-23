; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190756 () Bool)

(assert start!190756)

(declare-fun b!1902858 () Bool)

(declare-fun b_free!53593 () Bool)

(declare-fun b_next!54297 () Bool)

(assert (=> b!1902858 (= b_free!53593 (not b_next!54297))))

(declare-fun tp!543607 () Bool)

(declare-fun b_and!147467 () Bool)

(assert (=> b!1902858 (= tp!543607 b_and!147467)))

(declare-fun b_free!53595 () Bool)

(declare-fun b_next!54299 () Bool)

(assert (=> b!1902858 (= b_free!53595 (not b_next!54299))))

(declare-fun tp!543610 () Bool)

(declare-fun b_and!147469 () Bool)

(assert (=> b!1902858 (= tp!543610 b_and!147469)))

(declare-fun b!1902865 () Bool)

(declare-fun b_free!53597 () Bool)

(declare-fun b_next!54301 () Bool)

(assert (=> b!1902865 (= b_free!53597 (not b_next!54301))))

(declare-fun tp!543612 () Bool)

(declare-fun b_and!147471 () Bool)

(assert (=> b!1902865 (= tp!543612 b_and!147471)))

(declare-fun b_free!53599 () Bool)

(declare-fun b_next!54303 () Bool)

(assert (=> b!1902865 (= b_free!53599 (not b_next!54303))))

(declare-fun tp!543618 () Bool)

(declare-fun b_and!147473 () Bool)

(assert (=> b!1902865 (= tp!543618 b_and!147473)))

(declare-fun b!1902864 () Bool)

(declare-fun b_free!53601 () Bool)

(declare-fun b_next!54305 () Bool)

(assert (=> b!1902864 (= b_free!53601 (not b_next!54305))))

(declare-fun tp!543611 () Bool)

(declare-fun b_and!147475 () Bool)

(assert (=> b!1902864 (= tp!543611 b_and!147475)))

(declare-fun b_free!53603 () Bool)

(declare-fun b_next!54307 () Bool)

(assert (=> b!1902864 (= b_free!53603 (not b_next!54307))))

(declare-fun tp!543614 () Bool)

(declare-fun b_and!147477 () Bool)

(assert (=> b!1902864 (= tp!543614 b_and!147477)))

(declare-fun b!1902849 () Bool)

(declare-fun e!1215533 () Bool)

(declare-fun e!1215535 () Bool)

(declare-fun tp!543615 () Bool)

(assert (=> b!1902849 (= e!1215533 (and e!1215535 tp!543615))))

(declare-fun b!1902850 () Bool)

(declare-fun tp!543609 () Bool)

(declare-fun e!1215542 () Bool)

(declare-fun e!1215527 () Bool)

(declare-datatypes ((List!21536 0))(
  ( (Nil!21454) (Cons!21454 (h!26855 (_ BitVec 16)) (t!177027 List!21536)) )
))
(declare-datatypes ((TokenValue!3956 0))(
  ( (FloatLiteralValue!7912 (text!28137 List!21536)) (TokenValueExt!3955 (__x!13410 Int)) (Broken!19780 (value!120435 List!21536)) (Object!4037) (End!3956) (Def!3956) (Underscore!3956) (Match!3956) (Else!3956) (Error!3956) (Case!3956) (If!3956) (Extends!3956) (Abstract!3956) (Class!3956) (Val!3956) (DelimiterValue!7912 (del!4016 List!21536)) (KeywordValue!3962 (value!120436 List!21536)) (CommentValue!7912 (value!120437 List!21536)) (WhitespaceValue!7912 (value!120438 List!21536)) (IndentationValue!3956 (value!120439 List!21536)) (String!24897) (Int32!3956) (Broken!19781 (value!120440 List!21536)) (Boolean!3957) (Unit!35775) (OperatorValue!3959 (op!4016 List!21536)) (IdentifierValue!7912 (value!120441 List!21536)) (IdentifierValue!7913 (value!120442 List!21536)) (WhitespaceValue!7913 (value!120443 List!21536)) (True!7912) (False!7912) (Broken!19782 (value!120444 List!21536)) (Broken!19783 (value!120445 List!21536)) (True!7913) (RightBrace!3956) (RightBracket!3956) (Colon!3956) (Null!3956) (Comma!3956) (LeftBracket!3956) (False!7913) (LeftBrace!3956) (ImaginaryLiteralValue!3956 (text!28138 List!21536)) (StringLiteralValue!11868 (value!120446 List!21536)) (EOFValue!3956 (value!120447 List!21536)) (IdentValue!3956 (value!120448 List!21536)) (DelimiterValue!7913 (value!120449 List!21536)) (DedentValue!3956 (value!120450 List!21536)) (NewLineValue!3956 (value!120451 List!21536)) (IntegerValue!11868 (value!120452 (_ BitVec 32)) (text!28139 List!21536)) (IntegerValue!11869 (value!120453 Int) (text!28140 List!21536)) (Times!3956) (Or!3956) (Equal!3956) (Minus!3956) (Broken!19784 (value!120454 List!21536)) (And!3956) (Div!3956) (LessEqual!3956) (Mod!3956) (Concat!9201) (Not!3956) (Plus!3956) (SpaceValue!3956 (value!120455 List!21536)) (IntegerValue!11870 (value!120456 Int) (text!28141 List!21536)) (StringLiteralValue!11869 (text!28142 List!21536)) (FloatLiteralValue!7913 (text!28143 List!21536)) (BytesLiteralValue!3956 (value!120457 List!21536)) (CommentValue!7913 (value!120458 List!21536)) (StringLiteralValue!11870 (value!120459 List!21536)) (ErrorTokenValue!3956 (msg!4017 List!21536)) )
))
(declare-datatypes ((C!10636 0))(
  ( (C!10637 (val!6270 Int)) )
))
(declare-datatypes ((List!21537 0))(
  ( (Nil!21455) (Cons!21455 (h!26856 C!10636) (t!177028 List!21537)) )
))
(declare-datatypes ((Regex!5245 0))(
  ( (ElementMatch!5245 (c!309905 C!10636)) (Concat!9202 (regOne!11002 Regex!5245) (regTwo!11002 Regex!5245)) (EmptyExpr!5245) (Star!5245 (reg!5574 Regex!5245)) (EmptyLang!5245) (Union!5245 (regOne!11003 Regex!5245) (regTwo!11003 Regex!5245)) )
))
(declare-datatypes ((String!24898 0))(
  ( (String!24899 (value!120460 String)) )
))
(declare-datatypes ((IArray!14275 0))(
  ( (IArray!14276 (innerList!7195 List!21537)) )
))
(declare-datatypes ((Conc!7135 0))(
  ( (Node!7135 (left!17155 Conc!7135) (right!17485 Conc!7135) (csize!14500 Int) (cheight!7346 Int)) (Leaf!10508 (xs!10029 IArray!14275) (csize!14501 Int)) (Empty!7135) )
))
(declare-datatypes ((BalanceConc!14086 0))(
  ( (BalanceConc!14087 (c!309906 Conc!7135)) )
))
(declare-datatypes ((TokenValueInjection!7496 0))(
  ( (TokenValueInjection!7497 (toValue!5437 Int) (toChars!5296 Int)) )
))
(declare-datatypes ((Rule!7440 0))(
  ( (Rule!7441 (regex!3820 Regex!5245) (tag!4248 String!24898) (isSeparator!3820 Bool) (transformation!3820 TokenValueInjection!7496)) )
))
(declare-datatypes ((Token!7192 0))(
  ( (Token!7193 (value!120461 TokenValue!3956) (rule!6013 Rule!7440) (size!16918 Int) (originalCharacters!4627 List!21537)) )
))
(declare-fun separatorToken!354 () Token!7192)

(declare-fun inv!21 (TokenValue!3956) Bool)

(assert (=> b!1902850 (= e!1215542 (and (inv!21 (value!120461 separatorToken!354)) e!1215527 tp!543609))))

(declare-fun b!1902851 () Bool)

(declare-fun e!1215539 () Bool)

(declare-fun e!1215524 () Bool)

(assert (=> b!1902851 (= e!1215539 e!1215524)))

(declare-fun res!849782 () Bool)

(assert (=> b!1902851 (=> (not res!849782) (not e!1215524))))

(declare-fun lt!727766 () Rule!7440)

(declare-fun lt!727775 () List!21537)

(declare-fun matchR!2531 (Regex!5245 List!21537) Bool)

(assert (=> b!1902851 (= res!849782 (matchR!2531 (regex!3820 lt!727766) lt!727775))))

(declare-datatypes ((Option!4345 0))(
  ( (None!4344) (Some!4344 (v!26373 Rule!7440)) )
))
(declare-fun lt!727765 () Option!4345)

(declare-fun get!6662 (Option!4345) Rule!7440)

(assert (=> b!1902851 (= lt!727766 (get!6662 lt!727765))))

(declare-fun b!1902852 () Bool)

(declare-fun e!1215538 () Bool)

(declare-datatypes ((tuple2!20184 0))(
  ( (tuple2!20185 (_1!11561 Token!7192) (_2!11561 List!21537)) )
))
(declare-datatypes ((Option!4346 0))(
  ( (None!4345) (Some!4345 (v!26374 tuple2!20184)) )
))
(declare-fun lt!727767 () Option!4346)

(declare-datatypes ((List!21538 0))(
  ( (Nil!21456) (Cons!21456 (h!26857 Token!7192) (t!177029 List!21538)) )
))
(declare-fun tokens!598 () List!21538)

(declare-fun get!6663 (Option!4346) tuple2!20184)

(assert (=> b!1902852 (= e!1215538 (= (_1!11561 (get!6663 lt!727767)) (h!26857 tokens!598)))))

(declare-fun b!1902853 () Bool)

(assert (=> b!1902853 (= e!1215524 (= (rule!6013 (h!26857 tokens!598)) lt!727766))))

(declare-fun b!1902854 () Bool)

(declare-datatypes ((List!21539 0))(
  ( (Nil!21457) (Cons!21457 (h!26858 Rule!7440) (t!177030 List!21539)) )
))
(declare-fun rules!3198 () List!21539)

(declare-fun tp!543608 () Bool)

(declare-fun e!1215544 () Bool)

(declare-fun inv!28543 (String!24898) Bool)

(declare-fun inv!28546 (TokenValueInjection!7496) Bool)

(assert (=> b!1902854 (= e!1215535 (and tp!543608 (inv!28543 (tag!4248 (h!26858 rules!3198))) (inv!28546 (transformation!3820 (h!26858 rules!3198))) e!1215544))))

(declare-fun b!1902855 () Bool)

(declare-fun res!849772 () Bool)

(declare-fun e!1215526 () Bool)

(assert (=> b!1902855 (=> (not res!849772) (not e!1215526))))

(assert (=> b!1902855 (= res!849772 (isSeparator!3820 (rule!6013 separatorToken!354)))))

(declare-fun e!1215541 () Bool)

(declare-fun b!1902856 () Bool)

(declare-fun tp!543606 () Bool)

(declare-fun e!1215537 () Bool)

(assert (=> b!1902856 (= e!1215537 (and tp!543606 (inv!28543 (tag!4248 (rule!6013 (h!26857 tokens!598)))) (inv!28546 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) e!1215541))))

(declare-fun b!1902857 () Bool)

(declare-fun res!849774 () Bool)

(assert (=> b!1902857 (=> (not res!849774) (not e!1215526))))

(declare-fun isEmpty!13162 (List!21539) Bool)

(assert (=> b!1902857 (= res!849774 (not (isEmpty!13162 rules!3198)))))

(assert (=> b!1902858 (= e!1215541 (and tp!543607 tp!543610))))

(declare-fun b!1902859 () Bool)

(declare-fun res!849771 () Bool)

(assert (=> b!1902859 (=> (not res!849771) (not e!1215526))))

(declare-fun sepAndNonSepRulesDisjointChars!918 (List!21539 List!21539) Bool)

(assert (=> b!1902859 (= res!849771 (sepAndNonSepRulesDisjointChars!918 rules!3198 rules!3198))))

(declare-fun b!1902860 () Bool)

(declare-fun e!1215525 () Bool)

(assert (=> b!1902860 (= e!1215526 (not e!1215525))))

(declare-fun res!849779 () Bool)

(assert (=> b!1902860 (=> res!849779 e!1215525)))

(declare-fun lt!727772 () Bool)

(declare-fun lt!727779 () Option!4346)

(assert (=> b!1902860 (= res!849779 (or (and (not lt!727772) (= (_1!11561 (v!26374 lt!727779)) (h!26857 tokens!598))) lt!727772 (= (_1!11561 (v!26374 lt!727779)) (h!26857 tokens!598))))))

(get-info :version)

(assert (=> b!1902860 (= lt!727772 (not ((_ is Some!4345) lt!727779)))))

(declare-datatypes ((LexerInterface!3433 0))(
  ( (LexerInterfaceExt!3430 (__x!13411 Int)) (Lexer!3431) )
))
(declare-fun thiss!23328 () LexerInterface!3433)

(declare-fun lt!727764 () List!21537)

(declare-fun maxPrefix!1879 (LexerInterface!3433 List!21539 List!21537) Option!4346)

(declare-fun ++!5763 (List!21537 List!21537) List!21537)

(assert (=> b!1902860 (= lt!727779 (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 lt!727775 lt!727764)))))

(declare-fun printWithSeparatorTokenWhenNeededList!476 (LexerInterface!3433 List!21539 List!21538 Token!7192) List!21537)

(assert (=> b!1902860 (= lt!727764 (printWithSeparatorTokenWhenNeededList!476 thiss!23328 rules!3198 (t!177029 tokens!598) separatorToken!354))))

(assert (=> b!1902860 e!1215539))

(declare-fun res!849768 () Bool)

(assert (=> b!1902860 (=> (not res!849768) (not e!1215539))))

(declare-fun isDefined!3643 (Option!4345) Bool)

(assert (=> b!1902860 (= res!849768 (isDefined!3643 lt!727765))))

(declare-fun getRuleFromTag!663 (LexerInterface!3433 List!21539 String!24898) Option!4345)

(assert (=> b!1902860 (= lt!727765 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))

(declare-datatypes ((Unit!35776 0))(
  ( (Unit!35777) )
))
(declare-fun lt!727774 () Unit!35776)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!663 (LexerInterface!3433 List!21539 List!21537 Token!7192) Unit!35776)

(assert (=> b!1902860 (= lt!727774 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!663 thiss!23328 rules!3198 lt!727775 (h!26857 tokens!598)))))

(assert (=> b!1902860 e!1215538))

(declare-fun res!849780 () Bool)

(assert (=> b!1902860 (=> (not res!849780) (not e!1215538))))

(declare-fun isDefined!3644 (Option!4346) Bool)

(assert (=> b!1902860 (= res!849780 (isDefined!3644 lt!727767))))

(assert (=> b!1902860 (= lt!727767 (maxPrefix!1879 thiss!23328 rules!3198 lt!727775))))

(declare-fun lt!727777 () BalanceConc!14086)

(declare-fun list!8716 (BalanceConc!14086) List!21537)

(assert (=> b!1902860 (= lt!727775 (list!8716 lt!727777))))

(declare-fun e!1215532 () Bool)

(assert (=> b!1902860 e!1215532))

(declare-fun res!849769 () Bool)

(assert (=> b!1902860 (=> (not res!849769) (not e!1215532))))

(declare-fun lt!727768 () Option!4345)

(assert (=> b!1902860 (= res!849769 (isDefined!3643 lt!727768))))

(assert (=> b!1902860 (= lt!727768 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))

(declare-fun lt!727778 () Unit!35776)

(declare-fun lt!727773 () List!21537)

(assert (=> b!1902860 (= lt!727778 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!663 thiss!23328 rules!3198 lt!727773 separatorToken!354))))

(declare-fun charsOf!2376 (Token!7192) BalanceConc!14086)

(assert (=> b!1902860 (= lt!727773 (list!8716 (charsOf!2376 separatorToken!354)))))

(declare-fun lt!727769 () Unit!35776)

(declare-fun lemmaEqSameImage!528 (TokenValueInjection!7496 BalanceConc!14086 BalanceConc!14086) Unit!35776)

(declare-fun seqFromList!2692 (List!21537) BalanceConc!14086)

(assert (=> b!1902860 (= lt!727769 (lemmaEqSameImage!528 (transformation!3820 (rule!6013 (h!26857 tokens!598))) lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))

(declare-fun lt!727780 () Unit!35776)

(declare-fun lemmaSemiInverse!799 (TokenValueInjection!7496 BalanceConc!14086) Unit!35776)

(assert (=> b!1902860 (= lt!727780 (lemmaSemiInverse!799 (transformation!3820 (rule!6013 (h!26857 tokens!598))) lt!727777))))

(assert (=> b!1902860 (= lt!727777 (charsOf!2376 (h!26857 tokens!598)))))

(declare-fun b!1902861 () Bool)

(assert (=> b!1902861 (= e!1215525 (not (= lt!727773 Nil!21455)))))

(declare-fun lt!727770 () List!21537)

(declare-fun usedCharacters!328 (Regex!5245) List!21537)

(assert (=> b!1902861 (= lt!727770 (usedCharacters!328 (regex!3820 (rule!6013 separatorToken!354))))))

(assert (=> b!1902861 (= (++!5763 (++!5763 lt!727775 lt!727773) lt!727764) (++!5763 lt!727775 (++!5763 lt!727773 lt!727764)))))

(declare-fun lt!727776 () Unit!35776)

(declare-fun lemmaConcatAssociativity!1135 (List!21537 List!21537 List!21537) Unit!35776)

(assert (=> b!1902861 (= lt!727776 (lemmaConcatAssociativity!1135 lt!727775 lt!727773 lt!727764))))

(declare-fun b!1902862 () Bool)

(declare-fun e!1215523 () Bool)

(assert (=> b!1902862 (= e!1215532 e!1215523)))

(declare-fun res!849773 () Bool)

(assert (=> b!1902862 (=> (not res!849773) (not e!1215523))))

(declare-fun lt!727771 () Rule!7440)

(assert (=> b!1902862 (= res!849773 (matchR!2531 (regex!3820 lt!727771) lt!727773))))

(assert (=> b!1902862 (= lt!727771 (get!6662 lt!727768))))

(declare-fun b!1902848 () Bool)

(declare-fun res!849775 () Bool)

(assert (=> b!1902848 (=> (not res!849775) (not e!1215526))))

(declare-fun rulesInvariant!3040 (LexerInterface!3433 List!21539) Bool)

(assert (=> b!1902848 (= res!849775 (rulesInvariant!3040 thiss!23328 rules!3198))))

(declare-fun res!849777 () Bool)

(assert (=> start!190756 (=> (not res!849777) (not e!1215526))))

(assert (=> start!190756 (= res!849777 ((_ is Lexer!3431) thiss!23328))))

(assert (=> start!190756 e!1215526))

(assert (=> start!190756 true))

(assert (=> start!190756 e!1215533))

(declare-fun e!1215536 () Bool)

(assert (=> start!190756 e!1215536))

(declare-fun inv!28547 (Token!7192) Bool)

(assert (=> start!190756 (and (inv!28547 separatorToken!354) e!1215542)))

(declare-fun b!1902863 () Bool)

(assert (=> b!1902863 (= e!1215523 (= (rule!6013 separatorToken!354) lt!727771))))

(assert (=> b!1902864 (= e!1215544 (and tp!543611 tp!543614))))

(declare-fun e!1215531 () Bool)

(assert (=> b!1902865 (= e!1215531 (and tp!543612 tp!543618))))

(declare-fun b!1902866 () Bool)

(declare-fun res!849776 () Bool)

(assert (=> b!1902866 (=> (not res!849776) (not e!1215526))))

(declare-fun lambda!74377 () Int)

(declare-fun forall!4504 (List!21538 Int) Bool)

(assert (=> b!1902866 (= res!849776 (forall!4504 tokens!598 lambda!74377))))

(declare-fun b!1902867 () Bool)

(declare-fun res!849770 () Bool)

(assert (=> b!1902867 (=> (not res!849770) (not e!1215526))))

(declare-fun rulesProduceIndividualToken!1605 (LexerInterface!3433 List!21539 Token!7192) Bool)

(assert (=> b!1902867 (= res!849770 (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun tp!543616 () Bool)

(declare-fun b!1902868 () Bool)

(declare-fun e!1215540 () Bool)

(assert (=> b!1902868 (= e!1215536 (and (inv!28547 (h!26857 tokens!598)) e!1215540 tp!543616))))

(declare-fun b!1902869 () Bool)

(declare-fun tp!543617 () Bool)

(assert (=> b!1902869 (= e!1215540 (and (inv!21 (value!120461 (h!26857 tokens!598))) e!1215537 tp!543617))))

(declare-fun b!1902870 () Bool)

(declare-fun res!849781 () Bool)

(assert (=> b!1902870 (=> (not res!849781) (not e!1215526))))

(declare-fun rulesProduceEachTokenIndividuallyList!1164 (LexerInterface!3433 List!21539 List!21538) Bool)

(assert (=> b!1902870 (= res!849781 (rulesProduceEachTokenIndividuallyList!1164 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1902871 () Bool)

(declare-fun res!849778 () Bool)

(assert (=> b!1902871 (=> (not res!849778) (not e!1215526))))

(assert (=> b!1902871 (= res!849778 ((_ is Cons!21456) tokens!598))))

(declare-fun tp!543613 () Bool)

(declare-fun b!1902872 () Bool)

(assert (=> b!1902872 (= e!1215527 (and tp!543613 (inv!28543 (tag!4248 (rule!6013 separatorToken!354))) (inv!28546 (transformation!3820 (rule!6013 separatorToken!354))) e!1215531))))

(assert (= (and start!190756 res!849777) b!1902857))

(assert (= (and b!1902857 res!849774) b!1902848))

(assert (= (and b!1902848 res!849775) b!1902870))

(assert (= (and b!1902870 res!849781) b!1902867))

(assert (= (and b!1902867 res!849770) b!1902855))

(assert (= (and b!1902855 res!849772) b!1902866))

(assert (= (and b!1902866 res!849776) b!1902859))

(assert (= (and b!1902859 res!849771) b!1902871))

(assert (= (and b!1902871 res!849778) b!1902860))

(assert (= (and b!1902860 res!849769) b!1902862))

(assert (= (and b!1902862 res!849773) b!1902863))

(assert (= (and b!1902860 res!849780) b!1902852))

(assert (= (and b!1902860 res!849768) b!1902851))

(assert (= (and b!1902851 res!849782) b!1902853))

(assert (= (and b!1902860 (not res!849779)) b!1902861))

(assert (= b!1902854 b!1902864))

(assert (= b!1902849 b!1902854))

(assert (= (and start!190756 ((_ is Cons!21457) rules!3198)) b!1902849))

(assert (= b!1902856 b!1902858))

(assert (= b!1902869 b!1902856))

(assert (= b!1902868 b!1902869))

(assert (= (and start!190756 ((_ is Cons!21456) tokens!598)) b!1902868))

(assert (= b!1902872 b!1902865))

(assert (= b!1902850 b!1902872))

(assert (= start!190756 b!1902850))

(declare-fun m!2334133 () Bool)

(assert (=> b!1902861 m!2334133))

(declare-fun m!2334135 () Bool)

(assert (=> b!1902861 m!2334135))

(declare-fun m!2334137 () Bool)

(assert (=> b!1902861 m!2334137))

(assert (=> b!1902861 m!2334137))

(declare-fun m!2334139 () Bool)

(assert (=> b!1902861 m!2334139))

(assert (=> b!1902861 m!2334133))

(declare-fun m!2334141 () Bool)

(assert (=> b!1902861 m!2334141))

(declare-fun m!2334143 () Bool)

(assert (=> b!1902861 m!2334143))

(declare-fun m!2334145 () Bool)

(assert (=> b!1902869 m!2334145))

(declare-fun m!2334147 () Bool)

(assert (=> b!1902867 m!2334147))

(declare-fun m!2334149 () Bool)

(assert (=> b!1902851 m!2334149))

(declare-fun m!2334151 () Bool)

(assert (=> b!1902851 m!2334151))

(declare-fun m!2334153 () Bool)

(assert (=> b!1902859 m!2334153))

(declare-fun m!2334155 () Bool)

(assert (=> b!1902850 m!2334155))

(declare-fun m!2334157 () Bool)

(assert (=> start!190756 m!2334157))

(declare-fun m!2334159 () Bool)

(assert (=> b!1902870 m!2334159))

(declare-fun m!2334161 () Bool)

(assert (=> b!1902856 m!2334161))

(declare-fun m!2334163 () Bool)

(assert (=> b!1902856 m!2334163))

(declare-fun m!2334165 () Bool)

(assert (=> b!1902857 m!2334165))

(declare-fun m!2334167 () Bool)

(assert (=> b!1902860 m!2334167))

(declare-fun m!2334169 () Bool)

(assert (=> b!1902860 m!2334169))

(declare-fun m!2334171 () Bool)

(assert (=> b!1902860 m!2334171))

(declare-fun m!2334173 () Bool)

(assert (=> b!1902860 m!2334173))

(declare-fun m!2334175 () Bool)

(assert (=> b!1902860 m!2334175))

(declare-fun m!2334177 () Bool)

(assert (=> b!1902860 m!2334177))

(declare-fun m!2334179 () Bool)

(assert (=> b!1902860 m!2334179))

(declare-fun m!2334181 () Bool)

(assert (=> b!1902860 m!2334181))

(assert (=> b!1902860 m!2334179))

(declare-fun m!2334183 () Bool)

(assert (=> b!1902860 m!2334183))

(declare-fun m!2334185 () Bool)

(assert (=> b!1902860 m!2334185))

(declare-fun m!2334187 () Bool)

(assert (=> b!1902860 m!2334187))

(declare-fun m!2334189 () Bool)

(assert (=> b!1902860 m!2334189))

(declare-fun m!2334191 () Bool)

(assert (=> b!1902860 m!2334191))

(declare-fun m!2334193 () Bool)

(assert (=> b!1902860 m!2334193))

(declare-fun m!2334195 () Bool)

(assert (=> b!1902860 m!2334195))

(declare-fun m!2334197 () Bool)

(assert (=> b!1902860 m!2334197))

(assert (=> b!1902860 m!2334169))

(assert (=> b!1902860 m!2334191))

(declare-fun m!2334199 () Bool)

(assert (=> b!1902860 m!2334199))

(declare-fun m!2334201 () Bool)

(assert (=> b!1902860 m!2334201))

(declare-fun m!2334203 () Bool)

(assert (=> b!1902872 m!2334203))

(declare-fun m!2334205 () Bool)

(assert (=> b!1902872 m!2334205))

(declare-fun m!2334207 () Bool)

(assert (=> b!1902852 m!2334207))

(declare-fun m!2334209 () Bool)

(assert (=> b!1902862 m!2334209))

(declare-fun m!2334211 () Bool)

(assert (=> b!1902862 m!2334211))

(declare-fun m!2334213 () Bool)

(assert (=> b!1902868 m!2334213))

(declare-fun m!2334215 () Bool)

(assert (=> b!1902854 m!2334215))

(declare-fun m!2334217 () Bool)

(assert (=> b!1902854 m!2334217))

(declare-fun m!2334219 () Bool)

(assert (=> b!1902848 m!2334219))

(declare-fun m!2334221 () Bool)

(assert (=> b!1902866 m!2334221))

(check-sat (not b!1902849) (not b_next!54303) (not b_next!54305) b_and!147467 (not b!1902848) (not b!1902872) (not b!1902867) (not b!1902850) (not b!1902862) (not b_next!54301) (not b!1902866) (not b_next!54299) (not b!1902854) b_and!147469 (not b!1902860) (not b!1902870) (not b!1902856) (not b_next!54307) (not b!1902859) (not start!190756) (not b!1902868) (not b!1902852) (not b!1902851) (not b!1902857) (not b!1902869) b_and!147471 (not b_next!54297) b_and!147475 b_and!147477 (not b!1902861) b_and!147473)
(check-sat (not b_next!54303) (not b_next!54305) b_and!147467 b_and!147469 (not b_next!54301) (not b_next!54307) b_and!147471 (not b_next!54299) (not b_next!54297) b_and!147475 b_and!147477 b_and!147473)
(get-model)

(declare-fun d!581725 () Bool)

(declare-fun lt!727790 () Bool)

(declare-fun e!1215584 () Bool)

(assert (=> d!581725 (= lt!727790 e!1215584)))

(declare-fun res!849837 () Bool)

(assert (=> d!581725 (=> (not res!849837) (not e!1215584))))

(declare-datatypes ((IArray!14279 0))(
  ( (IArray!14280 (innerList!7197 List!21538)) )
))
(declare-datatypes ((Conc!7137 0))(
  ( (Node!7137 (left!17161 Conc!7137) (right!17491 Conc!7137) (csize!14504 Int) (cheight!7348 Int)) (Leaf!10510 (xs!10031 IArray!14279) (csize!14505 Int)) (Empty!7137) )
))
(declare-datatypes ((BalanceConc!14090 0))(
  ( (BalanceConc!14091 (c!310036 Conc!7137)) )
))
(declare-fun list!8717 (BalanceConc!14090) List!21538)

(declare-datatypes ((tuple2!20186 0))(
  ( (tuple2!20187 (_1!11562 BalanceConc!14090) (_2!11562 BalanceConc!14086)) )
))
(declare-fun lex!1519 (LexerInterface!3433 List!21539 BalanceConc!14086) tuple2!20186)

(declare-fun print!1449 (LexerInterface!3433 BalanceConc!14090) BalanceConc!14086)

(declare-fun singletonSeq!1847 (Token!7192) BalanceConc!14090)

(assert (=> d!581725 (= res!849837 (= (list!8717 (_1!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))))) (list!8717 (singletonSeq!1847 separatorToken!354))))))

(declare-fun e!1215585 () Bool)

(assert (=> d!581725 (= lt!727790 e!1215585)))

(declare-fun res!849838 () Bool)

(assert (=> d!581725 (=> (not res!849838) (not e!1215585))))

(declare-fun lt!727791 () tuple2!20186)

(declare-fun size!16920 (BalanceConc!14090) Int)

(assert (=> d!581725 (= res!849838 (= (size!16920 (_1!11562 lt!727791)) 1))))

(assert (=> d!581725 (= lt!727791 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))))))

(assert (=> d!581725 (not (isEmpty!13162 rules!3198))))

(assert (=> d!581725 (= (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 separatorToken!354) lt!727790)))

(declare-fun b!1902940 () Bool)

(declare-fun res!849839 () Bool)

(assert (=> b!1902940 (=> (not res!849839) (not e!1215585))))

(declare-fun apply!5621 (BalanceConc!14090 Int) Token!7192)

(assert (=> b!1902940 (= res!849839 (= (apply!5621 (_1!11562 lt!727791) 0) separatorToken!354))))

(declare-fun b!1902941 () Bool)

(declare-fun isEmpty!13165 (BalanceConc!14086) Bool)

(assert (=> b!1902941 (= e!1215585 (isEmpty!13165 (_2!11562 lt!727791)))))

(declare-fun b!1902942 () Bool)

(assert (=> b!1902942 (= e!1215584 (isEmpty!13165 (_2!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))))))))

(assert (= (and d!581725 res!849838) b!1902940))

(assert (= (and b!1902940 res!849839) b!1902941))

(assert (= (and d!581725 res!849837) b!1902942))

(assert (=> d!581725 m!2334165))

(declare-fun m!2334259 () Bool)

(assert (=> d!581725 m!2334259))

(declare-fun m!2334261 () Bool)

(assert (=> d!581725 m!2334261))

(declare-fun m!2334263 () Bool)

(assert (=> d!581725 m!2334263))

(assert (=> d!581725 m!2334259))

(declare-fun m!2334265 () Bool)

(assert (=> d!581725 m!2334265))

(declare-fun m!2334267 () Bool)

(assert (=> d!581725 m!2334267))

(assert (=> d!581725 m!2334259))

(assert (=> d!581725 m!2334261))

(declare-fun m!2334269 () Bool)

(assert (=> d!581725 m!2334269))

(declare-fun m!2334271 () Bool)

(assert (=> b!1902940 m!2334271))

(declare-fun m!2334273 () Bool)

(assert (=> b!1902941 m!2334273))

(assert (=> b!1902942 m!2334259))

(assert (=> b!1902942 m!2334259))

(assert (=> b!1902942 m!2334261))

(assert (=> b!1902942 m!2334261))

(assert (=> b!1902942 m!2334263))

(declare-fun m!2334275 () Bool)

(assert (=> b!1902942 m!2334275))

(assert (=> b!1902867 d!581725))

(declare-fun d!581727 () Bool)

(assert (=> d!581727 (= (inv!28543 (tag!4248 (rule!6013 (h!26857 tokens!598)))) (= (mod (str.len (value!120460 (tag!4248 (rule!6013 (h!26857 tokens!598))))) 2) 0))))

(assert (=> b!1902856 d!581727))

(declare-fun d!581729 () Bool)

(declare-fun res!849842 () Bool)

(declare-fun e!1215588 () Bool)

(assert (=> d!581729 (=> (not res!849842) (not e!1215588))))

(declare-fun semiInverseModEq!1541 (Int Int) Bool)

(assert (=> d!581729 (= res!849842 (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))))))

(assert (=> d!581729 (= (inv!28546 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) e!1215588)))

(declare-fun b!1902945 () Bool)

(declare-fun equivClasses!1468 (Int Int) Bool)

(assert (=> b!1902945 (= e!1215588 (equivClasses!1468 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))))))

(assert (= (and d!581729 res!849842) b!1902945))

(declare-fun m!2334277 () Bool)

(assert (=> d!581729 m!2334277))

(declare-fun m!2334279 () Bool)

(assert (=> b!1902945 m!2334279))

(assert (=> b!1902856 d!581729))

(declare-fun d!581731 () Bool)

(assert (=> d!581731 (= (isEmpty!13162 rules!3198) ((_ is Nil!21457) rules!3198))))

(assert (=> b!1902857 d!581731))

(declare-fun d!581733 () Bool)

(declare-fun res!849847 () Bool)

(declare-fun e!1215593 () Bool)

(assert (=> d!581733 (=> res!849847 e!1215593)))

(assert (=> d!581733 (= res!849847 ((_ is Nil!21456) tokens!598))))

(assert (=> d!581733 (= (forall!4504 tokens!598 lambda!74377) e!1215593)))

(declare-fun b!1902950 () Bool)

(declare-fun e!1215594 () Bool)

(assert (=> b!1902950 (= e!1215593 e!1215594)))

(declare-fun res!849848 () Bool)

(assert (=> b!1902950 (=> (not res!849848) (not e!1215594))))

(declare-fun dynLambda!10437 (Int Token!7192) Bool)

(assert (=> b!1902950 (= res!849848 (dynLambda!10437 lambda!74377 (h!26857 tokens!598)))))

(declare-fun b!1902951 () Bool)

(assert (=> b!1902951 (= e!1215594 (forall!4504 (t!177029 tokens!598) lambda!74377))))

(assert (= (and d!581733 (not res!849847)) b!1902950))

(assert (= (and b!1902950 res!849848) b!1902951))

(declare-fun b_lambda!62719 () Bool)

(assert (=> (not b_lambda!62719) (not b!1902950)))

(declare-fun m!2334281 () Bool)

(assert (=> b!1902950 m!2334281))

(declare-fun m!2334283 () Bool)

(assert (=> b!1902951 m!2334283))

(assert (=> b!1902866 d!581733))

(declare-fun d!581735 () Bool)

(declare-fun res!849853 () Bool)

(declare-fun e!1215599 () Bool)

(assert (=> d!581735 (=> res!849853 e!1215599)))

(assert (=> d!581735 (= res!849853 (not ((_ is Cons!21457) rules!3198)))))

(assert (=> d!581735 (= (sepAndNonSepRulesDisjointChars!918 rules!3198 rules!3198) e!1215599)))

(declare-fun b!1902956 () Bool)

(declare-fun e!1215600 () Bool)

(assert (=> b!1902956 (= e!1215599 e!1215600)))

(declare-fun res!849854 () Bool)

(assert (=> b!1902956 (=> (not res!849854) (not e!1215600))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!425 (Rule!7440 List!21539) Bool)

(assert (=> b!1902956 (= res!849854 (ruleDisjointCharsFromAllFromOtherType!425 (h!26858 rules!3198) rules!3198))))

(declare-fun b!1902957 () Bool)

(assert (=> b!1902957 (= e!1215600 (sepAndNonSepRulesDisjointChars!918 rules!3198 (t!177030 rules!3198)))))

(assert (= (and d!581735 (not res!849853)) b!1902956))

(assert (= (and b!1902956 res!849854) b!1902957))

(declare-fun m!2334285 () Bool)

(assert (=> b!1902956 m!2334285))

(declare-fun m!2334287 () Bool)

(assert (=> b!1902957 m!2334287))

(assert (=> b!1902859 d!581735))

(declare-fun d!581737 () Bool)

(declare-fun res!849857 () Bool)

(declare-fun e!1215603 () Bool)

(assert (=> d!581737 (=> (not res!849857) (not e!1215603))))

(declare-fun rulesValid!1427 (LexerInterface!3433 List!21539) Bool)

(assert (=> d!581737 (= res!849857 (rulesValid!1427 thiss!23328 rules!3198))))

(assert (=> d!581737 (= (rulesInvariant!3040 thiss!23328 rules!3198) e!1215603)))

(declare-fun b!1902960 () Bool)

(declare-datatypes ((List!21540 0))(
  ( (Nil!21458) (Cons!21458 (h!26859 String!24898) (t!177141 List!21540)) )
))
(declare-fun noDuplicateTag!1425 (LexerInterface!3433 List!21539 List!21540) Bool)

(assert (=> b!1902960 (= e!1215603 (noDuplicateTag!1425 thiss!23328 rules!3198 Nil!21458))))

(assert (= (and d!581737 res!849857) b!1902960))

(declare-fun m!2334289 () Bool)

(assert (=> d!581737 m!2334289))

(declare-fun m!2334291 () Bool)

(assert (=> b!1902960 m!2334291))

(assert (=> b!1902848 d!581737))

(declare-fun bs!413631 () Bool)

(declare-fun d!581739 () Bool)

(assert (= bs!413631 (and d!581739 b!1902866)))

(declare-fun lambda!74392 () Int)

(assert (=> bs!413631 (not (= lambda!74392 lambda!74377))))

(declare-fun b!1903076 () Bool)

(declare-fun e!1215681 () Bool)

(assert (=> b!1903076 (= e!1215681 true)))

(declare-fun b!1903075 () Bool)

(declare-fun e!1215680 () Bool)

(assert (=> b!1903075 (= e!1215680 e!1215681)))

(declare-fun b!1903074 () Bool)

(declare-fun e!1215679 () Bool)

(assert (=> b!1903074 (= e!1215679 e!1215680)))

(assert (=> d!581739 e!1215679))

(assert (= b!1903075 b!1903076))

(assert (= b!1903074 b!1903075))

(assert (= (and d!581739 ((_ is Cons!21457) rules!3198)) b!1903074))

(declare-fun order!13553 () Int)

(declare-fun order!13551 () Int)

(declare-fun dynLambda!10438 (Int Int) Int)

(declare-fun dynLambda!10439 (Int Int) Int)

(assert (=> b!1903076 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74392))))

(declare-fun order!13555 () Int)

(declare-fun dynLambda!10440 (Int Int) Int)

(assert (=> b!1903076 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74392))))

(assert (=> d!581739 true))

(declare-fun lt!727838 () Bool)

(assert (=> d!581739 (= lt!727838 (forall!4504 tokens!598 lambda!74392))))

(declare-fun e!1215669 () Bool)

(assert (=> d!581739 (= lt!727838 e!1215669)))

(declare-fun res!849886 () Bool)

(assert (=> d!581739 (=> res!849886 e!1215669)))

(assert (=> d!581739 (= res!849886 (not ((_ is Cons!21456) tokens!598)))))

(assert (=> d!581739 (not (isEmpty!13162 rules!3198))))

(assert (=> d!581739 (= (rulesProduceEachTokenIndividuallyList!1164 thiss!23328 rules!3198 tokens!598) lt!727838)))

(declare-fun b!1903060 () Bool)

(declare-fun e!1215670 () Bool)

(assert (=> b!1903060 (= e!1215669 e!1215670)))

(declare-fun res!849887 () Bool)

(assert (=> b!1903060 (=> (not res!849887) (not e!1215670))))

(assert (=> b!1903060 (= res!849887 (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 (h!26857 tokens!598)))))

(declare-fun b!1903061 () Bool)

(assert (=> b!1903061 (= e!1215670 (rulesProduceEachTokenIndividuallyList!1164 thiss!23328 rules!3198 (t!177029 tokens!598)))))

(assert (= (and d!581739 (not res!849886)) b!1903060))

(assert (= (and b!1903060 res!849887) b!1903061))

(declare-fun m!2334397 () Bool)

(assert (=> d!581739 m!2334397))

(assert (=> d!581739 m!2334165))

(declare-fun m!2334399 () Bool)

(assert (=> b!1903060 m!2334399))

(declare-fun m!2334401 () Bool)

(assert (=> b!1903061 m!2334401))

(assert (=> b!1902870 d!581739))

(declare-fun d!581761 () Bool)

(declare-fun res!849906 () Bool)

(declare-fun e!1215688 () Bool)

(assert (=> d!581761 (=> (not res!849906) (not e!1215688))))

(declare-fun isEmpty!13167 (List!21537) Bool)

(assert (=> d!581761 (= res!849906 (not (isEmpty!13167 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (=> d!581761 (= (inv!28547 (h!26857 tokens!598)) e!1215688)))

(declare-fun b!1903097 () Bool)

(declare-fun res!849907 () Bool)

(assert (=> b!1903097 (=> (not res!849907) (not e!1215688))))

(declare-fun dynLambda!10441 (Int TokenValue!3956) BalanceConc!14086)

(assert (=> b!1903097 (= res!849907 (= (originalCharacters!4627 (h!26857 tokens!598)) (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))))

(declare-fun b!1903098 () Bool)

(declare-fun size!16921 (List!21537) Int)

(assert (=> b!1903098 (= e!1215688 (= (size!16918 (h!26857 tokens!598)) (size!16921 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (= (and d!581761 res!849906) b!1903097))

(assert (= (and b!1903097 res!849907) b!1903098))

(declare-fun b_lambda!62731 () Bool)

(assert (=> (not b_lambda!62731) (not b!1903097)))

(declare-fun t!177063 () Bool)

(declare-fun tb!116073 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177063) tb!116073))

(declare-fun b!1903105 () Bool)

(declare-fun e!1215694 () Bool)

(declare-fun tp!543625 () Bool)

(declare-fun inv!28550 (Conc!7135) Bool)

(assert (=> b!1903105 (= e!1215694 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))) tp!543625))))

(declare-fun result!140352 () Bool)

(declare-fun inv!28551 (BalanceConc!14086) Bool)

(assert (=> tb!116073 (= result!140352 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))) e!1215694))))

(assert (= tb!116073 b!1903105))

(declare-fun m!2334403 () Bool)

(assert (=> b!1903105 m!2334403))

(declare-fun m!2334405 () Bool)

(assert (=> tb!116073 m!2334405))

(assert (=> b!1903097 t!177063))

(declare-fun b_and!147515 () Bool)

(assert (= b_and!147469 (and (=> t!177063 result!140352) b_and!147515)))

(declare-fun t!177065 () Bool)

(declare-fun tb!116075 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177065) tb!116075))

(declare-fun result!140356 () Bool)

(assert (= result!140356 result!140352))

(assert (=> b!1903097 t!177065))

(declare-fun b_and!147517 () Bool)

(assert (= b_and!147473 (and (=> t!177065 result!140356) b_and!147517)))

(declare-fun t!177067 () Bool)

(declare-fun tb!116077 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177067) tb!116077))

(declare-fun result!140358 () Bool)

(assert (= result!140358 result!140352))

(assert (=> b!1903097 t!177067))

(declare-fun b_and!147519 () Bool)

(assert (= b_and!147477 (and (=> t!177067 result!140358) b_and!147519)))

(declare-fun m!2334407 () Bool)

(assert (=> d!581761 m!2334407))

(declare-fun m!2334409 () Bool)

(assert (=> b!1903097 m!2334409))

(assert (=> b!1903097 m!2334409))

(declare-fun m!2334411 () Bool)

(assert (=> b!1903097 m!2334411))

(declare-fun m!2334413 () Bool)

(assert (=> b!1903098 m!2334413))

(assert (=> b!1902868 d!581761))

(declare-fun b!1903123 () Bool)

(declare-fun e!1215703 () Bool)

(declare-fun inv!15 (TokenValue!3956) Bool)

(assert (=> b!1903123 (= e!1215703 (inv!15 (value!120461 (h!26857 tokens!598))))))

(declare-fun b!1903124 () Bool)

(declare-fun e!1215702 () Bool)

(declare-fun inv!17 (TokenValue!3956) Bool)

(assert (=> b!1903124 (= e!1215702 (inv!17 (value!120461 (h!26857 tokens!598))))))

(declare-fun b!1903125 () Bool)

(declare-fun res!849917 () Bool)

(assert (=> b!1903125 (=> res!849917 e!1215703)))

(assert (=> b!1903125 (= res!849917 (not ((_ is IntegerValue!11870) (value!120461 (h!26857 tokens!598)))))))

(assert (=> b!1903125 (= e!1215702 e!1215703)))

(declare-fun d!581763 () Bool)

(declare-fun c!309946 () Bool)

(assert (=> d!581763 (= c!309946 ((_ is IntegerValue!11868) (value!120461 (h!26857 tokens!598))))))

(declare-fun e!1215701 () Bool)

(assert (=> d!581763 (= (inv!21 (value!120461 (h!26857 tokens!598))) e!1215701)))

(declare-fun b!1903126 () Bool)

(assert (=> b!1903126 (= e!1215701 e!1215702)))

(declare-fun c!309945 () Bool)

(assert (=> b!1903126 (= c!309945 ((_ is IntegerValue!11869) (value!120461 (h!26857 tokens!598))))))

(declare-fun b!1903127 () Bool)

(declare-fun inv!16 (TokenValue!3956) Bool)

(assert (=> b!1903127 (= e!1215701 (inv!16 (value!120461 (h!26857 tokens!598))))))

(assert (= (and d!581763 c!309946) b!1903127))

(assert (= (and d!581763 (not c!309946)) b!1903126))

(assert (= (and b!1903126 c!309945) b!1903124))

(assert (= (and b!1903126 (not c!309945)) b!1903125))

(assert (= (and b!1903125 (not res!849917)) b!1903123))

(declare-fun m!2334453 () Bool)

(assert (=> b!1903123 m!2334453))

(declare-fun m!2334455 () Bool)

(assert (=> b!1903124 m!2334455))

(declare-fun m!2334457 () Bool)

(assert (=> b!1903127 m!2334457))

(assert (=> b!1902869 d!581763))

(declare-fun bm!117173 () Bool)

(declare-fun call!117178 () Bool)

(assert (=> bm!117173 (= call!117178 (isEmpty!13167 lt!727775))))

(declare-fun b!1903201 () Bool)

(declare-fun e!1215743 () Bool)

(declare-fun head!4418 (List!21537) C!10636)

(assert (=> b!1903201 (= e!1215743 (= (head!4418 lt!727775) (c!309905 (regex!3820 lt!727766))))))

(declare-fun b!1903202 () Bool)

(declare-fun e!1215747 () Bool)

(declare-fun e!1215744 () Bool)

(assert (=> b!1903202 (= e!1215747 e!1215744)))

(declare-fun res!849958 () Bool)

(assert (=> b!1903202 (=> (not res!849958) (not e!1215744))))

(declare-fun lt!727866 () Bool)

(assert (=> b!1903202 (= res!849958 (not lt!727866))))

(declare-fun b!1903203 () Bool)

(declare-fun e!1215748 () Bool)

(assert (=> b!1903203 (= e!1215748 (not lt!727866))))

(declare-fun b!1903204 () Bool)

(declare-fun res!849960 () Bool)

(declare-fun e!1215745 () Bool)

(assert (=> b!1903204 (=> res!849960 e!1215745)))

(declare-fun tail!2944 (List!21537) List!21537)

(assert (=> b!1903204 (= res!849960 (not (isEmpty!13167 (tail!2944 lt!727775))))))

(declare-fun b!1903205 () Bool)

(declare-fun res!849959 () Bool)

(assert (=> b!1903205 (=> (not res!849959) (not e!1215743))))

(assert (=> b!1903205 (= res!849959 (not call!117178))))

(declare-fun b!1903206 () Bool)

(declare-fun e!1215746 () Bool)

(assert (=> b!1903206 (= e!1215746 e!1215748)))

(declare-fun c!309967 () Bool)

(assert (=> b!1903206 (= c!309967 ((_ is EmptyLang!5245) (regex!3820 lt!727766)))))

(declare-fun b!1903207 () Bool)

(declare-fun e!1215742 () Bool)

(declare-fun nullable!1591 (Regex!5245) Bool)

(assert (=> b!1903207 (= e!1215742 (nullable!1591 (regex!3820 lt!727766)))))

(declare-fun b!1903208 () Bool)

(declare-fun res!849956 () Bool)

(assert (=> b!1903208 (=> res!849956 e!1215747)))

(assert (=> b!1903208 (= res!849956 e!1215743)))

(declare-fun res!849957 () Bool)

(assert (=> b!1903208 (=> (not res!849957) (not e!1215743))))

(assert (=> b!1903208 (= res!849957 lt!727866)))

(declare-fun b!1903209 () Bool)

(declare-fun res!849955 () Bool)

(assert (=> b!1903209 (=> res!849955 e!1215747)))

(assert (=> b!1903209 (= res!849955 (not ((_ is ElementMatch!5245) (regex!3820 lt!727766))))))

(assert (=> b!1903209 (= e!1215748 e!1215747)))

(declare-fun b!1903210 () Bool)

(declare-fun derivativeStep!1350 (Regex!5245 C!10636) Regex!5245)

(assert (=> b!1903210 (= e!1215742 (matchR!2531 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)) (tail!2944 lt!727775)))))

(declare-fun d!581771 () Bool)

(assert (=> d!581771 e!1215746))

(declare-fun c!309966 () Bool)

(assert (=> d!581771 (= c!309966 ((_ is EmptyExpr!5245) (regex!3820 lt!727766)))))

(assert (=> d!581771 (= lt!727866 e!1215742)))

(declare-fun c!309965 () Bool)

(assert (=> d!581771 (= c!309965 (isEmpty!13167 lt!727775))))

(declare-fun validRegex!2115 (Regex!5245) Bool)

(assert (=> d!581771 (validRegex!2115 (regex!3820 lt!727766))))

(assert (=> d!581771 (= (matchR!2531 (regex!3820 lt!727766) lt!727775) lt!727866)))

(declare-fun b!1903211 () Bool)

(assert (=> b!1903211 (= e!1215746 (= lt!727866 call!117178))))

(declare-fun b!1903212 () Bool)

(declare-fun res!849961 () Bool)

(assert (=> b!1903212 (=> (not res!849961) (not e!1215743))))

(assert (=> b!1903212 (= res!849961 (isEmpty!13167 (tail!2944 lt!727775)))))

(declare-fun b!1903213 () Bool)

(assert (=> b!1903213 (= e!1215744 e!1215745)))

(declare-fun res!849954 () Bool)

(assert (=> b!1903213 (=> res!849954 e!1215745)))

(assert (=> b!1903213 (= res!849954 call!117178)))

(declare-fun b!1903214 () Bool)

(assert (=> b!1903214 (= e!1215745 (not (= (head!4418 lt!727775) (c!309905 (regex!3820 lt!727766)))))))

(assert (= (and d!581771 c!309965) b!1903207))

(assert (= (and d!581771 (not c!309965)) b!1903210))

(assert (= (and d!581771 c!309966) b!1903211))

(assert (= (and d!581771 (not c!309966)) b!1903206))

(assert (= (and b!1903206 c!309967) b!1903203))

(assert (= (and b!1903206 (not c!309967)) b!1903209))

(assert (= (and b!1903209 (not res!849955)) b!1903208))

(assert (= (and b!1903208 res!849957) b!1903205))

(assert (= (and b!1903205 res!849959) b!1903212))

(assert (= (and b!1903212 res!849961) b!1903201))

(assert (= (and b!1903208 (not res!849956)) b!1903202))

(assert (= (and b!1903202 res!849958) b!1903213))

(assert (= (and b!1903213 (not res!849954)) b!1903204))

(assert (= (and b!1903204 (not res!849960)) b!1903214))

(assert (= (or b!1903211 b!1903205 b!1903213) bm!117173))

(declare-fun m!2334533 () Bool)

(assert (=> b!1903204 m!2334533))

(assert (=> b!1903204 m!2334533))

(declare-fun m!2334535 () Bool)

(assert (=> b!1903204 m!2334535))

(declare-fun m!2334537 () Bool)

(assert (=> b!1903207 m!2334537))

(assert (=> b!1903212 m!2334533))

(assert (=> b!1903212 m!2334533))

(assert (=> b!1903212 m!2334535))

(declare-fun m!2334539 () Bool)

(assert (=> b!1903210 m!2334539))

(assert (=> b!1903210 m!2334539))

(declare-fun m!2334541 () Bool)

(assert (=> b!1903210 m!2334541))

(assert (=> b!1903210 m!2334533))

(assert (=> b!1903210 m!2334541))

(assert (=> b!1903210 m!2334533))

(declare-fun m!2334543 () Bool)

(assert (=> b!1903210 m!2334543))

(declare-fun m!2334545 () Bool)

(assert (=> bm!117173 m!2334545))

(assert (=> b!1903201 m!2334539))

(assert (=> d!581771 m!2334545))

(declare-fun m!2334547 () Bool)

(assert (=> d!581771 m!2334547))

(assert (=> b!1903214 m!2334539))

(assert (=> b!1902851 d!581771))

(declare-fun d!581791 () Bool)

(assert (=> d!581791 (= (get!6662 lt!727765) (v!26373 lt!727765))))

(assert (=> b!1902851 d!581791))

(declare-fun d!581793 () Bool)

(assert (=> d!581793 (= (inv!28543 (tag!4248 (rule!6013 separatorToken!354))) (= (mod (str.len (value!120460 (tag!4248 (rule!6013 separatorToken!354)))) 2) 0))))

(assert (=> b!1902872 d!581793))

(declare-fun d!581795 () Bool)

(declare-fun res!849962 () Bool)

(declare-fun e!1215749 () Bool)

(assert (=> d!581795 (=> (not res!849962) (not e!1215749))))

(assert (=> d!581795 (= res!849962 (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354)))))))

(assert (=> d!581795 (= (inv!28546 (transformation!3820 (rule!6013 separatorToken!354))) e!1215749)))

(declare-fun b!1903215 () Bool)

(assert (=> b!1903215 (= e!1215749 (equivClasses!1468 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354)))))))

(assert (= (and d!581795 res!849962) b!1903215))

(declare-fun m!2334549 () Bool)

(assert (=> d!581795 m!2334549))

(declare-fun m!2334551 () Bool)

(assert (=> b!1903215 m!2334551))

(assert (=> b!1902872 d!581795))

(declare-fun bm!117174 () Bool)

(declare-fun call!117179 () Bool)

(assert (=> bm!117174 (= call!117179 (isEmpty!13167 lt!727773))))

(declare-fun b!1903216 () Bool)

(declare-fun e!1215751 () Bool)

(assert (=> b!1903216 (= e!1215751 (= (head!4418 lt!727773) (c!309905 (regex!3820 lt!727771))))))

(declare-fun b!1903217 () Bool)

(declare-fun e!1215755 () Bool)

(declare-fun e!1215752 () Bool)

(assert (=> b!1903217 (= e!1215755 e!1215752)))

(declare-fun res!849967 () Bool)

(assert (=> b!1903217 (=> (not res!849967) (not e!1215752))))

(declare-fun lt!727867 () Bool)

(assert (=> b!1903217 (= res!849967 (not lt!727867))))

(declare-fun b!1903218 () Bool)

(declare-fun e!1215756 () Bool)

(assert (=> b!1903218 (= e!1215756 (not lt!727867))))

(declare-fun b!1903219 () Bool)

(declare-fun res!849969 () Bool)

(declare-fun e!1215753 () Bool)

(assert (=> b!1903219 (=> res!849969 e!1215753)))

(assert (=> b!1903219 (= res!849969 (not (isEmpty!13167 (tail!2944 lt!727773))))))

(declare-fun b!1903220 () Bool)

(declare-fun res!849968 () Bool)

(assert (=> b!1903220 (=> (not res!849968) (not e!1215751))))

(assert (=> b!1903220 (= res!849968 (not call!117179))))

(declare-fun b!1903221 () Bool)

(declare-fun e!1215754 () Bool)

(assert (=> b!1903221 (= e!1215754 e!1215756)))

(declare-fun c!309970 () Bool)

(assert (=> b!1903221 (= c!309970 ((_ is EmptyLang!5245) (regex!3820 lt!727771)))))

(declare-fun b!1903222 () Bool)

(declare-fun e!1215750 () Bool)

(assert (=> b!1903222 (= e!1215750 (nullable!1591 (regex!3820 lt!727771)))))

(declare-fun b!1903223 () Bool)

(declare-fun res!849965 () Bool)

(assert (=> b!1903223 (=> res!849965 e!1215755)))

(assert (=> b!1903223 (= res!849965 e!1215751)))

(declare-fun res!849966 () Bool)

(assert (=> b!1903223 (=> (not res!849966) (not e!1215751))))

(assert (=> b!1903223 (= res!849966 lt!727867)))

(declare-fun b!1903224 () Bool)

(declare-fun res!849964 () Bool)

(assert (=> b!1903224 (=> res!849964 e!1215755)))

(assert (=> b!1903224 (= res!849964 (not ((_ is ElementMatch!5245) (regex!3820 lt!727771))))))

(assert (=> b!1903224 (= e!1215756 e!1215755)))

(declare-fun b!1903225 () Bool)

(assert (=> b!1903225 (= e!1215750 (matchR!2531 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)) (tail!2944 lt!727773)))))

(declare-fun d!581797 () Bool)

(assert (=> d!581797 e!1215754))

(declare-fun c!309969 () Bool)

(assert (=> d!581797 (= c!309969 ((_ is EmptyExpr!5245) (regex!3820 lt!727771)))))

(assert (=> d!581797 (= lt!727867 e!1215750)))

(declare-fun c!309968 () Bool)

(assert (=> d!581797 (= c!309968 (isEmpty!13167 lt!727773))))

(assert (=> d!581797 (validRegex!2115 (regex!3820 lt!727771))))

(assert (=> d!581797 (= (matchR!2531 (regex!3820 lt!727771) lt!727773) lt!727867)))

(declare-fun b!1903226 () Bool)

(assert (=> b!1903226 (= e!1215754 (= lt!727867 call!117179))))

(declare-fun b!1903227 () Bool)

(declare-fun res!849970 () Bool)

(assert (=> b!1903227 (=> (not res!849970) (not e!1215751))))

(assert (=> b!1903227 (= res!849970 (isEmpty!13167 (tail!2944 lt!727773)))))

(declare-fun b!1903228 () Bool)

(assert (=> b!1903228 (= e!1215752 e!1215753)))

(declare-fun res!849963 () Bool)

(assert (=> b!1903228 (=> res!849963 e!1215753)))

(assert (=> b!1903228 (= res!849963 call!117179)))

(declare-fun b!1903229 () Bool)

(assert (=> b!1903229 (= e!1215753 (not (= (head!4418 lt!727773) (c!309905 (regex!3820 lt!727771)))))))

(assert (= (and d!581797 c!309968) b!1903222))

(assert (= (and d!581797 (not c!309968)) b!1903225))

(assert (= (and d!581797 c!309969) b!1903226))

(assert (= (and d!581797 (not c!309969)) b!1903221))

(assert (= (and b!1903221 c!309970) b!1903218))

(assert (= (and b!1903221 (not c!309970)) b!1903224))

(assert (= (and b!1903224 (not res!849964)) b!1903223))

(assert (= (and b!1903223 res!849966) b!1903220))

(assert (= (and b!1903220 res!849968) b!1903227))

(assert (= (and b!1903227 res!849970) b!1903216))

(assert (= (and b!1903223 (not res!849965)) b!1903217))

(assert (= (and b!1903217 res!849967) b!1903228))

(assert (= (and b!1903228 (not res!849963)) b!1903219))

(assert (= (and b!1903219 (not res!849969)) b!1903229))

(assert (= (or b!1903226 b!1903220 b!1903228) bm!117174))

(declare-fun m!2334553 () Bool)

(assert (=> b!1903219 m!2334553))

(assert (=> b!1903219 m!2334553))

(declare-fun m!2334555 () Bool)

(assert (=> b!1903219 m!2334555))

(declare-fun m!2334557 () Bool)

(assert (=> b!1903222 m!2334557))

(assert (=> b!1903227 m!2334553))

(assert (=> b!1903227 m!2334553))

(assert (=> b!1903227 m!2334555))

(declare-fun m!2334559 () Bool)

(assert (=> b!1903225 m!2334559))

(assert (=> b!1903225 m!2334559))

(declare-fun m!2334561 () Bool)

(assert (=> b!1903225 m!2334561))

(assert (=> b!1903225 m!2334553))

(assert (=> b!1903225 m!2334561))

(assert (=> b!1903225 m!2334553))

(declare-fun m!2334563 () Bool)

(assert (=> b!1903225 m!2334563))

(declare-fun m!2334565 () Bool)

(assert (=> bm!117174 m!2334565))

(assert (=> b!1903216 m!2334559))

(assert (=> d!581797 m!2334565))

(declare-fun m!2334567 () Bool)

(assert (=> d!581797 m!2334567))

(assert (=> b!1903229 m!2334559))

(assert (=> b!1902862 d!581797))

(declare-fun d!581799 () Bool)

(assert (=> d!581799 (= (get!6662 lt!727768) (v!26373 lt!727768))))

(assert (=> b!1902862 d!581799))

(declare-fun b!1903236 () Bool)

(declare-fun e!1215761 () Bool)

(assert (=> b!1903236 (= e!1215761 true)))

(declare-fun d!581801 () Bool)

(assert (=> d!581801 e!1215761))

(assert (= d!581801 b!1903236))

(declare-fun lambda!74395 () Int)

(declare-fun order!13557 () Int)

(declare-fun dynLambda!10442 (Int Int) Int)

(assert (=> b!1903236 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10442 order!13557 lambda!74395))))

(assert (=> b!1903236 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10442 order!13557 lambda!74395))))

(declare-fun dynLambda!10443 (Int BalanceConc!14086) TokenValue!3956)

(assert (=> d!581801 (= (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))

(declare-fun lt!727870 () Unit!35776)

(declare-fun Forall2of!183 (Int BalanceConc!14086 BalanceConc!14086) Unit!35776)

(assert (=> d!581801 (= lt!727870 (Forall2of!183 lambda!74395 lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (=> d!581801 (= (list!8716 lt!727777) (list!8716 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (=> d!581801 (= (lemmaEqSameImage!528 (transformation!3820 (rule!6013 (h!26857 tokens!598))) lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))) lt!727870)))

(declare-fun b_lambda!62735 () Bool)

(assert (=> (not b_lambda!62735) (not d!581801)))

(declare-fun t!177075 () Bool)

(declare-fun tb!116085 () Bool)

(assert (=> (and b!1902858 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177075) tb!116085))

(declare-fun result!140366 () Bool)

(assert (=> tb!116085 (= result!140366 (inv!21 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))

(declare-fun m!2334569 () Bool)

(assert (=> tb!116085 m!2334569))

(assert (=> d!581801 t!177075))

(declare-fun b_and!147527 () Bool)

(assert (= b_and!147467 (and (=> t!177075 result!140366) b_and!147527)))

(declare-fun t!177077 () Bool)

(declare-fun tb!116087 () Bool)

(assert (=> (and b!1902865 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177077) tb!116087))

(declare-fun result!140370 () Bool)

(assert (= result!140370 result!140366))

(assert (=> d!581801 t!177077))

(declare-fun b_and!147529 () Bool)

(assert (= b_and!147471 (and (=> t!177077 result!140370) b_and!147529)))

(declare-fun tb!116089 () Bool)

(declare-fun t!177079 () Bool)

(assert (=> (and b!1902864 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177079) tb!116089))

(declare-fun result!140372 () Bool)

(assert (= result!140372 result!140366))

(assert (=> d!581801 t!177079))

(declare-fun b_and!147531 () Bool)

(assert (= b_and!147475 (and (=> t!177079 result!140372) b_and!147531)))

(declare-fun b_lambda!62737 () Bool)

(assert (=> (not b_lambda!62737) (not d!581801)))

(declare-fun t!177081 () Bool)

(declare-fun tb!116091 () Bool)

(assert (=> (and b!1902858 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177081) tb!116091))

(declare-fun result!140374 () Bool)

(assert (=> tb!116091 (= result!140374 (inv!21 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(declare-fun m!2334571 () Bool)

(assert (=> tb!116091 m!2334571))

(assert (=> d!581801 t!177081))

(declare-fun b_and!147533 () Bool)

(assert (= b_and!147527 (and (=> t!177081 result!140374) b_and!147533)))

(declare-fun t!177083 () Bool)

(declare-fun tb!116093 () Bool)

(assert (=> (and b!1902865 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177083) tb!116093))

(declare-fun result!140376 () Bool)

(assert (= result!140376 result!140374))

(assert (=> d!581801 t!177083))

(declare-fun b_and!147535 () Bool)

(assert (= b_and!147529 (and (=> t!177083 result!140376) b_and!147535)))

(declare-fun tb!116095 () Bool)

(declare-fun t!177085 () Bool)

(assert (=> (and b!1902864 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177085) tb!116095))

(declare-fun result!140378 () Bool)

(assert (= result!140378 result!140374))

(assert (=> d!581801 t!177085))

(declare-fun b_and!147537 () Bool)

(assert (= b_and!147531 (and (=> t!177085 result!140378) b_and!147537)))

(assert (=> d!581801 m!2334191))

(declare-fun m!2334573 () Bool)

(assert (=> d!581801 m!2334573))

(declare-fun m!2334575 () Bool)

(assert (=> d!581801 m!2334575))

(assert (=> d!581801 m!2334191))

(declare-fun m!2334577 () Bool)

(assert (=> d!581801 m!2334577))

(assert (=> d!581801 m!2334191))

(declare-fun m!2334579 () Bool)

(assert (=> d!581801 m!2334579))

(assert (=> d!581801 m!2334189))

(assert (=> b!1902860 d!581801))

(declare-fun b!1903243 () Bool)

(declare-fun e!1215768 () Bool)

(assert (=> b!1903243 (= e!1215768 true)))

(declare-fun d!581803 () Bool)

(assert (=> d!581803 e!1215768))

(assert (= d!581803 b!1903243))

(declare-fun order!13559 () Int)

(declare-fun lambda!74398 () Int)

(declare-fun dynLambda!10444 (Int Int) Int)

(assert (=> b!1903243 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10444 order!13559 lambda!74398))))

(assert (=> b!1903243 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10444 order!13559 lambda!74398))))

(assert (=> d!581803 (= (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))) (list!8716 lt!727777))))

(declare-fun lt!727873 () Unit!35776)

(declare-fun ForallOf!387 (Int BalanceConc!14086) Unit!35776)

(assert (=> d!581803 (= lt!727873 (ForallOf!387 lambda!74398 lt!727777))))

(assert (=> d!581803 (= (lemmaSemiInverse!799 (transformation!3820 (rule!6013 (h!26857 tokens!598))) lt!727777) lt!727873)))

(declare-fun b_lambda!62739 () Bool)

(assert (=> (not b_lambda!62739) (not d!581803)))

(declare-fun t!177087 () Bool)

(declare-fun tb!116097 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177087) tb!116097))

(declare-fun b!1903244 () Bool)

(declare-fun e!1215769 () Bool)

(declare-fun tp!543627 () Bool)

(assert (=> b!1903244 (= e!1215769 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))) tp!543627))))

(declare-fun result!140380 () Bool)

(assert (=> tb!116097 (= result!140380 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))) e!1215769))))

(assert (= tb!116097 b!1903244))

(declare-fun m!2334581 () Bool)

(assert (=> b!1903244 m!2334581))

(declare-fun m!2334583 () Bool)

(assert (=> tb!116097 m!2334583))

(assert (=> d!581803 t!177087))

(declare-fun b_and!147539 () Bool)

(assert (= b_and!147515 (and (=> t!177087 result!140380) b_and!147539)))

(declare-fun tb!116099 () Bool)

(declare-fun t!177089 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177089) tb!116099))

(declare-fun result!140382 () Bool)

(assert (= result!140382 result!140380))

(assert (=> d!581803 t!177089))

(declare-fun b_and!147541 () Bool)

(assert (= b_and!147517 (and (=> t!177089 result!140382) b_and!147541)))

(declare-fun tb!116101 () Bool)

(declare-fun t!177091 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177091) tb!116101))

(declare-fun result!140384 () Bool)

(assert (= result!140384 result!140380))

(assert (=> d!581803 t!177091))

(declare-fun b_and!147543 () Bool)

(assert (= b_and!147519 (and (=> t!177091 result!140384) b_and!147543)))

(declare-fun b_lambda!62741 () Bool)

(assert (=> (not b_lambda!62741) (not d!581803)))

(assert (=> d!581803 t!177075))

(declare-fun b_and!147545 () Bool)

(assert (= b_and!147533 (and (=> t!177075 result!140366) b_and!147545)))

(assert (=> d!581803 t!177077))

(declare-fun b_and!147547 () Bool)

(assert (= b_and!147535 (and (=> t!177077 result!140370) b_and!147547)))

(assert (=> d!581803 t!177079))

(declare-fun b_and!147549 () Bool)

(assert (= b_and!147537 (and (=> t!177079 result!140372) b_and!147549)))

(declare-fun m!2334585 () Bool)

(assert (=> d!581803 m!2334585))

(declare-fun m!2334587 () Bool)

(assert (=> d!581803 m!2334587))

(assert (=> d!581803 m!2334189))

(declare-fun m!2334589 () Bool)

(assert (=> d!581803 m!2334589))

(assert (=> d!581803 m!2334575))

(assert (=> d!581803 m!2334575))

(assert (=> d!581803 m!2334585))

(assert (=> b!1902860 d!581803))

(declare-fun d!581805 () Bool)

(declare-fun list!8720 (Conc!7135) List!21537)

(assert (=> d!581805 (= (list!8716 lt!727777) (list!8720 (c!309906 lt!727777)))))

(declare-fun bs!413637 () Bool)

(assert (= bs!413637 d!581805))

(declare-fun m!2334591 () Bool)

(assert (=> bs!413637 m!2334591))

(assert (=> b!1902860 d!581805))

(declare-fun bs!413640 () Bool)

(declare-fun b!1903392 () Bool)

(assert (= bs!413640 (and b!1903392 b!1902866)))

(declare-fun lambda!74401 () Int)

(assert (=> bs!413640 (not (= lambda!74401 lambda!74377))))

(declare-fun bs!413641 () Bool)

(assert (= bs!413641 (and b!1903392 d!581739)))

(assert (=> bs!413641 (= lambda!74401 lambda!74392)))

(declare-fun b!1903396 () Bool)

(declare-fun e!1215869 () Bool)

(assert (=> b!1903396 (= e!1215869 true)))

(declare-fun b!1903395 () Bool)

(declare-fun e!1215868 () Bool)

(assert (=> b!1903395 (= e!1215868 e!1215869)))

(declare-fun b!1903394 () Bool)

(declare-fun e!1215867 () Bool)

(assert (=> b!1903394 (= e!1215867 e!1215868)))

(assert (=> b!1903392 e!1215867))

(assert (= b!1903395 b!1903396))

(assert (= b!1903394 b!1903395))

(assert (= (and b!1903392 ((_ is Cons!21457) rules!3198)) b!1903394))

(assert (=> b!1903396 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74401))))

(assert (=> b!1903396 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74401))))

(assert (=> b!1903392 true))

(declare-fun bm!117197 () Bool)

(declare-fun c!310000 () Bool)

(declare-fun c!310001 () Bool)

(declare-fun call!117206 () BalanceConc!14086)

(assert (=> bm!117197 (= call!117206 (charsOf!2376 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))))))

(declare-fun b!1903386 () Bool)

(declare-fun e!1215865 () List!21537)

(assert (=> b!1903386 (= e!1215865 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))))))

(declare-fun d!581807 () Bool)

(declare-fun c!309998 () Bool)

(assert (=> d!581807 (= c!309998 ((_ is Cons!21456) (t!177029 tokens!598)))))

(declare-fun e!1215864 () List!21537)

(assert (=> d!581807 (= (printWithSeparatorTokenWhenNeededList!476 thiss!23328 rules!3198 (t!177029 tokens!598) separatorToken!354) e!1215864)))

(declare-fun bm!117198 () Bool)

(declare-fun call!117202 () List!21537)

(declare-fun call!117203 () List!21537)

(assert (=> bm!117198 (= call!117202 call!117203)))

(declare-fun b!1903387 () Bool)

(assert (=> b!1903387 (= e!1215864 Nil!21455)))

(declare-fun bm!117199 () Bool)

(declare-fun call!117205 () BalanceConc!14086)

(assert (=> bm!117199 (= call!117205 call!117206)))

(declare-fun b!1903388 () Bool)

(declare-fun lt!727900 () Option!4346)

(assert (=> b!1903388 (= c!310001 (and ((_ is Some!4345) lt!727900) (not (= (_1!11561 (v!26374 lt!727900)) (h!26857 (t!177029 tokens!598))))))))

(declare-fun e!1215863 () List!21537)

(declare-fun e!1215866 () List!21537)

(assert (=> b!1903388 (= e!1215863 e!1215866)))

(declare-fun b!1903389 () Bool)

(assert (=> b!1903389 (= e!1215866 Nil!21455)))

(declare-fun printTailRec!956 (LexerInterface!3433 BalanceConc!14090 Int BalanceConc!14086) BalanceConc!14086)

(assert (=> b!1903389 (= (print!1449 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 tokens!598)))) (printTailRec!956 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) 0 (BalanceConc!14087 Empty!7135)))))

(declare-fun lt!727904 () Unit!35776)

(declare-fun Unit!35780 () Unit!35776)

(assert (=> b!1903389 (= lt!727904 Unit!35780)))

(declare-fun lt!727901 () List!21537)

(declare-fun lt!727902 () Unit!35776)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!718 (LexerInterface!3433 List!21539 List!21537 List!21537) Unit!35776)

(assert (=> b!1903389 (= lt!727902 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!718 thiss!23328 rules!3198 call!117202 lt!727901))))

(assert (=> b!1903389 false))

(declare-fun lt!727899 () Unit!35776)

(declare-fun Unit!35781 () Unit!35776)

(assert (=> b!1903389 (= lt!727899 Unit!35781)))

(declare-fun b!1903390 () Bool)

(declare-fun call!117204 () List!21537)

(assert (=> b!1903390 (= e!1215866 (++!5763 call!117204 lt!727901))))

(declare-fun bm!117200 () Bool)

(declare-fun c!309999 () Bool)

(assert (=> bm!117200 (= c!309999 c!310000)))

(assert (=> bm!117200 (= call!117204 (++!5763 e!1215865 (ite c!310000 lt!727901 call!117202)))))

(declare-fun b!1903391 () Bool)

(assert (=> b!1903391 (= e!1215865 call!117203)))

(declare-fun bm!117201 () Bool)

(assert (=> bm!117201 (= call!117203 (list!8716 (ite c!310000 call!117206 call!117205)))))

(assert (=> b!1903392 (= e!1215864 e!1215863)))

(declare-fun lt!727903 () Unit!35776)

(declare-fun forallContained!688 (List!21538 Int Token!7192) Unit!35776)

(assert (=> b!1903392 (= lt!727903 (forallContained!688 (t!177029 tokens!598) lambda!74401 (h!26857 (t!177029 tokens!598))))))

(assert (=> b!1903392 (= lt!727901 (printWithSeparatorTokenWhenNeededList!476 thiss!23328 rules!3198 (t!177029 (t!177029 tokens!598)) separatorToken!354))))

(assert (=> b!1903392 (= lt!727900 (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901)))))

(assert (=> b!1903392 (= c!310000 (and ((_ is Some!4345) lt!727900) (= (_1!11561 (v!26374 lt!727900)) (h!26857 (t!177029 tokens!598)))))))

(declare-fun b!1903393 () Bool)

(assert (=> b!1903393 (= e!1215863 call!117204)))

(assert (= (and d!581807 c!309998) b!1903392))

(assert (= (and d!581807 (not c!309998)) b!1903387))

(assert (= (and b!1903392 c!310000) b!1903393))

(assert (= (and b!1903392 (not c!310000)) b!1903388))

(assert (= (and b!1903388 c!310001) b!1903390))

(assert (= (and b!1903388 (not c!310001)) b!1903389))

(assert (= (or b!1903390 b!1903389) bm!117199))

(assert (= (or b!1903390 b!1903389) bm!117198))

(assert (= (or b!1903393 bm!117199) bm!117197))

(assert (= (or b!1903393 bm!117198) bm!117201))

(assert (= (or b!1903393 b!1903390) bm!117200))

(assert (= (and bm!117200 c!309999) b!1903391))

(assert (= (and bm!117200 (not c!309999)) b!1903386))

(declare-fun m!2334695 () Bool)

(assert (=> bm!117200 m!2334695))

(declare-fun m!2334697 () Bool)

(assert (=> bm!117201 m!2334697))

(declare-fun m!2334699 () Bool)

(assert (=> b!1903389 m!2334699))

(assert (=> b!1903389 m!2334699))

(declare-fun m!2334701 () Bool)

(assert (=> b!1903389 m!2334701))

(assert (=> b!1903389 m!2334699))

(declare-fun m!2334703 () Bool)

(assert (=> b!1903389 m!2334703))

(declare-fun m!2334705 () Bool)

(assert (=> b!1903389 m!2334705))

(declare-fun m!2334707 () Bool)

(assert (=> bm!117197 m!2334707))

(declare-fun m!2334709 () Bool)

(assert (=> b!1903386 m!2334709))

(assert (=> b!1903386 m!2334709))

(declare-fun m!2334711 () Bool)

(assert (=> b!1903386 m!2334711))

(assert (=> b!1903392 m!2334711))

(declare-fun m!2334713 () Bool)

(assert (=> b!1903392 m!2334713))

(assert (=> b!1903392 m!2334713))

(declare-fun m!2334715 () Bool)

(assert (=> b!1903392 m!2334715))

(assert (=> b!1903392 m!2334709))

(assert (=> b!1903392 m!2334711))

(declare-fun m!2334717 () Bool)

(assert (=> b!1903392 m!2334717))

(assert (=> b!1903392 m!2334709))

(declare-fun m!2334719 () Bool)

(assert (=> b!1903392 m!2334719))

(declare-fun m!2334721 () Bool)

(assert (=> b!1903390 m!2334721))

(assert (=> b!1902860 d!581807))

(declare-fun d!581841 () Bool)

(assert (=> d!581841 (= (list!8716 (charsOf!2376 separatorToken!354)) (list!8720 (c!309906 (charsOf!2376 separatorToken!354))))))

(declare-fun bs!413642 () Bool)

(assert (= bs!413642 d!581841))

(declare-fun m!2334723 () Bool)

(assert (=> bs!413642 m!2334723))

(assert (=> b!1902860 d!581841))

(declare-fun d!581843 () Bool)

(declare-fun e!1215872 () Bool)

(assert (=> d!581843 e!1215872))

(declare-fun res!850013 () Bool)

(assert (=> d!581843 (=> (not res!850013) (not e!1215872))))

(assert (=> d!581843 (= res!850013 (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))

(declare-fun lt!727907 () Unit!35776)

(declare-fun choose!11850 (LexerInterface!3433 List!21539 List!21537 Token!7192) Unit!35776)

(assert (=> d!581843 (= lt!727907 (choose!11850 thiss!23328 rules!3198 lt!727773 separatorToken!354))))

(assert (=> d!581843 (rulesInvariant!3040 thiss!23328 rules!3198)))

(assert (=> d!581843 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!663 thiss!23328 rules!3198 lt!727773 separatorToken!354) lt!727907)))

(declare-fun b!1903401 () Bool)

(declare-fun res!850014 () Bool)

(assert (=> b!1903401 (=> (not res!850014) (not e!1215872))))

(assert (=> b!1903401 (= res!850014 (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))) (list!8716 (charsOf!2376 separatorToken!354))))))

(declare-fun b!1903402 () Bool)

(assert (=> b!1903402 (= e!1215872 (= (rule!6013 separatorToken!354) (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))))

(assert (= (and d!581843 res!850013) b!1903401))

(assert (= (and b!1903401 res!850014) b!1903402))

(assert (=> d!581843 m!2334195))

(assert (=> d!581843 m!2334195))

(declare-fun m!2334725 () Bool)

(assert (=> d!581843 m!2334725))

(declare-fun m!2334727 () Bool)

(assert (=> d!581843 m!2334727))

(assert (=> d!581843 m!2334219))

(assert (=> b!1903401 m!2334179))

(assert (=> b!1903401 m!2334183))

(assert (=> b!1903401 m!2334195))

(declare-fun m!2334729 () Bool)

(assert (=> b!1903401 m!2334729))

(assert (=> b!1903401 m!2334183))

(declare-fun m!2334731 () Bool)

(assert (=> b!1903401 m!2334731))

(assert (=> b!1903401 m!2334195))

(assert (=> b!1903401 m!2334179))

(assert (=> b!1903402 m!2334195))

(assert (=> b!1903402 m!2334195))

(assert (=> b!1903402 m!2334729))

(assert (=> b!1902860 d!581843))

(declare-fun d!581845 () Bool)

(declare-fun isEmpty!13169 (Option!4346) Bool)

(assert (=> d!581845 (= (isDefined!3644 lt!727767) (not (isEmpty!13169 lt!727767)))))

(declare-fun bs!413643 () Bool)

(assert (= bs!413643 d!581845))

(declare-fun m!2334733 () Bool)

(assert (=> bs!413643 m!2334733))

(assert (=> b!1902860 d!581845))

(declare-fun d!581847 () Bool)

(declare-fun lt!727910 () BalanceConc!14086)

(assert (=> d!581847 (= (list!8716 lt!727910) (originalCharacters!4627 separatorToken!354))))

(assert (=> d!581847 (= lt!727910 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))

(assert (=> d!581847 (= (charsOf!2376 separatorToken!354) lt!727910)))

(declare-fun b_lambda!62765 () Bool)

(assert (=> (not b_lambda!62765) (not d!581847)))

(declare-fun tb!116123 () Bool)

(declare-fun t!177116 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177116) tb!116123))

(declare-fun b!1903403 () Bool)

(declare-fun e!1215873 () Bool)

(declare-fun tp!543684 () Bool)

(assert (=> b!1903403 (= e!1215873 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))) tp!543684))))

(declare-fun result!140414 () Bool)

(assert (=> tb!116123 (= result!140414 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))) e!1215873))))

(assert (= tb!116123 b!1903403))

(declare-fun m!2334735 () Bool)

(assert (=> b!1903403 m!2334735))

(declare-fun m!2334737 () Bool)

(assert (=> tb!116123 m!2334737))

(assert (=> d!581847 t!177116))

(declare-fun b_and!147565 () Bool)

(assert (= b_and!147539 (and (=> t!177116 result!140414) b_and!147565)))

(declare-fun t!177118 () Bool)

(declare-fun tb!116125 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177118) tb!116125))

(declare-fun result!140416 () Bool)

(assert (= result!140416 result!140414))

(assert (=> d!581847 t!177118))

(declare-fun b_and!147567 () Bool)

(assert (= b_and!147541 (and (=> t!177118 result!140416) b_and!147567)))

(declare-fun t!177120 () Bool)

(declare-fun tb!116127 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177120) tb!116127))

(declare-fun result!140418 () Bool)

(assert (= result!140418 result!140414))

(assert (=> d!581847 t!177120))

(declare-fun b_and!147569 () Bool)

(assert (= b_and!147543 (and (=> t!177120 result!140418) b_and!147569)))

(declare-fun m!2334739 () Bool)

(assert (=> d!581847 m!2334739))

(declare-fun m!2334741 () Bool)

(assert (=> d!581847 m!2334741))

(assert (=> b!1902860 d!581847))

(declare-fun d!581849 () Bool)

(declare-fun isEmpty!13170 (Option!4345) Bool)

(assert (=> d!581849 (= (isDefined!3643 lt!727765) (not (isEmpty!13170 lt!727765)))))

(declare-fun bs!413644 () Bool)

(assert (= bs!413644 d!581849))

(declare-fun m!2334743 () Bool)

(assert (=> bs!413644 m!2334743))

(assert (=> b!1902860 d!581849))

(declare-fun d!581851 () Bool)

(declare-fun e!1215880 () Bool)

(assert (=> d!581851 e!1215880))

(declare-fun res!850035 () Bool)

(assert (=> d!581851 (=> res!850035 e!1215880)))

(declare-fun lt!727923 () Option!4346)

(assert (=> d!581851 (= res!850035 (isEmpty!13169 lt!727923))))

(declare-fun e!1215881 () Option!4346)

(assert (=> d!581851 (= lt!727923 e!1215881)))

(declare-fun c!310004 () Bool)

(assert (=> d!581851 (= c!310004 (and ((_ is Cons!21457) rules!3198) ((_ is Nil!21457) (t!177030 rules!3198))))))

(declare-fun lt!727925 () Unit!35776)

(declare-fun lt!727922 () Unit!35776)

(assert (=> d!581851 (= lt!727925 lt!727922)))

(declare-fun isPrefix!1919 (List!21537 List!21537) Bool)

(assert (=> d!581851 (isPrefix!1919 lt!727775 lt!727775)))

(declare-fun lemmaIsPrefixRefl!1237 (List!21537 List!21537) Unit!35776)

(assert (=> d!581851 (= lt!727922 (lemmaIsPrefixRefl!1237 lt!727775 lt!727775))))

(declare-fun rulesValidInductive!1298 (LexerInterface!3433 List!21539) Bool)

(assert (=> d!581851 (rulesValidInductive!1298 thiss!23328 rules!3198)))

(assert (=> d!581851 (= (maxPrefix!1879 thiss!23328 rules!3198 lt!727775) lt!727923)))

(declare-fun b!1903422 () Bool)

(declare-fun res!850033 () Bool)

(declare-fun e!1215882 () Bool)

(assert (=> b!1903422 (=> (not res!850033) (not e!1215882))))

(assert (=> b!1903422 (= res!850033 (< (size!16921 (_2!11561 (get!6663 lt!727923))) (size!16921 lt!727775)))))

(declare-fun b!1903423 () Bool)

(declare-fun call!117209 () Option!4346)

(assert (=> b!1903423 (= e!1215881 call!117209)))

(declare-fun b!1903424 () Bool)

(declare-fun res!850034 () Bool)

(assert (=> b!1903424 (=> (not res!850034) (not e!1215882))))

(assert (=> b!1903424 (= res!850034 (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))))))

(declare-fun b!1903425 () Bool)

(declare-fun res!850029 () Bool)

(assert (=> b!1903425 (=> (not res!850029) (not e!1215882))))

(declare-fun apply!5624 (TokenValueInjection!7496 BalanceConc!14086) TokenValue!3956)

(assert (=> b!1903425 (= res!850029 (= (value!120461 (_1!11561 (get!6663 lt!727923))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727923)))))))))

(declare-fun b!1903426 () Bool)

(declare-fun lt!727921 () Option!4346)

(declare-fun lt!727924 () Option!4346)

(assert (=> b!1903426 (= e!1215881 (ite (and ((_ is None!4345) lt!727921) ((_ is None!4345) lt!727924)) None!4345 (ite ((_ is None!4345) lt!727924) lt!727921 (ite ((_ is None!4345) lt!727921) lt!727924 (ite (>= (size!16918 (_1!11561 (v!26374 lt!727921))) (size!16918 (_1!11561 (v!26374 lt!727924)))) lt!727921 lt!727924)))))))

(assert (=> b!1903426 (= lt!727921 call!117209)))

(assert (=> b!1903426 (= lt!727924 (maxPrefix!1879 thiss!23328 (t!177030 rules!3198) lt!727775))))

(declare-fun bm!117204 () Bool)

(declare-fun maxPrefixOneRule!1201 (LexerInterface!3433 Rule!7440 List!21537) Option!4346)

(assert (=> bm!117204 (= call!117209 (maxPrefixOneRule!1201 thiss!23328 (h!26858 rules!3198) lt!727775))))

(declare-fun b!1903427 () Bool)

(declare-fun res!850031 () Bool)

(assert (=> b!1903427 (=> (not res!850031) (not e!1215882))))

(assert (=> b!1903427 (= res!850031 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))) (_2!11561 (get!6663 lt!727923))) lt!727775))))

(declare-fun b!1903428 () Bool)

(assert (=> b!1903428 (= e!1215880 e!1215882)))

(declare-fun res!850032 () Bool)

(assert (=> b!1903428 (=> (not res!850032) (not e!1215882))))

(assert (=> b!1903428 (= res!850032 (isDefined!3644 lt!727923))))

(declare-fun b!1903429 () Bool)

(declare-fun res!850030 () Bool)

(assert (=> b!1903429 (=> (not res!850030) (not e!1215882))))

(assert (=> b!1903429 (= res!850030 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))) (originalCharacters!4627 (_1!11561 (get!6663 lt!727923)))))))

(declare-fun b!1903430 () Bool)

(declare-fun contains!3847 (List!21539 Rule!7440) Bool)

(assert (=> b!1903430 (= e!1215882 (contains!3847 rules!3198 (rule!6013 (_1!11561 (get!6663 lt!727923)))))))

(assert (= (and d!581851 c!310004) b!1903423))

(assert (= (and d!581851 (not c!310004)) b!1903426))

(assert (= (or b!1903423 b!1903426) bm!117204))

(assert (= (and d!581851 (not res!850035)) b!1903428))

(assert (= (and b!1903428 res!850032) b!1903429))

(assert (= (and b!1903429 res!850030) b!1903422))

(assert (= (and b!1903422 res!850033) b!1903427))

(assert (= (and b!1903427 res!850031) b!1903425))

(assert (= (and b!1903425 res!850029) b!1903424))

(assert (= (and b!1903424 res!850034) b!1903430))

(declare-fun m!2334745 () Bool)

(assert (=> d!581851 m!2334745))

(declare-fun m!2334747 () Bool)

(assert (=> d!581851 m!2334747))

(declare-fun m!2334749 () Bool)

(assert (=> d!581851 m!2334749))

(declare-fun m!2334751 () Bool)

(assert (=> d!581851 m!2334751))

(declare-fun m!2334753 () Bool)

(assert (=> b!1903430 m!2334753))

(declare-fun m!2334755 () Bool)

(assert (=> b!1903430 m!2334755))

(declare-fun m!2334757 () Bool)

(assert (=> b!1903426 m!2334757))

(assert (=> b!1903429 m!2334753))

(declare-fun m!2334759 () Bool)

(assert (=> b!1903429 m!2334759))

(assert (=> b!1903429 m!2334759))

(declare-fun m!2334761 () Bool)

(assert (=> b!1903429 m!2334761))

(assert (=> b!1903427 m!2334753))

(assert (=> b!1903427 m!2334759))

(assert (=> b!1903427 m!2334759))

(assert (=> b!1903427 m!2334761))

(assert (=> b!1903427 m!2334761))

(declare-fun m!2334763 () Bool)

(assert (=> b!1903427 m!2334763))

(assert (=> b!1903422 m!2334753))

(declare-fun m!2334765 () Bool)

(assert (=> b!1903422 m!2334765))

(declare-fun m!2334767 () Bool)

(assert (=> b!1903422 m!2334767))

(declare-fun m!2334769 () Bool)

(assert (=> bm!117204 m!2334769))

(assert (=> b!1903425 m!2334753))

(declare-fun m!2334771 () Bool)

(assert (=> b!1903425 m!2334771))

(assert (=> b!1903425 m!2334771))

(declare-fun m!2334773 () Bool)

(assert (=> b!1903425 m!2334773))

(assert (=> b!1903424 m!2334753))

(assert (=> b!1903424 m!2334759))

(assert (=> b!1903424 m!2334759))

(assert (=> b!1903424 m!2334761))

(assert (=> b!1903424 m!2334761))

(declare-fun m!2334775 () Bool)

(assert (=> b!1903424 m!2334775))

(declare-fun m!2334777 () Bool)

(assert (=> b!1903428 m!2334777))

(assert (=> b!1902860 d!581851))

(declare-fun d!581853 () Bool)

(declare-fun e!1215883 () Bool)

(assert (=> d!581853 e!1215883))

(declare-fun res!850036 () Bool)

(assert (=> d!581853 (=> (not res!850036) (not e!1215883))))

(assert (=> d!581853 (= res!850036 (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))

(declare-fun lt!727926 () Unit!35776)

(assert (=> d!581853 (= lt!727926 (choose!11850 thiss!23328 rules!3198 lt!727775 (h!26857 tokens!598)))))

(assert (=> d!581853 (rulesInvariant!3040 thiss!23328 rules!3198)))

(assert (=> d!581853 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!663 thiss!23328 rules!3198 lt!727775 (h!26857 tokens!598)) lt!727926)))

(declare-fun b!1903431 () Bool)

(declare-fun res!850037 () Bool)

(assert (=> b!1903431 (=> (not res!850037) (not e!1215883))))

(assert (=> b!1903431 (= res!850037 (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))) (list!8716 (charsOf!2376 (h!26857 tokens!598)))))))

(declare-fun b!1903432 () Bool)

(assert (=> b!1903432 (= e!1215883 (= (rule!6013 (h!26857 tokens!598)) (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))

(assert (= (and d!581853 res!850036) b!1903431))

(assert (= (and b!1903431 res!850037) b!1903432))

(assert (=> d!581853 m!2334185))

(assert (=> d!581853 m!2334185))

(declare-fun m!2334779 () Bool)

(assert (=> d!581853 m!2334779))

(declare-fun m!2334781 () Bool)

(assert (=> d!581853 m!2334781))

(assert (=> d!581853 m!2334219))

(assert (=> b!1903431 m!2334181))

(declare-fun m!2334783 () Bool)

(assert (=> b!1903431 m!2334783))

(assert (=> b!1903431 m!2334185))

(declare-fun m!2334785 () Bool)

(assert (=> b!1903431 m!2334785))

(assert (=> b!1903431 m!2334783))

(declare-fun m!2334787 () Bool)

(assert (=> b!1903431 m!2334787))

(assert (=> b!1903431 m!2334185))

(assert (=> b!1903431 m!2334181))

(assert (=> b!1903432 m!2334185))

(assert (=> b!1903432 m!2334185))

(assert (=> b!1903432 m!2334785))

(assert (=> b!1902860 d!581853))

(declare-fun d!581855 () Bool)

(declare-fun e!1215884 () Bool)

(assert (=> d!581855 e!1215884))

(declare-fun res!850044 () Bool)

(assert (=> d!581855 (=> res!850044 e!1215884)))

(declare-fun lt!727929 () Option!4346)

(assert (=> d!581855 (= res!850044 (isEmpty!13169 lt!727929))))

(declare-fun e!1215885 () Option!4346)

(assert (=> d!581855 (= lt!727929 e!1215885)))

(declare-fun c!310005 () Bool)

(assert (=> d!581855 (= c!310005 (and ((_ is Cons!21457) rules!3198) ((_ is Nil!21457) (t!177030 rules!3198))))))

(declare-fun lt!727931 () Unit!35776)

(declare-fun lt!727928 () Unit!35776)

(assert (=> d!581855 (= lt!727931 lt!727928)))

(assert (=> d!581855 (isPrefix!1919 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764))))

(assert (=> d!581855 (= lt!727928 (lemmaIsPrefixRefl!1237 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764)))))

(assert (=> d!581855 (rulesValidInductive!1298 thiss!23328 rules!3198)))

(assert (=> d!581855 (= (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 lt!727775 lt!727764)) lt!727929)))

(declare-fun b!1903433 () Bool)

(declare-fun res!850042 () Bool)

(declare-fun e!1215886 () Bool)

(assert (=> b!1903433 (=> (not res!850042) (not e!1215886))))

(assert (=> b!1903433 (= res!850042 (< (size!16921 (_2!11561 (get!6663 lt!727929))) (size!16921 (++!5763 lt!727775 lt!727764))))))

(declare-fun b!1903434 () Bool)

(declare-fun call!117210 () Option!4346)

(assert (=> b!1903434 (= e!1215885 call!117210)))

(declare-fun b!1903435 () Bool)

(declare-fun res!850043 () Bool)

(assert (=> b!1903435 (=> (not res!850043) (not e!1215886))))

(assert (=> b!1903435 (= res!850043 (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))))))

(declare-fun b!1903436 () Bool)

(declare-fun res!850038 () Bool)

(assert (=> b!1903436 (=> (not res!850038) (not e!1215886))))

(assert (=> b!1903436 (= res!850038 (= (value!120461 (_1!11561 (get!6663 lt!727929))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727929)))))))))

(declare-fun b!1903437 () Bool)

(declare-fun lt!727927 () Option!4346)

(declare-fun lt!727930 () Option!4346)

(assert (=> b!1903437 (= e!1215885 (ite (and ((_ is None!4345) lt!727927) ((_ is None!4345) lt!727930)) None!4345 (ite ((_ is None!4345) lt!727930) lt!727927 (ite ((_ is None!4345) lt!727927) lt!727930 (ite (>= (size!16918 (_1!11561 (v!26374 lt!727927))) (size!16918 (_1!11561 (v!26374 lt!727930)))) lt!727927 lt!727930)))))))

(assert (=> b!1903437 (= lt!727927 call!117210)))

(assert (=> b!1903437 (= lt!727930 (maxPrefix!1879 thiss!23328 (t!177030 rules!3198) (++!5763 lt!727775 lt!727764)))))

(declare-fun bm!117205 () Bool)

(assert (=> bm!117205 (= call!117210 (maxPrefixOneRule!1201 thiss!23328 (h!26858 rules!3198) (++!5763 lt!727775 lt!727764)))))

(declare-fun b!1903438 () Bool)

(declare-fun res!850040 () Bool)

(assert (=> b!1903438 (=> (not res!850040) (not e!1215886))))

(assert (=> b!1903438 (= res!850040 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))) (_2!11561 (get!6663 lt!727929))) (++!5763 lt!727775 lt!727764)))))

(declare-fun b!1903439 () Bool)

(assert (=> b!1903439 (= e!1215884 e!1215886)))

(declare-fun res!850041 () Bool)

(assert (=> b!1903439 (=> (not res!850041) (not e!1215886))))

(assert (=> b!1903439 (= res!850041 (isDefined!3644 lt!727929))))

(declare-fun b!1903440 () Bool)

(declare-fun res!850039 () Bool)

(assert (=> b!1903440 (=> (not res!850039) (not e!1215886))))

(assert (=> b!1903440 (= res!850039 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))) (originalCharacters!4627 (_1!11561 (get!6663 lt!727929)))))))

(declare-fun b!1903441 () Bool)

(assert (=> b!1903441 (= e!1215886 (contains!3847 rules!3198 (rule!6013 (_1!11561 (get!6663 lt!727929)))))))

(assert (= (and d!581855 c!310005) b!1903434))

(assert (= (and d!581855 (not c!310005)) b!1903437))

(assert (= (or b!1903434 b!1903437) bm!117205))

(assert (= (and d!581855 (not res!850044)) b!1903439))

(assert (= (and b!1903439 res!850041) b!1903440))

(assert (= (and b!1903440 res!850039) b!1903433))

(assert (= (and b!1903433 res!850042) b!1903438))

(assert (= (and b!1903438 res!850040) b!1903436))

(assert (= (and b!1903436 res!850038) b!1903435))

(assert (= (and b!1903435 res!850043) b!1903441))

(declare-fun m!2334789 () Bool)

(assert (=> d!581855 m!2334789))

(assert (=> d!581855 m!2334169))

(assert (=> d!581855 m!2334169))

(declare-fun m!2334791 () Bool)

(assert (=> d!581855 m!2334791))

(assert (=> d!581855 m!2334169))

(assert (=> d!581855 m!2334169))

(declare-fun m!2334793 () Bool)

(assert (=> d!581855 m!2334793))

(assert (=> d!581855 m!2334751))

(declare-fun m!2334795 () Bool)

(assert (=> b!1903441 m!2334795))

(declare-fun m!2334797 () Bool)

(assert (=> b!1903441 m!2334797))

(assert (=> b!1903437 m!2334169))

(declare-fun m!2334799 () Bool)

(assert (=> b!1903437 m!2334799))

(assert (=> b!1903440 m!2334795))

(declare-fun m!2334801 () Bool)

(assert (=> b!1903440 m!2334801))

(assert (=> b!1903440 m!2334801))

(declare-fun m!2334803 () Bool)

(assert (=> b!1903440 m!2334803))

(assert (=> b!1903438 m!2334795))

(assert (=> b!1903438 m!2334801))

(assert (=> b!1903438 m!2334801))

(assert (=> b!1903438 m!2334803))

(assert (=> b!1903438 m!2334803))

(declare-fun m!2334805 () Bool)

(assert (=> b!1903438 m!2334805))

(assert (=> b!1903433 m!2334795))

(declare-fun m!2334807 () Bool)

(assert (=> b!1903433 m!2334807))

(assert (=> b!1903433 m!2334169))

(declare-fun m!2334809 () Bool)

(assert (=> b!1903433 m!2334809))

(assert (=> bm!117205 m!2334169))

(declare-fun m!2334811 () Bool)

(assert (=> bm!117205 m!2334811))

(assert (=> b!1903436 m!2334795))

(declare-fun m!2334813 () Bool)

(assert (=> b!1903436 m!2334813))

(assert (=> b!1903436 m!2334813))

(declare-fun m!2334815 () Bool)

(assert (=> b!1903436 m!2334815))

(assert (=> b!1903435 m!2334795))

(assert (=> b!1903435 m!2334801))

(assert (=> b!1903435 m!2334801))

(assert (=> b!1903435 m!2334803))

(assert (=> b!1903435 m!2334803))

(declare-fun m!2334817 () Bool)

(assert (=> b!1903435 m!2334817))

(declare-fun m!2334819 () Bool)

(assert (=> b!1903439 m!2334819))

(assert (=> b!1902860 d!581855))

(declare-fun d!581857 () Bool)

(declare-fun lt!727932 () BalanceConc!14086)

(assert (=> d!581857 (= (list!8716 lt!727932) (originalCharacters!4627 (h!26857 tokens!598)))))

(assert (=> d!581857 (= lt!727932 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))

(assert (=> d!581857 (= (charsOf!2376 (h!26857 tokens!598)) lt!727932)))

(declare-fun b_lambda!62767 () Bool)

(assert (=> (not b_lambda!62767) (not d!581857)))

(assert (=> d!581857 t!177063))

(declare-fun b_and!147571 () Bool)

(assert (= b_and!147565 (and (=> t!177063 result!140352) b_and!147571)))

(assert (=> d!581857 t!177065))

(declare-fun b_and!147573 () Bool)

(assert (= b_and!147567 (and (=> t!177065 result!140356) b_and!147573)))

(assert (=> d!581857 t!177067))

(declare-fun b_and!147575 () Bool)

(assert (= b_and!147569 (and (=> t!177067 result!140358) b_and!147575)))

(declare-fun m!2334821 () Bool)

(assert (=> d!581857 m!2334821))

(assert (=> d!581857 m!2334409))

(assert (=> b!1902860 d!581857))

(declare-fun d!581859 () Bool)

(declare-fun fromListB!1220 (List!21537) BalanceConc!14086)

(assert (=> d!581859 (= (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))) (fromListB!1220 (originalCharacters!4627 (h!26857 tokens!598))))))

(declare-fun bs!413645 () Bool)

(assert (= bs!413645 d!581859))

(declare-fun m!2334823 () Bool)

(assert (=> bs!413645 m!2334823))

(assert (=> b!1902860 d!581859))

(declare-fun d!581861 () Bool)

(assert (=> d!581861 (= (isDefined!3643 lt!727768) (not (isEmpty!13170 lt!727768)))))

(declare-fun bs!413646 () Bool)

(assert (= bs!413646 d!581861))

(declare-fun m!2334825 () Bool)

(assert (=> bs!413646 m!2334825))

(assert (=> b!1902860 d!581861))

(declare-fun b!1903454 () Bool)

(declare-fun e!1215896 () Bool)

(declare-fun e!1215898 () Bool)

(assert (=> b!1903454 (= e!1215896 e!1215898)))

(declare-fun res!850050 () Bool)

(assert (=> b!1903454 (=> (not res!850050) (not e!1215898))))

(declare-fun lt!727941 () Option!4345)

(assert (=> b!1903454 (= res!850050 (contains!3847 rules!3198 (get!6662 lt!727941)))))

(declare-fun b!1903455 () Bool)

(declare-fun e!1215897 () Option!4345)

(assert (=> b!1903455 (= e!1215897 (Some!4344 (h!26858 rules!3198)))))

(declare-fun b!1903456 () Bool)

(assert (=> b!1903456 (= e!1215898 (= (tag!4248 (get!6662 lt!727941)) (tag!4248 (rule!6013 separatorToken!354))))))

(declare-fun b!1903457 () Bool)

(declare-fun e!1215895 () Option!4345)

(assert (=> b!1903457 (= e!1215897 e!1215895)))

(declare-fun c!310010 () Bool)

(assert (=> b!1903457 (= c!310010 (and ((_ is Cons!21457) rules!3198) (not (= (tag!4248 (h!26858 rules!3198)) (tag!4248 (rule!6013 separatorToken!354))))))))

(declare-fun b!1903458 () Bool)

(declare-fun lt!727940 () Unit!35776)

(declare-fun lt!727939 () Unit!35776)

(assert (=> b!1903458 (= lt!727940 lt!727939)))

(assert (=> b!1903458 (rulesInvariant!3040 thiss!23328 (t!177030 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!252 (LexerInterface!3433 Rule!7440 List!21539) Unit!35776)

(assert (=> b!1903458 (= lt!727939 (lemmaInvariantOnRulesThenOnTail!252 thiss!23328 (h!26858 rules!3198) (t!177030 rules!3198)))))

(assert (=> b!1903458 (= e!1215895 (getRuleFromTag!663 thiss!23328 (t!177030 rules!3198) (tag!4248 (rule!6013 separatorToken!354))))))

(declare-fun d!581863 () Bool)

(assert (=> d!581863 e!1215896))

(declare-fun res!850049 () Bool)

(assert (=> d!581863 (=> res!850049 e!1215896)))

(assert (=> d!581863 (= res!850049 (isEmpty!13170 lt!727941))))

(assert (=> d!581863 (= lt!727941 e!1215897)))

(declare-fun c!310011 () Bool)

(assert (=> d!581863 (= c!310011 (and ((_ is Cons!21457) rules!3198) (= (tag!4248 (h!26858 rules!3198)) (tag!4248 (rule!6013 separatorToken!354)))))))

(assert (=> d!581863 (rulesInvariant!3040 thiss!23328 rules!3198)))

(assert (=> d!581863 (= (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))) lt!727941)))

(declare-fun b!1903459 () Bool)

(assert (=> b!1903459 (= e!1215895 None!4344)))

(assert (= (and d!581863 c!310011) b!1903455))

(assert (= (and d!581863 (not c!310011)) b!1903457))

(assert (= (and b!1903457 c!310010) b!1903458))

(assert (= (and b!1903457 (not c!310010)) b!1903459))

(assert (= (and d!581863 (not res!850049)) b!1903454))

(assert (= (and b!1903454 res!850050) b!1903456))

(declare-fun m!2334827 () Bool)

(assert (=> b!1903454 m!2334827))

(assert (=> b!1903454 m!2334827))

(declare-fun m!2334829 () Bool)

(assert (=> b!1903454 m!2334829))

(assert (=> b!1903456 m!2334827))

(declare-fun m!2334831 () Bool)

(assert (=> b!1903458 m!2334831))

(declare-fun m!2334833 () Bool)

(assert (=> b!1903458 m!2334833))

(declare-fun m!2334835 () Bool)

(assert (=> b!1903458 m!2334835))

(declare-fun m!2334837 () Bool)

(assert (=> d!581863 m!2334837))

(assert (=> d!581863 m!2334219))

(assert (=> b!1902860 d!581863))

(declare-fun b!1903460 () Bool)

(declare-fun e!1215900 () Bool)

(declare-fun e!1215902 () Bool)

(assert (=> b!1903460 (= e!1215900 e!1215902)))

(declare-fun res!850052 () Bool)

(assert (=> b!1903460 (=> (not res!850052) (not e!1215902))))

(declare-fun lt!727944 () Option!4345)

(assert (=> b!1903460 (= res!850052 (contains!3847 rules!3198 (get!6662 lt!727944)))))

(declare-fun b!1903461 () Bool)

(declare-fun e!1215901 () Option!4345)

(assert (=> b!1903461 (= e!1215901 (Some!4344 (h!26858 rules!3198)))))

(declare-fun b!1903462 () Bool)

(assert (=> b!1903462 (= e!1215902 (= (tag!4248 (get!6662 lt!727944)) (tag!4248 (rule!6013 (h!26857 tokens!598)))))))

(declare-fun b!1903463 () Bool)

(declare-fun e!1215899 () Option!4345)

(assert (=> b!1903463 (= e!1215901 e!1215899)))

(declare-fun c!310012 () Bool)

(assert (=> b!1903463 (= c!310012 (and ((_ is Cons!21457) rules!3198) (not (= (tag!4248 (h!26858 rules!3198)) (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))

(declare-fun b!1903464 () Bool)

(declare-fun lt!727943 () Unit!35776)

(declare-fun lt!727942 () Unit!35776)

(assert (=> b!1903464 (= lt!727943 lt!727942)))

(assert (=> b!1903464 (rulesInvariant!3040 thiss!23328 (t!177030 rules!3198))))

(assert (=> b!1903464 (= lt!727942 (lemmaInvariantOnRulesThenOnTail!252 thiss!23328 (h!26858 rules!3198) (t!177030 rules!3198)))))

(assert (=> b!1903464 (= e!1215899 (getRuleFromTag!663 thiss!23328 (t!177030 rules!3198) (tag!4248 (rule!6013 (h!26857 tokens!598)))))))

(declare-fun d!581865 () Bool)

(assert (=> d!581865 e!1215900))

(declare-fun res!850051 () Bool)

(assert (=> d!581865 (=> res!850051 e!1215900)))

(assert (=> d!581865 (= res!850051 (isEmpty!13170 lt!727944))))

(assert (=> d!581865 (= lt!727944 e!1215901)))

(declare-fun c!310013 () Bool)

(assert (=> d!581865 (= c!310013 (and ((_ is Cons!21457) rules!3198) (= (tag!4248 (h!26858 rules!3198)) (tag!4248 (rule!6013 (h!26857 tokens!598))))))))

(assert (=> d!581865 (rulesInvariant!3040 thiss!23328 rules!3198)))

(assert (=> d!581865 (= (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))) lt!727944)))

(declare-fun b!1903465 () Bool)

(assert (=> b!1903465 (= e!1215899 None!4344)))

(assert (= (and d!581865 c!310013) b!1903461))

(assert (= (and d!581865 (not c!310013)) b!1903463))

(assert (= (and b!1903463 c!310012) b!1903464))

(assert (= (and b!1903463 (not c!310012)) b!1903465))

(assert (= (and d!581865 (not res!850051)) b!1903460))

(assert (= (and b!1903460 res!850052) b!1903462))

(declare-fun m!2334839 () Bool)

(assert (=> b!1903460 m!2334839))

(assert (=> b!1903460 m!2334839))

(declare-fun m!2334841 () Bool)

(assert (=> b!1903460 m!2334841))

(assert (=> b!1903462 m!2334839))

(assert (=> b!1903464 m!2334831))

(assert (=> b!1903464 m!2334833))

(declare-fun m!2334843 () Bool)

(assert (=> b!1903464 m!2334843))

(declare-fun m!2334845 () Bool)

(assert (=> d!581865 m!2334845))

(assert (=> d!581865 m!2334219))

(assert (=> b!1902860 d!581865))

(declare-fun d!581867 () Bool)

(declare-fun e!1215908 () Bool)

(assert (=> d!581867 e!1215908))

(declare-fun res!850057 () Bool)

(assert (=> d!581867 (=> (not res!850057) (not e!1215908))))

(declare-fun lt!727947 () List!21537)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3139 (List!21537) (InoxSet C!10636))

(assert (=> d!581867 (= res!850057 (= (content!3139 lt!727947) ((_ map or) (content!3139 lt!727775) (content!3139 lt!727764))))))

(declare-fun e!1215907 () List!21537)

(assert (=> d!581867 (= lt!727947 e!1215907)))

(declare-fun c!310016 () Bool)

(assert (=> d!581867 (= c!310016 ((_ is Nil!21455) lt!727775))))

(assert (=> d!581867 (= (++!5763 lt!727775 lt!727764) lt!727947)))

(declare-fun b!1903475 () Bool)

(assert (=> b!1903475 (= e!1215907 (Cons!21455 (h!26856 lt!727775) (++!5763 (t!177028 lt!727775) lt!727764)))))

(declare-fun b!1903476 () Bool)

(declare-fun res!850058 () Bool)

(assert (=> b!1903476 (=> (not res!850058) (not e!1215908))))

(assert (=> b!1903476 (= res!850058 (= (size!16921 lt!727947) (+ (size!16921 lt!727775) (size!16921 lt!727764))))))

(declare-fun b!1903474 () Bool)

(assert (=> b!1903474 (= e!1215907 lt!727764)))

(declare-fun b!1903477 () Bool)

(assert (=> b!1903477 (= e!1215908 (or (not (= lt!727764 Nil!21455)) (= lt!727947 lt!727775)))))

(assert (= (and d!581867 c!310016) b!1903474))

(assert (= (and d!581867 (not c!310016)) b!1903475))

(assert (= (and d!581867 res!850057) b!1903476))

(assert (= (and b!1903476 res!850058) b!1903477))

(declare-fun m!2334847 () Bool)

(assert (=> d!581867 m!2334847))

(declare-fun m!2334849 () Bool)

(assert (=> d!581867 m!2334849))

(declare-fun m!2334851 () Bool)

(assert (=> d!581867 m!2334851))

(declare-fun m!2334853 () Bool)

(assert (=> b!1903475 m!2334853))

(declare-fun m!2334855 () Bool)

(assert (=> b!1903476 m!2334855))

(assert (=> b!1903476 m!2334767))

(declare-fun m!2334857 () Bool)

(assert (=> b!1903476 m!2334857))

(assert (=> b!1902860 d!581867))

(declare-fun b!1903494 () Bool)

(declare-fun c!310025 () Bool)

(assert (=> b!1903494 (= c!310025 ((_ is Star!5245) (regex!3820 (rule!6013 separatorToken!354))))))

(declare-fun e!1215919 () List!21537)

(declare-fun e!1215920 () List!21537)

(assert (=> b!1903494 (= e!1215919 e!1215920)))

(declare-fun bm!117214 () Bool)

(declare-fun call!117221 () List!21537)

(declare-fun c!310028 () Bool)

(assert (=> bm!117214 (= call!117221 (usedCharacters!328 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))))))

(declare-fun bm!117215 () Bool)

(declare-fun call!117219 () List!21537)

(assert (=> bm!117215 (= call!117219 (usedCharacters!328 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))

(declare-fun call!117222 () List!21537)

(declare-fun call!117220 () List!21537)

(declare-fun bm!117216 () Bool)

(assert (=> bm!117216 (= call!117222 (++!5763 (ite c!310028 call!117220 call!117221) (ite c!310028 call!117221 call!117220)))))

(declare-fun b!1903496 () Bool)

(assert (=> b!1903496 (= e!1215919 (Cons!21455 (c!309905 (regex!3820 (rule!6013 separatorToken!354))) Nil!21455))))

(declare-fun b!1903497 () Bool)

(declare-fun e!1215917 () List!21537)

(assert (=> b!1903497 (= e!1215917 call!117222)))

(declare-fun b!1903498 () Bool)

(assert (=> b!1903498 (= e!1215920 call!117219)))

(declare-fun b!1903495 () Bool)

(assert (=> b!1903495 (= e!1215920 e!1215917)))

(assert (=> b!1903495 (= c!310028 ((_ is Union!5245) (regex!3820 (rule!6013 separatorToken!354))))))

(declare-fun d!581869 () Bool)

(declare-fun c!310026 () Bool)

(assert (=> d!581869 (= c!310026 (or ((_ is EmptyExpr!5245) (regex!3820 (rule!6013 separatorToken!354))) ((_ is EmptyLang!5245) (regex!3820 (rule!6013 separatorToken!354)))))))

(declare-fun e!1215918 () List!21537)

(assert (=> d!581869 (= (usedCharacters!328 (regex!3820 (rule!6013 separatorToken!354))) e!1215918)))

(declare-fun bm!117217 () Bool)

(assert (=> bm!117217 (= call!117220 call!117219)))

(declare-fun b!1903499 () Bool)

(assert (=> b!1903499 (= e!1215917 call!117222)))

(declare-fun b!1903500 () Bool)

(assert (=> b!1903500 (= e!1215918 Nil!21455)))

(declare-fun b!1903501 () Bool)

(assert (=> b!1903501 (= e!1215918 e!1215919)))

(declare-fun c!310027 () Bool)

(assert (=> b!1903501 (= c!310027 ((_ is ElementMatch!5245) (regex!3820 (rule!6013 separatorToken!354))))))

(assert (= (and d!581869 c!310026) b!1903500))

(assert (= (and d!581869 (not c!310026)) b!1903501))

(assert (= (and b!1903501 c!310027) b!1903496))

(assert (= (and b!1903501 (not c!310027)) b!1903494))

(assert (= (and b!1903494 c!310025) b!1903498))

(assert (= (and b!1903494 (not c!310025)) b!1903495))

(assert (= (and b!1903495 c!310028) b!1903499))

(assert (= (and b!1903495 (not c!310028)) b!1903497))

(assert (= (or b!1903499 b!1903497) bm!117217))

(assert (= (or b!1903499 b!1903497) bm!117214))

(assert (= (or b!1903499 b!1903497) bm!117216))

(assert (= (or b!1903498 bm!117217) bm!117215))

(declare-fun m!2334859 () Bool)

(assert (=> bm!117214 m!2334859))

(declare-fun m!2334861 () Bool)

(assert (=> bm!117215 m!2334861))

(declare-fun m!2334863 () Bool)

(assert (=> bm!117216 m!2334863))

(assert (=> b!1902861 d!581869))

(declare-fun d!581871 () Bool)

(declare-fun e!1215922 () Bool)

(assert (=> d!581871 e!1215922))

(declare-fun res!850059 () Bool)

(assert (=> d!581871 (=> (not res!850059) (not e!1215922))))

(declare-fun lt!727948 () List!21537)

(assert (=> d!581871 (= res!850059 (= (content!3139 lt!727948) ((_ map or) (content!3139 lt!727773) (content!3139 lt!727764))))))

(declare-fun e!1215921 () List!21537)

(assert (=> d!581871 (= lt!727948 e!1215921)))

(declare-fun c!310029 () Bool)

(assert (=> d!581871 (= c!310029 ((_ is Nil!21455) lt!727773))))

(assert (=> d!581871 (= (++!5763 lt!727773 lt!727764) lt!727948)))

(declare-fun b!1903503 () Bool)

(assert (=> b!1903503 (= e!1215921 (Cons!21455 (h!26856 lt!727773) (++!5763 (t!177028 lt!727773) lt!727764)))))

(declare-fun b!1903504 () Bool)

(declare-fun res!850060 () Bool)

(assert (=> b!1903504 (=> (not res!850060) (not e!1215922))))

(assert (=> b!1903504 (= res!850060 (= (size!16921 lt!727948) (+ (size!16921 lt!727773) (size!16921 lt!727764))))))

(declare-fun b!1903502 () Bool)

(assert (=> b!1903502 (= e!1215921 lt!727764)))

(declare-fun b!1903505 () Bool)

(assert (=> b!1903505 (= e!1215922 (or (not (= lt!727764 Nil!21455)) (= lt!727948 lt!727773)))))

(assert (= (and d!581871 c!310029) b!1903502))

(assert (= (and d!581871 (not c!310029)) b!1903503))

(assert (= (and d!581871 res!850059) b!1903504))

(assert (= (and b!1903504 res!850060) b!1903505))

(declare-fun m!2334865 () Bool)

(assert (=> d!581871 m!2334865))

(declare-fun m!2334867 () Bool)

(assert (=> d!581871 m!2334867))

(assert (=> d!581871 m!2334851))

(declare-fun m!2334869 () Bool)

(assert (=> b!1903503 m!2334869))

(declare-fun m!2334871 () Bool)

(assert (=> b!1903504 m!2334871))

(declare-fun m!2334873 () Bool)

(assert (=> b!1903504 m!2334873))

(assert (=> b!1903504 m!2334857))

(assert (=> b!1902861 d!581871))

(declare-fun d!581873 () Bool)

(declare-fun e!1215924 () Bool)

(assert (=> d!581873 e!1215924))

(declare-fun res!850061 () Bool)

(assert (=> d!581873 (=> (not res!850061) (not e!1215924))))

(declare-fun lt!727949 () List!21537)

(assert (=> d!581873 (= res!850061 (= (content!3139 lt!727949) ((_ map or) (content!3139 (++!5763 lt!727775 lt!727773)) (content!3139 lt!727764))))))

(declare-fun e!1215923 () List!21537)

(assert (=> d!581873 (= lt!727949 e!1215923)))

(declare-fun c!310030 () Bool)

(assert (=> d!581873 (= c!310030 ((_ is Nil!21455) (++!5763 lt!727775 lt!727773)))))

(assert (=> d!581873 (= (++!5763 (++!5763 lt!727775 lt!727773) lt!727764) lt!727949)))

(declare-fun b!1903507 () Bool)

(assert (=> b!1903507 (= e!1215923 (Cons!21455 (h!26856 (++!5763 lt!727775 lt!727773)) (++!5763 (t!177028 (++!5763 lt!727775 lt!727773)) lt!727764)))))

(declare-fun b!1903508 () Bool)

(declare-fun res!850062 () Bool)

(assert (=> b!1903508 (=> (not res!850062) (not e!1215924))))

(assert (=> b!1903508 (= res!850062 (= (size!16921 lt!727949) (+ (size!16921 (++!5763 lt!727775 lt!727773)) (size!16921 lt!727764))))))

(declare-fun b!1903506 () Bool)

(assert (=> b!1903506 (= e!1215923 lt!727764)))

(declare-fun b!1903509 () Bool)

(assert (=> b!1903509 (= e!1215924 (or (not (= lt!727764 Nil!21455)) (= lt!727949 (++!5763 lt!727775 lt!727773))))))

(assert (= (and d!581873 c!310030) b!1903506))

(assert (= (and d!581873 (not c!310030)) b!1903507))

(assert (= (and d!581873 res!850061) b!1903508))

(assert (= (and b!1903508 res!850062) b!1903509))

(declare-fun m!2334875 () Bool)

(assert (=> d!581873 m!2334875))

(assert (=> d!581873 m!2334133))

(declare-fun m!2334877 () Bool)

(assert (=> d!581873 m!2334877))

(assert (=> d!581873 m!2334851))

(declare-fun m!2334879 () Bool)

(assert (=> b!1903507 m!2334879))

(declare-fun m!2334881 () Bool)

(assert (=> b!1903508 m!2334881))

(assert (=> b!1903508 m!2334133))

(declare-fun m!2334883 () Bool)

(assert (=> b!1903508 m!2334883))

(assert (=> b!1903508 m!2334857))

(assert (=> b!1902861 d!581873))

(declare-fun d!581875 () Bool)

(declare-fun e!1215926 () Bool)

(assert (=> d!581875 e!1215926))

(declare-fun res!850063 () Bool)

(assert (=> d!581875 (=> (not res!850063) (not e!1215926))))

(declare-fun lt!727950 () List!21537)

(assert (=> d!581875 (= res!850063 (= (content!3139 lt!727950) ((_ map or) (content!3139 lt!727775) (content!3139 (++!5763 lt!727773 lt!727764)))))))

(declare-fun e!1215925 () List!21537)

(assert (=> d!581875 (= lt!727950 e!1215925)))

(declare-fun c!310031 () Bool)

(assert (=> d!581875 (= c!310031 ((_ is Nil!21455) lt!727775))))

(assert (=> d!581875 (= (++!5763 lt!727775 (++!5763 lt!727773 lt!727764)) lt!727950)))

(declare-fun b!1903511 () Bool)

(assert (=> b!1903511 (= e!1215925 (Cons!21455 (h!26856 lt!727775) (++!5763 (t!177028 lt!727775) (++!5763 lt!727773 lt!727764))))))

(declare-fun b!1903512 () Bool)

(declare-fun res!850064 () Bool)

(assert (=> b!1903512 (=> (not res!850064) (not e!1215926))))

(assert (=> b!1903512 (= res!850064 (= (size!16921 lt!727950) (+ (size!16921 lt!727775) (size!16921 (++!5763 lt!727773 lt!727764)))))))

(declare-fun b!1903510 () Bool)

(assert (=> b!1903510 (= e!1215925 (++!5763 lt!727773 lt!727764))))

(declare-fun b!1903513 () Bool)

(assert (=> b!1903513 (= e!1215926 (or (not (= (++!5763 lt!727773 lt!727764) Nil!21455)) (= lt!727950 lt!727775)))))

(assert (= (and d!581875 c!310031) b!1903510))

(assert (= (and d!581875 (not c!310031)) b!1903511))

(assert (= (and d!581875 res!850063) b!1903512))

(assert (= (and b!1903512 res!850064) b!1903513))

(declare-fun m!2334885 () Bool)

(assert (=> d!581875 m!2334885))

(assert (=> d!581875 m!2334849))

(assert (=> d!581875 m!2334137))

(declare-fun m!2334887 () Bool)

(assert (=> d!581875 m!2334887))

(assert (=> b!1903511 m!2334137))

(declare-fun m!2334889 () Bool)

(assert (=> b!1903511 m!2334889))

(declare-fun m!2334891 () Bool)

(assert (=> b!1903512 m!2334891))

(assert (=> b!1903512 m!2334767))

(assert (=> b!1903512 m!2334137))

(declare-fun m!2334893 () Bool)

(assert (=> b!1903512 m!2334893))

(assert (=> b!1902861 d!581875))

(declare-fun d!581877 () Bool)

(assert (=> d!581877 (= (++!5763 (++!5763 lt!727775 lt!727773) lt!727764) (++!5763 lt!727775 (++!5763 lt!727773 lt!727764)))))

(declare-fun lt!727953 () Unit!35776)

(declare-fun choose!11852 (List!21537 List!21537 List!21537) Unit!35776)

(assert (=> d!581877 (= lt!727953 (choose!11852 lt!727775 lt!727773 lt!727764))))

(assert (=> d!581877 (= (lemmaConcatAssociativity!1135 lt!727775 lt!727773 lt!727764) lt!727953)))

(declare-fun bs!413647 () Bool)

(assert (= bs!413647 d!581877))

(assert (=> bs!413647 m!2334137))

(declare-fun m!2334895 () Bool)

(assert (=> bs!413647 m!2334895))

(assert (=> bs!413647 m!2334133))

(assert (=> bs!413647 m!2334137))

(assert (=> bs!413647 m!2334139))

(assert (=> bs!413647 m!2334133))

(assert (=> bs!413647 m!2334135))

(assert (=> b!1902861 d!581877))

(declare-fun d!581879 () Bool)

(declare-fun e!1215928 () Bool)

(assert (=> d!581879 e!1215928))

(declare-fun res!850065 () Bool)

(assert (=> d!581879 (=> (not res!850065) (not e!1215928))))

(declare-fun lt!727954 () List!21537)

(assert (=> d!581879 (= res!850065 (= (content!3139 lt!727954) ((_ map or) (content!3139 lt!727775) (content!3139 lt!727773))))))

(declare-fun e!1215927 () List!21537)

(assert (=> d!581879 (= lt!727954 e!1215927)))

(declare-fun c!310032 () Bool)

(assert (=> d!581879 (= c!310032 ((_ is Nil!21455) lt!727775))))

(assert (=> d!581879 (= (++!5763 lt!727775 lt!727773) lt!727954)))

(declare-fun b!1903515 () Bool)

(assert (=> b!1903515 (= e!1215927 (Cons!21455 (h!26856 lt!727775) (++!5763 (t!177028 lt!727775) lt!727773)))))

(declare-fun b!1903516 () Bool)

(declare-fun res!850066 () Bool)

(assert (=> b!1903516 (=> (not res!850066) (not e!1215928))))

(assert (=> b!1903516 (= res!850066 (= (size!16921 lt!727954) (+ (size!16921 lt!727775) (size!16921 lt!727773))))))

(declare-fun b!1903514 () Bool)

(assert (=> b!1903514 (= e!1215927 lt!727773)))

(declare-fun b!1903517 () Bool)

(assert (=> b!1903517 (= e!1215928 (or (not (= lt!727773 Nil!21455)) (= lt!727954 lt!727775)))))

(assert (= (and d!581879 c!310032) b!1903514))

(assert (= (and d!581879 (not c!310032)) b!1903515))

(assert (= (and d!581879 res!850065) b!1903516))

(assert (= (and b!1903516 res!850066) b!1903517))

(declare-fun m!2334897 () Bool)

(assert (=> d!581879 m!2334897))

(assert (=> d!581879 m!2334849))

(assert (=> d!581879 m!2334867))

(declare-fun m!2334899 () Bool)

(assert (=> b!1903515 m!2334899))

(declare-fun m!2334901 () Bool)

(assert (=> b!1903516 m!2334901))

(assert (=> b!1903516 m!2334767))

(assert (=> b!1903516 m!2334873))

(assert (=> b!1902861 d!581879))

(declare-fun b!1903518 () Bool)

(declare-fun e!1215931 () Bool)

(assert (=> b!1903518 (= e!1215931 (inv!15 (value!120461 separatorToken!354)))))

(declare-fun b!1903519 () Bool)

(declare-fun e!1215930 () Bool)

(assert (=> b!1903519 (= e!1215930 (inv!17 (value!120461 separatorToken!354)))))

(declare-fun b!1903520 () Bool)

(declare-fun res!850067 () Bool)

(assert (=> b!1903520 (=> res!850067 e!1215931)))

(assert (=> b!1903520 (= res!850067 (not ((_ is IntegerValue!11870) (value!120461 separatorToken!354))))))

(assert (=> b!1903520 (= e!1215930 e!1215931)))

(declare-fun d!581881 () Bool)

(declare-fun c!310034 () Bool)

(assert (=> d!581881 (= c!310034 ((_ is IntegerValue!11868) (value!120461 separatorToken!354)))))

(declare-fun e!1215929 () Bool)

(assert (=> d!581881 (= (inv!21 (value!120461 separatorToken!354)) e!1215929)))

(declare-fun b!1903521 () Bool)

(assert (=> b!1903521 (= e!1215929 e!1215930)))

(declare-fun c!310033 () Bool)

(assert (=> b!1903521 (= c!310033 ((_ is IntegerValue!11869) (value!120461 separatorToken!354)))))

(declare-fun b!1903522 () Bool)

(assert (=> b!1903522 (= e!1215929 (inv!16 (value!120461 separatorToken!354)))))

(assert (= (and d!581881 c!310034) b!1903522))

(assert (= (and d!581881 (not c!310034)) b!1903521))

(assert (= (and b!1903521 c!310033) b!1903519))

(assert (= (and b!1903521 (not c!310033)) b!1903520))

(assert (= (and b!1903520 (not res!850067)) b!1903518))

(declare-fun m!2334903 () Bool)

(assert (=> b!1903518 m!2334903))

(declare-fun m!2334905 () Bool)

(assert (=> b!1903519 m!2334905))

(declare-fun m!2334907 () Bool)

(assert (=> b!1903522 m!2334907))

(assert (=> b!1902850 d!581881))

(declare-fun d!581883 () Bool)

(declare-fun res!850068 () Bool)

(declare-fun e!1215932 () Bool)

(assert (=> d!581883 (=> (not res!850068) (not e!1215932))))

(assert (=> d!581883 (= res!850068 (not (isEmpty!13167 (originalCharacters!4627 separatorToken!354))))))

(assert (=> d!581883 (= (inv!28547 separatorToken!354) e!1215932)))

(declare-fun b!1903523 () Bool)

(declare-fun res!850069 () Bool)

(assert (=> b!1903523 (=> (not res!850069) (not e!1215932))))

(assert (=> b!1903523 (= res!850069 (= (originalCharacters!4627 separatorToken!354) (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))))

(declare-fun b!1903524 () Bool)

(assert (=> b!1903524 (= e!1215932 (= (size!16918 separatorToken!354) (size!16921 (originalCharacters!4627 separatorToken!354))))))

(assert (= (and d!581883 res!850068) b!1903523))

(assert (= (and b!1903523 res!850069) b!1903524))

(declare-fun b_lambda!62769 () Bool)

(assert (=> (not b_lambda!62769) (not b!1903523)))

(assert (=> b!1903523 t!177116))

(declare-fun b_and!147577 () Bool)

(assert (= b_and!147571 (and (=> t!177116 result!140414) b_and!147577)))

(assert (=> b!1903523 t!177118))

(declare-fun b_and!147579 () Bool)

(assert (= b_and!147573 (and (=> t!177118 result!140416) b_and!147579)))

(assert (=> b!1903523 t!177120))

(declare-fun b_and!147581 () Bool)

(assert (= b_and!147575 (and (=> t!177120 result!140418) b_and!147581)))

(declare-fun m!2334909 () Bool)

(assert (=> d!581883 m!2334909))

(assert (=> b!1903523 m!2334741))

(assert (=> b!1903523 m!2334741))

(declare-fun m!2334911 () Bool)

(assert (=> b!1903523 m!2334911))

(declare-fun m!2334913 () Bool)

(assert (=> b!1903524 m!2334913))

(assert (=> start!190756 d!581883))

(declare-fun d!581885 () Bool)

(assert (=> d!581885 (= (inv!28543 (tag!4248 (h!26858 rules!3198))) (= (mod (str.len (value!120460 (tag!4248 (h!26858 rules!3198)))) 2) 0))))

(assert (=> b!1902854 d!581885))

(declare-fun d!581887 () Bool)

(declare-fun res!850070 () Bool)

(declare-fun e!1215933 () Bool)

(assert (=> d!581887 (=> (not res!850070) (not e!1215933))))

(assert (=> d!581887 (= res!850070 (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (h!26858 rules!3198)))))))

(assert (=> d!581887 (= (inv!28546 (transformation!3820 (h!26858 rules!3198))) e!1215933)))

(declare-fun b!1903525 () Bool)

(assert (=> b!1903525 (= e!1215933 (equivClasses!1468 (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (h!26858 rules!3198)))))))

(assert (= (and d!581887 res!850070) b!1903525))

(declare-fun m!2334915 () Bool)

(assert (=> d!581887 m!2334915))

(declare-fun m!2334917 () Bool)

(assert (=> b!1903525 m!2334917))

(assert (=> b!1902854 d!581887))

(declare-fun d!581889 () Bool)

(assert (=> d!581889 (= (get!6663 lt!727767) (v!26374 lt!727767))))

(assert (=> b!1902852 d!581889))

(declare-fun b!1903538 () Bool)

(declare-fun e!1215936 () Bool)

(declare-fun tp!543698 () Bool)

(assert (=> b!1903538 (= e!1215936 tp!543698)))

(assert (=> b!1902856 (= tp!543606 e!1215936)))

(declare-fun b!1903539 () Bool)

(declare-fun tp!543696 () Bool)

(declare-fun tp!543699 () Bool)

(assert (=> b!1903539 (= e!1215936 (and tp!543696 tp!543699))))

(declare-fun b!1903537 () Bool)

(declare-fun tp!543697 () Bool)

(declare-fun tp!543695 () Bool)

(assert (=> b!1903537 (= e!1215936 (and tp!543697 tp!543695))))

(declare-fun b!1903536 () Bool)

(declare-fun tp_is_empty!9089 () Bool)

(assert (=> b!1903536 (= e!1215936 tp_is_empty!9089)))

(assert (= (and b!1902856 ((_ is ElementMatch!5245) (regex!3820 (rule!6013 (h!26857 tokens!598))))) b!1903536))

(assert (= (and b!1902856 ((_ is Concat!9202) (regex!3820 (rule!6013 (h!26857 tokens!598))))) b!1903537))

(assert (= (and b!1902856 ((_ is Star!5245) (regex!3820 (rule!6013 (h!26857 tokens!598))))) b!1903538))

(assert (= (and b!1902856 ((_ is Union!5245) (regex!3820 (rule!6013 (h!26857 tokens!598))))) b!1903539))

(declare-fun b!1903550 () Bool)

(declare-fun b_free!53613 () Bool)

(declare-fun b_next!54317 () Bool)

(assert (=> b!1903550 (= b_free!53613 (not b_next!54317))))

(declare-fun t!177122 () Bool)

(declare-fun tb!116129 () Bool)

(assert (=> (and b!1903550 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177122) tb!116129))

(declare-fun result!140424 () Bool)

(assert (= result!140424 result!140366))

(assert (=> d!581801 t!177122))

(declare-fun t!177124 () Bool)

(declare-fun tb!116131 () Bool)

(assert (=> (and b!1903550 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177124) tb!116131))

(declare-fun result!140426 () Bool)

(assert (= result!140426 result!140374))

(assert (=> d!581801 t!177124))

(assert (=> d!581803 t!177122))

(declare-fun b_and!147583 () Bool)

(declare-fun tp!543710 () Bool)

(assert (=> b!1903550 (= tp!543710 (and (=> t!177122 result!140424) (=> t!177124 result!140426) b_and!147583))))

(declare-fun b_free!53615 () Bool)

(declare-fun b_next!54319 () Bool)

(assert (=> b!1903550 (= b_free!53615 (not b_next!54319))))

(declare-fun t!177126 () Bool)

(declare-fun tb!116133 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177126) tb!116133))

(declare-fun result!140428 () Bool)

(assert (= result!140428 result!140414))

(assert (=> d!581847 t!177126))

(assert (=> b!1903523 t!177126))

(declare-fun t!177128 () Bool)

(declare-fun tb!116135 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177128) tb!116135))

(declare-fun result!140430 () Bool)

(assert (= result!140430 result!140380))

(assert (=> d!581803 t!177128))

(declare-fun tb!116137 () Bool)

(declare-fun t!177130 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177130) tb!116137))

(declare-fun result!140432 () Bool)

(assert (= result!140432 result!140352))

(assert (=> b!1903097 t!177130))

(assert (=> d!581857 t!177130))

(declare-fun b_and!147585 () Bool)

(declare-fun tp!543708 () Bool)

(assert (=> b!1903550 (= tp!543708 (and (=> t!177130 result!140432) (=> t!177126 result!140428) (=> t!177128 result!140430) b_and!147585))))

(declare-fun e!1215948 () Bool)

(assert (=> b!1903550 (= e!1215948 (and tp!543710 tp!543708))))

(declare-fun e!1215945 () Bool)

(declare-fun b!1903549 () Bool)

(declare-fun tp!543709 () Bool)

(assert (=> b!1903549 (= e!1215945 (and tp!543709 (inv!28543 (tag!4248 (h!26858 (t!177030 rules!3198)))) (inv!28546 (transformation!3820 (h!26858 (t!177030 rules!3198)))) e!1215948))))

(declare-fun b!1903548 () Bool)

(declare-fun e!1215946 () Bool)

(declare-fun tp!543711 () Bool)

(assert (=> b!1903548 (= e!1215946 (and e!1215945 tp!543711))))

(assert (=> b!1902849 (= tp!543615 e!1215946)))

(assert (= b!1903549 b!1903550))

(assert (= b!1903548 b!1903549))

(assert (= (and b!1902849 ((_ is Cons!21457) (t!177030 rules!3198))) b!1903548))

(declare-fun m!2334919 () Bool)

(assert (=> b!1903549 m!2334919))

(declare-fun m!2334921 () Bool)

(assert (=> b!1903549 m!2334921))

(declare-fun b!1903564 () Bool)

(declare-fun b_free!53617 () Bool)

(declare-fun b_next!54321 () Bool)

(assert (=> b!1903564 (= b_free!53617 (not b_next!54321))))

(declare-fun t!177132 () Bool)

(declare-fun tb!116139 () Bool)

(assert (=> (and b!1903564 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177132) tb!116139))

(declare-fun result!140436 () Bool)

(assert (= result!140436 result!140366))

(assert (=> d!581801 t!177132))

(declare-fun t!177134 () Bool)

(declare-fun tb!116141 () Bool)

(assert (=> (and b!1903564 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177134) tb!116141))

(declare-fun result!140438 () Bool)

(assert (= result!140438 result!140374))

(assert (=> d!581801 t!177134))

(assert (=> d!581803 t!177132))

(declare-fun tp!543722 () Bool)

(declare-fun b_and!147587 () Bool)

(assert (=> b!1903564 (= tp!543722 (and (=> t!177132 result!140436) (=> t!177134 result!140438) b_and!147587))))

(declare-fun b_free!53619 () Bool)

(declare-fun b_next!54323 () Bool)

(assert (=> b!1903564 (= b_free!53619 (not b_next!54323))))

(declare-fun tb!116143 () Bool)

(declare-fun t!177136 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177136) tb!116143))

(declare-fun result!140440 () Bool)

(assert (= result!140440 result!140414))

(assert (=> d!581847 t!177136))

(assert (=> b!1903523 t!177136))

(declare-fun t!177138 () Bool)

(declare-fun tb!116145 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177138) tb!116145))

(declare-fun result!140442 () Bool)

(assert (= result!140442 result!140380))

(assert (=> d!581803 t!177138))

(declare-fun t!177140 () Bool)

(declare-fun tb!116147 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177140) tb!116147))

(declare-fun result!140444 () Bool)

(assert (= result!140444 result!140352))

(assert (=> b!1903097 t!177140))

(assert (=> d!581857 t!177140))

(declare-fun b_and!147589 () Bool)

(declare-fun tp!543726 () Bool)

(assert (=> b!1903564 (= tp!543726 (and (=> t!177136 result!140440) (=> t!177140 result!140444) (=> t!177138 result!140442) b_and!147589))))

(declare-fun e!1215965 () Bool)

(declare-fun tp!543725 () Bool)

(declare-fun b!1903563 () Bool)

(declare-fun e!1215961 () Bool)

(assert (=> b!1903563 (= e!1215961 (and tp!543725 (inv!28543 (tag!4248 (rule!6013 (h!26857 (t!177029 tokens!598))))) (inv!28546 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) e!1215965))))

(declare-fun e!1215963 () Bool)

(declare-fun b!1903561 () Bool)

(declare-fun tp!543723 () Bool)

(declare-fun e!1215962 () Bool)

(assert (=> b!1903561 (= e!1215963 (and (inv!28547 (h!26857 (t!177029 tokens!598))) e!1215962 tp!543723))))

(assert (=> b!1902868 (= tp!543616 e!1215963)))

(assert (=> b!1903564 (= e!1215965 (and tp!543722 tp!543726))))

(declare-fun b!1903562 () Bool)

(declare-fun tp!543724 () Bool)

(assert (=> b!1903562 (= e!1215962 (and (inv!21 (value!120461 (h!26857 (t!177029 tokens!598)))) e!1215961 tp!543724))))

(assert (= b!1903563 b!1903564))

(assert (= b!1903562 b!1903563))

(assert (= b!1903561 b!1903562))

(assert (= (and b!1902868 ((_ is Cons!21456) (t!177029 tokens!598))) b!1903561))

(declare-fun m!2334923 () Bool)

(assert (=> b!1903563 m!2334923))

(declare-fun m!2334925 () Bool)

(assert (=> b!1903563 m!2334925))

(declare-fun m!2334927 () Bool)

(assert (=> b!1903561 m!2334927))

(declare-fun m!2334929 () Bool)

(assert (=> b!1903562 m!2334929))

(declare-fun b!1903569 () Bool)

(declare-fun e!1215969 () Bool)

(declare-fun tp!543729 () Bool)

(assert (=> b!1903569 (= e!1215969 (and tp_is_empty!9089 tp!543729))))

(assert (=> b!1902869 (= tp!543617 e!1215969)))

(assert (= (and b!1902869 ((_ is Cons!21455) (originalCharacters!4627 (h!26857 tokens!598)))) b!1903569))

(declare-fun b!1903572 () Bool)

(declare-fun e!1215970 () Bool)

(declare-fun tp!543733 () Bool)

(assert (=> b!1903572 (= e!1215970 tp!543733)))

(assert (=> b!1902872 (= tp!543613 e!1215970)))

(declare-fun b!1903573 () Bool)

(declare-fun tp!543731 () Bool)

(declare-fun tp!543734 () Bool)

(assert (=> b!1903573 (= e!1215970 (and tp!543731 tp!543734))))

(declare-fun b!1903571 () Bool)

(declare-fun tp!543732 () Bool)

(declare-fun tp!543730 () Bool)

(assert (=> b!1903571 (= e!1215970 (and tp!543732 tp!543730))))

(declare-fun b!1903570 () Bool)

(assert (=> b!1903570 (= e!1215970 tp_is_empty!9089)))

(assert (= (and b!1902872 ((_ is ElementMatch!5245) (regex!3820 (rule!6013 separatorToken!354)))) b!1903570))

(assert (= (and b!1902872 ((_ is Concat!9202) (regex!3820 (rule!6013 separatorToken!354)))) b!1903571))

(assert (= (and b!1902872 ((_ is Star!5245) (regex!3820 (rule!6013 separatorToken!354)))) b!1903572))

(assert (= (and b!1902872 ((_ is Union!5245) (regex!3820 (rule!6013 separatorToken!354)))) b!1903573))

(declare-fun b!1903574 () Bool)

(declare-fun e!1215971 () Bool)

(declare-fun tp!543735 () Bool)

(assert (=> b!1903574 (= e!1215971 (and tp_is_empty!9089 tp!543735))))

(assert (=> b!1902850 (= tp!543609 e!1215971)))

(assert (= (and b!1902850 ((_ is Cons!21455) (originalCharacters!4627 separatorToken!354))) b!1903574))

(declare-fun b!1903577 () Bool)

(declare-fun e!1215972 () Bool)

(declare-fun tp!543739 () Bool)

(assert (=> b!1903577 (= e!1215972 tp!543739)))

(assert (=> b!1902854 (= tp!543608 e!1215972)))

(declare-fun b!1903578 () Bool)

(declare-fun tp!543737 () Bool)

(declare-fun tp!543740 () Bool)

(assert (=> b!1903578 (= e!1215972 (and tp!543737 tp!543740))))

(declare-fun b!1903576 () Bool)

(declare-fun tp!543738 () Bool)

(declare-fun tp!543736 () Bool)

(assert (=> b!1903576 (= e!1215972 (and tp!543738 tp!543736))))

(declare-fun b!1903575 () Bool)

(assert (=> b!1903575 (= e!1215972 tp_is_empty!9089)))

(assert (= (and b!1902854 ((_ is ElementMatch!5245) (regex!3820 (h!26858 rules!3198)))) b!1903575))

(assert (= (and b!1902854 ((_ is Concat!9202) (regex!3820 (h!26858 rules!3198)))) b!1903576))

(assert (= (and b!1902854 ((_ is Star!5245) (regex!3820 (h!26858 rules!3198)))) b!1903577))

(assert (= (and b!1902854 ((_ is Union!5245) (regex!3820 (h!26858 rules!3198)))) b!1903578))

(declare-fun b_lambda!62771 () Bool)

(assert (= b_lambda!62737 (or (and b!1903550 b_free!53613 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902864 b_free!53601 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902865 b_free!53597 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902858 b_free!53593) (and b!1903564 b_free!53617 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) b_lambda!62771)))

(declare-fun b_lambda!62773 () Bool)

(assert (= b_lambda!62769 (or (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) (and b!1902858 b_free!53595 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) (and b!1903564 b_free!53619 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) (and b!1902865 b_free!53599) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) b_lambda!62773)))

(declare-fun b_lambda!62775 () Bool)

(assert (= b_lambda!62739 (or (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902858 b_free!53595) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902865 b_free!53599 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1903564 b_free!53619 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) b_lambda!62775)))

(declare-fun b_lambda!62777 () Bool)

(assert (= b_lambda!62735 (or (and b!1903550 b_free!53613 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902864 b_free!53601 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902865 b_free!53597 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902858 b_free!53593) (and b!1903564 b_free!53617 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) b_lambda!62777)))

(declare-fun b_lambda!62779 () Bool)

(assert (= b_lambda!62765 (or (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) (and b!1902858 b_free!53595 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) (and b!1903564 b_free!53619 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) (and b!1902865 b_free!53599) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))))) b_lambda!62779)))

(declare-fun b_lambda!62781 () Bool)

(assert (= b_lambda!62767 (or (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902858 b_free!53595) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902865 b_free!53599 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1903564 b_free!53619 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) b_lambda!62781)))

(declare-fun b_lambda!62783 () Bool)

(assert (= b_lambda!62731 (or (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902858 b_free!53595) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902865 b_free!53599 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1903564 b_free!53619 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) b_lambda!62783)))

(declare-fun b_lambda!62785 () Bool)

(assert (= b_lambda!62741 (or (and b!1903550 b_free!53613 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902864 b_free!53601 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902865 b_free!53597 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (and b!1902858 b_free!53593) (and b!1903564 b_free!53617 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) b_lambda!62785)))

(declare-fun b_lambda!62787 () Bool)

(assert (= b_lambda!62719 (or b!1902866 b_lambda!62787)))

(declare-fun bs!413648 () Bool)

(declare-fun d!581891 () Bool)

(assert (= bs!413648 (and d!581891 b!1902866)))

(assert (=> bs!413648 (= (dynLambda!10437 lambda!74377 (h!26857 tokens!598)) (not (isSeparator!3820 (rule!6013 (h!26857 tokens!598)))))))

(assert (=> b!1902950 d!581891))

(check-sat (not b!1903425) (not b!1903572) (not b!1903475) (not d!581855) (not b!1903437) b_and!147547 (not b_next!54303) (not b!1903438) (not d!581857) (not bm!117200) (not b!1903515) (not b_next!54305) (not b_lambda!62783) (not b!1903428) (not d!581877) (not b!1903061) (not b_lambda!62787) (not b!1903429) (not b!1903561) (not d!581849) (not b!1903212) (not b!1903516) (not b_lambda!62779) b_and!147585 (not b!1903464) (not b!1903573) (not b!1903435) (not b!1903210) (not b!1902951) (not b!1903105) (not d!581879) (not b!1903537) (not b!1903476) (not d!581853) (not b!1903538) tp_is_empty!9089 (not b!1903503) (not b!1903422) (not b!1903229) (not d!581845) (not b!1903430) (not bm!117174) (not b!1903127) b_and!147589 (not b!1903424) (not b!1903539) (not b!1903124) (not d!581873) (not b!1903074) (not bm!117214) (not d!581739) (not d!581883) (not b!1902945) b_and!147549 (not bm!117201) (not b!1903571) (not b!1903549) (not b!1903431) (not b!1903390) (not d!581737) b_and!147587 (not d!581861) (not b!1903401) (not b!1903562) (not b!1903427) (not bm!117215) (not d!581863) b_and!147579 (not b!1903207) (not b!1903392) (not b!1903548) (not b!1903454) (not b!1902960) (not b!1903426) (not b_lambda!62781) (not d!581803) (not b!1903576) (not b!1903403) b_and!147577 (not tb!116091) (not b!1903204) (not b_lambda!62775) (not d!581729) (not tb!116073) (not b!1903458) b_and!147583 (not d!581865) (not d!581795) (not b!1903433) (not b!1903219) (not b!1903225) (not b_next!54317) (not b!1903394) (not b_next!54301) (not b!1903577) (not b!1903201) (not b!1903508) (not b!1903524) (not tb!116085) (not d!581771) (not b!1903222) (not b!1903460) (not b_next!54307) (not d!581797) (not d!581847) (not b!1903097) (not b!1903518) (not b!1902942) (not b!1903389) (not bm!117204) (not b!1903060) (not b_next!54319) (not b!1903402) (not bm!117173) (not b_next!54323) (not b!1903441) (not d!581801) (not b!1903214) (not b!1903462) (not d!581859) (not d!581851) (not bm!117216) (not d!581843) (not b!1903569) b_and!147545 (not b!1903456) (not d!581805) (not b_next!54321) (not b!1903439) (not d!581871) (not b_lambda!62777) (not bm!117197) (not b_lambda!62773) (not b!1903432) (not d!581867) (not b!1903574) (not bm!117205) (not b!1902940) (not b!1903523) (not d!581875) b_and!147581 (not b_lambda!62771) (not tb!116097) (not b!1902956) (not b!1903519) (not b!1902957) (not b!1903227) (not b!1903512) (not b!1903507) (not d!581841) (not b_next!54297) (not d!581761) (not b_lambda!62785) (not b!1903563) (not b!1903511) (not b!1903440) (not b!1903522) (not b!1903525) (not b!1903244) (not b!1903386) (not d!581887) (not b_next!54299) (not d!581725) (not b!1903123) (not b!1902941) (not b!1903216) (not b!1903578) (not tb!116123) (not b!1903436) (not b!1903098) (not b!1903504) (not b!1903215))
(check-sat (not b_next!54305) b_and!147585 b_and!147589 b_and!147549 b_and!147587 b_and!147579 b_and!147577 b_and!147583 (not b_next!54307) b_and!147581 (not b_next!54297) (not b_next!54299) b_and!147547 (not b_next!54303) (not b_next!54317) (not b_next!54301) (not b_next!54319) (not b_next!54323) b_and!147545 (not b_next!54321))
(get-model)

(declare-fun d!581947 () Bool)

(assert (=> d!581947 (= (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))) (not (isEmpty!13170 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))))

(declare-fun bs!413656 () Bool)

(assert (= bs!413656 d!581947))

(assert (=> bs!413656 m!2334195))

(declare-fun m!2335055 () Bool)

(assert (=> bs!413656 m!2335055))

(assert (=> d!581843 d!581947))

(assert (=> d!581843 d!581863))

(declare-fun d!581949 () Bool)

(declare-fun e!1216029 () Bool)

(assert (=> d!581949 e!1216029))

(declare-fun res!850115 () Bool)

(assert (=> d!581949 (=> (not res!850115) (not e!1216029))))

(assert (=> d!581949 (= res!850115 (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))

(assert (=> d!581949 true))

(declare-fun _$52!1169 () Unit!35776)

(assert (=> d!581949 (= (choose!11850 thiss!23328 rules!3198 lt!727773 separatorToken!354) _$52!1169)))

(declare-fun b!1903657 () Bool)

(declare-fun res!850116 () Bool)

(assert (=> b!1903657 (=> (not res!850116) (not e!1216029))))

(assert (=> b!1903657 (= res!850116 (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))) (list!8716 (charsOf!2376 separatorToken!354))))))

(declare-fun b!1903658 () Bool)

(assert (=> b!1903658 (= e!1216029 (= (rule!6013 separatorToken!354) (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))))

(assert (= (and d!581949 res!850115) b!1903657))

(assert (= (and b!1903657 res!850116) b!1903658))

(assert (=> d!581949 m!2334195))

(assert (=> d!581949 m!2334195))

(assert (=> d!581949 m!2334725))

(assert (=> b!1903657 m!2334183))

(assert (=> b!1903657 m!2334731))

(assert (=> b!1903657 m!2334179))

(assert (=> b!1903657 m!2334195))

(assert (=> b!1903657 m!2334729))

(assert (=> b!1903657 m!2334179))

(assert (=> b!1903657 m!2334183))

(assert (=> b!1903657 m!2334195))

(assert (=> b!1903658 m!2334195))

(assert (=> b!1903658 m!2334195))

(assert (=> b!1903658 m!2334729))

(assert (=> d!581843 d!581949))

(assert (=> d!581843 d!581737))

(declare-fun bs!413657 () Bool)

(declare-fun d!581951 () Bool)

(assert (= bs!413657 (and d!581951 d!581801)))

(declare-fun lambda!74404 () Int)

(assert (=> bs!413657 (= (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (= lambda!74404 lambda!74395))))

(assert (=> d!581951 true))

(assert (=> d!581951 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10442 order!13557 lambda!74404))))

(declare-fun Forall2!616 (Int) Bool)

(assert (=> d!581951 (= (equivClasses!1468 (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (Forall2!616 lambda!74404))))

(declare-fun bs!413658 () Bool)

(assert (= bs!413658 d!581951))

(declare-fun m!2335057 () Bool)

(assert (=> bs!413658 m!2335057))

(assert (=> b!1903525 d!581951))

(declare-fun d!581953 () Bool)

(declare-fun nullableFct!353 (Regex!5245) Bool)

(assert (=> d!581953 (= (nullable!1591 (regex!3820 lt!727766)) (nullableFct!353 (regex!3820 lt!727766)))))

(declare-fun bs!413659 () Bool)

(assert (= bs!413659 d!581953))

(declare-fun m!2335059 () Bool)

(assert (=> bs!413659 m!2335059))

(assert (=> b!1903207 d!581953))

(declare-fun d!581955 () Bool)

(declare-fun lt!727998 () Int)

(assert (=> d!581955 (>= lt!727998 0)))

(declare-fun e!1216034 () Int)

(assert (=> d!581955 (= lt!727998 e!1216034)))

(declare-fun c!310056 () Bool)

(assert (=> d!581955 (= c!310056 ((_ is Nil!21455) (originalCharacters!4627 separatorToken!354)))))

(assert (=> d!581955 (= (size!16921 (originalCharacters!4627 separatorToken!354)) lt!727998)))

(declare-fun b!1903667 () Bool)

(assert (=> b!1903667 (= e!1216034 0)))

(declare-fun b!1903668 () Bool)

(assert (=> b!1903668 (= e!1216034 (+ 1 (size!16921 (t!177028 (originalCharacters!4627 separatorToken!354)))))))

(assert (= (and d!581955 c!310056) b!1903667))

(assert (= (and d!581955 (not c!310056)) b!1903668))

(declare-fun m!2335061 () Bool)

(assert (=> b!1903668 m!2335061))

(assert (=> b!1903524 d!581955))

(declare-fun d!581957 () Bool)

(assert (=> d!581957 (= (get!6662 lt!727941) (v!26373 lt!727941))))

(assert (=> b!1903456 d!581957))

(declare-fun d!581959 () Bool)

(declare-fun c!310059 () Bool)

(assert (=> d!581959 (= c!310059 ((_ is Nil!21455) lt!727954))))

(declare-fun e!1216037 () (InoxSet C!10636))

(assert (=> d!581959 (= (content!3139 lt!727954) e!1216037)))

(declare-fun b!1903673 () Bool)

(assert (=> b!1903673 (= e!1216037 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1903674 () Bool)

(assert (=> b!1903674 (= e!1216037 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727954) true) (content!3139 (t!177028 lt!727954))))))

(assert (= (and d!581959 c!310059) b!1903673))

(assert (= (and d!581959 (not c!310059)) b!1903674))

(declare-fun m!2335063 () Bool)

(assert (=> b!1903674 m!2335063))

(declare-fun m!2335065 () Bool)

(assert (=> b!1903674 m!2335065))

(assert (=> d!581879 d!581959))

(declare-fun d!581961 () Bool)

(declare-fun c!310060 () Bool)

(assert (=> d!581961 (= c!310060 ((_ is Nil!21455) lt!727775))))

(declare-fun e!1216038 () (InoxSet C!10636))

(assert (=> d!581961 (= (content!3139 lt!727775) e!1216038)))

(declare-fun b!1903675 () Bool)

(assert (=> b!1903675 (= e!1216038 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1903676 () Bool)

(assert (=> b!1903676 (= e!1216038 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727775) true) (content!3139 (t!177028 lt!727775))))))

(assert (= (and d!581961 c!310060) b!1903675))

(assert (= (and d!581961 (not c!310060)) b!1903676))

(declare-fun m!2335067 () Bool)

(assert (=> b!1903676 m!2335067))

(declare-fun m!2335069 () Bool)

(assert (=> b!1903676 m!2335069))

(assert (=> d!581879 d!581961))

(declare-fun d!581963 () Bool)

(declare-fun c!310061 () Bool)

(assert (=> d!581963 (= c!310061 ((_ is Nil!21455) lt!727773))))

(declare-fun e!1216039 () (InoxSet C!10636))

(assert (=> d!581963 (= (content!3139 lt!727773) e!1216039)))

(declare-fun b!1903677 () Bool)

(assert (=> b!1903677 (= e!1216039 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1903678 () Bool)

(assert (=> b!1903678 (= e!1216039 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727773) true) (content!3139 (t!177028 lt!727773))))))

(assert (= (and d!581963 c!310061) b!1903677))

(assert (= (and d!581963 (not c!310061)) b!1903678))

(declare-fun m!2335071 () Bool)

(assert (=> b!1903678 m!2335071))

(declare-fun m!2335073 () Bool)

(assert (=> b!1903678 m!2335073))

(assert (=> d!581879 d!581963))

(declare-fun d!581965 () Bool)

(declare-fun e!1216042 () Bool)

(assert (=> d!581965 e!1216042))

(declare-fun res!850121 () Bool)

(assert (=> d!581965 (=> (not res!850121) (not e!1216042))))

(declare-fun lt!728001 () BalanceConc!14090)

(assert (=> d!581965 (= res!850121 (= (list!8717 lt!728001) (Cons!21456 separatorToken!354 Nil!21456)))))

(declare-fun singleton!830 (Token!7192) BalanceConc!14090)

(assert (=> d!581965 (= lt!728001 (singleton!830 separatorToken!354))))

(assert (=> d!581965 (= (singletonSeq!1847 separatorToken!354) lt!728001)))

(declare-fun b!1903681 () Bool)

(declare-fun isBalanced!2233 (Conc!7137) Bool)

(assert (=> b!1903681 (= e!1216042 (isBalanced!2233 (c!310036 lt!728001)))))

(assert (= (and d!581965 res!850121) b!1903681))

(declare-fun m!2335075 () Bool)

(assert (=> d!581965 m!2335075))

(declare-fun m!2335077 () Bool)

(assert (=> d!581965 m!2335077))

(declare-fun m!2335079 () Bool)

(assert (=> b!1903681 m!2335079))

(assert (=> d!581725 d!581965))

(declare-fun d!581967 () Bool)

(declare-fun lt!728004 () BalanceConc!14086)

(declare-fun printList!1024 (LexerInterface!3433 List!21538) List!21537)

(assert (=> d!581967 (= (list!8716 lt!728004) (printList!1024 thiss!23328 (list!8717 (singletonSeq!1847 separatorToken!354))))))

(assert (=> d!581967 (= lt!728004 (printTailRec!956 thiss!23328 (singletonSeq!1847 separatorToken!354) 0 (BalanceConc!14087 Empty!7135)))))

(assert (=> d!581967 (= (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)) lt!728004)))

(declare-fun bs!413660 () Bool)

(assert (= bs!413660 d!581967))

(declare-fun m!2335081 () Bool)

(assert (=> bs!413660 m!2335081))

(assert (=> bs!413660 m!2334259))

(assert (=> bs!413660 m!2334265))

(assert (=> bs!413660 m!2334265))

(declare-fun m!2335083 () Bool)

(assert (=> bs!413660 m!2335083))

(assert (=> bs!413660 m!2334259))

(declare-fun m!2335085 () Bool)

(assert (=> bs!413660 m!2335085))

(assert (=> d!581725 d!581967))

(declare-fun d!581969 () Bool)

(declare-fun list!8721 (Conc!7137) List!21538)

(assert (=> d!581969 (= (list!8717 (_1!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))))) (list!8721 (c!310036 (_1!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)))))))))

(declare-fun bs!413661 () Bool)

(assert (= bs!413661 d!581969))

(declare-fun m!2335087 () Bool)

(assert (=> bs!413661 m!2335087))

(assert (=> d!581725 d!581969))

(declare-fun d!581971 () Bool)

(assert (=> d!581971 (= (list!8717 (singletonSeq!1847 separatorToken!354)) (list!8721 (c!310036 (singletonSeq!1847 separatorToken!354))))))

(declare-fun bs!413662 () Bool)

(assert (= bs!413662 d!581971))

(declare-fun m!2335089 () Bool)

(assert (=> bs!413662 m!2335089))

(assert (=> d!581725 d!581971))

(declare-fun lt!728081 () tuple2!20186)

(declare-fun b!1903799 () Bool)

(declare-fun e!1216112 () Bool)

(assert (=> b!1903799 (= e!1216112 (= (_2!11562 lt!728081) (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))))))

(declare-fun b!1903800 () Bool)

(declare-fun res!850182 () Bool)

(declare-fun e!1216113 () Bool)

(assert (=> b!1903800 (=> (not res!850182) (not e!1216113))))

(declare-datatypes ((tuple2!20192 0))(
  ( (tuple2!20193 (_1!11565 List!21538) (_2!11565 List!21537)) )
))
(declare-fun lexList!937 (LexerInterface!3433 List!21539 List!21537) tuple2!20192)

(assert (=> b!1903800 (= res!850182 (= (list!8717 (_1!11562 lt!728081)) (_1!11565 (lexList!937 thiss!23328 rules!3198 (list!8716 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)))))))))

(declare-fun b!1903802 () Bool)

(assert (=> b!1903802 (= e!1216113 (= (list!8716 (_2!11562 lt!728081)) (_2!11565 (lexList!937 thiss!23328 rules!3198 (list!8716 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)))))))))

(declare-fun b!1903803 () Bool)

(declare-fun e!1216114 () Bool)

(assert (=> b!1903803 (= e!1216112 e!1216114)))

(declare-fun res!850181 () Bool)

(declare-fun size!16924 (BalanceConc!14086) Int)

(assert (=> b!1903803 (= res!850181 (< (size!16924 (_2!11562 lt!728081)) (size!16924 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)))))))

(assert (=> b!1903803 (=> (not res!850181) (not e!1216114))))

(declare-fun b!1903801 () Bool)

(declare-fun isEmpty!13173 (BalanceConc!14090) Bool)

(assert (=> b!1903801 (= e!1216114 (not (isEmpty!13173 (_1!11562 lt!728081))))))

(declare-fun d!581973 () Bool)

(assert (=> d!581973 e!1216113))

(declare-fun res!850180 () Bool)

(assert (=> d!581973 (=> (not res!850180) (not e!1216113))))

(assert (=> d!581973 (= res!850180 e!1216112)))

(declare-fun c!310088 () Bool)

(assert (=> d!581973 (= c!310088 (> (size!16920 (_1!11562 lt!728081)) 0))))

(declare-fun lexTailRecV2!660 (LexerInterface!3433 List!21539 BalanceConc!14086 BalanceConc!14086 BalanceConc!14086 BalanceConc!14090) tuple2!20186)

(assert (=> d!581973 (= lt!728081 (lexTailRecV2!660 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)) (BalanceConc!14087 Empty!7135) (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)) (BalanceConc!14091 Empty!7137)))))

(assert (=> d!581973 (= (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))) lt!728081)))

(assert (= (and d!581973 c!310088) b!1903803))

(assert (= (and d!581973 (not c!310088)) b!1903799))

(assert (= (and b!1903803 res!850181) b!1903801))

(assert (= (and d!581973 res!850180) b!1903800))

(assert (= (and b!1903800 res!850182) b!1903802))

(declare-fun m!2335279 () Bool)

(assert (=> b!1903803 m!2335279))

(assert (=> b!1903803 m!2334261))

(declare-fun m!2335281 () Bool)

(assert (=> b!1903803 m!2335281))

(declare-fun m!2335283 () Bool)

(assert (=> b!1903800 m!2335283))

(assert (=> b!1903800 m!2334261))

(declare-fun m!2335285 () Bool)

(assert (=> b!1903800 m!2335285))

(assert (=> b!1903800 m!2335285))

(declare-fun m!2335289 () Bool)

(assert (=> b!1903800 m!2335289))

(declare-fun m!2335293 () Bool)

(assert (=> b!1903801 m!2335293))

(declare-fun m!2335295 () Bool)

(assert (=> d!581973 m!2335295))

(assert (=> d!581973 m!2334261))

(assert (=> d!581973 m!2334261))

(declare-fun m!2335297 () Bool)

(assert (=> d!581973 m!2335297))

(declare-fun m!2335299 () Bool)

(assert (=> b!1903802 m!2335299))

(assert (=> b!1903802 m!2334261))

(assert (=> b!1903802 m!2335285))

(assert (=> b!1903802 m!2335285))

(assert (=> b!1903802 m!2335289))

(assert (=> d!581725 d!581973))

(declare-fun d!582049 () Bool)

(declare-fun lt!728086 () Int)

(declare-fun size!16925 (List!21538) Int)

(assert (=> d!582049 (= lt!728086 (size!16925 (list!8717 (_1!11562 lt!727791))))))

(declare-fun size!16926 (Conc!7137) Int)

(assert (=> d!582049 (= lt!728086 (size!16926 (c!310036 (_1!11562 lt!727791))))))

(assert (=> d!582049 (= (size!16920 (_1!11562 lt!727791)) lt!728086)))

(declare-fun bs!413674 () Bool)

(assert (= bs!413674 d!582049))

(declare-fun m!2335307 () Bool)

(assert (=> bs!413674 m!2335307))

(assert (=> bs!413674 m!2335307))

(declare-fun m!2335309 () Bool)

(assert (=> bs!413674 m!2335309))

(declare-fun m!2335311 () Bool)

(assert (=> bs!413674 m!2335311))

(assert (=> d!581725 d!582049))

(assert (=> d!581725 d!581731))

(declare-fun d!582059 () Bool)

(declare-fun res!850183 () Bool)

(declare-fun e!1216117 () Bool)

(assert (=> d!582059 (=> res!850183 e!1216117)))

(assert (=> d!582059 (= res!850183 ((_ is Nil!21456) (t!177029 tokens!598)))))

(assert (=> d!582059 (= (forall!4504 (t!177029 tokens!598) lambda!74377) e!1216117)))

(declare-fun b!1903807 () Bool)

(declare-fun e!1216118 () Bool)

(assert (=> b!1903807 (= e!1216117 e!1216118)))

(declare-fun res!850184 () Bool)

(assert (=> b!1903807 (=> (not res!850184) (not e!1216118))))

(assert (=> b!1903807 (= res!850184 (dynLambda!10437 lambda!74377 (h!26857 (t!177029 tokens!598))))))

(declare-fun b!1903808 () Bool)

(assert (=> b!1903808 (= e!1216118 (forall!4504 (t!177029 (t!177029 tokens!598)) lambda!74377))))

(assert (= (and d!582059 (not res!850183)) b!1903807))

(assert (= (and b!1903807 res!850184) b!1903808))

(declare-fun b_lambda!62799 () Bool)

(assert (=> (not b_lambda!62799) (not b!1903807)))

(declare-fun m!2335313 () Bool)

(assert (=> b!1903807 m!2335313))

(declare-fun m!2335315 () Bool)

(assert (=> b!1903808 m!2335315))

(assert (=> b!1902951 d!582059))

(declare-fun lt!728087 () BalanceConc!14086)

(declare-fun d!582061 () Bool)

(assert (=> d!582061 (= (list!8716 lt!728087) (originalCharacters!4627 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))))))

(assert (=> d!582061 (= lt!728087 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))))) (value!120461 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))))

(assert (=> d!582061 (= (charsOf!2376 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))) lt!728087)))

(declare-fun b_lambda!62801 () Bool)

(assert (=> (not b_lambda!62801) (not d!582061)))

(declare-fun tb!116179 () Bool)

(declare-fun t!177176 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177176) tb!116179))

(declare-fun tp!543743 () Bool)

(declare-fun b!1903815 () Bool)

(declare-fun e!1216123 () Bool)

(assert (=> b!1903815 (= e!1216123 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))))) (value!120461 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) tp!543743))))

(declare-fun result!140478 () Bool)

(assert (=> tb!116179 (= result!140478 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))))) (value!120461 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598))))))) e!1216123))))

(assert (= tb!116179 b!1903815))

(declare-fun m!2335317 () Bool)

(assert (=> b!1903815 m!2335317))

(declare-fun m!2335319 () Bool)

(assert (=> tb!116179 m!2335319))

(assert (=> d!582061 t!177176))

(declare-fun b_and!147621 () Bool)

(assert (= b_and!147577 (and (=> t!177176 result!140478) b_and!147621)))

(declare-fun tb!116181 () Bool)

(declare-fun t!177178 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177178) tb!116181))

(declare-fun result!140480 () Bool)

(assert (= result!140480 result!140478))

(assert (=> d!582061 t!177178))

(declare-fun b_and!147623 () Bool)

(assert (= b_and!147579 (and (=> t!177178 result!140480) b_and!147623)))

(declare-fun t!177180 () Bool)

(declare-fun tb!116183 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177180) tb!116183))

(declare-fun result!140482 () Bool)

(assert (= result!140482 result!140478))

(assert (=> d!582061 t!177180))

(declare-fun b_and!147625 () Bool)

(assert (= b_and!147581 (and (=> t!177180 result!140482) b_and!147625)))

(declare-fun t!177182 () Bool)

(declare-fun tb!116185 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177182) tb!116185))

(declare-fun result!140484 () Bool)

(assert (= result!140484 result!140478))

(assert (=> d!582061 t!177182))

(declare-fun b_and!147627 () Bool)

(assert (= b_and!147589 (and (=> t!177182 result!140484) b_and!147627)))

(declare-fun t!177184 () Bool)

(declare-fun tb!116187 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177184) tb!116187))

(declare-fun result!140486 () Bool)

(assert (= result!140486 result!140478))

(assert (=> d!582061 t!177184))

(declare-fun b_and!147629 () Bool)

(assert (= b_and!147585 (and (=> t!177184 result!140486) b_and!147629)))

(declare-fun m!2335321 () Bool)

(assert (=> d!582061 m!2335321))

(declare-fun m!2335323 () Bool)

(assert (=> d!582061 m!2335323))

(assert (=> bm!117197 d!582061))

(declare-fun d!582063 () Bool)

(declare-fun charsToBigInt!0 (List!21536 Int) Int)

(assert (=> d!582063 (= (inv!15 (value!120461 separatorToken!354)) (= (charsToBigInt!0 (text!28141 (value!120461 separatorToken!354)) 0) (value!120456 (value!120461 separatorToken!354))))))

(declare-fun bs!413675 () Bool)

(assert (= bs!413675 d!582063))

(declare-fun m!2335337 () Bool)

(assert (=> bs!413675 m!2335337))

(assert (=> b!1903518 d!582063))

(declare-fun d!582073 () Bool)

(assert (=> d!582073 (= (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))) (list!8720 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))))

(declare-fun bs!413676 () Bool)

(assert (= bs!413676 d!582073))

(declare-fun m!2335339 () Bool)

(assert (=> bs!413676 m!2335339))

(assert (=> d!581803 d!582073))

(assert (=> d!581803 d!581805))

(declare-fun d!582075 () Bool)

(declare-fun dynLambda!10447 (Int BalanceConc!14086) Bool)

(assert (=> d!582075 (dynLambda!10447 lambda!74398 lt!727777)))

(declare-fun lt!728092 () Unit!35776)

(declare-fun choose!11855 (Int BalanceConc!14086) Unit!35776)

(assert (=> d!582075 (= lt!728092 (choose!11855 lambda!74398 lt!727777))))

(declare-fun Forall!992 (Int) Bool)

(assert (=> d!582075 (Forall!992 lambda!74398)))

(assert (=> d!582075 (= (ForallOf!387 lambda!74398 lt!727777) lt!728092)))

(declare-fun b_lambda!62803 () Bool)

(assert (=> (not b_lambda!62803) (not d!582075)))

(declare-fun bs!413677 () Bool)

(assert (= bs!413677 d!582075))

(declare-fun m!2335347 () Bool)

(assert (=> bs!413677 m!2335347))

(declare-fun m!2335351 () Bool)

(assert (=> bs!413677 m!2335351))

(declare-fun m!2335353 () Bool)

(assert (=> bs!413677 m!2335353))

(assert (=> d!581803 d!582075))

(declare-fun d!582079 () Bool)

(assert (=> d!582079 (= (isEmpty!13170 lt!727768) (not ((_ is Some!4344) lt!727768)))))

(assert (=> d!581861 d!582079))

(declare-fun bm!117235 () Bool)

(declare-fun call!117240 () Bool)

(assert (=> bm!117235 (= call!117240 (isEmpty!13167 (tail!2944 lt!727773)))))

(declare-fun b!1903843 () Bool)

(declare-fun e!1216142 () Bool)

(assert (=> b!1903843 (= e!1216142 (= (head!4418 (tail!2944 lt!727773)) (c!309905 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)))))))

(declare-fun b!1903844 () Bool)

(declare-fun e!1216146 () Bool)

(declare-fun e!1216143 () Bool)

(assert (=> b!1903844 (= e!1216146 e!1216143)))

(declare-fun res!850195 () Bool)

(assert (=> b!1903844 (=> (not res!850195) (not e!1216143))))

(declare-fun lt!728095 () Bool)

(assert (=> b!1903844 (= res!850195 (not lt!728095))))

(declare-fun b!1903845 () Bool)

(declare-fun e!1216147 () Bool)

(assert (=> b!1903845 (= e!1216147 (not lt!728095))))

(declare-fun b!1903846 () Bool)

(declare-fun res!850197 () Bool)

(declare-fun e!1216144 () Bool)

(assert (=> b!1903846 (=> res!850197 e!1216144)))

(assert (=> b!1903846 (= res!850197 (not (isEmpty!13167 (tail!2944 (tail!2944 lt!727773)))))))

(declare-fun b!1903847 () Bool)

(declare-fun res!850196 () Bool)

(assert (=> b!1903847 (=> (not res!850196) (not e!1216142))))

(assert (=> b!1903847 (= res!850196 (not call!117240))))

(declare-fun b!1903848 () Bool)

(declare-fun e!1216145 () Bool)

(assert (=> b!1903848 (= e!1216145 e!1216147)))

(declare-fun c!310104 () Bool)

(assert (=> b!1903848 (= c!310104 ((_ is EmptyLang!5245) (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773))))))

(declare-fun b!1903849 () Bool)

(declare-fun e!1216141 () Bool)

(assert (=> b!1903849 (= e!1216141 (nullable!1591 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773))))))

(declare-fun b!1903850 () Bool)

(declare-fun res!850193 () Bool)

(assert (=> b!1903850 (=> res!850193 e!1216146)))

(assert (=> b!1903850 (= res!850193 e!1216142)))

(declare-fun res!850194 () Bool)

(assert (=> b!1903850 (=> (not res!850194) (not e!1216142))))

(assert (=> b!1903850 (= res!850194 lt!728095)))

(declare-fun b!1903851 () Bool)

(declare-fun res!850192 () Bool)

(assert (=> b!1903851 (=> res!850192 e!1216146)))

(assert (=> b!1903851 (= res!850192 (not ((_ is ElementMatch!5245) (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)))))))

(assert (=> b!1903851 (= e!1216147 e!1216146)))

(declare-fun b!1903852 () Bool)

(assert (=> b!1903852 (= e!1216141 (matchR!2531 (derivativeStep!1350 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)) (head!4418 (tail!2944 lt!727773))) (tail!2944 (tail!2944 lt!727773))))))

(declare-fun d!582083 () Bool)

(assert (=> d!582083 e!1216145))

(declare-fun c!310103 () Bool)

(assert (=> d!582083 (= c!310103 ((_ is EmptyExpr!5245) (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773))))))

(assert (=> d!582083 (= lt!728095 e!1216141)))

(declare-fun c!310102 () Bool)

(assert (=> d!582083 (= c!310102 (isEmpty!13167 (tail!2944 lt!727773)))))

(assert (=> d!582083 (validRegex!2115 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)))))

(assert (=> d!582083 (= (matchR!2531 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)) (tail!2944 lt!727773)) lt!728095)))

(declare-fun b!1903853 () Bool)

(assert (=> b!1903853 (= e!1216145 (= lt!728095 call!117240))))

(declare-fun b!1903854 () Bool)

(declare-fun res!850198 () Bool)

(assert (=> b!1903854 (=> (not res!850198) (not e!1216142))))

(assert (=> b!1903854 (= res!850198 (isEmpty!13167 (tail!2944 (tail!2944 lt!727773))))))

(declare-fun b!1903855 () Bool)

(assert (=> b!1903855 (= e!1216143 e!1216144)))

(declare-fun res!850191 () Bool)

(assert (=> b!1903855 (=> res!850191 e!1216144)))

(assert (=> b!1903855 (= res!850191 call!117240)))

(declare-fun b!1903856 () Bool)

(assert (=> b!1903856 (= e!1216144 (not (= (head!4418 (tail!2944 lt!727773)) (c!309905 (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773))))))))

(assert (= (and d!582083 c!310102) b!1903849))

(assert (= (and d!582083 (not c!310102)) b!1903852))

(assert (= (and d!582083 c!310103) b!1903853))

(assert (= (and d!582083 (not c!310103)) b!1903848))

(assert (= (and b!1903848 c!310104) b!1903845))

(assert (= (and b!1903848 (not c!310104)) b!1903851))

(assert (= (and b!1903851 (not res!850192)) b!1903850))

(assert (= (and b!1903850 res!850194) b!1903847))

(assert (= (and b!1903847 res!850196) b!1903854))

(assert (= (and b!1903854 res!850198) b!1903843))

(assert (= (and b!1903850 (not res!850193)) b!1903844))

(assert (= (and b!1903844 res!850195) b!1903855))

(assert (= (and b!1903855 (not res!850191)) b!1903846))

(assert (= (and b!1903846 (not res!850197)) b!1903856))

(assert (= (or b!1903853 b!1903847 b!1903855) bm!117235))

(assert (=> b!1903846 m!2334553))

(declare-fun m!2335367 () Bool)

(assert (=> b!1903846 m!2335367))

(assert (=> b!1903846 m!2335367))

(declare-fun m!2335369 () Bool)

(assert (=> b!1903846 m!2335369))

(assert (=> b!1903849 m!2334561))

(declare-fun m!2335371 () Bool)

(assert (=> b!1903849 m!2335371))

(assert (=> b!1903854 m!2334553))

(assert (=> b!1903854 m!2335367))

(assert (=> b!1903854 m!2335367))

(assert (=> b!1903854 m!2335369))

(assert (=> b!1903852 m!2334553))

(declare-fun m!2335373 () Bool)

(assert (=> b!1903852 m!2335373))

(assert (=> b!1903852 m!2334561))

(assert (=> b!1903852 m!2335373))

(declare-fun m!2335379 () Bool)

(assert (=> b!1903852 m!2335379))

(assert (=> b!1903852 m!2334553))

(assert (=> b!1903852 m!2335367))

(assert (=> b!1903852 m!2335379))

(assert (=> b!1903852 m!2335367))

(declare-fun m!2335381 () Bool)

(assert (=> b!1903852 m!2335381))

(assert (=> bm!117235 m!2334553))

(assert (=> bm!117235 m!2334555))

(assert (=> b!1903843 m!2334553))

(assert (=> b!1903843 m!2335373))

(assert (=> d!582083 m!2334553))

(assert (=> d!582083 m!2334555))

(assert (=> d!582083 m!2334561))

(declare-fun m!2335383 () Bool)

(assert (=> d!582083 m!2335383))

(assert (=> b!1903856 m!2334553))

(assert (=> b!1903856 m!2335373))

(assert (=> b!1903225 d!582083))

(declare-fun bm!117245 () Bool)

(declare-fun call!117252 () Regex!5245)

(declare-fun call!117250 () Regex!5245)

(assert (=> bm!117245 (= call!117252 call!117250)))

(declare-fun b!1903917 () Bool)

(declare-fun e!1216186 () Regex!5245)

(declare-fun call!117253 () Regex!5245)

(assert (=> b!1903917 (= e!1216186 (Union!5245 call!117253 call!117250))))

(declare-fun b!1903918 () Bool)

(declare-fun e!1216182 () Regex!5245)

(assert (=> b!1903918 (= e!1216182 (ite (= (head!4418 lt!727773) (c!309905 (regex!3820 lt!727771))) EmptyExpr!5245 EmptyLang!5245))))

(declare-fun bm!117246 () Bool)

(declare-fun call!117251 () Regex!5245)

(assert (=> bm!117246 (= call!117251 call!117252)))

(declare-fun c!310130 () Bool)

(declare-fun bm!117247 () Bool)

(assert (=> bm!117247 (= call!117253 (derivativeStep!1350 (ite c!310130 (regOne!11003 (regex!3820 lt!727771)) (regOne!11002 (regex!3820 lt!727771))) (head!4418 lt!727773)))))

(declare-fun b!1903919 () Bool)

(assert (=> b!1903919 (= c!310130 ((_ is Union!5245) (regex!3820 lt!727771)))))

(assert (=> b!1903919 (= e!1216182 e!1216186)))

(declare-fun b!1903920 () Bool)

(declare-fun e!1216185 () Regex!5245)

(assert (=> b!1903920 (= e!1216185 (Concat!9202 call!117252 (regex!3820 lt!727771)))))

(declare-fun e!1216183 () Regex!5245)

(declare-fun b!1903921 () Bool)

(assert (=> b!1903921 (= e!1216183 (Union!5245 (Concat!9202 call!117253 (regTwo!11002 (regex!3820 lt!727771))) call!117251))))

(declare-fun b!1903922 () Bool)

(declare-fun c!310129 () Bool)

(assert (=> b!1903922 (= c!310129 (nullable!1591 (regOne!11002 (regex!3820 lt!727771))))))

(assert (=> b!1903922 (= e!1216185 e!1216183)))

(declare-fun b!1903923 () Bool)

(declare-fun e!1216184 () Regex!5245)

(assert (=> b!1903923 (= e!1216184 EmptyLang!5245)))

(declare-fun d!582091 () Bool)

(declare-fun lt!728105 () Regex!5245)

(assert (=> d!582091 (validRegex!2115 lt!728105)))

(assert (=> d!582091 (= lt!728105 e!1216184)))

(declare-fun c!310127 () Bool)

(assert (=> d!582091 (= c!310127 (or ((_ is EmptyExpr!5245) (regex!3820 lt!727771)) ((_ is EmptyLang!5245) (regex!3820 lt!727771))))))

(assert (=> d!582091 (validRegex!2115 (regex!3820 lt!727771))))

(assert (=> d!582091 (= (derivativeStep!1350 (regex!3820 lt!727771) (head!4418 lt!727773)) lt!728105)))

(declare-fun b!1903924 () Bool)

(assert (=> b!1903924 (= e!1216186 e!1216185)))

(declare-fun c!310128 () Bool)

(assert (=> b!1903924 (= c!310128 ((_ is Star!5245) (regex!3820 lt!727771)))))

(declare-fun bm!117248 () Bool)

(assert (=> bm!117248 (= call!117250 (derivativeStep!1350 (ite c!310130 (regTwo!11003 (regex!3820 lt!727771)) (ite c!310128 (reg!5574 (regex!3820 lt!727771)) (ite c!310129 (regTwo!11002 (regex!3820 lt!727771)) (regOne!11002 (regex!3820 lt!727771))))) (head!4418 lt!727773)))))

(declare-fun b!1903925 () Bool)

(assert (=> b!1903925 (= e!1216184 e!1216182)))

(declare-fun c!310131 () Bool)

(assert (=> b!1903925 (= c!310131 ((_ is ElementMatch!5245) (regex!3820 lt!727771)))))

(declare-fun b!1903926 () Bool)

(assert (=> b!1903926 (= e!1216183 (Union!5245 (Concat!9202 call!117251 (regTwo!11002 (regex!3820 lt!727771))) EmptyLang!5245))))

(assert (= (and d!582091 c!310127) b!1903923))

(assert (= (and d!582091 (not c!310127)) b!1903925))

(assert (= (and b!1903925 c!310131) b!1903918))

(assert (= (and b!1903925 (not c!310131)) b!1903919))

(assert (= (and b!1903919 c!310130) b!1903917))

(assert (= (and b!1903919 (not c!310130)) b!1903924))

(assert (= (and b!1903924 c!310128) b!1903920))

(assert (= (and b!1903924 (not c!310128)) b!1903922))

(assert (= (and b!1903922 c!310129) b!1903921))

(assert (= (and b!1903922 (not c!310129)) b!1903926))

(assert (= (or b!1903921 b!1903926) bm!117246))

(assert (= (or b!1903920 bm!117246) bm!117245))

(assert (= (or b!1903917 b!1903921) bm!117247))

(assert (= (or b!1903917 bm!117245) bm!117248))

(assert (=> bm!117247 m!2334559))

(declare-fun m!2335443 () Bool)

(assert (=> bm!117247 m!2335443))

(declare-fun m!2335445 () Bool)

(assert (=> b!1903922 m!2335445))

(declare-fun m!2335447 () Bool)

(assert (=> d!582091 m!2335447))

(assert (=> d!582091 m!2334567))

(assert (=> bm!117248 m!2334559))

(declare-fun m!2335449 () Bool)

(assert (=> bm!117248 m!2335449))

(assert (=> b!1903225 d!582091))

(declare-fun d!582113 () Bool)

(assert (=> d!582113 (= (head!4418 lt!727773) (h!26856 lt!727773))))

(assert (=> b!1903225 d!582113))

(declare-fun d!582115 () Bool)

(assert (=> d!582115 (= (tail!2944 lt!727773) (t!177028 lt!727773))))

(assert (=> b!1903225 d!582115))

(declare-fun bm!117249 () Bool)

(declare-fun call!117254 () Bool)

(assert (=> bm!117249 (= call!117254 (isEmpty!13167 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))))))

(declare-fun b!1903933 () Bool)

(declare-fun e!1216190 () Bool)

(assert (=> b!1903933 (= e!1216190 (= (head!4418 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) (c!309905 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))))))

(declare-fun b!1903934 () Bool)

(declare-fun e!1216194 () Bool)

(declare-fun e!1216191 () Bool)

(assert (=> b!1903934 (= e!1216194 e!1216191)))

(declare-fun res!850221 () Bool)

(assert (=> b!1903934 (=> (not res!850221) (not e!1216191))))

(declare-fun lt!728107 () Bool)

(assert (=> b!1903934 (= res!850221 (not lt!728107))))

(declare-fun b!1903935 () Bool)

(declare-fun e!1216195 () Bool)

(assert (=> b!1903935 (= e!1216195 (not lt!728107))))

(declare-fun b!1903936 () Bool)

(declare-fun res!850223 () Bool)

(declare-fun e!1216192 () Bool)

(assert (=> b!1903936 (=> res!850223 e!1216192)))

(assert (=> b!1903936 (= res!850223 (not (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))))))))

(declare-fun b!1903937 () Bool)

(declare-fun res!850222 () Bool)

(assert (=> b!1903937 (=> (not res!850222) (not e!1216190))))

(assert (=> b!1903937 (= res!850222 (not call!117254))))

(declare-fun b!1903938 () Bool)

(declare-fun e!1216193 () Bool)

(assert (=> b!1903938 (= e!1216193 e!1216195)))

(declare-fun c!310135 () Bool)

(assert (=> b!1903938 (= c!310135 ((_ is EmptyLang!5245) (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))))))

(declare-fun b!1903939 () Bool)

(declare-fun e!1216189 () Bool)

(assert (=> b!1903939 (= e!1216189 (nullable!1591 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))))))

(declare-fun b!1903940 () Bool)

(declare-fun res!850219 () Bool)

(assert (=> b!1903940 (=> res!850219 e!1216194)))

(assert (=> b!1903940 (= res!850219 e!1216190)))

(declare-fun res!850220 () Bool)

(assert (=> b!1903940 (=> (not res!850220) (not e!1216190))))

(assert (=> b!1903940 (= res!850220 lt!728107)))

(declare-fun b!1903941 () Bool)

(declare-fun res!850218 () Bool)

(assert (=> b!1903941 (=> res!850218 e!1216194)))

(assert (=> b!1903941 (= res!850218 (not ((_ is ElementMatch!5245) (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))))))

(assert (=> b!1903941 (= e!1216195 e!1216194)))

(declare-fun b!1903942 () Bool)

(assert (=> b!1903942 (= e!1216189 (matchR!2531 (derivativeStep!1350 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))) (head!4418 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))))) (tail!2944 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))))))))

(declare-fun d!582119 () Bool)

(assert (=> d!582119 e!1216193))

(declare-fun c!310134 () Bool)

(assert (=> d!582119 (= c!310134 ((_ is EmptyExpr!5245) (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))))))

(assert (=> d!582119 (= lt!728107 e!1216189)))

(declare-fun c!310133 () Bool)

(assert (=> d!582119 (= c!310133 (isEmpty!13167 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))))))

(assert (=> d!582119 (validRegex!2115 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))))

(assert (=> d!582119 (= (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) lt!728107)))

(declare-fun b!1903943 () Bool)

(assert (=> b!1903943 (= e!1216193 (= lt!728107 call!117254))))

(declare-fun b!1903944 () Bool)

(declare-fun res!850224 () Bool)

(assert (=> b!1903944 (=> (not res!850224) (not e!1216190))))

(assert (=> b!1903944 (= res!850224 (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))))))))

(declare-fun b!1903945 () Bool)

(assert (=> b!1903945 (= e!1216191 e!1216192)))

(declare-fun res!850217 () Bool)

(assert (=> b!1903945 (=> res!850217 e!1216192)))

(assert (=> b!1903945 (= res!850217 call!117254)))

(declare-fun b!1903946 () Bool)

(assert (=> b!1903946 (= e!1216192 (not (= (head!4418 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) (c!309905 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))))))))

(assert (= (and d!582119 c!310133) b!1903939))

(assert (= (and d!582119 (not c!310133)) b!1903942))

(assert (= (and d!582119 c!310134) b!1903943))

(assert (= (and d!582119 (not c!310134)) b!1903938))

(assert (= (and b!1903938 c!310135) b!1903935))

(assert (= (and b!1903938 (not c!310135)) b!1903941))

(assert (= (and b!1903941 (not res!850218)) b!1903940))

(assert (= (and b!1903940 res!850220) b!1903937))

(assert (= (and b!1903937 res!850222) b!1903944))

(assert (= (and b!1903944 res!850224) b!1903933))

(assert (= (and b!1903940 (not res!850219)) b!1903934))

(assert (= (and b!1903934 res!850221) b!1903945))

(assert (= (and b!1903945 (not res!850217)) b!1903936))

(assert (= (and b!1903936 (not res!850223)) b!1903946))

(assert (= (or b!1903943 b!1903937 b!1903945) bm!117249))

(assert (=> b!1903936 m!2334803))

(declare-fun m!2335467 () Bool)

(assert (=> b!1903936 m!2335467))

(assert (=> b!1903936 m!2335467))

(declare-fun m!2335469 () Bool)

(assert (=> b!1903936 m!2335469))

(declare-fun m!2335471 () Bool)

(assert (=> b!1903939 m!2335471))

(assert (=> b!1903944 m!2334803))

(assert (=> b!1903944 m!2335467))

(assert (=> b!1903944 m!2335467))

(assert (=> b!1903944 m!2335469))

(assert (=> b!1903942 m!2334803))

(declare-fun m!2335475 () Bool)

(assert (=> b!1903942 m!2335475))

(assert (=> b!1903942 m!2335475))

(declare-fun m!2335479 () Bool)

(assert (=> b!1903942 m!2335479))

(assert (=> b!1903942 m!2334803))

(assert (=> b!1903942 m!2335467))

(assert (=> b!1903942 m!2335479))

(assert (=> b!1903942 m!2335467))

(declare-fun m!2335481 () Bool)

(assert (=> b!1903942 m!2335481))

(assert (=> bm!117249 m!2334803))

(declare-fun m!2335483 () Bool)

(assert (=> bm!117249 m!2335483))

(assert (=> b!1903933 m!2334803))

(assert (=> b!1903933 m!2335475))

(assert (=> d!582119 m!2334803))

(assert (=> d!582119 m!2335483))

(declare-fun m!2335487 () Bool)

(assert (=> d!582119 m!2335487))

(assert (=> b!1903946 m!2334803))

(assert (=> b!1903946 m!2335475))

(assert (=> b!1903435 d!582119))

(declare-fun d!582127 () Bool)

(assert (=> d!582127 (= (get!6663 lt!727929) (v!26374 lt!727929))))

(assert (=> b!1903435 d!582127))

(declare-fun d!582129 () Bool)

(assert (=> d!582129 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))) (list!8720 (c!309906 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))))))

(declare-fun bs!413688 () Bool)

(assert (= bs!413688 d!582129))

(declare-fun m!2335493 () Bool)

(assert (=> bs!413688 m!2335493))

(assert (=> b!1903435 d!582129))

(declare-fun d!582135 () Bool)

(declare-fun lt!728109 () BalanceConc!14086)

(assert (=> d!582135 (= (list!8716 lt!728109) (originalCharacters!4627 (_1!11561 (get!6663 lt!727929))))))

(assert (=> d!582135 (= lt!728109 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))) (value!120461 (_1!11561 (get!6663 lt!727929)))))))

(assert (=> d!582135 (= (charsOf!2376 (_1!11561 (get!6663 lt!727929))) lt!728109)))

(declare-fun b_lambda!62807 () Bool)

(assert (=> (not b_lambda!62807) (not d!582135)))

(declare-fun tb!116199 () Bool)

(declare-fun t!177197 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177197) tb!116199))

(declare-fun b!1903948 () Bool)

(declare-fun e!1216197 () Bool)

(declare-fun tp!543745 () Bool)

(assert (=> b!1903948 (= e!1216197 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))) (value!120461 (_1!11561 (get!6663 lt!727929)))))) tp!543745))))

(declare-fun result!140498 () Bool)

(assert (=> tb!116199 (= result!140498 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))) (value!120461 (_1!11561 (get!6663 lt!727929))))) e!1216197))))

(assert (= tb!116199 b!1903948))

(declare-fun m!2335497 () Bool)

(assert (=> b!1903948 m!2335497))

(declare-fun m!2335499 () Bool)

(assert (=> tb!116199 m!2335499))

(assert (=> d!582135 t!177197))

(declare-fun b_and!147641 () Bool)

(assert (= b_and!147621 (and (=> t!177197 result!140498) b_and!147641)))

(declare-fun tb!116201 () Bool)

(declare-fun t!177199 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177199) tb!116201))

(declare-fun result!140500 () Bool)

(assert (= result!140500 result!140498))

(assert (=> d!582135 t!177199))

(declare-fun b_and!147643 () Bool)

(assert (= b_and!147623 (and (=> t!177199 result!140500) b_and!147643)))

(declare-fun t!177201 () Bool)

(declare-fun tb!116203 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177201) tb!116203))

(declare-fun result!140502 () Bool)

(assert (= result!140502 result!140498))

(assert (=> d!582135 t!177201))

(declare-fun b_and!147645 () Bool)

(assert (= b_and!147629 (and (=> t!177201 result!140502) b_and!147645)))

(declare-fun tb!116205 () Bool)

(declare-fun t!177203 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177203) tb!116205))

(declare-fun result!140504 () Bool)

(assert (= result!140504 result!140498))

(assert (=> d!582135 t!177203))

(declare-fun b_and!147647 () Bool)

(assert (= b_and!147627 (and (=> t!177203 result!140504) b_and!147647)))

(declare-fun t!177205 () Bool)

(declare-fun tb!116207 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177205) tb!116207))

(declare-fun result!140506 () Bool)

(assert (= result!140506 result!140498))

(assert (=> d!582135 t!177205))

(declare-fun b_and!147649 () Bool)

(assert (= b_and!147625 (and (=> t!177205 result!140506) b_and!147649)))

(declare-fun m!2335503 () Bool)

(assert (=> d!582135 m!2335503))

(declare-fun m!2335505 () Bool)

(assert (=> d!582135 m!2335505))

(assert (=> b!1903435 d!582135))

(declare-fun d!582139 () Bool)

(declare-fun lt!728113 () Bool)

(declare-fun content!3141 (List!21539) (InoxSet Rule!7440))

(assert (=> d!582139 (= lt!728113 (select (content!3141 rules!3198) (get!6662 lt!727944)))))

(declare-fun e!1216204 () Bool)

(assert (=> d!582139 (= lt!728113 e!1216204)))

(declare-fun res!850231 () Bool)

(assert (=> d!582139 (=> (not res!850231) (not e!1216204))))

(assert (=> d!582139 (= res!850231 ((_ is Cons!21457) rules!3198))))

(assert (=> d!582139 (= (contains!3847 rules!3198 (get!6662 lt!727944)) lt!728113)))

(declare-fun b!1903957 () Bool)

(declare-fun e!1216205 () Bool)

(assert (=> b!1903957 (= e!1216204 e!1216205)))

(declare-fun res!850232 () Bool)

(assert (=> b!1903957 (=> res!850232 e!1216205)))

(assert (=> b!1903957 (= res!850232 (= (h!26858 rules!3198) (get!6662 lt!727944)))))

(declare-fun b!1903958 () Bool)

(assert (=> b!1903958 (= e!1216205 (contains!3847 (t!177030 rules!3198) (get!6662 lt!727944)))))

(assert (= (and d!582139 res!850231) b!1903957))

(assert (= (and b!1903957 (not res!850232)) b!1903958))

(declare-fun m!2335513 () Bool)

(assert (=> d!582139 m!2335513))

(assert (=> d!582139 m!2334839))

(declare-fun m!2335517 () Bool)

(assert (=> d!582139 m!2335517))

(assert (=> b!1903958 m!2334839))

(declare-fun m!2335521 () Bool)

(assert (=> b!1903958 m!2335521))

(assert (=> b!1903460 d!582139))

(declare-fun d!582147 () Bool)

(assert (=> d!582147 (= (get!6662 lt!727944) (v!26373 lt!727944))))

(assert (=> b!1903460 d!582147))

(declare-fun d!582151 () Bool)

(declare-fun charsToInt!0 (List!21536) (_ BitVec 32))

(assert (=> d!582151 (= (inv!16 (value!120461 separatorToken!354)) (= (charsToInt!0 (text!28139 (value!120461 separatorToken!354))) (value!120452 (value!120461 separatorToken!354))))))

(declare-fun bs!413699 () Bool)

(assert (= bs!413699 d!582151))

(declare-fun m!2335527 () Bool)

(assert (=> bs!413699 m!2335527))

(assert (=> b!1903522 d!582151))

(declare-fun d!582155 () Bool)

(assert (=> d!582155 (= (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))) (list!8720 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))))

(declare-fun bs!413700 () Bool)

(assert (= bs!413700 d!582155))

(declare-fun m!2335529 () Bool)

(assert (=> bs!413700 m!2335529))

(assert (=> b!1903097 d!582155))

(assert (=> d!581877 d!581871))

(assert (=> d!581877 d!581873))

(assert (=> d!581877 d!581875))

(assert (=> d!581877 d!581879))

(declare-fun d!582157 () Bool)

(assert (=> d!582157 (= (++!5763 (++!5763 lt!727775 lt!727773) lt!727764) (++!5763 lt!727775 (++!5763 lt!727773 lt!727764)))))

(assert (=> d!582157 true))

(declare-fun _$52!1175 () Unit!35776)

(assert (=> d!582157 (= (choose!11852 lt!727775 lt!727773 lt!727764) _$52!1175)))

(declare-fun bs!413701 () Bool)

(assert (= bs!413701 d!582157))

(assert (=> bs!413701 m!2334133))

(assert (=> bs!413701 m!2334133))

(assert (=> bs!413701 m!2334135))

(assert (=> bs!413701 m!2334137))

(assert (=> bs!413701 m!2334137))

(assert (=> bs!413701 m!2334139))

(assert (=> d!581877 d!582157))

(declare-fun d!582159 () Bool)

(declare-fun e!1216214 () Bool)

(assert (=> d!582159 e!1216214))

(declare-fun res!850241 () Bool)

(assert (=> d!582159 (=> (not res!850241) (not e!1216214))))

(declare-fun lt!728115 () List!21537)

(assert (=> d!582159 (= res!850241 (= (content!3139 lt!728115) ((_ map or) (content!3139 (t!177028 lt!727775)) (content!3139 lt!727773))))))

(declare-fun e!1216213 () List!21537)

(assert (=> d!582159 (= lt!728115 e!1216213)))

(declare-fun c!310140 () Bool)

(assert (=> d!582159 (= c!310140 ((_ is Nil!21455) (t!177028 lt!727775)))))

(assert (=> d!582159 (= (++!5763 (t!177028 lt!727775) lt!727773) lt!728115)))

(declare-fun b!1903974 () Bool)

(assert (=> b!1903974 (= e!1216213 (Cons!21455 (h!26856 (t!177028 lt!727775)) (++!5763 (t!177028 (t!177028 lt!727775)) lt!727773)))))

(declare-fun b!1903975 () Bool)

(declare-fun res!850242 () Bool)

(assert (=> b!1903975 (=> (not res!850242) (not e!1216214))))

(assert (=> b!1903975 (= res!850242 (= (size!16921 lt!728115) (+ (size!16921 (t!177028 lt!727775)) (size!16921 lt!727773))))))

(declare-fun b!1903973 () Bool)

(assert (=> b!1903973 (= e!1216213 lt!727773)))

(declare-fun b!1903976 () Bool)

(assert (=> b!1903976 (= e!1216214 (or (not (= lt!727773 Nil!21455)) (= lt!728115 (t!177028 lt!727775))))))

(assert (= (and d!582159 c!310140) b!1903973))

(assert (= (and d!582159 (not c!310140)) b!1903974))

(assert (= (and d!582159 res!850241) b!1903975))

(assert (= (and b!1903975 res!850242) b!1903976))

(declare-fun m!2335549 () Bool)

(assert (=> d!582159 m!2335549))

(assert (=> d!582159 m!2335069))

(assert (=> d!582159 m!2334867))

(declare-fun m!2335551 () Bool)

(assert (=> b!1903974 m!2335551))

(declare-fun m!2335555 () Bool)

(assert (=> b!1903975 m!2335555))

(declare-fun m!2335557 () Bool)

(assert (=> b!1903975 m!2335557))

(assert (=> b!1903975 m!2334873))

(assert (=> b!1903515 d!582159))

(declare-fun d!582167 () Bool)

(declare-fun c!310148 () Bool)

(assert (=> d!582167 (= c!310148 (and ((_ is Cons!21457) rules!3198) (not (= (isSeparator!3820 (h!26858 rules!3198)) (isSeparator!3820 (h!26858 rules!3198))))))))

(declare-fun e!1216230 () Bool)

(assert (=> d!582167 (= (ruleDisjointCharsFromAllFromOtherType!425 (h!26858 rules!3198) rules!3198) e!1216230)))

(declare-fun b!1904000 () Bool)

(declare-fun e!1216231 () Bool)

(declare-fun call!117258 () Bool)

(assert (=> b!1904000 (= e!1216231 call!117258)))

(declare-fun bm!117253 () Bool)

(assert (=> bm!117253 (= call!117258 (ruleDisjointCharsFromAllFromOtherType!425 (h!26858 rules!3198) (t!177030 rules!3198)))))

(declare-fun b!1904001 () Bool)

(assert (=> b!1904001 (= e!1216230 e!1216231)))

(declare-fun res!850252 () Bool)

(declare-fun rulesUseDisjointChars!198 (Rule!7440 Rule!7440) Bool)

(assert (=> b!1904001 (= res!850252 (rulesUseDisjointChars!198 (h!26858 rules!3198) (h!26858 rules!3198)))))

(assert (=> b!1904001 (=> (not res!850252) (not e!1216231))))

(declare-fun b!1904002 () Bool)

(declare-fun e!1216232 () Bool)

(assert (=> b!1904002 (= e!1216230 e!1216232)))

(declare-fun res!850251 () Bool)

(assert (=> b!1904002 (= res!850251 (not ((_ is Cons!21457) rules!3198)))))

(assert (=> b!1904002 (=> res!850251 e!1216232)))

(declare-fun b!1904003 () Bool)

(assert (=> b!1904003 (= e!1216232 call!117258)))

(assert (= (and d!582167 c!310148) b!1904001))

(assert (= (and d!582167 (not c!310148)) b!1904002))

(assert (= (and b!1904001 res!850252) b!1904000))

(assert (= (and b!1904002 (not res!850251)) b!1904003))

(assert (= (or b!1904000 b!1904003) bm!117253))

(declare-fun m!2335587 () Bool)

(assert (=> bm!117253 m!2335587))

(declare-fun m!2335589 () Bool)

(assert (=> b!1904001 m!2335589))

(assert (=> b!1902956 d!582167))

(assert (=> b!1903229 d!582113))

(declare-fun d!582183 () Bool)

(declare-fun e!1216234 () Bool)

(assert (=> d!582183 e!1216234))

(declare-fun res!850253 () Bool)

(assert (=> d!582183 (=> (not res!850253) (not e!1216234))))

(declare-fun lt!728120 () List!21537)

(assert (=> d!582183 (= res!850253 (= (content!3139 lt!728120) ((_ map or) (content!3139 e!1215865) (content!3139 (ite c!310000 lt!727901 call!117202)))))))

(declare-fun e!1216233 () List!21537)

(assert (=> d!582183 (= lt!728120 e!1216233)))

(declare-fun c!310149 () Bool)

(assert (=> d!582183 (= c!310149 ((_ is Nil!21455) e!1215865))))

(assert (=> d!582183 (= (++!5763 e!1215865 (ite c!310000 lt!727901 call!117202)) lt!728120)))

(declare-fun b!1904005 () Bool)

(assert (=> b!1904005 (= e!1216233 (Cons!21455 (h!26856 e!1215865) (++!5763 (t!177028 e!1215865) (ite c!310000 lt!727901 call!117202))))))

(declare-fun b!1904006 () Bool)

(declare-fun res!850254 () Bool)

(assert (=> b!1904006 (=> (not res!850254) (not e!1216234))))

(assert (=> b!1904006 (= res!850254 (= (size!16921 lt!728120) (+ (size!16921 e!1215865) (size!16921 (ite c!310000 lt!727901 call!117202)))))))

(declare-fun b!1904004 () Bool)

(assert (=> b!1904004 (= e!1216233 (ite c!310000 lt!727901 call!117202))))

(declare-fun b!1904007 () Bool)

(assert (=> b!1904007 (= e!1216234 (or (not (= (ite c!310000 lt!727901 call!117202) Nil!21455)) (= lt!728120 e!1215865)))))

(assert (= (and d!582183 c!310149) b!1904004))

(assert (= (and d!582183 (not c!310149)) b!1904005))

(assert (= (and d!582183 res!850253) b!1904006))

(assert (= (and b!1904006 res!850254) b!1904007))

(declare-fun m!2335593 () Bool)

(assert (=> d!582183 m!2335593))

(declare-fun m!2335595 () Bool)

(assert (=> d!582183 m!2335595))

(declare-fun m!2335597 () Bool)

(assert (=> d!582183 m!2335597))

(declare-fun m!2335599 () Bool)

(assert (=> b!1904005 m!2335599))

(declare-fun m!2335601 () Bool)

(assert (=> b!1904006 m!2335601))

(declare-fun m!2335603 () Bool)

(assert (=> b!1904006 m!2335603))

(declare-fun m!2335605 () Bool)

(assert (=> b!1904006 m!2335605))

(assert (=> bm!117200 d!582183))

(declare-fun d!582187 () Bool)

(declare-fun e!1216236 () Bool)

(assert (=> d!582187 e!1216236))

(declare-fun res!850255 () Bool)

(assert (=> d!582187 (=> (not res!850255) (not e!1216236))))

(declare-fun lt!728121 () List!21537)

(assert (=> d!582187 (= res!850255 (= (content!3139 lt!728121) ((_ map or) (content!3139 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) (content!3139 (_2!11561 (get!6663 lt!727929))))))))

(declare-fun e!1216235 () List!21537)

(assert (=> d!582187 (= lt!728121 e!1216235)))

(declare-fun c!310150 () Bool)

(assert (=> d!582187 (= c!310150 ((_ is Nil!21455) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))))))

(assert (=> d!582187 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))) (_2!11561 (get!6663 lt!727929))) lt!728121)))

(declare-fun b!1904009 () Bool)

(assert (=> b!1904009 (= e!1216235 (Cons!21455 (h!26856 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) (++!5763 (t!177028 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) (_2!11561 (get!6663 lt!727929)))))))

(declare-fun b!1904010 () Bool)

(declare-fun res!850256 () Bool)

(assert (=> b!1904010 (=> (not res!850256) (not e!1216236))))

(assert (=> b!1904010 (= res!850256 (= (size!16921 lt!728121) (+ (size!16921 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929))))) (size!16921 (_2!11561 (get!6663 lt!727929))))))))

(declare-fun b!1904008 () Bool)

(assert (=> b!1904008 (= e!1216235 (_2!11561 (get!6663 lt!727929)))))

(declare-fun b!1904011 () Bool)

(assert (=> b!1904011 (= e!1216236 (or (not (= (_2!11561 (get!6663 lt!727929)) Nil!21455)) (= lt!728121 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727929)))))))))

(assert (= (and d!582187 c!310150) b!1904008))

(assert (= (and d!582187 (not c!310150)) b!1904009))

(assert (= (and d!582187 res!850255) b!1904010))

(assert (= (and b!1904010 res!850256) b!1904011))

(declare-fun m!2335607 () Bool)

(assert (=> d!582187 m!2335607))

(assert (=> d!582187 m!2334803))

(declare-fun m!2335609 () Bool)

(assert (=> d!582187 m!2335609))

(declare-fun m!2335611 () Bool)

(assert (=> d!582187 m!2335611))

(declare-fun m!2335613 () Bool)

(assert (=> b!1904009 m!2335613))

(declare-fun m!2335615 () Bool)

(assert (=> b!1904010 m!2335615))

(assert (=> b!1904010 m!2334803))

(declare-fun m!2335617 () Bool)

(assert (=> b!1904010 m!2335617))

(assert (=> b!1904010 m!2334807))

(assert (=> b!1903438 d!582187))

(assert (=> b!1903438 d!582129))

(assert (=> b!1903438 d!582135))

(assert (=> b!1903438 d!582127))

(declare-fun d!582189 () Bool)

(assert (=> d!582189 (= (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))) (not (isEmpty!13170 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))

(declare-fun bs!413705 () Bool)

(assert (= bs!413705 d!582189))

(assert (=> bs!413705 m!2334185))

(declare-fun m!2335619 () Bool)

(assert (=> bs!413705 m!2335619))

(assert (=> d!581853 d!582189))

(assert (=> d!581853 d!581865))

(declare-fun d!582191 () Bool)

(declare-fun e!1216237 () Bool)

(assert (=> d!582191 e!1216237))

(declare-fun res!850257 () Bool)

(assert (=> d!582191 (=> (not res!850257) (not e!1216237))))

(assert (=> d!582191 (= res!850257 (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))

(assert (=> d!582191 true))

(declare-fun _$52!1176 () Unit!35776)

(assert (=> d!582191 (= (choose!11850 thiss!23328 rules!3198 lt!727775 (h!26857 tokens!598)) _$52!1176)))

(declare-fun b!1904012 () Bool)

(declare-fun res!850258 () Bool)

(assert (=> b!1904012 (=> (not res!850258) (not e!1216237))))

(assert (=> b!1904012 (= res!850258 (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))) (list!8716 (charsOf!2376 (h!26857 tokens!598)))))))

(declare-fun b!1904013 () Bool)

(assert (=> b!1904013 (= e!1216237 (= (rule!6013 (h!26857 tokens!598)) (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))

(assert (= (and d!582191 res!850257) b!1904012))

(assert (= (and b!1904012 res!850258) b!1904013))

(assert (=> d!582191 m!2334185))

(assert (=> d!582191 m!2334185))

(assert (=> d!582191 m!2334779))

(assert (=> b!1904012 m!2334783))

(assert (=> b!1904012 m!2334787))

(assert (=> b!1904012 m!2334181))

(assert (=> b!1904012 m!2334185))

(assert (=> b!1904012 m!2334785))

(assert (=> b!1904012 m!2334181))

(assert (=> b!1904012 m!2334783))

(assert (=> b!1904012 m!2334185))

(assert (=> b!1904013 m!2334185))

(assert (=> b!1904013 m!2334185))

(assert (=> b!1904013 m!2334785))

(assert (=> d!581853 d!582191))

(assert (=> d!581853 d!581737))

(declare-fun d!582193 () Bool)

(assert (=> d!582193 (= (isEmpty!13167 (originalCharacters!4627 (h!26857 tokens!598))) ((_ is Nil!21455) (originalCharacters!4627 (h!26857 tokens!598))))))

(assert (=> d!581761 d!582193))

(declare-fun d!582195 () Bool)

(declare-fun res!850259 () Bool)

(declare-fun e!1216238 () Bool)

(assert (=> d!582195 (=> (not res!850259) (not e!1216238))))

(assert (=> d!582195 (= res!850259 (rulesValid!1427 thiss!23328 (t!177030 rules!3198)))))

(assert (=> d!582195 (= (rulesInvariant!3040 thiss!23328 (t!177030 rules!3198)) e!1216238)))

(declare-fun b!1904014 () Bool)

(assert (=> b!1904014 (= e!1216238 (noDuplicateTag!1425 thiss!23328 (t!177030 rules!3198) Nil!21458))))

(assert (= (and d!582195 res!850259) b!1904014))

(declare-fun m!2335621 () Bool)

(assert (=> d!582195 m!2335621))

(declare-fun m!2335623 () Bool)

(assert (=> b!1904014 m!2335623))

(assert (=> b!1903464 d!582195))

(declare-fun d!582197 () Bool)

(assert (=> d!582197 (rulesInvariant!3040 thiss!23328 (t!177030 rules!3198))))

(declare-fun lt!728124 () Unit!35776)

(declare-fun choose!11857 (LexerInterface!3433 Rule!7440 List!21539) Unit!35776)

(assert (=> d!582197 (= lt!728124 (choose!11857 thiss!23328 (h!26858 rules!3198) (t!177030 rules!3198)))))

(assert (=> d!582197 (rulesInvariant!3040 thiss!23328 (Cons!21457 (h!26858 rules!3198) (t!177030 rules!3198)))))

(assert (=> d!582197 (= (lemmaInvariantOnRulesThenOnTail!252 thiss!23328 (h!26858 rules!3198) (t!177030 rules!3198)) lt!728124)))

(declare-fun bs!413706 () Bool)

(assert (= bs!413706 d!582197))

(assert (=> bs!413706 m!2334831))

(declare-fun m!2335625 () Bool)

(assert (=> bs!413706 m!2335625))

(declare-fun m!2335627 () Bool)

(assert (=> bs!413706 m!2335627))

(assert (=> b!1903464 d!582197))

(declare-fun b!1904021 () Bool)

(declare-fun e!1216243 () Bool)

(declare-fun e!1216245 () Bool)

(assert (=> b!1904021 (= e!1216243 e!1216245)))

(declare-fun res!850267 () Bool)

(assert (=> b!1904021 (=> (not res!850267) (not e!1216245))))

(declare-fun lt!728127 () Option!4345)

(assert (=> b!1904021 (= res!850267 (contains!3847 (t!177030 rules!3198) (get!6662 lt!728127)))))

(declare-fun b!1904022 () Bool)

(declare-fun e!1216244 () Option!4345)

(assert (=> b!1904022 (= e!1216244 (Some!4344 (h!26858 (t!177030 rules!3198))))))

(declare-fun b!1904023 () Bool)

(assert (=> b!1904023 (= e!1216245 (= (tag!4248 (get!6662 lt!728127)) (tag!4248 (rule!6013 (h!26857 tokens!598)))))))

(declare-fun b!1904024 () Bool)

(declare-fun e!1216242 () Option!4345)

(assert (=> b!1904024 (= e!1216244 e!1216242)))

(declare-fun c!310151 () Bool)

(assert (=> b!1904024 (= c!310151 (and ((_ is Cons!21457) (t!177030 rules!3198)) (not (= (tag!4248 (h!26858 (t!177030 rules!3198))) (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))

(declare-fun b!1904025 () Bool)

(declare-fun lt!728126 () Unit!35776)

(declare-fun lt!728125 () Unit!35776)

(assert (=> b!1904025 (= lt!728126 lt!728125)))

(assert (=> b!1904025 (rulesInvariant!3040 thiss!23328 (t!177030 (t!177030 rules!3198)))))

(assert (=> b!1904025 (= lt!728125 (lemmaInvariantOnRulesThenOnTail!252 thiss!23328 (h!26858 (t!177030 rules!3198)) (t!177030 (t!177030 rules!3198))))))

(assert (=> b!1904025 (= e!1216242 (getRuleFromTag!663 thiss!23328 (t!177030 (t!177030 rules!3198)) (tag!4248 (rule!6013 (h!26857 tokens!598)))))))

(declare-fun d!582199 () Bool)

(assert (=> d!582199 e!1216243))

(declare-fun res!850266 () Bool)

(assert (=> d!582199 (=> res!850266 e!1216243)))

(assert (=> d!582199 (= res!850266 (isEmpty!13170 lt!728127))))

(assert (=> d!582199 (= lt!728127 e!1216244)))

(declare-fun c!310152 () Bool)

(assert (=> d!582199 (= c!310152 (and ((_ is Cons!21457) (t!177030 rules!3198)) (= (tag!4248 (h!26858 (t!177030 rules!3198))) (tag!4248 (rule!6013 (h!26857 tokens!598))))))))

(assert (=> d!582199 (rulesInvariant!3040 thiss!23328 (t!177030 rules!3198))))

(assert (=> d!582199 (= (getRuleFromTag!663 thiss!23328 (t!177030 rules!3198) (tag!4248 (rule!6013 (h!26857 tokens!598)))) lt!728127)))

(declare-fun b!1904026 () Bool)

(assert (=> b!1904026 (= e!1216242 None!4344)))

(assert (= (and d!582199 c!310152) b!1904022))

(assert (= (and d!582199 (not c!310152)) b!1904024))

(assert (= (and b!1904024 c!310151) b!1904025))

(assert (= (and b!1904024 (not c!310151)) b!1904026))

(assert (= (and d!582199 (not res!850266)) b!1904021))

(assert (= (and b!1904021 res!850267) b!1904023))

(declare-fun m!2335629 () Bool)

(assert (=> b!1904021 m!2335629))

(assert (=> b!1904021 m!2335629))

(declare-fun m!2335631 () Bool)

(assert (=> b!1904021 m!2335631))

(assert (=> b!1904023 m!2335629))

(declare-fun m!2335633 () Bool)

(assert (=> b!1904025 m!2335633))

(declare-fun m!2335635 () Bool)

(assert (=> b!1904025 m!2335635))

(declare-fun m!2335637 () Bool)

(assert (=> b!1904025 m!2335637))

(declare-fun m!2335639 () Bool)

(assert (=> d!582199 m!2335639))

(assert (=> d!582199 m!2334831))

(assert (=> b!1903464 d!582199))

(declare-fun d!582203 () Bool)

(assert (=> d!582203 (= (get!6663 lt!727923) (v!26374 lt!727923))))

(assert (=> b!1903425 d!582203))

(declare-fun d!582205 () Bool)

(assert (=> d!582205 (= (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727923))))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727923))))))))

(declare-fun b_lambda!62811 () Bool)

(assert (=> (not b_lambda!62811) (not d!582205)))

(declare-fun t!177217 () Bool)

(declare-fun tb!116219 () Bool)

(assert (=> (and b!1902858 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177217) tb!116219))

(declare-fun result!140518 () Bool)

(assert (=> tb!116219 (= result!140518 (inv!21 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727923)))))))))

(declare-fun m!2335641 () Bool)

(assert (=> tb!116219 m!2335641))

(assert (=> d!582205 t!177217))

(declare-fun b_and!147661 () Bool)

(assert (= b_and!147545 (and (=> t!177217 result!140518) b_and!147661)))

(declare-fun t!177219 () Bool)

(declare-fun tb!116221 () Bool)

(assert (=> (and b!1903564 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177219) tb!116221))

(declare-fun result!140520 () Bool)

(assert (= result!140520 result!140518))

(assert (=> d!582205 t!177219))

(declare-fun b_and!147663 () Bool)

(assert (= b_and!147587 (and (=> t!177219 result!140520) b_and!147663)))

(declare-fun t!177221 () Bool)

(declare-fun tb!116223 () Bool)

(assert (=> (and b!1902865 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177221) tb!116223))

(declare-fun result!140522 () Bool)

(assert (= result!140522 result!140518))

(assert (=> d!582205 t!177221))

(declare-fun b_and!147665 () Bool)

(assert (= b_and!147547 (and (=> t!177221 result!140522) b_and!147665)))

(declare-fun tb!116225 () Bool)

(declare-fun t!177223 () Bool)

(assert (=> (and b!1903550 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177223) tb!116225))

(declare-fun result!140524 () Bool)

(assert (= result!140524 result!140518))

(assert (=> d!582205 t!177223))

(declare-fun b_and!147667 () Bool)

(assert (= b_and!147583 (and (=> t!177223 result!140524) b_and!147667)))

(declare-fun tb!116227 () Bool)

(declare-fun t!177225 () Bool)

(assert (=> (and b!1902864 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177225) tb!116227))

(declare-fun result!140526 () Bool)

(assert (= result!140526 result!140518))

(assert (=> d!582205 t!177225))

(declare-fun b_and!147669 () Bool)

(assert (= b_and!147549 (and (=> t!177225 result!140526) b_and!147669)))

(assert (=> d!582205 m!2334771))

(declare-fun m!2335643 () Bool)

(assert (=> d!582205 m!2335643))

(assert (=> b!1903425 d!582205))

(declare-fun d!582207 () Bool)

(assert (=> d!582207 (= (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727923)))) (fromListB!1220 (originalCharacters!4627 (_1!11561 (get!6663 lt!727923)))))))

(declare-fun bs!413707 () Bool)

(assert (= bs!413707 d!582207))

(declare-fun m!2335645 () Bool)

(assert (=> bs!413707 m!2335645))

(assert (=> b!1903425 d!582207))

(declare-fun d!582209 () Bool)

(assert (=> d!582209 (= (inv!28543 (tag!4248 (rule!6013 (h!26857 (t!177029 tokens!598))))) (= (mod (str.len (value!120460 (tag!4248 (rule!6013 (h!26857 (t!177029 tokens!598)))))) 2) 0))))

(assert (=> b!1903563 d!582209))

(declare-fun d!582211 () Bool)

(declare-fun res!850270 () Bool)

(declare-fun e!1216249 () Bool)

(assert (=> d!582211 (=> (not res!850270) (not e!1216249))))

(assert (=> d!582211 (= res!850270 (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))))))

(assert (=> d!582211 (= (inv!28546 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) e!1216249)))

(declare-fun b!1904029 () Bool)

(assert (=> b!1904029 (= e!1216249 (equivClasses!1468 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))))))

(assert (= (and d!582211 res!850270) b!1904029))

(declare-fun m!2335647 () Bool)

(assert (=> d!582211 m!2335647))

(declare-fun m!2335649 () Bool)

(assert (=> b!1904029 m!2335649))

(assert (=> b!1903563 d!582211))

(declare-fun b!1904048 () Bool)

(declare-fun e!1216260 () List!21537)

(declare-fun e!1216261 () List!21537)

(assert (=> b!1904048 (= e!1216260 e!1216261)))

(declare-fun c!310160 () Bool)

(assert (=> b!1904048 (= c!310160 ((_ is Leaf!10508) (c!309906 (charsOf!2376 separatorToken!354))))))

(declare-fun d!582213 () Bool)

(declare-fun c!310159 () Bool)

(assert (=> d!582213 (= c!310159 ((_ is Empty!7135) (c!309906 (charsOf!2376 separatorToken!354))))))

(assert (=> d!582213 (= (list!8720 (c!309906 (charsOf!2376 separatorToken!354))) e!1216260)))

(declare-fun b!1904050 () Bool)

(assert (=> b!1904050 (= e!1216261 (++!5763 (list!8720 (left!17155 (c!309906 (charsOf!2376 separatorToken!354)))) (list!8720 (right!17485 (c!309906 (charsOf!2376 separatorToken!354))))))))

(declare-fun b!1904049 () Bool)

(declare-fun list!8723 (IArray!14275) List!21537)

(assert (=> b!1904049 (= e!1216261 (list!8723 (xs!10029 (c!309906 (charsOf!2376 separatorToken!354)))))))

(declare-fun b!1904047 () Bool)

(assert (=> b!1904047 (= e!1216260 Nil!21455)))

(assert (= (and d!582213 c!310159) b!1904047))

(assert (= (and d!582213 (not c!310159)) b!1904048))

(assert (= (and b!1904048 c!310160) b!1904049))

(assert (= (and b!1904048 (not c!310160)) b!1904050))

(declare-fun m!2335673 () Bool)

(assert (=> b!1904050 m!2335673))

(declare-fun m!2335675 () Bool)

(assert (=> b!1904050 m!2335675))

(assert (=> b!1904050 m!2335673))

(assert (=> b!1904050 m!2335675))

(declare-fun m!2335677 () Bool)

(assert (=> b!1904050 m!2335677))

(declare-fun m!2335679 () Bool)

(assert (=> b!1904049 m!2335679))

(assert (=> d!581841 d!582213))

(declare-fun d!582223 () Bool)

(declare-fun lt!728134 () Int)

(assert (=> d!582223 (>= lt!728134 0)))

(declare-fun e!1216262 () Int)

(assert (=> d!582223 (= lt!728134 e!1216262)))

(declare-fun c!310161 () Bool)

(assert (=> d!582223 (= c!310161 ((_ is Nil!21455) lt!727947))))

(assert (=> d!582223 (= (size!16921 lt!727947) lt!728134)))

(declare-fun b!1904051 () Bool)

(assert (=> b!1904051 (= e!1216262 0)))

(declare-fun b!1904052 () Bool)

(assert (=> b!1904052 (= e!1216262 (+ 1 (size!16921 (t!177028 lt!727947))))))

(assert (= (and d!582223 c!310161) b!1904051))

(assert (= (and d!582223 (not c!310161)) b!1904052))

(declare-fun m!2335681 () Bool)

(assert (=> b!1904052 m!2335681))

(assert (=> b!1903476 d!582223))

(declare-fun d!582225 () Bool)

(declare-fun lt!728135 () Int)

(assert (=> d!582225 (>= lt!728135 0)))

(declare-fun e!1216263 () Int)

(assert (=> d!582225 (= lt!728135 e!1216263)))

(declare-fun c!310162 () Bool)

(assert (=> d!582225 (= c!310162 ((_ is Nil!21455) lt!727775))))

(assert (=> d!582225 (= (size!16921 lt!727775) lt!728135)))

(declare-fun b!1904053 () Bool)

(assert (=> b!1904053 (= e!1216263 0)))

(declare-fun b!1904054 () Bool)

(assert (=> b!1904054 (= e!1216263 (+ 1 (size!16921 (t!177028 lt!727775))))))

(assert (= (and d!582225 c!310162) b!1904053))

(assert (= (and d!582225 (not c!310162)) b!1904054))

(assert (=> b!1904054 m!2335557))

(assert (=> b!1903476 d!582225))

(declare-fun d!582227 () Bool)

(declare-fun lt!728136 () Int)

(assert (=> d!582227 (>= lt!728136 0)))

(declare-fun e!1216264 () Int)

(assert (=> d!582227 (= lt!728136 e!1216264)))

(declare-fun c!310163 () Bool)

(assert (=> d!582227 (= c!310163 ((_ is Nil!21455) lt!727764))))

(assert (=> d!582227 (= (size!16921 lt!727764) lt!728136)))

(declare-fun b!1904055 () Bool)

(assert (=> b!1904055 (= e!1216264 0)))

(declare-fun b!1904056 () Bool)

(assert (=> b!1904056 (= e!1216264 (+ 1 (size!16921 (t!177028 lt!727764))))))

(assert (= (and d!582227 c!310163) b!1904055))

(assert (= (and d!582227 (not c!310163)) b!1904056))

(declare-fun m!2335683 () Bool)

(assert (=> b!1904056 m!2335683))

(assert (=> b!1903476 d!582227))

(declare-fun d!582229 () Bool)

(assert (=> d!582229 (= (isEmpty!13167 (originalCharacters!4627 separatorToken!354)) ((_ is Nil!21455) (originalCharacters!4627 separatorToken!354)))))

(assert (=> d!581883 d!582229))

(declare-fun d!582231 () Bool)

(declare-fun lt!728144 () Token!7192)

(declare-fun apply!5626 (List!21538 Int) Token!7192)

(assert (=> d!582231 (= lt!728144 (apply!5626 (list!8717 (_1!11562 lt!727791)) 0))))

(declare-fun apply!5627 (Conc!7137 Int) Token!7192)

(assert (=> d!582231 (= lt!728144 (apply!5627 (c!310036 (_1!11562 lt!727791)) 0))))

(declare-fun e!1216272 () Bool)

(assert (=> d!582231 e!1216272))

(declare-fun res!850284 () Bool)

(assert (=> d!582231 (=> (not res!850284) (not e!1216272))))

(assert (=> d!582231 (= res!850284 (<= 0 0))))

(assert (=> d!582231 (= (apply!5621 (_1!11562 lt!727791) 0) lt!728144)))

(declare-fun b!1904065 () Bool)

(assert (=> b!1904065 (= e!1216272 (< 0 (size!16920 (_1!11562 lt!727791))))))

(assert (= (and d!582231 res!850284) b!1904065))

(assert (=> d!582231 m!2335307))

(assert (=> d!582231 m!2335307))

(declare-fun m!2335713 () Bool)

(assert (=> d!582231 m!2335713))

(declare-fun m!2335715 () Bool)

(assert (=> d!582231 m!2335715))

(assert (=> b!1904065 m!2334267))

(assert (=> b!1902940 d!582231))

(declare-fun d!582241 () Bool)

(assert (=> d!582241 (= (isDefined!3644 lt!727923) (not (isEmpty!13169 lt!727923)))))

(declare-fun bs!413711 () Bool)

(assert (= bs!413711 d!582241))

(assert (=> bs!413711 m!2334745))

(assert (=> b!1903428 d!582241))

(declare-fun d!582243 () Bool)

(assert (=> d!582243 (= (inv!15 (value!120461 (h!26857 tokens!598))) (= (charsToBigInt!0 (text!28141 (value!120461 (h!26857 tokens!598))) 0) (value!120456 (value!120461 (h!26857 tokens!598)))))))

(declare-fun bs!413712 () Bool)

(assert (= bs!413712 d!582243))

(declare-fun m!2335717 () Bool)

(assert (=> bs!413712 m!2335717))

(assert (=> b!1903123 d!582243))

(declare-fun d!582245 () Bool)

(declare-fun lt!728145 () Int)

(assert (=> d!582245 (>= lt!728145 0)))

(declare-fun e!1216273 () Int)

(assert (=> d!582245 (= lt!728145 e!1216273)))

(declare-fun c!310165 () Bool)

(assert (=> d!582245 (= c!310165 ((_ is Nil!21455) lt!727950))))

(assert (=> d!582245 (= (size!16921 lt!727950) lt!728145)))

(declare-fun b!1904066 () Bool)

(assert (=> b!1904066 (= e!1216273 0)))

(declare-fun b!1904067 () Bool)

(assert (=> b!1904067 (= e!1216273 (+ 1 (size!16921 (t!177028 lt!727950))))))

(assert (= (and d!582245 c!310165) b!1904066))

(assert (= (and d!582245 (not c!310165)) b!1904067))

(declare-fun m!2335719 () Bool)

(assert (=> b!1904067 m!2335719))

(assert (=> b!1903512 d!582245))

(assert (=> b!1903512 d!582225))

(declare-fun d!582247 () Bool)

(declare-fun lt!728146 () Int)

(assert (=> d!582247 (>= lt!728146 0)))

(declare-fun e!1216274 () Int)

(assert (=> d!582247 (= lt!728146 e!1216274)))

(declare-fun c!310166 () Bool)

(assert (=> d!582247 (= c!310166 ((_ is Nil!21455) (++!5763 lt!727773 lt!727764)))))

(assert (=> d!582247 (= (size!16921 (++!5763 lt!727773 lt!727764)) lt!728146)))

(declare-fun b!1904068 () Bool)

(assert (=> b!1904068 (= e!1216274 0)))

(declare-fun b!1904069 () Bool)

(assert (=> b!1904069 (= e!1216274 (+ 1 (size!16921 (t!177028 (++!5763 lt!727773 lt!727764)))))))

(assert (= (and d!582247 c!310166) b!1904068))

(assert (= (and d!582247 (not c!310166)) b!1904069))

(declare-fun m!2335721 () Bool)

(assert (=> b!1904069 m!2335721))

(assert (=> b!1903512 d!582247))

(declare-fun d!582249 () Bool)

(declare-fun c!310175 () Bool)

(assert (=> d!582249 (= c!310175 ((_ is Node!7135) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))))

(declare-fun e!1216285 () Bool)

(assert (=> d!582249 (= (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))) e!1216285)))

(declare-fun b!1904088 () Bool)

(declare-fun inv!28554 (Conc!7135) Bool)

(assert (=> b!1904088 (= e!1216285 (inv!28554 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))))

(declare-fun b!1904089 () Bool)

(declare-fun e!1216286 () Bool)

(assert (=> b!1904089 (= e!1216285 e!1216286)))

(declare-fun res!850287 () Bool)

(assert (=> b!1904089 (= res!850287 (not ((_ is Leaf!10508) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))))))))

(assert (=> b!1904089 (=> res!850287 e!1216286)))

(declare-fun b!1904090 () Bool)

(declare-fun inv!28555 (Conc!7135) Bool)

(assert (=> b!1904090 (= e!1216286 (inv!28555 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))))

(assert (= (and d!582249 c!310175) b!1904088))

(assert (= (and d!582249 (not c!310175)) b!1904089))

(assert (= (and b!1904089 (not res!850287)) b!1904090))

(declare-fun m!2335747 () Bool)

(assert (=> b!1904088 m!2335747))

(declare-fun m!2335749 () Bool)

(assert (=> b!1904090 m!2335749))

(assert (=> b!1903403 d!582249))

(declare-fun d!582263 () Bool)

(declare-fun e!1216302 () Bool)

(assert (=> d!582263 e!1216302))

(declare-fun res!850304 () Bool)

(assert (=> d!582263 (=> (not res!850304) (not e!1216302))))

(declare-fun lt!728155 () BalanceConc!14086)

(assert (=> d!582263 (= res!850304 (= (list!8716 lt!728155) (originalCharacters!4627 (h!26857 tokens!598))))))

(declare-fun fromList!471 (List!21537) Conc!7135)

(assert (=> d!582263 (= lt!728155 (BalanceConc!14087 (fromList!471 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (=> d!582263 (= (fromListB!1220 (originalCharacters!4627 (h!26857 tokens!598))) lt!728155)))

(declare-fun b!1904113 () Bool)

(declare-fun isBalanced!2235 (Conc!7135) Bool)

(assert (=> b!1904113 (= e!1216302 (isBalanced!2235 (fromList!471 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (= (and d!582263 res!850304) b!1904113))

(declare-fun m!2335757 () Bool)

(assert (=> d!582263 m!2335757))

(declare-fun m!2335761 () Bool)

(assert (=> d!582263 m!2335761))

(assert (=> b!1904113 m!2335761))

(assert (=> b!1904113 m!2335761))

(declare-fun m!2335765 () Bool)

(assert (=> b!1904113 m!2335765))

(assert (=> d!581859 d!582263))

(assert (=> b!1903216 d!582113))

(declare-fun d!582267 () Bool)

(assert (=> d!582267 (= (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))) (list!8720 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))))

(declare-fun bs!413714 () Bool)

(assert (= bs!413714 d!582267))

(declare-fun m!2335771 () Bool)

(assert (=> bs!413714 m!2335771))

(assert (=> b!1903523 d!582267))

(declare-fun d!582269 () Bool)

(assert (=> d!582269 (= (inv!16 (value!120461 (h!26857 tokens!598))) (= (charsToInt!0 (text!28139 (value!120461 (h!26857 tokens!598)))) (value!120452 (value!120461 (h!26857 tokens!598)))))))

(declare-fun bs!413715 () Bool)

(assert (= bs!413715 d!582269))

(declare-fun m!2335775 () Bool)

(assert (=> bs!413715 m!2335775))

(assert (=> b!1903127 d!582269))

(declare-fun d!582271 () Bool)

(assert (=> d!582271 (= (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))) (v!26373 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))

(assert (=> b!1903402 d!582271))

(assert (=> b!1903402 d!581863))

(declare-fun bm!117255 () Bool)

(declare-fun call!117260 () Bool)

(assert (=> bm!117255 (= call!117260 (isEmpty!13167 (tail!2944 lt!727775)))))

(declare-fun b!1904114 () Bool)

(declare-fun e!1216304 () Bool)

(assert (=> b!1904114 (= e!1216304 (= (head!4418 (tail!2944 lt!727775)) (c!309905 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)))))))

(declare-fun b!1904115 () Bool)

(declare-fun e!1216308 () Bool)

(declare-fun e!1216305 () Bool)

(assert (=> b!1904115 (= e!1216308 e!1216305)))

(declare-fun res!850309 () Bool)

(assert (=> b!1904115 (=> (not res!850309) (not e!1216305))))

(declare-fun lt!728156 () Bool)

(assert (=> b!1904115 (= res!850309 (not lt!728156))))

(declare-fun b!1904116 () Bool)

(declare-fun e!1216309 () Bool)

(assert (=> b!1904116 (= e!1216309 (not lt!728156))))

(declare-fun b!1904117 () Bool)

(declare-fun res!850311 () Bool)

(declare-fun e!1216306 () Bool)

(assert (=> b!1904117 (=> res!850311 e!1216306)))

(assert (=> b!1904117 (= res!850311 (not (isEmpty!13167 (tail!2944 (tail!2944 lt!727775)))))))

(declare-fun b!1904118 () Bool)

(declare-fun res!850310 () Bool)

(assert (=> b!1904118 (=> (not res!850310) (not e!1216304))))

(assert (=> b!1904118 (= res!850310 (not call!117260))))

(declare-fun b!1904119 () Bool)

(declare-fun e!1216307 () Bool)

(assert (=> b!1904119 (= e!1216307 e!1216309)))

(declare-fun c!310182 () Bool)

(assert (=> b!1904119 (= c!310182 ((_ is EmptyLang!5245) (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775))))))

(declare-fun b!1904120 () Bool)

(declare-fun e!1216303 () Bool)

(assert (=> b!1904120 (= e!1216303 (nullable!1591 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775))))))

(declare-fun b!1904121 () Bool)

(declare-fun res!850307 () Bool)

(assert (=> b!1904121 (=> res!850307 e!1216308)))

(assert (=> b!1904121 (= res!850307 e!1216304)))

(declare-fun res!850308 () Bool)

(assert (=> b!1904121 (=> (not res!850308) (not e!1216304))))

(assert (=> b!1904121 (= res!850308 lt!728156)))

(declare-fun b!1904122 () Bool)

(declare-fun res!850306 () Bool)

(assert (=> b!1904122 (=> res!850306 e!1216308)))

(assert (=> b!1904122 (= res!850306 (not ((_ is ElementMatch!5245) (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)))))))

(assert (=> b!1904122 (= e!1216309 e!1216308)))

(declare-fun b!1904123 () Bool)

(assert (=> b!1904123 (= e!1216303 (matchR!2531 (derivativeStep!1350 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)) (head!4418 (tail!2944 lt!727775))) (tail!2944 (tail!2944 lt!727775))))))

(declare-fun d!582273 () Bool)

(assert (=> d!582273 e!1216307))

(declare-fun c!310181 () Bool)

(assert (=> d!582273 (= c!310181 ((_ is EmptyExpr!5245) (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775))))))

(assert (=> d!582273 (= lt!728156 e!1216303)))

(declare-fun c!310180 () Bool)

(assert (=> d!582273 (= c!310180 (isEmpty!13167 (tail!2944 lt!727775)))))

(assert (=> d!582273 (validRegex!2115 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)))))

(assert (=> d!582273 (= (matchR!2531 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)) (tail!2944 lt!727775)) lt!728156)))

(declare-fun b!1904124 () Bool)

(assert (=> b!1904124 (= e!1216307 (= lt!728156 call!117260))))

(declare-fun b!1904125 () Bool)

(declare-fun res!850312 () Bool)

(assert (=> b!1904125 (=> (not res!850312) (not e!1216304))))

(assert (=> b!1904125 (= res!850312 (isEmpty!13167 (tail!2944 (tail!2944 lt!727775))))))

(declare-fun b!1904126 () Bool)

(assert (=> b!1904126 (= e!1216305 e!1216306)))

(declare-fun res!850305 () Bool)

(assert (=> b!1904126 (=> res!850305 e!1216306)))

(assert (=> b!1904126 (= res!850305 call!117260)))

(declare-fun b!1904127 () Bool)

(assert (=> b!1904127 (= e!1216306 (not (= (head!4418 (tail!2944 lt!727775)) (c!309905 (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775))))))))

(assert (= (and d!582273 c!310180) b!1904120))

(assert (= (and d!582273 (not c!310180)) b!1904123))

(assert (= (and d!582273 c!310181) b!1904124))

(assert (= (and d!582273 (not c!310181)) b!1904119))

(assert (= (and b!1904119 c!310182) b!1904116))

(assert (= (and b!1904119 (not c!310182)) b!1904122))

(assert (= (and b!1904122 (not res!850306)) b!1904121))

(assert (= (and b!1904121 res!850308) b!1904118))

(assert (= (and b!1904118 res!850310) b!1904125))

(assert (= (and b!1904125 res!850312) b!1904114))

(assert (= (and b!1904121 (not res!850307)) b!1904115))

(assert (= (and b!1904115 res!850309) b!1904126))

(assert (= (and b!1904126 (not res!850305)) b!1904117))

(assert (= (and b!1904117 (not res!850311)) b!1904127))

(assert (= (or b!1904124 b!1904118 b!1904126) bm!117255))

(assert (=> b!1904117 m!2334533))

(declare-fun m!2335785 () Bool)

(assert (=> b!1904117 m!2335785))

(assert (=> b!1904117 m!2335785))

(declare-fun m!2335787 () Bool)

(assert (=> b!1904117 m!2335787))

(assert (=> b!1904120 m!2334541))

(declare-fun m!2335791 () Bool)

(assert (=> b!1904120 m!2335791))

(assert (=> b!1904125 m!2334533))

(assert (=> b!1904125 m!2335785))

(assert (=> b!1904125 m!2335785))

(assert (=> b!1904125 m!2335787))

(assert (=> b!1904123 m!2334533))

(declare-fun m!2335793 () Bool)

(assert (=> b!1904123 m!2335793))

(assert (=> b!1904123 m!2334541))

(assert (=> b!1904123 m!2335793))

(declare-fun m!2335795 () Bool)

(assert (=> b!1904123 m!2335795))

(assert (=> b!1904123 m!2334533))

(assert (=> b!1904123 m!2335785))

(assert (=> b!1904123 m!2335795))

(assert (=> b!1904123 m!2335785))

(declare-fun m!2335797 () Bool)

(assert (=> b!1904123 m!2335797))

(assert (=> bm!117255 m!2334533))

(assert (=> bm!117255 m!2334535))

(assert (=> b!1904114 m!2334533))

(assert (=> b!1904114 m!2335793))

(assert (=> d!582273 m!2334533))

(assert (=> d!582273 m!2334535))

(assert (=> d!582273 m!2334541))

(declare-fun m!2335799 () Bool)

(assert (=> d!582273 m!2335799))

(assert (=> b!1904127 m!2334533))

(assert (=> b!1904127 m!2335793))

(assert (=> b!1903210 d!582273))

(declare-fun bm!117260 () Bool)

(declare-fun call!117267 () Regex!5245)

(declare-fun call!117265 () Regex!5245)

(assert (=> bm!117260 (= call!117267 call!117265)))

(declare-fun b!1904140 () Bool)

(declare-fun e!1216320 () Regex!5245)

(declare-fun call!117268 () Regex!5245)

(assert (=> b!1904140 (= e!1216320 (Union!5245 call!117268 call!117265))))

(declare-fun b!1904141 () Bool)

(declare-fun e!1216316 () Regex!5245)

(assert (=> b!1904141 (= e!1216316 (ite (= (head!4418 lt!727775) (c!309905 (regex!3820 lt!727766))) EmptyExpr!5245 EmptyLang!5245))))

(declare-fun bm!117261 () Bool)

(declare-fun call!117266 () Regex!5245)

(assert (=> bm!117261 (= call!117266 call!117267)))

(declare-fun c!310191 () Bool)

(declare-fun bm!117262 () Bool)

(assert (=> bm!117262 (= call!117268 (derivativeStep!1350 (ite c!310191 (regOne!11003 (regex!3820 lt!727766)) (regOne!11002 (regex!3820 lt!727766))) (head!4418 lt!727775)))))

(declare-fun b!1904142 () Bool)

(assert (=> b!1904142 (= c!310191 ((_ is Union!5245) (regex!3820 lt!727766)))))

(assert (=> b!1904142 (= e!1216316 e!1216320)))

(declare-fun b!1904143 () Bool)

(declare-fun e!1216319 () Regex!5245)

(assert (=> b!1904143 (= e!1216319 (Concat!9202 call!117267 (regex!3820 lt!727766)))))

(declare-fun b!1904144 () Bool)

(declare-fun e!1216317 () Regex!5245)

(assert (=> b!1904144 (= e!1216317 (Union!5245 (Concat!9202 call!117268 (regTwo!11002 (regex!3820 lt!727766))) call!117266))))

(declare-fun b!1904145 () Bool)

(declare-fun c!310190 () Bool)

(assert (=> b!1904145 (= c!310190 (nullable!1591 (regOne!11002 (regex!3820 lt!727766))))))

(assert (=> b!1904145 (= e!1216319 e!1216317)))

(declare-fun b!1904146 () Bool)

(declare-fun e!1216318 () Regex!5245)

(assert (=> b!1904146 (= e!1216318 EmptyLang!5245)))

(declare-fun d!582279 () Bool)

(declare-fun lt!728158 () Regex!5245)

(assert (=> d!582279 (validRegex!2115 lt!728158)))

(assert (=> d!582279 (= lt!728158 e!1216318)))

(declare-fun c!310188 () Bool)

(assert (=> d!582279 (= c!310188 (or ((_ is EmptyExpr!5245) (regex!3820 lt!727766)) ((_ is EmptyLang!5245) (regex!3820 lt!727766))))))

(assert (=> d!582279 (validRegex!2115 (regex!3820 lt!727766))))

(assert (=> d!582279 (= (derivativeStep!1350 (regex!3820 lt!727766) (head!4418 lt!727775)) lt!728158)))

(declare-fun b!1904147 () Bool)

(assert (=> b!1904147 (= e!1216320 e!1216319)))

(declare-fun c!310189 () Bool)

(assert (=> b!1904147 (= c!310189 ((_ is Star!5245) (regex!3820 lt!727766)))))

(declare-fun bm!117263 () Bool)

(assert (=> bm!117263 (= call!117265 (derivativeStep!1350 (ite c!310191 (regTwo!11003 (regex!3820 lt!727766)) (ite c!310189 (reg!5574 (regex!3820 lt!727766)) (ite c!310190 (regTwo!11002 (regex!3820 lt!727766)) (regOne!11002 (regex!3820 lt!727766))))) (head!4418 lt!727775)))))

(declare-fun b!1904148 () Bool)

(assert (=> b!1904148 (= e!1216318 e!1216316)))

(declare-fun c!310192 () Bool)

(assert (=> b!1904148 (= c!310192 ((_ is ElementMatch!5245) (regex!3820 lt!727766)))))

(declare-fun b!1904149 () Bool)

(assert (=> b!1904149 (= e!1216317 (Union!5245 (Concat!9202 call!117266 (regTwo!11002 (regex!3820 lt!727766))) EmptyLang!5245))))

(assert (= (and d!582279 c!310188) b!1904146))

(assert (= (and d!582279 (not c!310188)) b!1904148))

(assert (= (and b!1904148 c!310192) b!1904141))

(assert (= (and b!1904148 (not c!310192)) b!1904142))

(assert (= (and b!1904142 c!310191) b!1904140))

(assert (= (and b!1904142 (not c!310191)) b!1904147))

(assert (= (and b!1904147 c!310189) b!1904143))

(assert (= (and b!1904147 (not c!310189)) b!1904145))

(assert (= (and b!1904145 c!310190) b!1904144))

(assert (= (and b!1904145 (not c!310190)) b!1904149))

(assert (= (or b!1904144 b!1904149) bm!117261))

(assert (= (or b!1904143 bm!117261) bm!117260))

(assert (= (or b!1904140 b!1904144) bm!117262))

(assert (= (or b!1904140 bm!117260) bm!117263))

(assert (=> bm!117262 m!2334539))

(declare-fun m!2335817 () Bool)

(assert (=> bm!117262 m!2335817))

(declare-fun m!2335819 () Bool)

(assert (=> b!1904145 m!2335819))

(declare-fun m!2335821 () Bool)

(assert (=> d!582279 m!2335821))

(assert (=> d!582279 m!2334547))

(assert (=> bm!117263 m!2334539))

(declare-fun m!2335823 () Bool)

(assert (=> bm!117263 m!2335823))

(assert (=> b!1903210 d!582279))

(declare-fun d!582285 () Bool)

(assert (=> d!582285 (= (head!4418 lt!727775) (h!26856 lt!727775))))

(assert (=> b!1903210 d!582285))

(declare-fun d!582287 () Bool)

(assert (=> d!582287 (= (tail!2944 lt!727775) (t!177028 lt!727775))))

(assert (=> b!1903210 d!582287))

(declare-fun b!1904153 () Bool)

(declare-fun e!1216322 () List!21537)

(declare-fun e!1216323 () List!21537)

(assert (=> b!1904153 (= e!1216322 e!1216323)))

(declare-fun c!310194 () Bool)

(assert (=> b!1904153 (= c!310194 ((_ is Leaf!10508) (c!309906 lt!727777)))))

(declare-fun d!582289 () Bool)

(declare-fun c!310193 () Bool)

(assert (=> d!582289 (= c!310193 ((_ is Empty!7135) (c!309906 lt!727777)))))

(assert (=> d!582289 (= (list!8720 (c!309906 lt!727777)) e!1216322)))

(declare-fun b!1904155 () Bool)

(assert (=> b!1904155 (= e!1216323 (++!5763 (list!8720 (left!17155 (c!309906 lt!727777))) (list!8720 (right!17485 (c!309906 lt!727777)))))))

(declare-fun b!1904154 () Bool)

(assert (=> b!1904154 (= e!1216323 (list!8723 (xs!10029 (c!309906 lt!727777))))))

(declare-fun b!1904152 () Bool)

(assert (=> b!1904152 (= e!1216322 Nil!21455)))

(assert (= (and d!582289 c!310193) b!1904152))

(assert (= (and d!582289 (not c!310193)) b!1904153))

(assert (= (and b!1904153 c!310194) b!1904154))

(assert (= (and b!1904153 (not c!310194)) b!1904155))

(declare-fun m!2335825 () Bool)

(assert (=> b!1904155 m!2335825))

(declare-fun m!2335827 () Bool)

(assert (=> b!1904155 m!2335827))

(assert (=> b!1904155 m!2335825))

(assert (=> b!1904155 m!2335827))

(declare-fun m!2335829 () Bool)

(assert (=> b!1904155 m!2335829))

(declare-fun m!2335831 () Bool)

(assert (=> b!1904154 m!2335831))

(assert (=> d!581805 d!582289))

(declare-fun d!582295 () Bool)

(assert (=> d!582295 (= (list!8716 lt!727932) (list!8720 (c!309906 lt!727932)))))

(declare-fun bs!413717 () Bool)

(assert (= bs!413717 d!582295))

(declare-fun m!2335833 () Bool)

(assert (=> bs!413717 m!2335833))

(assert (=> d!581857 d!582295))

(declare-fun d!582297 () Bool)

(declare-fun res!850323 () Bool)

(declare-fun e!1216333 () Bool)

(assert (=> d!582297 (=> res!850323 e!1216333)))

(assert (=> d!582297 (= res!850323 ((_ is Nil!21457) rules!3198))))

(assert (=> d!582297 (= (noDuplicateTag!1425 thiss!23328 rules!3198 Nil!21458) e!1216333)))

(declare-fun b!1904168 () Bool)

(declare-fun e!1216334 () Bool)

(assert (=> b!1904168 (= e!1216333 e!1216334)))

(declare-fun res!850324 () Bool)

(assert (=> b!1904168 (=> (not res!850324) (not e!1216334))))

(declare-fun contains!3848 (List!21540 String!24898) Bool)

(assert (=> b!1904168 (= res!850324 (not (contains!3848 Nil!21458 (tag!4248 (h!26858 rules!3198)))))))

(declare-fun b!1904169 () Bool)

(assert (=> b!1904169 (= e!1216334 (noDuplicateTag!1425 thiss!23328 (t!177030 rules!3198) (Cons!21458 (tag!4248 (h!26858 rules!3198)) Nil!21458)))))

(assert (= (and d!582297 (not res!850323)) b!1904168))

(assert (= (and b!1904168 res!850324) b!1904169))

(declare-fun m!2335851 () Bool)

(assert (=> b!1904168 m!2335851))

(declare-fun m!2335853 () Bool)

(assert (=> b!1904169 m!2335853))

(assert (=> b!1902960 d!582297))

(assert (=> b!1903214 d!582285))

(declare-fun d!582311 () Bool)

(declare-fun c!310199 () Bool)

(assert (=> d!582311 (= c!310199 ((_ is Node!7135) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))))

(declare-fun e!1216336 () Bool)

(assert (=> d!582311 (= (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))) e!1216336)))

(declare-fun b!1904172 () Bool)

(assert (=> b!1904172 (= e!1216336 (inv!28554 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))))

(declare-fun b!1904173 () Bool)

(declare-fun e!1216337 () Bool)

(assert (=> b!1904173 (= e!1216336 e!1216337)))

(declare-fun res!850325 () Bool)

(assert (=> b!1904173 (= res!850325 (not ((_ is Leaf!10508) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))))))

(assert (=> b!1904173 (=> res!850325 e!1216337)))

(declare-fun b!1904174 () Bool)

(assert (=> b!1904174 (= e!1216337 (inv!28555 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))))

(assert (= (and d!582311 c!310199) b!1904172))

(assert (= (and d!582311 (not c!310199)) b!1904173))

(assert (= (and b!1904173 (not res!850325)) b!1904174))

(declare-fun m!2335855 () Bool)

(assert (=> b!1904172 m!2335855))

(declare-fun m!2335857 () Bool)

(assert (=> b!1904174 m!2335857))

(assert (=> b!1903244 d!582311))

(declare-fun d!582313 () Bool)

(declare-fun c!310200 () Bool)

(assert (=> d!582313 (= c!310200 ((_ is Nil!21455) lt!727950))))

(declare-fun e!1216338 () (InoxSet C!10636))

(assert (=> d!582313 (= (content!3139 lt!727950) e!1216338)))

(declare-fun b!1904175 () Bool)

(assert (=> b!1904175 (= e!1216338 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904176 () Bool)

(assert (=> b!1904176 (= e!1216338 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727950) true) (content!3139 (t!177028 lt!727950))))))

(assert (= (and d!582313 c!310200) b!1904175))

(assert (= (and d!582313 (not c!310200)) b!1904176))

(declare-fun m!2335859 () Bool)

(assert (=> b!1904176 m!2335859))

(declare-fun m!2335861 () Bool)

(assert (=> b!1904176 m!2335861))

(assert (=> d!581875 d!582313))

(assert (=> d!581875 d!581961))

(declare-fun d!582315 () Bool)

(declare-fun c!310201 () Bool)

(assert (=> d!582315 (= c!310201 ((_ is Nil!21455) (++!5763 lt!727773 lt!727764)))))

(declare-fun e!1216339 () (InoxSet C!10636))

(assert (=> d!582315 (= (content!3139 (++!5763 lt!727773 lt!727764)) e!1216339)))

(declare-fun b!1904177 () Bool)

(assert (=> b!1904177 (= e!1216339 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904178 () Bool)

(assert (=> b!1904178 (= e!1216339 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 (++!5763 lt!727773 lt!727764)) true) (content!3139 (t!177028 (++!5763 lt!727773 lt!727764)))))))

(assert (= (and d!582315 c!310201) b!1904177))

(assert (= (and d!582315 (not c!310201)) b!1904178))

(declare-fun m!2335863 () Bool)

(assert (=> b!1904178 m!2335863))

(declare-fun m!2335865 () Bool)

(assert (=> b!1904178 m!2335865))

(assert (=> d!581875 d!582315))

(declare-fun d!582317 () Bool)

(declare-fun dynLambda!10448 (Int BalanceConc!14086 BalanceConc!14086) Bool)

(assert (=> d!582317 (dynLambda!10448 lambda!74395 lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))

(declare-fun lt!728168 () Unit!35776)

(declare-fun choose!11858 (Int BalanceConc!14086 BalanceConc!14086) Unit!35776)

(assert (=> d!582317 (= lt!728168 (choose!11858 lambda!74395 lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))

(assert (=> d!582317 (Forall2!616 lambda!74395)))

(assert (=> d!582317 (= (Forall2of!183 lambda!74395 lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))) lt!728168)))

(declare-fun b_lambda!62817 () Bool)

(assert (=> (not b_lambda!62817) (not d!582317)))

(declare-fun bs!413721 () Bool)

(assert (= bs!413721 d!582317))

(assert (=> bs!413721 m!2334191))

(declare-fun m!2335869 () Bool)

(assert (=> bs!413721 m!2335869))

(assert (=> bs!413721 m!2334191))

(declare-fun m!2335871 () Bool)

(assert (=> bs!413721 m!2335871))

(declare-fun m!2335873 () Bool)

(assert (=> bs!413721 m!2335873))

(assert (=> d!581801 d!582317))

(assert (=> d!581801 d!581805))

(declare-fun d!582321 () Bool)

(assert (=> d!582321 (= (list!8716 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))) (list!8720 (c!309906 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(declare-fun bs!413722 () Bool)

(assert (= bs!413722 d!582321))

(declare-fun m!2335875 () Bool)

(assert (=> bs!413722 m!2335875))

(assert (=> d!581801 d!582321))

(declare-fun b!1904216 () Bool)

(declare-fun e!1216359 () Bool)

(declare-fun lt!728191 () Option!4346)

(assert (=> b!1904216 (= e!1216359 (= (size!16918 (_1!11561 (get!6663 lt!728191))) (size!16921 (originalCharacters!4627 (_1!11561 (get!6663 lt!728191))))))))

(declare-fun b!1904217 () Bool)

(declare-fun e!1216357 () Bool)

(assert (=> b!1904217 (= e!1216357 e!1216359)))

(declare-fun res!850354 () Bool)

(assert (=> b!1904217 (=> (not res!850354) (not e!1216359))))

(assert (=> b!1904217 (= res!850354 (matchR!2531 (regex!3820 (h!26858 rules!3198)) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728191))))))))

(declare-fun b!1904218 () Bool)

(declare-fun e!1216358 () Option!4346)

(declare-datatypes ((tuple2!20194 0))(
  ( (tuple2!20195 (_1!11566 List!21537) (_2!11566 List!21537)) )
))
(declare-fun lt!728190 () tuple2!20194)

(assert (=> b!1904218 (= e!1216358 (Some!4345 (tuple2!20185 (Token!7193 (apply!5624 (transformation!3820 (h!26858 rules!3198)) (seqFromList!2692 (_1!11566 lt!728190))) (h!26858 rules!3198) (size!16924 (seqFromList!2692 (_1!11566 lt!728190))) (_1!11566 lt!728190)) (_2!11566 lt!728190))))))

(declare-fun lt!728189 () Unit!35776)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!510 (Regex!5245 List!21537) Unit!35776)

(assert (=> b!1904218 (= lt!728189 (longestMatchIsAcceptedByMatchOrIsEmpty!510 (regex!3820 (h!26858 rules!3198)) (++!5763 lt!727775 lt!727764)))))

(declare-fun res!850358 () Bool)

(declare-fun findLongestMatchInner!526 (Regex!5245 List!21537 Int List!21537 List!21537 Int) tuple2!20194)

(assert (=> b!1904218 (= res!850358 (isEmpty!13167 (_1!11566 (findLongestMatchInner!526 (regex!3820 (h!26858 rules!3198)) Nil!21455 (size!16921 Nil!21455) (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764) (size!16921 (++!5763 lt!727775 lt!727764))))))))

(declare-fun e!1216356 () Bool)

(assert (=> b!1904218 (=> res!850358 e!1216356)))

(assert (=> b!1904218 e!1216356))

(declare-fun lt!728192 () Unit!35776)

(assert (=> b!1904218 (= lt!728192 lt!728189)))

(declare-fun lt!728193 () Unit!35776)

(assert (=> b!1904218 (= lt!728193 (lemmaSemiInverse!799 (transformation!3820 (h!26858 rules!3198)) (seqFromList!2692 (_1!11566 lt!728190))))))

(declare-fun b!1904219 () Bool)

(assert (=> b!1904219 (= e!1216358 None!4345)))

(declare-fun b!1904220 () Bool)

(declare-fun res!850357 () Bool)

(assert (=> b!1904220 (=> (not res!850357) (not e!1216359))))

(assert (=> b!1904220 (= res!850357 (= (rule!6013 (_1!11561 (get!6663 lt!728191))) (h!26858 rules!3198)))))

(declare-fun b!1904221 () Bool)

(declare-fun res!850356 () Bool)

(assert (=> b!1904221 (=> (not res!850356) (not e!1216359))))

(assert (=> b!1904221 (= res!850356 (< (size!16921 (_2!11561 (get!6663 lt!728191))) (size!16921 (++!5763 lt!727775 lt!727764))))))

(declare-fun b!1904222 () Bool)

(declare-fun res!850355 () Bool)

(assert (=> b!1904222 (=> (not res!850355) (not e!1216359))))

(assert (=> b!1904222 (= res!850355 (= (value!120461 (_1!11561 (get!6663 lt!728191))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!728191)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!728191)))))))))

(declare-fun d!582323 () Bool)

(assert (=> d!582323 e!1216357))

(declare-fun res!850360 () Bool)

(assert (=> d!582323 (=> res!850360 e!1216357)))

(assert (=> d!582323 (= res!850360 (isEmpty!13169 lt!728191))))

(assert (=> d!582323 (= lt!728191 e!1216358)))

(declare-fun c!310206 () Bool)

(assert (=> d!582323 (= c!310206 (isEmpty!13167 (_1!11566 lt!728190)))))

(declare-fun findLongestMatch!453 (Regex!5245 List!21537) tuple2!20194)

(assert (=> d!582323 (= lt!728190 (findLongestMatch!453 (regex!3820 (h!26858 rules!3198)) (++!5763 lt!727775 lt!727764)))))

(declare-fun ruleValid!1155 (LexerInterface!3433 Rule!7440) Bool)

(assert (=> d!582323 (ruleValid!1155 thiss!23328 (h!26858 rules!3198))))

(assert (=> d!582323 (= (maxPrefixOneRule!1201 thiss!23328 (h!26858 rules!3198) (++!5763 lt!727775 lt!727764)) lt!728191)))

(declare-fun b!1904223 () Bool)

(assert (=> b!1904223 (= e!1216356 (matchR!2531 (regex!3820 (h!26858 rules!3198)) (_1!11566 (findLongestMatchInner!526 (regex!3820 (h!26858 rules!3198)) Nil!21455 (size!16921 Nil!21455) (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764) (size!16921 (++!5763 lt!727775 lt!727764))))))))

(declare-fun b!1904224 () Bool)

(declare-fun res!850359 () Bool)

(assert (=> b!1904224 (=> (not res!850359) (not e!1216359))))

(assert (=> b!1904224 (= res!850359 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728191)))) (_2!11561 (get!6663 lt!728191))) (++!5763 lt!727775 lt!727764)))))

(assert (= (and d!582323 c!310206) b!1904219))

(assert (= (and d!582323 (not c!310206)) b!1904218))

(assert (= (and b!1904218 (not res!850358)) b!1904223))

(assert (= (and d!582323 (not res!850360)) b!1904217))

(assert (= (and b!1904217 res!850354) b!1904224))

(assert (= (and b!1904224 res!850359) b!1904221))

(assert (= (and b!1904221 res!850356) b!1904220))

(assert (= (and b!1904220 res!850357) b!1904222))

(assert (= (and b!1904222 res!850355) b!1904216))

(declare-fun m!2335879 () Bool)

(assert (=> b!1904216 m!2335879))

(declare-fun m!2335881 () Bool)

(assert (=> b!1904216 m!2335881))

(assert (=> b!1904220 m!2335879))

(assert (=> b!1904222 m!2335879))

(declare-fun m!2335883 () Bool)

(assert (=> b!1904222 m!2335883))

(assert (=> b!1904222 m!2335883))

(declare-fun m!2335887 () Bool)

(assert (=> b!1904222 m!2335887))

(declare-fun m!2335891 () Bool)

(assert (=> b!1904223 m!2335891))

(assert (=> b!1904223 m!2334169))

(assert (=> b!1904223 m!2334809))

(assert (=> b!1904223 m!2335891))

(assert (=> b!1904223 m!2334169))

(assert (=> b!1904223 m!2334169))

(assert (=> b!1904223 m!2334809))

(declare-fun m!2335897 () Bool)

(assert (=> b!1904223 m!2335897))

(declare-fun m!2335903 () Bool)

(assert (=> b!1904223 m!2335903))

(assert (=> b!1904224 m!2335879))

(declare-fun m!2335905 () Bool)

(assert (=> b!1904224 m!2335905))

(assert (=> b!1904224 m!2335905))

(declare-fun m!2335909 () Bool)

(assert (=> b!1904224 m!2335909))

(assert (=> b!1904224 m!2335909))

(declare-fun m!2335913 () Bool)

(assert (=> b!1904224 m!2335913))

(assert (=> b!1904218 m!2334169))

(assert (=> b!1904218 m!2334809))

(assert (=> b!1904218 m!2334169))

(declare-fun m!2335915 () Bool)

(assert (=> b!1904218 m!2335915))

(declare-fun m!2335919 () Bool)

(assert (=> b!1904218 m!2335919))

(declare-fun m!2335923 () Bool)

(assert (=> b!1904218 m!2335923))

(assert (=> b!1904218 m!2335919))

(assert (=> b!1904218 m!2335891))

(assert (=> b!1904218 m!2334169))

(assert (=> b!1904218 m!2334169))

(assert (=> b!1904218 m!2334809))

(assert (=> b!1904218 m!2335897))

(declare-fun m!2335937 () Bool)

(assert (=> b!1904218 m!2335937))

(assert (=> b!1904218 m!2335919))

(declare-fun m!2335941 () Bool)

(assert (=> b!1904218 m!2335941))

(assert (=> b!1904218 m!2335891))

(assert (=> b!1904218 m!2335919))

(declare-fun m!2335943 () Bool)

(assert (=> b!1904218 m!2335943))

(assert (=> b!1904221 m!2335879))

(declare-fun m!2335945 () Bool)

(assert (=> b!1904221 m!2335945))

(assert (=> b!1904221 m!2334169))

(assert (=> b!1904221 m!2334809))

(assert (=> b!1904217 m!2335879))

(assert (=> b!1904217 m!2335905))

(assert (=> b!1904217 m!2335905))

(assert (=> b!1904217 m!2335909))

(assert (=> b!1904217 m!2335909))

(declare-fun m!2335953 () Bool)

(assert (=> b!1904217 m!2335953))

(declare-fun m!2335957 () Bool)

(assert (=> d!582323 m!2335957))

(declare-fun m!2335959 () Bool)

(assert (=> d!582323 m!2335959))

(assert (=> d!582323 m!2334169))

(declare-fun m!2335961 () Bool)

(assert (=> d!582323 m!2335961))

(declare-fun m!2335963 () Bool)

(assert (=> d!582323 m!2335963))

(assert (=> bm!117205 d!582323))

(declare-fun bm!117264 () Bool)

(declare-fun call!117269 () Bool)

(assert (=> bm!117264 (= call!117269 (isEmpty!13167 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))))))

(declare-fun b!1904234 () Bool)

(declare-fun e!1216365 () Bool)

(assert (=> b!1904234 (= e!1216365 (= (head!4418 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) (c!309905 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))))))

(declare-fun b!1904235 () Bool)

(declare-fun e!1216369 () Bool)

(declare-fun e!1216366 () Bool)

(assert (=> b!1904235 (= e!1216369 e!1216366)))

(declare-fun res!850372 () Bool)

(assert (=> b!1904235 (=> (not res!850372) (not e!1216366))))

(declare-fun lt!728199 () Bool)

(assert (=> b!1904235 (= res!850372 (not lt!728199))))

(declare-fun b!1904236 () Bool)

(declare-fun e!1216370 () Bool)

(assert (=> b!1904236 (= e!1216370 (not lt!728199))))

(declare-fun b!1904237 () Bool)

(declare-fun res!850374 () Bool)

(declare-fun e!1216367 () Bool)

(assert (=> b!1904237 (=> res!850374 e!1216367)))

(assert (=> b!1904237 (= res!850374 (not (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))))))))

(declare-fun b!1904238 () Bool)

(declare-fun res!850373 () Bool)

(assert (=> b!1904238 (=> (not res!850373) (not e!1216365))))

(assert (=> b!1904238 (= res!850373 (not call!117269))))

(declare-fun b!1904239 () Bool)

(declare-fun e!1216368 () Bool)

(assert (=> b!1904239 (= e!1216368 e!1216370)))

(declare-fun c!310210 () Bool)

(assert (=> b!1904239 (= c!310210 ((_ is EmptyLang!5245) (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))))))

(declare-fun b!1904240 () Bool)

(declare-fun e!1216364 () Bool)

(assert (=> b!1904240 (= e!1216364 (nullable!1591 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))))))

(declare-fun b!1904241 () Bool)

(declare-fun res!850370 () Bool)

(assert (=> b!1904241 (=> res!850370 e!1216369)))

(assert (=> b!1904241 (= res!850370 e!1216365)))

(declare-fun res!850371 () Bool)

(assert (=> b!1904241 (=> (not res!850371) (not e!1216365))))

(assert (=> b!1904241 (= res!850371 lt!728199)))

(declare-fun b!1904242 () Bool)

(declare-fun res!850369 () Bool)

(assert (=> b!1904242 (=> res!850369 e!1216369)))

(assert (=> b!1904242 (= res!850369 (not ((_ is ElementMatch!5245) (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))))))

(assert (=> b!1904242 (= e!1216370 e!1216369)))

(declare-fun b!1904243 () Bool)

(assert (=> b!1904243 (= e!1216364 (matchR!2531 (derivativeStep!1350 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))) (head!4418 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))))) (tail!2944 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))))))))

(declare-fun d!582329 () Bool)

(assert (=> d!582329 e!1216368))

(declare-fun c!310209 () Bool)

(assert (=> d!582329 (= c!310209 ((_ is EmptyExpr!5245) (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))))))

(assert (=> d!582329 (= lt!728199 e!1216364)))

(declare-fun c!310208 () Bool)

(assert (=> d!582329 (= c!310208 (isEmpty!13167 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))))))

(assert (=> d!582329 (validRegex!2115 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))))

(assert (=> d!582329 (= (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) lt!728199)))

(declare-fun b!1904244 () Bool)

(assert (=> b!1904244 (= e!1216368 (= lt!728199 call!117269))))

(declare-fun b!1904245 () Bool)

(declare-fun res!850375 () Bool)

(assert (=> b!1904245 (=> (not res!850375) (not e!1216365))))

(assert (=> b!1904245 (= res!850375 (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))))))))

(declare-fun b!1904246 () Bool)

(assert (=> b!1904246 (= e!1216366 e!1216367)))

(declare-fun res!850368 () Bool)

(assert (=> b!1904246 (=> res!850368 e!1216367)))

(assert (=> b!1904246 (= res!850368 call!117269)))

(declare-fun b!1904247 () Bool)

(assert (=> b!1904247 (= e!1216367 (not (= (head!4418 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) (c!309905 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))))))))

(assert (= (and d!582329 c!310208) b!1904240))

(assert (= (and d!582329 (not c!310208)) b!1904243))

(assert (= (and d!582329 c!310209) b!1904244))

(assert (= (and d!582329 (not c!310209)) b!1904239))

(assert (= (and b!1904239 c!310210) b!1904236))

(assert (= (and b!1904239 (not c!310210)) b!1904242))

(assert (= (and b!1904242 (not res!850369)) b!1904241))

(assert (= (and b!1904241 res!850371) b!1904238))

(assert (= (and b!1904238 res!850373) b!1904245))

(assert (= (and b!1904245 res!850375) b!1904234))

(assert (= (and b!1904241 (not res!850370)) b!1904235))

(assert (= (and b!1904235 res!850372) b!1904246))

(assert (= (and b!1904246 (not res!850368)) b!1904237))

(assert (= (and b!1904237 (not res!850374)) b!1904247))

(assert (= (or b!1904244 b!1904238 b!1904246) bm!117264))

(assert (=> b!1904237 m!2334761))

(declare-fun m!2335967 () Bool)

(assert (=> b!1904237 m!2335967))

(assert (=> b!1904237 m!2335967))

(declare-fun m!2335971 () Bool)

(assert (=> b!1904237 m!2335971))

(declare-fun m!2335973 () Bool)

(assert (=> b!1904240 m!2335973))

(assert (=> b!1904245 m!2334761))

(assert (=> b!1904245 m!2335967))

(assert (=> b!1904245 m!2335967))

(assert (=> b!1904245 m!2335971))

(assert (=> b!1904243 m!2334761))

(declare-fun m!2335975 () Bool)

(assert (=> b!1904243 m!2335975))

(assert (=> b!1904243 m!2335975))

(declare-fun m!2335977 () Bool)

(assert (=> b!1904243 m!2335977))

(assert (=> b!1904243 m!2334761))

(assert (=> b!1904243 m!2335967))

(assert (=> b!1904243 m!2335977))

(assert (=> b!1904243 m!2335967))

(declare-fun m!2335979 () Bool)

(assert (=> b!1904243 m!2335979))

(assert (=> bm!117264 m!2334761))

(declare-fun m!2335985 () Bool)

(assert (=> bm!117264 m!2335985))

(assert (=> b!1904234 m!2334761))

(assert (=> b!1904234 m!2335975))

(assert (=> d!582329 m!2334761))

(assert (=> d!582329 m!2335985))

(declare-fun m!2335987 () Bool)

(assert (=> d!582329 m!2335987))

(assert (=> b!1904247 m!2334761))

(assert (=> b!1904247 m!2335975))

(assert (=> b!1903424 d!582329))

(assert (=> b!1903424 d!582203))

(declare-fun d!582339 () Bool)

(assert (=> d!582339 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))) (list!8720 (c!309906 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))))))

(declare-fun bs!413733 () Bool)

(assert (= bs!413733 d!582339))

(declare-fun m!2335991 () Bool)

(assert (=> bs!413733 m!2335991))

(assert (=> b!1903424 d!582339))

(declare-fun d!582341 () Bool)

(declare-fun lt!728205 () BalanceConc!14086)

(assert (=> d!582341 (= (list!8716 lt!728205) (originalCharacters!4627 (_1!11561 (get!6663 lt!727923))))))

(assert (=> d!582341 (= lt!728205 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))) (value!120461 (_1!11561 (get!6663 lt!727923)))))))

(assert (=> d!582341 (= (charsOf!2376 (_1!11561 (get!6663 lt!727923))) lt!728205)))

(declare-fun b_lambda!62821 () Bool)

(assert (=> (not b_lambda!62821) (not d!582341)))

(declare-fun tb!116239 () Bool)

(declare-fun t!177238 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177238) tb!116239))

(declare-fun b!1904259 () Bool)

(declare-fun e!1216376 () Bool)

(declare-fun tp!543747 () Bool)

(assert (=> b!1904259 (= e!1216376 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))) (value!120461 (_1!11561 (get!6663 lt!727923)))))) tp!543747))))

(declare-fun result!140538 () Bool)

(assert (=> tb!116239 (= result!140538 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923))))) (value!120461 (_1!11561 (get!6663 lt!727923))))) e!1216376))))

(assert (= tb!116239 b!1904259))

(declare-fun m!2335993 () Bool)

(assert (=> b!1904259 m!2335993))

(declare-fun m!2335995 () Bool)

(assert (=> tb!116239 m!2335995))

(assert (=> d!582341 t!177238))

(declare-fun b_and!147691 () Bool)

(assert (= b_and!147649 (and (=> t!177238 result!140538) b_and!147691)))

(declare-fun tb!116241 () Bool)

(declare-fun t!177240 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177240) tb!116241))

(declare-fun result!140540 () Bool)

(assert (= result!140540 result!140538))

(assert (=> d!582341 t!177240))

(declare-fun b_and!147693 () Bool)

(assert (= b_and!147643 (and (=> t!177240 result!140540) b_and!147693)))

(declare-fun tb!116243 () Bool)

(declare-fun t!177242 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177242) tb!116243))

(declare-fun result!140542 () Bool)

(assert (= result!140542 result!140538))

(assert (=> d!582341 t!177242))

(declare-fun b_and!147695 () Bool)

(assert (= b_and!147645 (and (=> t!177242 result!140542) b_and!147695)))

(declare-fun tb!116245 () Bool)

(declare-fun t!177244 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177244) tb!116245))

(declare-fun result!140544 () Bool)

(assert (= result!140544 result!140538))

(assert (=> d!582341 t!177244))

(declare-fun b_and!147697 () Bool)

(assert (= b_and!147647 (and (=> t!177244 result!140544) b_and!147697)))

(declare-fun t!177246 () Bool)

(declare-fun tb!116247 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177246) tb!116247))

(declare-fun result!140546 () Bool)

(assert (= result!140546 result!140538))

(assert (=> d!582341 t!177246))

(declare-fun b_and!147699 () Bool)

(assert (= b_and!147641 (and (=> t!177246 result!140546) b_and!147699)))

(declare-fun m!2335997 () Bool)

(assert (=> d!582341 m!2335997))

(declare-fun m!2335999 () Bool)

(assert (=> d!582341 m!2335999))

(assert (=> b!1903424 d!582341))

(declare-fun d!582343 () Bool)

(declare-fun e!1216378 () Bool)

(assert (=> d!582343 e!1216378))

(declare-fun res!850385 () Bool)

(assert (=> d!582343 (=> (not res!850385) (not e!1216378))))

(declare-fun lt!728206 () List!21537)

(assert (=> d!582343 (= res!850385 (= (content!3139 lt!728206) ((_ map or) (content!3139 call!117204) (content!3139 lt!727901))))))

(declare-fun e!1216377 () List!21537)

(assert (=> d!582343 (= lt!728206 e!1216377)))

(declare-fun c!310212 () Bool)

(assert (=> d!582343 (= c!310212 ((_ is Nil!21455) call!117204))))

(assert (=> d!582343 (= (++!5763 call!117204 lt!727901) lt!728206)))

(declare-fun b!1904261 () Bool)

(assert (=> b!1904261 (= e!1216377 (Cons!21455 (h!26856 call!117204) (++!5763 (t!177028 call!117204) lt!727901)))))

(declare-fun b!1904262 () Bool)

(declare-fun res!850386 () Bool)

(assert (=> b!1904262 (=> (not res!850386) (not e!1216378))))

(assert (=> b!1904262 (= res!850386 (= (size!16921 lt!728206) (+ (size!16921 call!117204) (size!16921 lt!727901))))))

(declare-fun b!1904260 () Bool)

(assert (=> b!1904260 (= e!1216377 lt!727901)))

(declare-fun b!1904263 () Bool)

(assert (=> b!1904263 (= e!1216378 (or (not (= lt!727901 Nil!21455)) (= lt!728206 call!117204)))))

(assert (= (and d!582343 c!310212) b!1904260))

(assert (= (and d!582343 (not c!310212)) b!1904261))

(assert (= (and d!582343 res!850385) b!1904262))

(assert (= (and b!1904262 res!850386) b!1904263))

(declare-fun m!2336001 () Bool)

(assert (=> d!582343 m!2336001))

(declare-fun m!2336003 () Bool)

(assert (=> d!582343 m!2336003))

(declare-fun m!2336005 () Bool)

(assert (=> d!582343 m!2336005))

(declare-fun m!2336007 () Bool)

(assert (=> b!1904261 m!2336007))

(declare-fun m!2336011 () Bool)

(assert (=> b!1904262 m!2336011))

(declare-fun m!2336013 () Bool)

(assert (=> b!1904262 m!2336013))

(declare-fun m!2336015 () Bool)

(assert (=> b!1904262 m!2336015))

(assert (=> b!1903390 d!582343))

(declare-fun b!1904264 () Bool)

(declare-fun e!1216381 () Bool)

(assert (=> b!1904264 (= e!1216381 (inv!15 (value!120461 (h!26857 (t!177029 tokens!598)))))))

(declare-fun b!1904265 () Bool)

(declare-fun e!1216380 () Bool)

(assert (=> b!1904265 (= e!1216380 (inv!17 (value!120461 (h!26857 (t!177029 tokens!598)))))))

(declare-fun b!1904266 () Bool)

(declare-fun res!850387 () Bool)

(assert (=> b!1904266 (=> res!850387 e!1216381)))

(assert (=> b!1904266 (= res!850387 (not ((_ is IntegerValue!11870) (value!120461 (h!26857 (t!177029 tokens!598))))))))

(assert (=> b!1904266 (= e!1216380 e!1216381)))

(declare-fun d!582345 () Bool)

(declare-fun c!310214 () Bool)

(assert (=> d!582345 (= c!310214 ((_ is IntegerValue!11868) (value!120461 (h!26857 (t!177029 tokens!598)))))))

(declare-fun e!1216379 () Bool)

(assert (=> d!582345 (= (inv!21 (value!120461 (h!26857 (t!177029 tokens!598)))) e!1216379)))

(declare-fun b!1904267 () Bool)

(assert (=> b!1904267 (= e!1216379 e!1216380)))

(declare-fun c!310213 () Bool)

(assert (=> b!1904267 (= c!310213 ((_ is IntegerValue!11869) (value!120461 (h!26857 (t!177029 tokens!598)))))))

(declare-fun b!1904268 () Bool)

(assert (=> b!1904268 (= e!1216379 (inv!16 (value!120461 (h!26857 (t!177029 tokens!598)))))))

(assert (= (and d!582345 c!310214) b!1904268))

(assert (= (and d!582345 (not c!310214)) b!1904267))

(assert (= (and b!1904267 c!310213) b!1904265))

(assert (= (and b!1904267 (not c!310213)) b!1904266))

(assert (= (and b!1904266 (not res!850387)) b!1904264))

(declare-fun m!2336025 () Bool)

(assert (=> b!1904264 m!2336025))

(declare-fun m!2336027 () Bool)

(assert (=> b!1904265 m!2336027))

(declare-fun m!2336029 () Bool)

(assert (=> b!1904268 m!2336029))

(assert (=> b!1903562 d!582345))

(declare-fun d!582347 () Bool)

(assert (=> d!582347 (= (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))) (isBalanced!2235 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))))))

(declare-fun bs!413734 () Bool)

(assert (= bs!413734 d!582347))

(declare-fun m!2336055 () Bool)

(assert (=> bs!413734 m!2336055))

(assert (=> tb!116123 d!582347))

(declare-fun d!582357 () Bool)

(declare-fun lt!728209 () Bool)

(assert (=> d!582357 (= lt!728209 (select (content!3141 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!727929)))))))

(declare-fun e!1216386 () Bool)

(assert (=> d!582357 (= lt!728209 e!1216386)))

(declare-fun res!850390 () Bool)

(assert (=> d!582357 (=> (not res!850390) (not e!1216386))))

(assert (=> d!582357 (= res!850390 ((_ is Cons!21457) rules!3198))))

(assert (=> d!582357 (= (contains!3847 rules!3198 (rule!6013 (_1!11561 (get!6663 lt!727929)))) lt!728209)))

(declare-fun b!1904275 () Bool)

(declare-fun e!1216387 () Bool)

(assert (=> b!1904275 (= e!1216386 e!1216387)))

(declare-fun res!850391 () Bool)

(assert (=> b!1904275 (=> res!850391 e!1216387)))

(assert (=> b!1904275 (= res!850391 (= (h!26858 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!727929)))))))

(declare-fun b!1904276 () Bool)

(assert (=> b!1904276 (= e!1216387 (contains!3847 (t!177030 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!727929)))))))

(assert (= (and d!582357 res!850390) b!1904275))

(assert (= (and b!1904275 (not res!850391)) b!1904276))

(assert (=> d!582357 m!2335513))

(declare-fun m!2336059 () Bool)

(assert (=> d!582357 m!2336059))

(declare-fun m!2336061 () Bool)

(assert (=> b!1904276 m!2336061))

(assert (=> b!1903441 d!582357))

(assert (=> b!1903441 d!582127))

(declare-fun d!582361 () Bool)

(declare-fun e!1216389 () Bool)

(assert (=> d!582361 e!1216389))

(declare-fun res!850392 () Bool)

(assert (=> d!582361 (=> (not res!850392) (not e!1216389))))

(declare-fun lt!728210 () List!21537)

(assert (=> d!582361 (= res!850392 (= (content!3139 lt!728210) ((_ map or) (content!3139 (ite c!310028 call!117220 call!117221)) (content!3139 (ite c!310028 call!117221 call!117220)))))))

(declare-fun e!1216388 () List!21537)

(assert (=> d!582361 (= lt!728210 e!1216388)))

(declare-fun c!310217 () Bool)

(assert (=> d!582361 (= c!310217 ((_ is Nil!21455) (ite c!310028 call!117220 call!117221)))))

(assert (=> d!582361 (= (++!5763 (ite c!310028 call!117220 call!117221) (ite c!310028 call!117221 call!117220)) lt!728210)))

(declare-fun b!1904278 () Bool)

(assert (=> b!1904278 (= e!1216388 (Cons!21455 (h!26856 (ite c!310028 call!117220 call!117221)) (++!5763 (t!177028 (ite c!310028 call!117220 call!117221)) (ite c!310028 call!117221 call!117220))))))

(declare-fun b!1904279 () Bool)

(declare-fun res!850393 () Bool)

(assert (=> b!1904279 (=> (not res!850393) (not e!1216389))))

(assert (=> b!1904279 (= res!850393 (= (size!16921 lt!728210) (+ (size!16921 (ite c!310028 call!117220 call!117221)) (size!16921 (ite c!310028 call!117221 call!117220)))))))

(declare-fun b!1904277 () Bool)

(assert (=> b!1904277 (= e!1216388 (ite c!310028 call!117221 call!117220))))

(declare-fun b!1904280 () Bool)

(assert (=> b!1904280 (= e!1216389 (or (not (= (ite c!310028 call!117221 call!117220) Nil!21455)) (= lt!728210 (ite c!310028 call!117220 call!117221))))))

(assert (= (and d!582361 c!310217) b!1904277))

(assert (= (and d!582361 (not c!310217)) b!1904278))

(assert (= (and d!582361 res!850392) b!1904279))

(assert (= (and b!1904279 res!850393) b!1904280))

(declare-fun m!2336063 () Bool)

(assert (=> d!582361 m!2336063))

(declare-fun m!2336065 () Bool)

(assert (=> d!582361 m!2336065))

(declare-fun m!2336067 () Bool)

(assert (=> d!582361 m!2336067))

(declare-fun m!2336069 () Bool)

(assert (=> b!1904278 m!2336069))

(declare-fun m!2336071 () Bool)

(assert (=> b!1904279 m!2336071))

(declare-fun m!2336073 () Bool)

(assert (=> b!1904279 m!2336073))

(declare-fun m!2336075 () Bool)

(assert (=> b!1904279 m!2336075))

(assert (=> bm!117216 d!582361))

(declare-fun d!582363 () Bool)

(assert (=> d!582363 (= (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))) (isBalanced!2235 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))))

(declare-fun bs!413735 () Bool)

(assert (= bs!413735 d!582363))

(declare-fun m!2336077 () Bool)

(assert (=> bs!413735 m!2336077))

(assert (=> tb!116073 d!582363))

(declare-fun d!582365 () Bool)

(declare-fun e!1216391 () Bool)

(assert (=> d!582365 e!1216391))

(declare-fun res!850394 () Bool)

(assert (=> d!582365 (=> (not res!850394) (not e!1216391))))

(declare-fun lt!728211 () List!21537)

(assert (=> d!582365 (= res!850394 (= (content!3139 lt!728211) ((_ map or) (content!3139 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) (content!3139 (_2!11561 (get!6663 lt!727923))))))))

(declare-fun e!1216390 () List!21537)

(assert (=> d!582365 (= lt!728211 e!1216390)))

(declare-fun c!310218 () Bool)

(assert (=> d!582365 (= c!310218 ((_ is Nil!21455) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))))))

(assert (=> d!582365 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))) (_2!11561 (get!6663 lt!727923))) lt!728211)))

(declare-fun b!1904282 () Bool)

(assert (=> b!1904282 (= e!1216390 (Cons!21455 (h!26856 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) (++!5763 (t!177028 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) (_2!11561 (get!6663 lt!727923)))))))

(declare-fun b!1904283 () Bool)

(declare-fun res!850395 () Bool)

(assert (=> b!1904283 (=> (not res!850395) (not e!1216391))))

(assert (=> b!1904283 (= res!850395 (= (size!16921 lt!728211) (+ (size!16921 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923))))) (size!16921 (_2!11561 (get!6663 lt!727923))))))))

(declare-fun b!1904281 () Bool)

(assert (=> b!1904281 (= e!1216390 (_2!11561 (get!6663 lt!727923)))))

(declare-fun b!1904284 () Bool)

(assert (=> b!1904284 (= e!1216391 (or (not (= (_2!11561 (get!6663 lt!727923)) Nil!21455)) (= lt!728211 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!727923)))))))))

(assert (= (and d!582365 c!310218) b!1904281))

(assert (= (and d!582365 (not c!310218)) b!1904282))

(assert (= (and d!582365 res!850394) b!1904283))

(assert (= (and b!1904283 res!850395) b!1904284))

(declare-fun m!2336079 () Bool)

(assert (=> d!582365 m!2336079))

(assert (=> d!582365 m!2334761))

(declare-fun m!2336081 () Bool)

(assert (=> d!582365 m!2336081))

(declare-fun m!2336083 () Bool)

(assert (=> d!582365 m!2336083))

(declare-fun m!2336085 () Bool)

(assert (=> b!1904282 m!2336085))

(declare-fun m!2336087 () Bool)

(assert (=> b!1904283 m!2336087))

(assert (=> b!1904283 m!2334761))

(declare-fun m!2336089 () Bool)

(assert (=> b!1904283 m!2336089))

(assert (=> b!1904283 m!2334765))

(assert (=> b!1903427 d!582365))

(assert (=> b!1903427 d!582339))

(assert (=> b!1903427 d!582341))

(assert (=> b!1903427 d!582203))

(declare-fun d!582367 () Bool)

(assert (=> d!582367 true))

(declare-fun lt!728223 () Bool)

(assert (=> d!582367 (= lt!728223 (rulesValidInductive!1298 thiss!23328 rules!3198))))

(declare-fun lambda!74424 () Int)

(declare-fun forall!4506 (List!21539 Int) Bool)

(assert (=> d!582367 (= lt!728223 (forall!4506 rules!3198 lambda!74424))))

(assert (=> d!582367 (= (rulesValid!1427 thiss!23328 rules!3198) lt!728223)))

(declare-fun bs!413736 () Bool)

(assert (= bs!413736 d!582367))

(assert (=> bs!413736 m!2334751))

(declare-fun m!2336109 () Bool)

(assert (=> bs!413736 m!2336109))

(assert (=> d!581737 d!582367))

(declare-fun d!582373 () Bool)

(declare-fun e!1216401 () Bool)

(assert (=> d!582373 e!1216401))

(declare-fun res!850408 () Bool)

(assert (=> d!582373 (=> (not res!850408) (not e!1216401))))

(declare-fun lt!728224 () List!21537)

(assert (=> d!582373 (= res!850408 (= (content!3139 lt!728224) ((_ map or) (content!3139 (t!177028 lt!727775)) (content!3139 lt!727764))))))

(declare-fun e!1216400 () List!21537)

(assert (=> d!582373 (= lt!728224 e!1216400)))

(declare-fun c!310221 () Bool)

(assert (=> d!582373 (= c!310221 ((_ is Nil!21455) (t!177028 lt!727775)))))

(assert (=> d!582373 (= (++!5763 (t!177028 lt!727775) lt!727764) lt!728224)))

(declare-fun b!1904304 () Bool)

(assert (=> b!1904304 (= e!1216400 (Cons!21455 (h!26856 (t!177028 lt!727775)) (++!5763 (t!177028 (t!177028 lt!727775)) lt!727764)))))

(declare-fun b!1904305 () Bool)

(declare-fun res!850409 () Bool)

(assert (=> b!1904305 (=> (not res!850409) (not e!1216401))))

(assert (=> b!1904305 (= res!850409 (= (size!16921 lt!728224) (+ (size!16921 (t!177028 lt!727775)) (size!16921 lt!727764))))))

(declare-fun b!1904303 () Bool)

(assert (=> b!1904303 (= e!1216400 lt!727764)))

(declare-fun b!1904306 () Bool)

(assert (=> b!1904306 (= e!1216401 (or (not (= lt!727764 Nil!21455)) (= lt!728224 (t!177028 lt!727775))))))

(assert (= (and d!582373 c!310221) b!1904303))

(assert (= (and d!582373 (not c!310221)) b!1904304))

(assert (= (and d!582373 res!850408) b!1904305))

(assert (= (and b!1904305 res!850409) b!1904306))

(declare-fun m!2336111 () Bool)

(assert (=> d!582373 m!2336111))

(assert (=> d!582373 m!2335069))

(assert (=> d!582373 m!2334851))

(declare-fun m!2336113 () Bool)

(assert (=> b!1904304 m!2336113))

(declare-fun m!2336115 () Bool)

(assert (=> b!1904305 m!2336115))

(assert (=> b!1904305 m!2335557))

(assert (=> b!1904305 m!2334857))

(assert (=> b!1903475 d!582373))

(declare-fun d!582375 () Bool)

(declare-fun e!1216403 () Bool)

(assert (=> d!582375 e!1216403))

(declare-fun res!850410 () Bool)

(assert (=> d!582375 (=> (not res!850410) (not e!1216403))))

(declare-fun lt!728225 () List!21537)

(assert (=> d!582375 (= res!850410 (= (content!3139 lt!728225) ((_ map or) (content!3139 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598))))) (content!3139 lt!727901))))))

(declare-fun e!1216402 () List!21537)

(assert (=> d!582375 (= lt!728225 e!1216402)))

(declare-fun c!310222 () Bool)

(assert (=> d!582375 (= c!310222 ((_ is Nil!21455) (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598))))))))

(assert (=> d!582375 (= (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901) lt!728225)))

(declare-fun b!1904308 () Bool)

(assert (=> b!1904308 (= e!1216402 (Cons!21455 (h!26856 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598))))) (++!5763 (t!177028 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598))))) lt!727901)))))

(declare-fun b!1904309 () Bool)

(declare-fun res!850411 () Bool)

(assert (=> b!1904309 (=> (not res!850411) (not e!1216403))))

(assert (=> b!1904309 (= res!850411 (= (size!16921 lt!728225) (+ (size!16921 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598))))) (size!16921 lt!727901))))))

(declare-fun b!1904307 () Bool)

(assert (=> b!1904307 (= e!1216402 lt!727901)))

(declare-fun b!1904310 () Bool)

(assert (=> b!1904310 (= e!1216403 (or (not (= lt!727901 Nil!21455)) (= lt!728225 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))))))))

(assert (= (and d!582375 c!310222) b!1904307))

(assert (= (and d!582375 (not c!310222)) b!1904308))

(assert (= (and d!582375 res!850410) b!1904309))

(assert (= (and b!1904309 res!850411) b!1904310))

(declare-fun m!2336127 () Bool)

(assert (=> d!582375 m!2336127))

(assert (=> d!582375 m!2334711))

(declare-fun m!2336131 () Bool)

(assert (=> d!582375 m!2336131))

(assert (=> d!582375 m!2336005))

(declare-fun m!2336133 () Bool)

(assert (=> b!1904308 m!2336133))

(declare-fun m!2336135 () Bool)

(assert (=> b!1904309 m!2336135))

(assert (=> b!1904309 m!2334711))

(declare-fun m!2336137 () Bool)

(assert (=> b!1904309 m!2336137))

(assert (=> b!1904309 m!2336015))

(assert (=> b!1903392 d!582375))

(declare-fun d!582377 () Bool)

(assert (=> d!582377 (dynLambda!10437 lambda!74401 (h!26857 (t!177029 tokens!598)))))

(declare-fun lt!728234 () Unit!35776)

(declare-fun choose!11859 (List!21538 Int Token!7192) Unit!35776)

(assert (=> d!582377 (= lt!728234 (choose!11859 (t!177029 tokens!598) lambda!74401 (h!26857 (t!177029 tokens!598))))))

(declare-fun e!1216413 () Bool)

(assert (=> d!582377 e!1216413))

(declare-fun res!850414 () Bool)

(assert (=> d!582377 (=> (not res!850414) (not e!1216413))))

(assert (=> d!582377 (= res!850414 (forall!4504 (t!177029 tokens!598) lambda!74401))))

(assert (=> d!582377 (= (forallContained!688 (t!177029 tokens!598) lambda!74401 (h!26857 (t!177029 tokens!598))) lt!728234)))

(declare-fun b!1904324 () Bool)

(declare-fun contains!3850 (List!21538 Token!7192) Bool)

(assert (=> b!1904324 (= e!1216413 (contains!3850 (t!177029 tokens!598) (h!26857 (t!177029 tokens!598))))))

(assert (= (and d!582377 res!850414) b!1904324))

(declare-fun b_lambda!62825 () Bool)

(assert (=> (not b_lambda!62825) (not d!582377)))

(declare-fun m!2336159 () Bool)

(assert (=> d!582377 m!2336159))

(declare-fun m!2336161 () Bool)

(assert (=> d!582377 m!2336161))

(declare-fun m!2336163 () Bool)

(assert (=> d!582377 m!2336163))

(declare-fun m!2336165 () Bool)

(assert (=> b!1904324 m!2336165))

(assert (=> b!1903392 d!582377))

(declare-fun d!582381 () Bool)

(declare-fun lt!728235 () BalanceConc!14086)

(assert (=> d!582381 (= (list!8716 lt!728235) (originalCharacters!4627 (h!26857 (t!177029 tokens!598))))))

(assert (=> d!582381 (= lt!728235 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (value!120461 (h!26857 (t!177029 tokens!598)))))))

(assert (=> d!582381 (= (charsOf!2376 (h!26857 (t!177029 tokens!598))) lt!728235)))

(declare-fun b_lambda!62827 () Bool)

(assert (=> (not b_lambda!62827) (not d!582381)))

(declare-fun t!177248 () Bool)

(declare-fun tb!116249 () Bool)

(assert (=> (and b!1903564 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177248) tb!116249))

(declare-fun b!1904325 () Bool)

(declare-fun e!1216414 () Bool)

(declare-fun tp!543748 () Bool)

(assert (=> b!1904325 (= e!1216414 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (value!120461 (h!26857 (t!177029 tokens!598)))))) tp!543748))))

(declare-fun result!140548 () Bool)

(assert (=> tb!116249 (= result!140548 (and (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (value!120461 (h!26857 (t!177029 tokens!598))))) e!1216414))))

(assert (= tb!116249 b!1904325))

(declare-fun m!2336185 () Bool)

(assert (=> b!1904325 m!2336185))

(declare-fun m!2336189 () Bool)

(assert (=> tb!116249 m!2336189))

(assert (=> d!582381 t!177248))

(declare-fun b_and!147701 () Bool)

(assert (= b_and!147697 (and (=> t!177248 result!140548) b_and!147701)))

(declare-fun t!177250 () Bool)

(declare-fun tb!116251 () Bool)

(assert (=> (and b!1903550 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177250) tb!116251))

(declare-fun result!140550 () Bool)

(assert (= result!140550 result!140548))

(assert (=> d!582381 t!177250))

(declare-fun b_and!147703 () Bool)

(assert (= b_and!147695 (and (=> t!177250 result!140550) b_and!147703)))

(declare-fun t!177252 () Bool)

(declare-fun tb!116253 () Bool)

(assert (=> (and b!1902858 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177252) tb!116253))

(declare-fun result!140552 () Bool)

(assert (= result!140552 result!140548))

(assert (=> d!582381 t!177252))

(declare-fun b_and!147705 () Bool)

(assert (= b_and!147699 (and (=> t!177252 result!140552) b_and!147705)))

(declare-fun tb!116255 () Bool)

(declare-fun t!177254 () Bool)

(assert (=> (and b!1902865 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177254) tb!116255))

(declare-fun result!140554 () Bool)

(assert (= result!140554 result!140548))

(assert (=> d!582381 t!177254))

(declare-fun b_and!147707 () Bool)

(assert (= b_and!147693 (and (=> t!177254 result!140554) b_and!147707)))

(declare-fun t!177256 () Bool)

(declare-fun tb!116257 () Bool)

(assert (=> (and b!1902864 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177256) tb!116257))

(declare-fun result!140556 () Bool)

(assert (= result!140556 result!140548))

(assert (=> d!582381 t!177256))

(declare-fun b_and!147709 () Bool)

(assert (= b_and!147691 (and (=> t!177256 result!140556) b_and!147709)))

(declare-fun m!2336199 () Bool)

(assert (=> d!582381 m!2336199))

(declare-fun m!2336201 () Bool)

(assert (=> d!582381 m!2336201))

(assert (=> b!1903392 d!582381))

(declare-fun d!582387 () Bool)

(declare-fun e!1216419 () Bool)

(assert (=> d!582387 e!1216419))

(declare-fun res!850428 () Bool)

(assert (=> d!582387 (=> res!850428 e!1216419)))

(declare-fun lt!728243 () Option!4346)

(assert (=> d!582387 (= res!850428 (isEmpty!13169 lt!728243))))

(declare-fun e!1216420 () Option!4346)

(assert (=> d!582387 (= lt!728243 e!1216420)))

(declare-fun c!310228 () Bool)

(assert (=> d!582387 (= c!310228 (and ((_ is Cons!21457) rules!3198) ((_ is Nil!21457) (t!177030 rules!3198))))))

(declare-fun lt!728245 () Unit!35776)

(declare-fun lt!728242 () Unit!35776)

(assert (=> d!582387 (= lt!728245 lt!728242)))

(assert (=> d!582387 (isPrefix!1919 (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901) (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901))))

(assert (=> d!582387 (= lt!728242 (lemmaIsPrefixRefl!1237 (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901) (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901)))))

(assert (=> d!582387 (rulesValidInductive!1298 thiss!23328 rules!3198)))

(assert (=> d!582387 (= (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901)) lt!728243)))

(declare-fun b!1904335 () Bool)

(declare-fun res!850426 () Bool)

(declare-fun e!1216421 () Bool)

(assert (=> b!1904335 (=> (not res!850426) (not e!1216421))))

(assert (=> b!1904335 (= res!850426 (< (size!16921 (_2!11561 (get!6663 lt!728243))) (size!16921 (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901))))))

(declare-fun b!1904336 () Bool)

(declare-fun call!117277 () Option!4346)

(assert (=> b!1904336 (= e!1216420 call!117277)))

(declare-fun b!1904337 () Bool)

(declare-fun res!850427 () Bool)

(assert (=> b!1904337 (=> (not res!850427) (not e!1216421))))

(assert (=> b!1904337 (= res!850427 (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!728243)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728243))))))))

(declare-fun b!1904338 () Bool)

(declare-fun res!850422 () Bool)

(assert (=> b!1904338 (=> (not res!850422) (not e!1216421))))

(assert (=> b!1904338 (= res!850422 (= (value!120461 (_1!11561 (get!6663 lt!728243))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!728243)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!728243)))))))))

(declare-fun b!1904339 () Bool)

(declare-fun lt!728241 () Option!4346)

(declare-fun lt!728244 () Option!4346)

(assert (=> b!1904339 (= e!1216420 (ite (and ((_ is None!4345) lt!728241) ((_ is None!4345) lt!728244)) None!4345 (ite ((_ is None!4345) lt!728244) lt!728241 (ite ((_ is None!4345) lt!728241) lt!728244 (ite (>= (size!16918 (_1!11561 (v!26374 lt!728241))) (size!16918 (_1!11561 (v!26374 lt!728244)))) lt!728241 lt!728244)))))))

(assert (=> b!1904339 (= lt!728241 call!117277)))

(assert (=> b!1904339 (= lt!728244 (maxPrefix!1879 thiss!23328 (t!177030 rules!3198) (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901)))))

(declare-fun bm!117272 () Bool)

(assert (=> bm!117272 (= call!117277 (maxPrefixOneRule!1201 thiss!23328 (h!26858 rules!3198) (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901)))))

(declare-fun b!1904340 () Bool)

(declare-fun res!850424 () Bool)

(assert (=> b!1904340 (=> (not res!850424) (not e!1216421))))

(assert (=> b!1904340 (= res!850424 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728243)))) (_2!11561 (get!6663 lt!728243))) (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) lt!727901)))))

(declare-fun b!1904341 () Bool)

(assert (=> b!1904341 (= e!1216419 e!1216421)))

(declare-fun res!850425 () Bool)

(assert (=> b!1904341 (=> (not res!850425) (not e!1216421))))

(assert (=> b!1904341 (= res!850425 (isDefined!3644 lt!728243))))

(declare-fun b!1904342 () Bool)

(declare-fun res!850423 () Bool)

(assert (=> b!1904342 (=> (not res!850423) (not e!1216421))))

(assert (=> b!1904342 (= res!850423 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728243)))) (originalCharacters!4627 (_1!11561 (get!6663 lt!728243)))))))

(declare-fun b!1904343 () Bool)

(assert (=> b!1904343 (= e!1216421 (contains!3847 rules!3198 (rule!6013 (_1!11561 (get!6663 lt!728243)))))))

(assert (= (and d!582387 c!310228) b!1904336))

(assert (= (and d!582387 (not c!310228)) b!1904339))

(assert (= (or b!1904336 b!1904339) bm!117272))

(assert (= (and d!582387 (not res!850428)) b!1904341))

(assert (= (and b!1904341 res!850425) b!1904342))

(assert (= (and b!1904342 res!850423) b!1904335))

(assert (= (and b!1904335 res!850426) b!1904340))

(assert (= (and b!1904340 res!850424) b!1904338))

(assert (= (and b!1904338 res!850422) b!1904337))

(assert (= (and b!1904337 res!850427) b!1904343))

(declare-fun m!2336211 () Bool)

(assert (=> d!582387 m!2336211))

(assert (=> d!582387 m!2334713))

(assert (=> d!582387 m!2334713))

(declare-fun m!2336215 () Bool)

(assert (=> d!582387 m!2336215))

(assert (=> d!582387 m!2334713))

(assert (=> d!582387 m!2334713))

(declare-fun m!2336219 () Bool)

(assert (=> d!582387 m!2336219))

(assert (=> d!582387 m!2334751))

(declare-fun m!2336221 () Bool)

(assert (=> b!1904343 m!2336221))

(declare-fun m!2336225 () Bool)

(assert (=> b!1904343 m!2336225))

(assert (=> b!1904339 m!2334713))

(declare-fun m!2336227 () Bool)

(assert (=> b!1904339 m!2336227))

(assert (=> b!1904342 m!2336221))

(declare-fun m!2336229 () Bool)

(assert (=> b!1904342 m!2336229))

(assert (=> b!1904342 m!2336229))

(declare-fun m!2336231 () Bool)

(assert (=> b!1904342 m!2336231))

(assert (=> b!1904340 m!2336221))

(assert (=> b!1904340 m!2336229))

(assert (=> b!1904340 m!2336229))

(assert (=> b!1904340 m!2336231))

(assert (=> b!1904340 m!2336231))

(declare-fun m!2336245 () Bool)

(assert (=> b!1904340 m!2336245))

(assert (=> b!1904335 m!2336221))

(declare-fun m!2336251 () Bool)

(assert (=> b!1904335 m!2336251))

(assert (=> b!1904335 m!2334713))

(declare-fun m!2336253 () Bool)

(assert (=> b!1904335 m!2336253))

(assert (=> bm!117272 m!2334713))

(declare-fun m!2336257 () Bool)

(assert (=> bm!117272 m!2336257))

(assert (=> b!1904338 m!2336221))

(declare-fun m!2336261 () Bool)

(assert (=> b!1904338 m!2336261))

(assert (=> b!1904338 m!2336261))

(declare-fun m!2336265 () Bool)

(assert (=> b!1904338 m!2336265))

(assert (=> b!1904337 m!2336221))

(assert (=> b!1904337 m!2336229))

(assert (=> b!1904337 m!2336229))

(assert (=> b!1904337 m!2336231))

(assert (=> b!1904337 m!2336231))

(declare-fun m!2336271 () Bool)

(assert (=> b!1904337 m!2336271))

(declare-fun m!2336273 () Bool)

(assert (=> b!1904341 m!2336273))

(assert (=> b!1903392 d!582387))

(declare-fun bs!413741 () Bool)

(declare-fun b!1904364 () Bool)

(assert (= bs!413741 (and b!1904364 b!1902866)))

(declare-fun lambda!74426 () Int)

(assert (=> bs!413741 (not (= lambda!74426 lambda!74377))))

(declare-fun bs!413742 () Bool)

(assert (= bs!413742 (and b!1904364 d!581739)))

(assert (=> bs!413742 (= lambda!74426 lambda!74392)))

(declare-fun bs!413743 () Bool)

(assert (= bs!413743 (and b!1904364 b!1903392)))

(assert (=> bs!413743 (= lambda!74426 lambda!74401)))

(declare-fun b!1904368 () Bool)

(declare-fun e!1216435 () Bool)

(assert (=> b!1904368 (= e!1216435 true)))

(declare-fun b!1904367 () Bool)

(declare-fun e!1216434 () Bool)

(assert (=> b!1904367 (= e!1216434 e!1216435)))

(declare-fun b!1904366 () Bool)

(declare-fun e!1216433 () Bool)

(assert (=> b!1904366 (= e!1216433 e!1216434)))

(assert (=> b!1904364 e!1216433))

(assert (= b!1904367 b!1904368))

(assert (= b!1904366 b!1904367))

(assert (= (and b!1904364 ((_ is Cons!21457) rules!3198)) b!1904366))

(assert (=> b!1904368 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74426))))

(assert (=> b!1904368 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74426))))

(assert (=> b!1904364 true))

(declare-fun bm!117274 () Bool)

(declare-fun call!117283 () BalanceConc!14086)

(declare-fun c!310235 () Bool)

(declare-fun c!310234 () Bool)

(assert (=> bm!117274 (= call!117283 (charsOf!2376 (ite c!310234 (h!26857 (t!177029 (t!177029 tokens!598))) (ite c!310235 separatorToken!354 (h!26857 (t!177029 (t!177029 tokens!598)))))))))

(declare-fun b!1904358 () Bool)

(declare-fun e!1216431 () List!21537)

(assert (=> b!1904358 (= e!1216431 (list!8716 (charsOf!2376 (h!26857 (t!177029 (t!177029 tokens!598))))))))

(declare-fun d!582391 () Bool)

(declare-fun c!310232 () Bool)

(assert (=> d!582391 (= c!310232 ((_ is Cons!21456) (t!177029 (t!177029 tokens!598))))))

(declare-fun e!1216430 () List!21537)

(assert (=> d!582391 (= (printWithSeparatorTokenWhenNeededList!476 thiss!23328 rules!3198 (t!177029 (t!177029 tokens!598)) separatorToken!354) e!1216430)))

(declare-fun bm!117275 () Bool)

(declare-fun call!117279 () List!21537)

(declare-fun call!117280 () List!21537)

(assert (=> bm!117275 (= call!117279 call!117280)))

(declare-fun b!1904359 () Bool)

(assert (=> b!1904359 (= e!1216430 Nil!21455)))

(declare-fun bm!117276 () Bool)

(declare-fun call!117282 () BalanceConc!14086)

(assert (=> bm!117276 (= call!117282 call!117283)))

(declare-fun b!1904360 () Bool)

(declare-fun lt!728248 () Option!4346)

(assert (=> b!1904360 (= c!310235 (and ((_ is Some!4345) lt!728248) (not (= (_1!11561 (v!26374 lt!728248)) (h!26857 (t!177029 (t!177029 tokens!598)))))))))

(declare-fun e!1216429 () List!21537)

(declare-fun e!1216432 () List!21537)

(assert (=> b!1904360 (= e!1216429 e!1216432)))

(declare-fun b!1904361 () Bool)

(assert (=> b!1904361 (= e!1216432 Nil!21455)))

(assert (=> b!1904361 (= (print!1449 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 (t!177029 tokens!598))))) (printTailRec!956 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 (t!177029 tokens!598)))) 0 (BalanceConc!14087 Empty!7135)))))

(declare-fun lt!728252 () Unit!35776)

(declare-fun Unit!35784 () Unit!35776)

(assert (=> b!1904361 (= lt!728252 Unit!35784)))

(declare-fun lt!728249 () List!21537)

(declare-fun lt!728250 () Unit!35776)

(assert (=> b!1904361 (= lt!728250 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!718 thiss!23328 rules!3198 call!117279 lt!728249))))

(assert (=> b!1904361 false))

(declare-fun lt!728247 () Unit!35776)

(declare-fun Unit!35785 () Unit!35776)

(assert (=> b!1904361 (= lt!728247 Unit!35785)))

(declare-fun b!1904362 () Bool)

(declare-fun call!117281 () List!21537)

(assert (=> b!1904362 (= e!1216432 (++!5763 call!117281 lt!728249))))

(declare-fun bm!117277 () Bool)

(declare-fun c!310233 () Bool)

(assert (=> bm!117277 (= c!310233 c!310234)))

(assert (=> bm!117277 (= call!117281 (++!5763 e!1216431 (ite c!310234 lt!728249 call!117279)))))

(declare-fun b!1904363 () Bool)

(assert (=> b!1904363 (= e!1216431 call!117280)))

(declare-fun bm!117278 () Bool)

(assert (=> bm!117278 (= call!117280 (list!8716 (ite c!310234 call!117283 call!117282)))))

(assert (=> b!1904364 (= e!1216430 e!1216429)))

(declare-fun lt!728251 () Unit!35776)

(assert (=> b!1904364 (= lt!728251 (forallContained!688 (t!177029 (t!177029 tokens!598)) lambda!74426 (h!26857 (t!177029 (t!177029 tokens!598)))))))

(assert (=> b!1904364 (= lt!728249 (printWithSeparatorTokenWhenNeededList!476 thiss!23328 rules!3198 (t!177029 (t!177029 (t!177029 tokens!598))) separatorToken!354))))

(assert (=> b!1904364 (= lt!728248 (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 (list!8716 (charsOf!2376 (h!26857 (t!177029 (t!177029 tokens!598))))) lt!728249)))))

(assert (=> b!1904364 (= c!310234 (and ((_ is Some!4345) lt!728248) (= (_1!11561 (v!26374 lt!728248)) (h!26857 (t!177029 (t!177029 tokens!598))))))))

(declare-fun b!1904365 () Bool)

(assert (=> b!1904365 (= e!1216429 call!117281)))

(assert (= (and d!582391 c!310232) b!1904364))

(assert (= (and d!582391 (not c!310232)) b!1904359))

(assert (= (and b!1904364 c!310234) b!1904365))

(assert (= (and b!1904364 (not c!310234)) b!1904360))

(assert (= (and b!1904360 c!310235) b!1904362))

(assert (= (and b!1904360 (not c!310235)) b!1904361))

(assert (= (or b!1904362 b!1904361) bm!117276))

(assert (= (or b!1904362 b!1904361) bm!117275))

(assert (= (or b!1904365 bm!117276) bm!117274))

(assert (= (or b!1904365 bm!117275) bm!117278))

(assert (= (or b!1904365 b!1904362) bm!117277))

(assert (= (and bm!117277 c!310233) b!1904363))

(assert (= (and bm!117277 (not c!310233)) b!1904358))

(declare-fun m!2336289 () Bool)

(assert (=> bm!117277 m!2336289))

(declare-fun m!2336291 () Bool)

(assert (=> bm!117278 m!2336291))

(declare-fun m!2336293 () Bool)

(assert (=> b!1904361 m!2336293))

(assert (=> b!1904361 m!2336293))

(declare-fun m!2336295 () Bool)

(assert (=> b!1904361 m!2336295))

(assert (=> b!1904361 m!2336293))

(declare-fun m!2336297 () Bool)

(assert (=> b!1904361 m!2336297))

(declare-fun m!2336299 () Bool)

(assert (=> b!1904361 m!2336299))

(declare-fun m!2336301 () Bool)

(assert (=> bm!117274 m!2336301))

(declare-fun m!2336303 () Bool)

(assert (=> b!1904358 m!2336303))

(assert (=> b!1904358 m!2336303))

(declare-fun m!2336305 () Bool)

(assert (=> b!1904358 m!2336305))

(assert (=> b!1904364 m!2336305))

(declare-fun m!2336307 () Bool)

(assert (=> b!1904364 m!2336307))

(assert (=> b!1904364 m!2336307))

(declare-fun m!2336309 () Bool)

(assert (=> b!1904364 m!2336309))

(assert (=> b!1904364 m!2336303))

(assert (=> b!1904364 m!2336305))

(declare-fun m!2336311 () Bool)

(assert (=> b!1904364 m!2336311))

(assert (=> b!1904364 m!2336303))

(declare-fun m!2336313 () Bool)

(assert (=> b!1904364 m!2336313))

(declare-fun m!2336315 () Bool)

(assert (=> b!1904362 m!2336315))

(assert (=> b!1903392 d!582391))

(declare-fun d!582395 () Bool)

(assert (=> d!582395 (= (list!8716 (charsOf!2376 (h!26857 (t!177029 tokens!598)))) (list!8720 (c!309906 (charsOf!2376 (h!26857 (t!177029 tokens!598))))))))

(declare-fun bs!413744 () Bool)

(assert (= bs!413744 d!582395))

(declare-fun m!2336317 () Bool)

(assert (=> bs!413744 m!2336317))

(assert (=> b!1903392 d!582395))

(declare-fun d!582397 () Bool)

(assert (=> d!582397 (= (isEmpty!13167 lt!727775) ((_ is Nil!21455) lt!727775))))

(assert (=> d!581771 d!582397))

(declare-fun b!1904407 () Bool)

(declare-fun res!850449 () Bool)

(declare-fun e!1216466 () Bool)

(assert (=> b!1904407 (=> res!850449 e!1216466)))

(assert (=> b!1904407 (= res!850449 (not ((_ is Concat!9202) (regex!3820 lt!727766))))))

(declare-fun e!1216462 () Bool)

(assert (=> b!1904407 (= e!1216462 e!1216466)))

(declare-fun b!1904408 () Bool)

(declare-fun res!850450 () Bool)

(declare-fun e!1216464 () Bool)

(assert (=> b!1904408 (=> (not res!850450) (not e!1216464))))

(declare-fun call!117300 () Bool)

(assert (=> b!1904408 (= res!850450 call!117300)))

(assert (=> b!1904408 (= e!1216462 e!1216464)))

(declare-fun b!1904409 () Bool)

(declare-fun e!1216465 () Bool)

(declare-fun call!117299 () Bool)

(assert (=> b!1904409 (= e!1216465 call!117299)))

(declare-fun bm!117293 () Bool)

(declare-fun c!310251 () Bool)

(assert (=> bm!117293 (= call!117299 (validRegex!2115 (ite c!310251 (regTwo!11003 (regex!3820 lt!727766)) (regTwo!11002 (regex!3820 lt!727766)))))))

(declare-fun b!1904411 () Bool)

(assert (=> b!1904411 (= e!1216464 call!117299)))

(declare-fun b!1904412 () Bool)

(declare-fun e!1216463 () Bool)

(declare-fun e!1216461 () Bool)

(assert (=> b!1904412 (= e!1216463 e!1216461)))

(declare-fun c!310250 () Bool)

(assert (=> b!1904412 (= c!310250 ((_ is Star!5245) (regex!3820 lt!727766)))))

(declare-fun bm!117294 () Bool)

(declare-fun call!117298 () Bool)

(assert (=> bm!117294 (= call!117300 call!117298)))

(declare-fun bm!117295 () Bool)

(assert (=> bm!117295 (= call!117298 (validRegex!2115 (ite c!310250 (reg!5574 (regex!3820 lt!727766)) (ite c!310251 (regOne!11003 (regex!3820 lt!727766)) (regOne!11002 (regex!3820 lt!727766))))))))

(declare-fun b!1904413 () Bool)

(declare-fun e!1216460 () Bool)

(assert (=> b!1904413 (= e!1216461 e!1216460)))

(declare-fun res!850451 () Bool)

(assert (=> b!1904413 (= res!850451 (not (nullable!1591 (reg!5574 (regex!3820 lt!727766)))))))

(assert (=> b!1904413 (=> (not res!850451) (not e!1216460))))

(declare-fun d!582399 () Bool)

(declare-fun res!850447 () Bool)

(assert (=> d!582399 (=> res!850447 e!1216463)))

(assert (=> d!582399 (= res!850447 ((_ is ElementMatch!5245) (regex!3820 lt!727766)))))

(assert (=> d!582399 (= (validRegex!2115 (regex!3820 lt!727766)) e!1216463)))

(declare-fun b!1904410 () Bool)

(assert (=> b!1904410 (= e!1216460 call!117298)))

(declare-fun b!1904414 () Bool)

(assert (=> b!1904414 (= e!1216466 e!1216465)))

(declare-fun res!850448 () Bool)

(assert (=> b!1904414 (=> (not res!850448) (not e!1216465))))

(assert (=> b!1904414 (= res!850448 call!117300)))

(declare-fun b!1904415 () Bool)

(assert (=> b!1904415 (= e!1216461 e!1216462)))

(assert (=> b!1904415 (= c!310251 ((_ is Union!5245) (regex!3820 lt!727766)))))

(assert (= (and d!582399 (not res!850447)) b!1904412))

(assert (= (and b!1904412 c!310250) b!1904413))

(assert (= (and b!1904412 (not c!310250)) b!1904415))

(assert (= (and b!1904413 res!850451) b!1904410))

(assert (= (and b!1904415 c!310251) b!1904408))

(assert (= (and b!1904415 (not c!310251)) b!1904407))

(assert (= (and b!1904408 res!850450) b!1904411))

(assert (= (and b!1904407 (not res!850449)) b!1904414))

(assert (= (and b!1904414 res!850448) b!1904409))

(assert (= (or b!1904408 b!1904414) bm!117294))

(assert (= (or b!1904411 b!1904409) bm!117293))

(assert (= (or b!1904410 bm!117294) bm!117295))

(declare-fun m!2336319 () Bool)

(assert (=> bm!117293 m!2336319))

(declare-fun m!2336321 () Bool)

(assert (=> bm!117295 m!2336321))

(declare-fun m!2336323 () Bool)

(assert (=> b!1904413 m!2336323))

(assert (=> d!581771 d!582399))

(declare-fun d!582401 () Bool)

(declare-fun e!1216468 () Bool)

(assert (=> d!582401 e!1216468))

(declare-fun res!850452 () Bool)

(assert (=> d!582401 (=> (not res!850452) (not e!1216468))))

(declare-fun lt!728255 () List!21537)

(assert (=> d!582401 (= res!850452 (= (content!3139 lt!728255) ((_ map or) (content!3139 (t!177028 lt!727775)) (content!3139 (++!5763 lt!727773 lt!727764)))))))

(declare-fun e!1216467 () List!21537)

(assert (=> d!582401 (= lt!728255 e!1216467)))

(declare-fun c!310252 () Bool)

(assert (=> d!582401 (= c!310252 ((_ is Nil!21455) (t!177028 lt!727775)))))

(assert (=> d!582401 (= (++!5763 (t!177028 lt!727775) (++!5763 lt!727773 lt!727764)) lt!728255)))

(declare-fun b!1904417 () Bool)

(assert (=> b!1904417 (= e!1216467 (Cons!21455 (h!26856 (t!177028 lt!727775)) (++!5763 (t!177028 (t!177028 lt!727775)) (++!5763 lt!727773 lt!727764))))))

(declare-fun b!1904418 () Bool)

(declare-fun res!850453 () Bool)

(assert (=> b!1904418 (=> (not res!850453) (not e!1216468))))

(assert (=> b!1904418 (= res!850453 (= (size!16921 lt!728255) (+ (size!16921 (t!177028 lt!727775)) (size!16921 (++!5763 lt!727773 lt!727764)))))))

(declare-fun b!1904416 () Bool)

(assert (=> b!1904416 (= e!1216467 (++!5763 lt!727773 lt!727764))))

(declare-fun b!1904419 () Bool)

(assert (=> b!1904419 (= e!1216468 (or (not (= (++!5763 lt!727773 lt!727764) Nil!21455)) (= lt!728255 (t!177028 lt!727775))))))

(assert (= (and d!582401 c!310252) b!1904416))

(assert (= (and d!582401 (not c!310252)) b!1904417))

(assert (= (and d!582401 res!850452) b!1904418))

(assert (= (and b!1904418 res!850453) b!1904419))

(declare-fun m!2336325 () Bool)

(assert (=> d!582401 m!2336325))

(assert (=> d!582401 m!2335069))

(assert (=> d!582401 m!2334137))

(assert (=> d!582401 m!2334887))

(assert (=> b!1904417 m!2334137))

(declare-fun m!2336327 () Bool)

(assert (=> b!1904417 m!2336327))

(declare-fun m!2336329 () Bool)

(assert (=> b!1904418 m!2336329))

(assert (=> b!1904418 m!2335557))

(assert (=> b!1904418 m!2334137))

(assert (=> b!1904418 m!2334893))

(assert (=> b!1903511 d!582401))

(assert (=> b!1903201 d!582285))

(declare-fun d!582403 () Bool)

(declare-fun lt!728256 () Int)

(assert (=> d!582403 (>= lt!728256 0)))

(declare-fun e!1216469 () Int)

(assert (=> d!582403 (= lt!728256 e!1216469)))

(declare-fun c!310253 () Bool)

(assert (=> d!582403 (= c!310253 ((_ is Nil!21455) lt!727949))))

(assert (=> d!582403 (= (size!16921 lt!727949) lt!728256)))

(declare-fun b!1904420 () Bool)

(assert (=> b!1904420 (= e!1216469 0)))

(declare-fun b!1904421 () Bool)

(assert (=> b!1904421 (= e!1216469 (+ 1 (size!16921 (t!177028 lt!727949))))))

(assert (= (and d!582403 c!310253) b!1904420))

(assert (= (and d!582403 (not c!310253)) b!1904421))

(declare-fun m!2336331 () Bool)

(assert (=> b!1904421 m!2336331))

(assert (=> b!1903508 d!582403))

(declare-fun d!582405 () Bool)

(declare-fun lt!728257 () Int)

(assert (=> d!582405 (>= lt!728257 0)))

(declare-fun e!1216470 () Int)

(assert (=> d!582405 (= lt!728257 e!1216470)))

(declare-fun c!310254 () Bool)

(assert (=> d!582405 (= c!310254 ((_ is Nil!21455) (++!5763 lt!727775 lt!727773)))))

(assert (=> d!582405 (= (size!16921 (++!5763 lt!727775 lt!727773)) lt!728257)))

(declare-fun b!1904422 () Bool)

(assert (=> b!1904422 (= e!1216470 0)))

(declare-fun b!1904423 () Bool)

(assert (=> b!1904423 (= e!1216470 (+ 1 (size!16921 (t!177028 (++!5763 lt!727775 lt!727773)))))))

(assert (= (and d!582405 c!310254) b!1904422))

(assert (= (and d!582405 (not c!310254)) b!1904423))

(declare-fun m!2336333 () Bool)

(assert (=> b!1904423 m!2336333))

(assert (=> b!1903508 d!582405))

(assert (=> b!1903508 d!582227))

(declare-fun d!582407 () Bool)

(assert (=> d!582407 (= (isEmpty!13167 lt!727773) ((_ is Nil!21455) lt!727773))))

(assert (=> bm!117174 d!582407))

(assert (=> d!581797 d!582407))

(declare-fun b!1904424 () Bool)

(declare-fun res!850456 () Bool)

(declare-fun e!1216477 () Bool)

(assert (=> b!1904424 (=> res!850456 e!1216477)))

(assert (=> b!1904424 (= res!850456 (not ((_ is Concat!9202) (regex!3820 lt!727771))))))

(declare-fun e!1216473 () Bool)

(assert (=> b!1904424 (= e!1216473 e!1216477)))

(declare-fun b!1904425 () Bool)

(declare-fun res!850457 () Bool)

(declare-fun e!1216475 () Bool)

(assert (=> b!1904425 (=> (not res!850457) (not e!1216475))))

(declare-fun call!117303 () Bool)

(assert (=> b!1904425 (= res!850457 call!117303)))

(assert (=> b!1904425 (= e!1216473 e!1216475)))

(declare-fun b!1904426 () Bool)

(declare-fun e!1216476 () Bool)

(declare-fun call!117302 () Bool)

(assert (=> b!1904426 (= e!1216476 call!117302)))

(declare-fun bm!117296 () Bool)

(declare-fun c!310256 () Bool)

(assert (=> bm!117296 (= call!117302 (validRegex!2115 (ite c!310256 (regTwo!11003 (regex!3820 lt!727771)) (regTwo!11002 (regex!3820 lt!727771)))))))

(declare-fun b!1904428 () Bool)

(assert (=> b!1904428 (= e!1216475 call!117302)))

(declare-fun b!1904429 () Bool)

(declare-fun e!1216474 () Bool)

(declare-fun e!1216472 () Bool)

(assert (=> b!1904429 (= e!1216474 e!1216472)))

(declare-fun c!310255 () Bool)

(assert (=> b!1904429 (= c!310255 ((_ is Star!5245) (regex!3820 lt!727771)))))

(declare-fun bm!117297 () Bool)

(declare-fun call!117301 () Bool)

(assert (=> bm!117297 (= call!117303 call!117301)))

(declare-fun bm!117298 () Bool)

(assert (=> bm!117298 (= call!117301 (validRegex!2115 (ite c!310255 (reg!5574 (regex!3820 lt!727771)) (ite c!310256 (regOne!11003 (regex!3820 lt!727771)) (regOne!11002 (regex!3820 lt!727771))))))))

(declare-fun b!1904430 () Bool)

(declare-fun e!1216471 () Bool)

(assert (=> b!1904430 (= e!1216472 e!1216471)))

(declare-fun res!850458 () Bool)

(assert (=> b!1904430 (= res!850458 (not (nullable!1591 (reg!5574 (regex!3820 lt!727771)))))))

(assert (=> b!1904430 (=> (not res!850458) (not e!1216471))))

(declare-fun d!582409 () Bool)

(declare-fun res!850454 () Bool)

(assert (=> d!582409 (=> res!850454 e!1216474)))

(assert (=> d!582409 (= res!850454 ((_ is ElementMatch!5245) (regex!3820 lt!727771)))))

(assert (=> d!582409 (= (validRegex!2115 (regex!3820 lt!727771)) e!1216474)))

(declare-fun b!1904427 () Bool)

(assert (=> b!1904427 (= e!1216471 call!117301)))

(declare-fun b!1904431 () Bool)

(assert (=> b!1904431 (= e!1216477 e!1216476)))

(declare-fun res!850455 () Bool)

(assert (=> b!1904431 (=> (not res!850455) (not e!1216476))))

(assert (=> b!1904431 (= res!850455 call!117303)))

(declare-fun b!1904432 () Bool)

(assert (=> b!1904432 (= e!1216472 e!1216473)))

(assert (=> b!1904432 (= c!310256 ((_ is Union!5245) (regex!3820 lt!727771)))))

(assert (= (and d!582409 (not res!850454)) b!1904429))

(assert (= (and b!1904429 c!310255) b!1904430))

(assert (= (and b!1904429 (not c!310255)) b!1904432))

(assert (= (and b!1904430 res!850458) b!1904427))

(assert (= (and b!1904432 c!310256) b!1904425))

(assert (= (and b!1904432 (not c!310256)) b!1904424))

(assert (= (and b!1904425 res!850457) b!1904428))

(assert (= (and b!1904424 (not res!850456)) b!1904431))

(assert (= (and b!1904431 res!850455) b!1904426))

(assert (= (or b!1904425 b!1904431) bm!117297))

(assert (= (or b!1904428 b!1904426) bm!117296))

(assert (= (or b!1904427 bm!117297) bm!117298))

(declare-fun m!2336335 () Bool)

(assert (=> bm!117296 m!2336335))

(declare-fun m!2336337 () Bool)

(assert (=> bm!117298 m!2336337))

(declare-fun m!2336339 () Bool)

(assert (=> b!1904430 m!2336339))

(assert (=> d!581797 d!582409))

(declare-fun d!582411 () Bool)

(declare-fun lt!728258 () Bool)

(assert (=> d!582411 (= lt!728258 (select (content!3141 rules!3198) (get!6662 lt!727941)))))

(declare-fun e!1216478 () Bool)

(assert (=> d!582411 (= lt!728258 e!1216478)))

(declare-fun res!850459 () Bool)

(assert (=> d!582411 (=> (not res!850459) (not e!1216478))))

(assert (=> d!582411 (= res!850459 ((_ is Cons!21457) rules!3198))))

(assert (=> d!582411 (= (contains!3847 rules!3198 (get!6662 lt!727941)) lt!728258)))

(declare-fun b!1904433 () Bool)

(declare-fun e!1216479 () Bool)

(assert (=> b!1904433 (= e!1216478 e!1216479)))

(declare-fun res!850460 () Bool)

(assert (=> b!1904433 (=> res!850460 e!1216479)))

(assert (=> b!1904433 (= res!850460 (= (h!26858 rules!3198) (get!6662 lt!727941)))))

(declare-fun b!1904434 () Bool)

(assert (=> b!1904434 (= e!1216479 (contains!3847 (t!177030 rules!3198) (get!6662 lt!727941)))))

(assert (= (and d!582411 res!850459) b!1904433))

(assert (= (and b!1904433 (not res!850460)) b!1904434))

(assert (=> d!582411 m!2335513))

(assert (=> d!582411 m!2334827))

(declare-fun m!2336341 () Bool)

(assert (=> d!582411 m!2336341))

(assert (=> b!1904434 m!2334827))

(declare-fun m!2336343 () Bool)

(assert (=> b!1904434 m!2336343))

(assert (=> b!1903454 d!582411))

(assert (=> b!1903454 d!581957))

(declare-fun bm!117303 () Bool)

(declare-fun call!117308 () Bool)

(assert (=> bm!117303 (= call!117308 (isEmpty!13167 (list!8716 (charsOf!2376 separatorToken!354))))))

(declare-fun b!1904445 () Bool)

(declare-fun e!1216486 () Bool)

(assert (=> b!1904445 (= e!1216486 (= (head!4418 (list!8716 (charsOf!2376 separatorToken!354))) (c!309905 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))))))

(declare-fun b!1904446 () Bool)

(declare-fun e!1216490 () Bool)

(declare-fun e!1216487 () Bool)

(assert (=> b!1904446 (= e!1216490 e!1216487)))

(declare-fun res!850465 () Bool)

(assert (=> b!1904446 (=> (not res!850465) (not e!1216487))))

(declare-fun lt!728260 () Bool)

(assert (=> b!1904446 (= res!850465 (not lt!728260))))

(declare-fun b!1904447 () Bool)

(declare-fun e!1216491 () Bool)

(assert (=> b!1904447 (= e!1216491 (not lt!728260))))

(declare-fun b!1904448 () Bool)

(declare-fun res!850467 () Bool)

(declare-fun e!1216488 () Bool)

(assert (=> b!1904448 (=> res!850467 e!1216488)))

(assert (=> b!1904448 (= res!850467 (not (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 separatorToken!354))))))))

(declare-fun b!1904449 () Bool)

(declare-fun res!850466 () Bool)

(assert (=> b!1904449 (=> (not res!850466) (not e!1216486))))

(assert (=> b!1904449 (= res!850466 (not call!117308))))

(declare-fun b!1904450 () Bool)

(declare-fun e!1216489 () Bool)

(assert (=> b!1904450 (= e!1216489 e!1216491)))

(declare-fun c!310264 () Bool)

(assert (=> b!1904450 (= c!310264 ((_ is EmptyLang!5245) (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))))

(declare-fun b!1904451 () Bool)

(declare-fun e!1216485 () Bool)

(assert (=> b!1904451 (= e!1216485 (nullable!1591 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))))

(declare-fun b!1904452 () Bool)

(declare-fun res!850463 () Bool)

(assert (=> b!1904452 (=> res!850463 e!1216490)))

(assert (=> b!1904452 (= res!850463 e!1216486)))

(declare-fun res!850464 () Bool)

(assert (=> b!1904452 (=> (not res!850464) (not e!1216486))))

(assert (=> b!1904452 (= res!850464 lt!728260)))

(declare-fun b!1904453 () Bool)

(declare-fun res!850462 () Bool)

(assert (=> b!1904453 (=> res!850462 e!1216490)))

(assert (=> b!1904453 (= res!850462 (not ((_ is ElementMatch!5245) (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))))))

(assert (=> b!1904453 (= e!1216491 e!1216490)))

(declare-fun b!1904454 () Bool)

(assert (=> b!1904454 (= e!1216485 (matchR!2531 (derivativeStep!1350 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))) (head!4418 (list!8716 (charsOf!2376 separatorToken!354)))) (tail!2944 (list!8716 (charsOf!2376 separatorToken!354)))))))

(declare-fun d!582413 () Bool)

(assert (=> d!582413 e!1216489))

(declare-fun c!310263 () Bool)

(assert (=> d!582413 (= c!310263 ((_ is EmptyExpr!5245) (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))))

(assert (=> d!582413 (= lt!728260 e!1216485)))

(declare-fun c!310262 () Bool)

(assert (=> d!582413 (= c!310262 (isEmpty!13167 (list!8716 (charsOf!2376 separatorToken!354))))))

(assert (=> d!582413 (validRegex!2115 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))))))

(assert (=> d!582413 (= (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354))))) (list!8716 (charsOf!2376 separatorToken!354))) lt!728260)))

(declare-fun b!1904455 () Bool)

(assert (=> b!1904455 (= e!1216489 (= lt!728260 call!117308))))

(declare-fun b!1904456 () Bool)

(declare-fun res!850468 () Bool)

(assert (=> b!1904456 (=> (not res!850468) (not e!1216486))))

(assert (=> b!1904456 (= res!850468 (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 separatorToken!354)))))))

(declare-fun b!1904457 () Bool)

(assert (=> b!1904457 (= e!1216487 e!1216488)))

(declare-fun res!850461 () Bool)

(assert (=> b!1904457 (=> res!850461 e!1216488)))

(assert (=> b!1904457 (= res!850461 call!117308)))

(declare-fun b!1904458 () Bool)

(assert (=> b!1904458 (= e!1216488 (not (= (head!4418 (list!8716 (charsOf!2376 separatorToken!354))) (c!309905 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 separatorToken!354)))))))))))

(assert (= (and d!582413 c!310262) b!1904451))

(assert (= (and d!582413 (not c!310262)) b!1904454))

(assert (= (and d!582413 c!310263) b!1904455))

(assert (= (and d!582413 (not c!310263)) b!1904450))

(assert (= (and b!1904450 c!310264) b!1904447))

(assert (= (and b!1904450 (not c!310264)) b!1904453))

(assert (= (and b!1904453 (not res!850462)) b!1904452))

(assert (= (and b!1904452 res!850464) b!1904449))

(assert (= (and b!1904449 res!850466) b!1904456))

(assert (= (and b!1904456 res!850468) b!1904445))

(assert (= (and b!1904452 (not res!850463)) b!1904446))

(assert (= (and b!1904446 res!850465) b!1904457))

(assert (= (and b!1904457 (not res!850461)) b!1904448))

(assert (= (and b!1904448 (not res!850467)) b!1904458))

(assert (= (or b!1904455 b!1904449 b!1904457) bm!117303))

(assert (=> b!1904448 m!2334183))

(declare-fun m!2336353 () Bool)

(assert (=> b!1904448 m!2336353))

(assert (=> b!1904448 m!2336353))

(declare-fun m!2336355 () Bool)

(assert (=> b!1904448 m!2336355))

(declare-fun m!2336357 () Bool)

(assert (=> b!1904451 m!2336357))

(assert (=> b!1904456 m!2334183))

(assert (=> b!1904456 m!2336353))

(assert (=> b!1904456 m!2336353))

(assert (=> b!1904456 m!2336355))

(assert (=> b!1904454 m!2334183))

(declare-fun m!2336359 () Bool)

(assert (=> b!1904454 m!2336359))

(assert (=> b!1904454 m!2336359))

(declare-fun m!2336361 () Bool)

(assert (=> b!1904454 m!2336361))

(assert (=> b!1904454 m!2334183))

(assert (=> b!1904454 m!2336353))

(assert (=> b!1904454 m!2336361))

(assert (=> b!1904454 m!2336353))

(declare-fun m!2336365 () Bool)

(assert (=> b!1904454 m!2336365))

(assert (=> bm!117303 m!2334183))

(declare-fun m!2336369 () Bool)

(assert (=> bm!117303 m!2336369))

(assert (=> b!1904445 m!2334183))

(assert (=> b!1904445 m!2336359))

(assert (=> d!582413 m!2334183))

(assert (=> d!582413 m!2336369))

(declare-fun m!2336373 () Bool)

(assert (=> d!582413 m!2336373))

(assert (=> b!1904458 m!2334183))

(assert (=> b!1904458 m!2336359))

(assert (=> b!1903401 d!582413))

(assert (=> b!1903401 d!582271))

(assert (=> b!1903401 d!581841))

(assert (=> b!1903401 d!581847))

(assert (=> b!1903401 d!581863))

(declare-fun d!582419 () Bool)

(assert (=> d!582419 (= (inv!28551 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))) (isBalanced!2235 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))))

(declare-fun bs!413745 () Bool)

(assert (= bs!413745 d!582419))

(declare-fun m!2336375 () Bool)

(assert (=> bs!413745 m!2336375))

(assert (=> tb!116097 d!582419))

(declare-fun d!582421 () Bool)

(assert (=> d!582421 (= (isEmpty!13167 (tail!2944 lt!727773)) ((_ is Nil!21455) (tail!2944 lt!727773)))))

(assert (=> b!1903219 d!582421))

(assert (=> b!1903219 d!582115))

(declare-fun d!582423 () Bool)

(declare-fun c!310269 () Bool)

(assert (=> d!582423 (= c!310269 ((_ is Nil!21455) lt!727947))))

(declare-fun e!1216501 () (InoxSet C!10636))

(assert (=> d!582423 (= (content!3139 lt!727947) e!1216501)))

(declare-fun b!1904477 () Bool)

(assert (=> b!1904477 (= e!1216501 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904478 () Bool)

(assert (=> b!1904478 (= e!1216501 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727947) true) (content!3139 (t!177028 lt!727947))))))

(assert (= (and d!582423 c!310269) b!1904477))

(assert (= (and d!582423 (not c!310269)) b!1904478))

(declare-fun m!2336377 () Bool)

(assert (=> b!1904478 m!2336377))

(declare-fun m!2336379 () Bool)

(assert (=> b!1904478 m!2336379))

(assert (=> d!581867 d!582423))

(assert (=> d!581867 d!581961))

(declare-fun d!582425 () Bool)

(declare-fun c!310270 () Bool)

(assert (=> d!582425 (= c!310270 ((_ is Nil!21455) lt!727764))))

(declare-fun e!1216502 () (InoxSet C!10636))

(assert (=> d!582425 (= (content!3139 lt!727764) e!1216502)))

(declare-fun b!1904479 () Bool)

(assert (=> b!1904479 (= e!1216502 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904480 () Bool)

(assert (=> b!1904480 (= e!1216502 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727764) true) (content!3139 (t!177028 lt!727764))))))

(assert (= (and d!582425 c!310270) b!1904479))

(assert (= (and d!582425 (not c!310270)) b!1904480))

(declare-fun m!2336381 () Bool)

(assert (=> b!1904480 m!2336381))

(declare-fun m!2336383 () Bool)

(assert (=> b!1904480 m!2336383))

(assert (=> d!581867 d!582425))

(assert (=> b!1903458 d!582195))

(assert (=> b!1903458 d!582197))

(declare-fun b!1904481 () Bool)

(declare-fun e!1216504 () Bool)

(declare-fun e!1216506 () Bool)

(assert (=> b!1904481 (= e!1216504 e!1216506)))

(declare-fun res!850480 () Bool)

(assert (=> b!1904481 (=> (not res!850480) (not e!1216506))))

(declare-fun lt!728265 () Option!4345)

(assert (=> b!1904481 (= res!850480 (contains!3847 (t!177030 rules!3198) (get!6662 lt!728265)))))

(declare-fun b!1904482 () Bool)

(declare-fun e!1216505 () Option!4345)

(assert (=> b!1904482 (= e!1216505 (Some!4344 (h!26858 (t!177030 rules!3198))))))

(declare-fun b!1904483 () Bool)

(assert (=> b!1904483 (= e!1216506 (= (tag!4248 (get!6662 lt!728265)) (tag!4248 (rule!6013 separatorToken!354))))))

(declare-fun b!1904484 () Bool)

(declare-fun e!1216503 () Option!4345)

(assert (=> b!1904484 (= e!1216505 e!1216503)))

(declare-fun c!310271 () Bool)

(assert (=> b!1904484 (= c!310271 (and ((_ is Cons!21457) (t!177030 rules!3198)) (not (= (tag!4248 (h!26858 (t!177030 rules!3198))) (tag!4248 (rule!6013 separatorToken!354))))))))

(declare-fun b!1904485 () Bool)

(declare-fun lt!728264 () Unit!35776)

(declare-fun lt!728263 () Unit!35776)

(assert (=> b!1904485 (= lt!728264 lt!728263)))

(assert (=> b!1904485 (rulesInvariant!3040 thiss!23328 (t!177030 (t!177030 rules!3198)))))

(assert (=> b!1904485 (= lt!728263 (lemmaInvariantOnRulesThenOnTail!252 thiss!23328 (h!26858 (t!177030 rules!3198)) (t!177030 (t!177030 rules!3198))))))

(assert (=> b!1904485 (= e!1216503 (getRuleFromTag!663 thiss!23328 (t!177030 (t!177030 rules!3198)) (tag!4248 (rule!6013 separatorToken!354))))))

(declare-fun d!582427 () Bool)

(assert (=> d!582427 e!1216504))

(declare-fun res!850479 () Bool)

(assert (=> d!582427 (=> res!850479 e!1216504)))

(assert (=> d!582427 (= res!850479 (isEmpty!13170 lt!728265))))

(assert (=> d!582427 (= lt!728265 e!1216505)))

(declare-fun c!310272 () Bool)

(assert (=> d!582427 (= c!310272 (and ((_ is Cons!21457) (t!177030 rules!3198)) (= (tag!4248 (h!26858 (t!177030 rules!3198))) (tag!4248 (rule!6013 separatorToken!354)))))))

(assert (=> d!582427 (rulesInvariant!3040 thiss!23328 (t!177030 rules!3198))))

(assert (=> d!582427 (= (getRuleFromTag!663 thiss!23328 (t!177030 rules!3198) (tag!4248 (rule!6013 separatorToken!354))) lt!728265)))

(declare-fun b!1904486 () Bool)

(assert (=> b!1904486 (= e!1216503 None!4344)))

(assert (= (and d!582427 c!310272) b!1904482))

(assert (= (and d!582427 (not c!310272)) b!1904484))

(assert (= (and b!1904484 c!310271) b!1904485))

(assert (= (and b!1904484 (not c!310271)) b!1904486))

(assert (= (and d!582427 (not res!850479)) b!1904481))

(assert (= (and b!1904481 res!850480) b!1904483))

(declare-fun m!2336399 () Bool)

(assert (=> b!1904481 m!2336399))

(assert (=> b!1904481 m!2336399))

(declare-fun m!2336401 () Bool)

(assert (=> b!1904481 m!2336401))

(assert (=> b!1904483 m!2336399))

(assert (=> b!1904485 m!2335633))

(assert (=> b!1904485 m!2335635))

(declare-fun m!2336403 () Bool)

(assert (=> b!1904485 m!2336403))

(declare-fun m!2336405 () Bool)

(assert (=> d!582427 m!2336405))

(assert (=> d!582427 m!2334831))

(assert (=> b!1903458 d!582427))

(declare-fun d!582431 () Bool)

(assert (=> d!582431 (= (isEmpty!13170 lt!727765) (not ((_ is Some!4344) lt!727765)))))

(assert (=> d!581849 d!582431))

(declare-fun bs!413746 () Bool)

(declare-fun d!582433 () Bool)

(assert (= bs!413746 (and d!582433 b!1902866)))

(declare-fun lambda!74427 () Int)

(assert (=> bs!413746 (not (= lambda!74427 lambda!74377))))

(declare-fun bs!413747 () Bool)

(assert (= bs!413747 (and d!582433 d!581739)))

(assert (=> bs!413747 (= lambda!74427 lambda!74392)))

(declare-fun bs!413748 () Bool)

(assert (= bs!413748 (and d!582433 b!1903392)))

(assert (=> bs!413748 (= lambda!74427 lambda!74401)))

(declare-fun bs!413749 () Bool)

(assert (= bs!413749 (and d!582433 b!1904364)))

(assert (=> bs!413749 (= lambda!74427 lambda!74426)))

(declare-fun b!1904501 () Bool)

(declare-fun e!1216516 () Bool)

(assert (=> b!1904501 (= e!1216516 true)))

(declare-fun b!1904500 () Bool)

(declare-fun e!1216515 () Bool)

(assert (=> b!1904500 (= e!1216515 e!1216516)))

(declare-fun b!1904499 () Bool)

(declare-fun e!1216514 () Bool)

(assert (=> b!1904499 (= e!1216514 e!1216515)))

(assert (=> d!582433 e!1216514))

(assert (= b!1904500 b!1904501))

(assert (= b!1904499 b!1904500))

(assert (= (and d!582433 ((_ is Cons!21457) rules!3198)) b!1904499))

(assert (=> b!1904501 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74427))))

(assert (=> b!1904501 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10439 order!13553 lambda!74427))))

(assert (=> d!582433 true))

(declare-fun lt!728267 () Bool)

(assert (=> d!582433 (= lt!728267 (forall!4504 (t!177029 tokens!598) lambda!74427))))

(declare-fun e!1216512 () Bool)

(assert (=> d!582433 (= lt!728267 e!1216512)))

(declare-fun res!850481 () Bool)

(assert (=> d!582433 (=> res!850481 e!1216512)))

(assert (=> d!582433 (= res!850481 (not ((_ is Cons!21456) (t!177029 tokens!598))))))

(assert (=> d!582433 (not (isEmpty!13162 rules!3198))))

(assert (=> d!582433 (= (rulesProduceEachTokenIndividuallyList!1164 thiss!23328 rules!3198 (t!177029 tokens!598)) lt!728267)))

(declare-fun b!1904497 () Bool)

(declare-fun e!1216513 () Bool)

(assert (=> b!1904497 (= e!1216512 e!1216513)))

(declare-fun res!850482 () Bool)

(assert (=> b!1904497 (=> (not res!850482) (not e!1216513))))

(assert (=> b!1904497 (= res!850482 (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 (h!26857 (t!177029 tokens!598))))))

(declare-fun b!1904498 () Bool)

(assert (=> b!1904498 (= e!1216513 (rulesProduceEachTokenIndividuallyList!1164 thiss!23328 rules!3198 (t!177029 (t!177029 tokens!598))))))

(assert (= (and d!582433 (not res!850481)) b!1904497))

(assert (= (and b!1904497 res!850482) b!1904498))

(declare-fun m!2336419 () Bool)

(assert (=> d!582433 m!2336419))

(assert (=> d!582433 m!2334165))

(declare-fun m!2336421 () Bool)

(assert (=> b!1904497 m!2336421))

(declare-fun m!2336423 () Bool)

(assert (=> b!1904498 m!2336423))

(assert (=> b!1903061 d!582433))

(declare-fun d!582441 () Bool)

(declare-fun lt!728269 () Int)

(assert (=> d!582441 (>= lt!728269 0)))

(declare-fun e!1216518 () Int)

(assert (=> d!582441 (= lt!728269 e!1216518)))

(declare-fun c!310279 () Bool)

(assert (=> d!582441 (= c!310279 ((_ is Nil!21455) (_2!11561 (get!6663 lt!727929))))))

(assert (=> d!582441 (= (size!16921 (_2!11561 (get!6663 lt!727929))) lt!728269)))

(declare-fun b!1904504 () Bool)

(assert (=> b!1904504 (= e!1216518 0)))

(declare-fun b!1904505 () Bool)

(assert (=> b!1904505 (= e!1216518 (+ 1 (size!16921 (t!177028 (_2!11561 (get!6663 lt!727929))))))))

(assert (= (and d!582441 c!310279) b!1904504))

(assert (= (and d!582441 (not c!310279)) b!1904505))

(declare-fun m!2336425 () Bool)

(assert (=> b!1904505 m!2336425))

(assert (=> b!1903433 d!582441))

(assert (=> b!1903433 d!582127))

(declare-fun d!582443 () Bool)

(declare-fun lt!728270 () Int)

(assert (=> d!582443 (>= lt!728270 0)))

(declare-fun e!1216519 () Int)

(assert (=> d!582443 (= lt!728270 e!1216519)))

(declare-fun c!310280 () Bool)

(assert (=> d!582443 (= c!310280 ((_ is Nil!21455) (++!5763 lt!727775 lt!727764)))))

(assert (=> d!582443 (= (size!16921 (++!5763 lt!727775 lt!727764)) lt!728270)))

(declare-fun b!1904506 () Bool)

(assert (=> b!1904506 (= e!1216519 0)))

(declare-fun b!1904507 () Bool)

(assert (=> b!1904507 (= e!1216519 (+ 1 (size!16921 (t!177028 (++!5763 lt!727775 lt!727764)))))))

(assert (= (and d!582443 c!310280) b!1904506))

(assert (= (and d!582443 (not c!310280)) b!1904507))

(declare-fun m!2336427 () Bool)

(assert (=> b!1904507 m!2336427))

(assert (=> b!1903433 d!582443))

(declare-fun d!582445 () Bool)

(declare-fun c!310281 () Bool)

(assert (=> d!582445 (= c!310281 ((_ is Nil!21455) lt!727949))))

(declare-fun e!1216520 () (InoxSet C!10636))

(assert (=> d!582445 (= (content!3139 lt!727949) e!1216520)))

(declare-fun b!1904508 () Bool)

(assert (=> b!1904508 (= e!1216520 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904509 () Bool)

(assert (=> b!1904509 (= e!1216520 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727949) true) (content!3139 (t!177028 lt!727949))))))

(assert (= (and d!582445 c!310281) b!1904508))

(assert (= (and d!582445 (not c!310281)) b!1904509))

(declare-fun m!2336429 () Bool)

(assert (=> b!1904509 m!2336429))

(declare-fun m!2336431 () Bool)

(assert (=> b!1904509 m!2336431))

(assert (=> d!581873 d!582445))

(declare-fun d!582447 () Bool)

(declare-fun c!310282 () Bool)

(assert (=> d!582447 (= c!310282 ((_ is Nil!21455) (++!5763 lt!727775 lt!727773)))))

(declare-fun e!1216521 () (InoxSet C!10636))

(assert (=> d!582447 (= (content!3139 (++!5763 lt!727775 lt!727773)) e!1216521)))

(declare-fun b!1904510 () Bool)

(assert (=> b!1904510 (= e!1216521 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904511 () Bool)

(assert (=> b!1904511 (= e!1216521 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 (++!5763 lt!727775 lt!727773)) true) (content!3139 (t!177028 (++!5763 lt!727775 lt!727773)))))))

(assert (= (and d!582447 c!310282) b!1904510))

(assert (= (and d!582447 (not c!310282)) b!1904511))

(declare-fun m!2336433 () Bool)

(assert (=> b!1904511 m!2336433))

(declare-fun m!2336435 () Bool)

(assert (=> b!1904511 m!2336435))

(assert (=> d!581873 d!582447))

(assert (=> d!581873 d!582425))

(declare-fun d!582449 () Bool)

(declare-fun e!1216522 () Bool)

(assert (=> d!582449 e!1216522))

(declare-fun res!850489 () Bool)

(assert (=> d!582449 (=> res!850489 e!1216522)))

(declare-fun lt!728275 () Option!4346)

(assert (=> d!582449 (= res!850489 (isEmpty!13169 lt!728275))))

(declare-fun e!1216523 () Option!4346)

(assert (=> d!582449 (= lt!728275 e!1216523)))

(declare-fun c!310283 () Bool)

(assert (=> d!582449 (= c!310283 (and ((_ is Cons!21457) (t!177030 rules!3198)) ((_ is Nil!21457) (t!177030 (t!177030 rules!3198)))))))

(declare-fun lt!728277 () Unit!35776)

(declare-fun lt!728274 () Unit!35776)

(assert (=> d!582449 (= lt!728277 lt!728274)))

(assert (=> d!582449 (isPrefix!1919 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764))))

(assert (=> d!582449 (= lt!728274 (lemmaIsPrefixRefl!1237 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764)))))

(assert (=> d!582449 (rulesValidInductive!1298 thiss!23328 (t!177030 rules!3198))))

(assert (=> d!582449 (= (maxPrefix!1879 thiss!23328 (t!177030 rules!3198) (++!5763 lt!727775 lt!727764)) lt!728275)))

(declare-fun b!1904513 () Bool)

(declare-fun res!850487 () Bool)

(declare-fun e!1216524 () Bool)

(assert (=> b!1904513 (=> (not res!850487) (not e!1216524))))

(assert (=> b!1904513 (= res!850487 (< (size!16921 (_2!11561 (get!6663 lt!728275))) (size!16921 (++!5763 lt!727775 lt!727764))))))

(declare-fun b!1904514 () Bool)

(declare-fun call!117314 () Option!4346)

(assert (=> b!1904514 (= e!1216523 call!117314)))

(declare-fun b!1904515 () Bool)

(declare-fun res!850488 () Bool)

(assert (=> b!1904515 (=> (not res!850488) (not e!1216524))))

(assert (=> b!1904515 (= res!850488 (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!728275)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728275))))))))

(declare-fun b!1904516 () Bool)

(declare-fun res!850483 () Bool)

(assert (=> b!1904516 (=> (not res!850483) (not e!1216524))))

(assert (=> b!1904516 (= res!850483 (= (value!120461 (_1!11561 (get!6663 lt!728275))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!728275)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!728275)))))))))

(declare-fun b!1904517 () Bool)

(declare-fun lt!728273 () Option!4346)

(declare-fun lt!728276 () Option!4346)

(assert (=> b!1904517 (= e!1216523 (ite (and ((_ is None!4345) lt!728273) ((_ is None!4345) lt!728276)) None!4345 (ite ((_ is None!4345) lt!728276) lt!728273 (ite ((_ is None!4345) lt!728273) lt!728276 (ite (>= (size!16918 (_1!11561 (v!26374 lt!728273))) (size!16918 (_1!11561 (v!26374 lt!728276)))) lt!728273 lt!728276)))))))

(assert (=> b!1904517 (= lt!728273 call!117314)))

(assert (=> b!1904517 (= lt!728276 (maxPrefix!1879 thiss!23328 (t!177030 (t!177030 rules!3198)) (++!5763 lt!727775 lt!727764)))))

(declare-fun bm!117309 () Bool)

(assert (=> bm!117309 (= call!117314 (maxPrefixOneRule!1201 thiss!23328 (h!26858 (t!177030 rules!3198)) (++!5763 lt!727775 lt!727764)))))

(declare-fun b!1904518 () Bool)

(declare-fun res!850485 () Bool)

(assert (=> b!1904518 (=> (not res!850485) (not e!1216524))))

(assert (=> b!1904518 (= res!850485 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728275)))) (_2!11561 (get!6663 lt!728275))) (++!5763 lt!727775 lt!727764)))))

(declare-fun b!1904519 () Bool)

(assert (=> b!1904519 (= e!1216522 e!1216524)))

(declare-fun res!850486 () Bool)

(assert (=> b!1904519 (=> (not res!850486) (not e!1216524))))

(assert (=> b!1904519 (= res!850486 (isDefined!3644 lt!728275))))

(declare-fun b!1904520 () Bool)

(declare-fun res!850484 () Bool)

(assert (=> b!1904520 (=> (not res!850484) (not e!1216524))))

(assert (=> b!1904520 (= res!850484 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728275)))) (originalCharacters!4627 (_1!11561 (get!6663 lt!728275)))))))

(declare-fun b!1904521 () Bool)

(assert (=> b!1904521 (= e!1216524 (contains!3847 (t!177030 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!728275)))))))

(assert (= (and d!582449 c!310283) b!1904514))

(assert (= (and d!582449 (not c!310283)) b!1904517))

(assert (= (or b!1904514 b!1904517) bm!117309))

(assert (= (and d!582449 (not res!850489)) b!1904519))

(assert (= (and b!1904519 res!850486) b!1904520))

(assert (= (and b!1904520 res!850484) b!1904513))

(assert (= (and b!1904513 res!850487) b!1904518))

(assert (= (and b!1904518 res!850485) b!1904516))

(assert (= (and b!1904516 res!850483) b!1904515))

(assert (= (and b!1904515 res!850488) b!1904521))

(declare-fun m!2336447 () Bool)

(assert (=> d!582449 m!2336447))

(assert (=> d!582449 m!2334169))

(assert (=> d!582449 m!2334169))

(assert (=> d!582449 m!2334791))

(assert (=> d!582449 m!2334169))

(assert (=> d!582449 m!2334169))

(assert (=> d!582449 m!2334793))

(declare-fun m!2336453 () Bool)

(assert (=> d!582449 m!2336453))

(declare-fun m!2336455 () Bool)

(assert (=> b!1904521 m!2336455))

(declare-fun m!2336457 () Bool)

(assert (=> b!1904521 m!2336457))

(assert (=> b!1904517 m!2334169))

(declare-fun m!2336459 () Bool)

(assert (=> b!1904517 m!2336459))

(assert (=> b!1904520 m!2336455))

(declare-fun m!2336461 () Bool)

(assert (=> b!1904520 m!2336461))

(assert (=> b!1904520 m!2336461))

(declare-fun m!2336463 () Bool)

(assert (=> b!1904520 m!2336463))

(assert (=> b!1904518 m!2336455))

(assert (=> b!1904518 m!2336461))

(assert (=> b!1904518 m!2336461))

(assert (=> b!1904518 m!2336463))

(assert (=> b!1904518 m!2336463))

(declare-fun m!2336465 () Bool)

(assert (=> b!1904518 m!2336465))

(assert (=> b!1904513 m!2336455))

(declare-fun m!2336467 () Bool)

(assert (=> b!1904513 m!2336467))

(assert (=> b!1904513 m!2334169))

(assert (=> b!1904513 m!2334809))

(assert (=> bm!117309 m!2334169))

(declare-fun m!2336469 () Bool)

(assert (=> bm!117309 m!2336469))

(assert (=> b!1904516 m!2336455))

(declare-fun m!2336471 () Bool)

(assert (=> b!1904516 m!2336471))

(assert (=> b!1904516 m!2336471))

(declare-fun m!2336473 () Bool)

(assert (=> b!1904516 m!2336473))

(assert (=> b!1904515 m!2336455))

(assert (=> b!1904515 m!2336461))

(assert (=> b!1904515 m!2336461))

(assert (=> b!1904515 m!2336463))

(assert (=> b!1904515 m!2336463))

(declare-fun m!2336475 () Bool)

(assert (=> b!1904515 m!2336475))

(declare-fun m!2336477 () Bool)

(assert (=> b!1904519 m!2336477))

(assert (=> b!1903437 d!582449))

(declare-fun bs!413755 () Bool)

(declare-fun d!582461 () Bool)

(assert (= bs!413755 (and d!582461 d!581803)))

(declare-fun lambda!74430 () Int)

(assert (=> bs!413755 (= (and (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (= lambda!74430 lambda!74398))))

(assert (=> d!582461 true))

(assert (=> d!582461 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) (dynLambda!10444 order!13559 lambda!74430))))

(assert (=> d!582461 true))

(assert (=> d!582461 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354)))) (dynLambda!10444 order!13559 lambda!74430))))

(assert (=> d!582461 (= (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354)))) (Forall!992 lambda!74430))))

(declare-fun bs!413756 () Bool)

(assert (= bs!413756 d!582461))

(declare-fun m!2336517 () Bool)

(assert (=> bs!413756 m!2336517))

(assert (=> d!581795 d!582461))

(assert (=> b!1903227 d!582421))

(assert (=> b!1903227 d!582115))

(assert (=> b!1903462 d!582147))

(declare-fun d!582469 () Bool)

(declare-fun lt!728285 () BalanceConc!14086)

(assert (=> d!582469 (= (list!8716 lt!728285) (printList!1024 thiss!23328 (list!8717 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))))))))

(assert (=> d!582469 (= lt!728285 (printTailRec!956 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) 0 (BalanceConc!14087 Empty!7135)))))

(assert (=> d!582469 (= (print!1449 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 tokens!598)))) lt!728285)))

(declare-fun bs!413757 () Bool)

(assert (= bs!413757 d!582469))

(declare-fun m!2336519 () Bool)

(assert (=> bs!413757 m!2336519))

(assert (=> bs!413757 m!2334699))

(declare-fun m!2336521 () Bool)

(assert (=> bs!413757 m!2336521))

(assert (=> bs!413757 m!2336521))

(declare-fun m!2336523 () Bool)

(assert (=> bs!413757 m!2336523))

(assert (=> bs!413757 m!2334699))

(assert (=> bs!413757 m!2334703))

(assert (=> b!1903389 d!582469))

(declare-fun d!582471 () Bool)

(declare-fun e!1216541 () Bool)

(assert (=> d!582471 e!1216541))

(declare-fun res!850506 () Bool)

(assert (=> d!582471 (=> (not res!850506) (not e!1216541))))

(declare-fun lt!728286 () BalanceConc!14090)

(assert (=> d!582471 (= res!850506 (= (list!8717 lt!728286) (Cons!21456 (h!26857 (t!177029 tokens!598)) Nil!21456)))))

(assert (=> d!582471 (= lt!728286 (singleton!830 (h!26857 (t!177029 tokens!598))))))

(assert (=> d!582471 (= (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) lt!728286)))

(declare-fun b!1904556 () Bool)

(assert (=> b!1904556 (= e!1216541 (isBalanced!2233 (c!310036 lt!728286)))))

(assert (= (and d!582471 res!850506) b!1904556))

(declare-fun m!2336525 () Bool)

(assert (=> d!582471 m!2336525))

(declare-fun m!2336527 () Bool)

(assert (=> d!582471 m!2336527))

(declare-fun m!2336529 () Bool)

(assert (=> b!1904556 m!2336529))

(assert (=> b!1903389 d!582471))

(declare-fun d!582473 () Bool)

(declare-fun lt!728303 () BalanceConc!14086)

(declare-fun printListTailRec!435 (LexerInterface!3433 List!21538 List!21537) List!21537)

(declare-fun dropList!766 (BalanceConc!14090 Int) List!21538)

(assert (=> d!582473 (= (list!8716 lt!728303) (printListTailRec!435 thiss!23328 (dropList!766 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) 0) (list!8716 (BalanceConc!14087 Empty!7135))))))

(declare-fun e!1216591 () BalanceConc!14086)

(assert (=> d!582473 (= lt!728303 e!1216591)))

(declare-fun c!310289 () Bool)

(assert (=> d!582473 (= c!310289 (>= 0 (size!16920 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))))))))

(declare-fun e!1216592 () Bool)

(assert (=> d!582473 e!1216592))

(declare-fun res!850510 () Bool)

(assert (=> d!582473 (=> (not res!850510) (not e!1216592))))

(assert (=> d!582473 (= res!850510 (>= 0 0))))

(assert (=> d!582473 (= (printTailRec!956 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) 0 (BalanceConc!14087 Empty!7135)) lt!728303)))

(declare-fun b!1904657 () Bool)

(assert (=> b!1904657 (= e!1216592 (<= 0 (size!16920 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))))))))

(declare-fun b!1904658 () Bool)

(assert (=> b!1904658 (= e!1216591 (BalanceConc!14087 Empty!7135))))

(declare-fun b!1904659 () Bool)

(declare-fun ++!5765 (BalanceConc!14086 BalanceConc!14086) BalanceConc!14086)

(assert (=> b!1904659 (= e!1216591 (printTailRec!956 thiss!23328 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) (+ 0 1) (++!5765 (BalanceConc!14087 Empty!7135) (charsOf!2376 (apply!5621 (singletonSeq!1847 (h!26857 (t!177029 tokens!598))) 0)))))))

(declare-fun lt!728307 () List!21538)

(assert (=> b!1904659 (= lt!728307 (list!8717 (singletonSeq!1847 (h!26857 (t!177029 tokens!598)))))))

(declare-fun lt!728304 () Unit!35776)

(declare-fun lemmaDropApply!690 (List!21538 Int) Unit!35776)

(assert (=> b!1904659 (= lt!728304 (lemmaDropApply!690 lt!728307 0))))

(declare-fun head!4420 (List!21538) Token!7192)

(declare-fun drop!1057 (List!21538 Int) List!21538)

(assert (=> b!1904659 (= (head!4420 (drop!1057 lt!728307 0)) (apply!5626 lt!728307 0))))

(declare-fun lt!728302 () Unit!35776)

(assert (=> b!1904659 (= lt!728302 lt!728304)))

(declare-fun lt!728301 () List!21538)

(assert (=> b!1904659 (= lt!728301 (list!8717 (singletonSeq!1847 (h!26857 (t!177029 tokens!598)))))))

(declare-fun lt!728305 () Unit!35776)

(declare-fun lemmaDropTail!666 (List!21538 Int) Unit!35776)

(assert (=> b!1904659 (= lt!728305 (lemmaDropTail!666 lt!728301 0))))

(declare-fun tail!2946 (List!21538) List!21538)

(assert (=> b!1904659 (= (tail!2946 (drop!1057 lt!728301 0)) (drop!1057 lt!728301 (+ 0 1)))))

(declare-fun lt!728306 () Unit!35776)

(assert (=> b!1904659 (= lt!728306 lt!728305)))

(assert (= (and d!582473 res!850510) b!1904657))

(assert (= (and d!582473 c!310289) b!1904658))

(assert (= (and d!582473 (not c!310289)) b!1904659))

(declare-fun m!2336561 () Bool)

(assert (=> d!582473 m!2336561))

(declare-fun m!2336563 () Bool)

(assert (=> d!582473 m!2336563))

(declare-fun m!2336565 () Bool)

(assert (=> d!582473 m!2336565))

(assert (=> d!582473 m!2334699))

(declare-fun m!2336567 () Bool)

(assert (=> d!582473 m!2336567))

(assert (=> d!582473 m!2334699))

(assert (=> d!582473 m!2336561))

(assert (=> d!582473 m!2336563))

(declare-fun m!2336569 () Bool)

(assert (=> d!582473 m!2336569))

(assert (=> b!1904657 m!2334699))

(assert (=> b!1904657 m!2336567))

(declare-fun m!2336571 () Bool)

(assert (=> b!1904659 m!2336571))

(declare-fun m!2336573 () Bool)

(assert (=> b!1904659 m!2336573))

(assert (=> b!1904659 m!2334699))

(declare-fun m!2336575 () Bool)

(assert (=> b!1904659 m!2336575))

(declare-fun m!2336577 () Bool)

(assert (=> b!1904659 m!2336577))

(declare-fun m!2336579 () Bool)

(assert (=> b!1904659 m!2336579))

(assert (=> b!1904659 m!2334699))

(assert (=> b!1904659 m!2336521))

(declare-fun m!2336581 () Bool)

(assert (=> b!1904659 m!2336581))

(declare-fun m!2336583 () Bool)

(assert (=> b!1904659 m!2336583))

(declare-fun m!2336585 () Bool)

(assert (=> b!1904659 m!2336585))

(declare-fun m!2336587 () Bool)

(assert (=> b!1904659 m!2336587))

(declare-fun m!2336589 () Bool)

(assert (=> b!1904659 m!2336589))

(declare-fun m!2336591 () Bool)

(assert (=> b!1904659 m!2336591))

(assert (=> b!1904659 m!2336589))

(declare-fun m!2336593 () Bool)

(assert (=> b!1904659 m!2336593))

(assert (=> b!1904659 m!2334699))

(assert (=> b!1904659 m!2336571))

(assert (=> b!1904659 m!2336583))

(assert (=> b!1904659 m!2336573))

(assert (=> b!1904659 m!2336575))

(assert (=> b!1903389 d!582473))

(declare-fun b!1904671 () Bool)

(declare-fun e!1216598 () Unit!35776)

(declare-fun Unit!35788 () Unit!35776)

(assert (=> b!1904671 (= e!1216598 Unit!35788)))

(declare-fun b!1904670 () Bool)

(declare-fun Unit!35789 () Unit!35776)

(assert (=> b!1904670 (= e!1216598 Unit!35789)))

(declare-fun lt!728344 () List!21537)

(assert (=> b!1904670 (= lt!728344 (++!5763 call!117202 lt!727901))))

(declare-fun lt!728358 () Unit!35776)

(declare-fun lt!728350 () Token!7192)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!367 (LexerInterface!3433 Rule!7440 List!21539 List!21537) Unit!35776)

(assert (=> b!1904670 (= lt!728358 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!367 thiss!23328 (rule!6013 lt!728350) rules!3198 lt!728344))))

(assert (=> b!1904670 (isEmpty!13169 (maxPrefixOneRule!1201 thiss!23328 (rule!6013 lt!728350) lt!728344))))

(declare-fun lt!728342 () Unit!35776)

(assert (=> b!1904670 (= lt!728342 lt!728358)))

(declare-fun lt!728343 () List!21537)

(assert (=> b!1904670 (= lt!728343 (list!8716 (charsOf!2376 lt!728350)))))

(declare-fun lt!728356 () Unit!35776)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!363 (LexerInterface!3433 Rule!7440 List!21537 List!21537) Unit!35776)

(assert (=> b!1904670 (= lt!728356 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!363 thiss!23328 (rule!6013 lt!728350) lt!728343 (++!5763 call!117202 lt!727901)))))

(assert (=> b!1904670 (not (matchR!2531 (regex!3820 (rule!6013 lt!728350)) lt!728343))))

(declare-fun lt!728348 () Unit!35776)

(assert (=> b!1904670 (= lt!728348 lt!728356)))

(assert (=> b!1904670 false))

(declare-fun d!582485 () Bool)

(assert (=> d!582485 (isDefined!3644 (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 call!117202 lt!727901)))))

(declare-fun lt!728353 () Unit!35776)

(assert (=> d!582485 (= lt!728353 e!1216598)))

(declare-fun c!310292 () Bool)

(assert (=> d!582485 (= c!310292 (isEmpty!13169 (maxPrefix!1879 thiss!23328 rules!3198 (++!5763 call!117202 lt!727901))))))

(declare-fun lt!728357 () Unit!35776)

(declare-fun lt!728347 () Unit!35776)

(assert (=> d!582485 (= lt!728357 lt!728347)))

(declare-fun e!1216597 () Bool)

(assert (=> d!582485 e!1216597))

(declare-fun res!850515 () Bool)

(assert (=> d!582485 (=> (not res!850515) (not e!1216597))))

(assert (=> d!582485 (= res!850515 (isDefined!3643 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 lt!728350)))))))

(assert (=> d!582485 (= lt!728347 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!663 thiss!23328 rules!3198 call!117202 lt!728350))))

(declare-fun lt!728351 () Unit!35776)

(declare-fun lt!728349 () Unit!35776)

(assert (=> d!582485 (= lt!728351 lt!728349)))

(declare-fun lt!728355 () List!21537)

(assert (=> d!582485 (isPrefix!1919 lt!728355 (++!5763 call!117202 lt!727901))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!359 (List!21537 List!21537 List!21537) Unit!35776)

(assert (=> d!582485 (= lt!728349 (lemmaPrefixStaysPrefixWhenAddingToSuffix!359 lt!728355 call!117202 lt!727901))))

(assert (=> d!582485 (= lt!728355 (list!8716 (charsOf!2376 lt!728350)))))

(declare-fun lt!728345 () Unit!35776)

(declare-fun lt!728352 () Unit!35776)

(assert (=> d!582485 (= lt!728345 lt!728352)))

(declare-fun lt!728346 () List!21537)

(declare-fun lt!728354 () List!21537)

(assert (=> d!582485 (isPrefix!1919 lt!728346 (++!5763 lt!728346 lt!728354))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1318 (List!21537 List!21537) Unit!35776)

(assert (=> d!582485 (= lt!728352 (lemmaConcatTwoListThenFirstIsPrefix!1318 lt!728346 lt!728354))))

(assert (=> d!582485 (= lt!728354 (_2!11561 (get!6663 (maxPrefix!1879 thiss!23328 rules!3198 call!117202))))))

(assert (=> d!582485 (= lt!728346 (list!8716 (charsOf!2376 lt!728350)))))

(assert (=> d!582485 (= lt!728350 (head!4420 (list!8717 (_1!11562 (lex!1519 thiss!23328 rules!3198 (seqFromList!2692 call!117202))))))))

(assert (=> d!582485 (not (isEmpty!13162 rules!3198))))

(assert (=> d!582485 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!718 thiss!23328 rules!3198 call!117202 lt!727901) lt!728353)))

(declare-fun b!1904669 () Bool)

(assert (=> b!1904669 (= e!1216597 (= (rule!6013 lt!728350) (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 lt!728350))))))))

(declare-fun b!1904668 () Bool)

(declare-fun res!850516 () Bool)

(assert (=> b!1904668 (=> (not res!850516) (not e!1216597))))

(assert (=> b!1904668 (= res!850516 (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 lt!728350))))) (list!8716 (charsOf!2376 lt!728350))))))

(assert (= (and d!582485 res!850515) b!1904668))

(assert (= (and b!1904668 res!850516) b!1904669))

(assert (= (and d!582485 c!310292) b!1904670))

(assert (= (and d!582485 (not c!310292)) b!1904671))

(declare-fun m!2336595 () Bool)

(assert (=> b!1904670 m!2336595))

(declare-fun m!2336597 () Bool)

(assert (=> b!1904670 m!2336597))

(declare-fun m!2336599 () Bool)

(assert (=> b!1904670 m!2336599))

(assert (=> b!1904670 m!2336595))

(assert (=> b!1904670 m!2336599))

(declare-fun m!2336601 () Bool)

(assert (=> b!1904670 m!2336601))

(declare-fun m!2336603 () Bool)

(assert (=> b!1904670 m!2336603))

(declare-fun m!2336605 () Bool)

(assert (=> b!1904670 m!2336605))

(declare-fun m!2336607 () Bool)

(assert (=> b!1904670 m!2336607))

(assert (=> b!1904670 m!2336603))

(declare-fun m!2336609 () Bool)

(assert (=> b!1904670 m!2336609))

(declare-fun m!2336611 () Bool)

(assert (=> d!582485 m!2336611))

(declare-fun m!2336613 () Bool)

(assert (=> d!582485 m!2336613))

(declare-fun m!2336615 () Bool)

(assert (=> d!582485 m!2336615))

(assert (=> d!582485 m!2336599))

(assert (=> d!582485 m!2336599))

(declare-fun m!2336617 () Bool)

(assert (=> d!582485 m!2336617))

(assert (=> d!582485 m!2336603))

(declare-fun m!2336619 () Bool)

(assert (=> d!582485 m!2336619))

(declare-fun m!2336621 () Bool)

(assert (=> d!582485 m!2336621))

(assert (=> d!582485 m!2336603))

(assert (=> d!582485 m!2336609))

(assert (=> d!582485 m!2336599))

(declare-fun m!2336623 () Bool)

(assert (=> d!582485 m!2336623))

(assert (=> d!582485 m!2334165))

(declare-fun m!2336625 () Bool)

(assert (=> d!582485 m!2336625))

(declare-fun m!2336627 () Bool)

(assert (=> d!582485 m!2336627))

(declare-fun m!2336629 () Bool)

(assert (=> d!582485 m!2336629))

(assert (=> d!582485 m!2336625))

(assert (=> d!582485 m!2336623))

(declare-fun m!2336631 () Bool)

(assert (=> d!582485 m!2336631))

(assert (=> d!582485 m!2336623))

(declare-fun m!2336633 () Bool)

(assert (=> d!582485 m!2336633))

(declare-fun m!2336635 () Bool)

(assert (=> d!582485 m!2336635))

(declare-fun m!2336637 () Bool)

(assert (=> d!582485 m!2336637))

(declare-fun m!2336639 () Bool)

(assert (=> d!582485 m!2336639))

(assert (=> d!582485 m!2336611))

(assert (=> d!582485 m!2336621))

(declare-fun m!2336641 () Bool)

(assert (=> d!582485 m!2336641))

(assert (=> d!582485 m!2336615))

(declare-fun m!2336643 () Bool)

(assert (=> d!582485 m!2336643))

(assert (=> d!582485 m!2336635))

(assert (=> b!1904669 m!2336621))

(assert (=> b!1904669 m!2336621))

(declare-fun m!2336645 () Bool)

(assert (=> b!1904669 m!2336645))

(assert (=> b!1904668 m!2336621))

(assert (=> b!1904668 m!2336603))

(assert (=> b!1904668 m!2336621))

(assert (=> b!1904668 m!2336645))

(assert (=> b!1904668 m!2336603))

(assert (=> b!1904668 m!2336609))

(assert (=> b!1904668 m!2336609))

(declare-fun m!2336647 () Bool)

(assert (=> b!1904668 m!2336647))

(assert (=> b!1903389 d!582485))

(declare-fun d!582487 () Bool)

(declare-fun res!850517 () Bool)

(declare-fun e!1216599 () Bool)

(assert (=> d!582487 (=> (not res!850517) (not e!1216599))))

(assert (=> d!582487 (= res!850517 (not (isEmpty!13167 (originalCharacters!4627 (h!26857 (t!177029 tokens!598))))))))

(assert (=> d!582487 (= (inv!28547 (h!26857 (t!177029 tokens!598))) e!1216599)))

(declare-fun b!1904672 () Bool)

(declare-fun res!850518 () Bool)

(assert (=> b!1904672 (=> (not res!850518) (not e!1216599))))

(assert (=> b!1904672 (= res!850518 (= (originalCharacters!4627 (h!26857 (t!177029 tokens!598))) (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (value!120461 (h!26857 (t!177029 tokens!598)))))))))

(declare-fun b!1904673 () Bool)

(assert (=> b!1904673 (= e!1216599 (= (size!16918 (h!26857 (t!177029 tokens!598))) (size!16921 (originalCharacters!4627 (h!26857 (t!177029 tokens!598))))))))

(assert (= (and d!582487 res!850517) b!1904672))

(assert (= (and b!1904672 res!850518) b!1904673))

(declare-fun b_lambda!62853 () Bool)

(assert (=> (not b_lambda!62853) (not b!1904672)))

(assert (=> b!1904672 t!177252))

(declare-fun b_and!147775 () Bool)

(assert (= b_and!147705 (and (=> t!177252 result!140552) b_and!147775)))

(assert (=> b!1904672 t!177248))

(declare-fun b_and!147777 () Bool)

(assert (= b_and!147701 (and (=> t!177248 result!140548) b_and!147777)))

(assert (=> b!1904672 t!177250))

(declare-fun b_and!147779 () Bool)

(assert (= b_and!147703 (and (=> t!177250 result!140550) b_and!147779)))

(assert (=> b!1904672 t!177254))

(declare-fun b_and!147781 () Bool)

(assert (= b_and!147707 (and (=> t!177254 result!140554) b_and!147781)))

(assert (=> b!1904672 t!177256))

(declare-fun b_and!147783 () Bool)

(assert (= b_and!147709 (and (=> t!177256 result!140556) b_and!147783)))

(declare-fun m!2336649 () Bool)

(assert (=> d!582487 m!2336649))

(assert (=> b!1904672 m!2336201))

(assert (=> b!1904672 m!2336201))

(declare-fun m!2336651 () Bool)

(assert (=> b!1904672 m!2336651))

(declare-fun m!2336653 () Bool)

(assert (=> b!1904673 m!2336653))

(assert (=> b!1903561 d!582487))

(declare-fun d!582489 () Bool)

(assert (=> d!582489 (= (isEmpty!13169 lt!727923) (not ((_ is Some!4345) lt!727923)))))

(assert (=> d!581851 d!582489))

(declare-fun d!582491 () Bool)

(declare-fun e!1216607 () Bool)

(assert (=> d!582491 e!1216607))

(declare-fun res!850529 () Bool)

(assert (=> d!582491 (=> res!850529 e!1216607)))

(declare-fun lt!728361 () Bool)

(assert (=> d!582491 (= res!850529 (not lt!728361))))

(declare-fun e!1216606 () Bool)

(assert (=> d!582491 (= lt!728361 e!1216606)))

(declare-fun res!850527 () Bool)

(assert (=> d!582491 (=> res!850527 e!1216606)))

(assert (=> d!582491 (= res!850527 ((_ is Nil!21455) lt!727775))))

(assert (=> d!582491 (= (isPrefix!1919 lt!727775 lt!727775) lt!728361)))

(declare-fun b!1904683 () Bool)

(declare-fun res!850530 () Bool)

(declare-fun e!1216608 () Bool)

(assert (=> b!1904683 (=> (not res!850530) (not e!1216608))))

(assert (=> b!1904683 (= res!850530 (= (head!4418 lt!727775) (head!4418 lt!727775)))))

(declare-fun b!1904682 () Bool)

(assert (=> b!1904682 (= e!1216606 e!1216608)))

(declare-fun res!850528 () Bool)

(assert (=> b!1904682 (=> (not res!850528) (not e!1216608))))

(assert (=> b!1904682 (= res!850528 (not ((_ is Nil!21455) lt!727775)))))

(declare-fun b!1904684 () Bool)

(assert (=> b!1904684 (= e!1216608 (isPrefix!1919 (tail!2944 lt!727775) (tail!2944 lt!727775)))))

(declare-fun b!1904685 () Bool)

(assert (=> b!1904685 (= e!1216607 (>= (size!16921 lt!727775) (size!16921 lt!727775)))))

(assert (= (and d!582491 (not res!850527)) b!1904682))

(assert (= (and b!1904682 res!850528) b!1904683))

(assert (= (and b!1904683 res!850530) b!1904684))

(assert (= (and d!582491 (not res!850529)) b!1904685))

(assert (=> b!1904683 m!2334539))

(assert (=> b!1904683 m!2334539))

(assert (=> b!1904684 m!2334533))

(assert (=> b!1904684 m!2334533))

(assert (=> b!1904684 m!2334533))

(assert (=> b!1904684 m!2334533))

(declare-fun m!2336655 () Bool)

(assert (=> b!1904684 m!2336655))

(assert (=> b!1904685 m!2334767))

(assert (=> b!1904685 m!2334767))

(assert (=> d!581851 d!582491))

(declare-fun d!582493 () Bool)

(assert (=> d!582493 (isPrefix!1919 lt!727775 lt!727775)))

(declare-fun lt!728364 () Unit!35776)

(declare-fun choose!11861 (List!21537 List!21537) Unit!35776)

(assert (=> d!582493 (= lt!728364 (choose!11861 lt!727775 lt!727775))))

(assert (=> d!582493 (= (lemmaIsPrefixRefl!1237 lt!727775 lt!727775) lt!728364)))

(declare-fun bs!413763 () Bool)

(assert (= bs!413763 d!582493))

(assert (=> bs!413763 m!2334747))

(declare-fun m!2336657 () Bool)

(assert (=> bs!413763 m!2336657))

(assert (=> d!581851 d!582493))

(declare-fun bs!413764 () Bool)

(declare-fun d!582495 () Bool)

(assert (= bs!413764 (and d!582495 d!582367)))

(declare-fun lambda!74433 () Int)

(assert (=> bs!413764 (= lambda!74433 lambda!74424)))

(assert (=> d!582495 true))

(declare-fun lt!728367 () Bool)

(assert (=> d!582495 (= lt!728367 (forall!4506 rules!3198 lambda!74433))))

(declare-fun e!1216614 () Bool)

(assert (=> d!582495 (= lt!728367 e!1216614)))

(declare-fun res!850535 () Bool)

(assert (=> d!582495 (=> res!850535 e!1216614)))

(assert (=> d!582495 (= res!850535 (not ((_ is Cons!21457) rules!3198)))))

(assert (=> d!582495 (= (rulesValidInductive!1298 thiss!23328 rules!3198) lt!728367)))

(declare-fun b!1904690 () Bool)

(declare-fun e!1216613 () Bool)

(assert (=> b!1904690 (= e!1216614 e!1216613)))

(declare-fun res!850536 () Bool)

(assert (=> b!1904690 (=> (not res!850536) (not e!1216613))))

(assert (=> b!1904690 (= res!850536 (ruleValid!1155 thiss!23328 (h!26858 rules!3198)))))

(declare-fun b!1904691 () Bool)

(assert (=> b!1904691 (= e!1216613 (rulesValidInductive!1298 thiss!23328 (t!177030 rules!3198)))))

(assert (= (and d!582495 (not res!850535)) b!1904690))

(assert (= (and b!1904690 res!850536) b!1904691))

(declare-fun m!2336659 () Bool)

(assert (=> d!582495 m!2336659))

(assert (=> b!1904690 m!2335963))

(assert (=> b!1904691 m!2336453))

(assert (=> d!581851 d!582495))

(declare-fun c!310293 () Bool)

(declare-fun b!1904692 () Bool)

(assert (=> b!1904692 (= c!310293 ((_ is Star!5245) (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))

(declare-fun e!1216617 () List!21537)

(declare-fun e!1216618 () List!21537)

(assert (=> b!1904692 (= e!1216617 e!1216618)))

(declare-fun call!117321 () List!21537)

(declare-fun bm!117314 () Bool)

(declare-fun c!310296 () Bool)

(assert (=> bm!117314 (= call!117321 (usedCharacters!328 (ite c!310296 (regTwo!11003 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))) (regOne!11002 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))))

(declare-fun call!117319 () List!21537)

(declare-fun bm!117315 () Bool)

(assert (=> bm!117315 (= call!117319 (usedCharacters!328 (ite c!310293 (reg!5574 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))) (ite c!310296 (regOne!11003 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))) (regTwo!11002 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354))))))))))))

(declare-fun call!117322 () List!21537)

(declare-fun bm!117316 () Bool)

(declare-fun call!117320 () List!21537)

(assert (=> bm!117316 (= call!117322 (++!5763 (ite c!310296 call!117320 call!117321) (ite c!310296 call!117321 call!117320)))))

(declare-fun b!1904694 () Bool)

(assert (=> b!1904694 (= e!1216617 (Cons!21455 (c!309905 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))) Nil!21455))))

(declare-fun b!1904695 () Bool)

(declare-fun e!1216615 () List!21537)

(assert (=> b!1904695 (= e!1216615 call!117322)))

(declare-fun b!1904696 () Bool)

(assert (=> b!1904696 (= e!1216618 call!117319)))

(declare-fun b!1904693 () Bool)

(assert (=> b!1904693 (= e!1216618 e!1216615)))

(assert (=> b!1904693 (= c!310296 ((_ is Union!5245) (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))

(declare-fun c!310294 () Bool)

(declare-fun d!582497 () Bool)

(assert (=> d!582497 (= c!310294 (or ((_ is EmptyExpr!5245) (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))) ((_ is EmptyLang!5245) (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354))))))))))

(declare-fun e!1216616 () List!21537)

(assert (=> d!582497 (= (usedCharacters!328 (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))) e!1216616)))

(declare-fun bm!117317 () Bool)

(assert (=> bm!117317 (= call!117320 call!117319)))

(declare-fun b!1904697 () Bool)

(assert (=> b!1904697 (= e!1216615 call!117322)))

(declare-fun b!1904698 () Bool)

(assert (=> b!1904698 (= e!1216616 Nil!21455)))

(declare-fun b!1904699 () Bool)

(assert (=> b!1904699 (= e!1216616 e!1216617)))

(declare-fun c!310295 () Bool)

(assert (=> b!1904699 (= c!310295 ((_ is ElementMatch!5245) (ite c!310025 (reg!5574 (regex!3820 (rule!6013 separatorToken!354))) (ite c!310028 (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))

(assert (= (and d!582497 c!310294) b!1904698))

(assert (= (and d!582497 (not c!310294)) b!1904699))

(assert (= (and b!1904699 c!310295) b!1904694))

(assert (= (and b!1904699 (not c!310295)) b!1904692))

(assert (= (and b!1904692 c!310293) b!1904696))

(assert (= (and b!1904692 (not c!310293)) b!1904693))

(assert (= (and b!1904693 c!310296) b!1904697))

(assert (= (and b!1904693 (not c!310296)) b!1904695))

(assert (= (or b!1904697 b!1904695) bm!117317))

(assert (= (or b!1904697 b!1904695) bm!117314))

(assert (= (or b!1904697 b!1904695) bm!117316))

(assert (= (or b!1904696 bm!117317) bm!117315))

(declare-fun m!2336661 () Bool)

(assert (=> bm!117314 m!2336661))

(declare-fun m!2336663 () Bool)

(assert (=> bm!117315 m!2336663))

(declare-fun m!2336665 () Bool)

(assert (=> bm!117316 m!2336665))

(assert (=> bm!117215 d!582497))

(assert (=> b!1903440 d!582129))

(assert (=> b!1903440 d!582135))

(assert (=> b!1903440 d!582127))

(declare-fun d!582499 () Bool)

(assert (=> d!582499 (= (list!8716 (ite c!310000 call!117206 call!117205)) (list!8720 (c!309906 (ite c!310000 call!117206 call!117205))))))

(declare-fun bs!413765 () Bool)

(assert (= bs!413765 d!582499))

(declare-fun m!2336667 () Bool)

(assert (=> bs!413765 m!2336667))

(assert (=> bm!117201 d!582499))

(declare-fun b!1904700 () Bool)

(declare-fun e!1216622 () Bool)

(declare-fun lt!728370 () Option!4346)

(assert (=> b!1904700 (= e!1216622 (= (size!16918 (_1!11561 (get!6663 lt!728370))) (size!16921 (originalCharacters!4627 (_1!11561 (get!6663 lt!728370))))))))

(declare-fun b!1904701 () Bool)

(declare-fun e!1216620 () Bool)

(assert (=> b!1904701 (= e!1216620 e!1216622)))

(declare-fun res!850537 () Bool)

(assert (=> b!1904701 (=> (not res!850537) (not e!1216622))))

(assert (=> b!1904701 (= res!850537 (matchR!2531 (regex!3820 (h!26858 rules!3198)) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728370))))))))

(declare-fun b!1904702 () Bool)

(declare-fun e!1216621 () Option!4346)

(declare-fun lt!728369 () tuple2!20194)

(assert (=> b!1904702 (= e!1216621 (Some!4345 (tuple2!20185 (Token!7193 (apply!5624 (transformation!3820 (h!26858 rules!3198)) (seqFromList!2692 (_1!11566 lt!728369))) (h!26858 rules!3198) (size!16924 (seqFromList!2692 (_1!11566 lt!728369))) (_1!11566 lt!728369)) (_2!11566 lt!728369))))))

(declare-fun lt!728368 () Unit!35776)

(assert (=> b!1904702 (= lt!728368 (longestMatchIsAcceptedByMatchOrIsEmpty!510 (regex!3820 (h!26858 rules!3198)) lt!727775))))

(declare-fun res!850541 () Bool)

(assert (=> b!1904702 (= res!850541 (isEmpty!13167 (_1!11566 (findLongestMatchInner!526 (regex!3820 (h!26858 rules!3198)) Nil!21455 (size!16921 Nil!21455) lt!727775 lt!727775 (size!16921 lt!727775)))))))

(declare-fun e!1216619 () Bool)

(assert (=> b!1904702 (=> res!850541 e!1216619)))

(assert (=> b!1904702 e!1216619))

(declare-fun lt!728371 () Unit!35776)

(assert (=> b!1904702 (= lt!728371 lt!728368)))

(declare-fun lt!728372 () Unit!35776)

(assert (=> b!1904702 (= lt!728372 (lemmaSemiInverse!799 (transformation!3820 (h!26858 rules!3198)) (seqFromList!2692 (_1!11566 lt!728369))))))

(declare-fun b!1904703 () Bool)

(assert (=> b!1904703 (= e!1216621 None!4345)))

(declare-fun b!1904704 () Bool)

(declare-fun res!850540 () Bool)

(assert (=> b!1904704 (=> (not res!850540) (not e!1216622))))

(assert (=> b!1904704 (= res!850540 (= (rule!6013 (_1!11561 (get!6663 lt!728370))) (h!26858 rules!3198)))))

(declare-fun b!1904705 () Bool)

(declare-fun res!850539 () Bool)

(assert (=> b!1904705 (=> (not res!850539) (not e!1216622))))

(assert (=> b!1904705 (= res!850539 (< (size!16921 (_2!11561 (get!6663 lt!728370))) (size!16921 lt!727775)))))

(declare-fun b!1904706 () Bool)

(declare-fun res!850538 () Bool)

(assert (=> b!1904706 (=> (not res!850538) (not e!1216622))))

(assert (=> b!1904706 (= res!850538 (= (value!120461 (_1!11561 (get!6663 lt!728370))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!728370)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!728370)))))))))

(declare-fun d!582501 () Bool)

(assert (=> d!582501 e!1216620))

(declare-fun res!850543 () Bool)

(assert (=> d!582501 (=> res!850543 e!1216620)))

(assert (=> d!582501 (= res!850543 (isEmpty!13169 lt!728370))))

(assert (=> d!582501 (= lt!728370 e!1216621)))

(declare-fun c!310297 () Bool)

(assert (=> d!582501 (= c!310297 (isEmpty!13167 (_1!11566 lt!728369)))))

(assert (=> d!582501 (= lt!728369 (findLongestMatch!453 (regex!3820 (h!26858 rules!3198)) lt!727775))))

(assert (=> d!582501 (ruleValid!1155 thiss!23328 (h!26858 rules!3198))))

(assert (=> d!582501 (= (maxPrefixOneRule!1201 thiss!23328 (h!26858 rules!3198) lt!727775) lt!728370)))

(declare-fun b!1904707 () Bool)

(assert (=> b!1904707 (= e!1216619 (matchR!2531 (regex!3820 (h!26858 rules!3198)) (_1!11566 (findLongestMatchInner!526 (regex!3820 (h!26858 rules!3198)) Nil!21455 (size!16921 Nil!21455) lt!727775 lt!727775 (size!16921 lt!727775)))))))

(declare-fun b!1904708 () Bool)

(declare-fun res!850542 () Bool)

(assert (=> b!1904708 (=> (not res!850542) (not e!1216622))))

(assert (=> b!1904708 (= res!850542 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728370)))) (_2!11561 (get!6663 lt!728370))) lt!727775))))

(assert (= (and d!582501 c!310297) b!1904703))

(assert (= (and d!582501 (not c!310297)) b!1904702))

(assert (= (and b!1904702 (not res!850541)) b!1904707))

(assert (= (and d!582501 (not res!850543)) b!1904701))

(assert (= (and b!1904701 res!850537) b!1904708))

(assert (= (and b!1904708 res!850542) b!1904705))

(assert (= (and b!1904705 res!850539) b!1904704))

(assert (= (and b!1904704 res!850540) b!1904706))

(assert (= (and b!1904706 res!850538) b!1904700))

(declare-fun m!2336669 () Bool)

(assert (=> b!1904700 m!2336669))

(declare-fun m!2336671 () Bool)

(assert (=> b!1904700 m!2336671))

(assert (=> b!1904704 m!2336669))

(assert (=> b!1904706 m!2336669))

(declare-fun m!2336673 () Bool)

(assert (=> b!1904706 m!2336673))

(assert (=> b!1904706 m!2336673))

(declare-fun m!2336675 () Bool)

(assert (=> b!1904706 m!2336675))

(assert (=> b!1904707 m!2335891))

(assert (=> b!1904707 m!2334767))

(assert (=> b!1904707 m!2335891))

(assert (=> b!1904707 m!2334767))

(declare-fun m!2336677 () Bool)

(assert (=> b!1904707 m!2336677))

(declare-fun m!2336679 () Bool)

(assert (=> b!1904707 m!2336679))

(assert (=> b!1904708 m!2336669))

(declare-fun m!2336681 () Bool)

(assert (=> b!1904708 m!2336681))

(assert (=> b!1904708 m!2336681))

(declare-fun m!2336683 () Bool)

(assert (=> b!1904708 m!2336683))

(assert (=> b!1904708 m!2336683))

(declare-fun m!2336685 () Bool)

(assert (=> b!1904708 m!2336685))

(assert (=> b!1904702 m!2334767))

(declare-fun m!2336687 () Bool)

(assert (=> b!1904702 m!2336687))

(declare-fun m!2336689 () Bool)

(assert (=> b!1904702 m!2336689))

(declare-fun m!2336691 () Bool)

(assert (=> b!1904702 m!2336691))

(assert (=> b!1904702 m!2336689))

(assert (=> b!1904702 m!2335891))

(assert (=> b!1904702 m!2334767))

(assert (=> b!1904702 m!2336677))

(declare-fun m!2336693 () Bool)

(assert (=> b!1904702 m!2336693))

(assert (=> b!1904702 m!2336689))

(declare-fun m!2336695 () Bool)

(assert (=> b!1904702 m!2336695))

(assert (=> b!1904702 m!2335891))

(assert (=> b!1904702 m!2336689))

(declare-fun m!2336697 () Bool)

(assert (=> b!1904702 m!2336697))

(assert (=> b!1904705 m!2336669))

(declare-fun m!2336699 () Bool)

(assert (=> b!1904705 m!2336699))

(assert (=> b!1904705 m!2334767))

(assert (=> b!1904701 m!2336669))

(assert (=> b!1904701 m!2336681))

(assert (=> b!1904701 m!2336681))

(assert (=> b!1904701 m!2336683))

(assert (=> b!1904701 m!2336683))

(declare-fun m!2336701 () Bool)

(assert (=> b!1904701 m!2336701))

(declare-fun m!2336703 () Bool)

(assert (=> d!582501 m!2336703))

(declare-fun m!2336705 () Bool)

(assert (=> d!582501 m!2336705))

(declare-fun m!2336707 () Bool)

(assert (=> d!582501 m!2336707))

(assert (=> d!582501 m!2335963))

(assert (=> bm!117204 d!582501))

(assert (=> bm!117173 d!582397))

(declare-fun d!582503 () Bool)

(declare-fun e!1216624 () Bool)

(assert (=> d!582503 e!1216624))

(declare-fun res!850544 () Bool)

(assert (=> d!582503 (=> (not res!850544) (not e!1216624))))

(declare-fun lt!728373 () List!21537)

(assert (=> d!582503 (= res!850544 (= (content!3139 lt!728373) ((_ map or) (content!3139 (t!177028 (++!5763 lt!727775 lt!727773))) (content!3139 lt!727764))))))

(declare-fun e!1216623 () List!21537)

(assert (=> d!582503 (= lt!728373 e!1216623)))

(declare-fun c!310298 () Bool)

(assert (=> d!582503 (= c!310298 ((_ is Nil!21455) (t!177028 (++!5763 lt!727775 lt!727773))))))

(assert (=> d!582503 (= (++!5763 (t!177028 (++!5763 lt!727775 lt!727773)) lt!727764) lt!728373)))

(declare-fun b!1904710 () Bool)

(assert (=> b!1904710 (= e!1216623 (Cons!21455 (h!26856 (t!177028 (++!5763 lt!727775 lt!727773))) (++!5763 (t!177028 (t!177028 (++!5763 lt!727775 lt!727773))) lt!727764)))))

(declare-fun b!1904711 () Bool)

(declare-fun res!850545 () Bool)

(assert (=> b!1904711 (=> (not res!850545) (not e!1216624))))

(assert (=> b!1904711 (= res!850545 (= (size!16921 lt!728373) (+ (size!16921 (t!177028 (++!5763 lt!727775 lt!727773))) (size!16921 lt!727764))))))

(declare-fun b!1904709 () Bool)

(assert (=> b!1904709 (= e!1216623 lt!727764)))

(declare-fun b!1904712 () Bool)

(assert (=> b!1904712 (= e!1216624 (or (not (= lt!727764 Nil!21455)) (= lt!728373 (t!177028 (++!5763 lt!727775 lt!727773)))))))

(assert (= (and d!582503 c!310298) b!1904709))

(assert (= (and d!582503 (not c!310298)) b!1904710))

(assert (= (and d!582503 res!850544) b!1904711))

(assert (= (and b!1904711 res!850545) b!1904712))

(declare-fun m!2336709 () Bool)

(assert (=> d!582503 m!2336709))

(assert (=> d!582503 m!2336435))

(assert (=> d!582503 m!2334851))

(declare-fun m!2336711 () Bool)

(assert (=> b!1904710 m!2336711))

(declare-fun m!2336713 () Bool)

(assert (=> b!1904711 m!2336713))

(assert (=> b!1904711 m!2336333))

(assert (=> b!1904711 m!2334857))

(assert (=> b!1903507 d!582503))

(declare-fun lt!728376 () Bool)

(declare-fun d!582505 () Bool)

(assert (=> d!582505 (= lt!728376 (isEmpty!13167 (list!8716 (_2!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)))))))))

(declare-fun isEmpty!13174 (Conc!7135) Bool)

(assert (=> d!582505 (= lt!728376 (isEmpty!13174 (c!309906 (_2!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354)))))))))

(assert (=> d!582505 (= (isEmpty!13165 (_2!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 separatorToken!354))))) lt!728376)))

(declare-fun bs!413766 () Bool)

(assert (= bs!413766 d!582505))

(declare-fun m!2336715 () Bool)

(assert (=> bs!413766 m!2336715))

(assert (=> bs!413766 m!2336715))

(declare-fun m!2336717 () Bool)

(assert (=> bs!413766 m!2336717))

(declare-fun m!2336719 () Bool)

(assert (=> bs!413766 m!2336719))

(assert (=> b!1902942 d!582505))

(assert (=> b!1902942 d!581973))

(assert (=> b!1902942 d!581967))

(assert (=> b!1902942 d!581965))

(declare-fun d!582507 () Bool)

(assert (=> d!582507 (= (inv!28543 (tag!4248 (h!26858 (t!177030 rules!3198)))) (= (mod (str.len (value!120460 (tag!4248 (h!26858 (t!177030 rules!3198))))) 2) 0))))

(assert (=> b!1903549 d!582507))

(declare-fun d!582509 () Bool)

(declare-fun res!850546 () Bool)

(declare-fun e!1216625 () Bool)

(assert (=> d!582509 (=> (not res!850546) (not e!1216625))))

(assert (=> d!582509 (= res!850546 (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198))))))))

(assert (=> d!582509 (= (inv!28546 (transformation!3820 (h!26858 (t!177030 rules!3198)))) e!1216625)))

(declare-fun b!1904713 () Bool)

(assert (=> b!1904713 (= e!1216625 (equivClasses!1468 (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198))))))))

(assert (= (and d!582509 res!850546) b!1904713))

(declare-fun m!2336721 () Bool)

(assert (=> d!582509 m!2336721))

(declare-fun m!2336723 () Bool)

(assert (=> b!1904713 m!2336723))

(assert (=> b!1903549 d!582509))

(declare-fun d!582511 () Bool)

(declare-fun lt!728377 () Int)

(assert (=> d!582511 (>= lt!728377 0)))

(declare-fun e!1216626 () Int)

(assert (=> d!582511 (= lt!728377 e!1216626)))

(declare-fun c!310299 () Bool)

(assert (=> d!582511 (= c!310299 ((_ is Nil!21455) lt!727948))))

(assert (=> d!582511 (= (size!16921 lt!727948) lt!728377)))

(declare-fun b!1904714 () Bool)

(assert (=> b!1904714 (= e!1216626 0)))

(declare-fun b!1904715 () Bool)

(assert (=> b!1904715 (= e!1216626 (+ 1 (size!16921 (t!177028 lt!727948))))))

(assert (= (and d!582511 c!310299) b!1904714))

(assert (= (and d!582511 (not c!310299)) b!1904715))

(declare-fun m!2336725 () Bool)

(assert (=> b!1904715 m!2336725))

(assert (=> b!1903504 d!582511))

(declare-fun d!582513 () Bool)

(declare-fun lt!728378 () Int)

(assert (=> d!582513 (>= lt!728378 0)))

(declare-fun e!1216627 () Int)

(assert (=> d!582513 (= lt!728378 e!1216627)))

(declare-fun c!310300 () Bool)

(assert (=> d!582513 (= c!310300 ((_ is Nil!21455) lt!727773))))

(assert (=> d!582513 (= (size!16921 lt!727773) lt!728378)))

(declare-fun b!1904716 () Bool)

(assert (=> b!1904716 (= e!1216627 0)))

(declare-fun b!1904717 () Bool)

(assert (=> b!1904717 (= e!1216627 (+ 1 (size!16921 (t!177028 lt!727773))))))

(assert (= (and d!582513 c!310300) b!1904716))

(assert (= (and d!582513 (not c!310300)) b!1904717))

(declare-fun m!2336727 () Bool)

(assert (=> b!1904717 m!2336727))

(assert (=> b!1903504 d!582513))

(assert (=> b!1903504 d!582227))

(declare-fun d!582515 () Bool)

(assert (=> d!582515 (= (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))) (v!26373 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))

(assert (=> b!1903432 d!582515))

(assert (=> b!1903432 d!581865))

(declare-fun d!582517 () Bool)

(declare-fun lt!728379 () Bool)

(assert (=> d!582517 (= lt!728379 (select (content!3141 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!727923)))))))

(declare-fun e!1216628 () Bool)

(assert (=> d!582517 (= lt!728379 e!1216628)))

(declare-fun res!850547 () Bool)

(assert (=> d!582517 (=> (not res!850547) (not e!1216628))))

(assert (=> d!582517 (= res!850547 ((_ is Cons!21457) rules!3198))))

(assert (=> d!582517 (= (contains!3847 rules!3198 (rule!6013 (_1!11561 (get!6663 lt!727923)))) lt!728379)))

(declare-fun b!1904718 () Bool)

(declare-fun e!1216629 () Bool)

(assert (=> b!1904718 (= e!1216628 e!1216629)))

(declare-fun res!850548 () Bool)

(assert (=> b!1904718 (=> res!850548 e!1216629)))

(assert (=> b!1904718 (= res!850548 (= (h!26858 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!727923)))))))

(declare-fun b!1904719 () Bool)

(assert (=> b!1904719 (= e!1216629 (contains!3847 (t!177030 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!727923)))))))

(assert (= (and d!582517 res!850547) b!1904718))

(assert (= (and b!1904718 (not res!850548)) b!1904719))

(assert (=> d!582517 m!2335513))

(declare-fun m!2336729 () Bool)

(assert (=> d!582517 m!2336729))

(declare-fun m!2336731 () Bool)

(assert (=> b!1904719 m!2336731))

(assert (=> b!1903430 d!582517))

(assert (=> b!1903430 d!582203))

(declare-fun bs!413767 () Bool)

(declare-fun d!582519 () Bool)

(assert (= bs!413767 (and d!582519 d!581803)))

(declare-fun lambda!74434 () Int)

(assert (=> bs!413767 (= (and (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))))) (= lambda!74434 lambda!74398))))

(declare-fun bs!413768 () Bool)

(assert (= bs!413768 (and d!582519 d!582461)))

(assert (=> bs!413768 (= (and (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))))) (= lambda!74434 lambda!74430))))

(assert (=> d!582519 true))

(assert (=> d!582519 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10444 order!13559 lambda!74434))))

(assert (=> d!582519 true))

(assert (=> d!582519 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (dynLambda!10444 order!13559 lambda!74434))))

(assert (=> d!582519 (= (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (Forall!992 lambda!74434))))

(declare-fun bs!413769 () Bool)

(assert (= bs!413769 d!582519))

(declare-fun m!2336733 () Bool)

(assert (=> bs!413769 m!2336733))

(assert (=> d!581887 d!582519))

(declare-fun d!582521 () Bool)

(assert (=> d!582521 (= (isEmpty!13167 (tail!2944 lt!727775)) ((_ is Nil!21455) (tail!2944 lt!727775)))))

(assert (=> b!1903204 d!582521))

(assert (=> b!1903204 d!582287))

(declare-fun b!1904720 () Bool)

(declare-fun e!1216632 () Bool)

(assert (=> b!1904720 (= e!1216632 (inv!15 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))

(declare-fun b!1904721 () Bool)

(declare-fun e!1216631 () Bool)

(assert (=> b!1904721 (= e!1216631 (inv!17 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))

(declare-fun b!1904722 () Bool)

(declare-fun res!850549 () Bool)

(assert (=> b!1904722 (=> res!850549 e!1216632)))

(assert (=> b!1904722 (= res!850549 (not ((_ is IntegerValue!11870) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))))

(assert (=> b!1904722 (= e!1216631 e!1216632)))

(declare-fun d!582523 () Bool)

(declare-fun c!310302 () Bool)

(assert (=> d!582523 (= c!310302 ((_ is IntegerValue!11868) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))

(declare-fun e!1216630 () Bool)

(assert (=> d!582523 (= (inv!21 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)) e!1216630)))

(declare-fun b!1904723 () Bool)

(assert (=> b!1904723 (= e!1216630 e!1216631)))

(declare-fun c!310301 () Bool)

(assert (=> b!1904723 (= c!310301 ((_ is IntegerValue!11869) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))

(declare-fun b!1904724 () Bool)

(assert (=> b!1904724 (= e!1216630 (inv!16 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))))

(assert (= (and d!582523 c!310302) b!1904724))

(assert (= (and d!582523 (not c!310302)) b!1904723))

(assert (= (and b!1904723 c!310301) b!1904721))

(assert (= (and b!1904723 (not c!310301)) b!1904722))

(assert (= (and b!1904722 (not res!850549)) b!1904720))

(declare-fun m!2336735 () Bool)

(assert (=> b!1904720 m!2336735))

(declare-fun m!2336737 () Bool)

(assert (=> b!1904721 m!2336737))

(declare-fun m!2336739 () Bool)

(assert (=> b!1904724 m!2336739))

(assert (=> tb!116085 d!582523))

(declare-fun bs!413770 () Bool)

(declare-fun d!582525 () Bool)

(assert (= bs!413770 (and d!582525 d!581803)))

(declare-fun lambda!74435 () Int)

(assert (=> bs!413770 (= lambda!74435 lambda!74398)))

(declare-fun bs!413771 () Bool)

(assert (= bs!413771 (and d!582525 d!582461)))

(assert (=> bs!413771 (= (and (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))))) (= lambda!74435 lambda!74430))))

(declare-fun bs!413772 () Bool)

(assert (= bs!413772 (and d!582525 d!582519)))

(assert (=> bs!413772 (= (and (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (h!26858 rules!3198)))) (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (h!26858 rules!3198))))) (= lambda!74435 lambda!74434))))

(assert (=> d!582525 true))

(assert (=> d!582525 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10444 order!13559 lambda!74435))))

(assert (=> d!582525 true))

(assert (=> d!582525 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10444 order!13559 lambda!74435))))

(assert (=> d!582525 (= (semiInverseModEq!1541 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (Forall!992 lambda!74435))))

(declare-fun bs!413773 () Bool)

(assert (= bs!413773 d!582525))

(declare-fun m!2336741 () Bool)

(assert (=> bs!413773 m!2336741))

(assert (=> d!581729 d!582525))

(declare-fun d!582527 () Bool)

(declare-fun lt!728380 () Bool)

(declare-fun e!1216633 () Bool)

(assert (=> d!582527 (= lt!728380 e!1216633)))

(declare-fun res!850550 () Bool)

(assert (=> d!582527 (=> (not res!850550) (not e!1216633))))

(assert (=> d!582527 (= res!850550 (= (list!8717 (_1!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 (h!26857 tokens!598)))))) (list!8717 (singletonSeq!1847 (h!26857 tokens!598)))))))

(declare-fun e!1216634 () Bool)

(assert (=> d!582527 (= lt!728380 e!1216634)))

(declare-fun res!850551 () Bool)

(assert (=> d!582527 (=> (not res!850551) (not e!1216634))))

(declare-fun lt!728381 () tuple2!20186)

(assert (=> d!582527 (= res!850551 (= (size!16920 (_1!11562 lt!728381)) 1))))

(assert (=> d!582527 (= lt!728381 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 (h!26857 tokens!598)))))))

(assert (=> d!582527 (not (isEmpty!13162 rules!3198))))

(assert (=> d!582527 (= (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 (h!26857 tokens!598)) lt!728380)))

(declare-fun b!1904725 () Bool)

(declare-fun res!850552 () Bool)

(assert (=> b!1904725 (=> (not res!850552) (not e!1216634))))

(assert (=> b!1904725 (= res!850552 (= (apply!5621 (_1!11562 lt!728381) 0) (h!26857 tokens!598)))))

(declare-fun b!1904726 () Bool)

(assert (=> b!1904726 (= e!1216634 (isEmpty!13165 (_2!11562 lt!728381)))))

(declare-fun b!1904727 () Bool)

(assert (=> b!1904727 (= e!1216633 (isEmpty!13165 (_2!11562 (lex!1519 thiss!23328 rules!3198 (print!1449 thiss!23328 (singletonSeq!1847 (h!26857 tokens!598)))))))))

(assert (= (and d!582527 res!850551) b!1904725))

(assert (= (and b!1904725 res!850552) b!1904726))

(assert (= (and d!582527 res!850550) b!1904727))

(assert (=> d!582527 m!2334165))

(declare-fun m!2336743 () Bool)

(assert (=> d!582527 m!2336743))

(declare-fun m!2336745 () Bool)

(assert (=> d!582527 m!2336745))

(declare-fun m!2336747 () Bool)

(assert (=> d!582527 m!2336747))

(assert (=> d!582527 m!2336743))

(declare-fun m!2336749 () Bool)

(assert (=> d!582527 m!2336749))

(declare-fun m!2336751 () Bool)

(assert (=> d!582527 m!2336751))

(assert (=> d!582527 m!2336743))

(assert (=> d!582527 m!2336745))

(declare-fun m!2336753 () Bool)

(assert (=> d!582527 m!2336753))

(declare-fun m!2336755 () Bool)

(assert (=> b!1904725 m!2336755))

(declare-fun m!2336757 () Bool)

(assert (=> b!1904726 m!2336757))

(assert (=> b!1904727 m!2336743))

(assert (=> b!1904727 m!2336743))

(assert (=> b!1904727 m!2336745))

(assert (=> b!1904727 m!2336745))

(assert (=> b!1904727 m!2336747))

(declare-fun m!2336759 () Bool)

(assert (=> b!1904727 m!2336759))

(assert (=> b!1903060 d!582527))

(assert (=> b!1903386 d!582395))

(assert (=> b!1903386 d!582381))

(declare-fun d!582529 () Bool)

(assert (=> d!582529 (= (nullable!1591 (regex!3820 lt!727771)) (nullableFct!353 (regex!3820 lt!727771)))))

(declare-fun bs!413774 () Bool)

(assert (= bs!413774 d!582529))

(declare-fun m!2336761 () Bool)

(assert (=> bs!413774 m!2336761))

(assert (=> b!1903222 d!582529))

(declare-fun d!582531 () Bool)

(declare-fun charsToBigInt!1 (List!21536) Int)

(assert (=> d!582531 (= (inv!17 (value!120461 separatorToken!354)) (= (charsToBigInt!1 (text!28140 (value!120461 separatorToken!354))) (value!120453 (value!120461 separatorToken!354))))))

(declare-fun bs!413775 () Bool)

(assert (= bs!413775 d!582531))

(declare-fun m!2336763 () Bool)

(assert (=> bs!413775 m!2336763))

(assert (=> b!1903519 d!582531))

(assert (=> b!1903212 d!582521))

(assert (=> b!1903212 d!582287))

(declare-fun d!582533 () Bool)

(declare-fun c!310303 () Bool)

(assert (=> d!582533 (= c!310303 ((_ is Nil!21455) lt!727948))))

(declare-fun e!1216635 () (InoxSet C!10636))

(assert (=> d!582533 (= (content!3139 lt!727948) e!1216635)))

(declare-fun b!1904728 () Bool)

(assert (=> b!1904728 (= e!1216635 ((as const (Array C!10636 Bool)) false))))

(declare-fun b!1904729 () Bool)

(assert (=> b!1904729 (= e!1216635 ((_ map or) (store ((as const (Array C!10636 Bool)) false) (h!26856 lt!727948) true) (content!3139 (t!177028 lt!727948))))))

(assert (= (and d!582533 c!310303) b!1904728))

(assert (= (and d!582533 (not c!310303)) b!1904729))

(declare-fun m!2336765 () Bool)

(assert (=> b!1904729 m!2336765))

(declare-fun m!2336767 () Bool)

(assert (=> b!1904729 m!2336767))

(assert (=> d!581871 d!582533))

(assert (=> d!581871 d!581963))

(assert (=> d!581871 d!582425))

(assert (=> b!1903436 d!582127))

(declare-fun d!582535 () Bool)

(assert (=> d!582535 (= (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727929))))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727929))))))))

(declare-fun b_lambda!62855 () Bool)

(assert (=> (not b_lambda!62855) (not d!582535)))

(declare-fun tb!116303 () Bool)

(declare-fun t!177302 () Bool)

(assert (=> (and b!1903564 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177302) tb!116303))

(declare-fun result!140604 () Bool)

(assert (=> tb!116303 (= result!140604 (inv!21 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929))))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727929)))))))))

(declare-fun m!2336769 () Bool)

(assert (=> tb!116303 m!2336769))

(assert (=> d!582535 t!177302))

(declare-fun b_and!147785 () Bool)

(assert (= b_and!147663 (and (=> t!177302 result!140604) b_and!147785)))

(declare-fun t!177304 () Bool)

(declare-fun tb!116305 () Bool)

(assert (=> (and b!1902864 (= (toValue!5437 (transformation!3820 (h!26858 rules!3198))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177304) tb!116305))

(declare-fun result!140606 () Bool)

(assert (= result!140606 result!140604))

(assert (=> d!582535 t!177304))

(declare-fun b_and!147787 () Bool)

(assert (= b_and!147669 (and (=> t!177304 result!140606) b_and!147787)))

(declare-fun tb!116307 () Bool)

(declare-fun t!177306 () Bool)

(assert (=> (and b!1902858 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177306) tb!116307))

(declare-fun result!140608 () Bool)

(assert (= result!140608 result!140604))

(assert (=> d!582535 t!177306))

(declare-fun b_and!147789 () Bool)

(assert (= b_and!147661 (and (=> t!177306 result!140608) b_and!147789)))

(declare-fun t!177308 () Bool)

(declare-fun tb!116309 () Bool)

(assert (=> (and b!1903550 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177308) tb!116309))

(declare-fun result!140610 () Bool)

(assert (= result!140610 result!140604))

(assert (=> d!582535 t!177308))

(declare-fun b_and!147791 () Bool)

(assert (= b_and!147667 (and (=> t!177308 result!140610) b_and!147791)))

(declare-fun t!177310 () Bool)

(declare-fun tb!116311 () Bool)

(assert (=> (and b!1902865 (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177310) tb!116311))

(declare-fun result!140612 () Bool)

(assert (= result!140612 result!140604))

(assert (=> d!582535 t!177310))

(declare-fun b_and!147793 () Bool)

(assert (= b_and!147665 (and (=> t!177310 result!140612) b_and!147793)))

(assert (=> d!582535 m!2334813))

(declare-fun m!2336771 () Bool)

(assert (=> d!582535 m!2336771))

(assert (=> b!1903436 d!582535))

(declare-fun d!582537 () Bool)

(assert (=> d!582537 (= (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!727929)))) (fromListB!1220 (originalCharacters!4627 (_1!11561 (get!6663 lt!727929)))))))

(declare-fun bs!413776 () Bool)

(assert (= bs!413776 d!582537))

(declare-fun m!2336773 () Bool)

(assert (=> bs!413776 m!2336773))

(assert (=> b!1903436 d!582537))

(declare-fun d!582539 () Bool)

(declare-fun c!310304 () Bool)

(assert (=> d!582539 (= c!310304 ((_ is Node!7135) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))))

(declare-fun e!1216637 () Bool)

(assert (=> d!582539 (= (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))) e!1216637)))

(declare-fun b!1904730 () Bool)

(assert (=> b!1904730 (= e!1216637 (inv!28554 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))))

(declare-fun b!1904731 () Bool)

(declare-fun e!1216638 () Bool)

(assert (=> b!1904731 (= e!1216637 e!1216638)))

(declare-fun res!850553 () Bool)

(assert (=> b!1904731 (= res!850553 (not ((_ is Leaf!10508) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))))))))

(assert (=> b!1904731 (=> res!850553 e!1216638)))

(declare-fun b!1904732 () Bool)

(assert (=> b!1904732 (= e!1216638 (inv!28555 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))))))

(assert (= (and d!582539 c!310304) b!1904730))

(assert (= (and d!582539 (not c!310304)) b!1904731))

(assert (= (and b!1904731 (not res!850553)) b!1904732))

(declare-fun m!2336775 () Bool)

(assert (=> b!1904730 m!2336775))

(declare-fun m!2336777 () Bool)

(assert (=> b!1904732 m!2336777))

(assert (=> b!1903105 d!582539))

(declare-fun d!582541 () Bool)

(assert (=> d!582541 (= (isEmpty!13169 lt!727929) (not ((_ is Some!4345) lt!727929)))))

(assert (=> d!581855 d!582541))

(declare-fun d!582543 () Bool)

(declare-fun e!1216640 () Bool)

(assert (=> d!582543 e!1216640))

(declare-fun res!850556 () Bool)

(assert (=> d!582543 (=> res!850556 e!1216640)))

(declare-fun lt!728382 () Bool)

(assert (=> d!582543 (= res!850556 (not lt!728382))))

(declare-fun e!1216639 () Bool)

(assert (=> d!582543 (= lt!728382 e!1216639)))

(declare-fun res!850554 () Bool)

(assert (=> d!582543 (=> res!850554 e!1216639)))

(assert (=> d!582543 (= res!850554 ((_ is Nil!21455) (++!5763 lt!727775 lt!727764)))))

(assert (=> d!582543 (= (isPrefix!1919 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764)) lt!728382)))

(declare-fun b!1904734 () Bool)

(declare-fun res!850557 () Bool)

(declare-fun e!1216641 () Bool)

(assert (=> b!1904734 (=> (not res!850557) (not e!1216641))))

(assert (=> b!1904734 (= res!850557 (= (head!4418 (++!5763 lt!727775 lt!727764)) (head!4418 (++!5763 lt!727775 lt!727764))))))

(declare-fun b!1904733 () Bool)

(assert (=> b!1904733 (= e!1216639 e!1216641)))

(declare-fun res!850555 () Bool)

(assert (=> b!1904733 (=> (not res!850555) (not e!1216641))))

(assert (=> b!1904733 (= res!850555 (not ((_ is Nil!21455) (++!5763 lt!727775 lt!727764))))))

(declare-fun b!1904735 () Bool)

(assert (=> b!1904735 (= e!1216641 (isPrefix!1919 (tail!2944 (++!5763 lt!727775 lt!727764)) (tail!2944 (++!5763 lt!727775 lt!727764))))))

(declare-fun b!1904736 () Bool)

(assert (=> b!1904736 (= e!1216640 (>= (size!16921 (++!5763 lt!727775 lt!727764)) (size!16921 (++!5763 lt!727775 lt!727764))))))

(assert (= (and d!582543 (not res!850554)) b!1904733))

(assert (= (and b!1904733 res!850555) b!1904734))

(assert (= (and b!1904734 res!850557) b!1904735))

(assert (= (and d!582543 (not res!850556)) b!1904736))

(assert (=> b!1904734 m!2334169))

(declare-fun m!2336779 () Bool)

(assert (=> b!1904734 m!2336779))

(assert (=> b!1904734 m!2334169))

(assert (=> b!1904734 m!2336779))

(assert (=> b!1904735 m!2334169))

(declare-fun m!2336781 () Bool)

(assert (=> b!1904735 m!2336781))

(assert (=> b!1904735 m!2334169))

(assert (=> b!1904735 m!2336781))

(assert (=> b!1904735 m!2336781))

(assert (=> b!1904735 m!2336781))

(declare-fun m!2336783 () Bool)

(assert (=> b!1904735 m!2336783))

(assert (=> b!1904736 m!2334169))

(assert (=> b!1904736 m!2334809))

(assert (=> b!1904736 m!2334169))

(assert (=> b!1904736 m!2334809))

(assert (=> d!581855 d!582543))

(declare-fun d!582545 () Bool)

(assert (=> d!582545 (isPrefix!1919 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764))))

(declare-fun lt!728383 () Unit!35776)

(assert (=> d!582545 (= lt!728383 (choose!11861 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764)))))

(assert (=> d!582545 (= (lemmaIsPrefixRefl!1237 (++!5763 lt!727775 lt!727764) (++!5763 lt!727775 lt!727764)) lt!728383)))

(declare-fun bs!413777 () Bool)

(assert (= bs!413777 d!582545))

(assert (=> bs!413777 m!2334169))

(assert (=> bs!413777 m!2334169))

(assert (=> bs!413777 m!2334791))

(assert (=> bs!413777 m!2334169))

(assert (=> bs!413777 m!2334169))

(declare-fun m!2336785 () Bool)

(assert (=> bs!413777 m!2336785))

(assert (=> d!581855 d!582545))

(assert (=> d!581855 d!582495))

(declare-fun d!582547 () Bool)

(declare-fun lt!728384 () Int)

(assert (=> d!582547 (>= lt!728384 0)))

(declare-fun e!1216642 () Int)

(assert (=> d!582547 (= lt!728384 e!1216642)))

(declare-fun c!310305 () Bool)

(assert (=> d!582547 (= c!310305 ((_ is Nil!21455) (_2!11561 (get!6663 lt!727923))))))

(assert (=> d!582547 (= (size!16921 (_2!11561 (get!6663 lt!727923))) lt!728384)))

(declare-fun b!1904737 () Bool)

(assert (=> b!1904737 (= e!1216642 0)))

(declare-fun b!1904738 () Bool)

(assert (=> b!1904738 (= e!1216642 (+ 1 (size!16921 (t!177028 (_2!11561 (get!6663 lt!727923))))))))

(assert (= (and d!582547 c!310305) b!1904737))

(assert (= (and d!582547 (not c!310305)) b!1904738))

(declare-fun m!2336787 () Bool)

(assert (=> b!1904738 m!2336787))

(assert (=> b!1903422 d!582547))

(assert (=> b!1903422 d!582203))

(assert (=> b!1903422 d!582225))

(declare-fun d!582549 () Bool)

(declare-fun lt!728385 () Int)

(assert (=> d!582549 (>= lt!728385 0)))

(declare-fun e!1216643 () Int)

(assert (=> d!582549 (= lt!728385 e!1216643)))

(declare-fun c!310306 () Bool)

(assert (=> d!582549 (= c!310306 ((_ is Nil!21455) lt!727954))))

(assert (=> d!582549 (= (size!16921 lt!727954) lt!728385)))

(declare-fun b!1904739 () Bool)

(assert (=> b!1904739 (= e!1216643 0)))

(declare-fun b!1904740 () Bool)

(assert (=> b!1904740 (= e!1216643 (+ 1 (size!16921 (t!177028 lt!727954))))))

(assert (= (and d!582549 c!310306) b!1904739))

(assert (= (and d!582549 (not c!310306)) b!1904740))

(declare-fun m!2336789 () Bool)

(assert (=> b!1904740 m!2336789))

(assert (=> b!1903516 d!582549))

(assert (=> b!1903516 d!582225))

(assert (=> b!1903516 d!582513))

(declare-fun bs!413778 () Bool)

(declare-fun d!582551 () Bool)

(assert (= bs!413778 (and d!582551 d!581801)))

(declare-fun lambda!74436 () Int)

(assert (=> bs!413778 (= lambda!74436 lambda!74395)))

(declare-fun bs!413779 () Bool)

(assert (= bs!413779 (and d!582551 d!581951)))

(assert (=> bs!413779 (= (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (= lambda!74436 lambda!74404))))

(assert (=> d!582551 true))

(assert (=> d!582551 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (dynLambda!10442 order!13557 lambda!74436))))

(assert (=> d!582551 (= (equivClasses!1468 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (Forall2!616 lambda!74436))))

(declare-fun bs!413780 () Bool)

(assert (= bs!413780 d!582551))

(declare-fun m!2336791 () Bool)

(assert (=> bs!413780 m!2336791))

(assert (=> b!1902945 d!582551))

(declare-fun d!582553 () Bool)

(declare-fun lt!728386 () Int)

(assert (=> d!582553 (>= lt!728386 0)))

(declare-fun e!1216644 () Int)

(assert (=> d!582553 (= lt!728386 e!1216644)))

(declare-fun c!310307 () Bool)

(assert (=> d!582553 (= c!310307 ((_ is Nil!21455) (originalCharacters!4627 (h!26857 tokens!598))))))

(assert (=> d!582553 (= (size!16921 (originalCharacters!4627 (h!26857 tokens!598))) lt!728386)))

(declare-fun b!1904741 () Bool)

(assert (=> b!1904741 (= e!1216644 0)))

(declare-fun b!1904742 () Bool)

(assert (=> b!1904742 (= e!1216644 (+ 1 (size!16921 (t!177028 (originalCharacters!4627 (h!26857 tokens!598))))))))

(assert (= (and d!582553 c!310307) b!1904741))

(assert (= (and d!582553 (not c!310307)) b!1904742))

(declare-fun m!2336793 () Bool)

(assert (=> b!1904742 m!2336793))

(assert (=> b!1903098 d!582553))

(declare-fun d!582555 () Bool)

(assert (=> d!582555 (= (isEmpty!13170 lt!727941) (not ((_ is Some!4344) lt!727941)))))

(assert (=> d!581863 d!582555))

(assert (=> d!581863 d!581737))

(declare-fun d!582557 () Bool)

(assert (=> d!582557 (= (isDefined!3644 lt!727929) (not (isEmpty!13169 lt!727929)))))

(declare-fun bs!413781 () Bool)

(assert (= bs!413781 d!582557))

(assert (=> bs!413781 m!2334789))

(assert (=> b!1903439 d!582557))

(declare-fun d!582559 () Bool)

(declare-fun res!850558 () Bool)

(declare-fun e!1216645 () Bool)

(assert (=> d!582559 (=> res!850558 e!1216645)))

(assert (=> d!582559 (= res!850558 (not ((_ is Cons!21457) (t!177030 rules!3198))))))

(assert (=> d!582559 (= (sepAndNonSepRulesDisjointChars!918 rules!3198 (t!177030 rules!3198)) e!1216645)))

(declare-fun b!1904743 () Bool)

(declare-fun e!1216646 () Bool)

(assert (=> b!1904743 (= e!1216645 e!1216646)))

(declare-fun res!850559 () Bool)

(assert (=> b!1904743 (=> (not res!850559) (not e!1216646))))

(assert (=> b!1904743 (= res!850559 (ruleDisjointCharsFromAllFromOtherType!425 (h!26858 (t!177030 rules!3198)) rules!3198))))

(declare-fun b!1904744 () Bool)

(assert (=> b!1904744 (= e!1216646 (sepAndNonSepRulesDisjointChars!918 rules!3198 (t!177030 (t!177030 rules!3198))))))

(assert (= (and d!582559 (not res!850558)) b!1904743))

(assert (= (and b!1904743 res!850559) b!1904744))

(declare-fun m!2336795 () Bool)

(assert (=> b!1904743 m!2336795))

(declare-fun m!2336797 () Bool)

(assert (=> b!1904744 m!2336797))

(assert (=> b!1902957 d!582559))

(declare-fun d!582561 () Bool)

(assert (=> d!582561 (= (isEmpty!13169 lt!727767) (not ((_ is Some!4345) lt!727767)))))

(assert (=> d!581845 d!582561))

(declare-fun b!1904745 () Bool)

(declare-fun c!310308 () Bool)

(assert (=> b!1904745 (= c!310308 ((_ is Star!5245) (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))))))

(declare-fun e!1216649 () List!21537)

(declare-fun e!1216650 () List!21537)

(assert (=> b!1904745 (= e!1216649 e!1216650)))

(declare-fun c!310311 () Bool)

(declare-fun call!117325 () List!21537)

(declare-fun bm!117318 () Bool)

(assert (=> bm!117318 (= call!117325 (usedCharacters!328 (ite c!310311 (regTwo!11003 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) (regOne!11002 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))))))))

(declare-fun bm!117319 () Bool)

(declare-fun call!117323 () List!21537)

(assert (=> bm!117319 (= call!117323 (usedCharacters!328 (ite c!310308 (reg!5574 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) (ite c!310311 (regOne!11003 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) (regTwo!11002 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))))

(declare-fun call!117326 () List!21537)

(declare-fun bm!117320 () Bool)

(declare-fun call!117324 () List!21537)

(assert (=> bm!117320 (= call!117326 (++!5763 (ite c!310311 call!117324 call!117325) (ite c!310311 call!117325 call!117324)))))

(declare-fun b!1904747 () Bool)

(assert (=> b!1904747 (= e!1216649 (Cons!21455 (c!309905 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) Nil!21455))))

(declare-fun b!1904748 () Bool)

(declare-fun e!1216647 () List!21537)

(assert (=> b!1904748 (= e!1216647 call!117326)))

(declare-fun b!1904749 () Bool)

(assert (=> b!1904749 (= e!1216650 call!117323)))

(declare-fun b!1904746 () Bool)

(assert (=> b!1904746 (= e!1216650 e!1216647)))

(assert (=> b!1904746 (= c!310311 ((_ is Union!5245) (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))))))

(declare-fun d!582563 () Bool)

(declare-fun c!310309 () Bool)

(assert (=> d!582563 (= c!310309 (or ((_ is EmptyExpr!5245) (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) ((_ is EmptyLang!5245) (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354)))))))))

(declare-fun e!1216648 () List!21537)

(assert (=> d!582563 (= (usedCharacters!328 (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) e!1216648)))

(declare-fun bm!117321 () Bool)

(assert (=> bm!117321 (= call!117324 call!117323)))

(declare-fun b!1904750 () Bool)

(assert (=> b!1904750 (= e!1216647 call!117326)))

(declare-fun b!1904751 () Bool)

(assert (=> b!1904751 (= e!1216648 Nil!21455)))

(declare-fun b!1904752 () Bool)

(assert (=> b!1904752 (= e!1216648 e!1216649)))

(declare-fun c!310310 () Bool)

(assert (=> b!1904752 (= c!310310 ((_ is ElementMatch!5245) (ite c!310028 (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))))))

(assert (= (and d!582563 c!310309) b!1904751))

(assert (= (and d!582563 (not c!310309)) b!1904752))

(assert (= (and b!1904752 c!310310) b!1904747))

(assert (= (and b!1904752 (not c!310310)) b!1904745))

(assert (= (and b!1904745 c!310308) b!1904749))

(assert (= (and b!1904745 (not c!310308)) b!1904746))

(assert (= (and b!1904746 c!310311) b!1904750))

(assert (= (and b!1904746 (not c!310311)) b!1904748))

(assert (= (or b!1904750 b!1904748) bm!117321))

(assert (= (or b!1904750 b!1904748) bm!117318))

(assert (= (or b!1904750 b!1904748) bm!117320))

(assert (= (or b!1904749 bm!117321) bm!117319))

(declare-fun m!2336799 () Bool)

(assert (=> bm!117318 m!2336799))

(declare-fun m!2336801 () Bool)

(assert (=> bm!117319 m!2336801))

(declare-fun m!2336803 () Bool)

(assert (=> bm!117320 m!2336803))

(assert (=> bm!117214 d!582563))

(declare-fun bs!413782 () Bool)

(declare-fun d!582565 () Bool)

(assert (= bs!413782 (and d!582565 d!581801)))

(declare-fun lambda!74437 () Int)

(assert (=> bs!413782 (= (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (= lambda!74437 lambda!74395))))

(declare-fun bs!413783 () Bool)

(assert (= bs!413783 (and d!582565 d!581951)))

(assert (=> bs!413783 (= (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (h!26858 rules!3198)))) (= lambda!74437 lambda!74404))))

(declare-fun bs!413784 () Bool)

(assert (= bs!413784 (and d!582565 d!582551)))

(assert (=> bs!413784 (= (= (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) (= lambda!74437 lambda!74436))))

(assert (=> d!582565 true))

(assert (=> d!582565 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354)))) (dynLambda!10442 order!13557 lambda!74437))))

(assert (=> d!582565 (= (equivClasses!1468 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toValue!5437 (transformation!3820 (rule!6013 separatorToken!354)))) (Forall2!616 lambda!74437))))

(declare-fun bs!413785 () Bool)

(assert (= bs!413785 d!582565))

(declare-fun m!2336805 () Bool)

(assert (=> bs!413785 m!2336805))

(assert (=> b!1903215 d!582565))

(declare-fun d!582567 () Bool)

(declare-fun res!850560 () Bool)

(declare-fun e!1216651 () Bool)

(assert (=> d!582567 (=> res!850560 e!1216651)))

(assert (=> d!582567 (= res!850560 ((_ is Nil!21456) tokens!598))))

(assert (=> d!582567 (= (forall!4504 tokens!598 lambda!74392) e!1216651)))

(declare-fun b!1904753 () Bool)

(declare-fun e!1216652 () Bool)

(assert (=> b!1904753 (= e!1216651 e!1216652)))

(declare-fun res!850561 () Bool)

(assert (=> b!1904753 (=> (not res!850561) (not e!1216652))))

(assert (=> b!1904753 (= res!850561 (dynLambda!10437 lambda!74392 (h!26857 tokens!598)))))

(declare-fun b!1904754 () Bool)

(assert (=> b!1904754 (= e!1216652 (forall!4504 (t!177029 tokens!598) lambda!74392))))

(assert (= (and d!582567 (not res!850560)) b!1904753))

(assert (= (and b!1904753 res!850561) b!1904754))

(declare-fun b_lambda!62857 () Bool)

(assert (=> (not b_lambda!62857) (not b!1904753)))

(declare-fun m!2336807 () Bool)

(assert (=> b!1904753 m!2336807))

(declare-fun m!2336809 () Bool)

(assert (=> b!1904754 m!2336809))

(assert (=> d!581739 d!582567))

(assert (=> d!581739 d!581731))

(declare-fun d!582569 () Bool)

(declare-fun e!1216653 () Bool)

(assert (=> d!582569 e!1216653))

(declare-fun res!850568 () Bool)

(assert (=> d!582569 (=> res!850568 e!1216653)))

(declare-fun lt!728389 () Option!4346)

(assert (=> d!582569 (= res!850568 (isEmpty!13169 lt!728389))))

(declare-fun e!1216654 () Option!4346)

(assert (=> d!582569 (= lt!728389 e!1216654)))

(declare-fun c!310312 () Bool)

(assert (=> d!582569 (= c!310312 (and ((_ is Cons!21457) (t!177030 rules!3198)) ((_ is Nil!21457) (t!177030 (t!177030 rules!3198)))))))

(declare-fun lt!728391 () Unit!35776)

(declare-fun lt!728388 () Unit!35776)

(assert (=> d!582569 (= lt!728391 lt!728388)))

(assert (=> d!582569 (isPrefix!1919 lt!727775 lt!727775)))

(assert (=> d!582569 (= lt!728388 (lemmaIsPrefixRefl!1237 lt!727775 lt!727775))))

(assert (=> d!582569 (rulesValidInductive!1298 thiss!23328 (t!177030 rules!3198))))

(assert (=> d!582569 (= (maxPrefix!1879 thiss!23328 (t!177030 rules!3198) lt!727775) lt!728389)))

(declare-fun b!1904755 () Bool)

(declare-fun res!850566 () Bool)

(declare-fun e!1216655 () Bool)

(assert (=> b!1904755 (=> (not res!850566) (not e!1216655))))

(assert (=> b!1904755 (= res!850566 (< (size!16921 (_2!11561 (get!6663 lt!728389))) (size!16921 lt!727775)))))

(declare-fun b!1904756 () Bool)

(declare-fun call!117327 () Option!4346)

(assert (=> b!1904756 (= e!1216654 call!117327)))

(declare-fun b!1904757 () Bool)

(declare-fun res!850567 () Bool)

(assert (=> b!1904757 (=> (not res!850567) (not e!1216655))))

(assert (=> b!1904757 (= res!850567 (matchR!2531 (regex!3820 (rule!6013 (_1!11561 (get!6663 lt!728389)))) (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728389))))))))

(declare-fun b!1904758 () Bool)

(declare-fun res!850562 () Bool)

(assert (=> b!1904758 (=> (not res!850562) (not e!1216655))))

(assert (=> b!1904758 (= res!850562 (= (value!120461 (_1!11561 (get!6663 lt!728389))) (apply!5624 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!728389)))) (seqFromList!2692 (originalCharacters!4627 (_1!11561 (get!6663 lt!728389)))))))))

(declare-fun b!1904759 () Bool)

(declare-fun lt!728387 () Option!4346)

(declare-fun lt!728390 () Option!4346)

(assert (=> b!1904759 (= e!1216654 (ite (and ((_ is None!4345) lt!728387) ((_ is None!4345) lt!728390)) None!4345 (ite ((_ is None!4345) lt!728390) lt!728387 (ite ((_ is None!4345) lt!728387) lt!728390 (ite (>= (size!16918 (_1!11561 (v!26374 lt!728387))) (size!16918 (_1!11561 (v!26374 lt!728390)))) lt!728387 lt!728390)))))))

(assert (=> b!1904759 (= lt!728387 call!117327)))

(assert (=> b!1904759 (= lt!728390 (maxPrefix!1879 thiss!23328 (t!177030 (t!177030 rules!3198)) lt!727775))))

(declare-fun bm!117322 () Bool)

(assert (=> bm!117322 (= call!117327 (maxPrefixOneRule!1201 thiss!23328 (h!26858 (t!177030 rules!3198)) lt!727775))))

(declare-fun b!1904760 () Bool)

(declare-fun res!850564 () Bool)

(assert (=> b!1904760 (=> (not res!850564) (not e!1216655))))

(assert (=> b!1904760 (= res!850564 (= (++!5763 (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728389)))) (_2!11561 (get!6663 lt!728389))) lt!727775))))

(declare-fun b!1904761 () Bool)

(assert (=> b!1904761 (= e!1216653 e!1216655)))

(declare-fun res!850565 () Bool)

(assert (=> b!1904761 (=> (not res!850565) (not e!1216655))))

(assert (=> b!1904761 (= res!850565 (isDefined!3644 lt!728389))))

(declare-fun b!1904762 () Bool)

(declare-fun res!850563 () Bool)

(assert (=> b!1904762 (=> (not res!850563) (not e!1216655))))

(assert (=> b!1904762 (= res!850563 (= (list!8716 (charsOf!2376 (_1!11561 (get!6663 lt!728389)))) (originalCharacters!4627 (_1!11561 (get!6663 lt!728389)))))))

(declare-fun b!1904763 () Bool)

(assert (=> b!1904763 (= e!1216655 (contains!3847 (t!177030 rules!3198) (rule!6013 (_1!11561 (get!6663 lt!728389)))))))

(assert (= (and d!582569 c!310312) b!1904756))

(assert (= (and d!582569 (not c!310312)) b!1904759))

(assert (= (or b!1904756 b!1904759) bm!117322))

(assert (= (and d!582569 (not res!850568)) b!1904761))

(assert (= (and b!1904761 res!850565) b!1904762))

(assert (= (and b!1904762 res!850563) b!1904755))

(assert (= (and b!1904755 res!850566) b!1904760))

(assert (= (and b!1904760 res!850564) b!1904758))

(assert (= (and b!1904758 res!850562) b!1904757))

(assert (= (and b!1904757 res!850567) b!1904763))

(declare-fun m!2336811 () Bool)

(assert (=> d!582569 m!2336811))

(assert (=> d!582569 m!2334747))

(assert (=> d!582569 m!2334749))

(assert (=> d!582569 m!2336453))

(declare-fun m!2336813 () Bool)

(assert (=> b!1904763 m!2336813))

(declare-fun m!2336815 () Bool)

(assert (=> b!1904763 m!2336815))

(declare-fun m!2336817 () Bool)

(assert (=> b!1904759 m!2336817))

(assert (=> b!1904762 m!2336813))

(declare-fun m!2336819 () Bool)

(assert (=> b!1904762 m!2336819))

(assert (=> b!1904762 m!2336819))

(declare-fun m!2336821 () Bool)

(assert (=> b!1904762 m!2336821))

(assert (=> b!1904760 m!2336813))

(assert (=> b!1904760 m!2336819))

(assert (=> b!1904760 m!2336819))

(assert (=> b!1904760 m!2336821))

(assert (=> b!1904760 m!2336821))

(declare-fun m!2336823 () Bool)

(assert (=> b!1904760 m!2336823))

(assert (=> b!1904755 m!2336813))

(declare-fun m!2336825 () Bool)

(assert (=> b!1904755 m!2336825))

(assert (=> b!1904755 m!2334767))

(declare-fun m!2336827 () Bool)

(assert (=> bm!117322 m!2336827))

(assert (=> b!1904758 m!2336813))

(declare-fun m!2336829 () Bool)

(assert (=> b!1904758 m!2336829))

(assert (=> b!1904758 m!2336829))

(declare-fun m!2336831 () Bool)

(assert (=> b!1904758 m!2336831))

(assert (=> b!1904757 m!2336813))

(assert (=> b!1904757 m!2336819))

(assert (=> b!1904757 m!2336819))

(assert (=> b!1904757 m!2336821))

(assert (=> b!1904757 m!2336821))

(declare-fun m!2336833 () Bool)

(assert (=> b!1904757 m!2336833))

(declare-fun m!2336835 () Bool)

(assert (=> b!1904761 m!2336835))

(assert (=> b!1903426 d!582569))

(declare-fun d!582571 () Bool)

(declare-fun lt!728392 () Bool)

(assert (=> d!582571 (= lt!728392 (isEmpty!13167 (list!8716 (_2!11562 lt!727791))))))

(assert (=> d!582571 (= lt!728392 (isEmpty!13174 (c!309906 (_2!11562 lt!727791))))))

(assert (=> d!582571 (= (isEmpty!13165 (_2!11562 lt!727791)) lt!728392)))

(declare-fun bs!413786 () Bool)

(assert (= bs!413786 d!582571))

(declare-fun m!2336837 () Bool)

(assert (=> bs!413786 m!2336837))

(assert (=> bs!413786 m!2336837))

(declare-fun m!2336839 () Bool)

(assert (=> bs!413786 m!2336839))

(declare-fun m!2336841 () Bool)

(assert (=> bs!413786 m!2336841))

(assert (=> b!1902941 d!582571))

(declare-fun d!582573 () Bool)

(declare-fun e!1216657 () Bool)

(assert (=> d!582573 e!1216657))

(declare-fun res!850569 () Bool)

(assert (=> d!582573 (=> (not res!850569) (not e!1216657))))

(declare-fun lt!728393 () List!21537)

(assert (=> d!582573 (= res!850569 (= (content!3139 lt!728393) ((_ map or) (content!3139 (t!177028 lt!727773)) (content!3139 lt!727764))))))

(declare-fun e!1216656 () List!21537)

(assert (=> d!582573 (= lt!728393 e!1216656)))

(declare-fun c!310313 () Bool)

(assert (=> d!582573 (= c!310313 ((_ is Nil!21455) (t!177028 lt!727773)))))

(assert (=> d!582573 (= (++!5763 (t!177028 lt!727773) lt!727764) lt!728393)))

(declare-fun b!1904765 () Bool)

(assert (=> b!1904765 (= e!1216656 (Cons!21455 (h!26856 (t!177028 lt!727773)) (++!5763 (t!177028 (t!177028 lt!727773)) lt!727764)))))

(declare-fun b!1904766 () Bool)

(declare-fun res!850570 () Bool)

(assert (=> b!1904766 (=> (not res!850570) (not e!1216657))))

(assert (=> b!1904766 (= res!850570 (= (size!16921 lt!728393) (+ (size!16921 (t!177028 lt!727773)) (size!16921 lt!727764))))))

(declare-fun b!1904764 () Bool)

(assert (=> b!1904764 (= e!1216656 lt!727764)))

(declare-fun b!1904767 () Bool)

(assert (=> b!1904767 (= e!1216657 (or (not (= lt!727764 Nil!21455)) (= lt!728393 (t!177028 lt!727773))))))

(assert (= (and d!582573 c!310313) b!1904764))

(assert (= (and d!582573 (not c!310313)) b!1904765))

(assert (= (and d!582573 res!850569) b!1904766))

(assert (= (and b!1904766 res!850570) b!1904767))

(declare-fun m!2336843 () Bool)

(assert (=> d!582573 m!2336843))

(assert (=> d!582573 m!2335073))

(assert (=> d!582573 m!2334851))

(declare-fun m!2336845 () Bool)

(assert (=> b!1904765 m!2336845))

(declare-fun m!2336847 () Bool)

(assert (=> b!1904766 m!2336847))

(assert (=> b!1904766 m!2336727))

(assert (=> b!1904766 m!2334857))

(assert (=> b!1903503 d!582573))

(declare-fun b!1904768 () Bool)

(declare-fun e!1216660 () Bool)

(assert (=> b!1904768 (= e!1216660 (inv!15 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(declare-fun b!1904769 () Bool)

(declare-fun e!1216659 () Bool)

(assert (=> b!1904769 (= e!1216659 (inv!17 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(declare-fun b!1904770 () Bool)

(declare-fun res!850571 () Bool)

(assert (=> b!1904770 (=> res!850571 e!1216660)))

(assert (=> b!1904770 (= res!850571 (not ((_ is IntegerValue!11870) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))))

(assert (=> b!1904770 (= e!1216659 e!1216660)))

(declare-fun d!582575 () Bool)

(declare-fun c!310315 () Bool)

(assert (=> d!582575 (= c!310315 ((_ is IntegerValue!11868) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(declare-fun e!1216658 () Bool)

(assert (=> d!582575 (= (inv!21 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))) e!1216658)))

(declare-fun b!1904771 () Bool)

(assert (=> b!1904771 (= e!1216658 e!1216659)))

(declare-fun c!310314 () Bool)

(assert (=> b!1904771 (= c!310314 ((_ is IntegerValue!11869) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(declare-fun b!1904772 () Bool)

(assert (=> b!1904772 (= e!1216658 (inv!16 (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(assert (= (and d!582575 c!310315) b!1904772))

(assert (= (and d!582575 (not c!310315)) b!1904771))

(assert (= (and b!1904771 c!310314) b!1904769))

(assert (= (and b!1904771 (not c!310314)) b!1904770))

(assert (= (and b!1904770 (not res!850571)) b!1904768))

(declare-fun m!2336849 () Bool)

(assert (=> b!1904768 m!2336849))

(declare-fun m!2336851 () Bool)

(assert (=> b!1904769 m!2336851))

(declare-fun m!2336853 () Bool)

(assert (=> b!1904772 m!2336853))

(assert (=> tb!116091 d!582575))

(declare-fun bm!117323 () Bool)

(declare-fun call!117328 () Bool)

(assert (=> bm!117323 (= call!117328 (isEmpty!13167 (list!8716 (charsOf!2376 (h!26857 tokens!598)))))))

(declare-fun b!1904773 () Bool)

(declare-fun e!1216662 () Bool)

(assert (=> b!1904773 (= e!1216662 (= (head!4418 (list!8716 (charsOf!2376 (h!26857 tokens!598)))) (c!309905 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))))

(declare-fun b!1904774 () Bool)

(declare-fun e!1216666 () Bool)

(declare-fun e!1216663 () Bool)

(assert (=> b!1904774 (= e!1216666 e!1216663)))

(declare-fun res!850576 () Bool)

(assert (=> b!1904774 (=> (not res!850576) (not e!1216663))))

(declare-fun lt!728394 () Bool)

(assert (=> b!1904774 (= res!850576 (not lt!728394))))

(declare-fun b!1904775 () Bool)

(declare-fun e!1216667 () Bool)

(assert (=> b!1904775 (= e!1216667 (not lt!728394))))

(declare-fun b!1904776 () Bool)

(declare-fun res!850578 () Bool)

(declare-fun e!1216664 () Bool)

(assert (=> b!1904776 (=> res!850578 e!1216664)))

(assert (=> b!1904776 (= res!850578 (not (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 (h!26857 tokens!598)))))))))

(declare-fun b!1904777 () Bool)

(declare-fun res!850577 () Bool)

(assert (=> b!1904777 (=> (not res!850577) (not e!1216662))))

(assert (=> b!1904777 (= res!850577 (not call!117328))))

(declare-fun b!1904778 () Bool)

(declare-fun e!1216665 () Bool)

(assert (=> b!1904778 (= e!1216665 e!1216667)))

(declare-fun c!310318 () Bool)

(assert (=> b!1904778 (= c!310318 ((_ is EmptyLang!5245) (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))))

(declare-fun e!1216661 () Bool)

(declare-fun b!1904779 () Bool)

(assert (=> b!1904779 (= e!1216661 (nullable!1591 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))))

(declare-fun b!1904780 () Bool)

(declare-fun res!850574 () Bool)

(assert (=> b!1904780 (=> res!850574 e!1216666)))

(assert (=> b!1904780 (= res!850574 e!1216662)))

(declare-fun res!850575 () Bool)

(assert (=> b!1904780 (=> (not res!850575) (not e!1216662))))

(assert (=> b!1904780 (= res!850575 lt!728394)))

(declare-fun b!1904781 () Bool)

(declare-fun res!850573 () Bool)

(assert (=> b!1904781 (=> res!850573 e!1216666)))

(assert (=> b!1904781 (= res!850573 (not ((_ is ElementMatch!5245) (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))))

(assert (=> b!1904781 (= e!1216667 e!1216666)))

(declare-fun b!1904782 () Bool)

(assert (=> b!1904782 (= e!1216661 (matchR!2531 (derivativeStep!1350 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))) (head!4418 (list!8716 (charsOf!2376 (h!26857 tokens!598))))) (tail!2944 (list!8716 (charsOf!2376 (h!26857 tokens!598))))))))

(declare-fun d!582577 () Bool)

(assert (=> d!582577 e!1216665))

(declare-fun c!310317 () Bool)

(assert (=> d!582577 (= c!310317 ((_ is EmptyExpr!5245) (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))))

(assert (=> d!582577 (= lt!728394 e!1216661)))

(declare-fun c!310316 () Bool)

(assert (=> d!582577 (= c!310316 (isEmpty!13167 (list!8716 (charsOf!2376 (h!26857 tokens!598)))))))

(assert (=> d!582577 (validRegex!2115 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))))))

(assert (=> d!582577 (= (matchR!2531 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598)))))) (list!8716 (charsOf!2376 (h!26857 tokens!598)))) lt!728394)))

(declare-fun b!1904783 () Bool)

(assert (=> b!1904783 (= e!1216665 (= lt!728394 call!117328))))

(declare-fun b!1904784 () Bool)

(declare-fun res!850579 () Bool)

(assert (=> b!1904784 (=> (not res!850579) (not e!1216662))))

(assert (=> b!1904784 (= res!850579 (isEmpty!13167 (tail!2944 (list!8716 (charsOf!2376 (h!26857 tokens!598))))))))

(declare-fun b!1904785 () Bool)

(assert (=> b!1904785 (= e!1216663 e!1216664)))

(declare-fun res!850572 () Bool)

(assert (=> b!1904785 (=> res!850572 e!1216664)))

(assert (=> b!1904785 (= res!850572 call!117328)))

(declare-fun b!1904786 () Bool)

(assert (=> b!1904786 (= e!1216664 (not (= (head!4418 (list!8716 (charsOf!2376 (h!26857 tokens!598)))) (c!309905 (regex!3820 (get!6662 (getRuleFromTag!663 thiss!23328 rules!3198 (tag!4248 (rule!6013 (h!26857 tokens!598))))))))))))

(assert (= (and d!582577 c!310316) b!1904779))

(assert (= (and d!582577 (not c!310316)) b!1904782))

(assert (= (and d!582577 c!310317) b!1904783))

(assert (= (and d!582577 (not c!310317)) b!1904778))

(assert (= (and b!1904778 c!310318) b!1904775))

(assert (= (and b!1904778 (not c!310318)) b!1904781))

(assert (= (and b!1904781 (not res!850573)) b!1904780))

(assert (= (and b!1904780 res!850575) b!1904777))

(assert (= (and b!1904777 res!850577) b!1904784))

(assert (= (and b!1904784 res!850579) b!1904773))

(assert (= (and b!1904780 (not res!850574)) b!1904774))

(assert (= (and b!1904774 res!850576) b!1904785))

(assert (= (and b!1904785 (not res!850572)) b!1904776))

(assert (= (and b!1904776 (not res!850578)) b!1904786))

(assert (= (or b!1904783 b!1904777 b!1904785) bm!117323))

(assert (=> b!1904776 m!2334783))

(declare-fun m!2336855 () Bool)

(assert (=> b!1904776 m!2336855))

(assert (=> b!1904776 m!2336855))

(declare-fun m!2336857 () Bool)

(assert (=> b!1904776 m!2336857))

(declare-fun m!2336859 () Bool)

(assert (=> b!1904779 m!2336859))

(assert (=> b!1904784 m!2334783))

(assert (=> b!1904784 m!2336855))

(assert (=> b!1904784 m!2336855))

(assert (=> b!1904784 m!2336857))

(assert (=> b!1904782 m!2334783))

(declare-fun m!2336861 () Bool)

(assert (=> b!1904782 m!2336861))

(assert (=> b!1904782 m!2336861))

(declare-fun m!2336863 () Bool)

(assert (=> b!1904782 m!2336863))

(assert (=> b!1904782 m!2334783))

(assert (=> b!1904782 m!2336855))

(assert (=> b!1904782 m!2336863))

(assert (=> b!1904782 m!2336855))

(declare-fun m!2336865 () Bool)

(assert (=> b!1904782 m!2336865))

(assert (=> bm!117323 m!2334783))

(declare-fun m!2336867 () Bool)

(assert (=> bm!117323 m!2336867))

(assert (=> b!1904773 m!2334783))

(assert (=> b!1904773 m!2336861))

(assert (=> d!582577 m!2334783))

(assert (=> d!582577 m!2336867))

(declare-fun m!2336869 () Bool)

(assert (=> d!582577 m!2336869))

(assert (=> b!1904786 m!2334783))

(assert (=> b!1904786 m!2336861))

(assert (=> b!1903431 d!582577))

(assert (=> b!1903431 d!582515))

(assert (=> b!1903431 d!581857))

(declare-fun d!582579 () Bool)

(assert (=> d!582579 (= (list!8716 (charsOf!2376 (h!26857 tokens!598))) (list!8720 (c!309906 (charsOf!2376 (h!26857 tokens!598)))))))

(declare-fun bs!413787 () Bool)

(assert (= bs!413787 d!582579))

(declare-fun m!2336871 () Bool)

(assert (=> bs!413787 m!2336871))

(assert (=> b!1903431 d!582579))

(assert (=> b!1903431 d!581865))

(assert (=> b!1903429 d!582339))

(assert (=> b!1903429 d!582341))

(assert (=> b!1903429 d!582203))

(declare-fun d!582581 () Bool)

(assert (=> d!582581 (= (isEmpty!13170 lt!727944) (not ((_ is Some!4344) lt!727944)))))

(assert (=> d!581865 d!582581))

(assert (=> d!581865 d!581737))

(declare-fun d!582583 () Bool)

(assert (=> d!582583 (= (inv!17 (value!120461 (h!26857 tokens!598))) (= (charsToBigInt!1 (text!28140 (value!120461 (h!26857 tokens!598)))) (value!120453 (value!120461 (h!26857 tokens!598)))))))

(declare-fun bs!413788 () Bool)

(assert (= bs!413788 d!582583))

(declare-fun m!2336873 () Bool)

(assert (=> bs!413788 m!2336873))

(assert (=> b!1903124 d!582583))

(declare-fun d!582585 () Bool)

(assert (=> d!582585 (= (list!8716 lt!727910) (list!8720 (c!309906 lt!727910)))))

(declare-fun bs!413789 () Bool)

(assert (= bs!413789 d!582585))

(declare-fun m!2336875 () Bool)

(assert (=> bs!413789 m!2336875))

(assert (=> d!581847 d!582585))

(declare-fun b!1904789 () Bool)

(declare-fun e!1216670 () Bool)

(assert (=> b!1904789 (= e!1216670 true)))

(declare-fun b!1904788 () Bool)

(declare-fun e!1216669 () Bool)

(assert (=> b!1904788 (= e!1216669 e!1216670)))

(declare-fun b!1904787 () Bool)

(declare-fun e!1216668 () Bool)

(assert (=> b!1904787 (= e!1216668 e!1216669)))

(assert (=> b!1903394 e!1216668))

(assert (= b!1904788 b!1904789))

(assert (= b!1904787 b!1904788))

(assert (= (and b!1903394 ((_ is Cons!21457) (t!177030 rules!3198))) b!1904787))

(assert (=> b!1904789 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198))))) (dynLambda!10439 order!13553 lambda!74401))))

(assert (=> b!1904789 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198))))) (dynLambda!10439 order!13553 lambda!74401))))

(declare-fun b!1904792 () Bool)

(declare-fun e!1216671 () Bool)

(declare-fun tp!543864 () Bool)

(assert (=> b!1904792 (= e!1216671 tp!543864)))

(assert (=> b!1903571 (= tp!543732 e!1216671)))

(declare-fun b!1904793 () Bool)

(declare-fun tp!543862 () Bool)

(declare-fun tp!543865 () Bool)

(assert (=> b!1904793 (= e!1216671 (and tp!543862 tp!543865))))

(declare-fun b!1904791 () Bool)

(declare-fun tp!543863 () Bool)

(declare-fun tp!543861 () Bool)

(assert (=> b!1904791 (= e!1216671 (and tp!543863 tp!543861))))

(declare-fun b!1904790 () Bool)

(assert (=> b!1904790 (= e!1216671 tp_is_empty!9089)))

(assert (= (and b!1903571 ((_ is ElementMatch!5245) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904790))

(assert (= (and b!1903571 ((_ is Concat!9202) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904791))

(assert (= (and b!1903571 ((_ is Star!5245) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904792))

(assert (= (and b!1903571 ((_ is Union!5245) (regOne!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904793))

(declare-fun b!1904796 () Bool)

(declare-fun e!1216672 () Bool)

(declare-fun tp!543869 () Bool)

(assert (=> b!1904796 (= e!1216672 tp!543869)))

(assert (=> b!1903571 (= tp!543730 e!1216672)))

(declare-fun b!1904797 () Bool)

(declare-fun tp!543867 () Bool)

(declare-fun tp!543870 () Bool)

(assert (=> b!1904797 (= e!1216672 (and tp!543867 tp!543870))))

(declare-fun b!1904795 () Bool)

(declare-fun tp!543868 () Bool)

(declare-fun tp!543866 () Bool)

(assert (=> b!1904795 (= e!1216672 (and tp!543868 tp!543866))))

(declare-fun b!1904794 () Bool)

(assert (=> b!1904794 (= e!1216672 tp_is_empty!9089)))

(assert (= (and b!1903571 ((_ is ElementMatch!5245) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904794))

(assert (= (and b!1903571 ((_ is Concat!9202) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904795))

(assert (= (and b!1903571 ((_ is Star!5245) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904796))

(assert (= (and b!1903571 ((_ is Union!5245) (regTwo!11002 (regex!3820 (rule!6013 separatorToken!354))))) b!1904797))

(declare-fun b!1904800 () Bool)

(declare-fun e!1216673 () Bool)

(declare-fun tp!543874 () Bool)

(assert (=> b!1904800 (= e!1216673 tp!543874)))

(assert (=> b!1903572 (= tp!543733 e!1216673)))

(declare-fun b!1904801 () Bool)

(declare-fun tp!543872 () Bool)

(declare-fun tp!543875 () Bool)

(assert (=> b!1904801 (= e!1216673 (and tp!543872 tp!543875))))

(declare-fun b!1904799 () Bool)

(declare-fun tp!543873 () Bool)

(declare-fun tp!543871 () Bool)

(assert (=> b!1904799 (= e!1216673 (and tp!543873 tp!543871))))

(declare-fun b!1904798 () Bool)

(assert (=> b!1904798 (= e!1216673 tp_is_empty!9089)))

(assert (= (and b!1903572 ((_ is ElementMatch!5245) (reg!5574 (regex!3820 (rule!6013 separatorToken!354))))) b!1904798))

(assert (= (and b!1903572 ((_ is Concat!9202) (reg!5574 (regex!3820 (rule!6013 separatorToken!354))))) b!1904799))

(assert (= (and b!1903572 ((_ is Star!5245) (reg!5574 (regex!3820 (rule!6013 separatorToken!354))))) b!1904800))

(assert (= (and b!1903572 ((_ is Union!5245) (reg!5574 (regex!3820 (rule!6013 separatorToken!354))))) b!1904801))

(declare-fun b!1904804 () Bool)

(declare-fun e!1216674 () Bool)

(declare-fun tp!543879 () Bool)

(assert (=> b!1904804 (= e!1216674 tp!543879)))

(assert (=> b!1903537 (= tp!543697 e!1216674)))

(declare-fun b!1904805 () Bool)

(declare-fun tp!543877 () Bool)

(declare-fun tp!543880 () Bool)

(assert (=> b!1904805 (= e!1216674 (and tp!543877 tp!543880))))

(declare-fun b!1904803 () Bool)

(declare-fun tp!543878 () Bool)

(declare-fun tp!543876 () Bool)

(assert (=> b!1904803 (= e!1216674 (and tp!543878 tp!543876))))

(declare-fun b!1904802 () Bool)

(assert (=> b!1904802 (= e!1216674 tp_is_empty!9089)))

(assert (= (and b!1903537 ((_ is ElementMatch!5245) (regOne!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904802))

(assert (= (and b!1903537 ((_ is Concat!9202) (regOne!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904803))

(assert (= (and b!1903537 ((_ is Star!5245) (regOne!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904804))

(assert (= (and b!1903537 ((_ is Union!5245) (regOne!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904805))

(declare-fun b!1904808 () Bool)

(declare-fun e!1216675 () Bool)

(declare-fun tp!543884 () Bool)

(assert (=> b!1904808 (= e!1216675 tp!543884)))

(assert (=> b!1903537 (= tp!543695 e!1216675)))

(declare-fun b!1904809 () Bool)

(declare-fun tp!543882 () Bool)

(declare-fun tp!543885 () Bool)

(assert (=> b!1904809 (= e!1216675 (and tp!543882 tp!543885))))

(declare-fun b!1904807 () Bool)

(declare-fun tp!543883 () Bool)

(declare-fun tp!543881 () Bool)

(assert (=> b!1904807 (= e!1216675 (and tp!543883 tp!543881))))

(declare-fun b!1904806 () Bool)

(assert (=> b!1904806 (= e!1216675 tp_is_empty!9089)))

(assert (= (and b!1903537 ((_ is ElementMatch!5245) (regTwo!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904806))

(assert (= (and b!1903537 ((_ is Concat!9202) (regTwo!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904807))

(assert (= (and b!1903537 ((_ is Star!5245) (regTwo!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904808))

(assert (= (and b!1903537 ((_ is Union!5245) (regTwo!11002 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904809))

(declare-fun b!1904812 () Bool)

(declare-fun e!1216676 () Bool)

(declare-fun tp!543889 () Bool)

(assert (=> b!1904812 (= e!1216676 tp!543889)))

(assert (=> b!1903573 (= tp!543731 e!1216676)))

(declare-fun b!1904813 () Bool)

(declare-fun tp!543887 () Bool)

(declare-fun tp!543890 () Bool)

(assert (=> b!1904813 (= e!1216676 (and tp!543887 tp!543890))))

(declare-fun b!1904811 () Bool)

(declare-fun tp!543888 () Bool)

(declare-fun tp!543886 () Bool)

(assert (=> b!1904811 (= e!1216676 (and tp!543888 tp!543886))))

(declare-fun b!1904810 () Bool)

(assert (=> b!1904810 (= e!1216676 tp_is_empty!9089)))

(assert (= (and b!1903573 ((_ is ElementMatch!5245) (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904810))

(assert (= (and b!1903573 ((_ is Concat!9202) (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904811))

(assert (= (and b!1903573 ((_ is Star!5245) (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904812))

(assert (= (and b!1903573 ((_ is Union!5245) (regOne!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904813))

(declare-fun b!1904816 () Bool)

(declare-fun e!1216677 () Bool)

(declare-fun tp!543894 () Bool)

(assert (=> b!1904816 (= e!1216677 tp!543894)))

(assert (=> b!1903573 (= tp!543734 e!1216677)))

(declare-fun b!1904817 () Bool)

(declare-fun tp!543892 () Bool)

(declare-fun tp!543895 () Bool)

(assert (=> b!1904817 (= e!1216677 (and tp!543892 tp!543895))))

(declare-fun b!1904815 () Bool)

(declare-fun tp!543893 () Bool)

(declare-fun tp!543891 () Bool)

(assert (=> b!1904815 (= e!1216677 (and tp!543893 tp!543891))))

(declare-fun b!1904814 () Bool)

(assert (=> b!1904814 (= e!1216677 tp_is_empty!9089)))

(assert (= (and b!1903573 ((_ is ElementMatch!5245) (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904814))

(assert (= (and b!1903573 ((_ is Concat!9202) (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904815))

(assert (= (and b!1903573 ((_ is Star!5245) (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904816))

(assert (= (and b!1903573 ((_ is Union!5245) (regTwo!11003 (regex!3820 (rule!6013 separatorToken!354))))) b!1904817))

(declare-fun b!1904820 () Bool)

(declare-fun e!1216678 () Bool)

(declare-fun tp!543899 () Bool)

(assert (=> b!1904820 (= e!1216678 tp!543899)))

(assert (=> b!1903538 (= tp!543698 e!1216678)))

(declare-fun b!1904821 () Bool)

(declare-fun tp!543897 () Bool)

(declare-fun tp!543900 () Bool)

(assert (=> b!1904821 (= e!1216678 (and tp!543897 tp!543900))))

(declare-fun b!1904819 () Bool)

(declare-fun tp!543898 () Bool)

(declare-fun tp!543896 () Bool)

(assert (=> b!1904819 (= e!1216678 (and tp!543898 tp!543896))))

(declare-fun b!1904818 () Bool)

(assert (=> b!1904818 (= e!1216678 tp_is_empty!9089)))

(assert (= (and b!1903538 ((_ is ElementMatch!5245) (reg!5574 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904818))

(assert (= (and b!1903538 ((_ is Concat!9202) (reg!5574 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904819))

(assert (= (and b!1903538 ((_ is Star!5245) (reg!5574 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904820))

(assert (= (and b!1903538 ((_ is Union!5245) (reg!5574 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904821))

(declare-fun b!1904824 () Bool)

(declare-fun e!1216679 () Bool)

(declare-fun tp!543904 () Bool)

(assert (=> b!1904824 (= e!1216679 tp!543904)))

(assert (=> b!1903539 (= tp!543696 e!1216679)))

(declare-fun b!1904825 () Bool)

(declare-fun tp!543902 () Bool)

(declare-fun tp!543905 () Bool)

(assert (=> b!1904825 (= e!1216679 (and tp!543902 tp!543905))))

(declare-fun b!1904823 () Bool)

(declare-fun tp!543903 () Bool)

(declare-fun tp!543901 () Bool)

(assert (=> b!1904823 (= e!1216679 (and tp!543903 tp!543901))))

(declare-fun b!1904822 () Bool)

(assert (=> b!1904822 (= e!1216679 tp_is_empty!9089)))

(assert (= (and b!1903539 ((_ is ElementMatch!5245) (regOne!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904822))

(assert (= (and b!1903539 ((_ is Concat!9202) (regOne!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904823))

(assert (= (and b!1903539 ((_ is Star!5245) (regOne!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904824))

(assert (= (and b!1903539 ((_ is Union!5245) (regOne!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904825))

(declare-fun b!1904828 () Bool)

(declare-fun e!1216680 () Bool)

(declare-fun tp!543909 () Bool)

(assert (=> b!1904828 (= e!1216680 tp!543909)))

(assert (=> b!1903539 (= tp!543699 e!1216680)))

(declare-fun b!1904829 () Bool)

(declare-fun tp!543907 () Bool)

(declare-fun tp!543910 () Bool)

(assert (=> b!1904829 (= e!1216680 (and tp!543907 tp!543910))))

(declare-fun b!1904827 () Bool)

(declare-fun tp!543908 () Bool)

(declare-fun tp!543906 () Bool)

(assert (=> b!1904827 (= e!1216680 (and tp!543908 tp!543906))))

(declare-fun b!1904826 () Bool)

(assert (=> b!1904826 (= e!1216680 tp_is_empty!9089)))

(assert (= (and b!1903539 ((_ is ElementMatch!5245) (regTwo!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904826))

(assert (= (and b!1903539 ((_ is Concat!9202) (regTwo!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904827))

(assert (= (and b!1903539 ((_ is Star!5245) (regTwo!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904828))

(assert (= (and b!1903539 ((_ is Union!5245) (regTwo!11003 (regex!3820 (rule!6013 (h!26857 tokens!598)))))) b!1904829))

(declare-fun b!1904830 () Bool)

(declare-fun e!1216681 () Bool)

(declare-fun tp!543911 () Bool)

(assert (=> b!1904830 (= e!1216681 (and tp_is_empty!9089 tp!543911))))

(assert (=> b!1903574 (= tp!543735 e!1216681)))

(assert (= (and b!1903574 ((_ is Cons!21455) (t!177028 (originalCharacters!4627 separatorToken!354)))) b!1904830))

(declare-fun tp!543920 () Bool)

(declare-fun tp!543918 () Bool)

(declare-fun e!1216687 () Bool)

(declare-fun b!1904839 () Bool)

(assert (=> b!1904839 (= e!1216687 (and (inv!28550 (left!17155 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))) tp!543918 (inv!28550 (right!17485 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))) tp!543920))))

(declare-fun b!1904841 () Bool)

(declare-fun e!1216686 () Bool)

(declare-fun tp!543919 () Bool)

(assert (=> b!1904841 (= e!1216686 tp!543919)))

(declare-fun b!1904840 () Bool)

(declare-fun inv!28557 (IArray!14275) Bool)

(assert (=> b!1904840 (= e!1216687 (and (inv!28557 (xs!10029 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))) e!1216686))))

(assert (=> b!1903244 (= tp!543627 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777)))) e!1216687))))

(assert (= (and b!1903244 ((_ is Node!7135) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))) b!1904839))

(assert (= b!1904840 b!1904841))

(assert (= (and b!1903244 ((_ is Leaf!10508) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))))) b!1904840))

(declare-fun m!2336877 () Bool)

(assert (=> b!1904839 m!2336877))

(declare-fun m!2336879 () Bool)

(assert (=> b!1904839 m!2336879))

(declare-fun m!2336881 () Bool)

(assert (=> b!1904840 m!2336881))

(assert (=> b!1903244 m!2334581))

(declare-fun b!1904844 () Bool)

(declare-fun e!1216690 () Bool)

(assert (=> b!1904844 (= e!1216690 true)))

(declare-fun b!1904843 () Bool)

(declare-fun e!1216689 () Bool)

(assert (=> b!1904843 (= e!1216689 e!1216690)))

(declare-fun b!1904842 () Bool)

(declare-fun e!1216688 () Bool)

(assert (=> b!1904842 (= e!1216688 e!1216689)))

(assert (=> b!1903074 e!1216688))

(assert (= b!1904843 b!1904844))

(assert (= b!1904842 b!1904843))

(assert (= (and b!1903074 ((_ is Cons!21457) (t!177030 rules!3198))) b!1904842))

(assert (=> b!1904844 (< (dynLambda!10438 order!13551 (toValue!5437 (transformation!3820 (h!26858 (t!177030 rules!3198))))) (dynLambda!10439 order!13553 lambda!74392))))

(assert (=> b!1904844 (< (dynLambda!10440 order!13555 (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198))))) (dynLambda!10439 order!13553 lambda!74392))))

(declare-fun tp!543923 () Bool)

(declare-fun tp!543921 () Bool)

(declare-fun b!1904845 () Bool)

(declare-fun e!1216692 () Bool)

(assert (=> b!1904845 (= e!1216692 (and (inv!28550 (left!17155 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))))) tp!543921 (inv!28550 (right!17485 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))))) tp!543923))))

(declare-fun b!1904847 () Bool)

(declare-fun e!1216691 () Bool)

(declare-fun tp!543922 () Bool)

(assert (=> b!1904847 (= e!1216691 tp!543922)))

(declare-fun b!1904846 () Bool)

(assert (=> b!1904846 (= e!1216692 (and (inv!28557 (xs!10029 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))))) e!1216691))))

(assert (=> b!1903105 (= tp!543625 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598))))) e!1216692))))

(assert (= (and b!1903105 ((_ is Node!7135) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))))) b!1904845))

(assert (= b!1904846 b!1904847))

(assert (= (and b!1903105 ((_ is Leaf!10508) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (value!120461 (h!26857 tokens!598)))))) b!1904846))

(declare-fun m!2336883 () Bool)

(assert (=> b!1904845 m!2336883))

(declare-fun m!2336885 () Bool)

(assert (=> b!1904845 m!2336885))

(declare-fun m!2336887 () Bool)

(assert (=> b!1904846 m!2336887))

(assert (=> b!1903105 m!2334403))

(declare-fun b!1904851 () Bool)

(declare-fun b_free!53629 () Bool)

(declare-fun b_next!54333 () Bool)

(assert (=> b!1904851 (= b_free!53629 (not b_next!54333))))

(declare-fun tb!116313 () Bool)

(declare-fun t!177312 () Bool)

(assert (=> (and b!1904851 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177312) tb!116313))

(declare-fun result!140616 () Bool)

(assert (= result!140616 result!140604))

(assert (=> d!582535 t!177312))

(declare-fun t!177314 () Bool)

(declare-fun tb!116315 () Bool)

(assert (=> (and b!1904851 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177314) tb!116315))

(declare-fun result!140618 () Bool)

(assert (= result!140618 result!140518))

(assert (=> d!582205 t!177314))

(declare-fun t!177316 () Bool)

(declare-fun tb!116317 () Bool)

(assert (=> (and b!1904851 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177316) tb!116317))

(declare-fun result!140620 () Bool)

(assert (= result!140620 result!140366))

(assert (=> d!581803 t!177316))

(assert (=> d!581801 t!177316))

(declare-fun t!177318 () Bool)

(declare-fun tb!116319 () Bool)

(assert (=> (and b!1904851 (= (toValue!5437 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177318) tb!116319))

(declare-fun result!140622 () Bool)

(assert (= result!140622 result!140374))

(assert (=> d!581801 t!177318))

(declare-fun b_and!147795 () Bool)

(declare-fun tp!543924 () Bool)

(assert (=> b!1904851 (= tp!543924 (and (=> t!177316 result!140620) (=> t!177312 result!140616) (=> t!177318 result!140622) (=> t!177314 result!140618) b_and!147795))))

(declare-fun b_free!53631 () Bool)

(declare-fun b_next!54335 () Bool)

(assert (=> b!1904851 (= b_free!53631 (not b_next!54335))))

(declare-fun t!177320 () Bool)

(declare-fun tb!116321 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177320) tb!116321))

(declare-fun result!140624 () Bool)

(assert (= result!140624 result!140548))

(assert (=> d!582381 t!177320))

(declare-fun t!177322 () Bool)

(declare-fun tb!116323 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177322) tb!116323))

(declare-fun result!140626 () Bool)

(assert (= result!140626 result!140414))

(assert (=> b!1903523 t!177322))

(declare-fun t!177324 () Bool)

(declare-fun tb!116325 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177324) tb!116325))

(declare-fun result!140628 () Bool)

(assert (= result!140628 result!140380))

(assert (=> d!581803 t!177324))

(declare-fun t!177326 () Bool)

(declare-fun tb!116327 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177326) tb!116327))

(declare-fun result!140630 () Bool)

(assert (= result!140630 result!140352))

(assert (=> b!1903097 t!177326))

(declare-fun tb!116329 () Bool)

(declare-fun t!177328 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177328) tb!116329))

(declare-fun result!140632 () Bool)

(assert (= result!140632 result!140498))

(assert (=> d!582135 t!177328))

(assert (=> d!581857 t!177326))

(assert (=> d!581847 t!177322))

(declare-fun tb!116331 () Bool)

(declare-fun t!177330 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177330) tb!116331))

(declare-fun result!140634 () Bool)

(assert (= result!140634 result!140478))

(assert (=> d!582061 t!177330))

(assert (=> b!1904672 t!177320))

(declare-fun t!177332 () Bool)

(declare-fun tb!116333 () Bool)

(assert (=> (and b!1904851 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177332) tb!116333))

(declare-fun result!140636 () Bool)

(assert (= result!140636 result!140538))

(assert (=> d!582341 t!177332))

(declare-fun tp!543928 () Bool)

(declare-fun b_and!147797 () Bool)

(assert (=> b!1904851 (= tp!543928 (and (=> t!177320 result!140624) (=> t!177326 result!140630) (=> t!177330 result!140634) (=> t!177328 result!140632) (=> t!177322 result!140626) (=> t!177324 result!140628) (=> t!177332 result!140636) b_and!147797))))

(declare-fun e!1216693 () Bool)

(declare-fun b!1904850 () Bool)

(declare-fun tp!543927 () Bool)

(declare-fun e!1216697 () Bool)

(assert (=> b!1904850 (= e!1216693 (and tp!543927 (inv!28543 (tag!4248 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (inv!28546 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) e!1216697))))

(declare-fun tp!543925 () Bool)

(declare-fun e!1216695 () Bool)

(declare-fun e!1216694 () Bool)

(declare-fun b!1904848 () Bool)

(assert (=> b!1904848 (= e!1216695 (and (inv!28547 (h!26857 (t!177029 (t!177029 tokens!598)))) e!1216694 tp!543925))))

(assert (=> b!1903561 (= tp!543723 e!1216695)))

(assert (=> b!1904851 (= e!1216697 (and tp!543924 tp!543928))))

(declare-fun tp!543926 () Bool)

(declare-fun b!1904849 () Bool)

(assert (=> b!1904849 (= e!1216694 (and (inv!21 (value!120461 (h!26857 (t!177029 (t!177029 tokens!598))))) e!1216693 tp!543926))))

(assert (= b!1904850 b!1904851))

(assert (= b!1904849 b!1904850))

(assert (= b!1904848 b!1904849))

(assert (= (and b!1903561 ((_ is Cons!21456) (t!177029 (t!177029 tokens!598)))) b!1904848))

(declare-fun m!2336889 () Bool)

(assert (=> b!1904850 m!2336889))

(declare-fun m!2336891 () Bool)

(assert (=> b!1904850 m!2336891))

(declare-fun m!2336893 () Bool)

(assert (=> b!1904848 m!2336893))

(declare-fun m!2336895 () Bool)

(assert (=> b!1904849 m!2336895))

(declare-fun b!1904852 () Bool)

(declare-fun e!1216699 () Bool)

(declare-fun tp!543929 () Bool)

(assert (=> b!1904852 (= e!1216699 (and tp_is_empty!9089 tp!543929))))

(assert (=> b!1903562 (= tp!543724 e!1216699)))

(assert (= (and b!1903562 ((_ is Cons!21455) (originalCharacters!4627 (h!26857 (t!177029 tokens!598))))) b!1904852))

(declare-fun b!1904855 () Bool)

(declare-fun e!1216700 () Bool)

(declare-fun tp!543933 () Bool)

(assert (=> b!1904855 (= e!1216700 tp!543933)))

(assert (=> b!1903563 (= tp!543725 e!1216700)))

(declare-fun b!1904856 () Bool)

(declare-fun tp!543931 () Bool)

(declare-fun tp!543934 () Bool)

(assert (=> b!1904856 (= e!1216700 (and tp!543931 tp!543934))))

(declare-fun b!1904854 () Bool)

(declare-fun tp!543932 () Bool)

(declare-fun tp!543930 () Bool)

(assert (=> b!1904854 (= e!1216700 (and tp!543932 tp!543930))))

(declare-fun b!1904853 () Bool)

(assert (=> b!1904853 (= e!1216700 tp_is_empty!9089)))

(assert (= (and b!1903563 ((_ is ElementMatch!5245) (regex!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) b!1904853))

(assert (= (and b!1903563 ((_ is Concat!9202) (regex!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) b!1904854))

(assert (= (and b!1903563 ((_ is Star!5245) (regex!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) b!1904855))

(assert (= (and b!1903563 ((_ is Union!5245) (regex!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) b!1904856))

(declare-fun b!1904859 () Bool)

(declare-fun e!1216701 () Bool)

(declare-fun tp!543938 () Bool)

(assert (=> b!1904859 (= e!1216701 tp!543938)))

(assert (=> b!1903576 (= tp!543738 e!1216701)))

(declare-fun b!1904860 () Bool)

(declare-fun tp!543936 () Bool)

(declare-fun tp!543939 () Bool)

(assert (=> b!1904860 (= e!1216701 (and tp!543936 tp!543939))))

(declare-fun b!1904858 () Bool)

(declare-fun tp!543937 () Bool)

(declare-fun tp!543935 () Bool)

(assert (=> b!1904858 (= e!1216701 (and tp!543937 tp!543935))))

(declare-fun b!1904857 () Bool)

(assert (=> b!1904857 (= e!1216701 tp_is_empty!9089)))

(assert (= (and b!1903576 ((_ is ElementMatch!5245) (regOne!11002 (regex!3820 (h!26858 rules!3198))))) b!1904857))

(assert (= (and b!1903576 ((_ is Concat!9202) (regOne!11002 (regex!3820 (h!26858 rules!3198))))) b!1904858))

(assert (= (and b!1903576 ((_ is Star!5245) (regOne!11002 (regex!3820 (h!26858 rules!3198))))) b!1904859))

(assert (= (and b!1903576 ((_ is Union!5245) (regOne!11002 (regex!3820 (h!26858 rules!3198))))) b!1904860))

(declare-fun b!1904863 () Bool)

(declare-fun e!1216702 () Bool)

(declare-fun tp!543943 () Bool)

(assert (=> b!1904863 (= e!1216702 tp!543943)))

(assert (=> b!1903576 (= tp!543736 e!1216702)))

(declare-fun b!1904864 () Bool)

(declare-fun tp!543941 () Bool)

(declare-fun tp!543944 () Bool)

(assert (=> b!1904864 (= e!1216702 (and tp!543941 tp!543944))))

(declare-fun b!1904862 () Bool)

(declare-fun tp!543942 () Bool)

(declare-fun tp!543940 () Bool)

(assert (=> b!1904862 (= e!1216702 (and tp!543942 tp!543940))))

(declare-fun b!1904861 () Bool)

(assert (=> b!1904861 (= e!1216702 tp_is_empty!9089)))

(assert (= (and b!1903576 ((_ is ElementMatch!5245) (regTwo!11002 (regex!3820 (h!26858 rules!3198))))) b!1904861))

(assert (= (and b!1903576 ((_ is Concat!9202) (regTwo!11002 (regex!3820 (h!26858 rules!3198))))) b!1904862))

(assert (= (and b!1903576 ((_ is Star!5245) (regTwo!11002 (regex!3820 (h!26858 rules!3198))))) b!1904863))

(assert (= (and b!1903576 ((_ is Union!5245) (regTwo!11002 (regex!3820 (h!26858 rules!3198))))) b!1904864))

(declare-fun b!1904865 () Bool)

(declare-fun e!1216703 () Bool)

(declare-fun tp!543945 () Bool)

(assert (=> b!1904865 (= e!1216703 (and tp_is_empty!9089 tp!543945))))

(assert (=> b!1903569 (= tp!543729 e!1216703)))

(assert (= (and b!1903569 ((_ is Cons!21455) (t!177028 (originalCharacters!4627 (h!26857 tokens!598))))) b!1904865))

(declare-fun b!1904868 () Bool)

(declare-fun b_free!53633 () Bool)

(declare-fun b_next!54337 () Bool)

(assert (=> b!1904868 (= b_free!53633 (not b_next!54337))))

(declare-fun t!177334 () Bool)

(declare-fun tb!116335 () Bool)

(assert (=> (and b!1904868 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177334) tb!116335))

(declare-fun result!140638 () Bool)

(assert (= result!140638 result!140604))

(assert (=> d!582535 t!177334))

(declare-fun tb!116337 () Bool)

(declare-fun t!177336 () Bool)

(assert (=> (and b!1904868 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toValue!5437 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177336) tb!116337))

(declare-fun result!140640 () Bool)

(assert (= result!140640 result!140518))

(assert (=> d!582205 t!177336))

(declare-fun t!177338 () Bool)

(declare-fun tb!116339 () Bool)

(assert (=> (and b!1904868 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177338) tb!116339))

(declare-fun result!140642 () Bool)

(assert (= result!140642 result!140366))

(assert (=> d!581803 t!177338))

(assert (=> d!581801 t!177338))

(declare-fun t!177340 () Bool)

(declare-fun tb!116341 () Bool)

(assert (=> (and b!1904868 (= (toValue!5437 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177340) tb!116341))

(declare-fun result!140644 () Bool)

(assert (= result!140644 result!140374))

(assert (=> d!581801 t!177340))

(declare-fun tp!543948 () Bool)

(declare-fun b_and!147799 () Bool)

(assert (=> b!1904868 (= tp!543948 (and (=> t!177336 result!140640) (=> t!177338 result!140642) (=> t!177340 result!140644) (=> t!177334 result!140638) b_and!147799))))

(declare-fun b_free!53635 () Bool)

(declare-fun b_next!54339 () Bool)

(assert (=> b!1904868 (= b_free!53635 (not b_next!54339))))

(declare-fun tb!116343 () Bool)

(declare-fun t!177342 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598)))))) t!177342) tb!116343))

(declare-fun result!140646 () Bool)

(assert (= result!140646 result!140548))

(assert (=> d!582381 t!177342))

(declare-fun t!177344 () Bool)

(declare-fun tb!116345 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354)))) t!177344) tb!116345))

(declare-fun result!140648 () Bool)

(assert (= result!140648 result!140414))

(assert (=> b!1903523 t!177344))

(declare-fun tb!116347 () Bool)

(declare-fun t!177346 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177346) tb!116347))

(declare-fun result!140650 () Bool)

(assert (= result!140650 result!140380))

(assert (=> d!581803 t!177346))

(declare-fun tb!116349 () Bool)

(declare-fun t!177348 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598))))) t!177348) tb!116349))

(declare-fun result!140652 () Bool)

(assert (= result!140652 result!140352))

(assert (=> b!1903097 t!177348))

(declare-fun tb!116351 () Bool)

(declare-fun t!177350 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727929)))))) t!177350) tb!116351))

(declare-fun result!140654 () Bool)

(assert (= result!140654 result!140498))

(assert (=> d!582135 t!177350))

(assert (=> d!581857 t!177348))

(assert (=> d!581847 t!177344))

(declare-fun tb!116353 () Bool)

(declare-fun t!177352 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (ite c!310000 (h!26857 (t!177029 tokens!598)) (ite c!310001 separatorToken!354 (h!26857 (t!177029 tokens!598)))))))) t!177352) tb!116353))

(declare-fun result!140656 () Bool)

(assert (= result!140656 result!140478))

(assert (=> d!582061 t!177352))

(assert (=> b!1904672 t!177342))

(declare-fun tb!116355 () Bool)

(declare-fun t!177354 () Bool)

(assert (=> (and b!1904868 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (_1!11561 (get!6663 lt!727923)))))) t!177354) tb!116355))

(declare-fun result!140658 () Bool)

(assert (= result!140658 result!140538))

(assert (=> d!582341 t!177354))

(declare-fun b_and!147801 () Bool)

(declare-fun tp!543946 () Bool)

(assert (=> b!1904868 (= tp!543946 (and (=> t!177350 result!140654) (=> t!177344 result!140648) (=> t!177348 result!140652) (=> t!177354 result!140658) (=> t!177346 result!140650) (=> t!177352 result!140656) (=> t!177342 result!140646) b_and!147801))))

(declare-fun e!1216707 () Bool)

(assert (=> b!1904868 (= e!1216707 (and tp!543948 tp!543946))))

(declare-fun b!1904867 () Bool)

(declare-fun tp!543947 () Bool)

(declare-fun e!1216704 () Bool)

(assert (=> b!1904867 (= e!1216704 (and tp!543947 (inv!28543 (tag!4248 (h!26858 (t!177030 (t!177030 rules!3198))))) (inv!28546 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) e!1216707))))

(declare-fun b!1904866 () Bool)

(declare-fun e!1216705 () Bool)

(declare-fun tp!543949 () Bool)

(assert (=> b!1904866 (= e!1216705 (and e!1216704 tp!543949))))

(assert (=> b!1903548 (= tp!543711 e!1216705)))

(assert (= b!1904867 b!1904868))

(assert (= b!1904866 b!1904867))

(assert (= (and b!1903548 ((_ is Cons!21457) (t!177030 (t!177030 rules!3198)))) b!1904866))

(declare-fun m!2336897 () Bool)

(assert (=> b!1904867 m!2336897))

(declare-fun m!2336899 () Bool)

(assert (=> b!1904867 m!2336899))

(declare-fun b!1904871 () Bool)

(declare-fun e!1216708 () Bool)

(declare-fun tp!543953 () Bool)

(assert (=> b!1904871 (= e!1216708 tp!543953)))

(assert (=> b!1903577 (= tp!543739 e!1216708)))

(declare-fun b!1904872 () Bool)

(declare-fun tp!543951 () Bool)

(declare-fun tp!543954 () Bool)

(assert (=> b!1904872 (= e!1216708 (and tp!543951 tp!543954))))

(declare-fun b!1904870 () Bool)

(declare-fun tp!543952 () Bool)

(declare-fun tp!543950 () Bool)

(assert (=> b!1904870 (= e!1216708 (and tp!543952 tp!543950))))

(declare-fun b!1904869 () Bool)

(assert (=> b!1904869 (= e!1216708 tp_is_empty!9089)))

(assert (= (and b!1903577 ((_ is ElementMatch!5245) (reg!5574 (regex!3820 (h!26858 rules!3198))))) b!1904869))

(assert (= (and b!1903577 ((_ is Concat!9202) (reg!5574 (regex!3820 (h!26858 rules!3198))))) b!1904870))

(assert (= (and b!1903577 ((_ is Star!5245) (reg!5574 (regex!3820 (h!26858 rules!3198))))) b!1904871))

(assert (= (and b!1903577 ((_ is Union!5245) (reg!5574 (regex!3820 (h!26858 rules!3198))))) b!1904872))

(declare-fun b!1904875 () Bool)

(declare-fun e!1216709 () Bool)

(declare-fun tp!543958 () Bool)

(assert (=> b!1904875 (= e!1216709 tp!543958)))

(assert (=> b!1903549 (= tp!543709 e!1216709)))

(declare-fun b!1904876 () Bool)

(declare-fun tp!543956 () Bool)

(declare-fun tp!543959 () Bool)

(assert (=> b!1904876 (= e!1216709 (and tp!543956 tp!543959))))

(declare-fun b!1904874 () Bool)

(declare-fun tp!543957 () Bool)

(declare-fun tp!543955 () Bool)

(assert (=> b!1904874 (= e!1216709 (and tp!543957 tp!543955))))

(declare-fun b!1904873 () Bool)

(assert (=> b!1904873 (= e!1216709 tp_is_empty!9089)))

(assert (= (and b!1903549 ((_ is ElementMatch!5245) (regex!3820 (h!26858 (t!177030 rules!3198))))) b!1904873))

(assert (= (and b!1903549 ((_ is Concat!9202) (regex!3820 (h!26858 (t!177030 rules!3198))))) b!1904874))

(assert (= (and b!1903549 ((_ is Star!5245) (regex!3820 (h!26858 (t!177030 rules!3198))))) b!1904875))

(assert (= (and b!1903549 ((_ is Union!5245) (regex!3820 (h!26858 (t!177030 rules!3198))))) b!1904876))

(declare-fun b!1904879 () Bool)

(declare-fun e!1216710 () Bool)

(declare-fun tp!543963 () Bool)

(assert (=> b!1904879 (= e!1216710 tp!543963)))

(assert (=> b!1903578 (= tp!543737 e!1216710)))

(declare-fun b!1904880 () Bool)

(declare-fun tp!543961 () Bool)

(declare-fun tp!543964 () Bool)

(assert (=> b!1904880 (= e!1216710 (and tp!543961 tp!543964))))

(declare-fun b!1904878 () Bool)

(declare-fun tp!543962 () Bool)

(declare-fun tp!543960 () Bool)

(assert (=> b!1904878 (= e!1216710 (and tp!543962 tp!543960))))

(declare-fun b!1904877 () Bool)

(assert (=> b!1904877 (= e!1216710 tp_is_empty!9089)))

(assert (= (and b!1903578 ((_ is ElementMatch!5245) (regOne!11003 (regex!3820 (h!26858 rules!3198))))) b!1904877))

(assert (= (and b!1903578 ((_ is Concat!9202) (regOne!11003 (regex!3820 (h!26858 rules!3198))))) b!1904878))

(assert (= (and b!1903578 ((_ is Star!5245) (regOne!11003 (regex!3820 (h!26858 rules!3198))))) b!1904879))

(assert (= (and b!1903578 ((_ is Union!5245) (regOne!11003 (regex!3820 (h!26858 rules!3198))))) b!1904880))

(declare-fun b!1904883 () Bool)

(declare-fun e!1216711 () Bool)

(declare-fun tp!543968 () Bool)

(assert (=> b!1904883 (= e!1216711 tp!543968)))

(assert (=> b!1903578 (= tp!543740 e!1216711)))

(declare-fun b!1904884 () Bool)

(declare-fun tp!543966 () Bool)

(declare-fun tp!543969 () Bool)

(assert (=> b!1904884 (= e!1216711 (and tp!543966 tp!543969))))

(declare-fun b!1904882 () Bool)

(declare-fun tp!543967 () Bool)

(declare-fun tp!543965 () Bool)

(assert (=> b!1904882 (= e!1216711 (and tp!543967 tp!543965))))

(declare-fun b!1904881 () Bool)

(assert (=> b!1904881 (= e!1216711 tp_is_empty!9089)))

(assert (= (and b!1903578 ((_ is ElementMatch!5245) (regTwo!11003 (regex!3820 (h!26858 rules!3198))))) b!1904881))

(assert (= (and b!1903578 ((_ is Concat!9202) (regTwo!11003 (regex!3820 (h!26858 rules!3198))))) b!1904882))

(assert (= (and b!1903578 ((_ is Star!5245) (regTwo!11003 (regex!3820 (h!26858 rules!3198))))) b!1904883))

(assert (= (and b!1903578 ((_ is Union!5245) (regTwo!11003 (regex!3820 (h!26858 rules!3198))))) b!1904884))

(declare-fun e!1216713 () Bool)

(declare-fun tp!543972 () Bool)

(declare-fun b!1904885 () Bool)

(declare-fun tp!543970 () Bool)

(assert (=> b!1904885 (= e!1216713 (and (inv!28550 (left!17155 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))))) tp!543970 (inv!28550 (right!17485 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))))) tp!543972))))

(declare-fun b!1904887 () Bool)

(declare-fun e!1216712 () Bool)

(declare-fun tp!543971 () Bool)

(assert (=> b!1904887 (= e!1216712 tp!543971)))

(declare-fun b!1904886 () Bool)

(assert (=> b!1904886 (= e!1216713 (and (inv!28557 (xs!10029 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))))) e!1216712))))

(assert (=> b!1903403 (= tp!543684 (and (inv!28550 (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354)))) e!1216713))))

(assert (= (and b!1903403 ((_ is Node!7135) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))))) b!1904885))

(assert (= b!1904886 b!1904887))

(assert (= (and b!1903403 ((_ is Leaf!10508) (c!309906 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (value!120461 separatorToken!354))))) b!1904886))

(declare-fun m!2336901 () Bool)

(assert (=> b!1904885 m!2336901))

(declare-fun m!2336903 () Bool)

(assert (=> b!1904885 m!2336903))

(declare-fun m!2336905 () Bool)

(assert (=> b!1904886 m!2336905))

(assert (=> b!1903403 m!2334735))

(declare-fun b_lambda!62859 () Bool)

(assert (= b_lambda!62827 (or (and b!1903564 b_free!53619) (and b!1902865 b_free!53599 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1904851 b_free!53631 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1902858 b_free!53595 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1904868 b_free!53635 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) b_lambda!62859)))

(declare-fun b_lambda!62861 () Bool)

(assert (= b_lambda!62857 (or d!581739 b_lambda!62861)))

(declare-fun bs!413790 () Bool)

(declare-fun d!582587 () Bool)

(assert (= bs!413790 (and d!582587 d!581739)))

(assert (=> bs!413790 (= (dynLambda!10437 lambda!74392 (h!26857 tokens!598)) (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 (h!26857 tokens!598)))))

(assert (=> bs!413790 m!2334399))

(assert (=> b!1904753 d!582587))

(declare-fun b_lambda!62863 () Bool)

(assert (= b_lambda!62853 (or (and b!1903564 b_free!53619) (and b!1902865 b_free!53599 (= (toChars!5296 (transformation!3820 (rule!6013 separatorToken!354))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1902864 b_free!53603 (= (toChars!5296 (transformation!3820 (h!26858 rules!3198))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1904851 b_free!53631 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 (t!177029 tokens!598)))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1902858 b_free!53595 (= (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1904868 b_free!53635 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 (t!177030 rules!3198))))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) (and b!1903550 b_free!53615 (= (toChars!5296 (transformation!3820 (h!26858 (t!177030 rules!3198)))) (toChars!5296 (transformation!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))) b_lambda!62863)))

(declare-fun b_lambda!62865 () Bool)

(assert (= b_lambda!62803 (or d!581803 b_lambda!62865)))

(declare-fun bs!413791 () Bool)

(declare-fun d!582589 () Bool)

(assert (= bs!413791 (and d!582589 d!581803)))

(assert (=> bs!413791 (= (dynLambda!10447 lambda!74398 lt!727777) (= (list!8716 (dynLambda!10441 (toChars!5296 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777))) (list!8716 lt!727777)))))

(declare-fun b_lambda!62873 () Bool)

(assert (=> (not b_lambda!62873) (not bs!413791)))

(assert (=> bs!413791 t!177091))

(declare-fun b_and!147803 () Bool)

(assert (= b_and!147783 (and (=> t!177091 result!140384) b_and!147803)))

(assert (=> bs!413791 t!177089))

(declare-fun b_and!147805 () Bool)

(assert (= b_and!147781 (and (=> t!177089 result!140382) b_and!147805)))

(assert (=> bs!413791 t!177346))

(declare-fun b_and!147807 () Bool)

(assert (= b_and!147801 (and (=> t!177346 result!140650) b_and!147807)))

(assert (=> bs!413791 t!177087))

(declare-fun b_and!147809 () Bool)

(assert (= b_and!147775 (and (=> t!177087 result!140380) b_and!147809)))

(assert (=> bs!413791 t!177138))

(declare-fun b_and!147811 () Bool)

(assert (= b_and!147777 (and (=> t!177138 result!140442) b_and!147811)))

(assert (=> bs!413791 t!177128))

(declare-fun b_and!147813 () Bool)

(assert (= b_and!147779 (and (=> t!177128 result!140430) b_and!147813)))

(assert (=> bs!413791 t!177324))

(declare-fun b_and!147815 () Bool)

(assert (= b_and!147797 (and (=> t!177324 result!140628) b_and!147815)))

(declare-fun b_lambda!62875 () Bool)

(assert (=> (not b_lambda!62875) (not bs!413791)))

(assert (=> bs!413791 t!177316))

(declare-fun b_and!147817 () Bool)

(assert (= b_and!147795 (and (=> t!177316 result!140620) b_and!147817)))

(assert (=> bs!413791 t!177075))

(declare-fun b_and!147819 () Bool)

(assert (= b_and!147789 (and (=> t!177075 result!140366) b_and!147819)))

(assert (=> bs!413791 t!177079))

(declare-fun b_and!147821 () Bool)

(assert (= b_and!147787 (and (=> t!177079 result!140372) b_and!147821)))

(assert (=> bs!413791 t!177132))

(declare-fun b_and!147823 () Bool)

(assert (= b_and!147785 (and (=> t!177132 result!140436) b_and!147823)))

(assert (=> bs!413791 t!177077))

(declare-fun b_and!147825 () Bool)

(assert (= b_and!147793 (and (=> t!177077 result!140370) b_and!147825)))

(assert (=> bs!413791 t!177338))

(declare-fun b_and!147827 () Bool)

(assert (= b_and!147799 (and (=> t!177338 result!140642) b_and!147827)))

(assert (=> bs!413791 t!177122))

(declare-fun b_and!147829 () Bool)

(assert (= b_and!147791 (and (=> t!177122 result!140424) b_and!147829)))

(assert (=> bs!413791 m!2334575))

(assert (=> bs!413791 m!2334585))

(assert (=> bs!413791 m!2334575))

(assert (=> bs!413791 m!2334585))

(assert (=> bs!413791 m!2334587))

(assert (=> bs!413791 m!2334189))

(assert (=> d!582075 d!582589))

(declare-fun b_lambda!62867 () Bool)

(assert (= b_lambda!62799 (or b!1902866 b_lambda!62867)))

(declare-fun bs!413792 () Bool)

(declare-fun d!582591 () Bool)

(assert (= bs!413792 (and d!582591 b!1902866)))

(assert (=> bs!413792 (= (dynLambda!10437 lambda!74377 (h!26857 (t!177029 tokens!598))) (not (isSeparator!3820 (rule!6013 (h!26857 (t!177029 tokens!598))))))))

(assert (=> b!1903807 d!582591))

(declare-fun b_lambda!62869 () Bool)

(assert (= b_lambda!62825 (or b!1903392 b_lambda!62869)))

(declare-fun bs!413793 () Bool)

(declare-fun d!582593 () Bool)

(assert (= bs!413793 (and d!582593 b!1903392)))

(assert (=> bs!413793 (= (dynLambda!10437 lambda!74401 (h!26857 (t!177029 tokens!598))) (rulesProduceIndividualToken!1605 thiss!23328 rules!3198 (h!26857 (t!177029 tokens!598))))))

(assert (=> bs!413793 m!2336421))

(assert (=> d!582377 d!582593))

(declare-fun b_lambda!62871 () Bool)

(assert (= b_lambda!62817 (or d!581801 b_lambda!62871)))

(declare-fun bs!413794 () Bool)

(declare-fun d!582595 () Bool)

(assert (= bs!413794 (and d!582595 d!581801)))

(declare-fun res!850580 () Bool)

(declare-fun e!1216714 () Bool)

(assert (=> bs!413794 (=> res!850580 e!1216714)))

(assert (=> bs!413794 (= res!850580 (not (= (list!8716 lt!727777) (list!8716 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))))))))

(assert (=> bs!413794 (= (dynLambda!10448 lambda!74395 lt!727777 (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598)))) e!1216714)))

(declare-fun b!1904888 () Bool)

(assert (=> b!1904888 (= e!1216714 (= (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) lt!727777) (dynLambda!10443 (toValue!5437 (transformation!3820 (rule!6013 (h!26857 tokens!598)))) (seqFromList!2692 (originalCharacters!4627 (h!26857 tokens!598))))))))

(assert (= (and bs!413794 (not res!850580)) b!1904888))

(declare-fun b_lambda!62877 () Bool)

(assert (=> (not b_lambda!62877) (not b!1904888)))

(assert (=> b!1904888 t!177132))

(declare-fun b_and!147831 () Bool)

(assert (= b_and!147823 (and (=> t!177132 result!140436) b_and!147831)))

(assert (=> b!1904888 t!177338))

(declare-fun b_and!147833 () Bool)

(assert (= b_and!147827 (and (=> t!177338 result!140642) b_and!147833)))

(assert (=> b!1904888 t!177122))

(declare-fun b_and!147835 () Bool)

(assert (= b_and!147829 (and (=> t!177122 result!140424) b_and!147835)))

(assert (=> b!1904888 t!177077))

(declare-fun b_and!147837 () Bool)

(assert (= b_and!147825 (and (=> t!177077 result!140370) b_and!147837)))

(assert (=> b!1904888 t!177316))

(declare-fun b_and!147839 () Bool)

(assert (= b_and!147817 (and (=> t!177316 result!140620) b_and!147839)))

(assert (=> b!1904888 t!177075))

(declare-fun b_and!147841 () Bool)

(assert (= b_and!147819 (and (=> t!177075 result!140366) b_and!147841)))

(assert (=> b!1904888 t!177079))

(declare-fun b_and!147843 () Bool)

(assert (= b_and!147821 (and (=> t!177079 result!140372) b_and!147843)))

(declare-fun b_lambda!62879 () Bool)

(assert (=> (not b_lambda!62879) (not b!1904888)))

(assert (=> b!1904888 t!177083))

(declare-fun b_and!147845 () Bool)

(assert (= b_and!147837 (and (=> t!177083 result!140376) b_and!147845)))

(assert (=> b!1904888 t!177085))

(declare-fun b_and!147847 () Bool)

(assert (= b_and!147843 (and (=> t!177085 result!140378) b_and!147847)))

(assert (=> b!1904888 t!177340))

(declare-fun b_and!147849 () Bool)

(assert (= b_and!147833 (and (=> t!177340 result!140644) b_and!147849)))

(assert (=> b!1904888 t!177318))

(declare-fun b_and!147851 () Bool)

(assert (= b_and!147839 (and (=> t!177318 result!140622) b_and!147851)))

(assert (=> b!1904888 t!177081))

(declare-fun b_and!147853 () Bool)

(assert (= b_and!147841 (and (=> t!177081 result!140374) b_and!147853)))

(assert (=> b!1904888 t!177134))

(declare-fun b_and!147855 () Bool)

(assert (= b_and!147831 (and (=> t!177134 result!140438) b_and!147855)))

(assert (=> b!1904888 t!177124))

(declare-fun b_and!147857 () Bool)

(assert (= b_and!147835 (and (=> t!177124 result!140426) b_and!147857)))

(assert (=> bs!413794 m!2334189))

(assert (=> bs!413794 m!2334191))

(assert (=> bs!413794 m!2334573))

(assert (=> b!1904888 m!2334575))

(assert (=> b!1904888 m!2334191))

(assert (=> b!1904888 m!2334577))

(assert (=> d!582317 d!582595))

(check-sat (not d!582373) (not b!1904717) (not b!1904878) (not b!1904787) (not b!1904825) (not d!582427) (not d!581953) (not b!1903801) (not b!1904485) (not b_next!54335) (not b_lambda!62871) (not b!1904782) (not b!1904863) (not b!1904811) (not b!1904123) (not b_lambda!62859) (not b!1904174) (not d!582577) b_and!147857 (not b!1904743) (not b_next!54303) (not bm!117318) (not b!1904816) (not b!1904223) (not b!1904757) (not b!1903681) (not b!1904849) b_and!147805 (not b!1904865) (not b!1904691) (not b!1904819) (not b!1904413) (not bm!117323) (not b_next!54305) (not b_lambda!62783) (not b!1904883) (not b!1904659) (not b!1904417) (not b!1904090) b_and!147849 (not b_lambda!62787) (not tb!116179) (not b!1904860) b_and!147809 (not b!1904710) (not b!1904791) (not d!582461) (not b!1904704) (not b_lambda!62779) (not b!1904050) (not b!1904117) (not b_lambda!62863) (not b_lambda!62861) (not b_lambda!62873) (not d!582363) (not d!582083) (not b!1904516) (not bm!117248) (not b!1904841) (not b!1904769) (not d!582207) (not b!1904240) (not b!1904812) (not b!1904009) (not b!1904669) (not d!582537) (not b!1904325) (not b!1904343) (not b!1904520) (not b!1903105) (not b!1903933) (not b!1904803) (not b!1904690) (not b!1904338) (not b!1904245) (not b!1904761) (not b!1904509) (not d!582413) (not bm!117235) (not b!1904499) (not b!1904120) (not b!1904809) (not d!582367) (not b!1904706) tp_is_empty!9089 (not d!582395) (not b!1904127) (not b!1904265) (not d!582151) (not b!1904884) (not d!582341) (not d!582401) (not b!1904423) (not d!582191) (not b!1904362) (not b!1904744) (not d!582471) (not bm!117320) (not b!1904804) b_and!147811 (not d!582495) (not b!1904088) (not b!1904309) (not bm!117255) (not d!582361) (not b!1904807) (not d!581951) (not d!582197) (not b!1904513) (not b!1904222) (not b_lambda!62855) (not b!1904505) (not d!582493) (not b_lambda!62875) (not b!1904700) (not b!1903946) (not b!1904800) (not b!1903808) (not b!1904518) (not bs!413793) (not b!1904862) (not d!581971) (not d!582365) (not b!1904864) (not b!1904221) (not d!582487) (not d!582531) (not b!1904760) (not b!1903922) (not b!1904511) (not d!582279) (not b!1904850) (not bm!117278) (not b!1904155) (not d!582527) (not b!1904262) (not d!582135) (not b!1904247) (not b!1904765) (not tb!116249) (not b_lambda!62865) (not d!582545) (not bm!117264) (not b!1904054) (not b!1904854) (not d!582329) (not b!1904264) (not b!1903975) (not d!582241) (not b_lambda!62801) (not d!582119) (not b!1904830) (not b!1904842) (not b!1904005) (not b!1904766) (not b!1904049) (not bm!117262) (not b!1904805) (not b!1904872) (not b!1904882) (not b!1904507) b_and!147853 (not b!1904216) (not b!1903852) (not b!1904067) (not b!1904021) (not b!1904421) (not b!1904478) (not b!1904848) (not b!1904276) (not b!1904517) (not b!1903668) (not b!1903942) (not d!582129) (not b_lambda!62781) (not d!582433) (not bm!117315) (not d!582323) (not b!1904418) (not d!582347) (not bm!117316) (not b!1903974) (not b!1904498) (not bm!117249) (not b!1904866) (not tb!116239) (not tb!116303) (not b!1903403) (not b!1904708) (not b!1904481) (not b!1903802) (not b!1904052) (not tb!116199) (not b!1904735) (not d!582269) (not d!582155) (not b!1904342) (not bm!117274) (not b!1904705) (not b!1904324) (not d!582375) (not b!1904483) (not b!1904715) (not b!1904758) (not b!1904169) (not b!1903676) (not bm!117319) (not b!1903803) (not d!582231) (not d!582157) (not d!582509) (not b!1904358) (not b_lambda!62879) (not d!582517) (not b_lambda!62775) (not b!1904726) (not b!1904779) (not d!582317) (not b!1903846) (not b!1904305) (not b!1904684) (not b!1903854) (not bm!117293) (not d!582503) (not d!581965) (not b!1904867) (not bm!117296) (not b!1904366) (not b!1904719) (not d!582199) (not b_lambda!62869) (not b!1904282) b_and!147803 (not b!1904713) (not b!1904875) (not b!1904243) (not b_next!54317) (not b!1904556) (not b_lambda!62811) (not b_next!54301) (not b!1904364) (not d!582357) (not b!1904056) (not b!1904456) (not b!1904768) b_and!147813 (not d!582195) (not b!1903843) (not b!1904885) (not b!1904820) (not d!582295) (not b_lambda!62867) (not b!1904724) (not bm!117314) (not b!1904740) (not b!1904010) (not d!582585) (not b!1904797) (not b!1904813) (not b!1904006) (not b!1904025) (not b!1903678) (not b!1904846) (not b!1904821) (not b!1904178) (not b!1904738) (not b!1904773) (not b!1903958) (not b!1904725) (not bs!413790) (not b!1904721) (not b!1904519) (not b!1904786) (not b!1904776) (not b!1903936) (not b!1904434) (not b!1904824) (not b!1904001) (not b_next!54333) (not d!582189) (not b!1904497) (not b!1904340) (not b_next!54307) (not b!1904702) (not d!582381) (not b!1904337) (not b!1904361) (not d!581973) (not d!581949) (not b!1904729) b_and!147845 (not b!1904874) (not b!1904445) (not b!1904762) (not b!1903944) (not bm!117322) (not b!1904827) (not b!1904795) (not b!1904793) (not b!1904855) (not b!1904792) (not d!582263) (not d!581947) (not b!1904014) (not d!582569) (not d!582075) (not bm!117277) (not tb!116219) (not bm!117303) (not b!1904012) (not bm!117272) (not b_next!54323) (not b!1904451) (not b!1904668) (not b!1904454) (not d!582387) (not b_next!54319) (not b!1904685) (not d!582473) (not b!1904218) (not d!582139) (not b!1904799) (not d!582501) (not d!582187) (not b!1904859) (not d!582049) b_and!147807 (not b!1904341) (not b!1904852) (not d!582571) (not b!1904172) (not d!582519) (not b!1904870) (not b!1904754) (not b!1904858) (not b!1904772) (not b!1904879) (not b!1904887) (not d!582529) (not b!1904886) (not b!1904727) (not b!1904701) (not d!581967) (not b!1903657) (not b!1904458) (not b!1904268) (not d!582183) (not b!1904817) (not b!1904734) (not b_next!54321) (not b!1904880) (not b!1904801) (not b!1903815) (not d!582565) (not d!582579) (not b_lambda!62777) (not b!1904732) (not b_lambda!62821) (not bm!117295) (not b!1904168) (not d!582159) (not b!1904013) (not bm!117253) (not b_lambda!62773) b_and!147855 b_and!147851 (not d!581969) (not b!1904279) (not d!582273) (not b!1904259) (not b!1904845) (not b!1904672) (not b!1904711) (not bm!117247) (not b!1904237) (not b!1904736) (not b!1904217) (not b!1904113) (not b!1903800) (not b!1903948) (not bm!117263) (not b_lambda!62771) (not b!1904308) (not b!1904220) (not d!582267) (not b!1904029) (not b!1903658) (not b!1904742) (not d!582073) (not d!582525) (not b!1904430) (not b_next!54337) (not b!1904261) (not b_lambda!62877) (not b!1904670) (not b!1904839) (not d!582419) (not d!582557) (not b!1904856) (not b_next!54339) (not b!1904069) (not d!582211) (not b!1904876) (not b!1904521) (not b!1904224) (not b!1904823) (not b!1904784) (not b!1904796) (not d!582505) (not d!582343) (not b!1904815) (not b!1904840) (not d!582061) (not b_lambda!62785) b_and!147847 (not b!1904145) (not b!1904657) (not b!1904871) (not b_next!54297) (not d!582499) (not b!1904515) b_and!147815 (not b!1904808) (not d!582339) (not b!1904755) (not b!1904829) (not d!582449) (not d!582411) (not b!1904278) (not b!1904234) (not d!582063) (not d!582469) (not d!582377) (not b!1904065) (not b!1904730) (not d!582091) (not b!1904448) (not b!1903244) (not b!1904828) (not bm!117298) (not d!582243) (not bs!413791) (not b!1904759) (not b_lambda!62807) (not d!582485) (not b!1904763) (not b!1904673) (not b!1904847) (not b!1903849) (not d!582573) (not b!1904154) (not b!1903674) (not d!582321) (not b!1904335) (not b!1904125) (not b!1904683) (not b_next!54299) (not b!1904480) (not b!1904114) (not b!1904304) (not d!582551) (not bm!117309) (not b!1904176) (not b!1903939) (not bs!413794) (not b!1904707) (not b!1904283) (not b!1904339) (not b!1904023) (not b!1903856) (not d!582583) (not b!1904720))
(check-sat (not b_next!54335) b_and!147811 b_and!147853 b_and!147813 b_and!147845 b_and!147807 (not b_next!54321) (not b_next!54337) (not b_next!54339) (not b_next!54299) (not b_next!54303) b_and!147805 b_and!147857 (not b_next!54305) b_and!147849 b_and!147809 b_and!147803 (not b_next!54317) (not b_next!54301) (not b_next!54333) (not b_next!54307) (not b_next!54319) (not b_next!54323) b_and!147855 b_and!147851 (not b_next!54297) b_and!147815 b_and!147847)
