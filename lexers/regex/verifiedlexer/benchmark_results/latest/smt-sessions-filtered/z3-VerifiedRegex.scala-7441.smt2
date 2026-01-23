; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395482 () Bool)

(assert start!395482)

(declare-fun b!4154333 () Bool)

(declare-fun b_free!119027 () Bool)

(declare-fun b_next!119731 () Bool)

(assert (=> b!4154333 (= b_free!119027 (not b_next!119731))))

(declare-fun tp!1266752 () Bool)

(declare-fun b_and!323389 () Bool)

(assert (=> b!4154333 (= tp!1266752 b_and!323389)))

(declare-fun b_free!119029 () Bool)

(declare-fun b_next!119733 () Bool)

(assert (=> b!4154333 (= b_free!119029 (not b_next!119733))))

(declare-fun tp!1266751 () Bool)

(declare-fun b_and!323391 () Bool)

(assert (=> b!4154333 (= tp!1266751 b_and!323391)))

(declare-fun b!4154342 () Bool)

(declare-fun b_free!119031 () Bool)

(declare-fun b_next!119735 () Bool)

(assert (=> b!4154342 (= b_free!119031 (not b_next!119735))))

(declare-fun tp!1266755 () Bool)

(declare-fun b_and!323393 () Bool)

(assert (=> b!4154342 (= tp!1266755 b_and!323393)))

(declare-fun b_free!119033 () Bool)

(declare-fun b_next!119737 () Bool)

(assert (=> b!4154342 (= b_free!119033 (not b_next!119737))))

(declare-fun tp!1266757 () Bool)

(declare-fun b_and!323395 () Bool)

(assert (=> b!4154342 (= tp!1266757 b_and!323395)))

(declare-fun b!4154337 () Bool)

(declare-fun b_free!119035 () Bool)

(declare-fun b_next!119739 () Bool)

(assert (=> b!4154337 (= b_free!119035 (not b_next!119739))))

(declare-fun tp!1266756 () Bool)

(declare-fun b_and!323397 () Bool)

(assert (=> b!4154337 (= tp!1266756 b_and!323397)))

(declare-fun b_free!119037 () Bool)

(declare-fun b_next!119741 () Bool)

(assert (=> b!4154337 (= b_free!119037 (not b_next!119741))))

(declare-fun tp!1266750 () Bool)

(declare-fun b_and!323399 () Bool)

(assert (=> b!4154337 (= tp!1266750 b_and!323399)))

(declare-fun e!2577685 () Bool)

(assert (=> b!4154333 (= e!2577685 (and tp!1266752 tp!1266751))))

(declare-fun b!4154334 () Bool)

(declare-fun res!1701369 () Bool)

(declare-fun e!2577693 () Bool)

(assert (=> b!4154334 (=> (not res!1701369) (not e!2577693))))

(declare-datatypes ((LexerInterface!7043 0))(
  ( (LexerInterfaceExt!7040 (__x!27585 Int)) (Lexer!7041) )
))
(declare-fun thiss!26968 () LexerInterface!7043)

(declare-datatypes ((List!45316 0))(
  ( (Nil!45192) (Cons!45192 (h!50612 (_ BitVec 16)) (t!343347 List!45316)) )
))
(declare-datatypes ((TokenValue!7684 0))(
  ( (FloatLiteralValue!15368 (text!54233 List!45316)) (TokenValueExt!7683 (__x!27586 Int)) (Broken!38420 (value!232950 List!45316)) (Object!7807) (End!7684) (Def!7684) (Underscore!7684) (Match!7684) (Else!7684) (Error!7684) (Case!7684) (If!7684) (Extends!7684) (Abstract!7684) (Class!7684) (Val!7684) (DelimiterValue!15368 (del!7744 List!45316)) (KeywordValue!7690 (value!232951 List!45316)) (CommentValue!15368 (value!232952 List!45316)) (WhitespaceValue!15368 (value!232953 List!45316)) (IndentationValue!7684 (value!232954 List!45316)) (String!52169) (Int32!7684) (Broken!38421 (value!232955 List!45316)) (Boolean!7685) (Unit!64418) (OperatorValue!7687 (op!7744 List!45316)) (IdentifierValue!15368 (value!232956 List!45316)) (IdentifierValue!15369 (value!232957 List!45316)) (WhitespaceValue!15369 (value!232958 List!45316)) (True!15368) (False!15368) (Broken!38422 (value!232959 List!45316)) (Broken!38423 (value!232960 List!45316)) (True!15369) (RightBrace!7684) (RightBracket!7684) (Colon!7684) (Null!7684) (Comma!7684) (LeftBracket!7684) (False!15369) (LeftBrace!7684) (ImaginaryLiteralValue!7684 (text!54234 List!45316)) (StringLiteralValue!23052 (value!232961 List!45316)) (EOFValue!7684 (value!232962 List!45316)) (IdentValue!7684 (value!232963 List!45316)) (DelimiterValue!15369 (value!232964 List!45316)) (DedentValue!7684 (value!232965 List!45316)) (NewLineValue!7684 (value!232966 List!45316)) (IntegerValue!23052 (value!232967 (_ BitVec 32)) (text!54235 List!45316)) (IntegerValue!23053 (value!232968 Int) (text!54236 List!45316)) (Times!7684) (Or!7684) (Equal!7684) (Minus!7684) (Broken!38424 (value!232969 List!45316)) (And!7684) (Div!7684) (LessEqual!7684) (Mod!7684) (Concat!20043) (Not!7684) (Plus!7684) (SpaceValue!7684 (value!232970 List!45316)) (IntegerValue!23054 (value!232971 Int) (text!54237 List!45316)) (StringLiteralValue!23053 (text!54238 List!45316)) (FloatLiteralValue!15369 (text!54239 List!45316)) (BytesLiteralValue!7684 (value!232972 List!45316)) (CommentValue!15369 (value!232973 List!45316)) (StringLiteralValue!23054 (value!232974 List!45316)) (ErrorTokenValue!7684 (msg!7745 List!45316)) )
))
(declare-datatypes ((C!24904 0))(
  ( (C!24905 (val!14562 Int)) )
))
(declare-datatypes ((List!45317 0))(
  ( (Nil!45193) (Cons!45193 (h!50613 C!24904) (t!343348 List!45317)) )
))
(declare-datatypes ((String!52170 0))(
  ( (String!52171 (value!232975 String)) )
))
(declare-datatypes ((IArray!27335 0))(
  ( (IArray!27336 (innerList!13725 List!45317)) )
))
(declare-datatypes ((Conc!13665 0))(
  ( (Node!13665 (left!33814 Conc!13665) (right!34144 Conc!13665) (csize!27560 Int) (cheight!13876 Int)) (Leaf!21107 (xs!16971 IArray!27335) (csize!27561 Int)) (Empty!13665) )
))
(declare-datatypes ((Regex!12359 0))(
  ( (ElementMatch!12359 (c!711270 C!24904)) (Concat!20044 (regOne!25230 Regex!12359) (regTwo!25230 Regex!12359)) (EmptyExpr!12359) (Star!12359 (reg!12688 Regex!12359)) (EmptyLang!12359) (Union!12359 (regOne!25231 Regex!12359) (regTwo!25231 Regex!12359)) )
))
(declare-datatypes ((BalanceConc!26924 0))(
  ( (BalanceConc!26925 (c!711271 Conc!13665)) )
))
(declare-datatypes ((TokenValueInjection!14796 0))(
  ( (TokenValueInjection!14797 (toValue!10118 Int) (toChars!9977 Int)) )
))
(declare-datatypes ((Rule!14708 0))(
  ( (Rule!14709 (regex!7454 Regex!12359) (tag!8316 String!52170) (isSeparator!7454 Bool) (transformation!7454 TokenValueInjection!14796)) )
))
(declare-datatypes ((List!45318 0))(
  ( (Nil!45194) (Cons!45194 (h!50614 Rule!14708) (t!343349 List!45318)) )
))
(declare-fun rules!4102 () List!45318)

(declare-datatypes ((List!45319 0))(
  ( (Nil!45195) (Cons!45195 (h!50615 String!52170) (t!343350 List!45319)) )
))
(declare-fun noDuplicateTag!3031 (LexerInterface!7043 List!45318 List!45319) Bool)

(declare-fun noDuplicateTag$default$2!36 (LexerInterface!7043) List!45319)

(assert (=> b!4154334 (= res!1701369 (noDuplicateTag!3031 thiss!26968 rules!4102 (noDuplicateTag$default$2!36 thiss!26968)))))

(declare-fun res!1701372 () Bool)

(assert (=> start!395482 (=> (not res!1701372) (not e!2577693))))

(get-info :version)

(assert (=> start!395482 (= res!1701372 ((_ is Lexer!7041) thiss!26968))))

(assert (=> start!395482 e!2577693))

(assert (=> start!395482 true))

(declare-fun e!2577691 () Bool)

(assert (=> start!395482 e!2577691))

(declare-fun e!2577690 () Bool)

(assert (=> start!395482 e!2577690))

(declare-fun e!2577686 () Bool)

(assert (=> start!395482 e!2577686))

(declare-fun b!4154335 () Bool)

(declare-fun e!2577687 () Bool)

(assert (=> b!4154335 (= e!2577693 e!2577687)))

(declare-fun res!1701366 () Bool)

(assert (=> b!4154335 (=> (not res!1701366) (not e!2577687))))

(declare-fun lt!1481175 () Rule!14708)

(declare-fun r1!615 () Rule!14708)

(assert (=> b!4154335 (= res!1701366 (not (= lt!1481175 r1!615)))))

(declare-fun head!8780 (List!45318) Rule!14708)

(assert (=> b!4154335 (= lt!1481175 (head!8780 rules!4102))))

(declare-fun b!4154336 () Bool)

(declare-fun res!1701367 () Bool)

(assert (=> b!4154336 (=> (not res!1701367) (not e!2577693))))

(declare-fun r2!597 () Rule!14708)

(declare-fun contains!9149 (List!45318 Rule!14708) Bool)

(assert (=> b!4154336 (= res!1701367 (contains!9149 rules!4102 r2!597))))

(declare-fun e!2577683 () Bool)

(assert (=> b!4154337 (= e!2577683 (and tp!1266756 tp!1266750))))

(declare-fun b!4154338 () Bool)

(declare-fun res!1701371 () Bool)

(assert (=> b!4154338 (=> (not res!1701371) (not e!2577693))))

(assert (=> b!4154338 (= res!1701371 (contains!9149 rules!4102 r1!615))))

(declare-fun b!4154339 () Bool)

(declare-fun tp!1266749 () Bool)

(declare-fun e!2577692 () Bool)

(declare-fun inv!59780 (String!52170) Bool)

(declare-fun inv!59782 (TokenValueInjection!14796) Bool)

(assert (=> b!4154339 (= e!2577692 (and tp!1266749 (inv!59780 (tag!8316 (h!50614 rules!4102))) (inv!59782 (transformation!7454 (h!50614 rules!4102))) e!2577683))))

(declare-fun tp!1266753 () Bool)

(declare-fun b!4154340 () Bool)

(assert (=> b!4154340 (= e!2577686 (and tp!1266753 (inv!59780 (tag!8316 r2!597)) (inv!59782 (transformation!7454 r2!597)) e!2577685))))

(declare-fun b!4154341 () Bool)

(declare-fun e!2577688 () Bool)

(assert (=> b!4154341 (= e!2577688 false)))

(declare-fun lt!1481174 () Bool)

(declare-fun lt!1481176 () List!45319)

(declare-fun tail!6617 (List!45318) List!45318)

(assert (=> b!4154341 (= lt!1481174 (noDuplicateTag!3031 thiss!26968 (tail!6617 rules!4102) lt!1481176))))

(declare-fun e!2577684 () Bool)

(assert (=> b!4154342 (= e!2577684 (and tp!1266755 tp!1266757))))

(declare-fun b!4154343 () Bool)

(declare-fun tp!1266758 () Bool)

(assert (=> b!4154343 (= e!2577690 (and tp!1266758 (inv!59780 (tag!8316 r1!615)) (inv!59782 (transformation!7454 r1!615)) e!2577684))))

(declare-fun b!4154344 () Bool)

(assert (=> b!4154344 (= e!2577687 e!2577688)))

(declare-fun res!1701368 () Bool)

(assert (=> b!4154344 (=> (not res!1701368) (not e!2577688))))

(declare-fun subseq!555 (List!45319 List!45319) Bool)

(assert (=> b!4154344 (= res!1701368 (subseq!555 Nil!45195 lt!1481176))))

(assert (=> b!4154344 (= lt!1481176 (Cons!45195 (tag!8316 lt!1481175) Nil!45195))))

(declare-fun b!4154345 () Bool)

(declare-fun tp!1266754 () Bool)

(assert (=> b!4154345 (= e!2577691 (and e!2577692 tp!1266754))))

(declare-fun b!4154346 () Bool)

(declare-fun res!1701370 () Bool)

(assert (=> b!4154346 (=> (not res!1701370) (not e!2577693))))

(declare-fun getIndex!796 (List!45318 Rule!14708) Int)

(assert (=> b!4154346 (= res!1701370 (< (getIndex!796 rules!4102 r1!615) (getIndex!796 rules!4102 r2!597)))))

(assert (= (and start!395482 res!1701372) b!4154338))

(assert (= (and b!4154338 res!1701371) b!4154336))

(assert (= (and b!4154336 res!1701367) b!4154334))

(assert (= (and b!4154334 res!1701369) b!4154346))

(assert (= (and b!4154346 res!1701370) b!4154335))

(assert (= (and b!4154335 res!1701366) b!4154344))

(assert (= (and b!4154344 res!1701368) b!4154341))

(assert (= b!4154339 b!4154337))

(assert (= b!4154345 b!4154339))

(assert (= (and start!395482 ((_ is Cons!45194) rules!4102)) b!4154345))

(assert (= b!4154343 b!4154342))

(assert (= start!395482 b!4154343))

(assert (= b!4154340 b!4154333))

(assert (= start!395482 b!4154340))

(declare-fun m!4749137 () Bool)

(assert (=> b!4154341 m!4749137))

(assert (=> b!4154341 m!4749137))

(declare-fun m!4749139 () Bool)

(assert (=> b!4154341 m!4749139))

(declare-fun m!4749141 () Bool)

(assert (=> b!4154338 m!4749141))

(declare-fun m!4749143 () Bool)

(assert (=> b!4154346 m!4749143))

(declare-fun m!4749145 () Bool)

(assert (=> b!4154346 m!4749145))

(declare-fun m!4749147 () Bool)

(assert (=> b!4154335 m!4749147))

(declare-fun m!4749149 () Bool)

(assert (=> b!4154334 m!4749149))

(assert (=> b!4154334 m!4749149))

(declare-fun m!4749151 () Bool)

(assert (=> b!4154334 m!4749151))

(declare-fun m!4749153 () Bool)

(assert (=> b!4154339 m!4749153))

(declare-fun m!4749155 () Bool)

(assert (=> b!4154339 m!4749155))

(declare-fun m!4749157 () Bool)

(assert (=> b!4154343 m!4749157))

(declare-fun m!4749159 () Bool)

(assert (=> b!4154343 m!4749159))

(declare-fun m!4749161 () Bool)

(assert (=> b!4154344 m!4749161))

(declare-fun m!4749163 () Bool)

(assert (=> b!4154340 m!4749163))

(declare-fun m!4749165 () Bool)

(assert (=> b!4154340 m!4749165))

(declare-fun m!4749167 () Bool)

(assert (=> b!4154336 m!4749167))

(check-sat (not b!4154346) (not b_next!119731) (not b!4154335) (not b!4154340) b_and!323395 (not b_next!119733) b_and!323393 (not b_next!119737) (not b!4154341) b_and!323389 (not b_next!119741) b_and!323399 (not b_next!119735) (not b_next!119739) (not b!4154339) (not b!4154334) (not b!4154343) (not b!4154336) b_and!323391 b_and!323397 (not b!4154344) (not b!4154345) (not b!4154338))
(check-sat (not b_next!119731) b_and!323391 b_and!323395 (not b_next!119733) b_and!323393 (not b_next!119737) b_and!323389 (not b_next!119741) b_and!323397 b_and!323399 (not b_next!119735) (not b_next!119739))
