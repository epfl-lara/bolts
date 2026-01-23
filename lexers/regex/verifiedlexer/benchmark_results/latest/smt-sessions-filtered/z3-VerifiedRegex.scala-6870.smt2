; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361796 () Bool)

(assert start!361796)

(declare-fun b!3858948 () Bool)

(declare-fun b_free!103669 () Bool)

(declare-fun b_next!104373 () Bool)

(assert (=> b!3858948 (= b_free!103669 (not b_next!104373))))

(declare-fun tp!1169721 () Bool)

(declare-fun b_and!288795 () Bool)

(assert (=> b!3858948 (= tp!1169721 b_and!288795)))

(declare-fun b_free!103671 () Bool)

(declare-fun b_next!104375 () Bool)

(assert (=> b!3858948 (= b_free!103671 (not b_next!104375))))

(declare-fun tp!1169728 () Bool)

(declare-fun b_and!288797 () Bool)

(assert (=> b!3858948 (= tp!1169728 b_and!288797)))

(declare-fun b!3858950 () Bool)

(declare-fun b_free!103673 () Bool)

(declare-fun b_next!104377 () Bool)

(assert (=> b!3858950 (= b_free!103673 (not b_next!104377))))

(declare-fun tp!1169716 () Bool)

(declare-fun b_and!288799 () Bool)

(assert (=> b!3858950 (= tp!1169716 b_and!288799)))

(declare-fun b_free!103675 () Bool)

(declare-fun b_next!104379 () Bool)

(assert (=> b!3858950 (= b_free!103675 (not b_next!104379))))

(declare-fun tp!1169723 () Bool)

(declare-fun b_and!288801 () Bool)

(assert (=> b!3858950 (= tp!1169723 b_and!288801)))

(declare-fun b!3858933 () Bool)

(declare-fun b_free!103677 () Bool)

(declare-fun b_next!104381 () Bool)

(assert (=> b!3858933 (= b_free!103677 (not b_next!104381))))

(declare-fun tp!1169725 () Bool)

(declare-fun b_and!288803 () Bool)

(assert (=> b!3858933 (= tp!1169725 b_and!288803)))

(declare-fun b_free!103679 () Bool)

(declare-fun b_next!104383 () Bool)

(assert (=> b!3858933 (= b_free!103679 (not b_next!104383))))

(declare-fun tp!1169719 () Bool)

(declare-fun b_and!288805 () Bool)

(assert (=> b!3858933 (= tp!1169719 b_and!288805)))

(declare-fun b!3858917 () Bool)

(declare-fun res!1562332 () Bool)

(declare-fun e!2385522 () Bool)

(assert (=> b!3858917 (=> (not res!1562332) (not e!2385522))))

(declare-datatypes ((LexerInterface!5917 0))(
  ( (LexerInterfaceExt!5914 (__x!25333 Int)) (Lexer!5915) )
))
(declare-fun thiss!20629 () LexerInterface!5917)

(declare-datatypes ((List!41024 0))(
  ( (Nil!40900) (Cons!40900 (h!46320 (_ BitVec 16)) (t!313227 List!41024)) )
))
(declare-datatypes ((TokenValue!6558 0))(
  ( (FloatLiteralValue!13116 (text!46351 List!41024)) (TokenValueExt!6557 (__x!25334 Int)) (Broken!32790 (value!200956 List!41024)) (Object!6681) (End!6558) (Def!6558) (Underscore!6558) (Match!6558) (Else!6558) (Error!6558) (Case!6558) (If!6558) (Extends!6558) (Abstract!6558) (Class!6558) (Val!6558) (DelimiterValue!13116 (del!6618 List!41024)) (KeywordValue!6564 (value!200957 List!41024)) (CommentValue!13116 (value!200958 List!41024)) (WhitespaceValue!13116 (value!200959 List!41024)) (IndentationValue!6558 (value!200960 List!41024)) (String!46507) (Int32!6558) (Broken!32791 (value!200961 List!41024)) (Boolean!6559) (Unit!58565) (OperatorValue!6561 (op!6618 List!41024)) (IdentifierValue!13116 (value!200962 List!41024)) (IdentifierValue!13117 (value!200963 List!41024)) (WhitespaceValue!13117 (value!200964 List!41024)) (True!13116) (False!13116) (Broken!32792 (value!200965 List!41024)) (Broken!32793 (value!200966 List!41024)) (True!13117) (RightBrace!6558) (RightBracket!6558) (Colon!6558) (Null!6558) (Comma!6558) (LeftBracket!6558) (False!13117) (LeftBrace!6558) (ImaginaryLiteralValue!6558 (text!46352 List!41024)) (StringLiteralValue!19674 (value!200967 List!41024)) (EOFValue!6558 (value!200968 List!41024)) (IdentValue!6558 (value!200969 List!41024)) (DelimiterValue!13117 (value!200970 List!41024)) (DedentValue!6558 (value!200971 List!41024)) (NewLineValue!6558 (value!200972 List!41024)) (IntegerValue!19674 (value!200973 (_ BitVec 32)) (text!46353 List!41024)) (IntegerValue!19675 (value!200974 Int) (text!46354 List!41024)) (Times!6558) (Or!6558) (Equal!6558) (Minus!6558) (Broken!32794 (value!200975 List!41024)) (And!6558) (Div!6558) (LessEqual!6558) (Mod!6558) (Concat!17791) (Not!6558) (Plus!6558) (SpaceValue!6558 (value!200976 List!41024)) (IntegerValue!19676 (value!200977 Int) (text!46355 List!41024)) (StringLiteralValue!19675 (text!46356 List!41024)) (FloatLiteralValue!13117 (text!46357 List!41024)) (BytesLiteralValue!6558 (value!200978 List!41024)) (CommentValue!13117 (value!200979 List!41024)) (StringLiteralValue!19676 (value!200980 List!41024)) (ErrorTokenValue!6558 (msg!6619 List!41024)) )
))
(declare-datatypes ((C!22652 0))(
  ( (C!22653 (val!13420 Int)) )
))
(declare-datatypes ((List!41025 0))(
  ( (Nil!40901) (Cons!40901 (h!46321 C!22652) (t!313228 List!41025)) )
))
(declare-datatypes ((IArray!25083 0))(
  ( (IArray!25084 (innerList!12599 List!41025)) )
))
(declare-datatypes ((Conc!12539 0))(
  ( (Node!12539 (left!31517 Conc!12539) (right!31847 Conc!12539) (csize!25308 Int) (cheight!12750 Int)) (Leaf!19410 (xs!15845 IArray!25083) (csize!25309 Int)) (Empty!12539) )
))
(declare-datatypes ((BalanceConc!24672 0))(
  ( (BalanceConc!24673 (c!671958 Conc!12539)) )
))
(declare-datatypes ((Regex!11233 0))(
  ( (ElementMatch!11233 (c!671959 C!22652)) (Concat!17792 (regOne!22978 Regex!11233) (regTwo!22978 Regex!11233)) (EmptyExpr!11233) (Star!11233 (reg!11562 Regex!11233)) (EmptyLang!11233) (Union!11233 (regOne!22979 Regex!11233) (regTwo!22979 Regex!11233)) )
))
(declare-datatypes ((String!46508 0))(
  ( (String!46509 (value!200981 String)) )
))
(declare-datatypes ((TokenValueInjection!12544 0))(
  ( (TokenValueInjection!12545 (toValue!8756 Int) (toChars!8615 Int)) )
))
(declare-datatypes ((Rule!12456 0))(
  ( (Rule!12457 (regex!6328 Regex!11233) (tag!7188 String!46508) (isSeparator!6328 Bool) (transformation!6328 TokenValueInjection!12544)) )
))
(declare-datatypes ((List!41026 0))(
  ( (Nil!40902) (Cons!40902 (h!46322 Rule!12456) (t!313229 List!41026)) )
))
(declare-fun rules!2768 () List!41026)

(declare-fun rulesInvariant!5260 (LexerInterface!5917 List!41026) Bool)

(assert (=> b!3858917 (= res!1562332 (rulesInvariant!5260 thiss!20629 rules!2768))))

(declare-fun b!3858918 () Bool)

(declare-fun res!1562343 () Bool)

(declare-fun e!2385527 () Bool)

(assert (=> b!3858918 (=> res!1562343 e!2385527)))

(declare-datatypes ((Token!11794 0))(
  ( (Token!11795 (value!200982 TokenValue!6558) (rule!9194 Rule!12456) (size!30765 Int) (originalCharacters!6928 List!41025)) )
))
(declare-datatypes ((List!41027 0))(
  ( (Nil!40903) (Cons!40903 (h!46323 Token!11794) (t!313230 List!41027)) )
))
(declare-fun prefixTokens!80 () List!41027)

(declare-fun isEmpty!24224 (List!41027) Bool)

(declare-fun tail!5841 (List!41027) List!41027)

(assert (=> b!3858918 (= res!1562343 (not (isEmpty!24224 (tail!5841 prefixTokens!80))))))

(declare-fun b!3858919 () Bool)

(declare-fun res!1562328 () Bool)

(declare-fun e!2385510 () Bool)

(assert (=> b!3858919 (=> (not res!1562328) (not e!2385510))))

(declare-fun suffix!1176 () List!41025)

(declare-fun suffixTokens!72 () List!41027)

(declare-fun suffixResult!91 () List!41025)

(declare-datatypes ((tuple2!40102 0))(
  ( (tuple2!40103 (_1!23185 List!41027) (_2!23185 List!41025)) )
))
(declare-fun lexList!1685 (LexerInterface!5917 List!41026 List!41025) tuple2!40102)

(assert (=> b!3858919 (= res!1562328 (= (lexList!1685 thiss!20629 rules!2768 suffix!1176) (tuple2!40103 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3858920 () Bool)

(assert (=> b!3858920 (= e!2385522 e!2385510)))

(declare-fun res!1562342 () Bool)

(assert (=> b!3858920 (=> (not res!1562342) (not e!2385510))))

(declare-fun lt!1340697 () List!41027)

(declare-fun lt!1340693 () tuple2!40102)

(assert (=> b!3858920 (= res!1562342 (= lt!1340693 (tuple2!40103 lt!1340697 suffixResult!91)))))

(declare-fun lt!1340695 () List!41025)

(assert (=> b!3858920 (= lt!1340693 (lexList!1685 thiss!20629 rules!2768 lt!1340695))))

(declare-fun ++!10413 (List!41027 List!41027) List!41027)

(assert (=> b!3858920 (= lt!1340697 (++!10413 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41025)

(declare-fun ++!10414 (List!41025 List!41025) List!41025)

(assert (=> b!3858920 (= lt!1340695 (++!10414 prefix!426 suffix!1176))))

(declare-fun b!3858921 () Bool)

(declare-fun res!1562329 () Bool)

(assert (=> b!3858921 (=> res!1562329 e!2385527)))

(declare-datatypes ((tuple2!40104 0))(
  ( (tuple2!40105 (_1!23186 Token!11794) (_2!23186 List!41025)) )
))
(declare-datatypes ((Option!8746 0))(
  ( (None!8745) (Some!8745 (v!39043 tuple2!40104)) )
))
(declare-fun lt!1340708 () Option!8746)

(declare-fun lt!1340712 () Token!11794)

(assert (=> b!3858921 (= res!1562329 (or (not (= prefixTokens!80 (Cons!40903 lt!1340712 Nil!40903))) (not (= (_1!23186 (v!39043 lt!1340708)) lt!1340712))))))

(declare-fun b!3858922 () Bool)

(declare-fun e!2385504 () Bool)

(declare-fun e!2385517 () Bool)

(declare-fun tp!1169715 () Bool)

(assert (=> b!3858922 (= e!2385504 (and e!2385517 tp!1169715))))

(declare-fun b!3858923 () Bool)

(declare-fun res!1562337 () Bool)

(assert (=> b!3858923 (=> res!1562337 e!2385527)))

(declare-fun lt!1340702 () tuple2!40104)

(declare-fun lt!1340699 () Int)

(declare-fun size!30766 (List!41025) Int)

(assert (=> b!3858923 (= res!1562337 (>= (size!30766 (_2!23186 lt!1340702)) lt!1340699))))

(declare-fun e!2385523 () Bool)

(declare-fun b!3858924 () Bool)

(declare-fun tp!1169727 () Bool)

(declare-fun e!2385506 () Bool)

(declare-fun inv!55064 (Token!11794) Bool)

(assert (=> b!3858924 (= e!2385523 (and (inv!55064 (h!46323 prefixTokens!80)) e!2385506 tp!1169727))))

(declare-fun b!3858925 () Bool)

(declare-fun res!1562330 () Bool)

(declare-fun e!2385500 () Bool)

(assert (=> b!3858925 (=> res!1562330 e!2385500)))

(declare-fun lt!1340703 () tuple2!40102)

(assert (=> b!3858925 (= res!1562330 (or (not (= lt!1340703 (tuple2!40103 (_1!23185 lt!1340703) (_2!23185 lt!1340703)))) (= (_2!23186 (v!39043 lt!1340708)) suffix!1176)))))

(declare-fun b!3858926 () Bool)

(declare-fun e!2385502 () Bool)

(declare-fun tp_is_empty!19437 () Bool)

(declare-fun tp!1169726 () Bool)

(assert (=> b!3858926 (= e!2385502 (and tp_is_empty!19437 tp!1169726))))

(declare-fun b!3858927 () Bool)

(declare-fun e!2385507 () Bool)

(declare-fun e!2385524 () Bool)

(assert (=> b!3858927 (= e!2385507 e!2385524)))

(declare-fun res!1562340 () Bool)

(assert (=> b!3858927 (=> res!1562340 e!2385524)))

(declare-fun lt!1340710 () Int)

(declare-fun lt!1340694 () Int)

(declare-fun lt!1340704 () Int)

(assert (=> b!3858927 (= res!1562340 (not (= (+ lt!1340694 lt!1340704) lt!1340710)))))

(assert (=> b!3858927 (= lt!1340710 (size!30766 lt!1340695))))

(declare-fun b!3858928 () Bool)

(declare-fun e!2385519 () Bool)

(assert (=> b!3858928 (= e!2385519 (= (size!30765 (_1!23186 (v!39043 lt!1340708))) (size!30766 (originalCharacters!6928 (_1!23186 (v!39043 lt!1340708))))))))

(declare-fun b!3858929 () Bool)

(assert (=> b!3858929 (= e!2385527 true)))

(declare-fun lt!1340696 () List!41025)

(declare-fun lt!1340692 () List!41025)

(assert (=> b!3858929 (= lt!1340696 (++!10414 lt!1340692 (_2!23186 lt!1340702)))))

(declare-fun b!3858930 () Bool)

(assert (=> b!3858930 (= e!2385500 e!2385507)))

(declare-fun res!1562344 () Bool)

(assert (=> b!3858930 (=> res!1562344 e!2385507)))

(assert (=> b!3858930 (= res!1562344 (>= lt!1340704 lt!1340699))))

(assert (=> b!3858930 (= lt!1340699 (size!30766 suffix!1176))))

(assert (=> b!3858930 (= lt!1340704 (size!30766 (_2!23186 (v!39043 lt!1340708))))))

(declare-fun b!3858931 () Bool)

(declare-fun res!1562333 () Bool)

(assert (=> b!3858931 (=> (not res!1562333) (not e!2385522))))

(assert (=> b!3858931 (= res!1562333 (not (isEmpty!24224 prefixTokens!80)))))

(declare-fun b!3858932 () Bool)

(declare-fun res!1562339 () Bool)

(assert (=> b!3858932 (=> (not res!1562339) (not e!2385522))))

(declare-fun isEmpty!24225 (List!41026) Bool)

(assert (=> b!3858932 (= res!1562339 (not (isEmpty!24225 rules!2768)))))

(declare-fun res!1562341 () Bool)

(assert (=> start!361796 (=> (not res!1562341) (not e!2385522))))

(get-info :version)

(assert (=> start!361796 (= res!1562341 ((_ is Lexer!5915) thiss!20629))))

(assert (=> start!361796 e!2385522))

(declare-fun e!2385509 () Bool)

(assert (=> start!361796 e!2385509))

(assert (=> start!361796 true))

(declare-fun e!2385501 () Bool)

(assert (=> start!361796 e!2385501))

(assert (=> start!361796 e!2385504))

(assert (=> start!361796 e!2385523))

(declare-fun e!2385516 () Bool)

(assert (=> start!361796 e!2385516))

(assert (=> start!361796 e!2385502))

(declare-fun e!2385513 () Bool)

(assert (=> b!3858933 (= e!2385513 (and tp!1169725 tp!1169719))))

(declare-fun b!3858934 () Bool)

(declare-fun e!2385528 () Bool)

(assert (=> b!3858934 (= e!2385528 e!2385527)))

(declare-fun res!1562345 () Bool)

(assert (=> b!3858934 (=> res!1562345 e!2385527)))

(assert (=> b!3858934 (= res!1562345 (not (= (_1!23186 lt!1340702) lt!1340712)))))

(declare-fun head!8130 (List!41027) Token!11794)

(assert (=> b!3858934 (= lt!1340712 (head!8130 prefixTokens!80))))

(declare-fun get!13532 (Option!8746) tuple2!40104)

(assert (=> b!3858934 (= lt!1340702 (get!13532 lt!1340708))))

(declare-fun e!2385512 () Bool)

(declare-fun b!3858935 () Bool)

(declare-fun tp!1169720 () Bool)

(declare-fun inv!21 (TokenValue!6558) Bool)

(assert (=> b!3858935 (= e!2385506 (and (inv!21 (value!200982 (h!46323 prefixTokens!80))) e!2385512 tp!1169720))))

(declare-fun b!3858936 () Bool)

(declare-fun e!2385503 () Bool)

(assert (=> b!3858936 (= e!2385510 e!2385503)))

(declare-fun res!1562338 () Bool)

(assert (=> b!3858936 (=> (not res!1562338) (not e!2385503))))

(assert (=> b!3858936 (= res!1562338 ((_ is Some!8745) lt!1340708))))

(declare-fun maxPrefix!3221 (LexerInterface!5917 List!41026 List!41025) Option!8746)

(assert (=> b!3858936 (= lt!1340708 (maxPrefix!3221 thiss!20629 rules!2768 lt!1340695))))

(declare-fun e!2385511 () Bool)

(declare-fun tp!1169722 () Bool)

(declare-fun b!3858937 () Bool)

(assert (=> b!3858937 (= e!2385516 (and (inv!55064 (h!46323 suffixTokens!72)) e!2385511 tp!1169722))))

(declare-fun b!3858938 () Bool)

(declare-fun e!2385508 () Bool)

(declare-fun tp!1169729 () Bool)

(declare-fun inv!55061 (String!46508) Bool)

(declare-fun inv!55065 (TokenValueInjection!12544) Bool)

(assert (=> b!3858938 (= e!2385512 (and tp!1169729 (inv!55061 (tag!7188 (rule!9194 (h!46323 prefixTokens!80)))) (inv!55065 (transformation!6328 (rule!9194 (h!46323 prefixTokens!80)))) e!2385508))))

(declare-fun b!3858939 () Bool)

(declare-fun e!2385520 () Bool)

(declare-fun tp!1169717 () Bool)

(assert (=> b!3858939 (= e!2385517 (and tp!1169717 (inv!55061 (tag!7188 (h!46322 rules!2768))) (inv!55065 (transformation!6328 (h!46322 rules!2768))) e!2385520))))

(declare-fun b!3858940 () Bool)

(declare-fun e!2385505 () Bool)

(assert (=> b!3858940 (= e!2385524 e!2385505)))

(declare-fun res!1562334 () Bool)

(assert (=> b!3858940 (=> res!1562334 e!2385505)))

(declare-fun lt!1340707 () Int)

(assert (=> b!3858940 (= res!1562334 (or (not (= (+ lt!1340707 lt!1340699) lt!1340710)) (<= lt!1340694 lt!1340707)))))

(assert (=> b!3858940 (= lt!1340707 (size!30766 prefix!426))))

(declare-fun b!3858941 () Bool)

(assert (=> b!3858941 (= e!2385505 e!2385528)))

(declare-fun res!1562335 () Bool)

(assert (=> b!3858941 (=> res!1562335 e!2385528)))

(declare-fun matchR!5380 (Regex!11233 List!41025) Bool)

(assert (=> b!3858941 (= res!1562335 (not (matchR!5380 (regex!6328 (rule!9194 (_1!23186 (v!39043 lt!1340708)))) lt!1340692)))))

(declare-fun lt!1340711 () TokenValue!6558)

(declare-fun maxPrefixOneRule!2303 (LexerInterface!5917 Rule!12456 List!41025) Option!8746)

(assert (=> b!3858941 (= (maxPrefixOneRule!2303 thiss!20629 (rule!9194 (_1!23186 (v!39043 lt!1340708))) lt!1340695) (Some!8745 (tuple2!40105 (Token!11795 lt!1340711 (rule!9194 (_1!23186 (v!39043 lt!1340708))) lt!1340694 lt!1340692) (_2!23186 (v!39043 lt!1340708)))))))

(declare-datatypes ((Unit!58566 0))(
  ( (Unit!58567) )
))
(declare-fun lt!1340701 () Unit!58566)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1201 (LexerInterface!5917 List!41026 List!41025 List!41025 List!41025 Rule!12456) Unit!58566)

(assert (=> b!3858941 (= lt!1340701 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1201 thiss!20629 rules!2768 lt!1340692 lt!1340695 (_2!23186 (v!39043 lt!1340708)) (rule!9194 (_1!23186 (v!39043 lt!1340708)))))))

(declare-fun b!3858942 () Bool)

(declare-fun res!1562346 () Bool)

(assert (=> b!3858942 (=> (not res!1562346) (not e!2385522))))

(declare-fun isEmpty!24226 (List!41025) Bool)

(assert (=> b!3858942 (= res!1562346 (not (isEmpty!24226 prefix!426)))))

(declare-fun b!3858943 () Bool)

(declare-fun tp!1169724 () Bool)

(declare-fun e!2385518 () Bool)

(assert (=> b!3858943 (= e!2385511 (and (inv!21 (value!200982 (h!46323 suffixTokens!72))) e!2385518 tp!1169724))))

(declare-fun b!3858944 () Bool)

(declare-fun tp!1169714 () Bool)

(assert (=> b!3858944 (= e!2385501 (and tp_is_empty!19437 tp!1169714))))

(declare-fun b!3858945 () Bool)

(declare-fun res!1562327 () Bool)

(assert (=> b!3858945 (=> res!1562327 e!2385500)))

(assert (=> b!3858945 (= res!1562327 (not (= lt!1340693 (tuple2!40103 (++!10413 (Cons!40903 (_1!23186 (v!39043 lt!1340708)) Nil!40903) (_1!23185 lt!1340703)) (_2!23185 lt!1340703)))))))

(declare-fun b!3858946 () Bool)

(assert (=> b!3858946 (= e!2385503 (not e!2385500))))

(declare-fun res!1562336 () Bool)

(assert (=> b!3858946 (=> res!1562336 e!2385500)))

(declare-fun lt!1340698 () List!41025)

(assert (=> b!3858946 (= res!1562336 (not (= lt!1340698 lt!1340695)))))

(assert (=> b!3858946 (= lt!1340703 (lexList!1685 thiss!20629 rules!2768 (_2!23186 (v!39043 lt!1340708))))))

(declare-fun lt!1340700 () List!41025)

(assert (=> b!3858946 (and (= (size!30765 (_1!23186 (v!39043 lt!1340708))) lt!1340694) (= (originalCharacters!6928 (_1!23186 (v!39043 lt!1340708))) lt!1340692) (= (v!39043 lt!1340708) (tuple2!40105 (Token!11795 lt!1340711 (rule!9194 (_1!23186 (v!39043 lt!1340708))) lt!1340694 lt!1340692) lt!1340700)))))

(assert (=> b!3858946 (= lt!1340694 (size!30766 lt!1340692))))

(assert (=> b!3858946 e!2385519))

(declare-fun res!1562331 () Bool)

(assert (=> b!3858946 (=> (not res!1562331) (not e!2385519))))

(assert (=> b!3858946 (= res!1562331 (= (value!200982 (_1!23186 (v!39043 lt!1340708))) lt!1340711))))

(declare-fun apply!9571 (TokenValueInjection!12544 BalanceConc!24672) TokenValue!6558)

(declare-fun seqFromList!4599 (List!41025) BalanceConc!24672)

(assert (=> b!3858946 (= lt!1340711 (apply!9571 (transformation!6328 (rule!9194 (_1!23186 (v!39043 lt!1340708)))) (seqFromList!4599 lt!1340692)))))

(assert (=> b!3858946 (= (_2!23186 (v!39043 lt!1340708)) lt!1340700)))

(declare-fun lt!1340706 () Unit!58566)

(declare-fun lemmaSamePrefixThenSameSuffix!1648 (List!41025 List!41025 List!41025 List!41025 List!41025) Unit!58566)

(assert (=> b!3858946 (= lt!1340706 (lemmaSamePrefixThenSameSuffix!1648 lt!1340692 (_2!23186 (v!39043 lt!1340708)) lt!1340692 lt!1340700 lt!1340695))))

(declare-fun getSuffix!1882 (List!41025 List!41025) List!41025)

(assert (=> b!3858946 (= lt!1340700 (getSuffix!1882 lt!1340695 lt!1340692))))

(declare-fun isPrefix!3427 (List!41025 List!41025) Bool)

(assert (=> b!3858946 (isPrefix!3427 lt!1340692 lt!1340698)))

(assert (=> b!3858946 (= lt!1340698 (++!10414 lt!1340692 (_2!23186 (v!39043 lt!1340708))))))

(declare-fun lt!1340713 () Unit!58566)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2290 (List!41025 List!41025) Unit!58566)

(assert (=> b!3858946 (= lt!1340713 (lemmaConcatTwoListThenFirstIsPrefix!2290 lt!1340692 (_2!23186 (v!39043 lt!1340708))))))

(declare-fun list!15226 (BalanceConc!24672) List!41025)

(declare-fun charsOf!4156 (Token!11794) BalanceConc!24672)

(assert (=> b!3858946 (= lt!1340692 (list!15226 (charsOf!4156 (_1!23186 (v!39043 lt!1340708)))))))

(declare-fun ruleValid!2280 (LexerInterface!5917 Rule!12456) Bool)

(assert (=> b!3858946 (ruleValid!2280 thiss!20629 (rule!9194 (_1!23186 (v!39043 lt!1340708))))))

(declare-fun lt!1340705 () Unit!58566)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1360 (LexerInterface!5917 Rule!12456 List!41026) Unit!58566)

(assert (=> b!3858946 (= lt!1340705 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1360 thiss!20629 (rule!9194 (_1!23186 (v!39043 lt!1340708))) rules!2768))))

(declare-fun lt!1340709 () Unit!58566)

(declare-fun lemmaCharactersSize!989 (Token!11794) Unit!58566)

(assert (=> b!3858946 (= lt!1340709 (lemmaCharactersSize!989 (_1!23186 (v!39043 lt!1340708))))))

(declare-fun tp!1169718 () Bool)

(declare-fun b!3858947 () Bool)

(assert (=> b!3858947 (= e!2385518 (and tp!1169718 (inv!55061 (tag!7188 (rule!9194 (h!46323 suffixTokens!72)))) (inv!55065 (transformation!6328 (rule!9194 (h!46323 suffixTokens!72)))) e!2385513))))

(assert (=> b!3858948 (= e!2385508 (and tp!1169721 tp!1169728))))

(declare-fun b!3858949 () Bool)

(declare-fun tp!1169730 () Bool)

(assert (=> b!3858949 (= e!2385509 (and tp_is_empty!19437 tp!1169730))))

(assert (=> b!3858950 (= e!2385520 (and tp!1169716 tp!1169723))))

(assert (= (and start!361796 res!1562341) b!3858932))

(assert (= (and b!3858932 res!1562339) b!3858917))

(assert (= (and b!3858917 res!1562332) b!3858931))

(assert (= (and b!3858931 res!1562333) b!3858942))

(assert (= (and b!3858942 res!1562346) b!3858920))

(assert (= (and b!3858920 res!1562342) b!3858919))

(assert (= (and b!3858919 res!1562328) b!3858936))

(assert (= (and b!3858936 res!1562338) b!3858946))

(assert (= (and b!3858946 res!1562331) b!3858928))

(assert (= (and b!3858946 (not res!1562336)) b!3858945))

(assert (= (and b!3858945 (not res!1562327)) b!3858925))

(assert (= (and b!3858925 (not res!1562330)) b!3858930))

(assert (= (and b!3858930 (not res!1562344)) b!3858927))

(assert (= (and b!3858927 (not res!1562340)) b!3858940))

(assert (= (and b!3858940 (not res!1562334)) b!3858941))

(assert (= (and b!3858941 (not res!1562335)) b!3858934))

(assert (= (and b!3858934 (not res!1562345)) b!3858923))

(assert (= (and b!3858923 (not res!1562337)) b!3858918))

(assert (= (and b!3858918 (not res!1562343)) b!3858921))

(assert (= (and b!3858921 (not res!1562329)) b!3858929))

(assert (= (and start!361796 ((_ is Cons!40901) suffixResult!91)) b!3858949))

(assert (= (and start!361796 ((_ is Cons!40901) suffix!1176)) b!3858944))

(assert (= b!3858939 b!3858950))

(assert (= b!3858922 b!3858939))

(assert (= (and start!361796 ((_ is Cons!40902) rules!2768)) b!3858922))

(assert (= b!3858938 b!3858948))

(assert (= b!3858935 b!3858938))

(assert (= b!3858924 b!3858935))

(assert (= (and start!361796 ((_ is Cons!40903) prefixTokens!80)) b!3858924))

(assert (= b!3858947 b!3858933))

(assert (= b!3858943 b!3858947))

(assert (= b!3858937 b!3858943))

(assert (= (and start!361796 ((_ is Cons!40903) suffixTokens!72)) b!3858937))

(assert (= (and start!361796 ((_ is Cons!40901) prefix!426)) b!3858926))

(declare-fun m!4414445 () Bool)

(assert (=> b!3858927 m!4414445))

(declare-fun m!4414447 () Bool)

(assert (=> b!3858932 m!4414447))

(declare-fun m!4414449 () Bool)

(assert (=> b!3858940 m!4414449))

(declare-fun m!4414451 () Bool)

(assert (=> b!3858938 m!4414451))

(declare-fun m!4414453 () Bool)

(assert (=> b!3858938 m!4414453))

(declare-fun m!4414455 () Bool)

(assert (=> b!3858928 m!4414455))

(declare-fun m!4414457 () Bool)

(assert (=> b!3858920 m!4414457))

(declare-fun m!4414459 () Bool)

(assert (=> b!3858920 m!4414459))

(declare-fun m!4414461 () Bool)

(assert (=> b!3858920 m!4414461))

(declare-fun m!4414463 () Bool)

(assert (=> b!3858919 m!4414463))

(declare-fun m!4414465 () Bool)

(assert (=> b!3858923 m!4414465))

(declare-fun m!4414467 () Bool)

(assert (=> b!3858941 m!4414467))

(declare-fun m!4414469 () Bool)

(assert (=> b!3858941 m!4414469))

(declare-fun m!4414471 () Bool)

(assert (=> b!3858941 m!4414471))

(declare-fun m!4414473 () Bool)

(assert (=> b!3858942 m!4414473))

(declare-fun m!4414475 () Bool)

(assert (=> b!3858917 m!4414475))

(declare-fun m!4414477 () Bool)

(assert (=> b!3858929 m!4414477))

(declare-fun m!4414479 () Bool)

(assert (=> b!3858934 m!4414479))

(declare-fun m!4414481 () Bool)

(assert (=> b!3858934 m!4414481))

(declare-fun m!4414483 () Bool)

(assert (=> b!3858935 m!4414483))

(declare-fun m!4414485 () Bool)

(assert (=> b!3858939 m!4414485))

(declare-fun m!4414487 () Bool)

(assert (=> b!3858939 m!4414487))

(declare-fun m!4414489 () Bool)

(assert (=> b!3858946 m!4414489))

(declare-fun m!4414491 () Bool)

(assert (=> b!3858946 m!4414491))

(declare-fun m!4414493 () Bool)

(assert (=> b!3858946 m!4414493))

(declare-fun m!4414495 () Bool)

(assert (=> b!3858946 m!4414495))

(declare-fun m!4414497 () Bool)

(assert (=> b!3858946 m!4414497))

(declare-fun m!4414499 () Bool)

(assert (=> b!3858946 m!4414499))

(declare-fun m!4414501 () Bool)

(assert (=> b!3858946 m!4414501))

(declare-fun m!4414503 () Bool)

(assert (=> b!3858946 m!4414503))

(declare-fun m!4414505 () Bool)

(assert (=> b!3858946 m!4414505))

(declare-fun m!4414507 () Bool)

(assert (=> b!3858946 m!4414507))

(declare-fun m!4414509 () Bool)

(assert (=> b!3858946 m!4414509))

(declare-fun m!4414511 () Bool)

(assert (=> b!3858946 m!4414511))

(declare-fun m!4414513 () Bool)

(assert (=> b!3858946 m!4414513))

(assert (=> b!3858946 m!4414493))

(declare-fun m!4414515 () Bool)

(assert (=> b!3858946 m!4414515))

(assert (=> b!3858946 m!4414507))

(declare-fun m!4414517 () Bool)

(assert (=> b!3858947 m!4414517))

(declare-fun m!4414519 () Bool)

(assert (=> b!3858947 m!4414519))

(declare-fun m!4414521 () Bool)

(assert (=> b!3858930 m!4414521))

(declare-fun m!4414523 () Bool)

(assert (=> b!3858930 m!4414523))

(declare-fun m!4414525 () Bool)

(assert (=> b!3858918 m!4414525))

(assert (=> b!3858918 m!4414525))

(declare-fun m!4414527 () Bool)

(assert (=> b!3858918 m!4414527))

(declare-fun m!4414529 () Bool)

(assert (=> b!3858936 m!4414529))

(declare-fun m!4414531 () Bool)

(assert (=> b!3858931 m!4414531))

(declare-fun m!4414533 () Bool)

(assert (=> b!3858924 m!4414533))

(declare-fun m!4414535 () Bool)

(assert (=> b!3858943 m!4414535))

(declare-fun m!4414537 () Bool)

(assert (=> b!3858937 m!4414537))

(declare-fun m!4414539 () Bool)

(assert (=> b!3858945 m!4414539))

(check-sat (not b!3858949) b_and!288799 (not b!3858918) b_and!288805 (not b_next!104377) (not b_next!104383) (not b!3858928) (not b!3858943) (not b!3858932) (not b!3858930) (not b!3858944) (not b!3858947) (not b!3858937) (not b!3858926) (not b_next!104373) (not b!3858940) b_and!288797 (not b!3858924) (not b!3858942) (not b!3858936) (not b!3858922) (not b_next!104381) (not b!3858935) (not b_next!104375) (not b!3858945) b_and!288803 (not b!3858938) b_and!288801 (not b!3858917) b_and!288795 (not b!3858931) (not b!3858929) (not b_next!104379) (not b!3858920) tp_is_empty!19437 (not b!3858919) (not b!3858923) (not b!3858946) (not b!3858927) (not b!3858939) (not b!3858941) (not b!3858934))
(check-sat (not b_next!104373) b_and!288797 b_and!288799 (not b_next!104381) b_and!288801 b_and!288795 b_and!288805 (not b_next!104379) (not b_next!104377) (not b_next!104383) (not b_next!104375) b_and!288803)
