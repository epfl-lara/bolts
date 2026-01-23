; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338686 () Bool)

(assert start!338686)

(declare-fun b!3632226 () Bool)

(declare-fun b_free!95017 () Bool)

(declare-fun b_next!95721 () Bool)

(assert (=> b!3632226 (= b_free!95017 (not b_next!95721))))

(declare-fun tp!1108845 () Bool)

(declare-fun b_and!266691 () Bool)

(assert (=> b!3632226 (= tp!1108845 b_and!266691)))

(declare-fun b_free!95019 () Bool)

(declare-fun b_next!95723 () Bool)

(assert (=> b!3632226 (= b_free!95019 (not b_next!95723))))

(declare-fun tp!1108843 () Bool)

(declare-fun b_and!266693 () Bool)

(assert (=> b!3632226 (= tp!1108843 b_and!266693)))

(declare-fun b!3632227 () Bool)

(declare-fun b_free!95021 () Bool)

(declare-fun b_next!95725 () Bool)

(assert (=> b!3632227 (= b_free!95021 (not b_next!95725))))

(declare-fun tp!1108832 () Bool)

(declare-fun b_and!266695 () Bool)

(assert (=> b!3632227 (= tp!1108832 b_and!266695)))

(declare-fun b_free!95023 () Bool)

(declare-fun b_next!95727 () Bool)

(assert (=> b!3632227 (= b_free!95023 (not b_next!95727))))

(declare-fun tp!1108836 () Bool)

(declare-fun b_and!266697 () Bool)

(assert (=> b!3632227 (= tp!1108836 b_and!266697)))

(declare-fun b!3632221 () Bool)

(declare-fun b_free!95025 () Bool)

(declare-fun b_next!95729 () Bool)

(assert (=> b!3632221 (= b_free!95025 (not b_next!95729))))

(declare-fun tp!1108846 () Bool)

(declare-fun b_and!266699 () Bool)

(assert (=> b!3632221 (= tp!1108846 b_and!266699)))

(declare-fun b_free!95027 () Bool)

(declare-fun b_next!95731 () Bool)

(assert (=> b!3632221 (= b_free!95027 (not b_next!95731))))

(declare-fun tp!1108841 () Bool)

(declare-fun b_and!266701 () Bool)

(assert (=> b!3632221 (= tp!1108841 b_and!266701)))

(declare-fun b!3632209 () Bool)

(declare-fun b_free!95029 () Bool)

(declare-fun b_next!95733 () Bool)

(assert (=> b!3632209 (= b_free!95029 (not b_next!95733))))

(declare-fun tp!1108833 () Bool)

(declare-fun b_and!266703 () Bool)

(assert (=> b!3632209 (= tp!1108833 b_and!266703)))

(declare-fun b_free!95031 () Bool)

(declare-fun b_next!95735 () Bool)

(assert (=> b!3632209 (= b_free!95031 (not b_next!95735))))

(declare-fun tp!1108837 () Bool)

(declare-fun b_and!266705 () Bool)

(assert (=> b!3632209 (= tp!1108837 b_and!266705)))

(declare-fun b!3632207 () Bool)

(declare-fun res!1470984 () Bool)

(declare-fun e!2248355 () Bool)

(assert (=> b!3632207 (=> res!1470984 e!2248355)))

(declare-datatypes ((List!38393 0))(
  ( (Nil!38269) (Cons!38269 (h!43689 (_ BitVec 16)) (t!295356 List!38393)) )
))
(declare-datatypes ((TokenValue!5940 0))(
  ( (FloatLiteralValue!11880 (text!42025 List!38393)) (TokenValueExt!5939 (__x!24097 Int)) (Broken!29700 (value!183169 List!38393)) (Object!6063) (End!5940) (Def!5940) (Underscore!5940) (Match!5940) (Else!5940) (Error!5940) (Case!5940) (If!5940) (Extends!5940) (Abstract!5940) (Class!5940) (Val!5940) (DelimiterValue!11880 (del!6000 List!38393)) (KeywordValue!5946 (value!183170 List!38393)) (CommentValue!11880 (value!183171 List!38393)) (WhitespaceValue!11880 (value!183172 List!38393)) (IndentationValue!5940 (value!183173 List!38393)) (String!43033) (Int32!5940) (Broken!29701 (value!183174 List!38393)) (Boolean!5941) (Unit!55087) (OperatorValue!5943 (op!6000 List!38393)) (IdentifierValue!11880 (value!183175 List!38393)) (IdentifierValue!11881 (value!183176 List!38393)) (WhitespaceValue!11881 (value!183177 List!38393)) (True!11880) (False!11880) (Broken!29702 (value!183178 List!38393)) (Broken!29703 (value!183179 List!38393)) (True!11881) (RightBrace!5940) (RightBracket!5940) (Colon!5940) (Null!5940) (Comma!5940) (LeftBracket!5940) (False!11881) (LeftBrace!5940) (ImaginaryLiteralValue!5940 (text!42026 List!38393)) (StringLiteralValue!17820 (value!183180 List!38393)) (EOFValue!5940 (value!183181 List!38393)) (IdentValue!5940 (value!183182 List!38393)) (DelimiterValue!11881 (value!183183 List!38393)) (DedentValue!5940 (value!183184 List!38393)) (NewLineValue!5940 (value!183185 List!38393)) (IntegerValue!17820 (value!183186 (_ BitVec 32)) (text!42027 List!38393)) (IntegerValue!17821 (value!183187 Int) (text!42028 List!38393)) (Times!5940) (Or!5940) (Equal!5940) (Minus!5940) (Broken!29704 (value!183188 List!38393)) (And!5940) (Div!5940) (LessEqual!5940) (Mod!5940) (Concat!16409) (Not!5940) (Plus!5940) (SpaceValue!5940 (value!183189 List!38393)) (IntegerValue!17822 (value!183190 Int) (text!42029 List!38393)) (StringLiteralValue!17821 (text!42030 List!38393)) (FloatLiteralValue!11881 (text!42031 List!38393)) (BytesLiteralValue!5940 (value!183191 List!38393)) (CommentValue!11881 (value!183192 List!38393)) (StringLiteralValue!17822 (value!183193 List!38393)) (ErrorTokenValue!5940 (msg!6001 List!38393)) )
))
(declare-datatypes ((C!21124 0))(
  ( (C!21125 (val!12610 Int)) )
))
(declare-datatypes ((Regex!10469 0))(
  ( (ElementMatch!10469 (c!628322 C!21124)) (Concat!16410 (regOne!21450 Regex!10469) (regTwo!21450 Regex!10469)) (EmptyExpr!10469) (Star!10469 (reg!10798 Regex!10469)) (EmptyLang!10469) (Union!10469 (regOne!21451 Regex!10469) (regTwo!21451 Regex!10469)) )
))
(declare-datatypes ((String!43034 0))(
  ( (String!43035 (value!183194 String)) )
))
(declare-datatypes ((List!38394 0))(
  ( (Nil!38270) (Cons!38270 (h!43690 C!21124) (t!295357 List!38394)) )
))
(declare-datatypes ((IArray!23359 0))(
  ( (IArray!23360 (innerList!11737 List!38394)) )
))
(declare-datatypes ((Conc!11677 0))(
  ( (Node!11677 (left!29874 Conc!11677) (right!30204 Conc!11677) (csize!23584 Int) (cheight!11888 Int)) (Leaf!18143 (xs!14879 IArray!23359) (csize!23585 Int)) (Empty!11677) )
))
(declare-datatypes ((BalanceConc!22968 0))(
  ( (BalanceConc!22969 (c!628323 Conc!11677)) )
))
(declare-datatypes ((TokenValueInjection!11308 0))(
  ( (TokenValueInjection!11309 (toValue!8002 Int) (toChars!7861 Int)) )
))
(declare-datatypes ((Rule!11220 0))(
  ( (Rule!11221 (regex!5710 Regex!10469) (tag!6442 String!43034) (isSeparator!5710 Bool) (transformation!5710 TokenValueInjection!11308)) )
))
(declare-datatypes ((List!38395 0))(
  ( (Nil!38271) (Cons!38271 (h!43691 Rule!11220) (t!295358 List!38395)) )
))
(declare-fun rules!3307 () List!38395)

(declare-datatypes ((Token!10786 0))(
  ( (Token!10787 (value!183195 TokenValue!5940) (rule!8482 Rule!11220) (size!29200 Int) (originalCharacters!6424 List!38394)) )
))
(declare-datatypes ((tuple2!38140 0))(
  ( (tuple2!38141 (_1!22204 Token!10786) (_2!22204 List!38394)) )
))
(declare-fun lt!1256413 () tuple2!38140)

(declare-fun contains!7485 (List!38395 Rule!11220) Bool)

(assert (=> b!3632207 (= res!1470984 (not (contains!7485 rules!3307 (rule!8482 (_1!22204 lt!1256413)))))))

(declare-fun b!3632208 () Bool)

(declare-fun res!1470987 () Bool)

(declare-fun e!2248347 () Bool)

(assert (=> b!3632208 (=> (not res!1470987) (not e!2248347))))

(declare-fun isEmpty!22640 (List!38395) Bool)

(assert (=> b!3632208 (= res!1470987 (not (isEmpty!22640 rules!3307)))))

(declare-fun e!2248357 () Bool)

(assert (=> b!3632209 (= e!2248357 (and tp!1108833 tp!1108837))))

(declare-fun b!3632210 () Bool)

(declare-fun e!2248360 () Bool)

(declare-fun e!2248354 () Bool)

(assert (=> b!3632210 (= e!2248360 e!2248354)))

(declare-fun res!1470982 () Bool)

(assert (=> b!3632210 (=> res!1470982 e!2248354)))

(declare-fun lt!1256420 () List!38394)

(declare-fun lt!1256404 () List!38394)

(declare-fun isPrefix!3073 (List!38394 List!38394) Bool)

(assert (=> b!3632210 (= res!1470982 (not (isPrefix!3073 lt!1256420 lt!1256404)))))

(declare-fun lt!1256419 () List!38394)

(assert (=> b!3632210 (isPrefix!3073 lt!1256420 lt!1256419)))

(declare-fun ++!9526 (List!38394 List!38394) List!38394)

(assert (=> b!3632210 (= lt!1256419 (++!9526 lt!1256420 (_2!22204 lt!1256413)))))

(declare-datatypes ((Unit!55088 0))(
  ( (Unit!55089) )
))
(declare-fun lt!1256421 () Unit!55088)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1992 (List!38394 List!38394) Unit!55088)

(assert (=> b!3632210 (= lt!1256421 (lemmaConcatTwoListThenFirstIsPrefix!1992 lt!1256420 (_2!22204 lt!1256413)))))

(declare-fun lt!1256422 () BalanceConc!22968)

(declare-fun list!14148 (BalanceConc!22968) List!38394)

(assert (=> b!3632210 (= lt!1256420 (list!14148 lt!1256422))))

(declare-fun charsOf!3724 (Token!10786) BalanceConc!22968)

(assert (=> b!3632210 (= lt!1256422 (charsOf!3724 (_1!22204 lt!1256413)))))

(declare-fun e!2248349 () Bool)

(assert (=> b!3632210 e!2248349))

(declare-fun res!1470983 () Bool)

(assert (=> b!3632210 (=> (not res!1470983) (not e!2248349))))

(declare-datatypes ((Option!8048 0))(
  ( (None!8047) (Some!8047 (v!37843 Rule!11220)) )
))
(declare-fun lt!1256407 () Option!8048)

(declare-fun isDefined!6280 (Option!8048) Bool)

(assert (=> b!3632210 (= res!1470983 (isDefined!6280 lt!1256407))))

(declare-datatypes ((LexerInterface!5299 0))(
  ( (LexerInterfaceExt!5296 (__x!24098 Int)) (Lexer!5297) )
))
(declare-fun thiss!23823 () LexerInterface!5299)

(declare-fun getRuleFromTag!1314 (LexerInterface!5299 List!38395 String!43034) Option!8048)

(assert (=> b!3632210 (= lt!1256407 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 (_1!22204 lt!1256413)))))))

(declare-fun lt!1256418 () Unit!55088)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1314 (LexerInterface!5299 List!38395 List!38394 Token!10786) Unit!55088)

(assert (=> b!3632210 (= lt!1256418 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1314 thiss!23823 rules!3307 lt!1256404 (_1!22204 lt!1256413)))))

(declare-datatypes ((Option!8049 0))(
  ( (None!8048) (Some!8048 (v!37844 tuple2!38140)) )
))
(declare-fun lt!1256408 () Option!8049)

(declare-fun get!12513 (Option!8049) tuple2!38140)

(assert (=> b!3632210 (= lt!1256413 (get!12513 lt!1256408))))

(declare-fun suffix!1395 () List!38394)

(declare-fun lt!1256409 () Unit!55088)

(declare-fun lt!1256417 () List!38394)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!977 (LexerInterface!5299 List!38395 List!38394 List!38394) Unit!55088)

(assert (=> b!3632210 (= lt!1256409 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!977 thiss!23823 rules!3307 lt!1256417 suffix!1395))))

(declare-fun maxPrefix!2833 (LexerInterface!5299 List!38395 List!38394) Option!8049)

(assert (=> b!3632210 (= lt!1256408 (maxPrefix!2833 thiss!23823 rules!3307 lt!1256404))))

(assert (=> b!3632210 (isPrefix!3073 lt!1256417 lt!1256404)))

(declare-fun lt!1256416 () Unit!55088)

(assert (=> b!3632210 (= lt!1256416 (lemmaConcatTwoListThenFirstIsPrefix!1992 lt!1256417 suffix!1395))))

(assert (=> b!3632210 (= lt!1256404 (++!9526 lt!1256417 suffix!1395))))

(declare-fun e!2248339 () Bool)

(declare-fun b!3632211 () Bool)

(declare-fun token!511 () Token!10786)

(declare-fun tp!1108840 () Bool)

(declare-fun e!2248341 () Bool)

(declare-fun inv!21 (TokenValue!5940) Bool)

(assert (=> b!3632211 (= e!2248341 (and (inv!21 (value!183195 token!511)) e!2248339 tp!1108840))))

(declare-fun b!3632212 () Bool)

(declare-fun e!2248338 () Bool)

(assert (=> b!3632212 (= e!2248338 e!2248360)))

(declare-fun res!1471000 () Bool)

(assert (=> b!3632212 (=> res!1471000 e!2248360)))

(declare-fun rule!403 () Rule!11220)

(declare-fun lt!1256403 () C!21124)

(declare-fun contains!7486 (List!38394 C!21124) Bool)

(declare-fun usedCharacters!922 (Regex!10469) List!38394)

(assert (=> b!3632212 (= res!1471000 (contains!7486 (usedCharacters!922 (regex!5710 rule!403)) lt!1256403))))

(declare-fun head!7692 (List!38394) C!21124)

(assert (=> b!3632212 (= lt!1256403 (head!7692 suffix!1395))))

(declare-fun b!3632213 () Bool)

(declare-fun res!1470999 () Bool)

(assert (=> b!3632213 (=> res!1470999 e!2248354)))

(declare-fun matchR!5038 (Regex!10469 List!38394) Bool)

(assert (=> b!3632213 (= res!1470999 (not (matchR!5038 (regex!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256420)))))

(declare-fun b!3632214 () Bool)

(declare-fun res!1470997 () Bool)

(assert (=> b!3632214 (=> (not res!1470997) (not e!2248347))))

(declare-fun rulesInvariant!4696 (LexerInterface!5299 List!38395) Bool)

(assert (=> b!3632214 (= res!1470997 (rulesInvariant!4696 thiss!23823 rules!3307))))

(declare-fun b!3632215 () Bool)

(declare-fun e!2248337 () Bool)

(assert (=> b!3632215 (= e!2248349 e!2248337)))

(declare-fun res!1470998 () Bool)

(assert (=> b!3632215 (=> (not res!1470998) (not e!2248337))))

(declare-fun lt!1256411 () Rule!11220)

(assert (=> b!3632215 (= res!1470998 (matchR!5038 (regex!5710 lt!1256411) (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))))))

(declare-fun get!12514 (Option!8048) Rule!11220)

(assert (=> b!3632215 (= lt!1256411 (get!12514 lt!1256407))))

(declare-fun tp!1108838 () Bool)

(declare-fun e!2248342 () Bool)

(declare-fun b!3632216 () Bool)

(declare-fun inv!51690 (String!43034) Bool)

(declare-fun inv!51693 (TokenValueInjection!11308) Bool)

(assert (=> b!3632216 (= e!2248342 (and tp!1108838 (inv!51690 (tag!6442 (h!43691 rules!3307))) (inv!51693 (transformation!5710 (h!43691 rules!3307))) e!2248357))))

(declare-fun res!1470986 () Bool)

(assert (=> start!338686 (=> (not res!1470986) (not e!2248347))))

(get-info :version)

(assert (=> start!338686 (= res!1470986 ((_ is Lexer!5297) thiss!23823))))

(assert (=> start!338686 e!2248347))

(declare-fun e!2248358 () Bool)

(assert (=> start!338686 e!2248358))

(declare-fun e!2248352 () Bool)

(assert (=> start!338686 e!2248352))

(assert (=> start!338686 true))

(declare-fun inv!51694 (Token!10786) Bool)

(assert (=> start!338686 (and (inv!51694 token!511) e!2248341)))

(declare-fun e!2248343 () Bool)

(assert (=> start!338686 e!2248343))

(declare-fun e!2248348 () Bool)

(assert (=> start!338686 e!2248348))

(declare-fun b!3632217 () Bool)

(assert (=> b!3632217 (= e!2248355 (= lt!1256404 lt!1256419))))

(declare-fun b!3632218 () Bool)

(declare-fun res!1471002 () Bool)

(assert (=> b!3632218 (=> res!1471002 e!2248360)))

(declare-fun anOtherTypeRule!33 () Rule!11220)

(assert (=> b!3632218 (= res!1471002 (not (contains!7486 (usedCharacters!922 (regex!5710 anOtherTypeRule!33)) lt!1256403)))))

(declare-fun b!3632219 () Bool)

(declare-fun res!1470985 () Bool)

(declare-fun e!2248351 () Bool)

(assert (=> b!3632219 (=> (not res!1470985) (not e!2248351))))

(assert (=> b!3632219 (= res!1470985 (= (rule!8482 token!511) rule!403))))

(declare-fun e!2248336 () Bool)

(declare-fun tp!1108842 () Bool)

(declare-fun b!3632220 () Bool)

(assert (=> b!3632220 (= e!2248343 (and tp!1108842 (inv!51690 (tag!6442 rule!403)) (inv!51693 (transformation!5710 rule!403)) e!2248336))))

(declare-fun e!2248344 () Bool)

(assert (=> b!3632221 (= e!2248344 (and tp!1108846 tp!1108841))))

(declare-fun b!3632222 () Bool)

(assert (=> b!3632222 (= e!2248354 e!2248355)))

(declare-fun res!1470990 () Bool)

(assert (=> b!3632222 (=> res!1470990 e!2248355)))

(declare-fun apply!9212 (TokenValueInjection!11308 BalanceConc!22968) TokenValue!5940)

(declare-fun size!29201 (BalanceConc!22968) Int)

(assert (=> b!3632222 (= res!1470990 (not (= lt!1256408 (Some!8048 (tuple2!38141 (Token!10787 (apply!9212 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256422) (rule!8482 (_1!22204 lt!1256413)) (size!29201 lt!1256422) lt!1256420) (_2!22204 lt!1256413))))))))

(declare-fun lt!1256410 () Unit!55088)

(declare-fun lemmaCharactersSize!755 (Token!10786) Unit!55088)

(assert (=> b!3632222 (= lt!1256410 (lemmaCharactersSize!755 (_1!22204 lt!1256413)))))

(declare-fun lt!1256406 () Unit!55088)

(declare-fun lemmaEqSameImage!893 (TokenValueInjection!11308 BalanceConc!22968 BalanceConc!22968) Unit!55088)

(declare-fun seqFromList!4259 (List!38394) BalanceConc!22968)

(assert (=> b!3632222 (= lt!1256406 (lemmaEqSameImage!893 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256422 (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413)))))))

(declare-fun lt!1256412 () Unit!55088)

(declare-fun lemmaSemiInverse!1459 (TokenValueInjection!11308 BalanceConc!22968) Unit!55088)

(assert (=> b!3632222 (= lt!1256412 (lemmaSemiInverse!1459 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256422))))

(declare-fun b!3632223 () Bool)

(declare-fun res!1470994 () Bool)

(assert (=> b!3632223 (=> (not res!1470994) (not e!2248347))))

(assert (=> b!3632223 (= res!1470994 (contains!7485 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3632224 () Bool)

(assert (=> b!3632224 (= e!2248351 (not e!2248338))))

(declare-fun res!1470989 () Bool)

(assert (=> b!3632224 (=> res!1470989 e!2248338)))

(assert (=> b!3632224 (= res!1470989 (not (matchR!5038 (regex!5710 rule!403) lt!1256417)))))

(declare-fun ruleValid!1974 (LexerInterface!5299 Rule!11220) Bool)

(assert (=> b!3632224 (ruleValid!1974 thiss!23823 rule!403)))

(declare-fun lt!1256415 () Unit!55088)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1128 (LexerInterface!5299 Rule!11220 List!38395) Unit!55088)

(assert (=> b!3632224 (= lt!1256415 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1128 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3632225 () Bool)

(declare-fun tp!1108835 () Bool)

(declare-fun e!2248359 () Bool)

(assert (=> b!3632225 (= e!2248339 (and tp!1108835 (inv!51690 (tag!6442 (rule!8482 token!511))) (inv!51693 (transformation!5710 (rule!8482 token!511))) e!2248359))))

(assert (=> b!3632226 (= e!2248336 (and tp!1108845 tp!1108843))))

(assert (=> b!3632227 (= e!2248359 (and tp!1108832 tp!1108836))))

(declare-fun b!3632228 () Bool)

(declare-fun res!1470995 () Bool)

(assert (=> b!3632228 (=> res!1470995 e!2248360)))

(declare-fun sepAndNonSepRulesDisjointChars!1878 (List!38395 List!38395) Bool)

(assert (=> b!3632228 (= res!1470995 (not (sepAndNonSepRulesDisjointChars!1878 rules!3307 rules!3307)))))

(declare-fun b!3632229 () Bool)

(declare-fun res!1470991 () Bool)

(assert (=> b!3632229 (=> res!1470991 e!2248338)))

(declare-fun isEmpty!22641 (List!38394) Bool)

(assert (=> b!3632229 (= res!1470991 (isEmpty!22641 suffix!1395))))

(declare-fun b!3632230 () Bool)

(declare-fun tp!1108844 () Bool)

(assert (=> b!3632230 (= e!2248358 (and e!2248342 tp!1108844))))

(declare-fun b!3632231 () Bool)

(declare-fun e!2248345 () Bool)

(assert (=> b!3632231 (= e!2248347 e!2248345)))

(declare-fun res!1470996 () Bool)

(assert (=> b!3632231 (=> (not res!1470996) (not e!2248345))))

(declare-fun lt!1256405 () Option!8049)

(declare-fun isDefined!6281 (Option!8049) Bool)

(assert (=> b!3632231 (= res!1470996 (isDefined!6281 lt!1256405))))

(assert (=> b!3632231 (= lt!1256405 (maxPrefix!2833 thiss!23823 rules!3307 lt!1256417))))

(assert (=> b!3632231 (= lt!1256417 (list!14148 (charsOf!3724 token!511)))))

(declare-fun b!3632232 () Bool)

(declare-fun res!1470992 () Bool)

(assert (=> b!3632232 (=> (not res!1470992) (not e!2248347))))

(assert (=> b!3632232 (= res!1470992 (contains!7485 rules!3307 rule!403))))

(declare-fun b!3632233 () Bool)

(declare-fun res!1470988 () Bool)

(assert (=> b!3632233 (=> (not res!1470988) (not e!2248347))))

(assert (=> b!3632233 (= res!1470988 (not (= (isSeparator!5710 anOtherTypeRule!33) (isSeparator!5710 rule!403))))))

(declare-fun b!3632234 () Bool)

(declare-fun res!1470993 () Bool)

(assert (=> b!3632234 (=> (not res!1470993) (not e!2248351))))

(declare-fun lt!1256414 () tuple2!38140)

(assert (=> b!3632234 (= res!1470993 (isEmpty!22641 (_2!22204 lt!1256414)))))

(declare-fun b!3632235 () Bool)

(assert (=> b!3632235 (= e!2248337 (= (rule!8482 (_1!22204 lt!1256413)) lt!1256411))))

(declare-fun b!3632236 () Bool)

(declare-fun tp_is_empty!18021 () Bool)

(declare-fun tp!1108834 () Bool)

(assert (=> b!3632236 (= e!2248352 (and tp_is_empty!18021 tp!1108834))))

(declare-fun tp!1108839 () Bool)

(declare-fun b!3632237 () Bool)

(assert (=> b!3632237 (= e!2248348 (and tp!1108839 (inv!51690 (tag!6442 anOtherTypeRule!33)) (inv!51693 (transformation!5710 anOtherTypeRule!33)) e!2248344))))

(declare-fun b!3632238 () Bool)

(assert (=> b!3632238 (= e!2248345 e!2248351)))

(declare-fun res!1471001 () Bool)

(assert (=> b!3632238 (=> (not res!1471001) (not e!2248351))))

(assert (=> b!3632238 (= res!1471001 (= (_1!22204 lt!1256414) token!511))))

(assert (=> b!3632238 (= lt!1256414 (get!12513 lt!1256405))))

(assert (= (and start!338686 res!1470986) b!3632208))

(assert (= (and b!3632208 res!1470987) b!3632214))

(assert (= (and b!3632214 res!1470997) b!3632232))

(assert (= (and b!3632232 res!1470992) b!3632223))

(assert (= (and b!3632223 res!1470994) b!3632233))

(assert (= (and b!3632233 res!1470988) b!3632231))

(assert (= (and b!3632231 res!1470996) b!3632238))

(assert (= (and b!3632238 res!1471001) b!3632234))

(assert (= (and b!3632234 res!1470993) b!3632219))

(assert (= (and b!3632219 res!1470985) b!3632224))

(assert (= (and b!3632224 (not res!1470989)) b!3632229))

(assert (= (and b!3632229 (not res!1470991)) b!3632212))

(assert (= (and b!3632212 (not res!1471000)) b!3632218))

(assert (= (and b!3632218 (not res!1471002)) b!3632228))

(assert (= (and b!3632228 (not res!1470995)) b!3632210))

(assert (= (and b!3632210 res!1470983) b!3632215))

(assert (= (and b!3632215 res!1470998) b!3632235))

(assert (= (and b!3632210 (not res!1470982)) b!3632213))

(assert (= (and b!3632213 (not res!1470999)) b!3632222))

(assert (= (and b!3632222 (not res!1470990)) b!3632207))

(assert (= (and b!3632207 (not res!1470984)) b!3632217))

(assert (= b!3632216 b!3632209))

(assert (= b!3632230 b!3632216))

(assert (= (and start!338686 ((_ is Cons!38271) rules!3307)) b!3632230))

(assert (= (and start!338686 ((_ is Cons!38270) suffix!1395)) b!3632236))

(assert (= b!3632225 b!3632227))

(assert (= b!3632211 b!3632225))

(assert (= start!338686 b!3632211))

(assert (= b!3632220 b!3632226))

(assert (= start!338686 b!3632220))

(assert (= b!3632237 b!3632221))

(assert (= start!338686 b!3632237))

(declare-fun m!4133905 () Bool)

(assert (=> b!3632228 m!4133905))

(declare-fun m!4133907 () Bool)

(assert (=> b!3632220 m!4133907))

(declare-fun m!4133909 () Bool)

(assert (=> b!3632220 m!4133909))

(declare-fun m!4133911 () Bool)

(assert (=> b!3632223 m!4133911))

(declare-fun m!4133913 () Bool)

(assert (=> b!3632208 m!4133913))

(declare-fun m!4133915 () Bool)

(assert (=> start!338686 m!4133915))

(declare-fun m!4133917 () Bool)

(assert (=> b!3632216 m!4133917))

(declare-fun m!4133919 () Bool)

(assert (=> b!3632216 m!4133919))

(declare-fun m!4133921 () Bool)

(assert (=> b!3632238 m!4133921))

(declare-fun m!4133923 () Bool)

(assert (=> b!3632214 m!4133923))

(declare-fun m!4133925 () Bool)

(assert (=> b!3632211 m!4133925))

(declare-fun m!4133927 () Bool)

(assert (=> b!3632222 m!4133927))

(declare-fun m!4133929 () Bool)

(assert (=> b!3632222 m!4133929))

(declare-fun m!4133931 () Bool)

(assert (=> b!3632222 m!4133931))

(declare-fun m!4133933 () Bool)

(assert (=> b!3632222 m!4133933))

(declare-fun m!4133935 () Bool)

(assert (=> b!3632222 m!4133935))

(assert (=> b!3632222 m!4133933))

(declare-fun m!4133937 () Bool)

(assert (=> b!3632222 m!4133937))

(declare-fun m!4133939 () Bool)

(assert (=> b!3632218 m!4133939))

(assert (=> b!3632218 m!4133939))

(declare-fun m!4133941 () Bool)

(assert (=> b!3632218 m!4133941))

(declare-fun m!4133943 () Bool)

(assert (=> b!3632215 m!4133943))

(assert (=> b!3632215 m!4133943))

(declare-fun m!4133945 () Bool)

(assert (=> b!3632215 m!4133945))

(assert (=> b!3632215 m!4133945))

(declare-fun m!4133947 () Bool)

(assert (=> b!3632215 m!4133947))

(declare-fun m!4133949 () Bool)

(assert (=> b!3632215 m!4133949))

(declare-fun m!4133951 () Bool)

(assert (=> b!3632224 m!4133951))

(declare-fun m!4133953 () Bool)

(assert (=> b!3632224 m!4133953))

(declare-fun m!4133955 () Bool)

(assert (=> b!3632224 m!4133955))

(declare-fun m!4133957 () Bool)

(assert (=> b!3632207 m!4133957))

(declare-fun m!4133959 () Bool)

(assert (=> b!3632234 m!4133959))

(declare-fun m!4133961 () Bool)

(assert (=> b!3632231 m!4133961))

(declare-fun m!4133963 () Bool)

(assert (=> b!3632231 m!4133963))

(declare-fun m!4133965 () Bool)

(assert (=> b!3632231 m!4133965))

(assert (=> b!3632231 m!4133965))

(declare-fun m!4133967 () Bool)

(assert (=> b!3632231 m!4133967))

(declare-fun m!4133969 () Bool)

(assert (=> b!3632229 m!4133969))

(declare-fun m!4133971 () Bool)

(assert (=> b!3632210 m!4133971))

(declare-fun m!4133973 () Bool)

(assert (=> b!3632210 m!4133973))

(declare-fun m!4133975 () Bool)

(assert (=> b!3632210 m!4133975))

(declare-fun m!4133977 () Bool)

(assert (=> b!3632210 m!4133977))

(declare-fun m!4133979 () Bool)

(assert (=> b!3632210 m!4133979))

(declare-fun m!4133981 () Bool)

(assert (=> b!3632210 m!4133981))

(declare-fun m!4133983 () Bool)

(assert (=> b!3632210 m!4133983))

(declare-fun m!4133985 () Bool)

(assert (=> b!3632210 m!4133985))

(declare-fun m!4133987 () Bool)

(assert (=> b!3632210 m!4133987))

(declare-fun m!4133989 () Bool)

(assert (=> b!3632210 m!4133989))

(declare-fun m!4133991 () Bool)

(assert (=> b!3632210 m!4133991))

(declare-fun m!4133993 () Bool)

(assert (=> b!3632210 m!4133993))

(declare-fun m!4133995 () Bool)

(assert (=> b!3632210 m!4133995))

(declare-fun m!4133997 () Bool)

(assert (=> b!3632210 m!4133997))

(assert (=> b!3632210 m!4133943))

(declare-fun m!4133999 () Bool)

(assert (=> b!3632225 m!4133999))

(declare-fun m!4134001 () Bool)

(assert (=> b!3632225 m!4134001))

(declare-fun m!4134003 () Bool)

(assert (=> b!3632237 m!4134003))

(declare-fun m!4134005 () Bool)

(assert (=> b!3632237 m!4134005))

(declare-fun m!4134007 () Bool)

(assert (=> b!3632212 m!4134007))

(assert (=> b!3632212 m!4134007))

(declare-fun m!4134009 () Bool)

(assert (=> b!3632212 m!4134009))

(declare-fun m!4134011 () Bool)

(assert (=> b!3632212 m!4134011))

(declare-fun m!4134013 () Bool)

(assert (=> b!3632213 m!4134013))

(declare-fun m!4134015 () Bool)

(assert (=> b!3632232 m!4134015))

(check-sat (not b!3632223) (not b_next!95725) (not b!3632224) (not b_next!95733) (not b!3632234) (not b!3632215) (not b!3632207) (not b!3632230) (not b!3632236) (not b!3632216) (not b_next!95721) (not b!3632238) (not b_next!95723) (not b!3632222) (not b_next!95735) (not b!3632225) (not b!3632228) (not b!3632229) (not b!3632213) (not b!3632210) b_and!266697 (not b!3632220) (not b!3632232) (not b!3632208) (not b_next!95731) b_and!266703 b_and!266701 b_and!266691 b_and!266705 b_and!266699 tp_is_empty!18021 (not b!3632214) (not b!3632218) (not b!3632211) b_and!266693 b_and!266695 (not b_next!95729) (not start!338686) (not b!3632237) (not b!3632212) (not b_next!95727) (not b!3632231))
(check-sat (not b_next!95735) b_and!266697 (not b_next!95725) (not b_next!95733) b_and!266699 (not b_next!95727) (not b_next!95721) (not b_next!95723) (not b_next!95731) b_and!266703 b_and!266701 b_and!266691 b_and!266705 b_and!266693 b_and!266695 (not b_next!95729))
(get-model)

(declare-fun d!1068366 () Bool)

(assert (=> d!1068366 (isPrefix!3073 lt!1256417 (++!9526 lt!1256417 suffix!1395))))

(declare-fun lt!1256437 () Unit!55088)

(declare-fun choose!21334 (List!38394 List!38394) Unit!55088)

(assert (=> d!1068366 (= lt!1256437 (choose!21334 lt!1256417 suffix!1395))))

(assert (=> d!1068366 (= (lemmaConcatTwoListThenFirstIsPrefix!1992 lt!1256417 suffix!1395) lt!1256437)))

(declare-fun bs!571694 () Bool)

(assert (= bs!571694 d!1068366))

(assert (=> bs!571694 m!4133997))

(assert (=> bs!571694 m!4133997))

(declare-fun m!4134103 () Bool)

(assert (=> bs!571694 m!4134103))

(declare-fun m!4134105 () Bool)

(assert (=> bs!571694 m!4134105))

(assert (=> b!3632210 d!1068366))

(declare-fun d!1068372 () Bool)

(declare-fun e!2248450 () Bool)

(assert (=> d!1068372 e!2248450))

(declare-fun res!1471080 () Bool)

(assert (=> d!1068372 (=> (not res!1471080) (not e!2248450))))

(assert (=> d!1068372 (= res!1471080 (isDefined!6280 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 (_1!22204 lt!1256413))))))))

(declare-fun lt!1256452 () Unit!55088)

(declare-fun choose!21335 (LexerInterface!5299 List!38395 List!38394 Token!10786) Unit!55088)

(assert (=> d!1068372 (= lt!1256452 (choose!21335 thiss!23823 rules!3307 lt!1256404 (_1!22204 lt!1256413)))))

(assert (=> d!1068372 (rulesInvariant!4696 thiss!23823 rules!3307)))

(assert (=> d!1068372 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1314 thiss!23823 rules!3307 lt!1256404 (_1!22204 lt!1256413)) lt!1256452)))

(declare-fun b!3632372 () Bool)

(declare-fun res!1471081 () Bool)

(assert (=> b!3632372 (=> (not res!1471081) (not e!2248450))))

(assert (=> b!3632372 (= res!1471081 (matchR!5038 (regex!5710 (get!12514 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 (_1!22204 lt!1256413)))))) (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))))))

(declare-fun b!3632373 () Bool)

(assert (=> b!3632373 (= e!2248450 (= (rule!8482 (_1!22204 lt!1256413)) (get!12514 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 (_1!22204 lt!1256413)))))))))

(assert (= (and d!1068372 res!1471080) b!3632372))

(assert (= (and b!3632372 res!1471081) b!3632373))

(assert (=> d!1068372 m!4133991))

(assert (=> d!1068372 m!4133991))

(declare-fun m!4134135 () Bool)

(assert (=> d!1068372 m!4134135))

(declare-fun m!4134137 () Bool)

(assert (=> d!1068372 m!4134137))

(assert (=> d!1068372 m!4133923))

(assert (=> b!3632372 m!4133991))

(declare-fun m!4134139 () Bool)

(assert (=> b!3632372 m!4134139))

(assert (=> b!3632372 m!4133943))

(assert (=> b!3632372 m!4133991))

(assert (=> b!3632372 m!4133945))

(declare-fun m!4134141 () Bool)

(assert (=> b!3632372 m!4134141))

(assert (=> b!3632372 m!4133943))

(assert (=> b!3632372 m!4133945))

(assert (=> b!3632373 m!4133991))

(assert (=> b!3632373 m!4133991))

(assert (=> b!3632373 m!4134139))

(assert (=> b!3632210 d!1068372))

(declare-fun b!3632384 () Bool)

(declare-fun e!2248458 () Bool)

(declare-fun tail!5623 (List!38394) List!38394)

(assert (=> b!3632384 (= e!2248458 (isPrefix!3073 (tail!5623 lt!1256417) (tail!5623 lt!1256404)))))

(declare-fun b!3632382 () Bool)

(declare-fun e!2248459 () Bool)

(assert (=> b!3632382 (= e!2248459 e!2248458)))

(declare-fun res!1471092 () Bool)

(assert (=> b!3632382 (=> (not res!1471092) (not e!2248458))))

(assert (=> b!3632382 (= res!1471092 (not ((_ is Nil!38270) lt!1256404)))))

(declare-fun b!3632383 () Bool)

(declare-fun res!1471093 () Bool)

(assert (=> b!3632383 (=> (not res!1471093) (not e!2248458))))

(assert (=> b!3632383 (= res!1471093 (= (head!7692 lt!1256417) (head!7692 lt!1256404)))))

(declare-fun b!3632385 () Bool)

(declare-fun e!2248457 () Bool)

(declare-fun size!29203 (List!38394) Int)

(assert (=> b!3632385 (= e!2248457 (>= (size!29203 lt!1256404) (size!29203 lt!1256417)))))

(declare-fun d!1068380 () Bool)

(assert (=> d!1068380 e!2248457))

(declare-fun res!1471090 () Bool)

(assert (=> d!1068380 (=> res!1471090 e!2248457)))

(declare-fun lt!1256455 () Bool)

(assert (=> d!1068380 (= res!1471090 (not lt!1256455))))

(assert (=> d!1068380 (= lt!1256455 e!2248459)))

(declare-fun res!1471091 () Bool)

(assert (=> d!1068380 (=> res!1471091 e!2248459)))

(assert (=> d!1068380 (= res!1471091 ((_ is Nil!38270) lt!1256417))))

(assert (=> d!1068380 (= (isPrefix!3073 lt!1256417 lt!1256404) lt!1256455)))

(assert (= (and d!1068380 (not res!1471091)) b!3632382))

(assert (= (and b!3632382 res!1471092) b!3632383))

(assert (= (and b!3632383 res!1471093) b!3632384))

(assert (= (and d!1068380 (not res!1471090)) b!3632385))

(declare-fun m!4134143 () Bool)

(assert (=> b!3632384 m!4134143))

(declare-fun m!4134145 () Bool)

(assert (=> b!3632384 m!4134145))

(assert (=> b!3632384 m!4134143))

(assert (=> b!3632384 m!4134145))

(declare-fun m!4134147 () Bool)

(assert (=> b!3632384 m!4134147))

(declare-fun m!4134149 () Bool)

(assert (=> b!3632383 m!4134149))

(declare-fun m!4134151 () Bool)

(assert (=> b!3632383 m!4134151))

(declare-fun m!4134153 () Bool)

(assert (=> b!3632385 m!4134153))

(declare-fun m!4134155 () Bool)

(assert (=> b!3632385 m!4134155))

(assert (=> b!3632210 d!1068380))

(declare-fun b!3632388 () Bool)

(declare-fun e!2248461 () Bool)

(assert (=> b!3632388 (= e!2248461 (isPrefix!3073 (tail!5623 lt!1256420) (tail!5623 lt!1256419)))))

(declare-fun b!3632386 () Bool)

(declare-fun e!2248462 () Bool)

(assert (=> b!3632386 (= e!2248462 e!2248461)))

(declare-fun res!1471096 () Bool)

(assert (=> b!3632386 (=> (not res!1471096) (not e!2248461))))

(assert (=> b!3632386 (= res!1471096 (not ((_ is Nil!38270) lt!1256419)))))

(declare-fun b!3632387 () Bool)

(declare-fun res!1471097 () Bool)

(assert (=> b!3632387 (=> (not res!1471097) (not e!2248461))))

(assert (=> b!3632387 (= res!1471097 (= (head!7692 lt!1256420) (head!7692 lt!1256419)))))

(declare-fun b!3632389 () Bool)

(declare-fun e!2248460 () Bool)

(assert (=> b!3632389 (= e!2248460 (>= (size!29203 lt!1256419) (size!29203 lt!1256420)))))

(declare-fun d!1068382 () Bool)

(assert (=> d!1068382 e!2248460))

(declare-fun res!1471094 () Bool)

(assert (=> d!1068382 (=> res!1471094 e!2248460)))

(declare-fun lt!1256456 () Bool)

(assert (=> d!1068382 (= res!1471094 (not lt!1256456))))

(assert (=> d!1068382 (= lt!1256456 e!2248462)))

(declare-fun res!1471095 () Bool)

(assert (=> d!1068382 (=> res!1471095 e!2248462)))

(assert (=> d!1068382 (= res!1471095 ((_ is Nil!38270) lt!1256420))))

(assert (=> d!1068382 (= (isPrefix!3073 lt!1256420 lt!1256419) lt!1256456)))

(assert (= (and d!1068382 (not res!1471095)) b!3632386))

(assert (= (and b!3632386 res!1471096) b!3632387))

(assert (= (and b!3632387 res!1471097) b!3632388))

(assert (= (and d!1068382 (not res!1471094)) b!3632389))

(declare-fun m!4134157 () Bool)

(assert (=> b!3632388 m!4134157))

(declare-fun m!4134159 () Bool)

(assert (=> b!3632388 m!4134159))

(assert (=> b!3632388 m!4134157))

(assert (=> b!3632388 m!4134159))

(declare-fun m!4134161 () Bool)

(assert (=> b!3632388 m!4134161))

(declare-fun m!4134163 () Bool)

(assert (=> b!3632387 m!4134163))

(declare-fun m!4134165 () Bool)

(assert (=> b!3632387 m!4134165))

(declare-fun m!4134167 () Bool)

(assert (=> b!3632389 m!4134167))

(declare-fun m!4134169 () Bool)

(assert (=> b!3632389 m!4134169))

(assert (=> b!3632210 d!1068382))

(declare-fun d!1068384 () Bool)

(declare-fun e!2248489 () Bool)

(assert (=> d!1068384 e!2248489))

(declare-fun res!1471135 () Bool)

(assert (=> d!1068384 (=> res!1471135 e!2248489)))

(declare-fun lt!1256489 () Option!8048)

(declare-fun isEmpty!22644 (Option!8048) Bool)

(assert (=> d!1068384 (= res!1471135 (isEmpty!22644 lt!1256489))))

(declare-fun e!2248491 () Option!8048)

(assert (=> d!1068384 (= lt!1256489 e!2248491)))

(declare-fun c!628363 () Bool)

(assert (=> d!1068384 (= c!628363 (and ((_ is Cons!38271) rules!3307) (= (tag!6442 (h!43691 rules!3307)) (tag!6442 (rule!8482 (_1!22204 lt!1256413))))))))

(assert (=> d!1068384 (rulesInvariant!4696 thiss!23823 rules!3307)))

(assert (=> d!1068384 (= (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 (_1!22204 lt!1256413)))) lt!1256489)))

(declare-fun b!3632443 () Bool)

(assert (=> b!3632443 (= e!2248491 (Some!8047 (h!43691 rules!3307)))))

(declare-fun b!3632444 () Bool)

(declare-fun e!2248488 () Option!8048)

(assert (=> b!3632444 (= e!2248491 e!2248488)))

(declare-fun c!628364 () Bool)

(assert (=> b!3632444 (= c!628364 (and ((_ is Cons!38271) rules!3307) (not (= (tag!6442 (h!43691 rules!3307)) (tag!6442 (rule!8482 (_1!22204 lt!1256413)))))))))

(declare-fun b!3632445 () Bool)

(declare-fun e!2248490 () Bool)

(assert (=> b!3632445 (= e!2248489 e!2248490)))

(declare-fun res!1471136 () Bool)

(assert (=> b!3632445 (=> (not res!1471136) (not e!2248490))))

(assert (=> b!3632445 (= res!1471136 (contains!7485 rules!3307 (get!12514 lt!1256489)))))

(declare-fun b!3632446 () Bool)

(assert (=> b!3632446 (= e!2248490 (= (tag!6442 (get!12514 lt!1256489)) (tag!6442 (rule!8482 (_1!22204 lt!1256413)))))))

(declare-fun b!3632447 () Bool)

(declare-fun lt!1256487 () Unit!55088)

(declare-fun lt!1256488 () Unit!55088)

(assert (=> b!3632447 (= lt!1256487 lt!1256488)))

(assert (=> b!3632447 (rulesInvariant!4696 thiss!23823 (t!295358 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!555 (LexerInterface!5299 Rule!11220 List!38395) Unit!55088)

(assert (=> b!3632447 (= lt!1256488 (lemmaInvariantOnRulesThenOnTail!555 thiss!23823 (h!43691 rules!3307) (t!295358 rules!3307)))))

(assert (=> b!3632447 (= e!2248488 (getRuleFromTag!1314 thiss!23823 (t!295358 rules!3307) (tag!6442 (rule!8482 (_1!22204 lt!1256413)))))))

(declare-fun b!3632448 () Bool)

(assert (=> b!3632448 (= e!2248488 None!8047)))

(assert (= (and d!1068384 c!628363) b!3632443))

(assert (= (and d!1068384 (not c!628363)) b!3632444))

(assert (= (and b!3632444 c!628364) b!3632447))

(assert (= (and b!3632444 (not c!628364)) b!3632448))

(assert (= (and d!1068384 (not res!1471135)) b!3632445))

(assert (= (and b!3632445 res!1471136) b!3632446))

(declare-fun m!4134243 () Bool)

(assert (=> d!1068384 m!4134243))

(assert (=> d!1068384 m!4133923))

(declare-fun m!4134245 () Bool)

(assert (=> b!3632445 m!4134245))

(assert (=> b!3632445 m!4134245))

(declare-fun m!4134247 () Bool)

(assert (=> b!3632445 m!4134247))

(assert (=> b!3632446 m!4134245))

(declare-fun m!4134249 () Bool)

(assert (=> b!3632447 m!4134249))

(declare-fun m!4134251 () Bool)

(assert (=> b!3632447 m!4134251))

(declare-fun m!4134253 () Bool)

(assert (=> b!3632447 m!4134253))

(assert (=> b!3632210 d!1068384))

(declare-fun d!1068398 () Bool)

(declare-fun lt!1256492 () BalanceConc!22968)

(assert (=> d!1068398 (= (list!14148 lt!1256492) (originalCharacters!6424 (_1!22204 lt!1256413)))))

(declare-fun dynLambda!16591 (Int TokenValue!5940) BalanceConc!22968)

(assert (=> d!1068398 (= lt!1256492 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (value!183195 (_1!22204 lt!1256413))))))

(assert (=> d!1068398 (= (charsOf!3724 (_1!22204 lt!1256413)) lt!1256492)))

(declare-fun b_lambda!107549 () Bool)

(assert (=> (not b_lambda!107549) (not d!1068398)))

(declare-fun tb!208729 () Bool)

(declare-fun t!295368 () Bool)

(assert (=> (and b!3632226 (= (toChars!7861 (transformation!5710 rule!403)) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295368) tb!208729))

(declare-fun b!3632453 () Bool)

(declare-fun e!2248494 () Bool)

(declare-fun tp!1108852 () Bool)

(declare-fun inv!51697 (Conc!11677) Bool)

(assert (=> b!3632453 (= e!2248494 (and (inv!51697 (c!628323 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (value!183195 (_1!22204 lt!1256413))))) tp!1108852))))

(declare-fun result!254272 () Bool)

(declare-fun inv!51698 (BalanceConc!22968) Bool)

(assert (=> tb!208729 (= result!254272 (and (inv!51698 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (value!183195 (_1!22204 lt!1256413)))) e!2248494))))

(assert (= tb!208729 b!3632453))

(declare-fun m!4134255 () Bool)

(assert (=> b!3632453 m!4134255))

(declare-fun m!4134257 () Bool)

(assert (=> tb!208729 m!4134257))

(assert (=> d!1068398 t!295368))

(declare-fun b_and!266715 () Bool)

(assert (= b_and!266693 (and (=> t!295368 result!254272) b_and!266715)))

(declare-fun t!295370 () Bool)

(declare-fun tb!208731 () Bool)

(assert (=> (and b!3632227 (= (toChars!7861 (transformation!5710 (rule!8482 token!511))) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295370) tb!208731))

(declare-fun result!254276 () Bool)

(assert (= result!254276 result!254272))

(assert (=> d!1068398 t!295370))

(declare-fun b_and!266717 () Bool)

(assert (= b_and!266697 (and (=> t!295370 result!254276) b_and!266717)))

(declare-fun tb!208733 () Bool)

(declare-fun t!295372 () Bool)

(assert (=> (and b!3632221 (= (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295372) tb!208733))

(declare-fun result!254278 () Bool)

(assert (= result!254278 result!254272))

(assert (=> d!1068398 t!295372))

(declare-fun b_and!266719 () Bool)

(assert (= b_and!266701 (and (=> t!295372 result!254278) b_and!266719)))

(declare-fun t!295374 () Bool)

(declare-fun tb!208735 () Bool)

(assert (=> (and b!3632209 (= (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295374) tb!208735))

(declare-fun result!254280 () Bool)

(assert (= result!254280 result!254272))

(assert (=> d!1068398 t!295374))

(declare-fun b_and!266721 () Bool)

(assert (= b_and!266705 (and (=> t!295374 result!254280) b_and!266721)))

(declare-fun m!4134259 () Bool)

(assert (=> d!1068398 m!4134259))

(declare-fun m!4134261 () Bool)

(assert (=> d!1068398 m!4134261))

(assert (=> b!3632210 d!1068398))

(declare-fun b!3632472 () Bool)

(declare-fun e!2248502 () Bool)

(declare-fun e!2248501 () Bool)

(assert (=> b!3632472 (= e!2248502 e!2248501)))

(declare-fun res!1471153 () Bool)

(assert (=> b!3632472 (=> (not res!1471153) (not e!2248501))))

(declare-fun lt!1256504 () Option!8049)

(assert (=> b!3632472 (= res!1471153 (isDefined!6281 lt!1256504))))

(declare-fun d!1068400 () Bool)

(assert (=> d!1068400 e!2248502))

(declare-fun res!1471154 () Bool)

(assert (=> d!1068400 (=> res!1471154 e!2248502)))

(declare-fun isEmpty!22645 (Option!8049) Bool)

(assert (=> d!1068400 (= res!1471154 (isEmpty!22645 lt!1256504))))

(declare-fun e!2248503 () Option!8049)

(assert (=> d!1068400 (= lt!1256504 e!2248503)))

(declare-fun c!628367 () Bool)

(assert (=> d!1068400 (= c!628367 (and ((_ is Cons!38271) rules!3307) ((_ is Nil!38271) (t!295358 rules!3307))))))

(declare-fun lt!1256503 () Unit!55088)

(declare-fun lt!1256505 () Unit!55088)

(assert (=> d!1068400 (= lt!1256503 lt!1256505)))

(assert (=> d!1068400 (isPrefix!3073 lt!1256404 lt!1256404)))

(declare-fun lemmaIsPrefixRefl!1946 (List!38394 List!38394) Unit!55088)

(assert (=> d!1068400 (= lt!1256505 (lemmaIsPrefixRefl!1946 lt!1256404 lt!1256404))))

(declare-fun rulesValidInductive!2011 (LexerInterface!5299 List!38395) Bool)

(assert (=> d!1068400 (rulesValidInductive!2011 thiss!23823 rules!3307)))

(assert (=> d!1068400 (= (maxPrefix!2833 thiss!23823 rules!3307 lt!1256404) lt!1256504)))

(declare-fun b!3632473 () Bool)

(declare-fun res!1471151 () Bool)

(assert (=> b!3632473 (=> (not res!1471151) (not e!2248501))))

(assert (=> b!3632473 (= res!1471151 (= (value!183195 (_1!22204 (get!12513 lt!1256504))) (apply!9212 (transformation!5710 (rule!8482 (_1!22204 (get!12513 lt!1256504)))) (seqFromList!4259 (originalCharacters!6424 (_1!22204 (get!12513 lt!1256504)))))))))

(declare-fun b!3632474 () Bool)

(declare-fun res!1471156 () Bool)

(assert (=> b!3632474 (=> (not res!1471156) (not e!2248501))))

(assert (=> b!3632474 (= res!1471156 (matchR!5038 (regex!5710 (rule!8482 (_1!22204 (get!12513 lt!1256504)))) (list!14148 (charsOf!3724 (_1!22204 (get!12513 lt!1256504))))))))

(declare-fun b!3632475 () Bool)

(declare-fun call!262714 () Option!8049)

(assert (=> b!3632475 (= e!2248503 call!262714)))

(declare-fun b!3632476 () Bool)

(declare-fun lt!1256507 () Option!8049)

(declare-fun lt!1256506 () Option!8049)

(assert (=> b!3632476 (= e!2248503 (ite (and ((_ is None!8048) lt!1256507) ((_ is None!8048) lt!1256506)) None!8048 (ite ((_ is None!8048) lt!1256506) lt!1256507 (ite ((_ is None!8048) lt!1256507) lt!1256506 (ite (>= (size!29200 (_1!22204 (v!37844 lt!1256507))) (size!29200 (_1!22204 (v!37844 lt!1256506)))) lt!1256507 lt!1256506)))))))

(assert (=> b!3632476 (= lt!1256507 call!262714)))

(assert (=> b!3632476 (= lt!1256506 (maxPrefix!2833 thiss!23823 (t!295358 rules!3307) lt!1256404))))

(declare-fun b!3632477 () Bool)

(declare-fun res!1471155 () Bool)

(assert (=> b!3632477 (=> (not res!1471155) (not e!2248501))))

(assert (=> b!3632477 (= res!1471155 (< (size!29203 (_2!22204 (get!12513 lt!1256504))) (size!29203 lt!1256404)))))

(declare-fun b!3632478 () Bool)

(declare-fun res!1471157 () Bool)

(assert (=> b!3632478 (=> (not res!1471157) (not e!2248501))))

(assert (=> b!3632478 (= res!1471157 (= (++!9526 (list!14148 (charsOf!3724 (_1!22204 (get!12513 lt!1256504)))) (_2!22204 (get!12513 lt!1256504))) lt!1256404))))

(declare-fun bm!262709 () Bool)

(declare-fun maxPrefixOneRule!1971 (LexerInterface!5299 Rule!11220 List!38394) Option!8049)

(assert (=> bm!262709 (= call!262714 (maxPrefixOneRule!1971 thiss!23823 (h!43691 rules!3307) lt!1256404))))

(declare-fun b!3632479 () Bool)

(declare-fun res!1471152 () Bool)

(assert (=> b!3632479 (=> (not res!1471152) (not e!2248501))))

(assert (=> b!3632479 (= res!1471152 (= (list!14148 (charsOf!3724 (_1!22204 (get!12513 lt!1256504)))) (originalCharacters!6424 (_1!22204 (get!12513 lt!1256504)))))))

(declare-fun b!3632480 () Bool)

(assert (=> b!3632480 (= e!2248501 (contains!7485 rules!3307 (rule!8482 (_1!22204 (get!12513 lt!1256504)))))))

(assert (= (and d!1068400 c!628367) b!3632475))

(assert (= (and d!1068400 (not c!628367)) b!3632476))

(assert (= (or b!3632475 b!3632476) bm!262709))

(assert (= (and d!1068400 (not res!1471154)) b!3632472))

(assert (= (and b!3632472 res!1471153) b!3632479))

(assert (= (and b!3632479 res!1471152) b!3632477))

(assert (= (and b!3632477 res!1471155) b!3632478))

(assert (= (and b!3632478 res!1471157) b!3632473))

(assert (= (and b!3632473 res!1471151) b!3632474))

(assert (= (and b!3632474 res!1471156) b!3632480))

(declare-fun m!4134263 () Bool)

(assert (=> b!3632477 m!4134263))

(declare-fun m!4134265 () Bool)

(assert (=> b!3632477 m!4134265))

(assert (=> b!3632477 m!4134153))

(declare-fun m!4134267 () Bool)

(assert (=> b!3632476 m!4134267))

(declare-fun m!4134269 () Bool)

(assert (=> bm!262709 m!4134269))

(assert (=> b!3632474 m!4134263))

(declare-fun m!4134271 () Bool)

(assert (=> b!3632474 m!4134271))

(assert (=> b!3632474 m!4134271))

(declare-fun m!4134273 () Bool)

(assert (=> b!3632474 m!4134273))

(assert (=> b!3632474 m!4134273))

(declare-fun m!4134275 () Bool)

(assert (=> b!3632474 m!4134275))

(assert (=> b!3632479 m!4134263))

(assert (=> b!3632479 m!4134271))

(assert (=> b!3632479 m!4134271))

(assert (=> b!3632479 m!4134273))

(assert (=> b!3632473 m!4134263))

(declare-fun m!4134277 () Bool)

(assert (=> b!3632473 m!4134277))

(assert (=> b!3632473 m!4134277))

(declare-fun m!4134279 () Bool)

(assert (=> b!3632473 m!4134279))

(assert (=> b!3632478 m!4134263))

(assert (=> b!3632478 m!4134271))

(assert (=> b!3632478 m!4134271))

(assert (=> b!3632478 m!4134273))

(assert (=> b!3632478 m!4134273))

(declare-fun m!4134281 () Bool)

(assert (=> b!3632478 m!4134281))

(assert (=> b!3632480 m!4134263))

(declare-fun m!4134283 () Bool)

(assert (=> b!3632480 m!4134283))

(declare-fun m!4134285 () Bool)

(assert (=> d!1068400 m!4134285))

(declare-fun m!4134287 () Bool)

(assert (=> d!1068400 m!4134287))

(declare-fun m!4134289 () Bool)

(assert (=> d!1068400 m!4134289))

(declare-fun m!4134291 () Bool)

(assert (=> d!1068400 m!4134291))

(declare-fun m!4134293 () Bool)

(assert (=> b!3632472 m!4134293))

(assert (=> b!3632210 d!1068400))

(declare-fun d!1068402 () Bool)

(declare-fun e!2248509 () Bool)

(assert (=> d!1068402 e!2248509))

(declare-fun res!1471163 () Bool)

(assert (=> d!1068402 (=> (not res!1471163) (not e!2248509))))

(declare-fun lt!1256510 () List!38394)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5490 (List!38394) (InoxSet C!21124))

(assert (=> d!1068402 (= res!1471163 (= (content!5490 lt!1256510) ((_ map or) (content!5490 lt!1256420) (content!5490 (_2!22204 lt!1256413)))))))

(declare-fun e!2248508 () List!38394)

(assert (=> d!1068402 (= lt!1256510 e!2248508)))

(declare-fun c!628370 () Bool)

(assert (=> d!1068402 (= c!628370 ((_ is Nil!38270) lt!1256420))))

(assert (=> d!1068402 (= (++!9526 lt!1256420 (_2!22204 lt!1256413)) lt!1256510)))

(declare-fun b!3632490 () Bool)

(assert (=> b!3632490 (= e!2248508 (Cons!38270 (h!43690 lt!1256420) (++!9526 (t!295357 lt!1256420) (_2!22204 lt!1256413))))))

(declare-fun b!3632489 () Bool)

(assert (=> b!3632489 (= e!2248508 (_2!22204 lt!1256413))))

(declare-fun b!3632491 () Bool)

(declare-fun res!1471162 () Bool)

(assert (=> b!3632491 (=> (not res!1471162) (not e!2248509))))

(assert (=> b!3632491 (= res!1471162 (= (size!29203 lt!1256510) (+ (size!29203 lt!1256420) (size!29203 (_2!22204 lt!1256413)))))))

(declare-fun b!3632492 () Bool)

(assert (=> b!3632492 (= e!2248509 (or (not (= (_2!22204 lt!1256413) Nil!38270)) (= lt!1256510 lt!1256420)))))

(assert (= (and d!1068402 c!628370) b!3632489))

(assert (= (and d!1068402 (not c!628370)) b!3632490))

(assert (= (and d!1068402 res!1471163) b!3632491))

(assert (= (and b!3632491 res!1471162) b!3632492))

(declare-fun m!4134295 () Bool)

(assert (=> d!1068402 m!4134295))

(declare-fun m!4134297 () Bool)

(assert (=> d!1068402 m!4134297))

(declare-fun m!4134299 () Bool)

(assert (=> d!1068402 m!4134299))

(declare-fun m!4134301 () Bool)

(assert (=> b!3632490 m!4134301))

(declare-fun m!4134303 () Bool)

(assert (=> b!3632491 m!4134303))

(assert (=> b!3632491 m!4134169))

(declare-fun m!4134305 () Bool)

(assert (=> b!3632491 m!4134305))

(assert (=> b!3632210 d!1068402))

(declare-fun d!1068404 () Bool)

(declare-fun list!14151 (Conc!11677) List!38394)

(assert (=> d!1068404 (= (list!14148 lt!1256422) (list!14151 (c!628323 lt!1256422)))))

(declare-fun bs!571698 () Bool)

(assert (= bs!571698 d!1068404))

(declare-fun m!4134307 () Bool)

(assert (=> bs!571698 m!4134307))

(assert (=> b!3632210 d!1068404))

(declare-fun d!1068406 () Bool)

(assert (=> d!1068406 (= (get!12513 lt!1256408) (v!37844 lt!1256408))))

(assert (=> b!3632210 d!1068406))

(declare-fun d!1068408 () Bool)

(assert (=> d!1068408 (= (isDefined!6280 lt!1256407) (not (isEmpty!22644 lt!1256407)))))

(declare-fun bs!571699 () Bool)

(assert (= bs!571699 d!1068408))

(declare-fun m!4134309 () Bool)

(assert (=> bs!571699 m!4134309))

(assert (=> b!3632210 d!1068408))

(declare-fun b!3632495 () Bool)

(declare-fun e!2248511 () Bool)

(assert (=> b!3632495 (= e!2248511 (isPrefix!3073 (tail!5623 lt!1256420) (tail!5623 lt!1256404)))))

(declare-fun b!3632493 () Bool)

(declare-fun e!2248512 () Bool)

(assert (=> b!3632493 (= e!2248512 e!2248511)))

(declare-fun res!1471166 () Bool)

(assert (=> b!3632493 (=> (not res!1471166) (not e!2248511))))

(assert (=> b!3632493 (= res!1471166 (not ((_ is Nil!38270) lt!1256404)))))

(declare-fun b!3632494 () Bool)

(declare-fun res!1471167 () Bool)

(assert (=> b!3632494 (=> (not res!1471167) (not e!2248511))))

(assert (=> b!3632494 (= res!1471167 (= (head!7692 lt!1256420) (head!7692 lt!1256404)))))

(declare-fun b!3632496 () Bool)

(declare-fun e!2248510 () Bool)

(assert (=> b!3632496 (= e!2248510 (>= (size!29203 lt!1256404) (size!29203 lt!1256420)))))

(declare-fun d!1068410 () Bool)

(assert (=> d!1068410 e!2248510))

(declare-fun res!1471164 () Bool)

(assert (=> d!1068410 (=> res!1471164 e!2248510)))

(declare-fun lt!1256511 () Bool)

(assert (=> d!1068410 (= res!1471164 (not lt!1256511))))

(assert (=> d!1068410 (= lt!1256511 e!2248512)))

(declare-fun res!1471165 () Bool)

(assert (=> d!1068410 (=> res!1471165 e!2248512)))

(assert (=> d!1068410 (= res!1471165 ((_ is Nil!38270) lt!1256420))))

(assert (=> d!1068410 (= (isPrefix!3073 lt!1256420 lt!1256404) lt!1256511)))

(assert (= (and d!1068410 (not res!1471165)) b!3632493))

(assert (= (and b!3632493 res!1471166) b!3632494))

(assert (= (and b!3632494 res!1471167) b!3632495))

(assert (= (and d!1068410 (not res!1471164)) b!3632496))

(assert (=> b!3632495 m!4134157))

(assert (=> b!3632495 m!4134145))

(assert (=> b!3632495 m!4134157))

(assert (=> b!3632495 m!4134145))

(declare-fun m!4134311 () Bool)

(assert (=> b!3632495 m!4134311))

(assert (=> b!3632494 m!4134163))

(assert (=> b!3632494 m!4134151))

(assert (=> b!3632496 m!4134153))

(assert (=> b!3632496 m!4134169))

(assert (=> b!3632210 d!1068410))

(declare-fun d!1068412 () Bool)

(assert (=> d!1068412 (isPrefix!3073 lt!1256420 (++!9526 lt!1256420 (_2!22204 lt!1256413)))))

(declare-fun lt!1256512 () Unit!55088)

(assert (=> d!1068412 (= lt!1256512 (choose!21334 lt!1256420 (_2!22204 lt!1256413)))))

(assert (=> d!1068412 (= (lemmaConcatTwoListThenFirstIsPrefix!1992 lt!1256420 (_2!22204 lt!1256413)) lt!1256512)))

(declare-fun bs!571700 () Bool)

(assert (= bs!571700 d!1068412))

(assert (=> bs!571700 m!4133979))

(assert (=> bs!571700 m!4133979))

(declare-fun m!4134313 () Bool)

(assert (=> bs!571700 m!4134313))

(declare-fun m!4134315 () Bool)

(assert (=> bs!571700 m!4134315))

(assert (=> b!3632210 d!1068412))

(declare-fun d!1068414 () Bool)

(declare-fun e!2248514 () Bool)

(assert (=> d!1068414 e!2248514))

(declare-fun res!1471169 () Bool)

(assert (=> d!1068414 (=> (not res!1471169) (not e!2248514))))

(declare-fun lt!1256513 () List!38394)

(assert (=> d!1068414 (= res!1471169 (= (content!5490 lt!1256513) ((_ map or) (content!5490 lt!1256417) (content!5490 suffix!1395))))))

(declare-fun e!2248513 () List!38394)

(assert (=> d!1068414 (= lt!1256513 e!2248513)))

(declare-fun c!628371 () Bool)

(assert (=> d!1068414 (= c!628371 ((_ is Nil!38270) lt!1256417))))

(assert (=> d!1068414 (= (++!9526 lt!1256417 suffix!1395) lt!1256513)))

(declare-fun b!3632498 () Bool)

(assert (=> b!3632498 (= e!2248513 (Cons!38270 (h!43690 lt!1256417) (++!9526 (t!295357 lt!1256417) suffix!1395)))))

(declare-fun b!3632497 () Bool)

(assert (=> b!3632497 (= e!2248513 suffix!1395)))

(declare-fun b!3632499 () Bool)

(declare-fun res!1471168 () Bool)

(assert (=> b!3632499 (=> (not res!1471168) (not e!2248514))))

(assert (=> b!3632499 (= res!1471168 (= (size!29203 lt!1256513) (+ (size!29203 lt!1256417) (size!29203 suffix!1395))))))

(declare-fun b!3632500 () Bool)

(assert (=> b!3632500 (= e!2248514 (or (not (= suffix!1395 Nil!38270)) (= lt!1256513 lt!1256417)))))

(assert (= (and d!1068414 c!628371) b!3632497))

(assert (= (and d!1068414 (not c!628371)) b!3632498))

(assert (= (and d!1068414 res!1471169) b!3632499))

(assert (= (and b!3632499 res!1471168) b!3632500))

(declare-fun m!4134317 () Bool)

(assert (=> d!1068414 m!4134317))

(declare-fun m!4134319 () Bool)

(assert (=> d!1068414 m!4134319))

(declare-fun m!4134321 () Bool)

(assert (=> d!1068414 m!4134321))

(declare-fun m!4134323 () Bool)

(assert (=> b!3632498 m!4134323))

(declare-fun m!4134325 () Bool)

(assert (=> b!3632499 m!4134325))

(assert (=> b!3632499 m!4134155))

(declare-fun m!4134327 () Bool)

(assert (=> b!3632499 m!4134327))

(assert (=> b!3632210 d!1068414))

(declare-fun b!3632598 () Bool)

(declare-fun e!2248564 () Bool)

(declare-fun lt!1256633 () Token!10786)

(assert (=> b!3632598 (= e!2248564 (= (rule!8482 lt!1256633) (get!12514 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 lt!1256633))))))))

(declare-fun d!1068416 () Bool)

(assert (=> d!1068416 (isDefined!6281 (maxPrefix!2833 thiss!23823 rules!3307 (++!9526 lt!1256417 suffix!1395)))))

(declare-fun lt!1256634 () Unit!55088)

(declare-fun e!2248563 () Unit!55088)

(assert (=> d!1068416 (= lt!1256634 e!2248563)))

(declare-fun c!628391 () Bool)

(assert (=> d!1068416 (= c!628391 (isEmpty!22645 (maxPrefix!2833 thiss!23823 rules!3307 (++!9526 lt!1256417 suffix!1395))))))

(declare-fun lt!1256618 () Unit!55088)

(declare-fun lt!1256625 () Unit!55088)

(assert (=> d!1068416 (= lt!1256618 lt!1256625)))

(assert (=> d!1068416 e!2248564))

(declare-fun res!1471230 () Bool)

(assert (=> d!1068416 (=> (not res!1471230) (not e!2248564))))

(assert (=> d!1068416 (= res!1471230 (isDefined!6280 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 lt!1256633)))))))

(assert (=> d!1068416 (= lt!1256625 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1314 thiss!23823 rules!3307 lt!1256417 lt!1256633))))

(declare-fun lt!1256619 () Unit!55088)

(declare-fun lt!1256627 () Unit!55088)

(assert (=> d!1068416 (= lt!1256619 lt!1256627)))

(declare-fun lt!1256623 () List!38394)

(assert (=> d!1068416 (isPrefix!3073 lt!1256623 (++!9526 lt!1256417 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!476 (List!38394 List!38394 List!38394) Unit!55088)

(assert (=> d!1068416 (= lt!1256627 (lemmaPrefixStaysPrefixWhenAddingToSuffix!476 lt!1256623 lt!1256417 suffix!1395))))

(assert (=> d!1068416 (= lt!1256623 (list!14148 (charsOf!3724 lt!1256633)))))

(declare-fun lt!1256624 () Unit!55088)

(declare-fun lt!1256622 () Unit!55088)

(assert (=> d!1068416 (= lt!1256624 lt!1256622)))

(declare-fun lt!1256620 () List!38394)

(declare-fun lt!1256629 () List!38394)

(assert (=> d!1068416 (isPrefix!3073 lt!1256620 (++!9526 lt!1256620 lt!1256629))))

(assert (=> d!1068416 (= lt!1256622 (lemmaConcatTwoListThenFirstIsPrefix!1992 lt!1256620 lt!1256629))))

(assert (=> d!1068416 (= lt!1256629 (_2!22204 (get!12513 (maxPrefix!2833 thiss!23823 rules!3307 lt!1256417))))))

(assert (=> d!1068416 (= lt!1256620 (list!14148 (charsOf!3724 lt!1256633)))))

(declare-datatypes ((List!38397 0))(
  ( (Nil!38273) (Cons!38273 (h!43693 Token!10786) (t!295460 List!38397)) )
))
(declare-fun head!7694 (List!38397) Token!10786)

(declare-datatypes ((IArray!23363 0))(
  ( (IArray!23364 (innerList!11739 List!38397)) )
))
(declare-datatypes ((Conc!11679 0))(
  ( (Node!11679 (left!29880 Conc!11679) (right!30210 Conc!11679) (csize!23588 Int) (cheight!11890 Int)) (Leaf!18145 (xs!14881 IArray!23363) (csize!23589 Int)) (Empty!11679) )
))
(declare-datatypes ((BalanceConc!22972 0))(
  ( (BalanceConc!22973 (c!628435 Conc!11679)) )
))
(declare-fun list!14152 (BalanceConc!22972) List!38397)

(declare-datatypes ((tuple2!38144 0))(
  ( (tuple2!38145 (_1!22206 BalanceConc!22972) (_2!22206 BalanceConc!22968)) )
))
(declare-fun lex!2508 (LexerInterface!5299 List!38395 BalanceConc!22968) tuple2!38144)

(assert (=> d!1068416 (= lt!1256633 (head!7694 (list!14152 (_1!22206 (lex!2508 thiss!23823 rules!3307 (seqFromList!4259 lt!1256417))))))))

(assert (=> d!1068416 (not (isEmpty!22640 rules!3307))))

(assert (=> d!1068416 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!977 thiss!23823 rules!3307 lt!1256417 suffix!1395) lt!1256634)))

(declare-fun b!3632599 () Bool)

(declare-fun Unit!55092 () Unit!55088)

(assert (=> b!3632599 (= e!2248563 Unit!55092)))

(declare-fun lt!1256628 () List!38394)

(assert (=> b!3632599 (= lt!1256628 (++!9526 lt!1256417 suffix!1395))))

(declare-fun lt!1256621 () Unit!55088)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!512 (LexerInterface!5299 Rule!11220 List!38395 List!38394) Unit!55088)

(assert (=> b!3632599 (= lt!1256621 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!512 thiss!23823 (rule!8482 lt!1256633) rules!3307 lt!1256628))))

(assert (=> b!3632599 (isEmpty!22645 (maxPrefixOneRule!1971 thiss!23823 (rule!8482 lt!1256633) lt!1256628))))

(declare-fun lt!1256631 () Unit!55088)

(assert (=> b!3632599 (= lt!1256631 lt!1256621)))

(declare-fun lt!1256632 () List!38394)

(assert (=> b!3632599 (= lt!1256632 (list!14148 (charsOf!3724 lt!1256633)))))

(declare-fun lt!1256626 () Unit!55088)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!500 (LexerInterface!5299 Rule!11220 List!38394 List!38394) Unit!55088)

(assert (=> b!3632599 (= lt!1256626 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!500 thiss!23823 (rule!8482 lt!1256633) lt!1256632 (++!9526 lt!1256417 suffix!1395)))))

(assert (=> b!3632599 (not (matchR!5038 (regex!5710 (rule!8482 lt!1256633)) lt!1256632))))

(declare-fun lt!1256630 () Unit!55088)

(assert (=> b!3632599 (= lt!1256630 lt!1256626)))

(assert (=> b!3632599 false))

(declare-fun b!3632600 () Bool)

(declare-fun Unit!55093 () Unit!55088)

(assert (=> b!3632600 (= e!2248563 Unit!55093)))

(declare-fun b!3632597 () Bool)

(declare-fun res!1471229 () Bool)

(assert (=> b!3632597 (=> (not res!1471229) (not e!2248564))))

(assert (=> b!3632597 (= res!1471229 (matchR!5038 (regex!5710 (get!12514 (getRuleFromTag!1314 thiss!23823 rules!3307 (tag!6442 (rule!8482 lt!1256633))))) (list!14148 (charsOf!3724 lt!1256633))))))

(assert (= (and d!1068416 res!1471230) b!3632597))

(assert (= (and b!3632597 res!1471229) b!3632598))

(assert (= (and d!1068416 c!628391) b!3632599))

(assert (= (and d!1068416 (not c!628391)) b!3632600))

(declare-fun m!4134455 () Bool)

(assert (=> b!3632598 m!4134455))

(assert (=> b!3632598 m!4134455))

(declare-fun m!4134457 () Bool)

(assert (=> b!3632598 m!4134457))

(declare-fun m!4134459 () Bool)

(assert (=> d!1068416 m!4134459))

(declare-fun m!4134461 () Bool)

(assert (=> d!1068416 m!4134461))

(assert (=> d!1068416 m!4134455))

(declare-fun m!4134463 () Bool)

(assert (=> d!1068416 m!4134463))

(assert (=> d!1068416 m!4133963))

(declare-fun m!4134465 () Bool)

(assert (=> d!1068416 m!4134465))

(assert (=> d!1068416 m!4133997))

(assert (=> d!1068416 m!4134461))

(declare-fun m!4134467 () Bool)

(assert (=> d!1068416 m!4134467))

(assert (=> d!1068416 m!4134455))

(assert (=> d!1068416 m!4133963))

(declare-fun m!4134469 () Bool)

(assert (=> d!1068416 m!4134469))

(declare-fun m!4134471 () Bool)

(assert (=> d!1068416 m!4134471))

(assert (=> d!1068416 m!4133997))

(declare-fun m!4134473 () Bool)

(assert (=> d!1068416 m!4134473))

(declare-fun m!4134475 () Bool)

(assert (=> d!1068416 m!4134475))

(declare-fun m!4134477 () Bool)

(assert (=> d!1068416 m!4134477))

(declare-fun m!4134479 () Bool)

(assert (=> d!1068416 m!4134479))

(assert (=> d!1068416 m!4134459))

(declare-fun m!4134481 () Bool)

(assert (=> d!1068416 m!4134481))

(assert (=> d!1068416 m!4134469))

(assert (=> d!1068416 m!4134473))

(declare-fun m!4134483 () Bool)

(assert (=> d!1068416 m!4134483))

(assert (=> d!1068416 m!4133913))

(assert (=> d!1068416 m!4134473))

(declare-fun m!4134485 () Bool)

(assert (=> d!1068416 m!4134485))

(declare-fun m!4134487 () Bool)

(assert (=> d!1068416 m!4134487))

(assert (=> d!1068416 m!4133997))

(declare-fun m!4134489 () Bool)

(assert (=> d!1068416 m!4134489))

(assert (=> d!1068416 m!4134475))

(declare-fun m!4134491 () Bool)

(assert (=> d!1068416 m!4134491))

(assert (=> b!3632599 m!4134469))

(assert (=> b!3632599 m!4134471))

(assert (=> b!3632599 m!4133997))

(declare-fun m!4134493 () Bool)

(assert (=> b!3632599 m!4134493))

(assert (=> b!3632599 m!4134469))

(declare-fun m!4134495 () Bool)

(assert (=> b!3632599 m!4134495))

(declare-fun m!4134497 () Bool)

(assert (=> b!3632599 m!4134497))

(assert (=> b!3632599 m!4133997))

(declare-fun m!4134499 () Bool)

(assert (=> b!3632599 m!4134499))

(assert (=> b!3632599 m!4134495))

(declare-fun m!4134501 () Bool)

(assert (=> b!3632599 m!4134501))

(assert (=> b!3632597 m!4134469))

(assert (=> b!3632597 m!4134471))

(assert (=> b!3632597 m!4134469))

(assert (=> b!3632597 m!4134471))

(declare-fun m!4134503 () Bool)

(assert (=> b!3632597 m!4134503))

(assert (=> b!3632597 m!4134455))

(assert (=> b!3632597 m!4134457))

(assert (=> b!3632597 m!4134455))

(assert (=> b!3632210 d!1068416))

(declare-fun d!1068448 () Bool)

(assert (=> d!1068448 (= (isDefined!6281 lt!1256405) (not (isEmpty!22645 lt!1256405)))))

(declare-fun bs!571706 () Bool)

(assert (= bs!571706 d!1068448))

(declare-fun m!4134505 () Bool)

(assert (=> bs!571706 m!4134505))

(assert (=> b!3632231 d!1068448))

(declare-fun b!3632601 () Bool)

(declare-fun e!2248566 () Bool)

(declare-fun e!2248565 () Bool)

(assert (=> b!3632601 (= e!2248566 e!2248565)))

(declare-fun res!1471233 () Bool)

(assert (=> b!3632601 (=> (not res!1471233) (not e!2248565))))

(declare-fun lt!1256636 () Option!8049)

(assert (=> b!3632601 (= res!1471233 (isDefined!6281 lt!1256636))))

(declare-fun d!1068450 () Bool)

(assert (=> d!1068450 e!2248566))

(declare-fun res!1471234 () Bool)

(assert (=> d!1068450 (=> res!1471234 e!2248566)))

(assert (=> d!1068450 (= res!1471234 (isEmpty!22645 lt!1256636))))

(declare-fun e!2248567 () Option!8049)

(assert (=> d!1068450 (= lt!1256636 e!2248567)))

(declare-fun c!628392 () Bool)

(assert (=> d!1068450 (= c!628392 (and ((_ is Cons!38271) rules!3307) ((_ is Nil!38271) (t!295358 rules!3307))))))

(declare-fun lt!1256635 () Unit!55088)

(declare-fun lt!1256637 () Unit!55088)

(assert (=> d!1068450 (= lt!1256635 lt!1256637)))

(assert (=> d!1068450 (isPrefix!3073 lt!1256417 lt!1256417)))

(assert (=> d!1068450 (= lt!1256637 (lemmaIsPrefixRefl!1946 lt!1256417 lt!1256417))))

(assert (=> d!1068450 (rulesValidInductive!2011 thiss!23823 rules!3307)))

(assert (=> d!1068450 (= (maxPrefix!2833 thiss!23823 rules!3307 lt!1256417) lt!1256636)))

(declare-fun b!3632602 () Bool)

(declare-fun res!1471231 () Bool)

(assert (=> b!3632602 (=> (not res!1471231) (not e!2248565))))

(assert (=> b!3632602 (= res!1471231 (= (value!183195 (_1!22204 (get!12513 lt!1256636))) (apply!9212 (transformation!5710 (rule!8482 (_1!22204 (get!12513 lt!1256636)))) (seqFromList!4259 (originalCharacters!6424 (_1!22204 (get!12513 lt!1256636)))))))))

(declare-fun b!3632603 () Bool)

(declare-fun res!1471236 () Bool)

(assert (=> b!3632603 (=> (not res!1471236) (not e!2248565))))

(assert (=> b!3632603 (= res!1471236 (matchR!5038 (regex!5710 (rule!8482 (_1!22204 (get!12513 lt!1256636)))) (list!14148 (charsOf!3724 (_1!22204 (get!12513 lt!1256636))))))))

(declare-fun b!3632604 () Bool)

(declare-fun call!262720 () Option!8049)

(assert (=> b!3632604 (= e!2248567 call!262720)))

(declare-fun b!3632605 () Bool)

(declare-fun lt!1256639 () Option!8049)

(declare-fun lt!1256638 () Option!8049)

(assert (=> b!3632605 (= e!2248567 (ite (and ((_ is None!8048) lt!1256639) ((_ is None!8048) lt!1256638)) None!8048 (ite ((_ is None!8048) lt!1256638) lt!1256639 (ite ((_ is None!8048) lt!1256639) lt!1256638 (ite (>= (size!29200 (_1!22204 (v!37844 lt!1256639))) (size!29200 (_1!22204 (v!37844 lt!1256638)))) lt!1256639 lt!1256638)))))))

(assert (=> b!3632605 (= lt!1256639 call!262720)))

(assert (=> b!3632605 (= lt!1256638 (maxPrefix!2833 thiss!23823 (t!295358 rules!3307) lt!1256417))))

(declare-fun b!3632606 () Bool)

(declare-fun res!1471235 () Bool)

(assert (=> b!3632606 (=> (not res!1471235) (not e!2248565))))

(assert (=> b!3632606 (= res!1471235 (< (size!29203 (_2!22204 (get!12513 lt!1256636))) (size!29203 lt!1256417)))))

(declare-fun b!3632607 () Bool)

(declare-fun res!1471237 () Bool)

(assert (=> b!3632607 (=> (not res!1471237) (not e!2248565))))

(assert (=> b!3632607 (= res!1471237 (= (++!9526 (list!14148 (charsOf!3724 (_1!22204 (get!12513 lt!1256636)))) (_2!22204 (get!12513 lt!1256636))) lt!1256417))))

(declare-fun bm!262715 () Bool)

(assert (=> bm!262715 (= call!262720 (maxPrefixOneRule!1971 thiss!23823 (h!43691 rules!3307) lt!1256417))))

(declare-fun b!3632608 () Bool)

(declare-fun res!1471232 () Bool)

(assert (=> b!3632608 (=> (not res!1471232) (not e!2248565))))

(assert (=> b!3632608 (= res!1471232 (= (list!14148 (charsOf!3724 (_1!22204 (get!12513 lt!1256636)))) (originalCharacters!6424 (_1!22204 (get!12513 lt!1256636)))))))

(declare-fun b!3632609 () Bool)

(assert (=> b!3632609 (= e!2248565 (contains!7485 rules!3307 (rule!8482 (_1!22204 (get!12513 lt!1256636)))))))

(assert (= (and d!1068450 c!628392) b!3632604))

(assert (= (and d!1068450 (not c!628392)) b!3632605))

(assert (= (or b!3632604 b!3632605) bm!262715))

(assert (= (and d!1068450 (not res!1471234)) b!3632601))

(assert (= (and b!3632601 res!1471233) b!3632608))

(assert (= (and b!3632608 res!1471232) b!3632606))

(assert (= (and b!3632606 res!1471235) b!3632607))

(assert (= (and b!3632607 res!1471237) b!3632602))

(assert (= (and b!3632602 res!1471231) b!3632603))

(assert (= (and b!3632603 res!1471236) b!3632609))

(declare-fun m!4134507 () Bool)

(assert (=> b!3632606 m!4134507))

(declare-fun m!4134509 () Bool)

(assert (=> b!3632606 m!4134509))

(assert (=> b!3632606 m!4134155))

(declare-fun m!4134511 () Bool)

(assert (=> b!3632605 m!4134511))

(declare-fun m!4134513 () Bool)

(assert (=> bm!262715 m!4134513))

(assert (=> b!3632603 m!4134507))

(declare-fun m!4134515 () Bool)

(assert (=> b!3632603 m!4134515))

(assert (=> b!3632603 m!4134515))

(declare-fun m!4134517 () Bool)

(assert (=> b!3632603 m!4134517))

(assert (=> b!3632603 m!4134517))

(declare-fun m!4134519 () Bool)

(assert (=> b!3632603 m!4134519))

(assert (=> b!3632608 m!4134507))

(assert (=> b!3632608 m!4134515))

(assert (=> b!3632608 m!4134515))

(assert (=> b!3632608 m!4134517))

(assert (=> b!3632602 m!4134507))

(declare-fun m!4134521 () Bool)

(assert (=> b!3632602 m!4134521))

(assert (=> b!3632602 m!4134521))

(declare-fun m!4134523 () Bool)

(assert (=> b!3632602 m!4134523))

(assert (=> b!3632607 m!4134507))

(assert (=> b!3632607 m!4134515))

(assert (=> b!3632607 m!4134515))

(assert (=> b!3632607 m!4134517))

(assert (=> b!3632607 m!4134517))

(declare-fun m!4134525 () Bool)

(assert (=> b!3632607 m!4134525))

(assert (=> b!3632609 m!4134507))

(declare-fun m!4134527 () Bool)

(assert (=> b!3632609 m!4134527))

(declare-fun m!4134529 () Bool)

(assert (=> d!1068450 m!4134529))

(declare-fun m!4134531 () Bool)

(assert (=> d!1068450 m!4134531))

(declare-fun m!4134533 () Bool)

(assert (=> d!1068450 m!4134533))

(assert (=> d!1068450 m!4134291))

(declare-fun m!4134535 () Bool)

(assert (=> b!3632601 m!4134535))

(assert (=> b!3632231 d!1068450))

(declare-fun d!1068452 () Bool)

(assert (=> d!1068452 (= (list!14148 (charsOf!3724 token!511)) (list!14151 (c!628323 (charsOf!3724 token!511))))))

(declare-fun bs!571707 () Bool)

(assert (= bs!571707 d!1068452))

(declare-fun m!4134537 () Bool)

(assert (=> bs!571707 m!4134537))

(assert (=> b!3632231 d!1068452))

(declare-fun d!1068454 () Bool)

(declare-fun lt!1256640 () BalanceConc!22968)

(assert (=> d!1068454 (= (list!14148 lt!1256640) (originalCharacters!6424 token!511))))

(assert (=> d!1068454 (= lt!1256640 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 token!511))) (value!183195 token!511)))))

(assert (=> d!1068454 (= (charsOf!3724 token!511) lt!1256640)))

(declare-fun b_lambda!107555 () Bool)

(assert (=> (not b_lambda!107555) (not d!1068454)))

(declare-fun t!295384 () Bool)

(declare-fun tb!208745 () Bool)

(assert (=> (and b!3632226 (= (toChars!7861 (transformation!5710 rule!403)) (toChars!7861 (transformation!5710 (rule!8482 token!511)))) t!295384) tb!208745))

(declare-fun b!3632610 () Bool)

(declare-fun e!2248568 () Bool)

(declare-fun tp!1108854 () Bool)

(assert (=> b!3632610 (= e!2248568 (and (inv!51697 (c!628323 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 token!511))) (value!183195 token!511)))) tp!1108854))))

(declare-fun result!254290 () Bool)

(assert (=> tb!208745 (= result!254290 (and (inv!51698 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 token!511))) (value!183195 token!511))) e!2248568))))

(assert (= tb!208745 b!3632610))

(declare-fun m!4134539 () Bool)

(assert (=> b!3632610 m!4134539))

(declare-fun m!4134541 () Bool)

(assert (=> tb!208745 m!4134541))

(assert (=> d!1068454 t!295384))

(declare-fun b_and!266739 () Bool)

(assert (= b_and!266715 (and (=> t!295384 result!254290) b_and!266739)))

(declare-fun t!295386 () Bool)

(declare-fun tb!208747 () Bool)

(assert (=> (and b!3632227 (= (toChars!7861 (transformation!5710 (rule!8482 token!511))) (toChars!7861 (transformation!5710 (rule!8482 token!511)))) t!295386) tb!208747))

(declare-fun result!254292 () Bool)

(assert (= result!254292 result!254290))

(assert (=> d!1068454 t!295386))

(declare-fun b_and!266741 () Bool)

(assert (= b_and!266717 (and (=> t!295386 result!254292) b_and!266741)))

(declare-fun t!295388 () Bool)

(declare-fun tb!208749 () Bool)

(assert (=> (and b!3632221 (= (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toChars!7861 (transformation!5710 (rule!8482 token!511)))) t!295388) tb!208749))

(declare-fun result!254294 () Bool)

(assert (= result!254294 result!254290))

(assert (=> d!1068454 t!295388))

(declare-fun b_and!266743 () Bool)

(assert (= b_and!266719 (and (=> t!295388 result!254294) b_and!266743)))

(declare-fun tb!208751 () Bool)

(declare-fun t!295390 () Bool)

(assert (=> (and b!3632209 (= (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toChars!7861 (transformation!5710 (rule!8482 token!511)))) t!295390) tb!208751))

(declare-fun result!254296 () Bool)

(assert (= result!254296 result!254290))

(assert (=> d!1068454 t!295390))

(declare-fun b_and!266745 () Bool)

(assert (= b_and!266721 (and (=> t!295390 result!254296) b_and!266745)))

(declare-fun m!4134543 () Bool)

(assert (=> d!1068454 m!4134543))

(declare-fun m!4134545 () Bool)

(assert (=> d!1068454 m!4134545))

(assert (=> b!3632231 d!1068454))

(declare-fun d!1068456 () Bool)

(assert (=> d!1068456 (= (inv!51690 (tag!6442 rule!403)) (= (mod (str.len (value!183194 (tag!6442 rule!403))) 2) 0))))

(assert (=> b!3632220 d!1068456))

(declare-fun d!1068458 () Bool)

(declare-fun res!1471240 () Bool)

(declare-fun e!2248571 () Bool)

(assert (=> d!1068458 (=> (not res!1471240) (not e!2248571))))

(declare-fun semiInverseModEq!2425 (Int Int) Bool)

(assert (=> d!1068458 (= res!1471240 (semiInverseModEq!2425 (toChars!7861 (transformation!5710 rule!403)) (toValue!8002 (transformation!5710 rule!403))))))

(assert (=> d!1068458 (= (inv!51693 (transformation!5710 rule!403)) e!2248571)))

(declare-fun b!3632613 () Bool)

(declare-fun equivClasses!2324 (Int Int) Bool)

(assert (=> b!3632613 (= e!2248571 (equivClasses!2324 (toChars!7861 (transformation!5710 rule!403)) (toValue!8002 (transformation!5710 rule!403))))))

(assert (= (and d!1068458 res!1471240) b!3632613))

(declare-fun m!4134547 () Bool)

(assert (=> d!1068458 m!4134547))

(declare-fun m!4134549 () Bool)

(assert (=> b!3632613 m!4134549))

(assert (=> b!3632220 d!1068458))

(declare-fun d!1068460 () Bool)

(declare-fun dynLambda!16596 (Int BalanceConc!22968) TokenValue!5940)

(assert (=> d!1068460 (= (apply!9212 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256422) (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) lt!1256422))))

(declare-fun b_lambda!107557 () Bool)

(assert (=> (not b_lambda!107557) (not d!1068460)))

(declare-fun t!295392 () Bool)

(declare-fun tb!208753 () Bool)

(assert (=> (and b!3632226 (= (toValue!8002 (transformation!5710 rule!403)) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295392) tb!208753))

(declare-fun result!254298 () Bool)

(assert (=> tb!208753 (= result!254298 (inv!21 (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) lt!1256422)))))

(declare-fun m!4134551 () Bool)

(assert (=> tb!208753 m!4134551))

(assert (=> d!1068460 t!295392))

(declare-fun b_and!266747 () Bool)

(assert (= b_and!266691 (and (=> t!295392 result!254298) b_and!266747)))

(declare-fun t!295394 () Bool)

(declare-fun tb!208755 () Bool)

(assert (=> (and b!3632227 (= (toValue!8002 (transformation!5710 (rule!8482 token!511))) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295394) tb!208755))

(declare-fun result!254302 () Bool)

(assert (= result!254302 result!254298))

(assert (=> d!1068460 t!295394))

(declare-fun b_and!266749 () Bool)

(assert (= b_and!266695 (and (=> t!295394 result!254302) b_and!266749)))

(declare-fun t!295396 () Bool)

(declare-fun tb!208757 () Bool)

(assert (=> (and b!3632221 (= (toValue!8002 (transformation!5710 anOtherTypeRule!33)) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295396) tb!208757))

(declare-fun result!254304 () Bool)

(assert (= result!254304 result!254298))

(assert (=> d!1068460 t!295396))

(declare-fun b_and!266751 () Bool)

(assert (= b_and!266699 (and (=> t!295396 result!254304) b_and!266751)))

(declare-fun t!295398 () Bool)

(declare-fun tb!208759 () Bool)

(assert (=> (and b!3632209 (= (toValue!8002 (transformation!5710 (h!43691 rules!3307))) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295398) tb!208759))

(declare-fun result!254306 () Bool)

(assert (= result!254306 result!254298))

(assert (=> d!1068460 t!295398))

(declare-fun b_and!266753 () Bool)

(assert (= b_and!266703 (and (=> t!295398 result!254306) b_and!266753)))

(declare-fun m!4134553 () Bool)

(assert (=> d!1068460 m!4134553))

(assert (=> b!3632222 d!1068460))

(declare-fun d!1068462 () Bool)

(declare-fun fromListB!1961 (List!38394) BalanceConc!22968)

(assert (=> d!1068462 (= (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413))) (fromListB!1961 (originalCharacters!6424 (_1!22204 lt!1256413))))))

(declare-fun bs!571708 () Bool)

(assert (= bs!571708 d!1068462))

(declare-fun m!4134555 () Bool)

(assert (=> bs!571708 m!4134555))

(assert (=> b!3632222 d!1068462))

(declare-fun b!3632696 () Bool)

(declare-fun e!2248623 () Bool)

(assert (=> b!3632696 (= e!2248623 true)))

(declare-fun d!1068464 () Bool)

(assert (=> d!1068464 e!2248623))

(assert (= d!1068464 b!3632696))

(declare-fun order!20955 () Int)

(declare-fun order!20957 () Int)

(declare-fun lambda!124290 () Int)

(declare-fun dynLambda!16597 (Int Int) Int)

(declare-fun dynLambda!16598 (Int Int) Int)

(assert (=> b!3632696 (< (dynLambda!16597 order!20955 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) (dynLambda!16598 order!20957 lambda!124290))))

(declare-fun order!20959 () Int)

(declare-fun dynLambda!16599 (Int Int) Int)

(assert (=> b!3632696 (< (dynLambda!16599 order!20959 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) (dynLambda!16598 order!20957 lambda!124290))))

(assert (=> d!1068464 (= (list!14148 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) lt!1256422))) (list!14148 lt!1256422))))

(declare-fun lt!1256651 () Unit!55088)

(declare-fun ForallOf!682 (Int BalanceConc!22968) Unit!55088)

(assert (=> d!1068464 (= lt!1256651 (ForallOf!682 lambda!124290 lt!1256422))))

(assert (=> d!1068464 (= (lemmaSemiInverse!1459 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256422) lt!1256651)))

(declare-fun b_lambda!107573 () Bool)

(assert (=> (not b_lambda!107573) (not d!1068464)))

(declare-fun tb!208795 () Bool)

(declare-fun t!295434 () Bool)

(assert (=> (and b!3632226 (= (toChars!7861 (transformation!5710 rule!403)) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295434) tb!208795))

(declare-fun b!3632697 () Bool)

(declare-fun e!2248624 () Bool)

(declare-fun tp!1108902 () Bool)

(assert (=> b!3632697 (= e!2248624 (and (inv!51697 (c!628323 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) lt!1256422)))) tp!1108902))))

(declare-fun result!254350 () Bool)

(assert (=> tb!208795 (= result!254350 (and (inv!51698 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) lt!1256422))) e!2248624))))

(assert (= tb!208795 b!3632697))

(declare-fun m!4134615 () Bool)

(assert (=> b!3632697 m!4134615))

(declare-fun m!4134617 () Bool)

(assert (=> tb!208795 m!4134617))

(assert (=> d!1068464 t!295434))

(declare-fun b_and!266799 () Bool)

(assert (= b_and!266739 (and (=> t!295434 result!254350) b_and!266799)))

(declare-fun tb!208797 () Bool)

(declare-fun t!295436 () Bool)

(assert (=> (and b!3632227 (= (toChars!7861 (transformation!5710 (rule!8482 token!511))) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295436) tb!208797))

(declare-fun result!254352 () Bool)

(assert (= result!254352 result!254350))

(assert (=> d!1068464 t!295436))

(declare-fun b_and!266801 () Bool)

(assert (= b_and!266741 (and (=> t!295436 result!254352) b_and!266801)))

(declare-fun t!295438 () Bool)

(declare-fun tb!208799 () Bool)

(assert (=> (and b!3632221 (= (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295438) tb!208799))

(declare-fun result!254354 () Bool)

(assert (= result!254354 result!254350))

(assert (=> d!1068464 t!295438))

(declare-fun b_and!266803 () Bool)

(assert (= b_and!266743 (and (=> t!295438 result!254354) b_and!266803)))

(declare-fun t!295440 () Bool)

(declare-fun tb!208801 () Bool)

(assert (=> (and b!3632209 (= (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295440) tb!208801))

(declare-fun result!254356 () Bool)

(assert (= result!254356 result!254350))

(assert (=> d!1068464 t!295440))

(declare-fun b_and!266805 () Bool)

(assert (= b_and!266745 (and (=> t!295440 result!254356) b_and!266805)))

(declare-fun b_lambda!107575 () Bool)

(assert (=> (not b_lambda!107575) (not d!1068464)))

(assert (=> d!1068464 t!295392))

(declare-fun b_and!266807 () Bool)

(assert (= b_and!266747 (and (=> t!295392 result!254298) b_and!266807)))

(assert (=> d!1068464 t!295394))

(declare-fun b_and!266809 () Bool)

(assert (= b_and!266749 (and (=> t!295394 result!254302) b_and!266809)))

(assert (=> d!1068464 t!295396))

(declare-fun b_and!266811 () Bool)

(assert (= b_and!266751 (and (=> t!295396 result!254304) b_and!266811)))

(assert (=> d!1068464 t!295398))

(declare-fun b_and!266813 () Bool)

(assert (= b_and!266753 (and (=> t!295398 result!254306) b_and!266813)))

(assert (=> d!1068464 m!4133987))

(assert (=> d!1068464 m!4134553))

(declare-fun m!4134619 () Bool)

(assert (=> d!1068464 m!4134619))

(assert (=> d!1068464 m!4134619))

(declare-fun m!4134621 () Bool)

(assert (=> d!1068464 m!4134621))

(assert (=> d!1068464 m!4134553))

(declare-fun m!4134623 () Bool)

(assert (=> d!1068464 m!4134623))

(assert (=> b!3632222 d!1068464))

(declare-fun b!3632704 () Bool)

(declare-fun e!2248629 () Bool)

(assert (=> b!3632704 (= e!2248629 true)))

(declare-fun d!1068488 () Bool)

(assert (=> d!1068488 e!2248629))

(assert (= d!1068488 b!3632704))

(declare-fun order!20961 () Int)

(declare-fun lambda!124293 () Int)

(declare-fun dynLambda!16601 (Int Int) Int)

(assert (=> b!3632704 (< (dynLambda!16597 order!20955 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) (dynLambda!16601 order!20961 lambda!124293))))

(assert (=> b!3632704 (< (dynLambda!16599 order!20959 (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) (dynLambda!16601 order!20961 lambda!124293))))

(assert (=> d!1068488 (= (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) lt!1256422) (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413)))))))

(declare-fun lt!1256654 () Unit!55088)

(declare-fun Forall2of!340 (Int BalanceConc!22968 BalanceConc!22968) Unit!55088)

(assert (=> d!1068488 (= lt!1256654 (Forall2of!340 lambda!124293 lt!1256422 (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413)))))))

(assert (=> d!1068488 (= (list!14148 lt!1256422) (list!14148 (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413)))))))

(assert (=> d!1068488 (= (lemmaEqSameImage!893 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256422 (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413)))) lt!1256654)))

(declare-fun b_lambda!107577 () Bool)

(assert (=> (not b_lambda!107577) (not d!1068488)))

(assert (=> d!1068488 t!295392))

(declare-fun b_and!266815 () Bool)

(assert (= b_and!266807 (and (=> t!295392 result!254298) b_and!266815)))

(assert (=> d!1068488 t!295394))

(declare-fun b_and!266817 () Bool)

(assert (= b_and!266809 (and (=> t!295394 result!254302) b_and!266817)))

(assert (=> d!1068488 t!295396))

(declare-fun b_and!266819 () Bool)

(assert (= b_and!266811 (and (=> t!295396 result!254304) b_and!266819)))

(assert (=> d!1068488 t!295398))

(declare-fun b_and!266821 () Bool)

(assert (= b_and!266813 (and (=> t!295398 result!254306) b_and!266821)))

(declare-fun b_lambda!107579 () Bool)

(assert (=> (not b_lambda!107579) (not d!1068488)))

(declare-fun tb!208803 () Bool)

(declare-fun t!295442 () Bool)

(assert (=> (and b!3632226 (= (toValue!8002 (transformation!5710 rule!403)) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295442) tb!208803))

(declare-fun result!254358 () Bool)

(assert (=> tb!208803 (= result!254358 (inv!21 (dynLambda!16596 (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413)))) (seqFromList!4259 (originalCharacters!6424 (_1!22204 lt!1256413))))))))

(declare-fun m!4134625 () Bool)

(assert (=> tb!208803 m!4134625))

(assert (=> d!1068488 t!295442))

(declare-fun b_and!266823 () Bool)

(assert (= b_and!266815 (and (=> t!295442 result!254358) b_and!266823)))

(declare-fun tb!208805 () Bool)

(declare-fun t!295444 () Bool)

(assert (=> (and b!3632227 (= (toValue!8002 (transformation!5710 (rule!8482 token!511))) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295444) tb!208805))

(declare-fun result!254360 () Bool)

(assert (= result!254360 result!254358))

(assert (=> d!1068488 t!295444))

(declare-fun b_and!266825 () Bool)

(assert (= b_and!266817 (and (=> t!295444 result!254360) b_and!266825)))

(declare-fun tb!208807 () Bool)

(declare-fun t!295446 () Bool)

(assert (=> (and b!3632221 (= (toValue!8002 (transformation!5710 anOtherTypeRule!33)) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295446) tb!208807))

(declare-fun result!254362 () Bool)

(assert (= result!254362 result!254358))

(assert (=> d!1068488 t!295446))

(declare-fun b_and!266827 () Bool)

(assert (= b_and!266819 (and (=> t!295446 result!254362) b_and!266827)))

(declare-fun t!295448 () Bool)

(declare-fun tb!208809 () Bool)

(assert (=> (and b!3632209 (= (toValue!8002 (transformation!5710 (h!43691 rules!3307))) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295448) tb!208809))

(declare-fun result!254364 () Bool)

(assert (= result!254364 result!254358))

(assert (=> d!1068488 t!295448))

(declare-fun b_and!266829 () Bool)

(assert (= b_and!266821 (and (=> t!295448 result!254364) b_and!266829)))

(assert (=> d!1068488 m!4134553))

(assert (=> d!1068488 m!4133933))

(declare-fun m!4134627 () Bool)

(assert (=> d!1068488 m!4134627))

(assert (=> d!1068488 m!4133933))

(declare-fun m!4134629 () Bool)

(assert (=> d!1068488 m!4134629))

(assert (=> d!1068488 m!4133987))

(assert (=> d!1068488 m!4133933))

(declare-fun m!4134631 () Bool)

(assert (=> d!1068488 m!4134631))

(assert (=> b!3632222 d!1068488))

(declare-fun d!1068490 () Bool)

(assert (=> d!1068490 (= (size!29200 (_1!22204 lt!1256413)) (size!29203 (originalCharacters!6424 (_1!22204 lt!1256413))))))

(declare-fun Unit!55095 () Unit!55088)

(assert (=> d!1068490 (= (lemmaCharactersSize!755 (_1!22204 lt!1256413)) Unit!55095)))

(declare-fun bs!571712 () Bool)

(assert (= bs!571712 d!1068490))

(declare-fun m!4134633 () Bool)

(assert (=> bs!571712 m!4134633))

(assert (=> b!3632222 d!1068490))

(declare-fun d!1068492 () Bool)

(declare-fun lt!1256657 () Int)

(assert (=> d!1068492 (= lt!1256657 (size!29203 (list!14148 lt!1256422)))))

(declare-fun size!29205 (Conc!11677) Int)

(assert (=> d!1068492 (= lt!1256657 (size!29205 (c!628323 lt!1256422)))))

(assert (=> d!1068492 (= (size!29201 lt!1256422) lt!1256657)))

(declare-fun bs!571713 () Bool)

(assert (= bs!571713 d!1068492))

(assert (=> bs!571713 m!4133987))

(assert (=> bs!571713 m!4133987))

(declare-fun m!4134635 () Bool)

(assert (=> bs!571713 m!4134635))

(declare-fun m!4134637 () Bool)

(assert (=> bs!571713 m!4134637))

(assert (=> b!3632222 d!1068492))

(declare-fun b!3632715 () Bool)

(declare-fun e!2248637 () Bool)

(declare-fun inv!15 (TokenValue!5940) Bool)

(assert (=> b!3632715 (= e!2248637 (inv!15 (value!183195 token!511)))))

(declare-fun d!1068494 () Bool)

(declare-fun c!628401 () Bool)

(assert (=> d!1068494 (= c!628401 ((_ is IntegerValue!17820) (value!183195 token!511)))))

(declare-fun e!2248639 () Bool)

(assert (=> d!1068494 (= (inv!21 (value!183195 token!511)) e!2248639)))

(declare-fun b!3632716 () Bool)

(declare-fun e!2248638 () Bool)

(assert (=> b!3632716 (= e!2248639 e!2248638)))

(declare-fun c!628402 () Bool)

(assert (=> b!3632716 (= c!628402 ((_ is IntegerValue!17821) (value!183195 token!511)))))

(declare-fun b!3632717 () Bool)

(declare-fun inv!16 (TokenValue!5940) Bool)

(assert (=> b!3632717 (= e!2248639 (inv!16 (value!183195 token!511)))))

(declare-fun b!3632718 () Bool)

(declare-fun inv!17 (TokenValue!5940) Bool)

(assert (=> b!3632718 (= e!2248638 (inv!17 (value!183195 token!511)))))

(declare-fun b!3632719 () Bool)

(declare-fun res!1471259 () Bool)

(assert (=> b!3632719 (=> res!1471259 e!2248637)))

(assert (=> b!3632719 (= res!1471259 (not ((_ is IntegerValue!17822) (value!183195 token!511))))))

(assert (=> b!3632719 (= e!2248638 e!2248637)))

(assert (= (and d!1068494 c!628401) b!3632717))

(assert (= (and d!1068494 (not c!628401)) b!3632716))

(assert (= (and b!3632716 c!628402) b!3632718))

(assert (= (and b!3632716 (not c!628402)) b!3632719))

(assert (= (and b!3632719 (not res!1471259)) b!3632715))

(declare-fun m!4134639 () Bool)

(assert (=> b!3632715 m!4134639))

(declare-fun m!4134641 () Bool)

(assert (=> b!3632717 m!4134641))

(declare-fun m!4134643 () Bool)

(assert (=> b!3632718 m!4134643))

(assert (=> b!3632211 d!1068494))

(declare-fun d!1068496 () Bool)

(declare-fun lt!1256660 () Bool)

(declare-fun content!5491 (List!38395) (InoxSet Rule!11220))

(assert (=> d!1068496 (= lt!1256660 (select (content!5491 rules!3307) rule!403))))

(declare-fun e!2248645 () Bool)

(assert (=> d!1068496 (= lt!1256660 e!2248645)))

(declare-fun res!1471265 () Bool)

(assert (=> d!1068496 (=> (not res!1471265) (not e!2248645))))

(assert (=> d!1068496 (= res!1471265 ((_ is Cons!38271) rules!3307))))

(assert (=> d!1068496 (= (contains!7485 rules!3307 rule!403) lt!1256660)))

(declare-fun b!3632724 () Bool)

(declare-fun e!2248644 () Bool)

(assert (=> b!3632724 (= e!2248645 e!2248644)))

(declare-fun res!1471264 () Bool)

(assert (=> b!3632724 (=> res!1471264 e!2248644)))

(assert (=> b!3632724 (= res!1471264 (= (h!43691 rules!3307) rule!403))))

(declare-fun b!3632725 () Bool)

(assert (=> b!3632725 (= e!2248644 (contains!7485 (t!295358 rules!3307) rule!403))))

(assert (= (and d!1068496 res!1471265) b!3632724))

(assert (= (and b!3632724 (not res!1471264)) b!3632725))

(declare-fun m!4134645 () Bool)

(assert (=> d!1068496 m!4134645))

(declare-fun m!4134647 () Bool)

(assert (=> d!1068496 m!4134647))

(declare-fun m!4134649 () Bool)

(assert (=> b!3632725 m!4134649))

(assert (=> b!3632232 d!1068496))

(declare-fun d!1068498 () Bool)

(declare-fun lt!1256663 () Bool)

(assert (=> d!1068498 (= lt!1256663 (select (content!5490 (usedCharacters!922 (regex!5710 anOtherTypeRule!33))) lt!1256403))))

(declare-fun e!2248651 () Bool)

(assert (=> d!1068498 (= lt!1256663 e!2248651)))

(declare-fun res!1471270 () Bool)

(assert (=> d!1068498 (=> (not res!1471270) (not e!2248651))))

(assert (=> d!1068498 (= res!1471270 ((_ is Cons!38270) (usedCharacters!922 (regex!5710 anOtherTypeRule!33))))))

(assert (=> d!1068498 (= (contains!7486 (usedCharacters!922 (regex!5710 anOtherTypeRule!33)) lt!1256403) lt!1256663)))

(declare-fun b!3632730 () Bool)

(declare-fun e!2248650 () Bool)

(assert (=> b!3632730 (= e!2248651 e!2248650)))

(declare-fun res!1471271 () Bool)

(assert (=> b!3632730 (=> res!1471271 e!2248650)))

(assert (=> b!3632730 (= res!1471271 (= (h!43690 (usedCharacters!922 (regex!5710 anOtherTypeRule!33))) lt!1256403))))

(declare-fun b!3632731 () Bool)

(assert (=> b!3632731 (= e!2248650 (contains!7486 (t!295357 (usedCharacters!922 (regex!5710 anOtherTypeRule!33))) lt!1256403))))

(assert (= (and d!1068498 res!1471270) b!3632730))

(assert (= (and b!3632730 (not res!1471271)) b!3632731))

(assert (=> d!1068498 m!4133939))

(declare-fun m!4134651 () Bool)

(assert (=> d!1068498 m!4134651))

(declare-fun m!4134653 () Bool)

(assert (=> d!1068498 m!4134653))

(declare-fun m!4134655 () Bool)

(assert (=> b!3632731 m!4134655))

(assert (=> b!3632218 d!1068498))

(declare-fun b!3632748 () Bool)

(declare-fun e!2248663 () List!38394)

(declare-fun e!2248660 () List!38394)

(assert (=> b!3632748 (= e!2248663 e!2248660)))

(declare-fun c!628413 () Bool)

(assert (=> b!3632748 (= c!628413 ((_ is Union!10469) (regex!5710 anOtherTypeRule!33)))))

(declare-fun b!3632749 () Bool)

(declare-fun call!262733 () List!38394)

(assert (=> b!3632749 (= e!2248660 call!262733)))

(declare-fun b!3632750 () Bool)

(assert (=> b!3632750 (= e!2248660 call!262733)))

(declare-fun d!1068500 () Bool)

(declare-fun c!628411 () Bool)

(assert (=> d!1068500 (= c!628411 (or ((_ is EmptyExpr!10469) (regex!5710 anOtherTypeRule!33)) ((_ is EmptyLang!10469) (regex!5710 anOtherTypeRule!33))))))

(declare-fun e!2248661 () List!38394)

(assert (=> d!1068500 (= (usedCharacters!922 (regex!5710 anOtherTypeRule!33)) e!2248661)))

(declare-fun b!3632751 () Bool)

(assert (=> b!3632751 (= e!2248661 Nil!38270)))

(declare-fun b!3632752 () Bool)

(declare-fun call!262731 () List!38394)

(assert (=> b!3632752 (= e!2248663 call!262731)))

(declare-fun b!3632753 () Bool)

(declare-fun e!2248662 () List!38394)

(assert (=> b!3632753 (= e!2248661 e!2248662)))

(declare-fun c!628414 () Bool)

(assert (=> b!3632753 (= c!628414 ((_ is ElementMatch!10469) (regex!5710 anOtherTypeRule!33)))))

(declare-fun c!628412 () Bool)

(declare-fun bm!262725 () Bool)

(assert (=> bm!262725 (= call!262731 (usedCharacters!922 (ite c!628412 (reg!10798 (regex!5710 anOtherTypeRule!33)) (ite c!628413 (regTwo!21451 (regex!5710 anOtherTypeRule!33)) (regOne!21450 (regex!5710 anOtherTypeRule!33))))))))

(declare-fun bm!262726 () Bool)

(declare-fun call!262732 () List!38394)

(assert (=> bm!262726 (= call!262732 call!262731)))

(declare-fun b!3632754 () Bool)

(assert (=> b!3632754 (= c!628412 ((_ is Star!10469) (regex!5710 anOtherTypeRule!33)))))

(assert (=> b!3632754 (= e!2248662 e!2248663)))

(declare-fun call!262730 () List!38394)

(declare-fun bm!262727 () Bool)

(assert (=> bm!262727 (= call!262733 (++!9526 (ite c!628413 call!262730 call!262732) (ite c!628413 call!262732 call!262730)))))

(declare-fun bm!262728 () Bool)

(assert (=> bm!262728 (= call!262730 (usedCharacters!922 (ite c!628413 (regOne!21451 (regex!5710 anOtherTypeRule!33)) (regTwo!21450 (regex!5710 anOtherTypeRule!33)))))))

(declare-fun b!3632755 () Bool)

(assert (=> b!3632755 (= e!2248662 (Cons!38270 (c!628322 (regex!5710 anOtherTypeRule!33)) Nil!38270))))

(assert (= (and d!1068500 c!628411) b!3632751))

(assert (= (and d!1068500 (not c!628411)) b!3632753))

(assert (= (and b!3632753 c!628414) b!3632755))

(assert (= (and b!3632753 (not c!628414)) b!3632754))

(assert (= (and b!3632754 c!628412) b!3632752))

(assert (= (and b!3632754 (not c!628412)) b!3632748))

(assert (= (and b!3632748 c!628413) b!3632750))

(assert (= (and b!3632748 (not c!628413)) b!3632749))

(assert (= (or b!3632750 b!3632749) bm!262728))

(assert (= (or b!3632750 b!3632749) bm!262726))

(assert (= (or b!3632750 b!3632749) bm!262727))

(assert (= (or b!3632752 bm!262726) bm!262725))

(declare-fun m!4134657 () Bool)

(assert (=> bm!262725 m!4134657))

(declare-fun m!4134659 () Bool)

(assert (=> bm!262727 m!4134659))

(declare-fun m!4134661 () Bool)

(assert (=> bm!262728 m!4134661))

(assert (=> b!3632218 d!1068500))

(declare-fun d!1068502 () Bool)

(declare-fun lt!1256664 () Bool)

(assert (=> d!1068502 (= lt!1256664 (select (content!5491 rules!3307) (rule!8482 (_1!22204 lt!1256413))))))

(declare-fun e!2248665 () Bool)

(assert (=> d!1068502 (= lt!1256664 e!2248665)))

(declare-fun res!1471273 () Bool)

(assert (=> d!1068502 (=> (not res!1471273) (not e!2248665))))

(assert (=> d!1068502 (= res!1471273 ((_ is Cons!38271) rules!3307))))

(assert (=> d!1068502 (= (contains!7485 rules!3307 (rule!8482 (_1!22204 lt!1256413))) lt!1256664)))

(declare-fun b!3632756 () Bool)

(declare-fun e!2248664 () Bool)

(assert (=> b!3632756 (= e!2248665 e!2248664)))

(declare-fun res!1471272 () Bool)

(assert (=> b!3632756 (=> res!1471272 e!2248664)))

(assert (=> b!3632756 (= res!1471272 (= (h!43691 rules!3307) (rule!8482 (_1!22204 lt!1256413))))))

(declare-fun b!3632757 () Bool)

(assert (=> b!3632757 (= e!2248664 (contains!7485 (t!295358 rules!3307) (rule!8482 (_1!22204 lt!1256413))))))

(assert (= (and d!1068502 res!1471273) b!3632756))

(assert (= (and b!3632756 (not res!1471272)) b!3632757))

(assert (=> d!1068502 m!4134645))

(declare-fun m!4134663 () Bool)

(assert (=> d!1068502 m!4134663))

(declare-fun m!4134665 () Bool)

(assert (=> b!3632757 m!4134665))

(assert (=> b!3632207 d!1068502))

(declare-fun d!1068504 () Bool)

(declare-fun res!1471278 () Bool)

(declare-fun e!2248670 () Bool)

(assert (=> d!1068504 (=> res!1471278 e!2248670)))

(assert (=> d!1068504 (= res!1471278 (not ((_ is Cons!38271) rules!3307)))))

(assert (=> d!1068504 (= (sepAndNonSepRulesDisjointChars!1878 rules!3307 rules!3307) e!2248670)))

(declare-fun b!3632762 () Bool)

(declare-fun e!2248671 () Bool)

(assert (=> b!3632762 (= e!2248670 e!2248671)))

(declare-fun res!1471279 () Bool)

(assert (=> b!3632762 (=> (not res!1471279) (not e!2248671))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!849 (Rule!11220 List!38395) Bool)

(assert (=> b!3632762 (= res!1471279 (ruleDisjointCharsFromAllFromOtherType!849 (h!43691 rules!3307) rules!3307))))

(declare-fun b!3632763 () Bool)

(assert (=> b!3632763 (= e!2248671 (sepAndNonSepRulesDisjointChars!1878 rules!3307 (t!295358 rules!3307)))))

(assert (= (and d!1068504 (not res!1471278)) b!3632762))

(assert (= (and b!3632762 res!1471279) b!3632763))

(declare-fun m!4134667 () Bool)

(assert (=> b!3632762 m!4134667))

(declare-fun m!4134669 () Bool)

(assert (=> b!3632763 m!4134669))

(assert (=> b!3632228 d!1068504))

(declare-fun d!1068506 () Bool)

(assert (=> d!1068506 (= (isEmpty!22640 rules!3307) ((_ is Nil!38271) rules!3307))))

(assert (=> b!3632208 d!1068506))

(declare-fun d!1068508 () Bool)

(assert (=> d!1068508 (= (isEmpty!22641 suffix!1395) ((_ is Nil!38270) suffix!1395))))

(assert (=> b!3632229 d!1068508))

(declare-fun b!3632792 () Bool)

(declare-fun e!2248691 () Bool)

(declare-fun e!2248688 () Bool)

(assert (=> b!3632792 (= e!2248691 e!2248688)))

(declare-fun res!1471300 () Bool)

(assert (=> b!3632792 (=> (not res!1471300) (not e!2248688))))

(declare-fun lt!1256667 () Bool)

(assert (=> b!3632792 (= res!1471300 (not lt!1256667))))

(declare-fun bm!262731 () Bool)

(declare-fun call!262736 () Bool)

(assert (=> bm!262731 (= call!262736 (isEmpty!22641 (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))))))

(declare-fun b!3632793 () Bool)

(declare-fun res!1471301 () Bool)

(declare-fun e!2248690 () Bool)

(assert (=> b!3632793 (=> (not res!1471301) (not e!2248690))))

(assert (=> b!3632793 (= res!1471301 (isEmpty!22641 (tail!5623 (list!14148 (charsOf!3724 (_1!22204 lt!1256413))))))))

(declare-fun b!3632794 () Bool)

(declare-fun e!2248687 () Bool)

(assert (=> b!3632794 (= e!2248687 (not (= (head!7692 (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))) (c!628322 (regex!5710 lt!1256411)))))))

(declare-fun b!3632795 () Bool)

(declare-fun res!1471296 () Bool)

(assert (=> b!3632795 (=> res!1471296 e!2248691)))

(assert (=> b!3632795 (= res!1471296 (not ((_ is ElementMatch!10469) (regex!5710 lt!1256411))))))

(declare-fun e!2248689 () Bool)

(assert (=> b!3632795 (= e!2248689 e!2248691)))

(declare-fun b!3632796 () Bool)

(declare-fun e!2248686 () Bool)

(assert (=> b!3632796 (= e!2248686 e!2248689)))

(declare-fun c!628423 () Bool)

(assert (=> b!3632796 (= c!628423 ((_ is EmptyLang!10469) (regex!5710 lt!1256411)))))

(declare-fun b!3632797 () Bool)

(assert (=> b!3632797 (= e!2248689 (not lt!1256667))))

(declare-fun b!3632798 () Bool)

(assert (=> b!3632798 (= e!2248690 (= (head!7692 (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))) (c!628322 (regex!5710 lt!1256411))))))

(declare-fun b!3632799 () Bool)

(declare-fun e!2248692 () Bool)

(declare-fun nullable!3625 (Regex!10469) Bool)

(assert (=> b!3632799 (= e!2248692 (nullable!3625 (regex!5710 lt!1256411)))))

(declare-fun b!3632800 () Bool)

(declare-fun res!1471298 () Bool)

(assert (=> b!3632800 (=> (not res!1471298) (not e!2248690))))

(assert (=> b!3632800 (= res!1471298 (not call!262736))))

(declare-fun b!3632801 () Bool)

(assert (=> b!3632801 (= e!2248686 (= lt!1256667 call!262736))))

(declare-fun b!3632802 () Bool)

(declare-fun res!1471302 () Bool)

(assert (=> b!3632802 (=> res!1471302 e!2248691)))

(assert (=> b!3632802 (= res!1471302 e!2248690)))

(declare-fun res!1471299 () Bool)

(assert (=> b!3632802 (=> (not res!1471299) (not e!2248690))))

(assert (=> b!3632802 (= res!1471299 lt!1256667)))

(declare-fun b!3632803 () Bool)

(declare-fun res!1471303 () Bool)

(assert (=> b!3632803 (=> res!1471303 e!2248687)))

(assert (=> b!3632803 (= res!1471303 (not (isEmpty!22641 (tail!5623 (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))))))))

(declare-fun d!1068510 () Bool)

(assert (=> d!1068510 e!2248686))

(declare-fun c!628422 () Bool)

(assert (=> d!1068510 (= c!628422 ((_ is EmptyExpr!10469) (regex!5710 lt!1256411)))))

(assert (=> d!1068510 (= lt!1256667 e!2248692)))

(declare-fun c!628421 () Bool)

(assert (=> d!1068510 (= c!628421 (isEmpty!22641 (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))))))

(declare-fun validRegex!4787 (Regex!10469) Bool)

(assert (=> d!1068510 (validRegex!4787 (regex!5710 lt!1256411))))

(assert (=> d!1068510 (= (matchR!5038 (regex!5710 lt!1256411) (list!14148 (charsOf!3724 (_1!22204 lt!1256413)))) lt!1256667)))

(declare-fun b!3632804 () Bool)

(assert (=> b!3632804 (= e!2248688 e!2248687)))

(declare-fun res!1471297 () Bool)

(assert (=> b!3632804 (=> res!1471297 e!2248687)))

(assert (=> b!3632804 (= res!1471297 call!262736)))

(declare-fun b!3632805 () Bool)

(declare-fun derivativeStep!3174 (Regex!10469 C!21124) Regex!10469)

(assert (=> b!3632805 (= e!2248692 (matchR!5038 (derivativeStep!3174 (regex!5710 lt!1256411) (head!7692 (list!14148 (charsOf!3724 (_1!22204 lt!1256413))))) (tail!5623 (list!14148 (charsOf!3724 (_1!22204 lt!1256413))))))))

(assert (= (and d!1068510 c!628421) b!3632799))

(assert (= (and d!1068510 (not c!628421)) b!3632805))

(assert (= (and d!1068510 c!628422) b!3632801))

(assert (= (and d!1068510 (not c!628422)) b!3632796))

(assert (= (and b!3632796 c!628423) b!3632797))

(assert (= (and b!3632796 (not c!628423)) b!3632795))

(assert (= (and b!3632795 (not res!1471296)) b!3632802))

(assert (= (and b!3632802 res!1471299) b!3632800))

(assert (= (and b!3632800 res!1471298) b!3632793))

(assert (= (and b!3632793 res!1471301) b!3632798))

(assert (= (and b!3632802 (not res!1471302)) b!3632792))

(assert (= (and b!3632792 res!1471300) b!3632804))

(assert (= (and b!3632804 (not res!1471297)) b!3632803))

(assert (= (and b!3632803 (not res!1471303)) b!3632794))

(assert (= (or b!3632801 b!3632804 b!3632800) bm!262731))

(assert (=> b!3632794 m!4133945))

(declare-fun m!4134671 () Bool)

(assert (=> b!3632794 m!4134671))

(assert (=> b!3632803 m!4133945))

(declare-fun m!4134673 () Bool)

(assert (=> b!3632803 m!4134673))

(assert (=> b!3632803 m!4134673))

(declare-fun m!4134675 () Bool)

(assert (=> b!3632803 m!4134675))

(assert (=> b!3632793 m!4133945))

(assert (=> b!3632793 m!4134673))

(assert (=> b!3632793 m!4134673))

(assert (=> b!3632793 m!4134675))

(declare-fun m!4134677 () Bool)

(assert (=> b!3632799 m!4134677))

(assert (=> b!3632798 m!4133945))

(assert (=> b!3632798 m!4134671))

(assert (=> d!1068510 m!4133945))

(declare-fun m!4134679 () Bool)

(assert (=> d!1068510 m!4134679))

(declare-fun m!4134681 () Bool)

(assert (=> d!1068510 m!4134681))

(assert (=> b!3632805 m!4133945))

(assert (=> b!3632805 m!4134671))

(assert (=> b!3632805 m!4134671))

(declare-fun m!4134683 () Bool)

(assert (=> b!3632805 m!4134683))

(assert (=> b!3632805 m!4133945))

(assert (=> b!3632805 m!4134673))

(assert (=> b!3632805 m!4134683))

(assert (=> b!3632805 m!4134673))

(declare-fun m!4134685 () Bool)

(assert (=> b!3632805 m!4134685))

(assert (=> bm!262731 m!4133945))

(assert (=> bm!262731 m!4134679))

(assert (=> b!3632215 d!1068510))

(declare-fun d!1068512 () Bool)

(assert (=> d!1068512 (= (list!14148 (charsOf!3724 (_1!22204 lt!1256413))) (list!14151 (c!628323 (charsOf!3724 (_1!22204 lt!1256413)))))))

(declare-fun bs!571714 () Bool)

(assert (= bs!571714 d!1068512))

(declare-fun m!4134687 () Bool)

(assert (=> bs!571714 m!4134687))

(assert (=> b!3632215 d!1068512))

(assert (=> b!3632215 d!1068398))

(declare-fun d!1068514 () Bool)

(assert (=> d!1068514 (= (get!12514 lt!1256407) (v!37843 lt!1256407))))

(assert (=> b!3632215 d!1068514))

(declare-fun d!1068516 () Bool)

(assert (=> d!1068516 (= (inv!51690 (tag!6442 (rule!8482 token!511))) (= (mod (str.len (value!183194 (tag!6442 (rule!8482 token!511)))) 2) 0))))

(assert (=> b!3632225 d!1068516))

(declare-fun d!1068518 () Bool)

(declare-fun res!1471304 () Bool)

(declare-fun e!2248693 () Bool)

(assert (=> d!1068518 (=> (not res!1471304) (not e!2248693))))

(assert (=> d!1068518 (= res!1471304 (semiInverseModEq!2425 (toChars!7861 (transformation!5710 (rule!8482 token!511))) (toValue!8002 (transformation!5710 (rule!8482 token!511)))))))

(assert (=> d!1068518 (= (inv!51693 (transformation!5710 (rule!8482 token!511))) e!2248693)))

(declare-fun b!3632806 () Bool)

(assert (=> b!3632806 (= e!2248693 (equivClasses!2324 (toChars!7861 (transformation!5710 (rule!8482 token!511))) (toValue!8002 (transformation!5710 (rule!8482 token!511)))))))

(assert (= (and d!1068518 res!1471304) b!3632806))

(declare-fun m!4134689 () Bool)

(assert (=> d!1068518 m!4134689))

(declare-fun m!4134691 () Bool)

(assert (=> b!3632806 m!4134691))

(assert (=> b!3632225 d!1068518))

(declare-fun d!1068520 () Bool)

(assert (=> d!1068520 (= (get!12513 lt!1256405) (v!37844 lt!1256405))))

(assert (=> b!3632238 d!1068520))

(declare-fun d!1068522 () Bool)

(declare-fun res!1471309 () Bool)

(declare-fun e!2248696 () Bool)

(assert (=> d!1068522 (=> (not res!1471309) (not e!2248696))))

(assert (=> d!1068522 (= res!1471309 (not (isEmpty!22641 (originalCharacters!6424 token!511))))))

(assert (=> d!1068522 (= (inv!51694 token!511) e!2248696)))

(declare-fun b!3632811 () Bool)

(declare-fun res!1471310 () Bool)

(assert (=> b!3632811 (=> (not res!1471310) (not e!2248696))))

(assert (=> b!3632811 (= res!1471310 (= (originalCharacters!6424 token!511) (list!14148 (dynLambda!16591 (toChars!7861 (transformation!5710 (rule!8482 token!511))) (value!183195 token!511)))))))

(declare-fun b!3632812 () Bool)

(assert (=> b!3632812 (= e!2248696 (= (size!29200 token!511) (size!29203 (originalCharacters!6424 token!511))))))

(assert (= (and d!1068522 res!1471309) b!3632811))

(assert (= (and b!3632811 res!1471310) b!3632812))

(declare-fun b_lambda!107581 () Bool)

(assert (=> (not b_lambda!107581) (not b!3632811)))

(assert (=> b!3632811 t!295384))

(declare-fun b_and!266831 () Bool)

(assert (= b_and!266799 (and (=> t!295384 result!254290) b_and!266831)))

(assert (=> b!3632811 t!295386))

(declare-fun b_and!266833 () Bool)

(assert (= b_and!266801 (and (=> t!295386 result!254292) b_and!266833)))

(assert (=> b!3632811 t!295388))

(declare-fun b_and!266835 () Bool)

(assert (= b_and!266803 (and (=> t!295388 result!254294) b_and!266835)))

(assert (=> b!3632811 t!295390))

(declare-fun b_and!266837 () Bool)

(assert (= b_and!266805 (and (=> t!295390 result!254296) b_and!266837)))

(declare-fun m!4134693 () Bool)

(assert (=> d!1068522 m!4134693))

(assert (=> b!3632811 m!4134545))

(assert (=> b!3632811 m!4134545))

(declare-fun m!4134695 () Bool)

(assert (=> b!3632811 m!4134695))

(declare-fun m!4134697 () Bool)

(assert (=> b!3632812 m!4134697))

(assert (=> start!338686 d!1068522))

(declare-fun d!1068524 () Bool)

(assert (=> d!1068524 (= (inv!51690 (tag!6442 (h!43691 rules!3307))) (= (mod (str.len (value!183194 (tag!6442 (h!43691 rules!3307)))) 2) 0))))

(assert (=> b!3632216 d!1068524))

(declare-fun d!1068526 () Bool)

(declare-fun res!1471311 () Bool)

(declare-fun e!2248697 () Bool)

(assert (=> d!1068526 (=> (not res!1471311) (not e!2248697))))

(assert (=> d!1068526 (= res!1471311 (semiInverseModEq!2425 (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toValue!8002 (transformation!5710 (h!43691 rules!3307)))))))

(assert (=> d!1068526 (= (inv!51693 (transformation!5710 (h!43691 rules!3307))) e!2248697)))

(declare-fun b!3632813 () Bool)

(assert (=> b!3632813 (= e!2248697 (equivClasses!2324 (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toValue!8002 (transformation!5710 (h!43691 rules!3307)))))))

(assert (= (and d!1068526 res!1471311) b!3632813))

(declare-fun m!4134699 () Bool)

(assert (=> d!1068526 m!4134699))

(declare-fun m!4134701 () Bool)

(assert (=> b!3632813 m!4134701))

(assert (=> b!3632216 d!1068526))

(declare-fun d!1068528 () Bool)

(assert (=> d!1068528 (= (inv!51690 (tag!6442 anOtherTypeRule!33)) (= (mod (str.len (value!183194 (tag!6442 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3632237 d!1068528))

(declare-fun d!1068530 () Bool)

(declare-fun res!1471312 () Bool)

(declare-fun e!2248698 () Bool)

(assert (=> d!1068530 (=> (not res!1471312) (not e!2248698))))

(assert (=> d!1068530 (= res!1471312 (semiInverseModEq!2425 (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toValue!8002 (transformation!5710 anOtherTypeRule!33))))))

(assert (=> d!1068530 (= (inv!51693 (transformation!5710 anOtherTypeRule!33)) e!2248698)))

(declare-fun b!3632814 () Bool)

(assert (=> b!3632814 (= e!2248698 (equivClasses!2324 (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toValue!8002 (transformation!5710 anOtherTypeRule!33))))))

(assert (= (and d!1068530 res!1471312) b!3632814))

(declare-fun m!4134703 () Bool)

(assert (=> d!1068530 m!4134703))

(declare-fun m!4134705 () Bool)

(assert (=> b!3632814 m!4134705))

(assert (=> b!3632237 d!1068530))

(declare-fun d!1068532 () Bool)

(assert (=> d!1068532 (= (isEmpty!22641 (_2!22204 lt!1256414)) ((_ is Nil!38270) (_2!22204 lt!1256414)))))

(assert (=> b!3632234 d!1068532))

(declare-fun d!1068534 () Bool)

(declare-fun lt!1256668 () Bool)

(assert (=> d!1068534 (= lt!1256668 (select (content!5491 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2248700 () Bool)

(assert (=> d!1068534 (= lt!1256668 e!2248700)))

(declare-fun res!1471314 () Bool)

(assert (=> d!1068534 (=> (not res!1471314) (not e!2248700))))

(assert (=> d!1068534 (= res!1471314 ((_ is Cons!38271) rules!3307))))

(assert (=> d!1068534 (= (contains!7485 rules!3307 anOtherTypeRule!33) lt!1256668)))

(declare-fun b!3632815 () Bool)

(declare-fun e!2248699 () Bool)

(assert (=> b!3632815 (= e!2248700 e!2248699)))

(declare-fun res!1471313 () Bool)

(assert (=> b!3632815 (=> res!1471313 e!2248699)))

(assert (=> b!3632815 (= res!1471313 (= (h!43691 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3632816 () Bool)

(assert (=> b!3632816 (= e!2248699 (contains!7485 (t!295358 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1068534 res!1471314) b!3632815))

(assert (= (and b!3632815 (not res!1471313)) b!3632816))

(assert (=> d!1068534 m!4134645))

(declare-fun m!4134707 () Bool)

(assert (=> d!1068534 m!4134707))

(declare-fun m!4134709 () Bool)

(assert (=> b!3632816 m!4134709))

(assert (=> b!3632223 d!1068534))

(declare-fun d!1068536 () Bool)

(declare-fun lt!1256669 () Bool)

(assert (=> d!1068536 (= lt!1256669 (select (content!5490 (usedCharacters!922 (regex!5710 rule!403))) lt!1256403))))

(declare-fun e!2248702 () Bool)

(assert (=> d!1068536 (= lt!1256669 e!2248702)))

(declare-fun res!1471315 () Bool)

(assert (=> d!1068536 (=> (not res!1471315) (not e!2248702))))

(assert (=> d!1068536 (= res!1471315 ((_ is Cons!38270) (usedCharacters!922 (regex!5710 rule!403))))))

(assert (=> d!1068536 (= (contains!7486 (usedCharacters!922 (regex!5710 rule!403)) lt!1256403) lt!1256669)))

(declare-fun b!3632817 () Bool)

(declare-fun e!2248701 () Bool)

(assert (=> b!3632817 (= e!2248702 e!2248701)))

(declare-fun res!1471316 () Bool)

(assert (=> b!3632817 (=> res!1471316 e!2248701)))

(assert (=> b!3632817 (= res!1471316 (= (h!43690 (usedCharacters!922 (regex!5710 rule!403))) lt!1256403))))

(declare-fun b!3632818 () Bool)

(assert (=> b!3632818 (= e!2248701 (contains!7486 (t!295357 (usedCharacters!922 (regex!5710 rule!403))) lt!1256403))))

(assert (= (and d!1068536 res!1471315) b!3632817))

(assert (= (and b!3632817 (not res!1471316)) b!3632818))

(assert (=> d!1068536 m!4134007))

(declare-fun m!4134711 () Bool)

(assert (=> d!1068536 m!4134711))

(declare-fun m!4134713 () Bool)

(assert (=> d!1068536 m!4134713))

(declare-fun m!4134715 () Bool)

(assert (=> b!3632818 m!4134715))

(assert (=> b!3632212 d!1068536))

(declare-fun b!3632819 () Bool)

(declare-fun e!2248706 () List!38394)

(declare-fun e!2248703 () List!38394)

(assert (=> b!3632819 (= e!2248706 e!2248703)))

(declare-fun c!628426 () Bool)

(assert (=> b!3632819 (= c!628426 ((_ is Union!10469) (regex!5710 rule!403)))))

(declare-fun b!3632820 () Bool)

(declare-fun call!262740 () List!38394)

(assert (=> b!3632820 (= e!2248703 call!262740)))

(declare-fun b!3632821 () Bool)

(assert (=> b!3632821 (= e!2248703 call!262740)))

(declare-fun d!1068538 () Bool)

(declare-fun c!628424 () Bool)

(assert (=> d!1068538 (= c!628424 (or ((_ is EmptyExpr!10469) (regex!5710 rule!403)) ((_ is EmptyLang!10469) (regex!5710 rule!403))))))

(declare-fun e!2248704 () List!38394)

(assert (=> d!1068538 (= (usedCharacters!922 (regex!5710 rule!403)) e!2248704)))

(declare-fun b!3632822 () Bool)

(assert (=> b!3632822 (= e!2248704 Nil!38270)))

(declare-fun b!3632823 () Bool)

(declare-fun call!262738 () List!38394)

(assert (=> b!3632823 (= e!2248706 call!262738)))

(declare-fun b!3632824 () Bool)

(declare-fun e!2248705 () List!38394)

(assert (=> b!3632824 (= e!2248704 e!2248705)))

(declare-fun c!628427 () Bool)

(assert (=> b!3632824 (= c!628427 ((_ is ElementMatch!10469) (regex!5710 rule!403)))))

(declare-fun c!628425 () Bool)

(declare-fun bm!262732 () Bool)

(assert (=> bm!262732 (= call!262738 (usedCharacters!922 (ite c!628425 (reg!10798 (regex!5710 rule!403)) (ite c!628426 (regTwo!21451 (regex!5710 rule!403)) (regOne!21450 (regex!5710 rule!403))))))))

(declare-fun bm!262733 () Bool)

(declare-fun call!262739 () List!38394)

(assert (=> bm!262733 (= call!262739 call!262738)))

(declare-fun b!3632825 () Bool)

(assert (=> b!3632825 (= c!628425 ((_ is Star!10469) (regex!5710 rule!403)))))

(assert (=> b!3632825 (= e!2248705 e!2248706)))

(declare-fun call!262737 () List!38394)

(declare-fun bm!262734 () Bool)

(assert (=> bm!262734 (= call!262740 (++!9526 (ite c!628426 call!262737 call!262739) (ite c!628426 call!262739 call!262737)))))

(declare-fun bm!262735 () Bool)

(assert (=> bm!262735 (= call!262737 (usedCharacters!922 (ite c!628426 (regOne!21451 (regex!5710 rule!403)) (regTwo!21450 (regex!5710 rule!403)))))))

(declare-fun b!3632826 () Bool)

(assert (=> b!3632826 (= e!2248705 (Cons!38270 (c!628322 (regex!5710 rule!403)) Nil!38270))))

(assert (= (and d!1068538 c!628424) b!3632822))

(assert (= (and d!1068538 (not c!628424)) b!3632824))

(assert (= (and b!3632824 c!628427) b!3632826))

(assert (= (and b!3632824 (not c!628427)) b!3632825))

(assert (= (and b!3632825 c!628425) b!3632823))

(assert (= (and b!3632825 (not c!628425)) b!3632819))

(assert (= (and b!3632819 c!628426) b!3632821))

(assert (= (and b!3632819 (not c!628426)) b!3632820))

(assert (= (or b!3632821 b!3632820) bm!262735))

(assert (= (or b!3632821 b!3632820) bm!262733))

(assert (= (or b!3632821 b!3632820) bm!262734))

(assert (= (or b!3632823 bm!262733) bm!262732))

(declare-fun m!4134717 () Bool)

(assert (=> bm!262732 m!4134717))

(declare-fun m!4134719 () Bool)

(assert (=> bm!262734 m!4134719))

(declare-fun m!4134721 () Bool)

(assert (=> bm!262735 m!4134721))

(assert (=> b!3632212 d!1068538))

(declare-fun d!1068540 () Bool)

(assert (=> d!1068540 (= (head!7692 suffix!1395) (h!43690 suffix!1395))))

(assert (=> b!3632212 d!1068540))

(declare-fun d!1068542 () Bool)

(declare-fun res!1471319 () Bool)

(declare-fun e!2248709 () Bool)

(assert (=> d!1068542 (=> (not res!1471319) (not e!2248709))))

(declare-fun rulesValid!2182 (LexerInterface!5299 List!38395) Bool)

(assert (=> d!1068542 (= res!1471319 (rulesValid!2182 thiss!23823 rules!3307))))

(assert (=> d!1068542 (= (rulesInvariant!4696 thiss!23823 rules!3307) e!2248709)))

(declare-fun b!3632829 () Bool)

(declare-datatypes ((List!38399 0))(
  ( (Nil!38275) (Cons!38275 (h!43695 String!43034) (t!295462 List!38399)) )
))
(declare-fun noDuplicateTag!2178 (LexerInterface!5299 List!38395 List!38399) Bool)

(assert (=> b!3632829 (= e!2248709 (noDuplicateTag!2178 thiss!23823 rules!3307 Nil!38275))))

(assert (= (and d!1068542 res!1471319) b!3632829))

(declare-fun m!4134723 () Bool)

(assert (=> d!1068542 m!4134723))

(declare-fun m!4134725 () Bool)

(assert (=> b!3632829 m!4134725))

(assert (=> b!3632214 d!1068542))

(declare-fun b!3632830 () Bool)

(declare-fun e!2248715 () Bool)

(declare-fun e!2248712 () Bool)

(assert (=> b!3632830 (= e!2248715 e!2248712)))

(declare-fun res!1471324 () Bool)

(assert (=> b!3632830 (=> (not res!1471324) (not e!2248712))))

(declare-fun lt!1256670 () Bool)

(assert (=> b!3632830 (= res!1471324 (not lt!1256670))))

(declare-fun bm!262736 () Bool)

(declare-fun call!262741 () Bool)

(assert (=> bm!262736 (= call!262741 (isEmpty!22641 lt!1256417))))

(declare-fun b!3632831 () Bool)

(declare-fun res!1471325 () Bool)

(declare-fun e!2248714 () Bool)

(assert (=> b!3632831 (=> (not res!1471325) (not e!2248714))))

(assert (=> b!3632831 (= res!1471325 (isEmpty!22641 (tail!5623 lt!1256417)))))

(declare-fun b!3632832 () Bool)

(declare-fun e!2248711 () Bool)

(assert (=> b!3632832 (= e!2248711 (not (= (head!7692 lt!1256417) (c!628322 (regex!5710 rule!403)))))))

(declare-fun b!3632833 () Bool)

(declare-fun res!1471320 () Bool)

(assert (=> b!3632833 (=> res!1471320 e!2248715)))

(assert (=> b!3632833 (= res!1471320 (not ((_ is ElementMatch!10469) (regex!5710 rule!403))))))

(declare-fun e!2248713 () Bool)

(assert (=> b!3632833 (= e!2248713 e!2248715)))

(declare-fun b!3632834 () Bool)

(declare-fun e!2248710 () Bool)

(assert (=> b!3632834 (= e!2248710 e!2248713)))

(declare-fun c!628430 () Bool)

(assert (=> b!3632834 (= c!628430 ((_ is EmptyLang!10469) (regex!5710 rule!403)))))

(declare-fun b!3632835 () Bool)

(assert (=> b!3632835 (= e!2248713 (not lt!1256670))))

(declare-fun b!3632836 () Bool)

(assert (=> b!3632836 (= e!2248714 (= (head!7692 lt!1256417) (c!628322 (regex!5710 rule!403))))))

(declare-fun b!3632837 () Bool)

(declare-fun e!2248716 () Bool)

(assert (=> b!3632837 (= e!2248716 (nullable!3625 (regex!5710 rule!403)))))

(declare-fun b!3632838 () Bool)

(declare-fun res!1471322 () Bool)

(assert (=> b!3632838 (=> (not res!1471322) (not e!2248714))))

(assert (=> b!3632838 (= res!1471322 (not call!262741))))

(declare-fun b!3632839 () Bool)

(assert (=> b!3632839 (= e!2248710 (= lt!1256670 call!262741))))

(declare-fun b!3632840 () Bool)

(declare-fun res!1471326 () Bool)

(assert (=> b!3632840 (=> res!1471326 e!2248715)))

(assert (=> b!3632840 (= res!1471326 e!2248714)))

(declare-fun res!1471323 () Bool)

(assert (=> b!3632840 (=> (not res!1471323) (not e!2248714))))

(assert (=> b!3632840 (= res!1471323 lt!1256670)))

(declare-fun b!3632841 () Bool)

(declare-fun res!1471327 () Bool)

(assert (=> b!3632841 (=> res!1471327 e!2248711)))

(assert (=> b!3632841 (= res!1471327 (not (isEmpty!22641 (tail!5623 lt!1256417))))))

(declare-fun d!1068544 () Bool)

(assert (=> d!1068544 e!2248710))

(declare-fun c!628429 () Bool)

(assert (=> d!1068544 (= c!628429 ((_ is EmptyExpr!10469) (regex!5710 rule!403)))))

(assert (=> d!1068544 (= lt!1256670 e!2248716)))

(declare-fun c!628428 () Bool)

(assert (=> d!1068544 (= c!628428 (isEmpty!22641 lt!1256417))))

(assert (=> d!1068544 (validRegex!4787 (regex!5710 rule!403))))

(assert (=> d!1068544 (= (matchR!5038 (regex!5710 rule!403) lt!1256417) lt!1256670)))

(declare-fun b!3632842 () Bool)

(assert (=> b!3632842 (= e!2248712 e!2248711)))

(declare-fun res!1471321 () Bool)

(assert (=> b!3632842 (=> res!1471321 e!2248711)))

(assert (=> b!3632842 (= res!1471321 call!262741)))

(declare-fun b!3632843 () Bool)

(assert (=> b!3632843 (= e!2248716 (matchR!5038 (derivativeStep!3174 (regex!5710 rule!403) (head!7692 lt!1256417)) (tail!5623 lt!1256417)))))

(assert (= (and d!1068544 c!628428) b!3632837))

(assert (= (and d!1068544 (not c!628428)) b!3632843))

(assert (= (and d!1068544 c!628429) b!3632839))

(assert (= (and d!1068544 (not c!628429)) b!3632834))

(assert (= (and b!3632834 c!628430) b!3632835))

(assert (= (and b!3632834 (not c!628430)) b!3632833))

(assert (= (and b!3632833 (not res!1471320)) b!3632840))

(assert (= (and b!3632840 res!1471323) b!3632838))

(assert (= (and b!3632838 res!1471322) b!3632831))

(assert (= (and b!3632831 res!1471325) b!3632836))

(assert (= (and b!3632840 (not res!1471326)) b!3632830))

(assert (= (and b!3632830 res!1471324) b!3632842))

(assert (= (and b!3632842 (not res!1471321)) b!3632841))

(assert (= (and b!3632841 (not res!1471327)) b!3632832))

(assert (= (or b!3632839 b!3632842 b!3632838) bm!262736))

(assert (=> b!3632832 m!4134149))

(assert (=> b!3632841 m!4134143))

(assert (=> b!3632841 m!4134143))

(declare-fun m!4134727 () Bool)

(assert (=> b!3632841 m!4134727))

(assert (=> b!3632831 m!4134143))

(assert (=> b!3632831 m!4134143))

(assert (=> b!3632831 m!4134727))

(declare-fun m!4134729 () Bool)

(assert (=> b!3632837 m!4134729))

(assert (=> b!3632836 m!4134149))

(declare-fun m!4134731 () Bool)

(assert (=> d!1068544 m!4134731))

(declare-fun m!4134733 () Bool)

(assert (=> d!1068544 m!4134733))

(assert (=> b!3632843 m!4134149))

(assert (=> b!3632843 m!4134149))

(declare-fun m!4134735 () Bool)

(assert (=> b!3632843 m!4134735))

(assert (=> b!3632843 m!4134143))

(assert (=> b!3632843 m!4134735))

(assert (=> b!3632843 m!4134143))

(declare-fun m!4134737 () Bool)

(assert (=> b!3632843 m!4134737))

(assert (=> bm!262736 m!4134731))

(assert (=> b!3632224 d!1068544))

(declare-fun d!1068546 () Bool)

(declare-fun res!1471332 () Bool)

(declare-fun e!2248719 () Bool)

(assert (=> d!1068546 (=> (not res!1471332) (not e!2248719))))

(assert (=> d!1068546 (= res!1471332 (validRegex!4787 (regex!5710 rule!403)))))

(assert (=> d!1068546 (= (ruleValid!1974 thiss!23823 rule!403) e!2248719)))

(declare-fun b!3632848 () Bool)

(declare-fun res!1471333 () Bool)

(assert (=> b!3632848 (=> (not res!1471333) (not e!2248719))))

(assert (=> b!3632848 (= res!1471333 (not (nullable!3625 (regex!5710 rule!403))))))

(declare-fun b!3632849 () Bool)

(assert (=> b!3632849 (= e!2248719 (not (= (tag!6442 rule!403) (String!43035 ""))))))

(assert (= (and d!1068546 res!1471332) b!3632848))

(assert (= (and b!3632848 res!1471333) b!3632849))

(assert (=> d!1068546 m!4134733))

(assert (=> b!3632848 m!4134729))

(assert (=> b!3632224 d!1068546))

(declare-fun d!1068548 () Bool)

(assert (=> d!1068548 (ruleValid!1974 thiss!23823 rule!403)))

(declare-fun lt!1256673 () Unit!55088)

(declare-fun choose!21338 (LexerInterface!5299 Rule!11220 List!38395) Unit!55088)

(assert (=> d!1068548 (= lt!1256673 (choose!21338 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1068548 (contains!7485 rules!3307 rule!403)))

(assert (=> d!1068548 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1128 thiss!23823 rule!403 rules!3307) lt!1256673)))

(declare-fun bs!571715 () Bool)

(assert (= bs!571715 d!1068548))

(assert (=> bs!571715 m!4133953))

(declare-fun m!4134739 () Bool)

(assert (=> bs!571715 m!4134739))

(assert (=> bs!571715 m!4134015))

(assert (=> b!3632224 d!1068548))

(declare-fun b!3632850 () Bool)

(declare-fun e!2248725 () Bool)

(declare-fun e!2248722 () Bool)

(assert (=> b!3632850 (= e!2248725 e!2248722)))

(declare-fun res!1471338 () Bool)

(assert (=> b!3632850 (=> (not res!1471338) (not e!2248722))))

(declare-fun lt!1256674 () Bool)

(assert (=> b!3632850 (= res!1471338 (not lt!1256674))))

(declare-fun bm!262737 () Bool)

(declare-fun call!262742 () Bool)

(assert (=> bm!262737 (= call!262742 (isEmpty!22641 lt!1256420))))

(declare-fun b!3632851 () Bool)

(declare-fun res!1471339 () Bool)

(declare-fun e!2248724 () Bool)

(assert (=> b!3632851 (=> (not res!1471339) (not e!2248724))))

(assert (=> b!3632851 (= res!1471339 (isEmpty!22641 (tail!5623 lt!1256420)))))

(declare-fun b!3632852 () Bool)

(declare-fun e!2248721 () Bool)

(assert (=> b!3632852 (= e!2248721 (not (= (head!7692 lt!1256420) (c!628322 (regex!5710 (rule!8482 (_1!22204 lt!1256413)))))))))

(declare-fun b!3632853 () Bool)

(declare-fun res!1471334 () Bool)

(assert (=> b!3632853 (=> res!1471334 e!2248725)))

(assert (=> b!3632853 (= res!1471334 (not ((_ is ElementMatch!10469) (regex!5710 (rule!8482 (_1!22204 lt!1256413))))))))

(declare-fun e!2248723 () Bool)

(assert (=> b!3632853 (= e!2248723 e!2248725)))

(declare-fun b!3632854 () Bool)

(declare-fun e!2248720 () Bool)

(assert (=> b!3632854 (= e!2248720 e!2248723)))

(declare-fun c!628433 () Bool)

(assert (=> b!3632854 (= c!628433 ((_ is EmptyLang!10469) (regex!5710 (rule!8482 (_1!22204 lt!1256413)))))))

(declare-fun b!3632855 () Bool)

(assert (=> b!3632855 (= e!2248723 (not lt!1256674))))

(declare-fun b!3632856 () Bool)

(assert (=> b!3632856 (= e!2248724 (= (head!7692 lt!1256420) (c!628322 (regex!5710 (rule!8482 (_1!22204 lt!1256413))))))))

(declare-fun b!3632857 () Bool)

(declare-fun e!2248726 () Bool)

(assert (=> b!3632857 (= e!2248726 (nullable!3625 (regex!5710 (rule!8482 (_1!22204 lt!1256413)))))))

(declare-fun b!3632858 () Bool)

(declare-fun res!1471336 () Bool)

(assert (=> b!3632858 (=> (not res!1471336) (not e!2248724))))

(assert (=> b!3632858 (= res!1471336 (not call!262742))))

(declare-fun b!3632859 () Bool)

(assert (=> b!3632859 (= e!2248720 (= lt!1256674 call!262742))))

(declare-fun b!3632860 () Bool)

(declare-fun res!1471340 () Bool)

(assert (=> b!3632860 (=> res!1471340 e!2248725)))

(assert (=> b!3632860 (= res!1471340 e!2248724)))

(declare-fun res!1471337 () Bool)

(assert (=> b!3632860 (=> (not res!1471337) (not e!2248724))))

(assert (=> b!3632860 (= res!1471337 lt!1256674)))

(declare-fun b!3632861 () Bool)

(declare-fun res!1471341 () Bool)

(assert (=> b!3632861 (=> res!1471341 e!2248721)))

(assert (=> b!3632861 (= res!1471341 (not (isEmpty!22641 (tail!5623 lt!1256420))))))

(declare-fun d!1068550 () Bool)

(assert (=> d!1068550 e!2248720))

(declare-fun c!628432 () Bool)

(assert (=> d!1068550 (= c!628432 ((_ is EmptyExpr!10469) (regex!5710 (rule!8482 (_1!22204 lt!1256413)))))))

(assert (=> d!1068550 (= lt!1256674 e!2248726)))

(declare-fun c!628431 () Bool)

(assert (=> d!1068550 (= c!628431 (isEmpty!22641 lt!1256420))))

(assert (=> d!1068550 (validRegex!4787 (regex!5710 (rule!8482 (_1!22204 lt!1256413))))))

(assert (=> d!1068550 (= (matchR!5038 (regex!5710 (rule!8482 (_1!22204 lt!1256413))) lt!1256420) lt!1256674)))

(declare-fun b!3632862 () Bool)

(assert (=> b!3632862 (= e!2248722 e!2248721)))

(declare-fun res!1471335 () Bool)

(assert (=> b!3632862 (=> res!1471335 e!2248721)))

(assert (=> b!3632862 (= res!1471335 call!262742)))

(declare-fun b!3632863 () Bool)

(assert (=> b!3632863 (= e!2248726 (matchR!5038 (derivativeStep!3174 (regex!5710 (rule!8482 (_1!22204 lt!1256413))) (head!7692 lt!1256420)) (tail!5623 lt!1256420)))))

(assert (= (and d!1068550 c!628431) b!3632857))

(assert (= (and d!1068550 (not c!628431)) b!3632863))

(assert (= (and d!1068550 c!628432) b!3632859))

(assert (= (and d!1068550 (not c!628432)) b!3632854))

(assert (= (and b!3632854 c!628433) b!3632855))

(assert (= (and b!3632854 (not c!628433)) b!3632853))

(assert (= (and b!3632853 (not res!1471334)) b!3632860))

(assert (= (and b!3632860 res!1471337) b!3632858))

(assert (= (and b!3632858 res!1471336) b!3632851))

(assert (= (and b!3632851 res!1471339) b!3632856))

(assert (= (and b!3632860 (not res!1471340)) b!3632850))

(assert (= (and b!3632850 res!1471338) b!3632862))

(assert (= (and b!3632862 (not res!1471335)) b!3632861))

(assert (= (and b!3632861 (not res!1471341)) b!3632852))

(assert (= (or b!3632859 b!3632862 b!3632858) bm!262737))

(assert (=> b!3632852 m!4134163))

(assert (=> b!3632861 m!4134157))

(assert (=> b!3632861 m!4134157))

(declare-fun m!4134741 () Bool)

(assert (=> b!3632861 m!4134741))

(assert (=> b!3632851 m!4134157))

(assert (=> b!3632851 m!4134157))

(assert (=> b!3632851 m!4134741))

(declare-fun m!4134743 () Bool)

(assert (=> b!3632857 m!4134743))

(assert (=> b!3632856 m!4134163))

(declare-fun m!4134745 () Bool)

(assert (=> d!1068550 m!4134745))

(declare-fun m!4134747 () Bool)

(assert (=> d!1068550 m!4134747))

(assert (=> b!3632863 m!4134163))

(assert (=> b!3632863 m!4134163))

(declare-fun m!4134749 () Bool)

(assert (=> b!3632863 m!4134749))

(assert (=> b!3632863 m!4134157))

(assert (=> b!3632863 m!4134749))

(assert (=> b!3632863 m!4134157))

(declare-fun m!4134751 () Bool)

(assert (=> b!3632863 m!4134751))

(assert (=> bm!262737 m!4134745))

(assert (=> b!3632213 d!1068550))

(declare-fun b!3632868 () Bool)

(declare-fun e!2248729 () Bool)

(declare-fun tp!1108905 () Bool)

(assert (=> b!3632868 (= e!2248729 (and tp_is_empty!18021 tp!1108905))))

(assert (=> b!3632236 (= tp!1108834 e!2248729)))

(assert (= (and b!3632236 ((_ is Cons!38270) (t!295357 suffix!1395))) b!3632868))

(declare-fun b!3632882 () Bool)

(declare-fun e!2248732 () Bool)

(declare-fun tp!1108918 () Bool)

(declare-fun tp!1108917 () Bool)

(assert (=> b!3632882 (= e!2248732 (and tp!1108918 tp!1108917))))

(assert (=> b!3632220 (= tp!1108842 e!2248732)))

(declare-fun b!3632879 () Bool)

(assert (=> b!3632879 (= e!2248732 tp_is_empty!18021)))

(declare-fun b!3632881 () Bool)

(declare-fun tp!1108916 () Bool)

(assert (=> b!3632881 (= e!2248732 tp!1108916)))

(declare-fun b!3632880 () Bool)

(declare-fun tp!1108920 () Bool)

(declare-fun tp!1108919 () Bool)

(assert (=> b!3632880 (= e!2248732 (and tp!1108920 tp!1108919))))

(assert (= (and b!3632220 ((_ is ElementMatch!10469) (regex!5710 rule!403))) b!3632879))

(assert (= (and b!3632220 ((_ is Concat!16410) (regex!5710 rule!403))) b!3632880))

(assert (= (and b!3632220 ((_ is Star!10469) (regex!5710 rule!403))) b!3632881))

(assert (= (and b!3632220 ((_ is Union!10469) (regex!5710 rule!403))) b!3632882))

(declare-fun b!3632886 () Bool)

(declare-fun e!2248733 () Bool)

(declare-fun tp!1108923 () Bool)

(declare-fun tp!1108922 () Bool)

(assert (=> b!3632886 (= e!2248733 (and tp!1108923 tp!1108922))))

(assert (=> b!3632225 (= tp!1108835 e!2248733)))

(declare-fun b!3632883 () Bool)

(assert (=> b!3632883 (= e!2248733 tp_is_empty!18021)))

(declare-fun b!3632885 () Bool)

(declare-fun tp!1108921 () Bool)

(assert (=> b!3632885 (= e!2248733 tp!1108921)))

(declare-fun b!3632884 () Bool)

(declare-fun tp!1108925 () Bool)

(declare-fun tp!1108924 () Bool)

(assert (=> b!3632884 (= e!2248733 (and tp!1108925 tp!1108924))))

(assert (= (and b!3632225 ((_ is ElementMatch!10469) (regex!5710 (rule!8482 token!511)))) b!3632883))

(assert (= (and b!3632225 ((_ is Concat!16410) (regex!5710 (rule!8482 token!511)))) b!3632884))

(assert (= (and b!3632225 ((_ is Star!10469) (regex!5710 (rule!8482 token!511)))) b!3632885))

(assert (= (and b!3632225 ((_ is Union!10469) (regex!5710 (rule!8482 token!511)))) b!3632886))

(declare-fun b!3632887 () Bool)

(declare-fun e!2248734 () Bool)

(declare-fun tp!1108926 () Bool)

(assert (=> b!3632887 (= e!2248734 (and tp_is_empty!18021 tp!1108926))))

(assert (=> b!3632211 (= tp!1108840 e!2248734)))

(assert (= (and b!3632211 ((_ is Cons!38270) (originalCharacters!6424 token!511))) b!3632887))

(declare-fun b!3632891 () Bool)

(declare-fun e!2248735 () Bool)

(declare-fun tp!1108929 () Bool)

(declare-fun tp!1108928 () Bool)

(assert (=> b!3632891 (= e!2248735 (and tp!1108929 tp!1108928))))

(assert (=> b!3632216 (= tp!1108838 e!2248735)))

(declare-fun b!3632888 () Bool)

(assert (=> b!3632888 (= e!2248735 tp_is_empty!18021)))

(declare-fun b!3632890 () Bool)

(declare-fun tp!1108927 () Bool)

(assert (=> b!3632890 (= e!2248735 tp!1108927)))

(declare-fun b!3632889 () Bool)

(declare-fun tp!1108931 () Bool)

(declare-fun tp!1108930 () Bool)

(assert (=> b!3632889 (= e!2248735 (and tp!1108931 tp!1108930))))

(assert (= (and b!3632216 ((_ is ElementMatch!10469) (regex!5710 (h!43691 rules!3307)))) b!3632888))

(assert (= (and b!3632216 ((_ is Concat!16410) (regex!5710 (h!43691 rules!3307)))) b!3632889))

(assert (= (and b!3632216 ((_ is Star!10469) (regex!5710 (h!43691 rules!3307)))) b!3632890))

(assert (= (and b!3632216 ((_ is Union!10469) (regex!5710 (h!43691 rules!3307)))) b!3632891))

(declare-fun b!3632895 () Bool)

(declare-fun e!2248736 () Bool)

(declare-fun tp!1108934 () Bool)

(declare-fun tp!1108933 () Bool)

(assert (=> b!3632895 (= e!2248736 (and tp!1108934 tp!1108933))))

(assert (=> b!3632237 (= tp!1108839 e!2248736)))

(declare-fun b!3632892 () Bool)

(assert (=> b!3632892 (= e!2248736 tp_is_empty!18021)))

(declare-fun b!3632894 () Bool)

(declare-fun tp!1108932 () Bool)

(assert (=> b!3632894 (= e!2248736 tp!1108932)))

(declare-fun b!3632893 () Bool)

(declare-fun tp!1108936 () Bool)

(declare-fun tp!1108935 () Bool)

(assert (=> b!3632893 (= e!2248736 (and tp!1108936 tp!1108935))))

(assert (= (and b!3632237 ((_ is ElementMatch!10469) (regex!5710 anOtherTypeRule!33))) b!3632892))

(assert (= (and b!3632237 ((_ is Concat!16410) (regex!5710 anOtherTypeRule!33))) b!3632893))

(assert (= (and b!3632237 ((_ is Star!10469) (regex!5710 anOtherTypeRule!33))) b!3632894))

(assert (= (and b!3632237 ((_ is Union!10469) (regex!5710 anOtherTypeRule!33))) b!3632895))

(declare-fun b!3632906 () Bool)

(declare-fun b_free!95037 () Bool)

(declare-fun b_next!95741 () Bool)

(assert (=> b!3632906 (= b_free!95037 (not b_next!95741))))

(declare-fun tb!208811 () Bool)

(declare-fun t!295450 () Bool)

(assert (=> (and b!3632906 (= (toValue!8002 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295450) tb!208811))

(declare-fun result!254372 () Bool)

(assert (= result!254372 result!254298))

(assert (=> d!1068460 t!295450))

(assert (=> d!1068464 t!295450))

(assert (=> d!1068488 t!295450))

(declare-fun t!295452 () Bool)

(declare-fun tb!208813 () Bool)

(assert (=> (and b!3632906 (= (toValue!8002 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toValue!8002 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295452) tb!208813))

(declare-fun result!254374 () Bool)

(assert (= result!254374 result!254358))

(assert (=> d!1068488 t!295452))

(declare-fun b_and!266839 () Bool)

(declare-fun tp!1108948 () Bool)

(assert (=> b!3632906 (= tp!1108948 (and (=> t!295450 result!254372) (=> t!295452 result!254374) b_and!266839))))

(declare-fun b_free!95039 () Bool)

(declare-fun b_next!95743 () Bool)

(assert (=> b!3632906 (= b_free!95039 (not b_next!95743))))

(declare-fun tb!208815 () Bool)

(declare-fun t!295454 () Bool)

(assert (=> (and b!3632906 (= (toChars!7861 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295454) tb!208815))

(declare-fun result!254376 () Bool)

(assert (= result!254376 result!254272))

(assert (=> d!1068398 t!295454))

(declare-fun t!295456 () Bool)

(declare-fun tb!208817 () Bool)

(assert (=> (and b!3632906 (= (toChars!7861 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toChars!7861 (transformation!5710 (rule!8482 token!511)))) t!295456) tb!208817))

(declare-fun result!254378 () Bool)

(assert (= result!254378 result!254290))

(assert (=> d!1068454 t!295456))

(declare-fun tb!208819 () Bool)

(declare-fun t!295458 () Bool)

(assert (=> (and b!3632906 (= (toChars!7861 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toChars!7861 (transformation!5710 (rule!8482 (_1!22204 lt!1256413))))) t!295458) tb!208819))

(declare-fun result!254380 () Bool)

(assert (= result!254380 result!254350))

(assert (=> d!1068464 t!295458))

(assert (=> b!3632811 t!295456))

(declare-fun b_and!266841 () Bool)

(declare-fun tp!1108945 () Bool)

(assert (=> b!3632906 (= tp!1108945 (and (=> t!295454 result!254376) (=> t!295456 result!254378) (=> t!295458 result!254380) b_and!266841))))

(declare-fun e!2248745 () Bool)

(assert (=> b!3632906 (= e!2248745 (and tp!1108948 tp!1108945))))

(declare-fun b!3632905 () Bool)

(declare-fun tp!1108946 () Bool)

(declare-fun e!2248747 () Bool)

(assert (=> b!3632905 (= e!2248747 (and tp!1108946 (inv!51690 (tag!6442 (h!43691 (t!295358 rules!3307)))) (inv!51693 (transformation!5710 (h!43691 (t!295358 rules!3307)))) e!2248745))))

(declare-fun b!3632904 () Bool)

(declare-fun e!2248748 () Bool)

(declare-fun tp!1108947 () Bool)

(assert (=> b!3632904 (= e!2248748 (and e!2248747 tp!1108947))))

(assert (=> b!3632230 (= tp!1108844 e!2248748)))

(assert (= b!3632905 b!3632906))

(assert (= b!3632904 b!3632905))

(assert (= (and b!3632230 ((_ is Cons!38271) (t!295358 rules!3307))) b!3632904))

(declare-fun m!4134753 () Bool)

(assert (=> b!3632905 m!4134753))

(declare-fun m!4134755 () Bool)

(assert (=> b!3632905 m!4134755))

(declare-fun b_lambda!107583 () Bool)

(assert (= b_lambda!107555 (or (and b!3632227 b_free!95023) (and b!3632906 b_free!95039 (= (toChars!7861 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) (and b!3632221 b_free!95027 (= (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) (and b!3632209 b_free!95031 (= (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) (and b!3632226 b_free!95019 (= (toChars!7861 (transformation!5710 rule!403)) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) b_lambda!107583)))

(declare-fun b_lambda!107585 () Bool)

(assert (= b_lambda!107581 (or (and b!3632227 b_free!95023) (and b!3632906 b_free!95039 (= (toChars!7861 (transformation!5710 (h!43691 (t!295358 rules!3307)))) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) (and b!3632221 b_free!95027 (= (toChars!7861 (transformation!5710 anOtherTypeRule!33)) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) (and b!3632209 b_free!95031 (= (toChars!7861 (transformation!5710 (h!43691 rules!3307))) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) (and b!3632226 b_free!95019 (= (toChars!7861 (transformation!5710 rule!403)) (toChars!7861 (transformation!5710 (rule!8482 token!511))))) b_lambda!107585)))

(check-sat (not bm!262735) (not b!3632498) (not b!3632757) (not d!1068498) (not b!3632731) (not d!1068488) (not b!3632447) (not b!3632831) (not b!3632605) (not b!3632857) (not b!3632446) (not d!1068530) b_and!266831 (not b!3632383) (not b!3632490) (not b_next!95743) (not b!3632697) (not b_next!95721) (not b_next!95723) (not b!3632495) (not b!3632453) (not b!3632880) (not b!3632478) (not bm!262732) (not b!3632894) (not b!3632479) (not bm!262736) (not b!3632794) (not d!1068548) (not b!3632904) (not b!3632818) (not b_next!95735) (not b!3632607) (not b!3632613) (not d!1068416) (not b!3632609) (not b!3632895) (not b!3632848) (not b!3632598) (not tb!208753) (not d!1068408) (not b_next!95741) (not b!3632905) (not d!1068400) b_and!266837 (not b_lambda!107557) (not b!3632881) (not d!1068384) (not b!3632891) (not b!3632602) b_and!266835 (not tb!208745) b_and!266839 (not b!3632597) (not b!3632856) (not d!1068546) (not d!1068550) (not b!3632717) (not b!3632829) (not d!1068512) (not b!3632762) (not b_next!95725) (not b!3632837) (not d!1068462) (not b!3632799) (not b!3632725) (not b!3632496) b_and!266829 (not d!1068490) (not b!3632491) (not b!3632803) (not b!3632806) (not b!3632805) (not b!3632389) (not d!1068526) (not d!1068366) (not bm!262731) (not b!3632372) (not b!3632814) (not b!3632608) (not b!3632816) (not b!3632473) (not b_lambda!107583) (not b_next!95731) b_and!266827 (not d!1068448) (not b!3632889) (not b!3632606) (not b!3632798) (not b!3632499) (not bm!262715) (not d!1068496) (not b!3632445) b_and!266841 (not b!3632385) (not d!1068518) (not b_next!95733) (not b!3632852) (not b!3632480) (not b!3632384) (not bm!262709) (not b!3632812) b_and!266825 (not b!3632763) (not d!1068464) (not b!3632893) (not b!3632882) (not b!3632887) (not b!3632494) (not d!1068510) (not tb!208795) (not b!3632599) (not b!3632863) (not b!3632718) (not d!1068534) (not b_lambda!107577) (not d!1068522) (not b!3632715) (not b!3632793) (not b!3632836) (not b_lambda!107573) (not d!1068458) (not d!1068452) (not d!1068454) (not b!3632610) (not b!3632387) (not b!3632885) b_and!266823 (not d!1068414) (not b!3632884) (not d!1068398) (not d!1068450) tp_is_empty!18021 (not b!3632474) (not b!3632841) (not b!3632851) (not d!1068542) (not bm!262725) (not d!1068402) (not b!3632601) (not b!3632868) (not b!3632603) (not d!1068372) (not d!1068412) (not b!3632832) (not b!3632373) b_and!266833 (not b!3632477) (not d!1068502) (not d!1068536) (not d!1068544) (not b!3632813) (not bm!262728) (not bm!262737) (not b_lambda!107549) (not b!3632890) (not bm!262734) (not b!3632472) (not b_next!95729) (not tb!208803) (not b!3632886) (not tb!208729) (not b!3632476) (not b!3632861) (not bm!262727) (not b_lambda!107575) (not b_next!95727) (not b_lambda!107579) (not b!3632843) (not d!1068404) (not b!3632811) (not b_lambda!107585) (not d!1068492) (not b!3632388))
(check-sat b_and!266831 (not b_next!95735) (not b_next!95741) b_and!266837 (not b_next!95725) b_and!266829 b_and!266825 b_and!266823 b_and!266833 (not b_next!95729) (not b_next!95727) (not b_next!95743) (not b_next!95721) (not b_next!95723) b_and!266839 b_and!266835 (not b_next!95731) b_and!266827 b_and!266841 (not b_next!95733))
