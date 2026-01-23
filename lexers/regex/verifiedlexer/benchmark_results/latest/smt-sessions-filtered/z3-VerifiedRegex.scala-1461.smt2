; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77666 () Bool)

(assert start!77666)

(declare-fun b!860878 () Bool)

(declare-fun b_free!26289 () Bool)

(declare-fun b_next!26353 () Bool)

(assert (=> b!860878 (= b_free!26289 (not b_next!26353))))

(declare-fun tp!271838 () Bool)

(declare-fun b_and!76645 () Bool)

(assert (=> b!860878 (= tp!271838 b_and!76645)))

(declare-fun b_free!26291 () Bool)

(declare-fun b_next!26355 () Bool)

(assert (=> b!860878 (= b_free!26291 (not b_next!26355))))

(declare-fun tp!271841 () Bool)

(declare-fun b_and!76647 () Bool)

(assert (=> b!860878 (= tp!271841 b_and!76647)))

(declare-fun b!860883 () Bool)

(declare-fun b_free!26293 () Bool)

(declare-fun b_next!26357 () Bool)

(assert (=> b!860883 (= b_free!26293 (not b_next!26357))))

(declare-fun tp!271846 () Bool)

(declare-fun b_and!76649 () Bool)

(assert (=> b!860883 (= tp!271846 b_and!76649)))

(declare-fun b_free!26295 () Bool)

(declare-fun b_next!26359 () Bool)

(assert (=> b!860883 (= b_free!26295 (not b_next!26359))))

(declare-fun tp!271843 () Bool)

(declare-fun b_and!76651 () Bool)

(assert (=> b!860883 (= tp!271843 b_and!76651)))

(declare-fun b!860873 () Bool)

(declare-fun b_free!26297 () Bool)

(declare-fun b_next!26361 () Bool)

(assert (=> b!860873 (= b_free!26297 (not b_next!26361))))

(declare-fun tp!271842 () Bool)

(declare-fun b_and!76653 () Bool)

(assert (=> b!860873 (= tp!271842 b_and!76653)))

(declare-fun b_free!26299 () Bool)

(declare-fun b_next!26363 () Bool)

(assert (=> b!860873 (= b_free!26299 (not b_next!26363))))

(declare-fun tp!271847 () Bool)

(declare-fun b_and!76655 () Bool)

(assert (=> b!860873 (= tp!271847 b_and!76655)))

(declare-fun tp!271836 () Bool)

(declare-datatypes ((List!9330 0))(
  ( (Nil!9314) (Cons!9314 (h!14715 (_ BitVec 16)) (t!97596 List!9330)) )
))
(declare-datatypes ((TokenValue!1814 0))(
  ( (FloatLiteralValue!3628 (text!13143 List!9330)) (TokenValueExt!1813 (__x!7359 Int)) (Broken!9070 (value!56491 List!9330)) (Object!1829) (End!1814) (Def!1814) (Underscore!1814) (Match!1814) (Else!1814) (Error!1814) (Case!1814) (If!1814) (Extends!1814) (Abstract!1814) (Class!1814) (Val!1814) (DelimiterValue!3628 (del!1874 List!9330)) (KeywordValue!1820 (value!56492 List!9330)) (CommentValue!3628 (value!56493 List!9330)) (WhitespaceValue!3628 (value!56494 List!9330)) (IndentationValue!1814 (value!56495 List!9330)) (String!10967) (Int32!1814) (Broken!9071 (value!56496 List!9330)) (Boolean!1815) (Unit!13840) (OperatorValue!1817 (op!1874 List!9330)) (IdentifierValue!3628 (value!56497 List!9330)) (IdentifierValue!3629 (value!56498 List!9330)) (WhitespaceValue!3629 (value!56499 List!9330)) (True!3628) (False!3628) (Broken!9072 (value!56500 List!9330)) (Broken!9073 (value!56501 List!9330)) (True!3629) (RightBrace!1814) (RightBracket!1814) (Colon!1814) (Null!1814) (Comma!1814) (LeftBracket!1814) (False!3629) (LeftBrace!1814) (ImaginaryLiteralValue!1814 (text!13144 List!9330)) (StringLiteralValue!5442 (value!56502 List!9330)) (EOFValue!1814 (value!56503 List!9330)) (IdentValue!1814 (value!56504 List!9330)) (DelimiterValue!3629 (value!56505 List!9330)) (DedentValue!1814 (value!56506 List!9330)) (NewLineValue!1814 (value!56507 List!9330)) (IntegerValue!5442 (value!56508 (_ BitVec 32)) (text!13145 List!9330)) (IntegerValue!5443 (value!56509 Int) (text!13146 List!9330)) (Times!1814) (Or!1814) (Equal!1814) (Minus!1814) (Broken!9074 (value!56510 List!9330)) (And!1814) (Div!1814) (LessEqual!1814) (Mod!1814) (Concat!3995) (Not!1814) (Plus!1814) (SpaceValue!1814 (value!56511 List!9330)) (IntegerValue!5444 (value!56512 Int) (text!13147 List!9330)) (StringLiteralValue!5443 (text!13148 List!9330)) (FloatLiteralValue!3629 (text!13149 List!9330)) (BytesLiteralValue!1814 (value!56513 List!9330)) (CommentValue!3629 (value!56514 List!9330)) (StringLiteralValue!5444 (value!56515 List!9330)) (ErrorTokenValue!1814 (msg!1875 List!9330)) )
))
(declare-datatypes ((C!4932 0))(
  ( (C!4933 (val!2714 Int)) )
))
(declare-datatypes ((Regex!2181 0))(
  ( (ElementMatch!2181 (c!139301 C!4932)) (Concat!3996 (regOne!4874 Regex!2181) (regTwo!4874 Regex!2181)) (EmptyExpr!2181) (Star!2181 (reg!2510 Regex!2181)) (EmptyLang!2181) (Union!2181 (regOne!4875 Regex!2181) (regTwo!4875 Regex!2181)) )
))
(declare-datatypes ((String!10968 0))(
  ( (String!10969 (value!56516 String)) )
))
(declare-datatypes ((List!9331 0))(
  ( (Nil!9315) (Cons!9315 (h!14716 C!4932) (t!97597 List!9331)) )
))
(declare-datatypes ((IArray!6179 0))(
  ( (IArray!6180 (innerList!3147 List!9331)) )
))
(declare-datatypes ((Conc!3087 0))(
  ( (Node!3087 (left!6890 Conc!3087) (right!7220 Conc!3087) (csize!6404 Int) (cheight!3298 Int)) (Leaf!4549 (xs!5776 IArray!6179) (csize!6405 Int)) (Empty!3087) )
))
(declare-datatypes ((BalanceConc!6188 0))(
  ( (BalanceConc!6189 (c!139302 Conc!3087)) )
))
(declare-datatypes ((TokenValueInjection!3328 0))(
  ( (TokenValueInjection!3329 (toValue!2813 Int) (toChars!2672 Int)) )
))
(declare-datatypes ((Rule!3296 0))(
  ( (Rule!3297 (regex!1748 Regex!2181) (tag!2010 String!10968) (isSeparator!1748 Bool) (transformation!1748 TokenValueInjection!3328)) )
))
(declare-datatypes ((Token!3162 0))(
  ( (Token!3163 (value!56517 TokenValue!1814) (rule!3171 Rule!3296) (size!7767 Int) (originalCharacters!2304 List!9331)) )
))
(declare-fun separatorToken!297 () Token!3162)

(declare-fun e!566756 () Bool)

(declare-fun e!566745 () Bool)

(declare-fun b!860862 () Bool)

(declare-fun inv!21 (TokenValue!1814) Bool)

(assert (=> b!860862 (= e!566745 (and (inv!21 (value!56517 separatorToken!297)) e!566756 tp!271836))))

(declare-fun tp!271837 () Bool)

(declare-fun e!566750 () Bool)

(declare-fun e!566749 () Bool)

(declare-fun b!860863 () Bool)

(declare-datatypes ((List!9332 0))(
  ( (Nil!9316) (Cons!9316 (h!14717 Token!3162) (t!97598 List!9332)) )
))
(declare-fun l!5107 () List!9332)

(assert (=> b!860863 (= e!566750 (and (inv!21 (value!56517 (h!14717 l!5107))) e!566749 tp!271837))))

(declare-fun tp!271848 () Bool)

(declare-fun e!566747 () Bool)

(declare-fun b!860864 () Bool)

(declare-fun inv!11840 (Token!3162) Bool)

(assert (=> b!860864 (= e!566747 (and (inv!11840 (h!14717 l!5107)) e!566750 tp!271848))))

(declare-fun b!860865 () Bool)

(declare-fun e!566752 () Bool)

(declare-fun e!566758 () Bool)

(assert (=> b!860865 (= e!566752 (not e!566758))))

(declare-fun res!392743 () Bool)

(assert (=> b!860865 (=> res!392743 e!566758)))

(declare-fun lt!325281 () List!9332)

(get-info :version)

(assert (=> b!860865 (= res!392743 (or (not ((_ is Cons!9316) lt!325281)) (not ((_ is Cons!9316) (t!97598 lt!325281)))))))

(declare-datatypes ((LexerInterface!1550 0))(
  ( (LexerInterfaceExt!1547 (__x!7360 Int)) (Lexer!1548) )
))
(declare-fun thiss!20117 () LexerInterface!1550)

(declare-datatypes ((List!9333 0))(
  ( (Nil!9317) (Cons!9317 (h!14718 Rule!3296) (t!97599 List!9333)) )
))
(declare-fun rules!2621 () List!9333)

(declare-fun rulesProduceEachTokenIndividuallyList!438 (LexerInterface!1550 List!9333 List!9332) Bool)

(assert (=> b!860865 (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 lt!325281)))

(declare-fun withSeparatorTokenList!78 (LexerInterface!1550 List!9332 Token!3162) List!9332)

(assert (=> b!860865 (= lt!325281 (withSeparatorTokenList!78 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13841 0))(
  ( (Unit!13842) )
))
(declare-fun lt!325280 () Unit!13841)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!78 (LexerInterface!1550 List!9333 List!9332 Token!3162) Unit!13841)

(assert (=> b!860865 (= lt!325280 (withSeparatorTokenListPreservesRulesProduceTokens!78 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!860866 () Bool)

(declare-fun res!392745 () Bool)

(assert (=> b!860866 (=> res!392745 e!566758)))

(assert (=> b!860866 (= res!392745 (not (= (h!14717 (t!97598 lt!325281)) separatorToken!297)))))

(declare-fun b!860867 () Bool)

(declare-fun res!392754 () Bool)

(assert (=> b!860867 (=> (not res!392754) (not e!566752))))

(declare-fun isEmpty!5525 (List!9333) Bool)

(assert (=> b!860867 (= res!392754 (not (isEmpty!5525 rules!2621)))))

(declare-fun e!566757 () Bool)

(declare-fun b!860868 () Bool)

(declare-fun tp!271840 () Bool)

(declare-fun e!566743 () Bool)

(declare-fun inv!11837 (String!10968) Bool)

(declare-fun inv!11841 (TokenValueInjection!3328) Bool)

(assert (=> b!860868 (= e!566757 (and tp!271840 (inv!11837 (tag!2010 (h!14718 rules!2621))) (inv!11841 (transformation!1748 (h!14718 rules!2621))) e!566743))))

(declare-fun b!860869 () Bool)

(declare-fun res!392742 () Bool)

(assert (=> b!860869 (=> res!392742 e!566758)))

(declare-fun head!1494 (List!9332) Token!3162)

(assert (=> b!860869 (= res!392742 (not (= (head!1494 l!5107) (h!14717 lt!325281))))))

(declare-fun b!860870 () Bool)

(declare-fun res!392746 () Bool)

(assert (=> b!860870 (=> (not res!392746) (not e!566752))))

(declare-fun rulesProduceIndividualToken!614 (LexerInterface!1550 List!9333 Token!3162) Bool)

(assert (=> b!860870 (= res!392746 (rulesProduceIndividualToken!614 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!860871 () Bool)

(declare-fun res!392755 () Bool)

(assert (=> b!860871 (=> res!392755 e!566758)))

(assert (=> b!860871 (= res!392755 (not (rulesProduceIndividualToken!614 thiss!20117 rules!2621 (h!14717 lt!325281))))))

(declare-fun e!566753 () Bool)

(declare-fun tp!271839 () Bool)

(declare-fun b!860872 () Bool)

(assert (=> b!860872 (= e!566756 (and tp!271839 (inv!11837 (tag!2010 (rule!3171 separatorToken!297))) (inv!11841 (transformation!1748 (rule!3171 separatorToken!297))) e!566753))))

(declare-fun e!566754 () Bool)

(assert (=> b!860873 (= e!566754 (and tp!271842 tp!271847))))

(declare-fun b!860874 () Bool)

(declare-fun res!392748 () Bool)

(assert (=> b!860874 (=> (not res!392748) (not e!566752))))

(declare-fun rulesInvariant!1426 (LexerInterface!1550 List!9333) Bool)

(assert (=> b!860874 (= res!392748 (rulesInvariant!1426 thiss!20117 rules!2621))))

(declare-fun res!392753 () Bool)

(assert (=> start!77666 (=> (not res!392753) (not e!566752))))

(assert (=> start!77666 (= res!392753 ((_ is Lexer!1548) thiss!20117))))

(assert (=> start!77666 e!566752))

(assert (=> start!77666 true))

(declare-fun e!566748 () Bool)

(assert (=> start!77666 e!566748))

(assert (=> start!77666 e!566747))

(assert (=> start!77666 (and (inv!11840 separatorToken!297) e!566745)))

(declare-fun b!860875 () Bool)

(declare-fun res!392749 () Bool)

(assert (=> b!860875 (=> res!392749 e!566758)))

(assert (=> b!860875 (= res!392749 (not (rulesProduceIndividualToken!614 thiss!20117 rules!2621 (h!14717 (t!97598 lt!325281)))))))

(declare-fun b!860876 () Bool)

(declare-fun res!392751 () Bool)

(assert (=> b!860876 (=> (not res!392751) (not e!566752))))

(declare-fun sepAndNonSepRulesDisjointChars!548 (List!9333 List!9333) Bool)

(assert (=> b!860876 (= res!392751 (sepAndNonSepRulesDisjointChars!548 rules!2621 rules!2621))))

(declare-fun b!860877 () Bool)

(declare-fun res!392744 () Bool)

(assert (=> b!860877 (=> res!392744 e!566758)))

(declare-fun tail!1056 (List!9332) List!9332)

(assert (=> b!860877 (= res!392744 (not (= (t!97598 (t!97598 lt!325281)) (withSeparatorTokenList!78 thiss!20117 (tail!1056 l!5107) separatorToken!297))))))

(assert (=> b!860878 (= e!566753 (and tp!271838 tp!271841))))

(declare-fun b!860879 () Bool)

(declare-fun tp!271845 () Bool)

(assert (=> b!860879 (= e!566748 (and e!566757 tp!271845))))

(declare-fun tp!271844 () Bool)

(declare-fun b!860880 () Bool)

(assert (=> b!860880 (= e!566749 (and tp!271844 (inv!11837 (tag!2010 (rule!3171 (h!14717 l!5107)))) (inv!11841 (transformation!1748 (rule!3171 (h!14717 l!5107)))) e!566754))))

(declare-fun b!860881 () Bool)

(declare-fun res!392752 () Bool)

(assert (=> b!860881 (=> (not res!392752) (not e!566752))))

(assert (=> b!860881 (= res!392752 (isSeparator!1748 (rule!3171 separatorToken!297)))))

(declare-fun b!860882 () Bool)

(assert (=> b!860882 (= e!566758 (not (= (isSeparator!1748 (rule!3171 (h!14717 lt!325281))) (isSeparator!1748 (rule!3171 (h!14717 (t!97598 lt!325281)))))))))

(assert (=> b!860883 (= e!566743 (and tp!271846 tp!271843))))

(declare-fun b!860884 () Bool)

(declare-fun res!392750 () Bool)

(assert (=> b!860884 (=> (not res!392750) (not e!566752))))

(assert (=> b!860884 (= res!392750 (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 l!5107))))

(declare-fun b!860885 () Bool)

(declare-fun res!392747 () Bool)

(assert (=> b!860885 (=> (not res!392747) (not e!566752))))

(declare-fun lambda!25862 () Int)

(declare-fun forall!2211 (List!9332 Int) Bool)

(assert (=> b!860885 (= res!392747 (forall!2211 l!5107 lambda!25862))))

(assert (= (and start!77666 res!392753) b!860867))

(assert (= (and b!860867 res!392754) b!860874))

(assert (= (and b!860874 res!392748) b!860884))

(assert (= (and b!860884 res!392750) b!860870))

(assert (= (and b!860870 res!392746) b!860881))

(assert (= (and b!860881 res!392752) b!860885))

(assert (= (and b!860885 res!392747) b!860876))

(assert (= (and b!860876 res!392751) b!860865))

(assert (= (and b!860865 (not res!392743)) b!860877))

(assert (= (and b!860877 (not res!392744)) b!860869))

(assert (= (and b!860869 (not res!392742)) b!860866))

(assert (= (and b!860866 (not res!392745)) b!860871))

(assert (= (and b!860871 (not res!392755)) b!860875))

(assert (= (and b!860875 (not res!392749)) b!860882))

(assert (= b!860868 b!860883))

(assert (= b!860879 b!860868))

(assert (= (and start!77666 ((_ is Cons!9317) rules!2621)) b!860879))

(assert (= b!860880 b!860873))

(assert (= b!860863 b!860880))

(assert (= b!860864 b!860863))

(assert (= (and start!77666 ((_ is Cons!9316) l!5107)) b!860864))

(assert (= b!860872 b!860878))

(assert (= b!860862 b!860872))

(assert (= start!77666 b!860862))

(declare-fun m!1104477 () Bool)

(assert (=> b!860877 m!1104477))

(assert (=> b!860877 m!1104477))

(declare-fun m!1104479 () Bool)

(assert (=> b!860877 m!1104479))

(declare-fun m!1104481 () Bool)

(assert (=> b!860871 m!1104481))

(declare-fun m!1104483 () Bool)

(assert (=> b!860863 m!1104483))

(declare-fun m!1104485 () Bool)

(assert (=> b!860868 m!1104485))

(declare-fun m!1104487 () Bool)

(assert (=> b!860868 m!1104487))

(declare-fun m!1104489 () Bool)

(assert (=> b!860870 m!1104489))

(declare-fun m!1104491 () Bool)

(assert (=> b!860875 m!1104491))

(declare-fun m!1104493 () Bool)

(assert (=> b!860862 m!1104493))

(declare-fun m!1104495 () Bool)

(assert (=> b!860865 m!1104495))

(declare-fun m!1104497 () Bool)

(assert (=> b!860865 m!1104497))

(declare-fun m!1104499 () Bool)

(assert (=> b!860865 m!1104499))

(declare-fun m!1104501 () Bool)

(assert (=> start!77666 m!1104501))

(declare-fun m!1104503 () Bool)

(assert (=> b!860880 m!1104503))

(declare-fun m!1104505 () Bool)

(assert (=> b!860880 m!1104505))

(declare-fun m!1104507 () Bool)

(assert (=> b!860874 m!1104507))

(declare-fun m!1104509 () Bool)

(assert (=> b!860872 m!1104509))

(declare-fun m!1104511 () Bool)

(assert (=> b!860872 m!1104511))

(declare-fun m!1104513 () Bool)

(assert (=> b!860867 m!1104513))

(declare-fun m!1104515 () Bool)

(assert (=> b!860884 m!1104515))

(declare-fun m!1104517 () Bool)

(assert (=> b!860864 m!1104517))

(declare-fun m!1104519 () Bool)

(assert (=> b!860869 m!1104519))

(declare-fun m!1104521 () Bool)

(assert (=> b!860876 m!1104521))

(declare-fun m!1104523 () Bool)

(assert (=> b!860885 m!1104523))

(check-sat b_and!76653 (not b_next!26353) (not b!860874) (not b_next!26357) (not b!860876) b_and!76651 (not b!860879) (not b!860885) (not b!860862) (not b!860863) (not b!860868) b_and!76649 b_and!76647 (not b_next!26359) (not b_next!26355) (not b!860867) b_and!76655 (not b!860865) (not b!860872) (not b_next!26363) (not b!860864) (not b!860884) (not start!77666) b_and!76645 (not b!860871) (not b!860869) (not b!860870) (not b_next!26361) (not b!860880) (not b!860877) (not b!860875))
(check-sat b_and!76653 (not b_next!26353) (not b_next!26357) b_and!76651 b_and!76655 (not b_next!26363) b_and!76645 b_and!76649 b_and!76647 (not b_next!26359) (not b_next!26355) (not b_next!26361))
(get-model)

(declare-fun d!269598 () Bool)

(assert (=> d!269598 (= (inv!11837 (tag!2010 (h!14718 rules!2621))) (= (mod (str.len (value!56516 (tag!2010 (h!14718 rules!2621)))) 2) 0))))

(assert (=> b!860868 d!269598))

(declare-fun d!269600 () Bool)

(declare-fun res!392762 () Bool)

(declare-fun e!566762 () Bool)

(assert (=> d!269600 (=> (not res!392762) (not e!566762))))

(declare-fun semiInverseModEq!689 (Int Int) Bool)

(assert (=> d!269600 (= res!392762 (semiInverseModEq!689 (toChars!2672 (transformation!1748 (h!14718 rules!2621))) (toValue!2813 (transformation!1748 (h!14718 rules!2621)))))))

(assert (=> d!269600 (= (inv!11841 (transformation!1748 (h!14718 rules!2621))) e!566762)))

(declare-fun b!860888 () Bool)

(declare-fun equivClasses!656 (Int Int) Bool)

(assert (=> b!860888 (= e!566762 (equivClasses!656 (toChars!2672 (transformation!1748 (h!14718 rules!2621))) (toValue!2813 (transformation!1748 (h!14718 rules!2621)))))))

(assert (= (and d!269600 res!392762) b!860888))

(declare-fun m!1104525 () Bool)

(assert (=> d!269600 m!1104525))

(declare-fun m!1104527 () Bool)

(assert (=> b!860888 m!1104527))

(assert (=> b!860868 d!269600))

(declare-fun d!269602 () Bool)

(assert (=> d!269602 (= (isEmpty!5525 rules!2621) ((_ is Nil!9317) rules!2621))))

(assert (=> b!860867 d!269602))

(declare-fun b!860909 () Bool)

(declare-fun res!392775 () Bool)

(declare-fun e!566775 () Bool)

(assert (=> b!860909 (=> (not res!392775) (not e!566775))))

(declare-fun e!566778 () Bool)

(assert (=> b!860909 (= res!392775 e!566778)))

(declare-fun res!392776 () Bool)

(assert (=> b!860909 (=> res!392776 e!566778)))

(assert (=> b!860909 (= res!392776 (not ((_ is Cons!9316) (tail!1056 l!5107))))))

(declare-fun b!860910 () Bool)

(declare-fun e!566779 () Bool)

(assert (=> b!860910 (= e!566775 e!566779)))

(declare-fun res!392778 () Bool)

(assert (=> b!860910 (=> res!392778 e!566779)))

(assert (=> b!860910 (= res!392778 (not ((_ is Cons!9316) (tail!1056 l!5107))))))

(declare-fun d!269604 () Bool)

(declare-fun lt!325304 () List!9332)

(declare-fun printList!492 (LexerInterface!1550 List!9332) List!9331)

(declare-fun printWithSeparatorTokenList!50 (LexerInterface!1550 List!9332 Token!3162) List!9331)

(assert (=> d!269604 (= (printList!492 thiss!20117 lt!325304) (printWithSeparatorTokenList!50 thiss!20117 (tail!1056 l!5107) separatorToken!297))))

(declare-fun e!566777 () List!9332)

(assert (=> d!269604 (= lt!325304 e!566777)))

(declare-fun c!139309 () Bool)

(assert (=> d!269604 (= c!139309 ((_ is Cons!9316) (tail!1056 l!5107)))))

(assert (=> d!269604 e!566775))

(declare-fun res!392777 () Bool)

(assert (=> d!269604 (=> (not res!392777) (not e!566775))))

(assert (=> d!269604 (= res!392777 (isSeparator!1748 (rule!3171 separatorToken!297)))))

(assert (=> d!269604 (= (withSeparatorTokenList!78 thiss!20117 (tail!1056 l!5107) separatorToken!297) lt!325304)))

(declare-fun b!860911 () Bool)

(assert (=> b!860911 (= e!566777 Nil!9316)))

(declare-fun b!860912 () Bool)

(declare-fun e!566780 () List!9331)

(declare-fun lt!325305 () List!9332)

(declare-fun ++!2408 (List!9331 List!9331) List!9331)

(declare-fun list!3673 (BalanceConc!6188) List!9331)

(declare-fun charsOf!1009 (Token!3162) BalanceConc!6188)

(assert (=> b!860912 (= e!566780 (++!2408 (list!3673 (charsOf!1009 (h!14717 lt!325305))) (printList!492 thiss!20117 (t!97598 lt!325305))))))

(declare-fun b!860913 () Bool)

(declare-fun e!566776 () List!9331)

(declare-fun lt!325302 () List!9332)

(assert (=> b!860913 (= e!566776 (++!2408 (list!3673 (charsOf!1009 (h!14717 lt!325302))) (printList!492 thiss!20117 (t!97598 lt!325302))))))

(declare-fun b!860914 () Bool)

(declare-fun $colon$colon!105 (List!9332 Token!3162) List!9332)

(assert (=> b!860914 (= e!566777 ($colon$colon!105 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 (tail!1056 l!5107)) separatorToken!297) separatorToken!297) (h!14717 (tail!1056 l!5107))))))

(declare-fun lt!325299 () List!9331)

(assert (=> b!860914 (= lt!325299 (list!3673 (charsOf!1009 (h!14717 (tail!1056 l!5107)))))))

(declare-fun lt!325301 () List!9331)

(assert (=> b!860914 (= lt!325301 (list!3673 (charsOf!1009 separatorToken!297)))))

(declare-fun lt!325298 () List!9331)

(assert (=> b!860914 (= lt!325298 (printList!492 thiss!20117 (withSeparatorTokenList!78 thiss!20117 (t!97598 (tail!1056 l!5107)) separatorToken!297)))))

(declare-fun lt!325303 () Unit!13841)

(declare-fun lemmaConcatAssociativity!767 (List!9331 List!9331 List!9331) Unit!13841)

(assert (=> b!860914 (= lt!325303 (lemmaConcatAssociativity!767 lt!325299 lt!325301 lt!325298))))

(assert (=> b!860914 (= (++!2408 (++!2408 lt!325299 lt!325301) lt!325298) (++!2408 lt!325299 (++!2408 lt!325301 lt!325298)))))

(declare-fun lt!325300 () Unit!13841)

(assert (=> b!860914 (= lt!325300 lt!325303)))

(declare-fun b!860915 () Bool)

(assert (=> b!860915 (= e!566779 (= (printList!492 thiss!20117 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 (tail!1056 l!5107)) separatorToken!297) separatorToken!297)) e!566780))))

(declare-fun c!139310 () Bool)

(assert (=> b!860915 (= c!139310 ((_ is Cons!9316) lt!325305))))

(assert (=> b!860915 (= lt!325305 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 (tail!1056 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!860916 () Bool)

(assert (=> b!860916 (= e!566776 Nil!9315)))

(declare-fun b!860917 () Bool)

(assert (=> b!860917 (= e!566780 Nil!9315)))

(declare-fun b!860918 () Bool)

(assert (=> b!860918 (= e!566778 (= (printList!492 thiss!20117 ($colon$colon!105 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 (tail!1056 l!5107)) separatorToken!297) separatorToken!297) (h!14717 (tail!1056 l!5107)))) e!566776))))

(declare-fun c!139311 () Bool)

(assert (=> b!860918 (= c!139311 ((_ is Cons!9316) lt!325302))))

(assert (=> b!860918 (= lt!325302 ($colon$colon!105 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 (tail!1056 l!5107)) separatorToken!297) separatorToken!297) (h!14717 (tail!1056 l!5107))))))

(assert (= (and d!269604 res!392777) b!860909))

(assert (= (and b!860909 (not res!392776)) b!860918))

(assert (= (and b!860918 c!139311) b!860913))

(assert (= (and b!860918 (not c!139311)) b!860916))

(assert (= (and b!860909 res!392775) b!860910))

(assert (= (and b!860910 (not res!392778)) b!860915))

(assert (= (and b!860915 c!139310) b!860912))

(assert (= (and b!860915 (not c!139310)) b!860917))

(assert (= (and d!269604 c!139309) b!860914))

(assert (= (and d!269604 (not c!139309)) b!860911))

(declare-fun m!1104529 () Bool)

(assert (=> b!860918 m!1104529))

(assert (=> b!860918 m!1104529))

(declare-fun m!1104531 () Bool)

(assert (=> b!860918 m!1104531))

(assert (=> b!860918 m!1104531))

(declare-fun m!1104533 () Bool)

(assert (=> b!860918 m!1104533))

(assert (=> b!860918 m!1104533))

(declare-fun m!1104535 () Bool)

(assert (=> b!860918 m!1104535))

(assert (=> b!860914 m!1104529))

(declare-fun m!1104537 () Bool)

(assert (=> b!860914 m!1104537))

(assert (=> b!860914 m!1104531))

(assert (=> b!860914 m!1104533))

(declare-fun m!1104539 () Bool)

(assert (=> b!860914 m!1104539))

(declare-fun m!1104541 () Bool)

(assert (=> b!860914 m!1104541))

(assert (=> b!860914 m!1104537))

(declare-fun m!1104543 () Bool)

(assert (=> b!860914 m!1104543))

(declare-fun m!1104545 () Bool)

(assert (=> b!860914 m!1104545))

(declare-fun m!1104547 () Bool)

(assert (=> b!860914 m!1104547))

(declare-fun m!1104549 () Bool)

(assert (=> b!860914 m!1104549))

(declare-fun m!1104551 () Bool)

(assert (=> b!860914 m!1104551))

(assert (=> b!860914 m!1104549))

(assert (=> b!860914 m!1104529))

(assert (=> b!860914 m!1104531))

(assert (=> b!860914 m!1104539))

(assert (=> b!860914 m!1104529))

(declare-fun m!1104553 () Bool)

(assert (=> b!860914 m!1104553))

(assert (=> b!860914 m!1104547))

(declare-fun m!1104555 () Bool)

(assert (=> b!860914 m!1104555))

(declare-fun m!1104557 () Bool)

(assert (=> b!860913 m!1104557))

(assert (=> b!860913 m!1104557))

(declare-fun m!1104559 () Bool)

(assert (=> b!860913 m!1104559))

(declare-fun m!1104561 () Bool)

(assert (=> b!860913 m!1104561))

(assert (=> b!860913 m!1104559))

(assert (=> b!860913 m!1104561))

(declare-fun m!1104563 () Bool)

(assert (=> b!860913 m!1104563))

(declare-fun m!1104565 () Bool)

(assert (=> d!269604 m!1104565))

(assert (=> d!269604 m!1104477))

(declare-fun m!1104567 () Bool)

(assert (=> d!269604 m!1104567))

(assert (=> b!860915 m!1104529))

(assert (=> b!860915 m!1104529))

(assert (=> b!860915 m!1104531))

(assert (=> b!860915 m!1104531))

(declare-fun m!1104569 () Bool)

(assert (=> b!860915 m!1104569))

(declare-fun m!1104571 () Bool)

(assert (=> b!860912 m!1104571))

(assert (=> b!860912 m!1104571))

(declare-fun m!1104573 () Bool)

(assert (=> b!860912 m!1104573))

(declare-fun m!1104575 () Bool)

(assert (=> b!860912 m!1104575))

(assert (=> b!860912 m!1104573))

(assert (=> b!860912 m!1104575))

(declare-fun m!1104577 () Bool)

(assert (=> b!860912 m!1104577))

(assert (=> b!860877 d!269604))

(declare-fun d!269608 () Bool)

(assert (=> d!269608 (= (tail!1056 l!5107) (t!97598 l!5107))))

(assert (=> b!860877 d!269608))

(declare-fun d!269610 () Bool)

(declare-fun res!392783 () Bool)

(declare-fun e!566785 () Bool)

(assert (=> d!269610 (=> res!392783 e!566785)))

(assert (=> d!269610 (= res!392783 (not ((_ is Cons!9317) rules!2621)))))

(assert (=> d!269610 (= (sepAndNonSepRulesDisjointChars!548 rules!2621 rules!2621) e!566785)))

(declare-fun b!860923 () Bool)

(declare-fun e!566786 () Bool)

(assert (=> b!860923 (= e!566785 e!566786)))

(declare-fun res!392784 () Bool)

(assert (=> b!860923 (=> (not res!392784) (not e!566786))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!257 (Rule!3296 List!9333) Bool)

(assert (=> b!860923 (= res!392784 (ruleDisjointCharsFromAllFromOtherType!257 (h!14718 rules!2621) rules!2621))))

(declare-fun b!860924 () Bool)

(assert (=> b!860924 (= e!566786 (sepAndNonSepRulesDisjointChars!548 rules!2621 (t!97599 rules!2621)))))

(assert (= (and d!269610 (not res!392783)) b!860923))

(assert (= (and b!860923 res!392784) b!860924))

(declare-fun m!1104579 () Bool)

(assert (=> b!860923 m!1104579))

(declare-fun m!1104581 () Bool)

(assert (=> b!860924 m!1104581))

(assert (=> b!860876 d!269610))

(declare-fun bs!232365 () Bool)

(declare-fun d!269612 () Bool)

(assert (= bs!232365 (and d!269612 b!860885)))

(declare-fun lambda!25868 () Int)

(assert (=> bs!232365 (not (= lambda!25868 lambda!25862))))

(declare-fun b!861002 () Bool)

(declare-fun e!566848 () Bool)

(assert (=> b!861002 (= e!566848 true)))

(declare-fun b!861001 () Bool)

(declare-fun e!566847 () Bool)

(assert (=> b!861001 (= e!566847 e!566848)))

(declare-fun b!861000 () Bool)

(declare-fun e!566846 () Bool)

(assert (=> b!861000 (= e!566846 e!566847)))

(assert (=> d!269612 e!566846))

(assert (= b!861001 b!861002))

(assert (= b!861000 b!861001))

(assert (= (and d!269612 ((_ is Cons!9317) rules!2621)) b!861000))

(declare-fun order!6059 () Int)

(declare-fun order!6061 () Int)

(declare-fun dynLambda!4401 (Int Int) Int)

(declare-fun dynLambda!4402 (Int Int) Int)

(assert (=> b!861002 (< (dynLambda!4401 order!6059 (toValue!2813 (transformation!1748 (h!14718 rules!2621)))) (dynLambda!4402 order!6061 lambda!25868))))

(declare-fun order!6063 () Int)

(declare-fun dynLambda!4403 (Int Int) Int)

(assert (=> b!861002 (< (dynLambda!4403 order!6063 (toChars!2672 (transformation!1748 (h!14718 rules!2621)))) (dynLambda!4402 order!6061 lambda!25868))))

(assert (=> d!269612 true))

(declare-fun lt!325319 () Bool)

(assert (=> d!269612 (= lt!325319 (forall!2211 lt!325281 lambda!25868))))

(declare-fun e!566835 () Bool)

(assert (=> d!269612 (= lt!325319 e!566835)))

(declare-fun res!392825 () Bool)

(assert (=> d!269612 (=> res!392825 e!566835)))

(assert (=> d!269612 (= res!392825 (not ((_ is Cons!9316) lt!325281)))))

(assert (=> d!269612 (not (isEmpty!5525 rules!2621))))

(assert (=> d!269612 (= (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 lt!325281) lt!325319)))

(declare-fun b!860985 () Bool)

(declare-fun e!566836 () Bool)

(assert (=> b!860985 (= e!566835 e!566836)))

(declare-fun res!392826 () Bool)

(assert (=> b!860985 (=> (not res!392826) (not e!566836))))

(assert (=> b!860985 (= res!392826 (rulesProduceIndividualToken!614 thiss!20117 rules!2621 (h!14717 lt!325281)))))

(declare-fun b!860986 () Bool)

(assert (=> b!860986 (= e!566836 (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 (t!97598 lt!325281)))))

(assert (= (and d!269612 (not res!392825)) b!860985))

(assert (= (and b!860985 res!392826) b!860986))

(declare-fun m!1104641 () Bool)

(assert (=> d!269612 m!1104641))

(assert (=> d!269612 m!1104513))

(assert (=> b!860985 m!1104481))

(declare-fun m!1104643 () Bool)

(assert (=> b!860986 m!1104643))

(assert (=> b!860865 d!269612))

(declare-fun b!861005 () Bool)

(declare-fun res!392827 () Bool)

(declare-fun e!566849 () Bool)

(assert (=> b!861005 (=> (not res!392827) (not e!566849))))

(declare-fun e!566852 () Bool)

(assert (=> b!861005 (= res!392827 e!566852)))

(declare-fun res!392828 () Bool)

(assert (=> b!861005 (=> res!392828 e!566852)))

(assert (=> b!861005 (= res!392828 (not ((_ is Cons!9316) l!5107)))))

(declare-fun b!861006 () Bool)

(declare-fun e!566853 () Bool)

(assert (=> b!861006 (= e!566849 e!566853)))

(declare-fun res!392830 () Bool)

(assert (=> b!861006 (=> res!392830 e!566853)))

(assert (=> b!861006 (= res!392830 (not ((_ is Cons!9316) l!5107)))))

(declare-fun lt!325326 () List!9332)

(declare-fun d!269628 () Bool)

(assert (=> d!269628 (= (printList!492 thiss!20117 lt!325326) (printWithSeparatorTokenList!50 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!566851 () List!9332)

(assert (=> d!269628 (= lt!325326 e!566851)))

(declare-fun c!139318 () Bool)

(assert (=> d!269628 (= c!139318 ((_ is Cons!9316) l!5107))))

(assert (=> d!269628 e!566849))

(declare-fun res!392829 () Bool)

(assert (=> d!269628 (=> (not res!392829) (not e!566849))))

(assert (=> d!269628 (= res!392829 (isSeparator!1748 (rule!3171 separatorToken!297)))))

(assert (=> d!269628 (= (withSeparatorTokenList!78 thiss!20117 l!5107 separatorToken!297) lt!325326)))

(declare-fun b!861007 () Bool)

(assert (=> b!861007 (= e!566851 Nil!9316)))

(declare-fun b!861008 () Bool)

(declare-fun e!566854 () List!9331)

(declare-fun lt!325327 () List!9332)

(assert (=> b!861008 (= e!566854 (++!2408 (list!3673 (charsOf!1009 (h!14717 lt!325327))) (printList!492 thiss!20117 (t!97598 lt!325327))))))

(declare-fun b!861009 () Bool)

(declare-fun e!566850 () List!9331)

(declare-fun lt!325324 () List!9332)

(assert (=> b!861009 (= e!566850 (++!2408 (list!3673 (charsOf!1009 (h!14717 lt!325324))) (printList!492 thiss!20117 (t!97598 lt!325324))))))

(declare-fun b!861010 () Bool)

(assert (=> b!861010 (= e!566851 ($colon$colon!105 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 l!5107) separatorToken!297) separatorToken!297) (h!14717 l!5107)))))

(declare-fun lt!325321 () List!9331)

(assert (=> b!861010 (= lt!325321 (list!3673 (charsOf!1009 (h!14717 l!5107))))))

(declare-fun lt!325323 () List!9331)

(assert (=> b!861010 (= lt!325323 (list!3673 (charsOf!1009 separatorToken!297)))))

(declare-fun lt!325320 () List!9331)

(assert (=> b!861010 (= lt!325320 (printList!492 thiss!20117 (withSeparatorTokenList!78 thiss!20117 (t!97598 l!5107) separatorToken!297)))))

(declare-fun lt!325325 () Unit!13841)

(assert (=> b!861010 (= lt!325325 (lemmaConcatAssociativity!767 lt!325321 lt!325323 lt!325320))))

(assert (=> b!861010 (= (++!2408 (++!2408 lt!325321 lt!325323) lt!325320) (++!2408 lt!325321 (++!2408 lt!325323 lt!325320)))))

(declare-fun lt!325322 () Unit!13841)

(assert (=> b!861010 (= lt!325322 lt!325325)))

(declare-fun b!861011 () Bool)

(assert (=> b!861011 (= e!566853 (= (printList!492 thiss!20117 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 l!5107) separatorToken!297) separatorToken!297)) e!566854))))

(declare-fun c!139319 () Bool)

(assert (=> b!861011 (= c!139319 ((_ is Cons!9316) lt!325327))))

(assert (=> b!861011 (= lt!325327 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!861012 () Bool)

(assert (=> b!861012 (= e!566850 Nil!9315)))

(declare-fun b!861013 () Bool)

(assert (=> b!861013 (= e!566854 Nil!9315)))

(declare-fun b!861014 () Bool)

(assert (=> b!861014 (= e!566852 (= (printList!492 thiss!20117 ($colon$colon!105 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 l!5107) separatorToken!297) separatorToken!297) (h!14717 l!5107))) e!566850))))

(declare-fun c!139320 () Bool)

(assert (=> b!861014 (= c!139320 ((_ is Cons!9316) lt!325324))))

(assert (=> b!861014 (= lt!325324 ($colon$colon!105 ($colon$colon!105 (withSeparatorTokenList!78 thiss!20117 (t!97598 l!5107) separatorToken!297) separatorToken!297) (h!14717 l!5107)))))

(assert (= (and d!269628 res!392829) b!861005))

(assert (= (and b!861005 (not res!392828)) b!861014))

(assert (= (and b!861014 c!139320) b!861009))

(assert (= (and b!861014 (not c!139320)) b!861012))

(assert (= (and b!861005 res!392827) b!861006))

(assert (= (and b!861006 (not res!392830)) b!861011))

(assert (= (and b!861011 c!139319) b!861008))

(assert (= (and b!861011 (not c!139319)) b!861013))

(assert (= (and d!269628 c!139318) b!861010))

(assert (= (and d!269628 (not c!139318)) b!861007))

(declare-fun m!1104645 () Bool)

(assert (=> b!861014 m!1104645))

(assert (=> b!861014 m!1104645))

(declare-fun m!1104647 () Bool)

(assert (=> b!861014 m!1104647))

(assert (=> b!861014 m!1104647))

(declare-fun m!1104649 () Bool)

(assert (=> b!861014 m!1104649))

(assert (=> b!861014 m!1104649))

(declare-fun m!1104651 () Bool)

(assert (=> b!861014 m!1104651))

(assert (=> b!861010 m!1104645))

(assert (=> b!861010 m!1104537))

(assert (=> b!861010 m!1104647))

(assert (=> b!861010 m!1104649))

(declare-fun m!1104653 () Bool)

(assert (=> b!861010 m!1104653))

(declare-fun m!1104655 () Bool)

(assert (=> b!861010 m!1104655))

(assert (=> b!861010 m!1104537))

(assert (=> b!861010 m!1104543))

(declare-fun m!1104657 () Bool)

(assert (=> b!861010 m!1104657))

(declare-fun m!1104659 () Bool)

(assert (=> b!861010 m!1104659))

(declare-fun m!1104661 () Bool)

(assert (=> b!861010 m!1104661))

(declare-fun m!1104663 () Bool)

(assert (=> b!861010 m!1104663))

(assert (=> b!861010 m!1104661))

(assert (=> b!861010 m!1104645))

(assert (=> b!861010 m!1104647))

(assert (=> b!861010 m!1104653))

(assert (=> b!861010 m!1104645))

(declare-fun m!1104665 () Bool)

(assert (=> b!861010 m!1104665))

(assert (=> b!861010 m!1104659))

(declare-fun m!1104667 () Bool)

(assert (=> b!861010 m!1104667))

(declare-fun m!1104669 () Bool)

(assert (=> b!861009 m!1104669))

(assert (=> b!861009 m!1104669))

(declare-fun m!1104671 () Bool)

(assert (=> b!861009 m!1104671))

(declare-fun m!1104673 () Bool)

(assert (=> b!861009 m!1104673))

(assert (=> b!861009 m!1104671))

(assert (=> b!861009 m!1104673))

(declare-fun m!1104675 () Bool)

(assert (=> b!861009 m!1104675))

(declare-fun m!1104677 () Bool)

(assert (=> d!269628 m!1104677))

(declare-fun m!1104679 () Bool)

(assert (=> d!269628 m!1104679))

(assert (=> b!861011 m!1104645))

(assert (=> b!861011 m!1104645))

(assert (=> b!861011 m!1104647))

(assert (=> b!861011 m!1104647))

(declare-fun m!1104681 () Bool)

(assert (=> b!861011 m!1104681))

(declare-fun m!1104683 () Bool)

(assert (=> b!861008 m!1104683))

(assert (=> b!861008 m!1104683))

(declare-fun m!1104685 () Bool)

(assert (=> b!861008 m!1104685))

(declare-fun m!1104687 () Bool)

(assert (=> b!861008 m!1104687))

(assert (=> b!861008 m!1104685))

(assert (=> b!861008 m!1104687))

(declare-fun m!1104689 () Bool)

(assert (=> b!861008 m!1104689))

(assert (=> b!860865 d!269628))

(declare-fun d!269630 () Bool)

(assert (=> d!269630 (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 (withSeparatorTokenList!78 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!325354 () Unit!13841)

(declare-fun choose!5072 (LexerInterface!1550 List!9333 List!9332 Token!3162) Unit!13841)

(assert (=> d!269630 (= lt!325354 (choose!5072 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!269630 (not (isEmpty!5525 rules!2621))))

(assert (=> d!269630 (= (withSeparatorTokenListPreservesRulesProduceTokens!78 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!325354)))

(declare-fun bs!232366 () Bool)

(assert (= bs!232366 d!269630))

(assert (=> bs!232366 m!1104497))

(assert (=> bs!232366 m!1104497))

(declare-fun m!1104741 () Bool)

(assert (=> bs!232366 m!1104741))

(declare-fun m!1104743 () Bool)

(assert (=> bs!232366 m!1104743))

(assert (=> bs!232366 m!1104513))

(assert (=> b!860865 d!269630))

(declare-fun d!269634 () Bool)

(declare-fun lt!325373 () Bool)

(declare-fun e!566945 () Bool)

(assert (=> d!269634 (= lt!325373 e!566945)))

(declare-fun res!392873 () Bool)

(assert (=> d!269634 (=> (not res!392873) (not e!566945))))

(declare-datatypes ((IArray!6183 0))(
  ( (IArray!6184 (innerList!3149 List!9332)) )
))
(declare-datatypes ((Conc!3089 0))(
  ( (Node!3089 (left!6896 Conc!3089) (right!7226 Conc!3089) (csize!6408 Int) (cheight!3300 Int)) (Leaf!4551 (xs!5778 IArray!6183) (csize!6409 Int)) (Empty!3089) )
))
(declare-datatypes ((BalanceConc!6192 0))(
  ( (BalanceConc!6193 (c!139344 Conc!3089)) )
))
(declare-fun list!3674 (BalanceConc!6192) List!9332)

(declare-datatypes ((tuple2!10448 0))(
  ( (tuple2!10449 (_1!6050 BalanceConc!6192) (_2!6050 BalanceConc!6188)) )
))
(declare-fun lex!638 (LexerInterface!1550 List!9333 BalanceConc!6188) tuple2!10448)

(declare-fun print!575 (LexerInterface!1550 BalanceConc!6192) BalanceConc!6188)

(declare-fun singletonSeq!565 (Token!3162) BalanceConc!6192)

(assert (=> d!269634 (= res!392873 (= (list!3674 (_1!6050 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 (h!14717 (t!97598 lt!325281))))))) (list!3674 (singletonSeq!565 (h!14717 (t!97598 lt!325281))))))))

(declare-fun e!566946 () Bool)

(assert (=> d!269634 (= lt!325373 e!566946)))

(declare-fun res!392874 () Bool)

(assert (=> d!269634 (=> (not res!392874) (not e!566946))))

(declare-fun lt!325374 () tuple2!10448)

(declare-fun size!7770 (BalanceConc!6192) Int)

(assert (=> d!269634 (= res!392874 (= (size!7770 (_1!6050 lt!325374)) 1))))

(assert (=> d!269634 (= lt!325374 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 (h!14717 (t!97598 lt!325281))))))))

(assert (=> d!269634 (not (isEmpty!5525 rules!2621))))

(assert (=> d!269634 (= (rulesProduceIndividualToken!614 thiss!20117 rules!2621 (h!14717 (t!97598 lt!325281))) lt!325373)))

(declare-fun b!861146 () Bool)

(declare-fun res!392872 () Bool)

(assert (=> b!861146 (=> (not res!392872) (not e!566946))))

(declare-fun apply!1951 (BalanceConc!6192 Int) Token!3162)

(assert (=> b!861146 (= res!392872 (= (apply!1951 (_1!6050 lt!325374) 0) (h!14717 (t!97598 lt!325281))))))

(declare-fun b!861147 () Bool)

(declare-fun isEmpty!5528 (BalanceConc!6188) Bool)

(assert (=> b!861147 (= e!566946 (isEmpty!5528 (_2!6050 lt!325374)))))

(declare-fun b!861148 () Bool)

(assert (=> b!861148 (= e!566945 (isEmpty!5528 (_2!6050 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 (h!14717 (t!97598 lt!325281))))))))))

(assert (= (and d!269634 res!392874) b!861146))

(assert (= (and b!861146 res!392872) b!861147))

(assert (= (and d!269634 res!392873) b!861148))

(declare-fun m!1104873 () Bool)

(assert (=> d!269634 m!1104873))

(declare-fun m!1104875 () Bool)

(assert (=> d!269634 m!1104875))

(declare-fun m!1104877 () Bool)

(assert (=> d!269634 m!1104877))

(assert (=> d!269634 m!1104513))

(declare-fun m!1104879 () Bool)

(assert (=> d!269634 m!1104879))

(declare-fun m!1104881 () Bool)

(assert (=> d!269634 m!1104881))

(assert (=> d!269634 m!1104875))

(assert (=> d!269634 m!1104881))

(assert (=> d!269634 m!1104881))

(declare-fun m!1104883 () Bool)

(assert (=> d!269634 m!1104883))

(declare-fun m!1104885 () Bool)

(assert (=> b!861146 m!1104885))

(declare-fun m!1104887 () Bool)

(assert (=> b!861147 m!1104887))

(assert (=> b!861148 m!1104881))

(assert (=> b!861148 m!1104881))

(assert (=> b!861148 m!1104875))

(assert (=> b!861148 m!1104875))

(assert (=> b!861148 m!1104877))

(declare-fun m!1104889 () Bool)

(assert (=> b!861148 m!1104889))

(assert (=> b!860875 d!269634))

(declare-fun d!269668 () Bool)

(declare-fun res!392879 () Bool)

(declare-fun e!566949 () Bool)

(assert (=> d!269668 (=> (not res!392879) (not e!566949))))

(declare-fun isEmpty!5529 (List!9331) Bool)

(assert (=> d!269668 (= res!392879 (not (isEmpty!5529 (originalCharacters!2304 (h!14717 l!5107)))))))

(assert (=> d!269668 (= (inv!11840 (h!14717 l!5107)) e!566949)))

(declare-fun b!861153 () Bool)

(declare-fun res!392880 () Bool)

(assert (=> b!861153 (=> (not res!392880) (not e!566949))))

(declare-fun dynLambda!4405 (Int TokenValue!1814) BalanceConc!6188)

(assert (=> b!861153 (= res!392880 (= (originalCharacters!2304 (h!14717 l!5107)) (list!3673 (dynLambda!4405 (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (value!56517 (h!14717 l!5107))))))))

(declare-fun b!861154 () Bool)

(declare-fun size!7771 (List!9331) Int)

(assert (=> b!861154 (= e!566949 (= (size!7767 (h!14717 l!5107)) (size!7771 (originalCharacters!2304 (h!14717 l!5107)))))))

(assert (= (and d!269668 res!392879) b!861153))

(assert (= (and b!861153 res!392880) b!861154))

(declare-fun b_lambda!29127 () Bool)

(assert (=> (not b_lambda!29127) (not b!861153)))

(declare-fun t!97628 () Bool)

(declare-fun tb!61541 () Bool)

(assert (=> (and b!860878 (= (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107))))) t!97628) tb!61541))

(declare-fun b!861159 () Bool)

(declare-fun e!566952 () Bool)

(declare-fun tp!271911 () Bool)

(declare-fun inv!11844 (Conc!3087) Bool)

(assert (=> b!861159 (= e!566952 (and (inv!11844 (c!139302 (dynLambda!4405 (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (value!56517 (h!14717 l!5107))))) tp!271911))))

(declare-fun result!71240 () Bool)

(declare-fun inv!11845 (BalanceConc!6188) Bool)

(assert (=> tb!61541 (= result!71240 (and (inv!11845 (dynLambda!4405 (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (value!56517 (h!14717 l!5107)))) e!566952))))

(assert (= tb!61541 b!861159))

(declare-fun m!1104891 () Bool)

(assert (=> b!861159 m!1104891))

(declare-fun m!1104893 () Bool)

(assert (=> tb!61541 m!1104893))

(assert (=> b!861153 t!97628))

(declare-fun b_and!76677 () Bool)

(assert (= b_and!76647 (and (=> t!97628 result!71240) b_and!76677)))

(declare-fun t!97630 () Bool)

(declare-fun tb!61543 () Bool)

(assert (=> (and b!860883 (= (toChars!2672 (transformation!1748 (h!14718 rules!2621))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107))))) t!97630) tb!61543))

(declare-fun result!71244 () Bool)

(assert (= result!71244 result!71240))

(assert (=> b!861153 t!97630))

(declare-fun b_and!76679 () Bool)

(assert (= b_and!76651 (and (=> t!97630 result!71244) b_and!76679)))

(declare-fun t!97632 () Bool)

(declare-fun tb!61545 () Bool)

(assert (=> (and b!860873 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107))))) t!97632) tb!61545))

(declare-fun result!71246 () Bool)

(assert (= result!71246 result!71240))

(assert (=> b!861153 t!97632))

(declare-fun b_and!76681 () Bool)

(assert (= b_and!76655 (and (=> t!97632 result!71246) b_and!76681)))

(declare-fun m!1104895 () Bool)

(assert (=> d!269668 m!1104895))

(declare-fun m!1104897 () Bool)

(assert (=> b!861153 m!1104897))

(assert (=> b!861153 m!1104897))

(declare-fun m!1104899 () Bool)

(assert (=> b!861153 m!1104899))

(declare-fun m!1104901 () Bool)

(assert (=> b!861154 m!1104901))

(assert (=> b!860864 d!269668))

(declare-fun d!269670 () Bool)

(declare-fun res!392885 () Bool)

(declare-fun e!566957 () Bool)

(assert (=> d!269670 (=> res!392885 e!566957)))

(assert (=> d!269670 (= res!392885 ((_ is Nil!9316) l!5107))))

(assert (=> d!269670 (= (forall!2211 l!5107 lambda!25862) e!566957)))

(declare-fun b!861164 () Bool)

(declare-fun e!566958 () Bool)

(assert (=> b!861164 (= e!566957 e!566958)))

(declare-fun res!392886 () Bool)

(assert (=> b!861164 (=> (not res!392886) (not e!566958))))

(declare-fun dynLambda!4406 (Int Token!3162) Bool)

(assert (=> b!861164 (= res!392886 (dynLambda!4406 lambda!25862 (h!14717 l!5107)))))

(declare-fun b!861165 () Bool)

(assert (=> b!861165 (= e!566958 (forall!2211 (t!97598 l!5107) lambda!25862))))

(assert (= (and d!269670 (not res!392885)) b!861164))

(assert (= (and b!861164 res!392886) b!861165))

(declare-fun b_lambda!29129 () Bool)

(assert (=> (not b_lambda!29129) (not b!861164)))

(declare-fun m!1104903 () Bool)

(assert (=> b!861164 m!1104903))

(declare-fun m!1104905 () Bool)

(assert (=> b!861165 m!1104905))

(assert (=> b!860885 d!269670))

(declare-fun d!269672 () Bool)

(declare-fun res!392889 () Bool)

(declare-fun e!566961 () Bool)

(assert (=> d!269672 (=> (not res!392889) (not e!566961))))

(declare-fun rulesValid!621 (LexerInterface!1550 List!9333) Bool)

(assert (=> d!269672 (= res!392889 (rulesValid!621 thiss!20117 rules!2621))))

(assert (=> d!269672 (= (rulesInvariant!1426 thiss!20117 rules!2621) e!566961)))

(declare-fun b!861168 () Bool)

(declare-datatypes ((List!9335 0))(
  ( (Nil!9319) (Cons!9319 (h!14720 String!10968) (t!97647 List!9335)) )
))
(declare-fun noDuplicateTag!621 (LexerInterface!1550 List!9333 List!9335) Bool)

(assert (=> b!861168 (= e!566961 (noDuplicateTag!621 thiss!20117 rules!2621 Nil!9319))))

(assert (= (and d!269672 res!392889) b!861168))

(declare-fun m!1104907 () Bool)

(assert (=> d!269672 m!1104907))

(declare-fun m!1104909 () Bool)

(assert (=> b!861168 m!1104909))

(assert (=> b!860874 d!269672))

(declare-fun b!861179 () Bool)

(declare-fun e!566969 () Bool)

(declare-fun inv!15 (TokenValue!1814) Bool)

(assert (=> b!861179 (= e!566969 (inv!15 (value!56517 (h!14717 l!5107))))))

(declare-fun b!861180 () Bool)

(declare-fun e!566970 () Bool)

(declare-fun inv!16 (TokenValue!1814) Bool)

(assert (=> b!861180 (= e!566970 (inv!16 (value!56517 (h!14717 l!5107))))))

(declare-fun b!861181 () Bool)

(declare-fun e!566968 () Bool)

(assert (=> b!861181 (= e!566970 e!566968)))

(declare-fun c!139340 () Bool)

(assert (=> b!861181 (= c!139340 ((_ is IntegerValue!5443) (value!56517 (h!14717 l!5107))))))

(declare-fun b!861182 () Bool)

(declare-fun inv!17 (TokenValue!1814) Bool)

(assert (=> b!861182 (= e!566968 (inv!17 (value!56517 (h!14717 l!5107))))))

(declare-fun b!861183 () Bool)

(declare-fun res!392892 () Bool)

(assert (=> b!861183 (=> res!392892 e!566969)))

(assert (=> b!861183 (= res!392892 (not ((_ is IntegerValue!5444) (value!56517 (h!14717 l!5107)))))))

(assert (=> b!861183 (= e!566968 e!566969)))

(declare-fun d!269674 () Bool)

(declare-fun c!139341 () Bool)

(assert (=> d!269674 (= c!139341 ((_ is IntegerValue!5442) (value!56517 (h!14717 l!5107))))))

(assert (=> d!269674 (= (inv!21 (value!56517 (h!14717 l!5107))) e!566970)))

(assert (= (and d!269674 c!139341) b!861180))

(assert (= (and d!269674 (not c!139341)) b!861181))

(assert (= (and b!861181 c!139340) b!861182))

(assert (= (and b!861181 (not c!139340)) b!861183))

(assert (= (and b!861183 (not res!392892)) b!861179))

(declare-fun m!1104911 () Bool)

(assert (=> b!861179 m!1104911))

(declare-fun m!1104913 () Bool)

(assert (=> b!861180 m!1104913))

(declare-fun m!1104915 () Bool)

(assert (=> b!861182 m!1104915))

(assert (=> b!860863 d!269674))

(declare-fun bs!232371 () Bool)

(declare-fun d!269676 () Bool)

(assert (= bs!232371 (and d!269676 b!860885)))

(declare-fun lambda!25870 () Int)

(assert (=> bs!232371 (not (= lambda!25870 lambda!25862))))

(declare-fun bs!232372 () Bool)

(assert (= bs!232372 (and d!269676 d!269612)))

(assert (=> bs!232372 (= lambda!25870 lambda!25868)))

(declare-fun b!861188 () Bool)

(declare-fun e!566975 () Bool)

(assert (=> b!861188 (= e!566975 true)))

(declare-fun b!861187 () Bool)

(declare-fun e!566974 () Bool)

(assert (=> b!861187 (= e!566974 e!566975)))

(declare-fun b!861186 () Bool)

(declare-fun e!566973 () Bool)

(assert (=> b!861186 (= e!566973 e!566974)))

(assert (=> d!269676 e!566973))

(assert (= b!861187 b!861188))

(assert (= b!861186 b!861187))

(assert (= (and d!269676 ((_ is Cons!9317) rules!2621)) b!861186))

(assert (=> b!861188 (< (dynLambda!4401 order!6059 (toValue!2813 (transformation!1748 (h!14718 rules!2621)))) (dynLambda!4402 order!6061 lambda!25870))))

(assert (=> b!861188 (< (dynLambda!4403 order!6063 (toChars!2672 (transformation!1748 (h!14718 rules!2621)))) (dynLambda!4402 order!6061 lambda!25870))))

(assert (=> d!269676 true))

(declare-fun lt!325375 () Bool)

(assert (=> d!269676 (= lt!325375 (forall!2211 l!5107 lambda!25870))))

(declare-fun e!566971 () Bool)

(assert (=> d!269676 (= lt!325375 e!566971)))

(declare-fun res!392893 () Bool)

(assert (=> d!269676 (=> res!392893 e!566971)))

(assert (=> d!269676 (= res!392893 (not ((_ is Cons!9316) l!5107)))))

(assert (=> d!269676 (not (isEmpty!5525 rules!2621))))

(assert (=> d!269676 (= (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 l!5107) lt!325375)))

(declare-fun b!861184 () Bool)

(declare-fun e!566972 () Bool)

(assert (=> b!861184 (= e!566971 e!566972)))

(declare-fun res!392894 () Bool)

(assert (=> b!861184 (=> (not res!392894) (not e!566972))))

(assert (=> b!861184 (= res!392894 (rulesProduceIndividualToken!614 thiss!20117 rules!2621 (h!14717 l!5107)))))

(declare-fun b!861185 () Bool)

(assert (=> b!861185 (= e!566972 (rulesProduceEachTokenIndividuallyList!438 thiss!20117 rules!2621 (t!97598 l!5107)))))

(assert (= (and d!269676 (not res!392893)) b!861184))

(assert (= (and b!861184 res!392894) b!861185))

(declare-fun m!1104917 () Bool)

(assert (=> d!269676 m!1104917))

(assert (=> d!269676 m!1104513))

(declare-fun m!1104919 () Bool)

(assert (=> b!861184 m!1104919))

(declare-fun m!1104921 () Bool)

(assert (=> b!861185 m!1104921))

(assert (=> b!860884 d!269676))

(declare-fun b!861189 () Bool)

(declare-fun e!566977 () Bool)

(assert (=> b!861189 (= e!566977 (inv!15 (value!56517 separatorToken!297)))))

(declare-fun b!861190 () Bool)

(declare-fun e!566978 () Bool)

(assert (=> b!861190 (= e!566978 (inv!16 (value!56517 separatorToken!297)))))

(declare-fun b!861191 () Bool)

(declare-fun e!566976 () Bool)

(assert (=> b!861191 (= e!566978 e!566976)))

(declare-fun c!139342 () Bool)

(assert (=> b!861191 (= c!139342 ((_ is IntegerValue!5443) (value!56517 separatorToken!297)))))

(declare-fun b!861192 () Bool)

(assert (=> b!861192 (= e!566976 (inv!17 (value!56517 separatorToken!297)))))

(declare-fun b!861193 () Bool)

(declare-fun res!392895 () Bool)

(assert (=> b!861193 (=> res!392895 e!566977)))

(assert (=> b!861193 (= res!392895 (not ((_ is IntegerValue!5444) (value!56517 separatorToken!297))))))

(assert (=> b!861193 (= e!566976 e!566977)))

(declare-fun d!269678 () Bool)

(declare-fun c!139343 () Bool)

(assert (=> d!269678 (= c!139343 ((_ is IntegerValue!5442) (value!56517 separatorToken!297)))))

(assert (=> d!269678 (= (inv!21 (value!56517 separatorToken!297)) e!566978)))

(assert (= (and d!269678 c!139343) b!861190))

(assert (= (and d!269678 (not c!139343)) b!861191))

(assert (= (and b!861191 c!139342) b!861192))

(assert (= (and b!861191 (not c!139342)) b!861193))

(assert (= (and b!861193 (not res!392895)) b!861189))

(declare-fun m!1104923 () Bool)

(assert (=> b!861189 m!1104923))

(declare-fun m!1104925 () Bool)

(assert (=> b!861190 m!1104925))

(declare-fun m!1104927 () Bool)

(assert (=> b!861192 m!1104927))

(assert (=> b!860862 d!269678))

(declare-fun d!269680 () Bool)

(assert (=> d!269680 (= (inv!11837 (tag!2010 (rule!3171 separatorToken!297))) (= (mod (str.len (value!56516 (tag!2010 (rule!3171 separatorToken!297)))) 2) 0))))

(assert (=> b!860872 d!269680))

(declare-fun d!269682 () Bool)

(declare-fun res!392896 () Bool)

(declare-fun e!566979 () Bool)

(assert (=> d!269682 (=> (not res!392896) (not e!566979))))

(assert (=> d!269682 (= res!392896 (semiInverseModEq!689 (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (toValue!2813 (transformation!1748 (rule!3171 separatorToken!297)))))))

(assert (=> d!269682 (= (inv!11841 (transformation!1748 (rule!3171 separatorToken!297))) e!566979)))

(declare-fun b!861194 () Bool)

(assert (=> b!861194 (= e!566979 (equivClasses!656 (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (toValue!2813 (transformation!1748 (rule!3171 separatorToken!297)))))))

(assert (= (and d!269682 res!392896) b!861194))

(declare-fun m!1104929 () Bool)

(assert (=> d!269682 m!1104929))

(declare-fun m!1104931 () Bool)

(assert (=> b!861194 m!1104931))

(assert (=> b!860872 d!269682))

(declare-fun d!269684 () Bool)

(declare-fun lt!325376 () Bool)

(declare-fun e!566980 () Bool)

(assert (=> d!269684 (= lt!325376 e!566980)))

(declare-fun res!392898 () Bool)

(assert (=> d!269684 (=> (not res!392898) (not e!566980))))

(assert (=> d!269684 (= res!392898 (= (list!3674 (_1!6050 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 (h!14717 lt!325281)))))) (list!3674 (singletonSeq!565 (h!14717 lt!325281)))))))

(declare-fun e!566981 () Bool)

(assert (=> d!269684 (= lt!325376 e!566981)))

(declare-fun res!392899 () Bool)

(assert (=> d!269684 (=> (not res!392899) (not e!566981))))

(declare-fun lt!325377 () tuple2!10448)

(assert (=> d!269684 (= res!392899 (= (size!7770 (_1!6050 lt!325377)) 1))))

(assert (=> d!269684 (= lt!325377 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 (h!14717 lt!325281)))))))

(assert (=> d!269684 (not (isEmpty!5525 rules!2621))))

(assert (=> d!269684 (= (rulesProduceIndividualToken!614 thiss!20117 rules!2621 (h!14717 lt!325281)) lt!325376)))

(declare-fun b!861195 () Bool)

(declare-fun res!392897 () Bool)

(assert (=> b!861195 (=> (not res!392897) (not e!566981))))

(assert (=> b!861195 (= res!392897 (= (apply!1951 (_1!6050 lt!325377) 0) (h!14717 lt!325281)))))

(declare-fun b!861196 () Bool)

(assert (=> b!861196 (= e!566981 (isEmpty!5528 (_2!6050 lt!325377)))))

(declare-fun b!861197 () Bool)

(assert (=> b!861197 (= e!566980 (isEmpty!5528 (_2!6050 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 (h!14717 lt!325281)))))))))

(assert (= (and d!269684 res!392899) b!861195))

(assert (= (and b!861195 res!392897) b!861196))

(assert (= (and d!269684 res!392898) b!861197))

(declare-fun m!1104933 () Bool)

(assert (=> d!269684 m!1104933))

(declare-fun m!1104935 () Bool)

(assert (=> d!269684 m!1104935))

(declare-fun m!1104937 () Bool)

(assert (=> d!269684 m!1104937))

(assert (=> d!269684 m!1104513))

(declare-fun m!1104939 () Bool)

(assert (=> d!269684 m!1104939))

(declare-fun m!1104941 () Bool)

(assert (=> d!269684 m!1104941))

(assert (=> d!269684 m!1104935))

(assert (=> d!269684 m!1104941))

(assert (=> d!269684 m!1104941))

(declare-fun m!1104943 () Bool)

(assert (=> d!269684 m!1104943))

(declare-fun m!1104945 () Bool)

(assert (=> b!861195 m!1104945))

(declare-fun m!1104947 () Bool)

(assert (=> b!861196 m!1104947))

(assert (=> b!861197 m!1104941))

(assert (=> b!861197 m!1104941))

(assert (=> b!861197 m!1104935))

(assert (=> b!861197 m!1104935))

(assert (=> b!861197 m!1104937))

(declare-fun m!1104949 () Bool)

(assert (=> b!861197 m!1104949))

(assert (=> b!860871 d!269684))

(declare-fun d!269686 () Bool)

(declare-fun lt!325378 () Bool)

(declare-fun e!566982 () Bool)

(assert (=> d!269686 (= lt!325378 e!566982)))

(declare-fun res!392901 () Bool)

(assert (=> d!269686 (=> (not res!392901) (not e!566982))))

(assert (=> d!269686 (= res!392901 (= (list!3674 (_1!6050 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 separatorToken!297))))) (list!3674 (singletonSeq!565 separatorToken!297))))))

(declare-fun e!566983 () Bool)

(assert (=> d!269686 (= lt!325378 e!566983)))

(declare-fun res!392902 () Bool)

(assert (=> d!269686 (=> (not res!392902) (not e!566983))))

(declare-fun lt!325379 () tuple2!10448)

(assert (=> d!269686 (= res!392902 (= (size!7770 (_1!6050 lt!325379)) 1))))

(assert (=> d!269686 (= lt!325379 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 separatorToken!297))))))

(assert (=> d!269686 (not (isEmpty!5525 rules!2621))))

(assert (=> d!269686 (= (rulesProduceIndividualToken!614 thiss!20117 rules!2621 separatorToken!297) lt!325378)))

(declare-fun b!861198 () Bool)

(declare-fun res!392900 () Bool)

(assert (=> b!861198 (=> (not res!392900) (not e!566983))))

(assert (=> b!861198 (= res!392900 (= (apply!1951 (_1!6050 lt!325379) 0) separatorToken!297))))

(declare-fun b!861199 () Bool)

(assert (=> b!861199 (= e!566983 (isEmpty!5528 (_2!6050 lt!325379)))))

(declare-fun b!861200 () Bool)

(assert (=> b!861200 (= e!566982 (isEmpty!5528 (_2!6050 (lex!638 thiss!20117 rules!2621 (print!575 thiss!20117 (singletonSeq!565 separatorToken!297))))))))

(assert (= (and d!269686 res!392902) b!861198))

(assert (= (and b!861198 res!392900) b!861199))

(assert (= (and d!269686 res!392901) b!861200))

(declare-fun m!1104951 () Bool)

(assert (=> d!269686 m!1104951))

(declare-fun m!1104953 () Bool)

(assert (=> d!269686 m!1104953))

(declare-fun m!1104955 () Bool)

(assert (=> d!269686 m!1104955))

(assert (=> d!269686 m!1104513))

(declare-fun m!1104957 () Bool)

(assert (=> d!269686 m!1104957))

(declare-fun m!1104959 () Bool)

(assert (=> d!269686 m!1104959))

(assert (=> d!269686 m!1104953))

(assert (=> d!269686 m!1104959))

(assert (=> d!269686 m!1104959))

(declare-fun m!1104961 () Bool)

(assert (=> d!269686 m!1104961))

(declare-fun m!1104963 () Bool)

(assert (=> b!861198 m!1104963))

(declare-fun m!1104965 () Bool)

(assert (=> b!861199 m!1104965))

(assert (=> b!861200 m!1104959))

(assert (=> b!861200 m!1104959))

(assert (=> b!861200 m!1104953))

(assert (=> b!861200 m!1104953))

(assert (=> b!861200 m!1104955))

(declare-fun m!1104967 () Bool)

(assert (=> b!861200 m!1104967))

(assert (=> b!860870 d!269686))

(declare-fun d!269688 () Bool)

(declare-fun res!392903 () Bool)

(declare-fun e!566984 () Bool)

(assert (=> d!269688 (=> (not res!392903) (not e!566984))))

(assert (=> d!269688 (= res!392903 (not (isEmpty!5529 (originalCharacters!2304 separatorToken!297))))))

(assert (=> d!269688 (= (inv!11840 separatorToken!297) e!566984)))

(declare-fun b!861201 () Bool)

(declare-fun res!392904 () Bool)

(assert (=> b!861201 (=> (not res!392904) (not e!566984))))

(assert (=> b!861201 (= res!392904 (= (originalCharacters!2304 separatorToken!297) (list!3673 (dynLambda!4405 (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (value!56517 separatorToken!297)))))))

(declare-fun b!861202 () Bool)

(assert (=> b!861202 (= e!566984 (= (size!7767 separatorToken!297) (size!7771 (originalCharacters!2304 separatorToken!297))))))

(assert (= (and d!269688 res!392903) b!861201))

(assert (= (and b!861201 res!392904) b!861202))

(declare-fun b_lambda!29131 () Bool)

(assert (=> (not b_lambda!29131) (not b!861201)))

(declare-fun t!97634 () Bool)

(declare-fun tb!61547 () Bool)

(assert (=> (and b!860878 (= (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297)))) t!97634) tb!61547))

(declare-fun b!861203 () Bool)

(declare-fun e!566985 () Bool)

(declare-fun tp!271912 () Bool)

(assert (=> b!861203 (= e!566985 (and (inv!11844 (c!139302 (dynLambda!4405 (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (value!56517 separatorToken!297)))) tp!271912))))

(declare-fun result!71248 () Bool)

(assert (=> tb!61547 (= result!71248 (and (inv!11845 (dynLambda!4405 (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (value!56517 separatorToken!297))) e!566985))))

(assert (= tb!61547 b!861203))

(declare-fun m!1104969 () Bool)

(assert (=> b!861203 m!1104969))

(declare-fun m!1104971 () Bool)

(assert (=> tb!61547 m!1104971))

(assert (=> b!861201 t!97634))

(declare-fun b_and!76683 () Bool)

(assert (= b_and!76677 (and (=> t!97634 result!71248) b_and!76683)))

(declare-fun t!97636 () Bool)

(declare-fun tb!61549 () Bool)

(assert (=> (and b!860883 (= (toChars!2672 (transformation!1748 (h!14718 rules!2621))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297)))) t!97636) tb!61549))

(declare-fun result!71250 () Bool)

(assert (= result!71250 result!71248))

(assert (=> b!861201 t!97636))

(declare-fun b_and!76685 () Bool)

(assert (= b_and!76679 (and (=> t!97636 result!71250) b_and!76685)))

(declare-fun t!97638 () Bool)

(declare-fun tb!61551 () Bool)

(assert (=> (and b!860873 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297)))) t!97638) tb!61551))

(declare-fun result!71252 () Bool)

(assert (= result!71252 result!71248))

(assert (=> b!861201 t!97638))

(declare-fun b_and!76687 () Bool)

(assert (= b_and!76681 (and (=> t!97638 result!71252) b_and!76687)))

(declare-fun m!1104973 () Bool)

(assert (=> d!269688 m!1104973))

(declare-fun m!1104975 () Bool)

(assert (=> b!861201 m!1104975))

(assert (=> b!861201 m!1104975))

(declare-fun m!1104977 () Bool)

(assert (=> b!861201 m!1104977))

(declare-fun m!1104979 () Bool)

(assert (=> b!861202 m!1104979))

(assert (=> start!77666 d!269688))

(declare-fun d!269690 () Bool)

(assert (=> d!269690 (= (inv!11837 (tag!2010 (rule!3171 (h!14717 l!5107)))) (= (mod (str.len (value!56516 (tag!2010 (rule!3171 (h!14717 l!5107))))) 2) 0))))

(assert (=> b!860880 d!269690))

(declare-fun d!269692 () Bool)

(declare-fun res!392905 () Bool)

(declare-fun e!566986 () Bool)

(assert (=> d!269692 (=> (not res!392905) (not e!566986))))

(assert (=> d!269692 (= res!392905 (semiInverseModEq!689 (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (toValue!2813 (transformation!1748 (rule!3171 (h!14717 l!5107))))))))

(assert (=> d!269692 (= (inv!11841 (transformation!1748 (rule!3171 (h!14717 l!5107)))) e!566986)))

(declare-fun b!861204 () Bool)

(assert (=> b!861204 (= e!566986 (equivClasses!656 (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (toValue!2813 (transformation!1748 (rule!3171 (h!14717 l!5107))))))))

(assert (= (and d!269692 res!392905) b!861204))

(declare-fun m!1104981 () Bool)

(assert (=> d!269692 m!1104981))

(declare-fun m!1104983 () Bool)

(assert (=> b!861204 m!1104983))

(assert (=> b!860880 d!269692))

(declare-fun d!269694 () Bool)

(assert (=> d!269694 (= (head!1494 l!5107) (h!14717 l!5107))))

(assert (=> b!860869 d!269694))

(declare-fun b!861209 () Bool)

(declare-fun e!566989 () Bool)

(declare-fun tp_is_empty!4013 () Bool)

(declare-fun tp!271915 () Bool)

(assert (=> b!861209 (= e!566989 (and tp_is_empty!4013 tp!271915))))

(assert (=> b!860863 (= tp!271837 e!566989)))

(assert (= (and b!860863 ((_ is Cons!9315) (originalCharacters!2304 (h!14717 l!5107)))) b!861209))

(declare-fun b!861220 () Bool)

(declare-fun b_free!26309 () Bool)

(declare-fun b_next!26373 () Bool)

(assert (=> b!861220 (= b_free!26309 (not b_next!26373))))

(declare-fun tp!271927 () Bool)

(declare-fun b_and!76689 () Bool)

(assert (=> b!861220 (= tp!271927 b_and!76689)))

(declare-fun b_free!26311 () Bool)

(declare-fun b_next!26375 () Bool)

(assert (=> b!861220 (= b_free!26311 (not b_next!26375))))

(declare-fun t!97640 () Bool)

(declare-fun tb!61553 () Bool)

(assert (=> (and b!861220 (= (toChars!2672 (transformation!1748 (h!14718 (t!97599 rules!2621)))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107))))) t!97640) tb!61553))

(declare-fun result!71258 () Bool)

(assert (= result!71258 result!71240))

(assert (=> b!861153 t!97640))

(declare-fun tb!61555 () Bool)

(declare-fun t!97642 () Bool)

(assert (=> (and b!861220 (= (toChars!2672 (transformation!1748 (h!14718 (t!97599 rules!2621)))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297)))) t!97642) tb!61555))

(declare-fun result!71260 () Bool)

(assert (= result!71260 result!71248))

(assert (=> b!861201 t!97642))

(declare-fun b_and!76691 () Bool)

(declare-fun tp!271926 () Bool)

(assert (=> b!861220 (= tp!271926 (and (=> t!97640 result!71258) (=> t!97642 result!71260) b_and!76691))))

(declare-fun e!566999 () Bool)

(assert (=> b!861220 (= e!566999 (and tp!271927 tp!271926))))

(declare-fun tp!271924 () Bool)

(declare-fun e!567000 () Bool)

(declare-fun b!861219 () Bool)

(assert (=> b!861219 (= e!567000 (and tp!271924 (inv!11837 (tag!2010 (h!14718 (t!97599 rules!2621)))) (inv!11841 (transformation!1748 (h!14718 (t!97599 rules!2621)))) e!566999))))

(declare-fun b!861218 () Bool)

(declare-fun e!567001 () Bool)

(declare-fun tp!271925 () Bool)

(assert (=> b!861218 (= e!567001 (and e!567000 tp!271925))))

(assert (=> b!860879 (= tp!271845 e!567001)))

(assert (= b!861219 b!861220))

(assert (= b!861218 b!861219))

(assert (= (and b!860879 ((_ is Cons!9317) (t!97599 rules!2621))) b!861218))

(declare-fun m!1104985 () Bool)

(assert (=> b!861219 m!1104985))

(declare-fun m!1104987 () Bool)

(assert (=> b!861219 m!1104987))

(declare-fun b!861234 () Bool)

(declare-fun e!567004 () Bool)

(declare-fun tp!271942 () Bool)

(declare-fun tp!271940 () Bool)

(assert (=> b!861234 (= e!567004 (and tp!271942 tp!271940))))

(assert (=> b!860868 (= tp!271840 e!567004)))

(declare-fun b!861233 () Bool)

(declare-fun tp!271941 () Bool)

(assert (=> b!861233 (= e!567004 tp!271941)))

(declare-fun b!861231 () Bool)

(assert (=> b!861231 (= e!567004 tp_is_empty!4013)))

(declare-fun b!861232 () Bool)

(declare-fun tp!271939 () Bool)

(declare-fun tp!271938 () Bool)

(assert (=> b!861232 (= e!567004 (and tp!271939 tp!271938))))

(assert (= (and b!860868 ((_ is ElementMatch!2181) (regex!1748 (h!14718 rules!2621)))) b!861231))

(assert (= (and b!860868 ((_ is Concat!3996) (regex!1748 (h!14718 rules!2621)))) b!861232))

(assert (= (and b!860868 ((_ is Star!2181) (regex!1748 (h!14718 rules!2621)))) b!861233))

(assert (= (and b!860868 ((_ is Union!2181) (regex!1748 (h!14718 rules!2621)))) b!861234))

(declare-fun b!861235 () Bool)

(declare-fun e!567005 () Bool)

(declare-fun tp!271943 () Bool)

(assert (=> b!861235 (= e!567005 (and tp_is_empty!4013 tp!271943))))

(assert (=> b!860862 (= tp!271836 e!567005)))

(assert (= (and b!860862 ((_ is Cons!9315) (originalCharacters!2304 separatorToken!297))) b!861235))

(declare-fun b!861239 () Bool)

(declare-fun e!567006 () Bool)

(declare-fun tp!271948 () Bool)

(declare-fun tp!271946 () Bool)

(assert (=> b!861239 (= e!567006 (and tp!271948 tp!271946))))

(assert (=> b!860872 (= tp!271839 e!567006)))

(declare-fun b!861238 () Bool)

(declare-fun tp!271947 () Bool)

(assert (=> b!861238 (= e!567006 tp!271947)))

(declare-fun b!861236 () Bool)

(assert (=> b!861236 (= e!567006 tp_is_empty!4013)))

(declare-fun b!861237 () Bool)

(declare-fun tp!271945 () Bool)

(declare-fun tp!271944 () Bool)

(assert (=> b!861237 (= e!567006 (and tp!271945 tp!271944))))

(assert (= (and b!860872 ((_ is ElementMatch!2181) (regex!1748 (rule!3171 separatorToken!297)))) b!861236))

(assert (= (and b!860872 ((_ is Concat!3996) (regex!1748 (rule!3171 separatorToken!297)))) b!861237))

(assert (= (and b!860872 ((_ is Star!2181) (regex!1748 (rule!3171 separatorToken!297)))) b!861238))

(assert (= (and b!860872 ((_ is Union!2181) (regex!1748 (rule!3171 separatorToken!297)))) b!861239))

(declare-fun b!861253 () Bool)

(declare-fun b_free!26313 () Bool)

(declare-fun b_next!26377 () Bool)

(assert (=> b!861253 (= b_free!26313 (not b_next!26377))))

(declare-fun tp!271961 () Bool)

(declare-fun b_and!76693 () Bool)

(assert (=> b!861253 (= tp!271961 b_and!76693)))

(declare-fun b_free!26315 () Bool)

(declare-fun b_next!26379 () Bool)

(assert (=> b!861253 (= b_free!26315 (not b_next!26379))))

(declare-fun t!97644 () Bool)

(declare-fun tb!61557 () Bool)

(assert (=> (and b!861253 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 (t!97598 l!5107))))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107))))) t!97644) tb!61557))

(declare-fun result!71266 () Bool)

(assert (= result!71266 result!71240))

(assert (=> b!861153 t!97644))

(declare-fun tb!61559 () Bool)

(declare-fun t!97646 () Bool)

(assert (=> (and b!861253 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 (t!97598 l!5107))))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297)))) t!97646) tb!61559))

(declare-fun result!71268 () Bool)

(assert (= result!71268 result!71248))

(assert (=> b!861201 t!97646))

(declare-fun tp!271960 () Bool)

(declare-fun b_and!76695 () Bool)

(assert (=> b!861253 (= tp!271960 (and (=> t!97644 result!71266) (=> t!97646 result!71268) b_and!76695))))

(declare-fun e!567023 () Bool)

(assert (=> b!860864 (= tp!271848 e!567023)))

(declare-fun e!567019 () Bool)

(assert (=> b!861253 (= e!567019 (and tp!271961 tp!271960))))

(declare-fun b!861252 () Bool)

(declare-fun tp!271962 () Bool)

(declare-fun e!567021 () Bool)

(assert (=> b!861252 (= e!567021 (and tp!271962 (inv!11837 (tag!2010 (rule!3171 (h!14717 (t!97598 l!5107))))) (inv!11841 (transformation!1748 (rule!3171 (h!14717 (t!97598 l!5107))))) e!567019))))

(declare-fun e!567022 () Bool)

(declare-fun tp!271959 () Bool)

(declare-fun b!861251 () Bool)

(assert (=> b!861251 (= e!567022 (and (inv!21 (value!56517 (h!14717 (t!97598 l!5107)))) e!567021 tp!271959))))

(declare-fun b!861250 () Bool)

(declare-fun tp!271963 () Bool)

(assert (=> b!861250 (= e!567023 (and (inv!11840 (h!14717 (t!97598 l!5107))) e!567022 tp!271963))))

(assert (= b!861252 b!861253))

(assert (= b!861251 b!861252))

(assert (= b!861250 b!861251))

(assert (= (and b!860864 ((_ is Cons!9316) (t!97598 l!5107))) b!861250))

(declare-fun m!1104989 () Bool)

(assert (=> b!861252 m!1104989))

(declare-fun m!1104991 () Bool)

(assert (=> b!861252 m!1104991))

(declare-fun m!1104993 () Bool)

(assert (=> b!861251 m!1104993))

(declare-fun m!1104995 () Bool)

(assert (=> b!861250 m!1104995))

(declare-fun b!861257 () Bool)

(declare-fun e!567025 () Bool)

(declare-fun tp!271968 () Bool)

(declare-fun tp!271966 () Bool)

(assert (=> b!861257 (= e!567025 (and tp!271968 tp!271966))))

(assert (=> b!860880 (= tp!271844 e!567025)))

(declare-fun b!861256 () Bool)

(declare-fun tp!271967 () Bool)

(assert (=> b!861256 (= e!567025 tp!271967)))

(declare-fun b!861254 () Bool)

(assert (=> b!861254 (= e!567025 tp_is_empty!4013)))

(declare-fun b!861255 () Bool)

(declare-fun tp!271965 () Bool)

(declare-fun tp!271964 () Bool)

(assert (=> b!861255 (= e!567025 (and tp!271965 tp!271964))))

(assert (= (and b!860880 ((_ is ElementMatch!2181) (regex!1748 (rule!3171 (h!14717 l!5107))))) b!861254))

(assert (= (and b!860880 ((_ is Concat!3996) (regex!1748 (rule!3171 (h!14717 l!5107))))) b!861255))

(assert (= (and b!860880 ((_ is Star!2181) (regex!1748 (rule!3171 (h!14717 l!5107))))) b!861256))

(assert (= (and b!860880 ((_ is Union!2181) (regex!1748 (rule!3171 (h!14717 l!5107))))) b!861257))

(declare-fun b_lambda!29133 () Bool)

(assert (= b_lambda!29129 (or b!860885 b_lambda!29133)))

(declare-fun bs!232373 () Bool)

(declare-fun d!269696 () Bool)

(assert (= bs!232373 (and d!269696 b!860885)))

(assert (=> bs!232373 (= (dynLambda!4406 lambda!25862 (h!14717 l!5107)) (not (isSeparator!1748 (rule!3171 (h!14717 l!5107)))))))

(assert (=> b!861164 d!269696))

(declare-fun b_lambda!29135 () Bool)

(assert (= b_lambda!29127 (or (and b!860883 b_free!26295 (= (toChars!2672 (transformation!1748 (h!14718 rules!2621))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))))) (and b!861253 b_free!26315 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 (t!97598 l!5107))))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))))) (and b!860873 b_free!26299) (and b!861220 b_free!26311 (= (toChars!2672 (transformation!1748 (h!14718 (t!97599 rules!2621)))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))))) (and b!860878 b_free!26291 (= (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))) (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))))) b_lambda!29135)))

(declare-fun b_lambda!29137 () Bool)

(assert (= b_lambda!29131 (or (and b!861220 b_free!26311 (= (toChars!2672 (transformation!1748 (h!14718 (t!97599 rules!2621)))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))))) (and b!861253 b_free!26315 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 (t!97598 l!5107))))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))))) (and b!860883 b_free!26295 (= (toChars!2672 (transformation!1748 (h!14718 rules!2621))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))))) (and b!860878 b_free!26291) (and b!860873 b_free!26299 (= (toChars!2672 (transformation!1748 (rule!3171 (h!14717 l!5107)))) (toChars!2672 (transformation!1748 (rule!3171 separatorToken!297))))) b_lambda!29137)))

(check-sat (not d!269688) (not b!861194) (not b!861196) (not b!861199) b_and!76653 (not b!860986) (not b!861148) (not b!861009) (not b_next!26353) b_and!76689 (not b!861190) (not b!861238) (not b!860915) (not b!861232) (not b_next!26357) (not b!861239) (not b!861255) (not b!860924) (not b!861219) (not b!861154) (not b!861252) (not b!861234) (not b!861250) (not b!861008) (not b!861159) (not b!861000) (not b!861179) (not b!860914) (not b!861203) (not b!861165) (not b!861146) (not d!269668) (not b!860985) (not b_next!26363) (not b!861010) (not d!269612) (not tb!61541) (not b!861180) b_and!76695 (not d!269634) (not d!269672) (not d!269682) (not d!269600) (not d!269676) b_and!76691 (not b!861189) (not d!269686) (not b!861185) (not b!861209) (not tb!61547) (not b!861257) b_and!76685 (not b!860923) (not b!861195) (not b_next!26377) (not b!861186) (not d!269628) (not b!861201) (not b!861251) (not d!269684) (not b_next!26375) (not b!861011) (not b_lambda!29137) b_and!76645 (not b!861204) (not b!861168) (not b!860918) (not b!860913) b_and!76693 (not b!860912) b_and!76649 b_and!76683 (not b!861237) (not b!861233) (not b!860888) (not b_next!26359) (not b!861198) (not b_lambda!29133) (not b!861256) (not b_next!26373) (not b!861153) (not d!269604) (not b!861235) (not b_next!26379) tp_is_empty!4013 (not b!861200) (not b!861014) (not b!861184) (not b_lambda!29135) (not b!861147) (not d!269692) (not b!861192) b_and!76687 (not b!861197) (not b_next!26355) (not b!861202) (not b_next!26361) (not d!269630) (not b!861182) (not b!861218))
(check-sat b_and!76653 (not b_next!26353) b_and!76689 (not b_next!26357) (not b_next!26363) b_and!76695 b_and!76691 b_and!76685 (not b_next!26377) b_and!76683 (not b_next!26379) (not b_next!26361) (not b_next!26375) b_and!76645 b_and!76693 b_and!76649 (not b_next!26373) (not b_next!26359) b_and!76687 (not b_next!26355))
