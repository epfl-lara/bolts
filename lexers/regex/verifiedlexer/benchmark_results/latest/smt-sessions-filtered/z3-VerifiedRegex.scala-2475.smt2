; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130876 () Bool)

(assert start!130876)

(declare-fun b!1420975 () Bool)

(declare-fun e!907007 () Bool)

(declare-datatypes ((C!7904 0))(
  ( (C!7905 (val!4522 Int)) )
))
(declare-datatypes ((List!14685 0))(
  ( (Nil!14619) (Cons!14619 (h!20020 C!7904) (t!124480 List!14685)) )
))
(declare-datatypes ((IArray!9853 0))(
  ( (IArray!9854 (innerList!4984 List!14685)) )
))
(declare-datatypes ((Conc!4924 0))(
  ( (Node!4924 (left!12501 Conc!4924) (right!12831 Conc!4924) (csize!10078 Int) (cheight!5135 Int)) (Leaf!7400 (xs!7653 IArray!9853) (csize!10079 Int)) (Empty!4924) )
))
(declare-datatypes ((BalanceConc!9788 0))(
  ( (BalanceConc!9789 (c!233594 Conc!4924)) )
))
(declare-fun lt!479805 () BalanceConc!9788)

(declare-datatypes ((String!17450 0))(
  ( (String!17451 (value!82268 String)) )
))
(declare-datatypes ((List!14686 0))(
  ( (Nil!14620) (Cons!14620 (h!20021 (_ BitVec 16)) (t!124481 List!14686)) )
))
(declare-datatypes ((TokenValue!2639 0))(
  ( (FloatLiteralValue!5278 (text!18918 List!14686)) (TokenValueExt!2638 (__x!9080 Int)) (Broken!13195 (value!82269 List!14686)) (Object!2704) (End!2639) (Def!2639) (Underscore!2639) (Match!2639) (Else!2639) (Error!2639) (Case!2639) (If!2639) (Extends!2639) (Abstract!2639) (Class!2639) (Val!2639) (DelimiterValue!5278 (del!2699 List!14686)) (KeywordValue!2645 (value!82270 List!14686)) (CommentValue!5278 (value!82271 List!14686)) (WhitespaceValue!5278 (value!82272 List!14686)) (IndentationValue!2639 (value!82273 List!14686)) (String!17452) (Int32!2639) (Broken!13196 (value!82274 List!14686)) (Boolean!2640) (Unit!21813) (OperatorValue!2642 (op!2699 List!14686)) (IdentifierValue!5278 (value!82275 List!14686)) (IdentifierValue!5279 (value!82276 List!14686)) (WhitespaceValue!5279 (value!82277 List!14686)) (True!5278) (False!5278) (Broken!13197 (value!82278 List!14686)) (Broken!13198 (value!82279 List!14686)) (True!5279) (RightBrace!2639) (RightBracket!2639) (Colon!2639) (Null!2639) (Comma!2639) (LeftBracket!2639) (False!5279) (LeftBrace!2639) (ImaginaryLiteralValue!2639 (text!18919 List!14686)) (StringLiteralValue!7917 (value!82280 List!14686)) (EOFValue!2639 (value!82281 List!14686)) (IdentValue!2639 (value!82282 List!14686)) (DelimiterValue!5279 (value!82283 List!14686)) (DedentValue!2639 (value!82284 List!14686)) (NewLineValue!2639 (value!82285 List!14686)) (IntegerValue!7917 (value!82286 (_ BitVec 32)) (text!18920 List!14686)) (IntegerValue!7918 (value!82287 Int) (text!18921 List!14686)) (Times!2639) (Or!2639) (Equal!2639) (Minus!2639) (Broken!13199 (value!82288 List!14686)) (And!2639) (Div!2639) (LessEqual!2639) (Mod!2639) (Concat!6502) (Not!2639) (Plus!2639) (SpaceValue!2639 (value!82289 List!14686)) (IntegerValue!7919 (value!82290 Int) (text!18922 List!14686)) (StringLiteralValue!7918 (text!18923 List!14686)) (FloatLiteralValue!5279 (text!18924 List!14686)) (BytesLiteralValue!2639 (value!82291 List!14686)) (CommentValue!5279 (value!82292 List!14686)) (StringLiteralValue!7919 (value!82293 List!14686)) (ErrorTokenValue!2639 (msg!2700 List!14686)) )
))
(declare-datatypes ((Regex!3863 0))(
  ( (ElementMatch!3863 (c!233595 C!7904)) (Concat!6503 (regOne!8238 Regex!3863) (regTwo!8238 Regex!3863)) (EmptyExpr!3863) (Star!3863 (reg!4192 Regex!3863)) (EmptyLang!3863) (Union!3863 (regOne!8239 Regex!3863) (regTwo!8239 Regex!3863)) )
))
(declare-datatypes ((TokenValueInjection!4938 0))(
  ( (TokenValueInjection!4939 (toValue!3848 Int) (toChars!3707 Int)) )
))
(declare-datatypes ((Rule!4898 0))(
  ( (Rule!4899 (regex!2549 Regex!3863) (tag!2811 String!17450) (isSeparator!2549 Bool) (transformation!2549 TokenValueInjection!4938)) )
))
(declare-datatypes ((Token!4760 0))(
  ( (Token!4761 (value!82294 TokenValue!2639) (rule!4312 Rule!4898) (size!12052 Int) (originalCharacters!3411 List!14685)) )
))
(declare-datatypes ((List!14687 0))(
  ( (Nil!14621) (Cons!14621 (h!20022 Token!4760) (t!124482 List!14687)) )
))
(declare-datatypes ((IArray!9855 0))(
  ( (IArray!9856 (innerList!4985 List!14687)) )
))
(declare-datatypes ((Conc!4925 0))(
  ( (Node!4925 (left!12502 Conc!4925) (right!12832 Conc!4925) (csize!10080 Int) (cheight!5136 Int)) (Leaf!7401 (xs!7654 IArray!9855) (csize!10081 Int)) (Empty!4925) )
))
(declare-datatypes ((BalanceConc!9790 0))(
  ( (BalanceConc!9791 (c!233596 Conc!4925)) )
))
(declare-datatypes ((List!14688 0))(
  ( (Nil!14622) (Cons!14622 (h!20023 Rule!4898) (t!124483 List!14688)) )
))
(declare-datatypes ((PrintableTokens!880 0))(
  ( (PrintableTokens!881 (rules!11170 List!14688) (tokens!1862 BalanceConc!9790)) )
))
(declare-fun other!32 () PrintableTokens!880)

(declare-datatypes ((LexerInterface!2217 0))(
  ( (LexerInterfaceExt!2214 (__x!9081 Int)) (Lexer!2215) )
))
(declare-fun printTailRec!649 (LexerInterface!2217 BalanceConc!9790 Int BalanceConc!9788) BalanceConc!9788)

(assert (=> b!1420975 (= e!907007 (= lt!479805 (printTailRec!649 Lexer!2215 (tokens!1862 other!32) 0 (BalanceConc!9789 Empty!4924))))))

(declare-fun res!643361 () Bool)

(declare-fun e!907004 () Bool)

(assert (=> start!130876 (=> (not res!643361) (not e!907004))))

(declare-fun thiss!10022 () PrintableTokens!880)

(assert (=> start!130876 (= res!643361 (= (rules!11170 thiss!10022) (rules!11170 other!32)))))

(assert (=> start!130876 e!907004))

(declare-fun e!907011 () Bool)

(declare-fun inv!19346 (PrintableTokens!880) Bool)

(assert (=> start!130876 (and (inv!19346 thiss!10022) e!907011)))

(declare-fun e!907010 () Bool)

(assert (=> start!130876 (and (inv!19346 other!32) e!907010)))

(declare-fun b!1420976 () Bool)

(declare-fun e!907008 () Bool)

(declare-fun tp!402834 () Bool)

(declare-fun inv!19347 (Conc!4925) Bool)

(assert (=> b!1420976 (= e!907008 (and (inv!19347 (c!233596 (tokens!1862 thiss!10022))) tp!402834))))

(declare-fun b!1420977 () Bool)

(declare-fun e!907005 () Bool)

(assert (=> b!1420977 (= e!907005 (not true))))

(assert (=> b!1420977 e!907007))

(declare-fun res!643362 () Bool)

(assert (=> b!1420977 (=> (not res!643362) (not e!907007))))

(declare-fun lt!479801 () BalanceConc!9788)

(assert (=> b!1420977 (= res!643362 (= lt!479801 lt!479805))))

(declare-fun print!993 (LexerInterface!2217 BalanceConc!9790) BalanceConc!9788)

(assert (=> b!1420977 (= lt!479805 (print!993 Lexer!2215 (tokens!1862 other!32)))))

(declare-fun print!994 (PrintableTokens!880) BalanceConc!9788)

(assert (=> b!1420977 (= lt!479801 (print!994 other!32))))

(declare-datatypes ((Unit!21814 0))(
  ( (Unit!21815) )
))
(declare-fun lt!479804 () Unit!21814)

(declare-fun theoremInvertabilityWhenTokenListSeparable!39 (LexerInterface!2217 List!14688 List!14687) Unit!21814)

(declare-fun list!5783 (BalanceConc!9790) List!14687)

(assert (=> b!1420977 (= lt!479804 (theoremInvertabilityWhenTokenListSeparable!39 Lexer!2215 (rules!11170 other!32) (list!5783 (tokens!1862 other!32))))))

(assert (=> b!1420977 (= (print!994 thiss!10022) (print!993 Lexer!2215 (tokens!1862 thiss!10022)))))

(declare-fun lt!479808 () Unit!21814)

(declare-fun lt!479803 () List!14687)

(assert (=> b!1420977 (= lt!479808 (theoremInvertabilityWhenTokenListSeparable!39 Lexer!2215 (rules!11170 thiss!10022) lt!479803))))

(declare-fun e!907006 () Bool)

(assert (=> b!1420977 e!907006))

(declare-fun res!643363 () Bool)

(assert (=> b!1420977 (=> (not res!643363) (not e!907006))))

(declare-fun lt!479807 () List!14685)

(declare-fun lt!479802 () List!14687)

(declare-fun lt!479810 () List!14685)

(declare-fun printList!671 (LexerInterface!2217 List!14687) List!14685)

(declare-fun ++!3852 (List!14685 List!14685) List!14685)

(assert (=> b!1420977 (= res!643363 (= (printList!671 Lexer!2215 lt!479802) (++!3852 lt!479807 lt!479810)))))

(assert (=> b!1420977 (= lt!479810 (printList!671 Lexer!2215 Nil!14621))))

(assert (=> b!1420977 (= lt!479807 (printList!671 Lexer!2215 lt!479803))))

(declare-fun ++!3853 (List!14687 List!14687) List!14687)

(assert (=> b!1420977 (= lt!479802 (++!3853 lt!479803 Nil!14621))))

(declare-fun lt!479806 () Unit!21814)

(declare-fun lemmaPrintConcatSameAsConcatPrint!36 (LexerInterface!2217 List!14687 List!14687) Unit!21814)

(assert (=> b!1420977 (= lt!479806 (lemmaPrintConcatSameAsConcatPrint!36 Lexer!2215 lt!479803 Nil!14621))))

(assert (=> b!1420977 (= lt!479803 (list!5783 (tokens!1862 thiss!10022)))))

(declare-fun b!1420978 () Bool)

(declare-fun e!907009 () Bool)

(declare-fun tp!402832 () Bool)

(assert (=> b!1420978 (= e!907009 (and (inv!19347 (c!233596 (tokens!1862 other!32))) tp!402832))))

(declare-fun b!1420979 () Bool)

(declare-fun tp!402833 () Bool)

(declare-fun inv!19348 (BalanceConc!9790) Bool)

(assert (=> b!1420979 (= e!907010 (and tp!402833 (inv!19348 (tokens!1862 other!32)) e!907009))))

(declare-fun tp!402831 () Bool)

(declare-fun b!1420980 () Bool)

(assert (=> b!1420980 (= e!907011 (and tp!402831 (inv!19348 (tokens!1862 thiss!10022)) e!907008))))

(declare-fun b!1420981 () Bool)

(assert (=> b!1420981 (= e!907004 e!907005)))

(declare-fun res!643364 () Bool)

(assert (=> b!1420981 (=> (not res!643364) (not e!907005))))

(declare-fun isEmpty!9010 (BalanceConc!9790) Bool)

(assert (=> b!1420981 (= res!643364 (isEmpty!9010 (tokens!1862 other!32)))))

(declare-fun lt!479809 () Unit!21814)

(declare-fun lemmaInvariant!245 (PrintableTokens!880) Unit!21814)

(assert (=> b!1420981 (= lt!479809 (lemmaInvariant!245 thiss!10022))))

(declare-fun lt!479800 () Unit!21814)

(assert (=> b!1420981 (= lt!479800 (lemmaInvariant!245 other!32))))

(declare-fun b!1420982 () Bool)

(assert (=> b!1420982 (= e!907006 (= lt!479810 Nil!14619))))

(assert (= (and start!130876 res!643361) b!1420981))

(assert (= (and b!1420981 res!643364) b!1420977))

(assert (= (and b!1420977 res!643363) b!1420982))

(assert (= (and b!1420977 res!643362) b!1420975))

(assert (= b!1420980 b!1420976))

(assert (= start!130876 b!1420980))

(assert (= b!1420979 b!1420978))

(assert (= start!130876 b!1420979))

(declare-fun m!1610797 () Bool)

(assert (=> start!130876 m!1610797))

(declare-fun m!1610799 () Bool)

(assert (=> start!130876 m!1610799))

(declare-fun m!1610801 () Bool)

(assert (=> b!1420975 m!1610801))

(declare-fun m!1610803 () Bool)

(assert (=> b!1420976 m!1610803))

(declare-fun m!1610805 () Bool)

(assert (=> b!1420979 m!1610805))

(declare-fun m!1610807 () Bool)

(assert (=> b!1420977 m!1610807))

(declare-fun m!1610809 () Bool)

(assert (=> b!1420977 m!1610809))

(declare-fun m!1610811 () Bool)

(assert (=> b!1420977 m!1610811))

(declare-fun m!1610813 () Bool)

(assert (=> b!1420977 m!1610813))

(declare-fun m!1610815 () Bool)

(assert (=> b!1420977 m!1610815))

(declare-fun m!1610817 () Bool)

(assert (=> b!1420977 m!1610817))

(declare-fun m!1610819 () Bool)

(assert (=> b!1420977 m!1610819))

(declare-fun m!1610821 () Bool)

(assert (=> b!1420977 m!1610821))

(declare-fun m!1610823 () Bool)

(assert (=> b!1420977 m!1610823))

(declare-fun m!1610825 () Bool)

(assert (=> b!1420977 m!1610825))

(declare-fun m!1610827 () Bool)

(assert (=> b!1420977 m!1610827))

(assert (=> b!1420977 m!1610821))

(declare-fun m!1610829 () Bool)

(assert (=> b!1420977 m!1610829))

(declare-fun m!1610831 () Bool)

(assert (=> b!1420977 m!1610831))

(declare-fun m!1610833 () Bool)

(assert (=> b!1420977 m!1610833))

(declare-fun m!1610835 () Bool)

(assert (=> b!1420981 m!1610835))

(declare-fun m!1610837 () Bool)

(assert (=> b!1420981 m!1610837))

(declare-fun m!1610839 () Bool)

(assert (=> b!1420981 m!1610839))

(declare-fun m!1610841 () Bool)

(assert (=> b!1420980 m!1610841))

(declare-fun m!1610843 () Bool)

(assert (=> b!1420978 m!1610843))

(check-sat (not b!1420977) (not b!1420978) (not b!1420976) (not b!1420975) (not b!1420979) (not b!1420980) (not b!1420981) (not start!130876))
(check-sat)
