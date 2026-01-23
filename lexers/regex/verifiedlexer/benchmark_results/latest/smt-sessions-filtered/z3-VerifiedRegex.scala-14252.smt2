; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745136 () Bool)

(assert start!745136)

(declare-fun b!7899634 () Bool)

(declare-fun b_free!134639 () Bool)

(declare-fun b_next!135429 () Bool)

(assert (=> b!7899634 (= b_free!134639 (not b_next!135429))))

(declare-fun tp!2353597 () Bool)

(declare-fun b_and!352539 () Bool)

(assert (=> b!7899634 (= tp!2353597 b_and!352539)))

(declare-fun b_free!134641 () Bool)

(declare-fun b_next!135431 () Bool)

(assert (=> b!7899634 (= b_free!134641 (not b_next!135431))))

(declare-fun tp!2353599 () Bool)

(declare-fun b_and!352541 () Bool)

(assert (=> b!7899634 (= tp!2353599 b_and!352541)))

(declare-fun b!7899629 () Bool)

(declare-fun e!4662883 () Bool)

(declare-fun e!4662888 () Bool)

(declare-fun tp!2353598 () Bool)

(assert (=> b!7899629 (= e!4662883 (and e!4662888 tp!2353598))))

(declare-fun b!7899630 () Bool)

(declare-fun e!4662885 () Bool)

(assert (=> b!7899630 (= e!4662885 true)))

(declare-fun b!7899631 () Bool)

(declare-fun res!3133938 () Bool)

(declare-fun e!4662889 () Bool)

(assert (=> b!7899631 (=> (not res!3133938) (not e!4662889))))

(declare-datatypes ((List!74230 0))(
  ( (Nil!74106) (Cons!74106 (h!80554 (_ BitVec 16)) (t!389039 List!74230)) )
))
(declare-datatypes ((TokenValue!8886 0))(
  ( (FloatLiteralValue!17772 (text!62647 List!74230)) (TokenValueExt!8885 (__x!35059 Int)) (Broken!44430 (value!286200 List!74230)) (Object!9009) (End!8886) (Def!8886) (Underscore!8886) (Match!8886) (Else!8886) (Error!8886) (Case!8886) (If!8886) (Extends!8886) (Abstract!8886) (Class!8886) (Val!8886) (DelimiterValue!17772 (del!8946 List!74230)) (KeywordValue!8892 (value!286201 List!74230)) (CommentValue!17772 (value!286202 List!74230)) (WhitespaceValue!17772 (value!286203 List!74230)) (IndentationValue!8886 (value!286204 List!74230)) (String!82851) (Int32!8886) (Broken!44431 (value!286205 List!74230)) (Boolean!8887) (Unit!169124) (OperatorValue!8889 (op!8946 List!74230)) (IdentifierValue!17772 (value!286206 List!74230)) (IdentifierValue!17773 (value!286207 List!74230)) (WhitespaceValue!17773 (value!286208 List!74230)) (True!17772) (False!17772) (Broken!44432 (value!286209 List!74230)) (Broken!44433 (value!286210 List!74230)) (True!17773) (RightBrace!8886) (RightBracket!8886) (Colon!8886) (Null!8886) (Comma!8886) (LeftBracket!8886) (False!17773) (LeftBrace!8886) (ImaginaryLiteralValue!8886 (text!62648 List!74230)) (StringLiteralValue!26658 (value!286211 List!74230)) (EOFValue!8886 (value!286212 List!74230)) (IdentValue!8886 (value!286213 List!74230)) (DelimiterValue!17773 (value!286214 List!74230)) (DedentValue!8886 (value!286215 List!74230)) (NewLineValue!8886 (value!286216 List!74230)) (IntegerValue!26658 (value!286217 (_ BitVec 32)) (text!62649 List!74230)) (IntegerValue!26659 (value!286218 Int) (text!62650 List!74230)) (Times!8886) (Or!8886) (Equal!8886) (Minus!8886) (Broken!44434 (value!286219 List!74230)) (And!8886) (Div!8886) (LessEqual!8886) (Mod!8886) (Concat!30159) (Not!8886) (Plus!8886) (SpaceValue!8886 (value!286220 List!74230)) (IntegerValue!26660 (value!286221 Int) (text!62651 List!74230)) (StringLiteralValue!26659 (text!62652 List!74230)) (FloatLiteralValue!17773 (text!62653 List!74230)) (BytesLiteralValue!8886 (value!286222 List!74230)) (CommentValue!17773 (value!286223 List!74230)) (StringLiteralValue!26660 (value!286224 List!74230)) (ErrorTokenValue!8886 (msg!8947 List!74230)) )
))
(declare-datatypes ((C!42876 0))(
  ( (C!42877 (val!31902 Int)) )
))
(declare-datatypes ((List!74231 0))(
  ( (Nil!74107) (Cons!74107 (h!80555 C!42876) (t!389040 List!74231)) )
))
(declare-datatypes ((IArray!31549 0))(
  ( (IArray!31550 (innerList!15832 List!74231)) )
))
(declare-datatypes ((Conc!15744 0))(
  ( (Node!15744 (left!56544 Conc!15744) (right!56874 Conc!15744) (csize!31718 Int) (cheight!15955 Int)) (Leaf!29997 (xs!19126 IArray!31549) (csize!31719 Int)) (Empty!15744) )
))
(declare-datatypes ((BalanceConc!30606 0))(
  ( (BalanceConc!30607 (c!1449787 Conc!15744)) )
))
(declare-datatypes ((String!82852 0))(
  ( (String!82853 (value!286225 String)) )
))
(declare-datatypes ((Regex!21273 0))(
  ( (ElementMatch!21273 (c!1449788 C!42876)) (Concat!30160 (regOne!43058 Regex!21273) (regTwo!43058 Regex!21273)) (EmptyExpr!21273) (Star!21273 (reg!21602 Regex!21273)) (EmptyLang!21273) (Union!21273 (regOne!43059 Regex!21273) (regTwo!43059 Regex!21273)) )
))
(declare-datatypes ((TokenValueInjection!17080 0))(
  ( (TokenValueInjection!17081 (toValue!11611 Int) (toChars!11470 Int)) )
))
(declare-datatypes ((Rule!16940 0))(
  ( (Rule!16941 (regex!8570 Regex!21273) (tag!9434 String!82852) (isSeparator!8570 Bool) (transformation!8570 TokenValueInjection!17080)) )
))
(declare-datatypes ((List!74232 0))(
  ( (Nil!74108) (Cons!74108 (h!80556 Rule!16940) (t!389041 List!74232)) )
))
(declare-fun rulesArg!141 () List!74232)

(declare-fun isEmpty!42504 (List!74232) Bool)

(assert (=> b!7899631 (= res!3133938 (not (isEmpty!42504 rulesArg!141)))))

(declare-fun b!7899632 () Bool)

(declare-fun res!3133941 () Bool)

(assert (=> b!7899632 (=> res!3133941 e!4662885)))

(declare-datatypes ((Token!15560 0))(
  ( (Token!15561 (value!286226 TokenValue!8886) (rule!11854 Rule!16940) (size!42930 Int) (originalCharacters!8811 List!74231)) )
))
(declare-datatypes ((tuple2!70158 0))(
  ( (tuple2!70159 (_1!38382 Token!15560) (_2!38382 List!74231)) )
))
(declare-fun lt!2682685 () tuple2!70158)

(declare-fun input!1184 () List!74231)

(declare-fun size!42931 (List!74231) Int)

(assert (=> b!7899632 (= res!3133941 (>= (size!42931 (_2!38382 lt!2682685)) (size!42931 input!1184)))))

(declare-fun res!3133945 () Bool)

(assert (=> start!745136 (=> (not res!3133945) (not e!4662889))))

(declare-datatypes ((LexerInterface!8162 0))(
  ( (LexerInterfaceExt!8159 (__x!35060 Int)) (Lexer!8160) )
))
(declare-fun thiss!14377 () LexerInterface!8162)

(get-info :version)

(assert (=> start!745136 (= res!3133945 ((_ is Lexer!8160) thiss!14377))))

(assert (=> start!745136 e!4662889))

(assert (=> start!745136 true))

(assert (=> start!745136 e!4662883))

(declare-fun e!4662884 () Bool)

(assert (=> start!745136 e!4662884))

(declare-fun b!7899633 () Bool)

(declare-fun res!3133939 () Bool)

(declare-fun e!4662886 () Bool)

(assert (=> b!7899633 (=> res!3133939 e!4662886)))

(declare-datatypes ((Option!17852 0))(
  ( (None!17851) (Some!17851 (v!54988 tuple2!70158)) )
))
(declare-fun lt!2682686 () Option!17852)

(declare-fun isEmpty!42505 (Option!17852) Bool)

(assert (=> b!7899633 (= res!3133939 (isEmpty!42505 lt!2682686))))

(declare-fun e!4662882 () Bool)

(assert (=> b!7899634 (= e!4662882 (and tp!2353597 tp!2353599))))

(declare-fun tp!2353600 () Bool)

(declare-fun b!7899635 () Bool)

(declare-fun inv!95087 (String!82852) Bool)

(declare-fun inv!95089 (TokenValueInjection!17080) Bool)

(assert (=> b!7899635 (= e!4662888 (and tp!2353600 (inv!95087 (tag!9434 (h!80556 rulesArg!141))) (inv!95089 (transformation!8570 (h!80556 rulesArg!141))) e!4662882))))

(declare-fun b!7899636 () Bool)

(declare-fun e!4662890 () Bool)

(assert (=> b!7899636 (= e!4662889 (not e!4662890))))

(declare-fun res!3133940 () Bool)

(assert (=> b!7899636 (=> res!3133940 e!4662890)))

(assert (=> b!7899636 (= res!3133940 (or (and ((_ is Cons!74108) rulesArg!141) ((_ is Nil!74108) (t!389041 rulesArg!141))) (not ((_ is Cons!74108) rulesArg!141))))))

(declare-fun isPrefix!6403 (List!74231 List!74231) Bool)

(assert (=> b!7899636 (isPrefix!6403 input!1184 input!1184)))

(declare-datatypes ((Unit!169125 0))(
  ( (Unit!169126) )
))
(declare-fun lt!2682682 () Unit!169125)

(declare-fun lemmaIsPrefixRefl!3914 (List!74231 List!74231) Unit!169125)

(assert (=> b!7899636 (= lt!2682682 (lemmaIsPrefixRefl!3914 input!1184 input!1184))))

(declare-fun b!7899637 () Bool)

(declare-fun tp_is_empty!52921 () Bool)

(declare-fun tp!2353596 () Bool)

(assert (=> b!7899637 (= e!4662884 (and tp_is_empty!52921 tp!2353596))))

(declare-fun b!7899638 () Bool)

(assert (=> b!7899638 (= e!4662886 e!4662885)))

(declare-fun res!3133947 () Bool)

(assert (=> b!7899638 (=> res!3133947 e!4662885)))

(declare-fun lt!2682683 () List!74231)

(assert (=> b!7899638 (= res!3133947 (not (= lt!2682683 (originalCharacters!8811 (_1!38382 lt!2682685)))))))

(declare-fun list!19189 (BalanceConc!30606) List!74231)

(declare-fun charsOf!5514 (Token!15560) BalanceConc!30606)

(assert (=> b!7899638 (= lt!2682683 (list!19189 (charsOf!5514 (_1!38382 lt!2682685))))))

(declare-fun get!26609 (Option!17852) tuple2!70158)

(assert (=> b!7899638 (= lt!2682685 (get!26609 lt!2682686))))

(declare-fun b!7899639 () Bool)

(declare-fun res!3133943 () Bool)

(assert (=> b!7899639 (=> res!3133943 e!4662886)))

(declare-fun isDefined!14428 (Option!17852) Bool)

(assert (=> b!7899639 (= res!3133943 (not (isDefined!14428 lt!2682686)))))

(declare-fun b!7899640 () Bool)

(declare-fun res!3133942 () Bool)

(assert (=> b!7899640 (=> res!3133942 e!4662885)))

(declare-fun ++!18140 (List!74231 List!74231) List!74231)

(assert (=> b!7899640 (= res!3133942 (not (= (++!18140 lt!2682683 (_2!38382 lt!2682685)) input!1184)))))

(declare-fun b!7899641 () Bool)

(declare-fun res!3133944 () Bool)

(assert (=> b!7899641 (=> (not res!3133944) (not e!4662889))))

(declare-fun rulesValidInductive!3381 (LexerInterface!8162 List!74232) Bool)

(assert (=> b!7899641 (= res!3133944 (rulesValidInductive!3381 thiss!14377 rulesArg!141))))

(declare-fun b!7899642 () Bool)

(assert (=> b!7899642 (= e!4662890 e!4662886)))

(declare-fun res!3133946 () Bool)

(assert (=> b!7899642 (=> res!3133946 e!4662886)))

(declare-fun lt!2682684 () Option!17852)

(assert (=> b!7899642 (= res!3133946 (or (and ((_ is None!17851) lt!2682686) ((_ is None!17851) lt!2682684)) (not ((_ is None!17851) lt!2682684))))))

(declare-fun maxPrefix!4703 (LexerInterface!8162 List!74232 List!74231) Option!17852)

(assert (=> b!7899642 (= lt!2682684 (maxPrefix!4703 thiss!14377 (t!389041 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3750 (LexerInterface!8162 Rule!16940 List!74231) Option!17852)

(assert (=> b!7899642 (= lt!2682686 (maxPrefixOneRule!3750 thiss!14377 (h!80556 rulesArg!141) input!1184))))

(assert (= (and start!745136 res!3133945) b!7899641))

(assert (= (and b!7899641 res!3133944) b!7899631))

(assert (= (and b!7899631 res!3133938) b!7899636))

(assert (= (and b!7899636 (not res!3133940)) b!7899642))

(assert (= (and b!7899642 (not res!3133946)) b!7899633))

(assert (= (and b!7899633 (not res!3133939)) b!7899639))

(assert (= (and b!7899639 (not res!3133943)) b!7899638))

(assert (= (and b!7899638 (not res!3133947)) b!7899632))

(assert (= (and b!7899632 (not res!3133941)) b!7899640))

(assert (= (and b!7899640 (not res!3133942)) b!7899630))

(assert (= b!7899635 b!7899634))

(assert (= b!7899629 b!7899635))

(assert (= (and start!745136 ((_ is Cons!74108) rulesArg!141)) b!7899629))

(assert (= (and start!745136 ((_ is Cons!74107) input!1184)) b!7899637))

(declare-fun m!8274404 () Bool)

(assert (=> b!7899641 m!8274404))

(declare-fun m!8274406 () Bool)

(assert (=> b!7899640 m!8274406))

(declare-fun m!8274408 () Bool)

(assert (=> b!7899642 m!8274408))

(declare-fun m!8274410 () Bool)

(assert (=> b!7899642 m!8274410))

(declare-fun m!8274412 () Bool)

(assert (=> b!7899636 m!8274412))

(declare-fun m!8274414 () Bool)

(assert (=> b!7899636 m!8274414))

(declare-fun m!8274416 () Bool)

(assert (=> b!7899635 m!8274416))

(declare-fun m!8274418 () Bool)

(assert (=> b!7899635 m!8274418))

(declare-fun m!8274420 () Bool)

(assert (=> b!7899639 m!8274420))

(declare-fun m!8274422 () Bool)

(assert (=> b!7899631 m!8274422))

(declare-fun m!8274424 () Bool)

(assert (=> b!7899633 m!8274424))

(declare-fun m!8274426 () Bool)

(assert (=> b!7899632 m!8274426))

(declare-fun m!8274428 () Bool)

(assert (=> b!7899632 m!8274428))

(declare-fun m!8274430 () Bool)

(assert (=> b!7899638 m!8274430))

(assert (=> b!7899638 m!8274430))

(declare-fun m!8274432 () Bool)

(assert (=> b!7899638 m!8274432))

(declare-fun m!8274434 () Bool)

(assert (=> b!7899638 m!8274434))

(check-sat (not b!7899641) (not b!7899638) tp_is_empty!52921 (not b!7899632) (not b!7899639) (not b!7899635) (not b!7899631) (not b!7899633) (not b_next!135429) (not b_next!135431) b_and!352539 (not b!7899629) (not b!7899637) b_and!352541 (not b!7899636) (not b!7899640) (not b!7899642))
(check-sat b_and!352541 b_and!352539 (not b_next!135431) (not b_next!135429))
