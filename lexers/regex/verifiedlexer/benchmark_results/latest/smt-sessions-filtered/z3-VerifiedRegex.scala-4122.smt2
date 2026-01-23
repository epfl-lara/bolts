; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221220 () Bool)

(assert start!221220)

(declare-fun b!2263952 () Bool)

(declare-fun b_free!66909 () Bool)

(declare-fun b_next!67613 () Bool)

(assert (=> b!2263952 (= b_free!66909 (not b_next!67613))))

(declare-fun tp!716070 () Bool)

(declare-fun b_and!177993 () Bool)

(assert (=> b!2263952 (= tp!716070 b_and!177993)))

(declare-fun b_free!66911 () Bool)

(declare-fun b_next!67615 () Bool)

(assert (=> b!2263952 (= b_free!66911 (not b_next!67615))))

(declare-fun tp!716071 () Bool)

(declare-fun b_and!177995 () Bool)

(assert (=> b!2263952 (= tp!716071 b_and!177995)))

(declare-fun b!2263938 () Bool)

(declare-fun b_free!66913 () Bool)

(declare-fun b_next!67617 () Bool)

(assert (=> b!2263938 (= b_free!66913 (not b_next!67617))))

(declare-fun tp!716083 () Bool)

(declare-fun b_and!177997 () Bool)

(assert (=> b!2263938 (= tp!716083 b_and!177997)))

(declare-fun b_free!66915 () Bool)

(declare-fun b_next!67619 () Bool)

(assert (=> b!2263938 (= b_free!66915 (not b_next!67619))))

(declare-fun tp!716075 () Bool)

(declare-fun b_and!177999 () Bool)

(assert (=> b!2263938 (= tp!716075 b_and!177999)))

(declare-fun b!2263950 () Bool)

(declare-fun b_free!66917 () Bool)

(declare-fun b_next!67621 () Bool)

(assert (=> b!2263950 (= b_free!66917 (not b_next!67621))))

(declare-fun tp!716081 () Bool)

(declare-fun b_and!178001 () Bool)

(assert (=> b!2263950 (= tp!716081 b_and!178001)))

(declare-fun b_free!66919 () Bool)

(declare-fun b_next!67623 () Bool)

(assert (=> b!2263950 (= b_free!66919 (not b_next!67623))))

(declare-fun tp!716074 () Bool)

(declare-fun b_and!178003 () Bool)

(assert (=> b!2263950 (= tp!716074 b_and!178003)))

(declare-fun b!2263943 () Bool)

(declare-fun b_free!66921 () Bool)

(declare-fun b_next!67625 () Bool)

(assert (=> b!2263943 (= b_free!66921 (not b_next!67625))))

(declare-fun tp!716078 () Bool)

(declare-fun b_and!178005 () Bool)

(assert (=> b!2263943 (= tp!716078 b_and!178005)))

(declare-fun b_free!66923 () Bool)

(declare-fun b_next!67627 () Bool)

(assert (=> b!2263943 (= b_free!66923 (not b_next!67627))))

(declare-fun tp!716073 () Bool)

(declare-fun b_and!178007 () Bool)

(assert (=> b!2263943 (= tp!716073 b_and!178007)))

(declare-fun b!2263919 () Bool)

(declare-datatypes ((List!26967 0))(
  ( (Nil!26873) (Cons!26873 (h!32274 (_ BitVec 16)) (t!201965 List!26967)) )
))
(declare-datatypes ((TokenValue!4437 0))(
  ( (FloatLiteralValue!8874 (text!31504 List!26967)) (TokenValueExt!4436 (__x!17934 Int)) (Broken!22185 (value!135631 List!26967)) (Object!4530) (End!4437) (Def!4437) (Underscore!4437) (Match!4437) (Else!4437) (Error!4437) (Case!4437) (If!4437) (Extends!4437) (Abstract!4437) (Class!4437) (Val!4437) (DelimiterValue!8874 (del!4497 List!26967)) (KeywordValue!4443 (value!135632 List!26967)) (CommentValue!8874 (value!135633 List!26967)) (WhitespaceValue!8874 (value!135634 List!26967)) (IndentationValue!4437 (value!135635 List!26967)) (String!29288) (Int32!4437) (Broken!22186 (value!135636 List!26967)) (Boolean!4438) (Unit!39813) (OperatorValue!4440 (op!4497 List!26967)) (IdentifierValue!8874 (value!135637 List!26967)) (IdentifierValue!8875 (value!135638 List!26967)) (WhitespaceValue!8875 (value!135639 List!26967)) (True!8874) (False!8874) (Broken!22187 (value!135640 List!26967)) (Broken!22188 (value!135641 List!26967)) (True!8875) (RightBrace!4437) (RightBracket!4437) (Colon!4437) (Null!4437) (Comma!4437) (LeftBracket!4437) (False!8875) (LeftBrace!4437) (ImaginaryLiteralValue!4437 (text!31505 List!26967)) (StringLiteralValue!13311 (value!135642 List!26967)) (EOFValue!4437 (value!135643 List!26967)) (IdentValue!4437 (value!135644 List!26967)) (DelimiterValue!8875 (value!135645 List!26967)) (DedentValue!4437 (value!135646 List!26967)) (NewLineValue!4437 (value!135647 List!26967)) (IntegerValue!13311 (value!135648 (_ BitVec 32)) (text!31506 List!26967)) (IntegerValue!13312 (value!135649 Int) (text!31507 List!26967)) (Times!4437) (Or!4437) (Equal!4437) (Minus!4437) (Broken!22189 (value!135650 List!26967)) (And!4437) (Div!4437) (LessEqual!4437) (Mod!4437) (Concat!11060) (Not!4437) (Plus!4437) (SpaceValue!4437 (value!135651 List!26967)) (IntegerValue!13313 (value!135652 Int) (text!31508 List!26967)) (StringLiteralValue!13312 (text!31509 List!26967)) (FloatLiteralValue!8875 (text!31510 List!26967)) (BytesLiteralValue!4437 (value!135653 List!26967)) (CommentValue!8875 (value!135654 List!26967)) (StringLiteralValue!13313 (value!135655 List!26967)) (ErrorTokenValue!4437 (msg!4498 List!26967)) )
))
(declare-datatypes ((C!13392 0))(
  ( (C!13393 (val!7744 Int)) )
))
(declare-datatypes ((List!26968 0))(
  ( (Nil!26874) (Cons!26874 (h!32275 C!13392) (t!201966 List!26968)) )
))
(declare-datatypes ((IArray!17401 0))(
  ( (IArray!17402 (innerList!8758 List!26968)) )
))
(declare-datatypes ((Conc!8698 0))(
  ( (Node!8698 (left!20400 Conc!8698) (right!20730 Conc!8698) (csize!17626 Int) (cheight!8909 Int)) (Leaf!12821 (xs!11640 IArray!17401) (csize!17627 Int)) (Empty!8698) )
))
(declare-datatypes ((BalanceConc!17124 0))(
  ( (BalanceConc!17125 (c!359688 Conc!8698)) )
))
(declare-datatypes ((Regex!6623 0))(
  ( (ElementMatch!6623 (c!359689 C!13392)) (Concat!11061 (regOne!13758 Regex!6623) (regTwo!13758 Regex!6623)) (EmptyExpr!6623) (Star!6623 (reg!6952 Regex!6623)) (EmptyLang!6623) (Union!6623 (regOne!13759 Regex!6623) (regTwo!13759 Regex!6623)) )
))
(declare-datatypes ((String!29289 0))(
  ( (String!29290 (value!135656 String)) )
))
(declare-datatypes ((TokenValueInjection!8414 0))(
  ( (TokenValueInjection!8415 (toValue!6029 Int) (toChars!5888 Int)) )
))
(declare-datatypes ((Rule!8350 0))(
  ( (Rule!8351 (regex!4275 Regex!6623) (tag!4765 String!29289) (isSeparator!4275 Bool) (transformation!4275 TokenValueInjection!8414)) )
))
(declare-fun r!2363 () Rule!8350)

(declare-fun tp!716068 () Bool)

(declare-fun e!1449502 () Bool)

(declare-fun e!1449514 () Bool)

(declare-fun inv!36421 (String!29289) Bool)

(declare-fun inv!36424 (TokenValueInjection!8414) Bool)

(assert (=> b!2263919 (= e!1449502 (and tp!716068 (inv!36421 (tag!4765 r!2363)) (inv!36424 (transformation!4275 r!2363)) e!1449514))))

(declare-fun b!2263920 () Bool)

(declare-datatypes ((Unit!39814 0))(
  ( (Unit!39815) )
))
(declare-fun e!1449505 () Unit!39814)

(declare-fun Unit!39816 () Unit!39814)

(assert (=> b!2263920 (= e!1449505 Unit!39816)))

(declare-datatypes ((List!26969 0))(
  ( (Nil!26875) (Cons!26875 (h!32276 Rule!8350) (t!201967 List!26969)) )
))
(declare-fun rules!1750 () List!26969)

(declare-fun otherR!12 () Rule!8350)

(declare-fun lt!841073 () Unit!39814)

(declare-fun lemmaSameIndexThenSameElement!142 (List!26969 Rule!8350 Rule!8350) Unit!39814)

(assert (=> b!2263920 (= lt!841073 (lemmaSameIndexThenSameElement!142 rules!1750 r!2363 otherR!12))))

(assert (=> b!2263920 false))

(declare-fun b!2263921 () Bool)

(declare-fun res!967685 () Bool)

(declare-fun e!1449515 () Bool)

(assert (=> b!2263921 (=> (not res!967685) (not e!1449515))))

(declare-fun otherP!12 () List!26968)

(declare-fun input!1722 () List!26968)

(declare-fun isPrefix!2265 (List!26968 List!26968) Bool)

(assert (=> b!2263921 (= res!967685 (isPrefix!2265 otherP!12 input!1722))))

(declare-fun b!2263922 () Bool)

(declare-fun res!967682 () Bool)

(declare-fun e!1449489 () Bool)

(assert (=> b!2263922 (=> (not res!967682) (not e!1449489))))

(declare-fun contains!4633 (List!26969 Rule!8350) Bool)

(assert (=> b!2263922 (= res!967682 (contains!4633 rules!1750 otherR!12))))

(declare-fun b!2263923 () Bool)

(declare-fun e!1449491 () Bool)

(declare-fun e!1449511 () Bool)

(assert (=> b!2263923 (= e!1449491 e!1449511)))

(declare-fun res!967677 () Bool)

(assert (=> b!2263923 (=> res!967677 e!1449511)))

(declare-fun lt!841084 () Int)

(declare-fun lt!841079 () Int)

(assert (=> b!2263923 (= res!967677 (> lt!841084 lt!841079))))

(declare-fun getIndex!296 (List!26969 Rule!8350) Int)

(assert (=> b!2263923 (= lt!841079 (getIndex!296 rules!1750 otherR!12))))

(assert (=> b!2263923 (= lt!841084 (getIndex!296 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3872 0))(
  ( (LexerInterfaceExt!3869 (__x!17935 Int)) (Lexer!3870) )
))
(declare-fun thiss!16613 () LexerInterface!3872)

(declare-fun ruleValid!1367 (LexerInterface!3872 Rule!8350) Bool)

(assert (=> b!2263923 (ruleValid!1367 thiss!16613 otherR!12)))

(declare-fun lt!841082 () Unit!39814)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!774 (LexerInterface!3872 Rule!8350 List!26969) Unit!39814)

(assert (=> b!2263923 (= lt!841082 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!774 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2263924 () Bool)

(declare-fun e!1449512 () Bool)

(declare-fun e!1449501 () Bool)

(declare-fun tp!716080 () Bool)

(assert (=> b!2263924 (= e!1449512 (and tp!716080 (inv!36421 (tag!4765 otherR!12)) (inv!36424 (transformation!4275 otherR!12)) e!1449501))))

(declare-fun b!2263925 () Bool)

(declare-fun res!967674 () Bool)

(declare-fun e!1449508 () Bool)

(assert (=> b!2263925 (=> res!967674 e!1449508)))

(declare-fun lt!841081 () List!26968)

(assert (=> b!2263925 (= res!967674 (not (= lt!841081 input!1722)))))

(declare-fun b!2263926 () Bool)

(declare-fun e!1449516 () Bool)

(declare-datatypes ((Token!8028 0))(
  ( (Token!8029 (value!135657 TokenValue!4437) (rule!6589 Rule!8350) (size!21070 Int) (originalCharacters!5045 List!26968)) )
))
(declare-datatypes ((List!26970 0))(
  ( (Nil!26876) (Cons!26876 (h!32277 Token!8028) (t!201968 List!26970)) )
))
(declare-fun tokens!456 () List!26970)

(declare-fun size!21071 (BalanceConc!17124) Int)

(declare-fun charsOf!2663 (Token!8028) BalanceConc!17124)

(declare-fun head!4860 (List!26970) Token!8028)

(declare-fun size!21072 (List!26968) Int)

(assert (=> b!2263926 (= e!1449516 (<= (size!21071 (charsOf!2663 (head!4860 tokens!456))) (size!21072 otherP!12)))))

(declare-fun b!2263927 () Bool)

(declare-fun e!1449497 () Bool)

(assert (=> b!2263927 (= e!1449497 e!1449508)))

(declare-fun res!967670 () Bool)

(assert (=> b!2263927 (=> res!967670 e!1449508)))

(declare-fun lt!841080 () List!26968)

(assert (=> b!2263927 (= res!967670 (not (isPrefix!2265 lt!841080 input!1722)))))

(declare-fun lt!841077 () List!26968)

(declare-fun getSuffix!1076 (List!26968 List!26968) List!26968)

(assert (=> b!2263927 (= lt!841077 (getSuffix!1076 input!1722 lt!841080))))

(assert (=> b!2263927 (isPrefix!2265 lt!841080 lt!841081)))

(declare-datatypes ((tuple2!26482 0))(
  ( (tuple2!26483 (_1!15751 Token!8028) (_2!15751 List!26968)) )
))
(declare-fun lt!841074 () tuple2!26482)

(declare-fun ++!6547 (List!26968 List!26968) List!26968)

(assert (=> b!2263927 (= lt!841081 (++!6547 lt!841080 (_2!15751 lt!841074)))))

(declare-fun lt!841075 () Unit!39814)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1490 (List!26968 List!26968) Unit!39814)

(assert (=> b!2263927 (= lt!841075 (lemmaConcatTwoListThenFirstIsPrefix!1490 lt!841080 (_2!15751 lt!841074)))))

(declare-fun list!10381 (BalanceConc!17124) List!26968)

(assert (=> b!2263927 (= lt!841080 (list!10381 (charsOf!2663 (h!32277 tokens!456))))))

(declare-datatypes ((Option!5253 0))(
  ( (None!5252) (Some!5252 (v!30290 tuple2!26482)) )
))
(declare-fun get!8106 (Option!5253) tuple2!26482)

(declare-fun maxPrefix!2146 (LexerInterface!3872 List!26969 List!26968) Option!5253)

(assert (=> b!2263927 (= lt!841074 (get!8106 (maxPrefix!2146 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1449503 () Bool)

(declare-fun b!2263929 () Bool)

(declare-fun tp!716077 () Bool)

(declare-fun e!1449504 () Bool)

(declare-fun inv!21 (TokenValue!4437) Bool)

(assert (=> b!2263929 (= e!1449503 (and (inv!21 (value!135657 (h!32277 tokens!456))) e!1449504 tp!716077))))

(declare-fun b!2263930 () Bool)

(declare-fun e!1449498 () Bool)

(declare-fun matchR!2884 (Regex!6623 List!26968) Bool)

(assert (=> b!2263930 (= e!1449498 (not (matchR!2884 (regex!4275 r!2363) (list!10381 (charsOf!2663 (head!4860 tokens!456))))))))

(declare-fun b!2263931 () Bool)

(assert (=> b!2263931 (= e!1449508 true)))

(declare-fun lt!841085 () List!26968)

(assert (=> b!2263931 (= lt!841085 (++!6547 lt!841080 lt!841077))))

(declare-fun b!2263932 () Bool)

(declare-fun e!1449513 () Bool)

(declare-fun tp_is_empty!10467 () Bool)

(declare-fun tp!716067 () Bool)

(assert (=> b!2263932 (= e!1449513 (and tp_is_empty!10467 tp!716067))))

(declare-fun b!2263933 () Bool)

(declare-fun e!1449495 () Bool)

(assert (=> b!2263933 (= e!1449495 e!1449515)))

(declare-fun res!967671 () Bool)

(assert (=> b!2263933 (=> (not res!967671) (not e!1449515))))

(assert (=> b!2263933 (= res!967671 e!1449516)))

(declare-fun res!967676 () Bool)

(assert (=> b!2263933 (=> res!967676 e!1449516)))

(declare-fun lt!841078 () Bool)

(assert (=> b!2263933 (= res!967676 lt!841078)))

(declare-fun isEmpty!15203 (List!26970) Bool)

(assert (=> b!2263933 (= lt!841078 (isEmpty!15203 tokens!456))))

(declare-fun b!2263934 () Bool)

(assert (=> b!2263934 (= e!1449515 (not e!1449491))))

(declare-fun res!967680 () Bool)

(assert (=> b!2263934 (=> res!967680 e!1449491)))

(assert (=> b!2263934 (= res!967680 e!1449498)))

(declare-fun res!967669 () Bool)

(assert (=> b!2263934 (=> (not res!967669) (not e!1449498))))

(assert (=> b!2263934 (= res!967669 (not lt!841078))))

(assert (=> b!2263934 (ruleValid!1367 thiss!16613 r!2363)))

(declare-fun lt!841076 () Unit!39814)

(assert (=> b!2263934 (= lt!841076 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!774 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1449493 () Bool)

(declare-fun b!2263935 () Bool)

(declare-fun tp!716076 () Bool)

(declare-fun inv!36425 (Token!8028) Bool)

(assert (=> b!2263935 (= e!1449493 (and (inv!36425 (h!32277 tokens!456)) e!1449503 tp!716076))))

(declare-fun b!2263936 () Bool)

(assert (=> b!2263936 (= e!1449489 e!1449495)))

(declare-fun res!967672 () Bool)

(assert (=> b!2263936 (=> (not res!967672) (not e!1449495))))

(declare-datatypes ((IArray!17403 0))(
  ( (IArray!17404 (innerList!8759 List!26970)) )
))
(declare-datatypes ((Conc!8699 0))(
  ( (Node!8699 (left!20401 Conc!8699) (right!20731 Conc!8699) (csize!17628 Int) (cheight!8910 Int)) (Leaf!12822 (xs!11641 IArray!17403) (csize!17629 Int)) (Empty!8699) )
))
(declare-datatypes ((BalanceConc!17126 0))(
  ( (BalanceConc!17127 (c!359690 Conc!8699)) )
))
(declare-datatypes ((tuple2!26484 0))(
  ( (tuple2!26485 (_1!15752 BalanceConc!17126) (_2!15752 BalanceConc!17124)) )
))
(declare-fun lt!841086 () tuple2!26484)

(declare-fun suffix!886 () List!26968)

(declare-datatypes ((tuple2!26486 0))(
  ( (tuple2!26487 (_1!15753 List!26970) (_2!15753 List!26968)) )
))
(declare-fun list!10382 (BalanceConc!17126) List!26970)

(assert (=> b!2263936 (= res!967672 (= (tuple2!26487 (list!10382 (_1!15752 lt!841086)) (list!10381 (_2!15752 lt!841086))) (tuple2!26487 tokens!456 suffix!886)))))

(declare-fun lex!1711 (LexerInterface!3872 List!26969 BalanceConc!17124) tuple2!26484)

(declare-fun seqFromList!2979 (List!26968) BalanceConc!17124)

(assert (=> b!2263936 (= lt!841086 (lex!1711 thiss!16613 rules!1750 (seqFromList!2979 input!1722)))))

(declare-fun b!2263937 () Bool)

(declare-fun e!1449510 () Bool)

(declare-fun tp!716069 () Bool)

(assert (=> b!2263937 (= e!1449510 (and tp_is_empty!10467 tp!716069))))

(declare-fun e!1449500 () Bool)

(assert (=> b!2263938 (= e!1449500 (and tp!716083 tp!716075))))

(declare-fun b!2263939 () Bool)

(declare-fun e!1449507 () Bool)

(assert (=> b!2263939 (= e!1449507 (= (rule!6589 (head!4860 tokens!456)) r!2363))))

(declare-fun b!2263940 () Bool)

(declare-fun res!967678 () Bool)

(assert (=> b!2263940 (=> (not res!967678) (not e!1449515))))

(assert (=> b!2263940 (= res!967678 e!1449507)))

(declare-fun res!967684 () Bool)

(assert (=> b!2263940 (=> res!967684 e!1449507)))

(assert (=> b!2263940 (= res!967684 lt!841078)))

(declare-fun b!2263941 () Bool)

(declare-fun res!967683 () Bool)

(assert (=> b!2263941 (=> (not res!967683) (not e!1449489))))

(declare-fun rulesInvariant!3374 (LexerInterface!3872 List!26969) Bool)

(assert (=> b!2263941 (= res!967683 (rulesInvariant!3374 thiss!16613 rules!1750))))

(declare-fun b!2263942 () Bool)

(assert (=> b!2263942 (= e!1449511 e!1449497)))

(declare-fun res!967673 () Bool)

(assert (=> b!2263942 (=> res!967673 e!1449497)))

(get-info :version)

(assert (=> b!2263942 (= res!967673 ((_ is Nil!26876) tokens!456))))

(declare-fun lt!841083 () Unit!39814)

(assert (=> b!2263942 (= lt!841083 e!1449505)))

(declare-fun c!359687 () Bool)

(assert (=> b!2263942 (= c!359687 (= lt!841084 lt!841079))))

(assert (=> b!2263943 (= e!1449501 (and tp!716078 tp!716073))))

(declare-fun b!2263944 () Bool)

(declare-fun res!967681 () Bool)

(assert (=> b!2263944 (=> (not res!967681) (not e!1449489))))

(assert (=> b!2263944 (= res!967681 (contains!4633 rules!1750 r!2363))))

(declare-fun b!2263945 () Bool)

(declare-fun res!967675 () Bool)

(assert (=> b!2263945 (=> (not res!967675) (not e!1449489))))

(declare-fun isEmpty!15204 (List!26969) Bool)

(assert (=> b!2263945 (= res!967675 (not (isEmpty!15204 rules!1750)))))

(declare-fun b!2263946 () Bool)

(declare-fun Unit!39817 () Unit!39814)

(assert (=> b!2263946 (= e!1449505 Unit!39817)))

(declare-fun b!2263947 () Bool)

(declare-fun e!1449499 () Bool)

(declare-fun tp!716066 () Bool)

(assert (=> b!2263947 (= e!1449504 (and tp!716066 (inv!36421 (tag!4765 (rule!6589 (h!32277 tokens!456)))) (inv!36424 (transformation!4275 (rule!6589 (h!32277 tokens!456)))) e!1449499))))

(declare-fun b!2263948 () Bool)

(declare-fun e!1449488 () Bool)

(declare-fun e!1449506 () Bool)

(declare-fun tp!716079 () Bool)

(assert (=> b!2263948 (= e!1449488 (and e!1449506 tp!716079))))

(declare-fun tp!716072 () Bool)

(declare-fun b!2263949 () Bool)

(assert (=> b!2263949 (= e!1449506 (and tp!716072 (inv!36421 (tag!4765 (h!32276 rules!1750))) (inv!36424 (transformation!4275 (h!32276 rules!1750))) e!1449500))))

(assert (=> b!2263950 (= e!1449514 (and tp!716081 tp!716074))))

(declare-fun res!967686 () Bool)

(assert (=> start!221220 (=> (not res!967686) (not e!1449489))))

(assert (=> start!221220 (= res!967686 ((_ is Lexer!3870) thiss!16613))))

(assert (=> start!221220 e!1449489))

(assert (=> start!221220 true))

(assert (=> start!221220 e!1449510))

(assert (=> start!221220 e!1449512))

(assert (=> start!221220 e!1449513))

(declare-fun e!1449494 () Bool)

(assert (=> start!221220 e!1449494))

(assert (=> start!221220 e!1449488))

(assert (=> start!221220 e!1449502))

(assert (=> start!221220 e!1449493))

(declare-fun b!2263928 () Bool)

(declare-fun tp!716082 () Bool)

(assert (=> b!2263928 (= e!1449494 (and tp_is_empty!10467 tp!716082))))

(declare-fun b!2263951 () Bool)

(declare-fun res!967679 () Bool)

(assert (=> b!2263951 (=> (not res!967679) (not e!1449515))))

(assert (=> b!2263951 (= res!967679 (not (= r!2363 otherR!12)))))

(assert (=> b!2263952 (= e!1449499 (and tp!716070 tp!716071))))

(assert (= (and start!221220 res!967686) b!2263945))

(assert (= (and b!2263945 res!967675) b!2263941))

(assert (= (and b!2263941 res!967683) b!2263944))

(assert (= (and b!2263944 res!967681) b!2263922))

(assert (= (and b!2263922 res!967682) b!2263936))

(assert (= (and b!2263936 res!967672) b!2263933))

(assert (= (and b!2263933 (not res!967676)) b!2263926))

(assert (= (and b!2263933 res!967671) b!2263940))

(assert (= (and b!2263940 (not res!967684)) b!2263939))

(assert (= (and b!2263940 res!967678) b!2263921))

(assert (= (and b!2263921 res!967685) b!2263951))

(assert (= (and b!2263951 res!967679) b!2263934))

(assert (= (and b!2263934 res!967669) b!2263930))

(assert (= (and b!2263934 (not res!967680)) b!2263923))

(assert (= (and b!2263923 (not res!967677)) b!2263942))

(assert (= (and b!2263942 c!359687) b!2263920))

(assert (= (and b!2263942 (not c!359687)) b!2263946))

(assert (= (and b!2263942 (not res!967673)) b!2263927))

(assert (= (and b!2263927 (not res!967670)) b!2263925))

(assert (= (and b!2263925 (not res!967674)) b!2263931))

(assert (= (and start!221220 ((_ is Cons!26874) input!1722)) b!2263937))

(assert (= b!2263924 b!2263943))

(assert (= start!221220 b!2263924))

(assert (= (and start!221220 ((_ is Cons!26874) suffix!886)) b!2263932))

(assert (= (and start!221220 ((_ is Cons!26874) otherP!12)) b!2263928))

(assert (= b!2263949 b!2263938))

(assert (= b!2263948 b!2263949))

(assert (= (and start!221220 ((_ is Cons!26875) rules!1750)) b!2263948))

(assert (= b!2263919 b!2263950))

(assert (= start!221220 b!2263919))

(assert (= b!2263947 b!2263952))

(assert (= b!2263929 b!2263947))

(assert (= b!2263935 b!2263929))

(assert (= (and start!221220 ((_ is Cons!26876) tokens!456)) b!2263935))

(declare-fun m!2693373 () Bool)

(assert (=> b!2263933 m!2693373))

(declare-fun m!2693375 () Bool)

(assert (=> b!2263919 m!2693375))

(declare-fun m!2693377 () Bool)

(assert (=> b!2263919 m!2693377))

(declare-fun m!2693379 () Bool)

(assert (=> b!2263930 m!2693379))

(assert (=> b!2263930 m!2693379))

(declare-fun m!2693381 () Bool)

(assert (=> b!2263930 m!2693381))

(assert (=> b!2263930 m!2693381))

(declare-fun m!2693383 () Bool)

(assert (=> b!2263930 m!2693383))

(assert (=> b!2263930 m!2693383))

(declare-fun m!2693385 () Bool)

(assert (=> b!2263930 m!2693385))

(declare-fun m!2693387 () Bool)

(assert (=> b!2263931 m!2693387))

(assert (=> b!2263939 m!2693379))

(declare-fun m!2693389 () Bool)

(assert (=> b!2263929 m!2693389))

(declare-fun m!2693391 () Bool)

(assert (=> b!2263923 m!2693391))

(declare-fun m!2693393 () Bool)

(assert (=> b!2263923 m!2693393))

(declare-fun m!2693395 () Bool)

(assert (=> b!2263923 m!2693395))

(declare-fun m!2693397 () Bool)

(assert (=> b!2263923 m!2693397))

(declare-fun m!2693399 () Bool)

(assert (=> b!2263949 m!2693399))

(declare-fun m!2693401 () Bool)

(assert (=> b!2263949 m!2693401))

(declare-fun m!2693403 () Bool)

(assert (=> b!2263922 m!2693403))

(declare-fun m!2693405 () Bool)

(assert (=> b!2263920 m!2693405))

(assert (=> b!2263926 m!2693379))

(assert (=> b!2263926 m!2693379))

(assert (=> b!2263926 m!2693381))

(assert (=> b!2263926 m!2693381))

(declare-fun m!2693407 () Bool)

(assert (=> b!2263926 m!2693407))

(declare-fun m!2693409 () Bool)

(assert (=> b!2263926 m!2693409))

(declare-fun m!2693411 () Bool)

(assert (=> b!2263921 m!2693411))

(declare-fun m!2693413 () Bool)

(assert (=> b!2263927 m!2693413))

(declare-fun m!2693415 () Bool)

(assert (=> b!2263927 m!2693415))

(declare-fun m!2693417 () Bool)

(assert (=> b!2263927 m!2693417))

(declare-fun m!2693419 () Bool)

(assert (=> b!2263927 m!2693419))

(declare-fun m!2693421 () Bool)

(assert (=> b!2263927 m!2693421))

(declare-fun m!2693423 () Bool)

(assert (=> b!2263927 m!2693423))

(declare-fun m!2693425 () Bool)

(assert (=> b!2263927 m!2693425))

(assert (=> b!2263927 m!2693423))

(declare-fun m!2693427 () Bool)

(assert (=> b!2263927 m!2693427))

(declare-fun m!2693429 () Bool)

(assert (=> b!2263927 m!2693429))

(assert (=> b!2263927 m!2693415))

(declare-fun m!2693431 () Bool)

(assert (=> b!2263944 m!2693431))

(declare-fun m!2693433 () Bool)

(assert (=> b!2263945 m!2693433))

(declare-fun m!2693435 () Bool)

(assert (=> b!2263936 m!2693435))

(declare-fun m!2693437 () Bool)

(assert (=> b!2263936 m!2693437))

(declare-fun m!2693439 () Bool)

(assert (=> b!2263936 m!2693439))

(assert (=> b!2263936 m!2693439))

(declare-fun m!2693441 () Bool)

(assert (=> b!2263936 m!2693441))

(declare-fun m!2693443 () Bool)

(assert (=> b!2263947 m!2693443))

(declare-fun m!2693445 () Bool)

(assert (=> b!2263947 m!2693445))

(declare-fun m!2693447 () Bool)

(assert (=> b!2263934 m!2693447))

(declare-fun m!2693449 () Bool)

(assert (=> b!2263934 m!2693449))

(declare-fun m!2693451 () Bool)

(assert (=> b!2263941 m!2693451))

(declare-fun m!2693453 () Bool)

(assert (=> b!2263935 m!2693453))

(declare-fun m!2693455 () Bool)

(assert (=> b!2263924 m!2693455))

(declare-fun m!2693457 () Bool)

(assert (=> b!2263924 m!2693457))

(check-sat b_and!178005 (not b_next!67621) (not b!2263932) (not b!2263922) (not b_next!67615) b_and!178007 (not b!2263945) (not b!2263948) (not b_next!67625) (not b!2263923) tp_is_empty!10467 (not b!2263947) (not b_next!67617) (not b!2263919) (not b!2263928) (not b!2263924) b_and!178001 (not b!2263927) (not b_next!67627) (not b!2263936) (not b!2263930) (not b!2263929) (not b!2263937) b_and!178003 (not b_next!67613) (not b_next!67623) (not b!2263933) b_and!177997 b_and!177999 (not b!2263949) (not b_next!67619) b_and!177995 (not b!2263920) (not b!2263941) (not b!2263944) (not b!2263935) (not b!2263931) (not b!2263921) b_and!177993 (not b!2263934) (not b!2263939) (not b!2263926))
(check-sat b_and!178005 (not b_next!67617) (not b_next!67621) (not b_next!67615) b_and!178007 b_and!178001 (not b_next!67627) b_and!178003 (not b_next!67625) b_and!177997 b_and!177995 b_and!177993 (not b_next!67613) (not b_next!67623) b_and!177999 (not b_next!67619))
