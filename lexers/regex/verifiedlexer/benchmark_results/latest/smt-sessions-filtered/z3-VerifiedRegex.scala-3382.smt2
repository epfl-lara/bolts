; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191652 () Bool)

(assert start!191652)

(declare-fun b!1910751 () Bool)

(declare-fun b_free!53929 () Bool)

(declare-fun b_next!54633 () Bool)

(assert (=> b!1910751 (= b_free!53929 (not b_next!54633))))

(declare-fun tp!545451 () Bool)

(declare-fun b_and!148847 () Bool)

(assert (=> b!1910751 (= tp!545451 b_and!148847)))

(declare-fun b_free!53931 () Bool)

(declare-fun b_next!54635 () Bool)

(assert (=> b!1910751 (= b_free!53931 (not b_next!54635))))

(declare-fun tp!545458 () Bool)

(declare-fun b_and!148849 () Bool)

(assert (=> b!1910751 (= tp!545458 b_and!148849)))

(declare-fun b!1910744 () Bool)

(declare-fun b_free!53933 () Bool)

(declare-fun b_next!54637 () Bool)

(assert (=> b!1910744 (= b_free!53933 (not b_next!54637))))

(declare-fun tp!545456 () Bool)

(declare-fun b_and!148851 () Bool)

(assert (=> b!1910744 (= tp!545456 b_and!148851)))

(declare-fun b_free!53935 () Bool)

(declare-fun b_next!54639 () Bool)

(assert (=> b!1910744 (= b_free!53935 (not b_next!54639))))

(declare-fun tp!545457 () Bool)

(declare-fun b_and!148853 () Bool)

(assert (=> b!1910744 (= tp!545457 b_and!148853)))

(declare-fun b!1910739 () Bool)

(declare-fun b_free!53937 () Bool)

(declare-fun b_next!54641 () Bool)

(assert (=> b!1910739 (= b_free!53937 (not b_next!54641))))

(declare-fun tp!545459 () Bool)

(declare-fun b_and!148855 () Bool)

(assert (=> b!1910739 (= tp!545459 b_and!148855)))

(declare-fun b_free!53939 () Bool)

(declare-fun b_next!54643 () Bool)

(assert (=> b!1910739 (= b_free!53939 (not b_next!54643))))

(declare-fun tp!545460 () Bool)

(declare-fun b_and!148857 () Bool)

(assert (=> b!1910739 (= tp!545460 b_and!148857)))

(declare-fun b!1910734 () Bool)

(declare-fun res!853247 () Bool)

(declare-fun e!1220574 () Bool)

(assert (=> b!1910734 (=> (not res!853247) (not e!1220574))))

(declare-datatypes ((List!21622 0))(
  ( (Nil!21540) (Cons!21540 (h!26941 (_ BitVec 16)) (t!178079 List!21622)) )
))
(declare-datatypes ((TokenValue!3976 0))(
  ( (FloatLiteralValue!7952 (text!28277 List!21622)) (TokenValueExt!3975 (__x!13450 Int)) (Broken!19880 (value!121005 List!21622)) (Object!4057) (End!3976) (Def!3976) (Underscore!3976) (Match!3976) (Else!3976) (Error!3976) (Case!3976) (If!3976) (Extends!3976) (Abstract!3976) (Class!3976) (Val!3976) (DelimiterValue!7952 (del!4036 List!21622)) (KeywordValue!3982 (value!121006 List!21622)) (CommentValue!7952 (value!121007 List!21622)) (WhitespaceValue!7952 (value!121008 List!21622)) (IndentationValue!3976 (value!121009 List!21622)) (String!24997) (Int32!3976) (Broken!19881 (value!121010 List!21622)) (Boolean!3977) (Unit!35901) (OperatorValue!3979 (op!4036 List!21622)) (IdentifierValue!7952 (value!121011 List!21622)) (IdentifierValue!7953 (value!121012 List!21622)) (WhitespaceValue!7953 (value!121013 List!21622)) (True!7952) (False!7952) (Broken!19882 (value!121014 List!21622)) (Broken!19883 (value!121015 List!21622)) (True!7953) (RightBrace!3976) (RightBracket!3976) (Colon!3976) (Null!3976) (Comma!3976) (LeftBracket!3976) (False!7953) (LeftBrace!3976) (ImaginaryLiteralValue!3976 (text!28278 List!21622)) (StringLiteralValue!11928 (value!121016 List!21622)) (EOFValue!3976 (value!121017 List!21622)) (IdentValue!3976 (value!121018 List!21622)) (DelimiterValue!7953 (value!121019 List!21622)) (DedentValue!3976 (value!121020 List!21622)) (NewLineValue!3976 (value!121021 List!21622)) (IntegerValue!11928 (value!121022 (_ BitVec 32)) (text!28279 List!21622)) (IntegerValue!11929 (value!121023 Int) (text!28280 List!21622)) (Times!3976) (Or!3976) (Equal!3976) (Minus!3976) (Broken!19884 (value!121024 List!21622)) (And!3976) (Div!3976) (LessEqual!3976) (Mod!3976) (Concat!9241) (Not!3976) (Plus!3976) (SpaceValue!3976 (value!121025 List!21622)) (IntegerValue!11930 (value!121026 Int) (text!28281 List!21622)) (StringLiteralValue!11929 (text!28282 List!21622)) (FloatLiteralValue!7953 (text!28283 List!21622)) (BytesLiteralValue!3976 (value!121027 List!21622)) (CommentValue!7953 (value!121028 List!21622)) (StringLiteralValue!11930 (value!121029 List!21622)) (ErrorTokenValue!3976 (msg!4037 List!21622)) )
))
(declare-datatypes ((C!10676 0))(
  ( (C!10677 (val!6290 Int)) )
))
(declare-datatypes ((List!21623 0))(
  ( (Nil!21541) (Cons!21541 (h!26942 C!10676) (t!178080 List!21623)) )
))
(declare-datatypes ((IArray!14349 0))(
  ( (IArray!14350 (innerList!7232 List!21623)) )
))
(declare-datatypes ((Conc!7172 0))(
  ( (Node!7172 (left!17214 Conc!7172) (right!17544 Conc!7172) (csize!14574 Int) (cheight!7383 Int)) (Leaf!10555 (xs!10066 IArray!14349) (csize!14575 Int)) (Empty!7172) )
))
(declare-datatypes ((BalanceConc!14160 0))(
  ( (BalanceConc!14161 (c!311294 Conc!7172)) )
))
(declare-datatypes ((TokenValueInjection!7536 0))(
  ( (TokenValueInjection!7537 (toValue!5469 Int) (toChars!5328 Int)) )
))
(declare-datatypes ((Regex!5265 0))(
  ( (ElementMatch!5265 (c!311295 C!10676)) (Concat!9242 (regOne!11042 Regex!5265) (regTwo!11042 Regex!5265)) (EmptyExpr!5265) (Star!5265 (reg!5594 Regex!5265)) (EmptyLang!5265) (Union!5265 (regOne!11043 Regex!5265) (regTwo!11043 Regex!5265)) )
))
(declare-datatypes ((String!24998 0))(
  ( (String!24999 (value!121030 String)) )
))
(declare-datatypes ((Rule!7480 0))(
  ( (Rule!7481 (regex!3840 Regex!5265) (tag!4274 String!24998) (isSeparator!3840 Bool) (transformation!3840 TokenValueInjection!7536)) )
))
(declare-datatypes ((List!21624 0))(
  ( (Nil!21542) (Cons!21542 (h!26943 Rule!7480) (t!178081 List!21624)) )
))
(declare-fun rules!3198 () List!21624)

(declare-fun isEmpty!13221 (List!21624) Bool)

(assert (=> b!1910734 (= res!853247 (not (isEmpty!13221 rules!3198)))))

(declare-fun res!853251 () Bool)

(assert (=> start!191652 (=> (not res!853251) (not e!1220574))))

(declare-datatypes ((LexerInterface!3453 0))(
  ( (LexerInterfaceExt!3450 (__x!13451 Int)) (Lexer!3451) )
))
(declare-fun thiss!23328 () LexerInterface!3453)

(get-info :version)

(assert (=> start!191652 (= res!853251 ((_ is Lexer!3451) thiss!23328))))

(assert (=> start!191652 e!1220574))

(assert (=> start!191652 true))

(declare-fun e!1220581 () Bool)

(assert (=> start!191652 e!1220581))

(declare-fun e!1220587 () Bool)

(assert (=> start!191652 e!1220587))

(declare-datatypes ((Token!7232 0))(
  ( (Token!7233 (value!121031 TokenValue!3976) (rule!6039 Rule!7480) (size!16968 Int) (originalCharacters!4647 List!21623)) )
))
(declare-fun separatorToken!354 () Token!7232)

(declare-fun e!1220573 () Bool)

(declare-fun inv!28646 (Token!7232) Bool)

(assert (=> start!191652 (and (inv!28646 separatorToken!354) e!1220573)))

(declare-fun e!1220586 () Bool)

(declare-fun tp!545450 () Bool)

(declare-fun b!1910735 () Bool)

(declare-fun inv!21 (TokenValue!3976) Bool)

(assert (=> b!1910735 (= e!1220573 (and (inv!21 (value!121031 separatorToken!354)) e!1220586 tp!545450))))

(declare-fun b!1910736 () Bool)

(declare-fun e!1220584 () Bool)

(declare-datatypes ((tuple2!20266 0))(
  ( (tuple2!20267 (_1!11602 Token!7232) (_2!11602 List!21623)) )
))
(declare-datatypes ((Option!4385 0))(
  ( (None!4384) (Some!4384 (v!26435 tuple2!20266)) )
))
(declare-fun lt!730920 () Option!4385)

(declare-datatypes ((List!21625 0))(
  ( (Nil!21543) (Cons!21543 (h!26944 Token!7232) (t!178082 List!21625)) )
))
(declare-fun tokens!598 () List!21625)

(declare-fun get!6712 (Option!4385) tuple2!20266)

(assert (=> b!1910736 (= e!1220584 (= (_1!11602 (get!6712 lt!730920)) (h!26944 tokens!598)))))

(declare-fun b!1910737 () Bool)

(declare-fun res!853258 () Bool)

(declare-fun e!1220575 () Bool)

(assert (=> b!1910737 (=> res!853258 e!1220575)))

(declare-fun rulesProduceIndividualToken!1625 (LexerInterface!3453 List!21624 Token!7232) Bool)

(assert (=> b!1910737 (= res!853258 (not (rulesProduceIndividualToken!1625 thiss!23328 rules!3198 (h!26944 tokens!598))))))

(declare-fun b!1910738 () Bool)

(declare-fun res!853246 () Bool)

(assert (=> b!1910738 (=> (not res!853246) (not e!1220574))))

(declare-fun lambda!74617 () Int)

(declare-fun forall!4530 (List!21625 Int) Bool)

(assert (=> b!1910738 (= res!853246 (forall!4530 tokens!598 lambda!74617))))

(declare-fun e!1220576 () Bool)

(assert (=> b!1910739 (= e!1220576 (and tp!545459 tp!545460))))

(declare-fun b!1910740 () Bool)

(declare-fun res!853255 () Bool)

(assert (=> b!1910740 (=> res!853255 e!1220575)))

(declare-fun lt!730914 () List!21623)

(declare-datatypes ((IArray!14351 0))(
  ( (IArray!14352 (innerList!7233 List!21625)) )
))
(declare-datatypes ((Conc!7173 0))(
  ( (Node!7173 (left!17215 Conc!7173) (right!17545 Conc!7173) (csize!14576 Int) (cheight!7384 Int)) (Leaf!10556 (xs!10067 IArray!14351) (csize!14577 Int)) (Empty!7173) )
))
(declare-datatypes ((BalanceConc!14162 0))(
  ( (BalanceConc!14163 (c!311296 Conc!7173)) )
))
(declare-fun isEmpty!13222 (BalanceConc!14162) Bool)

(declare-datatypes ((tuple2!20268 0))(
  ( (tuple2!20269 (_1!11603 BalanceConc!14162) (_2!11603 BalanceConc!14160)) )
))
(declare-fun lex!1528 (LexerInterface!3453 List!21624 BalanceConc!14160) tuple2!20268)

(declare-fun seqFromList!2712 (List!21623) BalanceConc!14160)

(assert (=> b!1910740 (= res!853255 (isEmpty!13222 (_1!11603 (lex!1528 thiss!23328 rules!3198 (seqFromList!2712 lt!730914)))))))

(declare-fun b!1910741 () Bool)

(declare-fun e!1220571 () Bool)

(declare-fun lt!730924 () Rule!7480)

(assert (=> b!1910741 (= e!1220571 (= (rule!6039 separatorToken!354) lt!730924))))

(declare-fun b!1910742 () Bool)

(declare-fun e!1220572 () Bool)

(assert (=> b!1910742 (= e!1220574 (not e!1220572))))

(declare-fun res!853250 () Bool)

(assert (=> b!1910742 (=> res!853250 e!1220572)))

(declare-fun lt!730910 () Option!4385)

(declare-fun lt!730923 () Bool)

(assert (=> b!1910742 (= res!853250 (or (and (not lt!730923) (= (_1!11602 (v!26435 lt!730910)) (h!26944 tokens!598))) lt!730923 (= (_1!11602 (v!26435 lt!730910)) (h!26944 tokens!598))))))

(assert (=> b!1910742 (= lt!730923 (not ((_ is Some!4384) lt!730910)))))

(declare-fun lt!730918 () List!21623)

(declare-fun maxPrefix!1899 (LexerInterface!3453 List!21624 List!21623) Option!4385)

(declare-fun ++!5789 (List!21623 List!21623) List!21623)

(assert (=> b!1910742 (= lt!730910 (maxPrefix!1899 thiss!23328 rules!3198 (++!5789 lt!730914 lt!730918)))))

(declare-fun printWithSeparatorTokenWhenNeededList!496 (LexerInterface!3453 List!21624 List!21625 Token!7232) List!21623)

(assert (=> b!1910742 (= lt!730918 (printWithSeparatorTokenWhenNeededList!496 thiss!23328 rules!3198 (t!178082 tokens!598) separatorToken!354))))

(declare-fun e!1220589 () Bool)

(assert (=> b!1910742 e!1220589))

(declare-fun res!853262 () Bool)

(assert (=> b!1910742 (=> (not res!853262) (not e!1220589))))

(declare-datatypes ((Option!4386 0))(
  ( (None!4385) (Some!4385 (v!26436 Rule!7480)) )
))
(declare-fun lt!730911 () Option!4386)

(declare-fun isDefined!3683 (Option!4386) Bool)

(assert (=> b!1910742 (= res!853262 (isDefined!3683 lt!730911))))

(declare-fun getRuleFromTag!683 (LexerInterface!3453 List!21624 String!24998) Option!4386)

(assert (=> b!1910742 (= lt!730911 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 (h!26944 tokens!598)))))))

(declare-datatypes ((Unit!35902 0))(
  ( (Unit!35903) )
))
(declare-fun lt!730908 () Unit!35902)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!683 (LexerInterface!3453 List!21624 List!21623 Token!7232) Unit!35902)

(assert (=> b!1910742 (= lt!730908 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!683 thiss!23328 rules!3198 lt!730914 (h!26944 tokens!598)))))

(assert (=> b!1910742 e!1220584))

(declare-fun res!853253 () Bool)

(assert (=> b!1910742 (=> (not res!853253) (not e!1220584))))

(declare-fun isDefined!3684 (Option!4385) Bool)

(assert (=> b!1910742 (= res!853253 (isDefined!3684 lt!730920))))

(assert (=> b!1910742 (= lt!730920 (maxPrefix!1899 thiss!23328 rules!3198 lt!730914))))

(declare-fun lt!730909 () BalanceConc!14160)

(declare-fun list!8760 (BalanceConc!14160) List!21623)

(assert (=> b!1910742 (= lt!730914 (list!8760 lt!730909))))

(declare-fun e!1220588 () Bool)

(assert (=> b!1910742 e!1220588))

(declare-fun res!853259 () Bool)

(assert (=> b!1910742 (=> (not res!853259) (not e!1220588))))

(declare-fun lt!730922 () Option!4386)

(assert (=> b!1910742 (= res!853259 (isDefined!3683 lt!730922))))

(assert (=> b!1910742 (= lt!730922 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 separatorToken!354))))))

(declare-fun lt!730912 () List!21623)

(declare-fun lt!730919 () Unit!35902)

(assert (=> b!1910742 (= lt!730919 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!683 thiss!23328 rules!3198 lt!730912 separatorToken!354))))

(declare-fun charsOf!2396 (Token!7232) BalanceConc!14160)

(assert (=> b!1910742 (= lt!730912 (list!8760 (charsOf!2396 separatorToken!354)))))

(declare-fun lt!730915 () Unit!35902)

(declare-fun lemmaEqSameImage!548 (TokenValueInjection!7536 BalanceConc!14160 BalanceConc!14160) Unit!35902)

(assert (=> b!1910742 (= lt!730915 (lemmaEqSameImage!548 (transformation!3840 (rule!6039 (h!26944 tokens!598))) lt!730909 (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598)))))))

(declare-fun lt!730921 () Unit!35902)

(declare-fun lemmaSemiInverse!819 (TokenValueInjection!7536 BalanceConc!14160) Unit!35902)

(assert (=> b!1910742 (= lt!730921 (lemmaSemiInverse!819 (transformation!3840 (rule!6039 (h!26944 tokens!598))) lt!730909))))

(assert (=> b!1910742 (= lt!730909 (charsOf!2396 (h!26944 tokens!598)))))

(declare-fun b!1910743 () Bool)

(declare-fun tp!545452 () Bool)

(declare-fun e!1220593 () Bool)

(declare-fun inv!28643 (String!24998) Bool)

(declare-fun inv!28647 (TokenValueInjection!7536) Bool)

(assert (=> b!1910743 (= e!1220586 (and tp!545452 (inv!28643 (tag!4274 (rule!6039 separatorToken!354))) (inv!28647 (transformation!3840 (rule!6039 separatorToken!354))) e!1220593))))

(declare-fun e!1220582 () Bool)

(assert (=> b!1910744 (= e!1220582 (and tp!545456 tp!545457))))

(declare-fun b!1910745 () Bool)

(assert (=> b!1910745 (= e!1220572 e!1220575)))

(declare-fun res!853248 () Bool)

(assert (=> b!1910745 (=> res!853248 e!1220575)))

(declare-fun lt!730917 () List!21623)

(declare-fun lt!730925 () List!21623)

(assert (=> b!1910745 (= res!853248 (or (not (= lt!730925 lt!730917)) (not (= lt!730917 lt!730914)) (not (= lt!730925 lt!730914))))))

(declare-fun printList!1036 (LexerInterface!3453 List!21625) List!21623)

(assert (=> b!1910745 (= lt!730917 (printList!1036 thiss!23328 (Cons!21543 (h!26944 tokens!598) Nil!21543)))))

(declare-fun lt!730928 () BalanceConc!14160)

(assert (=> b!1910745 (= lt!730925 (list!8760 lt!730928))))

(declare-fun lt!730907 () BalanceConc!14162)

(declare-fun printTailRec!970 (LexerInterface!3453 BalanceConc!14162 Int BalanceConc!14160) BalanceConc!14160)

(assert (=> b!1910745 (= lt!730928 (printTailRec!970 thiss!23328 lt!730907 0 (BalanceConc!14161 Empty!7172)))))

(declare-fun print!1463 (LexerInterface!3453 BalanceConc!14162) BalanceConc!14160)

(assert (=> b!1910745 (= lt!730928 (print!1463 thiss!23328 lt!730907))))

(declare-fun singletonSeq!1863 (Token!7232) BalanceConc!14162)

(assert (=> b!1910745 (= lt!730907 (singletonSeq!1863 (h!26944 tokens!598)))))

(declare-fun lt!730926 () C!10676)

(declare-fun contains!3885 (List!21623 C!10676) Bool)

(declare-fun usedCharacters!348 (Regex!5265) List!21623)

(assert (=> b!1910745 (not (contains!3885 (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598)))) lt!730926))))

(declare-fun lt!730927 () Unit!35902)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!44 (LexerInterface!3453 List!21624 List!21624 Rule!7480 Rule!7480 C!10676) Unit!35902)

(assert (=> b!1910745 (= lt!730927 (lemmaNonSepRuleNotContainsCharContainedInASepRule!44 thiss!23328 rules!3198 rules!3198 (rule!6039 (h!26944 tokens!598)) (rule!6039 separatorToken!354) lt!730926))))

(declare-fun lt!730905 () Unit!35902)

(declare-fun e!1220580 () Unit!35902)

(assert (=> b!1910745 (= lt!730905 e!1220580)))

(declare-fun c!311293 () Bool)

(assert (=> b!1910745 (= c!311293 (not (contains!3885 (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354))) lt!730926)))))

(declare-fun head!4444 (List!21623) C!10676)

(assert (=> b!1910745 (= lt!730926 (head!4444 lt!730912))))

(assert (=> b!1910745 (= (++!5789 (++!5789 lt!730914 lt!730912) lt!730918) (++!5789 lt!730914 (++!5789 lt!730912 lt!730918)))))

(declare-fun lt!730913 () Unit!35902)

(declare-fun lemmaConcatAssociativity!1155 (List!21623 List!21623 List!21623) Unit!35902)

(assert (=> b!1910745 (= lt!730913 (lemmaConcatAssociativity!1155 lt!730914 lt!730912 lt!730918))))

(declare-fun b!1910746 () Bool)

(declare-fun e!1220583 () Bool)

(declare-fun lt!730916 () Rule!7480)

(assert (=> b!1910746 (= e!1220583 (= (rule!6039 (h!26944 tokens!598)) lt!730916))))

(declare-fun b!1910747 () Bool)

(declare-fun res!853256 () Bool)

(assert (=> b!1910747 (=> (not res!853256) (not e!1220574))))

(declare-fun sepAndNonSepRulesDisjointChars!938 (List!21624 List!21624) Bool)

(assert (=> b!1910747 (= res!853256 (sepAndNonSepRulesDisjointChars!938 rules!3198 rules!3198))))

(declare-fun b!1910748 () Bool)

(declare-fun res!853249 () Bool)

(assert (=> b!1910748 (=> (not res!853249) (not e!1220574))))

(assert (=> b!1910748 (= res!853249 ((_ is Cons!21543) tokens!598))))

(declare-fun b!1910749 () Bool)

(declare-fun Unit!35904 () Unit!35902)

(assert (=> b!1910749 (= e!1220580 Unit!35904)))

(declare-fun e!1220591 () Bool)

(declare-fun b!1910750 () Bool)

(declare-fun tp!545453 () Bool)

(assert (=> b!1910750 (= e!1220591 (and tp!545453 (inv!28643 (tag!4274 (rule!6039 (h!26944 tokens!598)))) (inv!28647 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) e!1220582))))

(assert (=> b!1910751 (= e!1220593 (and tp!545451 tp!545458))))

(declare-fun b!1910752 () Bool)

(declare-fun res!853260 () Bool)

(assert (=> b!1910752 (=> (not res!853260) (not e!1220574))))

(declare-fun rulesInvariant!3060 (LexerInterface!3453 List!21624) Bool)

(assert (=> b!1910752 (= res!853260 (rulesInvariant!3060 thiss!23328 rules!3198))))

(declare-fun e!1220590 () Bool)

(declare-fun tp!545448 () Bool)

(declare-fun b!1910753 () Bool)

(assert (=> b!1910753 (= e!1220590 (and (inv!21 (value!121031 (h!26944 tokens!598))) e!1220591 tp!545448))))

(declare-fun tp!545449 () Bool)

(declare-fun b!1910754 () Bool)

(assert (=> b!1910754 (= e!1220587 (and (inv!28646 (h!26944 tokens!598)) e!1220590 tp!545449))))

(declare-fun b!1910755 () Bool)

(declare-fun res!853263 () Bool)

(assert (=> b!1910755 (=> (not res!853263) (not e!1220574))))

(assert (=> b!1910755 (= res!853263 (isSeparator!3840 (rule!6039 separatorToken!354)))))

(declare-fun b!1910756 () Bool)

(declare-fun e!1220585 () Bool)

(assert (=> b!1910756 (= e!1220585 false)))

(declare-fun b!1910757 () Bool)

(assert (=> b!1910757 (= e!1220588 e!1220571)))

(declare-fun res!853254 () Bool)

(assert (=> b!1910757 (=> (not res!853254) (not e!1220571))))

(declare-fun matchR!2551 (Regex!5265 List!21623) Bool)

(assert (=> b!1910757 (= res!853254 (matchR!2551 (regex!3840 lt!730924) lt!730912))))

(declare-fun get!6713 (Option!4386) Rule!7480)

(assert (=> b!1910757 (= lt!730924 (get!6713 lt!730922))))

(declare-fun b!1910758 () Bool)

(declare-fun res!853261 () Bool)

(assert (=> b!1910758 (=> (not res!853261) (not e!1220574))))

(declare-fun rulesProduceEachTokenIndividuallyList!1184 (LexerInterface!3453 List!21624 List!21625) Bool)

(assert (=> b!1910758 (= res!853261 (rulesProduceEachTokenIndividuallyList!1184 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1910759 () Bool)

(declare-fun Unit!35905 () Unit!35902)

(assert (=> b!1910759 (= e!1220580 Unit!35905)))

(declare-fun lt!730906 () Unit!35902)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!248 (Regex!5265 List!21623 C!10676) Unit!35902)

(assert (=> b!1910759 (= lt!730906 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!248 (regex!3840 (rule!6039 separatorToken!354)) lt!730912 lt!730926))))

(declare-fun res!853264 () Bool)

(assert (=> b!1910759 (= res!853264 (not (matchR!2551 (regex!3840 (rule!6039 separatorToken!354)) lt!730912)))))

(assert (=> b!1910759 (=> (not res!853264) (not e!1220585))))

(assert (=> b!1910759 e!1220585))

(declare-fun b!1910760 () Bool)

(assert (=> b!1910760 (= e!1220589 e!1220583)))

(declare-fun res!853257 () Bool)

(assert (=> b!1910760 (=> (not res!853257) (not e!1220583))))

(assert (=> b!1910760 (= res!853257 (matchR!2551 (regex!3840 lt!730916) lt!730914))))

(assert (=> b!1910760 (= lt!730916 (get!6713 lt!730911))))

(declare-fun b!1910761 () Bool)

(declare-fun res!853252 () Bool)

(assert (=> b!1910761 (=> (not res!853252) (not e!1220574))))

(assert (=> b!1910761 (= res!853252 (rulesProduceIndividualToken!1625 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1910762 () Bool)

(declare-fun rulesValidInductive!1304 (LexerInterface!3453 List!21624) Bool)

(assert (=> b!1910762 (= e!1220575 (rulesValidInductive!1304 thiss!23328 rules!3198))))

(declare-fun e!1220579 () Bool)

(declare-fun tp!545455 () Bool)

(declare-fun b!1910763 () Bool)

(assert (=> b!1910763 (= e!1220579 (and tp!545455 (inv!28643 (tag!4274 (h!26943 rules!3198))) (inv!28647 (transformation!3840 (h!26943 rules!3198))) e!1220576))))

(declare-fun b!1910764 () Bool)

(declare-fun tp!545454 () Bool)

(assert (=> b!1910764 (= e!1220581 (and e!1220579 tp!545454))))

(assert (= (and start!191652 res!853251) b!1910734))

(assert (= (and b!1910734 res!853247) b!1910752))

(assert (= (and b!1910752 res!853260) b!1910758))

(assert (= (and b!1910758 res!853261) b!1910761))

(assert (= (and b!1910761 res!853252) b!1910755))

(assert (= (and b!1910755 res!853263) b!1910738))

(assert (= (and b!1910738 res!853246) b!1910747))

(assert (= (and b!1910747 res!853256) b!1910748))

(assert (= (and b!1910748 res!853249) b!1910742))

(assert (= (and b!1910742 res!853259) b!1910757))

(assert (= (and b!1910757 res!853254) b!1910741))

(assert (= (and b!1910742 res!853253) b!1910736))

(assert (= (and b!1910742 res!853262) b!1910760))

(assert (= (and b!1910760 res!853257) b!1910746))

(assert (= (and b!1910742 (not res!853250)) b!1910745))

(assert (= (and b!1910745 c!311293) b!1910759))

(assert (= (and b!1910745 (not c!311293)) b!1910749))

(assert (= (and b!1910759 res!853264) b!1910756))

(assert (= (and b!1910745 (not res!853248)) b!1910737))

(assert (= (and b!1910737 (not res!853258)) b!1910740))

(assert (= (and b!1910740 (not res!853255)) b!1910762))

(assert (= b!1910763 b!1910739))

(assert (= b!1910764 b!1910763))

(assert (= (and start!191652 ((_ is Cons!21542) rules!3198)) b!1910764))

(assert (= b!1910750 b!1910744))

(assert (= b!1910753 b!1910750))

(assert (= b!1910754 b!1910753))

(assert (= (and start!191652 ((_ is Cons!21543) tokens!598)) b!1910754))

(assert (= b!1910743 b!1910751))

(assert (= b!1910735 b!1910743))

(assert (= start!191652 b!1910735))

(declare-fun m!2344439 () Bool)

(assert (=> b!1910759 m!2344439))

(declare-fun m!2344441 () Bool)

(assert (=> b!1910759 m!2344441))

(declare-fun m!2344443 () Bool)

(assert (=> b!1910761 m!2344443))

(declare-fun m!2344445 () Bool)

(assert (=> b!1910762 m!2344445))

(declare-fun m!2344447 () Bool)

(assert (=> b!1910734 m!2344447))

(declare-fun m!2344449 () Bool)

(assert (=> b!1910736 m!2344449))

(declare-fun m!2344451 () Bool)

(assert (=> b!1910754 m!2344451))

(declare-fun m!2344453 () Bool)

(assert (=> b!1910750 m!2344453))

(declare-fun m!2344455 () Bool)

(assert (=> b!1910750 m!2344455))

(declare-fun m!2344457 () Bool)

(assert (=> b!1910745 m!2344457))

(declare-fun m!2344459 () Bool)

(assert (=> b!1910745 m!2344459))

(declare-fun m!2344461 () Bool)

(assert (=> b!1910745 m!2344461))

(declare-fun m!2344463 () Bool)

(assert (=> b!1910745 m!2344463))

(declare-fun m!2344465 () Bool)

(assert (=> b!1910745 m!2344465))

(assert (=> b!1910745 m!2344463))

(declare-fun m!2344467 () Bool)

(assert (=> b!1910745 m!2344467))

(assert (=> b!1910745 m!2344457))

(declare-fun m!2344469 () Bool)

(assert (=> b!1910745 m!2344469))

(declare-fun m!2344471 () Bool)

(assert (=> b!1910745 m!2344471))

(declare-fun m!2344473 () Bool)

(assert (=> b!1910745 m!2344473))

(declare-fun m!2344475 () Bool)

(assert (=> b!1910745 m!2344475))

(declare-fun m!2344477 () Bool)

(assert (=> b!1910745 m!2344477))

(declare-fun m!2344479 () Bool)

(assert (=> b!1910745 m!2344479))

(declare-fun m!2344481 () Bool)

(assert (=> b!1910745 m!2344481))

(declare-fun m!2344483 () Bool)

(assert (=> b!1910745 m!2344483))

(declare-fun m!2344485 () Bool)

(assert (=> b!1910745 m!2344485))

(assert (=> b!1910745 m!2344471))

(declare-fun m!2344487 () Bool)

(assert (=> b!1910745 m!2344487))

(assert (=> b!1910745 m!2344483))

(declare-fun m!2344489 () Bool)

(assert (=> b!1910758 m!2344489))

(declare-fun m!2344491 () Bool)

(assert (=> b!1910735 m!2344491))

(declare-fun m!2344493 () Bool)

(assert (=> b!1910757 m!2344493))

(declare-fun m!2344495 () Bool)

(assert (=> b!1910757 m!2344495))

(declare-fun m!2344497 () Bool)

(assert (=> b!1910763 m!2344497))

(declare-fun m!2344499 () Bool)

(assert (=> b!1910763 m!2344499))

(declare-fun m!2344501 () Bool)

(assert (=> b!1910737 m!2344501))

(declare-fun m!2344503 () Bool)

(assert (=> b!1910747 m!2344503))

(declare-fun m!2344505 () Bool)

(assert (=> b!1910740 m!2344505))

(assert (=> b!1910740 m!2344505))

(declare-fun m!2344507 () Bool)

(assert (=> b!1910740 m!2344507))

(declare-fun m!2344509 () Bool)

(assert (=> b!1910740 m!2344509))

(declare-fun m!2344511 () Bool)

(assert (=> b!1910738 m!2344511))

(declare-fun m!2344513 () Bool)

(assert (=> b!1910752 m!2344513))

(declare-fun m!2344515 () Bool)

(assert (=> b!1910743 m!2344515))

(declare-fun m!2344517 () Bool)

(assert (=> b!1910743 m!2344517))

(declare-fun m!2344519 () Bool)

(assert (=> b!1910753 m!2344519))

(declare-fun m!2344521 () Bool)

(assert (=> b!1910760 m!2344521))

(declare-fun m!2344523 () Bool)

(assert (=> b!1910760 m!2344523))

(declare-fun m!2344525 () Bool)

(assert (=> start!191652 m!2344525))

(declare-fun m!2344527 () Bool)

(assert (=> b!1910742 m!2344527))

(declare-fun m!2344529 () Bool)

(assert (=> b!1910742 m!2344529))

(assert (=> b!1910742 m!2344527))

(declare-fun m!2344531 () Bool)

(assert (=> b!1910742 m!2344531))

(declare-fun m!2344533 () Bool)

(assert (=> b!1910742 m!2344533))

(declare-fun m!2344535 () Bool)

(assert (=> b!1910742 m!2344535))

(declare-fun m!2344537 () Bool)

(assert (=> b!1910742 m!2344537))

(declare-fun m!2344539 () Bool)

(assert (=> b!1910742 m!2344539))

(declare-fun m!2344541 () Bool)

(assert (=> b!1910742 m!2344541))

(declare-fun m!2344543 () Bool)

(assert (=> b!1910742 m!2344543))

(declare-fun m!2344545 () Bool)

(assert (=> b!1910742 m!2344545))

(declare-fun m!2344547 () Bool)

(assert (=> b!1910742 m!2344547))

(declare-fun m!2344549 () Bool)

(assert (=> b!1910742 m!2344549))

(declare-fun m!2344551 () Bool)

(assert (=> b!1910742 m!2344551))

(declare-fun m!2344553 () Bool)

(assert (=> b!1910742 m!2344553))

(declare-fun m!2344555 () Bool)

(assert (=> b!1910742 m!2344555))

(declare-fun m!2344557 () Bool)

(assert (=> b!1910742 m!2344557))

(assert (=> b!1910742 m!2344541))

(declare-fun m!2344559 () Bool)

(assert (=> b!1910742 m!2344559))

(declare-fun m!2344561 () Bool)

(assert (=> b!1910742 m!2344561))

(assert (=> b!1910742 m!2344553))

(check-sat (not b!1910736) (not b!1910753) (not b!1910737) (not b_next!54641) (not b!1910734) (not b!1910758) (not b_next!54639) (not b!1910750) (not b!1910761) (not b!1910754) (not b!1910760) (not b!1910752) (not b!1910745) (not b!1910740) (not b!1910747) b_and!148855 (not b!1910738) (not b!1910735) (not b!1910743) (not b_next!54637) b_and!148851 (not b!1910762) (not b_next!54633) (not b!1910759) (not b_next!54635) (not start!191652) (not b!1910764) b_and!148847 b_and!148857 (not b!1910763) (not b!1910757) (not b!1910742) b_and!148853 (not b_next!54643) b_and!148849)
(check-sat (not b_next!54641) b_and!148855 (not b_next!54639) b_and!148853 (not b_next!54637) b_and!148851 (not b_next!54633) (not b_next!54635) b_and!148847 b_and!148857 (not b_next!54643) b_and!148849)
(get-model)

(declare-fun d!584439 () Bool)

(assert (=> d!584439 (= (get!6712 lt!730920) (v!26435 lt!730920))))

(assert (=> b!1910736 d!584439))

(declare-fun d!584441 () Bool)

(declare-fun res!853279 () Bool)

(declare-fun e!1220599 () Bool)

(assert (=> d!584441 (=> res!853279 e!1220599)))

(assert (=> d!584441 (= res!853279 (not ((_ is Cons!21542) rules!3198)))))

(assert (=> d!584441 (= (sepAndNonSepRulesDisjointChars!938 rules!3198 rules!3198) e!1220599)))

(declare-fun b!1910769 () Bool)

(declare-fun e!1220600 () Bool)

(assert (=> b!1910769 (= e!1220599 e!1220600)))

(declare-fun res!853280 () Bool)

(assert (=> b!1910769 (=> (not res!853280) (not e!1220600))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!432 (Rule!7480 List!21624) Bool)

(assert (=> b!1910769 (= res!853280 (ruleDisjointCharsFromAllFromOtherType!432 (h!26943 rules!3198) rules!3198))))

(declare-fun b!1910770 () Bool)

(assert (=> b!1910770 (= e!1220600 (sepAndNonSepRulesDisjointChars!938 rules!3198 (t!178081 rules!3198)))))

(assert (= (and d!584441 (not res!853279)) b!1910769))

(assert (= (and b!1910769 res!853280) b!1910770))

(declare-fun m!2344569 () Bool)

(assert (=> b!1910769 m!2344569))

(declare-fun m!2344571 () Bool)

(assert (=> b!1910770 m!2344571))

(assert (=> b!1910747 d!584441))

(declare-fun b!1910814 () Bool)

(declare-fun e!1220627 () Bool)

(declare-fun lt!730937 () Bool)

(assert (=> b!1910814 (= e!1220627 (not lt!730937))))

(declare-fun b!1910815 () Bool)

(declare-fun e!1220628 () Bool)

(declare-fun e!1220626 () Bool)

(assert (=> b!1910815 (= e!1220628 e!1220626)))

(declare-fun res!853307 () Bool)

(assert (=> b!1910815 (=> res!853307 e!1220626)))

(declare-fun call!117701 () Bool)

(assert (=> b!1910815 (= res!853307 call!117701)))

(declare-fun d!584443 () Bool)

(declare-fun e!1220624 () Bool)

(assert (=> d!584443 e!1220624))

(declare-fun c!311306 () Bool)

(assert (=> d!584443 (= c!311306 ((_ is EmptyExpr!5265) (regex!3840 lt!730924)))))

(declare-fun e!1220629 () Bool)

(assert (=> d!584443 (= lt!730937 e!1220629)))

(declare-fun c!311308 () Bool)

(declare-fun isEmpty!13229 (List!21623) Bool)

(assert (=> d!584443 (= c!311308 (isEmpty!13229 lt!730912))))

(declare-fun validRegex!2123 (Regex!5265) Bool)

(assert (=> d!584443 (validRegex!2123 (regex!3840 lt!730924))))

(assert (=> d!584443 (= (matchR!2551 (regex!3840 lt!730924) lt!730912) lt!730937)))

(declare-fun b!1910816 () Bool)

(assert (=> b!1910816 (= e!1220626 (not (= (head!4444 lt!730912) (c!311295 (regex!3840 lt!730924)))))))

(declare-fun b!1910817 () Bool)

(assert (=> b!1910817 (= e!1220624 (= lt!730937 call!117701))))

(declare-fun b!1910818 () Bool)

(declare-fun res!853306 () Bool)

(declare-fun e!1220625 () Bool)

(assert (=> b!1910818 (=> (not res!853306) (not e!1220625))))

(assert (=> b!1910818 (= res!853306 (not call!117701))))

(declare-fun b!1910819 () Bool)

(assert (=> b!1910819 (= e!1220625 (= (head!4444 lt!730912) (c!311295 (regex!3840 lt!730924))))))

(declare-fun b!1910820 () Bool)

(declare-fun res!853310 () Bool)

(declare-fun e!1220630 () Bool)

(assert (=> b!1910820 (=> res!853310 e!1220630)))

(assert (=> b!1910820 (= res!853310 e!1220625)))

(declare-fun res!853311 () Bool)

(assert (=> b!1910820 (=> (not res!853311) (not e!1220625))))

(assert (=> b!1910820 (= res!853311 lt!730937)))

(declare-fun b!1910821 () Bool)

(declare-fun res!853308 () Bool)

(assert (=> b!1910821 (=> res!853308 e!1220626)))

(declare-fun tail!2956 (List!21623) List!21623)

(assert (=> b!1910821 (= res!853308 (not (isEmpty!13229 (tail!2956 lt!730912))))))

(declare-fun bm!117696 () Bool)

(assert (=> bm!117696 (= call!117701 (isEmpty!13229 lt!730912))))

(declare-fun b!1910822 () Bool)

(declare-fun nullable!1597 (Regex!5265) Bool)

(assert (=> b!1910822 (= e!1220629 (nullable!1597 (regex!3840 lt!730924)))))

(declare-fun b!1910823 () Bool)

(declare-fun derivativeStep!1356 (Regex!5265 C!10676) Regex!5265)

(assert (=> b!1910823 (= e!1220629 (matchR!2551 (derivativeStep!1356 (regex!3840 lt!730924) (head!4444 lt!730912)) (tail!2956 lt!730912)))))

(declare-fun b!1910824 () Bool)

(declare-fun res!853312 () Bool)

(assert (=> b!1910824 (=> res!853312 e!1220630)))

(assert (=> b!1910824 (= res!853312 (not ((_ is ElementMatch!5265) (regex!3840 lt!730924))))))

(assert (=> b!1910824 (= e!1220627 e!1220630)))

(declare-fun b!1910825 () Bool)

(declare-fun res!853313 () Bool)

(assert (=> b!1910825 (=> (not res!853313) (not e!1220625))))

(assert (=> b!1910825 (= res!853313 (isEmpty!13229 (tail!2956 lt!730912)))))

(declare-fun b!1910826 () Bool)

(assert (=> b!1910826 (= e!1220624 e!1220627)))

(declare-fun c!311307 () Bool)

(assert (=> b!1910826 (= c!311307 ((_ is EmptyLang!5265) (regex!3840 lt!730924)))))

(declare-fun b!1910827 () Bool)

(assert (=> b!1910827 (= e!1220630 e!1220628)))

(declare-fun res!853309 () Bool)

(assert (=> b!1910827 (=> (not res!853309) (not e!1220628))))

(assert (=> b!1910827 (= res!853309 (not lt!730937))))

(assert (= (and d!584443 c!311308) b!1910822))

(assert (= (and d!584443 (not c!311308)) b!1910823))

(assert (= (and d!584443 c!311306) b!1910817))

(assert (= (and d!584443 (not c!311306)) b!1910826))

(assert (= (and b!1910826 c!311307) b!1910814))

(assert (= (and b!1910826 (not c!311307)) b!1910824))

(assert (= (and b!1910824 (not res!853312)) b!1910820))

(assert (= (and b!1910820 res!853311) b!1910818))

(assert (= (and b!1910818 res!853306) b!1910825))

(assert (= (and b!1910825 res!853313) b!1910819))

(assert (= (and b!1910820 (not res!853310)) b!1910827))

(assert (= (and b!1910827 res!853309) b!1910815))

(assert (= (and b!1910815 (not res!853307)) b!1910821))

(assert (= (and b!1910821 (not res!853308)) b!1910816))

(assert (= (or b!1910817 b!1910815 b!1910818) bm!117696))

(assert (=> b!1910816 m!2344473))

(declare-fun m!2344593 () Bool)

(assert (=> bm!117696 m!2344593))

(declare-fun m!2344595 () Bool)

(assert (=> b!1910821 m!2344595))

(assert (=> b!1910821 m!2344595))

(declare-fun m!2344597 () Bool)

(assert (=> b!1910821 m!2344597))

(assert (=> b!1910823 m!2344473))

(assert (=> b!1910823 m!2344473))

(declare-fun m!2344599 () Bool)

(assert (=> b!1910823 m!2344599))

(assert (=> b!1910823 m!2344595))

(assert (=> b!1910823 m!2344599))

(assert (=> b!1910823 m!2344595))

(declare-fun m!2344601 () Bool)

(assert (=> b!1910823 m!2344601))

(assert (=> d!584443 m!2344593))

(declare-fun m!2344603 () Bool)

(assert (=> d!584443 m!2344603))

(declare-fun m!2344605 () Bool)

(assert (=> b!1910822 m!2344605))

(assert (=> b!1910825 m!2344595))

(assert (=> b!1910825 m!2344595))

(assert (=> b!1910825 m!2344597))

(assert (=> b!1910819 m!2344473))

(assert (=> b!1910757 d!584443))

(declare-fun d!584451 () Bool)

(assert (=> d!584451 (= (get!6713 lt!730922) (v!26436 lt!730922))))

(assert (=> b!1910757 d!584451))

(declare-fun d!584453 () Bool)

(assert (=> d!584453 (not (matchR!2551 (regex!3840 (rule!6039 separatorToken!354)) lt!730912))))

(declare-fun lt!730940 () Unit!35902)

(declare-fun choose!11894 (Regex!5265 List!21623 C!10676) Unit!35902)

(assert (=> d!584453 (= lt!730940 (choose!11894 (regex!3840 (rule!6039 separatorToken!354)) lt!730912 lt!730926))))

(assert (=> d!584453 (validRegex!2123 (regex!3840 (rule!6039 separatorToken!354)))))

(assert (=> d!584453 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!248 (regex!3840 (rule!6039 separatorToken!354)) lt!730912 lt!730926) lt!730940)))

(declare-fun bs!414159 () Bool)

(assert (= bs!414159 d!584453))

(assert (=> bs!414159 m!2344441))

(declare-fun m!2344607 () Bool)

(assert (=> bs!414159 m!2344607))

(declare-fun m!2344609 () Bool)

(assert (=> bs!414159 m!2344609))

(assert (=> b!1910759 d!584453))

(declare-fun b!1910828 () Bool)

(declare-fun e!1220634 () Bool)

(declare-fun lt!730941 () Bool)

(assert (=> b!1910828 (= e!1220634 (not lt!730941))))

(declare-fun b!1910829 () Bool)

(declare-fun e!1220635 () Bool)

(declare-fun e!1220633 () Bool)

(assert (=> b!1910829 (= e!1220635 e!1220633)))

(declare-fun res!853315 () Bool)

(assert (=> b!1910829 (=> res!853315 e!1220633)))

(declare-fun call!117702 () Bool)

(assert (=> b!1910829 (= res!853315 call!117702)))

(declare-fun d!584455 () Bool)

(declare-fun e!1220631 () Bool)

(assert (=> d!584455 e!1220631))

(declare-fun c!311310 () Bool)

(assert (=> d!584455 (= c!311310 ((_ is EmptyExpr!5265) (regex!3840 (rule!6039 separatorToken!354))))))

(declare-fun e!1220636 () Bool)

(assert (=> d!584455 (= lt!730941 e!1220636)))

(declare-fun c!311312 () Bool)

(assert (=> d!584455 (= c!311312 (isEmpty!13229 lt!730912))))

(assert (=> d!584455 (validRegex!2123 (regex!3840 (rule!6039 separatorToken!354)))))

(assert (=> d!584455 (= (matchR!2551 (regex!3840 (rule!6039 separatorToken!354)) lt!730912) lt!730941)))

(declare-fun b!1910830 () Bool)

(assert (=> b!1910830 (= e!1220633 (not (= (head!4444 lt!730912) (c!311295 (regex!3840 (rule!6039 separatorToken!354))))))))

(declare-fun b!1910831 () Bool)

(assert (=> b!1910831 (= e!1220631 (= lt!730941 call!117702))))

(declare-fun b!1910832 () Bool)

(declare-fun res!853314 () Bool)

(declare-fun e!1220632 () Bool)

(assert (=> b!1910832 (=> (not res!853314) (not e!1220632))))

(assert (=> b!1910832 (= res!853314 (not call!117702))))

(declare-fun b!1910833 () Bool)

(assert (=> b!1910833 (= e!1220632 (= (head!4444 lt!730912) (c!311295 (regex!3840 (rule!6039 separatorToken!354)))))))

(declare-fun b!1910834 () Bool)

(declare-fun res!853318 () Bool)

(declare-fun e!1220637 () Bool)

(assert (=> b!1910834 (=> res!853318 e!1220637)))

(assert (=> b!1910834 (= res!853318 e!1220632)))

(declare-fun res!853319 () Bool)

(assert (=> b!1910834 (=> (not res!853319) (not e!1220632))))

(assert (=> b!1910834 (= res!853319 lt!730941)))

(declare-fun b!1910835 () Bool)

(declare-fun res!853316 () Bool)

(assert (=> b!1910835 (=> res!853316 e!1220633)))

(assert (=> b!1910835 (= res!853316 (not (isEmpty!13229 (tail!2956 lt!730912))))))

(declare-fun bm!117697 () Bool)

(assert (=> bm!117697 (= call!117702 (isEmpty!13229 lt!730912))))

(declare-fun b!1910836 () Bool)

(assert (=> b!1910836 (= e!1220636 (nullable!1597 (regex!3840 (rule!6039 separatorToken!354))))))

(declare-fun b!1910837 () Bool)

(assert (=> b!1910837 (= e!1220636 (matchR!2551 (derivativeStep!1356 (regex!3840 (rule!6039 separatorToken!354)) (head!4444 lt!730912)) (tail!2956 lt!730912)))))

(declare-fun b!1910838 () Bool)

(declare-fun res!853320 () Bool)

(assert (=> b!1910838 (=> res!853320 e!1220637)))

(assert (=> b!1910838 (= res!853320 (not ((_ is ElementMatch!5265) (regex!3840 (rule!6039 separatorToken!354)))))))

(assert (=> b!1910838 (= e!1220634 e!1220637)))

(declare-fun b!1910839 () Bool)

(declare-fun res!853321 () Bool)

(assert (=> b!1910839 (=> (not res!853321) (not e!1220632))))

(assert (=> b!1910839 (= res!853321 (isEmpty!13229 (tail!2956 lt!730912)))))

(declare-fun b!1910840 () Bool)

(assert (=> b!1910840 (= e!1220631 e!1220634)))

(declare-fun c!311311 () Bool)

(assert (=> b!1910840 (= c!311311 ((_ is EmptyLang!5265) (regex!3840 (rule!6039 separatorToken!354))))))

(declare-fun b!1910841 () Bool)

(assert (=> b!1910841 (= e!1220637 e!1220635)))

(declare-fun res!853317 () Bool)

(assert (=> b!1910841 (=> (not res!853317) (not e!1220635))))

(assert (=> b!1910841 (= res!853317 (not lt!730941))))

(assert (= (and d!584455 c!311312) b!1910836))

(assert (= (and d!584455 (not c!311312)) b!1910837))

(assert (= (and d!584455 c!311310) b!1910831))

(assert (= (and d!584455 (not c!311310)) b!1910840))

(assert (= (and b!1910840 c!311311) b!1910828))

(assert (= (and b!1910840 (not c!311311)) b!1910838))

(assert (= (and b!1910838 (not res!853320)) b!1910834))

(assert (= (and b!1910834 res!853319) b!1910832))

(assert (= (and b!1910832 res!853314) b!1910839))

(assert (= (and b!1910839 res!853321) b!1910833))

(assert (= (and b!1910834 (not res!853318)) b!1910841))

(assert (= (and b!1910841 res!853317) b!1910829))

(assert (= (and b!1910829 (not res!853315)) b!1910835))

(assert (= (and b!1910835 (not res!853316)) b!1910830))

(assert (= (or b!1910831 b!1910829 b!1910832) bm!117697))

(assert (=> b!1910830 m!2344473))

(assert (=> bm!117697 m!2344593))

(assert (=> b!1910835 m!2344595))

(assert (=> b!1910835 m!2344595))

(assert (=> b!1910835 m!2344597))

(assert (=> b!1910837 m!2344473))

(assert (=> b!1910837 m!2344473))

(declare-fun m!2344611 () Bool)

(assert (=> b!1910837 m!2344611))

(assert (=> b!1910837 m!2344595))

(assert (=> b!1910837 m!2344611))

(assert (=> b!1910837 m!2344595))

(declare-fun m!2344613 () Bool)

(assert (=> b!1910837 m!2344613))

(assert (=> d!584455 m!2344593))

(assert (=> d!584455 m!2344609))

(declare-fun m!2344615 () Bool)

(assert (=> b!1910836 m!2344615))

(assert (=> b!1910839 m!2344595))

(assert (=> b!1910839 m!2344595))

(assert (=> b!1910839 m!2344597))

(assert (=> b!1910833 m!2344473))

(assert (=> b!1910759 d!584455))

(declare-fun bs!414163 () Bool)

(declare-fun d!584457 () Bool)

(assert (= bs!414163 (and d!584457 b!1910738)))

(declare-fun lambda!74626 () Int)

(assert (=> bs!414163 (not (= lambda!74626 lambda!74617))))

(declare-fun b!1910969 () Bool)

(declare-fun e!1220725 () Bool)

(assert (=> b!1910969 (= e!1220725 true)))

(declare-fun b!1910968 () Bool)

(declare-fun e!1220724 () Bool)

(assert (=> b!1910968 (= e!1220724 e!1220725)))

(declare-fun b!1910967 () Bool)

(declare-fun e!1220723 () Bool)

(assert (=> b!1910967 (= e!1220723 e!1220724)))

(assert (=> d!584457 e!1220723))

(assert (= b!1910968 b!1910969))

(assert (= b!1910967 b!1910968))

(assert (= (and d!584457 ((_ is Cons!21542) rules!3198)) b!1910967))

(declare-fun order!13607 () Int)

(declare-fun order!13609 () Int)

(declare-fun dynLambda!10496 (Int Int) Int)

(declare-fun dynLambda!10497 (Int Int) Int)

(assert (=> b!1910969 (< (dynLambda!10496 order!13607 (toValue!5469 (transformation!3840 (h!26943 rules!3198)))) (dynLambda!10497 order!13609 lambda!74626))))

(declare-fun order!13611 () Int)

(declare-fun dynLambda!10498 (Int Int) Int)

(assert (=> b!1910969 (< (dynLambda!10498 order!13611 (toChars!5328 (transformation!3840 (h!26943 rules!3198)))) (dynLambda!10497 order!13609 lambda!74626))))

(assert (=> d!584457 true))

(declare-fun lt!730962 () Bool)

(assert (=> d!584457 (= lt!730962 (forall!4530 tokens!598 lambda!74626))))

(declare-fun e!1220715 () Bool)

(assert (=> d!584457 (= lt!730962 e!1220715)))

(declare-fun res!853393 () Bool)

(assert (=> d!584457 (=> res!853393 e!1220715)))

(assert (=> d!584457 (= res!853393 (not ((_ is Cons!21543) tokens!598)))))

(assert (=> d!584457 (not (isEmpty!13221 rules!3198))))

(assert (=> d!584457 (= (rulesProduceEachTokenIndividuallyList!1184 thiss!23328 rules!3198 tokens!598) lt!730962)))

(declare-fun b!1910957 () Bool)

(declare-fun e!1220716 () Bool)

(assert (=> b!1910957 (= e!1220715 e!1220716)))

(declare-fun res!853392 () Bool)

(assert (=> b!1910957 (=> (not res!853392) (not e!1220716))))

(assert (=> b!1910957 (= res!853392 (rulesProduceIndividualToken!1625 thiss!23328 rules!3198 (h!26944 tokens!598)))))

(declare-fun b!1910958 () Bool)

(assert (=> b!1910958 (= e!1220716 (rulesProduceEachTokenIndividuallyList!1184 thiss!23328 rules!3198 (t!178082 tokens!598)))))

(assert (= (and d!584457 (not res!853393)) b!1910957))

(assert (= (and b!1910957 res!853392) b!1910958))

(declare-fun m!2344707 () Bool)

(assert (=> d!584457 m!2344707))

(assert (=> d!584457 m!2344447))

(assert (=> b!1910957 m!2344501))

(declare-fun m!2344709 () Bool)

(assert (=> b!1910958 m!2344709))

(assert (=> b!1910758 d!584457))

(declare-fun d!584491 () Bool)

(declare-fun lt!730996 () Bool)

(declare-fun e!1220755 () Bool)

(assert (=> d!584491 (= lt!730996 e!1220755)))

(declare-fun res!853437 () Bool)

(assert (=> d!584491 (=> (not res!853437) (not e!1220755))))

(declare-fun list!8763 (BalanceConc!14162) List!21625)

(assert (=> d!584491 (= res!853437 (= (list!8763 (_1!11603 (lex!1528 thiss!23328 rules!3198 (print!1463 thiss!23328 (singletonSeq!1863 (h!26944 tokens!598)))))) (list!8763 (singletonSeq!1863 (h!26944 tokens!598)))))))

(declare-fun e!1220756 () Bool)

(assert (=> d!584491 (= lt!730996 e!1220756)))

(declare-fun res!853436 () Bool)

(assert (=> d!584491 (=> (not res!853436) (not e!1220756))))

(declare-fun lt!730995 () tuple2!20268)

(declare-fun size!16972 (BalanceConc!14162) Int)

(assert (=> d!584491 (= res!853436 (= (size!16972 (_1!11603 lt!730995)) 1))))

(assert (=> d!584491 (= lt!730995 (lex!1528 thiss!23328 rules!3198 (print!1463 thiss!23328 (singletonSeq!1863 (h!26944 tokens!598)))))))

(assert (=> d!584491 (not (isEmpty!13221 rules!3198))))

(assert (=> d!584491 (= (rulesProduceIndividualToken!1625 thiss!23328 rules!3198 (h!26944 tokens!598)) lt!730996)))

(declare-fun b!1911031 () Bool)

(declare-fun res!853435 () Bool)

(assert (=> b!1911031 (=> (not res!853435) (not e!1220756))))

(declare-fun apply!5647 (BalanceConc!14162 Int) Token!7232)

(assert (=> b!1911031 (= res!853435 (= (apply!5647 (_1!11603 lt!730995) 0) (h!26944 tokens!598)))))

(declare-fun b!1911032 () Bool)

(declare-fun isEmpty!13230 (BalanceConc!14160) Bool)

(assert (=> b!1911032 (= e!1220756 (isEmpty!13230 (_2!11603 lt!730995)))))

(declare-fun b!1911033 () Bool)

(assert (=> b!1911033 (= e!1220755 (isEmpty!13230 (_2!11603 (lex!1528 thiss!23328 rules!3198 (print!1463 thiss!23328 (singletonSeq!1863 (h!26944 tokens!598)))))))))

(assert (= (and d!584491 res!853436) b!1911031))

(assert (= (and b!1911031 res!853435) b!1911032))

(assert (= (and d!584491 res!853437) b!1911033))

(assert (=> d!584491 m!2344477))

(declare-fun m!2344775 () Bool)

(assert (=> d!584491 m!2344775))

(declare-fun m!2344777 () Bool)

(assert (=> d!584491 m!2344777))

(assert (=> d!584491 m!2344447))

(assert (=> d!584491 m!2344477))

(declare-fun m!2344779 () Bool)

(assert (=> d!584491 m!2344779))

(declare-fun m!2344781 () Bool)

(assert (=> d!584491 m!2344781))

(assert (=> d!584491 m!2344477))

(assert (=> d!584491 m!2344779))

(declare-fun m!2344783 () Bool)

(assert (=> d!584491 m!2344783))

(declare-fun m!2344785 () Bool)

(assert (=> b!1911031 m!2344785))

(declare-fun m!2344787 () Bool)

(assert (=> b!1911032 m!2344787))

(assert (=> b!1911033 m!2344477))

(assert (=> b!1911033 m!2344477))

(assert (=> b!1911033 m!2344779))

(assert (=> b!1911033 m!2344779))

(assert (=> b!1911033 m!2344783))

(declare-fun m!2344789 () Bool)

(assert (=> b!1911033 m!2344789))

(assert (=> b!1910737 d!584491))

(declare-fun b!1911034 () Bool)

(declare-fun e!1220760 () Bool)

(declare-fun lt!730997 () Bool)

(assert (=> b!1911034 (= e!1220760 (not lt!730997))))

(declare-fun b!1911035 () Bool)

(declare-fun e!1220761 () Bool)

(declare-fun e!1220759 () Bool)

(assert (=> b!1911035 (= e!1220761 e!1220759)))

(declare-fun res!853439 () Bool)

(assert (=> b!1911035 (=> res!853439 e!1220759)))

(declare-fun call!117709 () Bool)

(assert (=> b!1911035 (= res!853439 call!117709)))

(declare-fun d!584503 () Bool)

(declare-fun e!1220757 () Bool)

(assert (=> d!584503 e!1220757))

(declare-fun c!311340 () Bool)

(assert (=> d!584503 (= c!311340 ((_ is EmptyExpr!5265) (regex!3840 lt!730916)))))

(declare-fun e!1220762 () Bool)

(assert (=> d!584503 (= lt!730997 e!1220762)))

(declare-fun c!311342 () Bool)

(assert (=> d!584503 (= c!311342 (isEmpty!13229 lt!730914))))

(assert (=> d!584503 (validRegex!2123 (regex!3840 lt!730916))))

(assert (=> d!584503 (= (matchR!2551 (regex!3840 lt!730916) lt!730914) lt!730997)))

(declare-fun b!1911036 () Bool)

(assert (=> b!1911036 (= e!1220759 (not (= (head!4444 lt!730914) (c!311295 (regex!3840 lt!730916)))))))

(declare-fun b!1911037 () Bool)

(assert (=> b!1911037 (= e!1220757 (= lt!730997 call!117709))))

(declare-fun b!1911038 () Bool)

(declare-fun res!853438 () Bool)

(declare-fun e!1220758 () Bool)

(assert (=> b!1911038 (=> (not res!853438) (not e!1220758))))

(assert (=> b!1911038 (= res!853438 (not call!117709))))

(declare-fun b!1911039 () Bool)

(assert (=> b!1911039 (= e!1220758 (= (head!4444 lt!730914) (c!311295 (regex!3840 lt!730916))))))

(declare-fun b!1911040 () Bool)

(declare-fun res!853442 () Bool)

(declare-fun e!1220763 () Bool)

(assert (=> b!1911040 (=> res!853442 e!1220763)))

(assert (=> b!1911040 (= res!853442 e!1220758)))

(declare-fun res!853443 () Bool)

(assert (=> b!1911040 (=> (not res!853443) (not e!1220758))))

(assert (=> b!1911040 (= res!853443 lt!730997)))

(declare-fun b!1911041 () Bool)

(declare-fun res!853440 () Bool)

(assert (=> b!1911041 (=> res!853440 e!1220759)))

(assert (=> b!1911041 (= res!853440 (not (isEmpty!13229 (tail!2956 lt!730914))))))

(declare-fun bm!117704 () Bool)

(assert (=> bm!117704 (= call!117709 (isEmpty!13229 lt!730914))))

(declare-fun b!1911042 () Bool)

(assert (=> b!1911042 (= e!1220762 (nullable!1597 (regex!3840 lt!730916)))))

(declare-fun b!1911043 () Bool)

(assert (=> b!1911043 (= e!1220762 (matchR!2551 (derivativeStep!1356 (regex!3840 lt!730916) (head!4444 lt!730914)) (tail!2956 lt!730914)))))

(declare-fun b!1911044 () Bool)

(declare-fun res!853444 () Bool)

(assert (=> b!1911044 (=> res!853444 e!1220763)))

(assert (=> b!1911044 (= res!853444 (not ((_ is ElementMatch!5265) (regex!3840 lt!730916))))))

(assert (=> b!1911044 (= e!1220760 e!1220763)))

(declare-fun b!1911045 () Bool)

(declare-fun res!853445 () Bool)

(assert (=> b!1911045 (=> (not res!853445) (not e!1220758))))

(assert (=> b!1911045 (= res!853445 (isEmpty!13229 (tail!2956 lt!730914)))))

(declare-fun b!1911046 () Bool)

(assert (=> b!1911046 (= e!1220757 e!1220760)))

(declare-fun c!311341 () Bool)

(assert (=> b!1911046 (= c!311341 ((_ is EmptyLang!5265) (regex!3840 lt!730916)))))

(declare-fun b!1911047 () Bool)

(assert (=> b!1911047 (= e!1220763 e!1220761)))

(declare-fun res!853441 () Bool)

(assert (=> b!1911047 (=> (not res!853441) (not e!1220761))))

(assert (=> b!1911047 (= res!853441 (not lt!730997))))

(assert (= (and d!584503 c!311342) b!1911042))

(assert (= (and d!584503 (not c!311342)) b!1911043))

(assert (= (and d!584503 c!311340) b!1911037))

(assert (= (and d!584503 (not c!311340)) b!1911046))

(assert (= (and b!1911046 c!311341) b!1911034))

(assert (= (and b!1911046 (not c!311341)) b!1911044))

(assert (= (and b!1911044 (not res!853444)) b!1911040))

(assert (= (and b!1911040 res!853443) b!1911038))

(assert (= (and b!1911038 res!853438) b!1911045))

(assert (= (and b!1911045 res!853445) b!1911039))

(assert (= (and b!1911040 (not res!853442)) b!1911047))

(assert (= (and b!1911047 res!853441) b!1911035))

(assert (= (and b!1911035 (not res!853439)) b!1911041))

(assert (= (and b!1911041 (not res!853440)) b!1911036))

(assert (= (or b!1911037 b!1911035 b!1911038) bm!117704))

(declare-fun m!2344791 () Bool)

(assert (=> b!1911036 m!2344791))

(declare-fun m!2344793 () Bool)

(assert (=> bm!117704 m!2344793))

(declare-fun m!2344795 () Bool)

(assert (=> b!1911041 m!2344795))

(assert (=> b!1911041 m!2344795))

(declare-fun m!2344797 () Bool)

(assert (=> b!1911041 m!2344797))

(assert (=> b!1911043 m!2344791))

(assert (=> b!1911043 m!2344791))

(declare-fun m!2344799 () Bool)

(assert (=> b!1911043 m!2344799))

(assert (=> b!1911043 m!2344795))

(assert (=> b!1911043 m!2344799))

(assert (=> b!1911043 m!2344795))

(declare-fun m!2344801 () Bool)

(assert (=> b!1911043 m!2344801))

(assert (=> d!584503 m!2344793))

(declare-fun m!2344803 () Bool)

(assert (=> d!584503 m!2344803))

(declare-fun m!2344805 () Bool)

(assert (=> b!1911042 m!2344805))

(assert (=> b!1911045 m!2344795))

(assert (=> b!1911045 m!2344795))

(assert (=> b!1911045 m!2344797))

(assert (=> b!1911039 m!2344791))

(assert (=> b!1910760 d!584503))

(declare-fun d!584505 () Bool)

(assert (=> d!584505 (= (get!6713 lt!730911) (v!26436 lt!730911))))

(assert (=> b!1910760 d!584505))

(declare-fun d!584507 () Bool)

(declare-fun res!853450 () Bool)

(declare-fun e!1220768 () Bool)

(assert (=> d!584507 (=> res!853450 e!1220768)))

(assert (=> d!584507 (= res!853450 ((_ is Nil!21543) tokens!598))))

(assert (=> d!584507 (= (forall!4530 tokens!598 lambda!74617) e!1220768)))

(declare-fun b!1911052 () Bool)

(declare-fun e!1220769 () Bool)

(assert (=> b!1911052 (= e!1220768 e!1220769)))

(declare-fun res!853451 () Bool)

(assert (=> b!1911052 (=> (not res!853451) (not e!1220769))))

(declare-fun dynLambda!10501 (Int Token!7232) Bool)

(assert (=> b!1911052 (= res!853451 (dynLambda!10501 lambda!74617 (h!26944 tokens!598)))))

(declare-fun b!1911053 () Bool)

(assert (=> b!1911053 (= e!1220769 (forall!4530 (t!178082 tokens!598) lambda!74617))))

(assert (= (and d!584507 (not res!853450)) b!1911052))

(assert (= (and b!1911052 res!853451) b!1911053))

(declare-fun b_lambda!63215 () Bool)

(assert (=> (not b_lambda!63215) (not b!1911052)))

(declare-fun m!2344807 () Bool)

(assert (=> b!1911052 m!2344807))

(declare-fun m!2344809 () Bool)

(assert (=> b!1911053 m!2344809))

(assert (=> b!1910738 d!584507))

(declare-fun d!584509 () Bool)

(declare-fun lt!731000 () Bool)

(declare-fun isEmpty!13231 (List!21625) Bool)

(assert (=> d!584509 (= lt!731000 (isEmpty!13231 (list!8763 (_1!11603 (lex!1528 thiss!23328 rules!3198 (seqFromList!2712 lt!730914))))))))

(declare-fun isEmpty!13232 (Conc!7173) Bool)

(assert (=> d!584509 (= lt!731000 (isEmpty!13232 (c!311296 (_1!11603 (lex!1528 thiss!23328 rules!3198 (seqFromList!2712 lt!730914))))))))

(assert (=> d!584509 (= (isEmpty!13222 (_1!11603 (lex!1528 thiss!23328 rules!3198 (seqFromList!2712 lt!730914)))) lt!731000)))

(declare-fun bs!414165 () Bool)

(assert (= bs!414165 d!584509))

(declare-fun m!2344811 () Bool)

(assert (=> bs!414165 m!2344811))

(assert (=> bs!414165 m!2344811))

(declare-fun m!2344813 () Bool)

(assert (=> bs!414165 m!2344813))

(declare-fun m!2344815 () Bool)

(assert (=> bs!414165 m!2344815))

(assert (=> b!1910740 d!584509))

(declare-fun b!1911080 () Bool)

(declare-fun e!1220786 () Bool)

(declare-fun lt!731015 () tuple2!20268)

(assert (=> b!1911080 (= e!1220786 (= (_2!11603 lt!731015) (seqFromList!2712 lt!730914)))))

(declare-fun b!1911081 () Bool)

(declare-fun e!1220785 () Bool)

(assert (=> b!1911081 (= e!1220785 (not (isEmpty!13222 (_1!11603 lt!731015))))))

(declare-fun b!1911082 () Bool)

(declare-fun res!853458 () Bool)

(declare-fun e!1220784 () Bool)

(assert (=> b!1911082 (=> (not res!853458) (not e!1220784))))

(declare-datatypes ((tuple2!20272 0))(
  ( (tuple2!20273 (_1!11605 List!21625) (_2!11605 List!21623)) )
))
(declare-fun lexList!943 (LexerInterface!3453 List!21624 List!21623) tuple2!20272)

(assert (=> b!1911082 (= res!853458 (= (list!8763 (_1!11603 lt!731015)) (_1!11605 (lexList!943 thiss!23328 rules!3198 (list!8760 (seqFromList!2712 lt!730914))))))))

(declare-fun b!1911083 () Bool)

(assert (=> b!1911083 (= e!1220786 e!1220785)))

(declare-fun res!853459 () Bool)

(declare-fun size!16973 (BalanceConc!14160) Int)

(assert (=> b!1911083 (= res!853459 (< (size!16973 (_2!11603 lt!731015)) (size!16973 (seqFromList!2712 lt!730914))))))

(assert (=> b!1911083 (=> (not res!853459) (not e!1220785))))

(declare-fun b!1911084 () Bool)

(assert (=> b!1911084 (= e!1220784 (= (list!8760 (_2!11603 lt!731015)) (_2!11605 (lexList!943 thiss!23328 rules!3198 (list!8760 (seqFromList!2712 lt!730914))))))))

(declare-fun d!584511 () Bool)

(assert (=> d!584511 e!1220784))

(declare-fun res!853460 () Bool)

(assert (=> d!584511 (=> (not res!853460) (not e!1220784))))

(assert (=> d!584511 (= res!853460 e!1220786)))

(declare-fun c!311353 () Bool)

(assert (=> d!584511 (= c!311353 (> (size!16972 (_1!11603 lt!731015)) 0))))

(declare-fun lexTailRecV2!666 (LexerInterface!3453 List!21624 BalanceConc!14160 BalanceConc!14160 BalanceConc!14160 BalanceConc!14162) tuple2!20268)

(assert (=> d!584511 (= lt!731015 (lexTailRecV2!666 thiss!23328 rules!3198 (seqFromList!2712 lt!730914) (BalanceConc!14161 Empty!7172) (seqFromList!2712 lt!730914) (BalanceConc!14163 Empty!7173)))))

(assert (=> d!584511 (= (lex!1528 thiss!23328 rules!3198 (seqFromList!2712 lt!730914)) lt!731015)))

(assert (= (and d!584511 c!311353) b!1911083))

(assert (= (and d!584511 (not c!311353)) b!1911080))

(assert (= (and b!1911083 res!853459) b!1911081))

(assert (= (and d!584511 res!853460) b!1911082))

(assert (= (and b!1911082 res!853458) b!1911084))

(declare-fun m!2344817 () Bool)

(assert (=> b!1911084 m!2344817))

(assert (=> b!1911084 m!2344505))

(declare-fun m!2344819 () Bool)

(assert (=> b!1911084 m!2344819))

(assert (=> b!1911084 m!2344819))

(declare-fun m!2344821 () Bool)

(assert (=> b!1911084 m!2344821))

(declare-fun m!2344823 () Bool)

(assert (=> b!1911081 m!2344823))

(declare-fun m!2344825 () Bool)

(assert (=> b!1911083 m!2344825))

(assert (=> b!1911083 m!2344505))

(declare-fun m!2344827 () Bool)

(assert (=> b!1911083 m!2344827))

(declare-fun m!2344829 () Bool)

(assert (=> d!584511 m!2344829))

(assert (=> d!584511 m!2344505))

(assert (=> d!584511 m!2344505))

(declare-fun m!2344831 () Bool)

(assert (=> d!584511 m!2344831))

(declare-fun m!2344833 () Bool)

(assert (=> b!1911082 m!2344833))

(assert (=> b!1911082 m!2344505))

(assert (=> b!1911082 m!2344819))

(assert (=> b!1911082 m!2344819))

(assert (=> b!1911082 m!2344821))

(assert (=> b!1910740 d!584511))

(declare-fun d!584513 () Bool)

(declare-fun fromListB!1226 (List!21623) BalanceConc!14160)

(assert (=> d!584513 (= (seqFromList!2712 lt!730914) (fromListB!1226 lt!730914))))

(declare-fun bs!414166 () Bool)

(assert (= bs!414166 d!584513))

(declare-fun m!2344835 () Bool)

(assert (=> bs!414166 m!2344835))

(assert (=> b!1910740 d!584513))

(declare-fun d!584515 () Bool)

(assert (=> d!584515 (= (inv!28643 (tag!4274 (rule!6039 (h!26944 tokens!598)))) (= (mod (str.len (value!121030 (tag!4274 (rule!6039 (h!26944 tokens!598))))) 2) 0))))

(assert (=> b!1910750 d!584515))

(declare-fun d!584517 () Bool)

(declare-fun res!853463 () Bool)

(declare-fun e!1220802 () Bool)

(assert (=> d!584517 (=> (not res!853463) (not e!1220802))))

(declare-fun semiInverseModEq!1547 (Int Int) Bool)

(assert (=> d!584517 (= res!853463 (semiInverseModEq!1547 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))))))

(assert (=> d!584517 (= (inv!28647 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) e!1220802)))

(declare-fun b!1911108 () Bool)

(declare-fun equivClasses!1474 (Int Int) Bool)

(assert (=> b!1911108 (= e!1220802 (equivClasses!1474 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))))))

(assert (= (and d!584517 res!853463) b!1911108))

(declare-fun m!2344837 () Bool)

(assert (=> d!584517 m!2344837))

(declare-fun m!2344839 () Bool)

(assert (=> b!1911108 m!2344839))

(assert (=> b!1910750 d!584517))

(declare-fun d!584519 () Bool)

(declare-fun lt!731023 () Bool)

(declare-fun e!1220803 () Bool)

(assert (=> d!584519 (= lt!731023 e!1220803)))

(declare-fun res!853466 () Bool)

(assert (=> d!584519 (=> (not res!853466) (not e!1220803))))

(assert (=> d!584519 (= res!853466 (= (list!8763 (_1!11603 (lex!1528 thiss!23328 rules!3198 (print!1463 thiss!23328 (singletonSeq!1863 separatorToken!354))))) (list!8763 (singletonSeq!1863 separatorToken!354))))))

(declare-fun e!1220804 () Bool)

(assert (=> d!584519 (= lt!731023 e!1220804)))

(declare-fun res!853465 () Bool)

(assert (=> d!584519 (=> (not res!853465) (not e!1220804))))

(declare-fun lt!731022 () tuple2!20268)

(assert (=> d!584519 (= res!853465 (= (size!16972 (_1!11603 lt!731022)) 1))))

(assert (=> d!584519 (= lt!731022 (lex!1528 thiss!23328 rules!3198 (print!1463 thiss!23328 (singletonSeq!1863 separatorToken!354))))))

(assert (=> d!584519 (not (isEmpty!13221 rules!3198))))

(assert (=> d!584519 (= (rulesProduceIndividualToken!1625 thiss!23328 rules!3198 separatorToken!354) lt!731023)))

(declare-fun b!1911109 () Bool)

(declare-fun res!853464 () Bool)

(assert (=> b!1911109 (=> (not res!853464) (not e!1220804))))

(assert (=> b!1911109 (= res!853464 (= (apply!5647 (_1!11603 lt!731022) 0) separatorToken!354))))

(declare-fun b!1911110 () Bool)

(assert (=> b!1911110 (= e!1220804 (isEmpty!13230 (_2!11603 lt!731022)))))

(declare-fun b!1911111 () Bool)

(assert (=> b!1911111 (= e!1220803 (isEmpty!13230 (_2!11603 (lex!1528 thiss!23328 rules!3198 (print!1463 thiss!23328 (singletonSeq!1863 separatorToken!354))))))))

(assert (= (and d!584519 res!853465) b!1911109))

(assert (= (and b!1911109 res!853464) b!1911110))

(assert (= (and d!584519 res!853466) b!1911111))

(declare-fun m!2344869 () Bool)

(assert (=> d!584519 m!2344869))

(declare-fun m!2344871 () Bool)

(assert (=> d!584519 m!2344871))

(declare-fun m!2344873 () Bool)

(assert (=> d!584519 m!2344873))

(assert (=> d!584519 m!2344447))

(assert (=> d!584519 m!2344869))

(declare-fun m!2344875 () Bool)

(assert (=> d!584519 m!2344875))

(declare-fun m!2344877 () Bool)

(assert (=> d!584519 m!2344877))

(assert (=> d!584519 m!2344869))

(assert (=> d!584519 m!2344875))

(declare-fun m!2344879 () Bool)

(assert (=> d!584519 m!2344879))

(declare-fun m!2344881 () Bool)

(assert (=> b!1911109 m!2344881))

(declare-fun m!2344883 () Bool)

(assert (=> b!1911110 m!2344883))

(assert (=> b!1911111 m!2344869))

(assert (=> b!1911111 m!2344869))

(assert (=> b!1911111 m!2344875))

(assert (=> b!1911111 m!2344875))

(assert (=> b!1911111 m!2344879))

(declare-fun m!2344885 () Bool)

(assert (=> b!1911111 m!2344885))

(assert (=> b!1910761 d!584519))

(declare-fun d!584523 () Bool)

(declare-fun res!853469 () Bool)

(declare-fun e!1220807 () Bool)

(assert (=> d!584523 (=> (not res!853469) (not e!1220807))))

(declare-fun rulesValid!1433 (LexerInterface!3453 List!21624) Bool)

(assert (=> d!584523 (= res!853469 (rulesValid!1433 thiss!23328 rules!3198))))

(assert (=> d!584523 (= (rulesInvariant!3060 thiss!23328 rules!3198) e!1220807)))

(declare-fun b!1911114 () Bool)

(declare-datatypes ((List!21626 0))(
  ( (Nil!21544) (Cons!21544 (h!26945 String!24998) (t!178195 List!21626)) )
))
(declare-fun noDuplicateTag!1431 (LexerInterface!3453 List!21624 List!21626) Bool)

(assert (=> b!1911114 (= e!1220807 (noDuplicateTag!1431 thiss!23328 rules!3198 Nil!21544))))

(assert (= (and d!584523 res!853469) b!1911114))

(declare-fun m!2344887 () Bool)

(assert (=> d!584523 m!2344887))

(declare-fun m!2344889 () Bool)

(assert (=> b!1911114 m!2344889))

(assert (=> b!1910752 d!584523))

(declare-fun d!584525 () Bool)

(assert (=> d!584525 (= (inv!28643 (tag!4274 (h!26943 rules!3198))) (= (mod (str.len (value!121030 (tag!4274 (h!26943 rules!3198)))) 2) 0))))

(assert (=> b!1910763 d!584525))

(declare-fun d!584527 () Bool)

(declare-fun res!853470 () Bool)

(declare-fun e!1220808 () Bool)

(assert (=> d!584527 (=> (not res!853470) (not e!1220808))))

(assert (=> d!584527 (= res!853470 (semiInverseModEq!1547 (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (h!26943 rules!3198)))))))

(assert (=> d!584527 (= (inv!28647 (transformation!3840 (h!26943 rules!3198))) e!1220808)))

(declare-fun b!1911115 () Bool)

(assert (=> b!1911115 (= e!1220808 (equivClasses!1474 (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (h!26943 rules!3198)))))))

(assert (= (and d!584527 res!853470) b!1911115))

(declare-fun m!2344891 () Bool)

(assert (=> d!584527 m!2344891))

(declare-fun m!2344893 () Bool)

(assert (=> b!1911115 m!2344893))

(assert (=> b!1910763 d!584527))

(declare-fun d!584529 () Bool)

(assert (=> d!584529 true))

(declare-fun lt!731029 () Bool)

(declare-fun lambda!74635 () Int)

(declare-fun forall!4532 (List!21624 Int) Bool)

(assert (=> d!584529 (= lt!731029 (forall!4532 rules!3198 lambda!74635))))

(declare-fun e!1220819 () Bool)

(assert (=> d!584529 (= lt!731029 e!1220819)))

(declare-fun res!853475 () Bool)

(assert (=> d!584529 (=> res!853475 e!1220819)))

(assert (=> d!584529 (= res!853475 (not ((_ is Cons!21542) rules!3198)))))

(assert (=> d!584529 (= (rulesValidInductive!1304 thiss!23328 rules!3198) lt!731029)))

(declare-fun b!1911130 () Bool)

(declare-fun e!1220820 () Bool)

(assert (=> b!1911130 (= e!1220819 e!1220820)))

(declare-fun res!853476 () Bool)

(assert (=> b!1911130 (=> (not res!853476) (not e!1220820))))

(declare-fun ruleValid!1161 (LexerInterface!3453 Rule!7480) Bool)

(assert (=> b!1911130 (= res!853476 (ruleValid!1161 thiss!23328 (h!26943 rules!3198)))))

(declare-fun b!1911131 () Bool)

(assert (=> b!1911131 (= e!1220820 (rulesValidInductive!1304 thiss!23328 (t!178081 rules!3198)))))

(assert (= (and d!584529 (not res!853475)) b!1911130))

(assert (= (and b!1911130 res!853476) b!1911131))

(declare-fun m!2344903 () Bool)

(assert (=> d!584529 m!2344903))

(declare-fun m!2344907 () Bool)

(assert (=> b!1911130 m!2344907))

(declare-fun m!2344909 () Bool)

(assert (=> b!1911131 m!2344909))

(assert (=> b!1910762 d!584529))

(declare-fun d!584533 () Bool)

(assert (=> d!584533 (= (inv!28643 (tag!4274 (rule!6039 separatorToken!354))) (= (mod (str.len (value!121030 (tag!4274 (rule!6039 separatorToken!354)))) 2) 0))))

(assert (=> b!1910743 d!584533))

(declare-fun d!584535 () Bool)

(declare-fun res!853477 () Bool)

(declare-fun e!1220821 () Bool)

(assert (=> d!584535 (=> (not res!853477) (not e!1220821))))

(assert (=> d!584535 (= res!853477 (semiInverseModEq!1547 (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354)))))))

(assert (=> d!584535 (= (inv!28647 (transformation!3840 (rule!6039 separatorToken!354))) e!1220821)))

(declare-fun b!1911134 () Bool)

(assert (=> b!1911134 (= e!1220821 (equivClasses!1474 (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354)))))))

(assert (= (and d!584535 res!853477) b!1911134))

(declare-fun m!2344911 () Bool)

(assert (=> d!584535 m!2344911))

(declare-fun m!2344913 () Bool)

(assert (=> b!1911134 m!2344913))

(assert (=> b!1910743 d!584535))

(declare-fun b!1911218 () Bool)

(declare-fun res!853533 () Bool)

(declare-fun e!1220866 () Bool)

(assert (=> b!1911218 (=> (not res!853533) (not e!1220866))))

(declare-fun lt!731060 () Option!4385)

(assert (=> b!1911218 (= res!853533 (matchR!2551 (regex!3840 (rule!6039 (_1!11602 (get!6712 lt!731060)))) (list!8760 (charsOf!2396 (_1!11602 (get!6712 lt!731060))))))))

(declare-fun b!1911219 () Bool)

(declare-fun res!853536 () Bool)

(assert (=> b!1911219 (=> (not res!853536) (not e!1220866))))

(assert (=> b!1911219 (= res!853536 (= (++!5789 (list!8760 (charsOf!2396 (_1!11602 (get!6712 lt!731060)))) (_2!11602 (get!6712 lt!731060))) lt!730914))))

(declare-fun bm!117725 () Bool)

(declare-fun call!117730 () Option!4385)

(declare-fun maxPrefixOneRule!1207 (LexerInterface!3453 Rule!7480 List!21623) Option!4385)

(assert (=> bm!117725 (= call!117730 (maxPrefixOneRule!1207 thiss!23328 (h!26943 rules!3198) lt!730914))))

(declare-fun b!1911220 () Bool)

(declare-fun e!1220865 () Option!4385)

(assert (=> b!1911220 (= e!1220865 call!117730)))

(declare-fun b!1911221 () Bool)

(declare-fun res!853535 () Bool)

(assert (=> b!1911221 (=> (not res!853535) (not e!1220866))))

(assert (=> b!1911221 (= res!853535 (= (list!8760 (charsOf!2396 (_1!11602 (get!6712 lt!731060)))) (originalCharacters!4647 (_1!11602 (get!6712 lt!731060)))))))

(declare-fun b!1911222 () Bool)

(declare-fun contains!3887 (List!21624 Rule!7480) Bool)

(assert (=> b!1911222 (= e!1220866 (contains!3887 rules!3198 (rule!6039 (_1!11602 (get!6712 lt!731060)))))))

(declare-fun b!1911223 () Bool)

(declare-fun res!853537 () Bool)

(assert (=> b!1911223 (=> (not res!853537) (not e!1220866))))

(declare-fun apply!5648 (TokenValueInjection!7536 BalanceConc!14160) TokenValue!3976)

(assert (=> b!1911223 (= res!853537 (= (value!121031 (_1!11602 (get!6712 lt!731060))) (apply!5648 (transformation!3840 (rule!6039 (_1!11602 (get!6712 lt!731060)))) (seqFromList!2712 (originalCharacters!4647 (_1!11602 (get!6712 lt!731060)))))))))

(declare-fun b!1911225 () Bool)

(declare-fun e!1220864 () Bool)

(assert (=> b!1911225 (= e!1220864 e!1220866)))

(declare-fun res!853534 () Bool)

(assert (=> b!1911225 (=> (not res!853534) (not e!1220866))))

(assert (=> b!1911225 (= res!853534 (isDefined!3684 lt!731060))))

(declare-fun b!1911226 () Bool)

(declare-fun lt!731062 () Option!4385)

(declare-fun lt!731061 () Option!4385)

(assert (=> b!1911226 (= e!1220865 (ite (and ((_ is None!4384) lt!731062) ((_ is None!4384) lt!731061)) None!4384 (ite ((_ is None!4384) lt!731061) lt!731062 (ite ((_ is None!4384) lt!731062) lt!731061 (ite (>= (size!16968 (_1!11602 (v!26435 lt!731062))) (size!16968 (_1!11602 (v!26435 lt!731061)))) lt!731062 lt!731061)))))))

(assert (=> b!1911226 (= lt!731062 call!117730)))

(assert (=> b!1911226 (= lt!731061 (maxPrefix!1899 thiss!23328 (t!178081 rules!3198) lt!730914))))

(declare-fun b!1911224 () Bool)

(declare-fun res!853538 () Bool)

(assert (=> b!1911224 (=> (not res!853538) (not e!1220866))))

(declare-fun size!16974 (List!21623) Int)

(assert (=> b!1911224 (= res!853538 (< (size!16974 (_2!11602 (get!6712 lt!731060))) (size!16974 lt!730914)))))

(declare-fun d!584537 () Bool)

(assert (=> d!584537 e!1220864))

(declare-fun res!853539 () Bool)

(assert (=> d!584537 (=> res!853539 e!1220864)))

(declare-fun isEmpty!13233 (Option!4385) Bool)

(assert (=> d!584537 (= res!853539 (isEmpty!13233 lt!731060))))

(assert (=> d!584537 (= lt!731060 e!1220865)))

(declare-fun c!311373 () Bool)

(assert (=> d!584537 (= c!311373 (and ((_ is Cons!21542) rules!3198) ((_ is Nil!21542) (t!178081 rules!3198))))))

(declare-fun lt!731059 () Unit!35902)

(declare-fun lt!731063 () Unit!35902)

(assert (=> d!584537 (= lt!731059 lt!731063)))

(declare-fun isPrefix!1925 (List!21623 List!21623) Bool)

(assert (=> d!584537 (isPrefix!1925 lt!730914 lt!730914)))

(declare-fun lemmaIsPrefixRefl!1243 (List!21623 List!21623) Unit!35902)

(assert (=> d!584537 (= lt!731063 (lemmaIsPrefixRefl!1243 lt!730914 lt!730914))))

(assert (=> d!584537 (rulesValidInductive!1304 thiss!23328 rules!3198)))

(assert (=> d!584537 (= (maxPrefix!1899 thiss!23328 rules!3198 lt!730914) lt!731060)))

(assert (= (and d!584537 c!311373) b!1911220))

(assert (= (and d!584537 (not c!311373)) b!1911226))

(assert (= (or b!1911220 b!1911226) bm!117725))

(assert (= (and d!584537 (not res!853539)) b!1911225))

(assert (= (and b!1911225 res!853534) b!1911221))

(assert (= (and b!1911221 res!853535) b!1911224))

(assert (= (and b!1911224 res!853538) b!1911219))

(assert (= (and b!1911219 res!853536) b!1911223))

(assert (= (and b!1911223 res!853537) b!1911218))

(assert (= (and b!1911218 res!853533) b!1911222))

(declare-fun m!2345043 () Bool)

(assert (=> b!1911225 m!2345043))

(declare-fun m!2345045 () Bool)

(assert (=> bm!117725 m!2345045))

(declare-fun m!2345047 () Bool)

(assert (=> b!1911226 m!2345047))

(declare-fun m!2345049 () Bool)

(assert (=> b!1911224 m!2345049))

(declare-fun m!2345051 () Bool)

(assert (=> b!1911224 m!2345051))

(declare-fun m!2345053 () Bool)

(assert (=> b!1911224 m!2345053))

(assert (=> b!1911221 m!2345049))

(declare-fun m!2345055 () Bool)

(assert (=> b!1911221 m!2345055))

(assert (=> b!1911221 m!2345055))

(declare-fun m!2345057 () Bool)

(assert (=> b!1911221 m!2345057))

(assert (=> b!1911218 m!2345049))

(assert (=> b!1911218 m!2345055))

(assert (=> b!1911218 m!2345055))

(assert (=> b!1911218 m!2345057))

(assert (=> b!1911218 m!2345057))

(declare-fun m!2345059 () Bool)

(assert (=> b!1911218 m!2345059))

(assert (=> b!1911222 m!2345049))

(declare-fun m!2345061 () Bool)

(assert (=> b!1911222 m!2345061))

(declare-fun m!2345063 () Bool)

(assert (=> d!584537 m!2345063))

(declare-fun m!2345065 () Bool)

(assert (=> d!584537 m!2345065))

(declare-fun m!2345067 () Bool)

(assert (=> d!584537 m!2345067))

(assert (=> d!584537 m!2344445))

(assert (=> b!1911219 m!2345049))

(assert (=> b!1911219 m!2345055))

(assert (=> b!1911219 m!2345055))

(assert (=> b!1911219 m!2345057))

(assert (=> b!1911219 m!2345057))

(declare-fun m!2345069 () Bool)

(assert (=> b!1911219 m!2345069))

(assert (=> b!1911223 m!2345049))

(declare-fun m!2345071 () Bool)

(assert (=> b!1911223 m!2345071))

(assert (=> b!1911223 m!2345071))

(declare-fun m!2345073 () Bool)

(assert (=> b!1911223 m!2345073))

(assert (=> b!1910742 d!584537))

(declare-fun d!584575 () Bool)

(declare-fun isEmpty!13234 (Option!4386) Bool)

(assert (=> d!584575 (= (isDefined!3683 lt!730922) (not (isEmpty!13234 lt!730922)))))

(declare-fun bs!414171 () Bool)

(assert (= bs!414171 d!584575))

(declare-fun m!2345075 () Bool)

(assert (=> bs!414171 m!2345075))

(assert (=> b!1910742 d!584575))

(declare-fun bs!414175 () Bool)

(declare-fun b!1911329 () Bool)

(assert (= bs!414175 (and b!1911329 b!1910738)))

(declare-fun lambda!74641 () Int)

(assert (=> bs!414175 (not (= lambda!74641 lambda!74617))))

(declare-fun bs!414176 () Bool)

(assert (= bs!414176 (and b!1911329 d!584457)))

(assert (=> bs!414176 (= lambda!74641 lambda!74626)))

(declare-fun b!1911336 () Bool)

(declare-fun e!1220934 () Bool)

(assert (=> b!1911336 (= e!1220934 true)))

(declare-fun b!1911335 () Bool)

(declare-fun e!1220933 () Bool)

(assert (=> b!1911335 (= e!1220933 e!1220934)))

(declare-fun b!1911334 () Bool)

(declare-fun e!1220932 () Bool)

(assert (=> b!1911334 (= e!1220932 e!1220933)))

(assert (=> b!1911329 e!1220932))

(assert (= b!1911335 b!1911336))

(assert (= b!1911334 b!1911335))

(assert (= (and b!1911329 ((_ is Cons!21542) rules!3198)) b!1911334))

(assert (=> b!1911336 (< (dynLambda!10496 order!13607 (toValue!5469 (transformation!3840 (h!26943 rules!3198)))) (dynLambda!10497 order!13609 lambda!74641))))

(assert (=> b!1911336 (< (dynLambda!10498 order!13611 (toChars!5328 (transformation!3840 (h!26943 rules!3198)))) (dynLambda!10497 order!13609 lambda!74641))))

(assert (=> b!1911329 true))

(declare-fun b!1911327 () Bool)

(declare-fun e!1220928 () List!21623)

(declare-fun call!117760 () List!21623)

(declare-fun lt!731114 () List!21623)

(assert (=> b!1911327 (= e!1220928 (++!5789 call!117760 lt!731114))))

(declare-fun b!1911328 () Bool)

(declare-fun c!311411 () Bool)

(declare-fun lt!731117 () Option!4385)

(assert (=> b!1911328 (= c!311411 (and ((_ is Some!4384) lt!731117) (not (= (_1!11602 (v!26435 lt!731117)) (h!26944 (t!178082 tokens!598))))))))

(declare-fun e!1220931 () List!21623)

(assert (=> b!1911328 (= e!1220931 e!1220928)))

(declare-fun c!311410 () Bool)

(declare-fun bm!117752 () Bool)

(declare-fun call!117758 () BalanceConc!14160)

(assert (=> bm!117752 (= call!117758 (charsOf!2396 (ite c!311410 (h!26944 (t!178082 tokens!598)) (ite c!311411 separatorToken!354 (h!26944 (t!178082 tokens!598))))))))

(declare-fun e!1220929 () List!21623)

(assert (=> b!1911329 (= e!1220929 e!1220931)))

(declare-fun lt!731116 () Unit!35902)

(declare-fun forallContained!694 (List!21625 Int Token!7232) Unit!35902)

(assert (=> b!1911329 (= lt!731116 (forallContained!694 (t!178082 tokens!598) lambda!74641 (h!26944 (t!178082 tokens!598))))))

(assert (=> b!1911329 (= lt!731114 (printWithSeparatorTokenWhenNeededList!496 thiss!23328 rules!3198 (t!178082 (t!178082 tokens!598)) separatorToken!354))))

(assert (=> b!1911329 (= lt!731117 (maxPrefix!1899 thiss!23328 rules!3198 (++!5789 (list!8760 (charsOf!2396 (h!26944 (t!178082 tokens!598)))) lt!731114)))))

(assert (=> b!1911329 (= c!311410 (and ((_ is Some!4384) lt!731117) (= (_1!11602 (v!26435 lt!731117)) (h!26944 (t!178082 tokens!598)))))))

(declare-fun bm!117753 () Bool)

(declare-fun call!117757 () BalanceConc!14160)

(declare-fun call!117759 () List!21623)

(assert (=> bm!117753 (= call!117759 (list!8760 (ite c!311410 call!117758 call!117757)))))

(declare-fun bm!117754 () Bool)

(declare-fun call!117761 () List!21623)

(assert (=> bm!117754 (= call!117761 call!117759)))

(declare-fun b!1911330 () Bool)

(assert (=> b!1911330 (= e!1220929 Nil!21541)))

(declare-fun b!1911331 () Bool)

(declare-fun e!1220930 () List!21623)

(assert (=> b!1911331 (= e!1220930 (list!8760 (charsOf!2396 (h!26944 (t!178082 tokens!598)))))))

(declare-fun b!1911332 () Bool)

(assert (=> b!1911332 (= e!1220928 Nil!21541)))

(assert (=> b!1911332 (= (print!1463 thiss!23328 (singletonSeq!1863 (h!26944 (t!178082 tokens!598)))) (printTailRec!970 thiss!23328 (singletonSeq!1863 (h!26944 (t!178082 tokens!598))) 0 (BalanceConc!14161 Empty!7172)))))

(declare-fun lt!731115 () Unit!35902)

(declare-fun Unit!35908 () Unit!35902)

(assert (=> b!1911332 (= lt!731115 Unit!35908)))

(declare-fun lt!731119 () Unit!35902)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!724 (LexerInterface!3453 List!21624 List!21623 List!21623) Unit!35902)

(assert (=> b!1911332 (= lt!731119 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!724 thiss!23328 rules!3198 call!117761 lt!731114))))

(assert (=> b!1911332 false))

(declare-fun lt!731118 () Unit!35902)

(declare-fun Unit!35909 () Unit!35902)

(assert (=> b!1911332 (= lt!731118 Unit!35909)))

(declare-fun d!584577 () Bool)

(declare-fun c!311409 () Bool)

(assert (=> d!584577 (= c!311409 ((_ is Cons!21543) (t!178082 tokens!598)))))

(assert (=> d!584577 (= (printWithSeparatorTokenWhenNeededList!496 thiss!23328 rules!3198 (t!178082 tokens!598) separatorToken!354) e!1220929)))

(declare-fun b!1911326 () Bool)

(assert (=> b!1911326 (= e!1220931 call!117760)))

(declare-fun bm!117755 () Bool)

(assert (=> bm!117755 (= call!117757 call!117758)))

(declare-fun b!1911333 () Bool)

(assert (=> b!1911333 (= e!1220930 call!117759)))

(declare-fun bm!117756 () Bool)

(declare-fun c!311412 () Bool)

(assert (=> bm!117756 (= c!311412 c!311410)))

(assert (=> bm!117756 (= call!117760 (++!5789 e!1220930 (ite c!311410 lt!731114 call!117761)))))

(assert (= (and d!584577 c!311409) b!1911329))

(assert (= (and d!584577 (not c!311409)) b!1911330))

(assert (= (and b!1911329 c!311410) b!1911326))

(assert (= (and b!1911329 (not c!311410)) b!1911328))

(assert (= (and b!1911328 c!311411) b!1911327))

(assert (= (and b!1911328 (not c!311411)) b!1911332))

(assert (= (or b!1911327 b!1911332) bm!117755))

(assert (= (or b!1911327 b!1911332) bm!117754))

(assert (= (or b!1911326 bm!117755) bm!117752))

(assert (= (or b!1911326 bm!117754) bm!117753))

(assert (= (or b!1911326 b!1911327) bm!117756))

(assert (= (and bm!117756 c!311412) b!1911333))

(assert (= (and bm!117756 (not c!311412)) b!1911331))

(declare-fun m!2345193 () Bool)

(assert (=> bm!117756 m!2345193))

(declare-fun m!2345195 () Bool)

(assert (=> b!1911329 m!2345195))

(declare-fun m!2345197 () Bool)

(assert (=> b!1911329 m!2345197))

(declare-fun m!2345199 () Bool)

(assert (=> b!1911329 m!2345199))

(assert (=> b!1911329 m!2345197))

(declare-fun m!2345201 () Bool)

(assert (=> b!1911329 m!2345201))

(declare-fun m!2345203 () Bool)

(assert (=> b!1911329 m!2345203))

(assert (=> b!1911329 m!2345203))

(assert (=> b!1911329 m!2345195))

(declare-fun m!2345205 () Bool)

(assert (=> b!1911329 m!2345205))

(declare-fun m!2345207 () Bool)

(assert (=> b!1911332 m!2345207))

(assert (=> b!1911332 m!2345207))

(declare-fun m!2345209 () Bool)

(assert (=> b!1911332 m!2345209))

(assert (=> b!1911332 m!2345207))

(declare-fun m!2345211 () Bool)

(assert (=> b!1911332 m!2345211))

(declare-fun m!2345213 () Bool)

(assert (=> b!1911332 m!2345213))

(assert (=> b!1911331 m!2345203))

(assert (=> b!1911331 m!2345203))

(assert (=> b!1911331 m!2345195))

(declare-fun m!2345215 () Bool)

(assert (=> bm!117753 m!2345215))

(declare-fun m!2345217 () Bool)

(assert (=> bm!117752 m!2345217))

(declare-fun m!2345219 () Bool)

(assert (=> b!1911327 m!2345219))

(assert (=> b!1910742 d!584577))

(declare-fun b!1911341 () Bool)

(declare-fun e!1220937 () Bool)

(assert (=> b!1911341 (= e!1220937 true)))

(declare-fun d!584607 () Bool)

(assert (=> d!584607 e!1220937))

(assert (= d!584607 b!1911341))

(declare-fun order!13617 () Int)

(declare-fun lambda!74644 () Int)

(declare-fun dynLambda!10502 (Int Int) Int)

(assert (=> b!1911341 (< (dynLambda!10496 order!13607 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) (dynLambda!10502 order!13617 lambda!74644))))

(assert (=> b!1911341 (< (dynLambda!10498 order!13611 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) (dynLambda!10502 order!13617 lambda!74644))))

(declare-fun dynLambda!10503 (Int TokenValue!3976) BalanceConc!14160)

(declare-fun dynLambda!10504 (Int BalanceConc!14160) TokenValue!3976)

(assert (=> d!584607 (= (list!8760 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) lt!730909))) (list!8760 lt!730909))))

(declare-fun lt!731122 () Unit!35902)

(declare-fun ForallOf!393 (Int BalanceConc!14160) Unit!35902)

(assert (=> d!584607 (= lt!731122 (ForallOf!393 lambda!74644 lt!730909))))

(assert (=> d!584607 (= (lemmaSemiInverse!819 (transformation!3840 (rule!6039 (h!26944 tokens!598))) lt!730909) lt!731122)))

(declare-fun b_lambda!63229 () Bool)

(assert (=> (not b_lambda!63229) (not d!584607)))

(declare-fun tb!117003 () Bool)

(declare-fun t!178125 () Bool)

(assert (=> (and b!1910751 (= (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178125) tb!117003))

(declare-fun e!1220940 () Bool)

(declare-fun tp!545468 () Bool)

(declare-fun b!1911346 () Bool)

(declare-fun inv!28650 (Conc!7172) Bool)

(assert (=> b!1911346 (= e!1220940 (and (inv!28650 (c!311294 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) lt!730909)))) tp!545468))))

(declare-fun result!141366 () Bool)

(declare-fun inv!28651 (BalanceConc!14160) Bool)

(assert (=> tb!117003 (= result!141366 (and (inv!28651 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) lt!730909))) e!1220940))))

(assert (= tb!117003 b!1911346))

(declare-fun m!2345221 () Bool)

(assert (=> b!1911346 m!2345221))

(declare-fun m!2345223 () Bool)

(assert (=> tb!117003 m!2345223))

(assert (=> d!584607 t!178125))

(declare-fun b_and!148907 () Bool)

(assert (= b_and!148849 (and (=> t!178125 result!141366) b_and!148907)))

(declare-fun t!178127 () Bool)

(declare-fun tb!117005 () Bool)

(assert (=> (and b!1910744 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178127) tb!117005))

(declare-fun result!141370 () Bool)

(assert (= result!141370 result!141366))

(assert (=> d!584607 t!178127))

(declare-fun b_and!148909 () Bool)

(assert (= b_and!148853 (and (=> t!178127 result!141370) b_and!148909)))

(declare-fun t!178129 () Bool)

(declare-fun tb!117007 () Bool)

(assert (=> (and b!1910739 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178129) tb!117007))

(declare-fun result!141372 () Bool)

(assert (= result!141372 result!141366))

(assert (=> d!584607 t!178129))

(declare-fun b_and!148911 () Bool)

(assert (= b_and!148857 (and (=> t!178129 result!141372) b_and!148911)))

(declare-fun b_lambda!63231 () Bool)

(assert (=> (not b_lambda!63231) (not d!584607)))

(declare-fun tb!117009 () Bool)

(declare-fun t!178131 () Bool)

(assert (=> (and b!1910751 (= (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178131) tb!117009))

(declare-fun result!141374 () Bool)

(assert (=> tb!117009 (= result!141374 (inv!21 (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) lt!730909)))))

(declare-fun m!2345225 () Bool)

(assert (=> tb!117009 m!2345225))

(assert (=> d!584607 t!178131))

(declare-fun b_and!148913 () Bool)

(assert (= b_and!148847 (and (=> t!178131 result!141374) b_and!148913)))

(declare-fun t!178133 () Bool)

(declare-fun tb!117011 () Bool)

(assert (=> (and b!1910744 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178133) tb!117011))

(declare-fun result!141378 () Bool)

(assert (= result!141378 result!141374))

(assert (=> d!584607 t!178133))

(declare-fun b_and!148915 () Bool)

(assert (= b_and!148851 (and (=> t!178133 result!141378) b_and!148915)))

(declare-fun t!178135 () Bool)

(declare-fun tb!117013 () Bool)

(assert (=> (and b!1910739 (= (toValue!5469 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178135) tb!117013))

(declare-fun result!141380 () Bool)

(assert (= result!141380 result!141374))

(assert (=> d!584607 t!178135))

(declare-fun b_and!148917 () Bool)

(assert (= b_and!148855 (and (=> t!178135 result!141380) b_and!148917)))

(declare-fun m!2345229 () Bool)

(assert (=> d!584607 m!2345229))

(declare-fun m!2345231 () Bool)

(assert (=> d!584607 m!2345231))

(assert (=> d!584607 m!2345231))

(declare-fun m!2345235 () Bool)

(assert (=> d!584607 m!2345235))

(assert (=> d!584607 m!2344537))

(assert (=> d!584607 m!2345229))

(declare-fun m!2345237 () Bool)

(assert (=> d!584607 m!2345237))

(assert (=> b!1910742 d!584607))

(declare-fun d!584611 () Bool)

(declare-fun lt!731128 () BalanceConc!14160)

(assert (=> d!584611 (= (list!8760 lt!731128) (originalCharacters!4647 separatorToken!354))))

(assert (=> d!584611 (= lt!731128 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (value!121031 separatorToken!354)))))

(assert (=> d!584611 (= (charsOf!2396 separatorToken!354) lt!731128)))

(declare-fun b_lambda!63233 () Bool)

(assert (=> (not b_lambda!63233) (not d!584611)))

(declare-fun t!178137 () Bool)

(declare-fun tb!117015 () Bool)

(assert (=> (and b!1910751 (= (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354)))) t!178137) tb!117015))

(declare-fun b!1911349 () Bool)

(declare-fun e!1220944 () Bool)

(declare-fun tp!545469 () Bool)

(assert (=> b!1911349 (= e!1220944 (and (inv!28650 (c!311294 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (value!121031 separatorToken!354)))) tp!545469))))

(declare-fun result!141382 () Bool)

(assert (=> tb!117015 (= result!141382 (and (inv!28651 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (value!121031 separatorToken!354))) e!1220944))))

(assert (= tb!117015 b!1911349))

(declare-fun m!2345239 () Bool)

(assert (=> b!1911349 m!2345239))

(declare-fun m!2345241 () Bool)

(assert (=> tb!117015 m!2345241))

(assert (=> d!584611 t!178137))

(declare-fun b_and!148919 () Bool)

(assert (= b_and!148907 (and (=> t!178137 result!141382) b_and!148919)))

(declare-fun t!178139 () Bool)

(declare-fun tb!117017 () Bool)

(assert (=> (and b!1910744 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354)))) t!178139) tb!117017))

(declare-fun result!141384 () Bool)

(assert (= result!141384 result!141382))

(assert (=> d!584611 t!178139))

(declare-fun b_and!148921 () Bool)

(assert (= b_and!148909 (and (=> t!178139 result!141384) b_and!148921)))

(declare-fun tb!117019 () Bool)

(declare-fun t!178141 () Bool)

(assert (=> (and b!1910739 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354)))) t!178141) tb!117019))

(declare-fun result!141386 () Bool)

(assert (= result!141386 result!141382))

(assert (=> d!584611 t!178141))

(declare-fun b_and!148923 () Bool)

(assert (= b_and!148911 (and (=> t!178141 result!141386) b_and!148923)))

(declare-fun m!2345243 () Bool)

(assert (=> d!584611 m!2345243))

(declare-fun m!2345245 () Bool)

(assert (=> d!584611 m!2345245))

(assert (=> b!1910742 d!584611))

(declare-fun d!584613 () Bool)

(assert (=> d!584613 (= (isDefined!3684 lt!730920) (not (isEmpty!13233 lt!730920)))))

(declare-fun bs!414178 () Bool)

(assert (= bs!414178 d!584613))

(declare-fun m!2345247 () Bool)

(assert (=> bs!414178 m!2345247))

(assert (=> b!1910742 d!584613))

(declare-fun d!584615 () Bool)

(declare-fun e!1220993 () Bool)

(assert (=> d!584615 e!1220993))

(declare-fun res!853572 () Bool)

(assert (=> d!584615 (=> res!853572 e!1220993)))

(declare-fun lt!731140 () Option!4386)

(assert (=> d!584615 (= res!853572 (isEmpty!13234 lt!731140))))

(declare-fun e!1220994 () Option!4386)

(assert (=> d!584615 (= lt!731140 e!1220994)))

(declare-fun c!311419 () Bool)

(assert (=> d!584615 (= c!311419 (and ((_ is Cons!21542) rules!3198) (= (tag!4274 (h!26943 rules!3198)) (tag!4274 (rule!6039 separatorToken!354)))))))

(assert (=> d!584615 (rulesInvariant!3060 thiss!23328 rules!3198)))

(assert (=> d!584615 (= (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 separatorToken!354))) lt!731140)))

(declare-fun b!1911414 () Bool)

(declare-fun lt!731138 () Unit!35902)

(declare-fun lt!731139 () Unit!35902)

(assert (=> b!1911414 (= lt!731138 lt!731139)))

(assert (=> b!1911414 (rulesInvariant!3060 thiss!23328 (t!178081 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!258 (LexerInterface!3453 Rule!7480 List!21624) Unit!35902)

(assert (=> b!1911414 (= lt!731139 (lemmaInvariantOnRulesThenOnTail!258 thiss!23328 (h!26943 rules!3198) (t!178081 rules!3198)))))

(declare-fun e!1220992 () Option!4386)

(assert (=> b!1911414 (= e!1220992 (getRuleFromTag!683 thiss!23328 (t!178081 rules!3198) (tag!4274 (rule!6039 separatorToken!354))))))

(declare-fun b!1911415 () Bool)

(declare-fun e!1220991 () Bool)

(assert (=> b!1911415 (= e!1220991 (= (tag!4274 (get!6713 lt!731140)) (tag!4274 (rule!6039 separatorToken!354))))))

(declare-fun b!1911416 () Bool)

(assert (=> b!1911416 (= e!1220994 e!1220992)))

(declare-fun c!311418 () Bool)

(assert (=> b!1911416 (= c!311418 (and ((_ is Cons!21542) rules!3198) (not (= (tag!4274 (h!26943 rules!3198)) (tag!4274 (rule!6039 separatorToken!354))))))))

(declare-fun b!1911417 () Bool)

(assert (=> b!1911417 (= e!1220994 (Some!4385 (h!26943 rules!3198)))))

(declare-fun b!1911418 () Bool)

(assert (=> b!1911418 (= e!1220992 None!4385)))

(declare-fun b!1911419 () Bool)

(assert (=> b!1911419 (= e!1220993 e!1220991)))

(declare-fun res!853573 () Bool)

(assert (=> b!1911419 (=> (not res!853573) (not e!1220991))))

(assert (=> b!1911419 (= res!853573 (contains!3887 rules!3198 (get!6713 lt!731140)))))

(assert (= (and d!584615 c!311419) b!1911417))

(assert (= (and d!584615 (not c!311419)) b!1911416))

(assert (= (and b!1911416 c!311418) b!1911414))

(assert (= (and b!1911416 (not c!311418)) b!1911418))

(assert (= (and d!584615 (not res!853572)) b!1911419))

(assert (= (and b!1911419 res!853573) b!1911415))

(declare-fun m!2345265 () Bool)

(assert (=> d!584615 m!2345265))

(assert (=> d!584615 m!2344513))

(declare-fun m!2345267 () Bool)

(assert (=> b!1911414 m!2345267))

(declare-fun m!2345269 () Bool)

(assert (=> b!1911414 m!2345269))

(declare-fun m!2345271 () Bool)

(assert (=> b!1911414 m!2345271))

(declare-fun m!2345273 () Bool)

(assert (=> b!1911415 m!2345273))

(assert (=> b!1911419 m!2345273))

(assert (=> b!1911419 m!2345273))

(declare-fun m!2345275 () Bool)

(assert (=> b!1911419 m!2345275))

(assert (=> b!1910742 d!584615))

(declare-fun e!1221001 () Bool)

(declare-fun lt!731143 () List!21623)

(declare-fun b!1911432 () Bool)

(assert (=> b!1911432 (= e!1221001 (or (not (= lt!730918 Nil!21541)) (= lt!731143 lt!730914)))))

(declare-fun b!1911430 () Bool)

(declare-fun e!1221000 () List!21623)

(assert (=> b!1911430 (= e!1221000 (Cons!21541 (h!26942 lt!730914) (++!5789 (t!178080 lt!730914) lt!730918)))))

(declare-fun b!1911431 () Bool)

(declare-fun res!853578 () Bool)

(assert (=> b!1911431 (=> (not res!853578) (not e!1221001))))

(assert (=> b!1911431 (= res!853578 (= (size!16974 lt!731143) (+ (size!16974 lt!730914) (size!16974 lt!730918))))))

(declare-fun b!1911429 () Bool)

(assert (=> b!1911429 (= e!1221000 lt!730918)))

(declare-fun d!584621 () Bool)

(assert (=> d!584621 e!1221001))

(declare-fun res!853579 () Bool)

(assert (=> d!584621 (=> (not res!853579) (not e!1221001))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3151 (List!21623) (InoxSet C!10676))

(assert (=> d!584621 (= res!853579 (= (content!3151 lt!731143) ((_ map or) (content!3151 lt!730914) (content!3151 lt!730918))))))

(assert (=> d!584621 (= lt!731143 e!1221000)))

(declare-fun c!311422 () Bool)

(assert (=> d!584621 (= c!311422 ((_ is Nil!21541) lt!730914))))

(assert (=> d!584621 (= (++!5789 lt!730914 lt!730918) lt!731143)))

(assert (= (and d!584621 c!311422) b!1911429))

(assert (= (and d!584621 (not c!311422)) b!1911430))

(assert (= (and d!584621 res!853579) b!1911431))

(assert (= (and b!1911431 res!853578) b!1911432))

(declare-fun m!2345277 () Bool)

(assert (=> b!1911430 m!2345277))

(declare-fun m!2345279 () Bool)

(assert (=> b!1911431 m!2345279))

(assert (=> b!1911431 m!2345053))

(declare-fun m!2345281 () Bool)

(assert (=> b!1911431 m!2345281))

(declare-fun m!2345283 () Bool)

(assert (=> d!584621 m!2345283))

(declare-fun m!2345285 () Bool)

(assert (=> d!584621 m!2345285))

(declare-fun m!2345287 () Bool)

(assert (=> d!584621 m!2345287))

(assert (=> b!1910742 d!584621))

(declare-fun b!1911433 () Bool)

(declare-fun res!853580 () Bool)

(declare-fun e!1221004 () Bool)

(assert (=> b!1911433 (=> (not res!853580) (not e!1221004))))

(declare-fun lt!731145 () Option!4385)

(assert (=> b!1911433 (= res!853580 (matchR!2551 (regex!3840 (rule!6039 (_1!11602 (get!6712 lt!731145)))) (list!8760 (charsOf!2396 (_1!11602 (get!6712 lt!731145))))))))

(declare-fun b!1911434 () Bool)

(declare-fun res!853583 () Bool)

(assert (=> b!1911434 (=> (not res!853583) (not e!1221004))))

(assert (=> b!1911434 (= res!853583 (= (++!5789 (list!8760 (charsOf!2396 (_1!11602 (get!6712 lt!731145)))) (_2!11602 (get!6712 lt!731145))) (++!5789 lt!730914 lt!730918)))))

(declare-fun bm!117757 () Bool)

(declare-fun call!117762 () Option!4385)

(assert (=> bm!117757 (= call!117762 (maxPrefixOneRule!1207 thiss!23328 (h!26943 rules!3198) (++!5789 lt!730914 lt!730918)))))

(declare-fun b!1911435 () Bool)

(declare-fun e!1221003 () Option!4385)

(assert (=> b!1911435 (= e!1221003 call!117762)))

(declare-fun b!1911436 () Bool)

(declare-fun res!853582 () Bool)

(assert (=> b!1911436 (=> (not res!853582) (not e!1221004))))

(assert (=> b!1911436 (= res!853582 (= (list!8760 (charsOf!2396 (_1!11602 (get!6712 lt!731145)))) (originalCharacters!4647 (_1!11602 (get!6712 lt!731145)))))))

(declare-fun b!1911437 () Bool)

(assert (=> b!1911437 (= e!1221004 (contains!3887 rules!3198 (rule!6039 (_1!11602 (get!6712 lt!731145)))))))

(declare-fun b!1911438 () Bool)

(declare-fun res!853584 () Bool)

(assert (=> b!1911438 (=> (not res!853584) (not e!1221004))))

(assert (=> b!1911438 (= res!853584 (= (value!121031 (_1!11602 (get!6712 lt!731145))) (apply!5648 (transformation!3840 (rule!6039 (_1!11602 (get!6712 lt!731145)))) (seqFromList!2712 (originalCharacters!4647 (_1!11602 (get!6712 lt!731145)))))))))

(declare-fun b!1911440 () Bool)

(declare-fun e!1221002 () Bool)

(assert (=> b!1911440 (= e!1221002 e!1221004)))

(declare-fun res!853581 () Bool)

(assert (=> b!1911440 (=> (not res!853581) (not e!1221004))))

(assert (=> b!1911440 (= res!853581 (isDefined!3684 lt!731145))))

(declare-fun b!1911441 () Bool)

(declare-fun lt!731147 () Option!4385)

(declare-fun lt!731146 () Option!4385)

(assert (=> b!1911441 (= e!1221003 (ite (and ((_ is None!4384) lt!731147) ((_ is None!4384) lt!731146)) None!4384 (ite ((_ is None!4384) lt!731146) lt!731147 (ite ((_ is None!4384) lt!731147) lt!731146 (ite (>= (size!16968 (_1!11602 (v!26435 lt!731147))) (size!16968 (_1!11602 (v!26435 lt!731146)))) lt!731147 lt!731146)))))))

(assert (=> b!1911441 (= lt!731147 call!117762)))

(assert (=> b!1911441 (= lt!731146 (maxPrefix!1899 thiss!23328 (t!178081 rules!3198) (++!5789 lt!730914 lt!730918)))))

(declare-fun b!1911439 () Bool)

(declare-fun res!853585 () Bool)

(assert (=> b!1911439 (=> (not res!853585) (not e!1221004))))

(assert (=> b!1911439 (= res!853585 (< (size!16974 (_2!11602 (get!6712 lt!731145))) (size!16974 (++!5789 lt!730914 lt!730918))))))

(declare-fun d!584623 () Bool)

(assert (=> d!584623 e!1221002))

(declare-fun res!853586 () Bool)

(assert (=> d!584623 (=> res!853586 e!1221002)))

(assert (=> d!584623 (= res!853586 (isEmpty!13233 lt!731145))))

(assert (=> d!584623 (= lt!731145 e!1221003)))

(declare-fun c!311423 () Bool)

(assert (=> d!584623 (= c!311423 (and ((_ is Cons!21542) rules!3198) ((_ is Nil!21542) (t!178081 rules!3198))))))

(declare-fun lt!731144 () Unit!35902)

(declare-fun lt!731148 () Unit!35902)

(assert (=> d!584623 (= lt!731144 lt!731148)))

(assert (=> d!584623 (isPrefix!1925 (++!5789 lt!730914 lt!730918) (++!5789 lt!730914 lt!730918))))

(assert (=> d!584623 (= lt!731148 (lemmaIsPrefixRefl!1243 (++!5789 lt!730914 lt!730918) (++!5789 lt!730914 lt!730918)))))

(assert (=> d!584623 (rulesValidInductive!1304 thiss!23328 rules!3198)))

(assert (=> d!584623 (= (maxPrefix!1899 thiss!23328 rules!3198 (++!5789 lt!730914 lt!730918)) lt!731145)))

(assert (= (and d!584623 c!311423) b!1911435))

(assert (= (and d!584623 (not c!311423)) b!1911441))

(assert (= (or b!1911435 b!1911441) bm!117757))

(assert (= (and d!584623 (not res!853586)) b!1911440))

(assert (= (and b!1911440 res!853581) b!1911436))

(assert (= (and b!1911436 res!853582) b!1911439))

(assert (= (and b!1911439 res!853585) b!1911434))

(assert (= (and b!1911434 res!853583) b!1911438))

(assert (= (and b!1911438 res!853584) b!1911433))

(assert (= (and b!1911433 res!853580) b!1911437))

(declare-fun m!2345289 () Bool)

(assert (=> b!1911440 m!2345289))

(assert (=> bm!117757 m!2344553))

(declare-fun m!2345291 () Bool)

(assert (=> bm!117757 m!2345291))

(assert (=> b!1911441 m!2344553))

(declare-fun m!2345293 () Bool)

(assert (=> b!1911441 m!2345293))

(declare-fun m!2345295 () Bool)

(assert (=> b!1911439 m!2345295))

(declare-fun m!2345297 () Bool)

(assert (=> b!1911439 m!2345297))

(assert (=> b!1911439 m!2344553))

(declare-fun m!2345299 () Bool)

(assert (=> b!1911439 m!2345299))

(assert (=> b!1911436 m!2345295))

(declare-fun m!2345301 () Bool)

(assert (=> b!1911436 m!2345301))

(assert (=> b!1911436 m!2345301))

(declare-fun m!2345303 () Bool)

(assert (=> b!1911436 m!2345303))

(assert (=> b!1911433 m!2345295))

(assert (=> b!1911433 m!2345301))

(assert (=> b!1911433 m!2345301))

(assert (=> b!1911433 m!2345303))

(assert (=> b!1911433 m!2345303))

(declare-fun m!2345305 () Bool)

(assert (=> b!1911433 m!2345305))

(assert (=> b!1911437 m!2345295))

(declare-fun m!2345307 () Bool)

(assert (=> b!1911437 m!2345307))

(declare-fun m!2345309 () Bool)

(assert (=> d!584623 m!2345309))

(assert (=> d!584623 m!2344553))

(assert (=> d!584623 m!2344553))

(declare-fun m!2345311 () Bool)

(assert (=> d!584623 m!2345311))

(assert (=> d!584623 m!2344553))

(assert (=> d!584623 m!2344553))

(declare-fun m!2345313 () Bool)

(assert (=> d!584623 m!2345313))

(assert (=> d!584623 m!2344445))

(assert (=> b!1911434 m!2345295))

(assert (=> b!1911434 m!2345301))

(assert (=> b!1911434 m!2345301))

(assert (=> b!1911434 m!2345303))

(assert (=> b!1911434 m!2345303))

(declare-fun m!2345315 () Bool)

(assert (=> b!1911434 m!2345315))

(assert (=> b!1911438 m!2345295))

(declare-fun m!2345317 () Bool)

(assert (=> b!1911438 m!2345317))

(assert (=> b!1911438 m!2345317))

(declare-fun m!2345319 () Bool)

(assert (=> b!1911438 m!2345319))

(assert (=> b!1910742 d!584623))

(declare-fun d!584625 () Bool)

(declare-fun e!1221007 () Bool)

(assert (=> d!584625 e!1221007))

(declare-fun res!853591 () Bool)

(assert (=> d!584625 (=> (not res!853591) (not e!1221007))))

(assert (=> d!584625 (= res!853591 (isDefined!3683 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 (h!26944 tokens!598))))))))

(declare-fun lt!731151 () Unit!35902)

(declare-fun choose!11896 (LexerInterface!3453 List!21624 List!21623 Token!7232) Unit!35902)

(assert (=> d!584625 (= lt!731151 (choose!11896 thiss!23328 rules!3198 lt!730914 (h!26944 tokens!598)))))

(assert (=> d!584625 (rulesInvariant!3060 thiss!23328 rules!3198)))

(assert (=> d!584625 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!683 thiss!23328 rules!3198 lt!730914 (h!26944 tokens!598)) lt!731151)))

(declare-fun b!1911446 () Bool)

(declare-fun res!853592 () Bool)

(assert (=> b!1911446 (=> (not res!853592) (not e!1221007))))

(assert (=> b!1911446 (= res!853592 (matchR!2551 (regex!3840 (get!6713 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 (h!26944 tokens!598)))))) (list!8760 (charsOf!2396 (h!26944 tokens!598)))))))

(declare-fun b!1911447 () Bool)

(assert (=> b!1911447 (= e!1221007 (= (rule!6039 (h!26944 tokens!598)) (get!6713 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 (h!26944 tokens!598)))))))))

(assert (= (and d!584625 res!853591) b!1911446))

(assert (= (and b!1911446 res!853592) b!1911447))

(assert (=> d!584625 m!2344545))

(assert (=> d!584625 m!2344545))

(declare-fun m!2345321 () Bool)

(assert (=> d!584625 m!2345321))

(declare-fun m!2345323 () Bool)

(assert (=> d!584625 m!2345323))

(assert (=> d!584625 m!2344513))

(assert (=> b!1911446 m!2344545))

(declare-fun m!2345325 () Bool)

(assert (=> b!1911446 m!2345325))

(assert (=> b!1911446 m!2344543))

(declare-fun m!2345327 () Bool)

(assert (=> b!1911446 m!2345327))

(declare-fun m!2345329 () Bool)

(assert (=> b!1911446 m!2345329))

(assert (=> b!1911446 m!2344543))

(assert (=> b!1911446 m!2345327))

(assert (=> b!1911446 m!2344545))

(assert (=> b!1911447 m!2344545))

(assert (=> b!1911447 m!2344545))

(assert (=> b!1911447 m!2345325))

(assert (=> b!1910742 d!584625))

(declare-fun d!584627 () Bool)

(declare-fun e!1221008 () Bool)

(assert (=> d!584627 e!1221008))

(declare-fun res!853593 () Bool)

(assert (=> d!584627 (=> (not res!853593) (not e!1221008))))

(assert (=> d!584627 (= res!853593 (isDefined!3683 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 separatorToken!354)))))))

(declare-fun lt!731152 () Unit!35902)

(assert (=> d!584627 (= lt!731152 (choose!11896 thiss!23328 rules!3198 lt!730912 separatorToken!354))))

(assert (=> d!584627 (rulesInvariant!3060 thiss!23328 rules!3198)))

(assert (=> d!584627 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!683 thiss!23328 rules!3198 lt!730912 separatorToken!354) lt!731152)))

(declare-fun b!1911448 () Bool)

(declare-fun res!853594 () Bool)

(assert (=> b!1911448 (=> (not res!853594) (not e!1221008))))

(assert (=> b!1911448 (= res!853594 (matchR!2551 (regex!3840 (get!6713 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 separatorToken!354))))) (list!8760 (charsOf!2396 separatorToken!354))))))

(declare-fun b!1911449 () Bool)

(assert (=> b!1911449 (= e!1221008 (= (rule!6039 separatorToken!354) (get!6713 (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 separatorToken!354))))))))

(assert (= (and d!584627 res!853593) b!1911448))

(assert (= (and b!1911448 res!853594) b!1911449))

(assert (=> d!584627 m!2344551))

(assert (=> d!584627 m!2344551))

(declare-fun m!2345331 () Bool)

(assert (=> d!584627 m!2345331))

(declare-fun m!2345333 () Bool)

(assert (=> d!584627 m!2345333))

(assert (=> d!584627 m!2344513))

(assert (=> b!1911448 m!2344551))

(declare-fun m!2345335 () Bool)

(assert (=> b!1911448 m!2345335))

(assert (=> b!1911448 m!2344541))

(assert (=> b!1911448 m!2344559))

(declare-fun m!2345337 () Bool)

(assert (=> b!1911448 m!2345337))

(assert (=> b!1911448 m!2344541))

(assert (=> b!1911448 m!2344559))

(assert (=> b!1911448 m!2344551))

(assert (=> b!1911449 m!2344551))

(assert (=> b!1911449 m!2344551))

(assert (=> b!1911449 m!2345335))

(assert (=> b!1910742 d!584627))

(declare-fun d!584629 () Bool)

(declare-fun list!8764 (Conc!7172) List!21623)

(assert (=> d!584629 (= (list!8760 (charsOf!2396 separatorToken!354)) (list!8764 (c!311294 (charsOf!2396 separatorToken!354))))))

(declare-fun bs!414182 () Bool)

(assert (= bs!414182 d!584629))

(declare-fun m!2345339 () Bool)

(assert (=> bs!414182 m!2345339))

(assert (=> b!1910742 d!584629))

(declare-fun b!1911456 () Bool)

(declare-fun e!1221013 () Bool)

(assert (=> b!1911456 (= e!1221013 true)))

(declare-fun d!584631 () Bool)

(assert (=> d!584631 e!1221013))

(assert (= d!584631 b!1911456))

(declare-fun lambda!74647 () Int)

(declare-fun order!13619 () Int)

(declare-fun dynLambda!10505 (Int Int) Int)

(assert (=> b!1911456 (< (dynLambda!10496 order!13607 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) (dynLambda!10505 order!13619 lambda!74647))))

(assert (=> b!1911456 (< (dynLambda!10498 order!13611 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) (dynLambda!10505 order!13619 lambda!74647))))

(assert (=> d!584631 (= (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) lt!730909) (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598)))))))

(declare-fun lt!731155 () Unit!35902)

(declare-fun Forall2of!189 (Int BalanceConc!14160 BalanceConc!14160) Unit!35902)

(assert (=> d!584631 (= lt!731155 (Forall2of!189 lambda!74647 lt!730909 (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598)))))))

(assert (=> d!584631 (= (list!8760 lt!730909) (list!8760 (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598)))))))

(assert (=> d!584631 (= (lemmaEqSameImage!548 (transformation!3840 (rule!6039 (h!26944 tokens!598))) lt!730909 (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598)))) lt!731155)))

(declare-fun b_lambda!63253 () Bool)

(assert (=> (not b_lambda!63253) (not d!584631)))

(assert (=> d!584631 t!178131))

(declare-fun b_and!148933 () Bool)

(assert (= b_and!148913 (and (=> t!178131 result!141374) b_and!148933)))

(assert (=> d!584631 t!178133))

(declare-fun b_and!148935 () Bool)

(assert (= b_and!148915 (and (=> t!178133 result!141378) b_and!148935)))

(assert (=> d!584631 t!178135))

(declare-fun b_and!148937 () Bool)

(assert (= b_and!148917 (and (=> t!178135 result!141380) b_and!148937)))

(declare-fun b_lambda!63255 () Bool)

(assert (=> (not b_lambda!63255) (not d!584631)))

(declare-fun t!178163 () Bool)

(declare-fun tb!117041 () Bool)

(assert (=> (and b!1910751 (= (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178163) tb!117041))

(declare-fun result!141416 () Bool)

(assert (=> tb!117041 (= result!141416 (inv!21 (dynLambda!10504 (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598))))))))

(declare-fun m!2345341 () Bool)

(assert (=> tb!117041 m!2345341))

(assert (=> d!584631 t!178163))

(declare-fun b_and!148939 () Bool)

(assert (= b_and!148933 (and (=> t!178163 result!141416) b_and!148939)))

(declare-fun t!178165 () Bool)

(declare-fun tb!117043 () Bool)

(assert (=> (and b!1910744 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178165) tb!117043))

(declare-fun result!141418 () Bool)

(assert (= result!141418 result!141416))

(assert (=> d!584631 t!178165))

(declare-fun b_and!148941 () Bool)

(assert (= b_and!148935 (and (=> t!178165 result!141418) b_and!148941)))

(declare-fun t!178167 () Bool)

(declare-fun tb!117045 () Bool)

(assert (=> (and b!1910739 (= (toValue!5469 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178167) tb!117045))

(declare-fun result!141420 () Bool)

(assert (= result!141420 result!141416))

(assert (=> d!584631 t!178167))

(declare-fun b_and!148943 () Bool)

(assert (= b_and!148937 (and (=> t!178167 result!141420) b_and!148943)))

(assert (=> d!584631 m!2344527))

(declare-fun m!2345343 () Bool)

(assert (=> d!584631 m!2345343))

(assert (=> d!584631 m!2344537))

(assert (=> d!584631 m!2345229))

(assert (=> d!584631 m!2344527))

(declare-fun m!2345345 () Bool)

(assert (=> d!584631 m!2345345))

(assert (=> d!584631 m!2344527))

(declare-fun m!2345347 () Bool)

(assert (=> d!584631 m!2345347))

(assert (=> b!1910742 d!584631))

(declare-fun d!584633 () Bool)

(assert (=> d!584633 (= (list!8760 lt!730909) (list!8764 (c!311294 lt!730909)))))

(declare-fun bs!414183 () Bool)

(assert (= bs!414183 d!584633))

(declare-fun m!2345349 () Bool)

(assert (=> bs!414183 m!2345349))

(assert (=> b!1910742 d!584633))

(declare-fun d!584635 () Bool)

(declare-fun lt!731156 () BalanceConc!14160)

(assert (=> d!584635 (= (list!8760 lt!731156) (originalCharacters!4647 (h!26944 tokens!598)))))

(assert (=> d!584635 (= lt!731156 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (value!121031 (h!26944 tokens!598))))))

(assert (=> d!584635 (= (charsOf!2396 (h!26944 tokens!598)) lt!731156)))

(declare-fun b_lambda!63257 () Bool)

(assert (=> (not b_lambda!63257) (not d!584635)))

(declare-fun tb!117047 () Bool)

(declare-fun t!178169 () Bool)

(assert (=> (and b!1910751 (= (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178169) tb!117047))

(declare-fun b!1911457 () Bool)

(declare-fun e!1221015 () Bool)

(declare-fun tp!545526 () Bool)

(assert (=> b!1911457 (= e!1221015 (and (inv!28650 (c!311294 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (value!121031 (h!26944 tokens!598))))) tp!545526))))

(declare-fun result!141422 () Bool)

(assert (=> tb!117047 (= result!141422 (and (inv!28651 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (value!121031 (h!26944 tokens!598)))) e!1221015))))

(assert (= tb!117047 b!1911457))

(declare-fun m!2345351 () Bool)

(assert (=> b!1911457 m!2345351))

(declare-fun m!2345353 () Bool)

(assert (=> tb!117047 m!2345353))

(assert (=> d!584635 t!178169))

(declare-fun b_and!148945 () Bool)

(assert (= b_and!148919 (and (=> t!178169 result!141422) b_and!148945)))

(declare-fun t!178171 () Bool)

(declare-fun tb!117049 () Bool)

(assert (=> (and b!1910744 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178171) tb!117049))

(declare-fun result!141424 () Bool)

(assert (= result!141424 result!141422))

(assert (=> d!584635 t!178171))

(declare-fun b_and!148947 () Bool)

(assert (= b_and!148921 (and (=> t!178171 result!141424) b_and!148947)))

(declare-fun tb!117051 () Bool)

(declare-fun t!178173 () Bool)

(assert (=> (and b!1910739 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178173) tb!117051))

(declare-fun result!141426 () Bool)

(assert (= result!141426 result!141422))

(assert (=> d!584635 t!178173))

(declare-fun b_and!148949 () Bool)

(assert (= b_and!148923 (and (=> t!178173 result!141426) b_and!148949)))

(declare-fun m!2345355 () Bool)

(assert (=> d!584635 m!2345355))

(declare-fun m!2345357 () Bool)

(assert (=> d!584635 m!2345357))

(assert (=> b!1910742 d!584635))

(declare-fun d!584637 () Bool)

(assert (=> d!584637 (= (seqFromList!2712 (originalCharacters!4647 (h!26944 tokens!598))) (fromListB!1226 (originalCharacters!4647 (h!26944 tokens!598))))))

(declare-fun bs!414184 () Bool)

(assert (= bs!414184 d!584637))

(declare-fun m!2345359 () Bool)

(assert (=> bs!414184 m!2345359))

(assert (=> b!1910742 d!584637))

(declare-fun d!584639 () Bool)

(declare-fun e!1221018 () Bool)

(assert (=> d!584639 e!1221018))

(declare-fun res!853597 () Bool)

(assert (=> d!584639 (=> res!853597 e!1221018)))

(declare-fun lt!731159 () Option!4386)

(assert (=> d!584639 (= res!853597 (isEmpty!13234 lt!731159))))

(declare-fun e!1221019 () Option!4386)

(assert (=> d!584639 (= lt!731159 e!1221019)))

(declare-fun c!311425 () Bool)

(assert (=> d!584639 (= c!311425 (and ((_ is Cons!21542) rules!3198) (= (tag!4274 (h!26943 rules!3198)) (tag!4274 (rule!6039 (h!26944 tokens!598))))))))

(assert (=> d!584639 (rulesInvariant!3060 thiss!23328 rules!3198)))

(assert (=> d!584639 (= (getRuleFromTag!683 thiss!23328 rules!3198 (tag!4274 (rule!6039 (h!26944 tokens!598)))) lt!731159)))

(declare-fun b!1911458 () Bool)

(declare-fun lt!731157 () Unit!35902)

(declare-fun lt!731158 () Unit!35902)

(assert (=> b!1911458 (= lt!731157 lt!731158)))

(assert (=> b!1911458 (rulesInvariant!3060 thiss!23328 (t!178081 rules!3198))))

(assert (=> b!1911458 (= lt!731158 (lemmaInvariantOnRulesThenOnTail!258 thiss!23328 (h!26943 rules!3198) (t!178081 rules!3198)))))

(declare-fun e!1221017 () Option!4386)

(assert (=> b!1911458 (= e!1221017 (getRuleFromTag!683 thiss!23328 (t!178081 rules!3198) (tag!4274 (rule!6039 (h!26944 tokens!598)))))))

(declare-fun b!1911459 () Bool)

(declare-fun e!1221016 () Bool)

(assert (=> b!1911459 (= e!1221016 (= (tag!4274 (get!6713 lt!731159)) (tag!4274 (rule!6039 (h!26944 tokens!598)))))))

(declare-fun b!1911460 () Bool)

(assert (=> b!1911460 (= e!1221019 e!1221017)))

(declare-fun c!311424 () Bool)

(assert (=> b!1911460 (= c!311424 (and ((_ is Cons!21542) rules!3198) (not (= (tag!4274 (h!26943 rules!3198)) (tag!4274 (rule!6039 (h!26944 tokens!598)))))))))

(declare-fun b!1911461 () Bool)

(assert (=> b!1911461 (= e!1221019 (Some!4385 (h!26943 rules!3198)))))

(declare-fun b!1911462 () Bool)

(assert (=> b!1911462 (= e!1221017 None!4385)))

(declare-fun b!1911463 () Bool)

(assert (=> b!1911463 (= e!1221018 e!1221016)))

(declare-fun res!853598 () Bool)

(assert (=> b!1911463 (=> (not res!853598) (not e!1221016))))

(assert (=> b!1911463 (= res!853598 (contains!3887 rules!3198 (get!6713 lt!731159)))))

(assert (= (and d!584639 c!311425) b!1911461))

(assert (= (and d!584639 (not c!311425)) b!1911460))

(assert (= (and b!1911460 c!311424) b!1911458))

(assert (= (and b!1911460 (not c!311424)) b!1911462))

(assert (= (and d!584639 (not res!853597)) b!1911463))

(assert (= (and b!1911463 res!853598) b!1911459))

(declare-fun m!2345361 () Bool)

(assert (=> d!584639 m!2345361))

(assert (=> d!584639 m!2344513))

(assert (=> b!1911458 m!2345267))

(assert (=> b!1911458 m!2345269))

(declare-fun m!2345363 () Bool)

(assert (=> b!1911458 m!2345363))

(declare-fun m!2345365 () Bool)

(assert (=> b!1911459 m!2345365))

(assert (=> b!1911463 m!2345365))

(assert (=> b!1911463 m!2345365))

(declare-fun m!2345367 () Bool)

(assert (=> b!1911463 m!2345367))

(assert (=> b!1910742 d!584639))

(declare-fun d!584641 () Bool)

(assert (=> d!584641 (= (isDefined!3683 lt!730911) (not (isEmpty!13234 lt!730911)))))

(declare-fun bs!414185 () Bool)

(assert (= bs!414185 d!584641))

(declare-fun m!2345369 () Bool)

(assert (=> bs!414185 m!2345369))

(assert (=> b!1910742 d!584641))

(declare-fun b!1911474 () Bool)

(declare-fun e!1221026 () Bool)

(declare-fun inv!15 (TokenValue!3976) Bool)

(assert (=> b!1911474 (= e!1221026 (inv!15 (value!121031 (h!26944 tokens!598))))))

(declare-fun b!1911475 () Bool)

(declare-fun res!853601 () Bool)

(assert (=> b!1911475 (=> res!853601 e!1221026)))

(assert (=> b!1911475 (= res!853601 (not ((_ is IntegerValue!11930) (value!121031 (h!26944 tokens!598)))))))

(declare-fun e!1221027 () Bool)

(assert (=> b!1911475 (= e!1221027 e!1221026)))

(declare-fun d!584643 () Bool)

(declare-fun c!311431 () Bool)

(assert (=> d!584643 (= c!311431 ((_ is IntegerValue!11928) (value!121031 (h!26944 tokens!598))))))

(declare-fun e!1221028 () Bool)

(assert (=> d!584643 (= (inv!21 (value!121031 (h!26944 tokens!598))) e!1221028)))

(declare-fun b!1911476 () Bool)

(declare-fun inv!17 (TokenValue!3976) Bool)

(assert (=> b!1911476 (= e!1221027 (inv!17 (value!121031 (h!26944 tokens!598))))))

(declare-fun b!1911477 () Bool)

(declare-fun inv!16 (TokenValue!3976) Bool)

(assert (=> b!1911477 (= e!1221028 (inv!16 (value!121031 (h!26944 tokens!598))))))

(declare-fun b!1911478 () Bool)

(assert (=> b!1911478 (= e!1221028 e!1221027)))

(declare-fun c!311430 () Bool)

(assert (=> b!1911478 (= c!311430 ((_ is IntegerValue!11929) (value!121031 (h!26944 tokens!598))))))

(assert (= (and d!584643 c!311431) b!1911477))

(assert (= (and d!584643 (not c!311431)) b!1911478))

(assert (= (and b!1911478 c!311430) b!1911476))

(assert (= (and b!1911478 (not c!311430)) b!1911475))

(assert (= (and b!1911475 (not res!853601)) b!1911474))

(declare-fun m!2345371 () Bool)

(assert (=> b!1911474 m!2345371))

(declare-fun m!2345373 () Bool)

(assert (=> b!1911476 m!2345373))

(declare-fun m!2345375 () Bool)

(assert (=> b!1911477 m!2345375))

(assert (=> b!1910753 d!584643))

(declare-fun d!584645 () Bool)

(declare-fun res!853606 () Bool)

(declare-fun e!1221031 () Bool)

(assert (=> d!584645 (=> (not res!853606) (not e!1221031))))

(assert (=> d!584645 (= res!853606 (not (isEmpty!13229 (originalCharacters!4647 (h!26944 tokens!598)))))))

(assert (=> d!584645 (= (inv!28646 (h!26944 tokens!598)) e!1221031)))

(declare-fun b!1911483 () Bool)

(declare-fun res!853607 () Bool)

(assert (=> b!1911483 (=> (not res!853607) (not e!1221031))))

(assert (=> b!1911483 (= res!853607 (= (originalCharacters!4647 (h!26944 tokens!598)) (list!8760 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (value!121031 (h!26944 tokens!598))))))))

(declare-fun b!1911484 () Bool)

(assert (=> b!1911484 (= e!1221031 (= (size!16968 (h!26944 tokens!598)) (size!16974 (originalCharacters!4647 (h!26944 tokens!598)))))))

(assert (= (and d!584645 res!853606) b!1911483))

(assert (= (and b!1911483 res!853607) b!1911484))

(declare-fun b_lambda!63259 () Bool)

(assert (=> (not b_lambda!63259) (not b!1911483)))

(assert (=> b!1911483 t!178169))

(declare-fun b_and!148951 () Bool)

(assert (= b_and!148945 (and (=> t!178169 result!141422) b_and!148951)))

(assert (=> b!1911483 t!178171))

(declare-fun b_and!148953 () Bool)

(assert (= b_and!148947 (and (=> t!178171 result!141424) b_and!148953)))

(assert (=> b!1911483 t!178173))

(declare-fun b_and!148955 () Bool)

(assert (= b_and!148949 (and (=> t!178173 result!141426) b_and!148955)))

(declare-fun m!2345377 () Bool)

(assert (=> d!584645 m!2345377))

(assert (=> b!1911483 m!2345357))

(assert (=> b!1911483 m!2345357))

(declare-fun m!2345379 () Bool)

(assert (=> b!1911483 m!2345379))

(declare-fun m!2345381 () Bool)

(assert (=> b!1911484 m!2345381))

(assert (=> b!1910754 d!584645))

(declare-fun b!1911485 () Bool)

(declare-fun e!1221032 () Bool)

(assert (=> b!1911485 (= e!1221032 (inv!15 (value!121031 separatorToken!354)))))

(declare-fun b!1911486 () Bool)

(declare-fun res!853608 () Bool)

(assert (=> b!1911486 (=> res!853608 e!1221032)))

(assert (=> b!1911486 (= res!853608 (not ((_ is IntegerValue!11930) (value!121031 separatorToken!354))))))

(declare-fun e!1221033 () Bool)

(assert (=> b!1911486 (= e!1221033 e!1221032)))

(declare-fun d!584647 () Bool)

(declare-fun c!311433 () Bool)

(assert (=> d!584647 (= c!311433 ((_ is IntegerValue!11928) (value!121031 separatorToken!354)))))

(declare-fun e!1221034 () Bool)

(assert (=> d!584647 (= (inv!21 (value!121031 separatorToken!354)) e!1221034)))

(declare-fun b!1911487 () Bool)

(assert (=> b!1911487 (= e!1221033 (inv!17 (value!121031 separatorToken!354)))))

(declare-fun b!1911488 () Bool)

(assert (=> b!1911488 (= e!1221034 (inv!16 (value!121031 separatorToken!354)))))

(declare-fun b!1911489 () Bool)

(assert (=> b!1911489 (= e!1221034 e!1221033)))

(declare-fun c!311432 () Bool)

(assert (=> b!1911489 (= c!311432 ((_ is IntegerValue!11929) (value!121031 separatorToken!354)))))

(assert (= (and d!584647 c!311433) b!1911488))

(assert (= (and d!584647 (not c!311433)) b!1911489))

(assert (= (and b!1911489 c!311432) b!1911487))

(assert (= (and b!1911489 (not c!311432)) b!1911486))

(assert (= (and b!1911486 (not res!853608)) b!1911485))

(declare-fun m!2345383 () Bool)

(assert (=> b!1911485 m!2345383))

(declare-fun m!2345385 () Bool)

(assert (=> b!1911487 m!2345385))

(declare-fun m!2345387 () Bool)

(assert (=> b!1911488 m!2345387))

(assert (=> b!1910735 d!584647))

(declare-fun d!584649 () Bool)

(declare-fun res!853609 () Bool)

(declare-fun e!1221035 () Bool)

(assert (=> d!584649 (=> (not res!853609) (not e!1221035))))

(assert (=> d!584649 (= res!853609 (not (isEmpty!13229 (originalCharacters!4647 separatorToken!354))))))

(assert (=> d!584649 (= (inv!28646 separatorToken!354) e!1221035)))

(declare-fun b!1911490 () Bool)

(declare-fun res!853610 () Bool)

(assert (=> b!1911490 (=> (not res!853610) (not e!1221035))))

(assert (=> b!1911490 (= res!853610 (= (originalCharacters!4647 separatorToken!354) (list!8760 (dynLambda!10503 (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (value!121031 separatorToken!354)))))))

(declare-fun b!1911491 () Bool)

(assert (=> b!1911491 (= e!1221035 (= (size!16968 separatorToken!354) (size!16974 (originalCharacters!4647 separatorToken!354))))))

(assert (= (and d!584649 res!853609) b!1911490))

(assert (= (and b!1911490 res!853610) b!1911491))

(declare-fun b_lambda!63261 () Bool)

(assert (=> (not b_lambda!63261) (not b!1911490)))

(assert (=> b!1911490 t!178137))

(declare-fun b_and!148957 () Bool)

(assert (= b_and!148951 (and (=> t!178137 result!141382) b_and!148957)))

(assert (=> b!1911490 t!178139))

(declare-fun b_and!148959 () Bool)

(assert (= b_and!148953 (and (=> t!178139 result!141384) b_and!148959)))

(assert (=> b!1911490 t!178141))

(declare-fun b_and!148961 () Bool)

(assert (= b_and!148955 (and (=> t!178141 result!141386) b_and!148961)))

(declare-fun m!2345389 () Bool)

(assert (=> d!584649 m!2345389))

(assert (=> b!1911490 m!2345245))

(assert (=> b!1911490 m!2345245))

(declare-fun m!2345391 () Bool)

(assert (=> b!1911490 m!2345391))

(declare-fun m!2345393 () Bool)

(assert (=> b!1911491 m!2345393))

(assert (=> start!191652 d!584649))

(declare-fun d!584651 () Bool)

(assert (=> d!584651 (= (isEmpty!13221 rules!3198) ((_ is Nil!21542) rules!3198))))

(assert (=> b!1910734 d!584651))

(declare-fun d!584653 () Bool)

(declare-fun c!311436 () Bool)

(assert (=> d!584653 (= c!311436 ((_ is Cons!21543) (Cons!21543 (h!26944 tokens!598) Nil!21543)))))

(declare-fun e!1221038 () List!21623)

(assert (=> d!584653 (= (printList!1036 thiss!23328 (Cons!21543 (h!26944 tokens!598) Nil!21543)) e!1221038)))

(declare-fun b!1911496 () Bool)

(assert (=> b!1911496 (= e!1221038 (++!5789 (list!8760 (charsOf!2396 (h!26944 (Cons!21543 (h!26944 tokens!598) Nil!21543)))) (printList!1036 thiss!23328 (t!178082 (Cons!21543 (h!26944 tokens!598) Nil!21543)))))))

(declare-fun b!1911497 () Bool)

(assert (=> b!1911497 (= e!1221038 Nil!21541)))

(assert (= (and d!584653 c!311436) b!1911496))

(assert (= (and d!584653 (not c!311436)) b!1911497))

(declare-fun m!2345395 () Bool)

(assert (=> b!1911496 m!2345395))

(assert (=> b!1911496 m!2345395))

(declare-fun m!2345397 () Bool)

(assert (=> b!1911496 m!2345397))

(declare-fun m!2345399 () Bool)

(assert (=> b!1911496 m!2345399))

(assert (=> b!1911496 m!2345397))

(assert (=> b!1911496 m!2345399))

(declare-fun m!2345401 () Bool)

(assert (=> b!1911496 m!2345401))

(assert (=> b!1910745 d!584653))

(declare-fun d!584655 () Bool)

(assert (=> d!584655 (= (head!4444 lt!730912) (h!26942 lt!730912))))

(assert (=> b!1910745 d!584655))

(declare-fun d!584657 () Bool)

(assert (=> d!584657 (= (++!5789 (++!5789 lt!730914 lt!730912) lt!730918) (++!5789 lt!730914 (++!5789 lt!730912 lt!730918)))))

(declare-fun lt!731162 () Unit!35902)

(declare-fun choose!11899 (List!21623 List!21623 List!21623) Unit!35902)

(assert (=> d!584657 (= lt!731162 (choose!11899 lt!730914 lt!730912 lt!730918))))

(assert (=> d!584657 (= (lemmaConcatAssociativity!1155 lt!730914 lt!730912 lt!730918) lt!731162)))

(declare-fun bs!414186 () Bool)

(assert (= bs!414186 d!584657))

(declare-fun m!2345403 () Bool)

(assert (=> bs!414186 m!2345403))

(assert (=> bs!414186 m!2344457))

(assert (=> bs!414186 m!2344457))

(assert (=> bs!414186 m!2344469))

(assert (=> bs!414186 m!2344471))

(assert (=> bs!414186 m!2344487))

(assert (=> bs!414186 m!2344471))

(assert (=> b!1910745 d!584657))

(declare-fun d!584659 () Bool)

(declare-fun lt!731165 () Bool)

(assert (=> d!584659 (= lt!731165 (select (content!3151 (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598))))) lt!730926))))

(declare-fun e!1221044 () Bool)

(assert (=> d!584659 (= lt!731165 e!1221044)))

(declare-fun res!853615 () Bool)

(assert (=> d!584659 (=> (not res!853615) (not e!1221044))))

(assert (=> d!584659 (= res!853615 ((_ is Cons!21541) (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598))))))))

(assert (=> d!584659 (= (contains!3885 (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598)))) lt!730926) lt!731165)))

(declare-fun b!1911502 () Bool)

(declare-fun e!1221043 () Bool)

(assert (=> b!1911502 (= e!1221044 e!1221043)))

(declare-fun res!853616 () Bool)

(assert (=> b!1911502 (=> res!853616 e!1221043)))

(assert (=> b!1911502 (= res!853616 (= (h!26942 (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598))))) lt!730926))))

(declare-fun b!1911503 () Bool)

(assert (=> b!1911503 (= e!1221043 (contains!3885 (t!178080 (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598))))) lt!730926))))

(assert (= (and d!584659 res!853615) b!1911502))

(assert (= (and b!1911502 (not res!853616)) b!1911503))

(assert (=> d!584659 m!2344483))

(declare-fun m!2345405 () Bool)

(assert (=> d!584659 m!2345405))

(declare-fun m!2345407 () Bool)

(assert (=> d!584659 m!2345407))

(declare-fun m!2345409 () Bool)

(assert (=> b!1911503 m!2345409))

(assert (=> b!1910745 d!584659))

(declare-fun d!584661 () Bool)

(declare-fun lt!731166 () Bool)

(assert (=> d!584661 (= lt!731166 (select (content!3151 (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354)))) lt!730926))))

(declare-fun e!1221046 () Bool)

(assert (=> d!584661 (= lt!731166 e!1221046)))

(declare-fun res!853617 () Bool)

(assert (=> d!584661 (=> (not res!853617) (not e!1221046))))

(assert (=> d!584661 (= res!853617 ((_ is Cons!21541) (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354)))))))

(assert (=> d!584661 (= (contains!3885 (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354))) lt!730926) lt!731166)))

(declare-fun b!1911504 () Bool)

(declare-fun e!1221045 () Bool)

(assert (=> b!1911504 (= e!1221046 e!1221045)))

(declare-fun res!853618 () Bool)

(assert (=> b!1911504 (=> res!853618 e!1221045)))

(assert (=> b!1911504 (= res!853618 (= (h!26942 (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354)))) lt!730926))))

(declare-fun b!1911505 () Bool)

(assert (=> b!1911505 (= e!1221045 (contains!3885 (t!178080 (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354)))) lt!730926))))

(assert (= (and d!584661 res!853617) b!1911504))

(assert (= (and b!1911504 (not res!853618)) b!1911505))

(assert (=> d!584661 m!2344463))

(declare-fun m!2345411 () Bool)

(assert (=> d!584661 m!2345411))

(declare-fun m!2345413 () Bool)

(assert (=> d!584661 m!2345413))

(declare-fun m!2345415 () Bool)

(assert (=> b!1911505 m!2345415))

(assert (=> b!1910745 d!584661))

(declare-fun d!584663 () Bool)

(declare-fun c!311447 () Bool)

(assert (=> d!584663 (= c!311447 (or ((_ is EmptyExpr!5265) (regex!3840 (rule!6039 (h!26944 tokens!598)))) ((_ is EmptyLang!5265) (regex!3840 (rule!6039 (h!26944 tokens!598))))))))

(declare-fun e!1221057 () List!21623)

(assert (=> d!584663 (= (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598)))) e!1221057)))

(declare-fun b!1911522 () Bool)

(declare-fun e!1221055 () List!21623)

(declare-fun call!117773 () List!21623)

(assert (=> b!1911522 (= e!1221055 call!117773)))

(declare-fun b!1911523 () Bool)

(assert (=> b!1911523 (= e!1221057 Nil!21541)))

(declare-fun bm!117766 () Bool)

(declare-fun call!117771 () List!21623)

(declare-fun call!117774 () List!21623)

(assert (=> bm!117766 (= call!117771 call!117774)))

(declare-fun b!1911524 () Bool)

(declare-fun e!1221058 () List!21623)

(assert (=> b!1911524 (= e!1221058 (Cons!21541 (c!311295 (regex!3840 (rule!6039 (h!26944 tokens!598)))) Nil!21541))))

(declare-fun b!1911525 () Bool)

(assert (=> b!1911525 (= e!1221057 e!1221058)))

(declare-fun c!311446 () Bool)

(assert (=> b!1911525 (= c!311446 ((_ is ElementMatch!5265) (regex!3840 (rule!6039 (h!26944 tokens!598)))))))

(declare-fun c!311448 () Bool)

(declare-fun c!311445 () Bool)

(declare-fun bm!117767 () Bool)

(assert (=> bm!117767 (= call!117774 (usedCharacters!348 (ite c!311448 (reg!5594 (regex!3840 (rule!6039 (h!26944 tokens!598)))) (ite c!311445 (regTwo!11043 (regex!3840 (rule!6039 (h!26944 tokens!598)))) (regOne!11042 (regex!3840 (rule!6039 (h!26944 tokens!598))))))))))

(declare-fun b!1911526 () Bool)

(declare-fun e!1221056 () List!21623)

(assert (=> b!1911526 (= e!1221056 call!117774)))

(declare-fun bm!117768 () Bool)

(declare-fun call!117772 () List!21623)

(assert (=> bm!117768 (= call!117773 (++!5789 (ite c!311445 call!117772 call!117771) (ite c!311445 call!117771 call!117772)))))

(declare-fun b!1911527 () Bool)

(assert (=> b!1911527 (= e!1221056 e!1221055)))

(assert (=> b!1911527 (= c!311445 ((_ is Union!5265) (regex!3840 (rule!6039 (h!26944 tokens!598)))))))

(declare-fun bm!117769 () Bool)

(assert (=> bm!117769 (= call!117772 (usedCharacters!348 (ite c!311445 (regOne!11043 (regex!3840 (rule!6039 (h!26944 tokens!598)))) (regTwo!11042 (regex!3840 (rule!6039 (h!26944 tokens!598)))))))))

(declare-fun b!1911528 () Bool)

(assert (=> b!1911528 (= c!311448 ((_ is Star!5265) (regex!3840 (rule!6039 (h!26944 tokens!598)))))))

(assert (=> b!1911528 (= e!1221058 e!1221056)))

(declare-fun b!1911529 () Bool)

(assert (=> b!1911529 (= e!1221055 call!117773)))

(assert (= (and d!584663 c!311447) b!1911523))

(assert (= (and d!584663 (not c!311447)) b!1911525))

(assert (= (and b!1911525 c!311446) b!1911524))

(assert (= (and b!1911525 (not c!311446)) b!1911528))

(assert (= (and b!1911528 c!311448) b!1911526))

(assert (= (and b!1911528 (not c!311448)) b!1911527))

(assert (= (and b!1911527 c!311445) b!1911522))

(assert (= (and b!1911527 (not c!311445)) b!1911529))

(assert (= (or b!1911522 b!1911529) bm!117769))

(assert (= (or b!1911522 b!1911529) bm!117766))

(assert (= (or b!1911522 b!1911529) bm!117768))

(assert (= (or b!1911526 bm!117766) bm!117767))

(declare-fun m!2345417 () Bool)

(assert (=> bm!117767 m!2345417))

(declare-fun m!2345419 () Bool)

(assert (=> bm!117768 m!2345419))

(declare-fun m!2345421 () Bool)

(assert (=> bm!117769 m!2345421))

(assert (=> b!1910745 d!584663))

(declare-fun b!1911533 () Bool)

(declare-fun e!1221060 () Bool)

(declare-fun lt!731167 () List!21623)

(assert (=> b!1911533 (= e!1221060 (or (not (= lt!730912 Nil!21541)) (= lt!731167 lt!730914)))))

(declare-fun b!1911531 () Bool)

(declare-fun e!1221059 () List!21623)

(assert (=> b!1911531 (= e!1221059 (Cons!21541 (h!26942 lt!730914) (++!5789 (t!178080 lt!730914) lt!730912)))))

(declare-fun b!1911532 () Bool)

(declare-fun res!853619 () Bool)

(assert (=> b!1911532 (=> (not res!853619) (not e!1221060))))

(assert (=> b!1911532 (= res!853619 (= (size!16974 lt!731167) (+ (size!16974 lt!730914) (size!16974 lt!730912))))))

(declare-fun b!1911530 () Bool)

(assert (=> b!1911530 (= e!1221059 lt!730912)))

(declare-fun d!584665 () Bool)

(assert (=> d!584665 e!1221060))

(declare-fun res!853620 () Bool)

(assert (=> d!584665 (=> (not res!853620) (not e!1221060))))

(assert (=> d!584665 (= res!853620 (= (content!3151 lt!731167) ((_ map or) (content!3151 lt!730914) (content!3151 lt!730912))))))

(assert (=> d!584665 (= lt!731167 e!1221059)))

(declare-fun c!311449 () Bool)

(assert (=> d!584665 (= c!311449 ((_ is Nil!21541) lt!730914))))

(assert (=> d!584665 (= (++!5789 lt!730914 lt!730912) lt!731167)))

(assert (= (and d!584665 c!311449) b!1911530))

(assert (= (and d!584665 (not c!311449)) b!1911531))

(assert (= (and d!584665 res!853620) b!1911532))

(assert (= (and b!1911532 res!853619) b!1911533))

(declare-fun m!2345423 () Bool)

(assert (=> b!1911531 m!2345423))

(declare-fun m!2345425 () Bool)

(assert (=> b!1911532 m!2345425))

(assert (=> b!1911532 m!2345053))

(declare-fun m!2345427 () Bool)

(assert (=> b!1911532 m!2345427))

(declare-fun m!2345429 () Bool)

(assert (=> d!584665 m!2345429))

(assert (=> d!584665 m!2345285))

(declare-fun m!2345431 () Bool)

(assert (=> d!584665 m!2345431))

(assert (=> b!1910745 d!584665))

(declare-fun b!1911537 () Bool)

(declare-fun lt!731168 () List!21623)

(declare-fun e!1221062 () Bool)

(assert (=> b!1911537 (= e!1221062 (or (not (= lt!730918 Nil!21541)) (= lt!731168 lt!730912)))))

(declare-fun b!1911535 () Bool)

(declare-fun e!1221061 () List!21623)

(assert (=> b!1911535 (= e!1221061 (Cons!21541 (h!26942 lt!730912) (++!5789 (t!178080 lt!730912) lt!730918)))))

(declare-fun b!1911536 () Bool)

(declare-fun res!853621 () Bool)

(assert (=> b!1911536 (=> (not res!853621) (not e!1221062))))

(assert (=> b!1911536 (= res!853621 (= (size!16974 lt!731168) (+ (size!16974 lt!730912) (size!16974 lt!730918))))))

(declare-fun b!1911534 () Bool)

(assert (=> b!1911534 (= e!1221061 lt!730918)))

(declare-fun d!584667 () Bool)

(assert (=> d!584667 e!1221062))

(declare-fun res!853622 () Bool)

(assert (=> d!584667 (=> (not res!853622) (not e!1221062))))

(assert (=> d!584667 (= res!853622 (= (content!3151 lt!731168) ((_ map or) (content!3151 lt!730912) (content!3151 lt!730918))))))

(assert (=> d!584667 (= lt!731168 e!1221061)))

(declare-fun c!311450 () Bool)

(assert (=> d!584667 (= c!311450 ((_ is Nil!21541) lt!730912))))

(assert (=> d!584667 (= (++!5789 lt!730912 lt!730918) lt!731168)))

(assert (= (and d!584667 c!311450) b!1911534))

(assert (= (and d!584667 (not c!311450)) b!1911535))

(assert (= (and d!584667 res!853622) b!1911536))

(assert (= (and b!1911536 res!853621) b!1911537))

(declare-fun m!2345433 () Bool)

(assert (=> b!1911535 m!2345433))

(declare-fun m!2345435 () Bool)

(assert (=> b!1911536 m!2345435))

(assert (=> b!1911536 m!2345427))

(assert (=> b!1911536 m!2345281))

(declare-fun m!2345437 () Bool)

(assert (=> d!584667 m!2345437))

(assert (=> d!584667 m!2345431))

(assert (=> d!584667 m!2345287))

(assert (=> b!1910745 d!584667))

(declare-fun d!584669 () Bool)

(assert (=> d!584669 (not (contains!3885 (usedCharacters!348 (regex!3840 (rule!6039 (h!26944 tokens!598)))) lt!730926))))

(declare-fun lt!731171 () Unit!35902)

(declare-fun choose!11900 (LexerInterface!3453 List!21624 List!21624 Rule!7480 Rule!7480 C!10676) Unit!35902)

(assert (=> d!584669 (= lt!731171 (choose!11900 thiss!23328 rules!3198 rules!3198 (rule!6039 (h!26944 tokens!598)) (rule!6039 separatorToken!354) lt!730926))))

(assert (=> d!584669 (rulesInvariant!3060 thiss!23328 rules!3198)))

(assert (=> d!584669 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!44 thiss!23328 rules!3198 rules!3198 (rule!6039 (h!26944 tokens!598)) (rule!6039 separatorToken!354) lt!730926) lt!731171)))

(declare-fun bs!414187 () Bool)

(assert (= bs!414187 d!584669))

(assert (=> bs!414187 m!2344483))

(assert (=> bs!414187 m!2344483))

(assert (=> bs!414187 m!2344485))

(declare-fun m!2345439 () Bool)

(assert (=> bs!414187 m!2345439))

(assert (=> bs!414187 m!2344513))

(assert (=> b!1910745 d!584669))

(declare-fun d!584671 () Bool)

(declare-fun lt!731189 () BalanceConc!14160)

(declare-fun printListTailRec!441 (LexerInterface!3453 List!21625 List!21623) List!21623)

(declare-fun dropList!772 (BalanceConc!14162 Int) List!21625)

(assert (=> d!584671 (= (list!8760 lt!731189) (printListTailRec!441 thiss!23328 (dropList!772 lt!730907 0) (list!8760 (BalanceConc!14161 Empty!7172))))))

(declare-fun e!1221067 () BalanceConc!14160)

(assert (=> d!584671 (= lt!731189 e!1221067)))

(declare-fun c!311454 () Bool)

(assert (=> d!584671 (= c!311454 (>= 0 (size!16972 lt!730907)))))

(declare-fun e!1221068 () Bool)

(assert (=> d!584671 e!1221068))

(declare-fun res!853625 () Bool)

(assert (=> d!584671 (=> (not res!853625) (not e!1221068))))

(assert (=> d!584671 (= res!853625 (>= 0 0))))

(assert (=> d!584671 (= (printTailRec!970 thiss!23328 lt!730907 0 (BalanceConc!14161 Empty!7172)) lt!731189)))

(declare-fun b!1911544 () Bool)

(assert (=> b!1911544 (= e!1221068 (<= 0 (size!16972 lt!730907)))))

(declare-fun b!1911545 () Bool)

(assert (=> b!1911545 (= e!1221067 (BalanceConc!14161 Empty!7172))))

(declare-fun b!1911546 () Bool)

(declare-fun ++!5791 (BalanceConc!14160 BalanceConc!14160) BalanceConc!14160)

(assert (=> b!1911546 (= e!1221067 (printTailRec!970 thiss!23328 lt!730907 (+ 0 1) (++!5791 (BalanceConc!14161 Empty!7172) (charsOf!2396 (apply!5647 lt!730907 0)))))))

(declare-fun lt!731188 () List!21625)

(assert (=> b!1911546 (= lt!731188 (list!8763 lt!730907))))

(declare-fun lt!731192 () Unit!35902)

(declare-fun lemmaDropApply!696 (List!21625 Int) Unit!35902)

(assert (=> b!1911546 (= lt!731192 (lemmaDropApply!696 lt!731188 0))))

(declare-fun head!4446 (List!21625) Token!7232)

(declare-fun drop!1063 (List!21625 Int) List!21625)

(declare-fun apply!5650 (List!21625 Int) Token!7232)

(assert (=> b!1911546 (= (head!4446 (drop!1063 lt!731188 0)) (apply!5650 lt!731188 0))))

(declare-fun lt!731187 () Unit!35902)

(assert (=> b!1911546 (= lt!731187 lt!731192)))

(declare-fun lt!731190 () List!21625)

(assert (=> b!1911546 (= lt!731190 (list!8763 lt!730907))))

(declare-fun lt!731186 () Unit!35902)

(declare-fun lemmaDropTail!672 (List!21625 Int) Unit!35902)

(assert (=> b!1911546 (= lt!731186 (lemmaDropTail!672 lt!731190 0))))

(declare-fun tail!2958 (List!21625) List!21625)

(assert (=> b!1911546 (= (tail!2958 (drop!1063 lt!731190 0)) (drop!1063 lt!731190 (+ 0 1)))))

(declare-fun lt!731191 () Unit!35902)

(assert (=> b!1911546 (= lt!731191 lt!731186)))

(assert (= (and d!584671 res!853625) b!1911544))

(assert (= (and d!584671 c!311454) b!1911545))

(assert (= (and d!584671 (not c!311454)) b!1911546))

(declare-fun m!2345441 () Bool)

(assert (=> d!584671 m!2345441))

(declare-fun m!2345443 () Bool)

(assert (=> d!584671 m!2345443))

(declare-fun m!2345445 () Bool)

(assert (=> d!584671 m!2345445))

(declare-fun m!2345447 () Bool)

(assert (=> d!584671 m!2345447))

(declare-fun m!2345449 () Bool)

(assert (=> d!584671 m!2345449))

(assert (=> d!584671 m!2345443))

(assert (=> d!584671 m!2345445))

(assert (=> b!1911544 m!2345441))

(declare-fun m!2345451 () Bool)

(assert (=> b!1911546 m!2345451))

(declare-fun m!2345453 () Bool)

(assert (=> b!1911546 m!2345453))

(declare-fun m!2345455 () Bool)

(assert (=> b!1911546 m!2345455))

(declare-fun m!2345457 () Bool)

(assert (=> b!1911546 m!2345457))

(assert (=> b!1911546 m!2345451))

(declare-fun m!2345459 () Bool)

(assert (=> b!1911546 m!2345459))

(declare-fun m!2345461 () Bool)

(assert (=> b!1911546 m!2345461))

(assert (=> b!1911546 m!2345459))

(declare-fun m!2345463 () Bool)

(assert (=> b!1911546 m!2345463))

(declare-fun m!2345465 () Bool)

(assert (=> b!1911546 m!2345465))

(declare-fun m!2345467 () Bool)

(assert (=> b!1911546 m!2345467))

(declare-fun m!2345469 () Bool)

(assert (=> b!1911546 m!2345469))

(declare-fun m!2345471 () Bool)

(assert (=> b!1911546 m!2345471))

(assert (=> b!1911546 m!2345467))

(declare-fun m!2345473 () Bool)

(assert (=> b!1911546 m!2345473))

(assert (=> b!1911546 m!2345453))

(declare-fun m!2345475 () Bool)

(assert (=> b!1911546 m!2345475))

(assert (=> b!1911546 m!2345457))

(assert (=> b!1910745 d!584671))

(declare-fun d!584673 () Bool)

(declare-fun c!311457 () Bool)

(assert (=> d!584673 (= c!311457 (or ((_ is EmptyExpr!5265) (regex!3840 (rule!6039 separatorToken!354))) ((_ is EmptyLang!5265) (regex!3840 (rule!6039 separatorToken!354)))))))

(declare-fun e!1221071 () List!21623)

(assert (=> d!584673 (= (usedCharacters!348 (regex!3840 (rule!6039 separatorToken!354))) e!1221071)))

(declare-fun b!1911547 () Bool)

(declare-fun e!1221069 () List!21623)

(declare-fun call!117777 () List!21623)

(assert (=> b!1911547 (= e!1221069 call!117777)))

(declare-fun b!1911548 () Bool)

(assert (=> b!1911548 (= e!1221071 Nil!21541)))

(declare-fun bm!117770 () Bool)

(declare-fun call!117775 () List!21623)

(declare-fun call!117778 () List!21623)

(assert (=> bm!117770 (= call!117775 call!117778)))

(declare-fun b!1911549 () Bool)

(declare-fun e!1221072 () List!21623)

(assert (=> b!1911549 (= e!1221072 (Cons!21541 (c!311295 (regex!3840 (rule!6039 separatorToken!354))) Nil!21541))))

(declare-fun b!1911550 () Bool)

(assert (=> b!1911550 (= e!1221071 e!1221072)))

(declare-fun c!311456 () Bool)

(assert (=> b!1911550 (= c!311456 ((_ is ElementMatch!5265) (regex!3840 (rule!6039 separatorToken!354))))))

(declare-fun c!311458 () Bool)

(declare-fun c!311455 () Bool)

(declare-fun bm!117771 () Bool)

(assert (=> bm!117771 (= call!117778 (usedCharacters!348 (ite c!311458 (reg!5594 (regex!3840 (rule!6039 separatorToken!354))) (ite c!311455 (regTwo!11043 (regex!3840 (rule!6039 separatorToken!354))) (regOne!11042 (regex!3840 (rule!6039 separatorToken!354)))))))))

(declare-fun b!1911551 () Bool)

(declare-fun e!1221070 () List!21623)

(assert (=> b!1911551 (= e!1221070 call!117778)))

(declare-fun bm!117772 () Bool)

(declare-fun call!117776 () List!21623)

(assert (=> bm!117772 (= call!117777 (++!5789 (ite c!311455 call!117776 call!117775) (ite c!311455 call!117775 call!117776)))))

(declare-fun b!1911552 () Bool)

(assert (=> b!1911552 (= e!1221070 e!1221069)))

(assert (=> b!1911552 (= c!311455 ((_ is Union!5265) (regex!3840 (rule!6039 separatorToken!354))))))

(declare-fun bm!117773 () Bool)

(assert (=> bm!117773 (= call!117776 (usedCharacters!348 (ite c!311455 (regOne!11043 (regex!3840 (rule!6039 separatorToken!354))) (regTwo!11042 (regex!3840 (rule!6039 separatorToken!354))))))))

(declare-fun b!1911553 () Bool)

(assert (=> b!1911553 (= c!311458 ((_ is Star!5265) (regex!3840 (rule!6039 separatorToken!354))))))

(assert (=> b!1911553 (= e!1221072 e!1221070)))

(declare-fun b!1911554 () Bool)

(assert (=> b!1911554 (= e!1221069 call!117777)))

(assert (= (and d!584673 c!311457) b!1911548))

(assert (= (and d!584673 (not c!311457)) b!1911550))

(assert (= (and b!1911550 c!311456) b!1911549))

(assert (= (and b!1911550 (not c!311456)) b!1911553))

(assert (= (and b!1911553 c!311458) b!1911551))

(assert (= (and b!1911553 (not c!311458)) b!1911552))

(assert (= (and b!1911552 c!311455) b!1911547))

(assert (= (and b!1911552 (not c!311455)) b!1911554))

(assert (= (or b!1911547 b!1911554) bm!117773))

(assert (= (or b!1911547 b!1911554) bm!117770))

(assert (= (or b!1911547 b!1911554) bm!117772))

(assert (= (or b!1911551 bm!117770) bm!117771))

(declare-fun m!2345477 () Bool)

(assert (=> bm!117771 m!2345477))

(declare-fun m!2345479 () Bool)

(assert (=> bm!117772 m!2345479))

(declare-fun m!2345481 () Bool)

(assert (=> bm!117773 m!2345481))

(assert (=> b!1910745 d!584673))

(declare-fun d!584675 () Bool)

(assert (=> d!584675 (= (list!8760 lt!730928) (list!8764 (c!311294 lt!730928)))))

(declare-fun bs!414188 () Bool)

(assert (= bs!414188 d!584675))

(declare-fun m!2345483 () Bool)

(assert (=> bs!414188 m!2345483))

(assert (=> b!1910745 d!584675))

(declare-fun d!584677 () Bool)

(declare-fun lt!731195 () BalanceConc!14160)

(assert (=> d!584677 (= (list!8760 lt!731195) (printList!1036 thiss!23328 (list!8763 lt!730907)))))

(assert (=> d!584677 (= lt!731195 (printTailRec!970 thiss!23328 lt!730907 0 (BalanceConc!14161 Empty!7172)))))

(assert (=> d!584677 (= (print!1463 thiss!23328 lt!730907) lt!731195)))

(declare-fun bs!414189 () Bool)

(assert (= bs!414189 d!584677))

(declare-fun m!2345485 () Bool)

(assert (=> bs!414189 m!2345485))

(assert (=> bs!414189 m!2345471))

(assert (=> bs!414189 m!2345471))

(declare-fun m!2345487 () Bool)

(assert (=> bs!414189 m!2345487))

(assert (=> bs!414189 m!2344481))

(assert (=> b!1910745 d!584677))

(declare-fun lt!731196 () List!21623)

(declare-fun b!1911558 () Bool)

(declare-fun e!1221074 () Bool)

(assert (=> b!1911558 (= e!1221074 (or (not (= (++!5789 lt!730912 lt!730918) Nil!21541)) (= lt!731196 lt!730914)))))

(declare-fun b!1911556 () Bool)

(declare-fun e!1221073 () List!21623)

(assert (=> b!1911556 (= e!1221073 (Cons!21541 (h!26942 lt!730914) (++!5789 (t!178080 lt!730914) (++!5789 lt!730912 lt!730918))))))

(declare-fun b!1911557 () Bool)

(declare-fun res!853626 () Bool)

(assert (=> b!1911557 (=> (not res!853626) (not e!1221074))))

(assert (=> b!1911557 (= res!853626 (= (size!16974 lt!731196) (+ (size!16974 lt!730914) (size!16974 (++!5789 lt!730912 lt!730918)))))))

(declare-fun b!1911555 () Bool)

(assert (=> b!1911555 (= e!1221073 (++!5789 lt!730912 lt!730918))))

(declare-fun d!584679 () Bool)

(assert (=> d!584679 e!1221074))

(declare-fun res!853627 () Bool)

(assert (=> d!584679 (=> (not res!853627) (not e!1221074))))

(assert (=> d!584679 (= res!853627 (= (content!3151 lt!731196) ((_ map or) (content!3151 lt!730914) (content!3151 (++!5789 lt!730912 lt!730918)))))))

(assert (=> d!584679 (= lt!731196 e!1221073)))

(declare-fun c!311459 () Bool)

(assert (=> d!584679 (= c!311459 ((_ is Nil!21541) lt!730914))))

(assert (=> d!584679 (= (++!5789 lt!730914 (++!5789 lt!730912 lt!730918)) lt!731196)))

(assert (= (and d!584679 c!311459) b!1911555))

(assert (= (and d!584679 (not c!311459)) b!1911556))

(assert (= (and d!584679 res!853627) b!1911557))

(assert (= (and b!1911557 res!853626) b!1911558))

(assert (=> b!1911556 m!2344457))

(declare-fun m!2345489 () Bool)

(assert (=> b!1911556 m!2345489))

(declare-fun m!2345491 () Bool)

(assert (=> b!1911557 m!2345491))

(assert (=> b!1911557 m!2345053))

(assert (=> b!1911557 m!2344457))

(declare-fun m!2345493 () Bool)

(assert (=> b!1911557 m!2345493))

(declare-fun m!2345495 () Bool)

(assert (=> d!584679 m!2345495))

(assert (=> d!584679 m!2345285))

(assert (=> d!584679 m!2344457))

(declare-fun m!2345497 () Bool)

(assert (=> d!584679 m!2345497))

(assert (=> b!1910745 d!584679))

(declare-fun d!584681 () Bool)

(declare-fun e!1221077 () Bool)

(assert (=> d!584681 e!1221077))

(declare-fun res!853630 () Bool)

(assert (=> d!584681 (=> (not res!853630) (not e!1221077))))

(declare-fun lt!731199 () BalanceConc!14162)

(assert (=> d!584681 (= res!853630 (= (list!8763 lt!731199) (Cons!21543 (h!26944 tokens!598) Nil!21543)))))

(declare-fun singleton!836 (Token!7232) BalanceConc!14162)

(assert (=> d!584681 (= lt!731199 (singleton!836 (h!26944 tokens!598)))))

(assert (=> d!584681 (= (singletonSeq!1863 (h!26944 tokens!598)) lt!731199)))

(declare-fun b!1911561 () Bool)

(declare-fun isBalanced!2245 (Conc!7173) Bool)

(assert (=> b!1911561 (= e!1221077 (isBalanced!2245 (c!311296 lt!731199)))))

(assert (= (and d!584681 res!853630) b!1911561))

(declare-fun m!2345499 () Bool)

(assert (=> d!584681 m!2345499))

(declare-fun m!2345501 () Bool)

(assert (=> d!584681 m!2345501))

(declare-fun m!2345503 () Bool)

(assert (=> b!1911561 m!2345503))

(assert (=> b!1910745 d!584681))

(declare-fun b!1911565 () Bool)

(declare-fun lt!731200 () List!21623)

(declare-fun e!1221079 () Bool)

(assert (=> b!1911565 (= e!1221079 (or (not (= lt!730918 Nil!21541)) (= lt!731200 (++!5789 lt!730914 lt!730912))))))

(declare-fun e!1221078 () List!21623)

(declare-fun b!1911563 () Bool)

(assert (=> b!1911563 (= e!1221078 (Cons!21541 (h!26942 (++!5789 lt!730914 lt!730912)) (++!5789 (t!178080 (++!5789 lt!730914 lt!730912)) lt!730918)))))

(declare-fun b!1911564 () Bool)

(declare-fun res!853631 () Bool)

(assert (=> b!1911564 (=> (not res!853631) (not e!1221079))))

(assert (=> b!1911564 (= res!853631 (= (size!16974 lt!731200) (+ (size!16974 (++!5789 lt!730914 lt!730912)) (size!16974 lt!730918))))))

(declare-fun b!1911562 () Bool)

(assert (=> b!1911562 (= e!1221078 lt!730918)))

(declare-fun d!584683 () Bool)

(assert (=> d!584683 e!1221079))

(declare-fun res!853632 () Bool)

(assert (=> d!584683 (=> (not res!853632) (not e!1221079))))

(assert (=> d!584683 (= res!853632 (= (content!3151 lt!731200) ((_ map or) (content!3151 (++!5789 lt!730914 lt!730912)) (content!3151 lt!730918))))))

(assert (=> d!584683 (= lt!731200 e!1221078)))

(declare-fun c!311460 () Bool)

(assert (=> d!584683 (= c!311460 ((_ is Nil!21541) (++!5789 lt!730914 lt!730912)))))

(assert (=> d!584683 (= (++!5789 (++!5789 lt!730914 lt!730912) lt!730918) lt!731200)))

(assert (= (and d!584683 c!311460) b!1911562))

(assert (= (and d!584683 (not c!311460)) b!1911563))

(assert (= (and d!584683 res!853632) b!1911564))

(assert (= (and b!1911564 res!853631) b!1911565))

(declare-fun m!2345505 () Bool)

(assert (=> b!1911563 m!2345505))

(declare-fun m!2345507 () Bool)

(assert (=> b!1911564 m!2345507))

(assert (=> b!1911564 m!2344471))

(declare-fun m!2345509 () Bool)

(assert (=> b!1911564 m!2345509))

(assert (=> b!1911564 m!2345281))

(declare-fun m!2345511 () Bool)

(assert (=> d!584683 m!2345511))

(assert (=> d!584683 m!2344471))

(declare-fun m!2345513 () Bool)

(assert (=> d!584683 m!2345513))

(assert (=> d!584683 m!2345287))

(assert (=> b!1910745 d!584683))

(declare-fun e!1221082 () Bool)

(assert (=> b!1910750 (= tp!545453 e!1221082)))

(declare-fun b!1911576 () Bool)

(declare-fun tp_is_empty!9101 () Bool)

(assert (=> b!1911576 (= e!1221082 tp_is_empty!9101)))

(declare-fun b!1911578 () Bool)

(declare-fun tp!545539 () Bool)

(assert (=> b!1911578 (= e!1221082 tp!545539)))

(declare-fun b!1911579 () Bool)

(declare-fun tp!545537 () Bool)

(declare-fun tp!545541 () Bool)

(assert (=> b!1911579 (= e!1221082 (and tp!545537 tp!545541))))

(declare-fun b!1911577 () Bool)

(declare-fun tp!545538 () Bool)

(declare-fun tp!545540 () Bool)

(assert (=> b!1911577 (= e!1221082 (and tp!545538 tp!545540))))

(assert (= (and b!1910750 ((_ is ElementMatch!5265) (regex!3840 (rule!6039 (h!26944 tokens!598))))) b!1911576))

(assert (= (and b!1910750 ((_ is Concat!9242) (regex!3840 (rule!6039 (h!26944 tokens!598))))) b!1911577))

(assert (= (and b!1910750 ((_ is Star!5265) (regex!3840 (rule!6039 (h!26944 tokens!598))))) b!1911578))

(assert (= (and b!1910750 ((_ is Union!5265) (regex!3840 (rule!6039 (h!26944 tokens!598))))) b!1911579))

(declare-fun e!1221083 () Bool)

(assert (=> b!1910763 (= tp!545455 e!1221083)))

(declare-fun b!1911580 () Bool)

(assert (=> b!1911580 (= e!1221083 tp_is_empty!9101)))

(declare-fun b!1911582 () Bool)

(declare-fun tp!545544 () Bool)

(assert (=> b!1911582 (= e!1221083 tp!545544)))

(declare-fun b!1911583 () Bool)

(declare-fun tp!545542 () Bool)

(declare-fun tp!545546 () Bool)

(assert (=> b!1911583 (= e!1221083 (and tp!545542 tp!545546))))

(declare-fun b!1911581 () Bool)

(declare-fun tp!545543 () Bool)

(declare-fun tp!545545 () Bool)

(assert (=> b!1911581 (= e!1221083 (and tp!545543 tp!545545))))

(assert (= (and b!1910763 ((_ is ElementMatch!5265) (regex!3840 (h!26943 rules!3198)))) b!1911580))

(assert (= (and b!1910763 ((_ is Concat!9242) (regex!3840 (h!26943 rules!3198)))) b!1911581))

(assert (= (and b!1910763 ((_ is Star!5265) (regex!3840 (h!26943 rules!3198)))) b!1911582))

(assert (= (and b!1910763 ((_ is Union!5265) (regex!3840 (h!26943 rules!3198)))) b!1911583))

(declare-fun b!1911594 () Bool)

(declare-fun b_free!53949 () Bool)

(declare-fun b_next!54653 () Bool)

(assert (=> b!1911594 (= b_free!53949 (not b_next!54653))))

(declare-fun t!178176 () Bool)

(declare-fun tb!117053 () Bool)

(assert (=> (and b!1911594 (= (toValue!5469 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178176) tb!117053))

(declare-fun result!141432 () Bool)

(assert (= result!141432 result!141374))

(assert (=> d!584607 t!178176))

(assert (=> d!584631 t!178176))

(declare-fun tb!117055 () Bool)

(declare-fun t!178178 () Bool)

(assert (=> (and b!1911594 (= (toValue!5469 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178178) tb!117055))

(declare-fun result!141434 () Bool)

(assert (= result!141434 result!141416))

(assert (=> d!584631 t!178178))

(declare-fun b_and!148963 () Bool)

(declare-fun tp!545555 () Bool)

(assert (=> b!1911594 (= tp!545555 (and (=> t!178176 result!141432) (=> t!178178 result!141434) b_and!148963))))

(declare-fun b_free!53951 () Bool)

(declare-fun b_next!54655 () Bool)

(assert (=> b!1911594 (= b_free!53951 (not b_next!54655))))

(declare-fun tb!117057 () Bool)

(declare-fun t!178180 () Bool)

(assert (=> (and b!1911594 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178180) tb!117057))

(declare-fun result!141436 () Bool)

(assert (= result!141436 result!141422))

(assert (=> b!1911483 t!178180))

(declare-fun t!178182 () Bool)

(declare-fun tb!117059 () Bool)

(assert (=> (and b!1911594 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354)))) t!178182) tb!117059))

(declare-fun result!141438 () Bool)

(assert (= result!141438 result!141382))

(assert (=> b!1911490 t!178182))

(assert (=> d!584635 t!178180))

(declare-fun tb!117061 () Bool)

(declare-fun t!178184 () Bool)

(assert (=> (and b!1911594 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178184) tb!117061))

(declare-fun result!141440 () Bool)

(assert (= result!141440 result!141366))

(assert (=> d!584607 t!178184))

(assert (=> d!584611 t!178182))

(declare-fun b_and!148965 () Bool)

(declare-fun tp!545556 () Bool)

(assert (=> b!1911594 (= tp!545556 (and (=> t!178184 result!141440) (=> t!178180 result!141436) (=> t!178182 result!141438) b_and!148965))))

(declare-fun e!1221095 () Bool)

(assert (=> b!1911594 (= e!1221095 (and tp!545555 tp!545556))))

(declare-fun e!1221094 () Bool)

(declare-fun b!1911593 () Bool)

(declare-fun tp!545557 () Bool)

(assert (=> b!1911593 (= e!1221094 (and tp!545557 (inv!28643 (tag!4274 (h!26943 (t!178081 rules!3198)))) (inv!28647 (transformation!3840 (h!26943 (t!178081 rules!3198)))) e!1221095))))

(declare-fun b!1911592 () Bool)

(declare-fun e!1221093 () Bool)

(declare-fun tp!545558 () Bool)

(assert (=> b!1911592 (= e!1221093 (and e!1221094 tp!545558))))

(assert (=> b!1910764 (= tp!545454 e!1221093)))

(assert (= b!1911593 b!1911594))

(assert (= b!1911592 b!1911593))

(assert (= (and b!1910764 ((_ is Cons!21542) (t!178081 rules!3198))) b!1911592))

(declare-fun m!2345515 () Bool)

(assert (=> b!1911593 m!2345515))

(declare-fun m!2345517 () Bool)

(assert (=> b!1911593 m!2345517))

(declare-fun e!1221096 () Bool)

(assert (=> b!1910743 (= tp!545452 e!1221096)))

(declare-fun b!1911595 () Bool)

(assert (=> b!1911595 (= e!1221096 tp_is_empty!9101)))

(declare-fun b!1911597 () Bool)

(declare-fun tp!545561 () Bool)

(assert (=> b!1911597 (= e!1221096 tp!545561)))

(declare-fun b!1911598 () Bool)

(declare-fun tp!545559 () Bool)

(declare-fun tp!545563 () Bool)

(assert (=> b!1911598 (= e!1221096 (and tp!545559 tp!545563))))

(declare-fun b!1911596 () Bool)

(declare-fun tp!545560 () Bool)

(declare-fun tp!545562 () Bool)

(assert (=> b!1911596 (= e!1221096 (and tp!545560 tp!545562))))

(assert (= (and b!1910743 ((_ is ElementMatch!5265) (regex!3840 (rule!6039 separatorToken!354)))) b!1911595))

(assert (= (and b!1910743 ((_ is Concat!9242) (regex!3840 (rule!6039 separatorToken!354)))) b!1911596))

(assert (= (and b!1910743 ((_ is Star!5265) (regex!3840 (rule!6039 separatorToken!354)))) b!1911597))

(assert (= (and b!1910743 ((_ is Union!5265) (regex!3840 (rule!6039 separatorToken!354)))) b!1911598))

(declare-fun b!1911603 () Bool)

(declare-fun e!1221099 () Bool)

(declare-fun tp!545566 () Bool)

(assert (=> b!1911603 (= e!1221099 (and tp_is_empty!9101 tp!545566))))

(assert (=> b!1910753 (= tp!545448 e!1221099)))

(assert (= (and b!1910753 ((_ is Cons!21541) (originalCharacters!4647 (h!26944 tokens!598)))) b!1911603))

(declare-fun b!1911617 () Bool)

(declare-fun b_free!53953 () Bool)

(declare-fun b_next!54657 () Bool)

(assert (=> b!1911617 (= b_free!53953 (not b_next!54657))))

(declare-fun t!178186 () Bool)

(declare-fun tb!117063 () Bool)

(assert (=> (and b!1911617 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178186) tb!117063))

(declare-fun result!141446 () Bool)

(assert (= result!141446 result!141374))

(assert (=> d!584607 t!178186))

(assert (=> d!584631 t!178186))

(declare-fun t!178188 () Bool)

(declare-fun tb!117065 () Bool)

(assert (=> (and b!1911617 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178188) tb!117065))

(declare-fun result!141448 () Bool)

(assert (= result!141448 result!141416))

(assert (=> d!584631 t!178188))

(declare-fun b_and!148967 () Bool)

(declare-fun tp!545577 () Bool)

(assert (=> b!1911617 (= tp!545577 (and (=> t!178186 result!141446) (=> t!178188 result!141448) b_and!148967))))

(declare-fun b_free!53955 () Bool)

(declare-fun b_next!54659 () Bool)

(assert (=> b!1911617 (= b_free!53955 (not b_next!54659))))

(declare-fun t!178190 () Bool)

(declare-fun tb!117067 () Bool)

(assert (=> (and b!1911617 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178190) tb!117067))

(declare-fun result!141450 () Bool)

(assert (= result!141450 result!141422))

(assert (=> b!1911483 t!178190))

(declare-fun tb!117069 () Bool)

(declare-fun t!178192 () Bool)

(assert (=> (and b!1911617 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354)))) t!178192) tb!117069))

(declare-fun result!141452 () Bool)

(assert (= result!141452 result!141382))

(assert (=> b!1911490 t!178192))

(assert (=> d!584635 t!178190))

(declare-fun t!178194 () Bool)

(declare-fun tb!117071 () Bool)

(assert (=> (and b!1911617 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598))))) t!178194) tb!117071))

(declare-fun result!141454 () Bool)

(assert (= result!141454 result!141366))

(assert (=> d!584607 t!178194))

(assert (=> d!584611 t!178192))

(declare-fun tp!545580 () Bool)

(declare-fun b_and!148969 () Bool)

(assert (=> b!1911617 (= tp!545580 (and (=> t!178190 result!141450) (=> t!178192 result!141452) (=> t!178194 result!141454) b_and!148969))))

(declare-fun e!1221112 () Bool)

(declare-fun e!1221117 () Bool)

(declare-fun tp!545578 () Bool)

(declare-fun b!1911616 () Bool)

(assert (=> b!1911616 (= e!1221112 (and tp!545578 (inv!28643 (tag!4274 (rule!6039 (h!26944 (t!178082 tokens!598))))) (inv!28647 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) e!1221117))))

(declare-fun e!1221116 () Bool)

(assert (=> b!1910754 (= tp!545449 e!1221116)))

(declare-fun b!1911615 () Bool)

(declare-fun tp!545579 () Bool)

(declare-fun e!1221113 () Bool)

(assert (=> b!1911615 (= e!1221113 (and (inv!21 (value!121031 (h!26944 (t!178082 tokens!598)))) e!1221112 tp!545579))))

(assert (=> b!1911617 (= e!1221117 (and tp!545577 tp!545580))))

(declare-fun b!1911614 () Bool)

(declare-fun tp!545581 () Bool)

(assert (=> b!1911614 (= e!1221116 (and (inv!28646 (h!26944 (t!178082 tokens!598))) e!1221113 tp!545581))))

(assert (= b!1911616 b!1911617))

(assert (= b!1911615 b!1911616))

(assert (= b!1911614 b!1911615))

(assert (= (and b!1910754 ((_ is Cons!21543) (t!178082 tokens!598))) b!1911614))

(declare-fun m!2345519 () Bool)

(assert (=> b!1911616 m!2345519))

(declare-fun m!2345521 () Bool)

(assert (=> b!1911616 m!2345521))

(declare-fun m!2345523 () Bool)

(assert (=> b!1911615 m!2345523))

(declare-fun m!2345525 () Bool)

(assert (=> b!1911614 m!2345525))

(declare-fun b!1911618 () Bool)

(declare-fun e!1221118 () Bool)

(declare-fun tp!545582 () Bool)

(assert (=> b!1911618 (= e!1221118 (and tp_is_empty!9101 tp!545582))))

(assert (=> b!1910735 (= tp!545450 e!1221118)))

(assert (= (and b!1910735 ((_ is Cons!21541) (originalCharacters!4647 separatorToken!354))) b!1911618))

(declare-fun b_lambda!63263 () Bool)

(assert (= b_lambda!63253 (or (and b!1911594 b_free!53949 (= (toValue!5469 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910744 b_free!53933) (and b!1911617 b_free!53953 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910739 b_free!53937 (= (toValue!5469 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910751 b_free!53929 (= (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) b_lambda!63263)))

(declare-fun b_lambda!63265 () Bool)

(assert (= b_lambda!63233 (or (and b!1910744 b_free!53935 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) (and b!1910751 b_free!53931) (and b!1910739 b_free!53939 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) (and b!1911617 b_free!53955 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) (and b!1911594 b_free!53951 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) b_lambda!63265)))

(declare-fun b_lambda!63267 () Bool)

(assert (= b_lambda!63257 (or (and b!1910739 b_free!53939 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910751 b_free!53931 (= (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910744 b_free!53935) (and b!1911594 b_free!53951 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1911617 b_free!53955 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) b_lambda!63267)))

(declare-fun b_lambda!63269 () Bool)

(assert (= b_lambda!63261 (or (and b!1910744 b_free!53935 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) (and b!1910751 b_free!53931) (and b!1910739 b_free!53939 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) (and b!1911617 b_free!53955 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) (and b!1911594 b_free!53951 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))))) b_lambda!63269)))

(declare-fun b_lambda!63271 () Bool)

(assert (= b_lambda!63231 (or (and b!1911594 b_free!53949 (= (toValue!5469 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910744 b_free!53933) (and b!1911617 b_free!53953 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910739 b_free!53937 (= (toValue!5469 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910751 b_free!53929 (= (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) b_lambda!63271)))

(declare-fun b_lambda!63273 () Bool)

(assert (= b_lambda!63255 (or (and b!1911594 b_free!53949 (= (toValue!5469 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910744 b_free!53933) (and b!1911617 b_free!53953 (= (toValue!5469 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910739 b_free!53937 (= (toValue!5469 (transformation!3840 (h!26943 rules!3198))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910751 b_free!53929 (= (toValue!5469 (transformation!3840 (rule!6039 separatorToken!354))) (toValue!5469 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) b_lambda!63273)))

(declare-fun b_lambda!63275 () Bool)

(assert (= b_lambda!63259 (or (and b!1910739 b_free!53939 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910751 b_free!53931 (= (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910744 b_free!53935) (and b!1911594 b_free!53951 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1911617 b_free!53955 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) b_lambda!63275)))

(declare-fun b_lambda!63277 () Bool)

(assert (= b_lambda!63215 (or b!1910738 b_lambda!63277)))

(declare-fun bs!414190 () Bool)

(declare-fun d!584685 () Bool)

(assert (= bs!414190 (and d!584685 b!1910738)))

(assert (=> bs!414190 (= (dynLambda!10501 lambda!74617 (h!26944 tokens!598)) (not (isSeparator!3840 (rule!6039 (h!26944 tokens!598)))))))

(assert (=> b!1911052 d!584685))

(declare-fun b_lambda!63279 () Bool)

(assert (= b_lambda!63229 (or (and b!1910739 b_free!53939 (= (toChars!5328 (transformation!3840 (h!26943 rules!3198))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910751 b_free!53931 (= (toChars!5328 (transformation!3840 (rule!6039 separatorToken!354))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1910744 b_free!53935) (and b!1911594 b_free!53951 (= (toChars!5328 (transformation!3840 (h!26943 (t!178081 rules!3198)))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) (and b!1911617 b_free!53955 (= (toChars!5328 (transformation!3840 (rule!6039 (h!26944 (t!178082 tokens!598))))) (toChars!5328 (transformation!3840 (rule!6039 (h!26944 tokens!598)))))) b_lambda!63279)))

(check-sat (not d!584631) (not b!1911434) (not bm!117704) b_and!148967 (not b!1911218) (not b!1911447) (not b!1911483) (not b!1911441) (not b!1911226) b_and!148965 (not b!1911474) (not b!1911134) (not b!1911083) (not b!1911564) (not d!584639) (not b!1911448) (not b_lambda!63279) (not b_lambda!63275) (not b_lambda!63267) (not d!584457) (not b!1911436) (not b!1911327) (not d!584683) (not d!584535) b_and!148959 (not b!1911033) (not b!1911579) (not b!1911437) (not b!1910821) (not b!1910770) (not b!1911536) (not bm!117752) (not bm!117753) (not d!584669) (not b!1911458) (not b!1910822) b_and!148963 (not b!1911349) (not d!584637) (not d!584629) (not b!1910833) (not bm!117769) (not d!584627) (not b!1910830) (not b!1911546) (not d!584625) (not b!1911224) (not bm!117767) (not b!1911109) (not b!1910837) (not b!1911581) (not d!584615) (not b!1910823) (not b!1911223) (not b!1911577) (not b!1911114) (not d!584611) (not b!1910825) (not b!1911331) (not b!1911582) (not b!1911614) (not d!584661) b_and!148943 (not b_next!54641) (not b!1911488) (not b!1911556) (not bm!117772) (not b!1911615) (not b!1910958) (not b!1911477) (not b!1911597) (not d!584679) (not b!1911431) (not b_lambda!63263) (not b!1911596) (not b!1911457) (not tb!117047) (not d!584443) (not bm!117773) (not b!1911082) (not b!1911578) (not d!584527) (not d!584529) (not b!1911414) (not b!1911490) (not d!584511) (not b!1911532) (not d!584491) (not b!1911446) b_and!148941 (not b_lambda!63271) (not b_next!54637) (not b!1911415) (not b!1911449) (not b!1911440) (not bm!117757) (not b_next!54633) (not b!1911618) (not d!584623) (not b!1911043) (not d!584657) (not b_next!54635) (not b!1911592) (not b!1911485) (not d!584513) (not bm!117725) (not b!1911110) (not b!1911039) (not d!584633) (not d!584659) (not d!584607) (not b_lambda!63273) (not b!1911531) (not d!584537) (not b!1911419) (not d!584667) (not d!584635) (not b!1911041) (not b!1911115) (not b!1911131) (not b!1911334) (not d!584453) (not d!584613) (not b!1911332) (not b!1911505) (not b!1911563) (not b!1910957) (not b!1911583) (not b!1911487) b_and!148957 (not b!1911535) (not b!1911130) (not b!1911598) (not bm!117771) tp_is_empty!9101 (not b!1910967) (not b!1911036) (not b!1911557) (not b!1911544) (not b!1911439) (not b_next!54639) b_and!148969 (not b_lambda!63269) (not b!1911219) (not b!1911042) (not d!584503) (not d!584455) (not d!584621) (not tb!117041) (not d!584519) (not b_next!54657) (not b!1911108) (not b!1911476) (not b!1911031) (not bm!117756) (not b!1911561) (not b!1911491) (not b!1910816) (not b!1911433) (not b!1911045) (not b!1911496) (not d!584681) (not b!1911222) (not b!1911603) (not b!1910836) (not b_lambda!63277) (not d!584665) (not b!1911329) (not b!1911430) (not b!1910819) (not b!1911463) (not b_next!54653) (not b!1911346) (not b!1911503) (not d!584575) (not b_lambda!63265) (not d!584523) (not d!584645) (not b!1911221) (not d!584649) (not b_next!54659) b_and!148939 (not b!1911111) (not b!1911484) (not tb!117009) (not tb!117015) (not bm!117697) (not b!1910769) (not d!584517) (not d!584641) (not bm!117768) b_and!148961 (not b_next!54655) (not b!1910839) (not bm!117696) (not b!1911032) (not b!1911081) (not b!1911593) (not b!1911616) (not b!1911084) (not b!1910835) (not d!584677) (not b!1911225) (not d!584675) (not b!1911053) (not d!584671) (not b_next!54643) (not d!584509) (not b!1911459) (not b!1911438) (not tb!117003))
(check-sat b_and!148967 b_and!148965 b_and!148959 b_and!148963 b_and!148957 (not b_next!54657) (not b_next!54653) (not b_next!54643) b_and!148943 (not b_next!54641) (not b_next!54637) b_and!148941 (not b_next!54633) (not b_next!54635) (not b_next!54639) b_and!148969 (not b_next!54659) b_and!148939 b_and!148961 (not b_next!54655))
