; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48796 () Bool)

(assert start!48796)

(declare-fun b!531148 () Bool)

(declare-fun b_free!14321 () Bool)

(declare-fun b_next!14337 () Bool)

(assert (=> b!531148 (= b_free!14321 (not b_next!14337))))

(declare-fun tp!169398 () Bool)

(declare-fun b_and!51883 () Bool)

(assert (=> b!531148 (= tp!169398 b_and!51883)))

(declare-fun b_free!14323 () Bool)

(declare-fun b_next!14339 () Bool)

(assert (=> b!531148 (= b_free!14323 (not b_next!14339))))

(declare-fun tp!169391 () Bool)

(declare-fun b_and!51885 () Bool)

(assert (=> b!531148 (= tp!169391 b_and!51885)))

(declare-fun b!531155 () Bool)

(declare-fun b_free!14325 () Bool)

(declare-fun b_next!14341 () Bool)

(assert (=> b!531155 (= b_free!14325 (not b_next!14341))))

(declare-fun tp!169396 () Bool)

(declare-fun b_and!51887 () Bool)

(assert (=> b!531155 (= tp!169396 b_and!51887)))

(declare-fun b_free!14327 () Bool)

(declare-fun b_next!14343 () Bool)

(assert (=> b!531155 (= b_free!14327 (not b_next!14343))))

(declare-fun tp!169397 () Bool)

(declare-fun b_and!51889 () Bool)

(assert (=> b!531155 (= tp!169397 b_and!51889)))

(declare-fun b!531145 () Bool)

(declare-fun e!319790 () Bool)

(declare-fun tp_is_empty!2861 () Bool)

(declare-fun tp!169390 () Bool)

(assert (=> b!531145 (= e!319790 (and tp_is_empty!2861 tp!169390))))

(declare-datatypes ((C!3428 0))(
  ( (C!3429 (val!1940 Int)) )
))
(declare-datatypes ((Regex!1253 0))(
  ( (ElementMatch!1253 (c!101410 C!3428)) (Concat!2196 (regOne!3018 Regex!1253) (regTwo!3018 Regex!1253)) (EmptyExpr!1253) (Star!1253 (reg!1582 Regex!1253)) (EmptyLang!1253) (Union!1253 (regOne!3019 Regex!1253) (regTwo!3019 Regex!1253)) )
))
(declare-datatypes ((List!5081 0))(
  ( (Nil!5071) (Cons!5071 (h!10472 (_ BitVec 16)) (t!73756 List!5081)) )
))
(declare-datatypes ((TokenValue!943 0))(
  ( (FloatLiteralValue!1886 (text!7046 List!5081)) (TokenValueExt!942 (__x!3784 Int)) (Broken!4715 (value!31032 List!5081)) (Object!952) (End!943) (Def!943) (Underscore!943) (Match!943) (Else!943) (Error!943) (Case!943) (If!943) (Extends!943) (Abstract!943) (Class!943) (Val!943) (DelimiterValue!1886 (del!1003 List!5081)) (KeywordValue!949 (value!31033 List!5081)) (CommentValue!1886 (value!31034 List!5081)) (WhitespaceValue!1886 (value!31035 List!5081)) (IndentationValue!943 (value!31036 List!5081)) (String!6458) (Int32!943) (Broken!4716 (value!31037 List!5081)) (Boolean!944) (Unit!8856) (OperatorValue!946 (op!1003 List!5081)) (IdentifierValue!1886 (value!31038 List!5081)) (IdentifierValue!1887 (value!31039 List!5081)) (WhitespaceValue!1887 (value!31040 List!5081)) (True!1886) (False!1886) (Broken!4717 (value!31041 List!5081)) (Broken!4718 (value!31042 List!5081)) (True!1887) (RightBrace!943) (RightBracket!943) (Colon!943) (Null!943) (Comma!943) (LeftBracket!943) (False!1887) (LeftBrace!943) (ImaginaryLiteralValue!943 (text!7047 List!5081)) (StringLiteralValue!2829 (value!31043 List!5081)) (EOFValue!943 (value!31044 List!5081)) (IdentValue!943 (value!31045 List!5081)) (DelimiterValue!1887 (value!31046 List!5081)) (DedentValue!943 (value!31047 List!5081)) (NewLineValue!943 (value!31048 List!5081)) (IntegerValue!2829 (value!31049 (_ BitVec 32)) (text!7048 List!5081)) (IntegerValue!2830 (value!31050 Int) (text!7049 List!5081)) (Times!943) (Or!943) (Equal!943) (Minus!943) (Broken!4719 (value!31051 List!5081)) (And!943) (Div!943) (LessEqual!943) (Mod!943) (Concat!2197) (Not!943) (Plus!943) (SpaceValue!943 (value!31052 List!5081)) (IntegerValue!2831 (value!31053 Int) (text!7050 List!5081)) (StringLiteralValue!2830 (text!7051 List!5081)) (FloatLiteralValue!1887 (text!7052 List!5081)) (BytesLiteralValue!943 (value!31054 List!5081)) (CommentValue!1887 (value!31055 List!5081)) (StringLiteralValue!2831 (value!31056 List!5081)) (ErrorTokenValue!943 (msg!1004 List!5081)) )
))
(declare-datatypes ((String!6459 0))(
  ( (String!6460 (value!31057 String)) )
))
(declare-datatypes ((List!5082 0))(
  ( (Nil!5072) (Cons!5072 (h!10473 C!3428) (t!73757 List!5082)) )
))
(declare-datatypes ((IArray!3273 0))(
  ( (IArray!3274 (innerList!1694 List!5082)) )
))
(declare-datatypes ((Conc!1636 0))(
  ( (Node!1636 (left!4284 Conc!1636) (right!4614 Conc!1636) (csize!3502 Int) (cheight!1847 Int)) (Leaf!2603 (xs!4273 IArray!3273) (csize!3503 Int)) (Empty!1636) )
))
(declare-datatypes ((BalanceConc!3280 0))(
  ( (BalanceConc!3281 (c!101411 Conc!1636)) )
))
(declare-datatypes ((TokenValueInjection!1654 0))(
  ( (TokenValueInjection!1655 (toValue!1762 Int) (toChars!1621 Int)) )
))
(declare-datatypes ((Rule!1638 0))(
  ( (Rule!1639 (regex!919 Regex!1253) (tag!1181 String!6459) (isSeparator!919 Bool) (transformation!919 TokenValueInjection!1654)) )
))
(declare-datatypes ((Token!1574 0))(
  ( (Token!1575 (value!31058 TokenValue!943) (rule!1619 Rule!1638) (size!4107 Int) (originalCharacters!958 List!5082)) )
))
(declare-fun token!491 () Token!1574)

(declare-fun tp!169392 () Bool)

(declare-fun b!531146 () Bool)

(declare-fun e!319785 () Bool)

(declare-fun e!319795 () Bool)

(declare-fun inv!6359 (String!6459) Bool)

(declare-fun inv!6362 (TokenValueInjection!1654) Bool)

(assert (=> b!531146 (= e!319795 (and tp!169392 (inv!6359 (tag!1181 (rule!1619 token!491))) (inv!6362 (transformation!919 (rule!1619 token!491))) e!319785))))

(declare-fun b!531147 () Bool)

(declare-fun res!224315 () Bool)

(declare-fun e!319783 () Bool)

(assert (=> b!531147 (=> (not res!224315) (not e!319783))))

(declare-datatypes ((LexerInterface!805 0))(
  ( (LexerInterfaceExt!802 (__x!3785 Int)) (Lexer!803) )
))
(declare-fun thiss!22590 () LexerInterface!805)

(declare-datatypes ((List!5083 0))(
  ( (Nil!5073) (Cons!5073 (h!10474 Rule!1638) (t!73758 List!5083)) )
))
(declare-fun rules!3103 () List!5083)

(declare-fun rulesInvariant!768 (LexerInterface!805 List!5083) Bool)

(assert (=> b!531147 (= res!224315 (rulesInvariant!768 thiss!22590 rules!3103))))

(declare-fun e!319794 () Bool)

(assert (=> b!531148 (= e!319794 (and tp!169398 tp!169391))))

(declare-fun tp!169394 () Bool)

(declare-fun b!531149 () Bool)

(declare-fun e!319792 () Bool)

(declare-fun inv!21 (TokenValue!943) Bool)

(assert (=> b!531149 (= e!319792 (and (inv!21 (value!31058 token!491)) e!319795 tp!169394))))

(declare-fun b!531150 () Bool)

(declare-fun e!319782 () Bool)

(declare-fun e!319793 () Bool)

(declare-fun tp!169389 () Bool)

(assert (=> b!531150 (= e!319782 (and e!319793 tp!169389))))

(declare-fun b!531151 () Bool)

(declare-fun res!224314 () Bool)

(assert (=> b!531151 (=> (not res!224314) (not e!319783))))

(declare-fun input!2705 () List!5082)

(declare-fun isEmpty!3670 (List!5082) Bool)

(assert (=> b!531151 (= res!224314 (not (isEmpty!3670 input!2705)))))

(declare-fun tp!169395 () Bool)

(declare-fun b!531152 () Bool)

(assert (=> b!531152 (= e!319793 (and tp!169395 (inv!6359 (tag!1181 (h!10474 rules!3103))) (inv!6362 (transformation!919 (h!10474 rules!3103))) e!319794))))

(declare-fun b!531153 () Bool)

(declare-fun e!319788 () Bool)

(declare-fun e!319789 () Bool)

(assert (=> b!531153 (= e!319788 e!319789)))

(declare-fun res!224307 () Bool)

(assert (=> b!531153 (=> (not res!224307) (not e!319789))))

(declare-fun suffix!1342 () List!5082)

(declare-datatypes ((tuple2!6192 0))(
  ( (tuple2!6193 (_1!3360 Token!1574) (_2!3360 List!5082)) )
))
(declare-fun lt!218660 () tuple2!6192)

(assert (=> b!531153 (= res!224307 (and (= (_1!3360 lt!218660) token!491) (= (_2!3360 lt!218660) suffix!1342)))))

(declare-datatypes ((Option!1269 0))(
  ( (None!1268) (Some!1268 (v!16073 tuple2!6192)) )
))
(declare-fun lt!218657 () Option!1269)

(declare-fun get!1893 (Option!1269) tuple2!6192)

(assert (=> b!531153 (= lt!218660 (get!1893 lt!218657))))

(declare-fun b!531154 () Bool)

(declare-fun e!319784 () Bool)

(declare-fun tp!169393 () Bool)

(assert (=> b!531154 (= e!319784 (and tp_is_empty!2861 tp!169393))))

(assert (=> b!531155 (= e!319785 (and tp!169396 tp!169397))))

(declare-fun b!531157 () Bool)

(declare-fun res!224311 () Bool)

(assert (=> b!531157 (=> (not res!224311) (not e!319789))))

(declare-fun lt!218659 () List!5082)

(declare-fun lt!218661 () List!5082)

(declare-fun ++!1407 (List!5082 List!5082) List!5082)

(assert (=> b!531157 (= res!224311 (= (++!1407 lt!218661 suffix!1342) lt!218659))))

(declare-fun b!531158 () Bool)

(declare-fun res!224313 () Bool)

(assert (=> b!531158 (=> (not res!224313) (not e!319789))))

(get-info :version)

(declare-fun maxPrefix!503 (LexerInterface!805 List!5083 List!5082) Option!1269)

(assert (=> b!531158 (= res!224313 ((_ is Some!1268) (maxPrefix!503 thiss!22590 rules!3103 input!2705)))))

(declare-fun b!531159 () Bool)

(declare-fun e!319791 () Bool)

(assert (=> b!531159 (= e!319783 e!319791)))

(declare-fun res!224309 () Bool)

(assert (=> b!531159 (=> (not res!224309) (not e!319791))))

(assert (=> b!531159 (= res!224309 (= lt!218661 input!2705))))

(declare-fun list!2109 (BalanceConc!3280) List!5082)

(declare-fun charsOf!548 (Token!1574) BalanceConc!3280)

(assert (=> b!531159 (= lt!218661 (list!2109 (charsOf!548 token!491)))))

(declare-fun b!531160 () Bool)

(declare-fun rulesValidInductive!316 (LexerInterface!805 List!5083) Bool)

(assert (=> b!531160 (= e!319789 (not (rulesValidInductive!316 thiss!22590 rules!3103)))))

(declare-datatypes ((Unit!8857 0))(
  ( (Unit!8858) )
))
(declare-fun lt!218658 () Unit!8857)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!4 (List!5082 List!5082 List!5082 List!5082) Unit!8857)

(assert (=> b!531160 (= lt!218658 (lemmaConcatSameAndSameSizesThenSameLists!4 lt!218661 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!531161 () Bool)

(declare-fun res!224308 () Bool)

(assert (=> b!531161 (=> (not res!224308) (not e!319783))))

(declare-fun isEmpty!3671 (List!5083) Bool)

(assert (=> b!531161 (= res!224308 (not (isEmpty!3671 rules!3103)))))

(declare-fun res!224310 () Bool)

(assert (=> start!48796 (=> (not res!224310) (not e!319783))))

(assert (=> start!48796 (= res!224310 ((_ is Lexer!803) thiss!22590))))

(assert (=> start!48796 e!319783))

(assert (=> start!48796 e!319784))

(assert (=> start!48796 e!319782))

(declare-fun inv!6363 (Token!1574) Bool)

(assert (=> start!48796 (and (inv!6363 token!491) e!319792)))

(assert (=> start!48796 true))

(assert (=> start!48796 e!319790))

(declare-fun b!531156 () Bool)

(assert (=> b!531156 (= e!319791 e!319788)))

(declare-fun res!224312 () Bool)

(assert (=> b!531156 (=> (not res!224312) (not e!319788))))

(declare-fun isDefined!1081 (Option!1269) Bool)

(assert (=> b!531156 (= res!224312 (isDefined!1081 lt!218657))))

(assert (=> b!531156 (= lt!218657 (maxPrefix!503 thiss!22590 rules!3103 lt!218659))))

(assert (=> b!531156 (= lt!218659 (++!1407 input!2705 suffix!1342))))

(assert (= (and start!48796 res!224310) b!531161))

(assert (= (and b!531161 res!224308) b!531147))

(assert (= (and b!531147 res!224315) b!531151))

(assert (= (and b!531151 res!224314) b!531159))

(assert (= (and b!531159 res!224309) b!531156))

(assert (= (and b!531156 res!224312) b!531153))

(assert (= (and b!531153 res!224307) b!531158))

(assert (= (and b!531158 res!224313) b!531157))

(assert (= (and b!531157 res!224311) b!531160))

(assert (= (and start!48796 ((_ is Cons!5072) suffix!1342)) b!531154))

(assert (= b!531152 b!531148))

(assert (= b!531150 b!531152))

(assert (= (and start!48796 ((_ is Cons!5073) rules!3103)) b!531150))

(assert (= b!531146 b!531155))

(assert (= b!531149 b!531146))

(assert (= start!48796 b!531149))

(assert (= (and start!48796 ((_ is Cons!5072) input!2705)) b!531145))

(declare-fun m!776221 () Bool)

(assert (=> b!531152 m!776221))

(declare-fun m!776223 () Bool)

(assert (=> b!531152 m!776223))

(declare-fun m!776225 () Bool)

(assert (=> b!531153 m!776225))

(declare-fun m!776227 () Bool)

(assert (=> b!531149 m!776227))

(declare-fun m!776229 () Bool)

(assert (=> b!531158 m!776229))

(declare-fun m!776231 () Bool)

(assert (=> b!531151 m!776231))

(declare-fun m!776233 () Bool)

(assert (=> b!531146 m!776233))

(declare-fun m!776235 () Bool)

(assert (=> b!531146 m!776235))

(declare-fun m!776237 () Bool)

(assert (=> b!531160 m!776237))

(declare-fun m!776239 () Bool)

(assert (=> b!531160 m!776239))

(declare-fun m!776241 () Bool)

(assert (=> b!531156 m!776241))

(declare-fun m!776243 () Bool)

(assert (=> b!531156 m!776243))

(declare-fun m!776245 () Bool)

(assert (=> b!531156 m!776245))

(declare-fun m!776247 () Bool)

(assert (=> start!48796 m!776247))

(declare-fun m!776249 () Bool)

(assert (=> b!531159 m!776249))

(assert (=> b!531159 m!776249))

(declare-fun m!776251 () Bool)

(assert (=> b!531159 m!776251))

(declare-fun m!776253 () Bool)

(assert (=> b!531157 m!776253))

(declare-fun m!776255 () Bool)

(assert (=> b!531147 m!776255))

(declare-fun m!776257 () Bool)

(assert (=> b!531161 m!776257))

(check-sat (not b!531159) b_and!51885 b_and!51887 (not b!531156) b_and!51883 (not b!531160) (not b_next!14337) (not b!531153) (not start!48796) (not b_next!14339) (not b!531146) (not b!531147) (not b!531150) (not b_next!14343) (not b_next!14341) (not b!531152) (not b!531154) (not b!531161) (not b!531151) (not b!531145) b_and!51889 (not b!531158) (not b!531149) tp_is_empty!2861 (not b!531157))
(check-sat b_and!51885 b_and!51887 b_and!51883 (not b_next!14337) b_and!51889 (not b_next!14339) (not b_next!14343) (not b_next!14341))
(get-model)

(declare-fun d!188337 () Bool)

(declare-fun res!224330 () Bool)

(declare-fun e!319802 () Bool)

(assert (=> d!188337 (=> (not res!224330) (not e!319802))))

(assert (=> d!188337 (= res!224330 (not (isEmpty!3670 (originalCharacters!958 token!491))))))

(assert (=> d!188337 (= (inv!6363 token!491) e!319802)))

(declare-fun b!531172 () Bool)

(declare-fun res!224331 () Bool)

(assert (=> b!531172 (=> (not res!224331) (not e!319802))))

(declare-fun dynLambda!3061 (Int TokenValue!943) BalanceConc!3280)

(assert (=> b!531172 (= res!224331 (= (originalCharacters!958 token!491) (list!2109 (dynLambda!3061 (toChars!1621 (transformation!919 (rule!1619 token!491))) (value!31058 token!491)))))))

(declare-fun b!531173 () Bool)

(declare-fun size!4109 (List!5082) Int)

(assert (=> b!531173 (= e!319802 (= (size!4107 token!491) (size!4109 (originalCharacters!958 token!491))))))

(assert (= (and d!188337 res!224330) b!531172))

(assert (= (and b!531172 res!224331) b!531173))

(declare-fun b_lambda!20545 () Bool)

(assert (=> (not b_lambda!20545) (not b!531172)))

(declare-fun tb!47249 () Bool)

(declare-fun t!73762 () Bool)

(assert (=> (and b!531148 (= (toChars!1621 (transformation!919 (h!10474 rules!3103))) (toChars!1621 (transformation!919 (rule!1619 token!491)))) t!73762) tb!47249))

(declare-fun b!531183 () Bool)

(declare-fun e!319808 () Bool)

(declare-fun tp!169404 () Bool)

(declare-fun inv!6366 (Conc!1636) Bool)

(assert (=> b!531183 (= e!319808 (and (inv!6366 (c!101411 (dynLambda!3061 (toChars!1621 (transformation!919 (rule!1619 token!491))) (value!31058 token!491)))) tp!169404))))

(declare-fun result!52664 () Bool)

(declare-fun inv!6367 (BalanceConc!3280) Bool)

(assert (=> tb!47249 (= result!52664 (and (inv!6367 (dynLambda!3061 (toChars!1621 (transformation!919 (rule!1619 token!491))) (value!31058 token!491))) e!319808))))

(assert (= tb!47249 b!531183))

(declare-fun m!776261 () Bool)

(assert (=> b!531183 m!776261))

(declare-fun m!776265 () Bool)

(assert (=> tb!47249 m!776265))

(assert (=> b!531172 t!73762))

(declare-fun b_and!51893 () Bool)

(assert (= b_and!51885 (and (=> t!73762 result!52664) b_and!51893)))

(declare-fun t!73766 () Bool)

(declare-fun tb!47253 () Bool)

(assert (=> (and b!531155 (= (toChars!1621 (transformation!919 (rule!1619 token!491))) (toChars!1621 (transformation!919 (rule!1619 token!491)))) t!73766) tb!47253))

(declare-fun result!52672 () Bool)

(assert (= result!52672 result!52664))

(assert (=> b!531172 t!73766))

(declare-fun b_and!51897 () Bool)

(assert (= b_and!51889 (and (=> t!73766 result!52672) b_and!51897)))

(declare-fun m!776269 () Bool)

(assert (=> d!188337 m!776269))

(declare-fun m!776273 () Bool)

(assert (=> b!531172 m!776273))

(assert (=> b!531172 m!776273))

(declare-fun m!776275 () Bool)

(assert (=> b!531172 m!776275))

(declare-fun m!776279 () Bool)

(assert (=> b!531173 m!776279))

(assert (=> start!48796 d!188337))

(declare-fun d!188339 () Bool)

(assert (=> d!188339 (= (isEmpty!3671 rules!3103) ((_ is Nil!5073) rules!3103))))

(assert (=> b!531161 d!188339))

(declare-fun d!188345 () Bool)

(assert (=> d!188345 true))

(declare-fun lt!218696 () Bool)

(declare-fun lambda!15405 () Int)

(declare-fun forall!1512 (List!5083 Int) Bool)

(assert (=> d!188345 (= lt!218696 (forall!1512 rules!3103 lambda!15405))))

(declare-fun e!319855 () Bool)

(assert (=> d!188345 (= lt!218696 e!319855)))

(declare-fun res!224388 () Bool)

(assert (=> d!188345 (=> res!224388 e!319855)))

(assert (=> d!188345 (= res!224388 (not ((_ is Cons!5073) rules!3103)))))

(assert (=> d!188345 (= (rulesValidInductive!316 thiss!22590 rules!3103) lt!218696)))

(declare-fun b!531270 () Bool)

(declare-fun e!319856 () Bool)

(assert (=> b!531270 (= e!319855 e!319856)))

(declare-fun res!224389 () Bool)

(assert (=> b!531270 (=> (not res!224389) (not e!319856))))

(declare-fun ruleValid!149 (LexerInterface!805 Rule!1638) Bool)

(assert (=> b!531270 (= res!224389 (ruleValid!149 thiss!22590 (h!10474 rules!3103)))))

(declare-fun b!531271 () Bool)

(assert (=> b!531271 (= e!319856 (rulesValidInductive!316 thiss!22590 (t!73758 rules!3103)))))

(assert (= (and d!188345 (not res!224388)) b!531270))

(assert (= (and b!531270 res!224389) b!531271))

(declare-fun m!776401 () Bool)

(assert (=> d!188345 m!776401))

(declare-fun m!776403 () Bool)

(assert (=> b!531270 m!776403))

(declare-fun m!776405 () Bool)

(assert (=> b!531271 m!776405))

(assert (=> b!531160 d!188345))

(declare-fun d!188379 () Bool)

(assert (=> d!188379 (and (= lt!218661 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!218700 () Unit!8857)

(declare-fun choose!3736 (List!5082 List!5082 List!5082 List!5082) Unit!8857)

(assert (=> d!188379 (= lt!218700 (choose!3736 lt!218661 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!188379 (= (++!1407 lt!218661 suffix!1342) (++!1407 input!2705 suffix!1342))))

(assert (=> d!188379 (= (lemmaConcatSameAndSameSizesThenSameLists!4 lt!218661 suffix!1342 input!2705 suffix!1342) lt!218700)))

(declare-fun bs!67137 () Bool)

(assert (= bs!67137 d!188379))

(declare-fun m!776411 () Bool)

(assert (=> bs!67137 m!776411))

(assert (=> bs!67137 m!776253))

(assert (=> bs!67137 m!776245))

(assert (=> b!531160 d!188379))

(declare-fun d!188381 () Bool)

(assert (=> d!188381 (= (isEmpty!3670 input!2705) ((_ is Nil!5072) input!2705))))

(assert (=> b!531151 d!188381))

(declare-fun d!188383 () Bool)

(assert (=> d!188383 (= (get!1893 lt!218657) (v!16073 lt!218657))))

(assert (=> b!531153 d!188383))

(declare-fun d!188385 () Bool)

(assert (=> d!188385 (= (inv!6359 (tag!1181 (h!10474 rules!3103))) (= (mod (str.len (value!31057 (tag!1181 (h!10474 rules!3103)))) 2) 0))))

(assert (=> b!531152 d!188385))

(declare-fun d!188387 () Bool)

(declare-fun res!224392 () Bool)

(declare-fun e!319880 () Bool)

(assert (=> d!188387 (=> (not res!224392) (not e!319880))))

(declare-fun semiInverseModEq!367 (Int Int) Bool)

(assert (=> d!188387 (= res!224392 (semiInverseModEq!367 (toChars!1621 (transformation!919 (h!10474 rules!3103))) (toValue!1762 (transformation!919 (h!10474 rules!3103)))))))

(assert (=> d!188387 (= (inv!6362 (transformation!919 (h!10474 rules!3103))) e!319880)))

(declare-fun b!531312 () Bool)

(declare-fun equivClasses!350 (Int Int) Bool)

(assert (=> b!531312 (= e!319880 (equivClasses!350 (toChars!1621 (transformation!919 (h!10474 rules!3103))) (toValue!1762 (transformation!919 (h!10474 rules!3103)))))))

(assert (= (and d!188387 res!224392) b!531312))

(declare-fun m!776413 () Bool)

(assert (=> d!188387 m!776413))

(declare-fun m!776415 () Bool)

(assert (=> b!531312 m!776415))

(assert (=> b!531152 d!188387))

(declare-fun d!188389 () Bool)

(assert (=> d!188389 (= (inv!6359 (tag!1181 (rule!1619 token!491))) (= (mod (str.len (value!31057 (tag!1181 (rule!1619 token!491)))) 2) 0))))

(assert (=> b!531146 d!188389))

(declare-fun d!188391 () Bool)

(declare-fun res!224393 () Bool)

(declare-fun e!319881 () Bool)

(assert (=> d!188391 (=> (not res!224393) (not e!319881))))

(assert (=> d!188391 (= res!224393 (semiInverseModEq!367 (toChars!1621 (transformation!919 (rule!1619 token!491))) (toValue!1762 (transformation!919 (rule!1619 token!491)))))))

(assert (=> d!188391 (= (inv!6362 (transformation!919 (rule!1619 token!491))) e!319881)))

(declare-fun b!531313 () Bool)

(assert (=> b!531313 (= e!319881 (equivClasses!350 (toChars!1621 (transformation!919 (rule!1619 token!491))) (toValue!1762 (transformation!919 (rule!1619 token!491)))))))

(assert (= (and d!188391 res!224393) b!531313))

(declare-fun m!776417 () Bool)

(assert (=> d!188391 m!776417))

(declare-fun m!776419 () Bool)

(assert (=> b!531313 m!776419))

(assert (=> b!531146 d!188391))

(declare-fun b!531325 () Bool)

(declare-fun lt!218703 () List!5082)

(declare-fun e!319887 () Bool)

(assert (=> b!531325 (= e!319887 (or (not (= suffix!1342 Nil!5072)) (= lt!218703 lt!218661)))))

(declare-fun b!531324 () Bool)

(declare-fun res!224398 () Bool)

(assert (=> b!531324 (=> (not res!224398) (not e!319887))))

(assert (=> b!531324 (= res!224398 (= (size!4109 lt!218703) (+ (size!4109 lt!218661) (size!4109 suffix!1342))))))

(declare-fun d!188393 () Bool)

(assert (=> d!188393 e!319887))

(declare-fun res!224399 () Bool)

(assert (=> d!188393 (=> (not res!224399) (not e!319887))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!900 (List!5082) (InoxSet C!3428))

(assert (=> d!188393 (= res!224399 (= (content!900 lt!218703) ((_ map or) (content!900 lt!218661) (content!900 suffix!1342))))))

(declare-fun e!319886 () List!5082)

(assert (=> d!188393 (= lt!218703 e!319886)))

(declare-fun c!101428 () Bool)

(assert (=> d!188393 (= c!101428 ((_ is Nil!5072) lt!218661))))

(assert (=> d!188393 (= (++!1407 lt!218661 suffix!1342) lt!218703)))

(declare-fun b!531323 () Bool)

(assert (=> b!531323 (= e!319886 (Cons!5072 (h!10473 lt!218661) (++!1407 (t!73757 lt!218661) suffix!1342)))))

(declare-fun b!531322 () Bool)

(assert (=> b!531322 (= e!319886 suffix!1342)))

(assert (= (and d!188393 c!101428) b!531322))

(assert (= (and d!188393 (not c!101428)) b!531323))

(assert (= (and d!188393 res!224399) b!531324))

(assert (= (and b!531324 res!224398) b!531325))

(declare-fun m!776421 () Bool)

(assert (=> b!531324 m!776421))

(declare-fun m!776423 () Bool)

(assert (=> b!531324 m!776423))

(declare-fun m!776425 () Bool)

(assert (=> b!531324 m!776425))

(declare-fun m!776427 () Bool)

(assert (=> d!188393 m!776427))

(declare-fun m!776429 () Bool)

(assert (=> d!188393 m!776429))

(declare-fun m!776431 () Bool)

(assert (=> d!188393 m!776431))

(declare-fun m!776433 () Bool)

(assert (=> b!531323 m!776433))

(assert (=> b!531157 d!188393))

(declare-fun d!188395 () Bool)

(declare-fun isEmpty!3673 (Option!1269) Bool)

(assert (=> d!188395 (= (isDefined!1081 lt!218657) (not (isEmpty!3673 lt!218657)))))

(declare-fun bs!67138 () Bool)

(assert (= bs!67138 d!188395))

(declare-fun m!776435 () Bool)

(assert (=> bs!67138 m!776435))

(assert (=> b!531156 d!188395))

(declare-fun b!531344 () Bool)

(declare-fun res!224419 () Bool)

(declare-fun e!319895 () Bool)

(assert (=> b!531344 (=> (not res!224419) (not e!319895))))

(declare-fun lt!218716 () Option!1269)

(assert (=> b!531344 (= res!224419 (= (++!1407 (list!2109 (charsOf!548 (_1!3360 (get!1893 lt!218716)))) (_2!3360 (get!1893 lt!218716))) lt!218659))))

(declare-fun b!531345 () Bool)

(declare-fun res!224414 () Bool)

(assert (=> b!531345 (=> (not res!224414) (not e!319895))))

(declare-fun apply!1206 (TokenValueInjection!1654 BalanceConc!3280) TokenValue!943)

(declare-fun seqFromList!1129 (List!5082) BalanceConc!3280)

(assert (=> b!531345 (= res!224414 (= (value!31058 (_1!3360 (get!1893 lt!218716))) (apply!1206 (transformation!919 (rule!1619 (_1!3360 (get!1893 lt!218716)))) (seqFromList!1129 (originalCharacters!958 (_1!3360 (get!1893 lt!218716)))))))))

(declare-fun call!38158 () Option!1269)

(declare-fun bm!38153 () Bool)

(declare-fun maxPrefixOneRule!240 (LexerInterface!805 Rule!1638 List!5082) Option!1269)

(assert (=> bm!38153 (= call!38158 (maxPrefixOneRule!240 thiss!22590 (h!10474 rules!3103) lt!218659))))

(declare-fun b!531347 () Bool)

(declare-fun res!224416 () Bool)

(assert (=> b!531347 (=> (not res!224416) (not e!319895))))

(assert (=> b!531347 (= res!224416 (< (size!4109 (_2!3360 (get!1893 lt!218716))) (size!4109 lt!218659)))))

(declare-fun b!531348 () Bool)

(declare-fun e!319896 () Option!1269)

(declare-fun lt!218714 () Option!1269)

(declare-fun lt!218715 () Option!1269)

(assert (=> b!531348 (= e!319896 (ite (and ((_ is None!1268) lt!218714) ((_ is None!1268) lt!218715)) None!1268 (ite ((_ is None!1268) lt!218715) lt!218714 (ite ((_ is None!1268) lt!218714) lt!218715 (ite (>= (size!4107 (_1!3360 (v!16073 lt!218714))) (size!4107 (_1!3360 (v!16073 lt!218715)))) lt!218714 lt!218715)))))))

(assert (=> b!531348 (= lt!218714 call!38158)))

(assert (=> b!531348 (= lt!218715 (maxPrefix!503 thiss!22590 (t!73758 rules!3103) lt!218659))))

(declare-fun b!531349 () Bool)

(assert (=> b!531349 (= e!319896 call!38158)))

(declare-fun b!531350 () Bool)

(declare-fun contains!1185 (List!5083 Rule!1638) Bool)

(assert (=> b!531350 (= e!319895 (contains!1185 rules!3103 (rule!1619 (_1!3360 (get!1893 lt!218716)))))))

(declare-fun b!531346 () Bool)

(declare-fun res!224418 () Bool)

(assert (=> b!531346 (=> (not res!224418) (not e!319895))))

(assert (=> b!531346 (= res!224418 (= (list!2109 (charsOf!548 (_1!3360 (get!1893 lt!218716)))) (originalCharacters!958 (_1!3360 (get!1893 lt!218716)))))))

(declare-fun d!188397 () Bool)

(declare-fun e!319894 () Bool)

(assert (=> d!188397 e!319894))

(declare-fun res!224420 () Bool)

(assert (=> d!188397 (=> res!224420 e!319894)))

(assert (=> d!188397 (= res!224420 (isEmpty!3673 lt!218716))))

(assert (=> d!188397 (= lt!218716 e!319896)))

(declare-fun c!101431 () Bool)

(assert (=> d!188397 (= c!101431 (and ((_ is Cons!5073) rules!3103) ((_ is Nil!5073) (t!73758 rules!3103))))))

(declare-fun lt!218717 () Unit!8857)

(declare-fun lt!218718 () Unit!8857)

(assert (=> d!188397 (= lt!218717 lt!218718)))

(declare-fun isPrefix!563 (List!5082 List!5082) Bool)

(assert (=> d!188397 (isPrefix!563 lt!218659 lt!218659)))

(declare-fun lemmaIsPrefixRefl!309 (List!5082 List!5082) Unit!8857)

(assert (=> d!188397 (= lt!218718 (lemmaIsPrefixRefl!309 lt!218659 lt!218659))))

(assert (=> d!188397 (rulesValidInductive!316 thiss!22590 rules!3103)))

(assert (=> d!188397 (= (maxPrefix!503 thiss!22590 rules!3103 lt!218659) lt!218716)))

(declare-fun b!531351 () Bool)

(assert (=> b!531351 (= e!319894 e!319895)))

(declare-fun res!224415 () Bool)

(assert (=> b!531351 (=> (not res!224415) (not e!319895))))

(assert (=> b!531351 (= res!224415 (isDefined!1081 lt!218716))))

(declare-fun b!531352 () Bool)

(declare-fun res!224417 () Bool)

(assert (=> b!531352 (=> (not res!224417) (not e!319895))))

(declare-fun matchR!440 (Regex!1253 List!5082) Bool)

(assert (=> b!531352 (= res!224417 (matchR!440 (regex!919 (rule!1619 (_1!3360 (get!1893 lt!218716)))) (list!2109 (charsOf!548 (_1!3360 (get!1893 lt!218716))))))))

(assert (= (and d!188397 c!101431) b!531349))

(assert (= (and d!188397 (not c!101431)) b!531348))

(assert (= (or b!531349 b!531348) bm!38153))

(assert (= (and d!188397 (not res!224420)) b!531351))

(assert (= (and b!531351 res!224415) b!531346))

(assert (= (and b!531346 res!224418) b!531347))

(assert (= (and b!531347 res!224416) b!531344))

(assert (= (and b!531344 res!224419) b!531345))

(assert (= (and b!531345 res!224414) b!531352))

(assert (= (and b!531352 res!224417) b!531350))

(declare-fun m!776437 () Bool)

(assert (=> b!531348 m!776437))

(declare-fun m!776439 () Bool)

(assert (=> d!188397 m!776439))

(declare-fun m!776441 () Bool)

(assert (=> d!188397 m!776441))

(declare-fun m!776443 () Bool)

(assert (=> d!188397 m!776443))

(assert (=> d!188397 m!776237))

(declare-fun m!776445 () Bool)

(assert (=> b!531352 m!776445))

(declare-fun m!776447 () Bool)

(assert (=> b!531352 m!776447))

(assert (=> b!531352 m!776447))

(declare-fun m!776449 () Bool)

(assert (=> b!531352 m!776449))

(assert (=> b!531352 m!776449))

(declare-fun m!776451 () Bool)

(assert (=> b!531352 m!776451))

(assert (=> b!531346 m!776445))

(assert (=> b!531346 m!776447))

(assert (=> b!531346 m!776447))

(assert (=> b!531346 m!776449))

(declare-fun m!776453 () Bool)

(assert (=> bm!38153 m!776453))

(assert (=> b!531350 m!776445))

(declare-fun m!776455 () Bool)

(assert (=> b!531350 m!776455))

(assert (=> b!531345 m!776445))

(declare-fun m!776457 () Bool)

(assert (=> b!531345 m!776457))

(assert (=> b!531345 m!776457))

(declare-fun m!776459 () Bool)

(assert (=> b!531345 m!776459))

(assert (=> b!531347 m!776445))

(declare-fun m!776461 () Bool)

(assert (=> b!531347 m!776461))

(declare-fun m!776463 () Bool)

(assert (=> b!531347 m!776463))

(assert (=> b!531344 m!776445))

(assert (=> b!531344 m!776447))

(assert (=> b!531344 m!776447))

(assert (=> b!531344 m!776449))

(assert (=> b!531344 m!776449))

(declare-fun m!776465 () Bool)

(assert (=> b!531344 m!776465))

(declare-fun m!776467 () Bool)

(assert (=> b!531351 m!776467))

(assert (=> b!531156 d!188397))

(declare-fun b!531356 () Bool)

(declare-fun e!319898 () Bool)

(declare-fun lt!218719 () List!5082)

(assert (=> b!531356 (= e!319898 (or (not (= suffix!1342 Nil!5072)) (= lt!218719 input!2705)))))

(declare-fun b!531355 () Bool)

(declare-fun res!224421 () Bool)

(assert (=> b!531355 (=> (not res!224421) (not e!319898))))

(assert (=> b!531355 (= res!224421 (= (size!4109 lt!218719) (+ (size!4109 input!2705) (size!4109 suffix!1342))))))

(declare-fun d!188399 () Bool)

(assert (=> d!188399 e!319898))

(declare-fun res!224422 () Bool)

(assert (=> d!188399 (=> (not res!224422) (not e!319898))))

(assert (=> d!188399 (= res!224422 (= (content!900 lt!218719) ((_ map or) (content!900 input!2705) (content!900 suffix!1342))))))

(declare-fun e!319897 () List!5082)

(assert (=> d!188399 (= lt!218719 e!319897)))

(declare-fun c!101432 () Bool)

(assert (=> d!188399 (= c!101432 ((_ is Nil!5072) input!2705))))

(assert (=> d!188399 (= (++!1407 input!2705 suffix!1342) lt!218719)))

(declare-fun b!531354 () Bool)

(assert (=> b!531354 (= e!319897 (Cons!5072 (h!10473 input!2705) (++!1407 (t!73757 input!2705) suffix!1342)))))

(declare-fun b!531353 () Bool)

(assert (=> b!531353 (= e!319897 suffix!1342)))

(assert (= (and d!188399 c!101432) b!531353))

(assert (= (and d!188399 (not c!101432)) b!531354))

(assert (= (and d!188399 res!224422) b!531355))

(assert (= (and b!531355 res!224421) b!531356))

(declare-fun m!776469 () Bool)

(assert (=> b!531355 m!776469))

(declare-fun m!776471 () Bool)

(assert (=> b!531355 m!776471))

(assert (=> b!531355 m!776425))

(declare-fun m!776473 () Bool)

(assert (=> d!188399 m!776473))

(declare-fun m!776475 () Bool)

(assert (=> d!188399 m!776475))

(assert (=> d!188399 m!776431))

(declare-fun m!776477 () Bool)

(assert (=> b!531354 m!776477))

(assert (=> b!531156 d!188399))

(declare-fun b!531357 () Bool)

(declare-fun res!224428 () Bool)

(declare-fun e!319900 () Bool)

(assert (=> b!531357 (=> (not res!224428) (not e!319900))))

(declare-fun lt!218722 () Option!1269)

(assert (=> b!531357 (= res!224428 (= (++!1407 (list!2109 (charsOf!548 (_1!3360 (get!1893 lt!218722)))) (_2!3360 (get!1893 lt!218722))) input!2705))))

(declare-fun b!531358 () Bool)

(declare-fun res!224423 () Bool)

(assert (=> b!531358 (=> (not res!224423) (not e!319900))))

(assert (=> b!531358 (= res!224423 (= (value!31058 (_1!3360 (get!1893 lt!218722))) (apply!1206 (transformation!919 (rule!1619 (_1!3360 (get!1893 lt!218722)))) (seqFromList!1129 (originalCharacters!958 (_1!3360 (get!1893 lt!218722)))))))))

(declare-fun call!38159 () Option!1269)

(declare-fun bm!38154 () Bool)

(assert (=> bm!38154 (= call!38159 (maxPrefixOneRule!240 thiss!22590 (h!10474 rules!3103) input!2705))))

(declare-fun b!531360 () Bool)

(declare-fun res!224425 () Bool)

(assert (=> b!531360 (=> (not res!224425) (not e!319900))))

(assert (=> b!531360 (= res!224425 (< (size!4109 (_2!3360 (get!1893 lt!218722))) (size!4109 input!2705)))))

(declare-fun b!531361 () Bool)

(declare-fun e!319901 () Option!1269)

(declare-fun lt!218720 () Option!1269)

(declare-fun lt!218721 () Option!1269)

(assert (=> b!531361 (= e!319901 (ite (and ((_ is None!1268) lt!218720) ((_ is None!1268) lt!218721)) None!1268 (ite ((_ is None!1268) lt!218721) lt!218720 (ite ((_ is None!1268) lt!218720) lt!218721 (ite (>= (size!4107 (_1!3360 (v!16073 lt!218720))) (size!4107 (_1!3360 (v!16073 lt!218721)))) lt!218720 lt!218721)))))))

(assert (=> b!531361 (= lt!218720 call!38159)))

(assert (=> b!531361 (= lt!218721 (maxPrefix!503 thiss!22590 (t!73758 rules!3103) input!2705))))

(declare-fun b!531362 () Bool)

(assert (=> b!531362 (= e!319901 call!38159)))

(declare-fun b!531363 () Bool)

(assert (=> b!531363 (= e!319900 (contains!1185 rules!3103 (rule!1619 (_1!3360 (get!1893 lt!218722)))))))

(declare-fun b!531359 () Bool)

(declare-fun res!224427 () Bool)

(assert (=> b!531359 (=> (not res!224427) (not e!319900))))

(assert (=> b!531359 (= res!224427 (= (list!2109 (charsOf!548 (_1!3360 (get!1893 lt!218722)))) (originalCharacters!958 (_1!3360 (get!1893 lt!218722)))))))

(declare-fun d!188401 () Bool)

(declare-fun e!319899 () Bool)

(assert (=> d!188401 e!319899))

(declare-fun res!224429 () Bool)

(assert (=> d!188401 (=> res!224429 e!319899)))

(assert (=> d!188401 (= res!224429 (isEmpty!3673 lt!218722))))

(assert (=> d!188401 (= lt!218722 e!319901)))

(declare-fun c!101433 () Bool)

(assert (=> d!188401 (= c!101433 (and ((_ is Cons!5073) rules!3103) ((_ is Nil!5073) (t!73758 rules!3103))))))

(declare-fun lt!218723 () Unit!8857)

(declare-fun lt!218724 () Unit!8857)

(assert (=> d!188401 (= lt!218723 lt!218724)))

(assert (=> d!188401 (isPrefix!563 input!2705 input!2705)))

(assert (=> d!188401 (= lt!218724 (lemmaIsPrefixRefl!309 input!2705 input!2705))))

(assert (=> d!188401 (rulesValidInductive!316 thiss!22590 rules!3103)))

(assert (=> d!188401 (= (maxPrefix!503 thiss!22590 rules!3103 input!2705) lt!218722)))

(declare-fun b!531364 () Bool)

(assert (=> b!531364 (= e!319899 e!319900)))

(declare-fun res!224424 () Bool)

(assert (=> b!531364 (=> (not res!224424) (not e!319900))))

(assert (=> b!531364 (= res!224424 (isDefined!1081 lt!218722))))

(declare-fun b!531365 () Bool)

(declare-fun res!224426 () Bool)

(assert (=> b!531365 (=> (not res!224426) (not e!319900))))

(assert (=> b!531365 (= res!224426 (matchR!440 (regex!919 (rule!1619 (_1!3360 (get!1893 lt!218722)))) (list!2109 (charsOf!548 (_1!3360 (get!1893 lt!218722))))))))

(assert (= (and d!188401 c!101433) b!531362))

(assert (= (and d!188401 (not c!101433)) b!531361))

(assert (= (or b!531362 b!531361) bm!38154))

(assert (= (and d!188401 (not res!224429)) b!531364))

(assert (= (and b!531364 res!224424) b!531359))

(assert (= (and b!531359 res!224427) b!531360))

(assert (= (and b!531360 res!224425) b!531357))

(assert (= (and b!531357 res!224428) b!531358))

(assert (= (and b!531358 res!224423) b!531365))

(assert (= (and b!531365 res!224426) b!531363))

(declare-fun m!776479 () Bool)

(assert (=> b!531361 m!776479))

(declare-fun m!776481 () Bool)

(assert (=> d!188401 m!776481))

(declare-fun m!776483 () Bool)

(assert (=> d!188401 m!776483))

(declare-fun m!776485 () Bool)

(assert (=> d!188401 m!776485))

(assert (=> d!188401 m!776237))

(declare-fun m!776487 () Bool)

(assert (=> b!531365 m!776487))

(declare-fun m!776489 () Bool)

(assert (=> b!531365 m!776489))

(assert (=> b!531365 m!776489))

(declare-fun m!776491 () Bool)

(assert (=> b!531365 m!776491))

(assert (=> b!531365 m!776491))

(declare-fun m!776493 () Bool)

(assert (=> b!531365 m!776493))

(assert (=> b!531359 m!776487))

(assert (=> b!531359 m!776489))

(assert (=> b!531359 m!776489))

(assert (=> b!531359 m!776491))

(declare-fun m!776495 () Bool)

(assert (=> bm!38154 m!776495))

(assert (=> b!531363 m!776487))

(declare-fun m!776497 () Bool)

(assert (=> b!531363 m!776497))

(assert (=> b!531358 m!776487))

(declare-fun m!776499 () Bool)

(assert (=> b!531358 m!776499))

(assert (=> b!531358 m!776499))

(declare-fun m!776501 () Bool)

(assert (=> b!531358 m!776501))

(assert (=> b!531360 m!776487))

(declare-fun m!776503 () Bool)

(assert (=> b!531360 m!776503))

(assert (=> b!531360 m!776471))

(assert (=> b!531357 m!776487))

(assert (=> b!531357 m!776489))

(assert (=> b!531357 m!776489))

(assert (=> b!531357 m!776491))

(assert (=> b!531357 m!776491))

(declare-fun m!776505 () Bool)

(assert (=> b!531357 m!776505))

(declare-fun m!776507 () Bool)

(assert (=> b!531364 m!776507))

(assert (=> b!531158 d!188401))

(declare-fun d!188403 () Bool)

(declare-fun res!224432 () Bool)

(declare-fun e!319904 () Bool)

(assert (=> d!188403 (=> (not res!224432) (not e!319904))))

(declare-fun rulesValid!332 (LexerInterface!805 List!5083) Bool)

(assert (=> d!188403 (= res!224432 (rulesValid!332 thiss!22590 rules!3103))))

(assert (=> d!188403 (= (rulesInvariant!768 thiss!22590 rules!3103) e!319904)))

(declare-fun b!531368 () Bool)

(declare-datatypes ((List!5085 0))(
  ( (Nil!5075) (Cons!5075 (h!10476 String!6459) (t!73772 List!5085)) )
))
(declare-fun noDuplicateTag!332 (LexerInterface!805 List!5083 List!5085) Bool)

(assert (=> b!531368 (= e!319904 (noDuplicateTag!332 thiss!22590 rules!3103 Nil!5075))))

(assert (= (and d!188403 res!224432) b!531368))

(declare-fun m!776509 () Bool)

(assert (=> d!188403 m!776509))

(declare-fun m!776511 () Bool)

(assert (=> b!531368 m!776511))

(assert (=> b!531147 d!188403))

(declare-fun b!531379 () Bool)

(declare-fun e!319912 () Bool)

(declare-fun inv!15 (TokenValue!943) Bool)

(assert (=> b!531379 (= e!319912 (inv!15 (value!31058 token!491)))))

(declare-fun d!188405 () Bool)

(declare-fun c!101438 () Bool)

(assert (=> d!188405 (= c!101438 ((_ is IntegerValue!2829) (value!31058 token!491)))))

(declare-fun e!319911 () Bool)

(assert (=> d!188405 (= (inv!21 (value!31058 token!491)) e!319911)))

(declare-fun b!531380 () Bool)

(declare-fun res!224435 () Bool)

(assert (=> b!531380 (=> res!224435 e!319912)))

(assert (=> b!531380 (= res!224435 (not ((_ is IntegerValue!2831) (value!31058 token!491))))))

(declare-fun e!319913 () Bool)

(assert (=> b!531380 (= e!319913 e!319912)))

(declare-fun b!531381 () Bool)

(assert (=> b!531381 (= e!319911 e!319913)))

(declare-fun c!101439 () Bool)

(assert (=> b!531381 (= c!101439 ((_ is IntegerValue!2830) (value!31058 token!491)))))

(declare-fun b!531382 () Bool)

(declare-fun inv!16 (TokenValue!943) Bool)

(assert (=> b!531382 (= e!319911 (inv!16 (value!31058 token!491)))))

(declare-fun b!531383 () Bool)

(declare-fun inv!17 (TokenValue!943) Bool)

(assert (=> b!531383 (= e!319913 (inv!17 (value!31058 token!491)))))

(assert (= (and d!188405 c!101438) b!531382))

(assert (= (and d!188405 (not c!101438)) b!531381))

(assert (= (and b!531381 c!101439) b!531383))

(assert (= (and b!531381 (not c!101439)) b!531380))

(assert (= (and b!531380 (not res!224435)) b!531379))

(declare-fun m!776513 () Bool)

(assert (=> b!531379 m!776513))

(declare-fun m!776515 () Bool)

(assert (=> b!531382 m!776515))

(declare-fun m!776517 () Bool)

(assert (=> b!531383 m!776517))

(assert (=> b!531149 d!188405))

(declare-fun d!188407 () Bool)

(declare-fun list!2111 (Conc!1636) List!5082)

(assert (=> d!188407 (= (list!2109 (charsOf!548 token!491)) (list!2111 (c!101411 (charsOf!548 token!491))))))

(declare-fun bs!67139 () Bool)

(assert (= bs!67139 d!188407))

(declare-fun m!776519 () Bool)

(assert (=> bs!67139 m!776519))

(assert (=> b!531159 d!188407))

(declare-fun d!188409 () Bool)

(declare-fun lt!218727 () BalanceConc!3280)

(assert (=> d!188409 (= (list!2109 lt!218727) (originalCharacters!958 token!491))))

(assert (=> d!188409 (= lt!218727 (dynLambda!3061 (toChars!1621 (transformation!919 (rule!1619 token!491))) (value!31058 token!491)))))

(assert (=> d!188409 (= (charsOf!548 token!491) lt!218727)))

(declare-fun b_lambda!20553 () Bool)

(assert (=> (not b_lambda!20553) (not d!188409)))

(assert (=> d!188409 t!73762))

(declare-fun b_and!51907 () Bool)

(assert (= b_and!51893 (and (=> t!73762 result!52664) b_and!51907)))

(assert (=> d!188409 t!73766))

(declare-fun b_and!51909 () Bool)

(assert (= b_and!51897 (and (=> t!73766 result!52672) b_and!51909)))

(declare-fun m!776521 () Bool)

(assert (=> d!188409 m!776521))

(assert (=> d!188409 m!776273))

(assert (=> b!531159 d!188409))

(declare-fun b!531394 () Bool)

(declare-fun b_free!14333 () Bool)

(declare-fun b_next!14349 () Bool)

(assert (=> b!531394 (= b_free!14333 (not b_next!14349))))

(declare-fun tp!169453 () Bool)

(declare-fun b_and!51911 () Bool)

(assert (=> b!531394 (= tp!169453 b_and!51911)))

(declare-fun b_free!14335 () Bool)

(declare-fun b_next!14351 () Bool)

(assert (=> b!531394 (= b_free!14335 (not b_next!14351))))

(declare-fun tb!47257 () Bool)

(declare-fun t!73770 () Bool)

(assert (=> (and b!531394 (= (toChars!1621 (transformation!919 (h!10474 (t!73758 rules!3103)))) (toChars!1621 (transformation!919 (rule!1619 token!491)))) t!73770) tb!47257))

(declare-fun result!52684 () Bool)

(assert (= result!52684 result!52664))

(assert (=> b!531172 t!73770))

(assert (=> d!188409 t!73770))

(declare-fun tp!169452 () Bool)

(declare-fun b_and!51913 () Bool)

(assert (=> b!531394 (= tp!169452 (and (=> t!73770 result!52684) b_and!51913))))

(declare-fun e!319923 () Bool)

(assert (=> b!531394 (= e!319923 (and tp!169453 tp!169452))))

(declare-fun tp!169451 () Bool)

(declare-fun b!531393 () Bool)

(declare-fun e!319925 () Bool)

(assert (=> b!531393 (= e!319925 (and tp!169451 (inv!6359 (tag!1181 (h!10474 (t!73758 rules!3103)))) (inv!6362 (transformation!919 (h!10474 (t!73758 rules!3103)))) e!319923))))

(declare-fun b!531392 () Bool)

(declare-fun e!319922 () Bool)

(declare-fun tp!169450 () Bool)

(assert (=> b!531392 (= e!319922 (and e!319925 tp!169450))))

(assert (=> b!531150 (= tp!169389 e!319922)))

(assert (= b!531393 b!531394))

(assert (= b!531392 b!531393))

(assert (= (and b!531150 ((_ is Cons!5073) (t!73758 rules!3103))) b!531392))

(declare-fun m!776523 () Bool)

(assert (=> b!531393 m!776523))

(declare-fun m!776525 () Bool)

(assert (=> b!531393 m!776525))

(declare-fun b!531399 () Bool)

(declare-fun e!319928 () Bool)

(declare-fun tp!169456 () Bool)

(assert (=> b!531399 (= e!319928 (and tp_is_empty!2861 tp!169456))))

(assert (=> b!531145 (= tp!169390 e!319928)))

(assert (= (and b!531145 ((_ is Cons!5072) (t!73757 input!2705))) b!531399))

(declare-fun b!531410 () Bool)

(declare-fun e!319931 () Bool)

(assert (=> b!531410 (= e!319931 tp_is_empty!2861)))

(declare-fun b!531413 () Bool)

(declare-fun tp!169467 () Bool)

(declare-fun tp!169471 () Bool)

(assert (=> b!531413 (= e!319931 (and tp!169467 tp!169471))))

(declare-fun b!531412 () Bool)

(declare-fun tp!169468 () Bool)

(assert (=> b!531412 (= e!319931 tp!169468)))

(assert (=> b!531146 (= tp!169392 e!319931)))

(declare-fun b!531411 () Bool)

(declare-fun tp!169469 () Bool)

(declare-fun tp!169470 () Bool)

(assert (=> b!531411 (= e!319931 (and tp!169469 tp!169470))))

(assert (= (and b!531146 ((_ is ElementMatch!1253) (regex!919 (rule!1619 token!491)))) b!531410))

(assert (= (and b!531146 ((_ is Concat!2196) (regex!919 (rule!1619 token!491)))) b!531411))

(assert (= (and b!531146 ((_ is Star!1253) (regex!919 (rule!1619 token!491)))) b!531412))

(assert (= (and b!531146 ((_ is Union!1253) (regex!919 (rule!1619 token!491)))) b!531413))

(declare-fun b!531414 () Bool)

(declare-fun e!319932 () Bool)

(assert (=> b!531414 (= e!319932 tp_is_empty!2861)))

(declare-fun b!531417 () Bool)

(declare-fun tp!169472 () Bool)

(declare-fun tp!169476 () Bool)

(assert (=> b!531417 (= e!319932 (and tp!169472 tp!169476))))

(declare-fun b!531416 () Bool)

(declare-fun tp!169473 () Bool)

(assert (=> b!531416 (= e!319932 tp!169473)))

(assert (=> b!531152 (= tp!169395 e!319932)))

(declare-fun b!531415 () Bool)

(declare-fun tp!169474 () Bool)

(declare-fun tp!169475 () Bool)

(assert (=> b!531415 (= e!319932 (and tp!169474 tp!169475))))

(assert (= (and b!531152 ((_ is ElementMatch!1253) (regex!919 (h!10474 rules!3103)))) b!531414))

(assert (= (and b!531152 ((_ is Concat!2196) (regex!919 (h!10474 rules!3103)))) b!531415))

(assert (= (and b!531152 ((_ is Star!1253) (regex!919 (h!10474 rules!3103)))) b!531416))

(assert (= (and b!531152 ((_ is Union!1253) (regex!919 (h!10474 rules!3103)))) b!531417))

(declare-fun b!531418 () Bool)

(declare-fun e!319933 () Bool)

(declare-fun tp!169477 () Bool)

(assert (=> b!531418 (= e!319933 (and tp_is_empty!2861 tp!169477))))

(assert (=> b!531154 (= tp!169393 e!319933)))

(assert (= (and b!531154 ((_ is Cons!5072) (t!73757 suffix!1342))) b!531418))

(declare-fun b!531419 () Bool)

(declare-fun e!319934 () Bool)

(declare-fun tp!169478 () Bool)

(assert (=> b!531419 (= e!319934 (and tp_is_empty!2861 tp!169478))))

(assert (=> b!531149 (= tp!169394 e!319934)))

(assert (= (and b!531149 ((_ is Cons!5072) (originalCharacters!958 token!491))) b!531419))

(declare-fun b_lambda!20555 () Bool)

(assert (= b_lambda!20545 (or (and b!531148 b_free!14323 (= (toChars!1621 (transformation!919 (h!10474 rules!3103))) (toChars!1621 (transformation!919 (rule!1619 token!491))))) (and b!531155 b_free!14327) (and b!531394 b_free!14335 (= (toChars!1621 (transformation!919 (h!10474 (t!73758 rules!3103)))) (toChars!1621 (transformation!919 (rule!1619 token!491))))) b_lambda!20555)))

(declare-fun b_lambda!20557 () Bool)

(assert (= b_lambda!20553 (or (and b!531148 b_free!14323 (= (toChars!1621 (transformation!919 (h!10474 rules!3103))) (toChars!1621 (transformation!919 (rule!1619 token!491))))) (and b!531155 b_free!14327) (and b!531394 b_free!14335 (= (toChars!1621 (transformation!919 (h!10474 (t!73758 rules!3103)))) (toChars!1621 (transformation!919 (rule!1619 token!491))))) b_lambda!20557)))

(check-sat b_and!51909 (not b!531344) (not b!531354) (not tb!47249) (not b_next!14339) (not b!531347) (not b!531368) (not b!531363) (not b!531415) (not d!188391) (not b!531382) (not b!531270) b_and!51907 b_and!51887 (not b_lambda!20557) (not b!531183) (not b!531360) (not b!531351) (not b_next!14343) (not b!531348) (not d!188409) (not b_next!14341) (not d!188397) (not b!531324) (not b!531345) (not b!531379) (not b!531359) (not d!188401) (not b!531417) (not b!531361) (not b!531383) (not b!531393) (not d!188395) (not b_next!14349) b_and!51883 (not b_next!14351) (not b!531419) (not b!531352) (not b!531355) (not d!188407) (not b!531413) (not b!531271) (not b!531412) (not b!531357) (not d!188345) (not b!531411) (not bm!38154) (not b!531173) (not b_next!14337) (not b!531399) (not b!531365) (not b!531418) b_and!51911 (not b!531346) (not d!188393) (not b!531313) (not b!531392) (not b!531416) (not d!188337) (not b_lambda!20555) (not b!531350) (not d!188387) (not d!188403) (not bm!38153) (not b!531172) (not d!188379) b_and!51913 tp_is_empty!2861 (not b!531364) (not d!188399) (not b!531358) (not b!531323) (not b!531312))
(check-sat b_and!51909 b_and!51907 b_and!51887 (not b_next!14351) (not b_next!14337) b_and!51911 (not b_next!14339) b_and!51913 (not b_next!14343) (not b_next!14341) (not b_next!14349) b_and!51883)
