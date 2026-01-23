; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220172 () Bool)

(assert start!220172)

(declare-fun b!2255846 () Bool)

(declare-fun b_free!66317 () Bool)

(declare-fun b_next!67021 () Bool)

(assert (=> b!2255846 (= b_free!66317 (not b_next!67021))))

(declare-fun tp!712924 () Bool)

(declare-fun b_and!177009 () Bool)

(assert (=> b!2255846 (= tp!712924 b_and!177009)))

(declare-fun b_free!66319 () Bool)

(declare-fun b_next!67023 () Bool)

(assert (=> b!2255846 (= b_free!66319 (not b_next!67023))))

(declare-fun tp!712931 () Bool)

(declare-fun b_and!177011 () Bool)

(assert (=> b!2255846 (= tp!712931 b_and!177011)))

(declare-fun b!2255835 () Bool)

(declare-fun b_free!66321 () Bool)

(declare-fun b_next!67025 () Bool)

(assert (=> b!2255835 (= b_free!66321 (not b_next!67025))))

(declare-fun tp!712941 () Bool)

(declare-fun b_and!177013 () Bool)

(assert (=> b!2255835 (= tp!712941 b_and!177013)))

(declare-fun b_free!66323 () Bool)

(declare-fun b_next!67027 () Bool)

(assert (=> b!2255835 (= b_free!66323 (not b_next!67027))))

(declare-fun tp!712937 () Bool)

(declare-fun b_and!177015 () Bool)

(assert (=> b!2255835 (= tp!712937 b_and!177015)))

(declare-fun b!2255841 () Bool)

(declare-fun b_free!66325 () Bool)

(declare-fun b_next!67029 () Bool)

(assert (=> b!2255841 (= b_free!66325 (not b_next!67029))))

(declare-fun tp!712927 () Bool)

(declare-fun b_and!177017 () Bool)

(assert (=> b!2255841 (= tp!712927 b_and!177017)))

(declare-fun b_free!66327 () Bool)

(declare-fun b_next!67031 () Bool)

(assert (=> b!2255841 (= b_free!66327 (not b_next!67031))))

(declare-fun tp!712925 () Bool)

(declare-fun b_and!177019 () Bool)

(assert (=> b!2255841 (= tp!712925 b_and!177019)))

(declare-fun b!2255833 () Bool)

(declare-fun b_free!66329 () Bool)

(declare-fun b_next!67033 () Bool)

(assert (=> b!2255833 (= b_free!66329 (not b_next!67033))))

(declare-fun tp!712929 () Bool)

(declare-fun b_and!177021 () Bool)

(assert (=> b!2255833 (= tp!712929 b_and!177021)))

(declare-fun b_free!66331 () Bool)

(declare-fun b_next!67035 () Bool)

(assert (=> b!2255833 (= b_free!66331 (not b_next!67035))))

(declare-fun tp!712934 () Bool)

(declare-fun b_and!177023 () Bool)

(assert (=> b!2255833 (= tp!712934 b_and!177023)))

(declare-fun tp!712926 () Bool)

(declare-fun e!1443904 () Bool)

(declare-fun b!2255831 () Bool)

(declare-fun e!1443920 () Bool)

(declare-datatypes ((List!26843 0))(
  ( (Nil!26749) (Cons!26749 (h!32150 (_ BitVec 16)) (t!201263 List!26843)) )
))
(declare-datatypes ((TokenValue!4409 0))(
  ( (FloatLiteralValue!8818 (text!31308 List!26843)) (TokenValueExt!4408 (__x!17878 Int)) (Broken!22045 (value!134833 List!26843)) (Object!4502) (End!4409) (Def!4409) (Underscore!4409) (Match!4409) (Else!4409) (Error!4409) (Case!4409) (If!4409) (Extends!4409) (Abstract!4409) (Class!4409) (Val!4409) (DelimiterValue!8818 (del!4469 List!26843)) (KeywordValue!4415 (value!134834 List!26843)) (CommentValue!8818 (value!134835 List!26843)) (WhitespaceValue!8818 (value!134836 List!26843)) (IndentationValue!4409 (value!134837 List!26843)) (String!29148) (Int32!4409) (Broken!22046 (value!134838 List!26843)) (Boolean!4410) (Unit!39667) (OperatorValue!4412 (op!4469 List!26843)) (IdentifierValue!8818 (value!134839 List!26843)) (IdentifierValue!8819 (value!134840 List!26843)) (WhitespaceValue!8819 (value!134841 List!26843)) (True!8818) (False!8818) (Broken!22047 (value!134842 List!26843)) (Broken!22048 (value!134843 List!26843)) (True!8819) (RightBrace!4409) (RightBracket!4409) (Colon!4409) (Null!4409) (Comma!4409) (LeftBracket!4409) (False!8819) (LeftBrace!4409) (ImaginaryLiteralValue!4409 (text!31309 List!26843)) (StringLiteralValue!13227 (value!134844 List!26843)) (EOFValue!4409 (value!134845 List!26843)) (IdentValue!4409 (value!134846 List!26843)) (DelimiterValue!8819 (value!134847 List!26843)) (DedentValue!4409 (value!134848 List!26843)) (NewLineValue!4409 (value!134849 List!26843)) (IntegerValue!13227 (value!134850 (_ BitVec 32)) (text!31310 List!26843)) (IntegerValue!13228 (value!134851 Int) (text!31311 List!26843)) (Times!4409) (Or!4409) (Equal!4409) (Minus!4409) (Broken!22049 (value!134852 List!26843)) (And!4409) (Div!4409) (LessEqual!4409) (Mod!4409) (Concat!11004) (Not!4409) (Plus!4409) (SpaceValue!4409 (value!134853 List!26843)) (IntegerValue!13229 (value!134854 Int) (text!31312 List!26843)) (StringLiteralValue!13228 (text!31313 List!26843)) (FloatLiteralValue!8819 (text!31314 List!26843)) (BytesLiteralValue!4409 (value!134855 List!26843)) (CommentValue!8819 (value!134856 List!26843)) (StringLiteralValue!13229 (value!134857 List!26843)) (ErrorTokenValue!4409 (msg!4470 List!26843)) )
))
(declare-datatypes ((C!13336 0))(
  ( (C!13337 (val!7716 Int)) )
))
(declare-datatypes ((List!26844 0))(
  ( (Nil!26750) (Cons!26750 (h!32151 C!13336) (t!201264 List!26844)) )
))
(declare-datatypes ((IArray!17289 0))(
  ( (IArray!17290 (innerList!8702 List!26844)) )
))
(declare-datatypes ((Conc!8642 0))(
  ( (Node!8642 (left!20318 Conc!8642) (right!20648 Conc!8642) (csize!17514 Int) (cheight!8853 Int)) (Leaf!12751 (xs!11584 IArray!17289) (csize!17515 Int)) (Empty!8642) )
))
(declare-datatypes ((BalanceConc!17012 0))(
  ( (BalanceConc!17013 (c!358562 Conc!8642)) )
))
(declare-datatypes ((Regex!6595 0))(
  ( (ElementMatch!6595 (c!358563 C!13336)) (Concat!11005 (regOne!13702 Regex!6595) (regTwo!13702 Regex!6595)) (EmptyExpr!6595) (Star!6595 (reg!6924 Regex!6595)) (EmptyLang!6595) (Union!6595 (regOne!13703 Regex!6595) (regTwo!13703 Regex!6595)) )
))
(declare-datatypes ((String!29149 0))(
  ( (String!29150 (value!134858 String)) )
))
(declare-datatypes ((TokenValueInjection!8358 0))(
  ( (TokenValueInjection!8359 (toValue!5989 Int) (toChars!5848 Int)) )
))
(declare-datatypes ((Rule!8294 0))(
  ( (Rule!8295 (regex!4247 Regex!6595) (tag!4737 String!29149) (isSeparator!4247 Bool) (transformation!4247 TokenValueInjection!8358)) )
))
(declare-datatypes ((List!26845 0))(
  ( (Nil!26751) (Cons!26751 (h!32152 Rule!8294) (t!201265 List!26845)) )
))
(declare-fun rules!1750 () List!26845)

(declare-fun inv!36282 (String!29149) Bool)

(declare-fun inv!36285 (TokenValueInjection!8358) Bool)

(assert (=> b!2255831 (= e!1443904 (and tp!712926 (inv!36282 (tag!4737 (h!32152 rules!1750))) (inv!36285 (transformation!4247 (h!32152 rules!1750))) e!1443920))))

(declare-fun b!2255832 () Bool)

(declare-fun e!1443912 () Bool)

(declare-fun e!1443923 () Bool)

(assert (=> b!2255832 (= e!1443912 e!1443923)))

(declare-fun res!964233 () Bool)

(assert (=> b!2255832 (=> res!964233 e!1443923)))

(declare-fun lt!838519 () Int)

(declare-datatypes ((Token!7972 0))(
  ( (Token!7973 (value!134859 TokenValue!4409) (rule!6553 Rule!8294) (size!20943 Int) (originalCharacters!5017 List!26844)) )
))
(declare-datatypes ((List!26846 0))(
  ( (Nil!26752) (Cons!26752 (h!32153 Token!7972) (t!201266 List!26846)) )
))
(declare-fun tokens!456 () List!26846)

(declare-fun lt!838540 () Int)

(get-info :version)

(assert (=> b!2255832 (= res!964233 (or (<= lt!838519 lt!838540) ((_ is Nil!26752) tokens!456)))))

(declare-fun otherR!12 () Rule!8294)

(declare-fun getIndex!268 (List!26845 Rule!8294) Int)

(assert (=> b!2255832 (= lt!838540 (getIndex!268 rules!1750 otherR!12))))

(declare-fun r!2363 () Rule!8294)

(assert (=> b!2255832 (= lt!838519 (getIndex!268 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3844 0))(
  ( (LexerInterfaceExt!3841 (__x!17879 Int)) (Lexer!3842) )
))
(declare-fun thiss!16613 () LexerInterface!3844)

(declare-fun ruleValid!1339 (LexerInterface!3844 Rule!8294) Bool)

(assert (=> b!2255832 (ruleValid!1339 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39668 0))(
  ( (Unit!39669) )
))
(declare-fun lt!838534 () Unit!39668)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!746 (LexerInterface!3844 Rule!8294 List!26845) Unit!39668)

(assert (=> b!2255832 (= lt!838534 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!746 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1443908 () Bool)

(assert (=> b!2255833 (= e!1443908 (and tp!712929 tp!712934))))

(declare-fun b!2255834 () Bool)

(declare-fun res!964228 () Bool)

(declare-fun e!1443909 () Bool)

(assert (=> b!2255834 (=> (not res!964228) (not e!1443909))))

(assert (=> b!2255834 (= res!964228 (not (= r!2363 otherR!12)))))

(assert (=> b!2255835 (= e!1443920 (and tp!712941 tp!712937))))

(declare-fun b!2255836 () Bool)

(declare-fun e!1443927 () Bool)

(declare-fun otherP!12 () List!26844)

(declare-fun size!20944 (BalanceConc!17012) Int)

(declare-fun charsOf!2635 (Token!7972) BalanceConc!17012)

(declare-fun head!4820 (List!26846) Token!7972)

(declare-fun size!20945 (List!26844) Int)

(assert (=> b!2255836 (= e!1443927 (<= (size!20944 (charsOf!2635 (head!4820 tokens!456))) (size!20945 otherP!12)))))

(declare-fun b!2255837 () Bool)

(declare-fun res!964229 () Bool)

(declare-fun e!1443898 () Bool)

(assert (=> b!2255837 (=> (not res!964229) (not e!1443898))))

(declare-fun rulesInvariant!3346 (LexerInterface!3844 List!26845) Bool)

(assert (=> b!2255837 (= res!964229 (rulesInvariant!3346 thiss!16613 rules!1750))))

(declare-fun b!2255838 () Bool)

(declare-fun e!1443903 () Bool)

(declare-fun tp_is_empty!10411 () Bool)

(declare-fun tp!712939 () Bool)

(assert (=> b!2255838 (= e!1443903 (and tp_is_empty!10411 tp!712939))))

(declare-fun e!1443917 () Bool)

(declare-fun tp!712940 () Bool)

(declare-fun b!2255839 () Bool)

(assert (=> b!2255839 (= e!1443917 (and tp!712940 (inv!36282 (tag!4737 otherR!12)) (inv!36285 (transformation!4247 otherR!12)) e!1443908))))

(declare-fun b!2255840 () Bool)

(declare-fun e!1443924 () Bool)

(declare-fun tp!712935 () Bool)

(declare-fun e!1443928 () Bool)

(assert (=> b!2255840 (= e!1443924 (and tp!712935 (inv!36282 (tag!4737 (rule!6553 (h!32153 tokens!456)))) (inv!36285 (transformation!4247 (rule!6553 (h!32153 tokens!456)))) e!1443928))))

(assert (=> b!2255841 (= e!1443928 (and tp!712927 tp!712925))))

(declare-fun b!2255842 () Bool)

(declare-fun e!1443929 () Bool)

(declare-fun tp!712933 () Bool)

(assert (=> b!2255842 (= e!1443929 (and tp_is_empty!10411 tp!712933))))

(declare-fun b!2255843 () Bool)

(declare-fun e!1443907 () Bool)

(assert (=> b!2255843 (= e!1443898 e!1443907)))

(declare-fun res!964226 () Bool)

(assert (=> b!2255843 (=> (not res!964226) (not e!1443907))))

(declare-datatypes ((IArray!17291 0))(
  ( (IArray!17292 (innerList!8703 List!26846)) )
))
(declare-datatypes ((Conc!8643 0))(
  ( (Node!8643 (left!20319 Conc!8643) (right!20649 Conc!8643) (csize!17516 Int) (cheight!8854 Int)) (Leaf!12752 (xs!11585 IArray!17291) (csize!17517 Int)) (Empty!8643) )
))
(declare-datatypes ((BalanceConc!17014 0))(
  ( (BalanceConc!17015 (c!358564 Conc!8643)) )
))
(declare-datatypes ((tuple2!26294 0))(
  ( (tuple2!26295 (_1!15657 BalanceConc!17014) (_2!15657 BalanceConc!17012)) )
))
(declare-fun lt!838537 () tuple2!26294)

(declare-fun suffix!886 () List!26844)

(declare-datatypes ((tuple2!26296 0))(
  ( (tuple2!26297 (_1!15658 List!26846) (_2!15658 List!26844)) )
))
(declare-fun list!10289 (BalanceConc!17014) List!26846)

(declare-fun list!10290 (BalanceConc!17012) List!26844)

(assert (=> b!2255843 (= res!964226 (= (tuple2!26297 (list!10289 (_1!15657 lt!838537)) (list!10290 (_2!15657 lt!838537))) (tuple2!26297 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26844)

(declare-fun lex!1683 (LexerInterface!3844 List!26845 BalanceConc!17012) tuple2!26294)

(declare-fun seqFromList!2951 (List!26844) BalanceConc!17012)

(assert (=> b!2255843 (= lt!838537 (lex!1683 thiss!16613 rules!1750 (seqFromList!2951 input!1722)))))

(declare-fun b!2255844 () Bool)

(declare-fun res!964230 () Bool)

(assert (=> b!2255844 (=> (not res!964230) (not e!1443909))))

(declare-fun e!1443925 () Bool)

(assert (=> b!2255844 (= res!964230 e!1443925)))

(declare-fun res!964217 () Bool)

(assert (=> b!2255844 (=> res!964217 e!1443925)))

(declare-fun lt!838525 () Bool)

(assert (=> b!2255844 (= res!964217 lt!838525)))

(declare-fun b!2255845 () Bool)

(declare-fun res!964221 () Bool)

(assert (=> b!2255845 (=> (not res!964221) (not e!1443898))))

(declare-fun contains!4599 (List!26845 Rule!8294) Bool)

(assert (=> b!2255845 (= res!964221 (contains!4599 rules!1750 otherR!12))))

(declare-fun e!1443921 () Bool)

(assert (=> b!2255846 (= e!1443921 (and tp!712924 tp!712931))))

(declare-fun b!2255847 () Bool)

(declare-fun res!964235 () Bool)

(declare-fun e!1443926 () Bool)

(assert (=> b!2255847 (=> res!964235 e!1443926)))

(declare-fun size!20946 (List!26846) Int)

(assert (=> b!2255847 (= res!964235 (<= (size!20946 tokens!456) 0))))

(declare-fun b!2255848 () Bool)

(declare-fun e!1443899 () Bool)

(assert (=> b!2255848 (= e!1443923 e!1443899)))

(declare-fun res!964236 () Bool)

(assert (=> b!2255848 (=> res!964236 e!1443899)))

(declare-datatypes ((tuple2!26298 0))(
  ( (tuple2!26299 (_1!15659 Token!7972) (_2!15659 List!26844)) )
))
(declare-fun lt!838520 () tuple2!26298)

(assert (=> b!2255848 (= res!964236 (not (= (h!32153 tokens!456) (_1!15659 lt!838520))))))

(declare-datatypes ((Option!5223 0))(
  ( (None!5222) (Some!5222 (v!30248 tuple2!26298)) )
))
(declare-fun lt!838535 () Option!5223)

(declare-fun get!8078 (Option!5223) tuple2!26298)

(assert (=> b!2255848 (= lt!838520 (get!8078 lt!838535))))

(declare-fun maxPrefix!2132 (LexerInterface!3844 List!26845 List!26844) Option!5223)

(assert (=> b!2255848 (= lt!838535 (maxPrefix!2132 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2255849 () Bool)

(declare-fun e!1443922 () Bool)

(declare-fun e!1443915 () Bool)

(assert (=> b!2255849 (= e!1443922 e!1443915)))

(declare-fun res!964215 () Bool)

(assert (=> b!2255849 (=> res!964215 e!1443915)))

(declare-fun lt!838530 () Option!5223)

(declare-fun lt!838531 () Int)

(declare-fun lt!838532 () Int)

(declare-fun lt!838526 () Option!5223)

(assert (=> b!2255849 (= res!964215 (or (not (= lt!838526 lt!838530)) (<= lt!838531 lt!838532) (not (= lt!838535 lt!838530))))))

(declare-fun lt!838522 () Token!7972)

(declare-fun lt!838538 () List!26844)

(assert (=> b!2255849 (= lt!838530 (Some!5222 (tuple2!26299 lt!838522 lt!838538)))))

(declare-fun isPrefix!2237 (List!26844 List!26844) Bool)

(assert (=> b!2255849 (isPrefix!2237 input!1722 input!1722)))

(declare-fun lt!838523 () Unit!39668)

(declare-fun lemmaIsPrefixRefl!1443 (List!26844 List!26844) Unit!39668)

(assert (=> b!2255849 (= lt!838523 (lemmaIsPrefixRefl!1443 input!1722 input!1722))))

(declare-fun lt!838527 () Unit!39668)

(declare-fun lt!838533 () BalanceConc!17012)

(declare-fun lemmaSemiInverse!1012 (TokenValueInjection!8358 BalanceConc!17012) Unit!39668)

(assert (=> b!2255849 (= lt!838527 (lemmaSemiInverse!1012 (transformation!4247 r!2363) lt!838533))))

(declare-fun b!2255850 () Bool)

(assert (=> b!2255850 (= e!1443909 (not e!1443912))))

(declare-fun res!964225 () Bool)

(assert (=> b!2255850 (=> res!964225 e!1443912)))

(declare-fun e!1443905 () Bool)

(assert (=> b!2255850 (= res!964225 e!1443905)))

(declare-fun res!964219 () Bool)

(assert (=> b!2255850 (=> (not res!964219) (not e!1443905))))

(assert (=> b!2255850 (= res!964219 (not lt!838525))))

(assert (=> b!2255850 (ruleValid!1339 thiss!16613 r!2363)))

(declare-fun lt!838521 () Unit!39668)

(assert (=> b!2255850 (= lt!838521 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!746 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2255851 () Bool)

(declare-fun res!964234 () Bool)

(assert (=> b!2255851 (=> (not res!964234) (not e!1443909))))

(assert (=> b!2255851 (= res!964234 (isPrefix!2237 otherP!12 input!1722))))

(declare-fun b!2255852 () Bool)

(declare-fun e!1443914 () Bool)

(assert (=> b!2255852 (= e!1443914 e!1443922)))

(declare-fun res!964224 () Bool)

(assert (=> b!2255852 (=> res!964224 e!1443922)))

(declare-fun lt!838536 () List!26844)

(assert (=> b!2255852 (= res!964224 (not (isPrefix!2237 lt!838536 input!1722)))))

(assert (=> b!2255852 (= lt!838526 (Some!5222 (tuple2!26299 lt!838522 (_2!15659 lt!838520))))))

(declare-fun maxPrefixOneRule!1324 (LexerInterface!3844 Rule!8294 List!26844) Option!5223)

(assert (=> b!2255852 (= lt!838526 (maxPrefixOneRule!1324 thiss!16613 r!2363 input!1722))))

(declare-fun apply!6567 (TokenValueInjection!8358 BalanceConc!17012) TokenValue!4409)

(assert (=> b!2255852 (= lt!838522 (Token!7973 (apply!6567 (transformation!4247 r!2363) lt!838533) r!2363 lt!838532 lt!838536))))

(assert (=> b!2255852 (= lt!838533 (seqFromList!2951 lt!838536))))

(declare-fun lt!838539 () Unit!39668)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!565 (LexerInterface!3844 List!26845 List!26844 List!26844 List!26844 Rule!8294) Unit!39668)

(assert (=> b!2255852 (= lt!838539 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!565 thiss!16613 rules!1750 lt!838536 input!1722 (_2!15659 lt!838520) r!2363))))

(declare-fun b!2255853 () Bool)

(declare-fun matchR!2856 (Regex!6595 List!26844) Bool)

(assert (=> b!2255853 (= e!1443905 (not (matchR!2856 (regex!4247 r!2363) (list!10290 (charsOf!2635 (head!4820 tokens!456))))))))

(declare-fun b!2255854 () Bool)

(assert (=> b!2255854 (= e!1443899 e!1443914)))

(declare-fun res!964220 () Bool)

(assert (=> b!2255854 (=> res!964220 e!1443914)))

(assert (=> b!2255854 (= res!964220 (= lt!838531 lt!838532))))

(assert (=> b!2255854 (= lt!838532 (size!20945 lt!838536))))

(assert (=> b!2255854 (= lt!838531 (size!20945 otherP!12))))

(assert (=> b!2255854 (= (_2!15659 lt!838520) lt!838538)))

(declare-fun lt!838529 () Unit!39668)

(declare-fun lemmaSamePrefixThenSameSuffix!992 (List!26844 List!26844 List!26844 List!26844 List!26844) Unit!39668)

(assert (=> b!2255854 (= lt!838529 (lemmaSamePrefixThenSameSuffix!992 lt!838536 (_2!15659 lt!838520) lt!838536 lt!838538 input!1722))))

(declare-fun getSuffix!1072 (List!26844 List!26844) List!26844)

(assert (=> b!2255854 (= lt!838538 (getSuffix!1072 input!1722 lt!838536))))

(declare-fun ++!6519 (List!26844 List!26844) List!26844)

(assert (=> b!2255854 (isPrefix!2237 lt!838536 (++!6519 lt!838536 (_2!15659 lt!838520)))))

(declare-fun lt!838528 () Unit!39668)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1482 (List!26844 List!26844) Unit!39668)

(assert (=> b!2255854 (= lt!838528 (lemmaConcatTwoListThenFirstIsPrefix!1482 lt!838536 (_2!15659 lt!838520)))))

(assert (=> b!2255854 (= lt!838536 (list!10290 (charsOf!2635 (h!32153 tokens!456))))))

(declare-fun e!1443918 () Bool)

(declare-fun b!2255855 () Bool)

(declare-fun tp!712932 () Bool)

(declare-fun inv!21 (TokenValue!4409) Bool)

(assert (=> b!2255855 (= e!1443918 (and (inv!21 (value!134859 (h!32153 tokens!456))) e!1443924 tp!712932))))

(declare-fun b!2255856 () Bool)

(declare-fun res!964232 () Bool)

(assert (=> b!2255856 (=> res!964232 e!1443922)))

(assert (=> b!2255856 (= res!964232 (not (matchR!2856 (regex!4247 r!2363) lt!838536)))))

(declare-fun b!2255857 () Bool)

(declare-fun res!964231 () Bool)

(assert (=> b!2255857 (=> (not res!964231) (not e!1443898))))

(assert (=> b!2255857 (= res!964231 (contains!4599 rules!1750 r!2363))))

(declare-fun b!2255858 () Bool)

(declare-fun e!1443902 () Bool)

(declare-fun tp!712938 () Bool)

(declare-fun inv!36286 (Token!7972) Bool)

(assert (=> b!2255858 (= e!1443902 (and (inv!36286 (h!32153 tokens!456)) e!1443918 tp!712938))))

(declare-fun b!2255859 () Bool)

(assert (=> b!2255859 (= e!1443925 (= (rule!6553 (head!4820 tokens!456)) r!2363))))

(declare-fun b!2255860 () Bool)

(declare-fun e!1443900 () Bool)

(declare-fun tp!712936 () Bool)

(assert (=> b!2255860 (= e!1443900 (and tp_is_empty!10411 tp!712936))))

(declare-fun res!964227 () Bool)

(assert (=> start!220172 (=> (not res!964227) (not e!1443898))))

(assert (=> start!220172 (= res!964227 ((_ is Lexer!3842) thiss!16613))))

(assert (=> start!220172 e!1443898))

(assert (=> start!220172 true))

(assert (=> start!220172 e!1443929))

(assert (=> start!220172 e!1443917))

(assert (=> start!220172 e!1443900))

(assert (=> start!220172 e!1443903))

(declare-fun e!1443906 () Bool)

(assert (=> start!220172 e!1443906))

(declare-fun e!1443910 () Bool)

(assert (=> start!220172 e!1443910))

(assert (=> start!220172 e!1443902))

(declare-fun b!2255861 () Bool)

(declare-fun tp!712930 () Bool)

(assert (=> b!2255861 (= e!1443906 (and e!1443904 tp!712930))))

(declare-fun b!2255862 () Bool)

(assert (=> b!2255862 (= e!1443907 e!1443909)))

(declare-fun res!964223 () Bool)

(assert (=> b!2255862 (=> (not res!964223) (not e!1443909))))

(assert (=> b!2255862 (= res!964223 e!1443927)))

(declare-fun res!964216 () Bool)

(assert (=> b!2255862 (=> res!964216 e!1443927)))

(assert (=> b!2255862 (= res!964216 lt!838525)))

(declare-fun isEmpty!15101 (List!26846) Bool)

(assert (=> b!2255862 (= lt!838525 (isEmpty!15101 tokens!456))))

(declare-fun b!2255863 () Bool)

(declare-fun res!964222 () Bool)

(assert (=> b!2255863 (=> (not res!964222) (not e!1443898))))

(declare-fun isEmpty!15102 (List!26845) Bool)

(assert (=> b!2255863 (= res!964222 (not (isEmpty!15102 rules!1750)))))

(declare-fun b!2255864 () Bool)

(assert (=> b!2255864 (= e!1443926 (not (= tokens!456 Nil!26752)))))

(declare-fun b!2255865 () Bool)

(assert (=> b!2255865 (= e!1443915 e!1443926)))

(declare-fun res!964218 () Bool)

(assert (=> b!2255865 (=> res!964218 e!1443926)))

(assert (=> b!2255865 (= res!964218 (< lt!838540 lt!838519))))

(assert (=> b!2255865 (not (matchR!2856 (regex!4247 otherR!12) otherP!12))))

(declare-fun lt!838524 () Unit!39668)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!274 (LexerInterface!3844 List!26845 Rule!8294 List!26844 List!26844 List!26844 Rule!8294) Unit!39668)

(assert (=> b!2255865 (= lt!838524 (lemmaMaxPrefixOutputsMaxPrefix!274 thiss!16613 rules!1750 r!2363 lt!838536 input!1722 otherP!12 otherR!12))))

(declare-fun b!2255866 () Bool)

(declare-fun tp!712928 () Bool)

(assert (=> b!2255866 (= e!1443910 (and tp!712928 (inv!36282 (tag!4737 r!2363)) (inv!36285 (transformation!4247 r!2363)) e!1443921))))

(assert (= (and start!220172 res!964227) b!2255863))

(assert (= (and b!2255863 res!964222) b!2255837))

(assert (= (and b!2255837 res!964229) b!2255857))

(assert (= (and b!2255857 res!964231) b!2255845))

(assert (= (and b!2255845 res!964221) b!2255843))

(assert (= (and b!2255843 res!964226) b!2255862))

(assert (= (and b!2255862 (not res!964216)) b!2255836))

(assert (= (and b!2255862 res!964223) b!2255844))

(assert (= (and b!2255844 (not res!964217)) b!2255859))

(assert (= (and b!2255844 res!964230) b!2255851))

(assert (= (and b!2255851 res!964234) b!2255834))

(assert (= (and b!2255834 res!964228) b!2255850))

(assert (= (and b!2255850 res!964219) b!2255853))

(assert (= (and b!2255850 (not res!964225)) b!2255832))

(assert (= (and b!2255832 (not res!964233)) b!2255848))

(assert (= (and b!2255848 (not res!964236)) b!2255854))

(assert (= (and b!2255854 (not res!964220)) b!2255852))

(assert (= (and b!2255852 (not res!964224)) b!2255856))

(assert (= (and b!2255856 (not res!964232)) b!2255849))

(assert (= (and b!2255849 (not res!964215)) b!2255865))

(assert (= (and b!2255865 (not res!964218)) b!2255847))

(assert (= (and b!2255847 (not res!964235)) b!2255864))

(assert (= (and start!220172 ((_ is Cons!26750) input!1722)) b!2255842))

(assert (= b!2255839 b!2255833))

(assert (= start!220172 b!2255839))

(assert (= (and start!220172 ((_ is Cons!26750) suffix!886)) b!2255860))

(assert (= (and start!220172 ((_ is Cons!26750) otherP!12)) b!2255838))

(assert (= b!2255831 b!2255835))

(assert (= b!2255861 b!2255831))

(assert (= (and start!220172 ((_ is Cons!26751) rules!1750)) b!2255861))

(assert (= b!2255866 b!2255846))

(assert (= start!220172 b!2255866))

(assert (= b!2255840 b!2255841))

(assert (= b!2255855 b!2255840))

(assert (= b!2255858 b!2255855))

(assert (= (and start!220172 ((_ is Cons!26752) tokens!456)) b!2255858))

(declare-fun m!2686295 () Bool)

(assert (=> b!2255865 m!2686295))

(declare-fun m!2686297 () Bool)

(assert (=> b!2255865 m!2686297))

(declare-fun m!2686299 () Bool)

(assert (=> b!2255855 m!2686299))

(declare-fun m!2686301 () Bool)

(assert (=> b!2255843 m!2686301))

(declare-fun m!2686303 () Bool)

(assert (=> b!2255843 m!2686303))

(declare-fun m!2686305 () Bool)

(assert (=> b!2255843 m!2686305))

(assert (=> b!2255843 m!2686305))

(declare-fun m!2686307 () Bool)

(assert (=> b!2255843 m!2686307))

(declare-fun m!2686309 () Bool)

(assert (=> b!2255831 m!2686309))

(declare-fun m!2686311 () Bool)

(assert (=> b!2255831 m!2686311))

(declare-fun m!2686313 () Bool)

(assert (=> b!2255840 m!2686313))

(declare-fun m!2686315 () Bool)

(assert (=> b!2255840 m!2686315))

(declare-fun m!2686317 () Bool)

(assert (=> b!2255863 m!2686317))

(declare-fun m!2686319 () Bool)

(assert (=> b!2255852 m!2686319))

(declare-fun m!2686321 () Bool)

(assert (=> b!2255852 m!2686321))

(declare-fun m!2686323 () Bool)

(assert (=> b!2255852 m!2686323))

(declare-fun m!2686325 () Bool)

(assert (=> b!2255852 m!2686325))

(declare-fun m!2686327 () Bool)

(assert (=> b!2255852 m!2686327))

(declare-fun m!2686329 () Bool)

(assert (=> b!2255832 m!2686329))

(declare-fun m!2686331 () Bool)

(assert (=> b!2255832 m!2686331))

(declare-fun m!2686333 () Bool)

(assert (=> b!2255832 m!2686333))

(declare-fun m!2686335 () Bool)

(assert (=> b!2255832 m!2686335))

(declare-fun m!2686337 () Bool)

(assert (=> b!2255866 m!2686337))

(declare-fun m!2686339 () Bool)

(assert (=> b!2255866 m!2686339))

(declare-fun m!2686341 () Bool)

(assert (=> b!2255836 m!2686341))

(assert (=> b!2255836 m!2686341))

(declare-fun m!2686343 () Bool)

(assert (=> b!2255836 m!2686343))

(assert (=> b!2255836 m!2686343))

(declare-fun m!2686345 () Bool)

(assert (=> b!2255836 m!2686345))

(declare-fun m!2686347 () Bool)

(assert (=> b!2255836 m!2686347))

(declare-fun m!2686349 () Bool)

(assert (=> b!2255839 m!2686349))

(declare-fun m!2686351 () Bool)

(assert (=> b!2255839 m!2686351))

(declare-fun m!2686353 () Bool)

(assert (=> b!2255837 m!2686353))

(declare-fun m!2686355 () Bool)

(assert (=> b!2255850 m!2686355))

(declare-fun m!2686357 () Bool)

(assert (=> b!2255850 m!2686357))

(declare-fun m!2686359 () Bool)

(assert (=> b!2255847 m!2686359))

(declare-fun m!2686361 () Bool)

(assert (=> b!2255845 m!2686361))

(declare-fun m!2686363 () Bool)

(assert (=> b!2255848 m!2686363))

(declare-fun m!2686365 () Bool)

(assert (=> b!2255848 m!2686365))

(declare-fun m!2686367 () Bool)

(assert (=> b!2255858 m!2686367))

(declare-fun m!2686369 () Bool)

(assert (=> b!2255854 m!2686369))

(declare-fun m!2686371 () Bool)

(assert (=> b!2255854 m!2686371))

(declare-fun m!2686373 () Bool)

(assert (=> b!2255854 m!2686373))

(assert (=> b!2255854 m!2686347))

(declare-fun m!2686375 () Bool)

(assert (=> b!2255854 m!2686375))

(declare-fun m!2686377 () Bool)

(assert (=> b!2255854 m!2686377))

(declare-fun m!2686379 () Bool)

(assert (=> b!2255854 m!2686379))

(declare-fun m!2686381 () Bool)

(assert (=> b!2255854 m!2686381))

(assert (=> b!2255854 m!2686369))

(assert (=> b!2255854 m!2686379))

(declare-fun m!2686383 () Bool)

(assert (=> b!2255854 m!2686383))

(assert (=> b!2255853 m!2686341))

(assert (=> b!2255853 m!2686341))

(assert (=> b!2255853 m!2686343))

(assert (=> b!2255853 m!2686343))

(declare-fun m!2686385 () Bool)

(assert (=> b!2255853 m!2686385))

(assert (=> b!2255853 m!2686385))

(declare-fun m!2686387 () Bool)

(assert (=> b!2255853 m!2686387))

(declare-fun m!2686389 () Bool)

(assert (=> b!2255856 m!2686389))

(declare-fun m!2686391 () Bool)

(assert (=> b!2255851 m!2686391))

(declare-fun m!2686393 () Bool)

(assert (=> b!2255857 m!2686393))

(assert (=> b!2255859 m!2686341))

(declare-fun m!2686395 () Bool)

(assert (=> b!2255849 m!2686395))

(declare-fun m!2686397 () Bool)

(assert (=> b!2255849 m!2686397))

(declare-fun m!2686399 () Bool)

(assert (=> b!2255849 m!2686399))

(declare-fun m!2686401 () Bool)

(assert (=> b!2255862 m!2686401))

(check-sat (not b!2255865) (not b!2255858) (not b!2255840) b_and!177023 (not b!2255855) (not b!2255837) (not b!2255849) b_and!177017 (not b!2255863) (not b!2255853) (not b!2255843) (not b!2255852) (not b!2255866) (not b!2255832) (not b_next!67029) (not b_next!67025) (not b!2255838) b_and!177013 (not b!2255848) b_and!177015 (not b_next!67035) (not b!2255839) (not b_next!67027) (not b_next!67021) (not b!2255857) (not b!2255847) (not b!2255842) b_and!177009 (not b!2255856) (not b!2255845) (not b!2255862) b_and!177011 (not b!2255854) (not b!2255831) (not b!2255861) (not b!2255859) (not b_next!67031) (not b_next!67033) b_and!177021 tp_is_empty!10411 (not b!2255860) (not b!2255836) (not b!2255851) b_and!177019 (not b!2255850) (not b_next!67023))
(check-sat b_and!177013 b_and!177023 b_and!177009 b_and!177011 b_and!177017 (not b_next!67029) (not b_next!67025) b_and!177015 (not b_next!67035) (not b_next!67027) (not b_next!67021) (not b_next!67031) (not b_next!67033) b_and!177021 b_and!177019 (not b_next!67023))
