; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745132 () Bool)

(assert start!745132)

(declare-fun b!7899553 () Bool)

(declare-fun b_free!134631 () Bool)

(declare-fun b_next!135421 () Bool)

(assert (=> b!7899553 (= b_free!134631 (not b_next!135421))))

(declare-fun tp!2353568 () Bool)

(declare-fun b_and!352531 () Bool)

(assert (=> b!7899553 (= tp!2353568 b_and!352531)))

(declare-fun b_free!134633 () Bool)

(declare-fun b_next!135423 () Bool)

(assert (=> b!7899553 (= b_free!134633 (not b_next!135423))))

(declare-fun tp!2353567 () Bool)

(declare-fun b_and!352533 () Bool)

(assert (=> b!7899553 (= tp!2353567 b_and!352533)))

(declare-fun b!7899547 () Bool)

(declare-fun e!4662830 () Bool)

(declare-fun tp_is_empty!52917 () Bool)

(declare-fun tp!2353566 () Bool)

(assert (=> b!7899547 (= e!4662830 (and tp_is_empty!52917 tp!2353566))))

(declare-fun b!7899548 () Bool)

(declare-fun e!4662833 () Bool)

(declare-fun e!4662835 () Bool)

(assert (=> b!7899548 (= e!4662833 (not e!4662835))))

(declare-fun res!3133884 () Bool)

(assert (=> b!7899548 (=> res!3133884 e!4662835)))

(declare-datatypes ((List!74224 0))(
  ( (Nil!74100) (Cons!74100 (h!80548 (_ BitVec 16)) (t!389033 List!74224)) )
))
(declare-datatypes ((TokenValue!8884 0))(
  ( (FloatLiteralValue!17768 (text!62633 List!74224)) (TokenValueExt!8883 (__x!35055 Int)) (Broken!44420 (value!286143 List!74224)) (Object!9007) (End!8884) (Def!8884) (Underscore!8884) (Match!8884) (Else!8884) (Error!8884) (Case!8884) (If!8884) (Extends!8884) (Abstract!8884) (Class!8884) (Val!8884) (DelimiterValue!17768 (del!8944 List!74224)) (KeywordValue!8890 (value!286144 List!74224)) (CommentValue!17768 (value!286145 List!74224)) (WhitespaceValue!17768 (value!286146 List!74224)) (IndentationValue!8884 (value!286147 List!74224)) (String!82841) (Int32!8884) (Broken!44421 (value!286148 List!74224)) (Boolean!8885) (Unit!169118) (OperatorValue!8887 (op!8944 List!74224)) (IdentifierValue!17768 (value!286149 List!74224)) (IdentifierValue!17769 (value!286150 List!74224)) (WhitespaceValue!17769 (value!286151 List!74224)) (True!17768) (False!17768) (Broken!44422 (value!286152 List!74224)) (Broken!44423 (value!286153 List!74224)) (True!17769) (RightBrace!8884) (RightBracket!8884) (Colon!8884) (Null!8884) (Comma!8884) (LeftBracket!8884) (False!17769) (LeftBrace!8884) (ImaginaryLiteralValue!8884 (text!62634 List!74224)) (StringLiteralValue!26652 (value!286154 List!74224)) (EOFValue!8884 (value!286155 List!74224)) (IdentValue!8884 (value!286156 List!74224)) (DelimiterValue!17769 (value!286157 List!74224)) (DedentValue!8884 (value!286158 List!74224)) (NewLineValue!8884 (value!286159 List!74224)) (IntegerValue!26652 (value!286160 (_ BitVec 32)) (text!62635 List!74224)) (IntegerValue!26653 (value!286161 Int) (text!62636 List!74224)) (Times!8884) (Or!8884) (Equal!8884) (Minus!8884) (Broken!44424 (value!286162 List!74224)) (And!8884) (Div!8884) (LessEqual!8884) (Mod!8884) (Concat!30155) (Not!8884) (Plus!8884) (SpaceValue!8884 (value!286163 List!74224)) (IntegerValue!26654 (value!286164 Int) (text!62637 List!74224)) (StringLiteralValue!26653 (text!62638 List!74224)) (FloatLiteralValue!17769 (text!62639 List!74224)) (BytesLiteralValue!8884 (value!286165 List!74224)) (CommentValue!17769 (value!286166 List!74224)) (StringLiteralValue!26654 (value!286167 List!74224)) (ErrorTokenValue!8884 (msg!8945 List!74224)) )
))
(declare-datatypes ((C!42872 0))(
  ( (C!42873 (val!31900 Int)) )
))
(declare-datatypes ((List!74225 0))(
  ( (Nil!74101) (Cons!74101 (h!80549 C!42872) (t!389034 List!74225)) )
))
(declare-datatypes ((IArray!31545 0))(
  ( (IArray!31546 (innerList!15830 List!74225)) )
))
(declare-datatypes ((Conc!15742 0))(
  ( (Node!15742 (left!56541 Conc!15742) (right!56871 Conc!15742) (csize!31714 Int) (cheight!15953 Int)) (Leaf!29994 (xs!19124 IArray!31545) (csize!31715 Int)) (Empty!15742) )
))
(declare-datatypes ((BalanceConc!30602 0))(
  ( (BalanceConc!30603 (c!1449781 Conc!15742)) )
))
(declare-datatypes ((Regex!21271 0))(
  ( (ElementMatch!21271 (c!1449782 C!42872)) (Concat!30156 (regOne!43054 Regex!21271) (regTwo!43054 Regex!21271)) (EmptyExpr!21271) (Star!21271 (reg!21600 Regex!21271)) (EmptyLang!21271) (Union!21271 (regOne!43055 Regex!21271) (regTwo!43055 Regex!21271)) )
))
(declare-datatypes ((String!82842 0))(
  ( (String!82843 (value!286168 String)) )
))
(declare-datatypes ((TokenValueInjection!17076 0))(
  ( (TokenValueInjection!17077 (toValue!11609 Int) (toChars!11468 Int)) )
))
(declare-datatypes ((Rule!16936 0))(
  ( (Rule!16937 (regex!8568 Regex!21271) (tag!9432 String!82842) (isSeparator!8568 Bool) (transformation!8568 TokenValueInjection!17076)) )
))
(declare-datatypes ((List!74226 0))(
  ( (Nil!74102) (Cons!74102 (h!80550 Rule!16936) (t!389035 List!74226)) )
))
(declare-fun rulesArg!141 () List!74226)

(get-info :version)

(assert (=> b!7899548 (= res!3133884 (or (and ((_ is Cons!74102) rulesArg!141) ((_ is Nil!74102) (t!389035 rulesArg!141))) (not ((_ is Cons!74102) rulesArg!141))))))

(declare-fun input!1184 () List!74225)

(declare-fun isPrefix!6401 (List!74225 List!74225) Bool)

(assert (=> b!7899548 (isPrefix!6401 input!1184 input!1184)))

(declare-datatypes ((Unit!169119 0))(
  ( (Unit!169120) )
))
(declare-fun lt!2682651 () Unit!169119)

(declare-fun lemmaIsPrefixRefl!3912 (List!74225 List!74225) Unit!169119)

(assert (=> b!7899548 (= lt!2682651 (lemmaIsPrefixRefl!3912 input!1184 input!1184))))

(declare-fun b!7899549 () Bool)

(declare-fun res!3133885 () Bool)

(assert (=> b!7899549 (=> (not res!3133885) (not e!4662833))))

(declare-fun isEmpty!42500 (List!74226) Bool)

(assert (=> b!7899549 (= res!3133885 (not (isEmpty!42500 rulesArg!141)))))

(declare-fun b!7899550 () Bool)

(declare-fun res!3133881 () Bool)

(assert (=> b!7899550 (=> (not res!3133881) (not e!4662833))))

(declare-datatypes ((LexerInterface!8160 0))(
  ( (LexerInterfaceExt!8157 (__x!35056 Int)) (Lexer!8158) )
))
(declare-fun thiss!14377 () LexerInterface!8160)

(declare-fun rulesValidInductive!3379 (LexerInterface!8160 List!74226) Bool)

(assert (=> b!7899550 (= res!3133881 (rulesValidInductive!3379 thiss!14377 rulesArg!141))))

(declare-fun b!7899551 () Bool)

(declare-fun e!4662828 () Bool)

(assert (=> b!7899551 (= e!4662828 true)))

(declare-fun lt!2682652 () Int)

(declare-fun size!42926 (List!74225) Int)

(assert (=> b!7899551 (= lt!2682652 (size!42926 input!1184))))

(declare-fun lt!2682653 () Int)

(declare-datatypes ((Token!15556 0))(
  ( (Token!15557 (value!286169 TokenValue!8884) (rule!11852 Rule!16936) (size!42927 Int) (originalCharacters!8809 List!74225)) )
))
(declare-datatypes ((tuple2!70154 0))(
  ( (tuple2!70155 (_1!38380 Token!15556) (_2!38380 List!74225)) )
))
(declare-fun lt!2682655 () tuple2!70154)

(assert (=> b!7899551 (= lt!2682653 (size!42926 (_2!38380 lt!2682655)))))

(declare-fun res!3133887 () Bool)

(assert (=> start!745132 (=> (not res!3133887) (not e!4662833))))

(assert (=> start!745132 (= res!3133887 ((_ is Lexer!8158) thiss!14377))))

(assert (=> start!745132 e!4662833))

(assert (=> start!745132 true))

(declare-fun e!4662832 () Bool)

(assert (=> start!745132 e!4662832))

(assert (=> start!745132 e!4662830))

(declare-fun tp!2353570 () Bool)

(declare-fun e!4662829 () Bool)

(declare-fun b!7899552 () Bool)

(declare-fun e!4662834 () Bool)

(declare-fun inv!95082 (String!82842) Bool)

(declare-fun inv!95084 (TokenValueInjection!17076) Bool)

(assert (=> b!7899552 (= e!4662829 (and tp!2353570 (inv!95082 (tag!9432 (h!80550 rulesArg!141))) (inv!95084 (transformation!8568 (h!80550 rulesArg!141))) e!4662834))))

(assert (=> b!7899553 (= e!4662834 (and tp!2353568 tp!2353567))))

(declare-fun b!7899554 () Bool)

(declare-fun res!3133880 () Bool)

(declare-fun e!4662836 () Bool)

(assert (=> b!7899554 (=> res!3133880 e!4662836)))

(declare-datatypes ((Option!17850 0))(
  ( (None!17849) (Some!17849 (v!54986 tuple2!70154)) )
))
(declare-fun lt!2682656 () Option!17850)

(declare-fun isEmpty!42501 (Option!17850) Bool)

(assert (=> b!7899554 (= res!3133880 (isEmpty!42501 lt!2682656))))

(declare-fun b!7899555 () Bool)

(declare-fun tp!2353569 () Bool)

(assert (=> b!7899555 (= e!4662832 (and e!4662829 tp!2353569))))

(declare-fun b!7899556 () Bool)

(assert (=> b!7899556 (= e!4662836 e!4662828)))

(declare-fun res!3133882 () Bool)

(assert (=> b!7899556 (=> res!3133882 e!4662828)))

(declare-fun list!19187 (BalanceConc!30602) List!74225)

(declare-fun charsOf!5512 (Token!15556) BalanceConc!30602)

(assert (=> b!7899556 (= res!3133882 (not (= (list!19187 (charsOf!5512 (_1!38380 lt!2682655))) (originalCharacters!8809 (_1!38380 lt!2682655)))))))

(declare-fun get!26606 (Option!17850) tuple2!70154)

(assert (=> b!7899556 (= lt!2682655 (get!26606 lt!2682656))))

(declare-fun b!7899557 () Bool)

(assert (=> b!7899557 (= e!4662835 e!4662836)))

(declare-fun res!3133883 () Bool)

(assert (=> b!7899557 (=> res!3133883 e!4662836)))

(declare-fun lt!2682654 () Option!17850)

(assert (=> b!7899557 (= res!3133883 (or (and ((_ is None!17849) lt!2682656) ((_ is None!17849) lt!2682654)) (not ((_ is None!17849) lt!2682654))))))

(declare-fun maxPrefix!4701 (LexerInterface!8160 List!74226 List!74225) Option!17850)

(assert (=> b!7899557 (= lt!2682654 (maxPrefix!4701 thiss!14377 (t!389035 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3748 (LexerInterface!8160 Rule!16936 List!74225) Option!17850)

(assert (=> b!7899557 (= lt!2682656 (maxPrefixOneRule!3748 thiss!14377 (h!80550 rulesArg!141) input!1184))))

(declare-fun b!7899558 () Bool)

(declare-fun res!3133886 () Bool)

(assert (=> b!7899558 (=> res!3133886 e!4662836)))

(declare-fun isDefined!14426 (Option!17850) Bool)

(assert (=> b!7899558 (= res!3133886 (not (isDefined!14426 lt!2682656)))))

(assert (= (and start!745132 res!3133887) b!7899550))

(assert (= (and b!7899550 res!3133881) b!7899549))

(assert (= (and b!7899549 res!3133885) b!7899548))

(assert (= (and b!7899548 (not res!3133884)) b!7899557))

(assert (= (and b!7899557 (not res!3133883)) b!7899554))

(assert (= (and b!7899554 (not res!3133880)) b!7899558))

(assert (= (and b!7899558 (not res!3133886)) b!7899556))

(assert (= (and b!7899556 (not res!3133882)) b!7899551))

(assert (= b!7899552 b!7899553))

(assert (= b!7899555 b!7899552))

(assert (= (and start!745132 ((_ is Cons!74102) rulesArg!141)) b!7899555))

(assert (= (and start!745132 ((_ is Cons!74101) input!1184)) b!7899547))

(declare-fun m!8274342 () Bool)

(assert (=> b!7899554 m!8274342))

(declare-fun m!8274344 () Bool)

(assert (=> b!7899558 m!8274344))

(declare-fun m!8274346 () Bool)

(assert (=> b!7899556 m!8274346))

(assert (=> b!7899556 m!8274346))

(declare-fun m!8274348 () Bool)

(assert (=> b!7899556 m!8274348))

(declare-fun m!8274350 () Bool)

(assert (=> b!7899556 m!8274350))

(declare-fun m!8274352 () Bool)

(assert (=> b!7899551 m!8274352))

(declare-fun m!8274354 () Bool)

(assert (=> b!7899551 m!8274354))

(declare-fun m!8274356 () Bool)

(assert (=> b!7899552 m!8274356))

(declare-fun m!8274358 () Bool)

(assert (=> b!7899552 m!8274358))

(declare-fun m!8274360 () Bool)

(assert (=> b!7899548 m!8274360))

(declare-fun m!8274362 () Bool)

(assert (=> b!7899548 m!8274362))

(declare-fun m!8274364 () Bool)

(assert (=> b!7899550 m!8274364))

(declare-fun m!8274366 () Bool)

(assert (=> b!7899557 m!8274366))

(declare-fun m!8274368 () Bool)

(assert (=> b!7899557 m!8274368))

(declare-fun m!8274370 () Bool)

(assert (=> b!7899549 m!8274370))

(check-sat (not b!7899552) b_and!352531 (not b!7899550) b_and!352533 tp_is_empty!52917 (not b!7899558) (not b_next!135421) (not b!7899555) (not b!7899551) (not b!7899549) (not b!7899556) (not b!7899548) (not b!7899547) (not b_next!135423) (not b!7899554) (not b!7899557))
(check-sat b_and!352533 b_and!352531 (not b_next!135423) (not b_next!135421))
