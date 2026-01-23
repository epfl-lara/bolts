; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192256 () Bool)

(assert start!192256)

(declare-fun b!1918487 () Bool)

(declare-fun b_free!54577 () Bool)

(declare-fun b_next!55281 () Bool)

(assert (=> b!1918487 (= b_free!54577 (not b_next!55281))))

(declare-fun tp!547767 () Bool)

(declare-fun b_and!149783 () Bool)

(assert (=> b!1918487 (= tp!547767 b_and!149783)))

(declare-fun b_free!54579 () Bool)

(declare-fun b_next!55283 () Bool)

(assert (=> b!1918487 (= b_free!54579 (not b_next!55283))))

(declare-fun tp!547765 () Bool)

(declare-fun b_and!149785 () Bool)

(assert (=> b!1918487 (= tp!547765 b_and!149785)))

(declare-fun b!1918489 () Bool)

(declare-fun b_free!54581 () Bool)

(declare-fun b_next!55285 () Bool)

(assert (=> b!1918489 (= b_free!54581 (not b_next!55285))))

(declare-fun tp!547774 () Bool)

(declare-fun b_and!149787 () Bool)

(assert (=> b!1918489 (= tp!547774 b_and!149787)))

(declare-fun b_free!54583 () Bool)

(declare-fun b_next!55287 () Bool)

(assert (=> b!1918489 (= b_free!54583 (not b_next!55287))))

(declare-fun tp!547772 () Bool)

(declare-fun b_and!149789 () Bool)

(assert (=> b!1918489 (= tp!547772 b_and!149789)))

(declare-fun b!1918488 () Bool)

(declare-fun b_free!54585 () Bool)

(declare-fun b_next!55289 () Bool)

(assert (=> b!1918488 (= b_free!54585 (not b_next!55289))))

(declare-fun tp!547768 () Bool)

(declare-fun b_and!149791 () Bool)

(assert (=> b!1918488 (= tp!547768 b_and!149791)))

(declare-fun b_free!54587 () Bool)

(declare-fun b_next!55291 () Bool)

(assert (=> b!1918488 (= b_free!54587 (not b_next!55291))))

(declare-fun tp!547776 () Bool)

(declare-fun b_and!149793 () Bool)

(assert (=> b!1918488 (= tp!547776 b_and!149793)))

(declare-fun b!1918471 () Bool)

(declare-fun res!857789 () Bool)

(declare-fun e!1225983 () Bool)

(assert (=> b!1918471 (=> (not res!857789) (not e!1225983))))

(declare-datatypes ((List!21828 0))(
  ( (Nil!21746) (Cons!21746 (h!27147 (_ BitVec 16)) (t!178621 List!21828)) )
))
(declare-datatypes ((TokenValue!4026 0))(
  ( (FloatLiteralValue!8052 (text!28627 List!21828)) (TokenValueExt!4025 (__x!13550 Int)) (Broken!20130 (value!122430 List!21828)) (Object!4107) (End!4026) (Def!4026) (Underscore!4026) (Match!4026) (Else!4026) (Error!4026) (Case!4026) (If!4026) (Extends!4026) (Abstract!4026) (Class!4026) (Val!4026) (DelimiterValue!8052 (del!4086 List!21828)) (KeywordValue!4032 (value!122431 List!21828)) (CommentValue!8052 (value!122432 List!21828)) (WhitespaceValue!8052 (value!122433 List!21828)) (IndentationValue!4026 (value!122434 List!21828)) (String!25247) (Int32!4026) (Broken!20131 (value!122435 List!21828)) (Boolean!4027) (Unit!36129) (OperatorValue!4029 (op!4086 List!21828)) (IdentifierValue!8052 (value!122436 List!21828)) (IdentifierValue!8053 (value!122437 List!21828)) (WhitespaceValue!8053 (value!122438 List!21828)) (True!8052) (False!8052) (Broken!20132 (value!122439 List!21828)) (Broken!20133 (value!122440 List!21828)) (True!8053) (RightBrace!4026) (RightBracket!4026) (Colon!4026) (Null!4026) (Comma!4026) (LeftBracket!4026) (False!8053) (LeftBrace!4026) (ImaginaryLiteralValue!4026 (text!28628 List!21828)) (StringLiteralValue!12078 (value!122441 List!21828)) (EOFValue!4026 (value!122442 List!21828)) (IdentValue!4026 (value!122443 List!21828)) (DelimiterValue!8053 (value!122444 List!21828)) (DedentValue!4026 (value!122445 List!21828)) (NewLineValue!4026 (value!122446 List!21828)) (IntegerValue!12078 (value!122447 (_ BitVec 32)) (text!28629 List!21828)) (IntegerValue!12079 (value!122448 Int) (text!28630 List!21828)) (Times!4026) (Or!4026) (Equal!4026) (Minus!4026) (Broken!20134 (value!122449 List!21828)) (And!4026) (Div!4026) (LessEqual!4026) (Mod!4026) (Concat!9341) (Not!4026) (Plus!4026) (SpaceValue!4026 (value!122450 List!21828)) (IntegerValue!12080 (value!122451 Int) (text!28631 List!21828)) (StringLiteralValue!12079 (text!28632 List!21828)) (FloatLiteralValue!8053 (text!28633 List!21828)) (BytesLiteralValue!4026 (value!122452 List!21828)) (CommentValue!8053 (value!122453 List!21828)) (StringLiteralValue!12080 (value!122454 List!21828)) (ErrorTokenValue!4026 (msg!4087 List!21828)) )
))
(declare-datatypes ((C!10776 0))(
  ( (C!10777 (val!6340 Int)) )
))
(declare-datatypes ((List!21829 0))(
  ( (Nil!21747) (Cons!21747 (h!27148 C!10776) (t!178622 List!21829)) )
))
(declare-datatypes ((Regex!5315 0))(
  ( (ElementMatch!5315 (c!312095 C!10776)) (Concat!9342 (regOne!11142 Regex!5315) (regTwo!11142 Regex!5315)) (EmptyExpr!5315) (Star!5315 (reg!5644 Regex!5315)) (EmptyLang!5315) (Union!5315 (regOne!11143 Regex!5315) (regTwo!11143 Regex!5315)) )
))
(declare-datatypes ((String!25248 0))(
  ( (String!25249 (value!122455 String)) )
))
(declare-datatypes ((IArray!14531 0))(
  ( (IArray!14532 (innerList!7323 List!21829)) )
))
(declare-datatypes ((Conc!7263 0))(
  ( (Node!7263 (left!17342 Conc!7263) (right!17672 Conc!7263) (csize!14756 Int) (cheight!7474 Int)) (Leaf!10671 (xs!10157 IArray!14531) (csize!14757 Int)) (Empty!7263) )
))
(declare-datatypes ((BalanceConc!14342 0))(
  ( (BalanceConc!14343 (c!312096 Conc!7263)) )
))
(declare-datatypes ((TokenValueInjection!7636 0))(
  ( (TokenValueInjection!7637 (toValue!5519 Int) (toChars!5378 Int)) )
))
(declare-datatypes ((Rule!7580 0))(
  ( (Rule!7581 (regex!3890 Regex!5315) (tag!4330 String!25248) (isSeparator!3890 Bool) (transformation!3890 TokenValueInjection!7636)) )
))
(declare-datatypes ((Token!7332 0))(
  ( (Token!7333 (value!122456 TokenValue!4026) (rule!6093 Rule!7580) (size!17036 Int) (originalCharacters!4697 List!21829)) )
))
(declare-datatypes ((List!21830 0))(
  ( (Nil!21748) (Cons!21748 (h!27149 Token!7332) (t!178623 List!21830)) )
))
(declare-fun tokens!598 () List!21830)

(declare-fun lambda!74873 () Int)

(declare-fun forall!4586 (List!21830 Int) Bool)

(assert (=> b!1918471 (= res!857789 (forall!4586 tokens!598 lambda!74873))))

(declare-fun b!1918472 () Bool)

(declare-fun e!1225982 () Bool)

(declare-fun e!1225999 () Bool)

(assert (=> b!1918472 (= e!1225982 e!1225999)))

(declare-fun res!857790 () Bool)

(assert (=> b!1918472 (=> (not res!857790) (not e!1225999))))

(declare-fun lt!735742 () Rule!7580)

(declare-fun lt!735749 () List!21829)

(declare-fun matchR!2601 (Regex!5315 List!21829) Bool)

(assert (=> b!1918472 (= res!857790 (matchR!2601 (regex!3890 lt!735742) lt!735749))))

(declare-datatypes ((Option!4485 0))(
  ( (None!4484) (Some!4484 (v!26557 Rule!7580)) )
))
(declare-fun lt!735746 () Option!4485)

(declare-fun get!6837 (Option!4485) Rule!7580)

(assert (=> b!1918472 (= lt!735742 (get!6837 lt!735746))))

(declare-fun tp!547771 () Bool)

(declare-fun b!1918473 () Bool)

(declare-fun e!1225984 () Bool)

(declare-datatypes ((List!21831 0))(
  ( (Nil!21749) (Cons!21749 (h!27150 Rule!7580) (t!178624 List!21831)) )
))
(declare-fun rules!3198 () List!21831)

(declare-fun e!1226000 () Bool)

(declare-fun inv!28830 (String!25248) Bool)

(declare-fun inv!28833 (TokenValueInjection!7636) Bool)

(assert (=> b!1918473 (= e!1226000 (and tp!547771 (inv!28830 (tag!4330 (h!27150 rules!3198))) (inv!28833 (transformation!3890 (h!27150 rules!3198))) e!1225984))))

(declare-fun b!1918474 () Bool)

(declare-fun e!1225993 () Bool)

(assert (=> b!1918474 (= e!1225983 (not e!1225993))))

(declare-fun res!857782 () Bool)

(assert (=> b!1918474 (=> res!857782 e!1225993)))

(declare-datatypes ((tuple2!20444 0))(
  ( (tuple2!20445 (_1!11691 Token!7332) (_2!11691 List!21829)) )
))
(declare-datatypes ((Option!4486 0))(
  ( (None!4485) (Some!4485 (v!26558 tuple2!20444)) )
))
(declare-fun lt!735748 () Option!4486)

(declare-fun lt!735738 () Bool)

(get-info :version)

(assert (=> b!1918474 (= res!857782 (or (and (not lt!735738) (= (_1!11691 (v!26558 lt!735748)) (h!27149 tokens!598))) (and (not lt!735738) (not (= (_1!11691 (v!26558 lt!735748)) (h!27149 tokens!598)))) ((_ is None!4485) lt!735748)))))

(assert (=> b!1918474 (= lt!735738 (not ((_ is Some!4485) lt!735748)))))

(declare-datatypes ((LexerInterface!3503 0))(
  ( (LexerInterfaceExt!3500 (__x!13551 Int)) (Lexer!3501) )
))
(declare-fun thiss!23328 () LexerInterface!3503)

(declare-fun separatorToken!354 () Token!7332)

(declare-fun maxPrefix!1949 (LexerInterface!3503 List!21831 List!21829) Option!4486)

(declare-fun ++!5845 (List!21829 List!21829) List!21829)

(declare-fun printWithSeparatorTokenWhenNeededList!546 (LexerInterface!3503 List!21831 List!21830 Token!7332) List!21829)

(assert (=> b!1918474 (= lt!735748 (maxPrefix!1949 thiss!23328 rules!3198 (++!5845 lt!735749 (printWithSeparatorTokenWhenNeededList!546 thiss!23328 rules!3198 (t!178623 tokens!598) separatorToken!354))))))

(assert (=> b!1918474 e!1225982))

(declare-fun res!857778 () Bool)

(assert (=> b!1918474 (=> (not res!857778) (not e!1225982))))

(declare-fun isDefined!3783 (Option!4485) Bool)

(assert (=> b!1918474 (= res!857778 (isDefined!3783 lt!735746))))

(declare-fun getRuleFromTag!733 (LexerInterface!3503 List!21831 String!25248) Option!4485)

(assert (=> b!1918474 (= lt!735746 (getRuleFromTag!733 thiss!23328 rules!3198 (tag!4330 (rule!6093 (h!27149 tokens!598)))))))

(declare-datatypes ((Unit!36130 0))(
  ( (Unit!36131) )
))
(declare-fun lt!735741 () Unit!36130)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!733 (LexerInterface!3503 List!21831 List!21829 Token!7332) Unit!36130)

(assert (=> b!1918474 (= lt!735741 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!733 thiss!23328 rules!3198 lt!735749 (h!27149 tokens!598)))))

(declare-fun e!1225985 () Bool)

(assert (=> b!1918474 e!1225985))

(declare-fun res!857781 () Bool)

(assert (=> b!1918474 (=> (not res!857781) (not e!1225985))))

(declare-fun lt!735735 () Option!4486)

(declare-fun isDefined!3784 (Option!4486) Bool)

(assert (=> b!1918474 (= res!857781 (isDefined!3784 lt!735735))))

(assert (=> b!1918474 (= lt!735735 (maxPrefix!1949 thiss!23328 rules!3198 lt!735749))))

(declare-fun lt!735737 () BalanceConc!14342)

(declare-fun list!8822 (BalanceConc!14342) List!21829)

(assert (=> b!1918474 (= lt!735749 (list!8822 lt!735737))))

(declare-fun e!1225987 () Bool)

(assert (=> b!1918474 e!1225987))

(declare-fun res!857783 () Bool)

(assert (=> b!1918474 (=> (not res!857783) (not e!1225987))))

(declare-fun lt!735736 () Option!4485)

(assert (=> b!1918474 (= res!857783 (isDefined!3783 lt!735736))))

(assert (=> b!1918474 (= lt!735736 (getRuleFromTag!733 thiss!23328 rules!3198 (tag!4330 (rule!6093 separatorToken!354))))))

(declare-fun lt!735747 () Unit!36130)

(declare-fun lt!735744 () List!21829)

(assert (=> b!1918474 (= lt!735747 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!733 thiss!23328 rules!3198 lt!735744 separatorToken!354))))

(declare-fun charsOf!2446 (Token!7332) BalanceConc!14342)

(assert (=> b!1918474 (= lt!735744 (list!8822 (charsOf!2446 separatorToken!354)))))

(declare-fun lt!735750 () Unit!36130)

(declare-fun lemmaEqSameImage!598 (TokenValueInjection!7636 BalanceConc!14342 BalanceConc!14342) Unit!36130)

(declare-fun seqFromList!2762 (List!21829) BalanceConc!14342)

(assert (=> b!1918474 (= lt!735750 (lemmaEqSameImage!598 (transformation!3890 (rule!6093 (h!27149 tokens!598))) lt!735737 (seqFromList!2762 (originalCharacters!4697 (h!27149 tokens!598)))))))

(declare-fun lt!735743 () Unit!36130)

(declare-fun lemmaSemiInverse!869 (TokenValueInjection!7636 BalanceConc!14342) Unit!36130)

(assert (=> b!1918474 (= lt!735743 (lemmaSemiInverse!869 (transformation!3890 (rule!6093 (h!27149 tokens!598))) lt!735737))))

(assert (=> b!1918474 (= lt!735737 (charsOf!2446 (h!27149 tokens!598)))))

(declare-fun b!1918475 () Bool)

(declare-fun e!1225997 () Bool)

(declare-fun tp!547775 () Bool)

(declare-fun e!1226001 () Bool)

(declare-fun inv!21 (TokenValue!4026) Bool)

(assert (=> b!1918475 (= e!1226001 (and (inv!21 (value!122456 separatorToken!354)) e!1225997 tp!547775))))

(declare-fun b!1918476 () Bool)

(declare-fun res!857779 () Bool)

(assert (=> b!1918476 (=> (not res!857779) (not e!1225983))))

(assert (=> b!1918476 (= res!857779 ((_ is Cons!21748) tokens!598))))

(declare-fun b!1918477 () Bool)

(declare-fun res!857788 () Bool)

(assert (=> b!1918477 (=> (not res!857788) (not e!1225983))))

(declare-fun rulesInvariant!3110 (LexerInterface!3503 List!21831) Bool)

(assert (=> b!1918477 (= res!857788 (rulesInvariant!3110 thiss!23328 rules!3198))))

(declare-fun b!1918478 () Bool)

(declare-fun res!857777 () Bool)

(assert (=> b!1918478 (=> (not res!857777) (not e!1225983))))

(declare-fun rulesProduceIndividualToken!1675 (LexerInterface!3503 List!21831 Token!7332) Bool)

(assert (=> b!1918478 (= res!857777 (rulesProduceIndividualToken!1675 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1225986 () Bool)

(declare-fun b!1918479 () Bool)

(declare-fun tp!547766 () Bool)

(assert (=> b!1918479 (= e!1225997 (and tp!547766 (inv!28830 (tag!4330 (rule!6093 separatorToken!354))) (inv!28833 (transformation!3890 (rule!6093 separatorToken!354))) e!1225986))))

(declare-fun e!1225994 () Bool)

(declare-fun tp!547770 () Bool)

(declare-fun b!1918480 () Bool)

(declare-fun e!1225991 () Bool)

(declare-fun inv!28834 (Token!7332) Bool)

(assert (=> b!1918480 (= e!1225991 (and (inv!28834 (h!27149 tokens!598)) e!1225994 tp!547770))))

(declare-fun b!1918481 () Bool)

(declare-fun e!1225992 () Bool)

(declare-fun tp!547773 () Bool)

(assert (=> b!1918481 (= e!1225992 (and e!1226000 tp!547773))))

(declare-fun b!1918482 () Bool)

(declare-fun res!857775 () Bool)

(assert (=> b!1918482 (=> (not res!857775) (not e!1225983))))

(assert (=> b!1918482 (= res!857775 (isSeparator!3890 (rule!6093 separatorToken!354)))))

(declare-fun b!1918483 () Bool)

(declare-fun e!1225990 () Bool)

(declare-fun lt!735740 () Rule!7580)

(assert (=> b!1918483 (= e!1225990 (= (rule!6093 separatorToken!354) lt!735740))))

(declare-fun b!1918484 () Bool)

(declare-fun res!857787 () Bool)

(assert (=> b!1918484 (=> (not res!857787) (not e!1225983))))

(declare-fun sepAndNonSepRulesDisjointChars!988 (List!21831 List!21831) Bool)

(assert (=> b!1918484 (= res!857787 (sepAndNonSepRulesDisjointChars!988 rules!3198 rules!3198))))

(declare-fun b!1918485 () Bool)

(assert (=> b!1918485 (= e!1225993 true)))

(declare-fun lt!735739 () Bool)

(declare-fun rulesValidInductive!1318 (LexerInterface!3503 List!21831) Bool)

(assert (=> b!1918485 (= lt!735739 (rulesValidInductive!1318 thiss!23328 rules!3198))))

(declare-fun lt!735745 () List!21829)

(assert (=> b!1918485 (= lt!735745 (printWithSeparatorTokenWhenNeededList!546 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun e!1225996 () Bool)

(declare-fun tp!547764 () Bool)

(declare-fun b!1918486 () Bool)

(assert (=> b!1918486 (= e!1225994 (and (inv!21 (value!122456 (h!27149 tokens!598))) e!1225996 tp!547764))))

(declare-fun res!857784 () Bool)

(assert (=> start!192256 (=> (not res!857784) (not e!1225983))))

(assert (=> start!192256 (= res!857784 ((_ is Lexer!3501) thiss!23328))))

(assert (=> start!192256 e!1225983))

(assert (=> start!192256 true))

(assert (=> start!192256 e!1225992))

(assert (=> start!192256 e!1225991))

(assert (=> start!192256 (and (inv!28834 separatorToken!354) e!1226001)))

(assert (=> b!1918487 (= e!1225984 (and tp!547767 tp!547765))))

(assert (=> b!1918488 (= e!1225986 (and tp!547768 tp!547776))))

(declare-fun e!1225998 () Bool)

(assert (=> b!1918489 (= e!1225998 (and tp!547774 tp!547772))))

(declare-fun b!1918490 () Bool)

(declare-fun get!6838 (Option!4486) tuple2!20444)

(assert (=> b!1918490 (= e!1225985 (= (_1!11691 (get!6838 lt!735735)) (h!27149 tokens!598)))))

(declare-fun b!1918491 () Bool)

(declare-fun res!857776 () Bool)

(assert (=> b!1918491 (=> (not res!857776) (not e!1225983))))

(declare-fun rulesProduceEachTokenIndividuallyList!1234 (LexerInterface!3503 List!21831 List!21830) Bool)

(assert (=> b!1918491 (= res!857776 (rulesProduceEachTokenIndividuallyList!1234 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1918492 () Bool)

(declare-fun res!857780 () Bool)

(assert (=> b!1918492 (=> res!857780 e!1225993)))

(declare-fun isEmpty!13385 (List!21830) Bool)

(assert (=> b!1918492 (= res!857780 (isEmpty!13385 tokens!598))))

(declare-fun b!1918493 () Bool)

(assert (=> b!1918493 (= e!1225999 (= (rule!6093 (h!27149 tokens!598)) lt!735742))))

(declare-fun b!1918494 () Bool)

(declare-fun res!857786 () Bool)

(assert (=> b!1918494 (=> (not res!857786) (not e!1225983))))

(declare-fun isEmpty!13386 (List!21831) Bool)

(assert (=> b!1918494 (= res!857786 (not (isEmpty!13386 rules!3198)))))

(declare-fun b!1918495 () Bool)

(assert (=> b!1918495 (= e!1225987 e!1225990)))

(declare-fun res!857785 () Bool)

(assert (=> b!1918495 (=> (not res!857785) (not e!1225990))))

(assert (=> b!1918495 (= res!857785 (matchR!2601 (regex!3890 lt!735740) lt!735744))))

(assert (=> b!1918495 (= lt!735740 (get!6837 lt!735736))))

(declare-fun tp!547769 () Bool)

(declare-fun b!1918496 () Bool)

(assert (=> b!1918496 (= e!1225996 (and tp!547769 (inv!28830 (tag!4330 (rule!6093 (h!27149 tokens!598)))) (inv!28833 (transformation!3890 (rule!6093 (h!27149 tokens!598)))) e!1225998))))

(assert (= (and start!192256 res!857784) b!1918494))

(assert (= (and b!1918494 res!857786) b!1918477))

(assert (= (and b!1918477 res!857788) b!1918491))

(assert (= (and b!1918491 res!857776) b!1918478))

(assert (= (and b!1918478 res!857777) b!1918482))

(assert (= (and b!1918482 res!857775) b!1918471))

(assert (= (and b!1918471 res!857789) b!1918484))

(assert (= (and b!1918484 res!857787) b!1918476))

(assert (= (and b!1918476 res!857779) b!1918474))

(assert (= (and b!1918474 res!857783) b!1918495))

(assert (= (and b!1918495 res!857785) b!1918483))

(assert (= (and b!1918474 res!857781) b!1918490))

(assert (= (and b!1918474 res!857778) b!1918472))

(assert (= (and b!1918472 res!857790) b!1918493))

(assert (= (and b!1918474 (not res!857782)) b!1918492))

(assert (= (and b!1918492 (not res!857780)) b!1918485))

(assert (= b!1918473 b!1918487))

(assert (= b!1918481 b!1918473))

(assert (= (and start!192256 ((_ is Cons!21749) rules!3198)) b!1918481))

(assert (= b!1918496 b!1918489))

(assert (= b!1918486 b!1918496))

(assert (= b!1918480 b!1918486))

(assert (= (and start!192256 ((_ is Cons!21748) tokens!598)) b!1918480))

(assert (= b!1918479 b!1918488))

(assert (= b!1918475 b!1918479))

(assert (= start!192256 b!1918475))

(declare-fun m!2353871 () Bool)

(assert (=> b!1918494 m!2353871))

(declare-fun m!2353873 () Bool)

(assert (=> b!1918475 m!2353873))

(declare-fun m!2353875 () Bool)

(assert (=> b!1918480 m!2353875))

(declare-fun m!2353877 () Bool)

(assert (=> b!1918490 m!2353877))

(declare-fun m!2353879 () Bool)

(assert (=> b!1918486 m!2353879))

(declare-fun m!2353881 () Bool)

(assert (=> start!192256 m!2353881))

(declare-fun m!2353883 () Bool)

(assert (=> b!1918496 m!2353883))

(declare-fun m!2353885 () Bool)

(assert (=> b!1918496 m!2353885))

(declare-fun m!2353887 () Bool)

(assert (=> b!1918478 m!2353887))

(declare-fun m!2353889 () Bool)

(assert (=> b!1918484 m!2353889))

(declare-fun m!2353891 () Bool)

(assert (=> b!1918485 m!2353891))

(declare-fun m!2353893 () Bool)

(assert (=> b!1918485 m!2353893))

(declare-fun m!2353895 () Bool)

(assert (=> b!1918477 m!2353895))

(declare-fun m!2353897 () Bool)

(assert (=> b!1918492 m!2353897))

(declare-fun m!2353899 () Bool)

(assert (=> b!1918471 m!2353899))

(declare-fun m!2353901 () Bool)

(assert (=> b!1918473 m!2353901))

(declare-fun m!2353903 () Bool)

(assert (=> b!1918473 m!2353903))

(declare-fun m!2353905 () Bool)

(assert (=> b!1918474 m!2353905))

(declare-fun m!2353907 () Bool)

(assert (=> b!1918474 m!2353907))

(declare-fun m!2353909 () Bool)

(assert (=> b!1918474 m!2353909))

(declare-fun m!2353911 () Bool)

(assert (=> b!1918474 m!2353911))

(declare-fun m!2353913 () Bool)

(assert (=> b!1918474 m!2353913))

(declare-fun m!2353915 () Bool)

(assert (=> b!1918474 m!2353915))

(declare-fun m!2353917 () Bool)

(assert (=> b!1918474 m!2353917))

(declare-fun m!2353919 () Bool)

(assert (=> b!1918474 m!2353919))

(declare-fun m!2353921 () Bool)

(assert (=> b!1918474 m!2353921))

(declare-fun m!2353923 () Bool)

(assert (=> b!1918474 m!2353923))

(declare-fun m!2353925 () Bool)

(assert (=> b!1918474 m!2353925))

(declare-fun m!2353927 () Bool)

(assert (=> b!1918474 m!2353927))

(assert (=> b!1918474 m!2353921))

(declare-fun m!2353929 () Bool)

(assert (=> b!1918474 m!2353929))

(declare-fun m!2353931 () Bool)

(assert (=> b!1918474 m!2353931))

(declare-fun m!2353933 () Bool)

(assert (=> b!1918474 m!2353933))

(declare-fun m!2353935 () Bool)

(assert (=> b!1918474 m!2353935))

(declare-fun m!2353937 () Bool)

(assert (=> b!1918474 m!2353937))

(assert (=> b!1918474 m!2353935))

(declare-fun m!2353939 () Bool)

(assert (=> b!1918474 m!2353939))

(assert (=> b!1918474 m!2353919))

(assert (=> b!1918474 m!2353913))

(declare-fun m!2353941 () Bool)

(assert (=> b!1918479 m!2353941))

(declare-fun m!2353943 () Bool)

(assert (=> b!1918479 m!2353943))

(declare-fun m!2353945 () Bool)

(assert (=> b!1918495 m!2353945))

(declare-fun m!2353947 () Bool)

(assert (=> b!1918495 m!2353947))

(declare-fun m!2353949 () Bool)

(assert (=> b!1918491 m!2353949))

(declare-fun m!2353951 () Bool)

(assert (=> b!1918472 m!2353951))

(declare-fun m!2353953 () Bool)

(assert (=> b!1918472 m!2353953))

(check-sat (not b!1918477) (not b!1918474) (not b_next!55287) (not b_next!55281) (not b!1918490) (not b!1918472) (not b!1918479) b_and!149791 (not b!1918473) (not b!1918495) (not b!1918478) (not b!1918496) (not b_next!55291) (not b!1918492) (not b_next!55283) (not b!1918471) (not b_next!55289) b_and!149793 (not b!1918494) (not b!1918481) (not b!1918480) (not b!1918486) (not b!1918491) b_and!149787 (not start!192256) (not b!1918484) b_and!149785 (not b!1918485) b_and!149783 (not b_next!55285) b_and!149789 (not b!1918475))
(check-sat (not b_next!55283) (not b_next!55287) (not b_next!55281) b_and!149791 b_and!149783 (not b_next!55291) (not b_next!55289) b_and!149793 b_and!149787 b_and!149785 (not b_next!55285) b_and!149789)
