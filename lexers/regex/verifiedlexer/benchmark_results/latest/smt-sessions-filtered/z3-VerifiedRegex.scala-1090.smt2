; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56132 () Bool)

(assert start!56132)

(declare-fun b!595196 () Bool)

(declare-fun b_free!16805 () Bool)

(declare-fun b_next!16821 () Bool)

(assert (=> b!595196 (= b_free!16805 (not b_next!16821))))

(declare-fun tp!185586 () Bool)

(declare-fun b_and!58707 () Bool)

(assert (=> b!595196 (= tp!185586 b_and!58707)))

(declare-fun b_free!16807 () Bool)

(declare-fun b_next!16823 () Bool)

(assert (=> b!595196 (= b_free!16807 (not b_next!16823))))

(declare-fun tp!185578 () Bool)

(declare-fun b_and!58709 () Bool)

(assert (=> b!595196 (= tp!185578 b_and!58709)))

(declare-fun b!595213 () Bool)

(declare-fun b_free!16809 () Bool)

(declare-fun b_next!16825 () Bool)

(assert (=> b!595213 (= b_free!16809 (not b_next!16825))))

(declare-fun tp!185579 () Bool)

(declare-fun b_and!58711 () Bool)

(assert (=> b!595213 (= tp!185579 b_and!58711)))

(declare-fun b_free!16811 () Bool)

(declare-fun b_next!16827 () Bool)

(assert (=> b!595213 (= b_free!16811 (not b_next!16827))))

(declare-fun tp!185584 () Bool)

(declare-fun b_and!58713 () Bool)

(assert (=> b!595213 (= tp!185584 b_and!58713)))

(declare-fun b!595191 () Bool)

(declare-fun e!360155 () Bool)

(declare-fun e!360166 () Bool)

(assert (=> b!595191 (= e!360155 e!360166)))

(declare-fun res!256871 () Bool)

(assert (=> b!595191 (=> (not res!256871) (not e!360166))))

(declare-datatypes ((C!3924 0))(
  ( (C!3925 (val!2188 Int)) )
))
(declare-datatypes ((List!5920 0))(
  ( (Nil!5910) (Cons!5910 (h!11311 C!3924) (t!79357 List!5920)) )
))
(declare-fun lt!252627 () List!5920)

(declare-fun lt!252606 () List!5920)

(assert (=> b!595191 (= res!256871 (= lt!252627 lt!252606))))

(declare-fun lt!252608 () List!5920)

(declare-fun suffix!1342 () List!5920)

(declare-fun ++!1655 (List!5920 List!5920) List!5920)

(assert (=> b!595191 (= lt!252627 (++!1655 lt!252608 suffix!1342))))

(declare-fun b!595192 () Bool)

(declare-fun e!360157 () Bool)

(assert (=> b!595192 (= e!360157 e!360155)))

(declare-fun res!256867 () Bool)

(assert (=> b!595192 (=> (not res!256867) (not e!360155))))

(declare-datatypes ((Regex!1501 0))(
  ( (ElementMatch!1501 (c!110819 C!3924)) (Concat!2692 (regOne!3514 Regex!1501) (regTwo!3514 Regex!1501)) (EmptyExpr!1501) (Star!1501 (reg!1830 Regex!1501)) (EmptyLang!1501) (Union!1501 (regOne!3515 Regex!1501) (regTwo!3515 Regex!1501)) )
))
(declare-datatypes ((List!5921 0))(
  ( (Nil!5911) (Cons!5911 (h!11312 (_ BitVec 16)) (t!79358 List!5921)) )
))
(declare-datatypes ((IArray!3769 0))(
  ( (IArray!3770 (innerList!1942 List!5920)) )
))
(declare-datatypes ((Conc!1884 0))(
  ( (Node!1884 (left!4780 Conc!1884) (right!5110 Conc!1884) (csize!3998 Int) (cheight!2095 Int)) (Leaf!2975 (xs!4521 IArray!3769) (csize!3999 Int)) (Empty!1884) )
))
(declare-datatypes ((BalanceConc!3776 0))(
  ( (BalanceConc!3777 (c!110820 Conc!1884)) )
))
(declare-datatypes ((TokenValue!1191 0))(
  ( (FloatLiteralValue!2382 (text!8782 List!5921)) (TokenValueExt!1190 (__x!4280 Int)) (Broken!5955 (value!38100 List!5921)) (Object!1200) (End!1191) (Def!1191) (Underscore!1191) (Match!1191) (Else!1191) (Error!1191) (Case!1191) (If!1191) (Extends!1191) (Abstract!1191) (Class!1191) (Val!1191) (DelimiterValue!2382 (del!1251 List!5921)) (KeywordValue!1197 (value!38101 List!5921)) (CommentValue!2382 (value!38102 List!5921)) (WhitespaceValue!2382 (value!38103 List!5921)) (IndentationValue!1191 (value!38104 List!5921)) (String!7698) (Int32!1191) (Broken!5956 (value!38105 List!5921)) (Boolean!1192) (Unit!10746) (OperatorValue!1194 (op!1251 List!5921)) (IdentifierValue!2382 (value!38106 List!5921)) (IdentifierValue!2383 (value!38107 List!5921)) (WhitespaceValue!2383 (value!38108 List!5921)) (True!2382) (False!2382) (Broken!5957 (value!38109 List!5921)) (Broken!5958 (value!38110 List!5921)) (True!2383) (RightBrace!1191) (RightBracket!1191) (Colon!1191) (Null!1191) (Comma!1191) (LeftBracket!1191) (False!2383) (LeftBrace!1191) (ImaginaryLiteralValue!1191 (text!8783 List!5921)) (StringLiteralValue!3573 (value!38111 List!5921)) (EOFValue!1191 (value!38112 List!5921)) (IdentValue!1191 (value!38113 List!5921)) (DelimiterValue!2383 (value!38114 List!5921)) (DedentValue!1191 (value!38115 List!5921)) (NewLineValue!1191 (value!38116 List!5921)) (IntegerValue!3573 (value!38117 (_ BitVec 32)) (text!8784 List!5921)) (IntegerValue!3574 (value!38118 Int) (text!8785 List!5921)) (Times!1191) (Or!1191) (Equal!1191) (Minus!1191) (Broken!5959 (value!38119 List!5921)) (And!1191) (Div!1191) (LessEqual!1191) (Mod!1191) (Concat!2693) (Not!1191) (Plus!1191) (SpaceValue!1191 (value!38120 List!5921)) (IntegerValue!3575 (value!38121 Int) (text!8786 List!5921)) (StringLiteralValue!3574 (text!8787 List!5921)) (FloatLiteralValue!2383 (text!8788 List!5921)) (BytesLiteralValue!1191 (value!38122 List!5921)) (CommentValue!2383 (value!38123 List!5921)) (StringLiteralValue!3575 (value!38124 List!5921)) (ErrorTokenValue!1191 (msg!1252 List!5921)) )
))
(declare-datatypes ((String!7699 0))(
  ( (String!7700 (value!38125 String)) )
))
(declare-datatypes ((TokenValueInjection!2150 0))(
  ( (TokenValueInjection!2151 (toValue!2058 Int) (toChars!1917 Int)) )
))
(declare-datatypes ((Rule!2134 0))(
  ( (Rule!2135 (regex!1167 Regex!1501) (tag!1429 String!7699) (isSeparator!1167 Bool) (transformation!1167 TokenValueInjection!2150)) )
))
(declare-datatypes ((Token!2070 0))(
  ( (Token!2071 (value!38126 TokenValue!1191) (rule!1937 Rule!2134) (size!4668 Int) (originalCharacters!1206 List!5920)) )
))
(declare-datatypes ((tuple2!6828 0))(
  ( (tuple2!6829 (_1!3678 Token!2070) (_2!3678 List!5920)) )
))
(declare-datatypes ((Option!1518 0))(
  ( (None!1517) (Some!1517 (v!16404 tuple2!6828)) )
))
(declare-fun lt!252604 () Option!1518)

(get-info :version)

(assert (=> b!595192 (= res!256867 ((_ is Some!1517) lt!252604))))

(declare-datatypes ((List!5922 0))(
  ( (Nil!5912) (Cons!5912 (h!11313 Rule!2134) (t!79359 List!5922)) )
))
(declare-fun rules!3103 () List!5922)

(declare-datatypes ((LexerInterface!1053 0))(
  ( (LexerInterfaceExt!1050 (__x!4281 Int)) (Lexer!1051) )
))
(declare-fun thiss!22590 () LexerInterface!1053)

(declare-fun input!2705 () List!5920)

(declare-fun maxPrefix!751 (LexerInterface!1053 List!5922 List!5920) Option!1518)

(assert (=> b!595192 (= lt!252604 (maxPrefix!751 thiss!22590 rules!3103 input!2705))))

(declare-fun b!595193 () Bool)

(declare-fun e!360153 () Bool)

(declare-fun tp_is_empty!3357 () Bool)

(declare-fun tp!185585 () Bool)

(assert (=> b!595193 (= e!360153 (and tp_is_empty!3357 tp!185585))))

(declare-fun b!595194 () Bool)

(declare-fun e!360154 () Bool)

(assert (=> b!595194 (= e!360154 e!360157)))

(declare-fun res!256868 () Bool)

(assert (=> b!595194 (=> (not res!256868) (not e!360157))))

(declare-fun lt!252610 () tuple2!6828)

(declare-fun token!491 () Token!2070)

(assert (=> b!595194 (= res!256868 (and (= (_1!3678 lt!252610) token!491) (= (_2!3678 lt!252610) suffix!1342)))))

(declare-fun lt!252628 () Option!1518)

(declare-fun get!2265 (Option!1518) tuple2!6828)

(assert (=> b!595194 (= lt!252610 (get!2265 lt!252628))))

(declare-fun b!595195 () Bool)

(declare-datatypes ((Unit!10747 0))(
  ( (Unit!10748) )
))
(declare-fun e!360168 () Unit!10747)

(declare-fun Unit!10749 () Unit!10747)

(assert (=> b!595195 (= e!360168 Unit!10749)))

(declare-fun e!360164 () Bool)

(assert (=> b!595196 (= e!360164 (and tp!185586 tp!185578))))

(declare-fun lt!252611 () List!5920)

(declare-fun b!595197 () Bool)

(declare-fun e!360162 () Bool)

(declare-fun lt!252618 () Int)

(declare-fun lt!252626 () TokenValue!1191)

(declare-fun lt!252624 () List!5920)

(assert (=> b!595197 (= e!360162 (and (= (size!4668 (_1!3678 (v!16404 lt!252604))) lt!252618) (= (originalCharacters!1206 (_1!3678 (v!16404 lt!252604))) lt!252624) (= (v!16404 lt!252604) (tuple2!6829 (Token!2071 lt!252626 (rule!1937 (_1!3678 (v!16404 lt!252604))) lt!252618 lt!252624) lt!252611))))))

(declare-fun b!595198 () Bool)

(declare-fun e!360151 () Bool)

(declare-fun e!360150 () Bool)

(assert (=> b!595198 (= e!360151 e!360150)))

(declare-fun res!256875 () Bool)

(assert (=> b!595198 (=> (not res!256875) (not e!360150))))

(assert (=> b!595198 (= res!256875 (= lt!252608 input!2705))))

(declare-fun list!2476 (BalanceConc!3776) List!5920)

(declare-fun charsOf!796 (Token!2070) BalanceConc!3776)

(assert (=> b!595198 (= lt!252608 (list!2476 (charsOf!796 token!491)))))

(declare-fun e!360158 () Bool)

(declare-fun b!595199 () Bool)

(declare-fun tp!185581 () Bool)

(declare-fun inv!7488 (String!7699) Bool)

(declare-fun inv!7491 (TokenValueInjection!2150) Bool)

(assert (=> b!595199 (= e!360158 (and tp!185581 (inv!7488 (tag!1429 (h!11313 rules!3103))) (inv!7491 (transformation!1167 (h!11313 rules!3103))) e!360164))))

(declare-fun b!595200 () Bool)

(declare-fun e!360152 () Bool)

(declare-fun apply!1420 (TokenValueInjection!2150 BalanceConc!3776) TokenValue!1191)

(declare-fun seqFromList!1343 (List!5920) BalanceConc!3776)

(assert (=> b!595200 (= e!360152 (= (value!38126 token!491) (apply!1420 (transformation!1167 (rule!1937 token!491)) (seqFromList!1343 lt!252608))))))

(declare-fun b!595201 () Bool)

(declare-fun e!360165 () Bool)

(declare-fun tp!185577 () Bool)

(assert (=> b!595201 (= e!360165 (and tp_is_empty!3357 tp!185577))))

(declare-fun b!595202 () Bool)

(assert (=> b!595202 (= e!360150 e!360154)))

(declare-fun res!256866 () Bool)

(assert (=> b!595202 (=> (not res!256866) (not e!360154))))

(declare-fun isDefined!1329 (Option!1518) Bool)

(assert (=> b!595202 (= res!256866 (isDefined!1329 lt!252628))))

(assert (=> b!595202 (= lt!252628 (maxPrefix!751 thiss!22590 rules!3103 lt!252606))))

(assert (=> b!595202 (= lt!252606 (++!1655 input!2705 suffix!1342))))

(declare-fun b!595203 () Bool)

(declare-fun e!360161 () Bool)

(declare-fun tp!185583 () Bool)

(assert (=> b!595203 (= e!360161 (and e!360158 tp!185583))))

(declare-fun e!360149 () Bool)

(declare-fun e!360159 () Bool)

(declare-fun tp!185580 () Bool)

(declare-fun b!595204 () Bool)

(declare-fun inv!21 (TokenValue!1191) Bool)

(assert (=> b!595204 (= e!360149 (and (inv!21 (value!38126 token!491)) e!360159 tp!185580))))

(declare-fun b!595205 () Bool)

(declare-fun Unit!10750 () Unit!10747)

(assert (=> b!595205 (= e!360168 Unit!10750)))

(assert (=> b!595205 false))

(declare-fun b!595206 () Bool)

(declare-fun e!360163 () Bool)

(assert (=> b!595206 (= e!360166 (not e!360163))))

(declare-fun res!256869 () Bool)

(assert (=> b!595206 (=> res!256869 e!360163)))

(declare-fun isPrefix!795 (List!5920 List!5920) Bool)

(assert (=> b!595206 (= res!256869 (not (isPrefix!795 input!2705 lt!252627)))))

(assert (=> b!595206 (isPrefix!795 lt!252608 lt!252627)))

(declare-fun lt!252616 () Unit!10747)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!640 (List!5920 List!5920) Unit!10747)

(assert (=> b!595206 (= lt!252616 (lemmaConcatTwoListThenFirstIsPrefix!640 lt!252608 suffix!1342))))

(assert (=> b!595206 (isPrefix!795 input!2705 lt!252606)))

(declare-fun lt!252622 () Unit!10747)

(assert (=> b!595206 (= lt!252622 (lemmaConcatTwoListThenFirstIsPrefix!640 input!2705 suffix!1342))))

(assert (=> b!595206 e!360162))

(declare-fun res!256864 () Bool)

(assert (=> b!595206 (=> (not res!256864) (not e!360162))))

(assert (=> b!595206 (= res!256864 (= (value!38126 (_1!3678 (v!16404 lt!252604))) lt!252626))))

(assert (=> b!595206 (= lt!252626 (apply!1420 (transformation!1167 (rule!1937 (_1!3678 (v!16404 lt!252604)))) (seqFromList!1343 lt!252624)))))

(declare-fun lt!252609 () Unit!10747)

(declare-fun lemmaInv!275 (TokenValueInjection!2150) Unit!10747)

(assert (=> b!595206 (= lt!252609 (lemmaInv!275 (transformation!1167 (rule!1937 token!491))))))

(declare-fun lt!252615 () Unit!10747)

(assert (=> b!595206 (= lt!252615 (lemmaInv!275 (transformation!1167 (rule!1937 (_1!3678 (v!16404 lt!252604))))))))

(declare-fun ruleValid!365 (LexerInterface!1053 Rule!2134) Bool)

(assert (=> b!595206 (ruleValid!365 thiss!22590 (rule!1937 token!491))))

(declare-fun lt!252619 () Unit!10747)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!212 (LexerInterface!1053 Rule!2134 List!5922) Unit!10747)

(assert (=> b!595206 (= lt!252619 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!212 thiss!22590 (rule!1937 token!491) rules!3103))))

(assert (=> b!595206 (ruleValid!365 thiss!22590 (rule!1937 (_1!3678 (v!16404 lt!252604))))))

(declare-fun lt!252620 () Unit!10747)

(assert (=> b!595206 (= lt!252620 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!212 thiss!22590 (rule!1937 (_1!3678 (v!16404 lt!252604))) rules!3103))))

(assert (=> b!595206 (isPrefix!795 input!2705 input!2705)))

(declare-fun lt!252623 () Unit!10747)

(declare-fun lemmaIsPrefixRefl!531 (List!5920 List!5920) Unit!10747)

(assert (=> b!595206 (= lt!252623 (lemmaIsPrefixRefl!531 input!2705 input!2705))))

(assert (=> b!595206 (= (_2!3678 (v!16404 lt!252604)) lt!252611)))

(declare-fun lt!252617 () Unit!10747)

(declare-fun lemmaSamePrefixThenSameSuffix!508 (List!5920 List!5920 List!5920 List!5920 List!5920) Unit!10747)

(assert (=> b!595206 (= lt!252617 (lemmaSamePrefixThenSameSuffix!508 lt!252624 (_2!3678 (v!16404 lt!252604)) lt!252624 lt!252611 input!2705))))

(declare-fun getSuffix!312 (List!5920 List!5920) List!5920)

(assert (=> b!595206 (= lt!252611 (getSuffix!312 input!2705 lt!252624))))

(assert (=> b!595206 (isPrefix!795 lt!252624 (++!1655 lt!252624 (_2!3678 (v!16404 lt!252604))))))

(declare-fun lt!252607 () Unit!10747)

(assert (=> b!595206 (= lt!252607 (lemmaConcatTwoListThenFirstIsPrefix!640 lt!252624 (_2!3678 (v!16404 lt!252604))))))

(declare-fun lt!252612 () Unit!10747)

(declare-fun lemmaCharactersSize!226 (Token!2070) Unit!10747)

(assert (=> b!595206 (= lt!252612 (lemmaCharactersSize!226 token!491))))

(declare-fun lt!252621 () Unit!10747)

(assert (=> b!595206 (= lt!252621 (lemmaCharactersSize!226 (_1!3678 (v!16404 lt!252604))))))

(declare-fun lt!252605 () Unit!10747)

(assert (=> b!595206 (= lt!252605 e!360168)))

(declare-fun c!110818 () Bool)

(declare-fun size!4669 (List!5920) Int)

(assert (=> b!595206 (= c!110818 (> lt!252618 (size!4669 lt!252608)))))

(assert (=> b!595206 (= lt!252618 (size!4669 lt!252624))))

(assert (=> b!595206 (= lt!252624 (list!2476 (charsOf!796 (_1!3678 (v!16404 lt!252604)))))))

(assert (=> b!595206 (= lt!252604 (Some!1517 (v!16404 lt!252604)))))

(declare-fun lt!252614 () Unit!10747)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!240 (List!5920 List!5920 List!5920 List!5920) Unit!10747)

(assert (=> b!595206 (= lt!252614 (lemmaConcatSameAndSameSizesThenSameLists!240 lt!252608 suffix!1342 input!2705 suffix!1342))))

(declare-fun res!256873 () Bool)

(assert (=> start!56132 (=> (not res!256873) (not e!360151))))

(assert (=> start!56132 (= res!256873 ((_ is Lexer!1051) thiss!22590))))

(assert (=> start!56132 e!360151))

(assert (=> start!56132 e!360165))

(assert (=> start!56132 e!360161))

(declare-fun inv!7492 (Token!2070) Bool)

(assert (=> start!56132 (and (inv!7492 token!491) e!360149)))

(assert (=> start!56132 true))

(assert (=> start!56132 e!360153))

(declare-fun b!595207 () Bool)

(declare-fun res!256876 () Bool)

(assert (=> b!595207 (=> (not res!256876) (not e!360162))))

(assert (=> b!595207 (= res!256876 (= (size!4668 (_1!3678 (v!16404 lt!252604))) (size!4669 (originalCharacters!1206 (_1!3678 (v!16404 lt!252604))))))))

(declare-fun b!595208 () Bool)

(declare-fun e!360156 () Bool)

(declare-fun tp!185582 () Bool)

(assert (=> b!595208 (= e!360159 (and tp!185582 (inv!7488 (tag!1429 (rule!1937 token!491))) (inv!7491 (transformation!1167 (rule!1937 token!491))) e!360156))))

(declare-fun b!595209 () Bool)

(declare-fun res!256874 () Bool)

(assert (=> b!595209 (=> (not res!256874) (not e!360151))))

(declare-fun isEmpty!4267 (List!5922) Bool)

(assert (=> b!595209 (= res!256874 (not (isEmpty!4267 rules!3103)))))

(declare-fun b!595210 () Bool)

(assert (=> b!595210 (= e!360163 true)))

(assert (=> b!595210 e!360152))

(declare-fun res!256865 () Bool)

(assert (=> b!595210 (=> (not res!256865) (not e!360152))))

(declare-fun lt!252625 () List!5920)

(assert (=> b!595210 (= res!256865 (= suffix!1342 lt!252625))))

(declare-fun lt!252613 () Unit!10747)

(assert (=> b!595210 (= lt!252613 (lemmaSamePrefixThenSameSuffix!508 lt!252608 suffix!1342 lt!252608 lt!252625 lt!252606))))

(assert (=> b!595210 (= lt!252625 (getSuffix!312 lt!252606 lt!252608))))

(declare-fun b!595211 () Bool)

(declare-fun res!256870 () Bool)

(assert (=> b!595211 (=> (not res!256870) (not e!360151))))

(declare-fun isEmpty!4268 (List!5920) Bool)

(assert (=> b!595211 (= res!256870 (not (isEmpty!4268 input!2705)))))

(declare-fun b!595212 () Bool)

(declare-fun res!256872 () Bool)

(assert (=> b!595212 (=> (not res!256872) (not e!360151))))

(declare-fun rulesInvariant!1016 (LexerInterface!1053 List!5922) Bool)

(assert (=> b!595212 (= res!256872 (rulesInvariant!1016 thiss!22590 rules!3103))))

(assert (=> b!595213 (= e!360156 (and tp!185579 tp!185584))))

(assert (= (and start!56132 res!256873) b!595209))

(assert (= (and b!595209 res!256874) b!595212))

(assert (= (and b!595212 res!256872) b!595211))

(assert (= (and b!595211 res!256870) b!595198))

(assert (= (and b!595198 res!256875) b!595202))

(assert (= (and b!595202 res!256866) b!595194))

(assert (= (and b!595194 res!256868) b!595192))

(assert (= (and b!595192 res!256867) b!595191))

(assert (= (and b!595191 res!256871) b!595206))

(assert (= (and b!595206 c!110818) b!595205))

(assert (= (and b!595206 (not c!110818)) b!595195))

(assert (= (and b!595206 res!256864) b!595207))

(assert (= (and b!595207 res!256876) b!595197))

(assert (= (and b!595206 (not res!256869)) b!595210))

(assert (= (and b!595210 res!256865) b!595200))

(assert (= (and start!56132 ((_ is Cons!5910) suffix!1342)) b!595201))

(assert (= b!595199 b!595196))

(assert (= b!595203 b!595199))

(assert (= (and start!56132 ((_ is Cons!5912) rules!3103)) b!595203))

(assert (= b!595208 b!595213))

(assert (= b!595204 b!595208))

(assert (= start!56132 b!595204))

(assert (= (and start!56132 ((_ is Cons!5910) input!2705)) b!595193))

(declare-fun m!857599 () Bool)

(assert (=> start!56132 m!857599))

(declare-fun m!857601 () Bool)

(assert (=> b!595209 m!857601))

(declare-fun m!857603 () Bool)

(assert (=> b!595204 m!857603))

(declare-fun m!857605 () Bool)

(assert (=> b!595208 m!857605))

(declare-fun m!857607 () Bool)

(assert (=> b!595208 m!857607))

(declare-fun m!857609 () Bool)

(assert (=> b!595210 m!857609))

(declare-fun m!857611 () Bool)

(assert (=> b!595210 m!857611))

(declare-fun m!857613 () Bool)

(assert (=> b!595200 m!857613))

(assert (=> b!595200 m!857613))

(declare-fun m!857615 () Bool)

(assert (=> b!595200 m!857615))

(declare-fun m!857617 () Bool)

(assert (=> b!595202 m!857617))

(declare-fun m!857619 () Bool)

(assert (=> b!595202 m!857619))

(declare-fun m!857621 () Bool)

(assert (=> b!595202 m!857621))

(declare-fun m!857623 () Bool)

(assert (=> b!595191 m!857623))

(declare-fun m!857625 () Bool)

(assert (=> b!595211 m!857625))

(declare-fun m!857627 () Bool)

(assert (=> b!595198 m!857627))

(assert (=> b!595198 m!857627))

(declare-fun m!857629 () Bool)

(assert (=> b!595198 m!857629))

(declare-fun m!857631 () Bool)

(assert (=> b!595192 m!857631))

(declare-fun m!857633 () Bool)

(assert (=> b!595206 m!857633))

(declare-fun m!857635 () Bool)

(assert (=> b!595206 m!857635))

(declare-fun m!857637 () Bool)

(assert (=> b!595206 m!857637))

(declare-fun m!857639 () Bool)

(assert (=> b!595206 m!857639))

(declare-fun m!857641 () Bool)

(assert (=> b!595206 m!857641))

(declare-fun m!857643 () Bool)

(assert (=> b!595206 m!857643))

(declare-fun m!857645 () Bool)

(assert (=> b!595206 m!857645))

(declare-fun m!857647 () Bool)

(assert (=> b!595206 m!857647))

(assert (=> b!595206 m!857633))

(declare-fun m!857649 () Bool)

(assert (=> b!595206 m!857649))

(declare-fun m!857651 () Bool)

(assert (=> b!595206 m!857651))

(declare-fun m!857653 () Bool)

(assert (=> b!595206 m!857653))

(assert (=> b!595206 m!857649))

(declare-fun m!857655 () Bool)

(assert (=> b!595206 m!857655))

(declare-fun m!857657 () Bool)

(assert (=> b!595206 m!857657))

(declare-fun m!857659 () Bool)

(assert (=> b!595206 m!857659))

(declare-fun m!857661 () Bool)

(assert (=> b!595206 m!857661))

(declare-fun m!857663 () Bool)

(assert (=> b!595206 m!857663))

(declare-fun m!857665 () Bool)

(assert (=> b!595206 m!857665))

(declare-fun m!857667 () Bool)

(assert (=> b!595206 m!857667))

(declare-fun m!857669 () Bool)

(assert (=> b!595206 m!857669))

(declare-fun m!857671 () Bool)

(assert (=> b!595206 m!857671))

(declare-fun m!857673 () Bool)

(assert (=> b!595206 m!857673))

(declare-fun m!857675 () Bool)

(assert (=> b!595206 m!857675))

(declare-fun m!857677 () Bool)

(assert (=> b!595206 m!857677))

(declare-fun m!857679 () Bool)

(assert (=> b!595206 m!857679))

(declare-fun m!857681 () Bool)

(assert (=> b!595206 m!857681))

(declare-fun m!857683 () Bool)

(assert (=> b!595206 m!857683))

(assert (=> b!595206 m!857639))

(declare-fun m!857685 () Bool)

(assert (=> b!595206 m!857685))

(declare-fun m!857687 () Bool)

(assert (=> b!595212 m!857687))

(declare-fun m!857689 () Bool)

(assert (=> b!595199 m!857689))

(declare-fun m!857691 () Bool)

(assert (=> b!595199 m!857691))

(declare-fun m!857693 () Bool)

(assert (=> b!595207 m!857693))

(declare-fun m!857695 () Bool)

(assert (=> b!595194 m!857695))

(check-sat (not b!595209) (not b!595212) (not b!595194) (not b!595211) (not b!595202) (not b_next!16821) (not b!595199) b_and!58713 (not b!595198) (not b_next!16827) (not b!595207) (not b!595206) b_and!58707 (not b!595210) (not b!595200) (not b_next!16823) (not b!595191) (not b!595208) (not start!56132) b_and!58709 tp_is_empty!3357 (not b!595203) (not b!595193) (not b!595201) (not b!595192) b_and!58711 (not b_next!16825) (not b!595204))
(check-sat (not b_next!16821) (not b_next!16823) b_and!58713 (not b_next!16827) b_and!58709 b_and!58707 b_and!58711 (not b_next!16825))
