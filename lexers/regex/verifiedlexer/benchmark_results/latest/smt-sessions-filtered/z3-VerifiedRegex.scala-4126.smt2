; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221236 () Bool)

(assert start!221236)

(declare-fun b!2264775 () Bool)

(declare-fun b_free!67037 () Bool)

(declare-fun b_next!67741 () Bool)

(assert (=> b!2264775 (= b_free!67037 (not b_next!67741))))

(declare-fun tp!716499 () Bool)

(declare-fun b_and!178121 () Bool)

(assert (=> b!2264775 (= tp!716499 b_and!178121)))

(declare-fun b_free!67039 () Bool)

(declare-fun b_next!67743 () Bool)

(assert (=> b!2264775 (= b_free!67039 (not b_next!67743))))

(declare-fun tp!716515 () Bool)

(declare-fun b_and!178123 () Bool)

(assert (=> b!2264775 (= tp!716515 b_and!178123)))

(declare-fun b!2264806 () Bool)

(declare-fun b_free!67041 () Bool)

(declare-fun b_next!67745 () Bool)

(assert (=> b!2264806 (= b_free!67041 (not b_next!67745))))

(declare-fun tp!716504 () Bool)

(declare-fun b_and!178125 () Bool)

(assert (=> b!2264806 (= tp!716504 b_and!178125)))

(declare-fun b_free!67043 () Bool)

(declare-fun b_next!67747 () Bool)

(assert (=> b!2264806 (= b_free!67043 (not b_next!67747))))

(declare-fun tp!716508 () Bool)

(declare-fun b_and!178127 () Bool)

(assert (=> b!2264806 (= tp!716508 b_and!178127)))

(declare-fun b!2264785 () Bool)

(declare-fun b_free!67045 () Bool)

(declare-fun b_next!67749 () Bool)

(assert (=> b!2264785 (= b_free!67045 (not b_next!67749))))

(declare-fun tp!716498 () Bool)

(declare-fun b_and!178129 () Bool)

(assert (=> b!2264785 (= tp!716498 b_and!178129)))

(declare-fun b_free!67047 () Bool)

(declare-fun b_next!67751 () Bool)

(assert (=> b!2264785 (= b_free!67047 (not b_next!67751))))

(declare-fun tp!716512 () Bool)

(declare-fun b_and!178131 () Bool)

(assert (=> b!2264785 (= tp!716512 b_and!178131)))

(declare-fun b!2264792 () Bool)

(declare-fun b_free!67049 () Bool)

(declare-fun b_next!67753 () Bool)

(assert (=> b!2264792 (= b_free!67049 (not b_next!67753))))

(declare-fun tp!716500 () Bool)

(declare-fun b_and!178133 () Bool)

(assert (=> b!2264792 (= tp!716500 b_and!178133)))

(declare-fun b_free!67051 () Bool)

(declare-fun b_next!67755 () Bool)

(assert (=> b!2264792 (= b_free!67051 (not b_next!67755))))

(declare-fun tp!716507 () Bool)

(declare-fun b_and!178135 () Bool)

(assert (=> b!2264792 (= tp!716507 b_and!178135)))

(declare-fun b!2264774 () Bool)

(declare-fun e!1450268 () Bool)

(declare-fun tp!716514 () Bool)

(declare-fun e!1450271 () Bool)

(declare-datatypes ((List!26999 0))(
  ( (Nil!26905) (Cons!26905 (h!32306 (_ BitVec 16)) (t!201997 List!26999)) )
))
(declare-datatypes ((TokenValue!4445 0))(
  ( (FloatLiteralValue!8890 (text!31560 List!26999)) (TokenValueExt!4444 (__x!17950 Int)) (Broken!22225 (value!135859 List!26999)) (Object!4538) (End!4445) (Def!4445) (Underscore!4445) (Match!4445) (Else!4445) (Error!4445) (Case!4445) (If!4445) (Extends!4445) (Abstract!4445) (Class!4445) (Val!4445) (DelimiterValue!8890 (del!4505 List!26999)) (KeywordValue!4451 (value!135860 List!26999)) (CommentValue!8890 (value!135861 List!26999)) (WhitespaceValue!8890 (value!135862 List!26999)) (IndentationValue!4445 (value!135863 List!26999)) (String!29328) (Int32!4445) (Broken!22226 (value!135864 List!26999)) (Boolean!4446) (Unit!39853) (OperatorValue!4448 (op!4505 List!26999)) (IdentifierValue!8890 (value!135865 List!26999)) (IdentifierValue!8891 (value!135866 List!26999)) (WhitespaceValue!8891 (value!135867 List!26999)) (True!8890) (False!8890) (Broken!22227 (value!135868 List!26999)) (Broken!22228 (value!135869 List!26999)) (True!8891) (RightBrace!4445) (RightBracket!4445) (Colon!4445) (Null!4445) (Comma!4445) (LeftBracket!4445) (False!8891) (LeftBrace!4445) (ImaginaryLiteralValue!4445 (text!31561 List!26999)) (StringLiteralValue!13335 (value!135870 List!26999)) (EOFValue!4445 (value!135871 List!26999)) (IdentValue!4445 (value!135872 List!26999)) (DelimiterValue!8891 (value!135873 List!26999)) (DedentValue!4445 (value!135874 List!26999)) (NewLineValue!4445 (value!135875 List!26999)) (IntegerValue!13335 (value!135876 (_ BitVec 32)) (text!31562 List!26999)) (IntegerValue!13336 (value!135877 Int) (text!31563 List!26999)) (Times!4445) (Or!4445) (Equal!4445) (Minus!4445) (Broken!22229 (value!135878 List!26999)) (And!4445) (Div!4445) (LessEqual!4445) (Mod!4445) (Concat!11076) (Not!4445) (Plus!4445) (SpaceValue!4445 (value!135879 List!26999)) (IntegerValue!13337 (value!135880 Int) (text!31564 List!26999)) (StringLiteralValue!13336 (text!31565 List!26999)) (FloatLiteralValue!8891 (text!31566 List!26999)) (BytesLiteralValue!4445 (value!135881 List!26999)) (CommentValue!8891 (value!135882 List!26999)) (StringLiteralValue!13337 (value!135883 List!26999)) (ErrorTokenValue!4445 (msg!4506 List!26999)) )
))
(declare-datatypes ((C!13408 0))(
  ( (C!13409 (val!7752 Int)) )
))
(declare-datatypes ((List!27000 0))(
  ( (Nil!26906) (Cons!26906 (h!32307 C!13408) (t!201998 List!27000)) )
))
(declare-datatypes ((IArray!17433 0))(
  ( (IArray!17434 (innerList!8774 List!27000)) )
))
(declare-datatypes ((Conc!8714 0))(
  ( (Node!8714 (left!20420 Conc!8714) (right!20750 Conc!8714) (csize!17658 Int) (cheight!8925 Int)) (Leaf!12841 (xs!11656 IArray!17433) (csize!17659 Int)) (Empty!8714) )
))
(declare-datatypes ((BalanceConc!17156 0))(
  ( (BalanceConc!17157 (c!359744 Conc!8714)) )
))
(declare-datatypes ((Regex!6631 0))(
  ( (ElementMatch!6631 (c!359745 C!13408)) (Concat!11077 (regOne!13774 Regex!6631) (regTwo!13774 Regex!6631)) (EmptyExpr!6631) (Star!6631 (reg!6960 Regex!6631)) (EmptyLang!6631) (Union!6631 (regOne!13775 Regex!6631) (regTwo!13775 Regex!6631)) )
))
(declare-datatypes ((String!29329 0))(
  ( (String!29330 (value!135884 String)) )
))
(declare-datatypes ((TokenValueInjection!8430 0))(
  ( (TokenValueInjection!8431 (toValue!6037 Int) (toChars!5896 Int)) )
))
(declare-datatypes ((Rule!8366 0))(
  ( (Rule!8367 (regex!4283 Regex!6631) (tag!4773 String!29329) (isSeparator!4283 Bool) (transformation!4283 TokenValueInjection!8430)) )
))
(declare-fun otherR!12 () Rule!8366)

(declare-fun inv!36449 (String!29329) Bool)

(declare-fun inv!36452 (TokenValueInjection!8430) Bool)

(assert (=> b!2264774 (= e!1450268 (and tp!716514 (inv!36449 (tag!4773 otherR!12)) (inv!36452 (transformation!4283 otherR!12)) e!1450271))))

(declare-fun e!1450279 () Bool)

(assert (=> b!2264775 (= e!1450279 (and tp!716499 tp!716515))))

(declare-fun b!2264777 () Bool)

(declare-fun res!968146 () Bool)

(declare-fun e!1450261 () Bool)

(assert (=> b!2264777 (=> (not res!968146) (not e!1450261))))

(declare-datatypes ((List!27001 0))(
  ( (Nil!26907) (Cons!26907 (h!32308 Rule!8366) (t!201999 List!27001)) )
))
(declare-fun rules!1750 () List!27001)

(declare-fun contains!4641 (List!27001 Rule!8366) Bool)

(assert (=> b!2264777 (= res!968146 (contains!4641 rules!1750 otherR!12))))

(declare-fun b!2264778 () Bool)

(declare-fun e!1450265 () Bool)

(declare-fun tp_is_empty!10483 () Bool)

(declare-fun tp!716513 () Bool)

(assert (=> b!2264778 (= e!1450265 (and tp_is_empty!10483 tp!716513))))

(declare-fun b!2264779 () Bool)

(declare-fun e!1450259 () Bool)

(declare-fun e!1450272 () Bool)

(assert (=> b!2264779 (= e!1450259 e!1450272)))

(declare-fun res!968152 () Bool)

(assert (=> b!2264779 (=> res!968152 e!1450272)))

(declare-fun lt!841588 () Int)

(declare-fun lt!841587 () Int)

(assert (=> b!2264779 (= res!968152 (>= lt!841588 lt!841587))))

(declare-fun otherP!12 () List!27000)

(declare-fun matchR!2892 (Regex!6631 List!27000) Bool)

(assert (=> b!2264779 (not (matchR!2892 (regex!4283 otherR!12) otherP!12))))

(declare-datatypes ((LexerInterface!3880 0))(
  ( (LexerInterfaceExt!3877 (__x!17951 Int)) (Lexer!3878) )
))
(declare-fun thiss!16613 () LexerInterface!3880)

(declare-fun r!2363 () Rule!8366)

(declare-fun input!1722 () List!27000)

(declare-datatypes ((Unit!39854 0))(
  ( (Unit!39855) )
))
(declare-fun lt!841608 () Unit!39854)

(declare-fun lt!841596 () List!27000)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!280 (LexerInterface!3880 List!27001 Rule!8366 List!27000 List!27000 List!27000 Rule!8366) Unit!39854)

(assert (=> b!2264779 (= lt!841608 (lemmaMaxPrefixOutputsMaxPrefix!280 thiss!16613 rules!1750 r!2363 lt!841596 input!1722 otherP!12 otherR!12))))

(declare-fun e!1450247 () Bool)

(declare-fun b!2264780 () Bool)

(declare-datatypes ((Token!8044 0))(
  ( (Token!8045 (value!135885 TokenValue!4445) (rule!6597 Rule!8366) (size!21094 Int) (originalCharacters!5053 List!27000)) )
))
(declare-datatypes ((List!27002 0))(
  ( (Nil!26908) (Cons!26908 (h!32309 Token!8044) (t!202000 List!27002)) )
))
(declare-fun tokens!456 () List!27002)

(declare-fun e!1450260 () Bool)

(declare-fun tp!716505 () Bool)

(assert (=> b!2264780 (= e!1450260 (and tp!716505 (inv!36449 (tag!4773 (rule!6597 (h!32309 tokens!456)))) (inv!36452 (transformation!4283 (rule!6597 (h!32309 tokens!456)))) e!1450247))))

(declare-fun b!2264781 () Bool)

(declare-fun e!1450264 () Bool)

(declare-fun e!1450270 () Bool)

(assert (=> b!2264781 (= e!1450264 e!1450270)))

(declare-fun res!968154 () Bool)

(assert (=> b!2264781 (=> (not res!968154) (not e!1450270))))

(declare-fun e!1450275 () Bool)

(assert (=> b!2264781 (= res!968154 e!1450275)))

(declare-fun res!968151 () Bool)

(assert (=> b!2264781 (=> res!968151 e!1450275)))

(declare-fun lt!841591 () Bool)

(assert (=> b!2264781 (= res!968151 lt!841591)))

(declare-fun isEmpty!15221 (List!27002) Bool)

(assert (=> b!2264781 (= lt!841591 (isEmpty!15221 tokens!456))))

(declare-fun b!2264782 () Bool)

(declare-fun res!968145 () Bool)

(assert (=> b!2264782 (=> (not res!968145) (not e!1450270))))

(assert (=> b!2264782 (= res!968145 (not (= r!2363 otherR!12)))))

(declare-fun b!2264783 () Bool)

(declare-fun res!968140 () Bool)

(declare-fun e!1450269 () Bool)

(assert (=> b!2264783 (=> res!968140 e!1450269)))

(assert (=> b!2264783 (= res!968140 (not (matchR!2892 (regex!4283 r!2363) lt!841596)))))

(declare-fun b!2264784 () Bool)

(declare-fun e!1450278 () Bool)

(declare-fun e!1450273 () Bool)

(declare-fun tp!716503 () Bool)

(assert (=> b!2264784 (= e!1450278 (and e!1450273 tp!716503))))

(assert (=> b!2264785 (= e!1450247 (and tp!716498 tp!716512))))

(declare-fun b!2264786 () Bool)

(assert (=> b!2264786 (= e!1450261 e!1450264)))

(declare-fun res!968153 () Bool)

(assert (=> b!2264786 (=> (not res!968153) (not e!1450264))))

(declare-datatypes ((IArray!17435 0))(
  ( (IArray!17436 (innerList!8775 List!27002)) )
))
(declare-datatypes ((Conc!8715 0))(
  ( (Node!8715 (left!20421 Conc!8715) (right!20751 Conc!8715) (csize!17660 Int) (cheight!8926 Int)) (Leaf!12842 (xs!11657 IArray!17435) (csize!17661 Int)) (Empty!8715) )
))
(declare-datatypes ((BalanceConc!17158 0))(
  ( (BalanceConc!17159 (c!359746 Conc!8715)) )
))
(declare-datatypes ((tuple2!26530 0))(
  ( (tuple2!26531 (_1!15775 BalanceConc!17158) (_2!15775 BalanceConc!17156)) )
))
(declare-fun lt!841597 () tuple2!26530)

(declare-fun suffix!886 () List!27000)

(declare-datatypes ((tuple2!26532 0))(
  ( (tuple2!26533 (_1!15776 List!27002) (_2!15776 List!27000)) )
))
(declare-fun list!10397 (BalanceConc!17158) List!27002)

(declare-fun list!10398 (BalanceConc!17156) List!27000)

(assert (=> b!2264786 (= res!968153 (= (tuple2!26533 (list!10397 (_1!15775 lt!841597)) (list!10398 (_2!15775 lt!841597))) (tuple2!26533 tokens!456 suffix!886)))))

(declare-fun lex!1719 (LexerInterface!3880 List!27001 BalanceConc!17156) tuple2!26530)

(declare-fun seqFromList!2987 (List!27000) BalanceConc!17156)

(assert (=> b!2264786 (= lt!841597 (lex!1719 thiss!16613 rules!1750 (seqFromList!2987 input!1722)))))

(declare-fun b!2264787 () Bool)

(declare-fun e!1450276 () Bool)

(declare-fun e!1450263 () Bool)

(assert (=> b!2264787 (= e!1450276 e!1450263)))

(declare-fun res!968147 () Bool)

(assert (=> b!2264787 (=> res!968147 e!1450263)))

(get-info :version)

(assert (=> b!2264787 (= res!968147 ((_ is Nil!26908) tokens!456))))

(declare-fun lt!841607 () Unit!39854)

(declare-fun e!1450255 () Unit!39854)

(assert (=> b!2264787 (= lt!841607 e!1450255)))

(declare-fun c!359743 () Bool)

(assert (=> b!2264787 (= c!359743 (= lt!841587 lt!841588))))

(declare-fun e!1450254 () Bool)

(declare-fun e!1450266 () Bool)

(declare-fun tp!716509 () Bool)

(declare-fun b!2264788 () Bool)

(declare-fun inv!36453 (Token!8044) Bool)

(assert (=> b!2264788 (= e!1450266 (and (inv!36453 (h!32309 tokens!456)) e!1450254 tp!716509))))

(declare-fun b!2264789 () Bool)

(declare-fun Unit!39856 () Unit!39854)

(assert (=> b!2264789 (= e!1450255 Unit!39856)))

(declare-fun lt!841598 () Unit!39854)

(declare-fun lemmaSameIndexThenSameElement!150 (List!27001 Rule!8366 Rule!8366) Unit!39854)

(assert (=> b!2264789 (= lt!841598 (lemmaSameIndexThenSameElement!150 rules!1750 r!2363 otherR!12))))

(assert (=> b!2264789 false))

(declare-fun res!968143 () Bool)

(assert (=> start!221236 (=> (not res!968143) (not e!1450261))))

(assert (=> start!221236 (= res!968143 ((_ is Lexer!3878) thiss!16613))))

(assert (=> start!221236 e!1450261))

(assert (=> start!221236 true))

(declare-fun e!1450267 () Bool)

(assert (=> start!221236 e!1450267))

(assert (=> start!221236 e!1450268))

(assert (=> start!221236 e!1450265))

(declare-fun e!1450251 () Bool)

(assert (=> start!221236 e!1450251))

(assert (=> start!221236 e!1450278))

(declare-fun e!1450262 () Bool)

(assert (=> start!221236 e!1450262))

(assert (=> start!221236 e!1450266))

(declare-fun b!2264776 () Bool)

(declare-fun res!968156 () Bool)

(assert (=> b!2264776 (=> (not res!968156) (not e!1450261))))

(declare-fun isEmpty!15222 (List!27001) Bool)

(assert (=> b!2264776 (= res!968156 (not (isEmpty!15222 rules!1750)))))

(declare-fun b!2264790 () Bool)

(assert (=> b!2264790 (= e!1450269 e!1450259)))

(declare-fun res!968155 () Bool)

(assert (=> b!2264790 (=> res!968155 e!1450259)))

(declare-datatypes ((tuple2!26534 0))(
  ( (tuple2!26535 (_1!15777 Token!8044) (_2!15777 List!27000)) )
))
(declare-datatypes ((Option!5261 0))(
  ( (None!5260) (Some!5260 (v!30298 tuple2!26534)) )
))
(declare-fun lt!841594 () Option!5261)

(declare-fun lt!841601 () Option!5261)

(declare-fun lt!841592 () Option!5261)

(assert (=> b!2264790 (= res!968155 (or (not (= lt!841594 lt!841601)) (not (= lt!841592 lt!841601))))))

(declare-fun lt!841604 () Token!8044)

(declare-fun lt!841602 () List!27000)

(assert (=> b!2264790 (= lt!841601 (Some!5260 (tuple2!26535 lt!841604 lt!841602)))))

(declare-fun isPrefix!2273 (List!27000 List!27000) Bool)

(assert (=> b!2264790 (isPrefix!2273 input!1722 input!1722)))

(declare-fun lt!841590 () Unit!39854)

(declare-fun lemmaIsPrefixRefl!1457 (List!27000 List!27000) Unit!39854)

(assert (=> b!2264790 (= lt!841590 (lemmaIsPrefixRefl!1457 input!1722 input!1722))))

(declare-fun lt!841595 () Unit!39854)

(declare-fun lt!841606 () BalanceConc!17156)

(declare-fun lemmaSemiInverse!1030 (TokenValueInjection!8430 BalanceConc!17156) Unit!39854)

(assert (=> b!2264790 (= lt!841595 (lemmaSemiInverse!1030 (transformation!4283 r!2363) lt!841606))))

(declare-fun b!2264791 () Bool)

(declare-fun e!1450256 () Bool)

(declare-fun charsOf!2671 (Token!8044) BalanceConc!17156)

(declare-fun head!4868 (List!27002) Token!8044)

(assert (=> b!2264791 (= e!1450256 (not (matchR!2892 (regex!4283 r!2363) (list!10398 (charsOf!2671 (head!4868 tokens!456))))))))

(declare-fun e!1450277 () Bool)

(assert (=> b!2264792 (= e!1450277 (and tp!716500 tp!716507))))

(declare-fun b!2264793 () Bool)

(declare-fun tp!716506 () Bool)

(assert (=> b!2264793 (= e!1450262 (and tp!716506 (inv!36449 (tag!4773 r!2363)) (inv!36452 (transformation!4283 r!2363)) e!1450279))))

(declare-fun b!2264794 () Bool)

(declare-fun e!1450249 () Bool)

(assert (=> b!2264794 (= e!1450270 (not e!1450249))))

(declare-fun res!968149 () Bool)

(assert (=> b!2264794 (=> res!968149 e!1450249)))

(assert (=> b!2264794 (= res!968149 e!1450256)))

(declare-fun res!968142 () Bool)

(assert (=> b!2264794 (=> (not res!968142) (not e!1450256))))

(assert (=> b!2264794 (= res!968142 (not lt!841591))))

(declare-fun ruleValid!1375 (LexerInterface!3880 Rule!8366) Bool)

(assert (=> b!2264794 (ruleValid!1375 thiss!16613 r!2363)))

(declare-fun lt!841589 () Unit!39854)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!782 (LexerInterface!3880 Rule!8366 List!27001) Unit!39854)

(assert (=> b!2264794 (= lt!841589 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!782 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2264795 () Bool)

(declare-fun tp!716510 () Bool)

(assert (=> b!2264795 (= e!1450267 (and tp_is_empty!10483 tp!716510))))

(declare-fun b!2264796 () Bool)

(declare-fun validRegex!2482 (Regex!6631) Bool)

(assert (=> b!2264796 (= e!1450272 (validRegex!2482 (regex!4283 otherR!12)))))

(declare-fun b!2264797 () Bool)

(declare-fun Unit!39857 () Unit!39854)

(assert (=> b!2264797 (= e!1450255 Unit!39857)))

(declare-fun b!2264798 () Bool)

(declare-fun e!1450253 () Bool)

(assert (=> b!2264798 (= e!1450263 e!1450253)))

(declare-fun res!968150 () Bool)

(assert (=> b!2264798 (=> res!968150 e!1450253)))

(declare-fun lt!841603 () Int)

(declare-fun lt!841585 () Int)

(assert (=> b!2264798 (= res!968150 (<= lt!841603 lt!841585))))

(declare-fun size!21095 (List!27000) Int)

(assert (=> b!2264798 (= lt!841585 (size!21095 lt!841596))))

(assert (=> b!2264798 (= lt!841603 (size!21095 otherP!12))))

(declare-fun lt!841600 () tuple2!26534)

(assert (=> b!2264798 (= (_2!15777 lt!841600) lt!841602)))

(declare-fun lt!841593 () Unit!39854)

(declare-fun lemmaSamePrefixThenSameSuffix!1002 (List!27000 List!27000 List!27000 List!27000 List!27000) Unit!39854)

(assert (=> b!2264798 (= lt!841593 (lemmaSamePrefixThenSameSuffix!1002 lt!841596 (_2!15777 lt!841600) lt!841596 lt!841602 input!1722))))

(declare-fun getSuffix!1084 (List!27000 List!27000) List!27000)

(assert (=> b!2264798 (= lt!841602 (getSuffix!1084 input!1722 lt!841596))))

(declare-fun ++!6555 (List!27000 List!27000) List!27000)

(assert (=> b!2264798 (isPrefix!2273 lt!841596 (++!6555 lt!841596 (_2!15777 lt!841600)))))

(declare-fun lt!841586 () Unit!39854)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1498 (List!27000 List!27000) Unit!39854)

(assert (=> b!2264798 (= lt!841586 (lemmaConcatTwoListThenFirstIsPrefix!1498 lt!841596 (_2!15777 lt!841600)))))

(assert (=> b!2264798 (= lt!841596 (list!10398 (charsOf!2671 (h!32309 tokens!456))))))

(declare-fun get!8118 (Option!5261) tuple2!26534)

(assert (=> b!2264798 (= lt!841600 (get!8118 lt!841592))))

(declare-fun maxPrefix!2154 (LexerInterface!3880 List!27001 List!27000) Option!5261)

(assert (=> b!2264798 (= lt!841592 (maxPrefix!2154 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2264799 () Bool)

(assert (=> b!2264799 (= e!1450253 e!1450269)))

(declare-fun res!968148 () Bool)

(assert (=> b!2264799 (=> res!968148 e!1450269)))

(assert (=> b!2264799 (= res!968148 (not (isPrefix!2273 lt!841596 input!1722)))))

(assert (=> b!2264799 (= lt!841594 (Some!5260 (tuple2!26535 lt!841604 (_2!15777 lt!841600))))))

(declare-fun maxPrefixOneRule!1348 (LexerInterface!3880 Rule!8366 List!27000) Option!5261)

(assert (=> b!2264799 (= lt!841594 (maxPrefixOneRule!1348 thiss!16613 r!2363 input!1722))))

(declare-fun apply!6587 (TokenValueInjection!8430 BalanceConc!17156) TokenValue!4445)

(assert (=> b!2264799 (= lt!841604 (Token!8045 (apply!6587 (transformation!4283 r!2363) lt!841606) r!2363 lt!841585 lt!841596))))

(assert (=> b!2264799 (= lt!841606 (seqFromList!2987 lt!841596))))

(declare-fun lt!841599 () Unit!39854)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!573 (LexerInterface!3880 List!27001 List!27000 List!27000 List!27000 Rule!8366) Unit!39854)

(assert (=> b!2264799 (= lt!841599 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!573 thiss!16613 rules!1750 lt!841596 input!1722 (_2!15777 lt!841600) r!2363))))

(declare-fun b!2264800 () Bool)

(declare-fun res!968157 () Bool)

(assert (=> b!2264800 (=> (not res!968157) (not e!1450270))))

(assert (=> b!2264800 (= res!968157 (isPrefix!2273 otherP!12 input!1722))))

(declare-fun b!2264801 () Bool)

(declare-fun tp!716502 () Bool)

(declare-fun inv!21 (TokenValue!4445) Bool)

(assert (=> b!2264801 (= e!1450254 (and (inv!21 (value!135885 (h!32309 tokens!456))) e!1450260 tp!716502))))

(declare-fun b!2264802 () Bool)

(declare-fun tp!716501 () Bool)

(assert (=> b!2264802 (= e!1450273 (and tp!716501 (inv!36449 (tag!4773 (h!32308 rules!1750))) (inv!36452 (transformation!4283 (h!32308 rules!1750))) e!1450277))))

(declare-fun b!2264803 () Bool)

(declare-fun res!968141 () Bool)

(assert (=> b!2264803 (=> (not res!968141) (not e!1450261))))

(assert (=> b!2264803 (= res!968141 (contains!4641 rules!1750 r!2363))))

(declare-fun b!2264804 () Bool)

(declare-fun e!1450250 () Bool)

(assert (=> b!2264804 (= e!1450250 (= (rule!6597 (head!4868 tokens!456)) r!2363))))

(declare-fun b!2264805 () Bool)

(declare-fun tp!716511 () Bool)

(assert (=> b!2264805 (= e!1450251 (and tp_is_empty!10483 tp!716511))))

(assert (=> b!2264806 (= e!1450271 (and tp!716504 tp!716508))))

(declare-fun b!2264807 () Bool)

(declare-fun res!968158 () Bool)

(assert (=> b!2264807 (=> (not res!968158) (not e!1450261))))

(declare-fun rulesInvariant!3382 (LexerInterface!3880 List!27001) Bool)

(assert (=> b!2264807 (= res!968158 (rulesInvariant!3382 thiss!16613 rules!1750))))

(declare-fun b!2264808 () Bool)

(declare-fun res!968144 () Bool)

(assert (=> b!2264808 (=> (not res!968144) (not e!1450270))))

(assert (=> b!2264808 (= res!968144 e!1450250)))

(declare-fun res!968159 () Bool)

(assert (=> b!2264808 (=> res!968159 e!1450250)))

(assert (=> b!2264808 (= res!968159 lt!841591)))

(declare-fun b!2264809 () Bool)

(assert (=> b!2264809 (= e!1450249 e!1450276)))

(declare-fun res!968160 () Bool)

(assert (=> b!2264809 (=> res!968160 e!1450276)))

(assert (=> b!2264809 (= res!968160 (> lt!841587 lt!841588))))

(declare-fun getIndex!304 (List!27001 Rule!8366) Int)

(assert (=> b!2264809 (= lt!841588 (getIndex!304 rules!1750 otherR!12))))

(assert (=> b!2264809 (= lt!841587 (getIndex!304 rules!1750 r!2363))))

(assert (=> b!2264809 (ruleValid!1375 thiss!16613 otherR!12)))

(declare-fun lt!841605 () Unit!39854)

(assert (=> b!2264809 (= lt!841605 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!782 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2264810 () Bool)

(declare-fun size!21096 (BalanceConc!17156) Int)

(assert (=> b!2264810 (= e!1450275 (<= (size!21096 (charsOf!2671 (head!4868 tokens!456))) (size!21095 otherP!12)))))

(assert (= (and start!221236 res!968143) b!2264776))

(assert (= (and b!2264776 res!968156) b!2264807))

(assert (= (and b!2264807 res!968158) b!2264803))

(assert (= (and b!2264803 res!968141) b!2264777))

(assert (= (and b!2264777 res!968146) b!2264786))

(assert (= (and b!2264786 res!968153) b!2264781))

(assert (= (and b!2264781 (not res!968151)) b!2264810))

(assert (= (and b!2264781 res!968154) b!2264808))

(assert (= (and b!2264808 (not res!968159)) b!2264804))

(assert (= (and b!2264808 res!968144) b!2264800))

(assert (= (and b!2264800 res!968157) b!2264782))

(assert (= (and b!2264782 res!968145) b!2264794))

(assert (= (and b!2264794 res!968142) b!2264791))

(assert (= (and b!2264794 (not res!968149)) b!2264809))

(assert (= (and b!2264809 (not res!968160)) b!2264787))

(assert (= (and b!2264787 c!359743) b!2264789))

(assert (= (and b!2264787 (not c!359743)) b!2264797))

(assert (= (and b!2264787 (not res!968147)) b!2264798))

(assert (= (and b!2264798 (not res!968150)) b!2264799))

(assert (= (and b!2264799 (not res!968148)) b!2264783))

(assert (= (and b!2264783 (not res!968140)) b!2264790))

(assert (= (and b!2264790 (not res!968155)) b!2264779))

(assert (= (and b!2264779 (not res!968152)) b!2264796))

(assert (= (and start!221236 ((_ is Cons!26906) input!1722)) b!2264795))

(assert (= b!2264774 b!2264806))

(assert (= start!221236 b!2264774))

(assert (= (and start!221236 ((_ is Cons!26906) suffix!886)) b!2264778))

(assert (= (and start!221236 ((_ is Cons!26906) otherP!12)) b!2264805))

(assert (= b!2264802 b!2264792))

(assert (= b!2264784 b!2264802))

(assert (= (and start!221236 ((_ is Cons!26907) rules!1750)) b!2264784))

(assert (= b!2264793 b!2264775))

(assert (= start!221236 b!2264793))

(assert (= b!2264780 b!2264785))

(assert (= b!2264801 b!2264780))

(assert (= b!2264788 b!2264801))

(assert (= (and start!221236 ((_ is Cons!26908) tokens!456)) b!2264788))

(declare-fun m!2694185 () Bool)

(assert (=> b!2264796 m!2694185))

(declare-fun m!2694187 () Bool)

(assert (=> b!2264777 m!2694187))

(declare-fun m!2694189 () Bool)

(assert (=> b!2264774 m!2694189))

(declare-fun m!2694191 () Bool)

(assert (=> b!2264774 m!2694191))

(declare-fun m!2694193 () Bool)

(assert (=> b!2264802 m!2694193))

(declare-fun m!2694195 () Bool)

(assert (=> b!2264802 m!2694195))

(declare-fun m!2694197 () Bool)

(assert (=> b!2264788 m!2694197))

(declare-fun m!2694199 () Bool)

(assert (=> b!2264780 m!2694199))

(declare-fun m!2694201 () Bool)

(assert (=> b!2264780 m!2694201))

(declare-fun m!2694203 () Bool)

(assert (=> b!2264789 m!2694203))

(declare-fun m!2694205 () Bool)

(assert (=> b!2264804 m!2694205))

(assert (=> b!2264791 m!2694205))

(assert (=> b!2264791 m!2694205))

(declare-fun m!2694207 () Bool)

(assert (=> b!2264791 m!2694207))

(assert (=> b!2264791 m!2694207))

(declare-fun m!2694209 () Bool)

(assert (=> b!2264791 m!2694209))

(assert (=> b!2264791 m!2694209))

(declare-fun m!2694211 () Bool)

(assert (=> b!2264791 m!2694211))

(declare-fun m!2694213 () Bool)

(assert (=> b!2264798 m!2694213))

(assert (=> b!2264798 m!2694213))

(declare-fun m!2694215 () Bool)

(assert (=> b!2264798 m!2694215))

(declare-fun m!2694217 () Bool)

(assert (=> b!2264798 m!2694217))

(declare-fun m!2694219 () Bool)

(assert (=> b!2264798 m!2694219))

(declare-fun m!2694221 () Bool)

(assert (=> b!2264798 m!2694221))

(declare-fun m!2694223 () Bool)

(assert (=> b!2264798 m!2694223))

(declare-fun m!2694225 () Bool)

(assert (=> b!2264798 m!2694225))

(declare-fun m!2694227 () Bool)

(assert (=> b!2264798 m!2694227))

(assert (=> b!2264798 m!2694225))

(declare-fun m!2694229 () Bool)

(assert (=> b!2264798 m!2694229))

(declare-fun m!2694231 () Bool)

(assert (=> b!2264798 m!2694231))

(declare-fun m!2694233 () Bool)

(assert (=> b!2264798 m!2694233))

(assert (=> b!2264810 m!2694205))

(assert (=> b!2264810 m!2694205))

(assert (=> b!2264810 m!2694207))

(assert (=> b!2264810 m!2694207))

(declare-fun m!2694235 () Bool)

(assert (=> b!2264810 m!2694235))

(assert (=> b!2264810 m!2694217))

(declare-fun m!2694237 () Bool)

(assert (=> b!2264790 m!2694237))

(declare-fun m!2694239 () Bool)

(assert (=> b!2264790 m!2694239))

(declare-fun m!2694241 () Bool)

(assert (=> b!2264790 m!2694241))

(declare-fun m!2694243 () Bool)

(assert (=> b!2264781 m!2694243))

(declare-fun m!2694245 () Bool)

(assert (=> b!2264799 m!2694245))

(declare-fun m!2694247 () Bool)

(assert (=> b!2264799 m!2694247))

(declare-fun m!2694249 () Bool)

(assert (=> b!2264799 m!2694249))

(declare-fun m!2694251 () Bool)

(assert (=> b!2264799 m!2694251))

(declare-fun m!2694253 () Bool)

(assert (=> b!2264799 m!2694253))

(declare-fun m!2694255 () Bool)

(assert (=> b!2264776 m!2694255))

(declare-fun m!2694257 () Bool)

(assert (=> b!2264801 m!2694257))

(declare-fun m!2694259 () Bool)

(assert (=> b!2264793 m!2694259))

(declare-fun m!2694261 () Bool)

(assert (=> b!2264793 m!2694261))

(declare-fun m!2694263 () Bool)

(assert (=> b!2264809 m!2694263))

(declare-fun m!2694265 () Bool)

(assert (=> b!2264809 m!2694265))

(declare-fun m!2694267 () Bool)

(assert (=> b!2264809 m!2694267))

(declare-fun m!2694269 () Bool)

(assert (=> b!2264809 m!2694269))

(declare-fun m!2694271 () Bool)

(assert (=> b!2264803 m!2694271))

(declare-fun m!2694273 () Bool)

(assert (=> b!2264783 m!2694273))

(declare-fun m!2694275 () Bool)

(assert (=> b!2264794 m!2694275))

(declare-fun m!2694277 () Bool)

(assert (=> b!2264794 m!2694277))

(declare-fun m!2694279 () Bool)

(assert (=> b!2264779 m!2694279))

(declare-fun m!2694281 () Bool)

(assert (=> b!2264779 m!2694281))

(declare-fun m!2694283 () Bool)

(assert (=> b!2264807 m!2694283))

(declare-fun m!2694285 () Bool)

(assert (=> b!2264800 m!2694285))

(declare-fun m!2694287 () Bool)

(assert (=> b!2264786 m!2694287))

(declare-fun m!2694289 () Bool)

(assert (=> b!2264786 m!2694289))

(declare-fun m!2694291 () Bool)

(assert (=> b!2264786 m!2694291))

(assert (=> b!2264786 m!2694291))

(declare-fun m!2694293 () Bool)

(assert (=> b!2264786 m!2694293))

(check-sat (not b!2264777) (not b!2264798) (not b!2264779) b_and!178129 (not b!2264805) b_and!178127 (not b!2264780) (not b!2264809) (not b_next!67755) (not b_next!67751) b_and!178125 b_and!178123 (not b!2264783) (not b!2264778) (not b!2264784) (not b!2264810) (not b_next!67749) b_and!178131 (not b!2264801) tp_is_empty!10483 (not b!2264794) (not b!2264799) (not b_next!67745) (not b!2264796) (not b_next!67747) (not b!2264781) (not b!2264774) b_and!178135 (not b!2264776) b_and!178121 (not b!2264802) (not b!2264807) (not b!2264804) (not b_next!67753) (not b!2264786) (not b!2264795) (not b!2264790) (not b_next!67741) (not b!2264803) (not b!2264793) (not b!2264788) (not b!2264800) (not b!2264791) b_and!178133 (not b!2264789) (not b_next!67743))
(check-sat b_and!178129 (not b_next!67745) b_and!178121 b_and!178127 (not b_next!67753) (not b_next!67741) (not b_next!67755) (not b_next!67751) b_and!178125 b_and!178123 (not b_next!67749) b_and!178131 (not b_next!67747) b_and!178135 b_and!178133 (not b_next!67743))
