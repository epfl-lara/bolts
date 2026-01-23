; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745876 () Bool)

(assert start!745876)

(declare-fun b!7905548 () Bool)

(declare-fun b_free!134931 () Bool)

(declare-fun b_next!135721 () Bool)

(assert (=> b!7905548 (= b_free!134931 (not b_next!135721))))

(declare-fun tp!2355109 () Bool)

(declare-fun b_and!353087 () Bool)

(assert (=> b!7905548 (= tp!2355109 b_and!353087)))

(declare-fun b_free!134933 () Bool)

(declare-fun b_next!135723 () Bool)

(assert (=> b!7905548 (= b_free!134933 (not b_next!135723))))

(declare-fun tp!2355103 () Bool)

(declare-fun b_and!353089 () Bool)

(assert (=> b!7905548 (= tp!2355103 b_and!353089)))

(declare-fun b!7905538 () Bool)

(declare-fun b_free!134935 () Bool)

(declare-fun b_next!135725 () Bool)

(assert (=> b!7905538 (= b_free!134935 (not b_next!135725))))

(declare-fun tp!2355101 () Bool)

(declare-fun b_and!353091 () Bool)

(assert (=> b!7905538 (= tp!2355101 b_and!353091)))

(declare-fun b_free!134937 () Bool)

(declare-fun b_next!135727 () Bool)

(assert (=> b!7905538 (= b_free!134937 (not b_next!135727))))

(declare-fun tp!2355108 () Bool)

(declare-fun b_and!353093 () Bool)

(assert (=> b!7905538 (= tp!2355108 b_and!353093)))

(declare-fun tp!2355110 () Bool)

(declare-datatypes ((List!74380 0))(
  ( (Nil!74256) (Cons!74256 (h!80704 (_ BitVec 16)) (t!389581 List!74380)) )
))
(declare-datatypes ((TokenValue!8936 0))(
  ( (FloatLiteralValue!17872 (text!62997 List!74380)) (TokenValueExt!8935 (__x!35159 Int)) (Broken!44680 (value!287625 List!74380)) (Object!9059) (End!8936) (Def!8936) (Underscore!8936) (Match!8936) (Else!8936) (Error!8936) (Case!8936) (If!8936) (Extends!8936) (Abstract!8936) (Class!8936) (Val!8936) (DelimiterValue!17872 (del!8996 List!74380)) (KeywordValue!8942 (value!287626 List!74380)) (CommentValue!17872 (value!287627 List!74380)) (WhitespaceValue!17872 (value!287628 List!74380)) (IndentationValue!8936 (value!287629 List!74380)) (String!83101) (Int32!8936) (Broken!44681 (value!287630 List!74380)) (Boolean!8937) (Unit!169298) (OperatorValue!8939 (op!8996 List!74380)) (IdentifierValue!17872 (value!287631 List!74380)) (IdentifierValue!17873 (value!287632 List!74380)) (WhitespaceValue!17873 (value!287633 List!74380)) (True!17872) (False!17872) (Broken!44682 (value!287634 List!74380)) (Broken!44683 (value!287635 List!74380)) (True!17873) (RightBrace!8936) (RightBracket!8936) (Colon!8936) (Null!8936) (Comma!8936) (LeftBracket!8936) (False!17873) (LeftBrace!8936) (ImaginaryLiteralValue!8936 (text!62998 List!74380)) (StringLiteralValue!26808 (value!287636 List!74380)) (EOFValue!8936 (value!287637 List!74380)) (IdentValue!8936 (value!287638 List!74380)) (DelimiterValue!17873 (value!287639 List!74380)) (DedentValue!8936 (value!287640 List!74380)) (NewLineValue!8936 (value!287641 List!74380)) (IntegerValue!26808 (value!287642 (_ BitVec 32)) (text!62999 List!74380)) (IntegerValue!26809 (value!287643 Int) (text!63000 List!74380)) (Times!8936) (Or!8936) (Equal!8936) (Minus!8936) (Broken!44684 (value!287644 List!74380)) (And!8936) (Div!8936) (LessEqual!8936) (Mod!8936) (Concat!30259) (Not!8936) (Plus!8936) (SpaceValue!8936 (value!287645 List!74380)) (IntegerValue!26810 (value!287646 Int) (text!63001 List!74380)) (StringLiteralValue!26809 (text!63002 List!74380)) (FloatLiteralValue!17873 (text!63003 List!74380)) (BytesLiteralValue!8936 (value!287647 List!74380)) (CommentValue!17873 (value!287648 List!74380)) (StringLiteralValue!26810 (value!287649 List!74380)) (ErrorTokenValue!8936 (msg!8997 List!74380)) )
))
(declare-datatypes ((C!42976 0))(
  ( (C!42977 (val!31952 Int)) )
))
(declare-datatypes ((List!74381 0))(
  ( (Nil!74257) (Cons!74257 (h!80705 C!42976) (t!389582 List!74381)) )
))
(declare-datatypes ((IArray!31649 0))(
  ( (IArray!31650 (innerList!15882 List!74381)) )
))
(declare-datatypes ((Conc!15794 0))(
  ( (Node!15794 (left!56635 Conc!15794) (right!56965 Conc!15794) (csize!31818 Int) (cheight!16005 Int)) (Leaf!30072 (xs!19176 IArray!31649) (csize!31819 Int)) (Empty!15794) )
))
(declare-datatypes ((BalanceConc!30706 0))(
  ( (BalanceConc!30707 (c!1450659 Conc!15794)) )
))
(declare-datatypes ((String!83102 0))(
  ( (String!83103 (value!287650 String)) )
))
(declare-datatypes ((Regex!21323 0))(
  ( (ElementMatch!21323 (c!1450660 C!42976)) (Concat!30260 (regOne!43158 Regex!21323) (regTwo!43158 Regex!21323)) (EmptyExpr!21323) (Star!21323 (reg!21652 Regex!21323)) (EmptyLang!21323) (Union!21323 (regOne!43159 Regex!21323) (regTwo!43159 Regex!21323)) )
))
(declare-datatypes ((TokenValueInjection!17180 0))(
  ( (TokenValueInjection!17181 (toValue!11677 Int) (toChars!11536 Int)) )
))
(declare-datatypes ((Rule!17040 0))(
  ( (Rule!17041 (regex!8620 Regex!21323) (tag!9484 String!83102) (isSeparator!8620 Bool) (transformation!8620 TokenValueInjection!17180)) )
))
(declare-datatypes ((Token!15660 0))(
  ( (Token!15661 (value!287651 TokenValue!8936) (rule!11912 Rule!17040) (size!43038 Int) (originalCharacters!8861 List!74381)) )
))
(declare-datatypes ((tuple2!70274 0))(
  ( (tuple2!70275 (_1!38440 Token!15660) (_2!38440 List!74381)) )
))
(declare-datatypes ((Option!17902 0))(
  ( (None!17901) (Some!17901 (v!55046 tuple2!70274)) )
))
(declare-fun err!4673 () Option!17902)

(declare-fun b!7905531 () Bool)

(declare-fun e!4666505 () Bool)

(declare-fun e!4666501 () Bool)

(declare-fun inv!95261 (Token!15660) Bool)

(assert (=> b!7905531 (= e!4666501 (and (inv!95261 (_1!38440 (v!55046 err!4673))) e!4666505 tp!2355110))))

(declare-fun b!7905532 () Bool)

(declare-fun e!4666510 () Bool)

(declare-fun tp_is_empty!53021 () Bool)

(declare-fun tp!2355105 () Bool)

(assert (=> b!7905532 (= e!4666510 (and tp_is_empty!53021 tp!2355105))))

(declare-fun b!7905533 () Bool)

(declare-fun e!4666512 () Bool)

(assert (=> b!7905533 (= e!4666512 true)))

(declare-fun b!7905534 () Bool)

(declare-fun res!3137040 () Bool)

(assert (=> b!7905534 (=> res!3137040 e!4666512)))

(declare-fun lt!2685028 () List!74381)

(declare-fun input!1184 () List!74381)

(declare-fun lt!2685027 () tuple2!70274)

(declare-fun ++!18174 (List!74381 List!74381) List!74381)

(assert (=> b!7905534 (= res!3137040 (not (= (++!18174 lt!2685028 (_2!38440 lt!2685027)) input!1184)))))

(declare-fun b!7905535 () Bool)

(declare-fun e!4666499 () Bool)

(declare-fun e!4666502 () Bool)

(assert (=> b!7905535 (= e!4666499 (not e!4666502))))

(declare-fun res!3137036 () Bool)

(assert (=> b!7905535 (=> res!3137036 e!4666502)))

(declare-datatypes ((List!74382 0))(
  ( (Nil!74258) (Cons!74258 (h!80706 Rule!17040) (t!389583 List!74382)) )
))
(declare-fun rulesArg!141 () List!74382)

(get-info :version)

(assert (=> b!7905535 (= res!3137036 (or (and ((_ is Cons!74258) rulesArg!141) ((_ is Nil!74258) (t!389583 rulesArg!141))) ((_ is Cons!74258) rulesArg!141)))))

(declare-fun isPrefix!6453 (List!74381 List!74381) Bool)

(assert (=> b!7905535 (isPrefix!6453 input!1184 input!1184)))

(declare-datatypes ((Unit!169299 0))(
  ( (Unit!169300) )
))
(declare-fun lt!2685026 () Unit!169299)

(declare-fun lemmaIsPrefixRefl!3964 (List!74381 List!74381) Unit!169299)

(assert (=> b!7905535 (= lt!2685026 (lemmaIsPrefixRefl!3964 input!1184 input!1184))))

(declare-fun b!7905536 () Bool)

(declare-fun e!4666507 () Bool)

(assert (=> b!7905536 (= e!4666507 e!4666512)))

(declare-fun res!3137043 () Bool)

(assert (=> b!7905536 (=> res!3137043 e!4666512)))

(assert (=> b!7905536 (= res!3137043 (not (= lt!2685028 (originalCharacters!8861 (_1!38440 lt!2685027)))))))

(declare-fun list!19255 (BalanceConc!30706) List!74381)

(declare-fun charsOf!5564 (Token!15660) BalanceConc!30706)

(assert (=> b!7905536 (= lt!2685028 (list!19255 (charsOf!5564 (_1!38440 lt!2685027))))))

(declare-fun lt!2685025 () Option!17902)

(declare-fun get!26684 (Option!17902) tuple2!70274)

(assert (=> b!7905536 (= lt!2685027 (get!26684 lt!2685025))))

(declare-fun b!7905537 () Bool)

(declare-fun e!4666509 () Bool)

(declare-fun tp!2355107 () Bool)

(declare-fun e!4666498 () Bool)

(declare-fun inv!95258 (String!83102) Bool)

(declare-fun inv!95262 (TokenValueInjection!17180) Bool)

(assert (=> b!7905537 (= e!4666509 (and tp!2355107 (inv!95258 (tag!9484 (h!80706 rulesArg!141))) (inv!95262 (transformation!8620 (h!80706 rulesArg!141))) e!4666498))))

(declare-fun e!4666506 () Bool)

(assert (=> b!7905538 (= e!4666506 (and tp!2355101 tp!2355108))))

(declare-fun b!7905539 () Bool)

(declare-fun res!3137045 () Bool)

(assert (=> b!7905539 (=> res!3137045 e!4666512)))

(declare-fun size!43039 (List!74381) Int)

(assert (=> b!7905539 (= res!3137045 (>= (size!43039 (_2!38440 lt!2685027)) (size!43039 input!1184)))))

(declare-fun b!7905540 () Bool)

(declare-fun res!3137039 () Bool)

(assert (=> b!7905540 (=> (not res!3137039) (not e!4666499))))

(declare-datatypes ((LexerInterface!8212 0))(
  ( (LexerInterfaceExt!8209 (__x!35160 Int)) (Lexer!8210) )
))
(declare-fun thiss!14377 () LexerInterface!8212)

(declare-fun rulesValidInductive!3431 (LexerInterface!8212 List!74382) Bool)

(assert (=> b!7905540 (= res!3137039 (rulesValidInductive!3431 thiss!14377 rulesArg!141))))

(declare-fun b!7905541 () Bool)

(declare-fun e!4666500 () Bool)

(declare-fun tp!2355104 () Bool)

(assert (=> b!7905541 (= e!4666500 (and e!4666509 tp!2355104))))

(declare-fun b!7905542 () Bool)

(declare-fun res!3137044 () Bool)

(assert (=> b!7905542 (=> res!3137044 e!4666507)))

(declare-fun isDefined!14478 (Option!17902) Bool)

(assert (=> b!7905542 (= res!3137044 (not (isDefined!14478 lt!2685025)))))

(declare-fun b!7905543 () Bool)

(assert (=> b!7905543 (= e!4666502 e!4666507)))

(declare-fun res!3137037 () Bool)

(assert (=> b!7905543 (=> res!3137037 e!4666507)))

(declare-fun isEmpty!42612 (Option!17902) Bool)

(assert (=> b!7905543 (= res!3137037 (isEmpty!42612 lt!2685025))))

(assert (=> b!7905543 (= lt!2685025 err!4673)))

(assert (=> b!7905543 true))

(assert (=> b!7905543 e!4666501))

(declare-fun b!7905544 () Bool)

(declare-fun res!3137042 () Bool)

(assert (=> b!7905544 (=> res!3137042 e!4666512)))

(declare-fun apply!14343 (TokenValueInjection!17180 BalanceConc!30706) TokenValue!8936)

(declare-fun seqFromList!6161 (List!74381) BalanceConc!30706)

(assert (=> b!7905544 (= res!3137042 (not (= (value!287651 (_1!38440 lt!2685027)) (apply!14343 (transformation!8620 (rule!11912 (_1!38440 lt!2685027))) (seqFromList!6161 (originalCharacters!8861 (_1!38440 lt!2685027)))))))))

(declare-fun b!7905545 () Bool)

(declare-fun res!3137038 () Bool)

(assert (=> b!7905545 (=> (not res!3137038) (not e!4666499))))

(declare-fun isEmpty!42613 (List!74382) Bool)

(assert (=> b!7905545 (= res!3137038 (not (isEmpty!42613 rulesArg!141)))))

(declare-fun b!7905546 () Bool)

(declare-fun tp!2355106 () Bool)

(declare-fun e!4666503 () Bool)

(assert (=> b!7905546 (= e!4666503 (and tp!2355106 (inv!95258 (tag!9484 (rule!11912 (_1!38440 (v!55046 err!4673))))) (inv!95262 (transformation!8620 (rule!11912 (_1!38440 (v!55046 err!4673))))) e!4666506))))

(declare-fun tp!2355102 () Bool)

(declare-fun b!7905547 () Bool)

(declare-fun inv!21 (TokenValue!8936) Bool)

(assert (=> b!7905547 (= e!4666505 (and (inv!21 (value!287651 (_1!38440 (v!55046 err!4673)))) e!4666503 tp!2355102))))

(assert (=> b!7905548 (= e!4666498 (and tp!2355109 tp!2355103))))

(declare-fun res!3137041 () Bool)

(assert (=> start!745876 (=> (not res!3137041) (not e!4666499))))

(assert (=> start!745876 (= res!3137041 ((_ is Lexer!8210) thiss!14377))))

(assert (=> start!745876 e!4666499))

(assert (=> start!745876 true))

(assert (=> start!745876 e!4666500))

(assert (=> start!745876 e!4666510))

(assert (= (and start!745876 res!3137041) b!7905540))

(assert (= (and b!7905540 res!3137039) b!7905545))

(assert (= (and b!7905545 res!3137038) b!7905535))

(assert (= (and b!7905535 (not res!3137036)) b!7905543))

(assert (= b!7905546 b!7905538))

(assert (= b!7905547 b!7905546))

(assert (= b!7905531 b!7905547))

(assert (= (and b!7905543 ((_ is Some!17901) err!4673)) b!7905531))

(assert (= (and b!7905543 (not res!3137037)) b!7905542))

(assert (= (and b!7905542 (not res!3137044)) b!7905536))

(assert (= (and b!7905536 (not res!3137043)) b!7905539))

(assert (= (and b!7905539 (not res!3137045)) b!7905534))

(assert (= (and b!7905534 (not res!3137040)) b!7905544))

(assert (= (and b!7905544 (not res!3137042)) b!7905533))

(assert (= b!7905537 b!7905548))

(assert (= b!7905541 b!7905537))

(assert (= (and start!745876 ((_ is Cons!74258) rulesArg!141)) b!7905541))

(assert (= (and start!745876 ((_ is Cons!74257) input!1184)) b!7905532))

(declare-fun m!8280052 () Bool)

(assert (=> b!7905539 m!8280052))

(declare-fun m!8280054 () Bool)

(assert (=> b!7905539 m!8280054))

(declare-fun m!8280056 () Bool)

(assert (=> b!7905547 m!8280056))

(declare-fun m!8280058 () Bool)

(assert (=> b!7905543 m!8280058))

(declare-fun m!8280060 () Bool)

(assert (=> b!7905545 m!8280060))

(declare-fun m!8280062 () Bool)

(assert (=> b!7905534 m!8280062))

(declare-fun m!8280064 () Bool)

(assert (=> b!7905536 m!8280064))

(assert (=> b!7905536 m!8280064))

(declare-fun m!8280066 () Bool)

(assert (=> b!7905536 m!8280066))

(declare-fun m!8280068 () Bool)

(assert (=> b!7905536 m!8280068))

(declare-fun m!8280070 () Bool)

(assert (=> b!7905535 m!8280070))

(declare-fun m!8280072 () Bool)

(assert (=> b!7905535 m!8280072))

(declare-fun m!8280074 () Bool)

(assert (=> b!7905537 m!8280074))

(declare-fun m!8280076 () Bool)

(assert (=> b!7905537 m!8280076))

(declare-fun m!8280078 () Bool)

(assert (=> b!7905544 m!8280078))

(assert (=> b!7905544 m!8280078))

(declare-fun m!8280080 () Bool)

(assert (=> b!7905544 m!8280080))

(declare-fun m!8280082 () Bool)

(assert (=> b!7905531 m!8280082))

(declare-fun m!8280084 () Bool)

(assert (=> b!7905542 m!8280084))

(declare-fun m!8280086 () Bool)

(assert (=> b!7905546 m!8280086))

(declare-fun m!8280088 () Bool)

(assert (=> b!7905546 m!8280088))

(declare-fun m!8280090 () Bool)

(assert (=> b!7905540 m!8280090))

(check-sat (not b!7905531) (not b!7905543) (not b!7905534) (not b!7905544) (not b!7905546) b_and!353093 b_and!353091 (not b!7905537) (not b!7905542) b_and!353089 (not b!7905547) b_and!353087 (not b!7905545) (not b_next!135725) tp_is_empty!53021 (not b!7905532) (not b!7905540) (not b_next!135723) (not b_next!135721) (not b!7905535) (not b!7905541) (not b_next!135727) (not b!7905536) (not b!7905539))
(check-sat b_and!353089 b_and!353087 (not b_next!135725) (not b_next!135723) (not b_next!135721) b_and!353093 b_and!353091 (not b_next!135727))
