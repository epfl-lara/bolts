; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377784 () Bool)

(assert start!377784)

(declare-fun b!4011168 () Bool)

(declare-fun b_free!111561 () Bool)

(declare-fun b_next!112265 () Bool)

(assert (=> b!4011168 (= b_free!111561 (not b_next!112265))))

(declare-fun tp!1220202 () Bool)

(declare-fun b_and!308135 () Bool)

(assert (=> b!4011168 (= tp!1220202 b_and!308135)))

(declare-fun b_free!111563 () Bool)

(declare-fun b_next!112267 () Bool)

(assert (=> b!4011168 (= b_free!111563 (not b_next!112267))))

(declare-fun tp!1220209 () Bool)

(declare-fun b_and!308137 () Bool)

(assert (=> b!4011168 (= tp!1220209 b_and!308137)))

(declare-fun b!4011175 () Bool)

(declare-fun b_free!111565 () Bool)

(declare-fun b_next!112269 () Bool)

(assert (=> b!4011175 (= b_free!111565 (not b_next!112269))))

(declare-fun tp!1220207 () Bool)

(declare-fun b_and!308139 () Bool)

(assert (=> b!4011175 (= tp!1220207 b_and!308139)))

(declare-fun b_free!111567 () Bool)

(declare-fun b_next!112271 () Bool)

(assert (=> b!4011175 (= b_free!111567 (not b_next!112271))))

(declare-fun tp!1220203 () Bool)

(declare-fun b_and!308141 () Bool)

(assert (=> b!4011175 (= tp!1220203 b_and!308141)))

(declare-fun b!4011155 () Bool)

(declare-fun e!2487573 () Bool)

(declare-datatypes ((C!23652 0))(
  ( (C!23653 (val!13920 Int)) )
))
(declare-datatypes ((List!43050 0))(
  ( (Nil!42926) (Cons!42926 (h!48346 C!23652) (t!332981 List!43050)) )
))
(declare-fun lt!1420143 () List!43050)

(declare-fun lt!1420160 () List!43050)

(assert (=> b!4011155 (= e!2487573 (= lt!1420143 lt!1420160))))

(declare-fun prefix!494 () List!43050)

(declare-fun lt!1420154 () List!43050)

(declare-fun ++!11230 (List!43050 List!43050) List!43050)

(assert (=> b!4011155 (= lt!1420143 (++!11230 prefix!494 lt!1420154))))

(declare-fun lt!1420150 () List!43050)

(declare-fun lt!1420137 () List!43050)

(assert (=> b!4011155 (= lt!1420143 (++!11230 lt!1420150 lt!1420137))))

(declare-fun newSuffix!27 () List!43050)

(declare-datatypes ((Unit!61951 0))(
  ( (Unit!61952) )
))
(declare-fun lt!1420170 () Unit!61951)

(declare-fun lemmaConcatAssociativity!2540 (List!43050 List!43050 List!43050) Unit!61951)

(assert (=> b!4011155 (= lt!1420170 (lemmaConcatAssociativity!2540 prefix!494 newSuffix!27 lt!1420137))))

(declare-fun b!4011156 () Bool)

(declare-fun e!2487575 () Bool)

(declare-fun e!2487570 () Bool)

(assert (=> b!4011156 (= e!2487575 e!2487570)))

(declare-fun res!1630500 () Bool)

(assert (=> b!4011156 (=> res!1630500 e!2487570)))

(declare-datatypes ((IArray!26083 0))(
  ( (IArray!26084 (innerList!13099 List!43050)) )
))
(declare-datatypes ((Conc!13039 0))(
  ( (Node!13039 (left!32383 Conc!13039) (right!32713 Conc!13039) (csize!26308 Int) (cheight!13250 Int)) (Leaf!20160 (xs!16345 IArray!26083) (csize!26309 Int)) (Empty!13039) )
))
(declare-datatypes ((BalanceConc!25672 0))(
  ( (BalanceConc!25673 (c!693544 Conc!13039)) )
))
(declare-datatypes ((List!43051 0))(
  ( (Nil!42927) (Cons!42927 (h!48347 (_ BitVec 16)) (t!332982 List!43051)) )
))
(declare-datatypes ((TokenValue!7058 0))(
  ( (FloatLiteralValue!14116 (text!49851 List!43051)) (TokenValueExt!7057 (__x!26333 Int)) (Broken!35290 (value!215206 List!43051)) (Object!7181) (End!7058) (Def!7058) (Underscore!7058) (Match!7058) (Else!7058) (Error!7058) (Case!7058) (If!7058) (Extends!7058) (Abstract!7058) (Class!7058) (Val!7058) (DelimiterValue!14116 (del!7118 List!43051)) (KeywordValue!7064 (value!215207 List!43051)) (CommentValue!14116 (value!215208 List!43051)) (WhitespaceValue!14116 (value!215209 List!43051)) (IndentationValue!7058 (value!215210 List!43051)) (String!49007) (Int32!7058) (Broken!35291 (value!215211 List!43051)) (Boolean!7059) (Unit!61953) (OperatorValue!7061 (op!7118 List!43051)) (IdentifierValue!14116 (value!215212 List!43051)) (IdentifierValue!14117 (value!215213 List!43051)) (WhitespaceValue!14117 (value!215214 List!43051)) (True!14116) (False!14116) (Broken!35292 (value!215215 List!43051)) (Broken!35293 (value!215216 List!43051)) (True!14117) (RightBrace!7058) (RightBracket!7058) (Colon!7058) (Null!7058) (Comma!7058) (LeftBracket!7058) (False!14117) (LeftBrace!7058) (ImaginaryLiteralValue!7058 (text!49852 List!43051)) (StringLiteralValue!21174 (value!215217 List!43051)) (EOFValue!7058 (value!215218 List!43051)) (IdentValue!7058 (value!215219 List!43051)) (DelimiterValue!14117 (value!215220 List!43051)) (DedentValue!7058 (value!215221 List!43051)) (NewLineValue!7058 (value!215222 List!43051)) (IntegerValue!21174 (value!215223 (_ BitVec 32)) (text!49853 List!43051)) (IntegerValue!21175 (value!215224 Int) (text!49854 List!43051)) (Times!7058) (Or!7058) (Equal!7058) (Minus!7058) (Broken!35294 (value!215225 List!43051)) (And!7058) (Div!7058) (LessEqual!7058) (Mod!7058) (Concat!18791) (Not!7058) (Plus!7058) (SpaceValue!7058 (value!215226 List!43051)) (IntegerValue!21176 (value!215227 Int) (text!49855 List!43051)) (StringLiteralValue!21175 (text!49856 List!43051)) (FloatLiteralValue!14117 (text!49857 List!43051)) (BytesLiteralValue!7058 (value!215228 List!43051)) (CommentValue!14117 (value!215229 List!43051)) (StringLiteralValue!21176 (value!215230 List!43051)) (ErrorTokenValue!7058 (msg!7119 List!43051)) )
))
(declare-datatypes ((Regex!11733 0))(
  ( (ElementMatch!11733 (c!693545 C!23652)) (Concat!18792 (regOne!23978 Regex!11733) (regTwo!23978 Regex!11733)) (EmptyExpr!11733) (Star!11733 (reg!12062 Regex!11733)) (EmptyLang!11733) (Union!11733 (regOne!23979 Regex!11733) (regTwo!23979 Regex!11733)) )
))
(declare-datatypes ((String!49008 0))(
  ( (String!49009 (value!215231 String)) )
))
(declare-datatypes ((TokenValueInjection!13544 0))(
  ( (TokenValueInjection!13545 (toValue!9332 Int) (toChars!9191 Int)) )
))
(declare-datatypes ((Rule!13456 0))(
  ( (Rule!13457 (regex!6828 Regex!11733) (tag!7688 String!49008) (isSeparator!6828 Bool) (transformation!6828 TokenValueInjection!13544)) )
))
(declare-datatypes ((Token!12794 0))(
  ( (Token!12795 (value!215232 TokenValue!7058) (rule!9872 Rule!13456) (size!32097 Int) (originalCharacters!7428 List!43050)) )
))
(declare-datatypes ((tuple2!42078 0))(
  ( (tuple2!42079 (_1!24173 Token!12794) (_2!24173 List!43050)) )
))
(declare-datatypes ((Option!9242 0))(
  ( (None!9241) (Some!9241 (v!39609 tuple2!42078)) )
))
(declare-fun lt!1420134 () Option!9242)

(declare-fun lt!1420149 () Option!9242)

(assert (=> b!4011156 (= res!1630500 (not (= lt!1420134 (Some!9241 (v!39609 lt!1420149)))))))

(declare-fun lt!1420169 () List!43050)

(declare-fun newSuffixResult!27 () List!43050)

(declare-fun isPrefix!3915 (List!43050 List!43050) Bool)

(assert (=> b!4011156 (isPrefix!3915 lt!1420169 (++!11230 lt!1420169 newSuffixResult!27))))

(declare-fun lt!1420124 () Unit!61951)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2756 (List!43050 List!43050) Unit!61951)

(assert (=> b!4011156 (= lt!1420124 (lemmaConcatTwoListThenFirstIsPrefix!2756 lt!1420169 newSuffixResult!27))))

(assert (=> b!4011156 (isPrefix!3915 lt!1420169 (++!11230 lt!1420169 (_2!24173 (v!39609 lt!1420149))))))

(declare-fun lt!1420148 () Unit!61951)

(assert (=> b!4011156 (= lt!1420148 (lemmaConcatTwoListThenFirstIsPrefix!2756 lt!1420169 (_2!24173 (v!39609 lt!1420149))))))

(declare-fun lt!1420131 () Int)

(declare-fun lt!1420163 () TokenValue!7058)

(assert (=> b!4011156 (= lt!1420134 (Some!9241 (tuple2!42079 (Token!12795 lt!1420163 (rule!9872 (_1!24173 (v!39609 lt!1420149))) lt!1420131 lt!1420169) (_2!24173 (v!39609 lt!1420149)))))))

(declare-datatypes ((LexerInterface!6417 0))(
  ( (LexerInterfaceExt!6414 (__x!26334 Int)) (Lexer!6415) )
))
(declare-fun thiss!21717 () LexerInterface!6417)

(declare-fun maxPrefixOneRule!2735 (LexerInterface!6417 Rule!13456 List!43050) Option!9242)

(assert (=> b!4011156 (= lt!1420134 (maxPrefixOneRule!2735 thiss!21717 (rule!9872 (_1!24173 (v!39609 lt!1420149))) lt!1420150))))

(declare-fun size!32098 (List!43050) Int)

(assert (=> b!4011156 (= lt!1420131 (size!32098 lt!1420169))))

(declare-fun apply!10025 (TokenValueInjection!13544 BalanceConc!25672) TokenValue!7058)

(declare-fun seqFromList!5053 (List!43050) BalanceConc!25672)

(assert (=> b!4011156 (= lt!1420163 (apply!10025 (transformation!6828 (rule!9872 (_1!24173 (v!39609 lt!1420149)))) (seqFromList!5053 lt!1420169)))))

(declare-datatypes ((List!43052 0))(
  ( (Nil!42928) (Cons!42928 (h!48348 Rule!13456) (t!332983 List!43052)) )
))
(declare-fun rules!2999 () List!43052)

(declare-fun lt!1420145 () Unit!61951)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1553 (LexerInterface!6417 List!43052 List!43050 List!43050 List!43050 Rule!13456) Unit!61951)

(assert (=> b!4011156 (= lt!1420145 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1553 thiss!21717 rules!2999 lt!1420169 lt!1420150 (_2!24173 (v!39609 lt!1420149)) (rule!9872 (_1!24173 (v!39609 lt!1420149)))))))

(declare-fun list!15954 (BalanceConc!25672) List!43050)

(declare-fun charsOf!4644 (Token!12794) BalanceConc!25672)

(assert (=> b!4011156 (= lt!1420169 (list!15954 (charsOf!4644 (_1!24173 (v!39609 lt!1420149)))))))

(declare-fun lt!1420156 () Unit!61951)

(declare-fun lemmaInv!1043 (TokenValueInjection!13544) Unit!61951)

(assert (=> b!4011156 (= lt!1420156 (lemmaInv!1043 (transformation!6828 (rule!9872 (_1!24173 (v!39609 lt!1420149))))))))

(declare-fun ruleValid!2760 (LexerInterface!6417 Rule!13456) Bool)

(assert (=> b!4011156 (ruleValid!2760 thiss!21717 (rule!9872 (_1!24173 (v!39609 lt!1420149))))))

(declare-fun lt!1420135 () Unit!61951)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1834 (LexerInterface!6417 Rule!13456 List!43052) Unit!61951)

(assert (=> b!4011156 (= lt!1420135 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1834 thiss!21717 (rule!9872 (_1!24173 (v!39609 lt!1420149))) rules!2999))))

(declare-fun lt!1420142 () Unit!61951)

(declare-fun token!484 () Token!12794)

(declare-fun lemmaCharactersSize!1387 (Token!12794) Unit!61951)

(assert (=> b!4011156 (= lt!1420142 (lemmaCharactersSize!1387 token!484))))

(declare-fun lt!1420151 () Unit!61951)

(assert (=> b!4011156 (= lt!1420151 (lemmaCharactersSize!1387 (_1!24173 (v!39609 lt!1420149))))))

(declare-fun res!1630505 () Bool)

(declare-fun e!2487587 () Bool)

(assert (=> start!377784 (=> (not res!1630505) (not e!2487587))))

(get-info :version)

(assert (=> start!377784 (= res!1630505 ((_ is Lexer!6415) thiss!21717))))

(assert (=> start!377784 e!2487587))

(declare-fun e!2487564 () Bool)

(assert (=> start!377784 e!2487564))

(declare-fun e!2487567 () Bool)

(declare-fun inv!57338 (Token!12794) Bool)

(assert (=> start!377784 (and (inv!57338 token!484) e!2487567)))

(declare-fun e!2487574 () Bool)

(assert (=> start!377784 e!2487574))

(declare-fun e!2487568 () Bool)

(assert (=> start!377784 e!2487568))

(declare-fun e!2487571 () Bool)

(assert (=> start!377784 e!2487571))

(assert (=> start!377784 true))

(declare-fun e!2487560 () Bool)

(assert (=> start!377784 e!2487560))

(declare-fun e!2487563 () Bool)

(assert (=> start!377784 e!2487563))

(declare-fun tp!1220208 () Bool)

(declare-fun e!2487569 () Bool)

(declare-fun b!4011157 () Bool)

(declare-fun inv!21 (TokenValue!7058) Bool)

(assert (=> b!4011157 (= e!2487567 (and (inv!21 (value!215232 token!484)) e!2487569 tp!1220208))))

(declare-fun b!4011158 () Bool)

(declare-fun e!2487579 () Bool)

(declare-fun tp!1220206 () Bool)

(assert (=> b!4011158 (= e!2487560 (and e!2487579 tp!1220206))))

(declare-fun b!4011159 () Bool)

(declare-fun e!2487583 () Bool)

(assert (=> b!4011159 (= e!2487587 e!2487583)))

(declare-fun res!1630490 () Bool)

(assert (=> b!4011159 (=> (not res!1630490) (not e!2487583))))

(declare-fun lt!1420139 () Int)

(declare-fun lt!1420171 () Int)

(assert (=> b!4011159 (= res!1630490 (>= lt!1420139 lt!1420171))))

(declare-fun lt!1420158 () List!43050)

(assert (=> b!4011159 (= lt!1420171 (size!32098 lt!1420158))))

(assert (=> b!4011159 (= lt!1420139 (size!32098 prefix!494))))

(assert (=> b!4011159 (= lt!1420158 (list!15954 (charsOf!4644 token!484)))))

(declare-fun b!4011160 () Bool)

(declare-fun e!2487585 () Bool)

(declare-fun e!2487572 () Bool)

(assert (=> b!4011160 (= e!2487585 e!2487572)))

(declare-fun res!1630489 () Bool)

(assert (=> b!4011160 (=> res!1630489 e!2487572)))

(declare-fun lt!1420141 () List!43050)

(assert (=> b!4011160 (= res!1630489 (not (= lt!1420141 lt!1420160)))))

(declare-fun lt!1420126 () List!43050)

(assert (=> b!4011160 (= lt!1420141 (++!11230 lt!1420158 lt!1420126))))

(declare-fun getSuffix!2340 (List!43050 List!43050) List!43050)

(assert (=> b!4011160 (= lt!1420126 (getSuffix!2340 lt!1420160 lt!1420158))))

(declare-fun e!2487588 () Bool)

(assert (=> b!4011160 e!2487588))

(declare-fun res!1630492 () Bool)

(assert (=> b!4011160 (=> (not res!1630492) (not e!2487588))))

(assert (=> b!4011160 (= res!1630492 (isPrefix!3915 lt!1420160 lt!1420160))))

(declare-fun lt!1420123 () Unit!61951)

(declare-fun lemmaIsPrefixRefl!2491 (List!43050 List!43050) Unit!61951)

(assert (=> b!4011160 (= lt!1420123 (lemmaIsPrefixRefl!2491 lt!1420160 lt!1420160))))

(declare-fun b!4011161 () Bool)

(declare-fun e!2487562 () Bool)

(declare-fun e!2487586 () Bool)

(assert (=> b!4011161 (= e!2487562 (not e!2487586))))

(declare-fun res!1630493 () Bool)

(assert (=> b!4011161 (=> res!1630493 e!2487586)))

(declare-fun lt!1420166 () List!43050)

(assert (=> b!4011161 (= res!1630493 (not (= lt!1420166 lt!1420160)))))

(declare-fun suffixResult!105 () List!43050)

(assert (=> b!4011161 (= lt!1420166 (++!11230 lt!1420158 suffixResult!105))))

(declare-fun lt!1420127 () Unit!61951)

(assert (=> b!4011161 (= lt!1420127 (lemmaInv!1043 (transformation!6828 (rule!9872 token!484))))))

(assert (=> b!4011161 (ruleValid!2760 thiss!21717 (rule!9872 token!484))))

(declare-fun lt!1420162 () Unit!61951)

(assert (=> b!4011161 (= lt!1420162 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1834 thiss!21717 (rule!9872 token!484) rules!2999))))

(declare-fun b!4011162 () Bool)

(assert (=> b!4011162 (= e!2487572 e!2487575)))

(declare-fun res!1630491 () Bool)

(assert (=> b!4011162 (=> res!1630491 e!2487575)))

(assert (=> b!4011162 (= res!1630491 (not ((_ is Some!9241) lt!1420149)))))

(declare-fun maxPrefix!3715 (LexerInterface!6417 List!43052 List!43050) Option!9242)

(assert (=> b!4011162 (= lt!1420149 (maxPrefix!3715 thiss!21717 rules!2999 lt!1420150))))

(declare-fun lt!1420125 () tuple2!42078)

(declare-fun lt!1420167 () Token!12794)

(assert (=> b!4011162 (and (= suffixResult!105 lt!1420126) (= lt!1420125 (tuple2!42079 lt!1420167 lt!1420126)))))

(declare-fun lt!1420132 () Unit!61951)

(declare-fun lemmaSamePrefixThenSameSuffix!2086 (List!43050 List!43050 List!43050 List!43050 List!43050) Unit!61951)

(assert (=> b!4011162 (= lt!1420132 (lemmaSamePrefixThenSameSuffix!2086 lt!1420158 suffixResult!105 lt!1420158 lt!1420126 lt!1420160))))

(assert (=> b!4011162 (isPrefix!3915 lt!1420158 lt!1420141)))

(declare-fun lt!1420138 () Unit!61951)

(assert (=> b!4011162 (= lt!1420138 (lemmaConcatTwoListThenFirstIsPrefix!2756 lt!1420158 lt!1420126))))

(declare-fun b!4011163 () Bool)

(declare-fun res!1630487 () Bool)

(assert (=> b!4011163 (=> (not res!1630487) (not e!2487587))))

(declare-fun isEmpty!25644 (List!43052) Bool)

(assert (=> b!4011163 (= res!1630487 (not (isEmpty!25644 rules!2999)))))

(declare-fun b!4011164 () Bool)

(declare-fun res!1630497 () Bool)

(assert (=> b!4011164 (=> (not res!1630497) (not e!2487587))))

(declare-fun rulesInvariant!5760 (LexerInterface!6417 List!43052) Bool)

(assert (=> b!4011164 (= res!1630497 (rulesInvariant!5760 thiss!21717 rules!2999))))

(declare-fun b!4011165 () Bool)

(declare-fun e!2487578 () Bool)

(declare-fun e!2487581 () Bool)

(assert (=> b!4011165 (= e!2487578 e!2487581)))

(declare-fun res!1630507 () Bool)

(assert (=> b!4011165 (=> res!1630507 e!2487581)))

(declare-fun lt!1420133 () List!43050)

(declare-fun lt!1420147 () List!43050)

(assert (=> b!4011165 (= res!1630507 (or (not (= lt!1420160 lt!1420147)) (not (= lt!1420160 lt!1420133))))))

(assert (=> b!4011165 (= lt!1420147 lt!1420133)))

(declare-fun lt!1420130 () List!43050)

(assert (=> b!4011165 (= lt!1420133 (++!11230 lt!1420158 lt!1420130))))

(declare-fun lt!1420168 () List!43050)

(declare-fun suffix!1299 () List!43050)

(assert (=> b!4011165 (= lt!1420147 (++!11230 lt!1420168 suffix!1299))))

(declare-fun lt!1420144 () List!43050)

(assert (=> b!4011165 (= lt!1420130 (++!11230 lt!1420144 suffix!1299))))

(declare-fun lt!1420157 () Unit!61951)

(assert (=> b!4011165 (= lt!1420157 (lemmaConcatAssociativity!2540 lt!1420158 lt!1420144 suffix!1299))))

(declare-fun b!4011166 () Bool)

(declare-fun tp_is_empty!20437 () Bool)

(declare-fun tp!1220201 () Bool)

(assert (=> b!4011166 (= e!2487574 (and tp_is_empty!20437 tp!1220201))))

(declare-fun b!4011167 () Bool)

(declare-fun tp!1220198 () Bool)

(assert (=> b!4011167 (= e!2487563 (and tp_is_empty!20437 tp!1220198))))

(declare-fun e!2487577 () Bool)

(assert (=> b!4011168 (= e!2487577 (and tp!1220202 tp!1220209))))

(declare-fun b!4011169 () Bool)

(declare-fun e!2487565 () Bool)

(assert (=> b!4011169 (= e!2487583 e!2487565)))

(declare-fun res!1630494 () Bool)

(assert (=> b!4011169 (=> (not res!1630494) (not e!2487565))))

(declare-fun lt!1420146 () List!43050)

(assert (=> b!4011169 (= res!1630494 (= lt!1420146 lt!1420150))))

(assert (=> b!4011169 (= lt!1420150 (++!11230 prefix!494 newSuffix!27))))

(assert (=> b!4011169 (= lt!1420146 (++!11230 lt!1420158 newSuffixResult!27))))

(declare-fun b!4011170 () Bool)

(assert (=> b!4011170 (= e!2487565 e!2487562)))

(declare-fun res!1630495 () Bool)

(assert (=> b!4011170 (=> (not res!1630495) (not e!2487562))))

(declare-fun lt!1420136 () Option!9242)

(assert (=> b!4011170 (= res!1630495 (= (maxPrefix!3715 thiss!21717 rules!2999 lt!1420160) lt!1420136))))

(assert (=> b!4011170 (= lt!1420136 (Some!9241 lt!1420125))))

(assert (=> b!4011170 (= lt!1420125 (tuple2!42079 token!484 suffixResult!105))))

(assert (=> b!4011170 (= lt!1420160 (++!11230 prefix!494 suffix!1299))))

(declare-fun b!4011171 () Bool)

(assert (=> b!4011171 (= e!2487588 (and (= (size!32097 token!484) lt!1420171) (= (originalCharacters!7428 token!484) lt!1420158)))))

(declare-fun b!4011172 () Bool)

(declare-fun res!1630496 () Bool)

(assert (=> b!4011172 (=> (not res!1630496) (not e!2487587))))

(assert (=> b!4011172 (= res!1630496 (>= (size!32098 suffix!1299) (size!32098 newSuffix!27)))))

(declare-fun b!4011173 () Bool)

(declare-fun res!1630503 () Bool)

(assert (=> b!4011173 (=> (not res!1630503) (not e!2487588))))

(assert (=> b!4011173 (= res!1630503 (= (size!32097 token!484) (size!32098 (originalCharacters!7428 token!484))))))

(declare-fun b!4011174 () Bool)

(declare-fun res!1630502 () Bool)

(assert (=> b!4011174 (=> (not res!1630502) (not e!2487588))))

(declare-fun lt!1420161 () TokenValue!7058)

(assert (=> b!4011174 (= res!1630502 (= (value!215232 token!484) lt!1420161))))

(declare-fun e!2487582 () Bool)

(assert (=> b!4011175 (= e!2487582 (and tp!1220207 tp!1220203))))

(declare-fun tp!1220199 () Bool)

(declare-fun b!4011176 () Bool)

(declare-fun inv!57335 (String!49008) Bool)

(declare-fun inv!57339 (TokenValueInjection!13544) Bool)

(assert (=> b!4011176 (= e!2487569 (and tp!1220199 (inv!57335 (tag!7688 (rule!9872 token!484))) (inv!57339 (transformation!6828 (rule!9872 token!484))) e!2487582))))

(declare-fun b!4011177 () Bool)

(assert (=> b!4011177 (= e!2487570 e!2487573)))

(declare-fun res!1630499 () Bool)

(assert (=> b!4011177 (=> res!1630499 e!2487573)))

(assert (=> b!4011177 (= res!1630499 (not (= lt!1420154 suffix!1299)))))

(assert (=> b!4011177 (= lt!1420154 (++!11230 newSuffix!27 lt!1420137))))

(assert (=> b!4011177 (= lt!1420137 (getSuffix!2340 suffix!1299 newSuffix!27))))

(declare-fun tp!1220210 () Bool)

(declare-fun b!4011178 () Bool)

(assert (=> b!4011178 (= e!2487579 (and tp!1220210 (inv!57335 (tag!7688 (h!48348 rules!2999))) (inv!57339 (transformation!6828 (h!48348 rules!2999))) e!2487577))))

(declare-fun b!4011179 () Bool)

(declare-fun e!2487576 () Bool)

(assert (=> b!4011179 (= e!2487576 e!2487578)))

(declare-fun res!1630501 () Bool)

(assert (=> b!4011179 (=> res!1630501 e!2487578)))

(assert (=> b!4011179 (= res!1630501 (not (= lt!1420168 prefix!494)))))

(assert (=> b!4011179 (= lt!1420168 (++!11230 lt!1420158 lt!1420144))))

(assert (=> b!4011179 (= lt!1420144 (getSuffix!2340 prefix!494 lt!1420158))))

(assert (=> b!4011179 (isPrefix!3915 lt!1420158 prefix!494)))

(declare-fun lt!1420165 () Unit!61951)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!487 (List!43050 List!43050 List!43050) Unit!61951)

(assert (=> b!4011179 (= lt!1420165 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!487 prefix!494 lt!1420158 lt!1420160))))

(declare-fun b!4011180 () Bool)

(declare-fun e!2487580 () Bool)

(assert (=> b!4011180 (= e!2487580 e!2487585)))

(declare-fun res!1630504 () Bool)

(assert (=> b!4011180 (=> res!1630504 e!2487585)))

(declare-fun matchR!5694 (Regex!11733 List!43050) Bool)

(assert (=> b!4011180 (= res!1630504 (not (matchR!5694 (regex!6828 (rule!9872 token!484)) lt!1420158)))))

(assert (=> b!4011180 (isPrefix!3915 lt!1420158 lt!1420150)))

(declare-fun lt!1420159 () Unit!61951)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!728 (List!43050 List!43050 List!43050) Unit!61951)

(assert (=> b!4011180 (= lt!1420159 (lemmaPrefixStaysPrefixWhenAddingToSuffix!728 lt!1420158 prefix!494 newSuffix!27))))

(declare-fun lt!1420164 () Unit!61951)

(assert (=> b!4011180 (= lt!1420164 (lemmaPrefixStaysPrefixWhenAddingToSuffix!728 lt!1420158 prefix!494 suffix!1299))))

(declare-fun b!4011181 () Bool)

(assert (=> b!4011181 (= e!2487586 e!2487576)))

(declare-fun res!1630498 () Bool)

(assert (=> b!4011181 (=> res!1630498 e!2487576)))

(assert (=> b!4011181 (= res!1630498 (not (isPrefix!3915 lt!1420158 lt!1420160)))))

(assert (=> b!4011181 (isPrefix!3915 prefix!494 lt!1420160)))

(declare-fun lt!1420155 () Unit!61951)

(assert (=> b!4011181 (= lt!1420155 (lemmaConcatTwoListThenFirstIsPrefix!2756 prefix!494 suffix!1299))))

(assert (=> b!4011181 (isPrefix!3915 lt!1420158 lt!1420166)))

(declare-fun lt!1420153 () Unit!61951)

(assert (=> b!4011181 (= lt!1420153 (lemmaConcatTwoListThenFirstIsPrefix!2756 lt!1420158 suffixResult!105))))

(declare-fun b!4011182 () Bool)

(declare-fun tp!1220205 () Bool)

(assert (=> b!4011182 (= e!2487568 (and tp_is_empty!20437 tp!1220205))))

(declare-fun b!4011183 () Bool)

(assert (=> b!4011183 (= e!2487581 e!2487580)))

(declare-fun res!1630506 () Bool)

(assert (=> b!4011183 (=> res!1630506 e!2487580)))

(declare-fun lt!1420152 () Option!9242)

(assert (=> b!4011183 (= res!1630506 (not (= lt!1420152 lt!1420136)))))

(assert (=> b!4011183 (= lt!1420152 (Some!9241 (tuple2!42079 lt!1420167 suffixResult!105)))))

(assert (=> b!4011183 (= lt!1420152 (maxPrefixOneRule!2735 thiss!21717 (rule!9872 token!484) lt!1420160))))

(assert (=> b!4011183 (= lt!1420167 (Token!12795 lt!1420161 (rule!9872 token!484) lt!1420171 lt!1420158))))

(assert (=> b!4011183 (= lt!1420161 (apply!10025 (transformation!6828 (rule!9872 token!484)) (seqFromList!5053 lt!1420158)))))

(declare-fun lt!1420140 () Unit!61951)

(assert (=> b!4011183 (= lt!1420140 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1553 thiss!21717 rules!2999 lt!1420158 lt!1420160 suffixResult!105 (rule!9872 token!484)))))

(assert (=> b!4011183 (= lt!1420130 suffixResult!105)))

(declare-fun lt!1420129 () Unit!61951)

(assert (=> b!4011183 (= lt!1420129 (lemmaSamePrefixThenSameSuffix!2086 lt!1420158 lt!1420130 lt!1420158 suffixResult!105 lt!1420160))))

(assert (=> b!4011183 (isPrefix!3915 lt!1420158 lt!1420133)))

(declare-fun lt!1420128 () Unit!61951)

(assert (=> b!4011183 (= lt!1420128 (lemmaConcatTwoListThenFirstIsPrefix!2756 lt!1420158 lt!1420130))))

(declare-fun b!4011184 () Bool)

(declare-fun tp!1220204 () Bool)

(assert (=> b!4011184 (= e!2487564 (and tp_is_empty!20437 tp!1220204))))

(declare-fun b!4011185 () Bool)

(declare-fun tp!1220200 () Bool)

(assert (=> b!4011185 (= e!2487571 (and tp_is_empty!20437 tp!1220200))))

(declare-fun b!4011186 () Bool)

(declare-fun res!1630488 () Bool)

(assert (=> b!4011186 (=> (not res!1630488) (not e!2487587))))

(assert (=> b!4011186 (= res!1630488 (isPrefix!3915 newSuffix!27 suffix!1299))))

(assert (= (and start!377784 res!1630505) b!4011163))

(assert (= (and b!4011163 res!1630487) b!4011164))

(assert (= (and b!4011164 res!1630497) b!4011172))

(assert (= (and b!4011172 res!1630496) b!4011186))

(assert (= (and b!4011186 res!1630488) b!4011159))

(assert (= (and b!4011159 res!1630490) b!4011169))

(assert (= (and b!4011169 res!1630494) b!4011170))

(assert (= (and b!4011170 res!1630495) b!4011161))

(assert (= (and b!4011161 (not res!1630493)) b!4011181))

(assert (= (and b!4011181 (not res!1630498)) b!4011179))

(assert (= (and b!4011179 (not res!1630501)) b!4011165))

(assert (= (and b!4011165 (not res!1630507)) b!4011183))

(assert (= (and b!4011183 (not res!1630506)) b!4011180))

(assert (= (and b!4011180 (not res!1630504)) b!4011160))

(assert (= (and b!4011160 res!1630492) b!4011174))

(assert (= (and b!4011174 res!1630502) b!4011173))

(assert (= (and b!4011173 res!1630503) b!4011171))

(assert (= (and b!4011160 (not res!1630489)) b!4011162))

(assert (= (and b!4011162 (not res!1630491)) b!4011156))

(assert (= (and b!4011156 (not res!1630500)) b!4011177))

(assert (= (and b!4011177 (not res!1630499)) b!4011155))

(assert (= (and start!377784 ((_ is Cons!42926) prefix!494)) b!4011184))

(assert (= b!4011176 b!4011175))

(assert (= b!4011157 b!4011176))

(assert (= start!377784 b!4011157))

(assert (= (and start!377784 ((_ is Cons!42926) suffixResult!105)) b!4011166))

(assert (= (and start!377784 ((_ is Cons!42926) suffix!1299)) b!4011182))

(assert (= (and start!377784 ((_ is Cons!42926) newSuffix!27)) b!4011185))

(assert (= b!4011178 b!4011168))

(assert (= b!4011158 b!4011178))

(assert (= (and start!377784 ((_ is Cons!42928) rules!2999)) b!4011158))

(assert (= (and start!377784 ((_ is Cons!42926) newSuffixResult!27)) b!4011167))

(declare-fun m!4596419 () Bool)

(assert (=> b!4011186 m!4596419))

(declare-fun m!4596421 () Bool)

(assert (=> b!4011157 m!4596421))

(declare-fun m!4596423 () Bool)

(assert (=> b!4011161 m!4596423))

(declare-fun m!4596425 () Bool)

(assert (=> b!4011161 m!4596425))

(declare-fun m!4596427 () Bool)

(assert (=> b!4011161 m!4596427))

(declare-fun m!4596429 () Bool)

(assert (=> b!4011161 m!4596429))

(declare-fun m!4596431 () Bool)

(assert (=> b!4011177 m!4596431))

(declare-fun m!4596433 () Bool)

(assert (=> b!4011177 m!4596433))

(declare-fun m!4596435 () Bool)

(assert (=> start!377784 m!4596435))

(declare-fun m!4596437 () Bool)

(assert (=> b!4011178 m!4596437))

(declare-fun m!4596439 () Bool)

(assert (=> b!4011178 m!4596439))

(declare-fun m!4596441 () Bool)

(assert (=> b!4011155 m!4596441))

(declare-fun m!4596443 () Bool)

(assert (=> b!4011155 m!4596443))

(declare-fun m!4596445 () Bool)

(assert (=> b!4011155 m!4596445))

(declare-fun m!4596447 () Bool)

(assert (=> b!4011169 m!4596447))

(declare-fun m!4596449 () Bool)

(assert (=> b!4011169 m!4596449))

(declare-fun m!4596451 () Bool)

(assert (=> b!4011181 m!4596451))

(declare-fun m!4596453 () Bool)

(assert (=> b!4011181 m!4596453))

(declare-fun m!4596455 () Bool)

(assert (=> b!4011181 m!4596455))

(declare-fun m!4596457 () Bool)

(assert (=> b!4011181 m!4596457))

(declare-fun m!4596459 () Bool)

(assert (=> b!4011181 m!4596459))

(declare-fun m!4596461 () Bool)

(assert (=> b!4011165 m!4596461))

(declare-fun m!4596463 () Bool)

(assert (=> b!4011165 m!4596463))

(declare-fun m!4596465 () Bool)

(assert (=> b!4011165 m!4596465))

(declare-fun m!4596467 () Bool)

(assert (=> b!4011165 m!4596467))

(declare-fun m!4596469 () Bool)

(assert (=> b!4011162 m!4596469))

(declare-fun m!4596471 () Bool)

(assert (=> b!4011162 m!4596471))

(declare-fun m!4596473 () Bool)

(assert (=> b!4011162 m!4596473))

(declare-fun m!4596475 () Bool)

(assert (=> b!4011162 m!4596475))

(declare-fun m!4596477 () Bool)

(assert (=> b!4011179 m!4596477))

(declare-fun m!4596479 () Bool)

(assert (=> b!4011179 m!4596479))

(declare-fun m!4596481 () Bool)

(assert (=> b!4011179 m!4596481))

(declare-fun m!4596483 () Bool)

(assert (=> b!4011179 m!4596483))

(declare-fun m!4596485 () Bool)

(assert (=> b!4011180 m!4596485))

(declare-fun m!4596487 () Bool)

(assert (=> b!4011180 m!4596487))

(declare-fun m!4596489 () Bool)

(assert (=> b!4011180 m!4596489))

(declare-fun m!4596491 () Bool)

(assert (=> b!4011180 m!4596491))

(declare-fun m!4596493 () Bool)

(assert (=> b!4011160 m!4596493))

(declare-fun m!4596495 () Bool)

(assert (=> b!4011160 m!4596495))

(declare-fun m!4596497 () Bool)

(assert (=> b!4011160 m!4596497))

(declare-fun m!4596499 () Bool)

(assert (=> b!4011160 m!4596499))

(declare-fun m!4596501 () Bool)

(assert (=> b!4011173 m!4596501))

(declare-fun m!4596503 () Bool)

(assert (=> b!4011159 m!4596503))

(declare-fun m!4596505 () Bool)

(assert (=> b!4011159 m!4596505))

(declare-fun m!4596507 () Bool)

(assert (=> b!4011159 m!4596507))

(assert (=> b!4011159 m!4596507))

(declare-fun m!4596509 () Bool)

(assert (=> b!4011159 m!4596509))

(declare-fun m!4596511 () Bool)

(assert (=> b!4011170 m!4596511))

(declare-fun m!4596513 () Bool)

(assert (=> b!4011170 m!4596513))

(declare-fun m!4596515 () Bool)

(assert (=> b!4011183 m!4596515))

(declare-fun m!4596517 () Bool)

(assert (=> b!4011183 m!4596517))

(declare-fun m!4596519 () Bool)

(assert (=> b!4011183 m!4596519))

(declare-fun m!4596521 () Bool)

(assert (=> b!4011183 m!4596521))

(assert (=> b!4011183 m!4596519))

(declare-fun m!4596523 () Bool)

(assert (=> b!4011183 m!4596523))

(declare-fun m!4596525 () Bool)

(assert (=> b!4011183 m!4596525))

(declare-fun m!4596527 () Bool)

(assert (=> b!4011183 m!4596527))

(declare-fun m!4596529 () Bool)

(assert (=> b!4011172 m!4596529))

(declare-fun m!4596531 () Bool)

(assert (=> b!4011172 m!4596531))

(declare-fun m!4596533 () Bool)

(assert (=> b!4011176 m!4596533))

(declare-fun m!4596535 () Bool)

(assert (=> b!4011176 m!4596535))

(declare-fun m!4596537 () Bool)

(assert (=> b!4011164 m!4596537))

(declare-fun m!4596539 () Bool)

(assert (=> b!4011163 m!4596539))

(declare-fun m!4596541 () Bool)

(assert (=> b!4011156 m!4596541))

(declare-fun m!4596543 () Bool)

(assert (=> b!4011156 m!4596543))

(declare-fun m!4596545 () Bool)

(assert (=> b!4011156 m!4596545))

(assert (=> b!4011156 m!4596545))

(declare-fun m!4596547 () Bool)

(assert (=> b!4011156 m!4596547))

(declare-fun m!4596549 () Bool)

(assert (=> b!4011156 m!4596549))

(declare-fun m!4596551 () Bool)

(assert (=> b!4011156 m!4596551))

(declare-fun m!4596553 () Bool)

(assert (=> b!4011156 m!4596553))

(declare-fun m!4596555 () Bool)

(assert (=> b!4011156 m!4596555))

(declare-fun m!4596557 () Bool)

(assert (=> b!4011156 m!4596557))

(declare-fun m!4596559 () Bool)

(assert (=> b!4011156 m!4596559))

(declare-fun m!4596561 () Bool)

(assert (=> b!4011156 m!4596561))

(declare-fun m!4596563 () Bool)

(assert (=> b!4011156 m!4596563))

(declare-fun m!4596565 () Bool)

(assert (=> b!4011156 m!4596565))

(assert (=> b!4011156 m!4596553))

(assert (=> b!4011156 m!4596541))

(declare-fun m!4596567 () Bool)

(assert (=> b!4011156 m!4596567))

(declare-fun m!4596569 () Bool)

(assert (=> b!4011156 m!4596569))

(declare-fun m!4596571 () Bool)

(assert (=> b!4011156 m!4596571))

(declare-fun m!4596573 () Bool)

(assert (=> b!4011156 m!4596573))

(assert (=> b!4011156 m!4596557))

(declare-fun m!4596575 () Bool)

(assert (=> b!4011156 m!4596575))

(check-sat (not b!4011162) (not b!4011172) (not b!4011184) (not b!4011173) tp_is_empty!20437 b_and!308137 (not b_next!112271) (not b!4011185) (not b!4011166) (not b!4011158) b_and!308135 (not b!4011161) (not b!4011180) (not b_next!112267) (not b!4011164) (not b!4011169) (not b!4011181) (not b!4011177) (not b!4011159) (not b!4011163) (not b!4011157) (not b!4011183) (not b!4011179) (not b!4011167) (not b!4011170) (not start!377784) (not b!4011160) (not b!4011182) (not b!4011155) (not b_next!112269) (not b!4011176) (not b!4011186) (not b!4011156) b_and!308141 (not b!4011165) (not b_next!112265) b_and!308139 (not b!4011178))
(check-sat b_and!308137 (not b_next!112269) (not b_next!112271) b_and!308135 (not b_next!112267) b_and!308141 (not b_next!112265) b_and!308139)
