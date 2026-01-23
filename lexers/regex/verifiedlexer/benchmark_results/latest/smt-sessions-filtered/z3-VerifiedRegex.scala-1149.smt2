; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59544 () Bool)

(assert start!59544)

(declare-fun b!619808 () Bool)

(declare-fun b_free!18017 () Bool)

(declare-fun b_next!18033 () Bool)

(assert (=> b!619808 (= b_free!18017 (not b_next!18033))))

(declare-fun tp!192248 () Bool)

(declare-fun b_and!61555 () Bool)

(assert (=> b!619808 (= tp!192248 b_and!61555)))

(declare-fun b_free!18019 () Bool)

(declare-fun b_next!18035 () Bool)

(assert (=> b!619808 (= b_free!18019 (not b_next!18035))))

(declare-fun tp!192246 () Bool)

(declare-fun b_and!61557 () Bool)

(assert (=> b!619808 (= tp!192246 b_and!61557)))

(declare-fun b!619812 () Bool)

(declare-fun b_free!18021 () Bool)

(declare-fun b_next!18037 () Bool)

(assert (=> b!619812 (= b_free!18021 (not b_next!18037))))

(declare-fun tp!192242 () Bool)

(declare-fun b_and!61559 () Bool)

(assert (=> b!619812 (= tp!192242 b_and!61559)))

(declare-fun b_free!18023 () Bool)

(declare-fun b_next!18039 () Bool)

(assert (=> b!619812 (= b_free!18023 (not b_next!18039))))

(declare-fun tp!192241 () Bool)

(declare-fun b_and!61561 () Bool)

(assert (=> b!619812 (= tp!192241 b_and!61561)))

(declare-fun e!376123 () Bool)

(declare-fun tp!192249 () Bool)

(declare-fun b!619799 () Bool)

(declare-fun e!376129 () Bool)

(declare-datatypes ((List!6331 0))(
  ( (Nil!6321) (Cons!6321 (h!11722 (_ BitVec 16)) (t!81622 List!6331)) )
))
(declare-datatypes ((TokenValue!1307 0))(
  ( (FloatLiteralValue!2614 (text!9594 List!6331)) (TokenValueExt!1306 (__x!4514 Int)) (Broken!6535 (value!41403 List!6331)) (Object!1316) (End!1307) (Def!1307) (Underscore!1307) (Match!1307) (Else!1307) (Error!1307) (Case!1307) (If!1307) (Extends!1307) (Abstract!1307) (Class!1307) (Val!1307) (DelimiterValue!2614 (del!1367 List!6331)) (KeywordValue!1313 (value!41404 List!6331)) (CommentValue!2614 (value!41405 List!6331)) (WhitespaceValue!2614 (value!41406 List!6331)) (IndentationValue!1307 (value!41407 List!6331)) (String!8282) (Int32!1307) (Broken!6536 (value!41408 List!6331)) (Boolean!1308) (Unit!11431) (OperatorValue!1310 (op!1367 List!6331)) (IdentifierValue!2614 (value!41409 List!6331)) (IdentifierValue!2615 (value!41410 List!6331)) (WhitespaceValue!2615 (value!41411 List!6331)) (True!2614) (False!2614) (Broken!6537 (value!41412 List!6331)) (Broken!6538 (value!41413 List!6331)) (True!2615) (RightBrace!1307) (RightBracket!1307) (Colon!1307) (Null!1307) (Comma!1307) (LeftBracket!1307) (False!2615) (LeftBrace!1307) (ImaginaryLiteralValue!1307 (text!9595 List!6331)) (StringLiteralValue!3921 (value!41414 List!6331)) (EOFValue!1307 (value!41415 List!6331)) (IdentValue!1307 (value!41416 List!6331)) (DelimiterValue!2615 (value!41417 List!6331)) (DedentValue!1307 (value!41418 List!6331)) (NewLineValue!1307 (value!41419 List!6331)) (IntegerValue!3921 (value!41420 (_ BitVec 32)) (text!9596 List!6331)) (IntegerValue!3922 (value!41421 Int) (text!9597 List!6331)) (Times!1307) (Or!1307) (Equal!1307) (Minus!1307) (Broken!6539 (value!41422 List!6331)) (And!1307) (Div!1307) (LessEqual!1307) (Mod!1307) (Concat!2924) (Not!1307) (Plus!1307) (SpaceValue!1307 (value!41423 List!6331)) (IntegerValue!3923 (value!41424 Int) (text!9598 List!6331)) (StringLiteralValue!3922 (text!9599 List!6331)) (FloatLiteralValue!2615 (text!9600 List!6331)) (BytesLiteralValue!1307 (value!41425 List!6331)) (CommentValue!2615 (value!41426 List!6331)) (StringLiteralValue!3923 (value!41427 List!6331)) (ErrorTokenValue!1307 (msg!1368 List!6331)) )
))
(declare-datatypes ((C!4160 0))(
  ( (C!4161 (val!2306 Int)) )
))
(declare-datatypes ((List!6332 0))(
  ( (Nil!6322) (Cons!6322 (h!11723 C!4160) (t!81623 List!6332)) )
))
(declare-datatypes ((IArray!4015 0))(
  ( (IArray!4016 (innerList!2065 List!6332)) )
))
(declare-datatypes ((Conc!2007 0))(
  ( (Node!2007 (left!5014 Conc!2007) (right!5344 Conc!2007) (csize!4244 Int) (cheight!2218 Int)) (Leaf!3157 (xs!4644 IArray!4015) (csize!4245 Int)) (Empty!2007) )
))
(declare-datatypes ((BalanceConc!4022 0))(
  ( (BalanceConc!4023 (c!114023 Conc!2007)) )
))
(declare-datatypes ((Regex!1617 0))(
  ( (ElementMatch!1617 (c!114024 C!4160)) (Concat!2925 (regOne!3746 Regex!1617) (regTwo!3746 Regex!1617)) (EmptyExpr!1617) (Star!1617 (reg!1946 Regex!1617)) (EmptyLang!1617) (Union!1617 (regOne!3747 Regex!1617) (regTwo!3747 Regex!1617)) )
))
(declare-datatypes ((String!8283 0))(
  ( (String!8284 (value!41428 String)) )
))
(declare-datatypes ((TokenValueInjection!2382 0))(
  ( (TokenValueInjection!2383 (toValue!2200 Int) (toChars!2059 Int)) )
))
(declare-datatypes ((Rule!2366 0))(
  ( (Rule!2367 (regex!1283 Regex!1617) (tag!1545 String!8283) (isSeparator!1283 Bool) (transformation!1283 TokenValueInjection!2382)) )
))
(declare-datatypes ((List!6333 0))(
  ( (Nil!6323) (Cons!6323 (h!11724 Rule!2366) (t!81624 List!6333)) )
))
(declare-fun rules!3735 () List!6333)

(declare-fun inv!7994 (String!8283) Bool)

(declare-fun inv!7997 (TokenValueInjection!2382) Bool)

(assert (=> b!619799 (= e!376129 (and tp!192249 (inv!7994 (tag!1545 (h!11724 rules!3735))) (inv!7997 (transformation!1283 (h!11724 rules!3735))) e!376123))))

(declare-fun b!619800 () Bool)

(declare-fun res!269874 () Bool)

(declare-fun e!376121 () Bool)

(assert (=> b!619800 (=> (not res!269874) (not e!376121))))

(declare-datatypes ((Token!2290 0))(
  ( (Token!2291 (value!41429 TokenValue!1307) (rule!2075 Rule!2366) (size!4918 Int) (originalCharacters!1316 List!6332)) )
))
(declare-datatypes ((List!6334 0))(
  ( (Nil!6324) (Cons!6324 (h!11725 Token!2290) (t!81625 List!6334)) )
))
(declare-datatypes ((IArray!4017 0))(
  ( (IArray!4018 (innerList!2066 List!6334)) )
))
(declare-datatypes ((Conc!2008 0))(
  ( (Node!2008 (left!5015 Conc!2008) (right!5345 Conc!2008) (csize!4246 Int) (cheight!2219 Int)) (Leaf!3158 (xs!4645 IArray!4017) (csize!4247 Int)) (Empty!2008) )
))
(declare-datatypes ((BalanceConc!4024 0))(
  ( (BalanceConc!4025 (c!114025 Conc!2008)) )
))
(declare-datatypes ((tuple2!7110 0))(
  ( (tuple2!7111 (_1!3819 BalanceConc!4024) (_2!3819 BalanceConc!4022)) )
))
(declare-fun lt!265181 () tuple2!7110)

(declare-fun suffix!1461 () List!6332)

(declare-fun list!2636 (BalanceConc!4022) List!6332)

(assert (=> b!619800 (= res!269874 (= (list!2636 (_2!3819 lt!265181)) suffix!1461))))

(declare-fun b!619801 () Bool)

(declare-fun res!269876 () Bool)

(declare-fun e!376132 () Bool)

(assert (=> b!619801 (=> (not res!269876) (not e!376132))))

(declare-datatypes ((LexerInterface!1171 0))(
  ( (LexerInterfaceExt!1168 (__x!4515 Int)) (Lexer!1169) )
))
(declare-fun thiss!25571 () LexerInterface!1171)

(declare-fun rulesInvariant!1132 (LexerInterface!1171 List!6333) Bool)

(assert (=> b!619801 (= res!269876 (rulesInvariant!1132 thiss!25571 rules!3735))))

(declare-fun b!619802 () Bool)

(declare-fun res!269875 () Bool)

(assert (=> b!619802 (=> (not res!269875) (not e!376132))))

(declare-fun producedTokens!8 () List!6334)

(declare-fun size!4919 (List!6334) Int)

(assert (=> b!619802 (= res!269875 (> (size!4919 producedTokens!8) 0))))

(declare-fun b!619803 () Bool)

(declare-fun res!269873 () Bool)

(assert (=> b!619803 (=> (not res!269873) (not e!376132))))

(declare-fun isEmpty!4536 (List!6333) Bool)

(assert (=> b!619803 (= res!269873 (not (isEmpty!4536 rules!3735)))))

(declare-fun b!619804 () Bool)

(assert (=> b!619804 (= e!376121 false)))

(declare-fun lt!265182 () Bool)

(declare-fun rulesValidInductive!492 (LexerInterface!1171 List!6333) Bool)

(assert (=> b!619804 (= lt!265182 (rulesValidInductive!492 thiss!25571 rules!3735))))

(declare-fun res!269872 () Bool)

(assert (=> start!59544 (=> (not res!269872) (not e!376132))))

(get-info :version)

(assert (=> start!59544 (= res!269872 ((_ is Lexer!1169) thiss!25571))))

(assert (=> start!59544 e!376132))

(declare-fun e!376131 () Bool)

(assert (=> start!59544 e!376131))

(assert (=> start!59544 true))

(declare-fun e!376120 () Bool)

(assert (=> start!59544 e!376120))

(declare-fun e!376127 () Bool)

(assert (=> start!59544 e!376127))

(declare-fun e!376119 () Bool)

(assert (=> start!59544 e!376119))

(declare-fun b!619805 () Bool)

(declare-fun e!376125 () Bool)

(declare-fun e!376130 () Bool)

(declare-fun tp!192247 () Bool)

(declare-fun inv!21 (TokenValue!1307) Bool)

(assert (=> b!619805 (= e!376130 (and (inv!21 (value!41429 (h!11725 producedTokens!8))) e!376125 tp!192247))))

(declare-fun tp!192251 () Bool)

(declare-fun b!619806 () Bool)

(declare-fun e!376122 () Bool)

(assert (=> b!619806 (= e!376125 (and tp!192251 (inv!7994 (tag!1545 (rule!2075 (h!11725 producedTokens!8)))) (inv!7997 (transformation!1283 (rule!2075 (h!11725 producedTokens!8)))) e!376122))))

(declare-fun b!619807 () Bool)

(assert (=> b!619807 (= e!376132 e!376121)))

(declare-fun res!269871 () Bool)

(assert (=> b!619807 (=> (not res!269871) (not e!376121))))

(declare-fun list!2637 (BalanceConc!4024) List!6334)

(assert (=> b!619807 (= res!269871 (= (list!2637 (_1!3819 lt!265181)) producedTokens!8))))

(declare-fun input!3206 () List!6332)

(declare-fun lex!566 (LexerInterface!1171 List!6333 BalanceConc!4022) tuple2!7110)

(declare-fun seqFromList!1438 (List!6332) BalanceConc!4022)

(assert (=> b!619807 (= lt!265181 (lex!566 thiss!25571 rules!3735 (seqFromList!1438 input!3206)))))

(assert (=> b!619808 (= e!376122 (and tp!192248 tp!192246))))

(declare-fun b!619809 () Bool)

(declare-fun tp_is_empty!3593 () Bool)

(declare-fun tp!192245 () Bool)

(assert (=> b!619809 (= e!376120 (and tp_is_empty!3593 tp!192245))))

(declare-fun b!619810 () Bool)

(declare-fun tp!192250 () Bool)

(assert (=> b!619810 (= e!376119 (and e!376129 tp!192250))))

(declare-fun b!619811 () Bool)

(declare-fun tp!192243 () Bool)

(assert (=> b!619811 (= e!376127 (and tp_is_empty!3593 tp!192243))))

(assert (=> b!619812 (= e!376123 (and tp!192242 tp!192241))))

(declare-fun tp!192244 () Bool)

(declare-fun b!619813 () Bool)

(declare-fun inv!7998 (Token!2290) Bool)

(assert (=> b!619813 (= e!376131 (and (inv!7998 (h!11725 producedTokens!8)) e!376130 tp!192244))))

(assert (= (and start!59544 res!269872) b!619801))

(assert (= (and b!619801 res!269876) b!619803))

(assert (= (and b!619803 res!269873) b!619802))

(assert (= (and b!619802 res!269875) b!619807))

(assert (= (and b!619807 res!269871) b!619800))

(assert (= (and b!619800 res!269874) b!619804))

(assert (= b!619806 b!619808))

(assert (= b!619805 b!619806))

(assert (= b!619813 b!619805))

(assert (= (and start!59544 ((_ is Cons!6324) producedTokens!8)) b!619813))

(assert (= (and start!59544 ((_ is Cons!6322) suffix!1461)) b!619809))

(assert (= (and start!59544 ((_ is Cons!6322) input!3206)) b!619811))

(assert (= b!619799 b!619812))

(assert (= b!619810 b!619799))

(assert (= (and start!59544 ((_ is Cons!6323) rules!3735)) b!619810))

(declare-fun m!887659 () Bool)

(assert (=> b!619805 m!887659))

(declare-fun m!887661 () Bool)

(assert (=> b!619799 m!887661))

(declare-fun m!887663 () Bool)

(assert (=> b!619799 m!887663))

(declare-fun m!887665 () Bool)

(assert (=> b!619806 m!887665))

(declare-fun m!887667 () Bool)

(assert (=> b!619806 m!887667))

(declare-fun m!887669 () Bool)

(assert (=> b!619813 m!887669))

(declare-fun m!887671 () Bool)

(assert (=> b!619801 m!887671))

(declare-fun m!887673 () Bool)

(assert (=> b!619804 m!887673))

(declare-fun m!887675 () Bool)

(assert (=> b!619807 m!887675))

(declare-fun m!887677 () Bool)

(assert (=> b!619807 m!887677))

(assert (=> b!619807 m!887677))

(declare-fun m!887679 () Bool)

(assert (=> b!619807 m!887679))

(declare-fun m!887681 () Bool)

(assert (=> b!619803 m!887681))

(declare-fun m!887683 () Bool)

(assert (=> b!619800 m!887683))

(declare-fun m!887685 () Bool)

(assert (=> b!619802 m!887685))

(check-sat (not b!619810) (not b!619813) tp_is_empty!3593 (not b!619804) (not b_next!18033) (not b!619800) b_and!61559 (not b!619809) (not b_next!18037) (not b_next!18039) (not b!619806) (not b!619801) (not b!619805) (not b_next!18035) b_and!61555 (not b!619811) (not b!619807) (not b!619799) (not b!619802) (not b!619803) b_and!61557 b_and!61561)
(check-sat b_and!61559 (not b_next!18033) (not b_next!18037) (not b_next!18039) (not b_next!18035) b_and!61555 b_and!61557 b_and!61561)
