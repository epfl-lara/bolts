; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54940 () Bool)

(assert start!54940)

(declare-fun b!588657 () Bool)

(declare-fun b_free!16477 () Bool)

(declare-fun b_next!16493 () Bool)

(assert (=> b!588657 (= b_free!16477 (not b_next!16493))))

(declare-fun tp!183636 () Bool)

(declare-fun b_and!57995 () Bool)

(assert (=> b!588657 (= tp!183636 b_and!57995)))

(declare-fun b_free!16479 () Bool)

(declare-fun b_next!16495 () Bool)

(assert (=> b!588657 (= b_free!16479 (not b_next!16495))))

(declare-fun tp!183631 () Bool)

(declare-fun b_and!57997 () Bool)

(assert (=> b!588657 (= tp!183631 b_and!57997)))

(declare-fun b!588653 () Bool)

(declare-fun b_free!16481 () Bool)

(declare-fun b_next!16497 () Bool)

(assert (=> b!588653 (= b_free!16481 (not b_next!16497))))

(declare-fun tp!183635 () Bool)

(declare-fun b_and!57999 () Bool)

(assert (=> b!588653 (= tp!183635 b_and!57999)))

(declare-fun b_free!16483 () Bool)

(declare-fun b_next!16499 () Bool)

(assert (=> b!588653 (= b_free!16483 (not b_next!16499))))

(declare-fun tp!183629 () Bool)

(declare-fun b_and!58001 () Bool)

(assert (=> b!588653 (= tp!183629 b_and!58001)))

(declare-fun b!588639 () Bool)

(declare-fun e!355848 () Bool)

(declare-fun e!355852 () Bool)

(assert (=> b!588639 (= e!355848 e!355852)))

(declare-fun res!253638 () Bool)

(assert (=> b!588639 (=> (not res!253638) (not e!355852))))

(declare-datatypes ((String!7548 0))(
  ( (String!7549 (value!37245 String)) )
))
(declare-datatypes ((C!3864 0))(
  ( (C!3865 (val!2158 Int)) )
))
(declare-datatypes ((Regex!1471 0))(
  ( (ElementMatch!1471 (c!109933 C!3864)) (Concat!2632 (regOne!3454 Regex!1471) (regTwo!3454 Regex!1471)) (EmptyExpr!1471) (Star!1471 (reg!1800 Regex!1471)) (EmptyLang!1471) (Union!1471 (regOne!3455 Regex!1471) (regTwo!3455 Regex!1471)) )
))
(declare-datatypes ((List!5812 0))(
  ( (Nil!5802) (Cons!5802 (h!11203 (_ BitVec 16)) (t!78765 List!5812)) )
))
(declare-datatypes ((List!5813 0))(
  ( (Nil!5803) (Cons!5803 (h!11204 C!3864) (t!78766 List!5813)) )
))
(declare-datatypes ((IArray!3709 0))(
  ( (IArray!3710 (innerList!1912 List!5813)) )
))
(declare-datatypes ((Conc!1854 0))(
  ( (Node!1854 (left!4723 Conc!1854) (right!5053 Conc!1854) (csize!3938 Int) (cheight!2065 Int)) (Leaf!2930 (xs!4491 IArray!3709) (csize!3939 Int)) (Empty!1854) )
))
(declare-datatypes ((BalanceConc!3716 0))(
  ( (BalanceConc!3717 (c!109934 Conc!1854)) )
))
(declare-datatypes ((TokenValue!1161 0))(
  ( (FloatLiteralValue!2322 (text!8572 List!5812)) (TokenValueExt!1160 (__x!4220 Int)) (Broken!5805 (value!37246 List!5812)) (Object!1170) (End!1161) (Def!1161) (Underscore!1161) (Match!1161) (Else!1161) (Error!1161) (Case!1161) (If!1161) (Extends!1161) (Abstract!1161) (Class!1161) (Val!1161) (DelimiterValue!2322 (del!1221 List!5812)) (KeywordValue!1167 (value!37247 List!5812)) (CommentValue!2322 (value!37248 List!5812)) (WhitespaceValue!2322 (value!37249 List!5812)) (IndentationValue!1161 (value!37250 List!5812)) (String!7550) (Int32!1161) (Broken!5806 (value!37251 List!5812)) (Boolean!1162) (Unit!10534) (OperatorValue!1164 (op!1221 List!5812)) (IdentifierValue!2322 (value!37252 List!5812)) (IdentifierValue!2323 (value!37253 List!5812)) (WhitespaceValue!2323 (value!37254 List!5812)) (True!2322) (False!2322) (Broken!5807 (value!37255 List!5812)) (Broken!5808 (value!37256 List!5812)) (True!2323) (RightBrace!1161) (RightBracket!1161) (Colon!1161) (Null!1161) (Comma!1161) (LeftBracket!1161) (False!2323) (LeftBrace!1161) (ImaginaryLiteralValue!1161 (text!8573 List!5812)) (StringLiteralValue!3483 (value!37257 List!5812)) (EOFValue!1161 (value!37258 List!5812)) (IdentValue!1161 (value!37259 List!5812)) (DelimiterValue!2323 (value!37260 List!5812)) (DedentValue!1161 (value!37261 List!5812)) (NewLineValue!1161 (value!37262 List!5812)) (IntegerValue!3483 (value!37263 (_ BitVec 32)) (text!8574 List!5812)) (IntegerValue!3484 (value!37264 Int) (text!8575 List!5812)) (Times!1161) (Or!1161) (Equal!1161) (Minus!1161) (Broken!5809 (value!37265 List!5812)) (And!1161) (Div!1161) (LessEqual!1161) (Mod!1161) (Concat!2633) (Not!1161) (Plus!1161) (SpaceValue!1161 (value!37266 List!5812)) (IntegerValue!3485 (value!37267 Int) (text!8576 List!5812)) (StringLiteralValue!3484 (text!8577 List!5812)) (FloatLiteralValue!2323 (text!8578 List!5812)) (BytesLiteralValue!1161 (value!37268 List!5812)) (CommentValue!2323 (value!37269 List!5812)) (StringLiteralValue!3485 (value!37270 List!5812)) (ErrorTokenValue!1161 (msg!1222 List!5812)) )
))
(declare-datatypes ((TokenValueInjection!2090 0))(
  ( (TokenValueInjection!2091 (toValue!2020 Int) (toChars!1879 Int)) )
))
(declare-datatypes ((Rule!2074 0))(
  ( (Rule!2075 (regex!1137 Regex!1471) (tag!1399 String!7548) (isSeparator!1137 Bool) (transformation!1137 TokenValueInjection!2090)) )
))
(declare-datatypes ((Token!2010 0))(
  ( (Token!2011 (value!37271 TokenValue!1161) (rule!1903 Rule!2074) (size!4604 Int) (originalCharacters!1176 List!5813)) )
))
(declare-datatypes ((tuple2!6760 0))(
  ( (tuple2!6761 (_1!3644 Token!2010) (_2!3644 List!5813)) )
))
(declare-datatypes ((Option!1488 0))(
  ( (None!1487) (Some!1487 (v!16366 tuple2!6760)) )
))
(declare-fun lt!249408 () Option!1488)

(declare-fun isDefined!1299 (Option!1488) Bool)

(assert (=> b!588639 (= res!253638 (isDefined!1299 lt!249408))))

(declare-datatypes ((List!5814 0))(
  ( (Nil!5804) (Cons!5804 (h!11205 Rule!2074) (t!78767 List!5814)) )
))
(declare-fun rules!3103 () List!5814)

(declare-datatypes ((LexerInterface!1023 0))(
  ( (LexerInterfaceExt!1020 (__x!4221 Int)) (Lexer!1021) )
))
(declare-fun thiss!22590 () LexerInterface!1023)

(declare-fun lt!249409 () List!5813)

(declare-fun maxPrefix!721 (LexerInterface!1023 List!5814 List!5813) Option!1488)

(assert (=> b!588639 (= lt!249408 (maxPrefix!721 thiss!22590 rules!3103 lt!249409))))

(declare-fun input!2705 () List!5813)

(declare-fun suffix!1342 () List!5813)

(declare-fun ++!1625 (List!5813 List!5813) List!5813)

(assert (=> b!588639 (= lt!249409 (++!1625 input!2705 suffix!1342))))

(declare-fun b!588640 () Bool)

(declare-fun res!253642 () Bool)

(declare-fun e!355859 () Bool)

(assert (=> b!588640 (=> (not res!253642) (not e!355859))))

(declare-fun isEmpty!4189 (List!5814) Bool)

(assert (=> b!588640 (= res!253642 (not (isEmpty!4189 rules!3103)))))

(declare-fun b!588641 () Bool)

(declare-datatypes ((Unit!10535 0))(
  ( (Unit!10536) )
))
(declare-fun e!355855 () Unit!10535)

(declare-fun Unit!10537 () Unit!10535)

(assert (=> b!588641 (= e!355855 Unit!10537)))

(assert (=> b!588641 false))

(declare-fun e!355845 () Bool)

(declare-fun b!588642 () Bool)

(declare-fun token!491 () Token!2010)

(declare-fun e!355860 () Bool)

(declare-fun tp!183628 () Bool)

(declare-fun inv!7335 (String!7548) Bool)

(declare-fun inv!7338 (TokenValueInjection!2090) Bool)

(assert (=> b!588642 (= e!355860 (and tp!183628 (inv!7335 (tag!1399 (rule!1903 token!491))) (inv!7338 (transformation!1137 (rule!1903 token!491))) e!355845))))

(declare-fun b!588643 () Bool)

(declare-fun res!253640 () Bool)

(declare-fun e!355847 () Bool)

(assert (=> b!588643 (=> (not res!253640) (not e!355847))))

(declare-fun lt!249403 () List!5813)

(assert (=> b!588643 (= res!253640 (= (++!1625 lt!249403 suffix!1342) lt!249409))))

(declare-fun b!588644 () Bool)

(declare-fun res!253646 () Bool)

(assert (=> b!588644 (=> (not res!253646) (not e!355859))))

(declare-fun rulesInvariant!986 (LexerInterface!1023 List!5814) Bool)

(assert (=> b!588644 (= res!253646 (rulesInvariant!986 thiss!22590 rules!3103))))

(declare-fun e!355851 () Bool)

(declare-fun e!355849 () Bool)

(declare-fun tp!183633 () Bool)

(declare-fun b!588645 () Bool)

(assert (=> b!588645 (= e!355849 (and tp!183633 (inv!7335 (tag!1399 (h!11205 rules!3103))) (inv!7338 (transformation!1137 (h!11205 rules!3103))) e!355851))))

(declare-fun b!588646 () Bool)

(declare-fun res!253645 () Bool)

(assert (=> b!588646 (=> (not res!253645) (not e!355859))))

(declare-fun isEmpty!4190 (List!5813) Bool)

(assert (=> b!588646 (= res!253645 (not (isEmpty!4190 input!2705)))))

(declare-fun b!588647 () Bool)

(declare-fun e!355854 () Bool)

(declare-fun tp_is_empty!3297 () Bool)

(declare-fun tp!183632 () Bool)

(assert (=> b!588647 (= e!355854 (and tp_is_empty!3297 tp!183632))))

(declare-fun res!253644 () Bool)

(assert (=> start!54940 (=> (not res!253644) (not e!355859))))

(get-info :version)

(assert (=> start!54940 (= res!253644 ((_ is Lexer!1021) thiss!22590))))

(assert (=> start!54940 e!355859))

(declare-fun e!355857 () Bool)

(assert (=> start!54940 e!355857))

(declare-fun e!355856 () Bool)

(assert (=> start!54940 e!355856))

(declare-fun e!355846 () Bool)

(declare-fun inv!7339 (Token!2010) Bool)

(assert (=> start!54940 (and (inv!7339 token!491) e!355846)))

(assert (=> start!54940 true))

(assert (=> start!54940 e!355854))

(declare-fun b!588648 () Bool)

(declare-fun e!355858 () Bool)

(assert (=> b!588648 (= e!355858 e!355847)))

(declare-fun res!253641 () Bool)

(assert (=> b!588648 (=> (not res!253641) (not e!355847))))

(declare-fun lt!249405 () Option!1488)

(assert (=> b!588648 (= res!253641 ((_ is Some!1487) lt!249405))))

(assert (=> b!588648 (= lt!249405 (maxPrefix!721 thiss!22590 rules!3103 input!2705))))

(declare-fun b!588649 () Bool)

(assert (=> b!588649 (= e!355852 e!355858)))

(declare-fun res!253643 () Bool)

(assert (=> b!588649 (=> (not res!253643) (not e!355858))))

(declare-fun lt!249398 () tuple2!6760)

(assert (=> b!588649 (= res!253643 (and (= (_1!3644 lt!249398) token!491) (= (_2!3644 lt!249398) suffix!1342)))))

(declare-fun get!2220 (Option!1488) tuple2!6760)

(assert (=> b!588649 (= lt!249398 (get!2220 lt!249408))))

(declare-fun b!588650 () Bool)

(declare-fun Unit!10538 () Unit!10535)

(assert (=> b!588650 (= e!355855 Unit!10538)))

(declare-fun b!588651 () Bool)

(declare-fun tp!183627 () Bool)

(assert (=> b!588651 (= e!355856 (and e!355849 tp!183627))))

(declare-fun b!588652 () Bool)

(declare-fun tp!183634 () Bool)

(assert (=> b!588652 (= e!355857 (and tp_is_empty!3297 tp!183634))))

(assert (=> b!588653 (= e!355845 (and tp!183635 tp!183629))))

(declare-fun b!588654 () Bool)

(declare-fun tp!183630 () Bool)

(declare-fun inv!21 (TokenValue!1161) Bool)

(assert (=> b!588654 (= e!355846 (and (inv!21 (value!37271 token!491)) e!355860 tp!183630))))

(declare-fun b!588655 () Bool)

(declare-fun contains!1367 (List!5814 Rule!2074) Bool)

(assert (=> b!588655 (= e!355847 (not (contains!1367 rules!3103 (rule!1903 token!491))))))

(declare-fun ruleValid!335 (LexerInterface!1023 Rule!2074) Bool)

(assert (=> b!588655 (ruleValid!335 thiss!22590 (rule!1903 (_1!3644 (v!16366 lt!249405))))))

(declare-fun lt!249407 () Unit!10535)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!182 (LexerInterface!1023 Rule!2074 List!5814) Unit!10535)

(assert (=> b!588655 (= lt!249407 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!182 thiss!22590 (rule!1903 (_1!3644 (v!16366 lt!249405))) rules!3103))))

(declare-fun isPrefix!765 (List!5813 List!5813) Bool)

(assert (=> b!588655 (isPrefix!765 input!2705 input!2705)))

(declare-fun lt!249402 () Unit!10535)

(declare-fun lemmaIsPrefixRefl!501 (List!5813 List!5813) Unit!10535)

(assert (=> b!588655 (= lt!249402 (lemmaIsPrefixRefl!501 input!2705 input!2705))))

(declare-fun lt!249412 () List!5813)

(assert (=> b!588655 (= (_2!3644 (v!16366 lt!249405)) lt!249412)))

(declare-fun lt!249399 () List!5813)

(declare-fun lt!249400 () Unit!10535)

(declare-fun lemmaSamePrefixThenSameSuffix!478 (List!5813 List!5813 List!5813 List!5813 List!5813) Unit!10535)

(assert (=> b!588655 (= lt!249400 (lemmaSamePrefixThenSameSuffix!478 lt!249399 (_2!3644 (v!16366 lt!249405)) lt!249399 lt!249412 input!2705))))

(declare-fun getSuffix!282 (List!5813 List!5813) List!5813)

(assert (=> b!588655 (= lt!249412 (getSuffix!282 input!2705 lt!249399))))

(assert (=> b!588655 (isPrefix!765 lt!249399 (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405))))))

(declare-fun lt!249411 () Unit!10535)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!610 (List!5813 List!5813) Unit!10535)

(assert (=> b!588655 (= lt!249411 (lemmaConcatTwoListThenFirstIsPrefix!610 lt!249399 (_2!3644 (v!16366 lt!249405))))))

(declare-fun lt!249404 () Unit!10535)

(declare-fun lemmaCharactersSize!196 (Token!2010) Unit!10535)

(assert (=> b!588655 (= lt!249404 (lemmaCharactersSize!196 token!491))))

(declare-fun lt!249410 () Unit!10535)

(assert (=> b!588655 (= lt!249410 (lemmaCharactersSize!196 (_1!3644 (v!16366 lt!249405))))))

(declare-fun lt!249406 () Unit!10535)

(assert (=> b!588655 (= lt!249406 e!355855)))

(declare-fun c!109932 () Bool)

(declare-fun size!4605 (List!5813) Int)

(assert (=> b!588655 (= c!109932 (> (size!4605 lt!249399) (size!4605 lt!249403)))))

(declare-fun list!2424 (BalanceConc!3716) List!5813)

(declare-fun charsOf!766 (Token!2010) BalanceConc!3716)

(assert (=> b!588655 (= lt!249399 (list!2424 (charsOf!766 (_1!3644 (v!16366 lt!249405)))))))

(assert (=> b!588655 (= lt!249405 (Some!1487 (v!16366 lt!249405)))))

(declare-fun lt!249401 () Unit!10535)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!210 (List!5813 List!5813 List!5813 List!5813) Unit!10535)

(assert (=> b!588655 (= lt!249401 (lemmaConcatSameAndSameSizesThenSameLists!210 lt!249403 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!588656 () Bool)

(assert (=> b!588656 (= e!355859 e!355848)))

(declare-fun res!253639 () Bool)

(assert (=> b!588656 (=> (not res!253639) (not e!355848))))

(assert (=> b!588656 (= res!253639 (= lt!249403 input!2705))))

(assert (=> b!588656 (= lt!249403 (list!2424 (charsOf!766 token!491)))))

(assert (=> b!588657 (= e!355851 (and tp!183636 tp!183631))))

(assert (= (and start!54940 res!253644) b!588640))

(assert (= (and b!588640 res!253642) b!588644))

(assert (= (and b!588644 res!253646) b!588646))

(assert (= (and b!588646 res!253645) b!588656))

(assert (= (and b!588656 res!253639) b!588639))

(assert (= (and b!588639 res!253638) b!588649))

(assert (= (and b!588649 res!253643) b!588648))

(assert (= (and b!588648 res!253641) b!588643))

(assert (= (and b!588643 res!253640) b!588655))

(assert (= (and b!588655 c!109932) b!588641))

(assert (= (and b!588655 (not c!109932)) b!588650))

(assert (= (and start!54940 ((_ is Cons!5803) suffix!1342)) b!588652))

(assert (= b!588645 b!588657))

(assert (= b!588651 b!588645))

(assert (= (and start!54940 ((_ is Cons!5804) rules!3103)) b!588651))

(assert (= b!588642 b!588653))

(assert (= b!588654 b!588642))

(assert (= start!54940 b!588654))

(assert (= (and start!54940 ((_ is Cons!5803) input!2705)) b!588647))

(declare-fun m!849257 () Bool)

(assert (=> b!588654 m!849257))

(declare-fun m!849259 () Bool)

(assert (=> b!588649 m!849259))

(declare-fun m!849261 () Bool)

(assert (=> start!54940 m!849261))

(declare-fun m!849263 () Bool)

(assert (=> b!588644 m!849263))

(declare-fun m!849265 () Bool)

(assert (=> b!588655 m!849265))

(declare-fun m!849267 () Bool)

(assert (=> b!588655 m!849267))

(declare-fun m!849269 () Bool)

(assert (=> b!588655 m!849269))

(declare-fun m!849271 () Bool)

(assert (=> b!588655 m!849271))

(declare-fun m!849273 () Bool)

(assert (=> b!588655 m!849273))

(declare-fun m!849275 () Bool)

(assert (=> b!588655 m!849275))

(declare-fun m!849277 () Bool)

(assert (=> b!588655 m!849277))

(declare-fun m!849279 () Bool)

(assert (=> b!588655 m!849279))

(declare-fun m!849281 () Bool)

(assert (=> b!588655 m!849281))

(declare-fun m!849283 () Bool)

(assert (=> b!588655 m!849283))

(declare-fun m!849285 () Bool)

(assert (=> b!588655 m!849285))

(declare-fun m!849287 () Bool)

(assert (=> b!588655 m!849287))

(declare-fun m!849289 () Bool)

(assert (=> b!588655 m!849289))

(declare-fun m!849291 () Bool)

(assert (=> b!588655 m!849291))

(declare-fun m!849293 () Bool)

(assert (=> b!588655 m!849293))

(assert (=> b!588655 m!849277))

(declare-fun m!849295 () Bool)

(assert (=> b!588655 m!849295))

(declare-fun m!849297 () Bool)

(assert (=> b!588655 m!849297))

(assert (=> b!588655 m!849281))

(declare-fun m!849299 () Bool)

(assert (=> b!588646 m!849299))

(declare-fun m!849301 () Bool)

(assert (=> b!588656 m!849301))

(assert (=> b!588656 m!849301))

(declare-fun m!849303 () Bool)

(assert (=> b!588656 m!849303))

(declare-fun m!849305 () Bool)

(assert (=> b!588648 m!849305))

(declare-fun m!849307 () Bool)

(assert (=> b!588642 m!849307))

(declare-fun m!849309 () Bool)

(assert (=> b!588642 m!849309))

(declare-fun m!849311 () Bool)

(assert (=> b!588645 m!849311))

(declare-fun m!849313 () Bool)

(assert (=> b!588645 m!849313))

(declare-fun m!849315 () Bool)

(assert (=> b!588640 m!849315))

(declare-fun m!849317 () Bool)

(assert (=> b!588643 m!849317))

(declare-fun m!849319 () Bool)

(assert (=> b!588639 m!849319))

(declare-fun m!849321 () Bool)

(assert (=> b!588639 m!849321))

(declare-fun m!849323 () Bool)

(assert (=> b!588639 m!849323))

(check-sat (not start!54940) b_and!57999 (not b!588644) (not b!588646) (not b!588639) (not b_next!16497) b_and!58001 (not b_next!16493) (not b_next!16499) (not b!588647) (not b!588656) (not b!588648) tp_is_empty!3297 (not b!588655) b_and!57995 (not b!588643) (not b!588642) (not b!588652) b_and!57997 (not b!588640) (not b_next!16495) (not b!588654) (not b!588645) (not b!588649) (not b!588651))
(check-sat b_and!57999 b_and!57995 (not b_next!16497) b_and!58001 (not b_next!16493) (not b_next!16499) b_and!57997 (not b_next!16495))
(get-model)

(declare-fun b!588668 () Bool)

(declare-fun e!355869 () Bool)

(declare-fun e!355870 () Bool)

(assert (=> b!588668 (= e!355869 e!355870)))

(declare-fun c!109940 () Bool)

(assert (=> b!588668 (= c!109940 ((_ is IntegerValue!3484) (value!37271 token!491)))))

(declare-fun b!588669 () Bool)

(declare-fun inv!16 (TokenValue!1161) Bool)

(assert (=> b!588669 (= e!355869 (inv!16 (value!37271 token!491)))))

(declare-fun b!588670 () Bool)

(declare-fun e!355868 () Bool)

(declare-fun inv!15 (TokenValue!1161) Bool)

(assert (=> b!588670 (= e!355868 (inv!15 (value!37271 token!491)))))

(declare-fun d!207032 () Bool)

(declare-fun c!109939 () Bool)

(assert (=> d!207032 (= c!109939 ((_ is IntegerValue!3483) (value!37271 token!491)))))

(assert (=> d!207032 (= (inv!21 (value!37271 token!491)) e!355869)))

(declare-fun b!588671 () Bool)

(declare-fun res!253653 () Bool)

(assert (=> b!588671 (=> res!253653 e!355868)))

(assert (=> b!588671 (= res!253653 (not ((_ is IntegerValue!3485) (value!37271 token!491))))))

(assert (=> b!588671 (= e!355870 e!355868)))

(declare-fun b!588672 () Bool)

(declare-fun inv!17 (TokenValue!1161) Bool)

(assert (=> b!588672 (= e!355870 (inv!17 (value!37271 token!491)))))

(assert (= (and d!207032 c!109939) b!588669))

(assert (= (and d!207032 (not c!109939)) b!588668))

(assert (= (and b!588668 c!109940) b!588672))

(assert (= (and b!588668 (not c!109940)) b!588671))

(assert (= (and b!588671 (not res!253653)) b!588670))

(declare-fun m!849325 () Bool)

(assert (=> b!588669 m!849325))

(declare-fun m!849327 () Bool)

(assert (=> b!588670 m!849327))

(declare-fun m!849329 () Bool)

(assert (=> b!588672 m!849329))

(assert (=> b!588654 d!207032))

(declare-fun b!588681 () Bool)

(declare-fun e!355875 () List!5813)

(assert (=> b!588681 (= e!355875 suffix!1342)))

(declare-fun d!207034 () Bool)

(declare-fun e!355876 () Bool)

(assert (=> d!207034 e!355876))

(declare-fun res!253662 () Bool)

(assert (=> d!207034 (=> (not res!253662) (not e!355876))))

(declare-fun lt!249415 () List!5813)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1039 (List!5813) (InoxSet C!3864))

(assert (=> d!207034 (= res!253662 (= (content!1039 lt!249415) ((_ map or) (content!1039 lt!249403) (content!1039 suffix!1342))))))

(assert (=> d!207034 (= lt!249415 e!355875)))

(declare-fun c!109943 () Bool)

(assert (=> d!207034 (= c!109943 ((_ is Nil!5803) lt!249403))))

(assert (=> d!207034 (= (++!1625 lt!249403 suffix!1342) lt!249415)))

(declare-fun b!588682 () Bool)

(assert (=> b!588682 (= e!355875 (Cons!5803 (h!11204 lt!249403) (++!1625 (t!78766 lt!249403) suffix!1342)))))

(declare-fun b!588683 () Bool)

(declare-fun res!253661 () Bool)

(assert (=> b!588683 (=> (not res!253661) (not e!355876))))

(assert (=> b!588683 (= res!253661 (= (size!4605 lt!249415) (+ (size!4605 lt!249403) (size!4605 suffix!1342))))))

(declare-fun b!588684 () Bool)

(assert (=> b!588684 (= e!355876 (or (not (= suffix!1342 Nil!5803)) (= lt!249415 lt!249403)))))

(assert (= (and d!207034 c!109943) b!588681))

(assert (= (and d!207034 (not c!109943)) b!588682))

(assert (= (and d!207034 res!253662) b!588683))

(assert (= (and b!588683 res!253661) b!588684))

(declare-fun m!849331 () Bool)

(assert (=> d!207034 m!849331))

(declare-fun m!849333 () Bool)

(assert (=> d!207034 m!849333))

(declare-fun m!849335 () Bool)

(assert (=> d!207034 m!849335))

(declare-fun m!849337 () Bool)

(assert (=> b!588682 m!849337))

(declare-fun m!849339 () Bool)

(assert (=> b!588683 m!849339))

(assert (=> b!588683 m!849273))

(declare-fun m!849341 () Bool)

(assert (=> b!588683 m!849341))

(assert (=> b!588643 d!207034))

(declare-fun d!207036 () Bool)

(declare-fun res!253669 () Bool)

(declare-fun e!355881 () Bool)

(assert (=> d!207036 (=> (not res!253669) (not e!355881))))

(declare-fun rulesValid!409 (LexerInterface!1023 List!5814) Bool)

(assert (=> d!207036 (= res!253669 (rulesValid!409 thiss!22590 rules!3103))))

(assert (=> d!207036 (= (rulesInvariant!986 thiss!22590 rules!3103) e!355881)))

(declare-fun b!588691 () Bool)

(declare-datatypes ((List!5816 0))(
  ( (Nil!5806) (Cons!5806 (h!11207 String!7548) (t!78793 List!5816)) )
))
(declare-fun noDuplicateTag!409 (LexerInterface!1023 List!5814 List!5816) Bool)

(assert (=> b!588691 (= e!355881 (noDuplicateTag!409 thiss!22590 rules!3103 Nil!5806))))

(assert (= (and d!207036 res!253669) b!588691))

(declare-fun m!849343 () Bool)

(assert (=> d!207036 m!849343))

(declare-fun m!849345 () Bool)

(assert (=> b!588691 m!849345))

(assert (=> b!588644 d!207036))

(declare-fun d!207040 () Bool)

(declare-fun res!253676 () Bool)

(declare-fun e!355888 () Bool)

(assert (=> d!207040 (=> (not res!253676) (not e!355888))))

(assert (=> d!207040 (= res!253676 (not (isEmpty!4190 (originalCharacters!1176 token!491))))))

(assert (=> d!207040 (= (inv!7339 token!491) e!355888)))

(declare-fun b!588703 () Bool)

(declare-fun res!253677 () Bool)

(assert (=> b!588703 (=> (not res!253677) (not e!355888))))

(declare-fun dynLambda!3386 (Int TokenValue!1161) BalanceConc!3716)

(assert (=> b!588703 (= res!253677 (= (originalCharacters!1176 token!491) (list!2424 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 token!491))) (value!37271 token!491)))))))

(declare-fun b!588704 () Bool)

(assert (=> b!588704 (= e!355888 (= (size!4604 token!491) (size!4605 (originalCharacters!1176 token!491))))))

(assert (= (and d!207040 res!253676) b!588703))

(assert (= (and b!588703 res!253677) b!588704))

(declare-fun b_lambda!23179 () Bool)

(assert (=> (not b_lambda!23179) (not b!588703)))

(declare-fun t!78773 () Bool)

(declare-fun tb!51499 () Bool)

(assert (=> (and b!588657 (= (toChars!1879 (transformation!1137 (h!11205 rules!3103))) (toChars!1879 (transformation!1137 (rule!1903 token!491)))) t!78773) tb!51499))

(declare-fun b!588717 () Bool)

(declare-fun e!355895 () Bool)

(declare-fun tp!183642 () Bool)

(declare-fun inv!7342 (Conc!1854) Bool)

(assert (=> b!588717 (= e!355895 (and (inv!7342 (c!109934 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 token!491))) (value!37271 token!491)))) tp!183642))))

(declare-fun result!57724 () Bool)

(declare-fun inv!7343 (BalanceConc!3716) Bool)

(assert (=> tb!51499 (= result!57724 (and (inv!7343 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 token!491))) (value!37271 token!491))) e!355895))))

(assert (= tb!51499 b!588717))

(declare-fun m!849359 () Bool)

(assert (=> b!588717 m!849359))

(declare-fun m!849361 () Bool)

(assert (=> tb!51499 m!849361))

(assert (=> b!588703 t!78773))

(declare-fun b_and!58007 () Bool)

(assert (= b_and!57997 (and (=> t!78773 result!57724) b_and!58007)))

(declare-fun t!78775 () Bool)

(declare-fun tb!51501 () Bool)

(assert (=> (and b!588653 (= (toChars!1879 (transformation!1137 (rule!1903 token!491))) (toChars!1879 (transformation!1137 (rule!1903 token!491)))) t!78775) tb!51501))

(declare-fun result!57728 () Bool)

(assert (= result!57728 result!57724))

(assert (=> b!588703 t!78775))

(declare-fun b_and!58009 () Bool)

(assert (= b_and!58001 (and (=> t!78775 result!57728) b_and!58009)))

(declare-fun m!849363 () Bool)

(assert (=> d!207040 m!849363))

(declare-fun m!849365 () Bool)

(assert (=> b!588703 m!849365))

(assert (=> b!588703 m!849365))

(declare-fun m!849367 () Bool)

(assert (=> b!588703 m!849367))

(declare-fun m!849369 () Bool)

(assert (=> b!588704 m!849369))

(assert (=> start!54940 d!207040))

(declare-fun d!207044 () Bool)

(assert (=> d!207044 (= (inv!7335 (tag!1399 (rule!1903 token!491))) (= (mod (str.len (value!37245 (tag!1399 (rule!1903 token!491)))) 2) 0))))

(assert (=> b!588642 d!207044))

(declare-fun d!207046 () Bool)

(declare-fun res!253686 () Bool)

(declare-fun e!355900 () Bool)

(assert (=> d!207046 (=> (not res!253686) (not e!355900))))

(declare-fun semiInverseModEq!445 (Int Int) Bool)

(assert (=> d!207046 (= res!253686 (semiInverseModEq!445 (toChars!1879 (transformation!1137 (rule!1903 token!491))) (toValue!2020 (transformation!1137 (rule!1903 token!491)))))))

(assert (=> d!207046 (= (inv!7338 (transformation!1137 (rule!1903 token!491))) e!355900)))

(declare-fun b!588724 () Bool)

(declare-fun equivClasses!428 (Int Int) Bool)

(assert (=> b!588724 (= e!355900 (equivClasses!428 (toChars!1879 (transformation!1137 (rule!1903 token!491))) (toValue!2020 (transformation!1137 (rule!1903 token!491)))))))

(assert (= (and d!207046 res!253686) b!588724))

(declare-fun m!849385 () Bool)

(assert (=> d!207046 m!849385))

(declare-fun m!849387 () Bool)

(assert (=> b!588724 m!849387))

(assert (=> b!588642 d!207046))

(declare-fun d!207054 () Bool)

(assert (=> d!207054 (= (isEmpty!4190 input!2705) ((_ is Nil!5803) input!2705))))

(assert (=> b!588646 d!207054))

(declare-fun d!207056 () Bool)

(assert (=> d!207056 (and (= lt!249403 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!249421 () Unit!10535)

(declare-fun choose!4228 (List!5813 List!5813 List!5813 List!5813) Unit!10535)

(assert (=> d!207056 (= lt!249421 (choose!4228 lt!249403 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!207056 (= (++!1625 lt!249403 suffix!1342) (++!1625 input!2705 suffix!1342))))

(assert (=> d!207056 (= (lemmaConcatSameAndSameSizesThenSameLists!210 lt!249403 suffix!1342 input!2705 suffix!1342) lt!249421)))

(declare-fun bs!70185 () Bool)

(assert (= bs!70185 d!207056))

(declare-fun m!849389 () Bool)

(assert (=> bs!70185 m!849389))

(assert (=> bs!70185 m!849317))

(assert (=> bs!70185 m!849323))

(assert (=> b!588655 d!207056))

(declare-fun b!588725 () Bool)

(declare-fun e!355901 () List!5813)

(assert (=> b!588725 (= e!355901 (_2!3644 (v!16366 lt!249405)))))

(declare-fun d!207058 () Bool)

(declare-fun e!355902 () Bool)

(assert (=> d!207058 e!355902))

(declare-fun res!253688 () Bool)

(assert (=> d!207058 (=> (not res!253688) (not e!355902))))

(declare-fun lt!249422 () List!5813)

(assert (=> d!207058 (= res!253688 (= (content!1039 lt!249422) ((_ map or) (content!1039 lt!249399) (content!1039 (_2!3644 (v!16366 lt!249405))))))))

(assert (=> d!207058 (= lt!249422 e!355901)))

(declare-fun c!109947 () Bool)

(assert (=> d!207058 (= c!109947 ((_ is Nil!5803) lt!249399))))

(assert (=> d!207058 (= (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405))) lt!249422)))

(declare-fun b!588726 () Bool)

(assert (=> b!588726 (= e!355901 (Cons!5803 (h!11204 lt!249399) (++!1625 (t!78766 lt!249399) (_2!3644 (v!16366 lt!249405)))))))

(declare-fun b!588727 () Bool)

(declare-fun res!253687 () Bool)

(assert (=> b!588727 (=> (not res!253687) (not e!355902))))

(assert (=> b!588727 (= res!253687 (= (size!4605 lt!249422) (+ (size!4605 lt!249399) (size!4605 (_2!3644 (v!16366 lt!249405))))))))

(declare-fun b!588728 () Bool)

(assert (=> b!588728 (= e!355902 (or (not (= (_2!3644 (v!16366 lt!249405)) Nil!5803)) (= lt!249422 lt!249399)))))

(assert (= (and d!207058 c!109947) b!588725))

(assert (= (and d!207058 (not c!109947)) b!588726))

(assert (= (and d!207058 res!253688) b!588727))

(assert (= (and b!588727 res!253687) b!588728))

(declare-fun m!849391 () Bool)

(assert (=> d!207058 m!849391))

(declare-fun m!849393 () Bool)

(assert (=> d!207058 m!849393))

(declare-fun m!849395 () Bool)

(assert (=> d!207058 m!849395))

(declare-fun m!849397 () Bool)

(assert (=> b!588726 m!849397))

(declare-fun m!849399 () Bool)

(assert (=> b!588727 m!849399))

(assert (=> b!588727 m!849269))

(declare-fun m!849401 () Bool)

(assert (=> b!588727 m!849401))

(assert (=> b!588655 d!207058))

(declare-fun d!207060 () Bool)

(declare-fun lt!249425 () List!5813)

(assert (=> d!207060 (= (++!1625 lt!249399 lt!249425) input!2705)))

(declare-fun e!355905 () List!5813)

(assert (=> d!207060 (= lt!249425 e!355905)))

(declare-fun c!109950 () Bool)

(assert (=> d!207060 (= c!109950 ((_ is Cons!5803) lt!249399))))

(assert (=> d!207060 (>= (size!4605 input!2705) (size!4605 lt!249399))))

(assert (=> d!207060 (= (getSuffix!282 input!2705 lt!249399) lt!249425)))

(declare-fun b!588733 () Bool)

(declare-fun tail!772 (List!5813) List!5813)

(assert (=> b!588733 (= e!355905 (getSuffix!282 (tail!772 input!2705) (t!78766 lt!249399)))))

(declare-fun b!588734 () Bool)

(assert (=> b!588734 (= e!355905 input!2705)))

(assert (= (and d!207060 c!109950) b!588733))

(assert (= (and d!207060 (not c!109950)) b!588734))

(declare-fun m!849403 () Bool)

(assert (=> d!207060 m!849403))

(declare-fun m!849405 () Bool)

(assert (=> d!207060 m!849405))

(assert (=> d!207060 m!849269))

(declare-fun m!849407 () Bool)

(assert (=> b!588733 m!849407))

(assert (=> b!588733 m!849407))

(declare-fun m!849409 () Bool)

(assert (=> b!588733 m!849409))

(assert (=> b!588655 d!207060))

(declare-fun d!207062 () Bool)

(assert (=> d!207062 (= (size!4604 (_1!3644 (v!16366 lt!249405))) (size!4605 (originalCharacters!1176 (_1!3644 (v!16366 lt!249405)))))))

(declare-fun Unit!10539 () Unit!10535)

(assert (=> d!207062 (= (lemmaCharactersSize!196 (_1!3644 (v!16366 lt!249405))) Unit!10539)))

(declare-fun bs!70186 () Bool)

(assert (= bs!70186 d!207062))

(declare-fun m!849411 () Bool)

(assert (=> bs!70186 m!849411))

(assert (=> b!588655 d!207062))

(declare-fun d!207064 () Bool)

(declare-fun list!2426 (Conc!1854) List!5813)

(assert (=> d!207064 (= (list!2424 (charsOf!766 (_1!3644 (v!16366 lt!249405)))) (list!2426 (c!109934 (charsOf!766 (_1!3644 (v!16366 lt!249405))))))))

(declare-fun bs!70187 () Bool)

(assert (= bs!70187 d!207064))

(declare-fun m!849413 () Bool)

(assert (=> bs!70187 m!849413))

(assert (=> b!588655 d!207064))

(declare-fun d!207066 () Bool)

(declare-fun lt!249428 () Bool)

(declare-fun content!1041 (List!5814) (InoxSet Rule!2074))

(assert (=> d!207066 (= lt!249428 (select (content!1041 rules!3103) (rule!1903 token!491)))))

(declare-fun e!355910 () Bool)

(assert (=> d!207066 (= lt!249428 e!355910)))

(declare-fun res!253694 () Bool)

(assert (=> d!207066 (=> (not res!253694) (not e!355910))))

(assert (=> d!207066 (= res!253694 ((_ is Cons!5804) rules!3103))))

(assert (=> d!207066 (= (contains!1367 rules!3103 (rule!1903 token!491)) lt!249428)))

(declare-fun b!588739 () Bool)

(declare-fun e!355911 () Bool)

(assert (=> b!588739 (= e!355910 e!355911)))

(declare-fun res!253693 () Bool)

(assert (=> b!588739 (=> res!253693 e!355911)))

(assert (=> b!588739 (= res!253693 (= (h!11205 rules!3103) (rule!1903 token!491)))))

(declare-fun b!588740 () Bool)

(assert (=> b!588740 (= e!355911 (contains!1367 (t!78767 rules!3103) (rule!1903 token!491)))))

(assert (= (and d!207066 res!253694) b!588739))

(assert (= (and b!588739 (not res!253693)) b!588740))

(declare-fun m!849415 () Bool)

(assert (=> d!207066 m!849415))

(declare-fun m!849417 () Bool)

(assert (=> d!207066 m!849417))

(declare-fun m!849419 () Bool)

(assert (=> b!588740 m!849419))

(assert (=> b!588655 d!207066))

(declare-fun d!207068 () Bool)

(assert (=> d!207068 (= (_2!3644 (v!16366 lt!249405)) lt!249412)))

(declare-fun lt!249441 () Unit!10535)

(declare-fun choose!4232 (List!5813 List!5813 List!5813 List!5813 List!5813) Unit!10535)

(assert (=> d!207068 (= lt!249441 (choose!4232 lt!249399 (_2!3644 (v!16366 lt!249405)) lt!249399 lt!249412 input!2705))))

(assert (=> d!207068 (isPrefix!765 lt!249399 input!2705)))

(assert (=> d!207068 (= (lemmaSamePrefixThenSameSuffix!478 lt!249399 (_2!3644 (v!16366 lt!249405)) lt!249399 lt!249412 input!2705) lt!249441)))

(declare-fun bs!70188 () Bool)

(assert (= bs!70188 d!207068))

(declare-fun m!849421 () Bool)

(assert (=> bs!70188 m!849421))

(declare-fun m!849423 () Bool)

(assert (=> bs!70188 m!849423))

(assert (=> b!588655 d!207068))

(declare-fun b!588785 () Bool)

(declare-fun e!355933 () Bool)

(assert (=> b!588785 (= e!355933 (>= (size!4605 (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405)))) (size!4605 lt!249399)))))

(declare-fun b!588783 () Bool)

(declare-fun res!253730 () Bool)

(declare-fun e!355931 () Bool)

(assert (=> b!588783 (=> (not res!253730) (not e!355931))))

(declare-fun head!1243 (List!5813) C!3864)

(assert (=> b!588783 (= res!253730 (= (head!1243 lt!249399) (head!1243 (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405))))))))

(declare-fun b!588782 () Bool)

(declare-fun e!355932 () Bool)

(assert (=> b!588782 (= e!355932 e!355931)))

(declare-fun res!253728 () Bool)

(assert (=> b!588782 (=> (not res!253728) (not e!355931))))

(assert (=> b!588782 (= res!253728 (not ((_ is Nil!5803) (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405))))))))

(declare-fun d!207070 () Bool)

(assert (=> d!207070 e!355933))

(declare-fun res!253731 () Bool)

(assert (=> d!207070 (=> res!253731 e!355933)))

(declare-fun lt!249450 () Bool)

(assert (=> d!207070 (= res!253731 (not lt!249450))))

(assert (=> d!207070 (= lt!249450 e!355932)))

(declare-fun res!253729 () Bool)

(assert (=> d!207070 (=> res!253729 e!355932)))

(assert (=> d!207070 (= res!253729 ((_ is Nil!5803) lt!249399))))

(assert (=> d!207070 (= (isPrefix!765 lt!249399 (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405)))) lt!249450)))

(declare-fun b!588784 () Bool)

(assert (=> b!588784 (= e!355931 (isPrefix!765 (tail!772 lt!249399) (tail!772 (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405))))))))

(assert (= (and d!207070 (not res!253729)) b!588782))

(assert (= (and b!588782 res!253728) b!588783))

(assert (= (and b!588783 res!253730) b!588784))

(assert (= (and d!207070 (not res!253731)) b!588785))

(assert (=> b!588785 m!849277))

(declare-fun m!849473 () Bool)

(assert (=> b!588785 m!849473))

(assert (=> b!588785 m!849269))

(declare-fun m!849475 () Bool)

(assert (=> b!588783 m!849475))

(assert (=> b!588783 m!849277))

(declare-fun m!849477 () Bool)

(assert (=> b!588783 m!849477))

(declare-fun m!849479 () Bool)

(assert (=> b!588784 m!849479))

(assert (=> b!588784 m!849277))

(declare-fun m!849481 () Bool)

(assert (=> b!588784 m!849481))

(assert (=> b!588784 m!849479))

(assert (=> b!588784 m!849481))

(declare-fun m!849485 () Bool)

(assert (=> b!588784 m!849485))

(assert (=> b!588655 d!207070))

(declare-fun d!207082 () Bool)

(assert (=> d!207082 (isPrefix!765 input!2705 input!2705)))

(declare-fun lt!249456 () Unit!10535)

(declare-fun choose!4234 (List!5813 List!5813) Unit!10535)

(assert (=> d!207082 (= lt!249456 (choose!4234 input!2705 input!2705))))

(assert (=> d!207082 (= (lemmaIsPrefixRefl!501 input!2705 input!2705) lt!249456)))

(declare-fun bs!70190 () Bool)

(assert (= bs!70190 d!207082))

(assert (=> bs!70190 m!849287))

(declare-fun m!849489 () Bool)

(assert (=> bs!70190 m!849489))

(assert (=> b!588655 d!207082))

(declare-fun d!207086 () Bool)

(assert (=> d!207086 (= (size!4604 token!491) (size!4605 (originalCharacters!1176 token!491)))))

(declare-fun Unit!10541 () Unit!10535)

(assert (=> d!207086 (= (lemmaCharactersSize!196 token!491) Unit!10541)))

(declare-fun bs!70191 () Bool)

(assert (= bs!70191 d!207086))

(assert (=> bs!70191 m!849369))

(assert (=> b!588655 d!207086))

(declare-fun d!207088 () Bool)

(assert (=> d!207088 (isPrefix!765 lt!249399 (++!1625 lt!249399 (_2!3644 (v!16366 lt!249405))))))

(declare-fun lt!249459 () Unit!10535)

(declare-fun choose!4235 (List!5813 List!5813) Unit!10535)

(assert (=> d!207088 (= lt!249459 (choose!4235 lt!249399 (_2!3644 (v!16366 lt!249405))))))

(assert (=> d!207088 (= (lemmaConcatTwoListThenFirstIsPrefix!610 lt!249399 (_2!3644 (v!16366 lt!249405))) lt!249459)))

(declare-fun bs!70192 () Bool)

(assert (= bs!70192 d!207088))

(assert (=> bs!70192 m!849277))

(assert (=> bs!70192 m!849277))

(assert (=> bs!70192 m!849295))

(declare-fun m!849497 () Bool)

(assert (=> bs!70192 m!849497))

(assert (=> b!588655 d!207088))

(declare-fun d!207094 () Bool)

(declare-fun res!253750 () Bool)

(declare-fun e!355952 () Bool)

(assert (=> d!207094 (=> (not res!253750) (not e!355952))))

(declare-fun validRegex!498 (Regex!1471) Bool)

(assert (=> d!207094 (= res!253750 (validRegex!498 (regex!1137 (rule!1903 (_1!3644 (v!16366 lt!249405))))))))

(assert (=> d!207094 (= (ruleValid!335 thiss!22590 (rule!1903 (_1!3644 (v!16366 lt!249405)))) e!355952)))

(declare-fun b!588818 () Bool)

(declare-fun res!253751 () Bool)

(assert (=> b!588818 (=> (not res!253751) (not e!355952))))

(declare-fun nullable!403 (Regex!1471) Bool)

(assert (=> b!588818 (= res!253751 (not (nullable!403 (regex!1137 (rule!1903 (_1!3644 (v!16366 lt!249405)))))))))

(declare-fun b!588819 () Bool)

(assert (=> b!588819 (= e!355952 (not (= (tag!1399 (rule!1903 (_1!3644 (v!16366 lt!249405)))) (String!7549 ""))))))

(assert (= (and d!207094 res!253750) b!588818))

(assert (= (and b!588818 res!253751) b!588819))

(declare-fun m!849531 () Bool)

(assert (=> d!207094 m!849531))

(declare-fun m!849535 () Bool)

(assert (=> b!588818 m!849535))

(assert (=> b!588655 d!207094))

(declare-fun d!207106 () Bool)

(assert (=> d!207106 (ruleValid!335 thiss!22590 (rule!1903 (_1!3644 (v!16366 lt!249405))))))

(declare-fun lt!249472 () Unit!10535)

(declare-fun choose!4237 (LexerInterface!1023 Rule!2074 List!5814) Unit!10535)

(assert (=> d!207106 (= lt!249472 (choose!4237 thiss!22590 (rule!1903 (_1!3644 (v!16366 lt!249405))) rules!3103))))

(assert (=> d!207106 (contains!1367 rules!3103 (rule!1903 (_1!3644 (v!16366 lt!249405))))))

(assert (=> d!207106 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!182 thiss!22590 (rule!1903 (_1!3644 (v!16366 lt!249405))) rules!3103) lt!249472)))

(declare-fun bs!70193 () Bool)

(assert (= bs!70193 d!207106))

(assert (=> bs!70193 m!849265))

(declare-fun m!849563 () Bool)

(assert (=> bs!70193 m!849563))

(declare-fun m!849565 () Bool)

(assert (=> bs!70193 m!849565))

(assert (=> b!588655 d!207106))

(declare-fun b!588839 () Bool)

(declare-fun e!355967 () Bool)

(assert (=> b!588839 (= e!355967 (>= (size!4605 input!2705) (size!4605 input!2705)))))

(declare-fun b!588837 () Bool)

(declare-fun res!253763 () Bool)

(declare-fun e!355965 () Bool)

(assert (=> b!588837 (=> (not res!253763) (not e!355965))))

(assert (=> b!588837 (= res!253763 (= (head!1243 input!2705) (head!1243 input!2705)))))

(declare-fun b!588836 () Bool)

(declare-fun e!355966 () Bool)

(assert (=> b!588836 (= e!355966 e!355965)))

(declare-fun res!253761 () Bool)

(assert (=> b!588836 (=> (not res!253761) (not e!355965))))

(assert (=> b!588836 (= res!253761 (not ((_ is Nil!5803) input!2705)))))

(declare-fun d!207114 () Bool)

(assert (=> d!207114 e!355967))

(declare-fun res!253764 () Bool)

(assert (=> d!207114 (=> res!253764 e!355967)))

(declare-fun lt!249475 () Bool)

(assert (=> d!207114 (= res!253764 (not lt!249475))))

(assert (=> d!207114 (= lt!249475 e!355966)))

(declare-fun res!253762 () Bool)

(assert (=> d!207114 (=> res!253762 e!355966)))

(assert (=> d!207114 (= res!253762 ((_ is Nil!5803) input!2705))))

(assert (=> d!207114 (= (isPrefix!765 input!2705 input!2705) lt!249475)))

(declare-fun b!588838 () Bool)

(assert (=> b!588838 (= e!355965 (isPrefix!765 (tail!772 input!2705) (tail!772 input!2705)))))

(assert (= (and d!207114 (not res!253762)) b!588836))

(assert (= (and b!588836 res!253761) b!588837))

(assert (= (and b!588837 res!253763) b!588838))

(assert (= (and d!207114 (not res!253764)) b!588839))

(assert (=> b!588839 m!849405))

(assert (=> b!588839 m!849405))

(declare-fun m!849571 () Bool)

(assert (=> b!588837 m!849571))

(assert (=> b!588837 m!849571))

(assert (=> b!588838 m!849407))

(assert (=> b!588838 m!849407))

(assert (=> b!588838 m!849407))

(assert (=> b!588838 m!849407))

(declare-fun m!849573 () Bool)

(assert (=> b!588838 m!849573))

(assert (=> b!588655 d!207114))

(declare-fun d!207120 () Bool)

(declare-fun lt!249486 () Int)

(assert (=> d!207120 (>= lt!249486 0)))

(declare-fun e!355972 () Int)

(assert (=> d!207120 (= lt!249486 e!355972)))

(declare-fun c!109969 () Bool)

(assert (=> d!207120 (= c!109969 ((_ is Nil!5803) lt!249399))))

(assert (=> d!207120 (= (size!4605 lt!249399) lt!249486)))

(declare-fun b!588848 () Bool)

(assert (=> b!588848 (= e!355972 0)))

(declare-fun b!588849 () Bool)

(assert (=> b!588849 (= e!355972 (+ 1 (size!4605 (t!78766 lt!249399))))))

(assert (= (and d!207120 c!109969) b!588848))

(assert (= (and d!207120 (not c!109969)) b!588849))

(declare-fun m!849581 () Bool)

(assert (=> b!588849 m!849581))

(assert (=> b!588655 d!207120))

(declare-fun d!207126 () Bool)

(declare-fun lt!249494 () BalanceConc!3716)

(assert (=> d!207126 (= (list!2424 lt!249494) (originalCharacters!1176 (_1!3644 (v!16366 lt!249405))))))

(assert (=> d!207126 (= lt!249494 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 (_1!3644 (v!16366 lt!249405))))) (value!37271 (_1!3644 (v!16366 lt!249405)))))))

(assert (=> d!207126 (= (charsOf!766 (_1!3644 (v!16366 lt!249405))) lt!249494)))

(declare-fun b_lambda!23185 () Bool)

(assert (=> (not b_lambda!23185) (not d!207126)))

(declare-fun t!78781 () Bool)

(declare-fun tb!51507 () Bool)

(assert (=> (and b!588657 (= (toChars!1879 (transformation!1137 (h!11205 rules!3103))) (toChars!1879 (transformation!1137 (rule!1903 (_1!3644 (v!16366 lt!249405)))))) t!78781) tb!51507))

(declare-fun b!588850 () Bool)

(declare-fun e!355973 () Bool)

(declare-fun tp!183644 () Bool)

(assert (=> b!588850 (= e!355973 (and (inv!7342 (c!109934 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 (_1!3644 (v!16366 lt!249405))))) (value!37271 (_1!3644 (v!16366 lt!249405)))))) tp!183644))))

(declare-fun result!57734 () Bool)

(assert (=> tb!51507 (= result!57734 (and (inv!7343 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 (_1!3644 (v!16366 lt!249405))))) (value!37271 (_1!3644 (v!16366 lt!249405))))) e!355973))))

(assert (= tb!51507 b!588850))

(declare-fun m!849589 () Bool)

(assert (=> b!588850 m!849589))

(declare-fun m!849591 () Bool)

(assert (=> tb!51507 m!849591))

(assert (=> d!207126 t!78781))

(declare-fun b_and!58019 () Bool)

(assert (= b_and!58007 (and (=> t!78781 result!57734) b_and!58019)))

(declare-fun tb!51509 () Bool)

(declare-fun t!78783 () Bool)

(assert (=> (and b!588653 (= (toChars!1879 (transformation!1137 (rule!1903 token!491))) (toChars!1879 (transformation!1137 (rule!1903 (_1!3644 (v!16366 lt!249405)))))) t!78783) tb!51509))

(declare-fun result!57736 () Bool)

(assert (= result!57736 result!57734))

(assert (=> d!207126 t!78783))

(declare-fun b_and!58021 () Bool)

(assert (= b_and!58009 (and (=> t!78783 result!57736) b_and!58021)))

(declare-fun m!849593 () Bool)

(assert (=> d!207126 m!849593))

(declare-fun m!849595 () Bool)

(assert (=> d!207126 m!849595))

(assert (=> b!588655 d!207126))

(declare-fun d!207132 () Bool)

(declare-fun lt!249496 () Int)

(assert (=> d!207132 (>= lt!249496 0)))

(declare-fun e!355974 () Int)

(assert (=> d!207132 (= lt!249496 e!355974)))

(declare-fun c!109970 () Bool)

(assert (=> d!207132 (= c!109970 ((_ is Nil!5803) lt!249403))))

(assert (=> d!207132 (= (size!4605 lt!249403) lt!249496)))

(declare-fun b!588851 () Bool)

(assert (=> b!588851 (= e!355974 0)))

(declare-fun b!588852 () Bool)

(assert (=> b!588852 (= e!355974 (+ 1 (size!4605 (t!78766 lt!249403))))))

(assert (= (and d!207132 c!109970) b!588851))

(assert (= (and d!207132 (not c!109970)) b!588852))

(declare-fun m!849599 () Bool)

(assert (=> b!588852 m!849599))

(assert (=> b!588655 d!207132))

(declare-fun d!207136 () Bool)

(assert (=> d!207136 (= (list!2424 (charsOf!766 token!491)) (list!2426 (c!109934 (charsOf!766 token!491))))))

(declare-fun bs!70199 () Bool)

(assert (= bs!70199 d!207136))

(declare-fun m!849601 () Bool)

(assert (=> bs!70199 m!849601))

(assert (=> b!588656 d!207136))

(declare-fun d!207138 () Bool)

(declare-fun lt!249497 () BalanceConc!3716)

(assert (=> d!207138 (= (list!2424 lt!249497) (originalCharacters!1176 token!491))))

(assert (=> d!207138 (= lt!249497 (dynLambda!3386 (toChars!1879 (transformation!1137 (rule!1903 token!491))) (value!37271 token!491)))))

(assert (=> d!207138 (= (charsOf!766 token!491) lt!249497)))

(declare-fun b_lambda!23187 () Bool)

(assert (=> (not b_lambda!23187) (not d!207138)))

(assert (=> d!207138 t!78773))

(declare-fun b_and!58023 () Bool)

(assert (= b_and!58019 (and (=> t!78773 result!57724) b_and!58023)))

(assert (=> d!207138 t!78775))

(declare-fun b_and!58025 () Bool)

(assert (= b_and!58021 (and (=> t!78775 result!57728) b_and!58025)))

(declare-fun m!849603 () Bool)

(assert (=> d!207138 m!849603))

(assert (=> d!207138 m!849365))

(assert (=> b!588656 d!207138))

(declare-fun d!207140 () Bool)

(assert (=> d!207140 (= (inv!7335 (tag!1399 (h!11205 rules!3103))) (= (mod (str.len (value!37245 (tag!1399 (h!11205 rules!3103)))) 2) 0))))

(assert (=> b!588645 d!207140))

(declare-fun d!207142 () Bool)

(declare-fun res!253765 () Bool)

(declare-fun e!355975 () Bool)

(assert (=> d!207142 (=> (not res!253765) (not e!355975))))

(assert (=> d!207142 (= res!253765 (semiInverseModEq!445 (toChars!1879 (transformation!1137 (h!11205 rules!3103))) (toValue!2020 (transformation!1137 (h!11205 rules!3103)))))))

(assert (=> d!207142 (= (inv!7338 (transformation!1137 (h!11205 rules!3103))) e!355975)))

(declare-fun b!588853 () Bool)

(assert (=> b!588853 (= e!355975 (equivClasses!428 (toChars!1879 (transformation!1137 (h!11205 rules!3103))) (toValue!2020 (transformation!1137 (h!11205 rules!3103)))))))

(assert (= (and d!207142 res!253765) b!588853))

(declare-fun m!849605 () Bool)

(assert (=> d!207142 m!849605))

(declare-fun m!849607 () Bool)

(assert (=> b!588853 m!849607))

(assert (=> b!588645 d!207142))

(declare-fun d!207144 () Bool)

(assert (=> d!207144 (= (get!2220 lt!249408) (v!16366 lt!249408))))

(assert (=> b!588649 d!207144))

(declare-fun b!588936 () Bool)

(declare-fun e!356021 () Bool)

(declare-fun lt!249522 () Option!1488)

(assert (=> b!588936 (= e!356021 (contains!1367 rules!3103 (rule!1903 (_1!3644 (get!2220 lt!249522)))))))

(declare-fun d!207148 () Bool)

(declare-fun e!356022 () Bool)

(assert (=> d!207148 e!356022))

(declare-fun res!253805 () Bool)

(assert (=> d!207148 (=> res!253805 e!356022)))

(declare-fun isEmpty!4192 (Option!1488) Bool)

(assert (=> d!207148 (= res!253805 (isEmpty!4192 lt!249522))))

(declare-fun e!356023 () Option!1488)

(assert (=> d!207148 (= lt!249522 e!356023)))

(declare-fun c!109976 () Bool)

(assert (=> d!207148 (= c!109976 (and ((_ is Cons!5804) rules!3103) ((_ is Nil!5804) (t!78767 rules!3103))))))

(declare-fun lt!249518 () Unit!10535)

(declare-fun lt!249520 () Unit!10535)

(assert (=> d!207148 (= lt!249518 lt!249520)))

(assert (=> d!207148 (isPrefix!765 input!2705 input!2705)))

(assert (=> d!207148 (= lt!249520 (lemmaIsPrefixRefl!501 input!2705 input!2705))))

(declare-fun rulesValidInductive!414 (LexerInterface!1023 List!5814) Bool)

(assert (=> d!207148 (rulesValidInductive!414 thiss!22590 rules!3103)))

(assert (=> d!207148 (= (maxPrefix!721 thiss!22590 rules!3103 input!2705) lt!249522)))

(declare-fun b!588937 () Bool)

(declare-fun res!253806 () Bool)

(assert (=> b!588937 (=> (not res!253806) (not e!356021))))

(declare-fun apply!1390 (TokenValueInjection!2090 BalanceConc!3716) TokenValue!1161)

(declare-fun seqFromList!1313 (List!5813) BalanceConc!3716)

(assert (=> b!588937 (= res!253806 (= (value!37271 (_1!3644 (get!2220 lt!249522))) (apply!1390 (transformation!1137 (rule!1903 (_1!3644 (get!2220 lt!249522)))) (seqFromList!1313 (originalCharacters!1176 (_1!3644 (get!2220 lt!249522)))))))))

(declare-fun b!588938 () Bool)

(declare-fun res!253803 () Bool)

(assert (=> b!588938 (=> (not res!253803) (not e!356021))))

(assert (=> b!588938 (= res!253803 (< (size!4605 (_2!3644 (get!2220 lt!249522))) (size!4605 input!2705)))))

(declare-fun b!588939 () Bool)

(declare-fun lt!249519 () Option!1488)

(declare-fun lt!249521 () Option!1488)

(assert (=> b!588939 (= e!356023 (ite (and ((_ is None!1487) lt!249519) ((_ is None!1487) lt!249521)) None!1487 (ite ((_ is None!1487) lt!249521) lt!249519 (ite ((_ is None!1487) lt!249519) lt!249521 (ite (>= (size!4604 (_1!3644 (v!16366 lt!249519))) (size!4604 (_1!3644 (v!16366 lt!249521)))) lt!249519 lt!249521)))))))

(declare-fun call!40260 () Option!1488)

(assert (=> b!588939 (= lt!249519 call!40260)))

(assert (=> b!588939 (= lt!249521 (maxPrefix!721 thiss!22590 (t!78767 rules!3103) input!2705))))

(declare-fun b!588940 () Bool)

(declare-fun res!253807 () Bool)

(assert (=> b!588940 (=> (not res!253807) (not e!356021))))

(declare-fun matchR!606 (Regex!1471 List!5813) Bool)

(assert (=> b!588940 (= res!253807 (matchR!606 (regex!1137 (rule!1903 (_1!3644 (get!2220 lt!249522)))) (list!2424 (charsOf!766 (_1!3644 (get!2220 lt!249522))))))))

(declare-fun b!588941 () Bool)

(declare-fun res!253808 () Bool)

(assert (=> b!588941 (=> (not res!253808) (not e!356021))))

(assert (=> b!588941 (= res!253808 (= (++!1625 (list!2424 (charsOf!766 (_1!3644 (get!2220 lt!249522)))) (_2!3644 (get!2220 lt!249522))) input!2705))))

(declare-fun b!588942 () Bool)

(assert (=> b!588942 (= e!356022 e!356021)))

(declare-fun res!253802 () Bool)

(assert (=> b!588942 (=> (not res!253802) (not e!356021))))

(assert (=> b!588942 (= res!253802 (isDefined!1299 lt!249522))))

(declare-fun b!588943 () Bool)

(declare-fun res!253804 () Bool)

(assert (=> b!588943 (=> (not res!253804) (not e!356021))))

(assert (=> b!588943 (= res!253804 (= (list!2424 (charsOf!766 (_1!3644 (get!2220 lt!249522)))) (originalCharacters!1176 (_1!3644 (get!2220 lt!249522)))))))

(declare-fun bm!40255 () Bool)

(declare-fun maxPrefixOneRule!410 (LexerInterface!1023 Rule!2074 List!5813) Option!1488)

(assert (=> bm!40255 (= call!40260 (maxPrefixOneRule!410 thiss!22590 (h!11205 rules!3103) input!2705))))

(declare-fun b!588944 () Bool)

(assert (=> b!588944 (= e!356023 call!40260)))

(assert (= (and d!207148 c!109976) b!588944))

(assert (= (and d!207148 (not c!109976)) b!588939))

(assert (= (or b!588944 b!588939) bm!40255))

(assert (= (and d!207148 (not res!253805)) b!588942))

(assert (= (and b!588942 res!253802) b!588943))

(assert (= (and b!588943 res!253804) b!588938))

(assert (= (and b!588938 res!253803) b!588941))

(assert (= (and b!588941 res!253808) b!588937))

(assert (= (and b!588937 res!253806) b!588940))

(assert (= (and b!588940 res!253807) b!588936))

(declare-fun m!849643 () Bool)

(assert (=> b!588940 m!849643))

(declare-fun m!849645 () Bool)

(assert (=> b!588940 m!849645))

(assert (=> b!588940 m!849645))

(declare-fun m!849647 () Bool)

(assert (=> b!588940 m!849647))

(assert (=> b!588940 m!849647))

(declare-fun m!849649 () Bool)

(assert (=> b!588940 m!849649))

(declare-fun m!849651 () Bool)

(assert (=> bm!40255 m!849651))

(declare-fun m!849653 () Bool)

(assert (=> b!588942 m!849653))

(assert (=> b!588937 m!849643))

(declare-fun m!849655 () Bool)

(assert (=> b!588937 m!849655))

(assert (=> b!588937 m!849655))

(declare-fun m!849657 () Bool)

(assert (=> b!588937 m!849657))

(declare-fun m!849659 () Bool)

(assert (=> b!588939 m!849659))

(assert (=> b!588938 m!849643))

(declare-fun m!849661 () Bool)

(assert (=> b!588938 m!849661))

(assert (=> b!588938 m!849405))

(declare-fun m!849663 () Bool)

(assert (=> d!207148 m!849663))

(assert (=> d!207148 m!849287))

(assert (=> d!207148 m!849297))

(declare-fun m!849665 () Bool)

(assert (=> d!207148 m!849665))

(assert (=> b!588941 m!849643))

(assert (=> b!588941 m!849645))

(assert (=> b!588941 m!849645))

(assert (=> b!588941 m!849647))

(assert (=> b!588941 m!849647))

(declare-fun m!849667 () Bool)

(assert (=> b!588941 m!849667))

(assert (=> b!588943 m!849643))

(assert (=> b!588943 m!849645))

(assert (=> b!588943 m!849645))

(assert (=> b!588943 m!849647))

(assert (=> b!588936 m!849643))

(declare-fun m!849669 () Bool)

(assert (=> b!588936 m!849669))

(assert (=> b!588648 d!207148))

(declare-fun d!207160 () Bool)

(assert (=> d!207160 (= (isDefined!1299 lt!249408) (not (isEmpty!4192 lt!249408)))))

(declare-fun bs!70203 () Bool)

(assert (= bs!70203 d!207160))

(declare-fun m!849671 () Bool)

(assert (=> bs!70203 m!849671))

(assert (=> b!588639 d!207160))

(declare-fun b!588945 () Bool)

(declare-fun e!356024 () Bool)

(declare-fun lt!249527 () Option!1488)

(assert (=> b!588945 (= e!356024 (contains!1367 rules!3103 (rule!1903 (_1!3644 (get!2220 lt!249527)))))))

(declare-fun d!207162 () Bool)

(declare-fun e!356025 () Bool)

(assert (=> d!207162 e!356025))

(declare-fun res!253812 () Bool)

(assert (=> d!207162 (=> res!253812 e!356025)))

(assert (=> d!207162 (= res!253812 (isEmpty!4192 lt!249527))))

(declare-fun e!356026 () Option!1488)

(assert (=> d!207162 (= lt!249527 e!356026)))

(declare-fun c!109977 () Bool)

(assert (=> d!207162 (= c!109977 (and ((_ is Cons!5804) rules!3103) ((_ is Nil!5804) (t!78767 rules!3103))))))

(declare-fun lt!249523 () Unit!10535)

(declare-fun lt!249525 () Unit!10535)

(assert (=> d!207162 (= lt!249523 lt!249525)))

(assert (=> d!207162 (isPrefix!765 lt!249409 lt!249409)))

(assert (=> d!207162 (= lt!249525 (lemmaIsPrefixRefl!501 lt!249409 lt!249409))))

(assert (=> d!207162 (rulesValidInductive!414 thiss!22590 rules!3103)))

(assert (=> d!207162 (= (maxPrefix!721 thiss!22590 rules!3103 lt!249409) lt!249527)))

(declare-fun b!588946 () Bool)

(declare-fun res!253813 () Bool)

(assert (=> b!588946 (=> (not res!253813) (not e!356024))))

(assert (=> b!588946 (= res!253813 (= (value!37271 (_1!3644 (get!2220 lt!249527))) (apply!1390 (transformation!1137 (rule!1903 (_1!3644 (get!2220 lt!249527)))) (seqFromList!1313 (originalCharacters!1176 (_1!3644 (get!2220 lt!249527)))))))))

(declare-fun b!588947 () Bool)

(declare-fun res!253810 () Bool)

(assert (=> b!588947 (=> (not res!253810) (not e!356024))))

(assert (=> b!588947 (= res!253810 (< (size!4605 (_2!3644 (get!2220 lt!249527))) (size!4605 lt!249409)))))

(declare-fun b!588948 () Bool)

(declare-fun lt!249524 () Option!1488)

(declare-fun lt!249526 () Option!1488)

(assert (=> b!588948 (= e!356026 (ite (and ((_ is None!1487) lt!249524) ((_ is None!1487) lt!249526)) None!1487 (ite ((_ is None!1487) lt!249526) lt!249524 (ite ((_ is None!1487) lt!249524) lt!249526 (ite (>= (size!4604 (_1!3644 (v!16366 lt!249524))) (size!4604 (_1!3644 (v!16366 lt!249526)))) lt!249524 lt!249526)))))))

(declare-fun call!40261 () Option!1488)

(assert (=> b!588948 (= lt!249524 call!40261)))

(assert (=> b!588948 (= lt!249526 (maxPrefix!721 thiss!22590 (t!78767 rules!3103) lt!249409))))

(declare-fun b!588949 () Bool)

(declare-fun res!253814 () Bool)

(assert (=> b!588949 (=> (not res!253814) (not e!356024))))

(assert (=> b!588949 (= res!253814 (matchR!606 (regex!1137 (rule!1903 (_1!3644 (get!2220 lt!249527)))) (list!2424 (charsOf!766 (_1!3644 (get!2220 lt!249527))))))))

(declare-fun b!588950 () Bool)

(declare-fun res!253815 () Bool)

(assert (=> b!588950 (=> (not res!253815) (not e!356024))))

(assert (=> b!588950 (= res!253815 (= (++!1625 (list!2424 (charsOf!766 (_1!3644 (get!2220 lt!249527)))) (_2!3644 (get!2220 lt!249527))) lt!249409))))

(declare-fun b!588951 () Bool)

(assert (=> b!588951 (= e!356025 e!356024)))

(declare-fun res!253809 () Bool)

(assert (=> b!588951 (=> (not res!253809) (not e!356024))))

(assert (=> b!588951 (= res!253809 (isDefined!1299 lt!249527))))

(declare-fun b!588952 () Bool)

(declare-fun res!253811 () Bool)

(assert (=> b!588952 (=> (not res!253811) (not e!356024))))

(assert (=> b!588952 (= res!253811 (= (list!2424 (charsOf!766 (_1!3644 (get!2220 lt!249527)))) (originalCharacters!1176 (_1!3644 (get!2220 lt!249527)))))))

(declare-fun bm!40256 () Bool)

(assert (=> bm!40256 (= call!40261 (maxPrefixOneRule!410 thiss!22590 (h!11205 rules!3103) lt!249409))))

(declare-fun b!588953 () Bool)

(assert (=> b!588953 (= e!356026 call!40261)))

(assert (= (and d!207162 c!109977) b!588953))

(assert (= (and d!207162 (not c!109977)) b!588948))

(assert (= (or b!588953 b!588948) bm!40256))

(assert (= (and d!207162 (not res!253812)) b!588951))

(assert (= (and b!588951 res!253809) b!588952))

(assert (= (and b!588952 res!253811) b!588947))

(assert (= (and b!588947 res!253810) b!588950))

(assert (= (and b!588950 res!253815) b!588946))

(assert (= (and b!588946 res!253813) b!588949))

(assert (= (and b!588949 res!253814) b!588945))

(declare-fun m!849673 () Bool)

(assert (=> b!588949 m!849673))

(declare-fun m!849675 () Bool)

(assert (=> b!588949 m!849675))

(assert (=> b!588949 m!849675))

(declare-fun m!849677 () Bool)

(assert (=> b!588949 m!849677))

(assert (=> b!588949 m!849677))

(declare-fun m!849679 () Bool)

(assert (=> b!588949 m!849679))

(declare-fun m!849681 () Bool)

(assert (=> bm!40256 m!849681))

(declare-fun m!849683 () Bool)

(assert (=> b!588951 m!849683))

(assert (=> b!588946 m!849673))

(declare-fun m!849685 () Bool)

(assert (=> b!588946 m!849685))

(assert (=> b!588946 m!849685))

(declare-fun m!849687 () Bool)

(assert (=> b!588946 m!849687))

(declare-fun m!849689 () Bool)

(assert (=> b!588948 m!849689))

(assert (=> b!588947 m!849673))

(declare-fun m!849691 () Bool)

(assert (=> b!588947 m!849691))

(declare-fun m!849693 () Bool)

(assert (=> b!588947 m!849693))

(declare-fun m!849695 () Bool)

(assert (=> d!207162 m!849695))

(declare-fun m!849697 () Bool)

(assert (=> d!207162 m!849697))

(declare-fun m!849699 () Bool)

(assert (=> d!207162 m!849699))

(assert (=> d!207162 m!849665))

(assert (=> b!588950 m!849673))

(assert (=> b!588950 m!849675))

(assert (=> b!588950 m!849675))

(assert (=> b!588950 m!849677))

(assert (=> b!588950 m!849677))

(declare-fun m!849701 () Bool)

(assert (=> b!588950 m!849701))

(assert (=> b!588952 m!849673))

(assert (=> b!588952 m!849675))

(assert (=> b!588952 m!849675))

(assert (=> b!588952 m!849677))

(assert (=> b!588945 m!849673))

(declare-fun m!849703 () Bool)

(assert (=> b!588945 m!849703))

(assert (=> b!588639 d!207162))

(declare-fun b!588954 () Bool)

(declare-fun e!356027 () List!5813)

(assert (=> b!588954 (= e!356027 suffix!1342)))

(declare-fun d!207164 () Bool)

(declare-fun e!356028 () Bool)

(assert (=> d!207164 e!356028))

(declare-fun res!253817 () Bool)

(assert (=> d!207164 (=> (not res!253817) (not e!356028))))

(declare-fun lt!249528 () List!5813)

(assert (=> d!207164 (= res!253817 (= (content!1039 lt!249528) ((_ map or) (content!1039 input!2705) (content!1039 suffix!1342))))))

(assert (=> d!207164 (= lt!249528 e!356027)))

(declare-fun c!109978 () Bool)

(assert (=> d!207164 (= c!109978 ((_ is Nil!5803) input!2705))))

(assert (=> d!207164 (= (++!1625 input!2705 suffix!1342) lt!249528)))

(declare-fun b!588955 () Bool)

(assert (=> b!588955 (= e!356027 (Cons!5803 (h!11204 input!2705) (++!1625 (t!78766 input!2705) suffix!1342)))))

(declare-fun b!588956 () Bool)

(declare-fun res!253816 () Bool)

(assert (=> b!588956 (=> (not res!253816) (not e!356028))))

(assert (=> b!588956 (= res!253816 (= (size!4605 lt!249528) (+ (size!4605 input!2705) (size!4605 suffix!1342))))))

(declare-fun b!588957 () Bool)

(assert (=> b!588957 (= e!356028 (or (not (= suffix!1342 Nil!5803)) (= lt!249528 input!2705)))))

(assert (= (and d!207164 c!109978) b!588954))

(assert (= (and d!207164 (not c!109978)) b!588955))

(assert (= (and d!207164 res!253817) b!588956))

(assert (= (and b!588956 res!253816) b!588957))

(declare-fun m!849705 () Bool)

(assert (=> d!207164 m!849705))

(declare-fun m!849707 () Bool)

(assert (=> d!207164 m!849707))

(assert (=> d!207164 m!849335))

(declare-fun m!849709 () Bool)

(assert (=> b!588955 m!849709))

(declare-fun m!849711 () Bool)

(assert (=> b!588956 m!849711))

(assert (=> b!588956 m!849405))

(assert (=> b!588956 m!849341))

(assert (=> b!588639 d!207164))

(declare-fun d!207166 () Bool)

(assert (=> d!207166 (= (isEmpty!4189 rules!3103) ((_ is Nil!5804) rules!3103))))

(assert (=> b!588640 d!207166))

(declare-fun b!588962 () Bool)

(declare-fun e!356031 () Bool)

(declare-fun tp!183684 () Bool)

(assert (=> b!588962 (= e!356031 (and tp_is_empty!3297 tp!183684))))

(assert (=> b!588654 (= tp!183630 e!356031)))

(assert (= (and b!588654 ((_ is Cons!5803) (originalCharacters!1176 token!491))) b!588962))

(declare-fun b!588976 () Bool)

(declare-fun e!356034 () Bool)

(declare-fun tp!183699 () Bool)

(declare-fun tp!183697 () Bool)

(assert (=> b!588976 (= e!356034 (and tp!183699 tp!183697))))

(declare-fun b!588975 () Bool)

(declare-fun tp!183695 () Bool)

(assert (=> b!588975 (= e!356034 tp!183695)))

(declare-fun b!588974 () Bool)

(declare-fun tp!183696 () Bool)

(declare-fun tp!183698 () Bool)

(assert (=> b!588974 (= e!356034 (and tp!183696 tp!183698))))

(declare-fun b!588973 () Bool)

(assert (=> b!588973 (= e!356034 tp_is_empty!3297)))

(assert (=> b!588642 (= tp!183628 e!356034)))

(assert (= (and b!588642 ((_ is ElementMatch!1471) (regex!1137 (rule!1903 token!491)))) b!588973))

(assert (= (and b!588642 ((_ is Concat!2632) (regex!1137 (rule!1903 token!491)))) b!588974))

(assert (= (and b!588642 ((_ is Star!1471) (regex!1137 (rule!1903 token!491)))) b!588975))

(assert (= (and b!588642 ((_ is Union!1471) (regex!1137 (rule!1903 token!491)))) b!588976))

(declare-fun b!588977 () Bool)

(declare-fun e!356035 () Bool)

(declare-fun tp!183700 () Bool)

(assert (=> b!588977 (= e!356035 (and tp_is_empty!3297 tp!183700))))

(assert (=> b!588647 (= tp!183632 e!356035)))

(assert (= (and b!588647 ((_ is Cons!5803) (t!78766 input!2705))) b!588977))

(declare-fun b!588988 () Bool)

(declare-fun b_free!16489 () Bool)

(declare-fun b_next!16505 () Bool)

(assert (=> b!588988 (= b_free!16489 (not b_next!16505))))

(declare-fun tp!183712 () Bool)

(declare-fun b_and!58031 () Bool)

(assert (=> b!588988 (= tp!183712 b_and!58031)))

(declare-fun b_free!16491 () Bool)

(declare-fun b_next!16507 () Bool)

(assert (=> b!588988 (= b_free!16491 (not b_next!16507))))

(declare-fun tb!51515 () Bool)

(declare-fun t!78790 () Bool)

(assert (=> (and b!588988 (= (toChars!1879 (transformation!1137 (h!11205 (t!78767 rules!3103)))) (toChars!1879 (transformation!1137 (rule!1903 token!491)))) t!78790) tb!51515))

(declare-fun result!57754 () Bool)

(assert (= result!57754 result!57724))

(assert (=> b!588703 t!78790))

(declare-fun t!78792 () Bool)

(declare-fun tb!51517 () Bool)

(assert (=> (and b!588988 (= (toChars!1879 (transformation!1137 (h!11205 (t!78767 rules!3103)))) (toChars!1879 (transformation!1137 (rule!1903 (_1!3644 (v!16366 lt!249405)))))) t!78792) tb!51517))

(declare-fun result!57756 () Bool)

(assert (= result!57756 result!57734))

(assert (=> d!207126 t!78792))

(assert (=> d!207138 t!78790))

(declare-fun tp!183710 () Bool)

(declare-fun b_and!58033 () Bool)

(assert (=> b!588988 (= tp!183710 (and (=> t!78790 result!57754) (=> t!78792 result!57756) b_and!58033))))

(declare-fun e!356045 () Bool)

(assert (=> b!588988 (= e!356045 (and tp!183712 tp!183710))))

(declare-fun tp!183709 () Bool)

(declare-fun b!588987 () Bool)

(declare-fun e!356047 () Bool)

(assert (=> b!588987 (= e!356047 (and tp!183709 (inv!7335 (tag!1399 (h!11205 (t!78767 rules!3103)))) (inv!7338 (transformation!1137 (h!11205 (t!78767 rules!3103)))) e!356045))))

(declare-fun b!588986 () Bool)

(declare-fun e!356046 () Bool)

(declare-fun tp!183711 () Bool)

(assert (=> b!588986 (= e!356046 (and e!356047 tp!183711))))

(assert (=> b!588651 (= tp!183627 e!356046)))

(assert (= b!588987 b!588988))

(assert (= b!588986 b!588987))

(assert (= (and b!588651 ((_ is Cons!5804) (t!78767 rules!3103))) b!588986))

(declare-fun m!849713 () Bool)

(assert (=> b!588987 m!849713))

(declare-fun m!849715 () Bool)

(assert (=> b!588987 m!849715))

(declare-fun b!588989 () Bool)

(declare-fun e!356048 () Bool)

(declare-fun tp!183713 () Bool)

(assert (=> b!588989 (= e!356048 (and tp_is_empty!3297 tp!183713))))

(assert (=> b!588652 (= tp!183634 e!356048)))

(assert (= (and b!588652 ((_ is Cons!5803) (t!78766 suffix!1342))) b!588989))

(declare-fun b!588993 () Bool)

(declare-fun e!356049 () Bool)

(declare-fun tp!183718 () Bool)

(declare-fun tp!183716 () Bool)

(assert (=> b!588993 (= e!356049 (and tp!183718 tp!183716))))

(declare-fun b!588992 () Bool)

(declare-fun tp!183714 () Bool)

(assert (=> b!588992 (= e!356049 tp!183714)))

(declare-fun b!588991 () Bool)

(declare-fun tp!183715 () Bool)

(declare-fun tp!183717 () Bool)

(assert (=> b!588991 (= e!356049 (and tp!183715 tp!183717))))

(declare-fun b!588990 () Bool)

(assert (=> b!588990 (= e!356049 tp_is_empty!3297)))

(assert (=> b!588645 (= tp!183633 e!356049)))

(assert (= (and b!588645 ((_ is ElementMatch!1471) (regex!1137 (h!11205 rules!3103)))) b!588990))

(assert (= (and b!588645 ((_ is Concat!2632) (regex!1137 (h!11205 rules!3103)))) b!588991))

(assert (= (and b!588645 ((_ is Star!1471) (regex!1137 (h!11205 rules!3103)))) b!588992))

(assert (= (and b!588645 ((_ is Union!1471) (regex!1137 (h!11205 rules!3103)))) b!588993))

(declare-fun b_lambda!23193 () Bool)

(assert (= b_lambda!23179 (or (and b!588657 b_free!16479 (= (toChars!1879 (transformation!1137 (h!11205 rules!3103))) (toChars!1879 (transformation!1137 (rule!1903 token!491))))) (and b!588653 b_free!16483) (and b!588988 b_free!16491 (= (toChars!1879 (transformation!1137 (h!11205 (t!78767 rules!3103)))) (toChars!1879 (transformation!1137 (rule!1903 token!491))))) b_lambda!23193)))

(declare-fun b_lambda!23195 () Bool)

(assert (= b_lambda!23187 (or (and b!588657 b_free!16479 (= (toChars!1879 (transformation!1137 (h!11205 rules!3103))) (toChars!1879 (transformation!1137 (rule!1903 token!491))))) (and b!588653 b_free!16483) (and b!588988 b_free!16491 (= (toChars!1879 (transformation!1137 (h!11205 (t!78767 rules!3103)))) (toChars!1879 (transformation!1137 (rule!1903 token!491))))) b_lambda!23195)))

(check-sat (not b!588992) (not b!588946) (not b!588703) (not b!588937) (not b!588956) (not b_lambda!23193) (not d!207082) (not b!588938) (not b!588977) (not b!588850) (not d!207062) (not b!588993) (not d!207046) (not b!588962) (not b!588670) b_and!57999 (not b!588853) (not d!207068) (not d!207142) (not b!588669) (not b!588951) b_and!58033 (not b!588974) (not b!588976) (not b!588941) (not d!207086) (not b!588986) tp_is_empty!3297 (not d!207058) (not b!588837) b_and!57995 (not d!207040) (not d!207056) (not d!207064) (not b!588704) (not b!588785) (not tb!51499) (not b!588740) (not d!207094) (not b!588726) (not d!207148) (not d!207060) (not b!588939) (not b!588948) (not b!588724) (not d!207126) (not tb!51507) (not b!588989) (not b!588717) (not b!588952) (not b!588672) (not b!588849) (not b!588942) (not b_lambda!23185) (not b_next!16497) (not b!588727) b_and!58023 (not b!588936) (not d!207088) (not b_next!16507) (not d!207036) (not d!207106) (not b_next!16493) (not b!588975) (not d!207034) (not d!207162) (not b!588691) (not b_next!16499) (not b!588945) (not b!588940) (not b!588991) (not b!588947) (not b_next!16495) (not b!588784) (not b!588987) (not d!207066) (not b!588682) (not b!588838) (not b_lambda!23195) (not d!207160) (not d!207164) (not bm!40255) (not b!588733) (not b!588818) (not b!588950) b_and!58031 (not b!588955) (not b!588852) (not b!588683) (not b_next!16505) b_and!58025 (not b!588783) (not d!207136) (not b!588943) (not b!588839) (not bm!40256) (not d!207138) (not b!588949))
(check-sat b_and!57999 b_and!58033 b_and!57995 (not b_next!16507) (not b_next!16493) (not b_next!16499) (not b_next!16495) b_and!58031 (not b_next!16505) b_and!58025 (not b_next!16497) b_and!58023)
