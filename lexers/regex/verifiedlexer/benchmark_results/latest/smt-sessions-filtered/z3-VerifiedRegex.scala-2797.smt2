; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155370 () Bool)

(assert start!155370)

(declare-fun b!1631233 () Bool)

(declare-fun b_free!44039 () Bool)

(declare-fun b_next!44743 () Bool)

(assert (=> b!1631233 (= b_free!44039 (not b_next!44743))))

(declare-fun tp!473590 () Bool)

(declare-fun b_and!115685 () Bool)

(assert (=> b!1631233 (= tp!473590 b_and!115685)))

(declare-fun b_free!44041 () Bool)

(declare-fun b_next!44745 () Bool)

(assert (=> b!1631233 (= b_free!44041 (not b_next!44745))))

(declare-fun tp!473589 () Bool)

(declare-fun b_and!115687 () Bool)

(assert (=> b!1631233 (= tp!473589 b_and!115687)))

(declare-fun b!1631244 () Bool)

(declare-fun b_free!44043 () Bool)

(declare-fun b_next!44747 () Bool)

(assert (=> b!1631244 (= b_free!44043 (not b_next!44747))))

(declare-fun tp!473584 () Bool)

(declare-fun b_and!115689 () Bool)

(assert (=> b!1631244 (= tp!473584 b_and!115689)))

(declare-fun b_free!44045 () Bool)

(declare-fun b_next!44749 () Bool)

(assert (=> b!1631244 (= b_free!44045 (not b_next!44749))))

(declare-fun tp!473583 () Bool)

(declare-fun b_and!115691 () Bool)

(assert (=> b!1631244 (= tp!473583 b_and!115691)))

(declare-fun e!1046163 () Bool)

(declare-fun b!1631232 () Bool)

(declare-datatypes ((List!17975 0))(
  ( (Nil!17905) (Cons!17905 (h!23306 (_ BitVec 16)) (t!149474 List!17975)) )
))
(declare-datatypes ((TokenValue!3245 0))(
  ( (FloatLiteralValue!6490 (text!23160 List!17975)) (TokenValueExt!3244 (__x!11792 Int)) (Broken!16225 (value!99564 List!17975)) (Object!3314) (End!3245) (Def!3245) (Underscore!3245) (Match!3245) (Else!3245) (Error!3245) (Case!3245) (If!3245) (Extends!3245) (Abstract!3245) (Class!3245) (Val!3245) (DelimiterValue!6490 (del!3305 List!17975)) (KeywordValue!3251 (value!99565 List!17975)) (CommentValue!6490 (value!99566 List!17975)) (WhitespaceValue!6490 (value!99567 List!17975)) (IndentationValue!3245 (value!99568 List!17975)) (String!20556) (Int32!3245) (Broken!16226 (value!99569 List!17975)) (Boolean!3246) (Unit!29130) (OperatorValue!3248 (op!3305 List!17975)) (IdentifierValue!6490 (value!99570 List!17975)) (IdentifierValue!6491 (value!99571 List!17975)) (WhitespaceValue!6491 (value!99572 List!17975)) (True!6490) (False!6490) (Broken!16227 (value!99573 List!17975)) (Broken!16228 (value!99574 List!17975)) (True!6491) (RightBrace!3245) (RightBracket!3245) (Colon!3245) (Null!3245) (Comma!3245) (LeftBracket!3245) (False!6491) (LeftBrace!3245) (ImaginaryLiteralValue!3245 (text!23161 List!17975)) (StringLiteralValue!9735 (value!99575 List!17975)) (EOFValue!3245 (value!99576 List!17975)) (IdentValue!3245 (value!99577 List!17975)) (DelimiterValue!6491 (value!99578 List!17975)) (DedentValue!3245 (value!99579 List!17975)) (NewLineValue!3245 (value!99580 List!17975)) (IntegerValue!9735 (value!99581 (_ BitVec 32)) (text!23162 List!17975)) (IntegerValue!9736 (value!99582 Int) (text!23163 List!17975)) (Times!3245) (Or!3245) (Equal!3245) (Minus!3245) (Broken!16229 (value!99583 List!17975)) (And!3245) (Div!3245) (LessEqual!3245) (Mod!3245) (Concat!7728) (Not!3245) (Plus!3245) (SpaceValue!3245 (value!99584 List!17975)) (IntegerValue!9737 (value!99585 Int) (text!23164 List!17975)) (StringLiteralValue!9736 (text!23165 List!17975)) (FloatLiteralValue!6491 (text!23166 List!17975)) (BytesLiteralValue!3245 (value!99586 List!17975)) (CommentValue!6491 (value!99587 List!17975)) (StringLiteralValue!9737 (value!99588 List!17975)) (ErrorTokenValue!3245 (msg!3306 List!17975)) )
))
(declare-datatypes ((C!9140 0))(
  ( (C!9141 (val!5166 Int)) )
))
(declare-datatypes ((List!17976 0))(
  ( (Nil!17906) (Cons!17906 (h!23307 C!9140) (t!149475 List!17976)) )
))
(declare-datatypes ((IArray!11921 0))(
  ( (IArray!11922 (innerList!6018 List!17976)) )
))
(declare-datatypes ((Conc!5958 0))(
  ( (Node!5958 (left!14381 Conc!5958) (right!14711 Conc!5958) (csize!12146 Int) (cheight!6169 Int)) (Leaf!8756 (xs!8794 IArray!11921) (csize!12147 Int)) (Empty!5958) )
))
(declare-datatypes ((BalanceConc!11860 0))(
  ( (BalanceConc!11861 (c!265527 Conc!5958)) )
))
(declare-datatypes ((Regex!4483 0))(
  ( (ElementMatch!4483 (c!265528 C!9140)) (Concat!7729 (regOne!9478 Regex!4483) (regTwo!9478 Regex!4483)) (EmptyExpr!4483) (Star!4483 (reg!4812 Regex!4483)) (EmptyLang!4483) (Union!4483 (regOne!9479 Regex!4483) (regTwo!9479 Regex!4483)) )
))
(declare-datatypes ((String!20557 0))(
  ( (String!20558 (value!99589 String)) )
))
(declare-datatypes ((TokenValueInjection!6150 0))(
  ( (TokenValueInjection!6151 (toValue!4586 Int) (toChars!4445 Int)) )
))
(declare-datatypes ((Rule!6110 0))(
  ( (Rule!6111 (regex!3155 Regex!4483) (tag!3435 String!20557) (isSeparator!3155 Bool) (transformation!3155 TokenValueInjection!6150)) )
))
(declare-datatypes ((List!17977 0))(
  ( (Nil!17907) (Cons!17907 (h!23308 Rule!6110) (t!149476 List!17977)) )
))
(declare-fun rules!1846 () List!17977)

(declare-fun lt!592165 () List!17976)

(declare-datatypes ((LexerInterface!2784 0))(
  ( (LexerInterfaceExt!2781 (__x!11793 Int)) (Lexer!2782) )
))
(declare-fun thiss!17113 () LexerInterface!2784)

(declare-datatypes ((Token!5876 0))(
  ( (Token!5877 (value!99590 TokenValue!3245) (rule!4989 Rule!6110) (size!14310 Int) (originalCharacters!3969 List!17976)) )
))
(declare-datatypes ((tuple2!17506 0))(
  ( (tuple2!17507 (_1!10155 Token!5876) (_2!10155 List!17976)) )
))
(declare-datatypes ((Option!3339 0))(
  ( (None!3338) (Some!3338 (v!24397 tuple2!17506)) )
))
(declare-fun isDefined!2706 (Option!3339) Bool)

(declare-fun maxPrefixZipper!312 (LexerInterface!2784 List!17977 List!17976) Option!3339)

(assert (=> b!1631232 (= e!1046163 (isDefined!2706 (maxPrefixZipper!312 thiss!17113 rules!1846 lt!592165)))))

(declare-fun e!1046159 () Bool)

(assert (=> b!1631233 (= e!1046159 (and tp!473590 tp!473589))))

(declare-fun b!1631234 () Bool)

(declare-fun e!1046161 () Bool)

(declare-fun e!1046164 () Bool)

(assert (=> b!1631234 (= e!1046161 e!1046164)))

(declare-fun res!729783 () Bool)

(assert (=> b!1631234 (=> res!729783 e!1046164)))

(declare-fun lt!592147 () Regex!4483)

(declare-datatypes ((List!17978 0))(
  ( (Nil!17908) (Cons!17908 (h!23309 Token!5876) (t!149477 List!17978)) )
))
(declare-fun tokens!457 () List!17978)

(declare-fun lt!592170 () List!17976)

(declare-fun prefixMatch!418 (Regex!4483 List!17976) Bool)

(declare-fun ++!4779 (List!17976 List!17976) List!17976)

(assert (=> b!1631234 (= res!729783 (prefixMatch!418 lt!592147 (++!4779 (originalCharacters!3969 (h!23309 tokens!457)) lt!592170)))))

(declare-fun e!1046148 () Bool)

(assert (=> b!1631234 e!1046148))

(declare-fun res!729771 () Bool)

(assert (=> b!1631234 (=> (not res!729771) (not e!1046148))))

(declare-fun lt!592149 () tuple2!17506)

(assert (=> b!1631234 (= res!729771 (= (_1!10155 lt!592149) (h!23309 tokens!457)))))

(declare-fun lt!592156 () Option!3339)

(declare-fun get!5173 (Option!3339) tuple2!17506)

(assert (=> b!1631234 (= lt!592149 (get!5173 lt!592156))))

(assert (=> b!1631234 (isDefined!2706 lt!592156)))

(declare-fun lt!592164 () List!17976)

(declare-fun maxPrefix!1348 (LexerInterface!2784 List!17977 List!17976) Option!3339)

(assert (=> b!1631234 (= lt!592156 (maxPrefix!1348 thiss!17113 rules!1846 lt!592164))))

(assert (=> b!1631234 (isDefined!2706 (maxPrefix!1348 thiss!17113 rules!1846 (originalCharacters!3969 (h!23309 tokens!457))))))

(declare-fun tp!473588 () Bool)

(declare-fun b!1631235 () Bool)

(declare-fun e!1046156 () Bool)

(declare-fun inv!23274 (String!20557) Bool)

(declare-fun inv!23277 (TokenValueInjection!6150) Bool)

(assert (=> b!1631235 (= e!1046156 (and tp!473588 (inv!23274 (tag!3435 (rule!4989 (h!23309 tokens!457)))) (inv!23277 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) e!1046159))))

(declare-fun b!1631236 () Bool)

(assert (=> b!1631236 (= e!1046164 e!1046163)))

(declare-fun res!729770 () Bool)

(assert (=> b!1631236 (=> res!729770 e!1046163)))

(declare-fun lt!592153 () tuple2!17506)

(declare-fun lt!592157 () List!17976)

(assert (=> b!1631236 (= res!729770 (or (not (= (_1!10155 lt!592153) (h!23309 tokens!457))) (not (= (_2!10155 lt!592153) lt!592157))))))

(declare-fun lt!592171 () Option!3339)

(assert (=> b!1631236 (= lt!592153 (get!5173 lt!592171))))

(declare-datatypes ((Unit!29131 0))(
  ( (Unit!29132) )
))
(declare-fun lt!592158 () Unit!29131)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!120 (LexerInterface!2784 List!17977 Token!5876 Rule!6110 List!17976) Unit!29131)

(assert (=> b!1631236 (= lt!592158 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!120 thiss!17113 rules!1846 (h!23309 tokens!457) (rule!4989 (h!23309 tokens!457)) lt!592157))))

(declare-fun b!1631237 () Bool)

(declare-fun res!729773 () Bool)

(assert (=> b!1631237 (=> (not res!729773) (not e!1046148))))

(declare-fun isEmpty!10937 (List!17976) Bool)

(assert (=> b!1631237 (= res!729773 (isEmpty!10937 (_2!10155 lt!592149)))))

(declare-fun b!1631238 () Bool)

(declare-fun e!1046144 () Bool)

(assert (=> b!1631238 (= e!1046144 e!1046161)))

(declare-fun res!729772 () Bool)

(assert (=> b!1631238 (=> res!729772 e!1046161)))

(declare-datatypes ((tuple2!17508 0))(
  ( (tuple2!17509 (_1!10156 Token!5876) (_2!10156 BalanceConc!11860)) )
))
(declare-datatypes ((Option!3340 0))(
  ( (None!3339) (Some!3339 (v!24398 tuple2!17508)) )
))
(declare-fun isDefined!2707 (Option!3340) Bool)

(declare-fun maxPrefixZipperSequence!679 (LexerInterface!2784 List!17977 BalanceConc!11860) Option!3340)

(declare-fun seqFromList!2059 (List!17976) BalanceConc!11860)

(assert (=> b!1631238 (= res!729772 (not (isDefined!2707 (maxPrefixZipperSequence!679 thiss!17113 rules!1846 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))))

(declare-fun lt!592152 () List!17976)

(assert (=> b!1631238 (= lt!592152 lt!592170)))

(declare-fun lt!592146 () BalanceConc!11860)

(declare-fun head!3478 (BalanceConc!11860) C!9140)

(assert (=> b!1631238 (= lt!592170 (Cons!17906 (head!3478 lt!592146) Nil!17906))))

(declare-fun e!1046162 () Bool)

(assert (=> b!1631238 e!1046162))

(declare-fun res!729776 () Bool)

(assert (=> b!1631238 (=> (not res!729776) (not e!1046162))))

(assert (=> b!1631238 (= res!729776 (= lt!592164 (originalCharacters!3969 (h!23309 tokens!457))))))

(declare-fun b!1631239 () Bool)

(declare-fun e!1046149 () Bool)

(declare-fun e!1046147 () Bool)

(assert (=> b!1631239 (= e!1046149 e!1046147)))

(declare-fun res!729788 () Bool)

(assert (=> b!1631239 (=> (not res!729788) (not e!1046147))))

(declare-fun lt!592155 () List!17976)

(assert (=> b!1631239 (= res!729788 (= lt!592165 lt!592155))))

(assert (=> b!1631239 (= lt!592155 (++!4779 lt!592164 lt!592157))))

(declare-fun lt!592148 () BalanceConc!11860)

(declare-fun list!7043 (BalanceConc!11860) List!17976)

(assert (=> b!1631239 (= lt!592165 (list!7043 lt!592148))))

(assert (=> b!1631239 (= lt!592157 (list!7043 lt!592146))))

(declare-fun lt!592159 () BalanceConc!11860)

(assert (=> b!1631239 (= lt!592164 (list!7043 lt!592159))))

(declare-fun charsOf!1804 (Token!5876) BalanceConc!11860)

(assert (=> b!1631239 (= lt!592159 (charsOf!1804 (h!23309 tokens!457)))))

(declare-datatypes ((IArray!11923 0))(
  ( (IArray!11924 (innerList!6019 List!17978)) )
))
(declare-datatypes ((Conc!5959 0))(
  ( (Node!5959 (left!14382 Conc!5959) (right!14712 Conc!5959) (csize!12148 Int) (cheight!6170 Int)) (Leaf!8757 (xs!8795 IArray!11923) (csize!12149 Int)) (Empty!5959) )
))
(declare-datatypes ((BalanceConc!11862 0))(
  ( (BalanceConc!11863 (c!265529 Conc!5959)) )
))
(declare-datatypes ((tuple2!17510 0))(
  ( (tuple2!17511 (_1!10157 BalanceConc!11862) (_2!10157 BalanceConc!11860)) )
))
(declare-fun lt!592174 () tuple2!17510)

(declare-fun lex!1268 (LexerInterface!2784 List!17977 BalanceConc!11860) tuple2!17510)

(assert (=> b!1631239 (= lt!592174 (lex!1268 thiss!17113 rules!1846 lt!592146))))

(declare-fun lt!592154 () BalanceConc!11862)

(declare-fun print!1315 (LexerInterface!2784 BalanceConc!11862) BalanceConc!11860)

(assert (=> b!1631239 (= lt!592146 (print!1315 thiss!17113 lt!592154))))

(declare-fun seqFromList!2060 (List!17978) BalanceConc!11862)

(assert (=> b!1631239 (= lt!592154 (seqFromList!2060 (t!149477 tokens!457)))))

(assert (=> b!1631239 (= lt!592148 (print!1315 thiss!17113 (seqFromList!2060 tokens!457)))))

(declare-fun e!1046160 () Bool)

(declare-fun e!1046157 () Bool)

(declare-fun tp!473582 () Bool)

(declare-fun b!1631240 () Bool)

(declare-fun inv!23278 (Token!5876) Bool)

(assert (=> b!1631240 (= e!1046160 (and (inv!23278 (h!23309 tokens!457)) e!1046157 tp!473582))))

(declare-fun b!1631241 () Bool)

(declare-fun res!729777 () Bool)

(assert (=> b!1631241 (=> (not res!729777) (not e!1046149))))

(declare-fun rulesProduceEachTokenIndividuallyList!986 (LexerInterface!2784 List!17977 List!17978) Bool)

(assert (=> b!1631241 (= res!729777 (rulesProduceEachTokenIndividuallyList!986 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1631242 () Bool)

(declare-fun e!1046151 () Bool)

(assert (=> b!1631242 (= e!1046147 (not e!1046151))))

(declare-fun res!729791 () Bool)

(assert (=> b!1631242 (=> res!729791 e!1046151)))

(declare-fun lt!592161 () List!17978)

(assert (=> b!1631242 (= res!729791 (not (= lt!592161 (t!149477 tokens!457))))))

(declare-fun list!7044 (BalanceConc!11862) List!17978)

(assert (=> b!1631242 (= lt!592161 (list!7044 (_1!10157 lt!592174)))))

(declare-fun lt!592167 () Unit!29131)

(declare-fun theoremInvertabilityWhenTokenListSeparable!229 (LexerInterface!2784 List!17977 List!17978) Unit!29131)

(assert (=> b!1631242 (= lt!592167 (theoremInvertabilityWhenTokenListSeparable!229 thiss!17113 rules!1846 (t!149477 tokens!457)))))

(declare-fun isPrefix!1415 (List!17976 List!17976) Bool)

(assert (=> b!1631242 (isPrefix!1415 lt!592164 lt!592155)))

(declare-fun lt!592169 () Unit!29131)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!940 (List!17976 List!17976) Unit!29131)

(assert (=> b!1631242 (= lt!592169 (lemmaConcatTwoListThenFirstIsPrefix!940 lt!592164 lt!592157))))

(declare-fun b!1631243 () Bool)

(declare-fun e!1046152 () Bool)

(declare-fun e!1046146 () Bool)

(assert (=> b!1631243 (= e!1046152 e!1046146)))

(declare-fun res!729790 () Bool)

(assert (=> b!1631243 (=> res!729790 e!1046146)))

(assert (=> b!1631243 (= res!729790 (not (isDefined!2706 lt!592171)))))

(declare-fun lt!592172 () Unit!29131)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!358 (LexerInterface!2784 List!17977 List!17976 List!17976) Unit!29131)

(assert (=> b!1631243 (= lt!592172 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!358 thiss!17113 rules!1846 lt!592164 lt!592157))))

(declare-fun e!1046158 () Bool)

(assert (=> b!1631244 (= e!1046158 (and tp!473584 tp!473583))))

(declare-fun b!1631245 () Bool)

(declare-fun tp!473586 () Bool)

(declare-fun inv!21 (TokenValue!3245) Bool)

(assert (=> b!1631245 (= e!1046157 (and (inv!21 (value!99590 (h!23309 tokens!457))) e!1046156 tp!473586))))

(declare-fun b!1631246 () Bool)

(declare-fun res!729774 () Bool)

(assert (=> b!1631246 (=> res!729774 e!1046164)))

(assert (=> b!1631246 (= res!729774 (prefixMatch!418 lt!592147 (++!4779 lt!592164 lt!592170)))))

(declare-fun b!1631247 () Bool)

(declare-fun res!729786 () Bool)

(declare-fun e!1046153 () Bool)

(assert (=> b!1631247 (=> res!729786 e!1046153)))

(declare-fun separableTokensPredicate!726 (LexerInterface!2784 Token!5876 Token!5876 List!17977) Bool)

(assert (=> b!1631247 (= res!729786 (not (separableTokensPredicate!726 thiss!17113 (h!23309 tokens!457) (h!23309 (t!149477 tokens!457)) rules!1846)))))

(declare-fun res!729789 () Bool)

(assert (=> start!155370 (=> (not res!729789) (not e!1046149))))

(get-info :version)

(assert (=> start!155370 (= res!729789 ((_ is Lexer!2782) thiss!17113))))

(assert (=> start!155370 e!1046149))

(assert (=> start!155370 true))

(declare-fun e!1046145 () Bool)

(assert (=> start!155370 e!1046145))

(assert (=> start!155370 e!1046160))

(declare-fun b!1631248 () Bool)

(declare-fun res!729785 () Bool)

(assert (=> b!1631248 (=> (not res!729785) (not e!1046149))))

(declare-fun rulesInvariant!2453 (LexerInterface!2784 List!17977) Bool)

(assert (=> b!1631248 (= res!729785 (rulesInvariant!2453 thiss!17113 rules!1846))))

(declare-fun b!1631249 () Bool)

(declare-fun res!729775 () Bool)

(assert (=> b!1631249 (=> (not res!729775) (not e!1046162))))

(declare-fun head!3479 (List!17976) C!9140)

(assert (=> b!1631249 (= res!729775 (= lt!592152 (Cons!17906 (head!3479 (originalCharacters!3969 (h!23309 (t!149477 tokens!457)))) Nil!17906)))))

(declare-fun b!1631250 () Bool)

(assert (=> b!1631250 (= e!1046162 (= lt!592152 (Cons!17906 (head!3479 lt!592157) Nil!17906)))))

(declare-fun e!1046165 () Bool)

(declare-fun b!1631251 () Bool)

(declare-fun tp!473587 () Bool)

(assert (=> b!1631251 (= e!1046165 (and tp!473587 (inv!23274 (tag!3435 (h!23308 rules!1846))) (inv!23277 (transformation!3155 (h!23308 rules!1846))) e!1046158))))

(declare-fun b!1631252 () Bool)

(declare-fun res!729778 () Bool)

(assert (=> b!1631252 (=> res!729778 e!1046152)))

(declare-fun rulesProduceIndividualToken!1436 (LexerInterface!2784 List!17977 Token!5876) Bool)

(assert (=> b!1631252 (= res!729778 (not (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 tokens!457))))))

(declare-fun b!1631253 () Bool)

(declare-fun e!1046166 () Bool)

(assert (=> b!1631253 (= e!1046166 e!1046144)))

(declare-fun res!729779 () Bool)

(assert (=> b!1631253 (=> res!729779 e!1046144)))

(assert (=> b!1631253 (= res!729779 (prefixMatch!418 lt!592147 (++!4779 lt!592164 lt!592152)))))

(declare-fun lt!592168 () BalanceConc!11860)

(assert (=> b!1631253 (= lt!592152 (list!7043 lt!592168))))

(declare-fun b!1631254 () Bool)

(declare-fun res!729782 () Bool)

(assert (=> b!1631254 (=> (not res!729782) (not e!1046149))))

(assert (=> b!1631254 (= res!729782 (and (not ((_ is Nil!17908) tokens!457)) (not ((_ is Nil!17908) (t!149477 tokens!457)))))))

(declare-fun b!1631255 () Bool)

(declare-fun res!729793 () Bool)

(assert (=> b!1631255 (=> res!729793 e!1046152)))

(declare-fun isEmpty!10938 (BalanceConc!11862) Bool)

(assert (=> b!1631255 (= res!729793 (isEmpty!10938 (_1!10157 (lex!1268 thiss!17113 rules!1846 (seqFromList!2059 lt!592164)))))))

(declare-fun b!1631256 () Bool)

(declare-fun matchR!1982 (Regex!4483 List!17976) Bool)

(assert (=> b!1631256 (= e!1046148 (matchR!1982 (regex!3155 (rule!4989 (h!23309 tokens!457))) lt!592164))))

(declare-fun b!1631257 () Bool)

(assert (=> b!1631257 (= e!1046151 e!1046153)))

(declare-fun res!729792 () Bool)

(assert (=> b!1631257 (=> res!729792 e!1046153)))

(declare-fun lt!592160 () List!17978)

(declare-fun lt!592166 () List!17978)

(assert (=> b!1631257 (= res!729792 (or (not (= lt!592161 lt!592160)) (not (= lt!592160 lt!592166))))))

(assert (=> b!1631257 (= lt!592160 (list!7044 lt!592154))))

(assert (=> b!1631257 (= lt!592161 lt!592166)))

(declare-fun prepend!687 (BalanceConc!11862 Token!5876) BalanceConc!11862)

(assert (=> b!1631257 (= lt!592166 (list!7044 (prepend!687 (seqFromList!2060 (t!149477 (t!149477 tokens!457))) (h!23309 (t!149477 tokens!457)))))))

(declare-fun lt!592150 () Unit!29131)

(declare-fun seqFromListBHdTlConstructive!232 (Token!5876 List!17978 BalanceConc!11862) Unit!29131)

(assert (=> b!1631257 (= lt!592150 (seqFromListBHdTlConstructive!232 (h!23309 (t!149477 tokens!457)) (t!149477 (t!149477 tokens!457)) (_1!10157 lt!592174)))))

(declare-fun b!1631258 () Bool)

(declare-fun tp!473585 () Bool)

(assert (=> b!1631258 (= e!1046145 (and e!1046165 tp!473585))))

(declare-fun b!1631259 () Bool)

(declare-fun res!729781 () Bool)

(assert (=> b!1631259 (=> (not res!729781) (not e!1046149))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!477 (LexerInterface!2784 List!17978 List!17977) Bool)

(assert (=> b!1631259 (= res!729781 (tokensListTwoByTwoPredicateSeparableList!477 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1631260 () Bool)

(assert (=> b!1631260 (= e!1046146 e!1046166)))

(declare-fun res!729784 () Bool)

(assert (=> b!1631260 (=> res!729784 e!1046166)))

(declare-fun prefixMatchZipperSequence!549 (Regex!4483 BalanceConc!11860) Bool)

(declare-fun ++!4780 (BalanceConc!11860 BalanceConc!11860) BalanceConc!11860)

(assert (=> b!1631260 (= res!729784 (prefixMatchZipperSequence!549 lt!592147 (++!4780 lt!592159 lt!592168)))))

(declare-fun singletonSeq!1588 (C!9140) BalanceConc!11860)

(declare-fun apply!4602 (BalanceConc!11860 Int) C!9140)

(assert (=> b!1631260 (= lt!592168 (singletonSeq!1588 (apply!4602 (charsOf!1804 (h!23309 (t!149477 tokens!457))) 0)))))

(declare-fun rulesRegex!545 (LexerInterface!2784 List!17977) Regex!4483)

(assert (=> b!1631260 (= lt!592147 (rulesRegex!545 thiss!17113 rules!1846))))

(declare-fun b!1631261 () Bool)

(declare-fun res!729787 () Bool)

(assert (=> b!1631261 (=> (not res!729787) (not e!1046149))))

(declare-fun isEmpty!10939 (List!17977) Bool)

(assert (=> b!1631261 (= res!729787 (not (isEmpty!10939 rules!1846)))))

(declare-fun b!1631262 () Bool)

(assert (=> b!1631262 (= e!1046153 e!1046152)))

(declare-fun res!729780 () Bool)

(assert (=> b!1631262 (=> res!729780 e!1046152)))

(declare-fun lt!592162 () List!17976)

(declare-fun lt!592163 () List!17976)

(assert (=> b!1631262 (= res!729780 (or (not (= lt!592163 lt!592162)) (not (= lt!592162 lt!592164)) (not (= lt!592163 lt!592164))))))

(declare-fun printList!899 (LexerInterface!2784 List!17978) List!17976)

(assert (=> b!1631262 (= lt!592162 (printList!899 thiss!17113 (Cons!17908 (h!23309 tokens!457) Nil!17908)))))

(declare-fun lt!592151 () BalanceConc!11860)

(assert (=> b!1631262 (= lt!592163 (list!7043 lt!592151))))

(declare-fun lt!592173 () BalanceConc!11862)

(declare-fun printTailRec!837 (LexerInterface!2784 BalanceConc!11862 Int BalanceConc!11860) BalanceConc!11860)

(assert (=> b!1631262 (= lt!592151 (printTailRec!837 thiss!17113 lt!592173 0 (BalanceConc!11861 Empty!5958)))))

(assert (=> b!1631262 (= lt!592151 (print!1315 thiss!17113 lt!592173))))

(declare-fun singletonSeq!1589 (Token!5876) BalanceConc!11862)

(assert (=> b!1631262 (= lt!592173 (singletonSeq!1589 (h!23309 tokens!457)))))

(assert (=> b!1631262 (= lt!592171 (maxPrefix!1348 thiss!17113 rules!1846 lt!592165))))

(assert (= (and start!155370 res!729789) b!1631261))

(assert (= (and b!1631261 res!729787) b!1631248))

(assert (= (and b!1631248 res!729785) b!1631241))

(assert (= (and b!1631241 res!729777) b!1631259))

(assert (= (and b!1631259 res!729781) b!1631254))

(assert (= (and b!1631254 res!729782) b!1631239))

(assert (= (and b!1631239 res!729788) b!1631242))

(assert (= (and b!1631242 (not res!729791)) b!1631257))

(assert (= (and b!1631257 (not res!729792)) b!1631247))

(assert (= (and b!1631247 (not res!729786)) b!1631262))

(assert (= (and b!1631262 (not res!729780)) b!1631252))

(assert (= (and b!1631252 (not res!729778)) b!1631255))

(assert (= (and b!1631255 (not res!729793)) b!1631243))

(assert (= (and b!1631243 (not res!729790)) b!1631260))

(assert (= (and b!1631260 (not res!729784)) b!1631253))

(assert (= (and b!1631253 (not res!729779)) b!1631238))

(assert (= (and b!1631238 res!729776) b!1631249))

(assert (= (and b!1631249 res!729775) b!1631250))

(assert (= (and b!1631238 (not res!729772)) b!1631234))

(assert (= (and b!1631234 res!729771) b!1631237))

(assert (= (and b!1631237 res!729773) b!1631256))

(assert (= (and b!1631234 (not res!729783)) b!1631246))

(assert (= (and b!1631246 (not res!729774)) b!1631236))

(assert (= (and b!1631236 (not res!729770)) b!1631232))

(assert (= b!1631251 b!1631244))

(assert (= b!1631258 b!1631251))

(assert (= (and start!155370 ((_ is Cons!17907) rules!1846)) b!1631258))

(assert (= b!1631235 b!1631233))

(assert (= b!1631245 b!1631235))

(assert (= b!1631240 b!1631245))

(assert (= (and start!155370 ((_ is Cons!17908) tokens!457)) b!1631240))

(declare-fun m!1964233 () Bool)

(assert (=> b!1631235 m!1964233))

(declare-fun m!1964235 () Bool)

(assert (=> b!1631235 m!1964235))

(declare-fun m!1964237 () Bool)

(assert (=> b!1631241 m!1964237))

(declare-fun m!1964239 () Bool)

(assert (=> b!1631232 m!1964239))

(assert (=> b!1631232 m!1964239))

(declare-fun m!1964241 () Bool)

(assert (=> b!1631232 m!1964241))

(declare-fun m!1964243 () Bool)

(assert (=> b!1631245 m!1964243))

(declare-fun m!1964245 () Bool)

(assert (=> b!1631248 m!1964245))

(declare-fun m!1964247 () Bool)

(assert (=> b!1631240 m!1964247))

(declare-fun m!1964249 () Bool)

(assert (=> b!1631236 m!1964249))

(declare-fun m!1964251 () Bool)

(assert (=> b!1631236 m!1964251))

(declare-fun m!1964253 () Bool)

(assert (=> b!1631237 m!1964253))

(declare-fun m!1964255 () Bool)

(assert (=> b!1631252 m!1964255))

(declare-fun m!1964257 () Bool)

(assert (=> b!1631257 m!1964257))

(declare-fun m!1964259 () Bool)

(assert (=> b!1631257 m!1964259))

(declare-fun m!1964261 () Bool)

(assert (=> b!1631257 m!1964261))

(declare-fun m!1964263 () Bool)

(assert (=> b!1631257 m!1964263))

(declare-fun m!1964265 () Bool)

(assert (=> b!1631257 m!1964265))

(assert (=> b!1631257 m!1964261))

(assert (=> b!1631257 m!1964263))

(declare-fun m!1964267 () Bool)

(assert (=> b!1631247 m!1964267))

(declare-fun m!1964269 () Bool)

(assert (=> b!1631249 m!1964269))

(declare-fun m!1964271 () Bool)

(assert (=> b!1631256 m!1964271))

(declare-fun m!1964273 () Bool)

(assert (=> b!1631242 m!1964273))

(declare-fun m!1964275 () Bool)

(assert (=> b!1631242 m!1964275))

(declare-fun m!1964277 () Bool)

(assert (=> b!1631242 m!1964277))

(declare-fun m!1964279 () Bool)

(assert (=> b!1631242 m!1964279))

(declare-fun m!1964281 () Bool)

(assert (=> b!1631260 m!1964281))

(declare-fun m!1964283 () Bool)

(assert (=> b!1631260 m!1964283))

(declare-fun m!1964285 () Bool)

(assert (=> b!1631260 m!1964285))

(assert (=> b!1631260 m!1964285))

(declare-fun m!1964287 () Bool)

(assert (=> b!1631260 m!1964287))

(declare-fun m!1964289 () Bool)

(assert (=> b!1631260 m!1964289))

(declare-fun m!1964291 () Bool)

(assert (=> b!1631260 m!1964291))

(assert (=> b!1631260 m!1964281))

(assert (=> b!1631260 m!1964291))

(declare-fun m!1964293 () Bool)

(assert (=> b!1631234 m!1964293))

(declare-fun m!1964295 () Bool)

(assert (=> b!1631234 m!1964295))

(declare-fun m!1964297 () Bool)

(assert (=> b!1631234 m!1964297))

(declare-fun m!1964299 () Bool)

(assert (=> b!1631234 m!1964299))

(declare-fun m!1964301 () Bool)

(assert (=> b!1631234 m!1964301))

(assert (=> b!1631234 m!1964299))

(declare-fun m!1964303 () Bool)

(assert (=> b!1631234 m!1964303))

(declare-fun m!1964305 () Bool)

(assert (=> b!1631234 m!1964305))

(assert (=> b!1631234 m!1964293))

(declare-fun m!1964307 () Bool)

(assert (=> b!1631239 m!1964307))

(declare-fun m!1964309 () Bool)

(assert (=> b!1631239 m!1964309))

(declare-fun m!1964311 () Bool)

(assert (=> b!1631239 m!1964311))

(declare-fun m!1964313 () Bool)

(assert (=> b!1631239 m!1964313))

(declare-fun m!1964315 () Bool)

(assert (=> b!1631239 m!1964315))

(declare-fun m!1964317 () Bool)

(assert (=> b!1631239 m!1964317))

(declare-fun m!1964319 () Bool)

(assert (=> b!1631239 m!1964319))

(declare-fun m!1964321 () Bool)

(assert (=> b!1631239 m!1964321))

(assert (=> b!1631239 m!1964315))

(declare-fun m!1964323 () Bool)

(assert (=> b!1631239 m!1964323))

(declare-fun m!1964325 () Bool)

(assert (=> b!1631239 m!1964325))

(declare-fun m!1964327 () Bool)

(assert (=> b!1631246 m!1964327))

(assert (=> b!1631246 m!1964327))

(declare-fun m!1964329 () Bool)

(assert (=> b!1631246 m!1964329))

(declare-fun m!1964331 () Bool)

(assert (=> b!1631243 m!1964331))

(declare-fun m!1964333 () Bool)

(assert (=> b!1631243 m!1964333))

(declare-fun m!1964335 () Bool)

(assert (=> b!1631238 m!1964335))

(assert (=> b!1631238 m!1964335))

(declare-fun m!1964337 () Bool)

(assert (=> b!1631238 m!1964337))

(assert (=> b!1631238 m!1964337))

(declare-fun m!1964339 () Bool)

(assert (=> b!1631238 m!1964339))

(declare-fun m!1964341 () Bool)

(assert (=> b!1631238 m!1964341))

(declare-fun m!1964343 () Bool)

(assert (=> b!1631262 m!1964343))

(declare-fun m!1964345 () Bool)

(assert (=> b!1631262 m!1964345))

(declare-fun m!1964347 () Bool)

(assert (=> b!1631262 m!1964347))

(declare-fun m!1964349 () Bool)

(assert (=> b!1631262 m!1964349))

(declare-fun m!1964351 () Bool)

(assert (=> b!1631262 m!1964351))

(declare-fun m!1964353 () Bool)

(assert (=> b!1631262 m!1964353))

(declare-fun m!1964355 () Bool)

(assert (=> b!1631255 m!1964355))

(assert (=> b!1631255 m!1964355))

(declare-fun m!1964357 () Bool)

(assert (=> b!1631255 m!1964357))

(declare-fun m!1964359 () Bool)

(assert (=> b!1631255 m!1964359))

(declare-fun m!1964361 () Bool)

(assert (=> b!1631261 m!1964361))

(declare-fun m!1964363 () Bool)

(assert (=> b!1631250 m!1964363))

(declare-fun m!1964365 () Bool)

(assert (=> b!1631253 m!1964365))

(assert (=> b!1631253 m!1964365))

(declare-fun m!1964367 () Bool)

(assert (=> b!1631253 m!1964367))

(declare-fun m!1964369 () Bool)

(assert (=> b!1631253 m!1964369))

(declare-fun m!1964371 () Bool)

(assert (=> b!1631259 m!1964371))

(declare-fun m!1964373 () Bool)

(assert (=> b!1631251 m!1964373))

(declare-fun m!1964375 () Bool)

(assert (=> b!1631251 m!1964375))

(check-sat (not b!1631262) (not b!1631238) (not b!1631242) (not b_next!44747) (not b!1631243) (not b!1631245) (not b!1631247) (not b!1631256) (not b!1631261) (not b!1631248) b_and!115689 (not b!1631241) (not b!1631237) (not b!1631260) (not b!1631232) (not b_next!44749) (not b!1631259) b_and!115691 (not b!1631251) (not b_next!44745) (not b!1631235) (not b!1631246) (not b!1631240) (not b!1631258) (not b!1631236) (not b!1631239) (not b!1631255) (not b!1631234) (not b!1631252) (not b!1631250) (not b_next!44743) (not b!1631257) b_and!115685 b_and!115687 (not b!1631253) (not b!1631249))
(check-sat (not b_next!44749) b_and!115691 (not b_next!44745) (not b_next!44747) b_and!115689 (not b_next!44743) b_and!115685 b_and!115687)
(get-model)

(declare-fun d!491424 () Bool)

(declare-fun isEmpty!10943 (Option!3339) Bool)

(assert (=> d!491424 (= (isDefined!2706 (maxPrefixZipper!312 thiss!17113 rules!1846 lt!592165)) (not (isEmpty!10943 (maxPrefixZipper!312 thiss!17113 rules!1846 lt!592165))))))

(declare-fun bs!395152 () Bool)

(assert (= bs!395152 d!491424))

(assert (=> bs!395152 m!1964239))

(declare-fun m!1964377 () Bool)

(assert (=> bs!395152 m!1964377))

(assert (=> b!1631232 d!491424))

(declare-fun lt!592193 () Option!3339)

(declare-fun d!491426 () Bool)

(assert (=> d!491426 (= lt!592193 (maxPrefix!1348 thiss!17113 rules!1846 lt!592165))))

(declare-fun e!1046178 () Option!3339)

(assert (=> d!491426 (= lt!592193 e!1046178)))

(declare-fun c!265538 () Bool)

(assert (=> d!491426 (= c!265538 (and ((_ is Cons!17907) rules!1846) ((_ is Nil!17907) (t!149476 rules!1846))))))

(declare-fun lt!592195 () Unit!29131)

(declare-fun lt!592192 () Unit!29131)

(assert (=> d!491426 (= lt!592195 lt!592192)))

(assert (=> d!491426 (isPrefix!1415 lt!592165 lt!592165)))

(declare-fun lemmaIsPrefixRefl!965 (List!17976 List!17976) Unit!29131)

(assert (=> d!491426 (= lt!592192 (lemmaIsPrefixRefl!965 lt!592165 lt!592165))))

(declare-fun rulesValidInductive!979 (LexerInterface!2784 List!17977) Bool)

(assert (=> d!491426 (rulesValidInductive!979 thiss!17113 rules!1846)))

(assert (=> d!491426 (= (maxPrefixZipper!312 thiss!17113 rules!1846 lt!592165) lt!592193)))

(declare-fun bm!105518 () Bool)

(declare-fun call!105523 () Option!3339)

(declare-fun maxPrefixOneRuleZipper!109 (LexerInterface!2784 Rule!6110 List!17976) Option!3339)

(assert (=> bm!105518 (= call!105523 (maxPrefixOneRuleZipper!109 thiss!17113 (h!23308 rules!1846) lt!592165))))

(declare-fun b!1631285 () Bool)

(assert (=> b!1631285 (= e!1046178 call!105523)))

(declare-fun b!1631286 () Bool)

(declare-fun lt!592194 () Option!3339)

(declare-fun lt!592191 () Option!3339)

(assert (=> b!1631286 (= e!1046178 (ite (and ((_ is None!3338) lt!592194) ((_ is None!3338) lt!592191)) None!3338 (ite ((_ is None!3338) lt!592191) lt!592194 (ite ((_ is None!3338) lt!592194) lt!592191 (ite (>= (size!14310 (_1!10155 (v!24397 lt!592194))) (size!14310 (_1!10155 (v!24397 lt!592191)))) lt!592194 lt!592191)))))))

(assert (=> b!1631286 (= lt!592194 call!105523)))

(assert (=> b!1631286 (= lt!592191 (maxPrefixZipper!312 thiss!17113 (t!149476 rules!1846) lt!592165))))

(assert (= (and d!491426 c!265538) b!1631285))

(assert (= (and d!491426 (not c!265538)) b!1631286))

(assert (= (or b!1631285 b!1631286) bm!105518))

(assert (=> d!491426 m!1964347))

(declare-fun m!1964411 () Bool)

(assert (=> d!491426 m!1964411))

(declare-fun m!1964413 () Bool)

(assert (=> d!491426 m!1964413))

(declare-fun m!1964415 () Bool)

(assert (=> d!491426 m!1964415))

(declare-fun m!1964417 () Bool)

(assert (=> bm!105518 m!1964417))

(declare-fun m!1964419 () Bool)

(assert (=> b!1631286 m!1964419))

(assert (=> b!1631232 d!491426))

(declare-fun d!491436 () Bool)

(declare-fun c!265541 () Bool)

(assert (=> d!491436 (= c!265541 (isEmpty!10937 (++!4779 lt!592164 lt!592152)))))

(declare-fun e!1046181 () Bool)

(assert (=> d!491436 (= (prefixMatch!418 lt!592147 (++!4779 lt!592164 lt!592152)) e!1046181)))

(declare-fun b!1631291 () Bool)

(declare-fun lostCause!444 (Regex!4483) Bool)

(assert (=> b!1631291 (= e!1046181 (not (lostCause!444 lt!592147)))))

(declare-fun b!1631292 () Bool)

(declare-fun derivativeStep!1088 (Regex!4483 C!9140) Regex!4483)

(declare-fun tail!2376 (List!17976) List!17976)

(assert (=> b!1631292 (= e!1046181 (prefixMatch!418 (derivativeStep!1088 lt!592147 (head!3479 (++!4779 lt!592164 lt!592152))) (tail!2376 (++!4779 lt!592164 lt!592152))))))

(assert (= (and d!491436 c!265541) b!1631291))

(assert (= (and d!491436 (not c!265541)) b!1631292))

(assert (=> d!491436 m!1964365))

(declare-fun m!1964421 () Bool)

(assert (=> d!491436 m!1964421))

(declare-fun m!1964423 () Bool)

(assert (=> b!1631291 m!1964423))

(assert (=> b!1631292 m!1964365))

(declare-fun m!1964425 () Bool)

(assert (=> b!1631292 m!1964425))

(assert (=> b!1631292 m!1964425))

(declare-fun m!1964427 () Bool)

(assert (=> b!1631292 m!1964427))

(assert (=> b!1631292 m!1964365))

(declare-fun m!1964429 () Bool)

(assert (=> b!1631292 m!1964429))

(assert (=> b!1631292 m!1964427))

(assert (=> b!1631292 m!1964429))

(declare-fun m!1964431 () Bool)

(assert (=> b!1631292 m!1964431))

(assert (=> b!1631253 d!491436))

(declare-fun d!491438 () Bool)

(declare-fun e!1046192 () Bool)

(assert (=> d!491438 e!1046192))

(declare-fun res!729816 () Bool)

(assert (=> d!491438 (=> (not res!729816) (not e!1046192))))

(declare-fun lt!592200 () List!17976)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2485 (List!17976) (InoxSet C!9140))

(assert (=> d!491438 (= res!729816 (= (content!2485 lt!592200) ((_ map or) (content!2485 lt!592164) (content!2485 lt!592152))))))

(declare-fun e!1046193 () List!17976)

(assert (=> d!491438 (= lt!592200 e!1046193)))

(declare-fun c!265546 () Bool)

(assert (=> d!491438 (= c!265546 ((_ is Nil!17906) lt!592164))))

(assert (=> d!491438 (= (++!4779 lt!592164 lt!592152) lt!592200)))

(declare-fun b!1631310 () Bool)

(assert (=> b!1631310 (= e!1046192 (or (not (= lt!592152 Nil!17906)) (= lt!592200 lt!592164)))))

(declare-fun b!1631307 () Bool)

(assert (=> b!1631307 (= e!1046193 lt!592152)))

(declare-fun b!1631309 () Bool)

(declare-fun res!729817 () Bool)

(assert (=> b!1631309 (=> (not res!729817) (not e!1046192))))

(declare-fun size!14314 (List!17976) Int)

(assert (=> b!1631309 (= res!729817 (= (size!14314 lt!592200) (+ (size!14314 lt!592164) (size!14314 lt!592152))))))

(declare-fun b!1631308 () Bool)

(assert (=> b!1631308 (= e!1046193 (Cons!17906 (h!23307 lt!592164) (++!4779 (t!149475 lt!592164) lt!592152)))))

(assert (= (and d!491438 c!265546) b!1631307))

(assert (= (and d!491438 (not c!265546)) b!1631308))

(assert (= (and d!491438 res!729816) b!1631309))

(assert (= (and b!1631309 res!729817) b!1631310))

(declare-fun m!1964433 () Bool)

(assert (=> d!491438 m!1964433))

(declare-fun m!1964435 () Bool)

(assert (=> d!491438 m!1964435))

(declare-fun m!1964437 () Bool)

(assert (=> d!491438 m!1964437))

(declare-fun m!1964439 () Bool)

(assert (=> b!1631309 m!1964439))

(declare-fun m!1964441 () Bool)

(assert (=> b!1631309 m!1964441))

(declare-fun m!1964443 () Bool)

(assert (=> b!1631309 m!1964443))

(declare-fun m!1964445 () Bool)

(assert (=> b!1631308 m!1964445))

(assert (=> b!1631253 d!491438))

(declare-fun d!491440 () Bool)

(declare-fun list!7046 (Conc!5958) List!17976)

(assert (=> d!491440 (= (list!7043 lt!592168) (list!7046 (c!265527 lt!592168)))))

(declare-fun bs!395154 () Bool)

(assert (= bs!395154 d!491440))

(declare-fun m!1964447 () Bool)

(assert (=> bs!395154 m!1964447))

(assert (=> b!1631253 d!491440))

(declare-fun d!491442 () Bool)

(declare-fun lt!592204 () Bool)

(declare-fun isEmpty!10945 (List!17978) Bool)

(assert (=> d!491442 (= lt!592204 (isEmpty!10945 (list!7044 (_1!10157 (lex!1268 thiss!17113 rules!1846 (seqFromList!2059 lt!592164))))))))

(declare-fun isEmpty!10946 (Conc!5959) Bool)

(assert (=> d!491442 (= lt!592204 (isEmpty!10946 (c!265529 (_1!10157 (lex!1268 thiss!17113 rules!1846 (seqFromList!2059 lt!592164))))))))

(assert (=> d!491442 (= (isEmpty!10938 (_1!10157 (lex!1268 thiss!17113 rules!1846 (seqFromList!2059 lt!592164)))) lt!592204)))

(declare-fun bs!395156 () Bool)

(assert (= bs!395156 d!491442))

(declare-fun m!1964469 () Bool)

(assert (=> bs!395156 m!1964469))

(assert (=> bs!395156 m!1964469))

(declare-fun m!1964471 () Bool)

(assert (=> bs!395156 m!1964471))

(declare-fun m!1964473 () Bool)

(assert (=> bs!395156 m!1964473))

(assert (=> b!1631255 d!491442))

(declare-fun b!1631339 () Bool)

(declare-fun e!1046209 () Bool)

(declare-fun lt!592213 () tuple2!17510)

(assert (=> b!1631339 (= e!1046209 (not (isEmpty!10938 (_1!10157 lt!592213))))))

(declare-fun b!1631340 () Bool)

(declare-fun e!1046210 () Bool)

(assert (=> b!1631340 (= e!1046210 (= (_2!10157 lt!592213) (seqFromList!2059 lt!592164)))))

(declare-fun b!1631341 () Bool)

(assert (=> b!1631341 (= e!1046210 e!1046209)))

(declare-fun res!729840 () Bool)

(declare-fun size!14315 (BalanceConc!11860) Int)

(assert (=> b!1631341 (= res!729840 (< (size!14315 (_2!10157 lt!592213)) (size!14315 (seqFromList!2059 lt!592164))))))

(assert (=> b!1631341 (=> (not res!729840) (not e!1046209))))

(declare-fun b!1631342 () Bool)

(declare-fun res!729838 () Bool)

(declare-fun e!1046211 () Bool)

(assert (=> b!1631342 (=> (not res!729838) (not e!1046211))))

(declare-datatypes ((tuple2!17514 0))(
  ( (tuple2!17515 (_1!10159 List!17978) (_2!10159 List!17976)) )
))
(declare-fun lexList!835 (LexerInterface!2784 List!17977 List!17976) tuple2!17514)

(assert (=> b!1631342 (= res!729838 (= (list!7044 (_1!10157 lt!592213)) (_1!10159 (lexList!835 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 lt!592164))))))))

(declare-fun b!1631343 () Bool)

(assert (=> b!1631343 (= e!1046211 (= (list!7043 (_2!10157 lt!592213)) (_2!10159 (lexList!835 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 lt!592164))))))))

(declare-fun d!491448 () Bool)

(assert (=> d!491448 e!1046211))

(declare-fun res!729839 () Bool)

(assert (=> d!491448 (=> (not res!729839) (not e!1046211))))

(assert (=> d!491448 (= res!729839 e!1046210)))

(declare-fun c!265550 () Bool)

(declare-fun size!14316 (BalanceConc!11862) Int)

(assert (=> d!491448 (= c!265550 (> (size!14316 (_1!10157 lt!592213)) 0))))

(declare-fun lexTailRecV2!558 (LexerInterface!2784 List!17977 BalanceConc!11860 BalanceConc!11860 BalanceConc!11860 BalanceConc!11862) tuple2!17510)

(assert (=> d!491448 (= lt!592213 (lexTailRecV2!558 thiss!17113 rules!1846 (seqFromList!2059 lt!592164) (BalanceConc!11861 Empty!5958) (seqFromList!2059 lt!592164) (BalanceConc!11863 Empty!5959)))))

(assert (=> d!491448 (= (lex!1268 thiss!17113 rules!1846 (seqFromList!2059 lt!592164)) lt!592213)))

(assert (= (and d!491448 c!265550) b!1631341))

(assert (= (and d!491448 (not c!265550)) b!1631340))

(assert (= (and b!1631341 res!729840) b!1631339))

(assert (= (and d!491448 res!729839) b!1631342))

(assert (= (and b!1631342 res!729838) b!1631343))

(declare-fun m!1964493 () Bool)

(assert (=> b!1631341 m!1964493))

(assert (=> b!1631341 m!1964355))

(declare-fun m!1964495 () Bool)

(assert (=> b!1631341 m!1964495))

(declare-fun m!1964497 () Bool)

(assert (=> b!1631339 m!1964497))

(declare-fun m!1964499 () Bool)

(assert (=> d!491448 m!1964499))

(assert (=> d!491448 m!1964355))

(assert (=> d!491448 m!1964355))

(declare-fun m!1964501 () Bool)

(assert (=> d!491448 m!1964501))

(declare-fun m!1964503 () Bool)

(assert (=> b!1631342 m!1964503))

(assert (=> b!1631342 m!1964355))

(declare-fun m!1964505 () Bool)

(assert (=> b!1631342 m!1964505))

(assert (=> b!1631342 m!1964505))

(declare-fun m!1964507 () Bool)

(assert (=> b!1631342 m!1964507))

(declare-fun m!1964509 () Bool)

(assert (=> b!1631343 m!1964509))

(assert (=> b!1631343 m!1964355))

(assert (=> b!1631343 m!1964505))

(assert (=> b!1631343 m!1964505))

(assert (=> b!1631343 m!1964507))

(assert (=> b!1631255 d!491448))

(declare-fun d!491456 () Bool)

(declare-fun fromListB!905 (List!17976) BalanceConc!11860)

(assert (=> d!491456 (= (seqFromList!2059 lt!592164) (fromListB!905 lt!592164))))

(declare-fun bs!395159 () Bool)

(assert (= bs!395159 d!491456))

(declare-fun m!1964517 () Bool)

(assert (=> bs!395159 m!1964517))

(assert (=> b!1631255 d!491456))

(declare-fun d!491460 () Bool)

(assert (=> d!491460 (= (inv!23274 (tag!3435 (h!23308 rules!1846))) (= (mod (str.len (value!99589 (tag!3435 (h!23308 rules!1846)))) 2) 0))))

(assert (=> b!1631251 d!491460))

(declare-fun d!491462 () Bool)

(declare-fun res!729843 () Bool)

(declare-fun e!1046217 () Bool)

(assert (=> d!491462 (=> (not res!729843) (not e!1046217))))

(declare-fun semiInverseModEq!1205 (Int Int) Bool)

(assert (=> d!491462 (= res!729843 (semiInverseModEq!1205 (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toValue!4586 (transformation!3155 (h!23308 rules!1846)))))))

(assert (=> d!491462 (= (inv!23277 (transformation!3155 (h!23308 rules!1846))) e!1046217)))

(declare-fun b!1631352 () Bool)

(declare-fun equivClasses!1146 (Int Int) Bool)

(assert (=> b!1631352 (= e!1046217 (equivClasses!1146 (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toValue!4586 (transformation!3155 (h!23308 rules!1846)))))))

(assert (= (and d!491462 res!729843) b!1631352))

(declare-fun m!1964527 () Bool)

(assert (=> d!491462 m!1964527))

(declare-fun m!1964529 () Bool)

(assert (=> b!1631352 m!1964529))

(assert (=> b!1631251 d!491462))

(declare-fun d!491466 () Bool)

(assert (=> d!491466 (= (head!3479 lt!592157) (h!23307 lt!592157))))

(assert (=> b!1631250 d!491466))

(declare-fun d!491468 () Bool)

(declare-fun lt!592273 () Bool)

(declare-fun e!1046252 () Bool)

(assert (=> d!491468 (= lt!592273 e!1046252)))

(declare-fun res!729897 () Bool)

(assert (=> d!491468 (=> (not res!729897) (not e!1046252))))

(assert (=> d!491468 (= res!729897 (= (list!7044 (_1!10157 (lex!1268 thiss!17113 rules!1846 (print!1315 thiss!17113 (singletonSeq!1589 (h!23309 tokens!457)))))) (list!7044 (singletonSeq!1589 (h!23309 tokens!457)))))))

(declare-fun e!1046253 () Bool)

(assert (=> d!491468 (= lt!592273 e!1046253)))

(declare-fun res!729895 () Bool)

(assert (=> d!491468 (=> (not res!729895) (not e!1046253))))

(declare-fun lt!592272 () tuple2!17510)

(assert (=> d!491468 (= res!729895 (= (size!14316 (_1!10157 lt!592272)) 1))))

(assert (=> d!491468 (= lt!592272 (lex!1268 thiss!17113 rules!1846 (print!1315 thiss!17113 (singletonSeq!1589 (h!23309 tokens!457)))))))

(assert (=> d!491468 (not (isEmpty!10939 rules!1846))))

(assert (=> d!491468 (= (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 tokens!457)) lt!592273)))

(declare-fun b!1631428 () Bool)

(declare-fun res!729896 () Bool)

(assert (=> b!1631428 (=> (not res!729896) (not e!1046253))))

(declare-fun apply!4606 (BalanceConc!11862 Int) Token!5876)

(assert (=> b!1631428 (= res!729896 (= (apply!4606 (_1!10157 lt!592272) 0) (h!23309 tokens!457)))))

(declare-fun b!1631429 () Bool)

(declare-fun isEmpty!10947 (BalanceConc!11860) Bool)

(assert (=> b!1631429 (= e!1046253 (isEmpty!10947 (_2!10157 lt!592272)))))

(declare-fun b!1631430 () Bool)

(assert (=> b!1631430 (= e!1046252 (isEmpty!10947 (_2!10157 (lex!1268 thiss!17113 rules!1846 (print!1315 thiss!17113 (singletonSeq!1589 (h!23309 tokens!457)))))))))

(assert (= (and d!491468 res!729895) b!1631428))

(assert (= (and b!1631428 res!729896) b!1631429))

(assert (= (and d!491468 res!729897) b!1631430))

(declare-fun m!1964711 () Bool)

(assert (=> d!491468 m!1964711))

(declare-fun m!1964713 () Bool)

(assert (=> d!491468 m!1964713))

(declare-fun m!1964715 () Bool)

(assert (=> d!491468 m!1964715))

(assert (=> d!491468 m!1964361))

(assert (=> d!491468 m!1964351))

(declare-fun m!1964717 () Bool)

(assert (=> d!491468 m!1964717))

(assert (=> d!491468 m!1964351))

(declare-fun m!1964719 () Bool)

(assert (=> d!491468 m!1964719))

(assert (=> d!491468 m!1964351))

(assert (=> d!491468 m!1964713))

(declare-fun m!1964721 () Bool)

(assert (=> b!1631428 m!1964721))

(declare-fun m!1964723 () Bool)

(assert (=> b!1631429 m!1964723))

(assert (=> b!1631430 m!1964351))

(assert (=> b!1631430 m!1964351))

(assert (=> b!1631430 m!1964713))

(assert (=> b!1631430 m!1964713))

(assert (=> b!1631430 m!1964715))

(declare-fun m!1964725 () Bool)

(assert (=> b!1631430 m!1964725))

(assert (=> b!1631252 d!491468))

(declare-fun d!491496 () Bool)

(declare-fun res!729921 () Bool)

(declare-fun e!1046273 () Bool)

(assert (=> d!491496 (=> res!729921 e!1046273)))

(assert (=> d!491496 (= res!729921 (or (not ((_ is Cons!17908) tokens!457)) (not ((_ is Cons!17908) (t!149477 tokens!457)))))))

(assert (=> d!491496 (= (tokensListTwoByTwoPredicateSeparableList!477 thiss!17113 tokens!457 rules!1846) e!1046273)))

(declare-fun b!1631462 () Bool)

(declare-fun e!1046272 () Bool)

(assert (=> b!1631462 (= e!1046273 e!1046272)))

(declare-fun res!729920 () Bool)

(assert (=> b!1631462 (=> (not res!729920) (not e!1046272))))

(assert (=> b!1631462 (= res!729920 (separableTokensPredicate!726 thiss!17113 (h!23309 tokens!457) (h!23309 (t!149477 tokens!457)) rules!1846))))

(declare-fun lt!592345 () Unit!29131)

(declare-fun Unit!29133 () Unit!29131)

(assert (=> b!1631462 (= lt!592345 Unit!29133)))

(assert (=> b!1631462 (> (size!14315 (charsOf!1804 (h!23309 (t!149477 tokens!457)))) 0)))

(declare-fun lt!592346 () Unit!29131)

(declare-fun Unit!29134 () Unit!29131)

(assert (=> b!1631462 (= lt!592346 Unit!29134)))

(assert (=> b!1631462 (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 (t!149477 tokens!457)))))

(declare-fun lt!592344 () Unit!29131)

(declare-fun Unit!29135 () Unit!29131)

(assert (=> b!1631462 (= lt!592344 Unit!29135)))

(assert (=> b!1631462 (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 tokens!457))))

(declare-fun lt!592349 () Unit!29131)

(declare-fun lt!592347 () Unit!29131)

(assert (=> b!1631462 (= lt!592349 lt!592347)))

(assert (=> b!1631462 (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 (t!149477 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!570 (LexerInterface!2784 List!17977 List!17978 Token!5876) Unit!29131)

(assert (=> b!1631462 (= lt!592347 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!570 thiss!17113 rules!1846 tokens!457 (h!23309 (t!149477 tokens!457))))))

(declare-fun lt!592348 () Unit!29131)

(declare-fun lt!592343 () Unit!29131)

(assert (=> b!1631462 (= lt!592348 lt!592343)))

(assert (=> b!1631462 (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 tokens!457))))

(assert (=> b!1631462 (= lt!592343 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!570 thiss!17113 rules!1846 tokens!457 (h!23309 tokens!457)))))

(declare-fun b!1631463 () Bool)

(assert (=> b!1631463 (= e!1046272 (tokensListTwoByTwoPredicateSeparableList!477 thiss!17113 (Cons!17908 (h!23309 (t!149477 tokens!457)) (t!149477 (t!149477 tokens!457))) rules!1846))))

(assert (= (and d!491496 (not res!729921)) b!1631462))

(assert (= (and b!1631462 res!729920) b!1631463))

(declare-fun m!1964801 () Bool)

(assert (=> b!1631462 m!1964801))

(assert (=> b!1631462 m!1964267))

(assert (=> b!1631462 m!1964291))

(declare-fun m!1964803 () Bool)

(assert (=> b!1631462 m!1964803))

(assert (=> b!1631462 m!1964291))

(declare-fun m!1964805 () Bool)

(assert (=> b!1631462 m!1964805))

(assert (=> b!1631462 m!1964255))

(declare-fun m!1964807 () Bool)

(assert (=> b!1631462 m!1964807))

(declare-fun m!1964809 () Bool)

(assert (=> b!1631463 m!1964809))

(assert (=> b!1631259 d!491496))

(declare-fun d!491512 () Bool)

(assert (=> d!491512 (= (isEmpty!10937 (_2!10155 lt!592149)) ((_ is Nil!17906) (_2!10155 lt!592149)))))

(assert (=> b!1631237 d!491512))

(declare-fun d!491516 () Bool)

(declare-fun e!1046280 () Bool)

(assert (=> d!491516 e!1046280))

(declare-fun res!729927 () Bool)

(assert (=> d!491516 (=> (not res!729927) (not e!1046280))))

(declare-fun lt!592357 () BalanceConc!11860)

(assert (=> d!491516 (= res!729927 (= (list!7043 lt!592357) (Cons!17906 (apply!4602 (charsOf!1804 (h!23309 (t!149477 tokens!457))) 0) Nil!17906)))))

(declare-fun singleton!680 (C!9140) BalanceConc!11860)

(assert (=> d!491516 (= lt!592357 (singleton!680 (apply!4602 (charsOf!1804 (h!23309 (t!149477 tokens!457))) 0)))))

(assert (=> d!491516 (= (singletonSeq!1588 (apply!4602 (charsOf!1804 (h!23309 (t!149477 tokens!457))) 0)) lt!592357)))

(declare-fun b!1631471 () Bool)

(declare-fun isBalanced!1800 (Conc!5958) Bool)

(assert (=> b!1631471 (= e!1046280 (isBalanced!1800 (c!265527 lt!592357)))))

(assert (= (and d!491516 res!729927) b!1631471))

(declare-fun m!1964819 () Bool)

(assert (=> d!491516 m!1964819))

(assert (=> d!491516 m!1964281))

(declare-fun m!1964821 () Bool)

(assert (=> d!491516 m!1964821))

(declare-fun m!1964823 () Bool)

(assert (=> b!1631471 m!1964823))

(assert (=> b!1631260 d!491516))

(declare-fun b!1631480 () Bool)

(declare-fun res!729939 () Bool)

(declare-fun e!1046283 () Bool)

(assert (=> b!1631480 (=> (not res!729939) (not e!1046283))))

(declare-fun ++!4781 (Conc!5958 Conc!5958) Conc!5958)

(assert (=> b!1631480 (= res!729939 (isBalanced!1800 (++!4781 (c!265527 lt!592159) (c!265527 lt!592168))))))

(declare-fun lt!592360 () BalanceConc!11860)

(declare-fun b!1631483 () Bool)

(assert (=> b!1631483 (= e!1046283 (= (list!7043 lt!592360) (++!4779 (list!7043 lt!592159) (list!7043 lt!592168))))))

(declare-fun b!1631481 () Bool)

(declare-fun res!729938 () Bool)

(assert (=> b!1631481 (=> (not res!729938) (not e!1046283))))

(declare-fun height!912 (Conc!5958) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1631481 (= res!729938 (<= (height!912 (++!4781 (c!265527 lt!592159) (c!265527 lt!592168))) (+ (max!0 (height!912 (c!265527 lt!592159)) (height!912 (c!265527 lt!592168))) 1)))))

(declare-fun d!491522 () Bool)

(assert (=> d!491522 e!1046283))

(declare-fun res!729937 () Bool)

(assert (=> d!491522 (=> (not res!729937) (not e!1046283))))

(declare-fun appendAssocInst!440 (Conc!5958 Conc!5958) Bool)

(assert (=> d!491522 (= res!729937 (appendAssocInst!440 (c!265527 lt!592159) (c!265527 lt!592168)))))

(assert (=> d!491522 (= lt!592360 (BalanceConc!11861 (++!4781 (c!265527 lt!592159) (c!265527 lt!592168))))))

(assert (=> d!491522 (= (++!4780 lt!592159 lt!592168) lt!592360)))

(declare-fun b!1631482 () Bool)

(declare-fun res!729936 () Bool)

(assert (=> b!1631482 (=> (not res!729936) (not e!1046283))))

(assert (=> b!1631482 (= res!729936 (>= (height!912 (++!4781 (c!265527 lt!592159) (c!265527 lt!592168))) (max!0 (height!912 (c!265527 lt!592159)) (height!912 (c!265527 lt!592168)))))))

(assert (= (and d!491522 res!729937) b!1631480))

(assert (= (and b!1631480 res!729939) b!1631481))

(assert (= (and b!1631481 res!729938) b!1631482))

(assert (= (and b!1631482 res!729936) b!1631483))

(declare-fun m!1964825 () Bool)

(assert (=> b!1631480 m!1964825))

(assert (=> b!1631480 m!1964825))

(declare-fun m!1964827 () Bool)

(assert (=> b!1631480 m!1964827))

(declare-fun m!1964829 () Bool)

(assert (=> b!1631482 m!1964829))

(declare-fun m!1964831 () Bool)

(assert (=> b!1631482 m!1964831))

(declare-fun m!1964833 () Bool)

(assert (=> b!1631482 m!1964833))

(assert (=> b!1631482 m!1964825))

(assert (=> b!1631482 m!1964825))

(declare-fun m!1964835 () Bool)

(assert (=> b!1631482 m!1964835))

(assert (=> b!1631482 m!1964829))

(assert (=> b!1631482 m!1964831))

(assert (=> b!1631481 m!1964829))

(assert (=> b!1631481 m!1964831))

(assert (=> b!1631481 m!1964833))

(assert (=> b!1631481 m!1964825))

(assert (=> b!1631481 m!1964825))

(assert (=> b!1631481 m!1964835))

(assert (=> b!1631481 m!1964829))

(assert (=> b!1631481 m!1964831))

(declare-fun m!1964837 () Bool)

(assert (=> b!1631483 m!1964837))

(assert (=> b!1631483 m!1964321))

(assert (=> b!1631483 m!1964369))

(assert (=> b!1631483 m!1964321))

(assert (=> b!1631483 m!1964369))

(declare-fun m!1964839 () Bool)

(assert (=> b!1631483 m!1964839))

(declare-fun m!1964841 () Bool)

(assert (=> d!491522 m!1964841))

(assert (=> d!491522 m!1964825))

(assert (=> b!1631260 d!491522))

(declare-fun d!491524 () Bool)

(declare-fun lt!592363 () Unit!29131)

(declare-fun lemma!244 (List!17977 LexerInterface!2784 List!17977) Unit!29131)

(assert (=> d!491524 (= lt!592363 (lemma!244 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67358 () Int)

(declare-datatypes ((List!17979 0))(
  ( (Nil!17909) (Cons!17909 (h!23310 Regex!4483) (t!149520 List!17979)) )
))
(declare-fun generalisedUnion!252 (List!17979) Regex!4483)

(declare-fun map!3701 (List!17977 Int) List!17979)

(assert (=> d!491524 (= (rulesRegex!545 thiss!17113 rules!1846) (generalisedUnion!252 (map!3701 rules!1846 lambda!67358)))))

(declare-fun bs!395166 () Bool)

(assert (= bs!395166 d!491524))

(declare-fun m!1964843 () Bool)

(assert (=> bs!395166 m!1964843))

(declare-fun m!1964845 () Bool)

(assert (=> bs!395166 m!1964845))

(assert (=> bs!395166 m!1964845))

(declare-fun m!1964847 () Bool)

(assert (=> bs!395166 m!1964847))

(assert (=> b!1631260 d!491524))

(declare-fun d!491526 () Bool)

(declare-fun lt!592366 () BalanceConc!11860)

(assert (=> d!491526 (= (list!7043 lt!592366) (originalCharacters!3969 (h!23309 (t!149477 tokens!457))))))

(declare-fun dynLambda!7986 (Int TokenValue!3245) BalanceConc!11860)

(assert (=> d!491526 (= lt!592366 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (value!99590 (h!23309 (t!149477 tokens!457)))))))

(assert (=> d!491526 (= (charsOf!1804 (h!23309 (t!149477 tokens!457))) lt!592366)))

(declare-fun b_lambda!51343 () Bool)

(assert (=> (not b_lambda!51343) (not d!491526)))

(declare-fun t!149488 () Bool)

(declare-fun tb!93659 () Bool)

(assert (=> (and b!1631233 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457)))))) t!149488) tb!93659))

(declare-fun b!1631488 () Bool)

(declare-fun e!1046286 () Bool)

(declare-fun tp!473596 () Bool)

(declare-fun inv!23279 (Conc!5958) Bool)

(assert (=> b!1631488 (= e!1046286 (and (inv!23279 (c!265527 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (value!99590 (h!23309 (t!149477 tokens!457)))))) tp!473596))))

(declare-fun result!112948 () Bool)

(declare-fun inv!23280 (BalanceConc!11860) Bool)

(assert (=> tb!93659 (= result!112948 (and (inv!23280 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (value!99590 (h!23309 (t!149477 tokens!457))))) e!1046286))))

(assert (= tb!93659 b!1631488))

(declare-fun m!1964849 () Bool)

(assert (=> b!1631488 m!1964849))

(declare-fun m!1964851 () Bool)

(assert (=> tb!93659 m!1964851))

(assert (=> d!491526 t!149488))

(declare-fun b_and!115697 () Bool)

(assert (= b_and!115687 (and (=> t!149488 result!112948) b_and!115697)))

(declare-fun tb!93661 () Bool)

(declare-fun t!149490 () Bool)

(assert (=> (and b!1631244 (= (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457)))))) t!149490) tb!93661))

(declare-fun result!112952 () Bool)

(assert (= result!112952 result!112948))

(assert (=> d!491526 t!149490))

(declare-fun b_and!115699 () Bool)

(assert (= b_and!115691 (and (=> t!149490 result!112952) b_and!115699)))

(declare-fun m!1964853 () Bool)

(assert (=> d!491526 m!1964853))

(declare-fun m!1964855 () Bool)

(assert (=> d!491526 m!1964855))

(assert (=> b!1631260 d!491526))

(declare-fun d!491528 () Bool)

(declare-fun lt!592388 () Bool)

(assert (=> d!491528 (= lt!592388 (prefixMatch!418 lt!592147 (list!7043 (++!4780 lt!592159 lt!592168))))))

(declare-datatypes ((Context!1744 0))(
  ( (Context!1745 (exprs!1372 List!17979)) )
))
(declare-fun prefixMatchZipperSequence!550 ((InoxSet Context!1744) BalanceConc!11860 Int) Bool)

(declare-fun focus!178 (Regex!4483) (InoxSet Context!1744))

(assert (=> d!491528 (= lt!592388 (prefixMatchZipperSequence!550 (focus!178 lt!592147) (++!4780 lt!592159 lt!592168) 0))))

(declare-fun lt!592392 () Unit!29131)

(declare-fun lt!592390 () Unit!29131)

(assert (=> d!491528 (= lt!592392 lt!592390)))

(declare-fun lt!592394 () List!17976)

(declare-fun lt!592396 () (InoxSet Context!1744))

(declare-fun prefixMatchZipper!157 ((InoxSet Context!1744) List!17976) Bool)

(assert (=> d!491528 (= (prefixMatch!418 lt!592147 lt!592394) (prefixMatchZipper!157 lt!592396 lt!592394))))

(declare-datatypes ((List!17980 0))(
  ( (Nil!17910) (Cons!17910 (h!23311 Context!1744) (t!149521 List!17980)) )
))
(declare-fun lt!592393 () List!17980)

(declare-fun prefixMatchZipperRegexEquiv!157 ((InoxSet Context!1744) List!17980 Regex!4483 List!17976) Unit!29131)

(assert (=> d!491528 (= lt!592390 (prefixMatchZipperRegexEquiv!157 lt!592396 lt!592393 lt!592147 lt!592394))))

(assert (=> d!491528 (= lt!592394 (list!7043 (++!4780 lt!592159 lt!592168)))))

(declare-fun toList!918 ((InoxSet Context!1744)) List!17980)

(assert (=> d!491528 (= lt!592393 (toList!918 (focus!178 lt!592147)))))

(assert (=> d!491528 (= lt!592396 (focus!178 lt!592147))))

(declare-fun lt!592391 () Unit!29131)

(declare-fun lt!592387 () Unit!29131)

(assert (=> d!491528 (= lt!592391 lt!592387)))

(declare-fun lt!592389 () Int)

(declare-fun lt!592395 () (InoxSet Context!1744))

(declare-fun dropList!618 (BalanceConc!11860 Int) List!17976)

(assert (=> d!491528 (= (prefixMatchZipper!157 lt!592395 (dropList!618 (++!4780 lt!592159 lt!592168) lt!592389)) (prefixMatchZipperSequence!550 lt!592395 (++!4780 lt!592159 lt!592168) lt!592389))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!157 ((InoxSet Context!1744) BalanceConc!11860 Int) Unit!29131)

(assert (=> d!491528 (= lt!592387 (lemmaprefixMatchZipperSequenceEquivalent!157 lt!592395 (++!4780 lt!592159 lt!592168) lt!592389))))

(assert (=> d!491528 (= lt!592389 0)))

(assert (=> d!491528 (= lt!592395 (focus!178 lt!592147))))

(declare-fun validRegex!1783 (Regex!4483) Bool)

(assert (=> d!491528 (validRegex!1783 lt!592147)))

(assert (=> d!491528 (= (prefixMatchZipperSequence!549 lt!592147 (++!4780 lt!592159 lt!592168)) lt!592388)))

(declare-fun bs!395167 () Bool)

(assert (= bs!395167 d!491528))

(declare-fun m!1964857 () Bool)

(assert (=> bs!395167 m!1964857))

(declare-fun m!1964859 () Bool)

(assert (=> bs!395167 m!1964859))

(declare-fun m!1964861 () Bool)

(assert (=> bs!395167 m!1964861))

(declare-fun m!1964863 () Bool)

(assert (=> bs!395167 m!1964863))

(declare-fun m!1964865 () Bool)

(assert (=> bs!395167 m!1964865))

(declare-fun m!1964867 () Bool)

(assert (=> bs!395167 m!1964867))

(assert (=> bs!395167 m!1964285))

(declare-fun m!1964869 () Bool)

(assert (=> bs!395167 m!1964869))

(assert (=> bs!395167 m!1964869))

(declare-fun m!1964871 () Bool)

(assert (=> bs!395167 m!1964871))

(declare-fun m!1964873 () Bool)

(assert (=> bs!395167 m!1964873))

(assert (=> bs!395167 m!1964285))

(declare-fun m!1964875 () Bool)

(assert (=> bs!395167 m!1964875))

(declare-fun m!1964877 () Bool)

(assert (=> bs!395167 m!1964877))

(assert (=> bs!395167 m!1964285))

(assert (=> bs!395167 m!1964863))

(assert (=> bs!395167 m!1964285))

(declare-fun m!1964879 () Bool)

(assert (=> bs!395167 m!1964879))

(assert (=> bs!395167 m!1964859))

(assert (=> bs!395167 m!1964285))

(declare-fun m!1964881 () Bool)

(assert (=> bs!395167 m!1964881))

(assert (=> bs!395167 m!1964859))

(assert (=> b!1631260 d!491528))

(declare-fun d!491530 () Bool)

(declare-fun lt!592399 () C!9140)

(declare-fun apply!4607 (List!17976 Int) C!9140)

(assert (=> d!491530 (= lt!592399 (apply!4607 (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457)))) 0))))

(declare-fun apply!4608 (Conc!5958 Int) C!9140)

(assert (=> d!491530 (= lt!592399 (apply!4608 (c!265527 (charsOf!1804 (h!23309 (t!149477 tokens!457)))) 0))))

(declare-fun e!1046289 () Bool)

(assert (=> d!491530 e!1046289))

(declare-fun res!729942 () Bool)

(assert (=> d!491530 (=> (not res!729942) (not e!1046289))))

(assert (=> d!491530 (= res!729942 (<= 0 0))))

(assert (=> d!491530 (= (apply!4602 (charsOf!1804 (h!23309 (t!149477 tokens!457))) 0) lt!592399)))

(declare-fun b!1631491 () Bool)

(assert (=> b!1631491 (= e!1046289 (< 0 (size!14315 (charsOf!1804 (h!23309 (t!149477 tokens!457))))))))

(assert (= (and d!491530 res!729942) b!1631491))

(assert (=> d!491530 m!1964291))

(declare-fun m!1964883 () Bool)

(assert (=> d!491530 m!1964883))

(assert (=> d!491530 m!1964883))

(declare-fun m!1964885 () Bool)

(assert (=> d!491530 m!1964885))

(declare-fun m!1964887 () Bool)

(assert (=> d!491530 m!1964887))

(assert (=> b!1631491 m!1964291))

(assert (=> b!1631491 m!1964803))

(assert (=> b!1631260 d!491530))

(declare-fun d!491532 () Bool)

(declare-fun lt!592402 () BalanceConc!11860)

(assert (=> d!491532 (= (list!7043 lt!592402) (printList!899 thiss!17113 (list!7044 (seqFromList!2060 tokens!457))))))

(assert (=> d!491532 (= lt!592402 (printTailRec!837 thiss!17113 (seqFromList!2060 tokens!457) 0 (BalanceConc!11861 Empty!5958)))))

(assert (=> d!491532 (= (print!1315 thiss!17113 (seqFromList!2060 tokens!457)) lt!592402)))

(declare-fun bs!395168 () Bool)

(assert (= bs!395168 d!491532))

(declare-fun m!1964889 () Bool)

(assert (=> bs!395168 m!1964889))

(assert (=> bs!395168 m!1964315))

(declare-fun m!1964891 () Bool)

(assert (=> bs!395168 m!1964891))

(assert (=> bs!395168 m!1964891))

(declare-fun m!1964893 () Bool)

(assert (=> bs!395168 m!1964893))

(assert (=> bs!395168 m!1964315))

(declare-fun m!1964895 () Bool)

(assert (=> bs!395168 m!1964895))

(assert (=> b!1631239 d!491532))

(declare-fun d!491534 () Bool)

(declare-fun lt!592403 () BalanceConc!11860)

(assert (=> d!491534 (= (list!7043 lt!592403) (printList!899 thiss!17113 (list!7044 lt!592154)))))

(assert (=> d!491534 (= lt!592403 (printTailRec!837 thiss!17113 lt!592154 0 (BalanceConc!11861 Empty!5958)))))

(assert (=> d!491534 (= (print!1315 thiss!17113 lt!592154) lt!592403)))

(declare-fun bs!395169 () Bool)

(assert (= bs!395169 d!491534))

(declare-fun m!1964897 () Bool)

(assert (=> bs!395169 m!1964897))

(assert (=> bs!395169 m!1964257))

(assert (=> bs!395169 m!1964257))

(declare-fun m!1964899 () Bool)

(assert (=> bs!395169 m!1964899))

(declare-fun m!1964901 () Bool)

(assert (=> bs!395169 m!1964901))

(assert (=> b!1631239 d!491534))

(declare-fun d!491536 () Bool)

(declare-fun e!1046290 () Bool)

(assert (=> d!491536 e!1046290))

(declare-fun res!729943 () Bool)

(assert (=> d!491536 (=> (not res!729943) (not e!1046290))))

(declare-fun lt!592404 () List!17976)

(assert (=> d!491536 (= res!729943 (= (content!2485 lt!592404) ((_ map or) (content!2485 lt!592164) (content!2485 lt!592157))))))

(declare-fun e!1046291 () List!17976)

(assert (=> d!491536 (= lt!592404 e!1046291)))

(declare-fun c!265575 () Bool)

(assert (=> d!491536 (= c!265575 ((_ is Nil!17906) lt!592164))))

(assert (=> d!491536 (= (++!4779 lt!592164 lt!592157) lt!592404)))

(declare-fun b!1631495 () Bool)

(assert (=> b!1631495 (= e!1046290 (or (not (= lt!592157 Nil!17906)) (= lt!592404 lt!592164)))))

(declare-fun b!1631492 () Bool)

(assert (=> b!1631492 (= e!1046291 lt!592157)))

(declare-fun b!1631494 () Bool)

(declare-fun res!729944 () Bool)

(assert (=> b!1631494 (=> (not res!729944) (not e!1046290))))

(assert (=> b!1631494 (= res!729944 (= (size!14314 lt!592404) (+ (size!14314 lt!592164) (size!14314 lt!592157))))))

(declare-fun b!1631493 () Bool)

(assert (=> b!1631493 (= e!1046291 (Cons!17906 (h!23307 lt!592164) (++!4779 (t!149475 lt!592164) lt!592157)))))

(assert (= (and d!491536 c!265575) b!1631492))

(assert (= (and d!491536 (not c!265575)) b!1631493))

(assert (= (and d!491536 res!729943) b!1631494))

(assert (= (and b!1631494 res!729944) b!1631495))

(declare-fun m!1964903 () Bool)

(assert (=> d!491536 m!1964903))

(assert (=> d!491536 m!1964435))

(declare-fun m!1964905 () Bool)

(assert (=> d!491536 m!1964905))

(declare-fun m!1964907 () Bool)

(assert (=> b!1631494 m!1964907))

(assert (=> b!1631494 m!1964441))

(declare-fun m!1964909 () Bool)

(assert (=> b!1631494 m!1964909))

(declare-fun m!1964911 () Bool)

(assert (=> b!1631493 m!1964911))

(assert (=> b!1631239 d!491536))

(declare-fun d!491538 () Bool)

(assert (=> d!491538 (= (list!7043 lt!592146) (list!7046 (c!265527 lt!592146)))))

(declare-fun bs!395170 () Bool)

(assert (= bs!395170 d!491538))

(declare-fun m!1964913 () Bool)

(assert (=> bs!395170 m!1964913))

(assert (=> b!1631239 d!491538))

(declare-fun d!491540 () Bool)

(declare-fun fromListB!906 (List!17978) BalanceConc!11862)

(assert (=> d!491540 (= (seqFromList!2060 tokens!457) (fromListB!906 tokens!457))))

(declare-fun bs!395171 () Bool)

(assert (= bs!395171 d!491540))

(declare-fun m!1964915 () Bool)

(assert (=> bs!395171 m!1964915))

(assert (=> b!1631239 d!491540))

(declare-fun d!491542 () Bool)

(assert (=> d!491542 (= (list!7043 lt!592148) (list!7046 (c!265527 lt!592148)))))

(declare-fun bs!395172 () Bool)

(assert (= bs!395172 d!491542))

(declare-fun m!1964917 () Bool)

(assert (=> bs!395172 m!1964917))

(assert (=> b!1631239 d!491542))

(declare-fun d!491544 () Bool)

(assert (=> d!491544 (= (seqFromList!2060 (t!149477 tokens!457)) (fromListB!906 (t!149477 tokens!457)))))

(declare-fun bs!395173 () Bool)

(assert (= bs!395173 d!491544))

(declare-fun m!1964919 () Bool)

(assert (=> bs!395173 m!1964919))

(assert (=> b!1631239 d!491544))

(declare-fun b!1631496 () Bool)

(declare-fun e!1046292 () Bool)

(declare-fun lt!592405 () tuple2!17510)

(assert (=> b!1631496 (= e!1046292 (not (isEmpty!10938 (_1!10157 lt!592405))))))

(declare-fun b!1631497 () Bool)

(declare-fun e!1046293 () Bool)

(assert (=> b!1631497 (= e!1046293 (= (_2!10157 lt!592405) lt!592146))))

(declare-fun b!1631498 () Bool)

(assert (=> b!1631498 (= e!1046293 e!1046292)))

(declare-fun res!729947 () Bool)

(assert (=> b!1631498 (= res!729947 (< (size!14315 (_2!10157 lt!592405)) (size!14315 lt!592146)))))

(assert (=> b!1631498 (=> (not res!729947) (not e!1046292))))

(declare-fun b!1631499 () Bool)

(declare-fun res!729945 () Bool)

(declare-fun e!1046294 () Bool)

(assert (=> b!1631499 (=> (not res!729945) (not e!1046294))))

(assert (=> b!1631499 (= res!729945 (= (list!7044 (_1!10157 lt!592405)) (_1!10159 (lexList!835 thiss!17113 rules!1846 (list!7043 lt!592146)))))))

(declare-fun b!1631500 () Bool)

(assert (=> b!1631500 (= e!1046294 (= (list!7043 (_2!10157 lt!592405)) (_2!10159 (lexList!835 thiss!17113 rules!1846 (list!7043 lt!592146)))))))

(declare-fun d!491546 () Bool)

(assert (=> d!491546 e!1046294))

(declare-fun res!729946 () Bool)

(assert (=> d!491546 (=> (not res!729946) (not e!1046294))))

(assert (=> d!491546 (= res!729946 e!1046293)))

(declare-fun c!265576 () Bool)

(assert (=> d!491546 (= c!265576 (> (size!14316 (_1!10157 lt!592405)) 0))))

(assert (=> d!491546 (= lt!592405 (lexTailRecV2!558 thiss!17113 rules!1846 lt!592146 (BalanceConc!11861 Empty!5958) lt!592146 (BalanceConc!11863 Empty!5959)))))

(assert (=> d!491546 (= (lex!1268 thiss!17113 rules!1846 lt!592146) lt!592405)))

(assert (= (and d!491546 c!265576) b!1631498))

(assert (= (and d!491546 (not c!265576)) b!1631497))

(assert (= (and b!1631498 res!729947) b!1631496))

(assert (= (and d!491546 res!729946) b!1631499))

(assert (= (and b!1631499 res!729945) b!1631500))

(declare-fun m!1964921 () Bool)

(assert (=> b!1631498 m!1964921))

(declare-fun m!1964923 () Bool)

(assert (=> b!1631498 m!1964923))

(declare-fun m!1964925 () Bool)

(assert (=> b!1631496 m!1964925))

(declare-fun m!1964927 () Bool)

(assert (=> d!491546 m!1964927))

(declare-fun m!1964929 () Bool)

(assert (=> d!491546 m!1964929))

(declare-fun m!1964931 () Bool)

(assert (=> b!1631499 m!1964931))

(assert (=> b!1631499 m!1964323))

(assert (=> b!1631499 m!1964323))

(declare-fun m!1964933 () Bool)

(assert (=> b!1631499 m!1964933))

(declare-fun m!1964935 () Bool)

(assert (=> b!1631500 m!1964935))

(assert (=> b!1631500 m!1964323))

(assert (=> b!1631500 m!1964323))

(assert (=> b!1631500 m!1964933))

(assert (=> b!1631239 d!491546))

(declare-fun d!491548 () Bool)

(assert (=> d!491548 (= (list!7043 lt!592159) (list!7046 (c!265527 lt!592159)))))

(declare-fun bs!395174 () Bool)

(assert (= bs!395174 d!491548))

(declare-fun m!1964937 () Bool)

(assert (=> bs!395174 m!1964937))

(assert (=> b!1631239 d!491548))

(declare-fun d!491550 () Bool)

(declare-fun lt!592406 () BalanceConc!11860)

(assert (=> d!491550 (= (list!7043 lt!592406) (originalCharacters!3969 (h!23309 tokens!457)))))

(assert (=> d!491550 (= lt!592406 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (value!99590 (h!23309 tokens!457))))))

(assert (=> d!491550 (= (charsOf!1804 (h!23309 tokens!457)) lt!592406)))

(declare-fun b_lambda!51345 () Bool)

(assert (=> (not b_lambda!51345) (not d!491550)))

(declare-fun t!149492 () Bool)

(declare-fun tb!93663 () Bool)

(assert (=> (and b!1631233 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457))))) t!149492) tb!93663))

(declare-fun b!1631501 () Bool)

(declare-fun e!1046295 () Bool)

(declare-fun tp!473597 () Bool)

(assert (=> b!1631501 (= e!1046295 (and (inv!23279 (c!265527 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (value!99590 (h!23309 tokens!457))))) tp!473597))))

(declare-fun result!112954 () Bool)

(assert (=> tb!93663 (= result!112954 (and (inv!23280 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (value!99590 (h!23309 tokens!457)))) e!1046295))))

(assert (= tb!93663 b!1631501))

(declare-fun m!1964939 () Bool)

(assert (=> b!1631501 m!1964939))

(declare-fun m!1964941 () Bool)

(assert (=> tb!93663 m!1964941))

(assert (=> d!491550 t!149492))

(declare-fun b_and!115701 () Bool)

(assert (= b_and!115697 (and (=> t!149492 result!112954) b_and!115701)))

(declare-fun tb!93665 () Bool)

(declare-fun t!149494 () Bool)

(assert (=> (and b!1631244 (= (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457))))) t!149494) tb!93665))

(declare-fun result!112956 () Bool)

(assert (= result!112956 result!112954))

(assert (=> d!491550 t!149494))

(declare-fun b_and!115703 () Bool)

(assert (= b_and!115699 (and (=> t!149494 result!112956) b_and!115703)))

(declare-fun m!1964943 () Bool)

(assert (=> d!491550 m!1964943))

(declare-fun m!1964945 () Bool)

(assert (=> d!491550 m!1964945))

(assert (=> b!1631239 d!491550))

(declare-fun d!491552 () Bool)

(declare-fun isEmpty!10948 (Option!3340) Bool)

(assert (=> d!491552 (= (isDefined!2707 (maxPrefixZipperSequence!679 thiss!17113 rules!1846 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457))))) (not (isEmpty!10948 (maxPrefixZipperSequence!679 thiss!17113 rules!1846 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))))

(declare-fun bs!395175 () Bool)

(assert (= bs!395175 d!491552))

(assert (=> bs!395175 m!1964337))

(declare-fun m!1964947 () Bool)

(assert (=> bs!395175 m!1964947))

(assert (=> b!1631238 d!491552))

(declare-fun b!1631522 () Bool)

(declare-fun e!1046317 () Bool)

(declare-fun e!1046312 () Bool)

(assert (=> b!1631522 (= e!1046317 e!1046312)))

(declare-fun res!729967 () Bool)

(assert (=> b!1631522 (=> (not res!729967) (not e!1046312))))

(declare-fun lt!592424 () Option!3340)

(declare-fun get!5174 (Option!3340) tuple2!17508)

(assert (=> b!1631522 (= res!729967 (= (_1!10156 (get!5174 lt!592424)) (_1!10155 (get!5173 (maxPrefix!1348 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))))))

(declare-fun b!1631523 () Bool)

(declare-fun e!1046314 () Bool)

(assert (=> b!1631523 (= e!1046314 e!1046317)))

(declare-fun res!729965 () Bool)

(assert (=> b!1631523 (=> res!729965 e!1046317)))

(assert (=> b!1631523 (= res!729965 (not (isDefined!2707 lt!592424)))))

(declare-fun d!491554 () Bool)

(assert (=> d!491554 e!1046314))

(declare-fun res!729966 () Bool)

(assert (=> d!491554 (=> (not res!729966) (not e!1046314))))

(assert (=> d!491554 (= res!729966 (= (isDefined!2707 lt!592424) (isDefined!2706 (maxPrefixZipper!312 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457))))))))))

(declare-fun e!1046315 () Option!3340)

(assert (=> d!491554 (= lt!592424 e!1046315)))

(declare-fun c!265579 () Bool)

(assert (=> d!491554 (= c!265579 (and ((_ is Cons!17907) rules!1846) ((_ is Nil!17907) (t!149476 rules!1846))))))

(declare-fun lt!592429 () Unit!29131)

(declare-fun lt!592427 () Unit!29131)

(assert (=> d!491554 (= lt!592429 lt!592427)))

(declare-fun lt!592428 () List!17976)

(declare-fun lt!592423 () List!17976)

(assert (=> d!491554 (isPrefix!1415 lt!592428 lt!592423)))

(assert (=> d!491554 (= lt!592427 (lemmaIsPrefixRefl!965 lt!592428 lt!592423))))

(assert (=> d!491554 (= lt!592423 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))

(assert (=> d!491554 (= lt!592428 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))

(assert (=> d!491554 (rulesValidInductive!979 thiss!17113 rules!1846)))

(assert (=> d!491554 (= (maxPrefixZipperSequence!679 thiss!17113 rules!1846 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))) lt!592424)))

(declare-fun b!1631524 () Bool)

(assert (=> b!1631524 (= e!1046312 (= (list!7043 (_2!10156 (get!5174 lt!592424))) (_2!10155 (get!5173 (maxPrefix!1348 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))))))

(declare-fun b!1631525 () Bool)

(declare-fun call!105534 () Option!3340)

(assert (=> b!1631525 (= e!1046315 call!105534)))

(declare-fun b!1631526 () Bool)

(declare-fun res!729969 () Bool)

(assert (=> b!1631526 (=> (not res!729969) (not e!1046314))))

(declare-fun e!1046316 () Bool)

(assert (=> b!1631526 (= res!729969 e!1046316)))

(declare-fun res!729964 () Bool)

(assert (=> b!1631526 (=> res!729964 e!1046316)))

(assert (=> b!1631526 (= res!729964 (not (isDefined!2707 lt!592424)))))

(declare-fun bm!105529 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!321 (LexerInterface!2784 Rule!6110 BalanceConc!11860) Option!3340)

(assert (=> bm!105529 (= call!105534 (maxPrefixOneRuleZipperSequence!321 thiss!17113 (h!23308 rules!1846) (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))

(declare-fun e!1046313 () Bool)

(declare-fun b!1631527 () Bool)

(assert (=> b!1631527 (= e!1046313 (= (list!7043 (_2!10156 (get!5174 lt!592424))) (_2!10155 (get!5173 (maxPrefixZipper!312 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))))))

(declare-fun b!1631528 () Bool)

(declare-fun lt!592425 () Option!3340)

(declare-fun lt!592426 () Option!3340)

(assert (=> b!1631528 (= e!1046315 (ite (and ((_ is None!3339) lt!592425) ((_ is None!3339) lt!592426)) None!3339 (ite ((_ is None!3339) lt!592426) lt!592425 (ite ((_ is None!3339) lt!592425) lt!592426 (ite (>= (size!14310 (_1!10156 (v!24398 lt!592425))) (size!14310 (_1!10156 (v!24398 lt!592426)))) lt!592425 lt!592426)))))))

(assert (=> b!1631528 (= lt!592425 call!105534)))

(assert (=> b!1631528 (= lt!592426 (maxPrefixZipperSequence!679 thiss!17113 (t!149476 rules!1846) (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))

(declare-fun b!1631529 () Bool)

(assert (=> b!1631529 (= e!1046316 e!1046313)))

(declare-fun res!729968 () Bool)

(assert (=> b!1631529 (=> (not res!729968) (not e!1046313))))

(assert (=> b!1631529 (= res!729968 (= (_1!10156 (get!5174 lt!592424)) (_1!10155 (get!5173 (maxPrefixZipper!312 thiss!17113 rules!1846 (list!7043 (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457)))))))))))

(assert (= (and d!491554 c!265579) b!1631525))

(assert (= (and d!491554 (not c!265579)) b!1631528))

(assert (= (or b!1631525 b!1631528) bm!105529))

(assert (= (and d!491554 res!729966) b!1631526))

(assert (= (and b!1631526 (not res!729964)) b!1631529))

(assert (= (and b!1631529 res!729968) b!1631527))

(assert (= (and b!1631526 res!729969) b!1631523))

(assert (= (and b!1631523 (not res!729965)) b!1631522))

(assert (= (and b!1631522 res!729967) b!1631524))

(declare-fun m!1964949 () Bool)

(assert (=> b!1631522 m!1964949))

(assert (=> b!1631522 m!1964335))

(declare-fun m!1964951 () Bool)

(assert (=> b!1631522 m!1964951))

(assert (=> b!1631522 m!1964951))

(declare-fun m!1964953 () Bool)

(assert (=> b!1631522 m!1964953))

(assert (=> b!1631522 m!1964953))

(declare-fun m!1964955 () Bool)

(assert (=> b!1631522 m!1964955))

(assert (=> bm!105529 m!1964335))

(declare-fun m!1964957 () Bool)

(assert (=> bm!105529 m!1964957))

(declare-fun m!1964959 () Bool)

(assert (=> b!1631523 m!1964959))

(assert (=> b!1631524 m!1964953))

(assert (=> b!1631524 m!1964955))

(assert (=> b!1631524 m!1964949))

(declare-fun m!1964961 () Bool)

(assert (=> b!1631524 m!1964961))

(assert (=> b!1631524 m!1964951))

(assert (=> b!1631524 m!1964953))

(assert (=> b!1631524 m!1964335))

(assert (=> b!1631524 m!1964951))

(assert (=> b!1631526 m!1964959))

(assert (=> b!1631527 m!1964949))

(assert (=> b!1631527 m!1964961))

(assert (=> b!1631527 m!1964335))

(assert (=> b!1631527 m!1964951))

(declare-fun m!1964963 () Bool)

(assert (=> b!1631527 m!1964963))

(declare-fun m!1964965 () Bool)

(assert (=> b!1631527 m!1964965))

(assert (=> b!1631527 m!1964951))

(assert (=> b!1631527 m!1964963))

(assert (=> b!1631528 m!1964335))

(declare-fun m!1964967 () Bool)

(assert (=> b!1631528 m!1964967))

(assert (=> d!491554 m!1964959))

(declare-fun m!1964969 () Bool)

(assert (=> d!491554 m!1964969))

(declare-fun m!1964971 () Bool)

(assert (=> d!491554 m!1964971))

(assert (=> d!491554 m!1964963))

(declare-fun m!1964973 () Bool)

(assert (=> d!491554 m!1964973))

(assert (=> d!491554 m!1964335))

(assert (=> d!491554 m!1964951))

(assert (=> d!491554 m!1964951))

(assert (=> d!491554 m!1964963))

(assert (=> d!491554 m!1964415))

(assert (=> b!1631529 m!1964949))

(assert (=> b!1631529 m!1964335))

(assert (=> b!1631529 m!1964951))

(assert (=> b!1631529 m!1964951))

(assert (=> b!1631529 m!1964963))

(assert (=> b!1631529 m!1964963))

(assert (=> b!1631529 m!1964965))

(assert (=> b!1631238 d!491554))

(declare-fun d!491556 () Bool)

(assert (=> d!491556 (= (seqFromList!2059 (originalCharacters!3969 (h!23309 tokens!457))) (fromListB!905 (originalCharacters!3969 (h!23309 tokens!457))))))

(declare-fun bs!395176 () Bool)

(assert (= bs!395176 d!491556))

(declare-fun m!1964975 () Bool)

(assert (=> bs!395176 m!1964975))

(assert (=> b!1631238 d!491556))

(declare-fun d!491558 () Bool)

(declare-fun lt!592432 () C!9140)

(assert (=> d!491558 (= lt!592432 (head!3479 (list!7043 lt!592146)))))

(declare-fun head!3481 (Conc!5958) C!9140)

(assert (=> d!491558 (= lt!592432 (head!3481 (c!265527 lt!592146)))))

(assert (=> d!491558 (not (isEmpty!10947 lt!592146))))

(assert (=> d!491558 (= (head!3478 lt!592146) lt!592432)))

(declare-fun bs!395177 () Bool)

(assert (= bs!395177 d!491558))

(assert (=> bs!395177 m!1964323))

(assert (=> bs!395177 m!1964323))

(declare-fun m!1964977 () Bool)

(assert (=> bs!395177 m!1964977))

(declare-fun m!1964979 () Bool)

(assert (=> bs!395177 m!1964979))

(declare-fun m!1964981 () Bool)

(assert (=> bs!395177 m!1964981))

(assert (=> b!1631238 d!491558))

(declare-fun bm!105532 () Bool)

(declare-fun call!105537 () Bool)

(assert (=> bm!105532 (= call!105537 (isEmpty!10937 lt!592164))))

(declare-fun b!1631558 () Bool)

(declare-fun e!1046336 () Bool)

(declare-fun lt!592435 () Bool)

(assert (=> b!1631558 (= e!1046336 (not lt!592435))))

(declare-fun b!1631559 () Bool)

(declare-fun res!729993 () Bool)

(declare-fun e!1046338 () Bool)

(assert (=> b!1631559 (=> res!729993 e!1046338)))

(assert (=> b!1631559 (= res!729993 (not ((_ is ElementMatch!4483) (regex!3155 (rule!4989 (h!23309 tokens!457))))))))

(assert (=> b!1631559 (= e!1046336 e!1046338)))

(declare-fun b!1631560 () Bool)

(declare-fun e!1046335 () Bool)

(assert (=> b!1631560 (= e!1046335 (not (= (head!3479 lt!592164) (c!265528 (regex!3155 (rule!4989 (h!23309 tokens!457)))))))))

(declare-fun b!1631561 () Bool)

(declare-fun e!1046332 () Bool)

(assert (=> b!1631561 (= e!1046332 (= (head!3479 lt!592164) (c!265528 (regex!3155 (rule!4989 (h!23309 tokens!457))))))))

(declare-fun b!1631562 () Bool)

(declare-fun e!1046333 () Bool)

(assert (=> b!1631562 (= e!1046338 e!1046333)))

(declare-fun res!729988 () Bool)

(assert (=> b!1631562 (=> (not res!729988) (not e!1046333))))

(assert (=> b!1631562 (= res!729988 (not lt!592435))))

(declare-fun b!1631563 () Bool)

(declare-fun res!729991 () Bool)

(assert (=> b!1631563 (=> (not res!729991) (not e!1046332))))

(assert (=> b!1631563 (= res!729991 (not call!105537))))

(declare-fun b!1631564 () Bool)

(declare-fun e!1046337 () Bool)

(assert (=> b!1631564 (= e!1046337 (matchR!1982 (derivativeStep!1088 (regex!3155 (rule!4989 (h!23309 tokens!457))) (head!3479 lt!592164)) (tail!2376 lt!592164)))))

(declare-fun b!1631565 () Bool)

(declare-fun e!1046334 () Bool)

(assert (=> b!1631565 (= e!1046334 (= lt!592435 call!105537))))

(declare-fun b!1631566 () Bool)

(assert (=> b!1631566 (= e!1046334 e!1046336)))

(declare-fun c!265588 () Bool)

(assert (=> b!1631566 (= c!265588 ((_ is EmptyLang!4483) (regex!3155 (rule!4989 (h!23309 tokens!457)))))))

(declare-fun b!1631567 () Bool)

(declare-fun res!729989 () Bool)

(assert (=> b!1631567 (=> res!729989 e!1046335)))

(assert (=> b!1631567 (= res!729989 (not (isEmpty!10937 (tail!2376 lt!592164))))))

(declare-fun b!1631568 () Bool)

(declare-fun nullable!1322 (Regex!4483) Bool)

(assert (=> b!1631568 (= e!1046337 (nullable!1322 (regex!3155 (rule!4989 (h!23309 tokens!457)))))))

(declare-fun b!1631569 () Bool)

(declare-fun res!729987 () Bool)

(assert (=> b!1631569 (=> res!729987 e!1046338)))

(assert (=> b!1631569 (= res!729987 e!1046332)))

(declare-fun res!729986 () Bool)

(assert (=> b!1631569 (=> (not res!729986) (not e!1046332))))

(assert (=> b!1631569 (= res!729986 lt!592435)))

(declare-fun d!491560 () Bool)

(assert (=> d!491560 e!1046334))

(declare-fun c!265587 () Bool)

(assert (=> d!491560 (= c!265587 ((_ is EmptyExpr!4483) (regex!3155 (rule!4989 (h!23309 tokens!457)))))))

(assert (=> d!491560 (= lt!592435 e!1046337)))

(declare-fun c!265586 () Bool)

(assert (=> d!491560 (= c!265586 (isEmpty!10937 lt!592164))))

(assert (=> d!491560 (validRegex!1783 (regex!3155 (rule!4989 (h!23309 tokens!457))))))

(assert (=> d!491560 (= (matchR!1982 (regex!3155 (rule!4989 (h!23309 tokens!457))) lt!592164) lt!592435)))

(declare-fun b!1631570 () Bool)

(declare-fun res!729990 () Bool)

(assert (=> b!1631570 (=> (not res!729990) (not e!1046332))))

(assert (=> b!1631570 (= res!729990 (isEmpty!10937 (tail!2376 lt!592164)))))

(declare-fun b!1631571 () Bool)

(assert (=> b!1631571 (= e!1046333 e!1046335)))

(declare-fun res!729992 () Bool)

(assert (=> b!1631571 (=> res!729992 e!1046335)))

(assert (=> b!1631571 (= res!729992 call!105537)))

(assert (= (and d!491560 c!265586) b!1631568))

(assert (= (and d!491560 (not c!265586)) b!1631564))

(assert (= (and d!491560 c!265587) b!1631565))

(assert (= (and d!491560 (not c!265587)) b!1631566))

(assert (= (and b!1631566 c!265588) b!1631558))

(assert (= (and b!1631566 (not c!265588)) b!1631559))

(assert (= (and b!1631559 (not res!729993)) b!1631569))

(assert (= (and b!1631569 res!729986) b!1631563))

(assert (= (and b!1631563 res!729991) b!1631570))

(assert (= (and b!1631570 res!729990) b!1631561))

(assert (= (and b!1631569 (not res!729987)) b!1631562))

(assert (= (and b!1631562 res!729988) b!1631571))

(assert (= (and b!1631571 (not res!729992)) b!1631567))

(assert (= (and b!1631567 (not res!729989)) b!1631560))

(assert (= (or b!1631565 b!1631563 b!1631571) bm!105532))

(declare-fun m!1964983 () Bool)

(assert (=> b!1631561 m!1964983))

(declare-fun m!1964985 () Bool)

(assert (=> bm!105532 m!1964985))

(assert (=> b!1631564 m!1964983))

(assert (=> b!1631564 m!1964983))

(declare-fun m!1964987 () Bool)

(assert (=> b!1631564 m!1964987))

(declare-fun m!1964989 () Bool)

(assert (=> b!1631564 m!1964989))

(assert (=> b!1631564 m!1964987))

(assert (=> b!1631564 m!1964989))

(declare-fun m!1964991 () Bool)

(assert (=> b!1631564 m!1964991))

(declare-fun m!1964993 () Bool)

(assert (=> b!1631568 m!1964993))

(assert (=> b!1631570 m!1964989))

(assert (=> b!1631570 m!1964989))

(declare-fun m!1964995 () Bool)

(assert (=> b!1631570 m!1964995))

(assert (=> b!1631560 m!1964983))

(assert (=> b!1631567 m!1964989))

(assert (=> b!1631567 m!1964989))

(assert (=> b!1631567 m!1964995))

(assert (=> d!491560 m!1964985))

(declare-fun m!1964997 () Bool)

(assert (=> d!491560 m!1964997))

(assert (=> b!1631256 d!491560))

(declare-fun d!491562 () Bool)

(assert (=> d!491562 (= (inv!23274 (tag!3435 (rule!4989 (h!23309 tokens!457)))) (= (mod (str.len (value!99589 (tag!3435 (rule!4989 (h!23309 tokens!457))))) 2) 0))))

(assert (=> b!1631235 d!491562))

(declare-fun d!491564 () Bool)

(declare-fun res!729994 () Bool)

(declare-fun e!1046339 () Bool)

(assert (=> d!491564 (=> (not res!729994) (not e!1046339))))

(assert (=> d!491564 (= res!729994 (semiInverseModEq!1205 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (toValue!4586 (transformation!3155 (rule!4989 (h!23309 tokens!457))))))))

(assert (=> d!491564 (= (inv!23277 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) e!1046339)))

(declare-fun b!1631572 () Bool)

(assert (=> b!1631572 (= e!1046339 (equivClasses!1146 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (toValue!4586 (transformation!3155 (rule!4989 (h!23309 tokens!457))))))))

(assert (= (and d!491564 res!729994) b!1631572))

(declare-fun m!1964999 () Bool)

(assert (=> d!491564 m!1964999))

(declare-fun m!1965001 () Bool)

(assert (=> b!1631572 m!1965001))

(assert (=> b!1631235 d!491564))

(declare-fun d!491566 () Bool)

(declare-fun c!265589 () Bool)

(assert (=> d!491566 (= c!265589 (isEmpty!10937 (++!4779 (originalCharacters!3969 (h!23309 tokens!457)) lt!592170)))))

(declare-fun e!1046340 () Bool)

(assert (=> d!491566 (= (prefixMatch!418 lt!592147 (++!4779 (originalCharacters!3969 (h!23309 tokens!457)) lt!592170)) e!1046340)))

(declare-fun b!1631573 () Bool)

(assert (=> b!1631573 (= e!1046340 (not (lostCause!444 lt!592147)))))

(declare-fun b!1631574 () Bool)

(assert (=> b!1631574 (= e!1046340 (prefixMatch!418 (derivativeStep!1088 lt!592147 (head!3479 (++!4779 (originalCharacters!3969 (h!23309 tokens!457)) lt!592170))) (tail!2376 (++!4779 (originalCharacters!3969 (h!23309 tokens!457)) lt!592170))))))

(assert (= (and d!491566 c!265589) b!1631573))

(assert (= (and d!491566 (not c!265589)) b!1631574))

(assert (=> d!491566 m!1964299))

(declare-fun m!1965003 () Bool)

(assert (=> d!491566 m!1965003))

(assert (=> b!1631573 m!1964423))

(assert (=> b!1631574 m!1964299))

(declare-fun m!1965005 () Bool)

(assert (=> b!1631574 m!1965005))

(assert (=> b!1631574 m!1965005))

(declare-fun m!1965007 () Bool)

(assert (=> b!1631574 m!1965007))

(assert (=> b!1631574 m!1964299))

(declare-fun m!1965009 () Bool)

(assert (=> b!1631574 m!1965009))

(assert (=> b!1631574 m!1965007))

(assert (=> b!1631574 m!1965009))

(declare-fun m!1965011 () Bool)

(assert (=> b!1631574 m!1965011))

(assert (=> b!1631234 d!491566))

(declare-fun d!491568 () Bool)

(assert (=> d!491568 (= (isDefined!2706 (maxPrefix!1348 thiss!17113 rules!1846 (originalCharacters!3969 (h!23309 tokens!457)))) (not (isEmpty!10943 (maxPrefix!1348 thiss!17113 rules!1846 (originalCharacters!3969 (h!23309 tokens!457))))))))

(declare-fun bs!395178 () Bool)

(assert (= bs!395178 d!491568))

(assert (=> bs!395178 m!1964293))

(declare-fun m!1965013 () Bool)

(assert (=> bs!395178 m!1965013))

(assert (=> b!1631234 d!491568))

(declare-fun d!491570 () Bool)

(assert (=> d!491570 (= (get!5173 lt!592156) (v!24397 lt!592156))))

(assert (=> b!1631234 d!491570))

(declare-fun d!491572 () Bool)

(declare-fun e!1046341 () Bool)

(assert (=> d!491572 e!1046341))

(declare-fun res!729995 () Bool)

(assert (=> d!491572 (=> (not res!729995) (not e!1046341))))

(declare-fun lt!592436 () List!17976)

(assert (=> d!491572 (= res!729995 (= (content!2485 lt!592436) ((_ map or) (content!2485 (originalCharacters!3969 (h!23309 tokens!457))) (content!2485 lt!592170))))))

(declare-fun e!1046342 () List!17976)

(assert (=> d!491572 (= lt!592436 e!1046342)))

(declare-fun c!265590 () Bool)

(assert (=> d!491572 (= c!265590 ((_ is Nil!17906) (originalCharacters!3969 (h!23309 tokens!457))))))

(assert (=> d!491572 (= (++!4779 (originalCharacters!3969 (h!23309 tokens!457)) lt!592170) lt!592436)))

(declare-fun b!1631578 () Bool)

(assert (=> b!1631578 (= e!1046341 (or (not (= lt!592170 Nil!17906)) (= lt!592436 (originalCharacters!3969 (h!23309 tokens!457)))))))

(declare-fun b!1631575 () Bool)

(assert (=> b!1631575 (= e!1046342 lt!592170)))

(declare-fun b!1631577 () Bool)

(declare-fun res!729996 () Bool)

(assert (=> b!1631577 (=> (not res!729996) (not e!1046341))))

(assert (=> b!1631577 (= res!729996 (= (size!14314 lt!592436) (+ (size!14314 (originalCharacters!3969 (h!23309 tokens!457))) (size!14314 lt!592170))))))

(declare-fun b!1631576 () Bool)

(assert (=> b!1631576 (= e!1046342 (Cons!17906 (h!23307 (originalCharacters!3969 (h!23309 tokens!457))) (++!4779 (t!149475 (originalCharacters!3969 (h!23309 tokens!457))) lt!592170)))))

(assert (= (and d!491572 c!265590) b!1631575))

(assert (= (and d!491572 (not c!265590)) b!1631576))

(assert (= (and d!491572 res!729995) b!1631577))

(assert (= (and b!1631577 res!729996) b!1631578))

(declare-fun m!1965015 () Bool)

(assert (=> d!491572 m!1965015))

(declare-fun m!1965017 () Bool)

(assert (=> d!491572 m!1965017))

(declare-fun m!1965019 () Bool)

(assert (=> d!491572 m!1965019))

(declare-fun m!1965021 () Bool)

(assert (=> b!1631577 m!1965021))

(declare-fun m!1965023 () Bool)

(assert (=> b!1631577 m!1965023))

(declare-fun m!1965025 () Bool)

(assert (=> b!1631577 m!1965025))

(declare-fun m!1965027 () Bool)

(assert (=> b!1631576 m!1965027))

(assert (=> b!1631234 d!491572))

(declare-fun b!1631597 () Bool)

(declare-fun e!1046349 () Option!3339)

(declare-fun lt!592447 () Option!3339)

(declare-fun lt!592451 () Option!3339)

(assert (=> b!1631597 (= e!1046349 (ite (and ((_ is None!3338) lt!592447) ((_ is None!3338) lt!592451)) None!3338 (ite ((_ is None!3338) lt!592451) lt!592447 (ite ((_ is None!3338) lt!592447) lt!592451 (ite (>= (size!14310 (_1!10155 (v!24397 lt!592447))) (size!14310 (_1!10155 (v!24397 lt!592451)))) lt!592447 lt!592451)))))))

(declare-fun call!105540 () Option!3339)

(assert (=> b!1631597 (= lt!592447 call!105540)))

(assert (=> b!1631597 (= lt!592451 (maxPrefix!1348 thiss!17113 (t!149476 rules!1846) lt!592164))))

(declare-fun b!1631598 () Bool)

(declare-fun res!730016 () Bool)

(declare-fun e!1046350 () Bool)

(assert (=> b!1631598 (=> (not res!730016) (not e!1046350))))

(declare-fun lt!592449 () Option!3339)

(declare-fun apply!4611 (TokenValueInjection!6150 BalanceConc!11860) TokenValue!3245)

(assert (=> b!1631598 (= res!730016 (= (value!99590 (_1!10155 (get!5173 lt!592449))) (apply!4611 (transformation!3155 (rule!4989 (_1!10155 (get!5173 lt!592449)))) (seqFromList!2059 (originalCharacters!3969 (_1!10155 (get!5173 lt!592449)))))))))

(declare-fun b!1631599 () Bool)

(declare-fun res!730012 () Bool)

(assert (=> b!1631599 (=> (not res!730012) (not e!1046350))))

(assert (=> b!1631599 (= res!730012 (= (++!4779 (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!592449)))) (_2!10155 (get!5173 lt!592449))) lt!592164))))

(declare-fun b!1631601 () Bool)

(assert (=> b!1631601 (= e!1046349 call!105540)))

(declare-fun b!1631602 () Bool)

(declare-fun res!730011 () Bool)

(assert (=> b!1631602 (=> (not res!730011) (not e!1046350))))

(assert (=> b!1631602 (= res!730011 (< (size!14314 (_2!10155 (get!5173 lt!592449))) (size!14314 lt!592164)))))

(declare-fun b!1631600 () Bool)

(declare-fun contains!3132 (List!17977 Rule!6110) Bool)

(assert (=> b!1631600 (= e!1046350 (contains!3132 rules!1846 (rule!4989 (_1!10155 (get!5173 lt!592449)))))))

(declare-fun d!491574 () Bool)

(declare-fun e!1046351 () Bool)

(assert (=> d!491574 e!1046351))

(declare-fun res!730017 () Bool)

(assert (=> d!491574 (=> res!730017 e!1046351)))

(assert (=> d!491574 (= res!730017 (isEmpty!10943 lt!592449))))

(assert (=> d!491574 (= lt!592449 e!1046349)))

(declare-fun c!265593 () Bool)

(assert (=> d!491574 (= c!265593 (and ((_ is Cons!17907) rules!1846) ((_ is Nil!17907) (t!149476 rules!1846))))))

(declare-fun lt!592448 () Unit!29131)

(declare-fun lt!592450 () Unit!29131)

(assert (=> d!491574 (= lt!592448 lt!592450)))

(assert (=> d!491574 (isPrefix!1415 lt!592164 lt!592164)))

(assert (=> d!491574 (= lt!592450 (lemmaIsPrefixRefl!965 lt!592164 lt!592164))))

(assert (=> d!491574 (rulesValidInductive!979 thiss!17113 rules!1846)))

(assert (=> d!491574 (= (maxPrefix!1348 thiss!17113 rules!1846 lt!592164) lt!592449)))

(declare-fun bm!105535 () Bool)

(declare-fun maxPrefixOneRule!781 (LexerInterface!2784 Rule!6110 List!17976) Option!3339)

(assert (=> bm!105535 (= call!105540 (maxPrefixOneRule!781 thiss!17113 (h!23308 rules!1846) lt!592164))))

(declare-fun b!1631603 () Bool)

(declare-fun res!730014 () Bool)

(assert (=> b!1631603 (=> (not res!730014) (not e!1046350))))

(assert (=> b!1631603 (= res!730014 (= (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!592449)))) (originalCharacters!3969 (_1!10155 (get!5173 lt!592449)))))))

(declare-fun b!1631604 () Bool)

(declare-fun res!730013 () Bool)

(assert (=> b!1631604 (=> (not res!730013) (not e!1046350))))

(assert (=> b!1631604 (= res!730013 (matchR!1982 (regex!3155 (rule!4989 (_1!10155 (get!5173 lt!592449)))) (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!592449))))))))

(declare-fun b!1631605 () Bool)

(assert (=> b!1631605 (= e!1046351 e!1046350)))

(declare-fun res!730015 () Bool)

(assert (=> b!1631605 (=> (not res!730015) (not e!1046350))))

(assert (=> b!1631605 (= res!730015 (isDefined!2706 lt!592449))))

(assert (= (and d!491574 c!265593) b!1631601))

(assert (= (and d!491574 (not c!265593)) b!1631597))

(assert (= (or b!1631601 b!1631597) bm!105535))

(assert (= (and d!491574 (not res!730017)) b!1631605))

(assert (= (and b!1631605 res!730015) b!1631603))

(assert (= (and b!1631603 res!730014) b!1631602))

(assert (= (and b!1631602 res!730011) b!1631599))

(assert (= (and b!1631599 res!730012) b!1631598))

(assert (= (and b!1631598 res!730016) b!1631604))

(assert (= (and b!1631604 res!730013) b!1631600))

(declare-fun m!1965029 () Bool)

(assert (=> bm!105535 m!1965029))

(declare-fun m!1965031 () Bool)

(assert (=> b!1631602 m!1965031))

(declare-fun m!1965033 () Bool)

(assert (=> b!1631602 m!1965033))

(assert (=> b!1631602 m!1964441))

(assert (=> b!1631599 m!1965031))

(declare-fun m!1965035 () Bool)

(assert (=> b!1631599 m!1965035))

(assert (=> b!1631599 m!1965035))

(declare-fun m!1965037 () Bool)

(assert (=> b!1631599 m!1965037))

(assert (=> b!1631599 m!1965037))

(declare-fun m!1965039 () Bool)

(assert (=> b!1631599 m!1965039))

(assert (=> b!1631604 m!1965031))

(assert (=> b!1631604 m!1965035))

(assert (=> b!1631604 m!1965035))

(assert (=> b!1631604 m!1965037))

(assert (=> b!1631604 m!1965037))

(declare-fun m!1965041 () Bool)

(assert (=> b!1631604 m!1965041))

(assert (=> b!1631600 m!1965031))

(declare-fun m!1965043 () Bool)

(assert (=> b!1631600 m!1965043))

(declare-fun m!1965045 () Bool)

(assert (=> d!491574 m!1965045))

(declare-fun m!1965047 () Bool)

(assert (=> d!491574 m!1965047))

(declare-fun m!1965049 () Bool)

(assert (=> d!491574 m!1965049))

(assert (=> d!491574 m!1964415))

(assert (=> b!1631603 m!1965031))

(assert (=> b!1631603 m!1965035))

(assert (=> b!1631603 m!1965035))

(assert (=> b!1631603 m!1965037))

(assert (=> b!1631598 m!1965031))

(declare-fun m!1965051 () Bool)

(assert (=> b!1631598 m!1965051))

(assert (=> b!1631598 m!1965051))

(declare-fun m!1965053 () Bool)

(assert (=> b!1631598 m!1965053))

(declare-fun m!1965055 () Bool)

(assert (=> b!1631605 m!1965055))

(declare-fun m!1965057 () Bool)

(assert (=> b!1631597 m!1965057))

(assert (=> b!1631234 d!491574))

(declare-fun d!491576 () Bool)

(assert (=> d!491576 (= (isDefined!2706 lt!592156) (not (isEmpty!10943 lt!592156)))))

(declare-fun bs!395179 () Bool)

(assert (= bs!395179 d!491576))

(declare-fun m!1965059 () Bool)

(assert (=> bs!395179 m!1965059))

(assert (=> b!1631234 d!491576))

(declare-fun b!1631606 () Bool)

(declare-fun e!1046352 () Option!3339)

(declare-fun lt!592452 () Option!3339)

(declare-fun lt!592456 () Option!3339)

(assert (=> b!1631606 (= e!1046352 (ite (and ((_ is None!3338) lt!592452) ((_ is None!3338) lt!592456)) None!3338 (ite ((_ is None!3338) lt!592456) lt!592452 (ite ((_ is None!3338) lt!592452) lt!592456 (ite (>= (size!14310 (_1!10155 (v!24397 lt!592452))) (size!14310 (_1!10155 (v!24397 lt!592456)))) lt!592452 lt!592456)))))))

(declare-fun call!105541 () Option!3339)

(assert (=> b!1631606 (= lt!592452 call!105541)))

(assert (=> b!1631606 (= lt!592456 (maxPrefix!1348 thiss!17113 (t!149476 rules!1846) (originalCharacters!3969 (h!23309 tokens!457))))))

(declare-fun b!1631607 () Bool)

(declare-fun res!730023 () Bool)

(declare-fun e!1046353 () Bool)

(assert (=> b!1631607 (=> (not res!730023) (not e!1046353))))

(declare-fun lt!592454 () Option!3339)

(assert (=> b!1631607 (= res!730023 (= (value!99590 (_1!10155 (get!5173 lt!592454))) (apply!4611 (transformation!3155 (rule!4989 (_1!10155 (get!5173 lt!592454)))) (seqFromList!2059 (originalCharacters!3969 (_1!10155 (get!5173 lt!592454)))))))))

(declare-fun b!1631608 () Bool)

(declare-fun res!730019 () Bool)

(assert (=> b!1631608 (=> (not res!730019) (not e!1046353))))

(assert (=> b!1631608 (= res!730019 (= (++!4779 (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!592454)))) (_2!10155 (get!5173 lt!592454))) (originalCharacters!3969 (h!23309 tokens!457))))))

(declare-fun b!1631610 () Bool)

(assert (=> b!1631610 (= e!1046352 call!105541)))

(declare-fun b!1631611 () Bool)

(declare-fun res!730018 () Bool)

(assert (=> b!1631611 (=> (not res!730018) (not e!1046353))))

(assert (=> b!1631611 (= res!730018 (< (size!14314 (_2!10155 (get!5173 lt!592454))) (size!14314 (originalCharacters!3969 (h!23309 tokens!457)))))))

(declare-fun b!1631609 () Bool)

(assert (=> b!1631609 (= e!1046353 (contains!3132 rules!1846 (rule!4989 (_1!10155 (get!5173 lt!592454)))))))

(declare-fun d!491578 () Bool)

(declare-fun e!1046354 () Bool)

(assert (=> d!491578 e!1046354))

(declare-fun res!730024 () Bool)

(assert (=> d!491578 (=> res!730024 e!1046354)))

(assert (=> d!491578 (= res!730024 (isEmpty!10943 lt!592454))))

(assert (=> d!491578 (= lt!592454 e!1046352)))

(declare-fun c!265594 () Bool)

(assert (=> d!491578 (= c!265594 (and ((_ is Cons!17907) rules!1846) ((_ is Nil!17907) (t!149476 rules!1846))))))

(declare-fun lt!592453 () Unit!29131)

(declare-fun lt!592455 () Unit!29131)

(assert (=> d!491578 (= lt!592453 lt!592455)))

(assert (=> d!491578 (isPrefix!1415 (originalCharacters!3969 (h!23309 tokens!457)) (originalCharacters!3969 (h!23309 tokens!457)))))

(assert (=> d!491578 (= lt!592455 (lemmaIsPrefixRefl!965 (originalCharacters!3969 (h!23309 tokens!457)) (originalCharacters!3969 (h!23309 tokens!457))))))

(assert (=> d!491578 (rulesValidInductive!979 thiss!17113 rules!1846)))

(assert (=> d!491578 (= (maxPrefix!1348 thiss!17113 rules!1846 (originalCharacters!3969 (h!23309 tokens!457))) lt!592454)))

(declare-fun bm!105536 () Bool)

(assert (=> bm!105536 (= call!105541 (maxPrefixOneRule!781 thiss!17113 (h!23308 rules!1846) (originalCharacters!3969 (h!23309 tokens!457))))))

(declare-fun b!1631612 () Bool)

(declare-fun res!730021 () Bool)

(assert (=> b!1631612 (=> (not res!730021) (not e!1046353))))

(assert (=> b!1631612 (= res!730021 (= (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!592454)))) (originalCharacters!3969 (_1!10155 (get!5173 lt!592454)))))))

(declare-fun b!1631613 () Bool)

(declare-fun res!730020 () Bool)

(assert (=> b!1631613 (=> (not res!730020) (not e!1046353))))

(assert (=> b!1631613 (= res!730020 (matchR!1982 (regex!3155 (rule!4989 (_1!10155 (get!5173 lt!592454)))) (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!592454))))))))

(declare-fun b!1631614 () Bool)

(assert (=> b!1631614 (= e!1046354 e!1046353)))

(declare-fun res!730022 () Bool)

(assert (=> b!1631614 (=> (not res!730022) (not e!1046353))))

(assert (=> b!1631614 (= res!730022 (isDefined!2706 lt!592454))))

(assert (= (and d!491578 c!265594) b!1631610))

(assert (= (and d!491578 (not c!265594)) b!1631606))

(assert (= (or b!1631610 b!1631606) bm!105536))

(assert (= (and d!491578 (not res!730024)) b!1631614))

(assert (= (and b!1631614 res!730022) b!1631612))

(assert (= (and b!1631612 res!730021) b!1631611))

(assert (= (and b!1631611 res!730018) b!1631608))

(assert (= (and b!1631608 res!730019) b!1631607))

(assert (= (and b!1631607 res!730023) b!1631613))

(assert (= (and b!1631613 res!730020) b!1631609))

(declare-fun m!1965061 () Bool)

(assert (=> bm!105536 m!1965061))

(declare-fun m!1965063 () Bool)

(assert (=> b!1631611 m!1965063))

(declare-fun m!1965065 () Bool)

(assert (=> b!1631611 m!1965065))

(assert (=> b!1631611 m!1965023))

(assert (=> b!1631608 m!1965063))

(declare-fun m!1965067 () Bool)

(assert (=> b!1631608 m!1965067))

(assert (=> b!1631608 m!1965067))

(declare-fun m!1965069 () Bool)

(assert (=> b!1631608 m!1965069))

(assert (=> b!1631608 m!1965069))

(declare-fun m!1965071 () Bool)

(assert (=> b!1631608 m!1965071))

(assert (=> b!1631613 m!1965063))

(assert (=> b!1631613 m!1965067))

(assert (=> b!1631613 m!1965067))

(assert (=> b!1631613 m!1965069))

(assert (=> b!1631613 m!1965069))

(declare-fun m!1965073 () Bool)

(assert (=> b!1631613 m!1965073))

(assert (=> b!1631609 m!1965063))

(declare-fun m!1965075 () Bool)

(assert (=> b!1631609 m!1965075))

(declare-fun m!1965077 () Bool)

(assert (=> d!491578 m!1965077))

(declare-fun m!1965079 () Bool)

(assert (=> d!491578 m!1965079))

(declare-fun m!1965081 () Bool)

(assert (=> d!491578 m!1965081))

(assert (=> d!491578 m!1964415))

(assert (=> b!1631612 m!1965063))

(assert (=> b!1631612 m!1965067))

(assert (=> b!1631612 m!1965067))

(assert (=> b!1631612 m!1965069))

(assert (=> b!1631607 m!1965063))

(declare-fun m!1965083 () Bool)

(assert (=> b!1631607 m!1965083))

(assert (=> b!1631607 m!1965083))

(declare-fun m!1965085 () Bool)

(assert (=> b!1631607 m!1965085))

(declare-fun m!1965087 () Bool)

(assert (=> b!1631614 m!1965087))

(declare-fun m!1965089 () Bool)

(assert (=> b!1631606 m!1965089))

(assert (=> b!1631234 d!491578))

(declare-fun d!491580 () Bool)

(assert (=> d!491580 (= (get!5173 lt!592171) (v!24397 lt!592171))))

(assert (=> b!1631236 d!491580))

(declare-fun b!1631801 () Bool)

(declare-fun res!730122 () Bool)

(declare-fun e!1046474 () Bool)

(assert (=> b!1631801 (=> (not res!730122) (not e!1046474))))

(declare-fun lt!592813 () Token!5876)

(declare-datatypes ((Option!3341 0))(
  ( (None!3340) (Some!3340 (v!24405 Rule!6110)) )
))
(declare-fun get!5175 (Option!3341) Rule!6110)

(declare-fun getRuleFromTag!289 (LexerInterface!2784 List!17977 String!20557) Option!3341)

(assert (=> b!1631801 (= res!730122 (matchR!1982 (regex!3155 (get!5175 (getRuleFromTag!289 thiss!17113 rules!1846 (tag!3435 (rule!4989 lt!592813))))) (list!7043 (charsOf!1804 lt!592813))))))

(declare-fun b!1631802 () Bool)

(declare-fun e!1046471 () Unit!29131)

(declare-fun Unit!29136 () Unit!29131)

(assert (=> b!1631802 (= e!1046471 Unit!29136)))

(declare-fun lt!592832 () List!17976)

(assert (=> b!1631802 (= lt!592832 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592808 () List!17976)

(assert (=> b!1631802 (= lt!592808 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(declare-fun lt!592816 () Unit!29131)

(declare-fun lt!592861 () List!17976)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!123 (LexerInterface!2784 List!17977 Rule!6110 List!17976 List!17976 List!17976 Rule!6110) Unit!29131)

(assert (=> b!1631802 (= lt!592816 (lemmaMaxPrefixOutputsMaxPrefix!123 thiss!17113 rules!1846 (rule!4989 lt!592813) lt!592832 lt!592861 lt!592808 (rule!4989 (h!23309 tokens!457))))))

(assert (=> b!1631802 (not (matchR!1982 (regex!3155 (rule!4989 (h!23309 tokens!457))) lt!592808))))

(declare-fun lt!592801 () Unit!29131)

(assert (=> b!1631802 (= lt!592801 lt!592816)))

(assert (=> b!1631802 false))

(declare-fun b!1631803 () Bool)

(declare-fun e!1046475 () Unit!29131)

(declare-fun Unit!29137 () Unit!29131)

(assert (=> b!1631803 (= e!1046475 Unit!29137)))

(declare-fun d!491582 () Bool)

(assert (=> d!491582 (= (maxPrefix!1348 thiss!17113 rules!1846 (++!4779 (list!7043 (charsOf!1804 (h!23309 tokens!457))) lt!592157)) (Some!3338 (tuple2!17507 (h!23309 tokens!457) lt!592157)))))

(declare-fun lt!592835 () Unit!29131)

(declare-fun Unit!29138 () Unit!29131)

(assert (=> d!491582 (= lt!592835 Unit!29138)))

(declare-fun lt!592848 () Unit!29131)

(declare-fun e!1046472 () Unit!29131)

(assert (=> d!491582 (= lt!592848 e!1046472)))

(declare-fun c!265634 () Bool)

(assert (=> d!491582 (= c!265634 (not (= (rule!4989 lt!592813) (rule!4989 (h!23309 tokens!457)))))))

(declare-fun lt!592836 () Unit!29131)

(declare-fun lt!592839 () Unit!29131)

(assert (=> d!491582 (= lt!592836 lt!592839)))

(declare-fun lt!592817 () List!17976)

(assert (=> d!491582 (= lt!592157 lt!592817)))

(declare-fun lemmaSamePrefixThenSameSuffix!655 (List!17976 List!17976 List!17976 List!17976 List!17976) Unit!29131)

(assert (=> d!491582 (= lt!592839 (lemmaSamePrefixThenSameSuffix!655 (list!7043 (charsOf!1804 (h!23309 tokens!457))) lt!592157 (list!7043 (charsOf!1804 (h!23309 tokens!457))) lt!592817 lt!592861))))

(declare-fun lt!592814 () Unit!29131)

(declare-fun lt!592829 () Unit!29131)

(assert (=> d!491582 (= lt!592814 lt!592829)))

(declare-fun lt!592796 () List!17976)

(declare-fun lt!592824 () List!17976)

(assert (=> d!491582 (= lt!592796 lt!592824)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!157 (List!17976 List!17976 List!17976) Unit!29131)

(assert (=> d!491582 (= lt!592829 (lemmaIsPrefixSameLengthThenSameList!157 lt!592796 lt!592824 lt!592861))))

(assert (=> d!491582 (= lt!592824 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(assert (=> d!491582 (= lt!592796 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592847 () Unit!29131)

(assert (=> d!491582 (= lt!592847 e!1046471)))

(declare-fun c!265638 () Bool)

(assert (=> d!491582 (= c!265638 (< (size!14315 (charsOf!1804 lt!592813)) (size!14315 (charsOf!1804 (h!23309 tokens!457)))))))

(declare-fun lt!592833 () Unit!29131)

(declare-fun e!1046477 () Unit!29131)

(assert (=> d!491582 (= lt!592833 e!1046477)))

(declare-fun c!265639 () Bool)

(assert (=> d!491582 (= c!265639 (> (size!14315 (charsOf!1804 lt!592813)) (size!14315 (charsOf!1804 (h!23309 tokens!457)))))))

(declare-fun lt!592823 () Unit!29131)

(declare-fun lt!592852 () Unit!29131)

(assert (=> d!491582 (= lt!592823 lt!592852)))

(assert (=> d!491582 (matchR!1982 (rulesRegex!545 thiss!17113 rules!1846) (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!33 (LexerInterface!2784 List!17977 List!17976 Token!5876 Rule!6110 List!17976) Unit!29131)

(assert (=> d!491582 (= lt!592852 (lemmaMaxPrefixThenMatchesRulesRegex!33 thiss!17113 rules!1846 (list!7043 (charsOf!1804 (h!23309 tokens!457))) (h!23309 tokens!457) (rule!4989 (h!23309 tokens!457)) Nil!17906))))

(declare-fun lt!592797 () Unit!29131)

(declare-fun lt!592811 () Unit!29131)

(assert (=> d!491582 (= lt!592797 lt!592811)))

(declare-fun lt!592863 () List!17976)

(assert (=> d!491582 (= lt!592817 lt!592863)))

(declare-fun lt!592805 () List!17976)

(declare-fun lt!592794 () List!17976)

(assert (=> d!491582 (= lt!592811 (lemmaSamePrefixThenSameSuffix!655 lt!592794 lt!592817 lt!592805 lt!592863 lt!592861))))

(declare-fun getSuffix!703 (List!17976 List!17976) List!17976)

(assert (=> d!491582 (= lt!592863 (getSuffix!703 lt!592861 (list!7043 (charsOf!1804 lt!592813))))))

(assert (=> d!491582 (= lt!592805 (list!7043 (charsOf!1804 lt!592813)))))

(assert (=> d!491582 (= lt!592794 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592845 () Unit!29131)

(declare-fun lt!592837 () Unit!29131)

(assert (=> d!491582 (= lt!592845 lt!592837)))

(declare-fun lt!592838 () List!17976)

(assert (=> d!491582 (= (maxPrefixOneRule!781 thiss!17113 (rule!4989 lt!592813) lt!592861) (Some!3338 (tuple2!17507 (Token!5877 (apply!4611 (transformation!3155 (rule!4989 lt!592813)) (seqFromList!2059 lt!592838)) (rule!4989 lt!592813) (size!14314 lt!592838) lt!592838) lt!592817)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!223 (LexerInterface!2784 List!17977 List!17976 List!17976 List!17976 Rule!6110) Unit!29131)

(assert (=> d!491582 (= lt!592837 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!223 thiss!17113 rules!1846 lt!592838 lt!592861 lt!592817 (rule!4989 lt!592813)))))

(assert (=> d!491582 (= lt!592838 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592795 () Unit!29131)

(declare-fun lemmaCharactersSize!329 (Token!5876) Unit!29131)

(assert (=> d!491582 (= lt!592795 (lemmaCharactersSize!329 lt!592813))))

(declare-fun lt!592810 () Unit!29131)

(declare-fun lemmaEqSameImage!182 (TokenValueInjection!6150 BalanceConc!11860 BalanceConc!11860) Unit!29131)

(assert (=> d!491582 (= lt!592810 (lemmaEqSameImage!182 (transformation!3155 (rule!4989 lt!592813)) (charsOf!1804 lt!592813) (seqFromList!2059 (originalCharacters!3969 lt!592813))))))

(declare-fun lt!592826 () Unit!29131)

(declare-fun lemmaSemiInverse!397 (TokenValueInjection!6150 BalanceConc!11860) Unit!29131)

(assert (=> d!491582 (= lt!592826 (lemmaSemiInverse!397 (transformation!3155 (rule!4989 lt!592813)) (charsOf!1804 lt!592813)))))

(declare-fun lt!592857 () Unit!29131)

(declare-fun lemmaInv!462 (TokenValueInjection!6150) Unit!29131)

(assert (=> d!491582 (= lt!592857 (lemmaInv!462 (transformation!3155 (rule!4989 lt!592813))))))

(declare-fun lt!592798 () Unit!29131)

(declare-fun lt!592846 () Unit!29131)

(assert (=> d!491582 (= lt!592798 lt!592846)))

(declare-fun lt!592864 () List!17976)

(assert (=> d!491582 (isPrefix!1415 lt!592864 (++!4779 lt!592864 lt!592817))))

(assert (=> d!491582 (= lt!592846 (lemmaConcatTwoListThenFirstIsPrefix!940 lt!592864 lt!592817))))

(assert (=> d!491582 (= lt!592864 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592849 () Unit!29131)

(declare-fun lt!592815 () Unit!29131)

(assert (=> d!491582 (= lt!592849 lt!592815)))

(assert (=> d!491582 e!1046474))

(declare-fun res!730121 () Bool)

(assert (=> d!491582 (=> (not res!730121) (not e!1046474))))

(declare-fun isDefined!2708 (Option!3341) Bool)

(assert (=> d!491582 (= res!730121 (isDefined!2708 (getRuleFromTag!289 thiss!17113 rules!1846 (tag!3435 (rule!4989 lt!592813)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!289 (LexerInterface!2784 List!17977 List!17976 Token!5876) Unit!29131)

(assert (=> d!491582 (= lt!592815 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!289 thiss!17113 rules!1846 lt!592861 lt!592813))))

(declare-fun lt!592802 () Option!3339)

(assert (=> d!491582 (= lt!592817 (_2!10155 (get!5173 lt!592802)))))

(assert (=> d!491582 (= lt!592813 (_1!10155 (get!5173 lt!592802)))))

(declare-fun lt!592827 () Unit!29131)

(assert (=> d!491582 (= lt!592827 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!358 thiss!17113 rules!1846 (list!7043 (charsOf!1804 (h!23309 tokens!457))) lt!592157))))

(assert (=> d!491582 (= lt!592802 (maxPrefix!1348 thiss!17113 rules!1846 lt!592861))))

(declare-fun lt!592858 () Unit!29131)

(declare-fun lt!592831 () Unit!29131)

(assert (=> d!491582 (= lt!592858 lt!592831)))

(declare-fun lt!592844 () List!17976)

(assert (=> d!491582 (isPrefix!1415 lt!592844 (++!4779 lt!592844 lt!592157))))

(assert (=> d!491582 (= lt!592831 (lemmaConcatTwoListThenFirstIsPrefix!940 lt!592844 lt!592157))))

(assert (=> d!491582 (= lt!592844 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(assert (=> d!491582 (= lt!592861 (++!4779 (list!7043 (charsOf!1804 (h!23309 tokens!457))) lt!592157))))

(assert (=> d!491582 (not (isEmpty!10939 rules!1846))))

(assert (=> d!491582 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!120 thiss!17113 rules!1846 (h!23309 tokens!457) (rule!4989 (h!23309 tokens!457)) lt!592157) lt!592835)))

(declare-fun b!1631804 () Bool)

(declare-fun e!1046476 () Unit!29131)

(declare-fun Unit!29139 () Unit!29131)

(assert (=> b!1631804 (= e!1046476 Unit!29139)))

(declare-fun b!1631805 () Bool)

(declare-fun Unit!29140 () Unit!29131)

(assert (=> b!1631805 (= e!1046472 Unit!29140)))

(declare-fun b!1631806 () Bool)

(declare-fun Unit!29141 () Unit!29131)

(assert (=> b!1631806 (= e!1046477 Unit!29141)))

(declare-fun b!1631807 () Bool)

(assert (=> b!1631807 (= e!1046474 (= (rule!4989 lt!592813) (get!5175 (getRuleFromTag!289 thiss!17113 rules!1846 (tag!3435 (rule!4989 lt!592813))))))))

(declare-fun b!1631808 () Bool)

(assert (=> b!1631808 false))

(declare-fun lt!592807 () Unit!29131)

(declare-fun lt!592853 () Unit!29131)

(assert (=> b!1631808 (= lt!592807 lt!592853)))

(assert (=> b!1631808 (= (rule!4989 lt!592813) (rule!4989 (h!23309 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!49 (List!17977 Rule!6110 Rule!6110) Unit!29131)

(assert (=> b!1631808 (= lt!592853 (lemmaSameIndexThenSameElement!49 rules!1846 (rule!4989 lt!592813) (rule!4989 (h!23309 tokens!457))))))

(declare-fun Unit!29142 () Unit!29131)

(assert (=> b!1631808 (= e!1046475 Unit!29142)))

(declare-fun b!1631809 () Bool)

(assert (=> b!1631809 false))

(declare-fun lt!592812 () Unit!29131)

(declare-fun lt!592856 () Unit!29131)

(assert (=> b!1631809 (= lt!592812 lt!592856)))

(declare-fun lt!592804 () List!17976)

(assert (=> b!1631809 (not (matchR!1982 (regex!3155 (rule!4989 lt!592813)) lt!592804))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!73 (LexerInterface!2784 List!17977 Rule!6110 List!17976 List!17976 Rule!6110) Unit!29131)

(assert (=> b!1631809 (= lt!592856 (lemmaMaxPrefNoSmallerRuleMatches!73 thiss!17113 rules!1846 (rule!4989 (h!23309 tokens!457)) lt!592804 (list!7043 (charsOf!1804 (h!23309 tokens!457))) (rule!4989 lt!592813)))))

(assert (=> b!1631809 (= lt!592804 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(declare-fun e!1046473 () Unit!29131)

(declare-fun Unit!29143 () Unit!29131)

(assert (=> b!1631809 (= e!1046473 Unit!29143)))

(declare-fun b!1631810 () Bool)

(declare-fun Unit!29144 () Unit!29131)

(assert (=> b!1631810 (= e!1046472 Unit!29144)))

(declare-fun c!265637 () Bool)

(declare-fun getIndex!101 (List!17977 Rule!6110) Int)

(assert (=> b!1631810 (= c!265637 (< (getIndex!101 rules!1846 (rule!4989 (h!23309 tokens!457))) (getIndex!101 rules!1846 (rule!4989 lt!592813))))))

(declare-fun lt!592855 () Unit!29131)

(assert (=> b!1631810 (= lt!592855 e!1046476)))

(declare-fun c!265635 () Bool)

(assert (=> b!1631810 (= c!265635 (< (getIndex!101 rules!1846 (rule!4989 lt!592813)) (getIndex!101 rules!1846 (rule!4989 (h!23309 tokens!457)))))))

(declare-fun lt!592840 () Unit!29131)

(assert (=> b!1631810 (= lt!592840 e!1046473)))

(declare-fun c!265636 () Bool)

(assert (=> b!1631810 (= c!265636 (= (getIndex!101 rules!1846 (rule!4989 lt!592813)) (getIndex!101 rules!1846 (rule!4989 (h!23309 tokens!457)))))))

(declare-fun lt!592851 () Unit!29131)

(assert (=> b!1631810 (= lt!592851 e!1046475)))

(assert (=> b!1631810 false))

(declare-fun b!1631811 () Bool)

(declare-fun Unit!29145 () Unit!29131)

(assert (=> b!1631811 (= e!1046477 Unit!29145)))

(declare-fun lt!592825 () Unit!29131)

(assert (=> b!1631811 (= lt!592825 (lemmaMaxPrefixThenMatchesRulesRegex!33 thiss!17113 rules!1846 lt!592861 lt!592813 (rule!4989 lt!592813) lt!592817))))

(assert (=> b!1631811 (matchR!1982 (rulesRegex!545 thiss!17113 rules!1846) (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592862 () Unit!29131)

(assert (=> b!1631811 (= lt!592862 lt!592825)))

(declare-fun lt!592803 () List!17976)

(assert (=> b!1631811 (= lt!592803 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(declare-fun lt!592834 () List!17976)

(assert (=> b!1631811 (= lt!592834 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(declare-fun lt!592806 () List!17976)

(assert (=> b!1631811 (= lt!592806 (getSuffix!703 lt!592861 (list!7043 (charsOf!1804 (h!23309 tokens!457)))))))

(declare-fun lt!592799 () Unit!29131)

(assert (=> b!1631811 (= lt!592799 (lemmaSamePrefixThenSameSuffix!655 lt!592803 lt!592157 lt!592834 lt!592806 lt!592861))))

(assert (=> b!1631811 (= lt!592157 lt!592806)))

(declare-fun lt!592809 () Unit!29131)

(assert (=> b!1631811 (= lt!592809 lt!592799)))

(declare-fun lt!592819 () List!17976)

(assert (=> b!1631811 (= lt!592819 (list!7043 (charsOf!1804 (h!23309 tokens!457))))))

(declare-fun lt!592850 () Unit!29131)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!146 (List!17976 List!17976) Unit!29131)

(assert (=> b!1631811 (= lt!592850 (lemmaAddHeadSuffixToPrefixStillPrefix!146 lt!592819 lt!592861))))

(assert (=> b!1631811 (isPrefix!1415 (++!4779 lt!592819 (Cons!17906 (head!3479 (getSuffix!703 lt!592861 lt!592819)) Nil!17906)) lt!592861)))

(declare-fun lt!592821 () Unit!29131)

(assert (=> b!1631811 (= lt!592821 lt!592850)))

(declare-fun lt!592822 () List!17976)

(assert (=> b!1631811 (= lt!592822 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592830 () List!17976)

(assert (=> b!1631811 (= lt!592830 (++!4779 (list!7043 (charsOf!1804 (h!23309 tokens!457))) (Cons!17906 (head!3479 lt!592157) Nil!17906)))))

(declare-fun lt!592800 () Unit!29131)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!33 (List!17976 List!17976 List!17976) Unit!29131)

(assert (=> b!1631811 (= lt!592800 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!33 lt!592822 lt!592830 lt!592861))))

(assert (=> b!1631811 (isPrefix!1415 lt!592830 lt!592822)))

(declare-fun lt!592818 () Unit!29131)

(assert (=> b!1631811 (= lt!592818 lt!592800)))

(declare-fun lt!592859 () Regex!4483)

(assert (=> b!1631811 (= lt!592859 (rulesRegex!545 thiss!17113 rules!1846))))

(declare-fun lt!592841 () List!17976)

(assert (=> b!1631811 (= lt!592841 (++!4779 (list!7043 (charsOf!1804 (h!23309 tokens!457))) (Cons!17906 (head!3479 lt!592157) Nil!17906)))))

(declare-fun lt!592820 () List!17976)

(assert (=> b!1631811 (= lt!592820 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun lt!592843 () Unit!29131)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!34 (Regex!4483 List!17976 List!17976) Unit!29131)

(assert (=> b!1631811 (= lt!592843 (lemmaNotPrefixMatchThenCannotMatchLonger!34 lt!592859 lt!592841 lt!592820))))

(assert (=> b!1631811 (not (matchR!1982 lt!592859 lt!592820))))

(declare-fun lt!592828 () Unit!29131)

(assert (=> b!1631811 (= lt!592828 lt!592843)))

(assert (=> b!1631811 false))

(declare-fun b!1631812 () Bool)

(declare-fun Unit!29146 () Unit!29131)

(assert (=> b!1631812 (= e!1046473 Unit!29146)))

(declare-fun b!1631813 () Bool)

(declare-fun Unit!29147 () Unit!29131)

(assert (=> b!1631813 (= e!1046471 Unit!29147)))

(declare-fun b!1631814 () Bool)

(assert (=> b!1631814 false))

(declare-fun lt!592854 () Unit!29131)

(declare-fun lt!592860 () Unit!29131)

(assert (=> b!1631814 (= lt!592854 lt!592860)))

(declare-fun lt!592842 () List!17976)

(assert (=> b!1631814 (not (matchR!1982 (regex!3155 (rule!4989 (h!23309 tokens!457))) lt!592842))))

(assert (=> b!1631814 (= lt!592860 (lemmaMaxPrefNoSmallerRuleMatches!73 thiss!17113 rules!1846 (rule!4989 lt!592813) lt!592842 lt!592861 (rule!4989 (h!23309 tokens!457))))))

(assert (=> b!1631814 (= lt!592842 (list!7043 (charsOf!1804 lt!592813)))))

(declare-fun Unit!29148 () Unit!29131)

(assert (=> b!1631814 (= e!1046476 Unit!29148)))

(assert (= (and d!491582 res!730121) b!1631801))

(assert (= (and b!1631801 res!730122) b!1631807))

(assert (= (and d!491582 c!265639) b!1631811))

(assert (= (and d!491582 (not c!265639)) b!1631806))

(assert (= (and d!491582 c!265638) b!1631802))

(assert (= (and d!491582 (not c!265638)) b!1631813))

(assert (= (and d!491582 c!265634) b!1631810))

(assert (= (and d!491582 (not c!265634)) b!1631805))

(assert (= (and b!1631810 c!265637) b!1631814))

(assert (= (and b!1631810 (not c!265637)) b!1631804))

(assert (= (and b!1631810 c!265635) b!1631809))

(assert (= (and b!1631810 (not c!265635)) b!1631812))

(assert (= (and b!1631810 c!265636) b!1631808))

(assert (= (and b!1631810 (not c!265636)) b!1631803))

(declare-fun m!1965391 () Bool)

(assert (=> b!1631808 m!1965391))

(declare-fun m!1965393 () Bool)

(assert (=> b!1631807 m!1965393))

(assert (=> b!1631807 m!1965393))

(declare-fun m!1965395 () Bool)

(assert (=> b!1631807 m!1965395))

(declare-fun m!1965397 () Bool)

(assert (=> b!1631814 m!1965397))

(declare-fun m!1965399 () Bool)

(assert (=> b!1631814 m!1965399))

(declare-fun m!1965401 () Bool)

(assert (=> b!1631814 m!1965401))

(assert (=> b!1631814 m!1965401))

(declare-fun m!1965403 () Bool)

(assert (=> b!1631814 m!1965403))

(declare-fun m!1965405 () Bool)

(assert (=> d!491582 m!1965405))

(assert (=> d!491582 m!1965401))

(declare-fun m!1965407 () Bool)

(assert (=> d!491582 m!1965407))

(declare-fun m!1965409 () Bool)

(assert (=> d!491582 m!1965409))

(declare-fun m!1965411 () Bool)

(assert (=> d!491582 m!1965411))

(declare-fun m!1965413 () Bool)

(assert (=> d!491582 m!1965413))

(declare-fun m!1965415 () Bool)

(assert (=> d!491582 m!1965415))

(declare-fun m!1965417 () Bool)

(assert (=> d!491582 m!1965417))

(assert (=> d!491582 m!1965409))

(assert (=> d!491582 m!1965413))

(declare-fun m!1965419 () Bool)

(assert (=> d!491582 m!1965419))

(assert (=> d!491582 m!1965393))

(declare-fun m!1965421 () Bool)

(assert (=> d!491582 m!1965421))

(assert (=> d!491582 m!1965413))

(declare-fun m!1965423 () Bool)

(assert (=> d!491582 m!1965423))

(declare-fun m!1965425 () Bool)

(assert (=> d!491582 m!1965425))

(assert (=> d!491582 m!1965401))

(declare-fun m!1965427 () Bool)

(assert (=> d!491582 m!1965427))

(declare-fun m!1965429 () Bool)

(assert (=> d!491582 m!1965429))

(declare-fun m!1965431 () Bool)

(assert (=> d!491582 m!1965431))

(assert (=> d!491582 m!1964311))

(assert (=> d!491582 m!1964311))

(declare-fun m!1965433 () Bool)

(assert (=> d!491582 m!1965433))

(assert (=> d!491582 m!1965419))

(declare-fun m!1965435 () Bool)

(assert (=> d!491582 m!1965435))

(assert (=> d!491582 m!1965401))

(declare-fun m!1965437 () Bool)

(assert (=> d!491582 m!1965437))

(declare-fun m!1965439 () Bool)

(assert (=> d!491582 m!1965439))

(declare-fun m!1965441 () Bool)

(assert (=> d!491582 m!1965441))

(assert (=> d!491582 m!1965401))

(assert (=> d!491582 m!1965403))

(declare-fun m!1965443 () Bool)

(assert (=> d!491582 m!1965443))

(declare-fun m!1965445 () Bool)

(assert (=> d!491582 m!1965445))

(declare-fun m!1965447 () Bool)

(assert (=> d!491582 m!1965447))

(assert (=> d!491582 m!1964361))

(assert (=> d!491582 m!1964289))

(assert (=> d!491582 m!1965413))

(declare-fun m!1965449 () Bool)

(assert (=> d!491582 m!1965449))

(declare-fun m!1965451 () Bool)

(assert (=> d!491582 m!1965451))

(assert (=> d!491582 m!1965413))

(assert (=> d!491582 m!1965413))

(declare-fun m!1965453 () Bool)

(assert (=> d!491582 m!1965453))

(assert (=> d!491582 m!1964311))

(assert (=> d!491582 m!1965413))

(declare-fun m!1965455 () Bool)

(assert (=> d!491582 m!1965455))

(assert (=> d!491582 m!1965401))

(assert (=> d!491582 m!1965403))

(declare-fun m!1965457 () Bool)

(assert (=> d!491582 m!1965457))

(assert (=> d!491582 m!1965455))

(declare-fun m!1965459 () Bool)

(assert (=> d!491582 m!1965459))

(assert (=> d!491582 m!1965427))

(assert (=> d!491582 m!1965457))

(declare-fun m!1965461 () Bool)

(assert (=> d!491582 m!1965461))

(declare-fun m!1965463 () Bool)

(assert (=> d!491582 m!1965463))

(assert (=> d!491582 m!1965393))

(declare-fun m!1965465 () Bool)

(assert (=> d!491582 m!1965465))

(declare-fun m!1965467 () Bool)

(assert (=> d!491582 m!1965467))

(assert (=> d!491582 m!1964289))

(declare-fun m!1965469 () Bool)

(assert (=> b!1631809 m!1965469))

(assert (=> b!1631809 m!1964311))

(assert (=> b!1631809 m!1964311))

(assert (=> b!1631809 m!1965413))

(assert (=> b!1631809 m!1965413))

(declare-fun m!1965471 () Bool)

(assert (=> b!1631809 m!1965471))

(assert (=> b!1631801 m!1965401))

(assert (=> b!1631801 m!1965393))

(assert (=> b!1631801 m!1965395))

(assert (=> b!1631801 m!1965401))

(assert (=> b!1631801 m!1965403))

(assert (=> b!1631801 m!1965403))

(declare-fun m!1965473 () Bool)

(assert (=> b!1631801 m!1965473))

(assert (=> b!1631801 m!1965393))

(declare-fun m!1965475 () Bool)

(assert (=> b!1631810 m!1965475))

(declare-fun m!1965477 () Bool)

(assert (=> b!1631810 m!1965477))

(assert (=> b!1631802 m!1965401))

(assert (=> b!1631802 m!1964311))

(assert (=> b!1631802 m!1965413))

(assert (=> b!1631802 m!1965401))

(assert (=> b!1631802 m!1965403))

(declare-fun m!1965479 () Bool)

(assert (=> b!1631802 m!1965479))

(declare-fun m!1965481 () Bool)

(assert (=> b!1631802 m!1965481))

(assert (=> b!1631802 m!1964311))

(declare-fun m!1965483 () Bool)

(assert (=> b!1631811 m!1965483))

(assert (=> b!1631811 m!1965401))

(assert (=> b!1631811 m!1964311))

(assert (=> b!1631811 m!1965413))

(declare-fun m!1965485 () Bool)

(assert (=> b!1631811 m!1965485))

(assert (=> b!1631811 m!1965401))

(assert (=> b!1631811 m!1965403))

(declare-fun m!1965487 () Bool)

(assert (=> b!1631811 m!1965487))

(declare-fun m!1965489 () Bool)

(assert (=> b!1631811 m!1965489))

(assert (=> b!1631811 m!1965413))

(declare-fun m!1965491 () Bool)

(assert (=> b!1631811 m!1965491))

(assert (=> b!1631811 m!1964311))

(declare-fun m!1965493 () Bool)

(assert (=> b!1631811 m!1965493))

(assert (=> b!1631811 m!1965487))

(declare-fun m!1965495 () Bool)

(assert (=> b!1631811 m!1965495))

(declare-fun m!1965497 () Bool)

(assert (=> b!1631811 m!1965497))

(declare-fun m!1965499 () Bool)

(assert (=> b!1631811 m!1965499))

(declare-fun m!1965501 () Bool)

(assert (=> b!1631811 m!1965501))

(assert (=> b!1631811 m!1964363))

(declare-fun m!1965503 () Bool)

(assert (=> b!1631811 m!1965503))

(assert (=> b!1631811 m!1965483))

(declare-fun m!1965505 () Bool)

(assert (=> b!1631811 m!1965505))

(assert (=> b!1631811 m!1965413))

(declare-fun m!1965507 () Bool)

(assert (=> b!1631811 m!1965507))

(assert (=> b!1631811 m!1964289))

(assert (=> b!1631811 m!1964289))

(assert (=> b!1631811 m!1965403))

(declare-fun m!1965509 () Bool)

(assert (=> b!1631811 m!1965509))

(assert (=> b!1631236 d!491582))

(declare-fun d!491660 () Bool)

(declare-fun e!1046480 () Bool)

(assert (=> d!491660 e!1046480))

(declare-fun res!730125 () Bool)

(assert (=> d!491660 (=> (not res!730125) (not e!1046480))))

(declare-fun isBalanced!1802 (Conc!5959) Bool)

(declare-fun prepend!689 (Conc!5959 Token!5876) Conc!5959)

(assert (=> d!491660 (= res!730125 (isBalanced!1802 (prepend!689 (c!265529 (seqFromList!2060 (t!149477 (t!149477 tokens!457)))) (h!23309 (t!149477 tokens!457)))))))

(declare-fun lt!592867 () BalanceConc!11862)

(assert (=> d!491660 (= lt!592867 (BalanceConc!11863 (prepend!689 (c!265529 (seqFromList!2060 (t!149477 (t!149477 tokens!457)))) (h!23309 (t!149477 tokens!457)))))))

(assert (=> d!491660 (= (prepend!687 (seqFromList!2060 (t!149477 (t!149477 tokens!457))) (h!23309 (t!149477 tokens!457))) lt!592867)))

(declare-fun b!1631817 () Bool)

(assert (=> b!1631817 (= e!1046480 (= (list!7044 lt!592867) (Cons!17908 (h!23309 (t!149477 tokens!457)) (list!7044 (seqFromList!2060 (t!149477 (t!149477 tokens!457)))))))))

(assert (= (and d!491660 res!730125) b!1631817))

(declare-fun m!1965511 () Bool)

(assert (=> d!491660 m!1965511))

(assert (=> d!491660 m!1965511))

(declare-fun m!1965513 () Bool)

(assert (=> d!491660 m!1965513))

(declare-fun m!1965515 () Bool)

(assert (=> b!1631817 m!1965515))

(assert (=> b!1631817 m!1964261))

(declare-fun m!1965517 () Bool)

(assert (=> b!1631817 m!1965517))

(assert (=> b!1631257 d!491660))

(declare-fun d!491662 () Bool)

(declare-fun list!7048 (Conc!5959) List!17978)

(assert (=> d!491662 (= (list!7044 (prepend!687 (seqFromList!2060 (t!149477 (t!149477 tokens!457))) (h!23309 (t!149477 tokens!457)))) (list!7048 (c!265529 (prepend!687 (seqFromList!2060 (t!149477 (t!149477 tokens!457))) (h!23309 (t!149477 tokens!457))))))))

(declare-fun bs!395198 () Bool)

(assert (= bs!395198 d!491662))

(declare-fun m!1965519 () Bool)

(assert (=> bs!395198 m!1965519))

(assert (=> b!1631257 d!491662))

(declare-fun d!491664 () Bool)

(assert (=> d!491664 (= (list!7044 lt!592154) (list!7048 (c!265529 lt!592154)))))

(declare-fun bs!395199 () Bool)

(assert (= bs!395199 d!491664))

(declare-fun m!1965521 () Bool)

(assert (=> bs!395199 m!1965521))

(assert (=> b!1631257 d!491664))

(declare-fun d!491666 () Bool)

(assert (=> d!491666 (= (seqFromList!2060 (t!149477 (t!149477 tokens!457))) (fromListB!906 (t!149477 (t!149477 tokens!457))))))

(declare-fun bs!395200 () Bool)

(assert (= bs!395200 d!491666))

(declare-fun m!1965523 () Bool)

(assert (=> bs!395200 m!1965523))

(assert (=> b!1631257 d!491666))

(declare-fun d!491668 () Bool)

(assert (=> d!491668 (= (list!7044 (_1!10157 lt!592174)) (list!7044 (prepend!687 (seqFromList!2060 (t!149477 (t!149477 tokens!457))) (h!23309 (t!149477 tokens!457)))))))

(declare-fun lt!592870 () Unit!29131)

(declare-fun choose!9814 (Token!5876 List!17978 BalanceConc!11862) Unit!29131)

(assert (=> d!491668 (= lt!592870 (choose!9814 (h!23309 (t!149477 tokens!457)) (t!149477 (t!149477 tokens!457)) (_1!10157 lt!592174)))))

(declare-fun $colon$colon!337 (List!17978 Token!5876) List!17978)

(assert (=> d!491668 (= (list!7044 (_1!10157 lt!592174)) (list!7044 (seqFromList!2060 ($colon$colon!337 (t!149477 (t!149477 tokens!457)) (h!23309 (t!149477 tokens!457))))))))

(assert (=> d!491668 (= (seqFromListBHdTlConstructive!232 (h!23309 (t!149477 tokens!457)) (t!149477 (t!149477 tokens!457)) (_1!10157 lt!592174)) lt!592870)))

(declare-fun bs!395201 () Bool)

(assert (= bs!395201 d!491668))

(assert (=> bs!395201 m!1964261))

(assert (=> bs!395201 m!1964261))

(assert (=> bs!395201 m!1964263))

(assert (=> bs!395201 m!1964263))

(assert (=> bs!395201 m!1964265))

(declare-fun m!1965525 () Bool)

(assert (=> bs!395201 m!1965525))

(declare-fun m!1965527 () Bool)

(assert (=> bs!395201 m!1965527))

(declare-fun m!1965529 () Bool)

(assert (=> bs!395201 m!1965529))

(assert (=> bs!395201 m!1964273))

(assert (=> bs!395201 m!1965525))

(assert (=> bs!395201 m!1965527))

(declare-fun m!1965531 () Bool)

(assert (=> bs!395201 m!1965531))

(assert (=> b!1631257 d!491668))

(declare-fun d!491670 () Bool)

(assert (=> d!491670 (= (isDefined!2706 lt!592171) (not (isEmpty!10943 lt!592171)))))

(declare-fun bs!395202 () Bool)

(assert (= bs!395202 d!491670))

(declare-fun m!1965533 () Bool)

(assert (=> bs!395202 m!1965533))

(assert (=> b!1631243 d!491670))

(declare-fun b!1631828 () Bool)

(declare-fun e!1046485 () Unit!29131)

(declare-fun Unit!29152 () Unit!29131)

(assert (=> b!1631828 (= e!1046485 Unit!29152)))

(declare-fun lt!592905 () List!17976)

(assert (=> b!1631828 (= lt!592905 (++!4779 lt!592164 lt!592157))))

(declare-fun lt!592909 () Unit!29131)

(declare-fun lt!592917 () Token!5876)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!183 (LexerInterface!2784 Rule!6110 List!17977 List!17976) Unit!29131)

(assert (=> b!1631828 (= lt!592909 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!183 thiss!17113 (rule!4989 lt!592917) rules!1846 lt!592905))))

(assert (=> b!1631828 (isEmpty!10943 (maxPrefixOneRule!781 thiss!17113 (rule!4989 lt!592917) lt!592905))))

(declare-fun lt!592914 () Unit!29131)

(assert (=> b!1631828 (= lt!592914 lt!592909)))

(declare-fun lt!592920 () List!17976)

(assert (=> b!1631828 (= lt!592920 (list!7043 (charsOf!1804 lt!592917)))))

(declare-fun lt!592921 () Unit!29131)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!179 (LexerInterface!2784 Rule!6110 List!17976 List!17976) Unit!29131)

(assert (=> b!1631828 (= lt!592921 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!179 thiss!17113 (rule!4989 lt!592917) lt!592920 (++!4779 lt!592164 lt!592157)))))

(assert (=> b!1631828 (not (matchR!1982 (regex!3155 (rule!4989 lt!592917)) lt!592920))))

(declare-fun lt!592918 () Unit!29131)

(assert (=> b!1631828 (= lt!592918 lt!592921)))

(assert (=> b!1631828 false))

(declare-fun b!1631829 () Bool)

(declare-fun Unit!29153 () Unit!29131)

(assert (=> b!1631829 (= e!1046485 Unit!29153)))

(declare-fun d!491672 () Bool)

(assert (=> d!491672 (isDefined!2706 (maxPrefix!1348 thiss!17113 rules!1846 (++!4779 lt!592164 lt!592157)))))

(declare-fun lt!592915 () Unit!29131)

(assert (=> d!491672 (= lt!592915 e!1046485)))

(declare-fun c!265643 () Bool)

(assert (=> d!491672 (= c!265643 (isEmpty!10943 (maxPrefix!1348 thiss!17113 rules!1846 (++!4779 lt!592164 lt!592157))))))

(declare-fun lt!592911 () Unit!29131)

(declare-fun lt!592910 () Unit!29131)

(assert (=> d!491672 (= lt!592911 lt!592910)))

(declare-fun e!1046486 () Bool)

(assert (=> d!491672 e!1046486))

(declare-fun res!730131 () Bool)

(assert (=> d!491672 (=> (not res!730131) (not e!1046486))))

(assert (=> d!491672 (= res!730131 (isDefined!2708 (getRuleFromTag!289 thiss!17113 rules!1846 (tag!3435 (rule!4989 lt!592917)))))))

(assert (=> d!491672 (= lt!592910 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!289 thiss!17113 rules!1846 lt!592164 lt!592917))))

(declare-fun lt!592907 () Unit!29131)

(declare-fun lt!592908 () Unit!29131)

(assert (=> d!491672 (= lt!592907 lt!592908)))

(declare-fun lt!592912 () List!17976)

(assert (=> d!491672 (isPrefix!1415 lt!592912 (++!4779 lt!592164 lt!592157))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!175 (List!17976 List!17976 List!17976) Unit!29131)

(assert (=> d!491672 (= lt!592908 (lemmaPrefixStaysPrefixWhenAddingToSuffix!175 lt!592912 lt!592164 lt!592157))))

(assert (=> d!491672 (= lt!592912 (list!7043 (charsOf!1804 lt!592917)))))

(declare-fun lt!592913 () Unit!29131)

(declare-fun lt!592906 () Unit!29131)

(assert (=> d!491672 (= lt!592913 lt!592906)))

(declare-fun lt!592916 () List!17976)

(declare-fun lt!592919 () List!17976)

(assert (=> d!491672 (isPrefix!1415 lt!592916 (++!4779 lt!592916 lt!592919))))

(assert (=> d!491672 (= lt!592906 (lemmaConcatTwoListThenFirstIsPrefix!940 lt!592916 lt!592919))))

(assert (=> d!491672 (= lt!592919 (_2!10155 (get!5173 (maxPrefix!1348 thiss!17113 rules!1846 lt!592164))))))

(assert (=> d!491672 (= lt!592916 (list!7043 (charsOf!1804 lt!592917)))))

(declare-fun head!3482 (List!17978) Token!5876)

(assert (=> d!491672 (= lt!592917 (head!3482 (list!7044 (_1!10157 (lex!1268 thiss!17113 rules!1846 (seqFromList!2059 lt!592164))))))))

(assert (=> d!491672 (not (isEmpty!10939 rules!1846))))

(assert (=> d!491672 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!358 thiss!17113 rules!1846 lt!592164 lt!592157) lt!592915)))

(declare-fun b!1631826 () Bool)

(declare-fun res!730130 () Bool)

(assert (=> b!1631826 (=> (not res!730130) (not e!1046486))))

(assert (=> b!1631826 (= res!730130 (matchR!1982 (regex!3155 (get!5175 (getRuleFromTag!289 thiss!17113 rules!1846 (tag!3435 (rule!4989 lt!592917))))) (list!7043 (charsOf!1804 lt!592917))))))

(declare-fun b!1631827 () Bool)

(assert (=> b!1631827 (= e!1046486 (= (rule!4989 lt!592917) (get!5175 (getRuleFromTag!289 thiss!17113 rules!1846 (tag!3435 (rule!4989 lt!592917))))))))

(assert (= (and d!491672 res!730131) b!1631826))

(assert (= (and b!1631826 res!730130) b!1631827))

(assert (= (and d!491672 c!265643) b!1631828))

(assert (= (and d!491672 (not c!265643)) b!1631829))

(declare-fun m!1965535 () Bool)

(assert (=> b!1631828 m!1965535))

(declare-fun m!1965537 () Bool)

(assert (=> b!1631828 m!1965537))

(declare-fun m!1965539 () Bool)

(assert (=> b!1631828 m!1965539))

(assert (=> b!1631828 m!1965535))

(declare-fun m!1965541 () Bool)

(assert (=> b!1631828 m!1965541))

(declare-fun m!1965543 () Bool)

(assert (=> b!1631828 m!1965543))

(declare-fun m!1965545 () Bool)

(assert (=> b!1631828 m!1965545))

(assert (=> b!1631828 m!1964309))

(declare-fun m!1965547 () Bool)

(assert (=> b!1631828 m!1965547))

(assert (=> b!1631828 m!1964309))

(assert (=> b!1631828 m!1965537))

(assert (=> d!491672 m!1964355))

(assert (=> d!491672 m!1964357))

(declare-fun m!1965549 () Bool)

(assert (=> d!491672 m!1965549))

(assert (=> d!491672 m!1964355))

(assert (=> d!491672 m!1964303))

(declare-fun m!1965551 () Bool)

(assert (=> d!491672 m!1965551))

(declare-fun m!1965553 () Bool)

(assert (=> d!491672 m!1965553))

(declare-fun m!1965555 () Bool)

(assert (=> d!491672 m!1965555))

(declare-fun m!1965557 () Bool)

(assert (=> d!491672 m!1965557))

(declare-fun m!1965559 () Bool)

(assert (=> d!491672 m!1965559))

(assert (=> d!491672 m!1965557))

(declare-fun m!1965561 () Bool)

(assert (=> d!491672 m!1965561))

(assert (=> d!491672 m!1965553))

(declare-fun m!1965563 () Bool)

(assert (=> d!491672 m!1965563))

(assert (=> d!491672 m!1964469))

(assert (=> d!491672 m!1964309))

(assert (=> d!491672 m!1965537))

(declare-fun m!1965565 () Bool)

(assert (=> d!491672 m!1965565))

(assert (=> d!491672 m!1964303))

(assert (=> d!491672 m!1965537))

(assert (=> d!491672 m!1965539))

(assert (=> d!491672 m!1964309))

(declare-fun m!1965567 () Bool)

(assert (=> d!491672 m!1965567))

(assert (=> d!491672 m!1964309))

(assert (=> d!491672 m!1965553))

(assert (=> d!491672 m!1964469))

(declare-fun m!1965569 () Bool)

(assert (=> d!491672 m!1965569))

(assert (=> d!491672 m!1965549))

(declare-fun m!1965571 () Bool)

(assert (=> d!491672 m!1965571))

(assert (=> d!491672 m!1964361))

(declare-fun m!1965573 () Bool)

(assert (=> d!491672 m!1965573))

(assert (=> b!1631826 m!1965557))

(assert (=> b!1631826 m!1965539))

(declare-fun m!1965575 () Bool)

(assert (=> b!1631826 m!1965575))

(assert (=> b!1631826 m!1965537))

(assert (=> b!1631826 m!1965537))

(assert (=> b!1631826 m!1965539))

(assert (=> b!1631826 m!1965557))

(declare-fun m!1965577 () Bool)

(assert (=> b!1631826 m!1965577))

(assert (=> b!1631827 m!1965557))

(assert (=> b!1631827 m!1965557))

(assert (=> b!1631827 m!1965577))

(assert (=> b!1631243 d!491672))

(declare-fun d!491674 () Bool)

(assert (=> d!491674 (= (list!7044 (_1!10157 lt!592174)) (list!7048 (c!265529 (_1!10157 lt!592174))))))

(declare-fun bs!395203 () Bool)

(assert (= bs!395203 d!491674))

(declare-fun m!1965579 () Bool)

(assert (=> bs!395203 m!1965579))

(assert (=> b!1631242 d!491674))

(declare-fun d!491676 () Bool)

(declare-fun e!1046491 () Bool)

(assert (=> d!491676 e!1046491))

(declare-fun res!730134 () Bool)

(assert (=> d!491676 (=> (not res!730134) (not e!1046491))))

(assert (=> d!491676 (= res!730134 (= (list!7044 (_1!10157 (lex!1268 thiss!17113 rules!1846 (print!1315 thiss!17113 (seqFromList!2060 (t!149477 tokens!457)))))) (t!149477 tokens!457)))))

(declare-fun lt!592995 () Unit!29131)

(declare-fun e!1046492 () Unit!29131)

(assert (=> d!491676 (= lt!592995 e!1046492)))

(declare-fun c!265646 () Bool)

(assert (=> d!491676 (= c!265646 (or ((_ is Nil!17908) (t!149477 tokens!457)) ((_ is Nil!17908) (t!149477 (t!149477 tokens!457)))))))

(assert (=> d!491676 (not (isEmpty!10939 rules!1846))))

(assert (=> d!491676 (= (theoremInvertabilityWhenTokenListSeparable!229 thiss!17113 rules!1846 (t!149477 tokens!457)) lt!592995)))

(declare-fun b!1631836 () Bool)

(declare-fun Unit!29158 () Unit!29131)

(assert (=> b!1631836 (= e!1046492 Unit!29158)))

(declare-fun b!1631837 () Bool)

(declare-fun Unit!29159 () Unit!29131)

(assert (=> b!1631837 (= e!1046492 Unit!29159)))

(declare-fun lt!592984 () BalanceConc!11860)

(assert (=> b!1631837 (= lt!592984 (print!1315 thiss!17113 (seqFromList!2060 (t!149477 tokens!457))))))

(declare-fun lt!592989 () BalanceConc!11860)

(assert (=> b!1631837 (= lt!592989 (print!1315 thiss!17113 (seqFromList!2060 (t!149477 (t!149477 tokens!457)))))))

(declare-fun lt!592994 () tuple2!17510)

(assert (=> b!1631837 (= lt!592994 (lex!1268 thiss!17113 rules!1846 lt!592989))))

(declare-fun lt!592998 () List!17976)

(assert (=> b!1631837 (= lt!592998 (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457)))))))

(declare-fun lt!592988 () List!17976)

(assert (=> b!1631837 (= lt!592988 (list!7043 lt!592989))))

(declare-fun lt!592977 () Unit!29131)

(assert (=> b!1631837 (= lt!592977 (lemmaConcatTwoListThenFirstIsPrefix!940 lt!592998 lt!592988))))

(assert (=> b!1631837 (isPrefix!1415 lt!592998 (++!4779 lt!592998 lt!592988))))

(declare-fun lt!592997 () Unit!29131)

(assert (=> b!1631837 (= lt!592997 lt!592977)))

(declare-fun lt!592979 () Unit!29131)

(assert (=> b!1631837 (= lt!592979 (theoremInvertabilityWhenTokenListSeparable!229 thiss!17113 rules!1846 (t!149477 (t!149477 tokens!457))))))

(declare-fun lt!592993 () Unit!29131)

(assert (=> b!1631837 (= lt!592993 (seqFromListBHdTlConstructive!232 (h!23309 (t!149477 (t!149477 tokens!457))) (t!149477 (t!149477 (t!149477 tokens!457))) (_1!10157 lt!592994)))))

(assert (=> b!1631837 (= (list!7044 (_1!10157 lt!592994)) (list!7044 (prepend!687 (seqFromList!2060 (t!149477 (t!149477 (t!149477 tokens!457)))) (h!23309 (t!149477 (t!149477 tokens!457))))))))

(declare-fun lt!592974 () Unit!29131)

(assert (=> b!1631837 (= lt!592974 lt!592993)))

(declare-fun lt!592980 () Option!3339)

(assert (=> b!1631837 (= lt!592980 (maxPrefix!1348 thiss!17113 rules!1846 (list!7043 lt!592984)))))

(assert (=> b!1631837 (= (print!1315 thiss!17113 (singletonSeq!1589 (h!23309 (t!149477 tokens!457)))) (printTailRec!837 thiss!17113 (singletonSeq!1589 (h!23309 (t!149477 tokens!457))) 0 (BalanceConc!11861 Empty!5958)))))

(declare-fun lt!592981 () Unit!29131)

(declare-fun Unit!29165 () Unit!29131)

(assert (=> b!1631837 (= lt!592981 Unit!29165)))

(declare-fun lt!592987 () Unit!29131)

(assert (=> b!1631837 (= lt!592987 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!358 thiss!17113 rules!1846 (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457)))) (list!7043 lt!592989)))))

(assert (=> b!1631837 (= (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457)))) (originalCharacters!3969 (h!23309 (t!149477 tokens!457))))))

(declare-fun lt!592978 () Unit!29131)

(declare-fun Unit!29167 () Unit!29131)

(assert (=> b!1631837 (= lt!592978 Unit!29167)))

(assert (=> b!1631837 (= (list!7043 (singletonSeq!1588 (apply!4602 (charsOf!1804 (h!23309 (t!149477 (t!149477 tokens!457)))) 0))) (Cons!17906 (head!3479 (originalCharacters!3969 (h!23309 (t!149477 (t!149477 tokens!457))))) Nil!17906))))

(declare-fun lt!592976 () Unit!29131)

(declare-fun Unit!29169 () Unit!29131)

(assert (=> b!1631837 (= lt!592976 Unit!29169)))

(assert (=> b!1631837 (= (list!7043 (singletonSeq!1588 (apply!4602 (charsOf!1804 (h!23309 (t!149477 (t!149477 tokens!457)))) 0))) (Cons!17906 (head!3479 (list!7043 lt!592989)) Nil!17906))))

(declare-fun lt!592996 () Unit!29131)

(declare-fun Unit!29171 () Unit!29131)

(assert (=> b!1631837 (= lt!592996 Unit!29171)))

(assert (=> b!1631837 (= (list!7043 (singletonSeq!1588 (apply!4602 (charsOf!1804 (h!23309 (t!149477 (t!149477 tokens!457)))) 0))) (Cons!17906 (head!3478 lt!592989) Nil!17906))))

(declare-fun lt!592983 () Unit!29131)

(declare-fun Unit!29172 () Unit!29131)

(assert (=> b!1631837 (= lt!592983 Unit!29172)))

(assert (=> b!1631837 (isDefined!2706 (maxPrefix!1348 thiss!17113 rules!1846 (originalCharacters!3969 (h!23309 (t!149477 tokens!457)))))))

(declare-fun lt!592990 () Unit!29131)

(declare-fun Unit!29174 () Unit!29131)

(assert (=> b!1631837 (= lt!592990 Unit!29174)))

(assert (=> b!1631837 (isDefined!2706 (maxPrefix!1348 thiss!17113 rules!1846 (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457))))))))

(declare-fun lt!592992 () Unit!29131)

(declare-fun Unit!29176 () Unit!29131)

(assert (=> b!1631837 (= lt!592992 Unit!29176)))

(declare-fun lt!592982 () Unit!29131)

(declare-fun Unit!29177 () Unit!29131)

(assert (=> b!1631837 (= lt!592982 Unit!29177)))

(assert (=> b!1631837 (= (_1!10155 (get!5173 (maxPrefix!1348 thiss!17113 rules!1846 (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457))))))) (h!23309 (t!149477 tokens!457)))))

(declare-fun lt!592991 () Unit!29131)

(declare-fun Unit!29178 () Unit!29131)

(assert (=> b!1631837 (= lt!592991 Unit!29178)))

(assert (=> b!1631837 (isEmpty!10937 (_2!10155 (get!5173 (maxPrefix!1348 thiss!17113 rules!1846 (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457))))))))))

(declare-fun lt!592985 () Unit!29131)

(declare-fun Unit!29179 () Unit!29131)

(assert (=> b!1631837 (= lt!592985 Unit!29179)))

(assert (=> b!1631837 (matchR!1982 (regex!3155 (rule!4989 (h!23309 (t!149477 tokens!457)))) (list!7043 (charsOf!1804 (h!23309 (t!149477 tokens!457)))))))

(declare-fun lt!592975 () Unit!29131)

(declare-fun Unit!29180 () Unit!29131)

(assert (=> b!1631837 (= lt!592975 Unit!29180)))

(assert (=> b!1631837 (= (rule!4989 (h!23309 (t!149477 tokens!457))) (rule!4989 (h!23309 (t!149477 tokens!457))))))

(declare-fun lt!592999 () Unit!29131)

(declare-fun Unit!29181 () Unit!29131)

(assert (=> b!1631837 (= lt!592999 Unit!29181)))

(declare-fun lt!592986 () Unit!29131)

(assert (=> b!1631837 (= lt!592986 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!120 thiss!17113 rules!1846 (h!23309 (t!149477 tokens!457)) (rule!4989 (h!23309 (t!149477 tokens!457))) (list!7043 lt!592989)))))

(declare-fun b!1631838 () Bool)

(assert (=> b!1631838 (= e!1046491 (isEmpty!10947 (_2!10157 (lex!1268 thiss!17113 rules!1846 (print!1315 thiss!17113 (seqFromList!2060 (t!149477 tokens!457)))))))))

(assert (= (and d!491676 c!265646) b!1631836))

(assert (= (and d!491676 (not c!265646)) b!1631837))

(assert (= (and d!491676 res!730134) b!1631838))

(assert (=> d!491676 m!1964313))

(declare-fun m!1965581 () Bool)

(assert (=> d!491676 m!1965581))

(declare-fun m!1965583 () Bool)

(assert (=> d!491676 m!1965583))

(assert (=> d!491676 m!1964313))

(assert (=> d!491676 m!1965581))

(declare-fun m!1965585 () Bool)

(assert (=> d!491676 m!1965585))

(assert (=> d!491676 m!1964361))

(declare-fun m!1965587 () Bool)

(assert (=> b!1631837 m!1965587))

(assert (=> b!1631837 m!1964313))

(assert (=> b!1631837 m!1965581))

(declare-fun m!1965589 () Bool)

(assert (=> b!1631837 m!1965589))

(declare-fun m!1965591 () Bool)

(assert (=> b!1631837 m!1965591))

(assert (=> b!1631837 m!1964291))

(assert (=> b!1631837 m!1964883))

(declare-fun m!1965593 () Bool)

(assert (=> b!1631837 m!1965593))

(declare-fun m!1965595 () Bool)

(assert (=> b!1631837 m!1965595))

(declare-fun m!1965597 () Bool)

(assert (=> b!1631837 m!1965597))

(assert (=> b!1631837 m!1965589))

(declare-fun m!1965599 () Bool)

(assert (=> b!1631837 m!1965599))

(declare-fun m!1965601 () Bool)

(assert (=> b!1631837 m!1965601))

(declare-fun m!1965603 () Bool)

(assert (=> b!1631837 m!1965603))

(declare-fun m!1965605 () Bool)

(assert (=> b!1631837 m!1965605))

(assert (=> b!1631837 m!1965589))

(declare-fun m!1965607 () Bool)

(assert (=> b!1631837 m!1965607))

(declare-fun m!1965609 () Bool)

(assert (=> b!1631837 m!1965609))

(declare-fun m!1965611 () Bool)

(assert (=> b!1631837 m!1965611))

(assert (=> b!1631837 m!1964261))

(assert (=> b!1631837 m!1965603))

(declare-fun m!1965613 () Bool)

(assert (=> b!1631837 m!1965613))

(declare-fun m!1965615 () Bool)

(assert (=> b!1631837 m!1965615))

(declare-fun m!1965617 () Bool)

(assert (=> b!1631837 m!1965617))

(assert (=> b!1631837 m!1965609))

(declare-fun m!1965619 () Bool)

(assert (=> b!1631837 m!1965619))

(declare-fun m!1965621 () Bool)

(assert (=> b!1631837 m!1965621))

(declare-fun m!1965623 () Bool)

(assert (=> b!1631837 m!1965623))

(assert (=> b!1631837 m!1964883))

(assert (=> b!1631837 m!1965589))

(declare-fun m!1965625 () Bool)

(assert (=> b!1631837 m!1965625))

(assert (=> b!1631837 m!1964883))

(declare-fun m!1965627 () Bool)

(assert (=> b!1631837 m!1965627))

(declare-fun m!1965629 () Bool)

(assert (=> b!1631837 m!1965629))

(declare-fun m!1965631 () Bool)

(assert (=> b!1631837 m!1965631))

(assert (=> b!1631837 m!1965621))

(declare-fun m!1965633 () Bool)

(assert (=> b!1631837 m!1965633))

(assert (=> b!1631837 m!1964313))

(declare-fun m!1965635 () Bool)

(assert (=> b!1631837 m!1965635))

(declare-fun m!1965637 () Bool)

(assert (=> b!1631837 m!1965637))

(assert (=> b!1631837 m!1965635))

(declare-fun m!1965639 () Bool)

(assert (=> b!1631837 m!1965639))

(assert (=> b!1631837 m!1965613))

(assert (=> b!1631837 m!1965629))

(assert (=> b!1631837 m!1965601))

(declare-fun m!1965641 () Bool)

(assert (=> b!1631837 m!1965641))

(declare-fun m!1965643 () Bool)

(assert (=> b!1631837 m!1965643))

(declare-fun m!1965645 () Bool)

(assert (=> b!1631837 m!1965645))

(assert (=> b!1631837 m!1965601))

(declare-fun m!1965647 () Bool)

(assert (=> b!1631837 m!1965647))

(assert (=> b!1631837 m!1964883))

(assert (=> b!1631837 m!1965621))

(assert (=> b!1631837 m!1964261))

(declare-fun m!1965649 () Bool)

(assert (=> b!1631837 m!1965649))

(assert (=> b!1631837 m!1964291))

(assert (=> b!1631837 m!1965615))

(assert (=> b!1631837 m!1965643))

(assert (=> b!1631837 m!1965639))

(declare-fun m!1965651 () Bool)

(assert (=> b!1631837 m!1965651))

(assert (=> b!1631838 m!1964313))

(assert (=> b!1631838 m!1964313))

(assert (=> b!1631838 m!1965581))

(assert (=> b!1631838 m!1965581))

(assert (=> b!1631838 m!1965585))

(declare-fun m!1965653 () Bool)

(assert (=> b!1631838 m!1965653))

(assert (=> b!1631242 d!491676))

(declare-fun b!1631848 () Bool)

(declare-fun res!730143 () Bool)

(declare-fun e!1046501 () Bool)

(assert (=> b!1631848 (=> (not res!730143) (not e!1046501))))

(assert (=> b!1631848 (= res!730143 (= (head!3479 lt!592164) (head!3479 lt!592155)))))

(declare-fun b!1631847 () Bool)

(declare-fun e!1046500 () Bool)

(assert (=> b!1631847 (= e!1046500 e!1046501)))

(declare-fun res!730145 () Bool)

(assert (=> b!1631847 (=> (not res!730145) (not e!1046501))))

(assert (=> b!1631847 (= res!730145 (not ((_ is Nil!17906) lt!592155)))))

(declare-fun b!1631849 () Bool)

(assert (=> b!1631849 (= e!1046501 (isPrefix!1415 (tail!2376 lt!592164) (tail!2376 lt!592155)))))

(declare-fun d!491678 () Bool)

(declare-fun e!1046499 () Bool)

(assert (=> d!491678 e!1046499))

(declare-fun res!730144 () Bool)

(assert (=> d!491678 (=> res!730144 e!1046499)))

(declare-fun lt!593002 () Bool)

(assert (=> d!491678 (= res!730144 (not lt!593002))))

(assert (=> d!491678 (= lt!593002 e!1046500)))

(declare-fun res!730146 () Bool)

(assert (=> d!491678 (=> res!730146 e!1046500)))

(assert (=> d!491678 (= res!730146 ((_ is Nil!17906) lt!592164))))

(assert (=> d!491678 (= (isPrefix!1415 lt!592164 lt!592155) lt!593002)))

(declare-fun b!1631850 () Bool)

(assert (=> b!1631850 (= e!1046499 (>= (size!14314 lt!592155) (size!14314 lt!592164)))))

(assert (= (and d!491678 (not res!730146)) b!1631847))

(assert (= (and b!1631847 res!730145) b!1631848))

(assert (= (and b!1631848 res!730143) b!1631849))

(assert (= (and d!491678 (not res!730144)) b!1631850))

(assert (=> b!1631848 m!1964983))

(declare-fun m!1965655 () Bool)

(assert (=> b!1631848 m!1965655))

(assert (=> b!1631849 m!1964989))

(declare-fun m!1965657 () Bool)

(assert (=> b!1631849 m!1965657))

(assert (=> b!1631849 m!1964989))

(assert (=> b!1631849 m!1965657))

(declare-fun m!1965659 () Bool)

(assert (=> b!1631849 m!1965659))

(declare-fun m!1965661 () Bool)

(assert (=> b!1631850 m!1965661))

(assert (=> b!1631850 m!1964441))

(assert (=> b!1631242 d!491678))

(declare-fun d!491680 () Bool)

(assert (=> d!491680 (isPrefix!1415 lt!592164 (++!4779 lt!592164 lt!592157))))

(declare-fun lt!593005 () Unit!29131)

(declare-fun choose!9815 (List!17976 List!17976) Unit!29131)

(assert (=> d!491680 (= lt!593005 (choose!9815 lt!592164 lt!592157))))

(assert (=> d!491680 (= (lemmaConcatTwoListThenFirstIsPrefix!940 lt!592164 lt!592157) lt!593005)))

(declare-fun bs!395204 () Bool)

(assert (= bs!395204 d!491680))

(assert (=> bs!395204 m!1964309))

(assert (=> bs!395204 m!1964309))

(declare-fun m!1965663 () Bool)

(assert (=> bs!395204 m!1965663))

(declare-fun m!1965665 () Bool)

(assert (=> bs!395204 m!1965665))

(assert (=> b!1631242 d!491680))

(declare-fun d!491682 () Bool)

(declare-fun res!730151 () Bool)

(declare-fun e!1046504 () Bool)

(assert (=> d!491682 (=> (not res!730151) (not e!1046504))))

(assert (=> d!491682 (= res!730151 (not (isEmpty!10937 (originalCharacters!3969 (h!23309 tokens!457)))))))

(assert (=> d!491682 (= (inv!23278 (h!23309 tokens!457)) e!1046504)))

(declare-fun b!1631855 () Bool)

(declare-fun res!730152 () Bool)

(assert (=> b!1631855 (=> (not res!730152) (not e!1046504))))

(assert (=> b!1631855 (= res!730152 (= (originalCharacters!3969 (h!23309 tokens!457)) (list!7043 (dynLambda!7986 (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (value!99590 (h!23309 tokens!457))))))))

(declare-fun b!1631856 () Bool)

(assert (=> b!1631856 (= e!1046504 (= (size!14310 (h!23309 tokens!457)) (size!14314 (originalCharacters!3969 (h!23309 tokens!457)))))))

(assert (= (and d!491682 res!730151) b!1631855))

(assert (= (and b!1631855 res!730152) b!1631856))

(declare-fun b_lambda!51351 () Bool)

(assert (=> (not b_lambda!51351) (not b!1631855)))

(assert (=> b!1631855 t!149492))

(declare-fun b_and!115713 () Bool)

(assert (= b_and!115701 (and (=> t!149492 result!112954) b_and!115713)))

(assert (=> b!1631855 t!149494))

(declare-fun b_and!115715 () Bool)

(assert (= b_and!115703 (and (=> t!149494 result!112956) b_and!115715)))

(declare-fun m!1965667 () Bool)

(assert (=> d!491682 m!1965667))

(assert (=> b!1631855 m!1964945))

(assert (=> b!1631855 m!1964945))

(declare-fun m!1965669 () Bool)

(assert (=> b!1631855 m!1965669))

(assert (=> b!1631856 m!1965023))

(assert (=> b!1631240 d!491682))

(declare-fun d!491684 () Bool)

(assert (=> d!491684 (= (isEmpty!10939 rules!1846) ((_ is Nil!17907) rules!1846))))

(assert (=> b!1631261 d!491684))

(declare-fun d!491686 () Bool)

(declare-fun lt!593006 () BalanceConc!11860)

(assert (=> d!491686 (= (list!7043 lt!593006) (printList!899 thiss!17113 (list!7044 lt!592173)))))

(assert (=> d!491686 (= lt!593006 (printTailRec!837 thiss!17113 lt!592173 0 (BalanceConc!11861 Empty!5958)))))

(assert (=> d!491686 (= (print!1315 thiss!17113 lt!592173) lt!593006)))

(declare-fun bs!395205 () Bool)

(assert (= bs!395205 d!491686))

(declare-fun m!1965671 () Bool)

(assert (=> bs!395205 m!1965671))

(declare-fun m!1965673 () Bool)

(assert (=> bs!395205 m!1965673))

(assert (=> bs!395205 m!1965673))

(declare-fun m!1965675 () Bool)

(assert (=> bs!395205 m!1965675))

(assert (=> bs!395205 m!1964343))

(assert (=> b!1631262 d!491686))

(declare-fun b!1631857 () Bool)

(declare-fun e!1046505 () Option!3339)

(declare-fun lt!593007 () Option!3339)

(declare-fun lt!593011 () Option!3339)

(assert (=> b!1631857 (= e!1046505 (ite (and ((_ is None!3338) lt!593007) ((_ is None!3338) lt!593011)) None!3338 (ite ((_ is None!3338) lt!593011) lt!593007 (ite ((_ is None!3338) lt!593007) lt!593011 (ite (>= (size!14310 (_1!10155 (v!24397 lt!593007))) (size!14310 (_1!10155 (v!24397 lt!593011)))) lt!593007 lt!593011)))))))

(declare-fun call!105548 () Option!3339)

(assert (=> b!1631857 (= lt!593007 call!105548)))

(assert (=> b!1631857 (= lt!593011 (maxPrefix!1348 thiss!17113 (t!149476 rules!1846) lt!592165))))

(declare-fun b!1631858 () Bool)

(declare-fun res!730158 () Bool)

(declare-fun e!1046506 () Bool)

(assert (=> b!1631858 (=> (not res!730158) (not e!1046506))))

(declare-fun lt!593009 () Option!3339)

(assert (=> b!1631858 (= res!730158 (= (value!99590 (_1!10155 (get!5173 lt!593009))) (apply!4611 (transformation!3155 (rule!4989 (_1!10155 (get!5173 lt!593009)))) (seqFromList!2059 (originalCharacters!3969 (_1!10155 (get!5173 lt!593009)))))))))

(declare-fun b!1631859 () Bool)

(declare-fun res!730154 () Bool)

(assert (=> b!1631859 (=> (not res!730154) (not e!1046506))))

(assert (=> b!1631859 (= res!730154 (= (++!4779 (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!593009)))) (_2!10155 (get!5173 lt!593009))) lt!592165))))

(declare-fun b!1631861 () Bool)

(assert (=> b!1631861 (= e!1046505 call!105548)))

(declare-fun b!1631862 () Bool)

(declare-fun res!730153 () Bool)

(assert (=> b!1631862 (=> (not res!730153) (not e!1046506))))

(assert (=> b!1631862 (= res!730153 (< (size!14314 (_2!10155 (get!5173 lt!593009))) (size!14314 lt!592165)))))

(declare-fun b!1631860 () Bool)

(assert (=> b!1631860 (= e!1046506 (contains!3132 rules!1846 (rule!4989 (_1!10155 (get!5173 lt!593009)))))))

(declare-fun d!491688 () Bool)

(declare-fun e!1046507 () Bool)

(assert (=> d!491688 e!1046507))

(declare-fun res!730159 () Bool)

(assert (=> d!491688 (=> res!730159 e!1046507)))

(assert (=> d!491688 (= res!730159 (isEmpty!10943 lt!593009))))

(assert (=> d!491688 (= lt!593009 e!1046505)))

(declare-fun c!265647 () Bool)

(assert (=> d!491688 (= c!265647 (and ((_ is Cons!17907) rules!1846) ((_ is Nil!17907) (t!149476 rules!1846))))))

(declare-fun lt!593008 () Unit!29131)

(declare-fun lt!593010 () Unit!29131)

(assert (=> d!491688 (= lt!593008 lt!593010)))

(assert (=> d!491688 (isPrefix!1415 lt!592165 lt!592165)))

(assert (=> d!491688 (= lt!593010 (lemmaIsPrefixRefl!965 lt!592165 lt!592165))))

(assert (=> d!491688 (rulesValidInductive!979 thiss!17113 rules!1846)))

(assert (=> d!491688 (= (maxPrefix!1348 thiss!17113 rules!1846 lt!592165) lt!593009)))

(declare-fun bm!105543 () Bool)

(assert (=> bm!105543 (= call!105548 (maxPrefixOneRule!781 thiss!17113 (h!23308 rules!1846) lt!592165))))

(declare-fun b!1631863 () Bool)

(declare-fun res!730156 () Bool)

(assert (=> b!1631863 (=> (not res!730156) (not e!1046506))))

(assert (=> b!1631863 (= res!730156 (= (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!593009)))) (originalCharacters!3969 (_1!10155 (get!5173 lt!593009)))))))

(declare-fun b!1631864 () Bool)

(declare-fun res!730155 () Bool)

(assert (=> b!1631864 (=> (not res!730155) (not e!1046506))))

(assert (=> b!1631864 (= res!730155 (matchR!1982 (regex!3155 (rule!4989 (_1!10155 (get!5173 lt!593009)))) (list!7043 (charsOf!1804 (_1!10155 (get!5173 lt!593009))))))))

(declare-fun b!1631865 () Bool)

(assert (=> b!1631865 (= e!1046507 e!1046506)))

(declare-fun res!730157 () Bool)

(assert (=> b!1631865 (=> (not res!730157) (not e!1046506))))

(assert (=> b!1631865 (= res!730157 (isDefined!2706 lt!593009))))

(assert (= (and d!491688 c!265647) b!1631861))

(assert (= (and d!491688 (not c!265647)) b!1631857))

(assert (= (or b!1631861 b!1631857) bm!105543))

(assert (= (and d!491688 (not res!730159)) b!1631865))

(assert (= (and b!1631865 res!730157) b!1631863))

(assert (= (and b!1631863 res!730156) b!1631862))

(assert (= (and b!1631862 res!730153) b!1631859))

(assert (= (and b!1631859 res!730154) b!1631858))

(assert (= (and b!1631858 res!730158) b!1631864))

(assert (= (and b!1631864 res!730155) b!1631860))

(declare-fun m!1965677 () Bool)

(assert (=> bm!105543 m!1965677))

(declare-fun m!1965679 () Bool)

(assert (=> b!1631862 m!1965679))

(declare-fun m!1965681 () Bool)

(assert (=> b!1631862 m!1965681))

(declare-fun m!1965683 () Bool)

(assert (=> b!1631862 m!1965683))

(assert (=> b!1631859 m!1965679))

(declare-fun m!1965685 () Bool)

(assert (=> b!1631859 m!1965685))

(assert (=> b!1631859 m!1965685))

(declare-fun m!1965687 () Bool)

(assert (=> b!1631859 m!1965687))

(assert (=> b!1631859 m!1965687))

(declare-fun m!1965689 () Bool)

(assert (=> b!1631859 m!1965689))

(assert (=> b!1631864 m!1965679))

(assert (=> b!1631864 m!1965685))

(assert (=> b!1631864 m!1965685))

(assert (=> b!1631864 m!1965687))

(assert (=> b!1631864 m!1965687))

(declare-fun m!1965691 () Bool)

(assert (=> b!1631864 m!1965691))

(assert (=> b!1631860 m!1965679))

(declare-fun m!1965693 () Bool)

(assert (=> b!1631860 m!1965693))

(declare-fun m!1965695 () Bool)

(assert (=> d!491688 m!1965695))

(assert (=> d!491688 m!1964411))

(assert (=> d!491688 m!1964413))

(assert (=> d!491688 m!1964415))

(assert (=> b!1631863 m!1965679))

(assert (=> b!1631863 m!1965685))

(assert (=> b!1631863 m!1965685))

(assert (=> b!1631863 m!1965687))

(assert (=> b!1631858 m!1965679))

(declare-fun m!1965697 () Bool)

(assert (=> b!1631858 m!1965697))

(assert (=> b!1631858 m!1965697))

(declare-fun m!1965699 () Bool)

(assert (=> b!1631858 m!1965699))

(declare-fun m!1965701 () Bool)

(assert (=> b!1631865 m!1965701))

(declare-fun m!1965703 () Bool)

(assert (=> b!1631857 m!1965703))

(assert (=> b!1631262 d!491688))

(declare-fun d!491690 () Bool)

(declare-fun lt!593032 () BalanceConc!11860)

(declare-fun printListTailRec!361 (LexerInterface!2784 List!17978 List!17976) List!17976)

(declare-fun dropList!620 (BalanceConc!11862 Int) List!17978)

(assert (=> d!491690 (= (list!7043 lt!593032) (printListTailRec!361 thiss!17113 (dropList!620 lt!592173 0) (list!7043 (BalanceConc!11861 Empty!5958))))))

(declare-fun e!1046512 () BalanceConc!11860)

(assert (=> d!491690 (= lt!593032 e!1046512)))

(declare-fun c!265650 () Bool)

(assert (=> d!491690 (= c!265650 (>= 0 (size!14316 lt!592173)))))

(declare-fun e!1046513 () Bool)

(assert (=> d!491690 e!1046513))

(declare-fun res!730162 () Bool)

(assert (=> d!491690 (=> (not res!730162) (not e!1046513))))

(assert (=> d!491690 (= res!730162 (>= 0 0))))

(assert (=> d!491690 (= (printTailRec!837 thiss!17113 lt!592173 0 (BalanceConc!11861 Empty!5958)) lt!593032)))

(declare-fun b!1631872 () Bool)

(assert (=> b!1631872 (= e!1046513 (<= 0 (size!14316 lt!592173)))))

(declare-fun b!1631873 () Bool)

(assert (=> b!1631873 (= e!1046512 (BalanceConc!11861 Empty!5958))))

(declare-fun b!1631874 () Bool)

(assert (=> b!1631874 (= e!1046512 (printTailRec!837 thiss!17113 lt!592173 (+ 0 1) (++!4780 (BalanceConc!11861 Empty!5958) (charsOf!1804 (apply!4606 lt!592173 0)))))))

(declare-fun lt!593030 () List!17978)

(assert (=> b!1631874 (= lt!593030 (list!7044 lt!592173))))

(declare-fun lt!593028 () Unit!29131)

(declare-fun lemmaDropApply!568 (List!17978 Int) Unit!29131)

(assert (=> b!1631874 (= lt!593028 (lemmaDropApply!568 lt!593030 0))))

(declare-fun drop!880 (List!17978 Int) List!17978)

(declare-fun apply!4612 (List!17978 Int) Token!5876)

(assert (=> b!1631874 (= (head!3482 (drop!880 lt!593030 0)) (apply!4612 lt!593030 0))))

(declare-fun lt!593026 () Unit!29131)

(assert (=> b!1631874 (= lt!593026 lt!593028)))

(declare-fun lt!593031 () List!17978)

(assert (=> b!1631874 (= lt!593031 (list!7044 lt!592173))))

(declare-fun lt!593029 () Unit!29131)

(declare-fun lemmaDropTail!548 (List!17978 Int) Unit!29131)

(assert (=> b!1631874 (= lt!593029 (lemmaDropTail!548 lt!593031 0))))

(declare-fun tail!2378 (List!17978) List!17978)

(assert (=> b!1631874 (= (tail!2378 (drop!880 lt!593031 0)) (drop!880 lt!593031 (+ 0 1)))))

(declare-fun lt!593027 () Unit!29131)

(assert (=> b!1631874 (= lt!593027 lt!593029)))

(assert (= (and d!491690 res!730162) b!1631872))

(assert (= (and d!491690 c!265650) b!1631873))

(assert (= (and d!491690 (not c!265650)) b!1631874))

(declare-fun m!1965705 () Bool)

(assert (=> d!491690 m!1965705))

(declare-fun m!1965707 () Bool)

(assert (=> d!491690 m!1965707))

(declare-fun m!1965709 () Bool)

(assert (=> d!491690 m!1965709))

(declare-fun m!1965711 () Bool)

(assert (=> d!491690 m!1965711))

(assert (=> d!491690 m!1965707))

(declare-fun m!1965713 () Bool)

(assert (=> d!491690 m!1965713))

(assert (=> d!491690 m!1965709))

(assert (=> b!1631872 m!1965713))

(declare-fun m!1965715 () Bool)

(assert (=> b!1631874 m!1965715))

(declare-fun m!1965717 () Bool)

(assert (=> b!1631874 m!1965717))

(declare-fun m!1965719 () Bool)

(assert (=> b!1631874 m!1965719))

(declare-fun m!1965721 () Bool)

(assert (=> b!1631874 m!1965721))

(declare-fun m!1965723 () Bool)

(assert (=> b!1631874 m!1965723))

(assert (=> b!1631874 m!1965673))

(declare-fun m!1965725 () Bool)

(assert (=> b!1631874 m!1965725))

(declare-fun m!1965727 () Bool)

(assert (=> b!1631874 m!1965727))

(declare-fun m!1965729 () Bool)

(assert (=> b!1631874 m!1965729))

(assert (=> b!1631874 m!1965719))

(assert (=> b!1631874 m!1965723))

(declare-fun m!1965731 () Bool)

(assert (=> b!1631874 m!1965731))

(declare-fun m!1965733 () Bool)

(assert (=> b!1631874 m!1965733))

(assert (=> b!1631874 m!1965727))

(declare-fun m!1965735 () Bool)

(assert (=> b!1631874 m!1965735))

(declare-fun m!1965737 () Bool)

(assert (=> b!1631874 m!1965737))

(assert (=> b!1631874 m!1965717))

(assert (=> b!1631874 m!1965725))

(assert (=> b!1631262 d!491690))

(declare-fun d!491692 () Bool)

(assert (=> d!491692 (= (list!7043 lt!592151) (list!7046 (c!265527 lt!592151)))))

(declare-fun bs!395206 () Bool)

(assert (= bs!395206 d!491692))

(declare-fun m!1965739 () Bool)

(assert (=> bs!395206 m!1965739))

(assert (=> b!1631262 d!491692))

(declare-fun d!491694 () Bool)

(declare-fun c!265653 () Bool)

(assert (=> d!491694 (= c!265653 ((_ is Cons!17908) (Cons!17908 (h!23309 tokens!457) Nil!17908)))))

(declare-fun e!1046516 () List!17976)

(assert (=> d!491694 (= (printList!899 thiss!17113 (Cons!17908 (h!23309 tokens!457) Nil!17908)) e!1046516)))

(declare-fun b!1631879 () Bool)

(assert (=> b!1631879 (= e!1046516 (++!4779 (list!7043 (charsOf!1804 (h!23309 (Cons!17908 (h!23309 tokens!457) Nil!17908)))) (printList!899 thiss!17113 (t!149477 (Cons!17908 (h!23309 tokens!457) Nil!17908)))))))

(declare-fun b!1631880 () Bool)

(assert (=> b!1631880 (= e!1046516 Nil!17906)))

(assert (= (and d!491694 c!265653) b!1631879))

(assert (= (and d!491694 (not c!265653)) b!1631880))

(declare-fun m!1965741 () Bool)

(assert (=> b!1631879 m!1965741))

(assert (=> b!1631879 m!1965741))

(declare-fun m!1965743 () Bool)

(assert (=> b!1631879 m!1965743))

(declare-fun m!1965745 () Bool)

(assert (=> b!1631879 m!1965745))

(assert (=> b!1631879 m!1965743))

(assert (=> b!1631879 m!1965745))

(declare-fun m!1965747 () Bool)

(assert (=> b!1631879 m!1965747))

(assert (=> b!1631262 d!491694))

(declare-fun d!491696 () Bool)

(declare-fun e!1046519 () Bool)

(assert (=> d!491696 e!1046519))

(declare-fun res!730165 () Bool)

(assert (=> d!491696 (=> (not res!730165) (not e!1046519))))

(declare-fun lt!593035 () BalanceConc!11862)

(assert (=> d!491696 (= res!730165 (= (list!7044 lt!593035) (Cons!17908 (h!23309 tokens!457) Nil!17908)))))

(declare-fun singleton!682 (Token!5876) BalanceConc!11862)

(assert (=> d!491696 (= lt!593035 (singleton!682 (h!23309 tokens!457)))))

(assert (=> d!491696 (= (singletonSeq!1589 (h!23309 tokens!457)) lt!593035)))

(declare-fun b!1631883 () Bool)

(assert (=> b!1631883 (= e!1046519 (isBalanced!1802 (c!265529 lt!593035)))))

(assert (= (and d!491696 res!730165) b!1631883))

(declare-fun m!1965749 () Bool)

(assert (=> d!491696 m!1965749))

(declare-fun m!1965751 () Bool)

(assert (=> d!491696 m!1965751))

(declare-fun m!1965753 () Bool)

(assert (=> b!1631883 m!1965753))

(assert (=> b!1631262 d!491696))

(declare-fun b!1631990 () Bool)

(declare-fun e!1046592 () Bool)

(assert (=> b!1631990 (= e!1046592 true)))

(declare-fun b!1631989 () Bool)

(declare-fun e!1046591 () Bool)

(assert (=> b!1631989 (= e!1046591 e!1046592)))

(declare-fun b!1631988 () Bool)

(declare-fun e!1046590 () Bool)

(assert (=> b!1631988 (= e!1046590 e!1046591)))

(declare-fun d!491698 () Bool)

(assert (=> d!491698 e!1046590))

(assert (= b!1631989 b!1631990))

(assert (= b!1631988 b!1631989))

(assert (= (and d!491698 ((_ is Cons!17907) rules!1846)) b!1631988))

(declare-fun order!10625 () Int)

(declare-fun lambda!67364 () Int)

(declare-fun order!10623 () Int)

(declare-fun dynLambda!7991 (Int Int) Int)

(declare-fun dynLambda!7992 (Int Int) Int)

(assert (=> b!1631990 (< (dynLambda!7991 order!10623 (toValue!4586 (transformation!3155 (h!23308 rules!1846)))) (dynLambda!7992 order!10625 lambda!67364))))

(declare-fun order!10627 () Int)

(declare-fun dynLambda!7993 (Int Int) Int)

(assert (=> b!1631990 (< (dynLambda!7993 order!10627 (toChars!4445 (transformation!3155 (h!23308 rules!1846)))) (dynLambda!7992 order!10625 lambda!67364))))

(assert (=> d!491698 true))

(declare-fun lt!593251 () Bool)

(declare-fun forall!4096 (List!17978 Int) Bool)

(assert (=> d!491698 (= lt!593251 (forall!4096 tokens!457 lambda!67364))))

(declare-fun e!1046583 () Bool)

(assert (=> d!491698 (= lt!593251 e!1046583)))

(declare-fun res!730177 () Bool)

(assert (=> d!491698 (=> res!730177 e!1046583)))

(assert (=> d!491698 (= res!730177 (not ((_ is Cons!17908) tokens!457)))))

(assert (=> d!491698 (not (isEmpty!10939 rules!1846))))

(assert (=> d!491698 (= (rulesProduceEachTokenIndividuallyList!986 thiss!17113 rules!1846 tokens!457) lt!593251)))

(declare-fun b!1631978 () Bool)

(declare-fun e!1046582 () Bool)

(assert (=> b!1631978 (= e!1046583 e!1046582)))

(declare-fun res!730176 () Bool)

(assert (=> b!1631978 (=> (not res!730176) (not e!1046582))))

(assert (=> b!1631978 (= res!730176 (rulesProduceIndividualToken!1436 thiss!17113 rules!1846 (h!23309 tokens!457)))))

(declare-fun b!1631979 () Bool)

(assert (=> b!1631979 (= e!1046582 (rulesProduceEachTokenIndividuallyList!986 thiss!17113 rules!1846 (t!149477 tokens!457)))))

(assert (= (and d!491698 (not res!730177)) b!1631978))

(assert (= (and b!1631978 res!730176) b!1631979))

(declare-fun m!1965887 () Bool)

(assert (=> d!491698 m!1965887))

(assert (=> d!491698 m!1964361))

(assert (=> b!1631978 m!1964255))

(declare-fun m!1965889 () Bool)

(assert (=> b!1631979 m!1965889))

(assert (=> b!1631241 d!491698))

(declare-fun d!491700 () Bool)

(declare-fun res!730180 () Bool)

(declare-fun e!1046595 () Bool)

(assert (=> d!491700 (=> (not res!730180) (not e!1046595))))

(declare-fun rulesValid!1134 (LexerInterface!2784 List!17977) Bool)

(assert (=> d!491700 (= res!730180 (rulesValid!1134 thiss!17113 rules!1846))))

(assert (=> d!491700 (= (rulesInvariant!2453 thiss!17113 rules!1846) e!1046595)))

(declare-fun b!1631995 () Bool)

(declare-datatypes ((List!17984 0))(
  ( (Nil!17914) (Cons!17914 (h!23315 String!20557) (t!149525 List!17984)) )
))
(declare-fun noDuplicateTag!1134 (LexerInterface!2784 List!17977 List!17984) Bool)

(assert (=> b!1631995 (= e!1046595 (noDuplicateTag!1134 thiss!17113 rules!1846 Nil!17914))))

(assert (= (and d!491700 res!730180) b!1631995))

(declare-fun m!1965891 () Bool)

(assert (=> d!491700 m!1965891))

(declare-fun m!1965893 () Bool)

(assert (=> b!1631995 m!1965893))

(assert (=> b!1631248 d!491700))

(declare-fun d!491702 () Bool)

(assert (=> d!491702 (= (head!3479 (originalCharacters!3969 (h!23309 (t!149477 tokens!457)))) (h!23307 (originalCharacters!3969 (h!23309 (t!149477 tokens!457)))))))

(assert (=> b!1631249 d!491702))

(declare-fun b!1632006 () Bool)

(declare-fun e!1046602 () Bool)

(declare-fun e!1046604 () Bool)

(assert (=> b!1632006 (= e!1046602 e!1046604)))

(declare-fun c!265676 () Bool)

(assert (=> b!1632006 (= c!265676 ((_ is IntegerValue!9736) (value!99590 (h!23309 tokens!457))))))

(declare-fun b!1632007 () Bool)

(declare-fun res!730183 () Bool)

(declare-fun e!1046603 () Bool)

(assert (=> b!1632007 (=> res!730183 e!1046603)))

(assert (=> b!1632007 (= res!730183 (not ((_ is IntegerValue!9737) (value!99590 (h!23309 tokens!457)))))))

(assert (=> b!1632007 (= e!1046604 e!1046603)))

(declare-fun b!1632008 () Bool)

(declare-fun inv!15 (TokenValue!3245) Bool)

(assert (=> b!1632008 (= e!1046603 (inv!15 (value!99590 (h!23309 tokens!457))))))

(declare-fun d!491704 () Bool)

(declare-fun c!265677 () Bool)

(assert (=> d!491704 (= c!265677 ((_ is IntegerValue!9735) (value!99590 (h!23309 tokens!457))))))

(assert (=> d!491704 (= (inv!21 (value!99590 (h!23309 tokens!457))) e!1046602)))

(declare-fun b!1632009 () Bool)

(declare-fun inv!16 (TokenValue!3245) Bool)

(assert (=> b!1632009 (= e!1046602 (inv!16 (value!99590 (h!23309 tokens!457))))))

(declare-fun b!1632010 () Bool)

(declare-fun inv!17 (TokenValue!3245) Bool)

(assert (=> b!1632010 (= e!1046604 (inv!17 (value!99590 (h!23309 tokens!457))))))

(assert (= (and d!491704 c!265677) b!1632009))

(assert (= (and d!491704 (not c!265677)) b!1632006))

(assert (= (and b!1632006 c!265676) b!1632010))

(assert (= (and b!1632006 (not c!265676)) b!1632007))

(assert (= (and b!1632007 (not res!730183)) b!1632008))

(declare-fun m!1965895 () Bool)

(assert (=> b!1632008 m!1965895))

(declare-fun m!1965897 () Bool)

(assert (=> b!1632009 m!1965897))

(declare-fun m!1965899 () Bool)

(assert (=> b!1632010 m!1965899))

(assert (=> b!1631245 d!491704))

(declare-fun d!491706 () Bool)

(assert (=> d!491706 (= (separableTokensPredicate!726 thiss!17113 (h!23309 tokens!457) (h!23309 (t!149477 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!549 (rulesRegex!545 thiss!17113 rules!1846) (++!4780 (charsOf!1804 (h!23309 tokens!457)) (singletonSeq!1588 (apply!4602 (charsOf!1804 (h!23309 (t!149477 tokens!457))) 0))))))))

(declare-fun bs!395207 () Bool)

(assert (= bs!395207 d!491706))

(assert (=> bs!395207 m!1964291))

(assert (=> bs!395207 m!1964281))

(assert (=> bs!395207 m!1964289))

(assert (=> bs!395207 m!1964291))

(assert (=> bs!395207 m!1964311))

(assert (=> bs!395207 m!1964283))

(declare-fun m!1965901 () Bool)

(assert (=> bs!395207 m!1965901))

(assert (=> bs!395207 m!1964311))

(assert (=> bs!395207 m!1964289))

(assert (=> bs!395207 m!1965901))

(declare-fun m!1965903 () Bool)

(assert (=> bs!395207 m!1965903))

(assert (=> bs!395207 m!1964281))

(assert (=> bs!395207 m!1964283))

(assert (=> b!1631247 d!491706))

(declare-fun d!491708 () Bool)

(declare-fun c!265678 () Bool)

(assert (=> d!491708 (= c!265678 (isEmpty!10937 (++!4779 lt!592164 lt!592170)))))

(declare-fun e!1046605 () Bool)

(assert (=> d!491708 (= (prefixMatch!418 lt!592147 (++!4779 lt!592164 lt!592170)) e!1046605)))

(declare-fun b!1632011 () Bool)

(assert (=> b!1632011 (= e!1046605 (not (lostCause!444 lt!592147)))))

(declare-fun b!1632012 () Bool)

(assert (=> b!1632012 (= e!1046605 (prefixMatch!418 (derivativeStep!1088 lt!592147 (head!3479 (++!4779 lt!592164 lt!592170))) (tail!2376 (++!4779 lt!592164 lt!592170))))))

(assert (= (and d!491708 c!265678) b!1632011))

(assert (= (and d!491708 (not c!265678)) b!1632012))

(assert (=> d!491708 m!1964327))

(declare-fun m!1965905 () Bool)

(assert (=> d!491708 m!1965905))

(assert (=> b!1632011 m!1964423))

(assert (=> b!1632012 m!1964327))

(declare-fun m!1965907 () Bool)

(assert (=> b!1632012 m!1965907))

(assert (=> b!1632012 m!1965907))

(declare-fun m!1965909 () Bool)

(assert (=> b!1632012 m!1965909))

(assert (=> b!1632012 m!1964327))

(declare-fun m!1965911 () Bool)

(assert (=> b!1632012 m!1965911))

(assert (=> b!1632012 m!1965909))

(assert (=> b!1632012 m!1965911))

(declare-fun m!1965913 () Bool)

(assert (=> b!1632012 m!1965913))

(assert (=> b!1631246 d!491708))

(declare-fun d!491710 () Bool)

(declare-fun e!1046606 () Bool)

(assert (=> d!491710 e!1046606))

(declare-fun res!730184 () Bool)

(assert (=> d!491710 (=> (not res!730184) (not e!1046606))))

(declare-fun lt!593252 () List!17976)

(assert (=> d!491710 (= res!730184 (= (content!2485 lt!593252) ((_ map or) (content!2485 lt!592164) (content!2485 lt!592170))))))

(declare-fun e!1046607 () List!17976)

(assert (=> d!491710 (= lt!593252 e!1046607)))

(declare-fun c!265679 () Bool)

(assert (=> d!491710 (= c!265679 ((_ is Nil!17906) lt!592164))))

(assert (=> d!491710 (= (++!4779 lt!592164 lt!592170) lt!593252)))

(declare-fun b!1632016 () Bool)

(assert (=> b!1632016 (= e!1046606 (or (not (= lt!592170 Nil!17906)) (= lt!593252 lt!592164)))))

(declare-fun b!1632013 () Bool)

(assert (=> b!1632013 (= e!1046607 lt!592170)))

(declare-fun b!1632015 () Bool)

(declare-fun res!730185 () Bool)

(assert (=> b!1632015 (=> (not res!730185) (not e!1046606))))

(assert (=> b!1632015 (= res!730185 (= (size!14314 lt!593252) (+ (size!14314 lt!592164) (size!14314 lt!592170))))))

(declare-fun b!1632014 () Bool)

(assert (=> b!1632014 (= e!1046607 (Cons!17906 (h!23307 lt!592164) (++!4779 (t!149475 lt!592164) lt!592170)))))

(assert (= (and d!491710 c!265679) b!1632013))

(assert (= (and d!491710 (not c!265679)) b!1632014))

(assert (= (and d!491710 res!730184) b!1632015))

(assert (= (and b!1632015 res!730185) b!1632016))

(declare-fun m!1965915 () Bool)

(assert (=> d!491710 m!1965915))

(assert (=> d!491710 m!1964435))

(assert (=> d!491710 m!1965019))

(declare-fun m!1965917 () Bool)

(assert (=> b!1632015 m!1965917))

(assert (=> b!1632015 m!1964441))

(assert (=> b!1632015 m!1965025))

(declare-fun m!1965919 () Bool)

(assert (=> b!1632014 m!1965919))

(assert (=> b!1631246 d!491710))

(declare-fun b!1632027 () Bool)

(declare-fun b_free!44055 () Bool)

(declare-fun b_next!44759 () Bool)

(assert (=> b!1632027 (= b_free!44055 (not b_next!44759))))

(declare-fun tp!473658 () Bool)

(declare-fun b_and!115725 () Bool)

(assert (=> b!1632027 (= tp!473658 b_and!115725)))

(declare-fun b_free!44057 () Bool)

(declare-fun b_next!44761 () Bool)

(assert (=> b!1632027 (= b_free!44057 (not b_next!44761))))

(declare-fun tb!93679 () Bool)

(declare-fun t!149513 () Bool)

(assert (=> (and b!1632027 (= (toChars!4445 (transformation!3155 (h!23308 (t!149476 rules!1846)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457)))))) t!149513) tb!93679))

(declare-fun result!112980 () Bool)

(assert (= result!112980 result!112948))

(assert (=> d!491526 t!149513))

(declare-fun tb!93681 () Bool)

(declare-fun t!149515 () Bool)

(assert (=> (and b!1632027 (= (toChars!4445 (transformation!3155 (h!23308 (t!149476 rules!1846)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457))))) t!149515) tb!93681))

(declare-fun result!112982 () Bool)

(assert (= result!112982 result!112954))

(assert (=> d!491550 t!149515))

(assert (=> b!1631855 t!149515))

(declare-fun b_and!115727 () Bool)

(declare-fun tp!473660 () Bool)

(assert (=> b!1632027 (= tp!473660 (and (=> t!149513 result!112980) (=> t!149515 result!112982) b_and!115727))))

(declare-fun e!1046617 () Bool)

(assert (=> b!1632027 (= e!1046617 (and tp!473658 tp!473660))))

(declare-fun tp!473659 () Bool)

(declare-fun e!1046616 () Bool)

(declare-fun b!1632026 () Bool)

(assert (=> b!1632026 (= e!1046616 (and tp!473659 (inv!23274 (tag!3435 (h!23308 (t!149476 rules!1846)))) (inv!23277 (transformation!3155 (h!23308 (t!149476 rules!1846)))) e!1046617))))

(declare-fun b!1632025 () Bool)

(declare-fun e!1046618 () Bool)

(declare-fun tp!473657 () Bool)

(assert (=> b!1632025 (= e!1046618 (and e!1046616 tp!473657))))

(assert (=> b!1631258 (= tp!473585 e!1046618)))

(assert (= b!1632026 b!1632027))

(assert (= b!1632025 b!1632026))

(assert (= (and b!1631258 ((_ is Cons!17907) (t!149476 rules!1846))) b!1632025))

(declare-fun m!1965921 () Bool)

(assert (=> b!1632026 m!1965921))

(declare-fun m!1965923 () Bool)

(assert (=> b!1632026 m!1965923))

(declare-fun b!1632041 () Bool)

(declare-fun b_free!44059 () Bool)

(declare-fun b_next!44763 () Bool)

(assert (=> b!1632041 (= b_free!44059 (not b_next!44763))))

(declare-fun tp!473675 () Bool)

(declare-fun b_and!115729 () Bool)

(assert (=> b!1632041 (= tp!473675 b_and!115729)))

(declare-fun b_free!44061 () Bool)

(declare-fun b_next!44765 () Bool)

(assert (=> b!1632041 (= b_free!44061 (not b_next!44765))))

(declare-fun t!149517 () Bool)

(declare-fun tb!93683 () Bool)

(assert (=> (and b!1632041 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457)))))) t!149517) tb!93683))

(declare-fun result!112986 () Bool)

(assert (= result!112986 result!112948))

(assert (=> d!491526 t!149517))

(declare-fun t!149519 () Bool)

(declare-fun tb!93685 () Bool)

(assert (=> (and b!1632041 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457))))) t!149519) tb!93685))

(declare-fun result!112988 () Bool)

(assert (= result!112988 result!112954))

(assert (=> d!491550 t!149519))

(assert (=> b!1631855 t!149519))

(declare-fun tp!473674 () Bool)

(declare-fun b_and!115731 () Bool)

(assert (=> b!1632041 (= tp!473674 (and (=> t!149517 result!112986) (=> t!149519 result!112988) b_and!115731))))

(declare-fun e!1046634 () Bool)

(assert (=> b!1631240 (= tp!473582 e!1046634)))

(declare-fun e!1046632 () Bool)

(declare-fun tp!473673 () Bool)

(declare-fun b!1632039 () Bool)

(declare-fun e!1046636 () Bool)

(assert (=> b!1632039 (= e!1046636 (and (inv!21 (value!99590 (h!23309 (t!149477 tokens!457)))) e!1046632 tp!473673))))

(declare-fun e!1046633 () Bool)

(assert (=> b!1632041 (= e!1046633 (and tp!473675 tp!473674))))

(declare-fun tp!473672 () Bool)

(declare-fun b!1632040 () Bool)

(assert (=> b!1632040 (= e!1046632 (and tp!473672 (inv!23274 (tag!3435 (rule!4989 (h!23309 (t!149477 tokens!457))))) (inv!23277 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) e!1046633))))

(declare-fun b!1632038 () Bool)

(declare-fun tp!473671 () Bool)

(assert (=> b!1632038 (= e!1046634 (and (inv!23278 (h!23309 (t!149477 tokens!457))) e!1046636 tp!473671))))

(assert (= b!1632040 b!1632041))

(assert (= b!1632039 b!1632040))

(assert (= b!1632038 b!1632039))

(assert (= (and b!1631240 ((_ is Cons!17908) (t!149477 tokens!457))) b!1632038))

(declare-fun m!1965925 () Bool)

(assert (=> b!1632039 m!1965925))

(declare-fun m!1965927 () Bool)

(assert (=> b!1632040 m!1965927))

(declare-fun m!1965929 () Bool)

(assert (=> b!1632040 m!1965929))

(declare-fun m!1965931 () Bool)

(assert (=> b!1632038 m!1965931))

(declare-fun e!1046640 () Bool)

(assert (=> b!1631235 (= tp!473588 e!1046640)))

(declare-fun b!1632055 () Bool)

(declare-fun tp!473687 () Bool)

(declare-fun tp!473689 () Bool)

(assert (=> b!1632055 (= e!1046640 (and tp!473687 tp!473689))))

(declare-fun b!1632053 () Bool)

(declare-fun tp!473688 () Bool)

(declare-fun tp!473686 () Bool)

(assert (=> b!1632053 (= e!1046640 (and tp!473688 tp!473686))))

(declare-fun b!1632052 () Bool)

(declare-fun tp_is_empty!7293 () Bool)

(assert (=> b!1632052 (= e!1046640 tp_is_empty!7293)))

(declare-fun b!1632054 () Bool)

(declare-fun tp!473690 () Bool)

(assert (=> b!1632054 (= e!1046640 tp!473690)))

(assert (= (and b!1631235 ((_ is ElementMatch!4483) (regex!3155 (rule!4989 (h!23309 tokens!457))))) b!1632052))

(assert (= (and b!1631235 ((_ is Concat!7729) (regex!3155 (rule!4989 (h!23309 tokens!457))))) b!1632053))

(assert (= (and b!1631235 ((_ is Star!4483) (regex!3155 (rule!4989 (h!23309 tokens!457))))) b!1632054))

(assert (= (and b!1631235 ((_ is Union!4483) (regex!3155 (rule!4989 (h!23309 tokens!457))))) b!1632055))

(declare-fun e!1046641 () Bool)

(assert (=> b!1631251 (= tp!473587 e!1046641)))

(declare-fun b!1632059 () Bool)

(declare-fun tp!473692 () Bool)

(declare-fun tp!473694 () Bool)

(assert (=> b!1632059 (= e!1046641 (and tp!473692 tp!473694))))

(declare-fun b!1632057 () Bool)

(declare-fun tp!473693 () Bool)

(declare-fun tp!473691 () Bool)

(assert (=> b!1632057 (= e!1046641 (and tp!473693 tp!473691))))

(declare-fun b!1632056 () Bool)

(assert (=> b!1632056 (= e!1046641 tp_is_empty!7293)))

(declare-fun b!1632058 () Bool)

(declare-fun tp!473695 () Bool)

(assert (=> b!1632058 (= e!1046641 tp!473695)))

(assert (= (and b!1631251 ((_ is ElementMatch!4483) (regex!3155 (h!23308 rules!1846)))) b!1632056))

(assert (= (and b!1631251 ((_ is Concat!7729) (regex!3155 (h!23308 rules!1846)))) b!1632057))

(assert (= (and b!1631251 ((_ is Star!4483) (regex!3155 (h!23308 rules!1846)))) b!1632058))

(assert (= (and b!1631251 ((_ is Union!4483) (regex!3155 (h!23308 rules!1846)))) b!1632059))

(declare-fun b!1632064 () Bool)

(declare-fun e!1046644 () Bool)

(declare-fun tp!473698 () Bool)

(assert (=> b!1632064 (= e!1046644 (and tp_is_empty!7293 tp!473698))))

(assert (=> b!1631245 (= tp!473586 e!1046644)))

(assert (= (and b!1631245 ((_ is Cons!17906) (originalCharacters!3969 (h!23309 tokens!457)))) b!1632064))

(declare-fun b_lambda!51359 () Bool)

(assert (= b_lambda!51343 (or (and b!1631233 b_free!44041 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))))) (and b!1631244 b_free!44045 (= (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))))) (and b!1632027 b_free!44057 (= (toChars!4445 (transformation!3155 (h!23308 (t!149476 rules!1846)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))))) (and b!1632041 b_free!44061) b_lambda!51359)))

(declare-fun b_lambda!51361 () Bool)

(assert (= b_lambda!51345 (or (and b!1631233 b_free!44041) (and b!1631244 b_free!44045 (= (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))))) (and b!1632027 b_free!44057 (= (toChars!4445 (transformation!3155 (h!23308 (t!149476 rules!1846)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))))) (and b!1632041 b_free!44061 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))))) b_lambda!51361)))

(declare-fun b_lambda!51363 () Bool)

(assert (= b_lambda!51351 (or (and b!1631233 b_free!44041) (and b!1631244 b_free!44045 (= (toChars!4445 (transformation!3155 (h!23308 rules!1846))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))))) (and b!1632027 b_free!44057 (= (toChars!4445 (transformation!3155 (h!23308 (t!149476 rules!1846)))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))))) (and b!1632041 b_free!44061 (= (toChars!4445 (transformation!3155 (rule!4989 (h!23309 (t!149477 tokens!457))))) (toChars!4445 (transformation!3155 (rule!4989 (h!23309 tokens!457)))))) b_lambda!51363)))

(check-sat (not b!1631995) (not b!1631862) (not b!1632026) (not d!491558) (not b!1631848) (not d!491706) (not b!1631343) (not b_next!44749) (not d!491574) (not b!1631807) (not b!1632058) (not b!1632011) (not d!491666) (not b!1631429) (not d!491700) (not d!491442) (not d!491560) (not b!1631988) (not b!1631570) (not b!1631499) (not d!491556) (not b!1631874) (not d!491672) (not d!491550) (not b!1631865) (not b!1631574) (not d!491542) (not b!1631529) (not d!491698) (not d!491572) (not b_next!44763) (not b!1631561) (not b!1632025) (not d!491440) (not d!491676) (not b!1631814) (not bm!105543) (not d!491524) (not bm!105536) (not bm!105535) (not b!1631838) (not b_next!44745) (not b!1631613) (not b!1631576) (not b!1631482) (not d!491668) (not b!1631342) (not b!1631859) (not b!1631879) (not b_next!44747) (not d!491538) (not b!1631339) (not d!491686) (not b!1631481) (not b!1631849) (not d!491662) (not b!1632053) (not bm!105532) (not b!1631462) (not b!1631864) (not d!491708) (not b!1631352) (not b!1632012) (not d!491540) (not b!1631308) (not b!1631603) b_and!115729 (not b!1631496) (not b!1631522) b_and!115725 (not b!1631808) (not b!1631860) (not b!1631494) (not d!491690) (not b!1631802) (not b_next!44759) (not b_lambda!51359) (not b!1631826) (not d!491692) (not b!1632059) (not d!491576) (not b!1632064) (not b!1631855) (not b!1631500) (not b!1631286) (not b!1631599) (not d!491436) (not b!1631810) (not d!491438) (not d!491456) (not d!491544) (not d!491582) (not b!1631573) (not b!1631604) (not b!1631493) (not d!491696) (not b!1631863) (not b!1631608) (not b!1631605) (not b!1631801) (not b!1631526) (not b!1631857) (not b_next!44765) (not b!1631564) (not b!1631598) (not b!1631837) (not b!1632055) (not b!1631309) (not b_lambda!51363) (not b!1632039) (not b!1631528) (not d!491660) (not d!491528) (not b!1631811) (not b!1631483) (not b!1631341) (not b!1631491) (not d!491670) (not b!1631572) (not b!1631606) (not d!491462) (not b!1631827) (not b!1631488) (not b!1632054) (not bm!105529) (not b!1631602) (not d!491546) (not d!491710) (not b!1632057) (not b!1631292) (not b!1632040) (not tb!93663) (not d!491578) (not b!1631498) (not d!491532) (not d!491566) (not bm!105518) (not b!1631568) (not d!491468) (not b_next!44761) (not d!491680) tp_is_empty!7293 (not d!491522) (not d!491664) (not b!1631523) (not b!1631524) (not b!1631611) (not b!1632038) (not b!1632015) (not d!491534) (not d!491568) (not b!1631883) (not b!1631471) (not b!1631577) (not d!491548) (not b!1631600) (not d!491688) (not b!1631817) (not b!1631480) b_and!115713 (not d!491536) (not d!491564) (not d!491526) (not b!1631858) (not d!491516) (not b!1631978) (not b!1631527) (not b!1632014) b_and!115727 b_and!115689 (not tb!93659) (not b!1631567) (not b!1631430) (not b!1631612) (not b!1631856) (not b!1631850) (not d!491552) (not b!1631828) (not b!1632008) (not b!1631501) (not d!491682) (not b!1631463) (not d!491424) (not b!1631809) (not b_next!44743) (not b!1631560) (not b!1632010) (not b!1631607) b_and!115715 (not b!1631872) (not b_lambda!51361) b_and!115685 (not b!1631291) (not b!1631597) (not b!1631609) (not d!491674) (not d!491530) (not b!1631614) b_and!115731 (not d!491554) (not d!491426) (not b!1632009) (not b!1631979) (not d!491448) (not b!1631428))
(check-sat (not b_next!44749) (not b_next!44763) (not b_next!44745) (not b_next!44747) b_and!115729 b_and!115725 (not b_next!44759) (not b_next!44765) (not b_next!44761) b_and!115713 (not b_next!44743) b_and!115727 b_and!115689 b_and!115715 b_and!115731 b_and!115685)
