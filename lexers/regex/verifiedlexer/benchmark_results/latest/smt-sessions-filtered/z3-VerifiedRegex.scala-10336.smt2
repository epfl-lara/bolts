; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536884 () Bool)

(assert start!536884)

(declare-fun b!5093691 () Bool)

(declare-fun b_free!133295 () Bool)

(declare-fun b_next!134085 () Bool)

(assert (=> b!5093691 (= b_free!133295 (not b_next!134085))))

(declare-fun tp!1420050 () Bool)

(declare-fun b_and!350179 () Bool)

(assert (=> b!5093691 (= tp!1420050 b_and!350179)))

(declare-fun b_free!133297 () Bool)

(declare-fun b_next!134087 () Bool)

(assert (=> b!5093691 (= b_free!133297 (not b_next!134087))))

(declare-fun tp!1420052 () Bool)

(declare-fun b_and!350181 () Bool)

(assert (=> b!5093691 (= tp!1420052 b_and!350181)))

(declare-fun tp!1420051 () Bool)

(declare-fun b!5093690 () Bool)

(declare-fun e!3176640 () Bool)

(declare-fun e!3176641 () Bool)

(declare-datatypes ((List!58695 0))(
  ( (Nil!58571) (Cons!58571 (h!65019 (_ BitVec 16)) (t!371650 List!58695)) )
))
(declare-datatypes ((TokenValue!8806 0))(
  ( (FloatLiteralValue!17612 (text!62087 List!58695)) (TokenValueExt!8805 (__x!34901 Int)) (Broken!44030 (value!272306 List!58695)) (Object!8929) (End!8806) (Def!8806) (Underscore!8806) (Match!8806) (Else!8806) (Error!8806) (Case!8806) (If!8806) (Extends!8806) (Abstract!8806) (Class!8806) (Val!8806) (DelimiterValue!17612 (del!8866 List!58695)) (KeywordValue!8812 (value!272307 List!58695)) (CommentValue!17612 (value!272308 List!58695)) (WhitespaceValue!17612 (value!272309 List!58695)) (IndentationValue!8806 (value!272310 List!58695)) (String!66951) (Int32!8806) (Broken!44031 (value!272311 List!58695)) (Boolean!8807) (Unit!149612) (OperatorValue!8809 (op!8866 List!58695)) (IdentifierValue!17612 (value!272312 List!58695)) (IdentifierValue!17613 (value!272313 List!58695)) (WhitespaceValue!17613 (value!272314 List!58695)) (True!17612) (False!17612) (Broken!44032 (value!272315 List!58695)) (Broken!44033 (value!272316 List!58695)) (True!17613) (RightBrace!8806) (RightBracket!8806) (Colon!8806) (Null!8806) (Comma!8806) (LeftBracket!8806) (False!17613) (LeftBrace!8806) (ImaginaryLiteralValue!8806 (text!62088 List!58695)) (StringLiteralValue!26418 (value!272317 List!58695)) (EOFValue!8806 (value!272318 List!58695)) (IdentValue!8806 (value!272319 List!58695)) (DelimiterValue!17613 (value!272320 List!58695)) (DedentValue!8806 (value!272321 List!58695)) (NewLineValue!8806 (value!272322 List!58695)) (IntegerValue!26418 (value!272323 (_ BitVec 32)) (text!62089 List!58695)) (IntegerValue!26419 (value!272324 Int) (text!62090 List!58695)) (Times!8806) (Or!8806) (Equal!8806) (Minus!8806) (Broken!44034 (value!272325 List!58695)) (And!8806) (Div!8806) (LessEqual!8806) (Mod!8806) (Concat!22773) (Not!8806) (Plus!8806) (SpaceValue!8806 (value!272326 List!58695)) (IntegerValue!26420 (value!272327 Int) (text!62091 List!58695)) (StringLiteralValue!26419 (text!62092 List!58695)) (FloatLiteralValue!17613 (text!62093 List!58695)) (BytesLiteralValue!8806 (value!272328 List!58695)) (CommentValue!17613 (value!272329 List!58695)) (StringLiteralValue!26420 (value!272330 List!58695)) (ErrorTokenValue!8806 (msg!8867 List!58695)) )
))
(declare-datatypes ((C!28192 0))(
  ( (C!28193 (val!23748 Int)) )
))
(declare-datatypes ((List!58696 0))(
  ( (Nil!58572) (Cons!58572 (h!65020 C!28192) (t!371651 List!58696)) )
))
(declare-datatypes ((IArray!31389 0))(
  ( (IArray!31390 (innerList!15752 List!58696)) )
))
(declare-datatypes ((Conc!15664 0))(
  ( (Node!15664 (left!42984 Conc!15664) (right!43314 Conc!15664) (csize!31558 Int) (cheight!15875 Int)) (Leaf!26001 (xs!19046 IArray!31389) (csize!31559 Int)) (Empty!15664) )
))
(declare-datatypes ((BalanceConc!30446 0))(
  ( (BalanceConc!30447 (c!875414 Conc!15664)) )
))
(declare-datatypes ((TokenValueInjection!16920 0))(
  ( (TokenValueInjection!16921 (toValue!11515 Int) (toChars!11374 Int)) )
))
(declare-datatypes ((Regex!13967 0))(
  ( (ElementMatch!13967 (c!875415 C!28192)) (Concat!22774 (regOne!28446 Regex!13967) (regTwo!28446 Regex!13967)) (EmptyExpr!13967) (Star!13967 (reg!14296 Regex!13967)) (EmptyLang!13967) (Union!13967 (regOne!28447 Regex!13967) (regTwo!28447 Regex!13967)) )
))
(declare-datatypes ((String!66952 0))(
  ( (String!66953 (value!272331 String)) )
))
(declare-datatypes ((Rule!16784 0))(
  ( (Rule!16785 (regex!8492 Regex!13967) (tag!9356 String!66952) (isSeparator!8492 Bool) (transformation!8492 TokenValueInjection!16920)) )
))
(declare-datatypes ((List!58697 0))(
  ( (Nil!58573) (Cons!58573 (h!65021 Rule!16784) (t!371652 List!58697)) )
))
(declare-fun rulesArg!145 () List!58697)

(declare-fun inv!78072 (String!66952) Bool)

(declare-fun inv!78074 (TokenValueInjection!16920) Bool)

(assert (=> b!5093690 (= e!3176641 (and tp!1420051 (inv!78072 (tag!9356 (h!65021 rulesArg!145))) (inv!78074 (transformation!8492 (h!65021 rulesArg!145))) e!3176640))))

(assert (=> b!5093691 (= e!3176640 (and tp!1420050 tp!1420052))))

(declare-fun b!5093692 () Bool)

(declare-fun e!3176644 () Bool)

(declare-fun e!3176645 () Bool)

(assert (=> b!5093692 (= e!3176644 (not e!3176645))))

(declare-fun res!2167697 () Bool)

(assert (=> b!5093692 (=> res!2167697 e!3176645)))

(get-info :version)

(assert (=> b!5093692 (= res!2167697 (or (and ((_ is Cons!58573) rulesArg!145) ((_ is Nil!58573) (t!371652 rulesArg!145))) (not ((_ is Cons!58573) rulesArg!145))))))

(declare-fun input!1210 () List!58696)

(declare-fun isPrefix!5388 (List!58696 List!58696) Bool)

(assert (=> b!5093692 (isPrefix!5388 input!1210 input!1210)))

(declare-datatypes ((Unit!149613 0))(
  ( (Unit!149614) )
))
(declare-fun lt!2092788 () Unit!149613)

(declare-fun lemmaIsPrefixRefl!3647 (List!58696 List!58696) Unit!149613)

(assert (=> b!5093692 (= lt!2092788 (lemmaIsPrefixRefl!3647 input!1210 input!1210))))

(declare-fun b!5093693 () Bool)

(declare-fun res!2167696 () Bool)

(assert (=> b!5093693 (=> (not res!2167696) (not e!3176644))))

(declare-datatypes ((LexerInterface!8084 0))(
  ( (LexerInterfaceExt!8081 (__x!34902 Int)) (Lexer!8082) )
))
(declare-fun thiss!14775 () LexerInterface!8084)

(declare-fun rulesValidInductive!3317 (LexerInterface!8084 List!58697) Bool)

(assert (=> b!5093693 (= res!2167696 (rulesValidInductive!3317 thiss!14775 rulesArg!145))))

(declare-fun b!5093695 () Bool)

(declare-fun e!3176643 () Bool)

(declare-fun tp_is_empty!37199 () Bool)

(declare-fun tp!1420053 () Bool)

(assert (=> b!5093695 (= e!3176643 (and tp_is_empty!37199 tp!1420053))))

(declare-fun b!5093696 () Bool)

(declare-fun res!2167694 () Bool)

(assert (=> b!5093696 (=> (not res!2167694) (not e!3176644))))

(declare-fun isEmpty!31702 (List!58697) Bool)

(assert (=> b!5093696 (= res!2167694 (not (isEmpty!31702 rulesArg!145)))))

(declare-fun b!5093697 () Bool)

(assert (=> b!5093697 (= e!3176645 true)))

(declare-datatypes ((Token!15424 0))(
  ( (Token!15425 (value!272332 TokenValue!8806) (rule!11758 Rule!16784) (size!39253 Int) (originalCharacters!8743 List!58696)) )
))
(declare-datatypes ((tuple2!63298 0))(
  ( (tuple2!63299 (_1!34952 Token!15424) (_2!34952 List!58696)) )
))
(declare-datatypes ((Option!14621 0))(
  ( (None!14620) (Some!14620 (v!50633 tuple2!63298)) )
))
(declare-fun lt!2092787 () Option!14621)

(declare-fun maxPrefixOneRuleZipper!308 (LexerInterface!8084 Rule!16784 List!58696) Option!14621)

(assert (=> b!5093697 (= lt!2092787 (maxPrefixOneRuleZipper!308 thiss!14775 (h!65021 rulesArg!145) input!1210))))

(declare-fun b!5093694 () Bool)

(declare-fun e!3176642 () Bool)

(declare-fun tp!1420049 () Bool)

(assert (=> b!5093694 (= e!3176642 (and e!3176641 tp!1420049))))

(declare-fun res!2167695 () Bool)

(assert (=> start!536884 (=> (not res!2167695) (not e!3176644))))

(assert (=> start!536884 (= res!2167695 ((_ is Lexer!8082) thiss!14775))))

(assert (=> start!536884 e!3176644))

(assert (=> start!536884 true))

(assert (=> start!536884 e!3176642))

(assert (=> start!536884 e!3176643))

(assert (= (and start!536884 res!2167695) b!5093693))

(assert (= (and b!5093693 res!2167696) b!5093696))

(assert (= (and b!5093696 res!2167694) b!5093692))

(assert (= (and b!5093692 (not res!2167697)) b!5093697))

(assert (= b!5093690 b!5093691))

(assert (= b!5093694 b!5093690))

(assert (= (and start!536884 ((_ is Cons!58573) rulesArg!145)) b!5093694))

(assert (= (and start!536884 ((_ is Cons!58572) input!1210)) b!5093695))

(declare-fun m!6151708 () Bool)

(assert (=> b!5093696 m!6151708))

(declare-fun m!6151710 () Bool)

(assert (=> b!5093690 m!6151710))

(declare-fun m!6151712 () Bool)

(assert (=> b!5093690 m!6151712))

(declare-fun m!6151714 () Bool)

(assert (=> b!5093697 m!6151714))

(declare-fun m!6151716 () Bool)

(assert (=> b!5093693 m!6151716))

(declare-fun m!6151718 () Bool)

(assert (=> b!5093692 m!6151718))

(declare-fun m!6151720 () Bool)

(assert (=> b!5093692 m!6151720))

(check-sat (not b_next!134085) (not b!5093693) b_and!350181 tp_is_empty!37199 (not b!5093690) (not b!5093695) b_and!350179 (not b!5093692) (not b!5093697) (not b!5093696) (not b_next!134087) (not b!5093694))
(check-sat b_and!350181 b_and!350179 (not b_next!134085) (not b_next!134087))
