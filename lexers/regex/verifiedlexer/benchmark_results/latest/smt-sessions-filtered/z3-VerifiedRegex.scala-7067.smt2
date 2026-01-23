; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374728 () Bool)

(assert start!374728)

(declare-fun b!3981547 () Bool)

(declare-fun b_free!110521 () Bool)

(declare-fun b_next!111225 () Bool)

(assert (=> b!3981547 (= b_free!110521 (not b_next!111225))))

(declare-fun tp!1213697 () Bool)

(declare-fun b_and!306031 () Bool)

(assert (=> b!3981547 (= tp!1213697 b_and!306031)))

(declare-fun b_free!110523 () Bool)

(declare-fun b_next!111227 () Bool)

(assert (=> b!3981547 (= b_free!110523 (not b_next!111227))))

(declare-fun tp!1213700 () Bool)

(declare-fun b_and!306033 () Bool)

(assert (=> b!3981547 (= tp!1213700 b_and!306033)))

(declare-fun b!3981537 () Bool)

(declare-fun b_free!110525 () Bool)

(declare-fun b_next!111229 () Bool)

(assert (=> b!3981537 (= b_free!110525 (not b_next!111229))))

(declare-fun tp!1213691 () Bool)

(declare-fun b_and!306035 () Bool)

(assert (=> b!3981537 (= tp!1213691 b_and!306035)))

(declare-fun b_free!110527 () Bool)

(declare-fun b_next!111231 () Bool)

(assert (=> b!3981537 (= b_free!110527 (not b_next!111231))))

(declare-fun tp!1213696 () Bool)

(declare-fun b_and!306037 () Bool)

(assert (=> b!3981537 (= tp!1213696 b_and!306037)))

(declare-fun b!3981525 () Bool)

(declare-fun e!2467483 () Bool)

(declare-fun e!2467468 () Bool)

(assert (=> b!3981525 (= e!2467483 e!2467468)))

(declare-fun res!1613733 () Bool)

(assert (=> b!3981525 (=> res!1613733 e!2467468)))

(declare-datatypes ((C!23440 0))(
  ( (C!23441 (val!13814 Int)) )
))
(declare-datatypes ((List!42692 0))(
  ( (Nil!42568) (Cons!42568 (h!47988 C!23440) (t!331347 List!42692)) )
))
(declare-fun lt!1398942 () List!42692)

(declare-fun lt!1398939 () List!42692)

(declare-fun isPrefix!3809 (List!42692 List!42692) Bool)

(assert (=> b!3981525 (= res!1613733 (not (isPrefix!3809 lt!1398942 lt!1398939)))))

(declare-fun lt!1398953 () List!42692)

(assert (=> b!3981525 (isPrefix!3809 lt!1398942 lt!1398953)))

(declare-fun lt!1398955 () List!42692)

(declare-fun lt!1398962 () List!42692)

(declare-datatypes ((Unit!61235 0))(
  ( (Unit!61236) )
))
(declare-fun lt!1398966 () Unit!61235)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!642 (List!42692 List!42692 List!42692) Unit!61235)

(assert (=> b!3981525 (= lt!1398966 (lemmaPrefixStaysPrefixWhenAddingToSuffix!642 lt!1398942 lt!1398962 lt!1398955))))

(declare-fun b!3981526 () Bool)

(declare-fun e!2467473 () Bool)

(declare-fun tp_is_empty!20225 () Bool)

(declare-fun tp!1213701 () Bool)

(assert (=> b!3981526 (= e!2467473 (and tp_is_empty!20225 tp!1213701))))

(declare-fun b!3981527 () Bool)

(declare-fun e!2467471 () Bool)

(declare-fun tp!1213698 () Bool)

(assert (=> b!3981527 (= e!2467471 (and tp_is_empty!20225 tp!1213698))))

(declare-fun b!3981528 () Bool)

(declare-fun e!2467459 () Bool)

(declare-fun e!2467458 () Bool)

(declare-fun tp!1213695 () Bool)

(assert (=> b!3981528 (= e!2467459 (and e!2467458 tp!1213695))))

(declare-fun b!3981529 () Bool)

(declare-fun e!2467463 () Bool)

(declare-fun e!2467486 () Bool)

(assert (=> b!3981529 (= e!2467463 e!2467486)))

(declare-fun res!1613738 () Bool)

(assert (=> b!3981529 (=> res!1613738 e!2467486)))

(declare-datatypes ((IArray!25871 0))(
  ( (IArray!25872 (innerList!12993 List!42692)) )
))
(declare-datatypes ((Conc!12933 0))(
  ( (Node!12933 (left!32192 Conc!12933) (right!32522 Conc!12933) (csize!26096 Int) (cheight!13144 Int)) (Leaf!20001 (xs!16239 IArray!25871) (csize!26097 Int)) (Empty!12933) )
))
(declare-datatypes ((BalanceConc!25460 0))(
  ( (BalanceConc!25461 (c!689734 Conc!12933)) )
))
(declare-datatypes ((List!42693 0))(
  ( (Nil!42569) (Cons!42569 (h!47989 (_ BitVec 16)) (t!331348 List!42693)) )
))
(declare-datatypes ((TokenValue!6952 0))(
  ( (FloatLiteralValue!13904 (text!49109 List!42693)) (TokenValueExt!6951 (__x!26121 Int)) (Broken!34760 (value!212185 List!42693)) (Object!7075) (End!6952) (Def!6952) (Underscore!6952) (Match!6952) (Else!6952) (Error!6952) (Case!6952) (If!6952) (Extends!6952) (Abstract!6952) (Class!6952) (Val!6952) (DelimiterValue!13904 (del!7012 List!42693)) (KeywordValue!6958 (value!212186 List!42693)) (CommentValue!13904 (value!212187 List!42693)) (WhitespaceValue!13904 (value!212188 List!42693)) (IndentationValue!6952 (value!212189 List!42693)) (String!48477) (Int32!6952) (Broken!34761 (value!212190 List!42693)) (Boolean!6953) (Unit!61237) (OperatorValue!6955 (op!7012 List!42693)) (IdentifierValue!13904 (value!212191 List!42693)) (IdentifierValue!13905 (value!212192 List!42693)) (WhitespaceValue!13905 (value!212193 List!42693)) (True!13904) (False!13904) (Broken!34762 (value!212194 List!42693)) (Broken!34763 (value!212195 List!42693)) (True!13905) (RightBrace!6952) (RightBracket!6952) (Colon!6952) (Null!6952) (Comma!6952) (LeftBracket!6952) (False!13905) (LeftBrace!6952) (ImaginaryLiteralValue!6952 (text!49110 List!42693)) (StringLiteralValue!20856 (value!212196 List!42693)) (EOFValue!6952 (value!212197 List!42693)) (IdentValue!6952 (value!212198 List!42693)) (DelimiterValue!13905 (value!212199 List!42693)) (DedentValue!6952 (value!212200 List!42693)) (NewLineValue!6952 (value!212201 List!42693)) (IntegerValue!20856 (value!212202 (_ BitVec 32)) (text!49111 List!42693)) (IntegerValue!20857 (value!212203 Int) (text!49112 List!42693)) (Times!6952) (Or!6952) (Equal!6952) (Minus!6952) (Broken!34764 (value!212204 List!42693)) (And!6952) (Div!6952) (LessEqual!6952) (Mod!6952) (Concat!18579) (Not!6952) (Plus!6952) (SpaceValue!6952 (value!212205 List!42693)) (IntegerValue!20858 (value!212206 Int) (text!49113 List!42693)) (StringLiteralValue!20857 (text!49114 List!42693)) (FloatLiteralValue!13905 (text!49115 List!42693)) (BytesLiteralValue!6952 (value!212207 List!42693)) (CommentValue!13905 (value!212208 List!42693)) (StringLiteralValue!20858 (value!212209 List!42693)) (ErrorTokenValue!6952 (msg!7013 List!42693)) )
))
(declare-datatypes ((Regex!11627 0))(
  ( (ElementMatch!11627 (c!689735 C!23440)) (Concat!18580 (regOne!23766 Regex!11627) (regTwo!23766 Regex!11627)) (EmptyExpr!11627) (Star!11627 (reg!11956 Regex!11627)) (EmptyLang!11627) (Union!11627 (regOne!23767 Regex!11627) (regTwo!23767 Regex!11627)) )
))
(declare-datatypes ((String!48478 0))(
  ( (String!48479 (value!212210 String)) )
))
(declare-datatypes ((TokenValueInjection!13332 0))(
  ( (TokenValueInjection!13333 (toValue!9210 Int) (toChars!9069 Int)) )
))
(declare-datatypes ((Rule!13244 0))(
  ( (Rule!13245 (regex!6722 Regex!11627) (tag!7582 String!48478) (isSeparator!6722 Bool) (transformation!6722 TokenValueInjection!13332)) )
))
(declare-datatypes ((Token!12582 0))(
  ( (Token!12583 (value!212211 TokenValue!6952) (rule!9728 Rule!13244) (size!31842 Int) (originalCharacters!7322 List!42692)) )
))
(declare-fun token!484 () Token!12582)

(declare-fun lt!1398974 () List!42692)

(declare-fun matchR!5604 (Regex!11627 List!42692) Bool)

(assert (=> b!3981529 (= res!1613738 (not (matchR!5604 (regex!6722 (rule!9728 token!484)) lt!1398974)))))

(assert (=> b!3981529 (isPrefix!3809 lt!1398974 lt!1398962)))

(declare-fun prefix!494 () List!42692)

(declare-fun newSuffix!27 () List!42692)

(declare-fun lt!1398928 () Unit!61235)

(assert (=> b!3981529 (= lt!1398928 (lemmaPrefixStaysPrefixWhenAddingToSuffix!642 lt!1398974 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!42692)

(declare-fun lt!1398968 () Unit!61235)

(assert (=> b!3981529 (= lt!1398968 (lemmaPrefixStaysPrefixWhenAddingToSuffix!642 lt!1398974 prefix!494 suffix!1299))))

(declare-fun b!3981530 () Bool)

(declare-fun e!2467481 () Bool)

(declare-fun e!2467460 () Bool)

(assert (=> b!3981530 (= e!2467481 (not e!2467460))))

(declare-fun res!1613747 () Bool)

(assert (=> b!3981530 (=> res!1613747 e!2467460)))

(declare-fun lt!1398926 () List!42692)

(assert (=> b!3981530 (= res!1613747 (not (= lt!1398926 lt!1398939)))))

(declare-fun suffixResult!105 () List!42692)

(declare-fun ++!11124 (List!42692 List!42692) List!42692)

(assert (=> b!3981530 (= lt!1398926 (++!11124 lt!1398974 suffixResult!105))))

(declare-fun lt!1398935 () Unit!61235)

(declare-fun lemmaInv!937 (TokenValueInjection!13332) Unit!61235)

(assert (=> b!3981530 (= lt!1398935 (lemmaInv!937 (transformation!6722 (rule!9728 token!484))))))

(declare-datatypes ((LexerInterface!6311 0))(
  ( (LexerInterfaceExt!6308 (__x!26122 Int)) (Lexer!6309) )
))
(declare-fun thiss!21717 () LexerInterface!6311)

(declare-fun ruleValid!2654 (LexerInterface!6311 Rule!13244) Bool)

(assert (=> b!3981530 (ruleValid!2654 thiss!21717 (rule!9728 token!484))))

(declare-datatypes ((List!42694 0))(
  ( (Nil!42570) (Cons!42570 (h!47990 Rule!13244) (t!331349 List!42694)) )
))
(declare-fun rules!2999 () List!42694)

(declare-fun lt!1398941 () Unit!61235)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1728 (LexerInterface!6311 Rule!13244 List!42694) Unit!61235)

(assert (=> b!3981530 (= lt!1398941 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1728 thiss!21717 (rule!9728 token!484) rules!2999))))

(declare-fun res!1613728 () Bool)

(declare-fun e!2467477 () Bool)

(assert (=> start!374728 (=> (not res!1613728) (not e!2467477))))

(get-info :version)

(assert (=> start!374728 (= res!1613728 ((_ is Lexer!6309) thiss!21717))))

(assert (=> start!374728 e!2467477))

(declare-fun e!2467478 () Bool)

(assert (=> start!374728 e!2467478))

(declare-fun e!2467482 () Bool)

(declare-fun inv!56866 (Token!12582) Bool)

(assert (=> start!374728 (and (inv!56866 token!484) e!2467482)))

(assert (=> start!374728 e!2467471))

(declare-fun e!2467472 () Bool)

(assert (=> start!374728 e!2467472))

(assert (=> start!374728 e!2467473))

(assert (=> start!374728 true))

(assert (=> start!374728 e!2467459))

(declare-fun e!2467467 () Bool)

(assert (=> start!374728 e!2467467))

(declare-fun b!3981531 () Bool)

(declare-fun e!2467462 () Bool)

(declare-fun e!2467466 () Bool)

(assert (=> b!3981531 (= e!2467462 e!2467466)))

(declare-fun res!1613732 () Bool)

(assert (=> b!3981531 (=> res!1613732 e!2467466)))

(declare-datatypes ((tuple2!41792 0))(
  ( (tuple2!41793 (_1!24030 Token!12582) (_2!24030 List!42692)) )
))
(declare-datatypes ((Option!9136 0))(
  ( (None!9135) (Some!9135 (v!39483 tuple2!41792)) )
))
(declare-fun lt!1398947 () Option!9136)

(assert (=> b!3981531 (= res!1613732 (not ((_ is Some!9135) lt!1398947)))))

(declare-fun maxPrefix!3609 (LexerInterface!6311 List!42694 List!42692) Option!9136)

(assert (=> b!3981531 (= lt!1398947 (maxPrefix!3609 thiss!21717 rules!2999 lt!1398962))))

(declare-fun lt!1398961 () Token!12582)

(declare-fun lt!1398957 () tuple2!41792)

(declare-fun lt!1398925 () List!42692)

(assert (=> b!3981531 (and (= suffixResult!105 lt!1398925) (= lt!1398957 (tuple2!41793 lt!1398961 lt!1398925)))))

(declare-fun lt!1398971 () Unit!61235)

(declare-fun lemmaSamePrefixThenSameSuffix!1996 (List!42692 List!42692 List!42692 List!42692 List!42692) Unit!61235)

(assert (=> b!3981531 (= lt!1398971 (lemmaSamePrefixThenSameSuffix!1996 lt!1398974 suffixResult!105 lt!1398974 lt!1398925 lt!1398939))))

(declare-fun lt!1398922 () List!42692)

(assert (=> b!3981531 (isPrefix!3809 lt!1398974 lt!1398922)))

(declare-fun lt!1398933 () Unit!61235)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2652 (List!42692 List!42692) Unit!61235)

(assert (=> b!3981531 (= lt!1398933 (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398974 lt!1398925))))

(declare-fun b!3981532 () Bool)

(declare-fun e!2467470 () Bool)

(declare-fun e!2467474 () Bool)

(assert (=> b!3981532 (= e!2467470 e!2467474)))

(declare-fun res!1613724 () Bool)

(assert (=> b!3981532 (=> res!1613724 e!2467474)))

(declare-fun lt!1398963 () List!42692)

(assert (=> b!3981532 (= res!1613724 (not (= lt!1398963 suffix!1299)))))

(assert (=> b!3981532 (= lt!1398963 (++!11124 newSuffix!27 lt!1398955))))

(declare-fun getSuffix!2240 (List!42692 List!42692) List!42692)

(assert (=> b!3981532 (= lt!1398955 (getSuffix!2240 suffix!1299 newSuffix!27))))

(declare-fun b!3981533 () Bool)

(assert (=> b!3981533 (= e!2467466 e!2467470)))

(declare-fun res!1613725 () Bool)

(assert (=> b!3981533 (=> res!1613725 e!2467470)))

(declare-fun lt!1398924 () Option!9136)

(assert (=> b!3981533 (= res!1613725 (not (= lt!1398924 (Some!9135 (v!39483 lt!1398947)))))))

(declare-fun newSuffixResult!27 () List!42692)

(assert (=> b!3981533 (isPrefix!3809 lt!1398942 (++!11124 lt!1398942 newSuffixResult!27))))

(declare-fun lt!1398973 () Unit!61235)

(assert (=> b!3981533 (= lt!1398973 (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398942 newSuffixResult!27))))

(declare-fun lt!1398940 () List!42692)

(assert (=> b!3981533 (isPrefix!3809 lt!1398942 lt!1398940)))

(assert (=> b!3981533 (= lt!1398940 (++!11124 lt!1398942 (_2!24030 (v!39483 lt!1398947))))))

(declare-fun lt!1398946 () Unit!61235)

(assert (=> b!3981533 (= lt!1398946 (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398942 (_2!24030 (v!39483 lt!1398947))))))

(declare-fun lt!1398960 () TokenValue!6952)

(declare-fun lt!1398967 () Int)

(assert (=> b!3981533 (= lt!1398924 (Some!9135 (tuple2!41793 (Token!12583 lt!1398960 (rule!9728 (_1!24030 (v!39483 lt!1398947))) lt!1398967 lt!1398942) (_2!24030 (v!39483 lt!1398947)))))))

(declare-fun maxPrefixOneRule!2643 (LexerInterface!6311 Rule!13244 List!42692) Option!9136)

(assert (=> b!3981533 (= lt!1398924 (maxPrefixOneRule!2643 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))) lt!1398962))))

(declare-fun size!31843 (List!42692) Int)

(assert (=> b!3981533 (= lt!1398967 (size!31843 lt!1398942))))

(declare-fun apply!9933 (TokenValueInjection!13332 BalanceConc!25460) TokenValue!6952)

(declare-fun seqFromList!4961 (List!42692) BalanceConc!25460)

(assert (=> b!3981533 (= lt!1398960 (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (seqFromList!4961 lt!1398942)))))

(declare-fun lt!1398944 () Unit!61235)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1465 (LexerInterface!6311 List!42694 List!42692 List!42692 List!42692 Rule!13244) Unit!61235)

(assert (=> b!3981533 (= lt!1398944 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1465 thiss!21717 rules!2999 lt!1398942 lt!1398962 (_2!24030 (v!39483 lt!1398947)) (rule!9728 (_1!24030 (v!39483 lt!1398947)))))))

(declare-fun list!15800 (BalanceConc!25460) List!42692)

(declare-fun charsOf!4538 (Token!12582) BalanceConc!25460)

(assert (=> b!3981533 (= lt!1398942 (list!15800 (charsOf!4538 (_1!24030 (v!39483 lt!1398947)))))))

(declare-fun lt!1398965 () Unit!61235)

(assert (=> b!3981533 (= lt!1398965 (lemmaInv!937 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))))))

(assert (=> b!3981533 (ruleValid!2654 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))))))

(declare-fun lt!1398931 () Unit!61235)

(assert (=> b!3981533 (= lt!1398931 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1728 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))) rules!2999))))

(declare-fun lt!1398937 () Unit!61235)

(declare-fun lemmaCharactersSize!1317 (Token!12582) Unit!61235)

(assert (=> b!3981533 (= lt!1398937 (lemmaCharactersSize!1317 token!484))))

(declare-fun lt!1398969 () Unit!61235)

(assert (=> b!3981533 (= lt!1398969 (lemmaCharactersSize!1317 (_1!24030 (v!39483 lt!1398947))))))

(declare-fun b!3981534 () Bool)

(declare-fun e!2467461 () Bool)

(declare-fun e!2467485 () Bool)

(assert (=> b!3981534 (= e!2467461 e!2467485)))

(declare-fun res!1613734 () Bool)

(assert (=> b!3981534 (=> res!1613734 e!2467485)))

(declare-fun lt!1398938 () List!42692)

(declare-fun lt!1398921 () List!42692)

(assert (=> b!3981534 (= res!1613734 (or (not (= lt!1398939 lt!1398921)) (not (= lt!1398939 lt!1398938))))))

(assert (=> b!3981534 (= lt!1398921 lt!1398938)))

(declare-fun lt!1398950 () List!42692)

(assert (=> b!3981534 (= lt!1398938 (++!11124 lt!1398974 lt!1398950))))

(declare-fun lt!1398970 () List!42692)

(assert (=> b!3981534 (= lt!1398921 (++!11124 lt!1398970 suffix!1299))))

(declare-fun lt!1398951 () List!42692)

(assert (=> b!3981534 (= lt!1398950 (++!11124 lt!1398951 suffix!1299))))

(declare-fun lt!1398956 () Unit!61235)

(declare-fun lemmaConcatAssociativity!2444 (List!42692 List!42692 List!42692) Unit!61235)

(assert (=> b!3981534 (= lt!1398956 (lemmaConcatAssociativity!2444 lt!1398974 lt!1398951 suffix!1299))))

(declare-fun b!3981535 () Bool)

(assert (=> b!3981535 (= e!2467486 e!2467462)))

(declare-fun res!1613742 () Bool)

(assert (=> b!3981535 (=> res!1613742 e!2467462)))

(assert (=> b!3981535 (= res!1613742 (not (= lt!1398922 lt!1398939)))))

(assert (=> b!3981535 (= lt!1398922 (++!11124 lt!1398974 lt!1398925))))

(assert (=> b!3981535 (= lt!1398925 (getSuffix!2240 lt!1398939 lt!1398974))))

(declare-fun e!2467469 () Bool)

(assert (=> b!3981535 e!2467469))

(declare-fun res!1613746 () Bool)

(assert (=> b!3981535 (=> (not res!1613746) (not e!2467469))))

(assert (=> b!3981535 (= res!1613746 (isPrefix!3809 lt!1398939 lt!1398939))))

(declare-fun lt!1398959 () Unit!61235)

(declare-fun lemmaIsPrefixRefl!2401 (List!42692 List!42692) Unit!61235)

(assert (=> b!3981535 (= lt!1398959 (lemmaIsPrefixRefl!2401 lt!1398939 lt!1398939))))

(declare-fun b!3981536 () Bool)

(declare-fun e!2467487 () Bool)

(assert (=> b!3981536 (= e!2467477 e!2467487)))

(declare-fun res!1613726 () Bool)

(assert (=> b!3981536 (=> (not res!1613726) (not e!2467487))))

(declare-fun lt!1398943 () Int)

(declare-fun lt!1398975 () Int)

(assert (=> b!3981536 (= res!1613726 (>= lt!1398943 lt!1398975))))

(assert (=> b!3981536 (= lt!1398975 (size!31843 lt!1398974))))

(assert (=> b!3981536 (= lt!1398943 (size!31843 prefix!494))))

(assert (=> b!3981536 (= lt!1398974 (list!15800 (charsOf!4538 token!484)))))

(declare-fun e!2467479 () Bool)

(assert (=> b!3981537 (= e!2467479 (and tp!1213691 tp!1213696))))

(declare-fun b!3981538 () Bool)

(declare-fun e!2467484 () Bool)

(assert (=> b!3981538 (= e!2467484 (>= (size!31843 lt!1398962) lt!1398967))))

(declare-fun lt!1398927 () List!42692)

(assert (=> b!3981538 (= (_2!24030 (v!39483 lt!1398947)) lt!1398927)))

(declare-fun lt!1398929 () Unit!61235)

(assert (=> b!3981538 (= lt!1398929 (lemmaSamePrefixThenSameSuffix!1996 lt!1398942 (_2!24030 (v!39483 lt!1398947)) lt!1398942 lt!1398927 lt!1398962))))

(declare-fun lt!1398949 () List!42692)

(assert (=> b!3981538 (isPrefix!3809 lt!1398942 lt!1398949)))

(declare-fun lt!1398945 () Unit!61235)

(assert (=> b!3981538 (= lt!1398945 (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398942 lt!1398927))))

(declare-fun b!3981539 () Bool)

(declare-fun res!1613727 () Bool)

(assert (=> b!3981539 (=> (not res!1613727) (not e!2467477))))

(declare-fun rulesInvariant!5654 (LexerInterface!6311 List!42694) Bool)

(assert (=> b!3981539 (= res!1613727 (rulesInvariant!5654 thiss!21717 rules!2999))))

(declare-fun b!3981540 () Bool)

(assert (=> b!3981540 (= e!2467468 e!2467484)))

(declare-fun res!1613748 () Bool)

(assert (=> b!3981540 (=> res!1613748 e!2467484)))

(assert (=> b!3981540 (= res!1613748 (not (= lt!1398949 lt!1398962)))))

(assert (=> b!3981540 (= lt!1398949 (++!11124 lt!1398942 lt!1398927))))

(assert (=> b!3981540 (= lt!1398927 (getSuffix!2240 lt!1398962 lt!1398942))))

(declare-fun b!3981541 () Bool)

(assert (=> b!3981541 (= e!2467474 e!2467483)))

(declare-fun res!1613736 () Bool)

(assert (=> b!3981541 (=> res!1613736 e!2467483)))

(assert (=> b!3981541 (= res!1613736 (not (= lt!1398953 lt!1398939)))))

(assert (=> b!3981541 (= lt!1398953 (++!11124 prefix!494 lt!1398963))))

(assert (=> b!3981541 (= lt!1398953 (++!11124 lt!1398962 lt!1398955))))

(declare-fun lt!1398952 () Unit!61235)

(assert (=> b!3981541 (= lt!1398952 (lemmaConcatAssociativity!2444 prefix!494 newSuffix!27 lt!1398955))))

(declare-fun b!3981542 () Bool)

(declare-fun e!2467465 () Bool)

(assert (=> b!3981542 (= e!2467465 e!2467481)))

(declare-fun res!1613744 () Bool)

(assert (=> b!3981542 (=> (not res!1613744) (not e!2467481))))

(declare-fun lt!1398958 () Option!9136)

(assert (=> b!3981542 (= res!1613744 (= (maxPrefix!3609 thiss!21717 rules!2999 lt!1398939) lt!1398958))))

(assert (=> b!3981542 (= lt!1398958 (Some!9135 lt!1398957))))

(assert (=> b!3981542 (= lt!1398957 (tuple2!41793 token!484 suffixResult!105))))

(assert (=> b!3981542 (= lt!1398939 (++!11124 prefix!494 suffix!1299))))

(declare-fun b!3981543 () Bool)

(declare-fun tp!1213702 () Bool)

(declare-fun e!2467457 () Bool)

(declare-fun inv!21 (TokenValue!6952) Bool)

(assert (=> b!3981543 (= e!2467482 (and (inv!21 (value!212211 token!484)) e!2467457 tp!1213702))))

(declare-fun b!3981544 () Bool)

(declare-fun tp!1213692 () Bool)

(assert (=> b!3981544 (= e!2467472 (and tp_is_empty!20225 tp!1213692))))

(declare-fun b!3981545 () Bool)

(declare-fun res!1613745 () Bool)

(assert (=> b!3981545 (=> res!1613745 e!2467468)))

(assert (=> b!3981545 (= res!1613745 (not (= lt!1398940 lt!1398962)))))

(declare-fun b!3981546 () Bool)

(assert (=> b!3981546 (= e!2467485 e!2467463)))

(declare-fun res!1613739 () Bool)

(assert (=> b!3981546 (=> res!1613739 e!2467463)))

(declare-fun lt!1398964 () Option!9136)

(assert (=> b!3981546 (= res!1613739 (not (= lt!1398964 lt!1398958)))))

(assert (=> b!3981546 (= lt!1398964 (Some!9135 (tuple2!41793 lt!1398961 suffixResult!105)))))

(assert (=> b!3981546 (= lt!1398964 (maxPrefixOneRule!2643 thiss!21717 (rule!9728 token!484) lt!1398939))))

(declare-fun lt!1398972 () TokenValue!6952)

(assert (=> b!3981546 (= lt!1398961 (Token!12583 lt!1398972 (rule!9728 token!484) lt!1398975 lt!1398974))))

(assert (=> b!3981546 (= lt!1398972 (apply!9933 (transformation!6722 (rule!9728 token!484)) (seqFromList!4961 lt!1398974)))))

(declare-fun lt!1398932 () Unit!61235)

(assert (=> b!3981546 (= lt!1398932 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1465 thiss!21717 rules!2999 lt!1398974 lt!1398939 suffixResult!105 (rule!9728 token!484)))))

(assert (=> b!3981546 (= lt!1398950 suffixResult!105)))

(declare-fun lt!1398954 () Unit!61235)

(assert (=> b!3981546 (= lt!1398954 (lemmaSamePrefixThenSameSuffix!1996 lt!1398974 lt!1398950 lt!1398974 suffixResult!105 lt!1398939))))

(assert (=> b!3981546 (isPrefix!3809 lt!1398974 lt!1398938)))

(declare-fun lt!1398934 () Unit!61235)

(assert (=> b!3981546 (= lt!1398934 (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398974 lt!1398950))))

(declare-fun e!2467475 () Bool)

(assert (=> b!3981547 (= e!2467475 (and tp!1213697 tp!1213700))))

(declare-fun b!3981548 () Bool)

(declare-fun tp!1213694 () Bool)

(assert (=> b!3981548 (= e!2467467 (and tp_is_empty!20225 tp!1213694))))

(declare-fun b!3981549 () Bool)

(declare-fun res!1613729 () Bool)

(assert (=> b!3981549 (=> (not res!1613729) (not e!2467477))))

(assert (=> b!3981549 (= res!1613729 (>= (size!31843 suffix!1299) (size!31843 newSuffix!27)))))

(declare-fun tp!1213690 () Bool)

(declare-fun b!3981550 () Bool)

(declare-fun inv!56863 (String!48478) Bool)

(declare-fun inv!56867 (TokenValueInjection!13332) Bool)

(assert (=> b!3981550 (= e!2467457 (and tp!1213690 (inv!56863 (tag!7582 (rule!9728 token!484))) (inv!56867 (transformation!6722 (rule!9728 token!484))) e!2467479))))

(declare-fun b!3981551 () Bool)

(assert (=> b!3981551 (= e!2467487 e!2467465)))

(declare-fun res!1613743 () Bool)

(assert (=> b!3981551 (=> (not res!1613743) (not e!2467465))))

(declare-fun lt!1398923 () List!42692)

(assert (=> b!3981551 (= res!1613743 (= lt!1398923 lt!1398962))))

(assert (=> b!3981551 (= lt!1398962 (++!11124 prefix!494 newSuffix!27))))

(assert (=> b!3981551 (= lt!1398923 (++!11124 lt!1398974 newSuffixResult!27))))

(declare-fun b!3981552 () Bool)

(declare-fun res!1613735 () Bool)

(assert (=> b!3981552 (=> (not res!1613735) (not e!2467477))))

(declare-fun isEmpty!25450 (List!42694) Bool)

(assert (=> b!3981552 (= res!1613735 (not (isEmpty!25450 rules!2999)))))

(declare-fun b!3981553 () Bool)

(assert (=> b!3981553 (= e!2467469 (and (= (size!31842 token!484) lt!1398975) (= (originalCharacters!7322 token!484) lt!1398974)))))

(declare-fun b!3981554 () Bool)

(declare-fun e!2467488 () Bool)

(assert (=> b!3981554 (= e!2467460 e!2467488)))

(declare-fun res!1613731 () Bool)

(assert (=> b!3981554 (=> res!1613731 e!2467488)))

(assert (=> b!3981554 (= res!1613731 (not (isPrefix!3809 lt!1398974 lt!1398939)))))

(assert (=> b!3981554 (isPrefix!3809 prefix!494 lt!1398939)))

(declare-fun lt!1398948 () Unit!61235)

(assert (=> b!3981554 (= lt!1398948 (lemmaConcatTwoListThenFirstIsPrefix!2652 prefix!494 suffix!1299))))

(assert (=> b!3981554 (isPrefix!3809 lt!1398974 lt!1398926)))

(declare-fun lt!1398930 () Unit!61235)

(assert (=> b!3981554 (= lt!1398930 (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398974 suffixResult!105))))

(declare-fun b!3981555 () Bool)

(declare-fun res!1613730 () Bool)

(assert (=> b!3981555 (=> (not res!1613730) (not e!2467469))))

(assert (=> b!3981555 (= res!1613730 (= (size!31842 token!484) (size!31843 (originalCharacters!7322 token!484))))))

(declare-fun b!3981556 () Bool)

(assert (=> b!3981556 (= e!2467488 e!2467461)))

(declare-fun res!1613737 () Bool)

(assert (=> b!3981556 (=> res!1613737 e!2467461)))

(assert (=> b!3981556 (= res!1613737 (not (= lt!1398970 prefix!494)))))

(assert (=> b!3981556 (= lt!1398970 (++!11124 lt!1398974 lt!1398951))))

(assert (=> b!3981556 (= lt!1398951 (getSuffix!2240 prefix!494 lt!1398974))))

(assert (=> b!3981556 (isPrefix!3809 lt!1398974 prefix!494)))

(declare-fun lt!1398936 () Unit!61235)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!387 (List!42692 List!42692 List!42692) Unit!61235)

(assert (=> b!3981556 (= lt!1398936 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!387 prefix!494 lt!1398974 lt!1398939))))

(declare-fun b!3981557 () Bool)

(declare-fun tp!1213693 () Bool)

(assert (=> b!3981557 (= e!2467478 (and tp_is_empty!20225 tp!1213693))))

(declare-fun b!3981558 () Bool)

(declare-fun tp!1213699 () Bool)

(assert (=> b!3981558 (= e!2467458 (and tp!1213699 (inv!56863 (tag!7582 (h!47990 rules!2999))) (inv!56867 (transformation!6722 (h!47990 rules!2999))) e!2467475))))

(declare-fun b!3981559 () Bool)

(declare-fun res!1613741 () Bool)

(assert (=> b!3981559 (=> (not res!1613741) (not e!2467469))))

(assert (=> b!3981559 (= res!1613741 (= (value!212211 token!484) lt!1398972))))

(declare-fun b!3981560 () Bool)

(declare-fun res!1613740 () Bool)

(assert (=> b!3981560 (=> (not res!1613740) (not e!2467477))))

(assert (=> b!3981560 (= res!1613740 (isPrefix!3809 newSuffix!27 suffix!1299))))

(assert (= (and start!374728 res!1613728) b!3981552))

(assert (= (and b!3981552 res!1613735) b!3981539))

(assert (= (and b!3981539 res!1613727) b!3981549))

(assert (= (and b!3981549 res!1613729) b!3981560))

(assert (= (and b!3981560 res!1613740) b!3981536))

(assert (= (and b!3981536 res!1613726) b!3981551))

(assert (= (and b!3981551 res!1613743) b!3981542))

(assert (= (and b!3981542 res!1613744) b!3981530))

(assert (= (and b!3981530 (not res!1613747)) b!3981554))

(assert (= (and b!3981554 (not res!1613731)) b!3981556))

(assert (= (and b!3981556 (not res!1613737)) b!3981534))

(assert (= (and b!3981534 (not res!1613734)) b!3981546))

(assert (= (and b!3981546 (not res!1613739)) b!3981529))

(assert (= (and b!3981529 (not res!1613738)) b!3981535))

(assert (= (and b!3981535 res!1613746) b!3981559))

(assert (= (and b!3981559 res!1613741) b!3981555))

(assert (= (and b!3981555 res!1613730) b!3981553))

(assert (= (and b!3981535 (not res!1613742)) b!3981531))

(assert (= (and b!3981531 (not res!1613732)) b!3981533))

(assert (= (and b!3981533 (not res!1613725)) b!3981532))

(assert (= (and b!3981532 (not res!1613724)) b!3981541))

(assert (= (and b!3981541 (not res!1613736)) b!3981525))

(assert (= (and b!3981525 (not res!1613733)) b!3981545))

(assert (= (and b!3981545 (not res!1613745)) b!3981540))

(assert (= (and b!3981540 (not res!1613748)) b!3981538))

(assert (= (and start!374728 ((_ is Cons!42568) prefix!494)) b!3981557))

(assert (= b!3981550 b!3981537))

(assert (= b!3981543 b!3981550))

(assert (= start!374728 b!3981543))

(assert (= (and start!374728 ((_ is Cons!42568) suffixResult!105)) b!3981527))

(assert (= (and start!374728 ((_ is Cons!42568) suffix!1299)) b!3981544))

(assert (= (and start!374728 ((_ is Cons!42568) newSuffix!27)) b!3981526))

(assert (= b!3981558 b!3981547))

(assert (= b!3981528 b!3981558))

(assert (= (and start!374728 ((_ is Cons!42570) rules!2999)) b!3981528))

(assert (= (and start!374728 ((_ is Cons!42568) newSuffixResult!27)) b!3981548))

(declare-fun m!4555297 () Bool)

(assert (=> b!3981546 m!4555297))

(declare-fun m!4555299 () Bool)

(assert (=> b!3981546 m!4555299))

(declare-fun m!4555301 () Bool)

(assert (=> b!3981546 m!4555301))

(declare-fun m!4555303 () Bool)

(assert (=> b!3981546 m!4555303))

(declare-fun m!4555305 () Bool)

(assert (=> b!3981546 m!4555305))

(assert (=> b!3981546 m!4555299))

(declare-fun m!4555307 () Bool)

(assert (=> b!3981546 m!4555307))

(declare-fun m!4555309 () Bool)

(assert (=> b!3981546 m!4555309))

(declare-fun m!4555311 () Bool)

(assert (=> b!3981543 m!4555311))

(declare-fun m!4555313 () Bool)

(assert (=> b!3981538 m!4555313))

(declare-fun m!4555315 () Bool)

(assert (=> b!3981538 m!4555315))

(declare-fun m!4555317 () Bool)

(assert (=> b!3981538 m!4555317))

(declare-fun m!4555319 () Bool)

(assert (=> b!3981538 m!4555319))

(declare-fun m!4555321 () Bool)

(assert (=> b!3981558 m!4555321))

(declare-fun m!4555323 () Bool)

(assert (=> b!3981558 m!4555323))

(declare-fun m!4555325 () Bool)

(assert (=> b!3981525 m!4555325))

(declare-fun m!4555327 () Bool)

(assert (=> b!3981525 m!4555327))

(declare-fun m!4555329 () Bool)

(assert (=> b!3981525 m!4555329))

(declare-fun m!4555331 () Bool)

(assert (=> b!3981536 m!4555331))

(declare-fun m!4555333 () Bool)

(assert (=> b!3981536 m!4555333))

(declare-fun m!4555335 () Bool)

(assert (=> b!3981536 m!4555335))

(assert (=> b!3981536 m!4555335))

(declare-fun m!4555337 () Bool)

(assert (=> b!3981536 m!4555337))

(declare-fun m!4555339 () Bool)

(assert (=> b!3981549 m!4555339))

(declare-fun m!4555341 () Bool)

(assert (=> b!3981549 m!4555341))

(declare-fun m!4555343 () Bool)

(assert (=> b!3981555 m!4555343))

(declare-fun m!4555345 () Bool)

(assert (=> b!3981529 m!4555345))

(declare-fun m!4555347 () Bool)

(assert (=> b!3981529 m!4555347))

(declare-fun m!4555349 () Bool)

(assert (=> b!3981529 m!4555349))

(declare-fun m!4555351 () Bool)

(assert (=> b!3981529 m!4555351))

(declare-fun m!4555353 () Bool)

(assert (=> b!3981556 m!4555353))

(declare-fun m!4555355 () Bool)

(assert (=> b!3981556 m!4555355))

(declare-fun m!4555357 () Bool)

(assert (=> b!3981556 m!4555357))

(declare-fun m!4555359 () Bool)

(assert (=> b!3981556 m!4555359))

(declare-fun m!4555361 () Bool)

(assert (=> b!3981551 m!4555361))

(declare-fun m!4555363 () Bool)

(assert (=> b!3981551 m!4555363))

(declare-fun m!4555365 () Bool)

(assert (=> b!3981550 m!4555365))

(declare-fun m!4555367 () Bool)

(assert (=> b!3981550 m!4555367))

(declare-fun m!4555369 () Bool)

(assert (=> b!3981531 m!4555369))

(declare-fun m!4555371 () Bool)

(assert (=> b!3981531 m!4555371))

(declare-fun m!4555373 () Bool)

(assert (=> b!3981531 m!4555373))

(declare-fun m!4555375 () Bool)

(assert (=> b!3981531 m!4555375))

(declare-fun m!4555377 () Bool)

(assert (=> b!3981541 m!4555377))

(declare-fun m!4555379 () Bool)

(assert (=> b!3981541 m!4555379))

(declare-fun m!4555381 () Bool)

(assert (=> b!3981541 m!4555381))

(declare-fun m!4555383 () Bool)

(assert (=> b!3981533 m!4555383))

(declare-fun m!4555385 () Bool)

(assert (=> b!3981533 m!4555385))

(declare-fun m!4555387 () Bool)

(assert (=> b!3981533 m!4555387))

(declare-fun m!4555389 () Bool)

(assert (=> b!3981533 m!4555389))

(declare-fun m!4555391 () Bool)

(assert (=> b!3981533 m!4555391))

(declare-fun m!4555393 () Bool)

(assert (=> b!3981533 m!4555393))

(assert (=> b!3981533 m!4555385))

(declare-fun m!4555395 () Bool)

(assert (=> b!3981533 m!4555395))

(declare-fun m!4555397 () Bool)

(assert (=> b!3981533 m!4555397))

(declare-fun m!4555399 () Bool)

(assert (=> b!3981533 m!4555399))

(declare-fun m!4555401 () Bool)

(assert (=> b!3981533 m!4555401))

(declare-fun m!4555403 () Bool)

(assert (=> b!3981533 m!4555403))

(declare-fun m!4555405 () Bool)

(assert (=> b!3981533 m!4555405))

(declare-fun m!4555407 () Bool)

(assert (=> b!3981533 m!4555407))

(assert (=> b!3981533 m!4555395))

(declare-fun m!4555409 () Bool)

(assert (=> b!3981533 m!4555409))

(declare-fun m!4555411 () Bool)

(assert (=> b!3981533 m!4555411))

(assert (=> b!3981533 m!4555401))

(declare-fun m!4555413 () Bool)

(assert (=> b!3981533 m!4555413))

(declare-fun m!4555415 () Bool)

(assert (=> b!3981533 m!4555415))

(declare-fun m!4555417 () Bool)

(assert (=> b!3981533 m!4555417))

(declare-fun m!4555419 () Bool)

(assert (=> b!3981552 m!4555419))

(declare-fun m!4555421 () Bool)

(assert (=> b!3981532 m!4555421))

(declare-fun m!4555423 () Bool)

(assert (=> b!3981532 m!4555423))

(declare-fun m!4555425 () Bool)

(assert (=> b!3981554 m!4555425))

(declare-fun m!4555427 () Bool)

(assert (=> b!3981554 m!4555427))

(declare-fun m!4555429 () Bool)

(assert (=> b!3981554 m!4555429))

(declare-fun m!4555431 () Bool)

(assert (=> b!3981554 m!4555431))

(declare-fun m!4555433 () Bool)

(assert (=> b!3981554 m!4555433))

(declare-fun m!4555435 () Bool)

(assert (=> b!3981535 m!4555435))

(declare-fun m!4555437 () Bool)

(assert (=> b!3981535 m!4555437))

(declare-fun m!4555439 () Bool)

(assert (=> b!3981535 m!4555439))

(declare-fun m!4555441 () Bool)

(assert (=> b!3981535 m!4555441))

(declare-fun m!4555443 () Bool)

(assert (=> b!3981530 m!4555443))

(declare-fun m!4555445 () Bool)

(assert (=> b!3981530 m!4555445))

(declare-fun m!4555447 () Bool)

(assert (=> b!3981530 m!4555447))

(declare-fun m!4555449 () Bool)

(assert (=> b!3981530 m!4555449))

(declare-fun m!4555451 () Bool)

(assert (=> start!374728 m!4555451))

(declare-fun m!4555453 () Bool)

(assert (=> b!3981539 m!4555453))

(declare-fun m!4555455 () Bool)

(assert (=> b!3981534 m!4555455))

(declare-fun m!4555457 () Bool)

(assert (=> b!3981534 m!4555457))

(declare-fun m!4555459 () Bool)

(assert (=> b!3981534 m!4555459))

(declare-fun m!4555461 () Bool)

(assert (=> b!3981534 m!4555461))

(declare-fun m!4555463 () Bool)

(assert (=> b!3981542 m!4555463))

(declare-fun m!4555465 () Bool)

(assert (=> b!3981542 m!4555465))

(declare-fun m!4555467 () Bool)

(assert (=> b!3981540 m!4555467))

(declare-fun m!4555469 () Bool)

(assert (=> b!3981540 m!4555469))

(declare-fun m!4555471 () Bool)

(assert (=> b!3981560 m!4555471))

(check-sat (not b!3981532) (not b!3981544) (not b!3981557) (not b!3981560) (not b_next!111227) (not b!3981525) (not b_next!111225) (not b!3981542) (not b!3981526) (not b!3981558) (not b!3981556) (not b!3981555) b_and!306033 (not b!3981527) tp_is_empty!20225 (not b!3981549) (not b!3981552) (not b_next!111229) (not b!3981533) (not b_next!111231) (not b!3981531) (not b!3981534) (not b!3981539) (not b!3981548) b_and!306031 b_and!306037 (not b!3981528) (not b!3981551) (not b!3981541) (not start!374728) (not b!3981540) (not b!3981550) (not b!3981529) (not b!3981554) b_and!306035 (not b!3981536) (not b!3981546) (not b!3981543) (not b!3981535) (not b!3981530) (not b!3981538))
(check-sat b_and!306033 (not b_next!111229) (not b_next!111231) (not b_next!111227) b_and!306035 (not b_next!111225) b_and!306031 b_and!306037)
(get-model)

(declare-fun d!1178540 () Bool)

(declare-fun res!1613753 () Bool)

(declare-fun e!2467491 () Bool)

(assert (=> d!1178540 (=> (not res!1613753) (not e!2467491))))

(declare-fun rulesValid!2619 (LexerInterface!6311 List!42694) Bool)

(assert (=> d!1178540 (= res!1613753 (rulesValid!2619 thiss!21717 rules!2999))))

(assert (=> d!1178540 (= (rulesInvariant!5654 thiss!21717 rules!2999) e!2467491)))

(declare-fun b!3981563 () Bool)

(declare-datatypes ((List!42696 0))(
  ( (Nil!42572) (Cons!42572 (h!47992 String!48478) (t!331399 List!42696)) )
))
(declare-fun noDuplicateTag!2620 (LexerInterface!6311 List!42694 List!42696) Bool)

(assert (=> b!3981563 (= e!2467491 (noDuplicateTag!2620 thiss!21717 rules!2999 Nil!42572))))

(assert (= (and d!1178540 res!1613753) b!3981563))

(declare-fun m!4555473 () Bool)

(assert (=> d!1178540 m!4555473))

(declare-fun m!4555475 () Bool)

(assert (=> b!3981563 m!4555475))

(assert (=> b!3981539 d!1178540))

(declare-fun b!3981574 () Bool)

(declare-fun res!1613759 () Bool)

(declare-fun e!2467496 () Bool)

(assert (=> b!3981574 (=> (not res!1613759) (not e!2467496))))

(declare-fun lt!1398978 () List!42692)

(assert (=> b!3981574 (= res!1613759 (= (size!31843 lt!1398978) (+ (size!31843 lt!1398942) (size!31843 lt!1398927))))))

(declare-fun b!3981572 () Bool)

(declare-fun e!2467497 () List!42692)

(assert (=> b!3981572 (= e!2467497 lt!1398927)))

(declare-fun d!1178542 () Bool)

(assert (=> d!1178542 e!2467496))

(declare-fun res!1613758 () Bool)

(assert (=> d!1178542 (=> (not res!1613758) (not e!2467496))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6452 (List!42692) (InoxSet C!23440))

(assert (=> d!1178542 (= res!1613758 (= (content!6452 lt!1398978) ((_ map or) (content!6452 lt!1398942) (content!6452 lt!1398927))))))

(assert (=> d!1178542 (= lt!1398978 e!2467497)))

(declare-fun c!689738 () Bool)

(assert (=> d!1178542 (= c!689738 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178542 (= (++!11124 lt!1398942 lt!1398927) lt!1398978)))

(declare-fun b!3981575 () Bool)

(assert (=> b!3981575 (= e!2467496 (or (not (= lt!1398927 Nil!42568)) (= lt!1398978 lt!1398942)))))

(declare-fun b!3981573 () Bool)

(assert (=> b!3981573 (= e!2467497 (Cons!42568 (h!47988 lt!1398942) (++!11124 (t!331347 lt!1398942) lt!1398927)))))

(assert (= (and d!1178542 c!689738) b!3981572))

(assert (= (and d!1178542 (not c!689738)) b!3981573))

(assert (= (and d!1178542 res!1613758) b!3981574))

(assert (= (and b!3981574 res!1613759) b!3981575))

(declare-fun m!4555477 () Bool)

(assert (=> b!3981574 m!4555477))

(assert (=> b!3981574 m!4555405))

(declare-fun m!4555479 () Bool)

(assert (=> b!3981574 m!4555479))

(declare-fun m!4555481 () Bool)

(assert (=> d!1178542 m!4555481))

(declare-fun m!4555483 () Bool)

(assert (=> d!1178542 m!4555483))

(declare-fun m!4555485 () Bool)

(assert (=> d!1178542 m!4555485))

(declare-fun m!4555487 () Bool)

(assert (=> b!3981573 m!4555487))

(assert (=> b!3981540 d!1178542))

(declare-fun d!1178544 () Bool)

(declare-fun lt!1398981 () List!42692)

(assert (=> d!1178544 (= (++!11124 lt!1398942 lt!1398981) lt!1398962)))

(declare-fun e!2467500 () List!42692)

(assert (=> d!1178544 (= lt!1398981 e!2467500)))

(declare-fun c!689741 () Bool)

(assert (=> d!1178544 (= c!689741 ((_ is Cons!42568) lt!1398942))))

(assert (=> d!1178544 (>= (size!31843 lt!1398962) (size!31843 lt!1398942))))

(assert (=> d!1178544 (= (getSuffix!2240 lt!1398962 lt!1398942) lt!1398981)))

(declare-fun b!3981580 () Bool)

(declare-fun tail!6211 (List!42692) List!42692)

(assert (=> b!3981580 (= e!2467500 (getSuffix!2240 (tail!6211 lt!1398962) (t!331347 lt!1398942)))))

(declare-fun b!3981581 () Bool)

(assert (=> b!3981581 (= e!2467500 lt!1398962)))

(assert (= (and d!1178544 c!689741) b!3981580))

(assert (= (and d!1178544 (not c!689741)) b!3981581))

(declare-fun m!4555489 () Bool)

(assert (=> d!1178544 m!4555489))

(assert (=> d!1178544 m!4555313))

(assert (=> d!1178544 m!4555405))

(declare-fun m!4555491 () Bool)

(assert (=> b!3981580 m!4555491))

(assert (=> b!3981580 m!4555491))

(declare-fun m!4555493 () Bool)

(assert (=> b!3981580 m!4555493))

(assert (=> b!3981540 d!1178544))

(declare-fun b!3981584 () Bool)

(declare-fun res!1613763 () Bool)

(declare-fun e!2467501 () Bool)

(assert (=> b!3981584 (=> (not res!1613763) (not e!2467501))))

(declare-fun lt!1398982 () List!42692)

(assert (=> b!3981584 (= res!1613763 (= (size!31843 lt!1398982) (+ (size!31843 prefix!494) (size!31843 lt!1398963))))))

(declare-fun b!3981582 () Bool)

(declare-fun e!2467502 () List!42692)

(assert (=> b!3981582 (= e!2467502 lt!1398963)))

(declare-fun d!1178546 () Bool)

(assert (=> d!1178546 e!2467501))

(declare-fun res!1613762 () Bool)

(assert (=> d!1178546 (=> (not res!1613762) (not e!2467501))))

(assert (=> d!1178546 (= res!1613762 (= (content!6452 lt!1398982) ((_ map or) (content!6452 prefix!494) (content!6452 lt!1398963))))))

(assert (=> d!1178546 (= lt!1398982 e!2467502)))

(declare-fun c!689742 () Bool)

(assert (=> d!1178546 (= c!689742 ((_ is Nil!42568) prefix!494))))

(assert (=> d!1178546 (= (++!11124 prefix!494 lt!1398963) lt!1398982)))

(declare-fun b!3981585 () Bool)

(assert (=> b!3981585 (= e!2467501 (or (not (= lt!1398963 Nil!42568)) (= lt!1398982 prefix!494)))))

(declare-fun b!3981583 () Bool)

(assert (=> b!3981583 (= e!2467502 (Cons!42568 (h!47988 prefix!494) (++!11124 (t!331347 prefix!494) lt!1398963)))))

(assert (= (and d!1178546 c!689742) b!3981582))

(assert (= (and d!1178546 (not c!689742)) b!3981583))

(assert (= (and d!1178546 res!1613762) b!3981584))

(assert (= (and b!3981584 res!1613763) b!3981585))

(declare-fun m!4555495 () Bool)

(assert (=> b!3981584 m!4555495))

(assert (=> b!3981584 m!4555333))

(declare-fun m!4555497 () Bool)

(assert (=> b!3981584 m!4555497))

(declare-fun m!4555499 () Bool)

(assert (=> d!1178546 m!4555499))

(declare-fun m!4555501 () Bool)

(assert (=> d!1178546 m!4555501))

(declare-fun m!4555503 () Bool)

(assert (=> d!1178546 m!4555503))

(declare-fun m!4555505 () Bool)

(assert (=> b!3981583 m!4555505))

(assert (=> b!3981541 d!1178546))

(declare-fun b!3981588 () Bool)

(declare-fun res!1613765 () Bool)

(declare-fun e!2467503 () Bool)

(assert (=> b!3981588 (=> (not res!1613765) (not e!2467503))))

(declare-fun lt!1398983 () List!42692)

(assert (=> b!3981588 (= res!1613765 (= (size!31843 lt!1398983) (+ (size!31843 lt!1398962) (size!31843 lt!1398955))))))

(declare-fun b!3981586 () Bool)

(declare-fun e!2467504 () List!42692)

(assert (=> b!3981586 (= e!2467504 lt!1398955)))

(declare-fun d!1178548 () Bool)

(assert (=> d!1178548 e!2467503))

(declare-fun res!1613764 () Bool)

(assert (=> d!1178548 (=> (not res!1613764) (not e!2467503))))

(assert (=> d!1178548 (= res!1613764 (= (content!6452 lt!1398983) ((_ map or) (content!6452 lt!1398962) (content!6452 lt!1398955))))))

(assert (=> d!1178548 (= lt!1398983 e!2467504)))

(declare-fun c!689743 () Bool)

(assert (=> d!1178548 (= c!689743 ((_ is Nil!42568) lt!1398962))))

(assert (=> d!1178548 (= (++!11124 lt!1398962 lt!1398955) lt!1398983)))

(declare-fun b!3981589 () Bool)

(assert (=> b!3981589 (= e!2467503 (or (not (= lt!1398955 Nil!42568)) (= lt!1398983 lt!1398962)))))

(declare-fun b!3981587 () Bool)

(assert (=> b!3981587 (= e!2467504 (Cons!42568 (h!47988 lt!1398962) (++!11124 (t!331347 lt!1398962) lt!1398955)))))

(assert (= (and d!1178548 c!689743) b!3981586))

(assert (= (and d!1178548 (not c!689743)) b!3981587))

(assert (= (and d!1178548 res!1613764) b!3981588))

(assert (= (and b!3981588 res!1613765) b!3981589))

(declare-fun m!4555507 () Bool)

(assert (=> b!3981588 m!4555507))

(assert (=> b!3981588 m!4555313))

(declare-fun m!4555509 () Bool)

(assert (=> b!3981588 m!4555509))

(declare-fun m!4555511 () Bool)

(assert (=> d!1178548 m!4555511))

(declare-fun m!4555513 () Bool)

(assert (=> d!1178548 m!4555513))

(declare-fun m!4555515 () Bool)

(assert (=> d!1178548 m!4555515))

(declare-fun m!4555517 () Bool)

(assert (=> b!3981587 m!4555517))

(assert (=> b!3981541 d!1178548))

(declare-fun d!1178550 () Bool)

(assert (=> d!1178550 (= (++!11124 (++!11124 prefix!494 newSuffix!27) lt!1398955) (++!11124 prefix!494 (++!11124 newSuffix!27 lt!1398955)))))

(declare-fun lt!1398986 () Unit!61235)

(declare-fun choose!23887 (List!42692 List!42692 List!42692) Unit!61235)

(assert (=> d!1178550 (= lt!1398986 (choose!23887 prefix!494 newSuffix!27 lt!1398955))))

(assert (=> d!1178550 (= (lemmaConcatAssociativity!2444 prefix!494 newSuffix!27 lt!1398955) lt!1398986)))

(declare-fun bs!587973 () Bool)

(assert (= bs!587973 d!1178550))

(assert (=> bs!587973 m!4555421))

(assert (=> bs!587973 m!4555361))

(declare-fun m!4555519 () Bool)

(assert (=> bs!587973 m!4555519))

(assert (=> bs!587973 m!4555421))

(declare-fun m!4555521 () Bool)

(assert (=> bs!587973 m!4555521))

(assert (=> bs!587973 m!4555361))

(declare-fun m!4555523 () Bool)

(assert (=> bs!587973 m!4555523))

(assert (=> b!3981541 d!1178550))

(declare-fun d!1178556 () Bool)

(assert (=> d!1178556 (= (inv!56863 (tag!7582 (h!47990 rules!2999))) (= (mod (str.len (value!212210 (tag!7582 (h!47990 rules!2999)))) 2) 0))))

(assert (=> b!3981558 d!1178556))

(declare-fun d!1178560 () Bool)

(declare-fun res!1613774 () Bool)

(declare-fun e!2467517 () Bool)

(assert (=> d!1178560 (=> (not res!1613774) (not e!2467517))))

(declare-fun semiInverseModEq!2885 (Int Int) Bool)

(assert (=> d!1178560 (= res!1613774 (semiInverseModEq!2885 (toChars!9069 (transformation!6722 (h!47990 rules!2999))) (toValue!9210 (transformation!6722 (h!47990 rules!2999)))))))

(assert (=> d!1178560 (= (inv!56867 (transformation!6722 (h!47990 rules!2999))) e!2467517)))

(declare-fun b!3981606 () Bool)

(declare-fun equivClasses!2784 (Int Int) Bool)

(assert (=> b!3981606 (= e!2467517 (equivClasses!2784 (toChars!9069 (transformation!6722 (h!47990 rules!2999))) (toValue!9210 (transformation!6722 (h!47990 rules!2999)))))))

(assert (= (and d!1178560 res!1613774) b!3981606))

(declare-fun m!4555539 () Bool)

(assert (=> d!1178560 m!4555539))

(declare-fun m!4555541 () Bool)

(assert (=> b!3981606 m!4555541))

(assert (=> b!3981558 d!1178560))

(declare-fun d!1178570 () Bool)

(declare-fun lt!1398999 () Int)

(assert (=> d!1178570 (>= lt!1398999 0)))

(declare-fun e!2467523 () Int)

(assert (=> d!1178570 (= lt!1398999 e!2467523)))

(declare-fun c!689750 () Bool)

(assert (=> d!1178570 (= c!689750 ((_ is Nil!42568) lt!1398962))))

(assert (=> d!1178570 (= (size!31843 lt!1398962) lt!1398999)))

(declare-fun b!3981616 () Bool)

(assert (=> b!3981616 (= e!2467523 0)))

(declare-fun b!3981617 () Bool)

(assert (=> b!3981617 (= e!2467523 (+ 1 (size!31843 (t!331347 lt!1398962))))))

(assert (= (and d!1178570 c!689750) b!3981616))

(assert (= (and d!1178570 (not c!689750)) b!3981617))

(declare-fun m!4555555 () Bool)

(assert (=> b!3981617 m!4555555))

(assert (=> b!3981538 d!1178570))

(declare-fun d!1178576 () Bool)

(assert (=> d!1178576 (= (_2!24030 (v!39483 lt!1398947)) lt!1398927)))

(declare-fun lt!1399009 () Unit!61235)

(declare-fun choose!23888 (List!42692 List!42692 List!42692 List!42692 List!42692) Unit!61235)

(assert (=> d!1178576 (= lt!1399009 (choose!23888 lt!1398942 (_2!24030 (v!39483 lt!1398947)) lt!1398942 lt!1398927 lt!1398962))))

(assert (=> d!1178576 (isPrefix!3809 lt!1398942 lt!1398962)))

(assert (=> d!1178576 (= (lemmaSamePrefixThenSameSuffix!1996 lt!1398942 (_2!24030 (v!39483 lt!1398947)) lt!1398942 lt!1398927 lt!1398962) lt!1399009)))

(declare-fun bs!587977 () Bool)

(assert (= bs!587977 d!1178576))

(declare-fun m!4555589 () Bool)

(assert (=> bs!587977 m!4555589))

(declare-fun m!4555591 () Bool)

(assert (=> bs!587977 m!4555591))

(assert (=> b!3981538 d!1178576))

(declare-fun b!3981667 () Bool)

(declare-fun res!1613819 () Bool)

(declare-fun e!2467559 () Bool)

(assert (=> b!3981667 (=> (not res!1613819) (not e!2467559))))

(declare-fun head!8479 (List!42692) C!23440)

(assert (=> b!3981667 (= res!1613819 (= (head!8479 lt!1398942) (head!8479 lt!1398949)))))

(declare-fun b!3981669 () Bool)

(declare-fun e!2467560 () Bool)

(assert (=> b!3981669 (= e!2467560 (>= (size!31843 lt!1398949) (size!31843 lt!1398942)))))

(declare-fun b!3981666 () Bool)

(declare-fun e!2467561 () Bool)

(assert (=> b!3981666 (= e!2467561 e!2467559)))

(declare-fun res!1613817 () Bool)

(assert (=> b!3981666 (=> (not res!1613817) (not e!2467559))))

(assert (=> b!3981666 (= res!1613817 (not ((_ is Nil!42568) lt!1398949)))))

(declare-fun b!3981668 () Bool)

(assert (=> b!3981668 (= e!2467559 (isPrefix!3809 (tail!6211 lt!1398942) (tail!6211 lt!1398949)))))

(declare-fun d!1178588 () Bool)

(assert (=> d!1178588 e!2467560))

(declare-fun res!1613818 () Bool)

(assert (=> d!1178588 (=> res!1613818 e!2467560)))

(declare-fun lt!1399021 () Bool)

(assert (=> d!1178588 (= res!1613818 (not lt!1399021))))

(assert (=> d!1178588 (= lt!1399021 e!2467561)))

(declare-fun res!1613820 () Bool)

(assert (=> d!1178588 (=> res!1613820 e!2467561)))

(assert (=> d!1178588 (= res!1613820 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178588 (= (isPrefix!3809 lt!1398942 lt!1398949) lt!1399021)))

(assert (= (and d!1178588 (not res!1613820)) b!3981666))

(assert (= (and b!3981666 res!1613817) b!3981667))

(assert (= (and b!3981667 res!1613819) b!3981668))

(assert (= (and d!1178588 (not res!1613818)) b!3981669))

(declare-fun m!4555639 () Bool)

(assert (=> b!3981667 m!4555639))

(declare-fun m!4555641 () Bool)

(assert (=> b!3981667 m!4555641))

(declare-fun m!4555643 () Bool)

(assert (=> b!3981669 m!4555643))

(assert (=> b!3981669 m!4555405))

(declare-fun m!4555645 () Bool)

(assert (=> b!3981668 m!4555645))

(declare-fun m!4555647 () Bool)

(assert (=> b!3981668 m!4555647))

(assert (=> b!3981668 m!4555645))

(assert (=> b!3981668 m!4555647))

(declare-fun m!4555649 () Bool)

(assert (=> b!3981668 m!4555649))

(assert (=> b!3981538 d!1178588))

(declare-fun d!1178610 () Bool)

(assert (=> d!1178610 (isPrefix!3809 lt!1398942 (++!11124 lt!1398942 lt!1398927))))

(declare-fun lt!1399024 () Unit!61235)

(declare-fun choose!23889 (List!42692 List!42692) Unit!61235)

(assert (=> d!1178610 (= lt!1399024 (choose!23889 lt!1398942 lt!1398927))))

(assert (=> d!1178610 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398942 lt!1398927) lt!1399024)))

(declare-fun bs!587983 () Bool)

(assert (= bs!587983 d!1178610))

(assert (=> bs!587983 m!4555467))

(assert (=> bs!587983 m!4555467))

(declare-fun m!4555651 () Bool)

(assert (=> bs!587983 m!4555651))

(declare-fun m!4555653 () Bool)

(assert (=> bs!587983 m!4555653))

(assert (=> b!3981538 d!1178610))

(declare-fun b!3981671 () Bool)

(declare-fun res!1613823 () Bool)

(declare-fun e!2467562 () Bool)

(assert (=> b!3981671 (=> (not res!1613823) (not e!2467562))))

(assert (=> b!3981671 (= res!1613823 (= (head!8479 newSuffix!27) (head!8479 suffix!1299)))))

(declare-fun b!3981673 () Bool)

(declare-fun e!2467563 () Bool)

(assert (=> b!3981673 (= e!2467563 (>= (size!31843 suffix!1299) (size!31843 newSuffix!27)))))

(declare-fun b!3981670 () Bool)

(declare-fun e!2467564 () Bool)

(assert (=> b!3981670 (= e!2467564 e!2467562)))

(declare-fun res!1613821 () Bool)

(assert (=> b!3981670 (=> (not res!1613821) (not e!2467562))))

(assert (=> b!3981670 (= res!1613821 (not ((_ is Nil!42568) suffix!1299)))))

(declare-fun b!3981672 () Bool)

(assert (=> b!3981672 (= e!2467562 (isPrefix!3809 (tail!6211 newSuffix!27) (tail!6211 suffix!1299)))))

(declare-fun d!1178612 () Bool)

(assert (=> d!1178612 e!2467563))

(declare-fun res!1613822 () Bool)

(assert (=> d!1178612 (=> res!1613822 e!2467563)))

(declare-fun lt!1399025 () Bool)

(assert (=> d!1178612 (= res!1613822 (not lt!1399025))))

(assert (=> d!1178612 (= lt!1399025 e!2467564)))

(declare-fun res!1613824 () Bool)

(assert (=> d!1178612 (=> res!1613824 e!2467564)))

(assert (=> d!1178612 (= res!1613824 ((_ is Nil!42568) newSuffix!27))))

(assert (=> d!1178612 (= (isPrefix!3809 newSuffix!27 suffix!1299) lt!1399025)))

(assert (= (and d!1178612 (not res!1613824)) b!3981670))

(assert (= (and b!3981670 res!1613821) b!3981671))

(assert (= (and b!3981671 res!1613823) b!3981672))

(assert (= (and d!1178612 (not res!1613822)) b!3981673))

(declare-fun m!4555655 () Bool)

(assert (=> b!3981671 m!4555655))

(declare-fun m!4555657 () Bool)

(assert (=> b!3981671 m!4555657))

(assert (=> b!3981673 m!4555339))

(assert (=> b!3981673 m!4555341))

(declare-fun m!4555659 () Bool)

(assert (=> b!3981672 m!4555659))

(declare-fun m!4555661 () Bool)

(assert (=> b!3981672 m!4555661))

(assert (=> b!3981672 m!4555659))

(assert (=> b!3981672 m!4555661))

(declare-fun m!4555663 () Bool)

(assert (=> b!3981672 m!4555663))

(assert (=> b!3981560 d!1178612))

(declare-fun d!1178614 () Bool)

(declare-fun dynLambda!18108 (Int BalanceConc!25460) TokenValue!6952)

(assert (=> d!1178614 (= (apply!9933 (transformation!6722 (rule!9728 token!484)) (seqFromList!4961 lt!1398974)) (dynLambda!18108 (toValue!9210 (transformation!6722 (rule!9728 token!484))) (seqFromList!4961 lt!1398974)))))

(declare-fun b_lambda!116309 () Bool)

(assert (=> (not b_lambda!116309) (not d!1178614)))

(declare-fun t!331359 () Bool)

(declare-fun tb!239925 () Bool)

(assert (=> (and b!3981547 (= (toValue!9210 (transformation!6722 (h!47990 rules!2999))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))) t!331359) tb!239925))

(declare-fun result!290650 () Bool)

(assert (=> tb!239925 (= result!290650 (inv!21 (dynLambda!18108 (toValue!9210 (transformation!6722 (rule!9728 token!484))) (seqFromList!4961 lt!1398974))))))

(declare-fun m!4555665 () Bool)

(assert (=> tb!239925 m!4555665))

(assert (=> d!1178614 t!331359))

(declare-fun b_and!306051 () Bool)

(assert (= b_and!306031 (and (=> t!331359 result!290650) b_and!306051)))

(declare-fun t!331361 () Bool)

(declare-fun tb!239927 () Bool)

(assert (=> (and b!3981537 (= (toValue!9210 (transformation!6722 (rule!9728 token!484))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))) t!331361) tb!239927))

(declare-fun result!290654 () Bool)

(assert (= result!290654 result!290650))

(assert (=> d!1178614 t!331361))

(declare-fun b_and!306053 () Bool)

(assert (= b_and!306035 (and (=> t!331361 result!290654) b_and!306053)))

(assert (=> d!1178614 m!4555299))

(declare-fun m!4555667 () Bool)

(assert (=> d!1178614 m!4555667))

(assert (=> b!3981546 d!1178614))

(declare-fun d!1178616 () Bool)

(assert (=> d!1178616 (= (maxPrefixOneRule!2643 thiss!21717 (rule!9728 token!484) lt!1398939) (Some!9135 (tuple2!41793 (Token!12583 (apply!9933 (transformation!6722 (rule!9728 token!484)) (seqFromList!4961 lt!1398974)) (rule!9728 token!484) (size!31843 lt!1398974) lt!1398974) suffixResult!105)))))

(declare-fun lt!1399028 () Unit!61235)

(declare-fun choose!23892 (LexerInterface!6311 List!42694 List!42692 List!42692 List!42692 Rule!13244) Unit!61235)

(assert (=> d!1178616 (= lt!1399028 (choose!23892 thiss!21717 rules!2999 lt!1398974 lt!1398939 suffixResult!105 (rule!9728 token!484)))))

(assert (=> d!1178616 (not (isEmpty!25450 rules!2999))))

(assert (=> d!1178616 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1465 thiss!21717 rules!2999 lt!1398974 lt!1398939 suffixResult!105 (rule!9728 token!484)) lt!1399028)))

(declare-fun bs!587984 () Bool)

(assert (= bs!587984 d!1178616))

(assert (=> bs!587984 m!4555305))

(assert (=> bs!587984 m!4555299))

(assert (=> bs!587984 m!4555301))

(declare-fun m!4555669 () Bool)

(assert (=> bs!587984 m!4555669))

(assert (=> bs!587984 m!4555419))

(assert (=> bs!587984 m!4555299))

(assert (=> bs!587984 m!4555331))

(assert (=> b!3981546 d!1178616))

(declare-fun d!1178618 () Bool)

(assert (=> d!1178618 (= lt!1398950 suffixResult!105)))

(declare-fun lt!1399033 () Unit!61235)

(assert (=> d!1178618 (= lt!1399033 (choose!23888 lt!1398974 lt!1398950 lt!1398974 suffixResult!105 lt!1398939))))

(assert (=> d!1178618 (isPrefix!3809 lt!1398974 lt!1398939)))

(assert (=> d!1178618 (= (lemmaSamePrefixThenSameSuffix!1996 lt!1398974 lt!1398950 lt!1398974 suffixResult!105 lt!1398939) lt!1399033)))

(declare-fun bs!587985 () Bool)

(assert (= bs!587985 d!1178618))

(declare-fun m!4555671 () Bool)

(assert (=> bs!587985 m!4555671))

(assert (=> bs!587985 m!4555431))

(assert (=> b!3981546 d!1178618))

(declare-fun d!1178620 () Bool)

(assert (=> d!1178620 (isPrefix!3809 lt!1398974 (++!11124 lt!1398974 lt!1398950))))

(declare-fun lt!1399038 () Unit!61235)

(assert (=> d!1178620 (= lt!1399038 (choose!23889 lt!1398974 lt!1398950))))

(assert (=> d!1178620 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398974 lt!1398950) lt!1399038)))

(declare-fun bs!587986 () Bool)

(assert (= bs!587986 d!1178620))

(assert (=> bs!587986 m!4555455))

(assert (=> bs!587986 m!4555455))

(declare-fun m!4555673 () Bool)

(assert (=> bs!587986 m!4555673))

(declare-fun m!4555675 () Bool)

(assert (=> bs!587986 m!4555675))

(assert (=> b!3981546 d!1178620))

(declare-fun d!1178622 () Bool)

(declare-fun fromListB!2280 (List!42692) BalanceConc!25460)

(assert (=> d!1178622 (= (seqFromList!4961 lt!1398974) (fromListB!2280 lt!1398974))))

(declare-fun bs!587987 () Bool)

(assert (= bs!587987 d!1178622))

(declare-fun m!4555677 () Bool)

(assert (=> bs!587987 m!4555677))

(assert (=> b!3981546 d!1178622))

(declare-fun b!3981695 () Bool)

(declare-fun res!1613841 () Bool)

(declare-fun e!2467576 () Bool)

(assert (=> b!3981695 (=> (not res!1613841) (not e!2467576))))

(assert (=> b!3981695 (= res!1613841 (= (head!8479 lt!1398974) (head!8479 lt!1398938)))))

(declare-fun b!3981697 () Bool)

(declare-fun e!2467577 () Bool)

(assert (=> b!3981697 (= e!2467577 (>= (size!31843 lt!1398938) (size!31843 lt!1398974)))))

(declare-fun b!3981694 () Bool)

(declare-fun e!2467578 () Bool)

(assert (=> b!3981694 (= e!2467578 e!2467576)))

(declare-fun res!1613839 () Bool)

(assert (=> b!3981694 (=> (not res!1613839) (not e!2467576))))

(assert (=> b!3981694 (= res!1613839 (not ((_ is Nil!42568) lt!1398938)))))

(declare-fun b!3981696 () Bool)

(assert (=> b!3981696 (= e!2467576 (isPrefix!3809 (tail!6211 lt!1398974) (tail!6211 lt!1398938)))))

(declare-fun d!1178624 () Bool)

(assert (=> d!1178624 e!2467577))

(declare-fun res!1613840 () Bool)

(assert (=> d!1178624 (=> res!1613840 e!2467577)))

(declare-fun lt!1399041 () Bool)

(assert (=> d!1178624 (= res!1613840 (not lt!1399041))))

(assert (=> d!1178624 (= lt!1399041 e!2467578)))

(declare-fun res!1613842 () Bool)

(assert (=> d!1178624 (=> res!1613842 e!2467578)))

(assert (=> d!1178624 (= res!1613842 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178624 (= (isPrefix!3809 lt!1398974 lt!1398938) lt!1399041)))

(assert (= (and d!1178624 (not res!1613842)) b!3981694))

(assert (= (and b!3981694 res!1613839) b!3981695))

(assert (= (and b!3981695 res!1613841) b!3981696))

(assert (= (and d!1178624 (not res!1613840)) b!3981697))

(declare-fun m!4555679 () Bool)

(assert (=> b!3981695 m!4555679))

(declare-fun m!4555681 () Bool)

(assert (=> b!3981695 m!4555681))

(declare-fun m!4555683 () Bool)

(assert (=> b!3981697 m!4555683))

(assert (=> b!3981697 m!4555331))

(declare-fun m!4555685 () Bool)

(assert (=> b!3981696 m!4555685))

(declare-fun m!4555687 () Bool)

(assert (=> b!3981696 m!4555687))

(assert (=> b!3981696 m!4555685))

(assert (=> b!3981696 m!4555687))

(declare-fun m!4555689 () Bool)

(assert (=> b!3981696 m!4555689))

(assert (=> b!3981546 d!1178624))

(declare-fun b!3981807 () Bool)

(declare-fun e!2467639 () Bool)

(declare-fun lt!1399091 () Option!9136)

(declare-fun get!14015 (Option!9136) tuple2!41792)

(assert (=> b!3981807 (= e!2467639 (= (size!31842 (_1!24030 (get!14015 lt!1399091))) (size!31843 (originalCharacters!7322 (_1!24030 (get!14015 lt!1399091))))))))

(declare-fun b!3981808 () Bool)

(declare-fun res!1613919 () Bool)

(assert (=> b!3981808 (=> (not res!1613919) (not e!2467639))))

(assert (=> b!3981808 (= res!1613919 (= (value!212211 (_1!24030 (get!14015 lt!1399091))) (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (get!14015 lt!1399091)))) (seqFromList!4961 (originalCharacters!7322 (_1!24030 (get!14015 lt!1399091)))))))))

(declare-fun b!3981809 () Bool)

(declare-fun e!2467637 () Bool)

(declare-datatypes ((tuple2!41796 0))(
  ( (tuple2!41797 (_1!24032 List!42692) (_2!24032 List!42692)) )
))
(declare-fun findLongestMatchInner!1322 (Regex!11627 List!42692 Int List!42692 List!42692 Int) tuple2!41796)

(assert (=> b!3981809 (= e!2467637 (matchR!5604 (regex!6722 (rule!9728 token!484)) (_1!24032 (findLongestMatchInner!1322 (regex!6722 (rule!9728 token!484)) Nil!42568 (size!31843 Nil!42568) lt!1398939 lt!1398939 (size!31843 lt!1398939)))))))

(declare-fun b!3981810 () Bool)

(declare-fun res!1613918 () Bool)

(assert (=> b!3981810 (=> (not res!1613918) (not e!2467639))))

(assert (=> b!3981810 (= res!1613918 (= (rule!9728 (_1!24030 (get!14015 lt!1399091))) (rule!9728 token!484)))))

(declare-fun b!3981811 () Bool)

(declare-fun res!1613923 () Bool)

(assert (=> b!3981811 (=> (not res!1613923) (not e!2467639))))

(assert (=> b!3981811 (= res!1613923 (< (size!31843 (_2!24030 (get!14015 lt!1399091))) (size!31843 lt!1398939)))))

(declare-fun b!3981812 () Bool)

(declare-fun e!2467638 () Option!9136)

(declare-fun lt!1399093 () tuple2!41796)

(declare-fun size!31845 (BalanceConc!25460) Int)

(assert (=> b!3981812 (= e!2467638 (Some!9135 (tuple2!41793 (Token!12583 (apply!9933 (transformation!6722 (rule!9728 token!484)) (seqFromList!4961 (_1!24032 lt!1399093))) (rule!9728 token!484) (size!31845 (seqFromList!4961 (_1!24032 lt!1399093))) (_1!24032 lt!1399093)) (_2!24032 lt!1399093))))))

(declare-fun lt!1399094 () Unit!61235)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1295 (Regex!11627 List!42692) Unit!61235)

(assert (=> b!3981812 (= lt!1399094 (longestMatchIsAcceptedByMatchOrIsEmpty!1295 (regex!6722 (rule!9728 token!484)) lt!1398939))))

(declare-fun res!1613921 () Bool)

(declare-fun isEmpty!25453 (List!42692) Bool)

(assert (=> b!3981812 (= res!1613921 (isEmpty!25453 (_1!24032 (findLongestMatchInner!1322 (regex!6722 (rule!9728 token!484)) Nil!42568 (size!31843 Nil!42568) lt!1398939 lt!1398939 (size!31843 lt!1398939)))))))

(assert (=> b!3981812 (=> res!1613921 e!2467637)))

(assert (=> b!3981812 e!2467637))

(declare-fun lt!1399092 () Unit!61235)

(assert (=> b!3981812 (= lt!1399092 lt!1399094)))

(declare-fun lt!1399090 () Unit!61235)

(declare-fun lemmaSemiInverse!1834 (TokenValueInjection!13332 BalanceConc!25460) Unit!61235)

(assert (=> b!3981812 (= lt!1399090 (lemmaSemiInverse!1834 (transformation!6722 (rule!9728 token!484)) (seqFromList!4961 (_1!24032 lt!1399093))))))

(declare-fun b!3981813 () Bool)

(declare-fun res!1613922 () Bool)

(assert (=> b!3981813 (=> (not res!1613922) (not e!2467639))))

(assert (=> b!3981813 (= res!1613922 (= (++!11124 (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399091)))) (_2!24030 (get!14015 lt!1399091))) lt!1398939))))

(declare-fun b!3981814 () Bool)

(declare-fun e!2467636 () Bool)

(assert (=> b!3981814 (= e!2467636 e!2467639)))

(declare-fun res!1613920 () Bool)

(assert (=> b!3981814 (=> (not res!1613920) (not e!2467639))))

(assert (=> b!3981814 (= res!1613920 (matchR!5604 (regex!6722 (rule!9728 token!484)) (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399091))))))))

(declare-fun d!1178626 () Bool)

(assert (=> d!1178626 e!2467636))

(declare-fun res!1613917 () Bool)

(assert (=> d!1178626 (=> res!1613917 e!2467636)))

(declare-fun isEmpty!25454 (Option!9136) Bool)

(assert (=> d!1178626 (= res!1613917 (isEmpty!25454 lt!1399091))))

(assert (=> d!1178626 (= lt!1399091 e!2467638)))

(declare-fun c!689772 () Bool)

(assert (=> d!1178626 (= c!689772 (isEmpty!25453 (_1!24032 lt!1399093)))))

(declare-fun findLongestMatch!1235 (Regex!11627 List!42692) tuple2!41796)

(assert (=> d!1178626 (= lt!1399093 (findLongestMatch!1235 (regex!6722 (rule!9728 token!484)) lt!1398939))))

(assert (=> d!1178626 (ruleValid!2654 thiss!21717 (rule!9728 token!484))))

(assert (=> d!1178626 (= (maxPrefixOneRule!2643 thiss!21717 (rule!9728 token!484) lt!1398939) lt!1399091)))

(declare-fun b!3981815 () Bool)

(assert (=> b!3981815 (= e!2467638 None!9135)))

(assert (= (and d!1178626 c!689772) b!3981815))

(assert (= (and d!1178626 (not c!689772)) b!3981812))

(assert (= (and b!3981812 (not res!1613921)) b!3981809))

(assert (= (and d!1178626 (not res!1613917)) b!3981814))

(assert (= (and b!3981814 res!1613920) b!3981813))

(assert (= (and b!3981813 res!1613922) b!3981811))

(assert (= (and b!3981811 res!1613923) b!3981810))

(assert (= (and b!3981810 res!1613918) b!3981808))

(assert (= (and b!3981808 res!1613919) b!3981807))

(declare-fun m!4555869 () Bool)

(assert (=> b!3981812 m!4555869))

(declare-fun m!4555871 () Bool)

(assert (=> b!3981812 m!4555871))

(declare-fun m!4555873 () Bool)

(assert (=> b!3981812 m!4555873))

(assert (=> b!3981812 m!4555871))

(declare-fun m!4555875 () Bool)

(assert (=> b!3981812 m!4555875))

(assert (=> b!3981812 m!4555875))

(declare-fun m!4555877 () Bool)

(assert (=> b!3981812 m!4555877))

(declare-fun m!4555879 () Bool)

(assert (=> b!3981812 m!4555879))

(assert (=> b!3981812 m!4555875))

(declare-fun m!4555881 () Bool)

(assert (=> b!3981812 m!4555881))

(assert (=> b!3981812 m!4555875))

(declare-fun m!4555883 () Bool)

(assert (=> b!3981812 m!4555883))

(assert (=> b!3981812 m!4555869))

(declare-fun m!4555885 () Bool)

(assert (=> b!3981812 m!4555885))

(declare-fun m!4555887 () Bool)

(assert (=> b!3981808 m!4555887))

(declare-fun m!4555889 () Bool)

(assert (=> b!3981808 m!4555889))

(assert (=> b!3981808 m!4555889))

(declare-fun m!4555891 () Bool)

(assert (=> b!3981808 m!4555891))

(assert (=> b!3981807 m!4555887))

(declare-fun m!4555893 () Bool)

(assert (=> b!3981807 m!4555893))

(declare-fun m!4555895 () Bool)

(assert (=> d!1178626 m!4555895))

(declare-fun m!4555897 () Bool)

(assert (=> d!1178626 m!4555897))

(declare-fun m!4555899 () Bool)

(assert (=> d!1178626 m!4555899))

(assert (=> d!1178626 m!4555447))

(assert (=> b!3981814 m!4555887))

(declare-fun m!4555901 () Bool)

(assert (=> b!3981814 m!4555901))

(assert (=> b!3981814 m!4555901))

(declare-fun m!4555903 () Bool)

(assert (=> b!3981814 m!4555903))

(assert (=> b!3981814 m!4555903))

(declare-fun m!4555905 () Bool)

(assert (=> b!3981814 m!4555905))

(assert (=> b!3981810 m!4555887))

(assert (=> b!3981811 m!4555887))

(declare-fun m!4555907 () Bool)

(assert (=> b!3981811 m!4555907))

(assert (=> b!3981811 m!4555871))

(assert (=> b!3981813 m!4555887))

(assert (=> b!3981813 m!4555901))

(assert (=> b!3981813 m!4555901))

(assert (=> b!3981813 m!4555903))

(assert (=> b!3981813 m!4555903))

(declare-fun m!4555909 () Bool)

(assert (=> b!3981813 m!4555909))

(assert (=> b!3981809 m!4555869))

(assert (=> b!3981809 m!4555871))

(assert (=> b!3981809 m!4555869))

(assert (=> b!3981809 m!4555871))

(assert (=> b!3981809 m!4555873))

(declare-fun m!4555911 () Bool)

(assert (=> b!3981809 m!4555911))

(assert (=> b!3981546 d!1178626))

(declare-fun b!3981826 () Bool)

(declare-fun res!1613933 () Bool)

(declare-fun e!2467643 () Bool)

(assert (=> b!3981826 (=> (not res!1613933) (not e!2467643))))

(assert (=> b!3981826 (= res!1613933 (= (head!8479 lt!1398942) (head!8479 lt!1398939)))))

(declare-fun b!3981828 () Bool)

(declare-fun e!2467644 () Bool)

(assert (=> b!3981828 (= e!2467644 (>= (size!31843 lt!1398939) (size!31843 lt!1398942)))))

(declare-fun b!3981825 () Bool)

(declare-fun e!2467645 () Bool)

(assert (=> b!3981825 (= e!2467645 e!2467643)))

(declare-fun res!1613931 () Bool)

(assert (=> b!3981825 (=> (not res!1613931) (not e!2467643))))

(assert (=> b!3981825 (= res!1613931 (not ((_ is Nil!42568) lt!1398939)))))

(declare-fun b!3981827 () Bool)

(assert (=> b!3981827 (= e!2467643 (isPrefix!3809 (tail!6211 lt!1398942) (tail!6211 lt!1398939)))))

(declare-fun d!1178672 () Bool)

(assert (=> d!1178672 e!2467644))

(declare-fun res!1613932 () Bool)

(assert (=> d!1178672 (=> res!1613932 e!2467644)))

(declare-fun lt!1399100 () Bool)

(assert (=> d!1178672 (= res!1613932 (not lt!1399100))))

(assert (=> d!1178672 (= lt!1399100 e!2467645)))

(declare-fun res!1613934 () Bool)

(assert (=> d!1178672 (=> res!1613934 e!2467645)))

(assert (=> d!1178672 (= res!1613934 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178672 (= (isPrefix!3809 lt!1398942 lt!1398939) lt!1399100)))

(assert (= (and d!1178672 (not res!1613934)) b!3981825))

(assert (= (and b!3981825 res!1613931) b!3981826))

(assert (= (and b!3981826 res!1613933) b!3981827))

(assert (= (and d!1178672 (not res!1613932)) b!3981828))

(assert (=> b!3981826 m!4555639))

(declare-fun m!4555913 () Bool)

(assert (=> b!3981826 m!4555913))

(assert (=> b!3981828 m!4555871))

(assert (=> b!3981828 m!4555405))

(assert (=> b!3981827 m!4555645))

(declare-fun m!4555915 () Bool)

(assert (=> b!3981827 m!4555915))

(assert (=> b!3981827 m!4555645))

(assert (=> b!3981827 m!4555915))

(declare-fun m!4555917 () Bool)

(assert (=> b!3981827 m!4555917))

(assert (=> b!3981525 d!1178672))

(declare-fun b!3981830 () Bool)

(declare-fun res!1613937 () Bool)

(declare-fun e!2467646 () Bool)

(assert (=> b!3981830 (=> (not res!1613937) (not e!2467646))))

(assert (=> b!3981830 (= res!1613937 (= (head!8479 lt!1398942) (head!8479 lt!1398953)))))

(declare-fun b!3981832 () Bool)

(declare-fun e!2467647 () Bool)

(assert (=> b!3981832 (= e!2467647 (>= (size!31843 lt!1398953) (size!31843 lt!1398942)))))

(declare-fun b!3981829 () Bool)

(declare-fun e!2467648 () Bool)

(assert (=> b!3981829 (= e!2467648 e!2467646)))

(declare-fun res!1613935 () Bool)

(assert (=> b!3981829 (=> (not res!1613935) (not e!2467646))))

(assert (=> b!3981829 (= res!1613935 (not ((_ is Nil!42568) lt!1398953)))))

(declare-fun b!3981831 () Bool)

(assert (=> b!3981831 (= e!2467646 (isPrefix!3809 (tail!6211 lt!1398942) (tail!6211 lt!1398953)))))

(declare-fun d!1178674 () Bool)

(assert (=> d!1178674 e!2467647))

(declare-fun res!1613936 () Bool)

(assert (=> d!1178674 (=> res!1613936 e!2467647)))

(declare-fun lt!1399101 () Bool)

(assert (=> d!1178674 (= res!1613936 (not lt!1399101))))

(assert (=> d!1178674 (= lt!1399101 e!2467648)))

(declare-fun res!1613938 () Bool)

(assert (=> d!1178674 (=> res!1613938 e!2467648)))

(assert (=> d!1178674 (= res!1613938 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178674 (= (isPrefix!3809 lt!1398942 lt!1398953) lt!1399101)))

(assert (= (and d!1178674 (not res!1613938)) b!3981829))

(assert (= (and b!3981829 res!1613935) b!3981830))

(assert (= (and b!3981830 res!1613937) b!3981831))

(assert (= (and d!1178674 (not res!1613936)) b!3981832))

(assert (=> b!3981830 m!4555639))

(declare-fun m!4555919 () Bool)

(assert (=> b!3981830 m!4555919))

(declare-fun m!4555921 () Bool)

(assert (=> b!3981832 m!4555921))

(assert (=> b!3981832 m!4555405))

(assert (=> b!3981831 m!4555645))

(declare-fun m!4555923 () Bool)

(assert (=> b!3981831 m!4555923))

(assert (=> b!3981831 m!4555645))

(assert (=> b!3981831 m!4555923))

(declare-fun m!4555925 () Bool)

(assert (=> b!3981831 m!4555925))

(assert (=> b!3981525 d!1178674))

(declare-fun d!1178676 () Bool)

(assert (=> d!1178676 (isPrefix!3809 lt!1398942 (++!11124 lt!1398962 lt!1398955))))

(declare-fun lt!1399106 () Unit!61235)

(declare-fun choose!23893 (List!42692 List!42692 List!42692) Unit!61235)

(assert (=> d!1178676 (= lt!1399106 (choose!23893 lt!1398942 lt!1398962 lt!1398955))))

(assert (=> d!1178676 (isPrefix!3809 lt!1398942 lt!1398962)))

(assert (=> d!1178676 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!642 lt!1398942 lt!1398962 lt!1398955) lt!1399106)))

(declare-fun bs!587997 () Bool)

(assert (= bs!587997 d!1178676))

(assert (=> bs!587997 m!4555379))

(assert (=> bs!587997 m!4555379))

(declare-fun m!4555975 () Bool)

(assert (=> bs!587997 m!4555975))

(declare-fun m!4555977 () Bool)

(assert (=> bs!587997 m!4555977))

(assert (=> bs!587997 m!4555591))

(assert (=> b!3981525 d!1178676))

(declare-fun b!3981966 () Bool)

(declare-fun res!1614018 () Bool)

(declare-fun e!2467715 () Bool)

(assert (=> b!3981966 (=> (not res!1614018) (not e!2467715))))

(declare-fun lt!1399153 () Option!9136)

(assert (=> b!3981966 (= res!1614018 (matchR!5604 (regex!6722 (rule!9728 (_1!24030 (get!14015 lt!1399153)))) (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399153))))))))

(declare-fun d!1178684 () Bool)

(declare-fun e!2467714 () Bool)

(assert (=> d!1178684 e!2467714))

(declare-fun res!1614016 () Bool)

(assert (=> d!1178684 (=> res!1614016 e!2467714)))

(assert (=> d!1178684 (= res!1614016 (isEmpty!25454 lt!1399153))))

(declare-fun e!2467713 () Option!9136)

(assert (=> d!1178684 (= lt!1399153 e!2467713)))

(declare-fun c!689803 () Bool)

(assert (=> d!1178684 (= c!689803 (and ((_ is Cons!42570) rules!2999) ((_ is Nil!42570) (t!331349 rules!2999))))))

(declare-fun lt!1399152 () Unit!61235)

(declare-fun lt!1399151 () Unit!61235)

(assert (=> d!1178684 (= lt!1399152 lt!1399151)))

(assert (=> d!1178684 (isPrefix!3809 lt!1398939 lt!1398939)))

(assert (=> d!1178684 (= lt!1399151 (lemmaIsPrefixRefl!2401 lt!1398939 lt!1398939))))

(declare-fun rulesValidInductive!2440 (LexerInterface!6311 List!42694) Bool)

(assert (=> d!1178684 (rulesValidInductive!2440 thiss!21717 rules!2999)))

(assert (=> d!1178684 (= (maxPrefix!3609 thiss!21717 rules!2999 lt!1398939) lt!1399153)))

(declare-fun b!3981967 () Bool)

(declare-fun call!285736 () Option!9136)

(assert (=> b!3981967 (= e!2467713 call!285736)))

(declare-fun b!3981968 () Bool)

(declare-fun res!1614017 () Bool)

(assert (=> b!3981968 (=> (not res!1614017) (not e!2467715))))

(assert (=> b!3981968 (= res!1614017 (= (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399153)))) (originalCharacters!7322 (_1!24030 (get!14015 lt!1399153)))))))

(declare-fun b!3981969 () Bool)

(declare-fun contains!8471 (List!42694 Rule!13244) Bool)

(assert (=> b!3981969 (= e!2467715 (contains!8471 rules!2999 (rule!9728 (_1!24030 (get!14015 lt!1399153)))))))

(declare-fun b!3981970 () Bool)

(declare-fun res!1614020 () Bool)

(assert (=> b!3981970 (=> (not res!1614020) (not e!2467715))))

(assert (=> b!3981970 (= res!1614020 (= (value!212211 (_1!24030 (get!14015 lt!1399153))) (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (get!14015 lt!1399153)))) (seqFromList!4961 (originalCharacters!7322 (_1!24030 (get!14015 lt!1399153)))))))))

(declare-fun b!3981971 () Bool)

(assert (=> b!3981971 (= e!2467714 e!2467715)))

(declare-fun res!1614015 () Bool)

(assert (=> b!3981971 (=> (not res!1614015) (not e!2467715))))

(declare-fun isDefined!7029 (Option!9136) Bool)

(assert (=> b!3981971 (= res!1614015 (isDefined!7029 lt!1399153))))

(declare-fun b!3981972 () Bool)

(declare-fun res!1614019 () Bool)

(assert (=> b!3981972 (=> (not res!1614019) (not e!2467715))))

(assert (=> b!3981972 (= res!1614019 (< (size!31843 (_2!24030 (get!14015 lt!1399153))) (size!31843 lt!1398939)))))

(declare-fun b!3981973 () Bool)

(declare-fun lt!1399154 () Option!9136)

(declare-fun lt!1399150 () Option!9136)

(assert (=> b!3981973 (= e!2467713 (ite (and ((_ is None!9135) lt!1399154) ((_ is None!9135) lt!1399150)) None!9135 (ite ((_ is None!9135) lt!1399150) lt!1399154 (ite ((_ is None!9135) lt!1399154) lt!1399150 (ite (>= (size!31842 (_1!24030 (v!39483 lt!1399154))) (size!31842 (_1!24030 (v!39483 lt!1399150)))) lt!1399154 lt!1399150)))))))

(assert (=> b!3981973 (= lt!1399154 call!285736)))

(assert (=> b!3981973 (= lt!1399150 (maxPrefix!3609 thiss!21717 (t!331349 rules!2999) lt!1398939))))

(declare-fun b!3981974 () Bool)

(declare-fun res!1614014 () Bool)

(assert (=> b!3981974 (=> (not res!1614014) (not e!2467715))))

(assert (=> b!3981974 (= res!1614014 (= (++!11124 (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399153)))) (_2!24030 (get!14015 lt!1399153))) lt!1398939))))

(declare-fun bm!285731 () Bool)

(assert (=> bm!285731 (= call!285736 (maxPrefixOneRule!2643 thiss!21717 (h!47990 rules!2999) lt!1398939))))

(assert (= (and d!1178684 c!689803) b!3981967))

(assert (= (and d!1178684 (not c!689803)) b!3981973))

(assert (= (or b!3981967 b!3981973) bm!285731))

(assert (= (and d!1178684 (not res!1614016)) b!3981971))

(assert (= (and b!3981971 res!1614015) b!3981968))

(assert (= (and b!3981968 res!1614017) b!3981972))

(assert (= (and b!3981972 res!1614019) b!3981974))

(assert (= (and b!3981974 res!1614014) b!3981970))

(assert (= (and b!3981970 res!1614020) b!3981966))

(assert (= (and b!3981966 res!1614018) b!3981969))

(declare-fun m!4556159 () Bool)

(assert (=> b!3981974 m!4556159))

(declare-fun m!4556163 () Bool)

(assert (=> b!3981974 m!4556163))

(assert (=> b!3981974 m!4556163))

(declare-fun m!4556165 () Bool)

(assert (=> b!3981974 m!4556165))

(assert (=> b!3981974 m!4556165))

(declare-fun m!4556171 () Bool)

(assert (=> b!3981974 m!4556171))

(declare-fun m!4556173 () Bool)

(assert (=> bm!285731 m!4556173))

(assert (=> b!3981970 m!4556159))

(declare-fun m!4556175 () Bool)

(assert (=> b!3981970 m!4556175))

(assert (=> b!3981970 m!4556175))

(declare-fun m!4556177 () Bool)

(assert (=> b!3981970 m!4556177))

(assert (=> b!3981972 m!4556159))

(declare-fun m!4556179 () Bool)

(assert (=> b!3981972 m!4556179))

(assert (=> b!3981972 m!4555871))

(declare-fun m!4556181 () Bool)

(assert (=> b!3981971 m!4556181))

(declare-fun m!4556183 () Bool)

(assert (=> d!1178684 m!4556183))

(assert (=> d!1178684 m!4555439))

(assert (=> d!1178684 m!4555441))

(declare-fun m!4556187 () Bool)

(assert (=> d!1178684 m!4556187))

(assert (=> b!3981968 m!4556159))

(assert (=> b!3981968 m!4556163))

(assert (=> b!3981968 m!4556163))

(assert (=> b!3981968 m!4556165))

(declare-fun m!4556189 () Bool)

(assert (=> b!3981973 m!4556189))

(assert (=> b!3981969 m!4556159))

(declare-fun m!4556191 () Bool)

(assert (=> b!3981969 m!4556191))

(assert (=> b!3981966 m!4556159))

(assert (=> b!3981966 m!4556163))

(assert (=> b!3981966 m!4556163))

(assert (=> b!3981966 m!4556165))

(assert (=> b!3981966 m!4556165))

(declare-fun m!4556199 () Bool)

(assert (=> b!3981966 m!4556199))

(assert (=> b!3981542 d!1178684))

(declare-fun b!3981989 () Bool)

(declare-fun res!1614034 () Bool)

(declare-fun e!2467725 () Bool)

(assert (=> b!3981989 (=> (not res!1614034) (not e!2467725))))

(declare-fun lt!1399161 () List!42692)

(assert (=> b!3981989 (= res!1614034 (= (size!31843 lt!1399161) (+ (size!31843 prefix!494) (size!31843 suffix!1299))))))

(declare-fun b!3981987 () Bool)

(declare-fun e!2467726 () List!42692)

(assert (=> b!3981987 (= e!2467726 suffix!1299)))

(declare-fun d!1178748 () Bool)

(assert (=> d!1178748 e!2467725))

(declare-fun res!1614033 () Bool)

(assert (=> d!1178748 (=> (not res!1614033) (not e!2467725))))

(assert (=> d!1178748 (= res!1614033 (= (content!6452 lt!1399161) ((_ map or) (content!6452 prefix!494) (content!6452 suffix!1299))))))

(assert (=> d!1178748 (= lt!1399161 e!2467726)))

(declare-fun c!689804 () Bool)

(assert (=> d!1178748 (= c!689804 ((_ is Nil!42568) prefix!494))))

(assert (=> d!1178748 (= (++!11124 prefix!494 suffix!1299) lt!1399161)))

(declare-fun b!3981990 () Bool)

(assert (=> b!3981990 (= e!2467725 (or (not (= suffix!1299 Nil!42568)) (= lt!1399161 prefix!494)))))

(declare-fun b!3981988 () Bool)

(assert (=> b!3981988 (= e!2467726 (Cons!42568 (h!47988 prefix!494) (++!11124 (t!331347 prefix!494) suffix!1299)))))

(assert (= (and d!1178748 c!689804) b!3981987))

(assert (= (and d!1178748 (not c!689804)) b!3981988))

(assert (= (and d!1178748 res!1614033) b!3981989))

(assert (= (and b!3981989 res!1614034) b!3981990))

(declare-fun m!4556207 () Bool)

(assert (=> b!3981989 m!4556207))

(assert (=> b!3981989 m!4555333))

(assert (=> b!3981989 m!4555339))

(declare-fun m!4556209 () Bool)

(assert (=> d!1178748 m!4556209))

(assert (=> d!1178748 m!4555501))

(declare-fun m!4556211 () Bool)

(assert (=> d!1178748 m!4556211))

(declare-fun m!4556215 () Bool)

(assert (=> b!3981988 m!4556215))

(assert (=> b!3981542 d!1178748))

(declare-fun d!1178752 () Bool)

(declare-fun res!1614047 () Bool)

(declare-fun e!2467737 () Bool)

(assert (=> d!1178752 (=> (not res!1614047) (not e!2467737))))

(assert (=> d!1178752 (= res!1614047 (not (isEmpty!25453 (originalCharacters!7322 token!484))))))

(assert (=> d!1178752 (= (inv!56866 token!484) e!2467737)))

(declare-fun b!3982009 () Bool)

(declare-fun res!1614048 () Bool)

(assert (=> b!3982009 (=> (not res!1614048) (not e!2467737))))

(declare-fun dynLambda!18109 (Int TokenValue!6952) BalanceConc!25460)

(assert (=> b!3982009 (= res!1614048 (= (originalCharacters!7322 token!484) (list!15800 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (value!212211 token!484)))))))

(declare-fun b!3982010 () Bool)

(assert (=> b!3982010 (= e!2467737 (= (size!31842 token!484) (size!31843 (originalCharacters!7322 token!484))))))

(assert (= (and d!1178752 res!1614047) b!3982009))

(assert (= (and b!3982009 res!1614048) b!3982010))

(declare-fun b_lambda!116315 () Bool)

(assert (=> (not b_lambda!116315) (not b!3982009)))

(declare-fun tb!239937 () Bool)

(declare-fun t!331371 () Bool)

(assert (=> (and b!3981547 (= (toChars!9069 (transformation!6722 (h!47990 rules!2999))) (toChars!9069 (transformation!6722 (rule!9728 token!484)))) t!331371) tb!239937))

(declare-fun b!3982021 () Bool)

(declare-fun e!2467744 () Bool)

(declare-fun tp!1213709 () Bool)

(declare-fun inv!56870 (Conc!12933) Bool)

(assert (=> b!3982021 (= e!2467744 (and (inv!56870 (c!689734 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (value!212211 token!484)))) tp!1213709))))

(declare-fun result!290664 () Bool)

(declare-fun inv!56871 (BalanceConc!25460) Bool)

(assert (=> tb!239937 (= result!290664 (and (inv!56871 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (value!212211 token!484))) e!2467744))))

(assert (= tb!239937 b!3982021))

(declare-fun m!4556245 () Bool)

(assert (=> b!3982021 m!4556245))

(declare-fun m!4556247 () Bool)

(assert (=> tb!239937 m!4556247))

(assert (=> b!3982009 t!331371))

(declare-fun b_and!306063 () Bool)

(assert (= b_and!306033 (and (=> t!331371 result!290664) b_and!306063)))

(declare-fun t!331373 () Bool)

(declare-fun tb!239939 () Bool)

(assert (=> (and b!3981537 (= (toChars!9069 (transformation!6722 (rule!9728 token!484))) (toChars!9069 (transformation!6722 (rule!9728 token!484)))) t!331373) tb!239939))

(declare-fun result!290668 () Bool)

(assert (= result!290668 result!290664))

(assert (=> b!3982009 t!331373))

(declare-fun b_and!306065 () Bool)

(assert (= b_and!306037 (and (=> t!331373 result!290668) b_and!306065)))

(declare-fun m!4556249 () Bool)

(assert (=> d!1178752 m!4556249))

(declare-fun m!4556251 () Bool)

(assert (=> b!3982009 m!4556251))

(assert (=> b!3982009 m!4556251))

(declare-fun m!4556253 () Bool)

(assert (=> b!3982009 m!4556253))

(assert (=> b!3982010 m!4555343))

(assert (=> start!374728 d!1178752))

(declare-fun b!3982057 () Bool)

(declare-fun e!2467762 () Bool)

(declare-fun e!2467761 () Bool)

(assert (=> b!3982057 (= e!2467762 e!2467761)))

(declare-fun c!689813 () Bool)

(assert (=> b!3982057 (= c!689813 ((_ is IntegerValue!20857) (value!212211 token!484)))))

(declare-fun b!3982058 () Bool)

(declare-fun res!1614055 () Bool)

(declare-fun e!2467760 () Bool)

(assert (=> b!3982058 (=> res!1614055 e!2467760)))

(assert (=> b!3982058 (= res!1614055 (not ((_ is IntegerValue!20858) (value!212211 token!484))))))

(assert (=> b!3982058 (= e!2467761 e!2467760)))

(declare-fun d!1178768 () Bool)

(declare-fun c!689814 () Bool)

(assert (=> d!1178768 (= c!689814 ((_ is IntegerValue!20856) (value!212211 token!484)))))

(assert (=> d!1178768 (= (inv!21 (value!212211 token!484)) e!2467762)))

(declare-fun b!3982059 () Bool)

(declare-fun inv!15 (TokenValue!6952) Bool)

(assert (=> b!3982059 (= e!2467760 (inv!15 (value!212211 token!484)))))

(declare-fun b!3982062 () Bool)

(declare-fun inv!17 (TokenValue!6952) Bool)

(assert (=> b!3982062 (= e!2467761 (inv!17 (value!212211 token!484)))))

(declare-fun b!3982063 () Bool)

(declare-fun inv!16 (TokenValue!6952) Bool)

(assert (=> b!3982063 (= e!2467762 (inv!16 (value!212211 token!484)))))

(assert (= (and d!1178768 c!689814) b!3982063))

(assert (= (and d!1178768 (not c!689814)) b!3982057))

(assert (= (and b!3982057 c!689813) b!3982062))

(assert (= (and b!3982057 (not c!689813)) b!3982058))

(assert (= (and b!3982058 (not res!1614055)) b!3982059))

(declare-fun m!4556257 () Bool)

(assert (=> b!3982059 m!4556257))

(declare-fun m!4556259 () Bool)

(assert (=> b!3982062 m!4556259))

(declare-fun m!4556261 () Bool)

(assert (=> b!3982063 m!4556261))

(assert (=> b!3981543 d!1178768))

(declare-fun d!1178770 () Bool)

(assert (=> d!1178770 (= (inv!56863 (tag!7582 (rule!9728 token!484))) (= (mod (str.len (value!212210 (tag!7582 (rule!9728 token!484)))) 2) 0))))

(assert (=> b!3981550 d!1178770))

(declare-fun d!1178772 () Bool)

(declare-fun res!1614056 () Bool)

(declare-fun e!2467769 () Bool)

(assert (=> d!1178772 (=> (not res!1614056) (not e!2467769))))

(assert (=> d!1178772 (= res!1614056 (semiInverseModEq!2885 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))))))

(assert (=> d!1178772 (= (inv!56867 (transformation!6722 (rule!9728 token!484))) e!2467769)))

(declare-fun b!3982068 () Bool)

(assert (=> b!3982068 (= e!2467769 (equivClasses!2784 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))))))

(assert (= (and d!1178772 res!1614056) b!3982068))

(declare-fun m!4556263 () Bool)

(assert (=> d!1178772 m!4556263))

(declare-fun m!4556265 () Bool)

(assert (=> b!3982068 m!4556265))

(assert (=> b!3981550 d!1178772))

(declare-fun b!3982105 () Bool)

(declare-fun res!1614075 () Bool)

(declare-fun e!2467795 () Bool)

(assert (=> b!3982105 (=> res!1614075 e!2467795)))

(declare-fun e!2467799 () Bool)

(assert (=> b!3982105 (= res!1614075 e!2467799)))

(declare-fun res!1614077 () Bool)

(assert (=> b!3982105 (=> (not res!1614077) (not e!2467799))))

(declare-fun lt!1399176 () Bool)

(assert (=> b!3982105 (= res!1614077 lt!1399176)))

(declare-fun b!3982106 () Bool)

(declare-fun res!1614078 () Bool)

(assert (=> b!3982106 (=> (not res!1614078) (not e!2467799))))

(declare-fun call!285739 () Bool)

(assert (=> b!3982106 (= res!1614078 (not call!285739))))

(declare-fun d!1178774 () Bool)

(declare-fun e!2467793 () Bool)

(assert (=> d!1178774 e!2467793))

(declare-fun c!689821 () Bool)

(assert (=> d!1178774 (= c!689821 ((_ is EmptyExpr!11627) (regex!6722 (rule!9728 token!484))))))

(declare-fun e!2467794 () Bool)

(assert (=> d!1178774 (= lt!1399176 e!2467794)))

(declare-fun c!689822 () Bool)

(assert (=> d!1178774 (= c!689822 (isEmpty!25453 lt!1398974))))

(declare-fun validRegex!5278 (Regex!11627) Bool)

(assert (=> d!1178774 (validRegex!5278 (regex!6722 (rule!9728 token!484)))))

(assert (=> d!1178774 (= (matchR!5604 (regex!6722 (rule!9728 token!484)) lt!1398974) lt!1399176)))

(declare-fun b!3982107 () Bool)

(assert (=> b!3982107 (= e!2467793 (= lt!1399176 call!285739))))

(declare-fun b!3982108 () Bool)

(declare-fun res!1614079 () Bool)

(declare-fun e!2467796 () Bool)

(assert (=> b!3982108 (=> res!1614079 e!2467796)))

(assert (=> b!3982108 (= res!1614079 (not (isEmpty!25453 (tail!6211 lt!1398974))))))

(declare-fun b!3982109 () Bool)

(declare-fun res!1614073 () Bool)

(assert (=> b!3982109 (=> (not res!1614073) (not e!2467799))))

(assert (=> b!3982109 (= res!1614073 (isEmpty!25453 (tail!6211 lt!1398974)))))

(declare-fun b!3982110 () Bool)

(declare-fun e!2467798 () Bool)

(assert (=> b!3982110 (= e!2467795 e!2467798)))

(declare-fun res!1614080 () Bool)

(assert (=> b!3982110 (=> (not res!1614080) (not e!2467798))))

(assert (=> b!3982110 (= res!1614080 (not lt!1399176))))

(declare-fun b!3982111 () Bool)

(declare-fun res!1614074 () Bool)

(assert (=> b!3982111 (=> res!1614074 e!2467795)))

(assert (=> b!3982111 (= res!1614074 (not ((_ is ElementMatch!11627) (regex!6722 (rule!9728 token!484)))))))

(declare-fun e!2467797 () Bool)

(assert (=> b!3982111 (= e!2467797 e!2467795)))

(declare-fun b!3982112 () Bool)

(assert (=> b!3982112 (= e!2467797 (not lt!1399176))))

(declare-fun b!3982113 () Bool)

(assert (=> b!3982113 (= e!2467799 (= (head!8479 lt!1398974) (c!689735 (regex!6722 (rule!9728 token!484)))))))

(declare-fun b!3982114 () Bool)

(assert (=> b!3982114 (= e!2467796 (not (= (head!8479 lt!1398974) (c!689735 (regex!6722 (rule!9728 token!484))))))))

(declare-fun bm!285734 () Bool)

(assert (=> bm!285734 (= call!285739 (isEmpty!25453 lt!1398974))))

(declare-fun b!3982115 () Bool)

(declare-fun derivativeStep!3488 (Regex!11627 C!23440) Regex!11627)

(assert (=> b!3982115 (= e!2467794 (matchR!5604 (derivativeStep!3488 (regex!6722 (rule!9728 token!484)) (head!8479 lt!1398974)) (tail!6211 lt!1398974)))))

(declare-fun b!3982116 () Bool)

(assert (=> b!3982116 (= e!2467793 e!2467797)))

(declare-fun c!689823 () Bool)

(assert (=> b!3982116 (= c!689823 ((_ is EmptyLang!11627) (regex!6722 (rule!9728 token!484))))))

(declare-fun b!3982117 () Bool)

(assert (=> b!3982117 (= e!2467798 e!2467796)))

(declare-fun res!1614076 () Bool)

(assert (=> b!3982117 (=> res!1614076 e!2467796)))

(assert (=> b!3982117 (= res!1614076 call!285739)))

(declare-fun b!3982118 () Bool)

(declare-fun nullable!4078 (Regex!11627) Bool)

(assert (=> b!3982118 (= e!2467794 (nullable!4078 (regex!6722 (rule!9728 token!484))))))

(assert (= (and d!1178774 c!689822) b!3982118))

(assert (= (and d!1178774 (not c!689822)) b!3982115))

(assert (= (and d!1178774 c!689821) b!3982107))

(assert (= (and d!1178774 (not c!689821)) b!3982116))

(assert (= (and b!3982116 c!689823) b!3982112))

(assert (= (and b!3982116 (not c!689823)) b!3982111))

(assert (= (and b!3982111 (not res!1614074)) b!3982105))

(assert (= (and b!3982105 res!1614077) b!3982106))

(assert (= (and b!3982106 res!1614078) b!3982109))

(assert (= (and b!3982109 res!1614073) b!3982113))

(assert (= (and b!3982105 (not res!1614075)) b!3982110))

(assert (= (and b!3982110 res!1614080) b!3982117))

(assert (= (and b!3982117 (not res!1614076)) b!3982108))

(assert (= (and b!3982108 (not res!1614079)) b!3982114))

(assert (= (or b!3982107 b!3982106 b!3982117) bm!285734))

(declare-fun m!4556271 () Bool)

(assert (=> d!1178774 m!4556271))

(declare-fun m!4556273 () Bool)

(assert (=> d!1178774 m!4556273))

(assert (=> b!3982108 m!4555685))

(assert (=> b!3982108 m!4555685))

(declare-fun m!4556275 () Bool)

(assert (=> b!3982108 m!4556275))

(assert (=> b!3982115 m!4555679))

(assert (=> b!3982115 m!4555679))

(declare-fun m!4556277 () Bool)

(assert (=> b!3982115 m!4556277))

(assert (=> b!3982115 m!4555685))

(assert (=> b!3982115 m!4556277))

(assert (=> b!3982115 m!4555685))

(declare-fun m!4556279 () Bool)

(assert (=> b!3982115 m!4556279))

(declare-fun m!4556281 () Bool)

(assert (=> b!3982118 m!4556281))

(assert (=> b!3982114 m!4555679))

(assert (=> b!3982113 m!4555679))

(assert (=> b!3982109 m!4555685))

(assert (=> b!3982109 m!4555685))

(assert (=> b!3982109 m!4556275))

(assert (=> bm!285734 m!4556271))

(assert (=> b!3981529 d!1178774))

(declare-fun b!3982120 () Bool)

(declare-fun res!1614083 () Bool)

(declare-fun e!2467800 () Bool)

(assert (=> b!3982120 (=> (not res!1614083) (not e!2467800))))

(assert (=> b!3982120 (= res!1614083 (= (head!8479 lt!1398974) (head!8479 lt!1398962)))))

(declare-fun b!3982122 () Bool)

(declare-fun e!2467801 () Bool)

(assert (=> b!3982122 (= e!2467801 (>= (size!31843 lt!1398962) (size!31843 lt!1398974)))))

(declare-fun b!3982119 () Bool)

(declare-fun e!2467802 () Bool)

(assert (=> b!3982119 (= e!2467802 e!2467800)))

(declare-fun res!1614081 () Bool)

(assert (=> b!3982119 (=> (not res!1614081) (not e!2467800))))

(assert (=> b!3982119 (= res!1614081 (not ((_ is Nil!42568) lt!1398962)))))

(declare-fun b!3982121 () Bool)

(assert (=> b!3982121 (= e!2467800 (isPrefix!3809 (tail!6211 lt!1398974) (tail!6211 lt!1398962)))))

(declare-fun d!1178776 () Bool)

(assert (=> d!1178776 e!2467801))

(declare-fun res!1614082 () Bool)

(assert (=> d!1178776 (=> res!1614082 e!2467801)))

(declare-fun lt!1399177 () Bool)

(assert (=> d!1178776 (= res!1614082 (not lt!1399177))))

(assert (=> d!1178776 (= lt!1399177 e!2467802)))

(declare-fun res!1614084 () Bool)

(assert (=> d!1178776 (=> res!1614084 e!2467802)))

(assert (=> d!1178776 (= res!1614084 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178776 (= (isPrefix!3809 lt!1398974 lt!1398962) lt!1399177)))

(assert (= (and d!1178776 (not res!1614084)) b!3982119))

(assert (= (and b!3982119 res!1614081) b!3982120))

(assert (= (and b!3982120 res!1614083) b!3982121))

(assert (= (and d!1178776 (not res!1614082)) b!3982122))

(assert (=> b!3982120 m!4555679))

(declare-fun m!4556283 () Bool)

(assert (=> b!3982120 m!4556283))

(assert (=> b!3982122 m!4555313))

(assert (=> b!3982122 m!4555331))

(assert (=> b!3982121 m!4555685))

(assert (=> b!3982121 m!4555491))

(assert (=> b!3982121 m!4555685))

(assert (=> b!3982121 m!4555491))

(declare-fun m!4556285 () Bool)

(assert (=> b!3982121 m!4556285))

(assert (=> b!3981529 d!1178776))

(declare-fun d!1178778 () Bool)

(assert (=> d!1178778 (isPrefix!3809 lt!1398974 (++!11124 prefix!494 newSuffix!27))))

(declare-fun lt!1399178 () Unit!61235)

(assert (=> d!1178778 (= lt!1399178 (choose!23893 lt!1398974 prefix!494 newSuffix!27))))

(assert (=> d!1178778 (isPrefix!3809 lt!1398974 prefix!494)))

(assert (=> d!1178778 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!642 lt!1398974 prefix!494 newSuffix!27) lt!1399178)))

(declare-fun bs!588008 () Bool)

(assert (= bs!588008 d!1178778))

(assert (=> bs!588008 m!4555361))

(assert (=> bs!588008 m!4555361))

(declare-fun m!4556287 () Bool)

(assert (=> bs!588008 m!4556287))

(declare-fun m!4556289 () Bool)

(assert (=> bs!588008 m!4556289))

(assert (=> bs!588008 m!4555357))

(assert (=> b!3981529 d!1178778))

(declare-fun d!1178780 () Bool)

(assert (=> d!1178780 (isPrefix!3809 lt!1398974 (++!11124 prefix!494 suffix!1299))))

(declare-fun lt!1399179 () Unit!61235)

(assert (=> d!1178780 (= lt!1399179 (choose!23893 lt!1398974 prefix!494 suffix!1299))))

(assert (=> d!1178780 (isPrefix!3809 lt!1398974 prefix!494)))

(assert (=> d!1178780 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!642 lt!1398974 prefix!494 suffix!1299) lt!1399179)))

(declare-fun bs!588009 () Bool)

(assert (= bs!588009 d!1178780))

(assert (=> bs!588009 m!4555465))

(assert (=> bs!588009 m!4555465))

(declare-fun m!4556291 () Bool)

(assert (=> bs!588009 m!4556291))

(declare-fun m!4556293 () Bool)

(assert (=> bs!588009 m!4556293))

(assert (=> bs!588009 m!4555357))

(assert (=> b!3981529 d!1178780))

(declare-fun b!3982125 () Bool)

(declare-fun res!1614086 () Bool)

(declare-fun e!2467803 () Bool)

(assert (=> b!3982125 (=> (not res!1614086) (not e!2467803))))

(declare-fun lt!1399180 () List!42692)

(assert (=> b!3982125 (= res!1614086 (= (size!31843 lt!1399180) (+ (size!31843 lt!1398974) (size!31843 suffixResult!105))))))

(declare-fun b!3982123 () Bool)

(declare-fun e!2467804 () List!42692)

(assert (=> b!3982123 (= e!2467804 suffixResult!105)))

(declare-fun d!1178782 () Bool)

(assert (=> d!1178782 e!2467803))

(declare-fun res!1614085 () Bool)

(assert (=> d!1178782 (=> (not res!1614085) (not e!2467803))))

(assert (=> d!1178782 (= res!1614085 (= (content!6452 lt!1399180) ((_ map or) (content!6452 lt!1398974) (content!6452 suffixResult!105))))))

(assert (=> d!1178782 (= lt!1399180 e!2467804)))

(declare-fun c!689824 () Bool)

(assert (=> d!1178782 (= c!689824 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178782 (= (++!11124 lt!1398974 suffixResult!105) lt!1399180)))

(declare-fun b!3982126 () Bool)

(assert (=> b!3982126 (= e!2467803 (or (not (= suffixResult!105 Nil!42568)) (= lt!1399180 lt!1398974)))))

(declare-fun b!3982124 () Bool)

(assert (=> b!3982124 (= e!2467804 (Cons!42568 (h!47988 lt!1398974) (++!11124 (t!331347 lt!1398974) suffixResult!105)))))

(assert (= (and d!1178782 c!689824) b!3982123))

(assert (= (and d!1178782 (not c!689824)) b!3982124))

(assert (= (and d!1178782 res!1614085) b!3982125))

(assert (= (and b!3982125 res!1614086) b!3982126))

(declare-fun m!4556295 () Bool)

(assert (=> b!3982125 m!4556295))

(assert (=> b!3982125 m!4555331))

(declare-fun m!4556297 () Bool)

(assert (=> b!3982125 m!4556297))

(declare-fun m!4556299 () Bool)

(assert (=> d!1178782 m!4556299))

(declare-fun m!4556301 () Bool)

(assert (=> d!1178782 m!4556301))

(declare-fun m!4556303 () Bool)

(assert (=> d!1178782 m!4556303))

(declare-fun m!4556305 () Bool)

(assert (=> b!3982124 m!4556305))

(assert (=> b!3981530 d!1178782))

(declare-fun d!1178784 () Bool)

(declare-fun e!2467807 () Bool)

(assert (=> d!1178784 e!2467807))

(declare-fun res!1614089 () Bool)

(assert (=> d!1178784 (=> (not res!1614089) (not e!2467807))))

(assert (=> d!1178784 (= res!1614089 (semiInverseModEq!2885 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))))))

(declare-fun Unit!61241 () Unit!61235)

(assert (=> d!1178784 (= (lemmaInv!937 (transformation!6722 (rule!9728 token!484))) Unit!61241)))

(declare-fun b!3982129 () Bool)

(assert (=> b!3982129 (= e!2467807 (equivClasses!2784 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))))))

(assert (= (and d!1178784 res!1614089) b!3982129))

(assert (=> d!1178784 m!4556263))

(assert (=> b!3982129 m!4556265))

(assert (=> b!3981530 d!1178784))

(declare-fun d!1178786 () Bool)

(declare-fun res!1614094 () Bool)

(declare-fun e!2467810 () Bool)

(assert (=> d!1178786 (=> (not res!1614094) (not e!2467810))))

(assert (=> d!1178786 (= res!1614094 (validRegex!5278 (regex!6722 (rule!9728 token!484))))))

(assert (=> d!1178786 (= (ruleValid!2654 thiss!21717 (rule!9728 token!484)) e!2467810)))

(declare-fun b!3982134 () Bool)

(declare-fun res!1614095 () Bool)

(assert (=> b!3982134 (=> (not res!1614095) (not e!2467810))))

(assert (=> b!3982134 (= res!1614095 (not (nullable!4078 (regex!6722 (rule!9728 token!484)))))))

(declare-fun b!3982135 () Bool)

(assert (=> b!3982135 (= e!2467810 (not (= (tag!7582 (rule!9728 token!484)) (String!48479 ""))))))

(assert (= (and d!1178786 res!1614094) b!3982134))

(assert (= (and b!3982134 res!1614095) b!3982135))

(assert (=> d!1178786 m!4556273))

(assert (=> b!3982134 m!4556281))

(assert (=> b!3981530 d!1178786))

(declare-fun d!1178788 () Bool)

(assert (=> d!1178788 (ruleValid!2654 thiss!21717 (rule!9728 token!484))))

(declare-fun lt!1399183 () Unit!61235)

(declare-fun choose!23894 (LexerInterface!6311 Rule!13244 List!42694) Unit!61235)

(assert (=> d!1178788 (= lt!1399183 (choose!23894 thiss!21717 (rule!9728 token!484) rules!2999))))

(assert (=> d!1178788 (contains!8471 rules!2999 (rule!9728 token!484))))

(assert (=> d!1178788 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1728 thiss!21717 (rule!9728 token!484) rules!2999) lt!1399183)))

(declare-fun bs!588010 () Bool)

(assert (= bs!588010 d!1178788))

(assert (=> bs!588010 m!4555447))

(declare-fun m!4556307 () Bool)

(assert (=> bs!588010 m!4556307))

(declare-fun m!4556309 () Bool)

(assert (=> bs!588010 m!4556309))

(assert (=> b!3981530 d!1178788))

(declare-fun b!3982138 () Bool)

(declare-fun res!1614097 () Bool)

(declare-fun e!2467811 () Bool)

(assert (=> b!3982138 (=> (not res!1614097) (not e!2467811))))

(declare-fun lt!1399184 () List!42692)

(assert (=> b!3982138 (= res!1614097 (= (size!31843 lt!1399184) (+ (size!31843 prefix!494) (size!31843 newSuffix!27))))))

(declare-fun b!3982136 () Bool)

(declare-fun e!2467812 () List!42692)

(assert (=> b!3982136 (= e!2467812 newSuffix!27)))

(declare-fun d!1178790 () Bool)

(assert (=> d!1178790 e!2467811))

(declare-fun res!1614096 () Bool)

(assert (=> d!1178790 (=> (not res!1614096) (not e!2467811))))

(assert (=> d!1178790 (= res!1614096 (= (content!6452 lt!1399184) ((_ map or) (content!6452 prefix!494) (content!6452 newSuffix!27))))))

(assert (=> d!1178790 (= lt!1399184 e!2467812)))

(declare-fun c!689825 () Bool)

(assert (=> d!1178790 (= c!689825 ((_ is Nil!42568) prefix!494))))

(assert (=> d!1178790 (= (++!11124 prefix!494 newSuffix!27) lt!1399184)))

(declare-fun b!3982139 () Bool)

(assert (=> b!3982139 (= e!2467811 (or (not (= newSuffix!27 Nil!42568)) (= lt!1399184 prefix!494)))))

(declare-fun b!3982137 () Bool)

(assert (=> b!3982137 (= e!2467812 (Cons!42568 (h!47988 prefix!494) (++!11124 (t!331347 prefix!494) newSuffix!27)))))

(assert (= (and d!1178790 c!689825) b!3982136))

(assert (= (and d!1178790 (not c!689825)) b!3982137))

(assert (= (and d!1178790 res!1614096) b!3982138))

(assert (= (and b!3982138 res!1614097) b!3982139))

(declare-fun m!4556311 () Bool)

(assert (=> b!3982138 m!4556311))

(assert (=> b!3982138 m!4555333))

(assert (=> b!3982138 m!4555341))

(declare-fun m!4556313 () Bool)

(assert (=> d!1178790 m!4556313))

(assert (=> d!1178790 m!4555501))

(declare-fun m!4556315 () Bool)

(assert (=> d!1178790 m!4556315))

(declare-fun m!4556317 () Bool)

(assert (=> b!3982137 m!4556317))

(assert (=> b!3981551 d!1178790))

(declare-fun b!3982142 () Bool)

(declare-fun res!1614099 () Bool)

(declare-fun e!2467813 () Bool)

(assert (=> b!3982142 (=> (not res!1614099) (not e!2467813))))

(declare-fun lt!1399185 () List!42692)

(assert (=> b!3982142 (= res!1614099 (= (size!31843 lt!1399185) (+ (size!31843 lt!1398974) (size!31843 newSuffixResult!27))))))

(declare-fun b!3982140 () Bool)

(declare-fun e!2467814 () List!42692)

(assert (=> b!3982140 (= e!2467814 newSuffixResult!27)))

(declare-fun d!1178792 () Bool)

(assert (=> d!1178792 e!2467813))

(declare-fun res!1614098 () Bool)

(assert (=> d!1178792 (=> (not res!1614098) (not e!2467813))))

(assert (=> d!1178792 (= res!1614098 (= (content!6452 lt!1399185) ((_ map or) (content!6452 lt!1398974) (content!6452 newSuffixResult!27))))))

(assert (=> d!1178792 (= lt!1399185 e!2467814)))

(declare-fun c!689826 () Bool)

(assert (=> d!1178792 (= c!689826 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178792 (= (++!11124 lt!1398974 newSuffixResult!27) lt!1399185)))

(declare-fun b!3982143 () Bool)

(assert (=> b!3982143 (= e!2467813 (or (not (= newSuffixResult!27 Nil!42568)) (= lt!1399185 lt!1398974)))))

(declare-fun b!3982141 () Bool)

(assert (=> b!3982141 (= e!2467814 (Cons!42568 (h!47988 lt!1398974) (++!11124 (t!331347 lt!1398974) newSuffixResult!27)))))

(assert (= (and d!1178792 c!689826) b!3982140))

(assert (= (and d!1178792 (not c!689826)) b!3982141))

(assert (= (and d!1178792 res!1614098) b!3982142))

(assert (= (and b!3982142 res!1614099) b!3982143))

(declare-fun m!4556319 () Bool)

(assert (=> b!3982142 m!4556319))

(assert (=> b!3982142 m!4555331))

(declare-fun m!4556321 () Bool)

(assert (=> b!3982142 m!4556321))

(declare-fun m!4556323 () Bool)

(assert (=> d!1178792 m!4556323))

(assert (=> d!1178792 m!4556301))

(declare-fun m!4556325 () Bool)

(assert (=> d!1178792 m!4556325))

(declare-fun m!4556327 () Bool)

(assert (=> b!3982141 m!4556327))

(assert (=> b!3981551 d!1178792))

(declare-fun d!1178794 () Bool)

(assert (=> d!1178794 (= (isEmpty!25450 rules!2999) ((_ is Nil!42570) rules!2999))))

(assert (=> b!3981552 d!1178794))

(declare-fun d!1178796 () Bool)

(declare-fun lt!1399186 () Int)

(assert (=> d!1178796 (>= lt!1399186 0)))

(declare-fun e!2467815 () Int)

(assert (=> d!1178796 (= lt!1399186 e!2467815)))

(declare-fun c!689827 () Bool)

(assert (=> d!1178796 (= c!689827 ((_ is Nil!42568) suffix!1299))))

(assert (=> d!1178796 (= (size!31843 suffix!1299) lt!1399186)))

(declare-fun b!3982144 () Bool)

(assert (=> b!3982144 (= e!2467815 0)))

(declare-fun b!3982145 () Bool)

(assert (=> b!3982145 (= e!2467815 (+ 1 (size!31843 (t!331347 suffix!1299))))))

(assert (= (and d!1178796 c!689827) b!3982144))

(assert (= (and d!1178796 (not c!689827)) b!3982145))

(declare-fun m!4556329 () Bool)

(assert (=> b!3982145 m!4556329))

(assert (=> b!3981549 d!1178796))

(declare-fun d!1178798 () Bool)

(declare-fun lt!1399187 () Int)

(assert (=> d!1178798 (>= lt!1399187 0)))

(declare-fun e!2467816 () Int)

(assert (=> d!1178798 (= lt!1399187 e!2467816)))

(declare-fun c!689828 () Bool)

(assert (=> d!1178798 (= c!689828 ((_ is Nil!42568) newSuffix!27))))

(assert (=> d!1178798 (= (size!31843 newSuffix!27) lt!1399187)))

(declare-fun b!3982146 () Bool)

(assert (=> b!3982146 (= e!2467816 0)))

(declare-fun b!3982147 () Bool)

(assert (=> b!3982147 (= e!2467816 (+ 1 (size!31843 (t!331347 newSuffix!27))))))

(assert (= (and d!1178798 c!689828) b!3982146))

(assert (= (and d!1178798 (not c!689828)) b!3982147))

(declare-fun m!4556331 () Bool)

(assert (=> b!3982147 m!4556331))

(assert (=> b!3981549 d!1178798))

(declare-fun b!3982150 () Bool)

(declare-fun res!1614101 () Bool)

(declare-fun e!2467817 () Bool)

(assert (=> b!3982150 (=> (not res!1614101) (not e!2467817))))

(declare-fun lt!1399188 () List!42692)

(assert (=> b!3982150 (= res!1614101 (= (size!31843 lt!1399188) (+ (size!31843 lt!1398974) (size!31843 lt!1398950))))))

(declare-fun b!3982148 () Bool)

(declare-fun e!2467818 () List!42692)

(assert (=> b!3982148 (= e!2467818 lt!1398950)))

(declare-fun d!1178800 () Bool)

(assert (=> d!1178800 e!2467817))

(declare-fun res!1614100 () Bool)

(assert (=> d!1178800 (=> (not res!1614100) (not e!2467817))))

(assert (=> d!1178800 (= res!1614100 (= (content!6452 lt!1399188) ((_ map or) (content!6452 lt!1398974) (content!6452 lt!1398950))))))

(assert (=> d!1178800 (= lt!1399188 e!2467818)))

(declare-fun c!689829 () Bool)

(assert (=> d!1178800 (= c!689829 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178800 (= (++!11124 lt!1398974 lt!1398950) lt!1399188)))

(declare-fun b!3982151 () Bool)

(assert (=> b!3982151 (= e!2467817 (or (not (= lt!1398950 Nil!42568)) (= lt!1399188 lt!1398974)))))

(declare-fun b!3982149 () Bool)

(assert (=> b!3982149 (= e!2467818 (Cons!42568 (h!47988 lt!1398974) (++!11124 (t!331347 lt!1398974) lt!1398950)))))

(assert (= (and d!1178800 c!689829) b!3982148))

(assert (= (and d!1178800 (not c!689829)) b!3982149))

(assert (= (and d!1178800 res!1614100) b!3982150))

(assert (= (and b!3982150 res!1614101) b!3982151))

(declare-fun m!4556333 () Bool)

(assert (=> b!3982150 m!4556333))

(assert (=> b!3982150 m!4555331))

(declare-fun m!4556335 () Bool)

(assert (=> b!3982150 m!4556335))

(declare-fun m!4556337 () Bool)

(assert (=> d!1178800 m!4556337))

(assert (=> d!1178800 m!4556301))

(declare-fun m!4556339 () Bool)

(assert (=> d!1178800 m!4556339))

(declare-fun m!4556341 () Bool)

(assert (=> b!3982149 m!4556341))

(assert (=> b!3981534 d!1178800))

(declare-fun b!3982154 () Bool)

(declare-fun res!1614103 () Bool)

(declare-fun e!2467819 () Bool)

(assert (=> b!3982154 (=> (not res!1614103) (not e!2467819))))

(declare-fun lt!1399189 () List!42692)

(assert (=> b!3982154 (= res!1614103 (= (size!31843 lt!1399189) (+ (size!31843 lt!1398970) (size!31843 suffix!1299))))))

(declare-fun b!3982152 () Bool)

(declare-fun e!2467820 () List!42692)

(assert (=> b!3982152 (= e!2467820 suffix!1299)))

(declare-fun d!1178802 () Bool)

(assert (=> d!1178802 e!2467819))

(declare-fun res!1614102 () Bool)

(assert (=> d!1178802 (=> (not res!1614102) (not e!2467819))))

(assert (=> d!1178802 (= res!1614102 (= (content!6452 lt!1399189) ((_ map or) (content!6452 lt!1398970) (content!6452 suffix!1299))))))

(assert (=> d!1178802 (= lt!1399189 e!2467820)))

(declare-fun c!689830 () Bool)

(assert (=> d!1178802 (= c!689830 ((_ is Nil!42568) lt!1398970))))

(assert (=> d!1178802 (= (++!11124 lt!1398970 suffix!1299) lt!1399189)))

(declare-fun b!3982155 () Bool)

(assert (=> b!3982155 (= e!2467819 (or (not (= suffix!1299 Nil!42568)) (= lt!1399189 lt!1398970)))))

(declare-fun b!3982153 () Bool)

(assert (=> b!3982153 (= e!2467820 (Cons!42568 (h!47988 lt!1398970) (++!11124 (t!331347 lt!1398970) suffix!1299)))))

(assert (= (and d!1178802 c!689830) b!3982152))

(assert (= (and d!1178802 (not c!689830)) b!3982153))

(assert (= (and d!1178802 res!1614102) b!3982154))

(assert (= (and b!3982154 res!1614103) b!3982155))

(declare-fun m!4556343 () Bool)

(assert (=> b!3982154 m!4556343))

(declare-fun m!4556345 () Bool)

(assert (=> b!3982154 m!4556345))

(assert (=> b!3982154 m!4555339))

(declare-fun m!4556347 () Bool)

(assert (=> d!1178802 m!4556347))

(declare-fun m!4556349 () Bool)

(assert (=> d!1178802 m!4556349))

(assert (=> d!1178802 m!4556211))

(declare-fun m!4556351 () Bool)

(assert (=> b!3982153 m!4556351))

(assert (=> b!3981534 d!1178802))

(declare-fun b!3982158 () Bool)

(declare-fun res!1614105 () Bool)

(declare-fun e!2467821 () Bool)

(assert (=> b!3982158 (=> (not res!1614105) (not e!2467821))))

(declare-fun lt!1399190 () List!42692)

(assert (=> b!3982158 (= res!1614105 (= (size!31843 lt!1399190) (+ (size!31843 lt!1398951) (size!31843 suffix!1299))))))

(declare-fun b!3982156 () Bool)

(declare-fun e!2467822 () List!42692)

(assert (=> b!3982156 (= e!2467822 suffix!1299)))

(declare-fun d!1178804 () Bool)

(assert (=> d!1178804 e!2467821))

(declare-fun res!1614104 () Bool)

(assert (=> d!1178804 (=> (not res!1614104) (not e!2467821))))

(assert (=> d!1178804 (= res!1614104 (= (content!6452 lt!1399190) ((_ map or) (content!6452 lt!1398951) (content!6452 suffix!1299))))))

(assert (=> d!1178804 (= lt!1399190 e!2467822)))

(declare-fun c!689831 () Bool)

(assert (=> d!1178804 (= c!689831 ((_ is Nil!42568) lt!1398951))))

(assert (=> d!1178804 (= (++!11124 lt!1398951 suffix!1299) lt!1399190)))

(declare-fun b!3982159 () Bool)

(assert (=> b!3982159 (= e!2467821 (or (not (= suffix!1299 Nil!42568)) (= lt!1399190 lt!1398951)))))

(declare-fun b!3982157 () Bool)

(assert (=> b!3982157 (= e!2467822 (Cons!42568 (h!47988 lt!1398951) (++!11124 (t!331347 lt!1398951) suffix!1299)))))

(assert (= (and d!1178804 c!689831) b!3982156))

(assert (= (and d!1178804 (not c!689831)) b!3982157))

(assert (= (and d!1178804 res!1614104) b!3982158))

(assert (= (and b!3982158 res!1614105) b!3982159))

(declare-fun m!4556353 () Bool)

(assert (=> b!3982158 m!4556353))

(declare-fun m!4556355 () Bool)

(assert (=> b!3982158 m!4556355))

(assert (=> b!3982158 m!4555339))

(declare-fun m!4556357 () Bool)

(assert (=> d!1178804 m!4556357))

(declare-fun m!4556359 () Bool)

(assert (=> d!1178804 m!4556359))

(assert (=> d!1178804 m!4556211))

(declare-fun m!4556361 () Bool)

(assert (=> b!3982157 m!4556361))

(assert (=> b!3981534 d!1178804))

(declare-fun d!1178806 () Bool)

(assert (=> d!1178806 (= (++!11124 (++!11124 lt!1398974 lt!1398951) suffix!1299) (++!11124 lt!1398974 (++!11124 lt!1398951 suffix!1299)))))

(declare-fun lt!1399191 () Unit!61235)

(assert (=> d!1178806 (= lt!1399191 (choose!23887 lt!1398974 lt!1398951 suffix!1299))))

(assert (=> d!1178806 (= (lemmaConcatAssociativity!2444 lt!1398974 lt!1398951 suffix!1299) lt!1399191)))

(declare-fun bs!588011 () Bool)

(assert (= bs!588011 d!1178806))

(assert (=> bs!588011 m!4555459))

(assert (=> bs!588011 m!4555353))

(declare-fun m!4556363 () Bool)

(assert (=> bs!588011 m!4556363))

(assert (=> bs!588011 m!4555459))

(declare-fun m!4556365 () Bool)

(assert (=> bs!588011 m!4556365))

(assert (=> bs!588011 m!4555353))

(declare-fun m!4556367 () Bool)

(assert (=> bs!588011 m!4556367))

(assert (=> b!3981534 d!1178806))

(declare-fun d!1178808 () Bool)

(declare-fun lt!1399192 () Int)

(assert (=> d!1178808 (>= lt!1399192 0)))

(declare-fun e!2467823 () Int)

(assert (=> d!1178808 (= lt!1399192 e!2467823)))

(declare-fun c!689832 () Bool)

(assert (=> d!1178808 (= c!689832 ((_ is Nil!42568) (originalCharacters!7322 token!484)))))

(assert (=> d!1178808 (= (size!31843 (originalCharacters!7322 token!484)) lt!1399192)))

(declare-fun b!3982160 () Bool)

(assert (=> b!3982160 (= e!2467823 0)))

(declare-fun b!3982161 () Bool)

(assert (=> b!3982161 (= e!2467823 (+ 1 (size!31843 (t!331347 (originalCharacters!7322 token!484)))))))

(assert (= (and d!1178808 c!689832) b!3982160))

(assert (= (and d!1178808 (not c!689832)) b!3982161))

(declare-fun m!4556369 () Bool)

(assert (=> b!3982161 m!4556369))

(assert (=> b!3981555 d!1178808))

(declare-fun b!3982164 () Bool)

(declare-fun res!1614107 () Bool)

(declare-fun e!2467824 () Bool)

(assert (=> b!3982164 (=> (not res!1614107) (not e!2467824))))

(declare-fun lt!1399193 () List!42692)

(assert (=> b!3982164 (= res!1614107 (= (size!31843 lt!1399193) (+ (size!31843 lt!1398974) (size!31843 lt!1398951))))))

(declare-fun b!3982162 () Bool)

(declare-fun e!2467825 () List!42692)

(assert (=> b!3982162 (= e!2467825 lt!1398951)))

(declare-fun d!1178810 () Bool)

(assert (=> d!1178810 e!2467824))

(declare-fun res!1614106 () Bool)

(assert (=> d!1178810 (=> (not res!1614106) (not e!2467824))))

(assert (=> d!1178810 (= res!1614106 (= (content!6452 lt!1399193) ((_ map or) (content!6452 lt!1398974) (content!6452 lt!1398951))))))

(assert (=> d!1178810 (= lt!1399193 e!2467825)))

(declare-fun c!689833 () Bool)

(assert (=> d!1178810 (= c!689833 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178810 (= (++!11124 lt!1398974 lt!1398951) lt!1399193)))

(declare-fun b!3982165 () Bool)

(assert (=> b!3982165 (= e!2467824 (or (not (= lt!1398951 Nil!42568)) (= lt!1399193 lt!1398974)))))

(declare-fun b!3982163 () Bool)

(assert (=> b!3982163 (= e!2467825 (Cons!42568 (h!47988 lt!1398974) (++!11124 (t!331347 lt!1398974) lt!1398951)))))

(assert (= (and d!1178810 c!689833) b!3982162))

(assert (= (and d!1178810 (not c!689833)) b!3982163))

(assert (= (and d!1178810 res!1614106) b!3982164))

(assert (= (and b!3982164 res!1614107) b!3982165))

(declare-fun m!4556371 () Bool)

(assert (=> b!3982164 m!4556371))

(assert (=> b!3982164 m!4555331))

(assert (=> b!3982164 m!4556355))

(declare-fun m!4556373 () Bool)

(assert (=> d!1178810 m!4556373))

(assert (=> d!1178810 m!4556301))

(assert (=> d!1178810 m!4556359))

(declare-fun m!4556375 () Bool)

(assert (=> b!3982163 m!4556375))

(assert (=> b!3981556 d!1178810))

(declare-fun d!1178812 () Bool)

(declare-fun lt!1399194 () List!42692)

(assert (=> d!1178812 (= (++!11124 lt!1398974 lt!1399194) prefix!494)))

(declare-fun e!2467826 () List!42692)

(assert (=> d!1178812 (= lt!1399194 e!2467826)))

(declare-fun c!689834 () Bool)

(assert (=> d!1178812 (= c!689834 ((_ is Cons!42568) lt!1398974))))

(assert (=> d!1178812 (>= (size!31843 prefix!494) (size!31843 lt!1398974))))

(assert (=> d!1178812 (= (getSuffix!2240 prefix!494 lt!1398974) lt!1399194)))

(declare-fun b!3982166 () Bool)

(assert (=> b!3982166 (= e!2467826 (getSuffix!2240 (tail!6211 prefix!494) (t!331347 lt!1398974)))))

(declare-fun b!3982167 () Bool)

(assert (=> b!3982167 (= e!2467826 prefix!494)))

(assert (= (and d!1178812 c!689834) b!3982166))

(assert (= (and d!1178812 (not c!689834)) b!3982167))

(declare-fun m!4556377 () Bool)

(assert (=> d!1178812 m!4556377))

(assert (=> d!1178812 m!4555333))

(assert (=> d!1178812 m!4555331))

(declare-fun m!4556379 () Bool)

(assert (=> b!3982166 m!4556379))

(assert (=> b!3982166 m!4556379))

(declare-fun m!4556381 () Bool)

(assert (=> b!3982166 m!4556381))

(assert (=> b!3981556 d!1178812))

(declare-fun b!3982169 () Bool)

(declare-fun res!1614110 () Bool)

(declare-fun e!2467827 () Bool)

(assert (=> b!3982169 (=> (not res!1614110) (not e!2467827))))

(assert (=> b!3982169 (= res!1614110 (= (head!8479 lt!1398974) (head!8479 prefix!494)))))

(declare-fun b!3982171 () Bool)

(declare-fun e!2467828 () Bool)

(assert (=> b!3982171 (= e!2467828 (>= (size!31843 prefix!494) (size!31843 lt!1398974)))))

(declare-fun b!3982168 () Bool)

(declare-fun e!2467829 () Bool)

(assert (=> b!3982168 (= e!2467829 e!2467827)))

(declare-fun res!1614108 () Bool)

(assert (=> b!3982168 (=> (not res!1614108) (not e!2467827))))

(assert (=> b!3982168 (= res!1614108 (not ((_ is Nil!42568) prefix!494)))))

(declare-fun b!3982170 () Bool)

(assert (=> b!3982170 (= e!2467827 (isPrefix!3809 (tail!6211 lt!1398974) (tail!6211 prefix!494)))))

(declare-fun d!1178814 () Bool)

(assert (=> d!1178814 e!2467828))

(declare-fun res!1614109 () Bool)

(assert (=> d!1178814 (=> res!1614109 e!2467828)))

(declare-fun lt!1399195 () Bool)

(assert (=> d!1178814 (= res!1614109 (not lt!1399195))))

(assert (=> d!1178814 (= lt!1399195 e!2467829)))

(declare-fun res!1614111 () Bool)

(assert (=> d!1178814 (=> res!1614111 e!2467829)))

(assert (=> d!1178814 (= res!1614111 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178814 (= (isPrefix!3809 lt!1398974 prefix!494) lt!1399195)))

(assert (= (and d!1178814 (not res!1614111)) b!3982168))

(assert (= (and b!3982168 res!1614108) b!3982169))

(assert (= (and b!3982169 res!1614110) b!3982170))

(assert (= (and d!1178814 (not res!1614109)) b!3982171))

(assert (=> b!3982169 m!4555679))

(declare-fun m!4556383 () Bool)

(assert (=> b!3982169 m!4556383))

(assert (=> b!3982171 m!4555333))

(assert (=> b!3982171 m!4555331))

(assert (=> b!3982170 m!4555685))

(assert (=> b!3982170 m!4556379))

(assert (=> b!3982170 m!4555685))

(assert (=> b!3982170 m!4556379))

(declare-fun m!4556385 () Bool)

(assert (=> b!3982170 m!4556385))

(assert (=> b!3981556 d!1178814))

(declare-fun d!1178816 () Bool)

(assert (=> d!1178816 (isPrefix!3809 lt!1398974 prefix!494)))

(declare-fun lt!1399198 () Unit!61235)

(declare-fun choose!23896 (List!42692 List!42692 List!42692) Unit!61235)

(assert (=> d!1178816 (= lt!1399198 (choose!23896 prefix!494 lt!1398974 lt!1398939))))

(assert (=> d!1178816 (isPrefix!3809 prefix!494 lt!1398939)))

(assert (=> d!1178816 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!387 prefix!494 lt!1398974 lt!1398939) lt!1399198)))

(declare-fun bs!588012 () Bool)

(assert (= bs!588012 d!1178816))

(assert (=> bs!588012 m!4555357))

(declare-fun m!4556387 () Bool)

(assert (=> bs!588012 m!4556387))

(assert (=> bs!588012 m!4555425))

(assert (=> b!3981556 d!1178816))

(declare-fun b!3982174 () Bool)

(declare-fun res!1614113 () Bool)

(declare-fun e!2467830 () Bool)

(assert (=> b!3982174 (=> (not res!1614113) (not e!2467830))))

(declare-fun lt!1399199 () List!42692)

(assert (=> b!3982174 (= res!1614113 (= (size!31843 lt!1399199) (+ (size!31843 lt!1398974) (size!31843 lt!1398925))))))

(declare-fun b!3982172 () Bool)

(declare-fun e!2467831 () List!42692)

(assert (=> b!3982172 (= e!2467831 lt!1398925)))

(declare-fun d!1178818 () Bool)

(assert (=> d!1178818 e!2467830))

(declare-fun res!1614112 () Bool)

(assert (=> d!1178818 (=> (not res!1614112) (not e!2467830))))

(assert (=> d!1178818 (= res!1614112 (= (content!6452 lt!1399199) ((_ map or) (content!6452 lt!1398974) (content!6452 lt!1398925))))))

(assert (=> d!1178818 (= lt!1399199 e!2467831)))

(declare-fun c!689835 () Bool)

(assert (=> d!1178818 (= c!689835 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178818 (= (++!11124 lt!1398974 lt!1398925) lt!1399199)))

(declare-fun b!3982175 () Bool)

(assert (=> b!3982175 (= e!2467830 (or (not (= lt!1398925 Nil!42568)) (= lt!1399199 lt!1398974)))))

(declare-fun b!3982173 () Bool)

(assert (=> b!3982173 (= e!2467831 (Cons!42568 (h!47988 lt!1398974) (++!11124 (t!331347 lt!1398974) lt!1398925)))))

(assert (= (and d!1178818 c!689835) b!3982172))

(assert (= (and d!1178818 (not c!689835)) b!3982173))

(assert (= (and d!1178818 res!1614112) b!3982174))

(assert (= (and b!3982174 res!1614113) b!3982175))

(declare-fun m!4556389 () Bool)

(assert (=> b!3982174 m!4556389))

(assert (=> b!3982174 m!4555331))

(declare-fun m!4556391 () Bool)

(assert (=> b!3982174 m!4556391))

(declare-fun m!4556393 () Bool)

(assert (=> d!1178818 m!4556393))

(assert (=> d!1178818 m!4556301))

(declare-fun m!4556395 () Bool)

(assert (=> d!1178818 m!4556395))

(declare-fun m!4556397 () Bool)

(assert (=> b!3982173 m!4556397))

(assert (=> b!3981535 d!1178818))

(declare-fun d!1178820 () Bool)

(declare-fun lt!1399200 () List!42692)

(assert (=> d!1178820 (= (++!11124 lt!1398974 lt!1399200) lt!1398939)))

(declare-fun e!2467832 () List!42692)

(assert (=> d!1178820 (= lt!1399200 e!2467832)))

(declare-fun c!689836 () Bool)

(assert (=> d!1178820 (= c!689836 ((_ is Cons!42568) lt!1398974))))

(assert (=> d!1178820 (>= (size!31843 lt!1398939) (size!31843 lt!1398974))))

(assert (=> d!1178820 (= (getSuffix!2240 lt!1398939 lt!1398974) lt!1399200)))

(declare-fun b!3982176 () Bool)

(assert (=> b!3982176 (= e!2467832 (getSuffix!2240 (tail!6211 lt!1398939) (t!331347 lt!1398974)))))

(declare-fun b!3982177 () Bool)

(assert (=> b!3982177 (= e!2467832 lt!1398939)))

(assert (= (and d!1178820 c!689836) b!3982176))

(assert (= (and d!1178820 (not c!689836)) b!3982177))

(declare-fun m!4556399 () Bool)

(assert (=> d!1178820 m!4556399))

(assert (=> d!1178820 m!4555871))

(assert (=> d!1178820 m!4555331))

(assert (=> b!3982176 m!4555915))

(assert (=> b!3982176 m!4555915))

(declare-fun m!4556401 () Bool)

(assert (=> b!3982176 m!4556401))

(assert (=> b!3981535 d!1178820))

(declare-fun b!3982179 () Bool)

(declare-fun res!1614116 () Bool)

(declare-fun e!2467833 () Bool)

(assert (=> b!3982179 (=> (not res!1614116) (not e!2467833))))

(assert (=> b!3982179 (= res!1614116 (= (head!8479 lt!1398939) (head!8479 lt!1398939)))))

(declare-fun b!3982181 () Bool)

(declare-fun e!2467834 () Bool)

(assert (=> b!3982181 (= e!2467834 (>= (size!31843 lt!1398939) (size!31843 lt!1398939)))))

(declare-fun b!3982178 () Bool)

(declare-fun e!2467835 () Bool)

(assert (=> b!3982178 (= e!2467835 e!2467833)))

(declare-fun res!1614114 () Bool)

(assert (=> b!3982178 (=> (not res!1614114) (not e!2467833))))

(assert (=> b!3982178 (= res!1614114 (not ((_ is Nil!42568) lt!1398939)))))

(declare-fun b!3982180 () Bool)

(assert (=> b!3982180 (= e!2467833 (isPrefix!3809 (tail!6211 lt!1398939) (tail!6211 lt!1398939)))))

(declare-fun d!1178822 () Bool)

(assert (=> d!1178822 e!2467834))

(declare-fun res!1614115 () Bool)

(assert (=> d!1178822 (=> res!1614115 e!2467834)))

(declare-fun lt!1399201 () Bool)

(assert (=> d!1178822 (= res!1614115 (not lt!1399201))))

(assert (=> d!1178822 (= lt!1399201 e!2467835)))

(declare-fun res!1614117 () Bool)

(assert (=> d!1178822 (=> res!1614117 e!2467835)))

(assert (=> d!1178822 (= res!1614117 ((_ is Nil!42568) lt!1398939))))

(assert (=> d!1178822 (= (isPrefix!3809 lt!1398939 lt!1398939) lt!1399201)))

(assert (= (and d!1178822 (not res!1614117)) b!3982178))

(assert (= (and b!3982178 res!1614114) b!3982179))

(assert (= (and b!3982179 res!1614116) b!3982180))

(assert (= (and d!1178822 (not res!1614115)) b!3982181))

(assert (=> b!3982179 m!4555913))

(assert (=> b!3982179 m!4555913))

(assert (=> b!3982181 m!4555871))

(assert (=> b!3982181 m!4555871))

(assert (=> b!3982180 m!4555915))

(assert (=> b!3982180 m!4555915))

(assert (=> b!3982180 m!4555915))

(assert (=> b!3982180 m!4555915))

(declare-fun m!4556403 () Bool)

(assert (=> b!3982180 m!4556403))

(assert (=> b!3981535 d!1178822))

(declare-fun d!1178824 () Bool)

(assert (=> d!1178824 (isPrefix!3809 lt!1398939 lt!1398939)))

(declare-fun lt!1399204 () Unit!61235)

(declare-fun choose!23898 (List!42692 List!42692) Unit!61235)

(assert (=> d!1178824 (= lt!1399204 (choose!23898 lt!1398939 lt!1398939))))

(assert (=> d!1178824 (= (lemmaIsPrefixRefl!2401 lt!1398939 lt!1398939) lt!1399204)))

(declare-fun bs!588013 () Bool)

(assert (= bs!588013 d!1178824))

(assert (=> bs!588013 m!4555439))

(declare-fun m!4556405 () Bool)

(assert (=> bs!588013 m!4556405))

(assert (=> b!3981535 d!1178824))

(declare-fun d!1178826 () Bool)

(declare-fun lt!1399205 () Int)

(assert (=> d!1178826 (>= lt!1399205 0)))

(declare-fun e!2467836 () Int)

(assert (=> d!1178826 (= lt!1399205 e!2467836)))

(declare-fun c!689837 () Bool)

(assert (=> d!1178826 (= c!689837 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178826 (= (size!31843 lt!1398974) lt!1399205)))

(declare-fun b!3982182 () Bool)

(assert (=> b!3982182 (= e!2467836 0)))

(declare-fun b!3982183 () Bool)

(assert (=> b!3982183 (= e!2467836 (+ 1 (size!31843 (t!331347 lt!1398974))))))

(assert (= (and d!1178826 c!689837) b!3982182))

(assert (= (and d!1178826 (not c!689837)) b!3982183))

(declare-fun m!4556407 () Bool)

(assert (=> b!3982183 m!4556407))

(assert (=> b!3981536 d!1178826))

(declare-fun d!1178828 () Bool)

(declare-fun lt!1399206 () Int)

(assert (=> d!1178828 (>= lt!1399206 0)))

(declare-fun e!2467837 () Int)

(assert (=> d!1178828 (= lt!1399206 e!2467837)))

(declare-fun c!689838 () Bool)

(assert (=> d!1178828 (= c!689838 ((_ is Nil!42568) prefix!494))))

(assert (=> d!1178828 (= (size!31843 prefix!494) lt!1399206)))

(declare-fun b!3982184 () Bool)

(assert (=> b!3982184 (= e!2467837 0)))

(declare-fun b!3982185 () Bool)

(assert (=> b!3982185 (= e!2467837 (+ 1 (size!31843 (t!331347 prefix!494))))))

(assert (= (and d!1178828 c!689838) b!3982184))

(assert (= (and d!1178828 (not c!689838)) b!3982185))

(declare-fun m!4556409 () Bool)

(assert (=> b!3982185 m!4556409))

(assert (=> b!3981536 d!1178828))

(declare-fun d!1178830 () Bool)

(declare-fun list!15802 (Conc!12933) List!42692)

(assert (=> d!1178830 (= (list!15800 (charsOf!4538 token!484)) (list!15802 (c!689734 (charsOf!4538 token!484))))))

(declare-fun bs!588014 () Bool)

(assert (= bs!588014 d!1178830))

(declare-fun m!4556411 () Bool)

(assert (=> bs!588014 m!4556411))

(assert (=> b!3981536 d!1178830))

(declare-fun d!1178832 () Bool)

(declare-fun lt!1399209 () BalanceConc!25460)

(assert (=> d!1178832 (= (list!15800 lt!1399209) (originalCharacters!7322 token!484))))

(assert (=> d!1178832 (= lt!1399209 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 token!484))) (value!212211 token!484)))))

(assert (=> d!1178832 (= (charsOf!4538 token!484) lt!1399209)))

(declare-fun b_lambda!116323 () Bool)

(assert (=> (not b_lambda!116323) (not d!1178832)))

(assert (=> d!1178832 t!331371))

(declare-fun b_and!306071 () Bool)

(assert (= b_and!306063 (and (=> t!331371 result!290664) b_and!306071)))

(assert (=> d!1178832 t!331373))

(declare-fun b_and!306073 () Bool)

(assert (= b_and!306065 (and (=> t!331373 result!290668) b_and!306073)))

(declare-fun m!4556413 () Bool)

(assert (=> d!1178832 m!4556413))

(assert (=> d!1178832 m!4556251))

(assert (=> b!3981536 d!1178832))

(declare-fun b!3982186 () Bool)

(declare-fun res!1614122 () Bool)

(declare-fun e!2467840 () Bool)

(assert (=> b!3982186 (=> (not res!1614122) (not e!2467840))))

(declare-fun lt!1399213 () Option!9136)

(assert (=> b!3982186 (= res!1614122 (matchR!5604 (regex!6722 (rule!9728 (_1!24030 (get!14015 lt!1399213)))) (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399213))))))))

(declare-fun d!1178834 () Bool)

(declare-fun e!2467839 () Bool)

(assert (=> d!1178834 e!2467839))

(declare-fun res!1614120 () Bool)

(assert (=> d!1178834 (=> res!1614120 e!2467839)))

(assert (=> d!1178834 (= res!1614120 (isEmpty!25454 lt!1399213))))

(declare-fun e!2467838 () Option!9136)

(assert (=> d!1178834 (= lt!1399213 e!2467838)))

(declare-fun c!689839 () Bool)

(assert (=> d!1178834 (= c!689839 (and ((_ is Cons!42570) rules!2999) ((_ is Nil!42570) (t!331349 rules!2999))))))

(declare-fun lt!1399212 () Unit!61235)

(declare-fun lt!1399211 () Unit!61235)

(assert (=> d!1178834 (= lt!1399212 lt!1399211)))

(assert (=> d!1178834 (isPrefix!3809 lt!1398962 lt!1398962)))

(assert (=> d!1178834 (= lt!1399211 (lemmaIsPrefixRefl!2401 lt!1398962 lt!1398962))))

(assert (=> d!1178834 (rulesValidInductive!2440 thiss!21717 rules!2999)))

(assert (=> d!1178834 (= (maxPrefix!3609 thiss!21717 rules!2999 lt!1398962) lt!1399213)))

(declare-fun b!3982187 () Bool)

(declare-fun call!285740 () Option!9136)

(assert (=> b!3982187 (= e!2467838 call!285740)))

(declare-fun b!3982188 () Bool)

(declare-fun res!1614121 () Bool)

(assert (=> b!3982188 (=> (not res!1614121) (not e!2467840))))

(assert (=> b!3982188 (= res!1614121 (= (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399213)))) (originalCharacters!7322 (_1!24030 (get!14015 lt!1399213)))))))

(declare-fun b!3982189 () Bool)

(assert (=> b!3982189 (= e!2467840 (contains!8471 rules!2999 (rule!9728 (_1!24030 (get!14015 lt!1399213)))))))

(declare-fun b!3982190 () Bool)

(declare-fun res!1614124 () Bool)

(assert (=> b!3982190 (=> (not res!1614124) (not e!2467840))))

(assert (=> b!3982190 (= res!1614124 (= (value!212211 (_1!24030 (get!14015 lt!1399213))) (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (get!14015 lt!1399213)))) (seqFromList!4961 (originalCharacters!7322 (_1!24030 (get!14015 lt!1399213)))))))))

(declare-fun b!3982191 () Bool)

(assert (=> b!3982191 (= e!2467839 e!2467840)))

(declare-fun res!1614119 () Bool)

(assert (=> b!3982191 (=> (not res!1614119) (not e!2467840))))

(assert (=> b!3982191 (= res!1614119 (isDefined!7029 lt!1399213))))

(declare-fun b!3982192 () Bool)

(declare-fun res!1614123 () Bool)

(assert (=> b!3982192 (=> (not res!1614123) (not e!2467840))))

(assert (=> b!3982192 (= res!1614123 (< (size!31843 (_2!24030 (get!14015 lt!1399213))) (size!31843 lt!1398962)))))

(declare-fun b!3982193 () Bool)

(declare-fun lt!1399214 () Option!9136)

(declare-fun lt!1399210 () Option!9136)

(assert (=> b!3982193 (= e!2467838 (ite (and ((_ is None!9135) lt!1399214) ((_ is None!9135) lt!1399210)) None!9135 (ite ((_ is None!9135) lt!1399210) lt!1399214 (ite ((_ is None!9135) lt!1399214) lt!1399210 (ite (>= (size!31842 (_1!24030 (v!39483 lt!1399214))) (size!31842 (_1!24030 (v!39483 lt!1399210)))) lt!1399214 lt!1399210)))))))

(assert (=> b!3982193 (= lt!1399214 call!285740)))

(assert (=> b!3982193 (= lt!1399210 (maxPrefix!3609 thiss!21717 (t!331349 rules!2999) lt!1398962))))

(declare-fun b!3982194 () Bool)

(declare-fun res!1614118 () Bool)

(assert (=> b!3982194 (=> (not res!1614118) (not e!2467840))))

(assert (=> b!3982194 (= res!1614118 (= (++!11124 (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399213)))) (_2!24030 (get!14015 lt!1399213))) lt!1398962))))

(declare-fun bm!285735 () Bool)

(assert (=> bm!285735 (= call!285740 (maxPrefixOneRule!2643 thiss!21717 (h!47990 rules!2999) lt!1398962))))

(assert (= (and d!1178834 c!689839) b!3982187))

(assert (= (and d!1178834 (not c!689839)) b!3982193))

(assert (= (or b!3982187 b!3982193) bm!285735))

(assert (= (and d!1178834 (not res!1614120)) b!3982191))

(assert (= (and b!3982191 res!1614119) b!3982188))

(assert (= (and b!3982188 res!1614121) b!3982192))

(assert (= (and b!3982192 res!1614123) b!3982194))

(assert (= (and b!3982194 res!1614118) b!3982190))

(assert (= (and b!3982190 res!1614124) b!3982186))

(assert (= (and b!3982186 res!1614122) b!3982189))

(declare-fun m!4556415 () Bool)

(assert (=> b!3982194 m!4556415))

(declare-fun m!4556417 () Bool)

(assert (=> b!3982194 m!4556417))

(assert (=> b!3982194 m!4556417))

(declare-fun m!4556419 () Bool)

(assert (=> b!3982194 m!4556419))

(assert (=> b!3982194 m!4556419))

(declare-fun m!4556421 () Bool)

(assert (=> b!3982194 m!4556421))

(declare-fun m!4556423 () Bool)

(assert (=> bm!285735 m!4556423))

(assert (=> b!3982190 m!4556415))

(declare-fun m!4556425 () Bool)

(assert (=> b!3982190 m!4556425))

(assert (=> b!3982190 m!4556425))

(declare-fun m!4556427 () Bool)

(assert (=> b!3982190 m!4556427))

(assert (=> b!3982192 m!4556415))

(declare-fun m!4556429 () Bool)

(assert (=> b!3982192 m!4556429))

(assert (=> b!3982192 m!4555313))

(declare-fun m!4556431 () Bool)

(assert (=> b!3982191 m!4556431))

(declare-fun m!4556433 () Bool)

(assert (=> d!1178834 m!4556433))

(declare-fun m!4556435 () Bool)

(assert (=> d!1178834 m!4556435))

(declare-fun m!4556437 () Bool)

(assert (=> d!1178834 m!4556437))

(assert (=> d!1178834 m!4556187))

(assert (=> b!3982188 m!4556415))

(assert (=> b!3982188 m!4556417))

(assert (=> b!3982188 m!4556417))

(assert (=> b!3982188 m!4556419))

(declare-fun m!4556439 () Bool)

(assert (=> b!3982193 m!4556439))

(assert (=> b!3982189 m!4556415))

(declare-fun m!4556441 () Bool)

(assert (=> b!3982189 m!4556441))

(assert (=> b!3982186 m!4556415))

(assert (=> b!3982186 m!4556417))

(assert (=> b!3982186 m!4556417))

(assert (=> b!3982186 m!4556419))

(assert (=> b!3982186 m!4556419))

(declare-fun m!4556443 () Bool)

(assert (=> b!3982186 m!4556443))

(assert (=> b!3981531 d!1178834))

(declare-fun d!1178836 () Bool)

(assert (=> d!1178836 (= suffixResult!105 lt!1398925)))

(declare-fun lt!1399215 () Unit!61235)

(assert (=> d!1178836 (= lt!1399215 (choose!23888 lt!1398974 suffixResult!105 lt!1398974 lt!1398925 lt!1398939))))

(assert (=> d!1178836 (isPrefix!3809 lt!1398974 lt!1398939)))

(assert (=> d!1178836 (= (lemmaSamePrefixThenSameSuffix!1996 lt!1398974 suffixResult!105 lt!1398974 lt!1398925 lt!1398939) lt!1399215)))

(declare-fun bs!588015 () Bool)

(assert (= bs!588015 d!1178836))

(declare-fun m!4556445 () Bool)

(assert (=> bs!588015 m!4556445))

(assert (=> bs!588015 m!4555431))

(assert (=> b!3981531 d!1178836))

(declare-fun b!3982196 () Bool)

(declare-fun res!1614127 () Bool)

(declare-fun e!2467841 () Bool)

(assert (=> b!3982196 (=> (not res!1614127) (not e!2467841))))

(assert (=> b!3982196 (= res!1614127 (= (head!8479 lt!1398974) (head!8479 lt!1398922)))))

(declare-fun b!3982198 () Bool)

(declare-fun e!2467842 () Bool)

(assert (=> b!3982198 (= e!2467842 (>= (size!31843 lt!1398922) (size!31843 lt!1398974)))))

(declare-fun b!3982195 () Bool)

(declare-fun e!2467843 () Bool)

(assert (=> b!3982195 (= e!2467843 e!2467841)))

(declare-fun res!1614125 () Bool)

(assert (=> b!3982195 (=> (not res!1614125) (not e!2467841))))

(assert (=> b!3982195 (= res!1614125 (not ((_ is Nil!42568) lt!1398922)))))

(declare-fun b!3982197 () Bool)

(assert (=> b!3982197 (= e!2467841 (isPrefix!3809 (tail!6211 lt!1398974) (tail!6211 lt!1398922)))))

(declare-fun d!1178838 () Bool)

(assert (=> d!1178838 e!2467842))

(declare-fun res!1614126 () Bool)

(assert (=> d!1178838 (=> res!1614126 e!2467842)))

(declare-fun lt!1399216 () Bool)

(assert (=> d!1178838 (= res!1614126 (not lt!1399216))))

(assert (=> d!1178838 (= lt!1399216 e!2467843)))

(declare-fun res!1614128 () Bool)

(assert (=> d!1178838 (=> res!1614128 e!2467843)))

(assert (=> d!1178838 (= res!1614128 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178838 (= (isPrefix!3809 lt!1398974 lt!1398922) lt!1399216)))

(assert (= (and d!1178838 (not res!1614128)) b!3982195))

(assert (= (and b!3982195 res!1614125) b!3982196))

(assert (= (and b!3982196 res!1614127) b!3982197))

(assert (= (and d!1178838 (not res!1614126)) b!3982198))

(assert (=> b!3982196 m!4555679))

(declare-fun m!4556447 () Bool)

(assert (=> b!3982196 m!4556447))

(declare-fun m!4556449 () Bool)

(assert (=> b!3982198 m!4556449))

(assert (=> b!3982198 m!4555331))

(assert (=> b!3982197 m!4555685))

(declare-fun m!4556451 () Bool)

(assert (=> b!3982197 m!4556451))

(assert (=> b!3982197 m!4555685))

(assert (=> b!3982197 m!4556451))

(declare-fun m!4556453 () Bool)

(assert (=> b!3982197 m!4556453))

(assert (=> b!3981531 d!1178838))

(declare-fun d!1178840 () Bool)

(assert (=> d!1178840 (isPrefix!3809 lt!1398974 (++!11124 lt!1398974 lt!1398925))))

(declare-fun lt!1399217 () Unit!61235)

(assert (=> d!1178840 (= lt!1399217 (choose!23889 lt!1398974 lt!1398925))))

(assert (=> d!1178840 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398974 lt!1398925) lt!1399217)))

(declare-fun bs!588016 () Bool)

(assert (= bs!588016 d!1178840))

(assert (=> bs!588016 m!4555435))

(assert (=> bs!588016 m!4555435))

(declare-fun m!4556455 () Bool)

(assert (=> bs!588016 m!4556455))

(declare-fun m!4556457 () Bool)

(assert (=> bs!588016 m!4556457))

(assert (=> b!3981531 d!1178840))

(declare-fun b!3982201 () Bool)

(declare-fun res!1614130 () Bool)

(declare-fun e!2467844 () Bool)

(assert (=> b!3982201 (=> (not res!1614130) (not e!2467844))))

(declare-fun lt!1399218 () List!42692)

(assert (=> b!3982201 (= res!1614130 (= (size!31843 lt!1399218) (+ (size!31843 newSuffix!27) (size!31843 lt!1398955))))))

(declare-fun b!3982199 () Bool)

(declare-fun e!2467845 () List!42692)

(assert (=> b!3982199 (= e!2467845 lt!1398955)))

(declare-fun d!1178842 () Bool)

(assert (=> d!1178842 e!2467844))

(declare-fun res!1614129 () Bool)

(assert (=> d!1178842 (=> (not res!1614129) (not e!2467844))))

(assert (=> d!1178842 (= res!1614129 (= (content!6452 lt!1399218) ((_ map or) (content!6452 newSuffix!27) (content!6452 lt!1398955))))))

(assert (=> d!1178842 (= lt!1399218 e!2467845)))

(declare-fun c!689840 () Bool)

(assert (=> d!1178842 (= c!689840 ((_ is Nil!42568) newSuffix!27))))

(assert (=> d!1178842 (= (++!11124 newSuffix!27 lt!1398955) lt!1399218)))

(declare-fun b!3982202 () Bool)

(assert (=> b!3982202 (= e!2467844 (or (not (= lt!1398955 Nil!42568)) (= lt!1399218 newSuffix!27)))))

(declare-fun b!3982200 () Bool)

(assert (=> b!3982200 (= e!2467845 (Cons!42568 (h!47988 newSuffix!27) (++!11124 (t!331347 newSuffix!27) lt!1398955)))))

(assert (= (and d!1178842 c!689840) b!3982199))

(assert (= (and d!1178842 (not c!689840)) b!3982200))

(assert (= (and d!1178842 res!1614129) b!3982201))

(assert (= (and b!3982201 res!1614130) b!3982202))

(declare-fun m!4556459 () Bool)

(assert (=> b!3982201 m!4556459))

(assert (=> b!3982201 m!4555341))

(assert (=> b!3982201 m!4555509))

(declare-fun m!4556461 () Bool)

(assert (=> d!1178842 m!4556461))

(assert (=> d!1178842 m!4556315))

(assert (=> d!1178842 m!4555515))

(declare-fun m!4556463 () Bool)

(assert (=> b!3982200 m!4556463))

(assert (=> b!3981532 d!1178842))

(declare-fun d!1178844 () Bool)

(declare-fun lt!1399219 () List!42692)

(assert (=> d!1178844 (= (++!11124 newSuffix!27 lt!1399219) suffix!1299)))

(declare-fun e!2467846 () List!42692)

(assert (=> d!1178844 (= lt!1399219 e!2467846)))

(declare-fun c!689841 () Bool)

(assert (=> d!1178844 (= c!689841 ((_ is Cons!42568) newSuffix!27))))

(assert (=> d!1178844 (>= (size!31843 suffix!1299) (size!31843 newSuffix!27))))

(assert (=> d!1178844 (= (getSuffix!2240 suffix!1299 newSuffix!27) lt!1399219)))

(declare-fun b!3982203 () Bool)

(assert (=> b!3982203 (= e!2467846 (getSuffix!2240 (tail!6211 suffix!1299) (t!331347 newSuffix!27)))))

(declare-fun b!3982204 () Bool)

(assert (=> b!3982204 (= e!2467846 suffix!1299)))

(assert (= (and d!1178844 c!689841) b!3982203))

(assert (= (and d!1178844 (not c!689841)) b!3982204))

(declare-fun m!4556465 () Bool)

(assert (=> d!1178844 m!4556465))

(assert (=> d!1178844 m!4555339))

(assert (=> d!1178844 m!4555341))

(assert (=> b!3982203 m!4555661))

(assert (=> b!3982203 m!4555661))

(declare-fun m!4556467 () Bool)

(assert (=> b!3982203 m!4556467))

(assert (=> b!3981532 d!1178844))

(declare-fun b!3982206 () Bool)

(declare-fun res!1614133 () Bool)

(declare-fun e!2467847 () Bool)

(assert (=> b!3982206 (=> (not res!1614133) (not e!2467847))))

(assert (=> b!3982206 (= res!1614133 (= (head!8479 lt!1398974) (head!8479 lt!1398939)))))

(declare-fun b!3982208 () Bool)

(declare-fun e!2467848 () Bool)

(assert (=> b!3982208 (= e!2467848 (>= (size!31843 lt!1398939) (size!31843 lt!1398974)))))

(declare-fun b!3982205 () Bool)

(declare-fun e!2467849 () Bool)

(assert (=> b!3982205 (= e!2467849 e!2467847)))

(declare-fun res!1614131 () Bool)

(assert (=> b!3982205 (=> (not res!1614131) (not e!2467847))))

(assert (=> b!3982205 (= res!1614131 (not ((_ is Nil!42568) lt!1398939)))))

(declare-fun b!3982207 () Bool)

(assert (=> b!3982207 (= e!2467847 (isPrefix!3809 (tail!6211 lt!1398974) (tail!6211 lt!1398939)))))

(declare-fun d!1178846 () Bool)

(assert (=> d!1178846 e!2467848))

(declare-fun res!1614132 () Bool)

(assert (=> d!1178846 (=> res!1614132 e!2467848)))

(declare-fun lt!1399220 () Bool)

(assert (=> d!1178846 (= res!1614132 (not lt!1399220))))

(assert (=> d!1178846 (= lt!1399220 e!2467849)))

(declare-fun res!1614134 () Bool)

(assert (=> d!1178846 (=> res!1614134 e!2467849)))

(assert (=> d!1178846 (= res!1614134 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178846 (= (isPrefix!3809 lt!1398974 lt!1398939) lt!1399220)))

(assert (= (and d!1178846 (not res!1614134)) b!3982205))

(assert (= (and b!3982205 res!1614131) b!3982206))

(assert (= (and b!3982206 res!1614133) b!3982207))

(assert (= (and d!1178846 (not res!1614132)) b!3982208))

(assert (=> b!3982206 m!4555679))

(assert (=> b!3982206 m!4555913))

(assert (=> b!3982208 m!4555871))

(assert (=> b!3982208 m!4555331))

(assert (=> b!3982207 m!4555685))

(assert (=> b!3982207 m!4555915))

(assert (=> b!3982207 m!4555685))

(assert (=> b!3982207 m!4555915))

(declare-fun m!4556469 () Bool)

(assert (=> b!3982207 m!4556469))

(assert (=> b!3981554 d!1178846))

(declare-fun b!3982210 () Bool)

(declare-fun res!1614137 () Bool)

(declare-fun e!2467850 () Bool)

(assert (=> b!3982210 (=> (not res!1614137) (not e!2467850))))

(assert (=> b!3982210 (= res!1614137 (= (head!8479 lt!1398974) (head!8479 lt!1398926)))))

(declare-fun b!3982212 () Bool)

(declare-fun e!2467851 () Bool)

(assert (=> b!3982212 (= e!2467851 (>= (size!31843 lt!1398926) (size!31843 lt!1398974)))))

(declare-fun b!3982209 () Bool)

(declare-fun e!2467852 () Bool)

(assert (=> b!3982209 (= e!2467852 e!2467850)))

(declare-fun res!1614135 () Bool)

(assert (=> b!3982209 (=> (not res!1614135) (not e!2467850))))

(assert (=> b!3982209 (= res!1614135 (not ((_ is Nil!42568) lt!1398926)))))

(declare-fun b!3982211 () Bool)

(assert (=> b!3982211 (= e!2467850 (isPrefix!3809 (tail!6211 lt!1398974) (tail!6211 lt!1398926)))))

(declare-fun d!1178848 () Bool)

(assert (=> d!1178848 e!2467851))

(declare-fun res!1614136 () Bool)

(assert (=> d!1178848 (=> res!1614136 e!2467851)))

(declare-fun lt!1399221 () Bool)

(assert (=> d!1178848 (= res!1614136 (not lt!1399221))))

(assert (=> d!1178848 (= lt!1399221 e!2467852)))

(declare-fun res!1614138 () Bool)

(assert (=> d!1178848 (=> res!1614138 e!2467852)))

(assert (=> d!1178848 (= res!1614138 ((_ is Nil!42568) lt!1398974))))

(assert (=> d!1178848 (= (isPrefix!3809 lt!1398974 lt!1398926) lt!1399221)))

(assert (= (and d!1178848 (not res!1614138)) b!3982209))

(assert (= (and b!3982209 res!1614135) b!3982210))

(assert (= (and b!3982210 res!1614137) b!3982211))

(assert (= (and d!1178848 (not res!1614136)) b!3982212))

(assert (=> b!3982210 m!4555679))

(declare-fun m!4556471 () Bool)

(assert (=> b!3982210 m!4556471))

(declare-fun m!4556473 () Bool)

(assert (=> b!3982212 m!4556473))

(assert (=> b!3982212 m!4555331))

(assert (=> b!3982211 m!4555685))

(declare-fun m!4556475 () Bool)

(assert (=> b!3982211 m!4556475))

(assert (=> b!3982211 m!4555685))

(assert (=> b!3982211 m!4556475))

(declare-fun m!4556477 () Bool)

(assert (=> b!3982211 m!4556477))

(assert (=> b!3981554 d!1178848))

(declare-fun d!1178850 () Bool)

(assert (=> d!1178850 (isPrefix!3809 lt!1398974 (++!11124 lt!1398974 suffixResult!105))))

(declare-fun lt!1399222 () Unit!61235)

(assert (=> d!1178850 (= lt!1399222 (choose!23889 lt!1398974 suffixResult!105))))

(assert (=> d!1178850 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398974 suffixResult!105) lt!1399222)))

(declare-fun bs!588017 () Bool)

(assert (= bs!588017 d!1178850))

(assert (=> bs!588017 m!4555443))

(assert (=> bs!588017 m!4555443))

(declare-fun m!4556479 () Bool)

(assert (=> bs!588017 m!4556479))

(declare-fun m!4556481 () Bool)

(assert (=> bs!588017 m!4556481))

(assert (=> b!3981554 d!1178850))

(declare-fun b!3982214 () Bool)

(declare-fun res!1614141 () Bool)

(declare-fun e!2467853 () Bool)

(assert (=> b!3982214 (=> (not res!1614141) (not e!2467853))))

(assert (=> b!3982214 (= res!1614141 (= (head!8479 prefix!494) (head!8479 lt!1398939)))))

(declare-fun b!3982216 () Bool)

(declare-fun e!2467854 () Bool)

(assert (=> b!3982216 (= e!2467854 (>= (size!31843 lt!1398939) (size!31843 prefix!494)))))

(declare-fun b!3982213 () Bool)

(declare-fun e!2467855 () Bool)

(assert (=> b!3982213 (= e!2467855 e!2467853)))

(declare-fun res!1614139 () Bool)

(assert (=> b!3982213 (=> (not res!1614139) (not e!2467853))))

(assert (=> b!3982213 (= res!1614139 (not ((_ is Nil!42568) lt!1398939)))))

(declare-fun b!3982215 () Bool)

(assert (=> b!3982215 (= e!2467853 (isPrefix!3809 (tail!6211 prefix!494) (tail!6211 lt!1398939)))))

(declare-fun d!1178852 () Bool)

(assert (=> d!1178852 e!2467854))

(declare-fun res!1614140 () Bool)

(assert (=> d!1178852 (=> res!1614140 e!2467854)))

(declare-fun lt!1399223 () Bool)

(assert (=> d!1178852 (= res!1614140 (not lt!1399223))))

(assert (=> d!1178852 (= lt!1399223 e!2467855)))

(declare-fun res!1614142 () Bool)

(assert (=> d!1178852 (=> res!1614142 e!2467855)))

(assert (=> d!1178852 (= res!1614142 ((_ is Nil!42568) prefix!494))))

(assert (=> d!1178852 (= (isPrefix!3809 prefix!494 lt!1398939) lt!1399223)))

(assert (= (and d!1178852 (not res!1614142)) b!3982213))

(assert (= (and b!3982213 res!1614139) b!3982214))

(assert (= (and b!3982214 res!1614141) b!3982215))

(assert (= (and d!1178852 (not res!1614140)) b!3982216))

(assert (=> b!3982214 m!4556383))

(assert (=> b!3982214 m!4555913))

(assert (=> b!3982216 m!4555871))

(assert (=> b!3982216 m!4555333))

(assert (=> b!3982215 m!4556379))

(assert (=> b!3982215 m!4555915))

(assert (=> b!3982215 m!4556379))

(assert (=> b!3982215 m!4555915))

(declare-fun m!4556483 () Bool)

(assert (=> b!3982215 m!4556483))

(assert (=> b!3981554 d!1178852))

(declare-fun d!1178854 () Bool)

(assert (=> d!1178854 (isPrefix!3809 prefix!494 (++!11124 prefix!494 suffix!1299))))

(declare-fun lt!1399224 () Unit!61235)

(assert (=> d!1178854 (= lt!1399224 (choose!23889 prefix!494 suffix!1299))))

(assert (=> d!1178854 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 prefix!494 suffix!1299) lt!1399224)))

(declare-fun bs!588018 () Bool)

(assert (= bs!588018 d!1178854))

(assert (=> bs!588018 m!4555465))

(assert (=> bs!588018 m!4555465))

(declare-fun m!4556485 () Bool)

(assert (=> bs!588018 m!4556485))

(declare-fun m!4556487 () Bool)

(assert (=> bs!588018 m!4556487))

(assert (=> b!3981554 d!1178854))

(declare-fun d!1178856 () Bool)

(assert (=> d!1178856 (= (maxPrefixOneRule!2643 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))) lt!1398962) (Some!9135 (tuple2!41793 (Token!12583 (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (seqFromList!4961 lt!1398942)) (rule!9728 (_1!24030 (v!39483 lt!1398947))) (size!31843 lt!1398942) lt!1398942) (_2!24030 (v!39483 lt!1398947)))))))

(declare-fun lt!1399225 () Unit!61235)

(assert (=> d!1178856 (= lt!1399225 (choose!23892 thiss!21717 rules!2999 lt!1398942 lt!1398962 (_2!24030 (v!39483 lt!1398947)) (rule!9728 (_1!24030 (v!39483 lt!1398947)))))))

(assert (=> d!1178856 (not (isEmpty!25450 rules!2999))))

(assert (=> d!1178856 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1465 thiss!21717 rules!2999 lt!1398942 lt!1398962 (_2!24030 (v!39483 lt!1398947)) (rule!9728 (_1!24030 (v!39483 lt!1398947)))) lt!1399225)))

(declare-fun bs!588019 () Bool)

(assert (= bs!588019 d!1178856))

(assert (=> bs!588019 m!4555397))

(assert (=> bs!588019 m!4555401))

(assert (=> bs!588019 m!4555413))

(declare-fun m!4556489 () Bool)

(assert (=> bs!588019 m!4556489))

(assert (=> bs!588019 m!4555419))

(assert (=> bs!588019 m!4555401))

(assert (=> bs!588019 m!4555405))

(assert (=> b!3981533 d!1178856))

(declare-fun b!3982217 () Bool)

(declare-fun e!2467859 () Bool)

(declare-fun lt!1399227 () Option!9136)

(assert (=> b!3982217 (= e!2467859 (= (size!31842 (_1!24030 (get!14015 lt!1399227))) (size!31843 (originalCharacters!7322 (_1!24030 (get!14015 lt!1399227))))))))

(declare-fun b!3982218 () Bool)

(declare-fun res!1614145 () Bool)

(assert (=> b!3982218 (=> (not res!1614145) (not e!2467859))))

(assert (=> b!3982218 (= res!1614145 (= (value!212211 (_1!24030 (get!14015 lt!1399227))) (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (get!14015 lt!1399227)))) (seqFromList!4961 (originalCharacters!7322 (_1!24030 (get!14015 lt!1399227)))))))))

(declare-fun b!3982219 () Bool)

(declare-fun e!2467857 () Bool)

(assert (=> b!3982219 (= e!2467857 (matchR!5604 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (_1!24032 (findLongestMatchInner!1322 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) Nil!42568 (size!31843 Nil!42568) lt!1398962 lt!1398962 (size!31843 lt!1398962)))))))

(declare-fun b!3982220 () Bool)

(declare-fun res!1614144 () Bool)

(assert (=> b!3982220 (=> (not res!1614144) (not e!2467859))))

(assert (=> b!3982220 (= res!1614144 (= (rule!9728 (_1!24030 (get!14015 lt!1399227))) (rule!9728 (_1!24030 (v!39483 lt!1398947)))))))

(declare-fun b!3982221 () Bool)

(declare-fun res!1614149 () Bool)

(assert (=> b!3982221 (=> (not res!1614149) (not e!2467859))))

(assert (=> b!3982221 (= res!1614149 (< (size!31843 (_2!24030 (get!14015 lt!1399227))) (size!31843 lt!1398962)))))

(declare-fun b!3982222 () Bool)

(declare-fun e!2467858 () Option!9136)

(declare-fun lt!1399229 () tuple2!41796)

(assert (=> b!3982222 (= e!2467858 (Some!9135 (tuple2!41793 (Token!12583 (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (seqFromList!4961 (_1!24032 lt!1399229))) (rule!9728 (_1!24030 (v!39483 lt!1398947))) (size!31845 (seqFromList!4961 (_1!24032 lt!1399229))) (_1!24032 lt!1399229)) (_2!24032 lt!1399229))))))

(declare-fun lt!1399230 () Unit!61235)

(assert (=> b!3982222 (= lt!1399230 (longestMatchIsAcceptedByMatchOrIsEmpty!1295 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) lt!1398962))))

(declare-fun res!1614147 () Bool)

(assert (=> b!3982222 (= res!1614147 (isEmpty!25453 (_1!24032 (findLongestMatchInner!1322 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) Nil!42568 (size!31843 Nil!42568) lt!1398962 lt!1398962 (size!31843 lt!1398962)))))))

(assert (=> b!3982222 (=> res!1614147 e!2467857)))

(assert (=> b!3982222 e!2467857))

(declare-fun lt!1399228 () Unit!61235)

(assert (=> b!3982222 (= lt!1399228 lt!1399230)))

(declare-fun lt!1399226 () Unit!61235)

(assert (=> b!3982222 (= lt!1399226 (lemmaSemiInverse!1834 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (seqFromList!4961 (_1!24032 lt!1399229))))))

(declare-fun b!3982223 () Bool)

(declare-fun res!1614148 () Bool)

(assert (=> b!3982223 (=> (not res!1614148) (not e!2467859))))

(assert (=> b!3982223 (= res!1614148 (= (++!11124 (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399227)))) (_2!24030 (get!14015 lt!1399227))) lt!1398962))))

(declare-fun b!3982224 () Bool)

(declare-fun e!2467856 () Bool)

(assert (=> b!3982224 (= e!2467856 e!2467859)))

(declare-fun res!1614146 () Bool)

(assert (=> b!3982224 (=> (not res!1614146) (not e!2467859))))

(assert (=> b!3982224 (= res!1614146 (matchR!5604 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (list!15800 (charsOf!4538 (_1!24030 (get!14015 lt!1399227))))))))

(declare-fun d!1178858 () Bool)

(assert (=> d!1178858 e!2467856))

(declare-fun res!1614143 () Bool)

(assert (=> d!1178858 (=> res!1614143 e!2467856)))

(assert (=> d!1178858 (= res!1614143 (isEmpty!25454 lt!1399227))))

(assert (=> d!1178858 (= lt!1399227 e!2467858)))

(declare-fun c!689842 () Bool)

(assert (=> d!1178858 (= c!689842 (isEmpty!25453 (_1!24032 lt!1399229)))))

(assert (=> d!1178858 (= lt!1399229 (findLongestMatch!1235 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) lt!1398962))))

(assert (=> d!1178858 (ruleValid!2654 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))))))

(assert (=> d!1178858 (= (maxPrefixOneRule!2643 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))) lt!1398962) lt!1399227)))

(declare-fun b!3982225 () Bool)

(assert (=> b!3982225 (= e!2467858 None!9135)))

(assert (= (and d!1178858 c!689842) b!3982225))

(assert (= (and d!1178858 (not c!689842)) b!3982222))

(assert (= (and b!3982222 (not res!1614147)) b!3982219))

(assert (= (and d!1178858 (not res!1614143)) b!3982224))

(assert (= (and b!3982224 res!1614146) b!3982223))

(assert (= (and b!3982223 res!1614148) b!3982221))

(assert (= (and b!3982221 res!1614149) b!3982220))

(assert (= (and b!3982220 res!1614144) b!3982218))

(assert (= (and b!3982218 res!1614145) b!3982217))

(assert (=> b!3982222 m!4555869))

(assert (=> b!3982222 m!4555313))

(declare-fun m!4556491 () Bool)

(assert (=> b!3982222 m!4556491))

(assert (=> b!3982222 m!4555313))

(declare-fun m!4556493 () Bool)

(assert (=> b!3982222 m!4556493))

(assert (=> b!3982222 m!4556493))

(declare-fun m!4556495 () Bool)

(assert (=> b!3982222 m!4556495))

(declare-fun m!4556497 () Bool)

(assert (=> b!3982222 m!4556497))

(assert (=> b!3982222 m!4556493))

(declare-fun m!4556499 () Bool)

(assert (=> b!3982222 m!4556499))

(assert (=> b!3982222 m!4556493))

(declare-fun m!4556501 () Bool)

(assert (=> b!3982222 m!4556501))

(assert (=> b!3982222 m!4555869))

(declare-fun m!4556503 () Bool)

(assert (=> b!3982222 m!4556503))

(declare-fun m!4556505 () Bool)

(assert (=> b!3982218 m!4556505))

(declare-fun m!4556507 () Bool)

(assert (=> b!3982218 m!4556507))

(assert (=> b!3982218 m!4556507))

(declare-fun m!4556509 () Bool)

(assert (=> b!3982218 m!4556509))

(assert (=> b!3982217 m!4556505))

(declare-fun m!4556511 () Bool)

(assert (=> b!3982217 m!4556511))

(declare-fun m!4556513 () Bool)

(assert (=> d!1178858 m!4556513))

(declare-fun m!4556515 () Bool)

(assert (=> d!1178858 m!4556515))

(declare-fun m!4556517 () Bool)

(assert (=> d!1178858 m!4556517))

(assert (=> d!1178858 m!4555415))

(assert (=> b!3982224 m!4556505))

(declare-fun m!4556519 () Bool)

(assert (=> b!3982224 m!4556519))

(assert (=> b!3982224 m!4556519))

(declare-fun m!4556521 () Bool)

(assert (=> b!3982224 m!4556521))

(assert (=> b!3982224 m!4556521))

(declare-fun m!4556523 () Bool)

(assert (=> b!3982224 m!4556523))

(assert (=> b!3982220 m!4556505))

(assert (=> b!3982221 m!4556505))

(declare-fun m!4556525 () Bool)

(assert (=> b!3982221 m!4556525))

(assert (=> b!3982221 m!4555313))

(assert (=> b!3982223 m!4556505))

(assert (=> b!3982223 m!4556519))

(assert (=> b!3982223 m!4556519))

(assert (=> b!3982223 m!4556521))

(assert (=> b!3982223 m!4556521))

(declare-fun m!4556527 () Bool)

(assert (=> b!3982223 m!4556527))

(assert (=> b!3982219 m!4555869))

(assert (=> b!3982219 m!4555313))

(assert (=> b!3982219 m!4555869))

(assert (=> b!3982219 m!4555313))

(assert (=> b!3982219 m!4556491))

(declare-fun m!4556529 () Bool)

(assert (=> b!3982219 m!4556529))

(assert (=> b!3981533 d!1178858))

(declare-fun d!1178860 () Bool)

(assert (=> d!1178860 (= (size!31842 token!484) (size!31843 (originalCharacters!7322 token!484)))))

(declare-fun Unit!61243 () Unit!61235)

(assert (=> d!1178860 (= (lemmaCharactersSize!1317 token!484) Unit!61243)))

(declare-fun bs!588020 () Bool)

(assert (= bs!588020 d!1178860))

(assert (=> bs!588020 m!4555343))

(assert (=> b!3981533 d!1178860))

(declare-fun b!3982228 () Bool)

(declare-fun res!1614151 () Bool)

(declare-fun e!2467860 () Bool)

(assert (=> b!3982228 (=> (not res!1614151) (not e!2467860))))

(declare-fun lt!1399231 () List!42692)

(assert (=> b!3982228 (= res!1614151 (= (size!31843 lt!1399231) (+ (size!31843 lt!1398942) (size!31843 newSuffixResult!27))))))

(declare-fun b!3982226 () Bool)

(declare-fun e!2467861 () List!42692)

(assert (=> b!3982226 (= e!2467861 newSuffixResult!27)))

(declare-fun d!1178862 () Bool)

(assert (=> d!1178862 e!2467860))

(declare-fun res!1614150 () Bool)

(assert (=> d!1178862 (=> (not res!1614150) (not e!2467860))))

(assert (=> d!1178862 (= res!1614150 (= (content!6452 lt!1399231) ((_ map or) (content!6452 lt!1398942) (content!6452 newSuffixResult!27))))))

(assert (=> d!1178862 (= lt!1399231 e!2467861)))

(declare-fun c!689843 () Bool)

(assert (=> d!1178862 (= c!689843 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178862 (= (++!11124 lt!1398942 newSuffixResult!27) lt!1399231)))

(declare-fun b!3982229 () Bool)

(assert (=> b!3982229 (= e!2467860 (or (not (= newSuffixResult!27 Nil!42568)) (= lt!1399231 lt!1398942)))))

(declare-fun b!3982227 () Bool)

(assert (=> b!3982227 (= e!2467861 (Cons!42568 (h!47988 lt!1398942) (++!11124 (t!331347 lt!1398942) newSuffixResult!27)))))

(assert (= (and d!1178862 c!689843) b!3982226))

(assert (= (and d!1178862 (not c!689843)) b!3982227))

(assert (= (and d!1178862 res!1614150) b!3982228))

(assert (= (and b!3982228 res!1614151) b!3982229))

(declare-fun m!4556531 () Bool)

(assert (=> b!3982228 m!4556531))

(assert (=> b!3982228 m!4555405))

(assert (=> b!3982228 m!4556321))

(declare-fun m!4556533 () Bool)

(assert (=> d!1178862 m!4556533))

(assert (=> d!1178862 m!4555483))

(assert (=> d!1178862 m!4556325))

(declare-fun m!4556535 () Bool)

(assert (=> b!3982227 m!4556535))

(assert (=> b!3981533 d!1178862))

(declare-fun d!1178864 () Bool)

(declare-fun lt!1399232 () BalanceConc!25460)

(assert (=> d!1178864 (= (list!15800 lt!1399232) (originalCharacters!7322 (_1!24030 (v!39483 lt!1398947))))))

(assert (=> d!1178864 (= lt!1399232 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (value!212211 (_1!24030 (v!39483 lt!1398947)))))))

(assert (=> d!1178864 (= (charsOf!4538 (_1!24030 (v!39483 lt!1398947))) lt!1399232)))

(declare-fun b_lambda!116325 () Bool)

(assert (=> (not b_lambda!116325) (not d!1178864)))

(declare-fun tb!239949 () Bool)

(declare-fun t!331384 () Bool)

(assert (=> (and b!3981547 (= (toChars!9069 (transformation!6722 (h!47990 rules!2999))) (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))) t!331384) tb!239949))

(declare-fun b!3982230 () Bool)

(declare-fun e!2467862 () Bool)

(declare-fun tp!1213750 () Bool)

(assert (=> b!3982230 (= e!2467862 (and (inv!56870 (c!689734 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (value!212211 (_1!24030 (v!39483 lt!1398947)))))) tp!1213750))))

(declare-fun result!290684 () Bool)

(assert (=> tb!239949 (= result!290684 (and (inv!56871 (dynLambda!18109 (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (value!212211 (_1!24030 (v!39483 lt!1398947))))) e!2467862))))

(assert (= tb!239949 b!3982230))

(declare-fun m!4556537 () Bool)

(assert (=> b!3982230 m!4556537))

(declare-fun m!4556539 () Bool)

(assert (=> tb!239949 m!4556539))

(assert (=> d!1178864 t!331384))

(declare-fun b_and!306075 () Bool)

(assert (= b_and!306071 (and (=> t!331384 result!290684) b_and!306075)))

(declare-fun tb!239951 () Bool)

(declare-fun t!331386 () Bool)

(assert (=> (and b!3981537 (= (toChars!9069 (transformation!6722 (rule!9728 token!484))) (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))) t!331386) tb!239951))

(declare-fun result!290686 () Bool)

(assert (= result!290686 result!290684))

(assert (=> d!1178864 t!331386))

(declare-fun b_and!306077 () Bool)

(assert (= b_and!306073 (and (=> t!331386 result!290686) b_and!306077)))

(declare-fun m!4556541 () Bool)

(assert (=> d!1178864 m!4556541))

(declare-fun m!4556543 () Bool)

(assert (=> d!1178864 m!4556543))

(assert (=> b!3981533 d!1178864))

(declare-fun b!3982232 () Bool)

(declare-fun res!1614154 () Bool)

(declare-fun e!2467863 () Bool)

(assert (=> b!3982232 (=> (not res!1614154) (not e!2467863))))

(assert (=> b!3982232 (= res!1614154 (= (head!8479 lt!1398942) (head!8479 lt!1398940)))))

(declare-fun b!3982234 () Bool)

(declare-fun e!2467864 () Bool)

(assert (=> b!3982234 (= e!2467864 (>= (size!31843 lt!1398940) (size!31843 lt!1398942)))))

(declare-fun b!3982231 () Bool)

(declare-fun e!2467865 () Bool)

(assert (=> b!3982231 (= e!2467865 e!2467863)))

(declare-fun res!1614152 () Bool)

(assert (=> b!3982231 (=> (not res!1614152) (not e!2467863))))

(assert (=> b!3982231 (= res!1614152 (not ((_ is Nil!42568) lt!1398940)))))

(declare-fun b!3982233 () Bool)

(assert (=> b!3982233 (= e!2467863 (isPrefix!3809 (tail!6211 lt!1398942) (tail!6211 lt!1398940)))))

(declare-fun d!1178866 () Bool)

(assert (=> d!1178866 e!2467864))

(declare-fun res!1614153 () Bool)

(assert (=> d!1178866 (=> res!1614153 e!2467864)))

(declare-fun lt!1399233 () Bool)

(assert (=> d!1178866 (= res!1614153 (not lt!1399233))))

(assert (=> d!1178866 (= lt!1399233 e!2467865)))

(declare-fun res!1614155 () Bool)

(assert (=> d!1178866 (=> res!1614155 e!2467865)))

(assert (=> d!1178866 (= res!1614155 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178866 (= (isPrefix!3809 lt!1398942 lt!1398940) lt!1399233)))

(assert (= (and d!1178866 (not res!1614155)) b!3982231))

(assert (= (and b!3982231 res!1614152) b!3982232))

(assert (= (and b!3982232 res!1614154) b!3982233))

(assert (= (and d!1178866 (not res!1614153)) b!3982234))

(assert (=> b!3982232 m!4555639))

(declare-fun m!4556545 () Bool)

(assert (=> b!3982232 m!4556545))

(declare-fun m!4556547 () Bool)

(assert (=> b!3982234 m!4556547))

(assert (=> b!3982234 m!4555405))

(assert (=> b!3982233 m!4555645))

(declare-fun m!4556549 () Bool)

(assert (=> b!3982233 m!4556549))

(assert (=> b!3982233 m!4555645))

(assert (=> b!3982233 m!4556549))

(declare-fun m!4556551 () Bool)

(assert (=> b!3982233 m!4556551))

(assert (=> b!3981533 d!1178866))

(declare-fun d!1178868 () Bool)

(assert (=> d!1178868 (= (size!31842 (_1!24030 (v!39483 lt!1398947))) (size!31843 (originalCharacters!7322 (_1!24030 (v!39483 lt!1398947)))))))

(declare-fun Unit!61244 () Unit!61235)

(assert (=> d!1178868 (= (lemmaCharactersSize!1317 (_1!24030 (v!39483 lt!1398947))) Unit!61244)))

(declare-fun bs!588021 () Bool)

(assert (= bs!588021 d!1178868))

(declare-fun m!4556553 () Bool)

(assert (=> bs!588021 m!4556553))

(assert (=> b!3981533 d!1178868))

(declare-fun d!1178870 () Bool)

(assert (=> d!1178870 (isPrefix!3809 lt!1398942 (++!11124 lt!1398942 newSuffixResult!27))))

(declare-fun lt!1399234 () Unit!61235)

(assert (=> d!1178870 (= lt!1399234 (choose!23889 lt!1398942 newSuffixResult!27))))

(assert (=> d!1178870 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398942 newSuffixResult!27) lt!1399234)))

(declare-fun bs!588022 () Bool)

(assert (= bs!588022 d!1178870))

(assert (=> bs!588022 m!4555385))

(assert (=> bs!588022 m!4555385))

(assert (=> bs!588022 m!4555387))

(declare-fun m!4556555 () Bool)

(assert (=> bs!588022 m!4556555))

(assert (=> b!3981533 d!1178870))

(declare-fun b!3982237 () Bool)

(declare-fun res!1614157 () Bool)

(declare-fun e!2467866 () Bool)

(assert (=> b!3982237 (=> (not res!1614157) (not e!2467866))))

(declare-fun lt!1399235 () List!42692)

(assert (=> b!3982237 (= res!1614157 (= (size!31843 lt!1399235) (+ (size!31843 lt!1398942) (size!31843 (_2!24030 (v!39483 lt!1398947))))))))

(declare-fun b!3982235 () Bool)

(declare-fun e!2467867 () List!42692)

(assert (=> b!3982235 (= e!2467867 (_2!24030 (v!39483 lt!1398947)))))

(declare-fun d!1178872 () Bool)

(assert (=> d!1178872 e!2467866))

(declare-fun res!1614156 () Bool)

(assert (=> d!1178872 (=> (not res!1614156) (not e!2467866))))

(assert (=> d!1178872 (= res!1614156 (= (content!6452 lt!1399235) ((_ map or) (content!6452 lt!1398942) (content!6452 (_2!24030 (v!39483 lt!1398947))))))))

(assert (=> d!1178872 (= lt!1399235 e!2467867)))

(declare-fun c!689844 () Bool)

(assert (=> d!1178872 (= c!689844 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178872 (= (++!11124 lt!1398942 (_2!24030 (v!39483 lt!1398947))) lt!1399235)))

(declare-fun b!3982238 () Bool)

(assert (=> b!3982238 (= e!2467866 (or (not (= (_2!24030 (v!39483 lt!1398947)) Nil!42568)) (= lt!1399235 lt!1398942)))))

(declare-fun b!3982236 () Bool)

(assert (=> b!3982236 (= e!2467867 (Cons!42568 (h!47988 lt!1398942) (++!11124 (t!331347 lt!1398942) (_2!24030 (v!39483 lt!1398947)))))))

(assert (= (and d!1178872 c!689844) b!3982235))

(assert (= (and d!1178872 (not c!689844)) b!3982236))

(assert (= (and d!1178872 res!1614156) b!3982237))

(assert (= (and b!3982237 res!1614157) b!3982238))

(declare-fun m!4556557 () Bool)

(assert (=> b!3982237 m!4556557))

(assert (=> b!3982237 m!4555405))

(declare-fun m!4556559 () Bool)

(assert (=> b!3982237 m!4556559))

(declare-fun m!4556561 () Bool)

(assert (=> d!1178872 m!4556561))

(assert (=> d!1178872 m!4555483))

(declare-fun m!4556563 () Bool)

(assert (=> d!1178872 m!4556563))

(declare-fun m!4556565 () Bool)

(assert (=> b!3982236 m!4556565))

(assert (=> b!3981533 d!1178872))

(declare-fun d!1178874 () Bool)

(assert (=> d!1178874 (ruleValid!2654 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))))))

(declare-fun lt!1399236 () Unit!61235)

(assert (=> d!1178874 (= lt!1399236 (choose!23894 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))) rules!2999))))

(assert (=> d!1178874 (contains!8471 rules!2999 (rule!9728 (_1!24030 (v!39483 lt!1398947))))))

(assert (=> d!1178874 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1728 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947))) rules!2999) lt!1399236)))

(declare-fun bs!588023 () Bool)

(assert (= bs!588023 d!1178874))

(assert (=> bs!588023 m!4555415))

(declare-fun m!4556567 () Bool)

(assert (=> bs!588023 m!4556567))

(declare-fun m!4556569 () Bool)

(assert (=> bs!588023 m!4556569))

(assert (=> b!3981533 d!1178874))

(declare-fun d!1178876 () Bool)

(assert (=> d!1178876 (= (apply!9933 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (seqFromList!4961 lt!1398942)) (dynLambda!18108 (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (seqFromList!4961 lt!1398942)))))

(declare-fun b_lambda!116327 () Bool)

(assert (=> (not b_lambda!116327) (not d!1178876)))

(declare-fun tb!239953 () Bool)

(declare-fun t!331388 () Bool)

(assert (=> (and b!3981547 (= (toValue!9210 (transformation!6722 (h!47990 rules!2999))) (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))) t!331388) tb!239953))

(declare-fun result!290688 () Bool)

(assert (=> tb!239953 (= result!290688 (inv!21 (dynLambda!18108 (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (seqFromList!4961 lt!1398942))))))

(declare-fun m!4556571 () Bool)

(assert (=> tb!239953 m!4556571))

(assert (=> d!1178876 t!331388))

(declare-fun b_and!306079 () Bool)

(assert (= b_and!306051 (and (=> t!331388 result!290688) b_and!306079)))

(declare-fun t!331390 () Bool)

(declare-fun tb!239955 () Bool)

(assert (=> (and b!3981537 (= (toValue!9210 (transformation!6722 (rule!9728 token!484))) (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))) t!331390) tb!239955))

(declare-fun result!290690 () Bool)

(assert (= result!290690 result!290688))

(assert (=> d!1178876 t!331390))

(declare-fun b_and!306081 () Bool)

(assert (= b_and!306053 (and (=> t!331390 result!290690) b_and!306081)))

(assert (=> d!1178876 m!4555401))

(declare-fun m!4556573 () Bool)

(assert (=> d!1178876 m!4556573))

(assert (=> b!3981533 d!1178876))

(declare-fun b!3982240 () Bool)

(declare-fun res!1614160 () Bool)

(declare-fun e!2467869 () Bool)

(assert (=> b!3982240 (=> (not res!1614160) (not e!2467869))))

(assert (=> b!3982240 (= res!1614160 (= (head!8479 lt!1398942) (head!8479 (++!11124 lt!1398942 newSuffixResult!27))))))

(declare-fun b!3982242 () Bool)

(declare-fun e!2467870 () Bool)

(assert (=> b!3982242 (= e!2467870 (>= (size!31843 (++!11124 lt!1398942 newSuffixResult!27)) (size!31843 lt!1398942)))))

(declare-fun b!3982239 () Bool)

(declare-fun e!2467871 () Bool)

(assert (=> b!3982239 (= e!2467871 e!2467869)))

(declare-fun res!1614158 () Bool)

(assert (=> b!3982239 (=> (not res!1614158) (not e!2467869))))

(assert (=> b!3982239 (= res!1614158 (not ((_ is Nil!42568) (++!11124 lt!1398942 newSuffixResult!27))))))

(declare-fun b!3982241 () Bool)

(assert (=> b!3982241 (= e!2467869 (isPrefix!3809 (tail!6211 lt!1398942) (tail!6211 (++!11124 lt!1398942 newSuffixResult!27))))))

(declare-fun d!1178878 () Bool)

(assert (=> d!1178878 e!2467870))

(declare-fun res!1614159 () Bool)

(assert (=> d!1178878 (=> res!1614159 e!2467870)))

(declare-fun lt!1399237 () Bool)

(assert (=> d!1178878 (= res!1614159 (not lt!1399237))))

(assert (=> d!1178878 (= lt!1399237 e!2467871)))

(declare-fun res!1614161 () Bool)

(assert (=> d!1178878 (=> res!1614161 e!2467871)))

(assert (=> d!1178878 (= res!1614161 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178878 (= (isPrefix!3809 lt!1398942 (++!11124 lt!1398942 newSuffixResult!27)) lt!1399237)))

(assert (= (and d!1178878 (not res!1614161)) b!3982239))

(assert (= (and b!3982239 res!1614158) b!3982240))

(assert (= (and b!3982240 res!1614160) b!3982241))

(assert (= (and d!1178878 (not res!1614159)) b!3982242))

(assert (=> b!3982240 m!4555639))

(assert (=> b!3982240 m!4555385))

(declare-fun m!4556575 () Bool)

(assert (=> b!3982240 m!4556575))

(assert (=> b!3982242 m!4555385))

(declare-fun m!4556577 () Bool)

(assert (=> b!3982242 m!4556577))

(assert (=> b!3982242 m!4555405))

(assert (=> b!3982241 m!4555645))

(assert (=> b!3982241 m!4555385))

(declare-fun m!4556579 () Bool)

(assert (=> b!3982241 m!4556579))

(assert (=> b!3982241 m!4555645))

(assert (=> b!3982241 m!4556579))

(declare-fun m!4556581 () Bool)

(assert (=> b!3982241 m!4556581))

(assert (=> b!3981533 d!1178878))

(declare-fun d!1178880 () Bool)

(declare-fun res!1614162 () Bool)

(declare-fun e!2467872 () Bool)

(assert (=> d!1178880 (=> (not res!1614162) (not e!2467872))))

(assert (=> d!1178880 (= res!1614162 (validRegex!5278 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))))))

(assert (=> d!1178880 (= (ruleValid!2654 thiss!21717 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) e!2467872)))

(declare-fun b!3982243 () Bool)

(declare-fun res!1614163 () Bool)

(assert (=> b!3982243 (=> (not res!1614163) (not e!2467872))))

(assert (=> b!3982243 (= res!1614163 (not (nullable!4078 (regex!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))))))

(declare-fun b!3982244 () Bool)

(assert (=> b!3982244 (= e!2467872 (not (= (tag!7582 (rule!9728 (_1!24030 (v!39483 lt!1398947)))) (String!48479 ""))))))

(assert (= (and d!1178880 res!1614162) b!3982243))

(assert (= (and b!3982243 res!1614163) b!3982244))

(declare-fun m!4556583 () Bool)

(assert (=> d!1178880 m!4556583))

(declare-fun m!4556585 () Bool)

(assert (=> b!3982243 m!4556585))

(assert (=> b!3981533 d!1178880))

(declare-fun d!1178882 () Bool)

(assert (=> d!1178882 (= (list!15800 (charsOf!4538 (_1!24030 (v!39483 lt!1398947)))) (list!15802 (c!689734 (charsOf!4538 (_1!24030 (v!39483 lt!1398947))))))))

(declare-fun bs!588024 () Bool)

(assert (= bs!588024 d!1178882))

(declare-fun m!4556587 () Bool)

(assert (=> bs!588024 m!4556587))

(assert (=> b!3981533 d!1178882))

(declare-fun d!1178884 () Bool)

(assert (=> d!1178884 (isPrefix!3809 lt!1398942 (++!11124 lt!1398942 (_2!24030 (v!39483 lt!1398947))))))

(declare-fun lt!1399238 () Unit!61235)

(assert (=> d!1178884 (= lt!1399238 (choose!23889 lt!1398942 (_2!24030 (v!39483 lt!1398947))))))

(assert (=> d!1178884 (= (lemmaConcatTwoListThenFirstIsPrefix!2652 lt!1398942 (_2!24030 (v!39483 lt!1398947))) lt!1399238)))

(declare-fun bs!588025 () Bool)

(assert (= bs!588025 d!1178884))

(assert (=> bs!588025 m!4555389))

(assert (=> bs!588025 m!4555389))

(declare-fun m!4556589 () Bool)

(assert (=> bs!588025 m!4556589))

(declare-fun m!4556591 () Bool)

(assert (=> bs!588025 m!4556591))

(assert (=> b!3981533 d!1178884))

(declare-fun d!1178886 () Bool)

(assert (=> d!1178886 (= (seqFromList!4961 lt!1398942) (fromListB!2280 lt!1398942))))

(declare-fun bs!588026 () Bool)

(assert (= bs!588026 d!1178886))

(declare-fun m!4556593 () Bool)

(assert (=> bs!588026 m!4556593))

(assert (=> b!3981533 d!1178886))

(declare-fun d!1178888 () Bool)

(declare-fun e!2467873 () Bool)

(assert (=> d!1178888 e!2467873))

(declare-fun res!1614164 () Bool)

(assert (=> d!1178888 (=> (not res!1614164) (not e!2467873))))

(assert (=> d!1178888 (= res!1614164 (semiInverseModEq!2885 (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))))))

(declare-fun Unit!61245 () Unit!61235)

(assert (=> d!1178888 (= (lemmaInv!937 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) Unit!61245)))

(declare-fun b!3982245 () Bool)

(assert (=> b!3982245 (= e!2467873 (equivClasses!2784 (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947))))) (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))))))

(assert (= (and d!1178888 res!1614164) b!3982245))

(declare-fun m!4556595 () Bool)

(assert (=> d!1178888 m!4556595))

(declare-fun m!4556597 () Bool)

(assert (=> b!3982245 m!4556597))

(assert (=> b!3981533 d!1178888))

(declare-fun d!1178890 () Bool)

(declare-fun lt!1399239 () Int)

(assert (=> d!1178890 (>= lt!1399239 0)))

(declare-fun e!2467874 () Int)

(assert (=> d!1178890 (= lt!1399239 e!2467874)))

(declare-fun c!689845 () Bool)

(assert (=> d!1178890 (= c!689845 ((_ is Nil!42568) lt!1398942))))

(assert (=> d!1178890 (= (size!31843 lt!1398942) lt!1399239)))

(declare-fun b!3982246 () Bool)

(assert (=> b!3982246 (= e!2467874 0)))

(declare-fun b!3982247 () Bool)

(assert (=> b!3982247 (= e!2467874 (+ 1 (size!31843 (t!331347 lt!1398942))))))

(assert (= (and d!1178890 c!689845) b!3982246))

(assert (= (and d!1178890 (not c!689845)) b!3982247))

(declare-fun m!4556599 () Bool)

(assert (=> b!3982247 m!4556599))

(assert (=> b!3981533 d!1178890))

(declare-fun e!2467877 () Bool)

(assert (=> b!3981550 (= tp!1213690 e!2467877)))

(declare-fun b!3982261 () Bool)

(declare-fun tp!1213764 () Bool)

(declare-fun tp!1213761 () Bool)

(assert (=> b!3982261 (= e!2467877 (and tp!1213764 tp!1213761))))

(declare-fun b!3982259 () Bool)

(declare-fun tp!1213762 () Bool)

(declare-fun tp!1213763 () Bool)

(assert (=> b!3982259 (= e!2467877 (and tp!1213762 tp!1213763))))

(declare-fun b!3982260 () Bool)

(declare-fun tp!1213765 () Bool)

(assert (=> b!3982260 (= e!2467877 tp!1213765)))

(declare-fun b!3982258 () Bool)

(assert (=> b!3982258 (= e!2467877 tp_is_empty!20225)))

(assert (= (and b!3981550 ((_ is ElementMatch!11627) (regex!6722 (rule!9728 token!484)))) b!3982258))

(assert (= (and b!3981550 ((_ is Concat!18580) (regex!6722 (rule!9728 token!484)))) b!3982259))

(assert (= (and b!3981550 ((_ is Star!11627) (regex!6722 (rule!9728 token!484)))) b!3982260))

(assert (= (and b!3981550 ((_ is Union!11627) (regex!6722 (rule!9728 token!484)))) b!3982261))

(declare-fun b!3982266 () Bool)

(declare-fun e!2467880 () Bool)

(declare-fun tp!1213768 () Bool)

(assert (=> b!3982266 (= e!2467880 (and tp_is_empty!20225 tp!1213768))))

(assert (=> b!3981557 (= tp!1213693 e!2467880)))

(assert (= (and b!3981557 ((_ is Cons!42568) (t!331347 prefix!494))) b!3982266))

(declare-fun b!3982267 () Bool)

(declare-fun e!2467881 () Bool)

(declare-fun tp!1213769 () Bool)

(assert (=> b!3982267 (= e!2467881 (and tp_is_empty!20225 tp!1213769))))

(assert (=> b!3981526 (= tp!1213701 e!2467881)))

(assert (= (and b!3981526 ((_ is Cons!42568) (t!331347 newSuffix!27))) b!3982267))

(declare-fun e!2467882 () Bool)

(assert (=> b!3981558 (= tp!1213699 e!2467882)))

(declare-fun b!3982271 () Bool)

(declare-fun tp!1213773 () Bool)

(declare-fun tp!1213770 () Bool)

(assert (=> b!3982271 (= e!2467882 (and tp!1213773 tp!1213770))))

(declare-fun b!3982269 () Bool)

(declare-fun tp!1213771 () Bool)

(declare-fun tp!1213772 () Bool)

(assert (=> b!3982269 (= e!2467882 (and tp!1213771 tp!1213772))))

(declare-fun b!3982270 () Bool)

(declare-fun tp!1213774 () Bool)

(assert (=> b!3982270 (= e!2467882 tp!1213774)))

(declare-fun b!3982268 () Bool)

(assert (=> b!3982268 (= e!2467882 tp_is_empty!20225)))

(assert (= (and b!3981558 ((_ is ElementMatch!11627) (regex!6722 (h!47990 rules!2999)))) b!3982268))

(assert (= (and b!3981558 ((_ is Concat!18580) (regex!6722 (h!47990 rules!2999)))) b!3982269))

(assert (= (and b!3981558 ((_ is Star!11627) (regex!6722 (h!47990 rules!2999)))) b!3982270))

(assert (= (and b!3981558 ((_ is Union!11627) (regex!6722 (h!47990 rules!2999)))) b!3982271))

(declare-fun b!3982272 () Bool)

(declare-fun e!2467883 () Bool)

(declare-fun tp!1213775 () Bool)

(assert (=> b!3982272 (= e!2467883 (and tp_is_empty!20225 tp!1213775))))

(assert (=> b!3981548 (= tp!1213694 e!2467883)))

(assert (= (and b!3981548 ((_ is Cons!42568) (t!331347 newSuffixResult!27))) b!3982272))

(declare-fun b!3982273 () Bool)

(declare-fun e!2467884 () Bool)

(declare-fun tp!1213776 () Bool)

(assert (=> b!3982273 (= e!2467884 (and tp_is_empty!20225 tp!1213776))))

(assert (=> b!3981543 (= tp!1213702 e!2467884)))

(assert (= (and b!3981543 ((_ is Cons!42568) (originalCharacters!7322 token!484))) b!3982273))

(declare-fun b!3982274 () Bool)

(declare-fun e!2467885 () Bool)

(declare-fun tp!1213777 () Bool)

(assert (=> b!3982274 (= e!2467885 (and tp_is_empty!20225 tp!1213777))))

(assert (=> b!3981527 (= tp!1213698 e!2467885)))

(assert (= (and b!3981527 ((_ is Cons!42568) (t!331347 suffixResult!105))) b!3982274))

(declare-fun b!3982275 () Bool)

(declare-fun e!2467886 () Bool)

(declare-fun tp!1213778 () Bool)

(assert (=> b!3982275 (= e!2467886 (and tp_is_empty!20225 tp!1213778))))

(assert (=> b!3981544 (= tp!1213692 e!2467886)))

(assert (= (and b!3981544 ((_ is Cons!42568) (t!331347 suffix!1299))) b!3982275))

(declare-fun b!3982286 () Bool)

(declare-fun b_free!110533 () Bool)

(declare-fun b_next!111237 () Bool)

(assert (=> b!3982286 (= b_free!110533 (not b_next!111237))))

(declare-fun tb!239957 () Bool)

(declare-fun t!331392 () Bool)

(assert (=> (and b!3982286 (= (toValue!9210 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toValue!9210 (transformation!6722 (rule!9728 token!484)))) t!331392) tb!239957))

(declare-fun result!290698 () Bool)

(assert (= result!290698 result!290650))

(assert (=> d!1178614 t!331392))

(declare-fun tb!239959 () Bool)

(declare-fun t!331394 () Bool)

(assert (=> (and b!3982286 (= (toValue!9210 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toValue!9210 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))) t!331394) tb!239959))

(declare-fun result!290700 () Bool)

(assert (= result!290700 result!290688))

(assert (=> d!1178876 t!331394))

(declare-fun b_and!306083 () Bool)

(declare-fun tp!1213788 () Bool)

(assert (=> b!3982286 (= tp!1213788 (and (=> t!331392 result!290698) (=> t!331394 result!290700) b_and!306083))))

(declare-fun b_free!110535 () Bool)

(declare-fun b_next!111239 () Bool)

(assert (=> b!3982286 (= b_free!110535 (not b_next!111239))))

(declare-fun tb!239961 () Bool)

(declare-fun t!331396 () Bool)

(assert (=> (and b!3982286 (= (toChars!9069 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toChars!9069 (transformation!6722 (rule!9728 token!484)))) t!331396) tb!239961))

(declare-fun result!290702 () Bool)

(assert (= result!290702 result!290664))

(assert (=> b!3982009 t!331396))

(assert (=> d!1178832 t!331396))

(declare-fun t!331398 () Bool)

(declare-fun tb!239963 () Bool)

(assert (=> (and b!3982286 (= (toChars!9069 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toChars!9069 (transformation!6722 (rule!9728 (_1!24030 (v!39483 lt!1398947)))))) t!331398) tb!239963))

(declare-fun result!290704 () Bool)

(assert (= result!290704 result!290684))

(assert (=> d!1178864 t!331398))

(declare-fun tp!1213790 () Bool)

(declare-fun b_and!306085 () Bool)

(assert (=> b!3982286 (= tp!1213790 (and (=> t!331396 result!290702) (=> t!331398 result!290704) b_and!306085))))

(declare-fun e!2467897 () Bool)

(assert (=> b!3982286 (= e!2467897 (and tp!1213788 tp!1213790))))

(declare-fun tp!1213787 () Bool)

(declare-fun e!2467898 () Bool)

(declare-fun b!3982285 () Bool)

(assert (=> b!3982285 (= e!2467898 (and tp!1213787 (inv!56863 (tag!7582 (h!47990 (t!331349 rules!2999)))) (inv!56867 (transformation!6722 (h!47990 (t!331349 rules!2999)))) e!2467897))))

(declare-fun b!3982284 () Bool)

(declare-fun e!2467896 () Bool)

(declare-fun tp!1213789 () Bool)

(assert (=> b!3982284 (= e!2467896 (and e!2467898 tp!1213789))))

(assert (=> b!3981528 (= tp!1213695 e!2467896)))

(assert (= b!3982285 b!3982286))

(assert (= b!3982284 b!3982285))

(assert (= (and b!3981528 ((_ is Cons!42570) (t!331349 rules!2999))) b!3982284))

(declare-fun m!4556601 () Bool)

(assert (=> b!3982285 m!4556601))

(declare-fun m!4556603 () Bool)

(assert (=> b!3982285 m!4556603))

(declare-fun b_lambda!116329 () Bool)

(assert (= b_lambda!116309 (or (and b!3981547 b_free!110521 (= (toValue!9210 (transformation!6722 (h!47990 rules!2999))) (toValue!9210 (transformation!6722 (rule!9728 token!484))))) (and b!3981537 b_free!110525) (and b!3982286 b_free!110533 (= (toValue!9210 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toValue!9210 (transformation!6722 (rule!9728 token!484))))) b_lambda!116329)))

(declare-fun b_lambda!116331 () Bool)

(assert (= b_lambda!116323 (or (and b!3981547 b_free!110523 (= (toChars!9069 (transformation!6722 (h!47990 rules!2999))) (toChars!9069 (transformation!6722 (rule!9728 token!484))))) (and b!3981537 b_free!110527) (and b!3982286 b_free!110535 (= (toChars!9069 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toChars!9069 (transformation!6722 (rule!9728 token!484))))) b_lambda!116331)))

(declare-fun b_lambda!116333 () Bool)

(assert (= b_lambda!116315 (or (and b!3981547 b_free!110523 (= (toChars!9069 (transformation!6722 (h!47990 rules!2999))) (toChars!9069 (transformation!6722 (rule!9728 token!484))))) (and b!3981537 b_free!110527) (and b!3982286 b_free!110535 (= (toChars!9069 (transformation!6722 (h!47990 (t!331349 rules!2999)))) (toChars!9069 (transformation!6722 (rule!9728 token!484))))) b_lambda!116333)))

(check-sat (not b_next!111239) (not b!3982275) (not b!3981807) (not b!3982120) (not b!3982122) (not b!3982149) (not d!1178868) (not b!3981968) (not d!1178676) (not b!3982243) (not d!1178748) (not d!1178872) (not d!1178620) (not b!3982198) (not b!3982134) (not b!3981583) (not d!1178626) (not b!3982179) (not d!1178792) (not b!3982261) tp_is_empty!20225 (not b!3981832) (not tb!239953) (not b!3982227) (not d!1178610) (not b!3982207) (not d!1178850) (not d!1178842) (not b_lambda!116331) (not d!1178864) (not b_lambda!116333) (not d!1178820) (not d!1178782) (not b!3982217) (not d!1178888) (not b!3981827) (not d!1178854) (not b!3982273) (not b!3981584) b_and!306085 (not b!3982118) (not d!1178816) (not b!3981828) (not b!3982163) (not b!3982063) (not b!3982181) b_and!306075 (not bm!285735) (not b!3982174) (not b!3982138) (not b!3981966) (not d!1178786) (not b!3982154) (not b_next!111229) (not b!3982145) (not b!3982215) (not b!3982129) (not b!3982203) (not bm!285734) (not b!3981671) (not b!3982150) (not b!3981813) (not b_next!111231) (not b!3982272) (not b!3982266) (not b!3982125) (not d!1178618) (not b!3981809) (not d!1178836) (not b!3981973) (not d!1178834) (not b!3982113) (not b!3982210) (not b!3982170) (not b!3982142) (not b!3982021) (not b!3982230) (not b!3982271) (not b!3982196) (not b!3981830) b_and!306077 (not b!3982114) (not d!1178784) (not bm!285731) (not b!3982259) (not b!3982232) (not b!3982189) (not b!3982141) (not b!3982153) (not d!1178832) (not b!3982161) (not b!3982169) (not tb!239925) (not b_lambda!116327) (not b!3981808) (not b_next!111237) (not d!1178788) (not b!3981811) (not b!3982109) (not b!3981587) (not b!3982245) (not b_lambda!116325) (not b!3982234) (not b!3981971) (not b!3982180) (not d!1178862) (not b!3982212) (not b!3982233) (not d!1178870) (not b!3982173) (not d!1178840) (not b!3982201) (not b!3982108) (not b!3982115) (not b!3981667) (not b!3982062) (not d!1178774) (not b!3981696) (not b!3982124) (not b!3982192) (not b!3982190) (not b!3982183) (not b!3982270) (not d!1178548) (not b!3982206) (not b!3982237) (not b!3981617) (not d!1178780) (not b!3982068) (not b!3982220) (not d!1178550) (not b!3982010) (not b!3981812) (not b!3981988) (not b!3982224) b_and!306083 (not d!1178874) (not b_next!111227) (not b!3982211) (not d!1178830) (not b!3981989) (not b!3981573) (not b!3982247) (not b!3982147) (not b!3982219) (not d!1178622) (not b!3981974) (not b!3982194) (not d!1178804) (not b!3982186) (not d!1178560) (not d!1178544) (not d!1178844) (not b!3982197) (not d!1178806) (not b!3981574) (not d!1178800) (not b!3982223) (not b!3982260) (not b!3981831) (not b!3982176) (not d!1178882) (not d!1178778) (not d!1178542) (not b!3981669) (not d!1178886) (not b!3982241) (not b!3982185) (not b!3982009) (not d!1178802) (not b!3982236) (not b!3982222) (not b!3982240) (not b!3982059) (not b!3982171) b_and!306079 (not d!1178772) (not d!1178616) (not b!3981672) (not b!3981695) (not b!3982193) (not b_next!111225) (not d!1178546) (not b!3982228) (not b!3981972) (not b!3981673) (not b!3982208) (not d!1178684) (not d!1178824) (not b!3981810) (not d!1178856) (not d!1178540) (not b!3981606) (not b!3982157) (not d!1178810) (not b!3982164) (not b!3981668) (not b!3981814) (not b!3981970) (not b!3981826) (not b!3982188) (not b!3982218) (not b!3981697) (not b!3982191) (not d!1178818) (not d!1178576) (not b!3981580) (not b!3982284) (not b!3982200) (not tb!239949) (not b!3982267) (not b_lambda!116329) (not b!3982158) (not b!3981969) (not d!1178860) (not d!1178790) (not d!1178752) (not b!3982166) (not d!1178884) (not tb!239937) (not b!3982269) (not d!1178812) b_and!306081 (not b!3982221) (not b!3982137) (not b!3981563) (not d!1178880) (not b!3981588) (not b!3982274) (not d!1178858) (not b!3982216) (not b!3982285) (not b!3982121) (not b!3982242) (not b!3982214))
(check-sat (not b_next!111239) b_and!306085 (not b_next!111231) b_and!306077 (not b_next!111237) b_and!306079 (not b_next!111225) b_and!306081 b_and!306075 (not b_next!111229) b_and!306083 (not b_next!111227))
