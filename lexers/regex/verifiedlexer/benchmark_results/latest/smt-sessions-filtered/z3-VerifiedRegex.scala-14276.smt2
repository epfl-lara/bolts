; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745872 () Bool)

(assert start!745872)

(declare-fun b!7905437 () Bool)

(declare-fun b_free!134915 () Bool)

(declare-fun b_next!135705 () Bool)

(assert (=> b!7905437 (= b_free!134915 (not b_next!135705))))

(declare-fun tp!2355041 () Bool)

(declare-fun b_and!353071 () Bool)

(assert (=> b!7905437 (= tp!2355041 b_and!353071)))

(declare-fun b_free!134917 () Bool)

(declare-fun b_next!135707 () Bool)

(assert (=> b!7905437 (= b_free!134917 (not b_next!135707))))

(declare-fun tp!2355043 () Bool)

(declare-fun b_and!353073 () Bool)

(assert (=> b!7905437 (= tp!2355043 b_and!353073)))

(declare-fun b!7905436 () Bool)

(declare-fun b_free!134919 () Bool)

(declare-fun b_next!135709 () Bool)

(assert (=> b!7905436 (= b_free!134919 (not b_next!135709))))

(declare-fun tp!2355049 () Bool)

(declare-fun b_and!353075 () Bool)

(assert (=> b!7905436 (= tp!2355049 b_and!353075)))

(declare-fun b_free!134921 () Bool)

(declare-fun b_next!135711 () Bool)

(assert (=> b!7905436 (= b_free!134921 (not b_next!135711))))

(declare-fun tp!2355044 () Bool)

(declare-fun b_and!353077 () Bool)

(assert (=> b!7905436 (= tp!2355044 b_and!353077)))

(declare-fun b!7905424 () Bool)

(declare-fun e!4666421 () Bool)

(declare-datatypes ((List!74374 0))(
  ( (Nil!74250) (Cons!74250 (h!80698 (_ BitVec 16)) (t!389575 List!74374)) )
))
(declare-datatypes ((TokenValue!8934 0))(
  ( (FloatLiteralValue!17868 (text!62983 List!74374)) (TokenValueExt!8933 (__x!35155 Int)) (Broken!44670 (value!287568 List!74374)) (Object!9057) (End!8934) (Def!8934) (Underscore!8934) (Match!8934) (Else!8934) (Error!8934) (Case!8934) (If!8934) (Extends!8934) (Abstract!8934) (Class!8934) (Val!8934) (DelimiterValue!17868 (del!8994 List!74374)) (KeywordValue!8940 (value!287569 List!74374)) (CommentValue!17868 (value!287570 List!74374)) (WhitespaceValue!17868 (value!287571 List!74374)) (IndentationValue!8934 (value!287572 List!74374)) (String!83091) (Int32!8934) (Broken!44671 (value!287573 List!74374)) (Boolean!8935) (Unit!169292) (OperatorValue!8937 (op!8994 List!74374)) (IdentifierValue!17868 (value!287574 List!74374)) (IdentifierValue!17869 (value!287575 List!74374)) (WhitespaceValue!17869 (value!287576 List!74374)) (True!17868) (False!17868) (Broken!44672 (value!287577 List!74374)) (Broken!44673 (value!287578 List!74374)) (True!17869) (RightBrace!8934) (RightBracket!8934) (Colon!8934) (Null!8934) (Comma!8934) (LeftBracket!8934) (False!17869) (LeftBrace!8934) (ImaginaryLiteralValue!8934 (text!62984 List!74374)) (StringLiteralValue!26802 (value!287579 List!74374)) (EOFValue!8934 (value!287580 List!74374)) (IdentValue!8934 (value!287581 List!74374)) (DelimiterValue!17869 (value!287582 List!74374)) (DedentValue!8934 (value!287583 List!74374)) (NewLineValue!8934 (value!287584 List!74374)) (IntegerValue!26802 (value!287585 (_ BitVec 32)) (text!62985 List!74374)) (IntegerValue!26803 (value!287586 Int) (text!62986 List!74374)) (Times!8934) (Or!8934) (Equal!8934) (Minus!8934) (Broken!44674 (value!287587 List!74374)) (And!8934) (Div!8934) (LessEqual!8934) (Mod!8934) (Concat!30255) (Not!8934) (Plus!8934) (SpaceValue!8934 (value!287588 List!74374)) (IntegerValue!26804 (value!287589 Int) (text!62987 List!74374)) (StringLiteralValue!26803 (text!62988 List!74374)) (FloatLiteralValue!17869 (text!62989 List!74374)) (BytesLiteralValue!8934 (value!287590 List!74374)) (CommentValue!17869 (value!287591 List!74374)) (StringLiteralValue!26804 (value!287592 List!74374)) (ErrorTokenValue!8934 (msg!8995 List!74374)) )
))
(declare-datatypes ((C!42972 0))(
  ( (C!42973 (val!31950 Int)) )
))
(declare-datatypes ((List!74375 0))(
  ( (Nil!74251) (Cons!74251 (h!80699 C!42972) (t!389576 List!74375)) )
))
(declare-datatypes ((IArray!31645 0))(
  ( (IArray!31646 (innerList!15880 List!74375)) )
))
(declare-datatypes ((Conc!15792 0))(
  ( (Node!15792 (left!56632 Conc!15792) (right!56962 Conc!15792) (csize!31814 Int) (cheight!16003 Int)) (Leaf!30069 (xs!19174 IArray!31645) (csize!31815 Int)) (Empty!15792) )
))
(declare-datatypes ((BalanceConc!30702 0))(
  ( (BalanceConc!30703 (c!1450653 Conc!15792)) )
))
(declare-datatypes ((Regex!21321 0))(
  ( (ElementMatch!21321 (c!1450654 C!42972)) (Concat!30256 (regOne!43154 Regex!21321) (regTwo!43154 Regex!21321)) (EmptyExpr!21321) (Star!21321 (reg!21650 Regex!21321)) (EmptyLang!21321) (Union!21321 (regOne!43155 Regex!21321) (regTwo!43155 Regex!21321)) )
))
(declare-datatypes ((String!83092 0))(
  ( (String!83093 (value!287593 String)) )
))
(declare-datatypes ((TokenValueInjection!17176 0))(
  ( (TokenValueInjection!17177 (toValue!11675 Int) (toChars!11534 Int)) )
))
(declare-datatypes ((Rule!17036 0))(
  ( (Rule!17037 (regex!8618 Regex!21321) (tag!9482 String!83092) (isSeparator!8618 Bool) (transformation!8618 TokenValueInjection!17176)) )
))
(declare-datatypes ((List!74376 0))(
  ( (Nil!74252) (Cons!74252 (h!80700 Rule!17036) (t!389577 List!74376)) )
))
(declare-fun rulesArg!141 () List!74376)

(declare-fun tp!2355047 () Bool)

(declare-fun e!4666411 () Bool)

(declare-fun inv!95251 (String!83092) Bool)

(declare-fun inv!95254 (TokenValueInjection!17176) Bool)

(assert (=> b!7905424 (= e!4666421 (and tp!2355047 (inv!95251 (tag!9482 (h!80700 rulesArg!141))) (inv!95254 (transformation!8618 (h!80700 rulesArg!141))) e!4666411))))

(declare-fun b!7905425 () Bool)

(declare-fun res!3136977 () Bool)

(declare-fun e!4666422 () Bool)

(assert (=> b!7905425 (=> res!3136977 e!4666422)))

(declare-fun input!1184 () List!74375)

(declare-fun lt!2685002 () List!74375)

(declare-datatypes ((Token!15656 0))(
  ( (Token!15657 (value!287594 TokenValue!8934) (rule!11910 Rule!17036) (size!43034 Int) (originalCharacters!8859 List!74375)) )
))
(declare-datatypes ((tuple2!70270 0))(
  ( (tuple2!70271 (_1!38438 Token!15656) (_2!38438 List!74375)) )
))
(declare-fun lt!2685004 () tuple2!70270)

(declare-fun ++!18172 (List!74375 List!74375) List!74375)

(assert (=> b!7905425 (= res!3136977 (not (= (++!18172 lt!2685002 (_2!38438 lt!2685004)) input!1184)))))

(declare-fun b!7905426 () Bool)

(declare-fun e!4666408 () Bool)

(assert (=> b!7905426 (= e!4666408 e!4666422)))

(declare-fun res!3136979 () Bool)

(assert (=> b!7905426 (=> res!3136979 e!4666422)))

(assert (=> b!7905426 (= res!3136979 (not (= lt!2685002 (originalCharacters!8859 (_1!38438 lt!2685004)))))))

(declare-fun list!19253 (BalanceConc!30702) List!74375)

(declare-fun charsOf!5562 (Token!15656) BalanceConc!30702)

(assert (=> b!7905426 (= lt!2685002 (list!19253 (charsOf!5562 (_1!38438 lt!2685004))))))

(declare-datatypes ((Option!17900 0))(
  ( (None!17899) (Some!17899 (v!55044 tuple2!70270)) )
))
(declare-fun lt!2685001 () Option!17900)

(declare-fun get!26681 (Option!17900) tuple2!70270)

(assert (=> b!7905426 (= lt!2685004 (get!26681 lt!2685001))))

(declare-fun b!7905427 () Bool)

(declare-fun e!4666415 () Bool)

(assert (=> b!7905427 (= e!4666415 e!4666408)))

(declare-fun res!3136982 () Bool)

(assert (=> b!7905427 (=> res!3136982 e!4666408)))

(declare-fun isEmpty!42608 (Option!17900) Bool)

(assert (=> b!7905427 (= res!3136982 (isEmpty!42608 lt!2685001))))

(declare-fun err!4665 () Option!17900)

(assert (=> b!7905427 (= lt!2685001 err!4665)))

(assert (=> b!7905427 true))

(declare-fun e!4666420 () Bool)

(assert (=> b!7905427 e!4666420))

(declare-fun b!7905428 () Bool)

(assert (=> b!7905428 (= e!4666422 true)))

(declare-fun e!4666409 () Bool)

(declare-fun tp!2355048 () Bool)

(declare-fun e!4666413 () Bool)

(declare-fun b!7905429 () Bool)

(declare-fun inv!21 (TokenValue!8934) Bool)

(assert (=> b!7905429 (= e!4666409 (and (inv!21 (value!287594 (_1!38438 (v!55044 err!4665)))) e!4666413 tp!2355048))))

(declare-fun b!7905430 () Bool)

(declare-fun res!3136978 () Bool)

(declare-fun e!4666416 () Bool)

(assert (=> b!7905430 (=> (not res!3136978) (not e!4666416))))

(declare-datatypes ((LexerInterface!8210 0))(
  ( (LexerInterfaceExt!8207 (__x!35156 Int)) (Lexer!8208) )
))
(declare-fun thiss!14377 () LexerInterface!8210)

(declare-fun rulesValidInductive!3429 (LexerInterface!8210 List!74376) Bool)

(assert (=> b!7905430 (= res!3136978 (rulesValidInductive!3429 thiss!14377 rulesArg!141))))

(declare-fun b!7905431 () Bool)

(declare-fun res!3136983 () Bool)

(assert (=> b!7905431 (=> (not res!3136983) (not e!4666416))))

(declare-fun isEmpty!42609 (List!74376) Bool)

(assert (=> b!7905431 (= res!3136983 (not (isEmpty!42609 rulesArg!141)))))

(declare-fun b!7905432 () Bool)

(declare-fun e!4666419 () Bool)

(declare-fun tp!2355050 () Bool)

(assert (=> b!7905432 (= e!4666419 (and e!4666421 tp!2355050))))

(declare-fun b!7905433 () Bool)

(assert (=> b!7905433 (= e!4666416 (not e!4666415))))

(declare-fun res!3136981 () Bool)

(assert (=> b!7905433 (=> res!3136981 e!4666415)))

(get-info :version)

(assert (=> b!7905433 (= res!3136981 (or (and ((_ is Cons!74252) rulesArg!141) ((_ is Nil!74252) (t!389577 rulesArg!141))) ((_ is Cons!74252) rulesArg!141)))))

(declare-fun isPrefix!6451 (List!74375 List!74375) Bool)

(assert (=> b!7905433 (isPrefix!6451 input!1184 input!1184)))

(declare-datatypes ((Unit!169293 0))(
  ( (Unit!169294) )
))
(declare-fun lt!2685003 () Unit!169293)

(declare-fun lemmaIsPrefixRefl!3962 (List!74375 List!74375) Unit!169293)

(assert (=> b!7905433 (= lt!2685003 (lemmaIsPrefixRefl!3962 input!1184 input!1184))))

(declare-fun tp!2355046 () Bool)

(declare-fun b!7905434 () Bool)

(declare-fun inv!95255 (Token!15656) Bool)

(assert (=> b!7905434 (= e!4666420 (and (inv!95255 (_1!38438 (v!55044 err!4665))) e!4666409 tp!2355046))))

(declare-fun tp!2355045 () Bool)

(declare-fun e!4666417 () Bool)

(declare-fun b!7905435 () Bool)

(assert (=> b!7905435 (= e!4666413 (and tp!2355045 (inv!95251 (tag!9482 (rule!11910 (_1!38438 (v!55044 err!4665))))) (inv!95254 (transformation!8618 (rule!11910 (_1!38438 (v!55044 err!4665))))) e!4666417))))

(assert (=> b!7905437 (= e!4666417 (and tp!2355041 tp!2355043))))

(declare-fun b!7905438 () Bool)

(declare-fun res!3136984 () Bool)

(assert (=> b!7905438 (=> res!3136984 e!4666408)))

(declare-fun isDefined!14476 (Option!17900) Bool)

(assert (=> b!7905438 (= res!3136984 (not (isDefined!14476 lt!2685001)))))

(declare-fun b!7905439 () Bool)

(declare-fun e!4666412 () Bool)

(declare-fun tp_is_empty!53017 () Bool)

(declare-fun tp!2355042 () Bool)

(assert (=> b!7905439 (= e!4666412 (and tp_is_empty!53017 tp!2355042))))

(declare-fun b!7905440 () Bool)

(declare-fun res!3136985 () Bool)

(assert (=> b!7905440 (=> res!3136985 e!4666422)))

(declare-fun size!43035 (List!74375) Int)

(assert (=> b!7905440 (= res!3136985 (>= (size!43035 (_2!38438 lt!2685004)) (size!43035 input!1184)))))

(declare-fun res!3136980 () Bool)

(assert (=> start!745872 (=> (not res!3136980) (not e!4666416))))

(assert (=> start!745872 (= res!3136980 ((_ is Lexer!8208) thiss!14377))))

(assert (=> start!745872 e!4666416))

(assert (=> start!745872 true))

(assert (=> start!745872 e!4666419))

(assert (=> start!745872 e!4666412))

(assert (=> b!7905436 (= e!4666411 (and tp!2355049 tp!2355044))))

(assert (= (and start!745872 res!3136980) b!7905430))

(assert (= (and b!7905430 res!3136978) b!7905431))

(assert (= (and b!7905431 res!3136983) b!7905433))

(assert (= (and b!7905433 (not res!3136981)) b!7905427))

(assert (= b!7905435 b!7905437))

(assert (= b!7905429 b!7905435))

(assert (= b!7905434 b!7905429))

(assert (= (and b!7905427 ((_ is Some!17899) err!4665)) b!7905434))

(assert (= (and b!7905427 (not res!3136982)) b!7905438))

(assert (= (and b!7905438 (not res!3136984)) b!7905426))

(assert (= (and b!7905426 (not res!3136979)) b!7905440))

(assert (= (and b!7905440 (not res!3136985)) b!7905425))

(assert (= (and b!7905425 (not res!3136977)) b!7905428))

(assert (= b!7905424 b!7905436))

(assert (= b!7905432 b!7905424))

(assert (= (and start!745872 ((_ is Cons!74252) rulesArg!141)) b!7905432))

(assert (= (and start!745872 ((_ is Cons!74251) input!1184)) b!7905439))

(declare-fun m!8279976 () Bool)

(assert (=> b!7905426 m!8279976))

(assert (=> b!7905426 m!8279976))

(declare-fun m!8279978 () Bool)

(assert (=> b!7905426 m!8279978))

(declare-fun m!8279980 () Bool)

(assert (=> b!7905426 m!8279980))

(declare-fun m!8279982 () Bool)

(assert (=> b!7905425 m!8279982))

(declare-fun m!8279984 () Bool)

(assert (=> b!7905434 m!8279984))

(declare-fun m!8279986 () Bool)

(assert (=> b!7905430 m!8279986))

(declare-fun m!8279988 () Bool)

(assert (=> b!7905433 m!8279988))

(declare-fun m!8279990 () Bool)

(assert (=> b!7905433 m!8279990))

(declare-fun m!8279992 () Bool)

(assert (=> b!7905440 m!8279992))

(declare-fun m!8279994 () Bool)

(assert (=> b!7905440 m!8279994))

(declare-fun m!8279996 () Bool)

(assert (=> b!7905427 m!8279996))

(declare-fun m!8279998 () Bool)

(assert (=> b!7905424 m!8279998))

(declare-fun m!8280000 () Bool)

(assert (=> b!7905424 m!8280000))

(declare-fun m!8280002 () Bool)

(assert (=> b!7905438 m!8280002))

(declare-fun m!8280004 () Bool)

(assert (=> b!7905431 m!8280004))

(declare-fun m!8280006 () Bool)

(assert (=> b!7905435 m!8280006))

(declare-fun m!8280008 () Bool)

(assert (=> b!7905435 m!8280008))

(declare-fun m!8280010 () Bool)

(assert (=> b!7905429 m!8280010))

(check-sat (not b_next!135709) (not b!7905438) (not b!7905439) (not b!7905434) (not b_next!135711) tp_is_empty!53017 (not b!7905435) (not b!7905430) (not b!7905427) b_and!353073 (not b!7905431) b_and!353071 (not b!7905440) (not b_next!135705) (not b!7905433) (not b!7905425) (not b_next!135707) (not b!7905432) (not b!7905429) (not b!7905424) (not b!7905426) b_and!353077 b_and!353075)
(check-sat (not b_next!135709) (not b_next!135711) (not b_next!135707) b_and!353073 b_and!353071 (not b_next!135705) b_and!353077 b_and!353075)
