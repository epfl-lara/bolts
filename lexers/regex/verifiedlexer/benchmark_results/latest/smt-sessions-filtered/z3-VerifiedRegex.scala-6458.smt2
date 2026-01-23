; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338182 () Bool)

(assert start!338182)

(declare-fun b!3627871 () Bool)

(declare-fun b_free!94761 () Bool)

(declare-fun b_next!95465 () Bool)

(assert (=> b!3627871 (= b_free!94761 (not b_next!95465))))

(declare-fun tp!1107645 () Bool)

(declare-fun b_and!265935 () Bool)

(assert (=> b!3627871 (= tp!1107645 b_and!265935)))

(declare-fun b_free!94763 () Bool)

(declare-fun b_next!95467 () Bool)

(assert (=> b!3627871 (= b_free!94763 (not b_next!95467))))

(declare-fun tp!1107653 () Bool)

(declare-fun b_and!265937 () Bool)

(assert (=> b!3627871 (= tp!1107653 b_and!265937)))

(declare-fun b!3627850 () Bool)

(declare-fun b_free!94765 () Bool)

(declare-fun b_next!95469 () Bool)

(assert (=> b!3627850 (= b_free!94765 (not b_next!95469))))

(declare-fun tp!1107646 () Bool)

(declare-fun b_and!265939 () Bool)

(assert (=> b!3627850 (= tp!1107646 b_and!265939)))

(declare-fun b_free!94767 () Bool)

(declare-fun b_next!95471 () Bool)

(assert (=> b!3627850 (= b_free!94767 (not b_next!95471))))

(declare-fun tp!1107656 () Bool)

(declare-fun b_and!265941 () Bool)

(assert (=> b!3627850 (= tp!1107656 b_and!265941)))

(declare-fun b!3627857 () Bool)

(declare-fun b_free!94769 () Bool)

(declare-fun b_next!95473 () Bool)

(assert (=> b!3627857 (= b_free!94769 (not b_next!95473))))

(declare-fun tp!1107654 () Bool)

(declare-fun b_and!265943 () Bool)

(assert (=> b!3627857 (= tp!1107654 b_and!265943)))

(declare-fun b_free!94771 () Bool)

(declare-fun b_next!95475 () Bool)

(assert (=> b!3627857 (= b_free!94771 (not b_next!95475))))

(declare-fun tp!1107655 () Bool)

(declare-fun b_and!265945 () Bool)

(assert (=> b!3627857 (= tp!1107655 b_and!265945)))

(declare-fun b!3627865 () Bool)

(declare-fun b_free!94773 () Bool)

(declare-fun b_next!95477 () Bool)

(assert (=> b!3627865 (= b_free!94773 (not b_next!95477))))

(declare-fun tp!1107642 () Bool)

(declare-fun b_and!265947 () Bool)

(assert (=> b!3627865 (= tp!1107642 b_and!265947)))

(declare-fun b_free!94775 () Bool)

(declare-fun b_next!95479 () Bool)

(assert (=> b!3627865 (= b_free!94775 (not b_next!95479))))

(declare-fun tp!1107647 () Bool)

(declare-fun b_and!265949 () Bool)

(assert (=> b!3627865 (= tp!1107647 b_and!265949)))

(declare-fun b!3627841 () Bool)

(declare-fun res!1468880 () Bool)

(declare-fun e!2245599 () Bool)

(assert (=> b!3627841 (=> res!1468880 e!2245599)))

(declare-datatypes ((C!21096 0))(
  ( (C!21097 (val!12596 Int)) )
))
(declare-datatypes ((List!38341 0))(
  ( (Nil!38217) (Cons!38217 (h!43637 C!21096) (t!294916 List!38341)) )
))
(declare-fun lt!1254507 () List!38341)

(declare-fun lt!1254521 () C!21096)

(declare-fun contains!7457 (List!38341 C!21096) Bool)

(assert (=> b!3627841 (= res!1468880 (not (contains!7457 lt!1254507 lt!1254521)))))

(declare-fun b!3627842 () Bool)

(declare-fun e!2245601 () Bool)

(declare-fun e!2245604 () Bool)

(assert (=> b!3627842 (= e!2245601 e!2245604)))

(declare-fun res!1468882 () Bool)

(assert (=> b!3627842 (=> (not res!1468882) (not e!2245604))))

(declare-datatypes ((List!38342 0))(
  ( (Nil!38218) (Cons!38218 (h!43638 (_ BitVec 16)) (t!294917 List!38342)) )
))
(declare-datatypes ((TokenValue!5926 0))(
  ( (FloatLiteralValue!11852 (text!41927 List!38342)) (TokenValueExt!5925 (__x!24069 Int)) (Broken!29630 (value!182770 List!38342)) (Object!6049) (End!5926) (Def!5926) (Underscore!5926) (Match!5926) (Else!5926) (Error!5926) (Case!5926) (If!5926) (Extends!5926) (Abstract!5926) (Class!5926) (Val!5926) (DelimiterValue!11852 (del!5986 List!38342)) (KeywordValue!5932 (value!182771 List!38342)) (CommentValue!11852 (value!182772 List!38342)) (WhitespaceValue!11852 (value!182773 List!38342)) (IndentationValue!5926 (value!182774 List!38342)) (String!42963) (Int32!5926) (Broken!29631 (value!182775 List!38342)) (Boolean!5927) (Unit!54987) (OperatorValue!5929 (op!5986 List!38342)) (IdentifierValue!11852 (value!182776 List!38342)) (IdentifierValue!11853 (value!182777 List!38342)) (WhitespaceValue!11853 (value!182778 List!38342)) (True!11852) (False!11852) (Broken!29632 (value!182779 List!38342)) (Broken!29633 (value!182780 List!38342)) (True!11853) (RightBrace!5926) (RightBracket!5926) (Colon!5926) (Null!5926) (Comma!5926) (LeftBracket!5926) (False!11853) (LeftBrace!5926) (ImaginaryLiteralValue!5926 (text!41928 List!38342)) (StringLiteralValue!17778 (value!182781 List!38342)) (EOFValue!5926 (value!182782 List!38342)) (IdentValue!5926 (value!182783 List!38342)) (DelimiterValue!11853 (value!182784 List!38342)) (DedentValue!5926 (value!182785 List!38342)) (NewLineValue!5926 (value!182786 List!38342)) (IntegerValue!17778 (value!182787 (_ BitVec 32)) (text!41929 List!38342)) (IntegerValue!17779 (value!182788 Int) (text!41930 List!38342)) (Times!5926) (Or!5926) (Equal!5926) (Minus!5926) (Broken!29634 (value!182789 List!38342)) (And!5926) (Div!5926) (LessEqual!5926) (Mod!5926) (Concat!16381) (Not!5926) (Plus!5926) (SpaceValue!5926 (value!182790 List!38342)) (IntegerValue!17780 (value!182791 Int) (text!41931 List!38342)) (StringLiteralValue!17779 (text!41932 List!38342)) (FloatLiteralValue!11853 (text!41933 List!38342)) (BytesLiteralValue!5926 (value!182792 List!38342)) (CommentValue!11853 (value!182793 List!38342)) (StringLiteralValue!17780 (value!182794 List!38342)) (ErrorTokenValue!5926 (msg!5987 List!38342)) )
))
(declare-datatypes ((Regex!10455 0))(
  ( (ElementMatch!10455 (c!627654 C!21096)) (Concat!16382 (regOne!21422 Regex!10455) (regTwo!21422 Regex!10455)) (EmptyExpr!10455) (Star!10455 (reg!10784 Regex!10455)) (EmptyLang!10455) (Union!10455 (regOne!21423 Regex!10455) (regTwo!21423 Regex!10455)) )
))
(declare-datatypes ((String!42964 0))(
  ( (String!42965 (value!182795 String)) )
))
(declare-datatypes ((IArray!23323 0))(
  ( (IArray!23324 (innerList!11719 List!38341)) )
))
(declare-datatypes ((Conc!11659 0))(
  ( (Node!11659 (left!29837 Conc!11659) (right!30167 Conc!11659) (csize!23548 Int) (cheight!11870 Int)) (Leaf!18118 (xs!14861 IArray!23323) (csize!23549 Int)) (Empty!11659) )
))
(declare-datatypes ((BalanceConc!22932 0))(
  ( (BalanceConc!22933 (c!627655 Conc!11659)) )
))
(declare-datatypes ((TokenValueInjection!11280 0))(
  ( (TokenValueInjection!11281 (toValue!7984 Int) (toChars!7843 Int)) )
))
(declare-datatypes ((Rule!11192 0))(
  ( (Rule!11193 (regex!5696 Regex!10455) (tag!6424 String!42964) (isSeparator!5696 Bool) (transformation!5696 TokenValueInjection!11280)) )
))
(declare-fun lt!1254531 () Rule!11192)

(declare-datatypes ((Token!10758 0))(
  ( (Token!10759 (value!182796 TokenValue!5926) (rule!8466 Rule!11192) (size!29157 Int) (originalCharacters!6410 List!38341)) )
))
(declare-datatypes ((tuple2!38096 0))(
  ( (tuple2!38097 (_1!22182 Token!10758) (_2!22182 List!38341)) )
))
(declare-fun lt!1254534 () tuple2!38096)

(declare-fun matchR!5024 (Regex!10455 List!38341) Bool)

(declare-fun list!14120 (BalanceConc!22932) List!38341)

(declare-fun charsOf!3710 (Token!10758) BalanceConc!22932)

(assert (=> b!3627842 (= res!1468882 (matchR!5024 (regex!5696 lt!1254531) (list!14120 (charsOf!3710 (_1!22182 lt!1254534)))))))

(declare-datatypes ((Option!8022 0))(
  ( (None!8021) (Some!8021 (v!37807 Rule!11192)) )
))
(declare-fun lt!1254509 () Option!8022)

(declare-fun get!12480 (Option!8022) Rule!11192)

(assert (=> b!3627842 (= lt!1254531 (get!12480 lt!1254509))))

(declare-fun b!3627843 () Bool)

(declare-datatypes ((Unit!54988 0))(
  ( (Unit!54989) )
))
(declare-fun e!2245595 () Unit!54988)

(declare-fun Unit!54990 () Unit!54988)

(assert (=> b!3627843 (= e!2245595 Unit!54990)))

(declare-fun lt!1254528 () Unit!54988)

(declare-fun rule!403 () Rule!11192)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!668 (Regex!10455 List!38341 C!21096) Unit!54988)

(assert (=> b!3627843 (= lt!1254528 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!668 (regex!5696 rule!403) lt!1254507 lt!1254521))))

(assert (=> b!3627843 false))

(declare-fun b!3627844 () Bool)

(declare-fun res!1468886 () Bool)

(declare-fun e!2245600 () Bool)

(assert (=> b!3627844 (=> res!1468886 e!2245600)))

(declare-fun anOtherTypeRule!33 () Rule!11192)

(declare-fun lt!1254512 () C!21096)

(declare-fun usedCharacters!910 (Regex!10455) List!38341)

(assert (=> b!3627844 (= res!1468886 (not (contains!7457 (usedCharacters!910 (regex!5696 anOtherTypeRule!33)) lt!1254512)))))

(declare-fun b!3627845 () Bool)

(declare-fun res!1468889 () Bool)

(assert (=> b!3627845 (=> res!1468889 e!2245600)))

(declare-datatypes ((List!38343 0))(
  ( (Nil!38219) (Cons!38219 (h!43639 Rule!11192) (t!294918 List!38343)) )
))
(declare-fun rules!3307 () List!38343)

(declare-fun sepAndNonSepRulesDisjointChars!1866 (List!38343 List!38343) Bool)

(assert (=> b!3627845 (= res!1468889 (not (sepAndNonSepRulesDisjointChars!1866 rules!3307 rules!3307)))))

(declare-fun b!3627846 () Bool)

(declare-fun res!1468867 () Bool)

(declare-fun e!2245609 () Bool)

(assert (=> b!3627846 (=> (not res!1468867) (not e!2245609))))

(declare-datatypes ((LexerInterface!5285 0))(
  ( (LexerInterfaceExt!5282 (__x!24070 Int)) (Lexer!5283) )
))
(declare-fun thiss!23823 () LexerInterface!5285)

(declare-fun rulesInvariant!4682 (LexerInterface!5285 List!38343) Bool)

(assert (=> b!3627846 (= res!1468867 (rulesInvariant!4682 thiss!23823 rules!3307))))

(declare-fun b!3627847 () Bool)

(declare-fun res!1468879 () Bool)

(declare-fun e!2245598 () Bool)

(assert (=> b!3627847 (=> (not res!1468879) (not e!2245598))))

(declare-fun lt!1254533 () tuple2!38096)

(declare-fun isEmpty!22600 (List!38341) Bool)

(assert (=> b!3627847 (= res!1468879 (isEmpty!22600 (_2!22182 lt!1254533)))))

(declare-fun b!3627848 () Bool)

(declare-fun e!2245611 () Bool)

(declare-fun e!2245602 () Bool)

(declare-fun tp!1107651 () Bool)

(assert (=> b!3627848 (= e!2245611 (and e!2245602 tp!1107651))))

(declare-fun b!3627849 () Bool)

(declare-fun res!1468868 () Bool)

(assert (=> b!3627849 (=> (not res!1468868) (not e!2245609))))

(declare-fun isEmpty!22601 (List!38343) Bool)

(assert (=> b!3627849 (= res!1468868 (not (isEmpty!22601 rules!3307)))))

(declare-fun res!1468873 () Bool)

(assert (=> start!338182 (=> (not res!1468873) (not e!2245609))))

(get-info :version)

(assert (=> start!338182 (= res!1468873 ((_ is Lexer!5283) thiss!23823))))

(assert (=> start!338182 e!2245609))

(assert (=> start!338182 e!2245611))

(declare-fun e!2245597 () Bool)

(assert (=> start!338182 e!2245597))

(assert (=> start!338182 true))

(declare-fun token!511 () Token!10758)

(declare-fun e!2245614 () Bool)

(declare-fun inv!51627 (Token!10758) Bool)

(assert (=> start!338182 (and (inv!51627 token!511) e!2245614)))

(declare-fun e!2245596 () Bool)

(assert (=> start!338182 e!2245596))

(declare-fun e!2245592 () Bool)

(assert (=> start!338182 e!2245592))

(declare-fun e!2245617 () Bool)

(assert (=> b!3627850 (= e!2245617 (and tp!1107646 tp!1107656))))

(declare-fun b!3627851 () Bool)

(declare-fun res!1468888 () Bool)

(assert (=> b!3627851 (=> (not res!1468888) (not e!2245609))))

(declare-fun contains!7458 (List!38343 Rule!11192) Bool)

(assert (=> b!3627851 (= res!1468888 (contains!7458 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3627852 () Bool)

(declare-fun e!2245618 () Bool)

(assert (=> b!3627852 (= e!2245618 e!2245598)))

(declare-fun res!1468874 () Bool)

(assert (=> b!3627852 (=> (not res!1468874) (not e!2245598))))

(assert (=> b!3627852 (= res!1468874 (= (_1!22182 lt!1254533) token!511))))

(declare-datatypes ((Option!8023 0))(
  ( (None!8022) (Some!8022 (v!37808 tuple2!38096)) )
))
(declare-fun lt!1254517 () Option!8023)

(declare-fun get!12481 (Option!8023) tuple2!38096)

(assert (=> b!3627852 (= lt!1254533 (get!12481 lt!1254517))))

(declare-fun b!3627853 () Bool)

(declare-fun e!2245613 () Bool)

(assert (=> b!3627853 (= e!2245600 e!2245613)))

(declare-fun res!1468871 () Bool)

(assert (=> b!3627853 (=> res!1468871 e!2245613)))

(declare-fun lt!1254522 () List!38341)

(declare-fun lt!1254515 () List!38341)

(declare-fun isPrefix!3059 (List!38341 List!38341) Bool)

(assert (=> b!3627853 (= res!1468871 (not (isPrefix!3059 lt!1254522 lt!1254515)))))

(declare-fun ++!9512 (List!38341 List!38341) List!38341)

(assert (=> b!3627853 (isPrefix!3059 lt!1254522 (++!9512 lt!1254522 (_2!22182 lt!1254534)))))

(declare-fun lt!1254513 () Unit!54988)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1980 (List!38341 List!38341) Unit!54988)

(assert (=> b!3627853 (= lt!1254513 (lemmaConcatTwoListThenFirstIsPrefix!1980 lt!1254522 (_2!22182 lt!1254534)))))

(declare-fun lt!1254523 () BalanceConc!22932)

(assert (=> b!3627853 (= lt!1254522 (list!14120 lt!1254523))))

(assert (=> b!3627853 (= lt!1254523 (charsOf!3710 (_1!22182 lt!1254534)))))

(assert (=> b!3627853 e!2245601))

(declare-fun res!1468878 () Bool)

(assert (=> b!3627853 (=> (not res!1468878) (not e!2245601))))

(declare-fun isDefined!6254 (Option!8022) Bool)

(assert (=> b!3627853 (= res!1468878 (isDefined!6254 lt!1254509))))

(declare-fun getRuleFromTag!1302 (LexerInterface!5285 List!38343 String!42964) Option!8022)

(assert (=> b!3627853 (= lt!1254509 (getRuleFromTag!1302 thiss!23823 rules!3307 (tag!6424 (rule!8466 (_1!22182 lt!1254534)))))))

(declare-fun lt!1254527 () Unit!54988)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1302 (LexerInterface!5285 List!38343 List!38341 Token!10758) Unit!54988)

(assert (=> b!3627853 (= lt!1254527 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1302 thiss!23823 rules!3307 lt!1254515 (_1!22182 lt!1254534)))))

(declare-fun lt!1254516 () Option!8023)

(assert (=> b!3627853 (= lt!1254534 (get!12481 lt!1254516))))

(declare-fun suffix!1395 () List!38341)

(declare-fun lt!1254514 () Unit!54988)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!965 (LexerInterface!5285 List!38343 List!38341 List!38341) Unit!54988)

(assert (=> b!3627853 (= lt!1254514 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!965 thiss!23823 rules!3307 lt!1254507 suffix!1395))))

(declare-fun maxPrefix!2819 (LexerInterface!5285 List!38343 List!38341) Option!8023)

(assert (=> b!3627853 (= lt!1254516 (maxPrefix!2819 thiss!23823 rules!3307 lt!1254515))))

(assert (=> b!3627853 (isPrefix!3059 lt!1254507 lt!1254515)))

(declare-fun lt!1254532 () Unit!54988)

(assert (=> b!3627853 (= lt!1254532 (lemmaConcatTwoListThenFirstIsPrefix!1980 lt!1254507 suffix!1395))))

(assert (=> b!3627853 (= lt!1254515 (++!9512 lt!1254507 suffix!1395))))

(declare-fun b!3627854 () Bool)

(declare-fun tp_is_empty!17993 () Bool)

(declare-fun tp!1107649 () Bool)

(assert (=> b!3627854 (= e!2245597 (and tp_is_empty!17993 tp!1107649))))

(declare-fun e!2245591 () Bool)

(declare-fun b!3627855 () Bool)

(declare-fun tp!1107652 () Bool)

(declare-fun inv!51624 (String!42964) Bool)

(declare-fun inv!51628 (TokenValueInjection!11280) Bool)

(assert (=> b!3627855 (= e!2245602 (and tp!1107652 (inv!51624 (tag!6424 (h!43639 rules!3307))) (inv!51628 (transformation!5696 (h!43639 rules!3307))) e!2245591))))

(declare-fun b!3627856 () Bool)

(declare-fun res!1468887 () Bool)

(assert (=> b!3627856 (=> (not res!1468887) (not e!2245609))))

(assert (=> b!3627856 (= res!1468887 (contains!7458 rules!3307 rule!403))))

(declare-fun e!2245606 () Bool)

(assert (=> b!3627857 (= e!2245606 (and tp!1107654 tp!1107655))))

(declare-fun b!3627858 () Bool)

(declare-fun e!2245616 () Bool)

(assert (=> b!3627858 (= e!2245616 e!2245599)))

(declare-fun res!1468884 () Bool)

(assert (=> b!3627858 (=> res!1468884 e!2245599)))

(assert (=> b!3627858 (= res!1468884 (or (isSeparator!5696 rule!403) (not (isSeparator!5696 (rule!8466 (_1!22182 lt!1254534))))))))

(declare-fun lt!1254525 () Unit!54988)

(assert (=> b!3627858 (= lt!1254525 e!2245595)))

(declare-fun c!627653 () Bool)

(declare-fun lt!1254524 () Bool)

(assert (=> b!3627858 (= c!627653 (not lt!1254524))))

(declare-fun lt!1254519 () List!38341)

(assert (=> b!3627858 (= lt!1254524 (contains!7457 lt!1254519 lt!1254521))))

(declare-fun head!7676 (List!38341) C!21096)

(assert (=> b!3627858 (= lt!1254521 (head!7676 lt!1254522))))

(declare-fun b!3627859 () Bool)

(declare-fun e!2245612 () Bool)

(assert (=> b!3627859 (= e!2245598 (not e!2245612))))

(declare-fun res!1468883 () Bool)

(assert (=> b!3627859 (=> res!1468883 e!2245612)))

(assert (=> b!3627859 (= res!1468883 (not (matchR!5024 (regex!5696 rule!403) lt!1254507)))))

(declare-fun ruleValid!1961 (LexerInterface!5285 Rule!11192) Bool)

(assert (=> b!3627859 (ruleValid!1961 thiss!23823 rule!403)))

(declare-fun lt!1254530 () Unit!54988)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1116 (LexerInterface!5285 Rule!11192 List!38343) Unit!54988)

(assert (=> b!3627859 (= lt!1254530 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1116 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3627860 () Bool)

(declare-fun res!1468876 () Bool)

(assert (=> b!3627860 (=> (not res!1468876) (not e!2245598))))

(assert (=> b!3627860 (= res!1468876 (= (rule!8466 token!511) rule!403))))

(declare-fun b!3627861 () Bool)

(assert (=> b!3627861 (= e!2245609 e!2245618)))

(declare-fun res!1468875 () Bool)

(assert (=> b!3627861 (=> (not res!1468875) (not e!2245618))))

(declare-fun isDefined!6255 (Option!8023) Bool)

(assert (=> b!3627861 (= res!1468875 (isDefined!6255 lt!1254517))))

(assert (=> b!3627861 (= lt!1254517 (maxPrefix!2819 thiss!23823 rules!3307 lt!1254507))))

(assert (=> b!3627861 (= lt!1254507 (list!14120 (charsOf!3710 token!511)))))

(declare-fun b!3627862 () Bool)

(declare-fun res!1468885 () Bool)

(assert (=> b!3627862 (=> (not res!1468885) (not e!2245609))))

(assert (=> b!3627862 (= res!1468885 (not (= (isSeparator!5696 anOtherTypeRule!33) (isSeparator!5696 rule!403))))))

(declare-fun b!3627863 () Bool)

(assert (=> b!3627863 (= e!2245599 lt!1254524)))

(declare-fun tp!1107644 () Bool)

(declare-fun b!3627864 () Bool)

(assert (=> b!3627864 (= e!2245596 (and tp!1107644 (inv!51624 (tag!6424 rule!403)) (inv!51628 (transformation!5696 rule!403)) e!2245617))))

(assert (=> b!3627865 (= e!2245591 (and tp!1107642 tp!1107647))))

(declare-fun b!3627866 () Bool)

(declare-fun res!1468869 () Bool)

(assert (=> b!3627866 (=> res!1468869 e!2245612)))

(assert (=> b!3627866 (= res!1468869 (isEmpty!22600 suffix!1395))))

(declare-fun b!3627867 () Bool)

(declare-fun e!2245605 () Bool)

(assert (=> b!3627867 (= e!2245605 e!2245616)))

(declare-fun res!1468881 () Bool)

(assert (=> b!3627867 (=> res!1468881 e!2245616)))

(declare-fun lt!1254508 () List!38341)

(declare-fun lt!1254535 () Option!8023)

(assert (=> b!3627867 (= res!1468881 (or (not (= lt!1254508 (_2!22182 lt!1254534))) (not (= lt!1254535 (Some!8022 (tuple2!38097 (_1!22182 lt!1254534) lt!1254508))))))))

(assert (=> b!3627867 (= (_2!22182 lt!1254534) lt!1254508)))

(declare-fun lt!1254518 () Unit!54988)

(declare-fun lemmaSamePrefixThenSameSuffix!1406 (List!38341 List!38341 List!38341 List!38341 List!38341) Unit!54988)

(assert (=> b!3627867 (= lt!1254518 (lemmaSamePrefixThenSameSuffix!1406 lt!1254522 (_2!22182 lt!1254534) lt!1254522 lt!1254508 lt!1254515))))

(declare-fun getSuffix!1626 (List!38341 List!38341) List!38341)

(assert (=> b!3627867 (= lt!1254508 (getSuffix!1626 lt!1254515 lt!1254522))))

(declare-fun lt!1254529 () Int)

(declare-fun lt!1254536 () TokenValue!5926)

(assert (=> b!3627867 (= lt!1254535 (Some!8022 (tuple2!38097 (Token!10759 lt!1254536 (rule!8466 (_1!22182 lt!1254534)) lt!1254529 lt!1254522) (_2!22182 lt!1254534))))))

(declare-fun maxPrefixOneRule!1959 (LexerInterface!5285 Rule!11192 List!38341) Option!8023)

(assert (=> b!3627867 (= lt!1254535 (maxPrefixOneRule!1959 thiss!23823 (rule!8466 (_1!22182 lt!1254534)) lt!1254515))))

(declare-fun size!29158 (List!38341) Int)

(assert (=> b!3627867 (= lt!1254529 (size!29158 lt!1254522))))

(declare-fun apply!9198 (TokenValueInjection!11280 BalanceConc!22932) TokenValue!5926)

(declare-fun seqFromList!4245 (List!38341) BalanceConc!22932)

(assert (=> b!3627867 (= lt!1254536 (apply!9198 (transformation!5696 (rule!8466 (_1!22182 lt!1254534))) (seqFromList!4245 lt!1254522)))))

(declare-fun lt!1254526 () Unit!54988)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1027 (LexerInterface!5285 List!38343 List!38341 List!38341 List!38341 Rule!11192) Unit!54988)

(assert (=> b!3627867 (= lt!1254526 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1027 thiss!23823 rules!3307 lt!1254522 lt!1254515 (_2!22182 lt!1254534) (rule!8466 (_1!22182 lt!1254534))))))

(declare-fun b!3627868 () Bool)

(assert (=> b!3627868 (= e!2245612 e!2245600)))

(declare-fun res!1468870 () Bool)

(assert (=> b!3627868 (=> res!1468870 e!2245600)))

(assert (=> b!3627868 (= res!1468870 (contains!7457 lt!1254519 lt!1254512))))

(assert (=> b!3627868 (= lt!1254512 (head!7676 suffix!1395))))

(assert (=> b!3627868 (= lt!1254519 (usedCharacters!910 (regex!5696 rule!403)))))

(declare-fun e!2245594 () Bool)

(declare-fun tp!1107650 () Bool)

(declare-fun b!3627869 () Bool)

(declare-fun inv!21 (TokenValue!5926) Bool)

(assert (=> b!3627869 (= e!2245614 (and (inv!21 (value!182796 token!511)) e!2245594 tp!1107650))))

(declare-fun b!3627870 () Bool)

(declare-fun tp!1107648 () Bool)

(assert (=> b!3627870 (= e!2245594 (and tp!1107648 (inv!51624 (tag!6424 (rule!8466 token!511))) (inv!51628 (transformation!5696 (rule!8466 token!511))) e!2245606))))

(declare-fun e!2245607 () Bool)

(assert (=> b!3627871 (= e!2245607 (and tp!1107645 tp!1107653))))

(declare-fun b!3627872 () Bool)

(declare-fun res!1468877 () Bool)

(assert (=> b!3627872 (=> res!1468877 e!2245613)))

(assert (=> b!3627872 (= res!1468877 (not (matchR!5024 (regex!5696 (rule!8466 (_1!22182 lt!1254534))) lt!1254522)))))

(declare-fun b!3627873 () Bool)

(assert (=> b!3627873 (= e!2245613 e!2245605)))

(declare-fun res!1468872 () Bool)

(assert (=> b!3627873 (=> res!1468872 e!2245605)))

(declare-fun size!29159 (BalanceConc!22932) Int)

(assert (=> b!3627873 (= res!1468872 (not (= lt!1254516 (Some!8022 (tuple2!38097 (Token!10759 (apply!9198 (transformation!5696 (rule!8466 (_1!22182 lt!1254534))) lt!1254523) (rule!8466 (_1!22182 lt!1254534)) (size!29159 lt!1254523) lt!1254522) (_2!22182 lt!1254534))))))))

(declare-fun lt!1254510 () Unit!54988)

(declare-fun lemmaCharactersSize!743 (Token!10758) Unit!54988)

(assert (=> b!3627873 (= lt!1254510 (lemmaCharactersSize!743 (_1!22182 lt!1254534)))))

(declare-fun lt!1254511 () Unit!54988)

(declare-fun lemmaEqSameImage!881 (TokenValueInjection!11280 BalanceConc!22932 BalanceConc!22932) Unit!54988)

(assert (=> b!3627873 (= lt!1254511 (lemmaEqSameImage!881 (transformation!5696 (rule!8466 (_1!22182 lt!1254534))) lt!1254523 (seqFromList!4245 (originalCharacters!6410 (_1!22182 lt!1254534)))))))

(declare-fun lt!1254520 () Unit!54988)

(declare-fun lemmaSemiInverse!1447 (TokenValueInjection!11280 BalanceConc!22932) Unit!54988)

(assert (=> b!3627873 (= lt!1254520 (lemmaSemiInverse!1447 (transformation!5696 (rule!8466 (_1!22182 lt!1254534))) lt!1254523))))

(declare-fun b!3627874 () Bool)

(declare-fun Unit!54991 () Unit!54988)

(assert (=> b!3627874 (= e!2245595 Unit!54991)))

(declare-fun b!3627875 () Bool)

(declare-fun tp!1107643 () Bool)

(assert (=> b!3627875 (= e!2245592 (and tp!1107643 (inv!51624 (tag!6424 anOtherTypeRule!33)) (inv!51628 (transformation!5696 anOtherTypeRule!33)) e!2245607))))

(declare-fun b!3627876 () Bool)

(assert (=> b!3627876 (= e!2245604 (= (rule!8466 (_1!22182 lt!1254534)) lt!1254531))))

(assert (= (and start!338182 res!1468873) b!3627849))

(assert (= (and b!3627849 res!1468868) b!3627846))

(assert (= (and b!3627846 res!1468867) b!3627856))

(assert (= (and b!3627856 res!1468887) b!3627851))

(assert (= (and b!3627851 res!1468888) b!3627862))

(assert (= (and b!3627862 res!1468885) b!3627861))

(assert (= (and b!3627861 res!1468875) b!3627852))

(assert (= (and b!3627852 res!1468874) b!3627847))

(assert (= (and b!3627847 res!1468879) b!3627860))

(assert (= (and b!3627860 res!1468876) b!3627859))

(assert (= (and b!3627859 (not res!1468883)) b!3627866))

(assert (= (and b!3627866 (not res!1468869)) b!3627868))

(assert (= (and b!3627868 (not res!1468870)) b!3627844))

(assert (= (and b!3627844 (not res!1468886)) b!3627845))

(assert (= (and b!3627845 (not res!1468889)) b!3627853))

(assert (= (and b!3627853 res!1468878) b!3627842))

(assert (= (and b!3627842 res!1468882) b!3627876))

(assert (= (and b!3627853 (not res!1468871)) b!3627872))

(assert (= (and b!3627872 (not res!1468877)) b!3627873))

(assert (= (and b!3627873 (not res!1468872)) b!3627867))

(assert (= (and b!3627867 (not res!1468881)) b!3627858))

(assert (= (and b!3627858 c!627653) b!3627843))

(assert (= (and b!3627858 (not c!627653)) b!3627874))

(assert (= (and b!3627858 (not res!1468884)) b!3627841))

(assert (= (and b!3627841 (not res!1468880)) b!3627863))

(assert (= b!3627855 b!3627865))

(assert (= b!3627848 b!3627855))

(assert (= (and start!338182 ((_ is Cons!38219) rules!3307)) b!3627848))

(assert (= (and start!338182 ((_ is Cons!38217) suffix!1395)) b!3627854))

(assert (= b!3627870 b!3627857))

(assert (= b!3627869 b!3627870))

(assert (= start!338182 b!3627869))

(assert (= b!3627864 b!3627850))

(assert (= start!338182 b!3627864))

(assert (= b!3627875 b!3627871))

(assert (= start!338182 b!3627875))

(declare-fun m!4128781 () Bool)

(assert (=> b!3627859 m!4128781))

(declare-fun m!4128783 () Bool)

(assert (=> b!3627859 m!4128783))

(declare-fun m!4128785 () Bool)

(assert (=> b!3627859 m!4128785))

(declare-fun m!4128787 () Bool)

(assert (=> b!3627846 m!4128787))

(declare-fun m!4128789 () Bool)

(assert (=> b!3627873 m!4128789))

(declare-fun m!4128791 () Bool)

(assert (=> b!3627873 m!4128791))

(declare-fun m!4128793 () Bool)

(assert (=> b!3627873 m!4128793))

(declare-fun m!4128795 () Bool)

(assert (=> b!3627873 m!4128795))

(declare-fun m!4128797 () Bool)

(assert (=> b!3627873 m!4128797))

(declare-fun m!4128799 () Bool)

(assert (=> b!3627873 m!4128799))

(assert (=> b!3627873 m!4128793))

(declare-fun m!4128801 () Bool)

(assert (=> b!3627844 m!4128801))

(assert (=> b!3627844 m!4128801))

(declare-fun m!4128803 () Bool)

(assert (=> b!3627844 m!4128803))

(declare-fun m!4128805 () Bool)

(assert (=> b!3627843 m!4128805))

(declare-fun m!4128807 () Bool)

(assert (=> b!3627866 m!4128807))

(declare-fun m!4128809 () Bool)

(assert (=> start!338182 m!4128809))

(declare-fun m!4128811 () Bool)

(assert (=> b!3627864 m!4128811))

(declare-fun m!4128813 () Bool)

(assert (=> b!3627864 m!4128813))

(declare-fun m!4128815 () Bool)

(assert (=> b!3627870 m!4128815))

(declare-fun m!4128817 () Bool)

(assert (=> b!3627870 m!4128817))

(declare-fun m!4128819 () Bool)

(assert (=> b!3627849 m!4128819))

(declare-fun m!4128821 () Bool)

(assert (=> b!3627851 m!4128821))

(declare-fun m!4128823 () Bool)

(assert (=> b!3627869 m!4128823))

(declare-fun m!4128825 () Bool)

(assert (=> b!3627875 m!4128825))

(declare-fun m!4128827 () Bool)

(assert (=> b!3627875 m!4128827))

(declare-fun m!4128829 () Bool)

(assert (=> b!3627872 m!4128829))

(declare-fun m!4128831 () Bool)

(assert (=> b!3627841 m!4128831))

(declare-fun m!4128833 () Bool)

(assert (=> b!3627868 m!4128833))

(declare-fun m!4128835 () Bool)

(assert (=> b!3627868 m!4128835))

(declare-fun m!4128837 () Bool)

(assert (=> b!3627868 m!4128837))

(declare-fun m!4128839 () Bool)

(assert (=> b!3627858 m!4128839))

(declare-fun m!4128841 () Bool)

(assert (=> b!3627858 m!4128841))

(declare-fun m!4128843 () Bool)

(assert (=> b!3627847 m!4128843))

(declare-fun m!4128845 () Bool)

(assert (=> b!3627861 m!4128845))

(declare-fun m!4128847 () Bool)

(assert (=> b!3627861 m!4128847))

(declare-fun m!4128849 () Bool)

(assert (=> b!3627861 m!4128849))

(assert (=> b!3627861 m!4128849))

(declare-fun m!4128851 () Bool)

(assert (=> b!3627861 m!4128851))

(declare-fun m!4128853 () Bool)

(assert (=> b!3627845 m!4128853))

(declare-fun m!4128855 () Bool)

(assert (=> b!3627842 m!4128855))

(assert (=> b!3627842 m!4128855))

(declare-fun m!4128857 () Bool)

(assert (=> b!3627842 m!4128857))

(assert (=> b!3627842 m!4128857))

(declare-fun m!4128859 () Bool)

(assert (=> b!3627842 m!4128859))

(declare-fun m!4128861 () Bool)

(assert (=> b!3627842 m!4128861))

(declare-fun m!4128863 () Bool)

(assert (=> b!3627856 m!4128863))

(declare-fun m!4128865 () Bool)

(assert (=> b!3627853 m!4128865))

(declare-fun m!4128867 () Bool)

(assert (=> b!3627853 m!4128867))

(declare-fun m!4128869 () Bool)

(assert (=> b!3627853 m!4128869))

(declare-fun m!4128871 () Bool)

(assert (=> b!3627853 m!4128871))

(declare-fun m!4128873 () Bool)

(assert (=> b!3627853 m!4128873))

(declare-fun m!4128875 () Bool)

(assert (=> b!3627853 m!4128875))

(declare-fun m!4128877 () Bool)

(assert (=> b!3627853 m!4128877))

(declare-fun m!4128879 () Bool)

(assert (=> b!3627853 m!4128879))

(declare-fun m!4128881 () Bool)

(assert (=> b!3627853 m!4128881))

(declare-fun m!4128883 () Bool)

(assert (=> b!3627853 m!4128883))

(assert (=> b!3627853 m!4128875))

(declare-fun m!4128885 () Bool)

(assert (=> b!3627853 m!4128885))

(assert (=> b!3627853 m!4128855))

(declare-fun m!4128887 () Bool)

(assert (=> b!3627853 m!4128887))

(declare-fun m!4128889 () Bool)

(assert (=> b!3627853 m!4128889))

(declare-fun m!4128891 () Bool)

(assert (=> b!3627853 m!4128891))

(declare-fun m!4128893 () Bool)

(assert (=> b!3627867 m!4128893))

(declare-fun m!4128895 () Bool)

(assert (=> b!3627867 m!4128895))

(declare-fun m!4128897 () Bool)

(assert (=> b!3627867 m!4128897))

(declare-fun m!4128899 () Bool)

(assert (=> b!3627867 m!4128899))

(declare-fun m!4128901 () Bool)

(assert (=> b!3627867 m!4128901))

(assert (=> b!3627867 m!4128901))

(declare-fun m!4128903 () Bool)

(assert (=> b!3627867 m!4128903))

(declare-fun m!4128905 () Bool)

(assert (=> b!3627867 m!4128905))

(declare-fun m!4128907 () Bool)

(assert (=> b!3627855 m!4128907))

(declare-fun m!4128909 () Bool)

(assert (=> b!3627855 m!4128909))

(declare-fun m!4128911 () Bool)

(assert (=> b!3627852 m!4128911))

(check-sat (not b_next!95473) (not b_next!95467) (not b!3627841) (not b!3627866) (not b!3627858) (not b!3627851) (not b!3627861) b_and!265949 b_and!265941 (not b_next!95469) (not b_next!95479) (not b!3627869) (not b!3627844) (not b!3627859) tp_is_empty!17993 (not b!3627853) (not b!3627845) (not start!338182) (not b_next!95477) b_and!265945 (not b_next!95475) (not b!3627867) (not b!3627846) (not b!3627875) (not b_next!95471) (not b!3627872) b_and!265937 b_and!265935 (not b!3627864) b_and!265939 (not b!3627868) (not b!3627873) (not b!3627843) (not b!3627848) (not b!3627842) (not b!3627855) (not b_next!95465) (not b!3627849) (not b!3627854) (not b!3627870) (not b!3627856) (not b!3627847) b_and!265943 b_and!265947 (not b!3627852))
(check-sat (not b_next!95473) (not b_next!95477) (not b_next!95467) (not b_next!95471) b_and!265937 b_and!265949 b_and!265941 (not b_next!95469) (not b_next!95479) (not b_next!95465) b_and!265943 b_and!265947 b_and!265945 (not b_next!95475) b_and!265935 b_and!265939)
