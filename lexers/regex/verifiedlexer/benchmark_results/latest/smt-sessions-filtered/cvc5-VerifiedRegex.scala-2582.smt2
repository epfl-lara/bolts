; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138244 () Bool)

(assert start!138244)

(declare-fun b!1474745 () Bool)

(declare-fun b_free!37563 () Bool)

(declare-fun b_next!38267 () Bool)

(assert (=> b!1474745 (= b_free!37563 (not b_next!38267))))

(declare-fun tp!417011 () Bool)

(declare-fun b_and!101657 () Bool)

(assert (=> b!1474745 (= tp!417011 b_and!101657)))

(declare-fun b_free!37565 () Bool)

(declare-fun b_next!38269 () Bool)

(assert (=> b!1474745 (= b_free!37565 (not b_next!38269))))

(declare-fun tp!417013 () Bool)

(declare-fun b_and!101659 () Bool)

(assert (=> b!1474745 (= tp!417013 b_and!101659)))

(declare-fun b!1474750 () Bool)

(declare-fun b_free!37567 () Bool)

(declare-fun b_next!38271 () Bool)

(assert (=> b!1474750 (= b_free!37567 (not b_next!38271))))

(declare-fun tp!417012 () Bool)

(declare-fun b_and!101661 () Bool)

(assert (=> b!1474750 (= tp!417012 b_and!101661)))

(declare-fun b_free!37569 () Bool)

(declare-fun b_next!38273 () Bool)

(assert (=> b!1474750 (= b_free!37569 (not b_next!38273))))

(declare-fun tp!417021 () Bool)

(declare-fun b_and!101663 () Bool)

(assert (=> b!1474750 (= tp!417021 b_and!101663)))

(declare-fun b!1474753 () Bool)

(declare-fun b_free!37571 () Bool)

(declare-fun b_next!38275 () Bool)

(assert (=> b!1474753 (= b_free!37571 (not b_next!38275))))

(declare-fun tp!417019 () Bool)

(declare-fun b_and!101665 () Bool)

(assert (=> b!1474753 (= tp!417019 b_and!101665)))

(declare-fun b_free!37573 () Bool)

(declare-fun b_next!38277 () Bool)

(assert (=> b!1474753 (= b_free!37573 (not b_next!38277))))

(declare-fun tp!417015 () Bool)

(declare-fun b_and!101667 () Bool)

(assert (=> b!1474753 (= tp!417015 b_and!101667)))

(declare-fun b!1474742 () Bool)

(declare-fun res!666566 () Bool)

(declare-fun e!942126 () Bool)

(assert (=> b!1474742 (=> (not res!666566) (not e!942126))))

(declare-datatypes ((List!15582 0))(
  ( (Nil!15516) (Cons!15516 (h!20917 (_ BitVec 16)) (t!136373 List!15582)) )
))
(declare-datatypes ((C!8330 0))(
  ( (C!8331 (val!4735 Int)) )
))
(declare-datatypes ((List!15583 0))(
  ( (Nil!15517) (Cons!15517 (h!20918 C!8330) (t!136374 List!15583)) )
))
(declare-datatypes ((Regex!4076 0))(
  ( (ElementMatch!4076 (c!242503 C!8330)) (Concat!6928 (regOne!8664 Regex!4076) (regTwo!8664 Regex!4076)) (EmptyExpr!4076) (Star!4076 (reg!4405 Regex!4076)) (EmptyLang!4076) (Union!4076 (regOne!8665 Regex!4076) (regTwo!8665 Regex!4076)) )
))
(declare-datatypes ((TokenValue!2852 0))(
  ( (FloatLiteralValue!5704 (text!20409 List!15582)) (TokenValueExt!2851 (__x!9494 Int)) (Broken!14260 (value!88340 List!15582)) (Object!2917) (End!2852) (Def!2852) (Underscore!2852) (Match!2852) (Else!2852) (Error!2852) (Case!2852) (If!2852) (Extends!2852) (Abstract!2852) (Class!2852) (Val!2852) (DelimiterValue!5704 (del!2912 List!15582)) (KeywordValue!2858 (value!88341 List!15582)) (CommentValue!5704 (value!88342 List!15582)) (WhitespaceValue!5704 (value!88343 List!15582)) (IndentationValue!2852 (value!88344 List!15582)) (String!18517) (Int32!2852) (Broken!14261 (value!88345 List!15582)) (Boolean!2853) (Unit!25265) (OperatorValue!2855 (op!2912 List!15582)) (IdentifierValue!5704 (value!88346 List!15582)) (IdentifierValue!5705 (value!88347 List!15582)) (WhitespaceValue!5705 (value!88348 List!15582)) (True!5704) (False!5704) (Broken!14262 (value!88349 List!15582)) (Broken!14263 (value!88350 List!15582)) (True!5705) (RightBrace!2852) (RightBracket!2852) (Colon!2852) (Null!2852) (Comma!2852) (LeftBracket!2852) (False!5705) (LeftBrace!2852) (ImaginaryLiteralValue!2852 (text!20410 List!15582)) (StringLiteralValue!8556 (value!88351 List!15582)) (EOFValue!2852 (value!88352 List!15582)) (IdentValue!2852 (value!88353 List!15582)) (DelimiterValue!5705 (value!88354 List!15582)) (DedentValue!2852 (value!88355 List!15582)) (NewLineValue!2852 (value!88356 List!15582)) (IntegerValue!8556 (value!88357 (_ BitVec 32)) (text!20411 List!15582)) (IntegerValue!8557 (value!88358 Int) (text!20412 List!15582)) (Times!2852) (Or!2852) (Equal!2852) (Minus!2852) (Broken!14264 (value!88359 List!15582)) (And!2852) (Div!2852) (LessEqual!2852) (Mod!2852) (Concat!6929) (Not!2852) (Plus!2852) (SpaceValue!2852 (value!88360 List!15582)) (IntegerValue!8558 (value!88361 Int) (text!20413 List!15582)) (StringLiteralValue!8557 (text!20414 List!15582)) (FloatLiteralValue!5705 (text!20415 List!15582)) (BytesLiteralValue!2852 (value!88362 List!15582)) (CommentValue!5705 (value!88363 List!15582)) (StringLiteralValue!8558 (value!88364 List!15582)) (ErrorTokenValue!2852 (msg!2913 List!15582)) )
))
(declare-datatypes ((IArray!10583 0))(
  ( (IArray!10584 (innerList!5349 List!15583)) )
))
(declare-datatypes ((Conc!5289 0))(
  ( (Node!5289 (left!13109 Conc!5289) (right!13439 Conc!5289) (csize!10808 Int) (cheight!5500 Int)) (Leaf!7872 (xs!8044 IArray!10583) (csize!10809 Int)) (Empty!5289) )
))
(declare-datatypes ((BalanceConc!10518 0))(
  ( (BalanceConc!10519 (c!242504 Conc!5289)) )
))
(declare-datatypes ((TokenValueInjection!5364 0))(
  ( (TokenValueInjection!5365 (toValue!4093 Int) (toChars!3952 Int)) )
))
(declare-datatypes ((String!18518 0))(
  ( (String!18519 (value!88365 String)) )
))
(declare-datatypes ((Rule!5324 0))(
  ( (Rule!5325 (regex!2762 Regex!4076) (tag!3026 String!18518) (isSeparator!2762 Bool) (transformation!2762 TokenValueInjection!5364)) )
))
(declare-datatypes ((List!15584 0))(
  ( (Nil!15518) (Cons!15518 (h!20919 Rule!5324) (t!136375 List!15584)) )
))
(declare-fun rules!4290 () List!15584)

(declare-datatypes ((Token!5186 0))(
  ( (Token!5187 (value!88366 TokenValue!2852) (rule!4539 Rule!5324) (size!12586 Int) (originalCharacters!3624 List!15583)) )
))
(declare-datatypes ((List!15585 0))(
  ( (Nil!15519) (Cons!15519 (h!20920 Token!5186) (t!136376 List!15585)) )
))
(declare-fun l2!3105 () List!15585)

(declare-datatypes ((LexerInterface!2418 0))(
  ( (LexerInterfaceExt!2415 (__x!9495 Int)) (Lexer!2416) )
))
(declare-fun thiss!27374 () LexerInterface!2418)

(declare-fun rulesProduceEachTokenIndividuallyList!785 (LexerInterface!2418 List!15584 List!15585) Bool)

(assert (=> b!1474742 (= res!666566 (rulesProduceEachTokenIndividuallyList!785 thiss!27374 rules!4290 l2!3105))))

(declare-fun res!666570 () Bool)

(assert (=> start!138244 (=> (not res!666570) (not e!942126))))

(assert (=> start!138244 (= res!666570 (is-Lexer!2416 thiss!27374))))

(assert (=> start!138244 e!942126))

(assert (=> start!138244 true))

(declare-fun e!942116 () Bool)

(assert (=> start!138244 e!942116))

(declare-fun e!942127 () Bool)

(assert (=> start!138244 e!942127))

(declare-fun e!942129 () Bool)

(assert (=> start!138244 e!942129))

(declare-fun b!1474743 () Bool)

(declare-fun res!666564 () Bool)

(assert (=> b!1474743 (=> (not res!666564) (not e!942126))))

(declare-fun l1!3136 () List!15585)

(declare-fun isEmpty!9695 (List!15585) Bool)

(assert (=> b!1474743 (= res!666564 (not (isEmpty!9695 l1!3136)))))

(declare-fun e!942124 () Bool)

(declare-fun b!1474744 () Bool)

(declare-fun tp!417014 () Bool)

(declare-fun e!942113 () Bool)

(declare-fun inv!20726 (String!18518) Bool)

(declare-fun inv!20729 (TokenValueInjection!5364) Bool)

(assert (=> b!1474744 (= e!942113 (and tp!417014 (inv!20726 (tag!3026 (rule!4539 (h!20920 l2!3105)))) (inv!20729 (transformation!2762 (rule!4539 (h!20920 l2!3105)))) e!942124))))

(assert (=> b!1474745 (= e!942124 (and tp!417011 tp!417013))))

(declare-fun b!1474746 () Bool)

(declare-fun res!666565 () Bool)

(assert (=> b!1474746 (=> (not res!666565) (not e!942126))))

(assert (=> b!1474746 (= res!666565 (rulesProduceEachTokenIndividuallyList!785 thiss!27374 rules!4290 l1!3136))))

(declare-fun e!942114 () Bool)

(declare-fun b!1474747 () Bool)

(declare-fun tp!417018 () Bool)

(declare-fun inv!20730 (Token!5186) Bool)

(assert (=> b!1474747 (= e!942127 (and (inv!20730 (h!20920 l1!3136)) e!942114 tp!417018))))

(declare-fun e!942121 () Bool)

(declare-fun tp!417016 () Bool)

(declare-fun e!942120 () Bool)

(declare-fun b!1474748 () Bool)

(assert (=> b!1474748 (= e!942121 (and tp!417016 (inv!20726 (tag!3026 (rule!4539 (h!20920 l1!3136)))) (inv!20729 (transformation!2762 (rule!4539 (h!20920 l1!3136)))) e!942120))))

(declare-fun b!1474749 () Bool)

(declare-fun e!942128 () Bool)

(declare-fun tp!417024 () Bool)

(assert (=> b!1474749 (= e!942116 (and e!942128 tp!417024))))

(assert (=> b!1474750 (= e!942120 (and tp!417012 tp!417021))))

(declare-fun b!1474751 () Bool)

(declare-fun res!666567 () Bool)

(assert (=> b!1474751 (=> (not res!666567) (not e!942126))))

(assert (=> b!1474751 (= res!666567 (not (isEmpty!9695 l2!3105)))))

(declare-fun b!1474752 () Bool)

(declare-fun res!666571 () Bool)

(assert (=> b!1474752 (=> (not res!666571) (not e!942126))))

(declare-fun isEmpty!9696 (List!15584) Bool)

(assert (=> b!1474752 (= res!666571 (not (isEmpty!9696 rules!4290)))))

(declare-fun e!942122 () Bool)

(assert (=> b!1474753 (= e!942122 (and tp!417019 tp!417015))))

(declare-fun e!942119 () Bool)

(declare-fun tp!417020 () Bool)

(declare-fun b!1474754 () Bool)

(assert (=> b!1474754 (= e!942129 (and (inv!20730 (h!20920 l2!3105)) e!942119 tp!417020))))

(declare-fun tp!417017 () Bool)

(declare-fun b!1474755 () Bool)

(declare-fun inv!21 (TokenValue!2852) Bool)

(assert (=> b!1474755 (= e!942114 (and (inv!21 (value!88366 (h!20920 l1!3136))) e!942121 tp!417017))))

(declare-fun b!1474756 () Bool)

(declare-fun res!666572 () Bool)

(assert (=> b!1474756 (=> (not res!666572) (not e!942126))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!278 (LexerInterface!2418 List!15585 List!15584) Bool)

(assert (=> b!1474756 (= res!666572 (tokensListTwoByTwoPredicateSeparableList!278 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1474757 () Bool)

(assert (=> b!1474757 (= e!942126 (not true))))

(declare-fun lt!512665 () Token!5186)

(declare-fun lt!512667 () Bool)

(declare-fun lt!512664 () Token!5186)

(declare-fun separableTokensPredicate!561 (LexerInterface!2418 Token!5186 Token!5186 List!15584) Bool)

(assert (=> b!1474757 (= lt!512667 (separableTokensPredicate!561 thiss!27374 lt!512664 lt!512665 rules!4290))))

(declare-fun rulesProduceIndividualToken!1277 (LexerInterface!2418 List!15584 Token!5186) Bool)

(assert (=> b!1474757 (rulesProduceIndividualToken!1277 thiss!27374 rules!4290 lt!512665)))

(declare-datatypes ((Unit!25266 0))(
  ( (Unit!25267) )
))
(declare-fun lt!512668 () Unit!25266)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!458 (LexerInterface!2418 List!15584 List!15585 Token!5186) Unit!25266)

(assert (=> b!1474757 (= lt!512668 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!458 thiss!27374 rules!4290 l2!3105 lt!512665))))

(declare-fun head!3056 (List!15585) Token!5186)

(assert (=> b!1474757 (= lt!512665 (head!3056 l2!3105))))

(assert (=> b!1474757 (rulesProduceIndividualToken!1277 thiss!27374 rules!4290 lt!512664)))

(declare-fun lt!512666 () Unit!25266)

(assert (=> b!1474757 (= lt!512666 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!458 thiss!27374 rules!4290 l1!3136 lt!512664))))

(declare-fun last!320 (List!15585) Token!5186)

(assert (=> b!1474757 (= lt!512664 (last!320 l1!3136))))

(declare-fun tp!417022 () Bool)

(declare-fun b!1474758 () Bool)

(assert (=> b!1474758 (= e!942128 (and tp!417022 (inv!20726 (tag!3026 (h!20919 rules!4290))) (inv!20729 (transformation!2762 (h!20919 rules!4290))) e!942122))))

(declare-fun b!1474759 () Bool)

(declare-fun res!666569 () Bool)

(assert (=> b!1474759 (=> (not res!666569) (not e!942126))))

(declare-fun rulesInvariant!2207 (LexerInterface!2418 List!15584) Bool)

(assert (=> b!1474759 (= res!666569 (rulesInvariant!2207 thiss!27374 rules!4290))))

(declare-fun tp!417023 () Bool)

(declare-fun b!1474760 () Bool)

(assert (=> b!1474760 (= e!942119 (and (inv!21 (value!88366 (h!20920 l2!3105))) e!942113 tp!417023))))

(declare-fun b!1474761 () Bool)

(declare-fun res!666568 () Bool)

(assert (=> b!1474761 (=> (not res!666568) (not e!942126))))

(assert (=> b!1474761 (= res!666568 (tokensListTwoByTwoPredicateSeparableList!278 thiss!27374 l1!3136 rules!4290))))

(assert (= (and start!138244 res!666570) b!1474752))

(assert (= (and b!1474752 res!666571) b!1474759))

(assert (= (and b!1474759 res!666569) b!1474746))

(assert (= (and b!1474746 res!666565) b!1474742))

(assert (= (and b!1474742 res!666566) b!1474761))

(assert (= (and b!1474761 res!666568) b!1474756))

(assert (= (and b!1474756 res!666572) b!1474743))

(assert (= (and b!1474743 res!666564) b!1474751))

(assert (= (and b!1474751 res!666567) b!1474757))

(assert (= b!1474758 b!1474753))

(assert (= b!1474749 b!1474758))

(assert (= (and start!138244 (is-Cons!15518 rules!4290)) b!1474749))

(assert (= b!1474748 b!1474750))

(assert (= b!1474755 b!1474748))

(assert (= b!1474747 b!1474755))

(assert (= (and start!138244 (is-Cons!15519 l1!3136)) b!1474747))

(assert (= b!1474744 b!1474745))

(assert (= b!1474760 b!1474744))

(assert (= b!1474754 b!1474760))

(assert (= (and start!138244 (is-Cons!15519 l2!3105)) b!1474754))

(declare-fun m!1719901 () Bool)

(assert (=> b!1474744 m!1719901))

(declare-fun m!1719903 () Bool)

(assert (=> b!1474744 m!1719903))

(declare-fun m!1719905 () Bool)

(assert (=> b!1474755 m!1719905))

(declare-fun m!1719907 () Bool)

(assert (=> b!1474746 m!1719907))

(declare-fun m!1719909 () Bool)

(assert (=> b!1474752 m!1719909))

(declare-fun m!1719911 () Bool)

(assert (=> b!1474743 m!1719911))

(declare-fun m!1719913 () Bool)

(assert (=> b!1474761 m!1719913))

(declare-fun m!1719915 () Bool)

(assert (=> b!1474758 m!1719915))

(declare-fun m!1719917 () Bool)

(assert (=> b!1474758 m!1719917))

(declare-fun m!1719919 () Bool)

(assert (=> b!1474751 m!1719919))

(declare-fun m!1719921 () Bool)

(assert (=> b!1474754 m!1719921))

(declare-fun m!1719923 () Bool)

(assert (=> b!1474760 m!1719923))

(declare-fun m!1719925 () Bool)

(assert (=> b!1474756 m!1719925))

(declare-fun m!1719927 () Bool)

(assert (=> b!1474742 m!1719927))

(declare-fun m!1719929 () Bool)

(assert (=> b!1474759 m!1719929))

(declare-fun m!1719931 () Bool)

(assert (=> b!1474757 m!1719931))

(declare-fun m!1719933 () Bool)

(assert (=> b!1474757 m!1719933))

(declare-fun m!1719935 () Bool)

(assert (=> b!1474757 m!1719935))

(declare-fun m!1719937 () Bool)

(assert (=> b!1474757 m!1719937))

(declare-fun m!1719939 () Bool)

(assert (=> b!1474757 m!1719939))

(declare-fun m!1719941 () Bool)

(assert (=> b!1474757 m!1719941))

(declare-fun m!1719943 () Bool)

(assert (=> b!1474757 m!1719943))

(declare-fun m!1719945 () Bool)

(assert (=> b!1474747 m!1719945))

(declare-fun m!1719947 () Bool)

(assert (=> b!1474748 m!1719947))

(declare-fun m!1719949 () Bool)

(assert (=> b!1474748 m!1719949))

(push 1)

(assert (not b!1474743))

(assert (not b!1474749))

(assert b_and!101661)

(assert b_and!101659)

(assert (not b!1474742))

(assert b_and!101667)

(assert (not b!1474756))

(assert (not b_next!38277))

(assert (not b_next!38267))

(assert (not b!1474758))

(assert (not b!1474752))

(assert (not b_next!38273))

(assert (not b!1474757))

(assert (not b!1474761))

(assert (not b_next!38271))

(assert (not b!1474744))

(assert (not b!1474747))

(assert b_and!101665)

(assert (not b!1474755))

(assert b_and!101663)

(assert b_and!101657)

(assert (not b!1474759))

(assert (not b_next!38275))

(assert (not b!1474760))

(assert (not b!1474746))

(assert (not b_next!38269))

(assert (not b!1474748))

(assert (not b!1474754))

(assert (not b!1474751))

(check-sat)

(pop 1)

(push 1)

(assert b_and!101665)

(assert b_and!101661)

(assert b_and!101659)

(assert b_and!101667)

(assert (not b_next!38277))

(assert (not b_next!38267))

(assert (not b_next!38275))

(assert (not b_next!38269))

(assert (not b_next!38273))

(assert (not b_next!38271))

(assert b_and!101663)

(assert b_and!101657)

(check-sat)

(pop 1)

