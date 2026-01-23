; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192244 () Bool)

(assert start!192244)

(declare-fun b!1918014 () Bool)

(declare-fun b_free!54505 () Bool)

(declare-fun b_next!55209 () Bool)

(assert (=> b!1918014 (= b_free!54505 (not b_next!55209))))

(declare-fun tp!547538 () Bool)

(declare-fun b_and!149711 () Bool)

(assert (=> b!1918014 (= tp!547538 b_and!149711)))

(declare-fun b_free!54507 () Bool)

(declare-fun b_next!55211 () Bool)

(assert (=> b!1918014 (= b_free!54507 (not b_next!55211))))

(declare-fun tp!547535 () Bool)

(declare-fun b_and!149713 () Bool)

(assert (=> b!1918014 (= tp!547535 b_and!149713)))

(declare-fun b!1918023 () Bool)

(declare-fun b_free!54509 () Bool)

(declare-fun b_next!55213 () Bool)

(assert (=> b!1918023 (= b_free!54509 (not b_next!55213))))

(declare-fun tp!547539 () Bool)

(declare-fun b_and!149715 () Bool)

(assert (=> b!1918023 (= tp!547539 b_and!149715)))

(declare-fun b_free!54511 () Bool)

(declare-fun b_next!55215 () Bool)

(assert (=> b!1918023 (= b_free!54511 (not b_next!55215))))

(declare-fun tp!547532 () Bool)

(declare-fun b_and!149717 () Bool)

(assert (=> b!1918023 (= tp!547532 b_and!149717)))

(declare-fun b!1918017 () Bool)

(declare-fun b_free!54513 () Bool)

(declare-fun b_next!55217 () Bool)

(assert (=> b!1918017 (= b_free!54513 (not b_next!55217))))

(declare-fun tp!547533 () Bool)

(declare-fun b_and!149719 () Bool)

(assert (=> b!1918017 (= tp!547533 b_and!149719)))

(declare-fun b_free!54515 () Bool)

(declare-fun b_next!55219 () Bool)

(assert (=> b!1918017 (= b_free!54515 (not b_next!55219))))

(declare-fun tp!547530 () Bool)

(declare-fun b_and!149721 () Bool)

(assert (=> b!1918017 (= tp!547530 b_and!149721)))

(declare-fun b!1918005 () Bool)

(declare-fun e!1225589 () Bool)

(declare-datatypes ((List!21804 0))(
  ( (Nil!21722) (Cons!21722 (h!27123 (_ BitVec 16)) (t!178597 List!21804)) )
))
(declare-datatypes ((TokenValue!4020 0))(
  ( (FloatLiteralValue!8040 (text!28585 List!21804)) (TokenValueExt!4019 (__x!13538 Int)) (Broken!20100 (value!122259 List!21804)) (Object!4101) (End!4020) (Def!4020) (Underscore!4020) (Match!4020) (Else!4020) (Error!4020) (Case!4020) (If!4020) (Extends!4020) (Abstract!4020) (Class!4020) (Val!4020) (DelimiterValue!8040 (del!4080 List!21804)) (KeywordValue!4026 (value!122260 List!21804)) (CommentValue!8040 (value!122261 List!21804)) (WhitespaceValue!8040 (value!122262 List!21804)) (IndentationValue!4020 (value!122263 List!21804)) (String!25217) (Int32!4020) (Broken!20101 (value!122264 List!21804)) (Boolean!4021) (Unit!36111) (OperatorValue!4023 (op!4080 List!21804)) (IdentifierValue!8040 (value!122265 List!21804)) (IdentifierValue!8041 (value!122266 List!21804)) (WhitespaceValue!8041 (value!122267 List!21804)) (True!8040) (False!8040) (Broken!20102 (value!122268 List!21804)) (Broken!20103 (value!122269 List!21804)) (True!8041) (RightBrace!4020) (RightBracket!4020) (Colon!4020) (Null!4020) (Comma!4020) (LeftBracket!4020) (False!8041) (LeftBrace!4020) (ImaginaryLiteralValue!4020 (text!28586 List!21804)) (StringLiteralValue!12060 (value!122270 List!21804)) (EOFValue!4020 (value!122271 List!21804)) (IdentValue!4020 (value!122272 List!21804)) (DelimiterValue!8041 (value!122273 List!21804)) (DedentValue!4020 (value!122274 List!21804)) (NewLineValue!4020 (value!122275 List!21804)) (IntegerValue!12060 (value!122276 (_ BitVec 32)) (text!28587 List!21804)) (IntegerValue!12061 (value!122277 Int) (text!28588 List!21804)) (Times!4020) (Or!4020) (Equal!4020) (Minus!4020) (Broken!20104 (value!122278 List!21804)) (And!4020) (Div!4020) (LessEqual!4020) (Mod!4020) (Concat!9329) (Not!4020) (Plus!4020) (SpaceValue!4020 (value!122279 List!21804)) (IntegerValue!12062 (value!122280 Int) (text!28589 List!21804)) (StringLiteralValue!12061 (text!28590 List!21804)) (FloatLiteralValue!8041 (text!28591 List!21804)) (BytesLiteralValue!4020 (value!122281 List!21804)) (CommentValue!8041 (value!122282 List!21804)) (StringLiteralValue!12062 (value!122283 List!21804)) (ErrorTokenValue!4020 (msg!4081 List!21804)) )
))
(declare-datatypes ((C!10764 0))(
  ( (C!10765 (val!6334 Int)) )
))
(declare-datatypes ((List!21805 0))(
  ( (Nil!21723) (Cons!21723 (h!27124 C!10764) (t!178598 List!21805)) )
))
(declare-datatypes ((Regex!5309 0))(
  ( (ElementMatch!5309 (c!312077 C!10764)) (Concat!9330 (regOne!11130 Regex!5309) (regTwo!11130 Regex!5309)) (EmptyExpr!5309) (Star!5309 (reg!5638 Regex!5309)) (EmptyLang!5309) (Union!5309 (regOne!11131 Regex!5309) (regTwo!11131 Regex!5309)) )
))
(declare-datatypes ((String!25218 0))(
  ( (String!25219 (value!122284 String)) )
))
(declare-datatypes ((IArray!14519 0))(
  ( (IArray!14520 (innerList!7317 List!21805)) )
))
(declare-datatypes ((Conc!7257 0))(
  ( (Node!7257 (left!17333 Conc!7257) (right!17663 Conc!7257) (csize!14744 Int) (cheight!7468 Int)) (Leaf!10662 (xs!10151 IArray!14519) (csize!14745 Int)) (Empty!7257) )
))
(declare-datatypes ((BalanceConc!14330 0))(
  ( (BalanceConc!14331 (c!312078 Conc!7257)) )
))
(declare-datatypes ((TokenValueInjection!7624 0))(
  ( (TokenValueInjection!7625 (toValue!5513 Int) (toChars!5372 Int)) )
))
(declare-datatypes ((Rule!7568 0))(
  ( (Rule!7569 (regex!3884 Regex!5309) (tag!4324 String!25218) (isSeparator!3884 Bool) (transformation!3884 TokenValueInjection!7624)) )
))
(declare-datatypes ((Token!7320 0))(
  ( (Token!7321 (value!122285 TokenValue!4020) (rule!6087 Rule!7568) (size!17030 Int) (originalCharacters!4691 List!21805)) )
))
(declare-datatypes ((tuple2!20432 0))(
  ( (tuple2!20433 (_1!11685 Token!7320) (_2!11685 List!21805)) )
))
(declare-datatypes ((Option!4473 0))(
  ( (None!4472) (Some!4472 (v!26545 tuple2!20432)) )
))
(declare-fun lt!735468 () Option!4473)

(declare-datatypes ((List!21806 0))(
  ( (Nil!21724) (Cons!21724 (h!27125 Token!7320) (t!178599 List!21806)) )
))
(declare-fun tokens!598 () List!21806)

(declare-fun get!6822 (Option!4473) tuple2!20432)

(assert (=> b!1918005 (= e!1225589 (= (_1!11685 (get!6822 lt!735468)) (h!27125 tokens!598)))))

(declare-fun b!1918007 () Bool)

(declare-fun tp!547534 () Bool)

(declare-fun e!1225605 () Bool)

(declare-fun e!1225597 () Bool)

(declare-fun inv!28812 (Token!7320) Bool)

(assert (=> b!1918007 (= e!1225605 (and (inv!28812 (h!27125 tokens!598)) e!1225597 tp!547534))))

(declare-fun separatorToken!354 () Token!7320)

(declare-fun e!1225592 () Bool)

(declare-fun e!1225587 () Bool)

(declare-fun b!1918008 () Bool)

(declare-fun tp!547536 () Bool)

(declare-fun inv!28809 (String!25218) Bool)

(declare-fun inv!28813 (TokenValueInjection!7624) Bool)

(assert (=> b!1918008 (= e!1225587 (and tp!547536 (inv!28809 (tag!4324 (rule!6087 separatorToken!354))) (inv!28813 (transformation!3884 (rule!6087 separatorToken!354))) e!1225592))))

(declare-fun e!1225593 () Bool)

(declare-datatypes ((List!21807 0))(
  ( (Nil!21725) (Cons!21725 (h!27126 Rule!7568) (t!178600 List!21807)) )
))
(declare-fun rules!3198 () List!21807)

(declare-fun tp!547540 () Bool)

(declare-fun e!1225602 () Bool)

(declare-fun b!1918009 () Bool)

(assert (=> b!1918009 (= e!1225593 (and tp!547540 (inv!28809 (tag!4324 (h!27126 rules!3198))) (inv!28813 (transformation!3884 (h!27126 rules!3198))) e!1225602))))

(declare-fun b!1918010 () Bool)

(declare-fun res!857496 () Bool)

(declare-fun e!1225595 () Bool)

(assert (=> b!1918010 (=> (not res!857496) (not e!1225595))))

(assert (=> b!1918010 (= res!857496 (isSeparator!3884 (rule!6087 separatorToken!354)))))

(declare-fun b!1918011 () Bool)

(declare-fun res!857501 () Bool)

(assert (=> b!1918011 (=> (not res!857501) (not e!1225595))))

(declare-datatypes ((LexerInterface!3497 0))(
  ( (LexerInterfaceExt!3494 (__x!13539 Int)) (Lexer!3495) )
))
(declare-fun thiss!23328 () LexerInterface!3497)

(declare-fun rulesInvariant!3104 (LexerInterface!3497 List!21807) Bool)

(assert (=> b!1918011 (= res!857501 (rulesInvariant!3104 thiss!23328 rules!3198))))

(declare-fun b!1918012 () Bool)

(assert (=> b!1918012 (= e!1225595 (not true))))

(declare-fun lt!735463 () List!21805)

(declare-fun lt!735470 () Option!4473)

(declare-fun maxPrefix!1943 (LexerInterface!3497 List!21807 List!21805) Option!4473)

(declare-fun ++!5839 (List!21805 List!21805) List!21805)

(declare-fun printWithSeparatorTokenWhenNeededList!540 (LexerInterface!3497 List!21807 List!21806 Token!7320) List!21805)

(assert (=> b!1918012 (= lt!735470 (maxPrefix!1943 thiss!23328 rules!3198 (++!5839 lt!735463 (printWithSeparatorTokenWhenNeededList!540 thiss!23328 rules!3198 (t!178599 tokens!598) separatorToken!354))))))

(declare-fun e!1225600 () Bool)

(assert (=> b!1918012 e!1225600))

(declare-fun res!857494 () Bool)

(assert (=> b!1918012 (=> (not res!857494) (not e!1225600))))

(declare-datatypes ((Option!4474 0))(
  ( (None!4473) (Some!4473 (v!26546 Rule!7568)) )
))
(declare-fun lt!735474 () Option!4474)

(declare-fun isDefined!3771 (Option!4474) Bool)

(assert (=> b!1918012 (= res!857494 (isDefined!3771 lt!735474))))

(declare-fun getRuleFromTag!727 (LexerInterface!3497 List!21807 String!25218) Option!4474)

(assert (=> b!1918012 (= lt!735474 (getRuleFromTag!727 thiss!23328 rules!3198 (tag!4324 (rule!6087 (h!27125 tokens!598)))))))

(declare-datatypes ((Unit!36112 0))(
  ( (Unit!36113) )
))
(declare-fun lt!735472 () Unit!36112)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!727 (LexerInterface!3497 List!21807 List!21805 Token!7320) Unit!36112)

(assert (=> b!1918012 (= lt!735472 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!727 thiss!23328 rules!3198 lt!735463 (h!27125 tokens!598)))))

(assert (=> b!1918012 e!1225589))

(declare-fun res!857498 () Bool)

(assert (=> b!1918012 (=> (not res!857498) (not e!1225589))))

(declare-fun isDefined!3772 (Option!4473) Bool)

(assert (=> b!1918012 (= res!857498 (isDefined!3772 lt!735468))))

(assert (=> b!1918012 (= lt!735468 (maxPrefix!1943 thiss!23328 rules!3198 lt!735463))))

(declare-fun lt!735471 () BalanceConc!14330)

(declare-fun list!8816 (BalanceConc!14330) List!21805)

(assert (=> b!1918012 (= lt!735463 (list!8816 lt!735471))))

(declare-fun e!1225604 () Bool)

(assert (=> b!1918012 e!1225604))

(declare-fun res!857492 () Bool)

(assert (=> b!1918012 (=> (not res!857492) (not e!1225604))))

(declare-fun lt!735473 () Option!4474)

(assert (=> b!1918012 (= res!857492 (isDefined!3771 lt!735473))))

(assert (=> b!1918012 (= lt!735473 (getRuleFromTag!727 thiss!23328 rules!3198 (tag!4324 (rule!6087 separatorToken!354))))))

(declare-fun lt!735469 () List!21805)

(declare-fun lt!735462 () Unit!36112)

(assert (=> b!1918012 (= lt!735462 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!727 thiss!23328 rules!3198 lt!735469 separatorToken!354))))

(declare-fun charsOf!2440 (Token!7320) BalanceConc!14330)

(assert (=> b!1918012 (= lt!735469 (list!8816 (charsOf!2440 separatorToken!354)))))

(declare-fun lt!735466 () Unit!36112)

(declare-fun lemmaEqSameImage!592 (TokenValueInjection!7624 BalanceConc!14330 BalanceConc!14330) Unit!36112)

(declare-fun seqFromList!2756 (List!21805) BalanceConc!14330)

(assert (=> b!1918012 (= lt!735466 (lemmaEqSameImage!592 (transformation!3884 (rule!6087 (h!27125 tokens!598))) lt!735471 (seqFromList!2756 (originalCharacters!4691 (h!27125 tokens!598)))))))

(declare-fun lt!735467 () Unit!36112)

(declare-fun lemmaSemiInverse!863 (TokenValueInjection!7624 BalanceConc!14330) Unit!36112)

(assert (=> b!1918012 (= lt!735467 (lemmaSemiInverse!863 (transformation!3884 (rule!6087 (h!27125 tokens!598))) lt!735471))))

(assert (=> b!1918012 (= lt!735471 (charsOf!2440 (h!27125 tokens!598)))))

(declare-fun b!1918013 () Bool)

(declare-fun res!857489 () Bool)

(assert (=> b!1918013 (=> (not res!857489) (not e!1225595))))

(declare-fun isEmpty!13374 (List!21807) Bool)

(assert (=> b!1918013 (= res!857489 (not (isEmpty!13374 rules!3198)))))

(assert (=> b!1918014 (= e!1225592 (and tp!547538 tp!547535))))

(declare-fun b!1918015 () Bool)

(declare-fun e!1225588 () Bool)

(declare-fun lt!735465 () Rule!7568)

(assert (=> b!1918015 (= e!1225588 (= (rule!6087 (h!27125 tokens!598)) lt!735465))))

(declare-fun b!1918016 () Bool)

(assert (=> b!1918016 (= e!1225600 e!1225588)))

(declare-fun res!857500 () Bool)

(assert (=> b!1918016 (=> (not res!857500) (not e!1225588))))

(declare-fun matchR!2595 (Regex!5309 List!21805) Bool)

(assert (=> b!1918016 (= res!857500 (matchR!2595 (regex!3884 lt!735465) lt!735463))))

(declare-fun get!6823 (Option!4474) Rule!7568)

(assert (=> b!1918016 (= lt!735465 (get!6823 lt!735474))))

(declare-fun e!1225599 () Bool)

(assert (=> b!1918017 (= e!1225599 (and tp!547533 tp!547530))))

(declare-fun b!1918018 () Bool)

(declare-fun res!857502 () Bool)

(assert (=> b!1918018 (=> (not res!857502) (not e!1225595))))

(declare-fun sepAndNonSepRulesDisjointChars!982 (List!21807 List!21807) Bool)

(assert (=> b!1918018 (= res!857502 (sepAndNonSepRulesDisjointChars!982 rules!3198 rules!3198))))

(declare-fun b!1918019 () Bool)

(declare-fun res!857495 () Bool)

(assert (=> b!1918019 (=> (not res!857495) (not e!1225595))))

(declare-fun rulesProduceIndividualToken!1669 (LexerInterface!3497 List!21807 Token!7320) Bool)

(assert (=> b!1918019 (= res!857495 (rulesProduceIndividualToken!1669 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1918006 () Bool)

(declare-fun e!1225590 () Bool)

(declare-fun tp!547541 () Bool)

(assert (=> b!1918006 (= e!1225590 (and tp!547541 (inv!28809 (tag!4324 (rule!6087 (h!27125 tokens!598)))) (inv!28813 (transformation!3884 (rule!6087 (h!27125 tokens!598)))) e!1225599))))

(declare-fun res!857499 () Bool)

(assert (=> start!192244 (=> (not res!857499) (not e!1225595))))

(get-info :version)

(assert (=> start!192244 (= res!857499 ((_ is Lexer!3495) thiss!23328))))

(assert (=> start!192244 e!1225595))

(assert (=> start!192244 true))

(declare-fun e!1225606 () Bool)

(assert (=> start!192244 e!1225606))

(assert (=> start!192244 e!1225605))

(declare-fun e!1225598 () Bool)

(assert (=> start!192244 (and (inv!28812 separatorToken!354) e!1225598)))

(declare-fun b!1918020 () Bool)

(declare-fun res!857493 () Bool)

(assert (=> b!1918020 (=> (not res!857493) (not e!1225595))))

(declare-fun rulesProduceEachTokenIndividuallyList!1228 (LexerInterface!3497 List!21807 List!21806) Bool)

(assert (=> b!1918020 (= res!857493 (rulesProduceEachTokenIndividuallyList!1228 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1918021 () Bool)

(declare-fun res!857497 () Bool)

(assert (=> b!1918021 (=> (not res!857497) (not e!1225595))))

(declare-fun lambda!74855 () Int)

(declare-fun forall!4580 (List!21806 Int) Bool)

(assert (=> b!1918021 (= res!857497 (forall!4580 tokens!598 lambda!74855))))

(declare-fun b!1918022 () Bool)

(declare-fun e!1225601 () Bool)

(assert (=> b!1918022 (= e!1225604 e!1225601)))

(declare-fun res!857491 () Bool)

(assert (=> b!1918022 (=> (not res!857491) (not e!1225601))))

(declare-fun lt!735464 () Rule!7568)

(assert (=> b!1918022 (= res!857491 (matchR!2595 (regex!3884 lt!735464) lt!735469))))

(assert (=> b!1918022 (= lt!735464 (get!6823 lt!735473))))

(assert (=> b!1918023 (= e!1225602 (and tp!547539 tp!547532))))

(declare-fun b!1918024 () Bool)

(assert (=> b!1918024 (= e!1225601 (= (rule!6087 separatorToken!354) lt!735464))))

(declare-fun b!1918025 () Bool)

(declare-fun tp!547542 () Bool)

(assert (=> b!1918025 (= e!1225606 (and e!1225593 tp!547542))))

(declare-fun b!1918026 () Bool)

(declare-fun res!857490 () Bool)

(assert (=> b!1918026 (=> (not res!857490) (not e!1225595))))

(assert (=> b!1918026 (= res!857490 ((_ is Cons!21724) tokens!598))))

(declare-fun tp!547531 () Bool)

(declare-fun b!1918027 () Bool)

(declare-fun inv!21 (TokenValue!4020) Bool)

(assert (=> b!1918027 (= e!1225598 (and (inv!21 (value!122285 separatorToken!354)) e!1225587 tp!547531))))

(declare-fun tp!547537 () Bool)

(declare-fun b!1918028 () Bool)

(assert (=> b!1918028 (= e!1225597 (and (inv!21 (value!122285 (h!27125 tokens!598))) e!1225590 tp!547537))))

(assert (= (and start!192244 res!857499) b!1918013))

(assert (= (and b!1918013 res!857489) b!1918011))

(assert (= (and b!1918011 res!857501) b!1918020))

(assert (= (and b!1918020 res!857493) b!1918019))

(assert (= (and b!1918019 res!857495) b!1918010))

(assert (= (and b!1918010 res!857496) b!1918021))

(assert (= (and b!1918021 res!857497) b!1918018))

(assert (= (and b!1918018 res!857502) b!1918026))

(assert (= (and b!1918026 res!857490) b!1918012))

(assert (= (and b!1918012 res!857492) b!1918022))

(assert (= (and b!1918022 res!857491) b!1918024))

(assert (= (and b!1918012 res!857498) b!1918005))

(assert (= (and b!1918012 res!857494) b!1918016))

(assert (= (and b!1918016 res!857500) b!1918015))

(assert (= b!1918009 b!1918023))

(assert (= b!1918025 b!1918009))

(assert (= (and start!192244 ((_ is Cons!21725) rules!3198)) b!1918025))

(assert (= b!1918006 b!1918017))

(assert (= b!1918028 b!1918006))

(assert (= b!1918007 b!1918028))

(assert (= (and start!192244 ((_ is Cons!21724) tokens!598)) b!1918007))

(assert (= b!1918008 b!1918014))

(assert (= b!1918027 b!1918008))

(assert (= start!192244 b!1918027))

(declare-fun m!2353377 () Bool)

(assert (=> b!1918022 m!2353377))

(declare-fun m!2353379 () Bool)

(assert (=> b!1918022 m!2353379))

(declare-fun m!2353381 () Bool)

(assert (=> b!1918009 m!2353381))

(declare-fun m!2353383 () Bool)

(assert (=> b!1918009 m!2353383))

(declare-fun m!2353385 () Bool)

(assert (=> b!1918008 m!2353385))

(declare-fun m!2353387 () Bool)

(assert (=> b!1918008 m!2353387))

(declare-fun m!2353389 () Bool)

(assert (=> b!1918027 m!2353389))

(declare-fun m!2353391 () Bool)

(assert (=> b!1918012 m!2353391))

(declare-fun m!2353393 () Bool)

(assert (=> b!1918012 m!2353393))

(declare-fun m!2353395 () Bool)

(assert (=> b!1918012 m!2353395))

(declare-fun m!2353397 () Bool)

(assert (=> b!1918012 m!2353397))

(declare-fun m!2353399 () Bool)

(assert (=> b!1918012 m!2353399))

(declare-fun m!2353401 () Bool)

(assert (=> b!1918012 m!2353401))

(declare-fun m!2353403 () Bool)

(assert (=> b!1918012 m!2353403))

(declare-fun m!2353405 () Bool)

(assert (=> b!1918012 m!2353405))

(declare-fun m!2353407 () Bool)

(assert (=> b!1918012 m!2353407))

(declare-fun m!2353409 () Bool)

(assert (=> b!1918012 m!2353409))

(declare-fun m!2353411 () Bool)

(assert (=> b!1918012 m!2353411))

(declare-fun m!2353413 () Bool)

(assert (=> b!1918012 m!2353413))

(assert (=> b!1918012 m!2353397))

(declare-fun m!2353415 () Bool)

(assert (=> b!1918012 m!2353415))

(declare-fun m!2353417 () Bool)

(assert (=> b!1918012 m!2353417))

(assert (=> b!1918012 m!2353401))

(assert (=> b!1918012 m!2353415))

(declare-fun m!2353419 () Bool)

(assert (=> b!1918012 m!2353419))

(declare-fun m!2353421 () Bool)

(assert (=> b!1918012 m!2353421))

(declare-fun m!2353423 () Bool)

(assert (=> b!1918012 m!2353423))

(assert (=> b!1918012 m!2353405))

(declare-fun m!2353425 () Bool)

(assert (=> b!1918012 m!2353425))

(declare-fun m!2353427 () Bool)

(assert (=> b!1918021 m!2353427))

(declare-fun m!2353429 () Bool)

(assert (=> b!1918019 m!2353429))

(declare-fun m!2353431 () Bool)

(assert (=> b!1918028 m!2353431))

(declare-fun m!2353433 () Bool)

(assert (=> b!1918006 m!2353433))

(declare-fun m!2353435 () Bool)

(assert (=> b!1918006 m!2353435))

(declare-fun m!2353437 () Bool)

(assert (=> b!1918007 m!2353437))

(declare-fun m!2353439 () Bool)

(assert (=> b!1918016 m!2353439))

(declare-fun m!2353441 () Bool)

(assert (=> b!1918016 m!2353441))

(declare-fun m!2353443 () Bool)

(assert (=> b!1918005 m!2353443))

(declare-fun m!2353445 () Bool)

(assert (=> start!192244 m!2353445))

(declare-fun m!2353447 () Bool)

(assert (=> b!1918020 m!2353447))

(declare-fun m!2353449 () Bool)

(assert (=> b!1918018 m!2353449))

(declare-fun m!2353451 () Bool)

(assert (=> b!1918011 m!2353451))

(declare-fun m!2353453 () Bool)

(assert (=> b!1918013 m!2353453))

(check-sat b_and!149717 b_and!149713 (not b!1918025) (not b!1918022) (not b_next!55215) (not b!1918012) (not b_next!55213) (not b!1918011) (not b!1918009) (not start!192244) b_and!149711 (not b!1918016) (not b!1918020) (not b!1918028) (not b!1918006) (not b_next!55219) (not b!1918008) b_and!149719 (not b!1918021) (not b_next!55209) (not b!1918013) b_and!149721 (not b_next!55211) (not b_next!55217) (not b!1918027) (not b!1918019) b_and!149715 (not b!1918007) (not b!1918018) (not b!1918005))
(check-sat b_and!149711 b_and!149717 b_and!149713 (not b_next!55219) b_and!149719 (not b_next!55209) (not b_next!55215) (not b_next!55217) (not b_next!55213) b_and!149715 b_and!149721 (not b_next!55211))
