; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393578 () Bool)

(assert start!393578)

(declare-fun b!4140907 () Bool)

(declare-fun b_free!117947 () Bool)

(declare-fun b_next!118651 () Bool)

(assert (=> b!4140907 (= b_free!117947 (not b_next!118651))))

(declare-fun tp!1262310 () Bool)

(declare-fun b_and!321577 () Bool)

(assert (=> b!4140907 (= tp!1262310 b_and!321577)))

(declare-fun b_free!117949 () Bool)

(declare-fun b_next!118653 () Bool)

(assert (=> b!4140907 (= b_free!117949 (not b_next!118653))))

(declare-fun tp!1262314 () Bool)

(declare-fun b_and!321579 () Bool)

(assert (=> b!4140907 (= tp!1262314 b_and!321579)))

(declare-fun b!4140904 () Bool)

(declare-fun b_free!117951 () Bool)

(declare-fun b_next!118655 () Bool)

(assert (=> b!4140904 (= b_free!117951 (not b_next!118655))))

(declare-fun tp!1262313 () Bool)

(declare-fun b_and!321581 () Bool)

(assert (=> b!4140904 (= tp!1262313 b_and!321581)))

(declare-fun b_free!117953 () Bool)

(declare-fun b_next!118657 () Bool)

(assert (=> b!4140904 (= b_free!117953 (not b_next!118657))))

(declare-fun tp!1262307 () Bool)

(declare-fun b_and!321583 () Bool)

(assert (=> b!4140904 (= tp!1262307 b_and!321583)))

(declare-fun b!4140914 () Bool)

(declare-fun b_free!117955 () Bool)

(declare-fun b_next!118659 () Bool)

(assert (=> b!4140914 (= b_free!117955 (not b_next!118659))))

(declare-fun tp!1262317 () Bool)

(declare-fun b_and!321585 () Bool)

(assert (=> b!4140914 (= tp!1262317 b_and!321585)))

(declare-fun b_free!117957 () Bool)

(declare-fun b_next!118661 () Bool)

(assert (=> b!4140914 (= b_free!117957 (not b_next!118661))))

(declare-fun tp!1262318 () Bool)

(declare-fun b_and!321587 () Bool)

(assert (=> b!4140914 (= tp!1262318 b_and!321587)))

(declare-fun b!4140898 () Bool)

(declare-fun e!2569357 () Bool)

(declare-fun lt!1476824 () Int)

(declare-datatypes ((C!24752 0))(
  ( (C!24753 (val!14486 Int)) )
))
(declare-datatypes ((List!45040 0))(
  ( (Nil!44916) (Cons!44916 (h!50336 C!24752) (t!342367 List!45040)) )
))
(declare-fun input!3238 () List!45040)

(declare-fun size!33274 (List!45040) Int)

(assert (=> b!4140898 (= e!2569357 (<= lt!1476824 (size!33274 input!3238)))))

(declare-fun b!4140899 () Bool)

(declare-fun e!2569345 () Bool)

(declare-fun e!2569343 () Bool)

(assert (=> b!4140899 (= e!2569345 e!2569343)))

(declare-fun res!1694100 () Bool)

(assert (=> b!4140899 (=> (not res!1694100) (not e!2569343))))

(declare-datatypes ((IArray!27183 0))(
  ( (IArray!27184 (innerList!13649 List!45040)) )
))
(declare-datatypes ((Conc!13589 0))(
  ( (Node!13589 (left!33632 Conc!13589) (right!33962 Conc!13589) (csize!27408 Int) (cheight!13800 Int)) (Leaf!20993 (xs!16895 IArray!27183) (csize!27409 Int)) (Empty!13589) )
))
(declare-datatypes ((BalanceConc!26772 0))(
  ( (BalanceConc!26773 (c!709838 Conc!13589)) )
))
(declare-datatypes ((List!45041 0))(
  ( (Nil!44917) (Cons!44917 (h!50337 (_ BitVec 16)) (t!342368 List!45041)) )
))
(declare-datatypes ((TokenValue!7608 0))(
  ( (FloatLiteralValue!15216 (text!53701 List!45041)) (TokenValueExt!7607 (__x!27433 Int)) (Broken!38040 (value!230801 List!45041)) (Object!7731) (End!7608) (Def!7608) (Underscore!7608) (Match!7608) (Else!7608) (Error!7608) (Case!7608) (If!7608) (Extends!7608) (Abstract!7608) (Class!7608) (Val!7608) (DelimiterValue!15216 (del!7668 List!45041)) (KeywordValue!7614 (value!230802 List!45041)) (CommentValue!15216 (value!230803 List!45041)) (WhitespaceValue!15216 (value!230804 List!45041)) (IndentationValue!7608 (value!230805 List!45041)) (String!51789) (Int32!7608) (Broken!38041 (value!230806 List!45041)) (Boolean!7609) (Unit!64216) (OperatorValue!7611 (op!7668 List!45041)) (IdentifierValue!15216 (value!230807 List!45041)) (IdentifierValue!15217 (value!230808 List!45041)) (WhitespaceValue!15217 (value!230809 List!45041)) (True!15216) (False!15216) (Broken!38042 (value!230810 List!45041)) (Broken!38043 (value!230811 List!45041)) (True!15217) (RightBrace!7608) (RightBracket!7608) (Colon!7608) (Null!7608) (Comma!7608) (LeftBracket!7608) (False!15217) (LeftBrace!7608) (ImaginaryLiteralValue!7608 (text!53702 List!45041)) (StringLiteralValue!22824 (value!230812 List!45041)) (EOFValue!7608 (value!230813 List!45041)) (IdentValue!7608 (value!230814 List!45041)) (DelimiterValue!15217 (value!230815 List!45041)) (DedentValue!7608 (value!230816 List!45041)) (NewLineValue!7608 (value!230817 List!45041)) (IntegerValue!22824 (value!230818 (_ BitVec 32)) (text!53703 List!45041)) (IntegerValue!22825 (value!230819 Int) (text!53704 List!45041)) (Times!7608) (Or!7608) (Equal!7608) (Minus!7608) (Broken!38044 (value!230820 List!45041)) (And!7608) (Div!7608) (LessEqual!7608) (Mod!7608) (Concat!19891) (Not!7608) (Plus!7608) (SpaceValue!7608 (value!230821 List!45041)) (IntegerValue!22826 (value!230822 Int) (text!53705 List!45041)) (StringLiteralValue!22825 (text!53706 List!45041)) (FloatLiteralValue!15217 (text!53707 List!45041)) (BytesLiteralValue!7608 (value!230823 List!45041)) (CommentValue!15217 (value!230824 List!45041)) (StringLiteralValue!22826 (value!230825 List!45041)) (ErrorTokenValue!7608 (msg!7669 List!45041)) )
))
(declare-datatypes ((Regex!12283 0))(
  ( (ElementMatch!12283 (c!709839 C!24752)) (Concat!19892 (regOne!25078 Regex!12283) (regTwo!25078 Regex!12283)) (EmptyExpr!12283) (Star!12283 (reg!12612 Regex!12283)) (EmptyLang!12283) (Union!12283 (regOne!25079 Regex!12283) (regTwo!25079 Regex!12283)) )
))
(declare-datatypes ((String!51790 0))(
  ( (String!51791 (value!230826 String)) )
))
(declare-datatypes ((TokenValueInjection!14644 0))(
  ( (TokenValueInjection!14645 (toValue!10042 Int) (toChars!9901 Int)) )
))
(declare-datatypes ((Rule!14556 0))(
  ( (Rule!14557 (regex!7378 Regex!12283) (tag!8238 String!51790) (isSeparator!7378 Bool) (transformation!7378 TokenValueInjection!14644)) )
))
(declare-datatypes ((List!45042 0))(
  ( (Nil!44918) (Cons!44918 (h!50338 Rule!14556) (t!342369 List!45042)) )
))
(declare-fun rules!3756 () List!45042)

(declare-fun p!2912 () List!45040)

(declare-datatypes ((LexerInterface!6967 0))(
  ( (LexerInterfaceExt!6964 (__x!27434 Int)) (Lexer!6965) )
))
(declare-fun thiss!25645 () LexerInterface!6967)

(declare-fun lt!1476814 () TokenValue!7608)

(declare-fun r!4008 () Rule!14556)

(declare-datatypes ((Token!13686 0))(
  ( (Token!13687 (value!230827 TokenValue!7608) (rule!10488 Rule!14556) (size!33275 Int) (originalCharacters!7874 List!45040)) )
))
(declare-datatypes ((tuple2!43298 0))(
  ( (tuple2!43299 (_1!24783 Token!13686) (_2!24783 List!45040)) )
))
(declare-datatypes ((Option!9684 0))(
  ( (None!9683) (Some!9683 (v!40321 tuple2!43298)) )
))
(declare-fun maxPrefix!4157 (LexerInterface!6967 List!45042 List!45040) Option!9684)

(declare-fun getSuffix!2640 (List!45040 List!45040) List!45040)

(assert (=> b!4140899 (= res!1694100 (= (maxPrefix!4157 thiss!25645 rules!3756 input!3238) (Some!9683 (tuple2!43299 (Token!13687 lt!1476814 r!4008 lt!1476824 p!2912) (getSuffix!2640 input!3238 p!2912)))))))

(assert (=> b!4140899 (= lt!1476824 (size!33274 p!2912))))

(declare-fun lt!1476815 () BalanceConc!26772)

(declare-fun apply!10451 (TokenValueInjection!14644 BalanceConc!26772) TokenValue!7608)

(assert (=> b!4140899 (= lt!1476814 (apply!10451 (transformation!7378 r!4008) lt!1476815))))

(declare-datatypes ((Unit!64217 0))(
  ( (Unit!64218) )
))
(declare-fun lt!1476821 () Unit!64217)

(declare-fun lemmaSemiInverse!2236 (TokenValueInjection!14644 BalanceConc!26772) Unit!64217)

(assert (=> b!4140899 (= lt!1476821 (lemmaSemiInverse!2236 (transformation!7378 r!4008) lt!1476815))))

(declare-fun seqFromList!5495 (List!45040) BalanceConc!26772)

(assert (=> b!4140899 (= lt!1476815 (seqFromList!5495 p!2912))))

(declare-fun b!4140900 () Bool)

(declare-fun res!1694096 () Bool)

(assert (=> b!4140900 (=> (not res!1694096) (not e!2569345))))

(declare-fun isEmpty!26787 (List!45042) Bool)

(assert (=> b!4140900 (= res!1694096 (not (isEmpty!26787 rules!3756)))))

(declare-fun b!4140901 () Bool)

(declare-fun res!1694095 () Bool)

(assert (=> b!4140901 (=> (not res!1694095) (not e!2569343))))

(declare-fun matchR!6112 (Regex!12283 List!45040) Bool)

(assert (=> b!4140901 (= res!1694095 (matchR!6112 (regex!7378 r!4008) p!2912))))

(declare-fun b!4140902 () Bool)

(declare-fun e!2569359 () Bool)

(declare-fun tp_is_empty!21489 () Bool)

(declare-fun tp!1262315 () Bool)

(assert (=> b!4140902 (= e!2569359 (and tp_is_empty!21489 tp!1262315))))

(declare-fun b!4140903 () Bool)

(declare-fun e!2569353 () Bool)

(assert (=> b!4140903 (= e!2569353 e!2569357)))

(declare-fun res!1694094 () Bool)

(assert (=> b!4140903 (=> res!1694094 e!2569357)))

(declare-fun lt!1476827 () List!45040)

(assert (=> b!4140903 (= res!1694094 (not (= lt!1476827 input!3238)))))

(declare-fun lt!1476822 () List!45040)

(declare-fun isPrefix!4313 (List!45040 List!45040) Bool)

(assert (=> b!4140903 (isPrefix!4313 lt!1476822 lt!1476827)))

(declare-fun lt!1476816 () tuple2!43298)

(declare-fun ++!11618 (List!45040 List!45040) List!45040)

(assert (=> b!4140903 (= lt!1476827 (++!11618 lt!1476822 (_2!24783 lt!1476816)))))

(declare-fun lt!1476823 () Unit!64217)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2942 (List!45040 List!45040) Unit!64217)

(assert (=> b!4140903 (= lt!1476823 (lemmaConcatTwoListThenFirstIsPrefix!2942 lt!1476822 (_2!24783 lt!1476816)))))

(declare-fun lt!1476820 () BalanceConc!26772)

(declare-fun list!16451 (BalanceConc!26772) List!45040)

(assert (=> b!4140903 (= lt!1476822 (list!16451 lt!1476820))))

(declare-fun e!2569346 () Bool)

(assert (=> b!4140904 (= e!2569346 (and tp!1262313 tp!1262307))))

(declare-fun b!4140905 () Bool)

(declare-fun e!2569344 () Bool)

(assert (=> b!4140905 (= e!2569344 e!2569353)))

(declare-fun res!1694093 () Bool)

(assert (=> b!4140905 (=> res!1694093 e!2569353)))

(declare-fun lt!1476826 () Int)

(assert (=> b!4140905 (= res!1694093 (or (> lt!1476826 lt!1476824) (>= lt!1476826 lt!1476824)))))

(declare-fun size!33276 (BalanceConc!26772) Int)

(assert (=> b!4140905 (= lt!1476826 (size!33276 lt!1476820))))

(declare-fun charsOf!4977 (Token!13686) BalanceConc!26772)

(assert (=> b!4140905 (= lt!1476820 (charsOf!4977 (_1!24783 lt!1476816)))))

(declare-fun lt!1476825 () Option!9684)

(declare-fun get!14662 (Option!9684) tuple2!43298)

(assert (=> b!4140905 (= lt!1476816 (get!14662 lt!1476825))))

(declare-fun b!4140906 () Bool)

(declare-fun e!2569349 () Bool)

(assert (=> b!4140906 (= e!2569349 e!2569344)))

(declare-fun res!1694090 () Bool)

(assert (=> b!4140906 (=> res!1694090 e!2569344)))

(declare-fun isEmpty!26788 (Option!9684) Bool)

(assert (=> b!4140906 (= res!1694090 (isEmpty!26788 lt!1476825))))

(declare-fun rBis!149 () Rule!14556)

(declare-fun maxPrefixOneRule!3096 (LexerInterface!6967 Rule!14556 List!45040) Option!9684)

(assert (=> b!4140906 (= lt!1476825 (maxPrefixOneRule!3096 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4140906 (not (= rBis!149 r!4008))))

(declare-fun lt!1476819 () Unit!64217)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!76 (LexerInterface!6967 List!45042 Rule!14556 Rule!14556) Unit!64217)

(assert (=> b!4140906 (= lt!1476819 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!76 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9058 (List!45042 Rule!14556) Bool)

(declare-fun tail!6549 (List!45042) List!45042)

(assert (=> b!4140906 (contains!9058 (tail!6549 rules!3756) r!4008)))

(declare-fun lt!1476817 () Unit!64217)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!82 (List!45042 Rule!14556 Rule!14556) Unit!64217)

(assert (=> b!4140906 (= lt!1476817 (lemmaGetIndexBiggerAndHeadEqThenTailContains!82 rules!3756 rBis!149 r!4008))))

(declare-fun e!2569347 () Bool)

(assert (=> b!4140907 (= e!2569347 (and tp!1262310 tp!1262314))))

(declare-fun b!4140908 () Bool)

(declare-fun res!1694097 () Bool)

(assert (=> b!4140908 (=> (not res!1694097) (not e!2569343))))

(declare-fun ruleValid!3184 (LexerInterface!6967 Rule!14556) Bool)

(assert (=> b!4140908 (= res!1694097 (ruleValid!3184 thiss!25645 r!4008))))

(declare-fun b!4140909 () Bool)

(declare-fun res!1694102 () Bool)

(assert (=> b!4140909 (=> (not res!1694102) (not e!2569345))))

(declare-fun rulesInvariant!6264 (LexerInterface!6967 List!45042) Bool)

(assert (=> b!4140909 (= res!1694102 (rulesInvariant!6264 thiss!25645 rules!3756))))

(declare-fun b!4140910 () Bool)

(declare-fun e!2569350 () Bool)

(declare-fun tp!1262309 () Bool)

(declare-fun inv!59520 (String!51790) Bool)

(declare-fun inv!59522 (TokenValueInjection!14644) Bool)

(assert (=> b!4140910 (= e!2569350 (and tp!1262309 (inv!59520 (tag!8238 rBis!149)) (inv!59522 (transformation!7378 rBis!149)) e!2569346))))

(declare-fun b!4140911 () Bool)

(declare-fun res!1694091 () Bool)

(assert (=> b!4140911 (=> (not res!1694091) (not e!2569345))))

(declare-fun isEmpty!26789 (List!45040) Bool)

(assert (=> b!4140911 (= res!1694091 (not (isEmpty!26789 p!2912)))))

(declare-fun b!4140912 () Bool)

(declare-fun res!1694092 () Bool)

(assert (=> b!4140912 (=> (not res!1694092) (not e!2569345))))

(assert (=> b!4140912 (= res!1694092 (contains!9058 rules!3756 rBis!149))))

(declare-fun b!4140913 () Bool)

(declare-fun e!2569354 () Bool)

(declare-fun e!2569352 () Bool)

(declare-fun tp!1262311 () Bool)

(assert (=> b!4140913 (= e!2569354 (and e!2569352 tp!1262311))))

(declare-fun e!2569355 () Bool)

(assert (=> b!4140914 (= e!2569355 (and tp!1262317 tp!1262318))))

(declare-fun b!4140915 () Bool)

(declare-fun e!2569356 () Bool)

(declare-fun tp!1262316 () Bool)

(assert (=> b!4140915 (= e!2569356 (and tp_is_empty!21489 tp!1262316))))

(declare-fun b!4140916 () Bool)

(assert (=> b!4140916 (= e!2569343 (not e!2569349))))

(declare-fun res!1694101 () Bool)

(assert (=> b!4140916 (=> res!1694101 e!2569349)))

(get-info :version)

(assert (=> b!4140916 (= res!1694101 (or (not ((_ is Cons!44918) rules!3756)) (not (= (h!50338 rules!3756) rBis!149))))))

(declare-fun lt!1476828 () Unit!64217)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2224 (LexerInterface!6967 Rule!14556 List!45042) Unit!64217)

(assert (=> b!4140916 (= lt!1476828 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2224 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4140916 (ruleValid!3184 thiss!25645 rBis!149)))

(declare-fun lt!1476818 () Unit!64217)

(assert (=> b!4140916 (= lt!1476818 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2224 thiss!25645 rBis!149 rules!3756))))

(declare-fun res!1694104 () Bool)

(assert (=> start!393578 (=> (not res!1694104) (not e!2569345))))

(assert (=> start!393578 (= res!1694104 ((_ is Lexer!6965) thiss!25645))))

(assert (=> start!393578 e!2569345))

(assert (=> start!393578 e!2569354))

(assert (=> start!393578 e!2569356))

(assert (=> start!393578 true))

(declare-fun e!2569351 () Bool)

(assert (=> start!393578 e!2569351))

(assert (=> start!393578 e!2569359))

(assert (=> start!393578 e!2569350))

(declare-fun b!4140917 () Bool)

(declare-fun res!1694099 () Bool)

(assert (=> b!4140917 (=> (not res!1694099) (not e!2569345))))

(assert (=> b!4140917 (= res!1694099 (contains!9058 rules!3756 r!4008))))

(declare-fun b!4140918 () Bool)

(declare-fun tp!1262308 () Bool)

(assert (=> b!4140918 (= e!2569352 (and tp!1262308 (inv!59520 (tag!8238 (h!50338 rules!3756))) (inv!59522 (transformation!7378 (h!50338 rules!3756))) e!2569347))))

(declare-fun b!4140919 () Bool)

(declare-fun res!1694103 () Bool)

(assert (=> b!4140919 (=> res!1694103 e!2569357)))

(assert (=> b!4140919 (= res!1694103 (not (isPrefix!4313 lt!1476822 input!3238)))))

(declare-fun b!4140920 () Bool)

(declare-fun res!1694105 () Bool)

(assert (=> b!4140920 (=> (not res!1694105) (not e!2569345))))

(assert (=> b!4140920 (= res!1694105 (isPrefix!4313 p!2912 input!3238))))

(declare-fun b!4140921 () Bool)

(declare-fun res!1694098 () Bool)

(assert (=> b!4140921 (=> (not res!1694098) (not e!2569343))))

(declare-fun getIndex!724 (List!45042 Rule!14556) Int)

(assert (=> b!4140921 (= res!1694098 (< (getIndex!724 rules!3756 rBis!149) (getIndex!724 rules!3756 r!4008)))))

(declare-fun b!4140922 () Bool)

(declare-fun tp!1262312 () Bool)

(assert (=> b!4140922 (= e!2569351 (and tp!1262312 (inv!59520 (tag!8238 r!4008)) (inv!59522 (transformation!7378 r!4008)) e!2569355))))

(assert (= (and start!393578 res!1694104) b!4140920))

(assert (= (and b!4140920 res!1694105) b!4140900))

(assert (= (and b!4140900 res!1694096) b!4140909))

(assert (= (and b!4140909 res!1694102) b!4140917))

(assert (= (and b!4140917 res!1694099) b!4140912))

(assert (= (and b!4140912 res!1694092) b!4140911))

(assert (= (and b!4140911 res!1694091) b!4140899))

(assert (= (and b!4140899 res!1694100) b!4140901))

(assert (= (and b!4140901 res!1694095) b!4140921))

(assert (= (and b!4140921 res!1694098) b!4140908))

(assert (= (and b!4140908 res!1694097) b!4140916))

(assert (= (and b!4140916 (not res!1694101)) b!4140906))

(assert (= (and b!4140906 (not res!1694090)) b!4140905))

(assert (= (and b!4140905 (not res!1694093)) b!4140903))

(assert (= (and b!4140903 (not res!1694094)) b!4140919))

(assert (= (and b!4140919 (not res!1694103)) b!4140898))

(assert (= b!4140918 b!4140907))

(assert (= b!4140913 b!4140918))

(assert (= (and start!393578 ((_ is Cons!44918) rules!3756)) b!4140913))

(assert (= (and start!393578 ((_ is Cons!44916) p!2912)) b!4140915))

(assert (= b!4140922 b!4140914))

(assert (= start!393578 b!4140922))

(assert (= (and start!393578 ((_ is Cons!44916) input!3238)) b!4140902))

(assert (= b!4140910 b!4140904))

(assert (= start!393578 b!4140910))

(declare-fun m!4737353 () Bool)

(assert (=> b!4140898 m!4737353))

(declare-fun m!4737355 () Bool)

(assert (=> b!4140909 m!4737355))

(declare-fun m!4737357 () Bool)

(assert (=> b!4140917 m!4737357))

(declare-fun m!4737359 () Bool)

(assert (=> b!4140912 m!4737359))

(declare-fun m!4737361 () Bool)

(assert (=> b!4140910 m!4737361))

(declare-fun m!4737363 () Bool)

(assert (=> b!4140910 m!4737363))

(declare-fun m!4737365 () Bool)

(assert (=> b!4140921 m!4737365))

(declare-fun m!4737367 () Bool)

(assert (=> b!4140921 m!4737367))

(declare-fun m!4737369 () Bool)

(assert (=> b!4140920 m!4737369))

(declare-fun m!4737371 () Bool)

(assert (=> b!4140900 m!4737371))

(declare-fun m!4737373 () Bool)

(assert (=> b!4140908 m!4737373))

(declare-fun m!4737375 () Bool)

(assert (=> b!4140899 m!4737375))

(declare-fun m!4737377 () Bool)

(assert (=> b!4140899 m!4737377))

(declare-fun m!4737379 () Bool)

(assert (=> b!4140899 m!4737379))

(declare-fun m!4737381 () Bool)

(assert (=> b!4140899 m!4737381))

(declare-fun m!4737383 () Bool)

(assert (=> b!4140899 m!4737383))

(declare-fun m!4737385 () Bool)

(assert (=> b!4140899 m!4737385))

(declare-fun m!4737387 () Bool)

(assert (=> b!4140922 m!4737387))

(declare-fun m!4737389 () Bool)

(assert (=> b!4140922 m!4737389))

(declare-fun m!4737391 () Bool)

(assert (=> b!4140906 m!4737391))

(declare-fun m!4737393 () Bool)

(assert (=> b!4140906 m!4737393))

(declare-fun m!4737395 () Bool)

(assert (=> b!4140906 m!4737395))

(declare-fun m!4737397 () Bool)

(assert (=> b!4140906 m!4737397))

(assert (=> b!4140906 m!4737393))

(declare-fun m!4737399 () Bool)

(assert (=> b!4140906 m!4737399))

(declare-fun m!4737401 () Bool)

(assert (=> b!4140906 m!4737401))

(declare-fun m!4737403 () Bool)

(assert (=> b!4140905 m!4737403))

(declare-fun m!4737405 () Bool)

(assert (=> b!4140905 m!4737405))

(declare-fun m!4737407 () Bool)

(assert (=> b!4140905 m!4737407))

(declare-fun m!4737409 () Bool)

(assert (=> b!4140901 m!4737409))

(declare-fun m!4737411 () Bool)

(assert (=> b!4140903 m!4737411))

(declare-fun m!4737413 () Bool)

(assert (=> b!4140903 m!4737413))

(declare-fun m!4737415 () Bool)

(assert (=> b!4140903 m!4737415))

(declare-fun m!4737417 () Bool)

(assert (=> b!4140903 m!4737417))

(declare-fun m!4737419 () Bool)

(assert (=> b!4140919 m!4737419))

(declare-fun m!4737421 () Bool)

(assert (=> b!4140916 m!4737421))

(declare-fun m!4737423 () Bool)

(assert (=> b!4140916 m!4737423))

(declare-fun m!4737425 () Bool)

(assert (=> b!4140916 m!4737425))

(declare-fun m!4737427 () Bool)

(assert (=> b!4140918 m!4737427))

(declare-fun m!4737429 () Bool)

(assert (=> b!4140918 m!4737429))

(declare-fun m!4737431 () Bool)

(assert (=> b!4140911 m!4737431))

(check-sat (not b!4140905) (not b_next!118657) (not b!4140899) (not b!4140922) (not b!4140906) (not b_next!118655) (not b!4140911) (not b!4140908) (not b_next!118653) (not b!4140919) b_and!321581 b_and!321577 (not b!4140918) (not b_next!118661) (not b!4140901) b_and!321585 (not b!4140917) (not b!4140921) (not b_next!118651) (not b!4140910) (not b!4140915) (not b!4140913) (not b!4140920) (not b!4140903) b_and!321583 (not b!4140916) tp_is_empty!21489 b_and!321587 (not b!4140912) b_and!321579 (not b!4140900) (not b!4140898) (not b!4140902) (not b_next!118659) (not b!4140909))
(check-sat (not b_next!118661) b_and!321585 (not b_next!118657) (not b_next!118651) b_and!321583 b_and!321587 (not b_next!118655) b_and!321579 (not b_next!118653) (not b_next!118659) b_and!321581 b_and!321577)
(get-model)

(declare-fun d!1225854 () Bool)

(declare-fun lt!1476831 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6939 (List!45042) (InoxSet Rule!14556))

(assert (=> d!1225854 (= lt!1476831 (select (content!6939 rules!3756) rBis!149))))

(declare-fun e!2569368 () Bool)

(assert (=> d!1225854 (= lt!1476831 e!2569368)))

(declare-fun res!1694122 () Bool)

(assert (=> d!1225854 (=> (not res!1694122) (not e!2569368))))

(assert (=> d!1225854 (= res!1694122 ((_ is Cons!44918) rules!3756))))

(assert (=> d!1225854 (= (contains!9058 rules!3756 rBis!149) lt!1476831)))

(declare-fun b!4140930 () Bool)

(declare-fun e!2569369 () Bool)

(assert (=> b!4140930 (= e!2569368 e!2569369)))

(declare-fun res!1694123 () Bool)

(assert (=> b!4140930 (=> res!1694123 e!2569369)))

(assert (=> b!4140930 (= res!1694123 (= (h!50338 rules!3756) rBis!149))))

(declare-fun b!4140931 () Bool)

(assert (=> b!4140931 (= e!2569369 (contains!9058 (t!342369 rules!3756) rBis!149))))

(assert (= (and d!1225854 res!1694122) b!4140930))

(assert (= (and b!4140930 (not res!1694123)) b!4140931))

(declare-fun m!4737437 () Bool)

(assert (=> d!1225854 m!4737437))

(declare-fun m!4737439 () Bool)

(assert (=> d!1225854 m!4737439))

(declare-fun m!4737441 () Bool)

(assert (=> b!4140931 m!4737441))

(assert (=> b!4140912 d!1225854))

(declare-fun d!1225860 () Bool)

(assert (=> d!1225860 (= (inv!59520 (tag!8238 r!4008)) (= (mod (str.len (value!230826 (tag!8238 r!4008))) 2) 0))))

(assert (=> b!4140922 d!1225860))

(declare-fun d!1225862 () Bool)

(declare-fun res!1694135 () Bool)

(declare-fun e!2569381 () Bool)

(assert (=> d!1225862 (=> (not res!1694135) (not e!2569381))))

(declare-fun semiInverseModEq!3187 (Int Int) Bool)

(assert (=> d!1225862 (= res!1694135 (semiInverseModEq!3187 (toChars!9901 (transformation!7378 r!4008)) (toValue!10042 (transformation!7378 r!4008))))))

(assert (=> d!1225862 (= (inv!59522 (transformation!7378 r!4008)) e!2569381)))

(declare-fun b!4140943 () Bool)

(declare-fun equivClasses!3086 (Int Int) Bool)

(assert (=> b!4140943 (= e!2569381 (equivClasses!3086 (toChars!9901 (transformation!7378 r!4008)) (toValue!10042 (transformation!7378 r!4008))))))

(assert (= (and d!1225862 res!1694135) b!4140943))

(declare-fun m!4737453 () Bool)

(assert (=> d!1225862 m!4737453))

(declare-fun m!4737455 () Bool)

(assert (=> b!4140943 m!4737455))

(assert (=> b!4140922 d!1225862))

(declare-fun b!4140997 () Bool)

(declare-fun e!2569415 () Bool)

(declare-fun e!2569410 () Bool)

(assert (=> b!4140997 (= e!2569415 e!2569410)))

(declare-fun res!1694161 () Bool)

(assert (=> b!4140997 (=> res!1694161 e!2569410)))

(declare-fun call!290503 () Bool)

(assert (=> b!4140997 (= res!1694161 call!290503)))

(declare-fun d!1225868 () Bool)

(declare-fun e!2569414 () Bool)

(assert (=> d!1225868 e!2569414))

(declare-fun c!709853 () Bool)

(assert (=> d!1225868 (= c!709853 ((_ is EmptyExpr!12283) (regex!7378 r!4008)))))

(declare-fun lt!1476849 () Bool)

(declare-fun e!2569416 () Bool)

(assert (=> d!1225868 (= lt!1476849 e!2569416)))

(declare-fun c!709852 () Bool)

(assert (=> d!1225868 (= c!709852 (isEmpty!26789 p!2912))))

(declare-fun validRegex!5531 (Regex!12283) Bool)

(assert (=> d!1225868 (validRegex!5531 (regex!7378 r!4008))))

(assert (=> d!1225868 (= (matchR!6112 (regex!7378 r!4008) p!2912) lt!1476849)))

(declare-fun b!4140998 () Bool)

(declare-fun e!2569409 () Bool)

(assert (=> b!4140998 (= e!2569414 e!2569409)))

(declare-fun c!709854 () Bool)

(assert (=> b!4140998 (= c!709854 ((_ is EmptyLang!12283) (regex!7378 r!4008)))))

(declare-fun b!4140999 () Bool)

(declare-fun derivativeStep!3718 (Regex!12283 C!24752) Regex!12283)

(declare-fun head!8736 (List!45040) C!24752)

(declare-fun tail!6551 (List!45040) List!45040)

(assert (=> b!4140999 (= e!2569416 (matchR!6112 (derivativeStep!3718 (regex!7378 r!4008) (head!8736 p!2912)) (tail!6551 p!2912)))))

(declare-fun b!4141000 () Bool)

(declare-fun res!1694158 () Bool)

(assert (=> b!4141000 (=> res!1694158 e!2569410)))

(assert (=> b!4141000 (= res!1694158 (not (isEmpty!26789 (tail!6551 p!2912))))))

(declare-fun b!4141001 () Bool)

(declare-fun res!1694165 () Bool)

(declare-fun e!2569408 () Bool)

(assert (=> b!4141001 (=> (not res!1694165) (not e!2569408))))

(assert (=> b!4141001 (= res!1694165 (not call!290503))))

(declare-fun b!4141002 () Bool)

(declare-fun e!2569413 () Bool)

(assert (=> b!4141002 (= e!2569413 e!2569415)))

(declare-fun res!1694167 () Bool)

(assert (=> b!4141002 (=> (not res!1694167) (not e!2569415))))

(assert (=> b!4141002 (= res!1694167 (not lt!1476849))))

(declare-fun b!4141003 () Bool)

(assert (=> b!4141003 (= e!2569408 (= (head!8736 p!2912) (c!709839 (regex!7378 r!4008))))))

(declare-fun b!4141004 () Bool)

(assert (=> b!4141004 (= e!2569409 (not lt!1476849))))

(declare-fun b!4141006 () Bool)

(declare-fun res!1694169 () Bool)

(assert (=> b!4141006 (=> res!1694169 e!2569413)))

(assert (=> b!4141006 (= res!1694169 (not ((_ is ElementMatch!12283) (regex!7378 r!4008))))))

(assert (=> b!4141006 (= e!2569409 e!2569413)))

(declare-fun b!4141008 () Bool)

(assert (=> b!4141008 (= e!2569410 (not (= (head!8736 p!2912) (c!709839 (regex!7378 r!4008)))))))

(declare-fun b!4141009 () Bool)

(declare-fun res!1694168 () Bool)

(assert (=> b!4141009 (=> (not res!1694168) (not e!2569408))))

(assert (=> b!4141009 (= res!1694168 (isEmpty!26789 (tail!6551 p!2912)))))

(declare-fun b!4141010 () Bool)

(declare-fun nullable!4323 (Regex!12283) Bool)

(assert (=> b!4141010 (= e!2569416 (nullable!4323 (regex!7378 r!4008)))))

(declare-fun b!4141011 () Bool)

(declare-fun res!1694162 () Bool)

(assert (=> b!4141011 (=> res!1694162 e!2569413)))

(assert (=> b!4141011 (= res!1694162 e!2569408)))

(declare-fun res!1694166 () Bool)

(assert (=> b!4141011 (=> (not res!1694166) (not e!2569408))))

(assert (=> b!4141011 (= res!1694166 lt!1476849)))

(declare-fun bm!290498 () Bool)

(assert (=> bm!290498 (= call!290503 (isEmpty!26789 p!2912))))

(declare-fun b!4141012 () Bool)

(assert (=> b!4141012 (= e!2569414 (= lt!1476849 call!290503))))

(assert (= (and d!1225868 c!709852) b!4141010))

(assert (= (and d!1225868 (not c!709852)) b!4140999))

(assert (= (and d!1225868 c!709853) b!4141012))

(assert (= (and d!1225868 (not c!709853)) b!4140998))

(assert (= (and b!4140998 c!709854) b!4141004))

(assert (= (and b!4140998 (not c!709854)) b!4141006))

(assert (= (and b!4141006 (not res!1694169)) b!4141011))

(assert (= (and b!4141011 res!1694166) b!4141001))

(assert (= (and b!4141001 res!1694165) b!4141009))

(assert (= (and b!4141009 res!1694168) b!4141003))

(assert (= (and b!4141011 (not res!1694162)) b!4141002))

(assert (= (and b!4141002 res!1694167) b!4140997))

(assert (= (and b!4140997 (not res!1694161)) b!4141000))

(assert (= (and b!4141000 (not res!1694158)) b!4141008))

(assert (= (or b!4141012 b!4140997 b!4141001) bm!290498))

(assert (=> d!1225868 m!4737431))

(declare-fun m!4737477 () Bool)

(assert (=> d!1225868 m!4737477))

(declare-fun m!4737479 () Bool)

(assert (=> b!4141003 m!4737479))

(declare-fun m!4737481 () Bool)

(assert (=> b!4141000 m!4737481))

(assert (=> b!4141000 m!4737481))

(declare-fun m!4737483 () Bool)

(assert (=> b!4141000 m!4737483))

(assert (=> b!4141008 m!4737479))

(assert (=> b!4140999 m!4737479))

(assert (=> b!4140999 m!4737479))

(declare-fun m!4737485 () Bool)

(assert (=> b!4140999 m!4737485))

(assert (=> b!4140999 m!4737481))

(assert (=> b!4140999 m!4737485))

(assert (=> b!4140999 m!4737481))

(declare-fun m!4737487 () Bool)

(assert (=> b!4140999 m!4737487))

(declare-fun m!4737489 () Bool)

(assert (=> b!4141010 m!4737489))

(assert (=> bm!290498 m!4737431))

(assert (=> b!4141009 m!4737481))

(assert (=> b!4141009 m!4737481))

(assert (=> b!4141009 m!4737483))

(assert (=> b!4140901 d!1225868))

(declare-fun d!1225882 () Bool)

(assert (=> d!1225882 (= (isEmpty!26787 rules!3756) ((_ is Nil!44918) rules!3756))))

(assert (=> b!4140900 d!1225882))

(declare-fun d!1225884 () Bool)

(assert (=> d!1225884 (= (isEmpty!26789 p!2912) ((_ is Nil!44916) p!2912))))

(assert (=> b!4140911 d!1225884))

(declare-fun d!1225886 () Bool)

(assert (=> d!1225886 (= (inv!59520 (tag!8238 rBis!149)) (= (mod (str.len (value!230826 (tag!8238 rBis!149))) 2) 0))))

(assert (=> b!4140910 d!1225886))

(declare-fun d!1225888 () Bool)

(declare-fun res!1694182 () Bool)

(declare-fun e!2569423 () Bool)

(assert (=> d!1225888 (=> (not res!1694182) (not e!2569423))))

(assert (=> d!1225888 (= res!1694182 (semiInverseModEq!3187 (toChars!9901 (transformation!7378 rBis!149)) (toValue!10042 (transformation!7378 rBis!149))))))

(assert (=> d!1225888 (= (inv!59522 (transformation!7378 rBis!149)) e!2569423)))

(declare-fun b!4141025 () Bool)

(assert (=> b!4141025 (= e!2569423 (equivClasses!3086 (toChars!9901 (transformation!7378 rBis!149)) (toValue!10042 (transformation!7378 rBis!149))))))

(assert (= (and d!1225888 res!1694182) b!4141025))

(declare-fun m!4737491 () Bool)

(assert (=> d!1225888 m!4737491))

(declare-fun m!4737493 () Bool)

(assert (=> b!4141025 m!4737493))

(assert (=> b!4140910 d!1225888))

(declare-fun b!4141060 () Bool)

(declare-fun e!2569446 () Int)

(assert (=> b!4141060 (= e!2569446 0)))

(declare-fun b!4141063 () Bool)

(declare-fun e!2569445 () Int)

(assert (=> b!4141063 (= e!2569445 (+ 1 (getIndex!724 (t!342369 rules!3756) rBis!149)))))

(declare-fun b!4141064 () Bool)

(assert (=> b!4141064 (= e!2569445 (- 1))))

(declare-fun d!1225890 () Bool)

(declare-fun lt!1476856 () Int)

(assert (=> d!1225890 (>= lt!1476856 0)))

(assert (=> d!1225890 (= lt!1476856 e!2569446)))

(declare-fun c!709863 () Bool)

(assert (=> d!1225890 (= c!709863 (and ((_ is Cons!44918) rules!3756) (= (h!50338 rules!3756) rBis!149)))))

(assert (=> d!1225890 (contains!9058 rules!3756 rBis!149)))

(assert (=> d!1225890 (= (getIndex!724 rules!3756 rBis!149) lt!1476856)))

(declare-fun b!4141062 () Bool)

(assert (=> b!4141062 (= e!2569446 e!2569445)))

(declare-fun c!709862 () Bool)

(assert (=> b!4141062 (= c!709862 (and ((_ is Cons!44918) rules!3756) (not (= (h!50338 rules!3756) rBis!149))))))

(assert (= (and d!1225890 c!709863) b!4141060))

(assert (= (and d!1225890 (not c!709863)) b!4141062))

(assert (= (and b!4141062 c!709862) b!4141063))

(assert (= (and b!4141062 (not c!709862)) b!4141064))

(declare-fun m!4737519 () Bool)

(assert (=> b!4141063 m!4737519))

(assert (=> d!1225890 m!4737359))

(assert (=> b!4140921 d!1225890))

(declare-fun b!4141065 () Bool)

(declare-fun e!2569449 () Int)

(assert (=> b!4141065 (= e!2569449 0)))

(declare-fun b!4141067 () Bool)

(declare-fun e!2569448 () Int)

(assert (=> b!4141067 (= e!2569448 (+ 1 (getIndex!724 (t!342369 rules!3756) r!4008)))))

(declare-fun b!4141068 () Bool)

(assert (=> b!4141068 (= e!2569448 (- 1))))

(declare-fun d!1225900 () Bool)

(declare-fun lt!1476857 () Int)

(assert (=> d!1225900 (>= lt!1476857 0)))

(assert (=> d!1225900 (= lt!1476857 e!2569449)))

(declare-fun c!709865 () Bool)

(assert (=> d!1225900 (= c!709865 (and ((_ is Cons!44918) rules!3756) (= (h!50338 rules!3756) r!4008)))))

(assert (=> d!1225900 (contains!9058 rules!3756 r!4008)))

(assert (=> d!1225900 (= (getIndex!724 rules!3756 r!4008) lt!1476857)))

(declare-fun b!4141066 () Bool)

(assert (=> b!4141066 (= e!2569449 e!2569448)))

(declare-fun c!709864 () Bool)

(assert (=> b!4141066 (= c!709864 (and ((_ is Cons!44918) rules!3756) (not (= (h!50338 rules!3756) r!4008))))))

(assert (= (and d!1225900 c!709865) b!4141065))

(assert (= (and d!1225900 (not c!709865)) b!4141066))

(assert (= (and b!4141066 c!709864) b!4141067))

(assert (= (and b!4141066 (not c!709864)) b!4141068))

(declare-fun m!4737521 () Bool)

(assert (=> b!4141067 m!4737521))

(assert (=> d!1225900 m!4737357))

(assert (=> b!4140921 d!1225900))

(declare-fun d!1225902 () Bool)

(declare-fun e!2569456 () Bool)

(assert (=> d!1225902 e!2569456))

(declare-fun res!1694214 () Bool)

(assert (=> d!1225902 (=> res!1694214 e!2569456)))

(declare-fun lt!1476862 () Bool)

(assert (=> d!1225902 (= res!1694214 (not lt!1476862))))

(declare-fun e!2569458 () Bool)

(assert (=> d!1225902 (= lt!1476862 e!2569458)))

(declare-fun res!1694213 () Bool)

(assert (=> d!1225902 (=> res!1694213 e!2569458)))

(assert (=> d!1225902 (= res!1694213 ((_ is Nil!44916) p!2912))))

(assert (=> d!1225902 (= (isPrefix!4313 p!2912 input!3238) lt!1476862)))

(declare-fun b!4141077 () Bool)

(declare-fun e!2569457 () Bool)

(assert (=> b!4141077 (= e!2569458 e!2569457)))

(declare-fun res!1694215 () Bool)

(assert (=> b!4141077 (=> (not res!1694215) (not e!2569457))))

(assert (=> b!4141077 (= res!1694215 (not ((_ is Nil!44916) input!3238)))))

(declare-fun b!4141078 () Bool)

(declare-fun res!1694212 () Bool)

(assert (=> b!4141078 (=> (not res!1694212) (not e!2569457))))

(assert (=> b!4141078 (= res!1694212 (= (head!8736 p!2912) (head!8736 input!3238)))))

(declare-fun b!4141079 () Bool)

(assert (=> b!4141079 (= e!2569457 (isPrefix!4313 (tail!6551 p!2912) (tail!6551 input!3238)))))

(declare-fun b!4141080 () Bool)

(assert (=> b!4141080 (= e!2569456 (>= (size!33274 input!3238) (size!33274 p!2912)))))

(assert (= (and d!1225902 (not res!1694213)) b!4141077))

(assert (= (and b!4141077 res!1694215) b!4141078))

(assert (= (and b!4141078 res!1694212) b!4141079))

(assert (= (and d!1225902 (not res!1694214)) b!4141080))

(assert (=> b!4141078 m!4737479))

(declare-fun m!4737523 () Bool)

(assert (=> b!4141078 m!4737523))

(assert (=> b!4141079 m!4737481))

(declare-fun m!4737525 () Bool)

(assert (=> b!4141079 m!4737525))

(assert (=> b!4141079 m!4737481))

(assert (=> b!4141079 m!4737525))

(declare-fun m!4737527 () Bool)

(assert (=> b!4141079 m!4737527))

(assert (=> b!4141080 m!4737353))

(assert (=> b!4141080 m!4737377))

(assert (=> b!4140920 d!1225902))

(declare-fun d!1225904 () Bool)

(declare-fun lt!1476865 () List!45040)

(assert (=> d!1225904 (= (++!11618 p!2912 lt!1476865) input!3238)))

(declare-fun e!2569461 () List!45040)

(assert (=> d!1225904 (= lt!1476865 e!2569461)))

(declare-fun c!709869 () Bool)

(assert (=> d!1225904 (= c!709869 ((_ is Cons!44916) p!2912))))

(assert (=> d!1225904 (>= (size!33274 input!3238) (size!33274 p!2912))))

(assert (=> d!1225904 (= (getSuffix!2640 input!3238 p!2912) lt!1476865)))

(declare-fun b!4141085 () Bool)

(assert (=> b!4141085 (= e!2569461 (getSuffix!2640 (tail!6551 input!3238) (t!342367 p!2912)))))

(declare-fun b!4141086 () Bool)

(assert (=> b!4141086 (= e!2569461 input!3238)))

(assert (= (and d!1225904 c!709869) b!4141085))

(assert (= (and d!1225904 (not c!709869)) b!4141086))

(declare-fun m!4737529 () Bool)

(assert (=> d!1225904 m!4737529))

(assert (=> d!1225904 m!4737353))

(assert (=> d!1225904 m!4737377))

(assert (=> b!4141085 m!4737525))

(assert (=> b!4141085 m!4737525))

(declare-fun m!4737531 () Bool)

(assert (=> b!4141085 m!4737531))

(assert (=> b!4140899 d!1225904))

(declare-fun b!4141106 () Bool)

(declare-fun e!2569468 () Bool)

(declare-fun lt!1476877 () Option!9684)

(assert (=> b!4141106 (= e!2569468 (contains!9058 rules!3756 (rule!10488 (_1!24783 (get!14662 lt!1476877)))))))

(declare-fun b!4141107 () Bool)

(declare-fun e!2569469 () Bool)

(assert (=> b!4141107 (= e!2569469 e!2569468)))

(declare-fun res!1694236 () Bool)

(assert (=> b!4141107 (=> (not res!1694236) (not e!2569468))))

(declare-fun isDefined!7278 (Option!9684) Bool)

(assert (=> b!4141107 (= res!1694236 (isDefined!7278 lt!1476877))))

(declare-fun b!4141108 () Bool)

(declare-fun e!2569470 () Option!9684)

(declare-fun lt!1476876 () Option!9684)

(declare-fun lt!1476880 () Option!9684)

(assert (=> b!4141108 (= e!2569470 (ite (and ((_ is None!9683) lt!1476876) ((_ is None!9683) lt!1476880)) None!9683 (ite ((_ is None!9683) lt!1476880) lt!1476876 (ite ((_ is None!9683) lt!1476876) lt!1476880 (ite (>= (size!33275 (_1!24783 (v!40321 lt!1476876))) (size!33275 (_1!24783 (v!40321 lt!1476880)))) lt!1476876 lt!1476880)))))))

(declare-fun call!290509 () Option!9684)

(assert (=> b!4141108 (= lt!1476876 call!290509)))

(assert (=> b!4141108 (= lt!1476880 (maxPrefix!4157 thiss!25645 (t!342369 rules!3756) input!3238))))

(declare-fun b!4141109 () Bool)

(assert (=> b!4141109 (= e!2569470 call!290509)))

(declare-fun bm!290504 () Bool)

(assert (=> bm!290504 (= call!290509 (maxPrefixOneRule!3096 thiss!25645 (h!50338 rules!3756) input!3238))))

(declare-fun d!1225906 () Bool)

(assert (=> d!1225906 e!2569469))

(declare-fun res!1694234 () Bool)

(assert (=> d!1225906 (=> res!1694234 e!2569469)))

(assert (=> d!1225906 (= res!1694234 (isEmpty!26788 lt!1476877))))

(assert (=> d!1225906 (= lt!1476877 e!2569470)))

(declare-fun c!709872 () Bool)

(assert (=> d!1225906 (= c!709872 (and ((_ is Cons!44918) rules!3756) ((_ is Nil!44918) (t!342369 rules!3756))))))

(declare-fun lt!1476879 () Unit!64217)

(declare-fun lt!1476878 () Unit!64217)

(assert (=> d!1225906 (= lt!1476879 lt!1476878)))

(assert (=> d!1225906 (isPrefix!4313 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2786 (List!45040 List!45040) Unit!64217)

(assert (=> d!1225906 (= lt!1476878 (lemmaIsPrefixRefl!2786 input!3238 input!3238))))

(declare-fun rulesValidInductive!2738 (LexerInterface!6967 List!45042) Bool)

(assert (=> d!1225906 (rulesValidInductive!2738 thiss!25645 rules!3756)))

(assert (=> d!1225906 (= (maxPrefix!4157 thiss!25645 rules!3756 input!3238) lt!1476877)))

(declare-fun b!4141105 () Bool)

(declare-fun res!1694233 () Bool)

(assert (=> b!4141105 (=> (not res!1694233) (not e!2569468))))

(assert (=> b!4141105 (= res!1694233 (= (value!230827 (_1!24783 (get!14662 lt!1476877))) (apply!10451 (transformation!7378 (rule!10488 (_1!24783 (get!14662 lt!1476877)))) (seqFromList!5495 (originalCharacters!7874 (_1!24783 (get!14662 lt!1476877)))))))))

(declare-fun b!4141110 () Bool)

(declare-fun res!1694230 () Bool)

(assert (=> b!4141110 (=> (not res!1694230) (not e!2569468))))

(assert (=> b!4141110 (= res!1694230 (= (list!16451 (charsOf!4977 (_1!24783 (get!14662 lt!1476877)))) (originalCharacters!7874 (_1!24783 (get!14662 lt!1476877)))))))

(declare-fun b!4141111 () Bool)

(declare-fun res!1694232 () Bool)

(assert (=> b!4141111 (=> (not res!1694232) (not e!2569468))))

(assert (=> b!4141111 (= res!1694232 (< (size!33274 (_2!24783 (get!14662 lt!1476877))) (size!33274 input!3238)))))

(declare-fun b!4141112 () Bool)

(declare-fun res!1694235 () Bool)

(assert (=> b!4141112 (=> (not res!1694235) (not e!2569468))))

(assert (=> b!4141112 (= res!1694235 (matchR!6112 (regex!7378 (rule!10488 (_1!24783 (get!14662 lt!1476877)))) (list!16451 (charsOf!4977 (_1!24783 (get!14662 lt!1476877))))))))

(declare-fun b!4141113 () Bool)

(declare-fun res!1694231 () Bool)

(assert (=> b!4141113 (=> (not res!1694231) (not e!2569468))))

(assert (=> b!4141113 (= res!1694231 (= (++!11618 (list!16451 (charsOf!4977 (_1!24783 (get!14662 lt!1476877)))) (_2!24783 (get!14662 lt!1476877))) input!3238))))

(assert (= (and d!1225906 c!709872) b!4141109))

(assert (= (and d!1225906 (not c!709872)) b!4141108))

(assert (= (or b!4141109 b!4141108) bm!290504))

(assert (= (and d!1225906 (not res!1694234)) b!4141107))

(assert (= (and b!4141107 res!1694236) b!4141110))

(assert (= (and b!4141110 res!1694230) b!4141111))

(assert (= (and b!4141111 res!1694232) b!4141113))

(assert (= (and b!4141113 res!1694231) b!4141105))

(assert (= (and b!4141105 res!1694233) b!4141112))

(assert (= (and b!4141112 res!1694235) b!4141106))

(declare-fun m!4737533 () Bool)

(assert (=> b!4141110 m!4737533))

(declare-fun m!4737535 () Bool)

(assert (=> b!4141110 m!4737535))

(assert (=> b!4141110 m!4737535))

(declare-fun m!4737537 () Bool)

(assert (=> b!4141110 m!4737537))

(assert (=> b!4141113 m!4737533))

(assert (=> b!4141113 m!4737535))

(assert (=> b!4141113 m!4737535))

(assert (=> b!4141113 m!4737537))

(assert (=> b!4141113 m!4737537))

(declare-fun m!4737539 () Bool)

(assert (=> b!4141113 m!4737539))

(declare-fun m!4737541 () Bool)

(assert (=> b!4141108 m!4737541))

(assert (=> b!4141112 m!4737533))

(assert (=> b!4141112 m!4737535))

(assert (=> b!4141112 m!4737535))

(assert (=> b!4141112 m!4737537))

(assert (=> b!4141112 m!4737537))

(declare-fun m!4737543 () Bool)

(assert (=> b!4141112 m!4737543))

(declare-fun m!4737545 () Bool)

(assert (=> bm!290504 m!4737545))

(assert (=> b!4141106 m!4737533))

(declare-fun m!4737547 () Bool)

(assert (=> b!4141106 m!4737547))

(declare-fun m!4737549 () Bool)

(assert (=> b!4141107 m!4737549))

(assert (=> b!4141111 m!4737533))

(declare-fun m!4737551 () Bool)

(assert (=> b!4141111 m!4737551))

(assert (=> b!4141111 m!4737353))

(declare-fun m!4737553 () Bool)

(assert (=> d!1225906 m!4737553))

(declare-fun m!4737555 () Bool)

(assert (=> d!1225906 m!4737555))

(declare-fun m!4737557 () Bool)

(assert (=> d!1225906 m!4737557))

(declare-fun m!4737559 () Bool)

(assert (=> d!1225906 m!4737559))

(assert (=> b!4141105 m!4737533))

(declare-fun m!4737561 () Bool)

(assert (=> b!4141105 m!4737561))

(assert (=> b!4141105 m!4737561))

(declare-fun m!4737563 () Bool)

(assert (=> b!4141105 m!4737563))

(assert (=> b!4140899 d!1225906))

(declare-fun d!1225908 () Bool)

(declare-fun fromListB!2519 (List!45040) BalanceConc!26772)

(assert (=> d!1225908 (= (seqFromList!5495 p!2912) (fromListB!2519 p!2912))))

(declare-fun bs!595237 () Bool)

(assert (= bs!595237 d!1225908))

(declare-fun m!4737565 () Bool)

(assert (=> bs!595237 m!4737565))

(assert (=> b!4140899 d!1225908))

(declare-fun d!1225910 () Bool)

(declare-fun lt!1476883 () Int)

(assert (=> d!1225910 (>= lt!1476883 0)))

(declare-fun e!2569473 () Int)

(assert (=> d!1225910 (= lt!1476883 e!2569473)))

(declare-fun c!709875 () Bool)

(assert (=> d!1225910 (= c!709875 ((_ is Nil!44916) p!2912))))

(assert (=> d!1225910 (= (size!33274 p!2912) lt!1476883)))

(declare-fun b!4141118 () Bool)

(assert (=> b!4141118 (= e!2569473 0)))

(declare-fun b!4141119 () Bool)

(assert (=> b!4141119 (= e!2569473 (+ 1 (size!33274 (t!342367 p!2912))))))

(assert (= (and d!1225910 c!709875) b!4141118))

(assert (= (and d!1225910 (not c!709875)) b!4141119))

(declare-fun m!4737567 () Bool)

(assert (=> b!4141119 m!4737567))

(assert (=> b!4140899 d!1225910))

(declare-fun b!4141176 () Bool)

(declare-fun e!2569503 () Bool)

(assert (=> b!4141176 (= e!2569503 true)))

(declare-fun d!1225912 () Bool)

(assert (=> d!1225912 e!2569503))

(assert (= d!1225912 b!4141176))

(declare-fun order!23765 () Int)

(declare-fun order!23767 () Int)

(declare-fun lambda!128949 () Int)

(declare-fun dynLambda!19313 (Int Int) Int)

(declare-fun dynLambda!19314 (Int Int) Int)

(assert (=> b!4141176 (< (dynLambda!19313 order!23765 (toValue!10042 (transformation!7378 r!4008))) (dynLambda!19314 order!23767 lambda!128949))))

(declare-fun order!23769 () Int)

(declare-fun dynLambda!19315 (Int Int) Int)

(assert (=> b!4141176 (< (dynLambda!19315 order!23769 (toChars!9901 (transformation!7378 r!4008))) (dynLambda!19314 order!23767 lambda!128949))))

(declare-fun dynLambda!19316 (Int TokenValue!7608) BalanceConc!26772)

(declare-fun dynLambda!19317 (Int BalanceConc!26772) TokenValue!7608)

(assert (=> d!1225912 (= (list!16451 (dynLambda!19316 (toChars!9901 (transformation!7378 r!4008)) (dynLambda!19317 (toValue!10042 (transformation!7378 r!4008)) lt!1476815))) (list!16451 lt!1476815))))

(declare-fun lt!1476912 () Unit!64217)

(declare-fun ForallOf!970 (Int BalanceConc!26772) Unit!64217)

(assert (=> d!1225912 (= lt!1476912 (ForallOf!970 lambda!128949 lt!1476815))))

(assert (=> d!1225912 (= (lemmaSemiInverse!2236 (transformation!7378 r!4008) lt!1476815) lt!1476912)))

(declare-fun b_lambda!121719 () Bool)

(assert (=> (not b_lambda!121719) (not d!1225912)))

(declare-fun t!342389 () Bool)

(declare-fun tb!248565 () Bool)

(assert (=> (and b!4140907 (= (toChars!9901 (transformation!7378 (h!50338 rules!3756))) (toChars!9901 (transformation!7378 r!4008))) t!342389) tb!248565))

(declare-fun b!4141181 () Bool)

(declare-fun e!2569506 () Bool)

(declare-fun tp!1262325 () Bool)

(declare-fun inv!59525 (Conc!13589) Bool)

(assert (=> b!4141181 (= e!2569506 (and (inv!59525 (c!709838 (dynLambda!19316 (toChars!9901 (transformation!7378 r!4008)) (dynLambda!19317 (toValue!10042 (transformation!7378 r!4008)) lt!1476815)))) tp!1262325))))

(declare-fun result!302246 () Bool)

(declare-fun inv!59526 (BalanceConc!26772) Bool)

(assert (=> tb!248565 (= result!302246 (and (inv!59526 (dynLambda!19316 (toChars!9901 (transformation!7378 r!4008)) (dynLambda!19317 (toValue!10042 (transformation!7378 r!4008)) lt!1476815))) e!2569506))))

(assert (= tb!248565 b!4141181))

(declare-fun m!4737633 () Bool)

(assert (=> b!4141181 m!4737633))

(declare-fun m!4737635 () Bool)

(assert (=> tb!248565 m!4737635))

(assert (=> d!1225912 t!342389))

(declare-fun b_and!321613 () Bool)

(assert (= b_and!321579 (and (=> t!342389 result!302246) b_and!321613)))

(declare-fun t!342391 () Bool)

(declare-fun tb!248567 () Bool)

(assert (=> (and b!4140904 (= (toChars!9901 (transformation!7378 rBis!149)) (toChars!9901 (transformation!7378 r!4008))) t!342391) tb!248567))

(declare-fun result!302250 () Bool)

(assert (= result!302250 result!302246))

(assert (=> d!1225912 t!342391))

(declare-fun b_and!321615 () Bool)

(assert (= b_and!321583 (and (=> t!342391 result!302250) b_and!321615)))

(declare-fun t!342393 () Bool)

(declare-fun tb!248569 () Bool)

(assert (=> (and b!4140914 (= (toChars!9901 (transformation!7378 r!4008)) (toChars!9901 (transformation!7378 r!4008))) t!342393) tb!248569))

(declare-fun result!302252 () Bool)

(assert (= result!302252 result!302246))

(assert (=> d!1225912 t!342393))

(declare-fun b_and!321617 () Bool)

(assert (= b_and!321587 (and (=> t!342393 result!302252) b_and!321617)))

(declare-fun b_lambda!121721 () Bool)

(assert (=> (not b_lambda!121721) (not d!1225912)))

(declare-fun tb!248571 () Bool)

(declare-fun t!342395 () Bool)

(assert (=> (and b!4140907 (= (toValue!10042 (transformation!7378 (h!50338 rules!3756))) (toValue!10042 (transformation!7378 r!4008))) t!342395) tb!248571))

(declare-fun result!302254 () Bool)

(declare-fun inv!21 (TokenValue!7608) Bool)

(assert (=> tb!248571 (= result!302254 (inv!21 (dynLambda!19317 (toValue!10042 (transformation!7378 r!4008)) lt!1476815)))))

(declare-fun m!4737637 () Bool)

(assert (=> tb!248571 m!4737637))

(assert (=> d!1225912 t!342395))

(declare-fun b_and!321619 () Bool)

(assert (= b_and!321577 (and (=> t!342395 result!302254) b_and!321619)))

(declare-fun tb!248573 () Bool)

(declare-fun t!342397 () Bool)

(assert (=> (and b!4140904 (= (toValue!10042 (transformation!7378 rBis!149)) (toValue!10042 (transformation!7378 r!4008))) t!342397) tb!248573))

(declare-fun result!302258 () Bool)

(assert (= result!302258 result!302254))

(assert (=> d!1225912 t!342397))

(declare-fun b_and!321621 () Bool)

(assert (= b_and!321581 (and (=> t!342397 result!302258) b_and!321621)))

(declare-fun t!342399 () Bool)

(declare-fun tb!248575 () Bool)

(assert (=> (and b!4140914 (= (toValue!10042 (transformation!7378 r!4008)) (toValue!10042 (transformation!7378 r!4008))) t!342399) tb!248575))

(declare-fun result!302260 () Bool)

(assert (= result!302260 result!302254))

(assert (=> d!1225912 t!342399))

(declare-fun b_and!321623 () Bool)

(assert (= b_and!321585 (and (=> t!342399 result!302260) b_and!321623)))

(declare-fun m!4737639 () Bool)

(assert (=> d!1225912 m!4737639))

(declare-fun m!4737641 () Bool)

(assert (=> d!1225912 m!4737641))

(declare-fun m!4737643 () Bool)

(assert (=> d!1225912 m!4737643))

(assert (=> d!1225912 m!4737643))

(declare-fun m!4737645 () Bool)

(assert (=> d!1225912 m!4737645))

(assert (=> d!1225912 m!4737645))

(declare-fun m!4737647 () Bool)

(assert (=> d!1225912 m!4737647))

(assert (=> b!4140899 d!1225912))

(declare-fun d!1225934 () Bool)

(assert (=> d!1225934 (= (apply!10451 (transformation!7378 r!4008) lt!1476815) (dynLambda!19317 (toValue!10042 (transformation!7378 r!4008)) lt!1476815))))

(declare-fun b_lambda!121723 () Bool)

(assert (=> (not b_lambda!121723) (not d!1225934)))

(assert (=> d!1225934 t!342395))

(declare-fun b_and!321625 () Bool)

(assert (= b_and!321619 (and (=> t!342395 result!302254) b_and!321625)))

(assert (=> d!1225934 t!342397))

(declare-fun b_and!321627 () Bool)

(assert (= b_and!321621 (and (=> t!342397 result!302258) b_and!321627)))

(assert (=> d!1225934 t!342399))

(declare-fun b_and!321629 () Bool)

(assert (= b_and!321623 (and (=> t!342399 result!302260) b_and!321629)))

(assert (=> d!1225934 m!4737643))

(assert (=> b!4140899 d!1225934))

(declare-fun d!1225936 () Bool)

(declare-fun lt!1476913 () Int)

(assert (=> d!1225936 (>= lt!1476913 0)))

(declare-fun e!2569510 () Int)

(assert (=> d!1225936 (= lt!1476913 e!2569510)))

(declare-fun c!709886 () Bool)

(assert (=> d!1225936 (= c!709886 ((_ is Nil!44916) input!3238))))

(assert (=> d!1225936 (= (size!33274 input!3238) lt!1476913)))

(declare-fun b!4141184 () Bool)

(assert (=> b!4141184 (= e!2569510 0)))

(declare-fun b!4141185 () Bool)

(assert (=> b!4141185 (= e!2569510 (+ 1 (size!33274 (t!342367 input!3238))))))

(assert (= (and d!1225936 c!709886) b!4141184))

(assert (= (and d!1225936 (not c!709886)) b!4141185))

(declare-fun m!4737649 () Bool)

(assert (=> b!4141185 m!4737649))

(assert (=> b!4140898 d!1225936))

(declare-fun d!1225938 () Bool)

(declare-fun res!1694265 () Bool)

(declare-fun e!2569513 () Bool)

(assert (=> d!1225938 (=> (not res!1694265) (not e!2569513))))

(declare-fun rulesValid!2901 (LexerInterface!6967 List!45042) Bool)

(assert (=> d!1225938 (= res!1694265 (rulesValid!2901 thiss!25645 rules!3756))))

(assert (=> d!1225938 (= (rulesInvariant!6264 thiss!25645 rules!3756) e!2569513)))

(declare-fun b!4141188 () Bool)

(declare-datatypes ((List!45044 0))(
  ( (Nil!44920) (Cons!44920 (h!50340 String!51790) (t!342419 List!45044)) )
))
(declare-fun noDuplicateTag!2984 (LexerInterface!6967 List!45042 List!45044) Bool)

(assert (=> b!4141188 (= e!2569513 (noDuplicateTag!2984 thiss!25645 rules!3756 Nil!44920))))

(assert (= (and d!1225938 res!1694265) b!4141188))

(declare-fun m!4737651 () Bool)

(assert (=> d!1225938 m!4737651))

(declare-fun m!4737653 () Bool)

(assert (=> b!4141188 m!4737653))

(assert (=> b!4140909 d!1225938))

(declare-fun d!1225940 () Bool)

(declare-fun res!1694270 () Bool)

(declare-fun e!2569516 () Bool)

(assert (=> d!1225940 (=> (not res!1694270) (not e!2569516))))

(assert (=> d!1225940 (= res!1694270 (validRegex!5531 (regex!7378 r!4008)))))

(assert (=> d!1225940 (= (ruleValid!3184 thiss!25645 r!4008) e!2569516)))

(declare-fun b!4141195 () Bool)

(declare-fun res!1694271 () Bool)

(assert (=> b!4141195 (=> (not res!1694271) (not e!2569516))))

(assert (=> b!4141195 (= res!1694271 (not (nullable!4323 (regex!7378 r!4008))))))

(declare-fun b!4141196 () Bool)

(assert (=> b!4141196 (= e!2569516 (not (= (tag!8238 r!4008) (String!51791 ""))))))

(assert (= (and d!1225940 res!1694270) b!4141195))

(assert (= (and b!4141195 res!1694271) b!4141196))

(assert (=> d!1225940 m!4737477))

(assert (=> b!4141195 m!4737489))

(assert (=> b!4140908 d!1225940))

(declare-fun d!1225942 () Bool)

(declare-fun e!2569521 () Bool)

(assert (=> d!1225942 e!2569521))

(declare-fun res!1694276 () Bool)

(assert (=> d!1225942 (=> res!1694276 e!2569521)))

(declare-fun lt!1476922 () Bool)

(assert (=> d!1225942 (= res!1694276 (not lt!1476922))))

(declare-fun e!2569523 () Bool)

(assert (=> d!1225942 (= lt!1476922 e!2569523)))

(declare-fun res!1694275 () Bool)

(assert (=> d!1225942 (=> res!1694275 e!2569523)))

(assert (=> d!1225942 (= res!1694275 ((_ is Nil!44916) lt!1476822))))

(assert (=> d!1225942 (= (isPrefix!4313 lt!1476822 input!3238) lt!1476922)))

(declare-fun b!4141201 () Bool)

(declare-fun e!2569522 () Bool)

(assert (=> b!4141201 (= e!2569523 e!2569522)))

(declare-fun res!1694277 () Bool)

(assert (=> b!4141201 (=> (not res!1694277) (not e!2569522))))

(assert (=> b!4141201 (= res!1694277 (not ((_ is Nil!44916) input!3238)))))

(declare-fun b!4141202 () Bool)

(declare-fun res!1694274 () Bool)

(assert (=> b!4141202 (=> (not res!1694274) (not e!2569522))))

(assert (=> b!4141202 (= res!1694274 (= (head!8736 lt!1476822) (head!8736 input!3238)))))

(declare-fun b!4141203 () Bool)

(assert (=> b!4141203 (= e!2569522 (isPrefix!4313 (tail!6551 lt!1476822) (tail!6551 input!3238)))))

(declare-fun b!4141204 () Bool)

(assert (=> b!4141204 (= e!2569521 (>= (size!33274 input!3238) (size!33274 lt!1476822)))))

(assert (= (and d!1225942 (not res!1694275)) b!4141201))

(assert (= (and b!4141201 res!1694277) b!4141202))

(assert (= (and b!4141202 res!1694274) b!4141203))

(assert (= (and d!1225942 (not res!1694276)) b!4141204))

(declare-fun m!4737655 () Bool)

(assert (=> b!4141202 m!4737655))

(assert (=> b!4141202 m!4737523))

(declare-fun m!4737657 () Bool)

(assert (=> b!4141203 m!4737657))

(assert (=> b!4141203 m!4737525))

(assert (=> b!4141203 m!4737657))

(assert (=> b!4141203 m!4737525))

(declare-fun m!4737659 () Bool)

(assert (=> b!4141203 m!4737659))

(assert (=> b!4141204 m!4737353))

(declare-fun m!4737661 () Bool)

(assert (=> b!4141204 m!4737661))

(assert (=> b!4140919 d!1225942))

(declare-fun d!1225944 () Bool)

(assert (=> d!1225944 (= (inv!59520 (tag!8238 (h!50338 rules!3756))) (= (mod (str.len (value!230826 (tag!8238 (h!50338 rules!3756)))) 2) 0))))

(assert (=> b!4140918 d!1225944))

(declare-fun d!1225946 () Bool)

(declare-fun res!1694278 () Bool)

(declare-fun e!2569524 () Bool)

(assert (=> d!1225946 (=> (not res!1694278) (not e!2569524))))

(assert (=> d!1225946 (= res!1694278 (semiInverseModEq!3187 (toChars!9901 (transformation!7378 (h!50338 rules!3756))) (toValue!10042 (transformation!7378 (h!50338 rules!3756)))))))

(assert (=> d!1225946 (= (inv!59522 (transformation!7378 (h!50338 rules!3756))) e!2569524)))

(declare-fun b!4141205 () Bool)

(assert (=> b!4141205 (= e!2569524 (equivClasses!3086 (toChars!9901 (transformation!7378 (h!50338 rules!3756))) (toValue!10042 (transformation!7378 (h!50338 rules!3756)))))))

(assert (= (and d!1225946 res!1694278) b!4141205))

(declare-fun m!4737663 () Bool)

(assert (=> d!1225946 m!4737663))

(declare-fun m!4737665 () Bool)

(assert (=> b!4141205 m!4737665))

(assert (=> b!4140918 d!1225946))

(declare-fun d!1225948 () Bool)

(declare-fun lt!1476925 () Bool)

(assert (=> d!1225948 (= lt!1476925 (select (content!6939 (tail!6549 rules!3756)) r!4008))))

(declare-fun e!2569529 () Bool)

(assert (=> d!1225948 (= lt!1476925 e!2569529)))

(declare-fun res!1694289 () Bool)

(assert (=> d!1225948 (=> (not res!1694289) (not e!2569529))))

(assert (=> d!1225948 (= res!1694289 ((_ is Cons!44918) (tail!6549 rules!3756)))))

(assert (=> d!1225948 (= (contains!9058 (tail!6549 rules!3756) r!4008) lt!1476925)))

(declare-fun b!4141216 () Bool)

(declare-fun e!2569530 () Bool)

(assert (=> b!4141216 (= e!2569529 e!2569530)))

(declare-fun res!1694290 () Bool)

(assert (=> b!4141216 (=> res!1694290 e!2569530)))

(assert (=> b!4141216 (= res!1694290 (= (h!50338 (tail!6549 rules!3756)) r!4008))))

(declare-fun b!4141217 () Bool)

(assert (=> b!4141217 (= e!2569530 (contains!9058 (t!342369 (tail!6549 rules!3756)) r!4008))))

(assert (= (and d!1225948 res!1694289) b!4141216))

(assert (= (and b!4141216 (not res!1694290)) b!4141217))

(assert (=> d!1225948 m!4737393))

(declare-fun m!4737667 () Bool)

(assert (=> d!1225948 m!4737667))

(declare-fun m!4737669 () Bool)

(assert (=> d!1225948 m!4737669))

(declare-fun m!4737671 () Bool)

(assert (=> b!4141217 m!4737671))

(assert (=> b!4140906 d!1225948))

(declare-fun d!1225950 () Bool)

(assert (=> d!1225950 (= (tail!6549 rules!3756) (t!342369 rules!3756))))

(assert (=> b!4140906 d!1225950))

(declare-fun d!1225952 () Bool)

(declare-fun e!2569593 () Bool)

(assert (=> d!1225952 e!2569593))

(declare-fun res!1694339 () Bool)

(assert (=> d!1225952 (=> res!1694339 e!2569593)))

(declare-fun lt!1476961 () Option!9684)

(assert (=> d!1225952 (= res!1694339 (isEmpty!26788 lt!1476961))))

(declare-fun e!2569592 () Option!9684)

(assert (=> d!1225952 (= lt!1476961 e!2569592)))

(declare-fun c!709904 () Bool)

(declare-datatypes ((tuple2!43302 0))(
  ( (tuple2!43303 (_1!24785 List!45040) (_2!24785 List!45040)) )
))
(declare-fun lt!1476962 () tuple2!43302)

(assert (=> d!1225952 (= c!709904 (isEmpty!26789 (_1!24785 lt!1476962)))))

(declare-fun findLongestMatch!1440 (Regex!12283 List!45040) tuple2!43302)

(assert (=> d!1225952 (= lt!1476962 (findLongestMatch!1440 (regex!7378 rBis!149) input!3238))))

(assert (=> d!1225952 (ruleValid!3184 thiss!25645 rBis!149)))

(assert (=> d!1225952 (= (maxPrefixOneRule!3096 thiss!25645 rBis!149 input!3238) lt!1476961)))

(declare-fun b!4141329 () Bool)

(declare-fun e!2569590 () Bool)

(assert (=> b!4141329 (= e!2569593 e!2569590)))

(declare-fun res!1694336 () Bool)

(assert (=> b!4141329 (=> (not res!1694336) (not e!2569590))))

(assert (=> b!4141329 (= res!1694336 (matchR!6112 (regex!7378 rBis!149) (list!16451 (charsOf!4977 (_1!24783 (get!14662 lt!1476961))))))))

(declare-fun b!4141330 () Bool)

(declare-fun e!2569591 () Bool)

(declare-fun findLongestMatchInner!1527 (Regex!12283 List!45040 Int List!45040 List!45040 Int) tuple2!43302)

(assert (=> b!4141330 (= e!2569591 (matchR!6112 (regex!7378 rBis!149) (_1!24785 (findLongestMatchInner!1527 (regex!7378 rBis!149) Nil!44916 (size!33274 Nil!44916) input!3238 input!3238 (size!33274 input!3238)))))))

(declare-fun b!4141331 () Bool)

(declare-fun res!1694335 () Bool)

(assert (=> b!4141331 (=> (not res!1694335) (not e!2569590))))

(assert (=> b!4141331 (= res!1694335 (= (value!230827 (_1!24783 (get!14662 lt!1476961))) (apply!10451 (transformation!7378 (rule!10488 (_1!24783 (get!14662 lt!1476961)))) (seqFromList!5495 (originalCharacters!7874 (_1!24783 (get!14662 lt!1476961)))))))))

(declare-fun b!4141332 () Bool)

(declare-fun res!1694333 () Bool)

(assert (=> b!4141332 (=> (not res!1694333) (not e!2569590))))

(assert (=> b!4141332 (= res!1694333 (< (size!33274 (_2!24783 (get!14662 lt!1476961))) (size!33274 input!3238)))))

(declare-fun b!4141333 () Bool)

(assert (=> b!4141333 (= e!2569592 None!9683)))

(declare-fun b!4141334 () Bool)

(declare-fun res!1694334 () Bool)

(assert (=> b!4141334 (=> (not res!1694334) (not e!2569590))))

(assert (=> b!4141334 (= res!1694334 (= (rule!10488 (_1!24783 (get!14662 lt!1476961))) rBis!149))))

(declare-fun b!4141335 () Bool)

(assert (=> b!4141335 (= e!2569590 (= (size!33275 (_1!24783 (get!14662 lt!1476961))) (size!33274 (originalCharacters!7874 (_1!24783 (get!14662 lt!1476961))))))))

(declare-fun b!4141336 () Bool)

(declare-fun res!1694338 () Bool)

(assert (=> b!4141336 (=> (not res!1694338) (not e!2569590))))

(assert (=> b!4141336 (= res!1694338 (= (++!11618 (list!16451 (charsOf!4977 (_1!24783 (get!14662 lt!1476961)))) (_2!24783 (get!14662 lt!1476961))) input!3238))))

(declare-fun b!4141337 () Bool)

(assert (=> b!4141337 (= e!2569592 (Some!9683 (tuple2!43299 (Token!13687 (apply!10451 (transformation!7378 rBis!149) (seqFromList!5495 (_1!24785 lt!1476962))) rBis!149 (size!33276 (seqFromList!5495 (_1!24785 lt!1476962))) (_1!24785 lt!1476962)) (_2!24785 lt!1476962))))))

(declare-fun lt!1476958 () Unit!64217)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1500 (Regex!12283 List!45040) Unit!64217)

(assert (=> b!4141337 (= lt!1476958 (longestMatchIsAcceptedByMatchOrIsEmpty!1500 (regex!7378 rBis!149) input!3238))))

(declare-fun res!1694337 () Bool)

(assert (=> b!4141337 (= res!1694337 (isEmpty!26789 (_1!24785 (findLongestMatchInner!1527 (regex!7378 rBis!149) Nil!44916 (size!33274 Nil!44916) input!3238 input!3238 (size!33274 input!3238)))))))

(assert (=> b!4141337 (=> res!1694337 e!2569591)))

(assert (=> b!4141337 e!2569591))

(declare-fun lt!1476960 () Unit!64217)

(assert (=> b!4141337 (= lt!1476960 lt!1476958)))

(declare-fun lt!1476959 () Unit!64217)

(assert (=> b!4141337 (= lt!1476959 (lemmaSemiInverse!2236 (transformation!7378 rBis!149) (seqFromList!5495 (_1!24785 lt!1476962))))))

(assert (= (and d!1225952 c!709904) b!4141333))

(assert (= (and d!1225952 (not c!709904)) b!4141337))

(assert (= (and b!4141337 (not res!1694337)) b!4141330))

(assert (= (and d!1225952 (not res!1694339)) b!4141329))

(assert (= (and b!4141329 res!1694336) b!4141336))

(assert (= (and b!4141336 res!1694338) b!4141332))

(assert (= (and b!4141332 res!1694333) b!4141334))

(assert (= (and b!4141334 res!1694334) b!4141331))

(assert (= (and b!4141331 res!1694335) b!4141335))

(declare-fun m!4737769 () Bool)

(assert (=> b!4141329 m!4737769))

(declare-fun m!4737771 () Bool)

(assert (=> b!4141329 m!4737771))

(assert (=> b!4141329 m!4737771))

(declare-fun m!4737773 () Bool)

(assert (=> b!4141329 m!4737773))

(assert (=> b!4141329 m!4737773))

(declare-fun m!4737775 () Bool)

(assert (=> b!4141329 m!4737775))

(assert (=> b!4141336 m!4737769))

(assert (=> b!4141336 m!4737771))

(assert (=> b!4141336 m!4737771))

(assert (=> b!4141336 m!4737773))

(assert (=> b!4141336 m!4737773))

(declare-fun m!4737777 () Bool)

(assert (=> b!4141336 m!4737777))

(declare-fun m!4737779 () Bool)

(assert (=> d!1225952 m!4737779))

(declare-fun m!4737781 () Bool)

(assert (=> d!1225952 m!4737781))

(declare-fun m!4737783 () Bool)

(assert (=> d!1225952 m!4737783))

(assert (=> d!1225952 m!4737423))

(assert (=> b!4141331 m!4737769))

(declare-fun m!4737785 () Bool)

(assert (=> b!4141331 m!4737785))

(assert (=> b!4141331 m!4737785))

(declare-fun m!4737787 () Bool)

(assert (=> b!4141331 m!4737787))

(assert (=> b!4141334 m!4737769))

(declare-fun m!4737789 () Bool)

(assert (=> b!4141337 m!4737789))

(declare-fun m!4737791 () Bool)

(assert (=> b!4141337 m!4737791))

(assert (=> b!4141337 m!4737791))

(assert (=> b!4141337 m!4737353))

(declare-fun m!4737793 () Bool)

(assert (=> b!4141337 m!4737793))

(declare-fun m!4737795 () Bool)

(assert (=> b!4141337 m!4737795))

(declare-fun m!4737797 () Bool)

(assert (=> b!4141337 m!4737797))

(assert (=> b!4141337 m!4737795))

(declare-fun m!4737799 () Bool)

(assert (=> b!4141337 m!4737799))

(declare-fun m!4737801 () Bool)

(assert (=> b!4141337 m!4737801))

(assert (=> b!4141337 m!4737795))

(declare-fun m!4737803 () Bool)

(assert (=> b!4141337 m!4737803))

(assert (=> b!4141337 m!4737795))

(assert (=> b!4141337 m!4737353))

(assert (=> b!4141330 m!4737791))

(assert (=> b!4141330 m!4737353))

(assert (=> b!4141330 m!4737791))

(assert (=> b!4141330 m!4737353))

(assert (=> b!4141330 m!4737793))

(declare-fun m!4737805 () Bool)

(assert (=> b!4141330 m!4737805))

(assert (=> b!4141335 m!4737769))

(declare-fun m!4737807 () Bool)

(assert (=> b!4141335 m!4737807))

(assert (=> b!4141332 m!4737769))

(declare-fun m!4737809 () Bool)

(assert (=> b!4141332 m!4737809))

(assert (=> b!4141332 m!4737353))

(assert (=> b!4140906 d!1225952))

(declare-fun d!1225984 () Bool)

(assert (=> d!1225984 (not (= rBis!149 r!4008))))

(declare-fun lt!1476965 () Unit!64217)

(declare-fun choose!25329 (LexerInterface!6967 List!45042 Rule!14556 Rule!14556) Unit!64217)

(assert (=> d!1225984 (= lt!1476965 (choose!25329 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225984 (contains!9058 rules!3756 rBis!149)))

(assert (=> d!1225984 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!76 thiss!25645 rules!3756 rBis!149 r!4008) lt!1476965)))

(declare-fun bs!595242 () Bool)

(assert (= bs!595242 d!1225984))

(declare-fun m!4737811 () Bool)

(assert (=> bs!595242 m!4737811))

(assert (=> bs!595242 m!4737359))

(assert (=> b!4140906 d!1225984))

(declare-fun d!1225986 () Bool)

(assert (=> d!1225986 (contains!9058 (tail!6549 rules!3756) r!4008)))

(declare-fun lt!1476968 () Unit!64217)

(declare-fun choose!25330 (List!45042 Rule!14556 Rule!14556) Unit!64217)

(assert (=> d!1225986 (= lt!1476968 (choose!25330 rules!3756 rBis!149 r!4008))))

(declare-fun e!2569596 () Bool)

(assert (=> d!1225986 e!2569596))

(declare-fun res!1694342 () Bool)

(assert (=> d!1225986 (=> (not res!1694342) (not e!2569596))))

(assert (=> d!1225986 (= res!1694342 (contains!9058 rules!3756 rBis!149))))

(assert (=> d!1225986 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!82 rules!3756 rBis!149 r!4008) lt!1476968)))

(declare-fun b!4141340 () Bool)

(assert (=> b!4141340 (= e!2569596 (contains!9058 rules!3756 r!4008))))

(assert (= (and d!1225986 res!1694342) b!4141340))

(assert (=> d!1225986 m!4737393))

(assert (=> d!1225986 m!4737393))

(assert (=> d!1225986 m!4737395))

(declare-fun m!4737813 () Bool)

(assert (=> d!1225986 m!4737813))

(assert (=> d!1225986 m!4737359))

(assert (=> b!4141340 m!4737357))

(assert (=> b!4140906 d!1225986))

(declare-fun d!1225988 () Bool)

(assert (=> d!1225988 (= (isEmpty!26788 lt!1476825) (not ((_ is Some!9683) lt!1476825)))))

(assert (=> b!4140906 d!1225988))

(declare-fun d!1225990 () Bool)

(declare-fun lt!1476969 () Bool)

(assert (=> d!1225990 (= lt!1476969 (select (content!6939 rules!3756) r!4008))))

(declare-fun e!2569597 () Bool)

(assert (=> d!1225990 (= lt!1476969 e!2569597)))

(declare-fun res!1694343 () Bool)

(assert (=> d!1225990 (=> (not res!1694343) (not e!2569597))))

(assert (=> d!1225990 (= res!1694343 ((_ is Cons!44918) rules!3756))))

(assert (=> d!1225990 (= (contains!9058 rules!3756 r!4008) lt!1476969)))

(declare-fun b!4141341 () Bool)

(declare-fun e!2569598 () Bool)

(assert (=> b!4141341 (= e!2569597 e!2569598)))

(declare-fun res!1694344 () Bool)

(assert (=> b!4141341 (=> res!1694344 e!2569598)))

(assert (=> b!4141341 (= res!1694344 (= (h!50338 rules!3756) r!4008))))

(declare-fun b!4141342 () Bool)

(assert (=> b!4141342 (= e!2569598 (contains!9058 (t!342369 rules!3756) r!4008))))

(assert (= (and d!1225990 res!1694343) b!4141341))

(assert (= (and b!4141341 (not res!1694344)) b!4141342))

(assert (=> d!1225990 m!4737437))

(declare-fun m!4737815 () Bool)

(assert (=> d!1225990 m!4737815))

(declare-fun m!4737817 () Bool)

(assert (=> b!4141342 m!4737817))

(assert (=> b!4140917 d!1225990))

(declare-fun d!1225992 () Bool)

(assert (=> d!1225992 (ruleValid!3184 thiss!25645 r!4008)))

(declare-fun lt!1476972 () Unit!64217)

(declare-fun choose!25331 (LexerInterface!6967 Rule!14556 List!45042) Unit!64217)

(assert (=> d!1225992 (= lt!1476972 (choose!25331 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1225992 (contains!9058 rules!3756 r!4008)))

(assert (=> d!1225992 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2224 thiss!25645 r!4008 rules!3756) lt!1476972)))

(declare-fun bs!595243 () Bool)

(assert (= bs!595243 d!1225992))

(assert (=> bs!595243 m!4737373))

(declare-fun m!4737819 () Bool)

(assert (=> bs!595243 m!4737819))

(assert (=> bs!595243 m!4737357))

(assert (=> b!4140916 d!1225992))

(declare-fun d!1225994 () Bool)

(declare-fun res!1694345 () Bool)

(declare-fun e!2569599 () Bool)

(assert (=> d!1225994 (=> (not res!1694345) (not e!2569599))))

(assert (=> d!1225994 (= res!1694345 (validRegex!5531 (regex!7378 rBis!149)))))

(assert (=> d!1225994 (= (ruleValid!3184 thiss!25645 rBis!149) e!2569599)))

(declare-fun b!4141343 () Bool)

(declare-fun res!1694346 () Bool)

(assert (=> b!4141343 (=> (not res!1694346) (not e!2569599))))

(assert (=> b!4141343 (= res!1694346 (not (nullable!4323 (regex!7378 rBis!149))))))

(declare-fun b!4141344 () Bool)

(assert (=> b!4141344 (= e!2569599 (not (= (tag!8238 rBis!149) (String!51791 ""))))))

(assert (= (and d!1225994 res!1694345) b!4141343))

(assert (= (and b!4141343 res!1694346) b!4141344))

(declare-fun m!4737821 () Bool)

(assert (=> d!1225994 m!4737821))

(declare-fun m!4737823 () Bool)

(assert (=> b!4141343 m!4737823))

(assert (=> b!4140916 d!1225994))

(declare-fun d!1225996 () Bool)

(assert (=> d!1225996 (ruleValid!3184 thiss!25645 rBis!149)))

(declare-fun lt!1476973 () Unit!64217)

(assert (=> d!1225996 (= lt!1476973 (choose!25331 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225996 (contains!9058 rules!3756 rBis!149)))

(assert (=> d!1225996 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2224 thiss!25645 rBis!149 rules!3756) lt!1476973)))

(declare-fun bs!595244 () Bool)

(assert (= bs!595244 d!1225996))

(assert (=> bs!595244 m!4737423))

(declare-fun m!4737825 () Bool)

(assert (=> bs!595244 m!4737825))

(assert (=> bs!595244 m!4737359))

(assert (=> b!4140916 d!1225996))

(declare-fun d!1225998 () Bool)

(declare-fun lt!1476976 () Int)

(assert (=> d!1225998 (= lt!1476976 (size!33274 (list!16451 lt!1476820)))))

(declare-fun size!33278 (Conc!13589) Int)

(assert (=> d!1225998 (= lt!1476976 (size!33278 (c!709838 lt!1476820)))))

(assert (=> d!1225998 (= (size!33276 lt!1476820) lt!1476976)))

(declare-fun bs!595245 () Bool)

(assert (= bs!595245 d!1225998))

(assert (=> bs!595245 m!4737417))

(assert (=> bs!595245 m!4737417))

(declare-fun m!4737827 () Bool)

(assert (=> bs!595245 m!4737827))

(declare-fun m!4737829 () Bool)

(assert (=> bs!595245 m!4737829))

(assert (=> b!4140905 d!1225998))

(declare-fun d!1226000 () Bool)

(declare-fun lt!1476979 () BalanceConc!26772)

(assert (=> d!1226000 (= (list!16451 lt!1476979) (originalCharacters!7874 (_1!24783 lt!1476816)))))

(assert (=> d!1226000 (= lt!1476979 (dynLambda!19316 (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816)))) (value!230827 (_1!24783 lt!1476816))))))

(assert (=> d!1226000 (= (charsOf!4977 (_1!24783 lt!1476816)) lt!1476979)))

(declare-fun b_lambda!121731 () Bool)

(assert (=> (not b_lambda!121731) (not d!1226000)))

(declare-fun tb!248583 () Bool)

(declare-fun t!342408 () Bool)

(assert (=> (and b!4140907 (= (toChars!9901 (transformation!7378 (h!50338 rules!3756))) (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816))))) t!342408) tb!248583))

(declare-fun b!4141345 () Bool)

(declare-fun e!2569600 () Bool)

(declare-fun tp!1262367 () Bool)

(assert (=> b!4141345 (= e!2569600 (and (inv!59525 (c!709838 (dynLambda!19316 (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816)))) (value!230827 (_1!24783 lt!1476816))))) tp!1262367))))

(declare-fun result!302274 () Bool)

(assert (=> tb!248583 (= result!302274 (and (inv!59526 (dynLambda!19316 (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816)))) (value!230827 (_1!24783 lt!1476816)))) e!2569600))))

(assert (= tb!248583 b!4141345))

(declare-fun m!4737831 () Bool)

(assert (=> b!4141345 m!4737831))

(declare-fun m!4737833 () Bool)

(assert (=> tb!248583 m!4737833))

(assert (=> d!1226000 t!342408))

(declare-fun b_and!321635 () Bool)

(assert (= b_and!321613 (and (=> t!342408 result!302274) b_and!321635)))

(declare-fun tb!248585 () Bool)

(declare-fun t!342410 () Bool)

(assert (=> (and b!4140904 (= (toChars!9901 (transformation!7378 rBis!149)) (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816))))) t!342410) tb!248585))

(declare-fun result!302276 () Bool)

(assert (= result!302276 result!302274))

(assert (=> d!1226000 t!342410))

(declare-fun b_and!321637 () Bool)

(assert (= b_and!321615 (and (=> t!342410 result!302276) b_and!321637)))

(declare-fun tb!248587 () Bool)

(declare-fun t!342412 () Bool)

(assert (=> (and b!4140914 (= (toChars!9901 (transformation!7378 r!4008)) (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816))))) t!342412) tb!248587))

(declare-fun result!302278 () Bool)

(assert (= result!302278 result!302274))

(assert (=> d!1226000 t!342412))

(declare-fun b_and!321639 () Bool)

(assert (= b_and!321617 (and (=> t!342412 result!302278) b_and!321639)))

(declare-fun m!4737835 () Bool)

(assert (=> d!1226000 m!4737835))

(declare-fun m!4737837 () Bool)

(assert (=> d!1226000 m!4737837))

(assert (=> b!4140905 d!1226000))

(declare-fun d!1226002 () Bool)

(assert (=> d!1226002 (= (get!14662 lt!1476825) (v!40321 lt!1476825))))

(assert (=> b!4140905 d!1226002))

(declare-fun d!1226004 () Bool)

(declare-fun e!2569601 () Bool)

(assert (=> d!1226004 e!2569601))

(declare-fun res!1694349 () Bool)

(assert (=> d!1226004 (=> res!1694349 e!2569601)))

(declare-fun lt!1476980 () Bool)

(assert (=> d!1226004 (= res!1694349 (not lt!1476980))))

(declare-fun e!2569603 () Bool)

(assert (=> d!1226004 (= lt!1476980 e!2569603)))

(declare-fun res!1694348 () Bool)

(assert (=> d!1226004 (=> res!1694348 e!2569603)))

(assert (=> d!1226004 (= res!1694348 ((_ is Nil!44916) lt!1476822))))

(assert (=> d!1226004 (= (isPrefix!4313 lt!1476822 lt!1476827) lt!1476980)))

(declare-fun b!4141346 () Bool)

(declare-fun e!2569602 () Bool)

(assert (=> b!4141346 (= e!2569603 e!2569602)))

(declare-fun res!1694350 () Bool)

(assert (=> b!4141346 (=> (not res!1694350) (not e!2569602))))

(assert (=> b!4141346 (= res!1694350 (not ((_ is Nil!44916) lt!1476827)))))

(declare-fun b!4141347 () Bool)

(declare-fun res!1694347 () Bool)

(assert (=> b!4141347 (=> (not res!1694347) (not e!2569602))))

(assert (=> b!4141347 (= res!1694347 (= (head!8736 lt!1476822) (head!8736 lt!1476827)))))

(declare-fun b!4141348 () Bool)

(assert (=> b!4141348 (= e!2569602 (isPrefix!4313 (tail!6551 lt!1476822) (tail!6551 lt!1476827)))))

(declare-fun b!4141349 () Bool)

(assert (=> b!4141349 (= e!2569601 (>= (size!33274 lt!1476827) (size!33274 lt!1476822)))))

(assert (= (and d!1226004 (not res!1694348)) b!4141346))

(assert (= (and b!4141346 res!1694350) b!4141347))

(assert (= (and b!4141347 res!1694347) b!4141348))

(assert (= (and d!1226004 (not res!1694349)) b!4141349))

(assert (=> b!4141347 m!4737655))

(declare-fun m!4737839 () Bool)

(assert (=> b!4141347 m!4737839))

(assert (=> b!4141348 m!4737657))

(declare-fun m!4737841 () Bool)

(assert (=> b!4141348 m!4737841))

(assert (=> b!4141348 m!4737657))

(assert (=> b!4141348 m!4737841))

(declare-fun m!4737843 () Bool)

(assert (=> b!4141348 m!4737843))

(declare-fun m!4737845 () Bool)

(assert (=> b!4141349 m!4737845))

(assert (=> b!4141349 m!4737661))

(assert (=> b!4140903 d!1226004))

(declare-fun b!4141360 () Bool)

(declare-fun res!1694356 () Bool)

(declare-fun e!2569608 () Bool)

(assert (=> b!4141360 (=> (not res!1694356) (not e!2569608))))

(declare-fun lt!1476983 () List!45040)

(assert (=> b!4141360 (= res!1694356 (= (size!33274 lt!1476983) (+ (size!33274 lt!1476822) (size!33274 (_2!24783 lt!1476816)))))))

(declare-fun b!4141359 () Bool)

(declare-fun e!2569609 () List!45040)

(assert (=> b!4141359 (= e!2569609 (Cons!44916 (h!50336 lt!1476822) (++!11618 (t!342367 lt!1476822) (_2!24783 lt!1476816))))))

(declare-fun b!4141361 () Bool)

(assert (=> b!4141361 (= e!2569608 (or (not (= (_2!24783 lt!1476816) Nil!44916)) (= lt!1476983 lt!1476822)))))

(declare-fun d!1226006 () Bool)

(assert (=> d!1226006 e!2569608))

(declare-fun res!1694355 () Bool)

(assert (=> d!1226006 (=> (not res!1694355) (not e!2569608))))

(declare-fun content!6941 (List!45040) (InoxSet C!24752))

(assert (=> d!1226006 (= res!1694355 (= (content!6941 lt!1476983) ((_ map or) (content!6941 lt!1476822) (content!6941 (_2!24783 lt!1476816)))))))

(assert (=> d!1226006 (= lt!1476983 e!2569609)))

(declare-fun c!709907 () Bool)

(assert (=> d!1226006 (= c!709907 ((_ is Nil!44916) lt!1476822))))

(assert (=> d!1226006 (= (++!11618 lt!1476822 (_2!24783 lt!1476816)) lt!1476983)))

(declare-fun b!4141358 () Bool)

(assert (=> b!4141358 (= e!2569609 (_2!24783 lt!1476816))))

(assert (= (and d!1226006 c!709907) b!4141358))

(assert (= (and d!1226006 (not c!709907)) b!4141359))

(assert (= (and d!1226006 res!1694355) b!4141360))

(assert (= (and b!4141360 res!1694356) b!4141361))

(declare-fun m!4737847 () Bool)

(assert (=> b!4141360 m!4737847))

(assert (=> b!4141360 m!4737661))

(declare-fun m!4737849 () Bool)

(assert (=> b!4141360 m!4737849))

(declare-fun m!4737851 () Bool)

(assert (=> b!4141359 m!4737851))

(declare-fun m!4737853 () Bool)

(assert (=> d!1226006 m!4737853))

(declare-fun m!4737855 () Bool)

(assert (=> d!1226006 m!4737855))

(declare-fun m!4737857 () Bool)

(assert (=> d!1226006 m!4737857))

(assert (=> b!4140903 d!1226006))

(declare-fun d!1226008 () Bool)

(assert (=> d!1226008 (isPrefix!4313 lt!1476822 (++!11618 lt!1476822 (_2!24783 lt!1476816)))))

(declare-fun lt!1476986 () Unit!64217)

(declare-fun choose!25332 (List!45040 List!45040) Unit!64217)

(assert (=> d!1226008 (= lt!1476986 (choose!25332 lt!1476822 (_2!24783 lt!1476816)))))

(assert (=> d!1226008 (= (lemmaConcatTwoListThenFirstIsPrefix!2942 lt!1476822 (_2!24783 lt!1476816)) lt!1476986)))

(declare-fun bs!595246 () Bool)

(assert (= bs!595246 d!1226008))

(assert (=> bs!595246 m!4737413))

(assert (=> bs!595246 m!4737413))

(declare-fun m!4737859 () Bool)

(assert (=> bs!595246 m!4737859))

(declare-fun m!4737861 () Bool)

(assert (=> bs!595246 m!4737861))

(assert (=> b!4140903 d!1226008))

(declare-fun d!1226010 () Bool)

(declare-fun list!16453 (Conc!13589) List!45040)

(assert (=> d!1226010 (= (list!16451 lt!1476820) (list!16453 (c!709838 lt!1476820)))))

(declare-fun bs!595247 () Bool)

(assert (= bs!595247 d!1226010))

(declare-fun m!4737863 () Bool)

(assert (=> bs!595247 m!4737863))

(assert (=> b!4140903 d!1226010))

(declare-fun e!2569612 () Bool)

(assert (=> b!4140918 (= tp!1262308 e!2569612)))

(declare-fun b!4141374 () Bool)

(declare-fun tp!1262379 () Bool)

(assert (=> b!4141374 (= e!2569612 tp!1262379)))

(declare-fun b!4141372 () Bool)

(assert (=> b!4141372 (= e!2569612 tp_is_empty!21489)))

(declare-fun b!4141375 () Bool)

(declare-fun tp!1262378 () Bool)

(declare-fun tp!1262381 () Bool)

(assert (=> b!4141375 (= e!2569612 (and tp!1262378 tp!1262381))))

(declare-fun b!4141373 () Bool)

(declare-fun tp!1262382 () Bool)

(declare-fun tp!1262380 () Bool)

(assert (=> b!4141373 (= e!2569612 (and tp!1262382 tp!1262380))))

(assert (= (and b!4140918 ((_ is ElementMatch!12283) (regex!7378 (h!50338 rules!3756)))) b!4141372))

(assert (= (and b!4140918 ((_ is Concat!19892) (regex!7378 (h!50338 rules!3756)))) b!4141373))

(assert (= (and b!4140918 ((_ is Star!12283) (regex!7378 (h!50338 rules!3756)))) b!4141374))

(assert (= (and b!4140918 ((_ is Union!12283) (regex!7378 (h!50338 rules!3756)))) b!4141375))

(declare-fun b!4141380 () Bool)

(declare-fun e!2569615 () Bool)

(declare-fun tp!1262385 () Bool)

(assert (=> b!4141380 (= e!2569615 (and tp_is_empty!21489 tp!1262385))))

(assert (=> b!4140902 (= tp!1262315 e!2569615)))

(assert (= (and b!4140902 ((_ is Cons!44916) (t!342367 input!3238))) b!4141380))

(declare-fun b!4141391 () Bool)

(declare-fun b_free!117963 () Bool)

(declare-fun b_next!118667 () Bool)

(assert (=> b!4141391 (= b_free!117963 (not b_next!118667))))

(declare-fun tb!248589 () Bool)

(declare-fun t!342414 () Bool)

(assert (=> (and b!4141391 (= (toValue!10042 (transformation!7378 (h!50338 (t!342369 rules!3756)))) (toValue!10042 (transformation!7378 r!4008))) t!342414) tb!248589))

(declare-fun result!302286 () Bool)

(assert (= result!302286 result!302254))

(assert (=> d!1225912 t!342414))

(assert (=> d!1225934 t!342414))

(declare-fun tp!1262396 () Bool)

(declare-fun b_and!321641 () Bool)

(assert (=> b!4141391 (= tp!1262396 (and (=> t!342414 result!302286) b_and!321641))))

(declare-fun b_free!117965 () Bool)

(declare-fun b_next!118669 () Bool)

(assert (=> b!4141391 (= b_free!117965 (not b_next!118669))))

(declare-fun tb!248591 () Bool)

(declare-fun t!342416 () Bool)

(assert (=> (and b!4141391 (= (toChars!9901 (transformation!7378 (h!50338 (t!342369 rules!3756)))) (toChars!9901 (transformation!7378 r!4008))) t!342416) tb!248591))

(declare-fun result!302288 () Bool)

(assert (= result!302288 result!302246))

(assert (=> d!1225912 t!342416))

(declare-fun tb!248593 () Bool)

(declare-fun t!342418 () Bool)

(assert (=> (and b!4141391 (= (toChars!9901 (transformation!7378 (h!50338 (t!342369 rules!3756)))) (toChars!9901 (transformation!7378 (rule!10488 (_1!24783 lt!1476816))))) t!342418) tb!248593))

(declare-fun result!302290 () Bool)

(assert (= result!302290 result!302274))

(assert (=> d!1226000 t!342418))

(declare-fun tp!1262397 () Bool)

(declare-fun b_and!321643 () Bool)

(assert (=> b!4141391 (= tp!1262397 (and (=> t!342416 result!302288) (=> t!342418 result!302290) b_and!321643))))

(declare-fun e!2569624 () Bool)

(assert (=> b!4141391 (= e!2569624 (and tp!1262396 tp!1262397))))

(declare-fun b!4141390 () Bool)

(declare-fun tp!1262395 () Bool)

(declare-fun e!2569626 () Bool)

(assert (=> b!4141390 (= e!2569626 (and tp!1262395 (inv!59520 (tag!8238 (h!50338 (t!342369 rules!3756)))) (inv!59522 (transformation!7378 (h!50338 (t!342369 rules!3756)))) e!2569624))))

(declare-fun b!4141389 () Bool)

(declare-fun e!2569625 () Bool)

(declare-fun tp!1262394 () Bool)

(assert (=> b!4141389 (= e!2569625 (and e!2569626 tp!1262394))))

(assert (=> b!4140913 (= tp!1262311 e!2569625)))

(assert (= b!4141390 b!4141391))

(assert (= b!4141389 b!4141390))

(assert (= (and b!4140913 ((_ is Cons!44918) (t!342369 rules!3756))) b!4141389))

(declare-fun m!4737865 () Bool)

(assert (=> b!4141390 m!4737865))

(declare-fun m!4737867 () Bool)

(assert (=> b!4141390 m!4737867))

(declare-fun e!2569628 () Bool)

(assert (=> b!4140922 (= tp!1262312 e!2569628)))

(declare-fun b!4141394 () Bool)

(declare-fun tp!1262399 () Bool)

(assert (=> b!4141394 (= e!2569628 tp!1262399)))

(declare-fun b!4141392 () Bool)

(assert (=> b!4141392 (= e!2569628 tp_is_empty!21489)))

(declare-fun b!4141395 () Bool)

(declare-fun tp!1262398 () Bool)

(declare-fun tp!1262401 () Bool)

(assert (=> b!4141395 (= e!2569628 (and tp!1262398 tp!1262401))))

(declare-fun b!4141393 () Bool)

(declare-fun tp!1262402 () Bool)

(declare-fun tp!1262400 () Bool)

(assert (=> b!4141393 (= e!2569628 (and tp!1262402 tp!1262400))))

(assert (= (and b!4140922 ((_ is ElementMatch!12283) (regex!7378 r!4008))) b!4141392))

(assert (= (and b!4140922 ((_ is Concat!19892) (regex!7378 r!4008))) b!4141393))

(assert (= (and b!4140922 ((_ is Star!12283) (regex!7378 r!4008))) b!4141394))

(assert (= (and b!4140922 ((_ is Union!12283) (regex!7378 r!4008))) b!4141395))

(declare-fun e!2569629 () Bool)

(assert (=> b!4140910 (= tp!1262309 e!2569629)))

(declare-fun b!4141398 () Bool)

(declare-fun tp!1262404 () Bool)

(assert (=> b!4141398 (= e!2569629 tp!1262404)))

(declare-fun b!4141396 () Bool)

(assert (=> b!4141396 (= e!2569629 tp_is_empty!21489)))

(declare-fun b!4141399 () Bool)

(declare-fun tp!1262403 () Bool)

(declare-fun tp!1262406 () Bool)

(assert (=> b!4141399 (= e!2569629 (and tp!1262403 tp!1262406))))

(declare-fun b!4141397 () Bool)

(declare-fun tp!1262407 () Bool)

(declare-fun tp!1262405 () Bool)

(assert (=> b!4141397 (= e!2569629 (and tp!1262407 tp!1262405))))

(assert (= (and b!4140910 ((_ is ElementMatch!12283) (regex!7378 rBis!149))) b!4141396))

(assert (= (and b!4140910 ((_ is Concat!19892) (regex!7378 rBis!149))) b!4141397))

(assert (= (and b!4140910 ((_ is Star!12283) (regex!7378 rBis!149))) b!4141398))

(assert (= (and b!4140910 ((_ is Union!12283) (regex!7378 rBis!149))) b!4141399))

(declare-fun b!4141400 () Bool)

(declare-fun e!2569630 () Bool)

(declare-fun tp!1262408 () Bool)

(assert (=> b!4141400 (= e!2569630 (and tp_is_empty!21489 tp!1262408))))

(assert (=> b!4140915 (= tp!1262316 e!2569630)))

(assert (= (and b!4140915 ((_ is Cons!44916) (t!342367 p!2912))) b!4141400))

(declare-fun b_lambda!121733 () Bool)

(assert (= b_lambda!121723 (or (and b!4140907 b_free!117947 (= (toValue!10042 (transformation!7378 (h!50338 rules!3756))) (toValue!10042 (transformation!7378 r!4008)))) (and b!4140904 b_free!117951 (= (toValue!10042 (transformation!7378 rBis!149)) (toValue!10042 (transformation!7378 r!4008)))) (and b!4140914 b_free!117955) (and b!4141391 b_free!117963 (= (toValue!10042 (transformation!7378 (h!50338 (t!342369 rules!3756)))) (toValue!10042 (transformation!7378 r!4008)))) b_lambda!121733)))

(declare-fun b_lambda!121735 () Bool)

(assert (= b_lambda!121719 (or (and b!4140907 b_free!117949 (= (toChars!9901 (transformation!7378 (h!50338 rules!3756))) (toChars!9901 (transformation!7378 r!4008)))) (and b!4140904 b_free!117953 (= (toChars!9901 (transformation!7378 rBis!149)) (toChars!9901 (transformation!7378 r!4008)))) (and b!4140914 b_free!117957) (and b!4141391 b_free!117965 (= (toChars!9901 (transformation!7378 (h!50338 (t!342369 rules!3756)))) (toChars!9901 (transformation!7378 r!4008)))) b_lambda!121735)))

(declare-fun b_lambda!121737 () Bool)

(assert (= b_lambda!121721 (or (and b!4140907 b_free!117947 (= (toValue!10042 (transformation!7378 (h!50338 rules!3756))) (toValue!10042 (transformation!7378 r!4008)))) (and b!4140904 b_free!117951 (= (toValue!10042 (transformation!7378 rBis!149)) (toValue!10042 (transformation!7378 r!4008)))) (and b!4140914 b_free!117955) (and b!4141391 b_free!117963 (= (toValue!10042 (transformation!7378 (h!50338 (t!342369 rules!3756)))) (toValue!10042 (transformation!7378 r!4008)))) b_lambda!121737)))

(check-sat (not d!1225862) (not d!1225940) (not b_lambda!121737) (not b!4141010) (not b!4141188) (not b!4141025) (not b_lambda!121735) (not b!4141373) (not b!4141335) (not d!1225998) (not d!1225986) (not b!4141334) (not d!1225904) (not b!4141003) (not b!4141113) (not d!1225984) (not b_next!118661) (not b!4141330) (not b!4141085) (not b!4141078) (not b!4141181) (not d!1225948) b_and!321625 (not bm!290504) (not b!4141195) (not b!4141008) b_and!321635 (not b!4141112) (not b!4140943) (not b!4141399) (not b!4141393) (not d!1225994) (not b!4141342) b_and!321629 (not b_next!118657) (not b!4141205) (not tb!248565) (not b!4141067) (not d!1225938) (not d!1225992) (not b!4141380) (not d!1226000) (not b!4141217) (not b!4141389) (not d!1225900) (not d!1225854) (not b!4141119) (not b_next!118651) (not tb!248571) (not b!4141400) (not d!1225996) (not b!4141359) (not b!4141375) (not b!4141374) (not b_lambda!121731) (not b!4141105) (not b!4141110) (not b!4141348) (not b!4141390) (not b!4141106) (not d!1225946) (not b!4141202) (not b!4141349) (not d!1225908) (not b!4141337) (not b!4141185) (not b_lambda!121733) (not b!4141347) b_and!321639 b_and!321641 (not b!4140999) (not b!4141340) (not d!1225906) (not b!4141360) (not b!4141203) (not d!1226006) (not b!4141398) tp_is_empty!21489 (not b!4141329) (not b!4141345) (not b!4141000) (not b_next!118667) (not b!4141332) (not b!4141111) (not d!1225952) (not tb!248583) (not b_next!118655) (not d!1225868) (not b!4141397) (not b!4141394) (not b!4141343) (not b!4141080) (not b!4141108) b_and!321643 (not b!4141336) (not b!4141107) (not d!1225912) (not bm!290498) (not d!1225888) (not b!4141331) (not b!4141063) (not b!4141079) (not b!4141395) b_and!321637 (not b!4141204) (not b!4140931) (not d!1226008) (not b_next!118653) (not b_next!118669) b_and!321627 (not d!1226010) (not d!1225990) (not d!1225890) (not b_next!118659) (not b!4141009))
(check-sat (not b_next!118661) b_and!321625 b_and!321635 (not b_next!118651) b_and!321639 b_and!321641 b_and!321643 (not b_next!118659) b_and!321629 (not b_next!118657) (not b_next!118667) (not b_next!118655) b_and!321637 (not b_next!118653) (not b_next!118669) b_and!321627)
