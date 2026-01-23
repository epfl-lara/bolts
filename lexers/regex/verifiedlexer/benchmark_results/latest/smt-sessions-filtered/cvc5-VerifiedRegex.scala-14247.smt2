; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745114 () Bool)

(assert start!745114)

(declare-fun b!7899218 () Bool)

(declare-fun b_free!134595 () Bool)

(declare-fun b_next!135385 () Bool)

(assert (=> b!7899218 (= b_free!134595 (not b_next!135385))))

(declare-fun tp!2353431 () Bool)

(declare-fun b_and!352495 () Bool)

(assert (=> b!7899218 (= tp!2353431 b_and!352495)))

(declare-fun b_free!134597 () Bool)

(declare-fun b_next!135387 () Bool)

(assert (=> b!7899218 (= b_free!134597 (not b_next!135387))))

(declare-fun tp!2353435 () Bool)

(declare-fun b_and!352497 () Bool)

(assert (=> b!7899218 (= tp!2353435 b_and!352497)))

(declare-fun tp!2353433 () Bool)

(declare-fun e!4662593 () Bool)

(declare-fun b!7899207 () Bool)

(declare-datatypes ((List!74197 0))(
  ( (Nil!74073) (Cons!74073 (h!80521 (_ BitVec 16)) (t!389006 List!74197)) )
))
(declare-datatypes ((TokenValue!8875 0))(
  ( (FloatLiteralValue!17750 (text!62570 List!74197)) (TokenValueExt!8874 (__x!35037 Int)) (Broken!44375 (value!285888 List!74197)) (Object!8998) (End!8875) (Def!8875) (Underscore!8875) (Match!8875) (Else!8875) (Error!8875) (Case!8875) (If!8875) (Extends!8875) (Abstract!8875) (Class!8875) (Val!8875) (DelimiterValue!17750 (del!8935 List!74197)) (KeywordValue!8881 (value!285889 List!74197)) (CommentValue!17750 (value!285890 List!74197)) (WhitespaceValue!17750 (value!285891 List!74197)) (IndentationValue!8875 (value!285892 List!74197)) (String!82798) (Int32!8875) (Broken!44376 (value!285893 List!74197)) (Boolean!8876) (Unit!169091) (OperatorValue!8878 (op!8935 List!74197)) (IdentifierValue!17750 (value!285894 List!74197)) (IdentifierValue!17751 (value!285895 List!74197)) (WhitespaceValue!17751 (value!285896 List!74197)) (True!17750) (False!17750) (Broken!44377 (value!285897 List!74197)) (Broken!44378 (value!285898 List!74197)) (True!17751) (RightBrace!8875) (RightBracket!8875) (Colon!8875) (Null!8875) (Comma!8875) (LeftBracket!8875) (False!17751) (LeftBrace!8875) (ImaginaryLiteralValue!8875 (text!62571 List!74197)) (StringLiteralValue!26625 (value!285899 List!74197)) (EOFValue!8875 (value!285900 List!74197)) (IdentValue!8875 (value!285901 List!74197)) (DelimiterValue!17751 (value!285902 List!74197)) (DedentValue!8875 (value!285903 List!74197)) (NewLineValue!8875 (value!285904 List!74197)) (IntegerValue!26625 (value!285905 (_ BitVec 32)) (text!62572 List!74197)) (IntegerValue!26626 (value!285906 Int) (text!62573 List!74197)) (Times!8875) (Or!8875) (Equal!8875) (Minus!8875) (Broken!44379 (value!285907 List!74197)) (And!8875) (Div!8875) (LessEqual!8875) (Mod!8875) (Concat!30137) (Not!8875) (Plus!8875) (SpaceValue!8875 (value!285908 List!74197)) (IntegerValue!26627 (value!285909 Int) (text!62574 List!74197)) (StringLiteralValue!26626 (text!62575 List!74197)) (FloatLiteralValue!17751 (text!62576 List!74197)) (BytesLiteralValue!8875 (value!285910 List!74197)) (CommentValue!17751 (value!285911 List!74197)) (StringLiteralValue!26627 (value!285912 List!74197)) (ErrorTokenValue!8875 (msg!8936 List!74197)) )
))
(declare-datatypes ((C!42854 0))(
  ( (C!42855 (val!31891 Int)) )
))
(declare-datatypes ((List!74198 0))(
  ( (Nil!74074) (Cons!74074 (h!80522 C!42854) (t!389007 List!74198)) )
))
(declare-datatypes ((IArray!31527 0))(
  ( (IArray!31528 (innerList!15821 List!74198)) )
))
(declare-datatypes ((Conc!15733 0))(
  ( (Node!15733 (left!56528 Conc!15733) (right!56858 Conc!15733) (csize!31696 Int) (cheight!15944 Int)) (Leaf!29981 (xs!19115 IArray!31527) (csize!31697 Int)) (Empty!15733) )
))
(declare-datatypes ((BalanceConc!30584 0))(
  ( (BalanceConc!30585 (c!1449754 Conc!15733)) )
))
(declare-datatypes ((Regex!21262 0))(
  ( (ElementMatch!21262 (c!1449755 C!42854)) (Concat!30138 (regOne!43036 Regex!21262) (regTwo!43036 Regex!21262)) (EmptyExpr!21262) (Star!21262 (reg!21591 Regex!21262)) (EmptyLang!21262) (Union!21262 (regOne!43037 Regex!21262) (regTwo!43037 Regex!21262)) )
))
(declare-datatypes ((String!82799 0))(
  ( (String!82800 (value!285913 String)) )
))
(declare-datatypes ((TokenValueInjection!17058 0))(
  ( (TokenValueInjection!17059 (toValue!11600 Int) (toChars!11459 Int)) )
))
(declare-datatypes ((Rule!16918 0))(
  ( (Rule!16919 (regex!8559 Regex!21262) (tag!9423 String!82799) (isSeparator!8559 Bool) (transformation!8559 TokenValueInjection!17058)) )
))
(declare-datatypes ((List!74199 0))(
  ( (Nil!74075) (Cons!74075 (h!80523 Rule!16918) (t!389008 List!74199)) )
))
(declare-fun rulesArg!141 () List!74199)

(declare-fun e!4662591 () Bool)

(declare-fun inv!95060 (String!82799) Bool)

(declare-fun inv!95063 (TokenValueInjection!17058) Bool)

(assert (=> b!7899207 (= e!4662593 (and tp!2353433 (inv!95060 (tag!9423 (h!80523 rulesArg!141))) (inv!95063 (transformation!8559 (h!80523 rulesArg!141))) e!4662591))))

(declare-fun b!7899208 () Bool)

(declare-fun e!4662599 () Bool)

(declare-fun e!4662592 () Bool)

(assert (=> b!7899208 (= e!4662599 e!4662592)))

(declare-fun res!3133649 () Bool)

(assert (=> b!7899208 (=> res!3133649 e!4662592)))

(declare-datatypes ((Token!15538 0))(
  ( (Token!15539 (value!285914 TokenValue!8875) (rule!11843 Rule!16918) (size!42910 Int) (originalCharacters!8800 List!74198)) )
))
(declare-datatypes ((tuple2!70136 0))(
  ( (tuple2!70137 (_1!38371 Token!15538) (_2!38371 List!74198)) )
))
(declare-datatypes ((Option!17841 0))(
  ( (None!17840) (Some!17840 (v!54977 tuple2!70136)) )
))
(declare-fun lt!2682520 () Option!17841)

(declare-fun lt!2682521 () Option!17841)

(assert (=> b!7899208 (= res!3133649 true)))

(declare-fun input!1184 () List!74198)

(declare-datatypes ((LexerInterface!8151 0))(
  ( (LexerInterfaceExt!8148 (__x!35038 Int)) (Lexer!8149) )
))
(declare-fun thiss!14377 () LexerInterface!8151)

(declare-fun maxPrefix!4692 (LexerInterface!8151 List!74199 List!74198) Option!17841)

(assert (=> b!7899208 (= lt!2682521 (maxPrefix!4692 thiss!14377 (t!389008 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3739 (LexerInterface!8151 Rule!16918 List!74198) Option!17841)

(assert (=> b!7899208 (= lt!2682520 (maxPrefixOneRule!3739 thiss!14377 (h!80523 rulesArg!141) input!1184))))

(declare-fun res!3133651 () Bool)

(declare-fun e!4662597 () Bool)

(assert (=> start!745114 (=> (not res!3133651) (not e!4662597))))

(assert (=> start!745114 (= res!3133651 (is-Lexer!8149 thiss!14377))))

(assert (=> start!745114 e!4662597))

(assert (=> start!745114 true))

(declare-fun e!4662596 () Bool)

(assert (=> start!745114 e!4662596))

(declare-fun e!4662594 () Bool)

(assert (=> start!745114 e!4662594))

(declare-fun b!7899209 () Bool)

(declare-fun e!4662595 () Bool)

(assert (=> b!7899209 (= e!4662595 true)))

(declare-fun b!7899210 () Bool)

(declare-fun res!3133656 () Bool)

(assert (=> b!7899210 (=> res!3133656 e!4662595)))

(declare-fun lt!2682519 () tuple2!70136)

(declare-fun size!42911 (List!74198) Int)

(assert (=> b!7899210 (= res!3133656 (>= (size!42911 (_2!38371 lt!2682519)) (size!42911 input!1184)))))

(declare-fun b!7899211 () Bool)

(declare-fun tp!2353432 () Bool)

(assert (=> b!7899211 (= e!4662596 (and e!4662593 tp!2353432))))

(declare-fun b!7899212 () Bool)

(declare-fun res!3133654 () Bool)

(assert (=> b!7899212 (=> (not res!3133654) (not e!4662597))))

(declare-fun rulesValidInductive!3370 (LexerInterface!8151 List!74199) Bool)

(assert (=> b!7899212 (= res!3133654 (rulesValidInductive!3370 thiss!14377 rulesArg!141))))

(declare-fun b!7899213 () Bool)

(declare-fun res!3133648 () Bool)

(assert (=> b!7899213 (=> (not res!3133648) (not e!4662597))))

(declare-fun isEmpty!42488 (List!74199) Bool)

(assert (=> b!7899213 (= res!3133648 (not (isEmpty!42488 rulesArg!141)))))

(declare-fun b!7899214 () Bool)

(declare-fun res!3133652 () Bool)

(assert (=> b!7899214 (=> res!3133652 e!4662595)))

(declare-fun lt!2682518 () List!74198)

(declare-fun ++!18133 (List!74198 List!74198) List!74198)

(assert (=> b!7899214 (= res!3133652 (not (= (++!18133 lt!2682518 (_2!38371 lt!2682519)) input!1184)))))

(declare-fun b!7899215 () Bool)

(declare-fun res!3133650 () Bool)

(assert (=> b!7899215 (=> res!3133650 e!4662595)))

(declare-fun apply!14312 (TokenValueInjection!17058 BalanceConc!30584) TokenValue!8875)

(declare-fun seqFromList!6130 (List!74198) BalanceConc!30584)

(assert (=> b!7899215 (= res!3133650 (not (= (value!285914 (_1!38371 lt!2682519)) (apply!14312 (transformation!8559 (rule!11843 (_1!38371 lt!2682519))) (seqFromList!6130 (originalCharacters!8800 (_1!38371 lt!2682519)))))))))

(declare-fun b!7899216 () Bool)

(declare-fun tp_is_empty!52899 () Bool)

(declare-fun tp!2353434 () Bool)

(assert (=> b!7899216 (= e!4662594 (and tp_is_empty!52899 tp!2353434))))

(declare-fun b!7899217 () Bool)

(assert (=> b!7899217 (= e!4662597 (not e!4662599))))

(declare-fun res!3133653 () Bool)

(assert (=> b!7899217 (=> res!3133653 e!4662599)))

(assert (=> b!7899217 (= res!3133653 (or (and (is-Cons!74075 rulesArg!141) (is-Nil!74075 (t!389008 rulesArg!141))) (not (is-Cons!74075 rulesArg!141))))))

(declare-fun isPrefix!6392 (List!74198 List!74198) Bool)

(assert (=> b!7899217 (isPrefix!6392 input!1184 input!1184)))

(declare-datatypes ((Unit!169092 0))(
  ( (Unit!169093) )
))
(declare-fun lt!2682517 () Unit!169092)

(declare-fun lemmaIsPrefixRefl!3903 (List!74198 List!74198) Unit!169092)

(assert (=> b!7899217 (= lt!2682517 (lemmaIsPrefixRefl!3903 input!1184 input!1184))))

(assert (=> b!7899218 (= e!4662591 (and tp!2353431 tp!2353435))))

(declare-fun b!7899219 () Bool)

(assert (=> b!7899219 (= e!4662592 e!4662595)))

(declare-fun res!3133655 () Bool)

(assert (=> b!7899219 (=> res!3133655 e!4662595)))

(assert (=> b!7899219 (= res!3133655 (not (= lt!2682518 (originalCharacters!8800 (_1!38371 lt!2682519)))))))

(declare-fun list!19178 (BalanceConc!30584) List!74198)

(declare-fun charsOf!5503 (Token!15538) BalanceConc!30584)

(assert (=> b!7899219 (= lt!2682518 (list!19178 (charsOf!5503 (_1!38371 lt!2682519))))))

(declare-fun get!26593 (Option!17841) tuple2!70136)

(assert (=> b!7899219 (= lt!2682519 (get!26593 None!17840))))

(assert (= (and start!745114 res!3133651) b!7899212))

(assert (= (and b!7899212 res!3133654) b!7899213))

(assert (= (and b!7899213 res!3133648) b!7899217))

(assert (= (and b!7899217 (not res!3133653)) b!7899208))

(assert (= (and b!7899208 (not res!3133649)) b!7899219))

(assert (= (and b!7899219 (not res!3133655)) b!7899210))

(assert (= (and b!7899210 (not res!3133656)) b!7899214))

(assert (= (and b!7899214 (not res!3133652)) b!7899215))

(assert (= (and b!7899215 (not res!3133650)) b!7899209))

(assert (= b!7899207 b!7899218))

(assert (= b!7899211 b!7899207))

(assert (= (and start!745114 (is-Cons!74075 rulesArg!141)) b!7899211))

(assert (= (and start!745114 (is-Cons!74074 input!1184)) b!7899216))

(declare-fun m!8274060 () Bool)

(assert (=> b!7899217 m!8274060))

(declare-fun m!8274062 () Bool)

(assert (=> b!7899217 m!8274062))

(declare-fun m!8274064 () Bool)

(assert (=> b!7899214 m!8274064))

(declare-fun m!8274066 () Bool)

(assert (=> b!7899219 m!8274066))

(assert (=> b!7899219 m!8274066))

(declare-fun m!8274068 () Bool)

(assert (=> b!7899219 m!8274068))

(declare-fun m!8274070 () Bool)

(assert (=> b!7899219 m!8274070))

(declare-fun m!8274072 () Bool)

(assert (=> b!7899210 m!8274072))

(declare-fun m!8274074 () Bool)

(assert (=> b!7899210 m!8274074))

(declare-fun m!8274076 () Bool)

(assert (=> b!7899212 m!8274076))

(declare-fun m!8274078 () Bool)

(assert (=> b!7899213 m!8274078))

(declare-fun m!8274080 () Bool)

(assert (=> b!7899215 m!8274080))

(assert (=> b!7899215 m!8274080))

(declare-fun m!8274082 () Bool)

(assert (=> b!7899215 m!8274082))

(declare-fun m!8274084 () Bool)

(assert (=> b!7899208 m!8274084))

(declare-fun m!8274086 () Bool)

(assert (=> b!7899208 m!8274086))

(declare-fun m!8274088 () Bool)

(assert (=> b!7899207 m!8274088))

(declare-fun m!8274090 () Bool)

(assert (=> b!7899207 m!8274090))

(push 1)

(assert b_and!352497)

(assert (not b!7899219))

(assert (not b!7899213))

(assert (not b!7899212))

(assert (not b!7899207))

(assert (not b_next!135385))

(assert (not b_next!135387))

(assert (not b!7899216))

(assert (not b!7899210))

(assert tp_is_empty!52899)

(assert (not b!7899217))

(assert (not b!7899208))

(assert (not b!7899214))

(assert (not b!7899211))

(assert b_and!352495)

(assert (not b!7899215))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352497)

(assert b_and!352495)

(assert (not b_next!135387))

(assert (not b_next!135385))

(check-sat)

(pop 1)

