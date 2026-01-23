; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!157866 () Bool)

(assert start!157866)

(declare-fun b!1645821 () Bool)

(declare-fun b_free!44695 () Bool)

(declare-fun b_next!45399 () Bool)

(assert (=> b!1645821 (= b_free!44695 (not b_next!45399))))

(declare-fun tp!476879 () Bool)

(declare-fun b_and!116813 () Bool)

(assert (=> b!1645821 (= tp!476879 b_and!116813)))

(declare-fun b_free!44697 () Bool)

(declare-fun b_next!45401 () Bool)

(assert (=> b!1645821 (= b_free!44697 (not b_next!45401))))

(declare-fun tp!476872 () Bool)

(declare-fun b_and!116815 () Bool)

(assert (=> b!1645821 (= tp!476872 b_and!116815)))

(declare-fun b!1645826 () Bool)

(declare-fun b_free!44699 () Bool)

(declare-fun b_next!45403 () Bool)

(assert (=> b!1645826 (= b_free!44699 (not b_next!45403))))

(declare-fun tp!476876 () Bool)

(declare-fun b_and!116817 () Bool)

(assert (=> b!1645826 (= tp!476876 b_and!116817)))

(declare-fun b_free!44701 () Bool)

(declare-fun b_next!45405 () Bool)

(assert (=> b!1645826 (= b_free!44701 (not b_next!45405))))

(declare-fun tp!476877 () Bool)

(declare-fun b_and!116819 () Bool)

(assert (=> b!1645826 (= tp!476877 b_and!116819)))

(declare-fun b!1645810 () Bool)

(declare-fun res!737413 () Bool)

(declare-fun e!1055545 () Bool)

(assert (=> b!1645810 (=> (not res!737413) (not e!1055545))))

(declare-datatypes ((LexerInterface!2832 0))(
  ( (LexerInterfaceExt!2829 (__x!11888 Int)) (Lexer!2830) )
))
(declare-fun thiss!17113 () LexerInterface!2832)

(declare-datatypes ((List!18227 0))(
  ( (Nil!18157) (Cons!18157 (h!23558 (_ BitVec 16)) (t!150450 List!18227)) )
))
(declare-datatypes ((TokenValue!3293 0))(
  ( (FloatLiteralValue!6586 (text!23496 List!18227)) (TokenValueExt!3292 (__x!11889 Int)) (Broken!16465 (value!100932 List!18227)) (Object!3362) (End!3293) (Def!3293) (Underscore!3293) (Match!3293) (Else!3293) (Error!3293) (Case!3293) (If!3293) (Extends!3293) (Abstract!3293) (Class!3293) (Val!3293) (DelimiterValue!6586 (del!3353 List!18227)) (KeywordValue!3299 (value!100933 List!18227)) (CommentValue!6586 (value!100934 List!18227)) (WhitespaceValue!6586 (value!100935 List!18227)) (IndentationValue!3293 (value!100936 List!18227)) (String!20796) (Int32!3293) (Broken!16466 (value!100937 List!18227)) (Boolean!3294) (Unit!30070) (OperatorValue!3296 (op!3353 List!18227)) (IdentifierValue!6586 (value!100938 List!18227)) (IdentifierValue!6587 (value!100939 List!18227)) (WhitespaceValue!6587 (value!100940 List!18227)) (True!6586) (False!6586) (Broken!16467 (value!100941 List!18227)) (Broken!16468 (value!100942 List!18227)) (True!6587) (RightBrace!3293) (RightBracket!3293) (Colon!3293) (Null!3293) (Comma!3293) (LeftBracket!3293) (False!6587) (LeftBrace!3293) (ImaginaryLiteralValue!3293 (text!23497 List!18227)) (StringLiteralValue!9879 (value!100943 List!18227)) (EOFValue!3293 (value!100944 List!18227)) (IdentValue!3293 (value!100945 List!18227)) (DelimiterValue!6587 (value!100946 List!18227)) (DedentValue!3293 (value!100947 List!18227)) (NewLineValue!3293 (value!100948 List!18227)) (IntegerValue!9879 (value!100949 (_ BitVec 32)) (text!23498 List!18227)) (IntegerValue!9880 (value!100950 Int) (text!23499 List!18227)) (Times!3293) (Or!3293) (Equal!3293) (Minus!3293) (Broken!16469 (value!100951 List!18227)) (And!3293) (Div!3293) (LessEqual!3293) (Mod!3293) (Concat!7824) (Not!3293) (Plus!3293) (SpaceValue!3293 (value!100952 List!18227)) (IntegerValue!9881 (value!100953 Int) (text!23500 List!18227)) (StringLiteralValue!9880 (text!23501 List!18227)) (FloatLiteralValue!6587 (text!23502 List!18227)) (BytesLiteralValue!3293 (value!100954 List!18227)) (CommentValue!6587 (value!100955 List!18227)) (StringLiteralValue!9881 (value!100956 List!18227)) (ErrorTokenValue!3293 (msg!3354 List!18227)) )
))
(declare-datatypes ((C!9236 0))(
  ( (C!9237 (val!5214 Int)) )
))
(declare-datatypes ((List!18228 0))(
  ( (Nil!18158) (Cons!18158 (h!23559 C!9236) (t!150451 List!18228)) )
))
(declare-datatypes ((IArray!12113 0))(
  ( (IArray!12114 (innerList!6114 List!18228)) )
))
(declare-datatypes ((Conc!6054 0))(
  ( (Node!6054 (left!14557 Conc!6054) (right!14887 Conc!6054) (csize!12338 Int) (cheight!6265 Int)) (Leaf!8876 (xs!8890 IArray!12113) (csize!12339 Int)) (Empty!6054) )
))
(declare-datatypes ((BalanceConc!12052 0))(
  ( (BalanceConc!12053 (c!267635 Conc!6054)) )
))
(declare-datatypes ((Regex!4531 0))(
  ( (ElementMatch!4531 (c!267636 C!9236)) (Concat!7825 (regOne!9574 Regex!4531) (regTwo!9574 Regex!4531)) (EmptyExpr!4531) (Star!4531 (reg!4860 Regex!4531)) (EmptyLang!4531) (Union!4531 (regOne!9575 Regex!4531) (regTwo!9575 Regex!4531)) )
))
(declare-datatypes ((String!20797 0))(
  ( (String!20798 (value!100957 String)) )
))
(declare-datatypes ((TokenValueInjection!6246 0))(
  ( (TokenValueInjection!6247 (toValue!4646 Int) (toChars!4505 Int)) )
))
(declare-datatypes ((Rule!6206 0))(
  ( (Rule!6207 (regex!3203 Regex!4531) (tag!3483 String!20797) (isSeparator!3203 Bool) (transformation!3203 TokenValueInjection!6246)) )
))
(declare-datatypes ((Token!5972 0))(
  ( (Token!5973 (value!100958 TokenValue!3293) (rule!5057 Rule!6206) (size!14460 Int) (originalCharacters!4017 List!18228)) )
))
(declare-datatypes ((List!18229 0))(
  ( (Nil!18159) (Cons!18159 (h!23560 Token!5972) (t!150452 List!18229)) )
))
(declare-fun tokens!457 () List!18229)

(declare-datatypes ((List!18230 0))(
  ( (Nil!18160) (Cons!18160 (h!23561 Rule!6206) (t!150453 List!18230)) )
))
(declare-fun rules!1846 () List!18230)

(declare-fun rulesProduceEachTokenIndividuallyList!1034 (LexerInterface!2832 List!18230 List!18229) Bool)

(assert (=> b!1645810 (= res!737413 (rulesProduceEachTokenIndividuallyList!1034 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1055535 () Bool)

(declare-fun b!1645811 () Bool)

(declare-fun tp!476878 () Bool)

(declare-fun e!1055537 () Bool)

(declare-fun inv!23519 (Token!5972) Bool)

(assert (=> b!1645811 (= e!1055535 (and (inv!23519 (h!23560 tokens!457)) e!1055537 tp!476878))))

(declare-fun b!1645812 () Bool)

(declare-fun res!737419 () Bool)

(assert (=> b!1645812 (=> (not res!737419) (not e!1055545))))

(get-info :version)

(assert (=> b!1645812 (= res!737419 (and (not ((_ is Nil!18159) tokens!457)) (not ((_ is Nil!18159) (t!150452 tokens!457)))))))

(declare-fun b!1645813 () Bool)

(declare-fun e!1055532 () Bool)

(declare-fun e!1055533 () Bool)

(assert (=> b!1645813 (= e!1055532 e!1055533)))

(declare-fun res!737408 () Bool)

(assert (=> b!1645813 (=> res!737408 e!1055533)))

(declare-fun lt!607800 () List!18228)

(declare-fun lt!607809 () List!18228)

(declare-fun lt!607797 () List!18228)

(assert (=> b!1645813 (= res!737408 (or (not (= lt!607809 lt!607797)) (not (= lt!607797 lt!607800)) (not (= lt!607809 lt!607800))))))

(declare-fun printList!945 (LexerInterface!2832 List!18229) List!18228)

(assert (=> b!1645813 (= lt!607797 (printList!945 thiss!17113 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))

(declare-fun lt!607808 () BalanceConc!12052)

(declare-fun list!7205 (BalanceConc!12052) List!18228)

(assert (=> b!1645813 (= lt!607809 (list!7205 lt!607808))))

(declare-datatypes ((IArray!12115 0))(
  ( (IArray!12116 (innerList!6115 List!18229)) )
))
(declare-datatypes ((Conc!6055 0))(
  ( (Node!6055 (left!14558 Conc!6055) (right!14888 Conc!6055) (csize!12340 Int) (cheight!6266 Int)) (Leaf!8877 (xs!8891 IArray!12115) (csize!12341 Int)) (Empty!6055) )
))
(declare-datatypes ((BalanceConc!12054 0))(
  ( (BalanceConc!12055 (c!267637 Conc!6055)) )
))
(declare-fun lt!607811 () BalanceConc!12054)

(declare-fun printTailRec!883 (LexerInterface!2832 BalanceConc!12054 Int BalanceConc!12052) BalanceConc!12052)

(assert (=> b!1645813 (= lt!607808 (printTailRec!883 thiss!17113 lt!607811 0 (BalanceConc!12053 Empty!6054)))))

(declare-fun print!1363 (LexerInterface!2832 BalanceConc!12054) BalanceConc!12052)

(assert (=> b!1645813 (= lt!607808 (print!1363 thiss!17113 lt!607811))))

(declare-fun singletonSeq!1677 (Token!5972) BalanceConc!12054)

(assert (=> b!1645813 (= lt!607811 (singletonSeq!1677 (h!23560 tokens!457)))))

(declare-datatypes ((tuple2!17824 0))(
  ( (tuple2!17825 (_1!10314 Token!5972) (_2!10314 List!18228)) )
))
(declare-datatypes ((Option!3438 0))(
  ( (None!3437) (Some!3437 (v!24578 tuple2!17824)) )
))
(declare-fun lt!607801 () Option!3438)

(declare-fun lt!607813 () List!18228)

(declare-fun maxPrefix!1394 (LexerInterface!2832 List!18230 List!18228) Option!3438)

(assert (=> b!1645813 (= lt!607801 (maxPrefix!1394 thiss!17113 rules!1846 lt!607813))))

(declare-fun b!1645814 () Bool)

(declare-fun isEmpty!11180 (BalanceConc!12054) Bool)

(declare-datatypes ((tuple2!17826 0))(
  ( (tuple2!17827 (_1!10315 BalanceConc!12054) (_2!10315 BalanceConc!12052)) )
))
(declare-fun lex!1316 (LexerInterface!2832 List!18230 BalanceConc!12052) tuple2!17826)

(declare-fun seqFromList!2145 (List!18228) BalanceConc!12052)

(assert (=> b!1645814 (= e!1055533 (not (isEmpty!11180 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(declare-fun e!1055539 () Bool)

(declare-fun b!1645815 () Bool)

(declare-fun e!1055543 () Bool)

(declare-fun tp!476875 () Bool)

(declare-fun inv!23516 (String!20797) Bool)

(declare-fun inv!23520 (TokenValueInjection!6246) Bool)

(assert (=> b!1645815 (= e!1055543 (and tp!476875 (inv!23516 (tag!3483 (h!23561 rules!1846))) (inv!23520 (transformation!3203 (h!23561 rules!1846))) e!1055539))))

(declare-fun b!1645816 () Bool)

(declare-fun e!1055546 () Bool)

(declare-fun tp!476874 () Bool)

(assert (=> b!1645816 (= e!1055546 (and e!1055543 tp!476874))))

(declare-fun b!1645817 () Bool)

(declare-fun res!737415 () Bool)

(assert (=> b!1645817 (=> res!737415 e!1055532)))

(declare-fun separableTokensPredicate!772 (LexerInterface!2832 Token!5972 Token!5972 List!18230) Bool)

(assert (=> b!1645817 (= res!737415 (not (separableTokensPredicate!772 thiss!17113 (h!23560 tokens!457) (h!23560 (t!150452 tokens!457)) rules!1846)))))

(declare-fun b!1645818 () Bool)

(declare-fun res!737409 () Bool)

(assert (=> b!1645818 (=> (not res!737409) (not e!1055545))))

(declare-fun rulesInvariant!2501 (LexerInterface!2832 List!18230) Bool)

(assert (=> b!1645818 (= res!737409 (rulesInvariant!2501 thiss!17113 rules!1846))))

(declare-fun b!1645819 () Bool)

(declare-fun e!1055542 () Bool)

(assert (=> b!1645819 (= e!1055545 e!1055542)))

(declare-fun res!737414 () Bool)

(assert (=> b!1645819 (=> (not res!737414) (not e!1055542))))

(declare-fun lt!607814 () List!18228)

(assert (=> b!1645819 (= res!737414 (= lt!607813 lt!607814))))

(declare-fun lt!607807 () List!18228)

(declare-fun ++!4894 (List!18228 List!18228) List!18228)

(assert (=> b!1645819 (= lt!607814 (++!4894 lt!607800 lt!607807))))

(declare-fun lt!607812 () BalanceConc!12052)

(assert (=> b!1645819 (= lt!607813 (list!7205 lt!607812))))

(declare-fun lt!607803 () BalanceConc!12052)

(assert (=> b!1645819 (= lt!607807 (list!7205 lt!607803))))

(declare-fun charsOf!1852 (Token!5972) BalanceConc!12052)

(assert (=> b!1645819 (= lt!607800 (list!7205 (charsOf!1852 (h!23560 tokens!457))))))

(declare-fun lt!607804 () tuple2!17826)

(assert (=> b!1645819 (= lt!607804 (lex!1316 thiss!17113 rules!1846 lt!607803))))

(declare-fun lt!607810 () BalanceConc!12054)

(assert (=> b!1645819 (= lt!607803 (print!1363 thiss!17113 lt!607810))))

(declare-fun seqFromList!2146 (List!18229) BalanceConc!12054)

(assert (=> b!1645819 (= lt!607810 (seqFromList!2146 (t!150452 tokens!457)))))

(assert (=> b!1645819 (= lt!607812 (print!1363 thiss!17113 (seqFromList!2146 tokens!457)))))

(declare-fun b!1645820 () Bool)

(declare-fun res!737412 () Bool)

(assert (=> b!1645820 (=> res!737412 e!1055533)))

(declare-fun rulesProduceIndividualToken!1480 (LexerInterface!2832 List!18230 Token!5972) Bool)

(assert (=> b!1645820 (= res!737412 (not (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457))))))

(declare-fun e!1055536 () Bool)

(assert (=> b!1645821 (= e!1055536 (and tp!476879 tp!476872))))

(declare-fun res!737410 () Bool)

(assert (=> start!157866 (=> (not res!737410) (not e!1055545))))

(assert (=> start!157866 (= res!737410 ((_ is Lexer!2830) thiss!17113))))

(assert (=> start!157866 e!1055545))

(assert (=> start!157866 true))

(assert (=> start!157866 e!1055546))

(assert (=> start!157866 e!1055535))

(declare-fun b!1645822 () Bool)

(declare-fun e!1055534 () Bool)

(declare-fun tp!476873 () Bool)

(assert (=> b!1645822 (= e!1055534 (and tp!476873 (inv!23516 (tag!3483 (rule!5057 (h!23560 tokens!457)))) (inv!23520 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) e!1055536))))

(declare-fun b!1645823 () Bool)

(declare-fun e!1055544 () Bool)

(assert (=> b!1645823 (= e!1055542 (not e!1055544))))

(declare-fun res!737416 () Bool)

(assert (=> b!1645823 (=> res!737416 e!1055544)))

(declare-fun lt!607802 () List!18229)

(assert (=> b!1645823 (= res!737416 (not (= lt!607802 (t!150452 tokens!457))))))

(declare-fun list!7206 (BalanceConc!12054) List!18229)

(assert (=> b!1645823 (= lt!607802 (list!7206 (_1!10315 lt!607804)))))

(declare-datatypes ((Unit!30071 0))(
  ( (Unit!30072) )
))
(declare-fun lt!607799 () Unit!30071)

(declare-fun theoremInvertabilityWhenTokenListSeparable!275 (LexerInterface!2832 List!18230 List!18229) Unit!30071)

(assert (=> b!1645823 (= lt!607799 (theoremInvertabilityWhenTokenListSeparable!275 thiss!17113 rules!1846 (t!150452 tokens!457)))))

(declare-fun isPrefix!1461 (List!18228 List!18228) Bool)

(assert (=> b!1645823 (isPrefix!1461 lt!607800 lt!607814)))

(declare-fun lt!607805 () Unit!30071)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!986 (List!18228 List!18228) Unit!30071)

(assert (=> b!1645823 (= lt!607805 (lemmaConcatTwoListThenFirstIsPrefix!986 lt!607800 lt!607807))))

(declare-fun b!1645824 () Bool)

(declare-fun res!737411 () Bool)

(assert (=> b!1645824 (=> (not res!737411) (not e!1055545))))

(declare-fun isEmpty!11181 (List!18230) Bool)

(assert (=> b!1645824 (= res!737411 (not (isEmpty!11181 rules!1846)))))

(declare-fun b!1645825 () Bool)

(declare-fun res!737418 () Bool)

(assert (=> b!1645825 (=> (not res!737418) (not e!1055545))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!525 (LexerInterface!2832 List!18229 List!18230) Bool)

(assert (=> b!1645825 (= res!737418 (tokensListTwoByTwoPredicateSeparableList!525 thiss!17113 tokens!457 rules!1846))))

(assert (=> b!1645826 (= e!1055539 (and tp!476876 tp!476877))))

(declare-fun b!1645827 () Bool)

(assert (=> b!1645827 (= e!1055544 e!1055532)))

(declare-fun res!737417 () Bool)

(assert (=> b!1645827 (=> res!737417 e!1055532)))

(declare-fun lt!607798 () List!18229)

(declare-fun lt!607796 () List!18229)

(assert (=> b!1645827 (= res!737417 (or (not (= lt!607802 lt!607798)) (not (= lt!607798 lt!607796))))))

(assert (=> b!1645827 (= lt!607798 (list!7206 lt!607810))))

(assert (=> b!1645827 (= lt!607802 lt!607796)))

(declare-fun prepend!759 (BalanceConc!12054 Token!5972) BalanceConc!12054)

(assert (=> b!1645827 (= lt!607796 (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!607806 () Unit!30071)

(declare-fun seqFromListBHdTlConstructive!278 (Token!5972 List!18229 BalanceConc!12054) Unit!30071)

(assert (=> b!1645827 (= lt!607806 (seqFromListBHdTlConstructive!278 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)) (_1!10315 lt!607804)))))

(declare-fun tp!476880 () Bool)

(declare-fun b!1645828 () Bool)

(declare-fun inv!21 (TokenValue!3293) Bool)

(assert (=> b!1645828 (= e!1055537 (and (inv!21 (value!100958 (h!23560 tokens!457))) e!1055534 tp!476880))))

(assert (= (and start!157866 res!737410) b!1645824))

(assert (= (and b!1645824 res!737411) b!1645818))

(assert (= (and b!1645818 res!737409) b!1645810))

(assert (= (and b!1645810 res!737413) b!1645825))

(assert (= (and b!1645825 res!737418) b!1645812))

(assert (= (and b!1645812 res!737419) b!1645819))

(assert (= (and b!1645819 res!737414) b!1645823))

(assert (= (and b!1645823 (not res!737416)) b!1645827))

(assert (= (and b!1645827 (not res!737417)) b!1645817))

(assert (= (and b!1645817 (not res!737415)) b!1645813))

(assert (= (and b!1645813 (not res!737408)) b!1645820))

(assert (= (and b!1645820 (not res!737412)) b!1645814))

(assert (= b!1645815 b!1645826))

(assert (= b!1645816 b!1645815))

(assert (= (and start!157866 ((_ is Cons!18160) rules!1846)) b!1645816))

(assert (= b!1645822 b!1645821))

(assert (= b!1645828 b!1645822))

(assert (= b!1645811 b!1645828))

(assert (= (and start!157866 ((_ is Cons!18159) tokens!457)) b!1645811))

(declare-fun m!1990317 () Bool)

(assert (=> b!1645817 m!1990317))

(declare-fun m!1990319 () Bool)

(assert (=> b!1645820 m!1990319))

(declare-fun m!1990321 () Bool)

(assert (=> b!1645815 m!1990321))

(declare-fun m!1990323 () Bool)

(assert (=> b!1645815 m!1990323))

(declare-fun m!1990325 () Bool)

(assert (=> b!1645811 m!1990325))

(declare-fun m!1990327 () Bool)

(assert (=> b!1645819 m!1990327))

(declare-fun m!1990329 () Bool)

(assert (=> b!1645819 m!1990329))

(declare-fun m!1990331 () Bool)

(assert (=> b!1645819 m!1990331))

(declare-fun m!1990333 () Bool)

(assert (=> b!1645819 m!1990333))

(declare-fun m!1990335 () Bool)

(assert (=> b!1645819 m!1990335))

(declare-fun m!1990337 () Bool)

(assert (=> b!1645819 m!1990337))

(declare-fun m!1990339 () Bool)

(assert (=> b!1645819 m!1990339))

(assert (=> b!1645819 m!1990331))

(declare-fun m!1990341 () Bool)

(assert (=> b!1645819 m!1990341))

(declare-fun m!1990343 () Bool)

(assert (=> b!1645819 m!1990343))

(declare-fun m!1990345 () Bool)

(assert (=> b!1645819 m!1990345))

(assert (=> b!1645819 m!1990335))

(declare-fun m!1990347 () Bool)

(assert (=> b!1645828 m!1990347))

(declare-fun m!1990349 () Bool)

(assert (=> b!1645824 m!1990349))

(declare-fun m!1990351 () Bool)

(assert (=> b!1645810 m!1990351))

(declare-fun m!1990353 () Bool)

(assert (=> b!1645818 m!1990353))

(declare-fun m!1990355 () Bool)

(assert (=> b!1645813 m!1990355))

(declare-fun m!1990357 () Bool)

(assert (=> b!1645813 m!1990357))

(declare-fun m!1990359 () Bool)

(assert (=> b!1645813 m!1990359))

(declare-fun m!1990361 () Bool)

(assert (=> b!1645813 m!1990361))

(declare-fun m!1990363 () Bool)

(assert (=> b!1645813 m!1990363))

(declare-fun m!1990365 () Bool)

(assert (=> b!1645813 m!1990365))

(declare-fun m!1990367 () Bool)

(assert (=> b!1645825 m!1990367))

(declare-fun m!1990369 () Bool)

(assert (=> b!1645823 m!1990369))

(declare-fun m!1990371 () Bool)

(assert (=> b!1645823 m!1990371))

(declare-fun m!1990373 () Bool)

(assert (=> b!1645823 m!1990373))

(declare-fun m!1990375 () Bool)

(assert (=> b!1645823 m!1990375))

(declare-fun m!1990377 () Bool)

(assert (=> b!1645827 m!1990377))

(declare-fun m!1990379 () Bool)

(assert (=> b!1645827 m!1990379))

(declare-fun m!1990381 () Bool)

(assert (=> b!1645827 m!1990381))

(declare-fun m!1990383 () Bool)

(assert (=> b!1645827 m!1990383))

(declare-fun m!1990385 () Bool)

(assert (=> b!1645827 m!1990385))

(assert (=> b!1645827 m!1990381))

(assert (=> b!1645827 m!1990383))

(declare-fun m!1990387 () Bool)

(assert (=> b!1645822 m!1990387))

(declare-fun m!1990389 () Bool)

(assert (=> b!1645822 m!1990389))

(declare-fun m!1990391 () Bool)

(assert (=> b!1645814 m!1990391))

(assert (=> b!1645814 m!1990391))

(declare-fun m!1990393 () Bool)

(assert (=> b!1645814 m!1990393))

(declare-fun m!1990395 () Bool)

(assert (=> b!1645814 m!1990395))

(check-sat b_and!116815 b_and!116817 (not b!1645823) b_and!116813 (not b!1645814) (not b!1645820) (not b!1645811) (not b!1645819) (not b!1645813) (not b!1645810) (not b!1645824) (not b_next!45405) (not b!1645817) (not b_next!45399) (not b!1645828) (not b!1645816) (not b!1645827) (not b!1645822) (not b!1645825) (not b_next!45403) (not b!1645815) (not b_next!45401) (not b!1645818) b_and!116819)
(check-sat b_and!116815 b_and!116817 (not b_next!45399) b_and!116813 (not b_next!45403) (not b_next!45401) b_and!116819 (not b_next!45405))
(get-model)

(declare-fun b!1645842 () Bool)

(declare-fun e!1055558 () Bool)

(declare-fun inv!17 (TokenValue!3293) Bool)

(assert (=> b!1645842 (= e!1055558 (inv!17 (value!100958 (h!23560 tokens!457))))))

(declare-fun b!1645843 () Bool)

(declare-fun e!1055557 () Bool)

(declare-fun inv!15 (TokenValue!3293) Bool)

(assert (=> b!1645843 (= e!1055557 (inv!15 (value!100958 (h!23560 tokens!457))))))

(declare-fun d!495766 () Bool)

(declare-fun c!267643 () Bool)

(assert (=> d!495766 (= c!267643 ((_ is IntegerValue!9879) (value!100958 (h!23560 tokens!457))))))

(declare-fun e!1055556 () Bool)

(assert (=> d!495766 (= (inv!21 (value!100958 (h!23560 tokens!457))) e!1055556)))

(declare-fun b!1645844 () Bool)

(assert (=> b!1645844 (= e!1055556 e!1055558)))

(declare-fun c!267644 () Bool)

(assert (=> b!1645844 (= c!267644 ((_ is IntegerValue!9880) (value!100958 (h!23560 tokens!457))))))

(declare-fun b!1645845 () Bool)

(declare-fun res!737432 () Bool)

(assert (=> b!1645845 (=> res!737432 e!1055557)))

(assert (=> b!1645845 (= res!737432 (not ((_ is IntegerValue!9881) (value!100958 (h!23560 tokens!457)))))))

(assert (=> b!1645845 (= e!1055558 e!1055557)))

(declare-fun b!1645846 () Bool)

(declare-fun inv!16 (TokenValue!3293) Bool)

(assert (=> b!1645846 (= e!1055556 (inv!16 (value!100958 (h!23560 tokens!457))))))

(assert (= (and d!495766 c!267643) b!1645846))

(assert (= (and d!495766 (not c!267643)) b!1645844))

(assert (= (and b!1645844 c!267644) b!1645842))

(assert (= (and b!1645844 (not c!267644)) b!1645845))

(assert (= (and b!1645845 (not res!737432)) b!1645843))

(declare-fun m!1990425 () Bool)

(assert (=> b!1645842 m!1990425))

(declare-fun m!1990427 () Bool)

(assert (=> b!1645843 m!1990427))

(declare-fun m!1990429 () Bool)

(assert (=> b!1645846 m!1990429))

(assert (=> b!1645828 d!495766))

(declare-fun d!495768 () Bool)

(declare-fun res!737435 () Bool)

(declare-fun e!1055561 () Bool)

(assert (=> d!495768 (=> (not res!737435) (not e!1055561))))

(declare-fun rulesValid!1162 (LexerInterface!2832 List!18230) Bool)

(assert (=> d!495768 (= res!737435 (rulesValid!1162 thiss!17113 rules!1846))))

(assert (=> d!495768 (= (rulesInvariant!2501 thiss!17113 rules!1846) e!1055561)))

(declare-fun b!1645849 () Bool)

(declare-datatypes ((List!18232 0))(
  ( (Nil!18162) (Cons!18162 (h!23563 String!20797) (t!150479 List!18232)) )
))
(declare-fun noDuplicateTag!1162 (LexerInterface!2832 List!18230 List!18232) Bool)

(assert (=> b!1645849 (= e!1055561 (noDuplicateTag!1162 thiss!17113 rules!1846 Nil!18162))))

(assert (= (and d!495768 res!737435) b!1645849))

(declare-fun m!1990431 () Bool)

(assert (=> d!495768 m!1990431))

(declare-fun m!1990433 () Bool)

(assert (=> b!1645849 m!1990433))

(assert (=> b!1645818 d!495768))

(declare-fun d!495770 () Bool)

(assert (=> d!495770 (= (list!7206 (_1!10315 lt!607804)) (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!607826 () Unit!30071)

(declare-fun choose!9878 (Token!5972 List!18229 BalanceConc!12054) Unit!30071)

(assert (=> d!495770 (= lt!607826 (choose!9878 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)) (_1!10315 lt!607804)))))

(declare-fun $colon$colon!360 (List!18229 Token!5972) List!18229)

(assert (=> d!495770 (= (list!7206 (_1!10315 lt!607804)) (list!7206 (seqFromList!2146 ($colon$colon!360 (t!150452 (t!150452 tokens!457)) (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!495770 (= (seqFromListBHdTlConstructive!278 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)) (_1!10315 lt!607804)) lt!607826)))

(declare-fun bs!396067 () Bool)

(assert (= bs!396067 d!495770))

(declare-fun m!1990435 () Bool)

(assert (=> bs!396067 m!1990435))

(declare-fun m!1990437 () Bool)

(assert (=> bs!396067 m!1990437))

(assert (=> bs!396067 m!1990383))

(assert (=> bs!396067 m!1990385))

(assert (=> bs!396067 m!1990369))

(assert (=> bs!396067 m!1990437))

(declare-fun m!1990439 () Bool)

(assert (=> bs!396067 m!1990439))

(assert (=> bs!396067 m!1990435))

(assert (=> bs!396067 m!1990381))

(assert (=> bs!396067 m!1990383))

(declare-fun m!1990441 () Bool)

(assert (=> bs!396067 m!1990441))

(assert (=> bs!396067 m!1990381))

(assert (=> b!1645827 d!495770))

(declare-fun d!495772 () Bool)

(declare-fun e!1055573 () Bool)

(assert (=> d!495772 e!1055573))

(declare-fun res!737447 () Bool)

(assert (=> d!495772 (=> (not res!737447) (not e!1055573))))

(declare-fun isBalanced!1846 (Conc!6055) Bool)

(declare-fun prepend!761 (Conc!6055 Token!5972) Conc!6055)

(assert (=> d!495772 (= res!737447 (isBalanced!1846 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!607832 () BalanceConc!12054)

(assert (=> d!495772 (= lt!607832 (BalanceConc!12055 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!495772 (= (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457))) lt!607832)))

(declare-fun b!1645867 () Bool)

(assert (=> b!1645867 (= e!1055573 (= (list!7206 lt!607832) (Cons!18159 (h!23560 (t!150452 tokens!457)) (list!7206 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))))))))

(assert (= (and d!495772 res!737447) b!1645867))

(declare-fun m!1990461 () Bool)

(assert (=> d!495772 m!1990461))

(assert (=> d!495772 m!1990461))

(declare-fun m!1990463 () Bool)

(assert (=> d!495772 m!1990463))

(declare-fun m!1990465 () Bool)

(assert (=> b!1645867 m!1990465))

(assert (=> b!1645867 m!1990381))

(declare-fun m!1990467 () Bool)

(assert (=> b!1645867 m!1990467))

(assert (=> b!1645827 d!495772))

(declare-fun d!495776 () Bool)

(declare-fun list!7209 (Conc!6055) List!18229)

(assert (=> d!495776 (= (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457)))) (list!7209 (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457))))))))

(declare-fun bs!396070 () Bool)

(assert (= bs!396070 d!495776))

(declare-fun m!1990473 () Bool)

(assert (=> bs!396070 m!1990473))

(assert (=> b!1645827 d!495776))

(declare-fun d!495782 () Bool)

(declare-fun fromListB!950 (List!18229) BalanceConc!12054)

(assert (=> d!495782 (= (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (fromListB!950 (t!150452 (t!150452 tokens!457))))))

(declare-fun bs!396071 () Bool)

(assert (= bs!396071 d!495782))

(declare-fun m!1990475 () Bool)

(assert (=> bs!396071 m!1990475))

(assert (=> b!1645827 d!495782))

(declare-fun d!495784 () Bool)

(assert (=> d!495784 (= (list!7206 lt!607810) (list!7209 (c!267637 lt!607810)))))

(declare-fun bs!396072 () Bool)

(assert (= bs!396072 d!495784))

(declare-fun m!1990477 () Bool)

(assert (=> bs!396072 m!1990477))

(assert (=> b!1645827 d!495784))

(declare-fun d!495786 () Bool)

(declare-fun prefixMatchZipperSequence!607 (Regex!4531 BalanceConc!12052) Bool)

(declare-fun rulesRegex!587 (LexerInterface!2832 List!18230) Regex!4531)

(declare-fun ++!4896 (BalanceConc!12052 BalanceConc!12052) BalanceConc!12052)

(declare-fun singletonSeq!1679 (C!9236) BalanceConc!12052)

(declare-fun apply!4754 (BalanceConc!12052 Int) C!9236)

(assert (=> d!495786 (= (separableTokensPredicate!772 thiss!17113 (h!23560 tokens!457) (h!23560 (t!150452 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!607 (rulesRegex!587 thiss!17113 rules!1846) (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))))))

(declare-fun bs!396073 () Bool)

(assert (= bs!396073 d!495786))

(declare-fun m!1990479 () Bool)

(assert (=> bs!396073 m!1990479))

(declare-fun m!1990481 () Bool)

(assert (=> bs!396073 m!1990481))

(declare-fun m!1990483 () Bool)

(assert (=> bs!396073 m!1990483))

(assert (=> bs!396073 m!1990479))

(assert (=> bs!396073 m!1990331))

(assert (=> bs!396073 m!1990481))

(declare-fun m!1990485 () Bool)

(assert (=> bs!396073 m!1990485))

(assert (=> bs!396073 m!1990483))

(declare-fun m!1990487 () Bool)

(assert (=> bs!396073 m!1990487))

(assert (=> bs!396073 m!1990485))

(declare-fun m!1990489 () Bool)

(assert (=> bs!396073 m!1990489))

(assert (=> bs!396073 m!1990331))

(assert (=> bs!396073 m!1990487))

(assert (=> b!1645817 d!495786))

(declare-fun d!495788 () Bool)

(assert (=> d!495788 (= (inv!23516 (tag!3483 (h!23561 rules!1846))) (= (mod (str.len (value!100957 (tag!3483 (h!23561 rules!1846)))) 2) 0))))

(assert (=> b!1645815 d!495788))

(declare-fun d!495790 () Bool)

(declare-fun res!737450 () Bool)

(declare-fun e!1055576 () Bool)

(assert (=> d!495790 (=> (not res!737450) (not e!1055576))))

(declare-fun semiInverseModEq!1234 (Int Int) Bool)

(assert (=> d!495790 (= res!737450 (semiInverseModEq!1234 (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toValue!4646 (transformation!3203 (h!23561 rules!1846)))))))

(assert (=> d!495790 (= (inv!23520 (transformation!3203 (h!23561 rules!1846))) e!1055576)))

(declare-fun b!1645870 () Bool)

(declare-fun equivClasses!1175 (Int Int) Bool)

(assert (=> b!1645870 (= e!1055576 (equivClasses!1175 (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toValue!4646 (transformation!3203 (h!23561 rules!1846)))))))

(assert (= (and d!495790 res!737450) b!1645870))

(declare-fun m!1990491 () Bool)

(assert (=> d!495790 m!1990491))

(declare-fun m!1990493 () Bool)

(assert (=> b!1645870 m!1990493))

(assert (=> b!1645815 d!495790))

(declare-fun d!495792 () Bool)

(assert (=> d!495792 (= (isEmpty!11181 rules!1846) ((_ is Nil!18160) rules!1846))))

(assert (=> b!1645824 d!495792))

(declare-fun d!495794 () Bool)

(declare-fun res!737455 () Bool)

(declare-fun e!1055582 () Bool)

(assert (=> d!495794 (=> res!737455 e!1055582)))

(assert (=> d!495794 (= res!737455 (or (not ((_ is Cons!18159) tokens!457)) (not ((_ is Cons!18159) (t!150452 tokens!457)))))))

(assert (=> d!495794 (= (tokensListTwoByTwoPredicateSeparableList!525 thiss!17113 tokens!457 rules!1846) e!1055582)))

(declare-fun b!1645875 () Bool)

(declare-fun e!1055581 () Bool)

(assert (=> b!1645875 (= e!1055582 e!1055581)))

(declare-fun res!737456 () Bool)

(assert (=> b!1645875 (=> (not res!737456) (not e!1055581))))

(assert (=> b!1645875 (= res!737456 (separableTokensPredicate!772 thiss!17113 (h!23560 tokens!457) (h!23560 (t!150452 tokens!457)) rules!1846))))

(declare-fun lt!607852 () Unit!30071)

(declare-fun Unit!30090 () Unit!30071)

(assert (=> b!1645875 (= lt!607852 Unit!30090)))

(declare-fun size!14464 (BalanceConc!12052) Int)

(assert (=> b!1645875 (> (size!14464 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) 0)))

(declare-fun lt!607850 () Unit!30071)

(declare-fun Unit!30091 () Unit!30071)

(assert (=> b!1645875 (= lt!607850 Unit!30091)))

(assert (=> b!1645875 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457)))))

(declare-fun lt!607847 () Unit!30071)

(declare-fun Unit!30092 () Unit!30071)

(assert (=> b!1645875 (= lt!607847 Unit!30092)))

(assert (=> b!1645875 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457))))

(declare-fun lt!607848 () Unit!30071)

(declare-fun lt!607849 () Unit!30071)

(assert (=> b!1645875 (= lt!607848 lt!607849)))

(assert (=> b!1645875 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 (LexerInterface!2832 List!18230 List!18229 Token!5972) Unit!30071)

(assert (=> b!1645875 (= lt!607849 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 thiss!17113 rules!1846 tokens!457 (h!23560 (t!150452 tokens!457))))))

(declare-fun lt!607853 () Unit!30071)

(declare-fun lt!607851 () Unit!30071)

(assert (=> b!1645875 (= lt!607853 lt!607851)))

(assert (=> b!1645875 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457))))

(assert (=> b!1645875 (= lt!607851 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 thiss!17113 rules!1846 tokens!457 (h!23560 tokens!457)))))

(declare-fun b!1645876 () Bool)

(assert (=> b!1645876 (= e!1055581 (tokensListTwoByTwoPredicateSeparableList!525 thiss!17113 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))) rules!1846))))

(assert (= (and d!495794 (not res!737455)) b!1645875))

(assert (= (and b!1645875 res!737456) b!1645876))

(assert (=> b!1645875 m!1990483))

(declare-fun m!1990495 () Bool)

(assert (=> b!1645875 m!1990495))

(assert (=> b!1645875 m!1990317))

(assert (=> b!1645875 m!1990319))

(declare-fun m!1990497 () Bool)

(assert (=> b!1645875 m!1990497))

(assert (=> b!1645875 m!1990483))

(declare-fun m!1990499 () Bool)

(assert (=> b!1645875 m!1990499))

(declare-fun m!1990501 () Bool)

(assert (=> b!1645875 m!1990501))

(declare-fun m!1990503 () Bool)

(assert (=> b!1645876 m!1990503))

(assert (=> b!1645825 d!495794))

(declare-fun d!495796 () Bool)

(declare-fun lt!607856 () Bool)

(declare-fun isEmpty!11187 (List!18229) Bool)

(assert (=> d!495796 (= lt!607856 (isEmpty!11187 (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(declare-fun isEmpty!11188 (Conc!6055) Bool)

(assert (=> d!495796 (= lt!607856 (isEmpty!11188 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(assert (=> d!495796 (= (isEmpty!11180 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800)))) lt!607856)))

(declare-fun bs!396074 () Bool)

(assert (= bs!396074 d!495796))

(declare-fun m!1990505 () Bool)

(assert (=> bs!396074 m!1990505))

(assert (=> bs!396074 m!1990505))

(declare-fun m!1990507 () Bool)

(assert (=> bs!396074 m!1990507))

(declare-fun m!1990509 () Bool)

(assert (=> bs!396074 m!1990509))

(assert (=> b!1645814 d!495796))

(declare-fun b!1645908 () Bool)

(declare-fun res!737480 () Bool)

(declare-fun e!1055605 () Bool)

(assert (=> b!1645908 (=> (not res!737480) (not e!1055605))))

(declare-fun lt!607943 () tuple2!17826)

(declare-datatypes ((tuple2!17830 0))(
  ( (tuple2!17831 (_1!10317 List!18229) (_2!10317 List!18228)) )
))
(declare-fun lexList!863 (LexerInterface!2832 List!18230 List!18228) tuple2!17830)

(assert (=> b!1645908 (= res!737480 (= (list!7206 (_1!10315 lt!607943)) (_1!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 (seqFromList!2145 lt!607800))))))))

(declare-fun b!1645909 () Bool)

(declare-fun e!1055606 () Bool)

(assert (=> b!1645909 (= e!1055606 (= (_2!10315 lt!607943) (seqFromList!2145 lt!607800)))))

(declare-fun b!1645910 () Bool)

(assert (=> b!1645910 (= e!1055605 (= (list!7205 (_2!10315 lt!607943)) (_2!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 (seqFromList!2145 lt!607800))))))))

(declare-fun b!1645911 () Bool)

(declare-fun e!1055604 () Bool)

(assert (=> b!1645911 (= e!1055606 e!1055604)))

(declare-fun res!737479 () Bool)

(assert (=> b!1645911 (= res!737479 (< (size!14464 (_2!10315 lt!607943)) (size!14464 (seqFromList!2145 lt!607800))))))

(assert (=> b!1645911 (=> (not res!737479) (not e!1055604))))

(declare-fun b!1645912 () Bool)

(assert (=> b!1645912 (= e!1055604 (not (isEmpty!11180 (_1!10315 lt!607943))))))

(declare-fun d!495798 () Bool)

(assert (=> d!495798 e!1055605))

(declare-fun res!737478 () Bool)

(assert (=> d!495798 (=> (not res!737478) (not e!1055605))))

(assert (=> d!495798 (= res!737478 e!1055606)))

(declare-fun c!267654 () Bool)

(declare-fun size!14465 (BalanceConc!12054) Int)

(assert (=> d!495798 (= c!267654 (> (size!14465 (_1!10315 lt!607943)) 0))))

(declare-fun lexTailRecV2!586 (LexerInterface!2832 List!18230 BalanceConc!12052 BalanceConc!12052 BalanceConc!12052 BalanceConc!12054) tuple2!17826)

(assert (=> d!495798 (= lt!607943 (lexTailRecV2!586 thiss!17113 rules!1846 (seqFromList!2145 lt!607800) (BalanceConc!12053 Empty!6054) (seqFromList!2145 lt!607800) (BalanceConc!12055 Empty!6055)))))

(assert (=> d!495798 (= (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800)) lt!607943)))

(assert (= (and d!495798 c!267654) b!1645911))

(assert (= (and d!495798 (not c!267654)) b!1645909))

(assert (= (and b!1645911 res!737479) b!1645912))

(assert (= (and d!495798 res!737478) b!1645908))

(assert (= (and b!1645908 res!737480) b!1645910))

(declare-fun m!1990607 () Bool)

(assert (=> b!1645911 m!1990607))

(assert (=> b!1645911 m!1990391))

(declare-fun m!1990609 () Bool)

(assert (=> b!1645911 m!1990609))

(declare-fun m!1990611 () Bool)

(assert (=> b!1645908 m!1990611))

(assert (=> b!1645908 m!1990391))

(declare-fun m!1990613 () Bool)

(assert (=> b!1645908 m!1990613))

(assert (=> b!1645908 m!1990613))

(declare-fun m!1990615 () Bool)

(assert (=> b!1645908 m!1990615))

(declare-fun m!1990617 () Bool)

(assert (=> d!495798 m!1990617))

(assert (=> d!495798 m!1990391))

(assert (=> d!495798 m!1990391))

(declare-fun m!1990619 () Bool)

(assert (=> d!495798 m!1990619))

(declare-fun m!1990621 () Bool)

(assert (=> b!1645910 m!1990621))

(assert (=> b!1645910 m!1990391))

(assert (=> b!1645910 m!1990613))

(assert (=> b!1645910 m!1990613))

(assert (=> b!1645910 m!1990615))

(declare-fun m!1990623 () Bool)

(assert (=> b!1645912 m!1990623))

(assert (=> b!1645814 d!495798))

(declare-fun d!495806 () Bool)

(declare-fun fromListB!951 (List!18228) BalanceConc!12052)

(assert (=> d!495806 (= (seqFromList!2145 lt!607800) (fromListB!951 lt!607800))))

(declare-fun bs!396076 () Bool)

(assert (= bs!396076 d!495806))

(declare-fun m!1990625 () Bool)

(assert (=> bs!396076 m!1990625))

(assert (=> b!1645814 d!495806))

(declare-fun d!495808 () Bool)

(assert (=> d!495808 (= (list!7206 (_1!10315 lt!607804)) (list!7209 (c!267637 (_1!10315 lt!607804))))))

(declare-fun bs!396077 () Bool)

(assert (= bs!396077 d!495808))

(declare-fun m!1990627 () Bool)

(assert (=> bs!396077 m!1990627))

(assert (=> b!1645823 d!495808))

(declare-fun d!495810 () Bool)

(declare-fun e!1055616 () Bool)

(assert (=> d!495810 e!1055616))

(declare-fun res!737487 () Bool)

(assert (=> d!495810 (=> (not res!737487) (not e!1055616))))

(assert (=> d!495810 (= res!737487 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)))))) (t!150452 tokens!457)))))

(declare-fun lt!608016 () Unit!30071)

(declare-fun e!1055615 () Unit!30071)

(assert (=> d!495810 (= lt!608016 e!1055615)))

(declare-fun c!267657 () Bool)

(assert (=> d!495810 (= c!267657 (or ((_ is Nil!18159) (t!150452 tokens!457)) ((_ is Nil!18159) (t!150452 (t!150452 tokens!457)))))))

(assert (=> d!495810 (not (isEmpty!11181 rules!1846))))

(assert (=> d!495810 (= (theoremInvertabilityWhenTokenListSeparable!275 thiss!17113 rules!1846 (t!150452 tokens!457)) lt!608016)))

(declare-fun b!1645923 () Bool)

(declare-fun Unit!30093 () Unit!30071)

(assert (=> b!1645923 (= e!1055615 Unit!30093)))

(declare-fun b!1645924 () Bool)

(declare-fun Unit!30094 () Unit!30071)

(assert (=> b!1645924 (= e!1055615 Unit!30094)))

(declare-fun lt!608019 () BalanceConc!12052)

(assert (=> b!1645924 (= lt!608019 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))

(declare-fun lt!608013 () BalanceConc!12052)

(assert (=> b!1645924 (= lt!608013 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))))))

(declare-fun lt!608014 () tuple2!17826)

(assert (=> b!1645924 (= lt!608014 (lex!1316 thiss!17113 rules!1846 lt!608013))))

(declare-fun lt!608000 () List!18228)

(assert (=> b!1645924 (= lt!608000 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!608017 () List!18228)

(assert (=> b!1645924 (= lt!608017 (list!7205 lt!608013))))

(declare-fun lt!608015 () Unit!30071)

(assert (=> b!1645924 (= lt!608015 (lemmaConcatTwoListThenFirstIsPrefix!986 lt!608000 lt!608017))))

(assert (=> b!1645924 (isPrefix!1461 lt!608000 (++!4894 lt!608000 lt!608017))))

(declare-fun lt!608003 () Unit!30071)

(assert (=> b!1645924 (= lt!608003 lt!608015)))

(declare-fun lt!608018 () Unit!30071)

(assert (=> b!1645924 (= lt!608018 (theoremInvertabilityWhenTokenListSeparable!275 thiss!17113 rules!1846 (t!150452 (t!150452 tokens!457))))))

(declare-fun lt!607999 () Unit!30071)

(assert (=> b!1645924 (= lt!607999 (seqFromListBHdTlConstructive!278 (h!23560 (t!150452 (t!150452 tokens!457))) (t!150452 (t!150452 (t!150452 tokens!457))) (_1!10315 lt!608014)))))

(assert (=> b!1645924 (= (list!7206 (_1!10315 lt!608014)) (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!608009 () Unit!30071)

(assert (=> b!1645924 (= lt!608009 lt!607999)))

(declare-fun lt!608010 () Option!3438)

(assert (=> b!1645924 (= lt!608010 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 lt!608019)))))

(assert (=> b!1645924 (= (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457)))) (printTailRec!883 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) 0 (BalanceConc!12053 Empty!6054)))))

(declare-fun lt!608001 () Unit!30071)

(declare-fun Unit!30095 () Unit!30071)

(assert (=> b!1645924 (= lt!608001 Unit!30095)))

(declare-fun lt!608011 () Unit!30071)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!400 (LexerInterface!2832 List!18230 List!18228 List!18228) Unit!30071)

(assert (=> b!1645924 (= lt!608011 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!400 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))

(assert (=> b!1645924 (= (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))))

(declare-fun lt!608006 () Unit!30071)

(declare-fun Unit!30096 () Unit!30071)

(assert (=> b!1645924 (= lt!608006 Unit!30096)))

(declare-fun head!3605 (List!18228) C!9236)

(assert (=> b!1645924 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0))) (Cons!18158 (head!3605 (originalCharacters!4017 (h!23560 (t!150452 (t!150452 tokens!457))))) Nil!18158))))

(declare-fun lt!607998 () Unit!30071)

(declare-fun Unit!30097 () Unit!30071)

(assert (=> b!1645924 (= lt!607998 Unit!30097)))

(assert (=> b!1645924 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0))) (Cons!18158 (head!3605 (list!7205 lt!608013)) Nil!18158))))

(declare-fun lt!608023 () Unit!30071)

(declare-fun Unit!30098 () Unit!30071)

(assert (=> b!1645924 (= lt!608023 Unit!30098)))

(declare-fun head!3606 (BalanceConc!12052) C!9236)

(assert (=> b!1645924 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0))) (Cons!18158 (head!3606 lt!608013) Nil!18158))))

(declare-fun lt!608005 () Unit!30071)

(declare-fun Unit!30099 () Unit!30071)

(assert (=> b!1645924 (= lt!608005 Unit!30099)))

(declare-fun isDefined!2795 (Option!3438) Bool)

(assert (=> b!1645924 (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!608007 () Unit!30071)

(declare-fun Unit!30100 () Unit!30071)

(assert (=> b!1645924 (= lt!608007 Unit!30100)))

(assert (=> b!1645924 (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!608004 () Unit!30071)

(declare-fun Unit!30101 () Unit!30071)

(assert (=> b!1645924 (= lt!608004 Unit!30101)))

(declare-fun lt!608021 () Unit!30071)

(declare-fun Unit!30102 () Unit!30071)

(assert (=> b!1645924 (= lt!608021 Unit!30102)))

(declare-fun get!5281 (Option!3438) tuple2!17824)

(assert (=> b!1645924 (= (_1!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))) (h!23560 (t!150452 tokens!457)))))

(declare-fun lt!608020 () Unit!30071)

(declare-fun Unit!30103 () Unit!30071)

(assert (=> b!1645924 (= lt!608020 Unit!30103)))

(declare-fun isEmpty!11189 (List!18228) Bool)

(assert (=> b!1645924 (isEmpty!11189 (_2!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))))

(declare-fun lt!608008 () Unit!30071)

(declare-fun Unit!30104 () Unit!30071)

(assert (=> b!1645924 (= lt!608008 Unit!30104)))

(declare-fun matchR!2024 (Regex!4531 List!18228) Bool)

(assert (=> b!1645924 (matchR!2024 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!608012 () Unit!30071)

(declare-fun Unit!30105 () Unit!30071)

(assert (=> b!1645924 (= lt!608012 Unit!30105)))

(assert (=> b!1645924 (= (rule!5057 (h!23560 (t!150452 tokens!457))) (rule!5057 (h!23560 (t!150452 tokens!457))))))

(declare-fun lt!608002 () Unit!30071)

(declare-fun Unit!30106 () Unit!30071)

(assert (=> b!1645924 (= lt!608002 Unit!30106)))

(declare-fun lt!608022 () Unit!30071)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!162 (LexerInterface!2832 List!18230 Token!5972 Rule!6206 List!18228) Unit!30071)

(assert (=> b!1645924 (= lt!608022 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!162 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457)) (rule!5057 (h!23560 (t!150452 tokens!457))) (list!7205 lt!608013)))))

(declare-fun b!1645925 () Bool)

(declare-fun isEmpty!11190 (BalanceConc!12052) Bool)

(assert (=> b!1645925 (= e!1055616 (isEmpty!11190 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)))))))))

(assert (= (and d!495810 c!267657) b!1645923))

(assert (= (and d!495810 (not c!267657)) b!1645924))

(assert (= (and d!495810 res!737487) b!1645925))

(assert (=> d!495810 m!1990349))

(declare-fun m!1990629 () Bool)

(assert (=> d!495810 m!1990629))

(declare-fun m!1990631 () Bool)

(assert (=> d!495810 m!1990631))

(assert (=> d!495810 m!1990333))

(declare-fun m!1990633 () Bool)

(assert (=> d!495810 m!1990633))

(assert (=> d!495810 m!1990333))

(assert (=> d!495810 m!1990629))

(declare-fun m!1990635 () Bool)

(assert (=> b!1645924 m!1990635))

(declare-fun m!1990637 () Bool)

(assert (=> b!1645924 m!1990637))

(declare-fun m!1990639 () Bool)

(assert (=> b!1645924 m!1990639))

(declare-fun m!1990641 () Bool)

(assert (=> b!1645924 m!1990641))

(declare-fun m!1990643 () Bool)

(assert (=> b!1645924 m!1990643))

(declare-fun m!1990645 () Bool)

(assert (=> b!1645924 m!1990645))

(declare-fun m!1990647 () Bool)

(assert (=> b!1645924 m!1990647))

(declare-fun m!1990649 () Bool)

(assert (=> b!1645924 m!1990649))

(declare-fun m!1990651 () Bool)

(assert (=> b!1645924 m!1990651))

(assert (=> b!1645924 m!1990333))

(assert (=> b!1645924 m!1990483))

(assert (=> b!1645924 m!1990643))

(assert (=> b!1645924 m!1990645))

(declare-fun m!1990653 () Bool)

(assert (=> b!1645924 m!1990653))

(declare-fun m!1990655 () Bool)

(assert (=> b!1645924 m!1990655))

(declare-fun m!1990657 () Bool)

(assert (=> b!1645924 m!1990657))

(assert (=> b!1645924 m!1990483))

(declare-fun m!1990659 () Bool)

(assert (=> b!1645924 m!1990659))

(declare-fun m!1990661 () Bool)

(assert (=> b!1645924 m!1990661))

(assert (=> b!1645924 m!1990645))

(declare-fun m!1990663 () Bool)

(assert (=> b!1645924 m!1990663))

(declare-fun m!1990665 () Bool)

(assert (=> b!1645924 m!1990665))

(assert (=> b!1645924 m!1990635))

(assert (=> b!1645924 m!1990649))

(declare-fun m!1990667 () Bool)

(assert (=> b!1645924 m!1990667))

(declare-fun m!1990669 () Bool)

(assert (=> b!1645924 m!1990669))

(declare-fun m!1990671 () Bool)

(assert (=> b!1645924 m!1990671))

(declare-fun m!1990673 () Bool)

(assert (=> b!1645924 m!1990673))

(assert (=> b!1645924 m!1990381))

(declare-fun m!1990675 () Bool)

(assert (=> b!1645924 m!1990675))

(assert (=> b!1645924 m!1990643))

(assert (=> b!1645924 m!1990649))

(declare-fun m!1990677 () Bool)

(assert (=> b!1645924 m!1990677))

(assert (=> b!1645924 m!1990649))

(assert (=> b!1645924 m!1990643))

(declare-fun m!1990679 () Bool)

(assert (=> b!1645924 m!1990679))

(declare-fun m!1990681 () Bool)

(assert (=> b!1645924 m!1990681))

(declare-fun m!1990683 () Bool)

(assert (=> b!1645924 m!1990683))

(assert (=> b!1645924 m!1990381))

(assert (=> b!1645924 m!1990665))

(assert (=> b!1645924 m!1990683))

(declare-fun m!1990685 () Bool)

(assert (=> b!1645924 m!1990685))

(declare-fun m!1990687 () Bool)

(assert (=> b!1645924 m!1990687))

(assert (=> b!1645924 m!1990681))

(assert (=> b!1645924 m!1990639))

(assert (=> b!1645924 m!1990661))

(declare-fun m!1990689 () Bool)

(assert (=> b!1645924 m!1990689))

(assert (=> b!1645924 m!1990639))

(declare-fun m!1990691 () Bool)

(assert (=> b!1645924 m!1990691))

(declare-fun m!1990693 () Bool)

(assert (=> b!1645924 m!1990693))

(declare-fun m!1990695 () Bool)

(assert (=> b!1645924 m!1990695))

(assert (=> b!1645924 m!1990687))

(assert (=> b!1645924 m!1990333))

(assert (=> b!1645924 m!1990629))

(declare-fun m!1990697 () Bool)

(assert (=> b!1645924 m!1990697))

(declare-fun m!1990699 () Bool)

(assert (=> b!1645924 m!1990699))

(assert (=> b!1645924 m!1990655))

(assert (=> b!1645924 m!1990695))

(declare-fun m!1990701 () Bool)

(assert (=> b!1645924 m!1990701))

(assert (=> b!1645925 m!1990333))

(assert (=> b!1645925 m!1990333))

(assert (=> b!1645925 m!1990629))

(assert (=> b!1645925 m!1990629))

(assert (=> b!1645925 m!1990631))

(declare-fun m!1990703 () Bool)

(assert (=> b!1645925 m!1990703))

(assert (=> b!1645823 d!495810))

(declare-fun b!1645936 () Bool)

(declare-fun e!1055623 () Bool)

(declare-fun tail!2427 (List!18228) List!18228)

(assert (=> b!1645936 (= e!1055623 (isPrefix!1461 (tail!2427 lt!607800) (tail!2427 lt!607814)))))

(declare-fun d!495812 () Bool)

(declare-fun e!1055625 () Bool)

(assert (=> d!495812 e!1055625))

(declare-fun res!737496 () Bool)

(assert (=> d!495812 (=> res!737496 e!1055625)))

(declare-fun lt!608026 () Bool)

(assert (=> d!495812 (= res!737496 (not lt!608026))))

(declare-fun e!1055624 () Bool)

(assert (=> d!495812 (= lt!608026 e!1055624)))

(declare-fun res!737497 () Bool)

(assert (=> d!495812 (=> res!737497 e!1055624)))

(assert (=> d!495812 (= res!737497 ((_ is Nil!18158) lt!607800))))

(assert (=> d!495812 (= (isPrefix!1461 lt!607800 lt!607814) lt!608026)))

(declare-fun b!1645935 () Bool)

(declare-fun res!737499 () Bool)

(assert (=> b!1645935 (=> (not res!737499) (not e!1055623))))

(assert (=> b!1645935 (= res!737499 (= (head!3605 lt!607800) (head!3605 lt!607814)))))

(declare-fun b!1645934 () Bool)

(assert (=> b!1645934 (= e!1055624 e!1055623)))

(declare-fun res!737498 () Bool)

(assert (=> b!1645934 (=> (not res!737498) (not e!1055623))))

(assert (=> b!1645934 (= res!737498 (not ((_ is Nil!18158) lt!607814)))))

(declare-fun b!1645937 () Bool)

(declare-fun size!14466 (List!18228) Int)

(assert (=> b!1645937 (= e!1055625 (>= (size!14466 lt!607814) (size!14466 lt!607800)))))

(assert (= (and d!495812 (not res!737497)) b!1645934))

(assert (= (and b!1645934 res!737498) b!1645935))

(assert (= (and b!1645935 res!737499) b!1645936))

(assert (= (and d!495812 (not res!737496)) b!1645937))

(declare-fun m!1990705 () Bool)

(assert (=> b!1645936 m!1990705))

(declare-fun m!1990707 () Bool)

(assert (=> b!1645936 m!1990707))

(assert (=> b!1645936 m!1990705))

(assert (=> b!1645936 m!1990707))

(declare-fun m!1990709 () Bool)

(assert (=> b!1645936 m!1990709))

(declare-fun m!1990711 () Bool)

(assert (=> b!1645935 m!1990711))

(declare-fun m!1990713 () Bool)

(assert (=> b!1645935 m!1990713))

(declare-fun m!1990715 () Bool)

(assert (=> b!1645937 m!1990715))

(declare-fun m!1990717 () Bool)

(assert (=> b!1645937 m!1990717))

(assert (=> b!1645823 d!495812))

(declare-fun d!495814 () Bool)

(assert (=> d!495814 (isPrefix!1461 lt!607800 (++!4894 lt!607800 lt!607807))))

(declare-fun lt!608029 () Unit!30071)

(declare-fun choose!9879 (List!18228 List!18228) Unit!30071)

(assert (=> d!495814 (= lt!608029 (choose!9879 lt!607800 lt!607807))))

(assert (=> d!495814 (= (lemmaConcatTwoListThenFirstIsPrefix!986 lt!607800 lt!607807) lt!608029)))

(declare-fun bs!396078 () Bool)

(assert (= bs!396078 d!495814))

(assert (=> bs!396078 m!1990339))

(assert (=> bs!396078 m!1990339))

(declare-fun m!1990719 () Bool)

(assert (=> bs!396078 m!1990719))

(declare-fun m!1990721 () Bool)

(assert (=> bs!396078 m!1990721))

(assert (=> b!1645823 d!495814))

(declare-fun d!495816 () Bool)

(declare-fun list!7210 (Conc!6054) List!18228)

(assert (=> d!495816 (= (list!7205 lt!607808) (list!7210 (c!267635 lt!607808)))))

(declare-fun bs!396079 () Bool)

(assert (= bs!396079 d!495816))

(declare-fun m!1990723 () Bool)

(assert (=> bs!396079 m!1990723))

(assert (=> b!1645813 d!495816))

(declare-fun d!495818 () Bool)

(declare-fun lt!608032 () BalanceConc!12052)

(assert (=> d!495818 (= (list!7205 lt!608032) (printList!945 thiss!17113 (list!7206 lt!607811)))))

(assert (=> d!495818 (= lt!608032 (printTailRec!883 thiss!17113 lt!607811 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!495818 (= (print!1363 thiss!17113 lt!607811) lt!608032)))

(declare-fun bs!396080 () Bool)

(assert (= bs!396080 d!495818))

(declare-fun m!1990725 () Bool)

(assert (=> bs!396080 m!1990725))

(declare-fun m!1990727 () Bool)

(assert (=> bs!396080 m!1990727))

(assert (=> bs!396080 m!1990727))

(declare-fun m!1990729 () Bool)

(assert (=> bs!396080 m!1990729))

(assert (=> bs!396080 m!1990357))

(assert (=> b!1645813 d!495818))

(declare-fun b!1645956 () Bool)

(declare-fun e!1055633 () Option!3438)

(declare-fun lt!608043 () Option!3438)

(declare-fun lt!608046 () Option!3438)

(assert (=> b!1645956 (= e!1055633 (ite (and ((_ is None!3437) lt!608043) ((_ is None!3437) lt!608046)) None!3437 (ite ((_ is None!3437) lt!608046) lt!608043 (ite ((_ is None!3437) lt!608043) lt!608046 (ite (>= (size!14460 (_1!10314 (v!24578 lt!608043))) (size!14460 (_1!10314 (v!24578 lt!608046)))) lt!608043 lt!608046)))))))

(declare-fun call!105789 () Option!3438)

(assert (=> b!1645956 (= lt!608043 call!105789)))

(assert (=> b!1645956 (= lt!608046 (maxPrefix!1394 thiss!17113 (t!150453 rules!1846) lt!607813))))

(declare-fun d!495820 () Bool)

(declare-fun e!1055634 () Bool)

(assert (=> d!495820 e!1055634))

(declare-fun res!737515 () Bool)

(assert (=> d!495820 (=> res!737515 e!1055634)))

(declare-fun lt!608044 () Option!3438)

(declare-fun isEmpty!11191 (Option!3438) Bool)

(assert (=> d!495820 (= res!737515 (isEmpty!11191 lt!608044))))

(assert (=> d!495820 (= lt!608044 e!1055633)))

(declare-fun c!267660 () Bool)

(assert (=> d!495820 (= c!267660 (and ((_ is Cons!18160) rules!1846) ((_ is Nil!18160) (t!150453 rules!1846))))))

(declare-fun lt!608047 () Unit!30071)

(declare-fun lt!608045 () Unit!30071)

(assert (=> d!495820 (= lt!608047 lt!608045)))

(assert (=> d!495820 (isPrefix!1461 lt!607813 lt!607813)))

(declare-fun lemmaIsPrefixRefl!988 (List!18228 List!18228) Unit!30071)

(assert (=> d!495820 (= lt!608045 (lemmaIsPrefixRefl!988 lt!607813 lt!607813))))

(declare-fun rulesValidInductive!1010 (LexerInterface!2832 List!18230) Bool)

(assert (=> d!495820 (rulesValidInductive!1010 thiss!17113 rules!1846)))

(assert (=> d!495820 (= (maxPrefix!1394 thiss!17113 rules!1846 lt!607813) lt!608044)))

(declare-fun b!1645957 () Bool)

(declare-fun res!737516 () Bool)

(declare-fun e!1055632 () Bool)

(assert (=> b!1645957 (=> (not res!737516) (not e!1055632))))

(assert (=> b!1645957 (= res!737516 (= (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))) (originalCharacters!4017 (_1!10314 (get!5281 lt!608044)))))))

(declare-fun b!1645958 () Bool)

(declare-fun res!737520 () Bool)

(assert (=> b!1645958 (=> (not res!737520) (not e!1055632))))

(assert (=> b!1645958 (= res!737520 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))) (_2!10314 (get!5281 lt!608044))) lt!607813))))

(declare-fun b!1645959 () Bool)

(declare-fun contains!3162 (List!18230 Rule!6206) Bool)

(assert (=> b!1645959 (= e!1055632 (contains!3162 rules!1846 (rule!5057 (_1!10314 (get!5281 lt!608044)))))))

(declare-fun b!1645960 () Bool)

(declare-fun res!737514 () Bool)

(assert (=> b!1645960 (=> (not res!737514) (not e!1055632))))

(assert (=> b!1645960 (= res!737514 (matchR!2024 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun bm!105784 () Bool)

(declare-fun maxPrefixOneRule!803 (LexerInterface!2832 Rule!6206 List!18228) Option!3438)

(assert (=> bm!105784 (= call!105789 (maxPrefixOneRule!803 thiss!17113 (h!23561 rules!1846) lt!607813))))

(declare-fun b!1645961 () Bool)

(assert (=> b!1645961 (= e!1055634 e!1055632)))

(declare-fun res!737517 () Bool)

(assert (=> b!1645961 (=> (not res!737517) (not e!1055632))))

(assert (=> b!1645961 (= res!737517 (isDefined!2795 lt!608044))))

(declare-fun b!1645962 () Bool)

(declare-fun res!737519 () Bool)

(assert (=> b!1645962 (=> (not res!737519) (not e!1055632))))

(declare-fun apply!4756 (TokenValueInjection!6246 BalanceConc!12052) TokenValue!3293)

(assert (=> b!1645962 (= res!737519 (= (value!100958 (_1!10314 (get!5281 lt!608044))) (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608044)))))))))

(declare-fun b!1645963 () Bool)

(declare-fun res!737518 () Bool)

(assert (=> b!1645963 (=> (not res!737518) (not e!1055632))))

(assert (=> b!1645963 (= res!737518 (< (size!14466 (_2!10314 (get!5281 lt!608044))) (size!14466 lt!607813)))))

(declare-fun b!1645964 () Bool)

(assert (=> b!1645964 (= e!1055633 call!105789)))

(assert (= (and d!495820 c!267660) b!1645964))

(assert (= (and d!495820 (not c!267660)) b!1645956))

(assert (= (or b!1645964 b!1645956) bm!105784))

(assert (= (and d!495820 (not res!737515)) b!1645961))

(assert (= (and b!1645961 res!737517) b!1645957))

(assert (= (and b!1645957 res!737516) b!1645963))

(assert (= (and b!1645963 res!737518) b!1645958))

(assert (= (and b!1645958 res!737520) b!1645962))

(assert (= (and b!1645962 res!737519) b!1645960))

(assert (= (and b!1645960 res!737514) b!1645959))

(declare-fun m!1990731 () Bool)

(assert (=> b!1645960 m!1990731))

(declare-fun m!1990733 () Bool)

(assert (=> b!1645960 m!1990733))

(assert (=> b!1645960 m!1990733))

(declare-fun m!1990735 () Bool)

(assert (=> b!1645960 m!1990735))

(assert (=> b!1645960 m!1990735))

(declare-fun m!1990737 () Bool)

(assert (=> b!1645960 m!1990737))

(assert (=> b!1645958 m!1990731))

(assert (=> b!1645958 m!1990733))

(assert (=> b!1645958 m!1990733))

(assert (=> b!1645958 m!1990735))

(assert (=> b!1645958 m!1990735))

(declare-fun m!1990739 () Bool)

(assert (=> b!1645958 m!1990739))

(declare-fun m!1990741 () Bool)

(assert (=> bm!105784 m!1990741))

(declare-fun m!1990743 () Bool)

(assert (=> b!1645956 m!1990743))

(assert (=> b!1645962 m!1990731))

(declare-fun m!1990745 () Bool)

(assert (=> b!1645962 m!1990745))

(assert (=> b!1645962 m!1990745))

(declare-fun m!1990747 () Bool)

(assert (=> b!1645962 m!1990747))

(assert (=> b!1645963 m!1990731))

(declare-fun m!1990749 () Bool)

(assert (=> b!1645963 m!1990749))

(declare-fun m!1990751 () Bool)

(assert (=> b!1645963 m!1990751))

(assert (=> b!1645957 m!1990731))

(assert (=> b!1645957 m!1990733))

(assert (=> b!1645957 m!1990733))

(assert (=> b!1645957 m!1990735))

(declare-fun m!1990753 () Bool)

(assert (=> d!495820 m!1990753))

(declare-fun m!1990755 () Bool)

(assert (=> d!495820 m!1990755))

(declare-fun m!1990757 () Bool)

(assert (=> d!495820 m!1990757))

(declare-fun m!1990759 () Bool)

(assert (=> d!495820 m!1990759))

(assert (=> b!1645959 m!1990731))

(declare-fun m!1990761 () Bool)

(assert (=> b!1645959 m!1990761))

(declare-fun m!1990763 () Bool)

(assert (=> b!1645961 m!1990763))

(assert (=> b!1645813 d!495820))

(declare-fun d!495822 () Bool)

(declare-fun lt!608069 () BalanceConc!12052)

(declare-fun printListTailRec!385 (LexerInterface!2832 List!18229 List!18228) List!18228)

(declare-fun dropList!658 (BalanceConc!12054 Int) List!18229)

(assert (=> d!495822 (= (list!7205 lt!608069) (printListTailRec!385 thiss!17113 (dropList!658 lt!607811 0) (list!7205 (BalanceConc!12053 Empty!6054))))))

(declare-fun e!1055651 () BalanceConc!12052)

(assert (=> d!495822 (= lt!608069 e!1055651)))

(declare-fun c!267663 () Bool)

(assert (=> d!495822 (= c!267663 (>= 0 (size!14465 lt!607811)))))

(declare-fun e!1055650 () Bool)

(assert (=> d!495822 e!1055650))

(declare-fun res!737525 () Bool)

(assert (=> d!495822 (=> (not res!737525) (not e!1055650))))

(assert (=> d!495822 (= res!737525 (>= 0 0))))

(assert (=> d!495822 (= (printTailRec!883 thiss!17113 lt!607811 0 (BalanceConc!12053 Empty!6054)) lt!608069)))

(declare-fun b!1645986 () Bool)

(assert (=> b!1645986 (= e!1055650 (<= 0 (size!14465 lt!607811)))))

(declare-fun b!1645987 () Bool)

(assert (=> b!1645987 (= e!1055651 (BalanceConc!12053 Empty!6054))))

(declare-fun b!1645988 () Bool)

(declare-fun apply!4757 (BalanceConc!12054 Int) Token!5972)

(assert (=> b!1645988 (= e!1055651 (printTailRec!883 thiss!17113 lt!607811 (+ 0 1) (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607811 0)))))))

(declare-fun lt!608065 () List!18229)

(assert (=> b!1645988 (= lt!608065 (list!7206 lt!607811))))

(declare-fun lt!608068 () Unit!30071)

(declare-fun lemmaDropApply!592 (List!18229 Int) Unit!30071)

(assert (=> b!1645988 (= lt!608068 (lemmaDropApply!592 lt!608065 0))))

(declare-fun head!3607 (List!18229) Token!5972)

(declare-fun drop!904 (List!18229 Int) List!18229)

(declare-fun apply!4758 (List!18229 Int) Token!5972)

(assert (=> b!1645988 (= (head!3607 (drop!904 lt!608065 0)) (apply!4758 lt!608065 0))))

(declare-fun lt!608066 () Unit!30071)

(assert (=> b!1645988 (= lt!608066 lt!608068)))

(declare-fun lt!608063 () List!18229)

(assert (=> b!1645988 (= lt!608063 (list!7206 lt!607811))))

(declare-fun lt!608064 () Unit!30071)

(declare-fun lemmaDropTail!572 (List!18229 Int) Unit!30071)

(assert (=> b!1645988 (= lt!608064 (lemmaDropTail!572 lt!608063 0))))

(declare-fun tail!2428 (List!18229) List!18229)

(assert (=> b!1645988 (= (tail!2428 (drop!904 lt!608063 0)) (drop!904 lt!608063 (+ 0 1)))))

(declare-fun lt!608067 () Unit!30071)

(assert (=> b!1645988 (= lt!608067 lt!608064)))

(assert (= (and d!495822 res!737525) b!1645986))

(assert (= (and d!495822 c!267663) b!1645987))

(assert (= (and d!495822 (not c!267663)) b!1645988))

(declare-fun m!1990769 () Bool)

(assert (=> d!495822 m!1990769))

(declare-fun m!1990771 () Bool)

(assert (=> d!495822 m!1990771))

(declare-fun m!1990773 () Bool)

(assert (=> d!495822 m!1990773))

(assert (=> d!495822 m!1990771))

(declare-fun m!1990775 () Bool)

(assert (=> d!495822 m!1990775))

(assert (=> d!495822 m!1990769))

(declare-fun m!1990777 () Bool)

(assert (=> d!495822 m!1990777))

(assert (=> b!1645986 m!1990777))

(declare-fun m!1990779 () Bool)

(assert (=> b!1645988 m!1990779))

(declare-fun m!1990781 () Bool)

(assert (=> b!1645988 m!1990781))

(declare-fun m!1990783 () Bool)

(assert (=> b!1645988 m!1990783))

(declare-fun m!1990785 () Bool)

(assert (=> b!1645988 m!1990785))

(declare-fun m!1990787 () Bool)

(assert (=> b!1645988 m!1990787))

(declare-fun m!1990789 () Bool)

(assert (=> b!1645988 m!1990789))

(assert (=> b!1645988 m!1990789))

(assert (=> b!1645988 m!1990783))

(declare-fun m!1990791 () Bool)

(assert (=> b!1645988 m!1990791))

(declare-fun m!1990793 () Bool)

(assert (=> b!1645988 m!1990793))

(declare-fun m!1990795 () Bool)

(assert (=> b!1645988 m!1990795))

(declare-fun m!1990797 () Bool)

(assert (=> b!1645988 m!1990797))

(assert (=> b!1645988 m!1990727))

(assert (=> b!1645988 m!1990787))

(declare-fun m!1990799 () Bool)

(assert (=> b!1645988 m!1990799))

(assert (=> b!1645988 m!1990781))

(declare-fun m!1990801 () Bool)

(assert (=> b!1645988 m!1990801))

(assert (=> b!1645988 m!1990791))

(assert (=> b!1645813 d!495822))

(declare-fun d!495826 () Bool)

(declare-fun c!267666 () Bool)

(assert (=> d!495826 (= c!267666 ((_ is Cons!18159) (Cons!18159 (h!23560 tokens!457) Nil!18159)))))

(declare-fun e!1055654 () List!18228)

(assert (=> d!495826 (= (printList!945 thiss!17113 (Cons!18159 (h!23560 tokens!457) Nil!18159)) e!1055654)))

(declare-fun b!1645993 () Bool)

(assert (=> b!1645993 (= e!1055654 (++!4894 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))) (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))))

(declare-fun b!1645994 () Bool)

(assert (=> b!1645994 (= e!1055654 Nil!18158)))

(assert (= (and d!495826 c!267666) b!1645993))

(assert (= (and d!495826 (not c!267666)) b!1645994))

(declare-fun m!1990803 () Bool)

(assert (=> b!1645993 m!1990803))

(assert (=> b!1645993 m!1990803))

(declare-fun m!1990805 () Bool)

(assert (=> b!1645993 m!1990805))

(declare-fun m!1990807 () Bool)

(assert (=> b!1645993 m!1990807))

(assert (=> b!1645993 m!1990805))

(assert (=> b!1645993 m!1990807))

(declare-fun m!1990809 () Bool)

(assert (=> b!1645993 m!1990809))

(assert (=> b!1645813 d!495826))

(declare-fun d!495828 () Bool)

(declare-fun e!1055657 () Bool)

(assert (=> d!495828 e!1055657))

(declare-fun res!737528 () Bool)

(assert (=> d!495828 (=> (not res!737528) (not e!1055657))))

(declare-fun lt!608072 () BalanceConc!12054)

(assert (=> d!495828 (= res!737528 (= (list!7206 lt!608072) (Cons!18159 (h!23560 tokens!457) Nil!18159)))))

(declare-fun singleton!720 (Token!5972) BalanceConc!12054)

(assert (=> d!495828 (= lt!608072 (singleton!720 (h!23560 tokens!457)))))

(assert (=> d!495828 (= (singletonSeq!1677 (h!23560 tokens!457)) lt!608072)))

(declare-fun b!1645997 () Bool)

(assert (=> b!1645997 (= e!1055657 (isBalanced!1846 (c!267637 lt!608072)))))

(assert (= (and d!495828 res!737528) b!1645997))

(declare-fun m!1990811 () Bool)

(assert (=> d!495828 m!1990811))

(declare-fun m!1990813 () Bool)

(assert (=> d!495828 m!1990813))

(declare-fun m!1990815 () Bool)

(assert (=> b!1645997 m!1990815))

(assert (=> b!1645813 d!495828))

(declare-fun d!495830 () Bool)

(declare-fun res!737533 () Bool)

(declare-fun e!1055660 () Bool)

(assert (=> d!495830 (=> (not res!737533) (not e!1055660))))

(assert (=> d!495830 (= res!737533 (not (isEmpty!11189 (originalCharacters!4017 (h!23560 tokens!457)))))))

(assert (=> d!495830 (= (inv!23519 (h!23560 tokens!457)) e!1055660)))

(declare-fun b!1646002 () Bool)

(declare-fun res!737534 () Bool)

(assert (=> b!1646002 (=> (not res!737534) (not e!1055660))))

(declare-fun dynLambda!8122 (Int TokenValue!3293) BalanceConc!12052)

(assert (=> b!1646002 (= res!737534 (= (originalCharacters!4017 (h!23560 tokens!457)) (list!7205 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))))

(declare-fun b!1646003 () Bool)

(assert (=> b!1646003 (= e!1055660 (= (size!14460 (h!23560 tokens!457)) (size!14466 (originalCharacters!4017 (h!23560 tokens!457)))))))

(assert (= (and d!495830 res!737533) b!1646002))

(assert (= (and b!1646002 res!737534) b!1646003))

(declare-fun b_lambda!51725 () Bool)

(assert (=> (not b_lambda!51725) (not b!1646002)))

(declare-fun t!150458 () Bool)

(declare-fun tb!94231 () Bool)

(assert (=> (and b!1645821 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) t!150458) tb!94231))

(declare-fun b!1646008 () Bool)

(declare-fun e!1055663 () Bool)

(declare-fun tp!476883 () Bool)

(declare-fun inv!23523 (Conc!6054) Bool)

(assert (=> b!1646008 (= e!1055663 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))) tp!476883))))

(declare-fun result!113814 () Bool)

(declare-fun inv!23524 (BalanceConc!12052) Bool)

(assert (=> tb!94231 (= result!113814 (and (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))) e!1055663))))

(assert (= tb!94231 b!1646008))

(declare-fun m!1990817 () Bool)

(assert (=> b!1646008 m!1990817))

(declare-fun m!1990819 () Bool)

(assert (=> tb!94231 m!1990819))

(assert (=> b!1646002 t!150458))

(declare-fun b_and!116821 () Bool)

(assert (= b_and!116815 (and (=> t!150458 result!113814) b_and!116821)))

(declare-fun tb!94233 () Bool)

(declare-fun t!150460 () Bool)

(assert (=> (and b!1645826 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) t!150460) tb!94233))

(declare-fun result!113818 () Bool)

(assert (= result!113818 result!113814))

(assert (=> b!1646002 t!150460))

(declare-fun b_and!116823 () Bool)

(assert (= b_and!116819 (and (=> t!150460 result!113818) b_and!116823)))

(declare-fun m!1990821 () Bool)

(assert (=> d!495830 m!1990821))

(declare-fun m!1990823 () Bool)

(assert (=> b!1646002 m!1990823))

(assert (=> b!1646002 m!1990823))

(declare-fun m!1990825 () Bool)

(assert (=> b!1646002 m!1990825))

(declare-fun m!1990827 () Bool)

(assert (=> b!1646003 m!1990827))

(assert (=> b!1645811 d!495830))

(declare-fun d!495832 () Bool)

(assert (=> d!495832 (= (inv!23516 (tag!3483 (rule!5057 (h!23560 tokens!457)))) (= (mod (str.len (value!100957 (tag!3483 (rule!5057 (h!23560 tokens!457))))) 2) 0))))

(assert (=> b!1645822 d!495832))

(declare-fun d!495834 () Bool)

(declare-fun res!737535 () Bool)

(declare-fun e!1055664 () Bool)

(assert (=> d!495834 (=> (not res!737535) (not e!1055664))))

(assert (=> d!495834 (= res!737535 (semiInverseModEq!1234 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))))))

(assert (=> d!495834 (= (inv!23520 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) e!1055664)))

(declare-fun b!1646009 () Bool)

(assert (=> b!1646009 (= e!1055664 (equivClasses!1175 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))))))

(assert (= (and d!495834 res!737535) b!1646009))

(declare-fun m!1990829 () Bool)

(assert (=> d!495834 m!1990829))

(declare-fun m!1990831 () Bool)

(assert (=> b!1646009 m!1990831))

(assert (=> b!1645822 d!495834))

(declare-fun d!495836 () Bool)

(declare-fun lt!608083 () Bool)

(declare-fun e!1055688 () Bool)

(assert (=> d!495836 (= lt!608083 e!1055688)))

(declare-fun res!737563 () Bool)

(assert (=> d!495836 (=> (not res!737563) (not e!1055688))))

(assert (=> d!495836 (= res!737563 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))))) (list!7206 (singletonSeq!1677 (h!23560 tokens!457)))))))

(declare-fun e!1055687 () Bool)

(assert (=> d!495836 (= lt!608083 e!1055687)))

(declare-fun res!737564 () Bool)

(assert (=> d!495836 (=> (not res!737564) (not e!1055687))))

(declare-fun lt!608084 () tuple2!17826)

(assert (=> d!495836 (= res!737564 (= (size!14465 (_1!10315 lt!608084)) 1))))

(assert (=> d!495836 (= lt!608084 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))))))

(assert (=> d!495836 (not (isEmpty!11181 rules!1846))))

(assert (=> d!495836 (= (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457)) lt!608083)))

(declare-fun b!1646042 () Bool)

(declare-fun res!737565 () Bool)

(assert (=> b!1646042 (=> (not res!737565) (not e!1055687))))

(assert (=> b!1646042 (= res!737565 (= (apply!4757 (_1!10315 lt!608084) 0) (h!23560 tokens!457)))))

(declare-fun b!1646043 () Bool)

(assert (=> b!1646043 (= e!1055687 (isEmpty!11190 (_2!10315 lt!608084)))))

(declare-fun b!1646044 () Bool)

(assert (=> b!1646044 (= e!1055688 (isEmpty!11190 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))))))))

(assert (= (and d!495836 res!737564) b!1646042))

(assert (= (and b!1646042 res!737565) b!1646043))

(assert (= (and d!495836 res!737563) b!1646044))

(assert (=> d!495836 m!1990363))

(declare-fun m!1990869 () Bool)

(assert (=> d!495836 m!1990869))

(declare-fun m!1990871 () Bool)

(assert (=> d!495836 m!1990871))

(declare-fun m!1990873 () Bool)

(assert (=> d!495836 m!1990873))

(assert (=> d!495836 m!1990363))

(declare-fun m!1990875 () Bool)

(assert (=> d!495836 m!1990875))

(declare-fun m!1990877 () Bool)

(assert (=> d!495836 m!1990877))

(assert (=> d!495836 m!1990349))

(assert (=> d!495836 m!1990363))

(assert (=> d!495836 m!1990875))

(declare-fun m!1990881 () Bool)

(assert (=> b!1646042 m!1990881))

(declare-fun m!1990885 () Bool)

(assert (=> b!1646043 m!1990885))

(assert (=> b!1646044 m!1990363))

(assert (=> b!1646044 m!1990363))

(assert (=> b!1646044 m!1990875))

(assert (=> b!1646044 m!1990875))

(assert (=> b!1646044 m!1990877))

(declare-fun m!1990893 () Bool)

(assert (=> b!1646044 m!1990893))

(assert (=> b!1645820 d!495836))

(declare-fun b!1646193 () Bool)

(declare-fun e!1055786 () Bool)

(assert (=> b!1646193 (= e!1055786 true)))

(declare-fun b!1646192 () Bool)

(declare-fun e!1055785 () Bool)

(assert (=> b!1646192 (= e!1055785 e!1055786)))

(declare-fun b!1646191 () Bool)

(declare-fun e!1055784 () Bool)

(assert (=> b!1646191 (= e!1055784 e!1055785)))

(declare-fun d!495850 () Bool)

(assert (=> d!495850 e!1055784))

(assert (= b!1646192 b!1646193))

(assert (= b!1646191 b!1646192))

(assert (= (and d!495850 ((_ is Cons!18160) rules!1846)) b!1646191))

(declare-fun order!10817 () Int)

(declare-fun order!10815 () Int)

(declare-fun lambda!67586 () Int)

(declare-fun dynLambda!8123 (Int Int) Int)

(declare-fun dynLambda!8124 (Int Int) Int)

(assert (=> b!1646193 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8124 order!10817 lambda!67586))))

(declare-fun order!10819 () Int)

(declare-fun dynLambda!8125 (Int Int) Int)

(assert (=> b!1646193 (< (dynLambda!8125 order!10819 (toChars!4505 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8124 order!10817 lambda!67586))))

(assert (=> d!495850 true))

(declare-fun lt!608159 () Bool)

(declare-fun forall!4136 (List!18229 Int) Bool)

(assert (=> d!495850 (= lt!608159 (forall!4136 tokens!457 lambda!67586))))

(declare-fun e!1055777 () Bool)

(assert (=> d!495850 (= lt!608159 e!1055777)))

(declare-fun res!737616 () Bool)

(assert (=> d!495850 (=> res!737616 e!1055777)))

(assert (=> d!495850 (= res!737616 (not ((_ is Cons!18159) tokens!457)))))

(assert (=> d!495850 (not (isEmpty!11181 rules!1846))))

(assert (=> d!495850 (= (rulesProduceEachTokenIndividuallyList!1034 thiss!17113 rules!1846 tokens!457) lt!608159)))

(declare-fun b!1646181 () Bool)

(declare-fun e!1055776 () Bool)

(assert (=> b!1646181 (= e!1055777 e!1055776)))

(declare-fun res!737617 () Bool)

(assert (=> b!1646181 (=> (not res!737617) (not e!1055776))))

(assert (=> b!1646181 (= res!737617 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457)))))

(declare-fun b!1646182 () Bool)

(assert (=> b!1646182 (= e!1055776 (rulesProduceEachTokenIndividuallyList!1034 thiss!17113 rules!1846 (t!150452 tokens!457)))))

(assert (= (and d!495850 (not res!737616)) b!1646181))

(assert (= (and b!1646181 res!737617) b!1646182))

(declare-fun m!1991071 () Bool)

(assert (=> d!495850 m!1991071))

(assert (=> d!495850 m!1990349))

(assert (=> b!1646181 m!1990319))

(declare-fun m!1991073 () Bool)

(assert (=> b!1646182 m!1991073))

(assert (=> b!1645810 d!495850))

(declare-fun d!495892 () Bool)

(declare-fun lt!608160 () BalanceConc!12052)

(assert (=> d!495892 (= (list!7205 lt!608160) (printList!945 thiss!17113 (list!7206 (seqFromList!2146 tokens!457))))))

(assert (=> d!495892 (= lt!608160 (printTailRec!883 thiss!17113 (seqFromList!2146 tokens!457) 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!495892 (= (print!1363 thiss!17113 (seqFromList!2146 tokens!457)) lt!608160)))

(declare-fun bs!396091 () Bool)

(assert (= bs!396091 d!495892))

(declare-fun m!1991075 () Bool)

(assert (=> bs!396091 m!1991075))

(assert (=> bs!396091 m!1990335))

(declare-fun m!1991077 () Bool)

(assert (=> bs!396091 m!1991077))

(assert (=> bs!396091 m!1991077))

(declare-fun m!1991079 () Bool)

(assert (=> bs!396091 m!1991079))

(assert (=> bs!396091 m!1990335))

(declare-fun m!1991081 () Bool)

(assert (=> bs!396091 m!1991081))

(assert (=> b!1645819 d!495892))

(declare-fun d!495894 () Bool)

(declare-fun e!1055792 () Bool)

(assert (=> d!495894 e!1055792))

(declare-fun res!737623 () Bool)

(assert (=> d!495894 (=> (not res!737623) (not e!1055792))))

(declare-fun lt!608163 () List!18228)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2517 (List!18228) (InoxSet C!9236))

(assert (=> d!495894 (= res!737623 (= (content!2517 lt!608163) ((_ map or) (content!2517 lt!607800) (content!2517 lt!607807))))))

(declare-fun e!1055791 () List!18228)

(assert (=> d!495894 (= lt!608163 e!1055791)))

(declare-fun c!267688 () Bool)

(assert (=> d!495894 (= c!267688 ((_ is Nil!18158) lt!607800))))

(assert (=> d!495894 (= (++!4894 lt!607800 lt!607807) lt!608163)))

(declare-fun b!1646204 () Bool)

(assert (=> b!1646204 (= e!1055791 lt!607807)))

(declare-fun b!1646205 () Bool)

(assert (=> b!1646205 (= e!1055791 (Cons!18158 (h!23559 lt!607800) (++!4894 (t!150451 lt!607800) lt!607807)))))

(declare-fun b!1646206 () Bool)

(declare-fun res!737622 () Bool)

(assert (=> b!1646206 (=> (not res!737622) (not e!1055792))))

(assert (=> b!1646206 (= res!737622 (= (size!14466 lt!608163) (+ (size!14466 lt!607800) (size!14466 lt!607807))))))

(declare-fun b!1646207 () Bool)

(assert (=> b!1646207 (= e!1055792 (or (not (= lt!607807 Nil!18158)) (= lt!608163 lt!607800)))))

(assert (= (and d!495894 c!267688) b!1646204))

(assert (= (and d!495894 (not c!267688)) b!1646205))

(assert (= (and d!495894 res!737623) b!1646206))

(assert (= (and b!1646206 res!737622) b!1646207))

(declare-fun m!1991083 () Bool)

(assert (=> d!495894 m!1991083))

(declare-fun m!1991085 () Bool)

(assert (=> d!495894 m!1991085))

(declare-fun m!1991087 () Bool)

(assert (=> d!495894 m!1991087))

(declare-fun m!1991089 () Bool)

(assert (=> b!1646205 m!1991089))

(declare-fun m!1991091 () Bool)

(assert (=> b!1646206 m!1991091))

(assert (=> b!1646206 m!1990717))

(declare-fun m!1991093 () Bool)

(assert (=> b!1646206 m!1991093))

(assert (=> b!1645819 d!495894))

(declare-fun b!1646208 () Bool)

(declare-fun res!737626 () Bool)

(declare-fun e!1055794 () Bool)

(assert (=> b!1646208 (=> (not res!737626) (not e!1055794))))

(declare-fun lt!608164 () tuple2!17826)

(assert (=> b!1646208 (= res!737626 (= (list!7206 (_1!10315 lt!608164)) (_1!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 lt!607803)))))))

(declare-fun b!1646209 () Bool)

(declare-fun e!1055795 () Bool)

(assert (=> b!1646209 (= e!1055795 (= (_2!10315 lt!608164) lt!607803))))

(declare-fun b!1646210 () Bool)

(assert (=> b!1646210 (= e!1055794 (= (list!7205 (_2!10315 lt!608164)) (_2!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 lt!607803)))))))

(declare-fun b!1646211 () Bool)

(declare-fun e!1055793 () Bool)

(assert (=> b!1646211 (= e!1055795 e!1055793)))

(declare-fun res!737625 () Bool)

(assert (=> b!1646211 (= res!737625 (< (size!14464 (_2!10315 lt!608164)) (size!14464 lt!607803)))))

(assert (=> b!1646211 (=> (not res!737625) (not e!1055793))))

(declare-fun b!1646212 () Bool)

(assert (=> b!1646212 (= e!1055793 (not (isEmpty!11180 (_1!10315 lt!608164))))))

(declare-fun d!495896 () Bool)

(assert (=> d!495896 e!1055794))

(declare-fun res!737624 () Bool)

(assert (=> d!495896 (=> (not res!737624) (not e!1055794))))

(assert (=> d!495896 (= res!737624 e!1055795)))

(declare-fun c!267689 () Bool)

(assert (=> d!495896 (= c!267689 (> (size!14465 (_1!10315 lt!608164)) 0))))

(assert (=> d!495896 (= lt!608164 (lexTailRecV2!586 thiss!17113 rules!1846 lt!607803 (BalanceConc!12053 Empty!6054) lt!607803 (BalanceConc!12055 Empty!6055)))))

(assert (=> d!495896 (= (lex!1316 thiss!17113 rules!1846 lt!607803) lt!608164)))

(assert (= (and d!495896 c!267689) b!1646211))

(assert (= (and d!495896 (not c!267689)) b!1646209))

(assert (= (and b!1646211 res!737625) b!1646212))

(assert (= (and d!495896 res!737624) b!1646208))

(assert (= (and b!1646208 res!737626) b!1646210))

(declare-fun m!1991095 () Bool)

(assert (=> b!1646211 m!1991095))

(declare-fun m!1991097 () Bool)

(assert (=> b!1646211 m!1991097))

(declare-fun m!1991099 () Bool)

(assert (=> b!1646208 m!1991099))

(assert (=> b!1646208 m!1990329))

(assert (=> b!1646208 m!1990329))

(declare-fun m!1991101 () Bool)

(assert (=> b!1646208 m!1991101))

(declare-fun m!1991103 () Bool)

(assert (=> d!495896 m!1991103))

(declare-fun m!1991105 () Bool)

(assert (=> d!495896 m!1991105))

(declare-fun m!1991107 () Bool)

(assert (=> b!1646210 m!1991107))

(assert (=> b!1646210 m!1990329))

(assert (=> b!1646210 m!1990329))

(assert (=> b!1646210 m!1991101))

(declare-fun m!1991109 () Bool)

(assert (=> b!1646212 m!1991109))

(assert (=> b!1645819 d!495896))

(declare-fun d!495898 () Bool)

(assert (=> d!495898 (= (list!7205 lt!607803) (list!7210 (c!267635 lt!607803)))))

(declare-fun bs!396092 () Bool)

(assert (= bs!396092 d!495898))

(declare-fun m!1991111 () Bool)

(assert (=> bs!396092 m!1991111))

(assert (=> b!1645819 d!495898))

(declare-fun d!495900 () Bool)

(declare-fun lt!608167 () BalanceConc!12052)

(assert (=> d!495900 (= (list!7205 lt!608167) (originalCharacters!4017 (h!23560 tokens!457)))))

(assert (=> d!495900 (= lt!608167 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))

(assert (=> d!495900 (= (charsOf!1852 (h!23560 tokens!457)) lt!608167)))

(declare-fun b_lambda!51735 () Bool)

(assert (=> (not b_lambda!51735) (not d!495900)))

(assert (=> d!495900 t!150458))

(declare-fun b_and!116841 () Bool)

(assert (= b_and!116821 (and (=> t!150458 result!113814) b_and!116841)))

(assert (=> d!495900 t!150460))

(declare-fun b_and!116843 () Bool)

(assert (= b_and!116823 (and (=> t!150460 result!113818) b_and!116843)))

(declare-fun m!1991113 () Bool)

(assert (=> d!495900 m!1991113))

(assert (=> d!495900 m!1990823))

(assert (=> b!1645819 d!495900))

(declare-fun d!495902 () Bool)

(assert (=> d!495902 (= (seqFromList!2146 (t!150452 tokens!457)) (fromListB!950 (t!150452 tokens!457)))))

(declare-fun bs!396093 () Bool)

(assert (= bs!396093 d!495902))

(declare-fun m!1991115 () Bool)

(assert (=> bs!396093 m!1991115))

(assert (=> b!1645819 d!495902))

(declare-fun d!495904 () Bool)

(assert (=> d!495904 (= (list!7205 lt!607812) (list!7210 (c!267635 lt!607812)))))

(declare-fun bs!396094 () Bool)

(assert (= bs!396094 d!495904))

(declare-fun m!1991117 () Bool)

(assert (=> bs!396094 m!1991117))

(assert (=> b!1645819 d!495904))

(declare-fun d!495906 () Bool)

(assert (=> d!495906 (= (list!7205 (charsOf!1852 (h!23560 tokens!457))) (list!7210 (c!267635 (charsOf!1852 (h!23560 tokens!457)))))))

(declare-fun bs!396095 () Bool)

(assert (= bs!396095 d!495906))

(declare-fun m!1991119 () Bool)

(assert (=> bs!396095 m!1991119))

(assert (=> b!1645819 d!495906))

(declare-fun d!495908 () Bool)

(assert (=> d!495908 (= (seqFromList!2146 tokens!457) (fromListB!950 tokens!457))))

(declare-fun bs!396096 () Bool)

(assert (= bs!396096 d!495908))

(declare-fun m!1991121 () Bool)

(assert (=> bs!396096 m!1991121))

(assert (=> b!1645819 d!495908))

(declare-fun d!495910 () Bool)

(declare-fun lt!608168 () BalanceConc!12052)

(assert (=> d!495910 (= (list!7205 lt!608168) (printList!945 thiss!17113 (list!7206 lt!607810)))))

(assert (=> d!495910 (= lt!608168 (printTailRec!883 thiss!17113 lt!607810 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!495910 (= (print!1363 thiss!17113 lt!607810) lt!608168)))

(declare-fun bs!396097 () Bool)

(assert (= bs!396097 d!495910))

(declare-fun m!1991123 () Bool)

(assert (=> bs!396097 m!1991123))

(assert (=> bs!396097 m!1990377))

(assert (=> bs!396097 m!1990377))

(declare-fun m!1991125 () Bool)

(assert (=> bs!396097 m!1991125))

(declare-fun m!1991127 () Bool)

(assert (=> bs!396097 m!1991127))

(assert (=> b!1645819 d!495910))

(declare-fun b!1646217 () Bool)

(declare-fun e!1055798 () Bool)

(declare-fun tp_is_empty!7349 () Bool)

(declare-fun tp!476939 () Bool)

(assert (=> b!1646217 (= e!1055798 (and tp_is_empty!7349 tp!476939))))

(assert (=> b!1645828 (= tp!476880 e!1055798)))

(assert (= (and b!1645828 ((_ is Cons!18158) (originalCharacters!4017 (h!23560 tokens!457)))) b!1646217))

(declare-fun b!1646231 () Bool)

(declare-fun b_free!44711 () Bool)

(declare-fun b_next!45415 () Bool)

(assert (=> b!1646231 (= b_free!44711 (not b_next!45415))))

(declare-fun tp!476954 () Bool)

(declare-fun b_and!116845 () Bool)

(assert (=> b!1646231 (= tp!476954 b_and!116845)))

(declare-fun b_free!44713 () Bool)

(declare-fun b_next!45417 () Bool)

(assert (=> b!1646231 (= b_free!44713 (not b_next!45417))))

(declare-fun t!150476 () Bool)

(declare-fun tb!94243 () Bool)

(assert (=> (and b!1646231 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) t!150476) tb!94243))

(declare-fun result!113842 () Bool)

(assert (= result!113842 result!113814))

(assert (=> b!1646002 t!150476))

(assert (=> d!495900 t!150476))

(declare-fun tp!476951 () Bool)

(declare-fun b_and!116847 () Bool)

(assert (=> b!1646231 (= tp!476951 (and (=> t!150476 result!113842) b_and!116847))))

(declare-fun e!1055812 () Bool)

(declare-fun tp!476952 () Bool)

(declare-fun b!1646228 () Bool)

(declare-fun e!1055814 () Bool)

(assert (=> b!1646228 (= e!1055812 (and (inv!23519 (h!23560 (t!150452 tokens!457))) e!1055814 tp!476952))))

(assert (=> b!1645811 (= tp!476878 e!1055812)))

(declare-fun e!1055813 () Bool)

(assert (=> b!1646231 (= e!1055813 (and tp!476954 tp!476951))))

(declare-fun e!1055816 () Bool)

(declare-fun tp!476953 () Bool)

(declare-fun b!1646230 () Bool)

(assert (=> b!1646230 (= e!1055816 (and tp!476953 (inv!23516 (tag!3483 (rule!5057 (h!23560 (t!150452 tokens!457))))) (inv!23520 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) e!1055813))))

(declare-fun b!1646229 () Bool)

(declare-fun tp!476950 () Bool)

(assert (=> b!1646229 (= e!1055814 (and (inv!21 (value!100958 (h!23560 (t!150452 tokens!457)))) e!1055816 tp!476950))))

(assert (= b!1646230 b!1646231))

(assert (= b!1646229 b!1646230))

(assert (= b!1646228 b!1646229))

(assert (= (and b!1645811 ((_ is Cons!18159) (t!150452 tokens!457))) b!1646228))

(declare-fun m!1991129 () Bool)

(assert (=> b!1646228 m!1991129))

(declare-fun m!1991131 () Bool)

(assert (=> b!1646230 m!1991131))

(declare-fun m!1991133 () Bool)

(assert (=> b!1646230 m!1991133))

(declare-fun m!1991135 () Bool)

(assert (=> b!1646229 m!1991135))

(declare-fun b!1646242 () Bool)

(declare-fun b_free!44715 () Bool)

(declare-fun b_next!45419 () Bool)

(assert (=> b!1646242 (= b_free!44715 (not b_next!45419))))

(declare-fun tp!476964 () Bool)

(declare-fun b_and!116849 () Bool)

(assert (=> b!1646242 (= tp!476964 b_and!116849)))

(declare-fun b_free!44717 () Bool)

(declare-fun b_next!45421 () Bool)

(assert (=> b!1646242 (= b_free!44717 (not b_next!45421))))

(declare-fun tb!94245 () Bool)

(declare-fun t!150478 () Bool)

(assert (=> (and b!1646242 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) t!150478) tb!94245))

(declare-fun result!113846 () Bool)

(assert (= result!113846 result!113814))

(assert (=> b!1646002 t!150478))

(assert (=> d!495900 t!150478))

(declare-fun b_and!116851 () Bool)

(declare-fun tp!476966 () Bool)

(assert (=> b!1646242 (= tp!476966 (and (=> t!150478 result!113846) b_and!116851))))

(declare-fun e!1055826 () Bool)

(assert (=> b!1646242 (= e!1055826 (and tp!476964 tp!476966))))

(declare-fun b!1646241 () Bool)

(declare-fun tp!476963 () Bool)

(declare-fun e!1055827 () Bool)

(assert (=> b!1646241 (= e!1055827 (and tp!476963 (inv!23516 (tag!3483 (h!23561 (t!150453 rules!1846)))) (inv!23520 (transformation!3203 (h!23561 (t!150453 rules!1846)))) e!1055826))))

(declare-fun b!1646240 () Bool)

(declare-fun e!1055828 () Bool)

(declare-fun tp!476965 () Bool)

(assert (=> b!1646240 (= e!1055828 (and e!1055827 tp!476965))))

(assert (=> b!1645816 (= tp!476874 e!1055828)))

(assert (= b!1646241 b!1646242))

(assert (= b!1646240 b!1646241))

(assert (= (and b!1645816 ((_ is Cons!18160) (t!150453 rules!1846))) b!1646240))

(declare-fun m!1991137 () Bool)

(assert (=> b!1646241 m!1991137))

(declare-fun m!1991139 () Bool)

(assert (=> b!1646241 m!1991139))

(declare-fun b!1646253 () Bool)

(declare-fun e!1055831 () Bool)

(assert (=> b!1646253 (= e!1055831 tp_is_empty!7349)))

(declare-fun b!1646256 () Bool)

(declare-fun tp!476980 () Bool)

(declare-fun tp!476981 () Bool)

(assert (=> b!1646256 (= e!1055831 (and tp!476980 tp!476981))))

(assert (=> b!1645822 (= tp!476873 e!1055831)))

(declare-fun b!1646254 () Bool)

(declare-fun tp!476979 () Bool)

(declare-fun tp!476977 () Bool)

(assert (=> b!1646254 (= e!1055831 (and tp!476979 tp!476977))))

(declare-fun b!1646255 () Bool)

(declare-fun tp!476978 () Bool)

(assert (=> b!1646255 (= e!1055831 tp!476978)))

(assert (= (and b!1645822 ((_ is ElementMatch!4531) (regex!3203 (rule!5057 (h!23560 tokens!457))))) b!1646253))

(assert (= (and b!1645822 ((_ is Concat!7825) (regex!3203 (rule!5057 (h!23560 tokens!457))))) b!1646254))

(assert (= (and b!1645822 ((_ is Star!4531) (regex!3203 (rule!5057 (h!23560 tokens!457))))) b!1646255))

(assert (= (and b!1645822 ((_ is Union!4531) (regex!3203 (rule!5057 (h!23560 tokens!457))))) b!1646256))

(declare-fun b!1646257 () Bool)

(declare-fun e!1055832 () Bool)

(assert (=> b!1646257 (= e!1055832 tp_is_empty!7349)))

(declare-fun b!1646260 () Bool)

(declare-fun tp!476985 () Bool)

(declare-fun tp!476986 () Bool)

(assert (=> b!1646260 (= e!1055832 (and tp!476985 tp!476986))))

(assert (=> b!1645815 (= tp!476875 e!1055832)))

(declare-fun b!1646258 () Bool)

(declare-fun tp!476984 () Bool)

(declare-fun tp!476982 () Bool)

(assert (=> b!1646258 (= e!1055832 (and tp!476984 tp!476982))))

(declare-fun b!1646259 () Bool)

(declare-fun tp!476983 () Bool)

(assert (=> b!1646259 (= e!1055832 tp!476983)))

(assert (= (and b!1645815 ((_ is ElementMatch!4531) (regex!3203 (h!23561 rules!1846)))) b!1646257))

(assert (= (and b!1645815 ((_ is Concat!7825) (regex!3203 (h!23561 rules!1846)))) b!1646258))

(assert (= (and b!1645815 ((_ is Star!4531) (regex!3203 (h!23561 rules!1846)))) b!1646259))

(assert (= (and b!1645815 ((_ is Union!4531) (regex!3203 (h!23561 rules!1846)))) b!1646260))

(declare-fun b_lambda!51737 () Bool)

(assert (= b_lambda!51725 (or (and b!1645821 b_free!44697) (and b!1645826 b_free!44701 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))))) (and b!1646231 b_free!44713 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))))) (and b!1646242 b_free!44717 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))))) b_lambda!51737)))

(declare-fun b_lambda!51739 () Bool)

(assert (= b_lambda!51735 (or (and b!1645821 b_free!44697) (and b!1645826 b_free!44701 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))))) (and b!1646231 b_free!44713 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))))) (and b!1646242 b_free!44717 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))))) b_lambda!51739)))

(check-sat (not d!495830) (not b!1645958) (not b!1646042) (not b!1645936) (not b_lambda!51737) (not d!495768) (not b!1646043) (not b!1645849) (not d!495904) (not b!1645912) (not b!1646259) (not b!1645986) (not d!495828) (not d!495796) (not b!1645842) (not d!495814) (not b!1646208) (not b!1646260) (not b!1646230) b_and!116817 (not b_next!45415) (not d!495786) (not b!1645924) (not b_next!45399) (not d!495816) (not d!495898) (not b!1645960) (not b_next!45419) (not b!1646217) (not b!1646256) (not d!495810) (not b!1645963) (not b!1645925) (not b!1646254) (not b!1645956) (not b!1645997) b_and!116845 (not d!495836) b_and!116813 (not b!1645911) (not b!1646212) (not tb!94231) (not d!495850) (not b!1645843) (not b!1645875) b_and!116841 (not d!495798) (not d!495772) (not b!1646211) (not b_next!45417) (not b!1645961) (not b!1645846) (not d!495902) (not b!1646210) (not b!1646205) b_and!116851 (not b!1646206) (not b!1646258) (not b!1645870) (not b!1645908) (not b!1646229) (not b!1645957) (not d!495790) (not d!495910) (not d!495776) (not d!495770) (not b!1646255) (not b!1646228) (not d!495896) (not b!1645962) (not b!1645867) b_and!116843 (not bm!105784) (not d!495782) (not b!1646002) (not b!1645937) (not b!1646003) (not b_next!45403) (not b!1646182) (not b_next!45401) (not b!1646008) (not b!1646240) b_and!116849 (not d!495818) (not d!495892) (not d!495900) (not b!1645959) (not d!495806) (not d!495908) (not d!495894) (not b!1645993) (not d!495822) tp_is_empty!7349 (not b_next!45421) (not b!1646181) (not b!1645988) (not d!495820) (not b!1645935) (not b!1646009) (not d!495784) (not b_lambda!51739) (not b!1645910) (not b!1646191) (not b!1646241) (not b!1646044) (not d!495808) (not d!495906) b_and!116847 (not b_next!45405) (not b!1645876) (not d!495834))
(check-sat b_and!116845 b_and!116813 b_and!116841 (not b_next!45417) b_and!116851 b_and!116843 (not b_next!45403) (not b_next!45401) b_and!116849 (not b_next!45421) b_and!116817 (not b_next!45415) (not b_next!45399) (not b_next!45419) b_and!116847 (not b_next!45405))
(get-model)

(declare-fun d!495982 () Bool)

(declare-fun res!737707 () Bool)

(declare-fun e!1055923 () Bool)

(assert (=> d!495982 (=> (not res!737707) (not e!1055923))))

(assert (=> d!495982 (= res!737707 (not (isEmpty!11189 (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!495982 (= (inv!23519 (h!23560 (t!150452 tokens!457))) e!1055923)))

(declare-fun b!1646429 () Bool)

(declare-fun res!737708 () Bool)

(assert (=> b!1646429 (=> (not res!737708) (not e!1055923))))

(assert (=> b!1646429 (= res!737708 (= (originalCharacters!4017 (h!23560 (t!150452 tokens!457))) (list!7205 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (value!100958 (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1646430 () Bool)

(assert (=> b!1646430 (= e!1055923 (= (size!14460 (h!23560 (t!150452 tokens!457))) (size!14466 (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))))))

(assert (= (and d!495982 res!737707) b!1646429))

(assert (= (and b!1646429 res!737708) b!1646430))

(declare-fun b_lambda!51747 () Bool)

(assert (=> (not b_lambda!51747) (not b!1646429)))

(declare-fun t!150501 () Bool)

(declare-fun tb!94263 () Bool)

(assert (=> (and b!1645821 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) t!150501) tb!94263))

(declare-fun b!1646431 () Bool)

(declare-fun e!1055924 () Bool)

(declare-fun tp!476989 () Bool)

(assert (=> b!1646431 (= e!1055924 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (value!100958 (h!23560 (t!150452 tokens!457)))))) tp!476989))))

(declare-fun result!113866 () Bool)

(assert (=> tb!94263 (= result!113866 (and (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (value!100958 (h!23560 (t!150452 tokens!457))))) e!1055924))))

(assert (= tb!94263 b!1646431))

(declare-fun m!1991357 () Bool)

(assert (=> b!1646431 m!1991357))

(declare-fun m!1991359 () Bool)

(assert (=> tb!94263 m!1991359))

(assert (=> b!1646429 t!150501))

(declare-fun b_and!116869 () Bool)

(assert (= b_and!116841 (and (=> t!150501 result!113866) b_and!116869)))

(declare-fun tb!94265 () Bool)

(declare-fun t!150503 () Bool)

(assert (=> (and b!1645826 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) t!150503) tb!94265))

(declare-fun result!113868 () Bool)

(assert (= result!113868 result!113866))

(assert (=> b!1646429 t!150503))

(declare-fun b_and!116871 () Bool)

(assert (= b_and!116843 (and (=> t!150503 result!113868) b_and!116871)))

(declare-fun t!150505 () Bool)

(declare-fun tb!94267 () Bool)

(assert (=> (and b!1646231 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) t!150505) tb!94267))

(declare-fun result!113870 () Bool)

(assert (= result!113870 result!113866))

(assert (=> b!1646429 t!150505))

(declare-fun b_and!116873 () Bool)

(assert (= b_and!116847 (and (=> t!150505 result!113870) b_and!116873)))

(declare-fun t!150507 () Bool)

(declare-fun tb!94269 () Bool)

(assert (=> (and b!1646242 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) t!150507) tb!94269))

(declare-fun result!113872 () Bool)

(assert (= result!113872 result!113866))

(assert (=> b!1646429 t!150507))

(declare-fun b_and!116875 () Bool)

(assert (= b_and!116851 (and (=> t!150507 result!113872) b_and!116875)))

(declare-fun m!1991361 () Bool)

(assert (=> d!495982 m!1991361))

(declare-fun m!1991363 () Bool)

(assert (=> b!1646429 m!1991363))

(assert (=> b!1646429 m!1991363))

(declare-fun m!1991365 () Bool)

(assert (=> b!1646429 m!1991365))

(declare-fun m!1991367 () Bool)

(assert (=> b!1646430 m!1991367))

(assert (=> b!1646228 d!495982))

(declare-fun d!495984 () Bool)

(assert (=> d!495984 true))

(declare-fun order!10821 () Int)

(declare-fun lambda!67589 () Int)

(declare-fun dynLambda!8127 (Int Int) Int)

(assert (=> d!495984 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) (dynLambda!8127 order!10821 lambda!67589))))

(declare-fun Forall2!522 (Int) Bool)

(assert (=> d!495984 (= (equivClasses!1175 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) (Forall2!522 lambda!67589))))

(declare-fun bs!396109 () Bool)

(assert (= bs!396109 d!495984))

(declare-fun m!1991369 () Bool)

(assert (=> bs!396109 m!1991369))

(assert (=> b!1646009 d!495984))

(assert (=> d!495770 d!495772))

(assert (=> d!495770 d!495776))

(declare-fun d!495986 () Bool)

(assert (=> d!495986 (= (list!7206 (seqFromList!2146 ($colon$colon!360 (t!150452 (t!150452 tokens!457)) (h!23560 (t!150452 tokens!457))))) (list!7209 (c!267637 (seqFromList!2146 ($colon$colon!360 (t!150452 (t!150452 tokens!457)) (h!23560 (t!150452 tokens!457)))))))))

(declare-fun bs!396110 () Bool)

(assert (= bs!396110 d!495986))

(declare-fun m!1991371 () Bool)

(assert (=> bs!396110 m!1991371))

(assert (=> d!495770 d!495986))

(assert (=> d!495770 d!495782))

(declare-fun d!495988 () Bool)

(assert (=> d!495988 (= ($colon$colon!360 (t!150452 (t!150452 tokens!457)) (h!23560 (t!150452 tokens!457))) (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))))

(assert (=> d!495770 d!495988))

(assert (=> d!495770 d!495808))

(declare-fun d!495990 () Bool)

(assert (=> d!495990 (= (seqFromList!2146 ($colon$colon!360 (t!150452 (t!150452 tokens!457)) (h!23560 (t!150452 tokens!457)))) (fromListB!950 ($colon$colon!360 (t!150452 (t!150452 tokens!457)) (h!23560 (t!150452 tokens!457)))))))

(declare-fun bs!396111 () Bool)

(assert (= bs!396111 d!495990))

(assert (=> bs!396111 m!1990435))

(declare-fun m!1991373 () Bool)

(assert (=> bs!396111 m!1991373))

(assert (=> d!495770 d!495990))

(declare-fun d!495992 () Bool)

(assert (=> d!495992 (= (list!7206 (_1!10315 lt!607804)) (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!495992 true))

(declare-fun _$1!10043 () Unit!30071)

(assert (=> d!495992 (= (choose!9878 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)) (_1!10315 lt!607804)) _$1!10043)))

(declare-fun bs!396112 () Bool)

(assert (= bs!396112 d!495992))

(assert (=> bs!396112 m!1990369))

(assert (=> bs!396112 m!1990381))

(assert (=> bs!396112 m!1990381))

(assert (=> bs!396112 m!1990383))

(assert (=> bs!396112 m!1990383))

(assert (=> bs!396112 m!1990385))

(assert (=> d!495770 d!495992))

(declare-fun d!495994 () Bool)

(declare-fun lt!608207 () Int)

(declare-fun size!14468 (List!18229) Int)

(assert (=> d!495994 (= lt!608207 (size!14468 (list!7206 (_1!10315 lt!608164))))))

(declare-fun size!14469 (Conc!6055) Int)

(assert (=> d!495994 (= lt!608207 (size!14469 (c!267637 (_1!10315 lt!608164))))))

(assert (=> d!495994 (= (size!14465 (_1!10315 lt!608164)) lt!608207)))

(declare-fun bs!396113 () Bool)

(assert (= bs!396113 d!495994))

(assert (=> bs!396113 m!1991099))

(assert (=> bs!396113 m!1991099))

(declare-fun m!1991375 () Bool)

(assert (=> bs!396113 m!1991375))

(declare-fun m!1991377 () Bool)

(assert (=> bs!396113 m!1991377))

(assert (=> d!495896 d!495994))

(declare-fun b!1646484 () Bool)

(declare-fun e!1055952 () tuple2!17826)

(declare-fun lt!608354 () BalanceConc!12052)

(assert (=> b!1646484 (= e!1055952 (tuple2!17827 (BalanceConc!12055 Empty!6055) lt!608354))))

(declare-datatypes ((tuple2!17832 0))(
  ( (tuple2!17833 (_1!10318 Token!5972) (_2!10318 BalanceConc!12052)) )
))
(declare-datatypes ((Option!3439 0))(
  ( (None!3438) (Some!3438 (v!24589 tuple2!17832)) )
))
(declare-fun lt!608377 () Option!3439)

(declare-fun b!1646485 () Bool)

(declare-fun lt!608372 () tuple2!17826)

(declare-fun lexRec!372 (LexerInterface!2832 List!18230 BalanceConc!12052) tuple2!17826)

(assert (=> b!1646485 (= lt!608372 (lexRec!372 thiss!17113 rules!1846 (_2!10318 (v!24589 lt!608377))))))

(assert (=> b!1646485 (= e!1055952 (tuple2!17827 (prepend!759 (_1!10315 lt!608372) (_1!10318 (v!24589 lt!608377))) (_2!10315 lt!608372)))))

(declare-fun d!495996 () Bool)

(declare-fun e!1055954 () Bool)

(assert (=> d!495996 e!1055954))

(declare-fun res!737736 () Bool)

(assert (=> d!495996 (=> (not res!737736) (not e!1055954))))

(declare-fun lt!608356 () tuple2!17826)

(assert (=> d!495996 (= res!737736 (= (list!7206 (_1!10315 lt!608356)) (list!7206 (_1!10315 (lexRec!372 thiss!17113 rules!1846 lt!607803)))))))

(declare-fun e!1055951 () tuple2!17826)

(assert (=> d!495996 (= lt!608356 e!1055951)))

(declare-fun c!267749 () Bool)

(declare-fun lt!608352 () Option!3439)

(assert (=> d!495996 (= c!267749 ((_ is Some!3438) lt!608352))))

(declare-fun maxPrefixZipperSequenceV2!267 (LexerInterface!2832 List!18230 BalanceConc!12052 BalanceConc!12052) Option!3439)

(assert (=> d!495996 (= lt!608352 (maxPrefixZipperSequenceV2!267 thiss!17113 rules!1846 lt!607803 lt!607803))))

(declare-fun lt!608368 () Unit!30071)

(declare-fun lt!608365 () Unit!30071)

(assert (=> d!495996 (= lt!608368 lt!608365)))

(declare-fun lt!608344 () List!18228)

(declare-fun lt!608359 () List!18228)

(declare-fun isSuffix!418 (List!18228 List!18228) Bool)

(assert (=> d!495996 (isSuffix!418 lt!608344 (++!4894 lt!608359 lt!608344))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!319 (List!18228 List!18228) Unit!30071)

(assert (=> d!495996 (= lt!608365 (lemmaConcatTwoListThenFSndIsSuffix!319 lt!608359 lt!608344))))

(assert (=> d!495996 (= lt!608344 (list!7205 lt!607803))))

(assert (=> d!495996 (= lt!608359 (list!7205 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!495996 (= (lexTailRecV2!586 thiss!17113 rules!1846 lt!607803 (BalanceConc!12053 Empty!6054) lt!607803 (BalanceConc!12055 Empty!6055)) lt!608356)))

(declare-fun b!1646486 () Bool)

(declare-fun e!1055953 () tuple2!17826)

(assert (=> b!1646486 (= e!1055953 (tuple2!17827 (BalanceConc!12055 Empty!6055) lt!607803))))

(declare-fun b!1646487 () Bool)

(assert (=> b!1646487 (= e!1055954 (= (list!7205 (_2!10315 lt!608356)) (list!7205 (_2!10315 (lexRec!372 thiss!17113 rules!1846 lt!607803)))))))

(declare-fun b!1646488 () Bool)

(declare-fun lt!608363 () BalanceConc!12052)

(declare-fun append!555 (BalanceConc!12054 Token!5972) BalanceConc!12054)

(assert (=> b!1646488 (= e!1055951 (lexTailRecV2!586 thiss!17113 rules!1846 lt!607803 lt!608363 (_2!10318 (v!24589 lt!608352)) (append!555 (BalanceConc!12055 Empty!6055) (_1!10318 (v!24589 lt!608352)))))))

(declare-fun lt!608375 () tuple2!17826)

(assert (=> b!1646488 (= lt!608375 (lexRec!372 thiss!17113 rules!1846 (_2!10318 (v!24589 lt!608352))))))

(declare-fun lt!608355 () List!18228)

(assert (=> b!1646488 (= lt!608355 (list!7205 (BalanceConc!12053 Empty!6054)))))

(declare-fun lt!608376 () List!18228)

(assert (=> b!1646488 (= lt!608376 (list!7205 (charsOf!1852 (_1!10318 (v!24589 lt!608352)))))))

(declare-fun lt!608349 () List!18228)

(assert (=> b!1646488 (= lt!608349 (list!7205 (_2!10318 (v!24589 lt!608352))))))

(declare-fun lt!608353 () Unit!30071)

(declare-fun lemmaConcatAssociativity!1020 (List!18228 List!18228 List!18228) Unit!30071)

(assert (=> b!1646488 (= lt!608353 (lemmaConcatAssociativity!1020 lt!608355 lt!608376 lt!608349))))

(assert (=> b!1646488 (= (++!4894 (++!4894 lt!608355 lt!608376) lt!608349) (++!4894 lt!608355 (++!4894 lt!608376 lt!608349)))))

(declare-fun lt!608360 () Unit!30071)

(assert (=> b!1646488 (= lt!608360 lt!608353)))

(declare-fun lt!608357 () Option!3439)

(declare-fun maxPrefixZipperSequence!714 (LexerInterface!2832 List!18230 BalanceConc!12052) Option!3439)

(assert (=> b!1646488 (= lt!608357 (maxPrefixZipperSequence!714 thiss!17113 rules!1846 lt!607803))))

(declare-fun c!267750 () Bool)

(assert (=> b!1646488 (= c!267750 ((_ is Some!3438) lt!608357))))

(assert (=> b!1646488 (= (lexRec!372 thiss!17113 rules!1846 lt!607803) e!1055953)))

(declare-fun lt!608347 () Unit!30071)

(declare-fun Unit!30107 () Unit!30071)

(assert (=> b!1646488 (= lt!608347 Unit!30107)))

(declare-fun lt!608348 () List!18229)

(assert (=> b!1646488 (= lt!608348 (list!7206 (BalanceConc!12055 Empty!6055)))))

(declare-fun lt!608351 () List!18229)

(assert (=> b!1646488 (= lt!608351 (Cons!18159 (_1!10318 (v!24589 lt!608352)) Nil!18159))))

(declare-fun lt!608345 () List!18229)

(assert (=> b!1646488 (= lt!608345 (list!7206 (_1!10315 lt!608375)))))

(declare-fun lt!608371 () Unit!30071)

(declare-fun lemmaConcatAssociativity!1021 (List!18229 List!18229 List!18229) Unit!30071)

(assert (=> b!1646488 (= lt!608371 (lemmaConcatAssociativity!1021 lt!608348 lt!608351 lt!608345))))

(declare-fun ++!4899 (List!18229 List!18229) List!18229)

(assert (=> b!1646488 (= (++!4899 (++!4899 lt!608348 lt!608351) lt!608345) (++!4899 lt!608348 (++!4899 lt!608351 lt!608345)))))

(declare-fun lt!608374 () Unit!30071)

(assert (=> b!1646488 (= lt!608374 lt!608371)))

(declare-fun lt!608367 () List!18228)

(assert (=> b!1646488 (= lt!608367 (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) (list!7205 (charsOf!1852 (_1!10318 (v!24589 lt!608352))))))))

(declare-fun lt!608364 () List!18228)

(assert (=> b!1646488 (= lt!608364 (list!7205 (_2!10318 (v!24589 lt!608352))))))

(declare-fun lt!608366 () List!18229)

(assert (=> b!1646488 (= lt!608366 (list!7206 (append!555 (BalanceConc!12055 Empty!6055) (_1!10318 (v!24589 lt!608352)))))))

(declare-fun lt!608370 () Unit!30071)

(declare-fun lemmaLexThenLexPrefix!260 (LexerInterface!2832 List!18230 List!18228 List!18228 List!18229 List!18229 List!18228) Unit!30071)

(assert (=> b!1646488 (= lt!608370 (lemmaLexThenLexPrefix!260 thiss!17113 rules!1846 lt!608367 lt!608364 lt!608366 (list!7206 (_1!10315 lt!608375)) (list!7205 (_2!10315 lt!608375))))))

(assert (=> b!1646488 (= (lexList!863 thiss!17113 rules!1846 lt!608367) (tuple2!17831 lt!608366 Nil!18158))))

(declare-fun lt!608358 () Unit!30071)

(assert (=> b!1646488 (= lt!608358 lt!608370)))

(assert (=> b!1646488 (= lt!608354 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (_1!10318 (v!24589 lt!608352)))))))

(assert (=> b!1646488 (= lt!608377 (maxPrefixZipperSequence!714 thiss!17113 rules!1846 lt!608354))))

(declare-fun c!267748 () Bool)

(assert (=> b!1646488 (= c!267748 ((_ is Some!3438) lt!608377))))

(assert (=> b!1646488 (= (lexRec!372 thiss!17113 rules!1846 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (_1!10318 (v!24589 lt!608352))))) e!1055952)))

(declare-fun lt!608346 () Unit!30071)

(declare-fun Unit!30108 () Unit!30071)

(assert (=> b!1646488 (= lt!608346 Unit!30108)))

(assert (=> b!1646488 (= lt!608363 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (_1!10318 (v!24589 lt!608352)))))))

(declare-fun lt!608369 () List!18228)

(assert (=> b!1646488 (= lt!608369 (list!7205 lt!608363))))

(declare-fun lt!608362 () List!18228)

(assert (=> b!1646488 (= lt!608362 (list!7205 (_2!10318 (v!24589 lt!608352))))))

(declare-fun lt!608350 () Unit!30071)

(assert (=> b!1646488 (= lt!608350 (lemmaConcatTwoListThenFSndIsSuffix!319 lt!608369 lt!608362))))

(assert (=> b!1646488 (isSuffix!418 lt!608362 (++!4894 lt!608369 lt!608362))))

(declare-fun lt!608361 () Unit!30071)

(assert (=> b!1646488 (= lt!608361 lt!608350)))

(declare-fun b!1646489 () Bool)

(declare-fun lt!608373 () tuple2!17826)

(assert (=> b!1646489 (= lt!608373 (lexRec!372 thiss!17113 rules!1846 (_2!10318 (v!24589 lt!608357))))))

(assert (=> b!1646489 (= e!1055953 (tuple2!17827 (prepend!759 (_1!10315 lt!608373) (_1!10318 (v!24589 lt!608357))) (_2!10315 lt!608373)))))

(declare-fun b!1646490 () Bool)

(assert (=> b!1646490 (= e!1055951 (tuple2!17827 (BalanceConc!12055 Empty!6055) lt!607803))))

(assert (= (and d!495996 c!267749) b!1646488))

(assert (= (and d!495996 (not c!267749)) b!1646490))

(assert (= (and b!1646488 c!267750) b!1646489))

(assert (= (and b!1646488 (not c!267750)) b!1646486))

(assert (= (and b!1646488 c!267748) b!1646485))

(assert (= (and b!1646488 (not c!267748)) b!1646484))

(assert (= (and d!495996 res!737736) b!1646487))

(declare-fun m!1991517 () Bool)

(assert (=> d!495996 m!1991517))

(declare-fun m!1991519 () Bool)

(assert (=> d!495996 m!1991519))

(declare-fun m!1991521 () Bool)

(assert (=> d!495996 m!1991521))

(assert (=> d!495996 m!1991517))

(declare-fun m!1991523 () Bool)

(assert (=> d!495996 m!1991523))

(assert (=> d!495996 m!1990771))

(declare-fun m!1991525 () Bool)

(assert (=> d!495996 m!1991525))

(assert (=> d!495996 m!1990329))

(declare-fun m!1991527 () Bool)

(assert (=> d!495996 m!1991527))

(declare-fun m!1991529 () Bool)

(assert (=> d!495996 m!1991529))

(declare-fun m!1991531 () Bool)

(assert (=> b!1646488 m!1991531))

(declare-fun m!1991533 () Bool)

(assert (=> b!1646488 m!1991533))

(declare-fun m!1991535 () Bool)

(assert (=> b!1646488 m!1991535))

(declare-fun m!1991537 () Bool)

(assert (=> b!1646488 m!1991537))

(declare-fun m!1991539 () Bool)

(assert (=> b!1646488 m!1991539))

(declare-fun m!1991541 () Bool)

(assert (=> b!1646488 m!1991541))

(declare-fun m!1991543 () Bool)

(assert (=> b!1646488 m!1991543))

(declare-fun m!1991545 () Bool)

(assert (=> b!1646488 m!1991545))

(declare-fun m!1991547 () Bool)

(assert (=> b!1646488 m!1991547))

(declare-fun m!1991549 () Bool)

(assert (=> b!1646488 m!1991549))

(assert (=> b!1646488 m!1991531))

(declare-fun m!1991551 () Bool)

(assert (=> b!1646488 m!1991551))

(assert (=> b!1646488 m!1991539))

(declare-fun m!1991553 () Bool)

(assert (=> b!1646488 m!1991553))

(assert (=> b!1646488 m!1991549))

(declare-fun m!1991555 () Bool)

(assert (=> b!1646488 m!1991555))

(assert (=> b!1646488 m!1991545))

(declare-fun m!1991557 () Bool)

(assert (=> b!1646488 m!1991557))

(declare-fun m!1991559 () Bool)

(assert (=> b!1646488 m!1991559))

(declare-fun m!1991561 () Bool)

(assert (=> b!1646488 m!1991561))

(declare-fun m!1991563 () Bool)

(assert (=> b!1646488 m!1991563))

(declare-fun m!1991565 () Bool)

(assert (=> b!1646488 m!1991565))

(assert (=> b!1646488 m!1991559))

(declare-fun m!1991567 () Bool)

(assert (=> b!1646488 m!1991567))

(declare-fun m!1991569 () Bool)

(assert (=> b!1646488 m!1991569))

(declare-fun m!1991571 () Bool)

(assert (=> b!1646488 m!1991571))

(declare-fun m!1991573 () Bool)

(assert (=> b!1646488 m!1991573))

(declare-fun m!1991575 () Bool)

(assert (=> b!1646488 m!1991575))

(assert (=> b!1646488 m!1991533))

(declare-fun m!1991577 () Bool)

(assert (=> b!1646488 m!1991577))

(declare-fun m!1991579 () Bool)

(assert (=> b!1646488 m!1991579))

(declare-fun m!1991581 () Bool)

(assert (=> b!1646488 m!1991581))

(assert (=> b!1646488 m!1990771))

(assert (=> b!1646488 m!1991535))

(declare-fun m!1991583 () Bool)

(assert (=> b!1646488 m!1991583))

(assert (=> b!1646488 m!1990771))

(declare-fun m!1991585 () Bool)

(assert (=> b!1646488 m!1991585))

(assert (=> b!1646488 m!1991533))

(declare-fun m!1991587 () Bool)

(assert (=> b!1646488 m!1991587))

(assert (=> b!1646488 m!1991525))

(assert (=> b!1646488 m!1991563))

(assert (=> b!1646488 m!1991545))

(declare-fun m!1991589 () Bool)

(assert (=> b!1646488 m!1991589))

(assert (=> b!1646488 m!1991577))

(assert (=> b!1646488 m!1991579))

(assert (=> b!1646488 m!1991587))

(declare-fun m!1991591 () Bool)

(assert (=> b!1646488 m!1991591))

(declare-fun m!1991593 () Bool)

(assert (=> b!1646487 m!1991593))

(assert (=> b!1646487 m!1991525))

(declare-fun m!1991595 () Bool)

(assert (=> b!1646487 m!1991595))

(declare-fun m!1991597 () Bool)

(assert (=> b!1646489 m!1991597))

(declare-fun m!1991599 () Bool)

(assert (=> b!1646489 m!1991599))

(declare-fun m!1991601 () Bool)

(assert (=> b!1646485 m!1991601))

(declare-fun m!1991603 () Bool)

(assert (=> b!1646485 m!1991603))

(assert (=> d!495896 d!495996))

(declare-fun d!496016 () Bool)

(assert (=> d!496016 (= (list!7206 lt!607832) (list!7209 (c!267637 lt!607832)))))

(declare-fun bs!396117 () Bool)

(assert (= bs!396117 d!496016))

(declare-fun m!1991605 () Bool)

(assert (=> bs!396117 m!1991605))

(assert (=> b!1645867 d!496016))

(declare-fun d!496018 () Bool)

(assert (=> d!496018 (= (list!7206 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (list!7209 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457))))))))

(declare-fun bs!396118 () Bool)

(assert (= bs!396118 d!496018))

(declare-fun m!1991607 () Bool)

(assert (=> bs!396118 m!1991607))

(assert (=> b!1645867 d!496018))

(declare-fun d!496020 () Bool)

(assert (=> d!496020 (= (list!7205 lt!608069) (list!7210 (c!267635 lt!608069)))))

(declare-fun bs!396119 () Bool)

(assert (= bs!396119 d!496020))

(declare-fun m!1991609 () Bool)

(assert (=> bs!396119 m!1991609))

(assert (=> d!495822 d!496020))

(declare-fun d!496022 () Bool)

(declare-fun lt!608378 () Int)

(assert (=> d!496022 (= lt!608378 (size!14468 (list!7206 lt!607811)))))

(assert (=> d!496022 (= lt!608378 (size!14469 (c!267637 lt!607811)))))

(assert (=> d!496022 (= (size!14465 lt!607811) lt!608378)))

(declare-fun bs!396120 () Bool)

(assert (= bs!396120 d!496022))

(assert (=> bs!396120 m!1990727))

(assert (=> bs!396120 m!1990727))

(declare-fun m!1991611 () Bool)

(assert (=> bs!396120 m!1991611))

(declare-fun m!1991613 () Bool)

(assert (=> bs!396120 m!1991613))

(assert (=> d!495822 d!496022))

(declare-fun d!496024 () Bool)

(assert (=> d!496024 (= (list!7205 (BalanceConc!12053 Empty!6054)) (list!7210 (c!267635 (BalanceConc!12053 Empty!6054))))))

(declare-fun bs!396121 () Bool)

(assert (= bs!396121 d!496024))

(declare-fun m!1991615 () Bool)

(assert (=> bs!396121 m!1991615))

(assert (=> d!495822 d!496024))

(declare-fun d!496026 () Bool)

(assert (=> d!496026 (= (dropList!658 lt!607811 0) (drop!904 (list!7209 (c!267637 lt!607811)) 0))))

(declare-fun bs!396122 () Bool)

(assert (= bs!396122 d!496026))

(declare-fun m!1991617 () Bool)

(assert (=> bs!396122 m!1991617))

(assert (=> bs!396122 m!1991617))

(declare-fun m!1991619 () Bool)

(assert (=> bs!396122 m!1991619))

(assert (=> d!495822 d!496026))

(declare-fun d!496028 () Bool)

(declare-fun lt!608391 () List!18228)

(assert (=> d!496028 (= lt!608391 (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) (printList!945 thiss!17113 (dropList!658 lt!607811 0))))))

(declare-fun e!1055957 () List!18228)

(assert (=> d!496028 (= lt!608391 e!1055957)))

(declare-fun c!267753 () Bool)

(assert (=> d!496028 (= c!267753 ((_ is Cons!18159) (dropList!658 lt!607811 0)))))

(assert (=> d!496028 (= (printListTailRec!385 thiss!17113 (dropList!658 lt!607811 0) (list!7205 (BalanceConc!12053 Empty!6054))) lt!608391)))

(declare-fun b!1646495 () Bool)

(assert (=> b!1646495 (= e!1055957 (printListTailRec!385 thiss!17113 (t!150452 (dropList!658 lt!607811 0)) (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) (list!7205 (charsOf!1852 (h!23560 (dropList!658 lt!607811 0)))))))))

(declare-fun lt!608390 () List!18228)

(assert (=> b!1646495 (= lt!608390 (list!7205 (charsOf!1852 (h!23560 (dropList!658 lt!607811 0)))))))

(declare-fun lt!608392 () List!18228)

(assert (=> b!1646495 (= lt!608392 (printList!945 thiss!17113 (t!150452 (dropList!658 lt!607811 0))))))

(declare-fun lt!608389 () Unit!30071)

(assert (=> b!1646495 (= lt!608389 (lemmaConcatAssociativity!1020 (list!7205 (BalanceConc!12053 Empty!6054)) lt!608390 lt!608392))))

(assert (=> b!1646495 (= (++!4894 (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) lt!608390) lt!608392) (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) (++!4894 lt!608390 lt!608392)))))

(declare-fun lt!608393 () Unit!30071)

(assert (=> b!1646495 (= lt!608393 lt!608389)))

(declare-fun b!1646496 () Bool)

(assert (=> b!1646496 (= e!1055957 (list!7205 (BalanceConc!12053 Empty!6054)))))

(assert (= (and d!496028 c!267753) b!1646495))

(assert (= (and d!496028 (not c!267753)) b!1646496))

(assert (=> d!496028 m!1990769))

(declare-fun m!1991621 () Bool)

(assert (=> d!496028 m!1991621))

(assert (=> d!496028 m!1990771))

(assert (=> d!496028 m!1991621))

(declare-fun m!1991623 () Bool)

(assert (=> d!496028 m!1991623))

(assert (=> b!1646495 m!1990771))

(declare-fun m!1991625 () Bool)

(assert (=> b!1646495 m!1991625))

(declare-fun m!1991627 () Bool)

(assert (=> b!1646495 m!1991627))

(declare-fun m!1991629 () Bool)

(assert (=> b!1646495 m!1991629))

(assert (=> b!1646495 m!1991627))

(assert (=> b!1646495 m!1990771))

(declare-fun m!1991631 () Bool)

(assert (=> b!1646495 m!1991631))

(declare-fun m!1991633 () Bool)

(assert (=> b!1646495 m!1991633))

(assert (=> b!1646495 m!1990771))

(assert (=> b!1646495 m!1991629))

(declare-fun m!1991635 () Bool)

(assert (=> b!1646495 m!1991635))

(declare-fun m!1991637 () Bool)

(assert (=> b!1646495 m!1991637))

(declare-fun m!1991639 () Bool)

(assert (=> b!1646495 m!1991639))

(assert (=> b!1646495 m!1991631))

(declare-fun m!1991641 () Bool)

(assert (=> b!1646495 m!1991641))

(assert (=> b!1646495 m!1990771))

(assert (=> b!1646495 m!1991637))

(assert (=> b!1646495 m!1991635))

(declare-fun m!1991643 () Bool)

(assert (=> b!1646495 m!1991643))

(assert (=> d!495822 d!496028))

(declare-fun b!1646509 () Bool)

(declare-fun e!1055962 () Bool)

(assert (=> b!1646509 (= e!1055962 (not (isEmpty!11188 (right!14888 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1646510 () Bool)

(declare-fun res!737751 () Bool)

(assert (=> b!1646510 (=> (not res!737751) (not e!1055962))))

(assert (=> b!1646510 (= res!737751 (isBalanced!1846 (right!14888 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1646511 () Bool)

(declare-fun res!737749 () Bool)

(assert (=> b!1646511 (=> (not res!737749) (not e!1055962))))

(declare-fun height!933 (Conc!6055) Int)

(assert (=> b!1646511 (= res!737749 (<= (- (height!933 (left!14558 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))))) (height!933 (right!14888 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)))))) 1))))

(declare-fun b!1646512 () Bool)

(declare-fun res!737752 () Bool)

(assert (=> b!1646512 (=> (not res!737752) (not e!1055962))))

(assert (=> b!1646512 (= res!737752 (not (isEmpty!11188 (left!14558 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1646513 () Bool)

(declare-fun e!1055963 () Bool)

(assert (=> b!1646513 (= e!1055963 e!1055962)))

(declare-fun res!737750 () Bool)

(assert (=> b!1646513 (=> (not res!737750) (not e!1055962))))

(assert (=> b!1646513 (= res!737750 (<= (- 1) (- (height!933 (left!14558 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))))) (height!933 (right!14888 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))))))))))

(declare-fun d!496030 () Bool)

(declare-fun res!737754 () Bool)

(assert (=> d!496030 (=> res!737754 e!1055963)))

(assert (=> d!496030 (= res!737754 (not ((_ is Node!6055) (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496030 (= (isBalanced!1846 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)))) e!1055963)))

(declare-fun b!1646514 () Bool)

(declare-fun res!737753 () Bool)

(assert (=> b!1646514 (=> (not res!737753) (not e!1055962))))

(assert (=> b!1646514 (= res!737753 (isBalanced!1846 (left!14558 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))))))))

(assert (= (and d!496030 (not res!737754)) b!1646513))

(assert (= (and b!1646513 res!737750) b!1646511))

(assert (= (and b!1646511 res!737749) b!1646514))

(assert (= (and b!1646514 res!737753) b!1646510))

(assert (= (and b!1646510 res!737751) b!1646512))

(assert (= (and b!1646512 res!737752) b!1646509))

(declare-fun m!1991645 () Bool)

(assert (=> b!1646513 m!1991645))

(declare-fun m!1991647 () Bool)

(assert (=> b!1646513 m!1991647))

(declare-fun m!1991649 () Bool)

(assert (=> b!1646509 m!1991649))

(declare-fun m!1991651 () Bool)

(assert (=> b!1646510 m!1991651))

(declare-fun m!1991653 () Bool)

(assert (=> b!1646514 m!1991653))

(declare-fun m!1991655 () Bool)

(assert (=> b!1646512 m!1991655))

(assert (=> b!1646511 m!1991645))

(assert (=> b!1646511 m!1991647))

(assert (=> d!495772 d!496030))

(declare-fun d!496032 () Bool)

(declare-fun e!1055966 () Bool)

(assert (=> d!496032 e!1055966))

(declare-fun res!737757 () Bool)

(assert (=> d!496032 (=> (not res!737757) (not e!1055966))))

(declare-fun lt!608396 () Conc!6055)

(assert (=> d!496032 (= res!737757 (isBalanced!1846 lt!608396))))

(declare-fun ++!4900 (Conc!6055 Conc!6055) Conc!6055)

(declare-fun fill!104 (Int Token!5972) IArray!12115)

(assert (=> d!496032 (= lt!608396 (++!4900 (Leaf!8877 (fill!104 1 (h!23560 (t!150452 tokens!457))) 1) (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457))))))))

(assert (=> d!496032 (isBalanced!1846 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))))))

(assert (=> d!496032 (= (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457))) lt!608396)))

(declare-fun b!1646517 () Bool)

(assert (=> b!1646517 (= e!1055966 (= (list!7209 lt!608396) (Cons!18159 (h!23560 (t!150452 tokens!457)) (list!7209 (c!267637 (seqFromList!2146 (t!150452 (t!150452 tokens!457))))))))))

(assert (= (and d!496032 res!737757) b!1646517))

(declare-fun m!1991657 () Bool)

(assert (=> d!496032 m!1991657))

(declare-fun m!1991659 () Bool)

(assert (=> d!496032 m!1991659))

(declare-fun m!1991661 () Bool)

(assert (=> d!496032 m!1991661))

(declare-fun m!1991663 () Bool)

(assert (=> d!496032 m!1991663))

(declare-fun m!1991665 () Bool)

(assert (=> b!1646517 m!1991665))

(assert (=> b!1646517 m!1991607))

(assert (=> d!495772 d!496032))

(declare-fun d!496034 () Bool)

(declare-fun lt!608399 () Bool)

(assert (=> d!496034 (= lt!608399 (isEmpty!11189 (list!7205 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))))))))))

(declare-fun isEmpty!11193 (Conc!6054) Bool)

(assert (=> d!496034 (= lt!608399 (isEmpty!11193 (c!267635 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))))))))))

(assert (=> d!496034 (= (isEmpty!11190 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))))) lt!608399)))

(declare-fun bs!396123 () Bool)

(assert (= bs!396123 d!496034))

(declare-fun m!1991667 () Bool)

(assert (=> bs!396123 m!1991667))

(assert (=> bs!396123 m!1991667))

(declare-fun m!1991669 () Bool)

(assert (=> bs!396123 m!1991669))

(declare-fun m!1991671 () Bool)

(assert (=> bs!396123 m!1991671))

(assert (=> b!1646044 d!496034))

(declare-fun b!1646518 () Bool)

(declare-fun res!737760 () Bool)

(declare-fun e!1055968 () Bool)

(assert (=> b!1646518 (=> (not res!737760) (not e!1055968))))

(declare-fun lt!608400 () tuple2!17826)

(assert (=> b!1646518 (= res!737760 (= (list!7206 (_1!10315 lt!608400)) (_1!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))))))))))

(declare-fun e!1055969 () Bool)

(declare-fun b!1646519 () Bool)

(assert (=> b!1646519 (= e!1055969 (= (_2!10315 lt!608400) (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))))))

(declare-fun b!1646520 () Bool)

(assert (=> b!1646520 (= e!1055968 (= (list!7205 (_2!10315 lt!608400)) (_2!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))))))))))

(declare-fun b!1646521 () Bool)

(declare-fun e!1055967 () Bool)

(assert (=> b!1646521 (= e!1055969 e!1055967)))

(declare-fun res!737759 () Bool)

(assert (=> b!1646521 (= res!737759 (< (size!14464 (_2!10315 lt!608400)) (size!14464 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))))))))

(assert (=> b!1646521 (=> (not res!737759) (not e!1055967))))

(declare-fun b!1646522 () Bool)

(assert (=> b!1646522 (= e!1055967 (not (isEmpty!11180 (_1!10315 lt!608400))))))

(declare-fun d!496036 () Bool)

(assert (=> d!496036 e!1055968))

(declare-fun res!737758 () Bool)

(assert (=> d!496036 (=> (not res!737758) (not e!1055968))))

(assert (=> d!496036 (= res!737758 e!1055969)))

(declare-fun c!267754 () Bool)

(assert (=> d!496036 (= c!267754 (> (size!14465 (_1!10315 lt!608400)) 0))))

(assert (=> d!496036 (= lt!608400 (lexTailRecV2!586 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))) (BalanceConc!12053 Empty!6054) (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))) (BalanceConc!12055 Empty!6055)))))

(assert (=> d!496036 (= (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))) lt!608400)))

(assert (= (and d!496036 c!267754) b!1646521))

(assert (= (and d!496036 (not c!267754)) b!1646519))

(assert (= (and b!1646521 res!737759) b!1646522))

(assert (= (and d!496036 res!737758) b!1646518))

(assert (= (and b!1646518 res!737760) b!1646520))

(declare-fun m!1991673 () Bool)

(assert (=> b!1646521 m!1991673))

(assert (=> b!1646521 m!1990875))

(declare-fun m!1991675 () Bool)

(assert (=> b!1646521 m!1991675))

(declare-fun m!1991677 () Bool)

(assert (=> b!1646518 m!1991677))

(assert (=> b!1646518 m!1990875))

(declare-fun m!1991679 () Bool)

(assert (=> b!1646518 m!1991679))

(assert (=> b!1646518 m!1991679))

(declare-fun m!1991681 () Bool)

(assert (=> b!1646518 m!1991681))

(declare-fun m!1991683 () Bool)

(assert (=> d!496036 m!1991683))

(assert (=> d!496036 m!1990875))

(assert (=> d!496036 m!1990875))

(declare-fun m!1991685 () Bool)

(assert (=> d!496036 m!1991685))

(declare-fun m!1991687 () Bool)

(assert (=> b!1646520 m!1991687))

(assert (=> b!1646520 m!1990875))

(assert (=> b!1646520 m!1991679))

(assert (=> b!1646520 m!1991679))

(assert (=> b!1646520 m!1991681))

(declare-fun m!1991689 () Bool)

(assert (=> b!1646522 m!1991689))

(assert (=> b!1646044 d!496036))

(declare-fun d!496038 () Bool)

(declare-fun lt!608401 () BalanceConc!12052)

(assert (=> d!496038 (= (list!7205 lt!608401) (printList!945 thiss!17113 (list!7206 (singletonSeq!1677 (h!23560 tokens!457)))))))

(assert (=> d!496038 (= lt!608401 (printTailRec!883 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)) 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!496038 (= (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))) lt!608401)))

(declare-fun bs!396124 () Bool)

(assert (= bs!396124 d!496038))

(declare-fun m!1991691 () Bool)

(assert (=> bs!396124 m!1991691))

(assert (=> bs!396124 m!1990363))

(assert (=> bs!396124 m!1990869))

(assert (=> bs!396124 m!1990869))

(declare-fun m!1991693 () Bool)

(assert (=> bs!396124 m!1991693))

(assert (=> bs!396124 m!1990363))

(declare-fun m!1991695 () Bool)

(assert (=> bs!396124 m!1991695))

(assert (=> b!1646044 d!496038))

(assert (=> b!1646044 d!495828))

(declare-fun d!496040 () Bool)

(assert (=> d!496040 (= (list!7205 lt!608167) (list!7210 (c!267635 lt!608167)))))

(declare-fun bs!396125 () Bool)

(assert (= bs!396125 d!496040))

(declare-fun m!1991697 () Bool)

(assert (=> bs!396125 m!1991697))

(assert (=> d!495900 d!496040))

(declare-fun d!496042 () Bool)

(declare-fun lt!608404 () Int)

(assert (=> d!496042 (>= lt!608404 0)))

(declare-fun e!1055972 () Int)

(assert (=> d!496042 (= lt!608404 e!1055972)))

(declare-fun c!267757 () Bool)

(assert (=> d!496042 (= c!267757 ((_ is Nil!18158) lt!607814))))

(assert (=> d!496042 (= (size!14466 lt!607814) lt!608404)))

(declare-fun b!1646527 () Bool)

(assert (=> b!1646527 (= e!1055972 0)))

(declare-fun b!1646528 () Bool)

(assert (=> b!1646528 (= e!1055972 (+ 1 (size!14466 (t!150451 lt!607814))))))

(assert (= (and d!496042 c!267757) b!1646527))

(assert (= (and d!496042 (not c!267757)) b!1646528))

(declare-fun m!1991699 () Bool)

(assert (=> b!1646528 m!1991699))

(assert (=> b!1645937 d!496042))

(declare-fun d!496044 () Bool)

(declare-fun lt!608405 () Int)

(assert (=> d!496044 (>= lt!608405 0)))

(declare-fun e!1055973 () Int)

(assert (=> d!496044 (= lt!608405 e!1055973)))

(declare-fun c!267758 () Bool)

(assert (=> d!496044 (= c!267758 ((_ is Nil!18158) lt!607800))))

(assert (=> d!496044 (= (size!14466 lt!607800) lt!608405)))

(declare-fun b!1646529 () Bool)

(assert (=> b!1646529 (= e!1055973 0)))

(declare-fun b!1646530 () Bool)

(assert (=> b!1646530 (= e!1055973 (+ 1 (size!14466 (t!150451 lt!607800))))))

(assert (= (and d!496044 c!267758) b!1646529))

(assert (= (and d!496044 (not c!267758)) b!1646530))

(declare-fun m!1991701 () Bool)

(assert (=> b!1646530 m!1991701))

(assert (=> b!1645937 d!496044))

(declare-fun d!496046 () Bool)

(assert (=> d!496046 (= (isDefined!2795 lt!608044) (not (isEmpty!11191 lt!608044)))))

(declare-fun bs!396126 () Bool)

(assert (= bs!396126 d!496046))

(assert (=> bs!396126 m!1990753))

(assert (=> b!1645961 d!496046))

(declare-fun d!496048 () Bool)

(declare-fun charsToInt!0 (List!18227) (_ BitVec 32))

(assert (=> d!496048 (= (inv!16 (value!100958 (h!23560 tokens!457))) (= (charsToInt!0 (text!23498 (value!100958 (h!23560 tokens!457)))) (value!100949 (value!100958 (h!23560 tokens!457)))))))

(declare-fun bs!396127 () Bool)

(assert (= bs!396127 d!496048))

(declare-fun m!1991703 () Bool)

(assert (=> bs!396127 m!1991703))

(assert (=> b!1645846 d!496048))

(declare-fun d!496050 () Bool)

(declare-fun e!1055976 () Bool)

(assert (=> d!496050 e!1055976))

(declare-fun res!737763 () Bool)

(assert (=> d!496050 (=> (not res!737763) (not e!1055976))))

(declare-fun lt!608408 () BalanceConc!12052)

(assert (=> d!496050 (= res!737763 (= (list!7205 lt!608408) lt!607800))))

(declare-fun fromList!393 (List!18228) Conc!6054)

(assert (=> d!496050 (= lt!608408 (BalanceConc!12053 (fromList!393 lt!607800)))))

(assert (=> d!496050 (= (fromListB!951 lt!607800) lt!608408)))

(declare-fun b!1646533 () Bool)

(declare-fun isBalanced!1847 (Conc!6054) Bool)

(assert (=> b!1646533 (= e!1055976 (isBalanced!1847 (fromList!393 lt!607800)))))

(assert (= (and d!496050 res!737763) b!1646533))

(declare-fun m!1991705 () Bool)

(assert (=> d!496050 m!1991705))

(declare-fun m!1991707 () Bool)

(assert (=> d!496050 m!1991707))

(assert (=> b!1646533 m!1991707))

(assert (=> b!1646533 m!1991707))

(declare-fun m!1991709 () Bool)

(assert (=> b!1646533 m!1991709))

(assert (=> d!495806 d!496050))

(declare-fun d!496052 () Bool)

(assert (=> d!496052 (= (head!3605 lt!607800) (h!23559 lt!607800))))

(assert (=> b!1645935 d!496052))

(declare-fun d!496054 () Bool)

(assert (=> d!496054 (= (head!3605 lt!607814) (h!23559 lt!607814))))

(assert (=> b!1645935 d!496054))

(declare-fun d!496056 () Bool)

(declare-fun lt!608409 () Int)

(assert (=> d!496056 (>= lt!608409 0)))

(declare-fun e!1055977 () Int)

(assert (=> d!496056 (= lt!608409 e!1055977)))

(declare-fun c!267760 () Bool)

(assert (=> d!496056 (= c!267760 ((_ is Nil!18158) (_2!10314 (get!5281 lt!608044))))))

(assert (=> d!496056 (= (size!14466 (_2!10314 (get!5281 lt!608044))) lt!608409)))

(declare-fun b!1646534 () Bool)

(assert (=> b!1646534 (= e!1055977 0)))

(declare-fun b!1646535 () Bool)

(assert (=> b!1646535 (= e!1055977 (+ 1 (size!14466 (t!150451 (_2!10314 (get!5281 lt!608044))))))))

(assert (= (and d!496056 c!267760) b!1646534))

(assert (= (and d!496056 (not c!267760)) b!1646535))

(declare-fun m!1991711 () Bool)

(assert (=> b!1646535 m!1991711))

(assert (=> b!1645963 d!496056))

(declare-fun d!496058 () Bool)

(assert (=> d!496058 (= (get!5281 lt!608044) (v!24578 lt!608044))))

(assert (=> b!1645963 d!496058))

(declare-fun d!496060 () Bool)

(declare-fun lt!608410 () Int)

(assert (=> d!496060 (>= lt!608410 0)))

(declare-fun e!1055978 () Int)

(assert (=> d!496060 (= lt!608410 e!1055978)))

(declare-fun c!267761 () Bool)

(assert (=> d!496060 (= c!267761 ((_ is Nil!18158) lt!607813))))

(assert (=> d!496060 (= (size!14466 lt!607813) lt!608410)))

(declare-fun b!1646536 () Bool)

(assert (=> b!1646536 (= e!1055978 0)))

(declare-fun b!1646537 () Bool)

(assert (=> b!1646537 (= e!1055978 (+ 1 (size!14466 (t!150451 lt!607813))))))

(assert (= (and d!496060 c!267761) b!1646536))

(assert (= (and d!496060 (not c!267761)) b!1646537))

(declare-fun m!1991713 () Bool)

(assert (=> b!1646537 m!1991713))

(assert (=> b!1645963 d!496060))

(declare-fun d!496062 () Bool)

(assert (=> d!496062 (= (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))) (isBalanced!1847 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))))

(declare-fun bs!396128 () Bool)

(assert (= bs!396128 d!496062))

(declare-fun m!1991715 () Bool)

(assert (=> bs!396128 m!1991715))

(assert (=> tb!94231 d!496062))

(declare-fun d!496064 () Bool)

(declare-fun lt!608413 () Token!5972)

(assert (=> d!496064 (= lt!608413 (apply!4758 (list!7206 (_1!10315 lt!608084)) 0))))

(declare-fun apply!4761 (Conc!6055 Int) Token!5972)

(assert (=> d!496064 (= lt!608413 (apply!4761 (c!267637 (_1!10315 lt!608084)) 0))))

(declare-fun e!1055981 () Bool)

(assert (=> d!496064 e!1055981))

(declare-fun res!737766 () Bool)

(assert (=> d!496064 (=> (not res!737766) (not e!1055981))))

(assert (=> d!496064 (= res!737766 (<= 0 0))))

(assert (=> d!496064 (= (apply!4757 (_1!10315 lt!608084) 0) lt!608413)))

(declare-fun b!1646540 () Bool)

(assert (=> b!1646540 (= e!1055981 (< 0 (size!14465 (_1!10315 lt!608084))))))

(assert (= (and d!496064 res!737766) b!1646540))

(declare-fun m!1991717 () Bool)

(assert (=> d!496064 m!1991717))

(assert (=> d!496064 m!1991717))

(declare-fun m!1991719 () Bool)

(assert (=> d!496064 m!1991719))

(declare-fun m!1991721 () Bool)

(assert (=> d!496064 m!1991721))

(assert (=> b!1646540 m!1990873))

(assert (=> b!1646042 d!496064))

(declare-fun d!496066 () Bool)

(declare-fun lt!608416 () Int)

(assert (=> d!496066 (= lt!608416 (size!14466 (list!7205 (_2!10315 lt!607943))))))

(declare-fun size!14470 (Conc!6054) Int)

(assert (=> d!496066 (= lt!608416 (size!14470 (c!267635 (_2!10315 lt!607943))))))

(assert (=> d!496066 (= (size!14464 (_2!10315 lt!607943)) lt!608416)))

(declare-fun bs!396129 () Bool)

(assert (= bs!396129 d!496066))

(assert (=> bs!396129 m!1990621))

(assert (=> bs!396129 m!1990621))

(declare-fun m!1991723 () Bool)

(assert (=> bs!396129 m!1991723))

(declare-fun m!1991725 () Bool)

(assert (=> bs!396129 m!1991725))

(assert (=> b!1645911 d!496066))

(declare-fun d!496068 () Bool)

(declare-fun lt!608417 () Int)

(assert (=> d!496068 (= lt!608417 (size!14466 (list!7205 (seqFromList!2145 lt!607800))))))

(assert (=> d!496068 (= lt!608417 (size!14470 (c!267635 (seqFromList!2145 lt!607800))))))

(assert (=> d!496068 (= (size!14464 (seqFromList!2145 lt!607800)) lt!608417)))

(declare-fun bs!396130 () Bool)

(assert (= bs!396130 d!496068))

(assert (=> bs!396130 m!1990391))

(assert (=> bs!396130 m!1990613))

(assert (=> bs!396130 m!1990613))

(declare-fun m!1991727 () Bool)

(assert (=> bs!396130 m!1991727))

(declare-fun m!1991729 () Bool)

(assert (=> bs!396130 m!1991729))

(assert (=> b!1645911 d!496068))

(declare-fun d!496070 () Bool)

(declare-fun e!1055999 () Bool)

(assert (=> d!496070 e!1055999))

(declare-fun c!267770 () Bool)

(assert (=> d!496070 (= c!267770 ((_ is EmptyExpr!4531) (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun lt!608420 () Bool)

(declare-fun e!1055996 () Bool)

(assert (=> d!496070 (= lt!608420 e!1055996)))

(declare-fun c!267769 () Bool)

(assert (=> d!496070 (= c!267769 (isEmpty!11189 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun validRegex!1802 (Regex!4531) Bool)

(assert (=> d!496070 (validRegex!1802 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))))

(assert (=> d!496070 (= (matchR!2024 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) lt!608420)))

(declare-fun b!1646569 () Bool)

(declare-fun e!1056001 () Bool)

(declare-fun e!1056002 () Bool)

(assert (=> b!1646569 (= e!1056001 e!1056002)))

(declare-fun res!737789 () Bool)

(assert (=> b!1646569 (=> res!737789 e!1056002)))

(declare-fun call!105801 () Bool)

(assert (=> b!1646569 (= res!737789 call!105801)))

(declare-fun b!1646570 () Bool)

(assert (=> b!1646570 (= e!1056002 (not (= (head!3605 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) (c!267636 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))))))))

(declare-fun b!1646571 () Bool)

(declare-fun res!737784 () Bool)

(declare-fun e!1055998 () Bool)

(assert (=> b!1646571 (=> (not res!737784) (not e!1055998))))

(assert (=> b!1646571 (= res!737784 (not call!105801))))

(declare-fun b!1646572 () Bool)

(declare-fun nullable!1341 (Regex!4531) Bool)

(assert (=> b!1646572 (= e!1055996 (nullable!1341 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun bm!105796 () Bool)

(assert (=> bm!105796 (= call!105801 (isEmpty!11189 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun b!1646573 () Bool)

(declare-fun e!1056000 () Bool)

(assert (=> b!1646573 (= e!1056000 e!1056001)))

(declare-fun res!737785 () Bool)

(assert (=> b!1646573 (=> (not res!737785) (not e!1056001))))

(assert (=> b!1646573 (= res!737785 (not lt!608420))))

(declare-fun b!1646574 () Bool)

(declare-fun derivativeStep!1106 (Regex!4531 C!9236) Regex!4531)

(assert (=> b!1646574 (= e!1055996 (matchR!2024 (derivativeStep!1106 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))) (head!3605 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))))) (tail!2427 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))))))))

(declare-fun b!1646575 () Bool)

(declare-fun e!1055997 () Bool)

(assert (=> b!1646575 (= e!1055999 e!1055997)))

(declare-fun c!267768 () Bool)

(assert (=> b!1646575 (= c!267768 ((_ is EmptyLang!4531) (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun b!1646576 () Bool)

(assert (=> b!1646576 (= e!1055998 (= (head!3605 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) (c!267636 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))))))

(declare-fun b!1646577 () Bool)

(declare-fun res!737790 () Bool)

(assert (=> b!1646577 (=> (not res!737790) (not e!1055998))))

(assert (=> b!1646577 (= res!737790 (isEmpty!11189 (tail!2427 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))))))))

(declare-fun b!1646578 () Bool)

(declare-fun res!737783 () Bool)

(assert (=> b!1646578 (=> res!737783 e!1056002)))

(assert (=> b!1646578 (= res!737783 (not (isEmpty!11189 (tail!2427 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))))))))

(declare-fun b!1646579 () Bool)

(declare-fun res!737786 () Bool)

(assert (=> b!1646579 (=> res!737786 e!1056000)))

(assert (=> b!1646579 (= res!737786 (not ((_ is ElementMatch!4531) (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))))))

(assert (=> b!1646579 (= e!1055997 e!1056000)))

(declare-fun b!1646580 () Bool)

(assert (=> b!1646580 (= e!1055997 (not lt!608420))))

(declare-fun b!1646581 () Bool)

(assert (=> b!1646581 (= e!1055999 (= lt!608420 call!105801))))

(declare-fun b!1646582 () Bool)

(declare-fun res!737788 () Bool)

(assert (=> b!1646582 (=> res!737788 e!1056000)))

(assert (=> b!1646582 (= res!737788 e!1055998)))

(declare-fun res!737787 () Bool)

(assert (=> b!1646582 (=> (not res!737787) (not e!1055998))))

(assert (=> b!1646582 (= res!737787 lt!608420)))

(assert (= (and d!496070 c!267769) b!1646572))

(assert (= (and d!496070 (not c!267769)) b!1646574))

(assert (= (and d!496070 c!267770) b!1646581))

(assert (= (and d!496070 (not c!267770)) b!1646575))

(assert (= (and b!1646575 c!267768) b!1646580))

(assert (= (and b!1646575 (not c!267768)) b!1646579))

(assert (= (and b!1646579 (not res!737786)) b!1646582))

(assert (= (and b!1646582 res!737787) b!1646571))

(assert (= (and b!1646571 res!737784) b!1646577))

(assert (= (and b!1646577 res!737790) b!1646576))

(assert (= (and b!1646582 (not res!737788)) b!1646573))

(assert (= (and b!1646573 res!737785) b!1646569))

(assert (= (and b!1646569 (not res!737789)) b!1646578))

(assert (= (and b!1646578 (not res!737783)) b!1646570))

(assert (= (or b!1646581 b!1646569 b!1646571) bm!105796))

(declare-fun m!1991731 () Bool)

(assert (=> b!1646572 m!1991731))

(assert (=> b!1646570 m!1990735))

(declare-fun m!1991733 () Bool)

(assert (=> b!1646570 m!1991733))

(assert (=> bm!105796 m!1990735))

(declare-fun m!1991735 () Bool)

(assert (=> bm!105796 m!1991735))

(assert (=> d!496070 m!1990735))

(assert (=> d!496070 m!1991735))

(declare-fun m!1991737 () Bool)

(assert (=> d!496070 m!1991737))

(assert (=> b!1646574 m!1990735))

(assert (=> b!1646574 m!1991733))

(assert (=> b!1646574 m!1991733))

(declare-fun m!1991739 () Bool)

(assert (=> b!1646574 m!1991739))

(assert (=> b!1646574 m!1990735))

(declare-fun m!1991741 () Bool)

(assert (=> b!1646574 m!1991741))

(assert (=> b!1646574 m!1991739))

(assert (=> b!1646574 m!1991741))

(declare-fun m!1991743 () Bool)

(assert (=> b!1646574 m!1991743))

(assert (=> b!1646577 m!1990735))

(assert (=> b!1646577 m!1991741))

(assert (=> b!1646577 m!1991741))

(declare-fun m!1991745 () Bool)

(assert (=> b!1646577 m!1991745))

(assert (=> b!1646576 m!1990735))

(assert (=> b!1646576 m!1991733))

(assert (=> b!1646578 m!1990735))

(assert (=> b!1646578 m!1991741))

(assert (=> b!1646578 m!1991741))

(assert (=> b!1646578 m!1991745))

(assert (=> b!1645960 d!496070))

(assert (=> b!1645960 d!496058))

(declare-fun d!496072 () Bool)

(assert (=> d!496072 (= (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))) (list!7210 (c!267635 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun bs!396131 () Bool)

(assert (= bs!396131 d!496072))

(declare-fun m!1991747 () Bool)

(assert (=> bs!396131 m!1991747))

(assert (=> b!1645960 d!496072))

(declare-fun d!496074 () Bool)

(declare-fun lt!608421 () BalanceConc!12052)

(assert (=> d!496074 (= (list!7205 lt!608421) (originalCharacters!4017 (_1!10314 (get!5281 lt!608044))))))

(assert (=> d!496074 (= lt!608421 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))) (value!100958 (_1!10314 (get!5281 lt!608044)))))))

(assert (=> d!496074 (= (charsOf!1852 (_1!10314 (get!5281 lt!608044))) lt!608421)))

(declare-fun b_lambda!51751 () Bool)

(assert (=> (not b_lambda!51751) (not d!496074)))

(declare-fun tb!94279 () Bool)

(declare-fun t!150520 () Bool)

(assert (=> (and b!1645821 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150520) tb!94279))

(declare-fun b!1646583 () Bool)

(declare-fun e!1056003 () Bool)

(declare-fun tp!476991 () Bool)

(assert (=> b!1646583 (= e!1056003 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))) (value!100958 (_1!10314 (get!5281 lt!608044)))))) tp!476991))))

(declare-fun result!113882 () Bool)

(assert (=> tb!94279 (= result!113882 (and (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))) (value!100958 (_1!10314 (get!5281 lt!608044))))) e!1056003))))

(assert (= tb!94279 b!1646583))

(declare-fun m!1991749 () Bool)

(assert (=> b!1646583 m!1991749))

(declare-fun m!1991751 () Bool)

(assert (=> tb!94279 m!1991751))

(assert (=> d!496074 t!150520))

(declare-fun b_and!116885 () Bool)

(assert (= b_and!116869 (and (=> t!150520 result!113882) b_and!116885)))

(declare-fun tb!94281 () Bool)

(declare-fun t!150522 () Bool)

(assert (=> (and b!1645826 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150522) tb!94281))

(declare-fun result!113884 () Bool)

(assert (= result!113884 result!113882))

(assert (=> d!496074 t!150522))

(declare-fun b_and!116887 () Bool)

(assert (= b_and!116871 (and (=> t!150522 result!113884) b_and!116887)))

(declare-fun tb!94283 () Bool)

(declare-fun t!150524 () Bool)

(assert (=> (and b!1646231 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150524) tb!94283))

(declare-fun result!113886 () Bool)

(assert (= result!113886 result!113882))

(assert (=> d!496074 t!150524))

(declare-fun b_and!116889 () Bool)

(assert (= b_and!116873 (and (=> t!150524 result!113886) b_and!116889)))

(declare-fun tb!94285 () Bool)

(declare-fun t!150526 () Bool)

(assert (=> (and b!1646242 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150526) tb!94285))

(declare-fun result!113888 () Bool)

(assert (= result!113888 result!113882))

(assert (=> d!496074 t!150526))

(declare-fun b_and!116891 () Bool)

(assert (= b_and!116875 (and (=> t!150526 result!113888) b_and!116891)))

(declare-fun m!1991753 () Bool)

(assert (=> d!496074 m!1991753))

(declare-fun m!1991755 () Bool)

(assert (=> d!496074 m!1991755))

(assert (=> b!1645960 d!496074))

(declare-fun d!496076 () Bool)

(declare-fun lt!608422 () Bool)

(assert (=> d!496076 (= lt!608422 (isEmpty!11187 (list!7206 (_1!10315 lt!608164))))))

(assert (=> d!496076 (= lt!608422 (isEmpty!11188 (c!267637 (_1!10315 lt!608164))))))

(assert (=> d!496076 (= (isEmpty!11180 (_1!10315 lt!608164)) lt!608422)))

(declare-fun bs!396132 () Bool)

(assert (= bs!396132 d!496076))

(assert (=> bs!396132 m!1991099))

(assert (=> bs!396132 m!1991099))

(declare-fun m!1991757 () Bool)

(assert (=> bs!396132 m!1991757))

(declare-fun m!1991759 () Bool)

(assert (=> bs!396132 m!1991759))

(assert (=> b!1646212 d!496076))

(declare-fun d!496078 () Bool)

(declare-fun c!267775 () Bool)

(assert (=> d!496078 (= c!267775 ((_ is Empty!6055) (c!267637 lt!607810)))))

(declare-fun e!1056008 () List!18229)

(assert (=> d!496078 (= (list!7209 (c!267637 lt!607810)) e!1056008)))

(declare-fun b!1646592 () Bool)

(assert (=> b!1646592 (= e!1056008 Nil!18159)))

(declare-fun b!1646593 () Bool)

(declare-fun e!1056009 () List!18229)

(assert (=> b!1646593 (= e!1056008 e!1056009)))

(declare-fun c!267776 () Bool)

(assert (=> b!1646593 (= c!267776 ((_ is Leaf!8877) (c!267637 lt!607810)))))

(declare-fun b!1646595 () Bool)

(assert (=> b!1646595 (= e!1056009 (++!4899 (list!7209 (left!14558 (c!267637 lt!607810))) (list!7209 (right!14888 (c!267637 lt!607810)))))))

(declare-fun b!1646594 () Bool)

(declare-fun list!7213 (IArray!12115) List!18229)

(assert (=> b!1646594 (= e!1056009 (list!7213 (xs!8891 (c!267637 lt!607810))))))

(assert (= (and d!496078 c!267775) b!1646592))

(assert (= (and d!496078 (not c!267775)) b!1646593))

(assert (= (and b!1646593 c!267776) b!1646594))

(assert (= (and b!1646593 (not c!267776)) b!1646595))

(declare-fun m!1991761 () Bool)

(assert (=> b!1646595 m!1991761))

(declare-fun m!1991763 () Bool)

(assert (=> b!1646595 m!1991763))

(assert (=> b!1646595 m!1991761))

(assert (=> b!1646595 m!1991763))

(declare-fun m!1991765 () Bool)

(assert (=> b!1646595 m!1991765))

(declare-fun m!1991767 () Bool)

(assert (=> b!1646594 m!1991767))

(assert (=> d!495784 d!496078))

(assert (=> b!1645986 d!496022))

(declare-fun d!496080 () Bool)

(declare-fun c!267779 () Bool)

(assert (=> d!496080 (= c!267779 ((_ is Node!6054) (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))))

(declare-fun e!1056014 () Bool)

(assert (=> d!496080 (= (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))) e!1056014)))

(declare-fun b!1646602 () Bool)

(declare-fun inv!23527 (Conc!6054) Bool)

(assert (=> b!1646602 (= e!1056014 (inv!23527 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))))

(declare-fun b!1646603 () Bool)

(declare-fun e!1056015 () Bool)

(assert (=> b!1646603 (= e!1056014 e!1056015)))

(declare-fun res!737793 () Bool)

(assert (=> b!1646603 (= res!737793 (not ((_ is Leaf!8876) (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))))))))

(assert (=> b!1646603 (=> res!737793 e!1056015)))

(declare-fun b!1646604 () Bool)

(declare-fun inv!23528 (Conc!6054) Bool)

(assert (=> b!1646604 (= e!1056015 (inv!23528 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))))

(assert (= (and d!496080 c!267779) b!1646602))

(assert (= (and d!496080 (not c!267779)) b!1646603))

(assert (= (and b!1646603 (not res!737793)) b!1646604))

(declare-fun m!1991769 () Bool)

(assert (=> b!1646602 m!1991769))

(declare-fun m!1991771 () Bool)

(assert (=> b!1646604 m!1991771))

(assert (=> b!1646008 d!496080))

(declare-fun d!496082 () Bool)

(declare-fun res!737798 () Bool)

(declare-fun e!1056020 () Bool)

(assert (=> d!496082 (=> res!737798 e!1056020)))

(assert (=> d!496082 (= res!737798 ((_ is Nil!18160) rules!1846))))

(assert (=> d!496082 (= (noDuplicateTag!1162 thiss!17113 rules!1846 Nil!18162) e!1056020)))

(declare-fun b!1646609 () Bool)

(declare-fun e!1056021 () Bool)

(assert (=> b!1646609 (= e!1056020 e!1056021)))

(declare-fun res!737799 () Bool)

(assert (=> b!1646609 (=> (not res!737799) (not e!1056021))))

(declare-fun contains!3163 (List!18232 String!20797) Bool)

(assert (=> b!1646609 (= res!737799 (not (contains!3163 Nil!18162 (tag!3483 (h!23561 rules!1846)))))))

(declare-fun b!1646610 () Bool)

(assert (=> b!1646610 (= e!1056021 (noDuplicateTag!1162 thiss!17113 (t!150453 rules!1846) (Cons!18162 (tag!3483 (h!23561 rules!1846)) Nil!18162)))))

(assert (= (and d!496082 (not res!737798)) b!1646609))

(assert (= (and b!1646609 res!737799) b!1646610))

(declare-fun m!1991773 () Bool)

(assert (=> b!1646609 m!1991773))

(declare-fun m!1991775 () Bool)

(assert (=> b!1646610 m!1991775))

(assert (=> b!1645849 d!496082))

(declare-fun d!496084 () Bool)

(declare-fun lt!608423 () Token!5972)

(assert (=> d!496084 (= lt!608423 (apply!4758 (list!7206 lt!607811) 0))))

(assert (=> d!496084 (= lt!608423 (apply!4761 (c!267637 lt!607811) 0))))

(declare-fun e!1056022 () Bool)

(assert (=> d!496084 e!1056022))

(declare-fun res!737800 () Bool)

(assert (=> d!496084 (=> (not res!737800) (not e!1056022))))

(assert (=> d!496084 (= res!737800 (<= 0 0))))

(assert (=> d!496084 (= (apply!4757 lt!607811 0) lt!608423)))

(declare-fun b!1646611 () Bool)

(assert (=> b!1646611 (= e!1056022 (< 0 (size!14465 lt!607811)))))

(assert (= (and d!496084 res!737800) b!1646611))

(assert (=> d!496084 m!1990727))

(assert (=> d!496084 m!1990727))

(declare-fun m!1991777 () Bool)

(assert (=> d!496084 m!1991777))

(declare-fun m!1991779 () Bool)

(assert (=> d!496084 m!1991779))

(assert (=> b!1646611 m!1990777))

(assert (=> b!1645988 d!496084))

(declare-fun d!496086 () Bool)

(assert (=> d!496086 (= (head!3607 (drop!904 lt!608065 0)) (apply!4758 lt!608065 0))))

(declare-fun lt!608426 () Unit!30071)

(declare-fun choose!9880 (List!18229 Int) Unit!30071)

(assert (=> d!496086 (= lt!608426 (choose!9880 lt!608065 0))))

(declare-fun e!1056025 () Bool)

(assert (=> d!496086 e!1056025))

(declare-fun res!737803 () Bool)

(assert (=> d!496086 (=> (not res!737803) (not e!1056025))))

(assert (=> d!496086 (= res!737803 (>= 0 0))))

(assert (=> d!496086 (= (lemmaDropApply!592 lt!608065 0) lt!608426)))

(declare-fun b!1646614 () Bool)

(assert (=> b!1646614 (= e!1056025 (< 0 (size!14468 lt!608065)))))

(assert (= (and d!496086 res!737803) b!1646614))

(assert (=> d!496086 m!1990791))

(assert (=> d!496086 m!1990791))

(assert (=> d!496086 m!1990793))

(assert (=> d!496086 m!1990799))

(declare-fun m!1991781 () Bool)

(assert (=> d!496086 m!1991781))

(declare-fun m!1991783 () Bool)

(assert (=> b!1646614 m!1991783))

(assert (=> b!1645988 d!496086))

(declare-fun d!496088 () Bool)

(assert (=> d!496088 (= (head!3607 (drop!904 lt!608065 0)) (h!23560 (drop!904 lt!608065 0)))))

(assert (=> b!1645988 d!496088))

(declare-fun d!496090 () Bool)

(declare-fun lt!608429 () Token!5972)

(declare-fun contains!3164 (List!18229 Token!5972) Bool)

(assert (=> d!496090 (contains!3164 lt!608065 lt!608429)))

(declare-fun e!1056031 () Token!5972)

(assert (=> d!496090 (= lt!608429 e!1056031)))

(declare-fun c!267782 () Bool)

(assert (=> d!496090 (= c!267782 (= 0 0))))

(declare-fun e!1056030 () Bool)

(assert (=> d!496090 e!1056030))

(declare-fun res!737806 () Bool)

(assert (=> d!496090 (=> (not res!737806) (not e!1056030))))

(assert (=> d!496090 (= res!737806 (<= 0 0))))

(assert (=> d!496090 (= (apply!4758 lt!608065 0) lt!608429)))

(declare-fun b!1646621 () Bool)

(assert (=> b!1646621 (= e!1056030 (< 0 (size!14468 lt!608065)))))

(declare-fun b!1646622 () Bool)

(assert (=> b!1646622 (= e!1056031 (head!3607 lt!608065))))

(declare-fun b!1646623 () Bool)

(assert (=> b!1646623 (= e!1056031 (apply!4758 (tail!2428 lt!608065) (- 0 1)))))

(assert (= (and d!496090 res!737806) b!1646621))

(assert (= (and d!496090 c!267782) b!1646622))

(assert (= (and d!496090 (not c!267782)) b!1646623))

(declare-fun m!1991785 () Bool)

(assert (=> d!496090 m!1991785))

(assert (=> b!1646621 m!1991783))

(declare-fun m!1991787 () Bool)

(assert (=> b!1646622 m!1991787))

(declare-fun m!1991789 () Bool)

(assert (=> b!1646623 m!1991789))

(assert (=> b!1646623 m!1991789))

(declare-fun m!1991791 () Bool)

(assert (=> b!1646623 m!1991791))

(assert (=> b!1645988 d!496090))

(declare-fun d!496092 () Bool)

(declare-fun e!1056034 () Bool)

(assert (=> d!496092 e!1056034))

(declare-fun res!737815 () Bool)

(assert (=> d!496092 (=> (not res!737815) (not e!1056034))))

(declare-fun appendAssocInst!456 (Conc!6054 Conc!6054) Bool)

(assert (=> d!496092 (= res!737815 (appendAssocInst!456 (c!267635 (BalanceConc!12053 Empty!6054)) (c!267635 (charsOf!1852 (apply!4757 lt!607811 0)))))))

(declare-fun lt!608432 () BalanceConc!12052)

(declare-fun ++!4901 (Conc!6054 Conc!6054) Conc!6054)

(assert (=> d!496092 (= lt!608432 (BalanceConc!12053 (++!4901 (c!267635 (BalanceConc!12053 Empty!6054)) (c!267635 (charsOf!1852 (apply!4757 lt!607811 0))))))))

(assert (=> d!496092 (= (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607811 0))) lt!608432)))

(declare-fun b!1646635 () Bool)

(assert (=> b!1646635 (= e!1056034 (= (list!7205 lt!608432) (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) (list!7205 (charsOf!1852 (apply!4757 lt!607811 0))))))))

(declare-fun b!1646633 () Bool)

(declare-fun res!737817 () Bool)

(assert (=> b!1646633 (=> (not res!737817) (not e!1056034))))

(declare-fun height!934 (Conc!6054) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1646633 (= res!737817 (<= (height!934 (++!4901 (c!267635 (BalanceConc!12053 Empty!6054)) (c!267635 (charsOf!1852 (apply!4757 lt!607811 0))))) (+ (max!0 (height!934 (c!267635 (BalanceConc!12053 Empty!6054))) (height!934 (c!267635 (charsOf!1852 (apply!4757 lt!607811 0))))) 1)))))

(declare-fun b!1646632 () Bool)

(declare-fun res!737818 () Bool)

(assert (=> b!1646632 (=> (not res!737818) (not e!1056034))))

(assert (=> b!1646632 (= res!737818 (isBalanced!1847 (++!4901 (c!267635 (BalanceConc!12053 Empty!6054)) (c!267635 (charsOf!1852 (apply!4757 lt!607811 0))))))))

(declare-fun b!1646634 () Bool)

(declare-fun res!737816 () Bool)

(assert (=> b!1646634 (=> (not res!737816) (not e!1056034))))

(assert (=> b!1646634 (= res!737816 (>= (height!934 (++!4901 (c!267635 (BalanceConc!12053 Empty!6054)) (c!267635 (charsOf!1852 (apply!4757 lt!607811 0))))) (max!0 (height!934 (c!267635 (BalanceConc!12053 Empty!6054))) (height!934 (c!267635 (charsOf!1852 (apply!4757 lt!607811 0)))))))))

(assert (= (and d!496092 res!737815) b!1646632))

(assert (= (and b!1646632 res!737818) b!1646633))

(assert (= (and b!1646633 res!737817) b!1646634))

(assert (= (and b!1646634 res!737816) b!1646635))

(declare-fun m!1991793 () Bool)

(assert (=> d!496092 m!1991793))

(declare-fun m!1991795 () Bool)

(assert (=> d!496092 m!1991795))

(assert (=> b!1646632 m!1991795))

(assert (=> b!1646632 m!1991795))

(declare-fun m!1991797 () Bool)

(assert (=> b!1646632 m!1991797))

(declare-fun m!1991799 () Bool)

(assert (=> b!1646633 m!1991799))

(declare-fun m!1991801 () Bool)

(assert (=> b!1646633 m!1991801))

(declare-fun m!1991803 () Bool)

(assert (=> b!1646633 m!1991803))

(assert (=> b!1646633 m!1991795))

(assert (=> b!1646633 m!1991799))

(assert (=> b!1646633 m!1991801))

(assert (=> b!1646633 m!1991795))

(declare-fun m!1991805 () Bool)

(assert (=> b!1646633 m!1991805))

(assert (=> b!1646634 m!1991799))

(assert (=> b!1646634 m!1991801))

(assert (=> b!1646634 m!1991803))

(assert (=> b!1646634 m!1991795))

(assert (=> b!1646634 m!1991799))

(assert (=> b!1646634 m!1991801))

(assert (=> b!1646634 m!1991795))

(assert (=> b!1646634 m!1991805))

(declare-fun m!1991807 () Bool)

(assert (=> b!1646635 m!1991807))

(assert (=> b!1646635 m!1990771))

(assert (=> b!1646635 m!1990789))

(declare-fun m!1991809 () Bool)

(assert (=> b!1646635 m!1991809))

(assert (=> b!1646635 m!1990771))

(assert (=> b!1646635 m!1991809))

(declare-fun m!1991811 () Bool)

(assert (=> b!1646635 m!1991811))

(assert (=> b!1645988 d!496092))

(declare-fun d!496094 () Bool)

(assert (=> d!496094 (= (tail!2428 (drop!904 lt!608063 0)) (t!150452 (drop!904 lt!608063 0)))))

(assert (=> b!1645988 d!496094))

(declare-fun d!496096 () Bool)

(assert (=> d!496096 (= (tail!2428 (drop!904 lt!608063 0)) (drop!904 lt!608063 (+ 0 1)))))

(declare-fun lt!608435 () Unit!30071)

(declare-fun choose!9881 (List!18229 Int) Unit!30071)

(assert (=> d!496096 (= lt!608435 (choose!9881 lt!608063 0))))

(declare-fun e!1056037 () Bool)

(assert (=> d!496096 e!1056037))

(declare-fun res!737821 () Bool)

(assert (=> d!496096 (=> (not res!737821) (not e!1056037))))

(assert (=> d!496096 (= res!737821 (>= 0 0))))

(assert (=> d!496096 (= (lemmaDropTail!572 lt!608063 0) lt!608435)))

(declare-fun b!1646638 () Bool)

(assert (=> b!1646638 (= e!1056037 (< 0 (size!14468 lt!608063)))))

(assert (= (and d!496096 res!737821) b!1646638))

(assert (=> d!496096 m!1990781))

(assert (=> d!496096 m!1990781))

(assert (=> d!496096 m!1990801))

(assert (=> d!496096 m!1990779))

(declare-fun m!1991813 () Bool)

(assert (=> d!496096 m!1991813))

(declare-fun m!1991815 () Bool)

(assert (=> b!1646638 m!1991815))

(assert (=> b!1645988 d!496096))

(declare-fun b!1646657 () Bool)

(declare-fun e!1056050 () List!18229)

(assert (=> b!1646657 (= e!1056050 Nil!18159)))

(declare-fun b!1646658 () Bool)

(declare-fun e!1056048 () Int)

(declare-fun call!105804 () Int)

(assert (=> b!1646658 (= e!1056048 call!105804)))

(declare-fun b!1646659 () Bool)

(declare-fun e!1056049 () Int)

(assert (=> b!1646659 (= e!1056049 (- call!105804 (+ 0 1)))))

(declare-fun b!1646660 () Bool)

(assert (=> b!1646660 (= e!1056049 0)))

(declare-fun d!496098 () Bool)

(declare-fun e!1056052 () Bool)

(assert (=> d!496098 e!1056052))

(declare-fun res!737824 () Bool)

(assert (=> d!496098 (=> (not res!737824) (not e!1056052))))

(declare-fun lt!608438 () List!18229)

(declare-fun content!2518 (List!18229) (InoxSet Token!5972))

(assert (=> d!496098 (= res!737824 (= ((_ map implies) (content!2518 lt!608438) (content!2518 lt!608063)) ((as const (InoxSet Token!5972)) true)))))

(assert (=> d!496098 (= lt!608438 e!1056050)))

(declare-fun c!267796 () Bool)

(assert (=> d!496098 (= c!267796 ((_ is Nil!18159) lt!608063))))

(assert (=> d!496098 (= (drop!904 lt!608063 (+ 0 1)) lt!608438)))

(declare-fun b!1646661 () Bool)

(declare-fun e!1056051 () List!18229)

(assert (=> b!1646661 (= e!1056051 lt!608063)))

(declare-fun b!1646662 () Bool)

(assert (=> b!1646662 (= e!1056051 (drop!904 (t!150452 lt!608063) (- (+ 0 1) 1)))))

(declare-fun b!1646663 () Bool)

(assert (=> b!1646663 (= e!1056048 e!1056049)))

(declare-fun c!267795 () Bool)

(assert (=> b!1646663 (= c!267795 (>= (+ 0 1) call!105804))))

(declare-fun b!1646664 () Bool)

(assert (=> b!1646664 (= e!1056050 e!1056051)))

(declare-fun c!267797 () Bool)

(assert (=> b!1646664 (= c!267797 (<= (+ 0 1) 0))))

(declare-fun b!1646665 () Bool)

(assert (=> b!1646665 (= e!1056052 (= (size!14468 lt!608438) e!1056048))))

(declare-fun c!267794 () Bool)

(assert (=> b!1646665 (= c!267794 (<= (+ 0 1) 0))))

(declare-fun bm!105799 () Bool)

(assert (=> bm!105799 (= call!105804 (size!14468 lt!608063))))

(assert (= (and d!496098 c!267796) b!1646657))

(assert (= (and d!496098 (not c!267796)) b!1646664))

(assert (= (and b!1646664 c!267797) b!1646661))

(assert (= (and b!1646664 (not c!267797)) b!1646662))

(assert (= (and d!496098 res!737824) b!1646665))

(assert (= (and b!1646665 c!267794) b!1646658))

(assert (= (and b!1646665 (not c!267794)) b!1646663))

(assert (= (and b!1646663 c!267795) b!1646660))

(assert (= (and b!1646663 (not c!267795)) b!1646659))

(assert (= (or b!1646658 b!1646663 b!1646659) bm!105799))

(declare-fun m!1991817 () Bool)

(assert (=> d!496098 m!1991817))

(declare-fun m!1991819 () Bool)

(assert (=> d!496098 m!1991819))

(declare-fun m!1991821 () Bool)

(assert (=> b!1646662 m!1991821))

(declare-fun m!1991823 () Bool)

(assert (=> b!1646665 m!1991823))

(assert (=> bm!105799 m!1991815))

(assert (=> b!1645988 d!496098))

(declare-fun d!496100 () Bool)

(declare-fun lt!608445 () BalanceConc!12052)

(assert (=> d!496100 (= (list!7205 lt!608445) (printListTailRec!385 thiss!17113 (dropList!658 lt!607811 (+ 0 1)) (list!7205 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607811 0))))))))

(declare-fun e!1056054 () BalanceConc!12052)

(assert (=> d!496100 (= lt!608445 e!1056054)))

(declare-fun c!267798 () Bool)

(assert (=> d!496100 (= c!267798 (>= (+ 0 1) (size!14465 lt!607811)))))

(declare-fun e!1056053 () Bool)

(assert (=> d!496100 e!1056053))

(declare-fun res!737825 () Bool)

(assert (=> d!496100 (=> (not res!737825) (not e!1056053))))

(assert (=> d!496100 (= res!737825 (>= (+ 0 1) 0))))

(assert (=> d!496100 (= (printTailRec!883 thiss!17113 lt!607811 (+ 0 1) (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607811 0)))) lt!608445)))

(declare-fun b!1646666 () Bool)

(assert (=> b!1646666 (= e!1056053 (<= (+ 0 1) (size!14465 lt!607811)))))

(declare-fun b!1646667 () Bool)

(assert (=> b!1646667 (= e!1056054 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607811 0))))))

(declare-fun b!1646668 () Bool)

(assert (=> b!1646668 (= e!1056054 (printTailRec!883 thiss!17113 lt!607811 (+ 0 1 1) (++!4896 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607811 0))) (charsOf!1852 (apply!4757 lt!607811 (+ 0 1))))))))

(declare-fun lt!608441 () List!18229)

(assert (=> b!1646668 (= lt!608441 (list!7206 lt!607811))))

(declare-fun lt!608444 () Unit!30071)

(assert (=> b!1646668 (= lt!608444 (lemmaDropApply!592 lt!608441 (+ 0 1)))))

(assert (=> b!1646668 (= (head!3607 (drop!904 lt!608441 (+ 0 1))) (apply!4758 lt!608441 (+ 0 1)))))

(declare-fun lt!608442 () Unit!30071)

(assert (=> b!1646668 (= lt!608442 lt!608444)))

(declare-fun lt!608439 () List!18229)

(assert (=> b!1646668 (= lt!608439 (list!7206 lt!607811))))

(declare-fun lt!608440 () Unit!30071)

(assert (=> b!1646668 (= lt!608440 (lemmaDropTail!572 lt!608439 (+ 0 1)))))

(assert (=> b!1646668 (= (tail!2428 (drop!904 lt!608439 (+ 0 1))) (drop!904 lt!608439 (+ 0 1 1)))))

(declare-fun lt!608443 () Unit!30071)

(assert (=> b!1646668 (= lt!608443 lt!608440)))

(assert (= (and d!496100 res!737825) b!1646666))

(assert (= (and d!496100 c!267798) b!1646667))

(assert (= (and d!496100 (not c!267798)) b!1646668))

(declare-fun m!1991825 () Bool)

(assert (=> d!496100 m!1991825))

(declare-fun m!1991827 () Bool)

(assert (=> d!496100 m!1991827))

(declare-fun m!1991829 () Bool)

(assert (=> d!496100 m!1991829))

(assert (=> d!496100 m!1990783))

(assert (=> d!496100 m!1991827))

(declare-fun m!1991831 () Bool)

(assert (=> d!496100 m!1991831))

(assert (=> d!496100 m!1991825))

(assert (=> d!496100 m!1990777))

(assert (=> b!1646666 m!1990777))

(declare-fun m!1991833 () Bool)

(assert (=> b!1646668 m!1991833))

(declare-fun m!1991835 () Bool)

(assert (=> b!1646668 m!1991835))

(declare-fun m!1991837 () Bool)

(assert (=> b!1646668 m!1991837))

(declare-fun m!1991839 () Bool)

(assert (=> b!1646668 m!1991839))

(declare-fun m!1991841 () Bool)

(assert (=> b!1646668 m!1991841))

(declare-fun m!1991843 () Bool)

(assert (=> b!1646668 m!1991843))

(assert (=> b!1646668 m!1990783))

(assert (=> b!1646668 m!1991843))

(assert (=> b!1646668 m!1991837))

(declare-fun m!1991845 () Bool)

(assert (=> b!1646668 m!1991845))

(declare-fun m!1991847 () Bool)

(assert (=> b!1646668 m!1991847))

(declare-fun m!1991849 () Bool)

(assert (=> b!1646668 m!1991849))

(declare-fun m!1991851 () Bool)

(assert (=> b!1646668 m!1991851))

(assert (=> b!1646668 m!1990727))

(assert (=> b!1646668 m!1991841))

(declare-fun m!1991853 () Bool)

(assert (=> b!1646668 m!1991853))

(assert (=> b!1646668 m!1991835))

(declare-fun m!1991855 () Bool)

(assert (=> b!1646668 m!1991855))

(assert (=> b!1646668 m!1991845))

(assert (=> b!1645988 d!496100))

(declare-fun b!1646669 () Bool)

(declare-fun e!1056057 () List!18229)

(assert (=> b!1646669 (= e!1056057 Nil!18159)))

(declare-fun b!1646670 () Bool)

(declare-fun e!1056055 () Int)

(declare-fun call!105805 () Int)

(assert (=> b!1646670 (= e!1056055 call!105805)))

(declare-fun b!1646671 () Bool)

(declare-fun e!1056056 () Int)

(assert (=> b!1646671 (= e!1056056 (- call!105805 0))))

(declare-fun b!1646672 () Bool)

(assert (=> b!1646672 (= e!1056056 0)))

(declare-fun d!496102 () Bool)

(declare-fun e!1056059 () Bool)

(assert (=> d!496102 e!1056059))

(declare-fun res!737826 () Bool)

(assert (=> d!496102 (=> (not res!737826) (not e!1056059))))

(declare-fun lt!608446 () List!18229)

(assert (=> d!496102 (= res!737826 (= ((_ map implies) (content!2518 lt!608446) (content!2518 lt!608063)) ((as const (InoxSet Token!5972)) true)))))

(assert (=> d!496102 (= lt!608446 e!1056057)))

(declare-fun c!267801 () Bool)

(assert (=> d!496102 (= c!267801 ((_ is Nil!18159) lt!608063))))

(assert (=> d!496102 (= (drop!904 lt!608063 0) lt!608446)))

(declare-fun b!1646673 () Bool)

(declare-fun e!1056058 () List!18229)

(assert (=> b!1646673 (= e!1056058 lt!608063)))

(declare-fun b!1646674 () Bool)

(assert (=> b!1646674 (= e!1056058 (drop!904 (t!150452 lt!608063) (- 0 1)))))

(declare-fun b!1646675 () Bool)

(assert (=> b!1646675 (= e!1056055 e!1056056)))

(declare-fun c!267800 () Bool)

(assert (=> b!1646675 (= c!267800 (>= 0 call!105805))))

(declare-fun b!1646676 () Bool)

(assert (=> b!1646676 (= e!1056057 e!1056058)))

(declare-fun c!267802 () Bool)

(assert (=> b!1646676 (= c!267802 (<= 0 0))))

(declare-fun b!1646677 () Bool)

(assert (=> b!1646677 (= e!1056059 (= (size!14468 lt!608446) e!1056055))))

(declare-fun c!267799 () Bool)

(assert (=> b!1646677 (= c!267799 (<= 0 0))))

(declare-fun bm!105800 () Bool)

(assert (=> bm!105800 (= call!105805 (size!14468 lt!608063))))

(assert (= (and d!496102 c!267801) b!1646669))

(assert (= (and d!496102 (not c!267801)) b!1646676))

(assert (= (and b!1646676 c!267802) b!1646673))

(assert (= (and b!1646676 (not c!267802)) b!1646674))

(assert (= (and d!496102 res!737826) b!1646677))

(assert (= (and b!1646677 c!267799) b!1646670))

(assert (= (and b!1646677 (not c!267799)) b!1646675))

(assert (= (and b!1646675 c!267800) b!1646672))

(assert (= (and b!1646675 (not c!267800)) b!1646671))

(assert (= (or b!1646670 b!1646675 b!1646671) bm!105800))

(declare-fun m!1991857 () Bool)

(assert (=> d!496102 m!1991857))

(assert (=> d!496102 m!1991819))

(declare-fun m!1991859 () Bool)

(assert (=> b!1646674 m!1991859))

(declare-fun m!1991861 () Bool)

(assert (=> b!1646677 m!1991861))

(assert (=> bm!105800 m!1991815))

(assert (=> b!1645988 d!496102))

(declare-fun d!496104 () Bool)

(assert (=> d!496104 (= (list!7206 lt!607811) (list!7209 (c!267637 lt!607811)))))

(declare-fun bs!396133 () Bool)

(assert (= bs!396133 d!496104))

(assert (=> bs!396133 m!1991617))

(assert (=> b!1645988 d!496104))

(declare-fun d!496106 () Bool)

(declare-fun lt!608447 () BalanceConc!12052)

(assert (=> d!496106 (= (list!7205 lt!608447) (originalCharacters!4017 (apply!4757 lt!607811 0)))))

(assert (=> d!496106 (= lt!608447 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0)))) (value!100958 (apply!4757 lt!607811 0))))))

(assert (=> d!496106 (= (charsOf!1852 (apply!4757 lt!607811 0)) lt!608447)))

(declare-fun b_lambda!51753 () Bool)

(assert (=> (not b_lambda!51753) (not d!496106)))

(declare-fun tb!94287 () Bool)

(declare-fun t!150529 () Bool)

(assert (=> (and b!1645821 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0))))) t!150529) tb!94287))

(declare-fun b!1646678 () Bool)

(declare-fun e!1056060 () Bool)

(declare-fun tp!476992 () Bool)

(assert (=> b!1646678 (= e!1056060 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0)))) (value!100958 (apply!4757 lt!607811 0))))) tp!476992))))

(declare-fun result!113890 () Bool)

(assert (=> tb!94287 (= result!113890 (and (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0)))) (value!100958 (apply!4757 lt!607811 0)))) e!1056060))))

(assert (= tb!94287 b!1646678))

(declare-fun m!1991863 () Bool)

(assert (=> b!1646678 m!1991863))

(declare-fun m!1991865 () Bool)

(assert (=> tb!94287 m!1991865))

(assert (=> d!496106 t!150529))

(declare-fun b_and!116893 () Bool)

(assert (= b_and!116885 (and (=> t!150529 result!113890) b_and!116893)))

(declare-fun tb!94289 () Bool)

(declare-fun t!150531 () Bool)

(assert (=> (and b!1645826 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0))))) t!150531) tb!94289))

(declare-fun result!113892 () Bool)

(assert (= result!113892 result!113890))

(assert (=> d!496106 t!150531))

(declare-fun b_and!116895 () Bool)

(assert (= b_and!116887 (and (=> t!150531 result!113892) b_and!116895)))

(declare-fun t!150533 () Bool)

(declare-fun tb!94291 () Bool)

(assert (=> (and b!1646231 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0))))) t!150533) tb!94291))

(declare-fun result!113894 () Bool)

(assert (= result!113894 result!113890))

(assert (=> d!496106 t!150533))

(declare-fun b_and!116897 () Bool)

(assert (= b_and!116889 (and (=> t!150533 result!113894) b_and!116897)))

(declare-fun t!150535 () Bool)

(declare-fun tb!94293 () Bool)

(assert (=> (and b!1646242 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0))))) t!150535) tb!94293))

(declare-fun result!113896 () Bool)

(assert (= result!113896 result!113890))

(assert (=> d!496106 t!150535))

(declare-fun b_and!116899 () Bool)

(assert (= b_and!116891 (and (=> t!150535 result!113896) b_and!116899)))

(declare-fun m!1991867 () Bool)

(assert (=> d!496106 m!1991867))

(declare-fun m!1991869 () Bool)

(assert (=> d!496106 m!1991869))

(assert (=> b!1645988 d!496106))

(declare-fun b!1646679 () Bool)

(declare-fun e!1056063 () List!18229)

(assert (=> b!1646679 (= e!1056063 Nil!18159)))

(declare-fun b!1646680 () Bool)

(declare-fun e!1056061 () Int)

(declare-fun call!105806 () Int)

(assert (=> b!1646680 (= e!1056061 call!105806)))

(declare-fun b!1646681 () Bool)

(declare-fun e!1056062 () Int)

(assert (=> b!1646681 (= e!1056062 (- call!105806 0))))

(declare-fun b!1646682 () Bool)

(assert (=> b!1646682 (= e!1056062 0)))

(declare-fun d!496108 () Bool)

(declare-fun e!1056065 () Bool)

(assert (=> d!496108 e!1056065))

(declare-fun res!737827 () Bool)

(assert (=> d!496108 (=> (not res!737827) (not e!1056065))))

(declare-fun lt!608448 () List!18229)

(assert (=> d!496108 (= res!737827 (= ((_ map implies) (content!2518 lt!608448) (content!2518 lt!608065)) ((as const (InoxSet Token!5972)) true)))))

(assert (=> d!496108 (= lt!608448 e!1056063)))

(declare-fun c!267805 () Bool)

(assert (=> d!496108 (= c!267805 ((_ is Nil!18159) lt!608065))))

(assert (=> d!496108 (= (drop!904 lt!608065 0) lt!608448)))

(declare-fun b!1646683 () Bool)

(declare-fun e!1056064 () List!18229)

(assert (=> b!1646683 (= e!1056064 lt!608065)))

(declare-fun b!1646684 () Bool)

(assert (=> b!1646684 (= e!1056064 (drop!904 (t!150452 lt!608065) (- 0 1)))))

(declare-fun b!1646685 () Bool)

(assert (=> b!1646685 (= e!1056061 e!1056062)))

(declare-fun c!267804 () Bool)

(assert (=> b!1646685 (= c!267804 (>= 0 call!105806))))

(declare-fun b!1646686 () Bool)

(assert (=> b!1646686 (= e!1056063 e!1056064)))

(declare-fun c!267806 () Bool)

(assert (=> b!1646686 (= c!267806 (<= 0 0))))

(declare-fun b!1646687 () Bool)

(assert (=> b!1646687 (= e!1056065 (= (size!14468 lt!608448) e!1056061))))

(declare-fun c!267803 () Bool)

(assert (=> b!1646687 (= c!267803 (<= 0 0))))

(declare-fun bm!105801 () Bool)

(assert (=> bm!105801 (= call!105806 (size!14468 lt!608065))))

(assert (= (and d!496108 c!267805) b!1646679))

(assert (= (and d!496108 (not c!267805)) b!1646686))

(assert (= (and b!1646686 c!267806) b!1646683))

(assert (= (and b!1646686 (not c!267806)) b!1646684))

(assert (= (and d!496108 res!737827) b!1646687))

(assert (= (and b!1646687 c!267803) b!1646680))

(assert (= (and b!1646687 (not c!267803)) b!1646685))

(assert (= (and b!1646685 c!267804) b!1646682))

(assert (= (and b!1646685 (not c!267804)) b!1646681))

(assert (= (or b!1646680 b!1646685 b!1646681) bm!105801))

(declare-fun m!1991871 () Bool)

(assert (=> d!496108 m!1991871))

(declare-fun m!1991873 () Bool)

(assert (=> d!496108 m!1991873))

(declare-fun m!1991875 () Bool)

(assert (=> b!1646684 m!1991875))

(declare-fun m!1991877 () Bool)

(assert (=> b!1646687 m!1991877))

(assert (=> bm!105801 m!1991783))

(assert (=> b!1645988 d!496108))

(declare-fun d!496110 () Bool)

(assert (=> d!496110 (= (list!7205 lt!608032) (list!7210 (c!267635 lt!608032)))))

(declare-fun bs!396134 () Bool)

(assert (= bs!396134 d!496110))

(declare-fun m!1991879 () Bool)

(assert (=> bs!396134 m!1991879))

(assert (=> d!495818 d!496110))

(declare-fun d!496112 () Bool)

(declare-fun c!267807 () Bool)

(assert (=> d!496112 (= c!267807 ((_ is Cons!18159) (list!7206 lt!607811)))))

(declare-fun e!1056066 () List!18228)

(assert (=> d!496112 (= (printList!945 thiss!17113 (list!7206 lt!607811)) e!1056066)))

(declare-fun b!1646688 () Bool)

(assert (=> b!1646688 (= e!1056066 (++!4894 (list!7205 (charsOf!1852 (h!23560 (list!7206 lt!607811)))) (printList!945 thiss!17113 (t!150452 (list!7206 lt!607811)))))))

(declare-fun b!1646689 () Bool)

(assert (=> b!1646689 (= e!1056066 Nil!18158)))

(assert (= (and d!496112 c!267807) b!1646688))

(assert (= (and d!496112 (not c!267807)) b!1646689))

(declare-fun m!1991881 () Bool)

(assert (=> b!1646688 m!1991881))

(assert (=> b!1646688 m!1991881))

(declare-fun m!1991883 () Bool)

(assert (=> b!1646688 m!1991883))

(declare-fun m!1991885 () Bool)

(assert (=> b!1646688 m!1991885))

(assert (=> b!1646688 m!1991883))

(assert (=> b!1646688 m!1991885))

(declare-fun m!1991887 () Bool)

(assert (=> b!1646688 m!1991887))

(assert (=> d!495818 d!496112))

(assert (=> d!495818 d!496104))

(assert (=> d!495818 d!495822))

(declare-fun d!496114 () Bool)

(assert (=> d!496114 (= (list!7205 lt!608160) (list!7210 (c!267635 lt!608160)))))

(declare-fun bs!396135 () Bool)

(assert (= bs!396135 d!496114))

(declare-fun m!1991889 () Bool)

(assert (=> bs!396135 m!1991889))

(assert (=> d!495892 d!496114))

(declare-fun d!496116 () Bool)

(declare-fun c!267808 () Bool)

(assert (=> d!496116 (= c!267808 ((_ is Cons!18159) (list!7206 (seqFromList!2146 tokens!457))))))

(declare-fun e!1056067 () List!18228)

(assert (=> d!496116 (= (printList!945 thiss!17113 (list!7206 (seqFromList!2146 tokens!457))) e!1056067)))

(declare-fun b!1646690 () Bool)

(assert (=> b!1646690 (= e!1056067 (++!4894 (list!7205 (charsOf!1852 (h!23560 (list!7206 (seqFromList!2146 tokens!457))))) (printList!945 thiss!17113 (t!150452 (list!7206 (seqFromList!2146 tokens!457))))))))

(declare-fun b!1646691 () Bool)

(assert (=> b!1646691 (= e!1056067 Nil!18158)))

(assert (= (and d!496116 c!267808) b!1646690))

(assert (= (and d!496116 (not c!267808)) b!1646691))

(declare-fun m!1991891 () Bool)

(assert (=> b!1646690 m!1991891))

(assert (=> b!1646690 m!1991891))

(declare-fun m!1991893 () Bool)

(assert (=> b!1646690 m!1991893))

(declare-fun m!1991895 () Bool)

(assert (=> b!1646690 m!1991895))

(assert (=> b!1646690 m!1991893))

(assert (=> b!1646690 m!1991895))

(declare-fun m!1991897 () Bool)

(assert (=> b!1646690 m!1991897))

(assert (=> d!495892 d!496116))

(declare-fun d!496118 () Bool)

(assert (=> d!496118 (= (list!7206 (seqFromList!2146 tokens!457)) (list!7209 (c!267637 (seqFromList!2146 tokens!457))))))

(declare-fun bs!396136 () Bool)

(assert (= bs!396136 d!496118))

(declare-fun m!1991899 () Bool)

(assert (=> bs!396136 m!1991899))

(assert (=> d!495892 d!496118))

(declare-fun d!496120 () Bool)

(declare-fun lt!608455 () BalanceConc!12052)

(assert (=> d!496120 (= (list!7205 lt!608455) (printListTailRec!385 thiss!17113 (dropList!658 (seqFromList!2146 tokens!457) 0) (list!7205 (BalanceConc!12053 Empty!6054))))))

(declare-fun e!1056069 () BalanceConc!12052)

(assert (=> d!496120 (= lt!608455 e!1056069)))

(declare-fun c!267809 () Bool)

(assert (=> d!496120 (= c!267809 (>= 0 (size!14465 (seqFromList!2146 tokens!457))))))

(declare-fun e!1056068 () Bool)

(assert (=> d!496120 e!1056068))

(declare-fun res!737828 () Bool)

(assert (=> d!496120 (=> (not res!737828) (not e!1056068))))

(assert (=> d!496120 (= res!737828 (>= 0 0))))

(assert (=> d!496120 (= (printTailRec!883 thiss!17113 (seqFromList!2146 tokens!457) 0 (BalanceConc!12053 Empty!6054)) lt!608455)))

(declare-fun b!1646692 () Bool)

(assert (=> b!1646692 (= e!1056068 (<= 0 (size!14465 (seqFromList!2146 tokens!457))))))

(declare-fun b!1646693 () Bool)

(assert (=> b!1646693 (= e!1056069 (BalanceConc!12053 Empty!6054))))

(declare-fun b!1646694 () Bool)

(assert (=> b!1646694 (= e!1056069 (printTailRec!883 thiss!17113 (seqFromList!2146 tokens!457) (+ 0 1) (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 (seqFromList!2146 tokens!457) 0)))))))

(declare-fun lt!608451 () List!18229)

(assert (=> b!1646694 (= lt!608451 (list!7206 (seqFromList!2146 tokens!457)))))

(declare-fun lt!608454 () Unit!30071)

(assert (=> b!1646694 (= lt!608454 (lemmaDropApply!592 lt!608451 0))))

(assert (=> b!1646694 (= (head!3607 (drop!904 lt!608451 0)) (apply!4758 lt!608451 0))))

(declare-fun lt!608452 () Unit!30071)

(assert (=> b!1646694 (= lt!608452 lt!608454)))

(declare-fun lt!608449 () List!18229)

(assert (=> b!1646694 (= lt!608449 (list!7206 (seqFromList!2146 tokens!457)))))

(declare-fun lt!608450 () Unit!30071)

(assert (=> b!1646694 (= lt!608450 (lemmaDropTail!572 lt!608449 0))))

(assert (=> b!1646694 (= (tail!2428 (drop!904 lt!608449 0)) (drop!904 lt!608449 (+ 0 1)))))

(declare-fun lt!608453 () Unit!30071)

(assert (=> b!1646694 (= lt!608453 lt!608450)))

(assert (= (and d!496120 res!737828) b!1646692))

(assert (= (and d!496120 c!267809) b!1646693))

(assert (= (and d!496120 (not c!267809)) b!1646694))

(declare-fun m!1991901 () Bool)

(assert (=> d!496120 m!1991901))

(assert (=> d!496120 m!1990771))

(declare-fun m!1991903 () Bool)

(assert (=> d!496120 m!1991903))

(assert (=> d!496120 m!1990771))

(declare-fun m!1991905 () Bool)

(assert (=> d!496120 m!1991905))

(assert (=> d!496120 m!1990335))

(assert (=> d!496120 m!1991901))

(assert (=> d!496120 m!1990335))

(declare-fun m!1991907 () Bool)

(assert (=> d!496120 m!1991907))

(assert (=> b!1646692 m!1990335))

(assert (=> b!1646692 m!1991907))

(declare-fun m!1991909 () Bool)

(assert (=> b!1646694 m!1991909))

(declare-fun m!1991911 () Bool)

(assert (=> b!1646694 m!1991911))

(assert (=> b!1646694 m!1990335))

(declare-fun m!1991913 () Bool)

(assert (=> b!1646694 m!1991913))

(declare-fun m!1991915 () Bool)

(assert (=> b!1646694 m!1991915))

(declare-fun m!1991917 () Bool)

(assert (=> b!1646694 m!1991917))

(declare-fun m!1991919 () Bool)

(assert (=> b!1646694 m!1991919))

(assert (=> b!1646694 m!1991919))

(assert (=> b!1646694 m!1991913))

(declare-fun m!1991921 () Bool)

(assert (=> b!1646694 m!1991921))

(declare-fun m!1991923 () Bool)

(assert (=> b!1646694 m!1991923))

(declare-fun m!1991925 () Bool)

(assert (=> b!1646694 m!1991925))

(declare-fun m!1991927 () Bool)

(assert (=> b!1646694 m!1991927))

(assert (=> b!1646694 m!1990335))

(assert (=> b!1646694 m!1991077))

(assert (=> b!1646694 m!1990335))

(assert (=> b!1646694 m!1991917))

(declare-fun m!1991929 () Bool)

(assert (=> b!1646694 m!1991929))

(assert (=> b!1646694 m!1991911))

(declare-fun m!1991931 () Bool)

(assert (=> b!1646694 m!1991931))

(assert (=> b!1646694 m!1991921))

(assert (=> d!495892 d!496120))

(declare-fun b!1646706 () Bool)

(declare-fun e!1056075 () List!18228)

(assert (=> b!1646706 (= e!1056075 (++!4894 (list!7210 (left!14557 (c!267635 lt!607812))) (list!7210 (right!14887 (c!267635 lt!607812)))))))

(declare-fun b!1646704 () Bool)

(declare-fun e!1056074 () List!18228)

(assert (=> b!1646704 (= e!1056074 e!1056075)))

(declare-fun c!267815 () Bool)

(assert (=> b!1646704 (= c!267815 ((_ is Leaf!8876) (c!267635 lt!607812)))))

(declare-fun d!496122 () Bool)

(declare-fun c!267814 () Bool)

(assert (=> d!496122 (= c!267814 ((_ is Empty!6054) (c!267635 lt!607812)))))

(assert (=> d!496122 (= (list!7210 (c!267635 lt!607812)) e!1056074)))

(declare-fun b!1646705 () Bool)

(declare-fun list!7214 (IArray!12113) List!18228)

(assert (=> b!1646705 (= e!1056075 (list!7214 (xs!8890 (c!267635 lt!607812))))))

(declare-fun b!1646703 () Bool)

(assert (=> b!1646703 (= e!1056074 Nil!18158)))

(assert (= (and d!496122 c!267814) b!1646703))

(assert (= (and d!496122 (not c!267814)) b!1646704))

(assert (= (and b!1646704 c!267815) b!1646705))

(assert (= (and b!1646704 (not c!267815)) b!1646706))

(declare-fun m!1991933 () Bool)

(assert (=> b!1646706 m!1991933))

(declare-fun m!1991935 () Bool)

(assert (=> b!1646706 m!1991935))

(assert (=> b!1646706 m!1991933))

(assert (=> b!1646706 m!1991935))

(declare-fun m!1991937 () Bool)

(assert (=> b!1646706 m!1991937))

(declare-fun m!1991939 () Bool)

(assert (=> b!1646705 m!1991939))

(assert (=> d!495904 d!496122))

(declare-fun d!496124 () Bool)

(declare-fun lt!608456 () Int)

(assert (=> d!496124 (= lt!608456 (size!14468 (list!7206 (_1!10315 lt!607943))))))

(assert (=> d!496124 (= lt!608456 (size!14469 (c!267637 (_1!10315 lt!607943))))))

(assert (=> d!496124 (= (size!14465 (_1!10315 lt!607943)) lt!608456)))

(declare-fun bs!396137 () Bool)

(assert (= bs!396137 d!496124))

(assert (=> bs!396137 m!1990611))

(assert (=> bs!396137 m!1990611))

(declare-fun m!1991941 () Bool)

(assert (=> bs!396137 m!1991941))

(declare-fun m!1991943 () Bool)

(assert (=> bs!396137 m!1991943))

(assert (=> d!495798 d!496124))

(declare-fun b!1646707 () Bool)

(declare-fun e!1056077 () tuple2!17826)

(declare-fun lt!608467 () BalanceConc!12052)

(assert (=> b!1646707 (= e!1056077 (tuple2!17827 (BalanceConc!12055 Empty!6055) lt!608467))))

(declare-fun lt!608485 () tuple2!17826)

(declare-fun lt!608490 () Option!3439)

(declare-fun b!1646708 () Bool)

(assert (=> b!1646708 (= lt!608485 (lexRec!372 thiss!17113 rules!1846 (_2!10318 (v!24589 lt!608490))))))

(assert (=> b!1646708 (= e!1056077 (tuple2!17827 (prepend!759 (_1!10315 lt!608485) (_1!10318 (v!24589 lt!608490))) (_2!10315 lt!608485)))))

(declare-fun d!496126 () Bool)

(declare-fun e!1056079 () Bool)

(assert (=> d!496126 e!1056079))

(declare-fun res!737829 () Bool)

(assert (=> d!496126 (=> (not res!737829) (not e!1056079))))

(declare-fun lt!608469 () tuple2!17826)

(assert (=> d!496126 (= res!737829 (= (list!7206 (_1!10315 lt!608469)) (list!7206 (_1!10315 (lexRec!372 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(declare-fun e!1056076 () tuple2!17826)

(assert (=> d!496126 (= lt!608469 e!1056076)))

(declare-fun c!267817 () Bool)

(declare-fun lt!608465 () Option!3439)

(assert (=> d!496126 (= c!267817 ((_ is Some!3438) lt!608465))))

(assert (=> d!496126 (= lt!608465 (maxPrefixZipperSequenceV2!267 thiss!17113 rules!1846 (seqFromList!2145 lt!607800) (seqFromList!2145 lt!607800)))))

(declare-fun lt!608481 () Unit!30071)

(declare-fun lt!608478 () Unit!30071)

(assert (=> d!496126 (= lt!608481 lt!608478)))

(declare-fun lt!608457 () List!18228)

(declare-fun lt!608472 () List!18228)

(assert (=> d!496126 (isSuffix!418 lt!608457 (++!4894 lt!608472 lt!608457))))

(assert (=> d!496126 (= lt!608478 (lemmaConcatTwoListThenFSndIsSuffix!319 lt!608472 lt!608457))))

(assert (=> d!496126 (= lt!608457 (list!7205 (seqFromList!2145 lt!607800)))))

(assert (=> d!496126 (= lt!608472 (list!7205 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!496126 (= (lexTailRecV2!586 thiss!17113 rules!1846 (seqFromList!2145 lt!607800) (BalanceConc!12053 Empty!6054) (seqFromList!2145 lt!607800) (BalanceConc!12055 Empty!6055)) lt!608469)))

(declare-fun b!1646709 () Bool)

(declare-fun e!1056078 () tuple2!17826)

(assert (=> b!1646709 (= e!1056078 (tuple2!17827 (BalanceConc!12055 Empty!6055) (seqFromList!2145 lt!607800)))))

(declare-fun b!1646710 () Bool)

(assert (=> b!1646710 (= e!1056079 (= (list!7205 (_2!10315 lt!608469)) (list!7205 (_2!10315 (lexRec!372 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(declare-fun lt!608476 () BalanceConc!12052)

(declare-fun b!1646711 () Bool)

(assert (=> b!1646711 (= e!1056076 (lexTailRecV2!586 thiss!17113 rules!1846 (seqFromList!2145 lt!607800) lt!608476 (_2!10318 (v!24589 lt!608465)) (append!555 (BalanceConc!12055 Empty!6055) (_1!10318 (v!24589 lt!608465)))))))

(declare-fun lt!608488 () tuple2!17826)

(assert (=> b!1646711 (= lt!608488 (lexRec!372 thiss!17113 rules!1846 (_2!10318 (v!24589 lt!608465))))))

(declare-fun lt!608468 () List!18228)

(assert (=> b!1646711 (= lt!608468 (list!7205 (BalanceConc!12053 Empty!6054)))))

(declare-fun lt!608489 () List!18228)

(assert (=> b!1646711 (= lt!608489 (list!7205 (charsOf!1852 (_1!10318 (v!24589 lt!608465)))))))

(declare-fun lt!608462 () List!18228)

(assert (=> b!1646711 (= lt!608462 (list!7205 (_2!10318 (v!24589 lt!608465))))))

(declare-fun lt!608466 () Unit!30071)

(assert (=> b!1646711 (= lt!608466 (lemmaConcatAssociativity!1020 lt!608468 lt!608489 lt!608462))))

(assert (=> b!1646711 (= (++!4894 (++!4894 lt!608468 lt!608489) lt!608462) (++!4894 lt!608468 (++!4894 lt!608489 lt!608462)))))

(declare-fun lt!608473 () Unit!30071)

(assert (=> b!1646711 (= lt!608473 lt!608466)))

(declare-fun lt!608470 () Option!3439)

(assert (=> b!1646711 (= lt!608470 (maxPrefixZipperSequence!714 thiss!17113 rules!1846 (seqFromList!2145 lt!607800)))))

(declare-fun c!267818 () Bool)

(assert (=> b!1646711 (= c!267818 ((_ is Some!3438) lt!608470))))

(assert (=> b!1646711 (= (lexRec!372 thiss!17113 rules!1846 (seqFromList!2145 lt!607800)) e!1056078)))

(declare-fun lt!608460 () Unit!30071)

(declare-fun Unit!30126 () Unit!30071)

(assert (=> b!1646711 (= lt!608460 Unit!30126)))

(declare-fun lt!608461 () List!18229)

(assert (=> b!1646711 (= lt!608461 (list!7206 (BalanceConc!12055 Empty!6055)))))

(declare-fun lt!608464 () List!18229)

(assert (=> b!1646711 (= lt!608464 (Cons!18159 (_1!10318 (v!24589 lt!608465)) Nil!18159))))

(declare-fun lt!608458 () List!18229)

(assert (=> b!1646711 (= lt!608458 (list!7206 (_1!10315 lt!608488)))))

(declare-fun lt!608484 () Unit!30071)

(assert (=> b!1646711 (= lt!608484 (lemmaConcatAssociativity!1021 lt!608461 lt!608464 lt!608458))))

(assert (=> b!1646711 (= (++!4899 (++!4899 lt!608461 lt!608464) lt!608458) (++!4899 lt!608461 (++!4899 lt!608464 lt!608458)))))

(declare-fun lt!608487 () Unit!30071)

(assert (=> b!1646711 (= lt!608487 lt!608484)))

(declare-fun lt!608480 () List!18228)

(assert (=> b!1646711 (= lt!608480 (++!4894 (list!7205 (BalanceConc!12053 Empty!6054)) (list!7205 (charsOf!1852 (_1!10318 (v!24589 lt!608465))))))))

(declare-fun lt!608477 () List!18228)

(assert (=> b!1646711 (= lt!608477 (list!7205 (_2!10318 (v!24589 lt!608465))))))

(declare-fun lt!608479 () List!18229)

(assert (=> b!1646711 (= lt!608479 (list!7206 (append!555 (BalanceConc!12055 Empty!6055) (_1!10318 (v!24589 lt!608465)))))))

(declare-fun lt!608483 () Unit!30071)

(assert (=> b!1646711 (= lt!608483 (lemmaLexThenLexPrefix!260 thiss!17113 rules!1846 lt!608480 lt!608477 lt!608479 (list!7206 (_1!10315 lt!608488)) (list!7205 (_2!10315 lt!608488))))))

(assert (=> b!1646711 (= (lexList!863 thiss!17113 rules!1846 lt!608480) (tuple2!17831 lt!608479 Nil!18158))))

(declare-fun lt!608471 () Unit!30071)

(assert (=> b!1646711 (= lt!608471 lt!608483)))

(assert (=> b!1646711 (= lt!608467 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (_1!10318 (v!24589 lt!608465)))))))

(assert (=> b!1646711 (= lt!608490 (maxPrefixZipperSequence!714 thiss!17113 rules!1846 lt!608467))))

(declare-fun c!267816 () Bool)

(assert (=> b!1646711 (= c!267816 ((_ is Some!3438) lt!608490))))

(assert (=> b!1646711 (= (lexRec!372 thiss!17113 rules!1846 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (_1!10318 (v!24589 lt!608465))))) e!1056077)))

(declare-fun lt!608459 () Unit!30071)

(declare-fun Unit!30128 () Unit!30071)

(assert (=> b!1646711 (= lt!608459 Unit!30128)))

(assert (=> b!1646711 (= lt!608476 (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (_1!10318 (v!24589 lt!608465)))))))

(declare-fun lt!608482 () List!18228)

(assert (=> b!1646711 (= lt!608482 (list!7205 lt!608476))))

(declare-fun lt!608475 () List!18228)

(assert (=> b!1646711 (= lt!608475 (list!7205 (_2!10318 (v!24589 lt!608465))))))

(declare-fun lt!608463 () Unit!30071)

(assert (=> b!1646711 (= lt!608463 (lemmaConcatTwoListThenFSndIsSuffix!319 lt!608482 lt!608475))))

(assert (=> b!1646711 (isSuffix!418 lt!608475 (++!4894 lt!608482 lt!608475))))

(declare-fun lt!608474 () Unit!30071)

(assert (=> b!1646711 (= lt!608474 lt!608463)))

(declare-fun lt!608486 () tuple2!17826)

(declare-fun b!1646712 () Bool)

(assert (=> b!1646712 (= lt!608486 (lexRec!372 thiss!17113 rules!1846 (_2!10318 (v!24589 lt!608470))))))

(assert (=> b!1646712 (= e!1056078 (tuple2!17827 (prepend!759 (_1!10315 lt!608486) (_1!10318 (v!24589 lt!608470))) (_2!10315 lt!608486)))))

(declare-fun b!1646713 () Bool)

(assert (=> b!1646713 (= e!1056076 (tuple2!17827 (BalanceConc!12055 Empty!6055) (seqFromList!2145 lt!607800)))))

(assert (= (and d!496126 c!267817) b!1646711))

(assert (= (and d!496126 (not c!267817)) b!1646713))

(assert (= (and b!1646711 c!267818) b!1646712))

(assert (= (and b!1646711 (not c!267818)) b!1646709))

(assert (= (and b!1646711 c!267816) b!1646708))

(assert (= (and b!1646711 (not c!267816)) b!1646707))

(assert (= (and d!496126 res!737829) b!1646710))

(declare-fun m!1991945 () Bool)

(assert (=> d!496126 m!1991945))

(declare-fun m!1991947 () Bool)

(assert (=> d!496126 m!1991947))

(assert (=> d!496126 m!1990391))

(assert (=> d!496126 m!1990391))

(declare-fun m!1991949 () Bool)

(assert (=> d!496126 m!1991949))

(assert (=> d!496126 m!1991945))

(declare-fun m!1991951 () Bool)

(assert (=> d!496126 m!1991951))

(assert (=> d!496126 m!1990771))

(assert (=> d!496126 m!1990391))

(declare-fun m!1991953 () Bool)

(assert (=> d!496126 m!1991953))

(assert (=> d!496126 m!1990391))

(assert (=> d!496126 m!1990613))

(declare-fun m!1991955 () Bool)

(assert (=> d!496126 m!1991955))

(declare-fun m!1991957 () Bool)

(assert (=> d!496126 m!1991957))

(declare-fun m!1991959 () Bool)

(assert (=> b!1646711 m!1991959))

(declare-fun m!1991961 () Bool)

(assert (=> b!1646711 m!1991961))

(declare-fun m!1991963 () Bool)

(assert (=> b!1646711 m!1991963))

(assert (=> b!1646711 m!1990391))

(declare-fun m!1991965 () Bool)

(assert (=> b!1646711 m!1991965))

(declare-fun m!1991967 () Bool)

(assert (=> b!1646711 m!1991967))

(declare-fun m!1991969 () Bool)

(assert (=> b!1646711 m!1991969))

(declare-fun m!1991971 () Bool)

(assert (=> b!1646711 m!1991971))

(assert (=> b!1646711 m!1990391))

(declare-fun m!1991973 () Bool)

(assert (=> b!1646711 m!1991973))

(declare-fun m!1991975 () Bool)

(assert (=> b!1646711 m!1991975))

(declare-fun m!1991977 () Bool)

(assert (=> b!1646711 m!1991977))

(assert (=> b!1646711 m!1991959))

(declare-fun m!1991979 () Bool)

(assert (=> b!1646711 m!1991979))

(assert (=> b!1646711 m!1991967))

(declare-fun m!1991981 () Bool)

(assert (=> b!1646711 m!1991981))

(assert (=> b!1646711 m!1991977))

(declare-fun m!1991983 () Bool)

(assert (=> b!1646711 m!1991983))

(assert (=> b!1646711 m!1991973))

(declare-fun m!1991985 () Bool)

(assert (=> b!1646711 m!1991985))

(declare-fun m!1991987 () Bool)

(assert (=> b!1646711 m!1991987))

(assert (=> b!1646711 m!1991561))

(declare-fun m!1991989 () Bool)

(assert (=> b!1646711 m!1991989))

(declare-fun m!1991991 () Bool)

(assert (=> b!1646711 m!1991991))

(assert (=> b!1646711 m!1991987))

(declare-fun m!1991993 () Bool)

(assert (=> b!1646711 m!1991993))

(declare-fun m!1991995 () Bool)

(assert (=> b!1646711 m!1991995))

(declare-fun m!1991997 () Bool)

(assert (=> b!1646711 m!1991997))

(declare-fun m!1991999 () Bool)

(assert (=> b!1646711 m!1991999))

(declare-fun m!1992001 () Bool)

(assert (=> b!1646711 m!1992001))

(assert (=> b!1646711 m!1991961))

(declare-fun m!1992003 () Bool)

(assert (=> b!1646711 m!1992003))

(declare-fun m!1992005 () Bool)

(assert (=> b!1646711 m!1992005))

(declare-fun m!1992007 () Bool)

(assert (=> b!1646711 m!1992007))

(assert (=> b!1646711 m!1990771))

(assert (=> b!1646711 m!1991963))

(declare-fun m!1992009 () Bool)

(assert (=> b!1646711 m!1992009))

(assert (=> b!1646711 m!1990771))

(declare-fun m!1992011 () Bool)

(assert (=> b!1646711 m!1992011))

(assert (=> b!1646711 m!1991961))

(declare-fun m!1992013 () Bool)

(assert (=> b!1646711 m!1992013))

(assert (=> b!1646711 m!1990391))

(assert (=> b!1646711 m!1991953))

(assert (=> b!1646711 m!1991989))

(assert (=> b!1646711 m!1991973))

(declare-fun m!1992015 () Bool)

(assert (=> b!1646711 m!1992015))

(assert (=> b!1646711 m!1992003))

(assert (=> b!1646711 m!1992005))

(assert (=> b!1646711 m!1992013))

(declare-fun m!1992017 () Bool)

(assert (=> b!1646711 m!1992017))

(declare-fun m!1992019 () Bool)

(assert (=> b!1646710 m!1992019))

(assert (=> b!1646710 m!1990391))

(assert (=> b!1646710 m!1991953))

(declare-fun m!1992021 () Bool)

(assert (=> b!1646710 m!1992021))

(declare-fun m!1992023 () Bool)

(assert (=> b!1646712 m!1992023))

(declare-fun m!1992025 () Bool)

(assert (=> b!1646712 m!1992025))

(declare-fun m!1992027 () Bool)

(assert (=> b!1646708 m!1992027))

(declare-fun m!1992029 () Bool)

(assert (=> b!1646708 m!1992029))

(assert (=> d!495798 d!496126))

(assert (=> b!1645957 d!496072))

(assert (=> b!1645957 d!496074))

(assert (=> b!1645957 d!496058))

(declare-fun d!496128 () Bool)

(assert (=> d!496128 (= (list!7205 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))) (list!7210 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))))))

(declare-fun bs!396138 () Bool)

(assert (= bs!396138 d!496128))

(declare-fun m!1992031 () Bool)

(assert (=> bs!396138 m!1992031))

(assert (=> b!1646002 d!496128))

(declare-fun d!496130 () Bool)

(declare-fun e!1056082 () Bool)

(assert (=> d!496130 e!1056082))

(declare-fun res!737832 () Bool)

(assert (=> d!496130 (=> (not res!737832) (not e!1056082))))

(declare-fun lt!608493 () BalanceConc!12054)

(assert (=> d!496130 (= res!737832 (= (list!7206 lt!608493) (t!150452 tokens!457)))))

(declare-fun fromList!394 (List!18229) Conc!6055)

(assert (=> d!496130 (= lt!608493 (BalanceConc!12055 (fromList!394 (t!150452 tokens!457))))))

(assert (=> d!496130 (= (fromListB!950 (t!150452 tokens!457)) lt!608493)))

(declare-fun b!1646716 () Bool)

(assert (=> b!1646716 (= e!1056082 (isBalanced!1846 (fromList!394 (t!150452 tokens!457))))))

(assert (= (and d!496130 res!737832) b!1646716))

(declare-fun m!1992033 () Bool)

(assert (=> d!496130 m!1992033))

(declare-fun m!1992035 () Bool)

(assert (=> d!496130 m!1992035))

(assert (=> b!1646716 m!1992035))

(assert (=> b!1646716 m!1992035))

(declare-fun m!1992037 () Bool)

(assert (=> b!1646716 m!1992037))

(assert (=> d!495902 d!496130))

(declare-fun d!496132 () Bool)

(declare-fun charsToBigInt!0 (List!18227 Int) Int)

(assert (=> d!496132 (= (inv!15 (value!100958 (h!23560 tokens!457))) (= (charsToBigInt!0 (text!23500 (value!100958 (h!23560 tokens!457))) 0) (value!100953 (value!100958 (h!23560 tokens!457)))))))

(declare-fun bs!396139 () Bool)

(assert (= bs!396139 d!496132))

(declare-fun m!1992039 () Bool)

(assert (=> bs!396139 m!1992039))

(assert (=> b!1645843 d!496132))

(declare-fun b!1646719 () Bool)

(declare-fun e!1056083 () Bool)

(assert (=> b!1646719 (= e!1056083 (isPrefix!1461 (tail!2427 lt!607800) (tail!2427 (++!4894 lt!607800 lt!607807))))))

(declare-fun d!496134 () Bool)

(declare-fun e!1056085 () Bool)

(assert (=> d!496134 e!1056085))

(declare-fun res!737833 () Bool)

(assert (=> d!496134 (=> res!737833 e!1056085)))

(declare-fun lt!608494 () Bool)

(assert (=> d!496134 (= res!737833 (not lt!608494))))

(declare-fun e!1056084 () Bool)

(assert (=> d!496134 (= lt!608494 e!1056084)))

(declare-fun res!737834 () Bool)

(assert (=> d!496134 (=> res!737834 e!1056084)))

(assert (=> d!496134 (= res!737834 ((_ is Nil!18158) lt!607800))))

(assert (=> d!496134 (= (isPrefix!1461 lt!607800 (++!4894 lt!607800 lt!607807)) lt!608494)))

(declare-fun b!1646718 () Bool)

(declare-fun res!737836 () Bool)

(assert (=> b!1646718 (=> (not res!737836) (not e!1056083))))

(assert (=> b!1646718 (= res!737836 (= (head!3605 lt!607800) (head!3605 (++!4894 lt!607800 lt!607807))))))

(declare-fun b!1646717 () Bool)

(assert (=> b!1646717 (= e!1056084 e!1056083)))

(declare-fun res!737835 () Bool)

(assert (=> b!1646717 (=> (not res!737835) (not e!1056083))))

(assert (=> b!1646717 (= res!737835 (not ((_ is Nil!18158) (++!4894 lt!607800 lt!607807))))))

(declare-fun b!1646720 () Bool)

(assert (=> b!1646720 (= e!1056085 (>= (size!14466 (++!4894 lt!607800 lt!607807)) (size!14466 lt!607800)))))

(assert (= (and d!496134 (not res!737834)) b!1646717))

(assert (= (and b!1646717 res!737835) b!1646718))

(assert (= (and b!1646718 res!737836) b!1646719))

(assert (= (and d!496134 (not res!737833)) b!1646720))

(assert (=> b!1646719 m!1990705))

(assert (=> b!1646719 m!1990339))

(declare-fun m!1992041 () Bool)

(assert (=> b!1646719 m!1992041))

(assert (=> b!1646719 m!1990705))

(assert (=> b!1646719 m!1992041))

(declare-fun m!1992043 () Bool)

(assert (=> b!1646719 m!1992043))

(assert (=> b!1646718 m!1990711))

(assert (=> b!1646718 m!1990339))

(declare-fun m!1992045 () Bool)

(assert (=> b!1646718 m!1992045))

(assert (=> b!1646720 m!1990339))

(declare-fun m!1992047 () Bool)

(assert (=> b!1646720 m!1992047))

(assert (=> b!1646720 m!1990717))

(assert (=> d!495814 d!496134))

(assert (=> d!495814 d!495894))

(declare-fun d!496136 () Bool)

(assert (=> d!496136 (isPrefix!1461 lt!607800 (++!4894 lt!607800 lt!607807))))

(assert (=> d!496136 true))

(declare-fun _$46!1109 () Unit!30071)

(assert (=> d!496136 (= (choose!9879 lt!607800 lt!607807) _$46!1109)))

(declare-fun bs!396140 () Bool)

(assert (= bs!396140 d!496136))

(assert (=> bs!396140 m!1990339))

(assert (=> bs!396140 m!1990339))

(assert (=> bs!396140 m!1990719))

(assert (=> d!495814 d!496136))

(declare-fun b!1646724 () Bool)

(declare-fun e!1056087 () List!18228)

(assert (=> b!1646724 (= e!1056087 (++!4894 (list!7210 (left!14557 (c!267635 lt!607803))) (list!7210 (right!14887 (c!267635 lt!607803)))))))

(declare-fun b!1646722 () Bool)

(declare-fun e!1056086 () List!18228)

(assert (=> b!1646722 (= e!1056086 e!1056087)))

(declare-fun c!267821 () Bool)

(assert (=> b!1646722 (= c!267821 ((_ is Leaf!8876) (c!267635 lt!607803)))))

(declare-fun d!496138 () Bool)

(declare-fun c!267820 () Bool)

(assert (=> d!496138 (= c!267820 ((_ is Empty!6054) (c!267635 lt!607803)))))

(assert (=> d!496138 (= (list!7210 (c!267635 lt!607803)) e!1056086)))

(declare-fun b!1646723 () Bool)

(assert (=> b!1646723 (= e!1056087 (list!7214 (xs!8890 (c!267635 lt!607803))))))

(declare-fun b!1646721 () Bool)

(assert (=> b!1646721 (= e!1056086 Nil!18158)))

(assert (= (and d!496138 c!267820) b!1646721))

(assert (= (and d!496138 (not c!267820)) b!1646722))

(assert (= (and b!1646722 c!267821) b!1646723))

(assert (= (and b!1646722 (not c!267821)) b!1646724))

(declare-fun m!1992049 () Bool)

(assert (=> b!1646724 m!1992049))

(declare-fun m!1992051 () Bool)

(assert (=> b!1646724 m!1992051))

(assert (=> b!1646724 m!1992049))

(assert (=> b!1646724 m!1992051))

(declare-fun m!1992053 () Bool)

(assert (=> b!1646724 m!1992053))

(declare-fun m!1992055 () Bool)

(assert (=> b!1646723 m!1992055))

(assert (=> d!495898 d!496138))

(declare-fun d!496140 () Bool)

(declare-fun lt!608497 () Bool)

(declare-fun content!2519 (List!18230) (InoxSet Rule!6206))

(assert (=> d!496140 (= lt!608497 (select (content!2519 rules!1846) (rule!5057 (_1!10314 (get!5281 lt!608044)))))))

(declare-fun e!1056093 () Bool)

(assert (=> d!496140 (= lt!608497 e!1056093)))

(declare-fun res!737841 () Bool)

(assert (=> d!496140 (=> (not res!737841) (not e!1056093))))

(assert (=> d!496140 (= res!737841 ((_ is Cons!18160) rules!1846))))

(assert (=> d!496140 (= (contains!3162 rules!1846 (rule!5057 (_1!10314 (get!5281 lt!608044)))) lt!608497)))

(declare-fun b!1646729 () Bool)

(declare-fun e!1056092 () Bool)

(assert (=> b!1646729 (= e!1056093 e!1056092)))

(declare-fun res!737842 () Bool)

(assert (=> b!1646729 (=> res!737842 e!1056092)))

(assert (=> b!1646729 (= res!737842 (= (h!23561 rules!1846) (rule!5057 (_1!10314 (get!5281 lt!608044)))))))

(declare-fun b!1646730 () Bool)

(assert (=> b!1646730 (= e!1056092 (contains!3162 (t!150453 rules!1846) (rule!5057 (_1!10314 (get!5281 lt!608044)))))))

(assert (= (and d!496140 res!737841) b!1646729))

(assert (= (and b!1646729 (not res!737842)) b!1646730))

(declare-fun m!1992057 () Bool)

(assert (=> d!496140 m!1992057))

(declare-fun m!1992059 () Bool)

(assert (=> d!496140 m!1992059))

(declare-fun m!1992061 () Bool)

(assert (=> b!1646730 m!1992061))

(assert (=> b!1645959 d!496140))

(assert (=> b!1645959 d!496058))

(declare-fun d!496142 () Bool)

(assert (=> d!496142 (= (isEmpty!11191 lt!608044) (not ((_ is Some!3437) lt!608044)))))

(assert (=> d!495820 d!496142))

(declare-fun b!1646733 () Bool)

(declare-fun e!1056094 () Bool)

(assert (=> b!1646733 (= e!1056094 (isPrefix!1461 (tail!2427 lt!607813) (tail!2427 lt!607813)))))

(declare-fun d!496144 () Bool)

(declare-fun e!1056096 () Bool)

(assert (=> d!496144 e!1056096))

(declare-fun res!737843 () Bool)

(assert (=> d!496144 (=> res!737843 e!1056096)))

(declare-fun lt!608498 () Bool)

(assert (=> d!496144 (= res!737843 (not lt!608498))))

(declare-fun e!1056095 () Bool)

(assert (=> d!496144 (= lt!608498 e!1056095)))

(declare-fun res!737844 () Bool)

(assert (=> d!496144 (=> res!737844 e!1056095)))

(assert (=> d!496144 (= res!737844 ((_ is Nil!18158) lt!607813))))

(assert (=> d!496144 (= (isPrefix!1461 lt!607813 lt!607813) lt!608498)))

(declare-fun b!1646732 () Bool)

(declare-fun res!737846 () Bool)

(assert (=> b!1646732 (=> (not res!737846) (not e!1056094))))

(assert (=> b!1646732 (= res!737846 (= (head!3605 lt!607813) (head!3605 lt!607813)))))

(declare-fun b!1646731 () Bool)

(assert (=> b!1646731 (= e!1056095 e!1056094)))

(declare-fun res!737845 () Bool)

(assert (=> b!1646731 (=> (not res!737845) (not e!1056094))))

(assert (=> b!1646731 (= res!737845 (not ((_ is Nil!18158) lt!607813)))))

(declare-fun b!1646734 () Bool)

(assert (=> b!1646734 (= e!1056096 (>= (size!14466 lt!607813) (size!14466 lt!607813)))))

(assert (= (and d!496144 (not res!737844)) b!1646731))

(assert (= (and b!1646731 res!737845) b!1646732))

(assert (= (and b!1646732 res!737846) b!1646733))

(assert (= (and d!496144 (not res!737843)) b!1646734))

(declare-fun m!1992063 () Bool)

(assert (=> b!1646733 m!1992063))

(assert (=> b!1646733 m!1992063))

(assert (=> b!1646733 m!1992063))

(assert (=> b!1646733 m!1992063))

(declare-fun m!1992065 () Bool)

(assert (=> b!1646733 m!1992065))

(declare-fun m!1992067 () Bool)

(assert (=> b!1646732 m!1992067))

(assert (=> b!1646732 m!1992067))

(assert (=> b!1646734 m!1990751))

(assert (=> b!1646734 m!1990751))

(assert (=> d!495820 d!496144))

(declare-fun d!496146 () Bool)

(assert (=> d!496146 (isPrefix!1461 lt!607813 lt!607813)))

(declare-fun lt!608501 () Unit!30071)

(declare-fun choose!9882 (List!18228 List!18228) Unit!30071)

(assert (=> d!496146 (= lt!608501 (choose!9882 lt!607813 lt!607813))))

(assert (=> d!496146 (= (lemmaIsPrefixRefl!988 lt!607813 lt!607813) lt!608501)))

(declare-fun bs!396141 () Bool)

(assert (= bs!396141 d!496146))

(assert (=> bs!396141 m!1990755))

(declare-fun m!1992069 () Bool)

(assert (=> bs!396141 m!1992069))

(assert (=> d!495820 d!496146))

(declare-fun d!496148 () Bool)

(assert (=> d!496148 true))

(declare-fun lt!608504 () Bool)

(declare-fun lambda!67592 () Int)

(declare-fun forall!4137 (List!18230 Int) Bool)

(assert (=> d!496148 (= lt!608504 (forall!4137 rules!1846 lambda!67592))))

(declare-fun e!1056101 () Bool)

(assert (=> d!496148 (= lt!608504 e!1056101)))

(declare-fun res!737851 () Bool)

(assert (=> d!496148 (=> res!737851 e!1056101)))

(assert (=> d!496148 (= res!737851 (not ((_ is Cons!18160) rules!1846)))))

(assert (=> d!496148 (= (rulesValidInductive!1010 thiss!17113 rules!1846) lt!608504)))

(declare-fun b!1646739 () Bool)

(declare-fun e!1056102 () Bool)

(assert (=> b!1646739 (= e!1056101 e!1056102)))

(declare-fun res!737852 () Bool)

(assert (=> b!1646739 (=> (not res!737852) (not e!1056102))))

(declare-fun ruleValid!752 (LexerInterface!2832 Rule!6206) Bool)

(assert (=> b!1646739 (= res!737852 (ruleValid!752 thiss!17113 (h!23561 rules!1846)))))

(declare-fun b!1646740 () Bool)

(assert (=> b!1646740 (= e!1056102 (rulesValidInductive!1010 thiss!17113 (t!150453 rules!1846)))))

(assert (= (and d!496148 (not res!737851)) b!1646739))

(assert (= (and b!1646739 res!737852) b!1646740))

(declare-fun m!1992071 () Bool)

(assert (=> d!496148 m!1992071))

(declare-fun m!1992073 () Bool)

(assert (=> b!1646739 m!1992073))

(declare-fun m!1992075 () Bool)

(assert (=> b!1646740 m!1992075))

(assert (=> d!495820 d!496148))

(declare-fun d!496150 () Bool)

(declare-fun res!737853 () Bool)

(declare-fun e!1056104 () Bool)

(assert (=> d!496150 (=> res!737853 e!1056104)))

(assert (=> d!496150 (= res!737853 (or (not ((_ is Cons!18159) (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))) (not ((_ is Cons!18159) (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))))))))

(assert (=> d!496150 (= (tokensListTwoByTwoPredicateSeparableList!525 thiss!17113 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))) rules!1846) e!1056104)))

(declare-fun b!1646743 () Bool)

(declare-fun e!1056103 () Bool)

(assert (=> b!1646743 (= e!1056104 e!1056103)))

(declare-fun res!737854 () Bool)

(assert (=> b!1646743 (=> (not res!737854) (not e!1056103))))

(assert (=> b!1646743 (= res!737854 (separableTokensPredicate!772 thiss!17113 (h!23560 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))) rules!1846))))

(declare-fun lt!608510 () Unit!30071)

(declare-fun Unit!30140 () Unit!30071)

(assert (=> b!1646743 (= lt!608510 Unit!30140)))

(assert (=> b!1646743 (> (size!14464 (charsOf!1852 (h!23560 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))))) 0)))

(declare-fun lt!608508 () Unit!30071)

(declare-fun Unit!30141 () Unit!30071)

(assert (=> b!1646743 (= lt!608508 Unit!30141)))

(assert (=> b!1646743 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!608505 () Unit!30071)

(declare-fun Unit!30142 () Unit!30071)

(assert (=> b!1646743 (= lt!608505 Unit!30142)))

(assert (=> b!1646743 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)))))))

(declare-fun lt!608506 () Unit!30071)

(declare-fun lt!608507 () Unit!30071)

(assert (=> b!1646743 (= lt!608506 lt!608507)))

(assert (=> b!1646743 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))))))

(assert (=> b!1646743 (= lt!608507 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 thiss!17113 rules!1846 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)))))))))

(declare-fun lt!608511 () Unit!30071)

(declare-fun lt!608509 () Unit!30071)

(assert (=> b!1646743 (= lt!608511 lt!608509)))

(assert (=> b!1646743 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)))))))

(assert (=> b!1646743 (= lt!608509 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 thiss!17113 rules!1846 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))) (h!23560 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))))))

(declare-fun b!1646744 () Bool)

(assert (=> b!1646744 (= e!1056103 (tokensListTwoByTwoPredicateSeparableList!525 thiss!17113 (Cons!18159 (h!23560 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457))))) (t!150452 (t!150452 (Cons!18159 (h!23560 (t!150452 tokens!457)) (t!150452 (t!150452 tokens!457)))))) rules!1846))))

(assert (= (and d!496150 (not res!737853)) b!1646743))

(assert (= (and b!1646743 res!737854) b!1646744))

(declare-fun m!1992077 () Bool)

(assert (=> b!1646743 m!1992077))

(declare-fun m!1992079 () Bool)

(assert (=> b!1646743 m!1992079))

(declare-fun m!1992081 () Bool)

(assert (=> b!1646743 m!1992081))

(declare-fun m!1992083 () Bool)

(assert (=> b!1646743 m!1992083))

(declare-fun m!1992085 () Bool)

(assert (=> b!1646743 m!1992085))

(assert (=> b!1646743 m!1992077))

(declare-fun m!1992087 () Bool)

(assert (=> b!1646743 m!1992087))

(declare-fun m!1992089 () Bool)

(assert (=> b!1646743 m!1992089))

(declare-fun m!1992091 () Bool)

(assert (=> b!1646744 m!1992091))

(assert (=> b!1645876 d!496150))

(declare-fun d!496152 () Bool)

(declare-fun res!737859 () Bool)

(declare-fun e!1056109 () Bool)

(assert (=> d!496152 (=> res!737859 e!1056109)))

(assert (=> d!496152 (= res!737859 ((_ is Nil!18159) tokens!457))))

(assert (=> d!496152 (= (forall!4136 tokens!457 lambda!67586) e!1056109)))

(declare-fun b!1646749 () Bool)

(declare-fun e!1056110 () Bool)

(assert (=> b!1646749 (= e!1056109 e!1056110)))

(declare-fun res!737860 () Bool)

(assert (=> b!1646749 (=> (not res!737860) (not e!1056110))))

(declare-fun dynLambda!8129 (Int Token!5972) Bool)

(assert (=> b!1646749 (= res!737860 (dynLambda!8129 lambda!67586 (h!23560 tokens!457)))))

(declare-fun b!1646750 () Bool)

(assert (=> b!1646750 (= e!1056110 (forall!4136 (t!150452 tokens!457) lambda!67586))))

(assert (= (and d!496152 (not res!737859)) b!1646749))

(assert (= (and b!1646749 res!737860) b!1646750))

(declare-fun b_lambda!51755 () Bool)

(assert (=> (not b_lambda!51755) (not b!1646749)))

(declare-fun m!1992093 () Bool)

(assert (=> b!1646749 m!1992093))

(declare-fun m!1992095 () Bool)

(assert (=> b!1646750 m!1992095))

(assert (=> d!495850 d!496152))

(assert (=> d!495850 d!495792))

(declare-fun lt!608512 () Bool)

(declare-fun d!496154 () Bool)

(assert (=> d!496154 (= lt!608512 (isEmpty!11189 (list!7205 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))))))

(assert (=> d!496154 (= lt!608512 (isEmpty!11193 (c!267635 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))))))

(assert (=> d!496154 (= (isEmpty!11190 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)))))) lt!608512)))

(declare-fun bs!396142 () Bool)

(assert (= bs!396142 d!496154))

(declare-fun m!1992097 () Bool)

(assert (=> bs!396142 m!1992097))

(assert (=> bs!396142 m!1992097))

(declare-fun m!1992099 () Bool)

(assert (=> bs!396142 m!1992099))

(declare-fun m!1992101 () Bool)

(assert (=> bs!396142 m!1992101))

(assert (=> b!1645925 d!496154))

(declare-fun b!1646751 () Bool)

(declare-fun res!737863 () Bool)

(declare-fun e!1056112 () Bool)

(assert (=> b!1646751 (=> (not res!737863) (not e!1056112))))

(declare-fun lt!608513 () tuple2!17826)

(assert (=> b!1646751 (= res!737863 (= (list!7206 (_1!10315 lt!608513)) (_1!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))))))

(declare-fun b!1646752 () Bool)

(declare-fun e!1056113 () Bool)

(assert (=> b!1646752 (= e!1056113 (= (_2!10315 lt!608513) (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)))))))

(declare-fun b!1646753 () Bool)

(assert (=> b!1646753 (= e!1056112 (= (list!7205 (_2!10315 lt!608513)) (_2!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))))))

(declare-fun b!1646754 () Bool)

(declare-fun e!1056111 () Bool)

(assert (=> b!1646754 (= e!1056113 e!1056111)))

(declare-fun res!737862 () Bool)

(assert (=> b!1646754 (= res!737862 (< (size!14464 (_2!10315 lt!608513)) (size!14464 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))))

(assert (=> b!1646754 (=> (not res!737862) (not e!1056111))))

(declare-fun b!1646755 () Bool)

(assert (=> b!1646755 (= e!1056111 (not (isEmpty!11180 (_1!10315 lt!608513))))))

(declare-fun d!496156 () Bool)

(assert (=> d!496156 e!1056112))

(declare-fun res!737861 () Bool)

(assert (=> d!496156 (=> (not res!737861) (not e!1056112))))

(assert (=> d!496156 (= res!737861 e!1056113)))

(declare-fun c!267822 () Bool)

(assert (=> d!496156 (= c!267822 (> (size!14465 (_1!10315 lt!608513)) 0))))

(assert (=> d!496156 (= lt!608513 (lexTailRecV2!586 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))) (BalanceConc!12053 Empty!6054) (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))) (BalanceConc!12055 Empty!6055)))))

(assert (=> d!496156 (= (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)))) lt!608513)))

(assert (= (and d!496156 c!267822) b!1646754))

(assert (= (and d!496156 (not c!267822)) b!1646752))

(assert (= (and b!1646754 res!737862) b!1646755))

(assert (= (and d!496156 res!737861) b!1646751))

(assert (= (and b!1646751 res!737863) b!1646753))

(declare-fun m!1992103 () Bool)

(assert (=> b!1646754 m!1992103))

(assert (=> b!1646754 m!1990629))

(declare-fun m!1992105 () Bool)

(assert (=> b!1646754 m!1992105))

(declare-fun m!1992107 () Bool)

(assert (=> b!1646751 m!1992107))

(assert (=> b!1646751 m!1990629))

(declare-fun m!1992109 () Bool)

(assert (=> b!1646751 m!1992109))

(assert (=> b!1646751 m!1992109))

(declare-fun m!1992111 () Bool)

(assert (=> b!1646751 m!1992111))

(declare-fun m!1992113 () Bool)

(assert (=> d!496156 m!1992113))

(assert (=> d!496156 m!1990629))

(assert (=> d!496156 m!1990629))

(declare-fun m!1992115 () Bool)

(assert (=> d!496156 m!1992115))

(declare-fun m!1992117 () Bool)

(assert (=> b!1646753 m!1992117))

(assert (=> b!1646753 m!1990629))

(assert (=> b!1646753 m!1992109))

(assert (=> b!1646753 m!1992109))

(assert (=> b!1646753 m!1992111))

(declare-fun m!1992119 () Bool)

(assert (=> b!1646755 m!1992119))

(assert (=> b!1645925 d!496156))

(declare-fun d!496158 () Bool)

(declare-fun lt!608514 () BalanceConc!12052)

(assert (=> d!496158 (= (list!7205 lt!608514) (printList!945 thiss!17113 (list!7206 (seqFromList!2146 (t!150452 tokens!457)))))))

(assert (=> d!496158 (= lt!608514 (printTailRec!883 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)) 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!496158 (= (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))) lt!608514)))

(declare-fun bs!396143 () Bool)

(assert (= bs!396143 d!496158))

(declare-fun m!1992121 () Bool)

(assert (=> bs!396143 m!1992121))

(assert (=> bs!396143 m!1990333))

(declare-fun m!1992123 () Bool)

(assert (=> bs!396143 m!1992123))

(assert (=> bs!396143 m!1992123))

(declare-fun m!1992125 () Bool)

(assert (=> bs!396143 m!1992125))

(assert (=> bs!396143 m!1990333))

(declare-fun m!1992127 () Bool)

(assert (=> bs!396143 m!1992127))

(assert (=> b!1645925 d!496158))

(assert (=> b!1645925 d!495902))

(assert (=> d!495836 d!496038))

(assert (=> d!495836 d!495792))

(assert (=> d!495836 d!496036))

(declare-fun d!496160 () Bool)

(assert (=> d!496160 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457)))))) (list!7209 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 tokens!457))))))))))

(declare-fun bs!396144 () Bool)

(assert (= bs!396144 d!496160))

(declare-fun m!1992129 () Bool)

(assert (=> bs!396144 m!1992129))

(assert (=> d!495836 d!496160))

(declare-fun d!496162 () Bool)

(assert (=> d!496162 (= (list!7206 (singletonSeq!1677 (h!23560 tokens!457))) (list!7209 (c!267637 (singletonSeq!1677 (h!23560 tokens!457)))))))

(declare-fun bs!396145 () Bool)

(assert (= bs!396145 d!496162))

(declare-fun m!1992131 () Bool)

(assert (=> bs!396145 m!1992131))

(assert (=> d!495836 d!496162))

(declare-fun d!496164 () Bool)

(declare-fun lt!608515 () Int)

(assert (=> d!496164 (= lt!608515 (size!14468 (list!7206 (_1!10315 lt!608084))))))

(assert (=> d!496164 (= lt!608515 (size!14469 (c!267637 (_1!10315 lt!608084))))))

(assert (=> d!496164 (= (size!14465 (_1!10315 lt!608084)) lt!608515)))

(declare-fun bs!396146 () Bool)

(assert (= bs!396146 d!496164))

(assert (=> bs!396146 m!1991717))

(assert (=> bs!396146 m!1991717))

(declare-fun m!1992133 () Bool)

(assert (=> bs!396146 m!1992133))

(declare-fun m!1992135 () Bool)

(assert (=> bs!396146 m!1992135))

(assert (=> d!495836 d!496164))

(assert (=> d!495836 d!495828))

(declare-fun d!496166 () Bool)

(declare-fun c!267825 () Bool)

(assert (=> d!496166 (= c!267825 ((_ is Nil!18158) lt!608163))))

(declare-fun e!1056116 () (InoxSet C!9236))

(assert (=> d!496166 (= (content!2517 lt!608163) e!1056116)))

(declare-fun b!1646760 () Bool)

(assert (=> b!1646760 (= e!1056116 ((as const (Array C!9236 Bool)) false))))

(declare-fun b!1646761 () Bool)

(assert (=> b!1646761 (= e!1056116 ((_ map or) (store ((as const (Array C!9236 Bool)) false) (h!23559 lt!608163) true) (content!2517 (t!150451 lt!608163))))))

(assert (= (and d!496166 c!267825) b!1646760))

(assert (= (and d!496166 (not c!267825)) b!1646761))

(declare-fun m!1992137 () Bool)

(assert (=> b!1646761 m!1992137))

(declare-fun m!1992139 () Bool)

(assert (=> b!1646761 m!1992139))

(assert (=> d!495894 d!496166))

(declare-fun d!496168 () Bool)

(declare-fun c!267826 () Bool)

(assert (=> d!496168 (= c!267826 ((_ is Nil!18158) lt!607800))))

(declare-fun e!1056117 () (InoxSet C!9236))

(assert (=> d!496168 (= (content!2517 lt!607800) e!1056117)))

(declare-fun b!1646762 () Bool)

(assert (=> b!1646762 (= e!1056117 ((as const (Array C!9236 Bool)) false))))

(declare-fun b!1646763 () Bool)

(assert (=> b!1646763 (= e!1056117 ((_ map or) (store ((as const (Array C!9236 Bool)) false) (h!23559 lt!607800) true) (content!2517 (t!150451 lt!607800))))))

(assert (= (and d!496168 c!267826) b!1646762))

(assert (= (and d!496168 (not c!267826)) b!1646763))

(declare-fun m!1992141 () Bool)

(assert (=> b!1646763 m!1992141))

(declare-fun m!1992143 () Bool)

(assert (=> b!1646763 m!1992143))

(assert (=> d!495894 d!496168))

(declare-fun d!496170 () Bool)

(declare-fun c!267827 () Bool)

(assert (=> d!496170 (= c!267827 ((_ is Nil!18158) lt!607807))))

(declare-fun e!1056118 () (InoxSet C!9236))

(assert (=> d!496170 (= (content!2517 lt!607807) e!1056118)))

(declare-fun b!1646764 () Bool)

(assert (=> b!1646764 (= e!1056118 ((as const (Array C!9236 Bool)) false))))

(declare-fun b!1646765 () Bool)

(assert (=> b!1646765 (= e!1056118 ((_ map or) (store ((as const (Array C!9236 Bool)) false) (h!23559 lt!607807) true) (content!2517 (t!150451 lt!607807))))))

(assert (= (and d!496170 c!267827) b!1646764))

(assert (= (and d!496170 (not c!267827)) b!1646765))

(declare-fun m!1992145 () Bool)

(assert (=> b!1646765 m!1992145))

(declare-fun m!1992147 () Bool)

(assert (=> b!1646765 m!1992147))

(assert (=> d!495894 d!496170))

(declare-fun b!1646766 () Bool)

(declare-fun e!1056119 () Bool)

(assert (=> b!1646766 (= e!1056119 (not (isEmpty!11188 (right!14888 (c!267637 lt!608072)))))))

(declare-fun b!1646767 () Bool)

(declare-fun res!737866 () Bool)

(assert (=> b!1646767 (=> (not res!737866) (not e!1056119))))

(assert (=> b!1646767 (= res!737866 (isBalanced!1846 (right!14888 (c!267637 lt!608072))))))

(declare-fun b!1646768 () Bool)

(declare-fun res!737864 () Bool)

(assert (=> b!1646768 (=> (not res!737864) (not e!1056119))))

(assert (=> b!1646768 (= res!737864 (<= (- (height!933 (left!14558 (c!267637 lt!608072))) (height!933 (right!14888 (c!267637 lt!608072)))) 1))))

(declare-fun b!1646769 () Bool)

(declare-fun res!737867 () Bool)

(assert (=> b!1646769 (=> (not res!737867) (not e!1056119))))

(assert (=> b!1646769 (= res!737867 (not (isEmpty!11188 (left!14558 (c!267637 lt!608072)))))))

(declare-fun b!1646770 () Bool)

(declare-fun e!1056120 () Bool)

(assert (=> b!1646770 (= e!1056120 e!1056119)))

(declare-fun res!737865 () Bool)

(assert (=> b!1646770 (=> (not res!737865) (not e!1056119))))

(assert (=> b!1646770 (= res!737865 (<= (- 1) (- (height!933 (left!14558 (c!267637 lt!608072))) (height!933 (right!14888 (c!267637 lt!608072))))))))

(declare-fun d!496172 () Bool)

(declare-fun res!737869 () Bool)

(assert (=> d!496172 (=> res!737869 e!1056120)))

(assert (=> d!496172 (= res!737869 (not ((_ is Node!6055) (c!267637 lt!608072))))))

(assert (=> d!496172 (= (isBalanced!1846 (c!267637 lt!608072)) e!1056120)))

(declare-fun b!1646771 () Bool)

(declare-fun res!737868 () Bool)

(assert (=> b!1646771 (=> (not res!737868) (not e!1056119))))

(assert (=> b!1646771 (= res!737868 (isBalanced!1846 (left!14558 (c!267637 lt!608072))))))

(assert (= (and d!496172 (not res!737869)) b!1646770))

(assert (= (and b!1646770 res!737865) b!1646768))

(assert (= (and b!1646768 res!737864) b!1646771))

(assert (= (and b!1646771 res!737868) b!1646767))

(assert (= (and b!1646767 res!737866) b!1646769))

(assert (= (and b!1646769 res!737867) b!1646766))

(declare-fun m!1992149 () Bool)

(assert (=> b!1646770 m!1992149))

(declare-fun m!1992151 () Bool)

(assert (=> b!1646770 m!1992151))

(declare-fun m!1992153 () Bool)

(assert (=> b!1646766 m!1992153))

(declare-fun m!1992155 () Bool)

(assert (=> b!1646767 m!1992155))

(declare-fun m!1992157 () Bool)

(assert (=> b!1646771 m!1992157))

(declare-fun m!1992159 () Bool)

(assert (=> b!1646769 m!1992159))

(assert (=> b!1646768 m!1992149))

(assert (=> b!1646768 m!1992151))

(assert (=> b!1645997 d!496172))

(declare-fun d!496174 () Bool)

(declare-fun lt!608516 () Int)

(assert (=> d!496174 (>= lt!608516 0)))

(declare-fun e!1056121 () Int)

(assert (=> d!496174 (= lt!608516 e!1056121)))

(declare-fun c!267828 () Bool)

(assert (=> d!496174 (= c!267828 ((_ is Nil!18158) lt!608163))))

(assert (=> d!496174 (= (size!14466 lt!608163) lt!608516)))

(declare-fun b!1646772 () Bool)

(assert (=> b!1646772 (= e!1056121 0)))

(declare-fun b!1646773 () Bool)

(assert (=> b!1646773 (= e!1056121 (+ 1 (size!14466 (t!150451 lt!608163))))))

(assert (= (and d!496174 c!267828) b!1646772))

(assert (= (and d!496174 (not c!267828)) b!1646773))

(declare-fun m!1992161 () Bool)

(assert (=> b!1646773 m!1992161))

(assert (=> b!1646206 d!496174))

(assert (=> b!1646206 d!496044))

(declare-fun d!496176 () Bool)

(declare-fun lt!608517 () Int)

(assert (=> d!496176 (>= lt!608517 0)))

(declare-fun e!1056122 () Int)

(assert (=> d!496176 (= lt!608517 e!1056122)))

(declare-fun c!267829 () Bool)

(assert (=> d!496176 (= c!267829 ((_ is Nil!18158) lt!607807))))

(assert (=> d!496176 (= (size!14466 lt!607807) lt!608517)))

(declare-fun b!1646774 () Bool)

(assert (=> b!1646774 (= e!1056122 0)))

(declare-fun b!1646775 () Bool)

(assert (=> b!1646775 (= e!1056122 (+ 1 (size!14466 (t!150451 lt!607807))))))

(assert (= (and d!496176 c!267829) b!1646774))

(assert (= (and d!496176 (not c!267829)) b!1646775))

(declare-fun m!1992163 () Bool)

(assert (=> b!1646775 m!1992163))

(assert (=> b!1646206 d!496176))

(assert (=> b!1646181 d!495836))

(declare-fun d!496178 () Bool)

(assert (=> d!496178 (= (inv!23516 (tag!3483 (rule!5057 (h!23560 (t!150452 tokens!457))))) (= (mod (str.len (value!100957 (tag!3483 (rule!5057 (h!23560 (t!150452 tokens!457)))))) 2) 0))))

(assert (=> b!1646230 d!496178))

(declare-fun d!496180 () Bool)

(declare-fun res!737870 () Bool)

(declare-fun e!1056123 () Bool)

(assert (=> d!496180 (=> (not res!737870) (not e!1056123))))

(assert (=> d!496180 (= res!737870 (semiInverseModEq!1234 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))))))

(assert (=> d!496180 (= (inv!23520 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) e!1056123)))

(declare-fun b!1646776 () Bool)

(assert (=> b!1646776 (= e!1056123 (equivClasses!1175 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))))))

(assert (= (and d!496180 res!737870) b!1646776))

(declare-fun m!1992165 () Bool)

(assert (=> d!496180 m!1992165))

(declare-fun m!1992167 () Bool)

(assert (=> b!1646776 m!1992167))

(assert (=> b!1646230 d!496180))

(declare-fun bs!396147 () Bool)

(declare-fun d!496182 () Bool)

(assert (= bs!396147 (and d!496182 d!496148)))

(declare-fun lambda!67595 () Int)

(assert (=> bs!396147 (= lambda!67595 lambda!67592)))

(assert (=> d!496182 true))

(declare-fun lt!608520 () Bool)

(assert (=> d!496182 (= lt!608520 (rulesValidInductive!1010 thiss!17113 rules!1846))))

(assert (=> d!496182 (= lt!608520 (forall!4137 rules!1846 lambda!67595))))

(assert (=> d!496182 (= (rulesValid!1162 thiss!17113 rules!1846) lt!608520)))

(declare-fun bs!396148 () Bool)

(assert (= bs!396148 d!496182))

(assert (=> bs!396148 m!1990759))

(declare-fun m!1992169 () Bool)

(assert (=> bs!396148 m!1992169))

(assert (=> d!495768 d!496182))

(declare-fun d!496184 () Bool)

(declare-fun c!267830 () Bool)

(assert (=> d!496184 (= c!267830 ((_ is Empty!6055) (c!267637 (_1!10315 lt!607804))))))

(declare-fun e!1056124 () List!18229)

(assert (=> d!496184 (= (list!7209 (c!267637 (_1!10315 lt!607804))) e!1056124)))

(declare-fun b!1646777 () Bool)

(assert (=> b!1646777 (= e!1056124 Nil!18159)))

(declare-fun b!1646778 () Bool)

(declare-fun e!1056125 () List!18229)

(assert (=> b!1646778 (= e!1056124 e!1056125)))

(declare-fun c!267831 () Bool)

(assert (=> b!1646778 (= c!267831 ((_ is Leaf!8877) (c!267637 (_1!10315 lt!607804))))))

(declare-fun b!1646780 () Bool)

(assert (=> b!1646780 (= e!1056125 (++!4899 (list!7209 (left!14558 (c!267637 (_1!10315 lt!607804)))) (list!7209 (right!14888 (c!267637 (_1!10315 lt!607804))))))))

(declare-fun b!1646779 () Bool)

(assert (=> b!1646779 (= e!1056125 (list!7213 (xs!8891 (c!267637 (_1!10315 lt!607804)))))))

(assert (= (and d!496184 c!267830) b!1646777))

(assert (= (and d!496184 (not c!267830)) b!1646778))

(assert (= (and b!1646778 c!267831) b!1646779))

(assert (= (and b!1646778 (not c!267831)) b!1646780))

(declare-fun m!1992171 () Bool)

(assert (=> b!1646780 m!1992171))

(declare-fun m!1992173 () Bool)

(assert (=> b!1646780 m!1992173))

(assert (=> b!1646780 m!1992171))

(assert (=> b!1646780 m!1992173))

(declare-fun m!1992175 () Bool)

(assert (=> b!1646780 m!1992175))

(declare-fun m!1992177 () Bool)

(assert (=> b!1646779 m!1992177))

(assert (=> d!495808 d!496184))

(declare-fun d!496186 () Bool)

(assert (=> d!496186 (= (inv!23516 (tag!3483 (h!23561 (t!150453 rules!1846)))) (= (mod (str.len (value!100957 (tag!3483 (h!23561 (t!150453 rules!1846))))) 2) 0))))

(assert (=> b!1646241 d!496186))

(declare-fun d!496188 () Bool)

(declare-fun res!737871 () Bool)

(declare-fun e!1056126 () Bool)

(assert (=> d!496188 (=> (not res!737871) (not e!1056126))))

(assert (=> d!496188 (= res!737871 (semiInverseModEq!1234 (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toValue!4646 (transformation!3203 (h!23561 (t!150453 rules!1846))))))))

(assert (=> d!496188 (= (inv!23520 (transformation!3203 (h!23561 (t!150453 rules!1846)))) e!1056126)))

(declare-fun b!1646781 () Bool)

(assert (=> b!1646781 (= e!1056126 (equivClasses!1175 (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toValue!4646 (transformation!3203 (h!23561 (t!150453 rules!1846))))))))

(assert (= (and d!496188 res!737871) b!1646781))

(declare-fun m!1992179 () Bool)

(assert (=> d!496188 m!1992179))

(declare-fun m!1992181 () Bool)

(assert (=> b!1646781 m!1992181))

(assert (=> b!1646241 d!496188))

(declare-fun d!496190 () Bool)

(assert (=> d!496190 true))

(declare-fun lambda!67598 () Int)

(declare-fun order!10823 () Int)

(declare-fun dynLambda!8131 (Int Int) Int)

(assert (=> d!496190 (< (dynLambda!8125 order!10819 (toChars!4505 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8131 order!10823 lambda!67598))))

(assert (=> d!496190 true))

(assert (=> d!496190 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8131 order!10823 lambda!67598))))

(declare-fun Forall!652 (Int) Bool)

(assert (=> d!496190 (= (semiInverseModEq!1234 (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toValue!4646 (transformation!3203 (h!23561 rules!1846)))) (Forall!652 lambda!67598))))

(declare-fun bs!396149 () Bool)

(assert (= bs!396149 d!496190))

(declare-fun m!1992183 () Bool)

(assert (=> bs!396149 m!1992183))

(assert (=> d!495790 d!496190))

(declare-fun d!496192 () Bool)

(declare-fun e!1056127 () Bool)

(assert (=> d!496192 e!1056127))

(declare-fun res!737872 () Bool)

(assert (=> d!496192 (=> (not res!737872) (not e!1056127))))

(declare-fun lt!608521 () BalanceConc!12054)

(assert (=> d!496192 (= res!737872 (= (list!7206 lt!608521) tokens!457))))

(assert (=> d!496192 (= lt!608521 (BalanceConc!12055 (fromList!394 tokens!457)))))

(assert (=> d!496192 (= (fromListB!950 tokens!457) lt!608521)))

(declare-fun b!1646786 () Bool)

(assert (=> b!1646786 (= e!1056127 (isBalanced!1846 (fromList!394 tokens!457)))))

(assert (= (and d!496192 res!737872) b!1646786))

(declare-fun m!1992185 () Bool)

(assert (=> d!496192 m!1992185))

(declare-fun m!1992187 () Bool)

(assert (=> d!496192 m!1992187))

(assert (=> b!1646786 m!1992187))

(assert (=> b!1646786 m!1992187))

(declare-fun m!1992189 () Bool)

(assert (=> b!1646786 m!1992189))

(assert (=> d!495908 d!496192))

(declare-fun b!1646787 () Bool)

(declare-fun e!1056130 () Bool)

(assert (=> b!1646787 (= e!1056130 (inv!17 (value!100958 (h!23560 (t!150452 tokens!457)))))))

(declare-fun b!1646788 () Bool)

(declare-fun e!1056129 () Bool)

(assert (=> b!1646788 (= e!1056129 (inv!15 (value!100958 (h!23560 (t!150452 tokens!457)))))))

(declare-fun d!496194 () Bool)

(declare-fun c!267832 () Bool)

(assert (=> d!496194 (= c!267832 ((_ is IntegerValue!9879) (value!100958 (h!23560 (t!150452 tokens!457)))))))

(declare-fun e!1056128 () Bool)

(assert (=> d!496194 (= (inv!21 (value!100958 (h!23560 (t!150452 tokens!457)))) e!1056128)))

(declare-fun b!1646789 () Bool)

(assert (=> b!1646789 (= e!1056128 e!1056130)))

(declare-fun c!267833 () Bool)

(assert (=> b!1646789 (= c!267833 ((_ is IntegerValue!9880) (value!100958 (h!23560 (t!150452 tokens!457)))))))

(declare-fun b!1646790 () Bool)

(declare-fun res!737873 () Bool)

(assert (=> b!1646790 (=> res!737873 e!1056129)))

(assert (=> b!1646790 (= res!737873 (not ((_ is IntegerValue!9881) (value!100958 (h!23560 (t!150452 tokens!457))))))))

(assert (=> b!1646790 (= e!1056130 e!1056129)))

(declare-fun b!1646791 () Bool)

(assert (=> b!1646791 (= e!1056128 (inv!16 (value!100958 (h!23560 (t!150452 tokens!457)))))))

(assert (= (and d!496194 c!267832) b!1646791))

(assert (= (and d!496194 (not c!267832)) b!1646789))

(assert (= (and b!1646789 c!267833) b!1646787))

(assert (= (and b!1646789 (not c!267833)) b!1646790))

(assert (= (and b!1646790 (not res!737873)) b!1646788))

(declare-fun m!1992191 () Bool)

(assert (=> b!1646787 m!1992191))

(declare-fun m!1992193 () Bool)

(assert (=> b!1646788 m!1992193))

(declare-fun m!1992195 () Bool)

(assert (=> b!1646791 m!1992195))

(assert (=> b!1646229 d!496194))

(declare-fun d!496196 () Bool)

(declare-fun e!1056133 () Bool)

(assert (=> d!496196 e!1056133))

(declare-fun res!737876 () Bool)

(assert (=> d!496196 (=> (not res!737876) (not e!1056133))))

(declare-fun lt!608524 () BalanceConc!12052)

(assert (=> d!496196 (= res!737876 (= (list!7205 lt!608524) (Cons!18158 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0) Nil!18158)))))

(declare-fun singleton!722 (C!9236) BalanceConc!12052)

(assert (=> d!496196 (= lt!608524 (singleton!722 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0)))))

(assert (=> d!496196 (= (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0)) lt!608524)))

(declare-fun b!1646794 () Bool)

(assert (=> b!1646794 (= e!1056133 (isBalanced!1847 (c!267635 lt!608524)))))

(assert (= (and d!496196 res!737876) b!1646794))

(declare-fun m!1992197 () Bool)

(assert (=> d!496196 m!1992197))

(assert (=> d!496196 m!1990479))

(declare-fun m!1992199 () Bool)

(assert (=> d!496196 m!1992199))

(declare-fun m!1992201 () Bool)

(assert (=> b!1646794 m!1992201))

(assert (=> d!495786 d!496196))

(declare-fun d!496198 () Bool)

(declare-fun lt!608550 () Bool)

(declare-fun prefixMatch!449 (Regex!4531 List!18228) Bool)

(assert (=> d!496198 (= lt!608550 (prefixMatch!449 (rulesRegex!587 thiss!17113 rules!1846) (list!7205 (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))))))

(declare-datatypes ((List!18233 0))(
  ( (Nil!18163) (Cons!18163 (h!23564 Regex!4531) (t!150650 List!18233)) )
))
(declare-datatypes ((Context!1776 0))(
  ( (Context!1777 (exprs!1388 List!18233)) )
))
(declare-fun prefixMatchZipperSequence!608 ((InoxSet Context!1776) BalanceConc!12052 Int) Bool)

(declare-fun focus!194 (Regex!4531) (InoxSet Context!1776))

(assert (=> d!496198 (= lt!608550 (prefixMatchZipperSequence!608 (focus!194 (rulesRegex!587 thiss!17113 rules!1846)) (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))) 0))))

(declare-fun lt!608547 () Unit!30071)

(declare-fun lt!608552 () Unit!30071)

(assert (=> d!496198 (= lt!608547 lt!608552)))

(declare-fun lt!608554 () (InoxSet Context!1776))

(declare-fun lt!608545 () List!18228)

(declare-fun prefixMatchZipper!173 ((InoxSet Context!1776) List!18228) Bool)

(assert (=> d!496198 (= (prefixMatch!449 (rulesRegex!587 thiss!17113 rules!1846) lt!608545) (prefixMatchZipper!173 lt!608554 lt!608545))))

(declare-datatypes ((List!18234 0))(
  ( (Nil!18164) (Cons!18164 (h!23565 Context!1776) (t!150651 List!18234)) )
))
(declare-fun lt!608553 () List!18234)

(declare-fun prefixMatchZipperRegexEquiv!173 ((InoxSet Context!1776) List!18234 Regex!4531 List!18228) Unit!30071)

(assert (=> d!496198 (= lt!608552 (prefixMatchZipperRegexEquiv!173 lt!608554 lt!608553 (rulesRegex!587 thiss!17113 rules!1846) lt!608545))))

(assert (=> d!496198 (= lt!608545 (list!7205 (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0)))))))

(declare-fun toList!934 ((InoxSet Context!1776)) List!18234)

(assert (=> d!496198 (= lt!608553 (toList!934 (focus!194 (rulesRegex!587 thiss!17113 rules!1846))))))

(assert (=> d!496198 (= lt!608554 (focus!194 (rulesRegex!587 thiss!17113 rules!1846)))))

(declare-fun lt!608551 () Unit!30071)

(declare-fun lt!608546 () Unit!30071)

(assert (=> d!496198 (= lt!608551 lt!608546)))

(declare-fun lt!608549 () (InoxSet Context!1776))

(declare-fun lt!608548 () Int)

(declare-fun dropList!659 (BalanceConc!12052 Int) List!18228)

(assert (=> d!496198 (= (prefixMatchZipper!173 lt!608549 (dropList!659 (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))) lt!608548)) (prefixMatchZipperSequence!608 lt!608549 (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))) lt!608548))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!173 ((InoxSet Context!1776) BalanceConc!12052 Int) Unit!30071)

(assert (=> d!496198 (= lt!608546 (lemmaprefixMatchZipperSequenceEquivalent!173 lt!608549 (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))) lt!608548))))

(assert (=> d!496198 (= lt!608548 0)))

(assert (=> d!496198 (= lt!608549 (focus!194 (rulesRegex!587 thiss!17113 rules!1846)))))

(assert (=> d!496198 (validRegex!1802 (rulesRegex!587 thiss!17113 rules!1846))))

(assert (=> d!496198 (= (prefixMatchZipperSequence!607 (rulesRegex!587 thiss!17113 rules!1846) (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0)))) lt!608550)))

(declare-fun bs!396150 () Bool)

(assert (= bs!396150 d!496198))

(declare-fun m!1992203 () Bool)

(assert (=> bs!396150 m!1992203))

(declare-fun m!1992205 () Bool)

(assert (=> bs!396150 m!1992205))

(assert (=> bs!396150 m!1990485))

(declare-fun m!1992207 () Bool)

(assert (=> bs!396150 m!1992207))

(assert (=> bs!396150 m!1990487))

(declare-fun m!1992209 () Bool)

(assert (=> bs!396150 m!1992209))

(assert (=> bs!396150 m!1990485))

(declare-fun m!1992211 () Bool)

(assert (=> bs!396150 m!1992211))

(assert (=> bs!396150 m!1990487))

(assert (=> bs!396150 m!1992203))

(assert (=> bs!396150 m!1990487))

(declare-fun m!1992213 () Bool)

(assert (=> bs!396150 m!1992213))

(assert (=> bs!396150 m!1990485))

(declare-fun m!1992215 () Bool)

(assert (=> bs!396150 m!1992215))

(assert (=> bs!396150 m!1992203))

(assert (=> bs!396150 m!1990485))

(declare-fun m!1992217 () Bool)

(assert (=> bs!396150 m!1992217))

(declare-fun m!1992219 () Bool)

(assert (=> bs!396150 m!1992219))

(assert (=> bs!396150 m!1990487))

(declare-fun m!1992221 () Bool)

(assert (=> bs!396150 m!1992221))

(declare-fun m!1992223 () Bool)

(assert (=> bs!396150 m!1992223))

(assert (=> bs!396150 m!1990485))

(assert (=> bs!396150 m!1992221))

(assert (=> bs!396150 m!1990487))

(declare-fun m!1992225 () Bool)

(assert (=> bs!396150 m!1992225))

(assert (=> bs!396150 m!1992207))

(declare-fun m!1992227 () Bool)

(assert (=> bs!396150 m!1992227))

(assert (=> d!495786 d!496198))

(declare-fun d!496200 () Bool)

(declare-fun e!1056134 () Bool)

(assert (=> d!496200 e!1056134))

(declare-fun res!737877 () Bool)

(assert (=> d!496200 (=> (not res!737877) (not e!1056134))))

(assert (=> d!496200 (= res!737877 (appendAssocInst!456 (c!267635 (charsOf!1852 (h!23560 tokens!457))) (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0)))))))

(declare-fun lt!608555 () BalanceConc!12052)

(assert (=> d!496200 (= lt!608555 (BalanceConc!12053 (++!4901 (c!267635 (charsOf!1852 (h!23560 tokens!457))) (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))))))

(assert (=> d!496200 (= (++!4896 (charsOf!1852 (h!23560 tokens!457)) (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))) lt!608555)))

(declare-fun b!1646798 () Bool)

(assert (=> b!1646798 (= e!1056134 (= (list!7205 lt!608555) (++!4894 (list!7205 (charsOf!1852 (h!23560 tokens!457))) (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))))))

(declare-fun b!1646796 () Bool)

(declare-fun res!737879 () Bool)

(assert (=> b!1646796 (=> (not res!737879) (not e!1056134))))

(assert (=> b!1646796 (= res!737879 (<= (height!934 (++!4901 (c!267635 (charsOf!1852 (h!23560 tokens!457))) (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))) (+ (max!0 (height!934 (c!267635 (charsOf!1852 (h!23560 tokens!457)))) (height!934 (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))) 1)))))

(declare-fun b!1646795 () Bool)

(declare-fun res!737880 () Bool)

(assert (=> b!1646795 (=> (not res!737880) (not e!1056134))))

(assert (=> b!1646795 (= res!737880 (isBalanced!1847 (++!4901 (c!267635 (charsOf!1852 (h!23560 tokens!457))) (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))))))

(declare-fun b!1646797 () Bool)

(declare-fun res!737878 () Bool)

(assert (=> b!1646797 (=> (not res!737878) (not e!1056134))))

(assert (=> b!1646797 (= res!737878 (>= (height!934 (++!4901 (c!267635 (charsOf!1852 (h!23560 tokens!457))) (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0))))) (max!0 (height!934 (c!267635 (charsOf!1852 (h!23560 tokens!457)))) (height!934 (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0)))))))))

(assert (= (and d!496200 res!737877) b!1646795))

(assert (= (and b!1646795 res!737880) b!1646796))

(assert (= (and b!1646796 res!737879) b!1646797))

(assert (= (and b!1646797 res!737878) b!1646798))

(declare-fun m!1992229 () Bool)

(assert (=> d!496200 m!1992229))

(declare-fun m!1992231 () Bool)

(assert (=> d!496200 m!1992231))

(assert (=> b!1646795 m!1992231))

(assert (=> b!1646795 m!1992231))

(declare-fun m!1992233 () Bool)

(assert (=> b!1646795 m!1992233))

(declare-fun m!1992235 () Bool)

(assert (=> b!1646796 m!1992235))

(declare-fun m!1992237 () Bool)

(assert (=> b!1646796 m!1992237))

(declare-fun m!1992239 () Bool)

(assert (=> b!1646796 m!1992239))

(assert (=> b!1646796 m!1992231))

(assert (=> b!1646796 m!1992235))

(assert (=> b!1646796 m!1992237))

(assert (=> b!1646796 m!1992231))

(declare-fun m!1992241 () Bool)

(assert (=> b!1646796 m!1992241))

(assert (=> b!1646797 m!1992235))

(assert (=> b!1646797 m!1992237))

(assert (=> b!1646797 m!1992239))

(assert (=> b!1646797 m!1992231))

(assert (=> b!1646797 m!1992235))

(assert (=> b!1646797 m!1992237))

(assert (=> b!1646797 m!1992231))

(assert (=> b!1646797 m!1992241))

(declare-fun m!1992243 () Bool)

(assert (=> b!1646798 m!1992243))

(assert (=> b!1646798 m!1990331))

(assert (=> b!1646798 m!1990341))

(assert (=> b!1646798 m!1990481))

(declare-fun m!1992245 () Bool)

(assert (=> b!1646798 m!1992245))

(assert (=> b!1646798 m!1990341))

(assert (=> b!1646798 m!1992245))

(declare-fun m!1992247 () Bool)

(assert (=> b!1646798 m!1992247))

(assert (=> d!495786 d!496200))

(assert (=> d!495786 d!495900))

(declare-fun d!496202 () Bool)

(declare-fun lt!608558 () C!9236)

(declare-fun apply!4762 (List!18228 Int) C!9236)

(assert (=> d!496202 (= lt!608558 (apply!4762 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) 0))))

(declare-fun apply!4763 (Conc!6054 Int) C!9236)

(assert (=> d!496202 (= lt!608558 (apply!4763 (c!267635 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) 0))))

(declare-fun e!1056137 () Bool)

(assert (=> d!496202 e!1056137))

(declare-fun res!737883 () Bool)

(assert (=> d!496202 (=> (not res!737883) (not e!1056137))))

(assert (=> d!496202 (= res!737883 (<= 0 0))))

(assert (=> d!496202 (= (apply!4754 (charsOf!1852 (h!23560 (t!150452 tokens!457))) 0) lt!608558)))

(declare-fun b!1646801 () Bool)

(assert (=> b!1646801 (= e!1056137 (< 0 (size!14464 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(assert (= (and d!496202 res!737883) b!1646801))

(assert (=> d!496202 m!1990483))

(assert (=> d!496202 m!1990643))

(assert (=> d!496202 m!1990643))

(declare-fun m!1992249 () Bool)

(assert (=> d!496202 m!1992249))

(declare-fun m!1992251 () Bool)

(assert (=> d!496202 m!1992251))

(assert (=> b!1646801 m!1990483))

(assert (=> b!1646801 m!1990499))

(assert (=> d!495786 d!496202))

(declare-fun d!496204 () Bool)

(declare-fun lt!608561 () Unit!30071)

(declare-fun lemma!259 (List!18230 LexerInterface!2832 List!18230) Unit!30071)

(assert (=> d!496204 (= lt!608561 (lemma!259 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67601 () Int)

(declare-fun generalisedUnion!267 (List!18233) Regex!4531)

(declare-fun map!3740 (List!18230 Int) List!18233)

(assert (=> d!496204 (= (rulesRegex!587 thiss!17113 rules!1846) (generalisedUnion!267 (map!3740 rules!1846 lambda!67601)))))

(declare-fun bs!396151 () Bool)

(assert (= bs!396151 d!496204))

(declare-fun m!1992253 () Bool)

(assert (=> bs!396151 m!1992253))

(declare-fun m!1992255 () Bool)

(assert (=> bs!396151 m!1992255))

(assert (=> bs!396151 m!1992255))

(declare-fun m!1992257 () Bool)

(assert (=> bs!396151 m!1992257))

(assert (=> d!495786 d!496204))

(declare-fun d!496206 () Bool)

(declare-fun lt!608562 () BalanceConc!12052)

(assert (=> d!496206 (= (list!7205 lt!608562) (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))))

(assert (=> d!496206 (= lt!608562 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (value!100958 (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!496206 (= (charsOf!1852 (h!23560 (t!150452 tokens!457))) lt!608562)))

(declare-fun b_lambda!51757 () Bool)

(assert (=> (not b_lambda!51757) (not d!496206)))

(assert (=> d!496206 t!150501))

(declare-fun b_and!116901 () Bool)

(assert (= b_and!116893 (and (=> t!150501 result!113866) b_and!116901)))

(assert (=> d!496206 t!150503))

(declare-fun b_and!116903 () Bool)

(assert (= b_and!116895 (and (=> t!150503 result!113868) b_and!116903)))

(assert (=> d!496206 t!150505))

(declare-fun b_and!116905 () Bool)

(assert (= b_and!116897 (and (=> t!150505 result!113870) b_and!116905)))

(assert (=> d!496206 t!150507))

(declare-fun b_and!116907 () Bool)

(assert (= b_and!116899 (and (=> t!150507 result!113872) b_and!116907)))

(declare-fun m!1992259 () Bool)

(assert (=> d!496206 m!1992259))

(assert (=> d!496206 m!1991363))

(assert (=> d!495786 d!496206))

(declare-fun d!496208 () Bool)

(declare-fun lt!608563 () Bool)

(assert (=> d!496208 (= lt!608563 (isEmpty!11189 (list!7205 (_2!10315 lt!608084))))))

(assert (=> d!496208 (= lt!608563 (isEmpty!11193 (c!267635 (_2!10315 lt!608084))))))

(assert (=> d!496208 (= (isEmpty!11190 (_2!10315 lt!608084)) lt!608563)))

(declare-fun bs!396152 () Bool)

(assert (= bs!396152 d!496208))

(declare-fun m!1992261 () Bool)

(assert (=> bs!396152 m!1992261))

(assert (=> bs!396152 m!1992261))

(declare-fun m!1992263 () Bool)

(assert (=> bs!396152 m!1992263))

(declare-fun m!1992265 () Bool)

(assert (=> bs!396152 m!1992265))

(assert (=> b!1646043 d!496208))

(declare-fun d!496210 () Bool)

(assert (=> d!496210 (= (isEmpty!11187 (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))) ((_ is Nil!18159) (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(assert (=> d!495796 d!496210))

(declare-fun d!496212 () Bool)

(assert (=> d!496212 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800)))) (list!7209 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))))))

(declare-fun bs!396153 () Bool)

(assert (= bs!396153 d!496212))

(declare-fun m!1992267 () Bool)

(assert (=> bs!396153 m!1992267))

(assert (=> d!495796 d!496212))

(declare-fun d!496214 () Bool)

(declare-fun lt!608566 () Bool)

(assert (=> d!496214 (= lt!608566 (isEmpty!11187 (list!7209 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800)))))))))

(assert (=> d!496214 (= lt!608566 (= (size!14469 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))) 0))))

(assert (=> d!496214 (= (isEmpty!11188 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 lt!607800))))) lt!608566)))

(declare-fun bs!396154 () Bool)

(assert (= bs!396154 d!496214))

(assert (=> bs!396154 m!1992267))

(assert (=> bs!396154 m!1992267))

(declare-fun m!1992269 () Bool)

(assert (=> bs!396154 m!1992269))

(declare-fun m!1992271 () Bool)

(assert (=> bs!396154 m!1992271))

(assert (=> d!495796 d!496214))

(declare-fun b!1646805 () Bool)

(declare-fun e!1056139 () List!18228)

(assert (=> b!1646805 (= e!1056139 (++!4894 (list!7210 (left!14557 (c!267635 (charsOf!1852 (h!23560 tokens!457))))) (list!7210 (right!14887 (c!267635 (charsOf!1852 (h!23560 tokens!457)))))))))

(declare-fun b!1646803 () Bool)

(declare-fun e!1056138 () List!18228)

(assert (=> b!1646803 (= e!1056138 e!1056139)))

(declare-fun c!267835 () Bool)

(assert (=> b!1646803 (= c!267835 ((_ is Leaf!8876) (c!267635 (charsOf!1852 (h!23560 tokens!457)))))))

(declare-fun d!496216 () Bool)

(declare-fun c!267834 () Bool)

(assert (=> d!496216 (= c!267834 ((_ is Empty!6054) (c!267635 (charsOf!1852 (h!23560 tokens!457)))))))

(assert (=> d!496216 (= (list!7210 (c!267635 (charsOf!1852 (h!23560 tokens!457)))) e!1056138)))

(declare-fun b!1646804 () Bool)

(assert (=> b!1646804 (= e!1056139 (list!7214 (xs!8890 (c!267635 (charsOf!1852 (h!23560 tokens!457))))))))

(declare-fun b!1646802 () Bool)

(assert (=> b!1646802 (= e!1056138 Nil!18158)))

(assert (= (and d!496216 c!267834) b!1646802))

(assert (= (and d!496216 (not c!267834)) b!1646803))

(assert (= (and b!1646803 c!267835) b!1646804))

(assert (= (and b!1646803 (not c!267835)) b!1646805))

(declare-fun m!1992273 () Bool)

(assert (=> b!1646805 m!1992273))

(declare-fun m!1992275 () Bool)

(assert (=> b!1646805 m!1992275))

(assert (=> b!1646805 m!1992273))

(assert (=> b!1646805 m!1992275))

(declare-fun m!1992277 () Bool)

(assert (=> b!1646805 m!1992277))

(declare-fun m!1992279 () Bool)

(assert (=> b!1646804 m!1992279))

(assert (=> d!495906 d!496216))

(declare-fun b!1646808 () Bool)

(declare-fun e!1056140 () Bool)

(assert (=> b!1646808 (= e!1056140 (isPrefix!1461 (tail!2427 (tail!2427 lt!607800)) (tail!2427 (tail!2427 lt!607814))))))

(declare-fun d!496218 () Bool)

(declare-fun e!1056142 () Bool)

(assert (=> d!496218 e!1056142))

(declare-fun res!737884 () Bool)

(assert (=> d!496218 (=> res!737884 e!1056142)))

(declare-fun lt!608567 () Bool)

(assert (=> d!496218 (= res!737884 (not lt!608567))))

(declare-fun e!1056141 () Bool)

(assert (=> d!496218 (= lt!608567 e!1056141)))

(declare-fun res!737885 () Bool)

(assert (=> d!496218 (=> res!737885 e!1056141)))

(assert (=> d!496218 (= res!737885 ((_ is Nil!18158) (tail!2427 lt!607800)))))

(assert (=> d!496218 (= (isPrefix!1461 (tail!2427 lt!607800) (tail!2427 lt!607814)) lt!608567)))

(declare-fun b!1646807 () Bool)

(declare-fun res!737887 () Bool)

(assert (=> b!1646807 (=> (not res!737887) (not e!1056140))))

(assert (=> b!1646807 (= res!737887 (= (head!3605 (tail!2427 lt!607800)) (head!3605 (tail!2427 lt!607814))))))

(declare-fun b!1646806 () Bool)

(assert (=> b!1646806 (= e!1056141 e!1056140)))

(declare-fun res!737886 () Bool)

(assert (=> b!1646806 (=> (not res!737886) (not e!1056140))))

(assert (=> b!1646806 (= res!737886 (not ((_ is Nil!18158) (tail!2427 lt!607814))))))

(declare-fun b!1646809 () Bool)

(assert (=> b!1646809 (= e!1056142 (>= (size!14466 (tail!2427 lt!607814)) (size!14466 (tail!2427 lt!607800))))))

(assert (= (and d!496218 (not res!737885)) b!1646806))

(assert (= (and b!1646806 res!737886) b!1646807))

(assert (= (and b!1646807 res!737887) b!1646808))

(assert (= (and d!496218 (not res!737884)) b!1646809))

(assert (=> b!1646808 m!1990705))

(declare-fun m!1992281 () Bool)

(assert (=> b!1646808 m!1992281))

(assert (=> b!1646808 m!1990707))

(declare-fun m!1992283 () Bool)

(assert (=> b!1646808 m!1992283))

(assert (=> b!1646808 m!1992281))

(assert (=> b!1646808 m!1992283))

(declare-fun m!1992285 () Bool)

(assert (=> b!1646808 m!1992285))

(assert (=> b!1646807 m!1990705))

(declare-fun m!1992287 () Bool)

(assert (=> b!1646807 m!1992287))

(assert (=> b!1646807 m!1990707))

(declare-fun m!1992289 () Bool)

(assert (=> b!1646807 m!1992289))

(assert (=> b!1646809 m!1990707))

(declare-fun m!1992291 () Bool)

(assert (=> b!1646809 m!1992291))

(assert (=> b!1646809 m!1990705))

(declare-fun m!1992293 () Bool)

(assert (=> b!1646809 m!1992293))

(assert (=> b!1645936 d!496218))

(declare-fun d!496220 () Bool)

(assert (=> d!496220 (= (tail!2427 lt!607800) (t!150451 lt!607800))))

(assert (=> b!1645936 d!496220))

(declare-fun d!496222 () Bool)

(assert (=> d!496222 (= (tail!2427 lt!607814) (t!150451 lt!607814))))

(assert (=> b!1645936 d!496222))

(assert (=> b!1645962 d!496058))

(declare-fun d!496224 () Bool)

(declare-fun dynLambda!8132 (Int BalanceConc!12052) TokenValue!3293)

(assert (=> d!496224 (= (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608044))))) (dynLambda!8132 (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608044))))))))

(declare-fun b_lambda!51759 () Bool)

(assert (=> (not b_lambda!51759) (not d!496224)))

(declare-fun t!150540 () Bool)

(declare-fun tb!94295 () Bool)

(assert (=> (and b!1645821 (= (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150540) tb!94295))

(declare-fun result!113898 () Bool)

(assert (=> tb!94295 (= result!113898 (inv!21 (dynLambda!8132 (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044))))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608044)))))))))

(declare-fun m!1992295 () Bool)

(assert (=> tb!94295 m!1992295))

(assert (=> d!496224 t!150540))

(declare-fun b_and!116909 () Bool)

(assert (= b_and!116813 (and (=> t!150540 result!113898) b_and!116909)))

(declare-fun t!150542 () Bool)

(declare-fun tb!94297 () Bool)

(assert (=> (and b!1645826 (= (toValue!4646 (transformation!3203 (h!23561 rules!1846))) (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150542) tb!94297))

(declare-fun result!113902 () Bool)

(assert (= result!113902 result!113898))

(assert (=> d!496224 t!150542))

(declare-fun b_and!116911 () Bool)

(assert (= b_and!116817 (and (=> t!150542 result!113902) b_and!116911)))

(declare-fun t!150544 () Bool)

(declare-fun tb!94299 () Bool)

(assert (=> (and b!1646231 (= (toValue!4646 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150544) tb!94299))

(declare-fun result!113904 () Bool)

(assert (= result!113904 result!113898))

(assert (=> d!496224 t!150544))

(declare-fun b_and!116913 () Bool)

(assert (= b_and!116845 (and (=> t!150544 result!113904) b_and!116913)))

(declare-fun tb!94301 () Bool)

(declare-fun t!150546 () Bool)

(assert (=> (and b!1646242 (= (toValue!4646 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150546) tb!94301))

(declare-fun result!113906 () Bool)

(assert (= result!113906 result!113898))

(assert (=> d!496224 t!150546))

(declare-fun b_and!116915 () Bool)

(assert (= b_and!116849 (and (=> t!150546 result!113906) b_and!116915)))

(assert (=> d!496224 m!1990745))

(declare-fun m!1992297 () Bool)

(assert (=> d!496224 m!1992297))

(assert (=> b!1645962 d!496224))

(declare-fun d!496226 () Bool)

(assert (=> d!496226 (= (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608044)))) (fromListB!951 (originalCharacters!4017 (_1!10314 (get!5281 lt!608044)))))))

(declare-fun bs!396155 () Bool)

(assert (= bs!396155 d!496226))

(declare-fun m!1992299 () Bool)

(assert (=> bs!396155 m!1992299))

(assert (=> b!1645962 d!496226))

(declare-fun d!496228 () Bool)

(declare-fun lt!608568 () Bool)

(assert (=> d!496228 (= lt!608568 (isEmpty!11187 (list!7206 (_1!10315 lt!607943))))))

(assert (=> d!496228 (= lt!608568 (isEmpty!11188 (c!267637 (_1!10315 lt!607943))))))

(assert (=> d!496228 (= (isEmpty!11180 (_1!10315 lt!607943)) lt!608568)))

(declare-fun bs!396156 () Bool)

(assert (= bs!396156 d!496228))

(assert (=> bs!396156 m!1990611))

(assert (=> bs!396156 m!1990611))

(declare-fun m!1992301 () Bool)

(assert (=> bs!396156 m!1992301))

(declare-fun m!1992303 () Bool)

(assert (=> bs!396156 m!1992303))

(assert (=> b!1645912 d!496228))

(declare-fun bs!396157 () Bool)

(declare-fun d!496230 () Bool)

(assert (= bs!396157 (and d!496230 d!496190)))

(declare-fun lambda!67602 () Int)

(assert (=> bs!396157 (= (and (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (h!23561 rules!1846)))) (= (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toValue!4646 (transformation!3203 (h!23561 rules!1846))))) (= lambda!67602 lambda!67598))))

(assert (=> d!496230 true))

(assert (=> d!496230 (< (dynLambda!8125 order!10819 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) (dynLambda!8131 order!10823 lambda!67602))))

(assert (=> d!496230 true))

(assert (=> d!496230 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) (dynLambda!8131 order!10823 lambda!67602))))

(assert (=> d!496230 (= (semiInverseModEq!1234 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) (Forall!652 lambda!67602))))

(declare-fun bs!396158 () Bool)

(assert (= bs!396158 d!496230))

(declare-fun m!1992305 () Bool)

(assert (=> bs!396158 m!1992305))

(assert (=> d!495834 d!496230))

(declare-fun d!496232 () Bool)

(assert (=> d!496232 (= (list!7206 lt!608072) (list!7209 (c!267637 lt!608072)))))

(declare-fun bs!396159 () Bool)

(assert (= bs!396159 d!496232))

(declare-fun m!1992307 () Bool)

(assert (=> bs!396159 m!1992307))

(assert (=> d!495828 d!496232))

(declare-fun d!496234 () Bool)

(declare-fun e!1056148 () Bool)

(assert (=> d!496234 e!1056148))

(declare-fun res!737890 () Bool)

(assert (=> d!496234 (=> (not res!737890) (not e!1056148))))

(declare-fun lt!608571 () BalanceConc!12054)

(assert (=> d!496234 (= res!737890 (= (list!7206 lt!608571) (Cons!18159 (h!23560 tokens!457) Nil!18159)))))

(declare-fun choose!9884 (Token!5972) BalanceConc!12054)

(assert (=> d!496234 (= lt!608571 (choose!9884 (h!23560 tokens!457)))))

(assert (=> d!496234 (= (singleton!720 (h!23560 tokens!457)) lt!608571)))

(declare-fun b!1646814 () Bool)

(assert (=> b!1646814 (= e!1056148 (isBalanced!1846 (c!267637 lt!608571)))))

(assert (= (and d!496234 res!737890) b!1646814))

(declare-fun m!1992309 () Bool)

(assert (=> d!496234 m!1992309))

(declare-fun m!1992311 () Bool)

(assert (=> d!496234 m!1992311))

(declare-fun m!1992313 () Bool)

(assert (=> b!1646814 m!1992313))

(assert (=> d!495828 d!496234))

(declare-fun d!496236 () Bool)

(declare-fun lt!608572 () Int)

(assert (=> d!496236 (= lt!608572 (size!14466 (list!7205 (_2!10315 lt!608164))))))

(assert (=> d!496236 (= lt!608572 (size!14470 (c!267635 (_2!10315 lt!608164))))))

(assert (=> d!496236 (= (size!14464 (_2!10315 lt!608164)) lt!608572)))

(declare-fun bs!396160 () Bool)

(assert (= bs!396160 d!496236))

(assert (=> bs!396160 m!1991107))

(assert (=> bs!396160 m!1991107))

(declare-fun m!1992315 () Bool)

(assert (=> bs!396160 m!1992315))

(declare-fun m!1992317 () Bool)

(assert (=> bs!396160 m!1992317))

(assert (=> b!1646211 d!496236))

(declare-fun d!496238 () Bool)

(declare-fun lt!608573 () Int)

(assert (=> d!496238 (= lt!608573 (size!14466 (list!7205 lt!607803)))))

(assert (=> d!496238 (= lt!608573 (size!14470 (c!267635 lt!607803)))))

(assert (=> d!496238 (= (size!14464 lt!607803) lt!608573)))

(declare-fun bs!396161 () Bool)

(assert (= bs!396161 d!496238))

(assert (=> bs!396161 m!1990329))

(assert (=> bs!396161 m!1990329))

(declare-fun m!1992319 () Bool)

(assert (=> bs!396161 m!1992319))

(declare-fun m!1992321 () Bool)

(assert (=> bs!396161 m!1992321))

(assert (=> b!1646211 d!496238))

(declare-fun bs!396162 () Bool)

(declare-fun d!496240 () Bool)

(assert (= bs!396162 (and d!496240 d!495984)))

(declare-fun lambda!67603 () Int)

(assert (=> bs!396162 (= (= (toValue!4646 (transformation!3203 (h!23561 rules!1846))) (toValue!4646 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) (= lambda!67603 lambda!67589))))

(assert (=> d!496240 true))

(assert (=> d!496240 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8127 order!10821 lambda!67603))))

(assert (=> d!496240 (= (equivClasses!1175 (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toValue!4646 (transformation!3203 (h!23561 rules!1846)))) (Forall2!522 lambda!67603))))

(declare-fun bs!396163 () Bool)

(assert (= bs!396163 d!496240))

(declare-fun m!1992323 () Bool)

(assert (=> bs!396163 m!1992323))

(assert (=> b!1645870 d!496240))

(declare-fun d!496242 () Bool)

(assert (=> d!496242 (= (list!7205 (_2!10315 lt!607943)) (list!7210 (c!267635 (_2!10315 lt!607943))))))

(declare-fun bs!396164 () Bool)

(assert (= bs!396164 d!496242))

(declare-fun m!1992325 () Bool)

(assert (=> bs!396164 m!1992325))

(assert (=> b!1645910 d!496242))

(declare-fun b!1646825 () Bool)

(declare-fun e!1056156 () tuple2!17830)

(declare-fun lt!608580 () Option!3438)

(declare-fun lt!608581 () tuple2!17830)

(assert (=> b!1646825 (= e!1056156 (tuple2!17831 (Cons!18159 (_1!10314 (v!24578 lt!608580)) (_1!10317 lt!608581)) (_2!10317 lt!608581)))))

(assert (=> b!1646825 (= lt!608581 (lexList!863 thiss!17113 rules!1846 (_2!10314 (v!24578 lt!608580))))))

(declare-fun b!1646826 () Bool)

(declare-fun e!1056157 () Bool)

(declare-fun lt!608582 () tuple2!17830)

(assert (=> b!1646826 (= e!1056157 (= (_2!10317 lt!608582) (list!7205 (seqFromList!2145 lt!607800))))))

(declare-fun b!1646827 () Bool)

(assert (=> b!1646827 (= e!1056156 (tuple2!17831 Nil!18159 (list!7205 (seqFromList!2145 lt!607800))))))

(declare-fun b!1646828 () Bool)

(declare-fun e!1056155 () Bool)

(assert (=> b!1646828 (= e!1056157 e!1056155)))

(declare-fun res!737893 () Bool)

(assert (=> b!1646828 (= res!737893 (< (size!14466 (_2!10317 lt!608582)) (size!14466 (list!7205 (seqFromList!2145 lt!607800)))))))

(assert (=> b!1646828 (=> (not res!737893) (not e!1056155))))

(declare-fun b!1646829 () Bool)

(assert (=> b!1646829 (= e!1056155 (not (isEmpty!11187 (_1!10317 lt!608582))))))

(declare-fun d!496244 () Bool)

(assert (=> d!496244 e!1056157))

(declare-fun c!267841 () Bool)

(assert (=> d!496244 (= c!267841 (> (size!14468 (_1!10317 lt!608582)) 0))))

(assert (=> d!496244 (= lt!608582 e!1056156)))

(declare-fun c!267840 () Bool)

(assert (=> d!496244 (= c!267840 ((_ is Some!3437) lt!608580))))

(assert (=> d!496244 (= lt!608580 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (seqFromList!2145 lt!607800))))))

(assert (=> d!496244 (= (lexList!863 thiss!17113 rules!1846 (list!7205 (seqFromList!2145 lt!607800))) lt!608582)))

(assert (= (and d!496244 c!267840) b!1646825))

(assert (= (and d!496244 (not c!267840)) b!1646827))

(assert (= (and d!496244 c!267841) b!1646828))

(assert (= (and d!496244 (not c!267841)) b!1646826))

(assert (= (and b!1646828 res!737893) b!1646829))

(declare-fun m!1992327 () Bool)

(assert (=> b!1646825 m!1992327))

(declare-fun m!1992329 () Bool)

(assert (=> b!1646828 m!1992329))

(assert (=> b!1646828 m!1990613))

(assert (=> b!1646828 m!1991727))

(declare-fun m!1992331 () Bool)

(assert (=> b!1646829 m!1992331))

(declare-fun m!1992333 () Bool)

(assert (=> d!496244 m!1992333))

(assert (=> d!496244 m!1990613))

(declare-fun m!1992335 () Bool)

(assert (=> d!496244 m!1992335))

(assert (=> b!1645910 d!496244))

(declare-fun d!496246 () Bool)

(assert (=> d!496246 (= (list!7205 (seqFromList!2145 lt!607800)) (list!7210 (c!267635 (seqFromList!2145 lt!607800))))))

(declare-fun bs!396165 () Bool)

(assert (= bs!396165 d!496246))

(declare-fun m!1992337 () Bool)

(assert (=> bs!396165 m!1992337))

(assert (=> b!1645910 d!496246))

(declare-fun d!496248 () Bool)

(assert (=> d!496248 (= (list!7206 (_1!10315 lt!607943)) (list!7209 (c!267637 (_1!10315 lt!607943))))))

(declare-fun bs!396166 () Bool)

(assert (= bs!396166 d!496248))

(declare-fun m!1992339 () Bool)

(assert (=> bs!396166 m!1992339))

(assert (=> b!1645908 d!496248))

(assert (=> b!1645908 d!496244))

(assert (=> b!1645908 d!496246))

(declare-fun d!496250 () Bool)

(assert (=> d!496250 (= (isEmpty!11189 (originalCharacters!4017 (h!23560 tokens!457))) ((_ is Nil!18158) (originalCharacters!4017 (h!23560 tokens!457))))))

(assert (=> d!495830 d!496250))

(declare-fun b!1646848 () Bool)

(declare-fun e!1056167 () Bool)

(declare-fun e!1056168 () Bool)

(assert (=> b!1646848 (= e!1056167 e!1056168)))

(declare-fun res!737912 () Bool)

(assert (=> b!1646848 (=> (not res!737912) (not e!1056168))))

(declare-fun lt!608594 () Option!3438)

(assert (=> b!1646848 (= res!737912 (matchR!2024 (regex!3203 (h!23561 rules!1846)) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608594))))))))

(declare-fun d!496252 () Bool)

(assert (=> d!496252 e!1056167))

(declare-fun res!737910 () Bool)

(assert (=> d!496252 (=> res!737910 e!1056167)))

(assert (=> d!496252 (= res!737910 (isEmpty!11191 lt!608594))))

(declare-fun e!1056169 () Option!3438)

(assert (=> d!496252 (= lt!608594 e!1056169)))

(declare-fun c!267844 () Bool)

(declare-datatypes ((tuple2!17834 0))(
  ( (tuple2!17835 (_1!10319 List!18228) (_2!10319 List!18228)) )
))
(declare-fun lt!608595 () tuple2!17834)

(assert (=> d!496252 (= c!267844 (isEmpty!11189 (_1!10319 lt!608595)))))

(declare-fun findLongestMatch!291 (Regex!4531 List!18228) tuple2!17834)

(assert (=> d!496252 (= lt!608595 (findLongestMatch!291 (regex!3203 (h!23561 rules!1846)) lt!607813))))

(assert (=> d!496252 (ruleValid!752 thiss!17113 (h!23561 rules!1846))))

(assert (=> d!496252 (= (maxPrefixOneRule!803 thiss!17113 (h!23561 rules!1846) lt!607813) lt!608594)))

(declare-fun b!1646849 () Bool)

(declare-fun res!737908 () Bool)

(assert (=> b!1646849 (=> (not res!737908) (not e!1056168))))

(assert (=> b!1646849 (= res!737908 (= (value!100958 (_1!10314 (get!5281 lt!608594))) (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608594)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608594)))))))))

(declare-fun b!1646850 () Bool)

(declare-fun e!1056166 () Bool)

(declare-fun findLongestMatchInner!364 (Regex!4531 List!18228 Int List!18228 List!18228 Int) tuple2!17834)

(assert (=> b!1646850 (= e!1056166 (matchR!2024 (regex!3203 (h!23561 rules!1846)) (_1!10319 (findLongestMatchInner!364 (regex!3203 (h!23561 rules!1846)) Nil!18158 (size!14466 Nil!18158) lt!607813 lt!607813 (size!14466 lt!607813)))))))

(declare-fun b!1646851 () Bool)

(assert (=> b!1646851 (= e!1056169 (Some!3437 (tuple2!17825 (Token!5973 (apply!4756 (transformation!3203 (h!23561 rules!1846)) (seqFromList!2145 (_1!10319 lt!608595))) (h!23561 rules!1846) (size!14464 (seqFromList!2145 (_1!10319 lt!608595))) (_1!10319 lt!608595)) (_2!10319 lt!608595))))))

(declare-fun lt!608593 () Unit!30071)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!348 (Regex!4531 List!18228) Unit!30071)

(assert (=> b!1646851 (= lt!608593 (longestMatchIsAcceptedByMatchOrIsEmpty!348 (regex!3203 (h!23561 rules!1846)) lt!607813))))

(declare-fun res!737911 () Bool)

(assert (=> b!1646851 (= res!737911 (isEmpty!11189 (_1!10319 (findLongestMatchInner!364 (regex!3203 (h!23561 rules!1846)) Nil!18158 (size!14466 Nil!18158) lt!607813 lt!607813 (size!14466 lt!607813)))))))

(assert (=> b!1646851 (=> res!737911 e!1056166)))

(assert (=> b!1646851 e!1056166))

(declare-fun lt!608597 () Unit!30071)

(assert (=> b!1646851 (= lt!608597 lt!608593)))

(declare-fun lt!608596 () Unit!30071)

(declare-fun lemmaSemiInverse!415 (TokenValueInjection!6246 BalanceConc!12052) Unit!30071)

(assert (=> b!1646851 (= lt!608596 (lemmaSemiInverse!415 (transformation!3203 (h!23561 rules!1846)) (seqFromList!2145 (_1!10319 lt!608595))))))

(declare-fun b!1646852 () Bool)

(declare-fun res!737914 () Bool)

(assert (=> b!1646852 (=> (not res!737914) (not e!1056168))))

(assert (=> b!1646852 (= res!737914 (= (rule!5057 (_1!10314 (get!5281 lt!608594))) (h!23561 rules!1846)))))

(declare-fun b!1646853 () Bool)

(declare-fun res!737909 () Bool)

(assert (=> b!1646853 (=> (not res!737909) (not e!1056168))))

(assert (=> b!1646853 (= res!737909 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608594)))) (_2!10314 (get!5281 lt!608594))) lt!607813))))

(declare-fun b!1646854 () Bool)

(assert (=> b!1646854 (= e!1056168 (= (size!14460 (_1!10314 (get!5281 lt!608594))) (size!14466 (originalCharacters!4017 (_1!10314 (get!5281 lt!608594))))))))

(declare-fun b!1646855 () Bool)

(declare-fun res!737913 () Bool)

(assert (=> b!1646855 (=> (not res!737913) (not e!1056168))))

(assert (=> b!1646855 (= res!737913 (< (size!14466 (_2!10314 (get!5281 lt!608594))) (size!14466 lt!607813)))))

(declare-fun b!1646856 () Bool)

(assert (=> b!1646856 (= e!1056169 None!3437)))

(assert (= (and d!496252 c!267844) b!1646856))

(assert (= (and d!496252 (not c!267844)) b!1646851))

(assert (= (and b!1646851 (not res!737911)) b!1646850))

(assert (= (and d!496252 (not res!737910)) b!1646848))

(assert (= (and b!1646848 res!737912) b!1646853))

(assert (= (and b!1646853 res!737909) b!1646855))

(assert (= (and b!1646855 res!737913) b!1646852))

(assert (= (and b!1646852 res!737914) b!1646849))

(assert (= (and b!1646849 res!737908) b!1646854))

(declare-fun m!1992341 () Bool)

(assert (=> b!1646848 m!1992341))

(declare-fun m!1992343 () Bool)

(assert (=> b!1646848 m!1992343))

(assert (=> b!1646848 m!1992343))

(declare-fun m!1992345 () Bool)

(assert (=> b!1646848 m!1992345))

(assert (=> b!1646848 m!1992345))

(declare-fun m!1992347 () Bool)

(assert (=> b!1646848 m!1992347))

(assert (=> b!1646854 m!1992341))

(declare-fun m!1992349 () Bool)

(assert (=> b!1646854 m!1992349))

(assert (=> b!1646853 m!1992341))

(assert (=> b!1646853 m!1992343))

(assert (=> b!1646853 m!1992343))

(assert (=> b!1646853 m!1992345))

(assert (=> b!1646853 m!1992345))

(declare-fun m!1992351 () Bool)

(assert (=> b!1646853 m!1992351))

(declare-fun m!1992353 () Bool)

(assert (=> d!496252 m!1992353))

(declare-fun m!1992355 () Bool)

(assert (=> d!496252 m!1992355))

(declare-fun m!1992357 () Bool)

(assert (=> d!496252 m!1992357))

(assert (=> d!496252 m!1992073))

(declare-fun m!1992359 () Bool)

(assert (=> b!1646851 m!1992359))

(declare-fun m!1992361 () Bool)

(assert (=> b!1646851 m!1992361))

(declare-fun m!1992363 () Bool)

(assert (=> b!1646851 m!1992363))

(assert (=> b!1646851 m!1992363))

(declare-fun m!1992365 () Bool)

(assert (=> b!1646851 m!1992365))

(declare-fun m!1992367 () Bool)

(assert (=> b!1646851 m!1992367))

(assert (=> b!1646851 m!1992363))

(declare-fun m!1992369 () Bool)

(assert (=> b!1646851 m!1992369))

(assert (=> b!1646851 m!1992361))

(assert (=> b!1646851 m!1990751))

(declare-fun m!1992371 () Bool)

(assert (=> b!1646851 m!1992371))

(assert (=> b!1646851 m!1990751))

(assert (=> b!1646851 m!1992363))

(declare-fun m!1992373 () Bool)

(assert (=> b!1646851 m!1992373))

(assert (=> b!1646852 m!1992341))

(assert (=> b!1646850 m!1992361))

(assert (=> b!1646850 m!1990751))

(assert (=> b!1646850 m!1992361))

(assert (=> b!1646850 m!1990751))

(assert (=> b!1646850 m!1992371))

(declare-fun m!1992375 () Bool)

(assert (=> b!1646850 m!1992375))

(assert (=> b!1646849 m!1992341))

(declare-fun m!1992377 () Bool)

(assert (=> b!1646849 m!1992377))

(assert (=> b!1646849 m!1992377))

(declare-fun m!1992379 () Bool)

(assert (=> b!1646849 m!1992379))

(assert (=> b!1646855 m!1992341))

(declare-fun m!1992381 () Bool)

(assert (=> b!1646855 m!1992381))

(assert (=> b!1646855 m!1990751))

(assert (=> bm!105784 d!496252))

(declare-fun d!496254 () Bool)

(declare-fun charsToBigInt!1 (List!18227) Int)

(assert (=> d!496254 (= (inv!17 (value!100958 (h!23560 tokens!457))) (= (charsToBigInt!1 (text!23499 (value!100958 (h!23560 tokens!457)))) (value!100950 (value!100958 (h!23560 tokens!457)))))))

(declare-fun bs!396167 () Bool)

(assert (= bs!396167 d!496254))

(declare-fun m!1992383 () Bool)

(assert (=> bs!396167 m!1992383))

(assert (=> b!1645842 d!496254))

(declare-fun d!496256 () Bool)

(declare-fun e!1056171 () Bool)

(assert (=> d!496256 e!1056171))

(declare-fun res!737916 () Bool)

(assert (=> d!496256 (=> (not res!737916) (not e!1056171))))

(declare-fun lt!608598 () List!18228)

(assert (=> d!496256 (= res!737916 (= (content!2517 lt!608598) ((_ map or) (content!2517 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) (content!2517 (_2!10314 (get!5281 lt!608044))))))))

(declare-fun e!1056170 () List!18228)

(assert (=> d!496256 (= lt!608598 e!1056170)))

(declare-fun c!267845 () Bool)

(assert (=> d!496256 (= c!267845 ((_ is Nil!18158) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))))))

(assert (=> d!496256 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))) (_2!10314 (get!5281 lt!608044))) lt!608598)))

(declare-fun b!1646857 () Bool)

(assert (=> b!1646857 (= e!1056170 (_2!10314 (get!5281 lt!608044)))))

(declare-fun b!1646858 () Bool)

(assert (=> b!1646858 (= e!1056170 (Cons!18158 (h!23559 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) (++!4894 (t!150451 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) (_2!10314 (get!5281 lt!608044)))))))

(declare-fun b!1646859 () Bool)

(declare-fun res!737915 () Bool)

(assert (=> b!1646859 (=> (not res!737915) (not e!1056171))))

(assert (=> b!1646859 (= res!737915 (= (size!14466 lt!608598) (+ (size!14466 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044))))) (size!14466 (_2!10314 (get!5281 lt!608044))))))))

(declare-fun b!1646860 () Bool)

(assert (=> b!1646860 (= e!1056171 (or (not (= (_2!10314 (get!5281 lt!608044)) Nil!18158)) (= lt!608598 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608044)))))))))

(assert (= (and d!496256 c!267845) b!1646857))

(assert (= (and d!496256 (not c!267845)) b!1646858))

(assert (= (and d!496256 res!737916) b!1646859))

(assert (= (and b!1646859 res!737915) b!1646860))

(declare-fun m!1992385 () Bool)

(assert (=> d!496256 m!1992385))

(assert (=> d!496256 m!1990735))

(declare-fun m!1992387 () Bool)

(assert (=> d!496256 m!1992387))

(declare-fun m!1992389 () Bool)

(assert (=> d!496256 m!1992389))

(declare-fun m!1992391 () Bool)

(assert (=> b!1646858 m!1992391))

(declare-fun m!1992393 () Bool)

(assert (=> b!1646859 m!1992393))

(assert (=> b!1646859 m!1990735))

(declare-fun m!1992395 () Bool)

(assert (=> b!1646859 m!1992395))

(assert (=> b!1646859 m!1990749))

(assert (=> b!1645958 d!496256))

(assert (=> b!1645958 d!496072))

(assert (=> b!1645958 d!496074))

(assert (=> b!1645958 d!496058))

(declare-fun d!496258 () Bool)

(declare-fun lt!608599 () Int)

(assert (=> d!496258 (>= lt!608599 0)))

(declare-fun e!1056172 () Int)

(assert (=> d!496258 (= lt!608599 e!1056172)))

(declare-fun c!267846 () Bool)

(assert (=> d!496258 (= c!267846 ((_ is Nil!18158) (originalCharacters!4017 (h!23560 tokens!457))))))

(assert (=> d!496258 (= (size!14466 (originalCharacters!4017 (h!23560 tokens!457))) lt!608599)))

(declare-fun b!1646861 () Bool)

(assert (=> b!1646861 (= e!1056172 0)))

(declare-fun b!1646862 () Bool)

(assert (=> b!1646862 (= e!1056172 (+ 1 (size!14466 (t!150451 (originalCharacters!4017 (h!23560 tokens!457))))))))

(assert (= (and d!496258 c!267846) b!1646861))

(assert (= (and d!496258 (not c!267846)) b!1646862))

(declare-fun m!1992397 () Bool)

(assert (=> b!1646862 m!1992397))

(assert (=> b!1646003 d!496258))

(declare-fun d!496260 () Bool)

(assert (=> d!496260 (= (list!7205 (_2!10315 lt!608164)) (list!7210 (c!267635 (_2!10315 lt!608164))))))

(declare-fun bs!396168 () Bool)

(assert (= bs!396168 d!496260))

(declare-fun m!1992399 () Bool)

(assert (=> bs!396168 m!1992399))

(assert (=> b!1646210 d!496260))

(declare-fun b!1646863 () Bool)

(declare-fun e!1056174 () tuple2!17830)

(declare-fun lt!608600 () Option!3438)

(declare-fun lt!608601 () tuple2!17830)

(assert (=> b!1646863 (= e!1056174 (tuple2!17831 (Cons!18159 (_1!10314 (v!24578 lt!608600)) (_1!10317 lt!608601)) (_2!10317 lt!608601)))))

(assert (=> b!1646863 (= lt!608601 (lexList!863 thiss!17113 rules!1846 (_2!10314 (v!24578 lt!608600))))))

(declare-fun b!1646864 () Bool)

(declare-fun e!1056175 () Bool)

(declare-fun lt!608602 () tuple2!17830)

(assert (=> b!1646864 (= e!1056175 (= (_2!10317 lt!608602) (list!7205 lt!607803)))))

(declare-fun b!1646865 () Bool)

(assert (=> b!1646865 (= e!1056174 (tuple2!17831 Nil!18159 (list!7205 lt!607803)))))

(declare-fun b!1646866 () Bool)

(declare-fun e!1056173 () Bool)

(assert (=> b!1646866 (= e!1056175 e!1056173)))

(declare-fun res!737917 () Bool)

(assert (=> b!1646866 (= res!737917 (< (size!14466 (_2!10317 lt!608602)) (size!14466 (list!7205 lt!607803))))))

(assert (=> b!1646866 (=> (not res!737917) (not e!1056173))))

(declare-fun b!1646867 () Bool)

(assert (=> b!1646867 (= e!1056173 (not (isEmpty!11187 (_1!10317 lt!608602))))))

(declare-fun d!496262 () Bool)

(assert (=> d!496262 e!1056175))

(declare-fun c!267848 () Bool)

(assert (=> d!496262 (= c!267848 (> (size!14468 (_1!10317 lt!608602)) 0))))

(assert (=> d!496262 (= lt!608602 e!1056174)))

(declare-fun c!267847 () Bool)

(assert (=> d!496262 (= c!267847 ((_ is Some!3437) lt!608600))))

(assert (=> d!496262 (= lt!608600 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 lt!607803)))))

(assert (=> d!496262 (= (lexList!863 thiss!17113 rules!1846 (list!7205 lt!607803)) lt!608602)))

(assert (= (and d!496262 c!267847) b!1646863))

(assert (= (and d!496262 (not c!267847)) b!1646865))

(assert (= (and d!496262 c!267848) b!1646866))

(assert (= (and d!496262 (not c!267848)) b!1646864))

(assert (= (and b!1646866 res!737917) b!1646867))

(declare-fun m!1992401 () Bool)

(assert (=> b!1646863 m!1992401))

(declare-fun m!1992403 () Bool)

(assert (=> b!1646866 m!1992403))

(assert (=> b!1646866 m!1990329))

(assert (=> b!1646866 m!1992319))

(declare-fun m!1992405 () Bool)

(assert (=> b!1646867 m!1992405))

(declare-fun m!1992407 () Bool)

(assert (=> d!496262 m!1992407))

(assert (=> d!496262 m!1990329))

(declare-fun m!1992409 () Bool)

(assert (=> d!496262 m!1992409))

(assert (=> b!1646210 d!496262))

(assert (=> b!1646210 d!495898))

(assert (=> d!495810 d!495792))

(assert (=> d!495810 d!496156))

(assert (=> d!495810 d!496158))

(assert (=> d!495810 d!495902))

(declare-fun d!496264 () Bool)

(assert (=> d!496264 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457)))))) (list!7209 (c!267637 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 tokens!457))))))))))

(declare-fun bs!396169 () Bool)

(assert (= bs!396169 d!496264))

(declare-fun m!1992411 () Bool)

(assert (=> bs!396169 m!1992411))

(assert (=> d!495810 d!496264))

(declare-fun b!1646868 () Bool)

(declare-fun e!1056177 () Option!3438)

(declare-fun lt!608603 () Option!3438)

(declare-fun lt!608606 () Option!3438)

(assert (=> b!1646868 (= e!1056177 (ite (and ((_ is None!3437) lt!608603) ((_ is None!3437) lt!608606)) None!3437 (ite ((_ is None!3437) lt!608606) lt!608603 (ite ((_ is None!3437) lt!608603) lt!608606 (ite (>= (size!14460 (_1!10314 (v!24578 lt!608603))) (size!14460 (_1!10314 (v!24578 lt!608606)))) lt!608603 lt!608606)))))))

(declare-fun call!105807 () Option!3438)

(assert (=> b!1646868 (= lt!608603 call!105807)))

(assert (=> b!1646868 (= lt!608606 (maxPrefix!1394 thiss!17113 (t!150453 (t!150453 rules!1846)) lt!607813))))

(declare-fun d!496266 () Bool)

(declare-fun e!1056178 () Bool)

(assert (=> d!496266 e!1056178))

(declare-fun res!737919 () Bool)

(assert (=> d!496266 (=> res!737919 e!1056178)))

(declare-fun lt!608604 () Option!3438)

(assert (=> d!496266 (= res!737919 (isEmpty!11191 lt!608604))))

(assert (=> d!496266 (= lt!608604 e!1056177)))

(declare-fun c!267849 () Bool)

(assert (=> d!496266 (= c!267849 (and ((_ is Cons!18160) (t!150453 rules!1846)) ((_ is Nil!18160) (t!150453 (t!150453 rules!1846)))))))

(declare-fun lt!608607 () Unit!30071)

(declare-fun lt!608605 () Unit!30071)

(assert (=> d!496266 (= lt!608607 lt!608605)))

(assert (=> d!496266 (isPrefix!1461 lt!607813 lt!607813)))

(assert (=> d!496266 (= lt!608605 (lemmaIsPrefixRefl!988 lt!607813 lt!607813))))

(assert (=> d!496266 (rulesValidInductive!1010 thiss!17113 (t!150453 rules!1846))))

(assert (=> d!496266 (= (maxPrefix!1394 thiss!17113 (t!150453 rules!1846) lt!607813) lt!608604)))

(declare-fun b!1646869 () Bool)

(declare-fun res!737920 () Bool)

(declare-fun e!1056176 () Bool)

(assert (=> b!1646869 (=> (not res!737920) (not e!1056176))))

(assert (=> b!1646869 (= res!737920 (= (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608604)))) (originalCharacters!4017 (_1!10314 (get!5281 lt!608604)))))))

(declare-fun b!1646870 () Bool)

(declare-fun res!737924 () Bool)

(assert (=> b!1646870 (=> (not res!737924) (not e!1056176))))

(assert (=> b!1646870 (= res!737924 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608604)))) (_2!10314 (get!5281 lt!608604))) lt!607813))))

(declare-fun b!1646871 () Bool)

(assert (=> b!1646871 (= e!1056176 (contains!3162 (t!150453 rules!1846) (rule!5057 (_1!10314 (get!5281 lt!608604)))))))

(declare-fun b!1646872 () Bool)

(declare-fun res!737918 () Bool)

(assert (=> b!1646872 (=> (not res!737918) (not e!1056176))))

(assert (=> b!1646872 (= res!737918 (matchR!2024 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608604)))) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608604))))))))

(declare-fun bm!105802 () Bool)

(assert (=> bm!105802 (= call!105807 (maxPrefixOneRule!803 thiss!17113 (h!23561 (t!150453 rules!1846)) lt!607813))))

(declare-fun b!1646873 () Bool)

(assert (=> b!1646873 (= e!1056178 e!1056176)))

(declare-fun res!737921 () Bool)

(assert (=> b!1646873 (=> (not res!737921) (not e!1056176))))

(assert (=> b!1646873 (= res!737921 (isDefined!2795 lt!608604))))

(declare-fun b!1646874 () Bool)

(declare-fun res!737923 () Bool)

(assert (=> b!1646874 (=> (not res!737923) (not e!1056176))))

(assert (=> b!1646874 (= res!737923 (= (value!100958 (_1!10314 (get!5281 lt!608604))) (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608604)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608604)))))))))

(declare-fun b!1646875 () Bool)

(declare-fun res!737922 () Bool)

(assert (=> b!1646875 (=> (not res!737922) (not e!1056176))))

(assert (=> b!1646875 (= res!737922 (< (size!14466 (_2!10314 (get!5281 lt!608604))) (size!14466 lt!607813)))))

(declare-fun b!1646876 () Bool)

(assert (=> b!1646876 (= e!1056177 call!105807)))

(assert (= (and d!496266 c!267849) b!1646876))

(assert (= (and d!496266 (not c!267849)) b!1646868))

(assert (= (or b!1646876 b!1646868) bm!105802))

(assert (= (and d!496266 (not res!737919)) b!1646873))

(assert (= (and b!1646873 res!737921) b!1646869))

(assert (= (and b!1646869 res!737920) b!1646875))

(assert (= (and b!1646875 res!737922) b!1646870))

(assert (= (and b!1646870 res!737924) b!1646874))

(assert (= (and b!1646874 res!737923) b!1646872))

(assert (= (and b!1646872 res!737918) b!1646871))

(declare-fun m!1992413 () Bool)

(assert (=> b!1646872 m!1992413))

(declare-fun m!1992415 () Bool)

(assert (=> b!1646872 m!1992415))

(assert (=> b!1646872 m!1992415))

(declare-fun m!1992417 () Bool)

(assert (=> b!1646872 m!1992417))

(assert (=> b!1646872 m!1992417))

(declare-fun m!1992419 () Bool)

(assert (=> b!1646872 m!1992419))

(assert (=> b!1646870 m!1992413))

(assert (=> b!1646870 m!1992415))

(assert (=> b!1646870 m!1992415))

(assert (=> b!1646870 m!1992417))

(assert (=> b!1646870 m!1992417))

(declare-fun m!1992421 () Bool)

(assert (=> b!1646870 m!1992421))

(declare-fun m!1992423 () Bool)

(assert (=> bm!105802 m!1992423))

(declare-fun m!1992425 () Bool)

(assert (=> b!1646868 m!1992425))

(assert (=> b!1646874 m!1992413))

(declare-fun m!1992427 () Bool)

(assert (=> b!1646874 m!1992427))

(assert (=> b!1646874 m!1992427))

(declare-fun m!1992429 () Bool)

(assert (=> b!1646874 m!1992429))

(assert (=> b!1646875 m!1992413))

(declare-fun m!1992431 () Bool)

(assert (=> b!1646875 m!1992431))

(assert (=> b!1646875 m!1990751))

(assert (=> b!1646869 m!1992413))

(assert (=> b!1646869 m!1992415))

(assert (=> b!1646869 m!1992415))

(assert (=> b!1646869 m!1992417))

(declare-fun m!1992433 () Bool)

(assert (=> d!496266 m!1992433))

(assert (=> d!496266 m!1990755))

(assert (=> d!496266 m!1990757))

(assert (=> d!496266 m!1992075))

(assert (=> b!1646871 m!1992413))

(declare-fun m!1992435 () Bool)

(assert (=> b!1646871 m!1992435))

(declare-fun m!1992437 () Bool)

(assert (=> b!1646873 m!1992437))

(assert (=> b!1645956 d!496266))

(declare-fun d!496268 () Bool)

(assert (=> d!496268 (= (list!7206 (_1!10315 lt!608164)) (list!7209 (c!267637 (_1!10315 lt!608164))))))

(declare-fun bs!396170 () Bool)

(assert (= bs!396170 d!496268))

(declare-fun m!1992439 () Bool)

(assert (=> bs!396170 m!1992439))

(assert (=> b!1646208 d!496268))

(assert (=> b!1646208 d!496262))

(assert (=> b!1646208 d!495898))

(declare-fun d!496270 () Bool)

(assert (=> d!496270 (= (list!7205 lt!608168) (list!7210 (c!267635 lt!608168)))))

(declare-fun bs!396171 () Bool)

(assert (= bs!396171 d!496270))

(declare-fun m!1992441 () Bool)

(assert (=> bs!396171 m!1992441))

(assert (=> d!495910 d!496270))

(declare-fun d!496272 () Bool)

(declare-fun c!267850 () Bool)

(assert (=> d!496272 (= c!267850 ((_ is Cons!18159) (list!7206 lt!607810)))))

(declare-fun e!1056179 () List!18228)

(assert (=> d!496272 (= (printList!945 thiss!17113 (list!7206 lt!607810)) e!1056179)))

(declare-fun b!1646877 () Bool)

(assert (=> b!1646877 (= e!1056179 (++!4894 (list!7205 (charsOf!1852 (h!23560 (list!7206 lt!607810)))) (printList!945 thiss!17113 (t!150452 (list!7206 lt!607810)))))))

(declare-fun b!1646878 () Bool)

(assert (=> b!1646878 (= e!1056179 Nil!18158)))

(assert (= (and d!496272 c!267850) b!1646877))

(assert (= (and d!496272 (not c!267850)) b!1646878))

(declare-fun m!1992443 () Bool)

(assert (=> b!1646877 m!1992443))

(assert (=> b!1646877 m!1992443))

(declare-fun m!1992445 () Bool)

(assert (=> b!1646877 m!1992445))

(declare-fun m!1992447 () Bool)

(assert (=> b!1646877 m!1992447))

(assert (=> b!1646877 m!1992445))

(assert (=> b!1646877 m!1992447))

(declare-fun m!1992449 () Bool)

(assert (=> b!1646877 m!1992449))

(assert (=> d!495910 d!496272))

(assert (=> d!495910 d!495784))

(declare-fun d!496274 () Bool)

(declare-fun lt!608614 () BalanceConc!12052)

(assert (=> d!496274 (= (list!7205 lt!608614) (printListTailRec!385 thiss!17113 (dropList!658 lt!607810 0) (list!7205 (BalanceConc!12053 Empty!6054))))))

(declare-fun e!1056181 () BalanceConc!12052)

(assert (=> d!496274 (= lt!608614 e!1056181)))

(declare-fun c!267851 () Bool)

(assert (=> d!496274 (= c!267851 (>= 0 (size!14465 lt!607810)))))

(declare-fun e!1056180 () Bool)

(assert (=> d!496274 e!1056180))

(declare-fun res!737925 () Bool)

(assert (=> d!496274 (=> (not res!737925) (not e!1056180))))

(assert (=> d!496274 (= res!737925 (>= 0 0))))

(assert (=> d!496274 (= (printTailRec!883 thiss!17113 lt!607810 0 (BalanceConc!12053 Empty!6054)) lt!608614)))

(declare-fun b!1646879 () Bool)

(assert (=> b!1646879 (= e!1056180 (<= 0 (size!14465 lt!607810)))))

(declare-fun b!1646880 () Bool)

(assert (=> b!1646880 (= e!1056181 (BalanceConc!12053 Empty!6054))))

(declare-fun b!1646881 () Bool)

(assert (=> b!1646881 (= e!1056181 (printTailRec!883 thiss!17113 lt!607810 (+ 0 1) (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 lt!607810 0)))))))

(declare-fun lt!608610 () List!18229)

(assert (=> b!1646881 (= lt!608610 (list!7206 lt!607810))))

(declare-fun lt!608613 () Unit!30071)

(assert (=> b!1646881 (= lt!608613 (lemmaDropApply!592 lt!608610 0))))

(assert (=> b!1646881 (= (head!3607 (drop!904 lt!608610 0)) (apply!4758 lt!608610 0))))

(declare-fun lt!608611 () Unit!30071)

(assert (=> b!1646881 (= lt!608611 lt!608613)))

(declare-fun lt!608608 () List!18229)

(assert (=> b!1646881 (= lt!608608 (list!7206 lt!607810))))

(declare-fun lt!608609 () Unit!30071)

(assert (=> b!1646881 (= lt!608609 (lemmaDropTail!572 lt!608608 0))))

(assert (=> b!1646881 (= (tail!2428 (drop!904 lt!608608 0)) (drop!904 lt!608608 (+ 0 1)))))

(declare-fun lt!608612 () Unit!30071)

(assert (=> b!1646881 (= lt!608612 lt!608609)))

(assert (= (and d!496274 res!737925) b!1646879))

(assert (= (and d!496274 c!267851) b!1646880))

(assert (= (and d!496274 (not c!267851)) b!1646881))

(declare-fun m!1992451 () Bool)

(assert (=> d!496274 m!1992451))

(assert (=> d!496274 m!1990771))

(declare-fun m!1992453 () Bool)

(assert (=> d!496274 m!1992453))

(assert (=> d!496274 m!1990771))

(declare-fun m!1992455 () Bool)

(assert (=> d!496274 m!1992455))

(assert (=> d!496274 m!1992451))

(declare-fun m!1992457 () Bool)

(assert (=> d!496274 m!1992457))

(assert (=> b!1646879 m!1992457))

(declare-fun m!1992459 () Bool)

(assert (=> b!1646881 m!1992459))

(declare-fun m!1992461 () Bool)

(assert (=> b!1646881 m!1992461))

(declare-fun m!1992463 () Bool)

(assert (=> b!1646881 m!1992463))

(declare-fun m!1992465 () Bool)

(assert (=> b!1646881 m!1992465))

(declare-fun m!1992467 () Bool)

(assert (=> b!1646881 m!1992467))

(declare-fun m!1992469 () Bool)

(assert (=> b!1646881 m!1992469))

(assert (=> b!1646881 m!1992469))

(assert (=> b!1646881 m!1992463))

(declare-fun m!1992471 () Bool)

(assert (=> b!1646881 m!1992471))

(declare-fun m!1992473 () Bool)

(assert (=> b!1646881 m!1992473))

(declare-fun m!1992475 () Bool)

(assert (=> b!1646881 m!1992475))

(declare-fun m!1992477 () Bool)

(assert (=> b!1646881 m!1992477))

(assert (=> b!1646881 m!1990377))

(assert (=> b!1646881 m!1992467))

(declare-fun m!1992479 () Bool)

(assert (=> b!1646881 m!1992479))

(assert (=> b!1646881 m!1992461))

(declare-fun m!1992481 () Bool)

(assert (=> b!1646881 m!1992481))

(assert (=> b!1646881 m!1992471))

(assert (=> d!495910 d!496274))

(declare-fun d!496276 () Bool)

(declare-fun e!1056182 () Bool)

(assert (=> d!496276 e!1056182))

(declare-fun res!737926 () Bool)

(assert (=> d!496276 (=> (not res!737926) (not e!1056182))))

(declare-fun lt!608615 () BalanceConc!12054)

(assert (=> d!496276 (= res!737926 (= (list!7206 lt!608615) (t!150452 (t!150452 tokens!457))))))

(assert (=> d!496276 (= lt!608615 (BalanceConc!12055 (fromList!394 (t!150452 (t!150452 tokens!457)))))))

(assert (=> d!496276 (= (fromListB!950 (t!150452 (t!150452 tokens!457))) lt!608615)))

(declare-fun b!1646882 () Bool)

(assert (=> b!1646882 (= e!1056182 (isBalanced!1846 (fromList!394 (t!150452 (t!150452 tokens!457)))))))

(assert (= (and d!496276 res!737926) b!1646882))

(declare-fun m!1992483 () Bool)

(assert (=> d!496276 m!1992483))

(declare-fun m!1992485 () Bool)

(assert (=> d!496276 m!1992485))

(assert (=> b!1646882 m!1992485))

(assert (=> b!1646882 m!1992485))

(declare-fun m!1992487 () Bool)

(assert (=> b!1646882 m!1992487))

(assert (=> d!495782 d!496276))

(declare-fun d!496278 () Bool)

(declare-fun c!267852 () Bool)

(assert (=> d!496278 (= c!267852 ((_ is Empty!6055) (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457))))))))

(declare-fun e!1056183 () List!18229)

(assert (=> d!496278 (= (list!7209 (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457))))) e!1056183)))

(declare-fun b!1646883 () Bool)

(assert (=> b!1646883 (= e!1056183 Nil!18159)))

(declare-fun b!1646884 () Bool)

(declare-fun e!1056184 () List!18229)

(assert (=> b!1646884 (= e!1056183 e!1056184)))

(declare-fun c!267853 () Bool)

(assert (=> b!1646884 (= c!267853 ((_ is Leaf!8877) (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1646886 () Bool)

(assert (=> b!1646886 (= e!1056184 (++!4899 (list!7209 (left!14558 (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457)))))) (list!7209 (right!14888 (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457))))))))))

(declare-fun b!1646885 () Bool)

(assert (=> b!1646885 (= e!1056184 (list!7213 (xs!8891 (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 tokens!457)))))))))

(assert (= (and d!496278 c!267852) b!1646883))

(assert (= (and d!496278 (not c!267852)) b!1646884))

(assert (= (and b!1646884 c!267853) b!1646885))

(assert (= (and b!1646884 (not c!267853)) b!1646886))

(declare-fun m!1992489 () Bool)

(assert (=> b!1646886 m!1992489))

(declare-fun m!1992491 () Bool)

(assert (=> b!1646886 m!1992491))

(assert (=> b!1646886 m!1992489))

(assert (=> b!1646886 m!1992491))

(declare-fun m!1992493 () Bool)

(assert (=> b!1646886 m!1992493))

(declare-fun m!1992495 () Bool)

(assert (=> b!1646885 m!1992495))

(assert (=> d!495776 d!496278))

(assert (=> b!1645875 d!495836))

(assert (=> b!1645875 d!495786))

(declare-fun d!496280 () Bool)

(declare-fun lt!608616 () Int)

(assert (=> d!496280 (= lt!608616 (size!14466 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496280 (= lt!608616 (size!14470 (c!267635 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496280 (= (size!14464 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) lt!608616)))

(declare-fun bs!396172 () Bool)

(assert (= bs!396172 d!496280))

(assert (=> bs!396172 m!1990483))

(assert (=> bs!396172 m!1990643))

(assert (=> bs!396172 m!1990643))

(declare-fun m!1992497 () Bool)

(assert (=> bs!396172 m!1992497))

(declare-fun m!1992499 () Bool)

(assert (=> bs!396172 m!1992499))

(assert (=> b!1645875 d!496280))

(declare-fun d!496282 () Bool)

(assert (=> d!496282 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457))))

(declare-fun lt!608619 () Unit!30071)

(declare-fun choose!9885 (LexerInterface!2832 List!18230 List!18229 Token!5972) Unit!30071)

(assert (=> d!496282 (= lt!608619 (choose!9885 thiss!17113 rules!1846 tokens!457 (h!23560 tokens!457)))))

(assert (=> d!496282 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496282 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 thiss!17113 rules!1846 tokens!457 (h!23560 tokens!457)) lt!608619)))

(declare-fun bs!396173 () Bool)

(assert (= bs!396173 d!496282))

(assert (=> bs!396173 m!1990319))

(declare-fun m!1992501 () Bool)

(assert (=> bs!396173 m!1992501))

(assert (=> bs!396173 m!1990349))

(assert (=> b!1645875 d!496282))

(assert (=> b!1645875 d!496206))

(declare-fun d!496284 () Bool)

(declare-fun lt!608620 () Bool)

(declare-fun e!1056186 () Bool)

(assert (=> d!496284 (= lt!608620 e!1056186)))

(declare-fun res!737927 () Bool)

(assert (=> d!496284 (=> (not res!737927) (not e!1056186))))

(assert (=> d!496284 (= res!737927 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))) (list!7206 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))))

(declare-fun e!1056185 () Bool)

(assert (=> d!496284 (= lt!608620 e!1056185)))

(declare-fun res!737928 () Bool)

(assert (=> d!496284 (=> (not res!737928) (not e!1056185))))

(declare-fun lt!608621 () tuple2!17826)

(assert (=> d!496284 (= res!737928 (= (size!14465 (_1!10315 lt!608621)) 1))))

(assert (=> d!496284 (= lt!608621 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496284 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496284 (= (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457))) lt!608620)))

(declare-fun b!1646887 () Bool)

(declare-fun res!737929 () Bool)

(assert (=> b!1646887 (=> (not res!737929) (not e!1056185))))

(assert (=> b!1646887 (= res!737929 (= (apply!4757 (_1!10315 lt!608621) 0) (h!23560 (t!150452 tokens!457))))))

(declare-fun b!1646888 () Bool)

(assert (=> b!1646888 (= e!1056185 (isEmpty!11190 (_2!10315 lt!608621)))))

(declare-fun b!1646889 () Bool)

(assert (=> b!1646889 (= e!1056186 (isEmpty!11190 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))))))

(assert (= (and d!496284 res!737928) b!1646887))

(assert (= (and b!1646887 res!737929) b!1646888))

(assert (= (and d!496284 res!737927) b!1646889))

(assert (=> d!496284 m!1990639))

(declare-fun m!1992503 () Bool)

(assert (=> d!496284 m!1992503))

(declare-fun m!1992505 () Bool)

(assert (=> d!496284 m!1992505))

(declare-fun m!1992507 () Bool)

(assert (=> d!496284 m!1992507))

(assert (=> d!496284 m!1990639))

(assert (=> d!496284 m!1990691))

(declare-fun m!1992509 () Bool)

(assert (=> d!496284 m!1992509))

(assert (=> d!496284 m!1990349))

(assert (=> d!496284 m!1990639))

(assert (=> d!496284 m!1990691))

(declare-fun m!1992511 () Bool)

(assert (=> b!1646887 m!1992511))

(declare-fun m!1992513 () Bool)

(assert (=> b!1646888 m!1992513))

(assert (=> b!1646889 m!1990639))

(assert (=> b!1646889 m!1990639))

(assert (=> b!1646889 m!1990691))

(assert (=> b!1646889 m!1990691))

(assert (=> b!1646889 m!1992509))

(declare-fun m!1992515 () Bool)

(assert (=> b!1646889 m!1992515))

(assert (=> b!1645875 d!496284))

(declare-fun d!496286 () Bool)

(assert (=> d!496286 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457)))))

(declare-fun lt!608622 () Unit!30071)

(assert (=> d!496286 (= lt!608622 (choose!9885 thiss!17113 rules!1846 tokens!457 (h!23560 (t!150452 tokens!457))))))

(assert (=> d!496286 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496286 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!598 thiss!17113 rules!1846 tokens!457 (h!23560 (t!150452 tokens!457))) lt!608622)))

(declare-fun bs!396174 () Bool)

(assert (= bs!396174 d!496286))

(assert (=> bs!396174 m!1990497))

(declare-fun m!1992517 () Bool)

(assert (=> bs!396174 m!1992517))

(assert (=> bs!396174 m!1990349))

(assert (=> b!1645875 d!496286))

(declare-fun b!1646893 () Bool)

(declare-fun e!1056188 () List!18228)

(assert (=> b!1646893 (= e!1056188 (++!4894 (list!7210 (left!14557 (c!267635 lt!607808))) (list!7210 (right!14887 (c!267635 lt!607808)))))))

(declare-fun b!1646891 () Bool)

(declare-fun e!1056187 () List!18228)

(assert (=> b!1646891 (= e!1056187 e!1056188)))

(declare-fun c!267855 () Bool)

(assert (=> b!1646891 (= c!267855 ((_ is Leaf!8876) (c!267635 lt!607808)))))

(declare-fun d!496288 () Bool)

(declare-fun c!267854 () Bool)

(assert (=> d!496288 (= c!267854 ((_ is Empty!6054) (c!267635 lt!607808)))))

(assert (=> d!496288 (= (list!7210 (c!267635 lt!607808)) e!1056187)))

(declare-fun b!1646892 () Bool)

(assert (=> b!1646892 (= e!1056188 (list!7214 (xs!8890 (c!267635 lt!607808))))))

(declare-fun b!1646890 () Bool)

(assert (=> b!1646890 (= e!1056187 Nil!18158)))

(assert (= (and d!496288 c!267854) b!1646890))

(assert (= (and d!496288 (not c!267854)) b!1646891))

(assert (= (and b!1646891 c!267855) b!1646892))

(assert (= (and b!1646891 (not c!267855)) b!1646893))

(declare-fun m!1992519 () Bool)

(assert (=> b!1646893 m!1992519))

(declare-fun m!1992521 () Bool)

(assert (=> b!1646893 m!1992521))

(assert (=> b!1646893 m!1992519))

(assert (=> b!1646893 m!1992521))

(declare-fun m!1992523 () Bool)

(assert (=> b!1646893 m!1992523))

(declare-fun m!1992525 () Bool)

(assert (=> b!1646892 m!1992525))

(assert (=> d!495816 d!496288))

(declare-fun d!496290 () Bool)

(assert (=> d!496290 (= (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))) (not (isEmpty!11191 (maxPrefix!1394 thiss!17113 rules!1846 (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))))))))

(declare-fun bs!396175 () Bool)

(assert (= bs!396175 d!496290))

(assert (=> bs!396175 m!1990695))

(declare-fun m!1992527 () Bool)

(assert (=> bs!396175 m!1992527))

(assert (=> b!1645924 d!496290))

(declare-fun b!1646894 () Bool)

(declare-fun e!1056190 () Option!3438)

(declare-fun lt!608623 () Option!3438)

(declare-fun lt!608626 () Option!3438)

(assert (=> b!1646894 (= e!1056190 (ite (and ((_ is None!3437) lt!608623) ((_ is None!3437) lt!608626)) None!3437 (ite ((_ is None!3437) lt!608626) lt!608623 (ite ((_ is None!3437) lt!608623) lt!608626 (ite (>= (size!14460 (_1!10314 (v!24578 lt!608623))) (size!14460 (_1!10314 (v!24578 lt!608626)))) lt!608623 lt!608626)))))))

(declare-fun call!105808 () Option!3438)

(assert (=> b!1646894 (= lt!608623 call!105808)))

(assert (=> b!1646894 (= lt!608626 (maxPrefix!1394 thiss!17113 (t!150453 rules!1846) (list!7205 lt!608019)))))

(declare-fun d!496292 () Bool)

(declare-fun e!1056191 () Bool)

(assert (=> d!496292 e!1056191))

(declare-fun res!737931 () Bool)

(assert (=> d!496292 (=> res!737931 e!1056191)))

(declare-fun lt!608624 () Option!3438)

(assert (=> d!496292 (= res!737931 (isEmpty!11191 lt!608624))))

(assert (=> d!496292 (= lt!608624 e!1056190)))

(declare-fun c!267856 () Bool)

(assert (=> d!496292 (= c!267856 (and ((_ is Cons!18160) rules!1846) ((_ is Nil!18160) (t!150453 rules!1846))))))

(declare-fun lt!608627 () Unit!30071)

(declare-fun lt!608625 () Unit!30071)

(assert (=> d!496292 (= lt!608627 lt!608625)))

(assert (=> d!496292 (isPrefix!1461 (list!7205 lt!608019) (list!7205 lt!608019))))

(assert (=> d!496292 (= lt!608625 (lemmaIsPrefixRefl!988 (list!7205 lt!608019) (list!7205 lt!608019)))))

(assert (=> d!496292 (rulesValidInductive!1010 thiss!17113 rules!1846)))

(assert (=> d!496292 (= (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 lt!608019)) lt!608624)))

(declare-fun b!1646895 () Bool)

(declare-fun res!737932 () Bool)

(declare-fun e!1056189 () Bool)

(assert (=> b!1646895 (=> (not res!737932) (not e!1056189))))

(assert (=> b!1646895 (= res!737932 (= (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608624)))) (originalCharacters!4017 (_1!10314 (get!5281 lt!608624)))))))

(declare-fun b!1646896 () Bool)

(declare-fun res!737936 () Bool)

(assert (=> b!1646896 (=> (not res!737936) (not e!1056189))))

(assert (=> b!1646896 (= res!737936 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608624)))) (_2!10314 (get!5281 lt!608624))) (list!7205 lt!608019)))))

(declare-fun b!1646897 () Bool)

(assert (=> b!1646897 (= e!1056189 (contains!3162 rules!1846 (rule!5057 (_1!10314 (get!5281 lt!608624)))))))

(declare-fun b!1646898 () Bool)

(declare-fun res!737930 () Bool)

(assert (=> b!1646898 (=> (not res!737930) (not e!1056189))))

(assert (=> b!1646898 (= res!737930 (matchR!2024 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!608624)))) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!608624))))))))

(declare-fun bm!105803 () Bool)

(assert (=> bm!105803 (= call!105808 (maxPrefixOneRule!803 thiss!17113 (h!23561 rules!1846) (list!7205 lt!608019)))))

(declare-fun b!1646899 () Bool)

(assert (=> b!1646899 (= e!1056191 e!1056189)))

(declare-fun res!737933 () Bool)

(assert (=> b!1646899 (=> (not res!737933) (not e!1056189))))

(assert (=> b!1646899 (= res!737933 (isDefined!2795 lt!608624))))

(declare-fun b!1646900 () Bool)

(declare-fun res!737935 () Bool)

(assert (=> b!1646900 (=> (not res!737935) (not e!1056189))))

(assert (=> b!1646900 (= res!737935 (= (value!100958 (_1!10314 (get!5281 lt!608624))) (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608624)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!608624)))))))))

(declare-fun b!1646901 () Bool)

(declare-fun res!737934 () Bool)

(assert (=> b!1646901 (=> (not res!737934) (not e!1056189))))

(assert (=> b!1646901 (= res!737934 (< (size!14466 (_2!10314 (get!5281 lt!608624))) (size!14466 (list!7205 lt!608019))))))

(declare-fun b!1646902 () Bool)

(assert (=> b!1646902 (= e!1056190 call!105808)))

(assert (= (and d!496292 c!267856) b!1646902))

(assert (= (and d!496292 (not c!267856)) b!1646894))

(assert (= (or b!1646902 b!1646894) bm!105803))

(assert (= (and d!496292 (not res!737931)) b!1646899))

(assert (= (and b!1646899 res!737933) b!1646895))

(assert (= (and b!1646895 res!737932) b!1646901))

(assert (= (and b!1646901 res!737934) b!1646896))

(assert (= (and b!1646896 res!737936) b!1646900))

(assert (= (and b!1646900 res!737935) b!1646898))

(assert (= (and b!1646898 res!737930) b!1646897))

(declare-fun m!1992529 () Bool)

(assert (=> b!1646898 m!1992529))

(declare-fun m!1992531 () Bool)

(assert (=> b!1646898 m!1992531))

(assert (=> b!1646898 m!1992531))

(declare-fun m!1992533 () Bool)

(assert (=> b!1646898 m!1992533))

(assert (=> b!1646898 m!1992533))

(declare-fun m!1992535 () Bool)

(assert (=> b!1646898 m!1992535))

(assert (=> b!1646896 m!1992529))

(assert (=> b!1646896 m!1992531))

(assert (=> b!1646896 m!1992531))

(assert (=> b!1646896 m!1992533))

(assert (=> b!1646896 m!1992533))

(declare-fun m!1992537 () Bool)

(assert (=> b!1646896 m!1992537))

(assert (=> bm!105803 m!1990655))

(declare-fun m!1992539 () Bool)

(assert (=> bm!105803 m!1992539))

(assert (=> b!1646894 m!1990655))

(declare-fun m!1992541 () Bool)

(assert (=> b!1646894 m!1992541))

(assert (=> b!1646900 m!1992529))

(declare-fun m!1992543 () Bool)

(assert (=> b!1646900 m!1992543))

(assert (=> b!1646900 m!1992543))

(declare-fun m!1992545 () Bool)

(assert (=> b!1646900 m!1992545))

(assert (=> b!1646901 m!1992529))

(declare-fun m!1992547 () Bool)

(assert (=> b!1646901 m!1992547))

(assert (=> b!1646901 m!1990655))

(declare-fun m!1992549 () Bool)

(assert (=> b!1646901 m!1992549))

(assert (=> b!1646895 m!1992529))

(assert (=> b!1646895 m!1992531))

(assert (=> b!1646895 m!1992531))

(assert (=> b!1646895 m!1992533))

(declare-fun m!1992551 () Bool)

(assert (=> d!496292 m!1992551))

(assert (=> d!496292 m!1990655))

(assert (=> d!496292 m!1990655))

(declare-fun m!1992553 () Bool)

(assert (=> d!496292 m!1992553))

(assert (=> d!496292 m!1990655))

(assert (=> d!496292 m!1990655))

(declare-fun m!1992555 () Bool)

(assert (=> d!496292 m!1992555))

(assert (=> d!496292 m!1990759))

(assert (=> b!1646897 m!1992529))

(declare-fun m!1992557 () Bool)

(assert (=> b!1646897 m!1992557))

(declare-fun m!1992559 () Bool)

(assert (=> b!1646899 m!1992559))

(assert (=> b!1645924 d!496292))

(declare-fun d!496294 () Bool)

(declare-fun e!1056193 () Bool)

(assert (=> d!496294 e!1056193))

(declare-fun res!737938 () Bool)

(assert (=> d!496294 (=> (not res!737938) (not e!1056193))))

(declare-fun lt!608628 () List!18228)

(assert (=> d!496294 (= res!737938 (= (content!2517 lt!608628) ((_ map or) (content!2517 lt!608000) (content!2517 lt!608017))))))

(declare-fun e!1056192 () List!18228)

(assert (=> d!496294 (= lt!608628 e!1056192)))

(declare-fun c!267857 () Bool)

(assert (=> d!496294 (= c!267857 ((_ is Nil!18158) lt!608000))))

(assert (=> d!496294 (= (++!4894 lt!608000 lt!608017) lt!608628)))

(declare-fun b!1646903 () Bool)

(assert (=> b!1646903 (= e!1056192 lt!608017)))

(declare-fun b!1646904 () Bool)

(assert (=> b!1646904 (= e!1056192 (Cons!18158 (h!23559 lt!608000) (++!4894 (t!150451 lt!608000) lt!608017)))))

(declare-fun b!1646905 () Bool)

(declare-fun res!737937 () Bool)

(assert (=> b!1646905 (=> (not res!737937) (not e!1056193))))

(assert (=> b!1646905 (= res!737937 (= (size!14466 lt!608628) (+ (size!14466 lt!608000) (size!14466 lt!608017))))))

(declare-fun b!1646906 () Bool)

(assert (=> b!1646906 (= e!1056193 (or (not (= lt!608017 Nil!18158)) (= lt!608628 lt!608000)))))

(assert (= (and d!496294 c!267857) b!1646903))

(assert (= (and d!496294 (not c!267857)) b!1646904))

(assert (= (and d!496294 res!737938) b!1646905))

(assert (= (and b!1646905 res!737937) b!1646906))

(declare-fun m!1992561 () Bool)

(assert (=> d!496294 m!1992561))

(declare-fun m!1992563 () Bool)

(assert (=> d!496294 m!1992563))

(declare-fun m!1992565 () Bool)

(assert (=> d!496294 m!1992565))

(declare-fun m!1992567 () Bool)

(assert (=> b!1646904 m!1992567))

(declare-fun m!1992569 () Bool)

(assert (=> b!1646905 m!1992569))

(declare-fun m!1992571 () Bool)

(assert (=> b!1646905 m!1992571))

(declare-fun m!1992573 () Bool)

(assert (=> b!1646905 m!1992573))

(assert (=> b!1645924 d!496294))

(declare-fun d!496296 () Bool)

(assert (=> d!496296 (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013))))))

(declare-fun lt!608674 () Unit!30071)

(declare-fun e!1056198 () Unit!30071)

(assert (=> d!496296 (= lt!608674 e!1056198)))

(declare-fun c!267860 () Bool)

(assert (=> d!496296 (= c!267860 (isEmpty!11191 (maxPrefix!1394 thiss!17113 rules!1846 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))))

(declare-fun lt!608673 () Unit!30071)

(declare-fun lt!608669 () Unit!30071)

(assert (=> d!496296 (= lt!608673 lt!608669)))

(declare-fun e!1056199 () Bool)

(assert (=> d!496296 e!1056199))

(declare-fun res!737944 () Bool)

(assert (=> d!496296 (=> (not res!737944) (not e!1056199))))

(declare-fun lt!608676 () Token!5972)

(declare-datatypes ((Option!3441 0))(
  ( (None!3440) (Some!3440 (v!24591 Rule!6206)) )
))
(declare-fun isDefined!2797 (Option!3441) Bool)

(declare-fun getRuleFromTag!308 (LexerInterface!2832 List!18230 String!20797) Option!3441)

(assert (=> d!496296 (= res!737944 (isDefined!2797 (getRuleFromTag!308 thiss!17113 rules!1846 (tag!3483 (rule!5057 lt!608676)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!308 (LexerInterface!2832 List!18230 List!18228 Token!5972) Unit!30071)

(assert (=> d!496296 (= lt!608669 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!308 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) lt!608676))))

(declare-fun lt!608678 () Unit!30071)

(declare-fun lt!608672 () Unit!30071)

(assert (=> d!496296 (= lt!608678 lt!608672)))

(declare-fun lt!608666 () List!18228)

(assert (=> d!496296 (isPrefix!1461 lt!608666 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!194 (List!18228 List!18228 List!18228) Unit!30071)

(assert (=> d!496296 (= lt!608672 (lemmaPrefixStaysPrefixWhenAddingToSuffix!194 lt!608666 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))

(assert (=> d!496296 (= lt!608666 (list!7205 (charsOf!1852 lt!608676)))))

(declare-fun lt!608668 () Unit!30071)

(declare-fun lt!608663 () Unit!30071)

(assert (=> d!496296 (= lt!608668 lt!608663)))

(declare-fun lt!608671 () List!18228)

(declare-fun lt!608664 () List!18228)

(assert (=> d!496296 (isPrefix!1461 lt!608671 (++!4894 lt!608671 lt!608664))))

(assert (=> d!496296 (= lt!608663 (lemmaConcatTwoListThenFirstIsPrefix!986 lt!608671 lt!608664))))

(assert (=> d!496296 (= lt!608664 (_2!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))))

(assert (=> d!496296 (= lt!608671 (list!7205 (charsOf!1852 lt!608676)))))

(assert (=> d!496296 (= lt!608676 (head!3607 (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (seqFromList!2145 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))))))

(assert (=> d!496296 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496296 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!400 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)) lt!608674)))

(declare-fun b!1646918 () Bool)

(declare-fun Unit!30146 () Unit!30071)

(assert (=> b!1646918 (= e!1056198 Unit!30146)))

(declare-fun b!1646916 () Bool)

(declare-fun get!5283 (Option!3441) Rule!6206)

(assert (=> b!1646916 (= e!1056199 (= (rule!5057 lt!608676) (get!5283 (getRuleFromTag!308 thiss!17113 rules!1846 (tag!3483 (rule!5057 lt!608676))))))))

(declare-fun b!1646917 () Bool)

(declare-fun Unit!30147 () Unit!30071)

(assert (=> b!1646917 (= e!1056198 Unit!30147)))

(declare-fun lt!608667 () List!18228)

(assert (=> b!1646917 (= lt!608667 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))

(declare-fun lt!608679 () Unit!30071)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!202 (LexerInterface!2832 Rule!6206 List!18230 List!18228) Unit!30071)

(assert (=> b!1646917 (= lt!608679 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!202 thiss!17113 (rule!5057 lt!608676) rules!1846 lt!608667))))

(assert (=> b!1646917 (isEmpty!11191 (maxPrefixOneRule!803 thiss!17113 (rule!5057 lt!608676) lt!608667))))

(declare-fun lt!608675 () Unit!30071)

(assert (=> b!1646917 (= lt!608675 lt!608679)))

(declare-fun lt!608670 () List!18228)

(assert (=> b!1646917 (= lt!608670 (list!7205 (charsOf!1852 lt!608676)))))

(declare-fun lt!608677 () Unit!30071)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!198 (LexerInterface!2832 Rule!6206 List!18228 List!18228) Unit!30071)

(assert (=> b!1646917 (= lt!608677 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!198 thiss!17113 (rule!5057 lt!608676) lt!608670 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013))))))

(assert (=> b!1646917 (not (matchR!2024 (regex!3203 (rule!5057 lt!608676)) lt!608670))))

(declare-fun lt!608665 () Unit!30071)

(assert (=> b!1646917 (= lt!608665 lt!608677)))

(assert (=> b!1646917 false))

(declare-fun b!1646915 () Bool)

(declare-fun res!737943 () Bool)

(assert (=> b!1646915 (=> (not res!737943) (not e!1056199))))

(assert (=> b!1646915 (= res!737943 (matchR!2024 (regex!3203 (get!5283 (getRuleFromTag!308 thiss!17113 rules!1846 (tag!3483 (rule!5057 lt!608676))))) (list!7205 (charsOf!1852 lt!608676))))))

(assert (= (and d!496296 res!737944) b!1646915))

(assert (= (and b!1646915 res!737943) b!1646916))

(assert (= (and d!496296 c!267860) b!1646917))

(assert (= (and d!496296 (not c!267860)) b!1646918))

(declare-fun m!1992575 () Bool)

(assert (=> d!496296 m!1992575))

(declare-fun m!1992577 () Bool)

(assert (=> d!496296 m!1992577))

(assert (=> d!496296 m!1990645))

(assert (=> d!496296 m!1990653))

(declare-fun m!1992579 () Bool)

(assert (=> d!496296 m!1992579))

(declare-fun m!1992581 () Bool)

(assert (=> d!496296 m!1992581))

(assert (=> d!496296 m!1990349))

(declare-fun m!1992583 () Bool)

(assert (=> d!496296 m!1992583))

(declare-fun m!1992585 () Bool)

(assert (=> d!496296 m!1992585))

(declare-fun m!1992587 () Bool)

(assert (=> d!496296 m!1992587))

(assert (=> d!496296 m!1990643))

(declare-fun m!1992589 () Bool)

(assert (=> d!496296 m!1992589))

(declare-fun m!1992591 () Bool)

(assert (=> d!496296 m!1992591))

(declare-fun m!1992593 () Bool)

(assert (=> d!496296 m!1992593))

(assert (=> d!496296 m!1992591))

(declare-fun m!1992595 () Bool)

(assert (=> d!496296 m!1992595))

(assert (=> d!496296 m!1990643))

(assert (=> d!496296 m!1990649))

(assert (=> d!496296 m!1992575))

(assert (=> d!496296 m!1992575))

(assert (=> d!496296 m!1992591))

(declare-fun m!1992597 () Bool)

(assert (=> d!496296 m!1992597))

(assert (=> d!496296 m!1990643))

(declare-fun m!1992599 () Bool)

(assert (=> d!496296 m!1992599))

(assert (=> d!496296 m!1992579))

(assert (=> d!496296 m!1992597))

(declare-fun m!1992601 () Bool)

(assert (=> d!496296 m!1992601))

(assert (=> d!496296 m!1990643))

(assert (=> d!496296 m!1990645))

(assert (=> d!496296 m!1992589))

(declare-fun m!1992603 () Bool)

(assert (=> d!496296 m!1992603))

(assert (=> d!496296 m!1992587))

(declare-fun m!1992605 () Bool)

(assert (=> d!496296 m!1992605))

(assert (=> d!496296 m!1992583))

(assert (=> d!496296 m!1990643))

(assert (=> d!496296 m!1990649))

(declare-fun m!1992607 () Bool)

(assert (=> d!496296 m!1992607))

(declare-fun m!1992609 () Bool)

(assert (=> d!496296 m!1992609))

(assert (=> b!1646916 m!1992587))

(assert (=> b!1646916 m!1992587))

(declare-fun m!1992611 () Bool)

(assert (=> b!1646916 m!1992611))

(assert (=> b!1646917 m!1992575))

(declare-fun m!1992613 () Bool)

(assert (=> b!1646917 m!1992613))

(assert (=> b!1646917 m!1992583))

(assert (=> b!1646917 m!1992583))

(assert (=> b!1646917 m!1992585))

(declare-fun m!1992615 () Bool)

(assert (=> b!1646917 m!1992615))

(declare-fun m!1992617 () Bool)

(assert (=> b!1646917 m!1992617))

(assert (=> b!1646917 m!1990643))

(assert (=> b!1646917 m!1990649))

(assert (=> b!1646917 m!1992575))

(declare-fun m!1992619 () Bool)

(assert (=> b!1646917 m!1992619))

(assert (=> b!1646917 m!1992619))

(declare-fun m!1992621 () Bool)

(assert (=> b!1646917 m!1992621))

(assert (=> b!1646915 m!1992583))

(assert (=> b!1646915 m!1992583))

(assert (=> b!1646915 m!1992585))

(assert (=> b!1646915 m!1992587))

(assert (=> b!1646915 m!1992611))

(assert (=> b!1646915 m!1992585))

(declare-fun m!1992623 () Bool)

(assert (=> b!1646915 m!1992623))

(assert (=> b!1646915 m!1992587))

(assert (=> b!1645924 d!496296))

(declare-fun b!1647382 () Bool)

(assert (=> b!1647382 false))

(declare-fun lt!609427 () Unit!30071)

(declare-fun lt!609439 () Unit!30071)

(assert (=> b!1647382 (= lt!609427 lt!609439)))

(declare-fun lt!609460 () Token!5972)

(declare-fun lt!609412 () List!18228)

(assert (=> b!1647382 (not (matchR!2024 (regex!3203 (rule!5057 lt!609460)) lt!609412))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!92 (LexerInterface!2832 List!18230 Rule!6206 List!18228 List!18228 Rule!6206) Unit!30071)

(assert (=> b!1647382 (= lt!609439 (lemmaMaxPrefNoSmallerRuleMatches!92 thiss!17113 rules!1846 (rule!5057 (h!23560 (t!150452 tokens!457))) lt!609412 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (rule!5057 lt!609460)))))

(assert (=> b!1647382 (= lt!609412 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun e!1056467 () Unit!30071)

(declare-fun Unit!30150 () Unit!30071)

(assert (=> b!1647382 (= e!1056467 Unit!30150)))

(declare-fun b!1647383 () Bool)

(assert (=> b!1647383 false))

(declare-fun lt!609414 () Unit!30071)

(declare-fun lt!609441 () Unit!30071)

(assert (=> b!1647383 (= lt!609414 lt!609441)))

(declare-fun lt!609457 () List!18228)

(assert (=> b!1647383 (not (matchR!2024 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))) lt!609457))))

(declare-fun lt!609469 () List!18228)

(assert (=> b!1647383 (= lt!609441 (lemmaMaxPrefNoSmallerRuleMatches!92 thiss!17113 rules!1846 (rule!5057 lt!609460) lt!609457 lt!609469 (rule!5057 (h!23560 (t!150452 tokens!457)))))))

(assert (=> b!1647383 (= lt!609457 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun e!1056462 () Unit!30071)

(declare-fun Unit!30151 () Unit!30071)

(assert (=> b!1647383 (= e!1056462 Unit!30151)))

(declare-fun b!1647384 () Bool)

(assert (=> b!1647384 false))

(declare-fun lt!609407 () Unit!30071)

(declare-fun lt!609405 () Unit!30071)

(assert (=> b!1647384 (= lt!609407 lt!609405)))

(assert (=> b!1647384 (= (rule!5057 lt!609460) (rule!5057 (h!23560 (t!150452 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!68 (List!18230 Rule!6206 Rule!6206) Unit!30071)

(assert (=> b!1647384 (= lt!609405 (lemmaSameIndexThenSameElement!68 rules!1846 (rule!5057 lt!609460) (rule!5057 (h!23560 (t!150452 tokens!457)))))))

(declare-fun e!1056464 () Unit!30071)

(declare-fun Unit!30152 () Unit!30071)

(assert (=> b!1647384 (= e!1056464 Unit!30152)))

(declare-fun b!1647385 () Bool)

(declare-fun e!1056465 () Unit!30071)

(declare-fun Unit!30153 () Unit!30071)

(assert (=> b!1647385 (= e!1056465 Unit!30153)))

(declare-fun b!1647386 () Bool)

(declare-fun e!1056466 () Unit!30071)

(declare-fun Unit!30154 () Unit!30071)

(assert (=> b!1647386 (= e!1056466 Unit!30154)))

(declare-fun b!1647387 () Bool)

(declare-fun Unit!30155 () Unit!30071)

(assert (=> b!1647387 (= e!1056462 Unit!30155)))

(declare-fun d!496298 () Bool)

(assert (=> d!496298 (= (maxPrefix!1394 thiss!17113 rules!1846 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013))) (Some!3437 (tuple2!17825 (h!23560 (t!150452 tokens!457)) (list!7205 lt!608013))))))

(declare-fun lt!609444 () Unit!30071)

(declare-fun Unit!30156 () Unit!30071)

(assert (=> d!496298 (= lt!609444 Unit!30156)))

(declare-fun lt!609453 () Unit!30071)

(assert (=> d!496298 (= lt!609453 e!1056465)))

(declare-fun c!267971 () Bool)

(assert (=> d!496298 (= c!267971 (not (= (rule!5057 lt!609460) (rule!5057 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609433 () Unit!30071)

(declare-fun lt!609448 () Unit!30071)

(assert (=> d!496298 (= lt!609433 lt!609448)))

(declare-fun lt!609440 () List!18228)

(assert (=> d!496298 (= (list!7205 lt!608013) lt!609440)))

(declare-fun lemmaSamePrefixThenSameSuffix!674 (List!18228 List!18228 List!18228 List!18228 List!18228) Unit!30071)

(assert (=> d!496298 (= lt!609448 (lemmaSamePrefixThenSameSuffix!674 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) lt!609440 lt!609469))))

(declare-fun lt!609468 () Unit!30071)

(declare-fun lt!609403 () Unit!30071)

(assert (=> d!496298 (= lt!609468 lt!609403)))

(declare-fun lt!609461 () List!18228)

(declare-fun lt!609402 () List!18228)

(assert (=> d!496298 (= lt!609461 lt!609402)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!175 (List!18228 List!18228 List!18228) Unit!30071)

(assert (=> d!496298 (= lt!609403 (lemmaIsPrefixSameLengthThenSameList!175 lt!609461 lt!609402 lt!609469))))

(assert (=> d!496298 (= lt!609402 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!496298 (= lt!609461 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609416 () Unit!30071)

(assert (=> d!496298 (= lt!609416 e!1056466)))

(declare-fun c!267973 () Bool)

(assert (=> d!496298 (= c!267973 (< (size!14464 (charsOf!1852 lt!609460)) (size!14464 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609408 () Unit!30071)

(declare-fun e!1056468 () Unit!30071)

(assert (=> d!496298 (= lt!609408 e!1056468)))

(declare-fun c!267974 () Bool)

(assert (=> d!496298 (= c!267974 (> (size!14464 (charsOf!1852 lt!609460)) (size!14464 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609442 () Unit!30071)

(declare-fun lt!609447 () Unit!30071)

(assert (=> d!496298 (= lt!609442 lt!609447)))

(assert (=> d!496298 (matchR!2024 (rulesRegex!587 thiss!17113 rules!1846) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!52 (LexerInterface!2832 List!18230 List!18228 Token!5972 Rule!6206 List!18228) Unit!30071)

(assert (=> d!496298 (= lt!609447 (lemmaMaxPrefixThenMatchesRulesRegex!52 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (h!23560 (t!150452 tokens!457)) (rule!5057 (h!23560 (t!150452 tokens!457))) Nil!18158))))

(declare-fun lt!609406 () Unit!30071)

(declare-fun lt!609449 () Unit!30071)

(assert (=> d!496298 (= lt!609406 lt!609449)))

(declare-fun lt!609415 () List!18228)

(assert (=> d!496298 (= lt!609440 lt!609415)))

(declare-fun lt!609455 () List!18228)

(declare-fun lt!609431 () List!18228)

(assert (=> d!496298 (= lt!609449 (lemmaSamePrefixThenSameSuffix!674 lt!609455 lt!609440 lt!609431 lt!609415 lt!609469))))

(declare-fun getSuffix!722 (List!18228 List!18228) List!18228)

(assert (=> d!496298 (= lt!609415 (getSuffix!722 lt!609469 (list!7205 (charsOf!1852 lt!609460))))))

(assert (=> d!496298 (= lt!609431 (list!7205 (charsOf!1852 lt!609460)))))

(assert (=> d!496298 (= lt!609455 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609463 () Unit!30071)

(declare-fun lt!609410 () Unit!30071)

(assert (=> d!496298 (= lt!609463 lt!609410)))

(declare-fun lt!609435 () List!18228)

(assert (=> d!496298 (= (maxPrefixOneRule!803 thiss!17113 (rule!5057 lt!609460) lt!609469) (Some!3437 (tuple2!17825 (Token!5973 (apply!4756 (transformation!3203 (rule!5057 lt!609460)) (seqFromList!2145 lt!609435)) (rule!5057 lt!609460) (size!14466 lt!609435) lt!609435) lt!609440)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!241 (LexerInterface!2832 List!18230 List!18228 List!18228 List!18228 Rule!6206) Unit!30071)

(assert (=> d!496298 (= lt!609410 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!241 thiss!17113 rules!1846 lt!609435 lt!609469 lt!609440 (rule!5057 lt!609460)))))

(assert (=> d!496298 (= lt!609435 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609451 () Unit!30071)

(declare-fun lemmaCharactersSize!347 (Token!5972) Unit!30071)

(assert (=> d!496298 (= lt!609451 (lemmaCharactersSize!347 lt!609460))))

(declare-fun lt!609400 () Unit!30071)

(declare-fun lemmaEqSameImage!200 (TokenValueInjection!6246 BalanceConc!12052 BalanceConc!12052) Unit!30071)

(assert (=> d!496298 (= lt!609400 (lemmaEqSameImage!200 (transformation!3203 (rule!5057 lt!609460)) (charsOf!1852 lt!609460) (seqFromList!2145 (originalCharacters!4017 lt!609460))))))

(declare-fun lt!609452 () Unit!30071)

(assert (=> d!496298 (= lt!609452 (lemmaSemiInverse!415 (transformation!3203 (rule!5057 lt!609460)) (charsOf!1852 lt!609460)))))

(declare-fun lt!609446 () Unit!30071)

(declare-fun lemmaInv!480 (TokenValueInjection!6246) Unit!30071)

(assert (=> d!496298 (= lt!609446 (lemmaInv!480 (transformation!3203 (rule!5057 lt!609460))))))

(declare-fun lt!609429 () Unit!30071)

(declare-fun lt!609445 () Unit!30071)

(assert (=> d!496298 (= lt!609429 lt!609445)))

(declare-fun lt!609437 () List!18228)

(assert (=> d!496298 (isPrefix!1461 lt!609437 (++!4894 lt!609437 lt!609440))))

(assert (=> d!496298 (= lt!609445 (lemmaConcatTwoListThenFirstIsPrefix!986 lt!609437 lt!609440))))

(assert (=> d!496298 (= lt!609437 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609466 () Unit!30071)

(declare-fun lt!609432 () Unit!30071)

(assert (=> d!496298 (= lt!609466 lt!609432)))

(declare-fun e!1056463 () Bool)

(assert (=> d!496298 e!1056463))

(declare-fun res!738117 () Bool)

(assert (=> d!496298 (=> (not res!738117) (not e!1056463))))

(assert (=> d!496298 (= res!738117 (isDefined!2797 (getRuleFromTag!308 thiss!17113 rules!1846 (tag!3483 (rule!5057 lt!609460)))))))

(assert (=> d!496298 (= lt!609432 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!308 thiss!17113 rules!1846 lt!609469 lt!609460))))

(declare-fun lt!609465 () Option!3438)

(assert (=> d!496298 (= lt!609440 (_2!10314 (get!5281 lt!609465)))))

(assert (=> d!496298 (= lt!609460 (_1!10314 (get!5281 lt!609465)))))

(declare-fun lt!609443 () Unit!30071)

(assert (=> d!496298 (= lt!609443 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!400 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))

(assert (=> d!496298 (= lt!609465 (maxPrefix!1394 thiss!17113 rules!1846 lt!609469))))

(declare-fun lt!609423 () Unit!30071)

(declare-fun lt!609422 () Unit!30071)

(assert (=> d!496298 (= lt!609423 lt!609422)))

(declare-fun lt!609409 () List!18228)

(assert (=> d!496298 (isPrefix!1461 lt!609409 (++!4894 lt!609409 (list!7205 lt!608013)))))

(assert (=> d!496298 (= lt!609422 (lemmaConcatTwoListThenFirstIsPrefix!986 lt!609409 (list!7205 lt!608013)))))

(assert (=> d!496298 (= lt!609409 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!496298 (= lt!609469 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 lt!608013)))))

(assert (=> d!496298 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496298 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!162 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457)) (rule!5057 (h!23560 (t!150452 tokens!457))) (list!7205 lt!608013)) lt!609444)))

(declare-fun b!1647388 () Bool)

(declare-fun Unit!30157 () Unit!30071)

(assert (=> b!1647388 (= e!1056466 Unit!30157)))

(declare-fun lt!609430 () List!18228)

(assert (=> b!1647388 (= lt!609430 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609417 () List!18228)

(assert (=> b!1647388 (= lt!609417 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!609420 () Unit!30071)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!142 (LexerInterface!2832 List!18230 Rule!6206 List!18228 List!18228 List!18228 Rule!6206) Unit!30071)

(assert (=> b!1647388 (= lt!609420 (lemmaMaxPrefixOutputsMaxPrefix!142 thiss!17113 rules!1846 (rule!5057 lt!609460) lt!609430 lt!609469 lt!609417 (rule!5057 (h!23560 (t!150452 tokens!457)))))))

(assert (=> b!1647388 (not (matchR!2024 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))) lt!609417))))

(declare-fun lt!609425 () Unit!30071)

(assert (=> b!1647388 (= lt!609425 lt!609420)))

(assert (=> b!1647388 false))

(declare-fun b!1647389 () Bool)

(assert (=> b!1647389 (= e!1056463 (= (rule!5057 lt!609460) (get!5283 (getRuleFromTag!308 thiss!17113 rules!1846 (tag!3483 (rule!5057 lt!609460))))))))

(declare-fun b!1647390 () Bool)

(declare-fun Unit!30158 () Unit!30071)

(assert (=> b!1647390 (= e!1056467 Unit!30158)))

(declare-fun b!1647391 () Bool)

(declare-fun Unit!30159 () Unit!30071)

(assert (=> b!1647391 (= e!1056468 Unit!30159)))

(declare-fun b!1647392 () Bool)

(declare-fun Unit!30160 () Unit!30071)

(assert (=> b!1647392 (= e!1056465 Unit!30160)))

(declare-fun c!267969 () Bool)

(declare-fun getIndex!120 (List!18230 Rule!6206) Int)

(assert (=> b!1647392 (= c!267969 (< (getIndex!120 rules!1846 (rule!5057 (h!23560 (t!150452 tokens!457)))) (getIndex!120 rules!1846 (rule!5057 lt!609460))))))

(declare-fun lt!609426 () Unit!30071)

(assert (=> b!1647392 (= lt!609426 e!1056462)))

(declare-fun c!267972 () Bool)

(assert (=> b!1647392 (= c!267972 (< (getIndex!120 rules!1846 (rule!5057 lt!609460)) (getIndex!120 rules!1846 (rule!5057 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609456 () Unit!30071)

(assert (=> b!1647392 (= lt!609456 e!1056467)))

(declare-fun c!267970 () Bool)

(assert (=> b!1647392 (= c!267970 (= (getIndex!120 rules!1846 (rule!5057 lt!609460)) (getIndex!120 rules!1846 (rule!5057 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609462 () Unit!30071)

(assert (=> b!1647392 (= lt!609462 e!1056464)))

(assert (=> b!1647392 false))

(declare-fun b!1647393 () Bool)

(declare-fun res!738116 () Bool)

(assert (=> b!1647393 (=> (not res!738116) (not e!1056463))))

(assert (=> b!1647393 (= res!738116 (matchR!2024 (regex!3203 (get!5283 (getRuleFromTag!308 thiss!17113 rules!1846 (tag!3483 (rule!5057 lt!609460))))) (list!7205 (charsOf!1852 lt!609460))))))

(declare-fun b!1647394 () Bool)

(declare-fun Unit!30161 () Unit!30071)

(assert (=> b!1647394 (= e!1056464 Unit!30161)))

(declare-fun b!1647395 () Bool)

(declare-fun Unit!30162 () Unit!30071)

(assert (=> b!1647395 (= e!1056468 Unit!30162)))

(declare-fun lt!609467 () Unit!30071)

(assert (=> b!1647395 (= lt!609467 (lemmaMaxPrefixThenMatchesRulesRegex!52 thiss!17113 rules!1846 lt!609469 lt!609460 (rule!5057 lt!609460) lt!609440))))

(assert (=> b!1647395 (matchR!2024 (rulesRegex!587 thiss!17113 rules!1846) (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609450 () Unit!30071)

(assert (=> b!1647395 (= lt!609450 lt!609467)))

(declare-fun lt!609470 () List!18228)

(assert (=> b!1647395 (= lt!609470 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!609421 () List!18228)

(assert (=> b!1647395 (= lt!609421 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!609424 () List!18228)

(assert (=> b!1647395 (= lt!609424 (getSuffix!722 lt!609469 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609411 () Unit!30071)

(assert (=> b!1647395 (= lt!609411 (lemmaSamePrefixThenSameSuffix!674 lt!609470 (list!7205 lt!608013) lt!609421 lt!609424 lt!609469))))

(assert (=> b!1647395 (= (list!7205 lt!608013) lt!609424)))

(declare-fun lt!609434 () Unit!30071)

(assert (=> b!1647395 (= lt!609434 lt!609411)))

(declare-fun lt!609413 () List!18228)

(assert (=> b!1647395 (= lt!609413 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!609419 () Unit!30071)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!165 (List!18228 List!18228) Unit!30071)

(assert (=> b!1647395 (= lt!609419 (lemmaAddHeadSuffixToPrefixStillPrefix!165 lt!609413 lt!609469))))

(assert (=> b!1647395 (isPrefix!1461 (++!4894 lt!609413 (Cons!18158 (head!3605 (getSuffix!722 lt!609469 lt!609413)) Nil!18158)) lt!609469)))

(declare-fun lt!609418 () Unit!30071)

(assert (=> b!1647395 (= lt!609418 lt!609419)))

(declare-fun lt!609454 () List!18228)

(assert (=> b!1647395 (= lt!609454 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609401 () List!18228)

(assert (=> b!1647395 (= lt!609401 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (Cons!18158 (head!3605 (list!7205 lt!608013)) Nil!18158)))))

(declare-fun lt!609438 () Unit!30071)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!51 (List!18228 List!18228 List!18228) Unit!30071)

(assert (=> b!1647395 (= lt!609438 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!51 lt!609454 lt!609401 lt!609469))))

(assert (=> b!1647395 (isPrefix!1461 lt!609401 lt!609454)))

(declare-fun lt!609459 () Unit!30071)

(assert (=> b!1647395 (= lt!609459 lt!609438)))

(declare-fun lt!609436 () Regex!4531)

(assert (=> b!1647395 (= lt!609436 (rulesRegex!587 thiss!17113 rules!1846))))

(declare-fun lt!609428 () List!18228)

(assert (=> b!1647395 (= lt!609428 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (Cons!18158 (head!3605 (list!7205 lt!608013)) Nil!18158)))))

(declare-fun lt!609404 () List!18228)

(assert (=> b!1647395 (= lt!609404 (list!7205 (charsOf!1852 lt!609460)))))

(declare-fun lt!609464 () Unit!30071)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!52 (Regex!4531 List!18228 List!18228) Unit!30071)

(assert (=> b!1647395 (= lt!609464 (lemmaNotPrefixMatchThenCannotMatchLonger!52 lt!609436 lt!609428 lt!609404))))

(assert (=> b!1647395 (not (matchR!2024 lt!609436 lt!609404))))

(declare-fun lt!609458 () Unit!30071)

(assert (=> b!1647395 (= lt!609458 lt!609464)))

(assert (=> b!1647395 false))

(assert (= (and d!496298 res!738117) b!1647393))

(assert (= (and b!1647393 res!738116) b!1647389))

(assert (= (and d!496298 c!267974) b!1647395))

(assert (= (and d!496298 (not c!267974)) b!1647391))

(assert (= (and d!496298 c!267973) b!1647388))

(assert (= (and d!496298 (not c!267973)) b!1647386))

(assert (= (and d!496298 c!267971) b!1647392))

(assert (= (and d!496298 (not c!267971)) b!1647385))

(assert (= (and b!1647392 c!267969) b!1647383))

(assert (= (and b!1647392 (not c!267969)) b!1647387))

(assert (= (and b!1647392 c!267972) b!1647382))

(assert (= (and b!1647392 (not c!267972)) b!1647390))

(assert (= (and b!1647392 c!267970) b!1647384))

(assert (= (and b!1647392 (not c!267970)) b!1647394))

(declare-fun m!1993855 () Bool)

(assert (=> b!1647392 m!1993855))

(declare-fun m!1993857 () Bool)

(assert (=> b!1647392 m!1993857))

(declare-fun m!1993859 () Bool)

(assert (=> b!1647393 m!1993859))

(declare-fun m!1993861 () Bool)

(assert (=> b!1647393 m!1993861))

(assert (=> b!1647393 m!1993861))

(declare-fun m!1993863 () Bool)

(assert (=> b!1647393 m!1993863))

(assert (=> b!1647393 m!1993859))

(declare-fun m!1993865 () Bool)

(assert (=> b!1647393 m!1993865))

(assert (=> b!1647393 m!1993865))

(declare-fun m!1993867 () Bool)

(assert (=> b!1647393 m!1993867))

(declare-fun m!1993869 () Bool)

(assert (=> b!1647383 m!1993869))

(declare-fun m!1993871 () Bool)

(assert (=> b!1647383 m!1993871))

(assert (=> b!1647383 m!1993859))

(assert (=> b!1647383 m!1993859))

(assert (=> b!1647383 m!1993861))

(assert (=> b!1647395 m!1993859))

(assert (=> b!1647395 m!1993861))

(assert (=> b!1647395 m!1990643))

(declare-fun m!1993873 () Bool)

(assert (=> b!1647395 m!1993873))

(assert (=> b!1647395 m!1993859))

(assert (=> b!1647395 m!1990483))

(assert (=> b!1647395 m!1990643))

(declare-fun m!1993875 () Bool)

(assert (=> b!1647395 m!1993875))

(assert (=> b!1647395 m!1990487))

(assert (=> b!1647395 m!1990487))

(assert (=> b!1647395 m!1993861))

(declare-fun m!1993877 () Bool)

(assert (=> b!1647395 m!1993877))

(assert (=> b!1647395 m!1990649))

(assert (=> b!1647395 m!1990651))

(declare-fun m!1993879 () Bool)

(assert (=> b!1647395 m!1993879))

(declare-fun m!1993881 () Bool)

(assert (=> b!1647395 m!1993881))

(assert (=> b!1647395 m!1990649))

(declare-fun m!1993883 () Bool)

(assert (=> b!1647395 m!1993883))

(assert (=> b!1647395 m!1990643))

(declare-fun m!1993885 () Bool)

(assert (=> b!1647395 m!1993885))

(declare-fun m!1993887 () Bool)

(assert (=> b!1647395 m!1993887))

(declare-fun m!1993889 () Bool)

(assert (=> b!1647395 m!1993889))

(assert (=> b!1647395 m!1990483))

(declare-fun m!1993891 () Bool)

(assert (=> b!1647395 m!1993891))

(declare-fun m!1993893 () Bool)

(assert (=> b!1647395 m!1993893))

(declare-fun m!1993895 () Bool)

(assert (=> b!1647395 m!1993895))

(assert (=> b!1647395 m!1993889))

(declare-fun m!1993897 () Bool)

(assert (=> b!1647395 m!1993897))

(assert (=> b!1647395 m!1993879))

(declare-fun m!1993899 () Bool)

(assert (=> b!1647395 m!1993899))

(assert (=> d!496298 m!1993859))

(assert (=> d!496298 m!1993861))

(declare-fun m!1993901 () Bool)

(assert (=> d!496298 m!1993901))

(declare-fun m!1993903 () Bool)

(assert (=> d!496298 m!1993903))

(declare-fun m!1993905 () Bool)

(assert (=> d!496298 m!1993905))

(assert (=> d!496298 m!1990643))

(assert (=> d!496298 m!1990649))

(assert (=> d!496298 m!1992575))

(declare-fun m!1993907 () Bool)

(assert (=> d!496298 m!1993907))

(assert (=> d!496298 m!1993859))

(declare-fun m!1993909 () Bool)

(assert (=> d!496298 m!1993909))

(assert (=> d!496298 m!1993859))

(declare-fun m!1993911 () Bool)

(assert (=> d!496298 m!1993911))

(assert (=> d!496298 m!1993865))

(declare-fun m!1993913 () Bool)

(assert (=> d!496298 m!1993913))

(declare-fun m!1993915 () Bool)

(assert (=> d!496298 m!1993915))

(assert (=> d!496298 m!1990643))

(assert (=> d!496298 m!1990649))

(assert (=> d!496298 m!1990677))

(assert (=> d!496298 m!1990487))

(assert (=> d!496298 m!1993859))

(declare-fun m!1993917 () Bool)

(assert (=> d!496298 m!1993917))

(declare-fun m!1993919 () Bool)

(assert (=> d!496298 m!1993919))

(assert (=> d!496298 m!1990649))

(declare-fun m!1993921 () Bool)

(assert (=> d!496298 m!1993921))

(assert (=> d!496298 m!1993903))

(declare-fun m!1993923 () Bool)

(assert (=> d!496298 m!1993923))

(declare-fun m!1993925 () Bool)

(assert (=> d!496298 m!1993925))

(declare-fun m!1993927 () Bool)

(assert (=> d!496298 m!1993927))

(assert (=> d!496298 m!1993917))

(declare-fun m!1993929 () Bool)

(assert (=> d!496298 m!1993929))

(declare-fun m!1993931 () Bool)

(assert (=> d!496298 m!1993931))

(assert (=> d!496298 m!1990483))

(assert (=> d!496298 m!1990649))

(declare-fun m!1993933 () Bool)

(assert (=> d!496298 m!1993933))

(assert (=> d!496298 m!1990483))

(assert (=> d!496298 m!1990643))

(assert (=> d!496298 m!1992575))

(assert (=> d!496298 m!1992591))

(declare-fun m!1993935 () Bool)

(assert (=> d!496298 m!1993935))

(declare-fun m!1993937 () Bool)

(assert (=> d!496298 m!1993937))

(assert (=> d!496298 m!1993865))

(assert (=> d!496298 m!1993933))

(declare-fun m!1993939 () Bool)

(assert (=> d!496298 m!1993939))

(assert (=> d!496298 m!1990487))

(assert (=> d!496298 m!1990643))

(declare-fun m!1993941 () Bool)

(assert (=> d!496298 m!1993941))

(declare-fun m!1993943 () Bool)

(assert (=> d!496298 m!1993943))

(assert (=> d!496298 m!1990349))

(assert (=> d!496298 m!1990483))

(assert (=> d!496298 m!1990499))

(assert (=> d!496298 m!1990643))

(declare-fun m!1993945 () Bool)

(assert (=> d!496298 m!1993945))

(assert (=> d!496298 m!1993929))

(declare-fun m!1993947 () Bool)

(assert (=> d!496298 m!1993947))

(assert (=> d!496298 m!1993859))

(declare-fun m!1993949 () Bool)

(assert (=> d!496298 m!1993949))

(assert (=> d!496298 m!1990643))

(assert (=> d!496298 m!1990649))

(assert (=> d!496298 m!1990643))

(declare-fun m!1993951 () Bool)

(assert (=> d!496298 m!1993951))

(assert (=> d!496298 m!1993861))

(declare-fun m!1993953 () Bool)

(assert (=> d!496298 m!1993953))

(assert (=> b!1647388 m!1993859))

(assert (=> b!1647388 m!1993861))

(assert (=> b!1647388 m!1990483))

(assert (=> b!1647388 m!1990483))

(assert (=> b!1647388 m!1990643))

(declare-fun m!1993955 () Bool)

(assert (=> b!1647388 m!1993955))

(assert (=> b!1647388 m!1993859))

(declare-fun m!1993957 () Bool)

(assert (=> b!1647388 m!1993957))

(declare-fun m!1993959 () Bool)

(assert (=> b!1647382 m!1993959))

(assert (=> b!1647382 m!1990483))

(assert (=> b!1647382 m!1990483))

(assert (=> b!1647382 m!1990643))

(assert (=> b!1647382 m!1990643))

(declare-fun m!1993961 () Bool)

(assert (=> b!1647382 m!1993961))

(assert (=> b!1647389 m!1993865))

(assert (=> b!1647389 m!1993865))

(assert (=> b!1647389 m!1993867))

(declare-fun m!1993963 () Bool)

(assert (=> b!1647384 m!1993963))

(assert (=> b!1645924 d!496298))

(declare-fun d!496584 () Bool)

(declare-fun e!1056469 () Bool)

(assert (=> d!496584 e!1056469))

(declare-fun res!738118 () Bool)

(assert (=> d!496584 (=> (not res!738118) (not e!1056469))))

(assert (=> d!496584 (= res!738118 (isBalanced!1846 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457))))) (h!23560 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!609471 () BalanceConc!12054)

(assert (=> d!496584 (= lt!609471 (BalanceConc!12055 (prepend!761 (c!267637 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457))))) (h!23560 (t!150452 (t!150452 tokens!457))))))))

(assert (=> d!496584 (= (prepend!759 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 (t!150452 tokens!457)))) lt!609471)))

(declare-fun b!1647396 () Bool)

(assert (=> b!1647396 (= e!1056469 (= (list!7206 lt!609471) (Cons!18159 (h!23560 (t!150452 (t!150452 tokens!457))) (list!7206 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457))))))))))

(assert (= (and d!496584 res!738118) b!1647396))

(declare-fun m!1993965 () Bool)

(assert (=> d!496584 m!1993965))

(assert (=> d!496584 m!1993965))

(declare-fun m!1993967 () Bool)

(assert (=> d!496584 m!1993967))

(declare-fun m!1993969 () Bool)

(assert (=> b!1647396 m!1993969))

(assert (=> b!1647396 m!1990665))

(declare-fun m!1993971 () Bool)

(assert (=> b!1647396 m!1993971))

(assert (=> b!1645924 d!496584))

(declare-fun d!496586 () Bool)

(assert (=> d!496586 (= (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457)))) (fromListB!950 (t!150452 (t!150452 (t!150452 tokens!457)))))))

(declare-fun bs!396242 () Bool)

(assert (= bs!396242 d!496586))

(declare-fun m!1993973 () Bool)

(assert (=> bs!396242 m!1993973))

(assert (=> b!1645924 d!496586))

(declare-fun d!496588 () Bool)

(declare-fun lt!609472 () C!9236)

(assert (=> d!496588 (= lt!609472 (apply!4762 (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457))))) 0))))

(assert (=> d!496588 (= lt!609472 (apply!4763 (c!267635 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457))))) 0))))

(declare-fun e!1056470 () Bool)

(assert (=> d!496588 e!1056470))

(declare-fun res!738119 () Bool)

(assert (=> d!496588 (=> (not res!738119) (not e!1056470))))

(assert (=> d!496588 (= res!738119 (<= 0 0))))

(assert (=> d!496588 (= (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0) lt!609472)))

(declare-fun b!1647397 () Bool)

(assert (=> b!1647397 (= e!1056470 (< 0 (size!14464 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))))))))

(assert (= (and d!496588 res!738119) b!1647397))

(assert (=> d!496588 m!1990687))

(declare-fun m!1993975 () Bool)

(assert (=> d!496588 m!1993975))

(assert (=> d!496588 m!1993975))

(declare-fun m!1993977 () Bool)

(assert (=> d!496588 m!1993977))

(declare-fun m!1993979 () Bool)

(assert (=> d!496588 m!1993979))

(assert (=> b!1647397 m!1990687))

(declare-fun m!1993981 () Bool)

(assert (=> b!1647397 m!1993981))

(assert (=> b!1645924 d!496588))

(declare-fun b!1647398 () Bool)

(declare-fun e!1056472 () Option!3438)

(declare-fun lt!609473 () Option!3438)

(declare-fun lt!609476 () Option!3438)

(assert (=> b!1647398 (= e!1056472 (ite (and ((_ is None!3437) lt!609473) ((_ is None!3437) lt!609476)) None!3437 (ite ((_ is None!3437) lt!609476) lt!609473 (ite ((_ is None!3437) lt!609473) lt!609476 (ite (>= (size!14460 (_1!10314 (v!24578 lt!609473))) (size!14460 (_1!10314 (v!24578 lt!609476)))) lt!609473 lt!609476)))))))

(declare-fun call!105816 () Option!3438)

(assert (=> b!1647398 (= lt!609473 call!105816)))

(assert (=> b!1647398 (= lt!609476 (maxPrefix!1394 thiss!17113 (t!150453 rules!1846) (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))))))

(declare-fun d!496590 () Bool)

(declare-fun e!1056473 () Bool)

(assert (=> d!496590 e!1056473))

(declare-fun res!738121 () Bool)

(assert (=> d!496590 (=> res!738121 e!1056473)))

(declare-fun lt!609474 () Option!3438)

(assert (=> d!496590 (= res!738121 (isEmpty!11191 lt!609474))))

(assert (=> d!496590 (= lt!609474 e!1056472)))

(declare-fun c!267975 () Bool)

(assert (=> d!496590 (= c!267975 (and ((_ is Cons!18160) rules!1846) ((_ is Nil!18160) (t!150453 rules!1846))))))

(declare-fun lt!609477 () Unit!30071)

(declare-fun lt!609475 () Unit!30071)

(assert (=> d!496590 (= lt!609477 lt!609475)))

(assert (=> d!496590 (isPrefix!1461 (originalCharacters!4017 (h!23560 (t!150452 tokens!457))) (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))))

(assert (=> d!496590 (= lt!609475 (lemmaIsPrefixRefl!988 (originalCharacters!4017 (h!23560 (t!150452 tokens!457))) (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!496590 (rulesValidInductive!1010 thiss!17113 rules!1846)))

(assert (=> d!496590 (= (maxPrefix!1394 thiss!17113 rules!1846 (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))) lt!609474)))

(declare-fun b!1647399 () Bool)

(declare-fun res!738122 () Bool)

(declare-fun e!1056471 () Bool)

(assert (=> b!1647399 (=> (not res!738122) (not e!1056471))))

(assert (=> b!1647399 (= res!738122 (= (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!609474)))) (originalCharacters!4017 (_1!10314 (get!5281 lt!609474)))))))

(declare-fun b!1647400 () Bool)

(declare-fun res!738126 () Bool)

(assert (=> b!1647400 (=> (not res!738126) (not e!1056471))))

(assert (=> b!1647400 (= res!738126 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!609474)))) (_2!10314 (get!5281 lt!609474))) (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))))))

(declare-fun b!1647401 () Bool)

(assert (=> b!1647401 (= e!1056471 (contains!3162 rules!1846 (rule!5057 (_1!10314 (get!5281 lt!609474)))))))

(declare-fun b!1647402 () Bool)

(declare-fun res!738120 () Bool)

(assert (=> b!1647402 (=> (not res!738120) (not e!1056471))))

(assert (=> b!1647402 (= res!738120 (matchR!2024 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!609474)))) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!609474))))))))

(declare-fun bm!105811 () Bool)

(assert (=> bm!105811 (= call!105816 (maxPrefixOneRule!803 thiss!17113 (h!23561 rules!1846) (originalCharacters!4017 (h!23560 (t!150452 tokens!457)))))))

(declare-fun b!1647403 () Bool)

(assert (=> b!1647403 (= e!1056473 e!1056471)))

(declare-fun res!738123 () Bool)

(assert (=> b!1647403 (=> (not res!738123) (not e!1056471))))

(assert (=> b!1647403 (= res!738123 (isDefined!2795 lt!609474))))

(declare-fun b!1647404 () Bool)

(declare-fun res!738125 () Bool)

(assert (=> b!1647404 (=> (not res!738125) (not e!1056471))))

(assert (=> b!1647404 (= res!738125 (= (value!100958 (_1!10314 (get!5281 lt!609474))) (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!609474)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!609474)))))))))

(declare-fun b!1647405 () Bool)

(declare-fun res!738124 () Bool)

(assert (=> b!1647405 (=> (not res!738124) (not e!1056471))))

(assert (=> b!1647405 (= res!738124 (< (size!14466 (_2!10314 (get!5281 lt!609474))) (size!14466 (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1647406 () Bool)

(assert (=> b!1647406 (= e!1056472 call!105816)))

(assert (= (and d!496590 c!267975) b!1647406))

(assert (= (and d!496590 (not c!267975)) b!1647398))

(assert (= (or b!1647406 b!1647398) bm!105811))

(assert (= (and d!496590 (not res!738121)) b!1647403))

(assert (= (and b!1647403 res!738123) b!1647399))

(assert (= (and b!1647399 res!738122) b!1647405))

(assert (= (and b!1647405 res!738124) b!1647400))

(assert (= (and b!1647400 res!738126) b!1647404))

(assert (= (and b!1647404 res!738125) b!1647402))

(assert (= (and b!1647402 res!738120) b!1647401))

(declare-fun m!1993983 () Bool)

(assert (=> b!1647402 m!1993983))

(declare-fun m!1993985 () Bool)

(assert (=> b!1647402 m!1993985))

(assert (=> b!1647402 m!1993985))

(declare-fun m!1993987 () Bool)

(assert (=> b!1647402 m!1993987))

(assert (=> b!1647402 m!1993987))

(declare-fun m!1993989 () Bool)

(assert (=> b!1647402 m!1993989))

(assert (=> b!1647400 m!1993983))

(assert (=> b!1647400 m!1993985))

(assert (=> b!1647400 m!1993985))

(assert (=> b!1647400 m!1993987))

(assert (=> b!1647400 m!1993987))

(declare-fun m!1993991 () Bool)

(assert (=> b!1647400 m!1993991))

(declare-fun m!1993993 () Bool)

(assert (=> bm!105811 m!1993993))

(declare-fun m!1993995 () Bool)

(assert (=> b!1647398 m!1993995))

(assert (=> b!1647404 m!1993983))

(declare-fun m!1993997 () Bool)

(assert (=> b!1647404 m!1993997))

(assert (=> b!1647404 m!1993997))

(declare-fun m!1993999 () Bool)

(assert (=> b!1647404 m!1993999))

(assert (=> b!1647405 m!1993983))

(declare-fun m!1994001 () Bool)

(assert (=> b!1647405 m!1994001))

(assert (=> b!1647405 m!1991367))

(assert (=> b!1647399 m!1993983))

(assert (=> b!1647399 m!1993985))

(assert (=> b!1647399 m!1993985))

(assert (=> b!1647399 m!1993987))

(declare-fun m!1994003 () Bool)

(assert (=> d!496590 m!1994003))

(declare-fun m!1994005 () Bool)

(assert (=> d!496590 m!1994005))

(declare-fun m!1994007 () Bool)

(assert (=> d!496590 m!1994007))

(assert (=> d!496590 m!1990759))

(assert (=> b!1647401 m!1993983))

(declare-fun m!1994009 () Bool)

(assert (=> b!1647401 m!1994009))

(declare-fun m!1994011 () Bool)

(assert (=> b!1647403 m!1994011))

(assert (=> b!1645924 d!496590))

(assert (=> b!1645924 d!496206))

(declare-fun d!496592 () Bool)

(assert (=> d!496592 (= (list!7206 (_1!10315 lt!608014)) (list!7209 (c!267637 (_1!10315 lt!608014))))))

(declare-fun bs!396243 () Bool)

(assert (= bs!396243 d!496592))

(declare-fun m!1994013 () Bool)

(assert (=> bs!396243 m!1994013))

(assert (=> b!1645924 d!496592))

(declare-fun d!496594 () Bool)

(assert (=> d!496594 (= (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))) (v!24578 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))))

(assert (=> b!1645924 d!496594))

(assert (=> b!1645924 d!495902))

(declare-fun d!496596 () Bool)

(assert (=> d!496596 (= (list!7206 (_1!10315 lt!608014)) (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!609478 () Unit!30071)

(assert (=> d!496596 (= lt!609478 (choose!9878 (h!23560 (t!150452 (t!150452 tokens!457))) (t!150452 (t!150452 (t!150452 tokens!457))) (_1!10315 lt!608014)))))

(assert (=> d!496596 (= (list!7206 (_1!10315 lt!608014)) (list!7206 (seqFromList!2146 ($colon$colon!360 (t!150452 (t!150452 (t!150452 tokens!457))) (h!23560 (t!150452 (t!150452 tokens!457)))))))))

(assert (=> d!496596 (= (seqFromListBHdTlConstructive!278 (h!23560 (t!150452 (t!150452 tokens!457))) (t!150452 (t!150452 (t!150452 tokens!457))) (_1!10315 lt!608014)) lt!609478)))

(declare-fun bs!396244 () Bool)

(assert (= bs!396244 d!496596))

(declare-fun m!1994015 () Bool)

(assert (=> bs!396244 m!1994015))

(declare-fun m!1994017 () Bool)

(assert (=> bs!396244 m!1994017))

(assert (=> bs!396244 m!1990635))

(assert (=> bs!396244 m!1990637))

(assert (=> bs!396244 m!1990697))

(assert (=> bs!396244 m!1994017))

(declare-fun m!1994019 () Bool)

(assert (=> bs!396244 m!1994019))

(assert (=> bs!396244 m!1994015))

(assert (=> bs!396244 m!1990665))

(assert (=> bs!396244 m!1990635))

(declare-fun m!1994021 () Bool)

(assert (=> bs!396244 m!1994021))

(assert (=> bs!396244 m!1990665))

(assert (=> b!1645924 d!496596))

(declare-fun d!496598 () Bool)

(assert (=> d!496598 (= (list!7205 lt!608019) (list!7210 (c!267635 lt!608019)))))

(declare-fun bs!396245 () Bool)

(assert (= bs!396245 d!496598))

(declare-fun m!1994023 () Bool)

(assert (=> bs!396245 m!1994023))

(assert (=> b!1645924 d!496598))

(declare-fun b!1647409 () Bool)

(declare-fun e!1056474 () Bool)

(assert (=> b!1647409 (= e!1056474 (isPrefix!1461 (tail!2427 lt!608000) (tail!2427 (++!4894 lt!608000 lt!608017))))))

(declare-fun d!496600 () Bool)

(declare-fun e!1056476 () Bool)

(assert (=> d!496600 e!1056476))

(declare-fun res!738127 () Bool)

(assert (=> d!496600 (=> res!738127 e!1056476)))

(declare-fun lt!609479 () Bool)

(assert (=> d!496600 (= res!738127 (not lt!609479))))

(declare-fun e!1056475 () Bool)

(assert (=> d!496600 (= lt!609479 e!1056475)))

(declare-fun res!738128 () Bool)

(assert (=> d!496600 (=> res!738128 e!1056475)))

(assert (=> d!496600 (= res!738128 ((_ is Nil!18158) lt!608000))))

(assert (=> d!496600 (= (isPrefix!1461 lt!608000 (++!4894 lt!608000 lt!608017)) lt!609479)))

(declare-fun b!1647408 () Bool)

(declare-fun res!738130 () Bool)

(assert (=> b!1647408 (=> (not res!738130) (not e!1056474))))

(assert (=> b!1647408 (= res!738130 (= (head!3605 lt!608000) (head!3605 (++!4894 lt!608000 lt!608017))))))

(declare-fun b!1647407 () Bool)

(assert (=> b!1647407 (= e!1056475 e!1056474)))

(declare-fun res!738129 () Bool)

(assert (=> b!1647407 (=> (not res!738129) (not e!1056474))))

(assert (=> b!1647407 (= res!738129 (not ((_ is Nil!18158) (++!4894 lt!608000 lt!608017))))))

(declare-fun b!1647410 () Bool)

(assert (=> b!1647410 (= e!1056476 (>= (size!14466 (++!4894 lt!608000 lt!608017)) (size!14466 lt!608000)))))

(assert (= (and d!496600 (not res!738128)) b!1647407))

(assert (= (and b!1647407 res!738129) b!1647408))

(assert (= (and b!1647408 res!738130) b!1647409))

(assert (= (and d!496600 (not res!738127)) b!1647410))

(declare-fun m!1994025 () Bool)

(assert (=> b!1647409 m!1994025))

(assert (=> b!1647409 m!1990661))

(declare-fun m!1994027 () Bool)

(assert (=> b!1647409 m!1994027))

(assert (=> b!1647409 m!1994025))

(assert (=> b!1647409 m!1994027))

(declare-fun m!1994029 () Bool)

(assert (=> b!1647409 m!1994029))

(declare-fun m!1994031 () Bool)

(assert (=> b!1647408 m!1994031))

(assert (=> b!1647408 m!1990661))

(declare-fun m!1994033 () Bool)

(assert (=> b!1647408 m!1994033))

(assert (=> b!1647410 m!1990661))

(declare-fun m!1994035 () Bool)

(assert (=> b!1647410 m!1994035))

(assert (=> b!1647410 m!1992571))

(assert (=> b!1645924 d!496600))

(declare-fun d!496602 () Bool)

(declare-fun e!1056480 () Bool)

(assert (=> d!496602 e!1056480))

(declare-fun c!267978 () Bool)

(assert (=> d!496602 (= c!267978 ((_ is EmptyExpr!4531) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))))

(declare-fun lt!609480 () Bool)

(declare-fun e!1056477 () Bool)

(assert (=> d!496602 (= lt!609480 e!1056477)))

(declare-fun c!267977 () Bool)

(assert (=> d!496602 (= c!267977 (isEmpty!11189 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496602 (validRegex!1802 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!496602 (= (matchR!2024 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))) lt!609480)))

(declare-fun b!1647411 () Bool)

(declare-fun e!1056482 () Bool)

(declare-fun e!1056483 () Bool)

(assert (=> b!1647411 (= e!1056482 e!1056483)))

(declare-fun res!738137 () Bool)

(assert (=> b!1647411 (=> res!738137 e!1056483)))

(declare-fun call!105817 () Bool)

(assert (=> b!1647411 (= res!738137 call!105817)))

(declare-fun b!1647412 () Bool)

(assert (=> b!1647412 (= e!1056483 (not (= (head!3605 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))) (c!267636 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))))))

(declare-fun b!1647413 () Bool)

(declare-fun res!738132 () Bool)

(declare-fun e!1056479 () Bool)

(assert (=> b!1647413 (=> (not res!738132) (not e!1056479))))

(assert (=> b!1647413 (= res!738132 (not call!105817))))

(declare-fun b!1647414 () Bool)

(assert (=> b!1647414 (= e!1056477 (nullable!1341 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))))

(declare-fun bm!105812 () Bool)

(assert (=> bm!105812 (= call!105817 (isEmpty!11189 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1647415 () Bool)

(declare-fun e!1056481 () Bool)

(assert (=> b!1647415 (= e!1056481 e!1056482)))

(declare-fun res!738133 () Bool)

(assert (=> b!1647415 (=> (not res!738133) (not e!1056482))))

(assert (=> b!1647415 (= res!738133 (not lt!609480))))

(declare-fun b!1647416 () Bool)

(assert (=> b!1647416 (= e!1056477 (matchR!2024 (derivativeStep!1106 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))) (head!3605 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))) (tail!2427 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1647417 () Bool)

(declare-fun e!1056478 () Bool)

(assert (=> b!1647417 (= e!1056480 e!1056478)))

(declare-fun c!267976 () Bool)

(assert (=> b!1647417 (= c!267976 ((_ is EmptyLang!4531) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1647418 () Bool)

(assert (=> b!1647418 (= e!1056479 (= (head!3605 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))) (c!267636 (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1647419 () Bool)

(declare-fun res!738138 () Bool)

(assert (=> b!1647419 (=> (not res!738138) (not e!1056479))))

(assert (=> b!1647419 (= res!738138 (isEmpty!11189 (tail!2427 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1647420 () Bool)

(declare-fun res!738131 () Bool)

(assert (=> b!1647420 (=> res!738131 e!1056483)))

(assert (=> b!1647420 (= res!738131 (not (isEmpty!11189 (tail!2427 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))))

(declare-fun b!1647421 () Bool)

(declare-fun res!738134 () Bool)

(assert (=> b!1647421 (=> res!738134 e!1056481)))

(assert (=> b!1647421 (= res!738134 (not ((_ is ElementMatch!4531) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))))))

(assert (=> b!1647421 (= e!1056478 e!1056481)))

(declare-fun b!1647422 () Bool)

(assert (=> b!1647422 (= e!1056478 (not lt!609480))))

(declare-fun b!1647423 () Bool)

(assert (=> b!1647423 (= e!1056480 (= lt!609480 call!105817))))

(declare-fun b!1647424 () Bool)

(declare-fun res!738136 () Bool)

(assert (=> b!1647424 (=> res!738136 e!1056481)))

(assert (=> b!1647424 (= res!738136 e!1056479)))

(declare-fun res!738135 () Bool)

(assert (=> b!1647424 (=> (not res!738135) (not e!1056479))))

(assert (=> b!1647424 (= res!738135 lt!609480)))

(assert (= (and d!496602 c!267977) b!1647414))

(assert (= (and d!496602 (not c!267977)) b!1647416))

(assert (= (and d!496602 c!267978) b!1647423))

(assert (= (and d!496602 (not c!267978)) b!1647417))

(assert (= (and b!1647417 c!267976) b!1647422))

(assert (= (and b!1647417 (not c!267976)) b!1647421))

(assert (= (and b!1647421 (not res!738134)) b!1647424))

(assert (= (and b!1647424 res!738135) b!1647413))

(assert (= (and b!1647413 res!738132) b!1647419))

(assert (= (and b!1647419 res!738138) b!1647418))

(assert (= (and b!1647424 (not res!738136)) b!1647415))

(assert (= (and b!1647415 res!738133) b!1647411))

(assert (= (and b!1647411 (not res!738137)) b!1647420))

(assert (= (and b!1647420 (not res!738131)) b!1647412))

(assert (= (or b!1647423 b!1647411 b!1647413) bm!105812))

(declare-fun m!1994037 () Bool)

(assert (=> b!1647414 m!1994037))

(assert (=> b!1647412 m!1990643))

(declare-fun m!1994039 () Bool)

(assert (=> b!1647412 m!1994039))

(assert (=> bm!105812 m!1990643))

(declare-fun m!1994041 () Bool)

(assert (=> bm!105812 m!1994041))

(assert (=> d!496602 m!1990643))

(assert (=> d!496602 m!1994041))

(declare-fun m!1994043 () Bool)

(assert (=> d!496602 m!1994043))

(assert (=> b!1647416 m!1990643))

(assert (=> b!1647416 m!1994039))

(assert (=> b!1647416 m!1994039))

(declare-fun m!1994045 () Bool)

(assert (=> b!1647416 m!1994045))

(assert (=> b!1647416 m!1990643))

(declare-fun m!1994047 () Bool)

(assert (=> b!1647416 m!1994047))

(assert (=> b!1647416 m!1994045))

(assert (=> b!1647416 m!1994047))

(declare-fun m!1994049 () Bool)

(assert (=> b!1647416 m!1994049))

(assert (=> b!1647419 m!1990643))

(assert (=> b!1647419 m!1994047))

(assert (=> b!1647419 m!1994047))

(declare-fun m!1994051 () Bool)

(assert (=> b!1647419 m!1994051))

(assert (=> b!1647418 m!1990643))

(assert (=> b!1647418 m!1994039))

(assert (=> b!1647420 m!1990643))

(assert (=> b!1647420 m!1994047))

(assert (=> b!1647420 m!1994047))

(assert (=> b!1647420 m!1994051))

(assert (=> b!1645924 d!496602))

(declare-fun d!496604 () Bool)

(declare-fun lt!609483 () C!9236)

(assert (=> d!496604 (= lt!609483 (head!3605 (list!7205 lt!608013)))))

(declare-fun head!3609 (Conc!6054) C!9236)

(assert (=> d!496604 (= lt!609483 (head!3609 (c!267635 lt!608013)))))

(assert (=> d!496604 (not (isEmpty!11190 lt!608013))))

(assert (=> d!496604 (= (head!3606 lt!608013) lt!609483)))

(declare-fun bs!396246 () Bool)

(assert (= bs!396246 d!496604))

(assert (=> bs!396246 m!1990649))

(assert (=> bs!396246 m!1990649))

(assert (=> bs!396246 m!1990651))

(declare-fun m!1994053 () Bool)

(assert (=> bs!396246 m!1994053))

(declare-fun m!1994055 () Bool)

(assert (=> bs!396246 m!1994055))

(assert (=> b!1645924 d!496604))

(declare-fun d!496606 () Bool)

(assert (=> d!496606 (= (isEmpty!11189 (_2!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))) ((_ is Nil!18158) (_2!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))))))

(assert (=> b!1645924 d!496606))

(declare-fun d!496608 () Bool)

(assert (=> d!496608 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0))) (list!7210 (c!267635 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0)))))))

(declare-fun bs!396247 () Bool)

(assert (= bs!396247 d!496608))

(declare-fun m!1994057 () Bool)

(assert (=> bs!396247 m!1994057))

(assert (=> b!1645924 d!496608))

(declare-fun d!496610 () Bool)

(declare-fun lt!609484 () BalanceConc!12052)

(assert (=> d!496610 (= (list!7205 lt!609484) (printList!945 thiss!17113 (list!7206 (seqFromList!2146 (t!150452 (t!150452 tokens!457))))))))

(assert (=> d!496610 (= lt!609484 (printTailRec!883 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 tokens!457))) 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!496610 (= (print!1363 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))) lt!609484)))

(declare-fun bs!396248 () Bool)

(assert (= bs!396248 d!496610))

(declare-fun m!1994059 () Bool)

(assert (=> bs!396248 m!1994059))

(assert (=> bs!396248 m!1990381))

(assert (=> bs!396248 m!1990467))

(assert (=> bs!396248 m!1990467))

(declare-fun m!1994061 () Bool)

(assert (=> bs!396248 m!1994061))

(assert (=> bs!396248 m!1990381))

(declare-fun m!1994063 () Bool)

(assert (=> bs!396248 m!1994063))

(assert (=> b!1645924 d!496610))

(declare-fun d!496612 () Bool)

(assert (=> d!496612 (isPrefix!1461 lt!608000 (++!4894 lt!608000 lt!608017))))

(declare-fun lt!609485 () Unit!30071)

(assert (=> d!496612 (= lt!609485 (choose!9879 lt!608000 lt!608017))))

(assert (=> d!496612 (= (lemmaConcatTwoListThenFirstIsPrefix!986 lt!608000 lt!608017) lt!609485)))

(declare-fun bs!396249 () Bool)

(assert (= bs!396249 d!496612))

(assert (=> bs!396249 m!1990661))

(assert (=> bs!396249 m!1990661))

(assert (=> bs!396249 m!1990689))

(declare-fun m!1994065 () Bool)

(assert (=> bs!396249 m!1994065))

(assert (=> b!1645924 d!496612))

(declare-fun d!496614 () Bool)

(declare-fun e!1056484 () Bool)

(assert (=> d!496614 e!1056484))

(declare-fun res!738139 () Bool)

(assert (=> d!496614 (=> (not res!738139) (not e!1056484))))

(declare-fun lt!609486 () BalanceConc!12054)

(assert (=> d!496614 (= res!738139 (= (list!7206 lt!609486) (Cons!18159 (h!23560 (t!150452 tokens!457)) Nil!18159)))))

(assert (=> d!496614 (= lt!609486 (singleton!720 (h!23560 (t!150452 tokens!457))))))

(assert (=> d!496614 (= (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) lt!609486)))

(declare-fun b!1647425 () Bool)

(assert (=> b!1647425 (= e!1056484 (isBalanced!1846 (c!267637 lt!609486)))))

(assert (= (and d!496614 res!738139) b!1647425))

(declare-fun m!1994067 () Bool)

(assert (=> d!496614 m!1994067))

(declare-fun m!1994069 () Bool)

(assert (=> d!496614 m!1994069))

(declare-fun m!1994071 () Bool)

(assert (=> b!1647425 m!1994071))

(assert (=> b!1645924 d!496614))

(declare-fun d!496616 () Bool)

(declare-fun lt!609487 () BalanceConc!12052)

(assert (=> d!496616 (= (list!7205 lt!609487) (printList!945 thiss!17113 (list!7206 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496616 (= lt!609487 (printTailRec!883 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) 0 (BalanceConc!12053 Empty!6054)))))

(assert (=> d!496616 (= (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457)))) lt!609487)))

(declare-fun bs!396250 () Bool)

(assert (= bs!396250 d!496616))

(declare-fun m!1994073 () Bool)

(assert (=> bs!396250 m!1994073))

(assert (=> bs!396250 m!1990639))

(assert (=> bs!396250 m!1992503))

(assert (=> bs!396250 m!1992503))

(declare-fun m!1994075 () Bool)

(assert (=> bs!396250 m!1994075))

(assert (=> bs!396250 m!1990639))

(assert (=> bs!396250 m!1990641))

(assert (=> b!1645924 d!496616))

(declare-fun d!496618 () Bool)

(declare-fun lt!609488 () BalanceConc!12052)

(assert (=> d!496618 (= (list!7205 lt!609488) (originalCharacters!4017 (h!23560 (t!150452 (t!150452 tokens!457)))))))

(assert (=> d!496618 (= lt!609488 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (value!100958 (h!23560 (t!150452 (t!150452 tokens!457))))))))

(assert (=> d!496618 (= (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) lt!609488)))

(declare-fun b_lambda!51777 () Bool)

(assert (=> (not b_lambda!51777) (not d!496618)))

(declare-fun t!150607 () Bool)

(declare-fun tb!94355 () Bool)

(assert (=> (and b!1645821 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))))) t!150607) tb!94355))

(declare-fun b!1647426 () Bool)

(declare-fun e!1056485 () Bool)

(declare-fun tp!477075 () Bool)

(assert (=> b!1647426 (= e!1056485 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (value!100958 (h!23560 (t!150452 (t!150452 tokens!457))))))) tp!477075))))

(declare-fun result!113964 () Bool)

(assert (=> tb!94355 (= result!113964 (and (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (value!100958 (h!23560 (t!150452 (t!150452 tokens!457)))))) e!1056485))))

(assert (= tb!94355 b!1647426))

(declare-fun m!1994077 () Bool)

(assert (=> b!1647426 m!1994077))

(declare-fun m!1994079 () Bool)

(assert (=> tb!94355 m!1994079))

(assert (=> d!496618 t!150607))

(declare-fun b_and!116957 () Bool)

(assert (= b_and!116901 (and (=> t!150607 result!113964) b_and!116957)))

(declare-fun tb!94357 () Bool)

(declare-fun t!150609 () Bool)

(assert (=> (and b!1645826 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))))) t!150609) tb!94357))

(declare-fun result!113966 () Bool)

(assert (= result!113966 result!113964))

(assert (=> d!496618 t!150609))

(declare-fun b_and!116959 () Bool)

(assert (= b_and!116903 (and (=> t!150609 result!113966) b_and!116959)))

(declare-fun t!150611 () Bool)

(declare-fun tb!94359 () Bool)

(assert (=> (and b!1646231 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))))) t!150611) tb!94359))

(declare-fun result!113968 () Bool)

(assert (= result!113968 result!113964))

(assert (=> d!496618 t!150611))

(declare-fun b_and!116961 () Bool)

(assert (= b_and!116905 (and (=> t!150611 result!113968) b_and!116961)))

(declare-fun tb!94361 () Bool)

(declare-fun t!150613 () Bool)

(assert (=> (and b!1646242 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))))) t!150613) tb!94361))

(declare-fun result!113970 () Bool)

(assert (= result!113970 result!113964))

(assert (=> d!496618 t!150613))

(declare-fun b_and!116963 () Bool)

(assert (= b_and!116907 (and (=> t!150613 result!113970) b_and!116963)))

(declare-fun m!1994081 () Bool)

(assert (=> d!496618 m!1994081))

(declare-fun m!1994083 () Bool)

(assert (=> d!496618 m!1994083))

(assert (=> b!1645924 d!496618))

(declare-fun d!496620 () Bool)

(assert (=> d!496620 (= (head!3605 (originalCharacters!4017 (h!23560 (t!150452 (t!150452 tokens!457))))) (h!23559 (originalCharacters!4017 (h!23560 (t!150452 (t!150452 tokens!457))))))))

(assert (=> b!1645924 d!496620))

(declare-fun b!1647427 () Bool)

(declare-fun res!738142 () Bool)

(declare-fun e!1056487 () Bool)

(assert (=> b!1647427 (=> (not res!738142) (not e!1056487))))

(declare-fun lt!609489 () tuple2!17826)

(assert (=> b!1647427 (= res!738142 (= (list!7206 (_1!10315 lt!609489)) (_1!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 lt!608013)))))))

(declare-fun b!1647428 () Bool)

(declare-fun e!1056488 () Bool)

(assert (=> b!1647428 (= e!1056488 (= (_2!10315 lt!609489) lt!608013))))

(declare-fun b!1647429 () Bool)

(assert (=> b!1647429 (= e!1056487 (= (list!7205 (_2!10315 lt!609489)) (_2!10317 (lexList!863 thiss!17113 rules!1846 (list!7205 lt!608013)))))))

(declare-fun b!1647430 () Bool)

(declare-fun e!1056486 () Bool)

(assert (=> b!1647430 (= e!1056488 e!1056486)))

(declare-fun res!738141 () Bool)

(assert (=> b!1647430 (= res!738141 (< (size!14464 (_2!10315 lt!609489)) (size!14464 lt!608013)))))

(assert (=> b!1647430 (=> (not res!738141) (not e!1056486))))

(declare-fun b!1647431 () Bool)

(assert (=> b!1647431 (= e!1056486 (not (isEmpty!11180 (_1!10315 lt!609489))))))

(declare-fun d!496622 () Bool)

(assert (=> d!496622 e!1056487))

(declare-fun res!738140 () Bool)

(assert (=> d!496622 (=> (not res!738140) (not e!1056487))))

(assert (=> d!496622 (= res!738140 e!1056488)))

(declare-fun c!267979 () Bool)

(assert (=> d!496622 (= c!267979 (> (size!14465 (_1!10315 lt!609489)) 0))))

(assert (=> d!496622 (= lt!609489 (lexTailRecV2!586 thiss!17113 rules!1846 lt!608013 (BalanceConc!12053 Empty!6054) lt!608013 (BalanceConc!12055 Empty!6055)))))

(assert (=> d!496622 (= (lex!1316 thiss!17113 rules!1846 lt!608013) lt!609489)))

(assert (= (and d!496622 c!267979) b!1647430))

(assert (= (and d!496622 (not c!267979)) b!1647428))

(assert (= (and b!1647430 res!738141) b!1647431))

(assert (= (and d!496622 res!738140) b!1647427))

(assert (= (and b!1647427 res!738142) b!1647429))

(declare-fun m!1994085 () Bool)

(assert (=> b!1647430 m!1994085))

(declare-fun m!1994087 () Bool)

(assert (=> b!1647430 m!1994087))

(declare-fun m!1994089 () Bool)

(assert (=> b!1647427 m!1994089))

(assert (=> b!1647427 m!1990649))

(assert (=> b!1647427 m!1990649))

(declare-fun m!1994091 () Bool)

(assert (=> b!1647427 m!1994091))

(declare-fun m!1994093 () Bool)

(assert (=> d!496622 m!1994093))

(declare-fun m!1994095 () Bool)

(assert (=> d!496622 m!1994095))

(declare-fun m!1994097 () Bool)

(assert (=> b!1647429 m!1994097))

(assert (=> b!1647429 m!1990649))

(assert (=> b!1647429 m!1990649))

(assert (=> b!1647429 m!1994091))

(declare-fun m!1994099 () Bool)

(assert (=> b!1647431 m!1994099))

(assert (=> b!1645924 d!496622))

(declare-fun d!496624 () Bool)

(assert (=> d!496624 (= (head!3605 (list!7205 lt!608013)) (h!23559 (list!7205 lt!608013)))))

(assert (=> b!1645924 d!496624))

(assert (=> b!1645924 d!495782))

(declare-fun d!496626 () Bool)

(assert (=> d!496626 (= (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7210 (c!267635 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun bs!396251 () Bool)

(assert (= bs!396251 d!496626))

(declare-fun m!1994101 () Bool)

(assert (=> bs!396251 m!1994101))

(assert (=> b!1645924 d!496626))

(declare-fun d!496628 () Bool)

(assert (=> d!496628 (= (list!7205 lt!608013) (list!7210 (c!267635 lt!608013)))))

(declare-fun bs!396252 () Bool)

(assert (= bs!396252 d!496628))

(declare-fun m!1994103 () Bool)

(assert (=> bs!396252 m!1994103))

(assert (=> b!1645924 d!496628))

(declare-fun b!1647432 () Bool)

(declare-fun e!1056490 () Option!3438)

(declare-fun lt!609490 () Option!3438)

(declare-fun lt!609493 () Option!3438)

(assert (=> b!1647432 (= e!1056490 (ite (and ((_ is None!3437) lt!609490) ((_ is None!3437) lt!609493)) None!3437 (ite ((_ is None!3437) lt!609493) lt!609490 (ite ((_ is None!3437) lt!609490) lt!609493 (ite (>= (size!14460 (_1!10314 (v!24578 lt!609490))) (size!14460 (_1!10314 (v!24578 lt!609493)))) lt!609490 lt!609493)))))))

(declare-fun call!105818 () Option!3438)

(assert (=> b!1647432 (= lt!609490 call!105818)))

(assert (=> b!1647432 (= lt!609493 (maxPrefix!1394 thiss!17113 (t!150453 rules!1846) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun d!496630 () Bool)

(declare-fun e!1056491 () Bool)

(assert (=> d!496630 e!1056491))

(declare-fun res!738144 () Bool)

(assert (=> d!496630 (=> res!738144 e!1056491)))

(declare-fun lt!609491 () Option!3438)

(assert (=> d!496630 (= res!738144 (isEmpty!11191 lt!609491))))

(assert (=> d!496630 (= lt!609491 e!1056490)))

(declare-fun c!267980 () Bool)

(assert (=> d!496630 (= c!267980 (and ((_ is Cons!18160) rules!1846) ((_ is Nil!18160) (t!150453 rules!1846))))))

(declare-fun lt!609494 () Unit!30071)

(declare-fun lt!609492 () Unit!30071)

(assert (=> d!496630 (= lt!609494 lt!609492)))

(assert (=> d!496630 (isPrefix!1461 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))

(assert (=> d!496630 (= lt!609492 (lemmaIsPrefixRefl!988 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(assert (=> d!496630 (rulesValidInductive!1010 thiss!17113 rules!1846)))

(assert (=> d!496630 (= (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))) lt!609491)))

(declare-fun b!1647433 () Bool)

(declare-fun res!738145 () Bool)

(declare-fun e!1056489 () Bool)

(assert (=> b!1647433 (=> (not res!738145) (not e!1056489))))

(assert (=> b!1647433 (= res!738145 (= (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!609491)))) (originalCharacters!4017 (_1!10314 (get!5281 lt!609491)))))))

(declare-fun b!1647434 () Bool)

(declare-fun res!738149 () Bool)

(assert (=> b!1647434 (=> (not res!738149) (not e!1056489))))

(assert (=> b!1647434 (= res!738149 (= (++!4894 (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!609491)))) (_2!10314 (get!5281 lt!609491))) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1647435 () Bool)

(assert (=> b!1647435 (= e!1056489 (contains!3162 rules!1846 (rule!5057 (_1!10314 (get!5281 lt!609491)))))))

(declare-fun b!1647436 () Bool)

(declare-fun res!738143 () Bool)

(assert (=> b!1647436 (=> (not res!738143) (not e!1056489))))

(assert (=> b!1647436 (= res!738143 (matchR!2024 (regex!3203 (rule!5057 (_1!10314 (get!5281 lt!609491)))) (list!7205 (charsOf!1852 (_1!10314 (get!5281 lt!609491))))))))

(declare-fun bm!105813 () Bool)

(assert (=> bm!105813 (= call!105818 (maxPrefixOneRule!803 thiss!17113 (h!23561 rules!1846) (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1647437 () Bool)

(assert (=> b!1647437 (= e!1056491 e!1056489)))

(declare-fun res!738146 () Bool)

(assert (=> b!1647437 (=> (not res!738146) (not e!1056489))))

(assert (=> b!1647437 (= res!738146 (isDefined!2795 lt!609491))))

(declare-fun b!1647438 () Bool)

(declare-fun res!738148 () Bool)

(assert (=> b!1647438 (=> (not res!738148) (not e!1056489))))

(assert (=> b!1647438 (= res!738148 (= (value!100958 (_1!10314 (get!5281 lt!609491))) (apply!4756 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!609491)))) (seqFromList!2145 (originalCharacters!4017 (_1!10314 (get!5281 lt!609491)))))))))

(declare-fun b!1647439 () Bool)

(declare-fun res!738147 () Bool)

(assert (=> b!1647439 (=> (not res!738147) (not e!1056489))))

(assert (=> b!1647439 (= res!738147 (< (size!14466 (_2!10314 (get!5281 lt!609491))) (size!14466 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))))))

(declare-fun b!1647440 () Bool)

(assert (=> b!1647440 (= e!1056490 call!105818)))

(assert (= (and d!496630 c!267980) b!1647440))

(assert (= (and d!496630 (not c!267980)) b!1647432))

(assert (= (or b!1647440 b!1647432) bm!105813))

(assert (= (and d!496630 (not res!738144)) b!1647437))

(assert (= (and b!1647437 res!738146) b!1647433))

(assert (= (and b!1647433 res!738145) b!1647439))

(assert (= (and b!1647439 res!738147) b!1647434))

(assert (= (and b!1647434 res!738149) b!1647438))

(assert (= (and b!1647438 res!738148) b!1647436))

(assert (= (and b!1647436 res!738143) b!1647435))

(declare-fun m!1994105 () Bool)

(assert (=> b!1647436 m!1994105))

(declare-fun m!1994107 () Bool)

(assert (=> b!1647436 m!1994107))

(assert (=> b!1647436 m!1994107))

(declare-fun m!1994109 () Bool)

(assert (=> b!1647436 m!1994109))

(assert (=> b!1647436 m!1994109))

(declare-fun m!1994111 () Bool)

(assert (=> b!1647436 m!1994111))

(assert (=> b!1647434 m!1994105))

(assert (=> b!1647434 m!1994107))

(assert (=> b!1647434 m!1994107))

(assert (=> b!1647434 m!1994109))

(assert (=> b!1647434 m!1994109))

(declare-fun m!1994113 () Bool)

(assert (=> b!1647434 m!1994113))

(assert (=> bm!105813 m!1990643))

(declare-fun m!1994115 () Bool)

(assert (=> bm!105813 m!1994115))

(assert (=> b!1647432 m!1990643))

(declare-fun m!1994117 () Bool)

(assert (=> b!1647432 m!1994117))

(assert (=> b!1647438 m!1994105))

(declare-fun m!1994119 () Bool)

(assert (=> b!1647438 m!1994119))

(assert (=> b!1647438 m!1994119))

(declare-fun m!1994121 () Bool)

(assert (=> b!1647438 m!1994121))

(assert (=> b!1647439 m!1994105))

(declare-fun m!1994123 () Bool)

(assert (=> b!1647439 m!1994123))

(assert (=> b!1647439 m!1990643))

(assert (=> b!1647439 m!1992497))

(assert (=> b!1647433 m!1994105))

(assert (=> b!1647433 m!1994107))

(assert (=> b!1647433 m!1994107))

(assert (=> b!1647433 m!1994109))

(declare-fun m!1994125 () Bool)

(assert (=> d!496630 m!1994125))

(assert (=> d!496630 m!1990643))

(assert (=> d!496630 m!1990643))

(declare-fun m!1994127 () Bool)

(assert (=> d!496630 m!1994127))

(assert (=> d!496630 m!1990643))

(assert (=> d!496630 m!1990643))

(declare-fun m!1994129 () Bool)

(assert (=> d!496630 m!1994129))

(assert (=> d!496630 m!1990759))

(assert (=> b!1647435 m!1994105))

(declare-fun m!1994131 () Bool)

(assert (=> b!1647435 m!1994131))

(declare-fun m!1994133 () Bool)

(assert (=> b!1647437 m!1994133))

(assert (=> b!1645924 d!496630))

(declare-fun d!496632 () Bool)

(assert (=> d!496632 (= (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457)))))) (not (isEmpty!11191 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 tokens!457))))))))))

(declare-fun bs!396253 () Bool)

(assert (= bs!396253 d!496632))

(assert (=> bs!396253 m!1990645))

(declare-fun m!1994135 () Bool)

(assert (=> bs!396253 m!1994135))

(assert (=> b!1645924 d!496632))

(declare-fun d!496634 () Bool)

(declare-fun e!1056493 () Bool)

(assert (=> d!496634 e!1056493))

(declare-fun res!738150 () Bool)

(assert (=> d!496634 (=> (not res!738150) (not e!1056493))))

(assert (=> d!496634 (= res!738150 (= (list!7206 (_1!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 tokens!457))))))) (t!150452 (t!150452 tokens!457))))))

(declare-fun lt!609513 () Unit!30071)

(declare-fun e!1056492 () Unit!30071)

(assert (=> d!496634 (= lt!609513 e!1056492)))

(declare-fun c!267981 () Bool)

(assert (=> d!496634 (= c!267981 (or ((_ is Nil!18159) (t!150452 (t!150452 tokens!457))) ((_ is Nil!18159) (t!150452 (t!150452 (t!150452 tokens!457))))))))

(assert (=> d!496634 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496634 (= (theoremInvertabilityWhenTokenListSeparable!275 thiss!17113 rules!1846 (t!150452 (t!150452 tokens!457))) lt!609513)))

(declare-fun b!1647441 () Bool)

(declare-fun Unit!30163 () Unit!30071)

(assert (=> b!1647441 (= e!1056492 Unit!30163)))

(declare-fun b!1647442 () Bool)

(declare-fun Unit!30164 () Unit!30071)

(assert (=> b!1647442 (= e!1056492 Unit!30164)))

(declare-fun lt!609516 () BalanceConc!12052)

(assert (=> b!1647442 (= lt!609516 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 tokens!457)))))))

(declare-fun lt!609510 () BalanceConc!12052)

(assert (=> b!1647442 (= lt!609510 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!609511 () tuple2!17826)

(assert (=> b!1647442 (= lt!609511 (lex!1316 thiss!17113 rules!1846 lt!609510))))

(declare-fun lt!609497 () List!18228)

(assert (=> b!1647442 (= lt!609497 (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!609514 () List!18228)

(assert (=> b!1647442 (= lt!609514 (list!7205 lt!609510))))

(declare-fun lt!609512 () Unit!30071)

(assert (=> b!1647442 (= lt!609512 (lemmaConcatTwoListThenFirstIsPrefix!986 lt!609497 lt!609514))))

(assert (=> b!1647442 (isPrefix!1461 lt!609497 (++!4894 lt!609497 lt!609514))))

(declare-fun lt!609500 () Unit!30071)

(assert (=> b!1647442 (= lt!609500 lt!609512)))

(declare-fun lt!609515 () Unit!30071)

(assert (=> b!1647442 (= lt!609515 (theoremInvertabilityWhenTokenListSeparable!275 thiss!17113 rules!1846 (t!150452 (t!150452 (t!150452 tokens!457)))))))

(declare-fun lt!609496 () Unit!30071)

(assert (=> b!1647442 (= lt!609496 (seqFromListBHdTlConstructive!278 (h!23560 (t!150452 (t!150452 (t!150452 tokens!457)))) (t!150452 (t!150452 (t!150452 (t!150452 tokens!457)))) (_1!10315 lt!609511)))))

(assert (=> b!1647442 (= (list!7206 (_1!10315 lt!609511)) (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 (t!150452 (t!150452 tokens!457))))) (h!23560 (t!150452 (t!150452 (t!150452 tokens!457)))))))))

(declare-fun lt!609506 () Unit!30071)

(assert (=> b!1647442 (= lt!609506 lt!609496)))

(declare-fun lt!609507 () Option!3438)

(assert (=> b!1647442 (= lt!609507 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 lt!609516)))))

(assert (=> b!1647442 (= (print!1363 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 (t!150452 tokens!457))))) (printTailRec!883 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 (t!150452 tokens!457)))) 0 (BalanceConc!12053 Empty!6054)))))

(declare-fun lt!609498 () Unit!30071)

(declare-fun Unit!30165 () Unit!30071)

(assert (=> b!1647442 (= lt!609498 Unit!30165)))

(declare-fun lt!609508 () Unit!30071)

(assert (=> b!1647442 (= lt!609508 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!400 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457))))) (list!7205 lt!609510)))))

(assert (=> b!1647442 (= (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457))))) (originalCharacters!4017 (h!23560 (t!150452 (t!150452 tokens!457)))))))

(declare-fun lt!609503 () Unit!30071)

(declare-fun Unit!30166 () Unit!30071)

(assert (=> b!1647442 (= lt!609503 Unit!30166)))

(assert (=> b!1647442 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 (t!150452 tokens!457))))) 0))) (Cons!18158 (head!3605 (originalCharacters!4017 (h!23560 (t!150452 (t!150452 (t!150452 tokens!457)))))) Nil!18158))))

(declare-fun lt!609495 () Unit!30071)

(declare-fun Unit!30167 () Unit!30071)

(assert (=> b!1647442 (= lt!609495 Unit!30167)))

(assert (=> b!1647442 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 (t!150452 tokens!457))))) 0))) (Cons!18158 (head!3605 (list!7205 lt!609510)) Nil!18158))))

(declare-fun lt!609520 () Unit!30071)

(declare-fun Unit!30168 () Unit!30071)

(assert (=> b!1647442 (= lt!609520 Unit!30168)))

(assert (=> b!1647442 (= (list!7205 (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 (t!150452 tokens!457))))) 0))) (Cons!18158 (head!3606 lt!609510) Nil!18158))))

(declare-fun lt!609502 () Unit!30071)

(declare-fun Unit!30169 () Unit!30071)

(assert (=> b!1647442 (= lt!609502 Unit!30169)))

(assert (=> b!1647442 (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (originalCharacters!4017 (h!23560 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!609504 () Unit!30071)

(declare-fun Unit!30170 () Unit!30071)

(assert (=> b!1647442 (= lt!609504 Unit!30170)))

(assert (=> b!1647442 (isDefined!2795 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))))))))

(declare-fun lt!609501 () Unit!30071)

(declare-fun Unit!30171 () Unit!30071)

(assert (=> b!1647442 (= lt!609501 Unit!30171)))

(declare-fun lt!609518 () Unit!30071)

(declare-fun Unit!30172 () Unit!30071)

(assert (=> b!1647442 (= lt!609518 Unit!30172)))

(assert (=> b!1647442 (= (_1!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))))))) (h!23560 (t!150452 (t!150452 tokens!457))))))

(declare-fun lt!609517 () Unit!30071)

(declare-fun Unit!30173 () Unit!30071)

(assert (=> b!1647442 (= lt!609517 Unit!30173)))

(assert (=> b!1647442 (isEmpty!11189 (_2!10314 (get!5281 (maxPrefix!1394 thiss!17113 rules!1846 (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))))))))))

(declare-fun lt!609505 () Unit!30071)

(declare-fun Unit!30174 () Unit!30071)

(assert (=> b!1647442 (= lt!609505 Unit!30174)))

(assert (=> b!1647442 (matchR!2024 (regex!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))) (list!7205 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457))))))))

(declare-fun lt!609509 () Unit!30071)

(declare-fun Unit!30175 () Unit!30071)

(assert (=> b!1647442 (= lt!609509 Unit!30175)))

(assert (=> b!1647442 (= (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))) (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))))

(declare-fun lt!609499 () Unit!30071)

(declare-fun Unit!30176 () Unit!30071)

(assert (=> b!1647442 (= lt!609499 Unit!30176)))

(declare-fun lt!609519 () Unit!30071)

(assert (=> b!1647442 (= lt!609519 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!162 thiss!17113 rules!1846 (h!23560 (t!150452 (t!150452 tokens!457))) (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))) (list!7205 lt!609510)))))

(declare-fun b!1647443 () Bool)

(assert (=> b!1647443 (= e!1056493 (isEmpty!11190 (_2!10315 (lex!1316 thiss!17113 rules!1846 (print!1363 thiss!17113 (seqFromList!2146 (t!150452 (t!150452 tokens!457))))))))))

(assert (= (and d!496634 c!267981) b!1647441))

(assert (= (and d!496634 (not c!267981)) b!1647442))

(assert (= (and d!496634 res!738150) b!1647443))

(assert (=> d!496634 m!1990349))

(assert (=> d!496634 m!1990675))

(declare-fun m!1994137 () Bool)

(assert (=> d!496634 m!1994137))

(assert (=> d!496634 m!1990381))

(declare-fun m!1994139 () Bool)

(assert (=> d!496634 m!1994139))

(assert (=> d!496634 m!1990381))

(assert (=> d!496634 m!1990675))

(declare-fun m!1994141 () Bool)

(assert (=> b!1647442 m!1994141))

(declare-fun m!1994143 () Bool)

(assert (=> b!1647442 m!1994143))

(declare-fun m!1994145 () Bool)

(assert (=> b!1647442 m!1994145))

(declare-fun m!1994147 () Bool)

(assert (=> b!1647442 m!1994147))

(assert (=> b!1647442 m!1993975))

(declare-fun m!1994149 () Bool)

(assert (=> b!1647442 m!1994149))

(declare-fun m!1994151 () Bool)

(assert (=> b!1647442 m!1994151))

(declare-fun m!1994153 () Bool)

(assert (=> b!1647442 m!1994153))

(declare-fun m!1994155 () Bool)

(assert (=> b!1647442 m!1994155))

(assert (=> b!1647442 m!1990381))

(assert (=> b!1647442 m!1990687))

(assert (=> b!1647442 m!1993975))

(assert (=> b!1647442 m!1994149))

(declare-fun m!1994157 () Bool)

(assert (=> b!1647442 m!1994157))

(declare-fun m!1994159 () Bool)

(assert (=> b!1647442 m!1994159))

(declare-fun m!1994161 () Bool)

(assert (=> b!1647442 m!1994161))

(assert (=> b!1647442 m!1990687))

(declare-fun m!1994163 () Bool)

(assert (=> b!1647442 m!1994163))

(declare-fun m!1994165 () Bool)

(assert (=> b!1647442 m!1994165))

(assert (=> b!1647442 m!1994149))

(declare-fun m!1994167 () Bool)

(assert (=> b!1647442 m!1994167))

(declare-fun m!1994169 () Bool)

(assert (=> b!1647442 m!1994169))

(assert (=> b!1647442 m!1994141))

(assert (=> b!1647442 m!1994153))

(declare-fun m!1994171 () Bool)

(assert (=> b!1647442 m!1994171))

(declare-fun m!1994173 () Bool)

(assert (=> b!1647442 m!1994173))

(declare-fun m!1994175 () Bool)

(assert (=> b!1647442 m!1994175))

(declare-fun m!1994177 () Bool)

(assert (=> b!1647442 m!1994177))

(assert (=> b!1647442 m!1990665))

(declare-fun m!1994179 () Bool)

(assert (=> b!1647442 m!1994179))

(assert (=> b!1647442 m!1993975))

(assert (=> b!1647442 m!1994153))

(declare-fun m!1994181 () Bool)

(assert (=> b!1647442 m!1994181))

(assert (=> b!1647442 m!1994153))

(assert (=> b!1647442 m!1993975))

(declare-fun m!1994183 () Bool)

(assert (=> b!1647442 m!1994183))

(declare-fun m!1994185 () Bool)

(assert (=> b!1647442 m!1994185))

(declare-fun m!1994187 () Bool)

(assert (=> b!1647442 m!1994187))

(assert (=> b!1647442 m!1990665))

(assert (=> b!1647442 m!1994169))

(assert (=> b!1647442 m!1994187))

(declare-fun m!1994189 () Bool)

(assert (=> b!1647442 m!1994189))

(declare-fun m!1994191 () Bool)

(assert (=> b!1647442 m!1994191))

(assert (=> b!1647442 m!1994185))

(assert (=> b!1647442 m!1994145))

(assert (=> b!1647442 m!1994165))

(declare-fun m!1994193 () Bool)

(assert (=> b!1647442 m!1994193))

(assert (=> b!1647442 m!1994145))

(declare-fun m!1994195 () Bool)

(assert (=> b!1647442 m!1994195))

(declare-fun m!1994197 () Bool)

(assert (=> b!1647442 m!1994197))

(declare-fun m!1994199 () Bool)

(assert (=> b!1647442 m!1994199))

(assert (=> b!1647442 m!1994191))

(assert (=> b!1647442 m!1990381))

(assert (=> b!1647442 m!1990675))

(declare-fun m!1994201 () Bool)

(assert (=> b!1647442 m!1994201))

(declare-fun m!1994203 () Bool)

(assert (=> b!1647442 m!1994203))

(assert (=> b!1647442 m!1994159))

(assert (=> b!1647442 m!1994199))

(declare-fun m!1994205 () Bool)

(assert (=> b!1647442 m!1994205))

(assert (=> b!1647443 m!1990381))

(assert (=> b!1647443 m!1990381))

(assert (=> b!1647443 m!1990675))

(assert (=> b!1647443 m!1990675))

(assert (=> b!1647443 m!1994137))

(declare-fun m!1994207 () Bool)

(assert (=> b!1647443 m!1994207))

(assert (=> b!1645924 d!496634))

(declare-fun d!496636 () Bool)

(declare-fun lt!609527 () BalanceConc!12052)

(assert (=> d!496636 (= (list!7205 lt!609527) (printListTailRec!385 thiss!17113 (dropList!658 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) 0) (list!7205 (BalanceConc!12053 Empty!6054))))))

(declare-fun e!1056495 () BalanceConc!12052)

(assert (=> d!496636 (= lt!609527 e!1056495)))

(declare-fun c!267982 () Bool)

(assert (=> d!496636 (= c!267982 (>= 0 (size!14465 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))))

(declare-fun e!1056494 () Bool)

(assert (=> d!496636 e!1056494))

(declare-fun res!738151 () Bool)

(assert (=> d!496636 (=> (not res!738151) (not e!1056494))))

(assert (=> d!496636 (= res!738151 (>= 0 0))))

(assert (=> d!496636 (= (printTailRec!883 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) 0 (BalanceConc!12053 Empty!6054)) lt!609527)))

(declare-fun b!1647444 () Bool)

(assert (=> b!1647444 (= e!1056494 (<= 0 (size!14465 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))))))))

(declare-fun b!1647445 () Bool)

(assert (=> b!1647445 (= e!1056495 (BalanceConc!12053 Empty!6054))))

(declare-fun b!1647446 () Bool)

(assert (=> b!1647446 (= e!1056495 (printTailRec!883 thiss!17113 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) (+ 0 1) (++!4896 (BalanceConc!12053 Empty!6054) (charsOf!1852 (apply!4757 (singletonSeq!1677 (h!23560 (t!150452 tokens!457))) 0)))))))

(declare-fun lt!609523 () List!18229)

(assert (=> b!1647446 (= lt!609523 (list!7206 (singletonSeq!1677 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!609526 () Unit!30071)

(assert (=> b!1647446 (= lt!609526 (lemmaDropApply!592 lt!609523 0))))

(assert (=> b!1647446 (= (head!3607 (drop!904 lt!609523 0)) (apply!4758 lt!609523 0))))

(declare-fun lt!609524 () Unit!30071)

(assert (=> b!1647446 (= lt!609524 lt!609526)))

(declare-fun lt!609521 () List!18229)

(assert (=> b!1647446 (= lt!609521 (list!7206 (singletonSeq!1677 (h!23560 (t!150452 tokens!457)))))))

(declare-fun lt!609522 () Unit!30071)

(assert (=> b!1647446 (= lt!609522 (lemmaDropTail!572 lt!609521 0))))

(assert (=> b!1647446 (= (tail!2428 (drop!904 lt!609521 0)) (drop!904 lt!609521 (+ 0 1)))))

(declare-fun lt!609525 () Unit!30071)

(assert (=> b!1647446 (= lt!609525 lt!609522)))

(assert (= (and d!496636 res!738151) b!1647444))

(assert (= (and d!496636 c!267982) b!1647445))

(assert (= (and d!496636 (not c!267982)) b!1647446))

(declare-fun m!1994209 () Bool)

(assert (=> d!496636 m!1994209))

(assert (=> d!496636 m!1990771))

(declare-fun m!1994211 () Bool)

(assert (=> d!496636 m!1994211))

(assert (=> d!496636 m!1990771))

(declare-fun m!1994213 () Bool)

(assert (=> d!496636 m!1994213))

(assert (=> d!496636 m!1990639))

(assert (=> d!496636 m!1994209))

(assert (=> d!496636 m!1990639))

(declare-fun m!1994215 () Bool)

(assert (=> d!496636 m!1994215))

(assert (=> b!1647444 m!1990639))

(assert (=> b!1647444 m!1994215))

(declare-fun m!1994217 () Bool)

(assert (=> b!1647446 m!1994217))

(declare-fun m!1994219 () Bool)

(assert (=> b!1647446 m!1994219))

(assert (=> b!1647446 m!1990639))

(declare-fun m!1994221 () Bool)

(assert (=> b!1647446 m!1994221))

(declare-fun m!1994223 () Bool)

(assert (=> b!1647446 m!1994223))

(declare-fun m!1994225 () Bool)

(assert (=> b!1647446 m!1994225))

(declare-fun m!1994227 () Bool)

(assert (=> b!1647446 m!1994227))

(assert (=> b!1647446 m!1994227))

(assert (=> b!1647446 m!1994221))

(declare-fun m!1994229 () Bool)

(assert (=> b!1647446 m!1994229))

(declare-fun m!1994231 () Bool)

(assert (=> b!1647446 m!1994231))

(declare-fun m!1994233 () Bool)

(assert (=> b!1647446 m!1994233))

(declare-fun m!1994235 () Bool)

(assert (=> b!1647446 m!1994235))

(assert (=> b!1647446 m!1990639))

(assert (=> b!1647446 m!1992503))

(assert (=> b!1647446 m!1990639))

(assert (=> b!1647446 m!1994225))

(declare-fun m!1994237 () Bool)

(assert (=> b!1647446 m!1994237))

(assert (=> b!1647446 m!1994219))

(declare-fun m!1994239 () Bool)

(assert (=> b!1647446 m!1994239))

(assert (=> b!1647446 m!1994229))

(assert (=> b!1645924 d!496636))

(assert (=> b!1645924 d!496158))

(declare-fun d!496638 () Bool)

(assert (=> d!496638 (= (list!7206 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 (t!150452 tokens!457))))) (list!7209 (c!267637 (prepend!759 (seqFromList!2146 (t!150452 (t!150452 (t!150452 tokens!457)))) (h!23560 (t!150452 (t!150452 tokens!457)))))))))

(declare-fun bs!396254 () Bool)

(assert (= bs!396254 d!496638))

(declare-fun m!1994241 () Bool)

(assert (=> bs!396254 m!1994241))

(assert (=> b!1645924 d!496638))

(declare-fun d!496640 () Bool)

(declare-fun e!1056496 () Bool)

(assert (=> d!496640 e!1056496))

(declare-fun res!738152 () Bool)

(assert (=> d!496640 (=> (not res!738152) (not e!1056496))))

(declare-fun lt!609528 () BalanceConc!12052)

(assert (=> d!496640 (= res!738152 (= (list!7205 lt!609528) (Cons!18158 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0) Nil!18158)))))

(assert (=> d!496640 (= lt!609528 (singleton!722 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0)))))

(assert (=> d!496640 (= (singletonSeq!1679 (apply!4754 (charsOf!1852 (h!23560 (t!150452 (t!150452 tokens!457)))) 0)) lt!609528)))

(declare-fun b!1647447 () Bool)

(assert (=> b!1647447 (= e!1056496 (isBalanced!1847 (c!267635 lt!609528)))))

(assert (= (and d!496640 res!738152) b!1647447))

(declare-fun m!1994243 () Bool)

(assert (=> d!496640 m!1994243))

(assert (=> d!496640 m!1990681))

(declare-fun m!1994245 () Bool)

(assert (=> d!496640 m!1994245))

(declare-fun m!1994247 () Bool)

(assert (=> b!1647447 m!1994247))

(assert (=> b!1645924 d!496640))

(declare-fun d!496642 () Bool)

(declare-fun e!1056498 () Bool)

(assert (=> d!496642 e!1056498))

(declare-fun res!738154 () Bool)

(assert (=> d!496642 (=> (not res!738154) (not e!1056498))))

(declare-fun lt!609529 () List!18228)

(assert (=> d!496642 (= res!738154 (= (content!2517 lt!609529) ((_ map or) (content!2517 (t!150451 lt!607800)) (content!2517 lt!607807))))))

(declare-fun e!1056497 () List!18228)

(assert (=> d!496642 (= lt!609529 e!1056497)))

(declare-fun c!267983 () Bool)

(assert (=> d!496642 (= c!267983 ((_ is Nil!18158) (t!150451 lt!607800)))))

(assert (=> d!496642 (= (++!4894 (t!150451 lt!607800) lt!607807) lt!609529)))

(declare-fun b!1647448 () Bool)

(assert (=> b!1647448 (= e!1056497 lt!607807)))

(declare-fun b!1647449 () Bool)

(assert (=> b!1647449 (= e!1056497 (Cons!18158 (h!23559 (t!150451 lt!607800)) (++!4894 (t!150451 (t!150451 lt!607800)) lt!607807)))))

(declare-fun b!1647450 () Bool)

(declare-fun res!738153 () Bool)

(assert (=> b!1647450 (=> (not res!738153) (not e!1056498))))

(assert (=> b!1647450 (= res!738153 (= (size!14466 lt!609529) (+ (size!14466 (t!150451 lt!607800)) (size!14466 lt!607807))))))

(declare-fun b!1647451 () Bool)

(assert (=> b!1647451 (= e!1056498 (or (not (= lt!607807 Nil!18158)) (= lt!609529 (t!150451 lt!607800))))))

(assert (= (and d!496642 c!267983) b!1647448))

(assert (= (and d!496642 (not c!267983)) b!1647449))

(assert (= (and d!496642 res!738154) b!1647450))

(assert (= (and b!1647450 res!738153) b!1647451))

(declare-fun m!1994249 () Bool)

(assert (=> d!496642 m!1994249))

(assert (=> d!496642 m!1992143))

(assert (=> d!496642 m!1991087))

(declare-fun m!1994251 () Bool)

(assert (=> b!1647449 m!1994251))

(declare-fun m!1994253 () Bool)

(assert (=> b!1647450 m!1994253))

(assert (=> b!1647450 m!1991701))

(assert (=> b!1647450 m!1991093))

(assert (=> b!1646205 d!496642))

(declare-fun d!496644 () Bool)

(declare-fun e!1056500 () Bool)

(assert (=> d!496644 e!1056500))

(declare-fun res!738156 () Bool)

(assert (=> d!496644 (=> (not res!738156) (not e!1056500))))

(declare-fun lt!609530 () List!18228)

(assert (=> d!496644 (= res!738156 (= (content!2517 lt!609530) ((_ map or) (content!2517 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (content!2517 (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))))))

(declare-fun e!1056499 () List!18228)

(assert (=> d!496644 (= lt!609530 e!1056499)))

(declare-fun c!267984 () Bool)

(assert (=> d!496644 (= c!267984 ((_ is Nil!18158) (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))))

(assert (=> d!496644 (= (++!4894 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))) (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159)))) lt!609530)))

(declare-fun b!1647452 () Bool)

(assert (=> b!1647452 (= e!1056499 (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))

(declare-fun b!1647453 () Bool)

(assert (=> b!1647453 (= e!1056499 (Cons!18158 (h!23559 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (++!4894 (t!150451 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))))

(declare-fun b!1647454 () Bool)

(declare-fun res!738155 () Bool)

(assert (=> b!1647454 (=> (not res!738155) (not e!1056500))))

(assert (=> b!1647454 (= res!738155 (= (size!14466 lt!609530) (+ (size!14466 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (size!14466 (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))))))

(declare-fun b!1647455 () Bool)

(assert (=> b!1647455 (= e!1056500 (or (not (= (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))) Nil!18158)) (= lt!609530 (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))))))

(assert (= (and d!496644 c!267984) b!1647452))

(assert (= (and d!496644 (not c!267984)) b!1647453))

(assert (= (and d!496644 res!738156) b!1647454))

(assert (= (and b!1647454 res!738155) b!1647455))

(declare-fun m!1994255 () Bool)

(assert (=> d!496644 m!1994255))

(assert (=> d!496644 m!1990805))

(declare-fun m!1994257 () Bool)

(assert (=> d!496644 m!1994257))

(assert (=> d!496644 m!1990807))

(declare-fun m!1994259 () Bool)

(assert (=> d!496644 m!1994259))

(assert (=> b!1647453 m!1990807))

(declare-fun m!1994261 () Bool)

(assert (=> b!1647453 m!1994261))

(declare-fun m!1994263 () Bool)

(assert (=> b!1647454 m!1994263))

(assert (=> b!1647454 m!1990805))

(declare-fun m!1994265 () Bool)

(assert (=> b!1647454 m!1994265))

(assert (=> b!1647454 m!1990807))

(declare-fun m!1994267 () Bool)

(assert (=> b!1647454 m!1994267))

(assert (=> b!1645993 d!496644))

(declare-fun d!496646 () Bool)

(assert (=> d!496646 (= (list!7205 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))) (list!7210 (c!267635 (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))))

(declare-fun bs!396255 () Bool)

(assert (= bs!396255 d!496646))

(declare-fun m!1994269 () Bool)

(assert (=> bs!396255 m!1994269))

(assert (=> b!1645993 d!496646))

(declare-fun d!496648 () Bool)

(declare-fun lt!609531 () BalanceConc!12052)

(assert (=> d!496648 (= (list!7205 lt!609531) (originalCharacters!4017 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))

(assert (=> d!496648 (= lt!609531 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (value!100958 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))))

(assert (=> d!496648 (= (charsOf!1852 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))) lt!609531)))

(declare-fun b_lambda!51779 () Bool)

(assert (=> (not b_lambda!51779) (not d!496648)))

(declare-fun t!150615 () Bool)

(declare-fun tb!94363 () Bool)

(assert (=> (and b!1645821 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) t!150615) tb!94363))

(declare-fun b!1647456 () Bool)

(declare-fun e!1056501 () Bool)

(declare-fun tp!477076 () Bool)

(assert (=> b!1647456 (= e!1056501 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (value!100958 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) tp!477076))))

(declare-fun result!113972 () Bool)

(assert (=> tb!94363 (= result!113972 (and (inv!23524 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (value!100958 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) e!1056501))))

(assert (= tb!94363 b!1647456))

(declare-fun m!1994271 () Bool)

(assert (=> b!1647456 m!1994271))

(declare-fun m!1994273 () Bool)

(assert (=> tb!94363 m!1994273))

(assert (=> d!496648 t!150615))

(declare-fun b_and!116965 () Bool)

(assert (= b_and!116957 (and (=> t!150615 result!113972) b_and!116965)))

(declare-fun t!150617 () Bool)

(declare-fun tb!94365 () Bool)

(assert (=> (and b!1645826 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) t!150617) tb!94365))

(declare-fun result!113974 () Bool)

(assert (= result!113974 result!113972))

(assert (=> d!496648 t!150617))

(declare-fun b_and!116967 () Bool)

(assert (= b_and!116959 (and (=> t!150617 result!113974) b_and!116967)))

(declare-fun t!150619 () Bool)

(declare-fun tb!94367 () Bool)

(assert (=> (and b!1646231 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) t!150619) tb!94367))

(declare-fun result!113976 () Bool)

(assert (= result!113976 result!113972))

(assert (=> d!496648 t!150619))

(declare-fun b_and!116969 () Bool)

(assert (= b_and!116961 (and (=> t!150619 result!113976) b_and!116969)))

(declare-fun tb!94369 () Bool)

(declare-fun t!150621 () Bool)

(assert (=> (and b!1646242 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) t!150621) tb!94369))

(declare-fun result!113978 () Bool)

(assert (= result!113978 result!113972))

(assert (=> d!496648 t!150621))

(declare-fun b_and!116971 () Bool)

(assert (= b_and!116963 (and (=> t!150621 result!113978) b_and!116971)))

(declare-fun m!1994275 () Bool)

(assert (=> d!496648 m!1994275))

(declare-fun m!1994277 () Bool)

(assert (=> d!496648 m!1994277))

(assert (=> b!1645993 d!496648))

(declare-fun d!496650 () Bool)

(declare-fun c!267985 () Bool)

(assert (=> d!496650 (= c!267985 ((_ is Cons!18159) (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))

(declare-fun e!1056502 () List!18228)

(assert (=> d!496650 (= (printList!945 thiss!17113 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))) e!1056502)))

(declare-fun b!1647457 () Bool)

(assert (=> b!1647457 (= e!1056502 (++!4894 (list!7205 (charsOf!1852 (h!23560 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))))) (printList!945 thiss!17113 (t!150452 (t!150452 (Cons!18159 (h!23560 tokens!457) Nil!18159))))))))

(declare-fun b!1647458 () Bool)

(assert (=> b!1647458 (= e!1056502 Nil!18158)))

(assert (= (and d!496650 c!267985) b!1647457))

(assert (= (and d!496650 (not c!267985)) b!1647458))

(declare-fun m!1994279 () Bool)

(assert (=> b!1647457 m!1994279))

(assert (=> b!1647457 m!1994279))

(declare-fun m!1994281 () Bool)

(assert (=> b!1647457 m!1994281))

(declare-fun m!1994283 () Bool)

(assert (=> b!1647457 m!1994283))

(assert (=> b!1647457 m!1994281))

(assert (=> b!1647457 m!1994283))

(declare-fun m!1994285 () Bool)

(assert (=> b!1647457 m!1994285))

(assert (=> b!1645993 d!496650))

(declare-fun bs!396256 () Bool)

(declare-fun d!496652 () Bool)

(assert (= bs!396256 (and d!496652 d!495850)))

(declare-fun lambda!67622 () Int)

(assert (=> bs!396256 (= lambda!67622 lambda!67586)))

(declare-fun b!1647463 () Bool)

(declare-fun e!1056507 () Bool)

(assert (=> b!1647463 (= e!1056507 true)))

(declare-fun b!1647462 () Bool)

(declare-fun e!1056506 () Bool)

(assert (=> b!1647462 (= e!1056506 e!1056507)))

(declare-fun b!1647461 () Bool)

(declare-fun e!1056505 () Bool)

(assert (=> b!1647461 (= e!1056505 e!1056506)))

(assert (=> d!496652 e!1056505))

(assert (= b!1647462 b!1647463))

(assert (= b!1647461 b!1647462))

(assert (= (and d!496652 ((_ is Cons!18160) rules!1846)) b!1647461))

(assert (=> b!1647463 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8124 order!10817 lambda!67622))))

(assert (=> b!1647463 (< (dynLambda!8125 order!10819 (toChars!4505 (transformation!3203 (h!23561 rules!1846)))) (dynLambda!8124 order!10817 lambda!67622))))

(assert (=> d!496652 true))

(declare-fun lt!609532 () Bool)

(assert (=> d!496652 (= lt!609532 (forall!4136 (t!150452 tokens!457) lambda!67622))))

(declare-fun e!1056504 () Bool)

(assert (=> d!496652 (= lt!609532 e!1056504)))

(declare-fun res!738157 () Bool)

(assert (=> d!496652 (=> res!738157 e!1056504)))

(assert (=> d!496652 (= res!738157 (not ((_ is Cons!18159) (t!150452 tokens!457))))))

(assert (=> d!496652 (not (isEmpty!11181 rules!1846))))

(assert (=> d!496652 (= (rulesProduceEachTokenIndividuallyList!1034 thiss!17113 rules!1846 (t!150452 tokens!457)) lt!609532)))

(declare-fun b!1647459 () Bool)

(declare-fun e!1056503 () Bool)

(assert (=> b!1647459 (= e!1056504 e!1056503)))

(declare-fun res!738158 () Bool)

(assert (=> b!1647459 (=> (not res!738158) (not e!1056503))))

(assert (=> b!1647459 (= res!738158 (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 (t!150452 tokens!457))))))

(declare-fun b!1647460 () Bool)

(assert (=> b!1647460 (= e!1056503 (rulesProduceEachTokenIndividuallyList!1034 thiss!17113 rules!1846 (t!150452 (t!150452 tokens!457))))))

(assert (= (and d!496652 (not res!738157)) b!1647459))

(assert (= (and b!1647459 res!738158) b!1647460))

(declare-fun m!1994287 () Bool)

(assert (=> d!496652 m!1994287))

(assert (=> d!496652 m!1990349))

(assert (=> b!1647459 m!1990497))

(declare-fun m!1994289 () Bool)

(assert (=> b!1647460 m!1994289))

(assert (=> b!1646182 d!496652))

(declare-fun b!1647466 () Bool)

(declare-fun e!1056510 () Bool)

(assert (=> b!1647466 (= e!1056510 true)))

(declare-fun b!1647465 () Bool)

(declare-fun e!1056509 () Bool)

(assert (=> b!1647465 (= e!1056509 e!1056510)))

(declare-fun b!1647464 () Bool)

(declare-fun e!1056508 () Bool)

(assert (=> b!1647464 (= e!1056508 e!1056509)))

(assert (=> b!1646191 e!1056508))

(assert (= b!1647465 b!1647466))

(assert (= b!1647464 b!1647465))

(assert (= (and b!1646191 ((_ is Cons!18160) (t!150453 rules!1846))) b!1647464))

(assert (=> b!1647466 (< (dynLambda!8123 order!10815 (toValue!4646 (transformation!3203 (h!23561 (t!150453 rules!1846))))) (dynLambda!8124 order!10817 lambda!67586))))

(assert (=> b!1647466 (< (dynLambda!8125 order!10819 (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846))))) (dynLambda!8124 order!10817 lambda!67586))))

(declare-fun b!1647470 () Bool)

(declare-fun b_free!44727 () Bool)

(declare-fun b_next!45431 () Bool)

(assert (=> b!1647470 (= b_free!44727 (not b_next!45431))))

(declare-fun t!150623 () Bool)

(declare-fun tb!94371 () Bool)

(assert (=> (and b!1647470 (= (toValue!4646 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150623) tb!94371))

(declare-fun result!113980 () Bool)

(assert (= result!113980 result!113898))

(assert (=> d!496224 t!150623))

(declare-fun tp!477081 () Bool)

(declare-fun b_and!116973 () Bool)

(assert (=> b!1647470 (= tp!477081 (and (=> t!150623 result!113980) b_and!116973))))

(declare-fun b_free!44729 () Bool)

(declare-fun b_next!45433 () Bool)

(assert (=> b!1647470 (= b_free!44729 (not b_next!45433))))

(declare-fun t!150625 () Bool)

(declare-fun tb!94373 () Bool)

(assert (=> (and b!1647470 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150625) tb!94373))

(declare-fun result!113982 () Bool)

(assert (= result!113982 result!113882))

(assert (=> d!496074 t!150625))

(declare-fun t!150627 () Bool)

(declare-fun tb!94375 () Bool)

(assert (=> (and b!1647470 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0))))) t!150627) tb!94375))

(declare-fun result!113984 () Bool)

(assert (= result!113984 result!113890))

(assert (=> d!496106 t!150627))

(declare-fun t!150629 () Bool)

(declare-fun tb!94377 () Bool)

(assert (=> (and b!1647470 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))))) t!150629) tb!94377))

(declare-fun result!113986 () Bool)

(assert (= result!113986 result!113964))

(assert (=> d!496618 t!150629))

(declare-fun t!150631 () Bool)

(declare-fun tb!94379 () Bool)

(assert (=> (and b!1647470 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) t!150631) tb!94379))

(declare-fun result!113988 () Bool)

(assert (= result!113988 result!113866))

(assert (=> b!1646429 t!150631))

(declare-fun t!150633 () Bool)

(declare-fun tb!94381 () Bool)

(assert (=> (and b!1647470 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) t!150633) tb!94381))

(declare-fun result!113990 () Bool)

(assert (= result!113990 result!113814))

(assert (=> b!1646002 t!150633))

(declare-fun t!150635 () Bool)

(declare-fun tb!94383 () Bool)

(assert (=> (and b!1647470 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) t!150635) tb!94383))

(declare-fun result!113992 () Bool)

(assert (= result!113992 result!113972))

(assert (=> d!496648 t!150635))

(assert (=> d!495900 t!150633))

(assert (=> d!496206 t!150631))

(declare-fun b_and!116975 () Bool)

(declare-fun tp!477078 () Bool)

(assert (=> b!1647470 (= tp!477078 (and (=> t!150627 result!113984) (=> t!150625 result!113982) (=> t!150635 result!113992) (=> t!150631 result!113988) (=> t!150633 result!113990) (=> t!150629 result!113986) b_and!116975))))

(declare-fun e!1056514 () Bool)

(declare-fun tp!477079 () Bool)

(declare-fun e!1056512 () Bool)

(declare-fun b!1647467 () Bool)

(assert (=> b!1647467 (= e!1056512 (and (inv!23519 (h!23560 (t!150452 (t!150452 tokens!457)))) e!1056514 tp!477079))))

(assert (=> b!1646228 (= tp!476952 e!1056512)))

(declare-fun e!1056513 () Bool)

(assert (=> b!1647470 (= e!1056513 (and tp!477081 tp!477078))))

(declare-fun b!1647469 () Bool)

(declare-fun e!1056516 () Bool)

(declare-fun tp!477080 () Bool)

(assert (=> b!1647469 (= e!1056516 (and tp!477080 (inv!23516 (tag!3483 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (inv!23520 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) e!1056513))))

(declare-fun tp!477077 () Bool)

(declare-fun b!1647468 () Bool)

(assert (=> b!1647468 (= e!1056514 (and (inv!21 (value!100958 (h!23560 (t!150452 (t!150452 tokens!457))))) e!1056516 tp!477077))))

(assert (= b!1647469 b!1647470))

(assert (= b!1647468 b!1647469))

(assert (= b!1647467 b!1647468))

(assert (= (and b!1646228 ((_ is Cons!18159) (t!150452 (t!150452 tokens!457)))) b!1647467))

(declare-fun m!1994291 () Bool)

(assert (=> b!1647467 m!1994291))

(declare-fun m!1994293 () Bool)

(assert (=> b!1647469 m!1994293))

(declare-fun m!1994295 () Bool)

(assert (=> b!1647469 m!1994295))

(declare-fun m!1994297 () Bool)

(assert (=> b!1647468 m!1994297))

(declare-fun b!1647471 () Bool)

(declare-fun e!1056517 () Bool)

(declare-fun tp!477082 () Bool)

(assert (=> b!1647471 (= e!1056517 (and tp_is_empty!7349 tp!477082))))

(assert (=> b!1646229 (= tp!476950 e!1056517)))

(assert (= (and b!1646229 ((_ is Cons!18158) (originalCharacters!4017 (h!23560 (t!150452 tokens!457))))) b!1647471))

(declare-fun b!1647472 () Bool)

(declare-fun e!1056518 () Bool)

(assert (=> b!1647472 (= e!1056518 tp_is_empty!7349)))

(declare-fun b!1647475 () Bool)

(declare-fun tp!477086 () Bool)

(declare-fun tp!477087 () Bool)

(assert (=> b!1647475 (= e!1056518 (and tp!477086 tp!477087))))

(assert (=> b!1646255 (= tp!476978 e!1056518)))

(declare-fun b!1647473 () Bool)

(declare-fun tp!477085 () Bool)

(declare-fun tp!477083 () Bool)

(assert (=> b!1647473 (= e!1056518 (and tp!477085 tp!477083))))

(declare-fun b!1647474 () Bool)

(declare-fun tp!477084 () Bool)

(assert (=> b!1647474 (= e!1056518 tp!477084)))

(assert (= (and b!1646255 ((_ is ElementMatch!4531) (reg!4860 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647472))

(assert (= (and b!1646255 ((_ is Concat!7825) (reg!4860 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647473))

(assert (= (and b!1646255 ((_ is Star!4531) (reg!4860 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647474))

(assert (= (and b!1646255 ((_ is Union!4531) (reg!4860 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647475))

(declare-fun b!1647476 () Bool)

(declare-fun e!1056519 () Bool)

(assert (=> b!1647476 (= e!1056519 tp_is_empty!7349)))

(declare-fun b!1647479 () Bool)

(declare-fun tp!477091 () Bool)

(declare-fun tp!477092 () Bool)

(assert (=> b!1647479 (= e!1056519 (and tp!477091 tp!477092))))

(assert (=> b!1646260 (= tp!476985 e!1056519)))

(declare-fun b!1647477 () Bool)

(declare-fun tp!477090 () Bool)

(declare-fun tp!477088 () Bool)

(assert (=> b!1647477 (= e!1056519 (and tp!477090 tp!477088))))

(declare-fun b!1647478 () Bool)

(declare-fun tp!477089 () Bool)

(assert (=> b!1647478 (= e!1056519 tp!477089)))

(assert (= (and b!1646260 ((_ is ElementMatch!4531) (regOne!9575 (regex!3203 (h!23561 rules!1846))))) b!1647476))

(assert (= (and b!1646260 ((_ is Concat!7825) (regOne!9575 (regex!3203 (h!23561 rules!1846))))) b!1647477))

(assert (= (and b!1646260 ((_ is Star!4531) (regOne!9575 (regex!3203 (h!23561 rules!1846))))) b!1647478))

(assert (= (and b!1646260 ((_ is Union!4531) (regOne!9575 (regex!3203 (h!23561 rules!1846))))) b!1647479))

(declare-fun b!1647480 () Bool)

(declare-fun e!1056520 () Bool)

(assert (=> b!1647480 (= e!1056520 tp_is_empty!7349)))

(declare-fun b!1647483 () Bool)

(declare-fun tp!477096 () Bool)

(declare-fun tp!477097 () Bool)

(assert (=> b!1647483 (= e!1056520 (and tp!477096 tp!477097))))

(assert (=> b!1646260 (= tp!476986 e!1056520)))

(declare-fun b!1647481 () Bool)

(declare-fun tp!477095 () Bool)

(declare-fun tp!477093 () Bool)

(assert (=> b!1647481 (= e!1056520 (and tp!477095 tp!477093))))

(declare-fun b!1647482 () Bool)

(declare-fun tp!477094 () Bool)

(assert (=> b!1647482 (= e!1056520 tp!477094)))

(assert (= (and b!1646260 ((_ is ElementMatch!4531) (regTwo!9575 (regex!3203 (h!23561 rules!1846))))) b!1647480))

(assert (= (and b!1646260 ((_ is Concat!7825) (regTwo!9575 (regex!3203 (h!23561 rules!1846))))) b!1647481))

(assert (= (and b!1646260 ((_ is Star!4531) (regTwo!9575 (regex!3203 (h!23561 rules!1846))))) b!1647482))

(assert (= (and b!1646260 ((_ is Union!4531) (regTwo!9575 (regex!3203 (h!23561 rules!1846))))) b!1647483))

(declare-fun b!1647484 () Bool)

(declare-fun e!1056521 () Bool)

(assert (=> b!1647484 (= e!1056521 tp_is_empty!7349)))

(declare-fun b!1647487 () Bool)

(declare-fun tp!477101 () Bool)

(declare-fun tp!477102 () Bool)

(assert (=> b!1647487 (= e!1056521 (and tp!477101 tp!477102))))

(assert (=> b!1646259 (= tp!476983 e!1056521)))

(declare-fun b!1647485 () Bool)

(declare-fun tp!477100 () Bool)

(declare-fun tp!477098 () Bool)

(assert (=> b!1647485 (= e!1056521 (and tp!477100 tp!477098))))

(declare-fun b!1647486 () Bool)

(declare-fun tp!477099 () Bool)

(assert (=> b!1647486 (= e!1056521 tp!477099)))

(assert (= (and b!1646259 ((_ is ElementMatch!4531) (reg!4860 (regex!3203 (h!23561 rules!1846))))) b!1647484))

(assert (= (and b!1646259 ((_ is Concat!7825) (reg!4860 (regex!3203 (h!23561 rules!1846))))) b!1647485))

(assert (= (and b!1646259 ((_ is Star!4531) (reg!4860 (regex!3203 (h!23561 rules!1846))))) b!1647486))

(assert (= (and b!1646259 ((_ is Union!4531) (reg!4860 (regex!3203 (h!23561 rules!1846))))) b!1647487))

(declare-fun b!1647488 () Bool)

(declare-fun e!1056522 () Bool)

(assert (=> b!1647488 (= e!1056522 tp_is_empty!7349)))

(declare-fun b!1647491 () Bool)

(declare-fun tp!477106 () Bool)

(declare-fun tp!477107 () Bool)

(assert (=> b!1647491 (= e!1056522 (and tp!477106 tp!477107))))

(assert (=> b!1646256 (= tp!476980 e!1056522)))

(declare-fun b!1647489 () Bool)

(declare-fun tp!477105 () Bool)

(declare-fun tp!477103 () Bool)

(assert (=> b!1647489 (= e!1056522 (and tp!477105 tp!477103))))

(declare-fun b!1647490 () Bool)

(declare-fun tp!477104 () Bool)

(assert (=> b!1647490 (= e!1056522 tp!477104)))

(assert (= (and b!1646256 ((_ is ElementMatch!4531) (regOne!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647488))

(assert (= (and b!1646256 ((_ is Concat!7825) (regOne!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647489))

(assert (= (and b!1646256 ((_ is Star!4531) (regOne!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647490))

(assert (= (and b!1646256 ((_ is Union!4531) (regOne!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647491))

(declare-fun b!1647492 () Bool)

(declare-fun e!1056523 () Bool)

(assert (=> b!1647492 (= e!1056523 tp_is_empty!7349)))

(declare-fun b!1647495 () Bool)

(declare-fun tp!477111 () Bool)

(declare-fun tp!477112 () Bool)

(assert (=> b!1647495 (= e!1056523 (and tp!477111 tp!477112))))

(assert (=> b!1646256 (= tp!476981 e!1056523)))

(declare-fun b!1647493 () Bool)

(declare-fun tp!477110 () Bool)

(declare-fun tp!477108 () Bool)

(assert (=> b!1647493 (= e!1056523 (and tp!477110 tp!477108))))

(declare-fun b!1647494 () Bool)

(declare-fun tp!477109 () Bool)

(assert (=> b!1647494 (= e!1056523 tp!477109)))

(assert (= (and b!1646256 ((_ is ElementMatch!4531) (regTwo!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647492))

(assert (= (and b!1646256 ((_ is Concat!7825) (regTwo!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647493))

(assert (= (and b!1646256 ((_ is Star!4531) (regTwo!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647494))

(assert (= (and b!1646256 ((_ is Union!4531) (regTwo!9575 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647495))

(declare-fun b!1647496 () Bool)

(declare-fun e!1056524 () Bool)

(assert (=> b!1647496 (= e!1056524 tp_is_empty!7349)))

(declare-fun b!1647499 () Bool)

(declare-fun tp!477116 () Bool)

(declare-fun tp!477117 () Bool)

(assert (=> b!1647499 (= e!1056524 (and tp!477116 tp!477117))))

(assert (=> b!1646254 (= tp!476979 e!1056524)))

(declare-fun b!1647497 () Bool)

(declare-fun tp!477115 () Bool)

(declare-fun tp!477113 () Bool)

(assert (=> b!1647497 (= e!1056524 (and tp!477115 tp!477113))))

(declare-fun b!1647498 () Bool)

(declare-fun tp!477114 () Bool)

(assert (=> b!1647498 (= e!1056524 tp!477114)))

(assert (= (and b!1646254 ((_ is ElementMatch!4531) (regOne!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647496))

(assert (= (and b!1646254 ((_ is Concat!7825) (regOne!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647497))

(assert (= (and b!1646254 ((_ is Star!4531) (regOne!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647498))

(assert (= (and b!1646254 ((_ is Union!4531) (regOne!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647499))

(declare-fun b!1647500 () Bool)

(declare-fun e!1056525 () Bool)

(assert (=> b!1647500 (= e!1056525 tp_is_empty!7349)))

(declare-fun b!1647503 () Bool)

(declare-fun tp!477121 () Bool)

(declare-fun tp!477122 () Bool)

(assert (=> b!1647503 (= e!1056525 (and tp!477121 tp!477122))))

(assert (=> b!1646254 (= tp!476977 e!1056525)))

(declare-fun b!1647501 () Bool)

(declare-fun tp!477120 () Bool)

(declare-fun tp!477118 () Bool)

(assert (=> b!1647501 (= e!1056525 (and tp!477120 tp!477118))))

(declare-fun b!1647502 () Bool)

(declare-fun tp!477119 () Bool)

(assert (=> b!1647502 (= e!1056525 tp!477119)))

(assert (= (and b!1646254 ((_ is ElementMatch!4531) (regTwo!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647500))

(assert (= (and b!1646254 ((_ is Concat!7825) (regTwo!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647501))

(assert (= (and b!1646254 ((_ is Star!4531) (regTwo!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647502))

(assert (= (and b!1646254 ((_ is Union!4531) (regTwo!9574 (regex!3203 (rule!5057 (h!23560 tokens!457)))))) b!1647503))

(declare-fun b!1647504 () Bool)

(declare-fun e!1056526 () Bool)

(assert (=> b!1647504 (= e!1056526 tp_is_empty!7349)))

(declare-fun b!1647507 () Bool)

(declare-fun tp!477126 () Bool)

(declare-fun tp!477127 () Bool)

(assert (=> b!1647507 (= e!1056526 (and tp!477126 tp!477127))))

(assert (=> b!1646258 (= tp!476984 e!1056526)))

(declare-fun b!1647505 () Bool)

(declare-fun tp!477125 () Bool)

(declare-fun tp!477123 () Bool)

(assert (=> b!1647505 (= e!1056526 (and tp!477125 tp!477123))))

(declare-fun b!1647506 () Bool)

(declare-fun tp!477124 () Bool)

(assert (=> b!1647506 (= e!1056526 tp!477124)))

(assert (= (and b!1646258 ((_ is ElementMatch!4531) (regOne!9574 (regex!3203 (h!23561 rules!1846))))) b!1647504))

(assert (= (and b!1646258 ((_ is Concat!7825) (regOne!9574 (regex!3203 (h!23561 rules!1846))))) b!1647505))

(assert (= (and b!1646258 ((_ is Star!4531) (regOne!9574 (regex!3203 (h!23561 rules!1846))))) b!1647506))

(assert (= (and b!1646258 ((_ is Union!4531) (regOne!9574 (regex!3203 (h!23561 rules!1846))))) b!1647507))

(declare-fun b!1647508 () Bool)

(declare-fun e!1056527 () Bool)

(assert (=> b!1647508 (= e!1056527 tp_is_empty!7349)))

(declare-fun b!1647511 () Bool)

(declare-fun tp!477131 () Bool)

(declare-fun tp!477132 () Bool)

(assert (=> b!1647511 (= e!1056527 (and tp!477131 tp!477132))))

(assert (=> b!1646258 (= tp!476982 e!1056527)))

(declare-fun b!1647509 () Bool)

(declare-fun tp!477130 () Bool)

(declare-fun tp!477128 () Bool)

(assert (=> b!1647509 (= e!1056527 (and tp!477130 tp!477128))))

(declare-fun b!1647510 () Bool)

(declare-fun tp!477129 () Bool)

(assert (=> b!1647510 (= e!1056527 tp!477129)))

(assert (= (and b!1646258 ((_ is ElementMatch!4531) (regTwo!9574 (regex!3203 (h!23561 rules!1846))))) b!1647508))

(assert (= (and b!1646258 ((_ is Concat!7825) (regTwo!9574 (regex!3203 (h!23561 rules!1846))))) b!1647509))

(assert (= (and b!1646258 ((_ is Star!4531) (regTwo!9574 (regex!3203 (h!23561 rules!1846))))) b!1647510))

(assert (= (and b!1646258 ((_ is Union!4531) (regTwo!9574 (regex!3203 (h!23561 rules!1846))))) b!1647511))

(declare-fun b!1647512 () Bool)

(declare-fun e!1056528 () Bool)

(declare-fun tp!477133 () Bool)

(assert (=> b!1647512 (= e!1056528 (and tp_is_empty!7349 tp!477133))))

(assert (=> b!1646217 (= tp!476939 e!1056528)))

(assert (= (and b!1646217 ((_ is Cons!18158) (t!150451 (originalCharacters!4017 (h!23560 tokens!457))))) b!1647512))

(declare-fun tp!477142 () Bool)

(declare-fun tp!477141 () Bool)

(declare-fun b!1647521 () Bool)

(declare-fun e!1056533 () Bool)

(assert (=> b!1647521 (= e!1056533 (and (inv!23523 (left!14557 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))))) tp!477142 (inv!23523 (right!14887 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))))) tp!477141))))

(declare-fun b!1647523 () Bool)

(declare-fun e!1056534 () Bool)

(declare-fun tp!477140 () Bool)

(assert (=> b!1647523 (= e!1056534 tp!477140)))

(declare-fun b!1647522 () Bool)

(declare-fun inv!23530 (IArray!12113) Bool)

(assert (=> b!1647522 (= e!1056533 (and (inv!23530 (xs!8890 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))))) e!1056534))))

(assert (=> b!1646008 (= tp!476883 (and (inv!23523 (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457))))) e!1056533))))

(assert (= (and b!1646008 ((_ is Node!6054) (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))))) b!1647521))

(assert (= b!1647522 b!1647523))

(assert (= (and b!1646008 ((_ is Leaf!8876) (c!267635 (dynLambda!8122 (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (value!100958 (h!23560 tokens!457)))))) b!1647522))

(declare-fun m!1994299 () Bool)

(assert (=> b!1647521 m!1994299))

(declare-fun m!1994301 () Bool)

(assert (=> b!1647521 m!1994301))

(declare-fun m!1994303 () Bool)

(assert (=> b!1647522 m!1994303))

(assert (=> b!1646008 m!1990817))

(declare-fun b!1647526 () Bool)

(declare-fun b_free!44731 () Bool)

(declare-fun b_next!45435 () Bool)

(assert (=> b!1647526 (= b_free!44731 (not b_next!45435))))

(declare-fun tb!94385 () Bool)

(declare-fun t!150637 () Bool)

(assert (=> (and b!1647526 (= (toValue!4646 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toValue!4646 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150637) tb!94385))

(declare-fun result!113996 () Bool)

(assert (= result!113996 result!113898))

(assert (=> d!496224 t!150637))

(declare-fun b_and!116977 () Bool)

(declare-fun tp!477144 () Bool)

(assert (=> b!1647526 (= tp!477144 (and (=> t!150637 result!113996) b_and!116977))))

(declare-fun b_free!44733 () Bool)

(declare-fun b_next!45437 () Bool)

(assert (=> b!1647526 (= b_free!44733 (not b_next!45437))))

(declare-fun t!150639 () Bool)

(declare-fun tb!94387 () Bool)

(assert (=> (and b!1647526 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (_1!10314 (get!5281 lt!608044)))))) t!150639) tb!94387))

(declare-fun result!113998 () Bool)

(assert (= result!113998 result!113882))

(assert (=> d!496074 t!150639))

(declare-fun tb!94389 () Bool)

(declare-fun t!150641 () Bool)

(assert (=> (and b!1647526 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (apply!4757 lt!607811 0))))) t!150641) tb!94389))

(declare-fun result!114000 () Bool)

(assert (= result!114000 result!113890))

(assert (=> d!496106 t!150641))

(declare-fun t!150643 () Bool)

(declare-fun tb!94391 () Bool)

(assert (=> (and b!1647526 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457))))))) t!150643) tb!94391))

(declare-fun result!114002 () Bool)

(assert (= result!114002 result!113964))

(assert (=> d!496618 t!150643))

(declare-fun tb!94393 () Bool)

(declare-fun t!150645 () Bool)

(assert (=> (and b!1647526 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) t!150645) tb!94393))

(declare-fun result!114004 () Bool)

(assert (= result!114004 result!113866))

(assert (=> b!1646429 t!150645))

(declare-fun t!150647 () Bool)

(declare-fun tb!94395 () Bool)

(assert (=> (and b!1647526 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457))))) t!150647) tb!94395))

(declare-fun result!114006 () Bool)

(assert (= result!114006 result!113814))

(assert (=> b!1646002 t!150647))

(declare-fun t!150649 () Bool)

(declare-fun tb!94397 () Bool)

(assert (=> (and b!1647526 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (Cons!18159 (h!23560 tokens!457) Nil!18159)))))) t!150649) tb!94397))

(declare-fun result!114008 () Bool)

(assert (= result!114008 result!113972))

(assert (=> d!496648 t!150649))

(assert (=> d!495900 t!150647))

(assert (=> d!496206 t!150645))

(declare-fun tp!477146 () Bool)

(declare-fun b_and!116979 () Bool)

(assert (=> b!1647526 (= tp!477146 (and (=> t!150639 result!113998) (=> t!150645 result!114004) (=> t!150649 result!114008) (=> t!150643 result!114002) (=> t!150647 result!114006) (=> t!150641 result!114000) b_and!116979))))

(declare-fun e!1056536 () Bool)

(assert (=> b!1647526 (= e!1056536 (and tp!477144 tp!477146))))

(declare-fun e!1056537 () Bool)

(declare-fun tp!477143 () Bool)

(declare-fun b!1647525 () Bool)

(assert (=> b!1647525 (= e!1056537 (and tp!477143 (inv!23516 (tag!3483 (h!23561 (t!150453 (t!150453 rules!1846))))) (inv!23520 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) e!1056536))))

(declare-fun b!1647524 () Bool)

(declare-fun e!1056538 () Bool)

(declare-fun tp!477145 () Bool)

(assert (=> b!1647524 (= e!1056538 (and e!1056537 tp!477145))))

(assert (=> b!1646240 (= tp!476965 e!1056538)))

(assert (= b!1647525 b!1647526))

(assert (= b!1647524 b!1647525))

(assert (= (and b!1646240 ((_ is Cons!18160) (t!150453 (t!150453 rules!1846)))) b!1647524))

(declare-fun m!1994305 () Bool)

(assert (=> b!1647525 m!1994305))

(declare-fun m!1994307 () Bool)

(assert (=> b!1647525 m!1994307))

(declare-fun b!1647527 () Bool)

(declare-fun e!1056539 () Bool)

(assert (=> b!1647527 (= e!1056539 tp_is_empty!7349)))

(declare-fun b!1647530 () Bool)

(declare-fun tp!477150 () Bool)

(declare-fun tp!477151 () Bool)

(assert (=> b!1647530 (= e!1056539 (and tp!477150 tp!477151))))

(assert (=> b!1646230 (= tp!476953 e!1056539)))

(declare-fun b!1647528 () Bool)

(declare-fun tp!477149 () Bool)

(declare-fun tp!477147 () Bool)

(assert (=> b!1647528 (= e!1056539 (and tp!477149 tp!477147))))

(declare-fun b!1647529 () Bool)

(declare-fun tp!477148 () Bool)

(assert (=> b!1647529 (= e!1056539 tp!477148)))

(assert (= (and b!1646230 ((_ is ElementMatch!4531) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) b!1647527))

(assert (= (and b!1646230 ((_ is Concat!7825) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) b!1647528))

(assert (= (and b!1646230 ((_ is Star!4531) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) b!1647529))

(assert (= (and b!1646230 ((_ is Union!4531) (regex!3203 (rule!5057 (h!23560 (t!150452 tokens!457)))))) b!1647530))

(declare-fun b!1647531 () Bool)

(declare-fun e!1056540 () Bool)

(assert (=> b!1647531 (= e!1056540 tp_is_empty!7349)))

(declare-fun b!1647534 () Bool)

(declare-fun tp!477155 () Bool)

(declare-fun tp!477156 () Bool)

(assert (=> b!1647534 (= e!1056540 (and tp!477155 tp!477156))))

(assert (=> b!1646241 (= tp!476963 e!1056540)))

(declare-fun b!1647532 () Bool)

(declare-fun tp!477154 () Bool)

(declare-fun tp!477152 () Bool)

(assert (=> b!1647532 (= e!1056540 (and tp!477154 tp!477152))))

(declare-fun b!1647533 () Bool)

(declare-fun tp!477153 () Bool)

(assert (=> b!1647533 (= e!1056540 tp!477153)))

(assert (= (and b!1646241 ((_ is ElementMatch!4531) (regex!3203 (h!23561 (t!150453 rules!1846))))) b!1647531))

(assert (= (and b!1646241 ((_ is Concat!7825) (regex!3203 (h!23561 (t!150453 rules!1846))))) b!1647532))

(assert (= (and b!1646241 ((_ is Star!4531) (regex!3203 (h!23561 (t!150453 rules!1846))))) b!1647533))

(assert (= (and b!1646241 ((_ is Union!4531) (regex!3203 (h!23561 (t!150453 rules!1846))))) b!1647534))

(declare-fun b_lambda!51781 () Bool)

(assert (= b_lambda!51777 (or (and b!1647526 b_free!44733 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))))) (and b!1647470 b_free!44729) (and b!1645826 b_free!44701 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))))) (and b!1646242 b_free!44717 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))))) (and b!1645821 b_free!44697 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))))) (and b!1646231 b_free!44713 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))))) b_lambda!51781)))

(declare-fun b_lambda!51783 () Bool)

(assert (= b_lambda!51757 (or (and b!1645826 b_free!44701 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1646242 b_free!44717 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1647470 b_free!44729 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1646231 b_free!44713) (and b!1647526 b_free!44733 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1645821 b_free!44697 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) b_lambda!51783)))

(declare-fun b_lambda!51785 () Bool)

(assert (= b_lambda!51747 (or (and b!1645826 b_free!44701 (= (toChars!4505 (transformation!3203 (h!23561 rules!1846))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1646242 b_free!44717 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 rules!1846)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1647470 b_free!44729 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 (t!150452 tokens!457)))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1646231 b_free!44713) (and b!1647526 b_free!44733 (= (toChars!4505 (transformation!3203 (h!23561 (t!150453 (t!150453 rules!1846))))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) (and b!1645821 b_free!44697 (= (toChars!4505 (transformation!3203 (rule!5057 (h!23560 tokens!457)))) (toChars!4505 (transformation!3203 (rule!5057 (h!23560 (t!150452 tokens!457))))))) b_lambda!51785)))

(declare-fun b_lambda!51787 () Bool)

(assert (= b_lambda!51755 (or d!495850 b_lambda!51787)))

(declare-fun bs!396257 () Bool)

(declare-fun d!496654 () Bool)

(assert (= bs!396257 (and d!496654 d!495850)))

(assert (=> bs!396257 (= (dynLambda!8129 lambda!67586 (h!23560 tokens!457)) (rulesProduceIndividualToken!1480 thiss!17113 rules!1846 (h!23560 tokens!457)))))

(assert (=> bs!396257 m!1990319))

(assert (=> b!1646749 d!496654))

(check-sat (not b!1646825) (not b!1646724) (not d!496038) (not d!496626) (not b!1646859) (not d!496120) (not b!1646797) (not b!1647501) (not b!1646730) (not b_lambda!51787) (not b!1646719) (not b_lambda!51737) (not b!1647447) (not b!1646796) (not b!1647503) (not d!496640) (not b!1646862) (not b!1646706) b_and!116965 (not d!496290) (not d!496266) (not b!1647498) (not b!1646611) (not b!1646733) (not b!1647525) (not b!1646780) (not b!1647460) (not bm!105799) (not b!1646753) (not b_next!45433) (not d!496062) (not d!496074) (not b!1646873) (not tb!94263) (not d!496076) (not d!496270) (not d!496164) (not d!496588) (not d!495996) (not b!1647483) (not b!1646488) (not b!1646694) (not d!496192) (not b!1646610) (not b!1646489) (not tb!94295) (not d!496066) (not b!1646495) (not b!1646781) (not b!1647430) (not b!1647412) (not b!1647512) (not b!1647494) (not b!1647383) (not b_next!45415) (not d!496026) (not d!496646) (not b!1647437) (not b!1646687) (not bm!105796) (not b!1647511) (not b!1647414) (not b!1646583) (not b!1647433) (not b!1647506) (not d!496592) (not b!1647403) (not b!1646431) (not bm!105801) (not d!496232) (not b_next!45399) (not b!1646770) (not b!1647521) (not b_next!45419) (not b!1647507) (not b!1647419) (not d!496154) (not b!1646594) (not d!496240) (not b!1647533) (not b!1646794) (not b!1646893) (not b!1646740) (not b!1646801) (not b!1646638) (not b!1646788) (not d!496264) (not b!1647449) (not b!1646510) (not d!496628) (not b!1646674) (not b!1646769) b_and!116977 (not b!1647456) (not b!1646791) (not b!1646899) (not d!496644) (not b!1646614) (not d!496114) (not d!496098) (not b_next!45437) (not d!496226) (not bm!105803) (not b!1647479) (not b!1646814) (not d!496124) (not d!496254) (not d!496208) (not b!1646889) (not b!1647469) (not b_lambda!51753) (not b!1646666) (not b!1646511) (not b!1647530) (not b!1646866) (not d!496130) (not d!496048) (not b!1646708) (not b!1647389) (not b!1646787) (not b!1647475) (not b!1646863) (not d!496204) (not b!1647457) (not d!496584) (not d!496212) (not b_lambda!51759) (not b!1647453) (not b!1647493) (not b!1646540) (not b!1647398) (not b!1647467) (not d!496156) (not b!1647444) (not b!1647393) (not b_next!45431) (not b!1647464) (not b!1646775) (not b!1646754) b_and!116975 (not b!1646633) (not d!496136) (not d!496086) (not b!1646632) (not d!496228) (not d!496622) (not d!496202) (not b!1646849) (not b!1646712) (not b_lambda!51781) (not b!1647438) (not d!496050) (not d!496260) (not b!1646886) (not b!1646572) (not b!1647399) (not d!496262) (not d!496284) (not b!1647489) (not d!496596) (not tb!94287) (not b!1646576) (not tb!94355) (not d!496020) (not b!1646718) (not b!1647392) (not b!1646720) (not d!496090) (not d!496100) (not d!496234) (not b!1646915) (not b!1646578) (not b!1646761) b_and!116915 (not b!1646871) (not d!496296) (not b!1646881) (not d!496126) (not b!1646668) (not d!496252) (not b!1646895) (not b!1646518) (not b!1646514) (not b!1646869) (not b!1646765) (not b!1647471) (not b!1646868) (not b!1647434) (not d!496188) (not b_next!45417) (not d!496162) (not b!1646901) b_and!116969 (not d!496244) (not d!495982) (not b!1646858) (not b!1646894) (not b_lambda!51779) (not b!1646635) (not b!1646604) (not d!496096) (not d!496614) (not bs!396257) (not bm!105802) (not b!1646875) (not b!1646485) (not b!1646430) (not b!1646684) (not d!496604) (not b!1647396) (not d!496616) (not bm!105800) (not b!1646768) (not d!496064) (not b!1647442) (not b!1646773) (not d!496196) (not b!1647436) (not b!1646763) (not b!1646732) (not d!496246) (not b!1647502) (not b!1646677) (not b!1646520) (not b!1646807) b_and!116913 (not b!1646879) (not d!496608) (not b!1647468) (not d!496238) (not d!496028) (not b!1647523) (not b!1647432) (not tb!94363) (not b!1647454) (not b!1646804) (not b!1647529) (not b!1646710) (not b!1646874) (not d!496016) (not b!1646887) (not b!1647461) (not d!496018) (not b!1647450) (not b!1646905) (not b!1647482) (not b!1646517) (not b!1646916) (not bm!105811) (not d!496102) (not b!1646855) (not d!496214) (not b!1647405) (not b!1646716) (not d!496642) (not b!1646574) (not b!1646872) (not b!1647499) (not b!1647486) (not b!1647425) (not b_lambda!51785) (not b!1647534) (not d!496236) (not d!496068) (not d!496292) (not b!1646771) (not b_lambda!51751) (not b!1647524) (not b!1646570) (not b!1646795) (not d!495990) (not b!1647395) (not d!496182) (not b!1646711) (not b!1647426) (not b!1646851) (not b!1647402) (not d!496242) (not b!1647400) (not d!496256) (not b!1646744) (not b!1647505) (not d!496618) (not b!1646530) (not b!1646829) (not d!496110) (not b!1646621) b_and!116979 (not d!496630) (not b!1646528) (not b!1646521) (not d!496148) (not b!1646808) (not d!496652) (not b!1647478) (not b!1646900) (not b!1646892) (not b!1646853) (not d!496158) (not b_next!45403) (not b!1646537) (not b!1647477) (not b!1647532) (not b!1647473) b_and!116911 (not b!1646805) (not b!1647522) (not d!496190) (not b!1646634) (not d!496118) (not b_next!45401) (not d!496274) (not d!496034) (not b!1646008) (not d!496132) (not b!1647474) (not d!496128) (not b!1646798) (not b!1646690) (not b!1647416) (not d!496024) (not b!1647459) (not b!1646750) (not b!1646867) (not b!1647510) (not d!496146) (not b!1646885) (not b!1646609) (not d!496280) (not b!1646767) (not b!1647409) (not b!1646487) (not d!496022) (not d!496602) (not d!496140) (not b!1647408) (not d!495992) b_and!116971 (not b!1647485) (not b!1646622) (not d!496638) (not d!496632) (not b!1647382) (not d!496036) (not b!1646509) (not b!1647435) (not d!496040) (not d!496198) (not b!1647509) (not b!1647439) (not b!1646535) (not d!496634) (not b!1646512) (not tb!94279) (not b!1647397) (not b!1646766) (not d!496610) (not b!1647495) (not d!496282) (not d!496180) (not d!495986) tp_is_empty!7349 (not d!496612) (not b!1646755) (not b_next!45421) (not b!1646751) (not b!1647410) (not b!1646734) (not bm!105812) b_and!116967 (not b!1646533) (not b!1646776) (not d!495994) (not b!1647384) (not d!496108) (not b!1646904) (not b_lambda!51783) (not b!1646888) (not b!1646743) (not b!1646786) (not b!1646870) (not b!1646897) (not b!1647443) (not d!496092) (not d!496268) (not b!1646854) (not b!1647404) (not b!1647427) (not d!496298) (not b!1647431) (not b!1647429) (not b!1646692) (not d!496084) (not b!1647490) (not b!1646852) (not b!1647497) (not b!1647401) (not b!1646898) (not d!496160) (not b!1646678) (not bm!105813) (not b!1647388) (not b!1646429) (not b!1647528) (not d!496648) (not b_lambda!51739) (not b!1646809) (not b!1646877) (not d!496206) (not b!1646779) (not b!1647420) (not b!1646739) (not b!1646522) (not d!496276) (not b!1646896) (not b!1646513) (not b!1646602) (not d!496586) (not b!1646850) (not d!496286) (not d!496200) (not d!496636) (not b!1646848) (not d!495984) (not b!1646662) (not b_next!45435) (not b!1647446) (not b!1647491) b_and!116909 (not b!1646723) (not d!496046) (not b!1647481) (not d!496106) (not d!496104) (not b!1647418) (not d!496248) (not b!1646917) (not b!1646705) (not b!1646577) (not b_next!45405) (not b!1646595) (not d!496070) (not b!1646882) (not b!1646623) (not d!496032) (not d!496294) (not b!1646688) (not d!496590) b_and!116973 (not b!1646828) (not d!496072) (not b!1646665) (not d!496230) (not d!496598) (not b!1647487))
(check-sat b_and!116965 (not b_next!45433) (not b_next!45415) b_and!116915 b_and!116913 b_and!116979 (not b_next!45403) b_and!116971 b_and!116973 (not b_next!45399) (not b_next!45419) (not b_next!45437) b_and!116977 (not b_next!45431) b_and!116975 (not b_next!45417) b_and!116969 b_and!116911 (not b_next!45401) (not b_next!45421) b_and!116967 (not b_next!45435) b_and!116909 (not b_next!45405))
