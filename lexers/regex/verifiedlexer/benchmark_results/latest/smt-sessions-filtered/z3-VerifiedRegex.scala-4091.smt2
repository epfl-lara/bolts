; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219092 () Bool)

(assert start!219092)

(declare-fun b!2246923 () Bool)

(declare-fun b_free!65629 () Bool)

(declare-fun b_next!66333 () Bool)

(assert (=> b!2246923 (= b_free!65629 (not b_next!66333))))

(declare-fun tp!709461 () Bool)

(declare-fun b_and!175801 () Bool)

(assert (=> b!2246923 (= tp!709461 b_and!175801)))

(declare-fun b_free!65631 () Bool)

(declare-fun b_next!66335 () Bool)

(assert (=> b!2246923 (= b_free!65631 (not b_next!66335))))

(declare-fun tp!709455 () Bool)

(declare-fun b_and!175803 () Bool)

(assert (=> b!2246923 (= tp!709455 b_and!175803)))

(declare-fun b!2246896 () Bool)

(declare-fun b_free!65633 () Bool)

(declare-fun b_next!66337 () Bool)

(assert (=> b!2246896 (= b_free!65633 (not b_next!66337))))

(declare-fun tp!709460 () Bool)

(declare-fun b_and!175805 () Bool)

(assert (=> b!2246896 (= tp!709460 b_and!175805)))

(declare-fun b_free!65635 () Bool)

(declare-fun b_next!66339 () Bool)

(assert (=> b!2246896 (= b_free!65635 (not b_next!66339))))

(declare-fun tp!709454 () Bool)

(declare-fun b_and!175807 () Bool)

(assert (=> b!2246896 (= tp!709454 b_and!175807)))

(declare-fun b!2246912 () Bool)

(declare-fun b_free!65637 () Bool)

(declare-fun b_next!66341 () Bool)

(assert (=> b!2246912 (= b_free!65637 (not b_next!66341))))

(declare-fun tp!709464 () Bool)

(declare-fun b_and!175809 () Bool)

(assert (=> b!2246912 (= tp!709464 b_and!175809)))

(declare-fun b_free!65639 () Bool)

(declare-fun b_next!66343 () Bool)

(assert (=> b!2246912 (= b_free!65639 (not b_next!66343))))

(declare-fun tp!709456 () Bool)

(declare-fun b_and!175811 () Bool)

(assert (=> b!2246912 (= tp!709456 b_and!175811)))

(declare-fun b!2246921 () Bool)

(declare-fun b_free!65641 () Bool)

(declare-fun b_next!66345 () Bool)

(assert (=> b!2246921 (= b_free!65641 (not b_next!66345))))

(declare-fun tp!709467 () Bool)

(declare-fun b_and!175813 () Bool)

(assert (=> b!2246921 (= tp!709467 b_and!175813)))

(declare-fun b_free!65643 () Bool)

(declare-fun b_next!66347 () Bool)

(assert (=> b!2246921 (= b_free!65643 (not b_next!66347))))

(declare-fun tp!709471 () Bool)

(declare-fun b_and!175815 () Bool)

(assert (=> b!2246921 (= tp!709471 b_and!175815)))

(declare-fun b!2246893 () Bool)

(declare-fun e!1437667 () Bool)

(declare-fun tp_is_empty!10343 () Bool)

(declare-fun tp!709463 () Bool)

(assert (=> b!2246893 (= e!1437667 (and tp_is_empty!10343 tp!709463))))

(declare-fun b!2246894 () Bool)

(declare-fun res!960141 () Bool)

(declare-fun e!1437673 () Bool)

(assert (=> b!2246894 (=> (not res!960141) (not e!1437673))))

(declare-datatypes ((List!26695 0))(
  ( (Nil!26601) (Cons!26601 (h!32002 (_ BitVec 16)) (t!200441 List!26695)) )
))
(declare-datatypes ((TokenValue!4375 0))(
  ( (FloatLiteralValue!8750 (text!31070 List!26695)) (TokenValueExt!4374 (__x!17810 Int)) (Broken!21875 (value!133864 List!26695)) (Object!4468) (End!4375) (Def!4375) (Underscore!4375) (Match!4375) (Else!4375) (Error!4375) (Case!4375) (If!4375) (Extends!4375) (Abstract!4375) (Class!4375) (Val!4375) (DelimiterValue!8750 (del!4435 List!26695)) (KeywordValue!4381 (value!133865 List!26695)) (CommentValue!8750 (value!133866 List!26695)) (WhitespaceValue!8750 (value!133867 List!26695)) (IndentationValue!4375 (value!133868 List!26695)) (String!28978) (Int32!4375) (Broken!21876 (value!133869 List!26695)) (Boolean!4376) (Unit!39555) (OperatorValue!4378 (op!4435 List!26695)) (IdentifierValue!8750 (value!133870 List!26695)) (IdentifierValue!8751 (value!133871 List!26695)) (WhitespaceValue!8751 (value!133872 List!26695)) (True!8750) (False!8750) (Broken!21877 (value!133873 List!26695)) (Broken!21878 (value!133874 List!26695)) (True!8751) (RightBrace!4375) (RightBracket!4375) (Colon!4375) (Null!4375) (Comma!4375) (LeftBracket!4375) (False!8751) (LeftBrace!4375) (ImaginaryLiteralValue!4375 (text!31071 List!26695)) (StringLiteralValue!13125 (value!133875 List!26695)) (EOFValue!4375 (value!133876 List!26695)) (IdentValue!4375 (value!133877 List!26695)) (DelimiterValue!8751 (value!133878 List!26695)) (DedentValue!4375 (value!133879 List!26695)) (NewLineValue!4375 (value!133880 List!26695)) (IntegerValue!13125 (value!133881 (_ BitVec 32)) (text!31072 List!26695)) (IntegerValue!13126 (value!133882 Int) (text!31073 List!26695)) (Times!4375) (Or!4375) (Equal!4375) (Minus!4375) (Broken!21879 (value!133883 List!26695)) (And!4375) (Div!4375) (LessEqual!4375) (Mod!4375) (Concat!10936) (Not!4375) (Plus!4375) (SpaceValue!4375 (value!133884 List!26695)) (IntegerValue!13127 (value!133885 Int) (text!31074 List!26695)) (StringLiteralValue!13126 (text!31075 List!26695)) (FloatLiteralValue!8751 (text!31076 List!26695)) (BytesLiteralValue!4375 (value!133886 List!26695)) (CommentValue!8751 (value!133887 List!26695)) (StringLiteralValue!13127 (value!133888 List!26695)) (ErrorTokenValue!4375 (msg!4436 List!26695)) )
))
(declare-datatypes ((C!13268 0))(
  ( (C!13269 (val!7682 Int)) )
))
(declare-datatypes ((List!26696 0))(
  ( (Nil!26602) (Cons!26602 (h!32003 C!13268) (t!200442 List!26696)) )
))
(declare-datatypes ((IArray!17153 0))(
  ( (IArray!17154 (innerList!8634 List!26696)) )
))
(declare-datatypes ((Conc!8574 0))(
  ( (Node!8574 (left!20213 Conc!8574) (right!20543 Conc!8574) (csize!17378 Int) (cheight!8785 Int)) (Leaf!12666 (xs!11516 IArray!17153) (csize!17379 Int)) (Empty!8574) )
))
(declare-datatypes ((BalanceConc!16876 0))(
  ( (BalanceConc!16877 (c!357440 Conc!8574)) )
))
(declare-datatypes ((String!28979 0))(
  ( (String!28980 (value!133889 String)) )
))
(declare-datatypes ((Regex!6561 0))(
  ( (ElementMatch!6561 (c!357441 C!13268)) (Concat!10937 (regOne!13634 Regex!6561) (regTwo!13634 Regex!6561)) (EmptyExpr!6561) (Star!6561 (reg!6890 Regex!6561)) (EmptyLang!6561) (Union!6561 (regOne!13635 Regex!6561) (regTwo!13635 Regex!6561)) )
))
(declare-datatypes ((TokenValueInjection!8290 0))(
  ( (TokenValueInjection!8291 (toValue!5943 Int) (toChars!5802 Int)) )
))
(declare-datatypes ((Rule!8226 0))(
  ( (Rule!8227 (regex!4213 Regex!6561) (tag!4703 String!28979) (isSeparator!4213 Bool) (transformation!4213 TokenValueInjection!8290)) )
))
(declare-datatypes ((List!26697 0))(
  ( (Nil!26603) (Cons!26603 (h!32004 Rule!8226) (t!200443 List!26697)) )
))
(declare-fun rules!1750 () List!26697)

(declare-fun isEmpty!14986 (List!26697) Bool)

(assert (=> b!2246894 (= res!960141 (not (isEmpty!14986 rules!1750)))))

(declare-fun b!2246895 () Bool)

(declare-fun res!960146 () Bool)

(declare-fun e!1437677 () Bool)

(assert (=> b!2246895 (=> res!960146 e!1437677)))

(declare-datatypes ((Token!7904 0))(
  ( (Token!7905 (value!133890 TokenValue!4375) (rule!6513 Rule!8226) (size!20802 Int) (originalCharacters!4983 List!26696)) )
))
(declare-datatypes ((List!26698 0))(
  ( (Nil!26604) (Cons!26604 (h!32005 Token!7904) (t!200444 List!26698)) )
))
(declare-fun tokens!456 () List!26698)

(declare-fun size!20803 (List!26698) Int)

(assert (=> b!2246895 (= res!960146 (<= (size!20803 tokens!456) 0))))

(declare-fun res!960136 () Bool)

(assert (=> start!219092 (=> (not res!960136) (not e!1437673))))

(declare-datatypes ((LexerInterface!3810 0))(
  ( (LexerInterfaceExt!3807 (__x!17811 Int)) (Lexer!3808) )
))
(declare-fun thiss!16613 () LexerInterface!3810)

(get-info :version)

(assert (=> start!219092 (= res!960136 ((_ is Lexer!3808) thiss!16613))))

(assert (=> start!219092 e!1437673))

(assert (=> start!219092 true))

(declare-fun e!1437682 () Bool)

(assert (=> start!219092 e!1437682))

(declare-fun e!1437660 () Bool)

(assert (=> start!219092 e!1437660))

(declare-fun e!1437665 () Bool)

(assert (=> start!219092 e!1437665))

(assert (=> start!219092 e!1437667))

(declare-fun e!1437678 () Bool)

(assert (=> start!219092 e!1437678))

(declare-fun e!1437661 () Bool)

(assert (=> start!219092 e!1437661))

(declare-fun e!1437668 () Bool)

(assert (=> start!219092 e!1437668))

(declare-fun e!1437662 () Bool)

(assert (=> b!2246896 (= e!1437662 (and tp!709460 tp!709454))))

(declare-fun b!2246897 () Bool)

(declare-fun res!960149 () Bool)

(assert (=> b!2246897 (=> (not res!960149) (not e!1437673))))

(declare-fun r!2363 () Rule!8226)

(declare-fun contains!4560 (List!26697 Rule!8226) Bool)

(assert (=> b!2246897 (= res!960149 (contains!4560 rules!1750 r!2363))))

(declare-fun b!2246898 () Bool)

(declare-fun res!960135 () Bool)

(declare-fun e!1437681 () Bool)

(assert (=> b!2246898 (=> (not res!960135) (not e!1437681))))

(declare-fun e!1437685 () Bool)

(assert (=> b!2246898 (= res!960135 e!1437685)))

(declare-fun res!960140 () Bool)

(assert (=> b!2246898 (=> res!960140 e!1437685)))

(declare-fun lt!835585 () Bool)

(assert (=> b!2246898 (= res!960140 lt!835585)))

(declare-fun b!2246899 () Bool)

(declare-fun e!1437664 () Bool)

(declare-fun tp!709465 () Bool)

(assert (=> b!2246899 (= e!1437678 (and e!1437664 tp!709465))))

(declare-fun tp!709468 () Bool)

(declare-fun e!1437669 () Bool)

(declare-fun b!2246900 () Bool)

(declare-fun inv!36125 (String!28979) Bool)

(declare-fun inv!36128 (TokenValueInjection!8290) Bool)

(assert (=> b!2246900 (= e!1437664 (and tp!709468 (inv!36125 (tag!4703 (h!32004 rules!1750))) (inv!36128 (transformation!4213 (h!32004 rules!1750))) e!1437669))))

(declare-fun b!2246901 () Bool)

(declare-fun e!1437659 () Bool)

(declare-fun e!1437686 () Bool)

(assert (=> b!2246901 (= e!1437659 e!1437686)))

(declare-fun res!960138 () Bool)

(assert (=> b!2246901 (=> res!960138 e!1437686)))

(declare-datatypes ((tuple2!26078 0))(
  ( (tuple2!26079 (_1!15549 Token!7904) (_2!15549 List!26696)) )
))
(declare-datatypes ((Option!5188 0))(
  ( (None!5187) (Some!5187 (v!30201 tuple2!26078)) )
))
(declare-fun lt!835582 () Option!5188)

(assert (=> b!2246901 (= res!960138 (not (= lt!835582 None!5187)))))

(declare-fun isEmpty!14987 (Option!5188) Bool)

(assert (=> b!2246901 (isEmpty!14987 lt!835582)))

(declare-fun input!1722 () List!26696)

(declare-fun otherR!12 () Rule!8226)

(declare-fun maxPrefixOneRule!1306 (LexerInterface!3810 Rule!8226 List!26696) Option!5188)

(assert (=> b!2246901 (= lt!835582 (maxPrefixOneRule!1306 thiss!16613 otherR!12 input!1722))))

(declare-datatypes ((Unit!39556 0))(
  ( (Unit!39557) )
))
(declare-fun lt!835581 () Unit!39556)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!397 (LexerInterface!3810 Rule!8226 List!26697 List!26696) Unit!39556)

(assert (=> b!2246901 (= lt!835581 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!397 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun tp!709470 () Bool)

(declare-fun e!1437687 () Bool)

(declare-fun b!2246902 () Bool)

(assert (=> b!2246902 (= e!1437660 (and tp!709470 (inv!36125 (tag!4703 otherR!12)) (inv!36128 (transformation!4213 otherR!12)) e!1437687))))

(declare-fun tp!709469 () Bool)

(declare-fun b!2246903 () Bool)

(declare-fun e!1437679 () Bool)

(declare-fun e!1437663 () Bool)

(declare-fun inv!21 (TokenValue!4375) Bool)

(assert (=> b!2246903 (= e!1437663 (and (inv!21 (value!133890 (h!32005 tokens!456))) e!1437679 tp!709469))))

(declare-fun b!2246904 () Bool)

(declare-fun res!960134 () Bool)

(assert (=> b!2246904 (=> (not res!960134) (not e!1437681))))

(assert (=> b!2246904 (= res!960134 (not (= r!2363 otherR!12)))))

(declare-fun b!2246905 () Bool)

(declare-fun res!960144 () Bool)

(assert (=> b!2246905 (=> (not res!960144) (not e!1437681))))

(declare-fun otherP!12 () List!26696)

(declare-fun isPrefix!2203 (List!26696 List!26696) Bool)

(assert (=> b!2246905 (= res!960144 (isPrefix!2203 otherP!12 input!1722))))

(declare-fun b!2246906 () Bool)

(declare-fun tp!709457 () Bool)

(assert (=> b!2246906 (= e!1437665 (and tp_is_empty!10343 tp!709457))))

(declare-fun b!2246907 () Bool)

(declare-fun e!1437666 () Bool)

(assert (=> b!2246907 (= e!1437681 (not e!1437666))))

(declare-fun res!960139 () Bool)

(assert (=> b!2246907 (=> res!960139 e!1437666)))

(declare-fun e!1437676 () Bool)

(assert (=> b!2246907 (= res!960139 e!1437676)))

(declare-fun res!960147 () Bool)

(assert (=> b!2246907 (=> (not res!960147) (not e!1437676))))

(assert (=> b!2246907 (= res!960147 (not lt!835585))))

(declare-fun ruleValid!1305 (LexerInterface!3810 Rule!8226) Bool)

(assert (=> b!2246907 (ruleValid!1305 thiss!16613 r!2363)))

(declare-fun lt!835584 () Unit!39556)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!712 (LexerInterface!3810 Rule!8226 List!26697) Unit!39556)

(assert (=> b!2246907 (= lt!835584 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!712 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2246908 () Bool)

(declare-fun e!1437680 () Bool)

(declare-fun size!20804 (BalanceConc!16876) Int)

(declare-fun charsOf!2601 (Token!7904) BalanceConc!16876)

(declare-fun head!4774 (List!26698) Token!7904)

(declare-fun size!20805 (List!26696) Int)

(assert (=> b!2246908 (= e!1437680 (<= (size!20804 (charsOf!2601 (head!4774 tokens!456))) (size!20805 otherP!12)))))

(declare-fun b!2246909 () Bool)

(assert (=> b!2246909 (= e!1437666 e!1437659)))

(declare-fun res!960145 () Bool)

(assert (=> b!2246909 (=> res!960145 e!1437659)))

(declare-fun lt!835580 () Int)

(declare-fun lt!835588 () Int)

(assert (=> b!2246909 (= res!960145 (or (<= lt!835580 lt!835588) (not ((_ is Nil!26604) tokens!456))))))

(declare-fun getIndex!234 (List!26697 Rule!8226) Int)

(assert (=> b!2246909 (= lt!835588 (getIndex!234 rules!1750 otherR!12))))

(assert (=> b!2246909 (= lt!835580 (getIndex!234 rules!1750 r!2363))))

(assert (=> b!2246909 (ruleValid!1305 thiss!16613 otherR!12)))

(declare-fun lt!835587 () Unit!39556)

(assert (=> b!2246909 (= lt!835587 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!712 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2246910 () Bool)

(assert (=> b!2246910 (= e!1437685 (= (rule!6513 (head!4774 tokens!456)) r!2363))))

(declare-fun tp!709466 () Bool)

(declare-fun b!2246911 () Bool)

(declare-fun inv!36129 (Token!7904) Bool)

(assert (=> b!2246911 (= e!1437668 (and (inv!36129 (h!32005 tokens!456)) e!1437663 tp!709466))))

(assert (=> b!2246912 (= e!1437669 (and tp!709464 tp!709456))))

(declare-fun b!2246913 () Bool)

(declare-fun tp!709459 () Bool)

(assert (=> b!2246913 (= e!1437679 (and tp!709459 (inv!36125 (tag!4703 (rule!6513 (h!32005 tokens!456)))) (inv!36128 (transformation!4213 (rule!6513 (h!32005 tokens!456)))) e!1437662))))

(declare-fun b!2246914 () Bool)

(declare-fun matchR!2822 (Regex!6561 List!26696) Bool)

(declare-fun list!10186 (BalanceConc!16876) List!26696)

(assert (=> b!2246914 (= e!1437676 (not (matchR!2822 (regex!4213 r!2363) (list!10186 (charsOf!2601 (head!4774 tokens!456))))))))

(declare-fun b!2246915 () Bool)

(assert (=> b!2246915 (= e!1437686 e!1437677)))

(declare-fun res!960143 () Bool)

(assert (=> b!2246915 (=> res!960143 e!1437677)))

(assert (=> b!2246915 (= res!960143 (< lt!835588 lt!835580))))

(assert (=> b!2246915 (not (matchR!2822 (regex!4213 otherR!12) otherP!12))))

(declare-fun lt!835583 () Unit!39556)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!391 (LexerInterface!3810 Rule!8226 List!26696 List!26696) Unit!39556)

(assert (=> b!2246915 (= lt!835583 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!391 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun b!2246916 () Bool)

(declare-fun res!960148 () Bool)

(assert (=> b!2246916 (=> (not res!960148) (not e!1437673))))

(declare-fun rulesInvariant!3312 (LexerInterface!3810 List!26697) Bool)

(assert (=> b!2246916 (= res!960148 (rulesInvariant!3312 thiss!16613 rules!1750))))

(declare-fun tp!709458 () Bool)

(declare-fun e!1437675 () Bool)

(declare-fun b!2246917 () Bool)

(assert (=> b!2246917 (= e!1437661 (and tp!709458 (inv!36125 (tag!4703 r!2363)) (inv!36128 (transformation!4213 r!2363)) e!1437675))))

(declare-fun b!2246918 () Bool)

(declare-fun e!1437684 () Bool)

(assert (=> b!2246918 (= e!1437684 e!1437681)))

(declare-fun res!960137 () Bool)

(assert (=> b!2246918 (=> (not res!960137) (not e!1437681))))

(assert (=> b!2246918 (= res!960137 e!1437680)))

(declare-fun res!960132 () Bool)

(assert (=> b!2246918 (=> res!960132 e!1437680)))

(assert (=> b!2246918 (= res!960132 lt!835585)))

(declare-fun isEmpty!14988 (List!26698) Bool)

(assert (=> b!2246918 (= lt!835585 (isEmpty!14988 tokens!456))))

(declare-fun b!2246919 () Bool)

(assert (=> b!2246919 (= e!1437673 e!1437684)))

(declare-fun res!960133 () Bool)

(assert (=> b!2246919 (=> (not res!960133) (not e!1437684))))

(declare-fun suffix!886 () List!26696)

(declare-datatypes ((IArray!17155 0))(
  ( (IArray!17156 (innerList!8635 List!26698)) )
))
(declare-datatypes ((Conc!8575 0))(
  ( (Node!8575 (left!20214 Conc!8575) (right!20544 Conc!8575) (csize!17380 Int) (cheight!8786 Int)) (Leaf!12667 (xs!11517 IArray!17155) (csize!17381 Int)) (Empty!8575) )
))
(declare-datatypes ((BalanceConc!16878 0))(
  ( (BalanceConc!16879 (c!357442 Conc!8575)) )
))
(declare-datatypes ((tuple2!26080 0))(
  ( (tuple2!26081 (_1!15550 BalanceConc!16878) (_2!15550 BalanceConc!16876)) )
))
(declare-fun lt!835586 () tuple2!26080)

(declare-datatypes ((tuple2!26082 0))(
  ( (tuple2!26083 (_1!15551 List!26698) (_2!15551 List!26696)) )
))
(declare-fun list!10187 (BalanceConc!16878) List!26698)

(assert (=> b!2246919 (= res!960133 (= (tuple2!26083 (list!10187 (_1!15550 lt!835586)) (list!10186 (_2!15550 lt!835586))) (tuple2!26083 tokens!456 suffix!886)))))

(declare-fun lex!1649 (LexerInterface!3810 List!26697 BalanceConc!16876) tuple2!26080)

(declare-fun seqFromList!2917 (List!26696) BalanceConc!16876)

(assert (=> b!2246919 (= lt!835586 (lex!1649 thiss!16613 rules!1750 (seqFromList!2917 input!1722)))))

(declare-fun b!2246920 () Bool)

(assert (=> b!2246920 (= e!1437677 (not (= tokens!456 Nil!26604)))))

(assert (=> b!2246921 (= e!1437687 (and tp!709467 tp!709471))))

(declare-fun b!2246922 () Bool)

(declare-fun tp!709462 () Bool)

(assert (=> b!2246922 (= e!1437682 (and tp_is_empty!10343 tp!709462))))

(assert (=> b!2246923 (= e!1437675 (and tp!709461 tp!709455))))

(declare-fun b!2246924 () Bool)

(declare-fun res!960142 () Bool)

(assert (=> b!2246924 (=> (not res!960142) (not e!1437673))))

(assert (=> b!2246924 (= res!960142 (contains!4560 rules!1750 otherR!12))))

(assert (= (and start!219092 res!960136) b!2246894))

(assert (= (and b!2246894 res!960141) b!2246916))

(assert (= (and b!2246916 res!960148) b!2246897))

(assert (= (and b!2246897 res!960149) b!2246924))

(assert (= (and b!2246924 res!960142) b!2246919))

(assert (= (and b!2246919 res!960133) b!2246918))

(assert (= (and b!2246918 (not res!960132)) b!2246908))

(assert (= (and b!2246918 res!960137) b!2246898))

(assert (= (and b!2246898 (not res!960140)) b!2246910))

(assert (= (and b!2246898 res!960135) b!2246905))

(assert (= (and b!2246905 res!960144) b!2246904))

(assert (= (and b!2246904 res!960134) b!2246907))

(assert (= (and b!2246907 res!960147) b!2246914))

(assert (= (and b!2246907 (not res!960139)) b!2246909))

(assert (= (and b!2246909 (not res!960145)) b!2246901))

(assert (= (and b!2246901 (not res!960138)) b!2246915))

(assert (= (and b!2246915 (not res!960143)) b!2246895))

(assert (= (and b!2246895 (not res!960146)) b!2246920))

(assert (= (and start!219092 ((_ is Cons!26602) input!1722)) b!2246922))

(assert (= b!2246902 b!2246921))

(assert (= start!219092 b!2246902))

(assert (= (and start!219092 ((_ is Cons!26602) suffix!886)) b!2246906))

(assert (= (and start!219092 ((_ is Cons!26602) otherP!12)) b!2246893))

(assert (= b!2246900 b!2246912))

(assert (= b!2246899 b!2246900))

(assert (= (and start!219092 ((_ is Cons!26603) rules!1750)) b!2246899))

(assert (= b!2246917 b!2246923))

(assert (= start!219092 b!2246917))

(assert (= b!2246913 b!2246896))

(assert (= b!2246903 b!2246913))

(assert (= b!2246911 b!2246903))

(assert (= (and start!219092 ((_ is Cons!26604) tokens!456)) b!2246911))

(declare-fun m!2678187 () Bool)

(assert (=> b!2246894 m!2678187))

(declare-fun m!2678189 () Bool)

(assert (=> b!2246914 m!2678189))

(assert (=> b!2246914 m!2678189))

(declare-fun m!2678191 () Bool)

(assert (=> b!2246914 m!2678191))

(assert (=> b!2246914 m!2678191))

(declare-fun m!2678193 () Bool)

(assert (=> b!2246914 m!2678193))

(assert (=> b!2246914 m!2678193))

(declare-fun m!2678195 () Bool)

(assert (=> b!2246914 m!2678195))

(assert (=> b!2246908 m!2678189))

(assert (=> b!2246908 m!2678189))

(assert (=> b!2246908 m!2678191))

(assert (=> b!2246908 m!2678191))

(declare-fun m!2678197 () Bool)

(assert (=> b!2246908 m!2678197))

(declare-fun m!2678199 () Bool)

(assert (=> b!2246908 m!2678199))

(declare-fun m!2678201 () Bool)

(assert (=> b!2246916 m!2678201))

(declare-fun m!2678203 () Bool)

(assert (=> b!2246917 m!2678203))

(declare-fun m!2678205 () Bool)

(assert (=> b!2246917 m!2678205))

(declare-fun m!2678207 () Bool)

(assert (=> b!2246905 m!2678207))

(declare-fun m!2678209 () Bool)

(assert (=> b!2246903 m!2678209))

(declare-fun m!2678211 () Bool)

(assert (=> b!2246911 m!2678211))

(assert (=> b!2246910 m!2678189))

(declare-fun m!2678213 () Bool)

(assert (=> b!2246895 m!2678213))

(declare-fun m!2678215 () Bool)

(assert (=> b!2246900 m!2678215))

(declare-fun m!2678217 () Bool)

(assert (=> b!2246900 m!2678217))

(declare-fun m!2678219 () Bool)

(assert (=> b!2246915 m!2678219))

(declare-fun m!2678221 () Bool)

(assert (=> b!2246915 m!2678221))

(declare-fun m!2678223 () Bool)

(assert (=> b!2246907 m!2678223))

(declare-fun m!2678225 () Bool)

(assert (=> b!2246907 m!2678225))

(declare-fun m!2678227 () Bool)

(assert (=> b!2246902 m!2678227))

(declare-fun m!2678229 () Bool)

(assert (=> b!2246902 m!2678229))

(declare-fun m!2678231 () Bool)

(assert (=> b!2246901 m!2678231))

(declare-fun m!2678233 () Bool)

(assert (=> b!2246901 m!2678233))

(declare-fun m!2678235 () Bool)

(assert (=> b!2246901 m!2678235))

(declare-fun m!2678237 () Bool)

(assert (=> b!2246924 m!2678237))

(declare-fun m!2678239 () Bool)

(assert (=> b!2246913 m!2678239))

(declare-fun m!2678241 () Bool)

(assert (=> b!2246913 m!2678241))

(declare-fun m!2678243 () Bool)

(assert (=> b!2246918 m!2678243))

(declare-fun m!2678245 () Bool)

(assert (=> b!2246909 m!2678245))

(declare-fun m!2678247 () Bool)

(assert (=> b!2246909 m!2678247))

(declare-fun m!2678249 () Bool)

(assert (=> b!2246909 m!2678249))

(declare-fun m!2678251 () Bool)

(assert (=> b!2246909 m!2678251))

(declare-fun m!2678253 () Bool)

(assert (=> b!2246919 m!2678253))

(declare-fun m!2678255 () Bool)

(assert (=> b!2246919 m!2678255))

(declare-fun m!2678257 () Bool)

(assert (=> b!2246919 m!2678257))

(assert (=> b!2246919 m!2678257))

(declare-fun m!2678259 () Bool)

(assert (=> b!2246919 m!2678259))

(declare-fun m!2678261 () Bool)

(assert (=> b!2246897 m!2678261))

(check-sat (not b!2246906) (not b_next!66341) (not b!2246903) b_and!175809 tp_is_empty!10343 (not b!2246902) (not b!2246901) b_and!175813 (not b!2246897) (not b_next!66347) b_and!175803 (not b!2246909) (not b!2246922) b_and!175801 (not b!2246913) (not b!2246918) (not b!2246915) (not b_next!66335) (not b!2246910) (not b!2246911) b_and!175807 (not b!2246908) (not b!2246924) (not b_next!66339) b_and!175815 (not b!2246893) (not b_next!66333) (not b_next!66345) (not b_next!66337) b_and!175805 (not b!2246899) (not b!2246919) (not b!2246894) (not b!2246916) (not b!2246914) (not b!2246907) (not b!2246900) (not b_next!66343) b_and!175811 (not b!2246895) (not b!2246905) (not b!2246917))
(check-sat b_and!175801 (not b_next!66341) b_and!175809 (not b_next!66335) b_and!175807 (not b_next!66339) b_and!175815 b_and!175813 (not b_next!66347) b_and!175803 (not b_next!66343) b_and!175811 (not b_next!66333) (not b_next!66345) (not b_next!66337) b_and!175805)
