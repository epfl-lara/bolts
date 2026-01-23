; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511512 () Bool)

(assert start!511512)

(declare-fun b!4887007 () Bool)

(declare-fun b_free!131299 () Bool)

(declare-fun b_next!132089 () Bool)

(assert (=> b!4887007 (= b_free!131299 (not b_next!132089))))

(declare-fun tp!1375321 () Bool)

(declare-fun b_and!344131 () Bool)

(assert (=> b!4887007 (= tp!1375321 b_and!344131)))

(declare-fun b_free!131301 () Bool)

(declare-fun b_next!132091 () Bool)

(assert (=> b!4887007 (= b_free!131301 (not b_next!132091))))

(declare-fun tp!1375322 () Bool)

(declare-fun b_and!344133 () Bool)

(assert (=> b!4887007 (= tp!1375322 b_and!344133)))

(declare-fun b!4887006 () Bool)

(declare-fun res!2086915 () Bool)

(declare-fun e!3054909 () Bool)

(assert (=> b!4887006 (=> (not res!2086915) (not e!3054909))))

(declare-datatypes ((C!26628 0))(
  ( (C!26629 (val!22648 Int)) )
))
(declare-datatypes ((List!56425 0))(
  ( (Nil!56301) (Cons!56301 (h!62749 C!26628) (t!365071 List!56425)) )
))
(declare-datatypes ((IArray!29477 0))(
  ( (IArray!29478 (innerList!14796 List!56425)) )
))
(declare-datatypes ((Conc!14708 0))(
  ( (Node!14708 (left!40896 Conc!14708) (right!41226 Conc!14708) (csize!29646 Int) (cheight!14919 Int)) (Leaf!24495 (xs!18024 IArray!29477) (csize!29647 Int)) (Empty!14708) )
))
(declare-datatypes ((BalanceConc!28846 0))(
  ( (BalanceConc!28847 (c!830781 Conc!14708)) )
))
(declare-datatypes ((List!56426 0))(
  ( (Nil!56302) (Cons!56302 (h!62750 (_ BitVec 16)) (t!365072 List!56426)) )
))
(declare-datatypes ((TokenValue!8450 0))(
  ( (FloatLiteralValue!16900 (text!59595 List!56426)) (TokenValueExt!8449 (__x!34193 Int)) (Broken!42250 (value!261116 List!56426)) (Object!8573) (End!8450) (Def!8450) (Underscore!8450) (Match!8450) (Else!8450) (Error!8450) (Case!8450) (If!8450) (Extends!8450) (Abstract!8450) (Class!8450) (Val!8450) (DelimiterValue!16900 (del!8510 List!56426)) (KeywordValue!8456 (value!261117 List!56426)) (CommentValue!16900 (value!261118 List!56426)) (WhitespaceValue!16900 (value!261119 List!56426)) (IndentationValue!8450 (value!261120 List!56426)) (String!63691) (Int32!8450) (Broken!42251 (value!261121 List!56426)) (Boolean!8451) (Unit!146291) (OperatorValue!8453 (op!8510 List!56426)) (IdentifierValue!16900 (value!261122 List!56426)) (IdentifierValue!16901 (value!261123 List!56426)) (WhitespaceValue!16901 (value!261124 List!56426)) (True!16900) (False!16900) (Broken!42252 (value!261125 List!56426)) (Broken!42253 (value!261126 List!56426)) (True!16901) (RightBrace!8450) (RightBracket!8450) (Colon!8450) (Null!8450) (Comma!8450) (LeftBracket!8450) (False!16901) (LeftBrace!8450) (ImaginaryLiteralValue!8450 (text!59596 List!56426)) (StringLiteralValue!25350 (value!261127 List!56426)) (EOFValue!8450 (value!261128 List!56426)) (IdentValue!8450 (value!261129 List!56426)) (DelimiterValue!16901 (value!261130 List!56426)) (DedentValue!8450 (value!261131 List!56426)) (NewLineValue!8450 (value!261132 List!56426)) (IntegerValue!25350 (value!261133 (_ BitVec 32)) (text!59597 List!56426)) (IntegerValue!25351 (value!261134 Int) (text!59598 List!56426)) (Times!8450) (Or!8450) (Equal!8450) (Minus!8450) (Broken!42254 (value!261135 List!56426)) (And!8450) (Div!8450) (LessEqual!8450) (Mod!8450) (Concat!21665) (Not!8450) (Plus!8450) (SpaceValue!8450 (value!261136 List!56426)) (IntegerValue!25352 (value!261137 Int) (text!59599 List!56426)) (StringLiteralValue!25351 (text!59600 List!56426)) (FloatLiteralValue!16901 (text!59601 List!56426)) (BytesLiteralValue!8450 (value!261138 List!56426)) (CommentValue!16901 (value!261139 List!56426)) (StringLiteralValue!25352 (value!261140 List!56426)) (ErrorTokenValue!8450 (msg!8511 List!56426)) )
))
(declare-datatypes ((Regex!13215 0))(
  ( (ElementMatch!13215 (c!830782 C!26628)) (Concat!21666 (regOne!26942 Regex!13215) (regTwo!26942 Regex!13215)) (EmptyExpr!13215) (Star!13215 (reg!13544 Regex!13215)) (EmptyLang!13215) (Union!13215 (regOne!26943 Regex!13215) (regTwo!26943 Regex!13215)) )
))
(declare-datatypes ((String!63692 0))(
  ( (String!63693 (value!261141 String)) )
))
(declare-datatypes ((TokenValueInjection!16208 0))(
  ( (TokenValueInjection!16209 (toValue!11027 Int) (toChars!10886 Int)) )
))
(declare-datatypes ((Rule!16080 0))(
  ( (Rule!16081 (regex!8140 Regex!13215) (tag!9004 String!63692) (isSeparator!8140 Bool) (transformation!8140 TokenValueInjection!16208)) )
))
(declare-datatypes ((List!56427 0))(
  ( (Nil!56303) (Cons!56303 (h!62751 Rule!16080) (t!365073 List!56427)) )
))
(declare-fun rulesArg!165 () List!56427)

(declare-fun isEmpty!30182 (List!56427) Bool)

(assert (=> b!4887006 (= res!2086915 (not (isEmpty!30182 rulesArg!165)))))

(declare-fun e!3054911 () Bool)

(assert (=> b!4887007 (= e!3054911 (and tp!1375321 tp!1375322))))

(declare-fun b!4887008 () Bool)

(declare-fun res!2086916 () Bool)

(assert (=> b!4887008 (=> (not res!2086916) (not e!3054909))))

(declare-datatypes ((LexerInterface!7732 0))(
  ( (LexerInterfaceExt!7729 (__x!34194 Int)) (Lexer!7730) )
))
(declare-fun thiss!14805 () LexerInterface!7732)

(declare-fun rulesValidInductive!3119 (LexerInterface!7732 List!56427) Bool)

(assert (=> b!4887008 (= res!2086916 (rulesValidInductive!3119 thiss!14805 rulesArg!165))))

(declare-fun res!2086917 () Bool)

(assert (=> start!511512 (=> (not res!2086917) (not e!3054909))))

(get-info :version)

(assert (=> start!511512 (= res!2086917 ((_ is Lexer!7730) thiss!14805))))

(assert (=> start!511512 e!3054909))

(assert (=> start!511512 true))

(declare-fun e!3054916 () Bool)

(assert (=> start!511512 e!3054916))

(declare-fun input!1236 () BalanceConc!28846)

(declare-fun e!3054915 () Bool)

(declare-fun inv!72484 (BalanceConc!28846) Bool)

(assert (=> start!511512 (and (inv!72484 input!1236) e!3054915)))

(declare-fun b!4887009 () Bool)

(declare-fun e!3054912 () Bool)

(assert (=> b!4887009 (= e!3054912 true)))

(declare-datatypes ((Token!14848 0))(
  ( (Token!14849 (value!261142 TokenValue!8450) (rule!11314 Rule!16080) (size!37080 Int) (originalCharacters!8455 List!56425)) )
))
(declare-datatypes ((tuple2!60292 0))(
  ( (tuple2!60293 (_1!33449 Token!14848) (_2!33449 List!56425)) )
))
(declare-datatypes ((Option!13963 0))(
  ( (None!13962) (Some!13962 (v!49912 tuple2!60292)) )
))
(declare-fun lt!2002720 () Option!13963)

(declare-fun lt!2002717 () List!56425)

(declare-fun maxPrefixZipper!643 (LexerInterface!7732 List!56427 List!56425) Option!13963)

(assert (=> b!4887009 (= lt!2002720 (maxPrefixZipper!643 thiss!14805 rulesArg!165 lt!2002717))))

(declare-fun e!3054910 () Bool)

(declare-fun tp!1375320 () Bool)

(declare-fun b!4887010 () Bool)

(declare-fun inv!72480 (String!63692) Bool)

(declare-fun inv!72485 (TokenValueInjection!16208) Bool)

(assert (=> b!4887010 (= e!3054910 (and tp!1375320 (inv!72480 (tag!9004 (h!62751 rulesArg!165))) (inv!72485 (transformation!8140 (h!62751 rulesArg!165))) e!3054911))))

(declare-fun b!4887011 () Bool)

(declare-fun e!3054913 () Bool)

(assert (=> b!4887011 (= e!3054913 e!3054912)))

(declare-fun res!2086918 () Bool)

(assert (=> b!4887011 (=> res!2086918 e!3054912)))

(declare-datatypes ((tuple2!60294 0))(
  ( (tuple2!60295 (_1!33450 Token!14848) (_2!33450 BalanceConc!28846)) )
))
(declare-datatypes ((Option!13964 0))(
  ( (None!13963) (Some!13963 (v!49913 tuple2!60294)) )
))
(declare-fun lt!2002718 () Option!13964)

(declare-fun lt!2002716 () Option!13964)

(assert (=> b!4887011 (= res!2086918 (or (and ((_ is None!13963) lt!2002718) ((_ is None!13963) lt!2002716)) ((_ is None!13963) lt!2002716) ((_ is None!13963) lt!2002718) (>= (size!37080 (_1!33450 (v!49913 lt!2002718))) (size!37080 (_1!33450 (v!49913 lt!2002716))))))))

(declare-fun maxPrefixZipperSequence!1301 (LexerInterface!7732 List!56427 BalanceConc!28846) Option!13964)

(assert (=> b!4887011 (= lt!2002716 (maxPrefixZipperSequence!1301 thiss!14805 (t!365073 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!666 (LexerInterface!7732 Rule!16080 BalanceConc!28846) Option!13964)

(assert (=> b!4887011 (= lt!2002718 (maxPrefixOneRuleZipperSequence!666 thiss!14805 (h!62751 rulesArg!165) input!1236))))

(declare-fun b!4887012 () Bool)

(declare-fun tp!1375323 () Bool)

(assert (=> b!4887012 (= e!3054916 (and e!3054910 tp!1375323))))

(declare-fun b!4887013 () Bool)

(assert (=> b!4887013 (= e!3054909 (not e!3054913))))

(declare-fun res!2086919 () Bool)

(assert (=> b!4887013 (=> res!2086919 e!3054913)))

(assert (=> b!4887013 (= res!2086919 (or (and ((_ is Cons!56303) rulesArg!165) ((_ is Nil!56303) (t!365073 rulesArg!165))) (not ((_ is Cons!56303) rulesArg!165))))))

(declare-fun isPrefix!4862 (List!56425 List!56425) Bool)

(assert (=> b!4887013 (isPrefix!4862 lt!2002717 lt!2002717)))

(declare-datatypes ((Unit!146292 0))(
  ( (Unit!146293) )
))
(declare-fun lt!2002719 () Unit!146292)

(declare-fun lemmaIsPrefixRefl!3259 (List!56425 List!56425) Unit!146292)

(assert (=> b!4887013 (= lt!2002719 (lemmaIsPrefixRefl!3259 lt!2002717 lt!2002717))))

(declare-fun list!17677 (BalanceConc!28846) List!56425)

(assert (=> b!4887013 (= lt!2002717 (list!17677 input!1236))))

(declare-fun b!4887014 () Bool)

(declare-fun tp!1375319 () Bool)

(declare-fun inv!72486 (Conc!14708) Bool)

(assert (=> b!4887014 (= e!3054915 (and (inv!72486 (c!830781 input!1236)) tp!1375319))))

(assert (= (and start!511512 res!2086917) b!4887008))

(assert (= (and b!4887008 res!2086916) b!4887006))

(assert (= (and b!4887006 res!2086915) b!4887013))

(assert (= (and b!4887013 (not res!2086919)) b!4887011))

(assert (= (and b!4887011 (not res!2086918)) b!4887009))

(assert (= b!4887010 b!4887007))

(assert (= b!4887012 b!4887010))

(assert (= (and start!511512 ((_ is Cons!56303) rulesArg!165)) b!4887012))

(assert (= start!511512 b!4887014))

(declare-fun m!5890764 () Bool)

(assert (=> b!4887013 m!5890764))

(declare-fun m!5890766 () Bool)

(assert (=> b!4887013 m!5890766))

(declare-fun m!5890768 () Bool)

(assert (=> b!4887013 m!5890768))

(declare-fun m!5890770 () Bool)

(assert (=> b!4887010 m!5890770))

(declare-fun m!5890772 () Bool)

(assert (=> b!4887010 m!5890772))

(declare-fun m!5890774 () Bool)

(assert (=> b!4887009 m!5890774))

(declare-fun m!5890776 () Bool)

(assert (=> b!4887006 m!5890776))

(declare-fun m!5890778 () Bool)

(assert (=> b!4887011 m!5890778))

(declare-fun m!5890780 () Bool)

(assert (=> b!4887011 m!5890780))

(declare-fun m!5890782 () Bool)

(assert (=> start!511512 m!5890782))

(declare-fun m!5890784 () Bool)

(assert (=> b!4887008 m!5890784))

(declare-fun m!5890786 () Bool)

(assert (=> b!4887014 m!5890786))

(check-sat (not b_next!132091) (not start!511512) (not b!4887006) (not b_next!132089) (not b!4887014) b_and!344133 (not b!4887011) (not b!4887010) (not b!4887013) b_and!344131 (not b!4887009) (not b!4887008) (not b!4887012))
(check-sat b_and!344133 b_and!344131 (not b_next!132089) (not b_next!132091))
