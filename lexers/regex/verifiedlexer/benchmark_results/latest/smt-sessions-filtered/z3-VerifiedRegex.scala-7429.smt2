; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395250 () Bool)

(assert start!395250)

(declare-fun b!4152391 () Bool)

(declare-fun b_free!118699 () Bool)

(declare-fun b_next!119403 () Bool)

(assert (=> b!4152391 (= b_free!118699 (not b_next!119403))))

(declare-fun tp!1265614 () Bool)

(declare-fun b_and!323025 () Bool)

(assert (=> b!4152391 (= tp!1265614 b_and!323025)))

(declare-fun b_free!118701 () Bool)

(declare-fun b_next!119405 () Bool)

(assert (=> b!4152391 (= b_free!118701 (not b_next!119405))))

(declare-fun tp!1265617 () Bool)

(declare-fun b_and!323027 () Bool)

(assert (=> b!4152391 (= tp!1265617 b_and!323027)))

(declare-fun b!4152385 () Bool)

(declare-fun b_free!118703 () Bool)

(declare-fun b_next!119407 () Bool)

(assert (=> b!4152385 (= b_free!118703 (not b_next!119407))))

(declare-fun tp!1265612 () Bool)

(declare-fun b_and!323029 () Bool)

(assert (=> b!4152385 (= tp!1265612 b_and!323029)))

(declare-fun b_free!118705 () Bool)

(declare-fun b_next!119409 () Bool)

(assert (=> b!4152385 (= b_free!118705 (not b_next!119409))))

(declare-fun tp!1265608 () Bool)

(declare-fun b_and!323031 () Bool)

(assert (=> b!4152385 (= tp!1265608 b_and!323031)))

(declare-fun b!4152371 () Bool)

(declare-fun b_free!118707 () Bool)

(declare-fun b_next!119411 () Bool)

(assert (=> b!4152371 (= b_free!118707 (not b_next!119411))))

(declare-fun tp!1265618 () Bool)

(declare-fun b_and!323033 () Bool)

(assert (=> b!4152371 (= tp!1265618 b_and!323033)))

(declare-fun b_free!118709 () Bool)

(declare-fun b_next!119413 () Bool)

(assert (=> b!4152371 (= b_free!118709 (not b_next!119413))))

(declare-fun tp!1265613 () Bool)

(declare-fun b_and!323035 () Bool)

(assert (=> b!4152371 (= tp!1265613 b_and!323035)))

(declare-fun e!2576253 () Bool)

(assert (=> b!4152371 (= e!2576253 (and tp!1265618 tp!1265613))))

(declare-fun b!4152372 () Bool)

(declare-fun e!2576241 () Bool)

(declare-fun e!2576246 () Bool)

(declare-fun tp!1265616 () Bool)

(assert (=> b!4152372 (= e!2576241 (and e!2576246 tp!1265616))))

(declare-fun b!4152373 () Bool)

(declare-fun res!1700516 () Bool)

(declare-fun e!2576250 () Bool)

(assert (=> b!4152373 (=> (not res!1700516) (not e!2576250))))

(declare-datatypes ((LexerInterface!7019 0))(
  ( (LexerInterfaceExt!7016 (__x!27537 Int)) (Lexer!7017) )
))
(declare-fun thiss!25645 () LexerInterface!7019)

(declare-datatypes ((List!45227 0))(
  ( (Nil!45103) (Cons!45103 (h!50523 (_ BitVec 16)) (t!343226 List!45227)) )
))
(declare-datatypes ((TokenValue!7660 0))(
  ( (FloatLiteralValue!15320 (text!54065 List!45227)) (TokenValueExt!7659 (__x!27538 Int)) (Broken!38300 (value!232283 List!45227)) (Object!7783) (End!7660) (Def!7660) (Underscore!7660) (Match!7660) (Else!7660) (Error!7660) (Case!7660) (If!7660) (Extends!7660) (Abstract!7660) (Class!7660) (Val!7660) (DelimiterValue!15320 (del!7720 List!45227)) (KeywordValue!7666 (value!232284 List!45227)) (CommentValue!15320 (value!232285 List!45227)) (WhitespaceValue!15320 (value!232286 List!45227)) (IndentationValue!7660 (value!232287 List!45227)) (String!52049) (Int32!7660) (Broken!38301 (value!232288 List!45227)) (Boolean!7661) (Unit!64372) (OperatorValue!7663 (op!7720 List!45227)) (IdentifierValue!15320 (value!232289 List!45227)) (IdentifierValue!15321 (value!232290 List!45227)) (WhitespaceValue!15321 (value!232291 List!45227)) (True!15320) (False!15320) (Broken!38302 (value!232292 List!45227)) (Broken!38303 (value!232293 List!45227)) (True!15321) (RightBrace!7660) (RightBracket!7660) (Colon!7660) (Null!7660) (Comma!7660) (LeftBracket!7660) (False!15321) (LeftBrace!7660) (ImaginaryLiteralValue!7660 (text!54066 List!45227)) (StringLiteralValue!22980 (value!232294 List!45227)) (EOFValue!7660 (value!232295 List!45227)) (IdentValue!7660 (value!232296 List!45227)) (DelimiterValue!15321 (value!232297 List!45227)) (DedentValue!7660 (value!232298 List!45227)) (NewLineValue!7660 (value!232299 List!45227)) (IntegerValue!22980 (value!232300 (_ BitVec 32)) (text!54067 List!45227)) (IntegerValue!22981 (value!232301 Int) (text!54068 List!45227)) (Times!7660) (Or!7660) (Equal!7660) (Minus!7660) (Broken!38304 (value!232302 List!45227)) (And!7660) (Div!7660) (LessEqual!7660) (Mod!7660) (Concat!19995) (Not!7660) (Plus!7660) (SpaceValue!7660 (value!232303 List!45227)) (IntegerValue!22982 (value!232304 Int) (text!54069 List!45227)) (StringLiteralValue!22981 (text!54070 List!45227)) (FloatLiteralValue!15321 (text!54071 List!45227)) (BytesLiteralValue!7660 (value!232305 List!45227)) (CommentValue!15321 (value!232306 List!45227)) (StringLiteralValue!22982 (value!232307 List!45227)) (ErrorTokenValue!7660 (msg!7721 List!45227)) )
))
(declare-datatypes ((C!24856 0))(
  ( (C!24857 (val!14538 Int)) )
))
(declare-datatypes ((List!45228 0))(
  ( (Nil!45104) (Cons!45104 (h!50524 C!24856) (t!343227 List!45228)) )
))
(declare-datatypes ((IArray!27287 0))(
  ( (IArray!27288 (innerList!13701 List!45228)) )
))
(declare-datatypes ((Conc!13641 0))(
  ( (Node!13641 (left!33774 Conc!13641) (right!34104 Conc!13641) (csize!27512 Int) (cheight!13852 Int)) (Leaf!21071 (xs!16947 IArray!27287) (csize!27513 Int)) (Empty!13641) )
))
(declare-datatypes ((BalanceConc!26876 0))(
  ( (BalanceConc!26877 (c!711098 Conc!13641)) )
))
(declare-datatypes ((String!52050 0))(
  ( (String!52051 (value!232308 String)) )
))
(declare-datatypes ((Regex!12335 0))(
  ( (ElementMatch!12335 (c!711099 C!24856)) (Concat!19996 (regOne!25182 Regex!12335) (regTwo!25182 Regex!12335)) (EmptyExpr!12335) (Star!12335 (reg!12664 Regex!12335)) (EmptyLang!12335) (Union!12335 (regOne!25183 Regex!12335) (regTwo!25183 Regex!12335)) )
))
(declare-datatypes ((TokenValueInjection!14748 0))(
  ( (TokenValueInjection!14749 (toValue!10094 Int) (toChars!9953 Int)) )
))
(declare-datatypes ((Rule!14660 0))(
  ( (Rule!14661 (regex!7430 Regex!12335) (tag!8290 String!52050) (isSeparator!7430 Bool) (transformation!7430 TokenValueInjection!14748)) )
))
(declare-datatypes ((List!45229 0))(
  ( (Nil!45105) (Cons!45105 (h!50525 Rule!14660) (t!343228 List!45229)) )
))
(declare-fun rules!3756 () List!45229)

(declare-fun rulesInvariant!6316 (LexerInterface!7019 List!45229) Bool)

(assert (=> b!4152373 (= res!1700516 (rulesInvariant!6316 thiss!25645 rules!3756))))

(declare-fun b!4152374 () Bool)

(declare-fun res!1700519 () Bool)

(declare-fun e!2576243 () Bool)

(assert (=> b!4152374 (=> res!1700519 e!2576243)))

(declare-fun rBis!149 () Rule!14660)

(declare-fun r!4008 () Rule!14660)

(declare-fun getIndex!776 (List!45229 Rule!14660) Int)

(assert (=> b!4152374 (= res!1700519 (>= (getIndex!776 (t!343228 rules!3756) rBis!149) (getIndex!776 (t!343228 rules!3756) r!4008)))))

(declare-fun b!4152375 () Bool)

(declare-fun e!2576254 () Bool)

(declare-fun e!2576255 () Bool)

(assert (=> b!4152375 (= e!2576254 (not e!2576255))))

(declare-fun res!1700521 () Bool)

(assert (=> b!4152375 (=> res!1700521 e!2576255)))

(get-info :version)

(assert (=> b!4152375 (= res!1700521 (or (and ((_ is Cons!45105) rules!3756) (= (h!50525 rules!3756) rBis!149)) (not ((_ is Cons!45105) rules!3756)) (= (h!50525 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64373 0))(
  ( (Unit!64374) )
))
(declare-fun lt!1480886 () Unit!64373)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2276 (LexerInterface!7019 Rule!14660 List!45229) Unit!64373)

(assert (=> b!4152375 (= lt!1480886 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2276 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3236 (LexerInterface!7019 Rule!14660) Bool)

(assert (=> b!4152375 (ruleValid!3236 thiss!25645 rBis!149)))

(declare-fun lt!1480882 () Unit!64373)

(assert (=> b!4152375 (= lt!1480882 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2276 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4152376 () Bool)

(assert (=> b!4152376 (= e!2576250 e!2576254)))

(declare-fun res!1700524 () Bool)

(assert (=> b!4152376 (=> (not res!1700524) (not e!2576254))))

(declare-fun input!3238 () List!45228)

(declare-datatypes ((Token!13790 0))(
  ( (Token!13791 (value!232309 TokenValue!7660) (rule!10572 Rule!14660) (size!33437 Int) (originalCharacters!7926 List!45228)) )
))
(declare-datatypes ((tuple2!43466 0))(
  ( (tuple2!43467 (_1!24867 Token!13790) (_2!24867 List!45228)) )
))
(declare-datatypes ((Option!9736 0))(
  ( (None!9735) (Some!9735 (v!40405 tuple2!43466)) )
))
(declare-fun lt!1480885 () Option!9736)

(declare-fun maxPrefix!4209 (LexerInterface!7019 List!45229 List!45228) Option!9736)

(assert (=> b!4152376 (= res!1700524 (= (maxPrefix!4209 thiss!25645 rules!3756 input!3238) lt!1480885))))

(declare-fun p!2912 () List!45228)

(declare-fun lt!1480890 () BalanceConc!26876)

(declare-fun apply!10503 (TokenValueInjection!14748 BalanceConc!26876) TokenValue!7660)

(declare-fun size!33438 (List!45228) Int)

(declare-fun getSuffix!2692 (List!45228 List!45228) List!45228)

(assert (=> b!4152376 (= lt!1480885 (Some!9735 (tuple2!43467 (Token!13791 (apply!10503 (transformation!7430 r!4008) lt!1480890) r!4008 (size!33438 p!2912) p!2912) (getSuffix!2692 input!3238 p!2912))))))

(declare-fun lt!1480888 () Unit!64373)

(declare-fun lemmaSemiInverse!2288 (TokenValueInjection!14748 BalanceConc!26876) Unit!64373)

(assert (=> b!4152376 (= lt!1480888 (lemmaSemiInverse!2288 (transformation!7430 r!4008) lt!1480890))))

(declare-fun seqFromList!5547 (List!45228) BalanceConc!26876)

(assert (=> b!4152376 (= lt!1480890 (seqFromList!5547 p!2912))))

(declare-fun b!4152377 () Bool)

(declare-fun res!1700511 () Bool)

(assert (=> b!4152377 (=> (not res!1700511) (not e!2576250))))

(declare-fun isPrefix!4365 (List!45228 List!45228) Bool)

(assert (=> b!4152377 (= res!1700511 (isPrefix!4365 p!2912 input!3238))))

(declare-fun b!4152378 () Bool)

(declare-fun res!1700518 () Bool)

(assert (=> b!4152378 (=> res!1700518 e!2576255)))

(declare-fun contains!9116 (List!45229 Rule!14660) Bool)

(assert (=> b!4152378 (= res!1700518 (not (contains!9116 (t!343228 rules!3756) rBis!149)))))

(declare-fun b!4152379 () Bool)

(declare-fun res!1700508 () Bool)

(assert (=> b!4152379 (=> res!1700508 e!2576255)))

(assert (=> b!4152379 (= res!1700508 (not (contains!9116 (t!343228 rules!3756) r!4008)))))

(declare-fun b!4152380 () Bool)

(declare-fun res!1700520 () Bool)

(assert (=> b!4152380 (=> (not res!1700520) (not e!2576254))))

(assert (=> b!4152380 (= res!1700520 (ruleValid!3236 thiss!25645 r!4008))))

(declare-fun b!4152381 () Bool)

(declare-fun e!2576247 () Bool)

(declare-fun tp_is_empty!21593 () Bool)

(declare-fun tp!1265615 () Bool)

(assert (=> b!4152381 (= e!2576247 (and tp_is_empty!21593 tp!1265615))))

(declare-fun b!4152382 () Bool)

(declare-fun res!1700509 () Bool)

(assert (=> b!4152382 (=> (not res!1700509) (not e!2576250))))

(declare-fun isEmpty!26932 (List!45229) Bool)

(assert (=> b!4152382 (= res!1700509 (not (isEmpty!26932 rules!3756)))))

(declare-fun b!4152383 () Bool)

(declare-fun res!1700512 () Bool)

(assert (=> b!4152383 (=> res!1700512 e!2576243)))

(declare-fun lt!1480884 () Option!9736)

(assert (=> b!4152383 (= res!1700512 (not (= lt!1480884 lt!1480885)))))

(declare-fun b!4152384 () Bool)

(assert (=> b!4152384 (= e!2576243 true)))

(declare-fun matchR!6164 (Regex!12335 List!45228) Bool)

(assert (=> b!4152384 (not (matchR!6164 (regex!7430 rBis!149) p!2912))))

(declare-fun lt!1480881 () Unit!64373)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!312 (LexerInterface!7019 List!45229 Rule!14660 List!45228 List!45228 Rule!14660) Unit!64373)

(assert (=> b!4152384 (= lt!1480881 (lemmaMaxPrefNoSmallerRuleMatches!312 thiss!25645 (t!343228 rules!3756) r!4008 p!2912 input!3238 rBis!149))))

(declare-fun e!2576249 () Bool)

(assert (=> b!4152385 (= e!2576249 (and tp!1265612 tp!1265608))))

(declare-fun e!2576248 () Bool)

(declare-fun b!4152386 () Bool)

(declare-fun tp!1265610 () Bool)

(declare-fun inv!59716 (String!52050) Bool)

(declare-fun inv!59718 (TokenValueInjection!14748) Bool)

(assert (=> b!4152386 (= e!2576248 (and tp!1265610 (inv!59716 (tag!8290 rBis!149)) (inv!59718 (transformation!7430 rBis!149)) e!2576253))))

(declare-fun b!4152387 () Bool)

(declare-fun res!1700517 () Bool)

(assert (=> b!4152387 (=> (not res!1700517) (not e!2576254))))

(assert (=> b!4152387 (= res!1700517 (matchR!6164 (regex!7430 r!4008) p!2912))))

(declare-fun b!4152388 () Bool)

(assert (=> b!4152388 (= e!2576255 e!2576243)))

(declare-fun res!1700522 () Bool)

(assert (=> b!4152388 (=> res!1700522 e!2576243)))

(assert (=> b!4152388 (= res!1700522 (isEmpty!26932 (t!343228 rules!3756)))))

(assert (=> b!4152388 (not (= (tag!8290 (h!50525 rules!3756)) (tag!8290 r!4008)))))

(declare-fun lt!1480883 () Unit!64373)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!78 (LexerInterface!7019 List!45229 Rule!14660 Rule!14660) Unit!64373)

(assert (=> b!4152388 (= lt!1480883 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!78 thiss!25645 rules!3756 (h!50525 rules!3756) r!4008))))

(assert (=> b!4152388 (rulesInvariant!6316 thiss!25645 (t!343228 rules!3756))))

(declare-fun lt!1480887 () Unit!64373)

(declare-fun lemmaInvariantOnRulesThenOnTail!842 (LexerInterface!7019 Rule!14660 List!45229) Unit!64373)

(assert (=> b!4152388 (= lt!1480887 (lemmaInvariantOnRulesThenOnTail!842 thiss!25645 (h!50525 rules!3756) (t!343228 rules!3756)))))

(assert (=> b!4152388 (= lt!1480884 (maxPrefix!4209 thiss!25645 (t!343228 rules!3756) input!3238))))

(declare-fun lt!1480889 () Option!9736)

(declare-fun maxPrefixOneRule!3148 (LexerInterface!7019 Rule!14660 List!45228) Option!9736)

(assert (=> b!4152388 (= lt!1480889 (maxPrefixOneRule!3148 thiss!25645 (h!50525 rules!3756) input!3238))))

(declare-fun b!4152389 () Bool)

(declare-fun res!1700523 () Bool)

(assert (=> b!4152389 (=> (not res!1700523) (not e!2576254))))

(assert (=> b!4152389 (= res!1700523 (< (getIndex!776 rules!3756 rBis!149) (getIndex!776 rules!3756 r!4008)))))

(declare-fun res!1700510 () Bool)

(assert (=> start!395250 (=> (not res!1700510) (not e!2576250))))

(assert (=> start!395250 (= res!1700510 ((_ is Lexer!7017) thiss!25645))))

(assert (=> start!395250 e!2576250))

(assert (=> start!395250 e!2576241))

(assert (=> start!395250 e!2576247))

(assert (=> start!395250 true))

(declare-fun e!2576251 () Bool)

(assert (=> start!395250 e!2576251))

(declare-fun e!2576242 () Bool)

(assert (=> start!395250 e!2576242))

(assert (=> start!395250 e!2576248))

(declare-fun b!4152390 () Bool)

(declare-fun tp!1265607 () Bool)

(assert (=> b!4152390 (= e!2576242 (and tp_is_empty!21593 tp!1265607))))

(declare-fun e!2576245 () Bool)

(assert (=> b!4152391 (= e!2576245 (and tp!1265614 tp!1265617))))

(declare-fun b!4152392 () Bool)

(declare-fun res!1700514 () Bool)

(assert (=> b!4152392 (=> (not res!1700514) (not e!2576250))))

(declare-fun isEmpty!26933 (List!45228) Bool)

(assert (=> b!4152392 (= res!1700514 (not (isEmpty!26933 p!2912)))))

(declare-fun b!4152393 () Bool)

(declare-fun res!1700515 () Bool)

(assert (=> b!4152393 (=> (not res!1700515) (not e!2576250))))

(assert (=> b!4152393 (= res!1700515 (contains!9116 rules!3756 r!4008))))

(declare-fun b!4152394 () Bool)

(declare-fun res!1700513 () Bool)

(assert (=> b!4152394 (=> (not res!1700513) (not e!2576250))))

(assert (=> b!4152394 (= res!1700513 (contains!9116 rules!3756 rBis!149))))

(declare-fun tp!1265609 () Bool)

(declare-fun b!4152395 () Bool)

(assert (=> b!4152395 (= e!2576246 (and tp!1265609 (inv!59716 (tag!8290 (h!50525 rules!3756))) (inv!59718 (transformation!7430 (h!50525 rules!3756))) e!2576245))))

(declare-fun b!4152396 () Bool)

(declare-fun tp!1265611 () Bool)

(assert (=> b!4152396 (= e!2576251 (and tp!1265611 (inv!59716 (tag!8290 r!4008)) (inv!59718 (transformation!7430 r!4008)) e!2576249))))

(assert (= (and start!395250 res!1700510) b!4152377))

(assert (= (and b!4152377 res!1700511) b!4152382))

(assert (= (and b!4152382 res!1700509) b!4152373))

(assert (= (and b!4152373 res!1700516) b!4152393))

(assert (= (and b!4152393 res!1700515) b!4152394))

(assert (= (and b!4152394 res!1700513) b!4152392))

(assert (= (and b!4152392 res!1700514) b!4152376))

(assert (= (and b!4152376 res!1700524) b!4152387))

(assert (= (and b!4152387 res!1700517) b!4152389))

(assert (= (and b!4152389 res!1700523) b!4152380))

(assert (= (and b!4152380 res!1700520) b!4152375))

(assert (= (and b!4152375 (not res!1700521)) b!4152379))

(assert (= (and b!4152379 (not res!1700508)) b!4152378))

(assert (= (and b!4152378 (not res!1700518)) b!4152388))

(assert (= (and b!4152388 (not res!1700522)) b!4152383))

(assert (= (and b!4152383 (not res!1700512)) b!4152374))

(assert (= (and b!4152374 (not res!1700519)) b!4152384))

(assert (= b!4152395 b!4152391))

(assert (= b!4152372 b!4152395))

(assert (= (and start!395250 ((_ is Cons!45105) rules!3756)) b!4152372))

(assert (= (and start!395250 ((_ is Cons!45104) p!2912)) b!4152381))

(assert (= b!4152396 b!4152385))

(assert (= start!395250 b!4152396))

(assert (= (and start!395250 ((_ is Cons!45104) input!3238)) b!4152390))

(assert (= b!4152386 b!4152371))

(assert (= start!395250 b!4152386))

(declare-fun m!4747795 () Bool)

(assert (=> b!4152382 m!4747795))

(declare-fun m!4747797 () Bool)

(assert (=> b!4152384 m!4747797))

(declare-fun m!4747799 () Bool)

(assert (=> b!4152384 m!4747799))

(declare-fun m!4747801 () Bool)

(assert (=> b!4152374 m!4747801))

(declare-fun m!4747803 () Bool)

(assert (=> b!4152374 m!4747803))

(declare-fun m!4747805 () Bool)

(assert (=> b!4152395 m!4747805))

(declare-fun m!4747807 () Bool)

(assert (=> b!4152395 m!4747807))

(declare-fun m!4747809 () Bool)

(assert (=> b!4152378 m!4747809))

(declare-fun m!4747811 () Bool)

(assert (=> b!4152396 m!4747811))

(declare-fun m!4747813 () Bool)

(assert (=> b!4152396 m!4747813))

(declare-fun m!4747815 () Bool)

(assert (=> b!4152394 m!4747815))

(declare-fun m!4747817 () Bool)

(assert (=> b!4152373 m!4747817))

(declare-fun m!4747819 () Bool)

(assert (=> b!4152375 m!4747819))

(declare-fun m!4747821 () Bool)

(assert (=> b!4152375 m!4747821))

(declare-fun m!4747823 () Bool)

(assert (=> b!4152375 m!4747823))

(declare-fun m!4747825 () Bool)

(assert (=> b!4152389 m!4747825))

(declare-fun m!4747827 () Bool)

(assert (=> b!4152389 m!4747827))

(declare-fun m!4747829 () Bool)

(assert (=> b!4152380 m!4747829))

(declare-fun m!4747831 () Bool)

(assert (=> b!4152377 m!4747831))

(declare-fun m!4747833 () Bool)

(assert (=> b!4152392 m!4747833))

(declare-fun m!4747835 () Bool)

(assert (=> b!4152376 m!4747835))

(declare-fun m!4747837 () Bool)

(assert (=> b!4152376 m!4747837))

(declare-fun m!4747839 () Bool)

(assert (=> b!4152376 m!4747839))

(declare-fun m!4747841 () Bool)

(assert (=> b!4152376 m!4747841))

(declare-fun m!4747843 () Bool)

(assert (=> b!4152376 m!4747843))

(declare-fun m!4747845 () Bool)

(assert (=> b!4152376 m!4747845))

(declare-fun m!4747847 () Bool)

(assert (=> b!4152388 m!4747847))

(declare-fun m!4747849 () Bool)

(assert (=> b!4152388 m!4747849))

(declare-fun m!4747851 () Bool)

(assert (=> b!4152388 m!4747851))

(declare-fun m!4747853 () Bool)

(assert (=> b!4152388 m!4747853))

(declare-fun m!4747855 () Bool)

(assert (=> b!4152388 m!4747855))

(declare-fun m!4747857 () Bool)

(assert (=> b!4152388 m!4747857))

(declare-fun m!4747859 () Bool)

(assert (=> b!4152386 m!4747859))

(declare-fun m!4747861 () Bool)

(assert (=> b!4152386 m!4747861))

(declare-fun m!4747863 () Bool)

(assert (=> b!4152393 m!4747863))

(declare-fun m!4747865 () Bool)

(assert (=> b!4152379 m!4747865))

(declare-fun m!4747867 () Bool)

(assert (=> b!4152387 m!4747867))

(check-sat (not b!4152392) (not b!4152382) b_and!323035 (not b!4152388) (not b!4152376) (not b!4152372) (not b_next!119403) (not b_next!119409) (not b!4152386) (not b!4152387) tp_is_empty!21593 (not b!4152378) (not b!4152396) (not b!4152389) b_and!323029 (not b!4152380) (not b!4152393) (not b!4152374) b_and!323027 b_and!323031 (not b_next!119405) (not b!4152384) b_and!323025 (not b!4152379) (not b_next!119413) (not b!4152375) b_and!323033 (not b_next!119411) (not b_next!119407) (not b!4152377) (not b!4152373) (not b!4152394) (not b!4152395) (not b!4152390) (not b!4152381))
(check-sat b_and!323035 b_and!323029 (not b_next!119405) (not b_next!119403) (not b_next!119409) (not b_next!119407) b_and!323027 b_and!323031 b_and!323025 (not b_next!119413) b_and!323033 (not b_next!119411))
