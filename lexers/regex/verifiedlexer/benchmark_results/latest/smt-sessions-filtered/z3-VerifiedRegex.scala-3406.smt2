; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192252 () Bool)

(assert start!192252)

(declare-fun b!1918330 () Bool)

(declare-fun b_free!54553 () Bool)

(declare-fun b_next!55257 () Bool)

(assert (=> b!1918330 (= b_free!54553 (not b_next!55257))))

(declare-fun tp!547695 () Bool)

(declare-fun b_and!149759 () Bool)

(assert (=> b!1918330 (= tp!547695 b_and!149759)))

(declare-fun b_free!54555 () Bool)

(declare-fun b_next!55259 () Bool)

(assert (=> b!1918330 (= b_free!54555 (not b_next!55259))))

(declare-fun tp!547694 () Bool)

(declare-fun b_and!149761 () Bool)

(assert (=> b!1918330 (= tp!547694 b_and!149761)))

(declare-fun b!1918328 () Bool)

(declare-fun b_free!54557 () Bool)

(declare-fun b_next!55261 () Bool)

(assert (=> b!1918328 (= b_free!54557 (not b_next!55261))))

(declare-fun tp!547696 () Bool)

(declare-fun b_and!149763 () Bool)

(assert (=> b!1918328 (= tp!547696 b_and!149763)))

(declare-fun b_free!54559 () Bool)

(declare-fun b_next!55263 () Bool)

(assert (=> b!1918328 (= b_free!54559 (not b_next!55263))))

(declare-fun tp!547687 () Bool)

(declare-fun b_and!149765 () Bool)

(assert (=> b!1918328 (= tp!547687 b_and!149765)))

(declare-fun b!1918337 () Bool)

(declare-fun b_free!54561 () Bool)

(declare-fun b_next!55265 () Bool)

(assert (=> b!1918337 (= b_free!54561 (not b_next!55265))))

(declare-fun tp!547689 () Bool)

(declare-fun b_and!149767 () Bool)

(assert (=> b!1918337 (= tp!547689 b_and!149767)))

(declare-fun b_free!54563 () Bool)

(declare-fun b_next!55267 () Bool)

(assert (=> b!1918337 (= b_free!54563 (not b_next!55267))))

(declare-fun tp!547691 () Bool)

(declare-fun b_and!149769 () Bool)

(assert (=> b!1918337 (= tp!547691 b_and!149769)))

(declare-fun b!1918315 () Bool)

(declare-fun e!1225849 () Bool)

(declare-fun e!1225870 () Bool)

(assert (=> b!1918315 (= e!1225849 (not e!1225870))))

(declare-fun res!857681 () Bool)

(assert (=> b!1918315 (=> res!857681 e!1225870)))

(declare-fun lt!735643 () Bool)

(declare-datatypes ((List!21820 0))(
  ( (Nil!21738) (Cons!21738 (h!27139 (_ BitVec 16)) (t!178613 List!21820)) )
))
(declare-datatypes ((TokenValue!4024 0))(
  ( (FloatLiteralValue!8048 (text!28613 List!21820)) (TokenValueExt!4023 (__x!13546 Int)) (Broken!20120 (value!122373 List!21820)) (Object!4105) (End!4024) (Def!4024) (Underscore!4024) (Match!4024) (Else!4024) (Error!4024) (Case!4024) (If!4024) (Extends!4024) (Abstract!4024) (Class!4024) (Val!4024) (DelimiterValue!8048 (del!4084 List!21820)) (KeywordValue!4030 (value!122374 List!21820)) (CommentValue!8048 (value!122375 List!21820)) (WhitespaceValue!8048 (value!122376 List!21820)) (IndentationValue!4024 (value!122377 List!21820)) (String!25237) (Int32!4024) (Broken!20121 (value!122378 List!21820)) (Boolean!4025) (Unit!36123) (OperatorValue!4027 (op!4084 List!21820)) (IdentifierValue!8048 (value!122379 List!21820)) (IdentifierValue!8049 (value!122380 List!21820)) (WhitespaceValue!8049 (value!122381 List!21820)) (True!8048) (False!8048) (Broken!20122 (value!122382 List!21820)) (Broken!20123 (value!122383 List!21820)) (True!8049) (RightBrace!4024) (RightBracket!4024) (Colon!4024) (Null!4024) (Comma!4024) (LeftBracket!4024) (False!8049) (LeftBrace!4024) (ImaginaryLiteralValue!4024 (text!28614 List!21820)) (StringLiteralValue!12072 (value!122384 List!21820)) (EOFValue!4024 (value!122385 List!21820)) (IdentValue!4024 (value!122386 List!21820)) (DelimiterValue!8049 (value!122387 List!21820)) (DedentValue!4024 (value!122388 List!21820)) (NewLineValue!4024 (value!122389 List!21820)) (IntegerValue!12072 (value!122390 (_ BitVec 32)) (text!28615 List!21820)) (IntegerValue!12073 (value!122391 Int) (text!28616 List!21820)) (Times!4024) (Or!4024) (Equal!4024) (Minus!4024) (Broken!20124 (value!122392 List!21820)) (And!4024) (Div!4024) (LessEqual!4024) (Mod!4024) (Concat!9337) (Not!4024) (Plus!4024) (SpaceValue!4024 (value!122393 List!21820)) (IntegerValue!12074 (value!122394 Int) (text!28617 List!21820)) (StringLiteralValue!12073 (text!28618 List!21820)) (FloatLiteralValue!8049 (text!28619 List!21820)) (BytesLiteralValue!4024 (value!122395 List!21820)) (CommentValue!8049 (value!122396 List!21820)) (StringLiteralValue!12074 (value!122397 List!21820)) (ErrorTokenValue!4024 (msg!4085 List!21820)) )
))
(declare-datatypes ((C!10772 0))(
  ( (C!10773 (val!6338 Int)) )
))
(declare-datatypes ((List!21821 0))(
  ( (Nil!21739) (Cons!21739 (h!27140 C!10772) (t!178614 List!21821)) )
))
(declare-datatypes ((String!25238 0))(
  ( (String!25239 (value!122398 String)) )
))
(declare-datatypes ((Regex!5313 0))(
  ( (ElementMatch!5313 (c!312089 C!10772)) (Concat!9338 (regOne!11138 Regex!5313) (regTwo!11138 Regex!5313)) (EmptyExpr!5313) (Star!5313 (reg!5642 Regex!5313)) (EmptyLang!5313) (Union!5313 (regOne!11139 Regex!5313) (regTwo!11139 Regex!5313)) )
))
(declare-datatypes ((IArray!14527 0))(
  ( (IArray!14528 (innerList!7321 List!21821)) )
))
(declare-datatypes ((Conc!7261 0))(
  ( (Node!7261 (left!17339 Conc!7261) (right!17669 Conc!7261) (csize!14752 Int) (cheight!7472 Int)) (Leaf!10668 (xs!10155 IArray!14527) (csize!14753 Int)) (Empty!7261) )
))
(declare-datatypes ((BalanceConc!14338 0))(
  ( (BalanceConc!14339 (c!312090 Conc!7261)) )
))
(declare-datatypes ((TokenValueInjection!7632 0))(
  ( (TokenValueInjection!7633 (toValue!5517 Int) (toChars!5376 Int)) )
))
(declare-datatypes ((Rule!7576 0))(
  ( (Rule!7577 (regex!3888 Regex!5313) (tag!4328 String!25238) (isSeparator!3888 Bool) (transformation!3888 TokenValueInjection!7632)) )
))
(declare-datatypes ((Token!7328 0))(
  ( (Token!7329 (value!122399 TokenValue!4024) (rule!6091 Rule!7576) (size!17034 Int) (originalCharacters!4695 List!21821)) )
))
(declare-datatypes ((List!21822 0))(
  ( (Nil!21740) (Cons!21740 (h!27141 Token!7328) (t!178615 List!21822)) )
))
(declare-fun tokens!598 () List!21822)

(declare-datatypes ((tuple2!20440 0))(
  ( (tuple2!20441 (_1!11689 Token!7328) (_2!11689 List!21821)) )
))
(declare-datatypes ((Option!4481 0))(
  ( (None!4480) (Some!4480 (v!26553 tuple2!20440)) )
))
(declare-fun lt!735654 () Option!4481)

(get-info :version)

(assert (=> b!1918315 (= res!857681 (or (and (not lt!735643) (= (_1!11689 (v!26553 lt!735654)) (h!27141 tokens!598))) (and (not lt!735643) (not (= (_1!11689 (v!26553 lt!735654)) (h!27141 tokens!598)))) ((_ is None!4480) lt!735654)))))

(assert (=> b!1918315 (= lt!735643 (not ((_ is Some!4480) lt!735654)))))

(declare-datatypes ((LexerInterface!3501 0))(
  ( (LexerInterfaceExt!3498 (__x!13547 Int)) (Lexer!3499) )
))
(declare-fun thiss!23328 () LexerInterface!3501)

(declare-datatypes ((List!21823 0))(
  ( (Nil!21741) (Cons!21741 (h!27142 Rule!7576) (t!178616 List!21823)) )
))
(declare-fun rules!3198 () List!21823)

(declare-fun lt!735652 () List!21821)

(declare-fun separatorToken!354 () Token!7328)

(declare-fun maxPrefix!1947 (LexerInterface!3501 List!21823 List!21821) Option!4481)

(declare-fun ++!5843 (List!21821 List!21821) List!21821)

(declare-fun printWithSeparatorTokenWhenNeededList!544 (LexerInterface!3501 List!21823 List!21822 Token!7328) List!21821)

(assert (=> b!1918315 (= lt!735654 (maxPrefix!1947 thiss!23328 rules!3198 (++!5843 lt!735652 (printWithSeparatorTokenWhenNeededList!544 thiss!23328 rules!3198 (t!178615 tokens!598) separatorToken!354))))))

(declare-fun e!1225860 () Bool)

(assert (=> b!1918315 e!1225860))

(declare-fun res!857693 () Bool)

(assert (=> b!1918315 (=> (not res!857693) (not e!1225860))))

(declare-datatypes ((Option!4482 0))(
  ( (None!4481) (Some!4481 (v!26554 Rule!7576)) )
))
(declare-fun lt!735640 () Option!4482)

(declare-fun isDefined!3779 (Option!4482) Bool)

(assert (=> b!1918315 (= res!857693 (isDefined!3779 lt!735640))))

(declare-fun getRuleFromTag!731 (LexerInterface!3501 List!21823 String!25238) Option!4482)

(assert (=> b!1918315 (= lt!735640 (getRuleFromTag!731 thiss!23328 rules!3198 (tag!4328 (rule!6091 (h!27141 tokens!598)))))))

(declare-datatypes ((Unit!36124 0))(
  ( (Unit!36125) )
))
(declare-fun lt!735646 () Unit!36124)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!731 (LexerInterface!3501 List!21823 List!21821 Token!7328) Unit!36124)

(assert (=> b!1918315 (= lt!735646 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!731 thiss!23328 rules!3198 lt!735652 (h!27141 tokens!598)))))

(declare-fun e!1225869 () Bool)

(assert (=> b!1918315 e!1225869))

(declare-fun res!857689 () Bool)

(assert (=> b!1918315 (=> (not res!857689) (not e!1225869))))

(declare-fun lt!735647 () Option!4481)

(declare-fun isDefined!3780 (Option!4481) Bool)

(assert (=> b!1918315 (= res!857689 (isDefined!3780 lt!735647))))

(assert (=> b!1918315 (= lt!735647 (maxPrefix!1947 thiss!23328 rules!3198 lt!735652))))

(declare-fun lt!735641 () BalanceConc!14338)

(declare-fun list!8820 (BalanceConc!14338) List!21821)

(assert (=> b!1918315 (= lt!735652 (list!8820 lt!735641))))

(declare-fun e!1225865 () Bool)

(assert (=> b!1918315 e!1225865))

(declare-fun res!857690 () Bool)

(assert (=> b!1918315 (=> (not res!857690) (not e!1225865))))

(declare-fun lt!735644 () Option!4482)

(assert (=> b!1918315 (= res!857690 (isDefined!3779 lt!735644))))

(assert (=> b!1918315 (= lt!735644 (getRuleFromTag!731 thiss!23328 rules!3198 (tag!4328 (rule!6091 separatorToken!354))))))

(declare-fun lt!735649 () List!21821)

(declare-fun lt!735648 () Unit!36124)

(assert (=> b!1918315 (= lt!735648 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!731 thiss!23328 rules!3198 lt!735649 separatorToken!354))))

(declare-fun charsOf!2444 (Token!7328) BalanceConc!14338)

(assert (=> b!1918315 (= lt!735649 (list!8820 (charsOf!2444 separatorToken!354)))))

(declare-fun lt!735645 () Unit!36124)

(declare-fun lemmaEqSameImage!596 (TokenValueInjection!7632 BalanceConc!14338 BalanceConc!14338) Unit!36124)

(declare-fun seqFromList!2760 (List!21821) BalanceConc!14338)

(assert (=> b!1918315 (= lt!735645 (lemmaEqSameImage!596 (transformation!3888 (rule!6091 (h!27141 tokens!598))) lt!735641 (seqFromList!2760 (originalCharacters!4695 (h!27141 tokens!598)))))))

(declare-fun lt!735653 () Unit!36124)

(declare-fun lemmaSemiInverse!867 (TokenValueInjection!7632 BalanceConc!14338) Unit!36124)

(assert (=> b!1918315 (= lt!735653 (lemmaSemiInverse!867 (transformation!3888 (rule!6091 (h!27141 tokens!598))) lt!735641))))

(assert (=> b!1918315 (= lt!735641 (charsOf!2444 (h!27141 tokens!598)))))

(declare-fun b!1918316 () Bool)

(declare-fun e!1225859 () Bool)

(declare-fun tp!547692 () Bool)

(declare-fun e!1225852 () Bool)

(declare-fun inv!28823 (String!25238) Bool)

(declare-fun inv!28826 (TokenValueInjection!7632) Bool)

(assert (=> b!1918316 (= e!1225859 (and tp!547692 (inv!28823 (tag!4328 (h!27142 rules!3198))) (inv!28826 (transformation!3888 (h!27142 rules!3198))) e!1225852))))

(declare-fun b!1918317 () Bool)

(declare-fun e!1225855 () Bool)

(declare-fun e!1225867 () Bool)

(declare-fun tp!547698 () Bool)

(declare-fun inv!21 (TokenValue!4024) Bool)

(assert (=> b!1918317 (= e!1225867 (and (inv!21 (value!122399 separatorToken!354)) e!1225855 tp!547698))))

(declare-fun tp!547688 () Bool)

(declare-fun e!1225868 () Bool)

(declare-fun b!1918318 () Bool)

(assert (=> b!1918318 (= e!1225855 (and tp!547688 (inv!28823 (tag!4328 (rule!6091 separatorToken!354))) (inv!28826 (transformation!3888 (rule!6091 separatorToken!354))) e!1225868))))

(declare-fun b!1918319 () Bool)

(declare-fun e!1225861 () Bool)

(assert (=> b!1918319 (= e!1225860 e!1225861)))

(declare-fun res!857680 () Bool)

(assert (=> b!1918319 (=> (not res!857680) (not e!1225861))))

(declare-fun lt!735642 () Rule!7576)

(declare-fun matchR!2599 (Regex!5313 List!21821) Bool)

(assert (=> b!1918319 (= res!857680 (matchR!2599 (regex!3888 lt!735642) lt!735652))))

(declare-fun get!6832 (Option!4482) Rule!7576)

(assert (=> b!1918319 (= lt!735642 (get!6832 lt!735640))))

(declare-fun b!1918320 () Bool)

(declare-fun e!1225863 () Bool)

(declare-fun tp!547693 () Bool)

(assert (=> b!1918320 (= e!1225863 (and e!1225859 tp!547693))))

(declare-fun b!1918321 () Bool)

(declare-fun res!857691 () Bool)

(assert (=> b!1918321 (=> (not res!857691) (not e!1225849))))

(declare-fun rulesProduceEachTokenIndividuallyList!1232 (LexerInterface!3501 List!21823 List!21822) Bool)

(assert (=> b!1918321 (= res!857691 (rulesProduceEachTokenIndividuallyList!1232 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1918323 () Bool)

(declare-fun res!857688 () Bool)

(assert (=> b!1918323 (=> res!857688 e!1225870)))

(declare-fun isEmpty!13381 (List!21822) Bool)

(assert (=> b!1918323 (= res!857688 (isEmpty!13381 tokens!598))))

(declare-fun b!1918324 () Bool)

(declare-fun res!857682 () Bool)

(assert (=> b!1918324 (=> (not res!857682) (not e!1225849))))

(declare-fun lambda!74867 () Int)

(declare-fun forall!4584 (List!21822 Int) Bool)

(assert (=> b!1918324 (= res!857682 (forall!4584 tokens!598 lambda!74867))))

(declare-fun b!1918325 () Bool)

(declare-fun res!857686 () Bool)

(assert (=> b!1918325 (=> (not res!857686) (not e!1225849))))

(declare-fun sepAndNonSepRulesDisjointChars!986 (List!21823 List!21823) Bool)

(assert (=> b!1918325 (= res!857686 (sepAndNonSepRulesDisjointChars!986 rules!3198 rules!3198))))

(declare-fun b!1918326 () Bool)

(declare-fun res!857694 () Bool)

(assert (=> b!1918326 (=> (not res!857694) (not e!1225849))))

(declare-fun rulesInvariant!3108 (LexerInterface!3501 List!21823) Bool)

(assert (=> b!1918326 (= res!857694 (rulesInvariant!3108 thiss!23328 rules!3198))))

(declare-fun b!1918327 () Bool)

(declare-fun e!1225866 () Bool)

(declare-fun lt!735650 () Rule!7576)

(assert (=> b!1918327 (= e!1225866 (= (rule!6091 separatorToken!354) lt!735650))))

(declare-fun e!1225864 () Bool)

(assert (=> b!1918328 (= e!1225864 (and tp!547696 tp!547687))))

(declare-fun b!1918329 () Bool)

(declare-fun res!857679 () Bool)

(assert (=> b!1918329 (=> (not res!857679) (not e!1225849))))

(assert (=> b!1918329 (= res!857679 ((_ is Cons!21740) tokens!598))))

(assert (=> b!1918330 (= e!1225868 (and tp!547695 tp!547694))))

(declare-fun b!1918331 () Bool)

(declare-fun get!6833 (Option!4481) tuple2!20440)

(assert (=> b!1918331 (= e!1225869 (= (_1!11689 (get!6833 lt!735647)) (h!27141 tokens!598)))))

(declare-fun b!1918332 () Bool)

(assert (=> b!1918332 (= e!1225865 e!1225866)))

(declare-fun res!857692 () Bool)

(assert (=> b!1918332 (=> (not res!857692) (not e!1225866))))

(assert (=> b!1918332 (= res!857692 (matchR!2599 (regex!3888 lt!735650) lt!735649))))

(assert (=> b!1918332 (= lt!735650 (get!6832 lt!735644))))

(declare-fun e!1225857 () Bool)

(declare-fun tp!547690 () Bool)

(declare-fun e!1225858 () Bool)

(declare-fun b!1918333 () Bool)

(assert (=> b!1918333 (= e!1225858 (and (inv!21 (value!122399 (h!27141 tokens!598))) e!1225857 tp!547690))))

(declare-fun b!1918334 () Bool)

(declare-fun res!857684 () Bool)

(assert (=> b!1918334 (=> (not res!857684) (not e!1225849))))

(declare-fun rulesProduceIndividualToken!1673 (LexerInterface!3501 List!21823 Token!7328) Bool)

(assert (=> b!1918334 (= res!857684 (rulesProduceIndividualToken!1673 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!857687 () Bool)

(assert (=> start!192252 (=> (not res!857687) (not e!1225849))))

(assert (=> start!192252 (= res!857687 ((_ is Lexer!3499) thiss!23328))))

(assert (=> start!192252 e!1225849))

(assert (=> start!192252 true))

(assert (=> start!192252 e!1225863))

(declare-fun e!1225862 () Bool)

(assert (=> start!192252 e!1225862))

(declare-fun inv!28827 (Token!7328) Bool)

(assert (=> start!192252 (and (inv!28827 separatorToken!354) e!1225867)))

(declare-fun b!1918322 () Bool)

(declare-fun tp!547697 () Bool)

(assert (=> b!1918322 (= e!1225862 (and (inv!28827 (h!27141 tokens!598)) e!1225858 tp!547697))))

(declare-fun b!1918335 () Bool)

(declare-fun rulesValidInductive!1316 (LexerInterface!3501 List!21823) Bool)

(assert (=> b!1918335 (= e!1225870 (rulesValidInductive!1316 thiss!23328 rules!3198))))

(declare-fun lt!735651 () List!21821)

(assert (=> b!1918335 (= lt!735651 (printWithSeparatorTokenWhenNeededList!544 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun b!1918336 () Bool)

(declare-fun res!857683 () Bool)

(assert (=> b!1918336 (=> (not res!857683) (not e!1225849))))

(assert (=> b!1918336 (= res!857683 (isSeparator!3888 (rule!6091 separatorToken!354)))))

(assert (=> b!1918337 (= e!1225852 (and tp!547689 tp!547691))))

(declare-fun b!1918338 () Bool)

(assert (=> b!1918338 (= e!1225861 (= (rule!6091 (h!27141 tokens!598)) lt!735642))))

(declare-fun tp!547686 () Bool)

(declare-fun b!1918339 () Bool)

(assert (=> b!1918339 (= e!1225857 (and tp!547686 (inv!28823 (tag!4328 (rule!6091 (h!27141 tokens!598)))) (inv!28826 (transformation!3888 (rule!6091 (h!27141 tokens!598)))) e!1225864))))

(declare-fun b!1918340 () Bool)

(declare-fun res!857685 () Bool)

(assert (=> b!1918340 (=> (not res!857685) (not e!1225849))))

(declare-fun isEmpty!13382 (List!21823) Bool)

(assert (=> b!1918340 (= res!857685 (not (isEmpty!13382 rules!3198)))))

(assert (= (and start!192252 res!857687) b!1918340))

(assert (= (and b!1918340 res!857685) b!1918326))

(assert (= (and b!1918326 res!857694) b!1918321))

(assert (= (and b!1918321 res!857691) b!1918334))

(assert (= (and b!1918334 res!857684) b!1918336))

(assert (= (and b!1918336 res!857683) b!1918324))

(assert (= (and b!1918324 res!857682) b!1918325))

(assert (= (and b!1918325 res!857686) b!1918329))

(assert (= (and b!1918329 res!857679) b!1918315))

(assert (= (and b!1918315 res!857690) b!1918332))

(assert (= (and b!1918332 res!857692) b!1918327))

(assert (= (and b!1918315 res!857689) b!1918331))

(assert (= (and b!1918315 res!857693) b!1918319))

(assert (= (and b!1918319 res!857680) b!1918338))

(assert (= (and b!1918315 (not res!857681)) b!1918323))

(assert (= (and b!1918323 (not res!857688)) b!1918335))

(assert (= b!1918316 b!1918337))

(assert (= b!1918320 b!1918316))

(assert (= (and start!192252 ((_ is Cons!21741) rules!3198)) b!1918320))

(assert (= b!1918339 b!1918328))

(assert (= b!1918333 b!1918339))

(assert (= b!1918322 b!1918333))

(assert (= (and start!192252 ((_ is Cons!21740) tokens!598)) b!1918322))

(assert (= b!1918318 b!1918330))

(assert (= b!1918317 b!1918318))

(assert (= start!192252 b!1918317))

(declare-fun m!2353703 () Bool)

(assert (=> b!1918332 m!2353703))

(declare-fun m!2353705 () Bool)

(assert (=> b!1918332 m!2353705))

(declare-fun m!2353707 () Bool)

(assert (=> b!1918340 m!2353707))

(declare-fun m!2353709 () Bool)

(assert (=> b!1918334 m!2353709))

(declare-fun m!2353711 () Bool)

(assert (=> b!1918318 m!2353711))

(declare-fun m!2353713 () Bool)

(assert (=> b!1918318 m!2353713))

(declare-fun m!2353715 () Bool)

(assert (=> b!1918317 m!2353715))

(declare-fun m!2353717 () Bool)

(assert (=> b!1918325 m!2353717))

(declare-fun m!2353719 () Bool)

(assert (=> b!1918324 m!2353719))

(declare-fun m!2353721 () Bool)

(assert (=> start!192252 m!2353721))

(declare-fun m!2353723 () Bool)

(assert (=> b!1918339 m!2353723))

(declare-fun m!2353725 () Bool)

(assert (=> b!1918339 m!2353725))

(declare-fun m!2353727 () Bool)

(assert (=> b!1918319 m!2353727))

(declare-fun m!2353729 () Bool)

(assert (=> b!1918319 m!2353729))

(declare-fun m!2353731 () Bool)

(assert (=> b!1918316 m!2353731))

(declare-fun m!2353733 () Bool)

(assert (=> b!1918316 m!2353733))

(declare-fun m!2353735 () Bool)

(assert (=> b!1918322 m!2353735))

(declare-fun m!2353737 () Bool)

(assert (=> b!1918331 m!2353737))

(declare-fun m!2353739 () Bool)

(assert (=> b!1918333 m!2353739))

(declare-fun m!2353741 () Bool)

(assert (=> b!1918321 m!2353741))

(declare-fun m!2353743 () Bool)

(assert (=> b!1918315 m!2353743))

(declare-fun m!2353745 () Bool)

(assert (=> b!1918315 m!2353745))

(declare-fun m!2353747 () Bool)

(assert (=> b!1918315 m!2353747))

(declare-fun m!2353749 () Bool)

(assert (=> b!1918315 m!2353749))

(declare-fun m!2353751 () Bool)

(assert (=> b!1918315 m!2353751))

(declare-fun m!2353753 () Bool)

(assert (=> b!1918315 m!2353753))

(declare-fun m!2353755 () Bool)

(assert (=> b!1918315 m!2353755))

(declare-fun m!2353757 () Bool)

(assert (=> b!1918315 m!2353757))

(assert (=> b!1918315 m!2353743))

(declare-fun m!2353759 () Bool)

(assert (=> b!1918315 m!2353759))

(declare-fun m!2353761 () Bool)

(assert (=> b!1918315 m!2353761))

(assert (=> b!1918315 m!2353759))

(declare-fun m!2353763 () Bool)

(assert (=> b!1918315 m!2353763))

(declare-fun m!2353765 () Bool)

(assert (=> b!1918315 m!2353765))

(declare-fun m!2353767 () Bool)

(assert (=> b!1918315 m!2353767))

(declare-fun m!2353769 () Bool)

(assert (=> b!1918315 m!2353769))

(declare-fun m!2353771 () Bool)

(assert (=> b!1918315 m!2353771))

(assert (=> b!1918315 m!2353745))

(declare-fun m!2353773 () Bool)

(assert (=> b!1918315 m!2353773))

(declare-fun m!2353775 () Bool)

(assert (=> b!1918315 m!2353775))

(assert (=> b!1918315 m!2353747))

(declare-fun m!2353777 () Bool)

(assert (=> b!1918315 m!2353777))

(declare-fun m!2353779 () Bool)

(assert (=> b!1918323 m!2353779))

(declare-fun m!2353781 () Bool)

(assert (=> b!1918326 m!2353781))

(declare-fun m!2353783 () Bool)

(assert (=> b!1918335 m!2353783))

(declare-fun m!2353785 () Bool)

(assert (=> b!1918335 m!2353785))

(check-sat (not b!1918317) b_and!149767 b_and!149761 (not b!1918339) (not b_next!55267) (not b!1918326) (not b!1918322) (not b!1918323) (not b!1918325) (not b!1918321) (not b!1918332) (not b!1918340) (not b!1918335) b_and!149765 b_and!149763 (not b!1918334) (not b!1918331) (not b!1918320) (not b_next!55259) (not b!1918324) b_and!149759 b_and!149769 (not start!192252) (not b_next!55257) (not b!1918316) (not b!1918315) (not b!1918333) (not b!1918319) (not b_next!55261) (not b_next!55263) (not b!1918318) (not b_next!55265))
(check-sat b_and!149767 b_and!149761 (not b_next!55267) (not b_next!55259) (not b_next!55257) (not b_next!55265) b_and!149765 b_and!149763 b_and!149759 b_and!149769 (not b_next!55261) (not b_next!55263))
