; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168486 () Bool)

(assert start!168486)

(declare-fun b!1719787 () Bool)

(declare-fun b_free!46827 () Bool)

(declare-fun b_next!47531 () Bool)

(assert (=> b!1719787 (= b_free!46827 (not b_next!47531))))

(declare-fun tp!491100 () Bool)

(declare-fun b_and!125403 () Bool)

(assert (=> b!1719787 (= tp!491100 b_and!125403)))

(declare-fun b_free!46829 () Bool)

(declare-fun b_next!47533 () Bool)

(assert (=> b!1719787 (= b_free!46829 (not b_next!47533))))

(declare-fun tp!491104 () Bool)

(declare-fun b_and!125405 () Bool)

(assert (=> b!1719787 (= tp!491104 b_and!125405)))

(declare-fun b!1719782 () Bool)

(declare-fun b_free!46831 () Bool)

(declare-fun b_next!47535 () Bool)

(assert (=> b!1719782 (= b_free!46831 (not b_next!47535))))

(declare-fun tp!491097 () Bool)

(declare-fun b_and!125407 () Bool)

(assert (=> b!1719782 (= tp!491097 b_and!125407)))

(declare-fun b_free!46833 () Bool)

(declare-fun b_next!47537 () Bool)

(assert (=> b!1719782 (= b_free!46833 (not b_next!47537))))

(declare-fun tp!491106 () Bool)

(declare-fun b_and!125409 () Bool)

(assert (=> b!1719782 (= tp!491106 b_and!125409)))

(declare-fun b!1719799 () Bool)

(declare-fun b_free!46835 () Bool)

(declare-fun b_next!47539 () Bool)

(assert (=> b!1719799 (= b_free!46835 (not b_next!47539))))

(declare-fun tp!491102 () Bool)

(declare-fun b_and!125411 () Bool)

(assert (=> b!1719799 (= tp!491102 b_and!125411)))

(declare-fun b_free!46837 () Bool)

(declare-fun b_next!47541 () Bool)

(assert (=> b!1719799 (= b_free!46837 (not b_next!47541))))

(declare-fun tp!491098 () Bool)

(declare-fun b_and!125413 () Bool)

(assert (=> b!1719799 (= tp!491098 b_and!125413)))

(declare-fun b!1719816 () Bool)

(declare-fun e!1099975 () Bool)

(assert (=> b!1719816 (= e!1099975 true)))

(declare-fun b!1719815 () Bool)

(declare-fun e!1099974 () Bool)

(assert (=> b!1719815 (= e!1099974 e!1099975)))

(declare-fun b!1719814 () Bool)

(declare-fun e!1099973 () Bool)

(assert (=> b!1719814 (= e!1099973 e!1099974)))

(declare-fun b!1719803 () Bool)

(assert (=> b!1719803 e!1099973))

(assert (= b!1719815 b!1719816))

(assert (= b!1719814 b!1719815))

(assert (= b!1719803 b!1719814))

(declare-datatypes ((List!18882 0))(
  ( (Nil!18812) (Cons!18812 (h!24213 (_ BitVec 16)) (t!159317 List!18882)) )
))
(declare-datatypes ((TokenValue!3421 0))(
  ( (FloatLiteralValue!6842 (text!24392 List!18882)) (TokenValueExt!3420 (__x!12144 Int)) (Broken!17105 (value!104580 List!18882)) (Object!3490) (End!3421) (Def!3421) (Underscore!3421) (Match!3421) (Else!3421) (Error!3421) (Case!3421) (If!3421) (Extends!3421) (Abstract!3421) (Class!3421) (Val!3421) (DelimiterValue!6842 (del!3481 List!18882)) (KeywordValue!3427 (value!104581 List!18882)) (CommentValue!6842 (value!104582 List!18882)) (WhitespaceValue!6842 (value!104583 List!18882)) (IndentationValue!3421 (value!104584 List!18882)) (String!21436) (Int32!3421) (Broken!17106 (value!104585 List!18882)) (Boolean!3422) (Unit!32650) (OperatorValue!3424 (op!3481 List!18882)) (IdentifierValue!6842 (value!104586 List!18882)) (IdentifierValue!6843 (value!104587 List!18882)) (WhitespaceValue!6843 (value!104588 List!18882)) (True!6842) (False!6842) (Broken!17107 (value!104589 List!18882)) (Broken!17108 (value!104590 List!18882)) (True!6843) (RightBrace!3421) (RightBracket!3421) (Colon!3421) (Null!3421) (Comma!3421) (LeftBracket!3421) (False!6843) (LeftBrace!3421) (ImaginaryLiteralValue!3421 (text!24393 List!18882)) (StringLiteralValue!10263 (value!104591 List!18882)) (EOFValue!3421 (value!104592 List!18882)) (IdentValue!3421 (value!104593 List!18882)) (DelimiterValue!6843 (value!104594 List!18882)) (DedentValue!3421 (value!104595 List!18882)) (NewLineValue!3421 (value!104596 List!18882)) (IntegerValue!10263 (value!104597 (_ BitVec 32)) (text!24394 List!18882)) (IntegerValue!10264 (value!104598 Int) (text!24395 List!18882)) (Times!3421) (Or!3421) (Equal!3421) (Minus!3421) (Broken!17109 (value!104599 List!18882)) (And!3421) (Div!3421) (LessEqual!3421) (Mod!3421) (Concat!8080) (Not!3421) (Plus!3421) (SpaceValue!3421 (value!104600 List!18882)) (IntegerValue!10265 (value!104601 Int) (text!24396 List!18882)) (StringLiteralValue!10264 (text!24397 List!18882)) (FloatLiteralValue!6843 (text!24398 List!18882)) (BytesLiteralValue!3421 (value!104602 List!18882)) (CommentValue!6843 (value!104603 List!18882)) (StringLiteralValue!10265 (value!104604 List!18882)) (ErrorTokenValue!3421 (msg!3482 List!18882)) )
))
(declare-datatypes ((C!9492 0))(
  ( (C!9493 (val!5342 Int)) )
))
(declare-datatypes ((List!18883 0))(
  ( (Nil!18813) (Cons!18813 (h!24214 C!9492) (t!159318 List!18883)) )
))
(declare-datatypes ((Regex!4659 0))(
  ( (ElementMatch!4659 (c!281478 C!9492)) (Concat!8081 (regOne!9830 Regex!4659) (regTwo!9830 Regex!4659)) (EmptyExpr!4659) (Star!4659 (reg!4988 Regex!4659)) (EmptyLang!4659) (Union!4659 (regOne!9831 Regex!4659) (regTwo!9831 Regex!4659)) )
))
(declare-datatypes ((String!21437 0))(
  ( (String!21438 (value!104605 String)) )
))
(declare-datatypes ((IArray!12519 0))(
  ( (IArray!12520 (innerList!6317 List!18883)) )
))
(declare-datatypes ((Conc!6257 0))(
  ( (Node!6257 (left!15008 Conc!6257) (right!15338 Conc!6257) (csize!12744 Int) (cheight!6468 Int)) (Leaf!9143 (xs!9133 IArray!12519) (csize!12745 Int)) (Empty!6257) )
))
(declare-datatypes ((BalanceConc!12458 0))(
  ( (BalanceConc!12459 (c!281479 Conc!6257)) )
))
(declare-datatypes ((TokenValueInjection!6502 0))(
  ( (TokenValueInjection!6503 (toValue!4838 Int) (toChars!4697 Int)) )
))
(declare-datatypes ((Rule!6462 0))(
  ( (Rule!6463 (regex!3331 Regex!4659) (tag!3639 String!21437) (isSeparator!3331 Bool) (transformation!3331 TokenValueInjection!6502)) )
))
(declare-datatypes ((Token!6228 0))(
  ( (Token!6229 (value!104606 TokenValue!3421) (rule!5275 Rule!6462) (size!14948 Int) (originalCharacters!4145 List!18883)) )
))
(declare-datatypes ((tuple2!18510 0))(
  ( (tuple2!18511 (_1!10657 Token!6228) (_2!10657 List!18883)) )
))
(declare-fun lt!657603 () tuple2!18510)

(declare-fun order!11437 () Int)

(declare-fun order!11435 () Int)

(declare-fun lambda!69080 () Int)

(declare-fun dynLambda!8640 (Int Int) Int)

(declare-fun dynLambda!8641 (Int Int) Int)

(assert (=> b!1719816 (< (dynLambda!8640 order!11435 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) (dynLambda!8641 order!11437 lambda!69080))))

(declare-fun order!11439 () Int)

(declare-fun dynLambda!8642 (Int Int) Int)

(assert (=> b!1719816 (< (dynLambda!8642 order!11439 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) (dynLambda!8641 order!11437 lambda!69080))))

(declare-fun b!1719777 () Bool)

(declare-fun e!1099945 () Bool)

(declare-fun e!1099958 () Bool)

(assert (=> b!1719777 (= e!1099945 e!1099958)))

(declare-fun res!771461 () Bool)

(assert (=> b!1719777 (=> (not res!771461) (not e!1099958))))

(declare-datatypes ((Option!3686 0))(
  ( (None!3685) (Some!3685 (v!25086 tuple2!18510)) )
))
(declare-fun lt!657602 () Option!3686)

(declare-fun isDefined!3029 (Option!3686) Bool)

(assert (=> b!1719777 (= res!771461 (isDefined!3029 lt!657602))))

(declare-datatypes ((LexerInterface!2960 0))(
  ( (LexerInterfaceExt!2957 (__x!12145 Int)) (Lexer!2958) )
))
(declare-fun thiss!24550 () LexerInterface!2960)

(declare-datatypes ((List!18884 0))(
  ( (Nil!18814) (Cons!18814 (h!24215 Rule!6462) (t!159319 List!18884)) )
))
(declare-fun rules!3447 () List!18884)

(declare-fun lt!657611 () List!18883)

(declare-fun maxPrefix!1514 (LexerInterface!2960 List!18884 List!18883) Option!3686)

(assert (=> b!1719777 (= lt!657602 (maxPrefix!1514 thiss!24550 rules!3447 lt!657611))))

(declare-fun token!523 () Token!6228)

(declare-fun list!7600 (BalanceConc!12458) List!18883)

(declare-fun charsOf!1980 (Token!6228) BalanceConc!12458)

(assert (=> b!1719777 (= lt!657611 (list!7600 (charsOf!1980 token!523)))))

(declare-fun b!1719778 () Bool)

(declare-fun e!1099954 () Bool)

(declare-fun tp_is_empty!7561 () Bool)

(declare-fun tp!491103 () Bool)

(assert (=> b!1719778 (= e!1099954 (and tp_is_empty!7561 tp!491103))))

(declare-fun e!1099944 () Bool)

(declare-fun e!1099949 () Bool)

(declare-fun b!1719779 () Bool)

(declare-fun tp!491101 () Bool)

(declare-fun inv!21 (TokenValue!3421) Bool)

(assert (=> b!1719779 (= e!1099944 (and (inv!21 (value!104606 token!523)) e!1099949 tp!491101))))

(declare-fun b!1719780 () Bool)

(declare-fun e!1099966 () Bool)

(declare-fun e!1099960 () Bool)

(assert (=> b!1719780 (= e!1099966 e!1099960)))

(declare-fun res!771458 () Bool)

(assert (=> b!1719780 (=> res!771458 e!1099960)))

(declare-fun lt!657616 () Option!3686)

(declare-fun lt!657610 () List!18883)

(declare-fun lt!657608 () BalanceConc!12458)

(declare-fun apply!5136 (TokenValueInjection!6502 BalanceConc!12458) TokenValue!3421)

(declare-fun size!14949 (BalanceConc!12458) Int)

(assert (=> b!1719780 (= res!771458 (not (= lt!657616 (Some!3685 (tuple2!18511 (Token!6229 (apply!5136 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) lt!657608) (rule!5275 (_1!10657 lt!657603)) (size!14949 lt!657608) lt!657610) (_2!10657 lt!657603))))))))

(declare-datatypes ((Unit!32651 0))(
  ( (Unit!32652) )
))
(declare-fun lt!657614 () Unit!32651)

(declare-fun lemmaCharactersSize!403 (Token!6228) Unit!32651)

(assert (=> b!1719780 (= lt!657614 (lemmaCharactersSize!403 (_1!10657 lt!657603)))))

(declare-fun lt!657605 () Unit!32651)

(declare-fun lemmaEqSameImage!256 (TokenValueInjection!6502 BalanceConc!12458 BalanceConc!12458) Unit!32651)

(declare-fun seqFromList!2305 (List!18883) BalanceConc!12458)

(assert (=> b!1719780 (= lt!657605 (lemmaEqSameImage!256 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) lt!657608 (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603)))))))

(declare-fun b!1719781 () Bool)

(declare-fun e!1099950 () Bool)

(declare-fun lt!657601 () List!18883)

(declare-fun lt!657624 () Int)

(declare-fun size!14950 (List!18883) Int)

(assert (=> b!1719781 (= e!1099950 (>= (size!14950 lt!657601) lt!657624))))

(declare-fun e!1099947 () Bool)

(assert (=> b!1719782 (= e!1099947 (and tp!491097 tp!491106))))

(declare-fun b!1719783 () Bool)

(declare-fun res!771463 () Bool)

(assert (=> b!1719783 (=> (not res!771463) (not e!1099945))))

(declare-fun rulesInvariant!2629 (LexerInterface!2960 List!18884) Bool)

(assert (=> b!1719783 (= res!771463 (rulesInvariant!2629 thiss!24550 rules!3447))))

(declare-fun tp!491107 () Bool)

(declare-fun e!1099953 () Bool)

(declare-fun b!1719784 () Bool)

(declare-fun inv!24284 (String!21437) Bool)

(declare-fun inv!24289 (TokenValueInjection!6502) Bool)

(assert (=> b!1719784 (= e!1099949 (and tp!491107 (inv!24284 (tag!3639 (rule!5275 token!523))) (inv!24289 (transformation!3331 (rule!5275 token!523))) e!1099953))))

(declare-fun b!1719785 () Bool)

(declare-fun res!771456 () Bool)

(declare-fun e!1099963 () Bool)

(assert (=> b!1719785 (=> res!771456 e!1099963)))

(declare-fun matchR!2133 (Regex!4659 List!18883) Bool)

(assert (=> b!1719785 (= res!771456 (not (matchR!2133 (regex!3331 (rule!5275 (_1!10657 lt!657603))) lt!657610)))))

(declare-fun b!1719786 () Bool)

(declare-fun e!1099957 () Bool)

(assert (=> b!1719786 (= e!1099957 e!1099963)))

(declare-fun res!771454 () Bool)

(assert (=> b!1719786 (=> res!771454 e!1099963)))

(declare-fun isPrefix!1572 (List!18883 List!18883) Bool)

(assert (=> b!1719786 (= res!771454 (not (isPrefix!1572 lt!657610 lt!657601)))))

(declare-fun ++!5156 (List!18883 List!18883) List!18883)

(assert (=> b!1719786 (isPrefix!1572 lt!657610 (++!5156 lt!657610 (_2!10657 lt!657603)))))

(declare-fun lt!657604 () Unit!32651)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1082 (List!18883 List!18883) Unit!32651)

(assert (=> b!1719786 (= lt!657604 (lemmaConcatTwoListThenFirstIsPrefix!1082 lt!657610 (_2!10657 lt!657603)))))

(assert (=> b!1719786 (= lt!657610 (list!7600 lt!657608))))

(assert (=> b!1719786 (= lt!657608 (charsOf!1980 (_1!10657 lt!657603)))))

(declare-fun e!1099943 () Bool)

(assert (=> b!1719786 e!1099943))

(declare-fun res!771470 () Bool)

(assert (=> b!1719786 (=> (not res!771470) (not e!1099943))))

(declare-datatypes ((Option!3687 0))(
  ( (None!3686) (Some!3686 (v!25087 Rule!6462)) )
))
(declare-fun lt!657613 () Option!3687)

(declare-fun isDefined!3030 (Option!3687) Bool)

(assert (=> b!1719786 (= res!771470 (isDefined!3030 lt!657613))))

(declare-fun getRuleFromTag!381 (LexerInterface!2960 List!18884 String!21437) Option!3687)

(assert (=> b!1719786 (= lt!657613 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 (_1!10657 lt!657603)))))))

(declare-fun lt!657620 () Unit!32651)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!381 (LexerInterface!2960 List!18884 List!18883 Token!6228) Unit!32651)

(assert (=> b!1719786 (= lt!657620 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!381 thiss!24550 rules!3447 lt!657601 (_1!10657 lt!657603)))))

(declare-fun get!5569 (Option!3686) tuple2!18510)

(assert (=> b!1719786 (= lt!657603 (get!5569 lt!657616))))

(declare-fun suffix!1421 () List!18883)

(declare-fun lt!657622 () Unit!32651)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!484 (LexerInterface!2960 List!18884 List!18883 List!18883) Unit!32651)

(assert (=> b!1719786 (= lt!657622 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!484 thiss!24550 rules!3447 lt!657611 suffix!1421))))

(assert (=> b!1719786 (= lt!657616 (maxPrefix!1514 thiss!24550 rules!3447 lt!657601))))

(assert (=> b!1719786 (isPrefix!1572 lt!657611 lt!657601)))

(declare-fun lt!657609 () Unit!32651)

(assert (=> b!1719786 (= lt!657609 (lemmaConcatTwoListThenFirstIsPrefix!1082 lt!657611 suffix!1421))))

(assert (=> b!1719786 (= lt!657601 (++!5156 lt!657611 suffix!1421))))

(assert (=> b!1719787 (= e!1099953 (and tp!491100 tp!491104))))

(declare-fun b!1719788 () Bool)

(declare-fun res!771459 () Bool)

(declare-fun e!1099959 () Bool)

(assert (=> b!1719788 (=> (not res!771459) (not e!1099959))))

(declare-fun lt!657621 () tuple2!18510)

(declare-fun isEmpty!11829 (List!18883) Bool)

(assert (=> b!1719788 (= res!771459 (isEmpty!11829 (_2!10657 lt!657621)))))

(declare-fun b!1719789 () Bool)

(declare-fun res!771467 () Bool)

(assert (=> b!1719789 (=> (not res!771467) (not e!1099945))))

(declare-fun isEmpty!11830 (List!18884) Bool)

(assert (=> b!1719789 (= res!771467 (not (isEmpty!11830 rules!3447)))))

(declare-fun b!1719790 () Bool)

(declare-fun e!1099964 () Bool)

(assert (=> b!1719790 (= e!1099964 e!1099966)))

(declare-fun res!771468 () Bool)

(assert (=> b!1719790 (=> res!771468 e!1099966)))

(declare-fun dynLambda!8643 (Int TokenValue!3421) BalanceConc!12458)

(declare-fun dynLambda!8644 (Int BalanceConc!12458) TokenValue!3421)

(assert (=> b!1719790 (= res!771468 (not (= (list!7600 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))) lt!657610)))))

(declare-fun lt!657607 () Unit!32651)

(declare-fun lemmaSemiInverse!477 (TokenValueInjection!6502 BalanceConc!12458) Unit!32651)

(assert (=> b!1719790 (= lt!657607 (lemmaSemiInverse!477 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) lt!657608))))

(declare-fun b!1719791 () Bool)

(declare-fun e!1099951 () Bool)

(declare-fun lt!657606 () Rule!6462)

(assert (=> b!1719791 (= e!1099951 (= (rule!5275 (_1!10657 lt!657603)) lt!657606))))

(declare-fun b!1719792 () Bool)

(declare-fun res!771464 () Bool)

(assert (=> b!1719792 (=> res!771464 e!1099957)))

(assert (=> b!1719792 (= res!771464 (isEmpty!11829 suffix!1421))))

(declare-fun b!1719793 () Bool)

(declare-fun tp!491099 () Bool)

(declare-fun e!1099961 () Bool)

(assert (=> b!1719793 (= e!1099961 (and tp!491099 (inv!24284 (tag!3639 (h!24215 rules!3447))) (inv!24289 (transformation!3331 (h!24215 rules!3447))) e!1099947))))

(declare-fun b!1719794 () Bool)

(declare-fun res!771457 () Bool)

(assert (=> b!1719794 (=> res!771457 e!1099957)))

(declare-fun prefixMatch!544 (Regex!4659 List!18883) Bool)

(declare-fun rulesRegex!689 (LexerInterface!2960 List!18884) Regex!4659)

(declare-fun head!3882 (List!18883) C!9492)

(assert (=> b!1719794 (= res!771457 (prefixMatch!544 (rulesRegex!689 thiss!24550 rules!3447) (++!5156 lt!657611 (Cons!18813 (head!3882 suffix!1421) Nil!18813))))))

(declare-fun b!1719795 () Bool)

(declare-fun res!771466 () Bool)

(assert (=> b!1719795 (=> (not res!771466) (not e!1099945))))

(declare-fun rule!422 () Rule!6462)

(declare-fun contains!3353 (List!18884 Rule!6462) Bool)

(assert (=> b!1719795 (= res!771466 (contains!3353 rules!3447 rule!422))))

(declare-fun b!1719796 () Bool)

(declare-fun res!771469 () Bool)

(assert (=> b!1719796 (=> res!771469 e!1099966)))

(assert (=> b!1719796 (= res!771469 (not (= lt!657608 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))))))

(declare-fun b!1719797 () Bool)

(assert (=> b!1719797 (= e!1099958 e!1099959)))

(declare-fun res!771471 () Bool)

(assert (=> b!1719797 (=> (not res!771471) (not e!1099959))))

(assert (=> b!1719797 (= res!771471 (= (_1!10657 lt!657621) token!523))))

(assert (=> b!1719797 (= lt!657621 (get!5569 lt!657602))))

(declare-fun b!1719798 () Bool)

(declare-fun res!771460 () Bool)

(assert (=> b!1719798 (=> (not res!771460) (not e!1099959))))

(assert (=> b!1719798 (= res!771460 (= (rule!5275 token!523) rule!422))))

(declare-fun e!1099952 () Bool)

(assert (=> b!1719799 (= e!1099952 (and tp!491102 tp!491098))))

(declare-fun b!1719800 () Bool)

(assert (=> b!1719800 (= e!1099943 e!1099951)))

(declare-fun res!771462 () Bool)

(assert (=> b!1719800 (=> (not res!771462) (not e!1099951))))

(assert (=> b!1719800 (= res!771462 (matchR!2133 (regex!3331 lt!657606) (list!7600 (charsOf!1980 (_1!10657 lt!657603)))))))

(declare-fun get!5570 (Option!3687) Rule!6462)

(assert (=> b!1719800 (= lt!657606 (get!5570 lt!657613))))

(declare-fun b!1719801 () Bool)

(assert (=> b!1719801 (= e!1099960 e!1099950)))

(declare-fun res!771455 () Bool)

(assert (=> b!1719801 (=> res!771455 e!1099950)))

(declare-fun lt!657612 () List!18883)

(assert (=> b!1719801 (= res!771455 (not (= lt!657612 (_2!10657 lt!657603))))))

(assert (=> b!1719801 (= (_2!10657 lt!657603) lt!657612)))

(declare-fun lt!657619 () Unit!32651)

(declare-fun lemmaSamePrefixThenSameSuffix!716 (List!18883 List!18883 List!18883 List!18883 List!18883) Unit!32651)

(assert (=> b!1719801 (= lt!657619 (lemmaSamePrefixThenSameSuffix!716 lt!657610 (_2!10657 lt!657603) lt!657610 lt!657612 lt!657601))))

(declare-fun getSuffix!766 (List!18883 List!18883) List!18883)

(assert (=> b!1719801 (= lt!657612 (getSuffix!766 lt!657601 lt!657610))))

(declare-fun lt!657618 () TokenValue!3421)

(declare-fun maxPrefixOneRule!890 (LexerInterface!2960 Rule!6462 List!18883) Option!3686)

(assert (=> b!1719801 (= (maxPrefixOneRule!890 thiss!24550 (rule!5275 (_1!10657 lt!657603)) lt!657601) (Some!3685 (tuple2!18511 (Token!6229 lt!657618 (rule!5275 (_1!10657 lt!657603)) lt!657624 lt!657610) (_2!10657 lt!657603))))))

(assert (=> b!1719801 (= lt!657624 (size!14950 lt!657610))))

(assert (=> b!1719801 (= lt!657618 (apply!5136 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) (seqFromList!2305 lt!657610)))))

(declare-fun lt!657615 () Unit!32651)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!289 (LexerInterface!2960 List!18884 List!18883 List!18883 List!18883 Rule!6462) Unit!32651)

(assert (=> b!1719801 (= lt!657615 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!289 thiss!24550 rules!3447 lt!657610 lt!657601 (_2!10657 lt!657603) (rule!5275 (_1!10657 lt!657603))))))

(declare-fun res!771472 () Bool)

(assert (=> start!168486 (=> (not res!771472) (not e!1099945))))

(get-info :version)

(assert (=> start!168486 (= res!771472 ((_ is Lexer!2958) thiss!24550))))

(assert (=> start!168486 e!1099945))

(assert (=> start!168486 e!1099954))

(declare-fun e!1099965 () Bool)

(assert (=> start!168486 e!1099965))

(assert (=> start!168486 true))

(declare-fun inv!24290 (Token!6228) Bool)

(assert (=> start!168486 (and (inv!24290 token!523) e!1099944)))

(declare-fun e!1099948 () Bool)

(assert (=> start!168486 e!1099948))

(declare-fun b!1719802 () Bool)

(declare-fun tp!491108 () Bool)

(assert (=> b!1719802 (= e!1099948 (and e!1099961 tp!491108))))

(assert (=> b!1719803 (= e!1099963 e!1099964)))

(declare-fun res!771453 () Bool)

(assert (=> b!1719803 (=> res!771453 e!1099964)))

(declare-fun Forall!706 (Int) Bool)

(assert (=> b!1719803 (= res!771453 (not (Forall!706 lambda!69080)))))

(declare-fun lt!657623 () Unit!32651)

(declare-fun lemmaInv!538 (TokenValueInjection!6502) Unit!32651)

(assert (=> b!1719803 (= lt!657623 (lemmaInv!538 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))))

(declare-fun b!1719804 () Bool)

(declare-fun tp!491105 () Bool)

(assert (=> b!1719804 (= e!1099965 (and tp!491105 (inv!24284 (tag!3639 rule!422)) (inv!24289 (transformation!3331 rule!422)) e!1099952))))

(declare-fun b!1719805 () Bool)

(assert (=> b!1719805 (= e!1099959 (not e!1099957))))

(declare-fun res!771465 () Bool)

(assert (=> b!1719805 (=> res!771465 e!1099957)))

(assert (=> b!1719805 (= res!771465 (not (matchR!2133 (regex!3331 rule!422) lt!657611)))))

(declare-fun ruleValid!830 (LexerInterface!2960 Rule!6462) Bool)

(assert (=> b!1719805 (ruleValid!830 thiss!24550 rule!422)))

(declare-fun lt!657617 () Unit!32651)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!354 (LexerInterface!2960 Rule!6462 List!18884) Unit!32651)

(assert (=> b!1719805 (= lt!657617 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!354 thiss!24550 rule!422 rules!3447))))

(assert (= (and start!168486 res!771472) b!1719789))

(assert (= (and b!1719789 res!771467) b!1719783))

(assert (= (and b!1719783 res!771463) b!1719795))

(assert (= (and b!1719795 res!771466) b!1719777))

(assert (= (and b!1719777 res!771461) b!1719797))

(assert (= (and b!1719797 res!771471) b!1719788))

(assert (= (and b!1719788 res!771459) b!1719798))

(assert (= (and b!1719798 res!771460) b!1719805))

(assert (= (and b!1719805 (not res!771465)) b!1719792))

(assert (= (and b!1719792 (not res!771464)) b!1719794))

(assert (= (and b!1719794 (not res!771457)) b!1719786))

(assert (= (and b!1719786 res!771470) b!1719800))

(assert (= (and b!1719800 res!771462) b!1719791))

(assert (= (and b!1719786 (not res!771454)) b!1719785))

(assert (= (and b!1719785 (not res!771456)) b!1719803))

(assert (= (and b!1719803 (not res!771453)) b!1719790))

(assert (= (and b!1719790 (not res!771468)) b!1719796))

(assert (= (and b!1719796 (not res!771469)) b!1719780))

(assert (= (and b!1719780 (not res!771458)) b!1719801))

(assert (= (and b!1719801 (not res!771455)) b!1719781))

(assert (= (and start!168486 ((_ is Cons!18813) suffix!1421)) b!1719778))

(assert (= b!1719804 b!1719799))

(assert (= start!168486 b!1719804))

(assert (= b!1719784 b!1719787))

(assert (= b!1719779 b!1719784))

(assert (= start!168486 b!1719779))

(assert (= b!1719793 b!1719782))

(assert (= b!1719802 b!1719793))

(assert (= (and start!168486 ((_ is Cons!18814) rules!3447)) b!1719802))

(declare-fun b_lambda!54487 () Bool)

(assert (=> (not b_lambda!54487) (not b!1719790)))

(declare-fun tb!101853 () Bool)

(declare-fun t!159300 () Bool)

(assert (=> (and b!1719787 (= (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159300) tb!101853))

(declare-fun b!1719821 () Bool)

(declare-fun tp!491111 () Bool)

(declare-fun e!1099978 () Bool)

(declare-fun inv!24291 (Conc!6257) Bool)

(assert (=> b!1719821 (= e!1099978 (and (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))) tp!491111))))

(declare-fun result!122416 () Bool)

(declare-fun inv!24292 (BalanceConc!12458) Bool)

(assert (=> tb!101853 (= result!122416 (and (inv!24292 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))) e!1099978))))

(assert (= tb!101853 b!1719821))

(declare-fun m!2125071 () Bool)

(assert (=> b!1719821 m!2125071))

(declare-fun m!2125073 () Bool)

(assert (=> tb!101853 m!2125073))

(assert (=> b!1719790 t!159300))

(declare-fun b_and!125415 () Bool)

(assert (= b_and!125405 (and (=> t!159300 result!122416) b_and!125415)))

(declare-fun t!159302 () Bool)

(declare-fun tb!101855 () Bool)

(assert (=> (and b!1719782 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159302) tb!101855))

(declare-fun result!122420 () Bool)

(assert (= result!122420 result!122416))

(assert (=> b!1719790 t!159302))

(declare-fun b_and!125417 () Bool)

(assert (= b_and!125409 (and (=> t!159302 result!122420) b_and!125417)))

(declare-fun t!159304 () Bool)

(declare-fun tb!101857 () Bool)

(assert (=> (and b!1719799 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159304) tb!101857))

(declare-fun result!122422 () Bool)

(assert (= result!122422 result!122416))

(assert (=> b!1719790 t!159304))

(declare-fun b_and!125419 () Bool)

(assert (= b_and!125413 (and (=> t!159304 result!122422) b_and!125419)))

(declare-fun b_lambda!54489 () Bool)

(assert (=> (not b_lambda!54489) (not b!1719790)))

(declare-fun tb!101859 () Bool)

(declare-fun t!159306 () Bool)

(assert (=> (and b!1719787 (= (toValue!4838 (transformation!3331 (rule!5275 token!523))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159306) tb!101859))

(declare-fun result!122424 () Bool)

(assert (=> tb!101859 (= result!122424 (inv!21 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))

(declare-fun m!2125075 () Bool)

(assert (=> tb!101859 m!2125075))

(assert (=> b!1719790 t!159306))

(declare-fun b_and!125421 () Bool)

(assert (= b_and!125403 (and (=> t!159306 result!122424) b_and!125421)))

(declare-fun tb!101861 () Bool)

(declare-fun t!159308 () Bool)

(assert (=> (and b!1719782 (= (toValue!4838 (transformation!3331 (h!24215 rules!3447))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159308) tb!101861))

(declare-fun result!122428 () Bool)

(assert (= result!122428 result!122424))

(assert (=> b!1719790 t!159308))

(declare-fun b_and!125423 () Bool)

(assert (= b_and!125407 (and (=> t!159308 result!122428) b_and!125423)))

(declare-fun tb!101863 () Bool)

(declare-fun t!159310 () Bool)

(assert (=> (and b!1719799 (= (toValue!4838 (transformation!3331 rule!422)) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159310) tb!101863))

(declare-fun result!122430 () Bool)

(assert (= result!122430 result!122424))

(assert (=> b!1719790 t!159310))

(declare-fun b_and!125425 () Bool)

(assert (= b_and!125411 (and (=> t!159310 result!122430) b_and!125425)))

(declare-fun b_lambda!54491 () Bool)

(assert (=> (not b_lambda!54491) (not b!1719796)))

(declare-fun tb!101865 () Bool)

(declare-fun t!159312 () Bool)

(assert (=> (and b!1719787 (= (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159312) tb!101865))

(declare-fun b!1719824 () Bool)

(declare-fun e!1099982 () Bool)

(declare-fun tp!491112 () Bool)

(assert (=> b!1719824 (= e!1099982 (and (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))) tp!491112))))

(declare-fun result!122432 () Bool)

(assert (=> tb!101865 (= result!122432 (and (inv!24292 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))) e!1099982))))

(assert (= tb!101865 b!1719824))

(declare-fun m!2125077 () Bool)

(assert (=> b!1719824 m!2125077))

(declare-fun m!2125079 () Bool)

(assert (=> tb!101865 m!2125079))

(assert (=> b!1719796 t!159312))

(declare-fun b_and!125427 () Bool)

(assert (= b_and!125415 (and (=> t!159312 result!122432) b_and!125427)))

(declare-fun tb!101867 () Bool)

(declare-fun t!159314 () Bool)

(assert (=> (and b!1719782 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159314) tb!101867))

(declare-fun result!122434 () Bool)

(assert (= result!122434 result!122432))

(assert (=> b!1719796 t!159314))

(declare-fun b_and!125429 () Bool)

(assert (= b_and!125417 (and (=> t!159314 result!122434) b_and!125429)))

(declare-fun tb!101869 () Bool)

(declare-fun t!159316 () Bool)

(assert (=> (and b!1719799 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159316) tb!101869))

(declare-fun result!122436 () Bool)

(assert (= result!122436 result!122432))

(assert (=> b!1719796 t!159316))

(declare-fun b_and!125431 () Bool)

(assert (= b_and!125419 (and (=> t!159316 result!122436) b_and!125431)))

(declare-fun m!2125081 () Bool)

(assert (=> b!1719796 m!2125081))

(declare-fun m!2125083 () Bool)

(assert (=> b!1719800 m!2125083))

(assert (=> b!1719800 m!2125083))

(declare-fun m!2125085 () Bool)

(assert (=> b!1719800 m!2125085))

(assert (=> b!1719800 m!2125085))

(declare-fun m!2125087 () Bool)

(assert (=> b!1719800 m!2125087))

(declare-fun m!2125089 () Bool)

(assert (=> b!1719800 m!2125089))

(declare-fun m!2125091 () Bool)

(assert (=> b!1719801 m!2125091))

(declare-fun m!2125093 () Bool)

(assert (=> b!1719801 m!2125093))

(assert (=> b!1719801 m!2125091))

(declare-fun m!2125095 () Bool)

(assert (=> b!1719801 m!2125095))

(declare-fun m!2125097 () Bool)

(assert (=> b!1719801 m!2125097))

(declare-fun m!2125099 () Bool)

(assert (=> b!1719801 m!2125099))

(declare-fun m!2125101 () Bool)

(assert (=> b!1719801 m!2125101))

(declare-fun m!2125103 () Bool)

(assert (=> b!1719801 m!2125103))

(declare-fun m!2125105 () Bool)

(assert (=> b!1719792 m!2125105))

(declare-fun m!2125107 () Bool)

(assert (=> b!1719781 m!2125107))

(declare-fun m!2125109 () Bool)

(assert (=> b!1719805 m!2125109))

(declare-fun m!2125111 () Bool)

(assert (=> b!1719805 m!2125111))

(declare-fun m!2125113 () Bool)

(assert (=> b!1719805 m!2125113))

(declare-fun m!2125115 () Bool)

(assert (=> b!1719804 m!2125115))

(declare-fun m!2125117 () Bool)

(assert (=> b!1719804 m!2125117))

(declare-fun m!2125119 () Bool)

(assert (=> b!1719803 m!2125119))

(declare-fun m!2125121 () Bool)

(assert (=> b!1719803 m!2125121))

(declare-fun m!2125123 () Bool)

(assert (=> b!1719784 m!2125123))

(declare-fun m!2125125 () Bool)

(assert (=> b!1719784 m!2125125))

(declare-fun m!2125127 () Bool)

(assert (=> b!1719779 m!2125127))

(declare-fun m!2125129 () Bool)

(assert (=> b!1719797 m!2125129))

(declare-fun m!2125131 () Bool)

(assert (=> b!1719783 m!2125131))

(declare-fun m!2125133 () Bool)

(assert (=> b!1719790 m!2125133))

(assert (=> b!1719790 m!2125133))

(declare-fun m!2125135 () Bool)

(assert (=> b!1719790 m!2125135))

(assert (=> b!1719790 m!2125135))

(declare-fun m!2125137 () Bool)

(assert (=> b!1719790 m!2125137))

(declare-fun m!2125139 () Bool)

(assert (=> b!1719790 m!2125139))

(declare-fun m!2125141 () Bool)

(assert (=> b!1719795 m!2125141))

(declare-fun m!2125143 () Bool)

(assert (=> b!1719786 m!2125143))

(declare-fun m!2125145 () Bool)

(assert (=> b!1719786 m!2125145))

(declare-fun m!2125147 () Bool)

(assert (=> b!1719786 m!2125147))

(declare-fun m!2125149 () Bool)

(assert (=> b!1719786 m!2125149))

(assert (=> b!1719786 m!2125083))

(declare-fun m!2125151 () Bool)

(assert (=> b!1719786 m!2125151))

(declare-fun m!2125153 () Bool)

(assert (=> b!1719786 m!2125153))

(declare-fun m!2125155 () Bool)

(assert (=> b!1719786 m!2125155))

(declare-fun m!2125157 () Bool)

(assert (=> b!1719786 m!2125157))

(declare-fun m!2125159 () Bool)

(assert (=> b!1719786 m!2125159))

(declare-fun m!2125161 () Bool)

(assert (=> b!1719786 m!2125161))

(declare-fun m!2125163 () Bool)

(assert (=> b!1719786 m!2125163))

(declare-fun m!2125165 () Bool)

(assert (=> b!1719786 m!2125165))

(declare-fun m!2125167 () Bool)

(assert (=> b!1719786 m!2125167))

(declare-fun m!2125169 () Bool)

(assert (=> b!1719786 m!2125169))

(assert (=> b!1719786 m!2125159))

(declare-fun m!2125171 () Bool)

(assert (=> b!1719788 m!2125171))

(declare-fun m!2125173 () Bool)

(assert (=> b!1719780 m!2125173))

(declare-fun m!2125175 () Bool)

(assert (=> b!1719780 m!2125175))

(declare-fun m!2125177 () Bool)

(assert (=> b!1719780 m!2125177))

(declare-fun m!2125179 () Bool)

(assert (=> b!1719780 m!2125179))

(declare-fun m!2125181 () Bool)

(assert (=> b!1719780 m!2125181))

(assert (=> b!1719780 m!2125175))

(declare-fun m!2125183 () Bool)

(assert (=> b!1719789 m!2125183))

(declare-fun m!2125185 () Bool)

(assert (=> b!1719777 m!2125185))

(declare-fun m!2125187 () Bool)

(assert (=> b!1719777 m!2125187))

(declare-fun m!2125189 () Bool)

(assert (=> b!1719777 m!2125189))

(assert (=> b!1719777 m!2125189))

(declare-fun m!2125191 () Bool)

(assert (=> b!1719777 m!2125191))

(declare-fun m!2125193 () Bool)

(assert (=> b!1719793 m!2125193))

(declare-fun m!2125195 () Bool)

(assert (=> b!1719793 m!2125195))

(declare-fun m!2125197 () Bool)

(assert (=> b!1719794 m!2125197))

(declare-fun m!2125199 () Bool)

(assert (=> b!1719794 m!2125199))

(declare-fun m!2125201 () Bool)

(assert (=> b!1719794 m!2125201))

(assert (=> b!1719794 m!2125197))

(assert (=> b!1719794 m!2125201))

(declare-fun m!2125203 () Bool)

(assert (=> b!1719794 m!2125203))

(declare-fun m!2125205 () Bool)

(assert (=> start!168486 m!2125205))

(declare-fun m!2125207 () Bool)

(assert (=> b!1719785 m!2125207))

(check-sat (not b!1719797) (not b!1719800) (not b!1719792) b_and!125427 (not b!1719786) (not b_next!47541) (not b!1719795) b_and!125425 (not b!1719777) b_and!125423 (not b_next!47531) (not b!1719778) (not b!1719824) (not b_lambda!54489) (not tb!101865) (not b!1719781) (not tb!101859) (not b!1719805) (not start!168486) (not b!1719793) (not b!1719779) (not b_next!47539) (not b_lambda!54487) (not b!1719780) (not b!1719789) (not b_next!47535) (not b!1719790) b_and!125431 (not b!1719785) (not b!1719788) (not b!1719794) b_and!125421 (not tb!101853) (not b_next!47533) b_and!125429 tp_is_empty!7561 (not b!1719784) (not b!1719803) (not b!1719802) (not b!1719801) (not b!1719783) (not b!1719804) (not b!1719821) (not b_lambda!54491) (not b_next!47537))
(check-sat b_and!125427 (not b_next!47539) (not b_next!47541) (not b_next!47535) b_and!125431 b_and!125425 b_and!125421 (not b_next!47537) b_and!125423 (not b_next!47531) (not b_next!47533) b_and!125429)
(get-model)

(declare-fun d!527336 () Bool)

(assert (=> d!527336 (= (get!5569 lt!657602) (v!25086 lt!657602))))

(assert (=> b!1719797 d!527336))

(declare-fun b!1719890 () Bool)

(declare-fun e!1100022 () Bool)

(declare-fun e!1100023 () Bool)

(assert (=> b!1719890 (= e!1100022 e!1100023)))

(declare-fun c!281497 () Bool)

(assert (=> b!1719890 (= c!281497 ((_ is IntegerValue!10264) (value!104606 token!523)))))

(declare-fun d!527338 () Bool)

(declare-fun c!281498 () Bool)

(assert (=> d!527338 (= c!281498 ((_ is IntegerValue!10263) (value!104606 token!523)))))

(assert (=> d!527338 (= (inv!21 (value!104606 token!523)) e!1100022)))

(declare-fun b!1719891 () Bool)

(declare-fun inv!16 (TokenValue!3421) Bool)

(assert (=> b!1719891 (= e!1100022 (inv!16 (value!104606 token!523)))))

(declare-fun b!1719892 () Bool)

(declare-fun e!1100021 () Bool)

(declare-fun inv!15 (TokenValue!3421) Bool)

(assert (=> b!1719892 (= e!1100021 (inv!15 (value!104606 token!523)))))

(declare-fun b!1719893 () Bool)

(declare-fun res!771504 () Bool)

(assert (=> b!1719893 (=> res!771504 e!1100021)))

(assert (=> b!1719893 (= res!771504 (not ((_ is IntegerValue!10265) (value!104606 token!523))))))

(assert (=> b!1719893 (= e!1100023 e!1100021)))

(declare-fun b!1719894 () Bool)

(declare-fun inv!17 (TokenValue!3421) Bool)

(assert (=> b!1719894 (= e!1100023 (inv!17 (value!104606 token!523)))))

(assert (= (and d!527338 c!281498) b!1719891))

(assert (= (and d!527338 (not c!281498)) b!1719890))

(assert (= (and b!1719890 c!281497) b!1719894))

(assert (= (and b!1719890 (not c!281497)) b!1719893))

(assert (= (and b!1719893 (not res!771504)) b!1719892))

(declare-fun m!2125277 () Bool)

(assert (=> b!1719891 m!2125277))

(declare-fun m!2125279 () Bool)

(assert (=> b!1719892 m!2125279))

(declare-fun m!2125281 () Bool)

(assert (=> b!1719894 m!2125281))

(assert (=> b!1719779 d!527338))

(declare-fun b!1719923 () Bool)

(declare-fun res!771523 () Bool)

(declare-fun e!1100043 () Bool)

(assert (=> b!1719923 (=> res!771523 e!1100043)))

(declare-fun tail!2569 (List!18883) List!18883)

(assert (=> b!1719923 (= res!771523 (not (isEmpty!11829 (tail!2569 (list!7600 (charsOf!1980 (_1!10657 lt!657603)))))))))

(declare-fun b!1719924 () Bool)

(declare-fun res!771525 () Bool)

(declare-fun e!1100044 () Bool)

(assert (=> b!1719924 (=> res!771525 e!1100044)))

(assert (=> b!1719924 (= res!771525 (not ((_ is ElementMatch!4659) (regex!3331 lt!657606))))))

(declare-fun e!1100040 () Bool)

(assert (=> b!1719924 (= e!1100040 e!1100044)))

(declare-fun b!1719925 () Bool)

(declare-fun res!771522 () Bool)

(declare-fun e!1100042 () Bool)

(assert (=> b!1719925 (=> (not res!771522) (not e!1100042))))

(declare-fun call!109699 () Bool)

(assert (=> b!1719925 (= res!771522 (not call!109699))))

(declare-fun b!1719926 () Bool)

(declare-fun e!1100038 () Bool)

(assert (=> b!1719926 (= e!1100044 e!1100038)))

(declare-fun res!771528 () Bool)

(assert (=> b!1719926 (=> (not res!771528) (not e!1100038))))

(declare-fun lt!657640 () Bool)

(assert (=> b!1719926 (= res!771528 (not lt!657640))))

(declare-fun b!1719927 () Bool)

(assert (=> b!1719927 (= e!1100038 e!1100043)))

(declare-fun res!771524 () Bool)

(assert (=> b!1719927 (=> res!771524 e!1100043)))

(assert (=> b!1719927 (= res!771524 call!109699)))

(declare-fun b!1719928 () Bool)

(assert (=> b!1719928 (= e!1100040 (not lt!657640))))

(declare-fun b!1719929 () Bool)

(assert (=> b!1719929 (= e!1100043 (not (= (head!3882 (list!7600 (charsOf!1980 (_1!10657 lt!657603)))) (c!281478 (regex!3331 lt!657606)))))))

(declare-fun b!1719930 () Bool)

(declare-fun e!1100041 () Bool)

(assert (=> b!1719930 (= e!1100041 e!1100040)))

(declare-fun c!281506 () Bool)

(assert (=> b!1719930 (= c!281506 ((_ is EmptyLang!4659) (regex!3331 lt!657606)))))

(declare-fun b!1719931 () Bool)

(declare-fun res!771526 () Bool)

(assert (=> b!1719931 (=> res!771526 e!1100044)))

(assert (=> b!1719931 (= res!771526 e!1100042)))

(declare-fun res!771521 () Bool)

(assert (=> b!1719931 (=> (not res!771521) (not e!1100042))))

(assert (=> b!1719931 (= res!771521 lt!657640)))

(declare-fun b!1719932 () Bool)

(declare-fun res!771527 () Bool)

(assert (=> b!1719932 (=> (not res!771527) (not e!1100042))))

(assert (=> b!1719932 (= res!771527 (isEmpty!11829 (tail!2569 (list!7600 (charsOf!1980 (_1!10657 lt!657603))))))))

(declare-fun b!1719933 () Bool)

(assert (=> b!1719933 (= e!1100041 (= lt!657640 call!109699))))

(declare-fun bm!109694 () Bool)

(assert (=> bm!109694 (= call!109699 (isEmpty!11829 (list!7600 (charsOf!1980 (_1!10657 lt!657603)))))))

(declare-fun b!1719934 () Bool)

(declare-fun e!1100039 () Bool)

(declare-fun derivativeStep!1172 (Regex!4659 C!9492) Regex!4659)

(assert (=> b!1719934 (= e!1100039 (matchR!2133 (derivativeStep!1172 (regex!3331 lt!657606) (head!3882 (list!7600 (charsOf!1980 (_1!10657 lt!657603))))) (tail!2569 (list!7600 (charsOf!1980 (_1!10657 lt!657603))))))))

(declare-fun d!527340 () Bool)

(assert (=> d!527340 e!1100041))

(declare-fun c!281507 () Bool)

(assert (=> d!527340 (= c!281507 ((_ is EmptyExpr!4659) (regex!3331 lt!657606)))))

(assert (=> d!527340 (= lt!657640 e!1100039)))

(declare-fun c!281505 () Bool)

(assert (=> d!527340 (= c!281505 (isEmpty!11829 (list!7600 (charsOf!1980 (_1!10657 lt!657603)))))))

(declare-fun validRegex!1877 (Regex!4659) Bool)

(assert (=> d!527340 (validRegex!1877 (regex!3331 lt!657606))))

(assert (=> d!527340 (= (matchR!2133 (regex!3331 lt!657606) (list!7600 (charsOf!1980 (_1!10657 lt!657603)))) lt!657640)))

(declare-fun b!1719935 () Bool)

(declare-fun nullable!1403 (Regex!4659) Bool)

(assert (=> b!1719935 (= e!1100039 (nullable!1403 (regex!3331 lt!657606)))))

(declare-fun b!1719936 () Bool)

(assert (=> b!1719936 (= e!1100042 (= (head!3882 (list!7600 (charsOf!1980 (_1!10657 lt!657603)))) (c!281478 (regex!3331 lt!657606))))))

(assert (= (and d!527340 c!281505) b!1719935))

(assert (= (and d!527340 (not c!281505)) b!1719934))

(assert (= (and d!527340 c!281507) b!1719933))

(assert (= (and d!527340 (not c!281507)) b!1719930))

(assert (= (and b!1719930 c!281506) b!1719928))

(assert (= (and b!1719930 (not c!281506)) b!1719924))

(assert (= (and b!1719924 (not res!771525)) b!1719931))

(assert (= (and b!1719931 res!771521) b!1719925))

(assert (= (and b!1719925 res!771522) b!1719932))

(assert (= (and b!1719932 res!771527) b!1719936))

(assert (= (and b!1719931 (not res!771526)) b!1719926))

(assert (= (and b!1719926 res!771528) b!1719927))

(assert (= (and b!1719927 (not res!771524)) b!1719923))

(assert (= (and b!1719923 (not res!771523)) b!1719929))

(assert (= (or b!1719933 b!1719925 b!1719927) bm!109694))

(assert (=> b!1719934 m!2125085))

(declare-fun m!2125283 () Bool)

(assert (=> b!1719934 m!2125283))

(assert (=> b!1719934 m!2125283))

(declare-fun m!2125285 () Bool)

(assert (=> b!1719934 m!2125285))

(assert (=> b!1719934 m!2125085))

(declare-fun m!2125287 () Bool)

(assert (=> b!1719934 m!2125287))

(assert (=> b!1719934 m!2125285))

(assert (=> b!1719934 m!2125287))

(declare-fun m!2125289 () Bool)

(assert (=> b!1719934 m!2125289))

(assert (=> b!1719923 m!2125085))

(assert (=> b!1719923 m!2125287))

(assert (=> b!1719923 m!2125287))

(declare-fun m!2125291 () Bool)

(assert (=> b!1719923 m!2125291))

(declare-fun m!2125293 () Bool)

(assert (=> b!1719935 m!2125293))

(assert (=> d!527340 m!2125085))

(declare-fun m!2125295 () Bool)

(assert (=> d!527340 m!2125295))

(declare-fun m!2125297 () Bool)

(assert (=> d!527340 m!2125297))

(assert (=> bm!109694 m!2125085))

(assert (=> bm!109694 m!2125295))

(assert (=> b!1719932 m!2125085))

(assert (=> b!1719932 m!2125287))

(assert (=> b!1719932 m!2125287))

(assert (=> b!1719932 m!2125291))

(assert (=> b!1719936 m!2125085))

(assert (=> b!1719936 m!2125283))

(assert (=> b!1719929 m!2125085))

(assert (=> b!1719929 m!2125283))

(assert (=> b!1719800 d!527340))

(declare-fun d!527342 () Bool)

(declare-fun list!7603 (Conc!6257) List!18883)

(assert (=> d!527342 (= (list!7600 (charsOf!1980 (_1!10657 lt!657603))) (list!7603 (c!281479 (charsOf!1980 (_1!10657 lt!657603)))))))

(declare-fun bs!402170 () Bool)

(assert (= bs!402170 d!527342))

(declare-fun m!2125299 () Bool)

(assert (=> bs!402170 m!2125299))

(assert (=> b!1719800 d!527342))

(declare-fun d!527344 () Bool)

(declare-fun lt!657643 () BalanceConc!12458)

(assert (=> d!527344 (= (list!7600 lt!657643) (originalCharacters!4145 (_1!10657 lt!657603)))))

(assert (=> d!527344 (= lt!657643 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))))

(assert (=> d!527344 (= (charsOf!1980 (_1!10657 lt!657603)) lt!657643)))

(declare-fun b_lambda!54493 () Bool)

(assert (=> (not b_lambda!54493) (not d!527344)))

(assert (=> d!527344 t!159312))

(declare-fun b_and!125433 () Bool)

(assert (= b_and!125427 (and (=> t!159312 result!122432) b_and!125433)))

(assert (=> d!527344 t!159314))

(declare-fun b_and!125435 () Bool)

(assert (= b_and!125429 (and (=> t!159314 result!122434) b_and!125435)))

(assert (=> d!527344 t!159316))

(declare-fun b_and!125437 () Bool)

(assert (= b_and!125431 (and (=> t!159316 result!122436) b_and!125437)))

(declare-fun m!2125301 () Bool)

(assert (=> d!527344 m!2125301))

(assert (=> d!527344 m!2125081))

(assert (=> b!1719800 d!527344))

(declare-fun d!527346 () Bool)

(assert (=> d!527346 (= (get!5570 lt!657613) (v!25087 lt!657613))))

(assert (=> b!1719800 d!527346))

(declare-fun d!527348 () Bool)

(declare-fun isBalanced!1957 (Conc!6257) Bool)

(assert (=> d!527348 (= (inv!24292 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))) (isBalanced!1957 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))))))

(declare-fun bs!402171 () Bool)

(assert (= bs!402171 d!527348))

(declare-fun m!2125303 () Bool)

(assert (=> bs!402171 m!2125303))

(assert (=> tb!101865 d!527348))

(declare-fun d!527350 () Bool)

(declare-fun isEmpty!11833 (Option!3686) Bool)

(assert (=> d!527350 (= (isDefined!3029 lt!657602) (not (isEmpty!11833 lt!657602)))))

(declare-fun bs!402172 () Bool)

(assert (= bs!402172 d!527350))

(declare-fun m!2125305 () Bool)

(assert (=> bs!402172 m!2125305))

(assert (=> b!1719777 d!527350))

(declare-fun b!1719989 () Bool)

(declare-fun res!771565 () Bool)

(declare-fun e!1100072 () Bool)

(assert (=> b!1719989 (=> (not res!771565) (not e!1100072))))

(declare-fun lt!657720 () Option!3686)

(assert (=> b!1719989 (= res!771565 (matchR!2133 (regex!3331 (rule!5275 (_1!10657 (get!5569 lt!657720)))) (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657720))))))))

(declare-fun b!1719990 () Bool)

(declare-fun e!1100073 () Option!3686)

(declare-fun lt!657721 () Option!3686)

(declare-fun lt!657718 () Option!3686)

(assert (=> b!1719990 (= e!1100073 (ite (and ((_ is None!3685) lt!657721) ((_ is None!3685) lt!657718)) None!3685 (ite ((_ is None!3685) lt!657718) lt!657721 (ite ((_ is None!3685) lt!657721) lt!657718 (ite (>= (size!14948 (_1!10657 (v!25086 lt!657721))) (size!14948 (_1!10657 (v!25086 lt!657718)))) lt!657721 lt!657718)))))))

(declare-fun call!109702 () Option!3686)

(assert (=> b!1719990 (= lt!657721 call!109702)))

(assert (=> b!1719990 (= lt!657718 (maxPrefix!1514 thiss!24550 (t!159319 rules!3447) lt!657611))))

(declare-fun b!1719991 () Bool)

(assert (=> b!1719991 (= e!1100072 (contains!3353 rules!3447 (rule!5275 (_1!10657 (get!5569 lt!657720)))))))

(declare-fun b!1719992 () Bool)

(declare-fun res!771563 () Bool)

(assert (=> b!1719992 (=> (not res!771563) (not e!1100072))))

(assert (=> b!1719992 (= res!771563 (= (++!5156 (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657720)))) (_2!10657 (get!5569 lt!657720))) lt!657611))))

(declare-fun b!1719993 () Bool)

(declare-fun res!771562 () Bool)

(assert (=> b!1719993 (=> (not res!771562) (not e!1100072))))

(assert (=> b!1719993 (= res!771562 (= (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657720)))) (originalCharacters!4145 (_1!10657 (get!5569 lt!657720)))))))

(declare-fun b!1719994 () Bool)

(declare-fun res!771561 () Bool)

(assert (=> b!1719994 (=> (not res!771561) (not e!1100072))))

(assert (=> b!1719994 (= res!771561 (= (value!104606 (_1!10657 (get!5569 lt!657720))) (apply!5136 (transformation!3331 (rule!5275 (_1!10657 (get!5569 lt!657720)))) (seqFromList!2305 (originalCharacters!4145 (_1!10657 (get!5569 lt!657720)))))))))

(declare-fun bm!109697 () Bool)

(assert (=> bm!109697 (= call!109702 (maxPrefixOneRule!890 thiss!24550 (h!24215 rules!3447) lt!657611))))

(declare-fun b!1719995 () Bool)

(declare-fun e!1100074 () Bool)

(assert (=> b!1719995 (= e!1100074 e!1100072)))

(declare-fun res!771560 () Bool)

(assert (=> b!1719995 (=> (not res!771560) (not e!1100072))))

(assert (=> b!1719995 (= res!771560 (isDefined!3029 lt!657720))))

(declare-fun d!527352 () Bool)

(assert (=> d!527352 e!1100074))

(declare-fun res!771559 () Bool)

(assert (=> d!527352 (=> res!771559 e!1100074)))

(assert (=> d!527352 (= res!771559 (isEmpty!11833 lt!657720))))

(assert (=> d!527352 (= lt!657720 e!1100073)))

(declare-fun c!281519 () Bool)

(assert (=> d!527352 (= c!281519 (and ((_ is Cons!18814) rules!3447) ((_ is Nil!18814) (t!159319 rules!3447))))))

(declare-fun lt!657719 () Unit!32651)

(declare-fun lt!657722 () Unit!32651)

(assert (=> d!527352 (= lt!657719 lt!657722)))

(assert (=> d!527352 (isPrefix!1572 lt!657611 lt!657611)))

(declare-fun lemmaIsPrefixRefl!1067 (List!18883 List!18883) Unit!32651)

(assert (=> d!527352 (= lt!657722 (lemmaIsPrefixRefl!1067 lt!657611 lt!657611))))

(declare-fun rulesValidInductive!1104 (LexerInterface!2960 List!18884) Bool)

(assert (=> d!527352 (rulesValidInductive!1104 thiss!24550 rules!3447)))

(assert (=> d!527352 (= (maxPrefix!1514 thiss!24550 rules!3447 lt!657611) lt!657720)))

(declare-fun b!1719996 () Bool)

(assert (=> b!1719996 (= e!1100073 call!109702)))

(declare-fun b!1719997 () Bool)

(declare-fun res!771564 () Bool)

(assert (=> b!1719997 (=> (not res!771564) (not e!1100072))))

(assert (=> b!1719997 (= res!771564 (< (size!14950 (_2!10657 (get!5569 lt!657720))) (size!14950 lt!657611)))))

(assert (= (and d!527352 c!281519) b!1719996))

(assert (= (and d!527352 (not c!281519)) b!1719990))

(assert (= (or b!1719996 b!1719990) bm!109697))

(assert (= (and d!527352 (not res!771559)) b!1719995))

(assert (= (and b!1719995 res!771560) b!1719993))

(assert (= (and b!1719993 res!771562) b!1719997))

(assert (= (and b!1719997 res!771564) b!1719992))

(assert (= (and b!1719992 res!771563) b!1719994))

(assert (= (and b!1719994 res!771561) b!1719989))

(assert (= (and b!1719989 res!771565) b!1719991))

(declare-fun m!2125381 () Bool)

(assert (=> b!1719990 m!2125381))

(declare-fun m!2125383 () Bool)

(assert (=> b!1719992 m!2125383))

(declare-fun m!2125385 () Bool)

(assert (=> b!1719992 m!2125385))

(assert (=> b!1719992 m!2125385))

(declare-fun m!2125387 () Bool)

(assert (=> b!1719992 m!2125387))

(assert (=> b!1719992 m!2125387))

(declare-fun m!2125389 () Bool)

(assert (=> b!1719992 m!2125389))

(assert (=> b!1719997 m!2125383))

(declare-fun m!2125391 () Bool)

(assert (=> b!1719997 m!2125391))

(declare-fun m!2125393 () Bool)

(assert (=> b!1719997 m!2125393))

(declare-fun m!2125395 () Bool)

(assert (=> bm!109697 m!2125395))

(declare-fun m!2125397 () Bool)

(assert (=> b!1719995 m!2125397))

(assert (=> b!1719989 m!2125383))

(assert (=> b!1719989 m!2125385))

(assert (=> b!1719989 m!2125385))

(assert (=> b!1719989 m!2125387))

(assert (=> b!1719989 m!2125387))

(declare-fun m!2125399 () Bool)

(assert (=> b!1719989 m!2125399))

(assert (=> b!1719994 m!2125383))

(declare-fun m!2125401 () Bool)

(assert (=> b!1719994 m!2125401))

(assert (=> b!1719994 m!2125401))

(declare-fun m!2125403 () Bool)

(assert (=> b!1719994 m!2125403))

(declare-fun m!2125405 () Bool)

(assert (=> d!527352 m!2125405))

(declare-fun m!2125407 () Bool)

(assert (=> d!527352 m!2125407))

(declare-fun m!2125409 () Bool)

(assert (=> d!527352 m!2125409))

(declare-fun m!2125411 () Bool)

(assert (=> d!527352 m!2125411))

(assert (=> b!1719993 m!2125383))

(assert (=> b!1719993 m!2125385))

(assert (=> b!1719993 m!2125385))

(assert (=> b!1719993 m!2125387))

(assert (=> b!1719991 m!2125383))

(declare-fun m!2125413 () Bool)

(assert (=> b!1719991 m!2125413))

(assert (=> b!1719777 d!527352))

(declare-fun d!527364 () Bool)

(assert (=> d!527364 (= (list!7600 (charsOf!1980 token!523)) (list!7603 (c!281479 (charsOf!1980 token!523))))))

(declare-fun bs!402174 () Bool)

(assert (= bs!402174 d!527364))

(declare-fun m!2125415 () Bool)

(assert (=> bs!402174 m!2125415))

(assert (=> b!1719777 d!527364))

(declare-fun d!527366 () Bool)

(declare-fun lt!657723 () BalanceConc!12458)

(assert (=> d!527366 (= (list!7600 lt!657723) (originalCharacters!4145 token!523))))

(assert (=> d!527366 (= lt!657723 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 token!523))) (value!104606 token!523)))))

(assert (=> d!527366 (= (charsOf!1980 token!523) lt!657723)))

(declare-fun b_lambda!54497 () Bool)

(assert (=> (not b_lambda!54497) (not d!527366)))

(declare-fun t!159321 () Bool)

(declare-fun tb!101871 () Bool)

(assert (=> (and b!1719787 (= (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toChars!4697 (transformation!3331 (rule!5275 token!523)))) t!159321) tb!101871))

(declare-fun b!1719998 () Bool)

(declare-fun e!1100075 () Bool)

(declare-fun tp!491113 () Bool)

(assert (=> b!1719998 (= e!1100075 (and (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 token!523))) (value!104606 token!523)))) tp!491113))))

(declare-fun result!122438 () Bool)

(assert (=> tb!101871 (= result!122438 (and (inv!24292 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 token!523))) (value!104606 token!523))) e!1100075))))

(assert (= tb!101871 b!1719998))

(declare-fun m!2125417 () Bool)

(assert (=> b!1719998 m!2125417))

(declare-fun m!2125419 () Bool)

(assert (=> tb!101871 m!2125419))

(assert (=> d!527366 t!159321))

(declare-fun b_and!125445 () Bool)

(assert (= b_and!125433 (and (=> t!159321 result!122438) b_and!125445)))

(declare-fun t!159323 () Bool)

(declare-fun tb!101873 () Bool)

(assert (=> (and b!1719782 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 token!523)))) t!159323) tb!101873))

(declare-fun result!122440 () Bool)

(assert (= result!122440 result!122438))

(assert (=> d!527366 t!159323))

(declare-fun b_and!125447 () Bool)

(assert (= b_and!125435 (and (=> t!159323 result!122440) b_and!125447)))

(declare-fun tb!101875 () Bool)

(declare-fun t!159325 () Bool)

(assert (=> (and b!1719799 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 token!523)))) t!159325) tb!101875))

(declare-fun result!122442 () Bool)

(assert (= result!122442 result!122438))

(assert (=> d!527366 t!159325))

(declare-fun b_and!125449 () Bool)

(assert (= b_and!125437 (and (=> t!159325 result!122442) b_and!125449)))

(declare-fun m!2125421 () Bool)

(assert (=> d!527366 m!2125421))

(declare-fun m!2125423 () Bool)

(assert (=> d!527366 m!2125423))

(assert (=> b!1719777 d!527366))

(declare-fun d!527368 () Bool)

(declare-fun c!281525 () Bool)

(assert (=> d!527368 (= c!281525 ((_ is Node!6257) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))))

(declare-fun e!1100089 () Bool)

(assert (=> d!527368 (= (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))) e!1100089)))

(declare-fun b!1720032 () Bool)

(declare-fun inv!24295 (Conc!6257) Bool)

(assert (=> b!1720032 (= e!1100089 (inv!24295 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))))

(declare-fun b!1720033 () Bool)

(declare-fun e!1100090 () Bool)

(assert (=> b!1720033 (= e!1100089 e!1100090)))

(declare-fun res!771589 () Bool)

(assert (=> b!1720033 (= res!771589 (not ((_ is Leaf!9143) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))))))

(assert (=> b!1720033 (=> res!771589 e!1100090)))

(declare-fun b!1720034 () Bool)

(declare-fun inv!24296 (Conc!6257) Bool)

(assert (=> b!1720034 (= e!1100090 (inv!24296 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))))

(assert (= (and d!527368 c!281525) b!1720032))

(assert (= (and d!527368 (not c!281525)) b!1720033))

(assert (= (and b!1720033 (not res!771589)) b!1720034))

(declare-fun m!2125425 () Bool)

(assert (=> b!1720032 m!2125425))

(declare-fun m!2125427 () Bool)

(assert (=> b!1720034 m!2125427))

(assert (=> b!1719821 d!527368))

(declare-fun d!527370 () Bool)

(declare-fun choose!10454 (Int) Bool)

(assert (=> d!527370 (= (Forall!706 lambda!69080) (choose!10454 lambda!69080))))

(declare-fun bs!402175 () Bool)

(assert (= bs!402175 d!527370))

(declare-fun m!2125437 () Bool)

(assert (=> bs!402175 m!2125437))

(assert (=> b!1719803 d!527370))

(declare-fun d!527372 () Bool)

(declare-fun e!1100095 () Bool)

(assert (=> d!527372 e!1100095))

(declare-fun res!771594 () Bool)

(assert (=> d!527372 (=> (not res!771594) (not e!1100095))))

(declare-fun semiInverseModEq!1317 (Int Int) Bool)

(assert (=> d!527372 (= res!771594 (semiInverseModEq!1317 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))))))

(declare-fun Unit!32655 () Unit!32651)

(assert (=> d!527372 (= (lemmaInv!538 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) Unit!32655)))

(declare-fun b!1720041 () Bool)

(declare-fun equivClasses!1258 (Int Int) Bool)

(assert (=> b!1720041 (= e!1100095 (equivClasses!1258 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))))))

(assert (= (and d!527372 res!771594) b!1720041))

(declare-fun m!2125481 () Bool)

(assert (=> d!527372 m!2125481))

(declare-fun m!2125483 () Bool)

(assert (=> b!1720041 m!2125483))

(assert (=> b!1719803 d!527372))

(declare-fun d!527382 () Bool)

(declare-fun lt!657747 () Int)

(assert (=> d!527382 (>= lt!657747 0)))

(declare-fun e!1100101 () Int)

(assert (=> d!527382 (= lt!657747 e!1100101)))

(declare-fun c!281529 () Bool)

(assert (=> d!527382 (= c!281529 ((_ is Nil!18813) lt!657601))))

(assert (=> d!527382 (= (size!14950 lt!657601) lt!657747)))

(declare-fun b!1720050 () Bool)

(assert (=> b!1720050 (= e!1100101 0)))

(declare-fun b!1720051 () Bool)

(assert (=> b!1720051 (= e!1100101 (+ 1 (size!14950 (t!159318 lt!657601))))))

(assert (= (and d!527382 c!281529) b!1720050))

(assert (= (and d!527382 (not c!281529)) b!1720051))

(declare-fun m!2125491 () Bool)

(assert (=> b!1720051 m!2125491))

(assert (=> b!1719781 d!527382))

(declare-fun d!527390 () Bool)

(assert (=> d!527390 (= (inv!24292 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))) (isBalanced!1957 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))))

(declare-fun bs!402178 () Bool)

(assert (= bs!402178 d!527390))

(declare-fun m!2125493 () Bool)

(assert (=> bs!402178 m!2125493))

(assert (=> tb!101853 d!527390))

(declare-fun d!527392 () Bool)

(assert (=> d!527392 (= (maxPrefixOneRule!890 thiss!24550 (rule!5275 (_1!10657 lt!657603)) lt!657601) (Some!3685 (tuple2!18511 (Token!6229 (apply!5136 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) (seqFromList!2305 lt!657610)) (rule!5275 (_1!10657 lt!657603)) (size!14950 lt!657610) lt!657610) (_2!10657 lt!657603))))))

(declare-fun lt!657753 () Unit!32651)

(declare-fun choose!10455 (LexerInterface!2960 List!18884 List!18883 List!18883 List!18883 Rule!6462) Unit!32651)

(assert (=> d!527392 (= lt!657753 (choose!10455 thiss!24550 rules!3447 lt!657610 lt!657601 (_2!10657 lt!657603) (rule!5275 (_1!10657 lt!657603))))))

(assert (=> d!527392 (not (isEmpty!11830 rules!3447))))

(assert (=> d!527392 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!289 thiss!24550 rules!3447 lt!657610 lt!657601 (_2!10657 lt!657603) (rule!5275 (_1!10657 lt!657603))) lt!657753)))

(declare-fun bs!402179 () Bool)

(assert (= bs!402179 d!527392))

(assert (=> bs!402179 m!2125091))

(assert (=> bs!402179 m!2125091))

(assert (=> bs!402179 m!2125095))

(declare-fun m!2125509 () Bool)

(assert (=> bs!402179 m!2125509))

(assert (=> bs!402179 m!2125183))

(assert (=> bs!402179 m!2125097))

(assert (=> bs!402179 m!2125103))

(assert (=> b!1719801 d!527392))

(declare-fun d!527402 () Bool)

(assert (=> d!527402 (= (apply!5136 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) (seqFromList!2305 lt!657610)) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (seqFromList!2305 lt!657610)))))

(declare-fun b_lambda!54499 () Bool)

(assert (=> (not b_lambda!54499) (not d!527402)))

(declare-fun t!159327 () Bool)

(declare-fun tb!101877 () Bool)

(assert (=> (and b!1719787 (= (toValue!4838 (transformation!3331 (rule!5275 token!523))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159327) tb!101877))

(declare-fun result!122444 () Bool)

(assert (=> tb!101877 (= result!122444 (inv!21 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (seqFromList!2305 lt!657610))))))

(declare-fun m!2125511 () Bool)

(assert (=> tb!101877 m!2125511))

(assert (=> d!527402 t!159327))

(declare-fun b_and!125451 () Bool)

(assert (= b_and!125421 (and (=> t!159327 result!122444) b_and!125451)))

(declare-fun tb!101879 () Bool)

(declare-fun t!159329 () Bool)

(assert (=> (and b!1719782 (= (toValue!4838 (transformation!3331 (h!24215 rules!3447))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159329) tb!101879))

(declare-fun result!122446 () Bool)

(assert (= result!122446 result!122444))

(assert (=> d!527402 t!159329))

(declare-fun b_and!125453 () Bool)

(assert (= b_and!125423 (and (=> t!159329 result!122446) b_and!125453)))

(declare-fun tb!101881 () Bool)

(declare-fun t!159331 () Bool)

(assert (=> (and b!1719799 (= (toValue!4838 (transformation!3331 rule!422)) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159331) tb!101881))

(declare-fun result!122448 () Bool)

(assert (= result!122448 result!122444))

(assert (=> d!527402 t!159331))

(declare-fun b_and!125455 () Bool)

(assert (= b_and!125425 (and (=> t!159331 result!122448) b_and!125455)))

(assert (=> d!527402 m!2125091))

(declare-fun m!2125513 () Bool)

(assert (=> d!527402 m!2125513))

(assert (=> b!1719801 d!527402))

(declare-fun b!1720164 () Bool)

(declare-fun res!771669 () Bool)

(declare-fun e!1100167 () Bool)

(assert (=> b!1720164 (=> (not res!771669) (not e!1100167))))

(declare-fun lt!657787 () Option!3686)

(assert (=> b!1720164 (= res!771669 (< (size!14950 (_2!10657 (get!5569 lt!657787))) (size!14950 lt!657601)))))

(declare-fun b!1720165 () Bool)

(assert (=> b!1720165 (= e!1100167 (= (size!14948 (_1!10657 (get!5569 lt!657787))) (size!14950 (originalCharacters!4145 (_1!10657 (get!5569 lt!657787))))))))

(declare-fun b!1720166 () Bool)

(declare-fun e!1100166 () Bool)

(declare-datatypes ((tuple2!18514 0))(
  ( (tuple2!18515 (_1!10659 List!18883) (_2!10659 List!18883)) )
))
(declare-fun findLongestMatchInner!394 (Regex!4659 List!18883 Int List!18883 List!18883 Int) tuple2!18514)

(assert (=> b!1720166 (= e!1100166 (matchR!2133 (regex!3331 (rule!5275 (_1!10657 lt!657603))) (_1!10659 (findLongestMatchInner!394 (regex!3331 (rule!5275 (_1!10657 lt!657603))) Nil!18813 (size!14950 Nil!18813) lt!657601 lt!657601 (size!14950 lt!657601)))))))

(declare-fun b!1720167 () Bool)

(declare-fun res!771672 () Bool)

(assert (=> b!1720167 (=> (not res!771672) (not e!1100167))))

(assert (=> b!1720167 (= res!771672 (= (value!104606 (_1!10657 (get!5569 lt!657787))) (apply!5136 (transformation!3331 (rule!5275 (_1!10657 (get!5569 lt!657787)))) (seqFromList!2305 (originalCharacters!4145 (_1!10657 (get!5569 lt!657787)))))))))

(declare-fun b!1720168 () Bool)

(declare-fun e!1100168 () Option!3686)

(declare-fun lt!657786 () tuple2!18514)

(assert (=> b!1720168 (= e!1100168 (Some!3685 (tuple2!18511 (Token!6229 (apply!5136 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) (seqFromList!2305 (_1!10659 lt!657786))) (rule!5275 (_1!10657 lt!657603)) (size!14949 (seqFromList!2305 (_1!10659 lt!657786))) (_1!10659 lt!657786)) (_2!10659 lt!657786))))))

(declare-fun lt!657785 () Unit!32651)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!378 (Regex!4659 List!18883) Unit!32651)

(assert (=> b!1720168 (= lt!657785 (longestMatchIsAcceptedByMatchOrIsEmpty!378 (regex!3331 (rule!5275 (_1!10657 lt!657603))) lt!657601))))

(declare-fun res!771671 () Bool)

(assert (=> b!1720168 (= res!771671 (isEmpty!11829 (_1!10659 (findLongestMatchInner!394 (regex!3331 (rule!5275 (_1!10657 lt!657603))) Nil!18813 (size!14950 Nil!18813) lt!657601 lt!657601 (size!14950 lt!657601)))))))

(assert (=> b!1720168 (=> res!771671 e!1100166)))

(assert (=> b!1720168 e!1100166))

(declare-fun lt!657783 () Unit!32651)

(assert (=> b!1720168 (= lt!657783 lt!657785)))

(declare-fun lt!657784 () Unit!32651)

(assert (=> b!1720168 (= lt!657784 (lemmaSemiInverse!477 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) (seqFromList!2305 (_1!10659 lt!657786))))))

(declare-fun b!1720169 () Bool)

(assert (=> b!1720169 (= e!1100168 None!3685)))

(declare-fun b!1720170 () Bool)

(declare-fun e!1100169 () Bool)

(assert (=> b!1720170 (= e!1100169 e!1100167)))

(declare-fun res!771666 () Bool)

(assert (=> b!1720170 (=> (not res!771666) (not e!1100167))))

(assert (=> b!1720170 (= res!771666 (matchR!2133 (regex!3331 (rule!5275 (_1!10657 lt!657603))) (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657787))))))))

(declare-fun d!527404 () Bool)

(assert (=> d!527404 e!1100169))

(declare-fun res!771667 () Bool)

(assert (=> d!527404 (=> res!771667 e!1100169)))

(assert (=> d!527404 (= res!771667 (isEmpty!11833 lt!657787))))

(assert (=> d!527404 (= lt!657787 e!1100168)))

(declare-fun c!281552 () Bool)

(assert (=> d!527404 (= c!281552 (isEmpty!11829 (_1!10659 lt!657786)))))

(declare-fun findLongestMatch!321 (Regex!4659 List!18883) tuple2!18514)

(assert (=> d!527404 (= lt!657786 (findLongestMatch!321 (regex!3331 (rule!5275 (_1!10657 lt!657603))) lt!657601))))

(assert (=> d!527404 (ruleValid!830 thiss!24550 (rule!5275 (_1!10657 lt!657603)))))

(assert (=> d!527404 (= (maxPrefixOneRule!890 thiss!24550 (rule!5275 (_1!10657 lt!657603)) lt!657601) lt!657787)))

(declare-fun b!1720171 () Bool)

(declare-fun res!771670 () Bool)

(assert (=> b!1720171 (=> (not res!771670) (not e!1100167))))

(assert (=> b!1720171 (= res!771670 (= (++!5156 (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657787)))) (_2!10657 (get!5569 lt!657787))) lt!657601))))

(declare-fun b!1720172 () Bool)

(declare-fun res!771668 () Bool)

(assert (=> b!1720172 (=> (not res!771668) (not e!1100167))))

(assert (=> b!1720172 (= res!771668 (= (rule!5275 (_1!10657 (get!5569 lt!657787))) (rule!5275 (_1!10657 lt!657603))))))

(assert (= (and d!527404 c!281552) b!1720169))

(assert (= (and d!527404 (not c!281552)) b!1720168))

(assert (= (and b!1720168 (not res!771671)) b!1720166))

(assert (= (and d!527404 (not res!771667)) b!1720170))

(assert (= (and b!1720170 res!771666) b!1720171))

(assert (= (and b!1720171 res!771670) b!1720164))

(assert (= (and b!1720164 res!771669) b!1720172))

(assert (= (and b!1720172 res!771668) b!1720167))

(assert (= (and b!1720167 res!771672) b!1720165))

(declare-fun m!2125607 () Bool)

(assert (=> b!1720172 m!2125607))

(declare-fun m!2125609 () Bool)

(assert (=> d!527404 m!2125609))

(declare-fun m!2125611 () Bool)

(assert (=> d!527404 m!2125611))

(declare-fun m!2125613 () Bool)

(assert (=> d!527404 m!2125613))

(declare-fun m!2125615 () Bool)

(assert (=> d!527404 m!2125615))

(assert (=> b!1720164 m!2125607))

(declare-fun m!2125617 () Bool)

(assert (=> b!1720164 m!2125617))

(assert (=> b!1720164 m!2125107))

(assert (=> b!1720165 m!2125607))

(declare-fun m!2125619 () Bool)

(assert (=> b!1720165 m!2125619))

(assert (=> b!1720171 m!2125607))

(declare-fun m!2125621 () Bool)

(assert (=> b!1720171 m!2125621))

(assert (=> b!1720171 m!2125621))

(declare-fun m!2125623 () Bool)

(assert (=> b!1720171 m!2125623))

(assert (=> b!1720171 m!2125623))

(declare-fun m!2125625 () Bool)

(assert (=> b!1720171 m!2125625))

(declare-fun m!2125627 () Bool)

(assert (=> b!1720168 m!2125627))

(assert (=> b!1720168 m!2125107))

(declare-fun m!2125629 () Bool)

(assert (=> b!1720168 m!2125629))

(declare-fun m!2125631 () Bool)

(assert (=> b!1720168 m!2125631))

(declare-fun m!2125633 () Bool)

(assert (=> b!1720168 m!2125633))

(declare-fun m!2125635 () Bool)

(assert (=> b!1720168 m!2125635))

(assert (=> b!1720168 m!2125633))

(assert (=> b!1720168 m!2125633))

(declare-fun m!2125637 () Bool)

(assert (=> b!1720168 m!2125637))

(assert (=> b!1720168 m!2125633))

(declare-fun m!2125639 () Bool)

(assert (=> b!1720168 m!2125639))

(assert (=> b!1720168 m!2125107))

(declare-fun m!2125641 () Bool)

(assert (=> b!1720168 m!2125641))

(assert (=> b!1720168 m!2125627))

(assert (=> b!1720166 m!2125627))

(assert (=> b!1720166 m!2125107))

(assert (=> b!1720166 m!2125627))

(assert (=> b!1720166 m!2125107))

(assert (=> b!1720166 m!2125629))

(declare-fun m!2125643 () Bool)

(assert (=> b!1720166 m!2125643))

(assert (=> b!1720170 m!2125607))

(assert (=> b!1720170 m!2125621))

(assert (=> b!1720170 m!2125621))

(assert (=> b!1720170 m!2125623))

(assert (=> b!1720170 m!2125623))

(declare-fun m!2125645 () Bool)

(assert (=> b!1720170 m!2125645))

(assert (=> b!1720167 m!2125607))

(declare-fun m!2125647 () Bool)

(assert (=> b!1720167 m!2125647))

(assert (=> b!1720167 m!2125647))

(declare-fun m!2125649 () Bool)

(assert (=> b!1720167 m!2125649))

(assert (=> b!1719801 d!527404))

(declare-fun d!527442 () Bool)

(declare-fun lt!657790 () List!18883)

(assert (=> d!527442 (= (++!5156 lt!657610 lt!657790) lt!657601)))

(declare-fun e!1100172 () List!18883)

(assert (=> d!527442 (= lt!657790 e!1100172)))

(declare-fun c!281555 () Bool)

(assert (=> d!527442 (= c!281555 ((_ is Cons!18813) lt!657610))))

(assert (=> d!527442 (>= (size!14950 lt!657601) (size!14950 lt!657610))))

(assert (=> d!527442 (= (getSuffix!766 lt!657601 lt!657610) lt!657790)))

(declare-fun b!1720177 () Bool)

(assert (=> b!1720177 (= e!1100172 (getSuffix!766 (tail!2569 lt!657601) (t!159318 lt!657610)))))

(declare-fun b!1720178 () Bool)

(assert (=> b!1720178 (= e!1100172 lt!657601)))

(assert (= (and d!527442 c!281555) b!1720177))

(assert (= (and d!527442 (not c!281555)) b!1720178))

(declare-fun m!2125651 () Bool)

(assert (=> d!527442 m!2125651))

(assert (=> d!527442 m!2125107))

(assert (=> d!527442 m!2125097))

(declare-fun m!2125653 () Bool)

(assert (=> b!1720177 m!2125653))

(assert (=> b!1720177 m!2125653))

(declare-fun m!2125655 () Bool)

(assert (=> b!1720177 m!2125655))

(assert (=> b!1719801 d!527442))

(declare-fun d!527444 () Bool)

(declare-fun fromListB!1057 (List!18883) BalanceConc!12458)

(assert (=> d!527444 (= (seqFromList!2305 lt!657610) (fromListB!1057 lt!657610))))

(declare-fun bs!402186 () Bool)

(assert (= bs!402186 d!527444))

(declare-fun m!2125657 () Bool)

(assert (=> bs!402186 m!2125657))

(assert (=> b!1719801 d!527444))

(declare-fun d!527446 () Bool)

(declare-fun lt!657791 () Int)

(assert (=> d!527446 (>= lt!657791 0)))

(declare-fun e!1100173 () Int)

(assert (=> d!527446 (= lt!657791 e!1100173)))

(declare-fun c!281556 () Bool)

(assert (=> d!527446 (= c!281556 ((_ is Nil!18813) lt!657610))))

(assert (=> d!527446 (= (size!14950 lt!657610) lt!657791)))

(declare-fun b!1720179 () Bool)

(assert (=> b!1720179 (= e!1100173 0)))

(declare-fun b!1720180 () Bool)

(assert (=> b!1720180 (= e!1100173 (+ 1 (size!14950 (t!159318 lt!657610))))))

(assert (= (and d!527446 c!281556) b!1720179))

(assert (= (and d!527446 (not c!281556)) b!1720180))

(declare-fun m!2125659 () Bool)

(assert (=> b!1720180 m!2125659))

(assert (=> b!1719801 d!527446))

(declare-fun d!527448 () Bool)

(assert (=> d!527448 (= (_2!10657 lt!657603) lt!657612)))

(declare-fun lt!657794 () Unit!32651)

(declare-fun choose!10456 (List!18883 List!18883 List!18883 List!18883 List!18883) Unit!32651)

(assert (=> d!527448 (= lt!657794 (choose!10456 lt!657610 (_2!10657 lt!657603) lt!657610 lt!657612 lt!657601))))

(assert (=> d!527448 (isPrefix!1572 lt!657610 lt!657601)))

(assert (=> d!527448 (= (lemmaSamePrefixThenSameSuffix!716 lt!657610 (_2!10657 lt!657603) lt!657610 lt!657612 lt!657601) lt!657794)))

(declare-fun bs!402187 () Bool)

(assert (= bs!402187 d!527448))

(declare-fun m!2125661 () Bool)

(assert (=> bs!402187 m!2125661))

(assert (=> bs!402187 m!2125155))

(assert (=> b!1719801 d!527448))

(declare-fun d!527450 () Bool)

(declare-fun lt!657797 () Int)

(assert (=> d!527450 (= lt!657797 (size!14950 (list!7600 lt!657608)))))

(declare-fun size!14951 (Conc!6257) Int)

(assert (=> d!527450 (= lt!657797 (size!14951 (c!281479 lt!657608)))))

(assert (=> d!527450 (= (size!14949 lt!657608) lt!657797)))

(declare-fun bs!402188 () Bool)

(assert (= bs!402188 d!527450))

(assert (=> bs!402188 m!2125145))

(assert (=> bs!402188 m!2125145))

(declare-fun m!2125663 () Bool)

(assert (=> bs!402188 m!2125663))

(declare-fun m!2125665 () Bool)

(assert (=> bs!402188 m!2125665))

(assert (=> b!1719780 d!527450))

(declare-fun d!527452 () Bool)

(assert (=> d!527452 (= (apply!5136 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) lt!657608) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))

(declare-fun b_lambda!54507 () Bool)

(assert (=> (not b_lambda!54507) (not d!527452)))

(assert (=> d!527452 t!159306))

(declare-fun b_and!125475 () Bool)

(assert (= b_and!125451 (and (=> t!159306 result!122424) b_and!125475)))

(assert (=> d!527452 t!159308))

(declare-fun b_and!125477 () Bool)

(assert (= b_and!125453 (and (=> t!159308 result!122428) b_and!125477)))

(assert (=> d!527452 t!159310))

(declare-fun b_and!125479 () Bool)

(assert (= b_and!125455 (and (=> t!159310 result!122430) b_and!125479)))

(assert (=> d!527452 m!2125133))

(assert (=> b!1719780 d!527452))

(declare-fun d!527454 () Bool)

(assert (=> d!527454 (= (size!14948 (_1!10657 lt!657603)) (size!14950 (originalCharacters!4145 (_1!10657 lt!657603))))))

(declare-fun Unit!32656 () Unit!32651)

(assert (=> d!527454 (= (lemmaCharactersSize!403 (_1!10657 lt!657603)) Unit!32656)))

(declare-fun bs!402189 () Bool)

(assert (= bs!402189 d!527454))

(declare-fun m!2125667 () Bool)

(assert (=> bs!402189 m!2125667))

(assert (=> b!1719780 d!527454))

(declare-fun d!527456 () Bool)

(assert (=> d!527456 (= (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603))) (fromListB!1057 (originalCharacters!4145 (_1!10657 lt!657603))))))

(declare-fun bs!402190 () Bool)

(assert (= bs!402190 d!527456))

(declare-fun m!2125669 () Bool)

(assert (=> bs!402190 m!2125669))

(assert (=> b!1719780 d!527456))

(declare-fun b!1720205 () Bool)

(declare-fun e!1100186 () Bool)

(assert (=> b!1720205 (= e!1100186 true)))

(declare-fun d!527458 () Bool)

(assert (=> d!527458 e!1100186))

(assert (= d!527458 b!1720205))

(declare-fun order!11441 () Int)

(declare-fun lambda!69086 () Int)

(declare-fun dynLambda!8645 (Int Int) Int)

(assert (=> b!1720205 (< (dynLambda!8640 order!11435 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) (dynLambda!8645 order!11441 lambda!69086))))

(assert (=> b!1720205 (< (dynLambda!8642 order!11439 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) (dynLambda!8645 order!11441 lambda!69086))))

(assert (=> d!527458 (= (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603)))))))

(declare-fun lt!657808 () Unit!32651)

(declare-fun Forall2of!72 (Int BalanceConc!12458 BalanceConc!12458) Unit!32651)

(assert (=> d!527458 (= lt!657808 (Forall2of!72 lambda!69086 lt!657608 (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603)))))))

(assert (=> d!527458 (= (list!7600 lt!657608) (list!7600 (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603)))))))

(assert (=> d!527458 (= (lemmaEqSameImage!256 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) lt!657608 (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603)))) lt!657808)))

(declare-fun b_lambda!54509 () Bool)

(assert (=> (not b_lambda!54509) (not d!527458)))

(assert (=> d!527458 t!159306))

(declare-fun b_and!125481 () Bool)

(assert (= b_and!125475 (and (=> t!159306 result!122424) b_and!125481)))

(assert (=> d!527458 t!159308))

(declare-fun b_and!125483 () Bool)

(assert (= b_and!125477 (and (=> t!159308 result!122428) b_and!125483)))

(assert (=> d!527458 t!159310))

(declare-fun b_and!125485 () Bool)

(assert (= b_and!125479 (and (=> t!159310 result!122430) b_and!125485)))

(declare-fun b_lambda!54511 () Bool)

(assert (=> (not b_lambda!54511) (not d!527458)))

(declare-fun tb!101895 () Bool)

(declare-fun t!159345 () Bool)

(assert (=> (and b!1719787 (= (toValue!4838 (transformation!3331 (rule!5275 token!523))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159345) tb!101895))

(declare-fun result!122462 () Bool)

(assert (=> tb!101895 (= result!122462 (inv!21 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (seqFromList!2305 (originalCharacters!4145 (_1!10657 lt!657603))))))))

(declare-fun m!2125671 () Bool)

(assert (=> tb!101895 m!2125671))

(assert (=> d!527458 t!159345))

(declare-fun b_and!125487 () Bool)

(assert (= b_and!125481 (and (=> t!159345 result!122462) b_and!125487)))

(declare-fun t!159347 () Bool)

(declare-fun tb!101897 () Bool)

(assert (=> (and b!1719782 (= (toValue!4838 (transformation!3331 (h!24215 rules!3447))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159347) tb!101897))

(declare-fun result!122464 () Bool)

(assert (= result!122464 result!122462))

(assert (=> d!527458 t!159347))

(declare-fun b_and!125489 () Bool)

(assert (= b_and!125483 (and (=> t!159347 result!122464) b_and!125489)))

(declare-fun tb!101899 () Bool)

(declare-fun t!159349 () Bool)

(assert (=> (and b!1719799 (= (toValue!4838 (transformation!3331 rule!422)) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159349) tb!101899))

(declare-fun result!122466 () Bool)

(assert (= result!122466 result!122462))

(assert (=> d!527458 t!159349))

(declare-fun b_and!125491 () Bool)

(assert (= b_and!125485 (and (=> t!159349 result!122466) b_and!125491)))

(assert (=> d!527458 m!2125175))

(declare-fun m!2125673 () Bool)

(assert (=> d!527458 m!2125673))

(assert (=> d!527458 m!2125175))

(declare-fun m!2125675 () Bool)

(assert (=> d!527458 m!2125675))

(assert (=> d!527458 m!2125145))

(assert (=> d!527458 m!2125133))

(assert (=> d!527458 m!2125175))

(declare-fun m!2125677 () Bool)

(assert (=> d!527458 m!2125677))

(assert (=> b!1719780 d!527458))

(declare-fun b!1720206 () Bool)

(declare-fun res!771691 () Bool)

(declare-fun e!1100193 () Bool)

(assert (=> b!1720206 (=> res!771691 e!1100193)))

(assert (=> b!1720206 (= res!771691 (not (isEmpty!11829 (tail!2569 lt!657611))))))

(declare-fun b!1720207 () Bool)

(declare-fun res!771693 () Bool)

(declare-fun e!1100194 () Bool)

(assert (=> b!1720207 (=> res!771693 e!1100194)))

(assert (=> b!1720207 (= res!771693 (not ((_ is ElementMatch!4659) (regex!3331 rule!422))))))

(declare-fun e!1100190 () Bool)

(assert (=> b!1720207 (= e!1100190 e!1100194)))

(declare-fun b!1720208 () Bool)

(declare-fun res!771690 () Bool)

(declare-fun e!1100192 () Bool)

(assert (=> b!1720208 (=> (not res!771690) (not e!1100192))))

(declare-fun call!109710 () Bool)

(assert (=> b!1720208 (= res!771690 (not call!109710))))

(declare-fun b!1720209 () Bool)

(declare-fun e!1100188 () Bool)

(assert (=> b!1720209 (= e!1100194 e!1100188)))

(declare-fun res!771696 () Bool)

(assert (=> b!1720209 (=> (not res!771696) (not e!1100188))))

(declare-fun lt!657811 () Bool)

(assert (=> b!1720209 (= res!771696 (not lt!657811))))

(declare-fun b!1720210 () Bool)

(assert (=> b!1720210 (= e!1100188 e!1100193)))

(declare-fun res!771692 () Bool)

(assert (=> b!1720210 (=> res!771692 e!1100193)))

(assert (=> b!1720210 (= res!771692 call!109710)))

(declare-fun b!1720211 () Bool)

(assert (=> b!1720211 (= e!1100190 (not lt!657811))))

(declare-fun b!1720212 () Bool)

(assert (=> b!1720212 (= e!1100193 (not (= (head!3882 lt!657611) (c!281478 (regex!3331 rule!422)))))))

(declare-fun b!1720213 () Bool)

(declare-fun e!1100191 () Bool)

(assert (=> b!1720213 (= e!1100191 e!1100190)))

(declare-fun c!281560 () Bool)

(assert (=> b!1720213 (= c!281560 ((_ is EmptyLang!4659) (regex!3331 rule!422)))))

(declare-fun b!1720214 () Bool)

(declare-fun res!771694 () Bool)

(assert (=> b!1720214 (=> res!771694 e!1100194)))

(assert (=> b!1720214 (= res!771694 e!1100192)))

(declare-fun res!771689 () Bool)

(assert (=> b!1720214 (=> (not res!771689) (not e!1100192))))

(assert (=> b!1720214 (= res!771689 lt!657811)))

(declare-fun b!1720215 () Bool)

(declare-fun res!771695 () Bool)

(assert (=> b!1720215 (=> (not res!771695) (not e!1100192))))

(assert (=> b!1720215 (= res!771695 (isEmpty!11829 (tail!2569 lt!657611)))))

(declare-fun b!1720216 () Bool)

(assert (=> b!1720216 (= e!1100191 (= lt!657811 call!109710))))

(declare-fun bm!109705 () Bool)

(assert (=> bm!109705 (= call!109710 (isEmpty!11829 lt!657611))))

(declare-fun b!1720217 () Bool)

(declare-fun e!1100189 () Bool)

(assert (=> b!1720217 (= e!1100189 (matchR!2133 (derivativeStep!1172 (regex!3331 rule!422) (head!3882 lt!657611)) (tail!2569 lt!657611)))))

(declare-fun d!527460 () Bool)

(assert (=> d!527460 e!1100191))

(declare-fun c!281561 () Bool)

(assert (=> d!527460 (= c!281561 ((_ is EmptyExpr!4659) (regex!3331 rule!422)))))

(assert (=> d!527460 (= lt!657811 e!1100189)))

(declare-fun c!281559 () Bool)

(assert (=> d!527460 (= c!281559 (isEmpty!11829 lt!657611))))

(assert (=> d!527460 (validRegex!1877 (regex!3331 rule!422))))

(assert (=> d!527460 (= (matchR!2133 (regex!3331 rule!422) lt!657611) lt!657811)))

(declare-fun b!1720218 () Bool)

(assert (=> b!1720218 (= e!1100189 (nullable!1403 (regex!3331 rule!422)))))

(declare-fun b!1720219 () Bool)

(assert (=> b!1720219 (= e!1100192 (= (head!3882 lt!657611) (c!281478 (regex!3331 rule!422))))))

(assert (= (and d!527460 c!281559) b!1720218))

(assert (= (and d!527460 (not c!281559)) b!1720217))

(assert (= (and d!527460 c!281561) b!1720216))

(assert (= (and d!527460 (not c!281561)) b!1720213))

(assert (= (and b!1720213 c!281560) b!1720211))

(assert (= (and b!1720213 (not c!281560)) b!1720207))

(assert (= (and b!1720207 (not res!771693)) b!1720214))

(assert (= (and b!1720214 res!771689) b!1720208))

(assert (= (and b!1720208 res!771690) b!1720215))

(assert (= (and b!1720215 res!771695) b!1720219))

(assert (= (and b!1720214 (not res!771694)) b!1720209))

(assert (= (and b!1720209 res!771696) b!1720210))

(assert (= (and b!1720210 (not res!771692)) b!1720206))

(assert (= (and b!1720206 (not res!771691)) b!1720212))

(assert (= (or b!1720216 b!1720208 b!1720210) bm!109705))

(declare-fun m!2125679 () Bool)

(assert (=> b!1720217 m!2125679))

(assert (=> b!1720217 m!2125679))

(declare-fun m!2125681 () Bool)

(assert (=> b!1720217 m!2125681))

(declare-fun m!2125683 () Bool)

(assert (=> b!1720217 m!2125683))

(assert (=> b!1720217 m!2125681))

(assert (=> b!1720217 m!2125683))

(declare-fun m!2125685 () Bool)

(assert (=> b!1720217 m!2125685))

(assert (=> b!1720206 m!2125683))

(assert (=> b!1720206 m!2125683))

(declare-fun m!2125687 () Bool)

(assert (=> b!1720206 m!2125687))

(declare-fun m!2125689 () Bool)

(assert (=> b!1720218 m!2125689))

(declare-fun m!2125691 () Bool)

(assert (=> d!527460 m!2125691))

(declare-fun m!2125693 () Bool)

(assert (=> d!527460 m!2125693))

(assert (=> bm!109705 m!2125691))

(assert (=> b!1720215 m!2125683))

(assert (=> b!1720215 m!2125683))

(assert (=> b!1720215 m!2125687))

(assert (=> b!1720219 m!2125679))

(assert (=> b!1720212 m!2125679))

(assert (=> b!1719805 d!527460))

(declare-fun d!527462 () Bool)

(declare-fun res!771701 () Bool)

(declare-fun e!1100197 () Bool)

(assert (=> d!527462 (=> (not res!771701) (not e!1100197))))

(assert (=> d!527462 (= res!771701 (validRegex!1877 (regex!3331 rule!422)))))

(assert (=> d!527462 (= (ruleValid!830 thiss!24550 rule!422) e!1100197)))

(declare-fun b!1720224 () Bool)

(declare-fun res!771702 () Bool)

(assert (=> b!1720224 (=> (not res!771702) (not e!1100197))))

(assert (=> b!1720224 (= res!771702 (not (nullable!1403 (regex!3331 rule!422))))))

(declare-fun b!1720225 () Bool)

(assert (=> b!1720225 (= e!1100197 (not (= (tag!3639 rule!422) (String!21438 ""))))))

(assert (= (and d!527462 res!771701) b!1720224))

(assert (= (and b!1720224 res!771702) b!1720225))

(assert (=> d!527462 m!2125693))

(assert (=> b!1720224 m!2125689))

(assert (=> b!1719805 d!527462))

(declare-fun d!527464 () Bool)

(assert (=> d!527464 (ruleValid!830 thiss!24550 rule!422)))

(declare-fun lt!657819 () Unit!32651)

(declare-fun choose!10458 (LexerInterface!2960 Rule!6462 List!18884) Unit!32651)

(assert (=> d!527464 (= lt!657819 (choose!10458 thiss!24550 rule!422 rules!3447))))

(assert (=> d!527464 (contains!3353 rules!3447 rule!422)))

(assert (=> d!527464 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!354 thiss!24550 rule!422 rules!3447) lt!657819)))

(declare-fun bs!402191 () Bool)

(assert (= bs!402191 d!527464))

(assert (=> bs!402191 m!2125111))

(declare-fun m!2125695 () Bool)

(assert (=> bs!402191 m!2125695))

(assert (=> bs!402191 m!2125141))

(assert (=> b!1719805 d!527464))

(declare-fun b!1720235 () Bool)

(declare-fun e!1100203 () Bool)

(declare-fun e!1100204 () Bool)

(assert (=> b!1720235 (= e!1100203 e!1100204)))

(declare-fun c!281563 () Bool)

(assert (=> b!1720235 (= c!281563 ((_ is IntegerValue!10264) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))

(declare-fun d!527466 () Bool)

(declare-fun c!281564 () Bool)

(assert (=> d!527466 (= c!281564 ((_ is IntegerValue!10263) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))

(assert (=> d!527466 (= (inv!21 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)) e!1100203)))

(declare-fun b!1720236 () Bool)

(assert (=> b!1720236 (= e!1100203 (inv!16 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))

(declare-fun b!1720237 () Bool)

(declare-fun e!1100202 () Bool)

(assert (=> b!1720237 (= e!1100202 (inv!15 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))

(declare-fun b!1720238 () Bool)

(declare-fun res!771710 () Bool)

(assert (=> b!1720238 (=> res!771710 e!1100202)))

(assert (=> b!1720238 (= res!771710 (not ((_ is IntegerValue!10265) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))))

(assert (=> b!1720238 (= e!1100204 e!1100202)))

(declare-fun b!1720239 () Bool)

(assert (=> b!1720239 (= e!1100204 (inv!17 (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))

(assert (= (and d!527466 c!281564) b!1720236))

(assert (= (and d!527466 (not c!281564)) b!1720235))

(assert (= (and b!1720235 c!281563) b!1720239))

(assert (= (and b!1720235 (not c!281563)) b!1720238))

(assert (= (and b!1720238 (not res!771710)) b!1720237))

(declare-fun m!2125711 () Bool)

(assert (=> b!1720236 m!2125711))

(declare-fun m!2125713 () Bool)

(assert (=> b!1720237 m!2125713))

(declare-fun m!2125715 () Bool)

(assert (=> b!1720239 m!2125715))

(assert (=> tb!101859 d!527466))

(declare-fun d!527468 () Bool)

(assert (=> d!527468 (= (inv!24284 (tag!3639 (rule!5275 token!523))) (= (mod (str.len (value!104605 (tag!3639 (rule!5275 token!523)))) 2) 0))))

(assert (=> b!1719784 d!527468))

(declare-fun d!527470 () Bool)

(declare-fun res!771713 () Bool)

(declare-fun e!1100207 () Bool)

(assert (=> d!527470 (=> (not res!771713) (not e!1100207))))

(assert (=> d!527470 (= res!771713 (semiInverseModEq!1317 (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toValue!4838 (transformation!3331 (rule!5275 token!523)))))))

(assert (=> d!527470 (= (inv!24289 (transformation!3331 (rule!5275 token!523))) e!1100207)))

(declare-fun b!1720242 () Bool)

(assert (=> b!1720242 (= e!1100207 (equivClasses!1258 (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toValue!4838 (transformation!3331 (rule!5275 token!523)))))))

(assert (= (and d!527470 res!771713) b!1720242))

(declare-fun m!2125747 () Bool)

(assert (=> d!527470 m!2125747))

(declare-fun m!2125749 () Bool)

(assert (=> b!1720242 m!2125749))

(assert (=> b!1719784 d!527470))

(declare-fun d!527474 () Bool)

(declare-fun res!771716 () Bool)

(declare-fun e!1100210 () Bool)

(assert (=> d!527474 (=> (not res!771716) (not e!1100210))))

(declare-fun rulesValid!1244 (LexerInterface!2960 List!18884) Bool)

(assert (=> d!527474 (= res!771716 (rulesValid!1244 thiss!24550 rules!3447))))

(assert (=> d!527474 (= (rulesInvariant!2629 thiss!24550 rules!3447) e!1100210)))

(declare-fun b!1720245 () Bool)

(declare-datatypes ((List!18888 0))(
  ( (Nil!18818) (Cons!18818 (h!24219 String!21437) (t!159383 List!18888)) )
))
(declare-fun noDuplicateTag!1244 (LexerInterface!2960 List!18884 List!18888) Bool)

(assert (=> b!1720245 (= e!1100210 (noDuplicateTag!1244 thiss!24550 rules!3447 Nil!18818))))

(assert (= (and d!527474 res!771716) b!1720245))

(declare-fun m!2125751 () Bool)

(assert (=> d!527474 m!2125751))

(declare-fun m!2125753 () Bool)

(assert (=> b!1720245 m!2125753))

(assert (=> b!1719783 d!527474))

(declare-fun d!527476 () Bool)

(declare-fun c!281565 () Bool)

(assert (=> d!527476 (= c!281565 ((_ is Node!6257) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))))))

(declare-fun e!1100211 () Bool)

(assert (=> d!527476 (= (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))) e!1100211)))

(declare-fun b!1720246 () Bool)

(assert (=> b!1720246 (= e!1100211 (inv!24295 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))))))

(declare-fun b!1720247 () Bool)

(declare-fun e!1100212 () Bool)

(assert (=> b!1720247 (= e!1100211 e!1100212)))

(declare-fun res!771717 () Bool)

(assert (=> b!1720247 (= res!771717 (not ((_ is Leaf!9143) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))))))))

(assert (=> b!1720247 (=> res!771717 e!1100212)))

(declare-fun b!1720248 () Bool)

(assert (=> b!1720248 (= e!1100212 (inv!24296 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))))))

(assert (= (and d!527476 c!281565) b!1720246))

(assert (= (and d!527476 (not c!281565)) b!1720247))

(assert (= (and b!1720247 (not res!771717)) b!1720248))

(declare-fun m!2125755 () Bool)

(assert (=> b!1720246 m!2125755))

(declare-fun m!2125757 () Bool)

(assert (=> b!1720248 m!2125757))

(assert (=> b!1719824 d!527476))

(declare-fun d!527478 () Bool)

(assert (=> d!527478 (= (inv!24284 (tag!3639 rule!422)) (= (mod (str.len (value!104605 (tag!3639 rule!422))) 2) 0))))

(assert (=> b!1719804 d!527478))

(declare-fun d!527480 () Bool)

(declare-fun res!771718 () Bool)

(declare-fun e!1100213 () Bool)

(assert (=> d!527480 (=> (not res!771718) (not e!1100213))))

(assert (=> d!527480 (= res!771718 (semiInverseModEq!1317 (toChars!4697 (transformation!3331 rule!422)) (toValue!4838 (transformation!3331 rule!422))))))

(assert (=> d!527480 (= (inv!24289 (transformation!3331 rule!422)) e!1100213)))

(declare-fun b!1720249 () Bool)

(assert (=> b!1720249 (= e!1100213 (equivClasses!1258 (toChars!4697 (transformation!3331 rule!422)) (toValue!4838 (transformation!3331 rule!422))))))

(assert (= (and d!527480 res!771718) b!1720249))

(declare-fun m!2125759 () Bool)

(assert (=> d!527480 m!2125759))

(declare-fun m!2125761 () Bool)

(assert (=> b!1720249 m!2125761))

(assert (=> b!1719804 d!527480))

(declare-fun d!527482 () Bool)

(assert (=> d!527482 (= (get!5569 lt!657616) (v!25086 lt!657616))))

(assert (=> b!1719786 d!527482))

(declare-fun b!1720259 () Bool)

(declare-fun res!771728 () Bool)

(declare-fun e!1100222 () Bool)

(assert (=> b!1720259 (=> (not res!771728) (not e!1100222))))

(assert (=> b!1720259 (= res!771728 (= (head!3882 lt!657610) (head!3882 lt!657601)))))

(declare-fun d!527484 () Bool)

(declare-fun e!1100220 () Bool)

(assert (=> d!527484 e!1100220))

(declare-fun res!771730 () Bool)

(assert (=> d!527484 (=> res!771730 e!1100220)))

(declare-fun lt!657822 () Bool)

(assert (=> d!527484 (= res!771730 (not lt!657822))))

(declare-fun e!1100221 () Bool)

(assert (=> d!527484 (= lt!657822 e!1100221)))

(declare-fun res!771729 () Bool)

(assert (=> d!527484 (=> res!771729 e!1100221)))

(assert (=> d!527484 (= res!771729 ((_ is Nil!18813) lt!657610))))

(assert (=> d!527484 (= (isPrefix!1572 lt!657610 lt!657601) lt!657822)))

(declare-fun b!1720258 () Bool)

(assert (=> b!1720258 (= e!1100221 e!1100222)))

(declare-fun res!771727 () Bool)

(assert (=> b!1720258 (=> (not res!771727) (not e!1100222))))

(assert (=> b!1720258 (= res!771727 (not ((_ is Nil!18813) lt!657601)))))

(declare-fun b!1720261 () Bool)

(assert (=> b!1720261 (= e!1100220 (>= (size!14950 lt!657601) (size!14950 lt!657610)))))

(declare-fun b!1720260 () Bool)

(assert (=> b!1720260 (= e!1100222 (isPrefix!1572 (tail!2569 lt!657610) (tail!2569 lt!657601)))))

(assert (= (and d!527484 (not res!771729)) b!1720258))

(assert (= (and b!1720258 res!771727) b!1720259))

(assert (= (and b!1720259 res!771728) b!1720260))

(assert (= (and d!527484 (not res!771730)) b!1720261))

(declare-fun m!2125763 () Bool)

(assert (=> b!1720259 m!2125763))

(declare-fun m!2125765 () Bool)

(assert (=> b!1720259 m!2125765))

(assert (=> b!1720261 m!2125107))

(assert (=> b!1720261 m!2125097))

(declare-fun m!2125767 () Bool)

(assert (=> b!1720260 m!2125767))

(assert (=> b!1720260 m!2125653))

(assert (=> b!1720260 m!2125767))

(assert (=> b!1720260 m!2125653))

(declare-fun m!2125769 () Bool)

(assert (=> b!1720260 m!2125769))

(assert (=> b!1719786 d!527484))

(declare-fun b!1720276 () Bool)

(declare-fun e!1100230 () List!18883)

(assert (=> b!1720276 (= e!1100230 (Cons!18813 (h!24214 lt!657610) (++!5156 (t!159318 lt!657610) (_2!10657 lt!657603))))))

(declare-fun d!527486 () Bool)

(declare-fun e!1100231 () Bool)

(assert (=> d!527486 e!1100231))

(declare-fun res!771736 () Bool)

(assert (=> d!527486 (=> (not res!771736) (not e!1100231))))

(declare-fun lt!657828 () List!18883)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2684 (List!18883) (InoxSet C!9492))

(assert (=> d!527486 (= res!771736 (= (content!2684 lt!657828) ((_ map or) (content!2684 lt!657610) (content!2684 (_2!10657 lt!657603)))))))

(assert (=> d!527486 (= lt!657828 e!1100230)))

(declare-fun c!281570 () Bool)

(assert (=> d!527486 (= c!281570 ((_ is Nil!18813) lt!657610))))

(assert (=> d!527486 (= (++!5156 lt!657610 (_2!10657 lt!657603)) lt!657828)))

(declare-fun b!1720277 () Bool)

(declare-fun res!771737 () Bool)

(assert (=> b!1720277 (=> (not res!771737) (not e!1100231))))

(assert (=> b!1720277 (= res!771737 (= (size!14950 lt!657828) (+ (size!14950 lt!657610) (size!14950 (_2!10657 lt!657603)))))))

(declare-fun b!1720275 () Bool)

(assert (=> b!1720275 (= e!1100230 (_2!10657 lt!657603))))

(declare-fun b!1720278 () Bool)

(assert (=> b!1720278 (= e!1100231 (or (not (= (_2!10657 lt!657603) Nil!18813)) (= lt!657828 lt!657610)))))

(assert (= (and d!527486 c!281570) b!1720275))

(assert (= (and d!527486 (not c!281570)) b!1720276))

(assert (= (and d!527486 res!771736) b!1720277))

(assert (= (and b!1720277 res!771737) b!1720278))

(declare-fun m!2125779 () Bool)

(assert (=> b!1720276 m!2125779))

(declare-fun m!2125781 () Bool)

(assert (=> d!527486 m!2125781))

(declare-fun m!2125783 () Bool)

(assert (=> d!527486 m!2125783))

(declare-fun m!2125785 () Bool)

(assert (=> d!527486 m!2125785))

(declare-fun m!2125787 () Bool)

(assert (=> b!1720277 m!2125787))

(assert (=> b!1720277 m!2125097))

(declare-fun m!2125789 () Bool)

(assert (=> b!1720277 m!2125789))

(assert (=> b!1719786 d!527486))

(declare-fun b!1720294 () Bool)

(declare-fun e!1100239 () List!18883)

(assert (=> b!1720294 (= e!1100239 (Cons!18813 (h!24214 lt!657611) (++!5156 (t!159318 lt!657611) suffix!1421)))))

(declare-fun d!527496 () Bool)

(declare-fun e!1100240 () Bool)

(assert (=> d!527496 e!1100240))

(declare-fun res!771746 () Bool)

(assert (=> d!527496 (=> (not res!771746) (not e!1100240))))

(declare-fun lt!657830 () List!18883)

(assert (=> d!527496 (= res!771746 (= (content!2684 lt!657830) ((_ map or) (content!2684 lt!657611) (content!2684 suffix!1421))))))

(assert (=> d!527496 (= lt!657830 e!1100239)))

(declare-fun c!281574 () Bool)

(assert (=> d!527496 (= c!281574 ((_ is Nil!18813) lt!657611))))

(assert (=> d!527496 (= (++!5156 lt!657611 suffix!1421) lt!657830)))

(declare-fun b!1720295 () Bool)

(declare-fun res!771747 () Bool)

(assert (=> b!1720295 (=> (not res!771747) (not e!1100240))))

(assert (=> b!1720295 (= res!771747 (= (size!14950 lt!657830) (+ (size!14950 lt!657611) (size!14950 suffix!1421))))))

(declare-fun b!1720293 () Bool)

(assert (=> b!1720293 (= e!1100239 suffix!1421)))

(declare-fun b!1720296 () Bool)

(assert (=> b!1720296 (= e!1100240 (or (not (= suffix!1421 Nil!18813)) (= lt!657830 lt!657611)))))

(assert (= (and d!527496 c!281574) b!1720293))

(assert (= (and d!527496 (not c!281574)) b!1720294))

(assert (= (and d!527496 res!771746) b!1720295))

(assert (= (and b!1720295 res!771747) b!1720296))

(declare-fun m!2125791 () Bool)

(assert (=> b!1720294 m!2125791))

(declare-fun m!2125793 () Bool)

(assert (=> d!527496 m!2125793))

(declare-fun m!2125795 () Bool)

(assert (=> d!527496 m!2125795))

(declare-fun m!2125797 () Bool)

(assert (=> d!527496 m!2125797))

(declare-fun m!2125799 () Bool)

(assert (=> b!1720295 m!2125799))

(assert (=> b!1720295 m!2125393))

(declare-fun m!2125803 () Bool)

(assert (=> b!1720295 m!2125803))

(assert (=> b!1719786 d!527496))

(declare-fun d!527498 () Bool)

(declare-fun isEmpty!11834 (Option!3687) Bool)

(assert (=> d!527498 (= (isDefined!3030 lt!657613) (not (isEmpty!11834 lt!657613)))))

(declare-fun bs!402193 () Bool)

(assert (= bs!402193 d!527498))

(declare-fun m!2125815 () Bool)

(assert (=> bs!402193 m!2125815))

(assert (=> b!1719786 d!527498))

(declare-fun b!1720330 () Bool)

(declare-fun lt!657844 () Unit!32651)

(declare-fun lt!657846 () Unit!32651)

(assert (=> b!1720330 (= lt!657844 lt!657846)))

(assert (=> b!1720330 (rulesInvariant!2629 thiss!24550 (t!159319 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!132 (LexerInterface!2960 Rule!6462 List!18884) Unit!32651)

(assert (=> b!1720330 (= lt!657846 (lemmaInvariantOnRulesThenOnTail!132 thiss!24550 (h!24215 rules!3447) (t!159319 rules!3447)))))

(declare-fun e!1100263 () Option!3687)

(assert (=> b!1720330 (= e!1100263 (getRuleFromTag!381 thiss!24550 (t!159319 rules!3447) (tag!3639 (rule!5275 (_1!10657 lt!657603)))))))

(declare-fun b!1720331 () Bool)

(declare-fun e!1100262 () Bool)

(declare-fun e!1100261 () Bool)

(assert (=> b!1720331 (= e!1100262 e!1100261)))

(declare-fun res!771767 () Bool)

(assert (=> b!1720331 (=> (not res!771767) (not e!1100261))))

(declare-fun lt!657845 () Option!3687)

(assert (=> b!1720331 (= res!771767 (contains!3353 rules!3447 (get!5570 lt!657845)))))

(declare-fun b!1720332 () Bool)

(declare-fun e!1100260 () Option!3687)

(assert (=> b!1720332 (= e!1100260 e!1100263)))

(declare-fun c!281583 () Bool)

(assert (=> b!1720332 (= c!281583 (and ((_ is Cons!18814) rules!3447) (not (= (tag!3639 (h!24215 rules!3447)) (tag!3639 (rule!5275 (_1!10657 lt!657603)))))))))

(declare-fun b!1720333 () Bool)

(assert (=> b!1720333 (= e!1100263 None!3686)))

(declare-fun d!527504 () Bool)

(assert (=> d!527504 e!1100262))

(declare-fun res!771768 () Bool)

(assert (=> d!527504 (=> res!771768 e!1100262)))

(assert (=> d!527504 (= res!771768 (isEmpty!11834 lt!657845))))

(assert (=> d!527504 (= lt!657845 e!1100260)))

(declare-fun c!281582 () Bool)

(assert (=> d!527504 (= c!281582 (and ((_ is Cons!18814) rules!3447) (= (tag!3639 (h!24215 rules!3447)) (tag!3639 (rule!5275 (_1!10657 lt!657603))))))))

(assert (=> d!527504 (rulesInvariant!2629 thiss!24550 rules!3447)))

(assert (=> d!527504 (= (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 (_1!10657 lt!657603)))) lt!657845)))

(declare-fun b!1720334 () Bool)

(assert (=> b!1720334 (= e!1100261 (= (tag!3639 (get!5570 lt!657845)) (tag!3639 (rule!5275 (_1!10657 lt!657603)))))))

(declare-fun b!1720335 () Bool)

(assert (=> b!1720335 (= e!1100260 (Some!3686 (h!24215 rules!3447)))))

(assert (= (and d!527504 c!281582) b!1720335))

(assert (= (and d!527504 (not c!281582)) b!1720332))

(assert (= (and b!1720332 c!281583) b!1720330))

(assert (= (and b!1720332 (not c!281583)) b!1720333))

(assert (= (and d!527504 (not res!771768)) b!1720331))

(assert (= (and b!1720331 res!771767) b!1720334))

(declare-fun m!2125841 () Bool)

(assert (=> b!1720330 m!2125841))

(declare-fun m!2125843 () Bool)

(assert (=> b!1720330 m!2125843))

(declare-fun m!2125845 () Bool)

(assert (=> b!1720330 m!2125845))

(declare-fun m!2125847 () Bool)

(assert (=> b!1720331 m!2125847))

(assert (=> b!1720331 m!2125847))

(declare-fun m!2125849 () Bool)

(assert (=> b!1720331 m!2125849))

(declare-fun m!2125851 () Bool)

(assert (=> d!527504 m!2125851))

(assert (=> d!527504 m!2125131))

(assert (=> b!1720334 m!2125847))

(assert (=> b!1719786 d!527504))

(declare-fun b!1720337 () Bool)

(declare-fun res!771770 () Bool)

(declare-fun e!1100266 () Bool)

(assert (=> b!1720337 (=> (not res!771770) (not e!1100266))))

(assert (=> b!1720337 (= res!771770 (= (head!3882 lt!657611) (head!3882 lt!657601)))))

(declare-fun d!527518 () Bool)

(declare-fun e!1100264 () Bool)

(assert (=> d!527518 e!1100264))

(declare-fun res!771772 () Bool)

(assert (=> d!527518 (=> res!771772 e!1100264)))

(declare-fun lt!657849 () Bool)

(assert (=> d!527518 (= res!771772 (not lt!657849))))

(declare-fun e!1100265 () Bool)

(assert (=> d!527518 (= lt!657849 e!1100265)))

(declare-fun res!771771 () Bool)

(assert (=> d!527518 (=> res!771771 e!1100265)))

(assert (=> d!527518 (= res!771771 ((_ is Nil!18813) lt!657611))))

(assert (=> d!527518 (= (isPrefix!1572 lt!657611 lt!657601) lt!657849)))

(declare-fun b!1720336 () Bool)

(assert (=> b!1720336 (= e!1100265 e!1100266)))

(declare-fun res!771769 () Bool)

(assert (=> b!1720336 (=> (not res!771769) (not e!1100266))))

(assert (=> b!1720336 (= res!771769 (not ((_ is Nil!18813) lt!657601)))))

(declare-fun b!1720339 () Bool)

(assert (=> b!1720339 (= e!1100264 (>= (size!14950 lt!657601) (size!14950 lt!657611)))))

(declare-fun b!1720338 () Bool)

(assert (=> b!1720338 (= e!1100266 (isPrefix!1572 (tail!2569 lt!657611) (tail!2569 lt!657601)))))

(assert (= (and d!527518 (not res!771771)) b!1720336))

(assert (= (and b!1720336 res!771769) b!1720337))

(assert (= (and b!1720337 res!771770) b!1720338))

(assert (= (and d!527518 (not res!771772)) b!1720339))

(assert (=> b!1720337 m!2125679))

(assert (=> b!1720337 m!2125765))

(assert (=> b!1720339 m!2125107))

(assert (=> b!1720339 m!2125393))

(assert (=> b!1720338 m!2125683))

(assert (=> b!1720338 m!2125653))

(assert (=> b!1720338 m!2125683))

(assert (=> b!1720338 m!2125653))

(declare-fun m!2125853 () Bool)

(assert (=> b!1720338 m!2125853))

(assert (=> b!1719786 d!527518))

(declare-fun d!527520 () Bool)

(declare-fun e!1100275 () Bool)

(assert (=> d!527520 e!1100275))

(declare-fun res!771779 () Bool)

(assert (=> d!527520 (=> (not res!771779) (not e!1100275))))

(assert (=> d!527520 (= res!771779 (isDefined!3030 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 (_1!10657 lt!657603))))))))

(declare-fun lt!657853 () Unit!32651)

(declare-fun choose!10460 (LexerInterface!2960 List!18884 List!18883 Token!6228) Unit!32651)

(assert (=> d!527520 (= lt!657853 (choose!10460 thiss!24550 rules!3447 lt!657601 (_1!10657 lt!657603)))))

(assert (=> d!527520 (rulesInvariant!2629 thiss!24550 rules!3447)))

(assert (=> d!527520 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!381 thiss!24550 rules!3447 lt!657601 (_1!10657 lt!657603)) lt!657853)))

(declare-fun b!1720351 () Bool)

(declare-fun res!771780 () Bool)

(assert (=> b!1720351 (=> (not res!771780) (not e!1100275))))

(assert (=> b!1720351 (= res!771780 (matchR!2133 (regex!3331 (get!5570 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 (_1!10657 lt!657603)))))) (list!7600 (charsOf!1980 (_1!10657 lt!657603)))))))

(declare-fun b!1720352 () Bool)

(assert (=> b!1720352 (= e!1100275 (= (rule!5275 (_1!10657 lt!657603)) (get!5570 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 (_1!10657 lt!657603)))))))))

(assert (= (and d!527520 res!771779) b!1720351))

(assert (= (and b!1720351 res!771780) b!1720352))

(assert (=> d!527520 m!2125167))

(assert (=> d!527520 m!2125167))

(declare-fun m!2125867 () Bool)

(assert (=> d!527520 m!2125867))

(declare-fun m!2125869 () Bool)

(assert (=> d!527520 m!2125869))

(assert (=> d!527520 m!2125131))

(assert (=> b!1720351 m!2125085))

(declare-fun m!2125871 () Bool)

(assert (=> b!1720351 m!2125871))

(assert (=> b!1720351 m!2125167))

(declare-fun m!2125873 () Bool)

(assert (=> b!1720351 m!2125873))

(assert (=> b!1720351 m!2125083))

(assert (=> b!1720351 m!2125085))

(assert (=> b!1720351 m!2125083))

(assert (=> b!1720351 m!2125167))

(assert (=> b!1720352 m!2125167))

(assert (=> b!1720352 m!2125167))

(assert (=> b!1720352 m!2125873))

(assert (=> b!1719786 d!527520))

(declare-fun d!527530 () Bool)

(assert (=> d!527530 (isPrefix!1572 lt!657610 (++!5156 lt!657610 (_2!10657 lt!657603)))))

(declare-fun lt!657858 () Unit!32651)

(declare-fun choose!10461 (List!18883 List!18883) Unit!32651)

(assert (=> d!527530 (= lt!657858 (choose!10461 lt!657610 (_2!10657 lt!657603)))))

(assert (=> d!527530 (= (lemmaConcatTwoListThenFirstIsPrefix!1082 lt!657610 (_2!10657 lt!657603)) lt!657858)))

(declare-fun bs!402199 () Bool)

(assert (= bs!402199 d!527530))

(assert (=> bs!402199 m!2125159))

(assert (=> bs!402199 m!2125159))

(assert (=> bs!402199 m!2125161))

(declare-fun m!2125875 () Bool)

(assert (=> bs!402199 m!2125875))

(assert (=> b!1719786 d!527530))

(assert (=> b!1719786 d!527344))

(declare-fun b!1720354 () Bool)

(declare-fun res!771782 () Bool)

(declare-fun e!1100278 () Bool)

(assert (=> b!1720354 (=> (not res!771782) (not e!1100278))))

(assert (=> b!1720354 (= res!771782 (= (head!3882 lt!657610) (head!3882 (++!5156 lt!657610 (_2!10657 lt!657603)))))))

(declare-fun d!527532 () Bool)

(declare-fun e!1100276 () Bool)

(assert (=> d!527532 e!1100276))

(declare-fun res!771784 () Bool)

(assert (=> d!527532 (=> res!771784 e!1100276)))

(declare-fun lt!657859 () Bool)

(assert (=> d!527532 (= res!771784 (not lt!657859))))

(declare-fun e!1100277 () Bool)

(assert (=> d!527532 (= lt!657859 e!1100277)))

(declare-fun res!771783 () Bool)

(assert (=> d!527532 (=> res!771783 e!1100277)))

(assert (=> d!527532 (= res!771783 ((_ is Nil!18813) lt!657610))))

(assert (=> d!527532 (= (isPrefix!1572 lt!657610 (++!5156 lt!657610 (_2!10657 lt!657603))) lt!657859)))

(declare-fun b!1720353 () Bool)

(assert (=> b!1720353 (= e!1100277 e!1100278)))

(declare-fun res!771781 () Bool)

(assert (=> b!1720353 (=> (not res!771781) (not e!1100278))))

(assert (=> b!1720353 (= res!771781 (not ((_ is Nil!18813) (++!5156 lt!657610 (_2!10657 lt!657603)))))))

(declare-fun b!1720356 () Bool)

(assert (=> b!1720356 (= e!1100276 (>= (size!14950 (++!5156 lt!657610 (_2!10657 lt!657603))) (size!14950 lt!657610)))))

(declare-fun b!1720355 () Bool)

(assert (=> b!1720355 (= e!1100278 (isPrefix!1572 (tail!2569 lt!657610) (tail!2569 (++!5156 lt!657610 (_2!10657 lt!657603)))))))

(assert (= (and d!527532 (not res!771783)) b!1720353))

(assert (= (and b!1720353 res!771781) b!1720354))

(assert (= (and b!1720354 res!771782) b!1720355))

(assert (= (and d!527532 (not res!771784)) b!1720356))

(assert (=> b!1720354 m!2125763))

(assert (=> b!1720354 m!2125159))

(declare-fun m!2125877 () Bool)

(assert (=> b!1720354 m!2125877))

(assert (=> b!1720356 m!2125159))

(declare-fun m!2125879 () Bool)

(assert (=> b!1720356 m!2125879))

(assert (=> b!1720356 m!2125097))

(assert (=> b!1720355 m!2125767))

(assert (=> b!1720355 m!2125159))

(declare-fun m!2125881 () Bool)

(assert (=> b!1720355 m!2125881))

(assert (=> b!1720355 m!2125767))

(assert (=> b!1720355 m!2125881))

(declare-fun m!2125883 () Bool)

(assert (=> b!1720355 m!2125883))

(assert (=> b!1719786 d!527532))

(declare-fun b!1720357 () Bool)

(declare-fun res!771791 () Bool)

(declare-fun e!1100279 () Bool)

(assert (=> b!1720357 (=> (not res!771791) (not e!1100279))))

(declare-fun lt!657863 () Option!3686)

(assert (=> b!1720357 (= res!771791 (matchR!2133 (regex!3331 (rule!5275 (_1!10657 (get!5569 lt!657863)))) (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657863))))))))

(declare-fun b!1720358 () Bool)

(declare-fun e!1100280 () Option!3686)

(declare-fun lt!657864 () Option!3686)

(declare-fun lt!657861 () Option!3686)

(assert (=> b!1720358 (= e!1100280 (ite (and ((_ is None!3685) lt!657864) ((_ is None!3685) lt!657861)) None!3685 (ite ((_ is None!3685) lt!657861) lt!657864 (ite ((_ is None!3685) lt!657864) lt!657861 (ite (>= (size!14948 (_1!10657 (v!25086 lt!657864))) (size!14948 (_1!10657 (v!25086 lt!657861)))) lt!657864 lt!657861)))))))

(declare-fun call!109713 () Option!3686)

(assert (=> b!1720358 (= lt!657864 call!109713)))

(assert (=> b!1720358 (= lt!657861 (maxPrefix!1514 thiss!24550 (t!159319 rules!3447) lt!657601))))

(declare-fun b!1720359 () Bool)

(assert (=> b!1720359 (= e!1100279 (contains!3353 rules!3447 (rule!5275 (_1!10657 (get!5569 lt!657863)))))))

(declare-fun b!1720360 () Bool)

(declare-fun res!771789 () Bool)

(assert (=> b!1720360 (=> (not res!771789) (not e!1100279))))

(assert (=> b!1720360 (= res!771789 (= (++!5156 (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657863)))) (_2!10657 (get!5569 lt!657863))) lt!657601))))

(declare-fun b!1720361 () Bool)

(declare-fun res!771788 () Bool)

(assert (=> b!1720361 (=> (not res!771788) (not e!1100279))))

(assert (=> b!1720361 (= res!771788 (= (list!7600 (charsOf!1980 (_1!10657 (get!5569 lt!657863)))) (originalCharacters!4145 (_1!10657 (get!5569 lt!657863)))))))

(declare-fun b!1720362 () Bool)

(declare-fun res!771787 () Bool)

(assert (=> b!1720362 (=> (not res!771787) (not e!1100279))))

(assert (=> b!1720362 (= res!771787 (= (value!104606 (_1!10657 (get!5569 lt!657863))) (apply!5136 (transformation!3331 (rule!5275 (_1!10657 (get!5569 lt!657863)))) (seqFromList!2305 (originalCharacters!4145 (_1!10657 (get!5569 lt!657863)))))))))

(declare-fun bm!109708 () Bool)

(assert (=> bm!109708 (= call!109713 (maxPrefixOneRule!890 thiss!24550 (h!24215 rules!3447) lt!657601))))

(declare-fun b!1720363 () Bool)

(declare-fun e!1100281 () Bool)

(assert (=> b!1720363 (= e!1100281 e!1100279)))

(declare-fun res!771786 () Bool)

(assert (=> b!1720363 (=> (not res!771786) (not e!1100279))))

(assert (=> b!1720363 (= res!771786 (isDefined!3029 lt!657863))))

(declare-fun d!527534 () Bool)

(assert (=> d!527534 e!1100281))

(declare-fun res!771785 () Bool)

(assert (=> d!527534 (=> res!771785 e!1100281)))

(assert (=> d!527534 (= res!771785 (isEmpty!11833 lt!657863))))

(assert (=> d!527534 (= lt!657863 e!1100280)))

(declare-fun c!281585 () Bool)

(assert (=> d!527534 (= c!281585 (and ((_ is Cons!18814) rules!3447) ((_ is Nil!18814) (t!159319 rules!3447))))))

(declare-fun lt!657862 () Unit!32651)

(declare-fun lt!657865 () Unit!32651)

(assert (=> d!527534 (= lt!657862 lt!657865)))

(assert (=> d!527534 (isPrefix!1572 lt!657601 lt!657601)))

(assert (=> d!527534 (= lt!657865 (lemmaIsPrefixRefl!1067 lt!657601 lt!657601))))

(assert (=> d!527534 (rulesValidInductive!1104 thiss!24550 rules!3447)))

(assert (=> d!527534 (= (maxPrefix!1514 thiss!24550 rules!3447 lt!657601) lt!657863)))

(declare-fun b!1720364 () Bool)

(assert (=> b!1720364 (= e!1100280 call!109713)))

(declare-fun b!1720365 () Bool)

(declare-fun res!771790 () Bool)

(assert (=> b!1720365 (=> (not res!771790) (not e!1100279))))

(assert (=> b!1720365 (= res!771790 (< (size!14950 (_2!10657 (get!5569 lt!657863))) (size!14950 lt!657601)))))

(assert (= (and d!527534 c!281585) b!1720364))

(assert (= (and d!527534 (not c!281585)) b!1720358))

(assert (= (or b!1720364 b!1720358) bm!109708))

(assert (= (and d!527534 (not res!771785)) b!1720363))

(assert (= (and b!1720363 res!771786) b!1720361))

(assert (= (and b!1720361 res!771788) b!1720365))

(assert (= (and b!1720365 res!771790) b!1720360))

(assert (= (and b!1720360 res!771789) b!1720362))

(assert (= (and b!1720362 res!771787) b!1720357))

(assert (= (and b!1720357 res!771791) b!1720359))

(declare-fun m!2125887 () Bool)

(assert (=> b!1720358 m!2125887))

(declare-fun m!2125889 () Bool)

(assert (=> b!1720360 m!2125889))

(declare-fun m!2125891 () Bool)

(assert (=> b!1720360 m!2125891))

(assert (=> b!1720360 m!2125891))

(declare-fun m!2125893 () Bool)

(assert (=> b!1720360 m!2125893))

(assert (=> b!1720360 m!2125893))

(declare-fun m!2125895 () Bool)

(assert (=> b!1720360 m!2125895))

(assert (=> b!1720365 m!2125889))

(declare-fun m!2125899 () Bool)

(assert (=> b!1720365 m!2125899))

(assert (=> b!1720365 m!2125107))

(declare-fun m!2125901 () Bool)

(assert (=> bm!109708 m!2125901))

(declare-fun m!2125903 () Bool)

(assert (=> b!1720363 m!2125903))

(assert (=> b!1720357 m!2125889))

(assert (=> b!1720357 m!2125891))

(assert (=> b!1720357 m!2125891))

(assert (=> b!1720357 m!2125893))

(assert (=> b!1720357 m!2125893))

(declare-fun m!2125905 () Bool)

(assert (=> b!1720357 m!2125905))

(assert (=> b!1720362 m!2125889))

(declare-fun m!2125907 () Bool)

(assert (=> b!1720362 m!2125907))

(assert (=> b!1720362 m!2125907))

(declare-fun m!2125913 () Bool)

(assert (=> b!1720362 m!2125913))

(declare-fun m!2125915 () Bool)

(assert (=> d!527534 m!2125915))

(declare-fun m!2125917 () Bool)

(assert (=> d!527534 m!2125917))

(declare-fun m!2125919 () Bool)

(assert (=> d!527534 m!2125919))

(assert (=> d!527534 m!2125411))

(assert (=> b!1720361 m!2125889))

(assert (=> b!1720361 m!2125891))

(assert (=> b!1720361 m!2125891))

(assert (=> b!1720361 m!2125893))

(assert (=> b!1720359 m!2125889))

(declare-fun m!2125921 () Bool)

(assert (=> b!1720359 m!2125921))

(assert (=> b!1719786 d!527534))

(declare-fun d!527542 () Bool)

(assert (=> d!527542 (= (list!7600 lt!657608) (list!7603 (c!281479 lt!657608)))))

(declare-fun bs!402202 () Bool)

(assert (= bs!402202 d!527542))

(declare-fun m!2125923 () Bool)

(assert (=> bs!402202 m!2125923))

(assert (=> b!1719786 d!527542))

(declare-fun d!527544 () Bool)

(assert (=> d!527544 (isPrefix!1572 lt!657611 (++!5156 lt!657611 suffix!1421))))

(declare-fun lt!657866 () Unit!32651)

(assert (=> d!527544 (= lt!657866 (choose!10461 lt!657611 suffix!1421))))

(assert (=> d!527544 (= (lemmaConcatTwoListThenFirstIsPrefix!1082 lt!657611 suffix!1421) lt!657866)))

(declare-fun bs!402204 () Bool)

(assert (= bs!402204 d!527544))

(assert (=> bs!402204 m!2125165))

(assert (=> bs!402204 m!2125165))

(declare-fun m!2125927 () Bool)

(assert (=> bs!402204 m!2125927))

(declare-fun m!2125929 () Bool)

(assert (=> bs!402204 m!2125929))

(assert (=> b!1719786 d!527544))

(declare-fun b!1720438 () Bool)

(declare-fun res!771801 () Bool)

(declare-fun e!1100324 () Bool)

(assert (=> b!1720438 (=> (not res!771801) (not e!1100324))))

(declare-fun lt!657902 () Token!6228)

(assert (=> b!1720438 (= res!771801 (matchR!2133 (regex!3331 (get!5570 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 lt!657902))))) (list!7600 (charsOf!1980 lt!657902))))))

(declare-fun b!1720439 () Bool)

(assert (=> b!1720439 (= e!1100324 (= (rule!5275 lt!657902) (get!5570 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 lt!657902))))))))

(declare-fun b!1720440 () Bool)

(declare-fun e!1100323 () Unit!32651)

(declare-fun Unit!32657 () Unit!32651)

(assert (=> b!1720440 (= e!1100323 Unit!32657)))

(declare-fun lt!657909 () List!18883)

(assert (=> b!1720440 (= lt!657909 (++!5156 lt!657611 suffix!1421))))

(declare-fun lt!657908 () Unit!32651)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!261 (LexerInterface!2960 Rule!6462 List!18884 List!18883) Unit!32651)

(assert (=> b!1720440 (= lt!657908 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!261 thiss!24550 (rule!5275 lt!657902) rules!3447 lt!657909))))

(assert (=> b!1720440 (isEmpty!11833 (maxPrefixOneRule!890 thiss!24550 (rule!5275 lt!657902) lt!657909))))

(declare-fun lt!657903 () Unit!32651)

(assert (=> b!1720440 (= lt!657903 lt!657908)))

(declare-fun lt!657901 () List!18883)

(assert (=> b!1720440 (= lt!657901 (list!7600 (charsOf!1980 lt!657902)))))

(declare-fun lt!657912 () Unit!32651)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!257 (LexerInterface!2960 Rule!6462 List!18883 List!18883) Unit!32651)

(assert (=> b!1720440 (= lt!657912 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!257 thiss!24550 (rule!5275 lt!657902) lt!657901 (++!5156 lt!657611 suffix!1421)))))

(assert (=> b!1720440 (not (matchR!2133 (regex!3331 (rule!5275 lt!657902)) lt!657901))))

(declare-fun lt!657916 () Unit!32651)

(assert (=> b!1720440 (= lt!657916 lt!657912)))

(assert (=> b!1720440 false))

(declare-fun d!527548 () Bool)

(assert (=> d!527548 (isDefined!3029 (maxPrefix!1514 thiss!24550 rules!3447 (++!5156 lt!657611 suffix!1421)))))

(declare-fun lt!657904 () Unit!32651)

(assert (=> d!527548 (= lt!657904 e!1100323)))

(declare-fun c!281590 () Bool)

(assert (=> d!527548 (= c!281590 (isEmpty!11833 (maxPrefix!1514 thiss!24550 rules!3447 (++!5156 lt!657611 suffix!1421))))))

(declare-fun lt!657905 () Unit!32651)

(declare-fun lt!657917 () Unit!32651)

(assert (=> d!527548 (= lt!657905 lt!657917)))

(assert (=> d!527548 e!1100324))

(declare-fun res!771800 () Bool)

(assert (=> d!527548 (=> (not res!771800) (not e!1100324))))

(assert (=> d!527548 (= res!771800 (isDefined!3030 (getRuleFromTag!381 thiss!24550 rules!3447 (tag!3639 (rule!5275 lt!657902)))))))

(assert (=> d!527548 (= lt!657917 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!381 thiss!24550 rules!3447 lt!657611 lt!657902))))

(declare-fun lt!657914 () Unit!32651)

(declare-fun lt!657906 () Unit!32651)

(assert (=> d!527548 (= lt!657914 lt!657906)))

(declare-fun lt!657913 () List!18883)

(assert (=> d!527548 (isPrefix!1572 lt!657913 (++!5156 lt!657611 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!253 (List!18883 List!18883 List!18883) Unit!32651)

(assert (=> d!527548 (= lt!657906 (lemmaPrefixStaysPrefixWhenAddingToSuffix!253 lt!657913 lt!657611 suffix!1421))))

(assert (=> d!527548 (= lt!657913 (list!7600 (charsOf!1980 lt!657902)))))

(declare-fun lt!657910 () Unit!32651)

(declare-fun lt!657911 () Unit!32651)

(assert (=> d!527548 (= lt!657910 lt!657911)))

(declare-fun lt!657915 () List!18883)

(declare-fun lt!657907 () List!18883)

(assert (=> d!527548 (isPrefix!1572 lt!657915 (++!5156 lt!657915 lt!657907))))

(assert (=> d!527548 (= lt!657911 (lemmaConcatTwoListThenFirstIsPrefix!1082 lt!657915 lt!657907))))

(assert (=> d!527548 (= lt!657907 (_2!10657 (get!5569 (maxPrefix!1514 thiss!24550 rules!3447 lt!657611))))))

(assert (=> d!527548 (= lt!657915 (list!7600 (charsOf!1980 lt!657902)))))

(declare-datatypes ((List!18889 0))(
  ( (Nil!18819) (Cons!18819 (h!24220 Token!6228) (t!159384 List!18889)) )
))
(declare-fun head!3884 (List!18889) Token!6228)

(declare-datatypes ((IArray!12523 0))(
  ( (IArray!12524 (innerList!6319 List!18889)) )
))
(declare-datatypes ((Conc!6259 0))(
  ( (Node!6259 (left!15010 Conc!6259) (right!15340 Conc!6259) (csize!12748 Int) (cheight!6470 Int)) (Leaf!9145 (xs!9135 IArray!12523) (csize!12749 Int)) (Empty!6259) )
))
(declare-datatypes ((BalanceConc!12462 0))(
  ( (BalanceConc!12463 (c!281599 Conc!6259)) )
))
(declare-fun list!7604 (BalanceConc!12462) List!18889)

(declare-datatypes ((tuple2!18518 0))(
  ( (tuple2!18519 (_1!10661 BalanceConc!12462) (_2!10661 BalanceConc!12458)) )
))
(declare-fun lex!1392 (LexerInterface!2960 List!18884 BalanceConc!12458) tuple2!18518)

(assert (=> d!527548 (= lt!657902 (head!3884 (list!7604 (_1!10661 (lex!1392 thiss!24550 rules!3447 (seqFromList!2305 lt!657611))))))))

(assert (=> d!527548 (not (isEmpty!11830 rules!3447))))

(assert (=> d!527548 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!484 thiss!24550 rules!3447 lt!657611 suffix!1421) lt!657904)))

(declare-fun b!1720441 () Bool)

(declare-fun Unit!32658 () Unit!32651)

(assert (=> b!1720441 (= e!1100323 Unit!32658)))

(assert (= (and d!527548 res!771800) b!1720438))

(assert (= (and b!1720438 res!771801) b!1720439))

(assert (= (and d!527548 c!281590) b!1720440))

(assert (= (and d!527548 (not c!281590)) b!1720441))

(declare-fun m!2125951 () Bool)

(assert (=> b!1720438 m!2125951))

(declare-fun m!2125953 () Bool)

(assert (=> b!1720438 m!2125953))

(assert (=> b!1720438 m!2125951))

(declare-fun m!2125955 () Bool)

(assert (=> b!1720438 m!2125955))

(assert (=> b!1720438 m!2125953))

(declare-fun m!2125957 () Bool)

(assert (=> b!1720438 m!2125957))

(assert (=> b!1720438 m!2125955))

(declare-fun m!2125959 () Bool)

(assert (=> b!1720438 m!2125959))

(assert (=> b!1720439 m!2125955))

(assert (=> b!1720439 m!2125955))

(assert (=> b!1720439 m!2125959))

(assert (=> b!1720440 m!2125165))

(assert (=> b!1720440 m!2125165))

(declare-fun m!2125961 () Bool)

(assert (=> b!1720440 m!2125961))

(assert (=> b!1720440 m!2125951))

(assert (=> b!1720440 m!2125953))

(assert (=> b!1720440 m!2125951))

(declare-fun m!2125963 () Bool)

(assert (=> b!1720440 m!2125963))

(declare-fun m!2125965 () Bool)

(assert (=> b!1720440 m!2125965))

(declare-fun m!2125967 () Bool)

(assert (=> b!1720440 m!2125967))

(assert (=> b!1720440 m!2125965))

(declare-fun m!2125969 () Bool)

(assert (=> b!1720440 m!2125969))

(declare-fun m!2125971 () Bool)

(assert (=> d!527548 m!2125971))

(assert (=> d!527548 m!2125165))

(declare-fun m!2125973 () Bool)

(assert (=> d!527548 m!2125973))

(declare-fun m!2125975 () Bool)

(assert (=> d!527548 m!2125975))

(declare-fun m!2125977 () Bool)

(assert (=> d!527548 m!2125977))

(assert (=> d!527548 m!2125971))

(declare-fun m!2125979 () Bool)

(assert (=> d!527548 m!2125979))

(declare-fun m!2125981 () Bool)

(assert (=> d!527548 m!2125981))

(assert (=> d!527548 m!2125951))

(assert (=> d!527548 m!2125953))

(assert (=> d!527548 m!2125955))

(declare-fun m!2125983 () Bool)

(assert (=> d!527548 m!2125983))

(declare-fun m!2125985 () Bool)

(assert (=> d!527548 m!2125985))

(declare-fun m!2125987 () Bool)

(assert (=> d!527548 m!2125987))

(assert (=> d!527548 m!2125951))

(assert (=> d!527548 m!2125981))

(declare-fun m!2125989 () Bool)

(assert (=> d!527548 m!2125989))

(declare-fun m!2125991 () Bool)

(assert (=> d!527548 m!2125991))

(declare-fun m!2125993 () Bool)

(assert (=> d!527548 m!2125993))

(assert (=> d!527548 m!2125165))

(assert (=> d!527548 m!2125975))

(assert (=> d!527548 m!2125991))

(assert (=> d!527548 m!2125187))

(declare-fun m!2125995 () Bool)

(assert (=> d!527548 m!2125995))

(assert (=> d!527548 m!2125187))

(assert (=> d!527548 m!2125975))

(declare-fun m!2125997 () Bool)

(assert (=> d!527548 m!2125997))

(assert (=> d!527548 m!2125165))

(declare-fun m!2125999 () Bool)

(assert (=> d!527548 m!2125999))

(assert (=> d!527548 m!2125955))

(assert (=> d!527548 m!2125183))

(assert (=> b!1719786 d!527548))

(declare-fun d!527552 () Bool)

(declare-fun res!771806 () Bool)

(declare-fun e!1100327 () Bool)

(assert (=> d!527552 (=> (not res!771806) (not e!1100327))))

(assert (=> d!527552 (= res!771806 (not (isEmpty!11829 (originalCharacters!4145 token!523))))))

(assert (=> d!527552 (= (inv!24290 token!523) e!1100327)))

(declare-fun b!1720446 () Bool)

(declare-fun res!771807 () Bool)

(assert (=> b!1720446 (=> (not res!771807) (not e!1100327))))

(assert (=> b!1720446 (= res!771807 (= (originalCharacters!4145 token!523) (list!7600 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 token!523))) (value!104606 token!523)))))))

(declare-fun b!1720447 () Bool)

(assert (=> b!1720447 (= e!1100327 (= (size!14948 token!523) (size!14950 (originalCharacters!4145 token!523))))))

(assert (= (and d!527552 res!771806) b!1720446))

(assert (= (and b!1720446 res!771807) b!1720447))

(declare-fun b_lambda!54533 () Bool)

(assert (=> (not b_lambda!54533) (not b!1720446)))

(assert (=> b!1720446 t!159321))

(declare-fun b_and!125527 () Bool)

(assert (= b_and!125445 (and (=> t!159321 result!122438) b_and!125527)))

(assert (=> b!1720446 t!159323))

(declare-fun b_and!125529 () Bool)

(assert (= b_and!125447 (and (=> t!159323 result!122440) b_and!125529)))

(assert (=> b!1720446 t!159325))

(declare-fun b_and!125531 () Bool)

(assert (= b_and!125449 (and (=> t!159325 result!122442) b_and!125531)))

(declare-fun m!2126001 () Bool)

(assert (=> d!527552 m!2126001))

(assert (=> b!1720446 m!2125423))

(assert (=> b!1720446 m!2125423))

(declare-fun m!2126003 () Bool)

(assert (=> b!1720446 m!2126003))

(declare-fun m!2126005 () Bool)

(assert (=> b!1720447 m!2126005))

(assert (=> start!168486 d!527552))

(declare-fun b!1720448 () Bool)

(declare-fun res!771810 () Bool)

(declare-fun e!1100333 () Bool)

(assert (=> b!1720448 (=> res!771810 e!1100333)))

(assert (=> b!1720448 (= res!771810 (not (isEmpty!11829 (tail!2569 lt!657610))))))

(declare-fun b!1720449 () Bool)

(declare-fun res!771812 () Bool)

(declare-fun e!1100334 () Bool)

(assert (=> b!1720449 (=> res!771812 e!1100334)))

(assert (=> b!1720449 (= res!771812 (not ((_ is ElementMatch!4659) (regex!3331 (rule!5275 (_1!10657 lt!657603))))))))

(declare-fun e!1100330 () Bool)

(assert (=> b!1720449 (= e!1100330 e!1100334)))

(declare-fun b!1720450 () Bool)

(declare-fun res!771809 () Bool)

(declare-fun e!1100332 () Bool)

(assert (=> b!1720450 (=> (not res!771809) (not e!1100332))))

(declare-fun call!109714 () Bool)

(assert (=> b!1720450 (= res!771809 (not call!109714))))

(declare-fun b!1720451 () Bool)

(declare-fun e!1100328 () Bool)

(assert (=> b!1720451 (= e!1100334 e!1100328)))

(declare-fun res!771815 () Bool)

(assert (=> b!1720451 (=> (not res!771815) (not e!1100328))))

(declare-fun lt!657918 () Bool)

(assert (=> b!1720451 (= res!771815 (not lt!657918))))

(declare-fun b!1720452 () Bool)

(assert (=> b!1720452 (= e!1100328 e!1100333)))

(declare-fun res!771811 () Bool)

(assert (=> b!1720452 (=> res!771811 e!1100333)))

(assert (=> b!1720452 (= res!771811 call!109714)))

(declare-fun b!1720453 () Bool)

(assert (=> b!1720453 (= e!1100330 (not lt!657918))))

(declare-fun b!1720454 () Bool)

(assert (=> b!1720454 (= e!1100333 (not (= (head!3882 lt!657610) (c!281478 (regex!3331 (rule!5275 (_1!10657 lt!657603)))))))))

(declare-fun b!1720455 () Bool)

(declare-fun e!1100331 () Bool)

(assert (=> b!1720455 (= e!1100331 e!1100330)))

(declare-fun c!281592 () Bool)

(assert (=> b!1720455 (= c!281592 ((_ is EmptyLang!4659) (regex!3331 (rule!5275 (_1!10657 lt!657603)))))))

(declare-fun b!1720456 () Bool)

(declare-fun res!771813 () Bool)

(assert (=> b!1720456 (=> res!771813 e!1100334)))

(assert (=> b!1720456 (= res!771813 e!1100332)))

(declare-fun res!771808 () Bool)

(assert (=> b!1720456 (=> (not res!771808) (not e!1100332))))

(assert (=> b!1720456 (= res!771808 lt!657918)))

(declare-fun b!1720457 () Bool)

(declare-fun res!771814 () Bool)

(assert (=> b!1720457 (=> (not res!771814) (not e!1100332))))

(assert (=> b!1720457 (= res!771814 (isEmpty!11829 (tail!2569 lt!657610)))))

(declare-fun b!1720458 () Bool)

(assert (=> b!1720458 (= e!1100331 (= lt!657918 call!109714))))

(declare-fun bm!109709 () Bool)

(assert (=> bm!109709 (= call!109714 (isEmpty!11829 lt!657610))))

(declare-fun b!1720459 () Bool)

(declare-fun e!1100329 () Bool)

(assert (=> b!1720459 (= e!1100329 (matchR!2133 (derivativeStep!1172 (regex!3331 (rule!5275 (_1!10657 lt!657603))) (head!3882 lt!657610)) (tail!2569 lt!657610)))))

(declare-fun d!527554 () Bool)

(assert (=> d!527554 e!1100331))

(declare-fun c!281593 () Bool)

(assert (=> d!527554 (= c!281593 ((_ is EmptyExpr!4659) (regex!3331 (rule!5275 (_1!10657 lt!657603)))))))

(assert (=> d!527554 (= lt!657918 e!1100329)))

(declare-fun c!281591 () Bool)

(assert (=> d!527554 (= c!281591 (isEmpty!11829 lt!657610))))

(assert (=> d!527554 (validRegex!1877 (regex!3331 (rule!5275 (_1!10657 lt!657603))))))

(assert (=> d!527554 (= (matchR!2133 (regex!3331 (rule!5275 (_1!10657 lt!657603))) lt!657610) lt!657918)))

(declare-fun b!1720460 () Bool)

(assert (=> b!1720460 (= e!1100329 (nullable!1403 (regex!3331 (rule!5275 (_1!10657 lt!657603)))))))

(declare-fun b!1720461 () Bool)

(assert (=> b!1720461 (= e!1100332 (= (head!3882 lt!657610) (c!281478 (regex!3331 (rule!5275 (_1!10657 lt!657603))))))))

(assert (= (and d!527554 c!281591) b!1720460))

(assert (= (and d!527554 (not c!281591)) b!1720459))

(assert (= (and d!527554 c!281593) b!1720458))

(assert (= (and d!527554 (not c!281593)) b!1720455))

(assert (= (and b!1720455 c!281592) b!1720453))

(assert (= (and b!1720455 (not c!281592)) b!1720449))

(assert (= (and b!1720449 (not res!771812)) b!1720456))

(assert (= (and b!1720456 res!771808) b!1720450))

(assert (= (and b!1720450 res!771809) b!1720457))

(assert (= (and b!1720457 res!771814) b!1720461))

(assert (= (and b!1720456 (not res!771813)) b!1720451))

(assert (= (and b!1720451 res!771815) b!1720452))

(assert (= (and b!1720452 (not res!771811)) b!1720448))

(assert (= (and b!1720448 (not res!771810)) b!1720454))

(assert (= (or b!1720458 b!1720450 b!1720452) bm!109709))

(assert (=> b!1720459 m!2125763))

(assert (=> b!1720459 m!2125763))

(declare-fun m!2126007 () Bool)

(assert (=> b!1720459 m!2126007))

(assert (=> b!1720459 m!2125767))

(assert (=> b!1720459 m!2126007))

(assert (=> b!1720459 m!2125767))

(declare-fun m!2126009 () Bool)

(assert (=> b!1720459 m!2126009))

(assert (=> b!1720448 m!2125767))

(assert (=> b!1720448 m!2125767))

(declare-fun m!2126011 () Bool)

(assert (=> b!1720448 m!2126011))

(declare-fun m!2126013 () Bool)

(assert (=> b!1720460 m!2126013))

(declare-fun m!2126015 () Bool)

(assert (=> d!527554 m!2126015))

(declare-fun m!2126017 () Bool)

(assert (=> d!527554 m!2126017))

(assert (=> bm!109709 m!2126015))

(assert (=> b!1720457 m!2125767))

(assert (=> b!1720457 m!2125767))

(assert (=> b!1720457 m!2126011))

(assert (=> b!1720461 m!2125763))

(assert (=> b!1720454 m!2125763))

(assert (=> b!1719785 d!527554))

(declare-fun d!527556 () Bool)

(assert (=> d!527556 (= (list!7600 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))) (list!7603 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))))))

(declare-fun bs!402205 () Bool)

(assert (= bs!402205 d!527556))

(declare-fun m!2126019 () Bool)

(assert (=> bs!402205 m!2126019))

(assert (=> b!1719790 d!527556))

(declare-fun bs!402206 () Bool)

(declare-fun d!527558 () Bool)

(assert (= bs!402206 (and d!527558 b!1719803)))

(declare-fun lambda!69095 () Int)

(assert (=> bs!402206 (= lambda!69095 lambda!69080)))

(declare-fun b!1720466 () Bool)

(declare-fun e!1100337 () Bool)

(assert (=> b!1720466 (= e!1100337 true)))

(assert (=> d!527558 e!1100337))

(assert (= d!527558 b!1720466))

(assert (=> b!1720466 (< (dynLambda!8640 order!11435 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) (dynLambda!8641 order!11437 lambda!69095))))

(assert (=> b!1720466 (< (dynLambda!8642 order!11439 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) (dynLambda!8641 order!11437 lambda!69095))))

(assert (=> d!527558 (= (list!7600 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))) (list!7600 lt!657608))))

(declare-fun lt!657921 () Unit!32651)

(declare-fun ForallOf!260 (Int BalanceConc!12458) Unit!32651)

(assert (=> d!527558 (= lt!657921 (ForallOf!260 lambda!69095 lt!657608))))

(assert (=> d!527558 (= (lemmaSemiInverse!477 (transformation!3331 (rule!5275 (_1!10657 lt!657603))) lt!657608) lt!657921)))

(declare-fun b_lambda!54535 () Bool)

(assert (=> (not b_lambda!54535) (not d!527558)))

(assert (=> d!527558 t!159300))

(declare-fun b_and!125533 () Bool)

(assert (= b_and!125527 (and (=> t!159300 result!122416) b_and!125533)))

(assert (=> d!527558 t!159302))

(declare-fun b_and!125535 () Bool)

(assert (= b_and!125529 (and (=> t!159302 result!122420) b_and!125535)))

(assert (=> d!527558 t!159304))

(declare-fun b_and!125537 () Bool)

(assert (= b_and!125531 (and (=> t!159304 result!122422) b_and!125537)))

(declare-fun b_lambda!54537 () Bool)

(assert (=> (not b_lambda!54537) (not d!527558)))

(assert (=> d!527558 t!159306))

(declare-fun b_and!125539 () Bool)

(assert (= b_and!125487 (and (=> t!159306 result!122424) b_and!125539)))

(assert (=> d!527558 t!159308))

(declare-fun b_and!125541 () Bool)

(assert (= b_and!125489 (and (=> t!159308 result!122428) b_and!125541)))

(assert (=> d!527558 t!159310))

(declare-fun b_and!125543 () Bool)

(assert (= b_and!125491 (and (=> t!159310 result!122430) b_and!125543)))

(declare-fun m!2126021 () Bool)

(assert (=> d!527558 m!2126021))

(assert (=> d!527558 m!2125133))

(assert (=> d!527558 m!2125135))

(assert (=> d!527558 m!2125133))

(assert (=> d!527558 m!2125135))

(assert (=> d!527558 m!2125137))

(assert (=> d!527558 m!2125145))

(assert (=> b!1719790 d!527558))

(declare-fun d!527560 () Bool)

(assert (=> d!527560 (= (isEmpty!11830 rules!3447) ((_ is Nil!18814) rules!3447))))

(assert (=> b!1719789 d!527560))

(declare-fun d!527562 () Bool)

(assert (=> d!527562 (= (isEmpty!11829 (_2!10657 lt!657621)) ((_ is Nil!18813) (_2!10657 lt!657621)))))

(assert (=> b!1719788 d!527562))

(declare-fun d!527564 () Bool)

(assert (=> d!527564 (= (isEmpty!11829 suffix!1421) ((_ is Nil!18813) suffix!1421))))

(assert (=> b!1719792 d!527564))

(declare-fun d!527566 () Bool)

(declare-fun lt!657924 () Bool)

(declare-fun content!2685 (List!18884) (InoxSet Rule!6462))

(assert (=> d!527566 (= lt!657924 (select (content!2685 rules!3447) rule!422))))

(declare-fun e!1100343 () Bool)

(assert (=> d!527566 (= lt!657924 e!1100343)))

(declare-fun res!771820 () Bool)

(assert (=> d!527566 (=> (not res!771820) (not e!1100343))))

(assert (=> d!527566 (= res!771820 ((_ is Cons!18814) rules!3447))))

(assert (=> d!527566 (= (contains!3353 rules!3447 rule!422) lt!657924)))

(declare-fun b!1720471 () Bool)

(declare-fun e!1100342 () Bool)

(assert (=> b!1720471 (= e!1100343 e!1100342)))

(declare-fun res!771821 () Bool)

(assert (=> b!1720471 (=> res!771821 e!1100342)))

(assert (=> b!1720471 (= res!771821 (= (h!24215 rules!3447) rule!422))))

(declare-fun b!1720472 () Bool)

(assert (=> b!1720472 (= e!1100342 (contains!3353 (t!159319 rules!3447) rule!422))))

(assert (= (and d!527566 res!771820) b!1720471))

(assert (= (and b!1720471 (not res!771821)) b!1720472))

(declare-fun m!2126023 () Bool)

(assert (=> d!527566 m!2126023))

(declare-fun m!2126025 () Bool)

(assert (=> d!527566 m!2126025))

(declare-fun m!2126027 () Bool)

(assert (=> b!1720472 m!2126027))

(assert (=> b!1719795 d!527566))

(declare-fun d!527568 () Bool)

(declare-fun c!281597 () Bool)

(assert (=> d!527568 (= c!281597 (isEmpty!11829 (++!5156 lt!657611 (Cons!18813 (head!3882 suffix!1421) Nil!18813))))))

(declare-fun e!1100346 () Bool)

(assert (=> d!527568 (= (prefixMatch!544 (rulesRegex!689 thiss!24550 rules!3447) (++!5156 lt!657611 (Cons!18813 (head!3882 suffix!1421) Nil!18813))) e!1100346)))

(declare-fun b!1720477 () Bool)

(declare-fun lostCause!514 (Regex!4659) Bool)

(assert (=> b!1720477 (= e!1100346 (not (lostCause!514 (rulesRegex!689 thiss!24550 rules!3447))))))

(declare-fun b!1720478 () Bool)

(assert (=> b!1720478 (= e!1100346 (prefixMatch!544 (derivativeStep!1172 (rulesRegex!689 thiss!24550 rules!3447) (head!3882 (++!5156 lt!657611 (Cons!18813 (head!3882 suffix!1421) Nil!18813)))) (tail!2569 (++!5156 lt!657611 (Cons!18813 (head!3882 suffix!1421) Nil!18813)))))))

(assert (= (and d!527568 c!281597) b!1720477))

(assert (= (and d!527568 (not c!281597)) b!1720478))

(assert (=> d!527568 m!2125201))

(declare-fun m!2126029 () Bool)

(assert (=> d!527568 m!2126029))

(assert (=> b!1720477 m!2125197))

(declare-fun m!2126031 () Bool)

(assert (=> b!1720477 m!2126031))

(assert (=> b!1720478 m!2125201))

(declare-fun m!2126033 () Bool)

(assert (=> b!1720478 m!2126033))

(assert (=> b!1720478 m!2125197))

(assert (=> b!1720478 m!2126033))

(declare-fun m!2126035 () Bool)

(assert (=> b!1720478 m!2126035))

(assert (=> b!1720478 m!2125201))

(declare-fun m!2126037 () Bool)

(assert (=> b!1720478 m!2126037))

(assert (=> b!1720478 m!2126035))

(assert (=> b!1720478 m!2126037))

(declare-fun m!2126039 () Bool)

(assert (=> b!1720478 m!2126039))

(assert (=> b!1719794 d!527568))

(declare-fun d!527570 () Bool)

(declare-fun lt!657927 () Unit!32651)

(declare-fun lemma!328 (List!18884 LexerInterface!2960 List!18884) Unit!32651)

(assert (=> d!527570 (= lt!657927 (lemma!328 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69098 () Int)

(declare-datatypes ((List!18890 0))(
  ( (Nil!18820) (Cons!18820 (h!24221 Regex!4659) (t!159385 List!18890)) )
))
(declare-fun generalisedUnion!336 (List!18890) Regex!4659)

(declare-fun map!3873 (List!18884 Int) List!18890)

(assert (=> d!527570 (= (rulesRegex!689 thiss!24550 rules!3447) (generalisedUnion!336 (map!3873 rules!3447 lambda!69098)))))

(declare-fun bs!402207 () Bool)

(assert (= bs!402207 d!527570))

(declare-fun m!2126041 () Bool)

(assert (=> bs!402207 m!2126041))

(declare-fun m!2126043 () Bool)

(assert (=> bs!402207 m!2126043))

(assert (=> bs!402207 m!2126043))

(declare-fun m!2126045 () Bool)

(assert (=> bs!402207 m!2126045))

(assert (=> b!1719794 d!527570))

(declare-fun b!1720480 () Bool)

(declare-fun e!1100347 () List!18883)

(assert (=> b!1720480 (= e!1100347 (Cons!18813 (h!24214 lt!657611) (++!5156 (t!159318 lt!657611) (Cons!18813 (head!3882 suffix!1421) Nil!18813))))))

(declare-fun d!527572 () Bool)

(declare-fun e!1100348 () Bool)

(assert (=> d!527572 e!1100348))

(declare-fun res!771822 () Bool)

(assert (=> d!527572 (=> (not res!771822) (not e!1100348))))

(declare-fun lt!657928 () List!18883)

(assert (=> d!527572 (= res!771822 (= (content!2684 lt!657928) ((_ map or) (content!2684 lt!657611) (content!2684 (Cons!18813 (head!3882 suffix!1421) Nil!18813)))))))

(assert (=> d!527572 (= lt!657928 e!1100347)))

(declare-fun c!281598 () Bool)

(assert (=> d!527572 (= c!281598 ((_ is Nil!18813) lt!657611))))

(assert (=> d!527572 (= (++!5156 lt!657611 (Cons!18813 (head!3882 suffix!1421) Nil!18813)) lt!657928)))

(declare-fun b!1720481 () Bool)

(declare-fun res!771823 () Bool)

(assert (=> b!1720481 (=> (not res!771823) (not e!1100348))))

(assert (=> b!1720481 (= res!771823 (= (size!14950 lt!657928) (+ (size!14950 lt!657611) (size!14950 (Cons!18813 (head!3882 suffix!1421) Nil!18813)))))))

(declare-fun b!1720479 () Bool)

(assert (=> b!1720479 (= e!1100347 (Cons!18813 (head!3882 suffix!1421) Nil!18813))))

(declare-fun b!1720482 () Bool)

(assert (=> b!1720482 (= e!1100348 (or (not (= (Cons!18813 (head!3882 suffix!1421) Nil!18813) Nil!18813)) (= lt!657928 lt!657611)))))

(assert (= (and d!527572 c!281598) b!1720479))

(assert (= (and d!527572 (not c!281598)) b!1720480))

(assert (= (and d!527572 res!771822) b!1720481))

(assert (= (and b!1720481 res!771823) b!1720482))

(declare-fun m!2126047 () Bool)

(assert (=> b!1720480 m!2126047))

(declare-fun m!2126049 () Bool)

(assert (=> d!527572 m!2126049))

(assert (=> d!527572 m!2125795))

(declare-fun m!2126051 () Bool)

(assert (=> d!527572 m!2126051))

(declare-fun m!2126053 () Bool)

(assert (=> b!1720481 m!2126053))

(assert (=> b!1720481 m!2125393))

(declare-fun m!2126055 () Bool)

(assert (=> b!1720481 m!2126055))

(assert (=> b!1719794 d!527572))

(declare-fun d!527574 () Bool)

(assert (=> d!527574 (= (head!3882 suffix!1421) (h!24214 suffix!1421))))

(assert (=> b!1719794 d!527574))

(declare-fun d!527576 () Bool)

(assert (=> d!527576 (= (inv!24284 (tag!3639 (h!24215 rules!3447))) (= (mod (str.len (value!104605 (tag!3639 (h!24215 rules!3447)))) 2) 0))))

(assert (=> b!1719793 d!527576))

(declare-fun d!527578 () Bool)

(declare-fun res!771824 () Bool)

(declare-fun e!1100349 () Bool)

(assert (=> d!527578 (=> (not res!771824) (not e!1100349))))

(assert (=> d!527578 (= res!771824 (semiInverseModEq!1317 (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toValue!4838 (transformation!3331 (h!24215 rules!3447)))))))

(assert (=> d!527578 (= (inv!24289 (transformation!3331 (h!24215 rules!3447))) e!1100349)))

(declare-fun b!1720483 () Bool)

(assert (=> b!1720483 (= e!1100349 (equivClasses!1258 (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toValue!4838 (transformation!3331 (h!24215 rules!3447)))))))

(assert (= (and d!527578 res!771824) b!1720483))

(declare-fun m!2126057 () Bool)

(assert (=> d!527578 m!2126057))

(declare-fun m!2126059 () Bool)

(assert (=> b!1720483 m!2126059))

(assert (=> b!1719793 d!527578))

(declare-fun b!1720494 () Bool)

(declare-fun b_free!46843 () Bool)

(declare-fun b_next!47547 () Bool)

(assert (=> b!1720494 (= b_free!46843 (not b_next!47547))))

(declare-fun tb!101919 () Bool)

(declare-fun t!159371 () Bool)

(assert (=> (and b!1720494 (= (toValue!4838 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159371) tb!101919))

(declare-fun result!122496 () Bool)

(assert (= result!122496 result!122424))

(assert (=> d!527458 t!159371))

(declare-fun t!159373 () Bool)

(declare-fun tb!101921 () Bool)

(assert (=> (and b!1720494 (= (toValue!4838 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159373) tb!101921))

(declare-fun result!122498 () Bool)

(assert (= result!122498 result!122462))

(assert (=> d!527458 t!159373))

(assert (=> d!527558 t!159371))

(declare-fun tb!101923 () Bool)

(declare-fun t!159375 () Bool)

(assert (=> (and b!1720494 (= (toValue!4838 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159375) tb!101923))

(declare-fun result!122500 () Bool)

(assert (= result!122500 result!122444))

(assert (=> d!527402 t!159375))

(assert (=> b!1719790 t!159371))

(assert (=> d!527452 t!159371))

(declare-fun b_and!125545 () Bool)

(declare-fun tp!491177 () Bool)

(assert (=> b!1720494 (= tp!491177 (and (=> t!159373 result!122498) (=> t!159371 result!122496) (=> t!159375 result!122500) b_and!125545))))

(declare-fun b_free!46845 () Bool)

(declare-fun b_next!47549 () Bool)

(assert (=> b!1720494 (= b_free!46845 (not b_next!47549))))

(declare-fun t!159377 () Bool)

(declare-fun tb!101925 () Bool)

(assert (=> (and b!1720494 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 token!523)))) t!159377) tb!101925))

(declare-fun result!122502 () Bool)

(assert (= result!122502 result!122438))

(assert (=> d!527366 t!159377))

(declare-fun t!159379 () Bool)

(declare-fun tb!101927 () Bool)

(assert (=> (and b!1720494 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159379) tb!101927))

(declare-fun result!122504 () Bool)

(assert (= result!122504 result!122432))

(assert (=> d!527344 t!159379))

(declare-fun tb!101929 () Bool)

(declare-fun t!159381 () Bool)

(assert (=> (and b!1720494 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603))))) t!159381) tb!101929))

(declare-fun result!122506 () Bool)

(assert (= result!122506 result!122416))

(assert (=> d!527558 t!159381))

(assert (=> b!1719796 t!159379))

(assert (=> b!1719790 t!159381))

(assert (=> b!1720446 t!159377))

(declare-fun b_and!125547 () Bool)

(declare-fun tp!491179 () Bool)

(assert (=> b!1720494 (= tp!491179 (and (=> t!159381 result!122506) (=> t!159377 result!122502) (=> t!159379 result!122504) b_and!125547))))

(declare-fun e!1100358 () Bool)

(assert (=> b!1720494 (= e!1100358 (and tp!491177 tp!491179))))

(declare-fun b!1720493 () Bool)

(declare-fun e!1100360 () Bool)

(declare-fun tp!491176 () Bool)

(assert (=> b!1720493 (= e!1100360 (and tp!491176 (inv!24284 (tag!3639 (h!24215 (t!159319 rules!3447)))) (inv!24289 (transformation!3331 (h!24215 (t!159319 rules!3447)))) e!1100358))))

(declare-fun b!1720492 () Bool)

(declare-fun e!1100361 () Bool)

(declare-fun tp!491178 () Bool)

(assert (=> b!1720492 (= e!1100361 (and e!1100360 tp!491178))))

(assert (=> b!1719802 (= tp!491108 e!1100361)))

(assert (= b!1720493 b!1720494))

(assert (= b!1720492 b!1720493))

(assert (= (and b!1719802 ((_ is Cons!18814) (t!159319 rules!3447))) b!1720492))

(declare-fun m!2126061 () Bool)

(assert (=> b!1720493 m!2126061))

(declare-fun m!2126063 () Bool)

(assert (=> b!1720493 m!2126063))

(declare-fun b!1720499 () Bool)

(declare-fun e!1100364 () Bool)

(declare-fun tp!491182 () Bool)

(assert (=> b!1720499 (= e!1100364 (and tp_is_empty!7561 tp!491182))))

(assert (=> b!1719779 (= tp!491101 e!1100364)))

(assert (= (and b!1719779 ((_ is Cons!18813) (originalCharacters!4145 token!523))) b!1720499))

(declare-fun e!1100367 () Bool)

(assert (=> b!1719784 (= tp!491107 e!1100367)))

(declare-fun b!1720511 () Bool)

(declare-fun tp!491196 () Bool)

(declare-fun tp!491197 () Bool)

(assert (=> b!1720511 (= e!1100367 (and tp!491196 tp!491197))))

(declare-fun b!1720512 () Bool)

(declare-fun tp!491193 () Bool)

(assert (=> b!1720512 (= e!1100367 tp!491193)))

(declare-fun b!1720510 () Bool)

(assert (=> b!1720510 (= e!1100367 tp_is_empty!7561)))

(declare-fun b!1720513 () Bool)

(declare-fun tp!491195 () Bool)

(declare-fun tp!491194 () Bool)

(assert (=> b!1720513 (= e!1100367 (and tp!491195 tp!491194))))

(assert (= (and b!1719784 ((_ is ElementMatch!4659) (regex!3331 (rule!5275 token!523)))) b!1720510))

(assert (= (and b!1719784 ((_ is Concat!8081) (regex!3331 (rule!5275 token!523)))) b!1720511))

(assert (= (and b!1719784 ((_ is Star!4659) (regex!3331 (rule!5275 token!523)))) b!1720512))

(assert (= (and b!1719784 ((_ is Union!4659) (regex!3331 (rule!5275 token!523)))) b!1720513))

(declare-fun b!1720522 () Bool)

(declare-fun tp!491204 () Bool)

(declare-fun tp!491205 () Bool)

(declare-fun e!1100372 () Bool)

(assert (=> b!1720522 (= e!1100372 (and (inv!24291 (left!15008 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))))) tp!491204 (inv!24291 (right!15338 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))))) tp!491205))))

(declare-fun b!1720524 () Bool)

(declare-fun e!1100373 () Bool)

(declare-fun tp!491206 () Bool)

(assert (=> b!1720524 (= e!1100373 tp!491206)))

(declare-fun b!1720523 () Bool)

(declare-fun inv!24298 (IArray!12519) Bool)

(assert (=> b!1720523 (= e!1100372 (and (inv!24298 (xs!9133 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))))) e!1100373))))

(assert (=> b!1719824 (= tp!491112 (and (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603))))) e!1100372))))

(assert (= (and b!1719824 ((_ is Node!6257) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))))) b!1720522))

(assert (= b!1720523 b!1720524))

(assert (= (and b!1719824 ((_ is Leaf!9143) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (value!104606 (_1!10657 lt!657603)))))) b!1720523))

(declare-fun m!2126065 () Bool)

(assert (=> b!1720522 m!2126065))

(declare-fun m!2126067 () Bool)

(assert (=> b!1720522 m!2126067))

(declare-fun m!2126069 () Bool)

(assert (=> b!1720523 m!2126069))

(assert (=> b!1719824 m!2125077))

(declare-fun b!1720525 () Bool)

(declare-fun e!1100374 () Bool)

(declare-fun tp!491207 () Bool)

(assert (=> b!1720525 (= e!1100374 (and tp_is_empty!7561 tp!491207))))

(assert (=> b!1719778 (= tp!491103 e!1100374)))

(assert (= (and b!1719778 ((_ is Cons!18813) (t!159318 suffix!1421))) b!1720525))

(declare-fun e!1100375 () Bool)

(assert (=> b!1719793 (= tp!491099 e!1100375)))

(declare-fun b!1720527 () Bool)

(declare-fun tp!491211 () Bool)

(declare-fun tp!491212 () Bool)

(assert (=> b!1720527 (= e!1100375 (and tp!491211 tp!491212))))

(declare-fun b!1720528 () Bool)

(declare-fun tp!491208 () Bool)

(assert (=> b!1720528 (= e!1100375 tp!491208)))

(declare-fun b!1720526 () Bool)

(assert (=> b!1720526 (= e!1100375 tp_is_empty!7561)))

(declare-fun b!1720529 () Bool)

(declare-fun tp!491210 () Bool)

(declare-fun tp!491209 () Bool)

(assert (=> b!1720529 (= e!1100375 (and tp!491210 tp!491209))))

(assert (= (and b!1719793 ((_ is ElementMatch!4659) (regex!3331 (h!24215 rules!3447)))) b!1720526))

(assert (= (and b!1719793 ((_ is Concat!8081) (regex!3331 (h!24215 rules!3447)))) b!1720527))

(assert (= (and b!1719793 ((_ is Star!4659) (regex!3331 (h!24215 rules!3447)))) b!1720528))

(assert (= (and b!1719793 ((_ is Union!4659) (regex!3331 (h!24215 rules!3447)))) b!1720529))

(declare-fun b!1720530 () Bool)

(declare-fun e!1100376 () Bool)

(declare-fun tp!491213 () Bool)

(declare-fun tp!491214 () Bool)

(assert (=> b!1720530 (= e!1100376 (and (inv!24291 (left!15008 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))) tp!491213 (inv!24291 (right!15338 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))) tp!491214))))

(declare-fun b!1720532 () Bool)

(declare-fun e!1100377 () Bool)

(declare-fun tp!491215 () Bool)

(assert (=> b!1720532 (= e!1100377 tp!491215)))

(declare-fun b!1720531 () Bool)

(assert (=> b!1720531 (= e!1100376 (and (inv!24298 (xs!9133 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))) e!1100377))))

(assert (=> b!1719821 (= tp!491111 (and (inv!24291 (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608)))) e!1100376))))

(assert (= (and b!1719821 ((_ is Node!6257) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))) b!1720530))

(assert (= b!1720531 b!1720532))

(assert (= (and b!1719821 ((_ is Leaf!9143) (c!281479 (dynLambda!8643 (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) (dynLambda!8644 (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))) lt!657608))))) b!1720531))

(declare-fun m!2126071 () Bool)

(assert (=> b!1720530 m!2126071))

(declare-fun m!2126073 () Bool)

(assert (=> b!1720530 m!2126073))

(declare-fun m!2126075 () Bool)

(assert (=> b!1720531 m!2126075))

(assert (=> b!1719821 m!2125071))

(declare-fun e!1100378 () Bool)

(assert (=> b!1719804 (= tp!491105 e!1100378)))

(declare-fun b!1720534 () Bool)

(declare-fun tp!491219 () Bool)

(declare-fun tp!491220 () Bool)

(assert (=> b!1720534 (= e!1100378 (and tp!491219 tp!491220))))

(declare-fun b!1720535 () Bool)

(declare-fun tp!491216 () Bool)

(assert (=> b!1720535 (= e!1100378 tp!491216)))

(declare-fun b!1720533 () Bool)

(assert (=> b!1720533 (= e!1100378 tp_is_empty!7561)))

(declare-fun b!1720536 () Bool)

(declare-fun tp!491218 () Bool)

(declare-fun tp!491217 () Bool)

(assert (=> b!1720536 (= e!1100378 (and tp!491218 tp!491217))))

(assert (= (and b!1719804 ((_ is ElementMatch!4659) (regex!3331 rule!422))) b!1720533))

(assert (= (and b!1719804 ((_ is Concat!8081) (regex!3331 rule!422))) b!1720534))

(assert (= (and b!1719804 ((_ is Star!4659) (regex!3331 rule!422))) b!1720535))

(assert (= (and b!1719804 ((_ is Union!4659) (regex!3331 rule!422))) b!1720536))

(declare-fun b_lambda!54539 () Bool)

(assert (= b_lambda!54489 (or (and b!1719787 b_free!46827 (= (toValue!4838 (transformation!3331 (rule!5275 token!523))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1719782 b_free!46831 (= (toValue!4838 (transformation!3331 (h!24215 rules!3447))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1719799 b_free!46835 (= (toValue!4838 (transformation!3331 rule!422)) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1720494 b_free!46843 (= (toValue!4838 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toValue!4838 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) b_lambda!54539)))

(declare-fun b_lambda!54541 () Bool)

(assert (= b_lambda!54491 (or (and b!1719787 b_free!46829 (= (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1719782 b_free!46833 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1719799 b_free!46837 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1720494 b_free!46845 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) b_lambda!54541)))

(declare-fun b_lambda!54543 () Bool)

(assert (= b_lambda!54487 (or (and b!1719787 b_free!46829 (= (toChars!4697 (transformation!3331 (rule!5275 token!523))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1719782 b_free!46833 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1719799 b_free!46837 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) (and b!1720494 b_free!46845 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 (_1!10657 lt!657603)))))) b_lambda!54543)))

(declare-fun b_lambda!54545 () Bool)

(assert (= b_lambda!54533 (or (and b!1719787 b_free!46829) (and b!1719782 b_free!46833 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 token!523))))) (and b!1719799 b_free!46837 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 token!523))))) (and b!1720494 b_free!46845 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 token!523))))) b_lambda!54545)))

(declare-fun b_lambda!54547 () Bool)

(assert (= b_lambda!54497 (or (and b!1719787 b_free!46829) (and b!1719782 b_free!46833 (= (toChars!4697 (transformation!3331 (h!24215 rules!3447))) (toChars!4697 (transformation!3331 (rule!5275 token!523))))) (and b!1719799 b_free!46837 (= (toChars!4697 (transformation!3331 rule!422)) (toChars!4697 (transformation!3331 (rule!5275 token!523))))) (and b!1720494 b_free!46845 (= (toChars!4697 (transformation!3331 (h!24215 (t!159319 rules!3447)))) (toChars!4697 (transformation!3331 (rule!5275 token!523))))) b_lambda!54547)))

(check-sat (not b!1719894) (not b!1720237) (not b!1720177) (not b!1720331) (not b!1720248) (not d!527342) (not b!1720492) (not b!1720242) (not d!527464) (not b!1720457) (not d!527340) (not b!1720478) (not b!1719824) (not b!1720171) (not b!1720481) (not b!1720180) (not d!527460) (not d!527372) (not b!1720499) (not b!1720365) (not b!1720513) (not b_lambda!54535) (not b!1720535) b_and!125533 (not b!1720236) (not b!1720454) (not d!527442) (not b!1720357) (not d!527454) (not b!1720355) (not b_lambda!54499) (not b!1720165) (not b_next!47547) (not d!527498) (not b!1720460) (not b!1720041) (not b_lambda!54507) (not d!527480) (not b!1720358) (not b!1720480) (not d!527350) (not d!527578) b_and!125537 (not b!1719994) (not d!527404) (not b!1719995) (not b!1719991) (not d!527520) (not b!1720532) (not d!527474) (not b_lambda!54547) (not b!1719998) (not b!1720032) (not b_lambda!54543) (not b!1719929) (not b!1720276) (not b!1720531) (not b!1720239) (not d!527366) (not b!1720224) (not b!1720277) (not b!1719992) (not d!527496) (not b_next!47539) (not d!527534) (not b_lambda!54509) (not bm!109709) (not b!1719993) (not b!1720172) (not b!1720338) (not bm!109708) (not b!1720356) (not b!1720522) (not b!1719997) (not b!1720354) (not b_next!47541) (not b!1720166) (not d!527544) (not d!527352) (not b!1720294) (not d!527370) (not b_next!47535) (not d!527450) (not d!527444) (not b!1720215) (not b!1720246) (not b!1720034) (not b!1720477) b_and!125543 (not b!1720260) (not b!1720360) (not b!1720528) (not d!527548) (not b!1720447) (not b_lambda!54537) (not b!1720245) (not d!527552) b_and!125545 (not b!1720438) (not tb!101895) (not b!1720530) (not b_lambda!54511) (not b!1719934) (not b!1720536) (not d!527554) (not b!1720493) (not b!1720218) (not d!527566) (not b!1720337) (not b!1720512) b_and!125535 (not d!527458) (not b!1720511) (not b!1720359) (not b!1720523) (not b!1719891) (not d!527348) (not d!527558) (not b!1720217) (not b!1719990) (not d!527504) (not b!1720524) (not b!1720483) b_and!125539 (not b!1720168) (not b!1719932) (not b!1720362) (not b!1720361) (not b!1720212) (not b!1720261) (not b!1720259) (not b_lambda!54541) (not b!1720351) (not bm!109694) (not tb!101871) (not b!1720529) (not b!1720459) (not b_next!47533) (not d!527530) tp_is_empty!7561 (not b!1720448) (not b!1720167) (not b!1720249) (not b!1719936) (not b!1720439) (not b_lambda!54539) (not b!1719935) (not b!1719923) (not b!1720527) (not d!527390) (not b!1720461) (not tb!101877) (not b!1719892) (not d!527568) (not b!1720525) (not b_next!47549) (not b!1719989) (not d!527364) (not b!1720339) (not b!1720051) (not d!527542) b_and!125547 (not bm!109705) (not b!1719821) (not b!1720363) (not b_lambda!54493) (not d!527392) (not b!1720440) (not d!527470) (not d!527344) (not b!1720352) (not d!527448) (not d!527556) (not b!1720330) (not b!1720472) (not b_next!47537) (not d!527572) (not b!1720164) (not d!527456) (not bm!109697) (not b!1720534) (not b!1720334) (not b_lambda!54545) (not b!1720170) (not b!1720206) (not b!1720295) (not d!527462) (not b!1720219) (not b_next!47531) (not d!527570) (not b!1720446) (not d!527486) b_and!125541)
(check-sat b_and!125533 (not b_next!47547) b_and!125537 (not b_next!47539) (not b_next!47541) (not b_next!47535) b_and!125543 b_and!125545 b_and!125535 b_and!125539 (not b_next!47533) (not b_next!47549) b_and!125547 (not b_next!47537) (not b_next!47531) b_and!125541)
