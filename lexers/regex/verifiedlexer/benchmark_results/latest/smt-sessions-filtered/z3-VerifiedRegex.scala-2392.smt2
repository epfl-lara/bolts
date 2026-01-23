; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121822 () Bool)

(assert start!121822)

(declare-fun b!1355643 () Bool)

(declare-fun b_free!32995 () Bool)

(declare-fun b_next!33699 () Bool)

(assert (=> b!1355643 (= b_free!32995 (not b_next!33699))))

(declare-fun tp!391334 () Bool)

(declare-fun b_and!90723 () Bool)

(assert (=> b!1355643 (= tp!391334 b_and!90723)))

(declare-fun b_free!32997 () Bool)

(declare-fun b_next!33701 () Bool)

(assert (=> b!1355643 (= b_free!32997 (not b_next!33701))))

(declare-fun tp!391329 () Bool)

(declare-fun b_and!90725 () Bool)

(assert (=> b!1355643 (= tp!391329 b_and!90725)))

(declare-fun b!1355659 () Bool)

(declare-fun b_free!32999 () Bool)

(declare-fun b_next!33703 () Bool)

(assert (=> b!1355659 (= b_free!32999 (not b_next!33703))))

(declare-fun tp!391333 () Bool)

(declare-fun b_and!90727 () Bool)

(assert (=> b!1355659 (= tp!391333 b_and!90727)))

(declare-fun b_free!33001 () Bool)

(declare-fun b_next!33705 () Bool)

(assert (=> b!1355659 (= b_free!33001 (not b_next!33705))))

(declare-fun tp!391336 () Bool)

(declare-fun b_and!90729 () Bool)

(assert (=> b!1355659 (= tp!391336 b_and!90729)))

(declare-fun b!1355675 () Bool)

(declare-fun b_free!33003 () Bool)

(declare-fun b_next!33707 () Bool)

(assert (=> b!1355675 (= b_free!33003 (not b_next!33707))))

(declare-fun tp!391330 () Bool)

(declare-fun b_and!90731 () Bool)

(assert (=> b!1355675 (= tp!391330 b_and!90731)))

(declare-fun b_free!33005 () Bool)

(declare-fun b_next!33709 () Bool)

(assert (=> b!1355675 (= b_free!33005 (not b_next!33709))))

(declare-fun tp!391340 () Bool)

(declare-fun b_and!90733 () Bool)

(assert (=> b!1355675 (= tp!391340 b_and!90733)))

(declare-fun b!1355663 () Bool)

(assert (=> b!1355663 true))

(assert (=> b!1355663 true))

(declare-fun b!1355648 () Bool)

(assert (=> b!1355648 true))

(declare-fun b!1355645 () Bool)

(assert (=> b!1355645 true))

(declare-fun b!1355642 () Bool)

(declare-fun e!867561 () Bool)

(declare-fun e!867551 () Bool)

(assert (=> b!1355642 (= e!867561 e!867551)))

(declare-fun res!610697 () Bool)

(assert (=> b!1355642 (=> (not res!610697) (not e!867551))))

(declare-datatypes ((C!7704 0))(
  ( (C!7705 (val!4412 Int)) )
))
(declare-datatypes ((List!13876 0))(
  ( (Nil!13810) (Cons!13810 (h!19211 C!7704) (t!120343 List!13876)) )
))
(declare-datatypes ((IArray!9101 0))(
  ( (IArray!9102 (innerList!4608 List!13876)) )
))
(declare-datatypes ((Conc!4548 0))(
  ( (Node!4548 (left!11830 Conc!4548) (right!12160 Conc!4548) (csize!9326 Int) (cheight!4759 Int)) (Leaf!6941 (xs!7271 IArray!9101) (csize!9327 Int)) (Empty!4548) )
))
(declare-datatypes ((BalanceConc!9036 0))(
  ( (BalanceConc!9037 (c!222458 Conc!4548)) )
))
(declare-fun lt!448930 () BalanceConc!9036)

(declare-fun size!11287 (BalanceConc!9036) Int)

(assert (=> b!1355642 (= res!610697 (> (size!11287 lt!448930) 0))))

(declare-datatypes ((List!13877 0))(
  ( (Nil!13811) (Cons!13811 (h!19212 (_ BitVec 16)) (t!120344 List!13877)) )
))
(declare-datatypes ((TokenValue!2483 0))(
  ( (FloatLiteralValue!4966 (text!17826 List!13877)) (TokenValueExt!2482 (__x!8795 Int)) (Broken!12415 (value!77807 List!13877)) (Object!2548) (End!2483) (Def!2483) (Underscore!2483) (Match!2483) (Else!2483) (Error!2483) (Case!2483) (If!2483) (Extends!2483) (Abstract!2483) (Class!2483) (Val!2483) (DelimiterValue!4966 (del!2543 List!13877)) (KeywordValue!2489 (value!77808 List!13877)) (CommentValue!4966 (value!77809 List!13877)) (WhitespaceValue!4966 (value!77810 List!13877)) (IndentationValue!2483 (value!77811 List!13877)) (String!16650) (Int32!2483) (Broken!12416 (value!77812 List!13877)) (Boolean!2484) (Unit!19962) (OperatorValue!2486 (op!2543 List!13877)) (IdentifierValue!4966 (value!77813 List!13877)) (IdentifierValue!4967 (value!77814 List!13877)) (WhitespaceValue!4967 (value!77815 List!13877)) (True!4966) (False!4966) (Broken!12417 (value!77816 List!13877)) (Broken!12418 (value!77817 List!13877)) (True!4967) (RightBrace!2483) (RightBracket!2483) (Colon!2483) (Null!2483) (Comma!2483) (LeftBracket!2483) (False!4967) (LeftBrace!2483) (ImaginaryLiteralValue!2483 (text!17827 List!13877)) (StringLiteralValue!7449 (value!77818 List!13877)) (EOFValue!2483 (value!77819 List!13877)) (IdentValue!2483 (value!77820 List!13877)) (DelimiterValue!4967 (value!77821 List!13877)) (DedentValue!2483 (value!77822 List!13877)) (NewLineValue!2483 (value!77823 List!13877)) (IntegerValue!7449 (value!77824 (_ BitVec 32)) (text!17828 List!13877)) (IntegerValue!7450 (value!77825 Int) (text!17829 List!13877)) (Times!2483) (Or!2483) (Equal!2483) (Minus!2483) (Broken!12419 (value!77826 List!13877)) (And!2483) (Div!2483) (LessEqual!2483) (Mod!2483) (Concat!6190) (Not!2483) (Plus!2483) (SpaceValue!2483 (value!77827 List!13877)) (IntegerValue!7451 (value!77828 Int) (text!17830 List!13877)) (StringLiteralValue!7450 (text!17831 List!13877)) (FloatLiteralValue!4967 (text!17832 List!13877)) (BytesLiteralValue!2483 (value!77829 List!13877)) (CommentValue!4967 (value!77830 List!13877)) (StringLiteralValue!7451 (value!77831 List!13877)) (ErrorTokenValue!2483 (msg!2544 List!13877)) )
))
(declare-datatypes ((String!16651 0))(
  ( (String!16652 (value!77832 String)) )
))
(declare-datatypes ((Regex!3707 0))(
  ( (ElementMatch!3707 (c!222459 C!7704)) (Concat!6191 (regOne!7926 Regex!3707) (regTwo!7926 Regex!3707)) (EmptyExpr!3707) (Star!3707 (reg!4036 Regex!3707)) (EmptyLang!3707) (Union!3707 (regOne!7927 Regex!3707) (regTwo!7927 Regex!3707)) )
))
(declare-datatypes ((TokenValueInjection!4626 0))(
  ( (TokenValueInjection!4627 (toValue!3648 Int) (toChars!3507 Int)) )
))
(declare-datatypes ((Rule!4586 0))(
  ( (Rule!4587 (regex!2393 Regex!3707) (tag!2655 String!16651) (isSeparator!2393 Bool) (transformation!2393 TokenValueInjection!4626)) )
))
(declare-datatypes ((Token!4448 0))(
  ( (Token!4449 (value!77833 TokenValue!2483) (rule!4142 Rule!4586) (size!11288 Int) (originalCharacters!3255 List!13876)) )
))
(declare-fun t2!34 () Token!4448)

(declare-fun charsOf!1365 (Token!4448) BalanceConc!9036)

(assert (=> b!1355642 (= lt!448930 (charsOf!1365 t2!34))))

(declare-fun e!867547 () Bool)

(assert (=> b!1355643 (= e!867547 (and tp!391334 tp!391329))))

(declare-fun b!1355644 () Bool)

(declare-fun e!867557 () Bool)

(declare-fun t1!34 () Token!4448)

(declare-fun tp!391335 () Bool)

(declare-fun e!867556 () Bool)

(declare-fun inv!21 (TokenValue!2483) Bool)

(assert (=> b!1355644 (= e!867557 (and (inv!21 (value!77833 t1!34)) e!867556 tp!391335))))

(declare-fun e!867563 () Bool)

(declare-fun e!867548 () Bool)

(assert (=> b!1355645 (= e!867563 e!867548)))

(declare-fun res!610702 () Bool)

(assert (=> b!1355645 (=> res!610702 e!867548)))

(declare-datatypes ((List!13878 0))(
  ( (Nil!13812) (Cons!13812 (h!19213 Rule!4586) (t!120345 List!13878)) )
))
(declare-fun rules!2550 () List!13878)

(declare-fun lambda!57271 () Int)

(declare-fun exists!444 (List!13878 Int) Bool)

(assert (=> b!1355645 (= res!610702 (not (exists!444 rules!2550 lambda!57271)))))

(assert (=> b!1355645 (exists!444 rules!2550 lambda!57271)))

(declare-fun lt!448923 () Regex!3707)

(declare-fun lambda!57269 () Int)

(declare-datatypes ((Unit!19963 0))(
  ( (Unit!19964) )
))
(declare-fun lt!448928 () Unit!19963)

(declare-fun lemmaMapContains!112 (List!13878 Int Regex!3707) Unit!19963)

(assert (=> b!1355645 (= lt!448928 (lemmaMapContains!112 rules!2550 lambda!57269 lt!448923))))

(declare-fun b!1355646 () Bool)

(declare-fun e!867565 () Bool)

(declare-fun e!867558 () Bool)

(assert (=> b!1355646 (= e!867565 e!867558)))

(declare-fun res!610692 () Bool)

(assert (=> b!1355646 (=> res!610692 e!867558)))

(declare-fun lt!448926 () List!13876)

(declare-fun lt!448914 () C!7704)

(declare-fun contains!2555 (List!13876 C!7704) Bool)

(assert (=> b!1355646 (= res!610692 (not (contains!2555 lt!448926 lt!448914)))))

(declare-fun lt!448929 () BalanceConc!9036)

(declare-fun apply!3327 (BalanceConc!9036 Int) C!7704)

(assert (=> b!1355646 (= lt!448914 (apply!3327 lt!448929 0))))

(declare-fun b!1355647 () Bool)

(declare-fun res!610683 () Bool)

(assert (=> b!1355647 (=> res!610683 e!867558)))

(declare-fun lt!448924 () C!7704)

(assert (=> b!1355647 (= res!610683 (not (contains!2555 lt!448926 lt!448924)))))

(declare-fun e!867570 () Bool)

(assert (=> b!1355648 (= e!867558 e!867570)))

(declare-fun res!610706 () Bool)

(assert (=> b!1355648 (=> res!610706 e!867570)))

(declare-fun lambda!57270 () Int)

(declare-datatypes ((List!13879 0))(
  ( (Nil!13813) (Cons!13813 (h!19214 Regex!3707) (t!120346 List!13879)) )
))
(declare-fun exists!445 (List!13879 Int) Bool)

(declare-fun map!3050 (List!13878 Int) List!13879)

(assert (=> b!1355648 (= res!610706 (not (exists!445 (map!3050 rules!2550 lambda!57269) lambda!57270)))))

(declare-fun lt!448916 () List!13879)

(assert (=> b!1355648 (exists!445 lt!448916 lambda!57270)))

(declare-fun lt!448920 () Regex!3707)

(declare-fun lt!448922 () Unit!19963)

(declare-fun lt!448918 () List!13876)

(declare-fun matchRGenUnionSpec!124 (Regex!3707 List!13879 List!13876) Unit!19963)

(assert (=> b!1355648 (= lt!448922 (matchRGenUnionSpec!124 lt!448920 lt!448916 lt!448918))))

(assert (=> b!1355648 (= lt!448916 (map!3050 rules!2550 lambda!57269))))

(declare-fun b!1355649 () Bool)

(declare-fun res!610704 () Bool)

(declare-fun e!867564 () Bool)

(assert (=> b!1355649 (=> res!610704 e!867564)))

(declare-fun contains!2556 (List!13878 Rule!4586) Bool)

(assert (=> b!1355649 (= res!610704 (not (contains!2556 rules!2550 (rule!4142 t1!34))))))

(declare-fun b!1355650 () Bool)

(declare-fun e!867559 () Bool)

(assert (=> b!1355650 (= e!867559 e!867565)))

(declare-fun res!610689 () Bool)

(assert (=> b!1355650 (=> res!610689 e!867565)))

(declare-fun ++!3554 (List!13876 List!13876) List!13876)

(declare-fun getSuffix!555 (List!13876 List!13876) List!13876)

(assert (=> b!1355650 (= res!610689 (not (= lt!448918 (++!3554 lt!448926 (getSuffix!555 lt!448918 lt!448926)))))))

(declare-fun lambda!57268 () Int)

(declare-fun pickWitness!162 (Int) List!13876)

(assert (=> b!1355650 (= lt!448918 (pickWitness!162 lambda!57268))))

(declare-fun e!867553 () Bool)

(declare-fun b!1355651 () Bool)

(declare-fun e!867560 () Bool)

(declare-fun tp!391331 () Bool)

(assert (=> b!1355651 (= e!867553 (and (inv!21 (value!77833 t2!34)) e!867560 tp!391331))))

(declare-fun b!1355652 () Bool)

(declare-fun res!610701 () Bool)

(assert (=> b!1355652 (=> (not res!610701) (not e!867561))))

(declare-datatypes ((LexerInterface!2088 0))(
  ( (LexerInterfaceExt!2085 (__x!8796 Int)) (Lexer!2086) )
))
(declare-fun thiss!19762 () LexerInterface!2088)

(declare-fun rulesProduceIndividualToken!1057 (LexerInterface!2088 List!13878 Token!4448) Bool)

(assert (=> b!1355652 (= res!610701 (rulesProduceIndividualToken!1057 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!391337 () Bool)

(declare-fun e!867552 () Bool)

(declare-fun b!1355653 () Bool)

(declare-fun inv!18153 (String!16651) Bool)

(declare-fun inv!18156 (TokenValueInjection!4626) Bool)

(assert (=> b!1355653 (= e!867552 (and tp!391337 (inv!18153 (tag!2655 (h!19213 rules!2550))) (inv!18156 (transformation!2393 (h!19213 rules!2550))) e!867547))))

(declare-fun tp!391338 () Bool)

(declare-fun b!1355654 () Bool)

(declare-fun e!867555 () Bool)

(assert (=> b!1355654 (= e!867560 (and tp!391338 (inv!18153 (tag!2655 (rule!4142 t2!34))) (inv!18156 (transformation!2393 (rule!4142 t2!34))) e!867555))))

(declare-fun b!1355655 () Bool)

(assert (=> b!1355655 (= e!867570 e!867563)))

(declare-fun res!610685 () Bool)

(assert (=> b!1355655 (=> res!610685 e!867563)))

(declare-fun contains!2557 (List!13879 Regex!3707) Bool)

(assert (=> b!1355655 (= res!610685 (not (contains!2557 (map!3050 rules!2550 lambda!57269) lt!448923)))))

(declare-fun getWitness!332 (List!13879 Int) Regex!3707)

(assert (=> b!1355655 (= lt!448923 (getWitness!332 (map!3050 rules!2550 lambda!57269) lambda!57270))))

(declare-fun b!1355656 () Bool)

(declare-fun res!610690 () Bool)

(assert (=> b!1355656 (=> (not res!610690) (not e!867551))))

(declare-fun sepAndNonSepRulesDisjointChars!766 (List!13878 List!13878) Bool)

(assert (=> b!1355656 (= res!610690 (sepAndNonSepRulesDisjointChars!766 rules!2550 rules!2550))))

(declare-fun b!1355657 () Bool)

(declare-fun res!610698 () Bool)

(assert (=> b!1355657 (=> res!610698 e!867564)))

(declare-fun lt!448925 () List!13876)

(declare-datatypes ((tuple2!13390 0))(
  ( (tuple2!13391 (_1!7581 Token!4448) (_2!7581 List!13876)) )
))
(declare-datatypes ((Option!2648 0))(
  ( (None!2647) (Some!2647 (v!21373 tuple2!13390)) )
))
(declare-fun maxPrefix!1070 (LexerInterface!2088 List!13878 List!13876) Option!2648)

(assert (=> b!1355657 (= res!610698 (not (= (maxPrefix!1070 thiss!19762 rules!2550 lt!448925) (Some!2647 (tuple2!13391 t1!34 Nil!13810)))))))

(declare-fun b!1355658 () Bool)

(declare-datatypes ((List!13880 0))(
  ( (Nil!13814) (Cons!13814 (h!19215 Token!4448) (t!120347 List!13880)) )
))
(declare-datatypes ((IArray!9103 0))(
  ( (IArray!9104 (innerList!4609 List!13880)) )
))
(declare-datatypes ((Conc!4549 0))(
  ( (Node!4549 (left!11831 Conc!4549) (right!12161 Conc!4549) (csize!9328 Int) (cheight!4760 Int)) (Leaf!6942 (xs!7272 IArray!9103) (csize!9329 Int)) (Empty!4549) )
))
(declare-datatypes ((BalanceConc!9038 0))(
  ( (BalanceConc!9039 (c!222460 Conc!4549)) )
))
(declare-fun list!5290 (BalanceConc!9038) List!13880)

(declare-datatypes ((tuple2!13392 0))(
  ( (tuple2!13393 (_1!7582 BalanceConc!9038) (_2!7582 BalanceConc!9036)) )
))
(declare-fun lex!915 (LexerInterface!2088 List!13878 BalanceConc!9036) tuple2!13392)

(declare-fun print!854 (LexerInterface!2088 BalanceConc!9038) BalanceConc!9036)

(declare-fun singletonSeq!1012 (Token!4448) BalanceConc!9038)

(assert (=> b!1355658 (= e!867564 (= (list!5290 (_1!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34))))) (Cons!13814 t2!34 Nil!13814)))))

(declare-fun e!867550 () Bool)

(assert (=> b!1355659 (= e!867550 (and tp!391333 tp!391336))))

(declare-fun b!1355660 () Bool)

(declare-fun res!610687 () Bool)

(assert (=> b!1355660 (=> res!610687 e!867564)))

(declare-fun lt!448915 () tuple2!13392)

(declare-fun isEmpty!8272 (BalanceConc!9036) Bool)

(assert (=> b!1355660 (= res!610687 (not (isEmpty!8272 (_2!7582 lt!448915))))))

(declare-fun res!610691 () Bool)

(assert (=> start!121822 (=> (not res!610691) (not e!867561))))

(get-info :version)

(assert (=> start!121822 (= res!610691 ((_ is Lexer!2086) thiss!19762))))

(assert (=> start!121822 e!867561))

(assert (=> start!121822 true))

(declare-fun e!867566 () Bool)

(assert (=> start!121822 e!867566))

(declare-fun inv!18157 (Token!4448) Bool)

(assert (=> start!121822 (and (inv!18157 t1!34) e!867557)))

(assert (=> start!121822 (and (inv!18157 t2!34) e!867553)))

(declare-fun b!1355661 () Bool)

(declare-fun res!610688 () Bool)

(assert (=> b!1355661 (=> res!610688 e!867558)))

(assert (=> b!1355661 (= res!610688 (not (contains!2555 lt!448918 lt!448914)))))

(declare-fun b!1355662 () Bool)

(declare-fun res!610703 () Bool)

(assert (=> b!1355662 (=> (not res!610703) (not e!867561))))

(declare-fun isEmpty!8273 (List!13878) Bool)

(assert (=> b!1355662 (= res!610703 (not (isEmpty!8273 rules!2550)))))

(declare-fun e!867567 () Bool)

(assert (=> b!1355663 (= e!867567 (not e!867559))))

(declare-fun res!610696 () Bool)

(assert (=> b!1355663 (=> res!610696 e!867559)))

(declare-fun Exists!859 (Int) Bool)

(assert (=> b!1355663 (= res!610696 (not (Exists!859 lambda!57268)))))

(assert (=> b!1355663 (Exists!859 lambda!57268)))

(declare-fun lt!448917 () Unit!19963)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!177 (Regex!3707 List!13876) Unit!19963)

(assert (=> b!1355663 (= lt!448917 (lemmaPrefixMatchThenExistsStringThatMatches!177 lt!448920 lt!448926))))

(declare-fun b!1355664 () Bool)

(declare-fun tp!391332 () Bool)

(assert (=> b!1355664 (= e!867566 (and e!867552 tp!391332))))

(declare-fun tp!391339 () Bool)

(declare-fun b!1355665 () Bool)

(assert (=> b!1355665 (= e!867556 (and tp!391339 (inv!18153 (tag!2655 (rule!4142 t1!34))) (inv!18156 (transformation!2393 (rule!4142 t1!34))) e!867550))))

(declare-fun b!1355666 () Bool)

(declare-fun res!610695 () Bool)

(assert (=> b!1355666 (=> res!610695 e!867558)))

(declare-fun matchR!1700 (Regex!3707 List!13876) Bool)

(assert (=> b!1355666 (= res!610695 (not (matchR!1700 lt!448920 lt!448918)))))

(declare-fun b!1355667 () Bool)

(declare-fun res!610682 () Bool)

(assert (=> b!1355667 (=> (not res!610682) (not e!867561))))

(declare-fun rulesInvariant!1958 (LexerInterface!2088 List!13878) Bool)

(assert (=> b!1355667 (= res!610682 (rulesInvariant!1958 thiss!19762 rules!2550))))

(declare-fun b!1355668 () Bool)

(declare-fun res!610705 () Bool)

(assert (=> b!1355668 (=> (not res!610705) (not e!867551))))

(declare-fun separableTokensPredicate!371 (LexerInterface!2088 Token!4448 Token!4448 List!13878) Bool)

(assert (=> b!1355668 (= res!610705 (not (separableTokensPredicate!371 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1355669 () Bool)

(declare-fun res!610699 () Bool)

(assert (=> b!1355669 (=> (not res!610699) (not e!867561))))

(assert (=> b!1355669 (= res!610699 (not (= (isSeparator!2393 (rule!4142 t1!34)) (isSeparator!2393 (rule!4142 t2!34)))))))

(declare-fun b!1355670 () Bool)

(declare-fun res!610693 () Bool)

(assert (=> b!1355670 (=> res!610693 e!867558)))

(assert (=> b!1355670 (= res!610693 (not (contains!2555 lt!448918 lt!448924)))))

(declare-fun b!1355671 () Bool)

(declare-fun res!610694 () Bool)

(assert (=> b!1355671 (=> (not res!610694) (not e!867561))))

(assert (=> b!1355671 (= res!610694 (rulesProduceIndividualToken!1057 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1355672 () Bool)

(assert (=> b!1355672 (= e!867548 e!867564)))

(declare-fun res!610686 () Bool)

(assert (=> b!1355672 (=> res!610686 e!867564)))

(declare-fun lt!448927 () List!13880)

(assert (=> b!1355672 (= res!610686 (not (= (list!5290 (_1!7582 lt!448915)) lt!448927)))))

(assert (=> b!1355672 (= lt!448927 (Cons!13814 t1!34 Nil!13814))))

(declare-fun lt!448919 () BalanceConc!9036)

(assert (=> b!1355672 (= lt!448915 (lex!915 thiss!19762 rules!2550 lt!448919))))

(assert (=> b!1355672 (= lt!448919 (print!854 thiss!19762 (singletonSeq!1012 t1!34)))))

(declare-fun lt!448921 () Rule!4586)

(declare-fun getWitness!333 (List!13878 Int) Rule!4586)

(assert (=> b!1355672 (= lt!448921 (getWitness!333 rules!2550 lambda!57271))))

(declare-fun b!1355673 () Bool)

(assert (=> b!1355673 (= e!867551 e!867567)))

(declare-fun res!610700 () Bool)

(assert (=> b!1355673 (=> (not res!610700) (not e!867567))))

(declare-fun prefixMatch!216 (Regex!3707 List!13876) Bool)

(assert (=> b!1355673 (= res!610700 (prefixMatch!216 lt!448920 lt!448926))))

(declare-fun rulesRegex!276 (LexerInterface!2088 List!13878) Regex!3707)

(assert (=> b!1355673 (= lt!448920 (rulesRegex!276 thiss!19762 rules!2550))))

(assert (=> b!1355673 (= lt!448926 (++!3554 lt!448925 (Cons!13810 lt!448924 Nil!13810)))))

(assert (=> b!1355673 (= lt!448924 (apply!3327 lt!448930 0))))

(declare-fun list!5291 (BalanceConc!9036) List!13876)

(assert (=> b!1355673 (= lt!448925 (list!5291 lt!448929))))

(assert (=> b!1355673 (= lt!448929 (charsOf!1365 t1!34))))

(declare-fun b!1355674 () Bool)

(declare-fun res!610684 () Bool)

(assert (=> b!1355674 (=> res!610684 e!867564)))

(declare-datatypes ((tuple2!13394 0))(
  ( (tuple2!13395 (_1!7583 List!13880) (_2!7583 List!13876)) )
))
(declare-fun lexList!606 (LexerInterface!2088 List!13878 List!13876) tuple2!13394)

(assert (=> b!1355674 (= res!610684 (not (= (lexList!606 thiss!19762 rules!2550 (list!5291 lt!448919)) (tuple2!13395 lt!448927 Nil!13810))))))

(assert (=> b!1355675 (= e!867555 (and tp!391330 tp!391340))))

(assert (= (and start!121822 res!610691) b!1355662))

(assert (= (and b!1355662 res!610703) b!1355667))

(assert (= (and b!1355667 res!610682) b!1355652))

(assert (= (and b!1355652 res!610701) b!1355671))

(assert (= (and b!1355671 res!610694) b!1355669))

(assert (= (and b!1355669 res!610699) b!1355642))

(assert (= (and b!1355642 res!610697) b!1355656))

(assert (= (and b!1355656 res!610690) b!1355668))

(assert (= (and b!1355668 res!610705) b!1355673))

(assert (= (and b!1355673 res!610700) b!1355663))

(assert (= (and b!1355663 (not res!610696)) b!1355650))

(assert (= (and b!1355650 (not res!610689)) b!1355646))

(assert (= (and b!1355646 (not res!610692)) b!1355661))

(assert (= (and b!1355661 (not res!610688)) b!1355647))

(assert (= (and b!1355647 (not res!610683)) b!1355670))

(assert (= (and b!1355670 (not res!610693)) b!1355666))

(assert (= (and b!1355666 (not res!610695)) b!1355648))

(assert (= (and b!1355648 (not res!610706)) b!1355655))

(assert (= (and b!1355655 (not res!610685)) b!1355645))

(assert (= (and b!1355645 (not res!610702)) b!1355672))

(assert (= (and b!1355672 (not res!610686)) b!1355660))

(assert (= (and b!1355660 (not res!610687)) b!1355674))

(assert (= (and b!1355674 (not res!610684)) b!1355657))

(assert (= (and b!1355657 (not res!610698)) b!1355649))

(assert (= (and b!1355649 (not res!610704)) b!1355658))

(assert (= b!1355653 b!1355643))

(assert (= b!1355664 b!1355653))

(assert (= (and start!121822 ((_ is Cons!13812) rules!2550)) b!1355664))

(assert (= b!1355665 b!1355659))

(assert (= b!1355644 b!1355665))

(assert (= start!121822 b!1355644))

(assert (= b!1355654 b!1355675))

(assert (= b!1355651 b!1355654))

(assert (= start!121822 b!1355651))

(declare-fun m!1518065 () Bool)

(assert (=> b!1355649 m!1518065))

(declare-fun m!1518067 () Bool)

(assert (=> b!1355674 m!1518067))

(assert (=> b!1355674 m!1518067))

(declare-fun m!1518069 () Bool)

(assert (=> b!1355674 m!1518069))

(declare-fun m!1518071 () Bool)

(assert (=> b!1355651 m!1518071))

(declare-fun m!1518073 () Bool)

(assert (=> b!1355667 m!1518073))

(declare-fun m!1518075 () Bool)

(assert (=> b!1355646 m!1518075))

(declare-fun m!1518077 () Bool)

(assert (=> b!1355646 m!1518077))

(declare-fun m!1518079 () Bool)

(assert (=> b!1355654 m!1518079))

(declare-fun m!1518081 () Bool)

(assert (=> b!1355654 m!1518081))

(declare-fun m!1518083 () Bool)

(assert (=> b!1355668 m!1518083))

(declare-fun m!1518085 () Bool)

(assert (=> b!1355653 m!1518085))

(declare-fun m!1518087 () Bool)

(assert (=> b!1355653 m!1518087))

(declare-fun m!1518089 () Bool)

(assert (=> b!1355662 m!1518089))

(declare-fun m!1518091 () Bool)

(assert (=> b!1355663 m!1518091))

(assert (=> b!1355663 m!1518091))

(declare-fun m!1518093 () Bool)

(assert (=> b!1355663 m!1518093))

(declare-fun m!1518095 () Bool)

(assert (=> b!1355650 m!1518095))

(assert (=> b!1355650 m!1518095))

(declare-fun m!1518097 () Bool)

(assert (=> b!1355650 m!1518097))

(declare-fun m!1518099 () Bool)

(assert (=> b!1355650 m!1518099))

(declare-fun m!1518101 () Bool)

(assert (=> b!1355655 m!1518101))

(assert (=> b!1355655 m!1518101))

(declare-fun m!1518103 () Bool)

(assert (=> b!1355655 m!1518103))

(assert (=> b!1355655 m!1518101))

(assert (=> b!1355655 m!1518101))

(declare-fun m!1518105 () Bool)

(assert (=> b!1355655 m!1518105))

(declare-fun m!1518107 () Bool)

(assert (=> b!1355657 m!1518107))

(declare-fun m!1518109 () Bool)

(assert (=> b!1355658 m!1518109))

(assert (=> b!1355658 m!1518109))

(declare-fun m!1518111 () Bool)

(assert (=> b!1355658 m!1518111))

(assert (=> b!1355658 m!1518111))

(declare-fun m!1518113 () Bool)

(assert (=> b!1355658 m!1518113))

(declare-fun m!1518115 () Bool)

(assert (=> b!1355658 m!1518115))

(assert (=> b!1355648 m!1518101))

(assert (=> b!1355648 m!1518101))

(declare-fun m!1518117 () Bool)

(assert (=> b!1355648 m!1518117))

(declare-fun m!1518119 () Bool)

(assert (=> b!1355648 m!1518119))

(assert (=> b!1355648 m!1518101))

(declare-fun m!1518121 () Bool)

(assert (=> b!1355648 m!1518121))

(declare-fun m!1518123 () Bool)

(assert (=> b!1355665 m!1518123))

(declare-fun m!1518125 () Bool)

(assert (=> b!1355665 m!1518125))

(declare-fun m!1518127 () Bool)

(assert (=> start!121822 m!1518127))

(declare-fun m!1518129 () Bool)

(assert (=> start!121822 m!1518129))

(declare-fun m!1518131 () Bool)

(assert (=> b!1355661 m!1518131))

(declare-fun m!1518133 () Bool)

(assert (=> b!1355670 m!1518133))

(declare-fun m!1518135 () Bool)

(assert (=> b!1355673 m!1518135))

(declare-fun m!1518137 () Bool)

(assert (=> b!1355673 m!1518137))

(declare-fun m!1518139 () Bool)

(assert (=> b!1355673 m!1518139))

(declare-fun m!1518141 () Bool)

(assert (=> b!1355673 m!1518141))

(declare-fun m!1518143 () Bool)

(assert (=> b!1355673 m!1518143))

(declare-fun m!1518145 () Bool)

(assert (=> b!1355673 m!1518145))

(declare-fun m!1518147 () Bool)

(assert (=> b!1355660 m!1518147))

(declare-fun m!1518149 () Bool)

(assert (=> b!1355645 m!1518149))

(assert (=> b!1355645 m!1518149))

(declare-fun m!1518151 () Bool)

(assert (=> b!1355645 m!1518151))

(declare-fun m!1518153 () Bool)

(assert (=> b!1355647 m!1518153))

(declare-fun m!1518155 () Bool)

(assert (=> b!1355652 m!1518155))

(declare-fun m!1518157 () Bool)

(assert (=> b!1355666 m!1518157))

(declare-fun m!1518159 () Bool)

(assert (=> b!1355642 m!1518159))

(declare-fun m!1518161 () Bool)

(assert (=> b!1355642 m!1518161))

(declare-fun m!1518163 () Bool)

(assert (=> b!1355656 m!1518163))

(declare-fun m!1518165 () Bool)

(assert (=> b!1355644 m!1518165))

(declare-fun m!1518167 () Bool)

(assert (=> b!1355672 m!1518167))

(declare-fun m!1518169 () Bool)

(assert (=> b!1355672 m!1518169))

(declare-fun m!1518171 () Bool)

(assert (=> b!1355672 m!1518171))

(assert (=> b!1355672 m!1518167))

(declare-fun m!1518173 () Bool)

(assert (=> b!1355672 m!1518173))

(declare-fun m!1518175 () Bool)

(assert (=> b!1355672 m!1518175))

(declare-fun m!1518177 () Bool)

(assert (=> b!1355671 m!1518177))

(check-sat (not b!1355654) (not b!1355650) (not b!1355661) (not b!1355653) (not b!1355648) (not b!1355647) (not b!1355665) (not b!1355645) (not b!1355658) (not b!1355664) (not b!1355668) (not b!1355663) (not b!1355642) (not b!1355644) b_and!90731 (not b!1355671) (not b_next!33703) (not b!1355646) (not b_next!33699) (not b!1355656) b_and!90725 (not start!121822) (not b_next!33701) (not b!1355674) (not b_next!33709) (not b!1355651) b_and!90723 (not b!1355649) (not b!1355673) (not b_next!33705) (not b!1355672) (not b!1355655) b_and!90733 (not b!1355666) (not b!1355667) (not b!1355652) (not b!1355660) (not b!1355662) (not b!1355670) (not b_next!33707) b_and!90727 b_and!90729 (not b!1355657))
(check-sat b_and!90731 (not b_next!33703) (not b_next!33699) b_and!90725 (not b_next!33701) b_and!90733 b_and!90729 (not b_next!33709) b_and!90723 (not b_next!33705) (not b_next!33707) b_and!90727)
(get-model)

(declare-fun bs!333873 () Bool)

(declare-fun d!384123 () Bool)

(assert (= bs!333873 (and d!384123 b!1355648)))

(declare-fun lambda!57274 () Int)

(assert (=> bs!333873 (not (= lambda!57274 lambda!57270))))

(assert (=> d!384123 true))

(declare-fun order!8339 () Int)

(declare-fun dynLambda!6178 (Int Int) Int)

(assert (=> d!384123 (< (dynLambda!6178 order!8339 lambda!57270) (dynLambda!6178 order!8339 lambda!57274))))

(declare-fun forall!3369 (List!13879 Int) Bool)

(assert (=> d!384123 (= (exists!445 (map!3050 rules!2550 lambda!57269) lambda!57270) (not (forall!3369 (map!3050 rules!2550 lambda!57269) lambda!57274)))))

(declare-fun bs!333874 () Bool)

(assert (= bs!333874 d!384123))

(assert (=> bs!333874 m!1518101))

(declare-fun m!1518179 () Bool)

(assert (=> bs!333874 m!1518179))

(assert (=> b!1355648 d!384123))

(declare-fun d!384125 () Bool)

(declare-fun lt!448933 () List!13879)

(declare-fun size!11294 (List!13879) Int)

(declare-fun size!11295 (List!13878) Int)

(assert (=> d!384125 (= (size!11294 lt!448933) (size!11295 rules!2550))))

(declare-fun e!867573 () List!13879)

(assert (=> d!384125 (= lt!448933 e!867573)))

(declare-fun c!222463 () Bool)

(assert (=> d!384125 (= c!222463 ((_ is Nil!13812) rules!2550))))

(assert (=> d!384125 (= (map!3050 rules!2550 lambda!57269) lt!448933)))

(declare-fun b!1355690 () Bool)

(assert (=> b!1355690 (= e!867573 Nil!13813)))

(declare-fun b!1355691 () Bool)

(declare-fun $colon$colon!189 (List!13879 Regex!3707) List!13879)

(declare-fun dynLambda!6179 (Int Rule!4586) Regex!3707)

(assert (=> b!1355691 (= e!867573 ($colon$colon!189 (map!3050 (t!120345 rules!2550) lambda!57269) (dynLambda!6179 lambda!57269 (h!19213 rules!2550))))))

(assert (= (and d!384125 c!222463) b!1355690))

(assert (= (and d!384125 (not c!222463)) b!1355691))

(declare-fun b_lambda!40751 () Bool)

(assert (=> (not b_lambda!40751) (not b!1355691)))

(declare-fun m!1518181 () Bool)

(assert (=> d!384125 m!1518181))

(declare-fun m!1518183 () Bool)

(assert (=> d!384125 m!1518183))

(declare-fun m!1518185 () Bool)

(assert (=> b!1355691 m!1518185))

(declare-fun m!1518187 () Bool)

(assert (=> b!1355691 m!1518187))

(assert (=> b!1355691 m!1518185))

(assert (=> b!1355691 m!1518187))

(declare-fun m!1518189 () Bool)

(assert (=> b!1355691 m!1518189))

(assert (=> b!1355648 d!384125))

(declare-fun bs!333875 () Bool)

(declare-fun d!384127 () Bool)

(assert (= bs!333875 (and d!384127 b!1355648)))

(declare-fun lambda!57279 () Int)

(assert (=> bs!333875 (not (= lambda!57279 lambda!57270))))

(declare-fun bs!333876 () Bool)

(assert (= bs!333876 (and d!384127 d!384123)))

(assert (=> bs!333876 (not (= lambda!57279 lambda!57274))))

(declare-fun lambda!57280 () Int)

(assert (=> bs!333875 (= lambda!57280 lambda!57270)))

(assert (=> bs!333876 (not (= lambda!57280 lambda!57274))))

(declare-fun bs!333877 () Bool)

(assert (= bs!333877 d!384127))

(assert (=> bs!333877 (not (= lambda!57280 lambda!57279))))

(assert (=> d!384127 true))

(assert (=> d!384127 (= (matchR!1700 lt!448920 lt!448918) (exists!445 lt!448916 lambda!57280))))

(declare-fun lt!448936 () Unit!19963)

(declare-fun choose!8333 (Regex!3707 List!13879 List!13876) Unit!19963)

(assert (=> d!384127 (= lt!448936 (choose!8333 lt!448920 lt!448916 lt!448918))))

(assert (=> d!384127 (forall!3369 lt!448916 lambda!57279)))

(assert (=> d!384127 (= (matchRGenUnionSpec!124 lt!448920 lt!448916 lt!448918) lt!448936)))

(assert (=> bs!333877 m!1518157))

(declare-fun m!1518191 () Bool)

(assert (=> bs!333877 m!1518191))

(declare-fun m!1518193 () Bool)

(assert (=> bs!333877 m!1518193))

(declare-fun m!1518195 () Bool)

(assert (=> bs!333877 m!1518195))

(assert (=> b!1355648 d!384127))

(declare-fun bs!333878 () Bool)

(declare-fun d!384129 () Bool)

(assert (= bs!333878 (and d!384129 b!1355648)))

(declare-fun lambda!57281 () Int)

(assert (=> bs!333878 (not (= lambda!57281 lambda!57270))))

(declare-fun bs!333879 () Bool)

(assert (= bs!333879 (and d!384129 d!384123)))

(assert (=> bs!333879 (= lambda!57281 lambda!57274)))

(declare-fun bs!333880 () Bool)

(assert (= bs!333880 (and d!384129 d!384127)))

(assert (=> bs!333880 (not (= lambda!57281 lambda!57279))))

(assert (=> bs!333880 (not (= lambda!57281 lambda!57280))))

(assert (=> d!384129 true))

(assert (=> d!384129 (< (dynLambda!6178 order!8339 lambda!57270) (dynLambda!6178 order!8339 lambda!57281))))

(assert (=> d!384129 (= (exists!445 lt!448916 lambda!57270) (not (forall!3369 lt!448916 lambda!57281)))))

(declare-fun bs!333881 () Bool)

(assert (= bs!333881 d!384129))

(declare-fun m!1518197 () Bool)

(assert (=> bs!333881 m!1518197))

(assert (=> b!1355648 d!384129))

(declare-fun d!384131 () Bool)

(declare-fun lt!448939 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1989 (List!13876) (InoxSet C!7704))

(assert (=> d!384131 (= lt!448939 (select (content!1989 lt!448926) lt!448924))))

(declare-fun e!867581 () Bool)

(assert (=> d!384131 (= lt!448939 e!867581)))

(declare-fun res!610723 () Bool)

(assert (=> d!384131 (=> (not res!610723) (not e!867581))))

(assert (=> d!384131 (= res!610723 ((_ is Cons!13810) lt!448926))))

(assert (=> d!384131 (= (contains!2555 lt!448926 lt!448924) lt!448939)))

(declare-fun b!1355698 () Bool)

(declare-fun e!867580 () Bool)

(assert (=> b!1355698 (= e!867581 e!867580)))

(declare-fun res!610724 () Bool)

(assert (=> b!1355698 (=> res!610724 e!867580)))

(assert (=> b!1355698 (= res!610724 (= (h!19211 lt!448926) lt!448924))))

(declare-fun b!1355699 () Bool)

(assert (=> b!1355699 (= e!867580 (contains!2555 (t!120343 lt!448926) lt!448924))))

(assert (= (and d!384131 res!610723) b!1355698))

(assert (= (and b!1355698 (not res!610724)) b!1355699))

(declare-fun m!1518199 () Bool)

(assert (=> d!384131 m!1518199))

(declare-fun m!1518201 () Bool)

(assert (=> d!384131 m!1518201))

(declare-fun m!1518203 () Bool)

(assert (=> b!1355699 m!1518203))

(assert (=> b!1355647 d!384131))

(declare-fun d!384133 () Bool)

(declare-fun prefixMatchZipperSequence!239 (Regex!3707 BalanceConc!9036) Bool)

(declare-fun ++!3555 (BalanceConc!9036 BalanceConc!9036) BalanceConc!9036)

(declare-fun singletonSeq!1013 (C!7704) BalanceConc!9036)

(assert (=> d!384133 (= (separableTokensPredicate!371 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!239 (rulesRegex!276 thiss!19762 rules!2550) (++!3555 (charsOf!1365 t1!34) (singletonSeq!1013 (apply!3327 (charsOf!1365 t2!34) 0))))))))

(declare-fun bs!333883 () Bool)

(assert (= bs!333883 d!384133))

(assert (=> bs!333883 m!1518161))

(declare-fun m!1518241 () Bool)

(assert (=> bs!333883 m!1518241))

(assert (=> bs!333883 m!1518241))

(declare-fun m!1518243 () Bool)

(assert (=> bs!333883 m!1518243))

(assert (=> bs!333883 m!1518161))

(assert (=> bs!333883 m!1518141))

(assert (=> bs!333883 m!1518137))

(assert (=> bs!333883 m!1518243))

(declare-fun m!1518245 () Bool)

(assert (=> bs!333883 m!1518245))

(assert (=> bs!333883 m!1518137))

(assert (=> bs!333883 m!1518141))

(assert (=> bs!333883 m!1518245))

(declare-fun m!1518247 () Bool)

(assert (=> bs!333883 m!1518247))

(assert (=> b!1355668 d!384133))

(declare-fun d!384143 () Bool)

(declare-fun lt!448959 () Bool)

(assert (=> d!384143 (= lt!448959 (select (content!1989 lt!448926) lt!448914))))

(declare-fun e!867606 () Bool)

(assert (=> d!384143 (= lt!448959 e!867606)))

(declare-fun res!610744 () Bool)

(assert (=> d!384143 (=> (not res!610744) (not e!867606))))

(assert (=> d!384143 (= res!610744 ((_ is Cons!13810) lt!448926))))

(assert (=> d!384143 (= (contains!2555 lt!448926 lt!448914) lt!448959)))

(declare-fun b!1355739 () Bool)

(declare-fun e!867605 () Bool)

(assert (=> b!1355739 (= e!867606 e!867605)))

(declare-fun res!610745 () Bool)

(assert (=> b!1355739 (=> res!610745 e!867605)))

(assert (=> b!1355739 (= res!610745 (= (h!19211 lt!448926) lt!448914))))

(declare-fun b!1355740 () Bool)

(assert (=> b!1355740 (= e!867605 (contains!2555 (t!120343 lt!448926) lt!448914))))

(assert (= (and d!384143 res!610744) b!1355739))

(assert (= (and b!1355739 (not res!610745)) b!1355740))

(assert (=> d!384143 m!1518199))

(declare-fun m!1518249 () Bool)

(assert (=> d!384143 m!1518249))

(declare-fun m!1518251 () Bool)

(assert (=> b!1355740 m!1518251))

(assert (=> b!1355646 d!384143))

(declare-fun d!384145 () Bool)

(declare-fun lt!448966 () C!7704)

(declare-fun apply!3331 (List!13876 Int) C!7704)

(assert (=> d!384145 (= lt!448966 (apply!3331 (list!5291 lt!448929) 0))))

(declare-fun apply!3332 (Conc!4548 Int) C!7704)

(assert (=> d!384145 (= lt!448966 (apply!3332 (c!222458 lt!448929) 0))))

(declare-fun e!867613 () Bool)

(assert (=> d!384145 e!867613))

(declare-fun res!610750 () Bool)

(assert (=> d!384145 (=> (not res!610750) (not e!867613))))

(assert (=> d!384145 (= res!610750 (<= 0 0))))

(assert (=> d!384145 (= (apply!3327 lt!448929 0) lt!448966)))

(declare-fun b!1355749 () Bool)

(assert (=> b!1355749 (= e!867613 (< 0 (size!11287 lt!448929)))))

(assert (= (and d!384145 res!610750) b!1355749))

(assert (=> d!384145 m!1518145))

(assert (=> d!384145 m!1518145))

(declare-fun m!1518263 () Bool)

(assert (=> d!384145 m!1518263))

(declare-fun m!1518265 () Bool)

(assert (=> d!384145 m!1518265))

(declare-fun m!1518267 () Bool)

(assert (=> b!1355749 m!1518267))

(assert (=> b!1355646 d!384145))

(declare-fun d!384149 () Bool)

(declare-fun res!610753 () Bool)

(declare-fun e!867616 () Bool)

(assert (=> d!384149 (=> (not res!610753) (not e!867616))))

(declare-fun rulesValid!884 (LexerInterface!2088 List!13878) Bool)

(assert (=> d!384149 (= res!610753 (rulesValid!884 thiss!19762 rules!2550))))

(assert (=> d!384149 (= (rulesInvariant!1958 thiss!19762 rules!2550) e!867616)))

(declare-fun b!1355752 () Bool)

(declare-datatypes ((List!13881 0))(
  ( (Nil!13815) (Cons!13815 (h!19216 String!16651) (t!120384 List!13881)) )
))
(declare-fun noDuplicateTag!884 (LexerInterface!2088 List!13878 List!13881) Bool)

(assert (=> b!1355752 (= e!867616 (noDuplicateTag!884 thiss!19762 rules!2550 Nil!13815))))

(assert (= (and d!384149 res!610753) b!1355752))

(declare-fun m!1518277 () Bool)

(assert (=> d!384149 m!1518277))

(declare-fun m!1518279 () Bool)

(assert (=> b!1355752 m!1518279))

(assert (=> b!1355667 d!384149))

(declare-fun bs!333885 () Bool)

(declare-fun d!384153 () Bool)

(assert (= bs!333885 (and d!384153 b!1355645)))

(declare-fun lambda!57284 () Int)

(assert (=> bs!333885 (not (= lambda!57284 lambda!57271))))

(assert (=> d!384153 true))

(declare-fun order!8341 () Int)

(declare-fun dynLambda!6180 (Int Int) Int)

(assert (=> d!384153 (< (dynLambda!6180 order!8341 lambda!57271) (dynLambda!6180 order!8341 lambda!57284))))

(declare-fun forall!3371 (List!13878 Int) Bool)

(assert (=> d!384153 (= (exists!444 rules!2550 lambda!57271) (not (forall!3371 rules!2550 lambda!57284)))))

(declare-fun bs!333886 () Bool)

(assert (= bs!333886 d!384153))

(declare-fun m!1518281 () Bool)

(assert (=> bs!333886 m!1518281))

(assert (=> b!1355645 d!384153))

(declare-fun bs!333887 () Bool)

(declare-fun d!384155 () Bool)

(assert (= bs!333887 (and d!384155 b!1355645)))

(declare-fun lambda!57287 () Int)

(assert (=> bs!333887 (not (= lambda!57287 lambda!57271))))

(declare-fun bs!333888 () Bool)

(assert (= bs!333888 (and d!384155 d!384153)))

(assert (=> bs!333888 (not (= lambda!57287 lambda!57284))))

(assert (=> d!384155 true))

(assert (=> d!384155 true))

(declare-fun order!8343 () Int)

(declare-fun dynLambda!6182 (Int Int) Int)

(assert (=> d!384155 (< (dynLambda!6182 order!8343 lambda!57269) (dynLambda!6180 order!8341 lambda!57287))))

(assert (=> d!384155 (exists!444 rules!2550 lambda!57287)))

(declare-fun lt!448970 () Unit!19963)

(declare-fun choose!8335 (List!13878 Int Regex!3707) Unit!19963)

(assert (=> d!384155 (= lt!448970 (choose!8335 rules!2550 lambda!57269 lt!448923))))

(assert (=> d!384155 (contains!2557 (map!3050 rules!2550 lambda!57269) lt!448923)))

(assert (=> d!384155 (= (lemmaMapContains!112 rules!2550 lambda!57269 lt!448923) lt!448970)))

(declare-fun bs!333889 () Bool)

(assert (= bs!333889 d!384155))

(declare-fun m!1518283 () Bool)

(assert (=> bs!333889 m!1518283))

(declare-fun m!1518285 () Bool)

(assert (=> bs!333889 m!1518285))

(assert (=> bs!333889 m!1518101))

(assert (=> bs!333889 m!1518101))

(assert (=> bs!333889 m!1518103))

(assert (=> b!1355645 d!384155))

(declare-fun d!384157 () Bool)

(declare-fun res!610758 () Bool)

(declare-fun e!867619 () Bool)

(assert (=> d!384157 (=> (not res!610758) (not e!867619))))

(declare-fun isEmpty!8277 (List!13876) Bool)

(assert (=> d!384157 (= res!610758 (not (isEmpty!8277 (originalCharacters!3255 t1!34))))))

(assert (=> d!384157 (= (inv!18157 t1!34) e!867619)))

(declare-fun b!1355763 () Bool)

(declare-fun res!610759 () Bool)

(assert (=> b!1355763 (=> (not res!610759) (not e!867619))))

(declare-fun dynLambda!6183 (Int TokenValue!2483) BalanceConc!9036)

(assert (=> b!1355763 (= res!610759 (= (originalCharacters!3255 t1!34) (list!5291 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (value!77833 t1!34)))))))

(declare-fun b!1355764 () Bool)

(declare-fun size!11297 (List!13876) Int)

(assert (=> b!1355764 (= e!867619 (= (size!11288 t1!34) (size!11297 (originalCharacters!3255 t1!34))))))

(assert (= (and d!384157 res!610758) b!1355763))

(assert (= (and b!1355763 res!610759) b!1355764))

(declare-fun b_lambda!40759 () Bool)

(assert (=> (not b_lambda!40759) (not b!1355763)))

(declare-fun tb!71233 () Bool)

(declare-fun t!120350 () Bool)

(assert (=> (and b!1355643 (= (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toChars!3507 (transformation!2393 (rule!4142 t1!34)))) t!120350) tb!71233))

(declare-fun b!1355769 () Bool)

(declare-fun e!867622 () Bool)

(declare-fun tp!391343 () Bool)

(declare-fun inv!18160 (Conc!4548) Bool)

(assert (=> b!1355769 (= e!867622 (and (inv!18160 (c!222458 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (value!77833 t1!34)))) tp!391343))))

(declare-fun result!86582 () Bool)

(declare-fun inv!18161 (BalanceConc!9036) Bool)

(assert (=> tb!71233 (= result!86582 (and (inv!18161 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (value!77833 t1!34))) e!867622))))

(assert (= tb!71233 b!1355769))

(declare-fun m!1518287 () Bool)

(assert (=> b!1355769 m!1518287))

(declare-fun m!1518289 () Bool)

(assert (=> tb!71233 m!1518289))

(assert (=> b!1355763 t!120350))

(declare-fun b_and!90735 () Bool)

(assert (= b_and!90725 (and (=> t!120350 result!86582) b_and!90735)))

(declare-fun t!120352 () Bool)

(declare-fun tb!71235 () Bool)

(assert (=> (and b!1355659 (= (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (toChars!3507 (transformation!2393 (rule!4142 t1!34)))) t!120352) tb!71235))

(declare-fun result!86586 () Bool)

(assert (= result!86586 result!86582))

(assert (=> b!1355763 t!120352))

(declare-fun b_and!90737 () Bool)

(assert (= b_and!90729 (and (=> t!120352 result!86586) b_and!90737)))

(declare-fun tb!71237 () Bool)

(declare-fun t!120354 () Bool)

(assert (=> (and b!1355675 (= (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (toChars!3507 (transformation!2393 (rule!4142 t1!34)))) t!120354) tb!71237))

(declare-fun result!86588 () Bool)

(assert (= result!86588 result!86582))

(assert (=> b!1355763 t!120354))

(declare-fun b_and!90739 () Bool)

(assert (= b_and!90733 (and (=> t!120354 result!86588) b_and!90739)))

(declare-fun m!1518291 () Bool)

(assert (=> d!384157 m!1518291))

(declare-fun m!1518293 () Bool)

(assert (=> b!1355763 m!1518293))

(assert (=> b!1355763 m!1518293))

(declare-fun m!1518295 () Bool)

(assert (=> b!1355763 m!1518295))

(declare-fun m!1518297 () Bool)

(assert (=> b!1355764 m!1518297))

(assert (=> start!121822 d!384157))

(declare-fun d!384159 () Bool)

(declare-fun res!610760 () Bool)

(declare-fun e!867623 () Bool)

(assert (=> d!384159 (=> (not res!610760) (not e!867623))))

(assert (=> d!384159 (= res!610760 (not (isEmpty!8277 (originalCharacters!3255 t2!34))))))

(assert (=> d!384159 (= (inv!18157 t2!34) e!867623)))

(declare-fun b!1355770 () Bool)

(declare-fun res!610761 () Bool)

(assert (=> b!1355770 (=> (not res!610761) (not e!867623))))

(assert (=> b!1355770 (= res!610761 (= (originalCharacters!3255 t2!34) (list!5291 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (value!77833 t2!34)))))))

(declare-fun b!1355771 () Bool)

(assert (=> b!1355771 (= e!867623 (= (size!11288 t2!34) (size!11297 (originalCharacters!3255 t2!34))))))

(assert (= (and d!384159 res!610760) b!1355770))

(assert (= (and b!1355770 res!610761) b!1355771))

(declare-fun b_lambda!40761 () Bool)

(assert (=> (not b_lambda!40761) (not b!1355770)))

(declare-fun t!120356 () Bool)

(declare-fun tb!71239 () Bool)

(assert (=> (and b!1355643 (= (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toChars!3507 (transformation!2393 (rule!4142 t2!34)))) t!120356) tb!71239))

(declare-fun b!1355772 () Bool)

(declare-fun e!867624 () Bool)

(declare-fun tp!391344 () Bool)

(assert (=> b!1355772 (= e!867624 (and (inv!18160 (c!222458 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (value!77833 t2!34)))) tp!391344))))

(declare-fun result!86590 () Bool)

(assert (=> tb!71239 (= result!86590 (and (inv!18161 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (value!77833 t2!34))) e!867624))))

(assert (= tb!71239 b!1355772))

(declare-fun m!1518299 () Bool)

(assert (=> b!1355772 m!1518299))

(declare-fun m!1518301 () Bool)

(assert (=> tb!71239 m!1518301))

(assert (=> b!1355770 t!120356))

(declare-fun b_and!90741 () Bool)

(assert (= b_and!90735 (and (=> t!120356 result!86590) b_and!90741)))

(declare-fun tb!71241 () Bool)

(declare-fun t!120358 () Bool)

(assert (=> (and b!1355659 (= (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (toChars!3507 (transformation!2393 (rule!4142 t2!34)))) t!120358) tb!71241))

(declare-fun result!86592 () Bool)

(assert (= result!86592 result!86590))

(assert (=> b!1355770 t!120358))

(declare-fun b_and!90743 () Bool)

(assert (= b_and!90737 (and (=> t!120358 result!86592) b_and!90743)))

(declare-fun t!120360 () Bool)

(declare-fun tb!71243 () Bool)

(assert (=> (and b!1355675 (= (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (toChars!3507 (transformation!2393 (rule!4142 t2!34)))) t!120360) tb!71243))

(declare-fun result!86594 () Bool)

(assert (= result!86594 result!86590))

(assert (=> b!1355770 t!120360))

(declare-fun b_and!90745 () Bool)

(assert (= b_and!90739 (and (=> t!120360 result!86594) b_and!90745)))

(declare-fun m!1518303 () Bool)

(assert (=> d!384159 m!1518303))

(declare-fun m!1518305 () Bool)

(assert (=> b!1355770 m!1518305))

(assert (=> b!1355770 m!1518305))

(declare-fun m!1518307 () Bool)

(assert (=> b!1355770 m!1518307))

(declare-fun m!1518309 () Bool)

(assert (=> b!1355771 m!1518309))

(assert (=> start!121822 d!384159))

(declare-fun b!1355801 () Bool)

(declare-fun e!867641 () Bool)

(declare-fun e!867639 () Bool)

(assert (=> b!1355801 (= e!867641 e!867639)))

(declare-fun res!610784 () Bool)

(assert (=> b!1355801 (=> res!610784 e!867639)))

(declare-fun call!91240 () Bool)

(assert (=> b!1355801 (= res!610784 call!91240)))

(declare-fun b!1355802 () Bool)

(declare-fun e!867642 () Bool)

(declare-fun e!867644 () Bool)

(assert (=> b!1355802 (= e!867642 e!867644)))

(declare-fun c!222483 () Bool)

(assert (=> b!1355802 (= c!222483 ((_ is EmptyLang!3707) lt!448920))))

(declare-fun b!1355803 () Bool)

(declare-fun lt!448973 () Bool)

(assert (=> b!1355803 (= e!867644 (not lt!448973))))

(declare-fun b!1355804 () Bool)

(declare-fun e!867645 () Bool)

(assert (=> b!1355804 (= e!867645 e!867641)))

(declare-fun res!610779 () Bool)

(assert (=> b!1355804 (=> (not res!610779) (not e!867641))))

(assert (=> b!1355804 (= res!610779 (not lt!448973))))

(declare-fun b!1355805 () Bool)

(declare-fun head!2427 (List!13876) C!7704)

(assert (=> b!1355805 (= e!867639 (not (= (head!2427 lt!448918) (c!222459 lt!448920))))))

(declare-fun bm!91235 () Bool)

(assert (=> bm!91235 (= call!91240 (isEmpty!8277 lt!448918))))

(declare-fun d!384161 () Bool)

(assert (=> d!384161 e!867642))

(declare-fun c!222484 () Bool)

(assert (=> d!384161 (= c!222484 ((_ is EmptyExpr!3707) lt!448920))))

(declare-fun e!867643 () Bool)

(assert (=> d!384161 (= lt!448973 e!867643)))

(declare-fun c!222482 () Bool)

(assert (=> d!384161 (= c!222482 (isEmpty!8277 lt!448918))))

(declare-fun validRegex!1607 (Regex!3707) Bool)

(assert (=> d!384161 (validRegex!1607 lt!448920)))

(assert (=> d!384161 (= (matchR!1700 lt!448920 lt!448918) lt!448973)))

(declare-fun b!1355806 () Bool)

(assert (=> b!1355806 (= e!867642 (= lt!448973 call!91240))))

(declare-fun b!1355807 () Bool)

(declare-fun res!610783 () Bool)

(assert (=> b!1355807 (=> res!610783 e!867645)))

(assert (=> b!1355807 (= res!610783 (not ((_ is ElementMatch!3707) lt!448920)))))

(assert (=> b!1355807 (= e!867644 e!867645)))

(declare-fun b!1355808 () Bool)

(declare-fun e!867640 () Bool)

(assert (=> b!1355808 (= e!867640 (= (head!2427 lt!448918) (c!222459 lt!448920)))))

(declare-fun b!1355809 () Bool)

(declare-fun res!610781 () Bool)

(assert (=> b!1355809 (=> (not res!610781) (not e!867640))))

(declare-fun tail!1958 (List!13876) List!13876)

(assert (=> b!1355809 (= res!610781 (isEmpty!8277 (tail!1958 lt!448918)))))

(declare-fun b!1355810 () Bool)

(declare-fun res!610785 () Bool)

(assert (=> b!1355810 (=> res!610785 e!867645)))

(assert (=> b!1355810 (= res!610785 e!867640)))

(declare-fun res!610780 () Bool)

(assert (=> b!1355810 (=> (not res!610780) (not e!867640))))

(assert (=> b!1355810 (= res!610780 lt!448973)))

(declare-fun b!1355811 () Bool)

(declare-fun res!610778 () Bool)

(assert (=> b!1355811 (=> (not res!610778) (not e!867640))))

(assert (=> b!1355811 (= res!610778 (not call!91240))))

(declare-fun b!1355812 () Bool)

(declare-fun nullable!1187 (Regex!3707) Bool)

(assert (=> b!1355812 (= e!867643 (nullable!1187 lt!448920))))

(declare-fun b!1355813 () Bool)

(declare-fun derivativeStep!945 (Regex!3707 C!7704) Regex!3707)

(assert (=> b!1355813 (= e!867643 (matchR!1700 (derivativeStep!945 lt!448920 (head!2427 lt!448918)) (tail!1958 lt!448918)))))

(declare-fun b!1355814 () Bool)

(declare-fun res!610782 () Bool)

(assert (=> b!1355814 (=> res!610782 e!867639)))

(assert (=> b!1355814 (= res!610782 (not (isEmpty!8277 (tail!1958 lt!448918))))))

(assert (= (and d!384161 c!222482) b!1355812))

(assert (= (and d!384161 (not c!222482)) b!1355813))

(assert (= (and d!384161 c!222484) b!1355806))

(assert (= (and d!384161 (not c!222484)) b!1355802))

(assert (= (and b!1355802 c!222483) b!1355803))

(assert (= (and b!1355802 (not c!222483)) b!1355807))

(assert (= (and b!1355807 (not res!610783)) b!1355810))

(assert (= (and b!1355810 res!610780) b!1355811))

(assert (= (and b!1355811 res!610778) b!1355809))

(assert (= (and b!1355809 res!610781) b!1355808))

(assert (= (and b!1355810 (not res!610785)) b!1355804))

(assert (= (and b!1355804 res!610779) b!1355801))

(assert (= (and b!1355801 (not res!610784)) b!1355814))

(assert (= (and b!1355814 (not res!610782)) b!1355805))

(assert (= (or b!1355806 b!1355801 b!1355811) bm!91235))

(declare-fun m!1518311 () Bool)

(assert (=> b!1355809 m!1518311))

(assert (=> b!1355809 m!1518311))

(declare-fun m!1518313 () Bool)

(assert (=> b!1355809 m!1518313))

(declare-fun m!1518315 () Bool)

(assert (=> b!1355812 m!1518315))

(declare-fun m!1518317 () Bool)

(assert (=> bm!91235 m!1518317))

(declare-fun m!1518319 () Bool)

(assert (=> b!1355805 m!1518319))

(assert (=> d!384161 m!1518317))

(declare-fun m!1518321 () Bool)

(assert (=> d!384161 m!1518321))

(assert (=> b!1355813 m!1518319))

(assert (=> b!1355813 m!1518319))

(declare-fun m!1518323 () Bool)

(assert (=> b!1355813 m!1518323))

(assert (=> b!1355813 m!1518311))

(assert (=> b!1355813 m!1518323))

(assert (=> b!1355813 m!1518311))

(declare-fun m!1518325 () Bool)

(assert (=> b!1355813 m!1518325))

(assert (=> b!1355814 m!1518311))

(assert (=> b!1355814 m!1518311))

(assert (=> b!1355814 m!1518313))

(assert (=> b!1355808 m!1518319))

(assert (=> b!1355666 d!384161))

(declare-fun b!1355825 () Bool)

(declare-fun res!610788 () Bool)

(declare-fun e!867652 () Bool)

(assert (=> b!1355825 (=> res!610788 e!867652)))

(assert (=> b!1355825 (= res!610788 (not ((_ is IntegerValue!7451) (value!77833 t1!34))))))

(declare-fun e!867653 () Bool)

(assert (=> b!1355825 (= e!867653 e!867652)))

(declare-fun b!1355826 () Bool)

(declare-fun inv!17 (TokenValue!2483) Bool)

(assert (=> b!1355826 (= e!867653 (inv!17 (value!77833 t1!34)))))

(declare-fun b!1355827 () Bool)

(declare-fun e!867654 () Bool)

(declare-fun inv!16 (TokenValue!2483) Bool)

(assert (=> b!1355827 (= e!867654 (inv!16 (value!77833 t1!34)))))

(declare-fun b!1355828 () Bool)

(declare-fun inv!15 (TokenValue!2483) Bool)

(assert (=> b!1355828 (= e!867652 (inv!15 (value!77833 t1!34)))))

(declare-fun b!1355829 () Bool)

(assert (=> b!1355829 (= e!867654 e!867653)))

(declare-fun c!222490 () Bool)

(assert (=> b!1355829 (= c!222490 ((_ is IntegerValue!7450) (value!77833 t1!34)))))

(declare-fun d!384163 () Bool)

(declare-fun c!222489 () Bool)

(assert (=> d!384163 (= c!222489 ((_ is IntegerValue!7449) (value!77833 t1!34)))))

(assert (=> d!384163 (= (inv!21 (value!77833 t1!34)) e!867654)))

(assert (= (and d!384163 c!222489) b!1355827))

(assert (= (and d!384163 (not c!222489)) b!1355829))

(assert (= (and b!1355829 c!222490) b!1355826))

(assert (= (and b!1355829 (not c!222490)) b!1355825))

(assert (= (and b!1355825 (not res!610788)) b!1355828))

(declare-fun m!1518327 () Bool)

(assert (=> b!1355826 m!1518327))

(declare-fun m!1518329 () Bool)

(assert (=> b!1355827 m!1518329))

(declare-fun m!1518331 () Bool)

(assert (=> b!1355828 m!1518331))

(assert (=> b!1355644 d!384163))

(declare-fun d!384165 () Bool)

(assert (=> d!384165 (= (inv!18153 (tag!2655 (rule!4142 t1!34))) (= (mod (str.len (value!77832 (tag!2655 (rule!4142 t1!34)))) 2) 0))))

(assert (=> b!1355665 d!384165))

(declare-fun d!384167 () Bool)

(declare-fun res!610800 () Bool)

(declare-fun e!867666 () Bool)

(assert (=> d!384167 (=> (not res!610800) (not e!867666))))

(declare-fun semiInverseModEq!916 (Int Int) Bool)

(assert (=> d!384167 (= res!610800 (semiInverseModEq!916 (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (toValue!3648 (transformation!2393 (rule!4142 t1!34)))))))

(assert (=> d!384167 (= (inv!18156 (transformation!2393 (rule!4142 t1!34))) e!867666)))

(declare-fun b!1355847 () Bool)

(declare-fun equivClasses!875 (Int Int) Bool)

(assert (=> b!1355847 (= e!867666 (equivClasses!875 (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (toValue!3648 (transformation!2393 (rule!4142 t1!34)))))))

(assert (= (and d!384167 res!610800) b!1355847))

(declare-fun m!1518333 () Bool)

(assert (=> d!384167 m!1518333))

(declare-fun m!1518335 () Bool)

(assert (=> b!1355847 m!1518335))

(assert (=> b!1355665 d!384167))

(declare-fun d!384169 () Bool)

(assert (=> d!384169 (= (inv!18153 (tag!2655 (h!19213 rules!2550))) (= (mod (str.len (value!77832 (tag!2655 (h!19213 rules!2550)))) 2) 0))))

(assert (=> b!1355653 d!384169))

(declare-fun d!384171 () Bool)

(declare-fun res!610801 () Bool)

(declare-fun e!867667 () Bool)

(assert (=> d!384171 (=> (not res!610801) (not e!867667))))

(assert (=> d!384171 (= res!610801 (semiInverseModEq!916 (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toValue!3648 (transformation!2393 (h!19213 rules!2550)))))))

(assert (=> d!384171 (= (inv!18156 (transformation!2393 (h!19213 rules!2550))) e!867667)))

(declare-fun b!1355848 () Bool)

(assert (=> b!1355848 (= e!867667 (equivClasses!875 (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toValue!3648 (transformation!2393 (h!19213 rules!2550)))))))

(assert (= (and d!384171 res!610801) b!1355848))

(declare-fun m!1518351 () Bool)

(assert (=> d!384171 m!1518351))

(declare-fun m!1518353 () Bool)

(assert (=> b!1355848 m!1518353))

(assert (=> b!1355653 d!384171))

(declare-fun d!384175 () Bool)

(declare-fun e!867708 () Bool)

(assert (=> d!384175 e!867708))

(declare-fun c!222509 () Bool)

(declare-fun lt!449002 () tuple2!13394)

(declare-fun size!11298 (List!13880) Int)

(assert (=> d!384175 (= c!222509 (> (size!11298 (_1!7583 lt!449002)) 0))))

(declare-fun e!867706 () tuple2!13394)

(assert (=> d!384175 (= lt!449002 e!867706)))

(declare-fun c!222508 () Bool)

(declare-fun lt!449001 () Option!2648)

(assert (=> d!384175 (= c!222508 ((_ is Some!2647) lt!449001))))

(assert (=> d!384175 (= lt!449001 (maxPrefix!1070 thiss!19762 rules!2550 (list!5291 lt!448919)))))

(assert (=> d!384175 (= (lexList!606 thiss!19762 rules!2550 (list!5291 lt!448919)) lt!449002)))

(declare-fun b!1355902 () Bool)

(assert (=> b!1355902 (= e!867708 (= (_2!7583 lt!449002) (list!5291 lt!448919)))))

(declare-fun b!1355903 () Bool)

(declare-fun e!867707 () Bool)

(assert (=> b!1355903 (= e!867708 e!867707)))

(declare-fun res!610827 () Bool)

(assert (=> b!1355903 (= res!610827 (< (size!11297 (_2!7583 lt!449002)) (size!11297 (list!5291 lt!448919))))))

(assert (=> b!1355903 (=> (not res!610827) (not e!867707))))

(declare-fun b!1355904 () Bool)

(assert (=> b!1355904 (= e!867706 (tuple2!13395 Nil!13814 (list!5291 lt!448919)))))

(declare-fun b!1355905 () Bool)

(declare-fun lt!449003 () tuple2!13394)

(assert (=> b!1355905 (= e!867706 (tuple2!13395 (Cons!13814 (_1!7581 (v!21373 lt!449001)) (_1!7583 lt!449003)) (_2!7583 lt!449003)))))

(assert (=> b!1355905 (= lt!449003 (lexList!606 thiss!19762 rules!2550 (_2!7581 (v!21373 lt!449001))))))

(declare-fun b!1355906 () Bool)

(declare-fun isEmpty!8279 (List!13880) Bool)

(assert (=> b!1355906 (= e!867707 (not (isEmpty!8279 (_1!7583 lt!449002))))))

(assert (= (and d!384175 c!222508) b!1355905))

(assert (= (and d!384175 (not c!222508)) b!1355904))

(assert (= (and d!384175 c!222509) b!1355903))

(assert (= (and d!384175 (not c!222509)) b!1355902))

(assert (= (and b!1355903 res!610827) b!1355906))

(declare-fun m!1518429 () Bool)

(assert (=> d!384175 m!1518429))

(assert (=> d!384175 m!1518067))

(declare-fun m!1518431 () Bool)

(assert (=> d!384175 m!1518431))

(declare-fun m!1518433 () Bool)

(assert (=> b!1355903 m!1518433))

(assert (=> b!1355903 m!1518067))

(declare-fun m!1518435 () Bool)

(assert (=> b!1355903 m!1518435))

(declare-fun m!1518437 () Bool)

(assert (=> b!1355905 m!1518437))

(declare-fun m!1518439 () Bool)

(assert (=> b!1355906 m!1518439))

(assert (=> b!1355674 d!384175))

(declare-fun d!384203 () Bool)

(declare-fun list!5294 (Conc!4548) List!13876)

(assert (=> d!384203 (= (list!5291 lt!448919) (list!5294 (c!222458 lt!448919)))))

(declare-fun bs!333894 () Bool)

(assert (= bs!333894 d!384203))

(declare-fun m!1518447 () Bool)

(assert (=> bs!333894 m!1518447))

(assert (=> b!1355674 d!384203))

(declare-fun d!384207 () Bool)

(declare-fun lt!449044 () Bool)

(declare-fun e!867764 () Bool)

(assert (=> d!384207 (= lt!449044 e!867764)))

(declare-fun res!610874 () Bool)

(assert (=> d!384207 (=> (not res!610874) (not e!867764))))

(assert (=> d!384207 (= res!610874 (= (list!5290 (_1!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t1!34))))) (list!5290 (singletonSeq!1012 t1!34))))))

(declare-fun e!867763 () Bool)

(assert (=> d!384207 (= lt!449044 e!867763)))

(declare-fun res!610875 () Bool)

(assert (=> d!384207 (=> (not res!610875) (not e!867763))))

(declare-fun lt!449043 () tuple2!13392)

(declare-fun size!11299 (BalanceConc!9038) Int)

(assert (=> d!384207 (= res!610875 (= (size!11299 (_1!7582 lt!449043)) 1))))

(assert (=> d!384207 (= lt!449043 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t1!34))))))

(assert (=> d!384207 (not (isEmpty!8273 rules!2550))))

(assert (=> d!384207 (= (rulesProduceIndividualToken!1057 thiss!19762 rules!2550 t1!34) lt!449044)))

(declare-fun b!1355992 () Bool)

(declare-fun res!610873 () Bool)

(assert (=> b!1355992 (=> (not res!610873) (not e!867763))))

(declare-fun apply!3333 (BalanceConc!9038 Int) Token!4448)

(assert (=> b!1355992 (= res!610873 (= (apply!3333 (_1!7582 lt!449043) 0) t1!34))))

(declare-fun b!1355993 () Bool)

(assert (=> b!1355993 (= e!867763 (isEmpty!8272 (_2!7582 lt!449043)))))

(declare-fun b!1355994 () Bool)

(assert (=> b!1355994 (= e!867764 (isEmpty!8272 (_2!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t1!34))))))))

(assert (= (and d!384207 res!610875) b!1355992))

(assert (= (and b!1355992 res!610873) b!1355993))

(assert (= (and d!384207 res!610874) b!1355994))

(declare-fun m!1518551 () Bool)

(assert (=> d!384207 m!1518551))

(declare-fun m!1518553 () Bool)

(assert (=> d!384207 m!1518553))

(assert (=> d!384207 m!1518089))

(assert (=> d!384207 m!1518169))

(declare-fun m!1518555 () Bool)

(assert (=> d!384207 m!1518555))

(assert (=> d!384207 m!1518167))

(declare-fun m!1518557 () Bool)

(assert (=> d!384207 m!1518557))

(assert (=> d!384207 m!1518167))

(assert (=> d!384207 m!1518169))

(assert (=> d!384207 m!1518167))

(declare-fun m!1518559 () Bool)

(assert (=> b!1355992 m!1518559))

(declare-fun m!1518561 () Bool)

(assert (=> b!1355993 m!1518561))

(assert (=> b!1355994 m!1518167))

(assert (=> b!1355994 m!1518167))

(assert (=> b!1355994 m!1518169))

(assert (=> b!1355994 m!1518169))

(assert (=> b!1355994 m!1518555))

(declare-fun m!1518563 () Bool)

(assert (=> b!1355994 m!1518563))

(assert (=> b!1355652 d!384207))

(declare-fun d!384241 () Bool)

(declare-fun c!222531 () Bool)

(assert (=> d!384241 (= c!222531 (isEmpty!8277 lt!448926))))

(declare-fun e!867774 () Bool)

(assert (=> d!384241 (= (prefixMatch!216 lt!448920 lt!448926) e!867774)))

(declare-fun b!1356013 () Bool)

(declare-fun lostCause!321 (Regex!3707) Bool)

(assert (=> b!1356013 (= e!867774 (not (lostCause!321 lt!448920)))))

(declare-fun b!1356014 () Bool)

(assert (=> b!1356014 (= e!867774 (prefixMatch!216 (derivativeStep!945 lt!448920 (head!2427 lt!448926)) (tail!1958 lt!448926)))))

(assert (= (and d!384241 c!222531) b!1356013))

(assert (= (and d!384241 (not c!222531)) b!1356014))

(declare-fun m!1518571 () Bool)

(assert (=> d!384241 m!1518571))

(declare-fun m!1518573 () Bool)

(assert (=> b!1356013 m!1518573))

(declare-fun m!1518577 () Bool)

(assert (=> b!1356014 m!1518577))

(assert (=> b!1356014 m!1518577))

(declare-fun m!1518579 () Bool)

(assert (=> b!1356014 m!1518579))

(declare-fun m!1518581 () Bool)

(assert (=> b!1356014 m!1518581))

(assert (=> b!1356014 m!1518579))

(assert (=> b!1356014 m!1518581))

(declare-fun m!1518587 () Bool)

(assert (=> b!1356014 m!1518587))

(assert (=> b!1355673 d!384241))

(declare-fun d!384243 () Bool)

(declare-fun lt!449046 () C!7704)

(assert (=> d!384243 (= lt!449046 (apply!3331 (list!5291 lt!448930) 0))))

(assert (=> d!384243 (= lt!449046 (apply!3332 (c!222458 lt!448930) 0))))

(declare-fun e!867775 () Bool)

(assert (=> d!384243 e!867775))

(declare-fun res!610884 () Bool)

(assert (=> d!384243 (=> (not res!610884) (not e!867775))))

(assert (=> d!384243 (= res!610884 (<= 0 0))))

(assert (=> d!384243 (= (apply!3327 lt!448930 0) lt!449046)))

(declare-fun b!1356015 () Bool)

(assert (=> b!1356015 (= e!867775 (< 0 (size!11287 lt!448930)))))

(assert (= (and d!384243 res!610884) b!1356015))

(declare-fun m!1518591 () Bool)

(assert (=> d!384243 m!1518591))

(assert (=> d!384243 m!1518591))

(declare-fun m!1518593 () Bool)

(assert (=> d!384243 m!1518593))

(declare-fun m!1518597 () Bool)

(assert (=> d!384243 m!1518597))

(assert (=> b!1356015 m!1518159))

(assert (=> b!1355673 d!384243))

(declare-fun b!1356032 () Bool)

(declare-fun e!867787 () List!13876)

(assert (=> b!1356032 (= e!867787 (Cons!13810 lt!448924 Nil!13810))))

(declare-fun b!1356033 () Bool)

(assert (=> b!1356033 (= e!867787 (Cons!13810 (h!19211 lt!448925) (++!3554 (t!120343 lt!448925) (Cons!13810 lt!448924 Nil!13810))))))

(declare-fun d!384247 () Bool)

(declare-fun e!867786 () Bool)

(assert (=> d!384247 e!867786))

(declare-fun res!610893 () Bool)

(assert (=> d!384247 (=> (not res!610893) (not e!867786))))

(declare-fun lt!449054 () List!13876)

(assert (=> d!384247 (= res!610893 (= (content!1989 lt!449054) ((_ map or) (content!1989 lt!448925) (content!1989 (Cons!13810 lt!448924 Nil!13810)))))))

(assert (=> d!384247 (= lt!449054 e!867787)))

(declare-fun c!222536 () Bool)

(assert (=> d!384247 (= c!222536 ((_ is Nil!13810) lt!448925))))

(assert (=> d!384247 (= (++!3554 lt!448925 (Cons!13810 lt!448924 Nil!13810)) lt!449054)))

(declare-fun b!1356034 () Bool)

(declare-fun res!610894 () Bool)

(assert (=> b!1356034 (=> (not res!610894) (not e!867786))))

(assert (=> b!1356034 (= res!610894 (= (size!11297 lt!449054) (+ (size!11297 lt!448925) (size!11297 (Cons!13810 lt!448924 Nil!13810)))))))

(declare-fun b!1356035 () Bool)

(assert (=> b!1356035 (= e!867786 (or (not (= (Cons!13810 lt!448924 Nil!13810) Nil!13810)) (= lt!449054 lt!448925)))))

(assert (= (and d!384247 c!222536) b!1356032))

(assert (= (and d!384247 (not c!222536)) b!1356033))

(assert (= (and d!384247 res!610893) b!1356034))

(assert (= (and b!1356034 res!610894) b!1356035))

(declare-fun m!1518613 () Bool)

(assert (=> b!1356033 m!1518613))

(declare-fun m!1518615 () Bool)

(assert (=> d!384247 m!1518615))

(declare-fun m!1518617 () Bool)

(assert (=> d!384247 m!1518617))

(declare-fun m!1518619 () Bool)

(assert (=> d!384247 m!1518619))

(declare-fun m!1518621 () Bool)

(assert (=> b!1356034 m!1518621))

(declare-fun m!1518623 () Bool)

(assert (=> b!1356034 m!1518623))

(declare-fun m!1518625 () Bool)

(assert (=> b!1356034 m!1518625))

(assert (=> b!1355673 d!384247))

(declare-fun d!384255 () Bool)

(assert (=> d!384255 (= (list!5291 lt!448929) (list!5294 (c!222458 lt!448929)))))

(declare-fun bs!333910 () Bool)

(assert (= bs!333910 d!384255))

(declare-fun m!1518627 () Bool)

(assert (=> bs!333910 m!1518627))

(assert (=> b!1355673 d!384255))

(declare-fun d!384257 () Bool)

(declare-fun lt!449057 () BalanceConc!9036)

(assert (=> d!384257 (= (list!5291 lt!449057) (originalCharacters!3255 t1!34))))

(assert (=> d!384257 (= lt!449057 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (value!77833 t1!34)))))

(assert (=> d!384257 (= (charsOf!1365 t1!34) lt!449057)))

(declare-fun b_lambda!40773 () Bool)

(assert (=> (not b_lambda!40773) (not d!384257)))

(assert (=> d!384257 t!120350))

(declare-fun b_and!90759 () Bool)

(assert (= b_and!90741 (and (=> t!120350 result!86582) b_and!90759)))

(assert (=> d!384257 t!120352))

(declare-fun b_and!90761 () Bool)

(assert (= b_and!90743 (and (=> t!120352 result!86586) b_and!90761)))

(assert (=> d!384257 t!120354))

(declare-fun b_and!90763 () Bool)

(assert (= b_and!90745 (and (=> t!120354 result!86588) b_and!90763)))

(declare-fun m!1518635 () Bool)

(assert (=> d!384257 m!1518635))

(assert (=> d!384257 m!1518293))

(assert (=> b!1355673 d!384257))

(declare-fun bs!333911 () Bool)

(declare-fun d!384261 () Bool)

(assert (= bs!333911 (and d!384261 b!1355648)))

(declare-fun lambda!57303 () Int)

(assert (=> bs!333911 (= lambda!57303 lambda!57269)))

(declare-fun lt!449062 () Unit!19963)

(declare-fun lemma!115 (List!13878 LexerInterface!2088 List!13878) Unit!19963)

(assert (=> d!384261 (= lt!449062 (lemma!115 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!123 (List!13879) Regex!3707)

(assert (=> d!384261 (= (rulesRegex!276 thiss!19762 rules!2550) (generalisedUnion!123 (map!3050 rules!2550 lambda!57303)))))

(declare-fun bs!333912 () Bool)

(assert (= bs!333912 d!384261))

(declare-fun m!1518653 () Bool)

(assert (=> bs!333912 m!1518653))

(declare-fun m!1518655 () Bool)

(assert (=> bs!333912 m!1518655))

(assert (=> bs!333912 m!1518655))

(declare-fun m!1518657 () Bool)

(assert (=> bs!333912 m!1518657))

(assert (=> b!1355673 d!384261))

(declare-fun b!1356053 () Bool)

(declare-fun res!610904 () Bool)

(declare-fun e!867800 () Bool)

(assert (=> b!1356053 (=> res!610904 e!867800)))

(assert (=> b!1356053 (= res!610904 (not ((_ is IntegerValue!7451) (value!77833 t2!34))))))

(declare-fun e!867801 () Bool)

(assert (=> b!1356053 (= e!867801 e!867800)))

(declare-fun b!1356054 () Bool)

(assert (=> b!1356054 (= e!867801 (inv!17 (value!77833 t2!34)))))

(declare-fun b!1356055 () Bool)

(declare-fun e!867802 () Bool)

(assert (=> b!1356055 (= e!867802 (inv!16 (value!77833 t2!34)))))

(declare-fun b!1356056 () Bool)

(assert (=> b!1356056 (= e!867800 (inv!15 (value!77833 t2!34)))))

(declare-fun b!1356057 () Bool)

(assert (=> b!1356057 (= e!867802 e!867801)))

(declare-fun c!222542 () Bool)

(assert (=> b!1356057 (= c!222542 ((_ is IntegerValue!7450) (value!77833 t2!34)))))

(declare-fun d!384267 () Bool)

(declare-fun c!222541 () Bool)

(assert (=> d!384267 (= c!222541 ((_ is IntegerValue!7449) (value!77833 t2!34)))))

(assert (=> d!384267 (= (inv!21 (value!77833 t2!34)) e!867802)))

(assert (= (and d!384267 c!222541) b!1356055))

(assert (= (and d!384267 (not c!222541)) b!1356057))

(assert (= (and b!1356057 c!222542) b!1356054))

(assert (= (and b!1356057 (not c!222542)) b!1356053))

(assert (= (and b!1356053 (not res!610904)) b!1356056))

(declare-fun m!1518659 () Bool)

(assert (=> b!1356054 m!1518659))

(declare-fun m!1518661 () Bool)

(assert (=> b!1356055 m!1518661))

(declare-fun m!1518663 () Bool)

(assert (=> b!1356056 m!1518663))

(assert (=> b!1355651 d!384267))

(declare-fun d!384269 () Bool)

(declare-fun list!5295 (Conc!4549) List!13880)

(assert (=> d!384269 (= (list!5290 (_1!7582 lt!448915)) (list!5295 (c!222460 (_1!7582 lt!448915))))))

(declare-fun bs!333913 () Bool)

(assert (= bs!333913 d!384269))

(declare-fun m!1518665 () Bool)

(assert (=> bs!333913 m!1518665))

(assert (=> b!1355672 d!384269))

(declare-fun b!1356167 () Bool)

(declare-fun e!867862 () Bool)

(declare-fun e!867860 () Bool)

(assert (=> b!1356167 (= e!867862 e!867860)))

(declare-fun res!610955 () Bool)

(declare-fun lt!449087 () tuple2!13392)

(assert (=> b!1356167 (= res!610955 (< (size!11287 (_2!7582 lt!449087)) (size!11287 lt!448919)))))

(assert (=> b!1356167 (=> (not res!610955) (not e!867860))))

(declare-fun b!1356168 () Bool)

(assert (=> b!1356168 (= e!867862 (= (_2!7582 lt!449087) lt!448919))))

(declare-fun d!384271 () Bool)

(declare-fun e!867861 () Bool)

(assert (=> d!384271 e!867861))

(declare-fun res!610956 () Bool)

(assert (=> d!384271 (=> (not res!610956) (not e!867861))))

(assert (=> d!384271 (= res!610956 e!867862)))

(declare-fun c!222550 () Bool)

(assert (=> d!384271 (= c!222550 (> (size!11299 (_1!7582 lt!449087)) 0))))

(declare-fun lexTailRecV2!401 (LexerInterface!2088 List!13878 BalanceConc!9036 BalanceConc!9036 BalanceConc!9036 BalanceConc!9038) tuple2!13392)

(assert (=> d!384271 (= lt!449087 (lexTailRecV2!401 thiss!19762 rules!2550 lt!448919 (BalanceConc!9037 Empty!4548) lt!448919 (BalanceConc!9039 Empty!4549)))))

(assert (=> d!384271 (= (lex!915 thiss!19762 rules!2550 lt!448919) lt!449087)))

(declare-fun b!1356169 () Bool)

(declare-fun res!610957 () Bool)

(assert (=> b!1356169 (=> (not res!610957) (not e!867861))))

(assert (=> b!1356169 (= res!610957 (= (list!5290 (_1!7582 lt!449087)) (_1!7583 (lexList!606 thiss!19762 rules!2550 (list!5291 lt!448919)))))))

(declare-fun b!1356170 () Bool)

(assert (=> b!1356170 (= e!867861 (= (list!5291 (_2!7582 lt!449087)) (_2!7583 (lexList!606 thiss!19762 rules!2550 (list!5291 lt!448919)))))))

(declare-fun b!1356171 () Bool)

(declare-fun isEmpty!8281 (BalanceConc!9038) Bool)

(assert (=> b!1356171 (= e!867860 (not (isEmpty!8281 (_1!7582 lt!449087))))))

(assert (= (and d!384271 c!222550) b!1356167))

(assert (= (and d!384271 (not c!222550)) b!1356168))

(assert (= (and b!1356167 res!610955) b!1356171))

(assert (= (and d!384271 res!610956) b!1356169))

(assert (= (and b!1356169 res!610957) b!1356170))

(declare-fun m!1518757 () Bool)

(assert (=> b!1356167 m!1518757))

(declare-fun m!1518759 () Bool)

(assert (=> b!1356167 m!1518759))

(declare-fun m!1518761 () Bool)

(assert (=> b!1356170 m!1518761))

(assert (=> b!1356170 m!1518067))

(assert (=> b!1356170 m!1518067))

(assert (=> b!1356170 m!1518069))

(declare-fun m!1518763 () Bool)

(assert (=> b!1356171 m!1518763))

(declare-fun m!1518765 () Bool)

(assert (=> d!384271 m!1518765))

(declare-fun m!1518767 () Bool)

(assert (=> d!384271 m!1518767))

(declare-fun m!1518769 () Bool)

(assert (=> b!1356169 m!1518769))

(assert (=> b!1356169 m!1518067))

(assert (=> b!1356169 m!1518067))

(assert (=> b!1356169 m!1518069))

(assert (=> b!1355672 d!384271))

(declare-fun d!384309 () Bool)

(declare-fun lt!449090 () BalanceConc!9036)

(declare-fun printList!596 (LexerInterface!2088 List!13880) List!13876)

(assert (=> d!384309 (= (list!5291 lt!449090) (printList!596 thiss!19762 (list!5290 (singletonSeq!1012 t1!34))))))

(declare-fun printTailRec!578 (LexerInterface!2088 BalanceConc!9038 Int BalanceConc!9036) BalanceConc!9036)

(assert (=> d!384309 (= lt!449090 (printTailRec!578 thiss!19762 (singletonSeq!1012 t1!34) 0 (BalanceConc!9037 Empty!4548)))))

(assert (=> d!384309 (= (print!854 thiss!19762 (singletonSeq!1012 t1!34)) lt!449090)))

(declare-fun bs!333928 () Bool)

(assert (= bs!333928 d!384309))

(declare-fun m!1518771 () Bool)

(assert (=> bs!333928 m!1518771))

(assert (=> bs!333928 m!1518167))

(assert (=> bs!333928 m!1518557))

(assert (=> bs!333928 m!1518557))

(declare-fun m!1518773 () Bool)

(assert (=> bs!333928 m!1518773))

(assert (=> bs!333928 m!1518167))

(declare-fun m!1518775 () Bool)

(assert (=> bs!333928 m!1518775))

(assert (=> b!1355672 d!384309))

(declare-fun b!1356184 () Bool)

(declare-fun e!867872 () Rule!4586)

(assert (=> b!1356184 (= e!867872 (getWitness!333 (t!120345 rules!2550) lambda!57271))))

(declare-fun b!1356185 () Bool)

(declare-fun e!867873 () Rule!4586)

(assert (=> b!1356185 (= e!867873 (h!19213 rules!2550))))

(declare-fun b!1356186 () Bool)

(declare-fun e!867871 () Bool)

(declare-fun lt!449095 () Rule!4586)

(assert (=> b!1356186 (= e!867871 (contains!2556 rules!2550 lt!449095))))

(declare-fun b!1356187 () Bool)

(declare-fun e!867874 () Bool)

(declare-fun dynLambda!6186 (Int Rule!4586) Bool)

(assert (=> b!1356187 (= e!867874 (dynLambda!6186 lambda!57271 (h!19213 rules!2550)))))

(declare-fun b!1356188 () Bool)

(declare-fun lt!449096 () Unit!19963)

(declare-fun Unit!19967 () Unit!19963)

(assert (=> b!1356188 (= lt!449096 Unit!19967)))

(assert (=> b!1356188 false))

(declare-fun head!2428 (List!13878) Rule!4586)

(assert (=> b!1356188 (= e!867872 (head!2428 rules!2550))))

(declare-fun d!384311 () Bool)

(assert (=> d!384311 e!867871))

(declare-fun res!610963 () Bool)

(assert (=> d!384311 (=> (not res!610963) (not e!867871))))

(assert (=> d!384311 (= res!610963 (dynLambda!6186 lambda!57271 lt!449095))))

(assert (=> d!384311 (= lt!449095 e!867873)))

(declare-fun c!222555 () Bool)

(assert (=> d!384311 (= c!222555 e!867874)))

(declare-fun res!610962 () Bool)

(assert (=> d!384311 (=> (not res!610962) (not e!867874))))

(assert (=> d!384311 (= res!610962 ((_ is Cons!13812) rules!2550))))

(assert (=> d!384311 (exists!444 rules!2550 lambda!57271)))

(assert (=> d!384311 (= (getWitness!333 rules!2550 lambda!57271) lt!449095)))

(declare-fun b!1356189 () Bool)

(assert (=> b!1356189 (= e!867873 e!867872)))

(declare-fun c!222556 () Bool)

(assert (=> b!1356189 (= c!222556 ((_ is Cons!13812) rules!2550))))

(assert (= (and d!384311 res!610962) b!1356187))

(assert (= (and d!384311 c!222555) b!1356185))

(assert (= (and d!384311 (not c!222555)) b!1356189))

(assert (= (and b!1356189 c!222556) b!1356184))

(assert (= (and b!1356189 (not c!222556)) b!1356188))

(assert (= (and d!384311 res!610963) b!1356186))

(declare-fun b_lambda!40799 () Bool)

(assert (=> (not b_lambda!40799) (not b!1356187)))

(declare-fun b_lambda!40801 () Bool)

(assert (=> (not b_lambda!40801) (not d!384311)))

(declare-fun m!1518777 () Bool)

(assert (=> b!1356184 m!1518777))

(declare-fun m!1518779 () Bool)

(assert (=> d!384311 m!1518779))

(assert (=> d!384311 m!1518149))

(declare-fun m!1518781 () Bool)

(assert (=> b!1356188 m!1518781))

(declare-fun m!1518783 () Bool)

(assert (=> b!1356187 m!1518783))

(declare-fun m!1518785 () Bool)

(assert (=> b!1356186 m!1518785))

(assert (=> b!1355672 d!384311))

(declare-fun d!384313 () Bool)

(declare-fun e!867877 () Bool)

(assert (=> d!384313 e!867877))

(declare-fun res!610966 () Bool)

(assert (=> d!384313 (=> (not res!610966) (not e!867877))))

(declare-fun lt!449099 () BalanceConc!9038)

(assert (=> d!384313 (= res!610966 (= (list!5290 lt!449099) (Cons!13814 t1!34 Nil!13814)))))

(declare-fun singleton!434 (Token!4448) BalanceConc!9038)

(assert (=> d!384313 (= lt!449099 (singleton!434 t1!34))))

(assert (=> d!384313 (= (singletonSeq!1012 t1!34) lt!449099)))

(declare-fun b!1356192 () Bool)

(declare-fun isBalanced!1328 (Conc!4549) Bool)

(assert (=> b!1356192 (= e!867877 (isBalanced!1328 (c!222460 lt!449099)))))

(assert (= (and d!384313 res!610966) b!1356192))

(declare-fun m!1518787 () Bool)

(assert (=> d!384313 m!1518787))

(declare-fun m!1518789 () Bool)

(assert (=> d!384313 m!1518789))

(declare-fun m!1518791 () Bool)

(assert (=> b!1356192 m!1518791))

(assert (=> b!1355672 d!384313))

(declare-fun b!1356193 () Bool)

(declare-fun e!867879 () List!13876)

(assert (=> b!1356193 (= e!867879 (getSuffix!555 lt!448918 lt!448926))))

(declare-fun b!1356194 () Bool)

(assert (=> b!1356194 (= e!867879 (Cons!13810 (h!19211 lt!448926) (++!3554 (t!120343 lt!448926) (getSuffix!555 lt!448918 lt!448926))))))

(declare-fun d!384315 () Bool)

(declare-fun e!867878 () Bool)

(assert (=> d!384315 e!867878))

(declare-fun res!610967 () Bool)

(assert (=> d!384315 (=> (not res!610967) (not e!867878))))

(declare-fun lt!449100 () List!13876)

(assert (=> d!384315 (= res!610967 (= (content!1989 lt!449100) ((_ map or) (content!1989 lt!448926) (content!1989 (getSuffix!555 lt!448918 lt!448926)))))))

(assert (=> d!384315 (= lt!449100 e!867879)))

(declare-fun c!222557 () Bool)

(assert (=> d!384315 (= c!222557 ((_ is Nil!13810) lt!448926))))

(assert (=> d!384315 (= (++!3554 lt!448926 (getSuffix!555 lt!448918 lt!448926)) lt!449100)))

(declare-fun b!1356195 () Bool)

(declare-fun res!610968 () Bool)

(assert (=> b!1356195 (=> (not res!610968) (not e!867878))))

(assert (=> b!1356195 (= res!610968 (= (size!11297 lt!449100) (+ (size!11297 lt!448926) (size!11297 (getSuffix!555 lt!448918 lt!448926)))))))

(declare-fun b!1356196 () Bool)

(assert (=> b!1356196 (= e!867878 (or (not (= (getSuffix!555 lt!448918 lt!448926) Nil!13810)) (= lt!449100 lt!448926)))))

(assert (= (and d!384315 c!222557) b!1356193))

(assert (= (and d!384315 (not c!222557)) b!1356194))

(assert (= (and d!384315 res!610967) b!1356195))

(assert (= (and b!1356195 res!610968) b!1356196))

(assert (=> b!1356194 m!1518095))

(declare-fun m!1518793 () Bool)

(assert (=> b!1356194 m!1518793))

(declare-fun m!1518795 () Bool)

(assert (=> d!384315 m!1518795))

(assert (=> d!384315 m!1518199))

(assert (=> d!384315 m!1518095))

(declare-fun m!1518797 () Bool)

(assert (=> d!384315 m!1518797))

(declare-fun m!1518799 () Bool)

(assert (=> b!1356195 m!1518799))

(declare-fun m!1518801 () Bool)

(assert (=> b!1356195 m!1518801))

(assert (=> b!1356195 m!1518095))

(declare-fun m!1518803 () Bool)

(assert (=> b!1356195 m!1518803))

(assert (=> b!1355650 d!384315))

(declare-fun d!384317 () Bool)

(declare-fun lt!449103 () List!13876)

(assert (=> d!384317 (= (++!3554 lt!448926 lt!449103) lt!448918)))

(declare-fun e!867882 () List!13876)

(assert (=> d!384317 (= lt!449103 e!867882)))

(declare-fun c!222560 () Bool)

(assert (=> d!384317 (= c!222560 ((_ is Cons!13810) lt!448926))))

(assert (=> d!384317 (>= (size!11297 lt!448918) (size!11297 lt!448926))))

(assert (=> d!384317 (= (getSuffix!555 lt!448918 lt!448926) lt!449103)))

(declare-fun b!1356201 () Bool)

(assert (=> b!1356201 (= e!867882 (getSuffix!555 (tail!1958 lt!448918) (t!120343 lt!448926)))))

(declare-fun b!1356202 () Bool)

(assert (=> b!1356202 (= e!867882 lt!448918)))

(assert (= (and d!384317 c!222560) b!1356201))

(assert (= (and d!384317 (not c!222560)) b!1356202))

(declare-fun m!1518805 () Bool)

(assert (=> d!384317 m!1518805))

(declare-fun m!1518807 () Bool)

(assert (=> d!384317 m!1518807))

(assert (=> d!384317 m!1518801))

(assert (=> b!1356201 m!1518311))

(assert (=> b!1356201 m!1518311))

(declare-fun m!1518809 () Bool)

(assert (=> b!1356201 m!1518809))

(assert (=> b!1355650 d!384317))

(declare-fun d!384319 () Bool)

(declare-fun lt!449106 () List!13876)

(declare-fun dynLambda!6187 (Int List!13876) Bool)

(assert (=> d!384319 (dynLambda!6187 lambda!57268 lt!449106)))

(declare-fun choose!8339 (Int) List!13876)

(assert (=> d!384319 (= lt!449106 (choose!8339 lambda!57268))))

(assert (=> d!384319 (Exists!859 lambda!57268)))

(assert (=> d!384319 (= (pickWitness!162 lambda!57268) lt!449106)))

(declare-fun b_lambda!40803 () Bool)

(assert (=> (not b_lambda!40803) (not d!384319)))

(declare-fun bs!333929 () Bool)

(assert (= bs!333929 d!384319))

(declare-fun m!1518811 () Bool)

(assert (=> bs!333929 m!1518811))

(declare-fun m!1518813 () Bool)

(assert (=> bs!333929 m!1518813))

(assert (=> bs!333929 m!1518091))

(assert (=> b!1355650 d!384319))

(declare-fun d!384321 () Bool)

(declare-fun lt!449108 () Bool)

(declare-fun e!867884 () Bool)

(assert (=> d!384321 (= lt!449108 e!867884)))

(declare-fun res!610970 () Bool)

(assert (=> d!384321 (=> (not res!610970) (not e!867884))))

(assert (=> d!384321 (= res!610970 (= (list!5290 (_1!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34))))) (list!5290 (singletonSeq!1012 t2!34))))))

(declare-fun e!867883 () Bool)

(assert (=> d!384321 (= lt!449108 e!867883)))

(declare-fun res!610971 () Bool)

(assert (=> d!384321 (=> (not res!610971) (not e!867883))))

(declare-fun lt!449107 () tuple2!13392)

(assert (=> d!384321 (= res!610971 (= (size!11299 (_1!7582 lt!449107)) 1))))

(assert (=> d!384321 (= lt!449107 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34))))))

(assert (=> d!384321 (not (isEmpty!8273 rules!2550))))

(assert (=> d!384321 (= (rulesProduceIndividualToken!1057 thiss!19762 rules!2550 t2!34) lt!449108)))

(declare-fun b!1356203 () Bool)

(declare-fun res!610969 () Bool)

(assert (=> b!1356203 (=> (not res!610969) (not e!867883))))

(assert (=> b!1356203 (= res!610969 (= (apply!3333 (_1!7582 lt!449107) 0) t2!34))))

(declare-fun b!1356204 () Bool)

(assert (=> b!1356204 (= e!867883 (isEmpty!8272 (_2!7582 lt!449107)))))

(declare-fun b!1356205 () Bool)

(assert (=> b!1356205 (= e!867884 (isEmpty!8272 (_2!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34))))))))

(assert (= (and d!384321 res!610971) b!1356203))

(assert (= (and b!1356203 res!610969) b!1356204))

(assert (= (and d!384321 res!610970) b!1356205))

(assert (=> d!384321 m!1518115))

(declare-fun m!1518815 () Bool)

(assert (=> d!384321 m!1518815))

(assert (=> d!384321 m!1518089))

(assert (=> d!384321 m!1518111))

(assert (=> d!384321 m!1518113))

(assert (=> d!384321 m!1518109))

(declare-fun m!1518817 () Bool)

(assert (=> d!384321 m!1518817))

(assert (=> d!384321 m!1518109))

(assert (=> d!384321 m!1518111))

(assert (=> d!384321 m!1518109))

(declare-fun m!1518819 () Bool)

(assert (=> b!1356203 m!1518819))

(declare-fun m!1518821 () Bool)

(assert (=> b!1356204 m!1518821))

(assert (=> b!1356205 m!1518109))

(assert (=> b!1356205 m!1518109))

(assert (=> b!1356205 m!1518111))

(assert (=> b!1356205 m!1518111))

(assert (=> b!1356205 m!1518113))

(declare-fun m!1518823 () Bool)

(assert (=> b!1356205 m!1518823))

(assert (=> b!1355671 d!384321))

(declare-fun d!384323 () Bool)

(declare-fun lt!449111 () Bool)

(declare-fun content!1990 (List!13878) (InoxSet Rule!4586))

(assert (=> d!384323 (= lt!449111 (select (content!1990 rules!2550) (rule!4142 t1!34)))))

(declare-fun e!867890 () Bool)

(assert (=> d!384323 (= lt!449111 e!867890)))

(declare-fun res!610976 () Bool)

(assert (=> d!384323 (=> (not res!610976) (not e!867890))))

(assert (=> d!384323 (= res!610976 ((_ is Cons!13812) rules!2550))))

(assert (=> d!384323 (= (contains!2556 rules!2550 (rule!4142 t1!34)) lt!449111)))

(declare-fun b!1356210 () Bool)

(declare-fun e!867889 () Bool)

(assert (=> b!1356210 (= e!867890 e!867889)))

(declare-fun res!610977 () Bool)

(assert (=> b!1356210 (=> res!610977 e!867889)))

(assert (=> b!1356210 (= res!610977 (= (h!19213 rules!2550) (rule!4142 t1!34)))))

(declare-fun b!1356211 () Bool)

(assert (=> b!1356211 (= e!867889 (contains!2556 (t!120345 rules!2550) (rule!4142 t1!34)))))

(assert (= (and d!384323 res!610976) b!1356210))

(assert (= (and b!1356210 (not res!610977)) b!1356211))

(declare-fun m!1518825 () Bool)

(assert (=> d!384323 m!1518825))

(declare-fun m!1518827 () Bool)

(assert (=> d!384323 m!1518827))

(declare-fun m!1518829 () Bool)

(assert (=> b!1356211 m!1518829))

(assert (=> b!1355649 d!384323))

(declare-fun d!384325 () Bool)

(declare-fun lt!449112 () Bool)

(assert (=> d!384325 (= lt!449112 (select (content!1989 lt!448918) lt!448924))))

(declare-fun e!867892 () Bool)

(assert (=> d!384325 (= lt!449112 e!867892)))

(declare-fun res!610978 () Bool)

(assert (=> d!384325 (=> (not res!610978) (not e!867892))))

(assert (=> d!384325 (= res!610978 ((_ is Cons!13810) lt!448918))))

(assert (=> d!384325 (= (contains!2555 lt!448918 lt!448924) lt!449112)))

(declare-fun b!1356212 () Bool)

(declare-fun e!867891 () Bool)

(assert (=> b!1356212 (= e!867892 e!867891)))

(declare-fun res!610979 () Bool)

(assert (=> b!1356212 (=> res!610979 e!867891)))

(assert (=> b!1356212 (= res!610979 (= (h!19211 lt!448918) lt!448924))))

(declare-fun b!1356213 () Bool)

(assert (=> b!1356213 (= e!867891 (contains!2555 (t!120343 lt!448918) lt!448924))))

(assert (= (and d!384325 res!610978) b!1356212))

(assert (= (and b!1356212 (not res!610979)) b!1356213))

(declare-fun m!1518831 () Bool)

(assert (=> d!384325 m!1518831))

(declare-fun m!1518833 () Bool)

(assert (=> d!384325 m!1518833))

(declare-fun m!1518835 () Bool)

(assert (=> b!1356213 m!1518835))

(assert (=> b!1355670 d!384325))

(declare-fun d!384327 () Bool)

(assert (=> d!384327 (= (list!5290 (_1!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34))))) (list!5295 (c!222460 (_1!7582 (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34)))))))))

(declare-fun bs!333930 () Bool)

(assert (= bs!333930 d!384327))

(declare-fun m!1518837 () Bool)

(assert (=> bs!333930 m!1518837))

(assert (=> b!1355658 d!384327))

(declare-fun b!1356214 () Bool)

(declare-fun e!867895 () Bool)

(declare-fun e!867893 () Bool)

(assert (=> b!1356214 (= e!867895 e!867893)))

(declare-fun res!610980 () Bool)

(declare-fun lt!449113 () tuple2!13392)

(assert (=> b!1356214 (= res!610980 (< (size!11287 (_2!7582 lt!449113)) (size!11287 (print!854 thiss!19762 (singletonSeq!1012 t2!34)))))))

(assert (=> b!1356214 (=> (not res!610980) (not e!867893))))

(declare-fun b!1356215 () Bool)

(assert (=> b!1356215 (= e!867895 (= (_2!7582 lt!449113) (print!854 thiss!19762 (singletonSeq!1012 t2!34))))))

(declare-fun d!384329 () Bool)

(declare-fun e!867894 () Bool)

(assert (=> d!384329 e!867894))

(declare-fun res!610981 () Bool)

(assert (=> d!384329 (=> (not res!610981) (not e!867894))))

(assert (=> d!384329 (= res!610981 e!867895)))

(declare-fun c!222561 () Bool)

(assert (=> d!384329 (= c!222561 (> (size!11299 (_1!7582 lt!449113)) 0))))

(assert (=> d!384329 (= lt!449113 (lexTailRecV2!401 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34)) (BalanceConc!9037 Empty!4548) (print!854 thiss!19762 (singletonSeq!1012 t2!34)) (BalanceConc!9039 Empty!4549)))))

(assert (=> d!384329 (= (lex!915 thiss!19762 rules!2550 (print!854 thiss!19762 (singletonSeq!1012 t2!34))) lt!449113)))

(declare-fun b!1356216 () Bool)

(declare-fun res!610982 () Bool)

(assert (=> b!1356216 (=> (not res!610982) (not e!867894))))

(assert (=> b!1356216 (= res!610982 (= (list!5290 (_1!7582 lt!449113)) (_1!7583 (lexList!606 thiss!19762 rules!2550 (list!5291 (print!854 thiss!19762 (singletonSeq!1012 t2!34)))))))))

(declare-fun b!1356217 () Bool)

(assert (=> b!1356217 (= e!867894 (= (list!5291 (_2!7582 lt!449113)) (_2!7583 (lexList!606 thiss!19762 rules!2550 (list!5291 (print!854 thiss!19762 (singletonSeq!1012 t2!34)))))))))

(declare-fun b!1356218 () Bool)

(assert (=> b!1356218 (= e!867893 (not (isEmpty!8281 (_1!7582 lt!449113))))))

(assert (= (and d!384329 c!222561) b!1356214))

(assert (= (and d!384329 (not c!222561)) b!1356215))

(assert (= (and b!1356214 res!610980) b!1356218))

(assert (= (and d!384329 res!610981) b!1356216))

(assert (= (and b!1356216 res!610982) b!1356217))

(declare-fun m!1518839 () Bool)

(assert (=> b!1356214 m!1518839))

(assert (=> b!1356214 m!1518111))

(declare-fun m!1518841 () Bool)

(assert (=> b!1356214 m!1518841))

(declare-fun m!1518843 () Bool)

(assert (=> b!1356217 m!1518843))

(assert (=> b!1356217 m!1518111))

(declare-fun m!1518845 () Bool)

(assert (=> b!1356217 m!1518845))

(assert (=> b!1356217 m!1518845))

(declare-fun m!1518847 () Bool)

(assert (=> b!1356217 m!1518847))

(declare-fun m!1518849 () Bool)

(assert (=> b!1356218 m!1518849))

(declare-fun m!1518851 () Bool)

(assert (=> d!384329 m!1518851))

(assert (=> d!384329 m!1518111))

(assert (=> d!384329 m!1518111))

(declare-fun m!1518853 () Bool)

(assert (=> d!384329 m!1518853))

(declare-fun m!1518855 () Bool)

(assert (=> b!1356216 m!1518855))

(assert (=> b!1356216 m!1518111))

(assert (=> b!1356216 m!1518845))

(assert (=> b!1356216 m!1518845))

(assert (=> b!1356216 m!1518847))

(assert (=> b!1355658 d!384329))

(declare-fun d!384331 () Bool)

(declare-fun lt!449114 () BalanceConc!9036)

(assert (=> d!384331 (= (list!5291 lt!449114) (printList!596 thiss!19762 (list!5290 (singletonSeq!1012 t2!34))))))

(assert (=> d!384331 (= lt!449114 (printTailRec!578 thiss!19762 (singletonSeq!1012 t2!34) 0 (BalanceConc!9037 Empty!4548)))))

(assert (=> d!384331 (= (print!854 thiss!19762 (singletonSeq!1012 t2!34)) lt!449114)))

(declare-fun bs!333931 () Bool)

(assert (= bs!333931 d!384331))

(declare-fun m!1518857 () Bool)

(assert (=> bs!333931 m!1518857))

(assert (=> bs!333931 m!1518109))

(assert (=> bs!333931 m!1518817))

(assert (=> bs!333931 m!1518817))

(declare-fun m!1518859 () Bool)

(assert (=> bs!333931 m!1518859))

(assert (=> bs!333931 m!1518109))

(declare-fun m!1518861 () Bool)

(assert (=> bs!333931 m!1518861))

(assert (=> b!1355658 d!384331))

(declare-fun d!384333 () Bool)

(declare-fun e!867896 () Bool)

(assert (=> d!384333 e!867896))

(declare-fun res!610983 () Bool)

(assert (=> d!384333 (=> (not res!610983) (not e!867896))))

(declare-fun lt!449115 () BalanceConc!9038)

(assert (=> d!384333 (= res!610983 (= (list!5290 lt!449115) (Cons!13814 t2!34 Nil!13814)))))

(assert (=> d!384333 (= lt!449115 (singleton!434 t2!34))))

(assert (=> d!384333 (= (singletonSeq!1012 t2!34) lt!449115)))

(declare-fun b!1356219 () Bool)

(assert (=> b!1356219 (= e!867896 (isBalanced!1328 (c!222460 lt!449115)))))

(assert (= (and d!384333 res!610983) b!1356219))

(declare-fun m!1518863 () Bool)

(assert (=> d!384333 m!1518863))

(declare-fun m!1518865 () Bool)

(assert (=> d!384333 m!1518865))

(declare-fun m!1518867 () Bool)

(assert (=> b!1356219 m!1518867))

(assert (=> b!1355658 d!384333))

(declare-fun bm!91244 () Bool)

(declare-fun call!91249 () Option!2648)

(declare-fun maxPrefixOneRule!605 (LexerInterface!2088 Rule!4586 List!13876) Option!2648)

(assert (=> bm!91244 (= call!91249 (maxPrefixOneRule!605 thiss!19762 (h!19213 rules!2550) lt!448925))))

(declare-fun b!1356238 () Bool)

(declare-fun e!867905 () Option!2648)

(declare-fun lt!449129 () Option!2648)

(declare-fun lt!449130 () Option!2648)

(assert (=> b!1356238 (= e!867905 (ite (and ((_ is None!2647) lt!449129) ((_ is None!2647) lt!449130)) None!2647 (ite ((_ is None!2647) lt!449130) lt!449129 (ite ((_ is None!2647) lt!449129) lt!449130 (ite (>= (size!11288 (_1!7581 (v!21373 lt!449129))) (size!11288 (_1!7581 (v!21373 lt!449130)))) lt!449129 lt!449130)))))))

(assert (=> b!1356238 (= lt!449129 call!91249)))

(assert (=> b!1356238 (= lt!449130 (maxPrefix!1070 thiss!19762 (t!120345 rules!2550) lt!448925))))

(declare-fun b!1356239 () Bool)

(declare-fun res!611002 () Bool)

(declare-fun e!867904 () Bool)

(assert (=> b!1356239 (=> (not res!611002) (not e!867904))))

(declare-fun lt!449127 () Option!2648)

(declare-fun get!4327 (Option!2648) tuple2!13390)

(assert (=> b!1356239 (= res!611002 (= (list!5291 (charsOf!1365 (_1!7581 (get!4327 lt!449127)))) (originalCharacters!3255 (_1!7581 (get!4327 lt!449127)))))))

(declare-fun b!1356240 () Bool)

(declare-fun res!610998 () Bool)

(assert (=> b!1356240 (=> (not res!610998) (not e!867904))))

(declare-fun apply!3335 (TokenValueInjection!4626 BalanceConc!9036) TokenValue!2483)

(declare-fun seqFromList!1623 (List!13876) BalanceConc!9036)

(assert (=> b!1356240 (= res!610998 (= (value!77833 (_1!7581 (get!4327 lt!449127))) (apply!3335 (transformation!2393 (rule!4142 (_1!7581 (get!4327 lt!449127)))) (seqFromList!1623 (originalCharacters!3255 (_1!7581 (get!4327 lt!449127)))))))))

(declare-fun b!1356241 () Bool)

(declare-fun res!611004 () Bool)

(assert (=> b!1356241 (=> (not res!611004) (not e!867904))))

(assert (=> b!1356241 (= res!611004 (= (++!3554 (list!5291 (charsOf!1365 (_1!7581 (get!4327 lt!449127)))) (_2!7581 (get!4327 lt!449127))) lt!448925))))

(declare-fun d!384335 () Bool)

(declare-fun e!867903 () Bool)

(assert (=> d!384335 e!867903))

(declare-fun res!611001 () Bool)

(assert (=> d!384335 (=> res!611001 e!867903)))

(declare-fun isEmpty!8282 (Option!2648) Bool)

(assert (=> d!384335 (= res!611001 (isEmpty!8282 lt!449127))))

(assert (=> d!384335 (= lt!449127 e!867905)))

(declare-fun c!222564 () Bool)

(assert (=> d!384335 (= c!222564 (and ((_ is Cons!13812) rules!2550) ((_ is Nil!13812) (t!120345 rules!2550))))))

(declare-fun lt!449128 () Unit!19963)

(declare-fun lt!449126 () Unit!19963)

(assert (=> d!384335 (= lt!449128 lt!449126)))

(declare-fun isPrefix!1117 (List!13876 List!13876) Bool)

(assert (=> d!384335 (isPrefix!1117 lt!448925 lt!448925)))

(declare-fun lemmaIsPrefixRefl!779 (List!13876 List!13876) Unit!19963)

(assert (=> d!384335 (= lt!449126 (lemmaIsPrefixRefl!779 lt!448925 lt!448925))))

(declare-fun rulesValidInductive!758 (LexerInterface!2088 List!13878) Bool)

(assert (=> d!384335 (rulesValidInductive!758 thiss!19762 rules!2550)))

(assert (=> d!384335 (= (maxPrefix!1070 thiss!19762 rules!2550 lt!448925) lt!449127)))

(declare-fun b!1356242 () Bool)

(declare-fun res!611003 () Bool)

(assert (=> b!1356242 (=> (not res!611003) (not e!867904))))

(assert (=> b!1356242 (= res!611003 (< (size!11297 (_2!7581 (get!4327 lt!449127))) (size!11297 lt!448925)))))

(declare-fun b!1356243 () Bool)

(declare-fun res!610999 () Bool)

(assert (=> b!1356243 (=> (not res!610999) (not e!867904))))

(assert (=> b!1356243 (= res!610999 (matchR!1700 (regex!2393 (rule!4142 (_1!7581 (get!4327 lt!449127)))) (list!5291 (charsOf!1365 (_1!7581 (get!4327 lt!449127))))))))

(declare-fun b!1356244 () Bool)

(assert (=> b!1356244 (= e!867903 e!867904)))

(declare-fun res!611000 () Bool)

(assert (=> b!1356244 (=> (not res!611000) (not e!867904))))

(declare-fun isDefined!2205 (Option!2648) Bool)

(assert (=> b!1356244 (= res!611000 (isDefined!2205 lt!449127))))

(declare-fun b!1356245 () Bool)

(assert (=> b!1356245 (= e!867904 (contains!2556 rules!2550 (rule!4142 (_1!7581 (get!4327 lt!449127)))))))

(declare-fun b!1356246 () Bool)

(assert (=> b!1356246 (= e!867905 call!91249)))

(assert (= (and d!384335 c!222564) b!1356246))

(assert (= (and d!384335 (not c!222564)) b!1356238))

(assert (= (or b!1356246 b!1356238) bm!91244))

(assert (= (and d!384335 (not res!611001)) b!1356244))

(assert (= (and b!1356244 res!611000) b!1356239))

(assert (= (and b!1356239 res!611002) b!1356242))

(assert (= (and b!1356242 res!611003) b!1356241))

(assert (= (and b!1356241 res!611004) b!1356240))

(assert (= (and b!1356240 res!610998) b!1356243))

(assert (= (and b!1356243 res!610999) b!1356245))

(declare-fun m!1518869 () Bool)

(assert (=> b!1356239 m!1518869))

(declare-fun m!1518871 () Bool)

(assert (=> b!1356239 m!1518871))

(assert (=> b!1356239 m!1518871))

(declare-fun m!1518873 () Bool)

(assert (=> b!1356239 m!1518873))

(declare-fun m!1518875 () Bool)

(assert (=> b!1356238 m!1518875))

(assert (=> b!1356240 m!1518869))

(declare-fun m!1518877 () Bool)

(assert (=> b!1356240 m!1518877))

(assert (=> b!1356240 m!1518877))

(declare-fun m!1518879 () Bool)

(assert (=> b!1356240 m!1518879))

(assert (=> b!1356242 m!1518869))

(declare-fun m!1518881 () Bool)

(assert (=> b!1356242 m!1518881))

(assert (=> b!1356242 m!1518623))

(declare-fun m!1518883 () Bool)

(assert (=> b!1356244 m!1518883))

(assert (=> b!1356243 m!1518869))

(assert (=> b!1356243 m!1518871))

(assert (=> b!1356243 m!1518871))

(assert (=> b!1356243 m!1518873))

(assert (=> b!1356243 m!1518873))

(declare-fun m!1518885 () Bool)

(assert (=> b!1356243 m!1518885))

(assert (=> b!1356241 m!1518869))

(assert (=> b!1356241 m!1518871))

(assert (=> b!1356241 m!1518871))

(assert (=> b!1356241 m!1518873))

(assert (=> b!1356241 m!1518873))

(declare-fun m!1518887 () Bool)

(assert (=> b!1356241 m!1518887))

(declare-fun m!1518889 () Bool)

(assert (=> d!384335 m!1518889))

(declare-fun m!1518891 () Bool)

(assert (=> d!384335 m!1518891))

(declare-fun m!1518893 () Bool)

(assert (=> d!384335 m!1518893))

(declare-fun m!1518895 () Bool)

(assert (=> d!384335 m!1518895))

(assert (=> b!1356245 m!1518869))

(declare-fun m!1518897 () Bool)

(assert (=> b!1356245 m!1518897))

(declare-fun m!1518899 () Bool)

(assert (=> bm!91244 m!1518899))

(assert (=> b!1355657 d!384335))

(declare-fun d!384337 () Bool)

(declare-fun res!611009 () Bool)

(declare-fun e!867910 () Bool)

(assert (=> d!384337 (=> res!611009 e!867910)))

(assert (=> d!384337 (= res!611009 (not ((_ is Cons!13812) rules!2550)))))

(assert (=> d!384337 (= (sepAndNonSepRulesDisjointChars!766 rules!2550 rules!2550) e!867910)))

(declare-fun b!1356251 () Bool)

(declare-fun e!867911 () Bool)

(assert (=> b!1356251 (= e!867910 e!867911)))

(declare-fun res!611010 () Bool)

(assert (=> b!1356251 (=> (not res!611010) (not e!867911))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!358 (Rule!4586 List!13878) Bool)

(assert (=> b!1356251 (= res!611010 (ruleDisjointCharsFromAllFromOtherType!358 (h!19213 rules!2550) rules!2550))))

(declare-fun b!1356252 () Bool)

(assert (=> b!1356252 (= e!867911 (sepAndNonSepRulesDisjointChars!766 rules!2550 (t!120345 rules!2550)))))

(assert (= (and d!384337 (not res!611009)) b!1356251))

(assert (= (and b!1356251 res!611010) b!1356252))

(declare-fun m!1518901 () Bool)

(assert (=> b!1356251 m!1518901))

(declare-fun m!1518903 () Bool)

(assert (=> b!1356252 m!1518903))

(assert (=> b!1355656 d!384337))

(declare-fun d!384339 () Bool)

(declare-fun lt!449133 () Bool)

(declare-fun content!1991 (List!13879) (InoxSet Regex!3707))

(assert (=> d!384339 (= lt!449133 (select (content!1991 (map!3050 rules!2550 lambda!57269)) lt!448923))))

(declare-fun e!867916 () Bool)

(assert (=> d!384339 (= lt!449133 e!867916)))

(declare-fun res!611016 () Bool)

(assert (=> d!384339 (=> (not res!611016) (not e!867916))))

(assert (=> d!384339 (= res!611016 ((_ is Cons!13813) (map!3050 rules!2550 lambda!57269)))))

(assert (=> d!384339 (= (contains!2557 (map!3050 rules!2550 lambda!57269) lt!448923) lt!449133)))

(declare-fun b!1356257 () Bool)

(declare-fun e!867917 () Bool)

(assert (=> b!1356257 (= e!867916 e!867917)))

(declare-fun res!611015 () Bool)

(assert (=> b!1356257 (=> res!611015 e!867917)))

(assert (=> b!1356257 (= res!611015 (= (h!19214 (map!3050 rules!2550 lambda!57269)) lt!448923))))

(declare-fun b!1356258 () Bool)

(assert (=> b!1356258 (= e!867917 (contains!2557 (t!120346 (map!3050 rules!2550 lambda!57269)) lt!448923))))

(assert (= (and d!384339 res!611016) b!1356257))

(assert (= (and b!1356257 (not res!611015)) b!1356258))

(assert (=> d!384339 m!1518101))

(declare-fun m!1518905 () Bool)

(assert (=> d!384339 m!1518905))

(declare-fun m!1518907 () Bool)

(assert (=> d!384339 m!1518907))

(declare-fun m!1518909 () Bool)

(assert (=> b!1356258 m!1518909))

(assert (=> b!1355655 d!384339))

(assert (=> b!1355655 d!384125))

(declare-fun b!1356272 () Bool)

(declare-fun lt!449138 () Unit!19963)

(declare-fun Unit!19968 () Unit!19963)

(assert (=> b!1356272 (= lt!449138 Unit!19968)))

(assert (=> b!1356272 false))

(declare-fun e!867927 () Regex!3707)

(declare-fun head!2429 (List!13879) Regex!3707)

(assert (=> b!1356272 (= e!867927 (head!2429 (map!3050 rules!2550 lambda!57269)))))

(declare-fun b!1356273 () Bool)

(assert (=> b!1356273 (= e!867927 (getWitness!332 (t!120346 (map!3050 rules!2550 lambda!57269)) lambda!57270))))

(declare-fun lt!449139 () Regex!3707)

(declare-fun e!867929 () Bool)

(declare-fun b!1356274 () Bool)

(assert (=> b!1356274 (= e!867929 (contains!2557 (map!3050 rules!2550 lambda!57269) lt!449139))))

(declare-fun b!1356275 () Bool)

(declare-fun e!867928 () Regex!3707)

(assert (=> b!1356275 (= e!867928 e!867927)))

(declare-fun c!222570 () Bool)

(assert (=> b!1356275 (= c!222570 ((_ is Cons!13813) (map!3050 rules!2550 lambda!57269)))))

(declare-fun e!867926 () Bool)

(declare-fun b!1356276 () Bool)

(declare-fun dynLambda!6188 (Int Regex!3707) Bool)

(assert (=> b!1356276 (= e!867926 (dynLambda!6188 lambda!57270 (h!19214 (map!3050 rules!2550 lambda!57269))))))

(declare-fun d!384341 () Bool)

(assert (=> d!384341 e!867929))

(declare-fun res!611022 () Bool)

(assert (=> d!384341 (=> (not res!611022) (not e!867929))))

(assert (=> d!384341 (= res!611022 (dynLambda!6188 lambda!57270 lt!449139))))

(assert (=> d!384341 (= lt!449139 e!867928)))

(declare-fun c!222569 () Bool)

(assert (=> d!384341 (= c!222569 e!867926)))

(declare-fun res!611021 () Bool)

(assert (=> d!384341 (=> (not res!611021) (not e!867926))))

(assert (=> d!384341 (= res!611021 ((_ is Cons!13813) (map!3050 rules!2550 lambda!57269)))))

(assert (=> d!384341 (exists!445 (map!3050 rules!2550 lambda!57269) lambda!57270)))

(assert (=> d!384341 (= (getWitness!332 (map!3050 rules!2550 lambda!57269) lambda!57270) lt!449139)))

(declare-fun b!1356271 () Bool)

(assert (=> b!1356271 (= e!867928 (h!19214 (map!3050 rules!2550 lambda!57269)))))

(assert (= (and d!384341 res!611021) b!1356276))

(assert (= (and d!384341 c!222569) b!1356271))

(assert (= (and d!384341 (not c!222569)) b!1356275))

(assert (= (and b!1356275 c!222570) b!1356273))

(assert (= (and b!1356275 (not c!222570)) b!1356272))

(assert (= (and d!384341 res!611022) b!1356274))

(declare-fun b_lambda!40805 () Bool)

(assert (=> (not b_lambda!40805) (not b!1356276)))

(declare-fun b_lambda!40807 () Bool)

(assert (=> (not b_lambda!40807) (not d!384341)))

(assert (=> b!1356274 m!1518101))

(declare-fun m!1518911 () Bool)

(assert (=> b!1356274 m!1518911))

(declare-fun m!1518913 () Bool)

(assert (=> d!384341 m!1518913))

(assert (=> d!384341 m!1518101))

(assert (=> d!384341 m!1518117))

(assert (=> b!1356272 m!1518101))

(declare-fun m!1518915 () Bool)

(assert (=> b!1356272 m!1518915))

(declare-fun m!1518917 () Bool)

(assert (=> b!1356273 m!1518917))

(declare-fun m!1518919 () Bool)

(assert (=> b!1356276 m!1518919))

(assert (=> b!1355655 d!384341))

(declare-fun d!384343 () Bool)

(assert (=> d!384343 (= (inv!18153 (tag!2655 (rule!4142 t2!34))) (= (mod (str.len (value!77832 (tag!2655 (rule!4142 t2!34)))) 2) 0))))

(assert (=> b!1355654 d!384343))

(declare-fun d!384345 () Bool)

(declare-fun res!611023 () Bool)

(declare-fun e!867930 () Bool)

(assert (=> d!384345 (=> (not res!611023) (not e!867930))))

(assert (=> d!384345 (= res!611023 (semiInverseModEq!916 (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (toValue!3648 (transformation!2393 (rule!4142 t2!34)))))))

(assert (=> d!384345 (= (inv!18156 (transformation!2393 (rule!4142 t2!34))) e!867930)))

(declare-fun b!1356277 () Bool)

(assert (=> b!1356277 (= e!867930 (equivClasses!875 (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (toValue!3648 (transformation!2393 (rule!4142 t2!34)))))))

(assert (= (and d!384345 res!611023) b!1356277))

(declare-fun m!1518921 () Bool)

(assert (=> d!384345 m!1518921))

(declare-fun m!1518923 () Bool)

(assert (=> b!1356277 m!1518923))

(assert (=> b!1355654 d!384345))

(declare-fun d!384347 () Bool)

(declare-fun lt!449142 () Int)

(assert (=> d!384347 (= lt!449142 (size!11297 (list!5291 lt!448930)))))

(declare-fun size!11300 (Conc!4548) Int)

(assert (=> d!384347 (= lt!449142 (size!11300 (c!222458 lt!448930)))))

(assert (=> d!384347 (= (size!11287 lt!448930) lt!449142)))

(declare-fun bs!333932 () Bool)

(assert (= bs!333932 d!384347))

(assert (=> bs!333932 m!1518591))

(assert (=> bs!333932 m!1518591))

(declare-fun m!1518925 () Bool)

(assert (=> bs!333932 m!1518925))

(declare-fun m!1518927 () Bool)

(assert (=> bs!333932 m!1518927))

(assert (=> b!1355642 d!384347))

(declare-fun d!384349 () Bool)

(declare-fun lt!449143 () BalanceConc!9036)

(assert (=> d!384349 (= (list!5291 lt!449143) (originalCharacters!3255 t2!34))))

(assert (=> d!384349 (= lt!449143 (dynLambda!6183 (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (value!77833 t2!34)))))

(assert (=> d!384349 (= (charsOf!1365 t2!34) lt!449143)))

(declare-fun b_lambda!40809 () Bool)

(assert (=> (not b_lambda!40809) (not d!384349)))

(assert (=> d!384349 t!120356))

(declare-fun b_and!90781 () Bool)

(assert (= b_and!90759 (and (=> t!120356 result!86590) b_and!90781)))

(assert (=> d!384349 t!120358))

(declare-fun b_and!90783 () Bool)

(assert (= b_and!90761 (and (=> t!120358 result!86592) b_and!90783)))

(assert (=> d!384349 t!120360))

(declare-fun b_and!90785 () Bool)

(assert (= b_and!90763 (and (=> t!120360 result!86594) b_and!90785)))

(declare-fun m!1518929 () Bool)

(assert (=> d!384349 m!1518929))

(assert (=> d!384349 m!1518305))

(assert (=> b!1355642 d!384349))

(declare-fun d!384351 () Bool)

(declare-fun choose!8340 (Int) Bool)

(assert (=> d!384351 (= (Exists!859 lambda!57268) (choose!8340 lambda!57268))))

(declare-fun bs!333933 () Bool)

(assert (= bs!333933 d!384351))

(declare-fun m!1518931 () Bool)

(assert (=> bs!333933 m!1518931))

(assert (=> b!1355663 d!384351))

(declare-fun bs!333934 () Bool)

(declare-fun d!384353 () Bool)

(assert (= bs!333934 (and d!384353 b!1355663)))

(declare-fun lambda!57315 () Int)

(assert (=> bs!333934 (= lambda!57315 lambda!57268)))

(assert (=> d!384353 true))

(assert (=> d!384353 true))

(assert (=> d!384353 (Exists!859 lambda!57315)))

(declare-fun lt!449146 () Unit!19963)

(declare-fun choose!8341 (Regex!3707 List!13876) Unit!19963)

(assert (=> d!384353 (= lt!449146 (choose!8341 lt!448920 lt!448926))))

(assert (=> d!384353 (validRegex!1607 lt!448920)))

(assert (=> d!384353 (= (lemmaPrefixMatchThenExistsStringThatMatches!177 lt!448920 lt!448926) lt!449146)))

(declare-fun bs!333935 () Bool)

(assert (= bs!333935 d!384353))

(declare-fun m!1518933 () Bool)

(assert (=> bs!333935 m!1518933))

(declare-fun m!1518935 () Bool)

(assert (=> bs!333935 m!1518935))

(assert (=> bs!333935 m!1518321))

(assert (=> b!1355663 d!384353))

(declare-fun d!384355 () Bool)

(assert (=> d!384355 (= (isEmpty!8273 rules!2550) ((_ is Nil!13812) rules!2550))))

(assert (=> b!1355662 d!384355))

(declare-fun d!384357 () Bool)

(declare-fun lt!449147 () Bool)

(assert (=> d!384357 (= lt!449147 (select (content!1989 lt!448918) lt!448914))))

(declare-fun e!867934 () Bool)

(assert (=> d!384357 (= lt!449147 e!867934)))

(declare-fun res!611026 () Bool)

(assert (=> d!384357 (=> (not res!611026) (not e!867934))))

(assert (=> d!384357 (= res!611026 ((_ is Cons!13810) lt!448918))))

(assert (=> d!384357 (= (contains!2555 lt!448918 lt!448914) lt!449147)))

(declare-fun b!1356280 () Bool)

(declare-fun e!867933 () Bool)

(assert (=> b!1356280 (= e!867934 e!867933)))

(declare-fun res!611027 () Bool)

(assert (=> b!1356280 (=> res!611027 e!867933)))

(assert (=> b!1356280 (= res!611027 (= (h!19211 lt!448918) lt!448914))))

(declare-fun b!1356281 () Bool)

(assert (=> b!1356281 (= e!867933 (contains!2555 (t!120343 lt!448918) lt!448914))))

(assert (= (and d!384357 res!611026) b!1356280))

(assert (= (and b!1356280 (not res!611027)) b!1356281))

(assert (=> d!384357 m!1518831))

(declare-fun m!1518937 () Bool)

(assert (=> d!384357 m!1518937))

(declare-fun m!1518939 () Bool)

(assert (=> b!1356281 m!1518939))

(assert (=> b!1355661 d!384357))

(declare-fun d!384359 () Bool)

(declare-fun lt!449150 () Bool)

(assert (=> d!384359 (= lt!449150 (isEmpty!8277 (list!5291 (_2!7582 lt!448915))))))

(declare-fun isEmpty!8283 (Conc!4548) Bool)

(assert (=> d!384359 (= lt!449150 (isEmpty!8283 (c!222458 (_2!7582 lt!448915))))))

(assert (=> d!384359 (= (isEmpty!8272 (_2!7582 lt!448915)) lt!449150)))

(declare-fun bs!333936 () Bool)

(assert (= bs!333936 d!384359))

(declare-fun m!1518941 () Bool)

(assert (=> bs!333936 m!1518941))

(assert (=> bs!333936 m!1518941))

(declare-fun m!1518943 () Bool)

(assert (=> bs!333936 m!1518943))

(declare-fun m!1518945 () Bool)

(assert (=> bs!333936 m!1518945))

(assert (=> b!1355660 d!384359))

(declare-fun b!1356292 () Bool)

(declare-fun b_free!33011 () Bool)

(declare-fun b_next!33715 () Bool)

(assert (=> b!1356292 (= b_free!33011 (not b_next!33715))))

(declare-fun tp!391401 () Bool)

(declare-fun b_and!90787 () Bool)

(assert (=> b!1356292 (= tp!391401 b_and!90787)))

(declare-fun b_free!33013 () Bool)

(declare-fun b_next!33717 () Bool)

(assert (=> b!1356292 (= b_free!33013 (not b_next!33717))))

(declare-fun t!120381 () Bool)

(declare-fun tb!71261 () Bool)

(assert (=> (and b!1356292 (= (toChars!3507 (transformation!2393 (h!19213 (t!120345 rules!2550)))) (toChars!3507 (transformation!2393 (rule!4142 t1!34)))) t!120381) tb!71261))

(declare-fun result!86622 () Bool)

(assert (= result!86622 result!86582))

(assert (=> b!1355763 t!120381))

(declare-fun t!120383 () Bool)

(declare-fun tb!71263 () Bool)

(assert (=> (and b!1356292 (= (toChars!3507 (transformation!2393 (h!19213 (t!120345 rules!2550)))) (toChars!3507 (transformation!2393 (rule!4142 t2!34)))) t!120383) tb!71263))

(declare-fun result!86624 () Bool)

(assert (= result!86624 result!86590))

(assert (=> b!1355770 t!120383))

(assert (=> d!384257 t!120381))

(assert (=> d!384349 t!120383))

(declare-fun tp!391400 () Bool)

(declare-fun b_and!90789 () Bool)

(assert (=> b!1356292 (= tp!391400 (and (=> t!120381 result!86622) (=> t!120383 result!86624) b_and!90789))))

(declare-fun e!867946 () Bool)

(assert (=> b!1356292 (= e!867946 (and tp!391401 tp!391400))))

(declare-fun b!1356291 () Bool)

(declare-fun tp!391398 () Bool)

(declare-fun e!867943 () Bool)

(assert (=> b!1356291 (= e!867943 (and tp!391398 (inv!18153 (tag!2655 (h!19213 (t!120345 rules!2550)))) (inv!18156 (transformation!2393 (h!19213 (t!120345 rules!2550)))) e!867946))))

(declare-fun b!1356290 () Bool)

(declare-fun e!867945 () Bool)

(declare-fun tp!391399 () Bool)

(assert (=> b!1356290 (= e!867945 (and e!867943 tp!391399))))

(assert (=> b!1355664 (= tp!391332 e!867945)))

(assert (= b!1356291 b!1356292))

(assert (= b!1356290 b!1356291))

(assert (= (and b!1355664 ((_ is Cons!13812) (t!120345 rules!2550))) b!1356290))

(declare-fun m!1518947 () Bool)

(assert (=> b!1356291 m!1518947))

(declare-fun m!1518949 () Bool)

(assert (=> b!1356291 m!1518949))

(declare-fun e!867949 () Bool)

(assert (=> b!1355653 (= tp!391337 e!867949)))

(declare-fun b!1356306 () Bool)

(declare-fun tp!391415 () Bool)

(declare-fun tp!391412 () Bool)

(assert (=> b!1356306 (= e!867949 (and tp!391415 tp!391412))))

(declare-fun b!1356304 () Bool)

(declare-fun tp!391413 () Bool)

(declare-fun tp!391416 () Bool)

(assert (=> b!1356304 (= e!867949 (and tp!391413 tp!391416))))

(declare-fun b!1356305 () Bool)

(declare-fun tp!391414 () Bool)

(assert (=> b!1356305 (= e!867949 tp!391414)))

(declare-fun b!1356303 () Bool)

(declare-fun tp_is_empty!6723 () Bool)

(assert (=> b!1356303 (= e!867949 tp_is_empty!6723)))

(assert (= (and b!1355653 ((_ is ElementMatch!3707) (regex!2393 (h!19213 rules!2550)))) b!1356303))

(assert (= (and b!1355653 ((_ is Concat!6191) (regex!2393 (h!19213 rules!2550)))) b!1356304))

(assert (= (and b!1355653 ((_ is Star!3707) (regex!2393 (h!19213 rules!2550)))) b!1356305))

(assert (= (and b!1355653 ((_ is Union!3707) (regex!2393 (h!19213 rules!2550)))) b!1356306))

(declare-fun b!1356311 () Bool)

(declare-fun e!867952 () Bool)

(declare-fun tp!391419 () Bool)

(assert (=> b!1356311 (= e!867952 (and tp_is_empty!6723 tp!391419))))

(assert (=> b!1355651 (= tp!391331 e!867952)))

(assert (= (and b!1355651 ((_ is Cons!13810) (originalCharacters!3255 t2!34))) b!1356311))

(declare-fun b!1356312 () Bool)

(declare-fun e!867953 () Bool)

(declare-fun tp!391420 () Bool)

(assert (=> b!1356312 (= e!867953 (and tp_is_empty!6723 tp!391420))))

(assert (=> b!1355644 (= tp!391335 e!867953)))

(assert (= (and b!1355644 ((_ is Cons!13810) (originalCharacters!3255 t1!34))) b!1356312))

(declare-fun e!867954 () Bool)

(assert (=> b!1355665 (= tp!391339 e!867954)))

(declare-fun b!1356316 () Bool)

(declare-fun tp!391424 () Bool)

(declare-fun tp!391421 () Bool)

(assert (=> b!1356316 (= e!867954 (and tp!391424 tp!391421))))

(declare-fun b!1356314 () Bool)

(declare-fun tp!391422 () Bool)

(declare-fun tp!391425 () Bool)

(assert (=> b!1356314 (= e!867954 (and tp!391422 tp!391425))))

(declare-fun b!1356315 () Bool)

(declare-fun tp!391423 () Bool)

(assert (=> b!1356315 (= e!867954 tp!391423)))

(declare-fun b!1356313 () Bool)

(assert (=> b!1356313 (= e!867954 tp_is_empty!6723)))

(assert (= (and b!1355665 ((_ is ElementMatch!3707) (regex!2393 (rule!4142 t1!34)))) b!1356313))

(assert (= (and b!1355665 ((_ is Concat!6191) (regex!2393 (rule!4142 t1!34)))) b!1356314))

(assert (= (and b!1355665 ((_ is Star!3707) (regex!2393 (rule!4142 t1!34)))) b!1356315))

(assert (= (and b!1355665 ((_ is Union!3707) (regex!2393 (rule!4142 t1!34)))) b!1356316))

(declare-fun e!867955 () Bool)

(assert (=> b!1355654 (= tp!391338 e!867955)))

(declare-fun b!1356320 () Bool)

(declare-fun tp!391429 () Bool)

(declare-fun tp!391426 () Bool)

(assert (=> b!1356320 (= e!867955 (and tp!391429 tp!391426))))

(declare-fun b!1356318 () Bool)

(declare-fun tp!391427 () Bool)

(declare-fun tp!391430 () Bool)

(assert (=> b!1356318 (= e!867955 (and tp!391427 tp!391430))))

(declare-fun b!1356319 () Bool)

(declare-fun tp!391428 () Bool)

(assert (=> b!1356319 (= e!867955 tp!391428)))

(declare-fun b!1356317 () Bool)

(assert (=> b!1356317 (= e!867955 tp_is_empty!6723)))

(assert (= (and b!1355654 ((_ is ElementMatch!3707) (regex!2393 (rule!4142 t2!34)))) b!1356317))

(assert (= (and b!1355654 ((_ is Concat!6191) (regex!2393 (rule!4142 t2!34)))) b!1356318))

(assert (= (and b!1355654 ((_ is Star!3707) (regex!2393 (rule!4142 t2!34)))) b!1356319))

(assert (= (and b!1355654 ((_ is Union!3707) (regex!2393 (rule!4142 t2!34)))) b!1356320))

(declare-fun b_lambda!40811 () Bool)

(assert (= b_lambda!40803 (or b!1355663 b_lambda!40811)))

(declare-fun bs!333937 () Bool)

(declare-fun d!384361 () Bool)

(assert (= bs!333937 (and d!384361 b!1355663)))

(declare-fun res!611028 () Bool)

(declare-fun e!867956 () Bool)

(assert (=> bs!333937 (=> (not res!611028) (not e!867956))))

(assert (=> bs!333937 (= res!611028 (matchR!1700 lt!448920 lt!449106))))

(assert (=> bs!333937 (= (dynLambda!6187 lambda!57268 lt!449106) e!867956)))

(declare-fun b!1356321 () Bool)

(assert (=> b!1356321 (= e!867956 (isPrefix!1117 lt!448926 lt!449106))))

(assert (= (and bs!333937 res!611028) b!1356321))

(declare-fun m!1518951 () Bool)

(assert (=> bs!333937 m!1518951))

(declare-fun m!1518953 () Bool)

(assert (=> b!1356321 m!1518953))

(assert (=> d!384319 d!384361))

(declare-fun b_lambda!40813 () Bool)

(assert (= b_lambda!40761 (or (and b!1355643 b_free!32997 (= (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toChars!3507 (transformation!2393 (rule!4142 t2!34))))) (and b!1355659 b_free!33001 (= (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (toChars!3507 (transformation!2393 (rule!4142 t2!34))))) (and b!1355675 b_free!33005) (and b!1356292 b_free!33013 (= (toChars!3507 (transformation!2393 (h!19213 (t!120345 rules!2550)))) (toChars!3507 (transformation!2393 (rule!4142 t2!34))))) b_lambda!40813)))

(declare-fun b_lambda!40815 () Bool)

(assert (= b_lambda!40799 (or b!1355645 b_lambda!40815)))

(declare-fun bs!333938 () Bool)

(declare-fun d!384363 () Bool)

(assert (= bs!333938 (and d!384363 b!1355645)))

(assert (=> bs!333938 (= (dynLambda!6186 lambda!57271 (h!19213 rules!2550)) (= (regex!2393 (h!19213 rules!2550)) lt!448923))))

(assert (=> b!1356187 d!384363))

(declare-fun b_lambda!40817 () Bool)

(assert (= b_lambda!40773 (or (and b!1355643 b_free!32997 (= (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toChars!3507 (transformation!2393 (rule!4142 t1!34))))) (and b!1355659 b_free!33001) (and b!1355675 b_free!33005 (= (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (toChars!3507 (transformation!2393 (rule!4142 t1!34))))) (and b!1356292 b_free!33013 (= (toChars!3507 (transformation!2393 (h!19213 (t!120345 rules!2550)))) (toChars!3507 (transformation!2393 (rule!4142 t1!34))))) b_lambda!40817)))

(declare-fun b_lambda!40819 () Bool)

(assert (= b_lambda!40801 (or b!1355645 b_lambda!40819)))

(declare-fun bs!333939 () Bool)

(declare-fun d!384365 () Bool)

(assert (= bs!333939 (and d!384365 b!1355645)))

(assert (=> bs!333939 (= (dynLambda!6186 lambda!57271 lt!449095) (= (regex!2393 lt!449095) lt!448923))))

(assert (=> d!384311 d!384365))

(declare-fun b_lambda!40821 () Bool)

(assert (= b_lambda!40759 (or (and b!1355643 b_free!32997 (= (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toChars!3507 (transformation!2393 (rule!4142 t1!34))))) (and b!1355659 b_free!33001) (and b!1355675 b_free!33005 (= (toChars!3507 (transformation!2393 (rule!4142 t2!34))) (toChars!3507 (transformation!2393 (rule!4142 t1!34))))) (and b!1356292 b_free!33013 (= (toChars!3507 (transformation!2393 (h!19213 (t!120345 rules!2550)))) (toChars!3507 (transformation!2393 (rule!4142 t1!34))))) b_lambda!40821)))

(declare-fun b_lambda!40823 () Bool)

(assert (= b_lambda!40751 (or b!1355648 b_lambda!40823)))

(declare-fun bs!333940 () Bool)

(declare-fun d!384367 () Bool)

(assert (= bs!333940 (and d!384367 b!1355648)))

(assert (=> bs!333940 (= (dynLambda!6179 lambda!57269 (h!19213 rules!2550)) (regex!2393 (h!19213 rules!2550)))))

(assert (=> b!1355691 d!384367))

(declare-fun b_lambda!40825 () Bool)

(assert (= b_lambda!40805 (or b!1355648 b_lambda!40825)))

(declare-fun bs!333941 () Bool)

(declare-fun d!384369 () Bool)

(assert (= bs!333941 (and d!384369 b!1355648)))

(declare-fun res!611029 () Bool)

(declare-fun e!867957 () Bool)

(assert (=> bs!333941 (=> (not res!611029) (not e!867957))))

(assert (=> bs!333941 (= res!611029 (validRegex!1607 (h!19214 (map!3050 rules!2550 lambda!57269))))))

(assert (=> bs!333941 (= (dynLambda!6188 lambda!57270 (h!19214 (map!3050 rules!2550 lambda!57269))) e!867957)))

(declare-fun b!1356322 () Bool)

(assert (=> b!1356322 (= e!867957 (matchR!1700 (h!19214 (map!3050 rules!2550 lambda!57269)) lt!448918))))

(assert (= (and bs!333941 res!611029) b!1356322))

(declare-fun m!1518955 () Bool)

(assert (=> bs!333941 m!1518955))

(declare-fun m!1518957 () Bool)

(assert (=> b!1356322 m!1518957))

(assert (=> b!1356276 d!384369))

(declare-fun b_lambda!40827 () Bool)

(assert (= b_lambda!40809 (or (and b!1355643 b_free!32997 (= (toChars!3507 (transformation!2393 (h!19213 rules!2550))) (toChars!3507 (transformation!2393 (rule!4142 t2!34))))) (and b!1355659 b_free!33001 (= (toChars!3507 (transformation!2393 (rule!4142 t1!34))) (toChars!3507 (transformation!2393 (rule!4142 t2!34))))) (and b!1355675 b_free!33005) (and b!1356292 b_free!33013 (= (toChars!3507 (transformation!2393 (h!19213 (t!120345 rules!2550)))) (toChars!3507 (transformation!2393 (rule!4142 t2!34))))) b_lambda!40827)))

(declare-fun b_lambda!40829 () Bool)

(assert (= b_lambda!40807 (or b!1355648 b_lambda!40829)))

(declare-fun bs!333942 () Bool)

(declare-fun d!384371 () Bool)

(assert (= bs!333942 (and d!384371 b!1355648)))

(declare-fun res!611030 () Bool)

(declare-fun e!867958 () Bool)

(assert (=> bs!333942 (=> (not res!611030) (not e!867958))))

(assert (=> bs!333942 (= res!611030 (validRegex!1607 lt!449139))))

(assert (=> bs!333942 (= (dynLambda!6188 lambda!57270 lt!449139) e!867958)))

(declare-fun b!1356323 () Bool)

(assert (=> b!1356323 (= e!867958 (matchR!1700 lt!449139 lt!448918))))

(assert (= (and bs!333942 res!611030) b!1356323))

(declare-fun m!1518959 () Bool)

(assert (=> bs!333942 m!1518959))

(declare-fun m!1518961 () Bool)

(assert (=> b!1356323 m!1518961))

(assert (=> d!384341 d!384371))

(check-sat (not d!384335) (not b!1355770) (not b!1356318) (not d!384155) (not d!384257) (not b!1356055) (not b!1356170) (not b!1356216) (not b!1356281) (not d!384339) (not b_lambda!40827) (not b_lambda!40813) (not b!1356314) (not b!1356014) (not b!1356211) (not b!1356238) (not d!384203) (not b!1356171) (not b!1356186) (not b!1356033) (not d!384333) (not b!1356192) (not b!1356244) (not b!1356201) (not b_next!33715) tp_is_empty!6723 (not d!384321) (not b!1356316) (not b!1355814) (not d!384261) (not d!384271) (not b!1356304) (not d!384331) (not b!1355691) (not b!1355764) (not d!384133) (not b!1356240) (not b_lambda!40819) (not b!1356245) (not b!1356013) (not bs!333937) (not b!1356323) (not b!1356312) (not b!1356273) (not d!384161) (not b!1356290) (not b!1356241) (not b!1355808) (not b!1355826) (not b!1356242) (not b_lambda!40811) b_and!90731 (not b_next!33703) (not b!1356319) (not b!1356169) (not b!1356214) (not b!1356305) (not d!384125) (not d!384247) (not b!1355827) (not b!1356218) (not b!1355993) (not b!1356194) (not b_next!33717) (not b_lambda!40823) b_and!90785 (not b!1356213) (not b_next!33699) b_and!90781 (not d!384353) (not b!1356277) (not b!1356239) (not d!384345) (not b!1356204) (not d!384171) (not b!1355769) (not bs!333942) (not b_next!33701) (not b!1356184) (not b!1355749) (not b!1356219) (not d!384317) (not d!384309) (not b!1355828) (not d!384269) (not d!384347) (not d!384207) (not b!1356322) (not d!384127) (not b!1356205) (not d!384175) (not d!384149) (not b!1356188) (not b!1356015) (not b!1355771) (not d!384167) (not d!384359) (not b!1356243) (not tb!71233) (not b!1356034) (not b!1356195) (not b!1356167) (not b!1355812) (not d!384145) (not d!384323) (not d!384341) b_and!90783 (not d!384325) (not d!384157) (not d!384123) (not b_lambda!40821) (not b!1356311) (not d!384313) (not b!1355905) (not b!1355809) (not d!384129) (not b!1356056) (not d!384357) (not b!1355847) (not d!384255) (not b!1355992) (not b!1355763) (not b_lambda!40817) (not b!1355903) (not b_next!33709) b_and!90723 (not d!384143) (not b_next!33705) (not d!384311) (not d!384315) (not b!1355772) (not b!1356274) (not d!384243) (not d!384319) (not b!1356320) (not b!1356306) (not b!1356258) (not b!1356272) (not b!1356217) (not b!1356252) (not b!1356291) (not bm!91244) (not b_lambda!40815) (not b!1355848) b_and!90787 (not b!1356251) (not b!1355813) (not b!1355699) (not d!384349) (not b!1356321) (not bs!333941) (not b!1355752) b_and!90789 (not b!1356203) (not b_lambda!40825) (not d!384327) (not d!384153) (not d!384329) (not b!1355994) (not b_next!33707) b_and!90727 (not d!384131) (not b_lambda!40829) (not b!1355906) (not tb!71239) (not b!1356054) (not d!384159) (not d!384241) (not b!1355740) (not b!1355805) (not d!384351) (not b!1356315) (not bm!91235))
(check-sat (not b_next!33715) b_and!90731 (not b_next!33703) (not b_next!33701) b_and!90783 b_and!90787 b_and!90789 (not b_next!33717) b_and!90785 (not b_next!33699) b_and!90781 (not b_next!33709) b_and!90723 (not b_next!33705) (not b_next!33707) b_and!90727)
