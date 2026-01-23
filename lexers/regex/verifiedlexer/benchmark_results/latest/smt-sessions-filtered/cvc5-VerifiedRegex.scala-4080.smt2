; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218674 () Bool)

(assert start!218674)

(declare-fun b!2243334 () Bool)

(declare-fun b_free!65181 () Bool)

(declare-fun b_next!65885 () Bool)

(assert (=> b!2243334 (= b_free!65181 (not b_next!65885))))

(declare-fun tp!707558 () Bool)

(declare-fun b_and!175209 () Bool)

(assert (=> b!2243334 (= tp!707558 b_and!175209)))

(declare-fun b_free!65183 () Bool)

(declare-fun b_next!65887 () Bool)

(assert (=> b!2243334 (= b_free!65183 (not b_next!65887))))

(declare-fun tp!707553 () Bool)

(declare-fun b_and!175211 () Bool)

(assert (=> b!2243334 (= tp!707553 b_and!175211)))

(declare-fun b!2243347 () Bool)

(declare-fun b_free!65185 () Bool)

(declare-fun b_next!65889 () Bool)

(assert (=> b!2243347 (= b_free!65185 (not b_next!65889))))

(declare-fun tp!707555 () Bool)

(declare-fun b_and!175213 () Bool)

(assert (=> b!2243347 (= tp!707555 b_and!175213)))

(declare-fun b_free!65187 () Bool)

(declare-fun b_next!65891 () Bool)

(assert (=> b!2243347 (= b_free!65187 (not b_next!65891))))

(declare-fun tp!707566 () Bool)

(declare-fun b_and!175215 () Bool)

(assert (=> b!2243347 (= tp!707566 b_and!175215)))

(declare-fun b!2243348 () Bool)

(declare-fun b_free!65189 () Bool)

(declare-fun b_next!65893 () Bool)

(assert (=> b!2243348 (= b_free!65189 (not b_next!65893))))

(declare-fun tp!707557 () Bool)

(declare-fun b_and!175217 () Bool)

(assert (=> b!2243348 (= tp!707557 b_and!175217)))

(declare-fun b_free!65191 () Bool)

(declare-fun b_next!65895 () Bool)

(assert (=> b!2243348 (= b_free!65191 (not b_next!65895))))

(declare-fun tp!707552 () Bool)

(declare-fun b_and!175219 () Bool)

(assert (=> b!2243348 (= tp!707552 b_and!175219)))

(declare-fun b!2243343 () Bool)

(declare-fun b_free!65193 () Bool)

(declare-fun b_next!65897 () Bool)

(assert (=> b!2243343 (= b_free!65193 (not b_next!65897))))

(declare-fun tp!707560 () Bool)

(declare-fun b_and!175221 () Bool)

(assert (=> b!2243343 (= tp!707560 b_and!175221)))

(declare-fun b_free!65195 () Bool)

(declare-fun b_next!65899 () Bool)

(assert (=> b!2243343 (= b_free!65195 (not b_next!65899))))

(declare-fun tp!707563 () Bool)

(declare-fun b_and!175223 () Bool)

(assert (=> b!2243343 (= tp!707563 b_and!175223)))

(declare-fun b!2243331 () Bool)

(declare-fun e!1434765 () Bool)

(declare-fun e!1434782 () Bool)

(assert (=> b!2243331 (= e!1434765 e!1434782)))

(declare-fun res!958512 () Bool)

(assert (=> b!2243331 (=> (not res!958512) (not e!1434782))))

(declare-datatypes ((List!26593 0))(
  ( (Nil!26499) (Cons!26499 (h!31900 (_ BitVec 16)) (t!200123 List!26593)) )
))
(declare-datatypes ((TokenValue!4352 0))(
  ( (FloatLiteralValue!8704 (text!30909 List!26593)) (TokenValueExt!4351 (__x!17764 Int)) (Broken!21760 (value!133210 List!26593)) (Object!4445) (End!4352) (Def!4352) (Underscore!4352) (Match!4352) (Else!4352) (Error!4352) (Case!4352) (If!4352) (Extends!4352) (Abstract!4352) (Class!4352) (Val!4352) (DelimiterValue!8704 (del!4412 List!26593)) (KeywordValue!4358 (value!133211 List!26593)) (CommentValue!8704 (value!133212 List!26593)) (WhitespaceValue!8704 (value!133213 List!26593)) (IndentationValue!4352 (value!133214 List!26593)) (String!28865) (Int32!4352) (Broken!21761 (value!133215 List!26593)) (Boolean!4353) (Unit!39498) (OperatorValue!4355 (op!4412 List!26593)) (IdentifierValue!8704 (value!133216 List!26593)) (IdentifierValue!8705 (value!133217 List!26593)) (WhitespaceValue!8705 (value!133218 List!26593)) (True!8704) (False!8704) (Broken!21762 (value!133219 List!26593)) (Broken!21763 (value!133220 List!26593)) (True!8705) (RightBrace!4352) (RightBracket!4352) (Colon!4352) (Null!4352) (Comma!4352) (LeftBracket!4352) (False!8705) (LeftBrace!4352) (ImaginaryLiteralValue!4352 (text!30910 List!26593)) (StringLiteralValue!13056 (value!133221 List!26593)) (EOFValue!4352 (value!133222 List!26593)) (IdentValue!4352 (value!133223 List!26593)) (DelimiterValue!8705 (value!133224 List!26593)) (DedentValue!4352 (value!133225 List!26593)) (NewLineValue!4352 (value!133226 List!26593)) (IntegerValue!13056 (value!133227 (_ BitVec 32)) (text!30911 List!26593)) (IntegerValue!13057 (value!133228 Int) (text!30912 List!26593)) (Times!4352) (Or!4352) (Equal!4352) (Minus!4352) (Broken!21764 (value!133229 List!26593)) (And!4352) (Div!4352) (LessEqual!4352) (Mod!4352) (Concat!10890) (Not!4352) (Plus!4352) (SpaceValue!4352 (value!133230 List!26593)) (IntegerValue!13058 (value!133231 Int) (text!30913 List!26593)) (StringLiteralValue!13057 (text!30914 List!26593)) (FloatLiteralValue!8705 (text!30915 List!26593)) (BytesLiteralValue!4352 (value!133232 List!26593)) (CommentValue!8705 (value!133233 List!26593)) (StringLiteralValue!13058 (value!133234 List!26593)) (ErrorTokenValue!4352 (msg!4413 List!26593)) )
))
(declare-datatypes ((C!13222 0))(
  ( (C!13223 (val!7659 Int)) )
))
(declare-datatypes ((List!26594 0))(
  ( (Nil!26500) (Cons!26500 (h!31901 C!13222) (t!200124 List!26594)) )
))
(declare-datatypes ((IArray!17061 0))(
  ( (IArray!17062 (innerList!8588 List!26594)) )
))
(declare-datatypes ((Regex!6538 0))(
  ( (ElementMatch!6538 (c!357164 C!13222)) (Concat!10891 (regOne!13588 Regex!6538) (regTwo!13588 Regex!6538)) (EmptyExpr!6538) (Star!6538 (reg!6867 Regex!6538)) (EmptyLang!6538) (Union!6538 (regOne!13589 Regex!6538) (regTwo!13589 Regex!6538)) )
))
(declare-datatypes ((String!28866 0))(
  ( (String!28867 (value!133235 String)) )
))
(declare-datatypes ((Conc!8528 0))(
  ( (Node!8528 (left!20156 Conc!8528) (right!20486 Conc!8528) (csize!17286 Int) (cheight!8739 Int)) (Leaf!12609 (xs!11470 IArray!17061) (csize!17287 Int)) (Empty!8528) )
))
(declare-datatypes ((BalanceConc!16784 0))(
  ( (BalanceConc!16785 (c!357165 Conc!8528)) )
))
(declare-datatypes ((TokenValueInjection!8244 0))(
  ( (TokenValueInjection!8245 (toValue!5920 Int) (toChars!5779 Int)) )
))
(declare-datatypes ((Rule!8180 0))(
  ( (Rule!8181 (regex!4190 Regex!6538) (tag!4680 String!28866) (isSeparator!4190 Bool) (transformation!4190 TokenValueInjection!8244)) )
))
(declare-datatypes ((Token!7858 0))(
  ( (Token!7859 (value!133236 TokenValue!4352) (rule!6488 Rule!8180) (size!20717 Int) (originalCharacters!4960 List!26594)) )
))
(declare-datatypes ((List!26595 0))(
  ( (Nil!26501) (Cons!26501 (h!31902 Token!7858) (t!200125 List!26595)) )
))
(declare-datatypes ((IArray!17063 0))(
  ( (IArray!17064 (innerList!8589 List!26595)) )
))
(declare-datatypes ((Conc!8529 0))(
  ( (Node!8529 (left!20157 Conc!8529) (right!20487 Conc!8529) (csize!17288 Int) (cheight!8740 Int)) (Leaf!12610 (xs!11471 IArray!17063) (csize!17289 Int)) (Empty!8529) )
))
(declare-datatypes ((BalanceConc!16786 0))(
  ( (BalanceConc!16787 (c!357166 Conc!8529)) )
))
(declare-datatypes ((tuple2!25964 0))(
  ( (tuple2!25965 (_1!15492 BalanceConc!16786) (_2!15492 BalanceConc!16784)) )
))
(declare-fun lt!835017 () tuple2!25964)

(declare-fun tokens!456 () List!26595)

(declare-fun suffix!886 () List!26594)

(declare-datatypes ((tuple2!25966 0))(
  ( (tuple2!25967 (_1!15493 List!26595) (_2!15493 List!26594)) )
))
(declare-fun list!10122 (BalanceConc!16786) List!26595)

(declare-fun list!10123 (BalanceConc!16784) List!26594)

(assert (=> b!2243331 (= res!958512 (= (tuple2!25967 (list!10122 (_1!15492 lt!835017)) (list!10123 (_2!15492 lt!835017))) (tuple2!25967 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3787 0))(
  ( (LexerInterfaceExt!3784 (__x!17765 Int)) (Lexer!3785) )
))
(declare-fun thiss!16613 () LexerInterface!3787)

(declare-fun input!1722 () List!26594)

(declare-datatypes ((List!26596 0))(
  ( (Nil!26502) (Cons!26502 (h!31903 Rule!8180) (t!200126 List!26596)) )
))
(declare-fun rules!1750 () List!26596)

(declare-fun lex!1626 (LexerInterface!3787 List!26596 BalanceConc!16784) tuple2!25964)

(declare-fun seqFromList!2894 (List!26594) BalanceConc!16784)

(assert (=> b!2243331 (= lt!835017 (lex!1626 thiss!16613 rules!1750 (seqFromList!2894 input!1722)))))

(declare-fun b!2243332 () Bool)

(declare-fun res!958510 () Bool)

(assert (=> b!2243332 (=> (not res!958510) (not e!1434765))))

(declare-fun rulesInvariant!3289 (LexerInterface!3787 List!26596) Bool)

(assert (=> b!2243332 (= res!958510 (rulesInvariant!3289 thiss!16613 rules!1750))))

(declare-fun b!2243333 () Bool)

(declare-fun e!1434766 () Bool)

(declare-fun tp_is_empty!10297 () Bool)

(declare-fun tp!707562 () Bool)

(assert (=> b!2243333 (= e!1434766 (and tp_is_empty!10297 tp!707562))))

(declare-fun e!1434774 () Bool)

(assert (=> b!2243334 (= e!1434774 (and tp!707558 tp!707553))))

(declare-fun res!958511 () Bool)

(assert (=> start!218674 (=> (not res!958511) (not e!1434765))))

(assert (=> start!218674 (= res!958511 (is-Lexer!3785 thiss!16613))))

(assert (=> start!218674 e!1434765))

(assert (=> start!218674 true))

(assert (=> start!218674 e!1434766))

(declare-fun e!1434772 () Bool)

(assert (=> start!218674 e!1434772))

(declare-fun e!1434764 () Bool)

(assert (=> start!218674 e!1434764))

(declare-fun e!1434780 () Bool)

(assert (=> start!218674 e!1434780))

(declare-fun e!1434773 () Bool)

(assert (=> start!218674 e!1434773))

(declare-fun e!1434777 () Bool)

(assert (=> start!218674 e!1434777))

(declare-fun e!1434770 () Bool)

(declare-fun e!1434776 () Bool)

(declare-fun tp!707561 () Bool)

(declare-fun b!2243335 () Bool)

(declare-fun inv!36028 (String!28866) Bool)

(declare-fun inv!36031 (TokenValueInjection!8244) Bool)

(assert (=> b!2243335 (= e!1434770 (and tp!707561 (inv!36028 (tag!4680 (h!31903 rules!1750))) (inv!36031 (transformation!4190 (h!31903 rules!1750))) e!1434776))))

(declare-fun e!1434781 () Bool)

(declare-fun tp!707565 () Bool)

(declare-fun b!2243336 () Bool)

(declare-fun e!1434779 () Bool)

(assert (=> b!2243336 (= e!1434781 (and tp!707565 (inv!36028 (tag!4680 (rule!6488 (h!31902 tokens!456)))) (inv!36031 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) e!1434779))))

(declare-fun tp!707559 () Bool)

(declare-fun b!2243337 () Bool)

(declare-fun e!1434769 () Bool)

(declare-fun inv!36032 (Token!7858) Bool)

(assert (=> b!2243337 (= e!1434777 (and (inv!36032 (h!31902 tokens!456)) e!1434769 tp!707559))))

(declare-fun b!2243338 () Bool)

(declare-fun res!958509 () Bool)

(assert (=> b!2243338 (=> (not res!958509) (not e!1434765))))

(declare-fun otherR!12 () Rule!8180)

(declare-fun contains!4537 (List!26596 Rule!8180) Bool)

(assert (=> b!2243338 (= res!958509 (contains!4537 rules!1750 otherR!12))))

(declare-fun b!2243339 () Bool)

(declare-fun tp!707556 () Bool)

(assert (=> b!2243339 (= e!1434764 (and tp_is_empty!10297 tp!707556))))

(declare-fun b!2243340 () Bool)

(assert (=> b!2243340 (= e!1434782 (= tokens!456 Nil!26501))))

(declare-fun b!2243341 () Bool)

(declare-fun res!958507 () Bool)

(assert (=> b!2243341 (=> (not res!958507) (not e!1434765))))

(declare-fun isEmpty!14915 (List!26596) Bool)

(assert (=> b!2243341 (= res!958507 (not (isEmpty!14915 rules!1750)))))

(declare-fun b!2243342 () Bool)

(declare-fun tp!707554 () Bool)

(declare-fun inv!21 (TokenValue!4352) Bool)

(assert (=> b!2243342 (= e!1434769 (and (inv!21 (value!133236 (h!31902 tokens!456))) e!1434781 tp!707554))))

(assert (=> b!2243343 (= e!1434776 (and tp!707560 tp!707563))))

(declare-fun e!1434775 () Bool)

(declare-fun tp!707551 () Bool)

(declare-fun r!2363 () Rule!8180)

(declare-fun b!2243344 () Bool)

(assert (=> b!2243344 (= e!1434773 (and tp!707551 (inv!36028 (tag!4680 r!2363)) (inv!36031 (transformation!4190 r!2363)) e!1434775))))

(declare-fun b!2243345 () Bool)

(declare-fun tp!707564 () Bool)

(assert (=> b!2243345 (= e!1434780 (and e!1434770 tp!707564))))

(declare-fun b!2243346 () Bool)

(declare-fun res!958506 () Bool)

(assert (=> b!2243346 (=> (not res!958506) (not e!1434782))))

(declare-fun isEmpty!14916 (List!26595) Bool)

(assert (=> b!2243346 (= res!958506 (not (isEmpty!14916 tokens!456)))))

(assert (=> b!2243347 (= e!1434775 (and tp!707555 tp!707566))))

(assert (=> b!2243348 (= e!1434779 (and tp!707557 tp!707552))))

(declare-fun b!2243349 () Bool)

(declare-fun tp!707550 () Bool)

(assert (=> b!2243349 (= e!1434772 (and tp!707550 (inv!36028 (tag!4680 otherR!12)) (inv!36031 (transformation!4190 otherR!12)) e!1434774))))

(declare-fun b!2243350 () Bool)

(declare-fun res!958508 () Bool)

(assert (=> b!2243350 (=> (not res!958508) (not e!1434765))))

(assert (=> b!2243350 (= res!958508 (contains!4537 rules!1750 r!2363))))

(assert (= (and start!218674 res!958511) b!2243341))

(assert (= (and b!2243341 res!958507) b!2243332))

(assert (= (and b!2243332 res!958510) b!2243350))

(assert (= (and b!2243350 res!958508) b!2243338))

(assert (= (and b!2243338 res!958509) b!2243331))

(assert (= (and b!2243331 res!958512) b!2243346))

(assert (= (and b!2243346 res!958506) b!2243340))

(assert (= (and start!218674 (is-Cons!26500 input!1722)) b!2243333))

(assert (= b!2243349 b!2243334))

(assert (= start!218674 b!2243349))

(assert (= (and start!218674 (is-Cons!26500 suffix!886)) b!2243339))

(assert (= b!2243335 b!2243343))

(assert (= b!2243345 b!2243335))

(assert (= (and start!218674 (is-Cons!26502 rules!1750)) b!2243345))

(assert (= b!2243344 b!2243347))

(assert (= start!218674 b!2243344))

(assert (= b!2243336 b!2243348))

(assert (= b!2243342 b!2243336))

(assert (= b!2243337 b!2243342))

(assert (= (and start!218674 (is-Cons!26501 tokens!456)) b!2243337))

(declare-fun m!2675567 () Bool)

(assert (=> b!2243337 m!2675567))

(declare-fun m!2675569 () Bool)

(assert (=> b!2243332 m!2675569))

(declare-fun m!2675571 () Bool)

(assert (=> b!2243350 m!2675571))

(declare-fun m!2675573 () Bool)

(assert (=> b!2243349 m!2675573))

(declare-fun m!2675575 () Bool)

(assert (=> b!2243349 m!2675575))

(declare-fun m!2675577 () Bool)

(assert (=> b!2243341 m!2675577))

(declare-fun m!2675579 () Bool)

(assert (=> b!2243331 m!2675579))

(declare-fun m!2675581 () Bool)

(assert (=> b!2243331 m!2675581))

(declare-fun m!2675583 () Bool)

(assert (=> b!2243331 m!2675583))

(assert (=> b!2243331 m!2675583))

(declare-fun m!2675585 () Bool)

(assert (=> b!2243331 m!2675585))

(declare-fun m!2675587 () Bool)

(assert (=> b!2243342 m!2675587))

(declare-fun m!2675589 () Bool)

(assert (=> b!2243346 m!2675589))

(declare-fun m!2675591 () Bool)

(assert (=> b!2243335 m!2675591))

(declare-fun m!2675593 () Bool)

(assert (=> b!2243335 m!2675593))

(declare-fun m!2675595 () Bool)

(assert (=> b!2243338 m!2675595))

(declare-fun m!2675597 () Bool)

(assert (=> b!2243336 m!2675597))

(declare-fun m!2675599 () Bool)

(assert (=> b!2243336 m!2675599))

(declare-fun m!2675601 () Bool)

(assert (=> b!2243344 m!2675601))

(declare-fun m!2675603 () Bool)

(assert (=> b!2243344 m!2675603))

(push 1)

(assert (not b!2243341))

(assert (not b!2243349))

(assert b_and!175215)

(assert (not b_next!65895))

(assert (not b!2243338))

(assert (not b_next!65891))

(assert b_and!175217)

(assert (not b_next!65899))

(assert b_and!175209)

(assert (not b_next!65893))

(assert (not b!2243350))

(assert (not b!2243331))

(assert (not b!2243342))

(assert (not b!2243332))

(assert (not b_next!65897))

(assert b_and!175219)

(assert (not b!2243333))

(assert (not b_next!65885))

(assert b_and!175213)

(assert b_and!175211)

(assert (not b_next!65887))

(assert (not b!2243344))

(assert (not b!2243336))

(assert b_and!175221)

(assert (not b!2243346))

(assert (not b!2243337))

(assert b_and!175223)

(assert tp_is_empty!10297)

(assert (not b_next!65889))

(assert (not b!2243339))

(assert (not b!2243335))

(assert (not b!2243345))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!65885))

(assert b_and!175215)

(assert (not b_next!65895))

(assert (not b_next!65891))

(assert b_and!175217)

(assert (not b_next!65899))

(assert (not b_next!65887))

(assert b_and!175221)

(assert b_and!175209)

(assert (not b_next!65893))

(assert (not b_next!65897))

(assert b_and!175219)

(assert b_and!175213)

(assert b_and!175211)

(assert b_and!175223)

(assert (not b_next!65889))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!666217 () Bool)

(declare-fun lt!835023 () Bool)

(declare-fun content!3536 (List!26596) (Set Rule!8180))

(assert (=> d!666217 (= lt!835023 (set.member r!2363 (content!3536 rules!1750)))))

(declare-fun e!1434849 () Bool)

(assert (=> d!666217 (= lt!835023 e!1434849)))

(declare-fun res!958547 () Bool)

(assert (=> d!666217 (=> (not res!958547) (not e!1434849))))

(assert (=> d!666217 (= res!958547 (is-Cons!26502 rules!1750))))

(assert (=> d!666217 (= (contains!4537 rules!1750 r!2363) lt!835023)))

(declare-fun b!2243415 () Bool)

(declare-fun e!1434848 () Bool)

(assert (=> b!2243415 (= e!1434849 e!1434848)))

(declare-fun res!958546 () Bool)

(assert (=> b!2243415 (=> res!958546 e!1434848)))

(assert (=> b!2243415 (= res!958546 (= (h!31903 rules!1750) r!2363))))

(declare-fun b!2243416 () Bool)

(assert (=> b!2243416 (= e!1434848 (contains!4537 (t!200126 rules!1750) r!2363))))

(assert (= (and d!666217 res!958547) b!2243415))

(assert (= (and b!2243415 (not res!958546)) b!2243416))

(declare-fun m!2675643 () Bool)

(assert (=> d!666217 m!2675643))

(declare-fun m!2675645 () Bool)

(assert (=> d!666217 m!2675645))

(declare-fun m!2675647 () Bool)

(assert (=> b!2243416 m!2675647))

(assert (=> b!2243350 d!666217))

(declare-fun d!666219 () Bool)

(assert (=> d!666219 (= (isEmpty!14915 rules!1750) (is-Nil!26502 rules!1750))))

(assert (=> b!2243341 d!666219))

(declare-fun d!666221 () Bool)

(declare-fun res!958552 () Bool)

(declare-fun e!1434852 () Bool)

(assert (=> d!666221 (=> (not res!958552) (not e!1434852))))

(declare-fun isEmpty!14919 (List!26594) Bool)

(assert (=> d!666221 (= res!958552 (not (isEmpty!14919 (originalCharacters!4960 (h!31902 tokens!456)))))))

(assert (=> d!666221 (= (inv!36032 (h!31902 tokens!456)) e!1434852)))

(declare-fun b!2243421 () Bool)

(declare-fun res!958553 () Bool)

(assert (=> b!2243421 (=> (not res!958553) (not e!1434852))))

(declare-fun dynLambda!11558 (Int TokenValue!4352) BalanceConc!16784)

(assert (=> b!2243421 (= res!958553 (= (originalCharacters!4960 (h!31902 tokens!456)) (list!10123 (dynLambda!11558 (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) (value!133236 (h!31902 tokens!456))))))))

(declare-fun b!2243422 () Bool)

(declare-fun size!20719 (List!26594) Int)

(assert (=> b!2243422 (= e!1434852 (= (size!20717 (h!31902 tokens!456)) (size!20719 (originalCharacters!4960 (h!31902 tokens!456)))))))

(assert (= (and d!666221 res!958552) b!2243421))

(assert (= (and b!2243421 res!958553) b!2243422))

(declare-fun b_lambda!71801 () Bool)

(assert (=> (not b_lambda!71801) (not b!2243421)))

(declare-fun tb!132871 () Bool)

(declare-fun t!200132 () Bool)

(assert (=> (and b!2243334 (= (toChars!5779 (transformation!4190 otherR!12)) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456))))) t!200132) tb!132871))

(declare-fun b!2243427 () Bool)

(declare-fun e!1434855 () Bool)

(declare-fun tp!707620 () Bool)

(declare-fun inv!36035 (Conc!8528) Bool)

(assert (=> b!2243427 (= e!1434855 (and (inv!36035 (c!357165 (dynLambda!11558 (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) (value!133236 (h!31902 tokens!456))))) tp!707620))))

(declare-fun result!161918 () Bool)

(declare-fun inv!36036 (BalanceConc!16784) Bool)

(assert (=> tb!132871 (= result!161918 (and (inv!36036 (dynLambda!11558 (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) (value!133236 (h!31902 tokens!456)))) e!1434855))))

(assert (= tb!132871 b!2243427))

(declare-fun m!2675649 () Bool)

(assert (=> b!2243427 m!2675649))

(declare-fun m!2675651 () Bool)

(assert (=> tb!132871 m!2675651))

(assert (=> b!2243421 t!200132))

(declare-fun b_and!175241 () Bool)

(assert (= b_and!175211 (and (=> t!200132 result!161918) b_and!175241)))

(declare-fun tb!132873 () Bool)

(declare-fun t!200134 () Bool)

(assert (=> (and b!2243347 (= (toChars!5779 (transformation!4190 r!2363)) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456))))) t!200134) tb!132873))

(declare-fun result!161922 () Bool)

(assert (= result!161922 result!161918))

(assert (=> b!2243421 t!200134))

(declare-fun b_and!175243 () Bool)

(assert (= b_and!175215 (and (=> t!200134 result!161922) b_and!175243)))

(declare-fun t!200136 () Bool)

(declare-fun tb!132875 () Bool)

(assert (=> (and b!2243348 (= (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456))))) t!200136) tb!132875))

(declare-fun result!161924 () Bool)

(assert (= result!161924 result!161918))

(assert (=> b!2243421 t!200136))

(declare-fun b_and!175245 () Bool)

(assert (= b_and!175219 (and (=> t!200136 result!161924) b_and!175245)))

(declare-fun tb!132877 () Bool)

(declare-fun t!200138 () Bool)

(assert (=> (and b!2243343 (= (toChars!5779 (transformation!4190 (h!31903 rules!1750))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456))))) t!200138) tb!132877))

(declare-fun result!161926 () Bool)

(assert (= result!161926 result!161918))

(assert (=> b!2243421 t!200138))

(declare-fun b_and!175247 () Bool)

(assert (= b_and!175223 (and (=> t!200138 result!161926) b_and!175247)))

(declare-fun m!2675653 () Bool)

(assert (=> d!666221 m!2675653))

(declare-fun m!2675655 () Bool)

(assert (=> b!2243421 m!2675655))

(assert (=> b!2243421 m!2675655))

(declare-fun m!2675657 () Bool)

(assert (=> b!2243421 m!2675657))

(declare-fun m!2675659 () Bool)

(assert (=> b!2243422 m!2675659))

(assert (=> b!2243337 d!666221))

(declare-fun d!666223 () Bool)

(assert (=> d!666223 (= (inv!36028 (tag!4680 otherR!12)) (= (mod (str.len (value!133235 (tag!4680 otherR!12))) 2) 0))))

(assert (=> b!2243349 d!666223))

(declare-fun d!666225 () Bool)

(declare-fun res!958556 () Bool)

(declare-fun e!1434858 () Bool)

(assert (=> d!666225 (=> (not res!958556) (not e!1434858))))

(declare-fun semiInverseModEq!1691 (Int Int) Bool)

(assert (=> d!666225 (= res!958556 (semiInverseModEq!1691 (toChars!5779 (transformation!4190 otherR!12)) (toValue!5920 (transformation!4190 otherR!12))))))

(assert (=> d!666225 (= (inv!36031 (transformation!4190 otherR!12)) e!1434858)))

(declare-fun b!2243430 () Bool)

(declare-fun equivClasses!1610 (Int Int) Bool)

(assert (=> b!2243430 (= e!1434858 (equivClasses!1610 (toChars!5779 (transformation!4190 otherR!12)) (toValue!5920 (transformation!4190 otherR!12))))))

(assert (= (and d!666225 res!958556) b!2243430))

(declare-fun m!2675661 () Bool)

(assert (=> d!666225 m!2675661))

(declare-fun m!2675663 () Bool)

(assert (=> b!2243430 m!2675663))

(assert (=> b!2243349 d!666225))

(declare-fun d!666227 () Bool)

(declare-fun lt!835024 () Bool)

(assert (=> d!666227 (= lt!835024 (set.member otherR!12 (content!3536 rules!1750)))))

(declare-fun e!1434860 () Bool)

(assert (=> d!666227 (= lt!835024 e!1434860)))

(declare-fun res!958558 () Bool)

(assert (=> d!666227 (=> (not res!958558) (not e!1434860))))

(assert (=> d!666227 (= res!958558 (is-Cons!26502 rules!1750))))

(assert (=> d!666227 (= (contains!4537 rules!1750 otherR!12) lt!835024)))

(declare-fun b!2243431 () Bool)

(declare-fun e!1434859 () Bool)

(assert (=> b!2243431 (= e!1434860 e!1434859)))

(declare-fun res!958557 () Bool)

(assert (=> b!2243431 (=> res!958557 e!1434859)))

(assert (=> b!2243431 (= res!958557 (= (h!31903 rules!1750) otherR!12))))

(declare-fun b!2243432 () Bool)

(assert (=> b!2243432 (= e!1434859 (contains!4537 (t!200126 rules!1750) otherR!12))))

(assert (= (and d!666227 res!958558) b!2243431))

(assert (= (and b!2243431 (not res!958557)) b!2243432))

(assert (=> d!666227 m!2675643))

(declare-fun m!2675665 () Bool)

(assert (=> d!666227 m!2675665))

(declare-fun m!2675667 () Bool)

(assert (=> b!2243432 m!2675667))

(assert (=> b!2243338 d!666227))

(declare-fun d!666229 () Bool)

(assert (=> d!666229 (= (inv!36028 (tag!4680 (rule!6488 (h!31902 tokens!456)))) (= (mod (str.len (value!133235 (tag!4680 (rule!6488 (h!31902 tokens!456))))) 2) 0))))

(assert (=> b!2243336 d!666229))

(declare-fun d!666231 () Bool)

(declare-fun res!958559 () Bool)

(declare-fun e!1434861 () Bool)

(assert (=> d!666231 (=> (not res!958559) (not e!1434861))))

(assert (=> d!666231 (= res!958559 (semiInverseModEq!1691 (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) (toValue!5920 (transformation!4190 (rule!6488 (h!31902 tokens!456))))))))

(assert (=> d!666231 (= (inv!36031 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) e!1434861)))

(declare-fun b!2243433 () Bool)

(assert (=> b!2243433 (= e!1434861 (equivClasses!1610 (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))) (toValue!5920 (transformation!4190 (rule!6488 (h!31902 tokens!456))))))))

(assert (= (and d!666231 res!958559) b!2243433))

(declare-fun m!2675669 () Bool)

(assert (=> d!666231 m!2675669))

(declare-fun m!2675671 () Bool)

(assert (=> b!2243433 m!2675671))

(assert (=> b!2243336 d!666231))

(declare-fun d!666233 () Bool)

(assert (=> d!666233 (= (inv!36028 (tag!4680 (h!31903 rules!1750))) (= (mod (str.len (value!133235 (tag!4680 (h!31903 rules!1750)))) 2) 0))))

(assert (=> b!2243335 d!666233))

(declare-fun d!666235 () Bool)

(declare-fun res!958560 () Bool)

(declare-fun e!1434862 () Bool)

(assert (=> d!666235 (=> (not res!958560) (not e!1434862))))

(assert (=> d!666235 (= res!958560 (semiInverseModEq!1691 (toChars!5779 (transformation!4190 (h!31903 rules!1750))) (toValue!5920 (transformation!4190 (h!31903 rules!1750)))))))

(assert (=> d!666235 (= (inv!36031 (transformation!4190 (h!31903 rules!1750))) e!1434862)))

(declare-fun b!2243434 () Bool)

(assert (=> b!2243434 (= e!1434862 (equivClasses!1610 (toChars!5779 (transformation!4190 (h!31903 rules!1750))) (toValue!5920 (transformation!4190 (h!31903 rules!1750)))))))

(assert (= (and d!666235 res!958560) b!2243434))

(declare-fun m!2675673 () Bool)

(assert (=> d!666235 m!2675673))

(declare-fun m!2675675 () Bool)

(assert (=> b!2243434 m!2675675))

(assert (=> b!2243335 d!666235))

(declare-fun d!666237 () Bool)

(assert (=> d!666237 (= (isEmpty!14916 tokens!456) (is-Nil!26501 tokens!456))))

(assert (=> b!2243346 d!666237))

(declare-fun d!666241 () Bool)

(declare-fun res!958563 () Bool)

(declare-fun e!1434865 () Bool)

(assert (=> d!666241 (=> (not res!958563) (not e!1434865))))

(declare-fun rulesValid!1535 (LexerInterface!3787 List!26596) Bool)

(assert (=> d!666241 (= res!958563 (rulesValid!1535 thiss!16613 rules!1750))))

(assert (=> d!666241 (= (rulesInvariant!3289 thiss!16613 rules!1750) e!1434865)))

(declare-fun b!2243437 () Bool)

(declare-datatypes ((List!26601 0))(
  ( (Nil!26507) (Cons!26507 (h!31908 String!28866) (t!200151 List!26601)) )
))
(declare-fun noDuplicateTag!1533 (LexerInterface!3787 List!26596 List!26601) Bool)

(assert (=> b!2243437 (= e!1434865 (noDuplicateTag!1533 thiss!16613 rules!1750 Nil!26507))))

(assert (= (and d!666241 res!958563) b!2243437))

(declare-fun m!2675677 () Bool)

(assert (=> d!666241 m!2675677))

(declare-fun m!2675679 () Bool)

(assert (=> b!2243437 m!2675679))

(assert (=> b!2243332 d!666241))

(declare-fun b!2243451 () Bool)

(declare-fun e!1434876 () Bool)

(declare-fun inv!15 (TokenValue!4352) Bool)

(assert (=> b!2243451 (= e!1434876 (inv!15 (value!133236 (h!31902 tokens!456))))))

(declare-fun d!666243 () Bool)

(declare-fun c!357175 () Bool)

(assert (=> d!666243 (= c!357175 (is-IntegerValue!13056 (value!133236 (h!31902 tokens!456))))))

(declare-fun e!1434877 () Bool)

(assert (=> d!666243 (= (inv!21 (value!133236 (h!31902 tokens!456))) e!1434877)))

(declare-fun b!2243452 () Bool)

(declare-fun e!1434875 () Bool)

(assert (=> b!2243452 (= e!1434877 e!1434875)))

(declare-fun c!357176 () Bool)

(assert (=> b!2243452 (= c!357176 (is-IntegerValue!13057 (value!133236 (h!31902 tokens!456))))))

(declare-fun b!2243453 () Bool)

(declare-fun res!958569 () Bool)

(assert (=> b!2243453 (=> res!958569 e!1434876)))

(assert (=> b!2243453 (= res!958569 (not (is-IntegerValue!13058 (value!133236 (h!31902 tokens!456)))))))

(assert (=> b!2243453 (= e!1434875 e!1434876)))

(declare-fun b!2243454 () Bool)

(declare-fun inv!17 (TokenValue!4352) Bool)

(assert (=> b!2243454 (= e!1434875 (inv!17 (value!133236 (h!31902 tokens!456))))))

(declare-fun b!2243455 () Bool)

(declare-fun inv!16 (TokenValue!4352) Bool)

(assert (=> b!2243455 (= e!1434877 (inv!16 (value!133236 (h!31902 tokens!456))))))

(assert (= (and d!666243 c!357175) b!2243455))

(assert (= (and d!666243 (not c!357175)) b!2243452))

(assert (= (and b!2243452 c!357176) b!2243454))

(assert (= (and b!2243452 (not c!357176)) b!2243453))

(assert (= (and b!2243453 (not res!958569)) b!2243451))

(declare-fun m!2675681 () Bool)

(assert (=> b!2243451 m!2675681))

(declare-fun m!2675683 () Bool)

(assert (=> b!2243454 m!2675683))

(declare-fun m!2675687 () Bool)

(assert (=> b!2243455 m!2675687))

(assert (=> b!2243342 d!666243))

(declare-fun d!666245 () Bool)

(declare-fun list!10126 (Conc!8529) List!26595)

(assert (=> d!666245 (= (list!10122 (_1!15492 lt!835017)) (list!10126 (c!357166 (_1!15492 lt!835017))))))

(declare-fun bs!454750 () Bool)

(assert (= bs!454750 d!666245))

(declare-fun m!2675691 () Bool)

(assert (=> bs!454750 m!2675691))

(assert (=> b!2243331 d!666245))

(declare-fun d!666249 () Bool)

(declare-fun list!10127 (Conc!8528) List!26594)

(assert (=> d!666249 (= (list!10123 (_2!15492 lt!835017)) (list!10127 (c!357165 (_2!15492 lt!835017))))))

(declare-fun bs!454751 () Bool)

(assert (= bs!454751 d!666249))

(declare-fun m!2675693 () Bool)

(assert (=> bs!454751 m!2675693))

(assert (=> b!2243331 d!666249))

(declare-fun d!666253 () Bool)

(declare-fun e!1434905 () Bool)

(assert (=> d!666253 e!1434905))

(declare-fun res!958592 () Bool)

(assert (=> d!666253 (=> (not res!958592) (not e!1434905))))

(declare-fun e!1434906 () Bool)

(assert (=> d!666253 (= res!958592 e!1434906)))

(declare-fun c!357185 () Bool)

(declare-fun lt!835027 () tuple2!25964)

(declare-fun size!20720 (BalanceConc!16786) Int)

(assert (=> d!666253 (= c!357185 (> (size!20720 (_1!15492 lt!835027)) 0))))

(declare-fun lexTailRecV2!711 (LexerInterface!3787 List!26596 BalanceConc!16784 BalanceConc!16784 BalanceConc!16784 BalanceConc!16786) tuple2!25964)

(assert (=> d!666253 (= lt!835027 (lexTailRecV2!711 thiss!16613 rules!1750 (seqFromList!2894 input!1722) (BalanceConc!16785 Empty!8528) (seqFromList!2894 input!1722) (BalanceConc!16787 Empty!8529)))))

(assert (=> d!666253 (= (lex!1626 thiss!16613 rules!1750 (seqFromList!2894 input!1722)) lt!835027)))

(declare-fun b!2243497 () Bool)

(declare-fun e!1434904 () Bool)

(declare-fun isEmpty!14920 (BalanceConc!16786) Bool)

(assert (=> b!2243497 (= e!1434904 (not (isEmpty!14920 (_1!15492 lt!835027))))))

(declare-fun b!2243498 () Bool)

(declare-fun lexList!1036 (LexerInterface!3787 List!26596 List!26594) tuple2!25966)

(assert (=> b!2243498 (= e!1434905 (= (list!10123 (_2!15492 lt!835027)) (_2!15493 (lexList!1036 thiss!16613 rules!1750 (list!10123 (seqFromList!2894 input!1722))))))))

(declare-fun b!2243499 () Bool)

(declare-fun res!958591 () Bool)

(assert (=> b!2243499 (=> (not res!958591) (not e!1434905))))

(assert (=> b!2243499 (= res!958591 (= (list!10122 (_1!15492 lt!835027)) (_1!15493 (lexList!1036 thiss!16613 rules!1750 (list!10123 (seqFromList!2894 input!1722))))))))

(declare-fun b!2243500 () Bool)

(assert (=> b!2243500 (= e!1434906 (= (_2!15492 lt!835027) (seqFromList!2894 input!1722)))))

(declare-fun b!2243501 () Bool)

(assert (=> b!2243501 (= e!1434906 e!1434904)))

(declare-fun res!958590 () Bool)

(declare-fun size!20721 (BalanceConc!16784) Int)

(assert (=> b!2243501 (= res!958590 (< (size!20721 (_2!15492 lt!835027)) (size!20721 (seqFromList!2894 input!1722))))))

(assert (=> b!2243501 (=> (not res!958590) (not e!1434904))))

(assert (= (and d!666253 c!357185) b!2243501))

(assert (= (and d!666253 (not c!357185)) b!2243500))

(assert (= (and b!2243501 res!958590) b!2243497))

(assert (= (and d!666253 res!958592) b!2243499))

(assert (= (and b!2243499 res!958591) b!2243498))

(declare-fun m!2675729 () Bool)

(assert (=> d!666253 m!2675729))

(assert (=> d!666253 m!2675583))

(assert (=> d!666253 m!2675583))

(declare-fun m!2675731 () Bool)

(assert (=> d!666253 m!2675731))

(declare-fun m!2675733 () Bool)

(assert (=> b!2243497 m!2675733))

(declare-fun m!2675735 () Bool)

(assert (=> b!2243499 m!2675735))

(assert (=> b!2243499 m!2675583))

(declare-fun m!2675737 () Bool)

(assert (=> b!2243499 m!2675737))

(assert (=> b!2243499 m!2675737))

(declare-fun m!2675739 () Bool)

(assert (=> b!2243499 m!2675739))

(declare-fun m!2675741 () Bool)

(assert (=> b!2243501 m!2675741))

(assert (=> b!2243501 m!2675583))

(declare-fun m!2675743 () Bool)

(assert (=> b!2243501 m!2675743))

(declare-fun m!2675745 () Bool)

(assert (=> b!2243498 m!2675745))

(assert (=> b!2243498 m!2675583))

(assert (=> b!2243498 m!2675737))

(assert (=> b!2243498 m!2675737))

(assert (=> b!2243498 m!2675739))

(assert (=> b!2243331 d!666253))

(declare-fun d!666273 () Bool)

(declare-fun fromListB!1302 (List!26594) BalanceConc!16784)

(assert (=> d!666273 (= (seqFromList!2894 input!1722) (fromListB!1302 input!1722))))

(declare-fun bs!454754 () Bool)

(assert (= bs!454754 d!666273))

(declare-fun m!2675747 () Bool)

(assert (=> bs!454754 m!2675747))

(assert (=> b!2243331 d!666273))

(declare-fun d!666275 () Bool)

(assert (=> d!666275 (= (inv!36028 (tag!4680 r!2363)) (= (mod (str.len (value!133235 (tag!4680 r!2363))) 2) 0))))

(assert (=> b!2243344 d!666275))

(declare-fun d!666277 () Bool)

(declare-fun res!958593 () Bool)

(declare-fun e!1434907 () Bool)

(assert (=> d!666277 (=> (not res!958593) (not e!1434907))))

(assert (=> d!666277 (= res!958593 (semiInverseModEq!1691 (toChars!5779 (transformation!4190 r!2363)) (toValue!5920 (transformation!4190 r!2363))))))

(assert (=> d!666277 (= (inv!36031 (transformation!4190 r!2363)) e!1434907)))

(declare-fun b!2243502 () Bool)

(assert (=> b!2243502 (= e!1434907 (equivClasses!1610 (toChars!5779 (transformation!4190 r!2363)) (toValue!5920 (transformation!4190 r!2363))))))

(assert (= (and d!666277 res!958593) b!2243502))

(declare-fun m!2675749 () Bool)

(assert (=> d!666277 m!2675749))

(declare-fun m!2675751 () Bool)

(assert (=> b!2243502 m!2675751))

(assert (=> b!2243344 d!666277))

(declare-fun b!2243513 () Bool)

(declare-fun b_free!65213 () Bool)

(declare-fun b_next!65917 () Bool)

(assert (=> b!2243513 (= b_free!65213 (not b_next!65917))))

(declare-fun tp!707633 () Bool)

(declare-fun b_and!175257 () Bool)

(assert (=> b!2243513 (= tp!707633 b_and!175257)))

(declare-fun b_free!65215 () Bool)

(declare-fun b_next!65919 () Bool)

(assert (=> b!2243513 (= b_free!65215 (not b_next!65919))))

(declare-fun tb!132887 () Bool)

(declare-fun t!200148 () Bool)

(assert (=> (and b!2243513 (= (toChars!5779 (transformation!4190 (h!31903 (t!200126 rules!1750)))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456))))) t!200148) tb!132887))

(declare-fun result!161940 () Bool)

(assert (= result!161940 result!161918))

(assert (=> b!2243421 t!200148))

(declare-fun b_and!175259 () Bool)

(declare-fun tp!707634 () Bool)

(assert (=> b!2243513 (= tp!707634 (and (=> t!200148 result!161940) b_and!175259))))

(declare-fun e!1434917 () Bool)

(assert (=> b!2243513 (= e!1434917 (and tp!707633 tp!707634))))

(declare-fun b!2243512 () Bool)

(declare-fun e!1434918 () Bool)

(declare-fun tp!707632 () Bool)

(assert (=> b!2243512 (= e!1434918 (and tp!707632 (inv!36028 (tag!4680 (h!31903 (t!200126 rules!1750)))) (inv!36031 (transformation!4190 (h!31903 (t!200126 rules!1750)))) e!1434917))))

(declare-fun b!2243511 () Bool)

(declare-fun e!1434919 () Bool)

(declare-fun tp!707635 () Bool)

(assert (=> b!2243511 (= e!1434919 (and e!1434918 tp!707635))))

(assert (=> b!2243345 (= tp!707564 e!1434919)))

(assert (= b!2243512 b!2243513))

(assert (= b!2243511 b!2243512))

(assert (= (and b!2243345 (is-Cons!26502 (t!200126 rules!1750))) b!2243511))

(declare-fun m!2675753 () Bool)

(assert (=> b!2243512 m!2675753))

(declare-fun m!2675755 () Bool)

(assert (=> b!2243512 m!2675755))

(declare-fun b!2243518 () Bool)

(declare-fun e!1434922 () Bool)

(declare-fun tp!707638 () Bool)

(assert (=> b!2243518 (= e!1434922 (and tp_is_empty!10297 tp!707638))))

(assert (=> b!2243339 (= tp!707556 e!1434922)))

(assert (= (and b!2243339 (is-Cons!26500 (t!200124 suffix!886))) b!2243518))

(declare-fun b!2243531 () Bool)

(declare-fun e!1434925 () Bool)

(declare-fun tp!707650 () Bool)

(assert (=> b!2243531 (= e!1434925 tp!707650)))

(declare-fun b!2243529 () Bool)

(assert (=> b!2243529 (= e!1434925 tp_is_empty!10297)))

(assert (=> b!2243336 (= tp!707565 e!1434925)))

(declare-fun b!2243530 () Bool)

(declare-fun tp!707652 () Bool)

(declare-fun tp!707653 () Bool)

(assert (=> b!2243530 (= e!1434925 (and tp!707652 tp!707653))))

(declare-fun b!2243532 () Bool)

(declare-fun tp!707649 () Bool)

(declare-fun tp!707651 () Bool)

(assert (=> b!2243532 (= e!1434925 (and tp!707649 tp!707651))))

(assert (= (and b!2243336 (is-ElementMatch!6538 (regex!4190 (rule!6488 (h!31902 tokens!456))))) b!2243529))

(assert (= (and b!2243336 (is-Concat!10891 (regex!4190 (rule!6488 (h!31902 tokens!456))))) b!2243530))

(assert (= (and b!2243336 (is-Star!6538 (regex!4190 (rule!6488 (h!31902 tokens!456))))) b!2243531))

(assert (= (and b!2243336 (is-Union!6538 (regex!4190 (rule!6488 (h!31902 tokens!456))))) b!2243532))

(declare-fun b!2243535 () Bool)

(declare-fun e!1434926 () Bool)

(declare-fun tp!707655 () Bool)

(assert (=> b!2243535 (= e!1434926 tp!707655)))

(declare-fun b!2243533 () Bool)

(assert (=> b!2243533 (= e!1434926 tp_is_empty!10297)))

(assert (=> b!2243335 (= tp!707561 e!1434926)))

(declare-fun b!2243534 () Bool)

(declare-fun tp!707657 () Bool)

(declare-fun tp!707658 () Bool)

(assert (=> b!2243534 (= e!1434926 (and tp!707657 tp!707658))))

(declare-fun b!2243536 () Bool)

(declare-fun tp!707654 () Bool)

(declare-fun tp!707656 () Bool)

(assert (=> b!2243536 (= e!1434926 (and tp!707654 tp!707656))))

(assert (= (and b!2243335 (is-ElementMatch!6538 (regex!4190 (h!31903 rules!1750)))) b!2243533))

(assert (= (and b!2243335 (is-Concat!10891 (regex!4190 (h!31903 rules!1750)))) b!2243534))

(assert (= (and b!2243335 (is-Star!6538 (regex!4190 (h!31903 rules!1750)))) b!2243535))

(assert (= (and b!2243335 (is-Union!6538 (regex!4190 (h!31903 rules!1750)))) b!2243536))

(declare-fun b!2243550 () Bool)

(declare-fun b_free!65217 () Bool)

(declare-fun b_next!65921 () Bool)

(assert (=> b!2243550 (= b_free!65217 (not b_next!65921))))

(declare-fun tp!707673 () Bool)

(declare-fun b_and!175261 () Bool)

(assert (=> b!2243550 (= tp!707673 b_and!175261)))

(declare-fun b_free!65219 () Bool)

(declare-fun b_next!65923 () Bool)

(assert (=> b!2243550 (= b_free!65219 (not b_next!65923))))

(declare-fun t!200150 () Bool)

(declare-fun tb!132889 () Bool)

(assert (=> (and b!2243550 (= (toChars!5779 (transformation!4190 (rule!6488 (h!31902 (t!200125 tokens!456))))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456))))) t!200150) tb!132889))

(declare-fun result!161948 () Bool)

(assert (= result!161948 result!161918))

(assert (=> b!2243421 t!200150))

(declare-fun b_and!175263 () Bool)

(declare-fun tp!707669 () Bool)

(assert (=> b!2243550 (= tp!707669 (and (=> t!200150 result!161948) b_and!175263))))

(declare-fun e!1434944 () Bool)

(assert (=> b!2243337 (= tp!707559 e!1434944)))

(declare-fun tp!707670 () Bool)

(declare-fun e!1434939 () Bool)

(declare-fun b!2243547 () Bool)

(assert (=> b!2243547 (= e!1434944 (and (inv!36032 (h!31902 (t!200125 tokens!456))) e!1434939 tp!707670))))

(declare-fun b!2243549 () Bool)

(declare-fun tp!707671 () Bool)

(declare-fun e!1434940 () Bool)

(declare-fun e!1434941 () Bool)

(assert (=> b!2243549 (= e!1434940 (and tp!707671 (inv!36028 (tag!4680 (rule!6488 (h!31902 (t!200125 tokens!456))))) (inv!36031 (transformation!4190 (rule!6488 (h!31902 (t!200125 tokens!456))))) e!1434941))))

(declare-fun tp!707672 () Bool)

(declare-fun b!2243548 () Bool)

(assert (=> b!2243548 (= e!1434939 (and (inv!21 (value!133236 (h!31902 (t!200125 tokens!456)))) e!1434940 tp!707672))))

(assert (=> b!2243550 (= e!1434941 (and tp!707673 tp!707669))))

(assert (= b!2243549 b!2243550))

(assert (= b!2243548 b!2243549))

(assert (= b!2243547 b!2243548))

(assert (= (and b!2243337 (is-Cons!26501 (t!200125 tokens!456))) b!2243547))

(declare-fun m!2675757 () Bool)

(assert (=> b!2243547 m!2675757))

(declare-fun m!2675759 () Bool)

(assert (=> b!2243549 m!2675759))

(declare-fun m!2675761 () Bool)

(assert (=> b!2243549 m!2675761))

(declare-fun m!2675763 () Bool)

(assert (=> b!2243548 m!2675763))

(declare-fun b!2243551 () Bool)

(declare-fun e!1434945 () Bool)

(declare-fun tp!707674 () Bool)

(assert (=> b!2243551 (= e!1434945 (and tp_is_empty!10297 tp!707674))))

(assert (=> b!2243342 (= tp!707554 e!1434945)))

(assert (= (and b!2243342 (is-Cons!26500 (originalCharacters!4960 (h!31902 tokens!456)))) b!2243551))

(declare-fun b!2243554 () Bool)

(declare-fun e!1434946 () Bool)

(declare-fun tp!707676 () Bool)

(assert (=> b!2243554 (= e!1434946 tp!707676)))

(declare-fun b!2243552 () Bool)

(assert (=> b!2243552 (= e!1434946 tp_is_empty!10297)))

(assert (=> b!2243344 (= tp!707551 e!1434946)))

(declare-fun b!2243553 () Bool)

(declare-fun tp!707678 () Bool)

(declare-fun tp!707679 () Bool)

(assert (=> b!2243553 (= e!1434946 (and tp!707678 tp!707679))))

(declare-fun b!2243555 () Bool)

(declare-fun tp!707675 () Bool)

(declare-fun tp!707677 () Bool)

(assert (=> b!2243555 (= e!1434946 (and tp!707675 tp!707677))))

(assert (= (and b!2243344 (is-ElementMatch!6538 (regex!4190 r!2363))) b!2243552))

(assert (= (and b!2243344 (is-Concat!10891 (regex!4190 r!2363))) b!2243553))

(assert (= (and b!2243344 (is-Star!6538 (regex!4190 r!2363))) b!2243554))

(assert (= (and b!2243344 (is-Union!6538 (regex!4190 r!2363))) b!2243555))

(declare-fun b!2243558 () Bool)

(declare-fun e!1434947 () Bool)

(declare-fun tp!707681 () Bool)

(assert (=> b!2243558 (= e!1434947 tp!707681)))

(declare-fun b!2243556 () Bool)

(assert (=> b!2243556 (= e!1434947 tp_is_empty!10297)))

(assert (=> b!2243349 (= tp!707550 e!1434947)))

(declare-fun b!2243557 () Bool)

(declare-fun tp!707683 () Bool)

(declare-fun tp!707684 () Bool)

(assert (=> b!2243557 (= e!1434947 (and tp!707683 tp!707684))))

(declare-fun b!2243559 () Bool)

(declare-fun tp!707680 () Bool)

(declare-fun tp!707682 () Bool)

(assert (=> b!2243559 (= e!1434947 (and tp!707680 tp!707682))))

(assert (= (and b!2243349 (is-ElementMatch!6538 (regex!4190 otherR!12))) b!2243556))

(assert (= (and b!2243349 (is-Concat!10891 (regex!4190 otherR!12))) b!2243557))

(assert (= (and b!2243349 (is-Star!6538 (regex!4190 otherR!12))) b!2243558))

(assert (= (and b!2243349 (is-Union!6538 (regex!4190 otherR!12))) b!2243559))

(declare-fun b!2243560 () Bool)

(declare-fun e!1434948 () Bool)

(declare-fun tp!707685 () Bool)

(assert (=> b!2243560 (= e!1434948 (and tp_is_empty!10297 tp!707685))))

(assert (=> b!2243333 (= tp!707562 e!1434948)))

(assert (= (and b!2243333 (is-Cons!26500 (t!200124 input!1722))) b!2243560))

(declare-fun b_lambda!71805 () Bool)

(assert (= b_lambda!71801 (or (and b!2243347 b_free!65187 (= (toChars!5779 (transformation!4190 r!2363)) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))))) (and b!2243343 b_free!65195 (= (toChars!5779 (transformation!4190 (h!31903 rules!1750))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))))) (and b!2243513 b_free!65215 (= (toChars!5779 (transformation!4190 (h!31903 (t!200126 rules!1750)))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))))) (and b!2243334 b_free!65183 (= (toChars!5779 (transformation!4190 otherR!12)) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))))) (and b!2243550 b_free!65219 (= (toChars!5779 (transformation!4190 (rule!6488 (h!31902 (t!200125 tokens!456))))) (toChars!5779 (transformation!4190 (rule!6488 (h!31902 tokens!456)))))) (and b!2243348 b_free!65191) b_lambda!71805)))

(push 1)

(assert (not b!2243559))

(assert b_and!175263)

(assert (not d!666231))

(assert b_and!175213)

(assert (not b_next!65887))

(assert (not b!2243497))

(assert (not b!2243454))

(assert (not b!2243530))

(assert (not b!2243498))

(assert (not b!2243455))

(assert (not d!666253))

(assert (not b!2243560))

(assert (not d!666241))

(assert (not b!2243548))

(assert (not b!2243551))

(assert (not b!2243549))

(assert (not b!2243518))

(assert (not d!666277))

(assert (not b_next!65885))

(assert (not b!2243422))

(assert (not d!666217))

(assert (not b_next!65923))

(assert (not d!666273))

(assert b_and!175261)

(assert b_and!175243)

(assert (not b_next!65895))

(assert (not b!2243532))

(assert (not tb!132871))

(assert (not d!666245))

(assert (not b!2243502))

(assert (not b_lambda!71805))

(assert (not b!2243512))

(assert (not b!2243558))

(assert (not b!2243451))

(assert (not d!666227))

(assert (not b!2243536))

(assert (not b_next!65891))

(assert b_and!175257)

(assert (not b!2243432))

(assert b_and!175217)

(assert (not b_next!65899))

(assert b_and!175245)

(assert (not b!2243421))

(assert (not b_next!65921))

(assert (not b!2243499))

(assert b_and!175221)

(assert (not b!2243534))

(assert b_and!175259)

(assert (not b!2243433))

(assert (not b!2243437))

(assert b_and!175209)

(assert (not b!2243547))

(assert b_and!175241)

(assert (not d!666225))

(assert (not b!2243511))

(assert (not d!666249))

(assert (not b_next!65893))

(assert (not b!2243554))

(assert (not b_next!65917))

(assert (not b!2243535))

(assert (not b!2243416))

(assert (not b!2243427))

(assert (not d!666235))

(assert (not b!2243553))

(assert (not b!2243434))

(assert (not d!666221))

(assert tp_is_empty!10297)

(assert (not b_next!65889))

(assert (not b!2243555))

(assert (not b_next!65919))

(assert (not b_next!65897))

(assert (not b!2243501))

(assert (not b!2243430))

(assert b_and!175247)

(assert (not b!2243557))

(assert (not b!2243531))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!65885))

(assert b_and!175263)

(assert (not b_next!65923))

(assert b_and!175261)

(assert b_and!175213)

(assert b_and!175217)

(assert (not b_next!65887))

(assert (not b_next!65921))

(assert (not b_next!65893))

(assert (not b_next!65917))

(assert (not b_next!65889))

(assert b_and!175247)

(assert b_and!175243)

(assert (not b_next!65895))

(assert (not b_next!65891))

(assert b_and!175257)

(assert (not b_next!65899))

(assert b_and!175245)

(assert b_and!175221)

(assert b_and!175259)

(assert b_and!175209)

(assert b_and!175241)

(assert (not b_next!65919))

(assert (not b_next!65897))

(check-sat)

(pop 1)

