; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221240 () Bool)

(assert start!221240)

(declare-fun b!2265011 () Bool)

(declare-fun b_free!67069 () Bool)

(declare-fun b_next!67773 () Bool)

(assert (=> b!2265011 (= b_free!67069 (not b_next!67773))))

(declare-fun tp!716617 () Bool)

(declare-fun b_and!178153 () Bool)

(assert (=> b!2265011 (= tp!716617 b_and!178153)))

(declare-fun b_free!67071 () Bool)

(declare-fun b_next!67775 () Bool)

(assert (=> b!2265011 (= b_free!67071 (not b_next!67775))))

(declare-fun tp!716620 () Bool)

(declare-fun b_and!178155 () Bool)

(assert (=> b!2265011 (= tp!716620 b_and!178155)))

(declare-fun b!2265016 () Bool)

(declare-fun b_free!67073 () Bool)

(declare-fun b_next!67777 () Bool)

(assert (=> b!2265016 (= b_free!67073 (not b_next!67777))))

(declare-fun tp!716611 () Bool)

(declare-fun b_and!178157 () Bool)

(assert (=> b!2265016 (= tp!716611 b_and!178157)))

(declare-fun b_free!67075 () Bool)

(declare-fun b_next!67779 () Bool)

(assert (=> b!2265016 (= b_free!67075 (not b_next!67779))))

(declare-fun tp!716610 () Bool)

(declare-fun b_and!178159 () Bool)

(assert (=> b!2265016 (= tp!716610 b_and!178159)))

(declare-fun b!2265003 () Bool)

(declare-fun b_free!67077 () Bool)

(declare-fun b_next!67781 () Bool)

(assert (=> b!2265003 (= b_free!67077 (not b_next!67781))))

(declare-fun tp!716619 () Bool)

(declare-fun b_and!178161 () Bool)

(assert (=> b!2265003 (= tp!716619 b_and!178161)))

(declare-fun b_free!67079 () Bool)

(declare-fun b_next!67783 () Bool)

(assert (=> b!2265003 (= b_free!67079 (not b_next!67783))))

(declare-fun tp!716618 () Bool)

(declare-fun b_and!178163 () Bool)

(assert (=> b!2265003 (= tp!716618 b_and!178163)))

(declare-fun b!2265001 () Bool)

(declare-fun b_free!67081 () Bool)

(declare-fun b_next!67785 () Bool)

(assert (=> b!2265001 (= b_free!67081 (not b_next!67785))))

(declare-fun tp!716609 () Bool)

(declare-fun b_and!178165 () Bool)

(assert (=> b!2265001 (= tp!716609 b_and!178165)))

(declare-fun b_free!67083 () Bool)

(declare-fun b_next!67787 () Bool)

(assert (=> b!2265001 (= b_free!67083 (not b_next!67787))))

(declare-fun tp!716607 () Bool)

(declare-fun b_and!178167 () Bool)

(assert (=> b!2265001 (= tp!716607 b_and!178167)))

(declare-fun e!1450452 () Bool)

(assert (=> b!2265001 (= e!1450452 (and tp!716609 tp!716607))))

(declare-fun b!2265002 () Bool)

(declare-datatypes ((List!27007 0))(
  ( (Nil!26913) (Cons!26913 (h!32314 (_ BitVec 16)) (t!202005 List!27007)) )
))
(declare-datatypes ((TokenValue!4447 0))(
  ( (FloatLiteralValue!8894 (text!31574 List!27007)) (TokenValueExt!4446 (__x!17954 Int)) (Broken!22235 (value!135916 List!27007)) (Object!4540) (End!4447) (Def!4447) (Underscore!4447) (Match!4447) (Else!4447) (Error!4447) (Case!4447) (If!4447) (Extends!4447) (Abstract!4447) (Class!4447) (Val!4447) (DelimiterValue!8894 (del!4507 List!27007)) (KeywordValue!4453 (value!135917 List!27007)) (CommentValue!8894 (value!135918 List!27007)) (WhitespaceValue!8894 (value!135919 List!27007)) (IndentationValue!4447 (value!135920 List!27007)) (String!29338) (Int32!4447) (Broken!22236 (value!135921 List!27007)) (Boolean!4448) (Unit!39863) (OperatorValue!4450 (op!4507 List!27007)) (IdentifierValue!8894 (value!135922 List!27007)) (IdentifierValue!8895 (value!135923 List!27007)) (WhitespaceValue!8895 (value!135924 List!27007)) (True!8894) (False!8894) (Broken!22237 (value!135925 List!27007)) (Broken!22238 (value!135926 List!27007)) (True!8895) (RightBrace!4447) (RightBracket!4447) (Colon!4447) (Null!4447) (Comma!4447) (LeftBracket!4447) (False!8895) (LeftBrace!4447) (ImaginaryLiteralValue!4447 (text!31575 List!27007)) (StringLiteralValue!13341 (value!135927 List!27007)) (EOFValue!4447 (value!135928 List!27007)) (IdentValue!4447 (value!135929 List!27007)) (DelimiterValue!8895 (value!135930 List!27007)) (DedentValue!4447 (value!135931 List!27007)) (NewLineValue!4447 (value!135932 List!27007)) (IntegerValue!13341 (value!135933 (_ BitVec 32)) (text!31576 List!27007)) (IntegerValue!13342 (value!135934 Int) (text!31577 List!27007)) (Times!4447) (Or!4447) (Equal!4447) (Minus!4447) (Broken!22239 (value!135935 List!27007)) (And!4447) (Div!4447) (LessEqual!4447) (Mod!4447) (Concat!11080) (Not!4447) (Plus!4447) (SpaceValue!4447 (value!135936 List!27007)) (IntegerValue!13343 (value!135937 Int) (text!31578 List!27007)) (StringLiteralValue!13342 (text!31579 List!27007)) (FloatLiteralValue!8895 (text!31580 List!27007)) (BytesLiteralValue!4447 (value!135938 List!27007)) (CommentValue!8895 (value!135939 List!27007)) (StringLiteralValue!13343 (value!135940 List!27007)) (ErrorTokenValue!4447 (msg!4508 List!27007)) )
))
(declare-datatypes ((C!13412 0))(
  ( (C!13413 (val!7754 Int)) )
))
(declare-datatypes ((List!27008 0))(
  ( (Nil!26914) (Cons!26914 (h!32315 C!13412) (t!202006 List!27008)) )
))
(declare-datatypes ((IArray!17441 0))(
  ( (IArray!17442 (innerList!8778 List!27008)) )
))
(declare-datatypes ((Conc!8718 0))(
  ( (Node!8718 (left!20425 Conc!8718) (right!20755 Conc!8718) (csize!17666 Int) (cheight!8929 Int)) (Leaf!12846 (xs!11660 IArray!17441) (csize!17667 Int)) (Empty!8718) )
))
(declare-datatypes ((BalanceConc!17164 0))(
  ( (BalanceConc!17165 (c!359758 Conc!8718)) )
))
(declare-datatypes ((Regex!6633 0))(
  ( (ElementMatch!6633 (c!359759 C!13412)) (Concat!11081 (regOne!13778 Regex!6633) (regTwo!13778 Regex!6633)) (EmptyExpr!6633) (Star!6633 (reg!6962 Regex!6633)) (EmptyLang!6633) (Union!6633 (regOne!13779 Regex!6633) (regTwo!13779 Regex!6633)) )
))
(declare-datatypes ((String!29339 0))(
  ( (String!29340 (value!135941 String)) )
))
(declare-datatypes ((TokenValueInjection!8434 0))(
  ( (TokenValueInjection!8435 (toValue!6039 Int) (toChars!5898 Int)) )
))
(declare-datatypes ((Rule!8370 0))(
  ( (Rule!8371 (regex!4285 Regex!6633) (tag!4775 String!29339) (isSeparator!4285 Bool) (transformation!4285 TokenValueInjection!8434)) )
))
(declare-fun r!2363 () Rule!8370)

(declare-fun e!1450462 () Bool)

(declare-fun tp!716612 () Bool)

(declare-fun e!1450460 () Bool)

(declare-fun inv!36456 (String!29339) Bool)

(declare-fun inv!36459 (TokenValueInjection!8434) Bool)

(assert (=> b!2265002 (= e!1450462 (and tp!716612 (inv!36456 (tag!4775 r!2363)) (inv!36459 (transformation!4285 r!2363)) e!1450460))))

(declare-fun e!1450451 () Bool)

(assert (=> b!2265003 (= e!1450451 (and tp!716619 tp!716618))))

(declare-fun b!2265004 () Bool)

(declare-fun e!1450475 () Bool)

(declare-datatypes ((Token!8048 0))(
  ( (Token!8049 (value!135942 TokenValue!4447) (rule!6599 Rule!8370) (size!21101 Int) (originalCharacters!5055 List!27008)) )
))
(declare-datatypes ((List!27009 0))(
  ( (Nil!26915) (Cons!26915 (h!32316 Token!8048) (t!202007 List!27009)) )
))
(declare-fun tokens!456 () List!27009)

(assert (=> b!2265004 (= e!1450475 (not (= tokens!456 Nil!26915)))))

(declare-fun b!2265005 () Bool)

(declare-fun e!1450446 () Bool)

(declare-fun e!1450472 () Bool)

(assert (=> b!2265005 (= e!1450446 e!1450472)))

(declare-fun res!968273 () Bool)

(assert (=> b!2265005 (=> res!968273 e!1450472)))

(declare-fun lt!841746 () List!27008)

(declare-fun input!1722 () List!27008)

(declare-fun isPrefix!2275 (List!27008 List!27008) Bool)

(assert (=> b!2265005 (= res!968273 (not (isPrefix!2275 lt!841746 input!1722)))))

(declare-datatypes ((tuple2!26542 0))(
  ( (tuple2!26543 (_1!15781 Token!8048) (_2!15781 List!27008)) )
))
(declare-datatypes ((Option!5263 0))(
  ( (None!5262) (Some!5262 (v!30300 tuple2!26542)) )
))
(declare-fun lt!841739 () Option!5263)

(declare-fun lt!841751 () Token!8048)

(declare-fun lt!841732 () tuple2!26542)

(assert (=> b!2265005 (= lt!841739 (Some!5262 (tuple2!26543 lt!841751 (_2!15781 lt!841732))))))

(declare-datatypes ((LexerInterface!3882 0))(
  ( (LexerInterfaceExt!3879 (__x!17955 Int)) (Lexer!3880) )
))
(declare-fun thiss!16613 () LexerInterface!3882)

(declare-fun maxPrefixOneRule!1350 (LexerInterface!3882 Rule!8370 List!27008) Option!5263)

(assert (=> b!2265005 (= lt!841739 (maxPrefixOneRule!1350 thiss!16613 r!2363 input!1722))))

(declare-fun lt!841748 () Int)

(declare-fun lt!841750 () BalanceConc!17164)

(declare-fun apply!6589 (TokenValueInjection!8434 BalanceConc!17164) TokenValue!4447)

(assert (=> b!2265005 (= lt!841751 (Token!8049 (apply!6589 (transformation!4285 r!2363) lt!841750) r!2363 lt!841748 lt!841746))))

(declare-fun seqFromList!2989 (List!27008) BalanceConc!17164)

(assert (=> b!2265005 (= lt!841750 (seqFromList!2989 lt!841746))))

(declare-datatypes ((Unit!39864 0))(
  ( (Unit!39865) )
))
(declare-fun lt!841741 () Unit!39864)

(declare-datatypes ((List!27010 0))(
  ( (Nil!26916) (Cons!26916 (h!32317 Rule!8370) (t!202008 List!27010)) )
))
(declare-fun rules!1750 () List!27010)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!575 (LexerInterface!3882 List!27010 List!27008 List!27008 List!27008 Rule!8370) Unit!39864)

(assert (=> b!2265005 (= lt!841741 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!575 thiss!16613 rules!1750 lt!841746 input!1722 (_2!15781 lt!841732) r!2363))))

(declare-fun b!2265006 () Bool)

(declare-fun e!1450471 () Bool)

(declare-fun otherP!12 () List!27008)

(declare-fun size!21102 (BalanceConc!17164) Int)

(declare-fun charsOf!2673 (Token!8048) BalanceConc!17164)

(declare-fun head!4870 (List!27009) Token!8048)

(declare-fun size!21103 (List!27008) Int)

(assert (=> b!2265006 (= e!1450471 (<= (size!21102 (charsOf!2673 (head!4870 tokens!456))) (size!21103 otherP!12)))))

(declare-fun b!2265007 () Bool)

(declare-fun res!968278 () Bool)

(declare-fun e!1450453 () Bool)

(assert (=> b!2265007 (=> (not res!968278) (not e!1450453))))

(declare-fun otherR!12 () Rule!8370)

(assert (=> b!2265007 (= res!968278 (not (= r!2363 otherR!12)))))

(declare-fun b!2265008 () Bool)

(declare-fun e!1450456 () Bool)

(assert (=> b!2265008 (= e!1450456 e!1450475)))

(declare-fun res!968279 () Bool)

(assert (=> b!2265008 (=> res!968279 e!1450475)))

(declare-fun lt!841747 () Int)

(declare-fun lt!841738 () Int)

(assert (=> b!2265008 (= res!968279 (< lt!841747 lt!841738))))

(declare-fun matchR!2894 (Regex!6633 List!27008) Bool)

(assert (=> b!2265008 (not (matchR!2894 (regex!4285 otherR!12) otherP!12))))

(declare-fun lt!841744 () Unit!39864)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!282 (LexerInterface!3882 List!27010 Rule!8370 List!27008 List!27008 List!27008 Rule!8370) Unit!39864)

(assert (=> b!2265008 (= lt!841744 (lemmaMaxPrefixOutputsMaxPrefix!282 thiss!16613 rules!1750 r!2363 lt!841746 input!1722 otherP!12 otherR!12))))

(declare-fun b!2265009 () Bool)

(declare-fun e!1450449 () Bool)

(declare-fun tp_is_empty!10487 () Bool)

(declare-fun tp!716613 () Bool)

(assert (=> b!2265009 (= e!1450449 (and tp_is_empty!10487 tp!716613))))

(declare-fun b!2265010 () Bool)

(declare-fun e!1450469 () Bool)

(assert (=> b!2265010 (= e!1450469 (= (rule!6599 (head!4870 tokens!456)) r!2363))))

(declare-fun res!968290 () Bool)

(declare-fun e!1450450 () Bool)

(assert (=> start!221240 (=> (not res!968290) (not e!1450450))))

(get-info :version)

(assert (=> start!221240 (= res!968290 ((_ is Lexer!3880) thiss!16613))))

(assert (=> start!221240 e!1450450))

(assert (=> start!221240 true))

(declare-fun e!1450474 () Bool)

(assert (=> start!221240 e!1450474))

(declare-fun e!1450457 () Bool)

(assert (=> start!221240 e!1450457))

(declare-fun e!1450463 () Bool)

(assert (=> start!221240 e!1450463))

(assert (=> start!221240 e!1450449))

(declare-fun e!1450466 () Bool)

(assert (=> start!221240 e!1450466))

(assert (=> start!221240 e!1450462))

(declare-fun e!1450473 () Bool)

(assert (=> start!221240 e!1450473))

(assert (=> b!2265011 (= e!1450460 (and tp!716617 tp!716620))))

(declare-fun b!2265012 () Bool)

(assert (=> b!2265012 (= e!1450472 e!1450456)))

(declare-fun res!968274 () Bool)

(assert (=> b!2265012 (=> res!968274 e!1450456)))

(declare-fun lt!841749 () Option!5263)

(declare-fun lt!841740 () Option!5263)

(assert (=> b!2265012 (= res!968274 (or (not (= lt!841739 lt!841749)) (not (= lt!841740 lt!841749))))))

(declare-fun lt!841736 () List!27008)

(assert (=> b!2265012 (= lt!841749 (Some!5262 (tuple2!26543 lt!841751 lt!841736)))))

(assert (=> b!2265012 (isPrefix!2275 input!1722 input!1722)))

(declare-fun lt!841737 () Unit!39864)

(declare-fun lemmaIsPrefixRefl!1459 (List!27008 List!27008) Unit!39864)

(assert (=> b!2265012 (= lt!841737 (lemmaIsPrefixRefl!1459 input!1722 input!1722))))

(declare-fun lt!841742 () Unit!39864)

(declare-fun lemmaSemiInverse!1032 (TokenValueInjection!8434 BalanceConc!17164) Unit!39864)

(assert (=> b!2265012 (= lt!841742 (lemmaSemiInverse!1032 (transformation!4285 r!2363) lt!841750))))

(declare-fun b!2265013 () Bool)

(declare-fun e!1450476 () Bool)

(assert (=> b!2265013 (= e!1450476 e!1450453)))

(declare-fun res!968288 () Bool)

(assert (=> b!2265013 (=> (not res!968288) (not e!1450453))))

(assert (=> b!2265013 (= res!968288 e!1450471)))

(declare-fun res!968292 () Bool)

(assert (=> b!2265013 (=> res!968292 e!1450471)))

(declare-fun lt!841729 () Bool)

(assert (=> b!2265013 (= res!968292 lt!841729)))

(declare-fun isEmpty!15225 (List!27009) Bool)

(assert (=> b!2265013 (= lt!841729 (isEmpty!15225 tokens!456))))

(declare-fun b!2265014 () Bool)

(declare-fun e!1450470 () Bool)

(declare-fun e!1450454 () Bool)

(assert (=> b!2265014 (= e!1450470 e!1450454)))

(declare-fun res!968281 () Bool)

(assert (=> b!2265014 (=> res!968281 e!1450454)))

(assert (=> b!2265014 (= res!968281 (> lt!841738 lt!841747))))

(declare-fun getIndex!306 (List!27010 Rule!8370) Int)

(assert (=> b!2265014 (= lt!841747 (getIndex!306 rules!1750 otherR!12))))

(assert (=> b!2265014 (= lt!841738 (getIndex!306 rules!1750 r!2363))))

(declare-fun ruleValid!1377 (LexerInterface!3882 Rule!8370) Bool)

(assert (=> b!2265014 (ruleValid!1377 thiss!16613 otherR!12)))

(declare-fun lt!841752 () Unit!39864)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!784 (LexerInterface!3882 Rule!8370 List!27010) Unit!39864)

(assert (=> b!2265014 (= lt!841752 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!784 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2265015 () Bool)

(declare-fun e!1450468 () Unit!39864)

(declare-fun Unit!39866 () Unit!39864)

(assert (=> b!2265015 (= e!1450468 Unit!39866)))

(declare-fun lt!841734 () Unit!39864)

(declare-fun lemmaSameIndexThenSameElement!152 (List!27010 Rule!8370 Rule!8370) Unit!39864)

(assert (=> b!2265015 (= lt!841734 (lemmaSameIndexThenSameElement!152 rules!1750 r!2363 otherR!12))))

(assert (=> b!2265015 false))

(declare-fun e!1450455 () Bool)

(assert (=> b!2265016 (= e!1450455 (and tp!716611 tp!716610))))

(declare-fun b!2265017 () Bool)

(declare-fun res!968284 () Bool)

(assert (=> b!2265017 (=> (not res!968284) (not e!1450450))))

(declare-fun isEmpty!15226 (List!27010) Bool)

(assert (=> b!2265017 (= res!968284 (not (isEmpty!15226 rules!1750)))))

(declare-fun b!2265018 () Bool)

(declare-fun res!968283 () Bool)

(assert (=> b!2265018 (=> (not res!968283) (not e!1450453))))

(assert (=> b!2265018 (= res!968283 e!1450469)))

(declare-fun res!968272 () Bool)

(assert (=> b!2265018 (=> res!968272 e!1450469)))

(assert (=> b!2265018 (= res!968272 lt!841729)))

(declare-fun b!2265019 () Bool)

(declare-fun e!1450461 () Bool)

(assert (=> b!2265019 (= e!1450454 e!1450461)))

(declare-fun res!968277 () Bool)

(assert (=> b!2265019 (=> res!968277 e!1450461)))

(assert (=> b!2265019 (= res!968277 ((_ is Nil!26915) tokens!456))))

(declare-fun lt!841745 () Unit!39864)

(assert (=> b!2265019 (= lt!841745 e!1450468)))

(declare-fun c!359757 () Bool)

(assert (=> b!2265019 (= c!359757 (= lt!841738 lt!841747))))

(declare-fun b!2265020 () Bool)

(declare-fun e!1450465 () Bool)

(declare-fun tp!716623 () Bool)

(assert (=> b!2265020 (= e!1450466 (and e!1450465 tp!716623))))

(declare-fun b!2265021 () Bool)

(declare-fun res!968291 () Bool)

(assert (=> b!2265021 (=> res!968291 e!1450475)))

(declare-fun size!21104 (List!27009) Int)

(assert (=> b!2265021 (= res!968291 (<= (size!21104 tokens!456) 0))))

(declare-fun b!2265022 () Bool)

(declare-fun tp!716622 () Bool)

(assert (=> b!2265022 (= e!1450463 (and tp_is_empty!10487 tp!716622))))

(declare-fun b!2265023 () Bool)

(assert (=> b!2265023 (= e!1450450 e!1450476)))

(declare-fun res!968276 () Bool)

(assert (=> b!2265023 (=> (not res!968276) (not e!1450476))))

(declare-datatypes ((IArray!17443 0))(
  ( (IArray!17444 (innerList!8779 List!27009)) )
))
(declare-datatypes ((Conc!8719 0))(
  ( (Node!8719 (left!20426 Conc!8719) (right!20756 Conc!8719) (csize!17668 Int) (cheight!8930 Int)) (Leaf!12847 (xs!11661 IArray!17443) (csize!17669 Int)) (Empty!8719) )
))
(declare-datatypes ((BalanceConc!17166 0))(
  ( (BalanceConc!17167 (c!359760 Conc!8719)) )
))
(declare-datatypes ((tuple2!26544 0))(
  ( (tuple2!26545 (_1!15782 BalanceConc!17166) (_2!15782 BalanceConc!17164)) )
))
(declare-fun lt!841735 () tuple2!26544)

(declare-fun suffix!886 () List!27008)

(declare-datatypes ((tuple2!26546 0))(
  ( (tuple2!26547 (_1!15783 List!27009) (_2!15783 List!27008)) )
))
(declare-fun list!10401 (BalanceConc!17166) List!27009)

(declare-fun list!10402 (BalanceConc!17164) List!27008)

(assert (=> b!2265023 (= res!968276 (= (tuple2!26547 (list!10401 (_1!15782 lt!841735)) (list!10402 (_2!15782 lt!841735))) (tuple2!26547 tokens!456 suffix!886)))))

(declare-fun lex!1721 (LexerInterface!3882 List!27010 BalanceConc!17164) tuple2!26544)

(assert (=> b!2265023 (= lt!841735 (lex!1721 thiss!16613 rules!1750 (seqFromList!2989 input!1722)))))

(declare-fun tp!716616 () Bool)

(declare-fun b!2265024 () Bool)

(declare-fun e!1450459 () Bool)

(declare-fun inv!36460 (Token!8048) Bool)

(assert (=> b!2265024 (= e!1450473 (and (inv!36460 (h!32316 tokens!456)) e!1450459 tp!716616))))

(declare-fun tp!716615 () Bool)

(declare-fun b!2265025 () Bool)

(declare-fun e!1450447 () Bool)

(assert (=> b!2265025 (= e!1450447 (and tp!716615 (inv!36456 (tag!4775 (rule!6599 (h!32316 tokens!456)))) (inv!36459 (transformation!4285 (rule!6599 (h!32316 tokens!456)))) e!1450451))))

(declare-fun b!2265026 () Bool)

(declare-fun tp!716621 () Bool)

(declare-fun inv!21 (TokenValue!4447) Bool)

(assert (=> b!2265026 (= e!1450459 (and (inv!21 (value!135942 (h!32316 tokens!456))) e!1450447 tp!716621))))

(declare-fun b!2265027 () Bool)

(declare-fun tp!716606 () Bool)

(assert (=> b!2265027 (= e!1450457 (and tp!716606 (inv!36456 (tag!4775 otherR!12)) (inv!36459 (transformation!4285 otherR!12)) e!1450452))))

(declare-fun b!2265028 () Bool)

(assert (=> b!2265028 (= e!1450453 (not e!1450470))))

(declare-fun res!968282 () Bool)

(assert (=> b!2265028 (=> res!968282 e!1450470)))

(declare-fun e!1450477 () Bool)

(assert (=> b!2265028 (= res!968282 e!1450477)))

(declare-fun res!968289 () Bool)

(assert (=> b!2265028 (=> (not res!968289) (not e!1450477))))

(assert (=> b!2265028 (= res!968289 (not lt!841729))))

(assert (=> b!2265028 (ruleValid!1377 thiss!16613 r!2363)))

(declare-fun lt!841731 () Unit!39864)

(assert (=> b!2265028 (= lt!841731 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!784 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2265029 () Bool)

(declare-fun res!968271 () Bool)

(assert (=> b!2265029 (=> (not res!968271) (not e!1450450))))

(declare-fun rulesInvariant!3384 (LexerInterface!3882 List!27010) Bool)

(assert (=> b!2265029 (= res!968271 (rulesInvariant!3384 thiss!16613 rules!1750))))

(declare-fun b!2265030 () Bool)

(declare-fun res!968275 () Bool)

(assert (=> b!2265030 (=> (not res!968275) (not e!1450450))))

(declare-fun contains!4643 (List!27010 Rule!8370) Bool)

(assert (=> b!2265030 (= res!968275 (contains!4643 rules!1750 r!2363))))

(declare-fun b!2265031 () Bool)

(declare-fun res!968285 () Bool)

(assert (=> b!2265031 (=> (not res!968285) (not e!1450453))))

(assert (=> b!2265031 (= res!968285 (isPrefix!2275 otherP!12 input!1722))))

(declare-fun tp!716608 () Bool)

(declare-fun b!2265032 () Bool)

(assert (=> b!2265032 (= e!1450465 (and tp!716608 (inv!36456 (tag!4775 (h!32317 rules!1750))) (inv!36459 (transformation!4285 (h!32317 rules!1750))) e!1450455))))

(declare-fun b!2265033 () Bool)

(declare-fun res!968287 () Bool)

(assert (=> b!2265033 (=> res!968287 e!1450472)))

(assert (=> b!2265033 (= res!968287 (not (matchR!2894 (regex!4285 r!2363) lt!841746)))))

(declare-fun b!2265034 () Bool)

(declare-fun Unit!39867 () Unit!39864)

(assert (=> b!2265034 (= e!1450468 Unit!39867)))

(declare-fun b!2265035 () Bool)

(assert (=> b!2265035 (= e!1450461 e!1450446)))

(declare-fun res!968286 () Bool)

(assert (=> b!2265035 (=> res!968286 e!1450446)))

(declare-fun lt!841730 () Int)

(assert (=> b!2265035 (= res!968286 (<= lt!841730 lt!841748))))

(assert (=> b!2265035 (= lt!841748 (size!21103 lt!841746))))

(assert (=> b!2265035 (= lt!841730 (size!21103 otherP!12))))

(assert (=> b!2265035 (= (_2!15781 lt!841732) lt!841736)))

(declare-fun lt!841743 () Unit!39864)

(declare-fun lemmaSamePrefixThenSameSuffix!1004 (List!27008 List!27008 List!27008 List!27008 List!27008) Unit!39864)

(assert (=> b!2265035 (= lt!841743 (lemmaSamePrefixThenSameSuffix!1004 lt!841746 (_2!15781 lt!841732) lt!841746 lt!841736 input!1722))))

(declare-fun getSuffix!1086 (List!27008 List!27008) List!27008)

(assert (=> b!2265035 (= lt!841736 (getSuffix!1086 input!1722 lt!841746))))

(declare-fun ++!6557 (List!27008 List!27008) List!27008)

(assert (=> b!2265035 (isPrefix!2275 lt!841746 (++!6557 lt!841746 (_2!15781 lt!841732)))))

(declare-fun lt!841733 () Unit!39864)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1500 (List!27008 List!27008) Unit!39864)

(assert (=> b!2265035 (= lt!841733 (lemmaConcatTwoListThenFirstIsPrefix!1500 lt!841746 (_2!15781 lt!841732)))))

(assert (=> b!2265035 (= lt!841746 (list!10402 (charsOf!2673 (h!32316 tokens!456))))))

(declare-fun get!8121 (Option!5263) tuple2!26542)

(assert (=> b!2265035 (= lt!841732 (get!8121 lt!841740))))

(declare-fun maxPrefix!2156 (LexerInterface!3882 List!27010 List!27008) Option!5263)

(assert (=> b!2265035 (= lt!841740 (maxPrefix!2156 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2265036 () Bool)

(assert (=> b!2265036 (= e!1450477 (not (matchR!2894 (regex!4285 r!2363) (list!10402 (charsOf!2673 (head!4870 tokens!456))))))))

(declare-fun b!2265037 () Bool)

(declare-fun tp!716614 () Bool)

(assert (=> b!2265037 (= e!1450474 (and tp_is_empty!10487 tp!716614))))

(declare-fun b!2265038 () Bool)

(declare-fun res!968280 () Bool)

(assert (=> b!2265038 (=> (not res!968280) (not e!1450450))))

(assert (=> b!2265038 (= res!968280 (contains!4643 rules!1750 otherR!12))))

(assert (= (and start!221240 res!968290) b!2265017))

(assert (= (and b!2265017 res!968284) b!2265029))

(assert (= (and b!2265029 res!968271) b!2265030))

(assert (= (and b!2265030 res!968275) b!2265038))

(assert (= (and b!2265038 res!968280) b!2265023))

(assert (= (and b!2265023 res!968276) b!2265013))

(assert (= (and b!2265013 (not res!968292)) b!2265006))

(assert (= (and b!2265013 res!968288) b!2265018))

(assert (= (and b!2265018 (not res!968272)) b!2265010))

(assert (= (and b!2265018 res!968283) b!2265031))

(assert (= (and b!2265031 res!968285) b!2265007))

(assert (= (and b!2265007 res!968278) b!2265028))

(assert (= (and b!2265028 res!968289) b!2265036))

(assert (= (and b!2265028 (not res!968282)) b!2265014))

(assert (= (and b!2265014 (not res!968281)) b!2265019))

(assert (= (and b!2265019 c!359757) b!2265015))

(assert (= (and b!2265019 (not c!359757)) b!2265034))

(assert (= (and b!2265019 (not res!968277)) b!2265035))

(assert (= (and b!2265035 (not res!968286)) b!2265005))

(assert (= (and b!2265005 (not res!968273)) b!2265033))

(assert (= (and b!2265033 (not res!968287)) b!2265012))

(assert (= (and b!2265012 (not res!968274)) b!2265008))

(assert (= (and b!2265008 (not res!968279)) b!2265021))

(assert (= (and b!2265021 (not res!968291)) b!2265004))

(assert (= (and start!221240 ((_ is Cons!26914) input!1722)) b!2265037))

(assert (= b!2265027 b!2265001))

(assert (= start!221240 b!2265027))

(assert (= (and start!221240 ((_ is Cons!26914) suffix!886)) b!2265022))

(assert (= (and start!221240 ((_ is Cons!26914) otherP!12)) b!2265009))

(assert (= b!2265032 b!2265016))

(assert (= b!2265020 b!2265032))

(assert (= (and start!221240 ((_ is Cons!26916) rules!1750)) b!2265020))

(assert (= b!2265002 b!2265011))

(assert (= start!221240 b!2265002))

(assert (= b!2265025 b!2265003))

(assert (= b!2265026 b!2265025))

(assert (= b!2265024 b!2265026))

(assert (= (and start!221240 ((_ is Cons!26915) tokens!456)) b!2265024))

(declare-fun m!2694405 () Bool)

(assert (=> b!2265026 m!2694405))

(declare-fun m!2694407 () Bool)

(assert (=> b!2265027 m!2694407))

(declare-fun m!2694409 () Bool)

(assert (=> b!2265027 m!2694409))

(declare-fun m!2694411 () Bool)

(assert (=> b!2265025 m!2694411))

(declare-fun m!2694413 () Bool)

(assert (=> b!2265025 m!2694413))

(declare-fun m!2694415 () Bool)

(assert (=> b!2265036 m!2694415))

(assert (=> b!2265036 m!2694415))

(declare-fun m!2694417 () Bool)

(assert (=> b!2265036 m!2694417))

(assert (=> b!2265036 m!2694417))

(declare-fun m!2694419 () Bool)

(assert (=> b!2265036 m!2694419))

(assert (=> b!2265036 m!2694419))

(declare-fun m!2694421 () Bool)

(assert (=> b!2265036 m!2694421))

(assert (=> b!2265010 m!2694415))

(declare-fun m!2694423 () Bool)

(assert (=> b!2265013 m!2694423))

(declare-fun m!2694425 () Bool)

(assert (=> b!2265005 m!2694425))

(declare-fun m!2694427 () Bool)

(assert (=> b!2265005 m!2694427))

(declare-fun m!2694429 () Bool)

(assert (=> b!2265005 m!2694429))

(declare-fun m!2694431 () Bool)

(assert (=> b!2265005 m!2694431))

(declare-fun m!2694433 () Bool)

(assert (=> b!2265005 m!2694433))

(declare-fun m!2694435 () Bool)

(assert (=> b!2265008 m!2694435))

(declare-fun m!2694437 () Bool)

(assert (=> b!2265008 m!2694437))

(declare-fun m!2694439 () Bool)

(assert (=> b!2265014 m!2694439))

(declare-fun m!2694441 () Bool)

(assert (=> b!2265014 m!2694441))

(declare-fun m!2694443 () Bool)

(assert (=> b!2265014 m!2694443))

(declare-fun m!2694445 () Bool)

(assert (=> b!2265014 m!2694445))

(declare-fun m!2694447 () Bool)

(assert (=> b!2265032 m!2694447))

(declare-fun m!2694449 () Bool)

(assert (=> b!2265032 m!2694449))

(declare-fun m!2694451 () Bool)

(assert (=> b!2265015 m!2694451))

(declare-fun m!2694453 () Bool)

(assert (=> b!2265031 m!2694453))

(declare-fun m!2694455 () Bool)

(assert (=> b!2265030 m!2694455))

(declare-fun m!2694457 () Bool)

(assert (=> b!2265024 m!2694457))

(declare-fun m!2694459 () Bool)

(assert (=> b!2265012 m!2694459))

(declare-fun m!2694461 () Bool)

(assert (=> b!2265012 m!2694461))

(declare-fun m!2694463 () Bool)

(assert (=> b!2265012 m!2694463))

(assert (=> b!2265006 m!2694415))

(assert (=> b!2265006 m!2694415))

(assert (=> b!2265006 m!2694417))

(assert (=> b!2265006 m!2694417))

(declare-fun m!2694465 () Bool)

(assert (=> b!2265006 m!2694465))

(declare-fun m!2694467 () Bool)

(assert (=> b!2265006 m!2694467))

(declare-fun m!2694469 () Bool)

(assert (=> b!2265038 m!2694469))

(declare-fun m!2694471 () Bool)

(assert (=> b!2265035 m!2694471))

(declare-fun m!2694473 () Bool)

(assert (=> b!2265035 m!2694473))

(declare-fun m!2694475 () Bool)

(assert (=> b!2265035 m!2694475))

(declare-fun m!2694477 () Bool)

(assert (=> b!2265035 m!2694477))

(declare-fun m!2694479 () Bool)

(assert (=> b!2265035 m!2694479))

(declare-fun m!2694481 () Bool)

(assert (=> b!2265035 m!2694481))

(declare-fun m!2694483 () Bool)

(assert (=> b!2265035 m!2694483))

(declare-fun m!2694485 () Bool)

(assert (=> b!2265035 m!2694485))

(assert (=> b!2265035 m!2694481))

(declare-fun m!2694487 () Bool)

(assert (=> b!2265035 m!2694487))

(assert (=> b!2265035 m!2694487))

(declare-fun m!2694489 () Bool)

(assert (=> b!2265035 m!2694489))

(assert (=> b!2265035 m!2694467))

(declare-fun m!2694491 () Bool)

(assert (=> b!2265033 m!2694491))

(declare-fun m!2694493 () Bool)

(assert (=> b!2265002 m!2694493))

(declare-fun m!2694495 () Bool)

(assert (=> b!2265002 m!2694495))

(declare-fun m!2694497 () Bool)

(assert (=> b!2265017 m!2694497))

(declare-fun m!2694499 () Bool)

(assert (=> b!2265023 m!2694499))

(declare-fun m!2694501 () Bool)

(assert (=> b!2265023 m!2694501))

(declare-fun m!2694503 () Bool)

(assert (=> b!2265023 m!2694503))

(assert (=> b!2265023 m!2694503))

(declare-fun m!2694505 () Bool)

(assert (=> b!2265023 m!2694505))

(declare-fun m!2694507 () Bool)

(assert (=> b!2265028 m!2694507))

(declare-fun m!2694509 () Bool)

(assert (=> b!2265028 m!2694509))

(declare-fun m!2694511 () Bool)

(assert (=> b!2265021 m!2694511))

(declare-fun m!2694513 () Bool)

(assert (=> b!2265029 m!2694513))

(check-sat (not b!2265032) b_and!178163 (not b_next!67781) (not b!2265030) (not b!2265026) (not b!2265027) (not b!2265020) b_and!178155 (not b!2265022) (not b!2265014) b_and!178157 b_and!178153 (not b_next!67785) (not b!2265031) (not b_next!67773) (not b!2265012) (not b_next!67775) (not b_next!67777) (not b!2265023) tp_is_empty!10487 b_and!178165 (not b!2265035) (not b!2265013) (not b!2265009) (not b!2265025) (not b!2265006) b_and!178161 (not b!2265005) (not b!2265036) (not b!2265038) (not b!2265021) (not b!2265037) (not b!2265002) (not b!2265029) (not b_next!67779) (not b!2265010) (not b!2265024) (not b!2265008) (not b_next!67787) (not b_next!67783) (not b!2265033) (not b!2265028) b_and!178159 (not b!2265017) b_and!178167 (not b!2265015))
(check-sat b_and!178163 (not b_next!67777) b_and!178165 b_and!178161 (not b_next!67781) (not b_next!67779) (not b_next!67787) b_and!178155 (not b_next!67783) b_and!178157 b_and!178159 b_and!178153 b_and!178167 (not b_next!67785) (not b_next!67773) (not b_next!67775))
