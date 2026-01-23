; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225984 () Bool)

(assert start!225984)

(declare-fun b!2298946 () Bool)

(declare-fun b_free!69309 () Bool)

(declare-fun b_next!70013 () Bool)

(assert (=> b!2298946 (= b_free!69309 (not b_next!70013))))

(declare-fun tp!729247 () Bool)

(declare-fun b_and!182993 () Bool)

(assert (=> b!2298946 (= tp!729247 b_and!182993)))

(declare-fun b_free!69311 () Bool)

(declare-fun b_next!70015 () Bool)

(assert (=> b!2298946 (= b_free!69311 (not b_next!70015))))

(declare-fun tp!729249 () Bool)

(declare-fun b_and!182995 () Bool)

(assert (=> b!2298946 (= tp!729249 b_and!182995)))

(declare-fun b!2298961 () Bool)

(declare-fun b_free!69313 () Bool)

(declare-fun b_next!70017 () Bool)

(assert (=> b!2298961 (= b_free!69313 (not b_next!70017))))

(declare-fun tp!729252 () Bool)

(declare-fun b_and!182997 () Bool)

(assert (=> b!2298961 (= tp!729252 b_and!182997)))

(declare-fun b_free!69315 () Bool)

(declare-fun b_next!70019 () Bool)

(assert (=> b!2298961 (= b_free!69315 (not b_next!70019))))

(declare-fun tp!729245 () Bool)

(declare-fun b_and!182999 () Bool)

(assert (=> b!2298961 (= tp!729245 b_and!182999)))

(declare-fun b!2298947 () Bool)

(declare-fun b_free!69317 () Bool)

(declare-fun b_next!70021 () Bool)

(assert (=> b!2298947 (= b_free!69317 (not b_next!70021))))

(declare-fun tp!729240 () Bool)

(declare-fun b_and!183001 () Bool)

(assert (=> b!2298947 (= tp!729240 b_and!183001)))

(declare-fun b_free!69319 () Bool)

(declare-fun b_next!70023 () Bool)

(assert (=> b!2298947 (= b_free!69319 (not b_next!70023))))

(declare-fun tp!729248 () Bool)

(declare-fun b_and!183003 () Bool)

(assert (=> b!2298947 (= tp!729248 b_and!183003)))

(declare-fun b!2298963 () Bool)

(declare-fun b_free!69321 () Bool)

(declare-fun b_next!70025 () Bool)

(assert (=> b!2298963 (= b_free!69321 (not b_next!70025))))

(declare-fun tp!729242 () Bool)

(declare-fun b_and!183005 () Bool)

(assert (=> b!2298963 (= tp!729242 b_and!183005)))

(declare-fun b_free!69323 () Bool)

(declare-fun b_next!70027 () Bool)

(assert (=> b!2298963 (= b_free!69323 (not b_next!70027))))

(declare-fun tp!729250 () Bool)

(declare-fun b_and!183007 () Bool)

(assert (=> b!2298963 (= tp!729250 b_and!183007)))

(declare-fun b!2298941 () Bool)

(declare-fun res!982866 () Bool)

(declare-fun e!1473215 () Bool)

(assert (=> b!2298941 (=> (not res!982866) (not e!1473215))))

(declare-datatypes ((List!27461 0))(
  ( (Nil!27367) (Cons!27367 (h!32768 (_ BitVec 16)) (t!205625 List!27461)) )
))
(declare-datatypes ((TokenValue!4547 0))(
  ( (FloatLiteralValue!9094 (text!32274 List!27461)) (TokenValueExt!4546 (__x!18154 Int)) (Broken!22735 (value!138766 List!27461)) (Object!4640) (End!4547) (Def!4547) (Underscore!4547) (Match!4547) (Else!4547) (Error!4547) (Case!4547) (If!4547) (Extends!4547) (Abstract!4547) (Class!4547) (Val!4547) (DelimiterValue!9094 (del!4607 List!27461)) (KeywordValue!4553 (value!138767 List!27461)) (CommentValue!9094 (value!138768 List!27461)) (WhitespaceValue!9094 (value!138769 List!27461)) (IndentationValue!4547 (value!138770 List!27461)) (String!29838) (Int32!4547) (Broken!22736 (value!138771 List!27461)) (Boolean!4548) (Unit!40265) (OperatorValue!4550 (op!4607 List!27461)) (IdentifierValue!9094 (value!138772 List!27461)) (IdentifierValue!9095 (value!138773 List!27461)) (WhitespaceValue!9095 (value!138774 List!27461)) (True!9094) (False!9094) (Broken!22737 (value!138775 List!27461)) (Broken!22738 (value!138776 List!27461)) (True!9095) (RightBrace!4547) (RightBracket!4547) (Colon!4547) (Null!4547) (Comma!4547) (LeftBracket!4547) (False!9095) (LeftBrace!4547) (ImaginaryLiteralValue!4547 (text!32275 List!27461)) (StringLiteralValue!13641 (value!138777 List!27461)) (EOFValue!4547 (value!138778 List!27461)) (IdentValue!4547 (value!138779 List!27461)) (DelimiterValue!9095 (value!138780 List!27461)) (DedentValue!4547 (value!138781 List!27461)) (NewLineValue!4547 (value!138782 List!27461)) (IntegerValue!13641 (value!138783 (_ BitVec 32)) (text!32276 List!27461)) (IntegerValue!13642 (value!138784 Int) (text!32277 List!27461)) (Times!4547) (Or!4547) (Equal!4547) (Minus!4547) (Broken!22739 (value!138785 List!27461)) (And!4547) (Div!4547) (LessEqual!4547) (Mod!4547) (Concat!11280) (Not!4547) (Plus!4547) (SpaceValue!4547 (value!138786 List!27461)) (IntegerValue!13643 (value!138787 Int) (text!32278 List!27461)) (StringLiteralValue!13642 (text!32279 List!27461)) (FloatLiteralValue!9095 (text!32280 List!27461)) (BytesLiteralValue!4547 (value!138788 List!27461)) (CommentValue!9095 (value!138789 List!27461)) (StringLiteralValue!13643 (value!138790 List!27461)) (ErrorTokenValue!4547 (msg!4608 List!27461)) )
))
(declare-datatypes ((C!13612 0))(
  ( (C!13613 (val!7854 Int)) )
))
(declare-datatypes ((List!27462 0))(
  ( (Nil!27368) (Cons!27368 (h!32769 C!13612) (t!205626 List!27462)) )
))
(declare-datatypes ((IArray!17841 0))(
  ( (IArray!17842 (innerList!8978 List!27462)) )
))
(declare-datatypes ((Conc!8918 0))(
  ( (Node!8918 (left!20743 Conc!8918) (right!21073 Conc!8918) (csize!18066 Int) (cheight!9129 Int)) (Leaf!13096 (xs!11860 IArray!17841) (csize!18067 Int)) (Empty!8918) )
))
(declare-datatypes ((BalanceConc!17564 0))(
  ( (BalanceConc!17565 (c!364502 Conc!8918)) )
))
(declare-datatypes ((String!29839 0))(
  ( (String!29840 (value!138791 String)) )
))
(declare-datatypes ((Regex!6733 0))(
  ( (ElementMatch!6733 (c!364503 C!13612)) (Concat!11281 (regOne!13978 Regex!6733) (regTwo!13978 Regex!6733)) (EmptyExpr!6733) (Star!6733 (reg!7062 Regex!6733)) (EmptyLang!6733) (Union!6733 (regOne!13979 Regex!6733) (regTwo!13979 Regex!6733)) )
))
(declare-datatypes ((TokenValueInjection!8634 0))(
  ( (TokenValueInjection!8635 (toValue!6191 Int) (toChars!6050 Int)) )
))
(declare-datatypes ((Rule!8570 0))(
  ( (Rule!8571 (regex!4385 Regex!6733) (tag!4875 String!29839) (isSeparator!4385 Bool) (transformation!4385 TokenValueInjection!8634)) )
))
(declare-datatypes ((List!27463 0))(
  ( (Nil!27369) (Cons!27369 (h!32770 Rule!8570) (t!205627 List!27463)) )
))
(declare-fun rules!1750 () List!27463)

(declare-fun r!2363 () Rule!8570)

(declare-fun contains!4769 (List!27463 Rule!8570) Bool)

(assert (=> b!2298941 (= res!982866 (contains!4769 rules!1750 r!2363))))

(declare-fun e!1473206 () Bool)

(declare-fun e!1473198 () Bool)

(declare-fun tp!729253 () Bool)

(declare-fun b!2298942 () Bool)

(declare-fun inv!36989 (String!29839) Bool)

(declare-fun inv!36992 (TokenValueInjection!8634) Bool)

(assert (=> b!2298942 (= e!1473198 (and tp!729253 (inv!36989 (tag!4875 (h!32770 rules!1750))) (inv!36992 (transformation!4385 (h!32770 rules!1750))) e!1473206))))

(declare-fun b!2298943 () Bool)

(declare-fun e!1473220 () Bool)

(declare-datatypes ((Token!8248 0))(
  ( (Token!8249 (value!138792 TokenValue!4547) (rule!6729 Rule!8570) (size!21574 Int) (originalCharacters!5155 List!27462)) )
))
(declare-datatypes ((List!27464 0))(
  ( (Nil!27370) (Cons!27370 (h!32771 Token!8248) (t!205628 List!27464)) )
))
(declare-fun tokens!456 () List!27464)

(declare-fun otherP!12 () List!27462)

(declare-fun size!21575 (BalanceConc!17564) Int)

(declare-fun charsOf!2773 (Token!8248) BalanceConc!17564)

(declare-fun head!5024 (List!27464) Token!8248)

(declare-fun size!21576 (List!27462) Int)

(assert (=> b!2298943 (= e!1473220 (<= (size!21575 (charsOf!2773 (head!5024 tokens!456))) (size!21576 otherP!12)))))

(declare-fun e!1473210 () Bool)

(declare-fun b!2298944 () Bool)

(declare-fun tp!729257 () Bool)

(declare-fun e!1473218 () Bool)

(assert (=> b!2298944 (= e!1473210 (and tp!729257 (inv!36989 (tag!4875 (rule!6729 (h!32771 tokens!456)))) (inv!36992 (transformation!4385 (rule!6729 (h!32771 tokens!456)))) e!1473218))))

(declare-fun b!2298945 () Bool)

(declare-fun e!1473197 () Bool)

(declare-fun e!1473202 () Bool)

(assert (=> b!2298945 (= e!1473197 (not e!1473202))))

(declare-fun res!982867 () Bool)

(assert (=> b!2298945 (=> res!982867 e!1473202)))

(declare-fun e!1473212 () Bool)

(assert (=> b!2298945 (= res!982867 e!1473212)))

(declare-fun res!982865 () Bool)

(assert (=> b!2298945 (=> (not res!982865) (not e!1473212))))

(declare-fun lt!852838 () Bool)

(assert (=> b!2298945 (= res!982865 (not lt!852838))))

(declare-datatypes ((LexerInterface!3982 0))(
  ( (LexerInterfaceExt!3979 (__x!18155 Int)) (Lexer!3980) )
))
(declare-fun thiss!16613 () LexerInterface!3982)

(declare-fun ruleValid!1475 (LexerInterface!3982 Rule!8570) Bool)

(assert (=> b!2298945 (ruleValid!1475 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40266 0))(
  ( (Unit!40267) )
))
(declare-fun lt!852830 () Unit!40266)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!880 (LexerInterface!3982 Rule!8570 List!27463) Unit!40266)

(assert (=> b!2298945 (= lt!852830 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!880 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2298946 (= e!1473206 (and tp!729247 tp!729249))))

(declare-fun res!982861 () Bool)

(assert (=> start!225984 (=> (not res!982861) (not e!1473215))))

(get-info :version)

(assert (=> start!225984 (= res!982861 ((_ is Lexer!3980) thiss!16613))))

(assert (=> start!225984 e!1473215))

(assert (=> start!225984 true))

(declare-fun e!1473211 () Bool)

(assert (=> start!225984 e!1473211))

(declare-fun e!1473224 () Bool)

(assert (=> start!225984 e!1473224))

(declare-fun e!1473216 () Bool)

(assert (=> start!225984 e!1473216))

(declare-fun e!1473222 () Bool)

(assert (=> start!225984 e!1473222))

(declare-fun e!1473221 () Bool)

(assert (=> start!225984 e!1473221))

(declare-fun e!1473214 () Bool)

(assert (=> start!225984 e!1473214))

(declare-fun e!1473199 () Bool)

(assert (=> start!225984 e!1473199))

(declare-fun e!1473217 () Bool)

(assert (=> b!2298947 (= e!1473217 (and tp!729240 tp!729248))))

(declare-fun b!2298948 () Bool)

(declare-fun e!1473201 () Bool)

(assert (=> b!2298948 (= e!1473201 (= (rule!6729 (head!5024 tokens!456)) r!2363))))

(declare-fun b!2298949 () Bool)

(declare-fun res!982870 () Bool)

(assert (=> b!2298949 (=> (not res!982870) (not e!1473197))))

(declare-fun input!1722 () List!27462)

(declare-fun isPrefix!2375 (List!27462 List!27462) Bool)

(assert (=> b!2298949 (= res!982870 (isPrefix!2375 otherP!12 input!1722))))

(declare-fun b!2298950 () Bool)

(declare-fun e!1473204 () Bool)

(declare-fun tp!729246 () Bool)

(declare-fun inv!36993 (Token!8248) Bool)

(assert (=> b!2298950 (= e!1473199 (and (inv!36993 (h!32771 tokens!456)) e!1473204 tp!729246))))

(declare-fun b!2298951 () Bool)

(declare-fun tp_is_empty!10687 () Bool)

(declare-fun tp!729254 () Bool)

(assert (=> b!2298951 (= e!1473211 (and tp_is_empty!10687 tp!729254))))

(declare-fun b!2298952 () Bool)

(declare-fun res!982859 () Bool)

(assert (=> b!2298952 (=> (not res!982859) (not e!1473197))))

(declare-fun otherR!12 () Rule!8570)

(assert (=> b!2298952 (= res!982859 (not (= r!2363 otherR!12)))))

(declare-fun b!2298953 () Bool)

(declare-fun tp!729241 () Bool)

(assert (=> b!2298953 (= e!1473216 (and tp_is_empty!10687 tp!729241))))

(declare-fun b!2298954 () Bool)

(declare-fun e!1473200 () Unit!40266)

(declare-fun Unit!40268 () Unit!40266)

(assert (=> b!2298954 (= e!1473200 Unit!40268)))

(declare-fun b!2298955 () Bool)

(declare-fun res!982864 () Bool)

(assert (=> b!2298955 (=> (not res!982864) (not e!1473215))))

(declare-fun rulesInvariant!3484 (LexerInterface!3982 List!27463) Bool)

(assert (=> b!2298955 (= res!982864 (rulesInvariant!3484 thiss!16613 rules!1750))))

(declare-fun b!2298956 () Bool)

(declare-fun matchR!2990 (Regex!6733 List!27462) Bool)

(declare-fun list!10760 (BalanceConc!17564) List!27462)

(assert (=> b!2298956 (= e!1473212 (not (matchR!2990 (regex!4385 r!2363) (list!10760 (charsOf!2773 (head!5024 tokens!456))))))))

(declare-fun b!2298957 () Bool)

(declare-fun e!1473209 () Bool)

(assert (=> b!2298957 (= e!1473209 true)))

(declare-fun lt!852837 () Bool)

(declare-fun lt!852836 () List!27462)

(assert (=> b!2298957 (= lt!852837 (isPrefix!2375 lt!852836 input!1722))))

(declare-fun lt!852832 () List!27462)

(declare-fun getSuffix!1154 (List!27462 List!27462) List!27462)

(assert (=> b!2298957 (= lt!852832 (getSuffix!1154 input!1722 lt!852836))))

(declare-datatypes ((tuple2!27234 0))(
  ( (tuple2!27235 (_1!16127 Token!8248) (_2!16127 List!27462)) )
))
(declare-fun lt!852834 () tuple2!27234)

(declare-fun ++!6695 (List!27462 List!27462) List!27462)

(assert (=> b!2298957 (isPrefix!2375 lt!852836 (++!6695 lt!852836 (_2!16127 lt!852834)))))

(declare-fun lt!852828 () Unit!40266)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1568 (List!27462 List!27462) Unit!40266)

(assert (=> b!2298957 (= lt!852828 (lemmaConcatTwoListThenFirstIsPrefix!1568 lt!852836 (_2!16127 lt!852834)))))

(assert (=> b!2298957 (= lt!852836 (list!10760 (charsOf!2773 (h!32771 tokens!456))))))

(declare-datatypes ((Option!5379 0))(
  ( (None!5378) (Some!5378 (v!30470 tuple2!27234)) )
))
(declare-fun get!8249 (Option!5379) tuple2!27234)

(declare-fun maxPrefix!2238 (LexerInterface!3982 List!27463 List!27462) Option!5379)

(assert (=> b!2298957 (= lt!852834 (get!8249 (maxPrefix!2238 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2298958 () Bool)

(declare-fun e!1473205 () Bool)

(assert (=> b!2298958 (= e!1473205 e!1473209)))

(declare-fun res!982868 () Bool)

(assert (=> b!2298958 (=> res!982868 e!1473209)))

(assert (=> b!2298958 (= res!982868 ((_ is Nil!27370) tokens!456))))

(declare-fun lt!852833 () Unit!40266)

(assert (=> b!2298958 (= lt!852833 e!1473200)))

(declare-fun c!364501 () Bool)

(declare-fun lt!852835 () Int)

(declare-fun lt!852826 () Int)

(assert (=> b!2298958 (= c!364501 (= lt!852835 lt!852826))))

(declare-fun tp!729255 () Bool)

(declare-fun e!1473223 () Bool)

(declare-fun b!2298959 () Bool)

(assert (=> b!2298959 (= e!1473214 (and tp!729255 (inv!36989 (tag!4875 r!2363)) (inv!36992 (transformation!4385 r!2363)) e!1473223))))

(declare-fun b!2298960 () Bool)

(declare-fun e!1473213 () Bool)

(assert (=> b!2298960 (= e!1473213 e!1473197)))

(declare-fun res!982873 () Bool)

(assert (=> b!2298960 (=> (not res!982873) (not e!1473197))))

(assert (=> b!2298960 (= res!982873 e!1473220)))

(declare-fun res!982860 () Bool)

(assert (=> b!2298960 (=> res!982860 e!1473220)))

(assert (=> b!2298960 (= res!982860 lt!852838)))

(declare-fun isEmpty!15613 (List!27464) Bool)

(assert (=> b!2298960 (= lt!852838 (isEmpty!15613 tokens!456))))

(assert (=> b!2298961 (= e!1473218 (and tp!729252 tp!729245))))

(declare-fun b!2298962 () Bool)

(assert (=> b!2298962 (= e!1473202 e!1473205)))

(declare-fun res!982872 () Bool)

(assert (=> b!2298962 (=> res!982872 e!1473205)))

(assert (=> b!2298962 (= res!982872 (> lt!852835 lt!852826))))

(declare-fun getIndex!398 (List!27463 Rule!8570) Int)

(assert (=> b!2298962 (= lt!852826 (getIndex!398 rules!1750 otherR!12))))

(assert (=> b!2298962 (= lt!852835 (getIndex!398 rules!1750 r!2363))))

(assert (=> b!2298962 (ruleValid!1475 thiss!16613 otherR!12)))

(declare-fun lt!852827 () Unit!40266)

(assert (=> b!2298962 (= lt!852827 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!880 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2298963 (= e!1473223 (and tp!729242 tp!729250))))

(declare-fun b!2298964 () Bool)

(declare-fun tp!729243 () Bool)

(assert (=> b!2298964 (= e!1473224 (and tp!729243 (inv!36989 (tag!4875 otherR!12)) (inv!36992 (transformation!4385 otherR!12)) e!1473217))))

(declare-fun b!2298965 () Bool)

(declare-fun res!982862 () Bool)

(assert (=> b!2298965 (=> (not res!982862) (not e!1473215))))

(assert (=> b!2298965 (= res!982862 (contains!4769 rules!1750 otherR!12))))

(declare-fun tp!729251 () Bool)

(declare-fun b!2298966 () Bool)

(declare-fun inv!21 (TokenValue!4547) Bool)

(assert (=> b!2298966 (= e!1473204 (and (inv!21 (value!138792 (h!32771 tokens!456))) e!1473210 tp!729251))))

(declare-fun b!2298967 () Bool)

(assert (=> b!2298967 (= e!1473215 e!1473213)))

(declare-fun res!982858 () Bool)

(assert (=> b!2298967 (=> (not res!982858) (not e!1473213))))

(declare-datatypes ((IArray!17843 0))(
  ( (IArray!17844 (innerList!8979 List!27464)) )
))
(declare-datatypes ((Conc!8919 0))(
  ( (Node!8919 (left!20744 Conc!8919) (right!21074 Conc!8919) (csize!18068 Int) (cheight!9130 Int)) (Leaf!13097 (xs!11861 IArray!17843) (csize!18069 Int)) (Empty!8919) )
))
(declare-datatypes ((BalanceConc!17566 0))(
  ( (BalanceConc!17567 (c!364504 Conc!8919)) )
))
(declare-datatypes ((tuple2!27236 0))(
  ( (tuple2!27237 (_1!16128 BalanceConc!17566) (_2!16128 BalanceConc!17564)) )
))
(declare-fun lt!852829 () tuple2!27236)

(declare-fun suffix!886 () List!27462)

(declare-datatypes ((tuple2!27238 0))(
  ( (tuple2!27239 (_1!16129 List!27464) (_2!16129 List!27462)) )
))
(declare-fun list!10761 (BalanceConc!17566) List!27464)

(assert (=> b!2298967 (= res!982858 (= (tuple2!27239 (list!10761 (_1!16128 lt!852829)) (list!10760 (_2!16128 lt!852829))) (tuple2!27239 tokens!456 suffix!886)))))

(declare-fun lex!1821 (LexerInterface!3982 List!27463 BalanceConc!17564) tuple2!27236)

(declare-fun seqFromList!3089 (List!27462) BalanceConc!17564)

(assert (=> b!2298967 (= lt!852829 (lex!1821 thiss!16613 rules!1750 (seqFromList!3089 input!1722)))))

(declare-fun b!2298968 () Bool)

(declare-fun tp!729256 () Bool)

(assert (=> b!2298968 (= e!1473221 (and e!1473198 tp!729256))))

(declare-fun b!2298969 () Bool)

(declare-fun tp!729244 () Bool)

(assert (=> b!2298969 (= e!1473222 (and tp_is_empty!10687 tp!729244))))

(declare-fun b!2298970 () Bool)

(declare-fun res!982871 () Bool)

(assert (=> b!2298970 (=> (not res!982871) (not e!1473215))))

(declare-fun isEmpty!15614 (List!27463) Bool)

(assert (=> b!2298970 (= res!982871 (not (isEmpty!15614 rules!1750)))))

(declare-fun b!2298971 () Bool)

(declare-fun res!982863 () Bool)

(assert (=> b!2298971 (=> (not res!982863) (not e!1473197))))

(assert (=> b!2298971 (= res!982863 e!1473201)))

(declare-fun res!982869 () Bool)

(assert (=> b!2298971 (=> res!982869 e!1473201)))

(assert (=> b!2298971 (= res!982869 lt!852838)))

(declare-fun b!2298972 () Bool)

(declare-fun Unit!40269 () Unit!40266)

(assert (=> b!2298972 (= e!1473200 Unit!40269)))

(declare-fun lt!852831 () Unit!40266)

(declare-fun lemmaSameIndexThenSameElement!178 (List!27463 Rule!8570 Rule!8570) Unit!40266)

(assert (=> b!2298972 (= lt!852831 (lemmaSameIndexThenSameElement!178 rules!1750 r!2363 otherR!12))))

(assert (=> b!2298972 false))

(assert (= (and start!225984 res!982861) b!2298970))

(assert (= (and b!2298970 res!982871) b!2298955))

(assert (= (and b!2298955 res!982864) b!2298941))

(assert (= (and b!2298941 res!982866) b!2298965))

(assert (= (and b!2298965 res!982862) b!2298967))

(assert (= (and b!2298967 res!982858) b!2298960))

(assert (= (and b!2298960 (not res!982860)) b!2298943))

(assert (= (and b!2298960 res!982873) b!2298971))

(assert (= (and b!2298971 (not res!982869)) b!2298948))

(assert (= (and b!2298971 res!982863) b!2298949))

(assert (= (and b!2298949 res!982870) b!2298952))

(assert (= (and b!2298952 res!982859) b!2298945))

(assert (= (and b!2298945 res!982865) b!2298956))

(assert (= (and b!2298945 (not res!982867)) b!2298962))

(assert (= (and b!2298962 (not res!982872)) b!2298958))

(assert (= (and b!2298958 c!364501) b!2298972))

(assert (= (and b!2298958 (not c!364501)) b!2298954))

(assert (= (and b!2298958 (not res!982868)) b!2298957))

(assert (= (and start!225984 ((_ is Cons!27368) input!1722)) b!2298951))

(assert (= b!2298964 b!2298947))

(assert (= start!225984 b!2298964))

(assert (= (and start!225984 ((_ is Cons!27368) suffix!886)) b!2298953))

(assert (= (and start!225984 ((_ is Cons!27368) otherP!12)) b!2298969))

(assert (= b!2298942 b!2298946))

(assert (= b!2298968 b!2298942))

(assert (= (and start!225984 ((_ is Cons!27369) rules!1750)) b!2298968))

(assert (= b!2298959 b!2298963))

(assert (= start!225984 b!2298959))

(assert (= b!2298944 b!2298961))

(assert (= b!2298966 b!2298944))

(assert (= b!2298950 b!2298966))

(assert (= (and start!225984 ((_ is Cons!27370) tokens!456)) b!2298950))

(declare-fun m!2726291 () Bool)

(assert (=> b!2298966 m!2726291))

(declare-fun m!2726293 () Bool)

(assert (=> b!2298949 m!2726293))

(declare-fun m!2726295 () Bool)

(assert (=> b!2298965 m!2726295))

(declare-fun m!2726297 () Bool)

(assert (=> b!2298959 m!2726297))

(declare-fun m!2726299 () Bool)

(assert (=> b!2298959 m!2726299))

(declare-fun m!2726301 () Bool)

(assert (=> b!2298957 m!2726301))

(declare-fun m!2726303 () Bool)

(assert (=> b!2298957 m!2726303))

(declare-fun m!2726305 () Bool)

(assert (=> b!2298957 m!2726305))

(declare-fun m!2726307 () Bool)

(assert (=> b!2298957 m!2726307))

(declare-fun m!2726309 () Bool)

(assert (=> b!2298957 m!2726309))

(declare-fun m!2726311 () Bool)

(assert (=> b!2298957 m!2726311))

(declare-fun m!2726313 () Bool)

(assert (=> b!2298957 m!2726313))

(declare-fun m!2726315 () Bool)

(assert (=> b!2298957 m!2726315))

(assert (=> b!2298957 m!2726313))

(assert (=> b!2298957 m!2726305))

(assert (=> b!2298957 m!2726309))

(declare-fun m!2726317 () Bool)

(assert (=> b!2298957 m!2726317))

(declare-fun m!2726319 () Bool)

(assert (=> b!2298945 m!2726319))

(declare-fun m!2726321 () Bool)

(assert (=> b!2298945 m!2726321))

(declare-fun m!2726323 () Bool)

(assert (=> b!2298941 m!2726323))

(declare-fun m!2726325 () Bool)

(assert (=> b!2298944 m!2726325))

(declare-fun m!2726327 () Bool)

(assert (=> b!2298944 m!2726327))

(declare-fun m!2726329 () Bool)

(assert (=> b!2298967 m!2726329))

(declare-fun m!2726331 () Bool)

(assert (=> b!2298967 m!2726331))

(declare-fun m!2726333 () Bool)

(assert (=> b!2298967 m!2726333))

(assert (=> b!2298967 m!2726333))

(declare-fun m!2726335 () Bool)

(assert (=> b!2298967 m!2726335))

(declare-fun m!2726337 () Bool)

(assert (=> b!2298948 m!2726337))

(declare-fun m!2726339 () Bool)

(assert (=> b!2298942 m!2726339))

(declare-fun m!2726341 () Bool)

(assert (=> b!2298942 m!2726341))

(declare-fun m!2726343 () Bool)

(assert (=> b!2298955 m!2726343))

(declare-fun m!2726345 () Bool)

(assert (=> b!2298950 m!2726345))

(declare-fun m!2726347 () Bool)

(assert (=> b!2298962 m!2726347))

(declare-fun m!2726349 () Bool)

(assert (=> b!2298962 m!2726349))

(declare-fun m!2726351 () Bool)

(assert (=> b!2298962 m!2726351))

(declare-fun m!2726353 () Bool)

(assert (=> b!2298962 m!2726353))

(assert (=> b!2298943 m!2726337))

(assert (=> b!2298943 m!2726337))

(declare-fun m!2726355 () Bool)

(assert (=> b!2298943 m!2726355))

(assert (=> b!2298943 m!2726355))

(declare-fun m!2726357 () Bool)

(assert (=> b!2298943 m!2726357))

(declare-fun m!2726359 () Bool)

(assert (=> b!2298943 m!2726359))

(assert (=> b!2298956 m!2726337))

(assert (=> b!2298956 m!2726337))

(assert (=> b!2298956 m!2726355))

(assert (=> b!2298956 m!2726355))

(declare-fun m!2726361 () Bool)

(assert (=> b!2298956 m!2726361))

(assert (=> b!2298956 m!2726361))

(declare-fun m!2726363 () Bool)

(assert (=> b!2298956 m!2726363))

(declare-fun m!2726365 () Bool)

(assert (=> b!2298970 m!2726365))

(declare-fun m!2726367 () Bool)

(assert (=> b!2298960 m!2726367))

(declare-fun m!2726369 () Bool)

(assert (=> b!2298964 m!2726369))

(declare-fun m!2726371 () Bool)

(assert (=> b!2298964 m!2726371))

(declare-fun m!2726373 () Bool)

(assert (=> b!2298972 m!2726373))

(check-sat b_and!182995 b_and!182993 (not b_next!70019) (not b!2298959) (not b!2298945) (not b!2298957) (not b!2298967) (not b!2298966) (not b!2298943) (not b!2298964) (not b_next!70015) (not b!2298965) b_and!182999 tp_is_empty!10687 (not b_next!70021) (not b!2298941) b_and!183007 (not b!2298969) (not b!2298970) b_and!183001 b_and!183005 (not b_next!70027) (not b!2298956) (not b!2298950) (not b!2298960) (not b!2298942) (not b!2298955) (not b_next!70017) (not b!2298968) (not b!2298949) (not b_next!70025) (not b!2298944) (not b!2298951) b_and!182997 (not b!2298953) (not b!2298972) (not b_next!70013) (not b_next!70023) (not b!2298948) (not b!2298962) b_and!183003)
(check-sat b_and!182995 b_and!183007 (not b_next!70017) (not b_next!70025) b_and!182993 (not b_next!70019) b_and!182997 b_and!183003 (not b_next!70015) b_and!182999 (not b_next!70021) b_and!183001 b_and!183005 (not b_next!70027) (not b_next!70013) (not b_next!70023))
