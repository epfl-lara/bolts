; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406142 () Bool)

(assert start!406142)

(declare-fun b!4243336 () Bool)

(declare-fun b_free!125767 () Bool)

(declare-fun b_next!126471 () Bool)

(assert (=> b!4243336 (= b_free!125767 (not b_next!126471))))

(declare-fun tp!1300988 () Bool)

(declare-fun b_and!335969 () Bool)

(assert (=> b!4243336 (= tp!1300988 b_and!335969)))

(declare-fun b_free!125769 () Bool)

(declare-fun b_next!126473 () Bool)

(assert (=> b!4243336 (= b_free!125769 (not b_next!126473))))

(declare-fun tp!1300981 () Bool)

(declare-fun b_and!335971 () Bool)

(assert (=> b!4243336 (= tp!1300981 b_and!335971)))

(declare-fun b!4243346 () Bool)

(declare-fun b_free!125771 () Bool)

(declare-fun b_next!126475 () Bool)

(assert (=> b!4243346 (= b_free!125771 (not b_next!126475))))

(declare-fun tp!1300977 () Bool)

(declare-fun b_and!335973 () Bool)

(assert (=> b!4243346 (= tp!1300977 b_and!335973)))

(declare-fun b_free!125773 () Bool)

(declare-fun b_next!126477 () Bool)

(assert (=> b!4243346 (= b_free!125773 (not b_next!126477))))

(declare-fun tp!1300978 () Bool)

(declare-fun b_and!335975 () Bool)

(assert (=> b!4243346 (= tp!1300978 b_and!335975)))

(declare-fun b!4243344 () Bool)

(declare-fun b_free!125775 () Bool)

(declare-fun b_next!126479 () Bool)

(assert (=> b!4243344 (= b_free!125775 (not b_next!126479))))

(declare-fun tp!1300976 () Bool)

(declare-fun b_and!335977 () Bool)

(assert (=> b!4243344 (= tp!1300976 b_and!335977)))

(declare-fun b_free!125777 () Bool)

(declare-fun b_next!126481 () Bool)

(assert (=> b!4243344 (= b_free!125777 (not b_next!126481))))

(declare-fun tp!1300979 () Bool)

(declare-fun b_and!335979 () Bool)

(assert (=> b!4243344 (= tp!1300979 b_and!335979)))

(declare-fun b!4243321 () Bool)

(declare-fun res!1744666 () Bool)

(declare-fun e!2635221 () Bool)

(assert (=> b!4243321 (=> (not res!1744666) (not e!2635221))))

(declare-datatypes ((LexerInterface!7531 0))(
  ( (LexerInterfaceExt!7528 (__x!28555 Int)) (Lexer!7529) )
))
(declare-fun thiss!21540 () LexerInterface!7531)

(declare-datatypes ((List!47053 0))(
  ( (Nil!46929) (Cons!46929 (h!52349 (_ BitVec 16)) (t!351382 List!47053)) )
))
(declare-datatypes ((TokenValue!8166 0))(
  ( (FloatLiteralValue!16332 (text!57607 List!47053)) (TokenValueExt!8165 (__x!28556 Int)) (Broken!40830 (value!246686 List!47053)) (Object!8289) (End!8166) (Def!8166) (Underscore!8166) (Match!8166) (Else!8166) (Error!8166) (Case!8166) (If!8166) (Extends!8166) (Abstract!8166) (Class!8166) (Val!8166) (DelimiterValue!16332 (del!8226 List!47053)) (KeywordValue!8172 (value!246687 List!47053)) (CommentValue!16332 (value!246688 List!47053)) (WhitespaceValue!16332 (value!246689 List!47053)) (IndentationValue!8166 (value!246690 List!47053)) (String!54759) (Int32!8166) (Broken!40831 (value!246691 List!47053)) (Boolean!8167) (Unit!65990) (OperatorValue!8169 (op!8226 List!47053)) (IdentifierValue!16332 (value!246692 List!47053)) (IdentifierValue!16333 (value!246693 List!47053)) (WhitespaceValue!16333 (value!246694 List!47053)) (True!16332) (False!16332) (Broken!40832 (value!246695 List!47053)) (Broken!40833 (value!246696 List!47053)) (True!16333) (RightBrace!8166) (RightBracket!8166) (Colon!8166) (Null!8166) (Comma!8166) (LeftBracket!8166) (False!16333) (LeftBrace!8166) (ImaginaryLiteralValue!8166 (text!57608 List!47053)) (StringLiteralValue!24498 (value!246697 List!47053)) (EOFValue!8166 (value!246698 List!47053)) (IdentValue!8166 (value!246699 List!47053)) (DelimiterValue!16333 (value!246700 List!47053)) (DedentValue!8166 (value!246701 List!47053)) (NewLineValue!8166 (value!246702 List!47053)) (IntegerValue!24498 (value!246703 (_ BitVec 32)) (text!57609 List!47053)) (IntegerValue!24499 (value!246704 Int) (text!57610 List!47053)) (Times!8166) (Or!8166) (Equal!8166) (Minus!8166) (Broken!40834 (value!246705 List!47053)) (And!8166) (Div!8166) (LessEqual!8166) (Mod!8166) (Concat!21007) (Not!8166) (Plus!8166) (SpaceValue!8166 (value!246706 List!47053)) (IntegerValue!24500 (value!246707 Int) (text!57611 List!47053)) (StringLiteralValue!24499 (text!57612 List!47053)) (FloatLiteralValue!16333 (text!57613 List!47053)) (BytesLiteralValue!8166 (value!246708 List!47053)) (CommentValue!16333 (value!246709 List!47053)) (StringLiteralValue!24500 (value!246710 List!47053)) (ErrorTokenValue!8166 (msg!8227 List!47053)) )
))
(declare-datatypes ((C!25880 0))(
  ( (C!25881 (val!15130 Int)) )
))
(declare-datatypes ((Regex!12841 0))(
  ( (ElementMatch!12841 (c!720886 C!25880)) (Concat!21008 (regOne!26194 Regex!12841) (regTwo!26194 Regex!12841)) (EmptyExpr!12841) (Star!12841 (reg!13170 Regex!12841)) (EmptyLang!12841) (Union!12841 (regOne!26195 Regex!12841) (regTwo!26195 Regex!12841)) )
))
(declare-datatypes ((String!54760 0))(
  ( (String!54761 (value!246711 String)) )
))
(declare-datatypes ((List!47054 0))(
  ( (Nil!46930) (Cons!46930 (h!52350 C!25880) (t!351383 List!47054)) )
))
(declare-datatypes ((IArray!28299 0))(
  ( (IArray!28300 (innerList!14207 List!47054)) )
))
(declare-datatypes ((Conc!14147 0))(
  ( (Node!14147 (left!34865 Conc!14147) (right!35195 Conc!14147) (csize!28524 Int) (cheight!14358 Int)) (Leaf!21874 (xs!17453 IArray!28299) (csize!28525 Int)) (Empty!14147) )
))
(declare-datatypes ((BalanceConc!27888 0))(
  ( (BalanceConc!27889 (c!720887 Conc!14147)) )
))
(declare-datatypes ((TokenValueInjection!15760 0))(
  ( (TokenValueInjection!15761 (toValue!10696 Int) (toChars!10555 Int)) )
))
(declare-datatypes ((Rule!15672 0))(
  ( (Rule!15673 (regex!7936 Regex!12841) (tag!8800 String!54760) (isSeparator!7936 Bool) (transformation!7936 TokenValueInjection!15760)) )
))
(declare-datatypes ((List!47055 0))(
  ( (Nil!46931) (Cons!46931 (h!52351 Rule!15672) (t!351384 List!47055)) )
))
(declare-fun rules!2932 () List!47055)

(declare-fun rulesInvariant!6642 (LexerInterface!7531 List!47055) Bool)

(assert (=> b!4243321 (= res!1744666 (rulesInvariant!6642 thiss!21540 rules!2932))))

(declare-fun b!4243322 () Bool)

(declare-fun e!2635226 () Bool)

(declare-fun tp!1300987 () Bool)

(declare-fun e!2635224 () Bool)

(declare-datatypes ((Token!14498 0))(
  ( (Token!14499 (value!246712 TokenValue!8166) (rule!11066 Rule!15672) (size!34377 Int) (originalCharacters!8280 List!47054)) )
))
(declare-datatypes ((List!47056 0))(
  ( (Nil!46932) (Cons!46932 (h!52352 Token!14498) (t!351385 List!47056)) )
))
(declare-fun tokens!581 () List!47056)

(declare-fun inv!61687 (Token!14498) Bool)

(assert (=> b!4243322 (= e!2635226 (and (inv!61687 (h!52352 tokens!581)) e!2635224 tp!1300987))))

(declare-fun b!4243323 () Bool)

(declare-fun res!1744669 () Bool)

(declare-fun e!2635219 () Bool)

(assert (=> b!4243323 (=> (not res!1744669) (not e!2635219))))

(declare-fun suffix!1262 () List!47054)

(declare-fun longerInput!51 () List!47054)

(declare-datatypes ((tuple2!44506 0))(
  ( (tuple2!44507 (_1!25387 List!47056) (_2!25387 List!47054)) )
))
(declare-fun lexList!2037 (LexerInterface!7531 List!47055 List!47054) tuple2!44506)

(assert (=> b!4243323 (= res!1744669 (= (lexList!2037 thiss!21540 rules!2932 longerInput!51) (tuple2!44507 tokens!581 suffix!1262)))))

(declare-fun b!4243324 () Bool)

(declare-fun e!2635211 () Bool)

(declare-fun tp!1300991 () Bool)

(declare-fun e!2635213 () Bool)

(declare-fun inv!61684 (String!54760) Bool)

(declare-fun inv!61688 (TokenValueInjection!15760) Bool)

(assert (=> b!4243324 (= e!2635213 (and tp!1300991 (inv!61684 (tag!8800 (h!52351 rules!2932))) (inv!61688 (transformation!7936 (h!52351 rules!2932))) e!2635211))))

(declare-fun b!4243325 () Bool)

(declare-fun e!2635230 () Bool)

(declare-fun e!2635231 () Bool)

(assert (=> b!4243325 (= e!2635230 e!2635231)))

(declare-fun res!1744676 () Bool)

(assert (=> b!4243325 (=> (not res!1744676) (not e!2635231))))

(declare-fun lt!1507069 () Int)

(declare-datatypes ((tuple2!44508 0))(
  ( (tuple2!44509 (_1!25388 Token!14498) (_2!25388 List!47054)) )
))
(declare-datatypes ((Option!10072 0))(
  ( (None!10071) (Some!10071 (v!41025 tuple2!44508)) )
))
(declare-fun lt!1507068 () Option!10072)

(declare-fun size!34378 (List!47054) Int)

(assert (=> b!4243325 (= res!1744676 (> lt!1507069 (size!34378 (_2!25388 (v!41025 lt!1507068)))))))

(declare-fun lt!1507066 () List!47056)

(declare-fun addTokens!17 () List!47056)

(declare-fun tail!6846 (List!47056) List!47056)

(assert (=> b!4243325 (= lt!1507066 (tail!6846 addTokens!17))))

(declare-fun b!4243326 () Bool)

(declare-fun e!2635214 () Bool)

(declare-fun tp!1300985 () Bool)

(declare-fun inv!21 (TokenValue!8166) Bool)

(assert (=> b!4243326 (= e!2635224 (and (inv!21 (value!246712 (h!52352 tokens!581))) e!2635214 tp!1300985))))

(declare-fun b!4243327 () Bool)

(declare-fun e!2635223 () Bool)

(declare-fun tp!1300980 () Bool)

(assert (=> b!4243327 (= e!2635214 (and tp!1300980 (inv!61684 (tag!8800 (rule!11066 (h!52352 tokens!581)))) (inv!61688 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) e!2635223))))

(declare-fun b!4243328 () Bool)

(declare-fun e!2635216 () Bool)

(declare-fun tp_is_empty!22673 () Bool)

(declare-fun tp!1300989 () Bool)

(assert (=> b!4243328 (= e!2635216 (and tp_is_empty!22673 tp!1300989))))

(declare-fun b!4243329 () Bool)

(assert (=> b!4243329 (= e!2635221 e!2635219)))

(declare-fun res!1744675 () Bool)

(assert (=> b!4243329 (=> (not res!1744675) (not e!2635219))))

(declare-fun shorterInput!51 () List!47054)

(assert (=> b!4243329 (= res!1744675 (> lt!1507069 (size!34378 shorterInput!51)))))

(assert (=> b!4243329 (= lt!1507069 (size!34378 longerInput!51))))

(declare-fun b!4243330 () Bool)

(declare-fun e!2635232 () Bool)

(declare-fun tp!1300990 () Bool)

(assert (=> b!4243330 (= e!2635232 (and tp_is_empty!22673 tp!1300990))))

(declare-fun tp!1300992 () Bool)

(declare-fun e!2635229 () Bool)

(declare-fun e!2635215 () Bool)

(declare-fun b!4243331 () Bool)

(assert (=> b!4243331 (= e!2635215 (and tp!1300992 (inv!61684 (tag!8800 (rule!11066 (h!52352 addTokens!17)))) (inv!61688 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) e!2635229))))

(declare-fun b!4243332 () Bool)

(declare-fun res!1744668 () Bool)

(assert (=> b!4243332 (=> (not res!1744668) (not e!2635219))))

(declare-fun size!34379 (List!47056) Int)

(assert (=> b!4243332 (= res!1744668 (> (size!34379 addTokens!17) 0))))

(declare-fun b!4243333 () Bool)

(declare-fun e!2635212 () Bool)

(declare-fun tp!1300986 () Bool)

(assert (=> b!4243333 (= e!2635212 (and (inv!21 (value!246712 (h!52352 addTokens!17))) e!2635215 tp!1300986))))

(declare-fun b!4243334 () Bool)

(declare-fun res!1744673 () Bool)

(assert (=> b!4243334 (=> (not res!1744673) (not e!2635230))))

(declare-fun lt!1507070 () Option!10072)

(declare-fun ++!11946 (List!47054 List!47054) List!47054)

(declare-fun list!16922 (BalanceConc!27888) List!47054)

(declare-fun charsOf!5286 (Token!14498) BalanceConc!27888)

(assert (=> b!4243334 (= res!1744673 (= (++!11946 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070)))) (_2!25388 (v!41025 lt!1507070))) longerInput!51))))

(assert (=> b!4243336 (= e!2635211 (and tp!1300988 tp!1300981))))

(declare-fun b!4243337 () Bool)

(declare-fun e!2635227 () Bool)

(declare-fun tp!1300984 () Bool)

(assert (=> b!4243337 (= e!2635227 (and e!2635213 tp!1300984))))

(declare-fun b!4243338 () Bool)

(assert (=> b!4243338 (= e!2635219 e!2635230)))

(declare-fun res!1744674 () Bool)

(assert (=> b!4243338 (=> (not res!1744674) (not e!2635230))))

(get-info :version)

(assert (=> b!4243338 (= res!1744674 (and ((_ is Some!10071) lt!1507070) ((_ is Some!10071) lt!1507068)))))

(declare-fun maxPrefix!4489 (LexerInterface!7531 List!47055 List!47054) Option!10072)

(assert (=> b!4243338 (= lt!1507068 (maxPrefix!4489 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4243338 (= lt!1507070 (maxPrefix!4489 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4243339 () Bool)

(declare-fun res!1744671 () Bool)

(assert (=> b!4243339 (=> (not res!1744671) (not e!2635219))))

(declare-fun isEmpty!27749 (List!47056) Bool)

(assert (=> b!4243339 (= res!1744671 (not (isEmpty!27749 addTokens!17)))))

(declare-fun b!4243340 () Bool)

(declare-fun e!2635220 () Bool)

(declare-fun tp!1300983 () Bool)

(assert (=> b!4243340 (= e!2635220 (and tp_is_empty!22673 tp!1300983))))

(declare-fun b!4243341 () Bool)

(declare-fun res!1744667 () Bool)

(assert (=> b!4243341 (=> (not res!1744667) (not e!2635230))))

(assert (=> b!4243341 (= res!1744667 (= (++!11946 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068)))) (_2!25388 (v!41025 lt!1507068))) shorterInput!51))))

(declare-fun e!2635218 () Bool)

(declare-fun b!4243342 () Bool)

(declare-fun tp!1300982 () Bool)

(assert (=> b!4243342 (= e!2635218 (and (inv!61687 (h!52352 addTokens!17)) e!2635212 tp!1300982))))

(declare-fun b!4243343 () Bool)

(declare-fun res!1744672 () Bool)

(assert (=> b!4243343 (=> (not res!1744672) (not e!2635221))))

(declare-fun isEmpty!27750 (List!47054) Bool)

(assert (=> b!4243343 (= res!1744672 (not (isEmpty!27750 longerInput!51)))))

(assert (=> b!4243344 (= e!2635223 (and tp!1300976 tp!1300979))))

(declare-fun b!4243345 () Bool)

(declare-fun ++!11947 (List!47056 List!47056) List!47056)

(assert (=> b!4243345 (= e!2635231 (not (not (= (lexList!2037 thiss!21540 rules!2932 shorterInput!51) (tuple2!44507 (++!11947 addTokens!17 tokens!581) suffix!1262)))))))

(assert (=> b!4243345 (not (= (lexList!2037 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507068))) (tuple2!44507 (++!11947 lt!1507066 tokens!581) suffix!1262)))))

(declare-datatypes ((Unit!65991 0))(
  ( (Unit!65992) )
))
(declare-fun lt!1507067 () Unit!65991)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!172 (LexerInterface!7531 List!47055 List!47054 List!47054 List!47056 List!47054 List!47056) Unit!65991)

(assert (=> b!4243345 (= lt!1507067 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!172 thiss!21540 rules!2932 longerInput!51 (_2!25388 (v!41025 lt!1507068)) tokens!581 suffix!1262 lt!1507066))))

(assert (=> b!4243346 (= e!2635229 (and tp!1300977 tp!1300978))))

(declare-fun res!1744677 () Bool)

(assert (=> start!406142 (=> (not res!1744677) (not e!2635221))))

(assert (=> start!406142 (= res!1744677 ((_ is Lexer!7529) thiss!21540))))

(assert (=> start!406142 e!2635221))

(assert (=> start!406142 true))

(assert (=> start!406142 e!2635227))

(assert (=> start!406142 e!2635218))

(assert (=> start!406142 e!2635216))

(assert (=> start!406142 e!2635232))

(assert (=> start!406142 e!2635226))

(assert (=> start!406142 e!2635220))

(declare-fun b!4243335 () Bool)

(declare-fun res!1744670 () Bool)

(assert (=> b!4243335 (=> (not res!1744670) (not e!2635221))))

(declare-fun isEmpty!27751 (List!47055) Bool)

(assert (=> b!4243335 (= res!1744670 (not (isEmpty!27751 rules!2932)))))

(assert (= (and start!406142 res!1744677) b!4243335))

(assert (= (and b!4243335 res!1744670) b!4243321))

(assert (= (and b!4243321 res!1744666) b!4243343))

(assert (= (and b!4243343 res!1744672) b!4243329))

(assert (= (and b!4243329 res!1744675) b!4243323))

(assert (= (and b!4243323 res!1744669) b!4243339))

(assert (= (and b!4243339 res!1744671) b!4243332))

(assert (= (and b!4243332 res!1744668) b!4243338))

(assert (= (and b!4243338 res!1744674) b!4243334))

(assert (= (and b!4243334 res!1744673) b!4243341))

(assert (= (and b!4243341 res!1744667) b!4243325))

(assert (= (and b!4243325 res!1744676) b!4243345))

(assert (= b!4243324 b!4243336))

(assert (= b!4243337 b!4243324))

(assert (= (and start!406142 ((_ is Cons!46931) rules!2932)) b!4243337))

(assert (= b!4243331 b!4243346))

(assert (= b!4243333 b!4243331))

(assert (= b!4243342 b!4243333))

(assert (= (and start!406142 ((_ is Cons!46932) addTokens!17)) b!4243342))

(assert (= (and start!406142 ((_ is Cons!46930) shorterInput!51)) b!4243328))

(assert (= (and start!406142 ((_ is Cons!46930) suffix!1262)) b!4243330))

(assert (= b!4243327 b!4243344))

(assert (= b!4243326 b!4243327))

(assert (= b!4243322 b!4243326))

(assert (= (and start!406142 ((_ is Cons!46932) tokens!581)) b!4243322))

(assert (= (and start!406142 ((_ is Cons!46930) longerInput!51)) b!4243340))

(declare-fun m!4828789 () Bool)

(assert (=> b!4243335 m!4828789))

(declare-fun m!4828791 () Bool)

(assert (=> b!4243322 m!4828791))

(declare-fun m!4828793 () Bool)

(assert (=> b!4243338 m!4828793))

(declare-fun m!4828795 () Bool)

(assert (=> b!4243338 m!4828795))

(declare-fun m!4828797 () Bool)

(assert (=> b!4243332 m!4828797))

(declare-fun m!4828799 () Bool)

(assert (=> b!4243339 m!4828799))

(declare-fun m!4828801 () Bool)

(assert (=> b!4243321 m!4828801))

(declare-fun m!4828803 () Bool)

(assert (=> b!4243343 m!4828803))

(declare-fun m!4828805 () Bool)

(assert (=> b!4243345 m!4828805))

(declare-fun m!4828807 () Bool)

(assert (=> b!4243345 m!4828807))

(declare-fun m!4828809 () Bool)

(assert (=> b!4243345 m!4828809))

(declare-fun m!4828811 () Bool)

(assert (=> b!4243345 m!4828811))

(declare-fun m!4828813 () Bool)

(assert (=> b!4243345 m!4828813))

(declare-fun m!4828815 () Bool)

(assert (=> b!4243327 m!4828815))

(declare-fun m!4828817 () Bool)

(assert (=> b!4243327 m!4828817))

(declare-fun m!4828819 () Bool)

(assert (=> b!4243333 m!4828819))

(declare-fun m!4828821 () Bool)

(assert (=> b!4243341 m!4828821))

(assert (=> b!4243341 m!4828821))

(declare-fun m!4828823 () Bool)

(assert (=> b!4243341 m!4828823))

(assert (=> b!4243341 m!4828823))

(declare-fun m!4828825 () Bool)

(assert (=> b!4243341 m!4828825))

(declare-fun m!4828827 () Bool)

(assert (=> b!4243334 m!4828827))

(assert (=> b!4243334 m!4828827))

(declare-fun m!4828829 () Bool)

(assert (=> b!4243334 m!4828829))

(assert (=> b!4243334 m!4828829))

(declare-fun m!4828831 () Bool)

(assert (=> b!4243334 m!4828831))

(declare-fun m!4828833 () Bool)

(assert (=> b!4243323 m!4828833))

(declare-fun m!4828835 () Bool)

(assert (=> b!4243326 m!4828835))

(declare-fun m!4828837 () Bool)

(assert (=> b!4243324 m!4828837))

(declare-fun m!4828839 () Bool)

(assert (=> b!4243324 m!4828839))

(declare-fun m!4828841 () Bool)

(assert (=> b!4243342 m!4828841))

(declare-fun m!4828843 () Bool)

(assert (=> b!4243329 m!4828843))

(declare-fun m!4828845 () Bool)

(assert (=> b!4243329 m!4828845))

(declare-fun m!4828847 () Bool)

(assert (=> b!4243325 m!4828847))

(declare-fun m!4828849 () Bool)

(assert (=> b!4243325 m!4828849))

(declare-fun m!4828851 () Bool)

(assert (=> b!4243331 m!4828851))

(declare-fun m!4828853 () Bool)

(assert (=> b!4243331 m!4828853))

(check-sat b_and!335971 (not b!4243322) (not b!4243326) tp_is_empty!22673 (not b!4243338) (not b!4243343) (not b!4243328) (not b!4243334) (not b!4243332) (not b!4243323) (not b!4243330) (not b!4243345) (not b!4243327) b_and!335969 (not b_next!126473) b_and!335979 b_and!335973 (not b!4243339) (not b!4243333) (not b_next!126471) (not b_next!126481) (not b!4243342) (not b!4243341) (not b!4243337) (not b!4243321) (not b_next!126475) (not b!4243335) (not b!4243331) (not b_next!126477) (not b!4243324) (not b_next!126479) (not b!4243340) (not b!4243329) b_and!335975 (not b!4243325) b_and!335977)
(check-sat b_and!335971 (not b_next!126481) (not b_next!126475) (not b_next!126477) (not b_next!126479) b_and!335969 (not b_next!126473) b_and!335979 b_and!335973 (not b_next!126471) b_and!335975 b_and!335977)
(get-model)

(declare-fun d!1248379 () Bool)

(declare-fun lt!1507073 () Int)

(assert (=> d!1248379 (>= lt!1507073 0)))

(declare-fun e!2635235 () Int)

(assert (=> d!1248379 (= lt!1507073 e!2635235)))

(declare-fun c!720890 () Bool)

(assert (=> d!1248379 (= c!720890 ((_ is Nil!46930) shorterInput!51))))

(assert (=> d!1248379 (= (size!34378 shorterInput!51) lt!1507073)))

(declare-fun b!4243351 () Bool)

(assert (=> b!4243351 (= e!2635235 0)))

(declare-fun b!4243352 () Bool)

(assert (=> b!4243352 (= e!2635235 (+ 1 (size!34378 (t!351383 shorterInput!51))))))

(assert (= (and d!1248379 c!720890) b!4243351))

(assert (= (and d!1248379 (not c!720890)) b!4243352))

(declare-fun m!4828855 () Bool)

(assert (=> b!4243352 m!4828855))

(assert (=> b!4243329 d!1248379))

(declare-fun d!1248381 () Bool)

(declare-fun lt!1507074 () Int)

(assert (=> d!1248381 (>= lt!1507074 0)))

(declare-fun e!2635236 () Int)

(assert (=> d!1248381 (= lt!1507074 e!2635236)))

(declare-fun c!720891 () Bool)

(assert (=> d!1248381 (= c!720891 ((_ is Nil!46930) longerInput!51))))

(assert (=> d!1248381 (= (size!34378 longerInput!51) lt!1507074)))

(declare-fun b!4243353 () Bool)

(assert (=> b!4243353 (= e!2635236 0)))

(declare-fun b!4243354 () Bool)

(assert (=> b!4243354 (= e!2635236 (+ 1 (size!34378 (t!351383 longerInput!51))))))

(assert (= (and d!1248381 c!720891) b!4243353))

(assert (= (and d!1248381 (not c!720891)) b!4243354))

(declare-fun m!4828857 () Bool)

(assert (=> b!4243354 m!4828857))

(assert (=> b!4243329 d!1248381))

(declare-fun d!1248383 () Bool)

(declare-fun res!1744691 () Bool)

(declare-fun e!2635239 () Bool)

(assert (=> d!1248383 (=> (not res!1744691) (not e!2635239))))

(assert (=> d!1248383 (= res!1744691 (not (isEmpty!27750 (originalCharacters!8280 (h!52352 addTokens!17)))))))

(assert (=> d!1248383 (= (inv!61687 (h!52352 addTokens!17)) e!2635239)))

(declare-fun b!4243359 () Bool)

(declare-fun res!1744692 () Bool)

(assert (=> b!4243359 (=> (not res!1744692) (not e!2635239))))

(declare-fun dynLambda!20127 (Int TokenValue!8166) BalanceConc!27888)

(assert (=> b!4243359 (= res!1744692 (= (originalCharacters!8280 (h!52352 addTokens!17)) (list!16922 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (value!246712 (h!52352 addTokens!17))))))))

(declare-fun b!4243360 () Bool)

(assert (=> b!4243360 (= e!2635239 (= (size!34377 (h!52352 addTokens!17)) (size!34378 (originalCharacters!8280 (h!52352 addTokens!17)))))))

(assert (= (and d!1248383 res!1744691) b!4243359))

(assert (= (and b!4243359 res!1744692) b!4243360))

(declare-fun b_lambda!124979 () Bool)

(assert (=> (not b_lambda!124979) (not b!4243359)))

(declare-fun t!351387 () Bool)

(declare-fun tb!255515 () Bool)

(assert (=> (and b!4243336 (= (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))) t!351387) tb!255515))

(declare-fun b!4243365 () Bool)

(declare-fun e!2635242 () Bool)

(declare-fun tp!1300995 () Bool)

(declare-fun inv!61689 (Conc!14147) Bool)

(assert (=> b!4243365 (= e!2635242 (and (inv!61689 (c!720887 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (value!246712 (h!52352 addTokens!17))))) tp!1300995))))

(declare-fun result!311556 () Bool)

(declare-fun inv!61690 (BalanceConc!27888) Bool)

(assert (=> tb!255515 (= result!311556 (and (inv!61690 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (value!246712 (h!52352 addTokens!17)))) e!2635242))))

(assert (= tb!255515 b!4243365))

(declare-fun m!4828859 () Bool)

(assert (=> b!4243365 m!4828859))

(declare-fun m!4828861 () Bool)

(assert (=> tb!255515 m!4828861))

(assert (=> b!4243359 t!351387))

(declare-fun b_and!335981 () Bool)

(assert (= b_and!335971 (and (=> t!351387 result!311556) b_and!335981)))

(declare-fun t!351389 () Bool)

(declare-fun tb!255517 () Bool)

(assert (=> (and b!4243346 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))) t!351389) tb!255517))

(declare-fun result!311560 () Bool)

(assert (= result!311560 result!311556))

(assert (=> b!4243359 t!351389))

(declare-fun b_and!335983 () Bool)

(assert (= b_and!335975 (and (=> t!351389 result!311560) b_and!335983)))

(declare-fun tb!255519 () Bool)

(declare-fun t!351391 () Bool)

(assert (=> (and b!4243344 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))) t!351391) tb!255519))

(declare-fun result!311562 () Bool)

(assert (= result!311562 result!311556))

(assert (=> b!4243359 t!351391))

(declare-fun b_and!335985 () Bool)

(assert (= b_and!335979 (and (=> t!351391 result!311562) b_and!335985)))

(declare-fun m!4828863 () Bool)

(assert (=> d!1248383 m!4828863))

(declare-fun m!4828865 () Bool)

(assert (=> b!4243359 m!4828865))

(assert (=> b!4243359 m!4828865))

(declare-fun m!4828867 () Bool)

(assert (=> b!4243359 m!4828867))

(declare-fun m!4828869 () Bool)

(assert (=> b!4243360 m!4828869))

(assert (=> b!4243342 d!1248383))

(declare-fun d!1248389 () Bool)

(assert (=> d!1248389 (= (inv!61684 (tag!8800 (rule!11066 (h!52352 addTokens!17)))) (= (mod (str.len (value!246711 (tag!8800 (rule!11066 (h!52352 addTokens!17))))) 2) 0))))

(assert (=> b!4243331 d!1248389))

(declare-fun d!1248391 () Bool)

(declare-fun res!1744698 () Bool)

(declare-fun e!2635248 () Bool)

(assert (=> d!1248391 (=> (not res!1744698) (not e!2635248))))

(declare-fun semiInverseModEq!3457 (Int Int) Bool)

(assert (=> d!1248391 (= res!1744698 (semiInverseModEq!3457 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toValue!10696 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))))))

(assert (=> d!1248391 (= (inv!61688 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) e!2635248)))

(declare-fun b!4243371 () Bool)

(declare-fun equivClasses!3356 (Int Int) Bool)

(assert (=> b!4243371 (= e!2635248 (equivClasses!3356 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toValue!10696 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))))))

(assert (= (and d!1248391 res!1744698) b!4243371))

(declare-fun m!4828875 () Bool)

(assert (=> d!1248391 m!4828875))

(declare-fun m!4828877 () Bool)

(assert (=> b!4243371 m!4828877))

(assert (=> b!4243331 d!1248391))

(declare-fun b!4243395 () Bool)

(declare-fun e!2635263 () List!47054)

(assert (=> b!4243395 (= e!2635263 (_2!25388 (v!41025 lt!1507068)))))

(declare-fun b!4243396 () Bool)

(assert (=> b!4243396 (= e!2635263 (Cons!46930 (h!52350 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068))))) (++!11946 (t!351383 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068))))) (_2!25388 (v!41025 lt!1507068)))))))

(declare-fun b!4243397 () Bool)

(declare-fun res!1744706 () Bool)

(declare-fun e!2635262 () Bool)

(assert (=> b!4243397 (=> (not res!1744706) (not e!2635262))))

(declare-fun lt!1507077 () List!47054)

(assert (=> b!4243397 (= res!1744706 (= (size!34378 lt!1507077) (+ (size!34378 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068))))) (size!34378 (_2!25388 (v!41025 lt!1507068))))))))

(declare-fun d!1248397 () Bool)

(assert (=> d!1248397 e!2635262))

(declare-fun res!1744707 () Bool)

(assert (=> d!1248397 (=> (not res!1744707) (not e!2635262))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7380 (List!47054) (InoxSet C!25880))

(assert (=> d!1248397 (= res!1744707 (= (content!7380 lt!1507077) ((_ map or) (content!7380 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068))))) (content!7380 (_2!25388 (v!41025 lt!1507068))))))))

(assert (=> d!1248397 (= lt!1507077 e!2635263)))

(declare-fun c!720900 () Bool)

(assert (=> d!1248397 (= c!720900 ((_ is Nil!46930) (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068))))))))

(assert (=> d!1248397 (= (++!11946 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068)))) (_2!25388 (v!41025 lt!1507068))) lt!1507077)))

(declare-fun b!4243398 () Bool)

(assert (=> b!4243398 (= e!2635262 (or (not (= (_2!25388 (v!41025 lt!1507068)) Nil!46930)) (= lt!1507077 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068)))))))))

(assert (= (and d!1248397 c!720900) b!4243395))

(assert (= (and d!1248397 (not c!720900)) b!4243396))

(assert (= (and d!1248397 res!1744707) b!4243397))

(assert (= (and b!4243397 res!1744706) b!4243398))

(declare-fun m!4828885 () Bool)

(assert (=> b!4243396 m!4828885))

(declare-fun m!4828887 () Bool)

(assert (=> b!4243397 m!4828887))

(assert (=> b!4243397 m!4828823))

(declare-fun m!4828889 () Bool)

(assert (=> b!4243397 m!4828889))

(assert (=> b!4243397 m!4828847))

(declare-fun m!4828891 () Bool)

(assert (=> d!1248397 m!4828891))

(assert (=> d!1248397 m!4828823))

(declare-fun m!4828893 () Bool)

(assert (=> d!1248397 m!4828893))

(declare-fun m!4828895 () Bool)

(assert (=> d!1248397 m!4828895))

(assert (=> b!4243341 d!1248397))

(declare-fun d!1248401 () Bool)

(declare-fun list!16923 (Conc!14147) List!47054)

(assert (=> d!1248401 (= (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507068)))) (list!16923 (c!720887 (charsOf!5286 (_1!25388 (v!41025 lt!1507068))))))))

(declare-fun bs!598456 () Bool)

(assert (= bs!598456 d!1248401))

(declare-fun m!4828897 () Bool)

(assert (=> bs!598456 m!4828897))

(assert (=> b!4243341 d!1248401))

(declare-fun d!1248403 () Bool)

(declare-fun lt!1507080 () BalanceConc!27888)

(assert (=> d!1248403 (= (list!16922 lt!1507080) (originalCharacters!8280 (_1!25388 (v!41025 lt!1507068))))))

(assert (=> d!1248403 (= lt!1507080 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068))))) (value!246712 (_1!25388 (v!41025 lt!1507068)))))))

(assert (=> d!1248403 (= (charsOf!5286 (_1!25388 (v!41025 lt!1507068))) lt!1507080)))

(declare-fun b_lambda!124981 () Bool)

(assert (=> (not b_lambda!124981) (not d!1248403)))

(declare-fun t!351393 () Bool)

(declare-fun tb!255521 () Bool)

(assert (=> (and b!4243336 (= (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068)))))) t!351393) tb!255521))

(declare-fun b!4243399 () Bool)

(declare-fun e!2635264 () Bool)

(declare-fun tp!1300996 () Bool)

(assert (=> b!4243399 (= e!2635264 (and (inv!61689 (c!720887 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068))))) (value!246712 (_1!25388 (v!41025 lt!1507068)))))) tp!1300996))))

(declare-fun result!311564 () Bool)

(assert (=> tb!255521 (= result!311564 (and (inv!61690 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068))))) (value!246712 (_1!25388 (v!41025 lt!1507068))))) e!2635264))))

(assert (= tb!255521 b!4243399))

(declare-fun m!4828899 () Bool)

(assert (=> b!4243399 m!4828899))

(declare-fun m!4828901 () Bool)

(assert (=> tb!255521 m!4828901))

(assert (=> d!1248403 t!351393))

(declare-fun b_and!335987 () Bool)

(assert (= b_and!335981 (and (=> t!351393 result!311564) b_and!335987)))

(declare-fun tb!255523 () Bool)

(declare-fun t!351395 () Bool)

(assert (=> (and b!4243346 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068)))))) t!351395) tb!255523))

(declare-fun result!311566 () Bool)

(assert (= result!311566 result!311564))

(assert (=> d!1248403 t!351395))

(declare-fun b_and!335989 () Bool)

(assert (= b_and!335983 (and (=> t!351395 result!311566) b_and!335989)))

(declare-fun t!351397 () Bool)

(declare-fun tb!255525 () Bool)

(assert (=> (and b!4243344 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068)))))) t!351397) tb!255525))

(declare-fun result!311568 () Bool)

(assert (= result!311568 result!311564))

(assert (=> d!1248403 t!351397))

(declare-fun b_and!335991 () Bool)

(assert (= b_and!335985 (and (=> t!351397 result!311568) b_and!335991)))

(declare-fun m!4828903 () Bool)

(assert (=> d!1248403 m!4828903))

(declare-fun m!4828905 () Bool)

(assert (=> d!1248403 m!4828905))

(assert (=> b!4243341 d!1248403))

(declare-fun b!4243473 () Bool)

(declare-fun e!2635304 () Option!10072)

(declare-fun call!293869 () Option!10072)

(assert (=> b!4243473 (= e!2635304 call!293869)))

(declare-fun b!4243474 () Bool)

(declare-fun res!1744742 () Bool)

(declare-fun e!2635302 () Bool)

(assert (=> b!4243474 (=> (not res!1744742) (not e!2635302))))

(declare-fun lt!1507123 () Option!10072)

(declare-fun get!15254 (Option!10072) tuple2!44508)

(assert (=> b!4243474 (= res!1744742 (< (size!34378 (_2!25388 (get!15254 lt!1507123))) (size!34378 shorterInput!51)))))

(declare-fun b!4243475 () Bool)

(declare-fun res!1744737 () Bool)

(assert (=> b!4243475 (=> (not res!1744737) (not e!2635302))))

(declare-fun apply!10756 (TokenValueInjection!15760 BalanceConc!27888) TokenValue!8166)

(declare-fun seqFromList!5816 (List!47054) BalanceConc!27888)

(assert (=> b!4243475 (= res!1744737 (= (value!246712 (_1!25388 (get!15254 lt!1507123))) (apply!10756 (transformation!7936 (rule!11066 (_1!25388 (get!15254 lt!1507123)))) (seqFromList!5816 (originalCharacters!8280 (_1!25388 (get!15254 lt!1507123)))))))))

(declare-fun b!4243476 () Bool)

(declare-fun res!1744738 () Bool)

(assert (=> b!4243476 (=> (not res!1744738) (not e!2635302))))

(assert (=> b!4243476 (= res!1744738 (= (++!11946 (list!16922 (charsOf!5286 (_1!25388 (get!15254 lt!1507123)))) (_2!25388 (get!15254 lt!1507123))) shorterInput!51))))

(declare-fun b!4243477 () Bool)

(declare-fun e!2635303 () Bool)

(assert (=> b!4243477 (= e!2635303 e!2635302)))

(declare-fun res!1744739 () Bool)

(assert (=> b!4243477 (=> (not res!1744739) (not e!2635302))))

(declare-fun isDefined!7444 (Option!10072) Bool)

(assert (=> b!4243477 (= res!1744739 (isDefined!7444 lt!1507123))))

(declare-fun bm!293864 () Bool)

(declare-fun maxPrefixOneRule!3454 (LexerInterface!7531 Rule!15672 List!47054) Option!10072)

(assert (=> bm!293864 (= call!293869 (maxPrefixOneRule!3454 thiss!21540 (h!52351 rules!2932) shorterInput!51))))

(declare-fun d!1248405 () Bool)

(assert (=> d!1248405 e!2635303))

(declare-fun res!1744740 () Bool)

(assert (=> d!1248405 (=> res!1744740 e!2635303)))

(declare-fun isEmpty!27753 (Option!10072) Bool)

(assert (=> d!1248405 (= res!1744740 (isEmpty!27753 lt!1507123))))

(assert (=> d!1248405 (= lt!1507123 e!2635304)))

(declare-fun c!720923 () Bool)

(assert (=> d!1248405 (= c!720923 (and ((_ is Cons!46931) rules!2932) ((_ is Nil!46931) (t!351384 rules!2932))))))

(declare-fun lt!1507120 () Unit!65991)

(declare-fun lt!1507122 () Unit!65991)

(assert (=> d!1248405 (= lt!1507120 lt!1507122)))

(declare-fun isPrefix!4729 (List!47054 List!47054) Bool)

(assert (=> d!1248405 (isPrefix!4729 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3126 (List!47054 List!47054) Unit!65991)

(assert (=> d!1248405 (= lt!1507122 (lemmaIsPrefixRefl!3126 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2978 (LexerInterface!7531 List!47055) Bool)

(assert (=> d!1248405 (rulesValidInductive!2978 thiss!21540 rules!2932)))

(assert (=> d!1248405 (= (maxPrefix!4489 thiss!21540 rules!2932 shorterInput!51) lt!1507123)))

(declare-fun b!4243478 () Bool)

(declare-fun lt!1507121 () Option!10072)

(declare-fun lt!1507119 () Option!10072)

(assert (=> b!4243478 (= e!2635304 (ite (and ((_ is None!10071) lt!1507121) ((_ is None!10071) lt!1507119)) None!10071 (ite ((_ is None!10071) lt!1507119) lt!1507121 (ite ((_ is None!10071) lt!1507121) lt!1507119 (ite (>= (size!34377 (_1!25388 (v!41025 lt!1507121))) (size!34377 (_1!25388 (v!41025 lt!1507119)))) lt!1507121 lt!1507119)))))))

(assert (=> b!4243478 (= lt!1507121 call!293869)))

(assert (=> b!4243478 (= lt!1507119 (maxPrefix!4489 thiss!21540 (t!351384 rules!2932) shorterInput!51))))

(declare-fun b!4243479 () Bool)

(declare-fun res!1744743 () Bool)

(assert (=> b!4243479 (=> (not res!1744743) (not e!2635302))))

(declare-fun matchR!6451 (Regex!12841 List!47054) Bool)

(assert (=> b!4243479 (= res!1744743 (matchR!6451 (regex!7936 (rule!11066 (_1!25388 (get!15254 lt!1507123)))) (list!16922 (charsOf!5286 (_1!25388 (get!15254 lt!1507123))))))))

(declare-fun b!4243480 () Bool)

(declare-fun contains!9735 (List!47055 Rule!15672) Bool)

(assert (=> b!4243480 (= e!2635302 (contains!9735 rules!2932 (rule!11066 (_1!25388 (get!15254 lt!1507123)))))))

(declare-fun b!4243481 () Bool)

(declare-fun res!1744741 () Bool)

(assert (=> b!4243481 (=> (not res!1744741) (not e!2635302))))

(assert (=> b!4243481 (= res!1744741 (= (list!16922 (charsOf!5286 (_1!25388 (get!15254 lt!1507123)))) (originalCharacters!8280 (_1!25388 (get!15254 lt!1507123)))))))

(assert (= (and d!1248405 c!720923) b!4243473))

(assert (= (and d!1248405 (not c!720923)) b!4243478))

(assert (= (or b!4243473 b!4243478) bm!293864))

(assert (= (and d!1248405 (not res!1744740)) b!4243477))

(assert (= (and b!4243477 res!1744739) b!4243481))

(assert (= (and b!4243481 res!1744741) b!4243474))

(assert (= (and b!4243474 res!1744742) b!4243476))

(assert (= (and b!4243476 res!1744738) b!4243475))

(assert (= (and b!4243475 res!1744737) b!4243479))

(assert (= (and b!4243479 res!1744743) b!4243480))

(declare-fun m!4828969 () Bool)

(assert (=> b!4243479 m!4828969))

(declare-fun m!4828971 () Bool)

(assert (=> b!4243479 m!4828971))

(assert (=> b!4243479 m!4828971))

(declare-fun m!4828973 () Bool)

(assert (=> b!4243479 m!4828973))

(assert (=> b!4243479 m!4828973))

(declare-fun m!4828975 () Bool)

(assert (=> b!4243479 m!4828975))

(assert (=> b!4243476 m!4828969))

(assert (=> b!4243476 m!4828971))

(assert (=> b!4243476 m!4828971))

(assert (=> b!4243476 m!4828973))

(assert (=> b!4243476 m!4828973))

(declare-fun m!4828977 () Bool)

(assert (=> b!4243476 m!4828977))

(declare-fun m!4828979 () Bool)

(assert (=> b!4243477 m!4828979))

(assert (=> b!4243474 m!4828969))

(declare-fun m!4828981 () Bool)

(assert (=> b!4243474 m!4828981))

(assert (=> b!4243474 m!4828843))

(assert (=> b!4243481 m!4828969))

(assert (=> b!4243481 m!4828971))

(assert (=> b!4243481 m!4828971))

(assert (=> b!4243481 m!4828973))

(declare-fun m!4828983 () Bool)

(assert (=> b!4243478 m!4828983))

(declare-fun m!4828985 () Bool)

(assert (=> bm!293864 m!4828985))

(assert (=> b!4243475 m!4828969))

(declare-fun m!4828987 () Bool)

(assert (=> b!4243475 m!4828987))

(assert (=> b!4243475 m!4828987))

(declare-fun m!4828989 () Bool)

(assert (=> b!4243475 m!4828989))

(assert (=> b!4243480 m!4828969))

(declare-fun m!4828991 () Bool)

(assert (=> b!4243480 m!4828991))

(declare-fun m!4828993 () Bool)

(assert (=> d!1248405 m!4828993))

(declare-fun m!4828995 () Bool)

(assert (=> d!1248405 m!4828995))

(declare-fun m!4828997 () Bool)

(assert (=> d!1248405 m!4828997))

(declare-fun m!4828999 () Bool)

(assert (=> d!1248405 m!4828999))

(assert (=> b!4243338 d!1248405))

(declare-fun b!4243482 () Bool)

(declare-fun e!2635307 () Option!10072)

(declare-fun call!293870 () Option!10072)

(assert (=> b!4243482 (= e!2635307 call!293870)))

(declare-fun b!4243483 () Bool)

(declare-fun res!1744749 () Bool)

(declare-fun e!2635305 () Bool)

(assert (=> b!4243483 (=> (not res!1744749) (not e!2635305))))

(declare-fun lt!1507128 () Option!10072)

(assert (=> b!4243483 (= res!1744749 (< (size!34378 (_2!25388 (get!15254 lt!1507128))) (size!34378 longerInput!51)))))

(declare-fun b!4243484 () Bool)

(declare-fun res!1744744 () Bool)

(assert (=> b!4243484 (=> (not res!1744744) (not e!2635305))))

(assert (=> b!4243484 (= res!1744744 (= (value!246712 (_1!25388 (get!15254 lt!1507128))) (apply!10756 (transformation!7936 (rule!11066 (_1!25388 (get!15254 lt!1507128)))) (seqFromList!5816 (originalCharacters!8280 (_1!25388 (get!15254 lt!1507128)))))))))

(declare-fun b!4243485 () Bool)

(declare-fun res!1744745 () Bool)

(assert (=> b!4243485 (=> (not res!1744745) (not e!2635305))))

(assert (=> b!4243485 (= res!1744745 (= (++!11946 (list!16922 (charsOf!5286 (_1!25388 (get!15254 lt!1507128)))) (_2!25388 (get!15254 lt!1507128))) longerInput!51))))

(declare-fun b!4243486 () Bool)

(declare-fun e!2635306 () Bool)

(assert (=> b!4243486 (= e!2635306 e!2635305)))

(declare-fun res!1744746 () Bool)

(assert (=> b!4243486 (=> (not res!1744746) (not e!2635305))))

(assert (=> b!4243486 (= res!1744746 (isDefined!7444 lt!1507128))))

(declare-fun bm!293865 () Bool)

(assert (=> bm!293865 (= call!293870 (maxPrefixOneRule!3454 thiss!21540 (h!52351 rules!2932) longerInput!51))))

(declare-fun d!1248435 () Bool)

(assert (=> d!1248435 e!2635306))

(declare-fun res!1744747 () Bool)

(assert (=> d!1248435 (=> res!1744747 e!2635306)))

(assert (=> d!1248435 (= res!1744747 (isEmpty!27753 lt!1507128))))

(assert (=> d!1248435 (= lt!1507128 e!2635307)))

(declare-fun c!720924 () Bool)

(assert (=> d!1248435 (= c!720924 (and ((_ is Cons!46931) rules!2932) ((_ is Nil!46931) (t!351384 rules!2932))))))

(declare-fun lt!1507125 () Unit!65991)

(declare-fun lt!1507127 () Unit!65991)

(assert (=> d!1248435 (= lt!1507125 lt!1507127)))

(assert (=> d!1248435 (isPrefix!4729 longerInput!51 longerInput!51)))

(assert (=> d!1248435 (= lt!1507127 (lemmaIsPrefixRefl!3126 longerInput!51 longerInput!51))))

(assert (=> d!1248435 (rulesValidInductive!2978 thiss!21540 rules!2932)))

(assert (=> d!1248435 (= (maxPrefix!4489 thiss!21540 rules!2932 longerInput!51) lt!1507128)))

(declare-fun b!4243487 () Bool)

(declare-fun lt!1507126 () Option!10072)

(declare-fun lt!1507124 () Option!10072)

(assert (=> b!4243487 (= e!2635307 (ite (and ((_ is None!10071) lt!1507126) ((_ is None!10071) lt!1507124)) None!10071 (ite ((_ is None!10071) lt!1507124) lt!1507126 (ite ((_ is None!10071) lt!1507126) lt!1507124 (ite (>= (size!34377 (_1!25388 (v!41025 lt!1507126))) (size!34377 (_1!25388 (v!41025 lt!1507124)))) lt!1507126 lt!1507124)))))))

(assert (=> b!4243487 (= lt!1507126 call!293870)))

(assert (=> b!4243487 (= lt!1507124 (maxPrefix!4489 thiss!21540 (t!351384 rules!2932) longerInput!51))))

(declare-fun b!4243488 () Bool)

(declare-fun res!1744750 () Bool)

(assert (=> b!4243488 (=> (not res!1744750) (not e!2635305))))

(assert (=> b!4243488 (= res!1744750 (matchR!6451 (regex!7936 (rule!11066 (_1!25388 (get!15254 lt!1507128)))) (list!16922 (charsOf!5286 (_1!25388 (get!15254 lt!1507128))))))))

(declare-fun b!4243489 () Bool)

(assert (=> b!4243489 (= e!2635305 (contains!9735 rules!2932 (rule!11066 (_1!25388 (get!15254 lt!1507128)))))))

(declare-fun b!4243490 () Bool)

(declare-fun res!1744748 () Bool)

(assert (=> b!4243490 (=> (not res!1744748) (not e!2635305))))

(assert (=> b!4243490 (= res!1744748 (= (list!16922 (charsOf!5286 (_1!25388 (get!15254 lt!1507128)))) (originalCharacters!8280 (_1!25388 (get!15254 lt!1507128)))))))

(assert (= (and d!1248435 c!720924) b!4243482))

(assert (= (and d!1248435 (not c!720924)) b!4243487))

(assert (= (or b!4243482 b!4243487) bm!293865))

(assert (= (and d!1248435 (not res!1744747)) b!4243486))

(assert (= (and b!4243486 res!1744746) b!4243490))

(assert (= (and b!4243490 res!1744748) b!4243483))

(assert (= (and b!4243483 res!1744749) b!4243485))

(assert (= (and b!4243485 res!1744745) b!4243484))

(assert (= (and b!4243484 res!1744744) b!4243488))

(assert (= (and b!4243488 res!1744750) b!4243489))

(declare-fun m!4829001 () Bool)

(assert (=> b!4243488 m!4829001))

(declare-fun m!4829003 () Bool)

(assert (=> b!4243488 m!4829003))

(assert (=> b!4243488 m!4829003))

(declare-fun m!4829005 () Bool)

(assert (=> b!4243488 m!4829005))

(assert (=> b!4243488 m!4829005))

(declare-fun m!4829007 () Bool)

(assert (=> b!4243488 m!4829007))

(assert (=> b!4243485 m!4829001))

(assert (=> b!4243485 m!4829003))

(assert (=> b!4243485 m!4829003))

(assert (=> b!4243485 m!4829005))

(assert (=> b!4243485 m!4829005))

(declare-fun m!4829009 () Bool)

(assert (=> b!4243485 m!4829009))

(declare-fun m!4829011 () Bool)

(assert (=> b!4243486 m!4829011))

(assert (=> b!4243483 m!4829001))

(declare-fun m!4829013 () Bool)

(assert (=> b!4243483 m!4829013))

(assert (=> b!4243483 m!4828845))

(assert (=> b!4243490 m!4829001))

(assert (=> b!4243490 m!4829003))

(assert (=> b!4243490 m!4829003))

(assert (=> b!4243490 m!4829005))

(declare-fun m!4829015 () Bool)

(assert (=> b!4243487 m!4829015))

(declare-fun m!4829017 () Bool)

(assert (=> bm!293865 m!4829017))

(assert (=> b!4243484 m!4829001))

(declare-fun m!4829019 () Bool)

(assert (=> b!4243484 m!4829019))

(assert (=> b!4243484 m!4829019))

(declare-fun m!4829021 () Bool)

(assert (=> b!4243484 m!4829021))

(assert (=> b!4243489 m!4829001))

(declare-fun m!4829023 () Bool)

(assert (=> b!4243489 m!4829023))

(declare-fun m!4829025 () Bool)

(assert (=> d!1248435 m!4829025))

(declare-fun m!4829027 () Bool)

(assert (=> d!1248435 m!4829027))

(declare-fun m!4829029 () Bool)

(assert (=> d!1248435 m!4829029))

(assert (=> d!1248435 m!4828999))

(assert (=> b!4243338 d!1248435))

(declare-fun d!1248437 () Bool)

(assert (=> d!1248437 (= (inv!61684 (tag!8800 (rule!11066 (h!52352 tokens!581)))) (= (mod (str.len (value!246711 (tag!8800 (rule!11066 (h!52352 tokens!581))))) 2) 0))))

(assert (=> b!4243327 d!1248437))

(declare-fun d!1248439 () Bool)

(declare-fun res!1744751 () Bool)

(declare-fun e!2635308 () Bool)

(assert (=> d!1248439 (=> (not res!1744751) (not e!2635308))))

(assert (=> d!1248439 (= res!1744751 (semiInverseModEq!3457 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toValue!10696 (transformation!7936 (rule!11066 (h!52352 tokens!581))))))))

(assert (=> d!1248439 (= (inv!61688 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) e!2635308)))

(declare-fun b!4243491 () Bool)

(assert (=> b!4243491 (= e!2635308 (equivClasses!3356 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toValue!10696 (transformation!7936 (rule!11066 (h!52352 tokens!581))))))))

(assert (= (and d!1248439 res!1744751) b!4243491))

(declare-fun m!4829031 () Bool)

(assert (=> d!1248439 m!4829031))

(declare-fun m!4829033 () Bool)

(assert (=> b!4243491 m!4829033))

(assert (=> b!4243327 d!1248439))

(declare-fun d!1248441 () Bool)

(assert (=> d!1248441 (= (isEmpty!27749 addTokens!17) ((_ is Nil!46932) addTokens!17))))

(assert (=> b!4243339 d!1248441))

(declare-fun d!1248443 () Bool)

(assert (=> d!1248443 (= (isEmpty!27751 rules!2932) ((_ is Nil!46931) rules!2932))))

(assert (=> b!4243335 d!1248443))

(declare-fun d!1248445 () Bool)

(assert (=> d!1248445 (= (inv!61684 (tag!8800 (h!52351 rules!2932))) (= (mod (str.len (value!246711 (tag!8800 (h!52351 rules!2932)))) 2) 0))))

(assert (=> b!4243324 d!1248445))

(declare-fun d!1248447 () Bool)

(declare-fun res!1744752 () Bool)

(declare-fun e!2635309 () Bool)

(assert (=> d!1248447 (=> (not res!1744752) (not e!2635309))))

(assert (=> d!1248447 (= res!1744752 (semiInverseModEq!3457 (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toValue!10696 (transformation!7936 (h!52351 rules!2932)))))))

(assert (=> d!1248447 (= (inv!61688 (transformation!7936 (h!52351 rules!2932))) e!2635309)))

(declare-fun b!4243492 () Bool)

(assert (=> b!4243492 (= e!2635309 (equivClasses!3356 (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toValue!10696 (transformation!7936 (h!52351 rules!2932)))))))

(assert (= (and d!1248447 res!1744752) b!4243492))

(declare-fun m!4829035 () Bool)

(assert (=> d!1248447 m!4829035))

(declare-fun m!4829037 () Bool)

(assert (=> b!4243492 m!4829037))

(assert (=> b!4243324 d!1248447))

(declare-fun b!4243575 () Bool)

(declare-fun e!2635349 () Bool)

(declare-fun e!2635350 () Bool)

(assert (=> b!4243575 (= e!2635349 e!2635350)))

(declare-fun res!1744800 () Bool)

(declare-fun lt!1507167 () tuple2!44506)

(assert (=> b!4243575 (= res!1744800 (< (size!34378 (_2!25387 lt!1507167)) (size!34378 (_2!25388 (v!41025 lt!1507068)))))))

(assert (=> b!4243575 (=> (not res!1744800) (not e!2635350))))

(declare-fun d!1248449 () Bool)

(assert (=> d!1248449 e!2635349))

(declare-fun c!720939 () Bool)

(assert (=> d!1248449 (= c!720939 (> (size!34379 (_1!25387 lt!1507167)) 0))))

(declare-fun e!2635351 () tuple2!44506)

(assert (=> d!1248449 (= lt!1507167 e!2635351)))

(declare-fun c!720940 () Bool)

(declare-fun lt!1507166 () Option!10072)

(assert (=> d!1248449 (= c!720940 ((_ is Some!10071) lt!1507166))))

(assert (=> d!1248449 (= lt!1507166 (maxPrefix!4489 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507068))))))

(assert (=> d!1248449 (= (lexList!2037 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507068))) lt!1507167)))

(declare-fun b!4243576 () Bool)

(assert (=> b!4243576 (= e!2635350 (not (isEmpty!27749 (_1!25387 lt!1507167))))))

(declare-fun b!4243577 () Bool)

(assert (=> b!4243577 (= e!2635351 (tuple2!44507 Nil!46932 (_2!25388 (v!41025 lt!1507068))))))

(declare-fun b!4243578 () Bool)

(assert (=> b!4243578 (= e!2635349 (= (_2!25387 lt!1507167) (_2!25388 (v!41025 lt!1507068))))))

(declare-fun b!4243579 () Bool)

(declare-fun lt!1507165 () tuple2!44506)

(assert (=> b!4243579 (= e!2635351 (tuple2!44507 (Cons!46932 (_1!25388 (v!41025 lt!1507166)) (_1!25387 lt!1507165)) (_2!25387 lt!1507165)))))

(assert (=> b!4243579 (= lt!1507165 (lexList!2037 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507166))))))

(assert (= (and d!1248449 c!720940) b!4243579))

(assert (= (and d!1248449 (not c!720940)) b!4243577))

(assert (= (and d!1248449 c!720939) b!4243575))

(assert (= (and d!1248449 (not c!720939)) b!4243578))

(assert (= (and b!4243575 res!1744800) b!4243576))

(declare-fun m!4829171 () Bool)

(assert (=> b!4243575 m!4829171))

(assert (=> b!4243575 m!4828847))

(declare-fun m!4829173 () Bool)

(assert (=> d!1248449 m!4829173))

(declare-fun m!4829175 () Bool)

(assert (=> d!1248449 m!4829175))

(declare-fun m!4829179 () Bool)

(assert (=> b!4243576 m!4829179))

(declare-fun m!4829183 () Bool)

(assert (=> b!4243579 m!4829183))

(assert (=> b!4243345 d!1248449))

(declare-fun b!4243647 () Bool)

(declare-fun e!2635396 () List!47056)

(assert (=> b!4243647 (= e!2635396 (Cons!46932 (h!52352 lt!1507066) (++!11947 (t!351385 lt!1507066) tokens!581)))))

(declare-fun d!1248477 () Bool)

(declare-fun e!2635395 () Bool)

(assert (=> d!1248477 e!2635395))

(declare-fun res!1744808 () Bool)

(assert (=> d!1248477 (=> (not res!1744808) (not e!2635395))))

(declare-fun lt!1507170 () List!47056)

(declare-fun content!7382 (List!47056) (InoxSet Token!14498))

(assert (=> d!1248477 (= res!1744808 (= (content!7382 lt!1507170) ((_ map or) (content!7382 lt!1507066) (content!7382 tokens!581))))))

(assert (=> d!1248477 (= lt!1507170 e!2635396)))

(declare-fun c!720945 () Bool)

(assert (=> d!1248477 (= c!720945 ((_ is Nil!46932) lt!1507066))))

(assert (=> d!1248477 (= (++!11947 lt!1507066 tokens!581) lt!1507170)))

(declare-fun b!4243649 () Bool)

(assert (=> b!4243649 (= e!2635395 (or (not (= tokens!581 Nil!46932)) (= lt!1507170 lt!1507066)))))

(declare-fun b!4243646 () Bool)

(assert (=> b!4243646 (= e!2635396 tokens!581)))

(declare-fun b!4243648 () Bool)

(declare-fun res!1744809 () Bool)

(assert (=> b!4243648 (=> (not res!1744809) (not e!2635395))))

(assert (=> b!4243648 (= res!1744809 (= (size!34379 lt!1507170) (+ (size!34379 lt!1507066) (size!34379 tokens!581))))))

(assert (= (and d!1248477 c!720945) b!4243646))

(assert (= (and d!1248477 (not c!720945)) b!4243647))

(assert (= (and d!1248477 res!1744808) b!4243648))

(assert (= (and b!4243648 res!1744809) b!4243649))

(declare-fun m!4829199 () Bool)

(assert (=> b!4243647 m!4829199))

(declare-fun m!4829201 () Bool)

(assert (=> d!1248477 m!4829201))

(declare-fun m!4829203 () Bool)

(assert (=> d!1248477 m!4829203))

(declare-fun m!4829205 () Bool)

(assert (=> d!1248477 m!4829205))

(declare-fun m!4829207 () Bool)

(assert (=> b!4243648 m!4829207))

(declare-fun m!4829209 () Bool)

(assert (=> b!4243648 m!4829209))

(declare-fun m!4829211 () Bool)

(assert (=> b!4243648 m!4829211))

(assert (=> b!4243345 d!1248477))

(declare-fun d!1248481 () Bool)

(assert (=> d!1248481 (not (= (lexList!2037 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507068))) (tuple2!44507 (++!11947 lt!1507066 tokens!581) suffix!1262)))))

(declare-fun lt!1507173 () Unit!65991)

(declare-fun choose!25952 (LexerInterface!7531 List!47055 List!47054 List!47054 List!47056 List!47054 List!47056) Unit!65991)

(assert (=> d!1248481 (= lt!1507173 (choose!25952 thiss!21540 rules!2932 longerInput!51 (_2!25388 (v!41025 lt!1507068)) tokens!581 suffix!1262 lt!1507066))))

(assert (=> d!1248481 (not (isEmpty!27751 rules!2932))))

(assert (=> d!1248481 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!172 thiss!21540 rules!2932 longerInput!51 (_2!25388 (v!41025 lt!1507068)) tokens!581 suffix!1262 lt!1507066) lt!1507173)))

(declare-fun bs!598460 () Bool)

(assert (= bs!598460 d!1248481))

(assert (=> bs!598460 m!4828807))

(assert (=> bs!598460 m!4828805))

(declare-fun m!4829229 () Bool)

(assert (=> bs!598460 m!4829229))

(assert (=> bs!598460 m!4828789))

(assert (=> b!4243345 d!1248481))

(declare-fun b!4243661 () Bool)

(declare-fun e!2635412 () List!47056)

(assert (=> b!4243661 (= e!2635412 (Cons!46932 (h!52352 addTokens!17) (++!11947 (t!351385 addTokens!17) tokens!581)))))

(declare-fun d!1248483 () Bool)

(declare-fun e!2635411 () Bool)

(assert (=> d!1248483 e!2635411))

(declare-fun res!1744810 () Bool)

(assert (=> d!1248483 (=> (not res!1744810) (not e!2635411))))

(declare-fun lt!1507174 () List!47056)

(assert (=> d!1248483 (= res!1744810 (= (content!7382 lt!1507174) ((_ map or) (content!7382 addTokens!17) (content!7382 tokens!581))))))

(assert (=> d!1248483 (= lt!1507174 e!2635412)))

(declare-fun c!720946 () Bool)

(assert (=> d!1248483 (= c!720946 ((_ is Nil!46932) addTokens!17))))

(assert (=> d!1248483 (= (++!11947 addTokens!17 tokens!581) lt!1507174)))

(declare-fun b!4243663 () Bool)

(assert (=> b!4243663 (= e!2635411 (or (not (= tokens!581 Nil!46932)) (= lt!1507174 addTokens!17)))))

(declare-fun b!4243660 () Bool)

(assert (=> b!4243660 (= e!2635412 tokens!581)))

(declare-fun b!4243662 () Bool)

(declare-fun res!1744811 () Bool)

(assert (=> b!4243662 (=> (not res!1744811) (not e!2635411))))

(assert (=> b!4243662 (= res!1744811 (= (size!34379 lt!1507174) (+ (size!34379 addTokens!17) (size!34379 tokens!581))))))

(assert (= (and d!1248483 c!720946) b!4243660))

(assert (= (and d!1248483 (not c!720946)) b!4243661))

(assert (= (and d!1248483 res!1744810) b!4243662))

(assert (= (and b!4243662 res!1744811) b!4243663))

(declare-fun m!4829231 () Bool)

(assert (=> b!4243661 m!4829231))

(declare-fun m!4829233 () Bool)

(assert (=> d!1248483 m!4829233))

(declare-fun m!4829235 () Bool)

(assert (=> d!1248483 m!4829235))

(assert (=> d!1248483 m!4829205))

(declare-fun m!4829237 () Bool)

(assert (=> b!4243662 m!4829237))

(assert (=> b!4243662 m!4828797))

(assert (=> b!4243662 m!4829211))

(assert (=> b!4243345 d!1248483))

(declare-fun b!4243664 () Bool)

(declare-fun e!2635413 () Bool)

(declare-fun e!2635414 () Bool)

(assert (=> b!4243664 (= e!2635413 e!2635414)))

(declare-fun res!1744812 () Bool)

(declare-fun lt!1507177 () tuple2!44506)

(assert (=> b!4243664 (= res!1744812 (< (size!34378 (_2!25387 lt!1507177)) (size!34378 shorterInput!51)))))

(assert (=> b!4243664 (=> (not res!1744812) (not e!2635414))))

(declare-fun d!1248485 () Bool)

(assert (=> d!1248485 e!2635413))

(declare-fun c!720947 () Bool)

(assert (=> d!1248485 (= c!720947 (> (size!34379 (_1!25387 lt!1507177)) 0))))

(declare-fun e!2635415 () tuple2!44506)

(assert (=> d!1248485 (= lt!1507177 e!2635415)))

(declare-fun c!720948 () Bool)

(declare-fun lt!1507176 () Option!10072)

(assert (=> d!1248485 (= c!720948 ((_ is Some!10071) lt!1507176))))

(assert (=> d!1248485 (= lt!1507176 (maxPrefix!4489 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> d!1248485 (= (lexList!2037 thiss!21540 rules!2932 shorterInput!51) lt!1507177)))

(declare-fun b!4243665 () Bool)

(assert (=> b!4243665 (= e!2635414 (not (isEmpty!27749 (_1!25387 lt!1507177))))))

(declare-fun b!4243666 () Bool)

(assert (=> b!4243666 (= e!2635415 (tuple2!44507 Nil!46932 shorterInput!51))))

(declare-fun b!4243667 () Bool)

(assert (=> b!4243667 (= e!2635413 (= (_2!25387 lt!1507177) shorterInput!51))))

(declare-fun b!4243668 () Bool)

(declare-fun lt!1507175 () tuple2!44506)

(assert (=> b!4243668 (= e!2635415 (tuple2!44507 (Cons!46932 (_1!25388 (v!41025 lt!1507176)) (_1!25387 lt!1507175)) (_2!25387 lt!1507175)))))

(assert (=> b!4243668 (= lt!1507175 (lexList!2037 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507176))))))

(assert (= (and d!1248485 c!720948) b!4243668))

(assert (= (and d!1248485 (not c!720948)) b!4243666))

(assert (= (and d!1248485 c!720947) b!4243664))

(assert (= (and d!1248485 (not c!720947)) b!4243667))

(assert (= (and b!4243664 res!1744812) b!4243665))

(declare-fun m!4829239 () Bool)

(assert (=> b!4243664 m!4829239))

(assert (=> b!4243664 m!4828843))

(declare-fun m!4829241 () Bool)

(assert (=> d!1248485 m!4829241))

(assert (=> d!1248485 m!4828793))

(declare-fun m!4829243 () Bool)

(assert (=> b!4243665 m!4829243))

(declare-fun m!4829245 () Bool)

(assert (=> b!4243668 m!4829245))

(assert (=> b!4243345 d!1248485))

(declare-fun d!1248487 () Bool)

(declare-fun c!720954 () Bool)

(assert (=> d!1248487 (= c!720954 ((_ is IntegerValue!24498) (value!246712 (h!52352 tokens!581))))))

(declare-fun e!2635422 () Bool)

(assert (=> d!1248487 (= (inv!21 (value!246712 (h!52352 tokens!581))) e!2635422)))

(declare-fun b!4243679 () Bool)

(declare-fun e!2635424 () Bool)

(declare-fun inv!15 (TokenValue!8166) Bool)

(assert (=> b!4243679 (= e!2635424 (inv!15 (value!246712 (h!52352 tokens!581))))))

(declare-fun b!4243680 () Bool)

(declare-fun inv!16 (TokenValue!8166) Bool)

(assert (=> b!4243680 (= e!2635422 (inv!16 (value!246712 (h!52352 tokens!581))))))

(declare-fun b!4243681 () Bool)

(declare-fun res!1744815 () Bool)

(assert (=> b!4243681 (=> res!1744815 e!2635424)))

(assert (=> b!4243681 (= res!1744815 (not ((_ is IntegerValue!24500) (value!246712 (h!52352 tokens!581)))))))

(declare-fun e!2635423 () Bool)

(assert (=> b!4243681 (= e!2635423 e!2635424)))

(declare-fun b!4243682 () Bool)

(assert (=> b!4243682 (= e!2635422 e!2635423)))

(declare-fun c!720953 () Bool)

(assert (=> b!4243682 (= c!720953 ((_ is IntegerValue!24499) (value!246712 (h!52352 tokens!581))))))

(declare-fun b!4243683 () Bool)

(declare-fun inv!17 (TokenValue!8166) Bool)

(assert (=> b!4243683 (= e!2635423 (inv!17 (value!246712 (h!52352 tokens!581))))))

(assert (= (and d!1248487 c!720954) b!4243680))

(assert (= (and d!1248487 (not c!720954)) b!4243682))

(assert (= (and b!4243682 c!720953) b!4243683))

(assert (= (and b!4243682 (not c!720953)) b!4243681))

(assert (= (and b!4243681 (not res!1744815)) b!4243679))

(declare-fun m!4829247 () Bool)

(assert (=> b!4243679 m!4829247))

(declare-fun m!4829249 () Bool)

(assert (=> b!4243680 m!4829249))

(declare-fun m!4829251 () Bool)

(assert (=> b!4243683 m!4829251))

(assert (=> b!4243326 d!1248487))

(declare-fun d!1248489 () Bool)

(declare-fun lt!1507178 () Int)

(assert (=> d!1248489 (>= lt!1507178 0)))

(declare-fun e!2635425 () Int)

(assert (=> d!1248489 (= lt!1507178 e!2635425)))

(declare-fun c!720955 () Bool)

(assert (=> d!1248489 (= c!720955 ((_ is Nil!46930) (_2!25388 (v!41025 lt!1507068))))))

(assert (=> d!1248489 (= (size!34378 (_2!25388 (v!41025 lt!1507068))) lt!1507178)))

(declare-fun b!4243684 () Bool)

(assert (=> b!4243684 (= e!2635425 0)))

(declare-fun b!4243685 () Bool)

(assert (=> b!4243685 (= e!2635425 (+ 1 (size!34378 (t!351383 (_2!25388 (v!41025 lt!1507068))))))))

(assert (= (and d!1248489 c!720955) b!4243684))

(assert (= (and d!1248489 (not c!720955)) b!4243685))

(declare-fun m!4829253 () Bool)

(assert (=> b!4243685 m!4829253))

(assert (=> b!4243325 d!1248489))

(declare-fun d!1248491 () Bool)

(assert (=> d!1248491 (= (tail!6846 addTokens!17) (t!351385 addTokens!17))))

(assert (=> b!4243325 d!1248491))

(declare-fun d!1248493 () Bool)

(declare-fun res!1744816 () Bool)

(declare-fun e!2635426 () Bool)

(assert (=> d!1248493 (=> (not res!1744816) (not e!2635426))))

(assert (=> d!1248493 (= res!1744816 (not (isEmpty!27750 (originalCharacters!8280 (h!52352 tokens!581)))))))

(assert (=> d!1248493 (= (inv!61687 (h!52352 tokens!581)) e!2635426)))

(declare-fun b!4243686 () Bool)

(declare-fun res!1744817 () Bool)

(assert (=> b!4243686 (=> (not res!1744817) (not e!2635426))))

(assert (=> b!4243686 (= res!1744817 (= (originalCharacters!8280 (h!52352 tokens!581)) (list!16922 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (value!246712 (h!52352 tokens!581))))))))

(declare-fun b!4243687 () Bool)

(assert (=> b!4243687 (= e!2635426 (= (size!34377 (h!52352 tokens!581)) (size!34378 (originalCharacters!8280 (h!52352 tokens!581)))))))

(assert (= (and d!1248493 res!1744816) b!4243686))

(assert (= (and b!4243686 res!1744817) b!4243687))

(declare-fun b_lambda!124995 () Bool)

(assert (=> (not b_lambda!124995) (not b!4243686)))

(declare-fun tb!255575 () Bool)

(declare-fun t!351447 () Bool)

(assert (=> (and b!4243336 (= (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581))))) t!351447) tb!255575))

(declare-fun b!4243688 () Bool)

(declare-fun e!2635427 () Bool)

(declare-fun tp!1301067 () Bool)

(assert (=> b!4243688 (= e!2635427 (and (inv!61689 (c!720887 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (value!246712 (h!52352 tokens!581))))) tp!1301067))))

(declare-fun result!311628 () Bool)

(assert (=> tb!255575 (= result!311628 (and (inv!61690 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (value!246712 (h!52352 tokens!581)))) e!2635427))))

(assert (= tb!255575 b!4243688))

(declare-fun m!4829255 () Bool)

(assert (=> b!4243688 m!4829255))

(declare-fun m!4829257 () Bool)

(assert (=> tb!255575 m!4829257))

(assert (=> b!4243686 t!351447))

(declare-fun b_and!336029 () Bool)

(assert (= b_and!335987 (and (=> t!351447 result!311628) b_and!336029)))

(declare-fun tb!255577 () Bool)

(declare-fun t!351449 () Bool)

(assert (=> (and b!4243346 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581))))) t!351449) tb!255577))

(declare-fun result!311630 () Bool)

(assert (= result!311630 result!311628))

(assert (=> b!4243686 t!351449))

(declare-fun b_and!336031 () Bool)

(assert (= b_and!335989 (and (=> t!351449 result!311630) b_and!336031)))

(declare-fun t!351451 () Bool)

(declare-fun tb!255579 () Bool)

(assert (=> (and b!4243344 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581))))) t!351451) tb!255579))

(declare-fun result!311632 () Bool)

(assert (= result!311632 result!311628))

(assert (=> b!4243686 t!351451))

(declare-fun b_and!336033 () Bool)

(assert (= b_and!335991 (and (=> t!351451 result!311632) b_and!336033)))

(declare-fun m!4829259 () Bool)

(assert (=> d!1248493 m!4829259))

(declare-fun m!4829261 () Bool)

(assert (=> b!4243686 m!4829261))

(assert (=> b!4243686 m!4829261))

(declare-fun m!4829263 () Bool)

(assert (=> b!4243686 m!4829263))

(declare-fun m!4829265 () Bool)

(assert (=> b!4243687 m!4829265))

(assert (=> b!4243322 d!1248493))

(declare-fun d!1248495 () Bool)

(assert (=> d!1248495 (= (isEmpty!27750 longerInput!51) ((_ is Nil!46930) longerInput!51))))

(assert (=> b!4243343 d!1248495))

(declare-fun d!1248497 () Bool)

(declare-fun lt!1507181 () Int)

(assert (=> d!1248497 (>= lt!1507181 0)))

(declare-fun e!2635430 () Int)

(assert (=> d!1248497 (= lt!1507181 e!2635430)))

(declare-fun c!720958 () Bool)

(assert (=> d!1248497 (= c!720958 ((_ is Nil!46932) addTokens!17))))

(assert (=> d!1248497 (= (size!34379 addTokens!17) lt!1507181)))

(declare-fun b!4243693 () Bool)

(assert (=> b!4243693 (= e!2635430 0)))

(declare-fun b!4243694 () Bool)

(assert (=> b!4243694 (= e!2635430 (+ 1 (size!34379 (t!351385 addTokens!17))))))

(assert (= (and d!1248497 c!720958) b!4243693))

(assert (= (and d!1248497 (not c!720958)) b!4243694))

(declare-fun m!4829267 () Bool)

(assert (=> b!4243694 m!4829267))

(assert (=> b!4243332 d!1248497))

(declare-fun d!1248499 () Bool)

(declare-fun res!1744820 () Bool)

(declare-fun e!2635433 () Bool)

(assert (=> d!1248499 (=> (not res!1744820) (not e!2635433))))

(declare-fun rulesValid!3079 (LexerInterface!7531 List!47055) Bool)

(assert (=> d!1248499 (= res!1744820 (rulesValid!3079 thiss!21540 rules!2932))))

(assert (=> d!1248499 (= (rulesInvariant!6642 thiss!21540 rules!2932) e!2635433)))

(declare-fun b!4243697 () Bool)

(declare-datatypes ((List!47058 0))(
  ( (Nil!46934) (Cons!46934 (h!52354 String!54760) (t!351483 List!47058)) )
))
(declare-fun noDuplicateTag!3240 (LexerInterface!7531 List!47055 List!47058) Bool)

(assert (=> b!4243697 (= e!2635433 (noDuplicateTag!3240 thiss!21540 rules!2932 Nil!46934))))

(assert (= (and d!1248499 res!1744820) b!4243697))

(declare-fun m!4829269 () Bool)

(assert (=> d!1248499 m!4829269))

(declare-fun m!4829271 () Bool)

(assert (=> b!4243697 m!4829271))

(assert (=> b!4243321 d!1248499))

(declare-fun b!4243698 () Bool)

(declare-fun e!2635435 () List!47054)

(assert (=> b!4243698 (= e!2635435 (_2!25388 (v!41025 lt!1507070)))))

(declare-fun b!4243699 () Bool)

(assert (=> b!4243699 (= e!2635435 (Cons!46930 (h!52350 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070))))) (++!11946 (t!351383 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070))))) (_2!25388 (v!41025 lt!1507070)))))))

(declare-fun b!4243700 () Bool)

(declare-fun res!1744821 () Bool)

(declare-fun e!2635434 () Bool)

(assert (=> b!4243700 (=> (not res!1744821) (not e!2635434))))

(declare-fun lt!1507182 () List!47054)

(assert (=> b!4243700 (= res!1744821 (= (size!34378 lt!1507182) (+ (size!34378 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070))))) (size!34378 (_2!25388 (v!41025 lt!1507070))))))))

(declare-fun d!1248501 () Bool)

(assert (=> d!1248501 e!2635434))

(declare-fun res!1744822 () Bool)

(assert (=> d!1248501 (=> (not res!1744822) (not e!2635434))))

(assert (=> d!1248501 (= res!1744822 (= (content!7380 lt!1507182) ((_ map or) (content!7380 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070))))) (content!7380 (_2!25388 (v!41025 lt!1507070))))))))

(assert (=> d!1248501 (= lt!1507182 e!2635435)))

(declare-fun c!720959 () Bool)

(assert (=> d!1248501 (= c!720959 ((_ is Nil!46930) (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070))))))))

(assert (=> d!1248501 (= (++!11946 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070)))) (_2!25388 (v!41025 lt!1507070))) lt!1507182)))

(declare-fun b!4243701 () Bool)

(assert (=> b!4243701 (= e!2635434 (or (not (= (_2!25388 (v!41025 lt!1507070)) Nil!46930)) (= lt!1507182 (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070)))))))))

(assert (= (and d!1248501 c!720959) b!4243698))

(assert (= (and d!1248501 (not c!720959)) b!4243699))

(assert (= (and d!1248501 res!1744822) b!4243700))

(assert (= (and b!4243700 res!1744821) b!4243701))

(declare-fun m!4829273 () Bool)

(assert (=> b!4243699 m!4829273))

(declare-fun m!4829275 () Bool)

(assert (=> b!4243700 m!4829275))

(assert (=> b!4243700 m!4828829))

(declare-fun m!4829277 () Bool)

(assert (=> b!4243700 m!4829277))

(declare-fun m!4829279 () Bool)

(assert (=> b!4243700 m!4829279))

(declare-fun m!4829281 () Bool)

(assert (=> d!1248501 m!4829281))

(assert (=> d!1248501 m!4828829))

(declare-fun m!4829283 () Bool)

(assert (=> d!1248501 m!4829283))

(declare-fun m!4829285 () Bool)

(assert (=> d!1248501 m!4829285))

(assert (=> b!4243334 d!1248501))

(declare-fun d!1248503 () Bool)

(assert (=> d!1248503 (= (list!16922 (charsOf!5286 (_1!25388 (v!41025 lt!1507070)))) (list!16923 (c!720887 (charsOf!5286 (_1!25388 (v!41025 lt!1507070))))))))

(declare-fun bs!598461 () Bool)

(assert (= bs!598461 d!1248503))

(declare-fun m!4829287 () Bool)

(assert (=> bs!598461 m!4829287))

(assert (=> b!4243334 d!1248503))

(declare-fun d!1248505 () Bool)

(declare-fun lt!1507183 () BalanceConc!27888)

(assert (=> d!1248505 (= (list!16922 lt!1507183) (originalCharacters!8280 (_1!25388 (v!41025 lt!1507070))))))

(assert (=> d!1248505 (= lt!1507183 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070))))) (value!246712 (_1!25388 (v!41025 lt!1507070)))))))

(assert (=> d!1248505 (= (charsOf!5286 (_1!25388 (v!41025 lt!1507070))) lt!1507183)))

(declare-fun b_lambda!124997 () Bool)

(assert (=> (not b_lambda!124997) (not d!1248505)))

(declare-fun t!351453 () Bool)

(declare-fun tb!255581 () Bool)

(assert (=> (and b!4243336 (= (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070)))))) t!351453) tb!255581))

(declare-fun b!4243702 () Bool)

(declare-fun e!2635436 () Bool)

(declare-fun tp!1301068 () Bool)

(assert (=> b!4243702 (= e!2635436 (and (inv!61689 (c!720887 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070))))) (value!246712 (_1!25388 (v!41025 lt!1507070)))))) tp!1301068))))

(declare-fun result!311634 () Bool)

(assert (=> tb!255581 (= result!311634 (and (inv!61690 (dynLambda!20127 (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070))))) (value!246712 (_1!25388 (v!41025 lt!1507070))))) e!2635436))))

(assert (= tb!255581 b!4243702))

(declare-fun m!4829289 () Bool)

(assert (=> b!4243702 m!4829289))

(declare-fun m!4829291 () Bool)

(assert (=> tb!255581 m!4829291))

(assert (=> d!1248505 t!351453))

(declare-fun b_and!336035 () Bool)

(assert (= b_and!336029 (and (=> t!351453 result!311634) b_and!336035)))

(declare-fun t!351455 () Bool)

(declare-fun tb!255583 () Bool)

(assert (=> (and b!4243346 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070)))))) t!351455) tb!255583))

(declare-fun result!311636 () Bool)

(assert (= result!311636 result!311634))

(assert (=> d!1248505 t!351455))

(declare-fun b_and!336037 () Bool)

(assert (= b_and!336031 (and (=> t!351455 result!311636) b_and!336037)))

(declare-fun t!351457 () Bool)

(declare-fun tb!255585 () Bool)

(assert (=> (and b!4243344 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070)))))) t!351457) tb!255585))

(declare-fun result!311638 () Bool)

(assert (= result!311638 result!311634))

(assert (=> d!1248505 t!351457))

(declare-fun b_and!336039 () Bool)

(assert (= b_and!336033 (and (=> t!351457 result!311638) b_and!336039)))

(declare-fun m!4829293 () Bool)

(assert (=> d!1248505 m!4829293))

(declare-fun m!4829295 () Bool)

(assert (=> d!1248505 m!4829295))

(assert (=> b!4243334 d!1248505))

(declare-fun b!4243703 () Bool)

(declare-fun e!2635437 () Bool)

(declare-fun e!2635438 () Bool)

(assert (=> b!4243703 (= e!2635437 e!2635438)))

(declare-fun res!1744823 () Bool)

(declare-fun lt!1507186 () tuple2!44506)

(assert (=> b!4243703 (= res!1744823 (< (size!34378 (_2!25387 lt!1507186)) (size!34378 longerInput!51)))))

(assert (=> b!4243703 (=> (not res!1744823) (not e!2635438))))

(declare-fun d!1248507 () Bool)

(assert (=> d!1248507 e!2635437))

(declare-fun c!720960 () Bool)

(assert (=> d!1248507 (= c!720960 (> (size!34379 (_1!25387 lt!1507186)) 0))))

(declare-fun e!2635439 () tuple2!44506)

(assert (=> d!1248507 (= lt!1507186 e!2635439)))

(declare-fun c!720961 () Bool)

(declare-fun lt!1507185 () Option!10072)

(assert (=> d!1248507 (= c!720961 ((_ is Some!10071) lt!1507185))))

(assert (=> d!1248507 (= lt!1507185 (maxPrefix!4489 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1248507 (= (lexList!2037 thiss!21540 rules!2932 longerInput!51) lt!1507186)))

(declare-fun b!4243704 () Bool)

(assert (=> b!4243704 (= e!2635438 (not (isEmpty!27749 (_1!25387 lt!1507186))))))

(declare-fun b!4243705 () Bool)

(assert (=> b!4243705 (= e!2635439 (tuple2!44507 Nil!46932 longerInput!51))))

(declare-fun b!4243706 () Bool)

(assert (=> b!4243706 (= e!2635437 (= (_2!25387 lt!1507186) longerInput!51))))

(declare-fun b!4243707 () Bool)

(declare-fun lt!1507184 () tuple2!44506)

(assert (=> b!4243707 (= e!2635439 (tuple2!44507 (Cons!46932 (_1!25388 (v!41025 lt!1507185)) (_1!25387 lt!1507184)) (_2!25387 lt!1507184)))))

(assert (=> b!4243707 (= lt!1507184 (lexList!2037 thiss!21540 rules!2932 (_2!25388 (v!41025 lt!1507185))))))

(assert (= (and d!1248507 c!720961) b!4243707))

(assert (= (and d!1248507 (not c!720961)) b!4243705))

(assert (= (and d!1248507 c!720960) b!4243703))

(assert (= (and d!1248507 (not c!720960)) b!4243706))

(assert (= (and b!4243703 res!1744823) b!4243704))

(declare-fun m!4829297 () Bool)

(assert (=> b!4243703 m!4829297))

(assert (=> b!4243703 m!4828845))

(declare-fun m!4829299 () Bool)

(assert (=> d!1248507 m!4829299))

(assert (=> d!1248507 m!4828795))

(declare-fun m!4829301 () Bool)

(assert (=> b!4243704 m!4829301))

(declare-fun m!4829303 () Bool)

(assert (=> b!4243707 m!4829303))

(assert (=> b!4243323 d!1248507))

(declare-fun d!1248509 () Bool)

(declare-fun c!720963 () Bool)

(assert (=> d!1248509 (= c!720963 ((_ is IntegerValue!24498) (value!246712 (h!52352 addTokens!17))))))

(declare-fun e!2635440 () Bool)

(assert (=> d!1248509 (= (inv!21 (value!246712 (h!52352 addTokens!17))) e!2635440)))

(declare-fun b!4243708 () Bool)

(declare-fun e!2635442 () Bool)

(assert (=> b!4243708 (= e!2635442 (inv!15 (value!246712 (h!52352 addTokens!17))))))

(declare-fun b!4243709 () Bool)

(assert (=> b!4243709 (= e!2635440 (inv!16 (value!246712 (h!52352 addTokens!17))))))

(declare-fun b!4243710 () Bool)

(declare-fun res!1744824 () Bool)

(assert (=> b!4243710 (=> res!1744824 e!2635442)))

(assert (=> b!4243710 (= res!1744824 (not ((_ is IntegerValue!24500) (value!246712 (h!52352 addTokens!17)))))))

(declare-fun e!2635441 () Bool)

(assert (=> b!4243710 (= e!2635441 e!2635442)))

(declare-fun b!4243711 () Bool)

(assert (=> b!4243711 (= e!2635440 e!2635441)))

(declare-fun c!720962 () Bool)

(assert (=> b!4243711 (= c!720962 ((_ is IntegerValue!24499) (value!246712 (h!52352 addTokens!17))))))

(declare-fun b!4243712 () Bool)

(assert (=> b!4243712 (= e!2635441 (inv!17 (value!246712 (h!52352 addTokens!17))))))

(assert (= (and d!1248509 c!720963) b!4243709))

(assert (= (and d!1248509 (not c!720963)) b!4243711))

(assert (= (and b!4243711 c!720962) b!4243712))

(assert (= (and b!4243711 (not c!720962)) b!4243710))

(assert (= (and b!4243710 (not res!1744824)) b!4243708))

(declare-fun m!4829305 () Bool)

(assert (=> b!4243708 m!4829305))

(declare-fun m!4829307 () Bool)

(assert (=> b!4243709 m!4829307))

(declare-fun m!4829309 () Bool)

(assert (=> b!4243712 m!4829309))

(assert (=> b!4243333 d!1248509))

(declare-fun b!4243717 () Bool)

(declare-fun e!2635445 () Bool)

(declare-fun tp!1301071 () Bool)

(assert (=> b!4243717 (= e!2635445 (and tp_is_empty!22673 tp!1301071))))

(assert (=> b!4243330 (= tp!1300990 e!2635445)))

(assert (= (and b!4243330 ((_ is Cons!46930) (t!351383 suffix!1262))) b!4243717))

(declare-fun b!4243718 () Bool)

(declare-fun e!2635446 () Bool)

(declare-fun tp!1301072 () Bool)

(assert (=> b!4243718 (= e!2635446 (and tp_is_empty!22673 tp!1301072))))

(assert (=> b!4243340 (= tp!1300983 e!2635446)))

(assert (= (and b!4243340 ((_ is Cons!46930) (t!351383 longerInput!51))) b!4243718))

(declare-fun b!4243732 () Bool)

(declare-fun b_free!125791 () Bool)

(declare-fun b_next!126495 () Bool)

(assert (=> b!4243732 (= b_free!125791 (not b_next!126495))))

(declare-fun tp!1301084 () Bool)

(declare-fun b_and!336041 () Bool)

(assert (=> b!4243732 (= tp!1301084 b_and!336041)))

(declare-fun b_free!125793 () Bool)

(declare-fun b_next!126497 () Bool)

(assert (=> b!4243732 (= b_free!125793 (not b_next!126497))))

(declare-fun t!351459 () Bool)

(declare-fun tb!255587 () Bool)

(assert (=> (and b!4243732 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))) t!351459) tb!255587))

(declare-fun result!311644 () Bool)

(assert (= result!311644 result!311556))

(assert (=> b!4243359 t!351459))

(declare-fun t!351461 () Bool)

(declare-fun tb!255589 () Bool)

(assert (=> (and b!4243732 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068)))))) t!351461) tb!255589))

(declare-fun result!311646 () Bool)

(assert (= result!311646 result!311564))

(assert (=> d!1248403 t!351461))

(declare-fun t!351463 () Bool)

(declare-fun tb!255591 () Bool)

(assert (=> (and b!4243732 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581))))) t!351463) tb!255591))

(declare-fun result!311648 () Bool)

(assert (= result!311648 result!311628))

(assert (=> b!4243686 t!351463))

(declare-fun t!351465 () Bool)

(declare-fun tb!255593 () Bool)

(assert (=> (and b!4243732 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070)))))) t!351465) tb!255593))

(declare-fun result!311650 () Bool)

(assert (= result!311650 result!311634))

(assert (=> d!1248505 t!351465))

(declare-fun tp!1301085 () Bool)

(declare-fun b_and!336043 () Bool)

(assert (=> b!4243732 (= tp!1301085 (and (=> t!351459 result!311644) (=> t!351461 result!311646) (=> t!351463 result!311648) (=> t!351465 result!311650) b_and!336043))))

(declare-fun e!2635461 () Bool)

(assert (=> b!4243732 (= e!2635461 (and tp!1301084 tp!1301085))))

(declare-fun tp!1301087 () Bool)

(declare-fun b!4243730 () Bool)

(declare-fun e!2635463 () Bool)

(declare-fun e!2635464 () Bool)

(assert (=> b!4243730 (= e!2635463 (and (inv!21 (value!246712 (h!52352 (t!351385 addTokens!17)))) e!2635464 tp!1301087))))

(declare-fun e!2635459 () Bool)

(declare-fun tp!1301086 () Bool)

(declare-fun b!4243729 () Bool)

(assert (=> b!4243729 (= e!2635459 (and (inv!61687 (h!52352 (t!351385 addTokens!17))) e!2635463 tp!1301086))))

(declare-fun tp!1301083 () Bool)

(declare-fun b!4243731 () Bool)

(assert (=> b!4243731 (= e!2635464 (and tp!1301083 (inv!61684 (tag!8800 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (inv!61688 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) e!2635461))))

(assert (=> b!4243342 (= tp!1300982 e!2635459)))

(assert (= b!4243731 b!4243732))

(assert (= b!4243730 b!4243731))

(assert (= b!4243729 b!4243730))

(assert (= (and b!4243342 ((_ is Cons!46932) (t!351385 addTokens!17))) b!4243729))

(declare-fun m!4829311 () Bool)

(assert (=> b!4243730 m!4829311))

(declare-fun m!4829313 () Bool)

(assert (=> b!4243729 m!4829313))

(declare-fun m!4829315 () Bool)

(assert (=> b!4243731 m!4829315))

(declare-fun m!4829317 () Bool)

(assert (=> b!4243731 m!4829317))

(declare-fun b!4243746 () Bool)

(declare-fun e!2635467 () Bool)

(declare-fun tp!1301100 () Bool)

(declare-fun tp!1301102 () Bool)

(assert (=> b!4243746 (= e!2635467 (and tp!1301100 tp!1301102))))

(declare-fun b!4243744 () Bool)

(declare-fun tp!1301098 () Bool)

(declare-fun tp!1301101 () Bool)

(assert (=> b!4243744 (= e!2635467 (and tp!1301098 tp!1301101))))

(declare-fun b!4243743 () Bool)

(assert (=> b!4243743 (= e!2635467 tp_is_empty!22673)))

(assert (=> b!4243331 (= tp!1300992 e!2635467)))

(declare-fun b!4243745 () Bool)

(declare-fun tp!1301099 () Bool)

(assert (=> b!4243745 (= e!2635467 tp!1301099)))

(assert (= (and b!4243331 ((_ is ElementMatch!12841) (regex!7936 (rule!11066 (h!52352 addTokens!17))))) b!4243743))

(assert (= (and b!4243331 ((_ is Concat!21008) (regex!7936 (rule!11066 (h!52352 addTokens!17))))) b!4243744))

(assert (= (and b!4243331 ((_ is Star!12841) (regex!7936 (rule!11066 (h!52352 addTokens!17))))) b!4243745))

(assert (= (and b!4243331 ((_ is Union!12841) (regex!7936 (rule!11066 (h!52352 addTokens!17))))) b!4243746))

(declare-fun b!4243750 () Bool)

(declare-fun e!2635468 () Bool)

(declare-fun tp!1301105 () Bool)

(declare-fun tp!1301107 () Bool)

(assert (=> b!4243750 (= e!2635468 (and tp!1301105 tp!1301107))))

(declare-fun b!4243748 () Bool)

(declare-fun tp!1301103 () Bool)

(declare-fun tp!1301106 () Bool)

(assert (=> b!4243748 (= e!2635468 (and tp!1301103 tp!1301106))))

(declare-fun b!4243747 () Bool)

(assert (=> b!4243747 (= e!2635468 tp_is_empty!22673)))

(assert (=> b!4243327 (= tp!1300980 e!2635468)))

(declare-fun b!4243749 () Bool)

(declare-fun tp!1301104 () Bool)

(assert (=> b!4243749 (= e!2635468 tp!1301104)))

(assert (= (and b!4243327 ((_ is ElementMatch!12841) (regex!7936 (rule!11066 (h!52352 tokens!581))))) b!4243747))

(assert (= (and b!4243327 ((_ is Concat!21008) (regex!7936 (rule!11066 (h!52352 tokens!581))))) b!4243748))

(assert (= (and b!4243327 ((_ is Star!12841) (regex!7936 (rule!11066 (h!52352 tokens!581))))) b!4243749))

(assert (= (and b!4243327 ((_ is Union!12841) (regex!7936 (rule!11066 (h!52352 tokens!581))))) b!4243750))

(declare-fun b!4243761 () Bool)

(declare-fun b_free!125795 () Bool)

(declare-fun b_next!126499 () Bool)

(assert (=> b!4243761 (= b_free!125795 (not b_next!126499))))

(declare-fun tp!1301119 () Bool)

(declare-fun b_and!336045 () Bool)

(assert (=> b!4243761 (= tp!1301119 b_and!336045)))

(declare-fun b_free!125797 () Bool)

(declare-fun b_next!126501 () Bool)

(assert (=> b!4243761 (= b_free!125797 (not b_next!126501))))

(declare-fun tb!255595 () Bool)

(declare-fun t!351467 () Bool)

(assert (=> (and b!4243761 (= (toChars!10555 (transformation!7936 (h!52351 (t!351384 rules!2932)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))) t!351467) tb!255595))

(declare-fun result!311656 () Bool)

(assert (= result!311656 result!311556))

(assert (=> b!4243359 t!351467))

(declare-fun t!351469 () Bool)

(declare-fun tb!255597 () Bool)

(assert (=> (and b!4243761 (= (toChars!10555 (transformation!7936 (h!52351 (t!351384 rules!2932)))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068)))))) t!351469) tb!255597))

(declare-fun result!311658 () Bool)

(assert (= result!311658 result!311564))

(assert (=> d!1248403 t!351469))

(declare-fun t!351471 () Bool)

(declare-fun tb!255599 () Bool)

(assert (=> (and b!4243761 (= (toChars!10555 (transformation!7936 (h!52351 (t!351384 rules!2932)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581))))) t!351471) tb!255599))

(declare-fun result!311660 () Bool)

(assert (= result!311660 result!311628))

(assert (=> b!4243686 t!351471))

(declare-fun t!351473 () Bool)

(declare-fun tb!255601 () Bool)

(assert (=> (and b!4243761 (= (toChars!10555 (transformation!7936 (h!52351 (t!351384 rules!2932)))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070)))))) t!351473) tb!255601))

(declare-fun result!311662 () Bool)

(assert (= result!311662 result!311634))

(assert (=> d!1248505 t!351473))

(declare-fun b_and!336047 () Bool)

(declare-fun tp!1301117 () Bool)

(assert (=> b!4243761 (= tp!1301117 (and (=> t!351467 result!311656) (=> t!351469 result!311658) (=> t!351471 result!311660) (=> t!351473 result!311662) b_and!336047))))

(declare-fun e!2635478 () Bool)

(assert (=> b!4243761 (= e!2635478 (and tp!1301119 tp!1301117))))

(declare-fun e!2635477 () Bool)

(declare-fun b!4243760 () Bool)

(declare-fun tp!1301116 () Bool)

(assert (=> b!4243760 (= e!2635477 (and tp!1301116 (inv!61684 (tag!8800 (h!52351 (t!351384 rules!2932)))) (inv!61688 (transformation!7936 (h!52351 (t!351384 rules!2932)))) e!2635478))))

(declare-fun b!4243759 () Bool)

(declare-fun e!2635479 () Bool)

(declare-fun tp!1301118 () Bool)

(assert (=> b!4243759 (= e!2635479 (and e!2635477 tp!1301118))))

(assert (=> b!4243337 (= tp!1300984 e!2635479)))

(assert (= b!4243760 b!4243761))

(assert (= b!4243759 b!4243760))

(assert (= (and b!4243337 ((_ is Cons!46931) (t!351384 rules!2932))) b!4243759))

(declare-fun m!4829319 () Bool)

(assert (=> b!4243760 m!4829319))

(declare-fun m!4829321 () Bool)

(assert (=> b!4243760 m!4829321))

(declare-fun b!4243762 () Bool)

(declare-fun e!2635481 () Bool)

(declare-fun tp!1301120 () Bool)

(assert (=> b!4243762 (= e!2635481 (and tp_is_empty!22673 tp!1301120))))

(assert (=> b!4243328 (= tp!1300989 e!2635481)))

(assert (= (and b!4243328 ((_ is Cons!46930) (t!351383 shorterInput!51))) b!4243762))

(declare-fun b!4243766 () Bool)

(declare-fun e!2635482 () Bool)

(declare-fun tp!1301123 () Bool)

(declare-fun tp!1301125 () Bool)

(assert (=> b!4243766 (= e!2635482 (and tp!1301123 tp!1301125))))

(declare-fun b!4243764 () Bool)

(declare-fun tp!1301121 () Bool)

(declare-fun tp!1301124 () Bool)

(assert (=> b!4243764 (= e!2635482 (and tp!1301121 tp!1301124))))

(declare-fun b!4243763 () Bool)

(assert (=> b!4243763 (= e!2635482 tp_is_empty!22673)))

(assert (=> b!4243324 (= tp!1300991 e!2635482)))

(declare-fun b!4243765 () Bool)

(declare-fun tp!1301122 () Bool)

(assert (=> b!4243765 (= e!2635482 tp!1301122)))

(assert (= (and b!4243324 ((_ is ElementMatch!12841) (regex!7936 (h!52351 rules!2932)))) b!4243763))

(assert (= (and b!4243324 ((_ is Concat!21008) (regex!7936 (h!52351 rules!2932)))) b!4243764))

(assert (= (and b!4243324 ((_ is Star!12841) (regex!7936 (h!52351 rules!2932)))) b!4243765))

(assert (= (and b!4243324 ((_ is Union!12841) (regex!7936 (h!52351 rules!2932)))) b!4243766))

(declare-fun b!4243767 () Bool)

(declare-fun e!2635483 () Bool)

(declare-fun tp!1301126 () Bool)

(assert (=> b!4243767 (= e!2635483 (and tp_is_empty!22673 tp!1301126))))

(assert (=> b!4243326 (= tp!1300985 e!2635483)))

(assert (= (and b!4243326 ((_ is Cons!46930) (originalCharacters!8280 (h!52352 tokens!581)))) b!4243767))

(declare-fun b!4243771 () Bool)

(declare-fun b_free!125799 () Bool)

(declare-fun b_next!126503 () Bool)

(assert (=> b!4243771 (= b_free!125799 (not b_next!126503))))

(declare-fun tp!1301128 () Bool)

(declare-fun b_and!336049 () Bool)

(assert (=> b!4243771 (= tp!1301128 b_and!336049)))

(declare-fun b_free!125801 () Bool)

(declare-fun b_next!126505 () Bool)

(assert (=> b!4243771 (= b_free!125801 (not b_next!126505))))

(declare-fun tb!255603 () Bool)

(declare-fun t!351475 () Bool)

(assert (=> (and b!4243771 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17))))) t!351475) tb!255603))

(declare-fun result!311664 () Bool)

(assert (= result!311664 result!311556))

(assert (=> b!4243359 t!351475))

(declare-fun t!351477 () Bool)

(declare-fun tb!255605 () Bool)

(assert (=> (and b!4243771 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507068)))))) t!351477) tb!255605))

(declare-fun result!311666 () Bool)

(assert (= result!311666 result!311564))

(assert (=> d!1248403 t!351477))

(declare-fun t!351479 () Bool)

(declare-fun tb!255607 () Bool)

(assert (=> (and b!4243771 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581))))) t!351479) tb!255607))

(declare-fun result!311668 () Bool)

(assert (= result!311668 result!311628))

(assert (=> b!4243686 t!351479))

(declare-fun tb!255609 () Bool)

(declare-fun t!351481 () Bool)

(assert (=> (and b!4243771 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) (toChars!10555 (transformation!7936 (rule!11066 (_1!25388 (v!41025 lt!1507070)))))) t!351481) tb!255609))

(declare-fun result!311670 () Bool)

(assert (= result!311670 result!311634))

(assert (=> d!1248505 t!351481))

(declare-fun b_and!336051 () Bool)

(declare-fun tp!1301129 () Bool)

(assert (=> b!4243771 (= tp!1301129 (and (=> t!351475 result!311664) (=> t!351477 result!311666) (=> t!351479 result!311668) (=> t!351481 result!311670) b_and!336051))))

(declare-fun e!2635486 () Bool)

(assert (=> b!4243771 (= e!2635486 (and tp!1301128 tp!1301129))))

(declare-fun e!2635489 () Bool)

(declare-fun b!4243769 () Bool)

(declare-fun e!2635488 () Bool)

(declare-fun tp!1301131 () Bool)

(assert (=> b!4243769 (= e!2635488 (and (inv!21 (value!246712 (h!52352 (t!351385 tokens!581)))) e!2635489 tp!1301131))))

(declare-fun b!4243768 () Bool)

(declare-fun e!2635484 () Bool)

(declare-fun tp!1301130 () Bool)

(assert (=> b!4243768 (= e!2635484 (and (inv!61687 (h!52352 (t!351385 tokens!581))) e!2635488 tp!1301130))))

(declare-fun tp!1301127 () Bool)

(declare-fun b!4243770 () Bool)

(assert (=> b!4243770 (= e!2635489 (and tp!1301127 (inv!61684 (tag!8800 (rule!11066 (h!52352 (t!351385 tokens!581))))) (inv!61688 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) e!2635486))))

(assert (=> b!4243322 (= tp!1300987 e!2635484)))

(assert (= b!4243770 b!4243771))

(assert (= b!4243769 b!4243770))

(assert (= b!4243768 b!4243769))

(assert (= (and b!4243322 ((_ is Cons!46932) (t!351385 tokens!581))) b!4243768))

(declare-fun m!4829323 () Bool)

(assert (=> b!4243769 m!4829323))

(declare-fun m!4829325 () Bool)

(assert (=> b!4243768 m!4829325))

(declare-fun m!4829327 () Bool)

(assert (=> b!4243770 m!4829327))

(declare-fun m!4829329 () Bool)

(assert (=> b!4243770 m!4829329))

(declare-fun b!4243772 () Bool)

(declare-fun e!2635490 () Bool)

(declare-fun tp!1301132 () Bool)

(assert (=> b!4243772 (= e!2635490 (and tp_is_empty!22673 tp!1301132))))

(assert (=> b!4243333 (= tp!1300986 e!2635490)))

(assert (= (and b!4243333 ((_ is Cons!46930) (originalCharacters!8280 (h!52352 addTokens!17)))) b!4243772))

(declare-fun b_lambda!124999 () Bool)

(assert (= b_lambda!124979 (or (and b!4243761 b_free!125797 (= (toChars!10555 (transformation!7936 (h!52351 (t!351384 rules!2932)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))))) (and b!4243346 b_free!125773) (and b!4243732 b_free!125793 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))))) (and b!4243344 b_free!125777 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))))) (and b!4243336 b_free!125769 (= (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))))) (and b!4243771 b_free!125801 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))))) b_lambda!124999)))

(declare-fun b_lambda!125001 () Bool)

(assert (= b_lambda!124995 (or (and b!4243336 b_free!125769 (= (toChars!10555 (transformation!7936 (h!52351 rules!2932))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))))) (and b!4243771 b_free!125801 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 tokens!581))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))))) (and b!4243732 b_free!125793 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 (t!351385 addTokens!17))))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))))) (and b!4243761 b_free!125797 (= (toChars!10555 (transformation!7936 (h!52351 (t!351384 rules!2932)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))))) (and b!4243344 b_free!125777) (and b!4243346 b_free!125773 (= (toChars!10555 (transformation!7936 (rule!11066 (h!52352 addTokens!17)))) (toChars!10555 (transformation!7936 (rule!11066 (h!52352 tokens!581)))))) b_lambda!125001)))

(check-sat (not b_lambda!124999) (not b!4243717) (not bm!293865) (not d!1248403) (not b!4243718) (not b!4243485) (not b_next!126497) (not b!4243750) (not b!4243360) (not b!4243679) (not b!4243399) (not b_next!126473) (not tb!255515) b_and!336051 (not b!4243576) (not b!4243489) (not b!4243767) (not b!4243686) (not d!1248391) (not b!4243694) (not b!4243484) b_and!336049 (not b!4243744) (not b!4243699) (not b!4243481) (not b!4243488) (not b!4243491) (not b!4243770) b_and!335973 b_and!336045 (not d!1248401) (not b!4243365) (not b!4243486) (not b_lambda!124981) (not b!4243478) b_and!336047 (not b_next!126471) (not b!4243768) (not b!4243697) (not d!1248449) (not d!1248397) (not b!4243731) (not b!4243492) (not d!1248435) (not b!4243647) (not b!4243707) (not b!4243769) (not b!4243700) tp_is_empty!22673 (not b_next!126501) (not b_next!126481) (not d!1248499) (not b_next!126475) (not b!4243664) (not b!4243490) (not d!1248505) (not b_next!126505) (not b!4243354) (not b!4243749) (not b!4243730) (not d!1248493) (not b!4243477) (not d!1248501) (not b!4243359) b_and!336043 (not b_next!126503) (not bm!293864) (not tb!255575) (not b!4243745) (not b!4243579) (not d!1248503) (not b!4243396) (not b!4243704) (not b_lambda!124997) (not b_lambda!125001) b_and!336041 (not b!4243648) (not b_next!126477) (not b!4243685) (not b!4243662) (not d!1248405) (not d!1248447) (not b!4243480) (not b!4243729) (not b!4243397) (not b_next!126479) (not b!4243709) (not b!4243483) (not b!4243702) (not b_next!126495) (not b!4243772) (not tb!255581) (not b!4243765) (not b!4243759) (not b!4243766) (not b!4243680) (not b!4243764) (not b!4243683) (not b!4243712) b_and!336035 (not b!4243687) (not b!4243668) b_and!336039 b_and!336037 (not d!1248507) (not b_next!126499) (not b!4243476) (not tb!255521) (not b!4243474) (not b!4243746) (not b!4243371) (not b!4243352) (not b!4243575) (not b!4243661) (not d!1248483) (not b!4243748) (not b!4243688) (not b!4243665) (not d!1248477) (not d!1248383) (not b!4243762) b_and!335969 (not b!4243760) (not d!1248439) (not d!1248485) (not b!4243479) (not b!4243708) (not b!4243487) (not b!4243703) b_and!335977 (not b!4243475) (not d!1248481))
(check-sat (not b_next!126497) (not b_next!126473) b_and!336051 b_and!336049 (not b_next!126475) (not b_next!126505) b_and!336041 (not b_next!126477) (not b_next!126479) (not b_next!126495) b_and!335969 b_and!335977 b_and!335973 b_and!336045 b_and!336047 (not b_next!126471) (not b_next!126501) (not b_next!126481) b_and!336043 (not b_next!126503) b_and!336039 b_and!336035 b_and!336037 (not b_next!126499))
