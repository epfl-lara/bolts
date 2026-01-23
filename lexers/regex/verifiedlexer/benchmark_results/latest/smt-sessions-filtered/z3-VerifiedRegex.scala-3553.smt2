; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205952 () Bool)

(assert start!205952)

(declare-fun b!2106512 () Bool)

(declare-fun b_free!60569 () Bool)

(declare-fun b_next!61273 () Bool)

(assert (=> b!2106512 (= b_free!60569 (not b_next!61273))))

(declare-fun tp!639014 () Bool)

(declare-fun b_and!170131 () Bool)

(assert (=> b!2106512 (= tp!639014 b_and!170131)))

(declare-fun b_free!60571 () Bool)

(declare-fun b_next!61275 () Bool)

(assert (=> b!2106512 (= b_free!60571 (not b_next!61275))))

(declare-fun tp!639016 () Bool)

(declare-fun b_and!170133 () Bool)

(assert (=> b!2106512 (= tp!639016 b_and!170133)))

(declare-fun b!2106509 () Bool)

(declare-fun b_free!60573 () Bool)

(declare-fun b_next!61277 () Bool)

(assert (=> b!2106509 (= b_free!60573 (not b_next!61277))))

(declare-fun tp!639011 () Bool)

(declare-fun b_and!170135 () Bool)

(assert (=> b!2106509 (= tp!639011 b_and!170135)))

(declare-fun b!2106518 () Bool)

(declare-fun b_free!60575 () Bool)

(declare-fun b_next!61279 () Bool)

(assert (=> b!2106518 (= b_free!60575 (not b_next!61279))))

(declare-fun tp!639018 () Bool)

(declare-fun b_and!170137 () Bool)

(assert (=> b!2106518 (= tp!639018 b_and!170137)))

(declare-fun b!2106508 () Bool)

(declare-fun b_free!60577 () Bool)

(declare-fun b_next!61281 () Bool)

(assert (=> b!2106508 (= b_free!60577 (not b_next!61281))))

(declare-fun tp!639012 () Bool)

(declare-fun b_and!170139 () Bool)

(assert (=> b!2106508 (= tp!639012 b_and!170139)))

(declare-fun b!2106513 () Bool)

(declare-fun b_free!60579 () Bool)

(declare-fun b_next!61283 () Bool)

(assert (=> b!2106513 (= b_free!60579 (not b_next!61283))))

(declare-fun tp!639017 () Bool)

(declare-fun b_and!170141 () Bool)

(assert (=> b!2106513 (= tp!639017 b_and!170141)))

(declare-fun b!2106493 () Bool)

(declare-fun e!1338849 () Bool)

(declare-fun e!1338829 () Bool)

(assert (=> b!2106493 (= e!1338849 e!1338829)))

(declare-fun b!2106494 () Bool)

(declare-fun e!1338834 () Bool)

(declare-fun e!1338837 () Bool)

(declare-fun tp!639021 () Bool)

(assert (=> b!2106494 (= e!1338834 (and e!1338837 tp!639021))))

(declare-fun b!2106495 () Bool)

(declare-fun e!1338831 () Bool)

(declare-datatypes ((C!11292 0))(
  ( (C!11293 (val!6632 Int)) )
))
(declare-datatypes ((Regex!5573 0))(
  ( (ElementMatch!5573 (c!338902 C!11292)) (Concat!9851 (regOne!11658 Regex!5573) (regTwo!11658 Regex!5573)) (EmptyExpr!5573) (Star!5573 (reg!5902 Regex!5573)) (EmptyLang!5573) (Union!5573 (regOne!11659 Regex!5573) (regTwo!11659 Regex!5573)) )
))
(declare-datatypes ((List!23355 0))(
  ( (Nil!23271) (Cons!23271 (h!28672 Regex!5573) (t!195848 List!23355)) )
))
(declare-datatypes ((Context!2286 0))(
  ( (Context!2287 (exprs!1643 List!23355)) )
))
(declare-datatypes ((tuple3!2584 0))(
  ( (tuple3!2585 (_1!13027 Regex!5573) (_2!13027 Context!2286) (_3!1756 C!11292)) )
))
(declare-datatypes ((tuple2!22542 0))(
  ( (tuple2!22543 (_1!13028 Context!2286) (_2!13028 C!11292)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22544 0))(
  ( (tuple2!22545 (_1!13029 tuple2!22542) (_2!13029 (InoxSet Context!2286))) )
))
(declare-datatypes ((List!23356 0))(
  ( (Nil!23272) (Cons!23272 (h!28673 tuple2!22544) (t!195849 List!23356)) )
))
(declare-datatypes ((array!7775 0))(
  ( (array!7776 (arr!3447 (Array (_ BitVec 32) (_ BitVec 64))) (size!18160 (_ BitVec 32))) )
))
(declare-datatypes ((array!7777 0))(
  ( (array!7778 (arr!3448 (Array (_ BitVec 32) List!23356)) (size!18161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4506 0))(
  ( (LongMapFixedSize!4507 (defaultEntry!2618 Int) (mask!6355 (_ BitVec 32)) (extraKeys!2501 (_ BitVec 32)) (zeroValue!2511 List!23356) (minValue!2511 List!23356) (_size!4557 (_ BitVec 32)) (_keys!2550 array!7775) (_values!2533 array!7777) (_vacant!2314 (_ BitVec 32))) )
))
(declare-datatypes ((List!23357 0))(
  ( (Nil!23273) (Cons!23273 (h!28674 (_ BitVec 16)) (t!195850 List!23357)) )
))
(declare-datatypes ((TokenValue!4278 0))(
  ( (FloatLiteralValue!8556 (text!30391 List!23357)) (TokenValueExt!4277 (__x!14888 Int)) (Broken!21390 (value!129661 List!23357)) (Object!4361) (End!4278) (Def!4278) (Underscore!4278) (Match!4278) (Else!4278) (Error!4278) (Case!4278) (If!4278) (Extends!4278) (Abstract!4278) (Class!4278) (Val!4278) (DelimiterValue!8556 (del!4338 List!23357)) (KeywordValue!4284 (value!129662 List!23357)) (CommentValue!8556 (value!129663 List!23357)) (WhitespaceValue!8556 (value!129664 List!23357)) (IndentationValue!4278 (value!129665 List!23357)) (String!26587) (Int32!4278) (Broken!21391 (value!129666 List!23357)) (Boolean!4279) (Unit!37470) (OperatorValue!4281 (op!4338 List!23357)) (IdentifierValue!8556 (value!129667 List!23357)) (IdentifierValue!8557 (value!129668 List!23357)) (WhitespaceValue!8557 (value!129669 List!23357)) (True!8556) (False!8556) (Broken!21392 (value!129670 List!23357)) (Broken!21393 (value!129671 List!23357)) (True!8557) (RightBrace!4278) (RightBracket!4278) (Colon!4278) (Null!4278) (Comma!4278) (LeftBracket!4278) (False!8557) (LeftBrace!4278) (ImaginaryLiteralValue!4278 (text!30392 List!23357)) (StringLiteralValue!12834 (value!129672 List!23357)) (EOFValue!4278 (value!129673 List!23357)) (IdentValue!4278 (value!129674 List!23357)) (DelimiterValue!8557 (value!129675 List!23357)) (DedentValue!4278 (value!129676 List!23357)) (NewLineValue!4278 (value!129677 List!23357)) (IntegerValue!12834 (value!129678 (_ BitVec 32)) (text!30393 List!23357)) (IntegerValue!12835 (value!129679 Int) (text!30394 List!23357)) (Times!4278) (Or!4278) (Equal!4278) (Minus!4278) (Broken!21394 (value!129680 List!23357)) (And!4278) (Div!4278) (LessEqual!4278) (Mod!4278) (Concat!9852) (Not!4278) (Plus!4278) (SpaceValue!4278 (value!129681 List!23357)) (IntegerValue!12836 (value!129682 Int) (text!30395 List!23357)) (StringLiteralValue!12835 (text!30396 List!23357)) (FloatLiteralValue!8557 (text!30397 List!23357)) (BytesLiteralValue!4278 (value!129683 List!23357)) (CommentValue!8557 (value!129684 List!23357)) (StringLiteralValue!12836 (value!129685 List!23357)) (ErrorTokenValue!4278 (msg!4339 List!23357)) )
))
(declare-datatypes ((String!26588 0))(
  ( (String!26589 (value!129686 String)) )
))
(declare-datatypes ((List!23358 0))(
  ( (Nil!23274) (Cons!23274 (h!28675 C!11292) (t!195851 List!23358)) )
))
(declare-datatypes ((IArray!15449 0))(
  ( (IArray!15450 (innerList!7782 List!23358)) )
))
(declare-datatypes ((Conc!7722 0))(
  ( (Node!7722 (left!18149 Conc!7722) (right!18479 Conc!7722) (csize!15674 Int) (cheight!7933 Int)) (Leaf!11276 (xs!10664 IArray!15449) (csize!15675 Int)) (Empty!7722) )
))
(declare-datatypes ((BalanceConc!15206 0))(
  ( (BalanceConc!15207 (c!338903 Conc!7722)) )
))
(declare-datatypes ((TokenValueInjection!8140 0))(
  ( (TokenValueInjection!8141 (toValue!5853 Int) (toChars!5712 Int)) )
))
(declare-datatypes ((Rule!8084 0))(
  ( (Rule!8085 (regex!4142 Regex!5573) (tag!4632 String!26588) (isSeparator!4142 Bool) (transformation!4142 TokenValueInjection!8140)) )
))
(declare-datatypes ((Token!7798 0))(
  ( (Token!7799 (value!129687 TokenValue!4278) (rule!6454 Rule!8084) (size!18162 Int) (originalCharacters!4930 List!23358)) )
))
(declare-datatypes ((tuple2!22546 0))(
  ( (tuple2!22547 (_1!13030 Token!7798) (_2!13030 BalanceConc!15206)) )
))
(declare-datatypes ((Option!4852 0))(
  ( (None!4851) (Some!4851 (v!27822 tuple2!22546)) )
))
(declare-datatypes ((Hashable!2167 0))(
  ( (HashableExt!2166 (__x!14889 Int)) )
))
(declare-datatypes ((Hashable!2168 0))(
  ( (HashableExt!2167 (__x!14890 Int)) )
))
(declare-datatypes ((Cell!8837 0))(
  ( (Cell!8838 (v!27823 LongMapFixedSize!4506)) )
))
(declare-datatypes ((MutLongMap!2253 0))(
  ( (LongMap!2253 (underlying!4701 Cell!8837)) (MutLongMapExt!2252 (__x!14891 Int)) )
))
(declare-datatypes ((Cell!8839 0))(
  ( (Cell!8840 (v!27824 MutLongMap!2253)) )
))
(declare-datatypes ((MutableMap!2167 0))(
  ( (MutableMapExt!2166 (__x!14892 Int)) (HashMap!2167 (underlying!4702 Cell!8839) (hashF!4090 Hashable!2168) (_size!4558 (_ BitVec 32)) (defaultValue!2329 Int)) )
))
(declare-datatypes ((tuple2!22548 0))(
  ( (tuple2!22549 (_1!13031 tuple3!2584) (_2!13031 (InoxSet Context!2286))) )
))
(declare-datatypes ((List!23359 0))(
  ( (Nil!23275) (Cons!23275 (h!28676 tuple2!22548) (t!195852 List!23359)) )
))
(declare-datatypes ((array!7779 0))(
  ( (array!7780 (arr!3449 (Array (_ BitVec 32) List!23359)) (size!18163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4508 0))(
  ( (LongMapFixedSize!4509 (defaultEntry!2619 Int) (mask!6356 (_ BitVec 32)) (extraKeys!2502 (_ BitVec 32)) (zeroValue!2512 List!23359) (minValue!2512 List!23359) (_size!4559 (_ BitVec 32)) (_keys!2551 array!7775) (_values!2534 array!7779) (_vacant!2315 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8841 0))(
  ( (Cell!8842 (v!27825 LongMapFixedSize!4508)) )
))
(declare-datatypes ((MutLongMap!2254 0))(
  ( (LongMap!2254 (underlying!4703 Cell!8841)) (MutLongMapExt!2253 (__x!14893 Int)) )
))
(declare-datatypes ((Cell!8843 0))(
  ( (Cell!8844 (v!27826 MutLongMap!2254)) )
))
(declare-datatypes ((MutableMap!2168 0))(
  ( (MutableMapExt!2167 (__x!14894 Int)) (HashMap!2168 (underlying!4704 Cell!8843) (hashF!4091 Hashable!2167) (_size!4560 (_ BitVec 32)) (defaultValue!2330 Int)) )
))
(declare-datatypes ((CacheDown!1468 0))(
  ( (CacheDown!1469 (cache!2548 MutableMap!2168)) )
))
(declare-datatypes ((CacheUp!1460 0))(
  ( (CacheUp!1461 (cache!2549 MutableMap!2167)) )
))
(declare-datatypes ((tuple3!2586 0))(
  ( (tuple3!2587 (_1!13032 Option!4852) (_2!13032 CacheUp!1460) (_3!1757 CacheDown!1468)) )
))
(declare-fun lt!791451 () tuple3!2586)

(declare-fun valid!1786 (CacheDown!1468) Bool)

(assert (=> b!2106495 (= e!1338831 (valid!1786 (_3!1757 lt!791451)))))

(declare-fun b!2106496 () Bool)

(declare-fun e!1338853 () Bool)

(declare-fun e!1338851 () Bool)

(assert (=> b!2106496 (= e!1338853 e!1338851)))

(declare-fun b!2106497 () Bool)

(declare-fun res!915717 () Bool)

(declare-fun e!1338844 () Bool)

(assert (=> b!2106497 (=> (not res!915717) (not e!1338844))))

(declare-fun cacheUp!675 () CacheUp!1460)

(declare-fun valid!1787 (CacheUp!1460) Bool)

(assert (=> b!2106497 (= res!915717 (valid!1787 cacheUp!675))))

(declare-fun b!2106498 () Bool)

(declare-fun res!915714 () Bool)

(assert (=> b!2106498 (=> (not res!915714) (not e!1338844))))

(declare-fun cacheDown!688 () CacheDown!1468)

(assert (=> b!2106498 (= res!915714 (valid!1786 cacheDown!688))))

(declare-fun b!2106499 () Bool)

(declare-fun e!1338843 () Bool)

(assert (=> b!2106499 (= e!1338843 e!1338831)))

(declare-fun res!915715 () Bool)

(assert (=> b!2106499 (=> (not res!915715) (not e!1338831))))

(declare-datatypes ((List!23360 0))(
  ( (Nil!23276) (Cons!23276 (h!28677 Rule!8084) (t!195853 List!23360)) )
))
(declare-fun rulesArg!349 () List!23360)

(declare-fun input!1444 () BalanceConc!15206)

(declare-fun totalInput!482 () BalanceConc!15206)

(declare-datatypes ((LexerInterface!3740 0))(
  ( (LexerInterfaceExt!3737 (__x!14895 Int)) (Lexer!3738) )
))
(declare-fun thiss!15689 () LexerInterface!3740)

(declare-fun maxPrefixZipperSequenceV2!377 (LexerInterface!3740 List!23360 BalanceConc!15206 BalanceConc!15206) Option!4852)

(assert (=> b!2106499 (= res!915715 (= (_1!13032 lt!791451) (maxPrefixZipperSequenceV2!377 thiss!15689 rulesArg!349 input!1444 totalInput!482)))))

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!69 (LexerInterface!3740 Rule!8084 BalanceConc!15206 BalanceConc!15206 CacheUp!1460 CacheDown!1468) tuple3!2586)

(assert (=> b!2106499 (= lt!791451 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!69 thiss!15689 (h!28677 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun mapIsEmpty!10878 () Bool)

(declare-fun mapRes!10879 () Bool)

(assert (=> mapIsEmpty!10878 mapRes!10879))

(declare-fun b!2106500 () Bool)

(declare-fun e!1338828 () Bool)

(declare-fun tp!639006 () Bool)

(declare-fun inv!30798 (Conc!7722) Bool)

(assert (=> b!2106500 (= e!1338828 (and (inv!30798 (c!338903 totalInput!482)) tp!639006))))

(declare-fun mapNonEmpty!10878 () Bool)

(declare-fun tp!639020 () Bool)

(declare-fun tp!639002 () Bool)

(assert (=> mapNonEmpty!10878 (= mapRes!10879 (and tp!639020 tp!639002))))

(declare-fun mapValue!10878 () List!23359)

(declare-fun mapKey!10878 () (_ BitVec 32))

(declare-fun mapRest!10878 () (Array (_ BitVec 32) List!23359))

(assert (=> mapNonEmpty!10878 (= (arr!3449 (_values!2534 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) (store mapRest!10878 mapKey!10878 mapValue!10878))))

(declare-fun b!2106501 () Bool)

(declare-fun res!915711 () Bool)

(declare-fun e!1338842 () Bool)

(assert (=> b!2106501 (=> (not res!915711) (not e!1338842))))

(declare-fun isEmpty!14280 (List!23360) Bool)

(assert (=> b!2106501 (= res!915711 (not (isEmpty!14280 rulesArg!349)))))

(declare-fun mapNonEmpty!10879 () Bool)

(declare-fun mapRes!10878 () Bool)

(declare-fun tp!639003 () Bool)

(declare-fun tp!639007 () Bool)

(assert (=> mapNonEmpty!10879 (= mapRes!10878 (and tp!639003 tp!639007))))

(declare-fun mapValue!10879 () List!23356)

(declare-fun mapKey!10879 () (_ BitVec 32))

(declare-fun mapRest!10879 () (Array (_ BitVec 32) List!23356))

(assert (=> mapNonEmpty!10879 (= (arr!3448 (_values!2533 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) (store mapRest!10879 mapKey!10879 mapValue!10879))))

(declare-fun b!2106503 () Bool)

(declare-fun e!1338852 () Bool)

(assert (=> b!2106503 (= e!1338852 e!1338853)))

(declare-fun b!2106504 () Bool)

(declare-fun e!1338836 () Bool)

(declare-fun tp!639008 () Bool)

(assert (=> b!2106504 (= e!1338836 (and (inv!30798 (c!338903 input!1444)) tp!639008))))

(declare-fun b!2106505 () Bool)

(declare-fun e!1338848 () Bool)

(declare-fun e!1338833 () Bool)

(declare-fun lt!791449 () MutLongMap!2253)

(get-info :version)

(assert (=> b!2106505 (= e!1338848 (and e!1338833 ((_ is LongMap!2253) lt!791449)))))

(assert (=> b!2106505 (= lt!791449 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))

(declare-fun b!2106506 () Bool)

(assert (=> b!2106506 (= e!1338842 e!1338844)))

(declare-fun res!915713 () Bool)

(assert (=> b!2106506 (=> (not res!915713) (not e!1338844))))

(declare-fun lt!791450 () List!23358)

(declare-fun isSuffix!560 (List!23358 List!23358) Bool)

(declare-fun list!9446 (BalanceConc!15206) List!23358)

(assert (=> b!2106506 (= res!915713 (isSuffix!560 lt!791450 (list!9446 totalInput!482)))))

(assert (=> b!2106506 (= lt!791450 (list!9446 input!1444))))

(declare-fun b!2106507 () Bool)

(declare-fun e!1338835 () Bool)

(declare-fun e!1338840 () Bool)

(assert (=> b!2106507 (= e!1338835 e!1338840)))

(declare-fun e!1338847 () Bool)

(assert (=> b!2106508 (= e!1338840 (and e!1338847 tp!639012))))

(declare-fun e!1338845 () Bool)

(declare-fun tp!639004 () Bool)

(declare-fun tp!639009 () Bool)

(declare-fun e!1338846 () Bool)

(declare-fun array_inv!2480 (array!7775) Bool)

(declare-fun array_inv!2481 (array!7777) Bool)

(assert (=> b!2106509 (= e!1338846 (and tp!639011 tp!639009 tp!639004 (array_inv!2480 (_keys!2550 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) (array_inv!2481 (_values!2533 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) e!1338845))))

(declare-fun b!2106510 () Bool)

(declare-fun tp!639019 () Bool)

(assert (=> b!2106510 (= e!1338845 (and tp!639019 mapRes!10878))))

(declare-fun condMapEmpty!10878 () Bool)

(declare-fun mapDefault!10879 () List!23356)

(assert (=> b!2106510 (= condMapEmpty!10878 (= (arr!3448 (_values!2533 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23356)) mapDefault!10879)))))

(declare-fun b!2106511 () Bool)

(declare-fun res!915710 () Bool)

(assert (=> b!2106511 (=> (not res!915710) (not e!1338831))))

(assert (=> b!2106511 (= res!915710 (valid!1787 (_2!13032 lt!791451)))))

(declare-fun e!1338850 () Bool)

(assert (=> b!2106512 (= e!1338850 (and tp!639014 tp!639016))))

(assert (=> b!2106513 (= e!1338829 (and e!1338848 tp!639017))))

(declare-fun b!2106514 () Bool)

(declare-fun tp!639015 () Bool)

(declare-fun inv!30796 (String!26588) Bool)

(declare-fun inv!30799 (TokenValueInjection!8140) Bool)

(assert (=> b!2106514 (= e!1338837 (and tp!639015 (inv!30796 (tag!4632 (h!28677 rulesArg!349))) (inv!30799 (transformation!4142 (h!28677 rulesArg!349))) e!1338850))))

(declare-fun b!2106515 () Bool)

(declare-fun res!915709 () Bool)

(assert (=> b!2106515 (=> (not res!915709) (not e!1338842))))

(declare-fun rulesValidInductive!1457 (LexerInterface!3740 List!23360) Bool)

(assert (=> b!2106515 (= res!915709 (rulesValidInductive!1457 thiss!15689 rulesArg!349))))

(declare-fun mapIsEmpty!10879 () Bool)

(assert (=> mapIsEmpty!10879 mapRes!10878))

(declare-fun b!2106516 () Bool)

(declare-fun e!1338839 () Bool)

(assert (=> b!2106516 (= e!1338833 e!1338839)))

(declare-fun b!2106517 () Bool)

(declare-fun e!1338838 () Bool)

(declare-fun tp!639010 () Bool)

(assert (=> b!2106517 (= e!1338838 (and tp!639010 mapRes!10879))))

(declare-fun condMapEmpty!10879 () Bool)

(declare-fun mapDefault!10878 () List!23359)

(assert (=> b!2106517 (= condMapEmpty!10879 (= (arr!3449 (_values!2534 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23359)) mapDefault!10878)))))

(declare-fun b!2106502 () Bool)

(assert (=> b!2106502 (= e!1338844 (not e!1338843))))

(declare-fun res!915712 () Bool)

(assert (=> b!2106502 (=> res!915712 e!1338843)))

(assert (=> b!2106502 (= res!915712 (or (not ((_ is Cons!23276) rulesArg!349)) (not ((_ is Nil!23276) (t!195853 rulesArg!349)))))))

(declare-fun isPrefix!2074 (List!23358 List!23358) Bool)

(assert (=> b!2106502 (isPrefix!2074 lt!791450 lt!791450)))

(declare-datatypes ((Unit!37471 0))(
  ( (Unit!37472) )
))
(declare-fun lt!791453 () Unit!37471)

(declare-fun lemmaIsPrefixRefl!1392 (List!23358 List!23358) Unit!37471)

(assert (=> b!2106502 (= lt!791453 (lemmaIsPrefixRefl!1392 lt!791450 lt!791450))))

(declare-fun res!915716 () Bool)

(assert (=> start!205952 (=> (not res!915716) (not e!1338842))))

(assert (=> start!205952 (= res!915716 ((_ is Lexer!3738) thiss!15689))))

(assert (=> start!205952 e!1338842))

(assert (=> start!205952 e!1338834))

(declare-fun inv!30800 (BalanceConc!15206) Bool)

(assert (=> start!205952 (and (inv!30800 totalInput!482) e!1338828)))

(assert (=> start!205952 true))

(assert (=> start!205952 (and (inv!30800 input!1444) e!1338836)))

(declare-fun inv!30801 (CacheUp!1460) Bool)

(assert (=> start!205952 (and (inv!30801 cacheUp!675) e!1338849)))

(declare-fun inv!30802 (CacheDown!1468) Bool)

(assert (=> start!205952 (and (inv!30802 cacheDown!688) e!1338835)))

(declare-fun tp!639005 () Bool)

(declare-fun tp!639013 () Bool)

(declare-fun array_inv!2482 (array!7779) Bool)

(assert (=> b!2106518 (= e!1338851 (and tp!639018 tp!639005 tp!639013 (array_inv!2480 (_keys!2551 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) (array_inv!2482 (_values!2534 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) e!1338838))))

(declare-fun b!2106519 () Bool)

(assert (=> b!2106519 (= e!1338839 e!1338846)))

(declare-fun b!2106520 () Bool)

(declare-fun lt!791452 () MutLongMap!2254)

(assert (=> b!2106520 (= e!1338847 (and e!1338852 ((_ is LongMap!2254) lt!791452)))))

(assert (=> b!2106520 (= lt!791452 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))

(assert (= (and start!205952 res!915716) b!2106515))

(assert (= (and b!2106515 res!915709) b!2106501))

(assert (= (and b!2106501 res!915711) b!2106506))

(assert (= (and b!2106506 res!915713) b!2106497))

(assert (= (and b!2106497 res!915717) b!2106498))

(assert (= (and b!2106498 res!915714) b!2106502))

(assert (= (and b!2106502 (not res!915712)) b!2106499))

(assert (= (and b!2106499 res!915715) b!2106511))

(assert (= (and b!2106511 res!915710) b!2106495))

(assert (= b!2106514 b!2106512))

(assert (= b!2106494 b!2106514))

(assert (= (and start!205952 ((_ is Cons!23276) rulesArg!349)) b!2106494))

(assert (= start!205952 b!2106500))

(assert (= start!205952 b!2106504))

(assert (= (and b!2106510 condMapEmpty!10878) mapIsEmpty!10879))

(assert (= (and b!2106510 (not condMapEmpty!10878)) mapNonEmpty!10879))

(assert (= b!2106509 b!2106510))

(assert (= b!2106519 b!2106509))

(assert (= b!2106516 b!2106519))

(assert (= (and b!2106505 ((_ is LongMap!2253) (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))) b!2106516))

(assert (= b!2106513 b!2106505))

(assert (= (and b!2106493 ((_ is HashMap!2167) (cache!2549 cacheUp!675))) b!2106513))

(assert (= start!205952 b!2106493))

(assert (= (and b!2106517 condMapEmpty!10879) mapIsEmpty!10878))

(assert (= (and b!2106517 (not condMapEmpty!10879)) mapNonEmpty!10878))

(assert (= b!2106518 b!2106517))

(assert (= b!2106496 b!2106518))

(assert (= b!2106503 b!2106496))

(assert (= (and b!2106520 ((_ is LongMap!2254) (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))) b!2106503))

(assert (= b!2106508 b!2106520))

(assert (= (and b!2106507 ((_ is HashMap!2168) (cache!2548 cacheDown!688))) b!2106508))

(assert (= start!205952 b!2106507))

(declare-fun m!2564711 () Bool)

(assert (=> b!2106511 m!2564711))

(declare-fun m!2564713 () Bool)

(assert (=> mapNonEmpty!10879 m!2564713))

(declare-fun m!2564715 () Bool)

(assert (=> b!2106506 m!2564715))

(assert (=> b!2106506 m!2564715))

(declare-fun m!2564717 () Bool)

(assert (=> b!2106506 m!2564717))

(declare-fun m!2564719 () Bool)

(assert (=> b!2106506 m!2564719))

(declare-fun m!2564721 () Bool)

(assert (=> b!2106518 m!2564721))

(declare-fun m!2564723 () Bool)

(assert (=> b!2106518 m!2564723))

(declare-fun m!2564725 () Bool)

(assert (=> b!2106501 m!2564725))

(declare-fun m!2564727 () Bool)

(assert (=> b!2106497 m!2564727))

(declare-fun m!2564729 () Bool)

(assert (=> b!2106502 m!2564729))

(declare-fun m!2564731 () Bool)

(assert (=> b!2106502 m!2564731))

(declare-fun m!2564733 () Bool)

(assert (=> b!2106495 m!2564733))

(declare-fun m!2564735 () Bool)

(assert (=> b!2106514 m!2564735))

(declare-fun m!2564737 () Bool)

(assert (=> b!2106514 m!2564737))

(declare-fun m!2564739 () Bool)

(assert (=> start!205952 m!2564739))

(declare-fun m!2564741 () Bool)

(assert (=> start!205952 m!2564741))

(declare-fun m!2564743 () Bool)

(assert (=> start!205952 m!2564743))

(declare-fun m!2564745 () Bool)

(assert (=> start!205952 m!2564745))

(declare-fun m!2564747 () Bool)

(assert (=> b!2106500 m!2564747))

(declare-fun m!2564749 () Bool)

(assert (=> mapNonEmpty!10878 m!2564749))

(declare-fun m!2564751 () Bool)

(assert (=> b!2106498 m!2564751))

(declare-fun m!2564753 () Bool)

(assert (=> b!2106499 m!2564753))

(declare-fun m!2564755 () Bool)

(assert (=> b!2106499 m!2564755))

(declare-fun m!2564757 () Bool)

(assert (=> b!2106515 m!2564757))

(declare-fun m!2564759 () Bool)

(assert (=> b!2106509 m!2564759))

(declare-fun m!2564761 () Bool)

(assert (=> b!2106509 m!2564761))

(declare-fun m!2564763 () Bool)

(assert (=> b!2106504 m!2564763))

(check-sat (not b!2106514) b_and!170137 (not b_next!61279) (not b!2106501) (not b!2106500) (not b_next!61275) b_and!170133 (not b_next!61281) (not b!2106497) (not b!2106515) (not b!2106499) (not b!2106495) b_and!170131 b_and!170135 (not b_next!61277) (not b!2106517) (not b!2106518) b_and!170141 (not mapNonEmpty!10878) (not b_next!61273) (not b!2106510) b_and!170139 (not b!2106494) (not b!2106506) (not b_next!61283) (not b!2106502) (not start!205952) (not b!2106511) (not b!2106504) (not b!2106509) (not b!2106498) (not mapNonEmpty!10879))
(check-sat b_and!170137 (not b_next!61279) (not b_next!61277) b_and!170139 (not b_next!61283) (not b_next!61275) b_and!170133 (not b_next!61281) b_and!170131 b_and!170135 b_and!170141 (not b_next!61273))
(get-model)

(declare-fun d!641786 () Bool)

(declare-fun validCacheMapDown!222 (MutableMap!2168) Bool)

(assert (=> d!641786 (= (valid!1786 cacheDown!688) (validCacheMapDown!222 (cache!2548 cacheDown!688)))))

(declare-fun bs!440952 () Bool)

(assert (= bs!440952 d!641786))

(declare-fun m!2564765 () Bool)

(assert (=> bs!440952 m!2564765))

(assert (=> b!2106498 d!641786))

(declare-fun d!641788 () Bool)

(declare-fun e!1338856 () Bool)

(assert (=> d!641788 e!1338856))

(declare-fun res!915722 () Bool)

(assert (=> d!641788 (=> res!915722 e!1338856)))

(declare-fun lt!791456 () Bool)

(assert (=> d!641788 (= res!915722 (not lt!791456))))

(declare-fun drop!1163 (List!23358 Int) List!23358)

(declare-fun size!18164 (List!23358) Int)

(assert (=> d!641788 (= lt!791456 (= lt!791450 (drop!1163 (list!9446 totalInput!482) (- (size!18164 (list!9446 totalInput!482)) (size!18164 lt!791450)))))))

(assert (=> d!641788 (= (isSuffix!560 lt!791450 (list!9446 totalInput!482)) lt!791456)))

(declare-fun b!2106523 () Bool)

(assert (=> b!2106523 (= e!1338856 (>= (size!18164 (list!9446 totalInput!482)) (size!18164 lt!791450)))))

(assert (= (and d!641788 (not res!915722)) b!2106523))

(assert (=> d!641788 m!2564715))

(declare-fun m!2564767 () Bool)

(assert (=> d!641788 m!2564767))

(declare-fun m!2564769 () Bool)

(assert (=> d!641788 m!2564769))

(assert (=> d!641788 m!2564715))

(declare-fun m!2564771 () Bool)

(assert (=> d!641788 m!2564771))

(assert (=> b!2106523 m!2564715))

(assert (=> b!2106523 m!2564767))

(assert (=> b!2106523 m!2564769))

(assert (=> b!2106506 d!641788))

(declare-fun d!641790 () Bool)

(declare-fun list!9447 (Conc!7722) List!23358)

(assert (=> d!641790 (= (list!9446 totalInput!482) (list!9447 (c!338903 totalInput!482)))))

(declare-fun bs!440953 () Bool)

(assert (= bs!440953 d!641790))

(declare-fun m!2564773 () Bool)

(assert (=> bs!440953 m!2564773))

(assert (=> b!2106506 d!641790))

(declare-fun d!641792 () Bool)

(assert (=> d!641792 (= (list!9446 input!1444) (list!9447 (c!338903 input!1444)))))

(declare-fun bs!440954 () Bool)

(assert (= bs!440954 d!641792))

(declare-fun m!2564775 () Bool)

(assert (=> bs!440954 m!2564775))

(assert (=> b!2106506 d!641792))

(declare-fun d!641794 () Bool)

(assert (=> d!641794 true))

(declare-fun lt!791459 () Bool)

(declare-fun lambda!78154 () Int)

(declare-fun forall!4836 (List!23360 Int) Bool)

(assert (=> d!641794 (= lt!791459 (forall!4836 rulesArg!349 lambda!78154))))

(declare-fun e!1338862 () Bool)

(assert (=> d!641794 (= lt!791459 e!1338862)))

(declare-fun res!915728 () Bool)

(assert (=> d!641794 (=> res!915728 e!1338862)))

(assert (=> d!641794 (= res!915728 (not ((_ is Cons!23276) rulesArg!349)))))

(assert (=> d!641794 (= (rulesValidInductive!1457 thiss!15689 rulesArg!349) lt!791459)))

(declare-fun b!2106528 () Bool)

(declare-fun e!1338861 () Bool)

(assert (=> b!2106528 (= e!1338862 e!1338861)))

(declare-fun res!915727 () Bool)

(assert (=> b!2106528 (=> (not res!915727) (not e!1338861))))

(declare-fun ruleValid!1267 (LexerInterface!3740 Rule!8084) Bool)

(assert (=> b!2106528 (= res!915727 (ruleValid!1267 thiss!15689 (h!28677 rulesArg!349)))))

(declare-fun b!2106529 () Bool)

(assert (=> b!2106529 (= e!1338861 (rulesValidInductive!1457 thiss!15689 (t!195853 rulesArg!349)))))

(assert (= (and d!641794 (not res!915728)) b!2106528))

(assert (= (and b!2106528 res!915727) b!2106529))

(declare-fun m!2564777 () Bool)

(assert (=> d!641794 m!2564777))

(declare-fun m!2564779 () Bool)

(assert (=> b!2106528 m!2564779))

(declare-fun m!2564781 () Bool)

(assert (=> b!2106529 m!2564781))

(assert (=> b!2106515 d!641794))

(declare-fun d!641796 () Bool)

(declare-fun c!338906 () Bool)

(assert (=> d!641796 (= c!338906 ((_ is Node!7722) (c!338903 input!1444)))))

(declare-fun e!1338867 () Bool)

(assert (=> d!641796 (= (inv!30798 (c!338903 input!1444)) e!1338867)))

(declare-fun b!2106538 () Bool)

(declare-fun inv!30803 (Conc!7722) Bool)

(assert (=> b!2106538 (= e!1338867 (inv!30803 (c!338903 input!1444)))))

(declare-fun b!2106539 () Bool)

(declare-fun e!1338868 () Bool)

(assert (=> b!2106539 (= e!1338867 e!1338868)))

(declare-fun res!915731 () Bool)

(assert (=> b!2106539 (= res!915731 (not ((_ is Leaf!11276) (c!338903 input!1444))))))

(assert (=> b!2106539 (=> res!915731 e!1338868)))

(declare-fun b!2106540 () Bool)

(declare-fun inv!30804 (Conc!7722) Bool)

(assert (=> b!2106540 (= e!1338868 (inv!30804 (c!338903 input!1444)))))

(assert (= (and d!641796 c!338906) b!2106538))

(assert (= (and d!641796 (not c!338906)) b!2106539))

(assert (= (and b!2106539 (not res!915731)) b!2106540))

(declare-fun m!2564783 () Bool)

(assert (=> b!2106538 m!2564783))

(declare-fun m!2564785 () Bool)

(assert (=> b!2106540 m!2564785))

(assert (=> b!2106504 d!641796))

(declare-fun d!641798 () Bool)

(declare-fun validCacheMapUp!224 (MutableMap!2167) Bool)

(assert (=> d!641798 (= (valid!1787 cacheUp!675) (validCacheMapUp!224 (cache!2549 cacheUp!675)))))

(declare-fun bs!440955 () Bool)

(assert (= bs!440955 d!641798))

(declare-fun m!2564787 () Bool)

(assert (=> bs!440955 m!2564787))

(assert (=> b!2106497 d!641798))

(declare-fun d!641800 () Bool)

(assert (=> d!641800 (= (array_inv!2480 (_keys!2551 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) (bvsge (size!18160 (_keys!2551 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106518 d!641800))

(declare-fun d!641802 () Bool)

(assert (=> d!641802 (= (array_inv!2482 (_values!2534 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) (bvsge (size!18163 (_values!2534 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106518 d!641802))

(declare-fun d!641804 () Bool)

(assert (=> d!641804 (= (array_inv!2480 (_keys!2550 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) (bvsge (size!18160 (_keys!2550 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106509 d!641804))

(declare-fun d!641806 () Bool)

(assert (=> d!641806 (= (array_inv!2481 (_values!2533 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) (bvsge (size!18161 (_values!2533 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106509 d!641806))

(declare-fun d!641808 () Bool)

(declare-fun c!338907 () Bool)

(assert (=> d!641808 (= c!338907 ((_ is Node!7722) (c!338903 totalInput!482)))))

(declare-fun e!1338869 () Bool)

(assert (=> d!641808 (= (inv!30798 (c!338903 totalInput!482)) e!1338869)))

(declare-fun b!2106541 () Bool)

(assert (=> b!2106541 (= e!1338869 (inv!30803 (c!338903 totalInput!482)))))

(declare-fun b!2106542 () Bool)

(declare-fun e!1338870 () Bool)

(assert (=> b!2106542 (= e!1338869 e!1338870)))

(declare-fun res!915732 () Bool)

(assert (=> b!2106542 (= res!915732 (not ((_ is Leaf!11276) (c!338903 totalInput!482))))))

(assert (=> b!2106542 (=> res!915732 e!1338870)))

(declare-fun b!2106543 () Bool)

(assert (=> b!2106543 (= e!1338870 (inv!30804 (c!338903 totalInput!482)))))

(assert (= (and d!641808 c!338907) b!2106541))

(assert (= (and d!641808 (not c!338907)) b!2106542))

(assert (= (and b!2106542 (not res!915732)) b!2106543))

(declare-fun m!2564789 () Bool)

(assert (=> b!2106541 m!2564789))

(declare-fun m!2564791 () Bool)

(assert (=> b!2106543 m!2564791))

(assert (=> b!2106500 d!641808))

(declare-fun d!641810 () Bool)

(declare-fun isBalanced!2428 (Conc!7722) Bool)

(assert (=> d!641810 (= (inv!30800 totalInput!482) (isBalanced!2428 (c!338903 totalInput!482)))))

(declare-fun bs!440956 () Bool)

(assert (= bs!440956 d!641810))

(declare-fun m!2564793 () Bool)

(assert (=> bs!440956 m!2564793))

(assert (=> start!205952 d!641810))

(declare-fun d!641812 () Bool)

(assert (=> d!641812 (= (inv!30800 input!1444) (isBalanced!2428 (c!338903 input!1444)))))

(declare-fun bs!440957 () Bool)

(assert (= bs!440957 d!641812))

(declare-fun m!2564795 () Bool)

(assert (=> bs!440957 m!2564795))

(assert (=> start!205952 d!641812))

(declare-fun d!641814 () Bool)

(declare-fun res!915735 () Bool)

(declare-fun e!1338873 () Bool)

(assert (=> d!641814 (=> (not res!915735) (not e!1338873))))

(assert (=> d!641814 (= res!915735 ((_ is HashMap!2167) (cache!2549 cacheUp!675)))))

(assert (=> d!641814 (= (inv!30801 cacheUp!675) e!1338873)))

(declare-fun b!2106546 () Bool)

(assert (=> b!2106546 (= e!1338873 (validCacheMapUp!224 (cache!2549 cacheUp!675)))))

(assert (= (and d!641814 res!915735) b!2106546))

(assert (=> b!2106546 m!2564787))

(assert (=> start!205952 d!641814))

(declare-fun d!641816 () Bool)

(declare-fun res!915738 () Bool)

(declare-fun e!1338876 () Bool)

(assert (=> d!641816 (=> (not res!915738) (not e!1338876))))

(assert (=> d!641816 (= res!915738 ((_ is HashMap!2168) (cache!2548 cacheDown!688)))))

(assert (=> d!641816 (= (inv!30802 cacheDown!688) e!1338876)))

(declare-fun b!2106549 () Bool)

(assert (=> b!2106549 (= e!1338876 (validCacheMapDown!222 (cache!2548 cacheDown!688)))))

(assert (= (and d!641816 res!915738) b!2106549))

(assert (=> b!2106549 m!2564765))

(assert (=> start!205952 d!641816))

(declare-fun b!2106566 () Bool)

(declare-fun e!1338894 () Option!4852)

(declare-fun call!128392 () Option!4852)

(assert (=> b!2106566 (= e!1338894 call!128392)))

(declare-fun b!2106567 () Bool)

(declare-fun res!915754 () Bool)

(declare-fun e!1338890 () Bool)

(assert (=> b!2106567 (=> (not res!915754) (not e!1338890))))

(declare-fun e!1338891 () Bool)

(assert (=> b!2106567 (= res!915754 e!1338891)))

(declare-fun res!915756 () Bool)

(assert (=> b!2106567 (=> res!915756 e!1338891)))

(declare-fun lt!791475 () Option!4852)

(declare-fun isDefined!4069 (Option!4852) Bool)

(assert (=> b!2106567 (= res!915756 (not (isDefined!4069 lt!791475)))))

(declare-fun bm!128387 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!174 (LexerInterface!3740 Rule!8084 BalanceConc!15206 BalanceConc!15206) Option!4852)

(assert (=> bm!128387 (= call!128392 (maxPrefixOneRuleZipperSequenceV2!174 thiss!15689 (h!28677 rulesArg!349) input!1444 totalInput!482))))

(declare-fun e!1338892 () Bool)

(declare-fun b!2106568 () Bool)

(declare-fun get!7251 (Option!4852) tuple2!22546)

(declare-datatypes ((tuple2!22550 0))(
  ( (tuple2!22551 (_1!13033 Token!7798) (_2!13033 List!23358)) )
))
(declare-datatypes ((Option!4853 0))(
  ( (None!4852) (Some!4852 (v!27827 tuple2!22550)) )
))
(declare-fun get!7252 (Option!4853) tuple2!22550)

(declare-fun maxPrefixZipper!418 (LexerInterface!3740 List!23360 List!23358) Option!4853)

(assert (=> b!2106568 (= e!1338892 (= (list!9446 (_2!13030 (get!7251 lt!791475))) (_2!13033 (get!7252 (maxPrefixZipper!418 thiss!15689 rulesArg!349 (list!9446 input!1444))))))))

(declare-fun e!1338893 () Bool)

(declare-fun b!2106569 () Bool)

(declare-fun maxPrefix!2100 (LexerInterface!3740 List!23360 List!23358) Option!4853)

(assert (=> b!2106569 (= e!1338893 (= (list!9446 (_2!13030 (get!7251 lt!791475))) (_2!13033 (get!7252 (maxPrefix!2100 thiss!15689 rulesArg!349 (list!9446 input!1444))))))))

(declare-fun d!641818 () Bool)

(assert (=> d!641818 e!1338890))

(declare-fun res!915752 () Bool)

(assert (=> d!641818 (=> (not res!915752) (not e!1338890))))

(declare-fun isDefined!4070 (Option!4853) Bool)

(assert (=> d!641818 (= res!915752 (= (isDefined!4069 lt!791475) (isDefined!4070 (maxPrefixZipper!418 thiss!15689 rulesArg!349 (list!9446 input!1444)))))))

(assert (=> d!641818 (= lt!791475 e!1338894)))

(declare-fun c!338911 () Bool)

(assert (=> d!641818 (= c!338911 (and ((_ is Cons!23276) rulesArg!349) ((_ is Nil!23276) (t!195853 rulesArg!349))))))

(declare-fun lt!791478 () Unit!37471)

(declare-fun lt!791479 () Unit!37471)

(assert (=> d!641818 (= lt!791478 lt!791479)))

(declare-fun lt!791474 () List!23358)

(declare-fun lt!791480 () List!23358)

(assert (=> d!641818 (isPrefix!2074 lt!791474 lt!791480)))

(assert (=> d!641818 (= lt!791479 (lemmaIsPrefixRefl!1392 lt!791474 lt!791480))))

(assert (=> d!641818 (= lt!791480 (list!9446 input!1444))))

(assert (=> d!641818 (= lt!791474 (list!9446 input!1444))))

(assert (=> d!641818 (rulesValidInductive!1457 thiss!15689 rulesArg!349)))

(assert (=> d!641818 (= (maxPrefixZipperSequenceV2!377 thiss!15689 rulesArg!349 input!1444 totalInput!482) lt!791475)))

(declare-fun b!2106570 () Bool)

(declare-fun e!1338889 () Bool)

(assert (=> b!2106570 (= e!1338890 e!1338889)))

(declare-fun res!915755 () Bool)

(assert (=> b!2106570 (=> res!915755 e!1338889)))

(assert (=> b!2106570 (= res!915755 (not (isDefined!4069 lt!791475)))))

(declare-fun b!2106571 () Bool)

(assert (=> b!2106571 (= e!1338891 e!1338892)))

(declare-fun res!915751 () Bool)

(assert (=> b!2106571 (=> (not res!915751) (not e!1338892))))

(assert (=> b!2106571 (= res!915751 (= (_1!13030 (get!7251 lt!791475)) (_1!13033 (get!7252 (maxPrefixZipper!418 thiss!15689 rulesArg!349 (list!9446 input!1444))))))))

(declare-fun b!2106572 () Bool)

(declare-fun lt!791477 () Option!4852)

(declare-fun lt!791476 () Option!4852)

(assert (=> b!2106572 (= e!1338894 (ite (and ((_ is None!4851) lt!791477) ((_ is None!4851) lt!791476)) None!4851 (ite ((_ is None!4851) lt!791476) lt!791477 (ite ((_ is None!4851) lt!791477) lt!791476 (ite (>= (size!18162 (_1!13030 (v!27822 lt!791477))) (size!18162 (_1!13030 (v!27822 lt!791476)))) lt!791477 lt!791476)))))))

(assert (=> b!2106572 (= lt!791477 call!128392)))

(assert (=> b!2106572 (= lt!791476 (maxPrefixZipperSequenceV2!377 thiss!15689 (t!195853 rulesArg!349) input!1444 totalInput!482))))

(declare-fun b!2106573 () Bool)

(assert (=> b!2106573 (= e!1338889 e!1338893)))

(declare-fun res!915753 () Bool)

(assert (=> b!2106573 (=> (not res!915753) (not e!1338893))))

(assert (=> b!2106573 (= res!915753 (= (_1!13030 (get!7251 lt!791475)) (_1!13033 (get!7252 (maxPrefix!2100 thiss!15689 rulesArg!349 (list!9446 input!1444))))))))

(assert (= (and d!641818 c!338911) b!2106566))

(assert (= (and d!641818 (not c!338911)) b!2106572))

(assert (= (or b!2106566 b!2106572) bm!128387))

(assert (= (and d!641818 res!915752) b!2106567))

(assert (= (and b!2106567 (not res!915756)) b!2106571))

(assert (= (and b!2106571 res!915751) b!2106568))

(assert (= (and b!2106567 res!915754) b!2106570))

(assert (= (and b!2106570 (not res!915755)) b!2106573))

(assert (= (and b!2106573 res!915753) b!2106569))

(declare-fun m!2564797 () Bool)

(assert (=> b!2106573 m!2564797))

(assert (=> b!2106573 m!2564719))

(assert (=> b!2106573 m!2564719))

(declare-fun m!2564799 () Bool)

(assert (=> b!2106573 m!2564799))

(assert (=> b!2106573 m!2564799))

(declare-fun m!2564801 () Bool)

(assert (=> b!2106573 m!2564801))

(assert (=> b!2106568 m!2564719))

(declare-fun m!2564803 () Bool)

(assert (=> b!2106568 m!2564803))

(assert (=> b!2106568 m!2564797))

(assert (=> b!2106568 m!2564719))

(assert (=> b!2106568 m!2564803))

(declare-fun m!2564805 () Bool)

(assert (=> b!2106568 m!2564805))

(declare-fun m!2564807 () Bool)

(assert (=> b!2106568 m!2564807))

(declare-fun m!2564809 () Bool)

(assert (=> d!641818 m!2564809))

(declare-fun m!2564811 () Bool)

(assert (=> d!641818 m!2564811))

(assert (=> d!641818 m!2564719))

(assert (=> d!641818 m!2564803))

(assert (=> d!641818 m!2564803))

(declare-fun m!2564813 () Bool)

(assert (=> d!641818 m!2564813))

(declare-fun m!2564815 () Bool)

(assert (=> d!641818 m!2564815))

(assert (=> d!641818 m!2564719))

(assert (=> d!641818 m!2564757))

(assert (=> b!2106569 m!2564807))

(assert (=> b!2106569 m!2564799))

(assert (=> b!2106569 m!2564801))

(assert (=> b!2106569 m!2564719))

(assert (=> b!2106569 m!2564799))

(assert (=> b!2106569 m!2564797))

(assert (=> b!2106569 m!2564719))

(assert (=> b!2106570 m!2564809))

(declare-fun m!2564817 () Bool)

(assert (=> b!2106572 m!2564817))

(assert (=> b!2106571 m!2564797))

(assert (=> b!2106571 m!2564719))

(assert (=> b!2106571 m!2564719))

(assert (=> b!2106571 m!2564803))

(assert (=> b!2106571 m!2564803))

(assert (=> b!2106571 m!2564805))

(declare-fun m!2564819 () Bool)

(assert (=> bm!128387 m!2564819))

(assert (=> b!2106567 m!2564809))

(assert (=> b!2106499 d!641818))

(declare-fun b!2106584 () Bool)

(declare-fun e!1338902 () Option!4852)

(assert (=> b!2106584 (= e!1338902 None!4851)))

(declare-fun b!2106585 () Bool)

(declare-fun e!1338901 () Bool)

(declare-fun lt!791494 () List!23358)

(declare-fun matchR!2722 (Regex!5573 List!23358) Bool)

(declare-datatypes ((tuple2!22552 0))(
  ( (tuple2!22553 (_1!13034 List!23358) (_2!13034 List!23358)) )
))
(declare-fun findLongestMatchInner!588 (Regex!5573 List!23358 Int List!23358 List!23358 Int) tuple2!22552)

(assert (=> b!2106585 (= e!1338901 (matchR!2722 (regex!4142 (h!28677 rulesArg!349)) (_1!13034 (findLongestMatchInner!588 (regex!4142 (h!28677 rulesArg!349)) Nil!23274 (size!18164 Nil!23274) lt!791494 lt!791494 (size!18164 lt!791494)))))))

(declare-fun b!2106586 () Bool)

(declare-fun e!1338903 () Bool)

(declare-fun lt!791495 () tuple3!2586)

(assert (=> b!2106586 (= e!1338903 (valid!1786 (_3!1757 lt!791495)))))

(declare-fun d!641820 () Bool)

(assert (=> d!641820 e!1338903))

(declare-fun res!915764 () Bool)

(assert (=> d!641820 (=> (not res!915764) (not e!1338903))))

(assert (=> d!641820 (= res!915764 (= (_1!13032 lt!791495) (maxPrefixOneRuleZipperSequenceV2!174 thiss!15689 (h!28677 rulesArg!349) input!1444 totalInput!482)))))

(declare-datatypes ((tuple2!22554 0))(
  ( (tuple2!22555 (_1!13035 BalanceConc!15206) (_2!13035 BalanceConc!15206)) )
))
(declare-datatypes ((tuple3!2588 0))(
  ( (tuple3!2589 (_1!13036 tuple2!22554) (_2!13036 CacheUp!1460) (_3!1758 CacheDown!1468)) )
))
(declare-fun lt!791493 () tuple3!2588)

(assert (=> d!641820 (= lt!791495 (tuple3!2587 e!1338902 (_2!13036 lt!791493) (_3!1758 lt!791493)))))

(declare-fun c!338914 () Bool)

(declare-fun isEmpty!14281 (BalanceConc!15206) Bool)

(assert (=> d!641820 (= c!338914 (isEmpty!14281 (_1!13035 (_1!13036 lt!791493))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!31 (Regex!5573 BalanceConc!15206 BalanceConc!15206 CacheUp!1460 CacheDown!1468) tuple3!2588)

(assert (=> d!641820 (= lt!791493 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!31 (regex!4142 (h!28677 rulesArg!349)) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(assert (=> d!641820 (ruleValid!1267 thiss!15689 (h!28677 rulesArg!349))))

(assert (=> d!641820 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!69 thiss!15689 (h!28677 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688) lt!791495)))

(declare-fun b!2106587 () Bool)

(declare-fun apply!5896 (TokenValueInjection!8140 BalanceConc!15206) TokenValue!4278)

(declare-fun size!18165 (BalanceConc!15206) Int)

(assert (=> b!2106587 (= e!1338902 (Some!4851 (tuple2!22547 (Token!7799 (apply!5896 (transformation!4142 (h!28677 rulesArg!349)) (_1!13035 (_1!13036 lt!791493))) (h!28677 rulesArg!349) (size!18165 (_1!13035 (_1!13036 lt!791493))) (list!9446 (_1!13035 (_1!13036 lt!791493)))) (_2!13035 (_1!13036 lt!791493)))))))

(assert (=> b!2106587 (= lt!791494 (list!9446 input!1444))))

(declare-fun lt!791498 () Unit!37471)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!572 (Regex!5573 List!23358) Unit!37471)

(assert (=> b!2106587 (= lt!791498 (longestMatchIsAcceptedByMatchOrIsEmpty!572 (regex!4142 (h!28677 rulesArg!349)) lt!791494))))

(declare-fun res!915763 () Bool)

(declare-fun isEmpty!14282 (List!23358) Bool)

(assert (=> b!2106587 (= res!915763 (isEmpty!14282 (_1!13034 (findLongestMatchInner!588 (regex!4142 (h!28677 rulesArg!349)) Nil!23274 (size!18164 Nil!23274) lt!791494 lt!791494 (size!18164 lt!791494)))))))

(assert (=> b!2106587 (=> res!915763 e!1338901)))

(assert (=> b!2106587 e!1338901))

(declare-fun lt!791497 () Unit!37471)

(assert (=> b!2106587 (= lt!791497 lt!791498)))

(declare-fun lt!791496 () Unit!37471)

(declare-fun lemmaSemiInverse!986 (TokenValueInjection!8140 BalanceConc!15206) Unit!37471)

(assert (=> b!2106587 (= lt!791496 (lemmaSemiInverse!986 (transformation!4142 (h!28677 rulesArg!349)) (_1!13035 (_1!13036 lt!791493))))))

(declare-fun b!2106588 () Bool)

(declare-fun res!915765 () Bool)

(assert (=> b!2106588 (=> (not res!915765) (not e!1338903))))

(assert (=> b!2106588 (= res!915765 (valid!1787 (_2!13032 lt!791495)))))

(assert (= (and d!641820 c!338914) b!2106584))

(assert (= (and d!641820 (not c!338914)) b!2106587))

(assert (= (and b!2106587 (not res!915763)) b!2106585))

(assert (= (and d!641820 res!915764) b!2106588))

(assert (= (and b!2106588 res!915765) b!2106586))

(declare-fun m!2564821 () Bool)

(assert (=> b!2106586 m!2564821))

(declare-fun m!2564823 () Bool)

(assert (=> b!2106585 m!2564823))

(declare-fun m!2564825 () Bool)

(assert (=> b!2106585 m!2564825))

(assert (=> b!2106585 m!2564823))

(assert (=> b!2106585 m!2564825))

(declare-fun m!2564827 () Bool)

(assert (=> b!2106585 m!2564827))

(declare-fun m!2564829 () Bool)

(assert (=> b!2106585 m!2564829))

(assert (=> b!2106587 m!2564823))

(assert (=> b!2106587 m!2564825))

(assert (=> b!2106587 m!2564827))

(assert (=> b!2106587 m!2564825))

(declare-fun m!2564831 () Bool)

(assert (=> b!2106587 m!2564831))

(declare-fun m!2564833 () Bool)

(assert (=> b!2106587 m!2564833))

(declare-fun m!2564835 () Bool)

(assert (=> b!2106587 m!2564835))

(declare-fun m!2564837 () Bool)

(assert (=> b!2106587 m!2564837))

(declare-fun m!2564839 () Bool)

(assert (=> b!2106587 m!2564839))

(assert (=> b!2106587 m!2564823))

(declare-fun m!2564841 () Bool)

(assert (=> b!2106587 m!2564841))

(assert (=> b!2106587 m!2564719))

(assert (=> d!641820 m!2564819))

(declare-fun m!2564843 () Bool)

(assert (=> d!641820 m!2564843))

(declare-fun m!2564845 () Bool)

(assert (=> d!641820 m!2564845))

(assert (=> d!641820 m!2564779))

(declare-fun m!2564847 () Bool)

(assert (=> b!2106588 m!2564847))

(assert (=> b!2106499 d!641820))

(declare-fun d!641822 () Bool)

(assert (=> d!641822 (= (valid!1787 (_2!13032 lt!791451)) (validCacheMapUp!224 (cache!2549 (_2!13032 lt!791451))))))

(declare-fun bs!440958 () Bool)

(assert (= bs!440958 d!641822))

(declare-fun m!2564849 () Bool)

(assert (=> bs!440958 m!2564849))

(assert (=> b!2106511 d!641822))

(declare-fun d!641824 () Bool)

(assert (=> d!641824 (= (isEmpty!14280 rulesArg!349) ((_ is Nil!23276) rulesArg!349))))

(assert (=> b!2106501 d!641824))

(declare-fun d!641826 () Bool)

(assert (=> d!641826 (= (valid!1786 (_3!1757 lt!791451)) (validCacheMapDown!222 (cache!2548 (_3!1757 lt!791451))))))

(declare-fun bs!440959 () Bool)

(assert (= bs!440959 d!641826))

(declare-fun m!2564851 () Bool)

(assert (=> bs!440959 m!2564851))

(assert (=> b!2106495 d!641826))

(declare-fun d!641828 () Bool)

(assert (=> d!641828 (= (inv!30796 (tag!4632 (h!28677 rulesArg!349))) (= (mod (str.len (value!129686 (tag!4632 (h!28677 rulesArg!349)))) 2) 0))))

(assert (=> b!2106514 d!641828))

(declare-fun d!641830 () Bool)

(declare-fun res!915768 () Bool)

(declare-fun e!1338906 () Bool)

(assert (=> d!641830 (=> (not res!915768) (not e!1338906))))

(declare-fun semiInverseModEq!1654 (Int Int) Bool)

(assert (=> d!641830 (= res!915768 (semiInverseModEq!1654 (toChars!5712 (transformation!4142 (h!28677 rulesArg!349))) (toValue!5853 (transformation!4142 (h!28677 rulesArg!349)))))))

(assert (=> d!641830 (= (inv!30799 (transformation!4142 (h!28677 rulesArg!349))) e!1338906)))

(declare-fun b!2106591 () Bool)

(declare-fun equivClasses!1581 (Int Int) Bool)

(assert (=> b!2106591 (= e!1338906 (equivClasses!1581 (toChars!5712 (transformation!4142 (h!28677 rulesArg!349))) (toValue!5853 (transformation!4142 (h!28677 rulesArg!349)))))))

(assert (= (and d!641830 res!915768) b!2106591))

(declare-fun m!2564853 () Bool)

(assert (=> d!641830 m!2564853))

(declare-fun m!2564855 () Bool)

(assert (=> b!2106591 m!2564855))

(assert (=> b!2106514 d!641830))

(declare-fun b!2106601 () Bool)

(declare-fun res!915779 () Bool)

(declare-fun e!1338913 () Bool)

(assert (=> b!2106601 (=> (not res!915779) (not e!1338913))))

(declare-fun head!4627 (List!23358) C!11292)

(assert (=> b!2106601 (= res!915779 (= (head!4627 lt!791450) (head!4627 lt!791450)))))

(declare-fun b!2106602 () Bool)

(declare-fun tail!3099 (List!23358) List!23358)

(assert (=> b!2106602 (= e!1338913 (isPrefix!2074 (tail!3099 lt!791450) (tail!3099 lt!791450)))))

(declare-fun b!2106600 () Bool)

(declare-fun e!1338914 () Bool)

(assert (=> b!2106600 (= e!1338914 e!1338913)))

(declare-fun res!915778 () Bool)

(assert (=> b!2106600 (=> (not res!915778) (not e!1338913))))

(assert (=> b!2106600 (= res!915778 (not ((_ is Nil!23274) lt!791450)))))

(declare-fun d!641832 () Bool)

(declare-fun e!1338915 () Bool)

(assert (=> d!641832 e!1338915))

(declare-fun res!915777 () Bool)

(assert (=> d!641832 (=> res!915777 e!1338915)))

(declare-fun lt!791501 () Bool)

(assert (=> d!641832 (= res!915777 (not lt!791501))))

(assert (=> d!641832 (= lt!791501 e!1338914)))

(declare-fun res!915780 () Bool)

(assert (=> d!641832 (=> res!915780 e!1338914)))

(assert (=> d!641832 (= res!915780 ((_ is Nil!23274) lt!791450))))

(assert (=> d!641832 (= (isPrefix!2074 lt!791450 lt!791450) lt!791501)))

(declare-fun b!2106603 () Bool)

(assert (=> b!2106603 (= e!1338915 (>= (size!18164 lt!791450) (size!18164 lt!791450)))))

(assert (= (and d!641832 (not res!915780)) b!2106600))

(assert (= (and b!2106600 res!915778) b!2106601))

(assert (= (and b!2106601 res!915779) b!2106602))

(assert (= (and d!641832 (not res!915777)) b!2106603))

(declare-fun m!2564857 () Bool)

(assert (=> b!2106601 m!2564857))

(assert (=> b!2106601 m!2564857))

(declare-fun m!2564859 () Bool)

(assert (=> b!2106602 m!2564859))

(assert (=> b!2106602 m!2564859))

(assert (=> b!2106602 m!2564859))

(assert (=> b!2106602 m!2564859))

(declare-fun m!2564861 () Bool)

(assert (=> b!2106602 m!2564861))

(assert (=> b!2106603 m!2564769))

(assert (=> b!2106603 m!2564769))

(assert (=> b!2106502 d!641832))

(declare-fun d!641834 () Bool)

(assert (=> d!641834 (isPrefix!2074 lt!791450 lt!791450)))

(declare-fun lt!791504 () Unit!37471)

(declare-fun choose!12629 (List!23358 List!23358) Unit!37471)

(assert (=> d!641834 (= lt!791504 (choose!12629 lt!791450 lt!791450))))

(assert (=> d!641834 (= (lemmaIsPrefixRefl!1392 lt!791450 lt!791450) lt!791504)))

(declare-fun bs!440960 () Bool)

(assert (= bs!440960 d!641834))

(assert (=> bs!440960 m!2564729))

(declare-fun m!2564863 () Bool)

(assert (=> bs!440960 m!2564863))

(assert (=> b!2106502 d!641834))

(declare-fun mapNonEmpty!10882 () Bool)

(declare-fun mapRes!10882 () Bool)

(declare-fun tp!639041 () Bool)

(declare-fun e!1338931 () Bool)

(assert (=> mapNonEmpty!10882 (= mapRes!10882 (and tp!639041 e!1338931))))

(declare-fun mapRest!10882 () (Array (_ BitVec 32) List!23356))

(declare-fun mapValue!10882 () List!23356)

(declare-fun mapKey!10882 () (_ BitVec 32))

(assert (=> mapNonEmpty!10882 (= mapRest!10879 (store mapRest!10882 mapKey!10882 mapValue!10882))))

(declare-fun setIsEmpty!13834 () Bool)

(declare-fun setRes!13835 () Bool)

(assert (=> setIsEmpty!13834 setRes!13835))

(declare-fun tp!639040 () Bool)

(declare-fun e!1338929 () Bool)

(declare-fun setElem!13834 () Context!2286)

(declare-fun setNonEmpty!13834 () Bool)

(declare-fun inv!30805 (Context!2286) Bool)

(assert (=> setNonEmpty!13834 (= setRes!13835 (and tp!639040 (inv!30805 setElem!13834) e!1338929))))

(declare-fun mapDefault!10882 () List!23356)

(declare-fun setRest!13834 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13834 (= (_2!13029 (h!28673 mapDefault!10882)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13834 true) setRest!13834))))

(declare-fun setRes!13834 () Bool)

(declare-fun e!1338928 () Bool)

(declare-fun setNonEmpty!13835 () Bool)

(declare-fun setElem!13835 () Context!2286)

(declare-fun tp!639047 () Bool)

(assert (=> setNonEmpty!13835 (= setRes!13834 (and tp!639047 (inv!30805 setElem!13835) e!1338928))))

(declare-fun setRest!13835 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13835 (= (_2!13029 (h!28673 mapValue!10882)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13835 true) setRest!13835))))

(declare-fun b!2106619 () Bool)

(declare-fun tp!639043 () Bool)

(assert (=> b!2106619 (= e!1338928 tp!639043)))

(declare-fun b!2106620 () Bool)

(declare-fun e!1338933 () Bool)

(declare-fun tp!639046 () Bool)

(assert (=> b!2106620 (= e!1338933 tp!639046)))

(declare-fun mapIsEmpty!10882 () Bool)

(assert (=> mapIsEmpty!10882 mapRes!10882))

(declare-fun b!2106621 () Bool)

(declare-fun e!1338930 () Bool)

(declare-fun tp_is_empty!9371 () Bool)

(declare-fun tp!639045 () Bool)

(declare-fun e!1338932 () Bool)

(assert (=> b!2106621 (= e!1338930 (and (inv!30805 (_1!13028 (_1!13029 (h!28673 mapDefault!10882)))) e!1338932 tp_is_empty!9371 setRes!13835 tp!639045))))

(declare-fun condSetEmpty!13835 () Bool)

(assert (=> b!2106621 (= condSetEmpty!13835 (= (_2!13029 (h!28673 mapDefault!10882)) ((as const (Array Context!2286 Bool)) false)))))

(declare-fun tp!639048 () Bool)

(declare-fun b!2106622 () Bool)

(assert (=> b!2106622 (= e!1338931 (and (inv!30805 (_1!13028 (_1!13029 (h!28673 mapValue!10882)))) e!1338933 tp_is_empty!9371 setRes!13834 tp!639048))))

(declare-fun condSetEmpty!13834 () Bool)

(assert (=> b!2106622 (= condSetEmpty!13834 (= (_2!13029 (h!28673 mapValue!10882)) ((as const (Array Context!2286 Bool)) false)))))

(declare-fun b!2106618 () Bool)

(declare-fun tp!639044 () Bool)

(assert (=> b!2106618 (= e!1338929 tp!639044)))

(declare-fun condMapEmpty!10882 () Bool)

(assert (=> mapNonEmpty!10879 (= condMapEmpty!10882 (= mapRest!10879 ((as const (Array (_ BitVec 32) List!23356)) mapDefault!10882)))))

(assert (=> mapNonEmpty!10879 (= tp!639003 (and e!1338930 mapRes!10882))))

(declare-fun b!2106623 () Bool)

(declare-fun tp!639042 () Bool)

(assert (=> b!2106623 (= e!1338932 tp!639042)))

(declare-fun setIsEmpty!13835 () Bool)

(assert (=> setIsEmpty!13835 setRes!13834))

(assert (= (and mapNonEmpty!10879 condMapEmpty!10882) mapIsEmpty!10882))

(assert (= (and mapNonEmpty!10879 (not condMapEmpty!10882)) mapNonEmpty!10882))

(assert (= b!2106622 b!2106620))

(assert (= (and b!2106622 condSetEmpty!13834) setIsEmpty!13835))

(assert (= (and b!2106622 (not condSetEmpty!13834)) setNonEmpty!13835))

(assert (= setNonEmpty!13835 b!2106619))

(assert (= (and mapNonEmpty!10882 ((_ is Cons!23272) mapValue!10882)) b!2106622))

(assert (= b!2106621 b!2106623))

(assert (= (and b!2106621 condSetEmpty!13835) setIsEmpty!13834))

(assert (= (and b!2106621 (not condSetEmpty!13835)) setNonEmpty!13834))

(assert (= setNonEmpty!13834 b!2106618))

(assert (= (and mapNonEmpty!10879 ((_ is Cons!23272) mapDefault!10882)) b!2106621))

(declare-fun m!2564865 () Bool)

(assert (=> setNonEmpty!13835 m!2564865))

(declare-fun m!2564867 () Bool)

(assert (=> b!2106622 m!2564867))

(declare-fun m!2564869 () Bool)

(assert (=> mapNonEmpty!10882 m!2564869))

(declare-fun m!2564871 () Bool)

(assert (=> setNonEmpty!13834 m!2564871))

(declare-fun m!2564873 () Bool)

(assert (=> b!2106621 m!2564873))

(declare-fun setIsEmpty!13838 () Bool)

(declare-fun setRes!13838 () Bool)

(assert (=> setIsEmpty!13838 setRes!13838))

(declare-fun e!1338941 () Bool)

(assert (=> mapNonEmpty!10879 (= tp!639007 e!1338941)))

(declare-fun tp!639057 () Bool)

(declare-fun e!1338940 () Bool)

(declare-fun setNonEmpty!13838 () Bool)

(declare-fun setElem!13838 () Context!2286)

(assert (=> setNonEmpty!13838 (= setRes!13838 (and tp!639057 (inv!30805 setElem!13838) e!1338940))))

(declare-fun setRest!13838 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13838 (= (_2!13029 (h!28673 mapValue!10879)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13838 true) setRest!13838))))

(declare-fun b!2106632 () Bool)

(declare-fun tp!639058 () Bool)

(assert (=> b!2106632 (= e!1338940 tp!639058)))

(declare-fun b!2106633 () Bool)

(declare-fun e!1338942 () Bool)

(declare-fun tp!639059 () Bool)

(assert (=> b!2106633 (= e!1338942 tp!639059)))

(declare-fun tp!639060 () Bool)

(declare-fun b!2106634 () Bool)

(assert (=> b!2106634 (= e!1338941 (and (inv!30805 (_1!13028 (_1!13029 (h!28673 mapValue!10879)))) e!1338942 tp_is_empty!9371 setRes!13838 tp!639060))))

(declare-fun condSetEmpty!13838 () Bool)

(assert (=> b!2106634 (= condSetEmpty!13838 (= (_2!13029 (h!28673 mapValue!10879)) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106634 b!2106633))

(assert (= (and b!2106634 condSetEmpty!13838) setIsEmpty!13838))

(assert (= (and b!2106634 (not condSetEmpty!13838)) setNonEmpty!13838))

(assert (= setNonEmpty!13838 b!2106632))

(assert (= (and mapNonEmpty!10879 ((_ is Cons!23272) mapValue!10879)) b!2106634))

(declare-fun m!2564875 () Bool)

(assert (=> setNonEmpty!13838 m!2564875))

(declare-fun m!2564877 () Bool)

(assert (=> b!2106634 m!2564877))

(declare-fun setIsEmpty!13843 () Bool)

(declare-fun setRes!13843 () Bool)

(assert (=> setIsEmpty!13843 setRes!13843))

(declare-fun setRes!13844 () Bool)

(declare-fun setNonEmpty!13843 () Bool)

(declare-fun setElem!13843 () Context!2286)

(declare-fun e!1338957 () Bool)

(declare-fun tp!639087 () Bool)

(assert (=> setNonEmpty!13843 (= setRes!13844 (and tp!639087 (inv!30805 setElem!13843) e!1338957))))

(declare-fun mapValue!10885 () List!23359)

(declare-fun setRest!13843 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13843 (= (_2!13031 (h!28676 mapValue!10885)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13843 true) setRest!13843))))

(declare-fun b!2106649 () Bool)

(declare-fun e!1338958 () Bool)

(declare-fun tp!639084 () Bool)

(assert (=> b!2106649 (= e!1338958 tp!639084)))

(declare-fun e!1338956 () Bool)

(declare-fun tp!639083 () Bool)

(declare-fun setElem!13844 () Context!2286)

(declare-fun setNonEmpty!13844 () Bool)

(assert (=> setNonEmpty!13844 (= setRes!13843 (and tp!639083 (inv!30805 setElem!13844) e!1338956))))

(declare-fun mapDefault!10885 () List!23359)

(declare-fun setRest!13844 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13844 (= (_2!13031 (h!28676 mapDefault!10885)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13844 true) setRest!13844))))

(declare-fun b!2106650 () Bool)

(declare-fun e!1338959 () Bool)

(declare-fun tp!639085 () Bool)

(assert (=> b!2106650 (= e!1338959 tp!639085)))

(declare-fun condMapEmpty!10885 () Bool)

(assert (=> mapNonEmpty!10878 (= condMapEmpty!10885 (= mapRest!10878 ((as const (Array (_ BitVec 32) List!23359)) mapDefault!10885)))))

(declare-fun e!1338960 () Bool)

(declare-fun mapRes!10885 () Bool)

(assert (=> mapNonEmpty!10878 (= tp!639020 (and e!1338960 mapRes!10885))))

(declare-fun mapNonEmpty!10885 () Bool)

(declare-fun tp!639093 () Bool)

(declare-fun e!1338955 () Bool)

(assert (=> mapNonEmpty!10885 (= mapRes!10885 (and tp!639093 e!1338955))))

(declare-fun mapKey!10885 () (_ BitVec 32))

(declare-fun mapRest!10885 () (Array (_ BitVec 32) List!23359))

(assert (=> mapNonEmpty!10885 (= mapRest!10878 (store mapRest!10885 mapKey!10885 mapValue!10885))))

(declare-fun tp!639088 () Bool)

(declare-fun tp!639092 () Bool)

(declare-fun b!2106651 () Bool)

(assert (=> b!2106651 (= e!1338955 (and tp!639092 (inv!30805 (_2!13027 (_1!13031 (h!28676 mapValue!10885)))) e!1338959 tp_is_empty!9371 setRes!13844 tp!639088))))

(declare-fun condSetEmpty!13843 () Bool)

(assert (=> b!2106651 (= condSetEmpty!13843 (= (_2!13031 (h!28676 mapValue!10885)) ((as const (Array Context!2286 Bool)) false)))))

(declare-fun setIsEmpty!13844 () Bool)

(assert (=> setIsEmpty!13844 setRes!13844))

(declare-fun b!2106652 () Bool)

(declare-fun tp!639086 () Bool)

(assert (=> b!2106652 (= e!1338957 tp!639086)))

(declare-fun b!2106653 () Bool)

(declare-fun tp!639089 () Bool)

(assert (=> b!2106653 (= e!1338956 tp!639089)))

(declare-fun mapIsEmpty!10885 () Bool)

(assert (=> mapIsEmpty!10885 mapRes!10885))

(declare-fun tp!639090 () Bool)

(declare-fun b!2106654 () Bool)

(declare-fun tp!639091 () Bool)

(assert (=> b!2106654 (= e!1338960 (and tp!639090 (inv!30805 (_2!13027 (_1!13031 (h!28676 mapDefault!10885)))) e!1338958 tp_is_empty!9371 setRes!13843 tp!639091))))

(declare-fun condSetEmpty!13844 () Bool)

(assert (=> b!2106654 (= condSetEmpty!13844 (= (_2!13031 (h!28676 mapDefault!10885)) ((as const (Array Context!2286 Bool)) false)))))

(assert (= (and mapNonEmpty!10878 condMapEmpty!10885) mapIsEmpty!10885))

(assert (= (and mapNonEmpty!10878 (not condMapEmpty!10885)) mapNonEmpty!10885))

(assert (= b!2106651 b!2106650))

(assert (= (and b!2106651 condSetEmpty!13843) setIsEmpty!13844))

(assert (= (and b!2106651 (not condSetEmpty!13843)) setNonEmpty!13843))

(assert (= setNonEmpty!13843 b!2106652))

(assert (= (and mapNonEmpty!10885 ((_ is Cons!23275) mapValue!10885)) b!2106651))

(assert (= b!2106654 b!2106649))

(assert (= (and b!2106654 condSetEmpty!13844) setIsEmpty!13843))

(assert (= (and b!2106654 (not condSetEmpty!13844)) setNonEmpty!13844))

(assert (= setNonEmpty!13844 b!2106653))

(assert (= (and mapNonEmpty!10878 ((_ is Cons!23275) mapDefault!10885)) b!2106654))

(declare-fun m!2564879 () Bool)

(assert (=> setNonEmpty!13844 m!2564879))

(declare-fun m!2564881 () Bool)

(assert (=> b!2106651 m!2564881))

(declare-fun m!2564883 () Bool)

(assert (=> b!2106654 m!2564883))

(declare-fun m!2564885 () Bool)

(assert (=> setNonEmpty!13843 m!2564885))

(declare-fun m!2564887 () Bool)

(assert (=> mapNonEmpty!10885 m!2564887))

(declare-fun setIsEmpty!13847 () Bool)

(declare-fun setRes!13847 () Bool)

(assert (=> setIsEmpty!13847 setRes!13847))

(declare-fun setNonEmpty!13847 () Bool)

(declare-fun tp!639108 () Bool)

(declare-fun setElem!13847 () Context!2286)

(declare-fun e!1338968 () Bool)

(assert (=> setNonEmpty!13847 (= setRes!13847 (and tp!639108 (inv!30805 setElem!13847) e!1338968))))

(declare-fun setRest!13847 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13847 (= (_2!13031 (h!28676 mapValue!10878)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13847 true) setRest!13847))))

(declare-fun b!2106664 () Bool)

(declare-fun tp!639104 () Bool)

(assert (=> b!2106664 (= e!1338968 tp!639104)))

(declare-fun b!2106665 () Bool)

(declare-fun e!1338967 () Bool)

(declare-fun tp!639107 () Bool)

(assert (=> b!2106665 (= e!1338967 tp!639107)))

(declare-fun e!1338969 () Bool)

(assert (=> mapNonEmpty!10878 (= tp!639002 e!1338969)))

(declare-fun tp!639105 () Bool)

(declare-fun tp!639106 () Bool)

(declare-fun b!2106663 () Bool)

(assert (=> b!2106663 (= e!1338969 (and tp!639105 (inv!30805 (_2!13027 (_1!13031 (h!28676 mapValue!10878)))) e!1338967 tp_is_empty!9371 setRes!13847 tp!639106))))

(declare-fun condSetEmpty!13847 () Bool)

(assert (=> b!2106663 (= condSetEmpty!13847 (= (_2!13031 (h!28676 mapValue!10878)) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106663 b!2106665))

(assert (= (and b!2106663 condSetEmpty!13847) setIsEmpty!13847))

(assert (= (and b!2106663 (not condSetEmpty!13847)) setNonEmpty!13847))

(assert (= setNonEmpty!13847 b!2106664))

(assert (= (and mapNonEmpty!10878 ((_ is Cons!23275) mapValue!10878)) b!2106663))

(declare-fun m!2564889 () Bool)

(assert (=> setNonEmpty!13847 m!2564889))

(declare-fun m!2564891 () Bool)

(assert (=> b!2106663 m!2564891))

(declare-fun tp!639115 () Bool)

(declare-fun b!2106674 () Bool)

(declare-fun tp!639117 () Bool)

(declare-fun e!1338974 () Bool)

(assert (=> b!2106674 (= e!1338974 (and (inv!30798 (left!18149 (c!338903 input!1444))) tp!639115 (inv!30798 (right!18479 (c!338903 input!1444))) tp!639117))))

(declare-fun b!2106676 () Bool)

(declare-fun e!1338975 () Bool)

(declare-fun tp!639116 () Bool)

(assert (=> b!2106676 (= e!1338975 tp!639116)))

(declare-fun b!2106675 () Bool)

(declare-fun inv!30806 (IArray!15449) Bool)

(assert (=> b!2106675 (= e!1338974 (and (inv!30806 (xs!10664 (c!338903 input!1444))) e!1338975))))

(assert (=> b!2106504 (= tp!639008 (and (inv!30798 (c!338903 input!1444)) e!1338974))))

(assert (= (and b!2106504 ((_ is Node!7722) (c!338903 input!1444))) b!2106674))

(assert (= b!2106675 b!2106676))

(assert (= (and b!2106504 ((_ is Leaf!11276) (c!338903 input!1444))) b!2106675))

(declare-fun m!2564893 () Bool)

(assert (=> b!2106674 m!2564893))

(declare-fun m!2564895 () Bool)

(assert (=> b!2106674 m!2564895))

(declare-fun m!2564897 () Bool)

(assert (=> b!2106675 m!2564897))

(assert (=> b!2106504 m!2564763))

(declare-fun setIsEmpty!13848 () Bool)

(declare-fun setRes!13848 () Bool)

(assert (=> setIsEmpty!13848 setRes!13848))

(declare-fun e!1338977 () Bool)

(assert (=> b!2106510 (= tp!639019 e!1338977)))

(declare-fun e!1338976 () Bool)

(declare-fun tp!639118 () Bool)

(declare-fun setElem!13848 () Context!2286)

(declare-fun setNonEmpty!13848 () Bool)

(assert (=> setNonEmpty!13848 (= setRes!13848 (and tp!639118 (inv!30805 setElem!13848) e!1338976))))

(declare-fun setRest!13848 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13848 (= (_2!13029 (h!28673 mapDefault!10879)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13848 true) setRest!13848))))

(declare-fun b!2106677 () Bool)

(declare-fun tp!639119 () Bool)

(assert (=> b!2106677 (= e!1338976 tp!639119)))

(declare-fun b!2106678 () Bool)

(declare-fun e!1338978 () Bool)

(declare-fun tp!639120 () Bool)

(assert (=> b!2106678 (= e!1338978 tp!639120)))

(declare-fun b!2106679 () Bool)

(declare-fun tp!639121 () Bool)

(assert (=> b!2106679 (= e!1338977 (and (inv!30805 (_1!13028 (_1!13029 (h!28673 mapDefault!10879)))) e!1338978 tp_is_empty!9371 setRes!13848 tp!639121))))

(declare-fun condSetEmpty!13848 () Bool)

(assert (=> b!2106679 (= condSetEmpty!13848 (= (_2!13029 (h!28673 mapDefault!10879)) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106679 b!2106678))

(assert (= (and b!2106679 condSetEmpty!13848) setIsEmpty!13848))

(assert (= (and b!2106679 (not condSetEmpty!13848)) setNonEmpty!13848))

(assert (= setNonEmpty!13848 b!2106677))

(assert (= (and b!2106510 ((_ is Cons!23272) mapDefault!10879)) b!2106679))

(declare-fun m!2564899 () Bool)

(assert (=> setNonEmpty!13848 m!2564899))

(declare-fun m!2564901 () Bool)

(assert (=> b!2106679 m!2564901))

(declare-fun setIsEmpty!13849 () Bool)

(declare-fun setRes!13849 () Bool)

(assert (=> setIsEmpty!13849 setRes!13849))

(declare-fun setNonEmpty!13849 () Bool)

(declare-fun e!1338980 () Bool)

(declare-fun tp!639126 () Bool)

(declare-fun setElem!13849 () Context!2286)

(assert (=> setNonEmpty!13849 (= setRes!13849 (and tp!639126 (inv!30805 setElem!13849) e!1338980))))

(declare-fun setRest!13849 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13849 (= (_2!13031 (h!28676 (zeroValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13849 true) setRest!13849))))

(declare-fun b!2106681 () Bool)

(declare-fun tp!639122 () Bool)

(assert (=> b!2106681 (= e!1338980 tp!639122)))

(declare-fun b!2106682 () Bool)

(declare-fun e!1338979 () Bool)

(declare-fun tp!639125 () Bool)

(assert (=> b!2106682 (= e!1338979 tp!639125)))

(declare-fun e!1338981 () Bool)

(assert (=> b!2106518 (= tp!639005 e!1338981)))

(declare-fun b!2106680 () Bool)

(declare-fun tp!639124 () Bool)

(declare-fun tp!639123 () Bool)

(assert (=> b!2106680 (= e!1338981 (and tp!639123 (inv!30805 (_2!13027 (_1!13031 (h!28676 (zeroValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))))) e!1338979 tp_is_empty!9371 setRes!13849 tp!639124))))

(declare-fun condSetEmpty!13849 () Bool)

(assert (=> b!2106680 (= condSetEmpty!13849 (= (_2!13031 (h!28676 (zeroValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106680 b!2106682))

(assert (= (and b!2106680 condSetEmpty!13849) setIsEmpty!13849))

(assert (= (and b!2106680 (not condSetEmpty!13849)) setNonEmpty!13849))

(assert (= setNonEmpty!13849 b!2106681))

(assert (= (and b!2106518 ((_ is Cons!23275) (zeroValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))) b!2106680))

(declare-fun m!2564903 () Bool)

(assert (=> setNonEmpty!13849 m!2564903))

(declare-fun m!2564905 () Bool)

(assert (=> b!2106680 m!2564905))

(declare-fun setIsEmpty!13850 () Bool)

(declare-fun setRes!13850 () Bool)

(assert (=> setIsEmpty!13850 setRes!13850))

(declare-fun setNonEmpty!13850 () Bool)

(declare-fun setElem!13850 () Context!2286)

(declare-fun tp!639131 () Bool)

(declare-fun e!1338983 () Bool)

(assert (=> setNonEmpty!13850 (= setRes!13850 (and tp!639131 (inv!30805 setElem!13850) e!1338983))))

(declare-fun setRest!13850 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13850 (= (_2!13031 (h!28676 (minValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13850 true) setRest!13850))))

(declare-fun b!2106684 () Bool)

(declare-fun tp!639127 () Bool)

(assert (=> b!2106684 (= e!1338983 tp!639127)))

(declare-fun b!2106685 () Bool)

(declare-fun e!1338982 () Bool)

(declare-fun tp!639130 () Bool)

(assert (=> b!2106685 (= e!1338982 tp!639130)))

(declare-fun e!1338984 () Bool)

(assert (=> b!2106518 (= tp!639013 e!1338984)))

(declare-fun tp!639128 () Bool)

(declare-fun tp!639129 () Bool)

(declare-fun b!2106683 () Bool)

(assert (=> b!2106683 (= e!1338984 (and tp!639128 (inv!30805 (_2!13027 (_1!13031 (h!28676 (minValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))))) e!1338982 tp_is_empty!9371 setRes!13850 tp!639129))))

(declare-fun condSetEmpty!13850 () Bool)

(assert (=> b!2106683 (= condSetEmpty!13850 (= (_2!13031 (h!28676 (minValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106683 b!2106685))

(assert (= (and b!2106683 condSetEmpty!13850) setIsEmpty!13850))

(assert (= (and b!2106683 (not condSetEmpty!13850)) setNonEmpty!13850))

(assert (= setNonEmpty!13850 b!2106684))

(assert (= (and b!2106518 ((_ is Cons!23275) (minValue!2512 (v!27825 (underlying!4703 (v!27826 (underlying!4704 (cache!2548 cacheDown!688)))))))) b!2106683))

(declare-fun m!2564907 () Bool)

(assert (=> setNonEmpty!13850 m!2564907))

(declare-fun m!2564909 () Bool)

(assert (=> b!2106683 m!2564909))

(declare-fun setIsEmpty!13851 () Bool)

(declare-fun setRes!13851 () Bool)

(assert (=> setIsEmpty!13851 setRes!13851))

(declare-fun e!1338986 () Bool)

(assert (=> b!2106509 (= tp!639009 e!1338986)))

(declare-fun tp!639132 () Bool)

(declare-fun setNonEmpty!13851 () Bool)

(declare-fun e!1338985 () Bool)

(declare-fun setElem!13851 () Context!2286)

(assert (=> setNonEmpty!13851 (= setRes!13851 (and tp!639132 (inv!30805 setElem!13851) e!1338985))))

(declare-fun setRest!13851 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13851 (= (_2!13029 (h!28673 (zeroValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13851 true) setRest!13851))))

(declare-fun b!2106686 () Bool)

(declare-fun tp!639133 () Bool)

(assert (=> b!2106686 (= e!1338985 tp!639133)))

(declare-fun b!2106687 () Bool)

(declare-fun e!1338987 () Bool)

(declare-fun tp!639134 () Bool)

(assert (=> b!2106687 (= e!1338987 tp!639134)))

(declare-fun tp!639135 () Bool)

(declare-fun b!2106688 () Bool)

(assert (=> b!2106688 (= e!1338986 (and (inv!30805 (_1!13028 (_1!13029 (h!28673 (zeroValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))))) e!1338987 tp_is_empty!9371 setRes!13851 tp!639135))))

(declare-fun condSetEmpty!13851 () Bool)

(assert (=> b!2106688 (= condSetEmpty!13851 (= (_2!13029 (h!28673 (zeroValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106688 b!2106687))

(assert (= (and b!2106688 condSetEmpty!13851) setIsEmpty!13851))

(assert (= (and b!2106688 (not condSetEmpty!13851)) setNonEmpty!13851))

(assert (= setNonEmpty!13851 b!2106686))

(assert (= (and b!2106509 ((_ is Cons!23272) (zeroValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))) b!2106688))

(declare-fun m!2564911 () Bool)

(assert (=> setNonEmpty!13851 m!2564911))

(declare-fun m!2564913 () Bool)

(assert (=> b!2106688 m!2564913))

(declare-fun setIsEmpty!13852 () Bool)

(declare-fun setRes!13852 () Bool)

(assert (=> setIsEmpty!13852 setRes!13852))

(declare-fun e!1338989 () Bool)

(assert (=> b!2106509 (= tp!639004 e!1338989)))

(declare-fun e!1338988 () Bool)

(declare-fun setElem!13852 () Context!2286)

(declare-fun tp!639136 () Bool)

(declare-fun setNonEmpty!13852 () Bool)

(assert (=> setNonEmpty!13852 (= setRes!13852 (and tp!639136 (inv!30805 setElem!13852) e!1338988))))

(declare-fun setRest!13852 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13852 (= (_2!13029 (h!28673 (minValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13852 true) setRest!13852))))

(declare-fun b!2106689 () Bool)

(declare-fun tp!639137 () Bool)

(assert (=> b!2106689 (= e!1338988 tp!639137)))

(declare-fun b!2106690 () Bool)

(declare-fun e!1338990 () Bool)

(declare-fun tp!639138 () Bool)

(assert (=> b!2106690 (= e!1338990 tp!639138)))

(declare-fun tp!639139 () Bool)

(declare-fun b!2106691 () Bool)

(assert (=> b!2106691 (= e!1338989 (and (inv!30805 (_1!13028 (_1!13029 (h!28673 (minValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))))) e!1338990 tp_is_empty!9371 setRes!13852 tp!639139))))

(declare-fun condSetEmpty!13852 () Bool)

(assert (=> b!2106691 (= condSetEmpty!13852 (= (_2!13029 (h!28673 (minValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106691 b!2106690))

(assert (= (and b!2106691 condSetEmpty!13852) setIsEmpty!13852))

(assert (= (and b!2106691 (not condSetEmpty!13852)) setNonEmpty!13852))

(assert (= setNonEmpty!13852 b!2106689))

(assert (= (and b!2106509 ((_ is Cons!23272) (minValue!2511 (v!27823 (underlying!4701 (v!27824 (underlying!4702 (cache!2549 cacheUp!675)))))))) b!2106691))

(declare-fun m!2564915 () Bool)

(assert (=> setNonEmpty!13852 m!2564915))

(declare-fun m!2564917 () Bool)

(assert (=> b!2106691 m!2564917))

(declare-fun b!2106704 () Bool)

(declare-fun e!1338993 () Bool)

(declare-fun tp!639153 () Bool)

(assert (=> b!2106704 (= e!1338993 tp!639153)))

(declare-fun b!2106702 () Bool)

(assert (=> b!2106702 (= e!1338993 tp_is_empty!9371)))

(declare-fun b!2106703 () Bool)

(declare-fun tp!639151 () Bool)

(declare-fun tp!639152 () Bool)

(assert (=> b!2106703 (= e!1338993 (and tp!639151 tp!639152))))

(assert (=> b!2106514 (= tp!639015 e!1338993)))

(declare-fun b!2106705 () Bool)

(declare-fun tp!639154 () Bool)

(declare-fun tp!639150 () Bool)

(assert (=> b!2106705 (= e!1338993 (and tp!639154 tp!639150))))

(assert (= (and b!2106514 ((_ is ElementMatch!5573) (regex!4142 (h!28677 rulesArg!349)))) b!2106702))

(assert (= (and b!2106514 ((_ is Concat!9851) (regex!4142 (h!28677 rulesArg!349)))) b!2106703))

(assert (= (and b!2106514 ((_ is Star!5573) (regex!4142 (h!28677 rulesArg!349)))) b!2106704))

(assert (= (and b!2106514 ((_ is Union!5573) (regex!4142 (h!28677 rulesArg!349)))) b!2106705))

(declare-fun b!2106706 () Bool)

(declare-fun e!1338994 () Bool)

(declare-fun tp!639155 () Bool)

(declare-fun tp!639157 () Bool)

(assert (=> b!2106706 (= e!1338994 (and (inv!30798 (left!18149 (c!338903 totalInput!482))) tp!639155 (inv!30798 (right!18479 (c!338903 totalInput!482))) tp!639157))))

(declare-fun b!2106708 () Bool)

(declare-fun e!1338995 () Bool)

(declare-fun tp!639156 () Bool)

(assert (=> b!2106708 (= e!1338995 tp!639156)))

(declare-fun b!2106707 () Bool)

(assert (=> b!2106707 (= e!1338994 (and (inv!30806 (xs!10664 (c!338903 totalInput!482))) e!1338995))))

(assert (=> b!2106500 (= tp!639006 (and (inv!30798 (c!338903 totalInput!482)) e!1338994))))

(assert (= (and b!2106500 ((_ is Node!7722) (c!338903 totalInput!482))) b!2106706))

(assert (= b!2106707 b!2106708))

(assert (= (and b!2106500 ((_ is Leaf!11276) (c!338903 totalInput!482))) b!2106707))

(declare-fun m!2564919 () Bool)

(assert (=> b!2106706 m!2564919))

(declare-fun m!2564921 () Bool)

(assert (=> b!2106706 m!2564921))

(declare-fun m!2564923 () Bool)

(assert (=> b!2106707 m!2564923))

(assert (=> b!2106500 m!2564747))

(declare-fun b!2106719 () Bool)

(declare-fun b_free!60581 () Bool)

(declare-fun b_next!61285 () Bool)

(assert (=> b!2106719 (= b_free!60581 (not b_next!61285))))

(declare-fun tp!639168 () Bool)

(declare-fun b_and!170143 () Bool)

(assert (=> b!2106719 (= tp!639168 b_and!170143)))

(declare-fun b_free!60583 () Bool)

(declare-fun b_next!61287 () Bool)

(assert (=> b!2106719 (= b_free!60583 (not b_next!61287))))

(declare-fun tp!639166 () Bool)

(declare-fun b_and!170145 () Bool)

(assert (=> b!2106719 (= tp!639166 b_and!170145)))

(declare-fun e!1339004 () Bool)

(assert (=> b!2106719 (= e!1339004 (and tp!639168 tp!639166))))

(declare-fun e!1339007 () Bool)

(declare-fun b!2106718 () Bool)

(declare-fun tp!639169 () Bool)

(assert (=> b!2106718 (= e!1339007 (and tp!639169 (inv!30796 (tag!4632 (h!28677 (t!195853 rulesArg!349)))) (inv!30799 (transformation!4142 (h!28677 (t!195853 rulesArg!349)))) e!1339004))))

(declare-fun b!2106717 () Bool)

(declare-fun e!1339005 () Bool)

(declare-fun tp!639167 () Bool)

(assert (=> b!2106717 (= e!1339005 (and e!1339007 tp!639167))))

(assert (=> b!2106494 (= tp!639021 e!1339005)))

(assert (= b!2106718 b!2106719))

(assert (= b!2106717 b!2106718))

(assert (= (and b!2106494 ((_ is Cons!23276) (t!195853 rulesArg!349))) b!2106717))

(declare-fun m!2564925 () Bool)

(assert (=> b!2106718 m!2564925))

(declare-fun m!2564927 () Bool)

(assert (=> b!2106718 m!2564927))

(declare-fun setIsEmpty!13853 () Bool)

(declare-fun setRes!13853 () Bool)

(assert (=> setIsEmpty!13853 setRes!13853))

(declare-fun tp!639174 () Bool)

(declare-fun setNonEmpty!13853 () Bool)

(declare-fun e!1339009 () Bool)

(declare-fun setElem!13853 () Context!2286)

(assert (=> setNonEmpty!13853 (= setRes!13853 (and tp!639174 (inv!30805 setElem!13853) e!1339009))))

(declare-fun setRest!13853 () (InoxSet Context!2286))

(assert (=> setNonEmpty!13853 (= (_2!13031 (h!28676 mapDefault!10878)) ((_ map or) (store ((as const (Array Context!2286 Bool)) false) setElem!13853 true) setRest!13853))))

(declare-fun b!2106721 () Bool)

(declare-fun tp!639170 () Bool)

(assert (=> b!2106721 (= e!1339009 tp!639170)))

(declare-fun b!2106722 () Bool)

(declare-fun e!1339008 () Bool)

(declare-fun tp!639173 () Bool)

(assert (=> b!2106722 (= e!1339008 tp!639173)))

(declare-fun e!1339010 () Bool)

(assert (=> b!2106517 (= tp!639010 e!1339010)))

(declare-fun tp!639172 () Bool)

(declare-fun tp!639171 () Bool)

(declare-fun b!2106720 () Bool)

(assert (=> b!2106720 (= e!1339010 (and tp!639171 (inv!30805 (_2!13027 (_1!13031 (h!28676 mapDefault!10878)))) e!1339008 tp_is_empty!9371 setRes!13853 tp!639172))))

(declare-fun condSetEmpty!13853 () Bool)

(assert (=> b!2106720 (= condSetEmpty!13853 (= (_2!13031 (h!28676 mapDefault!10878)) ((as const (Array Context!2286 Bool)) false)))))

(assert (= b!2106720 b!2106722))

(assert (= (and b!2106720 condSetEmpty!13853) setIsEmpty!13853))

(assert (= (and b!2106720 (not condSetEmpty!13853)) setNonEmpty!13853))

(assert (= setNonEmpty!13853 b!2106721))

(assert (= (and b!2106517 ((_ is Cons!23275) mapDefault!10878)) b!2106720))

(declare-fun m!2564929 () Bool)

(assert (=> setNonEmpty!13853 m!2564929))

(declare-fun m!2564931 () Bool)

(assert (=> b!2106720 m!2564931))

(check-sat (not d!641794) (not setNonEmpty!13843) (not b!2106720) (not b_next!61283) b_and!170145 (not b!2106717) (not setNonEmpty!13835) (not b!2106649) (not b!2106654) (not b!2106573) (not b!2106652) (not b!2106686) (not setNonEmpty!13848) (not b!2106601) (not setNonEmpty!13853) (not b!2106706) (not b!2106689) (not b!2106634) (not b!2106663) (not b!2106567) (not b!2106632) (not b!2106665) (not b!2106651) (not setNonEmpty!13834) (not b!2106688) b_and!170137 (not b!2106683) (not b!2106619) (not d!641820) (not b!2106678) (not bm!128387) (not d!641834) (not b!2106541) (not b!2106591) (not d!641786) (not setNonEmpty!13847) (not b!2106572) (not b!2106679) (not setNonEmpty!13851) (not b!2106538) (not b!2106718) b_and!170131 (not d!641798) (not b!2106585) (not setNonEmpty!13852) (not b!2106543) b_and!170135 (not b!2106664) (not b!2106620) (not setNonEmpty!13838) (not b!2106685) (not d!641810) (not b!2106523) (not b!2106570) b_and!170143 (not b!2106708) (not b!2106546) (not b!2106540) (not b!2106549) (not b!2106568) (not b_next!61279) (not b!2106569) (not b!2106682) (not b!2106681) (not b!2106721) (not b!2106680) (not b_next!61277) (not b_next!61287) (not b!2106674) (not b!2106586) (not b!2106676) (not b!2106622) (not b_next!61285) (not mapNonEmpty!10882) (not b!2106705) (not b!2106650) (not b!2106690) b_and!170141 (not b_next!61273) (not setNonEmpty!13844) (not b!2106528) (not b!2106677) (not b!2106684) (not b!2106621) tp_is_empty!9371 (not b!2106722) (not d!641826) (not b!2106603) b_and!170139 (not d!641790) (not b!2106691) (not setNonEmpty!13849) (not b!2106587) (not b!2106633) (not d!641788) (not b!2106500) (not b_next!61275) (not d!641818) b_and!170133 (not b!2106623) (not b!2106618) (not setNonEmpty!13850) (not b!2106588) (not b!2106504) (not b!2106653) (not d!641830) (not d!641822) (not b!2106602) (not b!2106571) (not b!2106707) (not b!2106704) (not b!2106703) (not b_next!61281) (not d!641792) (not b!2106687) (not mapNonEmpty!10885) (not b!2106529) (not b!2106675) (not d!641812))
(check-sat b_and!170137 b_and!170143 (not b_next!61279) (not b_next!61285) b_and!170139 (not b_next!61283) b_and!170145 (not b_next!61275) b_and!170133 (not b_next!61281) b_and!170131 b_and!170135 (not b_next!61277) (not b_next!61287) b_and!170141 (not b_next!61273))
