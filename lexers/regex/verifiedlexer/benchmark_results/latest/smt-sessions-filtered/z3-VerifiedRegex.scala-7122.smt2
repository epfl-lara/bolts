; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377792 () Bool)

(assert start!377792)

(declare-fun b!4011575 () Bool)

(declare-fun b_free!111593 () Bool)

(declare-fun b_next!112297 () Bool)

(assert (=> b!4011575 (= b_free!111593 (not b_next!112297))))

(declare-fun tp!1220364 () Bool)

(declare-fun b_and!308167 () Bool)

(assert (=> b!4011575 (= tp!1220364 b_and!308167)))

(declare-fun b_free!111595 () Bool)

(declare-fun b_next!112299 () Bool)

(assert (=> b!4011575 (= b_free!111595 (not b_next!112299))))

(declare-fun tp!1220355 () Bool)

(declare-fun b_and!308169 () Bool)

(assert (=> b!4011575 (= tp!1220355 b_and!308169)))

(declare-fun b!4011572 () Bool)

(declare-fun b_free!111597 () Bool)

(declare-fun b_next!112301 () Bool)

(assert (=> b!4011572 (= b_free!111597 (not b_next!112301))))

(declare-fun tp!1220357 () Bool)

(declare-fun b_and!308171 () Bool)

(assert (=> b!4011572 (= tp!1220357 b_and!308171)))

(declare-fun b_free!111599 () Bool)

(declare-fun b_next!112303 () Bool)

(assert (=> b!4011572 (= b_free!111599 (not b_next!112303))))

(declare-fun tp!1220361 () Bool)

(declare-fun b_and!308173 () Bool)

(assert (=> b!4011572 (= tp!1220361 b_and!308173)))

(declare-fun b!4011544 () Bool)

(declare-fun e!2487933 () Bool)

(declare-fun e!2487932 () Bool)

(assert (=> b!4011544 (= e!2487933 e!2487932)))

(declare-fun res!1630762 () Bool)

(assert (=> b!4011544 (=> res!1630762 e!2487932)))

(declare-datatypes ((C!23660 0))(
  ( (C!23661 (val!13924 Int)) )
))
(declare-datatypes ((List!43062 0))(
  ( (Nil!42938) (Cons!42938 (h!48358 C!23660) (t!332993 List!43062)) )
))
(declare-fun lt!1420744 () List!43062)

(declare-fun suffix!1299 () List!43062)

(assert (=> b!4011544 (= res!1630762 (not (= lt!1420744 suffix!1299)))))

(declare-fun newSuffix!27 () List!43062)

(declare-fun lt!1420723 () List!43062)

(declare-fun ++!11234 (List!43062 List!43062) List!43062)

(assert (=> b!4011544 (= lt!1420744 (++!11234 newSuffix!27 lt!1420723))))

(declare-fun getSuffix!2344 (List!43062 List!43062) List!43062)

(assert (=> b!4011544 (= lt!1420723 (getSuffix!2344 suffix!1299 newSuffix!27))))

(declare-fun b!4011545 () Bool)

(declare-fun e!2487924 () Bool)

(declare-fun e!2487926 () Bool)

(assert (=> b!4011545 (= e!2487924 e!2487926)))

(declare-fun res!1630759 () Bool)

(assert (=> b!4011545 (=> res!1630759 e!2487926)))

(declare-fun lt!1420733 () List!43062)

(declare-fun prefix!494 () List!43062)

(assert (=> b!4011545 (= res!1630759 (not (= lt!1420733 prefix!494)))))

(declare-fun lt!1420721 () List!43062)

(declare-fun lt!1420750 () List!43062)

(assert (=> b!4011545 (= lt!1420733 (++!11234 lt!1420721 lt!1420750))))

(assert (=> b!4011545 (= lt!1420750 (getSuffix!2344 prefix!494 lt!1420721))))

(declare-fun isPrefix!3919 (List!43062 List!43062) Bool)

(assert (=> b!4011545 (isPrefix!3919 lt!1420721 prefix!494)))

(declare-datatypes ((Unit!61963 0))(
  ( (Unit!61964) )
))
(declare-fun lt!1420742 () Unit!61963)

(declare-fun lt!1420759 () List!43062)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!491 (List!43062 List!43062 List!43062) Unit!61963)

(assert (=> b!4011545 (= lt!1420742 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!491 prefix!494 lt!1420721 lt!1420759))))

(declare-fun b!4011546 () Bool)

(declare-fun e!2487940 () Bool)

(declare-fun lt!1420718 () List!43062)

(assert (=> b!4011546 (= e!2487940 (isPrefix!3919 lt!1420718 lt!1420759))))

(declare-fun lt!1420724 () List!43062)

(assert (=> b!4011546 (isPrefix!3919 lt!1420718 lt!1420724)))

(declare-fun lt!1420729 () List!43062)

(declare-fun lt!1420754 () Unit!61963)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!732 (List!43062 List!43062 List!43062) Unit!61963)

(assert (=> b!4011546 (= lt!1420754 (lemmaPrefixStaysPrefixWhenAddingToSuffix!732 lt!1420718 lt!1420729 lt!1420723))))

(declare-fun b!4011547 () Bool)

(declare-fun e!2487914 () Bool)

(declare-fun e!2487942 () Bool)

(assert (=> b!4011547 (= e!2487914 e!2487942)))

(declare-fun res!1630745 () Bool)

(assert (=> b!4011547 (=> res!1630745 e!2487942)))

(declare-fun lt!1420714 () List!43062)

(assert (=> b!4011547 (= res!1630745 (not (= lt!1420714 lt!1420759)))))

(declare-fun lt!1420758 () List!43062)

(assert (=> b!4011547 (= lt!1420714 (++!11234 lt!1420721 lt!1420758))))

(assert (=> b!4011547 (= lt!1420758 (getSuffix!2344 lt!1420759 lt!1420721))))

(declare-fun e!2487935 () Bool)

(assert (=> b!4011547 e!2487935))

(declare-fun res!1630744 () Bool)

(assert (=> b!4011547 (=> (not res!1630744) (not e!2487935))))

(assert (=> b!4011547 (= res!1630744 (isPrefix!3919 lt!1420759 lt!1420759))))

(declare-fun lt!1420738 () Unit!61963)

(declare-fun lemmaIsPrefixRefl!2495 (List!43062 List!43062) Unit!61963)

(assert (=> b!4011547 (= lt!1420738 (lemmaIsPrefixRefl!2495 lt!1420759 lt!1420759))))

(declare-fun b!4011548 () Bool)

(declare-fun e!2487937 () Bool)

(declare-fun e!2487929 () Bool)

(assert (=> b!4011548 (= e!2487937 e!2487929)))

(declare-fun res!1630751 () Bool)

(assert (=> b!4011548 (=> (not res!1630751) (not e!2487929))))

(declare-fun lt!1420717 () List!43062)

(assert (=> b!4011548 (= res!1630751 (= lt!1420717 lt!1420729))))

(assert (=> b!4011548 (= lt!1420729 (++!11234 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43062)

(assert (=> b!4011548 (= lt!1420717 (++!11234 lt!1420721 newSuffixResult!27))))

(declare-fun b!4011549 () Bool)

(declare-fun e!2487941 () Bool)

(assert (=> b!4011549 (= e!2487941 e!2487924)))

(declare-fun res!1630750 () Bool)

(assert (=> b!4011549 (=> res!1630750 e!2487924)))

(assert (=> b!4011549 (= res!1630750 (not (isPrefix!3919 lt!1420721 lt!1420759)))))

(assert (=> b!4011549 (isPrefix!3919 prefix!494 lt!1420759)))

(declare-fun lt!1420711 () Unit!61963)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2760 (List!43062 List!43062) Unit!61963)

(assert (=> b!4011549 (= lt!1420711 (lemmaConcatTwoListThenFirstIsPrefix!2760 prefix!494 suffix!1299))))

(declare-fun lt!1420748 () List!43062)

(assert (=> b!4011549 (isPrefix!3919 lt!1420721 lt!1420748)))

(declare-fun lt!1420725 () Unit!61963)

(declare-fun suffixResult!105 () List!43062)

(assert (=> b!4011549 (= lt!1420725 (lemmaConcatTwoListThenFirstIsPrefix!2760 lt!1420721 suffixResult!105))))

(declare-fun b!4011550 () Bool)

(declare-fun e!2487930 () Bool)

(assert (=> b!4011550 (= e!2487930 e!2487937)))

(declare-fun res!1630765 () Bool)

(assert (=> b!4011550 (=> (not res!1630765) (not e!2487937))))

(declare-fun lt!1420755 () Int)

(declare-fun lt!1420719 () Int)

(assert (=> b!4011550 (= res!1630765 (>= lt!1420755 lt!1420719))))

(declare-fun size!32105 (List!43062) Int)

(assert (=> b!4011550 (= lt!1420719 (size!32105 lt!1420721))))

(assert (=> b!4011550 (= lt!1420755 (size!32105 prefix!494))))

(declare-datatypes ((IArray!26091 0))(
  ( (IArray!26092 (innerList!13103 List!43062)) )
))
(declare-datatypes ((Conc!13043 0))(
  ( (Node!13043 (left!32389 Conc!13043) (right!32719 Conc!13043) (csize!26316 Int) (cheight!13254 Int)) (Leaf!20166 (xs!16349 IArray!26091) (csize!26317 Int)) (Empty!13043) )
))
(declare-datatypes ((BalanceConc!25680 0))(
  ( (BalanceConc!25681 (c!693556 Conc!13043)) )
))
(declare-datatypes ((List!43063 0))(
  ( (Nil!42939) (Cons!42939 (h!48359 (_ BitVec 16)) (t!332994 List!43063)) )
))
(declare-datatypes ((TokenValue!7062 0))(
  ( (FloatLiteralValue!14124 (text!49879 List!43063)) (TokenValueExt!7061 (__x!26341 Int)) (Broken!35310 (value!215320 List!43063)) (Object!7185) (End!7062) (Def!7062) (Underscore!7062) (Match!7062) (Else!7062) (Error!7062) (Case!7062) (If!7062) (Extends!7062) (Abstract!7062) (Class!7062) (Val!7062) (DelimiterValue!14124 (del!7122 List!43063)) (KeywordValue!7068 (value!215321 List!43063)) (CommentValue!14124 (value!215322 List!43063)) (WhitespaceValue!14124 (value!215323 List!43063)) (IndentationValue!7062 (value!215324 List!43063)) (String!49027) (Int32!7062) (Broken!35311 (value!215325 List!43063)) (Boolean!7063) (Unit!61965) (OperatorValue!7065 (op!7122 List!43063)) (IdentifierValue!14124 (value!215326 List!43063)) (IdentifierValue!14125 (value!215327 List!43063)) (WhitespaceValue!14125 (value!215328 List!43063)) (True!14124) (False!14124) (Broken!35312 (value!215329 List!43063)) (Broken!35313 (value!215330 List!43063)) (True!14125) (RightBrace!7062) (RightBracket!7062) (Colon!7062) (Null!7062) (Comma!7062) (LeftBracket!7062) (False!14125) (LeftBrace!7062) (ImaginaryLiteralValue!7062 (text!49880 List!43063)) (StringLiteralValue!21186 (value!215331 List!43063)) (EOFValue!7062 (value!215332 List!43063)) (IdentValue!7062 (value!215333 List!43063)) (DelimiterValue!14125 (value!215334 List!43063)) (DedentValue!7062 (value!215335 List!43063)) (NewLineValue!7062 (value!215336 List!43063)) (IntegerValue!21186 (value!215337 (_ BitVec 32)) (text!49881 List!43063)) (IntegerValue!21187 (value!215338 Int) (text!49882 List!43063)) (Times!7062) (Or!7062) (Equal!7062) (Minus!7062) (Broken!35314 (value!215339 List!43063)) (And!7062) (Div!7062) (LessEqual!7062) (Mod!7062) (Concat!18799) (Not!7062) (Plus!7062) (SpaceValue!7062 (value!215340 List!43063)) (IntegerValue!21188 (value!215341 Int) (text!49883 List!43063)) (StringLiteralValue!21187 (text!49884 List!43063)) (FloatLiteralValue!14125 (text!49885 List!43063)) (BytesLiteralValue!7062 (value!215342 List!43063)) (CommentValue!14125 (value!215343 List!43063)) (StringLiteralValue!21188 (value!215344 List!43063)) (ErrorTokenValue!7062 (msg!7123 List!43063)) )
))
(declare-datatypes ((Regex!11737 0))(
  ( (ElementMatch!11737 (c!693557 C!23660)) (Concat!18800 (regOne!23986 Regex!11737) (regTwo!23986 Regex!11737)) (EmptyExpr!11737) (Star!11737 (reg!12066 Regex!11737)) (EmptyLang!11737) (Union!11737 (regOne!23987 Regex!11737) (regTwo!23987 Regex!11737)) )
))
(declare-datatypes ((String!49028 0))(
  ( (String!49029 (value!215345 String)) )
))
(declare-datatypes ((TokenValueInjection!13552 0))(
  ( (TokenValueInjection!13553 (toValue!9336 Int) (toChars!9195 Int)) )
))
(declare-datatypes ((Rule!13464 0))(
  ( (Rule!13465 (regex!6832 Regex!11737) (tag!7692 String!49028) (isSeparator!6832 Bool) (transformation!6832 TokenValueInjection!13552)) )
))
(declare-datatypes ((Token!12802 0))(
  ( (Token!12803 (value!215346 TokenValue!7062) (rule!9876 Rule!13464) (size!32106 Int) (originalCharacters!7432 List!43062)) )
))
(declare-fun token!484 () Token!12802)

(declare-fun list!15958 (BalanceConc!25680) List!43062)

(declare-fun charsOf!4648 (Token!12802) BalanceConc!25680)

(assert (=> b!4011550 (= lt!1420721 (list!15958 (charsOf!4648 token!484)))))

(declare-fun b!4011551 () Bool)

(declare-fun res!1630746 () Bool)

(assert (=> b!4011551 (=> (not res!1630746) (not e!2487930))))

(assert (=> b!4011551 (= res!1630746 (isPrefix!3919 newSuffix!27 suffix!1299))))

(declare-fun e!2487939 () Bool)

(declare-fun tp!1220356 () Bool)

(declare-fun b!4011552 () Bool)

(declare-fun e!2487920 () Bool)

(declare-fun inv!57349 (String!49028) Bool)

(declare-fun inv!57352 (TokenValueInjection!13552) Bool)

(assert (=> b!4011552 (= e!2487920 (and tp!1220356 (inv!57349 (tag!7692 (rule!9876 token!484))) (inv!57352 (transformation!6832 (rule!9876 token!484))) e!2487939))))

(declare-fun b!4011553 () Bool)

(declare-fun e!2487936 () Bool)

(declare-fun tp_is_empty!20445 () Bool)

(declare-fun tp!1220359 () Bool)

(assert (=> b!4011553 (= e!2487936 (and tp_is_empty!20445 tp!1220359))))

(declare-fun b!4011555 () Bool)

(declare-fun e!2487934 () Bool)

(declare-fun tp!1220354 () Bool)

(assert (=> b!4011555 (= e!2487934 (and tp_is_empty!20445 tp!1220354))))

(declare-fun b!4011556 () Bool)

(assert (=> b!4011556 (= e!2487935 (and (= (size!32106 token!484) lt!1420719) (= (originalCharacters!7432 token!484) lt!1420721)))))

(declare-fun b!4011557 () Bool)

(assert (=> b!4011557 (= e!2487932 e!2487940)))

(declare-fun res!1630764 () Bool)

(assert (=> b!4011557 (=> res!1630764 e!2487940)))

(assert (=> b!4011557 (= res!1630764 (not (= lt!1420724 lt!1420759)))))

(assert (=> b!4011557 (= lt!1420724 (++!11234 prefix!494 lt!1420744))))

(assert (=> b!4011557 (= lt!1420724 (++!11234 lt!1420729 lt!1420723))))

(declare-fun lt!1420712 () Unit!61963)

(declare-fun lemmaConcatAssociativity!2544 (List!43062 List!43062 List!43062) Unit!61963)

(assert (=> b!4011557 (= lt!1420712 (lemmaConcatAssociativity!2544 prefix!494 newSuffix!27 lt!1420723))))

(declare-fun b!4011558 () Bool)

(declare-fun e!2487918 () Bool)

(declare-fun e!2487915 () Bool)

(declare-fun tp!1220366 () Bool)

(assert (=> b!4011558 (= e!2487918 (and e!2487915 tp!1220366))))

(declare-fun b!4011559 () Bool)

(declare-fun e!2487938 () Bool)

(declare-fun tp!1220363 () Bool)

(assert (=> b!4011559 (= e!2487938 (and tp_is_empty!20445 tp!1220363))))

(declare-fun b!4011560 () Bool)

(declare-fun res!1630760 () Bool)

(assert (=> b!4011560 (=> (not res!1630760) (not e!2487930))))

(assert (=> b!4011560 (= res!1630760 (>= (size!32105 suffix!1299) (size!32105 newSuffix!27)))))

(declare-fun b!4011561 () Bool)

(declare-fun e!2487925 () Bool)

(declare-fun tp!1220362 () Bool)

(assert (=> b!4011561 (= e!2487925 (and tp_is_empty!20445 tp!1220362))))

(declare-fun b!4011562 () Bool)

(declare-fun e!2487916 () Bool)

(assert (=> b!4011562 (= e!2487926 e!2487916)))

(declare-fun res!1630749 () Bool)

(assert (=> b!4011562 (=> res!1630749 e!2487916)))

(declare-fun lt!1420741 () List!43062)

(declare-fun lt!1420716 () List!43062)

(assert (=> b!4011562 (= res!1630749 (or (not (= lt!1420759 lt!1420741)) (not (= lt!1420759 lt!1420716))))))

(assert (=> b!4011562 (= lt!1420741 lt!1420716)))

(declare-fun lt!1420715 () List!43062)

(assert (=> b!4011562 (= lt!1420716 (++!11234 lt!1420721 lt!1420715))))

(assert (=> b!4011562 (= lt!1420741 (++!11234 lt!1420733 suffix!1299))))

(assert (=> b!4011562 (= lt!1420715 (++!11234 lt!1420750 suffix!1299))))

(declare-fun lt!1420752 () Unit!61963)

(assert (=> b!4011562 (= lt!1420752 (lemmaConcatAssociativity!2544 lt!1420721 lt!1420750 suffix!1299))))

(declare-fun b!4011563 () Bool)

(declare-fun res!1630757 () Bool)

(assert (=> b!4011563 (=> (not res!1630757) (not e!2487935))))

(declare-fun lt!1420710 () TokenValue!7062)

(assert (=> b!4011563 (= res!1630757 (= (value!215346 token!484) lt!1420710))))

(declare-fun b!4011564 () Bool)

(declare-fun e!2487928 () Bool)

(assert (=> b!4011564 (= e!2487928 e!2487933)))

(declare-fun res!1630748 () Bool)

(assert (=> b!4011564 (=> res!1630748 e!2487933)))

(declare-datatypes ((tuple2!42086 0))(
  ( (tuple2!42087 (_1!24177 Token!12802) (_2!24177 List!43062)) )
))
(declare-datatypes ((Option!9246 0))(
  ( (None!9245) (Some!9245 (v!39613 tuple2!42086)) )
))
(declare-fun lt!1420737 () Option!9246)

(declare-fun lt!1420749 () Option!9246)

(assert (=> b!4011564 (= res!1630748 (not (= lt!1420737 (Some!9245 (v!39613 lt!1420749)))))))

(assert (=> b!4011564 (isPrefix!3919 lt!1420718 (++!11234 lt!1420718 newSuffixResult!27))))

(declare-fun lt!1420720 () Unit!61963)

(assert (=> b!4011564 (= lt!1420720 (lemmaConcatTwoListThenFirstIsPrefix!2760 lt!1420718 newSuffixResult!27))))

(assert (=> b!4011564 (isPrefix!3919 lt!1420718 (++!11234 lt!1420718 (_2!24177 (v!39613 lt!1420749))))))

(declare-fun lt!1420739 () Unit!61963)

(assert (=> b!4011564 (= lt!1420739 (lemmaConcatTwoListThenFirstIsPrefix!2760 lt!1420718 (_2!24177 (v!39613 lt!1420749))))))

(declare-fun lt!1420745 () Int)

(declare-fun lt!1420726 () TokenValue!7062)

(assert (=> b!4011564 (= lt!1420737 (Some!9245 (tuple2!42087 (Token!12803 lt!1420726 (rule!9876 (_1!24177 (v!39613 lt!1420749))) lt!1420745 lt!1420718) (_2!24177 (v!39613 lt!1420749)))))))

(declare-datatypes ((LexerInterface!6421 0))(
  ( (LexerInterfaceExt!6418 (__x!26342 Int)) (Lexer!6419) )
))
(declare-fun thiss!21717 () LexerInterface!6421)

(declare-fun maxPrefixOneRule!2739 (LexerInterface!6421 Rule!13464 List!43062) Option!9246)

(assert (=> b!4011564 (= lt!1420737 (maxPrefixOneRule!2739 thiss!21717 (rule!9876 (_1!24177 (v!39613 lt!1420749))) lt!1420729))))

(assert (=> b!4011564 (= lt!1420745 (size!32105 lt!1420718))))

(declare-fun apply!10029 (TokenValueInjection!13552 BalanceConc!25680) TokenValue!7062)

(declare-fun seqFromList!5057 (List!43062) BalanceConc!25680)

(assert (=> b!4011564 (= lt!1420726 (apply!10029 (transformation!6832 (rule!9876 (_1!24177 (v!39613 lt!1420749)))) (seqFromList!5057 lt!1420718)))))

(declare-fun lt!1420753 () Unit!61963)

(declare-datatypes ((List!43064 0))(
  ( (Nil!42940) (Cons!42940 (h!48360 Rule!13464) (t!332995 List!43064)) )
))
(declare-fun rules!2999 () List!43064)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1557 (LexerInterface!6421 List!43064 List!43062 List!43062 List!43062 Rule!13464) Unit!61963)

(assert (=> b!4011564 (= lt!1420753 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1557 thiss!21717 rules!2999 lt!1420718 lt!1420729 (_2!24177 (v!39613 lt!1420749)) (rule!9876 (_1!24177 (v!39613 lt!1420749)))))))

(assert (=> b!4011564 (= lt!1420718 (list!15958 (charsOf!4648 (_1!24177 (v!39613 lt!1420749)))))))

(declare-fun lt!1420732 () Unit!61963)

(declare-fun lemmaInv!1047 (TokenValueInjection!13552) Unit!61963)

(assert (=> b!4011564 (= lt!1420732 (lemmaInv!1047 (transformation!6832 (rule!9876 (_1!24177 (v!39613 lt!1420749))))))))

(declare-fun ruleValid!2764 (LexerInterface!6421 Rule!13464) Bool)

(assert (=> b!4011564 (ruleValid!2764 thiss!21717 (rule!9876 (_1!24177 (v!39613 lt!1420749))))))

(declare-fun lt!1420757 () Unit!61963)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1838 (LexerInterface!6421 Rule!13464 List!43064) Unit!61963)

(assert (=> b!4011564 (= lt!1420757 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1838 thiss!21717 (rule!9876 (_1!24177 (v!39613 lt!1420749))) rules!2999))))

(declare-fun lt!1420751 () Unit!61963)

(declare-fun lemmaCharactersSize!1391 (Token!12802) Unit!61963)

(assert (=> b!4011564 (= lt!1420751 (lemmaCharactersSize!1391 token!484))))

(declare-fun lt!1420736 () Unit!61963)

(assert (=> b!4011564 (= lt!1420736 (lemmaCharactersSize!1391 (_1!24177 (v!39613 lt!1420749))))))

(declare-fun b!4011565 () Bool)

(declare-fun res!1630756 () Bool)

(assert (=> b!4011565 (=> (not res!1630756) (not e!2487935))))

(assert (=> b!4011565 (= res!1630756 (= (size!32106 token!484) (size!32105 (originalCharacters!7432 token!484))))))

(declare-fun b!4011566 () Bool)

(declare-fun res!1630763 () Bool)

(assert (=> b!4011566 (=> (not res!1630763) (not e!2487930))))

(declare-fun rulesInvariant!5764 (LexerInterface!6421 List!43064) Bool)

(assert (=> b!4011566 (= res!1630763 (rulesInvariant!5764 thiss!21717 rules!2999))))

(declare-fun b!4011567 () Bool)

(declare-fun e!2487921 () Bool)

(assert (=> b!4011567 (= e!2487929 e!2487921)))

(declare-fun res!1630761 () Bool)

(assert (=> b!4011567 (=> (not res!1630761) (not e!2487921))))

(declare-fun lt!1420728 () Option!9246)

(declare-fun maxPrefix!3719 (LexerInterface!6421 List!43064 List!43062) Option!9246)

(assert (=> b!4011567 (= res!1630761 (= (maxPrefix!3719 thiss!21717 rules!2999 lt!1420759) lt!1420728))))

(declare-fun lt!1420735 () tuple2!42086)

(assert (=> b!4011567 (= lt!1420728 (Some!9245 lt!1420735))))

(assert (=> b!4011567 (= lt!1420735 (tuple2!42087 token!484 suffixResult!105))))

(assert (=> b!4011567 (= lt!1420759 (++!11234 prefix!494 suffix!1299))))

(declare-fun b!4011568 () Bool)

(declare-fun e!2487927 () Bool)

(declare-fun tp!1220358 () Bool)

(assert (=> b!4011568 (= e!2487927 (and tp_is_empty!20445 tp!1220358))))

(declare-fun b!4011569 () Bool)

(assert (=> b!4011569 (= e!2487942 e!2487928)))

(declare-fun res!1630747 () Bool)

(assert (=> b!4011569 (=> res!1630747 e!2487928)))

(get-info :version)

(assert (=> b!4011569 (= res!1630747 (not ((_ is Some!9245) lt!1420749)))))

(assert (=> b!4011569 (= lt!1420749 (maxPrefix!3719 thiss!21717 rules!2999 lt!1420729))))

(declare-fun lt!1420747 () Token!12802)

(assert (=> b!4011569 (and (= suffixResult!105 lt!1420758) (= lt!1420735 (tuple2!42087 lt!1420747 lt!1420758)))))

(declare-fun lt!1420730 () Unit!61963)

(declare-fun lemmaSamePrefixThenSameSuffix!2090 (List!43062 List!43062 List!43062 List!43062 List!43062) Unit!61963)

(assert (=> b!4011569 (= lt!1420730 (lemmaSamePrefixThenSameSuffix!2090 lt!1420721 suffixResult!105 lt!1420721 lt!1420758 lt!1420759))))

(assert (=> b!4011569 (isPrefix!3919 lt!1420721 lt!1420714)))

(declare-fun lt!1420746 () Unit!61963)

(assert (=> b!4011569 (= lt!1420746 (lemmaConcatTwoListThenFirstIsPrefix!2760 lt!1420721 lt!1420758))))

(declare-fun b!4011570 () Bool)

(declare-fun res!1630758 () Bool)

(assert (=> b!4011570 (=> (not res!1630758) (not e!2487930))))

(declare-fun isEmpty!25648 (List!43064) Bool)

(assert (=> b!4011570 (= res!1630758 (not (isEmpty!25648 rules!2999)))))

(declare-fun b!4011571 () Bool)

(declare-fun e!2487931 () Bool)

(declare-fun tp!1220360 () Bool)

(assert (=> b!4011571 (= e!2487915 (and tp!1220360 (inv!57349 (tag!7692 (h!48360 rules!2999))) (inv!57352 (transformation!6832 (h!48360 rules!2999))) e!2487931))))

(assert (=> b!4011572 (= e!2487931 (and tp!1220357 tp!1220361))))

(declare-fun b!4011554 () Bool)

(declare-fun e!2487913 () Bool)

(assert (=> b!4011554 (= e!2487913 e!2487914)))

(declare-fun res!1630755 () Bool)

(assert (=> b!4011554 (=> res!1630755 e!2487914)))

(declare-fun matchR!5698 (Regex!11737 List!43062) Bool)

(assert (=> b!4011554 (= res!1630755 (not (matchR!5698 (regex!6832 (rule!9876 token!484)) lt!1420721)))))

(assert (=> b!4011554 (isPrefix!3919 lt!1420721 lt!1420729)))

(declare-fun lt!1420727 () Unit!61963)

(assert (=> b!4011554 (= lt!1420727 (lemmaPrefixStaysPrefixWhenAddingToSuffix!732 lt!1420721 prefix!494 newSuffix!27))))

(declare-fun lt!1420722 () Unit!61963)

(assert (=> b!4011554 (= lt!1420722 (lemmaPrefixStaysPrefixWhenAddingToSuffix!732 lt!1420721 prefix!494 suffix!1299))))

(declare-fun res!1630753 () Bool)

(assert (=> start!377792 (=> (not res!1630753) (not e!2487930))))

(assert (=> start!377792 (= res!1630753 ((_ is Lexer!6419) thiss!21717))))

(assert (=> start!377792 e!2487930))

(assert (=> start!377792 e!2487927))

(declare-fun e!2487917 () Bool)

(declare-fun inv!57353 (Token!12802) Bool)

(assert (=> start!377792 (and (inv!57353 token!484) e!2487917)))

(assert (=> start!377792 e!2487934))

(assert (=> start!377792 e!2487938))

(assert (=> start!377792 e!2487925))

(assert (=> start!377792 true))

(assert (=> start!377792 e!2487918))

(assert (=> start!377792 e!2487936))

(declare-fun b!4011573 () Bool)

(assert (=> b!4011573 (= e!2487921 (not e!2487941))))

(declare-fun res!1630754 () Bool)

(assert (=> b!4011573 (=> res!1630754 e!2487941)))

(assert (=> b!4011573 (= res!1630754 (not (= lt!1420748 lt!1420759)))))

(assert (=> b!4011573 (= lt!1420748 (++!11234 lt!1420721 suffixResult!105))))

(declare-fun lt!1420740 () Unit!61963)

(assert (=> b!4011573 (= lt!1420740 (lemmaInv!1047 (transformation!6832 (rule!9876 token!484))))))

(assert (=> b!4011573 (ruleValid!2764 thiss!21717 (rule!9876 token!484))))

(declare-fun lt!1420713 () Unit!61963)

(assert (=> b!4011573 (= lt!1420713 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1838 thiss!21717 (rule!9876 token!484) rules!2999))))

(declare-fun tp!1220365 () Bool)

(declare-fun b!4011574 () Bool)

(declare-fun inv!21 (TokenValue!7062) Bool)

(assert (=> b!4011574 (= e!2487917 (and (inv!21 (value!215346 token!484)) e!2487920 tp!1220365))))

(assert (=> b!4011575 (= e!2487939 (and tp!1220364 tp!1220355))))

(declare-fun b!4011576 () Bool)

(assert (=> b!4011576 (= e!2487916 e!2487913)))

(declare-fun res!1630752 () Bool)

(assert (=> b!4011576 (=> res!1630752 e!2487913)))

(declare-fun lt!1420734 () Option!9246)

(assert (=> b!4011576 (= res!1630752 (not (= lt!1420734 lt!1420728)))))

(assert (=> b!4011576 (= lt!1420734 (Some!9245 (tuple2!42087 lt!1420747 suffixResult!105)))))

(assert (=> b!4011576 (= lt!1420734 (maxPrefixOneRule!2739 thiss!21717 (rule!9876 token!484) lt!1420759))))

(assert (=> b!4011576 (= lt!1420747 (Token!12803 lt!1420710 (rule!9876 token!484) lt!1420719 lt!1420721))))

(assert (=> b!4011576 (= lt!1420710 (apply!10029 (transformation!6832 (rule!9876 token!484)) (seqFromList!5057 lt!1420721)))))

(declare-fun lt!1420743 () Unit!61963)

(assert (=> b!4011576 (= lt!1420743 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1557 thiss!21717 rules!2999 lt!1420721 lt!1420759 suffixResult!105 (rule!9876 token!484)))))

(assert (=> b!4011576 (= lt!1420715 suffixResult!105)))

(declare-fun lt!1420756 () Unit!61963)

(assert (=> b!4011576 (= lt!1420756 (lemmaSamePrefixThenSameSuffix!2090 lt!1420721 lt!1420715 lt!1420721 suffixResult!105 lt!1420759))))

(assert (=> b!4011576 (isPrefix!3919 lt!1420721 lt!1420716)))

(declare-fun lt!1420731 () Unit!61963)

(assert (=> b!4011576 (= lt!1420731 (lemmaConcatTwoListThenFirstIsPrefix!2760 lt!1420721 lt!1420715))))

(assert (= (and start!377792 res!1630753) b!4011570))

(assert (= (and b!4011570 res!1630758) b!4011566))

(assert (= (and b!4011566 res!1630763) b!4011560))

(assert (= (and b!4011560 res!1630760) b!4011551))

(assert (= (and b!4011551 res!1630746) b!4011550))

(assert (= (and b!4011550 res!1630765) b!4011548))

(assert (= (and b!4011548 res!1630751) b!4011567))

(assert (= (and b!4011567 res!1630761) b!4011573))

(assert (= (and b!4011573 (not res!1630754)) b!4011549))

(assert (= (and b!4011549 (not res!1630750)) b!4011545))

(assert (= (and b!4011545 (not res!1630759)) b!4011562))

(assert (= (and b!4011562 (not res!1630749)) b!4011576))

(assert (= (and b!4011576 (not res!1630752)) b!4011554))

(assert (= (and b!4011554 (not res!1630755)) b!4011547))

(assert (= (and b!4011547 res!1630744) b!4011563))

(assert (= (and b!4011563 res!1630757) b!4011565))

(assert (= (and b!4011565 res!1630756) b!4011556))

(assert (= (and b!4011547 (not res!1630745)) b!4011569))

(assert (= (and b!4011569 (not res!1630747)) b!4011564))

(assert (= (and b!4011564 (not res!1630748)) b!4011544))

(assert (= (and b!4011544 (not res!1630762)) b!4011557))

(assert (= (and b!4011557 (not res!1630764)) b!4011546))

(assert (= (and start!377792 ((_ is Cons!42938) prefix!494)) b!4011568))

(assert (= b!4011552 b!4011575))

(assert (= b!4011574 b!4011552))

(assert (= start!377792 b!4011574))

(assert (= (and start!377792 ((_ is Cons!42938) suffixResult!105)) b!4011555))

(assert (= (and start!377792 ((_ is Cons!42938) suffix!1299)) b!4011559))

(assert (= (and start!377792 ((_ is Cons!42938) newSuffix!27)) b!4011561))

(assert (= b!4011571 b!4011572))

(assert (= b!4011558 b!4011571))

(assert (= (and start!377792 ((_ is Cons!42940) rules!2999)) b!4011558))

(assert (= (and start!377792 ((_ is Cons!42938) newSuffixResult!27)) b!4011553))

(declare-fun m!4597057 () Bool)

(assert (=> start!377792 m!4597057))

(declare-fun m!4597059 () Bool)

(assert (=> b!4011576 m!4597059))

(assert (=> b!4011576 m!4597059))

(declare-fun m!4597061 () Bool)

(assert (=> b!4011576 m!4597061))

(declare-fun m!4597063 () Bool)

(assert (=> b!4011576 m!4597063))

(declare-fun m!4597065 () Bool)

(assert (=> b!4011576 m!4597065))

(declare-fun m!4597067 () Bool)

(assert (=> b!4011576 m!4597067))

(declare-fun m!4597069 () Bool)

(assert (=> b!4011576 m!4597069))

(declare-fun m!4597071 () Bool)

(assert (=> b!4011576 m!4597071))

(declare-fun m!4597073 () Bool)

(assert (=> b!4011545 m!4597073))

(declare-fun m!4597075 () Bool)

(assert (=> b!4011545 m!4597075))

(declare-fun m!4597077 () Bool)

(assert (=> b!4011545 m!4597077))

(declare-fun m!4597079 () Bool)

(assert (=> b!4011545 m!4597079))

(declare-fun m!4597081 () Bool)

(assert (=> b!4011562 m!4597081))

(declare-fun m!4597083 () Bool)

(assert (=> b!4011562 m!4597083))

(declare-fun m!4597085 () Bool)

(assert (=> b!4011562 m!4597085))

(declare-fun m!4597087 () Bool)

(assert (=> b!4011562 m!4597087))

(declare-fun m!4597089 () Bool)

(assert (=> b!4011544 m!4597089))

(declare-fun m!4597091 () Bool)

(assert (=> b!4011544 m!4597091))

(declare-fun m!4597093 () Bool)

(assert (=> b!4011554 m!4597093))

(declare-fun m!4597095 () Bool)

(assert (=> b!4011554 m!4597095))

(declare-fun m!4597097 () Bool)

(assert (=> b!4011554 m!4597097))

(declare-fun m!4597099 () Bool)

(assert (=> b!4011554 m!4597099))

(declare-fun m!4597101 () Bool)

(assert (=> b!4011570 m!4597101))

(declare-fun m!4597103 () Bool)

(assert (=> b!4011557 m!4597103))

(declare-fun m!4597105 () Bool)

(assert (=> b!4011557 m!4597105))

(declare-fun m!4597107 () Bool)

(assert (=> b!4011557 m!4597107))

(declare-fun m!4597109 () Bool)

(assert (=> b!4011573 m!4597109))

(declare-fun m!4597111 () Bool)

(assert (=> b!4011573 m!4597111))

(declare-fun m!4597113 () Bool)

(assert (=> b!4011573 m!4597113))

(declare-fun m!4597115 () Bool)

(assert (=> b!4011573 m!4597115))

(declare-fun m!4597117 () Bool)

(assert (=> b!4011564 m!4597117))

(declare-fun m!4597119 () Bool)

(assert (=> b!4011564 m!4597119))

(declare-fun m!4597121 () Bool)

(assert (=> b!4011564 m!4597121))

(declare-fun m!4597123 () Bool)

(assert (=> b!4011564 m!4597123))

(declare-fun m!4597125 () Bool)

(assert (=> b!4011564 m!4597125))

(declare-fun m!4597127 () Bool)

(assert (=> b!4011564 m!4597127))

(declare-fun m!4597129 () Bool)

(assert (=> b!4011564 m!4597129))

(declare-fun m!4597131 () Bool)

(assert (=> b!4011564 m!4597131))

(assert (=> b!4011564 m!4597125))

(declare-fun m!4597133 () Bool)

(assert (=> b!4011564 m!4597133))

(declare-fun m!4597135 () Bool)

(assert (=> b!4011564 m!4597135))

(declare-fun m!4597137 () Bool)

(assert (=> b!4011564 m!4597137))

(declare-fun m!4597139 () Bool)

(assert (=> b!4011564 m!4597139))

(declare-fun m!4597141 () Bool)

(assert (=> b!4011564 m!4597141))

(declare-fun m!4597143 () Bool)

(assert (=> b!4011564 m!4597143))

(declare-fun m!4597145 () Bool)

(assert (=> b!4011564 m!4597145))

(declare-fun m!4597147 () Bool)

(assert (=> b!4011564 m!4597147))

(declare-fun m!4597149 () Bool)

(assert (=> b!4011564 m!4597149))

(declare-fun m!4597151 () Bool)

(assert (=> b!4011564 m!4597151))

(assert (=> b!4011564 m!4597129))

(assert (=> b!4011564 m!4597147))

(assert (=> b!4011564 m!4597121))

(declare-fun m!4597153 () Bool)

(assert (=> b!4011549 m!4597153))

(declare-fun m!4597155 () Bool)

(assert (=> b!4011549 m!4597155))

(declare-fun m!4597157 () Bool)

(assert (=> b!4011549 m!4597157))

(declare-fun m!4597159 () Bool)

(assert (=> b!4011549 m!4597159))

(declare-fun m!4597161 () Bool)

(assert (=> b!4011549 m!4597161))

(declare-fun m!4597163 () Bool)

(assert (=> b!4011551 m!4597163))

(declare-fun m!4597165 () Bool)

(assert (=> b!4011569 m!4597165))

(declare-fun m!4597167 () Bool)

(assert (=> b!4011569 m!4597167))

(declare-fun m!4597169 () Bool)

(assert (=> b!4011569 m!4597169))

(declare-fun m!4597171 () Bool)

(assert (=> b!4011569 m!4597171))

(declare-fun m!4597173 () Bool)

(assert (=> b!4011571 m!4597173))

(declare-fun m!4597175 () Bool)

(assert (=> b!4011571 m!4597175))

(declare-fun m!4597177 () Bool)

(assert (=> b!4011560 m!4597177))

(declare-fun m!4597179 () Bool)

(assert (=> b!4011560 m!4597179))

(declare-fun m!4597181 () Bool)

(assert (=> b!4011574 m!4597181))

(declare-fun m!4597183 () Bool)

(assert (=> b!4011550 m!4597183))

(declare-fun m!4597185 () Bool)

(assert (=> b!4011550 m!4597185))

(declare-fun m!4597187 () Bool)

(assert (=> b!4011550 m!4597187))

(assert (=> b!4011550 m!4597187))

(declare-fun m!4597189 () Bool)

(assert (=> b!4011550 m!4597189))

(declare-fun m!4597191 () Bool)

(assert (=> b!4011567 m!4597191))

(declare-fun m!4597193 () Bool)

(assert (=> b!4011567 m!4597193))

(declare-fun m!4597195 () Bool)

(assert (=> b!4011547 m!4597195))

(declare-fun m!4597197 () Bool)

(assert (=> b!4011547 m!4597197))

(declare-fun m!4597199 () Bool)

(assert (=> b!4011547 m!4597199))

(declare-fun m!4597201 () Bool)

(assert (=> b!4011547 m!4597201))

(declare-fun m!4597203 () Bool)

(assert (=> b!4011566 m!4597203))

(declare-fun m!4597205 () Bool)

(assert (=> b!4011548 m!4597205))

(declare-fun m!4597207 () Bool)

(assert (=> b!4011548 m!4597207))

(declare-fun m!4597209 () Bool)

(assert (=> b!4011565 m!4597209))

(declare-fun m!4597211 () Bool)

(assert (=> b!4011552 m!4597211))

(declare-fun m!4597213 () Bool)

(assert (=> b!4011552 m!4597213))

(declare-fun m!4597215 () Bool)

(assert (=> b!4011546 m!4597215))

(declare-fun m!4597217 () Bool)

(assert (=> b!4011546 m!4597217))

(declare-fun m!4597219 () Bool)

(assert (=> b!4011546 m!4597219))

(check-sat (not b!4011567) (not b!4011561) (not b!4011549) (not b!4011546) (not b!4011547) (not b_next!112303) (not b!4011569) (not b!4011570) (not b!4011571) (not b!4011573) (not b!4011576) (not b!4011552) b_and!308169 (not b!4011558) (not b!4011559) (not b!4011566) (not b!4011562) (not b_next!112299) (not b!4011574) (not start!377792) b_and!308173 (not b!4011555) (not b!4011557) (not b!4011554) (not b_next!112301) tp_is_empty!20445 b_and!308171 b_and!308167 (not b!4011565) (not b!4011551) (not b!4011568) (not b!4011550) (not b!4011548) (not b!4011544) (not b!4011560) (not b!4011545) (not b_next!112297) (not b!4011553) (not b!4011564))
(check-sat b_and!308169 (not b_next!112299) b_and!308173 (not b_next!112303) (not b_next!112297) (not b_next!112301) b_and!308171 b_and!308167)
