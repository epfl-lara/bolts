; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190636 () Bool)

(assert start!190636)

(declare-fun b!1901694 () Bool)

(declare-fun b_free!53505 () Bool)

(declare-fun b_next!54209 () Bool)

(assert (=> b!1901694 (= b_free!53505 (not b_next!54209))))

(declare-fun tp!543250 () Bool)

(declare-fun b_and!147283 () Bool)

(assert (=> b!1901694 (= tp!543250 b_and!147283)))

(declare-fun b_free!53507 () Bool)

(declare-fun b_next!54211 () Bool)

(assert (=> b!1901694 (= b_free!53507 (not b_next!54211))))

(declare-fun tp!543252 () Bool)

(declare-fun b_and!147285 () Bool)

(assert (=> b!1901694 (= tp!543252 b_and!147285)))

(declare-fun b!1901711 () Bool)

(declare-fun b_free!53509 () Bool)

(declare-fun b_next!54213 () Bool)

(assert (=> b!1901711 (= b_free!53509 (not b_next!54213))))

(declare-fun tp!543262 () Bool)

(declare-fun b_and!147287 () Bool)

(assert (=> b!1901711 (= tp!543262 b_and!147287)))

(declare-fun b_free!53511 () Bool)

(declare-fun b_next!54215 () Bool)

(assert (=> b!1901711 (= b_free!53511 (not b_next!54215))))

(declare-fun tp!543256 () Bool)

(declare-fun b_and!147289 () Bool)

(assert (=> b!1901711 (= tp!543256 b_and!147289)))

(declare-fun b!1901708 () Bool)

(declare-fun b_free!53513 () Bool)

(declare-fun b_next!54217 () Bool)

(assert (=> b!1901708 (= b_free!53513 (not b_next!54217))))

(declare-fun tp!543251 () Bool)

(declare-fun b_and!147291 () Bool)

(assert (=> b!1901708 (= tp!543251 b_and!147291)))

(declare-fun b_free!53515 () Bool)

(declare-fun b_next!54219 () Bool)

(assert (=> b!1901708 (= b_free!53515 (not b_next!54219))))

(declare-fun tp!543253 () Bool)

(declare-fun b_and!147293 () Bool)

(assert (=> b!1901708 (= tp!543253 b_and!147293)))

(declare-fun b!1901690 () Bool)

(declare-fun e!1214712 () Bool)

(declare-datatypes ((List!21510 0))(
  ( (Nil!21428) (Cons!21428 (h!26829 (_ BitVec 16)) (t!176891 List!21510)) )
))
(declare-datatypes ((TokenValue!3950 0))(
  ( (FloatLiteralValue!7900 (text!28095 List!21510)) (TokenValueExt!3949 (__x!13398 Int)) (Broken!19750 (value!120264 List!21510)) (Object!4031) (End!3950) (Def!3950) (Underscore!3950) (Match!3950) (Else!3950) (Error!3950) (Case!3950) (If!3950) (Extends!3950) (Abstract!3950) (Class!3950) (Val!3950) (DelimiterValue!7900 (del!4010 List!21510)) (KeywordValue!3956 (value!120265 List!21510)) (CommentValue!7900 (value!120266 List!21510)) (WhitespaceValue!7900 (value!120267 List!21510)) (IndentationValue!3950 (value!120268 List!21510)) (String!24867) (Int32!3950) (Broken!19751 (value!120269 List!21510)) (Boolean!3951) (Unit!35749) (OperatorValue!3953 (op!4010 List!21510)) (IdentifierValue!7900 (value!120270 List!21510)) (IdentifierValue!7901 (value!120271 List!21510)) (WhitespaceValue!7901 (value!120272 List!21510)) (True!7900) (False!7900) (Broken!19752 (value!120273 List!21510)) (Broken!19753 (value!120274 List!21510)) (True!7901) (RightBrace!3950) (RightBracket!3950) (Colon!3950) (Null!3950) (Comma!3950) (LeftBracket!3950) (False!7901) (LeftBrace!3950) (ImaginaryLiteralValue!3950 (text!28096 List!21510)) (StringLiteralValue!11850 (value!120275 List!21510)) (EOFValue!3950 (value!120276 List!21510)) (IdentValue!3950 (value!120277 List!21510)) (DelimiterValue!7901 (value!120278 List!21510)) (DedentValue!3950 (value!120279 List!21510)) (NewLineValue!3950 (value!120280 List!21510)) (IntegerValue!11850 (value!120281 (_ BitVec 32)) (text!28097 List!21510)) (IntegerValue!11851 (value!120282 Int) (text!28098 List!21510)) (Times!3950) (Or!3950) (Equal!3950) (Minus!3950) (Broken!19754 (value!120283 List!21510)) (And!3950) (Div!3950) (LessEqual!3950) (Mod!3950) (Concat!9189) (Not!3950) (Plus!3950) (SpaceValue!3950 (value!120284 List!21510)) (IntegerValue!11852 (value!120285 Int) (text!28099 List!21510)) (StringLiteralValue!11851 (text!28100 List!21510)) (FloatLiteralValue!7901 (text!28101 List!21510)) (BytesLiteralValue!3950 (value!120286 List!21510)) (CommentValue!7901 (value!120287 List!21510)) (StringLiteralValue!11852 (value!120288 List!21510)) (ErrorTokenValue!3950 (msg!4011 List!21510)) )
))
(declare-datatypes ((C!10624 0))(
  ( (C!10625 (val!6264 Int)) )
))
(declare-datatypes ((Regex!5239 0))(
  ( (ElementMatch!5239 (c!309779 C!10624)) (Concat!9190 (regOne!10990 Regex!5239) (regTwo!10990 Regex!5239)) (EmptyExpr!5239) (Star!5239 (reg!5568 Regex!5239)) (EmptyLang!5239) (Union!5239 (regOne!10991 Regex!5239) (regTwo!10991 Regex!5239)) )
))
(declare-datatypes ((String!24868 0))(
  ( (String!24869 (value!120289 String)) )
))
(declare-datatypes ((List!21511 0))(
  ( (Nil!21429) (Cons!21429 (h!26830 C!10624) (t!176892 List!21511)) )
))
(declare-datatypes ((IArray!14259 0))(
  ( (IArray!14260 (innerList!7187 List!21511)) )
))
(declare-datatypes ((Conc!7127 0))(
  ( (Node!7127 (left!17140 Conc!7127) (right!17470 Conc!7127) (csize!14484 Int) (cheight!7338 Int)) (Leaf!10497 (xs!10021 IArray!14259) (csize!14485 Int)) (Empty!7127) )
))
(declare-datatypes ((BalanceConc!14070 0))(
  ( (BalanceConc!14071 (c!309780 Conc!7127)) )
))
(declare-datatypes ((TokenValueInjection!7484 0))(
  ( (TokenValueInjection!7485 (toValue!5431 Int) (toChars!5290 Int)) )
))
(declare-datatypes ((Rule!7428 0))(
  ( (Rule!7429 (regex!3814 Regex!5239) (tag!4240 String!24868) (isSeparator!3814 Bool) (transformation!3814 TokenValueInjection!7484)) )
))
(declare-datatypes ((Token!7180 0))(
  ( (Token!7181 (value!120290 TokenValue!3950) (rule!6007 Rule!7428) (size!16908 Int) (originalCharacters!4621 List!21511)) )
))
(declare-datatypes ((List!21512 0))(
  ( (Nil!21430) (Cons!21430 (h!26831 Token!7180) (t!176893 List!21512)) )
))
(declare-fun tokens!598 () List!21512)

(declare-fun lt!727317 () Rule!7428)

(assert (=> b!1901690 (= e!1214712 (= (rule!6007 (h!26831 tokens!598)) lt!727317))))

(declare-fun b!1901691 () Bool)

(declare-fun e!1214726 () Bool)

(declare-fun separatorToken!354 () Token!7180)

(declare-fun lt!727318 () Rule!7428)

(assert (=> b!1901691 (= e!1214726 (= (rule!6007 separatorToken!354) lt!727318))))

(declare-fun b!1901693 () Bool)

(declare-fun res!849176 () Bool)

(declare-fun e!1214719 () Bool)

(assert (=> b!1901693 (=> (not res!849176) (not e!1214719))))

(get-info :version)

(assert (=> b!1901693 (= res!849176 ((_ is Cons!21430) tokens!598))))

(declare-fun e!1214711 () Bool)

(assert (=> b!1901694 (= e!1214711 (and tp!543250 tp!543252))))

(declare-fun b!1901695 () Bool)

(declare-fun e!1214710 () Bool)

(declare-datatypes ((LexerInterface!3427 0))(
  ( (LexerInterfaceExt!3424 (__x!13399 Int)) (Lexer!3425) )
))
(declare-fun thiss!23328 () LexerInterface!3427)

(declare-datatypes ((List!21513 0))(
  ( (Nil!21431) (Cons!21431 (h!26832 Rule!7428) (t!176894 List!21513)) )
))
(declare-fun rules!3198 () List!21513)

(declare-fun rulesValidInductive!1294 (LexerInterface!3427 List!21513) Bool)

(assert (=> b!1901695 (= e!1214710 (rulesValidInductive!1294 thiss!23328 rules!3198))))

(declare-fun b!1901696 () Bool)

(declare-fun e!1214714 () Bool)

(declare-datatypes ((tuple2!20168 0))(
  ( (tuple2!20169 (_1!11553 Token!7180) (_2!11553 List!21511)) )
))
(declare-datatypes ((Option!4333 0))(
  ( (None!4332) (Some!4332 (v!26361 tuple2!20168)) )
))
(declare-fun lt!727320 () Option!4333)

(declare-fun get!6647 (Option!4333) tuple2!20168)

(assert (=> b!1901696 (= e!1214714 (= (_1!11553 (get!6647 lt!727320)) (h!26831 tokens!598)))))

(declare-fun e!1214717 () Bool)

(declare-fun e!1214708 () Bool)

(declare-fun b!1901697 () Bool)

(declare-fun tp!543259 () Bool)

(declare-fun inv!28518 (String!24868) Bool)

(declare-fun inv!28521 (TokenValueInjection!7484) Bool)

(assert (=> b!1901697 (= e!1214717 (and tp!543259 (inv!28518 (tag!4240 (h!26832 rules!3198))) (inv!28521 (transformation!3814 (h!26832 rules!3198))) e!1214708))))

(declare-fun tp!543254 () Bool)

(declare-fun e!1214716 () Bool)

(declare-fun e!1214722 () Bool)

(declare-fun b!1901698 () Bool)

(assert (=> b!1901698 (= e!1214716 (and tp!543254 (inv!28518 (tag!4240 (rule!6007 separatorToken!354))) (inv!28521 (transformation!3814 (rule!6007 separatorToken!354))) e!1214722))))

(declare-fun e!1214707 () Bool)

(declare-fun tp!543255 () Bool)

(declare-fun b!1901699 () Bool)

(declare-fun inv!21 (TokenValue!3950) Bool)

(assert (=> b!1901699 (= e!1214707 (and (inv!21 (value!120290 separatorToken!354)) e!1214716 tp!543255))))

(declare-fun b!1901700 () Bool)

(declare-fun res!849178 () Bool)

(assert (=> b!1901700 (=> (not res!849178) (not e!1214719))))

(declare-fun rulesProduceEachTokenIndividuallyList!1158 (LexerInterface!3427 List!21513 List!21512) Bool)

(assert (=> b!1901700 (= res!849178 (rulesProduceEachTokenIndividuallyList!1158 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1901701 () Bool)

(declare-fun res!849188 () Bool)

(assert (=> b!1901701 (=> res!849188 e!1214710)))

(declare-fun isDefined!3631 (Option!4333) Bool)

(declare-fun maxPrefix!1873 (LexerInterface!3427 List!21513 List!21511) Option!4333)

(declare-fun printWithSeparatorTokenWhenNeededList!470 (LexerInterface!3427 List!21513 List!21512 Token!7180) List!21511)

(assert (=> b!1901701 (= res!849188 (not (isDefined!3631 (maxPrefix!1873 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1901702 () Bool)

(declare-fun res!849181 () Bool)

(assert (=> b!1901702 (=> res!849181 e!1214710)))

(declare-fun isEmpty!13143 (List!21512) Bool)

(assert (=> b!1901702 (= res!849181 (isEmpty!13143 tokens!598))))

(declare-fun b!1901703 () Bool)

(declare-fun e!1214720 () Bool)

(assert (=> b!1901703 (= e!1214720 e!1214712)))

(declare-fun res!849184 () Bool)

(assert (=> b!1901703 (=> (not res!849184) (not e!1214712))))

(declare-fun lt!727319 () List!21511)

(declare-fun matchR!2525 (Regex!5239 List!21511) Bool)

(assert (=> b!1901703 (= res!849184 (matchR!2525 (regex!3814 lt!727317) lt!727319))))

(declare-datatypes ((Option!4334 0))(
  ( (None!4333) (Some!4333 (v!26362 Rule!7428)) )
))
(declare-fun lt!727322 () Option!4334)

(declare-fun get!6648 (Option!4334) Rule!7428)

(assert (=> b!1901703 (= lt!727317 (get!6648 lt!727322))))

(declare-fun b!1901704 () Bool)

(declare-fun res!849177 () Bool)

(assert (=> b!1901704 (=> (not res!849177) (not e!1214719))))

(assert (=> b!1901704 (= res!849177 (isSeparator!3814 (rule!6007 separatorToken!354)))))

(declare-fun b!1901705 () Bool)

(declare-fun res!849192 () Bool)

(assert (=> b!1901705 (=> (not res!849192) (not e!1214719))))

(declare-fun rulesProduceIndividualToken!1599 (LexerInterface!3427 List!21513 Token!7180) Bool)

(assert (=> b!1901705 (= res!849192 (rulesProduceIndividualToken!1599 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1901692 () Bool)

(declare-fun e!1214709 () Bool)

(assert (=> b!1901692 (= e!1214709 e!1214726)))

(declare-fun res!849182 () Bool)

(assert (=> b!1901692 (=> (not res!849182) (not e!1214726))))

(declare-fun lt!727316 () List!21511)

(assert (=> b!1901692 (= res!849182 (matchR!2525 (regex!3814 lt!727318) lt!727316))))

(declare-fun lt!727326 () Option!4334)

(assert (=> b!1901692 (= lt!727318 (get!6648 lt!727326))))

(declare-fun res!849179 () Bool)

(assert (=> start!190636 (=> (not res!849179) (not e!1214719))))

(assert (=> start!190636 (= res!849179 ((_ is Lexer!3425) thiss!23328))))

(assert (=> start!190636 e!1214719))

(assert (=> start!190636 true))

(declare-fun e!1214728 () Bool)

(assert (=> start!190636 e!1214728))

(declare-fun e!1214713 () Bool)

(assert (=> start!190636 e!1214713))

(declare-fun inv!28522 (Token!7180) Bool)

(assert (=> start!190636 (and (inv!28522 separatorToken!354) e!1214707)))

(declare-fun tp!543257 () Bool)

(declare-fun b!1901706 () Bool)

(declare-fun e!1214723 () Bool)

(assert (=> b!1901706 (= e!1214713 (and (inv!28522 (h!26831 tokens!598)) e!1214723 tp!543257))))

(declare-fun e!1214725 () Bool)

(declare-fun tp!543260 () Bool)

(declare-fun b!1901707 () Bool)

(assert (=> b!1901707 (= e!1214725 (and tp!543260 (inv!28518 (tag!4240 (rule!6007 (h!26831 tokens!598)))) (inv!28521 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) e!1214711))))

(assert (=> b!1901708 (= e!1214708 (and tp!543251 tp!543253))))

(declare-fun b!1901709 () Bool)

(declare-fun res!849186 () Bool)

(assert (=> b!1901709 (=> (not res!849186) (not e!1214719))))

(declare-fun lambda!74327 () Int)

(declare-fun forall!4496 (List!21512 Int) Bool)

(assert (=> b!1901709 (= res!849186 (forall!4496 tokens!598 lambda!74327))))

(declare-fun b!1901710 () Bool)

(declare-fun res!849180 () Bool)

(assert (=> b!1901710 (=> (not res!849180) (not e!1214719))))

(declare-fun rulesInvariant!3034 (LexerInterface!3427 List!21513) Bool)

(assert (=> b!1901710 (= res!849180 (rulesInvariant!3034 thiss!23328 rules!3198))))

(assert (=> b!1901711 (= e!1214722 (and tp!543262 tp!543256))))

(declare-fun b!1901712 () Bool)

(declare-fun res!849190 () Bool)

(assert (=> b!1901712 (=> (not res!849190) (not e!1214719))))

(declare-fun sepAndNonSepRulesDisjointChars!912 (List!21513 List!21513) Bool)

(assert (=> b!1901712 (= res!849190 (sepAndNonSepRulesDisjointChars!912 rules!3198 rules!3198))))

(declare-fun b!1901713 () Bool)

(declare-fun res!849189 () Bool)

(assert (=> b!1901713 (=> (not res!849189) (not e!1214719))))

(declare-fun isEmpty!13144 (List!21513) Bool)

(assert (=> b!1901713 (= res!849189 (not (isEmpty!13144 rules!3198)))))

(declare-fun b!1901714 () Bool)

(assert (=> b!1901714 (= e!1214719 (not e!1214710))))

(declare-fun res!849191 () Bool)

(assert (=> b!1901714 (=> res!849191 e!1214710)))

(declare-fun lt!727328 () Option!4333)

(assert (=> b!1901714 (= res!849191 (or (not ((_ is Some!4332) lt!727328)) (not (= (_1!11553 (v!26361 lt!727328)) (h!26831 tokens!598)))))))

(declare-fun ++!5757 (List!21511 List!21511) List!21511)

(assert (=> b!1901714 (= lt!727328 (maxPrefix!1873 thiss!23328 rules!3198 (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))))

(assert (=> b!1901714 e!1214720))

(declare-fun res!849185 () Bool)

(assert (=> b!1901714 (=> (not res!849185) (not e!1214720))))

(declare-fun isDefined!3632 (Option!4334) Bool)

(assert (=> b!1901714 (= res!849185 (isDefined!3632 lt!727322))))

(declare-fun getRuleFromTag!657 (LexerInterface!3427 List!21513 String!24868) Option!4334)

(assert (=> b!1901714 (= lt!727322 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 (h!26831 tokens!598)))))))

(declare-datatypes ((Unit!35750 0))(
  ( (Unit!35751) )
))
(declare-fun lt!727325 () Unit!35750)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!657 (LexerInterface!3427 List!21513 List!21511 Token!7180) Unit!35750)

(assert (=> b!1901714 (= lt!727325 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!657 thiss!23328 rules!3198 lt!727319 (h!26831 tokens!598)))))

(assert (=> b!1901714 e!1214714))

(declare-fun res!849187 () Bool)

(assert (=> b!1901714 (=> (not res!849187) (not e!1214714))))

(assert (=> b!1901714 (= res!849187 (isDefined!3631 lt!727320))))

(assert (=> b!1901714 (= lt!727320 (maxPrefix!1873 thiss!23328 rules!3198 lt!727319))))

(declare-fun lt!727323 () BalanceConc!14070)

(declare-fun list!8706 (BalanceConc!14070) List!21511)

(assert (=> b!1901714 (= lt!727319 (list!8706 lt!727323))))

(assert (=> b!1901714 e!1214709))

(declare-fun res!849183 () Bool)

(assert (=> b!1901714 (=> (not res!849183) (not e!1214709))))

(assert (=> b!1901714 (= res!849183 (isDefined!3632 lt!727326))))

(assert (=> b!1901714 (= lt!727326 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 separatorToken!354))))))

(declare-fun lt!727327 () Unit!35750)

(assert (=> b!1901714 (= lt!727327 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!657 thiss!23328 rules!3198 lt!727316 separatorToken!354))))

(declare-fun charsOf!2370 (Token!7180) BalanceConc!14070)

(assert (=> b!1901714 (= lt!727316 (list!8706 (charsOf!2370 separatorToken!354)))))

(declare-fun lt!727324 () Unit!35750)

(declare-fun lemmaEqSameImage!522 (TokenValueInjection!7484 BalanceConc!14070 BalanceConc!14070) Unit!35750)

(declare-fun seqFromList!2686 (List!21511) BalanceConc!14070)

(assert (=> b!1901714 (= lt!727324 (lemmaEqSameImage!522 (transformation!3814 (rule!6007 (h!26831 tokens!598))) lt!727323 (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598)))))))

(declare-fun lt!727321 () Unit!35750)

(declare-fun lemmaSemiInverse!793 (TokenValueInjection!7484 BalanceConc!14070) Unit!35750)

(assert (=> b!1901714 (= lt!727321 (lemmaSemiInverse!793 (transformation!3814 (rule!6007 (h!26831 tokens!598))) lt!727323))))

(assert (=> b!1901714 (= lt!727323 (charsOf!2370 (h!26831 tokens!598)))))

(declare-fun b!1901715 () Bool)

(declare-fun tp!543261 () Bool)

(assert (=> b!1901715 (= e!1214723 (and (inv!21 (value!120290 (h!26831 tokens!598))) e!1214725 tp!543261))))

(declare-fun b!1901716 () Bool)

(declare-fun tp!543258 () Bool)

(assert (=> b!1901716 (= e!1214728 (and e!1214717 tp!543258))))

(assert (= (and start!190636 res!849179) b!1901713))

(assert (= (and b!1901713 res!849189) b!1901710))

(assert (= (and b!1901710 res!849180) b!1901700))

(assert (= (and b!1901700 res!849178) b!1901705))

(assert (= (and b!1901705 res!849192) b!1901704))

(assert (= (and b!1901704 res!849177) b!1901709))

(assert (= (and b!1901709 res!849186) b!1901712))

(assert (= (and b!1901712 res!849190) b!1901693))

(assert (= (and b!1901693 res!849176) b!1901714))

(assert (= (and b!1901714 res!849183) b!1901692))

(assert (= (and b!1901692 res!849182) b!1901691))

(assert (= (and b!1901714 res!849187) b!1901696))

(assert (= (and b!1901714 res!849185) b!1901703))

(assert (= (and b!1901703 res!849184) b!1901690))

(assert (= (and b!1901714 (not res!849191)) b!1901702))

(assert (= (and b!1901702 (not res!849181)) b!1901701))

(assert (= (and b!1901701 (not res!849188)) b!1901695))

(assert (= b!1901697 b!1901708))

(assert (= b!1901716 b!1901697))

(assert (= (and start!190636 ((_ is Cons!21431) rules!3198)) b!1901716))

(assert (= b!1901707 b!1901694))

(assert (= b!1901715 b!1901707))

(assert (= b!1901706 b!1901715))

(assert (= (and start!190636 ((_ is Cons!21430) tokens!598)) b!1901706))

(assert (= b!1901698 b!1901711))

(assert (= b!1901699 b!1901698))

(assert (= start!190636 b!1901699))

(declare-fun m!2332867 () Bool)

(assert (=> b!1901712 m!2332867))

(declare-fun m!2332869 () Bool)

(assert (=> b!1901703 m!2332869))

(declare-fun m!2332871 () Bool)

(assert (=> b!1901703 m!2332871))

(declare-fun m!2332873 () Bool)

(assert (=> b!1901714 m!2332873))

(declare-fun m!2332875 () Bool)

(assert (=> b!1901714 m!2332875))

(declare-fun m!2332877 () Bool)

(assert (=> b!1901714 m!2332877))

(declare-fun m!2332879 () Bool)

(assert (=> b!1901714 m!2332879))

(assert (=> b!1901714 m!2332877))

(declare-fun m!2332881 () Bool)

(assert (=> b!1901714 m!2332881))

(declare-fun m!2332883 () Bool)

(assert (=> b!1901714 m!2332883))

(declare-fun m!2332885 () Bool)

(assert (=> b!1901714 m!2332885))

(assert (=> b!1901714 m!2332875))

(declare-fun m!2332887 () Bool)

(assert (=> b!1901714 m!2332887))

(assert (=> b!1901714 m!2332873))

(declare-fun m!2332889 () Bool)

(assert (=> b!1901714 m!2332889))

(declare-fun m!2332891 () Bool)

(assert (=> b!1901714 m!2332891))

(declare-fun m!2332893 () Bool)

(assert (=> b!1901714 m!2332893))

(declare-fun m!2332895 () Bool)

(assert (=> b!1901714 m!2332895))

(assert (=> b!1901714 m!2332889))

(declare-fun m!2332897 () Bool)

(assert (=> b!1901714 m!2332897))

(declare-fun m!2332899 () Bool)

(assert (=> b!1901714 m!2332899))

(declare-fun m!2332901 () Bool)

(assert (=> b!1901714 m!2332901))

(declare-fun m!2332903 () Bool)

(assert (=> b!1901714 m!2332903))

(declare-fun m!2332905 () Bool)

(assert (=> b!1901714 m!2332905))

(declare-fun m!2332907 () Bool)

(assert (=> b!1901714 m!2332907))

(declare-fun m!2332909 () Bool)

(assert (=> b!1901702 m!2332909))

(declare-fun m!2332911 () Bool)

(assert (=> b!1901697 m!2332911))

(declare-fun m!2332913 () Bool)

(assert (=> b!1901697 m!2332913))

(declare-fun m!2332915 () Bool)

(assert (=> b!1901692 m!2332915))

(declare-fun m!2332917 () Bool)

(assert (=> b!1901692 m!2332917))

(declare-fun m!2332919 () Bool)

(assert (=> b!1901705 m!2332919))

(declare-fun m!2332921 () Bool)

(assert (=> b!1901695 m!2332921))

(declare-fun m!2332923 () Bool)

(assert (=> b!1901713 m!2332923))

(declare-fun m!2332925 () Bool)

(assert (=> b!1901710 m!2332925))

(declare-fun m!2332927 () Bool)

(assert (=> b!1901701 m!2332927))

(assert (=> b!1901701 m!2332927))

(declare-fun m!2332929 () Bool)

(assert (=> b!1901701 m!2332929))

(assert (=> b!1901701 m!2332929))

(declare-fun m!2332931 () Bool)

(assert (=> b!1901701 m!2332931))

(declare-fun m!2332933 () Bool)

(assert (=> b!1901699 m!2332933))

(declare-fun m!2332935 () Bool)

(assert (=> b!1901698 m!2332935))

(declare-fun m!2332937 () Bool)

(assert (=> b!1901698 m!2332937))

(declare-fun m!2332939 () Bool)

(assert (=> b!1901700 m!2332939))

(declare-fun m!2332941 () Bool)

(assert (=> b!1901706 m!2332941))

(declare-fun m!2332943 () Bool)

(assert (=> b!1901707 m!2332943))

(declare-fun m!2332945 () Bool)

(assert (=> b!1901707 m!2332945))

(declare-fun m!2332947 () Bool)

(assert (=> b!1901715 m!2332947))

(declare-fun m!2332949 () Bool)

(assert (=> b!1901696 m!2332949))

(declare-fun m!2332951 () Bool)

(assert (=> start!190636 m!2332951))

(declare-fun m!2332953 () Bool)

(assert (=> b!1901709 m!2332953))

(check-sat (not b_next!54215) (not b!1901714) b_and!147289 (not b!1901702) (not b!1901695) (not b_next!54219) (not b!1901710) (not b_next!54213) (not b_next!54211) b_and!147293 (not b!1901700) (not b!1901698) (not b!1901709) (not b!1901713) (not start!190636) (not b!1901692) (not b!1901701) (not b!1901696) b_and!147285 (not b!1901707) (not b_next!54209) (not b!1901715) (not b!1901712) (not b!1901706) (not b!1901703) (not b!1901697) b_and!147283 (not b!1901699) (not b!1901705) (not b!1901716) (not b_next!54217) b_and!147291 b_and!147287)
(check-sat (not b_next!54215) b_and!147289 (not b_next!54219) (not b_next!54213) (not b_next!54211) b_and!147293 b_and!147283 b_and!147285 (not b_next!54209) (not b_next!54217) b_and!147291 b_and!147287)
(get-model)

(declare-fun d!581536 () Bool)

(assert (=> d!581536 (= (inv!28518 (tag!4240 (rule!6007 separatorToken!354))) (= (mod (str.len (value!120289 (tag!4240 (rule!6007 separatorToken!354)))) 2) 0))))

(assert (=> b!1901698 d!581536))

(declare-fun d!581538 () Bool)

(declare-fun res!849219 () Bool)

(declare-fun e!1214753 () Bool)

(assert (=> d!581538 (=> (not res!849219) (not e!1214753))))

(declare-fun semiInverseModEq!1539 (Int Int) Bool)

(assert (=> d!581538 (= res!849219 (semiInverseModEq!1539 (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354)))))))

(assert (=> d!581538 (= (inv!28521 (transformation!3814 (rule!6007 separatorToken!354))) e!1214753)))

(declare-fun b!1901747 () Bool)

(declare-fun equivClasses!1466 (Int Int) Bool)

(assert (=> b!1901747 (= e!1214753 (equivClasses!1466 (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354)))))))

(assert (= (and d!581538 res!849219) b!1901747))

(declare-fun m!2332969 () Bool)

(assert (=> d!581538 m!2332969))

(declare-fun m!2332971 () Bool)

(assert (=> b!1901747 m!2332971))

(assert (=> b!1901698 d!581538))

(declare-fun d!581540 () Bool)

(declare-fun res!849224 () Bool)

(declare-fun e!1214758 () Bool)

(assert (=> d!581540 (=> res!849224 e!1214758)))

(assert (=> d!581540 (= res!849224 ((_ is Nil!21430) tokens!598))))

(assert (=> d!581540 (= (forall!4496 tokens!598 lambda!74327) e!1214758)))

(declare-fun b!1901752 () Bool)

(declare-fun e!1214759 () Bool)

(assert (=> b!1901752 (= e!1214758 e!1214759)))

(declare-fun res!849225 () Bool)

(assert (=> b!1901752 (=> (not res!849225) (not e!1214759))))

(declare-fun dynLambda!10419 (Int Token!7180) Bool)

(assert (=> b!1901752 (= res!849225 (dynLambda!10419 lambda!74327 (h!26831 tokens!598)))))

(declare-fun b!1901753 () Bool)

(assert (=> b!1901753 (= e!1214759 (forall!4496 (t!176893 tokens!598) lambda!74327))))

(assert (= (and d!581540 (not res!849224)) b!1901752))

(assert (= (and b!1901752 res!849225) b!1901753))

(declare-fun b_lambda!62645 () Bool)

(assert (=> (not b_lambda!62645) (not b!1901752)))

(declare-fun m!2332973 () Bool)

(assert (=> b!1901752 m!2332973))

(declare-fun m!2332975 () Bool)

(assert (=> b!1901753 m!2332975))

(assert (=> b!1901709 d!581540))

(declare-fun d!581542 () Bool)

(declare-fun c!309791 () Bool)

(assert (=> d!581542 (= c!309791 ((_ is IntegerValue!11850) (value!120290 separatorToken!354)))))

(declare-fun e!1214767 () Bool)

(assert (=> d!581542 (= (inv!21 (value!120290 separatorToken!354)) e!1214767)))

(declare-fun b!1901764 () Bool)

(declare-fun inv!16 (TokenValue!3950) Bool)

(assert (=> b!1901764 (= e!1214767 (inv!16 (value!120290 separatorToken!354)))))

(declare-fun b!1901765 () Bool)

(declare-fun res!849228 () Bool)

(declare-fun e!1214766 () Bool)

(assert (=> b!1901765 (=> res!849228 e!1214766)))

(assert (=> b!1901765 (= res!849228 (not ((_ is IntegerValue!11852) (value!120290 separatorToken!354))))))

(declare-fun e!1214768 () Bool)

(assert (=> b!1901765 (= e!1214768 e!1214766)))

(declare-fun b!1901766 () Bool)

(declare-fun inv!15 (TokenValue!3950) Bool)

(assert (=> b!1901766 (= e!1214766 (inv!15 (value!120290 separatorToken!354)))))

(declare-fun b!1901767 () Bool)

(declare-fun inv!17 (TokenValue!3950) Bool)

(assert (=> b!1901767 (= e!1214768 (inv!17 (value!120290 separatorToken!354)))))

(declare-fun b!1901768 () Bool)

(assert (=> b!1901768 (= e!1214767 e!1214768)))

(declare-fun c!309792 () Bool)

(assert (=> b!1901768 (= c!309792 ((_ is IntegerValue!11851) (value!120290 separatorToken!354)))))

(assert (= (and d!581542 c!309791) b!1901764))

(assert (= (and d!581542 (not c!309791)) b!1901768))

(assert (= (and b!1901768 c!309792) b!1901767))

(assert (= (and b!1901768 (not c!309792)) b!1901765))

(assert (= (and b!1901765 (not res!849228)) b!1901766))

(declare-fun m!2332977 () Bool)

(assert (=> b!1901764 m!2332977))

(declare-fun m!2332979 () Bool)

(assert (=> b!1901766 m!2332979))

(declare-fun m!2332981 () Bool)

(assert (=> b!1901767 m!2332981))

(assert (=> b!1901699 d!581542))

(declare-fun d!581544 () Bool)

(assert (=> d!581544 (= (inv!28518 (tag!4240 (h!26832 rules!3198))) (= (mod (str.len (value!120289 (tag!4240 (h!26832 rules!3198)))) 2) 0))))

(assert (=> b!1901697 d!581544))

(declare-fun d!581546 () Bool)

(declare-fun res!849229 () Bool)

(declare-fun e!1214769 () Bool)

(assert (=> d!581546 (=> (not res!849229) (not e!1214769))))

(assert (=> d!581546 (= res!849229 (semiInverseModEq!1539 (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (h!26832 rules!3198)))))))

(assert (=> d!581546 (= (inv!28521 (transformation!3814 (h!26832 rules!3198))) e!1214769)))

(declare-fun b!1901769 () Bool)

(assert (=> b!1901769 (= e!1214769 (equivClasses!1466 (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (h!26832 rules!3198)))))))

(assert (= (and d!581546 res!849229) b!1901769))

(declare-fun m!2332983 () Bool)

(assert (=> d!581546 m!2332983))

(declare-fun m!2332985 () Bool)

(assert (=> b!1901769 m!2332985))

(assert (=> b!1901697 d!581546))

(declare-fun d!581548 () Bool)

(declare-fun res!849234 () Bool)

(declare-fun e!1214772 () Bool)

(assert (=> d!581548 (=> (not res!849234) (not e!1214772))))

(declare-fun isEmpty!13147 (List!21511) Bool)

(assert (=> d!581548 (= res!849234 (not (isEmpty!13147 (originalCharacters!4621 separatorToken!354))))))

(assert (=> d!581548 (= (inv!28522 separatorToken!354) e!1214772)))

(declare-fun b!1901774 () Bool)

(declare-fun res!849235 () Bool)

(assert (=> b!1901774 (=> (not res!849235) (not e!1214772))))

(declare-fun dynLambda!10420 (Int TokenValue!3950) BalanceConc!14070)

(assert (=> b!1901774 (= res!849235 (= (originalCharacters!4621 separatorToken!354) (list!8706 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (value!120290 separatorToken!354)))))))

(declare-fun b!1901775 () Bool)

(declare-fun size!16910 (List!21511) Int)

(assert (=> b!1901775 (= e!1214772 (= (size!16908 separatorToken!354) (size!16910 (originalCharacters!4621 separatorToken!354))))))

(assert (= (and d!581548 res!849234) b!1901774))

(assert (= (and b!1901774 res!849235) b!1901775))

(declare-fun b_lambda!62647 () Bool)

(assert (=> (not b_lambda!62647) (not b!1901774)))

(declare-fun t!176896 () Bool)

(declare-fun tb!115949 () Bool)

(assert (=> (and b!1901694 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354)))) t!176896) tb!115949))

(declare-fun b!1901780 () Bool)

(declare-fun e!1214775 () Bool)

(declare-fun tp!543265 () Bool)

(declare-fun inv!28525 (Conc!7127) Bool)

(assert (=> b!1901780 (= e!1214775 (and (inv!28525 (c!309780 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (value!120290 separatorToken!354)))) tp!543265))))

(declare-fun result!140200 () Bool)

(declare-fun inv!28526 (BalanceConc!14070) Bool)

(assert (=> tb!115949 (= result!140200 (and (inv!28526 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (value!120290 separatorToken!354))) e!1214775))))

(assert (= tb!115949 b!1901780))

(declare-fun m!2332987 () Bool)

(assert (=> b!1901780 m!2332987))

(declare-fun m!2332989 () Bool)

(assert (=> tb!115949 m!2332989))

(assert (=> b!1901774 t!176896))

(declare-fun b_and!147295 () Bool)

(assert (= b_and!147285 (and (=> t!176896 result!140200) b_and!147295)))

(declare-fun t!176898 () Bool)

(declare-fun tb!115951 () Bool)

(assert (=> (and b!1901711 (= (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354)))) t!176898) tb!115951))

(declare-fun result!140204 () Bool)

(assert (= result!140204 result!140200))

(assert (=> b!1901774 t!176898))

(declare-fun b_and!147297 () Bool)

(assert (= b_and!147289 (and (=> t!176898 result!140204) b_and!147297)))

(declare-fun t!176900 () Bool)

(declare-fun tb!115953 () Bool)

(assert (=> (and b!1901708 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354)))) t!176900) tb!115953))

(declare-fun result!140206 () Bool)

(assert (= result!140206 result!140200))

(assert (=> b!1901774 t!176900))

(declare-fun b_and!147299 () Bool)

(assert (= b_and!147293 (and (=> t!176900 result!140206) b_and!147299)))

(declare-fun m!2332991 () Bool)

(assert (=> d!581548 m!2332991))

(declare-fun m!2332993 () Bool)

(assert (=> b!1901774 m!2332993))

(assert (=> b!1901774 m!2332993))

(declare-fun m!2332995 () Bool)

(assert (=> b!1901774 m!2332995))

(declare-fun m!2332997 () Bool)

(assert (=> b!1901775 m!2332997))

(assert (=> start!190636 d!581548))

(declare-fun d!581550 () Bool)

(declare-fun res!849236 () Bool)

(declare-fun e!1214776 () Bool)

(assert (=> d!581550 (=> (not res!849236) (not e!1214776))))

(assert (=> d!581550 (= res!849236 (not (isEmpty!13147 (originalCharacters!4621 (h!26831 tokens!598)))))))

(assert (=> d!581550 (= (inv!28522 (h!26831 tokens!598)) e!1214776)))

(declare-fun b!1901781 () Bool)

(declare-fun res!849237 () Bool)

(assert (=> b!1901781 (=> (not res!849237) (not e!1214776))))

(assert (=> b!1901781 (= res!849237 (= (originalCharacters!4621 (h!26831 tokens!598)) (list!8706 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (value!120290 (h!26831 tokens!598))))))))

(declare-fun b!1901782 () Bool)

(assert (=> b!1901782 (= e!1214776 (= (size!16908 (h!26831 tokens!598)) (size!16910 (originalCharacters!4621 (h!26831 tokens!598)))))))

(assert (= (and d!581550 res!849236) b!1901781))

(assert (= (and b!1901781 res!849237) b!1901782))

(declare-fun b_lambda!62649 () Bool)

(assert (=> (not b_lambda!62649) (not b!1901781)))

(declare-fun t!176902 () Bool)

(declare-fun tb!115955 () Bool)

(assert (=> (and b!1901694 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176902) tb!115955))

(declare-fun b!1901783 () Bool)

(declare-fun e!1214777 () Bool)

(declare-fun tp!543266 () Bool)

(assert (=> b!1901783 (= e!1214777 (and (inv!28525 (c!309780 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (value!120290 (h!26831 tokens!598))))) tp!543266))))

(declare-fun result!140208 () Bool)

(assert (=> tb!115955 (= result!140208 (and (inv!28526 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (value!120290 (h!26831 tokens!598)))) e!1214777))))

(assert (= tb!115955 b!1901783))

(declare-fun m!2332999 () Bool)

(assert (=> b!1901783 m!2332999))

(declare-fun m!2333001 () Bool)

(assert (=> tb!115955 m!2333001))

(assert (=> b!1901781 t!176902))

(declare-fun b_and!147301 () Bool)

(assert (= b_and!147295 (and (=> t!176902 result!140208) b_and!147301)))

(declare-fun t!176904 () Bool)

(declare-fun tb!115957 () Bool)

(assert (=> (and b!1901711 (= (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176904) tb!115957))

(declare-fun result!140210 () Bool)

(assert (= result!140210 result!140208))

(assert (=> b!1901781 t!176904))

(declare-fun b_and!147303 () Bool)

(assert (= b_and!147297 (and (=> t!176904 result!140210) b_and!147303)))

(declare-fun t!176906 () Bool)

(declare-fun tb!115959 () Bool)

(assert (=> (and b!1901708 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176906) tb!115959))

(declare-fun result!140212 () Bool)

(assert (= result!140212 result!140208))

(assert (=> b!1901781 t!176906))

(declare-fun b_and!147305 () Bool)

(assert (= b_and!147299 (and (=> t!176906 result!140212) b_and!147305)))

(declare-fun m!2333003 () Bool)

(assert (=> d!581550 m!2333003))

(declare-fun m!2333005 () Bool)

(assert (=> b!1901781 m!2333005))

(assert (=> b!1901781 m!2333005))

(declare-fun m!2333007 () Bool)

(assert (=> b!1901781 m!2333007))

(declare-fun m!2333009 () Bool)

(assert (=> b!1901782 m!2333009))

(assert (=> b!1901706 d!581550))

(declare-fun d!581552 () Bool)

(assert (=> d!581552 (= (get!6647 lt!727320) (v!26361 lt!727320))))

(assert (=> b!1901696 d!581552))

(declare-fun d!581554 () Bool)

(assert (=> d!581554 (= (inv!28518 (tag!4240 (rule!6007 (h!26831 tokens!598)))) (= (mod (str.len (value!120289 (tag!4240 (rule!6007 (h!26831 tokens!598))))) 2) 0))))

(assert (=> b!1901707 d!581554))

(declare-fun d!581556 () Bool)

(declare-fun res!849238 () Bool)

(declare-fun e!1214778 () Bool)

(assert (=> d!581556 (=> (not res!849238) (not e!1214778))))

(assert (=> d!581556 (= res!849238 (semiInverseModEq!1539 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))))))

(assert (=> d!581556 (= (inv!28521 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) e!1214778)))

(declare-fun b!1901784 () Bool)

(assert (=> b!1901784 (= e!1214778 (equivClasses!1466 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))))))

(assert (= (and d!581556 res!849238) b!1901784))

(declare-fun m!2333011 () Bool)

(assert (=> d!581556 m!2333011))

(declare-fun m!2333013 () Bool)

(assert (=> b!1901784 m!2333013))

(assert (=> b!1901707 d!581556))

(declare-fun d!581558 () Bool)

(declare-fun lt!727336 () Bool)

(declare-fun e!1214785 () Bool)

(assert (=> d!581558 (= lt!727336 e!1214785)))

(declare-fun res!849247 () Bool)

(assert (=> d!581558 (=> (not res!849247) (not e!1214785))))

(declare-datatypes ((IArray!14263 0))(
  ( (IArray!14264 (innerList!7189 List!21512)) )
))
(declare-datatypes ((Conc!7129 0))(
  ( (Node!7129 (left!17146 Conc!7129) (right!17476 Conc!7129) (csize!14488 Int) (cheight!7340 Int)) (Leaf!10499 (xs!10023 IArray!14263) (csize!14489 Int)) (Empty!7129) )
))
(declare-datatypes ((BalanceConc!14074 0))(
  ( (BalanceConc!14075 (c!309888 Conc!7129)) )
))
(declare-fun list!8708 (BalanceConc!14074) List!21512)

(declare-datatypes ((tuple2!20172 0))(
  ( (tuple2!20173 (_1!11555 BalanceConc!14074) (_2!11555 BalanceConc!14070)) )
))
(declare-fun lex!1518 (LexerInterface!3427 List!21513 BalanceConc!14070) tuple2!20172)

(declare-fun print!1447 (LexerInterface!3427 BalanceConc!14074) BalanceConc!14070)

(declare-fun singletonSeq!1845 (Token!7180) BalanceConc!14074)

(assert (=> d!581558 (= res!849247 (= (list!8708 (_1!11555 (lex!1518 thiss!23328 rules!3198 (print!1447 thiss!23328 (singletonSeq!1845 separatorToken!354))))) (list!8708 (singletonSeq!1845 separatorToken!354))))))

(declare-fun e!1214786 () Bool)

(assert (=> d!581558 (= lt!727336 e!1214786)))

(declare-fun res!849249 () Bool)

(assert (=> d!581558 (=> (not res!849249) (not e!1214786))))

(declare-fun lt!727337 () tuple2!20172)

(declare-fun size!16912 (BalanceConc!14074) Int)

(assert (=> d!581558 (= res!849249 (= (size!16912 (_1!11555 lt!727337)) 1))))

(assert (=> d!581558 (= lt!727337 (lex!1518 thiss!23328 rules!3198 (print!1447 thiss!23328 (singletonSeq!1845 separatorToken!354))))))

(assert (=> d!581558 (not (isEmpty!13144 rules!3198))))

(assert (=> d!581558 (= (rulesProduceIndividualToken!1599 thiss!23328 rules!3198 separatorToken!354) lt!727336)))

(declare-fun b!1901795 () Bool)

(declare-fun res!849248 () Bool)

(assert (=> b!1901795 (=> (not res!849248) (not e!1214786))))

(declare-fun apply!5619 (BalanceConc!14074 Int) Token!7180)

(assert (=> b!1901795 (= res!849248 (= (apply!5619 (_1!11555 lt!727337) 0) separatorToken!354))))

(declare-fun b!1901796 () Bool)

(declare-fun isEmpty!13150 (BalanceConc!14070) Bool)

(assert (=> b!1901796 (= e!1214786 (isEmpty!13150 (_2!11555 lt!727337)))))

(declare-fun b!1901797 () Bool)

(assert (=> b!1901797 (= e!1214785 (isEmpty!13150 (_2!11555 (lex!1518 thiss!23328 rules!3198 (print!1447 thiss!23328 (singletonSeq!1845 separatorToken!354))))))))

(assert (= (and d!581558 res!849249) b!1901795))

(assert (= (and b!1901795 res!849248) b!1901796))

(assert (= (and d!581558 res!849247) b!1901797))

(declare-fun m!2333021 () Bool)

(assert (=> d!581558 m!2333021))

(declare-fun m!2333023 () Bool)

(assert (=> d!581558 m!2333023))

(declare-fun m!2333025 () Bool)

(assert (=> d!581558 m!2333025))

(declare-fun m!2333027 () Bool)

(assert (=> d!581558 m!2333027))

(assert (=> d!581558 m!2333021))

(assert (=> d!581558 m!2333027))

(assert (=> d!581558 m!2333027))

(declare-fun m!2333029 () Bool)

(assert (=> d!581558 m!2333029))

(assert (=> d!581558 m!2332923))

(declare-fun m!2333031 () Bool)

(assert (=> d!581558 m!2333031))

(declare-fun m!2333033 () Bool)

(assert (=> b!1901795 m!2333033))

(declare-fun m!2333035 () Bool)

(assert (=> b!1901796 m!2333035))

(assert (=> b!1901797 m!2333027))

(assert (=> b!1901797 m!2333027))

(assert (=> b!1901797 m!2333021))

(assert (=> b!1901797 m!2333021))

(assert (=> b!1901797 m!2333023))

(declare-fun m!2333037 () Bool)

(assert (=> b!1901797 m!2333037))

(assert (=> b!1901705 d!581558))

(declare-fun d!581562 () Bool)

(assert (=> d!581562 true))

(declare-fun lt!727362 () Bool)

(declare-fun lambda!74336 () Int)

(declare-fun forall!4498 (List!21513 Int) Bool)

(assert (=> d!581562 (= lt!727362 (forall!4498 rules!3198 lambda!74336))))

(declare-fun e!1214858 () Bool)

(assert (=> d!581562 (= lt!727362 e!1214858)))

(declare-fun res!849326 () Bool)

(assert (=> d!581562 (=> res!849326 e!1214858)))

(assert (=> d!581562 (= res!849326 (not ((_ is Cons!21431) rules!3198)))))

(assert (=> d!581562 (= (rulesValidInductive!1294 thiss!23328 rules!3198) lt!727362)))

(declare-fun b!1901926 () Bool)

(declare-fun e!1214859 () Bool)

(assert (=> b!1901926 (= e!1214858 e!1214859)))

(declare-fun res!849327 () Bool)

(assert (=> b!1901926 (=> (not res!849327) (not e!1214859))))

(declare-fun ruleValid!1153 (LexerInterface!3427 Rule!7428) Bool)

(assert (=> b!1901926 (= res!849327 (ruleValid!1153 thiss!23328 (h!26832 rules!3198)))))

(declare-fun b!1901927 () Bool)

(assert (=> b!1901927 (= e!1214859 (rulesValidInductive!1294 thiss!23328 (t!176894 rules!3198)))))

(assert (= (and d!581562 (not res!849326)) b!1901926))

(assert (= (and b!1901926 res!849327) b!1901927))

(declare-fun m!2333133 () Bool)

(assert (=> d!581562 m!2333133))

(declare-fun m!2333135 () Bool)

(assert (=> b!1901926 m!2333135))

(declare-fun m!2333137 () Bool)

(assert (=> b!1901927 m!2333137))

(assert (=> b!1901695 d!581562))

(declare-fun d!581586 () Bool)

(declare-fun isEmpty!13151 (Option!4334) Bool)

(assert (=> d!581586 (= (isDefined!3632 lt!727326) (not (isEmpty!13151 lt!727326)))))

(declare-fun bs!413595 () Bool)

(assert (= bs!413595 d!581586))

(declare-fun m!2333139 () Bool)

(assert (=> bs!413595 m!2333139))

(assert (=> b!1901714 d!581586))

(declare-fun b!1901960 () Bool)

(declare-fun res!849344 () Bool)

(declare-fun e!1214872 () Bool)

(assert (=> b!1901960 (=> (not res!849344) (not e!1214872))))

(declare-fun lt!727385 () Option!4333)

(assert (=> b!1901960 (= res!849344 (matchR!2525 (regex!3814 (rule!6007 (_1!11553 (get!6647 lt!727385)))) (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727385))))))))

(declare-fun b!1901961 () Bool)

(declare-fun res!849343 () Bool)

(assert (=> b!1901961 (=> (not res!849343) (not e!1214872))))

(assert (=> b!1901961 (= res!849343 (= (++!5757 (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727385)))) (_2!11553 (get!6647 lt!727385))) (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))))

(declare-fun b!1901963 () Bool)

(declare-fun res!849347 () Bool)

(assert (=> b!1901963 (=> (not res!849347) (not e!1214872))))

(assert (=> b!1901963 (= res!849347 (= (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727385)))) (originalCharacters!4621 (_1!11553 (get!6647 lt!727385)))))))

(declare-fun b!1901964 () Bool)

(declare-fun e!1214873 () Bool)

(assert (=> b!1901964 (= e!1214873 e!1214872)))

(declare-fun res!849345 () Bool)

(assert (=> b!1901964 (=> (not res!849345) (not e!1214872))))

(assert (=> b!1901964 (= res!849345 (isDefined!3631 lt!727385))))

(declare-fun b!1901965 () Bool)

(declare-fun e!1214874 () Option!4333)

(declare-fun call!117108 () Option!4333)

(assert (=> b!1901965 (= e!1214874 call!117108)))

(declare-fun b!1901966 () Bool)

(declare-fun res!849342 () Bool)

(assert (=> b!1901966 (=> (not res!849342) (not e!1214872))))

(declare-fun apply!5620 (TokenValueInjection!7484 BalanceConc!14070) TokenValue!3950)

(assert (=> b!1901966 (= res!849342 (= (value!120290 (_1!11553 (get!6647 lt!727385))) (apply!5620 (transformation!3814 (rule!6007 (_1!11553 (get!6647 lt!727385)))) (seqFromList!2686 (originalCharacters!4621 (_1!11553 (get!6647 lt!727385)))))))))

(declare-fun b!1901967 () Bool)

(declare-fun res!849348 () Bool)

(assert (=> b!1901967 (=> (not res!849348) (not e!1214872))))

(assert (=> b!1901967 (= res!849348 (< (size!16910 (_2!11553 (get!6647 lt!727385))) (size!16910 (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)))))))

(declare-fun b!1901968 () Bool)

(declare-fun lt!727386 () Option!4333)

(declare-fun lt!727387 () Option!4333)

(assert (=> b!1901968 (= e!1214874 (ite (and ((_ is None!4332) lt!727386) ((_ is None!4332) lt!727387)) None!4332 (ite ((_ is None!4332) lt!727387) lt!727386 (ite ((_ is None!4332) lt!727386) lt!727387 (ite (>= (size!16908 (_1!11553 (v!26361 lt!727386))) (size!16908 (_1!11553 (v!26361 lt!727387)))) lt!727386 lt!727387)))))))

(assert (=> b!1901968 (= lt!727386 call!117108)))

(assert (=> b!1901968 (= lt!727387 (maxPrefix!1873 thiss!23328 (t!176894 rules!3198) (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))))

(declare-fun bm!117103 () Bool)

(declare-fun maxPrefixOneRule!1199 (LexerInterface!3427 Rule!7428 List!21511) Option!4333)

(assert (=> bm!117103 (= call!117108 (maxPrefixOneRule!1199 thiss!23328 (h!26832 rules!3198) (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))))

(declare-fun d!581588 () Bool)

(assert (=> d!581588 e!1214873))

(declare-fun res!849346 () Bool)

(assert (=> d!581588 (=> res!849346 e!1214873)))

(declare-fun isEmpty!13152 (Option!4333) Bool)

(assert (=> d!581588 (= res!849346 (isEmpty!13152 lt!727385))))

(assert (=> d!581588 (= lt!727385 e!1214874)))

(declare-fun c!309818 () Bool)

(assert (=> d!581588 (= c!309818 (and ((_ is Cons!21431) rules!3198) ((_ is Nil!21431) (t!176894 rules!3198))))))

(declare-fun lt!727388 () Unit!35750)

(declare-fun lt!727389 () Unit!35750)

(assert (=> d!581588 (= lt!727388 lt!727389)))

(declare-fun isPrefix!1917 (List!21511 List!21511) Bool)

(assert (=> d!581588 (isPrefix!1917 (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)) (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)))))

(declare-fun lemmaIsPrefixRefl!1235 (List!21511 List!21511) Unit!35750)

(assert (=> d!581588 (= lt!727389 (lemmaIsPrefixRefl!1235 (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)) (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))))

(assert (=> d!581588 (rulesValidInductive!1294 thiss!23328 rules!3198)))

(assert (=> d!581588 (= (maxPrefix!1873 thiss!23328 rules!3198 (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))) lt!727385)))

(declare-fun b!1901962 () Bool)

(declare-fun contains!3845 (List!21513 Rule!7428) Bool)

(assert (=> b!1901962 (= e!1214872 (contains!3845 rules!3198 (rule!6007 (_1!11553 (get!6647 lt!727385)))))))

(assert (= (and d!581588 c!309818) b!1901965))

(assert (= (and d!581588 (not c!309818)) b!1901968))

(assert (= (or b!1901965 b!1901968) bm!117103))

(assert (= (and d!581588 (not res!849346)) b!1901964))

(assert (= (and b!1901964 res!849345) b!1901963))

(assert (= (and b!1901963 res!849347) b!1901967))

(assert (= (and b!1901967 res!849348) b!1901961))

(assert (= (and b!1901961 res!849343) b!1901966))

(assert (= (and b!1901966 res!849342) b!1901960))

(assert (= (and b!1901960 res!849344) b!1901962))

(assert (=> bm!117103 m!2332875))

(declare-fun m!2333141 () Bool)

(assert (=> bm!117103 m!2333141))

(declare-fun m!2333143 () Bool)

(assert (=> b!1901960 m!2333143))

(declare-fun m!2333145 () Bool)

(assert (=> b!1901960 m!2333145))

(assert (=> b!1901960 m!2333145))

(declare-fun m!2333147 () Bool)

(assert (=> b!1901960 m!2333147))

(assert (=> b!1901960 m!2333147))

(declare-fun m!2333149 () Bool)

(assert (=> b!1901960 m!2333149))

(assert (=> b!1901962 m!2333143))

(declare-fun m!2333151 () Bool)

(assert (=> b!1901962 m!2333151))

(assert (=> b!1901961 m!2333143))

(assert (=> b!1901961 m!2333145))

(assert (=> b!1901961 m!2333145))

(assert (=> b!1901961 m!2333147))

(assert (=> b!1901961 m!2333147))

(declare-fun m!2333153 () Bool)

(assert (=> b!1901961 m!2333153))

(assert (=> b!1901963 m!2333143))

(assert (=> b!1901963 m!2333145))

(assert (=> b!1901963 m!2333145))

(assert (=> b!1901963 m!2333147))

(declare-fun m!2333155 () Bool)

(assert (=> b!1901964 m!2333155))

(declare-fun m!2333157 () Bool)

(assert (=> d!581588 m!2333157))

(assert (=> d!581588 m!2332875))

(assert (=> d!581588 m!2332875))

(declare-fun m!2333159 () Bool)

(assert (=> d!581588 m!2333159))

(assert (=> d!581588 m!2332875))

(assert (=> d!581588 m!2332875))

(declare-fun m!2333161 () Bool)

(assert (=> d!581588 m!2333161))

(assert (=> d!581588 m!2332921))

(assert (=> b!1901968 m!2332875))

(declare-fun m!2333163 () Bool)

(assert (=> b!1901968 m!2333163))

(assert (=> b!1901966 m!2333143))

(declare-fun m!2333165 () Bool)

(assert (=> b!1901966 m!2333165))

(assert (=> b!1901966 m!2333165))

(declare-fun m!2333167 () Bool)

(assert (=> b!1901966 m!2333167))

(assert (=> b!1901967 m!2333143))

(declare-fun m!2333169 () Bool)

(assert (=> b!1901967 m!2333169))

(assert (=> b!1901967 m!2332875))

(declare-fun m!2333171 () Bool)

(assert (=> b!1901967 m!2333171))

(assert (=> b!1901714 d!581588))

(declare-fun b!1901994 () Bool)

(declare-fun res!849354 () Bool)

(declare-fun e!1214888 () Bool)

(assert (=> b!1901994 (=> (not res!849354) (not e!1214888))))

(declare-fun lt!727398 () List!21511)

(assert (=> b!1901994 (= res!849354 (= (size!16910 lt!727398) (+ (size!16910 lt!727319) (size!16910 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)))))))

(declare-fun b!1901993 () Bool)

(declare-fun e!1214889 () List!21511)

(assert (=> b!1901993 (= e!1214889 (Cons!21429 (h!26830 lt!727319) (++!5757 (t!176892 lt!727319) (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))))

(declare-fun b!1901995 () Bool)

(assert (=> b!1901995 (= e!1214888 (or (not (= (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354) Nil!21429)) (= lt!727398 lt!727319)))))

(declare-fun b!1901992 () Bool)

(assert (=> b!1901992 (= e!1214889 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))

(declare-fun d!581590 () Bool)

(assert (=> d!581590 e!1214888))

(declare-fun res!849353 () Bool)

(assert (=> d!581590 (=> (not res!849353) (not e!1214888))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3136 (List!21511) (InoxSet C!10624))

(assert (=> d!581590 (= res!849353 (= (content!3136 lt!727398) ((_ map or) (content!3136 lt!727319) (content!3136 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)))))))

(assert (=> d!581590 (= lt!727398 e!1214889)))

(declare-fun c!309827 () Bool)

(assert (=> d!581590 (= c!309827 ((_ is Nil!21429) lt!727319))))

(assert (=> d!581590 (= (++!5757 lt!727319 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354)) lt!727398)))

(assert (= (and d!581590 c!309827) b!1901992))

(assert (= (and d!581590 (not c!309827)) b!1901993))

(assert (= (and d!581590 res!849353) b!1901994))

(assert (= (and b!1901994 res!849354) b!1901995))

(declare-fun m!2333179 () Bool)

(assert (=> b!1901994 m!2333179))

(declare-fun m!2333183 () Bool)

(assert (=> b!1901994 m!2333183))

(assert (=> b!1901994 m!2332873))

(declare-fun m!2333187 () Bool)

(assert (=> b!1901994 m!2333187))

(assert (=> b!1901993 m!2332873))

(declare-fun m!2333191 () Bool)

(assert (=> b!1901993 m!2333191))

(declare-fun m!2333193 () Bool)

(assert (=> d!581590 m!2333193))

(declare-fun m!2333195 () Bool)

(assert (=> d!581590 m!2333195))

(assert (=> d!581590 m!2332873))

(declare-fun m!2333197 () Bool)

(assert (=> d!581590 m!2333197))

(assert (=> b!1901714 d!581590))

(declare-fun bs!413604 () Bool)

(declare-fun b!1902075 () Bool)

(assert (= bs!413604 (and b!1902075 b!1901709)))

(declare-fun lambda!74346 () Int)

(assert (=> bs!413604 (not (= lambda!74346 lambda!74327))))

(declare-fun b!1902093 () Bool)

(declare-fun e!1214949 () Bool)

(assert (=> b!1902093 (= e!1214949 true)))

(declare-fun b!1902092 () Bool)

(declare-fun e!1214948 () Bool)

(assert (=> b!1902092 (= e!1214948 e!1214949)))

(declare-fun b!1902091 () Bool)

(declare-fun e!1214947 () Bool)

(assert (=> b!1902091 (= e!1214947 e!1214948)))

(assert (=> b!1902075 e!1214947))

(assert (= b!1902092 b!1902093))

(assert (= b!1902091 b!1902092))

(assert (= (and b!1902075 ((_ is Cons!21431) rules!3198)) b!1902091))

(declare-fun order!13531 () Int)

(declare-fun order!13529 () Int)

(declare-fun dynLambda!10423 (Int Int) Int)

(declare-fun dynLambda!10424 (Int Int) Int)

(assert (=> b!1902093 (< (dynLambda!10423 order!13529 (toValue!5431 (transformation!3814 (h!26832 rules!3198)))) (dynLambda!10424 order!13531 lambda!74346))))

(declare-fun order!13533 () Int)

(declare-fun dynLambda!10425 (Int Int) Int)

(assert (=> b!1902093 (< (dynLambda!10425 order!13533 (toChars!5290 (transformation!3814 (h!26832 rules!3198)))) (dynLambda!10424 order!13531 lambda!74346))))

(assert (=> b!1902075 true))

(declare-fun e!1214938 () List!21511)

(declare-fun e!1214940 () List!21511)

(assert (=> b!1902075 (= e!1214938 e!1214940)))

(declare-fun lt!727443 () Unit!35750)

(declare-fun forallContained!686 (List!21512 Int Token!7180) Unit!35750)

(assert (=> b!1902075 (= lt!727443 (forallContained!686 (t!176893 tokens!598) lambda!74346 (h!26831 (t!176893 tokens!598))))))

(declare-fun lt!727446 () List!21511)

(assert (=> b!1902075 (= lt!727446 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 (t!176893 tokens!598)) separatorToken!354))))

(declare-fun lt!727448 () Option!4333)

(assert (=> b!1902075 (= lt!727448 (maxPrefix!1873 thiss!23328 rules!3198 (++!5757 (list!8706 (charsOf!2370 (h!26831 (t!176893 tokens!598)))) lt!727446)))))

(declare-fun c!309843 () Bool)

(assert (=> b!1902075 (= c!309843 (and ((_ is Some!4332) lt!727448) (= (_1!11553 (v!26361 lt!727448)) (h!26831 (t!176893 tokens!598)))))))

(declare-fun b!1902076 () Bool)

(declare-fun e!1214939 () List!21511)

(declare-fun call!117139 () List!21511)

(assert (=> b!1902076 (= e!1214939 call!117139)))

(declare-fun b!1902077 () Bool)

(assert (=> b!1902077 (= e!1214938 Nil!21429)))

(declare-fun bm!117132 () Bool)

(declare-fun c!309842 () Bool)

(declare-fun call!117140 () BalanceConc!14070)

(assert (=> bm!117132 (= call!117140 (charsOf!2370 (ite c!309843 (h!26831 (t!176893 tokens!598)) (ite c!309842 separatorToken!354 (h!26831 (t!176893 tokens!598))))))))

(declare-fun d!581592 () Bool)

(declare-fun c!309844 () Bool)

(assert (=> d!581592 (= c!309844 ((_ is Cons!21430) (t!176893 tokens!598)))))

(assert (=> d!581592 (= (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354) e!1214938)))

(declare-fun bm!117133 () Bool)

(declare-fun call!117137 () BalanceConc!14070)

(assert (=> bm!117133 (= call!117137 call!117140)))

(declare-fun b!1902078 () Bool)

(declare-fun call!117138 () List!21511)

(assert (=> b!1902078 (= e!1214940 call!117138)))

(declare-fun b!1902079 () Bool)

(assert (=> b!1902079 (= c!309842 (and ((_ is Some!4332) lt!727448) (not (= (_1!11553 (v!26361 lt!727448)) (h!26831 (t!176893 tokens!598))))))))

(declare-fun e!1214937 () List!21511)

(assert (=> b!1902079 (= e!1214940 e!1214937)))

(declare-fun bm!117134 () Bool)

(assert (=> bm!117134 (= call!117139 (list!8706 (ite c!309843 call!117140 call!117137)))))

(declare-fun b!1902080 () Bool)

(assert (=> b!1902080 (= e!1214937 (++!5757 call!117138 lt!727446))))

(declare-fun bm!117135 () Bool)

(declare-fun c!309845 () Bool)

(assert (=> bm!117135 (= c!309845 c!309843)))

(declare-fun call!117141 () List!21511)

(assert (=> bm!117135 (= call!117138 (++!5757 e!1214939 (ite c!309843 lt!727446 call!117141)))))

(declare-fun bm!117136 () Bool)

(assert (=> bm!117136 (= call!117141 call!117139)))

(declare-fun b!1902081 () Bool)

(assert (=> b!1902081 (= e!1214939 (list!8706 (charsOf!2370 (h!26831 (t!176893 tokens!598)))))))

(declare-fun b!1902082 () Bool)

(assert (=> b!1902082 (= e!1214937 Nil!21429)))

(declare-fun printTailRec!954 (LexerInterface!3427 BalanceConc!14074 Int BalanceConc!14070) BalanceConc!14070)

(assert (=> b!1902082 (= (print!1447 thiss!23328 (singletonSeq!1845 (h!26831 (t!176893 tokens!598)))) (printTailRec!954 thiss!23328 (singletonSeq!1845 (h!26831 (t!176893 tokens!598))) 0 (BalanceConc!14071 Empty!7127)))))

(declare-fun lt!727444 () Unit!35750)

(declare-fun Unit!35756 () Unit!35750)

(assert (=> b!1902082 (= lt!727444 Unit!35756)))

(declare-fun lt!727445 () Unit!35750)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!716 (LexerInterface!3427 List!21513 List!21511 List!21511) Unit!35750)

(assert (=> b!1902082 (= lt!727445 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!716 thiss!23328 rules!3198 call!117141 lt!727446))))

(assert (=> b!1902082 false))

(declare-fun lt!727447 () Unit!35750)

(declare-fun Unit!35757 () Unit!35750)

(assert (=> b!1902082 (= lt!727447 Unit!35757)))

(assert (= (and d!581592 c!309844) b!1902075))

(assert (= (and d!581592 (not c!309844)) b!1902077))

(assert (= (and b!1902075 c!309843) b!1902078))

(assert (= (and b!1902075 (not c!309843)) b!1902079))

(assert (= (and b!1902079 c!309842) b!1902080))

(assert (= (and b!1902079 (not c!309842)) b!1902082))

(assert (= (or b!1902080 b!1902082) bm!117133))

(assert (= (or b!1902080 b!1902082) bm!117136))

(assert (= (or b!1902078 bm!117133) bm!117132))

(assert (= (or b!1902078 bm!117136) bm!117134))

(assert (= (or b!1902078 b!1902080) bm!117135))

(assert (= (and bm!117135 c!309845) b!1902076))

(assert (= (and bm!117135 (not c!309845)) b!1902081))

(declare-fun m!2333381 () Bool)

(assert (=> b!1902082 m!2333381))

(assert (=> b!1902082 m!2333381))

(declare-fun m!2333383 () Bool)

(assert (=> b!1902082 m!2333383))

(assert (=> b!1902082 m!2333381))

(declare-fun m!2333385 () Bool)

(assert (=> b!1902082 m!2333385))

(declare-fun m!2333387 () Bool)

(assert (=> b!1902082 m!2333387))

(declare-fun m!2333389 () Bool)

(assert (=> bm!117135 m!2333389))

(declare-fun m!2333391 () Bool)

(assert (=> b!1902080 m!2333391))

(declare-fun m!2333393 () Bool)

(assert (=> bm!117132 m!2333393))

(declare-fun m!2333395 () Bool)

(assert (=> b!1902081 m!2333395))

(assert (=> b!1902081 m!2333395))

(declare-fun m!2333397 () Bool)

(assert (=> b!1902081 m!2333397))

(declare-fun m!2333399 () Bool)

(assert (=> bm!117134 m!2333399))

(assert (=> b!1902075 m!2333395))

(declare-fun m!2333401 () Bool)

(assert (=> b!1902075 m!2333401))

(declare-fun m!2333403 () Bool)

(assert (=> b!1902075 m!2333403))

(declare-fun m!2333405 () Bool)

(assert (=> b!1902075 m!2333405))

(assert (=> b!1902075 m!2333397))

(assert (=> b!1902075 m!2333403))

(declare-fun m!2333407 () Bool)

(assert (=> b!1902075 m!2333407))

(assert (=> b!1902075 m!2333395))

(assert (=> b!1902075 m!2333397))

(assert (=> b!1901714 d!581592))

(declare-fun b!1902108 () Bool)

(declare-fun e!1214958 () Bool)

(assert (=> b!1902108 (= e!1214958 true)))

(declare-fun d!581634 () Bool)

(assert (=> d!581634 e!1214958))

(assert (= d!581634 b!1902108))

(declare-fun order!13537 () Int)

(declare-fun lambda!74352 () Int)

(declare-fun dynLambda!10426 (Int Int) Int)

(assert (=> b!1902108 (< (dynLambda!10423 order!13529 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) (dynLambda!10426 order!13537 lambda!74352))))

(assert (=> b!1902108 (< (dynLambda!10425 order!13533 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) (dynLambda!10426 order!13537 lambda!74352))))

(declare-fun dynLambda!10427 (Int BalanceConc!14070) TokenValue!3950)

(assert (=> d!581634 (= (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) lt!727323) (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598)))))))

(declare-fun lt!727455 () Unit!35750)

(declare-fun Forall2of!181 (Int BalanceConc!14070 BalanceConc!14070) Unit!35750)

(assert (=> d!581634 (= lt!727455 (Forall2of!181 lambda!74352 lt!727323 (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598)))))))

(assert (=> d!581634 (= (list!8706 lt!727323) (list!8706 (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598)))))))

(assert (=> d!581634 (= (lemmaEqSameImage!522 (transformation!3814 (rule!6007 (h!26831 tokens!598))) lt!727323 (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598)))) lt!727455)))

(declare-fun b_lambda!62669 () Bool)

(assert (=> (not b_lambda!62669) (not d!581634)))

(declare-fun t!176946 () Bool)

(declare-fun tb!115991 () Bool)

(assert (=> (and b!1901694 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176946) tb!115991))

(declare-fun result!140248 () Bool)

(assert (=> tb!115991 (= result!140248 (inv!21 (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) lt!727323)))))

(declare-fun m!2333427 () Bool)

(assert (=> tb!115991 m!2333427))

(assert (=> d!581634 t!176946))

(declare-fun b_and!147355 () Bool)

(assert (= b_and!147283 (and (=> t!176946 result!140248) b_and!147355)))

(declare-fun t!176948 () Bool)

(declare-fun tb!115993 () Bool)

(assert (=> (and b!1901711 (= (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176948) tb!115993))

(declare-fun result!140252 () Bool)

(assert (= result!140252 result!140248))

(assert (=> d!581634 t!176948))

(declare-fun b_and!147357 () Bool)

(assert (= b_and!147287 (and (=> t!176948 result!140252) b_and!147357)))

(declare-fun t!176950 () Bool)

(declare-fun tb!115995 () Bool)

(assert (=> (and b!1901708 (= (toValue!5431 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176950) tb!115995))

(declare-fun result!140254 () Bool)

(assert (= result!140254 result!140248))

(assert (=> d!581634 t!176950))

(declare-fun b_and!147359 () Bool)

(assert (= b_and!147291 (and (=> t!176950 result!140254) b_and!147359)))

(declare-fun b_lambda!62671 () Bool)

(assert (=> (not b_lambda!62671) (not d!581634)))

(declare-fun t!176952 () Bool)

(declare-fun tb!115997 () Bool)

(assert (=> (and b!1901694 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176952) tb!115997))

(declare-fun result!140256 () Bool)

(assert (=> tb!115997 (= result!140256 (inv!21 (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598))))))))

(declare-fun m!2333429 () Bool)

(assert (=> tb!115997 m!2333429))

(assert (=> d!581634 t!176952))

(declare-fun b_and!147361 () Bool)

(assert (= b_and!147355 (and (=> t!176952 result!140256) b_and!147361)))

(declare-fun tb!115999 () Bool)

(declare-fun t!176954 () Bool)

(assert (=> (and b!1901711 (= (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176954) tb!115999))

(declare-fun result!140258 () Bool)

(assert (= result!140258 result!140256))

(assert (=> d!581634 t!176954))

(declare-fun b_and!147363 () Bool)

(assert (= b_and!147357 (and (=> t!176954 result!140258) b_and!147363)))

(declare-fun tb!116001 () Bool)

(declare-fun t!176956 () Bool)

(assert (=> (and b!1901708 (= (toValue!5431 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176956) tb!116001))

(declare-fun result!140260 () Bool)

(assert (= result!140260 result!140256))

(assert (=> d!581634 t!176956))

(declare-fun b_and!147365 () Bool)

(assert (= b_and!147359 (and (=> t!176956 result!140260) b_and!147365)))

(assert (=> d!581634 m!2332877))

(declare-fun m!2333431 () Bool)

(assert (=> d!581634 m!2333431))

(assert (=> d!581634 m!2332877))

(declare-fun m!2333433 () Bool)

(assert (=> d!581634 m!2333433))

(declare-fun m!2333435 () Bool)

(assert (=> d!581634 m!2333435))

(assert (=> d!581634 m!2332893))

(assert (=> d!581634 m!2332877))

(declare-fun m!2333437 () Bool)

(assert (=> d!581634 m!2333437))

(assert (=> b!1901714 d!581634))

(declare-fun d!581646 () Bool)

(declare-fun lt!727458 () BalanceConc!14070)

(assert (=> d!581646 (= (list!8706 lt!727458) (originalCharacters!4621 separatorToken!354))))

(assert (=> d!581646 (= lt!727458 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (value!120290 separatorToken!354)))))

(assert (=> d!581646 (= (charsOf!2370 separatorToken!354) lt!727458)))

(declare-fun b_lambda!62673 () Bool)

(assert (=> (not b_lambda!62673) (not d!581646)))

(assert (=> d!581646 t!176896))

(declare-fun b_and!147367 () Bool)

(assert (= b_and!147301 (and (=> t!176896 result!140200) b_and!147367)))

(assert (=> d!581646 t!176898))

(declare-fun b_and!147369 () Bool)

(assert (= b_and!147303 (and (=> t!176898 result!140204) b_and!147369)))

(assert (=> d!581646 t!176900))

(declare-fun b_and!147371 () Bool)

(assert (= b_and!147305 (and (=> t!176900 result!140206) b_and!147371)))

(declare-fun m!2333439 () Bool)

(assert (=> d!581646 m!2333439))

(assert (=> d!581646 m!2332993))

(assert (=> b!1901714 d!581646))

(declare-fun b!1902133 () Bool)

(declare-fun e!1214977 () Bool)

(assert (=> b!1902133 (= e!1214977 true)))

(declare-fun d!581648 () Bool)

(assert (=> d!581648 e!1214977))

(assert (= d!581648 b!1902133))

(declare-fun lambda!74355 () Int)

(declare-fun order!13539 () Int)

(declare-fun dynLambda!10428 (Int Int) Int)

(assert (=> b!1902133 (< (dynLambda!10423 order!13529 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) (dynLambda!10428 order!13539 lambda!74355))))

(assert (=> b!1902133 (< (dynLambda!10425 order!13533 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) (dynLambda!10428 order!13539 lambda!74355))))

(assert (=> d!581648 (= (list!8706 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) lt!727323))) (list!8706 lt!727323))))

(declare-fun lt!727467 () Unit!35750)

(declare-fun ForallOf!384 (Int BalanceConc!14070) Unit!35750)

(assert (=> d!581648 (= lt!727467 (ForallOf!384 lambda!74355 lt!727323))))

(assert (=> d!581648 (= (lemmaSemiInverse!793 (transformation!3814 (rule!6007 (h!26831 tokens!598))) lt!727323) lt!727467)))

(declare-fun b_lambda!62675 () Bool)

(assert (=> (not b_lambda!62675) (not d!581648)))

(declare-fun t!176958 () Bool)

(declare-fun tb!116003 () Bool)

(assert (=> (and b!1901694 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176958) tb!116003))

(declare-fun tp!543272 () Bool)

(declare-fun b!1902140 () Bool)

(declare-fun e!1214982 () Bool)

(assert (=> b!1902140 (= e!1214982 (and (inv!28525 (c!309780 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) lt!727323)))) tp!543272))))

(declare-fun result!140262 () Bool)

(assert (=> tb!116003 (= result!140262 (and (inv!28526 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (dynLambda!10427 (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) lt!727323))) e!1214982))))

(assert (= tb!116003 b!1902140))

(declare-fun m!2333453 () Bool)

(assert (=> b!1902140 m!2333453))

(declare-fun m!2333455 () Bool)

(assert (=> tb!116003 m!2333455))

(assert (=> d!581648 t!176958))

(declare-fun b_and!147373 () Bool)

(assert (= b_and!147367 (and (=> t!176958 result!140262) b_and!147373)))

(declare-fun t!176960 () Bool)

(declare-fun tb!116005 () Bool)

(assert (=> (and b!1901711 (= (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176960) tb!116005))

(declare-fun result!140264 () Bool)

(assert (= result!140264 result!140262))

(assert (=> d!581648 t!176960))

(declare-fun b_and!147375 () Bool)

(assert (= b_and!147369 (and (=> t!176960 result!140264) b_and!147375)))

(declare-fun t!176962 () Bool)

(declare-fun tb!116007 () Bool)

(assert (=> (and b!1901708 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176962) tb!116007))

(declare-fun result!140266 () Bool)

(assert (= result!140266 result!140262))

(assert (=> d!581648 t!176962))

(declare-fun b_and!147377 () Bool)

(assert (= b_and!147371 (and (=> t!176962 result!140266) b_and!147377)))

(declare-fun b_lambda!62677 () Bool)

(assert (=> (not b_lambda!62677) (not d!581648)))

(assert (=> d!581648 t!176946))

(declare-fun b_and!147379 () Bool)

(assert (= b_and!147361 (and (=> t!176946 result!140248) b_and!147379)))

(assert (=> d!581648 t!176948))

(declare-fun b_and!147381 () Bool)

(assert (= b_and!147363 (and (=> t!176948 result!140252) b_and!147381)))

(assert (=> d!581648 t!176950))

(declare-fun b_and!147383 () Bool)

(assert (= b_and!147365 (and (=> t!176950 result!140254) b_and!147383)))

(declare-fun m!2333465 () Bool)

(assert (=> d!581648 m!2333465))

(declare-fun m!2333467 () Bool)

(assert (=> d!581648 m!2333467))

(assert (=> d!581648 m!2333435))

(assert (=> d!581648 m!2333465))

(assert (=> d!581648 m!2332893))

(assert (=> d!581648 m!2333435))

(declare-fun m!2333469 () Bool)

(assert (=> d!581648 m!2333469))

(assert (=> b!1901714 d!581648))

(declare-fun d!581654 () Bool)

(declare-fun e!1215026 () Bool)

(assert (=> d!581654 e!1215026))

(declare-fun res!849415 () Bool)

(assert (=> d!581654 (=> res!849415 e!1215026)))

(declare-fun lt!727485 () Option!4334)

(assert (=> d!581654 (= res!849415 (isEmpty!13151 lt!727485))))

(declare-fun e!1215025 () Option!4334)

(assert (=> d!581654 (= lt!727485 e!1215025)))

(declare-fun c!309863 () Bool)

(assert (=> d!581654 (= c!309863 (and ((_ is Cons!21431) rules!3198) (= (tag!4240 (h!26832 rules!3198)) (tag!4240 (rule!6007 separatorToken!354)))))))

(assert (=> d!581654 (rulesInvariant!3034 thiss!23328 rules!3198)))

(assert (=> d!581654 (= (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 separatorToken!354))) lt!727485)))

(declare-fun b!1902192 () Bool)

(declare-fun e!1215028 () Bool)

(assert (=> b!1902192 (= e!1215028 (= (tag!4240 (get!6648 lt!727485)) (tag!4240 (rule!6007 separatorToken!354))))))

(declare-fun b!1902193 () Bool)

(assert (=> b!1902193 (= e!1215025 (Some!4333 (h!26832 rules!3198)))))

(declare-fun b!1902194 () Bool)

(declare-fun lt!727483 () Unit!35750)

(declare-fun lt!727484 () Unit!35750)

(assert (=> b!1902194 (= lt!727483 lt!727484)))

(assert (=> b!1902194 (rulesInvariant!3034 thiss!23328 (t!176894 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!249 (LexerInterface!3427 Rule!7428 List!21513) Unit!35750)

(assert (=> b!1902194 (= lt!727484 (lemmaInvariantOnRulesThenOnTail!249 thiss!23328 (h!26832 rules!3198) (t!176894 rules!3198)))))

(declare-fun e!1215027 () Option!4334)

(assert (=> b!1902194 (= e!1215027 (getRuleFromTag!657 thiss!23328 (t!176894 rules!3198) (tag!4240 (rule!6007 separatorToken!354))))))

(declare-fun b!1902195 () Bool)

(assert (=> b!1902195 (= e!1215026 e!1215028)))

(declare-fun res!849416 () Bool)

(assert (=> b!1902195 (=> (not res!849416) (not e!1215028))))

(assert (=> b!1902195 (= res!849416 (contains!3845 rules!3198 (get!6648 lt!727485)))))

(declare-fun b!1902196 () Bool)

(assert (=> b!1902196 (= e!1215025 e!1215027)))

(declare-fun c!309864 () Bool)

(assert (=> b!1902196 (= c!309864 (and ((_ is Cons!21431) rules!3198) (not (= (tag!4240 (h!26832 rules!3198)) (tag!4240 (rule!6007 separatorToken!354))))))))

(declare-fun b!1902197 () Bool)

(assert (=> b!1902197 (= e!1215027 None!4333)))

(assert (= (and d!581654 c!309863) b!1902193))

(assert (= (and d!581654 (not c!309863)) b!1902196))

(assert (= (and b!1902196 c!309864) b!1902194))

(assert (= (and b!1902196 (not c!309864)) b!1902197))

(assert (= (and d!581654 (not res!849415)) b!1902195))

(assert (= (and b!1902195 res!849416) b!1902192))

(declare-fun m!2333487 () Bool)

(assert (=> d!581654 m!2333487))

(assert (=> d!581654 m!2332925))

(declare-fun m!2333489 () Bool)

(assert (=> b!1902192 m!2333489))

(declare-fun m!2333491 () Bool)

(assert (=> b!1902194 m!2333491))

(declare-fun m!2333493 () Bool)

(assert (=> b!1902194 m!2333493))

(declare-fun m!2333495 () Bool)

(assert (=> b!1902194 m!2333495))

(assert (=> b!1902195 m!2333489))

(assert (=> b!1902195 m!2333489))

(declare-fun m!2333497 () Bool)

(assert (=> b!1902195 m!2333497))

(assert (=> b!1901714 d!581654))

(declare-fun d!581656 () Bool)

(declare-fun e!1215030 () Bool)

(assert (=> d!581656 e!1215030))

(declare-fun res!849417 () Bool)

(assert (=> d!581656 (=> res!849417 e!1215030)))

(declare-fun lt!727488 () Option!4334)

(assert (=> d!581656 (= res!849417 (isEmpty!13151 lt!727488))))

(declare-fun e!1215029 () Option!4334)

(assert (=> d!581656 (= lt!727488 e!1215029)))

(declare-fun c!309865 () Bool)

(assert (=> d!581656 (= c!309865 (and ((_ is Cons!21431) rules!3198) (= (tag!4240 (h!26832 rules!3198)) (tag!4240 (rule!6007 (h!26831 tokens!598))))))))

(assert (=> d!581656 (rulesInvariant!3034 thiss!23328 rules!3198)))

(assert (=> d!581656 (= (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 (h!26831 tokens!598)))) lt!727488)))

(declare-fun b!1902198 () Bool)

(declare-fun e!1215032 () Bool)

(assert (=> b!1902198 (= e!1215032 (= (tag!4240 (get!6648 lt!727488)) (tag!4240 (rule!6007 (h!26831 tokens!598)))))))

(declare-fun b!1902199 () Bool)

(assert (=> b!1902199 (= e!1215029 (Some!4333 (h!26832 rules!3198)))))

(declare-fun b!1902200 () Bool)

(declare-fun lt!727486 () Unit!35750)

(declare-fun lt!727487 () Unit!35750)

(assert (=> b!1902200 (= lt!727486 lt!727487)))

(assert (=> b!1902200 (rulesInvariant!3034 thiss!23328 (t!176894 rules!3198))))

(assert (=> b!1902200 (= lt!727487 (lemmaInvariantOnRulesThenOnTail!249 thiss!23328 (h!26832 rules!3198) (t!176894 rules!3198)))))

(declare-fun e!1215031 () Option!4334)

(assert (=> b!1902200 (= e!1215031 (getRuleFromTag!657 thiss!23328 (t!176894 rules!3198) (tag!4240 (rule!6007 (h!26831 tokens!598)))))))

(declare-fun b!1902201 () Bool)

(assert (=> b!1902201 (= e!1215030 e!1215032)))

(declare-fun res!849418 () Bool)

(assert (=> b!1902201 (=> (not res!849418) (not e!1215032))))

(assert (=> b!1902201 (= res!849418 (contains!3845 rules!3198 (get!6648 lt!727488)))))

(declare-fun b!1902202 () Bool)

(assert (=> b!1902202 (= e!1215029 e!1215031)))

(declare-fun c!309866 () Bool)

(assert (=> b!1902202 (= c!309866 (and ((_ is Cons!21431) rules!3198) (not (= (tag!4240 (h!26832 rules!3198)) (tag!4240 (rule!6007 (h!26831 tokens!598)))))))))

(declare-fun b!1902203 () Bool)

(assert (=> b!1902203 (= e!1215031 None!4333)))

(assert (= (and d!581656 c!309865) b!1902199))

(assert (= (and d!581656 (not c!309865)) b!1902202))

(assert (= (and b!1902202 c!309866) b!1902200))

(assert (= (and b!1902202 (not c!309866)) b!1902203))

(assert (= (and d!581656 (not res!849417)) b!1902201))

(assert (= (and b!1902201 res!849418) b!1902198))

(declare-fun m!2333499 () Bool)

(assert (=> d!581656 m!2333499))

(assert (=> d!581656 m!2332925))

(declare-fun m!2333501 () Bool)

(assert (=> b!1902198 m!2333501))

(assert (=> b!1902200 m!2333491))

(assert (=> b!1902200 m!2333493))

(declare-fun m!2333503 () Bool)

(assert (=> b!1902200 m!2333503))

(assert (=> b!1902201 m!2333501))

(assert (=> b!1902201 m!2333501))

(declare-fun m!2333505 () Bool)

(assert (=> b!1902201 m!2333505))

(assert (=> b!1901714 d!581656))

(declare-fun d!581658 () Bool)

(assert (=> d!581658 (= (isDefined!3632 lt!727322) (not (isEmpty!13151 lt!727322)))))

(declare-fun bs!413608 () Bool)

(assert (= bs!413608 d!581658))

(declare-fun m!2333507 () Bool)

(assert (=> bs!413608 m!2333507))

(assert (=> b!1901714 d!581658))

(declare-fun d!581660 () Bool)

(declare-fun e!1215046 () Bool)

(assert (=> d!581660 e!1215046))

(declare-fun res!849423 () Bool)

(assert (=> d!581660 (=> (not res!849423) (not e!1215046))))

(assert (=> d!581660 (= res!849423 (isDefined!3632 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 separatorToken!354)))))))

(declare-fun lt!727491 () Unit!35750)

(declare-fun choose!11848 (LexerInterface!3427 List!21513 List!21511 Token!7180) Unit!35750)

(assert (=> d!581660 (= lt!727491 (choose!11848 thiss!23328 rules!3198 lt!727316 separatorToken!354))))

(assert (=> d!581660 (rulesInvariant!3034 thiss!23328 rules!3198)))

(assert (=> d!581660 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!657 thiss!23328 rules!3198 lt!727316 separatorToken!354) lt!727491)))

(declare-fun b!1902234 () Bool)

(declare-fun res!849424 () Bool)

(assert (=> b!1902234 (=> (not res!849424) (not e!1215046))))

(assert (=> b!1902234 (= res!849424 (matchR!2525 (regex!3814 (get!6648 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 separatorToken!354))))) (list!8706 (charsOf!2370 separatorToken!354))))))

(declare-fun b!1902235 () Bool)

(assert (=> b!1902235 (= e!1215046 (= (rule!6007 separatorToken!354) (get!6648 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 separatorToken!354))))))))

(assert (= (and d!581660 res!849423) b!1902234))

(assert (= (and b!1902234 res!849424) b!1902235))

(assert (=> d!581660 m!2332895))

(assert (=> d!581660 m!2332895))

(declare-fun m!2333517 () Bool)

(assert (=> d!581660 m!2333517))

(declare-fun m!2333519 () Bool)

(assert (=> d!581660 m!2333519))

(assert (=> d!581660 m!2332925))

(assert (=> b!1902234 m!2332889))

(assert (=> b!1902234 m!2332891))

(assert (=> b!1902234 m!2332891))

(declare-fun m!2333521 () Bool)

(assert (=> b!1902234 m!2333521))

(assert (=> b!1902234 m!2332895))

(declare-fun m!2333523 () Bool)

(assert (=> b!1902234 m!2333523))

(assert (=> b!1902234 m!2332889))

(assert (=> b!1902234 m!2332895))

(assert (=> b!1902235 m!2332895))

(assert (=> b!1902235 m!2332895))

(assert (=> b!1902235 m!2333523))

(assert (=> b!1901714 d!581660))

(declare-fun b!1902236 () Bool)

(declare-fun res!849427 () Bool)

(declare-fun e!1215047 () Bool)

(assert (=> b!1902236 (=> (not res!849427) (not e!1215047))))

(declare-fun lt!727492 () Option!4333)

(assert (=> b!1902236 (= res!849427 (matchR!2525 (regex!3814 (rule!6007 (_1!11553 (get!6647 lt!727492)))) (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727492))))))))

(declare-fun b!1902237 () Bool)

(declare-fun res!849426 () Bool)

(assert (=> b!1902237 (=> (not res!849426) (not e!1215047))))

(assert (=> b!1902237 (= res!849426 (= (++!5757 (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727492)))) (_2!11553 (get!6647 lt!727492))) lt!727319))))

(declare-fun b!1902239 () Bool)

(declare-fun res!849430 () Bool)

(assert (=> b!1902239 (=> (not res!849430) (not e!1215047))))

(assert (=> b!1902239 (= res!849430 (= (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727492)))) (originalCharacters!4621 (_1!11553 (get!6647 lt!727492)))))))

(declare-fun b!1902240 () Bool)

(declare-fun e!1215048 () Bool)

(assert (=> b!1902240 (= e!1215048 e!1215047)))

(declare-fun res!849428 () Bool)

(assert (=> b!1902240 (=> (not res!849428) (not e!1215047))))

(assert (=> b!1902240 (= res!849428 (isDefined!3631 lt!727492))))

(declare-fun b!1902241 () Bool)

(declare-fun e!1215049 () Option!4333)

(declare-fun call!117142 () Option!4333)

(assert (=> b!1902241 (= e!1215049 call!117142)))

(declare-fun b!1902242 () Bool)

(declare-fun res!849425 () Bool)

(assert (=> b!1902242 (=> (not res!849425) (not e!1215047))))

(assert (=> b!1902242 (= res!849425 (= (value!120290 (_1!11553 (get!6647 lt!727492))) (apply!5620 (transformation!3814 (rule!6007 (_1!11553 (get!6647 lt!727492)))) (seqFromList!2686 (originalCharacters!4621 (_1!11553 (get!6647 lt!727492)))))))))

(declare-fun b!1902243 () Bool)

(declare-fun res!849431 () Bool)

(assert (=> b!1902243 (=> (not res!849431) (not e!1215047))))

(assert (=> b!1902243 (= res!849431 (< (size!16910 (_2!11553 (get!6647 lt!727492))) (size!16910 lt!727319)))))

(declare-fun b!1902244 () Bool)

(declare-fun lt!727493 () Option!4333)

(declare-fun lt!727494 () Option!4333)

(assert (=> b!1902244 (= e!1215049 (ite (and ((_ is None!4332) lt!727493) ((_ is None!4332) lt!727494)) None!4332 (ite ((_ is None!4332) lt!727494) lt!727493 (ite ((_ is None!4332) lt!727493) lt!727494 (ite (>= (size!16908 (_1!11553 (v!26361 lt!727493))) (size!16908 (_1!11553 (v!26361 lt!727494)))) lt!727493 lt!727494)))))))

(assert (=> b!1902244 (= lt!727493 call!117142)))

(assert (=> b!1902244 (= lt!727494 (maxPrefix!1873 thiss!23328 (t!176894 rules!3198) lt!727319))))

(declare-fun bm!117137 () Bool)

(assert (=> bm!117137 (= call!117142 (maxPrefixOneRule!1199 thiss!23328 (h!26832 rules!3198) lt!727319))))

(declare-fun d!581664 () Bool)

(assert (=> d!581664 e!1215048))

(declare-fun res!849429 () Bool)

(assert (=> d!581664 (=> res!849429 e!1215048)))

(assert (=> d!581664 (= res!849429 (isEmpty!13152 lt!727492))))

(assert (=> d!581664 (= lt!727492 e!1215049)))

(declare-fun c!309867 () Bool)

(assert (=> d!581664 (= c!309867 (and ((_ is Cons!21431) rules!3198) ((_ is Nil!21431) (t!176894 rules!3198))))))

(declare-fun lt!727495 () Unit!35750)

(declare-fun lt!727496 () Unit!35750)

(assert (=> d!581664 (= lt!727495 lt!727496)))

(assert (=> d!581664 (isPrefix!1917 lt!727319 lt!727319)))

(assert (=> d!581664 (= lt!727496 (lemmaIsPrefixRefl!1235 lt!727319 lt!727319))))

(assert (=> d!581664 (rulesValidInductive!1294 thiss!23328 rules!3198)))

(assert (=> d!581664 (= (maxPrefix!1873 thiss!23328 rules!3198 lt!727319) lt!727492)))

(declare-fun b!1902238 () Bool)

(assert (=> b!1902238 (= e!1215047 (contains!3845 rules!3198 (rule!6007 (_1!11553 (get!6647 lt!727492)))))))

(assert (= (and d!581664 c!309867) b!1902241))

(assert (= (and d!581664 (not c!309867)) b!1902244))

(assert (= (or b!1902241 b!1902244) bm!117137))

(assert (= (and d!581664 (not res!849429)) b!1902240))

(assert (= (and b!1902240 res!849428) b!1902239))

(assert (= (and b!1902239 res!849430) b!1902243))

(assert (= (and b!1902243 res!849431) b!1902237))

(assert (= (and b!1902237 res!849426) b!1902242))

(assert (= (and b!1902242 res!849425) b!1902236))

(assert (= (and b!1902236 res!849427) b!1902238))

(declare-fun m!2333525 () Bool)

(assert (=> bm!117137 m!2333525))

(declare-fun m!2333527 () Bool)

(assert (=> b!1902236 m!2333527))

(declare-fun m!2333529 () Bool)

(assert (=> b!1902236 m!2333529))

(assert (=> b!1902236 m!2333529))

(declare-fun m!2333531 () Bool)

(assert (=> b!1902236 m!2333531))

(assert (=> b!1902236 m!2333531))

(declare-fun m!2333533 () Bool)

(assert (=> b!1902236 m!2333533))

(assert (=> b!1902238 m!2333527))

(declare-fun m!2333535 () Bool)

(assert (=> b!1902238 m!2333535))

(assert (=> b!1902237 m!2333527))

(assert (=> b!1902237 m!2333529))

(assert (=> b!1902237 m!2333529))

(assert (=> b!1902237 m!2333531))

(assert (=> b!1902237 m!2333531))

(declare-fun m!2333537 () Bool)

(assert (=> b!1902237 m!2333537))

(assert (=> b!1902239 m!2333527))

(assert (=> b!1902239 m!2333529))

(assert (=> b!1902239 m!2333529))

(assert (=> b!1902239 m!2333531))

(declare-fun m!2333539 () Bool)

(assert (=> b!1902240 m!2333539))

(declare-fun m!2333541 () Bool)

(assert (=> d!581664 m!2333541))

(declare-fun m!2333543 () Bool)

(assert (=> d!581664 m!2333543))

(declare-fun m!2333545 () Bool)

(assert (=> d!581664 m!2333545))

(assert (=> d!581664 m!2332921))

(declare-fun m!2333547 () Bool)

(assert (=> b!1902244 m!2333547))

(assert (=> b!1902242 m!2333527))

(declare-fun m!2333549 () Bool)

(assert (=> b!1902242 m!2333549))

(assert (=> b!1902242 m!2333549))

(declare-fun m!2333551 () Bool)

(assert (=> b!1902242 m!2333551))

(assert (=> b!1902243 m!2333527))

(declare-fun m!2333553 () Bool)

(assert (=> b!1902243 m!2333553))

(assert (=> b!1902243 m!2333183))

(assert (=> b!1901714 d!581664))

(declare-fun d!581666 () Bool)

(declare-fun list!8710 (Conc!7127) List!21511)

(assert (=> d!581666 (= (list!8706 (charsOf!2370 separatorToken!354)) (list!8710 (c!309780 (charsOf!2370 separatorToken!354))))))

(declare-fun bs!413610 () Bool)

(assert (= bs!413610 d!581666))

(declare-fun m!2333555 () Bool)

(assert (=> bs!413610 m!2333555))

(assert (=> b!1901714 d!581666))

(declare-fun d!581668 () Bool)

(assert (=> d!581668 (= (isDefined!3631 lt!727320) (not (isEmpty!13152 lt!727320)))))

(declare-fun bs!413611 () Bool)

(assert (= bs!413611 d!581668))

(declare-fun m!2333557 () Bool)

(assert (=> bs!413611 m!2333557))

(assert (=> b!1901714 d!581668))

(declare-fun d!581670 () Bool)

(assert (=> d!581670 (= (list!8706 lt!727323) (list!8710 (c!309780 lt!727323)))))

(declare-fun bs!413612 () Bool)

(assert (= bs!413612 d!581670))

(declare-fun m!2333559 () Bool)

(assert (=> bs!413612 m!2333559))

(assert (=> b!1901714 d!581670))

(declare-fun d!581672 () Bool)

(declare-fun e!1215050 () Bool)

(assert (=> d!581672 e!1215050))

(declare-fun res!849432 () Bool)

(assert (=> d!581672 (=> (not res!849432) (not e!1215050))))

(assert (=> d!581672 (= res!849432 (isDefined!3632 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 (h!26831 tokens!598))))))))

(declare-fun lt!727497 () Unit!35750)

(assert (=> d!581672 (= lt!727497 (choose!11848 thiss!23328 rules!3198 lt!727319 (h!26831 tokens!598)))))

(assert (=> d!581672 (rulesInvariant!3034 thiss!23328 rules!3198)))

(assert (=> d!581672 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!657 thiss!23328 rules!3198 lt!727319 (h!26831 tokens!598)) lt!727497)))

(declare-fun b!1902245 () Bool)

(declare-fun res!849433 () Bool)

(assert (=> b!1902245 (=> (not res!849433) (not e!1215050))))

(assert (=> b!1902245 (= res!849433 (matchR!2525 (regex!3814 (get!6648 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 (h!26831 tokens!598)))))) (list!8706 (charsOf!2370 (h!26831 tokens!598)))))))

(declare-fun b!1902246 () Bool)

(assert (=> b!1902246 (= e!1215050 (= (rule!6007 (h!26831 tokens!598)) (get!6648 (getRuleFromTag!657 thiss!23328 rules!3198 (tag!4240 (rule!6007 (h!26831 tokens!598)))))))))

(assert (= (and d!581672 res!849432) b!1902245))

(assert (= (and b!1902245 res!849433) b!1902246))

(assert (=> d!581672 m!2332903))

(assert (=> d!581672 m!2332903))

(declare-fun m!2333561 () Bool)

(assert (=> d!581672 m!2333561))

(declare-fun m!2333563 () Bool)

(assert (=> d!581672 m!2333563))

(assert (=> d!581672 m!2332925))

(assert (=> b!1902245 m!2332901))

(declare-fun m!2333565 () Bool)

(assert (=> b!1902245 m!2333565))

(assert (=> b!1902245 m!2333565))

(declare-fun m!2333567 () Bool)

(assert (=> b!1902245 m!2333567))

(assert (=> b!1902245 m!2332903))

(declare-fun m!2333569 () Bool)

(assert (=> b!1902245 m!2333569))

(assert (=> b!1902245 m!2332901))

(assert (=> b!1902245 m!2332903))

(assert (=> b!1902246 m!2332903))

(assert (=> b!1902246 m!2332903))

(assert (=> b!1902246 m!2333569))

(assert (=> b!1901714 d!581672))

(declare-fun d!581674 () Bool)

(declare-fun lt!727498 () BalanceConc!14070)

(assert (=> d!581674 (= (list!8706 lt!727498) (originalCharacters!4621 (h!26831 tokens!598)))))

(assert (=> d!581674 (= lt!727498 (dynLambda!10420 (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (value!120290 (h!26831 tokens!598))))))

(assert (=> d!581674 (= (charsOf!2370 (h!26831 tokens!598)) lt!727498)))

(declare-fun b_lambda!62697 () Bool)

(assert (=> (not b_lambda!62697) (not d!581674)))

(assert (=> d!581674 t!176902))

(declare-fun b_and!147393 () Bool)

(assert (= b_and!147373 (and (=> t!176902 result!140208) b_and!147393)))

(assert (=> d!581674 t!176904))

(declare-fun b_and!147395 () Bool)

(assert (= b_and!147375 (and (=> t!176904 result!140210) b_and!147395)))

(assert (=> d!581674 t!176906))

(declare-fun b_and!147397 () Bool)

(assert (= b_and!147377 (and (=> t!176906 result!140212) b_and!147397)))

(declare-fun m!2333571 () Bool)

(assert (=> d!581674 m!2333571))

(assert (=> d!581674 m!2333005))

(assert (=> b!1901714 d!581674))

(declare-fun d!581676 () Bool)

(declare-fun fromListB!1218 (List!21511) BalanceConc!14070)

(assert (=> d!581676 (= (seqFromList!2686 (originalCharacters!4621 (h!26831 tokens!598))) (fromListB!1218 (originalCharacters!4621 (h!26831 tokens!598))))))

(declare-fun bs!413613 () Bool)

(assert (= bs!413613 d!581676))

(declare-fun m!2333573 () Bool)

(assert (=> bs!413613 m!2333573))

(assert (=> b!1901714 d!581676))

(declare-fun d!581678 () Bool)

(declare-fun c!309868 () Bool)

(assert (=> d!581678 (= c!309868 ((_ is IntegerValue!11850) (value!120290 (h!26831 tokens!598))))))

(declare-fun e!1215052 () Bool)

(assert (=> d!581678 (= (inv!21 (value!120290 (h!26831 tokens!598))) e!1215052)))

(declare-fun b!1902247 () Bool)

(assert (=> b!1902247 (= e!1215052 (inv!16 (value!120290 (h!26831 tokens!598))))))

(declare-fun b!1902248 () Bool)

(declare-fun res!849434 () Bool)

(declare-fun e!1215051 () Bool)

(assert (=> b!1902248 (=> res!849434 e!1215051)))

(assert (=> b!1902248 (= res!849434 (not ((_ is IntegerValue!11852) (value!120290 (h!26831 tokens!598)))))))

(declare-fun e!1215053 () Bool)

(assert (=> b!1902248 (= e!1215053 e!1215051)))

(declare-fun b!1902249 () Bool)

(assert (=> b!1902249 (= e!1215051 (inv!15 (value!120290 (h!26831 tokens!598))))))

(declare-fun b!1902250 () Bool)

(assert (=> b!1902250 (= e!1215053 (inv!17 (value!120290 (h!26831 tokens!598))))))

(declare-fun b!1902251 () Bool)

(assert (=> b!1902251 (= e!1215052 e!1215053)))

(declare-fun c!309869 () Bool)

(assert (=> b!1902251 (= c!309869 ((_ is IntegerValue!11851) (value!120290 (h!26831 tokens!598))))))

(assert (= (and d!581678 c!309868) b!1902247))

(assert (= (and d!581678 (not c!309868)) b!1902251))

(assert (= (and b!1902251 c!309869) b!1902250))

(assert (= (and b!1902251 (not c!309869)) b!1902248))

(assert (= (and b!1902248 (not res!849434)) b!1902249))

(declare-fun m!2333575 () Bool)

(assert (=> b!1902247 m!2333575))

(declare-fun m!2333577 () Bool)

(assert (=> b!1902249 m!2333577))

(declare-fun m!2333579 () Bool)

(assert (=> b!1902250 m!2333579))

(assert (=> b!1901715 d!581678))

(declare-fun d!581680 () Bool)

(assert (=> d!581680 (= (isEmpty!13143 tokens!598) ((_ is Nil!21430) tokens!598))))

(assert (=> b!1901702 d!581680))

(declare-fun d!581682 () Bool)

(assert (=> d!581682 (= (isEmpty!13144 rules!3198) ((_ is Nil!21431) rules!3198))))

(assert (=> b!1901713 d!581682))

(declare-fun b!1902280 () Bool)

(declare-fun e!1215070 () Bool)

(declare-fun e!1215068 () Bool)

(assert (=> b!1902280 (= e!1215070 e!1215068)))

(declare-fun c!309877 () Bool)

(assert (=> b!1902280 (= c!309877 ((_ is EmptyLang!5239) (regex!3814 lt!727318)))))

(declare-fun b!1902281 () Bool)

(declare-fun e!1215074 () Bool)

(declare-fun head!4416 (List!21511) C!10624)

(assert (=> b!1902281 (= e!1215074 (= (head!4416 lt!727316) (c!309779 (regex!3814 lt!727318))))))

(declare-fun b!1902282 () Bool)

(declare-fun e!1215071 () Bool)

(declare-fun e!1215073 () Bool)

(assert (=> b!1902282 (= e!1215071 e!1215073)))

(declare-fun res!849452 () Bool)

(assert (=> b!1902282 (=> (not res!849452) (not e!1215073))))

(declare-fun lt!727501 () Bool)

(assert (=> b!1902282 (= res!849452 (not lt!727501))))

(declare-fun b!1902283 () Bool)

(declare-fun res!849454 () Bool)

(assert (=> b!1902283 (=> res!849454 e!1215071)))

(assert (=> b!1902283 (= res!849454 e!1215074)))

(declare-fun res!849458 () Bool)

(assert (=> b!1902283 (=> (not res!849458) (not e!1215074))))

(assert (=> b!1902283 (= res!849458 lt!727501)))

(declare-fun b!1902284 () Bool)

(declare-fun res!849455 () Bool)

(assert (=> b!1902284 (=> res!849455 e!1215071)))

(assert (=> b!1902284 (= res!849455 (not ((_ is ElementMatch!5239) (regex!3814 lt!727318))))))

(assert (=> b!1902284 (= e!1215068 e!1215071)))

(declare-fun b!1902285 () Bool)

(declare-fun e!1215072 () Bool)

(assert (=> b!1902285 (= e!1215073 e!1215072)))

(declare-fun res!849456 () Bool)

(assert (=> b!1902285 (=> res!849456 e!1215072)))

(declare-fun call!117145 () Bool)

(assert (=> b!1902285 (= res!849456 call!117145)))

(declare-fun b!1902286 () Bool)

(declare-fun res!849457 () Bool)

(assert (=> b!1902286 (=> res!849457 e!1215072)))

(declare-fun tail!2942 (List!21511) List!21511)

(assert (=> b!1902286 (= res!849457 (not (isEmpty!13147 (tail!2942 lt!727316))))))

(declare-fun b!1902287 () Bool)

(declare-fun e!1215069 () Bool)

(declare-fun nullable!1589 (Regex!5239) Bool)

(assert (=> b!1902287 (= e!1215069 (nullable!1589 (regex!3814 lt!727318)))))

(declare-fun b!1902288 () Bool)

(assert (=> b!1902288 (= e!1215070 (= lt!727501 call!117145))))

(declare-fun b!1902289 () Bool)

(assert (=> b!1902289 (= e!1215068 (not lt!727501))))

(declare-fun b!1902290 () Bool)

(declare-fun res!849451 () Bool)

(assert (=> b!1902290 (=> (not res!849451) (not e!1215074))))

(assert (=> b!1902290 (= res!849451 (isEmpty!13147 (tail!2942 lt!727316)))))

(declare-fun b!1902291 () Bool)

(declare-fun derivativeStep!1348 (Regex!5239 C!10624) Regex!5239)

(assert (=> b!1902291 (= e!1215069 (matchR!2525 (derivativeStep!1348 (regex!3814 lt!727318) (head!4416 lt!727316)) (tail!2942 lt!727316)))))

(declare-fun b!1902292 () Bool)

(assert (=> b!1902292 (= e!1215072 (not (= (head!4416 lt!727316) (c!309779 (regex!3814 lt!727318)))))))

(declare-fun b!1902293 () Bool)

(declare-fun res!849453 () Bool)

(assert (=> b!1902293 (=> (not res!849453) (not e!1215074))))

(assert (=> b!1902293 (= res!849453 (not call!117145))))

(declare-fun bm!117140 () Bool)

(assert (=> bm!117140 (= call!117145 (isEmpty!13147 lt!727316))))

(declare-fun d!581684 () Bool)

(assert (=> d!581684 e!1215070))

(declare-fun c!309876 () Bool)

(assert (=> d!581684 (= c!309876 ((_ is EmptyExpr!5239) (regex!3814 lt!727318)))))

(assert (=> d!581684 (= lt!727501 e!1215069)))

(declare-fun c!309878 () Bool)

(assert (=> d!581684 (= c!309878 (isEmpty!13147 lt!727316))))

(declare-fun validRegex!2113 (Regex!5239) Bool)

(assert (=> d!581684 (validRegex!2113 (regex!3814 lt!727318))))

(assert (=> d!581684 (= (matchR!2525 (regex!3814 lt!727318) lt!727316) lt!727501)))

(assert (= (and d!581684 c!309878) b!1902287))

(assert (= (and d!581684 (not c!309878)) b!1902291))

(assert (= (and d!581684 c!309876) b!1902288))

(assert (= (and d!581684 (not c!309876)) b!1902280))

(assert (= (and b!1902280 c!309877) b!1902289))

(assert (= (and b!1902280 (not c!309877)) b!1902284))

(assert (= (and b!1902284 (not res!849455)) b!1902283))

(assert (= (and b!1902283 res!849458) b!1902293))

(assert (= (and b!1902293 res!849453) b!1902290))

(assert (= (and b!1902290 res!849451) b!1902281))

(assert (= (and b!1902283 (not res!849454)) b!1902282))

(assert (= (and b!1902282 res!849452) b!1902285))

(assert (= (and b!1902285 (not res!849456)) b!1902286))

(assert (= (and b!1902286 (not res!849457)) b!1902292))

(assert (= (or b!1902288 b!1902285 b!1902293) bm!117140))

(declare-fun m!2333581 () Bool)

(assert (=> d!581684 m!2333581))

(declare-fun m!2333583 () Bool)

(assert (=> d!581684 m!2333583))

(declare-fun m!2333585 () Bool)

(assert (=> b!1902287 m!2333585))

(declare-fun m!2333587 () Bool)

(assert (=> b!1902290 m!2333587))

(assert (=> b!1902290 m!2333587))

(declare-fun m!2333589 () Bool)

(assert (=> b!1902290 m!2333589))

(assert (=> b!1902286 m!2333587))

(assert (=> b!1902286 m!2333587))

(assert (=> b!1902286 m!2333589))

(declare-fun m!2333591 () Bool)

(assert (=> b!1902291 m!2333591))

(assert (=> b!1902291 m!2333591))

(declare-fun m!2333593 () Bool)

(assert (=> b!1902291 m!2333593))

(assert (=> b!1902291 m!2333587))

(assert (=> b!1902291 m!2333593))

(assert (=> b!1902291 m!2333587))

(declare-fun m!2333595 () Bool)

(assert (=> b!1902291 m!2333595))

(assert (=> b!1902281 m!2333591))

(assert (=> b!1902292 m!2333591))

(assert (=> bm!117140 m!2333581))

(assert (=> b!1901692 d!581684))

(declare-fun d!581686 () Bool)

(assert (=> d!581686 (= (get!6648 lt!727326) (v!26362 lt!727326))))

(assert (=> b!1901692 d!581686))

(declare-fun b!1902294 () Bool)

(declare-fun e!1215077 () Bool)

(declare-fun e!1215075 () Bool)

(assert (=> b!1902294 (= e!1215077 e!1215075)))

(declare-fun c!309880 () Bool)

(assert (=> b!1902294 (= c!309880 ((_ is EmptyLang!5239) (regex!3814 lt!727317)))))

(declare-fun b!1902295 () Bool)

(declare-fun e!1215081 () Bool)

(assert (=> b!1902295 (= e!1215081 (= (head!4416 lt!727319) (c!309779 (regex!3814 lt!727317))))))

(declare-fun b!1902296 () Bool)

(declare-fun e!1215078 () Bool)

(declare-fun e!1215080 () Bool)

(assert (=> b!1902296 (= e!1215078 e!1215080)))

(declare-fun res!849460 () Bool)

(assert (=> b!1902296 (=> (not res!849460) (not e!1215080))))

(declare-fun lt!727502 () Bool)

(assert (=> b!1902296 (= res!849460 (not lt!727502))))

(declare-fun b!1902297 () Bool)

(declare-fun res!849462 () Bool)

(assert (=> b!1902297 (=> res!849462 e!1215078)))

(assert (=> b!1902297 (= res!849462 e!1215081)))

(declare-fun res!849466 () Bool)

(assert (=> b!1902297 (=> (not res!849466) (not e!1215081))))

(assert (=> b!1902297 (= res!849466 lt!727502)))

(declare-fun b!1902298 () Bool)

(declare-fun res!849463 () Bool)

(assert (=> b!1902298 (=> res!849463 e!1215078)))

(assert (=> b!1902298 (= res!849463 (not ((_ is ElementMatch!5239) (regex!3814 lt!727317))))))

(assert (=> b!1902298 (= e!1215075 e!1215078)))

(declare-fun b!1902299 () Bool)

(declare-fun e!1215079 () Bool)

(assert (=> b!1902299 (= e!1215080 e!1215079)))

(declare-fun res!849464 () Bool)

(assert (=> b!1902299 (=> res!849464 e!1215079)))

(declare-fun call!117146 () Bool)

(assert (=> b!1902299 (= res!849464 call!117146)))

(declare-fun b!1902300 () Bool)

(declare-fun res!849465 () Bool)

(assert (=> b!1902300 (=> res!849465 e!1215079)))

(assert (=> b!1902300 (= res!849465 (not (isEmpty!13147 (tail!2942 lt!727319))))))

(declare-fun b!1902301 () Bool)

(declare-fun e!1215076 () Bool)

(assert (=> b!1902301 (= e!1215076 (nullable!1589 (regex!3814 lt!727317)))))

(declare-fun b!1902302 () Bool)

(assert (=> b!1902302 (= e!1215077 (= lt!727502 call!117146))))

(declare-fun b!1902303 () Bool)

(assert (=> b!1902303 (= e!1215075 (not lt!727502))))

(declare-fun b!1902304 () Bool)

(declare-fun res!849459 () Bool)

(assert (=> b!1902304 (=> (not res!849459) (not e!1215081))))

(assert (=> b!1902304 (= res!849459 (isEmpty!13147 (tail!2942 lt!727319)))))

(declare-fun b!1902305 () Bool)

(assert (=> b!1902305 (= e!1215076 (matchR!2525 (derivativeStep!1348 (regex!3814 lt!727317) (head!4416 lt!727319)) (tail!2942 lt!727319)))))

(declare-fun b!1902306 () Bool)

(assert (=> b!1902306 (= e!1215079 (not (= (head!4416 lt!727319) (c!309779 (regex!3814 lt!727317)))))))

(declare-fun b!1902307 () Bool)

(declare-fun res!849461 () Bool)

(assert (=> b!1902307 (=> (not res!849461) (not e!1215081))))

(assert (=> b!1902307 (= res!849461 (not call!117146))))

(declare-fun bm!117141 () Bool)

(assert (=> bm!117141 (= call!117146 (isEmpty!13147 lt!727319))))

(declare-fun d!581688 () Bool)

(assert (=> d!581688 e!1215077))

(declare-fun c!309879 () Bool)

(assert (=> d!581688 (= c!309879 ((_ is EmptyExpr!5239) (regex!3814 lt!727317)))))

(assert (=> d!581688 (= lt!727502 e!1215076)))

(declare-fun c!309881 () Bool)

(assert (=> d!581688 (= c!309881 (isEmpty!13147 lt!727319))))

(assert (=> d!581688 (validRegex!2113 (regex!3814 lt!727317))))

(assert (=> d!581688 (= (matchR!2525 (regex!3814 lt!727317) lt!727319) lt!727502)))

(assert (= (and d!581688 c!309881) b!1902301))

(assert (= (and d!581688 (not c!309881)) b!1902305))

(assert (= (and d!581688 c!309879) b!1902302))

(assert (= (and d!581688 (not c!309879)) b!1902294))

(assert (= (and b!1902294 c!309880) b!1902303))

(assert (= (and b!1902294 (not c!309880)) b!1902298))

(assert (= (and b!1902298 (not res!849463)) b!1902297))

(assert (= (and b!1902297 res!849466) b!1902307))

(assert (= (and b!1902307 res!849461) b!1902304))

(assert (= (and b!1902304 res!849459) b!1902295))

(assert (= (and b!1902297 (not res!849462)) b!1902296))

(assert (= (and b!1902296 res!849460) b!1902299))

(assert (= (and b!1902299 (not res!849464)) b!1902300))

(assert (= (and b!1902300 (not res!849465)) b!1902306))

(assert (= (or b!1902302 b!1902299 b!1902307) bm!117141))

(declare-fun m!2333597 () Bool)

(assert (=> d!581688 m!2333597))

(declare-fun m!2333599 () Bool)

(assert (=> d!581688 m!2333599))

(declare-fun m!2333601 () Bool)

(assert (=> b!1902301 m!2333601))

(declare-fun m!2333603 () Bool)

(assert (=> b!1902304 m!2333603))

(assert (=> b!1902304 m!2333603))

(declare-fun m!2333605 () Bool)

(assert (=> b!1902304 m!2333605))

(assert (=> b!1902300 m!2333603))

(assert (=> b!1902300 m!2333603))

(assert (=> b!1902300 m!2333605))

(declare-fun m!2333607 () Bool)

(assert (=> b!1902305 m!2333607))

(assert (=> b!1902305 m!2333607))

(declare-fun m!2333609 () Bool)

(assert (=> b!1902305 m!2333609))

(assert (=> b!1902305 m!2333603))

(assert (=> b!1902305 m!2333609))

(assert (=> b!1902305 m!2333603))

(declare-fun m!2333611 () Bool)

(assert (=> b!1902305 m!2333611))

(assert (=> b!1902295 m!2333607))

(assert (=> b!1902306 m!2333607))

(assert (=> bm!117141 m!2333597))

(assert (=> b!1901703 d!581688))

(declare-fun d!581690 () Bool)

(assert (=> d!581690 (= (get!6648 lt!727322) (v!26362 lt!727322))))

(assert (=> b!1901703 d!581690))

(declare-fun d!581692 () Bool)

(assert (=> d!581692 (= (isDefined!3631 (maxPrefix!1873 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354))) (not (isEmpty!13152 (maxPrefix!1873 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun bs!413614 () Bool)

(assert (= bs!413614 d!581692))

(assert (=> bs!413614 m!2332929))

(declare-fun m!2333613 () Bool)

(assert (=> bs!413614 m!2333613))

(assert (=> b!1901701 d!581692))

(declare-fun b!1902308 () Bool)

(declare-fun res!849469 () Bool)

(declare-fun e!1215082 () Bool)

(assert (=> b!1902308 (=> (not res!849469) (not e!1215082))))

(declare-fun lt!727503 () Option!4333)

(assert (=> b!1902308 (= res!849469 (matchR!2525 (regex!3814 (rule!6007 (_1!11553 (get!6647 lt!727503)))) (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727503))))))))

(declare-fun b!1902309 () Bool)

(declare-fun res!849468 () Bool)

(assert (=> b!1902309 (=> (not res!849468) (not e!1215082))))

(assert (=> b!1902309 (= res!849468 (= (++!5757 (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727503)))) (_2!11553 (get!6647 lt!727503))) (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1902311 () Bool)

(declare-fun res!849472 () Bool)

(assert (=> b!1902311 (=> (not res!849472) (not e!1215082))))

(assert (=> b!1902311 (= res!849472 (= (list!8706 (charsOf!2370 (_1!11553 (get!6647 lt!727503)))) (originalCharacters!4621 (_1!11553 (get!6647 lt!727503)))))))

(declare-fun b!1902312 () Bool)

(declare-fun e!1215083 () Bool)

(assert (=> b!1902312 (= e!1215083 e!1215082)))

(declare-fun res!849470 () Bool)

(assert (=> b!1902312 (=> (not res!849470) (not e!1215082))))

(assert (=> b!1902312 (= res!849470 (isDefined!3631 lt!727503))))

(declare-fun b!1902313 () Bool)

(declare-fun e!1215084 () Option!4333)

(declare-fun call!117147 () Option!4333)

(assert (=> b!1902313 (= e!1215084 call!117147)))

(declare-fun b!1902314 () Bool)

(declare-fun res!849467 () Bool)

(assert (=> b!1902314 (=> (not res!849467) (not e!1215082))))

(assert (=> b!1902314 (= res!849467 (= (value!120290 (_1!11553 (get!6647 lt!727503))) (apply!5620 (transformation!3814 (rule!6007 (_1!11553 (get!6647 lt!727503)))) (seqFromList!2686 (originalCharacters!4621 (_1!11553 (get!6647 lt!727503)))))))))

(declare-fun b!1902315 () Bool)

(declare-fun res!849473 () Bool)

(assert (=> b!1902315 (=> (not res!849473) (not e!1215082))))

(assert (=> b!1902315 (= res!849473 (< (size!16910 (_2!11553 (get!6647 lt!727503))) (size!16910 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!1902316 () Bool)

(declare-fun lt!727504 () Option!4333)

(declare-fun lt!727505 () Option!4333)

(assert (=> b!1902316 (= e!1215084 (ite (and ((_ is None!4332) lt!727504) ((_ is None!4332) lt!727505)) None!4332 (ite ((_ is None!4332) lt!727505) lt!727504 (ite ((_ is None!4332) lt!727504) lt!727505 (ite (>= (size!16908 (_1!11553 (v!26361 lt!727504))) (size!16908 (_1!11553 (v!26361 lt!727505)))) lt!727504 lt!727505)))))))

(assert (=> b!1902316 (= lt!727504 call!117147)))

(assert (=> b!1902316 (= lt!727505 (maxPrefix!1873 thiss!23328 (t!176894 rules!3198) (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun bm!117142 () Bool)

(assert (=> bm!117142 (= call!117147 (maxPrefixOneRule!1199 thiss!23328 (h!26832 rules!3198) (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun d!581694 () Bool)

(assert (=> d!581694 e!1215083))

(declare-fun res!849471 () Bool)

(assert (=> d!581694 (=> res!849471 e!1215083)))

(assert (=> d!581694 (= res!849471 (isEmpty!13152 lt!727503))))

(assert (=> d!581694 (= lt!727503 e!1215084)))

(declare-fun c!309882 () Bool)

(assert (=> d!581694 (= c!309882 (and ((_ is Cons!21431) rules!3198) ((_ is Nil!21431) (t!176894 rules!3198))))))

(declare-fun lt!727506 () Unit!35750)

(declare-fun lt!727507 () Unit!35750)

(assert (=> d!581694 (= lt!727506 lt!727507)))

(assert (=> d!581694 (isPrefix!1917 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(assert (=> d!581694 (= lt!727507 (lemmaIsPrefixRefl!1235 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!581694 (rulesValidInductive!1294 thiss!23328 rules!3198)))

(assert (=> d!581694 (= (maxPrefix!1873 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!727503)))

(declare-fun b!1902310 () Bool)

(assert (=> b!1902310 (= e!1215082 (contains!3845 rules!3198 (rule!6007 (_1!11553 (get!6647 lt!727503)))))))

(assert (= (and d!581694 c!309882) b!1902313))

(assert (= (and d!581694 (not c!309882)) b!1902316))

(assert (= (or b!1902313 b!1902316) bm!117142))

(assert (= (and d!581694 (not res!849471)) b!1902312))

(assert (= (and b!1902312 res!849470) b!1902311))

(assert (= (and b!1902311 res!849472) b!1902315))

(assert (= (and b!1902315 res!849473) b!1902309))

(assert (= (and b!1902309 res!849468) b!1902314))

(assert (= (and b!1902314 res!849467) b!1902308))

(assert (= (and b!1902308 res!849469) b!1902310))

(assert (=> bm!117142 m!2332927))

(declare-fun m!2333615 () Bool)

(assert (=> bm!117142 m!2333615))

(declare-fun m!2333617 () Bool)

(assert (=> b!1902308 m!2333617))

(declare-fun m!2333619 () Bool)

(assert (=> b!1902308 m!2333619))

(assert (=> b!1902308 m!2333619))

(declare-fun m!2333621 () Bool)

(assert (=> b!1902308 m!2333621))

(assert (=> b!1902308 m!2333621))

(declare-fun m!2333623 () Bool)

(assert (=> b!1902308 m!2333623))

(assert (=> b!1902310 m!2333617))

(declare-fun m!2333625 () Bool)

(assert (=> b!1902310 m!2333625))

(assert (=> b!1902309 m!2333617))

(assert (=> b!1902309 m!2333619))

(assert (=> b!1902309 m!2333619))

(assert (=> b!1902309 m!2333621))

(assert (=> b!1902309 m!2333621))

(declare-fun m!2333627 () Bool)

(assert (=> b!1902309 m!2333627))

(assert (=> b!1902311 m!2333617))

(assert (=> b!1902311 m!2333619))

(assert (=> b!1902311 m!2333619))

(assert (=> b!1902311 m!2333621))

(declare-fun m!2333629 () Bool)

(assert (=> b!1902312 m!2333629))

(declare-fun m!2333631 () Bool)

(assert (=> d!581694 m!2333631))

(assert (=> d!581694 m!2332927))

(assert (=> d!581694 m!2332927))

(declare-fun m!2333633 () Bool)

(assert (=> d!581694 m!2333633))

(assert (=> d!581694 m!2332927))

(assert (=> d!581694 m!2332927))

(declare-fun m!2333635 () Bool)

(assert (=> d!581694 m!2333635))

(assert (=> d!581694 m!2332921))

(assert (=> b!1902316 m!2332927))

(declare-fun m!2333637 () Bool)

(assert (=> b!1902316 m!2333637))

(assert (=> b!1902314 m!2333617))

(declare-fun m!2333639 () Bool)

(assert (=> b!1902314 m!2333639))

(assert (=> b!1902314 m!2333639))

(declare-fun m!2333641 () Bool)

(assert (=> b!1902314 m!2333641))

(assert (=> b!1902315 m!2333617))

(declare-fun m!2333643 () Bool)

(assert (=> b!1902315 m!2333643))

(assert (=> b!1902315 m!2332927))

(declare-fun m!2333645 () Bool)

(assert (=> b!1902315 m!2333645))

(assert (=> b!1901701 d!581694))

(declare-fun bs!413615 () Bool)

(declare-fun b!1902317 () Bool)

(assert (= bs!413615 (and b!1902317 b!1901709)))

(declare-fun lambda!74356 () Int)

(assert (=> bs!413615 (not (= lambda!74356 lambda!74327))))

(declare-fun bs!413616 () Bool)

(assert (= bs!413616 (and b!1902317 b!1902075)))

(assert (=> bs!413616 (= lambda!74356 lambda!74346)))

(declare-fun b!1902327 () Bool)

(declare-fun e!1215091 () Bool)

(assert (=> b!1902327 (= e!1215091 true)))

(declare-fun b!1902326 () Bool)

(declare-fun e!1215090 () Bool)

(assert (=> b!1902326 (= e!1215090 e!1215091)))

(declare-fun b!1902325 () Bool)

(declare-fun e!1215089 () Bool)

(assert (=> b!1902325 (= e!1215089 e!1215090)))

(assert (=> b!1902317 e!1215089))

(assert (= b!1902326 b!1902327))

(assert (= b!1902325 b!1902326))

(assert (= (and b!1902317 ((_ is Cons!21431) rules!3198)) b!1902325))

(assert (=> b!1902327 (< (dynLambda!10423 order!13529 (toValue!5431 (transformation!3814 (h!26832 rules!3198)))) (dynLambda!10424 order!13531 lambda!74356))))

(assert (=> b!1902327 (< (dynLambda!10425 order!13533 (toChars!5290 (transformation!3814 (h!26832 rules!3198)))) (dynLambda!10424 order!13531 lambda!74356))))

(assert (=> b!1902317 true))

(declare-fun e!1215086 () List!21511)

(declare-fun e!1215088 () List!21511)

(assert (=> b!1902317 (= e!1215086 e!1215088)))

(declare-fun lt!727508 () Unit!35750)

(assert (=> b!1902317 (= lt!727508 (forallContained!686 tokens!598 lambda!74356 (h!26831 tokens!598)))))

(declare-fun lt!727511 () List!21511)

(assert (=> b!1902317 (= lt!727511 (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 (t!176893 tokens!598) separatorToken!354))))

(declare-fun lt!727513 () Option!4333)

(assert (=> b!1902317 (= lt!727513 (maxPrefix!1873 thiss!23328 rules!3198 (++!5757 (list!8706 (charsOf!2370 (h!26831 tokens!598))) lt!727511)))))

(declare-fun c!309884 () Bool)

(assert (=> b!1902317 (= c!309884 (and ((_ is Some!4332) lt!727513) (= (_1!11553 (v!26361 lt!727513)) (h!26831 tokens!598))))))

(declare-fun b!1902318 () Bool)

(declare-fun e!1215087 () List!21511)

(declare-fun call!117150 () List!21511)

(assert (=> b!1902318 (= e!1215087 call!117150)))

(declare-fun b!1902319 () Bool)

(assert (=> b!1902319 (= e!1215086 Nil!21429)))

(declare-fun call!117151 () BalanceConc!14070)

(declare-fun c!309883 () Bool)

(declare-fun bm!117143 () Bool)

(assert (=> bm!117143 (= call!117151 (charsOf!2370 (ite c!309884 (h!26831 tokens!598) (ite c!309883 separatorToken!354 (h!26831 tokens!598)))))))

(declare-fun d!581696 () Bool)

(declare-fun c!309885 () Bool)

(assert (=> d!581696 (= c!309885 ((_ is Cons!21430) tokens!598))))

(assert (=> d!581696 (= (printWithSeparatorTokenWhenNeededList!470 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1215086)))

(declare-fun bm!117144 () Bool)

(declare-fun call!117148 () BalanceConc!14070)

(assert (=> bm!117144 (= call!117148 call!117151)))

(declare-fun b!1902320 () Bool)

(declare-fun call!117149 () List!21511)

(assert (=> b!1902320 (= e!1215088 call!117149)))

(declare-fun b!1902321 () Bool)

(assert (=> b!1902321 (= c!309883 (and ((_ is Some!4332) lt!727513) (not (= (_1!11553 (v!26361 lt!727513)) (h!26831 tokens!598)))))))

(declare-fun e!1215085 () List!21511)

(assert (=> b!1902321 (= e!1215088 e!1215085)))

(declare-fun bm!117145 () Bool)

(assert (=> bm!117145 (= call!117150 (list!8706 (ite c!309884 call!117151 call!117148)))))

(declare-fun b!1902322 () Bool)

(assert (=> b!1902322 (= e!1215085 (++!5757 call!117149 lt!727511))))

(declare-fun bm!117146 () Bool)

(declare-fun c!309886 () Bool)

(assert (=> bm!117146 (= c!309886 c!309884)))

(declare-fun call!117152 () List!21511)

(assert (=> bm!117146 (= call!117149 (++!5757 e!1215087 (ite c!309884 lt!727511 call!117152)))))

(declare-fun bm!117147 () Bool)

(assert (=> bm!117147 (= call!117152 call!117150)))

(declare-fun b!1902323 () Bool)

(assert (=> b!1902323 (= e!1215087 (list!8706 (charsOf!2370 (h!26831 tokens!598))))))

(declare-fun b!1902324 () Bool)

(assert (=> b!1902324 (= e!1215085 Nil!21429)))

(assert (=> b!1902324 (= (print!1447 thiss!23328 (singletonSeq!1845 (h!26831 tokens!598))) (printTailRec!954 thiss!23328 (singletonSeq!1845 (h!26831 tokens!598)) 0 (BalanceConc!14071 Empty!7127)))))

(declare-fun lt!727509 () Unit!35750)

(declare-fun Unit!35758 () Unit!35750)

(assert (=> b!1902324 (= lt!727509 Unit!35758)))

(declare-fun lt!727510 () Unit!35750)

(assert (=> b!1902324 (= lt!727510 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!716 thiss!23328 rules!3198 call!117152 lt!727511))))

(assert (=> b!1902324 false))

(declare-fun lt!727512 () Unit!35750)

(declare-fun Unit!35759 () Unit!35750)

(assert (=> b!1902324 (= lt!727512 Unit!35759)))

(assert (= (and d!581696 c!309885) b!1902317))

(assert (= (and d!581696 (not c!309885)) b!1902319))

(assert (= (and b!1902317 c!309884) b!1902320))

(assert (= (and b!1902317 (not c!309884)) b!1902321))

(assert (= (and b!1902321 c!309883) b!1902322))

(assert (= (and b!1902321 (not c!309883)) b!1902324))

(assert (= (or b!1902322 b!1902324) bm!117144))

(assert (= (or b!1902322 b!1902324) bm!117147))

(assert (= (or b!1902320 bm!117144) bm!117143))

(assert (= (or b!1902320 bm!117147) bm!117145))

(assert (= (or b!1902320 b!1902322) bm!117146))

(assert (= (and bm!117146 c!309886) b!1902318))

(assert (= (and bm!117146 (not c!309886)) b!1902323))

(declare-fun m!2333647 () Bool)

(assert (=> b!1902324 m!2333647))

(assert (=> b!1902324 m!2333647))

(declare-fun m!2333649 () Bool)

(assert (=> b!1902324 m!2333649))

(assert (=> b!1902324 m!2333647))

(declare-fun m!2333651 () Bool)

(assert (=> b!1902324 m!2333651))

(declare-fun m!2333653 () Bool)

(assert (=> b!1902324 m!2333653))

(declare-fun m!2333655 () Bool)

(assert (=> bm!117146 m!2333655))

(declare-fun m!2333657 () Bool)

(assert (=> b!1902322 m!2333657))

(declare-fun m!2333659 () Bool)

(assert (=> bm!117143 m!2333659))

(assert (=> b!1902323 m!2332901))

(assert (=> b!1902323 m!2332901))

(assert (=> b!1902323 m!2333565))

(declare-fun m!2333661 () Bool)

(assert (=> bm!117145 m!2333661))

(assert (=> b!1902317 m!2332901))

(assert (=> b!1902317 m!2332873))

(declare-fun m!2333663 () Bool)

(assert (=> b!1902317 m!2333663))

(declare-fun m!2333665 () Bool)

(assert (=> b!1902317 m!2333665))

(assert (=> b!1902317 m!2333565))

(assert (=> b!1902317 m!2333663))

(declare-fun m!2333667 () Bool)

(assert (=> b!1902317 m!2333667))

(assert (=> b!1902317 m!2332901))

(assert (=> b!1902317 m!2333565))

(assert (=> b!1901701 d!581696))

(declare-fun d!581698 () Bool)

(declare-fun res!849478 () Bool)

(declare-fun e!1215096 () Bool)

(assert (=> d!581698 (=> res!849478 e!1215096)))

(assert (=> d!581698 (= res!849478 (not ((_ is Cons!21431) rules!3198)))))

(assert (=> d!581698 (= (sepAndNonSepRulesDisjointChars!912 rules!3198 rules!3198) e!1215096)))

(declare-fun b!1902332 () Bool)

(declare-fun e!1215097 () Bool)

(assert (=> b!1902332 (= e!1215096 e!1215097)))

(declare-fun res!849479 () Bool)

(assert (=> b!1902332 (=> (not res!849479) (not e!1215097))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!424 (Rule!7428 List!21513) Bool)

(assert (=> b!1902332 (= res!849479 (ruleDisjointCharsFromAllFromOtherType!424 (h!26832 rules!3198) rules!3198))))

(declare-fun b!1902333 () Bool)

(assert (=> b!1902333 (= e!1215097 (sepAndNonSepRulesDisjointChars!912 rules!3198 (t!176894 rules!3198)))))

(assert (= (and d!581698 (not res!849478)) b!1902332))

(assert (= (and b!1902332 res!849479) b!1902333))

(declare-fun m!2333669 () Bool)

(assert (=> b!1902332 m!2333669))

(declare-fun m!2333671 () Bool)

(assert (=> b!1902333 m!2333671))

(assert (=> b!1901712 d!581698))

(declare-fun d!581700 () Bool)

(declare-fun res!849482 () Bool)

(declare-fun e!1215100 () Bool)

(assert (=> d!581700 (=> (not res!849482) (not e!1215100))))

(declare-fun rulesValid!1426 (LexerInterface!3427 List!21513) Bool)

(assert (=> d!581700 (= res!849482 (rulesValid!1426 thiss!23328 rules!3198))))

(assert (=> d!581700 (= (rulesInvariant!3034 thiss!23328 rules!3198) e!1215100)))

(declare-fun b!1902336 () Bool)

(declare-datatypes ((List!21515 0))(
  ( (Nil!21433) (Cons!21433 (h!26834 String!24868) (t!177006 List!21515)) )
))
(declare-fun noDuplicateTag!1424 (LexerInterface!3427 List!21513 List!21515) Bool)

(assert (=> b!1902336 (= e!1215100 (noDuplicateTag!1424 thiss!23328 rules!3198 Nil!21433))))

(assert (= (and d!581700 res!849482) b!1902336))

(declare-fun m!2333673 () Bool)

(assert (=> d!581700 m!2333673))

(declare-fun m!2333675 () Bool)

(assert (=> b!1902336 m!2333675))

(assert (=> b!1901710 d!581700))

(declare-fun bs!413617 () Bool)

(declare-fun d!581702 () Bool)

(assert (= bs!413617 (and d!581702 b!1901709)))

(declare-fun lambda!74359 () Int)

(assert (=> bs!413617 (not (= lambda!74359 lambda!74327))))

(declare-fun bs!413618 () Bool)

(assert (= bs!413618 (and d!581702 b!1902075)))

(assert (=> bs!413618 (= lambda!74359 lambda!74346)))

(declare-fun bs!413619 () Bool)

(assert (= bs!413619 (and d!581702 b!1902317)))

(assert (=> bs!413619 (= lambda!74359 lambda!74356)))

(declare-fun b!1902345 () Bool)

(declare-fun e!1215109 () Bool)

(assert (=> b!1902345 (= e!1215109 true)))

(declare-fun b!1902344 () Bool)

(declare-fun e!1215108 () Bool)

(assert (=> b!1902344 (= e!1215108 e!1215109)))

(declare-fun b!1902343 () Bool)

(declare-fun e!1215107 () Bool)

(assert (=> b!1902343 (= e!1215107 e!1215108)))

(assert (=> d!581702 e!1215107))

(assert (= b!1902344 b!1902345))

(assert (= b!1902343 b!1902344))

(assert (= (and d!581702 ((_ is Cons!21431) rules!3198)) b!1902343))

(assert (=> b!1902345 (< (dynLambda!10423 order!13529 (toValue!5431 (transformation!3814 (h!26832 rules!3198)))) (dynLambda!10424 order!13531 lambda!74359))))

(assert (=> b!1902345 (< (dynLambda!10425 order!13533 (toChars!5290 (transformation!3814 (h!26832 rules!3198)))) (dynLambda!10424 order!13531 lambda!74359))))

(assert (=> d!581702 true))

(declare-fun lt!727516 () Bool)

(assert (=> d!581702 (= lt!727516 (forall!4496 tokens!598 lambda!74359))))

(declare-fun e!1215105 () Bool)

(assert (=> d!581702 (= lt!727516 e!1215105)))

(declare-fun res!849487 () Bool)

(assert (=> d!581702 (=> res!849487 e!1215105)))

(assert (=> d!581702 (= res!849487 (not ((_ is Cons!21430) tokens!598)))))

(assert (=> d!581702 (not (isEmpty!13144 rules!3198))))

(assert (=> d!581702 (= (rulesProduceEachTokenIndividuallyList!1158 thiss!23328 rules!3198 tokens!598) lt!727516)))

(declare-fun b!1902341 () Bool)

(declare-fun e!1215106 () Bool)

(assert (=> b!1902341 (= e!1215105 e!1215106)))

(declare-fun res!849488 () Bool)

(assert (=> b!1902341 (=> (not res!849488) (not e!1215106))))

(assert (=> b!1902341 (= res!849488 (rulesProduceIndividualToken!1599 thiss!23328 rules!3198 (h!26831 tokens!598)))))

(declare-fun b!1902342 () Bool)

(assert (=> b!1902342 (= e!1215106 (rulesProduceEachTokenIndividuallyList!1158 thiss!23328 rules!3198 (t!176893 tokens!598)))))

(assert (= (and d!581702 (not res!849487)) b!1902341))

(assert (= (and b!1902341 res!849488) b!1902342))

(declare-fun m!2333677 () Bool)

(assert (=> d!581702 m!2333677))

(assert (=> d!581702 m!2332923))

(declare-fun m!2333679 () Bool)

(assert (=> b!1902341 m!2333679))

(declare-fun m!2333681 () Bool)

(assert (=> b!1902342 m!2333681))

(assert (=> b!1901700 d!581702))

(declare-fun e!1215112 () Bool)

(assert (=> b!1901698 (= tp!543254 e!1215112)))

(declare-fun b!1902358 () Bool)

(declare-fun tp!543341 () Bool)

(assert (=> b!1902358 (= e!1215112 tp!543341)))

(declare-fun b!1902357 () Bool)

(declare-fun tp!543340 () Bool)

(declare-fun tp!543342 () Bool)

(assert (=> b!1902357 (= e!1215112 (and tp!543340 tp!543342))))

(declare-fun b!1902356 () Bool)

(declare-fun tp_is_empty!9085 () Bool)

(assert (=> b!1902356 (= e!1215112 tp_is_empty!9085)))

(declare-fun b!1902359 () Bool)

(declare-fun tp!543339 () Bool)

(declare-fun tp!543343 () Bool)

(assert (=> b!1902359 (= e!1215112 (and tp!543339 tp!543343))))

(assert (= (and b!1901698 ((_ is ElementMatch!5239) (regex!3814 (rule!6007 separatorToken!354)))) b!1902356))

(assert (= (and b!1901698 ((_ is Concat!9190) (regex!3814 (rule!6007 separatorToken!354)))) b!1902357))

(assert (= (and b!1901698 ((_ is Star!5239) (regex!3814 (rule!6007 separatorToken!354)))) b!1902358))

(assert (= (and b!1901698 ((_ is Union!5239) (regex!3814 (rule!6007 separatorToken!354)))) b!1902359))

(declare-fun b!1902364 () Bool)

(declare-fun e!1215115 () Bool)

(declare-fun tp!543346 () Bool)

(assert (=> b!1902364 (= e!1215115 (and tp_is_empty!9085 tp!543346))))

(assert (=> b!1901699 (= tp!543255 e!1215115)))

(assert (= (and b!1901699 ((_ is Cons!21429) (originalCharacters!4621 separatorToken!354))) b!1902364))

(declare-fun e!1215116 () Bool)

(assert (=> b!1901697 (= tp!543259 e!1215116)))

(declare-fun b!1902367 () Bool)

(declare-fun tp!543349 () Bool)

(assert (=> b!1902367 (= e!1215116 tp!543349)))

(declare-fun b!1902366 () Bool)

(declare-fun tp!543348 () Bool)

(declare-fun tp!543350 () Bool)

(assert (=> b!1902366 (= e!1215116 (and tp!543348 tp!543350))))

(declare-fun b!1902365 () Bool)

(assert (=> b!1902365 (= e!1215116 tp_is_empty!9085)))

(declare-fun b!1902368 () Bool)

(declare-fun tp!543347 () Bool)

(declare-fun tp!543351 () Bool)

(assert (=> b!1902368 (= e!1215116 (and tp!543347 tp!543351))))

(assert (= (and b!1901697 ((_ is ElementMatch!5239) (regex!3814 (h!26832 rules!3198)))) b!1902365))

(assert (= (and b!1901697 ((_ is Concat!9190) (regex!3814 (h!26832 rules!3198)))) b!1902366))

(assert (= (and b!1901697 ((_ is Star!5239) (regex!3814 (h!26832 rules!3198)))) b!1902367))

(assert (= (and b!1901697 ((_ is Union!5239) (regex!3814 (h!26832 rules!3198)))) b!1902368))

(declare-fun b!1902382 () Bool)

(declare-fun b_free!53525 () Bool)

(declare-fun b_next!54229 () Bool)

(assert (=> b!1902382 (= b_free!53525 (not b_next!54229))))

(declare-fun t!176987 () Bool)

(declare-fun tb!116029 () Bool)

(assert (=> (and b!1902382 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176987) tb!116029))

(declare-fun result!140302 () Bool)

(assert (= result!140302 result!140248))

(assert (=> d!581634 t!176987))

(declare-fun t!176989 () Bool)

(declare-fun tb!116031 () Bool)

(assert (=> (and b!1902382 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176989) tb!116031))

(declare-fun result!140304 () Bool)

(assert (= result!140304 result!140256))

(assert (=> d!581634 t!176989))

(assert (=> d!581648 t!176987))

(declare-fun b_and!147399 () Bool)

(declare-fun tp!543362 () Bool)

(assert (=> b!1902382 (= tp!543362 (and (=> t!176987 result!140302) (=> t!176989 result!140304) b_and!147399))))

(declare-fun b_free!53527 () Bool)

(declare-fun b_next!54231 () Bool)

(assert (=> b!1902382 (= b_free!53527 (not b_next!54231))))

(declare-fun t!176991 () Bool)

(declare-fun tb!116033 () Bool)

(assert (=> (and b!1902382 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176991) tb!116033))

(declare-fun result!140306 () Bool)

(assert (= result!140306 result!140208))

(assert (=> d!581674 t!176991))

(declare-fun t!176993 () Bool)

(declare-fun tb!116035 () Bool)

(assert (=> (and b!1902382 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354)))) t!176993) tb!116035))

(declare-fun result!140308 () Bool)

(assert (= result!140308 result!140200))

(assert (=> b!1901774 t!176993))

(assert (=> d!581646 t!176993))

(assert (=> b!1901781 t!176991))

(declare-fun t!176995 () Bool)

(declare-fun tb!116037 () Bool)

(assert (=> (and b!1902382 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176995) tb!116037))

(declare-fun result!140310 () Bool)

(assert (= result!140310 result!140262))

(assert (=> d!581648 t!176995))

(declare-fun tp!543363 () Bool)

(declare-fun b_and!147401 () Bool)

(assert (=> b!1902382 (= tp!543363 (and (=> t!176993 result!140308) (=> t!176991 result!140306) (=> t!176995 result!140310) b_and!147401))))

(declare-fun e!1215134 () Bool)

(declare-fun e!1215131 () Bool)

(declare-fun tp!543365 () Bool)

(declare-fun b!1902381 () Bool)

(assert (=> b!1902381 (= e!1215131 (and tp!543365 (inv!28518 (tag!4240 (rule!6007 (h!26831 (t!176893 tokens!598))))) (inv!28521 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) e!1215134))))

(declare-fun e!1215130 () Bool)

(assert (=> b!1901706 (= tp!543257 e!1215130)))

(declare-fun e!1215129 () Bool)

(declare-fun tp!543364 () Bool)

(declare-fun b!1902380 () Bool)

(assert (=> b!1902380 (= e!1215129 (and (inv!21 (value!120290 (h!26831 (t!176893 tokens!598)))) e!1215131 tp!543364))))

(declare-fun tp!543366 () Bool)

(declare-fun b!1902379 () Bool)

(assert (=> b!1902379 (= e!1215130 (and (inv!28522 (h!26831 (t!176893 tokens!598))) e!1215129 tp!543366))))

(assert (=> b!1902382 (= e!1215134 (and tp!543362 tp!543363))))

(assert (= b!1902381 b!1902382))

(assert (= b!1902380 b!1902381))

(assert (= b!1902379 b!1902380))

(assert (= (and b!1901706 ((_ is Cons!21430) (t!176893 tokens!598))) b!1902379))

(declare-fun m!2333683 () Bool)

(assert (=> b!1902381 m!2333683))

(declare-fun m!2333685 () Bool)

(assert (=> b!1902381 m!2333685))

(declare-fun m!2333687 () Bool)

(assert (=> b!1902380 m!2333687))

(declare-fun m!2333689 () Bool)

(assert (=> b!1902379 m!2333689))

(declare-fun e!1215135 () Bool)

(assert (=> b!1901707 (= tp!543260 e!1215135)))

(declare-fun b!1902385 () Bool)

(declare-fun tp!543369 () Bool)

(assert (=> b!1902385 (= e!1215135 tp!543369)))

(declare-fun b!1902384 () Bool)

(declare-fun tp!543368 () Bool)

(declare-fun tp!543370 () Bool)

(assert (=> b!1902384 (= e!1215135 (and tp!543368 tp!543370))))

(declare-fun b!1902383 () Bool)

(assert (=> b!1902383 (= e!1215135 tp_is_empty!9085)))

(declare-fun b!1902386 () Bool)

(declare-fun tp!543367 () Bool)

(declare-fun tp!543371 () Bool)

(assert (=> b!1902386 (= e!1215135 (and tp!543367 tp!543371))))

(assert (= (and b!1901707 ((_ is ElementMatch!5239) (regex!3814 (rule!6007 (h!26831 tokens!598))))) b!1902383))

(assert (= (and b!1901707 ((_ is Concat!9190) (regex!3814 (rule!6007 (h!26831 tokens!598))))) b!1902384))

(assert (= (and b!1901707 ((_ is Star!5239) (regex!3814 (rule!6007 (h!26831 tokens!598))))) b!1902385))

(assert (= (and b!1901707 ((_ is Union!5239) (regex!3814 (rule!6007 (h!26831 tokens!598))))) b!1902386))

(declare-fun b!1902397 () Bool)

(declare-fun b_free!53529 () Bool)

(declare-fun b_next!54233 () Bool)

(assert (=> b!1902397 (= b_free!53529 (not b_next!54233))))

(declare-fun tb!116039 () Bool)

(declare-fun t!176997 () Bool)

(assert (=> (and b!1902397 (= (toValue!5431 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176997) tb!116039))

(declare-fun result!140314 () Bool)

(assert (= result!140314 result!140248))

(assert (=> d!581634 t!176997))

(declare-fun tb!116041 () Bool)

(declare-fun t!176999 () Bool)

(assert (=> (and b!1902397 (= (toValue!5431 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!176999) tb!116041))

(declare-fun result!140316 () Bool)

(assert (= result!140316 result!140256))

(assert (=> d!581634 t!176999))

(assert (=> d!581648 t!176997))

(declare-fun tp!543380 () Bool)

(declare-fun b_and!147403 () Bool)

(assert (=> b!1902397 (= tp!543380 (and (=> t!176997 result!140314) (=> t!176999 result!140316) b_and!147403))))

(declare-fun b_free!53531 () Bool)

(declare-fun b_next!54235 () Bool)

(assert (=> b!1902397 (= b_free!53531 (not b_next!54235))))

(declare-fun t!177001 () Bool)

(declare-fun tb!116043 () Bool)

(assert (=> (and b!1902397 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!177001) tb!116043))

(declare-fun result!140318 () Bool)

(assert (= result!140318 result!140208))

(assert (=> d!581674 t!177001))

(declare-fun t!177003 () Bool)

(declare-fun tb!116045 () Bool)

(assert (=> (and b!1902397 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354)))) t!177003) tb!116045))

(declare-fun result!140320 () Bool)

(assert (= result!140320 result!140200))

(assert (=> b!1901774 t!177003))

(assert (=> d!581646 t!177003))

(assert (=> b!1901781 t!177001))

(declare-fun t!177005 () Bool)

(declare-fun tb!116047 () Bool)

(assert (=> (and b!1902397 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598))))) t!177005) tb!116047))

(declare-fun result!140322 () Bool)

(assert (= result!140322 result!140262))

(assert (=> d!581648 t!177005))

(declare-fun b_and!147405 () Bool)

(declare-fun tp!543382 () Bool)

(assert (=> b!1902397 (= tp!543382 (and (=> t!177001 result!140318) (=> t!177005 result!140322) (=> t!177003 result!140320) b_and!147405))))

(declare-fun e!1215144 () Bool)

(assert (=> b!1902397 (= e!1215144 (and tp!543380 tp!543382))))

(declare-fun b!1902396 () Bool)

(declare-fun tp!543381 () Bool)

(declare-fun e!1215146 () Bool)

(assert (=> b!1902396 (= e!1215146 (and tp!543381 (inv!28518 (tag!4240 (h!26832 (t!176894 rules!3198)))) (inv!28521 (transformation!3814 (h!26832 (t!176894 rules!3198)))) e!1215144))))

(declare-fun b!1902395 () Bool)

(declare-fun e!1215147 () Bool)

(declare-fun tp!543383 () Bool)

(assert (=> b!1902395 (= e!1215147 (and e!1215146 tp!543383))))

(assert (=> b!1901716 (= tp!543258 e!1215147)))

(assert (= b!1902396 b!1902397))

(assert (= b!1902395 b!1902396))

(assert (= (and b!1901716 ((_ is Cons!21431) (t!176894 rules!3198))) b!1902395))

(declare-fun m!2333691 () Bool)

(assert (=> b!1902396 m!2333691))

(declare-fun m!2333693 () Bool)

(assert (=> b!1902396 m!2333693))

(declare-fun b!1902398 () Bool)

(declare-fun e!1215148 () Bool)

(declare-fun tp!543384 () Bool)

(assert (=> b!1902398 (= e!1215148 (and tp_is_empty!9085 tp!543384))))

(assert (=> b!1901715 (= tp!543261 e!1215148)))

(assert (= (and b!1901715 ((_ is Cons!21429) (originalCharacters!4621 (h!26831 tokens!598)))) b!1902398))

(declare-fun b_lambda!62699 () Bool)

(assert (= b_lambda!62647 (or (and b!1902397 b_free!53531 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) (and b!1902382 b_free!53527 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) (and b!1901711 b_free!53511) (and b!1901694 b_free!53507 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) (and b!1901708 b_free!53515 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) b_lambda!62699)))

(declare-fun b_lambda!62701 () Bool)

(assert (= b_lambda!62697 (or (and b!1901694 b_free!53507) (and b!1901711 b_free!53511 (= (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901708 b_free!53515 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902397 b_free!53531 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902382 b_free!53527 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) b_lambda!62701)))

(declare-fun b_lambda!62703 () Bool)

(assert (= b_lambda!62677 (or (and b!1901711 b_free!53509 (= (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901708 b_free!53513 (= (toValue!5431 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901694 b_free!53505) (and b!1902382 b_free!53525 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902397 b_free!53529 (= (toValue!5431 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) b_lambda!62703)))

(declare-fun b_lambda!62705 () Bool)

(assert (= b_lambda!62675 (or (and b!1901694 b_free!53507) (and b!1901711 b_free!53511 (= (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901708 b_free!53515 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902397 b_free!53531 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902382 b_free!53527 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) b_lambda!62705)))

(declare-fun b_lambda!62707 () Bool)

(assert (= b_lambda!62673 (or (and b!1902397 b_free!53531 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) (and b!1902382 b_free!53527 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) (and b!1901711 b_free!53511) (and b!1901694 b_free!53507 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) (and b!1901708 b_free!53515 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))))) b_lambda!62707)))

(declare-fun b_lambda!62709 () Bool)

(assert (= b_lambda!62671 (or (and b!1901711 b_free!53509 (= (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901708 b_free!53513 (= (toValue!5431 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901694 b_free!53505) (and b!1902382 b_free!53525 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902397 b_free!53529 (= (toValue!5431 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) b_lambda!62709)))

(declare-fun b_lambda!62711 () Bool)

(assert (= b_lambda!62669 (or (and b!1901711 b_free!53509 (= (toValue!5431 (transformation!3814 (rule!6007 separatorToken!354))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901708 b_free!53513 (= (toValue!5431 (transformation!3814 (h!26832 rules!3198))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901694 b_free!53505) (and b!1902382 b_free!53525 (= (toValue!5431 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902397 b_free!53529 (= (toValue!5431 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toValue!5431 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) b_lambda!62711)))

(declare-fun b_lambda!62713 () Bool)

(assert (= b_lambda!62649 (or (and b!1901694 b_free!53507) (and b!1901711 b_free!53511 (= (toChars!5290 (transformation!3814 (rule!6007 separatorToken!354))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1901708 b_free!53515 (= (toChars!5290 (transformation!3814 (h!26832 rules!3198))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902397 b_free!53531 (= (toChars!5290 (transformation!3814 (h!26832 (t!176894 rules!3198)))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) (and b!1902382 b_free!53527 (= (toChars!5290 (transformation!3814 (rule!6007 (h!26831 (t!176893 tokens!598))))) (toChars!5290 (transformation!3814 (rule!6007 (h!26831 tokens!598)))))) b_lambda!62713)))

(declare-fun b_lambda!62715 () Bool)

(assert (= b_lambda!62645 (or b!1901709 b_lambda!62715)))

(declare-fun bs!413620 () Bool)

(declare-fun d!581704 () Bool)

(assert (= bs!413620 (and d!581704 b!1901709)))

(assert (=> bs!413620 (= (dynLambda!10419 lambda!74327 (h!26831 tokens!598)) (not (isSeparator!3814 (rule!6007 (h!26831 tokens!598)))))))

(assert (=> b!1901752 d!581704))

(check-sat b_and!147381 b_and!147379 (not tb!115991) (not b!1902381) (not b_lambda!62711) (not b_next!54215) (not d!581646) (not d!581700) (not b!1902192) (not b!1901753) (not b!1902201) (not d!581702) (not b!1902304) (not b!1902314) (not b!1902368) (not b!1902311) (not b!1901766) (not b!1902287) b_and!147395 (not bm!117143) (not b!1902198) (not b!1902291) (not d!581654) (not b!1902075) (not b!1902396) (not b!1902308) (not d!581634) (not b!1901993) (not b!1901961) (not bm!117145) (not b!1901780) (not b!1902367) (not b_next!54231) (not bm!117140) (not b!1902295) (not b!1902384) (not b_lambda!62713) (not b!1902336) (not b!1902312) (not b!1902379) (not b!1901781) (not b!1902333) (not b!1902242) (not b_next!54209) (not b!1902341) (not b!1902247) (not b_lambda!62705) (not bm!117134) (not b!1902081) (not b_lambda!62703) (not b!1902316) (not b!1902244) (not bm!117103) (not b!1902300) (not d!581688) b_and!147399 (not b!1901767) (not b!1902385) b_and!147405 (not b_next!54219) (not d!581546) (not b!1901797) (not b!1902306) (not d!581548) (not d!581550) (not b!1902249) (not b!1902240) (not d!581664) (not b!1902195) (not d!581586) (not b!1902235) (not b_next!54213) (not d!581666) (not d!581660) (not b_next!54211) (not d!581672) (not b!1902281) (not d!581676) (not b!1902238) (not d!581590) (not b!1901795) (not bm!117132) (not b!1901769) (not b!1902305) (not b!1902398) (not tb!116003) (not b_next!54235) b_and!147397 (not b!1901964) (not b!1901774) (not b!1902290) (not b!1902322) (not b!1902309) (not d!581558) (not b!1902091) (not b!1902366) (not b!1902246) (not b!1902194) (not b_lambda!62701) (not tb!115997) (not b!1901960) (not b!1902315) (not d!581668) (not bm!117142) (not b!1901994) (not b!1902323) b_and!147383 (not tb!115955) (not b!1902245) (not d!581656) (not b_next!54229) (not d!581658) (not b!1902332) (not bm!117146) (not b!1901796) (not d!581692) (not b!1902342) (not b_lambda!62715) (not b_lambda!62707) (not b_lambda!62699) (not b!1902386) (not b_next!54233) (not b!1902317) (not b!1902310) (not b!1901926) (not b!1902359) (not d!581538) (not b!1902080) (not b!1902286) (not b!1902243) (not d!581684) (not b!1902324) (not b!1901782) (not b!1901968) (not b!1901775) (not tb!115949) (not b!1902301) (not bm!117141) (not d!581588) (not d!581670) (not b!1901927) (not b!1901962) (not b!1902237) (not b!1902140) (not b!1902380) (not b_lambda!62709) (not d!581694) (not b!1902239) (not b!1902343) (not b!1901963) (not b_next!54217) (not d!581556) (not d!581562) (not b!1902236) (not bm!117135) (not d!581648) b_and!147401 (not b!1902364) b_and!147403 (not b!1902358) (not b!1901783) (not b!1901747) (not b!1902200) (not b!1902357) (not b!1901966) tp_is_empty!9085 (not b!1901967) (not b!1902292) (not b!1901784) (not b!1901764) (not b!1902234) (not b!1902325) (not bm!117137) b_and!147393 (not b!1902250) (not d!581674) (not b!1902395) (not b!1902082))
(check-sat b_and!147379 (not b_next!54215) b_and!147381 b_and!147395 (not b_next!54231) (not b_next!54209) (not b_next!54219) (not b_next!54213) (not b_next!54211) b_and!147383 (not b_next!54229) (not b_next!54233) b_and!147403 b_and!147393 b_and!147399 b_and!147405 (not b_next!54235) b_and!147397 (not b_next!54217) b_and!147401)
