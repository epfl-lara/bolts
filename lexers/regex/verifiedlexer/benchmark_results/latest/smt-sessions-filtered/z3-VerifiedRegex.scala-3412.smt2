; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192276 () Bool)

(assert start!192276)

(declare-fun b!1919297 () Bool)

(declare-fun b_free!54697 () Bool)

(declare-fun b_next!55401 () Bool)

(assert (=> b!1919297 (= b_free!54697 (not b_next!55401))))

(declare-fun tp!548158 () Bool)

(declare-fun b_and!149903 () Bool)

(assert (=> b!1919297 (= tp!548158 b_and!149903)))

(declare-fun b_free!54699 () Bool)

(declare-fun b_next!55403 () Bool)

(assert (=> b!1919297 (= b_free!54699 (not b_next!55403))))

(declare-fun tp!548161 () Bool)

(declare-fun b_and!149905 () Bool)

(assert (=> b!1919297 (= tp!548161 b_and!149905)))

(declare-fun b!1919298 () Bool)

(declare-fun b_free!54701 () Bool)

(declare-fun b_next!55405 () Bool)

(assert (=> b!1919298 (= b_free!54701 (not b_next!55405))))

(declare-fun tp!548160 () Bool)

(declare-fun b_and!149907 () Bool)

(assert (=> b!1919298 (= tp!548160 b_and!149907)))

(declare-fun b_free!54703 () Bool)

(declare-fun b_next!55407 () Bool)

(assert (=> b!1919298 (= b_free!54703 (not b_next!55407))))

(declare-fun tp!548155 () Bool)

(declare-fun b_and!149909 () Bool)

(assert (=> b!1919298 (= tp!548155 b_and!149909)))

(declare-fun b!1919276 () Bool)

(declare-fun b_free!54705 () Bool)

(declare-fun b_next!55409 () Bool)

(assert (=> b!1919276 (= b_free!54705 (not b_next!55409))))

(declare-fun tp!548164 () Bool)

(declare-fun b_and!149911 () Bool)

(assert (=> b!1919276 (= tp!548164 b_and!149911)))

(declare-fun b_free!54707 () Bool)

(declare-fun b_next!55411 () Bool)

(assert (=> b!1919276 (= b_free!54707 (not b_next!55411))))

(declare-fun tp!548154 () Bool)

(declare-fun b_and!149913 () Bool)

(assert (=> b!1919276 (= tp!548154 b_and!149913)))

(declare-fun b!1919274 () Bool)

(declare-fun res!858280 () Bool)

(declare-fun e!1226644 () Bool)

(assert (=> b!1919274 (=> (not res!858280) (not e!1226644))))

(declare-datatypes ((List!21868 0))(
  ( (Nil!21786) (Cons!21786 (h!27187 (_ BitVec 16)) (t!178661 List!21868)) )
))
(declare-datatypes ((TokenValue!4036 0))(
  ( (FloatLiteralValue!8072 (text!28697 List!21868)) (TokenValueExt!4035 (__x!13570 Int)) (Broken!20180 (value!122715 List!21868)) (Object!4117) (End!4036) (Def!4036) (Underscore!4036) (Match!4036) (Else!4036) (Error!4036) (Case!4036) (If!4036) (Extends!4036) (Abstract!4036) (Class!4036) (Val!4036) (DelimiterValue!8072 (del!4096 List!21868)) (KeywordValue!4042 (value!122716 List!21868)) (CommentValue!8072 (value!122717 List!21868)) (WhitespaceValue!8072 (value!122718 List!21868)) (IndentationValue!4036 (value!122719 List!21868)) (String!25297) (Int32!4036) (Broken!20181 (value!122720 List!21868)) (Boolean!4037) (Unit!36159) (OperatorValue!4039 (op!4096 List!21868)) (IdentifierValue!8072 (value!122721 List!21868)) (IdentifierValue!8073 (value!122722 List!21868)) (WhitespaceValue!8073 (value!122723 List!21868)) (True!8072) (False!8072) (Broken!20182 (value!122724 List!21868)) (Broken!20183 (value!122725 List!21868)) (True!8073) (RightBrace!4036) (RightBracket!4036) (Colon!4036) (Null!4036) (Comma!4036) (LeftBracket!4036) (False!8073) (LeftBrace!4036) (ImaginaryLiteralValue!4036 (text!28698 List!21868)) (StringLiteralValue!12108 (value!122726 List!21868)) (EOFValue!4036 (value!122727 List!21868)) (IdentValue!4036 (value!122728 List!21868)) (DelimiterValue!8073 (value!122729 List!21868)) (DedentValue!4036 (value!122730 List!21868)) (NewLineValue!4036 (value!122731 List!21868)) (IntegerValue!12108 (value!122732 (_ BitVec 32)) (text!28699 List!21868)) (IntegerValue!12109 (value!122733 Int) (text!28700 List!21868)) (Times!4036) (Or!4036) (Equal!4036) (Minus!4036) (Broken!20184 (value!122734 List!21868)) (And!4036) (Div!4036) (LessEqual!4036) (Mod!4036) (Concat!9361) (Not!4036) (Plus!4036) (SpaceValue!4036 (value!122735 List!21868)) (IntegerValue!12110 (value!122736 Int) (text!28701 List!21868)) (StringLiteralValue!12109 (text!28702 List!21868)) (FloatLiteralValue!8073 (text!28703 List!21868)) (BytesLiteralValue!4036 (value!122737 List!21868)) (CommentValue!8073 (value!122738 List!21868)) (StringLiteralValue!12110 (value!122739 List!21868)) (ErrorTokenValue!4036 (msg!4097 List!21868)) )
))
(declare-datatypes ((C!10796 0))(
  ( (C!10797 (val!6350 Int)) )
))
(declare-datatypes ((List!21869 0))(
  ( (Nil!21787) (Cons!21787 (h!27188 C!10796) (t!178662 List!21869)) )
))
(declare-datatypes ((IArray!14551 0))(
  ( (IArray!14552 (innerList!7333 List!21869)) )
))
(declare-datatypes ((Conc!7273 0))(
  ( (Node!7273 (left!17357 Conc!7273) (right!17687 Conc!7273) (csize!14776 Int) (cheight!7484 Int)) (Leaf!10686 (xs!10167 IArray!14551) (csize!14777 Int)) (Empty!7273) )
))
(declare-datatypes ((BalanceConc!14362 0))(
  ( (BalanceConc!14363 (c!312125 Conc!7273)) )
))
(declare-datatypes ((TokenValueInjection!7656 0))(
  ( (TokenValueInjection!7657 (toValue!5529 Int) (toChars!5388 Int)) )
))
(declare-datatypes ((String!25298 0))(
  ( (String!25299 (value!122740 String)) )
))
(declare-datatypes ((Regex!5325 0))(
  ( (ElementMatch!5325 (c!312126 C!10796)) (Concat!9362 (regOne!11162 Regex!5325) (regTwo!11162 Regex!5325)) (EmptyExpr!5325) (Star!5325 (reg!5654 Regex!5325)) (EmptyLang!5325) (Union!5325 (regOne!11163 Regex!5325) (regTwo!11163 Regex!5325)) )
))
(declare-datatypes ((Rule!7600 0))(
  ( (Rule!7601 (regex!3900 Regex!5325) (tag!4340 String!25298) (isSeparator!3900 Bool) (transformation!3900 TokenValueInjection!7656)) )
))
(declare-datatypes ((List!21870 0))(
  ( (Nil!21788) (Cons!21788 (h!27189 Rule!7600) (t!178663 List!21870)) )
))
(declare-fun rules!3198 () List!21870)

(declare-fun isEmpty!13405 (List!21870) Bool)

(assert (=> b!1919274 (= res!858280 (not (isEmpty!13405 rules!3198)))))

(declare-fun b!1919275 () Bool)

(declare-fun res!858292 () Bool)

(assert (=> b!1919275 (=> (not res!858292) (not e!1226644))))

(declare-datatypes ((LexerInterface!3513 0))(
  ( (LexerInterfaceExt!3510 (__x!13571 Int)) (Lexer!3511) )
))
(declare-fun thiss!23328 () LexerInterface!3513)

(declare-fun rulesInvariant!3120 (LexerInterface!3513 List!21870) Bool)

(assert (=> b!1919275 (= res!858292 (rulesInvariant!3120 thiss!23328 rules!3198))))

(declare-fun e!1226648 () Bool)

(assert (=> b!1919276 (= e!1226648 (and tp!548164 tp!548154))))

(declare-fun b!1919277 () Bool)

(declare-fun e!1226646 () Bool)

(declare-datatypes ((Token!7352 0))(
  ( (Token!7353 (value!122741 TokenValue!4036) (rule!6103 Rule!7600) (size!17046 Int) (originalCharacters!4707 List!21869)) )
))
(declare-fun separatorToken!354 () Token!7352)

(declare-fun lt!736177 () Rule!7600)

(assert (=> b!1919277 (= e!1226646 (= (rule!6103 separatorToken!354) lt!736177))))

(declare-fun b!1919278 () Bool)

(declare-fun res!858279 () Bool)

(declare-fun e!1226650 () Bool)

(assert (=> b!1919278 (=> res!858279 e!1226650)))

(declare-datatypes ((List!21871 0))(
  ( (Nil!21789) (Cons!21789 (h!27190 Token!7352) (t!178664 List!21871)) )
))
(declare-fun tokens!598 () List!21871)

(declare-datatypes ((tuple2!20464 0))(
  ( (tuple2!20465 (_1!11701 Token!7352) (_2!11701 List!21869)) )
))
(declare-datatypes ((Option!4505 0))(
  ( (None!4504) (Some!4504 (v!26577 tuple2!20464)) )
))
(declare-fun isDefined!3803 (Option!4505) Bool)

(declare-fun maxPrefix!1959 (LexerInterface!3513 List!21870 List!21869) Option!4505)

(declare-fun printWithSeparatorTokenWhenNeededList!556 (LexerInterface!3513 List!21870 List!21871 Token!7352) List!21869)

(assert (=> b!1919278 (= res!858279 (not (isDefined!3803 (maxPrefix!1959 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!556 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1919279 () Bool)

(declare-fun e!1226645 () Bool)

(assert (=> b!1919279 (= e!1226645 e!1226646)))

(declare-fun res!858284 () Bool)

(assert (=> b!1919279 (=> (not res!858284) (not e!1226646))))

(declare-fun lt!736179 () List!21869)

(declare-fun matchR!2611 (Regex!5325 List!21869) Bool)

(assert (=> b!1919279 (= res!858284 (matchR!2611 (regex!3900 lt!736177) lt!736179))))

(declare-datatypes ((Option!4506 0))(
  ( (None!4505) (Some!4505 (v!26578 Rule!7600)) )
))
(declare-fun lt!736178 () Option!4506)

(declare-fun get!6862 (Option!4506) Rule!7600)

(assert (=> b!1919279 (= lt!736177 (get!6862 lt!736178))))

(declare-fun b!1919280 () Bool)

(assert (=> b!1919280 (= e!1226650 true)))

(declare-fun lt!736169 () Bool)

(declare-fun rulesValidInductive!1322 (LexerInterface!3513 List!21870) Bool)

(assert (=> b!1919280 (= lt!736169 (rulesValidInductive!1322 thiss!23328 rules!3198))))

(declare-fun e!1226647 () Bool)

(declare-fun tp!548159 () Bool)

(declare-fun e!1226641 () Bool)

(declare-fun b!1919281 () Bool)

(declare-fun inv!28865 (String!25298) Bool)

(declare-fun inv!28868 (TokenValueInjection!7656) Bool)

(assert (=> b!1919281 (= e!1226641 (and tp!548159 (inv!28865 (tag!4340 (rule!6103 (h!27190 tokens!598)))) (inv!28868 (transformation!3900 (rule!6103 (h!27190 tokens!598)))) e!1226647))))

(declare-fun b!1919282 () Bool)

(declare-fun res!858278 () Bool)

(assert (=> b!1919282 (=> (not res!858278) (not e!1226644))))

(assert (=> b!1919282 (= res!858278 (isSeparator!3900 (rule!6103 separatorToken!354)))))

(declare-fun e!1226651 () Bool)

(declare-fun b!1919283 () Bool)

(declare-fun e!1226659 () Bool)

(declare-fun tp!548165 () Bool)

(declare-fun inv!28869 (Token!7352) Bool)

(assert (=> b!1919283 (= e!1226659 (and (inv!28869 (h!27190 tokens!598)) e!1226651 tp!548165))))

(declare-fun res!858293 () Bool)

(assert (=> start!192276 (=> (not res!858293) (not e!1226644))))

(get-info :version)

(assert (=> start!192276 (= res!858293 ((_ is Lexer!3511) thiss!23328))))

(assert (=> start!192276 e!1226644))

(assert (=> start!192276 true))

(declare-fun e!1226654 () Bool)

(assert (=> start!192276 e!1226654))

(assert (=> start!192276 e!1226659))

(declare-fun e!1226649 () Bool)

(assert (=> start!192276 (and (inv!28869 separatorToken!354) e!1226649)))

(declare-fun b!1919284 () Bool)

(declare-fun e!1226661 () Bool)

(declare-fun lt!736168 () Option!4505)

(declare-fun get!6863 (Option!4505) tuple2!20464)

(assert (=> b!1919284 (= e!1226661 (= (_1!11701 (get!6863 lt!736168)) (h!27190 tokens!598)))))

(declare-fun b!1919285 () Bool)

(declare-fun e!1226658 () Bool)

(declare-fun e!1226656 () Bool)

(assert (=> b!1919285 (= e!1226658 e!1226656)))

(declare-fun res!858282 () Bool)

(assert (=> b!1919285 (=> (not res!858282) (not e!1226656))))

(declare-fun lt!736180 () Rule!7600)

(declare-fun lt!736170 () List!21869)

(assert (=> b!1919285 (= res!858282 (matchR!2611 (regex!3900 lt!736180) lt!736170))))

(declare-fun lt!736176 () Option!4506)

(assert (=> b!1919285 (= lt!736180 (get!6862 lt!736176))))

(declare-fun b!1919286 () Bool)

(declare-fun res!858283 () Bool)

(assert (=> b!1919286 (=> (not res!858283) (not e!1226644))))

(declare-fun lambda!74907 () Int)

(declare-fun forall!4596 (List!21871 Int) Bool)

(assert (=> b!1919286 (= res!858283 (forall!4596 tokens!598 lambda!74907))))

(declare-fun tp!548166 () Bool)

(declare-fun b!1919287 () Bool)

(declare-fun inv!21 (TokenValue!4036) Bool)

(assert (=> b!1919287 (= e!1226651 (and (inv!21 (value!122741 (h!27190 tokens!598))) e!1226641 tp!548166))))

(declare-fun e!1226642 () Bool)

(declare-fun b!1919288 () Bool)

(declare-fun tp!548157 () Bool)

(assert (=> b!1919288 (= e!1226642 (and tp!548157 (inv!28865 (tag!4340 (h!27189 rules!3198))) (inv!28868 (transformation!3900 (h!27189 rules!3198))) e!1226648))))

(declare-fun b!1919289 () Bool)

(declare-fun tp!548156 () Bool)

(assert (=> b!1919289 (= e!1226654 (and e!1226642 tp!548156))))

(declare-fun b!1919290 () Bool)

(declare-fun res!858294 () Bool)

(assert (=> b!1919290 (=> (not res!858294) (not e!1226644))))

(declare-fun rulesProduceIndividualToken!1685 (LexerInterface!3513 List!21870 Token!7352) Bool)

(assert (=> b!1919290 (= res!858294 (rulesProduceIndividualToken!1685 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1919291 () Bool)

(declare-fun e!1226662 () Bool)

(declare-fun e!1226655 () Bool)

(declare-fun tp!548163 () Bool)

(assert (=> b!1919291 (= e!1226662 (and tp!548163 (inv!28865 (tag!4340 (rule!6103 separatorToken!354))) (inv!28868 (transformation!3900 (rule!6103 separatorToken!354))) e!1226655))))

(declare-fun b!1919292 () Bool)

(declare-fun res!858285 () Bool)

(assert (=> b!1919292 (=> (not res!858285) (not e!1226644))))

(assert (=> b!1919292 (= res!858285 ((_ is Cons!21789) tokens!598))))

(declare-fun b!1919293 () Bool)

(declare-fun res!858290 () Bool)

(assert (=> b!1919293 (=> res!858290 e!1226650)))

(declare-fun isEmpty!13406 (List!21871) Bool)

(assert (=> b!1919293 (= res!858290 (isEmpty!13406 tokens!598))))

(declare-fun b!1919294 () Bool)

(declare-fun tp!548162 () Bool)

(assert (=> b!1919294 (= e!1226649 (and (inv!21 (value!122741 separatorToken!354)) e!1226662 tp!548162))))

(declare-fun b!1919295 () Bool)

(declare-fun res!858291 () Bool)

(assert (=> b!1919295 (=> (not res!858291) (not e!1226644))))

(declare-fun sepAndNonSepRulesDisjointChars!998 (List!21870 List!21870) Bool)

(assert (=> b!1919295 (= res!858291 (sepAndNonSepRulesDisjointChars!998 rules!3198 rules!3198))))

(declare-fun b!1919296 () Bool)

(assert (=> b!1919296 (= e!1226656 (= (rule!6103 (h!27190 tokens!598)) lt!736180))))

(assert (=> b!1919297 (= e!1226655 (and tp!548158 tp!548161))))

(assert (=> b!1919298 (= e!1226647 (and tp!548160 tp!548155))))

(declare-fun b!1919299 () Bool)

(declare-fun res!858288 () Bool)

(assert (=> b!1919299 (=> (not res!858288) (not e!1226644))))

(declare-fun rulesProduceEachTokenIndividuallyList!1244 (LexerInterface!3513 List!21870 List!21871) Bool)

(assert (=> b!1919299 (= res!858288 (rulesProduceEachTokenIndividuallyList!1244 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1919300 () Bool)

(assert (=> b!1919300 (= e!1226644 (not e!1226650))))

(declare-fun res!858289 () Bool)

(assert (=> b!1919300 (=> res!858289 e!1226650)))

(declare-fun lt!736174 () Bool)

(declare-fun lt!736182 () Option!4505)

(assert (=> b!1919300 (= res!858289 (or (and (not lt!736174) (= (_1!11701 (v!26577 lt!736182)) (h!27190 tokens!598))) (and (not lt!736174) (not (= (_1!11701 (v!26577 lt!736182)) (h!27190 tokens!598)))) ((_ is None!4504) lt!736182)))))

(assert (=> b!1919300 (= lt!736174 (not ((_ is Some!4504) lt!736182)))))

(declare-fun ++!5855 (List!21869 List!21869) List!21869)

(assert (=> b!1919300 (= lt!736182 (maxPrefix!1959 thiss!23328 rules!3198 (++!5855 lt!736170 (printWithSeparatorTokenWhenNeededList!556 thiss!23328 rules!3198 (t!178664 tokens!598) separatorToken!354))))))

(assert (=> b!1919300 e!1226658))

(declare-fun res!858281 () Bool)

(assert (=> b!1919300 (=> (not res!858281) (not e!1226658))))

(declare-fun isDefined!3804 (Option!4506) Bool)

(assert (=> b!1919300 (= res!858281 (isDefined!3804 lt!736176))))

(declare-fun getRuleFromTag!743 (LexerInterface!3513 List!21870 String!25298) Option!4506)

(assert (=> b!1919300 (= lt!736176 (getRuleFromTag!743 thiss!23328 rules!3198 (tag!4340 (rule!6103 (h!27190 tokens!598)))))))

(declare-datatypes ((Unit!36160 0))(
  ( (Unit!36161) )
))
(declare-fun lt!736175 () Unit!36160)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!743 (LexerInterface!3513 List!21870 List!21869 Token!7352) Unit!36160)

(assert (=> b!1919300 (= lt!736175 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!743 thiss!23328 rules!3198 lt!736170 (h!27190 tokens!598)))))

(assert (=> b!1919300 e!1226661))

(declare-fun res!858287 () Bool)

(assert (=> b!1919300 (=> (not res!858287) (not e!1226661))))

(assert (=> b!1919300 (= res!858287 (isDefined!3803 lt!736168))))

(assert (=> b!1919300 (= lt!736168 (maxPrefix!1959 thiss!23328 rules!3198 lt!736170))))

(declare-fun lt!736172 () BalanceConc!14362)

(declare-fun list!8832 (BalanceConc!14362) List!21869)

(assert (=> b!1919300 (= lt!736170 (list!8832 lt!736172))))

(assert (=> b!1919300 e!1226645))

(declare-fun res!858286 () Bool)

(assert (=> b!1919300 (=> (not res!858286) (not e!1226645))))

(assert (=> b!1919300 (= res!858286 (isDefined!3804 lt!736178))))

(assert (=> b!1919300 (= lt!736178 (getRuleFromTag!743 thiss!23328 rules!3198 (tag!4340 (rule!6103 separatorToken!354))))))

(declare-fun lt!736173 () Unit!36160)

(assert (=> b!1919300 (= lt!736173 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!743 thiss!23328 rules!3198 lt!736179 separatorToken!354))))

(declare-fun charsOf!2456 (Token!7352) BalanceConc!14362)

(assert (=> b!1919300 (= lt!736179 (list!8832 (charsOf!2456 separatorToken!354)))))

(declare-fun lt!736181 () Unit!36160)

(declare-fun lemmaEqSameImage!608 (TokenValueInjection!7656 BalanceConc!14362 BalanceConc!14362) Unit!36160)

(declare-fun seqFromList!2772 (List!21869) BalanceConc!14362)

(assert (=> b!1919300 (= lt!736181 (lemmaEqSameImage!608 (transformation!3900 (rule!6103 (h!27190 tokens!598))) lt!736172 (seqFromList!2772 (originalCharacters!4707 (h!27190 tokens!598)))))))

(declare-fun lt!736171 () Unit!36160)

(declare-fun lemmaSemiInverse!879 (TokenValueInjection!7656 BalanceConc!14362) Unit!36160)

(assert (=> b!1919300 (= lt!736171 (lemmaSemiInverse!879 (transformation!3900 (rule!6103 (h!27190 tokens!598))) lt!736172))))

(assert (=> b!1919300 (= lt!736172 (charsOf!2456 (h!27190 tokens!598)))))

(assert (= (and start!192276 res!858293) b!1919274))

(assert (= (and b!1919274 res!858280) b!1919275))

(assert (= (and b!1919275 res!858292) b!1919299))

(assert (= (and b!1919299 res!858288) b!1919290))

(assert (= (and b!1919290 res!858294) b!1919282))

(assert (= (and b!1919282 res!858278) b!1919286))

(assert (= (and b!1919286 res!858283) b!1919295))

(assert (= (and b!1919295 res!858291) b!1919292))

(assert (= (and b!1919292 res!858285) b!1919300))

(assert (= (and b!1919300 res!858286) b!1919279))

(assert (= (and b!1919279 res!858284) b!1919277))

(assert (= (and b!1919300 res!858287) b!1919284))

(assert (= (and b!1919300 res!858281) b!1919285))

(assert (= (and b!1919285 res!858282) b!1919296))

(assert (= (and b!1919300 (not res!858289)) b!1919293))

(assert (= (and b!1919293 (not res!858290)) b!1919278))

(assert (= (and b!1919278 (not res!858279)) b!1919280))

(assert (= b!1919288 b!1919276))

(assert (= b!1919289 b!1919288))

(assert (= (and start!192276 ((_ is Cons!21788) rules!3198)) b!1919289))

(assert (= b!1919281 b!1919298))

(assert (= b!1919287 b!1919281))

(assert (= b!1919283 b!1919287))

(assert (= (and start!192276 ((_ is Cons!21789) tokens!598)) b!1919283))

(assert (= b!1919291 b!1919297))

(assert (= b!1919294 b!1919291))

(assert (= start!192276 b!1919294))

(declare-fun m!2354731 () Bool)

(assert (=> b!1919288 m!2354731))

(declare-fun m!2354733 () Bool)

(assert (=> b!1919288 m!2354733))

(declare-fun m!2354735 () Bool)

(assert (=> b!1919283 m!2354735))

(declare-fun m!2354737 () Bool)

(assert (=> b!1919274 m!2354737))

(declare-fun m!2354739 () Bool)

(assert (=> b!1919300 m!2354739))

(declare-fun m!2354741 () Bool)

(assert (=> b!1919300 m!2354741))

(declare-fun m!2354743 () Bool)

(assert (=> b!1919300 m!2354743))

(declare-fun m!2354745 () Bool)

(assert (=> b!1919300 m!2354745))

(declare-fun m!2354747 () Bool)

(assert (=> b!1919300 m!2354747))

(declare-fun m!2354749 () Bool)

(assert (=> b!1919300 m!2354749))

(declare-fun m!2354751 () Bool)

(assert (=> b!1919300 m!2354751))

(assert (=> b!1919300 m!2354741))

(declare-fun m!2354753 () Bool)

(assert (=> b!1919300 m!2354753))

(declare-fun m!2354755 () Bool)

(assert (=> b!1919300 m!2354755))

(declare-fun m!2354757 () Bool)

(assert (=> b!1919300 m!2354757))

(assert (=> b!1919300 m!2354753))

(declare-fun m!2354759 () Bool)

(assert (=> b!1919300 m!2354759))

(declare-fun m!2354761 () Bool)

(assert (=> b!1919300 m!2354761))

(declare-fun m!2354763 () Bool)

(assert (=> b!1919300 m!2354763))

(assert (=> b!1919300 m!2354745))

(declare-fun m!2354765 () Bool)

(assert (=> b!1919300 m!2354765))

(declare-fun m!2354767 () Bool)

(assert (=> b!1919300 m!2354767))

(declare-fun m!2354769 () Bool)

(assert (=> b!1919300 m!2354769))

(assert (=> b!1919300 m!2354743))

(declare-fun m!2354771 () Bool)

(assert (=> b!1919300 m!2354771))

(declare-fun m!2354773 () Bool)

(assert (=> b!1919300 m!2354773))

(declare-fun m!2354775 () Bool)

(assert (=> b!1919281 m!2354775))

(declare-fun m!2354777 () Bool)

(assert (=> b!1919281 m!2354777))

(declare-fun m!2354779 () Bool)

(assert (=> b!1919293 m!2354779))

(declare-fun m!2354781 () Bool)

(assert (=> b!1919286 m!2354781))

(declare-fun m!2354783 () Bool)

(assert (=> b!1919285 m!2354783))

(declare-fun m!2354785 () Bool)

(assert (=> b!1919285 m!2354785))

(declare-fun m!2354787 () Bool)

(assert (=> b!1919290 m!2354787))

(declare-fun m!2354789 () Bool)

(assert (=> b!1919280 m!2354789))

(declare-fun m!2354791 () Bool)

(assert (=> b!1919278 m!2354791))

(assert (=> b!1919278 m!2354791))

(declare-fun m!2354793 () Bool)

(assert (=> b!1919278 m!2354793))

(assert (=> b!1919278 m!2354793))

(declare-fun m!2354795 () Bool)

(assert (=> b!1919278 m!2354795))

(declare-fun m!2354797 () Bool)

(assert (=> b!1919284 m!2354797))

(declare-fun m!2354799 () Bool)

(assert (=> b!1919299 m!2354799))

(declare-fun m!2354801 () Bool)

(assert (=> b!1919294 m!2354801))

(declare-fun m!2354803 () Bool)

(assert (=> start!192276 m!2354803))

(declare-fun m!2354805 () Bool)

(assert (=> b!1919295 m!2354805))

(declare-fun m!2354807 () Bool)

(assert (=> b!1919287 m!2354807))

(declare-fun m!2354809 () Bool)

(assert (=> b!1919291 m!2354809))

(declare-fun m!2354811 () Bool)

(assert (=> b!1919291 m!2354811))

(declare-fun m!2354813 () Bool)

(assert (=> b!1919279 m!2354813))

(declare-fun m!2354815 () Bool)

(assert (=> b!1919279 m!2354815))

(declare-fun m!2354817 () Bool)

(assert (=> b!1919275 m!2354817))

(check-sat (not b!1919286) (not b_next!55401) (not b!1919299) (not b!1919290) (not b!1919291) (not b!1919275) (not b!1919300) (not b_next!55405) (not b_next!55411) (not b!1919293) (not b!1919285) (not b!1919287) b_and!149913 b_and!149905 b_and!149911 (not b!1919281) (not b!1919294) (not b!1919289) (not b!1919279) b_and!149909 b_and!149903 (not b!1919288) (not b_next!55403) (not b!1919283) (not b!1919280) (not start!192276) (not b!1919274) (not b_next!55409) (not b!1919295) b_and!149907 (not b_next!55407) (not b!1919278) (not b!1919284))
(check-sat (not b_next!55401) (not b_next!55405) (not b_next!55403) (not b_next!55411) (not b_next!55409) b_and!149913 b_and!149905 b_and!149911 b_and!149909 b_and!149903 b_and!149907 (not b_next!55407))
