; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510720 () Bool)

(assert start!510720)

(declare-fun b!4881558 () Bool)

(declare-fun b_free!130915 () Bool)

(declare-fun b_next!131705 () Bool)

(assert (=> b!4881558 (= b_free!130915 (not b_next!131705))))

(declare-fun tp!1373391 () Bool)

(declare-fun b_and!343747 () Bool)

(assert (=> b!4881558 (= tp!1373391 b_and!343747)))

(declare-fun b_free!130917 () Bool)

(declare-fun b_next!131707 () Bool)

(assert (=> b!4881558 (= b_free!130917 (not b_next!131707))))

(declare-fun tp!1373390 () Bool)

(declare-fun b_and!343749 () Bool)

(assert (=> b!4881558 (= tp!1373390 b_and!343749)))

(declare-fun b!4881552 () Bool)

(declare-fun e!3050812 () Bool)

(declare-fun e!3050818 () Bool)

(assert (=> b!4881552 (= e!3050812 e!3050818)))

(declare-fun res!2083782 () Bool)

(assert (=> b!4881552 (=> res!2083782 e!3050818)))

(declare-fun lt!1999523 () Bool)

(declare-fun lt!1999524 () Bool)

(assert (=> b!4881552 (= res!2083782 (or (not (= lt!1999523 lt!1999524)) (not lt!1999523)))))

(declare-datatypes ((C!26476 0))(
  ( (C!26477 (val!22572 Int)) )
))
(declare-datatypes ((List!56197 0))(
  ( (Nil!56073) (Cons!56073 (h!62521 C!26476) (t!364843 List!56197)) )
))
(declare-datatypes ((List!56198 0))(
  ( (Nil!56074) (Cons!56074 (h!62522 (_ BitVec 16)) (t!364844 List!56198)) )
))
(declare-datatypes ((TokenValue!8374 0))(
  ( (FloatLiteralValue!16748 (text!59063 List!56198)) (TokenValueExt!8373 (__x!34041 Int)) (Broken!41870 (value!258952 List!56198)) (Object!8497) (End!8374) (Def!8374) (Underscore!8374) (Match!8374) (Else!8374) (Error!8374) (Case!8374) (If!8374) (Extends!8374) (Abstract!8374) (Class!8374) (Val!8374) (DelimiterValue!16748 (del!8434 List!56198)) (KeywordValue!8380 (value!258953 List!56198)) (CommentValue!16748 (value!258954 List!56198)) (WhitespaceValue!16748 (value!258955 List!56198)) (IndentationValue!8374 (value!258956 List!56198)) (String!63311) (Int32!8374) (Broken!41871 (value!258957 List!56198)) (Boolean!8375) (Unit!146063) (OperatorValue!8377 (op!8434 List!56198)) (IdentifierValue!16748 (value!258958 List!56198)) (IdentifierValue!16749 (value!258959 List!56198)) (WhitespaceValue!16749 (value!258960 List!56198)) (True!16748) (False!16748) (Broken!41872 (value!258961 List!56198)) (Broken!41873 (value!258962 List!56198)) (True!16749) (RightBrace!8374) (RightBracket!8374) (Colon!8374) (Null!8374) (Comma!8374) (LeftBracket!8374) (False!16749) (LeftBrace!8374) (ImaginaryLiteralValue!8374 (text!59064 List!56198)) (StringLiteralValue!25122 (value!258963 List!56198)) (EOFValue!8374 (value!258964 List!56198)) (IdentValue!8374 (value!258965 List!56198)) (DelimiterValue!16749 (value!258966 List!56198)) (DedentValue!8374 (value!258967 List!56198)) (NewLineValue!8374 (value!258968 List!56198)) (IntegerValue!25122 (value!258969 (_ BitVec 32)) (text!59065 List!56198)) (IntegerValue!25123 (value!258970 Int) (text!59066 List!56198)) (Times!8374) (Or!8374) (Equal!8374) (Minus!8374) (Broken!41874 (value!258971 List!56198)) (And!8374) (Div!8374) (LessEqual!8374) (Mod!8374) (Concat!21513) (Not!8374) (Plus!8374) (SpaceValue!8374 (value!258972 List!56198)) (IntegerValue!25124 (value!258973 Int) (text!59067 List!56198)) (StringLiteralValue!25123 (text!59068 List!56198)) (FloatLiteralValue!16749 (text!59069 List!56198)) (BytesLiteralValue!8374 (value!258974 List!56198)) (CommentValue!16749 (value!258975 List!56198)) (StringLiteralValue!25124 (value!258976 List!56198)) (ErrorTokenValue!8374 (msg!8435 List!56198)) )
))
(declare-datatypes ((Regex!13139 0))(
  ( (ElementMatch!13139 (c!830301 C!26476)) (Concat!21514 (regOne!26790 Regex!13139) (regTwo!26790 Regex!13139)) (EmptyExpr!13139) (Star!13139 (reg!13468 Regex!13139)) (EmptyLang!13139) (Union!13139 (regOne!26791 Regex!13139) (regTwo!26791 Regex!13139)) )
))
(declare-datatypes ((String!63312 0))(
  ( (String!63313 (value!258977 String)) )
))
(declare-datatypes ((IArray!29325 0))(
  ( (IArray!29326 (innerList!14720 List!56197)) )
))
(declare-datatypes ((Conc!14632 0))(
  ( (Node!14632 (left!40738 Conc!14632) (right!41068 Conc!14632) (csize!29494 Int) (cheight!14843 Int)) (Leaf!24381 (xs!17948 IArray!29325) (csize!29495 Int)) (Empty!14632) )
))
(declare-datatypes ((BalanceConc!28694 0))(
  ( (BalanceConc!28695 (c!830302 Conc!14632)) )
))
(declare-datatypes ((TokenValueInjection!16056 0))(
  ( (TokenValueInjection!16057 (toValue!10951 Int) (toChars!10810 Int)) )
))
(declare-datatypes ((Rule!15928 0))(
  ( (Rule!15929 (regex!8064 Regex!13139) (tag!8928 String!63312) (isSeparator!8064 Bool) (transformation!8064 TokenValueInjection!16056)) )
))
(declare-datatypes ((Token!14700 0))(
  ( (Token!14701 (value!258978 TokenValue!8374) (rule!11220 Rule!15928) (size!36972 Int) (originalCharacters!8381 List!56197)) )
))
(declare-datatypes ((tuple2!59946 0))(
  ( (tuple2!59947 (_1!33276 Token!14700) (_2!33276 List!56197)) )
))
(declare-datatypes ((Option!13820 0))(
  ( (None!13819) (Some!13819 (v!49769 tuple2!59946)) )
))
(declare-fun lt!1999521 () Option!13820)

(declare-fun isDefined!10872 (Option!13820) Bool)

(assert (=> b!4881552 (= lt!1999524 (isDefined!10872 lt!1999521))))

(declare-datatypes ((tuple2!59948 0))(
  ( (tuple2!59949 (_1!33277 Token!14700) (_2!33277 BalanceConc!28694)) )
))
(declare-datatypes ((Option!13821 0))(
  ( (None!13820) (Some!13820 (v!49770 tuple2!59948)) )
))
(declare-fun lt!1999519 () Option!13821)

(declare-fun isDefined!10873 (Option!13821) Bool)

(assert (=> b!4881552 (= lt!1999523 (isDefined!10873 lt!1999519))))

(declare-datatypes ((LexerInterface!7656 0))(
  ( (LexerInterfaceExt!7653 (__x!34042 Int)) (Lexer!7654) )
))
(declare-fun thiss!14805 () LexerInterface!7656)

(declare-fun lt!1999520 () List!56197)

(declare-datatypes ((List!56199 0))(
  ( (Nil!56075) (Cons!56075 (h!62523 Rule!15928) (t!364845 List!56199)) )
))
(declare-fun rulesArg!165 () List!56199)

(declare-fun maxPrefixZipper!577 (LexerInterface!7656 List!56199 List!56197) Option!13820)

(assert (=> b!4881552 (= lt!1999521 (maxPrefixZipper!577 thiss!14805 rulesArg!165 lt!1999520))))

(declare-fun input!1236 () BalanceConc!28694)

(declare-fun maxPrefixOneRuleZipperSequence!592 (LexerInterface!7656 Rule!15928 BalanceConc!28694) Option!13821)

(assert (=> b!4881552 (= lt!1999519 (maxPrefixOneRuleZipperSequence!592 thiss!14805 (h!62523 rulesArg!165) input!1236))))

(declare-fun b!4881553 () Bool)

(declare-fun e!3050813 () Bool)

(assert (=> b!4881553 (= e!3050813 (not e!3050812))))

(declare-fun res!2083778 () Bool)

(assert (=> b!4881553 (=> res!2083778 e!3050812)))

(get-info :version)

(assert (=> b!4881553 (= res!2083778 (or (not ((_ is Cons!56075) rulesArg!165)) (not ((_ is Nil!56075) (t!364845 rulesArg!165)))))))

(declare-fun isPrefix!4786 (List!56197 List!56197) Bool)

(assert (=> b!4881553 (isPrefix!4786 lt!1999520 lt!1999520)))

(declare-datatypes ((Unit!146064 0))(
  ( (Unit!146065) )
))
(declare-fun lt!1999522 () Unit!146064)

(declare-fun lemmaIsPrefixRefl!3183 (List!56197 List!56197) Unit!146064)

(assert (=> b!4881553 (= lt!1999522 (lemmaIsPrefixRefl!3183 lt!1999520 lt!1999520))))

(declare-fun list!17582 (BalanceConc!28694) List!56197)

(assert (=> b!4881553 (= lt!1999520 (list!17582 input!1236))))

(declare-fun b!4881554 () Bool)

(declare-fun res!2083779 () Bool)

(assert (=> b!4881554 (=> res!2083779 e!3050818)))

(declare-fun get!19269 (Option!13821) tuple2!59948)

(declare-fun get!19270 (Option!13820) tuple2!59946)

(assert (=> b!4881554 (= res!2083779 (not (= (_1!33277 (get!19269 lt!1999519)) (_1!33276 (get!19270 lt!1999521)))))))

(declare-fun b!4881555 () Bool)

(declare-fun e!3050814 () Bool)

(declare-fun e!3050817 () Bool)

(declare-fun tp!1373387 () Bool)

(declare-fun inv!72088 (String!63312) Bool)

(declare-fun inv!72092 (TokenValueInjection!16056) Bool)

(assert (=> b!4881555 (= e!3050814 (and tp!1373387 (inv!72088 (tag!8928 (h!62523 rulesArg!165))) (inv!72092 (transformation!8064 (h!62523 rulesArg!165))) e!3050817))))

(declare-fun b!4881556 () Bool)

(declare-fun res!2083777 () Bool)

(assert (=> b!4881556 (=> (not res!2083777) (not e!3050813))))

(declare-fun isEmpty!30047 (List!56199) Bool)

(assert (=> b!4881556 (= res!2083777 (not (isEmpty!30047 rulesArg!165)))))

(declare-fun b!4881557 () Bool)

(declare-fun e!3050816 () Bool)

(declare-fun tp!1373388 () Bool)

(assert (=> b!4881557 (= e!3050816 (and e!3050814 tp!1373388))))

(assert (=> b!4881558 (= e!3050817 (and tp!1373391 tp!1373390))))

(declare-fun b!4881559 () Bool)

(assert (=> b!4881559 (= e!3050818 lt!1999524)))

(declare-fun b!4881561 () Bool)

(declare-fun res!2083781 () Bool)

(assert (=> b!4881561 (=> (not res!2083781) (not e!3050813))))

(declare-fun rulesValidInductive!3043 (LexerInterface!7656 List!56199) Bool)

(assert (=> b!4881561 (= res!2083781 (rulesValidInductive!3043 thiss!14805 rulesArg!165))))

(declare-fun res!2083780 () Bool)

(assert (=> start!510720 (=> (not res!2083780) (not e!3050813))))

(assert (=> start!510720 (= res!2083780 ((_ is Lexer!7654) thiss!14805))))

(assert (=> start!510720 e!3050813))

(assert (=> start!510720 true))

(assert (=> start!510720 e!3050816))

(declare-fun e!3050819 () Bool)

(declare-fun inv!72093 (BalanceConc!28694) Bool)

(assert (=> start!510720 (and (inv!72093 input!1236) e!3050819)))

(declare-fun b!4881560 () Bool)

(declare-fun tp!1373389 () Bool)

(declare-fun inv!72094 (Conc!14632) Bool)

(assert (=> b!4881560 (= e!3050819 (and (inv!72094 (c!830302 input!1236)) tp!1373389))))

(assert (= (and start!510720 res!2083780) b!4881561))

(assert (= (and b!4881561 res!2083781) b!4881556))

(assert (= (and b!4881556 res!2083777) b!4881553))

(assert (= (and b!4881553 (not res!2083778)) b!4881552))

(assert (= (and b!4881552 (not res!2083782)) b!4881554))

(assert (= (and b!4881554 (not res!2083779)) b!4881559))

(assert (= b!4881555 b!4881558))

(assert (= b!4881557 b!4881555))

(assert (= (and start!510720 ((_ is Cons!56075) rulesArg!165)) b!4881557))

(assert (= start!510720 b!4881560))

(declare-fun m!5885796 () Bool)

(assert (=> b!4881552 m!5885796))

(declare-fun m!5885798 () Bool)

(assert (=> b!4881552 m!5885798))

(declare-fun m!5885800 () Bool)

(assert (=> b!4881552 m!5885800))

(declare-fun m!5885802 () Bool)

(assert (=> b!4881552 m!5885802))

(declare-fun m!5885804 () Bool)

(assert (=> start!510720 m!5885804))

(declare-fun m!5885806 () Bool)

(assert (=> b!4881556 m!5885806))

(declare-fun m!5885808 () Bool)

(assert (=> b!4881560 m!5885808))

(declare-fun m!5885810 () Bool)

(assert (=> b!4881553 m!5885810))

(declare-fun m!5885812 () Bool)

(assert (=> b!4881553 m!5885812))

(declare-fun m!5885814 () Bool)

(assert (=> b!4881553 m!5885814))

(declare-fun m!5885816 () Bool)

(assert (=> b!4881561 m!5885816))

(declare-fun m!5885818 () Bool)

(assert (=> b!4881555 m!5885818))

(declare-fun m!5885820 () Bool)

(assert (=> b!4881555 m!5885820))

(declare-fun m!5885822 () Bool)

(assert (=> b!4881554 m!5885822))

(declare-fun m!5885824 () Bool)

(assert (=> b!4881554 m!5885824))

(check-sat (not b!4881552) (not b!4881561) (not start!510720) (not b_next!131707) (not b_next!131705) (not b!4881556) b_and!343749 (not b!4881554) b_and!343747 (not b!4881555) (not b!4881560) (not b!4881557) (not b!4881553))
(check-sat b_and!343749 b_and!343747 (not b_next!131705) (not b_next!131707))
