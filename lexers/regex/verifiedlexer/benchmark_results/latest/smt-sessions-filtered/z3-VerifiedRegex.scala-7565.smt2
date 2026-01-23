; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399174 () Bool)

(assert start!399174)

(declare-fun b!4184681 () Bool)

(declare-fun b_free!121647 () Bool)

(declare-fun b_next!122351 () Bool)

(assert (=> b!4184681 (= b_free!121647 (not b_next!122351))))

(declare-fun tp!1278873 () Bool)

(declare-fun b_and!327641 () Bool)

(assert (=> b!4184681 (= tp!1278873 b_and!327641)))

(declare-fun b_free!121649 () Bool)

(declare-fun b_next!122353 () Bool)

(assert (=> b!4184681 (= b_free!121649 (not b_next!122353))))

(declare-fun tp!1278878 () Bool)

(declare-fun b_and!327643 () Bool)

(assert (=> b!4184681 (= tp!1278878 b_and!327643)))

(declare-fun b!4184688 () Bool)

(declare-fun b_free!121651 () Bool)

(declare-fun b_next!122355 () Bool)

(assert (=> b!4184688 (= b_free!121651 (not b_next!122355))))

(declare-fun tp!1278877 () Bool)

(declare-fun b_and!327645 () Bool)

(assert (=> b!4184688 (= tp!1278877 b_and!327645)))

(declare-fun b_free!121653 () Bool)

(declare-fun b_next!122357 () Bool)

(assert (=> b!4184688 (= b_free!121653 (not b_next!122357))))

(declare-fun tp!1278871 () Bool)

(declare-fun b_and!327647 () Bool)

(assert (=> b!4184688 (= tp!1278871 b_and!327647)))

(declare-fun b!4184698 () Bool)

(declare-fun b_free!121655 () Bool)

(declare-fun b_next!122359 () Bool)

(assert (=> b!4184698 (= b_free!121655 (not b_next!122359))))

(declare-fun tp!1278866 () Bool)

(declare-fun b_and!327649 () Bool)

(assert (=> b!4184698 (= tp!1278866 b_and!327649)))

(declare-fun b_free!121657 () Bool)

(declare-fun b_next!122361 () Bool)

(assert (=> b!4184698 (= b_free!121657 (not b_next!122361))))

(declare-fun tp!1278869 () Bool)

(declare-fun b_and!327651 () Bool)

(assert (=> b!4184698 (= tp!1278869 b_and!327651)))

(declare-fun b!4184675 () Bool)

(declare-fun res!1716190 () Bool)

(declare-fun e!2597850 () Bool)

(assert (=> b!4184675 (=> (not res!1716190) (not e!2597850))))

(declare-datatypes ((C!25292 0))(
  ( (C!25293 (val!14808 Int)) )
))
(declare-datatypes ((List!46057 0))(
  ( (Nil!45933) (Cons!45933 (h!51353 C!25292) (t!345508 List!46057)) )
))
(declare-fun p!2959 () List!46057)

(declare-fun input!3342 () List!46057)

(declare-fun isPrefix!4503 (List!46057 List!46057) Bool)

(assert (=> b!4184675 (= res!1716190 (isPrefix!4503 p!2959 input!3342))))

(declare-fun b!4184676 () Bool)

(declare-fun res!1716194 () Bool)

(assert (=> b!4184676 (=> (not res!1716194) (not e!2597850))))

(declare-datatypes ((List!46058 0))(
  ( (Nil!45934) (Cons!45934 (h!51354 (_ BitVec 16)) (t!345509 List!46058)) )
))
(declare-datatypes ((TokenValue!7876 0))(
  ( (FloatLiteralValue!15752 (text!55577 List!46058)) (TokenValueExt!7875 (__x!27973 Int)) (Broken!39380 (value!238417 List!46058)) (Object!7999) (End!7876) (Def!7876) (Underscore!7876) (Match!7876) (Else!7876) (Error!7876) (Case!7876) (If!7876) (Extends!7876) (Abstract!7876) (Class!7876) (Val!7876) (DelimiterValue!15752 (del!7936 List!46058)) (KeywordValue!7882 (value!238418 List!46058)) (CommentValue!15752 (value!238419 List!46058)) (WhitespaceValue!15752 (value!238420 List!46058)) (IndentationValue!7876 (value!238421 List!46058)) (String!53245) (Int32!7876) (Broken!39381 (value!238422 List!46058)) (Boolean!7877) (Unit!65028) (OperatorValue!7879 (op!7936 List!46058)) (IdentifierValue!15752 (value!238423 List!46058)) (IdentifierValue!15753 (value!238424 List!46058)) (WhitespaceValue!15753 (value!238425 List!46058)) (True!15752) (False!15752) (Broken!39382 (value!238426 List!46058)) (Broken!39383 (value!238427 List!46058)) (True!15753) (RightBrace!7876) (RightBracket!7876) (Colon!7876) (Null!7876) (Comma!7876) (LeftBracket!7876) (False!15753) (LeftBrace!7876) (ImaginaryLiteralValue!7876 (text!55578 List!46058)) (StringLiteralValue!23628 (value!238428 List!46058)) (EOFValue!7876 (value!238429 List!46058)) (IdentValue!7876 (value!238430 List!46058)) (DelimiterValue!15753 (value!238431 List!46058)) (DedentValue!7876 (value!238432 List!46058)) (NewLineValue!7876 (value!238433 List!46058)) (IntegerValue!23628 (value!238434 (_ BitVec 32)) (text!55579 List!46058)) (IntegerValue!23629 (value!238435 Int) (text!55580 List!46058)) (Times!7876) (Or!7876) (Equal!7876) (Minus!7876) (Broken!39384 (value!238436 List!46058)) (And!7876) (Div!7876) (LessEqual!7876) (Mod!7876) (Concat!20427) (Not!7876) (Plus!7876) (SpaceValue!7876 (value!238437 List!46058)) (IntegerValue!23630 (value!238438 Int) (text!55581 List!46058)) (StringLiteralValue!23629 (text!55582 List!46058)) (FloatLiteralValue!15753 (text!55583 List!46058)) (BytesLiteralValue!7876 (value!238439 List!46058)) (CommentValue!15753 (value!238440 List!46058)) (StringLiteralValue!23630 (value!238441 List!46058)) (ErrorTokenValue!7876 (msg!7937 List!46058)) )
))
(declare-datatypes ((String!53246 0))(
  ( (String!53247 (value!238442 String)) )
))
(declare-datatypes ((IArray!27719 0))(
  ( (IArray!27720 (innerList!13917 List!46057)) )
))
(declare-datatypes ((Conc!13857 0))(
  ( (Node!13857 (left!34218 Conc!13857) (right!34548 Conc!13857) (csize!27944 Int) (cheight!14068 Int)) (Leaf!21423 (xs!17163 IArray!27719) (csize!27945 Int)) (Empty!13857) )
))
(declare-datatypes ((BalanceConc!27308 0))(
  ( (BalanceConc!27309 (c!714478 Conc!13857)) )
))
(declare-datatypes ((Regex!12551 0))(
  ( (ElementMatch!12551 (c!714479 C!25292)) (Concat!20428 (regOne!25614 Regex!12551) (regTwo!25614 Regex!12551)) (EmptyExpr!12551) (Star!12551 (reg!12880 Regex!12551)) (EmptyLang!12551) (Union!12551 (regOne!25615 Regex!12551) (regTwo!25615 Regex!12551)) )
))
(declare-datatypes ((TokenValueInjection!15180 0))(
  ( (TokenValueInjection!15181 (toValue!10342 Int) (toChars!10201 Int)) )
))
(declare-datatypes ((Rule!15092 0))(
  ( (Rule!15093 (regex!7646 Regex!12551) (tag!8510 String!53246) (isSeparator!7646 Bool) (transformation!7646 TokenValueInjection!15180)) )
))
(declare-fun r!4142 () Rule!15092)

(declare-fun matchR!6290 (Regex!12551 List!46057) Bool)

(assert (=> b!4184676 (= res!1716194 (matchR!6290 (regex!7646 r!4142) p!2959))))

(declare-fun b!4184677 () Bool)

(declare-fun res!1716183 () Bool)

(assert (=> b!4184677 (=> (not res!1716183) (not e!2597850))))

(declare-fun validRegex!5668 (Regex!12551) Bool)

(assert (=> b!4184677 (= res!1716183 (validRegex!5668 (regex!7646 r!4142)))))

(declare-fun b!4184678 () Bool)

(declare-fun e!2597834 () Bool)

(declare-fun e!2597838 () Bool)

(assert (=> b!4184678 (= e!2597834 e!2597838)))

(declare-fun res!1716195 () Bool)

(assert (=> b!4184678 (=> res!1716195 e!2597838)))

(declare-datatypes ((Token!14006 0))(
  ( (Token!14007 (value!238443 TokenValue!7876) (rule!10714 Rule!15092) (size!33734 Int) (originalCharacters!8034 List!46057)) )
))
(declare-datatypes ((tuple2!43742 0))(
  ( (tuple2!43743 (_1!25005 Token!14006) (_2!25005 List!46057)) )
))
(declare-datatypes ((Option!9840 0))(
  ( (None!9839) (Some!9839 (v!40655 tuple2!43742)) )
))
(declare-fun lt!1490292 () Option!9840)

(declare-fun isEmpty!27182 (Option!9840) Bool)

(assert (=> b!4184678 (= res!1716195 (isEmpty!27182 lt!1490292))))

(declare-datatypes ((LexerInterface!7239 0))(
  ( (LexerInterfaceExt!7236 (__x!27974 Int)) (Lexer!7237) )
))
(declare-fun thiss!25986 () LexerInterface!7239)

(declare-fun rBis!167 () Rule!15092)

(declare-fun maxPrefixOneRule!3248 (LexerInterface!7239 Rule!15092 List!46057) Option!9840)

(assert (=> b!4184678 (= lt!1490292 (maxPrefixOneRule!3248 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!65029 0))(
  ( (Unit!65030) )
))
(declare-fun lt!1490303 () Unit!65029)

(declare-datatypes ((List!46059 0))(
  ( (Nil!45935) (Cons!45935 (h!51355 Rule!15092) (t!345510 List!46059)) )
))
(declare-fun rules!3843 () List!46059)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2370 (LexerInterface!7239 Rule!15092 List!46059) Unit!65029)

(assert (=> b!4184678 (= lt!1490303 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2370 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1490293 () Int)

(declare-fun size!33735 (List!46057) Int)

(assert (=> b!4184678 (<= lt!1490293 (size!33735 input!3342))))

(declare-fun lt!1490301 () Unit!65029)

(declare-fun pBis!107 () List!46057)

(declare-fun lemmaIsPrefixThenSmallerEqSize!533 (List!46057 List!46057) Unit!65029)

(assert (=> b!4184678 (= lt!1490301 (lemmaIsPrefixThenSmallerEqSize!533 pBis!107 input!3342))))

(declare-fun b!4184679 () Bool)

(declare-fun e!2597844 () Bool)

(declare-fun tp_is_empty!22065 () Bool)

(declare-fun tp!1278874 () Bool)

(assert (=> b!4184679 (= e!2597844 (and tp_is_empty!22065 tp!1278874))))

(declare-fun b!4184680 () Bool)

(declare-fun e!2597837 () Bool)

(assert (=> b!4184680 (= e!2597837 e!2597834)))

(declare-fun res!1716191 () Bool)

(assert (=> b!4184680 (=> res!1716191 e!2597834)))

(declare-fun lt!1490302 () Int)

(assert (=> b!4184680 (= res!1716191 (<= lt!1490293 lt!1490302))))

(assert (=> b!4184680 (= lt!1490293 (size!33735 pBis!107))))

(declare-fun e!2597843 () Bool)

(assert (=> b!4184681 (= e!2597843 (and tp!1278873 tp!1278878))))

(declare-fun b!4184682 () Bool)

(declare-fun res!1716193 () Bool)

(assert (=> b!4184682 (=> (not res!1716193) (not e!2597850))))

(declare-fun contains!9455 (List!46059 Rule!15092) Bool)

(assert (=> b!4184682 (= res!1716193 (contains!9455 rules!3843 r!4142))))

(declare-fun b!4184683 () Bool)

(declare-fun res!1716189 () Bool)

(assert (=> b!4184683 (=> (not res!1716189) (not e!2597850))))

(assert (=> b!4184683 (= res!1716189 (isPrefix!4503 pBis!107 input!3342))))

(declare-fun res!1716196 () Bool)

(assert (=> start!399174 (=> (not res!1716196) (not e!2597850))))

(get-info :version)

(assert (=> start!399174 (= res!1716196 ((_ is Lexer!7237) thiss!25986))))

(assert (=> start!399174 e!2597850))

(assert (=> start!399174 true))

(declare-fun e!2597836 () Bool)

(assert (=> start!399174 e!2597836))

(declare-fun e!2597841 () Bool)

(assert (=> start!399174 e!2597841))

(declare-fun e!2597842 () Bool)

(assert (=> start!399174 e!2597842))

(declare-fun e!2597846 () Bool)

(assert (=> start!399174 e!2597846))

(assert (=> start!399174 e!2597844))

(declare-fun e!2597833 () Bool)

(assert (=> start!399174 e!2597833))

(declare-fun b!4184684 () Bool)

(declare-fun tp!1278876 () Bool)

(declare-fun e!2597835 () Bool)

(declare-fun inv!60479 (String!53246) Bool)

(declare-fun inv!60481 (TokenValueInjection!15180) Bool)

(assert (=> b!4184684 (= e!2597836 (and tp!1278876 (inv!60479 (tag!8510 rBis!167)) (inv!60481 (transformation!7646 rBis!167)) e!2597835))))

(declare-fun b!4184685 () Bool)

(declare-fun res!1716197 () Bool)

(assert (=> b!4184685 (=> (not res!1716197) (not e!2597850))))

(assert (=> b!4184685 (= res!1716197 (contains!9455 rules!3843 rBis!167))))

(declare-fun b!4184686 () Bool)

(declare-fun e!2597849 () Bool)

(declare-fun tp!1278868 () Bool)

(assert (=> b!4184686 (= e!2597842 (and e!2597849 tp!1278868))))

(declare-fun b!4184687 () Bool)

(declare-fun tp!1278872 () Bool)

(assert (=> b!4184687 (= e!2597846 (and tp_is_empty!22065 tp!1278872))))

(declare-fun e!2597847 () Bool)

(assert (=> b!4184688 (= e!2597847 (and tp!1278877 tp!1278871))))

(declare-fun lt!1490299 () List!46057)

(declare-fun b!4184689 () Bool)

(declare-fun e!2597839 () Bool)

(declare-fun ++!11718 (List!46057 List!46057) List!46057)

(assert (=> b!4184689 (= e!2597839 (= (++!11718 p!2959 lt!1490299) input!3342))))

(declare-fun tp!1278867 () Bool)

(declare-fun b!4184690 () Bool)

(assert (=> b!4184690 (= e!2597841 (and tp!1278867 (inv!60479 (tag!8510 r!4142)) (inv!60481 (transformation!7646 r!4142)) e!2597847))))

(declare-fun b!4184691 () Bool)

(declare-fun tp!1278875 () Bool)

(assert (=> b!4184691 (= e!2597833 (and tp_is_empty!22065 tp!1278875))))

(declare-fun b!4184692 () Bool)

(declare-fun res!1716184 () Bool)

(assert (=> b!4184692 (=> (not res!1716184) (not e!2597850))))

(declare-fun rulesInvariant!6452 (LexerInterface!7239 List!46059) Bool)

(assert (=> b!4184692 (= res!1716184 (rulesInvariant!6452 thiss!25986 rules!3843))))

(declare-fun b!4184693 () Bool)

(declare-fun res!1716192 () Bool)

(assert (=> b!4184693 (=> (not res!1716192) (not e!2597850))))

(declare-fun isEmpty!27183 (List!46059) Bool)

(assert (=> b!4184693 (= res!1716192 (not (isEmpty!27183 rules!3843)))))

(declare-fun b!4184694 () Bool)

(declare-fun res!1716186 () Bool)

(assert (=> b!4184694 (=> res!1716186 e!2597834)))

(declare-fun lt!1490295 () Option!9840)

(declare-fun maxPrefix!4287 (LexerInterface!7239 List!46059 List!46057) Option!9840)

(assert (=> b!4184694 (= res!1716186 (not (= (maxPrefix!4287 thiss!25986 rules!3843 input!3342) lt!1490295)))))

(declare-fun b!4184695 () Bool)

(declare-fun res!1716187 () Bool)

(assert (=> b!4184695 (=> res!1716187 e!2597834)))

(declare-fun ruleValid!3364 (LexerInterface!7239 Rule!15092) Bool)

(assert (=> b!4184695 (= res!1716187 (not (ruleValid!3364 thiss!25986 rBis!167)))))

(declare-fun b!4184696 () Bool)

(assert (=> b!4184696 (= e!2597838 e!2597839)))

(declare-fun res!1716198 () Bool)

(assert (=> b!4184696 (=> res!1716198 e!2597839)))

(declare-fun lt!1490297 () List!46057)

(assert (=> b!4184696 (= res!1716198 (not (= lt!1490297 pBis!107)))))

(declare-fun lt!1490291 () tuple2!43742)

(assert (=> b!4184696 (isPrefix!4503 lt!1490297 (++!11718 lt!1490297 (_2!25005 lt!1490291)))))

(declare-fun lt!1490304 () Unit!65029)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3000 (List!46057 List!46057) Unit!65029)

(assert (=> b!4184696 (= lt!1490304 (lemmaConcatTwoListThenFirstIsPrefix!3000 lt!1490297 (_2!25005 lt!1490291)))))

(declare-fun list!16590 (BalanceConc!27308) List!46057)

(declare-fun charsOf!5081 (Token!14006) BalanceConc!27308)

(assert (=> b!4184696 (= lt!1490297 (list!16590 (charsOf!5081 (_1!25005 lt!1490291))))))

(declare-fun get!14928 (Option!9840) tuple2!43742)

(assert (=> b!4184696 (= lt!1490291 (get!14928 lt!1490292))))

(declare-fun b!4184697 () Bool)

(assert (=> b!4184697 (= e!2597850 (not e!2597837))))

(declare-fun res!1716185 () Bool)

(assert (=> b!4184697 (=> res!1716185 e!2597837)))

(assert (=> b!4184697 (= res!1716185 (not (= (maxPrefixOneRule!3248 thiss!25986 r!4142 input!3342) lt!1490295)))))

(declare-fun lt!1490298 () TokenValue!7876)

(assert (=> b!4184697 (= lt!1490295 (Some!9839 (tuple2!43743 (Token!14007 lt!1490298 r!4142 lt!1490302 p!2959) lt!1490299)))))

(declare-fun getSuffix!2796 (List!46057 List!46057) List!46057)

(assert (=> b!4184697 (= lt!1490299 (getSuffix!2796 input!3342 p!2959))))

(assert (=> b!4184697 (= lt!1490302 (size!33735 p!2959))))

(declare-fun lt!1490296 () BalanceConc!27308)

(declare-fun apply!10611 (TokenValueInjection!15180 BalanceConc!27308) TokenValue!7876)

(assert (=> b!4184697 (= lt!1490298 (apply!10611 (transformation!7646 r!4142) lt!1490296))))

(assert (=> b!4184697 (isPrefix!4503 input!3342 input!3342)))

(declare-fun lt!1490300 () Unit!65029)

(declare-fun lemmaIsPrefixRefl!2932 (List!46057 List!46057) Unit!65029)

(assert (=> b!4184697 (= lt!1490300 (lemmaIsPrefixRefl!2932 input!3342 input!3342))))

(declare-fun lt!1490294 () Unit!65029)

(declare-fun lemmaSemiInverse!2412 (TokenValueInjection!15180 BalanceConc!27308) Unit!65029)

(assert (=> b!4184697 (= lt!1490294 (lemmaSemiInverse!2412 (transformation!7646 r!4142) lt!1490296))))

(declare-fun seqFromList!5671 (List!46057) BalanceConc!27308)

(assert (=> b!4184697 (= lt!1490296 (seqFromList!5671 p!2959))))

(assert (=> b!4184698 (= e!2597835 (and tp!1278866 tp!1278869))))

(declare-fun b!4184699 () Bool)

(declare-fun tp!1278870 () Bool)

(assert (=> b!4184699 (= e!2597849 (and tp!1278870 (inv!60479 (tag!8510 (h!51355 rules!3843))) (inv!60481 (transformation!7646 (h!51355 rules!3843))) e!2597843))))

(declare-fun b!4184700 () Bool)

(declare-fun res!1716188 () Bool)

(assert (=> b!4184700 (=> (not res!1716188) (not e!2597850))))

(assert (=> b!4184700 (= res!1716188 (ruleValid!3364 thiss!25986 r!4142))))

(assert (= (and start!399174 res!1716196) b!4184675))

(assert (= (and b!4184675 res!1716190) b!4184683))

(assert (= (and b!4184683 res!1716189) b!4184693))

(assert (= (and b!4184693 res!1716192) b!4184692))

(assert (= (and b!4184692 res!1716184) b!4184682))

(assert (= (and b!4184682 res!1716193) b!4184685))

(assert (= (and b!4184685 res!1716197) b!4184677))

(assert (= (and b!4184677 res!1716183) b!4184676))

(assert (= (and b!4184676 res!1716194) b!4184700))

(assert (= (and b!4184700 res!1716188) b!4184697))

(assert (= (and b!4184697 (not res!1716185)) b!4184680))

(assert (= (and b!4184680 (not res!1716191)) b!4184695))

(assert (= (and b!4184695 (not res!1716187)) b!4184694))

(assert (= (and b!4184694 (not res!1716186)) b!4184678))

(assert (= (and b!4184678 (not res!1716195)) b!4184696))

(assert (= (and b!4184696 (not res!1716198)) b!4184689))

(assert (= b!4184684 b!4184698))

(assert (= start!399174 b!4184684))

(assert (= b!4184690 b!4184688))

(assert (= start!399174 b!4184690))

(assert (= b!4184699 b!4184681))

(assert (= b!4184686 b!4184699))

(assert (= (and start!399174 ((_ is Cons!45935) rules!3843)) b!4184686))

(assert (= (and start!399174 ((_ is Cons!45933) input!3342)) b!4184687))

(assert (= (and start!399174 ((_ is Cons!45933) pBis!107)) b!4184679))

(assert (= (and start!399174 ((_ is Cons!45933) p!2959)) b!4184691))

(declare-fun m!4773659 () Bool)

(assert (=> b!4184676 m!4773659))

(declare-fun m!4773661 () Bool)

(assert (=> b!4184682 m!4773661))

(declare-fun m!4773663 () Bool)

(assert (=> b!4184678 m!4773663))

(declare-fun m!4773665 () Bool)

(assert (=> b!4184678 m!4773665))

(declare-fun m!4773667 () Bool)

(assert (=> b!4184678 m!4773667))

(declare-fun m!4773669 () Bool)

(assert (=> b!4184678 m!4773669))

(declare-fun m!4773671 () Bool)

(assert (=> b!4184678 m!4773671))

(declare-fun m!4773673 () Bool)

(assert (=> b!4184684 m!4773673))

(declare-fun m!4773675 () Bool)

(assert (=> b!4184684 m!4773675))

(declare-fun m!4773677 () Bool)

(assert (=> b!4184697 m!4773677))

(declare-fun m!4773679 () Bool)

(assert (=> b!4184697 m!4773679))

(declare-fun m!4773681 () Bool)

(assert (=> b!4184697 m!4773681))

(declare-fun m!4773683 () Bool)

(assert (=> b!4184697 m!4773683))

(declare-fun m!4773685 () Bool)

(assert (=> b!4184697 m!4773685))

(declare-fun m!4773687 () Bool)

(assert (=> b!4184697 m!4773687))

(declare-fun m!4773689 () Bool)

(assert (=> b!4184697 m!4773689))

(declare-fun m!4773691 () Bool)

(assert (=> b!4184697 m!4773691))

(declare-fun m!4773693 () Bool)

(assert (=> b!4184685 m!4773693))

(declare-fun m!4773695 () Bool)

(assert (=> b!4184683 m!4773695))

(declare-fun m!4773697 () Bool)

(assert (=> b!4184690 m!4773697))

(declare-fun m!4773699 () Bool)

(assert (=> b!4184690 m!4773699))

(declare-fun m!4773701 () Bool)

(assert (=> b!4184680 m!4773701))

(declare-fun m!4773703 () Bool)

(assert (=> b!4184689 m!4773703))

(declare-fun m!4773705 () Bool)

(assert (=> b!4184700 m!4773705))

(declare-fun m!4773707 () Bool)

(assert (=> b!4184693 m!4773707))

(declare-fun m!4773709 () Bool)

(assert (=> b!4184694 m!4773709))

(declare-fun m!4773711 () Bool)

(assert (=> b!4184699 m!4773711))

(declare-fun m!4773713 () Bool)

(assert (=> b!4184699 m!4773713))

(declare-fun m!4773715 () Bool)

(assert (=> b!4184677 m!4773715))

(declare-fun m!4773717 () Bool)

(assert (=> b!4184696 m!4773717))

(declare-fun m!4773719 () Bool)

(assert (=> b!4184696 m!4773719))

(declare-fun m!4773721 () Bool)

(assert (=> b!4184696 m!4773721))

(declare-fun m!4773723 () Bool)

(assert (=> b!4184696 m!4773723))

(assert (=> b!4184696 m!4773719))

(declare-fun m!4773725 () Bool)

(assert (=> b!4184696 m!4773725))

(assert (=> b!4184696 m!4773717))

(declare-fun m!4773727 () Bool)

(assert (=> b!4184696 m!4773727))

(declare-fun m!4773729 () Bool)

(assert (=> b!4184675 m!4773729))

(declare-fun m!4773731 () Bool)

(assert (=> b!4184695 m!4773731))

(declare-fun m!4773733 () Bool)

(assert (=> b!4184692 m!4773733))

(check-sat (not b!4184684) (not b_next!122355) (not b_next!122359) b_and!327645 b_and!327651 (not b_next!122361) (not b!4184690) (not b!4184692) (not b_next!122351) (not b!4184696) (not b!4184676) (not b!4184687) b_and!327649 b_and!327647 (not b_next!122353) (not b!4184677) (not b!4184685) (not b!4184686) tp_is_empty!22065 (not b!4184678) (not b!4184695) b_and!327641 (not b!4184697) (not b!4184675) (not b!4184689) (not b!4184679) (not b!4184680) (not b!4184691) (not b!4184682) (not b!4184693) b_and!327643 (not b_next!122357) (not b!4184694) (not b!4184683) (not b!4184699) (not b!4184700))
(check-sat (not b_next!122353) (not b_next!122355) b_and!327641 (not b_next!122359) b_and!327645 b_and!327651 (not b_next!122361) (not b_next!122351) b_and!327649 b_and!327647 b_and!327643 (not b_next!122357))
(get-model)

(declare-fun d!1234974 () Bool)

(declare-fun lt!1490314 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7140 (List!46059) (InoxSet Rule!15092))

(assert (=> d!1234974 (= lt!1490314 (select (content!7140 rules!3843) rBis!167))))

(declare-fun e!2597874 () Bool)

(assert (=> d!1234974 (= lt!1490314 e!2597874)))

(declare-fun res!1716235 () Bool)

(assert (=> d!1234974 (=> (not res!1716235) (not e!2597874))))

(assert (=> d!1234974 (= res!1716235 ((_ is Cons!45935) rules!3843))))

(assert (=> d!1234974 (= (contains!9455 rules!3843 rBis!167) lt!1490314)))

(declare-fun b!4184727 () Bool)

(declare-fun e!2597873 () Bool)

(assert (=> b!4184727 (= e!2597874 e!2597873)))

(declare-fun res!1716236 () Bool)

(assert (=> b!4184727 (=> res!1716236 e!2597873)))

(assert (=> b!4184727 (= res!1716236 (= (h!51355 rules!3843) rBis!167))))

(declare-fun b!4184728 () Bool)

(assert (=> b!4184728 (= e!2597873 (contains!9455 (t!345510 rules!3843) rBis!167))))

(assert (= (and d!1234974 res!1716235) b!4184727))

(assert (= (and b!4184727 (not res!1716236)) b!4184728))

(declare-fun m!4773757 () Bool)

(assert (=> d!1234974 m!4773757))

(declare-fun m!4773759 () Bool)

(assert (=> d!1234974 m!4773759))

(declare-fun m!4773761 () Bool)

(assert (=> b!4184728 m!4773761))

(assert (=> b!4184685 d!1234974))

(declare-fun d!1234976 () Bool)

(assert (=> d!1234976 (= (inv!60479 (tag!8510 rBis!167)) (= (mod (str.len (value!238442 (tag!8510 rBis!167))) 2) 0))))

(assert (=> b!4184684 d!1234976))

(declare-fun d!1234978 () Bool)

(declare-fun res!1716239 () Bool)

(declare-fun e!2597877 () Bool)

(assert (=> d!1234978 (=> (not res!1716239) (not e!2597877))))

(declare-fun semiInverseModEq!3312 (Int Int) Bool)

(assert (=> d!1234978 (= res!1716239 (semiInverseModEq!3312 (toChars!10201 (transformation!7646 rBis!167)) (toValue!10342 (transformation!7646 rBis!167))))))

(assert (=> d!1234978 (= (inv!60481 (transformation!7646 rBis!167)) e!2597877)))

(declare-fun b!4184731 () Bool)

(declare-fun equivClasses!3211 (Int Int) Bool)

(assert (=> b!4184731 (= e!2597877 (equivClasses!3211 (toChars!10201 (transformation!7646 rBis!167)) (toValue!10342 (transformation!7646 rBis!167))))))

(assert (= (and d!1234978 res!1716239) b!4184731))

(declare-fun m!4773763 () Bool)

(assert (=> d!1234978 m!4773763))

(declare-fun m!4773765 () Bool)

(assert (=> b!4184731 m!4773765))

(assert (=> b!4184684 d!1234978))

(declare-fun d!1234980 () Bool)

(declare-fun res!1716244 () Bool)

(declare-fun e!2597880 () Bool)

(assert (=> d!1234980 (=> (not res!1716244) (not e!2597880))))

(assert (=> d!1234980 (= res!1716244 (validRegex!5668 (regex!7646 rBis!167)))))

(assert (=> d!1234980 (= (ruleValid!3364 thiss!25986 rBis!167) e!2597880)))

(declare-fun b!4184736 () Bool)

(declare-fun res!1716245 () Bool)

(assert (=> b!4184736 (=> (not res!1716245) (not e!2597880))))

(declare-fun nullable!4403 (Regex!12551) Bool)

(assert (=> b!4184736 (= res!1716245 (not (nullable!4403 (regex!7646 rBis!167))))))

(declare-fun b!4184737 () Bool)

(assert (=> b!4184737 (= e!2597880 (not (= (tag!8510 rBis!167) (String!53247 ""))))))

(assert (= (and d!1234980 res!1716244) b!4184736))

(assert (= (and b!4184736 res!1716245) b!4184737))

(declare-fun m!4773767 () Bool)

(assert (=> d!1234980 m!4773767))

(declare-fun m!4773769 () Bool)

(assert (=> b!4184736 m!4773769))

(assert (=> b!4184695 d!1234980))

(declare-fun b!4184804 () Bool)

(declare-fun res!1716300 () Bool)

(declare-fun e!2597911 () Bool)

(assert (=> b!4184804 (=> (not res!1716300) (not e!2597911))))

(declare-fun lt!1490353 () Option!9840)

(assert (=> b!4184804 (= res!1716300 (= (value!238443 (_1!25005 (get!14928 lt!1490353))) (apply!10611 (transformation!7646 (rule!10714 (_1!25005 (get!14928 lt!1490353)))) (seqFromList!5671 (originalCharacters!8034 (_1!25005 (get!14928 lt!1490353)))))))))

(declare-fun b!4184805 () Bool)

(declare-fun e!2597910 () Option!9840)

(declare-fun call!291922 () Option!9840)

(assert (=> b!4184805 (= e!2597910 call!291922)))

(declare-fun b!4184806 () Bool)

(declare-fun res!1716301 () Bool)

(assert (=> b!4184806 (=> (not res!1716301) (not e!2597911))))

(assert (=> b!4184806 (= res!1716301 (= (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490353)))) (originalCharacters!8034 (_1!25005 (get!14928 lt!1490353)))))))

(declare-fun b!4184807 () Bool)

(assert (=> b!4184807 (= e!2597911 (contains!9455 rules!3843 (rule!10714 (_1!25005 (get!14928 lt!1490353)))))))

(declare-fun bm!291917 () Bool)

(assert (=> bm!291917 (= call!291922 (maxPrefixOneRule!3248 thiss!25986 (h!51355 rules!3843) input!3342))))

(declare-fun b!4184808 () Bool)

(declare-fun res!1716297 () Bool)

(assert (=> b!4184808 (=> (not res!1716297) (not e!2597911))))

(assert (=> b!4184808 (= res!1716297 (matchR!6290 (regex!7646 (rule!10714 (_1!25005 (get!14928 lt!1490353)))) (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490353))))))))

(declare-fun b!4184809 () Bool)

(declare-fun lt!1490354 () Option!9840)

(declare-fun lt!1490351 () Option!9840)

(assert (=> b!4184809 (= e!2597910 (ite (and ((_ is None!9839) lt!1490354) ((_ is None!9839) lt!1490351)) None!9839 (ite ((_ is None!9839) lt!1490351) lt!1490354 (ite ((_ is None!9839) lt!1490354) lt!1490351 (ite (>= (size!33734 (_1!25005 (v!40655 lt!1490354))) (size!33734 (_1!25005 (v!40655 lt!1490351)))) lt!1490354 lt!1490351)))))))

(assert (=> b!4184809 (= lt!1490354 call!291922)))

(assert (=> b!4184809 (= lt!1490351 (maxPrefix!4287 thiss!25986 (t!345510 rules!3843) input!3342))))

(declare-fun d!1234982 () Bool)

(declare-fun e!2597912 () Bool)

(assert (=> d!1234982 e!2597912))

(declare-fun res!1716299 () Bool)

(assert (=> d!1234982 (=> res!1716299 e!2597912)))

(assert (=> d!1234982 (= res!1716299 (isEmpty!27182 lt!1490353))))

(assert (=> d!1234982 (= lt!1490353 e!2597910)))

(declare-fun c!714489 () Bool)

(assert (=> d!1234982 (= c!714489 (and ((_ is Cons!45935) rules!3843) ((_ is Nil!45935) (t!345510 rules!3843))))))

(declare-fun lt!1490350 () Unit!65029)

(declare-fun lt!1490352 () Unit!65029)

(assert (=> d!1234982 (= lt!1490350 lt!1490352)))

(assert (=> d!1234982 (isPrefix!4503 input!3342 input!3342)))

(assert (=> d!1234982 (= lt!1490352 (lemmaIsPrefixRefl!2932 input!3342 input!3342))))

(declare-fun rulesValidInductive!2818 (LexerInterface!7239 List!46059) Bool)

(assert (=> d!1234982 (rulesValidInductive!2818 thiss!25986 rules!3843)))

(assert (=> d!1234982 (= (maxPrefix!4287 thiss!25986 rules!3843 input!3342) lt!1490353)))

(declare-fun b!4184810 () Bool)

(declare-fun res!1716296 () Bool)

(assert (=> b!4184810 (=> (not res!1716296) (not e!2597911))))

(assert (=> b!4184810 (= res!1716296 (< (size!33735 (_2!25005 (get!14928 lt!1490353))) (size!33735 input!3342)))))

(declare-fun b!4184811 () Bool)

(declare-fun res!1716298 () Bool)

(assert (=> b!4184811 (=> (not res!1716298) (not e!2597911))))

(assert (=> b!4184811 (= res!1716298 (= (++!11718 (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490353)))) (_2!25005 (get!14928 lt!1490353))) input!3342))))

(declare-fun b!4184812 () Bool)

(assert (=> b!4184812 (= e!2597912 e!2597911)))

(declare-fun res!1716302 () Bool)

(assert (=> b!4184812 (=> (not res!1716302) (not e!2597911))))

(declare-fun isDefined!7334 (Option!9840) Bool)

(assert (=> b!4184812 (= res!1716302 (isDefined!7334 lt!1490353))))

(assert (= (and d!1234982 c!714489) b!4184805))

(assert (= (and d!1234982 (not c!714489)) b!4184809))

(assert (= (or b!4184805 b!4184809) bm!291917))

(assert (= (and d!1234982 (not res!1716299)) b!4184812))

(assert (= (and b!4184812 res!1716302) b!4184806))

(assert (= (and b!4184806 res!1716301) b!4184810))

(assert (= (and b!4184810 res!1716296) b!4184811))

(assert (= (and b!4184811 res!1716298) b!4184804))

(assert (= (and b!4184804 res!1716300) b!4184808))

(assert (= (and b!4184808 res!1716297) b!4184807))

(declare-fun m!4773819 () Bool)

(assert (=> d!1234982 m!4773819))

(assert (=> d!1234982 m!4773679))

(assert (=> d!1234982 m!4773685))

(declare-fun m!4773821 () Bool)

(assert (=> d!1234982 m!4773821))

(declare-fun m!4773823 () Bool)

(assert (=> bm!291917 m!4773823))

(declare-fun m!4773825 () Bool)

(assert (=> b!4184809 m!4773825))

(declare-fun m!4773827 () Bool)

(assert (=> b!4184808 m!4773827))

(declare-fun m!4773829 () Bool)

(assert (=> b!4184808 m!4773829))

(assert (=> b!4184808 m!4773829))

(declare-fun m!4773831 () Bool)

(assert (=> b!4184808 m!4773831))

(assert (=> b!4184808 m!4773831))

(declare-fun m!4773833 () Bool)

(assert (=> b!4184808 m!4773833))

(assert (=> b!4184811 m!4773827))

(assert (=> b!4184811 m!4773829))

(assert (=> b!4184811 m!4773829))

(assert (=> b!4184811 m!4773831))

(assert (=> b!4184811 m!4773831))

(declare-fun m!4773835 () Bool)

(assert (=> b!4184811 m!4773835))

(assert (=> b!4184807 m!4773827))

(declare-fun m!4773837 () Bool)

(assert (=> b!4184807 m!4773837))

(declare-fun m!4773839 () Bool)

(assert (=> b!4184812 m!4773839))

(assert (=> b!4184810 m!4773827))

(declare-fun m!4773841 () Bool)

(assert (=> b!4184810 m!4773841))

(assert (=> b!4184810 m!4773665))

(assert (=> b!4184804 m!4773827))

(declare-fun m!4773843 () Bool)

(assert (=> b!4184804 m!4773843))

(assert (=> b!4184804 m!4773843))

(declare-fun m!4773845 () Bool)

(assert (=> b!4184804 m!4773845))

(assert (=> b!4184806 m!4773827))

(assert (=> b!4184806 m!4773829))

(assert (=> b!4184806 m!4773829))

(assert (=> b!4184806 m!4773831))

(assert (=> b!4184694 d!1234982))

(declare-fun b!4184824 () Bool)

(declare-fun e!2597919 () Bool)

(assert (=> b!4184824 (= e!2597919 (>= (size!33735 input!3342) (size!33735 pBis!107)))))

(declare-fun b!4184822 () Bool)

(declare-fun res!1716314 () Bool)

(declare-fun e!2597920 () Bool)

(assert (=> b!4184822 (=> (not res!1716314) (not e!2597920))))

(declare-fun head!8880 (List!46057) C!25292)

(assert (=> b!4184822 (= res!1716314 (= (head!8880 pBis!107) (head!8880 input!3342)))))

(declare-fun b!4184821 () Bool)

(declare-fun e!2597921 () Bool)

(assert (=> b!4184821 (= e!2597921 e!2597920)))

(declare-fun res!1716312 () Bool)

(assert (=> b!4184821 (=> (not res!1716312) (not e!2597920))))

(assert (=> b!4184821 (= res!1716312 (not ((_ is Nil!45933) input!3342)))))

(declare-fun d!1235002 () Bool)

(assert (=> d!1235002 e!2597919))

(declare-fun res!1716313 () Bool)

(assert (=> d!1235002 (=> res!1716313 e!2597919)))

(declare-fun lt!1490357 () Bool)

(assert (=> d!1235002 (= res!1716313 (not lt!1490357))))

(assert (=> d!1235002 (= lt!1490357 e!2597921)))

(declare-fun res!1716311 () Bool)

(assert (=> d!1235002 (=> res!1716311 e!2597921)))

(assert (=> d!1235002 (= res!1716311 ((_ is Nil!45933) pBis!107))))

(assert (=> d!1235002 (= (isPrefix!4503 pBis!107 input!3342) lt!1490357)))

(declare-fun b!4184823 () Bool)

(declare-fun tail!6727 (List!46057) List!46057)

(assert (=> b!4184823 (= e!2597920 (isPrefix!4503 (tail!6727 pBis!107) (tail!6727 input!3342)))))

(assert (= (and d!1235002 (not res!1716311)) b!4184821))

(assert (= (and b!4184821 res!1716312) b!4184822))

(assert (= (and b!4184822 res!1716314) b!4184823))

(assert (= (and d!1235002 (not res!1716313)) b!4184824))

(assert (=> b!4184824 m!4773665))

(assert (=> b!4184824 m!4773701))

(declare-fun m!4773847 () Bool)

(assert (=> b!4184822 m!4773847))

(declare-fun m!4773849 () Bool)

(assert (=> b!4184822 m!4773849))

(declare-fun m!4773851 () Bool)

(assert (=> b!4184823 m!4773851))

(declare-fun m!4773853 () Bool)

(assert (=> b!4184823 m!4773853))

(assert (=> b!4184823 m!4773851))

(assert (=> b!4184823 m!4773853))

(declare-fun m!4773855 () Bool)

(assert (=> b!4184823 m!4773855))

(assert (=> b!4184683 d!1235002))

(declare-fun d!1235004 () Bool)

(declare-fun lt!1490358 () Bool)

(assert (=> d!1235004 (= lt!1490358 (select (content!7140 rules!3843) r!4142))))

(declare-fun e!2597923 () Bool)

(assert (=> d!1235004 (= lt!1490358 e!2597923)))

(declare-fun res!1716315 () Bool)

(assert (=> d!1235004 (=> (not res!1716315) (not e!2597923))))

(assert (=> d!1235004 (= res!1716315 ((_ is Cons!45935) rules!3843))))

(assert (=> d!1235004 (= (contains!9455 rules!3843 r!4142) lt!1490358)))

(declare-fun b!4184825 () Bool)

(declare-fun e!2597922 () Bool)

(assert (=> b!4184825 (= e!2597923 e!2597922)))

(declare-fun res!1716316 () Bool)

(assert (=> b!4184825 (=> res!1716316 e!2597922)))

(assert (=> b!4184825 (= res!1716316 (= (h!51355 rules!3843) r!4142))))

(declare-fun b!4184826 () Bool)

(assert (=> b!4184826 (= e!2597922 (contains!9455 (t!345510 rules!3843) r!4142))))

(assert (= (and d!1235004 res!1716315) b!4184825))

(assert (= (and b!4184825 (not res!1716316)) b!4184826))

(assert (=> d!1235004 m!4773757))

(declare-fun m!4773857 () Bool)

(assert (=> d!1235004 m!4773857))

(declare-fun m!4773859 () Bool)

(assert (=> b!4184826 m!4773859))

(assert (=> b!4184682 d!1235004))

(declare-fun d!1235006 () Bool)

(assert (=> d!1235006 (= (isEmpty!27183 rules!3843) ((_ is Nil!45935) rules!3843))))

(assert (=> b!4184693 d!1235006))

(declare-fun d!1235008 () Bool)

(declare-fun res!1716319 () Bool)

(declare-fun e!2597926 () Bool)

(assert (=> d!1235008 (=> (not res!1716319) (not e!2597926))))

(declare-fun rulesValid!2980 (LexerInterface!7239 List!46059) Bool)

(assert (=> d!1235008 (= res!1716319 (rulesValid!2980 thiss!25986 rules!3843))))

(assert (=> d!1235008 (= (rulesInvariant!6452 thiss!25986 rules!3843) e!2597926)))

(declare-fun b!4184829 () Bool)

(declare-datatypes ((List!46061 0))(
  ( (Nil!45937) (Cons!45937 (h!51357 String!53246) (t!345560 List!46061)) )
))
(declare-fun noDuplicateTag!3141 (LexerInterface!7239 List!46059 List!46061) Bool)

(assert (=> b!4184829 (= e!2597926 (noDuplicateTag!3141 thiss!25986 rules!3843 Nil!45937))))

(assert (= (and d!1235008 res!1716319) b!4184829))

(declare-fun m!4773861 () Bool)

(assert (=> d!1235008 m!4773861))

(declare-fun m!4773863 () Bool)

(assert (=> b!4184829 m!4773863))

(assert (=> b!4184692 d!1235008))

(declare-fun d!1235010 () Bool)

(declare-fun lt!1490361 () Int)

(assert (=> d!1235010 (>= lt!1490361 0)))

(declare-fun e!2597929 () Int)

(assert (=> d!1235010 (= lt!1490361 e!2597929)))

(declare-fun c!714492 () Bool)

(assert (=> d!1235010 (= c!714492 ((_ is Nil!45933) pBis!107))))

(assert (=> d!1235010 (= (size!33735 pBis!107) lt!1490361)))

(declare-fun b!4184834 () Bool)

(assert (=> b!4184834 (= e!2597929 0)))

(declare-fun b!4184835 () Bool)

(assert (=> b!4184835 (= e!2597929 (+ 1 (size!33735 (t!345508 pBis!107))))))

(assert (= (and d!1235010 c!714492) b!4184834))

(assert (= (and d!1235010 (not c!714492)) b!4184835))

(declare-fun m!4773865 () Bool)

(assert (=> b!4184835 m!4773865))

(assert (=> b!4184680 d!1235010))

(declare-fun d!1235012 () Bool)

(assert (=> d!1235012 (= (inv!60479 (tag!8510 r!4142)) (= (mod (str.len (value!238442 (tag!8510 r!4142))) 2) 0))))

(assert (=> b!4184690 d!1235012))

(declare-fun d!1235014 () Bool)

(declare-fun res!1716320 () Bool)

(declare-fun e!2597930 () Bool)

(assert (=> d!1235014 (=> (not res!1716320) (not e!2597930))))

(assert (=> d!1235014 (= res!1716320 (semiInverseModEq!3312 (toChars!10201 (transformation!7646 r!4142)) (toValue!10342 (transformation!7646 r!4142))))))

(assert (=> d!1235014 (= (inv!60481 (transformation!7646 r!4142)) e!2597930)))

(declare-fun b!4184836 () Bool)

(assert (=> b!4184836 (= e!2597930 (equivClasses!3211 (toChars!10201 (transformation!7646 r!4142)) (toValue!10342 (transformation!7646 r!4142))))))

(assert (= (and d!1235014 res!1716320) b!4184836))

(declare-fun m!4773867 () Bool)

(assert (=> d!1235014 m!4773867))

(declare-fun m!4773869 () Bool)

(assert (=> b!4184836 m!4773869))

(assert (=> b!4184690 d!1235014))

(declare-fun d!1235016 () Bool)

(declare-fun res!1716321 () Bool)

(declare-fun e!2597931 () Bool)

(assert (=> d!1235016 (=> (not res!1716321) (not e!2597931))))

(assert (=> d!1235016 (= res!1716321 (validRegex!5668 (regex!7646 r!4142)))))

(assert (=> d!1235016 (= (ruleValid!3364 thiss!25986 r!4142) e!2597931)))

(declare-fun b!4184837 () Bool)

(declare-fun res!1716322 () Bool)

(assert (=> b!4184837 (=> (not res!1716322) (not e!2597931))))

(assert (=> b!4184837 (= res!1716322 (not (nullable!4403 (regex!7646 r!4142))))))

(declare-fun b!4184838 () Bool)

(assert (=> b!4184838 (= e!2597931 (not (= (tag!8510 r!4142) (String!53247 ""))))))

(assert (= (and d!1235016 res!1716321) b!4184837))

(assert (= (and b!4184837 res!1716322) b!4184838))

(assert (=> d!1235016 m!4773715))

(declare-fun m!4773871 () Bool)

(assert (=> b!4184837 m!4773871))

(assert (=> b!4184700 d!1235016))

(declare-fun d!1235018 () Bool)

(assert (=> d!1235018 (ruleValid!3364 thiss!25986 rBis!167)))

(declare-fun lt!1490364 () Unit!65029)

(declare-fun choose!25615 (LexerInterface!7239 Rule!15092 List!46059) Unit!65029)

(assert (=> d!1235018 (= lt!1490364 (choose!25615 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235018 (contains!9455 rules!3843 rBis!167)))

(assert (=> d!1235018 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2370 thiss!25986 rBis!167 rules!3843) lt!1490364)))

(declare-fun bs!596500 () Bool)

(assert (= bs!596500 d!1235018))

(assert (=> bs!596500 m!4773731))

(declare-fun m!4773873 () Bool)

(assert (=> bs!596500 m!4773873))

(assert (=> bs!596500 m!4773693))

(assert (=> b!4184678 d!1235018))

(declare-fun d!1235020 () Bool)

(assert (=> d!1235020 (= (isEmpty!27182 lt!1490292) (not ((_ is Some!9839) lt!1490292)))))

(assert (=> b!4184678 d!1235020))

(declare-fun b!4184857 () Bool)

(declare-fun e!2597941 () Bool)

(declare-fun lt!1490377 () Option!9840)

(assert (=> b!4184857 (= e!2597941 (= (size!33734 (_1!25005 (get!14928 lt!1490377))) (size!33735 (originalCharacters!8034 (_1!25005 (get!14928 lt!1490377))))))))

(declare-fun b!4184858 () Bool)

(declare-fun e!2597943 () Bool)

(declare-datatypes ((tuple2!43746 0))(
  ( (tuple2!43747 (_1!25007 List!46057) (_2!25007 List!46057)) )
))
(declare-fun findLongestMatchInner!1593 (Regex!12551 List!46057 Int List!46057 List!46057 Int) tuple2!43746)

(assert (=> b!4184858 (= e!2597943 (matchR!6290 (regex!7646 rBis!167) (_1!25007 (findLongestMatchInner!1593 (regex!7646 rBis!167) Nil!45933 (size!33735 Nil!45933) input!3342 input!3342 (size!33735 input!3342)))))))

(declare-fun b!4184859 () Bool)

(declare-fun e!2597940 () Option!9840)

(declare-fun lt!1490379 () tuple2!43746)

(declare-fun size!33737 (BalanceConc!27308) Int)

(assert (=> b!4184859 (= e!2597940 (Some!9839 (tuple2!43743 (Token!14007 (apply!10611 (transformation!7646 rBis!167) (seqFromList!5671 (_1!25007 lt!1490379))) rBis!167 (size!33737 (seqFromList!5671 (_1!25007 lt!1490379))) (_1!25007 lt!1490379)) (_2!25007 lt!1490379))))))

(declare-fun lt!1490376 () Unit!65029)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1566 (Regex!12551 List!46057) Unit!65029)

(assert (=> b!4184859 (= lt!1490376 (longestMatchIsAcceptedByMatchOrIsEmpty!1566 (regex!7646 rBis!167) input!3342))))

(declare-fun res!1716337 () Bool)

(declare-fun isEmpty!27185 (List!46057) Bool)

(assert (=> b!4184859 (= res!1716337 (isEmpty!27185 (_1!25007 (findLongestMatchInner!1593 (regex!7646 rBis!167) Nil!45933 (size!33735 Nil!45933) input!3342 input!3342 (size!33735 input!3342)))))))

(assert (=> b!4184859 (=> res!1716337 e!2597943)))

(assert (=> b!4184859 e!2597943))

(declare-fun lt!1490375 () Unit!65029)

(assert (=> b!4184859 (= lt!1490375 lt!1490376)))

(declare-fun lt!1490378 () Unit!65029)

(assert (=> b!4184859 (= lt!1490378 (lemmaSemiInverse!2412 (transformation!7646 rBis!167) (seqFromList!5671 (_1!25007 lt!1490379))))))

(declare-fun b!4184860 () Bool)

(declare-fun e!2597942 () Bool)

(assert (=> b!4184860 (= e!2597942 e!2597941)))

(declare-fun res!1716338 () Bool)

(assert (=> b!4184860 (=> (not res!1716338) (not e!2597941))))

(assert (=> b!4184860 (= res!1716338 (matchR!6290 (regex!7646 rBis!167) (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490377))))))))

(declare-fun b!4184861 () Bool)

(assert (=> b!4184861 (= e!2597940 None!9839)))

(declare-fun b!4184862 () Bool)

(declare-fun res!1716339 () Bool)

(assert (=> b!4184862 (=> (not res!1716339) (not e!2597941))))

(assert (=> b!4184862 (= res!1716339 (= (value!238443 (_1!25005 (get!14928 lt!1490377))) (apply!10611 (transformation!7646 (rule!10714 (_1!25005 (get!14928 lt!1490377)))) (seqFromList!5671 (originalCharacters!8034 (_1!25005 (get!14928 lt!1490377)))))))))

(declare-fun b!4184863 () Bool)

(declare-fun res!1716340 () Bool)

(assert (=> b!4184863 (=> (not res!1716340) (not e!2597941))))

(assert (=> b!4184863 (= res!1716340 (= (++!11718 (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490377)))) (_2!25005 (get!14928 lt!1490377))) input!3342))))

(declare-fun b!4184864 () Bool)

(declare-fun res!1716341 () Bool)

(assert (=> b!4184864 (=> (not res!1716341) (not e!2597941))))

(assert (=> b!4184864 (= res!1716341 (< (size!33735 (_2!25005 (get!14928 lt!1490377))) (size!33735 input!3342)))))

(declare-fun b!4184865 () Bool)

(declare-fun res!1716342 () Bool)

(assert (=> b!4184865 (=> (not res!1716342) (not e!2597941))))

(assert (=> b!4184865 (= res!1716342 (= (rule!10714 (_1!25005 (get!14928 lt!1490377))) rBis!167))))

(declare-fun d!1235022 () Bool)

(assert (=> d!1235022 e!2597942))

(declare-fun res!1716343 () Bool)

(assert (=> d!1235022 (=> res!1716343 e!2597942)))

(assert (=> d!1235022 (= res!1716343 (isEmpty!27182 lt!1490377))))

(assert (=> d!1235022 (= lt!1490377 e!2597940)))

(declare-fun c!714495 () Bool)

(assert (=> d!1235022 (= c!714495 (isEmpty!27185 (_1!25007 lt!1490379)))))

(declare-fun findLongestMatch!1506 (Regex!12551 List!46057) tuple2!43746)

(assert (=> d!1235022 (= lt!1490379 (findLongestMatch!1506 (regex!7646 rBis!167) input!3342))))

(assert (=> d!1235022 (ruleValid!3364 thiss!25986 rBis!167)))

(assert (=> d!1235022 (= (maxPrefixOneRule!3248 thiss!25986 rBis!167 input!3342) lt!1490377)))

(assert (= (and d!1235022 c!714495) b!4184861))

(assert (= (and d!1235022 (not c!714495)) b!4184859))

(assert (= (and b!4184859 (not res!1716337)) b!4184858))

(assert (= (and d!1235022 (not res!1716343)) b!4184860))

(assert (= (and b!4184860 res!1716338) b!4184863))

(assert (= (and b!4184863 res!1716340) b!4184864))

(assert (= (and b!4184864 res!1716341) b!4184865))

(assert (= (and b!4184865 res!1716342) b!4184862))

(assert (= (and b!4184862 res!1716339) b!4184857))

(declare-fun m!4773875 () Bool)

(assert (=> b!4184865 m!4773875))

(declare-fun m!4773877 () Bool)

(assert (=> d!1235022 m!4773877))

(declare-fun m!4773879 () Bool)

(assert (=> d!1235022 m!4773879))

(declare-fun m!4773881 () Bool)

(assert (=> d!1235022 m!4773881))

(assert (=> d!1235022 m!4773731))

(declare-fun m!4773883 () Bool)

(assert (=> b!4184859 m!4773883))

(assert (=> b!4184859 m!4773665))

(declare-fun m!4773885 () Bool)

(assert (=> b!4184859 m!4773885))

(declare-fun m!4773887 () Bool)

(assert (=> b!4184859 m!4773887))

(assert (=> b!4184859 m!4773887))

(declare-fun m!4773889 () Bool)

(assert (=> b!4184859 m!4773889))

(assert (=> b!4184859 m!4773665))

(assert (=> b!4184859 m!4773887))

(declare-fun m!4773891 () Bool)

(assert (=> b!4184859 m!4773891))

(assert (=> b!4184859 m!4773887))

(declare-fun m!4773893 () Bool)

(assert (=> b!4184859 m!4773893))

(assert (=> b!4184859 m!4773883))

(declare-fun m!4773895 () Bool)

(assert (=> b!4184859 m!4773895))

(declare-fun m!4773897 () Bool)

(assert (=> b!4184859 m!4773897))

(assert (=> b!4184858 m!4773883))

(assert (=> b!4184858 m!4773665))

(assert (=> b!4184858 m!4773883))

(assert (=> b!4184858 m!4773665))

(assert (=> b!4184858 m!4773885))

(declare-fun m!4773899 () Bool)

(assert (=> b!4184858 m!4773899))

(assert (=> b!4184862 m!4773875))

(declare-fun m!4773901 () Bool)

(assert (=> b!4184862 m!4773901))

(assert (=> b!4184862 m!4773901))

(declare-fun m!4773903 () Bool)

(assert (=> b!4184862 m!4773903))

(assert (=> b!4184864 m!4773875))

(declare-fun m!4773905 () Bool)

(assert (=> b!4184864 m!4773905))

(assert (=> b!4184864 m!4773665))

(assert (=> b!4184863 m!4773875))

(declare-fun m!4773907 () Bool)

(assert (=> b!4184863 m!4773907))

(assert (=> b!4184863 m!4773907))

(declare-fun m!4773909 () Bool)

(assert (=> b!4184863 m!4773909))

(assert (=> b!4184863 m!4773909))

(declare-fun m!4773911 () Bool)

(assert (=> b!4184863 m!4773911))

(assert (=> b!4184857 m!4773875))

(declare-fun m!4773913 () Bool)

(assert (=> b!4184857 m!4773913))

(assert (=> b!4184860 m!4773875))

(assert (=> b!4184860 m!4773907))

(assert (=> b!4184860 m!4773907))

(assert (=> b!4184860 m!4773909))

(assert (=> b!4184860 m!4773909))

(declare-fun m!4773915 () Bool)

(assert (=> b!4184860 m!4773915))

(assert (=> b!4184678 d!1235022))

(declare-fun d!1235024 () Bool)

(assert (=> d!1235024 (<= (size!33735 pBis!107) (size!33735 input!3342))))

(declare-fun lt!1490382 () Unit!65029)

(declare-fun choose!25617 (List!46057 List!46057) Unit!65029)

(assert (=> d!1235024 (= lt!1490382 (choose!25617 pBis!107 input!3342))))

(assert (=> d!1235024 (isPrefix!4503 pBis!107 input!3342)))

(assert (=> d!1235024 (= (lemmaIsPrefixThenSmallerEqSize!533 pBis!107 input!3342) lt!1490382)))

(declare-fun bs!596501 () Bool)

(assert (= bs!596501 d!1235024))

(assert (=> bs!596501 m!4773701))

(assert (=> bs!596501 m!4773665))

(declare-fun m!4773917 () Bool)

(assert (=> bs!596501 m!4773917))

(assert (=> bs!596501 m!4773695))

(assert (=> b!4184678 d!1235024))

(declare-fun d!1235026 () Bool)

(declare-fun lt!1490383 () Int)

(assert (=> d!1235026 (>= lt!1490383 0)))

(declare-fun e!2597944 () Int)

(assert (=> d!1235026 (= lt!1490383 e!2597944)))

(declare-fun c!714496 () Bool)

(assert (=> d!1235026 (= c!714496 ((_ is Nil!45933) input!3342))))

(assert (=> d!1235026 (= (size!33735 input!3342) lt!1490383)))

(declare-fun b!4184866 () Bool)

(assert (=> b!4184866 (= e!2597944 0)))

(declare-fun b!4184867 () Bool)

(assert (=> b!4184867 (= e!2597944 (+ 1 (size!33735 (t!345508 input!3342))))))

(assert (= (and d!1235026 c!714496) b!4184866))

(assert (= (and d!1235026 (not c!714496)) b!4184867))

(declare-fun m!4773919 () Bool)

(assert (=> b!4184867 m!4773919))

(assert (=> b!4184678 d!1235026))

(declare-fun b!4184878 () Bool)

(declare-fun res!1716348 () Bool)

(declare-fun e!2597950 () Bool)

(assert (=> b!4184878 (=> (not res!1716348) (not e!2597950))))

(declare-fun lt!1490386 () List!46057)

(assert (=> b!4184878 (= res!1716348 (= (size!33735 lt!1490386) (+ (size!33735 p!2959) (size!33735 lt!1490299))))))

(declare-fun b!4184876 () Bool)

(declare-fun e!2597949 () List!46057)

(assert (=> b!4184876 (= e!2597949 lt!1490299)))

(declare-fun b!4184877 () Bool)

(assert (=> b!4184877 (= e!2597949 (Cons!45933 (h!51353 p!2959) (++!11718 (t!345508 p!2959) lt!1490299)))))

(declare-fun b!4184879 () Bool)

(assert (=> b!4184879 (= e!2597950 (or (not (= lt!1490299 Nil!45933)) (= lt!1490386 p!2959)))))

(declare-fun d!1235028 () Bool)

(assert (=> d!1235028 e!2597950))

(declare-fun res!1716349 () Bool)

(assert (=> d!1235028 (=> (not res!1716349) (not e!2597950))))

(declare-fun content!7142 (List!46057) (InoxSet C!25292))

(assert (=> d!1235028 (= res!1716349 (= (content!7142 lt!1490386) ((_ map or) (content!7142 p!2959) (content!7142 lt!1490299))))))

(assert (=> d!1235028 (= lt!1490386 e!2597949)))

(declare-fun c!714499 () Bool)

(assert (=> d!1235028 (= c!714499 ((_ is Nil!45933) p!2959))))

(assert (=> d!1235028 (= (++!11718 p!2959 lt!1490299) lt!1490386)))

(assert (= (and d!1235028 c!714499) b!4184876))

(assert (= (and d!1235028 (not c!714499)) b!4184877))

(assert (= (and d!1235028 res!1716349) b!4184878))

(assert (= (and b!4184878 res!1716348) b!4184879))

(declare-fun m!4773921 () Bool)

(assert (=> b!4184878 m!4773921))

(assert (=> b!4184878 m!4773687))

(declare-fun m!4773923 () Bool)

(assert (=> b!4184878 m!4773923))

(declare-fun m!4773925 () Bool)

(assert (=> b!4184877 m!4773925))

(declare-fun m!4773927 () Bool)

(assert (=> d!1235028 m!4773927))

(declare-fun m!4773929 () Bool)

(assert (=> d!1235028 m!4773929))

(declare-fun m!4773931 () Bool)

(assert (=> d!1235028 m!4773931))

(assert (=> b!4184689 d!1235028))

(declare-fun d!1235030 () Bool)

(assert (=> d!1235030 (= (inv!60479 (tag!8510 (h!51355 rules!3843))) (= (mod (str.len (value!238442 (tag!8510 (h!51355 rules!3843)))) 2) 0))))

(assert (=> b!4184699 d!1235030))

(declare-fun d!1235032 () Bool)

(declare-fun res!1716350 () Bool)

(declare-fun e!2597951 () Bool)

(assert (=> d!1235032 (=> (not res!1716350) (not e!2597951))))

(assert (=> d!1235032 (= res!1716350 (semiInverseModEq!3312 (toChars!10201 (transformation!7646 (h!51355 rules!3843))) (toValue!10342 (transformation!7646 (h!51355 rules!3843)))))))

(assert (=> d!1235032 (= (inv!60481 (transformation!7646 (h!51355 rules!3843))) e!2597951)))

(declare-fun b!4184880 () Bool)

(assert (=> b!4184880 (= e!2597951 (equivClasses!3211 (toChars!10201 (transformation!7646 (h!51355 rules!3843))) (toValue!10342 (transformation!7646 (h!51355 rules!3843)))))))

(assert (= (and d!1235032 res!1716350) b!4184880))

(declare-fun m!4773933 () Bool)

(assert (=> d!1235032 m!4773933))

(declare-fun m!4773935 () Bool)

(assert (=> b!4184880 m!4773935))

(assert (=> b!4184699 d!1235032))

(declare-fun b!4184899 () Bool)

(declare-fun e!2597968 () Bool)

(declare-fun call!291929 () Bool)

(assert (=> b!4184899 (= e!2597968 call!291929)))

(declare-fun c!714504 () Bool)

(declare-fun c!714505 () Bool)

(declare-fun bm!291924 () Bool)

(assert (=> bm!291924 (= call!291929 (validRegex!5668 (ite c!714504 (reg!12880 (regex!7646 r!4142)) (ite c!714505 (regOne!25615 (regex!7646 r!4142)) (regOne!25614 (regex!7646 r!4142))))))))

(declare-fun b!4184900 () Bool)

(declare-fun res!1716363 () Bool)

(declare-fun e!2597970 () Bool)

(assert (=> b!4184900 (=> res!1716363 e!2597970)))

(assert (=> b!4184900 (= res!1716363 (not ((_ is Concat!20428) (regex!7646 r!4142))))))

(declare-fun e!2597967 () Bool)

(assert (=> b!4184900 (= e!2597967 e!2597970)))

(declare-fun b!4184901 () Bool)

(declare-fun e!2597971 () Bool)

(declare-fun call!291930 () Bool)

(assert (=> b!4184901 (= e!2597971 call!291930)))

(declare-fun b!4184903 () Bool)

(declare-fun e!2597966 () Bool)

(declare-fun e!2597969 () Bool)

(assert (=> b!4184903 (= e!2597966 e!2597969)))

(assert (=> b!4184903 (= c!714504 ((_ is Star!12551) (regex!7646 r!4142)))))

(declare-fun bm!291925 () Bool)

(declare-fun call!291931 () Bool)

(assert (=> bm!291925 (= call!291931 call!291929)))

(declare-fun bm!291926 () Bool)

(assert (=> bm!291926 (= call!291930 (validRegex!5668 (ite c!714505 (regTwo!25615 (regex!7646 r!4142)) (regTwo!25614 (regex!7646 r!4142)))))))

(declare-fun b!4184904 () Bool)

(assert (=> b!4184904 (= e!2597969 e!2597968)))

(declare-fun res!1716364 () Bool)

(assert (=> b!4184904 (= res!1716364 (not (nullable!4403 (reg!12880 (regex!7646 r!4142)))))))

(assert (=> b!4184904 (=> (not res!1716364) (not e!2597968))))

(declare-fun b!4184905 () Bool)

(declare-fun e!2597972 () Bool)

(assert (=> b!4184905 (= e!2597970 e!2597972)))

(declare-fun res!1716365 () Bool)

(assert (=> b!4184905 (=> (not res!1716365) (not e!2597972))))

(assert (=> b!4184905 (= res!1716365 call!291931)))

(declare-fun b!4184902 () Bool)

(assert (=> b!4184902 (= e!2597972 call!291930)))

(declare-fun d!1235034 () Bool)

(declare-fun res!1716361 () Bool)

(assert (=> d!1235034 (=> res!1716361 e!2597966)))

(assert (=> d!1235034 (= res!1716361 ((_ is ElementMatch!12551) (regex!7646 r!4142)))))

(assert (=> d!1235034 (= (validRegex!5668 (regex!7646 r!4142)) e!2597966)))

(declare-fun b!4184906 () Bool)

(assert (=> b!4184906 (= e!2597969 e!2597967)))

(assert (=> b!4184906 (= c!714505 ((_ is Union!12551) (regex!7646 r!4142)))))

(declare-fun b!4184907 () Bool)

(declare-fun res!1716362 () Bool)

(assert (=> b!4184907 (=> (not res!1716362) (not e!2597971))))

(assert (=> b!4184907 (= res!1716362 call!291931)))

(assert (=> b!4184907 (= e!2597967 e!2597971)))

(assert (= (and d!1235034 (not res!1716361)) b!4184903))

(assert (= (and b!4184903 c!714504) b!4184904))

(assert (= (and b!4184903 (not c!714504)) b!4184906))

(assert (= (and b!4184904 res!1716364) b!4184899))

(assert (= (and b!4184906 c!714505) b!4184907))

(assert (= (and b!4184906 (not c!714505)) b!4184900))

(assert (= (and b!4184907 res!1716362) b!4184901))

(assert (= (and b!4184900 (not res!1716363)) b!4184905))

(assert (= (and b!4184905 res!1716365) b!4184902))

(assert (= (or b!4184901 b!4184902) bm!291926))

(assert (= (or b!4184907 b!4184905) bm!291925))

(assert (= (or b!4184899 bm!291925) bm!291924))

(declare-fun m!4773937 () Bool)

(assert (=> bm!291924 m!4773937))

(declare-fun m!4773939 () Bool)

(assert (=> bm!291926 m!4773939))

(declare-fun m!4773941 () Bool)

(assert (=> b!4184904 m!4773941))

(assert (=> b!4184677 d!1235034))

(declare-fun d!1235036 () Bool)

(declare-fun e!2597989 () Bool)

(assert (=> d!1235036 e!2597989))

(declare-fun c!714514 () Bool)

(assert (=> d!1235036 (= c!714514 ((_ is EmptyExpr!12551) (regex!7646 r!4142)))))

(declare-fun lt!1490389 () Bool)

(declare-fun e!2597993 () Bool)

(assert (=> d!1235036 (= lt!1490389 e!2597993)))

(declare-fun c!714512 () Bool)

(assert (=> d!1235036 (= c!714512 (isEmpty!27185 p!2959))))

(assert (=> d!1235036 (validRegex!5668 (regex!7646 r!4142))))

(assert (=> d!1235036 (= (matchR!6290 (regex!7646 r!4142) p!2959) lt!1490389)))

(declare-fun b!4184936 () Bool)

(declare-fun res!1716382 () Bool)

(declare-fun e!2597988 () Bool)

(assert (=> b!4184936 (=> res!1716382 e!2597988)))

(assert (=> b!4184936 (= res!1716382 (not ((_ is ElementMatch!12551) (regex!7646 r!4142))))))

(declare-fun e!2597992 () Bool)

(assert (=> b!4184936 (= e!2597992 e!2597988)))

(declare-fun bm!291929 () Bool)

(declare-fun call!291934 () Bool)

(assert (=> bm!291929 (= call!291934 (isEmpty!27185 p!2959))))

(declare-fun b!4184937 () Bool)

(declare-fun e!2597990 () Bool)

(assert (=> b!4184937 (= e!2597990 (not (= (head!8880 p!2959) (c!714479 (regex!7646 r!4142)))))))

(declare-fun b!4184938 () Bool)

(declare-fun res!1716386 () Bool)

(assert (=> b!4184938 (=> res!1716386 e!2597988)))

(declare-fun e!2597987 () Bool)

(assert (=> b!4184938 (= res!1716386 e!2597987)))

(declare-fun res!1716389 () Bool)

(assert (=> b!4184938 (=> (not res!1716389) (not e!2597987))))

(assert (=> b!4184938 (= res!1716389 lt!1490389)))

(declare-fun b!4184939 () Bool)

(declare-fun e!2597991 () Bool)

(assert (=> b!4184939 (= e!2597988 e!2597991)))

(declare-fun res!1716385 () Bool)

(assert (=> b!4184939 (=> (not res!1716385) (not e!2597991))))

(assert (=> b!4184939 (= res!1716385 (not lt!1490389))))

(declare-fun b!4184940 () Bool)

(declare-fun res!1716384 () Bool)

(assert (=> b!4184940 (=> (not res!1716384) (not e!2597987))))

(assert (=> b!4184940 (= res!1716384 (not call!291934))))

(declare-fun b!4184941 () Bool)

(assert (=> b!4184941 (= e!2597987 (= (head!8880 p!2959) (c!714479 (regex!7646 r!4142))))))

(declare-fun b!4184942 () Bool)

(declare-fun res!1716383 () Bool)

(assert (=> b!4184942 (=> (not res!1716383) (not e!2597987))))

(assert (=> b!4184942 (= res!1716383 (isEmpty!27185 (tail!6727 p!2959)))))

(declare-fun b!4184943 () Bool)

(assert (=> b!4184943 (= e!2597992 (not lt!1490389))))

(declare-fun b!4184944 () Bool)

(assert (=> b!4184944 (= e!2597989 (= lt!1490389 call!291934))))

(declare-fun b!4184945 () Bool)

(declare-fun res!1716388 () Bool)

(assert (=> b!4184945 (=> res!1716388 e!2597990)))

(assert (=> b!4184945 (= res!1716388 (not (isEmpty!27185 (tail!6727 p!2959))))))

(declare-fun b!4184946 () Bool)

(declare-fun derivativeStep!3793 (Regex!12551 C!25292) Regex!12551)

(assert (=> b!4184946 (= e!2597993 (matchR!6290 (derivativeStep!3793 (regex!7646 r!4142) (head!8880 p!2959)) (tail!6727 p!2959)))))

(declare-fun b!4184947 () Bool)

(assert (=> b!4184947 (= e!2597991 e!2597990)))

(declare-fun res!1716387 () Bool)

(assert (=> b!4184947 (=> res!1716387 e!2597990)))

(assert (=> b!4184947 (= res!1716387 call!291934)))

(declare-fun b!4184948 () Bool)

(assert (=> b!4184948 (= e!2597993 (nullable!4403 (regex!7646 r!4142)))))

(declare-fun b!4184949 () Bool)

(assert (=> b!4184949 (= e!2597989 e!2597992)))

(declare-fun c!714513 () Bool)

(assert (=> b!4184949 (= c!714513 ((_ is EmptyLang!12551) (regex!7646 r!4142)))))

(assert (= (and d!1235036 c!714512) b!4184948))

(assert (= (and d!1235036 (not c!714512)) b!4184946))

(assert (= (and d!1235036 c!714514) b!4184944))

(assert (= (and d!1235036 (not c!714514)) b!4184949))

(assert (= (and b!4184949 c!714513) b!4184943))

(assert (= (and b!4184949 (not c!714513)) b!4184936))

(assert (= (and b!4184936 (not res!1716382)) b!4184938))

(assert (= (and b!4184938 res!1716389) b!4184940))

(assert (= (and b!4184940 res!1716384) b!4184942))

(assert (= (and b!4184942 res!1716383) b!4184941))

(assert (= (and b!4184938 (not res!1716386)) b!4184939))

(assert (= (and b!4184939 res!1716385) b!4184947))

(assert (= (and b!4184947 (not res!1716387)) b!4184945))

(assert (= (and b!4184945 (not res!1716388)) b!4184937))

(assert (= (or b!4184944 b!4184947 b!4184940) bm!291929))

(declare-fun m!4773943 () Bool)

(assert (=> b!4184945 m!4773943))

(assert (=> b!4184945 m!4773943))

(declare-fun m!4773945 () Bool)

(assert (=> b!4184945 m!4773945))

(declare-fun m!4773947 () Bool)

(assert (=> bm!291929 m!4773947))

(assert (=> d!1235036 m!4773947))

(assert (=> d!1235036 m!4773715))

(assert (=> b!4184942 m!4773943))

(assert (=> b!4184942 m!4773943))

(assert (=> b!4184942 m!4773945))

(assert (=> b!4184948 m!4773871))

(declare-fun m!4773949 () Bool)

(assert (=> b!4184941 m!4773949))

(assert (=> b!4184946 m!4773949))

(assert (=> b!4184946 m!4773949))

(declare-fun m!4773951 () Bool)

(assert (=> b!4184946 m!4773951))

(assert (=> b!4184946 m!4773943))

(assert (=> b!4184946 m!4773951))

(assert (=> b!4184946 m!4773943))

(declare-fun m!4773953 () Bool)

(assert (=> b!4184946 m!4773953))

(assert (=> b!4184937 m!4773949))

(assert (=> b!4184676 d!1235036))

(declare-fun d!1235038 () Bool)

(declare-fun lt!1490392 () List!46057)

(assert (=> d!1235038 (= (++!11718 p!2959 lt!1490392) input!3342)))

(declare-fun e!2597996 () List!46057)

(assert (=> d!1235038 (= lt!1490392 e!2597996)))

(declare-fun c!714517 () Bool)

(assert (=> d!1235038 (= c!714517 ((_ is Cons!45933) p!2959))))

(assert (=> d!1235038 (>= (size!33735 input!3342) (size!33735 p!2959))))

(assert (=> d!1235038 (= (getSuffix!2796 input!3342 p!2959) lt!1490392)))

(declare-fun b!4184954 () Bool)

(assert (=> b!4184954 (= e!2597996 (getSuffix!2796 (tail!6727 input!3342) (t!345508 p!2959)))))

(declare-fun b!4184955 () Bool)

(assert (=> b!4184955 (= e!2597996 input!3342)))

(assert (= (and d!1235038 c!714517) b!4184954))

(assert (= (and d!1235038 (not c!714517)) b!4184955))

(declare-fun m!4773955 () Bool)

(assert (=> d!1235038 m!4773955))

(assert (=> d!1235038 m!4773665))

(assert (=> d!1235038 m!4773687))

(assert (=> b!4184954 m!4773853))

(assert (=> b!4184954 m!4773853))

(declare-fun m!4773957 () Bool)

(assert (=> b!4184954 m!4773957))

(assert (=> b!4184697 d!1235038))

(declare-fun b!4184959 () Bool)

(declare-fun e!2597997 () Bool)

(assert (=> b!4184959 (= e!2597997 (>= (size!33735 input!3342) (size!33735 input!3342)))))

(declare-fun b!4184957 () Bool)

(declare-fun res!1716393 () Bool)

(declare-fun e!2597998 () Bool)

(assert (=> b!4184957 (=> (not res!1716393) (not e!2597998))))

(assert (=> b!4184957 (= res!1716393 (= (head!8880 input!3342) (head!8880 input!3342)))))

(declare-fun b!4184956 () Bool)

(declare-fun e!2597999 () Bool)

(assert (=> b!4184956 (= e!2597999 e!2597998)))

(declare-fun res!1716391 () Bool)

(assert (=> b!4184956 (=> (not res!1716391) (not e!2597998))))

(assert (=> b!4184956 (= res!1716391 (not ((_ is Nil!45933) input!3342)))))

(declare-fun d!1235040 () Bool)

(assert (=> d!1235040 e!2597997))

(declare-fun res!1716392 () Bool)

(assert (=> d!1235040 (=> res!1716392 e!2597997)))

(declare-fun lt!1490393 () Bool)

(assert (=> d!1235040 (= res!1716392 (not lt!1490393))))

(assert (=> d!1235040 (= lt!1490393 e!2597999)))

(declare-fun res!1716390 () Bool)

(assert (=> d!1235040 (=> res!1716390 e!2597999)))

(assert (=> d!1235040 (= res!1716390 ((_ is Nil!45933) input!3342))))

(assert (=> d!1235040 (= (isPrefix!4503 input!3342 input!3342) lt!1490393)))

(declare-fun b!4184958 () Bool)

(assert (=> b!4184958 (= e!2597998 (isPrefix!4503 (tail!6727 input!3342) (tail!6727 input!3342)))))

(assert (= (and d!1235040 (not res!1716390)) b!4184956))

(assert (= (and b!4184956 res!1716391) b!4184957))

(assert (= (and b!4184957 res!1716393) b!4184958))

(assert (= (and d!1235040 (not res!1716392)) b!4184959))

(assert (=> b!4184959 m!4773665))

(assert (=> b!4184959 m!4773665))

(assert (=> b!4184957 m!4773849))

(assert (=> b!4184957 m!4773849))

(assert (=> b!4184958 m!4773853))

(assert (=> b!4184958 m!4773853))

(assert (=> b!4184958 m!4773853))

(assert (=> b!4184958 m!4773853))

(declare-fun m!4773959 () Bool)

(assert (=> b!4184958 m!4773959))

(assert (=> b!4184697 d!1235040))

(declare-fun d!1235042 () Bool)

(declare-fun fromListB!2595 (List!46057) BalanceConc!27308)

(assert (=> d!1235042 (= (seqFromList!5671 p!2959) (fromListB!2595 p!2959))))

(declare-fun bs!596502 () Bool)

(assert (= bs!596502 d!1235042))

(declare-fun m!4773961 () Bool)

(assert (=> bs!596502 m!4773961))

(assert (=> b!4184697 d!1235042))

(declare-fun d!1235044 () Bool)

(assert (=> d!1235044 (isPrefix!4503 input!3342 input!3342)))

(declare-fun lt!1490396 () Unit!65029)

(declare-fun choose!25618 (List!46057 List!46057) Unit!65029)

(assert (=> d!1235044 (= lt!1490396 (choose!25618 input!3342 input!3342))))

(assert (=> d!1235044 (= (lemmaIsPrefixRefl!2932 input!3342 input!3342) lt!1490396)))

(declare-fun bs!596503 () Bool)

(assert (= bs!596503 d!1235044))

(assert (=> bs!596503 m!4773679))

(declare-fun m!4773963 () Bool)

(assert (=> bs!596503 m!4773963))

(assert (=> b!4184697 d!1235044))

(declare-fun b!4185159 () Bool)

(declare-fun e!2598114 () Bool)

(assert (=> b!4185159 (= e!2598114 true)))

(declare-fun d!1235046 () Bool)

(assert (=> d!1235046 e!2598114))

(assert (= d!1235046 b!4185159))

(declare-fun order!24265 () Int)

(declare-fun lambda!129439 () Int)

(declare-fun order!24267 () Int)

(declare-fun dynLambda!19735 (Int Int) Int)

(declare-fun dynLambda!19736 (Int Int) Int)

(assert (=> b!4185159 (< (dynLambda!19735 order!24265 (toValue!10342 (transformation!7646 r!4142))) (dynLambda!19736 order!24267 lambda!129439))))

(declare-fun order!24269 () Int)

(declare-fun dynLambda!19737 (Int Int) Int)

(assert (=> b!4185159 (< (dynLambda!19737 order!24269 (toChars!10201 (transformation!7646 r!4142))) (dynLambda!19736 order!24267 lambda!129439))))

(declare-fun dynLambda!19738 (Int TokenValue!7876) BalanceConc!27308)

(declare-fun dynLambda!19739 (Int BalanceConc!27308) TokenValue!7876)

(assert (=> d!1235046 (= (list!16590 (dynLambda!19738 (toChars!10201 (transformation!7646 r!4142)) (dynLambda!19739 (toValue!10342 (transformation!7646 r!4142)) lt!1490296))) (list!16590 lt!1490296))))

(declare-fun lt!1490445 () Unit!65029)

(declare-fun ForallOf!1046 (Int BalanceConc!27308) Unit!65029)

(assert (=> d!1235046 (= lt!1490445 (ForallOf!1046 lambda!129439 lt!1490296))))

(assert (=> d!1235046 (= (lemmaSemiInverse!2412 (transformation!7646 r!4142) lt!1490296) lt!1490445)))

(declare-fun b_lambda!123057 () Bool)

(assert (=> (not b_lambda!123057) (not d!1235046)))

(declare-fun t!345536 () Bool)

(declare-fun tb!250691 () Bool)

(assert (=> (and b!4184681 (= (toChars!10201 (transformation!7646 (h!51355 rules!3843))) (toChars!10201 (transformation!7646 r!4142))) t!345536) tb!250691))

(declare-fun e!2598117 () Bool)

(declare-fun b!4185164 () Bool)

(declare-fun tp!1278927 () Bool)

(declare-fun inv!60484 (Conc!13857) Bool)

(assert (=> b!4185164 (= e!2598117 (and (inv!60484 (c!714478 (dynLambda!19738 (toChars!10201 (transformation!7646 r!4142)) (dynLambda!19739 (toValue!10342 (transformation!7646 r!4142)) lt!1490296)))) tp!1278927))))

(declare-fun result!305466 () Bool)

(declare-fun inv!60485 (BalanceConc!27308) Bool)

(assert (=> tb!250691 (= result!305466 (and (inv!60485 (dynLambda!19738 (toChars!10201 (transformation!7646 r!4142)) (dynLambda!19739 (toValue!10342 (transformation!7646 r!4142)) lt!1490296))) e!2598117))))

(assert (= tb!250691 b!4185164))

(declare-fun m!4774157 () Bool)

(assert (=> b!4185164 m!4774157))

(declare-fun m!4774159 () Bool)

(assert (=> tb!250691 m!4774159))

(assert (=> d!1235046 t!345536))

(declare-fun b_and!327681 () Bool)

(assert (= b_and!327643 (and (=> t!345536 result!305466) b_and!327681)))

(declare-fun t!345538 () Bool)

(declare-fun tb!250693 () Bool)

(assert (=> (and b!4184688 (= (toChars!10201 (transformation!7646 r!4142)) (toChars!10201 (transformation!7646 r!4142))) t!345538) tb!250693))

(declare-fun result!305470 () Bool)

(assert (= result!305470 result!305466))

(assert (=> d!1235046 t!345538))

(declare-fun b_and!327683 () Bool)

(assert (= b_and!327647 (and (=> t!345538 result!305470) b_and!327683)))

(declare-fun tb!250695 () Bool)

(declare-fun t!345540 () Bool)

(assert (=> (and b!4184698 (= (toChars!10201 (transformation!7646 rBis!167)) (toChars!10201 (transformation!7646 r!4142))) t!345540) tb!250695))

(declare-fun result!305472 () Bool)

(assert (= result!305472 result!305466))

(assert (=> d!1235046 t!345540))

(declare-fun b_and!327685 () Bool)

(assert (= b_and!327651 (and (=> t!345540 result!305472) b_and!327685)))

(declare-fun b_lambda!123059 () Bool)

(assert (=> (not b_lambda!123059) (not d!1235046)))

(declare-fun t!345542 () Bool)

(declare-fun tb!250697 () Bool)

(assert (=> (and b!4184681 (= (toValue!10342 (transformation!7646 (h!51355 rules!3843))) (toValue!10342 (transformation!7646 r!4142))) t!345542) tb!250697))

(declare-fun result!305474 () Bool)

(declare-fun inv!21 (TokenValue!7876) Bool)

(assert (=> tb!250697 (= result!305474 (inv!21 (dynLambda!19739 (toValue!10342 (transformation!7646 r!4142)) lt!1490296)))))

(declare-fun m!4774161 () Bool)

(assert (=> tb!250697 m!4774161))

(assert (=> d!1235046 t!345542))

(declare-fun b_and!327687 () Bool)

(assert (= b_and!327641 (and (=> t!345542 result!305474) b_and!327687)))

(declare-fun t!345544 () Bool)

(declare-fun tb!250699 () Bool)

(assert (=> (and b!4184688 (= (toValue!10342 (transformation!7646 r!4142)) (toValue!10342 (transformation!7646 r!4142))) t!345544) tb!250699))

(declare-fun result!305478 () Bool)

(assert (= result!305478 result!305474))

(assert (=> d!1235046 t!345544))

(declare-fun b_and!327689 () Bool)

(assert (= b_and!327645 (and (=> t!345544 result!305478) b_and!327689)))

(declare-fun t!345546 () Bool)

(declare-fun tb!250701 () Bool)

(assert (=> (and b!4184698 (= (toValue!10342 (transformation!7646 rBis!167)) (toValue!10342 (transformation!7646 r!4142))) t!345546) tb!250701))

(declare-fun result!305480 () Bool)

(assert (= result!305480 result!305474))

(assert (=> d!1235046 t!345546))

(declare-fun b_and!327691 () Bool)

(assert (= b_and!327649 (and (=> t!345546 result!305480) b_and!327691)))

(declare-fun m!4774163 () Bool)

(assert (=> d!1235046 m!4774163))

(declare-fun m!4774165 () Bool)

(assert (=> d!1235046 m!4774165))

(declare-fun m!4774167 () Bool)

(assert (=> d!1235046 m!4774167))

(declare-fun m!4774169 () Bool)

(assert (=> d!1235046 m!4774169))

(declare-fun m!4774171 () Bool)

(assert (=> d!1235046 m!4774171))

(assert (=> d!1235046 m!4774165))

(assert (=> d!1235046 m!4774167))

(assert (=> b!4184697 d!1235046))

(declare-fun d!1235098 () Bool)

(declare-fun lt!1490446 () Int)

(assert (=> d!1235098 (>= lt!1490446 0)))

(declare-fun e!2598121 () Int)

(assert (=> d!1235098 (= lt!1490446 e!2598121)))

(declare-fun c!714547 () Bool)

(assert (=> d!1235098 (= c!714547 ((_ is Nil!45933) p!2959))))

(assert (=> d!1235098 (= (size!33735 p!2959) lt!1490446)))

(declare-fun b!4185167 () Bool)

(assert (=> b!4185167 (= e!2598121 0)))

(declare-fun b!4185168 () Bool)

(assert (=> b!4185168 (= e!2598121 (+ 1 (size!33735 (t!345508 p!2959))))))

(assert (= (and d!1235098 c!714547) b!4185167))

(assert (= (and d!1235098 (not c!714547)) b!4185168))

(declare-fun m!4774173 () Bool)

(assert (=> b!4185168 m!4774173))

(assert (=> b!4184697 d!1235098))

(declare-fun b!4185169 () Bool)

(declare-fun e!2598123 () Bool)

(declare-fun lt!1490449 () Option!9840)

(assert (=> b!4185169 (= e!2598123 (= (size!33734 (_1!25005 (get!14928 lt!1490449))) (size!33735 (originalCharacters!8034 (_1!25005 (get!14928 lt!1490449))))))))

(declare-fun b!4185170 () Bool)

(declare-fun e!2598125 () Bool)

(assert (=> b!4185170 (= e!2598125 (matchR!6290 (regex!7646 r!4142) (_1!25007 (findLongestMatchInner!1593 (regex!7646 r!4142) Nil!45933 (size!33735 Nil!45933) input!3342 input!3342 (size!33735 input!3342)))))))

(declare-fun b!4185171 () Bool)

(declare-fun e!2598122 () Option!9840)

(declare-fun lt!1490451 () tuple2!43746)

(assert (=> b!4185171 (= e!2598122 (Some!9839 (tuple2!43743 (Token!14007 (apply!10611 (transformation!7646 r!4142) (seqFromList!5671 (_1!25007 lt!1490451))) r!4142 (size!33737 (seqFromList!5671 (_1!25007 lt!1490451))) (_1!25007 lt!1490451)) (_2!25007 lt!1490451))))))

(declare-fun lt!1490448 () Unit!65029)

(assert (=> b!4185171 (= lt!1490448 (longestMatchIsAcceptedByMatchOrIsEmpty!1566 (regex!7646 r!4142) input!3342))))

(declare-fun res!1716480 () Bool)

(assert (=> b!4185171 (= res!1716480 (isEmpty!27185 (_1!25007 (findLongestMatchInner!1593 (regex!7646 r!4142) Nil!45933 (size!33735 Nil!45933) input!3342 input!3342 (size!33735 input!3342)))))))

(assert (=> b!4185171 (=> res!1716480 e!2598125)))

(assert (=> b!4185171 e!2598125))

(declare-fun lt!1490447 () Unit!65029)

(assert (=> b!4185171 (= lt!1490447 lt!1490448)))

(declare-fun lt!1490450 () Unit!65029)

(assert (=> b!4185171 (= lt!1490450 (lemmaSemiInverse!2412 (transformation!7646 r!4142) (seqFromList!5671 (_1!25007 lt!1490451))))))

(declare-fun b!4185172 () Bool)

(declare-fun e!2598124 () Bool)

(assert (=> b!4185172 (= e!2598124 e!2598123)))

(declare-fun res!1716481 () Bool)

(assert (=> b!4185172 (=> (not res!1716481) (not e!2598123))))

(assert (=> b!4185172 (= res!1716481 (matchR!6290 (regex!7646 r!4142) (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490449))))))))

(declare-fun b!4185173 () Bool)

(assert (=> b!4185173 (= e!2598122 None!9839)))

(declare-fun b!4185174 () Bool)

(declare-fun res!1716482 () Bool)

(assert (=> b!4185174 (=> (not res!1716482) (not e!2598123))))

(assert (=> b!4185174 (= res!1716482 (= (value!238443 (_1!25005 (get!14928 lt!1490449))) (apply!10611 (transformation!7646 (rule!10714 (_1!25005 (get!14928 lt!1490449)))) (seqFromList!5671 (originalCharacters!8034 (_1!25005 (get!14928 lt!1490449)))))))))

(declare-fun b!4185175 () Bool)

(declare-fun res!1716483 () Bool)

(assert (=> b!4185175 (=> (not res!1716483) (not e!2598123))))

(assert (=> b!4185175 (= res!1716483 (= (++!11718 (list!16590 (charsOf!5081 (_1!25005 (get!14928 lt!1490449)))) (_2!25005 (get!14928 lt!1490449))) input!3342))))

(declare-fun b!4185176 () Bool)

(declare-fun res!1716484 () Bool)

(assert (=> b!4185176 (=> (not res!1716484) (not e!2598123))))

(assert (=> b!4185176 (= res!1716484 (< (size!33735 (_2!25005 (get!14928 lt!1490449))) (size!33735 input!3342)))))

(declare-fun b!4185177 () Bool)

(declare-fun res!1716485 () Bool)

(assert (=> b!4185177 (=> (not res!1716485) (not e!2598123))))

(assert (=> b!4185177 (= res!1716485 (= (rule!10714 (_1!25005 (get!14928 lt!1490449))) r!4142))))

(declare-fun d!1235100 () Bool)

(assert (=> d!1235100 e!2598124))

(declare-fun res!1716486 () Bool)

(assert (=> d!1235100 (=> res!1716486 e!2598124)))

(assert (=> d!1235100 (= res!1716486 (isEmpty!27182 lt!1490449))))

(assert (=> d!1235100 (= lt!1490449 e!2598122)))

(declare-fun c!714548 () Bool)

(assert (=> d!1235100 (= c!714548 (isEmpty!27185 (_1!25007 lt!1490451)))))

(assert (=> d!1235100 (= lt!1490451 (findLongestMatch!1506 (regex!7646 r!4142) input!3342))))

(assert (=> d!1235100 (ruleValid!3364 thiss!25986 r!4142)))

(assert (=> d!1235100 (= (maxPrefixOneRule!3248 thiss!25986 r!4142 input!3342) lt!1490449)))

(assert (= (and d!1235100 c!714548) b!4185173))

(assert (= (and d!1235100 (not c!714548)) b!4185171))

(assert (= (and b!4185171 (not res!1716480)) b!4185170))

(assert (= (and d!1235100 (not res!1716486)) b!4185172))

(assert (= (and b!4185172 res!1716481) b!4185175))

(assert (= (and b!4185175 res!1716483) b!4185176))

(assert (= (and b!4185176 res!1716484) b!4185177))

(assert (= (and b!4185177 res!1716485) b!4185174))

(assert (= (and b!4185174 res!1716482) b!4185169))

(declare-fun m!4774175 () Bool)

(assert (=> b!4185177 m!4774175))

(declare-fun m!4774177 () Bool)

(assert (=> d!1235100 m!4774177))

(declare-fun m!4774179 () Bool)

(assert (=> d!1235100 m!4774179))

(declare-fun m!4774181 () Bool)

(assert (=> d!1235100 m!4774181))

(assert (=> d!1235100 m!4773705))

(assert (=> b!4185171 m!4773883))

(assert (=> b!4185171 m!4773665))

(declare-fun m!4774183 () Bool)

(assert (=> b!4185171 m!4774183))

(declare-fun m!4774185 () Bool)

(assert (=> b!4185171 m!4774185))

(assert (=> b!4185171 m!4774185))

(declare-fun m!4774187 () Bool)

(assert (=> b!4185171 m!4774187))

(assert (=> b!4185171 m!4773665))

(assert (=> b!4185171 m!4774185))

(declare-fun m!4774189 () Bool)

(assert (=> b!4185171 m!4774189))

(assert (=> b!4185171 m!4774185))

(declare-fun m!4774191 () Bool)

(assert (=> b!4185171 m!4774191))

(assert (=> b!4185171 m!4773883))

(declare-fun m!4774193 () Bool)

(assert (=> b!4185171 m!4774193))

(declare-fun m!4774195 () Bool)

(assert (=> b!4185171 m!4774195))

(assert (=> b!4185170 m!4773883))

(assert (=> b!4185170 m!4773665))

(assert (=> b!4185170 m!4773883))

(assert (=> b!4185170 m!4773665))

(assert (=> b!4185170 m!4774183))

(declare-fun m!4774197 () Bool)

(assert (=> b!4185170 m!4774197))

(assert (=> b!4185174 m!4774175))

(declare-fun m!4774199 () Bool)

(assert (=> b!4185174 m!4774199))

(assert (=> b!4185174 m!4774199))

(declare-fun m!4774201 () Bool)

(assert (=> b!4185174 m!4774201))

(assert (=> b!4185176 m!4774175))

(declare-fun m!4774203 () Bool)

(assert (=> b!4185176 m!4774203))

(assert (=> b!4185176 m!4773665))

(assert (=> b!4185175 m!4774175))

(declare-fun m!4774205 () Bool)

(assert (=> b!4185175 m!4774205))

(assert (=> b!4185175 m!4774205))

(declare-fun m!4774207 () Bool)

(assert (=> b!4185175 m!4774207))

(assert (=> b!4185175 m!4774207))

(declare-fun m!4774209 () Bool)

(assert (=> b!4185175 m!4774209))

(assert (=> b!4185169 m!4774175))

(declare-fun m!4774211 () Bool)

(assert (=> b!4185169 m!4774211))

(assert (=> b!4185172 m!4774175))

(assert (=> b!4185172 m!4774205))

(assert (=> b!4185172 m!4774205))

(assert (=> b!4185172 m!4774207))

(assert (=> b!4185172 m!4774207))

(declare-fun m!4774213 () Bool)

(assert (=> b!4185172 m!4774213))

(assert (=> b!4184697 d!1235100))

(declare-fun d!1235102 () Bool)

(assert (=> d!1235102 (= (apply!10611 (transformation!7646 r!4142) lt!1490296) (dynLambda!19739 (toValue!10342 (transformation!7646 r!4142)) lt!1490296))))

(declare-fun b_lambda!123061 () Bool)

(assert (=> (not b_lambda!123061) (not d!1235102)))

(assert (=> d!1235102 t!345542))

(declare-fun b_and!327693 () Bool)

(assert (= b_and!327687 (and (=> t!345542 result!305474) b_and!327693)))

(assert (=> d!1235102 t!345544))

(declare-fun b_and!327695 () Bool)

(assert (= b_and!327689 (and (=> t!345544 result!305478) b_and!327695)))

(assert (=> d!1235102 t!345546))

(declare-fun b_and!327697 () Bool)

(assert (= b_and!327691 (and (=> t!345546 result!305480) b_and!327697)))

(assert (=> d!1235102 m!4774165))

(assert (=> b!4184697 d!1235102))

(declare-fun b!4185181 () Bool)

(declare-fun e!2598126 () Bool)

(assert (=> b!4185181 (= e!2598126 (>= (size!33735 (++!11718 lt!1490297 (_2!25005 lt!1490291))) (size!33735 lt!1490297)))))

(declare-fun b!4185179 () Bool)

(declare-fun res!1716490 () Bool)

(declare-fun e!2598127 () Bool)

(assert (=> b!4185179 (=> (not res!1716490) (not e!2598127))))

(assert (=> b!4185179 (= res!1716490 (= (head!8880 lt!1490297) (head!8880 (++!11718 lt!1490297 (_2!25005 lt!1490291)))))))

(declare-fun b!4185178 () Bool)

(declare-fun e!2598128 () Bool)

(assert (=> b!4185178 (= e!2598128 e!2598127)))

(declare-fun res!1716488 () Bool)

(assert (=> b!4185178 (=> (not res!1716488) (not e!2598127))))

(assert (=> b!4185178 (= res!1716488 (not ((_ is Nil!45933) (++!11718 lt!1490297 (_2!25005 lt!1490291)))))))

(declare-fun d!1235104 () Bool)

(assert (=> d!1235104 e!2598126))

(declare-fun res!1716489 () Bool)

(assert (=> d!1235104 (=> res!1716489 e!2598126)))

(declare-fun lt!1490452 () Bool)

(assert (=> d!1235104 (= res!1716489 (not lt!1490452))))

(assert (=> d!1235104 (= lt!1490452 e!2598128)))

(declare-fun res!1716487 () Bool)

(assert (=> d!1235104 (=> res!1716487 e!2598128)))

(assert (=> d!1235104 (= res!1716487 ((_ is Nil!45933) lt!1490297))))

(assert (=> d!1235104 (= (isPrefix!4503 lt!1490297 (++!11718 lt!1490297 (_2!25005 lt!1490291))) lt!1490452)))

(declare-fun b!4185180 () Bool)

(assert (=> b!4185180 (= e!2598127 (isPrefix!4503 (tail!6727 lt!1490297) (tail!6727 (++!11718 lt!1490297 (_2!25005 lt!1490291)))))))

(assert (= (and d!1235104 (not res!1716487)) b!4185178))

(assert (= (and b!4185178 res!1716488) b!4185179))

(assert (= (and b!4185179 res!1716490) b!4185180))

(assert (= (and d!1235104 (not res!1716489)) b!4185181))

(assert (=> b!4185181 m!4773717))

(declare-fun m!4774215 () Bool)

(assert (=> b!4185181 m!4774215))

(declare-fun m!4774217 () Bool)

(assert (=> b!4185181 m!4774217))

(declare-fun m!4774219 () Bool)

(assert (=> b!4185179 m!4774219))

(assert (=> b!4185179 m!4773717))

(declare-fun m!4774221 () Bool)

(assert (=> b!4185179 m!4774221))

(declare-fun m!4774223 () Bool)

(assert (=> b!4185180 m!4774223))

(assert (=> b!4185180 m!4773717))

(declare-fun m!4774225 () Bool)

(assert (=> b!4185180 m!4774225))

(assert (=> b!4185180 m!4774223))

(assert (=> b!4185180 m!4774225))

(declare-fun m!4774227 () Bool)

(assert (=> b!4185180 m!4774227))

(assert (=> b!4184696 d!1235104))

(declare-fun d!1235106 () Bool)

(assert (=> d!1235106 (= (get!14928 lt!1490292) (v!40655 lt!1490292))))

(assert (=> b!4184696 d!1235106))

(declare-fun d!1235108 () Bool)

(declare-fun lt!1490455 () BalanceConc!27308)

(assert (=> d!1235108 (= (list!16590 lt!1490455) (originalCharacters!8034 (_1!25005 lt!1490291)))))

(assert (=> d!1235108 (= lt!1490455 (dynLambda!19738 (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291)))) (value!238443 (_1!25005 lt!1490291))))))

(assert (=> d!1235108 (= (charsOf!5081 (_1!25005 lt!1490291)) lt!1490455)))

(declare-fun b_lambda!123063 () Bool)

(assert (=> (not b_lambda!123063) (not d!1235108)))

(declare-fun tb!250703 () Bool)

(declare-fun t!345548 () Bool)

(assert (=> (and b!4184681 (= (toChars!10201 (transformation!7646 (h!51355 rules!3843))) (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291))))) t!345548) tb!250703))

(declare-fun b!4185182 () Bool)

(declare-fun e!2598129 () Bool)

(declare-fun tp!1278928 () Bool)

(assert (=> b!4185182 (= e!2598129 (and (inv!60484 (c!714478 (dynLambda!19738 (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291)))) (value!238443 (_1!25005 lt!1490291))))) tp!1278928))))

(declare-fun result!305482 () Bool)

(assert (=> tb!250703 (= result!305482 (and (inv!60485 (dynLambda!19738 (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291)))) (value!238443 (_1!25005 lt!1490291)))) e!2598129))))

(assert (= tb!250703 b!4185182))

(declare-fun m!4774229 () Bool)

(assert (=> b!4185182 m!4774229))

(declare-fun m!4774231 () Bool)

(assert (=> tb!250703 m!4774231))

(assert (=> d!1235108 t!345548))

(declare-fun b_and!327699 () Bool)

(assert (= b_and!327681 (and (=> t!345548 result!305482) b_and!327699)))

(declare-fun tb!250705 () Bool)

(declare-fun t!345550 () Bool)

(assert (=> (and b!4184688 (= (toChars!10201 (transformation!7646 r!4142)) (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291))))) t!345550) tb!250705))

(declare-fun result!305484 () Bool)

(assert (= result!305484 result!305482))

(assert (=> d!1235108 t!345550))

(declare-fun b_and!327701 () Bool)

(assert (= b_and!327683 (and (=> t!345550 result!305484) b_and!327701)))

(declare-fun tb!250707 () Bool)

(declare-fun t!345552 () Bool)

(assert (=> (and b!4184698 (= (toChars!10201 (transformation!7646 rBis!167)) (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291))))) t!345552) tb!250707))

(declare-fun result!305486 () Bool)

(assert (= result!305486 result!305482))

(assert (=> d!1235108 t!345552))

(declare-fun b_and!327703 () Bool)

(assert (= b_and!327685 (and (=> t!345552 result!305486) b_and!327703)))

(declare-fun m!4774233 () Bool)

(assert (=> d!1235108 m!4774233))

(declare-fun m!4774235 () Bool)

(assert (=> d!1235108 m!4774235))

(assert (=> b!4184696 d!1235108))

(declare-fun d!1235110 () Bool)

(assert (=> d!1235110 (isPrefix!4503 lt!1490297 (++!11718 lt!1490297 (_2!25005 lt!1490291)))))

(declare-fun lt!1490458 () Unit!65029)

(declare-fun choose!25619 (List!46057 List!46057) Unit!65029)

(assert (=> d!1235110 (= lt!1490458 (choose!25619 lt!1490297 (_2!25005 lt!1490291)))))

(assert (=> d!1235110 (= (lemmaConcatTwoListThenFirstIsPrefix!3000 lt!1490297 (_2!25005 lt!1490291)) lt!1490458)))

(declare-fun bs!596508 () Bool)

(assert (= bs!596508 d!1235110))

(assert (=> bs!596508 m!4773717))

(assert (=> bs!596508 m!4773717))

(assert (=> bs!596508 m!4773727))

(declare-fun m!4774237 () Bool)

(assert (=> bs!596508 m!4774237))

(assert (=> b!4184696 d!1235110))

(declare-fun d!1235112 () Bool)

(declare-fun list!16592 (Conc!13857) List!46057)

(assert (=> d!1235112 (= (list!16590 (charsOf!5081 (_1!25005 lt!1490291))) (list!16592 (c!714478 (charsOf!5081 (_1!25005 lt!1490291)))))))

(declare-fun bs!596509 () Bool)

(assert (= bs!596509 d!1235112))

(declare-fun m!4774239 () Bool)

(assert (=> bs!596509 m!4774239))

(assert (=> b!4184696 d!1235112))

(declare-fun b!4185185 () Bool)

(declare-fun res!1716491 () Bool)

(declare-fun e!2598131 () Bool)

(assert (=> b!4185185 (=> (not res!1716491) (not e!2598131))))

(declare-fun lt!1490459 () List!46057)

(assert (=> b!4185185 (= res!1716491 (= (size!33735 lt!1490459) (+ (size!33735 lt!1490297) (size!33735 (_2!25005 lt!1490291)))))))

(declare-fun b!4185183 () Bool)

(declare-fun e!2598130 () List!46057)

(assert (=> b!4185183 (= e!2598130 (_2!25005 lt!1490291))))

(declare-fun b!4185184 () Bool)

(assert (=> b!4185184 (= e!2598130 (Cons!45933 (h!51353 lt!1490297) (++!11718 (t!345508 lt!1490297) (_2!25005 lt!1490291))))))

(declare-fun b!4185186 () Bool)

(assert (=> b!4185186 (= e!2598131 (or (not (= (_2!25005 lt!1490291) Nil!45933)) (= lt!1490459 lt!1490297)))))

(declare-fun d!1235114 () Bool)

(assert (=> d!1235114 e!2598131))

(declare-fun res!1716492 () Bool)

(assert (=> d!1235114 (=> (not res!1716492) (not e!2598131))))

(assert (=> d!1235114 (= res!1716492 (= (content!7142 lt!1490459) ((_ map or) (content!7142 lt!1490297) (content!7142 (_2!25005 lt!1490291)))))))

(assert (=> d!1235114 (= lt!1490459 e!2598130)))

(declare-fun c!714549 () Bool)

(assert (=> d!1235114 (= c!714549 ((_ is Nil!45933) lt!1490297))))

(assert (=> d!1235114 (= (++!11718 lt!1490297 (_2!25005 lt!1490291)) lt!1490459)))

(assert (= (and d!1235114 c!714549) b!4185183))

(assert (= (and d!1235114 (not c!714549)) b!4185184))

(assert (= (and d!1235114 res!1716492) b!4185185))

(assert (= (and b!4185185 res!1716491) b!4185186))

(declare-fun m!4774241 () Bool)

(assert (=> b!4185185 m!4774241))

(assert (=> b!4185185 m!4774217))

(declare-fun m!4774243 () Bool)

(assert (=> b!4185185 m!4774243))

(declare-fun m!4774245 () Bool)

(assert (=> b!4185184 m!4774245))

(declare-fun m!4774247 () Bool)

(assert (=> d!1235114 m!4774247))

(declare-fun m!4774249 () Bool)

(assert (=> d!1235114 m!4774249))

(declare-fun m!4774251 () Bool)

(assert (=> d!1235114 m!4774251))

(assert (=> b!4184696 d!1235114))

(declare-fun b!4185190 () Bool)

(declare-fun e!2598132 () Bool)

(assert (=> b!4185190 (= e!2598132 (>= (size!33735 input!3342) (size!33735 p!2959)))))

(declare-fun b!4185188 () Bool)

(declare-fun res!1716496 () Bool)

(declare-fun e!2598133 () Bool)

(assert (=> b!4185188 (=> (not res!1716496) (not e!2598133))))

(assert (=> b!4185188 (= res!1716496 (= (head!8880 p!2959) (head!8880 input!3342)))))

(declare-fun b!4185187 () Bool)

(declare-fun e!2598134 () Bool)

(assert (=> b!4185187 (= e!2598134 e!2598133)))

(declare-fun res!1716494 () Bool)

(assert (=> b!4185187 (=> (not res!1716494) (not e!2598133))))

(assert (=> b!4185187 (= res!1716494 (not ((_ is Nil!45933) input!3342)))))

(declare-fun d!1235116 () Bool)

(assert (=> d!1235116 e!2598132))

(declare-fun res!1716495 () Bool)

(assert (=> d!1235116 (=> res!1716495 e!2598132)))

(declare-fun lt!1490460 () Bool)

(assert (=> d!1235116 (= res!1716495 (not lt!1490460))))

(assert (=> d!1235116 (= lt!1490460 e!2598134)))

(declare-fun res!1716493 () Bool)

(assert (=> d!1235116 (=> res!1716493 e!2598134)))

(assert (=> d!1235116 (= res!1716493 ((_ is Nil!45933) p!2959))))

(assert (=> d!1235116 (= (isPrefix!4503 p!2959 input!3342) lt!1490460)))

(declare-fun b!4185189 () Bool)

(assert (=> b!4185189 (= e!2598133 (isPrefix!4503 (tail!6727 p!2959) (tail!6727 input!3342)))))

(assert (= (and d!1235116 (not res!1716493)) b!4185187))

(assert (= (and b!4185187 res!1716494) b!4185188))

(assert (= (and b!4185188 res!1716496) b!4185189))

(assert (= (and d!1235116 (not res!1716495)) b!4185190))

(assert (=> b!4185190 m!4773665))

(assert (=> b!4185190 m!4773687))

(assert (=> b!4185188 m!4773949))

(assert (=> b!4185188 m!4773849))

(assert (=> b!4185189 m!4773943))

(assert (=> b!4185189 m!4773853))

(assert (=> b!4185189 m!4773943))

(assert (=> b!4185189 m!4773853))

(declare-fun m!4774253 () Bool)

(assert (=> b!4185189 m!4774253))

(assert (=> b!4184675 d!1235116))

(declare-fun b!4185201 () Bool)

(declare-fun e!2598137 () Bool)

(assert (=> b!4185201 (= e!2598137 tp_is_empty!22065)))

(assert (=> b!4184690 (= tp!1278867 e!2598137)))

(declare-fun b!4185202 () Bool)

(declare-fun tp!1278942 () Bool)

(declare-fun tp!1278939 () Bool)

(assert (=> b!4185202 (= e!2598137 (and tp!1278942 tp!1278939))))

(declare-fun b!4185204 () Bool)

(declare-fun tp!1278943 () Bool)

(declare-fun tp!1278940 () Bool)

(assert (=> b!4185204 (= e!2598137 (and tp!1278943 tp!1278940))))

(declare-fun b!4185203 () Bool)

(declare-fun tp!1278941 () Bool)

(assert (=> b!4185203 (= e!2598137 tp!1278941)))

(assert (= (and b!4184690 ((_ is ElementMatch!12551) (regex!7646 r!4142))) b!4185201))

(assert (= (and b!4184690 ((_ is Concat!20428) (regex!7646 r!4142))) b!4185202))

(assert (= (and b!4184690 ((_ is Star!12551) (regex!7646 r!4142))) b!4185203))

(assert (= (and b!4184690 ((_ is Union!12551) (regex!7646 r!4142))) b!4185204))

(declare-fun b!4185205 () Bool)

(declare-fun e!2598138 () Bool)

(assert (=> b!4185205 (= e!2598138 tp_is_empty!22065)))

(assert (=> b!4184684 (= tp!1278876 e!2598138)))

(declare-fun b!4185206 () Bool)

(declare-fun tp!1278947 () Bool)

(declare-fun tp!1278944 () Bool)

(assert (=> b!4185206 (= e!2598138 (and tp!1278947 tp!1278944))))

(declare-fun b!4185208 () Bool)

(declare-fun tp!1278948 () Bool)

(declare-fun tp!1278945 () Bool)

(assert (=> b!4185208 (= e!2598138 (and tp!1278948 tp!1278945))))

(declare-fun b!4185207 () Bool)

(declare-fun tp!1278946 () Bool)

(assert (=> b!4185207 (= e!2598138 tp!1278946)))

(assert (= (and b!4184684 ((_ is ElementMatch!12551) (regex!7646 rBis!167))) b!4185205))

(assert (= (and b!4184684 ((_ is Concat!20428) (regex!7646 rBis!167))) b!4185206))

(assert (= (and b!4184684 ((_ is Star!12551) (regex!7646 rBis!167))) b!4185207))

(assert (= (and b!4184684 ((_ is Union!12551) (regex!7646 rBis!167))) b!4185208))

(declare-fun b!4185213 () Bool)

(declare-fun e!2598141 () Bool)

(declare-fun tp!1278951 () Bool)

(assert (=> b!4185213 (= e!2598141 (and tp_is_empty!22065 tp!1278951))))

(assert (=> b!4184679 (= tp!1278874 e!2598141)))

(assert (= (and b!4184679 ((_ is Cons!45933) (t!345508 pBis!107))) b!4185213))

(declare-fun b!4185214 () Bool)

(declare-fun e!2598142 () Bool)

(assert (=> b!4185214 (= e!2598142 tp_is_empty!22065)))

(assert (=> b!4184699 (= tp!1278870 e!2598142)))

(declare-fun b!4185215 () Bool)

(declare-fun tp!1278955 () Bool)

(declare-fun tp!1278952 () Bool)

(assert (=> b!4185215 (= e!2598142 (and tp!1278955 tp!1278952))))

(declare-fun b!4185217 () Bool)

(declare-fun tp!1278956 () Bool)

(declare-fun tp!1278953 () Bool)

(assert (=> b!4185217 (= e!2598142 (and tp!1278956 tp!1278953))))

(declare-fun b!4185216 () Bool)

(declare-fun tp!1278954 () Bool)

(assert (=> b!4185216 (= e!2598142 tp!1278954)))

(assert (= (and b!4184699 ((_ is ElementMatch!12551) (regex!7646 (h!51355 rules!3843)))) b!4185214))

(assert (= (and b!4184699 ((_ is Concat!20428) (regex!7646 (h!51355 rules!3843)))) b!4185215))

(assert (= (and b!4184699 ((_ is Star!12551) (regex!7646 (h!51355 rules!3843)))) b!4185216))

(assert (= (and b!4184699 ((_ is Union!12551) (regex!7646 (h!51355 rules!3843)))) b!4185217))

(declare-fun b!4185218 () Bool)

(declare-fun e!2598143 () Bool)

(declare-fun tp!1278957 () Bool)

(assert (=> b!4185218 (= e!2598143 (and tp_is_empty!22065 tp!1278957))))

(assert (=> b!4184687 (= tp!1278872 e!2598143)))

(assert (= (and b!4184687 ((_ is Cons!45933) (t!345508 input!3342))) b!4185218))

(declare-fun b!4185229 () Bool)

(declare-fun b_free!121663 () Bool)

(declare-fun b_next!122367 () Bool)

(assert (=> b!4185229 (= b_free!121663 (not b_next!122367))))

(declare-fun tb!250709 () Bool)

(declare-fun t!345554 () Bool)

(assert (=> (and b!4185229 (= (toValue!10342 (transformation!7646 (h!51355 (t!345510 rules!3843)))) (toValue!10342 (transformation!7646 r!4142))) t!345554) tb!250709))

(declare-fun result!305494 () Bool)

(assert (= result!305494 result!305474))

(assert (=> d!1235046 t!345554))

(assert (=> d!1235102 t!345554))

(declare-fun b_and!327705 () Bool)

(declare-fun tp!1278966 () Bool)

(assert (=> b!4185229 (= tp!1278966 (and (=> t!345554 result!305494) b_and!327705))))

(declare-fun b_free!121665 () Bool)

(declare-fun b_next!122369 () Bool)

(assert (=> b!4185229 (= b_free!121665 (not b_next!122369))))

(declare-fun tb!250711 () Bool)

(declare-fun t!345556 () Bool)

(assert (=> (and b!4185229 (= (toChars!10201 (transformation!7646 (h!51355 (t!345510 rules!3843)))) (toChars!10201 (transformation!7646 r!4142))) t!345556) tb!250711))

(declare-fun result!305496 () Bool)

(assert (= result!305496 result!305466))

(assert (=> d!1235046 t!345556))

(declare-fun t!345558 () Bool)

(declare-fun tb!250713 () Bool)

(assert (=> (and b!4185229 (= (toChars!10201 (transformation!7646 (h!51355 (t!345510 rules!3843)))) (toChars!10201 (transformation!7646 (rule!10714 (_1!25005 lt!1490291))))) t!345558) tb!250713))

(declare-fun result!305498 () Bool)

(assert (= result!305498 result!305482))

(assert (=> d!1235108 t!345558))

(declare-fun tp!1278969 () Bool)

(declare-fun b_and!327707 () Bool)

(assert (=> b!4185229 (= tp!1278969 (and (=> t!345556 result!305496) (=> t!345558 result!305498) b_and!327707))))

(declare-fun e!2598152 () Bool)

(assert (=> b!4185229 (= e!2598152 (and tp!1278966 tp!1278969))))

(declare-fun e!2598153 () Bool)

(declare-fun tp!1278968 () Bool)

(declare-fun b!4185228 () Bool)

(assert (=> b!4185228 (= e!2598153 (and tp!1278968 (inv!60479 (tag!8510 (h!51355 (t!345510 rules!3843)))) (inv!60481 (transformation!7646 (h!51355 (t!345510 rules!3843)))) e!2598152))))

(declare-fun b!4185227 () Bool)

(declare-fun e!2598154 () Bool)

(declare-fun tp!1278967 () Bool)

(assert (=> b!4185227 (= e!2598154 (and e!2598153 tp!1278967))))

(assert (=> b!4184686 (= tp!1278868 e!2598154)))

(assert (= b!4185228 b!4185229))

(assert (= b!4185227 b!4185228))

(assert (= (and b!4184686 ((_ is Cons!45935) (t!345510 rules!3843))) b!4185227))

(declare-fun m!4774255 () Bool)

(assert (=> b!4185228 m!4774255))

(declare-fun m!4774257 () Bool)

(assert (=> b!4185228 m!4774257))

(declare-fun b!4185230 () Bool)

(declare-fun e!2598156 () Bool)

(declare-fun tp!1278970 () Bool)

(assert (=> b!4185230 (= e!2598156 (and tp_is_empty!22065 tp!1278970))))

(assert (=> b!4184691 (= tp!1278875 e!2598156)))

(assert (= (and b!4184691 ((_ is Cons!45933) (t!345508 p!2959))) b!4185230))

(declare-fun b_lambda!123065 () Bool)

(assert (= b_lambda!123057 (or (and b!4184681 b_free!121649 (= (toChars!10201 (transformation!7646 (h!51355 rules!3843))) (toChars!10201 (transformation!7646 r!4142)))) (and b!4184688 b_free!121653) (and b!4184698 b_free!121657 (= (toChars!10201 (transformation!7646 rBis!167)) (toChars!10201 (transformation!7646 r!4142)))) (and b!4185229 b_free!121665 (= (toChars!10201 (transformation!7646 (h!51355 (t!345510 rules!3843)))) (toChars!10201 (transformation!7646 r!4142)))) b_lambda!123065)))

(declare-fun b_lambda!123067 () Bool)

(assert (= b_lambda!123059 (or (and b!4184681 b_free!121647 (= (toValue!10342 (transformation!7646 (h!51355 rules!3843))) (toValue!10342 (transformation!7646 r!4142)))) (and b!4184688 b_free!121651) (and b!4184698 b_free!121655 (= (toValue!10342 (transformation!7646 rBis!167)) (toValue!10342 (transformation!7646 r!4142)))) (and b!4185229 b_free!121663 (= (toValue!10342 (transformation!7646 (h!51355 (t!345510 rules!3843)))) (toValue!10342 (transformation!7646 r!4142)))) b_lambda!123067)))

(declare-fun b_lambda!123069 () Bool)

(assert (= b_lambda!123061 (or (and b!4184681 b_free!121647 (= (toValue!10342 (transformation!7646 (h!51355 rules!3843))) (toValue!10342 (transformation!7646 r!4142)))) (and b!4184688 b_free!121651) (and b!4184698 b_free!121655 (= (toValue!10342 (transformation!7646 rBis!167)) (toValue!10342 (transformation!7646 r!4142)))) (and b!4185229 b_free!121663 (= (toValue!10342 (transformation!7646 (h!51355 (t!345510 rules!3843)))) (toValue!10342 (transformation!7646 r!4142)))) b_lambda!123069)))

(check-sat b_and!327697 (not b_next!122357) (not b!4184942) (not b!4185182) (not b!4184731) b_and!327705 (not b_next!122353) (not b!4185179) (not b!4185203) (not b!4184822) (not b!4184863) (not b!4184954) tp_is_empty!22065 (not b!4185202) (not b!4184728) (not b!4184941) (not b!4185207) (not b!4184937) b_and!327699 (not d!1235032) (not b!4184823) (not b_next!122355) (not b!4184864) (not b!4185172) (not b!4185177) (not b!4185188) (not b!4184948) (not d!1235022) (not b!4185164) (not b!4184945) (not b!4184824) (not b_next!122359) (not b!4184810) (not b!4184904) (not b!4184867) (not d!1235042) (not b!4185171) (not b_lambda!123067) (not b!4184959) b_and!327707 (not bm!291929) (not b!4184860) (not d!1235018) (not d!1235108) (not b!4185170) (not b!4184837) (not d!1235008) (not bm!291917) (not bm!291926) (not tb!250697) (not b!4184877) (not d!1235016) (not b_next!122369) (not d!1235112) (not d!1235014) (not b!4185228) (not d!1234978) (not b!4185230) (not b!4185227) (not b_next!122361) b_and!327701 (not b!4185215) (not d!1234974) (not b!4185190) (not d!1235046) (not b!4184829) (not b!4184858) (not b!4184862) (not b!4185184) (not b!4184880) b_and!327695 (not b!4184808) (not d!1235100) (not b!4184857) (not b!4184878) (not b!4184835) (not b!4184859) (not b!4184836) (not d!1235114) (not b_lambda!123069) (not b!4185169) (not b!4185217) (not b!4185208) (not b!4184811) (not b_next!122367) (not b!4185175) (not d!1234982) (not tb!250703) (not d!1235038) (not b!4184809) (not b!4185176) (not b_next!122351) (not d!1235110) (not tb!250691) (not d!1234980) (not d!1235024) (not b!4184812) (not b!4185168) (not b!4184958) (not b!4185204) (not b!4184865) (not b!4184806) (not b!4185218) (not b!4184957) (not b!4184807) (not b!4185189) (not b_lambda!123063) (not b!4184946) (not b!4184826) b_and!327703 (not b!4185206) (not b!4185180) (not d!1235028) b_and!327693 (not b_lambda!123065) (not b!4185174) (not b!4185216) (not d!1235004) (not b!4184804) (not d!1235036) (not b!4185181) (not b!4184736) (not b!4185185) (not b!4185213) (not bm!291924) (not d!1235044))
(check-sat b_and!327699 (not b_next!122355) (not b_next!122359) b_and!327707 b_and!327697 (not b_next!122369) (not b_next!122357) b_and!327695 (not b_next!122367) (not b_next!122351) b_and!327703 b_and!327693 b_and!327705 (not b_next!122353) (not b_next!122361) b_and!327701)
