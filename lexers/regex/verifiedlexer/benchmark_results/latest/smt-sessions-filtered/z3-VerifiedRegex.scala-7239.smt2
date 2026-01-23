; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385576 () Bool)

(assert start!385576)

(declare-fun b!4080678 () Bool)

(declare-fun b_free!113857 () Bool)

(declare-fun b_next!114561 () Bool)

(assert (=> b!4080678 (= b_free!113857 (not b_next!114561))))

(declare-fun tp!1235292 () Bool)

(declare-fun b_and!313919 () Bool)

(assert (=> b!4080678 (= tp!1235292 b_and!313919)))

(declare-fun b_free!113859 () Bool)

(declare-fun b_next!114563 () Bool)

(assert (=> b!4080678 (= b_free!113859 (not b_next!114563))))

(declare-fun tp!1235286 () Bool)

(declare-fun b_and!313921 () Bool)

(assert (=> b!4080678 (= tp!1235286 b_and!313921)))

(declare-fun b!4080681 () Bool)

(declare-fun b_free!113861 () Bool)

(declare-fun b_next!114565 () Bool)

(assert (=> b!4080681 (= b_free!113861 (not b_next!114565))))

(declare-fun tp!1235290 () Bool)

(declare-fun b_and!313923 () Bool)

(assert (=> b!4080681 (= tp!1235290 b_and!313923)))

(declare-fun b_free!113863 () Bool)

(declare-fun b_next!114567 () Bool)

(assert (=> b!4080681 (= b_free!113863 (not b_next!114567))))

(declare-fun tp!1235293 () Bool)

(declare-fun b_and!313925 () Bool)

(assert (=> b!4080681 (= tp!1235293 b_and!313925)))

(declare-fun b!4080672 () Bool)

(declare-fun e!2532696 () Bool)

(declare-fun tp_is_empty!20913 () Bool)

(declare-fun tp!1235285 () Bool)

(assert (=> b!4080672 (= e!2532696 (and tp_is_empty!20913 tp!1235285))))

(declare-fun b!4080673 () Bool)

(declare-fun e!2532691 () Bool)

(declare-fun e!2532702 () Bool)

(declare-fun tp!1235289 () Bool)

(assert (=> b!4080673 (= e!2532691 (and e!2532702 tp!1235289))))

(declare-fun b!4080674 () Bool)

(declare-fun e!2532700 () Bool)

(declare-fun tp!1235288 () Bool)

(assert (=> b!4080674 (= e!2532700 (and tp_is_empty!20913 tp!1235288))))

(declare-fun res!1667122 () Bool)

(declare-fun e!2532701 () Bool)

(assert (=> start!385576 (=> (not res!1667122) (not e!2532701))))

(declare-datatypes ((LexerInterface!6639 0))(
  ( (LexerInterfaceExt!6636 (__x!26777 Int)) (Lexer!6637) )
))
(declare-fun thiss!26199 () LexerInterface!6639)

(get-info :version)

(assert (=> start!385576 (= res!1667122 ((_ is Lexer!6637) thiss!26199))))

(assert (=> start!385576 e!2532701))

(assert (=> start!385576 true))

(assert (=> start!385576 e!2532700))

(assert (=> start!385576 e!2532691))

(assert (=> start!385576 e!2532696))

(declare-fun e!2532697 () Bool)

(assert (=> start!385576 e!2532697))

(declare-fun e!2532693 () Bool)

(assert (=> start!385576 e!2532693))

(declare-fun tp!1235287 () Bool)

(declare-datatypes ((C!24096 0))(
  ( (C!24097 (val!14158 Int)) )
))
(declare-datatypes ((Regex!11955 0))(
  ( (ElementMatch!11955 (c!703742 C!24096)) (Concat!19235 (regOne!24422 Regex!11955) (regTwo!24422 Regex!11955)) (EmptyExpr!11955) (Star!11955 (reg!12284 Regex!11955)) (EmptyLang!11955) (Union!11955 (regOne!24423 Regex!11955) (regTwo!24423 Regex!11955)) )
))
(declare-datatypes ((String!50149 0))(
  ( (String!50150 (value!221551 String)) )
))
(declare-datatypes ((List!43827 0))(
  ( (Nil!43703) (Cons!43703 (h!49123 (_ BitVec 16)) (t!337714 List!43827)) )
))
(declare-datatypes ((TokenValue!7280 0))(
  ( (FloatLiteralValue!14560 (text!51405 List!43827)) (TokenValueExt!7279 (__x!26778 Int)) (Broken!36400 (value!221552 List!43827)) (Object!7403) (End!7280) (Def!7280) (Underscore!7280) (Match!7280) (Else!7280) (Error!7280) (Case!7280) (If!7280) (Extends!7280) (Abstract!7280) (Class!7280) (Val!7280) (DelimiterValue!14560 (del!7340 List!43827)) (KeywordValue!7286 (value!221553 List!43827)) (CommentValue!14560 (value!221554 List!43827)) (WhitespaceValue!14560 (value!221555 List!43827)) (IndentationValue!7280 (value!221556 List!43827)) (String!50151) (Int32!7280) (Broken!36401 (value!221557 List!43827)) (Boolean!7281) (Unit!63240) (OperatorValue!7283 (op!7340 List!43827)) (IdentifierValue!14560 (value!221558 List!43827)) (IdentifierValue!14561 (value!221559 List!43827)) (WhitespaceValue!14561 (value!221560 List!43827)) (True!14560) (False!14560) (Broken!36402 (value!221561 List!43827)) (Broken!36403 (value!221562 List!43827)) (True!14561) (RightBrace!7280) (RightBracket!7280) (Colon!7280) (Null!7280) (Comma!7280) (LeftBracket!7280) (False!14561) (LeftBrace!7280) (ImaginaryLiteralValue!7280 (text!51406 List!43827)) (StringLiteralValue!21840 (value!221563 List!43827)) (EOFValue!7280 (value!221564 List!43827)) (IdentValue!7280 (value!221565 List!43827)) (DelimiterValue!14561 (value!221566 List!43827)) (DedentValue!7280 (value!221567 List!43827)) (NewLineValue!7280 (value!221568 List!43827)) (IntegerValue!21840 (value!221569 (_ BitVec 32)) (text!51407 List!43827)) (IntegerValue!21841 (value!221570 Int) (text!51408 List!43827)) (Times!7280) (Or!7280) (Equal!7280) (Minus!7280) (Broken!36404 (value!221571 List!43827)) (And!7280) (Div!7280) (LessEqual!7280) (Mod!7280) (Concat!19236) (Not!7280) (Plus!7280) (SpaceValue!7280 (value!221572 List!43827)) (IntegerValue!21842 (value!221573 Int) (text!51409 List!43827)) (StringLiteralValue!21841 (text!51410 List!43827)) (FloatLiteralValue!14561 (text!51411 List!43827)) (BytesLiteralValue!7280 (value!221574 List!43827)) (CommentValue!14561 (value!221575 List!43827)) (StringLiteralValue!21842 (value!221576 List!43827)) (ErrorTokenValue!7280 (msg!7341 List!43827)) )
))
(declare-datatypes ((List!43828 0))(
  ( (Nil!43704) (Cons!43704 (h!49124 C!24096) (t!337715 List!43828)) )
))
(declare-datatypes ((IArray!26527 0))(
  ( (IArray!26528 (innerList!13321 List!43828)) )
))
(declare-datatypes ((Conc!13261 0))(
  ( (Node!13261 (left!32848 Conc!13261) (right!33178 Conc!13261) (csize!26752 Int) (cheight!13472 Int)) (Leaf!20501 (xs!16567 IArray!26527) (csize!26753 Int)) (Empty!13261) )
))
(declare-datatypes ((BalanceConc!26116 0))(
  ( (BalanceConc!26117 (c!703743 Conc!13261)) )
))
(declare-datatypes ((TokenValueInjection!13988 0))(
  ( (TokenValueInjection!13989 (toValue!9622 Int) (toChars!9481 Int)) )
))
(declare-datatypes ((Rule!13900 0))(
  ( (Rule!13901 (regex!7050 Regex!11955) (tag!7910 String!50149) (isSeparator!7050 Bool) (transformation!7050 TokenValueInjection!13988)) )
))
(declare-fun r!4213 () Rule!13900)

(declare-fun e!2532694 () Bool)

(declare-fun b!4080675 () Bool)

(declare-fun inv!58365 (String!50149) Bool)

(declare-fun inv!58367 (TokenValueInjection!13988) Bool)

(assert (=> b!4080675 (= e!2532693 (and tp!1235287 (inv!58365 (tag!7910 r!4213)) (inv!58367 (transformation!7050 r!4213)) e!2532694))))

(declare-fun b!4080676 () Bool)

(declare-fun res!1667125 () Bool)

(assert (=> b!4080676 (=> (not res!1667125) (not e!2532701))))

(declare-fun p!2988 () List!43828)

(declare-fun isEmpty!26114 (List!43828) Bool)

(assert (=> b!4080676 (= res!1667125 (not (isEmpty!26114 p!2988)))))

(declare-fun e!2532695 () Bool)

(declare-datatypes ((List!43829 0))(
  ( (Nil!43705) (Cons!43705 (h!49125 Rule!13900) (t!337716 List!43829)) )
))
(declare-fun rules!3870 () List!43829)

(declare-fun tp!1235294 () Bool)

(declare-fun b!4080677 () Bool)

(assert (=> b!4080677 (= e!2532702 (and tp!1235294 (inv!58365 (tag!7910 (h!49125 rules!3870))) (inv!58367 (transformation!7050 (h!49125 rules!3870))) e!2532695))))

(assert (=> b!4080678 (= e!2532695 (and tp!1235292 tp!1235286))))

(declare-fun b!4080679 () Bool)

(declare-fun e!2532699 () Bool)

(assert (=> b!4080679 (= e!2532701 e!2532699)))

(declare-fun res!1667123 () Bool)

(assert (=> b!4080679 (=> (not res!1667123) (not e!2532699))))

(declare-fun suffix!1518 () List!43828)

(declare-fun input!3411 () List!43828)

(declare-fun lt!1460074 () BalanceConc!26116)

(declare-datatypes ((Token!13226 0))(
  ( (Token!13227 (value!221577 TokenValue!7280) (rule!10168 Rule!13900) (size!32647 Int) (originalCharacters!7644 List!43828)) )
))
(declare-datatypes ((tuple2!42670 0))(
  ( (tuple2!42671 (_1!24469 Token!13226) (_2!24469 List!43828)) )
))
(declare-datatypes ((Option!9458 0))(
  ( (None!9457) (Some!9457 (v!39915 tuple2!42670)) )
))
(declare-fun maxPrefix!3931 (LexerInterface!6639 List!43829 List!43828) Option!9458)

(declare-fun apply!10233 (TokenValueInjection!13988 BalanceConc!26116) TokenValue!7280)

(declare-fun size!32648 (List!43828) Int)

(assert (=> b!4080679 (= res!1667123 (= (maxPrefix!3931 thiss!26199 rules!3870 input!3411) (Some!9457 (tuple2!42671 (Token!13227 (apply!10233 (transformation!7050 r!4213) lt!1460074) r!4213 (size!32648 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63241 0))(
  ( (Unit!63242) )
))
(declare-fun lt!1460075 () Unit!63241)

(declare-fun lemmaSemiInverse!2017 (TokenValueInjection!13988 BalanceConc!26116) Unit!63241)

(assert (=> b!4080679 (= lt!1460075 (lemmaSemiInverse!2017 (transformation!7050 r!4213) lt!1460074))))

(declare-fun seqFromList!5267 (List!43828) BalanceConc!26116)

(assert (=> b!4080679 (= lt!1460074 (seqFromList!5267 p!2988))))

(declare-fun b!4080680 () Bool)

(declare-fun res!1667121 () Bool)

(assert (=> b!4080680 (=> (not res!1667121) (not e!2532701))))

(declare-fun isEmpty!26115 (List!43829) Bool)

(assert (=> b!4080680 (= res!1667121 (not (isEmpty!26115 rules!3870)))))

(assert (=> b!4080681 (= e!2532694 (and tp!1235290 tp!1235293))))

(declare-fun b!4080682 () Bool)

(declare-fun res!1667126 () Bool)

(assert (=> b!4080682 (=> (not res!1667126) (not e!2532701))))

(declare-fun contains!8721 (List!43829 Rule!13900) Bool)

(assert (=> b!4080682 (= res!1667126 (contains!8721 rules!3870 r!4213))))

(declare-fun b!4080683 () Bool)

(assert (=> b!4080683 (= e!2532699 (not true))))

(declare-fun lt!1460073 () Bool)

(declare-fun matchR!5900 (Regex!11955 List!43828) Bool)

(assert (=> b!4080683 (= lt!1460073 (matchR!5900 (regex!7050 r!4213) p!2988))))

(declare-fun ruleValid!2974 (LexerInterface!6639 Rule!13900) Bool)

(assert (=> b!4080683 (ruleValid!2974 thiss!26199 r!4213)))

(declare-fun lt!1460072 () Unit!63241)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2042 (LexerInterface!6639 Rule!13900 List!43829) Unit!63241)

(assert (=> b!4080683 (= lt!1460072 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2042 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4080684 () Bool)

(declare-fun tp!1235291 () Bool)

(assert (=> b!4080684 (= e!2532697 (and tp_is_empty!20913 tp!1235291))))

(declare-fun b!4080685 () Bool)

(declare-fun res!1667124 () Bool)

(assert (=> b!4080685 (=> (not res!1667124) (not e!2532701))))

(declare-fun ++!11456 (List!43828 List!43828) List!43828)

(assert (=> b!4080685 (= res!1667124 (= input!3411 (++!11456 p!2988 suffix!1518)))))

(declare-fun b!4080686 () Bool)

(declare-fun res!1667127 () Bool)

(assert (=> b!4080686 (=> (not res!1667127) (not e!2532701))))

(declare-fun rulesInvariant!5982 (LexerInterface!6639 List!43829) Bool)

(assert (=> b!4080686 (= res!1667127 (rulesInvariant!5982 thiss!26199 rules!3870))))

(assert (= (and start!385576 res!1667122) b!4080680))

(assert (= (and b!4080680 res!1667121) b!4080686))

(assert (= (and b!4080686 res!1667127) b!4080682))

(assert (= (and b!4080682 res!1667126) b!4080685))

(assert (= (and b!4080685 res!1667124) b!4080676))

(assert (= (and b!4080676 res!1667125) b!4080679))

(assert (= (and b!4080679 res!1667123) b!4080683))

(assert (= (and start!385576 ((_ is Cons!43704) suffix!1518)) b!4080674))

(assert (= b!4080677 b!4080678))

(assert (= b!4080673 b!4080677))

(assert (= (and start!385576 ((_ is Cons!43705) rules!3870)) b!4080673))

(assert (= (and start!385576 ((_ is Cons!43704) p!2988)) b!4080672))

(assert (= (and start!385576 ((_ is Cons!43704) input!3411)) b!4080684))

(assert (= b!4080675 b!4080681))

(assert (= start!385576 b!4080675))

(declare-fun m!4688415 () Bool)

(assert (=> b!4080676 m!4688415))

(declare-fun m!4688417 () Bool)

(assert (=> b!4080683 m!4688417))

(declare-fun m!4688419 () Bool)

(assert (=> b!4080683 m!4688419))

(declare-fun m!4688421 () Bool)

(assert (=> b!4080683 m!4688421))

(declare-fun m!4688423 () Bool)

(assert (=> b!4080677 m!4688423))

(declare-fun m!4688425 () Bool)

(assert (=> b!4080677 m!4688425))

(declare-fun m!4688427 () Bool)

(assert (=> b!4080679 m!4688427))

(declare-fun m!4688429 () Bool)

(assert (=> b!4080679 m!4688429))

(declare-fun m!4688431 () Bool)

(assert (=> b!4080679 m!4688431))

(declare-fun m!4688433 () Bool)

(assert (=> b!4080679 m!4688433))

(declare-fun m!4688435 () Bool)

(assert (=> b!4080679 m!4688435))

(declare-fun m!4688437 () Bool)

(assert (=> b!4080682 m!4688437))

(declare-fun m!4688439 () Bool)

(assert (=> b!4080680 m!4688439))

(declare-fun m!4688441 () Bool)

(assert (=> b!4080685 m!4688441))

(declare-fun m!4688443 () Bool)

(assert (=> b!4080675 m!4688443))

(declare-fun m!4688445 () Bool)

(assert (=> b!4080675 m!4688445))

(declare-fun m!4688447 () Bool)

(assert (=> b!4080686 m!4688447))

(check-sat (not b!4080686) (not b_next!114561) (not b_next!114563) b_and!313923 (not b!4080673) (not b!4080674) b_and!313919 (not b!4080675) (not b!4080676) (not b_next!114567) (not b!4080685) b_and!313925 (not b!4080680) (not b!4080672) tp_is_empty!20913 (not b!4080683) (not b!4080679) (not b_next!114565) (not b!4080682) b_and!313921 (not b!4080677) (not b!4080684))
(check-sat (not b_next!114561) (not b_next!114563) (not b_next!114567) b_and!313923 b_and!313925 b_and!313919 (not b_next!114565) b_and!313921)
