; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340098 () Bool)

(assert start!340098)

(declare-fun b!3641366 () Bool)

(declare-fun b_free!95473 () Bool)

(declare-fun b_next!96177 () Bool)

(assert (=> b!3641366 (= b_free!95473 (not b_next!96177))))

(declare-fun tp!1110833 () Bool)

(declare-fun b_and!268443 () Bool)

(assert (=> b!3641366 (= tp!1110833 b_and!268443)))

(declare-fun b_free!95475 () Bool)

(declare-fun b_next!96179 () Bool)

(assert (=> b!3641366 (= b_free!95475 (not b_next!96179))))

(declare-fun tp!1110837 () Bool)

(declare-fun b_and!268445 () Bool)

(assert (=> b!3641366 (= tp!1110837 b_and!268445)))

(declare-fun b!3641369 () Bool)

(declare-fun b_free!95477 () Bool)

(declare-fun b_next!96181 () Bool)

(assert (=> b!3641369 (= b_free!95477 (not b_next!96181))))

(declare-fun tp!1110834 () Bool)

(declare-fun b_and!268447 () Bool)

(assert (=> b!3641369 (= tp!1110834 b_and!268447)))

(declare-fun b_free!95479 () Bool)

(declare-fun b_next!96183 () Bool)

(assert (=> b!3641369 (= b_free!95479 (not b_next!96183))))

(declare-fun tp!1110843 () Bool)

(declare-fun b_and!268449 () Bool)

(assert (=> b!3641369 (= tp!1110843 b_and!268449)))

(declare-fun b!3641379 () Bool)

(declare-fun b_free!95481 () Bool)

(declare-fun b_next!96185 () Bool)

(assert (=> b!3641379 (= b_free!95481 (not b_next!96185))))

(declare-fun tp!1110846 () Bool)

(declare-fun b_and!268451 () Bool)

(assert (=> b!3641379 (= tp!1110846 b_and!268451)))

(declare-fun b_free!95483 () Bool)

(declare-fun b_next!96187 () Bool)

(assert (=> b!3641379 (= b_free!95483 (not b_next!96187))))

(declare-fun tp!1110842 () Bool)

(declare-fun b_and!268453 () Bool)

(assert (=> b!3641379 (= tp!1110842 b_and!268453)))

(declare-fun b!3641354 () Bool)

(declare-fun b_free!95485 () Bool)

(declare-fun b_next!96189 () Bool)

(assert (=> b!3641354 (= b_free!95485 (not b_next!96189))))

(declare-fun tp!1110832 () Bool)

(declare-fun b_and!268455 () Bool)

(assert (=> b!3641354 (= tp!1110832 b_and!268455)))

(declare-fun b_free!95487 () Bool)

(declare-fun b_next!96191 () Bool)

(assert (=> b!3641354 (= b_free!95487 (not b_next!96191))))

(declare-fun tp!1110844 () Bool)

(declare-fun b_and!268457 () Bool)

(assert (=> b!3641354 (= tp!1110844 b_and!268457)))

(declare-fun tp!1110835 () Bool)

(declare-fun e!2254154 () Bool)

(declare-fun b!3641343 () Bool)

(declare-fun e!2254130 () Bool)

(declare-datatypes ((List!38501 0))(
  ( (Nil!38377) (Cons!38377 (h!43797 (_ BitVec 16)) (t!296524 List!38501)) )
))
(declare-datatypes ((TokenValue!5964 0))(
  ( (FloatLiteralValue!11928 (text!42193 List!38501)) (TokenValueExt!5963 (__x!24145 Int)) (Broken!29820 (value!183853 List!38501)) (Object!6087) (End!5964) (Def!5964) (Underscore!5964) (Match!5964) (Else!5964) (Error!5964) (Case!5964) (If!5964) (Extends!5964) (Abstract!5964) (Class!5964) (Val!5964) (DelimiterValue!11928 (del!6024 List!38501)) (KeywordValue!5970 (value!183854 List!38501)) (CommentValue!11928 (value!183855 List!38501)) (WhitespaceValue!11928 (value!183856 List!38501)) (IndentationValue!5964 (value!183857 List!38501)) (String!43153) (Int32!5964) (Broken!29821 (value!183858 List!38501)) (Boolean!5965) (Unit!55227) (OperatorValue!5967 (op!6024 List!38501)) (IdentifierValue!11928 (value!183859 List!38501)) (IdentifierValue!11929 (value!183860 List!38501)) (WhitespaceValue!11929 (value!183861 List!38501)) (True!11928) (False!11928) (Broken!29822 (value!183862 List!38501)) (Broken!29823 (value!183863 List!38501)) (True!11929) (RightBrace!5964) (RightBracket!5964) (Colon!5964) (Null!5964) (Comma!5964) (LeftBracket!5964) (False!11929) (LeftBrace!5964) (ImaginaryLiteralValue!5964 (text!42194 List!38501)) (StringLiteralValue!17892 (value!183864 List!38501)) (EOFValue!5964 (value!183865 List!38501)) (IdentValue!5964 (value!183866 List!38501)) (DelimiterValue!11929 (value!183867 List!38501)) (DedentValue!5964 (value!183868 List!38501)) (NewLineValue!5964 (value!183869 List!38501)) (IntegerValue!17892 (value!183870 (_ BitVec 32)) (text!42195 List!38501)) (IntegerValue!17893 (value!183871 Int) (text!42196 List!38501)) (Times!5964) (Or!5964) (Equal!5964) (Minus!5964) (Broken!29824 (value!183872 List!38501)) (And!5964) (Div!5964) (LessEqual!5964) (Mod!5964) (Concat!16457) (Not!5964) (Plus!5964) (SpaceValue!5964 (value!183873 List!38501)) (IntegerValue!17894 (value!183874 Int) (text!42197 List!38501)) (StringLiteralValue!17893 (text!42198 List!38501)) (FloatLiteralValue!11929 (text!42199 List!38501)) (BytesLiteralValue!5964 (value!183875 List!38501)) (CommentValue!11929 (value!183876 List!38501)) (StringLiteralValue!17894 (value!183877 List!38501)) (ErrorTokenValue!5964 (msg!6025 List!38501)) )
))
(declare-datatypes ((C!21172 0))(
  ( (C!21173 (val!12634 Int)) )
))
(declare-datatypes ((Regex!10493 0))(
  ( (ElementMatch!10493 (c!629592 C!21172)) (Concat!16458 (regOne!21498 Regex!10493) (regTwo!21498 Regex!10493)) (EmptyExpr!10493) (Star!10493 (reg!10822 Regex!10493)) (EmptyLang!10493) (Union!10493 (regOne!21499 Regex!10493) (regTwo!21499 Regex!10493)) )
))
(declare-datatypes ((String!43154 0))(
  ( (String!43155 (value!183878 String)) )
))
(declare-datatypes ((List!38502 0))(
  ( (Nil!38378) (Cons!38378 (h!43798 C!21172) (t!296525 List!38502)) )
))
(declare-datatypes ((IArray!23443 0))(
  ( (IArray!23444 (innerList!11779 List!38502)) )
))
(declare-datatypes ((Conc!11719 0))(
  ( (Node!11719 (left!29964 Conc!11719) (right!30294 Conc!11719) (csize!23668 Int) (cheight!11930 Int)) (Leaf!18197 (xs!14921 IArray!23443) (csize!23669 Int)) (Empty!11719) )
))
(declare-datatypes ((BalanceConc!23052 0))(
  ( (BalanceConc!23053 (c!629593 Conc!11719)) )
))
(declare-datatypes ((TokenValueInjection!11356 0))(
  ( (TokenValueInjection!11357 (toValue!8026 Int) (toChars!7885 Int)) )
))
(declare-datatypes ((Rule!11268 0))(
  ( (Rule!11269 (regex!5734 Regex!10493) (tag!6484 String!43154) (isSeparator!5734 Bool) (transformation!5734 TokenValueInjection!11356)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11268)

(declare-fun inv!51810 (String!43154) Bool)

(declare-fun inv!51813 (TokenValueInjection!11356) Bool)

(assert (=> b!3641343 (= e!2254130 (and tp!1110835 (inv!51810 (tag!6484 anOtherTypeRule!33)) (inv!51813 (transformation!5734 anOtherTypeRule!33)) e!2254154))))

(declare-fun b!3641344 () Bool)

(declare-fun res!1476015 () Bool)

(declare-fun e!2254151 () Bool)

(assert (=> b!3641344 (=> (not res!1476015) (not e!2254151))))

(declare-datatypes ((Token!10834 0))(
  ( (Token!10835 (value!183879 TokenValue!5964) (rule!8518 Rule!11268) (size!29291 Int) (originalCharacters!6448 List!38502)) )
))
(declare-datatypes ((tuple2!38248 0))(
  ( (tuple2!38249 (_1!22258 Token!10834) (_2!22258 List!38502)) )
))
(declare-fun lt!1260882 () tuple2!38248)

(declare-fun isEmpty!22724 (List!38502) Bool)

(assert (=> b!3641344 (= res!1476015 (isEmpty!22724 (_2!22258 lt!1260882)))))

(declare-fun b!3641345 () Bool)

(declare-fun res!1475992 () Bool)

(declare-fun e!2254152 () Bool)

(assert (=> b!3641345 (=> res!1475992 e!2254152)))

(declare-datatypes ((List!38503 0))(
  ( (Nil!38379) (Cons!38379 (h!43799 Rule!11268) (t!296526 List!38503)) )
))
(declare-fun rules!3307 () List!38503)

(declare-fun sepAndNonSepRulesDisjointChars!1902 (List!38503 List!38503) Bool)

(assert (=> b!3641345 (= res!1475992 (not (sepAndNonSepRulesDisjointChars!1902 rules!3307 rules!3307)))))

(declare-fun b!3641346 () Bool)

(declare-fun res!1476013 () Bool)

(declare-fun e!2254138 () Bool)

(assert (=> b!3641346 (=> res!1476013 e!2254138)))

(declare-fun lt!1260867 () List!38502)

(declare-fun lt!1260876 () C!21172)

(declare-fun contains!7533 (List!38502 C!21172) Bool)

(assert (=> b!3641346 (= res!1476013 (not (contains!7533 lt!1260867 lt!1260876)))))

(declare-fun b!3641347 () Bool)

(declare-fun e!2254148 () Bool)

(declare-fun e!2254141 () Bool)

(declare-fun tp!1110840 () Bool)

(assert (=> b!3641347 (= e!2254148 (and e!2254141 tp!1110840))))

(declare-fun b!3641348 () Bool)

(declare-fun e!2254143 () Bool)

(declare-fun e!2254155 () Bool)

(assert (=> b!3641348 (= e!2254143 e!2254155)))

(declare-fun res!1476003 () Bool)

(assert (=> b!3641348 (=> (not res!1476003) (not e!2254155))))

(declare-fun lt!1260890 () Rule!11268)

(declare-fun lt!1260871 () tuple2!38248)

(declare-fun matchR!5062 (Regex!10493 List!38502) Bool)

(declare-fun list!14208 (BalanceConc!23052) List!38502)

(declare-fun charsOf!3748 (Token!10834) BalanceConc!23052)

(assert (=> b!3641348 (= res!1476003 (matchR!5062 (regex!5734 lt!1260890) (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))))))

(declare-datatypes ((Option!8096 0))(
  ( (None!8095) (Some!8095 (v!37927 Rule!11268)) )
))
(declare-fun lt!1260896 () Option!8096)

(declare-fun get!12573 (Option!8096) Rule!11268)

(assert (=> b!3641348 (= lt!1260890 (get!12573 lt!1260896))))

(declare-fun b!3641349 () Bool)

(declare-fun res!1476012 () Bool)

(declare-fun e!2254140 () Bool)

(assert (=> b!3641349 (=> (not res!1476012) (not e!2254140))))

(declare-datatypes ((LexerInterface!5323 0))(
  ( (LexerInterfaceExt!5320 (__x!24146 Int)) (Lexer!5321) )
))
(declare-fun thiss!23823 () LexerInterface!5323)

(declare-fun rulesInvariant!4720 (LexerInterface!5323 List!38503) Bool)

(assert (=> b!3641349 (= res!1476012 (rulesInvariant!4720 thiss!23823 rules!3307))))

(declare-fun b!3641350 () Bool)

(declare-fun e!2254128 () Bool)

(assert (=> b!3641350 (= e!2254128 e!2254138)))

(declare-fun res!1476001 () Bool)

(assert (=> b!3641350 (=> res!1476001 e!2254138)))

(declare-fun rule!403 () Rule!11268)

(assert (=> b!3641350 (= res!1476001 (or (not (isSeparator!5734 rule!403)) (isSeparator!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-datatypes ((Unit!55228 0))(
  ( (Unit!55229) )
))
(declare-fun lt!1260892 () Unit!55228)

(declare-fun e!2254137 () Unit!55228)

(assert (=> b!3641350 (= lt!1260892 e!2254137)))

(declare-fun c!629591 () Bool)

(declare-fun lt!1260881 () Bool)

(assert (=> b!3641350 (= c!629591 lt!1260881)))

(declare-fun lt!1260878 () List!38502)

(assert (=> b!3641350 (= lt!1260881 (not (contains!7533 lt!1260878 lt!1260876)))))

(declare-fun lt!1260873 () List!38502)

(declare-fun head!7734 (List!38502) C!21172)

(assert (=> b!3641350 (= lt!1260876 (head!7734 lt!1260873))))

(declare-fun b!3641351 () Bool)

(assert (=> b!3641351 (= e!2254155 (= (rule!8518 (_1!22258 lt!1260871)) lt!1260890))))

(declare-fun b!3641352 () Bool)

(declare-fun Unit!55230 () Unit!55228)

(assert (=> b!3641352 (= e!2254137 Unit!55230)))

(declare-fun lt!1260884 () Unit!55228)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!682 (Regex!10493 List!38502 C!21172) Unit!55228)

(assert (=> b!3641352 (= lt!1260884 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!682 (regex!5734 rule!403) lt!1260867 lt!1260876))))

(assert (=> b!3641352 false))

(declare-fun b!3641353 () Bool)

(declare-fun e!2254145 () Bool)

(declare-fun tp_is_empty!18069 () Bool)

(declare-fun tp!1110836 () Bool)

(assert (=> b!3641353 (= e!2254145 (and tp_is_empty!18069 tp!1110836))))

(assert (=> b!3641354 (= e!2254154 (and tp!1110832 tp!1110844))))

(declare-fun b!3641355 () Bool)

(declare-fun res!1476011 () Bool)

(assert (=> b!3641355 (=> (not res!1476011) (not e!2254140))))

(declare-fun contains!7534 (List!38503 Rule!11268) Bool)

(assert (=> b!3641355 (= res!1476011 (contains!7534 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2254134 () Bool)

(declare-fun tp!1110839 () Bool)

(declare-fun e!2254147 () Bool)

(declare-fun b!3641356 () Bool)

(assert (=> b!3641356 (= e!2254134 (and tp!1110839 (inv!51810 (tag!6484 rule!403)) (inv!51813 (transformation!5734 rule!403)) e!2254147))))

(declare-fun b!3641357 () Bool)

(declare-fun e!2254135 () Bool)

(assert (=> b!3641357 (= e!2254138 e!2254135)))

(declare-fun res!1476008 () Bool)

(assert (=> b!3641357 (=> res!1476008 e!2254135)))

(declare-fun validRegex!4805 (Regex!10493) Bool)

(assert (=> b!3641357 (= res!1476008 (not (validRegex!4805 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))

(declare-fun usedCharacters!946 (Regex!10493) List!38502)

(assert (=> b!3641357 (not (contains!7533 (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260876))))

(declare-fun lt!1260880 () Unit!55228)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!390 (LexerInterface!5323 List!38503 List!38503 Rule!11268 Rule!11268 C!21172) Unit!55228)

(assert (=> b!3641357 (= lt!1260880 (lemmaNonSepRuleNotContainsCharContainedInASepRule!390 thiss!23823 rules!3307 rules!3307 (rule!8518 (_1!22258 lt!1260871)) rule!403 lt!1260876))))

(declare-fun tp!1110841 () Bool)

(declare-fun e!2254146 () Bool)

(declare-fun token!511 () Token!10834)

(declare-fun b!3641358 () Bool)

(declare-fun e!2254132 () Bool)

(assert (=> b!3641358 (= e!2254146 (and tp!1110841 (inv!51810 (tag!6484 (rule!8518 token!511))) (inv!51813 (transformation!5734 (rule!8518 token!511))) e!2254132))))

(declare-fun tp!1110838 () Bool)

(declare-fun b!3641359 () Bool)

(declare-fun e!2254144 () Bool)

(declare-fun inv!21 (TokenValue!5964) Bool)

(assert (=> b!3641359 (= e!2254144 (and (inv!21 (value!183879 token!511)) e!2254146 tp!1110838))))

(declare-fun b!3641360 () Bool)

(declare-fun res!1476005 () Bool)

(assert (=> b!3641360 (=> (not res!1476005) (not e!2254151))))

(assert (=> b!3641360 (= res!1476005 (= (rule!8518 token!511) rule!403))))

(declare-fun b!3641361 () Bool)

(declare-fun e!2254131 () Bool)

(assert (=> b!3641361 (= e!2254131 e!2254152)))

(declare-fun res!1476009 () Bool)

(assert (=> b!3641361 (=> res!1476009 e!2254152)))

(declare-fun lt!1260877 () C!21172)

(assert (=> b!3641361 (= res!1476009 (contains!7533 lt!1260878 lt!1260877))))

(declare-fun suffix!1395 () List!38502)

(assert (=> b!3641361 (= lt!1260877 (head!7734 suffix!1395))))

(assert (=> b!3641361 (= lt!1260878 (usedCharacters!946 (regex!5734 rule!403)))))

(declare-fun b!3641362 () Bool)

(declare-fun e!2254149 () Bool)

(assert (=> b!3641362 (= e!2254140 e!2254149)))

(declare-fun res!1476007 () Bool)

(assert (=> b!3641362 (=> (not res!1476007) (not e!2254149))))

(declare-datatypes ((Option!8097 0))(
  ( (None!8096) (Some!8096 (v!37928 tuple2!38248)) )
))
(declare-fun lt!1260889 () Option!8097)

(declare-fun isDefined!6328 (Option!8097) Bool)

(assert (=> b!3641362 (= res!1476007 (isDefined!6328 lt!1260889))))

(declare-fun maxPrefix!2857 (LexerInterface!5323 List!38503 List!38502) Option!8097)

(assert (=> b!3641362 (= lt!1260889 (maxPrefix!2857 thiss!23823 rules!3307 lt!1260867))))

(assert (=> b!3641362 (= lt!1260867 (list!14208 (charsOf!3748 token!511)))))

(declare-fun b!3641363 () Bool)

(assert (=> b!3641363 (= e!2254149 e!2254151)))

(declare-fun res!1475994 () Bool)

(assert (=> b!3641363 (=> (not res!1475994) (not e!2254151))))

(assert (=> b!3641363 (= res!1475994 (= (_1!22258 lt!1260882) token!511))))

(declare-fun get!12574 (Option!8097) tuple2!38248)

(assert (=> b!3641363 (= lt!1260882 (get!12574 lt!1260889))))

(declare-fun b!3641364 () Bool)

(declare-fun res!1475993 () Bool)

(assert (=> b!3641364 (=> (not res!1475993) (not e!2254140))))

(declare-fun isEmpty!22725 (List!38503) Bool)

(assert (=> b!3641364 (= res!1475993 (not (isEmpty!22725 rules!3307)))))

(declare-fun b!3641365 () Bool)

(declare-fun res!1476006 () Bool)

(assert (=> b!3641365 (=> res!1476006 e!2254152)))

(assert (=> b!3641365 (= res!1476006 (not (contains!7533 (usedCharacters!946 (regex!5734 anOtherTypeRule!33)) lt!1260877)))))

(assert (=> b!3641366 (= e!2254132 (and tp!1110833 tp!1110837))))

(declare-fun tp!1110845 () Bool)

(declare-fun e!2254156 () Bool)

(declare-fun b!3641367 () Bool)

(assert (=> b!3641367 (= e!2254141 (and tp!1110845 (inv!51810 (tag!6484 (h!43799 rules!3307))) (inv!51813 (transformation!5734 (h!43799 rules!3307))) e!2254156))))

(declare-fun b!3641368 () Bool)

(declare-fun e!2254150 () Bool)

(assert (=> b!3641368 (= e!2254152 e!2254150)))

(declare-fun res!1475999 () Bool)

(assert (=> b!3641368 (=> res!1475999 e!2254150)))

(declare-fun lt!1260870 () List!38502)

(declare-fun isPrefix!3097 (List!38502 List!38502) Bool)

(assert (=> b!3641368 (= res!1475999 (not (isPrefix!3097 lt!1260873 lt!1260870)))))

(declare-fun ++!9550 (List!38502 List!38502) List!38502)

(assert (=> b!3641368 (isPrefix!3097 lt!1260873 (++!9550 lt!1260873 (_2!22258 lt!1260871)))))

(declare-fun lt!1260874 () Unit!55228)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2016 (List!38502 List!38502) Unit!55228)

(assert (=> b!3641368 (= lt!1260874 (lemmaConcatTwoListThenFirstIsPrefix!2016 lt!1260873 (_2!22258 lt!1260871)))))

(declare-fun lt!1260891 () BalanceConc!23052)

(assert (=> b!3641368 (= lt!1260873 (list!14208 lt!1260891))))

(assert (=> b!3641368 (= lt!1260891 (charsOf!3748 (_1!22258 lt!1260871)))))

(assert (=> b!3641368 e!2254143))

(declare-fun res!1476000 () Bool)

(assert (=> b!3641368 (=> (not res!1476000) (not e!2254143))))

(declare-fun isDefined!6329 (Option!8096) Bool)

(assert (=> b!3641368 (= res!1476000 (isDefined!6329 lt!1260896))))

(declare-fun getRuleFromTag!1338 (LexerInterface!5323 List!38503 String!43154) Option!8096)

(assert (=> b!3641368 (= lt!1260896 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun lt!1260888 () Unit!55228)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1338 (LexerInterface!5323 List!38503 List!38502 Token!10834) Unit!55228)

(assert (=> b!3641368 (= lt!1260888 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1338 thiss!23823 rules!3307 lt!1260870 (_1!22258 lt!1260871)))))

(declare-fun lt!1260868 () Option!8097)

(assert (=> b!3641368 (= lt!1260871 (get!12574 lt!1260868))))

(declare-fun lt!1260879 () Unit!55228)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1001 (LexerInterface!5323 List!38503 List!38502 List!38502) Unit!55228)

(assert (=> b!3641368 (= lt!1260879 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1001 thiss!23823 rules!3307 lt!1260867 suffix!1395))))

(assert (=> b!3641368 (= lt!1260868 (maxPrefix!2857 thiss!23823 rules!3307 lt!1260870))))

(assert (=> b!3641368 (isPrefix!3097 lt!1260867 lt!1260870)))

(declare-fun lt!1260875 () Unit!55228)

(assert (=> b!3641368 (= lt!1260875 (lemmaConcatTwoListThenFirstIsPrefix!2016 lt!1260867 suffix!1395))))

(assert (=> b!3641368 (= lt!1260870 (++!9550 lt!1260867 suffix!1395))))

(assert (=> b!3641369 (= e!2254156 (and tp!1110834 tp!1110843))))

(declare-fun b!3641370 () Bool)

(declare-fun res!1475995 () Bool)

(assert (=> b!3641370 (=> (not res!1475995) (not e!2254140))))

(assert (=> b!3641370 (= res!1475995 (not (= (isSeparator!5734 anOtherTypeRule!33) (isSeparator!5734 rule!403))))))

(declare-fun b!3641371 () Bool)

(declare-fun res!1476002 () Bool)

(assert (=> b!3641371 (=> res!1476002 e!2254138)))

(assert (=> b!3641371 (= res!1476002 lt!1260881)))

(declare-fun b!3641372 () Bool)

(declare-fun Unit!55231 () Unit!55228)

(assert (=> b!3641372 (= e!2254137 Unit!55231)))

(declare-fun res!1475998 () Bool)

(assert (=> start!340098 (=> (not res!1475998) (not e!2254140))))

(get-info :version)

(assert (=> start!340098 (= res!1475998 ((_ is Lexer!5321) thiss!23823))))

(assert (=> start!340098 e!2254140))

(assert (=> start!340098 e!2254148))

(assert (=> start!340098 e!2254145))

(assert (=> start!340098 true))

(declare-fun inv!51814 (Token!10834) Bool)

(assert (=> start!340098 (and (inv!51814 token!511) e!2254144)))

(assert (=> start!340098 e!2254134))

(assert (=> start!340098 e!2254130))

(declare-fun b!3641373 () Bool)

(declare-fun res!1476014 () Bool)

(assert (=> b!3641373 (=> res!1476014 e!2254131)))

(assert (=> b!3641373 (= res!1476014 (isEmpty!22724 suffix!1395))))

(declare-fun b!3641374 () Bool)

(declare-fun e!2254153 () Bool)

(assert (=> b!3641374 (= e!2254153 e!2254128)))

(declare-fun res!1476004 () Bool)

(assert (=> b!3641374 (=> res!1476004 e!2254128)))

(declare-fun lt!1260869 () Option!8097)

(declare-fun lt!1260866 () List!38502)

(assert (=> b!3641374 (= res!1476004 (or (not (= lt!1260866 (_2!22258 lt!1260871))) (not (= lt!1260869 (Some!8096 (tuple2!38249 (_1!22258 lt!1260871) lt!1260866))))))))

(assert (=> b!3641374 (= (_2!22258 lt!1260871) lt!1260866)))

(declare-fun lt!1260885 () Unit!55228)

(declare-fun lemmaSamePrefixThenSameSuffix!1424 (List!38502 List!38502 List!38502 List!38502 List!38502) Unit!55228)

(assert (=> b!3641374 (= lt!1260885 (lemmaSamePrefixThenSameSuffix!1424 lt!1260873 (_2!22258 lt!1260871) lt!1260873 lt!1260866 lt!1260870))))

(declare-fun getSuffix!1650 (List!38502 List!38502) List!38502)

(assert (=> b!3641374 (= lt!1260866 (getSuffix!1650 lt!1260870 lt!1260873))))

(declare-fun lt!1260883 () TokenValue!5964)

(declare-fun lt!1260893 () Int)

(assert (=> b!3641374 (= lt!1260869 (Some!8096 (tuple2!38249 (Token!10835 lt!1260883 (rule!8518 (_1!22258 lt!1260871)) lt!1260893 lt!1260873) (_2!22258 lt!1260871))))))

(declare-fun maxPrefixOneRule!1995 (LexerInterface!5323 Rule!11268 List!38502) Option!8097)

(assert (=> b!3641374 (= lt!1260869 (maxPrefixOneRule!1995 thiss!23823 (rule!8518 (_1!22258 lt!1260871)) lt!1260870))))

(declare-fun size!29292 (List!38502) Int)

(assert (=> b!3641374 (= lt!1260893 (size!29292 lt!1260873))))

(declare-fun apply!9236 (TokenValueInjection!11356 BalanceConc!23052) TokenValue!5964)

(declare-fun seqFromList!4283 (List!38502) BalanceConc!23052)

(assert (=> b!3641374 (= lt!1260883 (apply!9236 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) (seqFromList!4283 lt!1260873)))))

(declare-fun lt!1260887 () Unit!55228)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1051 (LexerInterface!5323 List!38503 List!38502 List!38502 List!38502 Rule!11268) Unit!55228)

(assert (=> b!3641374 (= lt!1260887 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1051 thiss!23823 rules!3307 lt!1260873 lt!1260870 (_2!22258 lt!1260871) (rule!8518 (_1!22258 lt!1260871))))))

(declare-fun b!3641375 () Bool)

(assert (=> b!3641375 (= e!2254150 e!2254153)))

(declare-fun res!1475996 () Bool)

(assert (=> b!3641375 (=> res!1475996 e!2254153)))

(declare-fun size!29293 (BalanceConc!23052) Int)

(assert (=> b!3641375 (= res!1475996 (not (= lt!1260868 (Some!8096 (tuple2!38249 (Token!10835 (apply!9236 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260891) (rule!8518 (_1!22258 lt!1260871)) (size!29293 lt!1260891) lt!1260873) (_2!22258 lt!1260871))))))))

(declare-fun lt!1260894 () Unit!55228)

(declare-fun lemmaCharactersSize!779 (Token!10834) Unit!55228)

(assert (=> b!3641375 (= lt!1260894 (lemmaCharactersSize!779 (_1!22258 lt!1260871)))))

(declare-fun lt!1260872 () Unit!55228)

(declare-fun lemmaEqSameImage!917 (TokenValueInjection!11356 BalanceConc!23052 BalanceConc!23052) Unit!55228)

(assert (=> b!3641375 (= lt!1260872 (lemmaEqSameImage!917 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260891 (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871)))))))

(declare-fun lt!1260886 () Unit!55228)

(declare-fun lemmaSemiInverse!1483 (TokenValueInjection!11356 BalanceConc!23052) Unit!55228)

(assert (=> b!3641375 (= lt!1260886 (lemmaSemiInverse!1483 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260891))))

(declare-fun b!3641376 () Bool)

(declare-fun res!1475991 () Bool)

(assert (=> b!3641376 (=> res!1475991 e!2254150)))

(assert (=> b!3641376 (= res!1475991 (not (matchR!5062 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260873)))))

(declare-fun b!3641377 () Bool)

(assert (=> b!3641377 (= e!2254151 (not e!2254131))))

(declare-fun res!1475997 () Bool)

(assert (=> b!3641377 (=> res!1475997 e!2254131)))

(assert (=> b!3641377 (= res!1475997 (not (matchR!5062 (regex!5734 rule!403) lt!1260867)))))

(declare-fun ruleValid!1998 (LexerInterface!5323 Rule!11268) Bool)

(assert (=> b!3641377 (ruleValid!1998 thiss!23823 rule!403)))

(declare-fun lt!1260895 () Unit!55228)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1152 (LexerInterface!5323 Rule!11268 List!38503) Unit!55228)

(assert (=> b!3641377 (= lt!1260895 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1152 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3641378 () Bool)

(declare-fun res!1476010 () Bool)

(assert (=> b!3641378 (=> (not res!1476010) (not e!2254140))))

(assert (=> b!3641378 (= res!1476010 (contains!7534 rules!3307 rule!403))))

(assert (=> b!3641379 (= e!2254147 (and tp!1110846 tp!1110842))))

(declare-fun b!3641380 () Bool)

(assert (=> b!3641380 (= e!2254135 (contains!7533 lt!1260873 lt!1260876))))

(assert (= (and start!340098 res!1475998) b!3641364))

(assert (= (and b!3641364 res!1475993) b!3641349))

(assert (= (and b!3641349 res!1476012) b!3641378))

(assert (= (and b!3641378 res!1476010) b!3641355))

(assert (= (and b!3641355 res!1476011) b!3641370))

(assert (= (and b!3641370 res!1475995) b!3641362))

(assert (= (and b!3641362 res!1476007) b!3641363))

(assert (= (and b!3641363 res!1475994) b!3641344))

(assert (= (and b!3641344 res!1476015) b!3641360))

(assert (= (and b!3641360 res!1476005) b!3641377))

(assert (= (and b!3641377 (not res!1475997)) b!3641373))

(assert (= (and b!3641373 (not res!1476014)) b!3641361))

(assert (= (and b!3641361 (not res!1476009)) b!3641365))

(assert (= (and b!3641365 (not res!1476006)) b!3641345))

(assert (= (and b!3641345 (not res!1475992)) b!3641368))

(assert (= (and b!3641368 res!1476000) b!3641348))

(assert (= (and b!3641348 res!1476003) b!3641351))

(assert (= (and b!3641368 (not res!1475999)) b!3641376))

(assert (= (and b!3641376 (not res!1475991)) b!3641375))

(assert (= (and b!3641375 (not res!1475996)) b!3641374))

(assert (= (and b!3641374 (not res!1476004)) b!3641350))

(assert (= (and b!3641350 c!629591) b!3641352))

(assert (= (and b!3641350 (not c!629591)) b!3641372))

(assert (= (and b!3641350 (not res!1476001)) b!3641346))

(assert (= (and b!3641346 (not res!1476013)) b!3641371))

(assert (= (and b!3641371 (not res!1476002)) b!3641357))

(assert (= (and b!3641357 (not res!1476008)) b!3641380))

(assert (= b!3641367 b!3641369))

(assert (= b!3641347 b!3641367))

(assert (= (and start!340098 ((_ is Cons!38379) rules!3307)) b!3641347))

(assert (= (and start!340098 ((_ is Cons!38378) suffix!1395)) b!3641353))

(assert (= b!3641358 b!3641366))

(assert (= b!3641359 b!3641358))

(assert (= start!340098 b!3641359))

(assert (= b!3641356 b!3641379))

(assert (= start!340098 b!3641356))

(assert (= b!3641343 b!3641354))

(assert (= start!340098 b!3641343))

(declare-fun m!4144403 () Bool)

(assert (=> b!3641374 m!4144403))

(declare-fun m!4144405 () Bool)

(assert (=> b!3641374 m!4144405))

(declare-fun m!4144407 () Bool)

(assert (=> b!3641374 m!4144407))

(declare-fun m!4144409 () Bool)

(assert (=> b!3641374 m!4144409))

(declare-fun m!4144411 () Bool)

(assert (=> b!3641374 m!4144411))

(declare-fun m!4144413 () Bool)

(assert (=> b!3641374 m!4144413))

(assert (=> b!3641374 m!4144413))

(declare-fun m!4144415 () Bool)

(assert (=> b!3641374 m!4144415))

(declare-fun m!4144417 () Bool)

(assert (=> b!3641361 m!4144417))

(declare-fun m!4144419 () Bool)

(assert (=> b!3641361 m!4144419))

(declare-fun m!4144421 () Bool)

(assert (=> b!3641361 m!4144421))

(declare-fun m!4144423 () Bool)

(assert (=> b!3641352 m!4144423))

(declare-fun m!4144425 () Bool)

(assert (=> b!3641365 m!4144425))

(assert (=> b!3641365 m!4144425))

(declare-fun m!4144427 () Bool)

(assert (=> b!3641365 m!4144427))

(declare-fun m!4144429 () Bool)

(assert (=> b!3641373 m!4144429))

(declare-fun m!4144431 () Bool)

(assert (=> b!3641350 m!4144431))

(declare-fun m!4144433 () Bool)

(assert (=> b!3641350 m!4144433))

(declare-fun m!4144435 () Bool)

(assert (=> b!3641357 m!4144435))

(declare-fun m!4144437 () Bool)

(assert (=> b!3641357 m!4144437))

(assert (=> b!3641357 m!4144437))

(declare-fun m!4144439 () Bool)

(assert (=> b!3641357 m!4144439))

(declare-fun m!4144441 () Bool)

(assert (=> b!3641357 m!4144441))

(declare-fun m!4144443 () Bool)

(assert (=> b!3641378 m!4144443))

(declare-fun m!4144445 () Bool)

(assert (=> b!3641355 m!4144445))

(declare-fun m!4144447 () Bool)

(assert (=> b!3641358 m!4144447))

(declare-fun m!4144449 () Bool)

(assert (=> b!3641358 m!4144449))

(declare-fun m!4144451 () Bool)

(assert (=> b!3641376 m!4144451))

(declare-fun m!4144453 () Bool)

(assert (=> b!3641377 m!4144453))

(declare-fun m!4144455 () Bool)

(assert (=> b!3641377 m!4144455))

(declare-fun m!4144457 () Bool)

(assert (=> b!3641377 m!4144457))

(declare-fun m!4144459 () Bool)

(assert (=> b!3641363 m!4144459))

(declare-fun m!4144461 () Bool)

(assert (=> b!3641356 m!4144461))

(declare-fun m!4144463 () Bool)

(assert (=> b!3641356 m!4144463))

(declare-fun m!4144465 () Bool)

(assert (=> b!3641375 m!4144465))

(declare-fun m!4144467 () Bool)

(assert (=> b!3641375 m!4144467))

(declare-fun m!4144469 () Bool)

(assert (=> b!3641375 m!4144469))

(declare-fun m!4144471 () Bool)

(assert (=> b!3641375 m!4144471))

(declare-fun m!4144473 () Bool)

(assert (=> b!3641375 m!4144473))

(declare-fun m!4144475 () Bool)

(assert (=> b!3641375 m!4144475))

(assert (=> b!3641375 m!4144471))

(declare-fun m!4144477 () Bool)

(assert (=> b!3641349 m!4144477))

(declare-fun m!4144479 () Bool)

(assert (=> b!3641346 m!4144479))

(declare-fun m!4144481 () Bool)

(assert (=> b!3641344 m!4144481))

(declare-fun m!4144483 () Bool)

(assert (=> b!3641367 m!4144483))

(declare-fun m!4144485 () Bool)

(assert (=> b!3641367 m!4144485))

(declare-fun m!4144487 () Bool)

(assert (=> b!3641348 m!4144487))

(assert (=> b!3641348 m!4144487))

(declare-fun m!4144489 () Bool)

(assert (=> b!3641348 m!4144489))

(assert (=> b!3641348 m!4144489))

(declare-fun m!4144491 () Bool)

(assert (=> b!3641348 m!4144491))

(declare-fun m!4144493 () Bool)

(assert (=> b!3641348 m!4144493))

(declare-fun m!4144495 () Bool)

(assert (=> b!3641345 m!4144495))

(declare-fun m!4144497 () Bool)

(assert (=> b!3641343 m!4144497))

(declare-fun m!4144499 () Bool)

(assert (=> b!3641343 m!4144499))

(declare-fun m!4144501 () Bool)

(assert (=> start!340098 m!4144501))

(declare-fun m!4144503 () Bool)

(assert (=> b!3641359 m!4144503))

(declare-fun m!4144505 () Bool)

(assert (=> b!3641380 m!4144505))

(declare-fun m!4144507 () Bool)

(assert (=> b!3641368 m!4144507))

(declare-fun m!4144509 () Bool)

(assert (=> b!3641368 m!4144509))

(assert (=> b!3641368 m!4144487))

(declare-fun m!4144511 () Bool)

(assert (=> b!3641368 m!4144511))

(declare-fun m!4144513 () Bool)

(assert (=> b!3641368 m!4144513))

(declare-fun m!4144515 () Bool)

(assert (=> b!3641368 m!4144515))

(declare-fun m!4144517 () Bool)

(assert (=> b!3641368 m!4144517))

(declare-fun m!4144519 () Bool)

(assert (=> b!3641368 m!4144519))

(declare-fun m!4144521 () Bool)

(assert (=> b!3641368 m!4144521))

(declare-fun m!4144523 () Bool)

(assert (=> b!3641368 m!4144523))

(declare-fun m!4144525 () Bool)

(assert (=> b!3641368 m!4144525))

(declare-fun m!4144527 () Bool)

(assert (=> b!3641368 m!4144527))

(declare-fun m!4144529 () Bool)

(assert (=> b!3641368 m!4144529))

(declare-fun m!4144531 () Bool)

(assert (=> b!3641368 m!4144531))

(declare-fun m!4144533 () Bool)

(assert (=> b!3641368 m!4144533))

(assert (=> b!3641368 m!4144523))

(declare-fun m!4144535 () Bool)

(assert (=> b!3641364 m!4144535))

(declare-fun m!4144537 () Bool)

(assert (=> b!3641362 m!4144537))

(declare-fun m!4144539 () Bool)

(assert (=> b!3641362 m!4144539))

(declare-fun m!4144541 () Bool)

(assert (=> b!3641362 m!4144541))

(assert (=> b!3641362 m!4144541))

(declare-fun m!4144543 () Bool)

(assert (=> b!3641362 m!4144543))

(check-sat (not b!3641346) (not b!3641375) (not b!3641373) (not b_next!96187) (not b!3641359) (not b!3641362) (not b!3641364) (not b!3641380) (not b!3641377) (not b!3641352) (not b!3641358) (not b!3641355) (not b_next!96185) (not b_next!96181) (not b!3641361) (not b!3641348) b_and!268445 (not b!3641365) (not b!3641349) (not b!3641350) (not b!3641374) (not b!3641343) b_and!268447 (not b!3641363) (not b!3641345) tp_is_empty!18069 b_and!268455 b_and!268457 (not start!340098) (not b_next!96177) (not b!3641357) (not b!3641378) (not b_next!96189) (not b!3641344) (not b_next!96191) (not b!3641376) b_and!268451 (not b!3641347) (not b_next!96183) (not b!3641356) (not b_next!96179) (not b!3641353) b_and!268443 (not b!3641368) b_and!268449 b_and!268453 (not b!3641367))
(check-sat b_and!268445 b_and!268447 (not b_next!96187) (not b_next!96177) (not b_next!96189) b_and!268443 (not b_next!96185) (not b_next!96181) b_and!268455 b_and!268457 (not b_next!96191) b_and!268451 (not b_next!96183) (not b_next!96179) b_and!268449 b_and!268453)
(get-model)

(declare-fun d!1070600 () Bool)

(declare-fun fromListB!1978 (List!38502) BalanceConc!23052)

(assert (=> d!1070600 (= (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871))) (fromListB!1978 (originalCharacters!6448 (_1!22258 lt!1260871))))))

(declare-fun bs!571958 () Bool)

(assert (= bs!571958 d!1070600))

(declare-fun m!4144549 () Bool)

(assert (=> bs!571958 m!4144549))

(assert (=> b!3641375 d!1070600))

(declare-fun d!1070608 () Bool)

(assert (=> d!1070608 (= (size!29291 (_1!22258 lt!1260871)) (size!29292 (originalCharacters!6448 (_1!22258 lt!1260871))))))

(declare-fun Unit!55232 () Unit!55228)

(assert (=> d!1070608 (= (lemmaCharactersSize!779 (_1!22258 lt!1260871)) Unit!55232)))

(declare-fun bs!571960 () Bool)

(assert (= bs!571960 d!1070608))

(declare-fun m!4144553 () Bool)

(assert (=> bs!571960 m!4144553))

(assert (=> b!3641375 d!1070608))

(declare-fun b!3641632 () Bool)

(declare-fun e!2254299 () Bool)

(assert (=> b!3641632 (= e!2254299 true)))

(declare-fun d!1070612 () Bool)

(assert (=> d!1070612 e!2254299))

(assert (= d!1070612 b!3641632))

(declare-fun order!21093 () Int)

(declare-fun lambda!124394 () Int)

(declare-fun order!21091 () Int)

(declare-fun dynLambda!16699 (Int Int) Int)

(declare-fun dynLambda!16700 (Int Int) Int)

(assert (=> b!3641632 (< (dynLambda!16699 order!21091 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) (dynLambda!16700 order!21093 lambda!124394))))

(declare-fun order!21095 () Int)

(declare-fun dynLambda!16701 (Int Int) Int)

(assert (=> b!3641632 (< (dynLambda!16701 order!21095 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) (dynLambda!16700 order!21093 lambda!124394))))

(declare-fun dynLambda!16702 (Int BalanceConc!23052) TokenValue!5964)

(assert (=> d!1070612 (= (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260891) (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871)))))))

(declare-fun lt!1261025 () Unit!55228)

(declare-fun Forall2of!357 (Int BalanceConc!23052 BalanceConc!23052) Unit!55228)

(assert (=> d!1070612 (= lt!1261025 (Forall2of!357 lambda!124394 lt!1260891 (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871)))))))

(assert (=> d!1070612 (= (list!14208 lt!1260891) (list!14208 (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871)))))))

(assert (=> d!1070612 (= (lemmaEqSameImage!917 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260891 (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871)))) lt!1261025)))

(declare-fun b_lambda!107947 () Bool)

(assert (=> (not b_lambda!107947) (not d!1070612)))

(declare-fun tb!209797 () Bool)

(declare-fun t!296544 () Bool)

(assert (=> (and b!3641366 (= (toValue!8026 (transformation!5734 (rule!8518 token!511))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296544) tb!209797))

(declare-fun result!255520 () Bool)

(assert (=> tb!209797 (= result!255520 (inv!21 (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260891)))))

(declare-fun m!4144831 () Bool)

(assert (=> tb!209797 m!4144831))

(assert (=> d!1070612 t!296544))

(declare-fun b_and!268475 () Bool)

(assert (= b_and!268443 (and (=> t!296544 result!255520) b_and!268475)))

(declare-fun t!296546 () Bool)

(declare-fun tb!209799 () Bool)

(assert (=> (and b!3641369 (= (toValue!8026 (transformation!5734 (h!43799 rules!3307))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296546) tb!209799))

(declare-fun result!255524 () Bool)

(assert (= result!255524 result!255520))

(assert (=> d!1070612 t!296546))

(declare-fun b_and!268477 () Bool)

(assert (= b_and!268447 (and (=> t!296546 result!255524) b_and!268477)))

(declare-fun t!296548 () Bool)

(declare-fun tb!209801 () Bool)

(assert (=> (and b!3641379 (= (toValue!8026 (transformation!5734 rule!403)) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296548) tb!209801))

(declare-fun result!255526 () Bool)

(assert (= result!255526 result!255520))

(assert (=> d!1070612 t!296548))

(declare-fun b_and!268479 () Bool)

(assert (= b_and!268451 (and (=> t!296548 result!255526) b_and!268479)))

(declare-fun tb!209803 () Bool)

(declare-fun t!296550 () Bool)

(assert (=> (and b!3641354 (= (toValue!8026 (transformation!5734 anOtherTypeRule!33)) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296550) tb!209803))

(declare-fun result!255528 () Bool)

(assert (= result!255528 result!255520))

(assert (=> d!1070612 t!296550))

(declare-fun b_and!268481 () Bool)

(assert (= b_and!268455 (and (=> t!296550 result!255528) b_and!268481)))

(declare-fun b_lambda!107949 () Bool)

(assert (=> (not b_lambda!107949) (not d!1070612)))

(declare-fun tb!209805 () Bool)

(declare-fun t!296552 () Bool)

(assert (=> (and b!3641366 (= (toValue!8026 (transformation!5734 (rule!8518 token!511))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296552) tb!209805))

(declare-fun result!255530 () Bool)

(assert (=> tb!209805 (= result!255530 (inv!21 (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (seqFromList!4283 (originalCharacters!6448 (_1!22258 lt!1260871))))))))

(declare-fun m!4144833 () Bool)

(assert (=> tb!209805 m!4144833))

(assert (=> d!1070612 t!296552))

(declare-fun b_and!268483 () Bool)

(assert (= b_and!268475 (and (=> t!296552 result!255530) b_and!268483)))

(declare-fun tb!209807 () Bool)

(declare-fun t!296554 () Bool)

(assert (=> (and b!3641369 (= (toValue!8026 (transformation!5734 (h!43799 rules!3307))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296554) tb!209807))

(declare-fun result!255532 () Bool)

(assert (= result!255532 result!255530))

(assert (=> d!1070612 t!296554))

(declare-fun b_and!268485 () Bool)

(assert (= b_and!268477 (and (=> t!296554 result!255532) b_and!268485)))

(declare-fun t!296556 () Bool)

(declare-fun tb!209809 () Bool)

(assert (=> (and b!3641379 (= (toValue!8026 (transformation!5734 rule!403)) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296556) tb!209809))

(declare-fun result!255534 () Bool)

(assert (= result!255534 result!255530))

(assert (=> d!1070612 t!296556))

(declare-fun b_and!268487 () Bool)

(assert (= b_and!268479 (and (=> t!296556 result!255534) b_and!268487)))

(declare-fun tb!209811 () Bool)

(declare-fun t!296558 () Bool)

(assert (=> (and b!3641354 (= (toValue!8026 (transformation!5734 anOtherTypeRule!33)) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296558) tb!209811))

(declare-fun result!255536 () Bool)

(assert (= result!255536 result!255530))

(assert (=> d!1070612 t!296558))

(declare-fun b_and!268489 () Bool)

(assert (= b_and!268481 (and (=> t!296558 result!255536) b_and!268489)))

(assert (=> d!1070612 m!4144471))

(declare-fun m!4144847 () Bool)

(assert (=> d!1070612 m!4144847))

(assert (=> d!1070612 m!4144471))

(declare-fun m!4144851 () Bool)

(assert (=> d!1070612 m!4144851))

(assert (=> d!1070612 m!4144471))

(declare-fun m!4144855 () Bool)

(assert (=> d!1070612 m!4144855))

(declare-fun m!4144857 () Bool)

(assert (=> d!1070612 m!4144857))

(assert (=> d!1070612 m!4144527))

(assert (=> b!3641375 d!1070612))

(declare-fun d!1070688 () Bool)

(declare-fun lt!1261033 () Int)

(assert (=> d!1070688 (= lt!1261033 (size!29292 (list!14208 lt!1260891)))))

(declare-fun size!29294 (Conc!11719) Int)

(assert (=> d!1070688 (= lt!1261033 (size!29294 (c!629593 lt!1260891)))))

(assert (=> d!1070688 (= (size!29293 lt!1260891) lt!1261033)))

(declare-fun bs!571967 () Bool)

(assert (= bs!571967 d!1070688))

(assert (=> bs!571967 m!4144527))

(assert (=> bs!571967 m!4144527))

(declare-fun m!4144887 () Bool)

(assert (=> bs!571967 m!4144887))

(declare-fun m!4144889 () Bool)

(assert (=> bs!571967 m!4144889))

(assert (=> b!3641375 d!1070688))

(declare-fun b!3641650 () Bool)

(declare-fun e!2254313 () Bool)

(assert (=> b!3641650 (= e!2254313 true)))

(declare-fun d!1070692 () Bool)

(assert (=> d!1070692 e!2254313))

(assert (= d!1070692 b!3641650))

(declare-fun order!21097 () Int)

(declare-fun lambda!124397 () Int)

(declare-fun dynLambda!16703 (Int Int) Int)

(assert (=> b!3641650 (< (dynLambda!16699 order!21091 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) (dynLambda!16703 order!21097 lambda!124397))))

(assert (=> b!3641650 (< (dynLambda!16701 order!21095 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) (dynLambda!16703 order!21097 lambda!124397))))

(declare-fun dynLambda!16704 (Int TokenValue!5964) BalanceConc!23052)

(assert (=> d!1070692 (= (list!14208 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260891))) (list!14208 lt!1260891))))

(declare-fun lt!1261036 () Unit!55228)

(declare-fun ForallOf!699 (Int BalanceConc!23052) Unit!55228)

(assert (=> d!1070692 (= lt!1261036 (ForallOf!699 lambda!124397 lt!1260891))))

(assert (=> d!1070692 (= (lemmaSemiInverse!1483 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260891) lt!1261036)))

(declare-fun b_lambda!107953 () Bool)

(assert (=> (not b_lambda!107953) (not d!1070692)))

(declare-fun tb!209821 () Bool)

(declare-fun t!296568 () Bool)

(assert (=> (and b!3641366 (= (toChars!7885 (transformation!5734 (rule!8518 token!511))) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296568) tb!209821))

(declare-fun e!2254316 () Bool)

(declare-fun tp!1110853 () Bool)

(declare-fun b!3641655 () Bool)

(declare-fun inv!51817 (Conc!11719) Bool)

(assert (=> b!3641655 (= e!2254316 (and (inv!51817 (c!629593 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260891)))) tp!1110853))))

(declare-fun result!255548 () Bool)

(declare-fun inv!51818 (BalanceConc!23052) Bool)

(assert (=> tb!209821 (= result!255548 (and (inv!51818 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260891))) e!2254316))))

(assert (= tb!209821 b!3641655))

(declare-fun m!4144895 () Bool)

(assert (=> b!3641655 m!4144895))

(declare-fun m!4144897 () Bool)

(assert (=> tb!209821 m!4144897))

(assert (=> d!1070692 t!296568))

(declare-fun b_and!268499 () Bool)

(assert (= b_and!268445 (and (=> t!296568 result!255548) b_and!268499)))

(declare-fun tb!209823 () Bool)

(declare-fun t!296570 () Bool)

(assert (=> (and b!3641369 (= (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296570) tb!209823))

(declare-fun result!255552 () Bool)

(assert (= result!255552 result!255548))

(assert (=> d!1070692 t!296570))

(declare-fun b_and!268501 () Bool)

(assert (= b_and!268449 (and (=> t!296570 result!255552) b_and!268501)))

(declare-fun t!296572 () Bool)

(declare-fun tb!209825 () Bool)

(assert (=> (and b!3641379 (= (toChars!7885 (transformation!5734 rule!403)) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296572) tb!209825))

(declare-fun result!255554 () Bool)

(assert (= result!255554 result!255548))

(assert (=> d!1070692 t!296572))

(declare-fun b_and!268503 () Bool)

(assert (= b_and!268453 (and (=> t!296572 result!255554) b_and!268503)))

(declare-fun t!296574 () Bool)

(declare-fun tb!209827 () Bool)

(assert (=> (and b!3641354 (= (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296574) tb!209827))

(declare-fun result!255556 () Bool)

(assert (= result!255556 result!255548))

(assert (=> d!1070692 t!296574))

(declare-fun b_and!268505 () Bool)

(assert (= b_and!268457 (and (=> t!296574 result!255556) b_and!268505)))

(declare-fun b_lambda!107955 () Bool)

(assert (=> (not b_lambda!107955) (not d!1070692)))

(assert (=> d!1070692 t!296544))

(declare-fun b_and!268507 () Bool)

(assert (= b_and!268483 (and (=> t!296544 result!255520) b_and!268507)))

(assert (=> d!1070692 t!296546))

(declare-fun b_and!268509 () Bool)

(assert (= b_and!268485 (and (=> t!296546 result!255524) b_and!268509)))

(assert (=> d!1070692 t!296548))

(declare-fun b_and!268511 () Bool)

(assert (= b_and!268487 (and (=> t!296548 result!255526) b_and!268511)))

(assert (=> d!1070692 t!296550))

(declare-fun b_and!268513 () Bool)

(assert (= b_and!268489 (and (=> t!296550 result!255528) b_and!268513)))

(declare-fun m!4144899 () Bool)

(assert (=> d!1070692 m!4144899))

(declare-fun m!4144901 () Bool)

(assert (=> d!1070692 m!4144901))

(declare-fun m!4144903 () Bool)

(assert (=> d!1070692 m!4144903))

(assert (=> d!1070692 m!4144857))

(assert (=> d!1070692 m!4144899))

(assert (=> d!1070692 m!4144857))

(assert (=> d!1070692 m!4144527))

(assert (=> b!3641375 d!1070692))

(declare-fun d!1070696 () Bool)

(assert (=> d!1070696 (= (apply!9236 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260891) (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260891))))

(declare-fun b_lambda!107957 () Bool)

(assert (=> (not b_lambda!107957) (not d!1070696)))

(assert (=> d!1070696 t!296544))

(declare-fun b_and!268515 () Bool)

(assert (= b_and!268507 (and (=> t!296544 result!255520) b_and!268515)))

(assert (=> d!1070696 t!296546))

(declare-fun b_and!268517 () Bool)

(assert (= b_and!268509 (and (=> t!296546 result!255524) b_and!268517)))

(assert (=> d!1070696 t!296548))

(declare-fun b_and!268519 () Bool)

(assert (= b_and!268511 (and (=> t!296548 result!255526) b_and!268519)))

(assert (=> d!1070696 t!296550))

(declare-fun b_and!268521 () Bool)

(assert (= b_and!268513 (and (=> t!296550 result!255528) b_and!268521)))

(assert (=> d!1070696 m!4144857))

(assert (=> b!3641375 d!1070696))

(declare-fun d!1070698 () Bool)

(assert (=> d!1070698 (= (maxPrefixOneRule!1995 thiss!23823 (rule!8518 (_1!22258 lt!1260871)) lt!1260870) (Some!8096 (tuple2!38249 (Token!10835 (apply!9236 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) (seqFromList!4283 lt!1260873)) (rule!8518 (_1!22258 lt!1260871)) (size!29292 lt!1260873) lt!1260873) (_2!22258 lt!1260871))))))

(declare-fun lt!1261049 () Unit!55228)

(declare-fun choose!21415 (LexerInterface!5323 List!38503 List!38502 List!38502 List!38502 Rule!11268) Unit!55228)

(assert (=> d!1070698 (= lt!1261049 (choose!21415 thiss!23823 rules!3307 lt!1260873 lt!1260870 (_2!22258 lt!1260871) (rule!8518 (_1!22258 lt!1260871))))))

(assert (=> d!1070698 (not (isEmpty!22725 rules!3307))))

(assert (=> d!1070698 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1051 thiss!23823 rules!3307 lt!1260873 lt!1260870 (_2!22258 lt!1260871) (rule!8518 (_1!22258 lt!1260871))) lt!1261049)))

(declare-fun bs!571971 () Bool)

(assert (= bs!571971 d!1070698))

(assert (=> bs!571971 m!4144411))

(declare-fun m!4144927 () Bool)

(assert (=> bs!571971 m!4144927))

(assert (=> bs!571971 m!4144403))

(assert (=> bs!571971 m!4144413))

(assert (=> bs!571971 m!4144413))

(assert (=> bs!571971 m!4144415))

(assert (=> bs!571971 m!4144535))

(assert (=> b!3641374 d!1070698))

(declare-fun d!1070714 () Bool)

(assert (=> d!1070714 (= (_2!22258 lt!1260871) lt!1260866)))

(declare-fun lt!1261055 () Unit!55228)

(declare-fun choose!21416 (List!38502 List!38502 List!38502 List!38502 List!38502) Unit!55228)

(assert (=> d!1070714 (= lt!1261055 (choose!21416 lt!1260873 (_2!22258 lt!1260871) lt!1260873 lt!1260866 lt!1260870))))

(assert (=> d!1070714 (isPrefix!3097 lt!1260873 lt!1260870)))

(assert (=> d!1070714 (= (lemmaSamePrefixThenSameSuffix!1424 lt!1260873 (_2!22258 lt!1260871) lt!1260873 lt!1260866 lt!1260870) lt!1261055)))

(declare-fun bs!571973 () Bool)

(assert (= bs!571973 d!1070714))

(declare-fun m!4144931 () Bool)

(assert (=> bs!571973 m!4144931))

(assert (=> bs!571973 m!4144533))

(assert (=> b!3641374 d!1070714))

(declare-fun d!1070720 () Bool)

(declare-fun e!2254391 () Bool)

(assert (=> d!1070720 e!2254391))

(declare-fun res!1476247 () Bool)

(assert (=> d!1070720 (=> res!1476247 e!2254391)))

(declare-fun lt!1261082 () Option!8097)

(declare-fun isEmpty!22727 (Option!8097) Bool)

(assert (=> d!1070720 (= res!1476247 (isEmpty!22727 lt!1261082))))

(declare-fun e!2254393 () Option!8097)

(assert (=> d!1070720 (= lt!1261082 e!2254393)))

(declare-fun c!629673 () Bool)

(declare-datatypes ((tuple2!38250 0))(
  ( (tuple2!38251 (_1!22259 List!38502) (_2!22259 List!38502)) )
))
(declare-fun lt!1261083 () tuple2!38250)

(assert (=> d!1070720 (= c!629673 (isEmpty!22724 (_1!22259 lt!1261083)))))

(declare-fun findLongestMatch!953 (Regex!10493 List!38502) tuple2!38250)

(assert (=> d!1070720 (= lt!1261083 (findLongestMatch!953 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260870))))

(assert (=> d!1070720 (ruleValid!1998 thiss!23823 (rule!8518 (_1!22258 lt!1260871)))))

(assert (=> d!1070720 (= (maxPrefixOneRule!1995 thiss!23823 (rule!8518 (_1!22258 lt!1260871)) lt!1260870) lt!1261082)))

(declare-fun b!3641776 () Bool)

(assert (=> b!3641776 (= e!2254393 None!8096)))

(declare-fun b!3641777 () Bool)

(declare-fun res!1476246 () Bool)

(declare-fun e!2254392 () Bool)

(assert (=> b!3641777 (=> (not res!1476246) (not e!2254392))))

(assert (=> b!3641777 (= res!1476246 (= (value!183879 (_1!22258 (get!12574 lt!1261082))) (apply!9236 (transformation!5734 (rule!8518 (_1!22258 (get!12574 lt!1261082)))) (seqFromList!4283 (originalCharacters!6448 (_1!22258 (get!12574 lt!1261082)))))))))

(declare-fun b!3641778 () Bool)

(declare-fun res!1476252 () Bool)

(assert (=> b!3641778 (=> (not res!1476252) (not e!2254392))))

(assert (=> b!3641778 (= res!1476252 (= (++!9550 (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261082)))) (_2!22258 (get!12574 lt!1261082))) lt!1260870))))

(declare-fun b!3641779 () Bool)

(declare-fun e!2254394 () Bool)

(declare-fun findLongestMatchInner!1038 (Regex!10493 List!38502 Int List!38502 List!38502 Int) tuple2!38250)

(assert (=> b!3641779 (= e!2254394 (matchR!5062 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) (_1!22259 (findLongestMatchInner!1038 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) Nil!38378 (size!29292 Nil!38378) lt!1260870 lt!1260870 (size!29292 lt!1260870)))))))

(declare-fun b!3641780 () Bool)

(assert (=> b!3641780 (= e!2254391 e!2254392)))

(declare-fun res!1476251 () Bool)

(assert (=> b!3641780 (=> (not res!1476251) (not e!2254392))))

(assert (=> b!3641780 (= res!1476251 (matchR!5062 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261082))))))))

(declare-fun b!3641781 () Bool)

(assert (=> b!3641781 (= e!2254392 (= (size!29291 (_1!22258 (get!12574 lt!1261082))) (size!29292 (originalCharacters!6448 (_1!22258 (get!12574 lt!1261082))))))))

(declare-fun b!3641782 () Bool)

(assert (=> b!3641782 (= e!2254393 (Some!8096 (tuple2!38249 (Token!10835 (apply!9236 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) (seqFromList!4283 (_1!22259 lt!1261083))) (rule!8518 (_1!22258 lt!1260871)) (size!29293 (seqFromList!4283 (_1!22259 lt!1261083))) (_1!22259 lt!1261083)) (_2!22259 lt!1261083))))))

(declare-fun lt!1261080 () Unit!55228)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1011 (Regex!10493 List!38502) Unit!55228)

(assert (=> b!3641782 (= lt!1261080 (longestMatchIsAcceptedByMatchOrIsEmpty!1011 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260870))))

(declare-fun res!1476248 () Bool)

(assert (=> b!3641782 (= res!1476248 (isEmpty!22724 (_1!22259 (findLongestMatchInner!1038 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) Nil!38378 (size!29292 Nil!38378) lt!1260870 lt!1260870 (size!29292 lt!1260870)))))))

(assert (=> b!3641782 (=> res!1476248 e!2254394)))

(assert (=> b!3641782 e!2254394))

(declare-fun lt!1261081 () Unit!55228)

(assert (=> b!3641782 (= lt!1261081 lt!1261080)))

(declare-fun lt!1261084 () Unit!55228)

(assert (=> b!3641782 (= lt!1261084 (lemmaSemiInverse!1483 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) (seqFromList!4283 (_1!22259 lt!1261083))))))

(declare-fun b!3641783 () Bool)

(declare-fun res!1476250 () Bool)

(assert (=> b!3641783 (=> (not res!1476250) (not e!2254392))))

(assert (=> b!3641783 (= res!1476250 (< (size!29292 (_2!22258 (get!12574 lt!1261082))) (size!29292 lt!1260870)))))

(declare-fun b!3641784 () Bool)

(declare-fun res!1476249 () Bool)

(assert (=> b!3641784 (=> (not res!1476249) (not e!2254392))))

(assert (=> b!3641784 (= res!1476249 (= (rule!8518 (_1!22258 (get!12574 lt!1261082))) (rule!8518 (_1!22258 lt!1260871))))))

(assert (= (and d!1070720 c!629673) b!3641776))

(assert (= (and d!1070720 (not c!629673)) b!3641782))

(assert (= (and b!3641782 (not res!1476248)) b!3641779))

(assert (= (and d!1070720 (not res!1476247)) b!3641780))

(assert (= (and b!3641780 res!1476251) b!3641778))

(assert (= (and b!3641778 res!1476252) b!3641783))

(assert (= (and b!3641783 res!1476250) b!3641784))

(assert (= (and b!3641784 res!1476249) b!3641777))

(assert (= (and b!3641777 res!1476246) b!3641781))

(declare-fun m!4145003 () Bool)

(assert (=> b!3641783 m!4145003))

(declare-fun m!4145005 () Bool)

(assert (=> b!3641783 m!4145005))

(declare-fun m!4145007 () Bool)

(assert (=> b!3641783 m!4145007))

(declare-fun m!4145009 () Bool)

(assert (=> b!3641782 m!4145009))

(declare-fun m!4145011 () Bool)

(assert (=> b!3641782 m!4145011))

(declare-fun m!4145013 () Bool)

(assert (=> b!3641782 m!4145013))

(declare-fun m!4145015 () Bool)

(assert (=> b!3641782 m!4145015))

(assert (=> b!3641782 m!4145013))

(assert (=> b!3641782 m!4145013))

(declare-fun m!4145017 () Bool)

(assert (=> b!3641782 m!4145017))

(assert (=> b!3641782 m!4145013))

(declare-fun m!4145019 () Bool)

(assert (=> b!3641782 m!4145019))

(declare-fun m!4145021 () Bool)

(assert (=> b!3641782 m!4145021))

(assert (=> b!3641782 m!4145007))

(assert (=> b!3641782 m!4145021))

(assert (=> b!3641782 m!4145007))

(declare-fun m!4145023 () Bool)

(assert (=> b!3641782 m!4145023))

(assert (=> b!3641777 m!4145003))

(declare-fun m!4145025 () Bool)

(assert (=> b!3641777 m!4145025))

(assert (=> b!3641777 m!4145025))

(declare-fun m!4145027 () Bool)

(assert (=> b!3641777 m!4145027))

(assert (=> b!3641780 m!4145003))

(declare-fun m!4145029 () Bool)

(assert (=> b!3641780 m!4145029))

(assert (=> b!3641780 m!4145029))

(declare-fun m!4145031 () Bool)

(assert (=> b!3641780 m!4145031))

(assert (=> b!3641780 m!4145031))

(declare-fun m!4145033 () Bool)

(assert (=> b!3641780 m!4145033))

(assert (=> b!3641784 m!4145003))

(assert (=> b!3641781 m!4145003))

(declare-fun m!4145035 () Bool)

(assert (=> b!3641781 m!4145035))

(assert (=> b!3641778 m!4145003))

(assert (=> b!3641778 m!4145029))

(assert (=> b!3641778 m!4145029))

(assert (=> b!3641778 m!4145031))

(assert (=> b!3641778 m!4145031))

(declare-fun m!4145037 () Bool)

(assert (=> b!3641778 m!4145037))

(assert (=> b!3641779 m!4145021))

(assert (=> b!3641779 m!4145007))

(assert (=> b!3641779 m!4145021))

(assert (=> b!3641779 m!4145007))

(assert (=> b!3641779 m!4145023))

(declare-fun m!4145039 () Bool)

(assert (=> b!3641779 m!4145039))

(declare-fun m!4145041 () Bool)

(assert (=> d!1070720 m!4145041))

(declare-fun m!4145043 () Bool)

(assert (=> d!1070720 m!4145043))

(declare-fun m!4145045 () Bool)

(assert (=> d!1070720 m!4145045))

(declare-fun m!4145047 () Bool)

(assert (=> d!1070720 m!4145047))

(assert (=> b!3641374 d!1070720))

(declare-fun d!1070754 () Bool)

(declare-fun lt!1261087 () List!38502)

(assert (=> d!1070754 (= (++!9550 lt!1260873 lt!1261087) lt!1260870)))

(declare-fun e!2254397 () List!38502)

(assert (=> d!1070754 (= lt!1261087 e!2254397)))

(declare-fun c!629676 () Bool)

(assert (=> d!1070754 (= c!629676 ((_ is Cons!38378) lt!1260873))))

(assert (=> d!1070754 (>= (size!29292 lt!1260870) (size!29292 lt!1260873))))

(assert (=> d!1070754 (= (getSuffix!1650 lt!1260870 lt!1260873) lt!1261087)))

(declare-fun b!3641789 () Bool)

(declare-fun tail!5641 (List!38502) List!38502)

(assert (=> b!3641789 (= e!2254397 (getSuffix!1650 (tail!5641 lt!1260870) (t!296525 lt!1260873)))))

(declare-fun b!3641790 () Bool)

(assert (=> b!3641790 (= e!2254397 lt!1260870)))

(assert (= (and d!1070754 c!629676) b!3641789))

(assert (= (and d!1070754 (not c!629676)) b!3641790))

(declare-fun m!4145049 () Bool)

(assert (=> d!1070754 m!4145049))

(assert (=> d!1070754 m!4145007))

(assert (=> d!1070754 m!4144403))

(declare-fun m!4145051 () Bool)

(assert (=> b!3641789 m!4145051))

(assert (=> b!3641789 m!4145051))

(declare-fun m!4145053 () Bool)

(assert (=> b!3641789 m!4145053))

(assert (=> b!3641374 d!1070754))

(declare-fun d!1070756 () Bool)

(assert (=> d!1070756 (= (apply!9236 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))) (seqFromList!4283 lt!1260873)) (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (seqFromList!4283 lt!1260873)))))

(declare-fun b_lambda!107961 () Bool)

(assert (=> (not b_lambda!107961) (not d!1070756)))

(declare-fun tb!209829 () Bool)

(declare-fun t!296576 () Bool)

(assert (=> (and b!3641366 (= (toValue!8026 (transformation!5734 (rule!8518 token!511))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296576) tb!209829))

(declare-fun result!255558 () Bool)

(assert (=> tb!209829 (= result!255558 (inv!21 (dynLambda!16702 (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (seqFromList!4283 lt!1260873))))))

(declare-fun m!4145055 () Bool)

(assert (=> tb!209829 m!4145055))

(assert (=> d!1070756 t!296576))

(declare-fun b_and!268531 () Bool)

(assert (= b_and!268515 (and (=> t!296576 result!255558) b_and!268531)))

(declare-fun t!296578 () Bool)

(declare-fun tb!209831 () Bool)

(assert (=> (and b!3641369 (= (toValue!8026 (transformation!5734 (h!43799 rules!3307))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296578) tb!209831))

(declare-fun result!255560 () Bool)

(assert (= result!255560 result!255558))

(assert (=> d!1070756 t!296578))

(declare-fun b_and!268533 () Bool)

(assert (= b_and!268517 (and (=> t!296578 result!255560) b_and!268533)))

(declare-fun t!296580 () Bool)

(declare-fun tb!209833 () Bool)

(assert (=> (and b!3641379 (= (toValue!8026 (transformation!5734 rule!403)) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296580) tb!209833))

(declare-fun result!255562 () Bool)

(assert (= result!255562 result!255558))

(assert (=> d!1070756 t!296580))

(declare-fun b_and!268535 () Bool)

(assert (= b_and!268519 (and (=> t!296580 result!255562) b_and!268535)))

(declare-fun t!296582 () Bool)

(declare-fun tb!209835 () Bool)

(assert (=> (and b!3641354 (= (toValue!8026 (transformation!5734 anOtherTypeRule!33)) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296582) tb!209835))

(declare-fun result!255564 () Bool)

(assert (= result!255564 result!255558))

(assert (=> d!1070756 t!296582))

(declare-fun b_and!268537 () Bool)

(assert (= b_and!268521 (and (=> t!296582 result!255564) b_and!268537)))

(assert (=> d!1070756 m!4144413))

(declare-fun m!4145057 () Bool)

(assert (=> d!1070756 m!4145057))

(assert (=> b!3641374 d!1070756))

(declare-fun d!1070758 () Bool)

(assert (=> d!1070758 (= (seqFromList!4283 lt!1260873) (fromListB!1978 lt!1260873))))

(declare-fun bs!571978 () Bool)

(assert (= bs!571978 d!1070758))

(declare-fun m!4145059 () Bool)

(assert (=> bs!571978 m!4145059))

(assert (=> b!3641374 d!1070758))

(declare-fun d!1070760 () Bool)

(declare-fun lt!1261090 () Int)

(assert (=> d!1070760 (>= lt!1261090 0)))

(declare-fun e!2254401 () Int)

(assert (=> d!1070760 (= lt!1261090 e!2254401)))

(declare-fun c!629679 () Bool)

(assert (=> d!1070760 (= c!629679 ((_ is Nil!38378) lt!1260873))))

(assert (=> d!1070760 (= (size!29292 lt!1260873) lt!1261090)))

(declare-fun b!3641795 () Bool)

(assert (=> b!3641795 (= e!2254401 0)))

(declare-fun b!3641796 () Bool)

(assert (=> b!3641796 (= e!2254401 (+ 1 (size!29292 (t!296525 lt!1260873))))))

(assert (= (and d!1070760 c!629679) b!3641795))

(assert (= (and d!1070760 (not c!629679)) b!3641796))

(declare-fun m!4145061 () Bool)

(assert (=> b!3641796 m!4145061))

(assert (=> b!3641374 d!1070760))

(declare-fun b!3641825 () Bool)

(declare-fun e!2254421 () Bool)

(declare-fun e!2254420 () Bool)

(assert (=> b!3641825 (= e!2254421 e!2254420)))

(declare-fun res!1476273 () Bool)

(assert (=> b!3641825 (=> (not res!1476273) (not e!2254420))))

(declare-fun lt!1261093 () Bool)

(assert (=> b!3641825 (= res!1476273 (not lt!1261093))))

(declare-fun b!3641826 () Bool)

(declare-fun e!2254422 () Bool)

(assert (=> b!3641826 (= e!2254422 (not (= (head!7734 lt!1260873) (c!629592 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))))

(declare-fun b!3641827 () Bool)

(declare-fun res!1476276 () Bool)

(assert (=> b!3641827 (=> res!1476276 e!2254422)))

(assert (=> b!3641827 (= res!1476276 (not (isEmpty!22724 (tail!5641 lt!1260873))))))

(declare-fun b!3641828 () Bool)

(assert (=> b!3641828 (= e!2254420 e!2254422)))

(declare-fun res!1476270 () Bool)

(assert (=> b!3641828 (=> res!1476270 e!2254422)))

(declare-fun call!263245 () Bool)

(assert (=> b!3641828 (= res!1476270 call!263245)))

(declare-fun b!3641829 () Bool)

(declare-fun e!2254419 () Bool)

(declare-fun e!2254418 () Bool)

(assert (=> b!3641829 (= e!2254419 e!2254418)))

(declare-fun c!629687 () Bool)

(assert (=> b!3641829 (= c!629687 ((_ is EmptyLang!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3641830 () Bool)

(declare-fun e!2254417 () Bool)

(assert (=> b!3641830 (= e!2254417 (= (head!7734 lt!1260873) (c!629592 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))

(declare-fun b!3641831 () Bool)

(assert (=> b!3641831 (= e!2254419 (= lt!1261093 call!263245))))

(declare-fun b!3641832 () Bool)

(declare-fun res!1476271 () Bool)

(assert (=> b!3641832 (=> res!1476271 e!2254421)))

(assert (=> b!3641832 (= res!1476271 e!2254417)))

(declare-fun res!1476274 () Bool)

(assert (=> b!3641832 (=> (not res!1476274) (not e!2254417))))

(assert (=> b!3641832 (= res!1476274 lt!1261093)))

(declare-fun d!1070762 () Bool)

(assert (=> d!1070762 e!2254419))

(declare-fun c!629688 () Bool)

(assert (=> d!1070762 (= c!629688 ((_ is EmptyExpr!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun e!2254416 () Bool)

(assert (=> d!1070762 (= lt!1261093 e!2254416)))

(declare-fun c!629686 () Bool)

(assert (=> d!1070762 (= c!629686 (isEmpty!22724 lt!1260873))))

(assert (=> d!1070762 (validRegex!4805 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))

(assert (=> d!1070762 (= (matchR!5062 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) lt!1260873) lt!1261093)))

(declare-fun b!3641833 () Bool)

(declare-fun res!1476272 () Bool)

(assert (=> b!3641833 (=> (not res!1476272) (not e!2254417))))

(assert (=> b!3641833 (= res!1476272 (not call!263245))))

(declare-fun b!3641834 () Bool)

(declare-fun res!1476275 () Bool)

(assert (=> b!3641834 (=> res!1476275 e!2254421)))

(assert (=> b!3641834 (= res!1476275 (not ((_ is ElementMatch!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))

(assert (=> b!3641834 (= e!2254418 e!2254421)))

(declare-fun b!3641835 () Bool)

(declare-fun nullable!3643 (Regex!10493) Bool)

(assert (=> b!3641835 (= e!2254416 (nullable!3643 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3641836 () Bool)

(declare-fun derivativeStep!3192 (Regex!10493 C!21172) Regex!10493)

(assert (=> b!3641836 (= e!2254416 (matchR!5062 (derivativeStep!3192 (regex!5734 (rule!8518 (_1!22258 lt!1260871))) (head!7734 lt!1260873)) (tail!5641 lt!1260873)))))

(declare-fun b!3641837 () Bool)

(assert (=> b!3641837 (= e!2254418 (not lt!1261093))))

(declare-fun bm!263240 () Bool)

(assert (=> bm!263240 (= call!263245 (isEmpty!22724 lt!1260873))))

(declare-fun b!3641838 () Bool)

(declare-fun res!1476269 () Bool)

(assert (=> b!3641838 (=> (not res!1476269) (not e!2254417))))

(assert (=> b!3641838 (= res!1476269 (isEmpty!22724 (tail!5641 lt!1260873)))))

(assert (= (and d!1070762 c!629686) b!3641835))

(assert (= (and d!1070762 (not c!629686)) b!3641836))

(assert (= (and d!1070762 c!629688) b!3641831))

(assert (= (and d!1070762 (not c!629688)) b!3641829))

(assert (= (and b!3641829 c!629687) b!3641837))

(assert (= (and b!3641829 (not c!629687)) b!3641834))

(assert (= (and b!3641834 (not res!1476275)) b!3641832))

(assert (= (and b!3641832 res!1476274) b!3641833))

(assert (= (and b!3641833 res!1476272) b!3641838))

(assert (= (and b!3641838 res!1476269) b!3641830))

(assert (= (and b!3641832 (not res!1476271)) b!3641825))

(assert (= (and b!3641825 res!1476273) b!3641828))

(assert (= (and b!3641828 (not res!1476270)) b!3641827))

(assert (= (and b!3641827 (not res!1476276)) b!3641826))

(assert (= (or b!3641831 b!3641828 b!3641833) bm!263240))

(declare-fun m!4145063 () Bool)

(assert (=> b!3641835 m!4145063))

(declare-fun m!4145065 () Bool)

(assert (=> b!3641827 m!4145065))

(assert (=> b!3641827 m!4145065))

(declare-fun m!4145067 () Bool)

(assert (=> b!3641827 m!4145067))

(declare-fun m!4145069 () Bool)

(assert (=> d!1070762 m!4145069))

(assert (=> d!1070762 m!4144435))

(assert (=> b!3641826 m!4144433))

(assert (=> b!3641836 m!4144433))

(assert (=> b!3641836 m!4144433))

(declare-fun m!4145071 () Bool)

(assert (=> b!3641836 m!4145071))

(assert (=> b!3641836 m!4145065))

(assert (=> b!3641836 m!4145071))

(assert (=> b!3641836 m!4145065))

(declare-fun m!4145073 () Bool)

(assert (=> b!3641836 m!4145073))

(assert (=> b!3641838 m!4145065))

(assert (=> b!3641838 m!4145065))

(assert (=> b!3641838 m!4145067))

(assert (=> bm!263240 m!4145069))

(assert (=> b!3641830 m!4144433))

(assert (=> b!3641376 d!1070762))

(declare-fun d!1070764 () Bool)

(declare-fun lt!1261096 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5525 (List!38503) (InoxSet Rule!11268))

(assert (=> d!1070764 (= lt!1261096 (select (content!5525 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2254428 () Bool)

(assert (=> d!1070764 (= lt!1261096 e!2254428)))

(declare-fun res!1476282 () Bool)

(assert (=> d!1070764 (=> (not res!1476282) (not e!2254428))))

(assert (=> d!1070764 (= res!1476282 ((_ is Cons!38379) rules!3307))))

(assert (=> d!1070764 (= (contains!7534 rules!3307 anOtherTypeRule!33) lt!1261096)))

(declare-fun b!3641843 () Bool)

(declare-fun e!2254427 () Bool)

(assert (=> b!3641843 (= e!2254428 e!2254427)))

(declare-fun res!1476281 () Bool)

(assert (=> b!3641843 (=> res!1476281 e!2254427)))

(assert (=> b!3641843 (= res!1476281 (= (h!43799 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3641844 () Bool)

(assert (=> b!3641844 (= e!2254427 (contains!7534 (t!296526 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1070764 res!1476282) b!3641843))

(assert (= (and b!3641843 (not res!1476281)) b!3641844))

(declare-fun m!4145075 () Bool)

(assert (=> d!1070764 m!4145075))

(declare-fun m!4145077 () Bool)

(assert (=> d!1070764 m!4145077))

(declare-fun m!4145079 () Bool)

(assert (=> b!3641844 m!4145079))

(assert (=> b!3641355 d!1070764))

(declare-fun d!1070766 () Bool)

(assert (=> d!1070766 (= (inv!51810 (tag!6484 rule!403)) (= (mod (str.len (value!183878 (tag!6484 rule!403))) 2) 0))))

(assert (=> b!3641356 d!1070766))

(declare-fun d!1070768 () Bool)

(declare-fun res!1476285 () Bool)

(declare-fun e!2254431 () Bool)

(assert (=> d!1070768 (=> (not res!1476285) (not e!2254431))))

(declare-fun semiInverseModEq!2443 (Int Int) Bool)

(assert (=> d!1070768 (= res!1476285 (semiInverseModEq!2443 (toChars!7885 (transformation!5734 rule!403)) (toValue!8026 (transformation!5734 rule!403))))))

(assert (=> d!1070768 (= (inv!51813 (transformation!5734 rule!403)) e!2254431)))

(declare-fun b!3641847 () Bool)

(declare-fun equivClasses!2342 (Int Int) Bool)

(assert (=> b!3641847 (= e!2254431 (equivClasses!2342 (toChars!7885 (transformation!5734 rule!403)) (toValue!8026 (transformation!5734 rule!403))))))

(assert (= (and d!1070768 res!1476285) b!3641847))

(declare-fun m!4145081 () Bool)

(assert (=> d!1070768 m!4145081))

(declare-fun m!4145083 () Bool)

(assert (=> b!3641847 m!4145083))

(assert (=> b!3641356 d!1070768))

(declare-fun b!3641848 () Bool)

(declare-fun e!2254437 () Bool)

(declare-fun e!2254436 () Bool)

(assert (=> b!3641848 (= e!2254437 e!2254436)))

(declare-fun res!1476290 () Bool)

(assert (=> b!3641848 (=> (not res!1476290) (not e!2254436))))

(declare-fun lt!1261097 () Bool)

(assert (=> b!3641848 (= res!1476290 (not lt!1261097))))

(declare-fun b!3641849 () Bool)

(declare-fun e!2254438 () Bool)

(assert (=> b!3641849 (= e!2254438 (not (= (head!7734 lt!1260867) (c!629592 (regex!5734 rule!403)))))))

(declare-fun b!3641850 () Bool)

(declare-fun res!1476293 () Bool)

(assert (=> b!3641850 (=> res!1476293 e!2254438)))

(assert (=> b!3641850 (= res!1476293 (not (isEmpty!22724 (tail!5641 lt!1260867))))))

(declare-fun b!3641851 () Bool)

(assert (=> b!3641851 (= e!2254436 e!2254438)))

(declare-fun res!1476287 () Bool)

(assert (=> b!3641851 (=> res!1476287 e!2254438)))

(declare-fun call!263246 () Bool)

(assert (=> b!3641851 (= res!1476287 call!263246)))

(declare-fun b!3641852 () Bool)

(declare-fun e!2254435 () Bool)

(declare-fun e!2254434 () Bool)

(assert (=> b!3641852 (= e!2254435 e!2254434)))

(declare-fun c!629690 () Bool)

(assert (=> b!3641852 (= c!629690 ((_ is EmptyLang!10493) (regex!5734 rule!403)))))

(declare-fun b!3641853 () Bool)

(declare-fun e!2254433 () Bool)

(assert (=> b!3641853 (= e!2254433 (= (head!7734 lt!1260867) (c!629592 (regex!5734 rule!403))))))

(declare-fun b!3641854 () Bool)

(assert (=> b!3641854 (= e!2254435 (= lt!1261097 call!263246))))

(declare-fun b!3641855 () Bool)

(declare-fun res!1476288 () Bool)

(assert (=> b!3641855 (=> res!1476288 e!2254437)))

(assert (=> b!3641855 (= res!1476288 e!2254433)))

(declare-fun res!1476291 () Bool)

(assert (=> b!3641855 (=> (not res!1476291) (not e!2254433))))

(assert (=> b!3641855 (= res!1476291 lt!1261097)))

(declare-fun d!1070770 () Bool)

(assert (=> d!1070770 e!2254435))

(declare-fun c!629691 () Bool)

(assert (=> d!1070770 (= c!629691 ((_ is EmptyExpr!10493) (regex!5734 rule!403)))))

(declare-fun e!2254432 () Bool)

(assert (=> d!1070770 (= lt!1261097 e!2254432)))

(declare-fun c!629689 () Bool)

(assert (=> d!1070770 (= c!629689 (isEmpty!22724 lt!1260867))))

(assert (=> d!1070770 (validRegex!4805 (regex!5734 rule!403))))

(assert (=> d!1070770 (= (matchR!5062 (regex!5734 rule!403) lt!1260867) lt!1261097)))

(declare-fun b!3641856 () Bool)

(declare-fun res!1476289 () Bool)

(assert (=> b!3641856 (=> (not res!1476289) (not e!2254433))))

(assert (=> b!3641856 (= res!1476289 (not call!263246))))

(declare-fun b!3641857 () Bool)

(declare-fun res!1476292 () Bool)

(assert (=> b!3641857 (=> res!1476292 e!2254437)))

(assert (=> b!3641857 (= res!1476292 (not ((_ is ElementMatch!10493) (regex!5734 rule!403))))))

(assert (=> b!3641857 (= e!2254434 e!2254437)))

(declare-fun b!3641858 () Bool)

(assert (=> b!3641858 (= e!2254432 (nullable!3643 (regex!5734 rule!403)))))

(declare-fun b!3641859 () Bool)

(assert (=> b!3641859 (= e!2254432 (matchR!5062 (derivativeStep!3192 (regex!5734 rule!403) (head!7734 lt!1260867)) (tail!5641 lt!1260867)))))

(declare-fun b!3641860 () Bool)

(assert (=> b!3641860 (= e!2254434 (not lt!1261097))))

(declare-fun bm!263241 () Bool)

(assert (=> bm!263241 (= call!263246 (isEmpty!22724 lt!1260867))))

(declare-fun b!3641861 () Bool)

(declare-fun res!1476286 () Bool)

(assert (=> b!3641861 (=> (not res!1476286) (not e!2254433))))

(assert (=> b!3641861 (= res!1476286 (isEmpty!22724 (tail!5641 lt!1260867)))))

(assert (= (and d!1070770 c!629689) b!3641858))

(assert (= (and d!1070770 (not c!629689)) b!3641859))

(assert (= (and d!1070770 c!629691) b!3641854))

(assert (= (and d!1070770 (not c!629691)) b!3641852))

(assert (= (and b!3641852 c!629690) b!3641860))

(assert (= (and b!3641852 (not c!629690)) b!3641857))

(assert (= (and b!3641857 (not res!1476292)) b!3641855))

(assert (= (and b!3641855 res!1476291) b!3641856))

(assert (= (and b!3641856 res!1476289) b!3641861))

(assert (= (and b!3641861 res!1476286) b!3641853))

(assert (= (and b!3641855 (not res!1476288)) b!3641848))

(assert (= (and b!3641848 res!1476290) b!3641851))

(assert (= (and b!3641851 (not res!1476287)) b!3641850))

(assert (= (and b!3641850 (not res!1476293)) b!3641849))

(assert (= (or b!3641854 b!3641851 b!3641856) bm!263241))

(declare-fun m!4145085 () Bool)

(assert (=> b!3641858 m!4145085))

(declare-fun m!4145087 () Bool)

(assert (=> b!3641850 m!4145087))

(assert (=> b!3641850 m!4145087))

(declare-fun m!4145089 () Bool)

(assert (=> b!3641850 m!4145089))

(declare-fun m!4145091 () Bool)

(assert (=> d!1070770 m!4145091))

(declare-fun m!4145093 () Bool)

(assert (=> d!1070770 m!4145093))

(declare-fun m!4145095 () Bool)

(assert (=> b!3641849 m!4145095))

(assert (=> b!3641859 m!4145095))

(assert (=> b!3641859 m!4145095))

(declare-fun m!4145097 () Bool)

(assert (=> b!3641859 m!4145097))

(assert (=> b!3641859 m!4145087))

(assert (=> b!3641859 m!4145097))

(assert (=> b!3641859 m!4145087))

(declare-fun m!4145099 () Bool)

(assert (=> b!3641859 m!4145099))

(assert (=> b!3641861 m!4145087))

(assert (=> b!3641861 m!4145087))

(assert (=> b!3641861 m!4145089))

(assert (=> bm!263241 m!4145091))

(assert (=> b!3641853 m!4145095))

(assert (=> b!3641377 d!1070770))

(declare-fun d!1070772 () Bool)

(declare-fun res!1476298 () Bool)

(declare-fun e!2254441 () Bool)

(assert (=> d!1070772 (=> (not res!1476298) (not e!2254441))))

(assert (=> d!1070772 (= res!1476298 (validRegex!4805 (regex!5734 rule!403)))))

(assert (=> d!1070772 (= (ruleValid!1998 thiss!23823 rule!403) e!2254441)))

(declare-fun b!3641866 () Bool)

(declare-fun res!1476299 () Bool)

(assert (=> b!3641866 (=> (not res!1476299) (not e!2254441))))

(assert (=> b!3641866 (= res!1476299 (not (nullable!3643 (regex!5734 rule!403))))))

(declare-fun b!3641867 () Bool)

(assert (=> b!3641867 (= e!2254441 (not (= (tag!6484 rule!403) (String!43155 ""))))))

(assert (= (and d!1070772 res!1476298) b!3641866))

(assert (= (and b!3641866 res!1476299) b!3641867))

(assert (=> d!1070772 m!4145093))

(assert (=> b!3641866 m!4145085))

(assert (=> b!3641377 d!1070772))

(declare-fun d!1070774 () Bool)

(assert (=> d!1070774 (ruleValid!1998 thiss!23823 rule!403)))

(declare-fun lt!1261100 () Unit!55228)

(declare-fun choose!21417 (LexerInterface!5323 Rule!11268 List!38503) Unit!55228)

(assert (=> d!1070774 (= lt!1261100 (choose!21417 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1070774 (contains!7534 rules!3307 rule!403)))

(assert (=> d!1070774 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1152 thiss!23823 rule!403 rules!3307) lt!1261100)))

(declare-fun bs!571979 () Bool)

(assert (= bs!571979 d!1070774))

(assert (=> bs!571979 m!4144455))

(declare-fun m!4145101 () Bool)

(assert (=> bs!571979 m!4145101))

(assert (=> bs!571979 m!4144443))

(assert (=> b!3641377 d!1070774))

(declare-fun d!1070776 () Bool)

(declare-fun lt!1261101 () Bool)

(assert (=> d!1070776 (= lt!1261101 (select (content!5525 rules!3307) rule!403))))

(declare-fun e!2254443 () Bool)

(assert (=> d!1070776 (= lt!1261101 e!2254443)))

(declare-fun res!1476301 () Bool)

(assert (=> d!1070776 (=> (not res!1476301) (not e!2254443))))

(assert (=> d!1070776 (= res!1476301 ((_ is Cons!38379) rules!3307))))

(assert (=> d!1070776 (= (contains!7534 rules!3307 rule!403) lt!1261101)))

(declare-fun b!3641868 () Bool)

(declare-fun e!2254442 () Bool)

(assert (=> b!3641868 (= e!2254443 e!2254442)))

(declare-fun res!1476300 () Bool)

(assert (=> b!3641868 (=> res!1476300 e!2254442)))

(assert (=> b!3641868 (= res!1476300 (= (h!43799 rules!3307) rule!403))))

(declare-fun b!3641869 () Bool)

(assert (=> b!3641869 (= e!2254442 (contains!7534 (t!296526 rules!3307) rule!403))))

(assert (= (and d!1070776 res!1476301) b!3641868))

(assert (= (and b!3641868 (not res!1476300)) b!3641869))

(assert (=> d!1070776 m!4145075))

(declare-fun m!4145103 () Bool)

(assert (=> d!1070776 m!4145103))

(declare-fun m!4145105 () Bool)

(assert (=> b!3641869 m!4145105))

(assert (=> b!3641378 d!1070776))

(declare-fun d!1070778 () Bool)

(declare-fun res!1476312 () Bool)

(declare-fun e!2254458 () Bool)

(assert (=> d!1070778 (=> res!1476312 e!2254458)))

(assert (=> d!1070778 (= res!1476312 ((_ is ElementMatch!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(assert (=> d!1070778 (= (validRegex!4805 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) e!2254458)))

(declare-fun c!629697 () Bool)

(declare-fun call!263255 () Bool)

(declare-fun c!629696 () Bool)

(declare-fun bm!263248 () Bool)

(assert (=> bm!263248 (= call!263255 (validRegex!4805 (ite c!629697 (reg!10822 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) (ite c!629696 (regOne!21499 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) (regTwo!21498 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))))

(declare-fun bm!263249 () Bool)

(declare-fun call!263254 () Bool)

(assert (=> bm!263249 (= call!263254 (validRegex!4805 (ite c!629696 (regTwo!21499 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) (regOne!21498 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))))

(declare-fun b!3641888 () Bool)

(declare-fun e!2254460 () Bool)

(declare-fun e!2254463 () Bool)

(assert (=> b!3641888 (= e!2254460 e!2254463)))

(declare-fun res!1476313 () Bool)

(assert (=> b!3641888 (=> (not res!1476313) (not e!2254463))))

(assert (=> b!3641888 (= res!1476313 call!263254)))

(declare-fun b!3641889 () Bool)

(declare-fun call!263253 () Bool)

(assert (=> b!3641889 (= e!2254463 call!263253)))

(declare-fun b!3641890 () Bool)

(declare-fun e!2254461 () Bool)

(assert (=> b!3641890 (= e!2254461 call!263254)))

(declare-fun b!3641891 () Bool)

(declare-fun e!2254459 () Bool)

(assert (=> b!3641891 (= e!2254459 call!263255)))

(declare-fun b!3641892 () Bool)

(declare-fun e!2254462 () Bool)

(assert (=> b!3641892 (= e!2254462 e!2254459)))

(declare-fun res!1476315 () Bool)

(assert (=> b!3641892 (= res!1476315 (not (nullable!3643 (reg!10822 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))))

(assert (=> b!3641892 (=> (not res!1476315) (not e!2254459))))

(declare-fun bm!263250 () Bool)

(assert (=> bm!263250 (= call!263253 call!263255)))

(declare-fun b!3641893 () Bool)

(declare-fun res!1476316 () Bool)

(assert (=> b!3641893 (=> res!1476316 e!2254460)))

(assert (=> b!3641893 (= res!1476316 (not ((_ is Concat!16458) (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))

(declare-fun e!2254464 () Bool)

(assert (=> b!3641893 (= e!2254464 e!2254460)))

(declare-fun b!3641894 () Bool)

(assert (=> b!3641894 (= e!2254458 e!2254462)))

(assert (=> b!3641894 (= c!629697 ((_ is Star!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3641895 () Bool)

(assert (=> b!3641895 (= e!2254462 e!2254464)))

(assert (=> b!3641895 (= c!629696 ((_ is Union!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3641896 () Bool)

(declare-fun res!1476314 () Bool)

(assert (=> b!3641896 (=> (not res!1476314) (not e!2254461))))

(assert (=> b!3641896 (= res!1476314 call!263253)))

(assert (=> b!3641896 (= e!2254464 e!2254461)))

(assert (= (and d!1070778 (not res!1476312)) b!3641894))

(assert (= (and b!3641894 c!629697) b!3641892))

(assert (= (and b!3641894 (not c!629697)) b!3641895))

(assert (= (and b!3641892 res!1476315) b!3641891))

(assert (= (and b!3641895 c!629696) b!3641896))

(assert (= (and b!3641895 (not c!629696)) b!3641893))

(assert (= (and b!3641896 res!1476314) b!3641890))

(assert (= (and b!3641893 (not res!1476316)) b!3641888))

(assert (= (and b!3641888 res!1476313) b!3641889))

(assert (= (or b!3641896 b!3641889) bm!263250))

(assert (= (or b!3641890 b!3641888) bm!263249))

(assert (= (or b!3641891 bm!263250) bm!263248))

(declare-fun m!4145107 () Bool)

(assert (=> bm!263248 m!4145107))

(declare-fun m!4145109 () Bool)

(assert (=> bm!263249 m!4145109))

(declare-fun m!4145111 () Bool)

(assert (=> b!3641892 m!4145111))

(assert (=> b!3641357 d!1070778))

(declare-fun d!1070780 () Bool)

(declare-fun lt!1261104 () Bool)

(declare-fun content!5526 (List!38502) (InoxSet C!21172))

(assert (=> d!1070780 (= lt!1261104 (select (content!5526 (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))) lt!1260876))))

(declare-fun e!2254469 () Bool)

(assert (=> d!1070780 (= lt!1261104 e!2254469)))

(declare-fun res!1476322 () Bool)

(assert (=> d!1070780 (=> (not res!1476322) (not e!2254469))))

(assert (=> d!1070780 (= res!1476322 ((_ is Cons!38378) (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))

(assert (=> d!1070780 (= (contains!7533 (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260876) lt!1261104)))

(declare-fun b!3641901 () Bool)

(declare-fun e!2254470 () Bool)

(assert (=> b!3641901 (= e!2254469 e!2254470)))

(declare-fun res!1476321 () Bool)

(assert (=> b!3641901 (=> res!1476321 e!2254470)))

(assert (=> b!3641901 (= res!1476321 (= (h!43798 (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))) lt!1260876))))

(declare-fun b!3641902 () Bool)

(assert (=> b!3641902 (= e!2254470 (contains!7533 (t!296525 (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))) lt!1260876))))

(assert (= (and d!1070780 res!1476322) b!3641901))

(assert (= (and b!3641901 (not res!1476321)) b!3641902))

(assert (=> d!1070780 m!4144437))

(declare-fun m!4145113 () Bool)

(assert (=> d!1070780 m!4145113))

(declare-fun m!4145115 () Bool)

(assert (=> d!1070780 m!4145115))

(declare-fun m!4145117 () Bool)

(assert (=> b!3641902 m!4145117))

(assert (=> b!3641357 d!1070780))

(declare-fun bm!263259 () Bool)

(declare-fun call!263265 () List!38502)

(declare-fun call!263267 () List!38502)

(assert (=> bm!263259 (= call!263265 call!263267)))

(declare-fun b!3641919 () Bool)

(declare-fun c!629708 () Bool)

(assert (=> b!3641919 (= c!629708 ((_ is Star!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun e!2254481 () List!38502)

(declare-fun e!2254480 () List!38502)

(assert (=> b!3641919 (= e!2254481 e!2254480)))

(declare-fun c!629709 () Bool)

(declare-fun bm!263260 () Bool)

(assert (=> bm!263260 (= call!263267 (usedCharacters!946 (ite c!629708 (reg!10822 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) (ite c!629709 (regTwo!21499 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) (regOne!21498 (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))))

(declare-fun d!1070782 () Bool)

(declare-fun c!629707 () Bool)

(assert (=> d!1070782 (= c!629707 (or ((_ is EmptyExpr!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) ((_ is EmptyLang!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871))))))))

(declare-fun e!2254479 () List!38502)

(assert (=> d!1070782 (= (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) e!2254479)))

(declare-fun bm!263261 () Bool)

(declare-fun call!263266 () List!38502)

(assert (=> bm!263261 (= call!263266 (usedCharacters!946 (ite c!629709 (regOne!21499 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) (regTwo!21498 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))))

(declare-fun b!3641920 () Bool)

(declare-fun e!2254482 () List!38502)

(assert (=> b!3641920 (= e!2254480 e!2254482)))

(assert (=> b!3641920 (= c!629709 ((_ is Union!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3641921 () Bool)

(declare-fun call!263264 () List!38502)

(assert (=> b!3641921 (= e!2254482 call!263264)))

(declare-fun b!3641922 () Bool)

(assert (=> b!3641922 (= e!2254479 e!2254481)))

(declare-fun c!629706 () Bool)

(assert (=> b!3641922 (= c!629706 ((_ is ElementMatch!10493) (regex!5734 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3641923 () Bool)

(assert (=> b!3641923 (= e!2254482 call!263264)))

(declare-fun b!3641924 () Bool)

(assert (=> b!3641924 (= e!2254481 (Cons!38378 (c!629592 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) Nil!38378))))

(declare-fun bm!263262 () Bool)

(assert (=> bm!263262 (= call!263264 (++!9550 (ite c!629709 call!263266 call!263265) (ite c!629709 call!263265 call!263266)))))

(declare-fun b!3641925 () Bool)

(assert (=> b!3641925 (= e!2254479 Nil!38378)))

(declare-fun b!3641926 () Bool)

(assert (=> b!3641926 (= e!2254480 call!263267)))

(assert (= (and d!1070782 c!629707) b!3641925))

(assert (= (and d!1070782 (not c!629707)) b!3641922))

(assert (= (and b!3641922 c!629706) b!3641924))

(assert (= (and b!3641922 (not c!629706)) b!3641919))

(assert (= (and b!3641919 c!629708) b!3641926))

(assert (= (and b!3641919 (not c!629708)) b!3641920))

(assert (= (and b!3641920 c!629709) b!3641921))

(assert (= (and b!3641920 (not c!629709)) b!3641923))

(assert (= (or b!3641921 b!3641923) bm!263261))

(assert (= (or b!3641921 b!3641923) bm!263259))

(assert (= (or b!3641921 b!3641923) bm!263262))

(assert (= (or b!3641926 bm!263259) bm!263260))

(declare-fun m!4145119 () Bool)

(assert (=> bm!263260 m!4145119))

(declare-fun m!4145121 () Bool)

(assert (=> bm!263261 m!4145121))

(declare-fun m!4145123 () Bool)

(assert (=> bm!263262 m!4145123))

(assert (=> b!3641357 d!1070782))

(declare-fun d!1070784 () Bool)

(assert (=> d!1070784 (not (contains!7533 (usedCharacters!946 (regex!5734 (rule!8518 (_1!22258 lt!1260871)))) lt!1260876))))

(declare-fun lt!1261107 () Unit!55228)

(declare-fun choose!21419 (LexerInterface!5323 List!38503 List!38503 Rule!11268 Rule!11268 C!21172) Unit!55228)

(assert (=> d!1070784 (= lt!1261107 (choose!21419 thiss!23823 rules!3307 rules!3307 (rule!8518 (_1!22258 lt!1260871)) rule!403 lt!1260876))))

(assert (=> d!1070784 (rulesInvariant!4720 thiss!23823 rules!3307)))

(assert (=> d!1070784 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!390 thiss!23823 rules!3307 rules!3307 (rule!8518 (_1!22258 lt!1260871)) rule!403 lt!1260876) lt!1261107)))

(declare-fun bs!571980 () Bool)

(assert (= bs!571980 d!1070784))

(assert (=> bs!571980 m!4144437))

(assert (=> bs!571980 m!4144437))

(assert (=> bs!571980 m!4144439))

(declare-fun m!4145125 () Bool)

(assert (=> bs!571980 m!4145125))

(assert (=> bs!571980 m!4144477))

(assert (=> b!3641357 d!1070784))

(declare-fun d!1070786 () Bool)

(declare-fun lt!1261108 () Bool)

(assert (=> d!1070786 (= lt!1261108 (select (content!5526 lt!1260873) lt!1260876))))

(declare-fun e!2254483 () Bool)

(assert (=> d!1070786 (= lt!1261108 e!2254483)))

(declare-fun res!1476324 () Bool)

(assert (=> d!1070786 (=> (not res!1476324) (not e!2254483))))

(assert (=> d!1070786 (= res!1476324 ((_ is Cons!38378) lt!1260873))))

(assert (=> d!1070786 (= (contains!7533 lt!1260873 lt!1260876) lt!1261108)))

(declare-fun b!3641927 () Bool)

(declare-fun e!2254484 () Bool)

(assert (=> b!3641927 (= e!2254483 e!2254484)))

(declare-fun res!1476323 () Bool)

(assert (=> b!3641927 (=> res!1476323 e!2254484)))

(assert (=> b!3641927 (= res!1476323 (= (h!43798 lt!1260873) lt!1260876))))

(declare-fun b!3641928 () Bool)

(assert (=> b!3641928 (= e!2254484 (contains!7533 (t!296525 lt!1260873) lt!1260876))))

(assert (= (and d!1070786 res!1476324) b!3641927))

(assert (= (and b!3641927 (not res!1476323)) b!3641928))

(declare-fun m!4145127 () Bool)

(assert (=> d!1070786 m!4145127))

(declare-fun m!4145129 () Bool)

(assert (=> d!1070786 m!4145129))

(declare-fun m!4145131 () Bool)

(assert (=> b!3641928 m!4145131))

(assert (=> b!3641380 d!1070786))

(declare-fun b!3641939 () Bool)

(declare-fun e!2254492 () Bool)

(declare-fun inv!16 (TokenValue!5964) Bool)

(assert (=> b!3641939 (= e!2254492 (inv!16 (value!183879 token!511)))))

(declare-fun b!3641940 () Bool)

(declare-fun res!1476327 () Bool)

(declare-fun e!2254493 () Bool)

(assert (=> b!3641940 (=> res!1476327 e!2254493)))

(assert (=> b!3641940 (= res!1476327 (not ((_ is IntegerValue!17894) (value!183879 token!511))))))

(declare-fun e!2254491 () Bool)

(assert (=> b!3641940 (= e!2254491 e!2254493)))

(declare-fun b!3641941 () Bool)

(assert (=> b!3641941 (= e!2254492 e!2254491)))

(declare-fun c!629716 () Bool)

(assert (=> b!3641941 (= c!629716 ((_ is IntegerValue!17893) (value!183879 token!511)))))

(declare-fun b!3641942 () Bool)

(declare-fun inv!17 (TokenValue!5964) Bool)

(assert (=> b!3641942 (= e!2254491 (inv!17 (value!183879 token!511)))))

(declare-fun d!1070788 () Bool)

(declare-fun c!629715 () Bool)

(assert (=> d!1070788 (= c!629715 ((_ is IntegerValue!17892) (value!183879 token!511)))))

(assert (=> d!1070788 (= (inv!21 (value!183879 token!511)) e!2254492)))

(declare-fun b!3641943 () Bool)

(declare-fun inv!15 (TokenValue!5964) Bool)

(assert (=> b!3641943 (= e!2254493 (inv!15 (value!183879 token!511)))))

(assert (= (and d!1070788 c!629715) b!3641939))

(assert (= (and d!1070788 (not c!629715)) b!3641941))

(assert (= (and b!3641941 c!629716) b!3641942))

(assert (= (and b!3641941 (not c!629716)) b!3641940))

(assert (= (and b!3641940 (not res!1476327)) b!3641943))

(declare-fun m!4145133 () Bool)

(assert (=> b!3641939 m!4145133))

(declare-fun m!4145135 () Bool)

(assert (=> b!3641942 m!4145135))

(declare-fun m!4145137 () Bool)

(assert (=> b!3641943 m!4145137))

(assert (=> b!3641359 d!1070788))

(declare-fun d!1070790 () Bool)

(assert (=> d!1070790 (= (inv!51810 (tag!6484 (rule!8518 token!511))) (= (mod (str.len (value!183878 (tag!6484 (rule!8518 token!511)))) 2) 0))))

(assert (=> b!3641358 d!1070790))

(declare-fun d!1070792 () Bool)

(declare-fun res!1476328 () Bool)

(declare-fun e!2254494 () Bool)

(assert (=> d!1070792 (=> (not res!1476328) (not e!2254494))))

(assert (=> d!1070792 (= res!1476328 (semiInverseModEq!2443 (toChars!7885 (transformation!5734 (rule!8518 token!511))) (toValue!8026 (transformation!5734 (rule!8518 token!511)))))))

(assert (=> d!1070792 (= (inv!51813 (transformation!5734 (rule!8518 token!511))) e!2254494)))

(declare-fun b!3641944 () Bool)

(assert (=> b!3641944 (= e!2254494 (equivClasses!2342 (toChars!7885 (transformation!5734 (rule!8518 token!511))) (toValue!8026 (transformation!5734 (rule!8518 token!511)))))))

(assert (= (and d!1070792 res!1476328) b!3641944))

(declare-fun m!4145139 () Bool)

(assert (=> d!1070792 m!4145139))

(declare-fun m!4145141 () Bool)

(assert (=> b!3641944 m!4145141))

(assert (=> b!3641358 d!1070792))

(declare-fun d!1070794 () Bool)

(declare-fun lt!1261109 () Bool)

(assert (=> d!1070794 (= lt!1261109 (select (content!5526 lt!1260878) lt!1260877))))

(declare-fun e!2254495 () Bool)

(assert (=> d!1070794 (= lt!1261109 e!2254495)))

(declare-fun res!1476330 () Bool)

(assert (=> d!1070794 (=> (not res!1476330) (not e!2254495))))

(assert (=> d!1070794 (= res!1476330 ((_ is Cons!38378) lt!1260878))))

(assert (=> d!1070794 (= (contains!7533 lt!1260878 lt!1260877) lt!1261109)))

(declare-fun b!3641945 () Bool)

(declare-fun e!2254496 () Bool)

(assert (=> b!3641945 (= e!2254495 e!2254496)))

(declare-fun res!1476329 () Bool)

(assert (=> b!3641945 (=> res!1476329 e!2254496)))

(assert (=> b!3641945 (= res!1476329 (= (h!43798 lt!1260878) lt!1260877))))

(declare-fun b!3641946 () Bool)

(assert (=> b!3641946 (= e!2254496 (contains!7533 (t!296525 lt!1260878) lt!1260877))))

(assert (= (and d!1070794 res!1476330) b!3641945))

(assert (= (and b!3641945 (not res!1476329)) b!3641946))

(declare-fun m!4145143 () Bool)

(assert (=> d!1070794 m!4145143))

(declare-fun m!4145145 () Bool)

(assert (=> d!1070794 m!4145145))

(declare-fun m!4145147 () Bool)

(assert (=> b!3641946 m!4145147))

(assert (=> b!3641361 d!1070794))

(declare-fun d!1070796 () Bool)

(assert (=> d!1070796 (= (head!7734 suffix!1395) (h!43798 suffix!1395))))

(assert (=> b!3641361 d!1070796))

(declare-fun bm!263263 () Bool)

(declare-fun call!263269 () List!38502)

(declare-fun call!263271 () List!38502)

(assert (=> bm!263263 (= call!263269 call!263271)))

(declare-fun b!3641947 () Bool)

(declare-fun c!629719 () Bool)

(assert (=> b!3641947 (= c!629719 ((_ is Star!10493) (regex!5734 rule!403)))))

(declare-fun e!2254499 () List!38502)

(declare-fun e!2254498 () List!38502)

(assert (=> b!3641947 (= e!2254499 e!2254498)))

(declare-fun bm!263264 () Bool)

(declare-fun c!629720 () Bool)

(assert (=> bm!263264 (= call!263271 (usedCharacters!946 (ite c!629719 (reg!10822 (regex!5734 rule!403)) (ite c!629720 (regTwo!21499 (regex!5734 rule!403)) (regOne!21498 (regex!5734 rule!403))))))))

(declare-fun d!1070798 () Bool)

(declare-fun c!629718 () Bool)

(assert (=> d!1070798 (= c!629718 (or ((_ is EmptyExpr!10493) (regex!5734 rule!403)) ((_ is EmptyLang!10493) (regex!5734 rule!403))))))

(declare-fun e!2254497 () List!38502)

(assert (=> d!1070798 (= (usedCharacters!946 (regex!5734 rule!403)) e!2254497)))

(declare-fun bm!263265 () Bool)

(declare-fun call!263270 () List!38502)

(assert (=> bm!263265 (= call!263270 (usedCharacters!946 (ite c!629720 (regOne!21499 (regex!5734 rule!403)) (regTwo!21498 (regex!5734 rule!403)))))))

(declare-fun b!3641948 () Bool)

(declare-fun e!2254500 () List!38502)

(assert (=> b!3641948 (= e!2254498 e!2254500)))

(assert (=> b!3641948 (= c!629720 ((_ is Union!10493) (regex!5734 rule!403)))))

(declare-fun b!3641949 () Bool)

(declare-fun call!263268 () List!38502)

(assert (=> b!3641949 (= e!2254500 call!263268)))

(declare-fun b!3641950 () Bool)

(assert (=> b!3641950 (= e!2254497 e!2254499)))

(declare-fun c!629717 () Bool)

(assert (=> b!3641950 (= c!629717 ((_ is ElementMatch!10493) (regex!5734 rule!403)))))

(declare-fun b!3641951 () Bool)

(assert (=> b!3641951 (= e!2254500 call!263268)))

(declare-fun b!3641952 () Bool)

(assert (=> b!3641952 (= e!2254499 (Cons!38378 (c!629592 (regex!5734 rule!403)) Nil!38378))))

(declare-fun bm!263266 () Bool)

(assert (=> bm!263266 (= call!263268 (++!9550 (ite c!629720 call!263270 call!263269) (ite c!629720 call!263269 call!263270)))))

(declare-fun b!3641953 () Bool)

(assert (=> b!3641953 (= e!2254497 Nil!38378)))

(declare-fun b!3641954 () Bool)

(assert (=> b!3641954 (= e!2254498 call!263271)))

(assert (= (and d!1070798 c!629718) b!3641953))

(assert (= (and d!1070798 (not c!629718)) b!3641950))

(assert (= (and b!3641950 c!629717) b!3641952))

(assert (= (and b!3641950 (not c!629717)) b!3641947))

(assert (= (and b!3641947 c!629719) b!3641954))

(assert (= (and b!3641947 (not c!629719)) b!3641948))

(assert (= (and b!3641948 c!629720) b!3641949))

(assert (= (and b!3641948 (not c!629720)) b!3641951))

(assert (= (or b!3641949 b!3641951) bm!263265))

(assert (= (or b!3641949 b!3641951) bm!263263))

(assert (= (or b!3641949 b!3641951) bm!263266))

(assert (= (or b!3641954 bm!263263) bm!263264))

(declare-fun m!4145149 () Bool)

(assert (=> bm!263264 m!4145149))

(declare-fun m!4145151 () Bool)

(assert (=> bm!263265 m!4145151))

(declare-fun m!4145153 () Bool)

(assert (=> bm!263266 m!4145153))

(assert (=> b!3641361 d!1070798))

(declare-fun d!1070800 () Bool)

(assert (=> d!1070800 (= (get!12574 lt!1260889) (v!37928 lt!1260889))))

(assert (=> b!3641363 d!1070800))

(declare-fun d!1070802 () Bool)

(assert (=> d!1070802 (= (isDefined!6328 lt!1260889) (not (isEmpty!22727 lt!1260889)))))

(declare-fun bs!571981 () Bool)

(assert (= bs!571981 d!1070802))

(declare-fun m!4145155 () Bool)

(assert (=> bs!571981 m!4145155))

(assert (=> b!3641362 d!1070802))

(declare-fun b!3641973 () Bool)

(declare-fun res!1476346 () Bool)

(declare-fun e!2254509 () Bool)

(assert (=> b!3641973 (=> (not res!1476346) (not e!2254509))))

(declare-fun lt!1261120 () Option!8097)

(assert (=> b!3641973 (= res!1476346 (= (++!9550 (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261120)))) (_2!22258 (get!12574 lt!1261120))) lt!1260867))))

(declare-fun b!3641975 () Bool)

(declare-fun res!1476349 () Bool)

(assert (=> b!3641975 (=> (not res!1476349) (not e!2254509))))

(assert (=> b!3641975 (= res!1476349 (= (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261120)))) (originalCharacters!6448 (_1!22258 (get!12574 lt!1261120)))))))

(declare-fun b!3641976 () Bool)

(declare-fun res!1476345 () Bool)

(assert (=> b!3641976 (=> (not res!1476345) (not e!2254509))))

(assert (=> b!3641976 (= res!1476345 (< (size!29292 (_2!22258 (get!12574 lt!1261120))) (size!29292 lt!1260867)))))

(declare-fun call!263274 () Option!8097)

(declare-fun bm!263269 () Bool)

(assert (=> bm!263269 (= call!263274 (maxPrefixOneRule!1995 thiss!23823 (h!43799 rules!3307) lt!1260867))))

(declare-fun b!3641977 () Bool)

(assert (=> b!3641977 (= e!2254509 (contains!7534 rules!3307 (rule!8518 (_1!22258 (get!12574 lt!1261120)))))))

(declare-fun b!3641978 () Bool)

(declare-fun res!1476347 () Bool)

(assert (=> b!3641978 (=> (not res!1476347) (not e!2254509))))

(assert (=> b!3641978 (= res!1476347 (= (value!183879 (_1!22258 (get!12574 lt!1261120))) (apply!9236 (transformation!5734 (rule!8518 (_1!22258 (get!12574 lt!1261120)))) (seqFromList!4283 (originalCharacters!6448 (_1!22258 (get!12574 lt!1261120)))))))))

(declare-fun b!3641979 () Bool)

(declare-fun res!1476351 () Bool)

(assert (=> b!3641979 (=> (not res!1476351) (not e!2254509))))

(assert (=> b!3641979 (= res!1476351 (matchR!5062 (regex!5734 (rule!8518 (_1!22258 (get!12574 lt!1261120)))) (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261120))))))))

(declare-fun d!1070804 () Bool)

(declare-fun e!2254507 () Bool)

(assert (=> d!1070804 e!2254507))

(declare-fun res!1476350 () Bool)

(assert (=> d!1070804 (=> res!1476350 e!2254507)))

(assert (=> d!1070804 (= res!1476350 (isEmpty!22727 lt!1261120))))

(declare-fun e!2254508 () Option!8097)

(assert (=> d!1070804 (= lt!1261120 e!2254508)))

(declare-fun c!629723 () Bool)

(assert (=> d!1070804 (= c!629723 (and ((_ is Cons!38379) rules!3307) ((_ is Nil!38379) (t!296526 rules!3307))))))

(declare-fun lt!1261124 () Unit!55228)

(declare-fun lt!1261123 () Unit!55228)

(assert (=> d!1070804 (= lt!1261124 lt!1261123)))

(assert (=> d!1070804 (isPrefix!3097 lt!1260867 lt!1260867)))

(declare-fun lemmaIsPrefixRefl!1964 (List!38502 List!38502) Unit!55228)

(assert (=> d!1070804 (= lt!1261123 (lemmaIsPrefixRefl!1964 lt!1260867 lt!1260867))))

(declare-fun rulesValidInductive!2029 (LexerInterface!5323 List!38503) Bool)

(assert (=> d!1070804 (rulesValidInductive!2029 thiss!23823 rules!3307)))

(assert (=> d!1070804 (= (maxPrefix!2857 thiss!23823 rules!3307 lt!1260867) lt!1261120)))

(declare-fun b!3641974 () Bool)

(declare-fun lt!1261121 () Option!8097)

(declare-fun lt!1261122 () Option!8097)

(assert (=> b!3641974 (= e!2254508 (ite (and ((_ is None!8096) lt!1261121) ((_ is None!8096) lt!1261122)) None!8096 (ite ((_ is None!8096) lt!1261122) lt!1261121 (ite ((_ is None!8096) lt!1261121) lt!1261122 (ite (>= (size!29291 (_1!22258 (v!37928 lt!1261121))) (size!29291 (_1!22258 (v!37928 lt!1261122)))) lt!1261121 lt!1261122)))))))

(assert (=> b!3641974 (= lt!1261121 call!263274)))

(assert (=> b!3641974 (= lt!1261122 (maxPrefix!2857 thiss!23823 (t!296526 rules!3307) lt!1260867))))

(declare-fun b!3641980 () Bool)

(assert (=> b!3641980 (= e!2254508 call!263274)))

(declare-fun b!3641981 () Bool)

(assert (=> b!3641981 (= e!2254507 e!2254509)))

(declare-fun res!1476348 () Bool)

(assert (=> b!3641981 (=> (not res!1476348) (not e!2254509))))

(assert (=> b!3641981 (= res!1476348 (isDefined!6328 lt!1261120))))

(assert (= (and d!1070804 c!629723) b!3641980))

(assert (= (and d!1070804 (not c!629723)) b!3641974))

(assert (= (or b!3641980 b!3641974) bm!263269))

(assert (= (and d!1070804 (not res!1476350)) b!3641981))

(assert (= (and b!3641981 res!1476348) b!3641975))

(assert (= (and b!3641975 res!1476349) b!3641976))

(assert (= (and b!3641976 res!1476345) b!3641973))

(assert (= (and b!3641973 res!1476346) b!3641978))

(assert (= (and b!3641978 res!1476347) b!3641979))

(assert (= (and b!3641979 res!1476351) b!3641977))

(declare-fun m!4145157 () Bool)

(assert (=> b!3641979 m!4145157))

(declare-fun m!4145159 () Bool)

(assert (=> b!3641979 m!4145159))

(assert (=> b!3641979 m!4145159))

(declare-fun m!4145161 () Bool)

(assert (=> b!3641979 m!4145161))

(assert (=> b!3641979 m!4145161))

(declare-fun m!4145163 () Bool)

(assert (=> b!3641979 m!4145163))

(assert (=> b!3641975 m!4145157))

(assert (=> b!3641975 m!4145159))

(assert (=> b!3641975 m!4145159))

(assert (=> b!3641975 m!4145161))

(declare-fun m!4145165 () Bool)

(assert (=> d!1070804 m!4145165))

(declare-fun m!4145167 () Bool)

(assert (=> d!1070804 m!4145167))

(declare-fun m!4145169 () Bool)

(assert (=> d!1070804 m!4145169))

(declare-fun m!4145171 () Bool)

(assert (=> d!1070804 m!4145171))

(declare-fun m!4145173 () Bool)

(assert (=> bm!263269 m!4145173))

(assert (=> b!3641978 m!4145157))

(declare-fun m!4145175 () Bool)

(assert (=> b!3641978 m!4145175))

(assert (=> b!3641978 m!4145175))

(declare-fun m!4145177 () Bool)

(assert (=> b!3641978 m!4145177))

(declare-fun m!4145179 () Bool)

(assert (=> b!3641981 m!4145179))

(assert (=> b!3641977 m!4145157))

(declare-fun m!4145181 () Bool)

(assert (=> b!3641977 m!4145181))

(assert (=> b!3641976 m!4145157))

(declare-fun m!4145183 () Bool)

(assert (=> b!3641976 m!4145183))

(declare-fun m!4145185 () Bool)

(assert (=> b!3641976 m!4145185))

(assert (=> b!3641973 m!4145157))

(assert (=> b!3641973 m!4145159))

(assert (=> b!3641973 m!4145159))

(assert (=> b!3641973 m!4145161))

(assert (=> b!3641973 m!4145161))

(declare-fun m!4145187 () Bool)

(assert (=> b!3641973 m!4145187))

(declare-fun m!4145189 () Bool)

(assert (=> b!3641974 m!4145189))

(assert (=> b!3641362 d!1070804))

(declare-fun d!1070806 () Bool)

(declare-fun list!14211 (Conc!11719) List!38502)

(assert (=> d!1070806 (= (list!14208 (charsOf!3748 token!511)) (list!14211 (c!629593 (charsOf!3748 token!511))))))

(declare-fun bs!571982 () Bool)

(assert (= bs!571982 d!1070806))

(declare-fun m!4145191 () Bool)

(assert (=> bs!571982 m!4145191))

(assert (=> b!3641362 d!1070806))

(declare-fun d!1070808 () Bool)

(declare-fun lt!1261127 () BalanceConc!23052)

(assert (=> d!1070808 (= (list!14208 lt!1261127) (originalCharacters!6448 token!511))))

(assert (=> d!1070808 (= lt!1261127 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 token!511))) (value!183879 token!511)))))

(assert (=> d!1070808 (= (charsOf!3748 token!511) lt!1261127)))

(declare-fun b_lambda!107963 () Bool)

(assert (=> (not b_lambda!107963) (not d!1070808)))

(declare-fun t!296584 () Bool)

(declare-fun tb!209837 () Bool)

(assert (=> (and b!3641366 (= (toChars!7885 (transformation!5734 (rule!8518 token!511))) (toChars!7885 (transformation!5734 (rule!8518 token!511)))) t!296584) tb!209837))

(declare-fun b!3641982 () Bool)

(declare-fun e!2254510 () Bool)

(declare-fun tp!1110854 () Bool)

(assert (=> b!3641982 (= e!2254510 (and (inv!51817 (c!629593 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 token!511))) (value!183879 token!511)))) tp!1110854))))

(declare-fun result!255566 () Bool)

(assert (=> tb!209837 (= result!255566 (and (inv!51818 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 token!511))) (value!183879 token!511))) e!2254510))))

(assert (= tb!209837 b!3641982))

(declare-fun m!4145193 () Bool)

(assert (=> b!3641982 m!4145193))

(declare-fun m!4145195 () Bool)

(assert (=> tb!209837 m!4145195))

(assert (=> d!1070808 t!296584))

(declare-fun b_and!268539 () Bool)

(assert (= b_and!268499 (and (=> t!296584 result!255566) b_and!268539)))

(declare-fun tb!209839 () Bool)

(declare-fun t!296586 () Bool)

(assert (=> (and b!3641369 (= (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toChars!7885 (transformation!5734 (rule!8518 token!511)))) t!296586) tb!209839))

(declare-fun result!255568 () Bool)

(assert (= result!255568 result!255566))

(assert (=> d!1070808 t!296586))

(declare-fun b_and!268541 () Bool)

(assert (= b_and!268501 (and (=> t!296586 result!255568) b_and!268541)))

(declare-fun t!296588 () Bool)

(declare-fun tb!209841 () Bool)

(assert (=> (and b!3641379 (= (toChars!7885 (transformation!5734 rule!403)) (toChars!7885 (transformation!5734 (rule!8518 token!511)))) t!296588) tb!209841))

(declare-fun result!255570 () Bool)

(assert (= result!255570 result!255566))

(assert (=> d!1070808 t!296588))

(declare-fun b_and!268543 () Bool)

(assert (= b_and!268503 (and (=> t!296588 result!255570) b_and!268543)))

(declare-fun t!296590 () Bool)

(declare-fun tb!209843 () Bool)

(assert (=> (and b!3641354 (= (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toChars!7885 (transformation!5734 (rule!8518 token!511)))) t!296590) tb!209843))

(declare-fun result!255572 () Bool)

(assert (= result!255572 result!255566))

(assert (=> d!1070808 t!296590))

(declare-fun b_and!268545 () Bool)

(assert (= b_and!268505 (and (=> t!296590 result!255572) b_and!268545)))

(declare-fun m!4145197 () Bool)

(assert (=> d!1070808 m!4145197))

(declare-fun m!4145199 () Bool)

(assert (=> d!1070808 m!4145199))

(assert (=> b!3641362 d!1070808))

(declare-fun d!1070810 () Bool)

(assert (=> d!1070810 (= (isEmpty!22725 rules!3307) ((_ is Nil!38379) rules!3307))))

(assert (=> b!3641364 d!1070810))

(declare-fun d!1070812 () Bool)

(assert (=> d!1070812 (= (inv!51810 (tag!6484 anOtherTypeRule!33)) (= (mod (str.len (value!183878 (tag!6484 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3641343 d!1070812))

(declare-fun d!1070814 () Bool)

(declare-fun res!1476352 () Bool)

(declare-fun e!2254511 () Bool)

(assert (=> d!1070814 (=> (not res!1476352) (not e!2254511))))

(assert (=> d!1070814 (= res!1476352 (semiInverseModEq!2443 (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toValue!8026 (transformation!5734 anOtherTypeRule!33))))))

(assert (=> d!1070814 (= (inv!51813 (transformation!5734 anOtherTypeRule!33)) e!2254511)))

(declare-fun b!3641983 () Bool)

(assert (=> b!3641983 (= e!2254511 (equivClasses!2342 (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toValue!8026 (transformation!5734 anOtherTypeRule!33))))))

(assert (= (and d!1070814 res!1476352) b!3641983))

(declare-fun m!4145201 () Bool)

(assert (=> d!1070814 m!4145201))

(declare-fun m!4145203 () Bool)

(assert (=> b!3641983 m!4145203))

(assert (=> b!3641343 d!1070814))

(declare-fun d!1070816 () Bool)

(declare-fun res!1476357 () Bool)

(declare-fun e!2254514 () Bool)

(assert (=> d!1070816 (=> (not res!1476357) (not e!2254514))))

(assert (=> d!1070816 (= res!1476357 (not (isEmpty!22724 (originalCharacters!6448 token!511))))))

(assert (=> d!1070816 (= (inv!51814 token!511) e!2254514)))

(declare-fun b!3641988 () Bool)

(declare-fun res!1476358 () Bool)

(assert (=> b!3641988 (=> (not res!1476358) (not e!2254514))))

(assert (=> b!3641988 (= res!1476358 (= (originalCharacters!6448 token!511) (list!14208 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 token!511))) (value!183879 token!511)))))))

(declare-fun b!3641989 () Bool)

(assert (=> b!3641989 (= e!2254514 (= (size!29291 token!511) (size!29292 (originalCharacters!6448 token!511))))))

(assert (= (and d!1070816 res!1476357) b!3641988))

(assert (= (and b!3641988 res!1476358) b!3641989))

(declare-fun b_lambda!107965 () Bool)

(assert (=> (not b_lambda!107965) (not b!3641988)))

(assert (=> b!3641988 t!296584))

(declare-fun b_and!268547 () Bool)

(assert (= b_and!268539 (and (=> t!296584 result!255566) b_and!268547)))

(assert (=> b!3641988 t!296586))

(declare-fun b_and!268549 () Bool)

(assert (= b_and!268541 (and (=> t!296586 result!255568) b_and!268549)))

(assert (=> b!3641988 t!296588))

(declare-fun b_and!268551 () Bool)

(assert (= b_and!268543 (and (=> t!296588 result!255570) b_and!268551)))

(assert (=> b!3641988 t!296590))

(declare-fun b_and!268553 () Bool)

(assert (= b_and!268545 (and (=> t!296590 result!255572) b_and!268553)))

(declare-fun m!4145205 () Bool)

(assert (=> d!1070816 m!4145205))

(assert (=> b!3641988 m!4145199))

(assert (=> b!3641988 m!4145199))

(declare-fun m!4145207 () Bool)

(assert (=> b!3641988 m!4145207))

(declare-fun m!4145209 () Bool)

(assert (=> b!3641989 m!4145209))

(assert (=> start!340098 d!1070816))

(declare-fun d!1070818 () Bool)

(assert (=> d!1070818 (= (isEmpty!22724 (_2!22258 lt!1260882)) ((_ is Nil!38378) (_2!22258 lt!1260882)))))

(assert (=> b!3641344 d!1070818))

(declare-fun d!1070820 () Bool)

(declare-fun lt!1261128 () Bool)

(assert (=> d!1070820 (= lt!1261128 (select (content!5526 (usedCharacters!946 (regex!5734 anOtherTypeRule!33))) lt!1260877))))

(declare-fun e!2254515 () Bool)

(assert (=> d!1070820 (= lt!1261128 e!2254515)))

(declare-fun res!1476360 () Bool)

(assert (=> d!1070820 (=> (not res!1476360) (not e!2254515))))

(assert (=> d!1070820 (= res!1476360 ((_ is Cons!38378) (usedCharacters!946 (regex!5734 anOtherTypeRule!33))))))

(assert (=> d!1070820 (= (contains!7533 (usedCharacters!946 (regex!5734 anOtherTypeRule!33)) lt!1260877) lt!1261128)))

(declare-fun b!3641990 () Bool)

(declare-fun e!2254516 () Bool)

(assert (=> b!3641990 (= e!2254515 e!2254516)))

(declare-fun res!1476359 () Bool)

(assert (=> b!3641990 (=> res!1476359 e!2254516)))

(assert (=> b!3641990 (= res!1476359 (= (h!43798 (usedCharacters!946 (regex!5734 anOtherTypeRule!33))) lt!1260877))))

(declare-fun b!3641991 () Bool)

(assert (=> b!3641991 (= e!2254516 (contains!7533 (t!296525 (usedCharacters!946 (regex!5734 anOtherTypeRule!33))) lt!1260877))))

(assert (= (and d!1070820 res!1476360) b!3641990))

(assert (= (and b!3641990 (not res!1476359)) b!3641991))

(assert (=> d!1070820 m!4144425))

(declare-fun m!4145211 () Bool)

(assert (=> d!1070820 m!4145211))

(declare-fun m!4145213 () Bool)

(assert (=> d!1070820 m!4145213))

(declare-fun m!4145215 () Bool)

(assert (=> b!3641991 m!4145215))

(assert (=> b!3641365 d!1070820))

(declare-fun bm!263270 () Bool)

(declare-fun call!263276 () List!38502)

(declare-fun call!263278 () List!38502)

(assert (=> bm!263270 (= call!263276 call!263278)))

(declare-fun b!3641992 () Bool)

(declare-fun c!629726 () Bool)

(assert (=> b!3641992 (= c!629726 ((_ is Star!10493) (regex!5734 anOtherTypeRule!33)))))

(declare-fun e!2254519 () List!38502)

(declare-fun e!2254518 () List!38502)

(assert (=> b!3641992 (= e!2254519 e!2254518)))

(declare-fun bm!263271 () Bool)

(declare-fun c!629727 () Bool)

(assert (=> bm!263271 (= call!263278 (usedCharacters!946 (ite c!629726 (reg!10822 (regex!5734 anOtherTypeRule!33)) (ite c!629727 (regTwo!21499 (regex!5734 anOtherTypeRule!33)) (regOne!21498 (regex!5734 anOtherTypeRule!33))))))))

(declare-fun d!1070822 () Bool)

(declare-fun c!629725 () Bool)

(assert (=> d!1070822 (= c!629725 (or ((_ is EmptyExpr!10493) (regex!5734 anOtherTypeRule!33)) ((_ is EmptyLang!10493) (regex!5734 anOtherTypeRule!33))))))

(declare-fun e!2254517 () List!38502)

(assert (=> d!1070822 (= (usedCharacters!946 (regex!5734 anOtherTypeRule!33)) e!2254517)))

(declare-fun bm!263272 () Bool)

(declare-fun call!263277 () List!38502)

(assert (=> bm!263272 (= call!263277 (usedCharacters!946 (ite c!629727 (regOne!21499 (regex!5734 anOtherTypeRule!33)) (regTwo!21498 (regex!5734 anOtherTypeRule!33)))))))

(declare-fun b!3641993 () Bool)

(declare-fun e!2254520 () List!38502)

(assert (=> b!3641993 (= e!2254518 e!2254520)))

(assert (=> b!3641993 (= c!629727 ((_ is Union!10493) (regex!5734 anOtherTypeRule!33)))))

(declare-fun b!3641994 () Bool)

(declare-fun call!263275 () List!38502)

(assert (=> b!3641994 (= e!2254520 call!263275)))

(declare-fun b!3641995 () Bool)

(assert (=> b!3641995 (= e!2254517 e!2254519)))

(declare-fun c!629724 () Bool)

(assert (=> b!3641995 (= c!629724 ((_ is ElementMatch!10493) (regex!5734 anOtherTypeRule!33)))))

(declare-fun b!3641996 () Bool)

(assert (=> b!3641996 (= e!2254520 call!263275)))

(declare-fun b!3641997 () Bool)

(assert (=> b!3641997 (= e!2254519 (Cons!38378 (c!629592 (regex!5734 anOtherTypeRule!33)) Nil!38378))))

(declare-fun bm!263273 () Bool)

(assert (=> bm!263273 (= call!263275 (++!9550 (ite c!629727 call!263277 call!263276) (ite c!629727 call!263276 call!263277)))))

(declare-fun b!3641998 () Bool)

(assert (=> b!3641998 (= e!2254517 Nil!38378)))

(declare-fun b!3641999 () Bool)

(assert (=> b!3641999 (= e!2254518 call!263278)))

(assert (= (and d!1070822 c!629725) b!3641998))

(assert (= (and d!1070822 (not c!629725)) b!3641995))

(assert (= (and b!3641995 c!629724) b!3641997))

(assert (= (and b!3641995 (not c!629724)) b!3641992))

(assert (= (and b!3641992 c!629726) b!3641999))

(assert (= (and b!3641992 (not c!629726)) b!3641993))

(assert (= (and b!3641993 c!629727) b!3641994))

(assert (= (and b!3641993 (not c!629727)) b!3641996))

(assert (= (or b!3641994 b!3641996) bm!263272))

(assert (= (or b!3641994 b!3641996) bm!263270))

(assert (= (or b!3641994 b!3641996) bm!263273))

(assert (= (or b!3641999 bm!263270) bm!263271))

(declare-fun m!4145217 () Bool)

(assert (=> bm!263271 m!4145217))

(declare-fun m!4145219 () Bool)

(assert (=> bm!263272 m!4145219))

(declare-fun m!4145221 () Bool)

(assert (=> bm!263273 m!4145221))

(assert (=> b!3641365 d!1070822))

(declare-fun d!1070824 () Bool)

(assert (=> d!1070824 (= (inv!51810 (tag!6484 (h!43799 rules!3307))) (= (mod (str.len (value!183878 (tag!6484 (h!43799 rules!3307)))) 2) 0))))

(assert (=> b!3641367 d!1070824))

(declare-fun d!1070826 () Bool)

(declare-fun res!1476361 () Bool)

(declare-fun e!2254521 () Bool)

(assert (=> d!1070826 (=> (not res!1476361) (not e!2254521))))

(assert (=> d!1070826 (= res!1476361 (semiInverseModEq!2443 (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toValue!8026 (transformation!5734 (h!43799 rules!3307)))))))

(assert (=> d!1070826 (= (inv!51813 (transformation!5734 (h!43799 rules!3307))) e!2254521)))

(declare-fun b!3642000 () Bool)

(assert (=> b!3642000 (= e!2254521 (equivClasses!2342 (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toValue!8026 (transformation!5734 (h!43799 rules!3307)))))))

(assert (= (and d!1070826 res!1476361) b!3642000))

(declare-fun m!4145223 () Bool)

(assert (=> d!1070826 m!4145223))

(declare-fun m!4145225 () Bool)

(assert (=> b!3642000 m!4145225))

(assert (=> b!3641367 d!1070826))

(declare-fun d!1070828 () Bool)

(declare-fun res!1476366 () Bool)

(declare-fun e!2254526 () Bool)

(assert (=> d!1070828 (=> res!1476366 e!2254526)))

(assert (=> d!1070828 (= res!1476366 (not ((_ is Cons!38379) rules!3307)))))

(assert (=> d!1070828 (= (sepAndNonSepRulesDisjointChars!1902 rules!3307 rules!3307) e!2254526)))

(declare-fun b!3642005 () Bool)

(declare-fun e!2254527 () Bool)

(assert (=> b!3642005 (= e!2254526 e!2254527)))

(declare-fun res!1476367 () Bool)

(assert (=> b!3642005 (=> (not res!1476367) (not e!2254527))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!867 (Rule!11268 List!38503) Bool)

(assert (=> b!3642005 (= res!1476367 (ruleDisjointCharsFromAllFromOtherType!867 (h!43799 rules!3307) rules!3307))))

(declare-fun b!3642006 () Bool)

(assert (=> b!3642006 (= e!2254527 (sepAndNonSepRulesDisjointChars!1902 rules!3307 (t!296526 rules!3307)))))

(assert (= (and d!1070828 (not res!1476366)) b!3642005))

(assert (= (and b!3642005 res!1476367) b!3642006))

(declare-fun m!4145227 () Bool)

(assert (=> b!3642005 m!4145227))

(declare-fun m!4145229 () Bool)

(assert (=> b!3642006 m!4145229))

(assert (=> b!3641345 d!1070828))

(declare-fun d!1070830 () Bool)

(assert (=> d!1070830 (= (list!14208 lt!1260891) (list!14211 (c!629593 lt!1260891)))))

(declare-fun bs!571983 () Bool)

(assert (= bs!571983 d!1070830))

(declare-fun m!4145231 () Bool)

(assert (=> bs!571983 m!4145231))

(assert (=> b!3641368 d!1070830))

(declare-fun b!3642007 () Bool)

(declare-fun res!1476369 () Bool)

(declare-fun e!2254530 () Bool)

(assert (=> b!3642007 (=> (not res!1476369) (not e!2254530))))

(declare-fun lt!1261129 () Option!8097)

(assert (=> b!3642007 (= res!1476369 (= (++!9550 (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261129)))) (_2!22258 (get!12574 lt!1261129))) lt!1260870))))

(declare-fun b!3642009 () Bool)

(declare-fun res!1476372 () Bool)

(assert (=> b!3642009 (=> (not res!1476372) (not e!2254530))))

(assert (=> b!3642009 (= res!1476372 (= (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261129)))) (originalCharacters!6448 (_1!22258 (get!12574 lt!1261129)))))))

(declare-fun b!3642010 () Bool)

(declare-fun res!1476368 () Bool)

(assert (=> b!3642010 (=> (not res!1476368) (not e!2254530))))

(assert (=> b!3642010 (= res!1476368 (< (size!29292 (_2!22258 (get!12574 lt!1261129))) (size!29292 lt!1260870)))))

(declare-fun bm!263274 () Bool)

(declare-fun call!263279 () Option!8097)

(assert (=> bm!263274 (= call!263279 (maxPrefixOneRule!1995 thiss!23823 (h!43799 rules!3307) lt!1260870))))

(declare-fun b!3642011 () Bool)

(assert (=> b!3642011 (= e!2254530 (contains!7534 rules!3307 (rule!8518 (_1!22258 (get!12574 lt!1261129)))))))

(declare-fun b!3642012 () Bool)

(declare-fun res!1476370 () Bool)

(assert (=> b!3642012 (=> (not res!1476370) (not e!2254530))))

(assert (=> b!3642012 (= res!1476370 (= (value!183879 (_1!22258 (get!12574 lt!1261129))) (apply!9236 (transformation!5734 (rule!8518 (_1!22258 (get!12574 lt!1261129)))) (seqFromList!4283 (originalCharacters!6448 (_1!22258 (get!12574 lt!1261129)))))))))

(declare-fun b!3642013 () Bool)

(declare-fun res!1476374 () Bool)

(assert (=> b!3642013 (=> (not res!1476374) (not e!2254530))))

(assert (=> b!3642013 (= res!1476374 (matchR!5062 (regex!5734 (rule!8518 (_1!22258 (get!12574 lt!1261129)))) (list!14208 (charsOf!3748 (_1!22258 (get!12574 lt!1261129))))))))

(declare-fun d!1070832 () Bool)

(declare-fun e!2254528 () Bool)

(assert (=> d!1070832 e!2254528))

(declare-fun res!1476373 () Bool)

(assert (=> d!1070832 (=> res!1476373 e!2254528)))

(assert (=> d!1070832 (= res!1476373 (isEmpty!22727 lt!1261129))))

(declare-fun e!2254529 () Option!8097)

(assert (=> d!1070832 (= lt!1261129 e!2254529)))

(declare-fun c!629728 () Bool)

(assert (=> d!1070832 (= c!629728 (and ((_ is Cons!38379) rules!3307) ((_ is Nil!38379) (t!296526 rules!3307))))))

(declare-fun lt!1261133 () Unit!55228)

(declare-fun lt!1261132 () Unit!55228)

(assert (=> d!1070832 (= lt!1261133 lt!1261132)))

(assert (=> d!1070832 (isPrefix!3097 lt!1260870 lt!1260870)))

(assert (=> d!1070832 (= lt!1261132 (lemmaIsPrefixRefl!1964 lt!1260870 lt!1260870))))

(assert (=> d!1070832 (rulesValidInductive!2029 thiss!23823 rules!3307)))

(assert (=> d!1070832 (= (maxPrefix!2857 thiss!23823 rules!3307 lt!1260870) lt!1261129)))

(declare-fun b!3642008 () Bool)

(declare-fun lt!1261130 () Option!8097)

(declare-fun lt!1261131 () Option!8097)

(assert (=> b!3642008 (= e!2254529 (ite (and ((_ is None!8096) lt!1261130) ((_ is None!8096) lt!1261131)) None!8096 (ite ((_ is None!8096) lt!1261131) lt!1261130 (ite ((_ is None!8096) lt!1261130) lt!1261131 (ite (>= (size!29291 (_1!22258 (v!37928 lt!1261130))) (size!29291 (_1!22258 (v!37928 lt!1261131)))) lt!1261130 lt!1261131)))))))

(assert (=> b!3642008 (= lt!1261130 call!263279)))

(assert (=> b!3642008 (= lt!1261131 (maxPrefix!2857 thiss!23823 (t!296526 rules!3307) lt!1260870))))

(declare-fun b!3642014 () Bool)

(assert (=> b!3642014 (= e!2254529 call!263279)))

(declare-fun b!3642015 () Bool)

(assert (=> b!3642015 (= e!2254528 e!2254530)))

(declare-fun res!1476371 () Bool)

(assert (=> b!3642015 (=> (not res!1476371) (not e!2254530))))

(assert (=> b!3642015 (= res!1476371 (isDefined!6328 lt!1261129))))

(assert (= (and d!1070832 c!629728) b!3642014))

(assert (= (and d!1070832 (not c!629728)) b!3642008))

(assert (= (or b!3642014 b!3642008) bm!263274))

(assert (= (and d!1070832 (not res!1476373)) b!3642015))

(assert (= (and b!3642015 res!1476371) b!3642009))

(assert (= (and b!3642009 res!1476372) b!3642010))

(assert (= (and b!3642010 res!1476368) b!3642007))

(assert (= (and b!3642007 res!1476369) b!3642012))

(assert (= (and b!3642012 res!1476370) b!3642013))

(assert (= (and b!3642013 res!1476374) b!3642011))

(declare-fun m!4145233 () Bool)

(assert (=> b!3642013 m!4145233))

(declare-fun m!4145235 () Bool)

(assert (=> b!3642013 m!4145235))

(assert (=> b!3642013 m!4145235))

(declare-fun m!4145237 () Bool)

(assert (=> b!3642013 m!4145237))

(assert (=> b!3642013 m!4145237))

(declare-fun m!4145239 () Bool)

(assert (=> b!3642013 m!4145239))

(assert (=> b!3642009 m!4145233))

(assert (=> b!3642009 m!4145235))

(assert (=> b!3642009 m!4145235))

(assert (=> b!3642009 m!4145237))

(declare-fun m!4145241 () Bool)

(assert (=> d!1070832 m!4145241))

(declare-fun m!4145243 () Bool)

(assert (=> d!1070832 m!4145243))

(declare-fun m!4145245 () Bool)

(assert (=> d!1070832 m!4145245))

(assert (=> d!1070832 m!4145171))

(declare-fun m!4145247 () Bool)

(assert (=> bm!263274 m!4145247))

(assert (=> b!3642012 m!4145233))

(declare-fun m!4145249 () Bool)

(assert (=> b!3642012 m!4145249))

(assert (=> b!3642012 m!4145249))

(declare-fun m!4145251 () Bool)

(assert (=> b!3642012 m!4145251))

(declare-fun m!4145253 () Bool)

(assert (=> b!3642015 m!4145253))

(assert (=> b!3642011 m!4145233))

(declare-fun m!4145255 () Bool)

(assert (=> b!3642011 m!4145255))

(assert (=> b!3642010 m!4145233))

(declare-fun m!4145257 () Bool)

(assert (=> b!3642010 m!4145257))

(assert (=> b!3642010 m!4145007))

(assert (=> b!3642007 m!4145233))

(assert (=> b!3642007 m!4145235))

(assert (=> b!3642007 m!4145235))

(assert (=> b!3642007 m!4145237))

(assert (=> b!3642007 m!4145237))

(declare-fun m!4145259 () Bool)

(assert (=> b!3642007 m!4145259))

(declare-fun m!4145261 () Bool)

(assert (=> b!3642008 m!4145261))

(assert (=> b!3641368 d!1070832))

(declare-fun d!1070834 () Bool)

(assert (=> d!1070834 (isPrefix!3097 lt!1260867 (++!9550 lt!1260867 suffix!1395))))

(declare-fun lt!1261136 () Unit!55228)

(declare-fun choose!21423 (List!38502 List!38502) Unit!55228)

(assert (=> d!1070834 (= lt!1261136 (choose!21423 lt!1260867 suffix!1395))))

(assert (=> d!1070834 (= (lemmaConcatTwoListThenFirstIsPrefix!2016 lt!1260867 suffix!1395) lt!1261136)))

(declare-fun bs!571984 () Bool)

(assert (= bs!571984 d!1070834))

(assert (=> bs!571984 m!4144529))

(assert (=> bs!571984 m!4144529))

(declare-fun m!4145263 () Bool)

(assert (=> bs!571984 m!4145263))

(declare-fun m!4145265 () Bool)

(assert (=> bs!571984 m!4145265))

(assert (=> b!3641368 d!1070834))

(declare-fun b!3642028 () Bool)

(declare-fun e!2254541 () Bool)

(declare-fun e!2254542 () Bool)

(assert (=> b!3642028 (= e!2254541 e!2254542)))

(declare-fun res!1476379 () Bool)

(assert (=> b!3642028 (=> (not res!1476379) (not e!2254542))))

(declare-fun lt!1261144 () Option!8096)

(assert (=> b!3642028 (= res!1476379 (contains!7534 rules!3307 (get!12573 lt!1261144)))))

(declare-fun b!3642029 () Bool)

(declare-fun e!2254539 () Option!8096)

(assert (=> b!3642029 (= e!2254539 (Some!8095 (h!43799 rules!3307)))))

(declare-fun b!3642030 () Bool)

(declare-fun e!2254540 () Option!8096)

(assert (=> b!3642030 (= e!2254539 e!2254540)))

(declare-fun c!629734 () Bool)

(assert (=> b!3642030 (= c!629734 (and ((_ is Cons!38379) rules!3307) (not (= (tag!6484 (h!43799 rules!3307)) (tag!6484 (rule!8518 (_1!22258 lt!1260871)))))))))

(declare-fun b!3642031 () Bool)

(declare-fun lt!1261143 () Unit!55228)

(declare-fun lt!1261145 () Unit!55228)

(assert (=> b!3642031 (= lt!1261143 lt!1261145)))

(assert (=> b!3642031 (rulesInvariant!4720 thiss!23823 (t!296526 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!573 (LexerInterface!5323 Rule!11268 List!38503) Unit!55228)

(assert (=> b!3642031 (= lt!1261145 (lemmaInvariantOnRulesThenOnTail!573 thiss!23823 (h!43799 rules!3307) (t!296526 rules!3307)))))

(assert (=> b!3642031 (= e!2254540 (getRuleFromTag!1338 thiss!23823 (t!296526 rules!3307) (tag!6484 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun d!1070836 () Bool)

(assert (=> d!1070836 e!2254541))

(declare-fun res!1476380 () Bool)

(assert (=> d!1070836 (=> res!1476380 e!2254541)))

(declare-fun isEmpty!22729 (Option!8096) Bool)

(assert (=> d!1070836 (= res!1476380 (isEmpty!22729 lt!1261144))))

(assert (=> d!1070836 (= lt!1261144 e!2254539)))

(declare-fun c!629733 () Bool)

(assert (=> d!1070836 (= c!629733 (and ((_ is Cons!38379) rules!3307) (= (tag!6484 (h!43799 rules!3307)) (tag!6484 (rule!8518 (_1!22258 lt!1260871))))))))

(assert (=> d!1070836 (rulesInvariant!4720 thiss!23823 rules!3307)))

(assert (=> d!1070836 (= (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 (_1!22258 lt!1260871)))) lt!1261144)))

(declare-fun b!3642032 () Bool)

(assert (=> b!3642032 (= e!2254542 (= (tag!6484 (get!12573 lt!1261144)) (tag!6484 (rule!8518 (_1!22258 lt!1260871)))))))

(declare-fun b!3642033 () Bool)

(assert (=> b!3642033 (= e!2254540 None!8095)))

(assert (= (and d!1070836 c!629733) b!3642029))

(assert (= (and d!1070836 (not c!629733)) b!3642030))

(assert (= (and b!3642030 c!629734) b!3642031))

(assert (= (and b!3642030 (not c!629734)) b!3642033))

(assert (= (and d!1070836 (not res!1476380)) b!3642028))

(assert (= (and b!3642028 res!1476379) b!3642032))

(declare-fun m!4145267 () Bool)

(assert (=> b!3642028 m!4145267))

(assert (=> b!3642028 m!4145267))

(declare-fun m!4145269 () Bool)

(assert (=> b!3642028 m!4145269))

(declare-fun m!4145271 () Bool)

(assert (=> b!3642031 m!4145271))

(declare-fun m!4145273 () Bool)

(assert (=> b!3642031 m!4145273))

(declare-fun m!4145275 () Bool)

(assert (=> b!3642031 m!4145275))

(declare-fun m!4145277 () Bool)

(assert (=> d!1070836 m!4145277))

(assert (=> d!1070836 m!4144477))

(assert (=> b!3642032 m!4145267))

(assert (=> b!3641368 d!1070836))

(declare-fun b!3642045 () Bool)

(declare-fun e!2254547 () Bool)

(declare-fun lt!1261148 () List!38502)

(assert (=> b!3642045 (= e!2254547 (or (not (= suffix!1395 Nil!38378)) (= lt!1261148 lt!1260867)))))

(declare-fun b!3642043 () Bool)

(declare-fun e!2254548 () List!38502)

(assert (=> b!3642043 (= e!2254548 (Cons!38378 (h!43798 lt!1260867) (++!9550 (t!296525 lt!1260867) suffix!1395)))))

(declare-fun d!1070838 () Bool)

(assert (=> d!1070838 e!2254547))

(declare-fun res!1476386 () Bool)

(assert (=> d!1070838 (=> (not res!1476386) (not e!2254547))))

(assert (=> d!1070838 (= res!1476386 (= (content!5526 lt!1261148) ((_ map or) (content!5526 lt!1260867) (content!5526 suffix!1395))))))

(assert (=> d!1070838 (= lt!1261148 e!2254548)))

(declare-fun c!629737 () Bool)

(assert (=> d!1070838 (= c!629737 ((_ is Nil!38378) lt!1260867))))

(assert (=> d!1070838 (= (++!9550 lt!1260867 suffix!1395) lt!1261148)))

(declare-fun b!3642044 () Bool)

(declare-fun res!1476385 () Bool)

(assert (=> b!3642044 (=> (not res!1476385) (not e!2254547))))

(assert (=> b!3642044 (= res!1476385 (= (size!29292 lt!1261148) (+ (size!29292 lt!1260867) (size!29292 suffix!1395))))))

(declare-fun b!3642042 () Bool)

(assert (=> b!3642042 (= e!2254548 suffix!1395)))

(assert (= (and d!1070838 c!629737) b!3642042))

(assert (= (and d!1070838 (not c!629737)) b!3642043))

(assert (= (and d!1070838 res!1476386) b!3642044))

(assert (= (and b!3642044 res!1476385) b!3642045))

(declare-fun m!4145279 () Bool)

(assert (=> b!3642043 m!4145279))

(declare-fun m!4145281 () Bool)

(assert (=> d!1070838 m!4145281))

(declare-fun m!4145283 () Bool)

(assert (=> d!1070838 m!4145283))

(declare-fun m!4145285 () Bool)

(assert (=> d!1070838 m!4145285))

(declare-fun m!4145287 () Bool)

(assert (=> b!3642044 m!4145287))

(assert (=> b!3642044 m!4145185))

(declare-fun m!4145289 () Bool)

(assert (=> b!3642044 m!4145289))

(assert (=> b!3641368 d!1070838))

(declare-fun d!1070840 () Bool)

(assert (=> d!1070840 (= (isDefined!6329 lt!1260896) (not (isEmpty!22729 lt!1260896)))))

(declare-fun bs!571985 () Bool)

(assert (= bs!571985 d!1070840))

(declare-fun m!4145291 () Bool)

(assert (=> bs!571985 m!4145291))

(assert (=> b!3641368 d!1070840))

(declare-fun d!1070842 () Bool)

(declare-fun lt!1261149 () BalanceConc!23052)

(assert (=> d!1070842 (= (list!14208 lt!1261149) (originalCharacters!6448 (_1!22258 lt!1260871)))))

(assert (=> d!1070842 (= lt!1261149 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (value!183879 (_1!22258 lt!1260871))))))

(assert (=> d!1070842 (= (charsOf!3748 (_1!22258 lt!1260871)) lt!1261149)))

(declare-fun b_lambda!107967 () Bool)

(assert (=> (not b_lambda!107967) (not d!1070842)))

(declare-fun tb!209845 () Bool)

(declare-fun t!296592 () Bool)

(assert (=> (and b!3641366 (= (toChars!7885 (transformation!5734 (rule!8518 token!511))) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296592) tb!209845))

(declare-fun b!3642046 () Bool)

(declare-fun e!2254549 () Bool)

(declare-fun tp!1110855 () Bool)

(assert (=> b!3642046 (= e!2254549 (and (inv!51817 (c!629593 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (value!183879 (_1!22258 lt!1260871))))) tp!1110855))))

(declare-fun result!255574 () Bool)

(assert (=> tb!209845 (= result!255574 (and (inv!51818 (dynLambda!16704 (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871)))) (value!183879 (_1!22258 lt!1260871)))) e!2254549))))

(assert (= tb!209845 b!3642046))

(declare-fun m!4145293 () Bool)

(assert (=> b!3642046 m!4145293))

(declare-fun m!4145295 () Bool)

(assert (=> tb!209845 m!4145295))

(assert (=> d!1070842 t!296592))

(declare-fun b_and!268555 () Bool)

(assert (= b_and!268547 (and (=> t!296592 result!255574) b_and!268555)))

(declare-fun t!296594 () Bool)

(declare-fun tb!209847 () Bool)

(assert (=> (and b!3641369 (= (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296594) tb!209847))

(declare-fun result!255576 () Bool)

(assert (= result!255576 result!255574))

(assert (=> d!1070842 t!296594))

(declare-fun b_and!268557 () Bool)

(assert (= b_and!268549 (and (=> t!296594 result!255576) b_and!268557)))

(declare-fun t!296596 () Bool)

(declare-fun tb!209849 () Bool)

(assert (=> (and b!3641379 (= (toChars!7885 (transformation!5734 rule!403)) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296596) tb!209849))

(declare-fun result!255578 () Bool)

(assert (= result!255578 result!255574))

(assert (=> d!1070842 t!296596))

(declare-fun b_and!268559 () Bool)

(assert (= b_and!268551 (and (=> t!296596 result!255578) b_and!268559)))

(declare-fun t!296598 () Bool)

(declare-fun tb!209851 () Bool)

(assert (=> (and b!3641354 (= (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296598) tb!209851))

(declare-fun result!255580 () Bool)

(assert (= result!255580 result!255574))

(assert (=> d!1070842 t!296598))

(declare-fun b_and!268561 () Bool)

(assert (= b_and!268553 (and (=> t!296598 result!255580) b_and!268561)))

(declare-fun m!4145297 () Bool)

(assert (=> d!1070842 m!4145297))

(declare-fun m!4145299 () Bool)

(assert (=> d!1070842 m!4145299))

(assert (=> b!3641368 d!1070842))

(declare-fun b!3642058 () Bool)

(declare-fun e!2254557 () Bool)

(assert (=> b!3642058 (= e!2254557 (>= (size!29292 (++!9550 lt!1260873 (_2!22258 lt!1260871))) (size!29292 lt!1260873)))))

(declare-fun d!1070844 () Bool)

(assert (=> d!1070844 e!2254557))

(declare-fun res!1476397 () Bool)

(assert (=> d!1070844 (=> res!1476397 e!2254557)))

(declare-fun lt!1261152 () Bool)

(assert (=> d!1070844 (= res!1476397 (not lt!1261152))))

(declare-fun e!2254556 () Bool)

(assert (=> d!1070844 (= lt!1261152 e!2254556)))

(declare-fun res!1476395 () Bool)

(assert (=> d!1070844 (=> res!1476395 e!2254556)))

(assert (=> d!1070844 (= res!1476395 ((_ is Nil!38378) lt!1260873))))

(assert (=> d!1070844 (= (isPrefix!3097 lt!1260873 (++!9550 lt!1260873 (_2!22258 lt!1260871))) lt!1261152)))

(declare-fun b!3642055 () Bool)

(declare-fun e!2254558 () Bool)

(assert (=> b!3642055 (= e!2254556 e!2254558)))

(declare-fun res!1476398 () Bool)

(assert (=> b!3642055 (=> (not res!1476398) (not e!2254558))))

(assert (=> b!3642055 (= res!1476398 (not ((_ is Nil!38378) (++!9550 lt!1260873 (_2!22258 lt!1260871)))))))

(declare-fun b!3642057 () Bool)

(assert (=> b!3642057 (= e!2254558 (isPrefix!3097 (tail!5641 lt!1260873) (tail!5641 (++!9550 lt!1260873 (_2!22258 lt!1260871)))))))

(declare-fun b!3642056 () Bool)

(declare-fun res!1476396 () Bool)

(assert (=> b!3642056 (=> (not res!1476396) (not e!2254558))))

(assert (=> b!3642056 (= res!1476396 (= (head!7734 lt!1260873) (head!7734 (++!9550 lt!1260873 (_2!22258 lt!1260871)))))))

(assert (= (and d!1070844 (not res!1476395)) b!3642055))

(assert (= (and b!3642055 res!1476398) b!3642056))

(assert (= (and b!3642056 res!1476396) b!3642057))

(assert (= (and d!1070844 (not res!1476397)) b!3642058))

(assert (=> b!3642058 m!4144523))

(declare-fun m!4145301 () Bool)

(assert (=> b!3642058 m!4145301))

(assert (=> b!3642058 m!4144403))

(assert (=> b!3642057 m!4145065))

(assert (=> b!3642057 m!4144523))

(declare-fun m!4145303 () Bool)

(assert (=> b!3642057 m!4145303))

(assert (=> b!3642057 m!4145065))

(assert (=> b!3642057 m!4145303))

(declare-fun m!4145305 () Bool)

(assert (=> b!3642057 m!4145305))

(assert (=> b!3642056 m!4144433))

(assert (=> b!3642056 m!4144523))

(declare-fun m!4145307 () Bool)

(assert (=> b!3642056 m!4145307))

(assert (=> b!3641368 d!1070844))

(declare-fun b!3642062 () Bool)

(declare-fun e!2254560 () Bool)

(assert (=> b!3642062 (= e!2254560 (>= (size!29292 lt!1260870) (size!29292 lt!1260873)))))

(declare-fun d!1070846 () Bool)

(assert (=> d!1070846 e!2254560))

(declare-fun res!1476401 () Bool)

(assert (=> d!1070846 (=> res!1476401 e!2254560)))

(declare-fun lt!1261153 () Bool)

(assert (=> d!1070846 (= res!1476401 (not lt!1261153))))

(declare-fun e!2254559 () Bool)

(assert (=> d!1070846 (= lt!1261153 e!2254559)))

(declare-fun res!1476399 () Bool)

(assert (=> d!1070846 (=> res!1476399 e!2254559)))

(assert (=> d!1070846 (= res!1476399 ((_ is Nil!38378) lt!1260873))))

(assert (=> d!1070846 (= (isPrefix!3097 lt!1260873 lt!1260870) lt!1261153)))

(declare-fun b!3642059 () Bool)

(declare-fun e!2254561 () Bool)

(assert (=> b!3642059 (= e!2254559 e!2254561)))

(declare-fun res!1476402 () Bool)

(assert (=> b!3642059 (=> (not res!1476402) (not e!2254561))))

(assert (=> b!3642059 (= res!1476402 (not ((_ is Nil!38378) lt!1260870)))))

(declare-fun b!3642061 () Bool)

(assert (=> b!3642061 (= e!2254561 (isPrefix!3097 (tail!5641 lt!1260873) (tail!5641 lt!1260870)))))

(declare-fun b!3642060 () Bool)

(declare-fun res!1476400 () Bool)

(assert (=> b!3642060 (=> (not res!1476400) (not e!2254561))))

(assert (=> b!3642060 (= res!1476400 (= (head!7734 lt!1260873) (head!7734 lt!1260870)))))

(assert (= (and d!1070846 (not res!1476399)) b!3642059))

(assert (= (and b!3642059 res!1476402) b!3642060))

(assert (= (and b!3642060 res!1476400) b!3642061))

(assert (= (and d!1070846 (not res!1476401)) b!3642062))

(assert (=> b!3642062 m!4145007))

(assert (=> b!3642062 m!4144403))

(assert (=> b!3642061 m!4145065))

(assert (=> b!3642061 m!4145051))

(assert (=> b!3642061 m!4145065))

(assert (=> b!3642061 m!4145051))

(declare-fun m!4145309 () Bool)

(assert (=> b!3642061 m!4145309))

(assert (=> b!3642060 m!4144433))

(declare-fun m!4145311 () Bool)

(assert (=> b!3642060 m!4145311))

(assert (=> b!3641368 d!1070846))

(declare-fun d!1070848 () Bool)

(assert (=> d!1070848 (= (get!12574 lt!1260868) (v!37928 lt!1260868))))

(assert (=> b!3641368 d!1070848))

(declare-fun b!3642066 () Bool)

(declare-fun e!2254563 () Bool)

(assert (=> b!3642066 (= e!2254563 (>= (size!29292 lt!1260870) (size!29292 lt!1260867)))))

(declare-fun d!1070850 () Bool)

(assert (=> d!1070850 e!2254563))

(declare-fun res!1476405 () Bool)

(assert (=> d!1070850 (=> res!1476405 e!2254563)))

(declare-fun lt!1261154 () Bool)

(assert (=> d!1070850 (= res!1476405 (not lt!1261154))))

(declare-fun e!2254562 () Bool)

(assert (=> d!1070850 (= lt!1261154 e!2254562)))

(declare-fun res!1476403 () Bool)

(assert (=> d!1070850 (=> res!1476403 e!2254562)))

(assert (=> d!1070850 (= res!1476403 ((_ is Nil!38378) lt!1260867))))

(assert (=> d!1070850 (= (isPrefix!3097 lt!1260867 lt!1260870) lt!1261154)))

(declare-fun b!3642063 () Bool)

(declare-fun e!2254564 () Bool)

(assert (=> b!3642063 (= e!2254562 e!2254564)))

(declare-fun res!1476406 () Bool)

(assert (=> b!3642063 (=> (not res!1476406) (not e!2254564))))

(assert (=> b!3642063 (= res!1476406 (not ((_ is Nil!38378) lt!1260870)))))

(declare-fun b!3642065 () Bool)

(assert (=> b!3642065 (= e!2254564 (isPrefix!3097 (tail!5641 lt!1260867) (tail!5641 lt!1260870)))))

(declare-fun b!3642064 () Bool)

(declare-fun res!1476404 () Bool)

(assert (=> b!3642064 (=> (not res!1476404) (not e!2254564))))

(assert (=> b!3642064 (= res!1476404 (= (head!7734 lt!1260867) (head!7734 lt!1260870)))))

(assert (= (and d!1070850 (not res!1476403)) b!3642063))

(assert (= (and b!3642063 res!1476406) b!3642064))

(assert (= (and b!3642064 res!1476404) b!3642065))

(assert (= (and d!1070850 (not res!1476405)) b!3642066))

(assert (=> b!3642066 m!4145007))

(assert (=> b!3642066 m!4145185))

(assert (=> b!3642065 m!4145087))

(assert (=> b!3642065 m!4145051))

(assert (=> b!3642065 m!4145087))

(assert (=> b!3642065 m!4145051))

(declare-fun m!4145313 () Bool)

(assert (=> b!3642065 m!4145313))

(assert (=> b!3642064 m!4145095))

(assert (=> b!3642064 m!4145311))

(assert (=> b!3641368 d!1070850))

(declare-fun d!1070852 () Bool)

(assert (=> d!1070852 (isPrefix!3097 lt!1260873 (++!9550 lt!1260873 (_2!22258 lt!1260871)))))

(declare-fun lt!1261155 () Unit!55228)

(assert (=> d!1070852 (= lt!1261155 (choose!21423 lt!1260873 (_2!22258 lt!1260871)))))

(assert (=> d!1070852 (= (lemmaConcatTwoListThenFirstIsPrefix!2016 lt!1260873 (_2!22258 lt!1260871)) lt!1261155)))

(declare-fun bs!571986 () Bool)

(assert (= bs!571986 d!1070852))

(assert (=> bs!571986 m!4144523))

(assert (=> bs!571986 m!4144523))

(assert (=> bs!571986 m!4144525))

(declare-fun m!4145315 () Bool)

(assert (=> bs!571986 m!4145315))

(assert (=> b!3641368 d!1070852))

(declare-fun b!3642131 () Bool)

(declare-fun res!1476413 () Bool)

(declare-fun e!2254602 () Bool)

(assert (=> b!3642131 (=> (not res!1476413) (not e!2254602))))

(declare-fun lt!1261199 () Token!10834)

(assert (=> b!3642131 (= res!1476413 (matchR!5062 (regex!5734 (get!12573 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 lt!1261199))))) (list!14208 (charsOf!3748 lt!1261199))))))

(declare-fun d!1070854 () Bool)

(assert (=> d!1070854 (isDefined!6328 (maxPrefix!2857 thiss!23823 rules!3307 (++!9550 lt!1260867 suffix!1395)))))

(declare-fun lt!1261196 () Unit!55228)

(declare-fun e!2254603 () Unit!55228)

(assert (=> d!1070854 (= lt!1261196 e!2254603)))

(declare-fun c!629740 () Bool)

(assert (=> d!1070854 (= c!629740 (isEmpty!22727 (maxPrefix!2857 thiss!23823 rules!3307 (++!9550 lt!1260867 suffix!1395))))))

(declare-fun lt!1261200 () Unit!55228)

(declare-fun lt!1261202 () Unit!55228)

(assert (=> d!1070854 (= lt!1261200 lt!1261202)))

(assert (=> d!1070854 e!2254602))

(declare-fun res!1476414 () Bool)

(assert (=> d!1070854 (=> (not res!1476414) (not e!2254602))))

(assert (=> d!1070854 (= res!1476414 (isDefined!6329 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 lt!1261199)))))))

(assert (=> d!1070854 (= lt!1261202 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1338 thiss!23823 rules!3307 lt!1260867 lt!1261199))))

(declare-fun lt!1261206 () Unit!55228)

(declare-fun lt!1261197 () Unit!55228)

(assert (=> d!1070854 (= lt!1261206 lt!1261197)))

(declare-fun lt!1261195 () List!38502)

(assert (=> d!1070854 (isPrefix!3097 lt!1261195 (++!9550 lt!1260867 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!494 (List!38502 List!38502 List!38502) Unit!55228)

(assert (=> d!1070854 (= lt!1261197 (lemmaPrefixStaysPrefixWhenAddingToSuffix!494 lt!1261195 lt!1260867 suffix!1395))))

(assert (=> d!1070854 (= lt!1261195 (list!14208 (charsOf!3748 lt!1261199)))))

(declare-fun lt!1261207 () Unit!55228)

(declare-fun lt!1261194 () Unit!55228)

(assert (=> d!1070854 (= lt!1261207 lt!1261194)))

(declare-fun lt!1261208 () List!38502)

(declare-fun lt!1261204 () List!38502)

(assert (=> d!1070854 (isPrefix!3097 lt!1261208 (++!9550 lt!1261208 lt!1261204))))

(assert (=> d!1070854 (= lt!1261194 (lemmaConcatTwoListThenFirstIsPrefix!2016 lt!1261208 lt!1261204))))

(assert (=> d!1070854 (= lt!1261204 (_2!22258 (get!12574 (maxPrefix!2857 thiss!23823 rules!3307 lt!1260867))))))

(assert (=> d!1070854 (= lt!1261208 (list!14208 (charsOf!3748 lt!1261199)))))

(declare-datatypes ((List!38506 0))(
  ( (Nil!38382) (Cons!38382 (h!43802 Token!10834) (t!296649 List!38506)) )
))
(declare-fun head!7736 (List!38506) Token!10834)

(declare-datatypes ((IArray!23447 0))(
  ( (IArray!23448 (innerList!11781 List!38506)) )
))
(declare-datatypes ((Conc!11721 0))(
  ( (Node!11721 (left!29970 Conc!11721) (right!30300 Conc!11721) (csize!23672 Int) (cheight!11932 Int)) (Leaf!18199 (xs!14923 IArray!23447) (csize!23673 Int)) (Empty!11721) )
))
(declare-datatypes ((BalanceConc!23056 0))(
  ( (BalanceConc!23057 (c!629747 Conc!11721)) )
))
(declare-fun list!14212 (BalanceConc!23056) List!38506)

(declare-datatypes ((tuple2!38256 0))(
  ( (tuple2!38257 (_1!22262 BalanceConc!23056) (_2!22262 BalanceConc!23052)) )
))
(declare-fun lex!2526 (LexerInterface!5323 List!38503 BalanceConc!23052) tuple2!38256)

(assert (=> d!1070854 (= lt!1261199 (head!7736 (list!14212 (_1!22262 (lex!2526 thiss!23823 rules!3307 (seqFromList!4283 lt!1260867))))))))

(assert (=> d!1070854 (not (isEmpty!22725 rules!3307))))

(assert (=> d!1070854 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1001 thiss!23823 rules!3307 lt!1260867 suffix!1395) lt!1261196)))

(declare-fun b!3642134 () Bool)

(declare-fun Unit!55235 () Unit!55228)

(assert (=> b!3642134 (= e!2254603 Unit!55235)))

(declare-fun b!3642132 () Bool)

(assert (=> b!3642132 (= e!2254602 (= (rule!8518 lt!1261199) (get!12573 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 lt!1261199))))))))

(declare-fun b!3642133 () Bool)

(declare-fun Unit!55236 () Unit!55228)

(assert (=> b!3642133 (= e!2254603 Unit!55236)))

(declare-fun lt!1261198 () List!38502)

(assert (=> b!3642133 (= lt!1261198 (++!9550 lt!1260867 suffix!1395))))

(declare-fun lt!1261209 () Unit!55228)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!530 (LexerInterface!5323 Rule!11268 List!38503 List!38502) Unit!55228)

(assert (=> b!3642133 (= lt!1261209 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!530 thiss!23823 (rule!8518 lt!1261199) rules!3307 lt!1261198))))

(assert (=> b!3642133 (isEmpty!22727 (maxPrefixOneRule!1995 thiss!23823 (rule!8518 lt!1261199) lt!1261198))))

(declare-fun lt!1261203 () Unit!55228)

(assert (=> b!3642133 (= lt!1261203 lt!1261209)))

(declare-fun lt!1261201 () List!38502)

(assert (=> b!3642133 (= lt!1261201 (list!14208 (charsOf!3748 lt!1261199)))))

(declare-fun lt!1261210 () Unit!55228)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!518 (LexerInterface!5323 Rule!11268 List!38502 List!38502) Unit!55228)

(assert (=> b!3642133 (= lt!1261210 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!518 thiss!23823 (rule!8518 lt!1261199) lt!1261201 (++!9550 lt!1260867 suffix!1395)))))

(assert (=> b!3642133 (not (matchR!5062 (regex!5734 (rule!8518 lt!1261199)) lt!1261201))))

(declare-fun lt!1261205 () Unit!55228)

(assert (=> b!3642133 (= lt!1261205 lt!1261210)))

(assert (=> b!3642133 false))

(assert (= (and d!1070854 res!1476414) b!3642131))

(assert (= (and b!3642131 res!1476413) b!3642132))

(assert (= (and d!1070854 c!629740) b!3642133))

(assert (= (and d!1070854 (not c!629740)) b!3642134))

(declare-fun m!4145345 () Bool)

(assert (=> b!3642131 m!4145345))

(declare-fun m!4145347 () Bool)

(assert (=> b!3642131 m!4145347))

(assert (=> b!3642131 m!4145347))

(declare-fun m!4145349 () Bool)

(assert (=> b!3642131 m!4145349))

(declare-fun m!4145351 () Bool)

(assert (=> b!3642131 m!4145351))

(declare-fun m!4145353 () Bool)

(assert (=> b!3642131 m!4145353))

(assert (=> b!3642131 m!4145351))

(assert (=> b!3642131 m!4145345))

(assert (=> d!1070854 m!4145345))

(assert (=> d!1070854 m!4145347))

(declare-fun m!4145355 () Bool)

(assert (=> d!1070854 m!4145355))

(declare-fun m!4145357 () Bool)

(assert (=> d!1070854 m!4145357))

(declare-fun m!4145359 () Bool)

(assert (=> d!1070854 m!4145359))

(declare-fun m!4145361 () Bool)

(assert (=> d!1070854 m!4145361))

(assert (=> d!1070854 m!4144539))

(declare-fun m!4145363 () Bool)

(assert (=> d!1070854 m!4145363))

(assert (=> d!1070854 m!4144529))

(declare-fun m!4145365 () Bool)

(assert (=> d!1070854 m!4145365))

(assert (=> d!1070854 m!4145351))

(declare-fun m!4145367 () Bool)

(assert (=> d!1070854 m!4145367))

(assert (=> d!1070854 m!4144529))

(declare-fun m!4145369 () Bool)

(assert (=> d!1070854 m!4145369))

(declare-fun m!4145371 () Bool)

(assert (=> d!1070854 m!4145371))

(declare-fun m!4145373 () Bool)

(assert (=> d!1070854 m!4145373))

(assert (=> d!1070854 m!4145357))

(assert (=> d!1070854 m!4145351))

(assert (=> d!1070854 m!4145345))

(declare-fun m!4145375 () Bool)

(assert (=> d!1070854 m!4145375))

(assert (=> d!1070854 m!4144539))

(declare-fun m!4145377 () Bool)

(assert (=> d!1070854 m!4145377))

(assert (=> d!1070854 m!4144535))

(assert (=> d!1070854 m!4145361))

(declare-fun m!4145379 () Bool)

(assert (=> d!1070854 m!4145379))

(assert (=> d!1070854 m!4145371))

(declare-fun m!4145381 () Bool)

(assert (=> d!1070854 m!4145381))

(assert (=> d!1070854 m!4144529))

(assert (=> d!1070854 m!4145371))

(assert (=> d!1070854 m!4145365))

(declare-fun m!4145383 () Bool)

(assert (=> d!1070854 m!4145383))

(assert (=> b!3642132 m!4145351))

(assert (=> b!3642132 m!4145351))

(assert (=> b!3642132 m!4145353))

(assert (=> b!3642133 m!4145345))

(assert (=> b!3642133 m!4145347))

(assert (=> b!3642133 m!4145345))

(declare-fun m!4145385 () Bool)

(assert (=> b!3642133 m!4145385))

(declare-fun m!4145387 () Bool)

(assert (=> b!3642133 m!4145387))

(assert (=> b!3642133 m!4144529))

(declare-fun m!4145389 () Bool)

(assert (=> b!3642133 m!4145389))

(assert (=> b!3642133 m!4144529))

(assert (=> b!3642133 m!4145385))

(declare-fun m!4145391 () Bool)

(assert (=> b!3642133 m!4145391))

(declare-fun m!4145393 () Bool)

(assert (=> b!3642133 m!4145393))

(assert (=> b!3641368 d!1070854))

(declare-fun lt!1261211 () List!38502)

(declare-fun e!2254604 () Bool)

(declare-fun b!3642138 () Bool)

(assert (=> b!3642138 (= e!2254604 (or (not (= (_2!22258 lt!1260871) Nil!38378)) (= lt!1261211 lt!1260873)))))

(declare-fun b!3642136 () Bool)

(declare-fun e!2254605 () List!38502)

(assert (=> b!3642136 (= e!2254605 (Cons!38378 (h!43798 lt!1260873) (++!9550 (t!296525 lt!1260873) (_2!22258 lt!1260871))))))

(declare-fun d!1070862 () Bool)

(assert (=> d!1070862 e!2254604))

(declare-fun res!1476416 () Bool)

(assert (=> d!1070862 (=> (not res!1476416) (not e!2254604))))

(assert (=> d!1070862 (= res!1476416 (= (content!5526 lt!1261211) ((_ map or) (content!5526 lt!1260873) (content!5526 (_2!22258 lt!1260871)))))))

(assert (=> d!1070862 (= lt!1261211 e!2254605)))

(declare-fun c!629741 () Bool)

(assert (=> d!1070862 (= c!629741 ((_ is Nil!38378) lt!1260873))))

(assert (=> d!1070862 (= (++!9550 lt!1260873 (_2!22258 lt!1260871)) lt!1261211)))

(declare-fun b!3642137 () Bool)

(declare-fun res!1476415 () Bool)

(assert (=> b!3642137 (=> (not res!1476415) (not e!2254604))))

(assert (=> b!3642137 (= res!1476415 (= (size!29292 lt!1261211) (+ (size!29292 lt!1260873) (size!29292 (_2!22258 lt!1260871)))))))

(declare-fun b!3642135 () Bool)

(assert (=> b!3642135 (= e!2254605 (_2!22258 lt!1260871))))

(assert (= (and d!1070862 c!629741) b!3642135))

(assert (= (and d!1070862 (not c!629741)) b!3642136))

(assert (= (and d!1070862 res!1476416) b!3642137))

(assert (= (and b!3642137 res!1476415) b!3642138))

(declare-fun m!4145395 () Bool)

(assert (=> b!3642136 m!4145395))

(declare-fun m!4145397 () Bool)

(assert (=> d!1070862 m!4145397))

(assert (=> d!1070862 m!4145127))

(declare-fun m!4145399 () Bool)

(assert (=> d!1070862 m!4145399))

(declare-fun m!4145401 () Bool)

(assert (=> b!3642137 m!4145401))

(assert (=> b!3642137 m!4144403))

(declare-fun m!4145403 () Bool)

(assert (=> b!3642137 m!4145403))

(assert (=> b!3641368 d!1070862))

(declare-fun d!1070864 () Bool)

(declare-fun e!2254608 () Bool)

(assert (=> d!1070864 e!2254608))

(declare-fun res!1476421 () Bool)

(assert (=> d!1070864 (=> (not res!1476421) (not e!2254608))))

(assert (=> d!1070864 (= res!1476421 (isDefined!6329 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 (_1!22258 lt!1260871))))))))

(declare-fun lt!1261214 () Unit!55228)

(declare-fun choose!21425 (LexerInterface!5323 List!38503 List!38502 Token!10834) Unit!55228)

(assert (=> d!1070864 (= lt!1261214 (choose!21425 thiss!23823 rules!3307 lt!1260870 (_1!22258 lt!1260871)))))

(assert (=> d!1070864 (rulesInvariant!4720 thiss!23823 rules!3307)))

(assert (=> d!1070864 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1338 thiss!23823 rules!3307 lt!1260870 (_1!22258 lt!1260871)) lt!1261214)))

(declare-fun b!3642143 () Bool)

(declare-fun res!1476422 () Bool)

(assert (=> b!3642143 (=> (not res!1476422) (not e!2254608))))

(assert (=> b!3642143 (= res!1476422 (matchR!5062 (regex!5734 (get!12573 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 (_1!22258 lt!1260871)))))) (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))))))

(declare-fun b!3642144 () Bool)

(assert (=> b!3642144 (= e!2254608 (= (rule!8518 (_1!22258 lt!1260871)) (get!12573 (getRuleFromTag!1338 thiss!23823 rules!3307 (tag!6484 (rule!8518 (_1!22258 lt!1260871)))))))))

(assert (= (and d!1070864 res!1476421) b!3642143))

(assert (= (and b!3642143 res!1476422) b!3642144))

(assert (=> d!1070864 m!4144509))

(assert (=> d!1070864 m!4144509))

(declare-fun m!4145405 () Bool)

(assert (=> d!1070864 m!4145405))

(declare-fun m!4145407 () Bool)

(assert (=> d!1070864 m!4145407))

(assert (=> d!1070864 m!4144477))

(assert (=> b!3642143 m!4144509))

(assert (=> b!3642143 m!4144487))

(assert (=> b!3642143 m!4144489))

(assert (=> b!3642143 m!4144489))

(declare-fun m!4145409 () Bool)

(assert (=> b!3642143 m!4145409))

(assert (=> b!3642143 m!4144509))

(declare-fun m!4145411 () Bool)

(assert (=> b!3642143 m!4145411))

(assert (=> b!3642143 m!4144487))

(assert (=> b!3642144 m!4144509))

(assert (=> b!3642144 m!4144509))

(assert (=> b!3642144 m!4145411))

(assert (=> b!3641368 d!1070864))

(declare-fun d!1070866 () Bool)

(declare-fun lt!1261215 () Bool)

(assert (=> d!1070866 (= lt!1261215 (select (content!5526 lt!1260867) lt!1260876))))

(declare-fun e!2254609 () Bool)

(assert (=> d!1070866 (= lt!1261215 e!2254609)))

(declare-fun res!1476424 () Bool)

(assert (=> d!1070866 (=> (not res!1476424) (not e!2254609))))

(assert (=> d!1070866 (= res!1476424 ((_ is Cons!38378) lt!1260867))))

(assert (=> d!1070866 (= (contains!7533 lt!1260867 lt!1260876) lt!1261215)))

(declare-fun b!3642145 () Bool)

(declare-fun e!2254610 () Bool)

(assert (=> b!3642145 (= e!2254609 e!2254610)))

(declare-fun res!1476423 () Bool)

(assert (=> b!3642145 (=> res!1476423 e!2254610)))

(assert (=> b!3642145 (= res!1476423 (= (h!43798 lt!1260867) lt!1260876))))

(declare-fun b!3642146 () Bool)

(assert (=> b!3642146 (= e!2254610 (contains!7533 (t!296525 lt!1260867) lt!1260876))))

(assert (= (and d!1070866 res!1476424) b!3642145))

(assert (= (and b!3642145 (not res!1476423)) b!3642146))

(assert (=> d!1070866 m!4145283))

(declare-fun m!4145413 () Bool)

(assert (=> d!1070866 m!4145413))

(declare-fun m!4145415 () Bool)

(assert (=> b!3642146 m!4145415))

(assert (=> b!3641346 d!1070866))

(declare-fun b!3642147 () Bool)

(declare-fun e!2254616 () Bool)

(declare-fun e!2254615 () Bool)

(assert (=> b!3642147 (= e!2254616 e!2254615)))

(declare-fun res!1476429 () Bool)

(assert (=> b!3642147 (=> (not res!1476429) (not e!2254615))))

(declare-fun lt!1261216 () Bool)

(assert (=> b!3642147 (= res!1476429 (not lt!1261216))))

(declare-fun b!3642148 () Bool)

(declare-fun e!2254617 () Bool)

(assert (=> b!3642148 (= e!2254617 (not (= (head!7734 (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))) (c!629592 (regex!5734 lt!1260890)))))))

(declare-fun b!3642149 () Bool)

(declare-fun res!1476432 () Bool)

(assert (=> b!3642149 (=> res!1476432 e!2254617)))

(assert (=> b!3642149 (= res!1476432 (not (isEmpty!22724 (tail!5641 (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))))))))

(declare-fun b!3642150 () Bool)

(assert (=> b!3642150 (= e!2254615 e!2254617)))

(declare-fun res!1476426 () Bool)

(assert (=> b!3642150 (=> res!1476426 e!2254617)))

(declare-fun call!263280 () Bool)

(assert (=> b!3642150 (= res!1476426 call!263280)))

(declare-fun b!3642151 () Bool)

(declare-fun e!2254614 () Bool)

(declare-fun e!2254613 () Bool)

(assert (=> b!3642151 (= e!2254614 e!2254613)))

(declare-fun c!629743 () Bool)

(assert (=> b!3642151 (= c!629743 ((_ is EmptyLang!10493) (regex!5734 lt!1260890)))))

(declare-fun b!3642152 () Bool)

(declare-fun e!2254612 () Bool)

(assert (=> b!3642152 (= e!2254612 (= (head!7734 (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))) (c!629592 (regex!5734 lt!1260890))))))

(declare-fun b!3642153 () Bool)

(assert (=> b!3642153 (= e!2254614 (= lt!1261216 call!263280))))

(declare-fun b!3642154 () Bool)

(declare-fun res!1476427 () Bool)

(assert (=> b!3642154 (=> res!1476427 e!2254616)))

(assert (=> b!3642154 (= res!1476427 e!2254612)))

(declare-fun res!1476430 () Bool)

(assert (=> b!3642154 (=> (not res!1476430) (not e!2254612))))

(assert (=> b!3642154 (= res!1476430 lt!1261216)))

(declare-fun d!1070868 () Bool)

(assert (=> d!1070868 e!2254614))

(declare-fun c!629744 () Bool)

(assert (=> d!1070868 (= c!629744 ((_ is EmptyExpr!10493) (regex!5734 lt!1260890)))))

(declare-fun e!2254611 () Bool)

(assert (=> d!1070868 (= lt!1261216 e!2254611)))

(declare-fun c!629742 () Bool)

(assert (=> d!1070868 (= c!629742 (isEmpty!22724 (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))))))

(assert (=> d!1070868 (validRegex!4805 (regex!5734 lt!1260890))))

(assert (=> d!1070868 (= (matchR!5062 (regex!5734 lt!1260890) (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))) lt!1261216)))

(declare-fun b!3642155 () Bool)

(declare-fun res!1476428 () Bool)

(assert (=> b!3642155 (=> (not res!1476428) (not e!2254612))))

(assert (=> b!3642155 (= res!1476428 (not call!263280))))

(declare-fun b!3642156 () Bool)

(declare-fun res!1476431 () Bool)

(assert (=> b!3642156 (=> res!1476431 e!2254616)))

(assert (=> b!3642156 (= res!1476431 (not ((_ is ElementMatch!10493) (regex!5734 lt!1260890))))))

(assert (=> b!3642156 (= e!2254613 e!2254616)))

(declare-fun b!3642157 () Bool)

(assert (=> b!3642157 (= e!2254611 (nullable!3643 (regex!5734 lt!1260890)))))

(declare-fun b!3642158 () Bool)

(assert (=> b!3642158 (= e!2254611 (matchR!5062 (derivativeStep!3192 (regex!5734 lt!1260890) (head!7734 (list!14208 (charsOf!3748 (_1!22258 lt!1260871))))) (tail!5641 (list!14208 (charsOf!3748 (_1!22258 lt!1260871))))))))

(declare-fun b!3642159 () Bool)

(assert (=> b!3642159 (= e!2254613 (not lt!1261216))))

(declare-fun bm!263275 () Bool)

(assert (=> bm!263275 (= call!263280 (isEmpty!22724 (list!14208 (charsOf!3748 (_1!22258 lt!1260871)))))))

(declare-fun b!3642160 () Bool)

(declare-fun res!1476425 () Bool)

(assert (=> b!3642160 (=> (not res!1476425) (not e!2254612))))

(assert (=> b!3642160 (= res!1476425 (isEmpty!22724 (tail!5641 (list!14208 (charsOf!3748 (_1!22258 lt!1260871))))))))

(assert (= (and d!1070868 c!629742) b!3642157))

(assert (= (and d!1070868 (not c!629742)) b!3642158))

(assert (= (and d!1070868 c!629744) b!3642153))

(assert (= (and d!1070868 (not c!629744)) b!3642151))

(assert (= (and b!3642151 c!629743) b!3642159))

(assert (= (and b!3642151 (not c!629743)) b!3642156))

(assert (= (and b!3642156 (not res!1476431)) b!3642154))

(assert (= (and b!3642154 res!1476430) b!3642155))

(assert (= (and b!3642155 res!1476428) b!3642160))

(assert (= (and b!3642160 res!1476425) b!3642152))

(assert (= (and b!3642154 (not res!1476427)) b!3642147))

(assert (= (and b!3642147 res!1476429) b!3642150))

(assert (= (and b!3642150 (not res!1476426)) b!3642149))

(assert (= (and b!3642149 (not res!1476432)) b!3642148))

(assert (= (or b!3642153 b!3642150 b!3642155) bm!263275))

(declare-fun m!4145417 () Bool)

(assert (=> b!3642157 m!4145417))

(assert (=> b!3642149 m!4144489))

(declare-fun m!4145419 () Bool)

(assert (=> b!3642149 m!4145419))

(assert (=> b!3642149 m!4145419))

(declare-fun m!4145421 () Bool)

(assert (=> b!3642149 m!4145421))

(assert (=> d!1070868 m!4144489))

(declare-fun m!4145423 () Bool)

(assert (=> d!1070868 m!4145423))

(declare-fun m!4145425 () Bool)

(assert (=> d!1070868 m!4145425))

(assert (=> b!3642148 m!4144489))

(declare-fun m!4145427 () Bool)

(assert (=> b!3642148 m!4145427))

(assert (=> b!3642158 m!4144489))

(assert (=> b!3642158 m!4145427))

(assert (=> b!3642158 m!4145427))

(declare-fun m!4145429 () Bool)

(assert (=> b!3642158 m!4145429))

(assert (=> b!3642158 m!4144489))

(assert (=> b!3642158 m!4145419))

(assert (=> b!3642158 m!4145429))

(assert (=> b!3642158 m!4145419))

(declare-fun m!4145431 () Bool)

(assert (=> b!3642158 m!4145431))

(assert (=> b!3642160 m!4144489))

(assert (=> b!3642160 m!4145419))

(assert (=> b!3642160 m!4145419))

(assert (=> b!3642160 m!4145421))

(assert (=> bm!263275 m!4144489))

(assert (=> bm!263275 m!4145423))

(assert (=> b!3642152 m!4144489))

(assert (=> b!3642152 m!4145427))

(assert (=> b!3641348 d!1070868))

(declare-fun d!1070870 () Bool)

(assert (=> d!1070870 (= (list!14208 (charsOf!3748 (_1!22258 lt!1260871))) (list!14211 (c!629593 (charsOf!3748 (_1!22258 lt!1260871)))))))

(declare-fun bs!571988 () Bool)

(assert (= bs!571988 d!1070870))

(declare-fun m!4145433 () Bool)

(assert (=> bs!571988 m!4145433))

(assert (=> b!3641348 d!1070870))

(assert (=> b!3641348 d!1070842))

(declare-fun d!1070872 () Bool)

(assert (=> d!1070872 (= (get!12573 lt!1260896) (v!37927 lt!1260896))))

(assert (=> b!3641348 d!1070872))

(declare-fun d!1070874 () Bool)

(declare-fun res!1476435 () Bool)

(declare-fun e!2254620 () Bool)

(assert (=> d!1070874 (=> (not res!1476435) (not e!2254620))))

(declare-fun rulesValid!2200 (LexerInterface!5323 List!38503) Bool)

(assert (=> d!1070874 (= res!1476435 (rulesValid!2200 thiss!23823 rules!3307))))

(assert (=> d!1070874 (= (rulesInvariant!4720 thiss!23823 rules!3307) e!2254620)))

(declare-fun b!3642163 () Bool)

(declare-datatypes ((List!38507 0))(
  ( (Nil!38383) (Cons!38383 (h!43803 String!43154) (t!296650 List!38507)) )
))
(declare-fun noDuplicateTag!2196 (LexerInterface!5323 List!38503 List!38507) Bool)

(assert (=> b!3642163 (= e!2254620 (noDuplicateTag!2196 thiss!23823 rules!3307 Nil!38383))))

(assert (= (and d!1070874 res!1476435) b!3642163))

(declare-fun m!4145435 () Bool)

(assert (=> d!1070874 m!4145435))

(declare-fun m!4145437 () Bool)

(assert (=> b!3642163 m!4145437))

(assert (=> b!3641349 d!1070874))

(declare-fun d!1070876 () Bool)

(declare-fun lt!1261217 () Bool)

(assert (=> d!1070876 (= lt!1261217 (select (content!5526 lt!1260878) lt!1260876))))

(declare-fun e!2254621 () Bool)

(assert (=> d!1070876 (= lt!1261217 e!2254621)))

(declare-fun res!1476437 () Bool)

(assert (=> d!1070876 (=> (not res!1476437) (not e!2254621))))

(assert (=> d!1070876 (= res!1476437 ((_ is Cons!38378) lt!1260878))))

(assert (=> d!1070876 (= (contains!7533 lt!1260878 lt!1260876) lt!1261217)))

(declare-fun b!3642164 () Bool)

(declare-fun e!2254622 () Bool)

(assert (=> b!3642164 (= e!2254621 e!2254622)))

(declare-fun res!1476436 () Bool)

(assert (=> b!3642164 (=> res!1476436 e!2254622)))

(assert (=> b!3642164 (= res!1476436 (= (h!43798 lt!1260878) lt!1260876))))

(declare-fun b!3642165 () Bool)

(assert (=> b!3642165 (= e!2254622 (contains!7533 (t!296525 lt!1260878) lt!1260876))))

(assert (= (and d!1070876 res!1476437) b!3642164))

(assert (= (and b!3642164 (not res!1476436)) b!3642165))

(assert (=> d!1070876 m!4145143))

(declare-fun m!4145439 () Bool)

(assert (=> d!1070876 m!4145439))

(declare-fun m!4145441 () Bool)

(assert (=> b!3642165 m!4145441))

(assert (=> b!3641350 d!1070876))

(declare-fun d!1070878 () Bool)

(assert (=> d!1070878 (= (head!7734 lt!1260873) (h!43798 lt!1260873))))

(assert (=> b!3641350 d!1070878))

(declare-fun d!1070880 () Bool)

(assert (=> d!1070880 (not (matchR!5062 (regex!5734 rule!403) lt!1260867))))

(declare-fun lt!1261220 () Unit!55228)

(declare-fun choose!21426 (Regex!10493 List!38502 C!21172) Unit!55228)

(assert (=> d!1070880 (= lt!1261220 (choose!21426 (regex!5734 rule!403) lt!1260867 lt!1260876))))

(assert (=> d!1070880 (validRegex!4805 (regex!5734 rule!403))))

(assert (=> d!1070880 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!682 (regex!5734 rule!403) lt!1260867 lt!1260876) lt!1261220)))

(declare-fun bs!571989 () Bool)

(assert (= bs!571989 d!1070880))

(assert (=> bs!571989 m!4144453))

(declare-fun m!4145443 () Bool)

(assert (=> bs!571989 m!4145443))

(assert (=> bs!571989 m!4145093))

(assert (=> b!3641352 d!1070880))

(declare-fun d!1070882 () Bool)

(assert (=> d!1070882 (= (isEmpty!22724 suffix!1395) ((_ is Nil!38378) suffix!1395))))

(assert (=> b!3641373 d!1070882))

(declare-fun b!3642170 () Bool)

(declare-fun e!2254625 () Bool)

(declare-fun tp!1110905 () Bool)

(assert (=> b!3642170 (= e!2254625 (and tp_is_empty!18069 tp!1110905))))

(assert (=> b!3641359 (= tp!1110838 e!2254625)))

(assert (= (and b!3641359 ((_ is Cons!38378) (originalCharacters!6448 token!511))) b!3642170))

(declare-fun b!3642184 () Bool)

(declare-fun e!2254628 () Bool)

(declare-fun tp!1110919 () Bool)

(declare-fun tp!1110918 () Bool)

(assert (=> b!3642184 (= e!2254628 (and tp!1110919 tp!1110918))))

(declare-fun b!3642182 () Bool)

(declare-fun tp!1110916 () Bool)

(declare-fun tp!1110917 () Bool)

(assert (=> b!3642182 (= e!2254628 (and tp!1110916 tp!1110917))))

(declare-fun b!3642181 () Bool)

(assert (=> b!3642181 (= e!2254628 tp_is_empty!18069)))

(declare-fun b!3642183 () Bool)

(declare-fun tp!1110920 () Bool)

(assert (=> b!3642183 (= e!2254628 tp!1110920)))

(assert (=> b!3641343 (= tp!1110835 e!2254628)))

(assert (= (and b!3641343 ((_ is ElementMatch!10493) (regex!5734 anOtherTypeRule!33))) b!3642181))

(assert (= (and b!3641343 ((_ is Concat!16458) (regex!5734 anOtherTypeRule!33))) b!3642182))

(assert (= (and b!3641343 ((_ is Star!10493) (regex!5734 anOtherTypeRule!33))) b!3642183))

(assert (= (and b!3641343 ((_ is Union!10493) (regex!5734 anOtherTypeRule!33))) b!3642184))

(declare-fun b!3642188 () Bool)

(declare-fun e!2254629 () Bool)

(declare-fun tp!1110924 () Bool)

(declare-fun tp!1110923 () Bool)

(assert (=> b!3642188 (= e!2254629 (and tp!1110924 tp!1110923))))

(declare-fun b!3642186 () Bool)

(declare-fun tp!1110921 () Bool)

(declare-fun tp!1110922 () Bool)

(assert (=> b!3642186 (= e!2254629 (and tp!1110921 tp!1110922))))

(declare-fun b!3642185 () Bool)

(assert (=> b!3642185 (= e!2254629 tp_is_empty!18069)))

(declare-fun b!3642187 () Bool)

(declare-fun tp!1110925 () Bool)

(assert (=> b!3642187 (= e!2254629 tp!1110925)))

(assert (=> b!3641358 (= tp!1110841 e!2254629)))

(assert (= (and b!3641358 ((_ is ElementMatch!10493) (regex!5734 (rule!8518 token!511)))) b!3642185))

(assert (= (and b!3641358 ((_ is Concat!16458) (regex!5734 (rule!8518 token!511)))) b!3642186))

(assert (= (and b!3641358 ((_ is Star!10493) (regex!5734 (rule!8518 token!511)))) b!3642187))

(assert (= (and b!3641358 ((_ is Union!10493) (regex!5734 (rule!8518 token!511)))) b!3642188))

(declare-fun b!3642189 () Bool)

(declare-fun e!2254630 () Bool)

(declare-fun tp!1110926 () Bool)

(assert (=> b!3642189 (= e!2254630 (and tp_is_empty!18069 tp!1110926))))

(assert (=> b!3641353 (= tp!1110836 e!2254630)))

(assert (= (and b!3641353 ((_ is Cons!38378) (t!296525 suffix!1395))) b!3642189))

(declare-fun b!3642193 () Bool)

(declare-fun e!2254631 () Bool)

(declare-fun tp!1110930 () Bool)

(declare-fun tp!1110929 () Bool)

(assert (=> b!3642193 (= e!2254631 (and tp!1110930 tp!1110929))))

(declare-fun b!3642191 () Bool)

(declare-fun tp!1110927 () Bool)

(declare-fun tp!1110928 () Bool)

(assert (=> b!3642191 (= e!2254631 (and tp!1110927 tp!1110928))))

(declare-fun b!3642190 () Bool)

(assert (=> b!3642190 (= e!2254631 tp_is_empty!18069)))

(declare-fun b!3642192 () Bool)

(declare-fun tp!1110931 () Bool)

(assert (=> b!3642192 (= e!2254631 tp!1110931)))

(assert (=> b!3641356 (= tp!1110839 e!2254631)))

(assert (= (and b!3641356 ((_ is ElementMatch!10493) (regex!5734 rule!403))) b!3642190))

(assert (= (and b!3641356 ((_ is Concat!16458) (regex!5734 rule!403))) b!3642191))

(assert (= (and b!3641356 ((_ is Star!10493) (regex!5734 rule!403))) b!3642192))

(assert (= (and b!3641356 ((_ is Union!10493) (regex!5734 rule!403))) b!3642193))

(declare-fun b!3642197 () Bool)

(declare-fun e!2254632 () Bool)

(declare-fun tp!1110935 () Bool)

(declare-fun tp!1110934 () Bool)

(assert (=> b!3642197 (= e!2254632 (and tp!1110935 tp!1110934))))

(declare-fun b!3642195 () Bool)

(declare-fun tp!1110932 () Bool)

(declare-fun tp!1110933 () Bool)

(assert (=> b!3642195 (= e!2254632 (and tp!1110932 tp!1110933))))

(declare-fun b!3642194 () Bool)

(assert (=> b!3642194 (= e!2254632 tp_is_empty!18069)))

(declare-fun b!3642196 () Bool)

(declare-fun tp!1110936 () Bool)

(assert (=> b!3642196 (= e!2254632 tp!1110936)))

(assert (=> b!3641367 (= tp!1110845 e!2254632)))

(assert (= (and b!3641367 ((_ is ElementMatch!10493) (regex!5734 (h!43799 rules!3307)))) b!3642194))

(assert (= (and b!3641367 ((_ is Concat!16458) (regex!5734 (h!43799 rules!3307)))) b!3642195))

(assert (= (and b!3641367 ((_ is Star!10493) (regex!5734 (h!43799 rules!3307)))) b!3642196))

(assert (= (and b!3641367 ((_ is Union!10493) (regex!5734 (h!43799 rules!3307)))) b!3642197))

(declare-fun b!3642208 () Bool)

(declare-fun b_free!95493 () Bool)

(declare-fun b_next!96197 () Bool)

(assert (=> b!3642208 (= b_free!95493 (not b_next!96197))))

(declare-fun tb!209889 () Bool)

(declare-fun t!296636 () Bool)

(assert (=> (and b!3642208 (= (toValue!8026 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296636) tb!209889))

(declare-fun result!255630 () Bool)

(assert (= result!255630 result!255558))

(assert (=> d!1070756 t!296636))

(declare-fun tb!209891 () Bool)

(declare-fun t!296638 () Bool)

(assert (=> (and b!3642208 (= (toValue!8026 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296638) tb!209891))

(declare-fun result!255632 () Bool)

(assert (= result!255632 result!255520))

(assert (=> d!1070696 t!296638))

(assert (=> d!1070692 t!296638))

(assert (=> d!1070612 t!296638))

(declare-fun tb!209893 () Bool)

(declare-fun t!296640 () Bool)

(assert (=> (and b!3642208 (= (toValue!8026 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toValue!8026 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296640) tb!209893))

(declare-fun result!255634 () Bool)

(assert (= result!255634 result!255530))

(assert (=> d!1070612 t!296640))

(declare-fun tp!1110947 () Bool)

(declare-fun b_and!268607 () Bool)

(assert (=> b!3642208 (= tp!1110947 (and (=> t!296638 result!255632) (=> t!296640 result!255634) (=> t!296636 result!255630) b_and!268607))))

(declare-fun b_free!95495 () Bool)

(declare-fun b_next!96199 () Bool)

(assert (=> b!3642208 (= b_free!95495 (not b_next!96199))))

(declare-fun tb!209895 () Bool)

(declare-fun t!296642 () Bool)

(assert (=> (and b!3642208 (= (toChars!7885 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296642) tb!209895))

(declare-fun result!255636 () Bool)

(assert (= result!255636 result!255548))

(assert (=> d!1070692 t!296642))

(declare-fun t!296644 () Bool)

(declare-fun tb!209897 () Bool)

(assert (=> (and b!3642208 (= (toChars!7885 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toChars!7885 (transformation!5734 (rule!8518 token!511)))) t!296644) tb!209897))

(declare-fun result!255638 () Bool)

(assert (= result!255638 result!255566))

(assert (=> d!1070808 t!296644))

(assert (=> b!3641988 t!296644))

(declare-fun tb!209899 () Bool)

(declare-fun t!296646 () Bool)

(assert (=> (and b!3642208 (= (toChars!7885 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toChars!7885 (transformation!5734 (rule!8518 (_1!22258 lt!1260871))))) t!296646) tb!209899))

(declare-fun result!255640 () Bool)

(assert (= result!255640 result!255574))

(assert (=> d!1070842 t!296646))

(declare-fun b_and!268609 () Bool)

(declare-fun tp!1110946 () Bool)

(assert (=> b!3642208 (= tp!1110946 (and (=> t!296642 result!255636) (=> t!296644 result!255638) (=> t!296646 result!255640) b_and!268609))))

(declare-fun e!2254643 () Bool)

(assert (=> b!3642208 (= e!2254643 (and tp!1110947 tp!1110946))))

(declare-fun e!2254642 () Bool)

(declare-fun tp!1110948 () Bool)

(declare-fun b!3642207 () Bool)

(assert (=> b!3642207 (= e!2254642 (and tp!1110948 (inv!51810 (tag!6484 (h!43799 (t!296526 rules!3307)))) (inv!51813 (transformation!5734 (h!43799 (t!296526 rules!3307)))) e!2254643))))

(declare-fun b!3642206 () Bool)

(declare-fun e!2254644 () Bool)

(declare-fun tp!1110945 () Bool)

(assert (=> b!3642206 (= e!2254644 (and e!2254642 tp!1110945))))

(assert (=> b!3641347 (= tp!1110840 e!2254644)))

(assert (= b!3642207 b!3642208))

(assert (= b!3642206 b!3642207))

(assert (= (and b!3641347 ((_ is Cons!38379) (t!296526 rules!3307))) b!3642206))

(declare-fun m!4145445 () Bool)

(assert (=> b!3642207 m!4145445))

(declare-fun m!4145447 () Bool)

(assert (=> b!3642207 m!4145447))

(declare-fun b_lambda!107983 () Bool)

(assert (= b_lambda!107965 (or (and b!3641366 b_free!95475) (and b!3641379 b_free!95483 (= (toChars!7885 (transformation!5734 rule!403)) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) (and b!3641369 b_free!95479 (= (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) (and b!3642208 b_free!95495 (= (toChars!7885 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) (and b!3641354 b_free!95487 (= (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) b_lambda!107983)))

(declare-fun b_lambda!107985 () Bool)

(assert (= b_lambda!107963 (or (and b!3641366 b_free!95475) (and b!3641379 b_free!95483 (= (toChars!7885 (transformation!5734 rule!403)) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) (and b!3641369 b_free!95479 (= (toChars!7885 (transformation!5734 (h!43799 rules!3307))) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) (and b!3642208 b_free!95495 (= (toChars!7885 (transformation!5734 (h!43799 (t!296526 rules!3307)))) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) (and b!3641354 b_free!95487 (= (toChars!7885 (transformation!5734 anOtherTypeRule!33)) (toChars!7885 (transformation!5734 (rule!8518 token!511))))) b_lambda!107985)))

(check-sat (not d!1070874) (not b!3642046) (not b!3642010) (not d!1070714) (not b!3642206) b_and!268609 (not b!3642133) (not b!3641826) (not d!1070832) (not b_lambda!107955) (not b_lambda!107983) (not b!3641976) (not b_lambda!107957) (not b!3642192) (not bm!263264) (not d!1070774) b_and!268537 (not b!3642066) (not b!3642148) (not tb!209821) (not b!3641979) (not b!3642137) (not b!3642197) (not bm!263274) (not b!3642043) (not b!3641778) (not b!3641783) (not b!3642060) (not b!3641981) b_and!268559 (not d!1070838) (not d!1070826) (not b!3642028) (not tb!209829) (not bm!263241) b_and!268557 (not b_lambda!107961) (not b_lambda!107967) (not b!3642188) (not b!3641784) (not d!1070784) (not tb!209837) (not b!3641988) (not b!3642158) (not bm!263265) b_and!268535 (not b_next!96199) (not b!3641902) (not b!3641781) (not b!3641858) (not b!3642143) (not bm!263240) (not b!3641869) (not b!3641939) (not d!1070612) (not b!3641989) (not b!3642136) (not b_lambda!107947) (not b!3641942) (not d!1070804) (not d!1070868) (not b!3642182) (not bm!263261) b_and!268533 (not b!3642163) tp_is_empty!18069 (not b!3641973) (not d!1070786) (not b!3641975) (not b!3642056) (not b_next!96187) (not tb!209797) (not b!3641789) (not b!3642160) (not b!3642005) (not bm!263249) (not b_next!96197) (not b!3641944) (not d!1070780) (not d!1070720) (not d!1070808) (not d!1070792) (not b!3642196) (not b_next!96177) (not b!3642157) (not b!3641866) (not d!1070762) (not d!1070830) (not bm!263248) (not b!3642207) (not b!3642131) (not b!3642008) (not b!3642183) (not b!3642062) (not b!3642165) (not tb!209845) (not b!3642031) (not d!1070876) (not b_next!96189) (not bm!263275) (not b!3642195) (not d!1070840) (not d!1070600) (not b!3641859) (not b_lambda!107985) (not b!3642032) (not b!3641796) (not b!3642149) (not b!3641827) (not d!1070834) (not b!3642065) (not b!3641782) (not b!3642015) (not b!3642191) (not b!3642144) (not b!3641946) (not d!1070842) (not bm!263273) (not b!3641830) (not b_lambda!107949) (not b!3641844) (not b!3641779) (not b!3642152) (not d!1070608) (not b!3642011) (not b!3641838) (not b_next!96191) (not b!3642009) (not b!3642193) (not d!1070776) b_and!268555 (not b!3642058) (not bm!263266) (not d!1070820) (not b!3641991) (not bm!263272) (not d!1070770) (not d!1070768) (not d!1070794) (not bm!263271) (not d!1070862) (not b_next!96183) (not b!3641982) (not b_next!96179) (not b!3642186) b_and!268531 (not b!3642170) (not b!3642012) (not d!1070870) (not b!3642057) (not d!1070758) (not b!3641847) (not d!1070698) (not b_lambda!107953) b_and!268561 (not b!3641892) (not b!3641655) (not d!1070806) (not b!3642007) (not b!3642000) (not b!3641850) (not b!3642006) (not d!1070764) (not b!3642064) (not d!1070754) (not d!1070852) (not b!3641835) (not d!1070692) (not d!1070880) (not b!3641849) (not b!3642061) (not d!1070836) (not b!3642184) (not b!3641983) (not d!1070688) (not d!1070866) (not b!3641780) (not bm!263260) (not d!1070816) (not bm!263262) (not b!3641943) (not b!3642132) (not b!3642044) (not tb!209805) b_and!268607 (not b!3641836) (not d!1070864) (not b!3641861) (not bm!263269) (not d!1070802) (not b!3641977) (not b!3642189) (not b!3641853) (not b!3641974) (not b!3642187) (not b!3641978) (not b_next!96185) (not d!1070772) (not b!3642013) (not d!1070854) (not b_next!96181) (not d!1070814) (not b!3642146) (not b!3641928) (not b!3641777))
(check-sat b_and!268609 b_and!268537 b_and!268559 b_and!268557 b_and!268533 (not b_next!96187) (not b_next!96197) (not b_next!96177) (not b_next!96189) (not b_next!96191) b_and!268555 b_and!268531 b_and!268561 b_and!268607 (not b_next!96185) (not b_next!96181) b_and!268535 (not b_next!96199) (not b_next!96183) (not b_next!96179))
