; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536816 () Bool)

(assert start!536816)

(declare-fun b!5093268 () Bool)

(declare-fun b_free!133251 () Bool)

(declare-fun b_next!134041 () Bool)

(assert (=> b!5093268 (= b_free!133251 (not b_next!134041))))

(declare-fun tp!1419810 () Bool)

(declare-fun b_and!350135 () Bool)

(assert (=> b!5093268 (= tp!1419810 b_and!350135)))

(declare-fun b_free!133253 () Bool)

(declare-fun b_next!134043 () Bool)

(assert (=> b!5093268 (= b_free!133253 (not b_next!134043))))

(declare-fun tp!1419812 () Bool)

(declare-fun b_and!350137 () Bool)

(assert (=> b!5093268 (= tp!1419812 b_and!350137)))

(declare-fun b!5093266 () Bool)

(declare-fun e!3176320 () Bool)

(declare-fun tp!1419813 () Bool)

(declare-fun e!3176323 () Bool)

(declare-datatypes ((List!58671 0))(
  ( (Nil!58547) (Cons!58547 (h!64995 (_ BitVec 16)) (t!371626 List!58671)) )
))
(declare-datatypes ((TokenValue!8798 0))(
  ( (FloatLiteralValue!17596 (text!62031 List!58671)) (TokenValueExt!8797 (__x!34885 Int)) (Broken!43990 (value!272083 List!58671)) (Object!8921) (End!8798) (Def!8798) (Underscore!8798) (Match!8798) (Else!8798) (Error!8798) (Case!8798) (If!8798) (Extends!8798) (Abstract!8798) (Class!8798) (Val!8798) (DelimiterValue!17596 (del!8858 List!58671)) (KeywordValue!8804 (value!272084 List!58671)) (CommentValue!17596 (value!272085 List!58671)) (WhitespaceValue!17596 (value!272086 List!58671)) (IndentationValue!8798 (value!272087 List!58671)) (String!66911) (Int32!8798) (Broken!43991 (value!272088 List!58671)) (Boolean!8799) (Unit!149588) (OperatorValue!8801 (op!8858 List!58671)) (IdentifierValue!17596 (value!272089 List!58671)) (IdentifierValue!17597 (value!272090 List!58671)) (WhitespaceValue!17597 (value!272091 List!58671)) (True!17596) (False!17596) (Broken!43992 (value!272092 List!58671)) (Broken!43993 (value!272093 List!58671)) (True!17597) (RightBrace!8798) (RightBracket!8798) (Colon!8798) (Null!8798) (Comma!8798) (LeftBracket!8798) (False!17597) (LeftBrace!8798) (ImaginaryLiteralValue!8798 (text!62032 List!58671)) (StringLiteralValue!26394 (value!272094 List!58671)) (EOFValue!8798 (value!272095 List!58671)) (IdentValue!8798 (value!272096 List!58671)) (DelimiterValue!17597 (value!272097 List!58671)) (DedentValue!8798 (value!272098 List!58671)) (NewLineValue!8798 (value!272099 List!58671)) (IntegerValue!26394 (value!272100 (_ BitVec 32)) (text!62033 List!58671)) (IntegerValue!26395 (value!272101 Int) (text!62034 List!58671)) (Times!8798) (Or!8798) (Equal!8798) (Minus!8798) (Broken!43994 (value!272102 List!58671)) (And!8798) (Div!8798) (LessEqual!8798) (Mod!8798) (Concat!22757) (Not!8798) (Plus!8798) (SpaceValue!8798 (value!272103 List!58671)) (IntegerValue!26396 (value!272104 Int) (text!62035 List!58671)) (StringLiteralValue!26395 (text!62036 List!58671)) (FloatLiteralValue!17597 (text!62037 List!58671)) (BytesLiteralValue!8798 (value!272105 List!58671)) (CommentValue!17597 (value!272106 List!58671)) (StringLiteralValue!26396 (value!272107 List!58671)) (ErrorTokenValue!8798 (msg!8859 List!58671)) )
))
(declare-datatypes ((C!28176 0))(
  ( (C!28177 (val!23740 Int)) )
))
(declare-datatypes ((List!58672 0))(
  ( (Nil!58548) (Cons!58548 (h!64996 C!28176) (t!371627 List!58672)) )
))
(declare-datatypes ((IArray!31373 0))(
  ( (IArray!31374 (innerList!15744 List!58672)) )
))
(declare-datatypes ((Conc!15656 0))(
  ( (Node!15656 (left!42964 Conc!15656) (right!43294 Conc!15656) (csize!31542 Int) (cheight!15867 Int)) (Leaf!25989 (xs!19038 IArray!31373) (csize!31543 Int)) (Empty!15656) )
))
(declare-datatypes ((BalanceConc!30430 0))(
  ( (BalanceConc!30431 (c!875398 Conc!15656)) )
))
(declare-datatypes ((TokenValueInjection!16904 0))(
  ( (TokenValueInjection!16905 (toValue!11507 Int) (toChars!11366 Int)) )
))
(declare-datatypes ((Regex!13959 0))(
  ( (ElementMatch!13959 (c!875399 C!28176)) (Concat!22758 (regOne!28430 Regex!13959) (regTwo!28430 Regex!13959)) (EmptyExpr!13959) (Star!13959 (reg!14288 Regex!13959)) (EmptyLang!13959) (Union!13959 (regOne!28431 Regex!13959) (regTwo!28431 Regex!13959)) )
))
(declare-datatypes ((String!66912 0))(
  ( (String!66913 (value!272108 String)) )
))
(declare-datatypes ((Rule!16768 0))(
  ( (Rule!16769 (regex!8484 Regex!13959) (tag!9348 String!66912) (isSeparator!8484 Bool) (transformation!8484 TokenValueInjection!16904)) )
))
(declare-datatypes ((List!58673 0))(
  ( (Nil!58549) (Cons!58549 (h!64997 Rule!16768) (t!371628 List!58673)) )
))
(declare-fun rulesArg!145 () List!58673)

(declare-fun inv!78052 (String!66912) Bool)

(declare-fun inv!78054 (TokenValueInjection!16904) Bool)

(assert (=> b!5093266 (= e!3176320 (and tp!1419813 (inv!78052 (tag!9348 (h!64997 rulesArg!145))) (inv!78054 (transformation!8484 (h!64997 rulesArg!145))) e!3176323))))

(declare-fun b!5093267 () Bool)

(declare-fun e!3176324 () Bool)

(declare-fun tp_is_empty!37183 () Bool)

(declare-fun tp!1419809 () Bool)

(assert (=> b!5093267 (= e!3176324 (and tp_is_empty!37183 tp!1419809))))

(assert (=> b!5093268 (= e!3176323 (and tp!1419810 tp!1419812))))

(declare-fun res!2167485 () Bool)

(declare-fun e!3176322 () Bool)

(assert (=> start!536816 (=> (not res!2167485) (not e!3176322))))

(declare-datatypes ((LexerInterface!8076 0))(
  ( (LexerInterfaceExt!8073 (__x!34886 Int)) (Lexer!8074) )
))
(declare-fun thiss!14775 () LexerInterface!8076)

(get-info :version)

(assert (=> start!536816 (= res!2167485 ((_ is Lexer!8074) thiss!14775))))

(assert (=> start!536816 e!3176322))

(assert (=> start!536816 true))

(declare-fun e!3176325 () Bool)

(assert (=> start!536816 e!3176325))

(assert (=> start!536816 e!3176324))

(declare-fun b!5093269 () Bool)

(declare-fun res!2167486 () Bool)

(assert (=> b!5093269 (=> (not res!2167486) (not e!3176322))))

(declare-fun rulesValidInductive!3309 (LexerInterface!8076 List!58673) Bool)

(assert (=> b!5093269 (= res!2167486 (rulesValidInductive!3309 thiss!14775 rulesArg!145))))

(declare-fun b!5093270 () Bool)

(declare-fun res!2167484 () Bool)

(assert (=> b!5093270 (=> (not res!2167484) (not e!3176322))))

(declare-fun isEmpty!31694 (List!58673) Bool)

(assert (=> b!5093270 (= res!2167484 (not (isEmpty!31694 rulesArg!145)))))

(declare-fun b!5093271 () Bool)

(assert (=> b!5093271 (= e!3176322 (not true))))

(declare-fun input!1210 () List!58672)

(declare-fun isPrefix!5380 (List!58672 List!58672) Bool)

(assert (=> b!5093271 (isPrefix!5380 input!1210 input!1210)))

(declare-datatypes ((Unit!149589 0))(
  ( (Unit!149590) )
))
(declare-fun lt!2092716 () Unit!149589)

(declare-fun lemmaIsPrefixRefl!3639 (List!58672 List!58672) Unit!149589)

(assert (=> b!5093271 (= lt!2092716 (lemmaIsPrefixRefl!3639 input!1210 input!1210))))

(declare-fun b!5093272 () Bool)

(declare-fun tp!1419811 () Bool)

(assert (=> b!5093272 (= e!3176325 (and e!3176320 tp!1419811))))

(assert (= (and start!536816 res!2167485) b!5093269))

(assert (= (and b!5093269 res!2167486) b!5093270))

(assert (= (and b!5093270 res!2167484) b!5093271))

(assert (= b!5093266 b!5093268))

(assert (= b!5093272 b!5093266))

(assert (= (and start!536816 ((_ is Cons!58549) rulesArg!145)) b!5093272))

(assert (= (and start!536816 ((_ is Cons!58548) input!1210)) b!5093267))

(declare-fun m!6151506 () Bool)

(assert (=> b!5093266 m!6151506))

(declare-fun m!6151508 () Bool)

(assert (=> b!5093266 m!6151508))

(declare-fun m!6151510 () Bool)

(assert (=> b!5093269 m!6151510))

(declare-fun m!6151512 () Bool)

(assert (=> b!5093270 m!6151512))

(declare-fun m!6151514 () Bool)

(assert (=> b!5093271 m!6151514))

(declare-fun m!6151516 () Bool)

(assert (=> b!5093271 m!6151516))

(check-sat tp_is_empty!37183 b_and!350137 (not b!5093270) b_and!350135 (not b!5093272) (not b!5093267) (not b!5093266) (not b!5093271) (not b!5093269) (not b_next!134043) (not b_next!134041))
(check-sat b_and!350137 b_and!350135 (not b_next!134041) (not b_next!134043))
