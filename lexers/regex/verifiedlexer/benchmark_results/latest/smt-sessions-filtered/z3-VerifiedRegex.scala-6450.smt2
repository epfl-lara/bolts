; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337390 () Bool)

(assert start!337390)

(declare-fun b!3622033 () Bool)

(declare-fun b_free!94465 () Bool)

(declare-fun b_next!95169 () Bool)

(assert (=> b!3622033 (= b_free!94465 (not b_next!95169))))

(declare-fun tp!1106270 () Bool)

(declare-fun b_and!264883 () Bool)

(assert (=> b!3622033 (= tp!1106270 b_and!264883)))

(declare-fun b_free!94467 () Bool)

(declare-fun b_next!95171 () Bool)

(assert (=> b!3622033 (= b_free!94467 (not b_next!95171))))

(declare-fun tp!1106267 () Bool)

(declare-fun b_and!264885 () Bool)

(assert (=> b!3622033 (= tp!1106267 b_and!264885)))

(declare-fun b!3622046 () Bool)

(declare-fun b_free!94469 () Bool)

(declare-fun b_next!95173 () Bool)

(assert (=> b!3622046 (= b_free!94469 (not b_next!95173))))

(declare-fun tp!1106259 () Bool)

(declare-fun b_and!264887 () Bool)

(assert (=> b!3622046 (= tp!1106259 b_and!264887)))

(declare-fun b_free!94471 () Bool)

(declare-fun b_next!95175 () Bool)

(assert (=> b!3622046 (= b_free!94471 (not b_next!95175))))

(declare-fun tp!1106262 () Bool)

(declare-fun b_and!264889 () Bool)

(assert (=> b!3622046 (= tp!1106262 b_and!264889)))

(declare-fun b!3622032 () Bool)

(declare-fun b_free!94473 () Bool)

(declare-fun b_next!95177 () Bool)

(assert (=> b!3622032 (= b_free!94473 (not b_next!95177))))

(declare-fun tp!1106265 () Bool)

(declare-fun b_and!264891 () Bool)

(assert (=> b!3622032 (= tp!1106265 b_and!264891)))

(declare-fun b_free!94475 () Bool)

(declare-fun b_next!95179 () Bool)

(assert (=> b!3622032 (= b_free!94475 (not b_next!95179))))

(declare-fun tp!1106269 () Bool)

(declare-fun b_and!264893 () Bool)

(assert (=> b!3622032 (= tp!1106269 b_and!264893)))

(declare-fun b!3622038 () Bool)

(declare-fun b_free!94477 () Bool)

(declare-fun b_next!95181 () Bool)

(assert (=> b!3622038 (= b_free!94477 (not b_next!95181))))

(declare-fun tp!1106256 () Bool)

(declare-fun b_and!264895 () Bool)

(assert (=> b!3622038 (= tp!1106256 b_and!264895)))

(declare-fun b_free!94479 () Bool)

(declare-fun b_next!95183 () Bool)

(assert (=> b!3622038 (= b_free!94479 (not b_next!95183))))

(declare-fun tp!1106258 () Bool)

(declare-fun b_and!264897 () Bool)

(assert (=> b!3622038 (= tp!1106258 b_and!264897)))

(declare-fun b!3622018 () Bool)

(declare-fun e!2241967 () Bool)

(declare-fun e!2241950 () Bool)

(assert (=> b!3622018 (= e!2241967 e!2241950)))

(declare-fun res!1465871 () Bool)

(assert (=> b!3622018 (=> res!1465871 e!2241950)))

(declare-datatypes ((List!38277 0))(
  ( (Nil!38153) (Cons!38153 (h!43573 (_ BitVec 16)) (t!294248 List!38277)) )
))
(declare-datatypes ((TokenValue!5910 0))(
  ( (FloatLiteralValue!11820 (text!41815 List!38277)) (TokenValueExt!5909 (__x!24037 Int)) (Broken!29550 (value!182314 List!38277)) (Object!6033) (End!5910) (Def!5910) (Underscore!5910) (Match!5910) (Else!5910) (Error!5910) (Case!5910) (If!5910) (Extends!5910) (Abstract!5910) (Class!5910) (Val!5910) (DelimiterValue!11820 (del!5970 List!38277)) (KeywordValue!5916 (value!182315 List!38277)) (CommentValue!11820 (value!182316 List!38277)) (WhitespaceValue!11820 (value!182317 List!38277)) (IndentationValue!5910 (value!182318 List!38277)) (String!42883) (Int32!5910) (Broken!29551 (value!182319 List!38277)) (Boolean!5911) (Unit!54901) (OperatorValue!5913 (op!5970 List!38277)) (IdentifierValue!11820 (value!182320 List!38277)) (IdentifierValue!11821 (value!182321 List!38277)) (WhitespaceValue!11821 (value!182322 List!38277)) (True!11820) (False!11820) (Broken!29552 (value!182323 List!38277)) (Broken!29553 (value!182324 List!38277)) (True!11821) (RightBrace!5910) (RightBracket!5910) (Colon!5910) (Null!5910) (Comma!5910) (LeftBracket!5910) (False!11821) (LeftBrace!5910) (ImaginaryLiteralValue!5910 (text!41816 List!38277)) (StringLiteralValue!17730 (value!182325 List!38277)) (EOFValue!5910 (value!182326 List!38277)) (IdentValue!5910 (value!182327 List!38277)) (DelimiterValue!11821 (value!182328 List!38277)) (DedentValue!5910 (value!182329 List!38277)) (NewLineValue!5910 (value!182330 List!38277)) (IntegerValue!17730 (value!182331 (_ BitVec 32)) (text!41817 List!38277)) (IntegerValue!17731 (value!182332 Int) (text!41818 List!38277)) (Times!5910) (Or!5910) (Equal!5910) (Minus!5910) (Broken!29554 (value!182333 List!38277)) (And!5910) (Div!5910) (LessEqual!5910) (Mod!5910) (Concat!16349) (Not!5910) (Plus!5910) (SpaceValue!5910 (value!182334 List!38277)) (IntegerValue!17732 (value!182335 Int) (text!41819 List!38277)) (StringLiteralValue!17731 (text!41820 List!38277)) (FloatLiteralValue!11821 (text!41821 List!38277)) (BytesLiteralValue!5910 (value!182336 List!38277)) (CommentValue!11821 (value!182337 List!38277)) (StringLiteralValue!17732 (value!182338 List!38277)) (ErrorTokenValue!5910 (msg!5971 List!38277)) )
))
(declare-datatypes ((C!21064 0))(
  ( (C!21065 (val!12580 Int)) )
))
(declare-datatypes ((Regex!10439 0))(
  ( (ElementMatch!10439 (c!626780 C!21064)) (Concat!16350 (regOne!21390 Regex!10439) (regTwo!21390 Regex!10439)) (EmptyExpr!10439) (Star!10439 (reg!10768 Regex!10439)) (EmptyLang!10439) (Union!10439 (regOne!21391 Regex!10439) (regTwo!21391 Regex!10439)) )
))
(declare-datatypes ((String!42884 0))(
  ( (String!42885 (value!182339 String)) )
))
(declare-datatypes ((List!38278 0))(
  ( (Nil!38154) (Cons!38154 (h!43574 C!21064) (t!294249 List!38278)) )
))
(declare-datatypes ((IArray!23275 0))(
  ( (IArray!23276 (innerList!11695 List!38278)) )
))
(declare-datatypes ((Conc!11635 0))(
  ( (Node!11635 (left!29789 Conc!11635) (right!30119 Conc!11635) (csize!23500 Int) (cheight!11846 Int)) (Leaf!18086 (xs!14837 IArray!23275) (csize!23501 Int)) (Empty!11635) )
))
(declare-datatypes ((BalanceConc!22884 0))(
  ( (BalanceConc!22885 (c!626781 Conc!11635)) )
))
(declare-datatypes ((TokenValueInjection!11248 0))(
  ( (TokenValueInjection!11249 (toValue!7964 Int) (toChars!7823 Int)) )
))
(declare-datatypes ((Rule!11160 0))(
  ( (Rule!11161 (regex!5680 Regex!10439) (tag!6400 String!42884) (isSeparator!5680 Bool) (transformation!5680 TokenValueInjection!11248)) )
))
(declare-fun rule!403 () Rule!11160)

(declare-fun lt!1251866 () C!21064)

(declare-fun contains!7423 (List!38278 C!21064) Bool)

(declare-fun usedCharacters!894 (Regex!10439) List!38278)

(assert (=> b!3622018 (= res!1465871 (contains!7423 (usedCharacters!894 (regex!5680 rule!403)) lt!1251866))))

(declare-fun suffix!1395 () List!38278)

(declare-fun head!7652 (List!38278) C!21064)

(assert (=> b!3622018 (= lt!1251866 (head!7652 suffix!1395))))

(declare-fun b!3622019 () Bool)

(declare-fun e!2241958 () Bool)

(declare-fun e!2241952 () Bool)

(assert (=> b!3622019 (= e!2241958 e!2241952)))

(declare-fun res!1465874 () Bool)

(assert (=> b!3622019 (=> (not res!1465874) (not e!2241952))))

(declare-fun lt!1251876 () Rule!11160)

(declare-datatypes ((Token!10726 0))(
  ( (Token!10727 (value!182340 TokenValue!5910) (rule!8442 Rule!11160) (size!29105 Int) (originalCharacters!6394 List!38278)) )
))
(declare-datatypes ((tuple2!38028 0))(
  ( (tuple2!38029 (_1!22148 Token!10726) (_2!22148 List!38278)) )
))
(declare-fun lt!1251865 () tuple2!38028)

(declare-fun matchR!5008 (Regex!10439 List!38278) Bool)

(declare-fun list!14084 (BalanceConc!22884) List!38278)

(declare-fun charsOf!3694 (Token!10726) BalanceConc!22884)

(assert (=> b!3622019 (= res!1465874 (matchR!5008 (regex!5680 lt!1251876) (list!14084 (charsOf!3694 (_1!22148 lt!1251865)))))))

(declare-datatypes ((Option!7990 0))(
  ( (None!7989) (Some!7989 (v!37759 Rule!11160)) )
))
(declare-fun lt!1251877 () Option!7990)

(declare-fun get!12440 (Option!7990) Rule!11160)

(assert (=> b!3622019 (= lt!1251876 (get!12440 lt!1251877))))

(declare-fun b!3622020 () Bool)

(declare-fun res!1465867 () Bool)

(assert (=> b!3622020 (=> res!1465867 e!2241950)))

(declare-fun anOtherTypeRule!33 () Rule!11160)

(assert (=> b!3622020 (= res!1465867 (not (contains!7423 (usedCharacters!894 (regex!5680 anOtherTypeRule!33)) lt!1251866)))))

(declare-fun b!3622021 () Bool)

(declare-fun e!2241954 () Bool)

(declare-fun lt!1251871 () List!38278)

(assert (=> b!3622021 (= e!2241954 (matchR!5008 (regex!5680 (rule!8442 (_1!22148 lt!1251865))) lt!1251871))))

(declare-fun b!3622022 () Bool)

(declare-fun res!1465880 () Bool)

(assert (=> b!3622022 (=> res!1465880 e!2241967)))

(declare-fun isEmpty!22550 (List!38278) Bool)

(assert (=> b!3622022 (= res!1465880 (isEmpty!22550 suffix!1395))))

(declare-fun res!1465869 () Bool)

(declare-fun e!2241953 () Bool)

(assert (=> start!337390 (=> (not res!1465869) (not e!2241953))))

(declare-datatypes ((LexerInterface!5269 0))(
  ( (LexerInterfaceExt!5266 (__x!24038 Int)) (Lexer!5267) )
))
(declare-fun thiss!23823 () LexerInterface!5269)

(get-info :version)

(assert (=> start!337390 (= res!1465869 ((_ is Lexer!5267) thiss!23823))))

(assert (=> start!337390 e!2241953))

(declare-fun e!2241955 () Bool)

(assert (=> start!337390 e!2241955))

(declare-fun e!2241956 () Bool)

(assert (=> start!337390 e!2241956))

(assert (=> start!337390 true))

(declare-fun token!511 () Token!10726)

(declare-fun e!2241969 () Bool)

(declare-fun inv!51549 (Token!10726) Bool)

(assert (=> start!337390 (and (inv!51549 token!511) e!2241969)))

(declare-fun e!2241951 () Bool)

(assert (=> start!337390 e!2241951))

(declare-fun e!2241966 () Bool)

(assert (=> start!337390 e!2241966))

(declare-fun b!3622023 () Bool)

(declare-fun res!1465881 () Bool)

(assert (=> b!3622023 (=> (not res!1465881) (not e!2241953))))

(declare-datatypes ((List!38279 0))(
  ( (Nil!38155) (Cons!38155 (h!43575 Rule!11160) (t!294250 List!38279)) )
))
(declare-fun rules!3307 () List!38279)

(declare-fun contains!7424 (List!38279 Rule!11160) Bool)

(assert (=> b!3622023 (= res!1465881 (contains!7424 rules!3307 rule!403))))

(declare-fun b!3622024 () Bool)

(assert (=> b!3622024 (= e!2241950 e!2241954)))

(declare-fun res!1465866 () Bool)

(assert (=> b!3622024 (=> res!1465866 e!2241954)))

(declare-fun lt!1251867 () List!38278)

(declare-fun isPrefix!3043 (List!38278 List!38278) Bool)

(assert (=> b!3622024 (= res!1465866 (not (isPrefix!3043 lt!1251871 lt!1251867)))))

(declare-fun ++!9496 (List!38278 List!38278) List!38278)

(assert (=> b!3622024 (isPrefix!3043 lt!1251871 (++!9496 lt!1251871 (_2!22148 lt!1251865)))))

(declare-datatypes ((Unit!54902 0))(
  ( (Unit!54903) )
))
(declare-fun lt!1251874 () Unit!54902)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1964 (List!38278 List!38278) Unit!54902)

(assert (=> b!3622024 (= lt!1251874 (lemmaConcatTwoListThenFirstIsPrefix!1964 lt!1251871 (_2!22148 lt!1251865)))))

(assert (=> b!3622024 (= lt!1251871 (list!14084 (charsOf!3694 (_1!22148 lt!1251865))))))

(assert (=> b!3622024 e!2241958))

(declare-fun res!1465872 () Bool)

(assert (=> b!3622024 (=> (not res!1465872) (not e!2241958))))

(declare-fun isDefined!6222 (Option!7990) Bool)

(assert (=> b!3622024 (= res!1465872 (isDefined!6222 lt!1251877))))

(declare-fun getRuleFromTag!1286 (LexerInterface!5269 List!38279 String!42884) Option!7990)

(assert (=> b!3622024 (= lt!1251877 (getRuleFromTag!1286 thiss!23823 rules!3307 (tag!6400 (rule!8442 (_1!22148 lt!1251865)))))))

(declare-fun lt!1251869 () Unit!54902)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1286 (LexerInterface!5269 List!38279 List!38278 Token!10726) Unit!54902)

(assert (=> b!3622024 (= lt!1251869 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1286 thiss!23823 rules!3307 lt!1251867 (_1!22148 lt!1251865)))))

(declare-datatypes ((Option!7991 0))(
  ( (None!7990) (Some!7990 (v!37760 tuple2!38028)) )
))
(declare-fun lt!1251872 () Option!7991)

(declare-fun get!12441 (Option!7991) tuple2!38028)

(assert (=> b!3622024 (= lt!1251865 (get!12441 lt!1251872))))

(declare-fun lt!1251878 () List!38278)

(declare-fun lt!1251870 () Unit!54902)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!949 (LexerInterface!5269 List!38279 List!38278 List!38278) Unit!54902)

(assert (=> b!3622024 (= lt!1251870 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!949 thiss!23823 rules!3307 lt!1251878 suffix!1395))))

(declare-fun maxPrefix!2803 (LexerInterface!5269 List!38279 List!38278) Option!7991)

(assert (=> b!3622024 (= lt!1251872 (maxPrefix!2803 thiss!23823 rules!3307 lt!1251867))))

(assert (=> b!3622024 (isPrefix!3043 lt!1251878 lt!1251867)))

(declare-fun lt!1251868 () Unit!54902)

(assert (=> b!3622024 (= lt!1251868 (lemmaConcatTwoListThenFirstIsPrefix!1964 lt!1251878 suffix!1395))))

(assert (=> b!3622024 (= lt!1251867 (++!9496 lt!1251878 suffix!1395))))

(declare-fun b!3622025 () Bool)

(declare-fun tp!1106261 () Bool)

(declare-fun e!2241949 () Bool)

(declare-fun e!2241960 () Bool)

(declare-fun inv!51546 (String!42884) Bool)

(declare-fun inv!51550 (TokenValueInjection!11248) Bool)

(assert (=> b!3622025 (= e!2241949 (and tp!1106261 (inv!51546 (tag!6400 (h!43575 rules!3307))) (inv!51550 (transformation!5680 (h!43575 rules!3307))) e!2241960))))

(declare-fun b!3622026 () Bool)

(declare-fun res!1465879 () Bool)

(assert (=> b!3622026 (=> (not res!1465879) (not e!2241953))))

(declare-fun isEmpty!22551 (List!38279) Bool)

(assert (=> b!3622026 (= res!1465879 (not (isEmpty!22551 rules!3307)))))

(declare-fun b!3622027 () Bool)

(declare-fun res!1465883 () Bool)

(assert (=> b!3622027 (=> (not res!1465883) (not e!2241953))))

(assert (=> b!3622027 (= res!1465883 (contains!7424 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2241970 () Bool)

(declare-fun tp!1106268 () Bool)

(declare-fun e!2241947 () Bool)

(declare-fun b!3622028 () Bool)

(assert (=> b!3622028 (= e!2241970 (and tp!1106268 (inv!51546 (tag!6400 (rule!8442 token!511))) (inv!51550 (transformation!5680 (rule!8442 token!511))) e!2241947))))

(declare-fun b!3622029 () Bool)

(declare-fun tp_is_empty!17961 () Bool)

(declare-fun tp!1106266 () Bool)

(assert (=> b!3622029 (= e!2241956 (and tp_is_empty!17961 tp!1106266))))

(declare-fun b!3622030 () Bool)

(declare-fun res!1465875 () Bool)

(declare-fun e!2241959 () Bool)

(assert (=> b!3622030 (=> (not res!1465875) (not e!2241959))))

(assert (=> b!3622030 (= res!1465875 (= (rule!8442 token!511) rule!403))))

(declare-fun b!3622031 () Bool)

(declare-fun res!1465877 () Bool)

(assert (=> b!3622031 (=> (not res!1465877) (not e!2241959))))

(declare-fun lt!1251873 () tuple2!38028)

(assert (=> b!3622031 (= res!1465877 (isEmpty!22550 (_2!22148 lt!1251873)))))

(assert (=> b!3622032 (= e!2241947 (and tp!1106265 tp!1106269))))

(assert (=> b!3622033 (= e!2241960 (and tp!1106270 tp!1106267))))

(declare-fun tp!1106263 () Bool)

(declare-fun b!3622034 () Bool)

(declare-fun inv!21 (TokenValue!5910) Bool)

(assert (=> b!3622034 (= e!2241969 (and (inv!21 (value!182340 token!511)) e!2241970 tp!1106263))))

(declare-fun b!3622035 () Bool)

(declare-fun tp!1106257 () Bool)

(declare-fun e!2241964 () Bool)

(assert (=> b!3622035 (= e!2241951 (and tp!1106257 (inv!51546 (tag!6400 rule!403)) (inv!51550 (transformation!5680 rule!403)) e!2241964))))

(declare-fun b!3622036 () Bool)

(declare-fun tp!1106264 () Bool)

(assert (=> b!3622036 (= e!2241955 (and e!2241949 tp!1106264))))

(declare-fun b!3622037 () Bool)

(assert (=> b!3622037 (= e!2241952 (= (rule!8442 (_1!22148 lt!1251865)) lt!1251876))))

(declare-fun e!2241962 () Bool)

(assert (=> b!3622038 (= e!2241962 (and tp!1106256 tp!1106258))))

(declare-fun b!3622039 () Bool)

(declare-fun e!2241963 () Bool)

(assert (=> b!3622039 (= e!2241953 e!2241963)))

(declare-fun res!1465882 () Bool)

(assert (=> b!3622039 (=> (not res!1465882) (not e!2241963))))

(declare-fun lt!1251864 () Option!7991)

(declare-fun isDefined!6223 (Option!7991) Bool)

(assert (=> b!3622039 (= res!1465882 (isDefined!6223 lt!1251864))))

(assert (=> b!3622039 (= lt!1251864 (maxPrefix!2803 thiss!23823 rules!3307 lt!1251878))))

(assert (=> b!3622039 (= lt!1251878 (list!14084 (charsOf!3694 token!511)))))

(declare-fun b!3622040 () Bool)

(declare-fun res!1465870 () Bool)

(assert (=> b!3622040 (=> (not res!1465870) (not e!2241953))))

(assert (=> b!3622040 (= res!1465870 (not (= (isSeparator!5680 anOtherTypeRule!33) (isSeparator!5680 rule!403))))))

(declare-fun b!3622041 () Bool)

(declare-fun tp!1106260 () Bool)

(assert (=> b!3622041 (= e!2241966 (and tp!1106260 (inv!51546 (tag!6400 anOtherTypeRule!33)) (inv!51550 (transformation!5680 anOtherTypeRule!33)) e!2241962))))

(declare-fun b!3622042 () Bool)

(declare-fun res!1465868 () Bool)

(assert (=> b!3622042 (=> res!1465868 e!2241950)))

(declare-fun sepAndNonSepRulesDisjointChars!1850 (List!38279 List!38279) Bool)

(assert (=> b!3622042 (= res!1465868 (not (sepAndNonSepRulesDisjointChars!1850 rules!3307 rules!3307)))))

(declare-fun b!3622043 () Bool)

(assert (=> b!3622043 (= e!2241959 (not e!2241967))))

(declare-fun res!1465878 () Bool)

(assert (=> b!3622043 (=> res!1465878 e!2241967)))

(assert (=> b!3622043 (= res!1465878 (not (matchR!5008 (regex!5680 rule!403) lt!1251878)))))

(declare-fun ruleValid!1945 (LexerInterface!5269 Rule!11160) Bool)

(assert (=> b!3622043 (ruleValid!1945 thiss!23823 rule!403)))

(declare-fun lt!1251875 () Unit!54902)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1100 (LexerInterface!5269 Rule!11160 List!38279) Unit!54902)

(assert (=> b!3622043 (= lt!1251875 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1100 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3622044 () Bool)

(declare-fun res!1465873 () Bool)

(assert (=> b!3622044 (=> (not res!1465873) (not e!2241953))))

(declare-fun rulesInvariant!4666 (LexerInterface!5269 List!38279) Bool)

(assert (=> b!3622044 (= res!1465873 (rulesInvariant!4666 thiss!23823 rules!3307))))

(declare-fun b!3622045 () Bool)

(assert (=> b!3622045 (= e!2241963 e!2241959)))

(declare-fun res!1465876 () Bool)

(assert (=> b!3622045 (=> (not res!1465876) (not e!2241959))))

(assert (=> b!3622045 (= res!1465876 (= (_1!22148 lt!1251873) token!511))))

(assert (=> b!3622045 (= lt!1251873 (get!12441 lt!1251864))))

(assert (=> b!3622046 (= e!2241964 (and tp!1106259 tp!1106262))))

(assert (= (and start!337390 res!1465869) b!3622026))

(assert (= (and b!3622026 res!1465879) b!3622044))

(assert (= (and b!3622044 res!1465873) b!3622023))

(assert (= (and b!3622023 res!1465881) b!3622027))

(assert (= (and b!3622027 res!1465883) b!3622040))

(assert (= (and b!3622040 res!1465870) b!3622039))

(assert (= (and b!3622039 res!1465882) b!3622045))

(assert (= (and b!3622045 res!1465876) b!3622031))

(assert (= (and b!3622031 res!1465877) b!3622030))

(assert (= (and b!3622030 res!1465875) b!3622043))

(assert (= (and b!3622043 (not res!1465878)) b!3622022))

(assert (= (and b!3622022 (not res!1465880)) b!3622018))

(assert (= (and b!3622018 (not res!1465871)) b!3622020))

(assert (= (and b!3622020 (not res!1465867)) b!3622042))

(assert (= (and b!3622042 (not res!1465868)) b!3622024))

(assert (= (and b!3622024 res!1465872) b!3622019))

(assert (= (and b!3622019 res!1465874) b!3622037))

(assert (= (and b!3622024 (not res!1465866)) b!3622021))

(assert (= b!3622025 b!3622033))

(assert (= b!3622036 b!3622025))

(assert (= (and start!337390 ((_ is Cons!38155) rules!3307)) b!3622036))

(assert (= (and start!337390 ((_ is Cons!38154) suffix!1395)) b!3622029))

(assert (= b!3622028 b!3622032))

(assert (= b!3622034 b!3622028))

(assert (= start!337390 b!3622034))

(assert (= b!3622035 b!3622046))

(assert (= start!337390 b!3622035))

(assert (= b!3622041 b!3622038))

(assert (= start!337390 b!3622041))

(declare-fun m!4121797 () Bool)

(assert (=> b!3622021 m!4121797))

(declare-fun m!4121799 () Bool)

(assert (=> b!3622043 m!4121799))

(declare-fun m!4121801 () Bool)

(assert (=> b!3622043 m!4121801))

(declare-fun m!4121803 () Bool)

(assert (=> b!3622043 m!4121803))

(declare-fun m!4121805 () Bool)

(assert (=> b!3622020 m!4121805))

(assert (=> b!3622020 m!4121805))

(declare-fun m!4121807 () Bool)

(assert (=> b!3622020 m!4121807))

(declare-fun m!4121809 () Bool)

(assert (=> b!3622022 m!4121809))

(declare-fun m!4121811 () Bool)

(assert (=> b!3622039 m!4121811))

(declare-fun m!4121813 () Bool)

(assert (=> b!3622039 m!4121813))

(declare-fun m!4121815 () Bool)

(assert (=> b!3622039 m!4121815))

(assert (=> b!3622039 m!4121815))

(declare-fun m!4121817 () Bool)

(assert (=> b!3622039 m!4121817))

(declare-fun m!4121819 () Bool)

(assert (=> b!3622027 m!4121819))

(declare-fun m!4121821 () Bool)

(assert (=> b!3622041 m!4121821))

(declare-fun m!4121823 () Bool)

(assert (=> b!3622041 m!4121823))

(declare-fun m!4121825 () Bool)

(assert (=> b!3622044 m!4121825))

(declare-fun m!4121827 () Bool)

(assert (=> b!3622028 m!4121827))

(declare-fun m!4121829 () Bool)

(assert (=> b!3622028 m!4121829))

(declare-fun m!4121831 () Bool)

(assert (=> b!3622035 m!4121831))

(declare-fun m!4121833 () Bool)

(assert (=> b!3622035 m!4121833))

(declare-fun m!4121835 () Bool)

(assert (=> b!3622042 m!4121835))

(declare-fun m!4121837 () Bool)

(assert (=> b!3622045 m!4121837))

(declare-fun m!4121839 () Bool)

(assert (=> b!3622023 m!4121839))

(declare-fun m!4121841 () Bool)

(assert (=> start!337390 m!4121841))

(declare-fun m!4121843 () Bool)

(assert (=> b!3622019 m!4121843))

(assert (=> b!3622019 m!4121843))

(declare-fun m!4121845 () Bool)

(assert (=> b!3622019 m!4121845))

(assert (=> b!3622019 m!4121845))

(declare-fun m!4121847 () Bool)

(assert (=> b!3622019 m!4121847))

(declare-fun m!4121849 () Bool)

(assert (=> b!3622019 m!4121849))

(declare-fun m!4121851 () Bool)

(assert (=> b!3622025 m!4121851))

(declare-fun m!4121853 () Bool)

(assert (=> b!3622025 m!4121853))

(declare-fun m!4121855 () Bool)

(assert (=> b!3622031 m!4121855))

(declare-fun m!4121857 () Bool)

(assert (=> b!3622024 m!4121857))

(assert (=> b!3622024 m!4121843))

(assert (=> b!3622024 m!4121845))

(assert (=> b!3622024 m!4121843))

(declare-fun m!4121859 () Bool)

(assert (=> b!3622024 m!4121859))

(declare-fun m!4121861 () Bool)

(assert (=> b!3622024 m!4121861))

(declare-fun m!4121863 () Bool)

(assert (=> b!3622024 m!4121863))

(declare-fun m!4121865 () Bool)

(assert (=> b!3622024 m!4121865))

(declare-fun m!4121867 () Bool)

(assert (=> b!3622024 m!4121867))

(assert (=> b!3622024 m!4121867))

(declare-fun m!4121869 () Bool)

(assert (=> b!3622024 m!4121869))

(declare-fun m!4121871 () Bool)

(assert (=> b!3622024 m!4121871))

(declare-fun m!4121873 () Bool)

(assert (=> b!3622024 m!4121873))

(declare-fun m!4121875 () Bool)

(assert (=> b!3622024 m!4121875))

(declare-fun m!4121877 () Bool)

(assert (=> b!3622024 m!4121877))

(declare-fun m!4121879 () Bool)

(assert (=> b!3622024 m!4121879))

(declare-fun m!4121881 () Bool)

(assert (=> b!3622024 m!4121881))

(declare-fun m!4121883 () Bool)

(assert (=> b!3622026 m!4121883))

(declare-fun m!4121885 () Bool)

(assert (=> b!3622034 m!4121885))

(declare-fun m!4121887 () Bool)

(assert (=> b!3622018 m!4121887))

(assert (=> b!3622018 m!4121887))

(declare-fun m!4121889 () Bool)

(assert (=> b!3622018 m!4121889))

(declare-fun m!4121891 () Bool)

(assert (=> b!3622018 m!4121891))

(check-sat (not b!3622045) (not b_next!95169) (not b_next!95181) b_and!264883 b_and!264885 (not b!3622044) (not b!3622039) (not b_next!95175) (not b!3622027) (not b!3622026) (not b!3622024) (not b!3622018) (not b_next!95177) (not b!3622020) (not b!3622042) b_and!264887 (not b!3622035) (not b!3622043) (not b!3622023) (not b_next!95171) (not b!3622034) (not b_next!95179) b_and!264891 (not b!3622022) (not b!3622028) (not b!3622031) tp_is_empty!17961 (not b!3622036) (not b!3622021) b_and!264897 (not b!3622041) (not b_next!95183) (not b!3622019) b_and!264889 (not start!337390) b_and!264893 (not b_next!95173) (not b!3622025) (not b!3622029) b_and!264895)
(check-sat (not b_next!95169) b_and!264887 (not b_next!95171) (not b_next!95181) b_and!264883 b_and!264885 (not b_next!95175) (not b_next!95177) b_and!264897 (not b_next!95183) b_and!264889 b_and!264893 (not b_next!95173) b_and!264895 (not b_next!95179) b_and!264891)
