; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49656 () Bool)

(assert start!49656)

(declare-fun b!537614 () Bool)

(declare-fun b_free!14753 () Bool)

(declare-fun b_next!14769 () Bool)

(assert (=> b!537614 (= b_free!14753 (not b_next!14769))))

(declare-fun tp!171501 () Bool)

(declare-fun b_and!52587 () Bool)

(assert (=> b!537614 (= tp!171501 b_and!52587)))

(declare-fun b_free!14755 () Bool)

(declare-fun b_next!14771 () Bool)

(assert (=> b!537614 (= b_free!14755 (not b_next!14771))))

(declare-fun tp!171498 () Bool)

(declare-fun b_and!52589 () Bool)

(assert (=> b!537614 (= tp!171498 b_and!52589)))

(declare-fun b!537601 () Bool)

(declare-fun b_free!14757 () Bool)

(declare-fun b_next!14773 () Bool)

(assert (=> b!537601 (= b_free!14757 (not b_next!14773))))

(declare-fun tp!171494 () Bool)

(declare-fun b_and!52591 () Bool)

(assert (=> b!537601 (= tp!171494 b_and!52591)))

(declare-fun b_free!14759 () Bool)

(declare-fun b_next!14775 () Bool)

(assert (=> b!537601 (= b_free!14759 (not b_next!14775))))

(declare-fun tp!171502 () Bool)

(declare-fun b_and!52593 () Bool)

(assert (=> b!537601 (= tp!171502 b_and!52593)))

(declare-fun b!537595 () Bool)

(declare-fun e!324401 () Bool)

(declare-fun e!324397 () Bool)

(assert (=> b!537595 (= e!324401 e!324397)))

(declare-fun res!227798 () Bool)

(assert (=> b!537595 (=> (not res!227798) (not e!324397))))

(declare-datatypes ((String!6688 0))(
  ( (String!6689 (value!32343 String)) )
))
(declare-datatypes ((C!3520 0))(
  ( (C!3521 (val!1986 Int)) )
))
(declare-datatypes ((Regex!1299 0))(
  ( (ElementMatch!1299 (c!102130 C!3520)) (Concat!2288 (regOne!3110 Regex!1299) (regTwo!3110 Regex!1299)) (EmptyExpr!1299) (Star!1299 (reg!1628 Regex!1299)) (EmptyLang!1299) (Union!1299 (regOne!3111 Regex!1299) (regTwo!3111 Regex!1299)) )
))
(declare-datatypes ((List!5233 0))(
  ( (Nil!5223) (Cons!5223 (h!10624 (_ BitVec 16)) (t!74234 List!5233)) )
))
(declare-datatypes ((List!5234 0))(
  ( (Nil!5224) (Cons!5224 (h!10625 C!3520) (t!74235 List!5234)) )
))
(declare-datatypes ((IArray!3365 0))(
  ( (IArray!3366 (innerList!1740 List!5234)) )
))
(declare-datatypes ((Conc!1682 0))(
  ( (Node!1682 (left!4369 Conc!1682) (right!4699 Conc!1682) (csize!3594 Int) (cheight!1893 Int)) (Leaf!2672 (xs!4319 IArray!3365) (csize!3595 Int)) (Empty!1682) )
))
(declare-datatypes ((BalanceConc!3372 0))(
  ( (BalanceConc!3373 (c!102131 Conc!1682)) )
))
(declare-datatypes ((TokenValue!989 0))(
  ( (FloatLiteralValue!1978 (text!7368 List!5233)) (TokenValueExt!988 (__x!3876 Int)) (Broken!4945 (value!32344 List!5233)) (Object!998) (End!989) (Def!989) (Underscore!989) (Match!989) (Else!989) (Error!989) (Case!989) (If!989) (Extends!989) (Abstract!989) (Class!989) (Val!989) (DelimiterValue!1978 (del!1049 List!5233)) (KeywordValue!995 (value!32345 List!5233)) (CommentValue!1978 (value!32346 List!5233)) (WhitespaceValue!1978 (value!32347 List!5233)) (IndentationValue!989 (value!32348 List!5233)) (String!6690) (Int32!989) (Broken!4946 (value!32349 List!5233)) (Boolean!990) (Unit!9124) (OperatorValue!992 (op!1049 List!5233)) (IdentifierValue!1978 (value!32350 List!5233)) (IdentifierValue!1979 (value!32351 List!5233)) (WhitespaceValue!1979 (value!32352 List!5233)) (True!1978) (False!1978) (Broken!4947 (value!32353 List!5233)) (Broken!4948 (value!32354 List!5233)) (True!1979) (RightBrace!989) (RightBracket!989) (Colon!989) (Null!989) (Comma!989) (LeftBracket!989) (False!1979) (LeftBrace!989) (ImaginaryLiteralValue!989 (text!7369 List!5233)) (StringLiteralValue!2967 (value!32355 List!5233)) (EOFValue!989 (value!32356 List!5233)) (IdentValue!989 (value!32357 List!5233)) (DelimiterValue!1979 (value!32358 List!5233)) (DedentValue!989 (value!32359 List!5233)) (NewLineValue!989 (value!32360 List!5233)) (IntegerValue!2967 (value!32361 (_ BitVec 32)) (text!7370 List!5233)) (IntegerValue!2968 (value!32362 Int) (text!7371 List!5233)) (Times!989) (Or!989) (Equal!989) (Minus!989) (Broken!4949 (value!32363 List!5233)) (And!989) (Div!989) (LessEqual!989) (Mod!989) (Concat!2289) (Not!989) (Plus!989) (SpaceValue!989 (value!32364 List!5233)) (IntegerValue!2969 (value!32365 Int) (text!7372 List!5233)) (StringLiteralValue!2968 (text!7373 List!5233)) (FloatLiteralValue!1979 (text!7374 List!5233)) (BytesLiteralValue!989 (value!32366 List!5233)) (CommentValue!1979 (value!32367 List!5233)) (StringLiteralValue!2969 (value!32368 List!5233)) (ErrorTokenValue!989 (msg!1050 List!5233)) )
))
(declare-datatypes ((TokenValueInjection!1746 0))(
  ( (TokenValueInjection!1747 (toValue!1812 Int) (toChars!1671 Int)) )
))
(declare-datatypes ((Rule!1730 0))(
  ( (Rule!1731 (regex!965 Regex!1299) (tag!1227 String!6688) (isSeparator!965 Bool) (transformation!965 TokenValueInjection!1746)) )
))
(declare-datatypes ((Token!1666 0))(
  ( (Token!1667 (value!32369 TokenValue!989) (rule!1671 Rule!1730) (size!4204 Int) (originalCharacters!1004 List!5234)) )
))
(declare-datatypes ((tuple2!6296 0))(
  ( (tuple2!6297 (_1!3412 Token!1666) (_2!3412 List!5234)) )
))
(declare-datatypes ((Option!1315 0))(
  ( (None!1314) (Some!1314 (v!16121 tuple2!6296)) )
))
(declare-fun lt!222821 () Option!1315)

(declare-fun isDefined!1127 (Option!1315) Bool)

(assert (=> b!537595 (= res!227798 (isDefined!1127 lt!222821))))

(declare-datatypes ((List!5235 0))(
  ( (Nil!5225) (Cons!5225 (h!10626 Rule!1730) (t!74236 List!5235)) )
))
(declare-fun rules!3103 () List!5235)

(declare-datatypes ((LexerInterface!851 0))(
  ( (LexerInterfaceExt!848 (__x!3877 Int)) (Lexer!849) )
))
(declare-fun thiss!22590 () LexerInterface!851)

(declare-fun lt!222824 () List!5234)

(declare-fun maxPrefix!549 (LexerInterface!851 List!5235 List!5234) Option!1315)

(assert (=> b!537595 (= lt!222821 (maxPrefix!549 thiss!22590 rules!3103 lt!222824))))

(declare-fun input!2705 () List!5234)

(declare-fun suffix!1342 () List!5234)

(declare-fun ++!1453 (List!5234 List!5234) List!5234)

(assert (=> b!537595 (= lt!222824 (++!1453 input!2705 suffix!1342))))

(declare-fun token!491 () Token!1666)

(declare-fun e!324405 () Bool)

(declare-fun b!537596 () Bool)

(declare-fun tp!171495 () Bool)

(declare-fun e!324386 () Bool)

(declare-fun inv!6554 (String!6688) Bool)

(declare-fun inv!6557 (TokenValueInjection!1746) Bool)

(assert (=> b!537596 (= e!324386 (and tp!171495 (inv!6554 (tag!1227 (rule!1671 token!491))) (inv!6557 (transformation!965 (rule!1671 token!491))) e!324405))))

(declare-fun b!537597 () Bool)

(declare-fun e!324402 () Bool)

(declare-fun e!324392 () Bool)

(assert (=> b!537597 (= e!324402 (not e!324392))))

(declare-fun res!227786 () Bool)

(assert (=> b!537597 (=> res!227786 e!324392)))

(declare-fun lt!222819 () List!5234)

(declare-fun isPrefix!607 (List!5234 List!5234) Bool)

(assert (=> b!537597 (= res!227786 (not (isPrefix!607 input!2705 lt!222819)))))

(declare-fun lt!222818 () List!5234)

(assert (=> b!537597 (isPrefix!607 lt!222818 lt!222819)))

(declare-datatypes ((Unit!9125 0))(
  ( (Unit!9126) )
))
(declare-fun lt!222831 () Unit!9125)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!458 (List!5234 List!5234) Unit!9125)

(assert (=> b!537597 (= lt!222831 (lemmaConcatTwoListThenFirstIsPrefix!458 lt!222818 suffix!1342))))

(assert (=> b!537597 (isPrefix!607 input!2705 lt!222824)))

(declare-fun lt!222837 () Unit!9125)

(assert (=> b!537597 (= lt!222837 (lemmaConcatTwoListThenFirstIsPrefix!458 input!2705 suffix!1342))))

(declare-fun e!324391 () Bool)

(assert (=> b!537597 e!324391))

(declare-fun res!227785 () Bool)

(assert (=> b!537597 (=> (not res!227785) (not e!324391))))

(declare-fun lt!222834 () Option!1315)

(declare-fun lt!222823 () TokenValue!989)

(assert (=> b!537597 (= res!227785 (= (value!32369 (_1!3412 (v!16121 lt!222834))) lt!222823))))

(declare-fun lt!222841 () List!5234)

(declare-fun apply!1240 (TokenValueInjection!1746 BalanceConc!3372) TokenValue!989)

(declare-fun seqFromList!1163 (List!5234) BalanceConc!3372)

(assert (=> b!537597 (= lt!222823 (apply!1240 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (seqFromList!1163 lt!222841)))))

(declare-fun lt!222838 () Unit!9125)

(declare-fun lemmaInv!113 (TokenValueInjection!1746) Unit!9125)

(assert (=> b!537597 (= lt!222838 (lemmaInv!113 (transformation!965 (rule!1671 token!491))))))

(declare-fun lt!222842 () Unit!9125)

(assert (=> b!537597 (= lt!222842 (lemmaInv!113 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))))))

(declare-fun ruleValid!185 (LexerInterface!851 Rule!1730) Bool)

(assert (=> b!537597 (ruleValid!185 thiss!22590 (rule!1671 token!491))))

(declare-fun lt!222843 () Unit!9125)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!44 (LexerInterface!851 Rule!1730 List!5235) Unit!9125)

(assert (=> b!537597 (= lt!222843 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!44 thiss!22590 (rule!1671 token!491) rules!3103))))

(assert (=> b!537597 (ruleValid!185 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))))))

(declare-fun lt!222832 () Unit!9125)

(assert (=> b!537597 (= lt!222832 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!44 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))) rules!3103))))

(assert (=> b!537597 (isPrefix!607 input!2705 input!2705)))

(declare-fun lt!222827 () Unit!9125)

(declare-fun lemmaIsPrefixRefl!347 (List!5234 List!5234) Unit!9125)

(assert (=> b!537597 (= lt!222827 (lemmaIsPrefixRefl!347 input!2705 input!2705))))

(declare-fun lt!222833 () List!5234)

(assert (=> b!537597 (= (_2!3412 (v!16121 lt!222834)) lt!222833)))

(declare-fun lt!222835 () Unit!9125)

(declare-fun lemmaSamePrefixThenSameSuffix!334 (List!5234 List!5234 List!5234 List!5234 List!5234) Unit!9125)

(assert (=> b!537597 (= lt!222835 (lemmaSamePrefixThenSameSuffix!334 lt!222841 (_2!3412 (v!16121 lt!222834)) lt!222841 lt!222833 input!2705))))

(declare-fun getSuffix!130 (List!5234 List!5234) List!5234)

(assert (=> b!537597 (= lt!222833 (getSuffix!130 input!2705 lt!222841))))

(assert (=> b!537597 (isPrefix!607 lt!222841 (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834))))))

(declare-fun lt!222817 () Unit!9125)

(assert (=> b!537597 (= lt!222817 (lemmaConcatTwoListThenFirstIsPrefix!458 lt!222841 (_2!3412 (v!16121 lt!222834))))))

(declare-fun lt!222829 () Unit!9125)

(declare-fun lemmaCharactersSize!44 (Token!1666) Unit!9125)

(assert (=> b!537597 (= lt!222829 (lemmaCharactersSize!44 token!491))))

(declare-fun lt!222840 () Unit!9125)

(assert (=> b!537597 (= lt!222840 (lemmaCharactersSize!44 (_1!3412 (v!16121 lt!222834))))))

(declare-fun lt!222814 () Unit!9125)

(declare-fun e!324396 () Unit!9125)

(assert (=> b!537597 (= lt!222814 e!324396)))

(declare-fun c!102129 () Bool)

(declare-fun lt!222820 () Int)

(declare-fun lt!222830 () Int)

(assert (=> b!537597 (= c!102129 (> lt!222820 lt!222830))))

(declare-fun size!4205 (List!5234) Int)

(assert (=> b!537597 (= lt!222830 (size!4205 lt!222818))))

(assert (=> b!537597 (= lt!222820 (size!4205 lt!222841))))

(declare-fun list!2171 (BalanceConc!3372) List!5234)

(declare-fun charsOf!594 (Token!1666) BalanceConc!3372)

(assert (=> b!537597 (= lt!222841 (list!2171 (charsOf!594 (_1!3412 (v!16121 lt!222834)))))))

(declare-fun lt!222822 () tuple2!6296)

(assert (=> b!537597 (= lt!222834 (Some!1314 lt!222822))))

(assert (=> b!537597 (= lt!222822 (tuple2!6297 (_1!3412 (v!16121 lt!222834)) (_2!3412 (v!16121 lt!222834))))))

(declare-fun lt!222836 () Unit!9125)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!50 (List!5234 List!5234 List!5234 List!5234) Unit!9125)

(assert (=> b!537597 (= lt!222836 (lemmaConcatSameAndSameSizesThenSameLists!50 lt!222818 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!537598 () Bool)

(declare-fun Unit!9127 () Unit!9125)

(assert (=> b!537598 (= e!324396 Unit!9127)))

(assert (=> b!537598 false))

(declare-fun res!227790 () Bool)

(declare-fun e!324399 () Bool)

(assert (=> start!49656 (=> (not res!227790) (not e!324399))))

(get-info :version)

(assert (=> start!49656 (= res!227790 ((_ is Lexer!849) thiss!22590))))

(assert (=> start!49656 e!324399))

(declare-fun e!324408 () Bool)

(assert (=> start!49656 e!324408))

(declare-fun e!324389 () Bool)

(assert (=> start!49656 e!324389))

(declare-fun e!324404 () Bool)

(declare-fun inv!6558 (Token!1666) Bool)

(assert (=> start!49656 (and (inv!6558 token!491) e!324404)))

(assert (=> start!49656 true))

(declare-fun e!324406 () Bool)

(assert (=> start!49656 e!324406))

(declare-fun b!537599 () Bool)

(declare-fun e!324398 () Bool)

(declare-fun tp!171500 () Bool)

(assert (=> b!537599 (= e!324389 (and e!324398 tp!171500))))

(declare-fun b!537600 () Bool)

(declare-fun res!227788 () Bool)

(assert (=> b!537600 (=> (not res!227788) (not e!324399))))

(declare-fun isEmpty!3776 (List!5234) Bool)

(assert (=> b!537600 (= res!227788 (not (isEmpty!3776 input!2705)))))

(declare-fun e!324400 () Bool)

(assert (=> b!537601 (= e!324400 (and tp!171494 tp!171502))))

(declare-fun b!537602 () Bool)

(declare-fun e!324393 () Bool)

(declare-fun get!1962 (Option!1315) tuple2!6296)

(assert (=> b!537602 (= e!324393 (= (_1!3412 (get!1962 lt!222834)) (_1!3412 (v!16121 lt!222834))))))

(declare-fun b!537603 () Bool)

(declare-fun e!324390 () Bool)

(assert (=> b!537603 (= e!324390 e!324393)))

(declare-fun res!227791 () Bool)

(assert (=> b!537603 (=> (not res!227791) (not e!324393))))

(assert (=> b!537603 (= res!227791 (isDefined!1127 lt!222834))))

(declare-fun b!537604 () Bool)

(declare-fun tp!171499 () Bool)

(assert (=> b!537604 (= e!324398 (and tp!171499 (inv!6554 (tag!1227 (h!10626 rules!3103))) (inv!6557 (transformation!965 (h!10626 rules!3103))) e!324400))))

(declare-fun b!537605 () Bool)

(declare-fun e!324403 () Bool)

(assert (=> b!537605 (= e!324403 e!324402)))

(declare-fun res!227783 () Bool)

(assert (=> b!537605 (=> (not res!227783) (not e!324402))))

(assert (=> b!537605 (= res!227783 (= lt!222819 lt!222824))))

(assert (=> b!537605 (= lt!222819 (++!1453 lt!222818 suffix!1342))))

(declare-fun b!537606 () Bool)

(declare-fun res!227784 () Bool)

(declare-fun e!324395 () Bool)

(assert (=> b!537606 (=> res!227784 e!324395)))

(declare-fun contains!1209 (List!5235 Rule!1730) Bool)

(assert (=> b!537606 (= res!227784 (not (contains!1209 rules!3103 (rule!1671 token!491))))))

(declare-fun b!537607 () Bool)

(declare-fun validRegex!438 (Regex!1299) Bool)

(assert (=> b!537607 (= e!324395 (validRegex!438 (regex!965 (rule!1671 token!491))))))

(declare-fun b!537608 () Bool)

(declare-fun e!324407 () Bool)

(assert (=> b!537608 (= e!324407 e!324403)))

(declare-fun res!227792 () Bool)

(assert (=> b!537608 (=> (not res!227792) (not e!324403))))

(assert (=> b!537608 (= res!227792 ((_ is Some!1314) lt!222834))))

(assert (=> b!537608 (= lt!222834 (maxPrefix!549 thiss!22590 rules!3103 input!2705))))

(declare-fun b!537609 () Bool)

(assert (=> b!537609 (= e!324399 e!324401)))

(declare-fun res!227795 () Bool)

(assert (=> b!537609 (=> (not res!227795) (not e!324401))))

(assert (=> b!537609 (= res!227795 (= lt!222818 input!2705))))

(assert (=> b!537609 (= lt!222818 (list!2171 (charsOf!594 token!491)))))

(declare-fun b!537610 () Bool)

(assert (=> b!537610 (= e!324391 (and (= (size!4204 (_1!3412 (v!16121 lt!222834))) lt!222820) (= (originalCharacters!1004 (_1!3412 (v!16121 lt!222834))) lt!222841) (= lt!222822 (tuple2!6297 (Token!1667 lt!222823 (rule!1671 (_1!3412 (v!16121 lt!222834))) lt!222820 lt!222841) lt!222833))))))

(declare-fun b!537611 () Bool)

(assert (=> b!537611 (= e!324392 e!324395)))

(declare-fun res!227794 () Bool)

(assert (=> b!537611 (=> res!227794 e!324395)))

(assert (=> b!537611 (= res!227794 (>= lt!222820 lt!222830))))

(declare-fun e!324384 () Bool)

(assert (=> b!537611 e!324384))

(declare-fun res!227789 () Bool)

(assert (=> b!537611 (=> (not res!227789) (not e!324384))))

(declare-fun lt!222839 () TokenValue!989)

(declare-fun maxPrefixOneRule!264 (LexerInterface!851 Rule!1730 List!5234) Option!1315)

(assert (=> b!537611 (= res!227789 (= (maxPrefixOneRule!264 thiss!22590 (rule!1671 token!491) lt!222824) (Some!1314 (tuple2!6297 (Token!1667 lt!222839 (rule!1671 token!491) lt!222830 lt!222818) suffix!1342))))))

(declare-fun lt!222816 () Unit!9125)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!16 (LexerInterface!851 List!5235 List!5234 List!5234 List!5234 Rule!1730) Unit!9125)

(assert (=> b!537611 (= lt!222816 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!16 thiss!22590 rules!3103 lt!222818 lt!222824 suffix!1342 (rule!1671 token!491)))))

(assert (=> b!537611 (= (maxPrefixOneRule!264 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))) input!2705) (Some!1314 (tuple2!6297 (Token!1667 lt!222823 (rule!1671 (_1!3412 (v!16121 lt!222834))) lt!222820 lt!222841) (_2!3412 (v!16121 lt!222834)))))))

(declare-fun lt!222826 () Unit!9125)

(assert (=> b!537611 (= lt!222826 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!16 thiss!22590 rules!3103 lt!222841 input!2705 (_2!3412 (v!16121 lt!222834)) (rule!1671 (_1!3412 (v!16121 lt!222834)))))))

(declare-fun e!324394 () Bool)

(assert (=> b!537611 e!324394))

(declare-fun res!227782 () Bool)

(assert (=> b!537611 (=> (not res!227782) (not e!324394))))

(assert (=> b!537611 (= res!227782 (= (value!32369 token!491) lt!222839))))

(assert (=> b!537611 (= lt!222839 (apply!1240 (transformation!965 (rule!1671 token!491)) (seqFromList!1163 lt!222818)))))

(declare-fun lt!222828 () List!5234)

(assert (=> b!537611 (= suffix!1342 lt!222828)))

(declare-fun lt!222815 () Unit!9125)

(assert (=> b!537611 (= lt!222815 (lemmaSamePrefixThenSameSuffix!334 lt!222818 suffix!1342 lt!222818 lt!222828 lt!222824))))

(assert (=> b!537611 (= lt!222828 (getSuffix!130 lt!222824 lt!222818))))

(declare-fun b!537612 () Bool)

(declare-fun tp!171496 () Bool)

(declare-fun inv!21 (TokenValue!989) Bool)

(assert (=> b!537612 (= e!324404 (and (inv!21 (value!32369 token!491)) e!324386 tp!171496))))

(declare-fun b!537613 () Bool)

(declare-fun res!227797 () Bool)

(assert (=> b!537613 (=> (not res!227797) (not e!324399))))

(declare-fun rulesInvariant!814 (LexerInterface!851 List!5235) Bool)

(assert (=> b!537613 (= res!227797 (rulesInvariant!814 thiss!22590 rules!3103))))

(assert (=> b!537614 (= e!324405 (and tp!171501 tp!171498))))

(declare-fun b!537615 () Bool)

(assert (=> b!537615 (= e!324384 e!324390)))

(declare-fun res!227780 () Bool)

(assert (=> b!537615 (=> res!227780 e!324390)))

(assert (=> b!537615 (= res!227780 (>= lt!222820 lt!222830))))

(declare-fun b!537616 () Bool)

(declare-fun tp_is_empty!2953 () Bool)

(declare-fun tp!171493 () Bool)

(assert (=> b!537616 (= e!324408 (and tp_is_empty!2953 tp!171493))))

(declare-fun b!537617 () Bool)

(declare-fun res!227793 () Bool)

(assert (=> b!537617 (=> (not res!227793) (not e!324399))))

(declare-fun isEmpty!3777 (List!5235) Bool)

(assert (=> b!537617 (= res!227793 (not (isEmpty!3777 rules!3103)))))

(declare-fun b!537618 () Bool)

(assert (=> b!537618 (= e!324394 (and (= (size!4204 token!491) lt!222830) (= (originalCharacters!1004 token!491) lt!222818) (= (tuple2!6297 token!491 suffix!1342) (tuple2!6297 (Token!1667 lt!222839 (rule!1671 token!491) lt!222830 lt!222818) lt!222828))))))

(declare-fun b!537619 () Bool)

(assert (=> b!537619 (= e!324397 e!324407)))

(declare-fun res!227787 () Bool)

(assert (=> b!537619 (=> (not res!227787) (not e!324407))))

(declare-fun lt!222825 () tuple2!6296)

(assert (=> b!537619 (= res!227787 (and (= (_1!3412 lt!222825) token!491) (= (_2!3412 lt!222825) suffix!1342)))))

(assert (=> b!537619 (= lt!222825 (get!1962 lt!222821))))

(declare-fun b!537620 () Bool)

(declare-fun tp!171497 () Bool)

(assert (=> b!537620 (= e!324406 (and tp_is_empty!2953 tp!171497))))

(declare-fun b!537621 () Bool)

(declare-fun res!227796 () Bool)

(assert (=> b!537621 (=> (not res!227796) (not e!324391))))

(assert (=> b!537621 (= res!227796 (= (size!4204 (_1!3412 (v!16121 lt!222834))) (size!4205 (originalCharacters!1004 (_1!3412 (v!16121 lt!222834))))))))

(declare-fun b!537622 () Bool)

(declare-fun Unit!9128 () Unit!9125)

(assert (=> b!537622 (= e!324396 Unit!9128)))

(declare-fun b!537623 () Bool)

(declare-fun res!227781 () Bool)

(assert (=> b!537623 (=> (not res!227781) (not e!324394))))

(assert (=> b!537623 (= res!227781 (= (size!4204 token!491) (size!4205 (originalCharacters!1004 token!491))))))

(assert (= (and start!49656 res!227790) b!537617))

(assert (= (and b!537617 res!227793) b!537613))

(assert (= (and b!537613 res!227797) b!537600))

(assert (= (and b!537600 res!227788) b!537609))

(assert (= (and b!537609 res!227795) b!537595))

(assert (= (and b!537595 res!227798) b!537619))

(assert (= (and b!537619 res!227787) b!537608))

(assert (= (and b!537608 res!227792) b!537605))

(assert (= (and b!537605 res!227783) b!537597))

(assert (= (and b!537597 c!102129) b!537598))

(assert (= (and b!537597 (not c!102129)) b!537622))

(assert (= (and b!537597 res!227785) b!537621))

(assert (= (and b!537621 res!227796) b!537610))

(assert (= (and b!537597 (not res!227786)) b!537611))

(assert (= (and b!537611 res!227782) b!537623))

(assert (= (and b!537623 res!227781) b!537618))

(assert (= (and b!537611 res!227789) b!537615))

(assert (= (and b!537615 (not res!227780)) b!537603))

(assert (= (and b!537603 res!227791) b!537602))

(assert (= (and b!537611 (not res!227794)) b!537606))

(assert (= (and b!537606 (not res!227784)) b!537607))

(assert (= (and start!49656 ((_ is Cons!5224) suffix!1342)) b!537616))

(assert (= b!537604 b!537601))

(assert (= b!537599 b!537604))

(assert (= (and start!49656 ((_ is Cons!5225) rules!3103)) b!537599))

(assert (= b!537596 b!537614))

(assert (= b!537612 b!537596))

(assert (= start!49656 b!537612))

(assert (= (and start!49656 ((_ is Cons!5224) input!2705)) b!537620))

(declare-fun m!784479 () Bool)

(assert (=> b!537609 m!784479))

(assert (=> b!537609 m!784479))

(declare-fun m!784481 () Bool)

(assert (=> b!537609 m!784481))

(declare-fun m!784483 () Bool)

(assert (=> b!537621 m!784483))

(declare-fun m!784485 () Bool)

(assert (=> b!537602 m!784485))

(declare-fun m!784487 () Bool)

(assert (=> b!537605 m!784487))

(declare-fun m!784489 () Bool)

(assert (=> b!537612 m!784489))

(declare-fun m!784491 () Bool)

(assert (=> b!537611 m!784491))

(declare-fun m!784493 () Bool)

(assert (=> b!537611 m!784493))

(declare-fun m!784495 () Bool)

(assert (=> b!537611 m!784495))

(declare-fun m!784497 () Bool)

(assert (=> b!537611 m!784497))

(declare-fun m!784499 () Bool)

(assert (=> b!537611 m!784499))

(assert (=> b!537611 m!784497))

(declare-fun m!784501 () Bool)

(assert (=> b!537611 m!784501))

(declare-fun m!784503 () Bool)

(assert (=> b!537611 m!784503))

(declare-fun m!784505 () Bool)

(assert (=> b!537611 m!784505))

(declare-fun m!784507 () Bool)

(assert (=> start!49656 m!784507))

(declare-fun m!784509 () Bool)

(assert (=> b!537608 m!784509))

(declare-fun m!784511 () Bool)

(assert (=> b!537613 m!784511))

(declare-fun m!784513 () Bool)

(assert (=> b!537604 m!784513))

(declare-fun m!784515 () Bool)

(assert (=> b!537604 m!784515))

(declare-fun m!784517 () Bool)

(assert (=> b!537623 m!784517))

(declare-fun m!784519 () Bool)

(assert (=> b!537603 m!784519))

(declare-fun m!784521 () Bool)

(assert (=> b!537606 m!784521))

(declare-fun m!784523 () Bool)

(assert (=> b!537619 m!784523))

(declare-fun m!784525 () Bool)

(assert (=> b!537597 m!784525))

(declare-fun m!784527 () Bool)

(assert (=> b!537597 m!784527))

(declare-fun m!784529 () Bool)

(assert (=> b!537597 m!784529))

(declare-fun m!784531 () Bool)

(assert (=> b!537597 m!784531))

(declare-fun m!784533 () Bool)

(assert (=> b!537597 m!784533))

(declare-fun m!784535 () Bool)

(assert (=> b!537597 m!784535))

(declare-fun m!784537 () Bool)

(assert (=> b!537597 m!784537))

(assert (=> b!537597 m!784537))

(declare-fun m!784539 () Bool)

(assert (=> b!537597 m!784539))

(declare-fun m!784541 () Bool)

(assert (=> b!537597 m!784541))

(declare-fun m!784543 () Bool)

(assert (=> b!537597 m!784543))

(declare-fun m!784545 () Bool)

(assert (=> b!537597 m!784545))

(declare-fun m!784547 () Bool)

(assert (=> b!537597 m!784547))

(declare-fun m!784549 () Bool)

(assert (=> b!537597 m!784549))

(declare-fun m!784551 () Bool)

(assert (=> b!537597 m!784551))

(declare-fun m!784553 () Bool)

(assert (=> b!537597 m!784553))

(assert (=> b!537597 m!784535))

(declare-fun m!784555 () Bool)

(assert (=> b!537597 m!784555))

(declare-fun m!784557 () Bool)

(assert (=> b!537597 m!784557))

(declare-fun m!784559 () Bool)

(assert (=> b!537597 m!784559))

(declare-fun m!784561 () Bool)

(assert (=> b!537597 m!784561))

(declare-fun m!784563 () Bool)

(assert (=> b!537597 m!784563))

(declare-fun m!784565 () Bool)

(assert (=> b!537597 m!784565))

(declare-fun m!784567 () Bool)

(assert (=> b!537597 m!784567))

(declare-fun m!784569 () Bool)

(assert (=> b!537597 m!784569))

(declare-fun m!784571 () Bool)

(assert (=> b!537597 m!784571))

(assert (=> b!537597 m!784529))

(declare-fun m!784573 () Bool)

(assert (=> b!537597 m!784573))

(declare-fun m!784575 () Bool)

(assert (=> b!537597 m!784575))

(declare-fun m!784577 () Bool)

(assert (=> b!537597 m!784577))

(declare-fun m!784579 () Bool)

(assert (=> b!537595 m!784579))

(declare-fun m!784581 () Bool)

(assert (=> b!537595 m!784581))

(declare-fun m!784583 () Bool)

(assert (=> b!537595 m!784583))

(declare-fun m!784585 () Bool)

(assert (=> b!537617 m!784585))

(declare-fun m!784587 () Bool)

(assert (=> b!537600 m!784587))

(declare-fun m!784589 () Bool)

(assert (=> b!537607 m!784589))

(declare-fun m!784591 () Bool)

(assert (=> b!537596 m!784591))

(declare-fun m!784593 () Bool)

(assert (=> b!537596 m!784593))

(check-sat (not b!537605) b_and!52587 (not b!537617) (not b!537599) (not b_next!14773) b_and!52591 (not b!537596) (not b!537620) (not b!537609) (not b!537619) (not b!537604) (not b!537606) (not b!537612) (not b!537597) (not b!537602) (not b!537595) (not b!537607) (not b_next!14771) (not b!537608) (not start!49656) b_and!52593 tp_is_empty!2953 (not b!537623) (not b!537600) (not b!537611) (not b!537621) b_and!52589 (not b!537613) (not b!537616) (not b!537603) (not b_next!14775) (not b_next!14769))
(check-sat b_and!52587 (not b_next!14773) b_and!52591 (not b_next!14771) b_and!52593 b_and!52589 (not b_next!14775) (not b_next!14769))
(get-model)

(declare-fun d!189894 () Bool)

(assert (=> d!189894 (= (get!1962 lt!222834) (v!16121 lt!222834))))

(assert (=> b!537602 d!189894))

(declare-fun d!189896 () Bool)

(declare-fun lt!222846 () Int)

(assert (=> d!189896 (>= lt!222846 0)))

(declare-fun e!324411 () Int)

(assert (=> d!189896 (= lt!222846 e!324411)))

(declare-fun c!102134 () Bool)

(assert (=> d!189896 (= c!102134 ((_ is Nil!5224) (originalCharacters!1004 token!491)))))

(assert (=> d!189896 (= (size!4205 (originalCharacters!1004 token!491)) lt!222846)))

(declare-fun b!537628 () Bool)

(assert (=> b!537628 (= e!324411 0)))

(declare-fun b!537629 () Bool)

(assert (=> b!537629 (= e!324411 (+ 1 (size!4205 (t!74235 (originalCharacters!1004 token!491)))))))

(assert (= (and d!189896 c!102134) b!537628))

(assert (= (and d!189896 (not c!102134)) b!537629))

(declare-fun m!784595 () Bool)

(assert (=> b!537629 m!784595))

(assert (=> b!537623 d!189896))

(declare-fun b!537667 () Bool)

(declare-fun e!324441 () Bool)

(declare-fun inv!15 (TokenValue!989) Bool)

(assert (=> b!537667 (= e!324441 (inv!15 (value!32369 token!491)))))

(declare-fun b!537668 () Bool)

(declare-fun e!324439 () Bool)

(declare-fun inv!16 (TokenValue!989) Bool)

(assert (=> b!537668 (= e!324439 (inv!16 (value!32369 token!491)))))

(declare-fun b!537669 () Bool)

(declare-fun res!227824 () Bool)

(assert (=> b!537669 (=> res!227824 e!324441)))

(assert (=> b!537669 (= res!227824 (not ((_ is IntegerValue!2969) (value!32369 token!491))))))

(declare-fun e!324440 () Bool)

(assert (=> b!537669 (= e!324440 e!324441)))

(declare-fun d!189900 () Bool)

(declare-fun c!102145 () Bool)

(assert (=> d!189900 (= c!102145 ((_ is IntegerValue!2967) (value!32369 token!491)))))

(assert (=> d!189900 (= (inv!21 (value!32369 token!491)) e!324439)))

(declare-fun b!537670 () Bool)

(declare-fun inv!17 (TokenValue!989) Bool)

(assert (=> b!537670 (= e!324440 (inv!17 (value!32369 token!491)))))

(declare-fun b!537671 () Bool)

(assert (=> b!537671 (= e!324439 e!324440)))

(declare-fun c!102146 () Bool)

(assert (=> b!537671 (= c!102146 ((_ is IntegerValue!2968) (value!32369 token!491)))))

(assert (= (and d!189900 c!102145) b!537668))

(assert (= (and d!189900 (not c!102145)) b!537671))

(assert (= (and b!537671 c!102146) b!537670))

(assert (= (and b!537671 (not c!102146)) b!537669))

(assert (= (and b!537669 (not res!227824)) b!537667))

(declare-fun m!784603 () Bool)

(assert (=> b!537667 m!784603))

(declare-fun m!784605 () Bool)

(assert (=> b!537668 m!784605))

(declare-fun m!784607 () Bool)

(assert (=> b!537670 m!784607))

(assert (=> b!537612 d!189900))

(declare-fun d!189906 () Bool)

(declare-fun isEmpty!3778 (Option!1315) Bool)

(assert (=> d!189906 (= (isDefined!1127 lt!222834) (not (isEmpty!3778 lt!222834)))))

(declare-fun bs!67409 () Bool)

(assert (= bs!67409 d!189906))

(declare-fun m!784611 () Bool)

(assert (=> bs!67409 m!784611))

(assert (=> b!537603 d!189906))

(declare-fun d!189910 () Bool)

(declare-fun res!227833 () Bool)

(declare-fun e!324450 () Bool)

(assert (=> d!189910 (=> (not res!227833) (not e!324450))))

(declare-fun rulesValid!345 (LexerInterface!851 List!5235) Bool)

(assert (=> d!189910 (= res!227833 (rulesValid!345 thiss!22590 rules!3103))))

(assert (=> d!189910 (= (rulesInvariant!814 thiss!22590 rules!3103) e!324450)))

(declare-fun b!537685 () Bool)

(declare-datatypes ((List!5236 0))(
  ( (Nil!5226) (Cons!5226 (h!10627 String!6688) (t!74285 List!5236)) )
))
(declare-fun noDuplicateTag!345 (LexerInterface!851 List!5235 List!5236) Bool)

(assert (=> b!537685 (= e!324450 (noDuplicateTag!345 thiss!22590 rules!3103 Nil!5226))))

(assert (= (and d!189910 res!227833) b!537685))

(declare-fun m!784625 () Bool)

(assert (=> d!189910 m!784625))

(declare-fun m!784627 () Bool)

(assert (=> b!537685 m!784627))

(assert (=> b!537613 d!189910))

(declare-fun d!189920 () Bool)

(assert (=> d!189920 (= (inv!6554 (tag!1227 (h!10626 rules!3103))) (= (mod (str.len (value!32343 (tag!1227 (h!10626 rules!3103)))) 2) 0))))

(assert (=> b!537604 d!189920))

(declare-fun d!189922 () Bool)

(declare-fun res!227855 () Bool)

(declare-fun e!324468 () Bool)

(assert (=> d!189922 (=> (not res!227855) (not e!324468))))

(declare-fun semiInverseModEq!381 (Int Int) Bool)

(assert (=> d!189922 (= res!227855 (semiInverseModEq!381 (toChars!1671 (transformation!965 (h!10626 rules!3103))) (toValue!1812 (transformation!965 (h!10626 rules!3103)))))))

(assert (=> d!189922 (= (inv!6557 (transformation!965 (h!10626 rules!3103))) e!324468)))

(declare-fun b!537707 () Bool)

(declare-fun equivClasses!364 (Int Int) Bool)

(assert (=> b!537707 (= e!324468 (equivClasses!364 (toChars!1671 (transformation!965 (h!10626 rules!3103))) (toValue!1812 (transformation!965 (h!10626 rules!3103)))))))

(assert (= (and d!189922 res!227855) b!537707))

(declare-fun m!784659 () Bool)

(assert (=> d!189922 m!784659))

(declare-fun m!784661 () Bool)

(assert (=> b!537707 m!784661))

(assert (=> b!537604 d!189922))

(declare-fun d!189930 () Bool)

(declare-fun lt!222862 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!916 (List!5235) (InoxSet Rule!1730))

(assert (=> d!189930 (= lt!222862 (select (content!916 rules!3103) (rule!1671 token!491)))))

(declare-fun e!324482 () Bool)

(assert (=> d!189930 (= lt!222862 e!324482)))

(declare-fun res!227870 () Bool)

(assert (=> d!189930 (=> (not res!227870) (not e!324482))))

(assert (=> d!189930 (= res!227870 ((_ is Cons!5225) rules!3103))))

(assert (=> d!189930 (= (contains!1209 rules!3103 (rule!1671 token!491)) lt!222862)))

(declare-fun b!537728 () Bool)

(declare-fun e!324483 () Bool)

(assert (=> b!537728 (= e!324482 e!324483)))

(declare-fun res!227871 () Bool)

(assert (=> b!537728 (=> res!227871 e!324483)))

(assert (=> b!537728 (= res!227871 (= (h!10626 rules!3103) (rule!1671 token!491)))))

(declare-fun b!537729 () Bool)

(assert (=> b!537729 (= e!324483 (contains!1209 (t!74236 rules!3103) (rule!1671 token!491)))))

(assert (= (and d!189930 res!227870) b!537728))

(assert (= (and b!537728 (not res!227871)) b!537729))

(declare-fun m!784679 () Bool)

(assert (=> d!189930 m!784679))

(declare-fun m!784681 () Bool)

(assert (=> d!189930 m!784681))

(declare-fun m!784683 () Bool)

(assert (=> b!537729 m!784683))

(assert (=> b!537606 d!189930))

(declare-fun d!189940 () Bool)

(assert (=> d!189940 (= (isDefined!1127 lt!222821) (not (isEmpty!3778 lt!222821)))))

(declare-fun bs!67411 () Bool)

(assert (= bs!67411 d!189940))

(declare-fun m!784685 () Bool)

(assert (=> bs!67411 m!784685))

(assert (=> b!537595 d!189940))

(declare-fun b!537854 () Bool)

(declare-fun res!227948 () Bool)

(declare-fun e!324549 () Bool)

(assert (=> b!537854 (=> (not res!227948) (not e!324549))))

(declare-fun lt!222930 () Option!1315)

(assert (=> b!537854 (= res!227948 (= (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!222930)))) (originalCharacters!1004 (_1!3412 (get!1962 lt!222930)))))))

(declare-fun b!537855 () Bool)

(assert (=> b!537855 (= e!324549 (contains!1209 rules!3103 (rule!1671 (_1!3412 (get!1962 lt!222930)))))))

(declare-fun b!537856 () Bool)

(declare-fun e!324550 () Option!1315)

(declare-fun call!38235 () Option!1315)

(assert (=> b!537856 (= e!324550 call!38235)))

(declare-fun b!537857 () Bool)

(declare-fun e!324548 () Bool)

(assert (=> b!537857 (= e!324548 e!324549)))

(declare-fun res!227952 () Bool)

(assert (=> b!537857 (=> (not res!227952) (not e!324549))))

(assert (=> b!537857 (= res!227952 (isDefined!1127 lt!222930))))

(declare-fun b!537859 () Bool)

(declare-fun res!227949 () Bool)

(assert (=> b!537859 (=> (not res!227949) (not e!324549))))

(declare-fun matchR!457 (Regex!1299 List!5234) Bool)

(assert (=> b!537859 (= res!227949 (matchR!457 (regex!965 (rule!1671 (_1!3412 (get!1962 lt!222930)))) (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!222930))))))))

(declare-fun bm!38230 () Bool)

(assert (=> bm!38230 (= call!38235 (maxPrefixOneRule!264 thiss!22590 (h!10626 rules!3103) lt!222824))))

(declare-fun b!537860 () Bool)

(declare-fun res!227947 () Bool)

(assert (=> b!537860 (=> (not res!227947) (not e!324549))))

(assert (=> b!537860 (= res!227947 (= (++!1453 (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!222930)))) (_2!3412 (get!1962 lt!222930))) lt!222824))))

(declare-fun b!537861 () Bool)

(declare-fun lt!222929 () Option!1315)

(declare-fun lt!222927 () Option!1315)

(assert (=> b!537861 (= e!324550 (ite (and ((_ is None!1314) lt!222929) ((_ is None!1314) lt!222927)) None!1314 (ite ((_ is None!1314) lt!222927) lt!222929 (ite ((_ is None!1314) lt!222929) lt!222927 (ite (>= (size!4204 (_1!3412 (v!16121 lt!222929))) (size!4204 (_1!3412 (v!16121 lt!222927)))) lt!222929 lt!222927)))))))

(assert (=> b!537861 (= lt!222929 call!38235)))

(assert (=> b!537861 (= lt!222927 (maxPrefix!549 thiss!22590 (t!74236 rules!3103) lt!222824))))

(declare-fun b!537862 () Bool)

(declare-fun res!227951 () Bool)

(assert (=> b!537862 (=> (not res!227951) (not e!324549))))

(assert (=> b!537862 (= res!227951 (= (value!32369 (_1!3412 (get!1962 lt!222930))) (apply!1240 (transformation!965 (rule!1671 (_1!3412 (get!1962 lt!222930)))) (seqFromList!1163 (originalCharacters!1004 (_1!3412 (get!1962 lt!222930)))))))))

(declare-fun d!189942 () Bool)

(assert (=> d!189942 e!324548))

(declare-fun res!227950 () Bool)

(assert (=> d!189942 (=> res!227950 e!324548)))

(assert (=> d!189942 (= res!227950 (isEmpty!3778 lt!222930))))

(assert (=> d!189942 (= lt!222930 e!324550)))

(declare-fun c!102173 () Bool)

(assert (=> d!189942 (= c!102173 (and ((_ is Cons!5225) rules!3103) ((_ is Nil!5225) (t!74236 rules!3103))))))

(declare-fun lt!222928 () Unit!9125)

(declare-fun lt!222926 () Unit!9125)

(assert (=> d!189942 (= lt!222928 lt!222926)))

(assert (=> d!189942 (isPrefix!607 lt!222824 lt!222824)))

(assert (=> d!189942 (= lt!222926 (lemmaIsPrefixRefl!347 lt!222824 lt!222824))))

(declare-fun rulesValidInductive!339 (LexerInterface!851 List!5235) Bool)

(assert (=> d!189942 (rulesValidInductive!339 thiss!22590 rules!3103)))

(assert (=> d!189942 (= (maxPrefix!549 thiss!22590 rules!3103 lt!222824) lt!222930)))

(declare-fun b!537858 () Bool)

(declare-fun res!227953 () Bool)

(assert (=> b!537858 (=> (not res!227953) (not e!324549))))

(assert (=> b!537858 (= res!227953 (< (size!4205 (_2!3412 (get!1962 lt!222930))) (size!4205 lt!222824)))))

(assert (= (and d!189942 c!102173) b!537856))

(assert (= (and d!189942 (not c!102173)) b!537861))

(assert (= (or b!537856 b!537861) bm!38230))

(assert (= (and d!189942 (not res!227950)) b!537857))

(assert (= (and b!537857 res!227952) b!537854))

(assert (= (and b!537854 res!227948) b!537858))

(assert (= (and b!537858 res!227953) b!537860))

(assert (= (and b!537860 res!227947) b!537862))

(assert (= (and b!537862 res!227951) b!537859))

(assert (= (and b!537859 res!227949) b!537855))

(declare-fun m!784863 () Bool)

(assert (=> b!537859 m!784863))

(declare-fun m!784865 () Bool)

(assert (=> b!537859 m!784865))

(assert (=> b!537859 m!784865))

(declare-fun m!784867 () Bool)

(assert (=> b!537859 m!784867))

(assert (=> b!537859 m!784867))

(declare-fun m!784869 () Bool)

(assert (=> b!537859 m!784869))

(assert (=> b!537862 m!784863))

(declare-fun m!784871 () Bool)

(assert (=> b!537862 m!784871))

(assert (=> b!537862 m!784871))

(declare-fun m!784873 () Bool)

(assert (=> b!537862 m!784873))

(declare-fun m!784875 () Bool)

(assert (=> b!537857 m!784875))

(assert (=> b!537858 m!784863))

(declare-fun m!784877 () Bool)

(assert (=> b!537858 m!784877))

(declare-fun m!784879 () Bool)

(assert (=> b!537858 m!784879))

(assert (=> b!537855 m!784863))

(declare-fun m!784881 () Bool)

(assert (=> b!537855 m!784881))

(assert (=> b!537854 m!784863))

(assert (=> b!537854 m!784865))

(assert (=> b!537854 m!784865))

(assert (=> b!537854 m!784867))

(assert (=> b!537860 m!784863))

(assert (=> b!537860 m!784865))

(assert (=> b!537860 m!784865))

(assert (=> b!537860 m!784867))

(assert (=> b!537860 m!784867))

(declare-fun m!784883 () Bool)

(assert (=> b!537860 m!784883))

(declare-fun m!784885 () Bool)

(assert (=> bm!38230 m!784885))

(declare-fun m!784887 () Bool)

(assert (=> d!189942 m!784887))

(declare-fun m!784889 () Bool)

(assert (=> d!189942 m!784889))

(declare-fun m!784891 () Bool)

(assert (=> d!189942 m!784891))

(declare-fun m!784893 () Bool)

(assert (=> d!189942 m!784893))

(declare-fun m!784895 () Bool)

(assert (=> b!537861 m!784895))

(assert (=> b!537595 d!189942))

(declare-fun b!537876 () Bool)

(declare-fun e!324560 () List!5234)

(assert (=> b!537876 (= e!324560 (Cons!5224 (h!10625 input!2705) (++!1453 (t!74235 input!2705) suffix!1342)))))

(declare-fun b!537877 () Bool)

(declare-fun res!227963 () Bool)

(declare-fun e!324559 () Bool)

(assert (=> b!537877 (=> (not res!227963) (not e!324559))))

(declare-fun lt!222933 () List!5234)

(assert (=> b!537877 (= res!227963 (= (size!4205 lt!222933) (+ (size!4205 input!2705) (size!4205 suffix!1342))))))

(declare-fun d!190016 () Bool)

(assert (=> d!190016 e!324559))

(declare-fun res!227962 () Bool)

(assert (=> d!190016 (=> (not res!227962) (not e!324559))))

(declare-fun content!917 (List!5234) (InoxSet C!3520))

(assert (=> d!190016 (= res!227962 (= (content!917 lt!222933) ((_ map or) (content!917 input!2705) (content!917 suffix!1342))))))

(assert (=> d!190016 (= lt!222933 e!324560)))

(declare-fun c!102176 () Bool)

(assert (=> d!190016 (= c!102176 ((_ is Nil!5224) input!2705))))

(assert (=> d!190016 (= (++!1453 input!2705 suffix!1342) lt!222933)))

(declare-fun b!537875 () Bool)

(assert (=> b!537875 (= e!324560 suffix!1342)))

(declare-fun b!537878 () Bool)

(assert (=> b!537878 (= e!324559 (or (not (= suffix!1342 Nil!5224)) (= lt!222933 input!2705)))))

(assert (= (and d!190016 c!102176) b!537875))

(assert (= (and d!190016 (not c!102176)) b!537876))

(assert (= (and d!190016 res!227962) b!537877))

(assert (= (and b!537877 res!227963) b!537878))

(declare-fun m!784897 () Bool)

(assert (=> b!537876 m!784897))

(declare-fun m!784899 () Bool)

(assert (=> b!537877 m!784899))

(declare-fun m!784901 () Bool)

(assert (=> b!537877 m!784901))

(declare-fun m!784903 () Bool)

(assert (=> b!537877 m!784903))

(declare-fun m!784905 () Bool)

(assert (=> d!190016 m!784905))

(declare-fun m!784907 () Bool)

(assert (=> d!190016 m!784907))

(declare-fun m!784909 () Bool)

(assert (=> d!190016 m!784909))

(assert (=> b!537595 d!190016))

(declare-fun b!537880 () Bool)

(declare-fun e!324562 () List!5234)

(assert (=> b!537880 (= e!324562 (Cons!5224 (h!10625 lt!222818) (++!1453 (t!74235 lt!222818) suffix!1342)))))

(declare-fun b!537881 () Bool)

(declare-fun res!227965 () Bool)

(declare-fun e!324561 () Bool)

(assert (=> b!537881 (=> (not res!227965) (not e!324561))))

(declare-fun lt!222934 () List!5234)

(assert (=> b!537881 (= res!227965 (= (size!4205 lt!222934) (+ (size!4205 lt!222818) (size!4205 suffix!1342))))))

(declare-fun d!190018 () Bool)

(assert (=> d!190018 e!324561))

(declare-fun res!227964 () Bool)

(assert (=> d!190018 (=> (not res!227964) (not e!324561))))

(assert (=> d!190018 (= res!227964 (= (content!917 lt!222934) ((_ map or) (content!917 lt!222818) (content!917 suffix!1342))))))

(assert (=> d!190018 (= lt!222934 e!324562)))

(declare-fun c!102177 () Bool)

(assert (=> d!190018 (= c!102177 ((_ is Nil!5224) lt!222818))))

(assert (=> d!190018 (= (++!1453 lt!222818 suffix!1342) lt!222934)))

(declare-fun b!537879 () Bool)

(assert (=> b!537879 (= e!324562 suffix!1342)))

(declare-fun b!537882 () Bool)

(assert (=> b!537882 (= e!324561 (or (not (= suffix!1342 Nil!5224)) (= lt!222934 lt!222818)))))

(assert (= (and d!190018 c!102177) b!537879))

(assert (= (and d!190018 (not c!102177)) b!537880))

(assert (= (and d!190018 res!227964) b!537881))

(assert (= (and b!537881 res!227965) b!537882))

(declare-fun m!784911 () Bool)

(assert (=> b!537880 m!784911))

(declare-fun m!784913 () Bool)

(assert (=> b!537881 m!784913))

(assert (=> b!537881 m!784563))

(assert (=> b!537881 m!784903))

(declare-fun m!784915 () Bool)

(assert (=> d!190018 m!784915))

(declare-fun m!784917 () Bool)

(assert (=> d!190018 m!784917))

(assert (=> d!190018 m!784909))

(assert (=> b!537605 d!190018))

(declare-fun b!537903 () Bool)

(declare-fun res!227976 () Bool)

(declare-fun e!324585 () Bool)

(assert (=> b!537903 (=> (not res!227976) (not e!324585))))

(declare-fun call!38244 () Bool)

(assert (=> b!537903 (= res!227976 call!38244)))

(declare-fun e!324584 () Bool)

(assert (=> b!537903 (= e!324584 e!324585)))

(declare-fun b!537904 () Bool)

(declare-fun e!324583 () Bool)

(declare-fun e!324580 () Bool)

(assert (=> b!537904 (= e!324583 e!324580)))

(declare-fun res!227979 () Bool)

(declare-fun nullable!343 (Regex!1299) Bool)

(assert (=> b!537904 (= res!227979 (not (nullable!343 (reg!1628 (regex!965 (rule!1671 token!491))))))))

(assert (=> b!537904 (=> (not res!227979) (not e!324580))))

(declare-fun b!537905 () Bool)

(declare-fun e!324581 () Bool)

(assert (=> b!537905 (= e!324581 e!324583)))

(declare-fun c!102183 () Bool)

(assert (=> b!537905 (= c!102183 ((_ is Star!1299) (regex!965 (rule!1671 token!491))))))

(declare-fun bm!38237 () Bool)

(declare-fun call!38242 () Bool)

(declare-fun call!38243 () Bool)

(assert (=> bm!38237 (= call!38242 call!38243)))

(declare-fun b!537906 () Bool)

(declare-fun res!227978 () Bool)

(declare-fun e!324579 () Bool)

(assert (=> b!537906 (=> res!227978 e!324579)))

(assert (=> b!537906 (= res!227978 (not ((_ is Concat!2288) (regex!965 (rule!1671 token!491)))))))

(assert (=> b!537906 (= e!324584 e!324579)))

(declare-fun bm!38238 () Bool)

(declare-fun c!102184 () Bool)

(assert (=> bm!38238 (= call!38244 (validRegex!438 (ite c!102184 (regOne!3111 (regex!965 (rule!1671 token!491))) (regTwo!3110 (regex!965 (rule!1671 token!491))))))))

(declare-fun d!190020 () Bool)

(declare-fun res!227980 () Bool)

(assert (=> d!190020 (=> res!227980 e!324581)))

(assert (=> d!190020 (= res!227980 ((_ is ElementMatch!1299) (regex!965 (rule!1671 token!491))))))

(assert (=> d!190020 (= (validRegex!438 (regex!965 (rule!1671 token!491))) e!324581)))

(declare-fun b!537907 () Bool)

(declare-fun e!324582 () Bool)

(assert (=> b!537907 (= e!324579 e!324582)))

(declare-fun res!227977 () Bool)

(assert (=> b!537907 (=> (not res!227977) (not e!324582))))

(assert (=> b!537907 (= res!227977 call!38242)))

(declare-fun bm!38239 () Bool)

(assert (=> bm!38239 (= call!38243 (validRegex!438 (ite c!102183 (reg!1628 (regex!965 (rule!1671 token!491))) (ite c!102184 (regTwo!3111 (regex!965 (rule!1671 token!491))) (regOne!3110 (regex!965 (rule!1671 token!491)))))))))

(declare-fun b!537908 () Bool)

(assert (=> b!537908 (= e!324582 call!38244)))

(declare-fun b!537909 () Bool)

(assert (=> b!537909 (= e!324585 call!38242)))

(declare-fun b!537910 () Bool)

(assert (=> b!537910 (= e!324580 call!38243)))

(declare-fun b!537911 () Bool)

(assert (=> b!537911 (= e!324583 e!324584)))

(assert (=> b!537911 (= c!102184 ((_ is Union!1299) (regex!965 (rule!1671 token!491))))))

(assert (= (and d!190020 (not res!227980)) b!537905))

(assert (= (and b!537905 c!102183) b!537904))

(assert (= (and b!537905 (not c!102183)) b!537911))

(assert (= (and b!537904 res!227979) b!537910))

(assert (= (and b!537911 c!102184) b!537903))

(assert (= (and b!537911 (not c!102184)) b!537906))

(assert (= (and b!537903 res!227976) b!537909))

(assert (= (and b!537906 (not res!227978)) b!537907))

(assert (= (and b!537907 res!227977) b!537908))

(assert (= (or b!537903 b!537908) bm!38238))

(assert (= (or b!537909 b!537907) bm!38237))

(assert (= (or b!537910 bm!38237) bm!38239))

(declare-fun m!784937 () Bool)

(assert (=> b!537904 m!784937))

(declare-fun m!784939 () Bool)

(assert (=> bm!38238 m!784939))

(declare-fun m!784941 () Bool)

(assert (=> bm!38239 m!784941))

(assert (=> b!537607 d!190020))

(declare-fun d!190034 () Bool)

(assert (=> d!190034 (= (inv!6554 (tag!1227 (rule!1671 token!491))) (= (mod (str.len (value!32343 (tag!1227 (rule!1671 token!491)))) 2) 0))))

(assert (=> b!537596 d!190034))

(declare-fun d!190036 () Bool)

(declare-fun res!227981 () Bool)

(declare-fun e!324586 () Bool)

(assert (=> d!190036 (=> (not res!227981) (not e!324586))))

(assert (=> d!190036 (= res!227981 (semiInverseModEq!381 (toChars!1671 (transformation!965 (rule!1671 token!491))) (toValue!1812 (transformation!965 (rule!1671 token!491)))))))

(assert (=> d!190036 (= (inv!6557 (transformation!965 (rule!1671 token!491))) e!324586)))

(declare-fun b!537912 () Bool)

(assert (=> b!537912 (= e!324586 (equivClasses!364 (toChars!1671 (transformation!965 (rule!1671 token!491))) (toValue!1812 (transformation!965 (rule!1671 token!491)))))))

(assert (= (and d!190036 res!227981) b!537912))

(declare-fun m!784943 () Bool)

(assert (=> d!190036 m!784943))

(declare-fun m!784945 () Bool)

(assert (=> b!537912 m!784945))

(assert (=> b!537596 d!190036))

(declare-fun d!190038 () Bool)

(assert (=> d!190038 (= (isEmpty!3777 rules!3103) ((_ is Nil!5225) rules!3103))))

(assert (=> b!537617 d!190038))

(declare-fun d!190040 () Bool)

(assert (=> d!190040 (= (get!1962 lt!222821) (v!16121 lt!222821))))

(assert (=> b!537619 d!190040))

(declare-fun b!537913 () Bool)

(declare-fun res!227983 () Bool)

(declare-fun e!324588 () Bool)

(assert (=> b!537913 (=> (not res!227983) (not e!324588))))

(declare-fun lt!222945 () Option!1315)

(assert (=> b!537913 (= res!227983 (= (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!222945)))) (originalCharacters!1004 (_1!3412 (get!1962 lt!222945)))))))

(declare-fun b!537914 () Bool)

(assert (=> b!537914 (= e!324588 (contains!1209 rules!3103 (rule!1671 (_1!3412 (get!1962 lt!222945)))))))

(declare-fun b!537915 () Bool)

(declare-fun e!324589 () Option!1315)

(declare-fun call!38245 () Option!1315)

(assert (=> b!537915 (= e!324589 call!38245)))

(declare-fun b!537916 () Bool)

(declare-fun e!324587 () Bool)

(assert (=> b!537916 (= e!324587 e!324588)))

(declare-fun res!227987 () Bool)

(assert (=> b!537916 (=> (not res!227987) (not e!324588))))

(assert (=> b!537916 (= res!227987 (isDefined!1127 lt!222945))))

(declare-fun b!537918 () Bool)

(declare-fun res!227984 () Bool)

(assert (=> b!537918 (=> (not res!227984) (not e!324588))))

(assert (=> b!537918 (= res!227984 (matchR!457 (regex!965 (rule!1671 (_1!3412 (get!1962 lt!222945)))) (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!222945))))))))

(declare-fun bm!38240 () Bool)

(assert (=> bm!38240 (= call!38245 (maxPrefixOneRule!264 thiss!22590 (h!10626 rules!3103) input!2705))))

(declare-fun b!537919 () Bool)

(declare-fun res!227982 () Bool)

(assert (=> b!537919 (=> (not res!227982) (not e!324588))))

(assert (=> b!537919 (= res!227982 (= (++!1453 (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!222945)))) (_2!3412 (get!1962 lt!222945))) input!2705))))

(declare-fun b!537920 () Bool)

(declare-fun lt!222944 () Option!1315)

(declare-fun lt!222942 () Option!1315)

(assert (=> b!537920 (= e!324589 (ite (and ((_ is None!1314) lt!222944) ((_ is None!1314) lt!222942)) None!1314 (ite ((_ is None!1314) lt!222942) lt!222944 (ite ((_ is None!1314) lt!222944) lt!222942 (ite (>= (size!4204 (_1!3412 (v!16121 lt!222944))) (size!4204 (_1!3412 (v!16121 lt!222942)))) lt!222944 lt!222942)))))))

(assert (=> b!537920 (= lt!222944 call!38245)))

(assert (=> b!537920 (= lt!222942 (maxPrefix!549 thiss!22590 (t!74236 rules!3103) input!2705))))

(declare-fun b!537921 () Bool)

(declare-fun res!227986 () Bool)

(assert (=> b!537921 (=> (not res!227986) (not e!324588))))

(assert (=> b!537921 (= res!227986 (= (value!32369 (_1!3412 (get!1962 lt!222945))) (apply!1240 (transformation!965 (rule!1671 (_1!3412 (get!1962 lt!222945)))) (seqFromList!1163 (originalCharacters!1004 (_1!3412 (get!1962 lt!222945)))))))))

(declare-fun d!190042 () Bool)

(assert (=> d!190042 e!324587))

(declare-fun res!227985 () Bool)

(assert (=> d!190042 (=> res!227985 e!324587)))

(assert (=> d!190042 (= res!227985 (isEmpty!3778 lt!222945))))

(assert (=> d!190042 (= lt!222945 e!324589)))

(declare-fun c!102185 () Bool)

(assert (=> d!190042 (= c!102185 (and ((_ is Cons!5225) rules!3103) ((_ is Nil!5225) (t!74236 rules!3103))))))

(declare-fun lt!222943 () Unit!9125)

(declare-fun lt!222941 () Unit!9125)

(assert (=> d!190042 (= lt!222943 lt!222941)))

(assert (=> d!190042 (isPrefix!607 input!2705 input!2705)))

(assert (=> d!190042 (= lt!222941 (lemmaIsPrefixRefl!347 input!2705 input!2705))))

(assert (=> d!190042 (rulesValidInductive!339 thiss!22590 rules!3103)))

(assert (=> d!190042 (= (maxPrefix!549 thiss!22590 rules!3103 input!2705) lt!222945)))

(declare-fun b!537917 () Bool)

(declare-fun res!227988 () Bool)

(assert (=> b!537917 (=> (not res!227988) (not e!324588))))

(assert (=> b!537917 (= res!227988 (< (size!4205 (_2!3412 (get!1962 lt!222945))) (size!4205 input!2705)))))

(assert (= (and d!190042 c!102185) b!537915))

(assert (= (and d!190042 (not c!102185)) b!537920))

(assert (= (or b!537915 b!537920) bm!38240))

(assert (= (and d!190042 (not res!227985)) b!537916))

(assert (= (and b!537916 res!227987) b!537913))

(assert (= (and b!537913 res!227983) b!537917))

(assert (= (and b!537917 res!227988) b!537919))

(assert (= (and b!537919 res!227982) b!537921))

(assert (= (and b!537921 res!227986) b!537918))

(assert (= (and b!537918 res!227984) b!537914))

(declare-fun m!784947 () Bool)

(assert (=> b!537918 m!784947))

(declare-fun m!784949 () Bool)

(assert (=> b!537918 m!784949))

(assert (=> b!537918 m!784949))

(declare-fun m!784951 () Bool)

(assert (=> b!537918 m!784951))

(assert (=> b!537918 m!784951))

(declare-fun m!784953 () Bool)

(assert (=> b!537918 m!784953))

(assert (=> b!537921 m!784947))

(declare-fun m!784955 () Bool)

(assert (=> b!537921 m!784955))

(assert (=> b!537921 m!784955))

(declare-fun m!784957 () Bool)

(assert (=> b!537921 m!784957))

(declare-fun m!784959 () Bool)

(assert (=> b!537916 m!784959))

(assert (=> b!537917 m!784947))

(declare-fun m!784961 () Bool)

(assert (=> b!537917 m!784961))

(assert (=> b!537917 m!784901))

(assert (=> b!537914 m!784947))

(declare-fun m!784963 () Bool)

(assert (=> b!537914 m!784963))

(assert (=> b!537913 m!784947))

(assert (=> b!537913 m!784949))

(assert (=> b!537913 m!784949))

(assert (=> b!537913 m!784951))

(assert (=> b!537919 m!784947))

(assert (=> b!537919 m!784949))

(assert (=> b!537919 m!784949))

(assert (=> b!537919 m!784951))

(assert (=> b!537919 m!784951))

(declare-fun m!784965 () Bool)

(assert (=> b!537919 m!784965))

(declare-fun m!784967 () Bool)

(assert (=> bm!38240 m!784967))

(declare-fun m!784969 () Bool)

(assert (=> d!190042 m!784969))

(assert (=> d!190042 m!784577))

(assert (=> d!190042 m!784541))

(assert (=> d!190042 m!784893))

(declare-fun m!784971 () Bool)

(assert (=> b!537920 m!784971))

(assert (=> b!537608 d!190042))

(declare-fun b!537933 () Bool)

(declare-fun e!324597 () Bool)

(assert (=> b!537933 (= e!324597 (>= (size!4205 (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834)))) (size!4205 lt!222841)))))

(declare-fun d!190044 () Bool)

(assert (=> d!190044 e!324597))

(declare-fun res!227999 () Bool)

(assert (=> d!190044 (=> res!227999 e!324597)))

(declare-fun lt!222948 () Bool)

(assert (=> d!190044 (= res!227999 (not lt!222948))))

(declare-fun e!324596 () Bool)

(assert (=> d!190044 (= lt!222948 e!324596)))

(declare-fun res!227998 () Bool)

(assert (=> d!190044 (=> res!227998 e!324596)))

(assert (=> d!190044 (= res!227998 ((_ is Nil!5224) lt!222841))))

(assert (=> d!190044 (= (isPrefix!607 lt!222841 (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834)))) lt!222948)))

(declare-fun b!537930 () Bool)

(declare-fun e!324598 () Bool)

(assert (=> b!537930 (= e!324596 e!324598)))

(declare-fun res!227997 () Bool)

(assert (=> b!537930 (=> (not res!227997) (not e!324598))))

(assert (=> b!537930 (= res!227997 (not ((_ is Nil!5224) (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834))))))))

(declare-fun b!537932 () Bool)

(declare-fun tail!709 (List!5234) List!5234)

(assert (=> b!537932 (= e!324598 (isPrefix!607 (tail!709 lt!222841) (tail!709 (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834))))))))

(declare-fun b!537931 () Bool)

(declare-fun res!228000 () Bool)

(assert (=> b!537931 (=> (not res!228000) (not e!324598))))

(declare-fun head!1180 (List!5234) C!3520)

(assert (=> b!537931 (= res!228000 (= (head!1180 lt!222841) (head!1180 (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834))))))))

(assert (= (and d!190044 (not res!227998)) b!537930))

(assert (= (and b!537930 res!227997) b!537931))

(assert (= (and b!537931 res!228000) b!537932))

(assert (= (and d!190044 (not res!227999)) b!537933))

(assert (=> b!537933 m!784529))

(declare-fun m!784973 () Bool)

(assert (=> b!537933 m!784973))

(assert (=> b!537933 m!784543))

(declare-fun m!784975 () Bool)

(assert (=> b!537932 m!784975))

(assert (=> b!537932 m!784529))

(declare-fun m!784977 () Bool)

(assert (=> b!537932 m!784977))

(assert (=> b!537932 m!784975))

(assert (=> b!537932 m!784977))

(declare-fun m!784979 () Bool)

(assert (=> b!537932 m!784979))

(declare-fun m!784981 () Bool)

(assert (=> b!537931 m!784981))

(assert (=> b!537931 m!784529))

(declare-fun m!784983 () Bool)

(assert (=> b!537931 m!784983))

(assert (=> b!537597 d!190044))

(declare-fun d!190046 () Bool)

(declare-fun res!228005 () Bool)

(declare-fun e!324601 () Bool)

(assert (=> d!190046 (=> (not res!228005) (not e!324601))))

(assert (=> d!190046 (= res!228005 (validRegex!438 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))))))

(assert (=> d!190046 (= (ruleValid!185 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834)))) e!324601)))

(declare-fun b!537938 () Bool)

(declare-fun res!228006 () Bool)

(assert (=> b!537938 (=> (not res!228006) (not e!324601))))

(assert (=> b!537938 (= res!228006 (not (nullable!343 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))))))

(declare-fun b!537939 () Bool)

(assert (=> b!537939 (= e!324601 (not (= (tag!1227 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (String!6689 ""))))))

(assert (= (and d!190046 res!228005) b!537938))

(assert (= (and b!537938 res!228006) b!537939))

(declare-fun m!784985 () Bool)

(assert (=> d!190046 m!784985))

(declare-fun m!784987 () Bool)

(assert (=> b!537938 m!784987))

(assert (=> b!537597 d!190046))

(declare-fun d!190048 () Bool)

(assert (=> d!190048 (= (size!4204 (_1!3412 (v!16121 lt!222834))) (size!4205 (originalCharacters!1004 (_1!3412 (v!16121 lt!222834)))))))

(declare-fun Unit!9133 () Unit!9125)

(assert (=> d!190048 (= (lemmaCharactersSize!44 (_1!3412 (v!16121 lt!222834))) Unit!9133)))

(declare-fun bs!67429 () Bool)

(assert (= bs!67429 d!190048))

(assert (=> bs!67429 m!784483))

(assert (=> b!537597 d!190048))

(declare-fun b!537943 () Bool)

(declare-fun e!324603 () Bool)

(assert (=> b!537943 (= e!324603 (>= (size!4205 input!2705) (size!4205 input!2705)))))

(declare-fun d!190050 () Bool)

(assert (=> d!190050 e!324603))

(declare-fun res!228009 () Bool)

(assert (=> d!190050 (=> res!228009 e!324603)))

(declare-fun lt!222949 () Bool)

(assert (=> d!190050 (= res!228009 (not lt!222949))))

(declare-fun e!324602 () Bool)

(assert (=> d!190050 (= lt!222949 e!324602)))

(declare-fun res!228008 () Bool)

(assert (=> d!190050 (=> res!228008 e!324602)))

(assert (=> d!190050 (= res!228008 ((_ is Nil!5224) input!2705))))

(assert (=> d!190050 (= (isPrefix!607 input!2705 input!2705) lt!222949)))

(declare-fun b!537940 () Bool)

(declare-fun e!324604 () Bool)

(assert (=> b!537940 (= e!324602 e!324604)))

(declare-fun res!228007 () Bool)

(assert (=> b!537940 (=> (not res!228007) (not e!324604))))

(assert (=> b!537940 (= res!228007 (not ((_ is Nil!5224) input!2705)))))

(declare-fun b!537942 () Bool)

(assert (=> b!537942 (= e!324604 (isPrefix!607 (tail!709 input!2705) (tail!709 input!2705)))))

(declare-fun b!537941 () Bool)

(declare-fun res!228010 () Bool)

(assert (=> b!537941 (=> (not res!228010) (not e!324604))))

(assert (=> b!537941 (= res!228010 (= (head!1180 input!2705) (head!1180 input!2705)))))

(assert (= (and d!190050 (not res!228008)) b!537940))

(assert (= (and b!537940 res!228007) b!537941))

(assert (= (and b!537941 res!228010) b!537942))

(assert (= (and d!190050 (not res!228009)) b!537943))

(assert (=> b!537943 m!784901))

(assert (=> b!537943 m!784901))

(declare-fun m!784989 () Bool)

(assert (=> b!537942 m!784989))

(assert (=> b!537942 m!784989))

(assert (=> b!537942 m!784989))

(assert (=> b!537942 m!784989))

(declare-fun m!784991 () Bool)

(assert (=> b!537942 m!784991))

(declare-fun m!784993 () Bool)

(assert (=> b!537941 m!784993))

(assert (=> b!537941 m!784993))

(assert (=> b!537597 d!190050))

(declare-fun d!190052 () Bool)

(declare-fun res!228011 () Bool)

(declare-fun e!324605 () Bool)

(assert (=> d!190052 (=> (not res!228011) (not e!324605))))

(assert (=> d!190052 (= res!228011 (validRegex!438 (regex!965 (rule!1671 token!491))))))

(assert (=> d!190052 (= (ruleValid!185 thiss!22590 (rule!1671 token!491)) e!324605)))

(declare-fun b!537944 () Bool)

(declare-fun res!228012 () Bool)

(assert (=> b!537944 (=> (not res!228012) (not e!324605))))

(assert (=> b!537944 (= res!228012 (not (nullable!343 (regex!965 (rule!1671 token!491)))))))

(declare-fun b!537945 () Bool)

(assert (=> b!537945 (= e!324605 (not (= (tag!1227 (rule!1671 token!491)) (String!6689 ""))))))

(assert (= (and d!190052 res!228011) b!537944))

(assert (= (and b!537944 res!228012) b!537945))

(assert (=> d!190052 m!784589))

(declare-fun m!784995 () Bool)

(assert (=> b!537944 m!784995))

(assert (=> b!537597 d!190052))

(declare-fun b!537947 () Bool)

(declare-fun e!324607 () List!5234)

(assert (=> b!537947 (= e!324607 (Cons!5224 (h!10625 lt!222841) (++!1453 (t!74235 lt!222841) (_2!3412 (v!16121 lt!222834)))))))

(declare-fun b!537948 () Bool)

(declare-fun res!228014 () Bool)

(declare-fun e!324606 () Bool)

(assert (=> b!537948 (=> (not res!228014) (not e!324606))))

(declare-fun lt!222950 () List!5234)

(assert (=> b!537948 (= res!228014 (= (size!4205 lt!222950) (+ (size!4205 lt!222841) (size!4205 (_2!3412 (v!16121 lt!222834))))))))

(declare-fun d!190054 () Bool)

(assert (=> d!190054 e!324606))

(declare-fun res!228013 () Bool)

(assert (=> d!190054 (=> (not res!228013) (not e!324606))))

(assert (=> d!190054 (= res!228013 (= (content!917 lt!222950) ((_ map or) (content!917 lt!222841) (content!917 (_2!3412 (v!16121 lt!222834))))))))

(assert (=> d!190054 (= lt!222950 e!324607)))

(declare-fun c!102186 () Bool)

(assert (=> d!190054 (= c!102186 ((_ is Nil!5224) lt!222841))))

(assert (=> d!190054 (= (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834))) lt!222950)))

(declare-fun b!537946 () Bool)

(assert (=> b!537946 (= e!324607 (_2!3412 (v!16121 lt!222834)))))

(declare-fun b!537949 () Bool)

(assert (=> b!537949 (= e!324606 (or (not (= (_2!3412 (v!16121 lt!222834)) Nil!5224)) (= lt!222950 lt!222841)))))

(assert (= (and d!190054 c!102186) b!537946))

(assert (= (and d!190054 (not c!102186)) b!537947))

(assert (= (and d!190054 res!228013) b!537948))

(assert (= (and b!537948 res!228014) b!537949))

(declare-fun m!784997 () Bool)

(assert (=> b!537947 m!784997))

(declare-fun m!784999 () Bool)

(assert (=> b!537948 m!784999))

(assert (=> b!537948 m!784543))

(declare-fun m!785001 () Bool)

(assert (=> b!537948 m!785001))

(declare-fun m!785003 () Bool)

(assert (=> d!190054 m!785003))

(declare-fun m!785005 () Bool)

(assert (=> d!190054 m!785005))

(declare-fun m!785007 () Bool)

(assert (=> d!190054 m!785007))

(assert (=> b!537597 d!190054))

(declare-fun b!537953 () Bool)

(declare-fun e!324609 () Bool)

(assert (=> b!537953 (= e!324609 (>= (size!4205 lt!222819) (size!4205 input!2705)))))

(declare-fun d!190056 () Bool)

(assert (=> d!190056 e!324609))

(declare-fun res!228017 () Bool)

(assert (=> d!190056 (=> res!228017 e!324609)))

(declare-fun lt!222951 () Bool)

(assert (=> d!190056 (= res!228017 (not lt!222951))))

(declare-fun e!324608 () Bool)

(assert (=> d!190056 (= lt!222951 e!324608)))

(declare-fun res!228016 () Bool)

(assert (=> d!190056 (=> res!228016 e!324608)))

(assert (=> d!190056 (= res!228016 ((_ is Nil!5224) input!2705))))

(assert (=> d!190056 (= (isPrefix!607 input!2705 lt!222819) lt!222951)))

(declare-fun b!537950 () Bool)

(declare-fun e!324610 () Bool)

(assert (=> b!537950 (= e!324608 e!324610)))

(declare-fun res!228015 () Bool)

(assert (=> b!537950 (=> (not res!228015) (not e!324610))))

(assert (=> b!537950 (= res!228015 (not ((_ is Nil!5224) lt!222819)))))

(declare-fun b!537952 () Bool)

(assert (=> b!537952 (= e!324610 (isPrefix!607 (tail!709 input!2705) (tail!709 lt!222819)))))

(declare-fun b!537951 () Bool)

(declare-fun res!228018 () Bool)

(assert (=> b!537951 (=> (not res!228018) (not e!324610))))

(assert (=> b!537951 (= res!228018 (= (head!1180 input!2705) (head!1180 lt!222819)))))

(assert (= (and d!190056 (not res!228016)) b!537950))

(assert (= (and b!537950 res!228015) b!537951))

(assert (= (and b!537951 res!228018) b!537952))

(assert (= (and d!190056 (not res!228017)) b!537953))

(declare-fun m!785009 () Bool)

(assert (=> b!537953 m!785009))

(assert (=> b!537953 m!784901))

(assert (=> b!537952 m!784989))

(declare-fun m!785011 () Bool)

(assert (=> b!537952 m!785011))

(assert (=> b!537952 m!784989))

(assert (=> b!537952 m!785011))

(declare-fun m!785013 () Bool)

(assert (=> b!537952 m!785013))

(assert (=> b!537951 m!784993))

(declare-fun m!785015 () Bool)

(assert (=> b!537951 m!785015))

(assert (=> b!537597 d!190056))

(declare-fun d!190058 () Bool)

(assert (=> d!190058 (isPrefix!607 lt!222841 (++!1453 lt!222841 (_2!3412 (v!16121 lt!222834))))))

(declare-fun lt!222954 () Unit!9125)

(declare-fun choose!3802 (List!5234 List!5234) Unit!9125)

(assert (=> d!190058 (= lt!222954 (choose!3802 lt!222841 (_2!3412 (v!16121 lt!222834))))))

(assert (=> d!190058 (= (lemmaConcatTwoListThenFirstIsPrefix!458 lt!222841 (_2!3412 (v!16121 lt!222834))) lt!222954)))

(declare-fun bs!67430 () Bool)

(assert (= bs!67430 d!190058))

(assert (=> bs!67430 m!784529))

(assert (=> bs!67430 m!784529))

(assert (=> bs!67430 m!784573))

(declare-fun m!785017 () Bool)

(assert (=> bs!67430 m!785017))

(assert (=> b!537597 d!190058))

(declare-fun d!190060 () Bool)

(assert (=> d!190060 (isPrefix!607 input!2705 input!2705)))

(declare-fun lt!222957 () Unit!9125)

(declare-fun choose!3804 (List!5234 List!5234) Unit!9125)

(assert (=> d!190060 (= lt!222957 (choose!3804 input!2705 input!2705))))

(assert (=> d!190060 (= (lemmaIsPrefixRefl!347 input!2705 input!2705) lt!222957)))

(declare-fun bs!67431 () Bool)

(assert (= bs!67431 d!190060))

(assert (=> bs!67431 m!784577))

(declare-fun m!785019 () Bool)

(assert (=> bs!67431 m!785019))

(assert (=> b!537597 d!190060))

(declare-fun d!190062 () Bool)

(declare-fun lt!222960 () List!5234)

(assert (=> d!190062 (= (++!1453 lt!222841 lt!222960) input!2705)))

(declare-fun e!324613 () List!5234)

(assert (=> d!190062 (= lt!222960 e!324613)))

(declare-fun c!102189 () Bool)

(assert (=> d!190062 (= c!102189 ((_ is Cons!5224) lt!222841))))

(assert (=> d!190062 (>= (size!4205 input!2705) (size!4205 lt!222841))))

(assert (=> d!190062 (= (getSuffix!130 input!2705 lt!222841) lt!222960)))

(declare-fun b!537958 () Bool)

(assert (=> b!537958 (= e!324613 (getSuffix!130 (tail!709 input!2705) (t!74235 lt!222841)))))

(declare-fun b!537959 () Bool)

(assert (=> b!537959 (= e!324613 input!2705)))

(assert (= (and d!190062 c!102189) b!537958))

(assert (= (and d!190062 (not c!102189)) b!537959))

(declare-fun m!785021 () Bool)

(assert (=> d!190062 m!785021))

(assert (=> d!190062 m!784901))

(assert (=> d!190062 m!784543))

(assert (=> b!537958 m!784989))

(assert (=> b!537958 m!784989))

(declare-fun m!785023 () Bool)

(assert (=> b!537958 m!785023))

(assert (=> b!537597 d!190062))

(declare-fun d!190064 () Bool)

(declare-fun lt!222961 () Int)

(assert (=> d!190064 (>= lt!222961 0)))

(declare-fun e!324614 () Int)

(assert (=> d!190064 (= lt!222961 e!324614)))

(declare-fun c!102190 () Bool)

(assert (=> d!190064 (= c!102190 ((_ is Nil!5224) lt!222841))))

(assert (=> d!190064 (= (size!4205 lt!222841) lt!222961)))

(declare-fun b!537960 () Bool)

(assert (=> b!537960 (= e!324614 0)))

(declare-fun b!537961 () Bool)

(assert (=> b!537961 (= e!324614 (+ 1 (size!4205 (t!74235 lt!222841))))))

(assert (= (and d!190064 c!102190) b!537960))

(assert (= (and d!190064 (not c!102190)) b!537961))

(declare-fun m!785025 () Bool)

(assert (=> b!537961 m!785025))

(assert (=> b!537597 d!190064))

(declare-fun d!190066 () Bool)

(declare-fun e!324625 () Bool)

(assert (=> d!190066 e!324625))

(declare-fun res!228035 () Bool)

(assert (=> d!190066 (=> (not res!228035) (not e!324625))))

(assert (=> d!190066 (= res!228035 (semiInverseModEq!381 (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))))))

(declare-fun Unit!9134 () Unit!9125)

(assert (=> d!190066 (= (lemmaInv!113 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) Unit!9134)))

(declare-fun b!537982 () Bool)

(assert (=> b!537982 (= e!324625 (equivClasses!364 (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))))))

(assert (= (and d!190066 res!228035) b!537982))

(declare-fun m!785027 () Bool)

(assert (=> d!190066 m!785027))

(declare-fun m!785029 () Bool)

(assert (=> b!537982 m!785029))

(assert (=> b!537597 d!190066))

(declare-fun b!537986 () Bool)

(declare-fun e!324627 () Bool)

(assert (=> b!537986 (= e!324627 (>= (size!4205 lt!222824) (size!4205 input!2705)))))

(declare-fun d!190068 () Bool)

(assert (=> d!190068 e!324627))

(declare-fun res!228038 () Bool)

(assert (=> d!190068 (=> res!228038 e!324627)))

(declare-fun lt!222972 () Bool)

(assert (=> d!190068 (= res!228038 (not lt!222972))))

(declare-fun e!324626 () Bool)

(assert (=> d!190068 (= lt!222972 e!324626)))

(declare-fun res!228037 () Bool)

(assert (=> d!190068 (=> res!228037 e!324626)))

(assert (=> d!190068 (= res!228037 ((_ is Nil!5224) input!2705))))

(assert (=> d!190068 (= (isPrefix!607 input!2705 lt!222824) lt!222972)))

(declare-fun b!537983 () Bool)

(declare-fun e!324628 () Bool)

(assert (=> b!537983 (= e!324626 e!324628)))

(declare-fun res!228036 () Bool)

(assert (=> b!537983 (=> (not res!228036) (not e!324628))))

(assert (=> b!537983 (= res!228036 (not ((_ is Nil!5224) lt!222824)))))

(declare-fun b!537985 () Bool)

(assert (=> b!537985 (= e!324628 (isPrefix!607 (tail!709 input!2705) (tail!709 lt!222824)))))

(declare-fun b!537984 () Bool)

(declare-fun res!228039 () Bool)

(assert (=> b!537984 (=> (not res!228039) (not e!324628))))

(assert (=> b!537984 (= res!228039 (= (head!1180 input!2705) (head!1180 lt!222824)))))

(assert (= (and d!190068 (not res!228037)) b!537983))

(assert (= (and b!537983 res!228036) b!537984))

(assert (= (and b!537984 res!228039) b!537985))

(assert (= (and d!190068 (not res!228038)) b!537986))

(assert (=> b!537986 m!784879))

(assert (=> b!537986 m!784901))

(assert (=> b!537985 m!784989))

(declare-fun m!785031 () Bool)

(assert (=> b!537985 m!785031))

(assert (=> b!537985 m!784989))

(assert (=> b!537985 m!785031))

(declare-fun m!785033 () Bool)

(assert (=> b!537985 m!785033))

(assert (=> b!537984 m!784993))

(declare-fun m!785035 () Bool)

(assert (=> b!537984 m!785035))

(assert (=> b!537597 d!190068))

(declare-fun b!537990 () Bool)

(declare-fun e!324630 () Bool)

(assert (=> b!537990 (= e!324630 (>= (size!4205 lt!222819) (size!4205 lt!222818)))))

(declare-fun d!190070 () Bool)

(assert (=> d!190070 e!324630))

(declare-fun res!228042 () Bool)

(assert (=> d!190070 (=> res!228042 e!324630)))

(declare-fun lt!222973 () Bool)

(assert (=> d!190070 (= res!228042 (not lt!222973))))

(declare-fun e!324629 () Bool)

(assert (=> d!190070 (= lt!222973 e!324629)))

(declare-fun res!228041 () Bool)

(assert (=> d!190070 (=> res!228041 e!324629)))

(assert (=> d!190070 (= res!228041 ((_ is Nil!5224) lt!222818))))

(assert (=> d!190070 (= (isPrefix!607 lt!222818 lt!222819) lt!222973)))

(declare-fun b!537987 () Bool)

(declare-fun e!324631 () Bool)

(assert (=> b!537987 (= e!324629 e!324631)))

(declare-fun res!228040 () Bool)

(assert (=> b!537987 (=> (not res!228040) (not e!324631))))

(assert (=> b!537987 (= res!228040 (not ((_ is Nil!5224) lt!222819)))))

(declare-fun b!537989 () Bool)

(assert (=> b!537989 (= e!324631 (isPrefix!607 (tail!709 lt!222818) (tail!709 lt!222819)))))

(declare-fun b!537988 () Bool)

(declare-fun res!228043 () Bool)

(assert (=> b!537988 (=> (not res!228043) (not e!324631))))

(assert (=> b!537988 (= res!228043 (= (head!1180 lt!222818) (head!1180 lt!222819)))))

(assert (= (and d!190070 (not res!228041)) b!537987))

(assert (= (and b!537987 res!228040) b!537988))

(assert (= (and b!537988 res!228043) b!537989))

(assert (= (and d!190070 (not res!228042)) b!537990))

(assert (=> b!537990 m!785009))

(assert (=> b!537990 m!784563))

(declare-fun m!785037 () Bool)

(assert (=> b!537989 m!785037))

(assert (=> b!537989 m!785011))

(assert (=> b!537989 m!785037))

(assert (=> b!537989 m!785011))

(declare-fun m!785039 () Bool)

(assert (=> b!537989 m!785039))

(declare-fun m!785041 () Bool)

(assert (=> b!537988 m!785041))

(assert (=> b!537988 m!785015))

(assert (=> b!537597 d!190070))

(declare-fun d!190072 () Bool)

(assert (=> d!190072 (isPrefix!607 lt!222818 (++!1453 lt!222818 suffix!1342))))

(declare-fun lt!222974 () Unit!9125)

(assert (=> d!190072 (= lt!222974 (choose!3802 lt!222818 suffix!1342))))

(assert (=> d!190072 (= (lemmaConcatTwoListThenFirstIsPrefix!458 lt!222818 suffix!1342) lt!222974)))

(declare-fun bs!67432 () Bool)

(assert (= bs!67432 d!190072))

(assert (=> bs!67432 m!784487))

(assert (=> bs!67432 m!784487))

(declare-fun m!785043 () Bool)

(assert (=> bs!67432 m!785043))

(declare-fun m!785045 () Bool)

(assert (=> bs!67432 m!785045))

(assert (=> b!537597 d!190072))

(declare-fun d!190074 () Bool)

(declare-fun lt!222975 () Int)

(assert (=> d!190074 (>= lt!222975 0)))

(declare-fun e!324632 () Int)

(assert (=> d!190074 (= lt!222975 e!324632)))

(declare-fun c!102193 () Bool)

(assert (=> d!190074 (= c!102193 ((_ is Nil!5224) lt!222818))))

(assert (=> d!190074 (= (size!4205 lt!222818) lt!222975)))

(declare-fun b!537991 () Bool)

(assert (=> b!537991 (= e!324632 0)))

(declare-fun b!537992 () Bool)

(assert (=> b!537992 (= e!324632 (+ 1 (size!4205 (t!74235 lt!222818))))))

(assert (= (and d!190074 c!102193) b!537991))

(assert (= (and d!190074 (not c!102193)) b!537992))

(declare-fun m!785047 () Bool)

(assert (=> b!537992 m!785047))

(assert (=> b!537597 d!190074))

(declare-fun d!190076 () Bool)

(assert (=> d!190076 (= (_2!3412 (v!16121 lt!222834)) lt!222833)))

(declare-fun lt!222978 () Unit!9125)

(declare-fun choose!3805 (List!5234 List!5234 List!5234 List!5234 List!5234) Unit!9125)

(assert (=> d!190076 (= lt!222978 (choose!3805 lt!222841 (_2!3412 (v!16121 lt!222834)) lt!222841 lt!222833 input!2705))))

(assert (=> d!190076 (isPrefix!607 lt!222841 input!2705)))

(assert (=> d!190076 (= (lemmaSamePrefixThenSameSuffix!334 lt!222841 (_2!3412 (v!16121 lt!222834)) lt!222841 lt!222833 input!2705) lt!222978)))

(declare-fun bs!67433 () Bool)

(assert (= bs!67433 d!190076))

(declare-fun m!785049 () Bool)

(assert (=> bs!67433 m!785049))

(declare-fun m!785051 () Bool)

(assert (=> bs!67433 m!785051))

(assert (=> b!537597 d!190076))

(declare-fun d!190078 () Bool)

(assert (=> d!190078 (ruleValid!185 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))))))

(declare-fun lt!222986 () Unit!9125)

(declare-fun choose!3806 (LexerInterface!851 Rule!1730 List!5235) Unit!9125)

(assert (=> d!190078 (= lt!222986 (choose!3806 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))) rules!3103))))

(assert (=> d!190078 (contains!1209 rules!3103 (rule!1671 (_1!3412 (v!16121 lt!222834))))))

(assert (=> d!190078 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!44 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))) rules!3103) lt!222986)))

(declare-fun bs!67434 () Bool)

(assert (= bs!67434 d!190078))

(assert (=> bs!67434 m!784545))

(declare-fun m!785053 () Bool)

(assert (=> bs!67434 m!785053))

(declare-fun m!785055 () Bool)

(assert (=> bs!67434 m!785055))

(assert (=> b!537597 d!190078))

(declare-fun d!190080 () Bool)

(declare-fun fromListB!517 (List!5234) BalanceConc!3372)

(assert (=> d!190080 (= (seqFromList!1163 lt!222841) (fromListB!517 lt!222841))))

(declare-fun bs!67435 () Bool)

(assert (= bs!67435 d!190080))

(declare-fun m!785061 () Bool)

(assert (=> bs!67435 m!785061))

(assert (=> b!537597 d!190080))

(declare-fun d!190082 () Bool)

(declare-fun list!2173 (Conc!1682) List!5234)

(assert (=> d!190082 (= (list!2171 (charsOf!594 (_1!3412 (v!16121 lt!222834)))) (list!2173 (c!102131 (charsOf!594 (_1!3412 (v!16121 lt!222834))))))))

(declare-fun bs!67436 () Bool)

(assert (= bs!67436 d!190082))

(declare-fun m!785093 () Bool)

(assert (=> bs!67436 m!785093))

(assert (=> b!537597 d!190082))

(declare-fun d!190084 () Bool)

(declare-fun dynLambda!3096 (Int BalanceConc!3372) TokenValue!989)

(assert (=> d!190084 (= (apply!1240 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (seqFromList!1163 lt!222841)) (dynLambda!3096 (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (seqFromList!1163 lt!222841)))))

(declare-fun b_lambda!20753 () Bool)

(assert (=> (not b_lambda!20753) (not d!190084)))

(declare-fun t!74254 () Bool)

(declare-fun tb!47587 () Bool)

(assert (=> (and b!537614 (= (toValue!1812 (transformation!965 (rule!1671 token!491))) (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))) t!74254) tb!47587))

(declare-fun result!53146 () Bool)

(assert (=> tb!47587 (= result!53146 (inv!21 (dynLambda!3096 (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (seqFromList!1163 lt!222841))))))

(declare-fun m!785103 () Bool)

(assert (=> tb!47587 m!785103))

(assert (=> d!190084 t!74254))

(declare-fun b_and!52615 () Bool)

(assert (= b_and!52587 (and (=> t!74254 result!53146) b_and!52615)))

(declare-fun t!74256 () Bool)

(declare-fun tb!47589 () Bool)

(assert (=> (and b!537601 (= (toValue!1812 (transformation!965 (h!10626 rules!3103))) (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))) t!74256) tb!47589))

(declare-fun result!53150 () Bool)

(assert (= result!53150 result!53146))

(assert (=> d!190084 t!74256))

(declare-fun b_and!52617 () Bool)

(assert (= b_and!52591 (and (=> t!74256 result!53150) b_and!52617)))

(assert (=> d!190084 m!784537))

(declare-fun m!785105 () Bool)

(assert (=> d!190084 m!785105))

(assert (=> b!537597 d!190084))

(declare-fun d!190088 () Bool)

(assert (=> d!190088 (ruleValid!185 thiss!22590 (rule!1671 token!491))))

(declare-fun lt!222992 () Unit!9125)

(assert (=> d!190088 (= lt!222992 (choose!3806 thiss!22590 (rule!1671 token!491) rules!3103))))

(assert (=> d!190088 (contains!1209 rules!3103 (rule!1671 token!491))))

(assert (=> d!190088 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!44 thiss!22590 (rule!1671 token!491) rules!3103) lt!222992)))

(declare-fun bs!67437 () Bool)

(assert (= bs!67437 d!190088))

(assert (=> bs!67437 m!784525))

(declare-fun m!785107 () Bool)

(assert (=> bs!67437 m!785107))

(assert (=> bs!67437 m!784521))

(assert (=> b!537597 d!190088))

(declare-fun d!190090 () Bool)

(assert (=> d!190090 (isPrefix!607 input!2705 (++!1453 input!2705 suffix!1342))))

(declare-fun lt!222993 () Unit!9125)

(assert (=> d!190090 (= lt!222993 (choose!3802 input!2705 suffix!1342))))

(assert (=> d!190090 (= (lemmaConcatTwoListThenFirstIsPrefix!458 input!2705 suffix!1342) lt!222993)))

(declare-fun bs!67438 () Bool)

(assert (= bs!67438 d!190090))

(assert (=> bs!67438 m!784583))

(assert (=> bs!67438 m!784583))

(declare-fun m!785117 () Bool)

(assert (=> bs!67438 m!785117))

(declare-fun m!785121 () Bool)

(assert (=> bs!67438 m!785121))

(assert (=> b!537597 d!190090))

(declare-fun d!190092 () Bool)

(declare-fun lt!222996 () BalanceConc!3372)

(assert (=> d!190092 (= (list!2171 lt!222996) (originalCharacters!1004 (_1!3412 (v!16121 lt!222834))))))

(declare-fun dynLambda!3097 (Int TokenValue!989) BalanceConc!3372)

(assert (=> d!190092 (= lt!222996 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (value!32369 (_1!3412 (v!16121 lt!222834)))))))

(assert (=> d!190092 (= (charsOf!594 (_1!3412 (v!16121 lt!222834))) lt!222996)))

(declare-fun b_lambda!20755 () Bool)

(assert (=> (not b_lambda!20755) (not d!190092)))

(declare-fun t!74258 () Bool)

(declare-fun tb!47591 () Bool)

(assert (=> (and b!537614 (= (toChars!1671 (transformation!965 (rule!1671 token!491))) (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))) t!74258) tb!47591))

(declare-fun b!538033 () Bool)

(declare-fun e!324649 () Bool)

(declare-fun tp!171524 () Bool)

(declare-fun inv!6561 (Conc!1682) Bool)

(assert (=> b!538033 (= e!324649 (and (inv!6561 (c!102131 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (value!32369 (_1!3412 (v!16121 lt!222834)))))) tp!171524))))

(declare-fun result!53154 () Bool)

(declare-fun inv!6562 (BalanceConc!3372) Bool)

(assert (=> tb!47591 (= result!53154 (and (inv!6562 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834))))) (value!32369 (_1!3412 (v!16121 lt!222834))))) e!324649))))

(assert (= tb!47591 b!538033))

(declare-fun m!785153 () Bool)

(assert (=> b!538033 m!785153))

(declare-fun m!785155 () Bool)

(assert (=> tb!47591 m!785155))

(assert (=> d!190092 t!74258))

(declare-fun b_and!52619 () Bool)

(assert (= b_and!52589 (and (=> t!74258 result!53154) b_and!52619)))

(declare-fun tb!47593 () Bool)

(declare-fun t!74260 () Bool)

(assert (=> (and b!537601 (= (toChars!1671 (transformation!965 (h!10626 rules!3103))) (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))) t!74260) tb!47593))

(declare-fun result!53160 () Bool)

(assert (= result!53160 result!53154))

(assert (=> d!190092 t!74260))

(declare-fun b_and!52621 () Bool)

(assert (= b_and!52593 (and (=> t!74260 result!53160) b_and!52621)))

(declare-fun m!785157 () Bool)

(assert (=> d!190092 m!785157))

(declare-fun m!785159 () Bool)

(assert (=> d!190092 m!785159))

(assert (=> b!537597 d!190092))

(declare-fun d!190094 () Bool)

(declare-fun e!324654 () Bool)

(assert (=> d!190094 e!324654))

(declare-fun res!228058 () Bool)

(assert (=> d!190094 (=> (not res!228058) (not e!324654))))

(assert (=> d!190094 (= res!228058 (semiInverseModEq!381 (toChars!1671 (transformation!965 (rule!1671 token!491))) (toValue!1812 (transformation!965 (rule!1671 token!491)))))))

(declare-fun Unit!9135 () Unit!9125)

(assert (=> d!190094 (= (lemmaInv!113 (transformation!965 (rule!1671 token!491))) Unit!9135)))

(declare-fun b!538041 () Bool)

(assert (=> b!538041 (= e!324654 (equivClasses!364 (toChars!1671 (transformation!965 (rule!1671 token!491))) (toValue!1812 (transformation!965 (rule!1671 token!491)))))))

(assert (= (and d!190094 res!228058) b!538041))

(assert (=> d!190094 m!784943))

(assert (=> b!538041 m!784945))

(assert (=> b!537597 d!190094))

(declare-fun d!190096 () Bool)

(assert (=> d!190096 (= (size!4204 token!491) (size!4205 (originalCharacters!1004 token!491)))))

(declare-fun Unit!9136 () Unit!9125)

(assert (=> d!190096 (= (lemmaCharactersSize!44 token!491) Unit!9136)))

(declare-fun bs!67439 () Bool)

(assert (= bs!67439 d!190096))

(assert (=> bs!67439 m!784517))

(assert (=> b!537597 d!190096))

(declare-fun d!190098 () Bool)

(assert (=> d!190098 (and (= lt!222818 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!222999 () Unit!9125)

(declare-fun choose!3807 (List!5234 List!5234 List!5234 List!5234) Unit!9125)

(assert (=> d!190098 (= lt!222999 (choose!3807 lt!222818 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!190098 (= (++!1453 lt!222818 suffix!1342) (++!1453 input!2705 suffix!1342))))

(assert (=> d!190098 (= (lemmaConcatSameAndSameSizesThenSameLists!50 lt!222818 suffix!1342 input!2705 suffix!1342) lt!222999)))

(declare-fun bs!67440 () Bool)

(assert (= bs!67440 d!190098))

(declare-fun m!785163 () Bool)

(assert (=> bs!67440 m!785163))

(assert (=> bs!67440 m!784487))

(assert (=> bs!67440 m!784583))

(assert (=> b!537597 d!190098))

(declare-fun d!190100 () Bool)

(assert (=> d!190100 (= (list!2171 (charsOf!594 token!491)) (list!2173 (c!102131 (charsOf!594 token!491))))))

(declare-fun bs!67441 () Bool)

(assert (= bs!67441 d!190100))

(declare-fun m!785167 () Bool)

(assert (=> bs!67441 m!785167))

(assert (=> b!537609 d!190100))

(declare-fun d!190102 () Bool)

(declare-fun lt!223000 () BalanceConc!3372)

(assert (=> d!190102 (= (list!2171 lt!223000) (originalCharacters!1004 token!491))))

(assert (=> d!190102 (= lt!223000 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 token!491))) (value!32369 token!491)))))

(assert (=> d!190102 (= (charsOf!594 token!491) lt!223000)))

(declare-fun b_lambda!20763 () Bool)

(assert (=> (not b_lambda!20763) (not d!190102)))

(declare-fun t!74270 () Bool)

(declare-fun tb!47603 () Bool)

(assert (=> (and b!537614 (= (toChars!1671 (transformation!965 (rule!1671 token!491))) (toChars!1671 (transformation!965 (rule!1671 token!491)))) t!74270) tb!47603))

(declare-fun b!538055 () Bool)

(declare-fun e!324669 () Bool)

(declare-fun tp!171547 () Bool)

(assert (=> b!538055 (= e!324669 (and (inv!6561 (c!102131 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 token!491))) (value!32369 token!491)))) tp!171547))))

(declare-fun result!53172 () Bool)

(assert (=> tb!47603 (= result!53172 (and (inv!6562 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 token!491))) (value!32369 token!491))) e!324669))))

(assert (= tb!47603 b!538055))

(declare-fun m!785169 () Bool)

(assert (=> b!538055 m!785169))

(declare-fun m!785171 () Bool)

(assert (=> tb!47603 m!785171))

(assert (=> d!190102 t!74270))

(declare-fun b_and!52627 () Bool)

(assert (= b_and!52619 (and (=> t!74270 result!53172) b_and!52627)))

(declare-fun t!74272 () Bool)

(declare-fun tb!47605 () Bool)

(assert (=> (and b!537601 (= (toChars!1671 (transformation!965 (h!10626 rules!3103))) (toChars!1671 (transformation!965 (rule!1671 token!491)))) t!74272) tb!47605))

(declare-fun result!53174 () Bool)

(assert (= result!53174 result!53172))

(assert (=> d!190102 t!74272))

(declare-fun b_and!52629 () Bool)

(assert (= b_and!52621 (and (=> t!74272 result!53174) b_and!52629)))

(declare-fun m!785173 () Bool)

(assert (=> d!190102 m!785173))

(declare-fun m!785175 () Bool)

(assert (=> d!190102 m!785175))

(assert (=> b!537609 d!190102))

(declare-fun d!190104 () Bool)

(declare-fun res!228063 () Bool)

(declare-fun e!324672 () Bool)

(assert (=> d!190104 (=> (not res!228063) (not e!324672))))

(assert (=> d!190104 (= res!228063 (not (isEmpty!3776 (originalCharacters!1004 token!491))))))

(assert (=> d!190104 (= (inv!6558 token!491) e!324672)))

(declare-fun b!538060 () Bool)

(declare-fun res!228064 () Bool)

(assert (=> b!538060 (=> (not res!228064) (not e!324672))))

(assert (=> b!538060 (= res!228064 (= (originalCharacters!1004 token!491) (list!2171 (dynLambda!3097 (toChars!1671 (transformation!965 (rule!1671 token!491))) (value!32369 token!491)))))))

(declare-fun b!538061 () Bool)

(assert (=> b!538061 (= e!324672 (= (size!4204 token!491) (size!4205 (originalCharacters!1004 token!491))))))

(assert (= (and d!190104 res!228063) b!538060))

(assert (= (and b!538060 res!228064) b!538061))

(declare-fun b_lambda!20765 () Bool)

(assert (=> (not b_lambda!20765) (not b!538060)))

(assert (=> b!538060 t!74270))

(declare-fun b_and!52631 () Bool)

(assert (= b_and!52627 (and (=> t!74270 result!53172) b_and!52631)))

(assert (=> b!538060 t!74272))

(declare-fun b_and!52633 () Bool)

(assert (= b_and!52629 (and (=> t!74272 result!53174) b_and!52633)))

(declare-fun m!785177 () Bool)

(assert (=> d!190104 m!785177))

(assert (=> b!538060 m!785175))

(assert (=> b!538060 m!785175))

(declare-fun m!785179 () Bool)

(assert (=> b!538060 m!785179))

(assert (=> b!538061 m!784517))

(assert (=> start!49656 d!190104))

(declare-fun d!190106 () Bool)

(declare-fun lt!223001 () List!5234)

(assert (=> d!190106 (= (++!1453 lt!222818 lt!223001) lt!222824)))

(declare-fun e!324673 () List!5234)

(assert (=> d!190106 (= lt!223001 e!324673)))

(declare-fun c!102196 () Bool)

(assert (=> d!190106 (= c!102196 ((_ is Cons!5224) lt!222818))))

(assert (=> d!190106 (>= (size!4205 lt!222824) (size!4205 lt!222818))))

(assert (=> d!190106 (= (getSuffix!130 lt!222824 lt!222818) lt!223001)))

(declare-fun b!538062 () Bool)

(assert (=> b!538062 (= e!324673 (getSuffix!130 (tail!709 lt!222824) (t!74235 lt!222818)))))

(declare-fun b!538063 () Bool)

(assert (=> b!538063 (= e!324673 lt!222824)))

(assert (= (and d!190106 c!102196) b!538062))

(assert (= (and d!190106 (not c!102196)) b!538063))

(declare-fun m!785181 () Bool)

(assert (=> d!190106 m!785181))

(assert (=> d!190106 m!784879))

(assert (=> d!190106 m!784563))

(assert (=> b!538062 m!785031))

(assert (=> b!538062 m!785031))

(declare-fun m!785183 () Bool)

(assert (=> b!538062 m!785183))

(assert (=> b!537611 d!190106))

(declare-fun d!190108 () Bool)

(assert (=> d!190108 (= suffix!1342 lt!222828)))

(declare-fun lt!223002 () Unit!9125)

(assert (=> d!190108 (= lt!223002 (choose!3805 lt!222818 suffix!1342 lt!222818 lt!222828 lt!222824))))

(assert (=> d!190108 (isPrefix!607 lt!222818 lt!222824)))

(assert (=> d!190108 (= (lemmaSamePrefixThenSameSuffix!334 lt!222818 suffix!1342 lt!222818 lt!222828 lt!222824) lt!223002)))

(declare-fun bs!67442 () Bool)

(assert (= bs!67442 d!190108))

(declare-fun m!785185 () Bool)

(assert (=> bs!67442 m!785185))

(declare-fun m!785187 () Bool)

(assert (=> bs!67442 m!785187))

(assert (=> b!537611 d!190108))

(declare-fun b!538082 () Bool)

(declare-fun res!228083 () Bool)

(declare-fun e!324682 () Bool)

(assert (=> b!538082 (=> (not res!228083) (not e!324682))))

(declare-fun lt!223013 () Option!1315)

(assert (=> b!538082 (= res!228083 (= (rule!1671 (_1!3412 (get!1962 lt!223013))) (rule!1671 (_1!3412 (v!16121 lt!222834)))))))

(declare-fun b!538083 () Bool)

(declare-fun res!228082 () Bool)

(assert (=> b!538083 (=> (not res!228082) (not e!324682))))

(assert (=> b!538083 (= res!228082 (= (value!32369 (_1!3412 (get!1962 lt!223013))) (apply!1240 (transformation!965 (rule!1671 (_1!3412 (get!1962 lt!223013)))) (seqFromList!1163 (originalCharacters!1004 (_1!3412 (get!1962 lt!223013)))))))))

(declare-fun b!538084 () Bool)

(declare-fun e!324684 () Bool)

(assert (=> b!538084 (= e!324684 e!324682)))

(declare-fun res!228079 () Bool)

(assert (=> b!538084 (=> (not res!228079) (not e!324682))))

(assert (=> b!538084 (= res!228079 (matchR!457 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!223013))))))))

(declare-fun b!538085 () Bool)

(assert (=> b!538085 (= e!324682 (= (size!4204 (_1!3412 (get!1962 lt!223013))) (size!4205 (originalCharacters!1004 (_1!3412 (get!1962 lt!223013))))))))

(declare-fun b!538086 () Bool)

(declare-fun res!228084 () Bool)

(assert (=> b!538086 (=> (not res!228084) (not e!324682))))

(assert (=> b!538086 (= res!228084 (= (++!1453 (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!223013)))) (_2!3412 (get!1962 lt!223013))) input!2705))))

(declare-fun b!538087 () Bool)

(declare-fun e!324683 () Option!1315)

(assert (=> b!538087 (= e!324683 None!1314)))

(declare-fun b!538089 () Bool)

(declare-datatypes ((tuple2!6300 0))(
  ( (tuple2!6301 (_1!3414 List!5234) (_2!3414 List!5234)) )
))
(declare-fun lt!223015 () tuple2!6300)

(declare-fun size!4207 (BalanceConc!3372) Int)

(assert (=> b!538089 (= e!324683 (Some!1314 (tuple2!6297 (Token!1667 (apply!1240 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (seqFromList!1163 (_1!3414 lt!223015))) (rule!1671 (_1!3412 (v!16121 lt!222834))) (size!4207 (seqFromList!1163 (_1!3414 lt!223015))) (_1!3414 lt!223015)) (_2!3414 lt!223015))))))

(declare-fun lt!223016 () Unit!9125)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!111 (Regex!1299 List!5234) Unit!9125)

(assert (=> b!538089 (= lt!223016 (longestMatchIsAcceptedByMatchOrIsEmpty!111 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) input!2705))))

(declare-fun res!228080 () Bool)

(declare-fun findLongestMatchInner!127 (Regex!1299 List!5234 Int List!5234 List!5234 Int) tuple2!6300)

(assert (=> b!538089 (= res!228080 (isEmpty!3776 (_1!3414 (findLongestMatchInner!127 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) Nil!5224 (size!4205 Nil!5224) input!2705 input!2705 (size!4205 input!2705)))))))

(declare-fun e!324685 () Bool)

(assert (=> b!538089 (=> res!228080 e!324685)))

(assert (=> b!538089 e!324685))

(declare-fun lt!223017 () Unit!9125)

(assert (=> b!538089 (= lt!223017 lt!223016)))

(declare-fun lt!223014 () Unit!9125)

(declare-fun lemmaSemiInverse!108 (TokenValueInjection!1746 BalanceConc!3372) Unit!9125)

(assert (=> b!538089 (= lt!223014 (lemmaSemiInverse!108 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (seqFromList!1163 (_1!3414 lt!223015))))))

(declare-fun b!538090 () Bool)

(assert (=> b!538090 (= e!324685 (matchR!457 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (_1!3414 (findLongestMatchInner!127 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) Nil!5224 (size!4205 Nil!5224) input!2705 input!2705 (size!4205 input!2705)))))))

(declare-fun d!190110 () Bool)

(assert (=> d!190110 e!324684))

(declare-fun res!228081 () Bool)

(assert (=> d!190110 (=> res!228081 e!324684)))

(assert (=> d!190110 (= res!228081 (isEmpty!3778 lt!223013))))

(assert (=> d!190110 (= lt!223013 e!324683)))

(declare-fun c!102199 () Bool)

(assert (=> d!190110 (= c!102199 (isEmpty!3776 (_1!3414 lt!223015)))))

(declare-fun findLongestMatch!106 (Regex!1299 List!5234) tuple2!6300)

(assert (=> d!190110 (= lt!223015 (findLongestMatch!106 (regex!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) input!2705))))

(assert (=> d!190110 (ruleValid!185 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))))))

(assert (=> d!190110 (= (maxPrefixOneRule!264 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))) input!2705) lt!223013)))

(declare-fun b!538088 () Bool)

(declare-fun res!228085 () Bool)

(assert (=> b!538088 (=> (not res!228085) (not e!324682))))

(assert (=> b!538088 (= res!228085 (< (size!4205 (_2!3412 (get!1962 lt!223013))) (size!4205 input!2705)))))

(assert (= (and d!190110 c!102199) b!538087))

(assert (= (and d!190110 (not c!102199)) b!538089))

(assert (= (and b!538089 (not res!228080)) b!538090))

(assert (= (and d!190110 (not res!228081)) b!538084))

(assert (= (and b!538084 res!228079) b!538086))

(assert (= (and b!538086 res!228084) b!538088))

(assert (= (and b!538088 res!228085) b!538082))

(assert (= (and b!538082 res!228083) b!538083))

(assert (= (and b!538083 res!228082) b!538085))

(declare-fun m!785189 () Bool)

(assert (=> d!190110 m!785189))

(declare-fun m!785191 () Bool)

(assert (=> d!190110 m!785191))

(declare-fun m!785193 () Bool)

(assert (=> d!190110 m!785193))

(assert (=> d!190110 m!784545))

(declare-fun m!785195 () Bool)

(assert (=> b!538082 m!785195))

(assert (=> b!538088 m!785195))

(declare-fun m!785197 () Bool)

(assert (=> b!538088 m!785197))

(assert (=> b!538088 m!784901))

(declare-fun m!785199 () Bool)

(assert (=> b!538089 m!785199))

(assert (=> b!538089 m!785199))

(declare-fun m!785201 () Bool)

(assert (=> b!538089 m!785201))

(assert (=> b!538089 m!785199))

(declare-fun m!785203 () Bool)

(assert (=> b!538089 m!785203))

(declare-fun m!785205 () Bool)

(assert (=> b!538089 m!785205))

(assert (=> b!538089 m!784901))

(declare-fun m!785207 () Bool)

(assert (=> b!538089 m!785207))

(assert (=> b!538089 m!784901))

(declare-fun m!785209 () Bool)

(assert (=> b!538089 m!785209))

(assert (=> b!538089 m!785207))

(assert (=> b!538089 m!785199))

(declare-fun m!785211 () Bool)

(assert (=> b!538089 m!785211))

(declare-fun m!785213 () Bool)

(assert (=> b!538089 m!785213))

(assert (=> b!538084 m!785195))

(declare-fun m!785215 () Bool)

(assert (=> b!538084 m!785215))

(assert (=> b!538084 m!785215))

(declare-fun m!785217 () Bool)

(assert (=> b!538084 m!785217))

(assert (=> b!538084 m!785217))

(declare-fun m!785219 () Bool)

(assert (=> b!538084 m!785219))

(assert (=> b!538085 m!785195))

(declare-fun m!785221 () Bool)

(assert (=> b!538085 m!785221))

(assert (=> b!538083 m!785195))

(declare-fun m!785223 () Bool)

(assert (=> b!538083 m!785223))

(assert (=> b!538083 m!785223))

(declare-fun m!785225 () Bool)

(assert (=> b!538083 m!785225))

(assert (=> b!538086 m!785195))

(assert (=> b!538086 m!785215))

(assert (=> b!538086 m!785215))

(assert (=> b!538086 m!785217))

(assert (=> b!538086 m!785217))

(declare-fun m!785227 () Bool)

(assert (=> b!538086 m!785227))

(assert (=> b!538090 m!785207))

(assert (=> b!538090 m!784901))

(assert (=> b!538090 m!785207))

(assert (=> b!538090 m!784901))

(assert (=> b!538090 m!785209))

(declare-fun m!785229 () Bool)

(assert (=> b!538090 m!785229))

(assert (=> b!537611 d!190110))

(declare-fun d!190112 () Bool)

(assert (=> d!190112 (= (seqFromList!1163 lt!222818) (fromListB!517 lt!222818))))

(declare-fun bs!67443 () Bool)

(assert (= bs!67443 d!190112))

(declare-fun m!785231 () Bool)

(assert (=> bs!67443 m!785231))

(assert (=> b!537611 d!190112))

(declare-fun d!190114 () Bool)

(assert (=> d!190114 (= (maxPrefixOneRule!264 thiss!22590 (rule!1671 (_1!3412 (v!16121 lt!222834))) input!2705) (Some!1314 (tuple2!6297 (Token!1667 (apply!1240 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))) (seqFromList!1163 lt!222841)) (rule!1671 (_1!3412 (v!16121 lt!222834))) (size!4205 lt!222841) lt!222841) (_2!3412 (v!16121 lt!222834)))))))

(declare-fun lt!223020 () Unit!9125)

(declare-fun choose!3808 (LexerInterface!851 List!5235 List!5234 List!5234 List!5234 Rule!1730) Unit!9125)

(assert (=> d!190114 (= lt!223020 (choose!3808 thiss!22590 rules!3103 lt!222841 input!2705 (_2!3412 (v!16121 lt!222834)) (rule!1671 (_1!3412 (v!16121 lt!222834)))))))

(assert (=> d!190114 (not (isEmpty!3777 rules!3103))))

(assert (=> d!190114 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!16 thiss!22590 rules!3103 lt!222841 input!2705 (_2!3412 (v!16121 lt!222834)) (rule!1671 (_1!3412 (v!16121 lt!222834)))) lt!223020)))

(declare-fun bs!67444 () Bool)

(assert (= bs!67444 d!190114))

(assert (=> bs!67444 m!784543))

(assert (=> bs!67444 m!784537))

(assert (=> bs!67444 m!784585))

(assert (=> bs!67444 m!784501))

(assert (=> bs!67444 m!784537))

(assert (=> bs!67444 m!784539))

(declare-fun m!785233 () Bool)

(assert (=> bs!67444 m!785233))

(assert (=> b!537611 d!190114))

(declare-fun d!190116 () Bool)

(assert (=> d!190116 (= (maxPrefixOneRule!264 thiss!22590 (rule!1671 token!491) lt!222824) (Some!1314 (tuple2!6297 (Token!1667 (apply!1240 (transformation!965 (rule!1671 token!491)) (seqFromList!1163 lt!222818)) (rule!1671 token!491) (size!4205 lt!222818) lt!222818) suffix!1342)))))

(declare-fun lt!223021 () Unit!9125)

(assert (=> d!190116 (= lt!223021 (choose!3808 thiss!22590 rules!3103 lt!222818 lt!222824 suffix!1342 (rule!1671 token!491)))))

(assert (=> d!190116 (not (isEmpty!3777 rules!3103))))

(assert (=> d!190116 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!16 thiss!22590 rules!3103 lt!222818 lt!222824 suffix!1342 (rule!1671 token!491)) lt!223021)))

(declare-fun bs!67445 () Bool)

(assert (= bs!67445 d!190116))

(assert (=> bs!67445 m!784563))

(assert (=> bs!67445 m!784497))

(assert (=> bs!67445 m!784585))

(assert (=> bs!67445 m!784505))

(assert (=> bs!67445 m!784497))

(assert (=> bs!67445 m!784499))

(declare-fun m!785235 () Bool)

(assert (=> bs!67445 m!785235))

(assert (=> b!537611 d!190116))

(declare-fun b!538091 () Bool)

(declare-fun res!228090 () Bool)

(declare-fun e!324686 () Bool)

(assert (=> b!538091 (=> (not res!228090) (not e!324686))))

(declare-fun lt!223022 () Option!1315)

(assert (=> b!538091 (= res!228090 (= (rule!1671 (_1!3412 (get!1962 lt!223022))) (rule!1671 token!491)))))

(declare-fun b!538092 () Bool)

(declare-fun res!228089 () Bool)

(assert (=> b!538092 (=> (not res!228089) (not e!324686))))

(assert (=> b!538092 (= res!228089 (= (value!32369 (_1!3412 (get!1962 lt!223022))) (apply!1240 (transformation!965 (rule!1671 (_1!3412 (get!1962 lt!223022)))) (seqFromList!1163 (originalCharacters!1004 (_1!3412 (get!1962 lt!223022)))))))))

(declare-fun b!538093 () Bool)

(declare-fun e!324688 () Bool)

(assert (=> b!538093 (= e!324688 e!324686)))

(declare-fun res!228086 () Bool)

(assert (=> b!538093 (=> (not res!228086) (not e!324686))))

(assert (=> b!538093 (= res!228086 (matchR!457 (regex!965 (rule!1671 token!491)) (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!223022))))))))

(declare-fun b!538094 () Bool)

(assert (=> b!538094 (= e!324686 (= (size!4204 (_1!3412 (get!1962 lt!223022))) (size!4205 (originalCharacters!1004 (_1!3412 (get!1962 lt!223022))))))))

(declare-fun b!538095 () Bool)

(declare-fun res!228091 () Bool)

(assert (=> b!538095 (=> (not res!228091) (not e!324686))))

(assert (=> b!538095 (= res!228091 (= (++!1453 (list!2171 (charsOf!594 (_1!3412 (get!1962 lt!223022)))) (_2!3412 (get!1962 lt!223022))) lt!222824))))

(declare-fun b!538096 () Bool)

(declare-fun e!324687 () Option!1315)

(assert (=> b!538096 (= e!324687 None!1314)))

(declare-fun b!538098 () Bool)

(declare-fun lt!223024 () tuple2!6300)

(assert (=> b!538098 (= e!324687 (Some!1314 (tuple2!6297 (Token!1667 (apply!1240 (transformation!965 (rule!1671 token!491)) (seqFromList!1163 (_1!3414 lt!223024))) (rule!1671 token!491) (size!4207 (seqFromList!1163 (_1!3414 lt!223024))) (_1!3414 lt!223024)) (_2!3414 lt!223024))))))

(declare-fun lt!223025 () Unit!9125)

(assert (=> b!538098 (= lt!223025 (longestMatchIsAcceptedByMatchOrIsEmpty!111 (regex!965 (rule!1671 token!491)) lt!222824))))

(declare-fun res!228087 () Bool)

(assert (=> b!538098 (= res!228087 (isEmpty!3776 (_1!3414 (findLongestMatchInner!127 (regex!965 (rule!1671 token!491)) Nil!5224 (size!4205 Nil!5224) lt!222824 lt!222824 (size!4205 lt!222824)))))))

(declare-fun e!324689 () Bool)

(assert (=> b!538098 (=> res!228087 e!324689)))

(assert (=> b!538098 e!324689))

(declare-fun lt!223026 () Unit!9125)

(assert (=> b!538098 (= lt!223026 lt!223025)))

(declare-fun lt!223023 () Unit!9125)

(assert (=> b!538098 (= lt!223023 (lemmaSemiInverse!108 (transformation!965 (rule!1671 token!491)) (seqFromList!1163 (_1!3414 lt!223024))))))

(declare-fun b!538099 () Bool)

(assert (=> b!538099 (= e!324689 (matchR!457 (regex!965 (rule!1671 token!491)) (_1!3414 (findLongestMatchInner!127 (regex!965 (rule!1671 token!491)) Nil!5224 (size!4205 Nil!5224) lt!222824 lt!222824 (size!4205 lt!222824)))))))

(declare-fun d!190118 () Bool)

(assert (=> d!190118 e!324688))

(declare-fun res!228088 () Bool)

(assert (=> d!190118 (=> res!228088 e!324688)))

(assert (=> d!190118 (= res!228088 (isEmpty!3778 lt!223022))))

(assert (=> d!190118 (= lt!223022 e!324687)))

(declare-fun c!102200 () Bool)

(assert (=> d!190118 (= c!102200 (isEmpty!3776 (_1!3414 lt!223024)))))

(assert (=> d!190118 (= lt!223024 (findLongestMatch!106 (regex!965 (rule!1671 token!491)) lt!222824))))

(assert (=> d!190118 (ruleValid!185 thiss!22590 (rule!1671 token!491))))

(assert (=> d!190118 (= (maxPrefixOneRule!264 thiss!22590 (rule!1671 token!491) lt!222824) lt!223022)))

(declare-fun b!538097 () Bool)

(declare-fun res!228092 () Bool)

(assert (=> b!538097 (=> (not res!228092) (not e!324686))))

(assert (=> b!538097 (= res!228092 (< (size!4205 (_2!3412 (get!1962 lt!223022))) (size!4205 lt!222824)))))

(assert (= (and d!190118 c!102200) b!538096))

(assert (= (and d!190118 (not c!102200)) b!538098))

(assert (= (and b!538098 (not res!228087)) b!538099))

(assert (= (and d!190118 (not res!228088)) b!538093))

(assert (= (and b!538093 res!228086) b!538095))

(assert (= (and b!538095 res!228091) b!538097))

(assert (= (and b!538097 res!228092) b!538091))

(assert (= (and b!538091 res!228090) b!538092))

(assert (= (and b!538092 res!228089) b!538094))

(declare-fun m!785237 () Bool)

(assert (=> d!190118 m!785237))

(declare-fun m!785239 () Bool)

(assert (=> d!190118 m!785239))

(declare-fun m!785241 () Bool)

(assert (=> d!190118 m!785241))

(assert (=> d!190118 m!784525))

(declare-fun m!785243 () Bool)

(assert (=> b!538091 m!785243))

(assert (=> b!538097 m!785243))

(declare-fun m!785245 () Bool)

(assert (=> b!538097 m!785245))

(assert (=> b!538097 m!784879))

(declare-fun m!785247 () Bool)

(assert (=> b!538098 m!785247))

(assert (=> b!538098 m!785247))

(declare-fun m!785249 () Bool)

(assert (=> b!538098 m!785249))

(assert (=> b!538098 m!785247))

(declare-fun m!785251 () Bool)

(assert (=> b!538098 m!785251))

(declare-fun m!785253 () Bool)

(assert (=> b!538098 m!785253))

(assert (=> b!538098 m!784879))

(assert (=> b!538098 m!785207))

(assert (=> b!538098 m!784879))

(declare-fun m!785255 () Bool)

(assert (=> b!538098 m!785255))

(assert (=> b!538098 m!785207))

(assert (=> b!538098 m!785247))

(declare-fun m!785257 () Bool)

(assert (=> b!538098 m!785257))

(declare-fun m!785259 () Bool)

(assert (=> b!538098 m!785259))

(assert (=> b!538093 m!785243))

(declare-fun m!785261 () Bool)

(assert (=> b!538093 m!785261))

(assert (=> b!538093 m!785261))

(declare-fun m!785263 () Bool)

(assert (=> b!538093 m!785263))

(assert (=> b!538093 m!785263))

(declare-fun m!785265 () Bool)

(assert (=> b!538093 m!785265))

(assert (=> b!538094 m!785243))

(declare-fun m!785267 () Bool)

(assert (=> b!538094 m!785267))

(assert (=> b!538092 m!785243))

(declare-fun m!785269 () Bool)

(assert (=> b!538092 m!785269))

(assert (=> b!538092 m!785269))

(declare-fun m!785271 () Bool)

(assert (=> b!538092 m!785271))

(assert (=> b!538095 m!785243))

(assert (=> b!538095 m!785261))

(assert (=> b!538095 m!785261))

(assert (=> b!538095 m!785263))

(assert (=> b!538095 m!785263))

(declare-fun m!785273 () Bool)

(assert (=> b!538095 m!785273))

(assert (=> b!538099 m!785207))

(assert (=> b!538099 m!784879))

(assert (=> b!538099 m!785207))

(assert (=> b!538099 m!784879))

(assert (=> b!538099 m!785255))

(declare-fun m!785275 () Bool)

(assert (=> b!538099 m!785275))

(assert (=> b!537611 d!190118))

(declare-fun d!190120 () Bool)

(assert (=> d!190120 (= (apply!1240 (transformation!965 (rule!1671 token!491)) (seqFromList!1163 lt!222818)) (dynLambda!3096 (toValue!1812 (transformation!965 (rule!1671 token!491))) (seqFromList!1163 lt!222818)))))

(declare-fun b_lambda!20767 () Bool)

(assert (=> (not b_lambda!20767) (not d!190120)))

(declare-fun t!74274 () Bool)

(declare-fun tb!47607 () Bool)

(assert (=> (and b!537614 (= (toValue!1812 (transformation!965 (rule!1671 token!491))) (toValue!1812 (transformation!965 (rule!1671 token!491)))) t!74274) tb!47607))

(declare-fun result!53176 () Bool)

(assert (=> tb!47607 (= result!53176 (inv!21 (dynLambda!3096 (toValue!1812 (transformation!965 (rule!1671 token!491))) (seqFromList!1163 lt!222818))))))

(declare-fun m!785277 () Bool)

(assert (=> tb!47607 m!785277))

(assert (=> d!190120 t!74274))

(declare-fun b_and!52635 () Bool)

(assert (= b_and!52615 (and (=> t!74274 result!53176) b_and!52635)))

(declare-fun tb!47609 () Bool)

(declare-fun t!74276 () Bool)

(assert (=> (and b!537601 (= (toValue!1812 (transformation!965 (h!10626 rules!3103))) (toValue!1812 (transformation!965 (rule!1671 token!491)))) t!74276) tb!47609))

(declare-fun result!53178 () Bool)

(assert (= result!53178 result!53176))

(assert (=> d!190120 t!74276))

(declare-fun b_and!52637 () Bool)

(assert (= b_and!52617 (and (=> t!74276 result!53178) b_and!52637)))

(assert (=> d!190120 m!784497))

(declare-fun m!785279 () Bool)

(assert (=> d!190120 m!785279))

(assert (=> b!537611 d!190120))

(declare-fun d!190122 () Bool)

(assert (=> d!190122 (= (isEmpty!3776 input!2705) ((_ is Nil!5224) input!2705))))

(assert (=> b!537600 d!190122))

(declare-fun d!190124 () Bool)

(declare-fun lt!223027 () Int)

(assert (=> d!190124 (>= lt!223027 0)))

(declare-fun e!324691 () Int)

(assert (=> d!190124 (= lt!223027 e!324691)))

(declare-fun c!102201 () Bool)

(assert (=> d!190124 (= c!102201 ((_ is Nil!5224) (originalCharacters!1004 (_1!3412 (v!16121 lt!222834)))))))

(assert (=> d!190124 (= (size!4205 (originalCharacters!1004 (_1!3412 (v!16121 lt!222834)))) lt!223027)))

(declare-fun b!538100 () Bool)

(assert (=> b!538100 (= e!324691 0)))

(declare-fun b!538101 () Bool)

(assert (=> b!538101 (= e!324691 (+ 1 (size!4205 (t!74235 (originalCharacters!1004 (_1!3412 (v!16121 lt!222834)))))))))

(assert (= (and d!190124 c!102201) b!538100))

(assert (= (and d!190124 (not c!102201)) b!538101))

(declare-fun m!785281 () Bool)

(assert (=> b!538101 m!785281))

(assert (=> b!537621 d!190124))

(declare-fun b!538106 () Bool)

(declare-fun e!324694 () Bool)

(declare-fun tp!171550 () Bool)

(assert (=> b!538106 (= e!324694 (and tp_is_empty!2953 tp!171550))))

(assert (=> b!537612 (= tp!171496 e!324694)))

(assert (= (and b!537612 ((_ is Cons!5224) (originalCharacters!1004 token!491))) b!538106))

(declare-fun b!538118 () Bool)

(declare-fun e!324697 () Bool)

(declare-fun tp!171562 () Bool)

(declare-fun tp!171565 () Bool)

(assert (=> b!538118 (= e!324697 (and tp!171562 tp!171565))))

(declare-fun b!538119 () Bool)

(declare-fun tp!171561 () Bool)

(assert (=> b!538119 (= e!324697 tp!171561)))

(declare-fun b!538117 () Bool)

(assert (=> b!538117 (= e!324697 tp_is_empty!2953)))

(declare-fun b!538120 () Bool)

(declare-fun tp!171564 () Bool)

(declare-fun tp!171563 () Bool)

(assert (=> b!538120 (= e!324697 (and tp!171564 tp!171563))))

(assert (=> b!537596 (= tp!171495 e!324697)))

(assert (= (and b!537596 ((_ is ElementMatch!1299) (regex!965 (rule!1671 token!491)))) b!538117))

(assert (= (and b!537596 ((_ is Concat!2288) (regex!965 (rule!1671 token!491)))) b!538118))

(assert (= (and b!537596 ((_ is Star!1299) (regex!965 (rule!1671 token!491)))) b!538119))

(assert (= (and b!537596 ((_ is Union!1299) (regex!965 (rule!1671 token!491)))) b!538120))

(declare-fun b!538131 () Bool)

(declare-fun b_free!14765 () Bool)

(declare-fun b_next!14781 () Bool)

(assert (=> b!538131 (= b_free!14765 (not b_next!14781))))

(declare-fun t!74278 () Bool)

(declare-fun tb!47611 () Bool)

(assert (=> (and b!538131 (= (toValue!1812 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toValue!1812 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))) t!74278) tb!47611))

(declare-fun result!53186 () Bool)

(assert (= result!53186 result!53146))

(assert (=> d!190084 t!74278))

(declare-fun t!74280 () Bool)

(declare-fun tb!47613 () Bool)

(assert (=> (and b!538131 (= (toValue!1812 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toValue!1812 (transformation!965 (rule!1671 token!491)))) t!74280) tb!47613))

(declare-fun result!53188 () Bool)

(assert (= result!53188 result!53176))

(assert (=> d!190120 t!74280))

(declare-fun tp!171575 () Bool)

(declare-fun b_and!52639 () Bool)

(assert (=> b!538131 (= tp!171575 (and (=> t!74278 result!53186) (=> t!74280 result!53188) b_and!52639))))

(declare-fun b_free!14767 () Bool)

(declare-fun b_next!14783 () Bool)

(assert (=> b!538131 (= b_free!14767 (not b_next!14783))))

(declare-fun tb!47615 () Bool)

(declare-fun t!74282 () Bool)

(assert (=> (and b!538131 (= (toChars!1671 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toChars!1671 (transformation!965 (rule!1671 (_1!3412 (v!16121 lt!222834)))))) t!74282) tb!47615))

(declare-fun result!53190 () Bool)

(assert (= result!53190 result!53154))

(assert (=> d!190092 t!74282))

(declare-fun tb!47617 () Bool)

(declare-fun t!74284 () Bool)

(assert (=> (and b!538131 (= (toChars!1671 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toChars!1671 (transformation!965 (rule!1671 token!491)))) t!74284) tb!47617))

(declare-fun result!53192 () Bool)

(assert (= result!53192 result!53172))

(assert (=> d!190102 t!74284))

(assert (=> b!538060 t!74284))

(declare-fun b_and!52641 () Bool)

(declare-fun tp!171574 () Bool)

(assert (=> b!538131 (= tp!171574 (and (=> t!74282 result!53190) (=> t!74284 result!53192) b_and!52641))))

(declare-fun e!324709 () Bool)

(assert (=> b!538131 (= e!324709 (and tp!171575 tp!171574))))

(declare-fun b!538130 () Bool)

(declare-fun e!324706 () Bool)

(declare-fun tp!171576 () Bool)

(assert (=> b!538130 (= e!324706 (and tp!171576 (inv!6554 (tag!1227 (h!10626 (t!74236 rules!3103)))) (inv!6557 (transformation!965 (h!10626 (t!74236 rules!3103)))) e!324709))))

(declare-fun b!538129 () Bool)

(declare-fun e!324707 () Bool)

(declare-fun tp!171577 () Bool)

(assert (=> b!538129 (= e!324707 (and e!324706 tp!171577))))

(assert (=> b!537599 (= tp!171500 e!324707)))

(assert (= b!538130 b!538131))

(assert (= b!538129 b!538130))

(assert (= (and b!537599 ((_ is Cons!5225) (t!74236 rules!3103))) b!538129))

(declare-fun m!785283 () Bool)

(assert (=> b!538130 m!785283))

(declare-fun m!785285 () Bool)

(assert (=> b!538130 m!785285))

(declare-fun b!538133 () Bool)

(declare-fun e!324710 () Bool)

(declare-fun tp!171579 () Bool)

(declare-fun tp!171582 () Bool)

(assert (=> b!538133 (= e!324710 (and tp!171579 tp!171582))))

(declare-fun b!538134 () Bool)

(declare-fun tp!171578 () Bool)

(assert (=> b!538134 (= e!324710 tp!171578)))

(declare-fun b!538132 () Bool)

(assert (=> b!538132 (= e!324710 tp_is_empty!2953)))

(declare-fun b!538135 () Bool)

(declare-fun tp!171581 () Bool)

(declare-fun tp!171580 () Bool)

(assert (=> b!538135 (= e!324710 (and tp!171581 tp!171580))))

(assert (=> b!537604 (= tp!171499 e!324710)))

(assert (= (and b!537604 ((_ is ElementMatch!1299) (regex!965 (h!10626 rules!3103)))) b!538132))

(assert (= (and b!537604 ((_ is Concat!2288) (regex!965 (h!10626 rules!3103)))) b!538133))

(assert (= (and b!537604 ((_ is Star!1299) (regex!965 (h!10626 rules!3103)))) b!538134))

(assert (= (and b!537604 ((_ is Union!1299) (regex!965 (h!10626 rules!3103)))) b!538135))

(declare-fun b!538136 () Bool)

(declare-fun e!324711 () Bool)

(declare-fun tp!171583 () Bool)

(assert (=> b!538136 (= e!324711 (and tp_is_empty!2953 tp!171583))))

(assert (=> b!537620 (= tp!171497 e!324711)))

(assert (= (and b!537620 ((_ is Cons!5224) (t!74235 input!2705))) b!538136))

(declare-fun b!538137 () Bool)

(declare-fun e!324712 () Bool)

(declare-fun tp!171584 () Bool)

(assert (=> b!538137 (= e!324712 (and tp_is_empty!2953 tp!171584))))

(assert (=> b!537616 (= tp!171493 e!324712)))

(assert (= (and b!537616 ((_ is Cons!5224) (t!74235 suffix!1342))) b!538137))

(declare-fun b_lambda!20769 () Bool)

(assert (= b_lambda!20763 (or (and b!537614 b_free!14755) (and b!537601 b_free!14759 (= (toChars!1671 (transformation!965 (h!10626 rules!3103))) (toChars!1671 (transformation!965 (rule!1671 token!491))))) (and b!538131 b_free!14767 (= (toChars!1671 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toChars!1671 (transformation!965 (rule!1671 token!491))))) b_lambda!20769)))

(declare-fun b_lambda!20771 () Bool)

(assert (= b_lambda!20765 (or (and b!537614 b_free!14755) (and b!537601 b_free!14759 (= (toChars!1671 (transformation!965 (h!10626 rules!3103))) (toChars!1671 (transformation!965 (rule!1671 token!491))))) (and b!538131 b_free!14767 (= (toChars!1671 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toChars!1671 (transformation!965 (rule!1671 token!491))))) b_lambda!20771)))

(declare-fun b_lambda!20773 () Bool)

(assert (= b_lambda!20767 (or (and b!537614 b_free!14753) (and b!537601 b_free!14757 (= (toValue!1812 (transformation!965 (h!10626 rules!3103))) (toValue!1812 (transformation!965 (rule!1671 token!491))))) (and b!538131 b_free!14765 (= (toValue!1812 (transformation!965 (h!10626 (t!74236 rules!3103)))) (toValue!1812 (transformation!965 (rule!1671 token!491))))) b_lambda!20773)))

(check-sat (not d!190072) (not b!537858) (not b_lambda!20773) (not tb!47607) (not b!537920) (not b!538086) (not d!190058) (not b!537985) (not b!537854) (not b!538083) (not b!538118) (not d!190116) (not b!537952) (not d!189922) b_and!52639 (not d!190062) (not b!537859) (not d!190048) (not b!537932) (not b!538106) (not b!538119) (not b_next!14781) (not b!538093) b_and!52641 (not d!189910) (not d!190100) (not b!538133) (not b!538101) (not b!537668) (not b!537667) (not b!537862) (not d!190078) (not b!537984) (not b!538094) (not d!190098) (not d!190102) (not d!190018) b_and!52635 (not b!537685) (not d!190076) (not b!538085) (not d!190114) (not d!189930) (not b!538084) (not b!537861) (not b!537933) (not b_next!14773) (not b!538095) (not b!537953) (not bm!38240) (not d!190088) (not d!190104) (not d!190118) (not b!537989) (not b_lambda!20771) (not d!190110) b_and!52633 (not b!537947) (not b!537919) (not b!537951) (not b!537855) (not d!190090) (not b!538137) (not b!537944) (not b!538135) (not d!190082) (not b!537918) (not b!537876) (not b!538098) (not b!538088) (not b!538033) (not d!190054) (not b!538090) (not b!537942) (not b!538089) (not b!538130) (not b!537857) (not b_next!14771) (not d!190112) (not d!190042) (not b!538091) (not b!537938) (not b!537948) (not b_lambda!20755) (not bm!38238) (not b_lambda!20769) (not b!538061) (not b!537990) (not d!190106) (not b!537921) (not tb!47591) (not tb!47587) (not bm!38230) (not d!190036) (not b_next!14783) (not b!538099) (not b!537629) (not b!538060) (not b!537986) (not b!538041) (not d!190060) (not b!537880) (not b!538120) (not d!190080) (not b_lambda!20753) (not d!189940) (not b!537904) tp_is_empty!2953 b_and!52631 (not b!538062) (not tb!47603) (not b!537917) (not bm!38239) (not b!537860) (not b!538134) (not b!537913) (not d!190046) (not d!190066) (not b!537914) (not d!189942) (not b!538097) (not d!189906) b_and!52637 (not d!190092) (not b!538136) (not b!537961) (not b!537941) (not b!538055) (not b!537881) (not b_next!14775) (not b!537912) (not b_next!14769) (not b!537958) (not b!538092) (not b!538129) (not d!190094) (not b!537877) (not b!537992) (not d!190108) (not b!537943) (not d!190096) (not b!537988) (not d!190016) (not b!537707) (not b!537931) (not d!190052) (not b!538082) (not b!537670) (not b!537982) (not b!537729) (not b!537916))
(check-sat b_and!52641 b_and!52635 (not b_next!14773) b_and!52633 (not b_next!14771) (not b_next!14783) b_and!52631 b_and!52637 b_and!52639 (not b_next!14781) (not b_next!14775) (not b_next!14769))
