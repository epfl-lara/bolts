; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51308 () Bool)

(assert start!51308)

(declare-fun b!553562 () Bool)

(declare-fun b_free!15521 () Bool)

(declare-fun b_next!15537 () Bool)

(assert (=> b!553562 (= b_free!15521 (not b_next!15537))))

(declare-fun tp!175104 () Bool)

(declare-fun b_and!54075 () Bool)

(assert (=> b!553562 (= tp!175104 b_and!54075)))

(declare-fun b_free!15523 () Bool)

(declare-fun b_next!15539 () Bool)

(assert (=> b!553562 (= b_free!15523 (not b_next!15539))))

(declare-fun tp!175105 () Bool)

(declare-fun b_and!54077 () Bool)

(assert (=> b!553562 (= tp!175105 b_and!54077)))

(declare-fun b!553561 () Bool)

(declare-fun b_free!15525 () Bool)

(declare-fun b_next!15541 () Bool)

(assert (=> b!553561 (= b_free!15525 (not b_next!15541))))

(declare-fun tp!175101 () Bool)

(declare-fun b_and!54079 () Bool)

(assert (=> b!553561 (= tp!175101 b_and!54079)))

(declare-fun b_free!15527 () Bool)

(declare-fun b_next!15543 () Bool)

(assert (=> b!553561 (= b_free!15527 (not b_next!15543))))

(declare-fun tp!175102 () Bool)

(declare-fun b_and!54081 () Bool)

(assert (=> b!553561 (= tp!175102 b_and!54081)))

(declare-datatypes ((C!3688 0))(
  ( (C!3689 (val!2070 Int)) )
))
(declare-datatypes ((Regex!1383 0))(
  ( (ElementMatch!1383 (c!103956 C!3688)) (Concat!2456 (regOne!3278 Regex!1383) (regTwo!3278 Regex!1383)) (EmptyExpr!1383) (Star!1383 (reg!1712 Regex!1383)) (EmptyLang!1383) (Union!1383 (regOne!3279 Regex!1383) (regTwo!3279 Regex!1383)) )
))
(declare-datatypes ((List!5507 0))(
  ( (Nil!5497) (Cons!5497 (h!10898 (_ BitVec 16)) (t!75278 List!5507)) )
))
(declare-datatypes ((List!5508 0))(
  ( (Nil!5498) (Cons!5498 (h!10899 C!3688) (t!75279 List!5508)) )
))
(declare-datatypes ((IArray!3533 0))(
  ( (IArray!3534 (innerList!1824 List!5508)) )
))
(declare-datatypes ((Conc!1766 0))(
  ( (Node!1766 (left!4531 Conc!1766) (right!4861 Conc!1766) (csize!3762 Int) (cheight!1977 Int)) (Leaf!2798 (xs!4403 IArray!3533) (csize!3763 Int)) (Empty!1766) )
))
(declare-datatypes ((BalanceConc!3540 0))(
  ( (BalanceConc!3541 (c!103957 Conc!1766)) )
))
(declare-datatypes ((TokenValue!1073 0))(
  ( (FloatLiteralValue!2146 (text!7956 List!5507)) (TokenValueExt!1072 (__x!4044 Int)) (Broken!5365 (value!34737 List!5507)) (Object!1082) (End!1073) (Def!1073) (Underscore!1073) (Match!1073) (Else!1073) (Error!1073) (Case!1073) (If!1073) (Extends!1073) (Abstract!1073) (Class!1073) (Val!1073) (DelimiterValue!2146 (del!1133 List!5507)) (KeywordValue!1079 (value!34738 List!5507)) (CommentValue!2146 (value!34739 List!5507)) (WhitespaceValue!2146 (value!34740 List!5507)) (IndentationValue!1073 (value!34741 List!5507)) (String!7108) (Int32!1073) (Broken!5366 (value!34742 List!5507)) (Boolean!1074) (Unit!9740) (OperatorValue!1076 (op!1133 List!5507)) (IdentifierValue!2146 (value!34743 List!5507)) (IdentifierValue!2147 (value!34744 List!5507)) (WhitespaceValue!2147 (value!34745 List!5507)) (True!2146) (False!2146) (Broken!5367 (value!34746 List!5507)) (Broken!5368 (value!34747 List!5507)) (True!2147) (RightBrace!1073) (RightBracket!1073) (Colon!1073) (Null!1073) (Comma!1073) (LeftBracket!1073) (False!2147) (LeftBrace!1073) (ImaginaryLiteralValue!1073 (text!7957 List!5507)) (StringLiteralValue!3219 (value!34748 List!5507)) (EOFValue!1073 (value!34749 List!5507)) (IdentValue!1073 (value!34750 List!5507)) (DelimiterValue!2147 (value!34751 List!5507)) (DedentValue!1073 (value!34752 List!5507)) (NewLineValue!1073 (value!34753 List!5507)) (IntegerValue!3219 (value!34754 (_ BitVec 32)) (text!7958 List!5507)) (IntegerValue!3220 (value!34755 Int) (text!7959 List!5507)) (Times!1073) (Or!1073) (Equal!1073) (Minus!1073) (Broken!5369 (value!34756 List!5507)) (And!1073) (Div!1073) (LessEqual!1073) (Mod!1073) (Concat!2457) (Not!1073) (Plus!1073) (SpaceValue!1073 (value!34757 List!5507)) (IntegerValue!3221 (value!34758 Int) (text!7960 List!5507)) (StringLiteralValue!3220 (text!7961 List!5507)) (FloatLiteralValue!2147 (text!7962 List!5507)) (BytesLiteralValue!1073 (value!34759 List!5507)) (CommentValue!2147 (value!34760 List!5507)) (StringLiteralValue!3221 (value!34761 List!5507)) (ErrorTokenValue!1073 (msg!1134 List!5507)) )
))
(declare-datatypes ((String!7109 0))(
  ( (String!7110 (value!34762 String)) )
))
(declare-datatypes ((TokenValueInjection!1914 0))(
  ( (TokenValueInjection!1915 (toValue!1900 Int) (toChars!1759 Int)) )
))
(declare-datatypes ((Rule!1898 0))(
  ( (Rule!1899 (regex!1049 Regex!1383) (tag!1311 String!7109) (isSeparator!1049 Bool) (transformation!1049 TokenValueInjection!1914)) )
))
(declare-datatypes ((Token!1834 0))(
  ( (Token!1835 (value!34763 TokenValue!1073) (rule!1777 Rule!1898) (size!4386 Int) (originalCharacters!1088 List!5508)) )
))
(declare-datatypes ((tuple2!6508 0))(
  ( (tuple2!6509 (_1!3518 Token!1834) (_2!3518 List!5508)) )
))
(declare-datatypes ((Option!1399 0))(
  ( (None!1398) (Some!1398 (v!16227 tuple2!6508)) )
))
(declare-fun lt!233459 () Option!1399)

(declare-fun lt!233453 () TokenValue!1073)

(declare-fun lt!233443 () List!5508)

(declare-fun lt!233464 () Int)

(declare-fun b!553543 () Bool)

(declare-fun e!334925 () Bool)

(declare-fun lt!233447 () List!5508)

(assert (=> b!553543 (= e!334925 (and (= (size!4386 (_1!3518 (v!16227 lt!233459))) lt!233464) (= (originalCharacters!1088 (_1!3518 (v!16227 lt!233459))) lt!233443) (= (v!16227 lt!233459) (tuple2!6509 (Token!1835 lt!233453 (rule!1777 (_1!3518 (v!16227 lt!233459))) lt!233464 lt!233443) lt!233447))))))

(declare-fun b!553544 () Bool)

(declare-fun res!237424 () Bool)

(declare-fun e!334919 () Bool)

(assert (=> b!553544 (=> (not res!237424) (not e!334919))))

(declare-datatypes ((List!5509 0))(
  ( (Nil!5499) (Cons!5499 (h!10900 Rule!1898) (t!75280 List!5509)) )
))
(declare-fun rules!3103 () List!5509)

(declare-fun isEmpty!3966 (List!5509) Bool)

(assert (=> b!553544 (= res!237424 (not (isEmpty!3966 rules!3103)))))

(declare-fun b!553545 () Bool)

(declare-datatypes ((Unit!9741 0))(
  ( (Unit!9742) )
))
(declare-fun e!334920 () Unit!9741)

(declare-fun Unit!9743 () Unit!9741)

(assert (=> b!553545 (= e!334920 Unit!9743)))

(assert (=> b!553545 false))

(declare-fun b!553546 () Bool)

(declare-fun e!334922 () Bool)

(declare-fun e!334931 () Bool)

(assert (=> b!553546 (= e!334922 e!334931)))

(declare-fun res!237431 () Bool)

(assert (=> b!553546 (=> (not res!237431) (not e!334931))))

(declare-fun lt!233445 () List!5508)

(declare-fun lt!233455 () List!5508)

(assert (=> b!553546 (= res!237431 (= lt!233445 lt!233455))))

(declare-fun lt!233448 () List!5508)

(declare-fun suffix!1342 () List!5508)

(declare-fun ++!1537 (List!5508 List!5508) List!5508)

(assert (=> b!553546 (= lt!233445 (++!1537 lt!233448 suffix!1342))))

(declare-fun b!553547 () Bool)

(declare-fun res!237428 () Bool)

(assert (=> b!553547 (=> (not res!237428) (not e!334919))))

(declare-fun input!2705 () List!5508)

(declare-fun isEmpty!3967 (List!5508) Bool)

(assert (=> b!553547 (= res!237428 (not (isEmpty!3967 input!2705)))))

(declare-fun e!334918 () Bool)

(declare-fun e!334924 () Bool)

(declare-fun tp!175097 () Bool)

(declare-fun b!553548 () Bool)

(declare-fun inv!6898 (String!7109) Bool)

(declare-fun inv!6901 (TokenValueInjection!1914) Bool)

(assert (=> b!553548 (= e!334918 (and tp!175097 (inv!6898 (tag!1311 (h!10900 rules!3103))) (inv!6901 (transformation!1049 (h!10900 rules!3103))) e!334924))))

(declare-fun b!553549 () Bool)

(declare-fun e!334926 () Bool)

(declare-fun e!334936 () Bool)

(assert (=> b!553549 (= e!334926 e!334936)))

(declare-fun res!237432 () Bool)

(assert (=> b!553549 (=> (not res!237432) (not e!334936))))

(declare-fun lt!233449 () Option!1399)

(declare-fun isDefined!1211 (Option!1399) Bool)

(assert (=> b!553549 (= res!237432 (isDefined!1211 lt!233449))))

(declare-datatypes ((LexerInterface!935 0))(
  ( (LexerInterfaceExt!932 (__x!4045 Int)) (Lexer!933) )
))
(declare-fun thiss!22590 () LexerInterface!935)

(declare-fun maxPrefix!633 (LexerInterface!935 List!5509 List!5508) Option!1399)

(assert (=> b!553549 (= lt!233449 (maxPrefix!633 thiss!22590 rules!3103 lt!233455))))

(assert (=> b!553549 (= lt!233455 (++!1537 input!2705 suffix!1342))))

(declare-fun b!553550 () Bool)

(declare-fun res!237433 () Bool)

(assert (=> b!553550 (=> (not res!237433) (not e!334919))))

(declare-fun rulesInvariant!898 (LexerInterface!935 List!5509) Bool)

(assert (=> b!553550 (= res!237433 (rulesInvariant!898 thiss!22590 rules!3103))))

(declare-fun b!553551 () Bool)

(declare-fun e!334932 () Bool)

(declare-fun tp_is_empty!3121 () Bool)

(declare-fun tp!175098 () Bool)

(assert (=> b!553551 (= e!334932 (and tp_is_empty!3121 tp!175098))))

(declare-fun b!553552 () Bool)

(assert (=> b!553552 (= e!334931 (not true))))

(declare-fun isPrefix!683 (List!5508 List!5508) Bool)

(assert (=> b!553552 (isPrefix!683 lt!233448 lt!233445)))

(declare-fun lt!233444 () Unit!9741)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!530 (List!5508 List!5508) Unit!9741)

(assert (=> b!553552 (= lt!233444 (lemmaConcatTwoListThenFirstIsPrefix!530 lt!233448 suffix!1342))))

(assert (=> b!553552 (isPrefix!683 input!2705 lt!233455)))

(declare-fun lt!233456 () Unit!9741)

(assert (=> b!553552 (= lt!233456 (lemmaConcatTwoListThenFirstIsPrefix!530 input!2705 suffix!1342))))

(assert (=> b!553552 e!334925))

(declare-fun res!237425 () Bool)

(assert (=> b!553552 (=> (not res!237425) (not e!334925))))

(assert (=> b!553552 (= res!237425 (= (value!34763 (_1!3518 (v!16227 lt!233459))) lt!233453))))

(declare-fun apply!1314 (TokenValueInjection!1914 BalanceConc!3540) TokenValue!1073)

(declare-fun seqFromList!1237 (List!5508) BalanceConc!3540)

(assert (=> b!553552 (= lt!233453 (apply!1314 (transformation!1049 (rule!1777 (_1!3518 (v!16227 lt!233459)))) (seqFromList!1237 lt!233443)))))

(declare-fun lt!233465 () Unit!9741)

(declare-fun token!491 () Token!1834)

(declare-fun lemmaInv!185 (TokenValueInjection!1914) Unit!9741)

(assert (=> b!553552 (= lt!233465 (lemmaInv!185 (transformation!1049 (rule!1777 token!491))))))

(declare-fun lt!233461 () Unit!9741)

(assert (=> b!553552 (= lt!233461 (lemmaInv!185 (transformation!1049 (rule!1777 (_1!3518 (v!16227 lt!233459))))))))

(declare-fun ruleValid!259 (LexerInterface!935 Rule!1898) Bool)

(assert (=> b!553552 (ruleValid!259 thiss!22590 (rule!1777 token!491))))

(declare-fun lt!233451 () Unit!9741)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!116 (LexerInterface!935 Rule!1898 List!5509) Unit!9741)

(assert (=> b!553552 (= lt!233451 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!116 thiss!22590 (rule!1777 token!491) rules!3103))))

(assert (=> b!553552 (ruleValid!259 thiss!22590 (rule!1777 (_1!3518 (v!16227 lt!233459))))))

(declare-fun lt!233462 () Unit!9741)

(assert (=> b!553552 (= lt!233462 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!116 thiss!22590 (rule!1777 (_1!3518 (v!16227 lt!233459))) rules!3103))))

(assert (=> b!553552 (isPrefix!683 input!2705 input!2705)))

(declare-fun lt!233450 () Unit!9741)

(declare-fun lemmaIsPrefixRefl!421 (List!5508 List!5508) Unit!9741)

(assert (=> b!553552 (= lt!233450 (lemmaIsPrefixRefl!421 input!2705 input!2705))))

(assert (=> b!553552 (= (_2!3518 (v!16227 lt!233459)) lt!233447)))

(declare-fun lt!233452 () Unit!9741)

(declare-fun lemmaSamePrefixThenSameSuffix!406 (List!5508 List!5508 List!5508 List!5508 List!5508) Unit!9741)

(assert (=> b!553552 (= lt!233452 (lemmaSamePrefixThenSameSuffix!406 lt!233443 (_2!3518 (v!16227 lt!233459)) lt!233443 lt!233447 input!2705))))

(declare-fun getSuffix!202 (List!5508 List!5508) List!5508)

(assert (=> b!553552 (= lt!233447 (getSuffix!202 input!2705 lt!233443))))

(assert (=> b!553552 (isPrefix!683 lt!233443 (++!1537 lt!233443 (_2!3518 (v!16227 lt!233459))))))

(declare-fun lt!233454 () Unit!9741)

(assert (=> b!553552 (= lt!233454 (lemmaConcatTwoListThenFirstIsPrefix!530 lt!233443 (_2!3518 (v!16227 lt!233459))))))

(declare-fun lt!233458 () Unit!9741)

(declare-fun lemmaCharactersSize!116 (Token!1834) Unit!9741)

(assert (=> b!553552 (= lt!233458 (lemmaCharactersSize!116 token!491))))

(declare-fun lt!233460 () Unit!9741)

(assert (=> b!553552 (= lt!233460 (lemmaCharactersSize!116 (_1!3518 (v!16227 lt!233459))))))

(declare-fun lt!233457 () Unit!9741)

(assert (=> b!553552 (= lt!233457 e!334920)))

(declare-fun c!103955 () Bool)

(declare-fun size!4387 (List!5508) Int)

(assert (=> b!553552 (= c!103955 (> lt!233464 (size!4387 lt!233448)))))

(assert (=> b!553552 (= lt!233464 (size!4387 lt!233443))))

(declare-fun list!2279 (BalanceConc!3540) List!5508)

(declare-fun charsOf!678 (Token!1834) BalanceConc!3540)

(assert (=> b!553552 (= lt!233443 (list!2279 (charsOf!678 (_1!3518 (v!16227 lt!233459)))))))

(assert (=> b!553552 (= lt!233459 (Some!1398 (v!16227 lt!233459)))))

(declare-fun lt!233463 () Unit!9741)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!126 (List!5508 List!5508 List!5508 List!5508) Unit!9741)

(assert (=> b!553552 (= lt!233463 (lemmaConcatSameAndSameSizesThenSameLists!126 lt!233448 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!553553 () Bool)

(declare-fun e!334929 () Bool)

(declare-fun tp!175099 () Bool)

(assert (=> b!553553 (= e!334929 (and tp_is_empty!3121 tp!175099))))

(declare-fun b!553554 () Bool)

(declare-fun res!237426 () Bool)

(assert (=> b!553554 (=> (not res!237426) (not e!334925))))

(assert (=> b!553554 (= res!237426 (= (size!4386 (_1!3518 (v!16227 lt!233459))) (size!4387 (originalCharacters!1088 (_1!3518 (v!16227 lt!233459))))))))

(declare-fun e!334935 () Bool)

(declare-fun e!334930 () Bool)

(declare-fun b!553555 () Bool)

(declare-fun tp!175100 () Bool)

(assert (=> b!553555 (= e!334930 (and tp!175100 (inv!6898 (tag!1311 (rule!1777 token!491))) (inv!6901 (transformation!1049 (rule!1777 token!491))) e!334935))))

(declare-fun e!334933 () Bool)

(declare-fun b!553556 () Bool)

(declare-fun tp!175106 () Bool)

(declare-fun inv!21 (TokenValue!1073) Bool)

(assert (=> b!553556 (= e!334933 (and (inv!21 (value!34763 token!491)) e!334930 tp!175106))))

(declare-fun b!553557 () Bool)

(declare-fun e!334921 () Bool)

(declare-fun tp!175103 () Bool)

(assert (=> b!553557 (= e!334921 (and e!334918 tp!175103))))

(declare-fun res!237429 () Bool)

(assert (=> start!51308 (=> (not res!237429) (not e!334919))))

(get-info :version)

(assert (=> start!51308 (= res!237429 ((_ is Lexer!933) thiss!22590))))

(assert (=> start!51308 e!334919))

(assert (=> start!51308 e!334932))

(assert (=> start!51308 e!334921))

(declare-fun inv!6902 (Token!1834) Bool)

(assert (=> start!51308 (and (inv!6902 token!491) e!334933)))

(assert (=> start!51308 true))

(assert (=> start!51308 e!334929))

(declare-fun b!553558 () Bool)

(declare-fun e!334934 () Bool)

(assert (=> b!553558 (= e!334936 e!334934)))

(declare-fun res!237430 () Bool)

(assert (=> b!553558 (=> (not res!237430) (not e!334934))))

(declare-fun lt!233446 () tuple2!6508)

(assert (=> b!553558 (= res!237430 (and (= (_1!3518 lt!233446) token!491) (= (_2!3518 lt!233446) suffix!1342)))))

(declare-fun get!2088 (Option!1399) tuple2!6508)

(assert (=> b!553558 (= lt!233446 (get!2088 lt!233449))))

(declare-fun b!553559 () Bool)

(declare-fun Unit!9744 () Unit!9741)

(assert (=> b!553559 (= e!334920 Unit!9744)))

(declare-fun b!553560 () Bool)

(assert (=> b!553560 (= e!334934 e!334922)))

(declare-fun res!237434 () Bool)

(assert (=> b!553560 (=> (not res!237434) (not e!334922))))

(assert (=> b!553560 (= res!237434 ((_ is Some!1398) lt!233459))))

(assert (=> b!553560 (= lt!233459 (maxPrefix!633 thiss!22590 rules!3103 input!2705))))

(assert (=> b!553561 (= e!334924 (and tp!175101 tp!175102))))

(assert (=> b!553562 (= e!334935 (and tp!175104 tp!175105))))

(declare-fun b!553563 () Bool)

(assert (=> b!553563 (= e!334919 e!334926)))

(declare-fun res!237427 () Bool)

(assert (=> b!553563 (=> (not res!237427) (not e!334926))))

(assert (=> b!553563 (= res!237427 (= lt!233448 input!2705))))

(assert (=> b!553563 (= lt!233448 (list!2279 (charsOf!678 token!491)))))

(assert (= (and start!51308 res!237429) b!553544))

(assert (= (and b!553544 res!237424) b!553550))

(assert (= (and b!553550 res!237433) b!553547))

(assert (= (and b!553547 res!237428) b!553563))

(assert (= (and b!553563 res!237427) b!553549))

(assert (= (and b!553549 res!237432) b!553558))

(assert (= (and b!553558 res!237430) b!553560))

(assert (= (and b!553560 res!237434) b!553546))

(assert (= (and b!553546 res!237431) b!553552))

(assert (= (and b!553552 c!103955) b!553545))

(assert (= (and b!553552 (not c!103955)) b!553559))

(assert (= (and b!553552 res!237425) b!553554))

(assert (= (and b!553554 res!237426) b!553543))

(assert (= (and start!51308 ((_ is Cons!5498) suffix!1342)) b!553551))

(assert (= b!553548 b!553561))

(assert (= b!553557 b!553548))

(assert (= (and start!51308 ((_ is Cons!5499) rules!3103)) b!553557))

(assert (= b!553555 b!553562))

(assert (= b!553556 b!553555))

(assert (= start!51308 b!553556))

(assert (= (and start!51308 ((_ is Cons!5498) input!2705)) b!553553))

(declare-fun m!803255 () Bool)

(assert (=> b!553550 m!803255))

(declare-fun m!803257 () Bool)

(assert (=> b!553554 m!803257))

(declare-fun m!803259 () Bool)

(assert (=> b!553547 m!803259))

(declare-fun m!803261 () Bool)

(assert (=> b!553552 m!803261))

(declare-fun m!803263 () Bool)

(assert (=> b!553552 m!803263))

(declare-fun m!803265 () Bool)

(assert (=> b!553552 m!803265))

(declare-fun m!803267 () Bool)

(assert (=> b!553552 m!803267))

(declare-fun m!803269 () Bool)

(assert (=> b!553552 m!803269))

(declare-fun m!803271 () Bool)

(assert (=> b!553552 m!803271))

(declare-fun m!803273 () Bool)

(assert (=> b!553552 m!803273))

(declare-fun m!803275 () Bool)

(assert (=> b!553552 m!803275))

(declare-fun m!803277 () Bool)

(assert (=> b!553552 m!803277))

(assert (=> b!553552 m!803271))

(declare-fun m!803279 () Bool)

(assert (=> b!553552 m!803279))

(declare-fun m!803281 () Bool)

(assert (=> b!553552 m!803281))

(declare-fun m!803283 () Bool)

(assert (=> b!553552 m!803283))

(declare-fun m!803285 () Bool)

(assert (=> b!553552 m!803285))

(declare-fun m!803287 () Bool)

(assert (=> b!553552 m!803287))

(declare-fun m!803289 () Bool)

(assert (=> b!553552 m!803289))

(declare-fun m!803291 () Bool)

(assert (=> b!553552 m!803291))

(declare-fun m!803293 () Bool)

(assert (=> b!553552 m!803293))

(declare-fun m!803295 () Bool)

(assert (=> b!553552 m!803295))

(declare-fun m!803297 () Bool)

(assert (=> b!553552 m!803297))

(declare-fun m!803299 () Bool)

(assert (=> b!553552 m!803299))

(declare-fun m!803301 () Bool)

(assert (=> b!553552 m!803301))

(declare-fun m!803303 () Bool)

(assert (=> b!553552 m!803303))

(assert (=> b!553552 m!803263))

(assert (=> b!553552 m!803303))

(declare-fun m!803305 () Bool)

(assert (=> b!553552 m!803305))

(declare-fun m!803307 () Bool)

(assert (=> b!553552 m!803307))

(declare-fun m!803309 () Bool)

(assert (=> b!553552 m!803309))

(declare-fun m!803311 () Bool)

(assert (=> b!553552 m!803311))

(declare-fun m!803313 () Bool)

(assert (=> b!553558 m!803313))

(declare-fun m!803315 () Bool)

(assert (=> b!553560 m!803315))

(declare-fun m!803317 () Bool)

(assert (=> b!553549 m!803317))

(declare-fun m!803319 () Bool)

(assert (=> b!553549 m!803319))

(declare-fun m!803321 () Bool)

(assert (=> b!553549 m!803321))

(declare-fun m!803323 () Bool)

(assert (=> b!553555 m!803323))

(declare-fun m!803325 () Bool)

(assert (=> b!553555 m!803325))

(declare-fun m!803327 () Bool)

(assert (=> start!51308 m!803327))

(declare-fun m!803329 () Bool)

(assert (=> b!553556 m!803329))

(declare-fun m!803331 () Bool)

(assert (=> b!553548 m!803331))

(declare-fun m!803333 () Bool)

(assert (=> b!553548 m!803333))

(declare-fun m!803335 () Bool)

(assert (=> b!553544 m!803335))

(declare-fun m!803337 () Bool)

(assert (=> b!553563 m!803337))

(assert (=> b!553563 m!803337))

(declare-fun m!803339 () Bool)

(assert (=> b!553563 m!803339))

(declare-fun m!803341 () Bool)

(assert (=> b!553546 m!803341))

(check-sat (not b!553544) (not b!553557) (not b!553547) (not b!553552) (not b_next!15537) (not b!553546) (not b_next!15541) (not b!553554) (not b!553563) b_and!54075 (not b!553558) (not b_next!15539) b_and!54079 (not b!553548) tp_is_empty!3121 (not b!553550) b_and!54077 (not b_next!15543) b_and!54081 (not b!553555) (not b!553551) (not b!553560) (not b!553549) (not b!553556) (not b!553553) (not start!51308))
(check-sat b_and!54075 (not b_next!15537) (not b_next!15541) b_and!54081 (not b_next!15539) b_and!54079 b_and!54077 (not b_next!15543))
