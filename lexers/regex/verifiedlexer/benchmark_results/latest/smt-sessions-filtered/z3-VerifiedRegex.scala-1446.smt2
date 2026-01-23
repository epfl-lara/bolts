; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75930 () Bool)

(assert start!75930)

(declare-fun b!849514 () Bool)

(declare-fun b_free!25625 () Bool)

(declare-fun b_next!25689 () Bool)

(assert (=> b!849514 (= b_free!25625 (not b_next!25689))))

(declare-fun tp!267503 () Bool)

(declare-fun b_and!74317 () Bool)

(assert (=> b!849514 (= tp!267503 b_and!74317)))

(declare-fun b_free!25627 () Bool)

(declare-fun b_next!25691 () Bool)

(assert (=> b!849514 (= b_free!25627 (not b_next!25691))))

(declare-fun tp!267506 () Bool)

(declare-fun b_and!74319 () Bool)

(assert (=> b!849514 (= tp!267506 b_and!74319)))

(declare-fun b!849497 () Bool)

(declare-fun b_free!25629 () Bool)

(declare-fun b_next!25693 () Bool)

(assert (=> b!849497 (= b_free!25629 (not b_next!25693))))

(declare-fun tp!267499 () Bool)

(declare-fun b_and!74321 () Bool)

(assert (=> b!849497 (= tp!267499 b_and!74321)))

(declare-fun b_free!25631 () Bool)

(declare-fun b_next!25695 () Bool)

(assert (=> b!849497 (= b_free!25631 (not b_next!25695))))

(declare-fun tp!267505 () Bool)

(declare-fun b_and!74323 () Bool)

(assert (=> b!849497 (= tp!267505 b_and!74323)))

(declare-fun b!849502 () Bool)

(declare-fun b_free!25633 () Bool)

(declare-fun b_next!25697 () Bool)

(assert (=> b!849502 (= b_free!25633 (not b_next!25697))))

(declare-fun tp!267494 () Bool)

(declare-fun b_and!74325 () Bool)

(assert (=> b!849502 (= tp!267494 b_and!74325)))

(declare-fun b_free!25635 () Bool)

(declare-fun b_next!25699 () Bool)

(assert (=> b!849502 (= b_free!25635 (not b_next!25699))))

(declare-fun tp!267502 () Bool)

(declare-fun b_and!74327 () Bool)

(assert (=> b!849502 (= tp!267502 b_and!74327)))

(declare-fun b!849492 () Bool)

(declare-fun e!559033 () Bool)

(declare-fun e!559038 () Bool)

(assert (=> b!849492 (= e!559033 e!559038)))

(declare-fun res!388296 () Bool)

(assert (=> b!849492 (=> res!388296 e!559038)))

(declare-datatypes ((List!9176 0))(
  ( (Nil!9160) (Cons!9160 (h!14561 (_ BitVec 16)) (t!95226 List!9176)) )
))
(declare-datatypes ((TokenValue!1784 0))(
  ( (FloatLiteralValue!3568 (text!12933 List!9176)) (TokenValueExt!1783 (__x!7299 Int)) (Broken!8920 (value!55636 List!9176)) (Object!1799) (End!1784) (Def!1784) (Underscore!1784) (Match!1784) (Else!1784) (Error!1784) (Case!1784) (If!1784) (Extends!1784) (Abstract!1784) (Class!1784) (Val!1784) (DelimiterValue!3568 (del!1844 List!9176)) (KeywordValue!1790 (value!55637 List!9176)) (CommentValue!3568 (value!55638 List!9176)) (WhitespaceValue!3568 (value!55639 List!9176)) (IndentationValue!1784 (value!55640 List!9176)) (String!10817) (Int32!1784) (Broken!8921 (value!55641 List!9176)) (Boolean!1785) (Unit!13646) (OperatorValue!1787 (op!1844 List!9176)) (IdentifierValue!3568 (value!55642 List!9176)) (IdentifierValue!3569 (value!55643 List!9176)) (WhitespaceValue!3569 (value!55644 List!9176)) (True!3568) (False!3568) (Broken!8922 (value!55645 List!9176)) (Broken!8923 (value!55646 List!9176)) (True!3569) (RightBrace!1784) (RightBracket!1784) (Colon!1784) (Null!1784) (Comma!1784) (LeftBracket!1784) (False!3569) (LeftBrace!1784) (ImaginaryLiteralValue!1784 (text!12934 List!9176)) (StringLiteralValue!5352 (value!55647 List!9176)) (EOFValue!1784 (value!55648 List!9176)) (IdentValue!1784 (value!55649 List!9176)) (DelimiterValue!3569 (value!55650 List!9176)) (DedentValue!1784 (value!55651 List!9176)) (NewLineValue!1784 (value!55652 List!9176)) (IntegerValue!5352 (value!55653 (_ BitVec 32)) (text!12935 List!9176)) (IntegerValue!5353 (value!55654 Int) (text!12936 List!9176)) (Times!1784) (Or!1784) (Equal!1784) (Minus!1784) (Broken!8924 (value!55655 List!9176)) (And!1784) (Div!1784) (LessEqual!1784) (Mod!1784) (Concat!3935) (Not!1784) (Plus!1784) (SpaceValue!1784 (value!55656 List!9176)) (IntegerValue!5354 (value!55657 Int) (text!12937 List!9176)) (StringLiteralValue!5353 (text!12938 List!9176)) (FloatLiteralValue!3569 (text!12939 List!9176)) (BytesLiteralValue!1784 (value!55658 List!9176)) (CommentValue!3569 (value!55659 List!9176)) (StringLiteralValue!5354 (value!55660 List!9176)) (ErrorTokenValue!1784 (msg!1845 List!9176)) )
))
(declare-datatypes ((C!4872 0))(
  ( (C!4873 (val!2684 Int)) )
))
(declare-datatypes ((Regex!2151 0))(
  ( (ElementMatch!2151 (c!137975 C!4872)) (Concat!3936 (regOne!4814 Regex!2151) (regTwo!4814 Regex!2151)) (EmptyExpr!2151) (Star!2151 (reg!2480 Regex!2151)) (EmptyLang!2151) (Union!2151 (regOne!4815 Regex!2151) (regTwo!4815 Regex!2151)) )
))
(declare-datatypes ((String!10818 0))(
  ( (String!10819 (value!55661 String)) )
))
(declare-datatypes ((List!9177 0))(
  ( (Nil!9161) (Cons!9161 (h!14562 C!4872) (t!95227 List!9177)) )
))
(declare-datatypes ((IArray!6075 0))(
  ( (IArray!6076 (innerList!3095 List!9177)) )
))
(declare-datatypes ((Conc!3035 0))(
  ( (Node!3035 (left!6779 Conc!3035) (right!7109 Conc!3035) (csize!6300 Int) (cheight!3246 Int)) (Leaf!4482 (xs!5724 IArray!6075) (csize!6301 Int)) (Empty!3035) )
))
(declare-datatypes ((BalanceConc!6084 0))(
  ( (BalanceConc!6085 (c!137976 Conc!3035)) )
))
(declare-datatypes ((TokenValueInjection!3268 0))(
  ( (TokenValueInjection!3269 (toValue!2751 Int) (toChars!2610 Int)) )
))
(declare-datatypes ((Rule!3236 0))(
  ( (Rule!3237 (regex!1718 Regex!2151) (tag!1980 String!10818) (isSeparator!1718 Bool) (transformation!1718 TokenValueInjection!3268)) )
))
(declare-datatypes ((Token!3102 0))(
  ( (Token!3103 (value!55662 TokenValue!1784) (rule!3141 Rule!3236) (size!7635 Int) (originalCharacters!2274 List!9177)) )
))
(declare-datatypes ((List!9178 0))(
  ( (Nil!9162) (Cons!9162 (h!14563 Token!3102) (t!95228 List!9178)) )
))
(declare-fun lt!321921 () List!9178)

(declare-fun isEmpty!5412 (List!9178) Bool)

(assert (=> b!849492 (= res!388296 (isEmpty!5412 (t!95228 (t!95228 lt!321921))))))

(declare-fun e!559043 () Bool)

(assert (=> b!849492 e!559043))

(declare-fun res!388290 () Bool)

(assert (=> b!849492 (=> (not res!388290) (not e!559043))))

(declare-fun lt!321923 () List!9178)

(declare-datatypes ((List!9179 0))(
  ( (Nil!9163) (Cons!9163 (h!14564 Rule!3236) (t!95229 List!9179)) )
))
(declare-fun rules!2621 () List!9179)

(declare-datatypes ((LexerInterface!1520 0))(
  ( (LexerInterfaceExt!1517 (__x!7300 Int)) (Lexer!1518) )
))
(declare-fun thiss!20117 () LexerInterface!1520)

(declare-fun rulesProduceEachTokenIndividuallyList!408 (LexerInterface!1520 List!9179 List!9178) Bool)

(assert (=> b!849492 (= res!388290 (rulesProduceEachTokenIndividuallyList!408 thiss!20117 rules!2621 lt!321923))))

(declare-fun separatorToken!297 () Token!3102)

(declare-datatypes ((Unit!13647 0))(
  ( (Unit!13648) )
))
(declare-fun lt!321927 () Unit!13647)

(declare-fun lt!321919 () List!9178)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!50 (LexerInterface!1520 List!9179 List!9178 Token!3102) Unit!13647)

(assert (=> b!849492 (= lt!321927 (withSeparatorTokenListPreservesRulesProduceTokens!50 thiss!20117 rules!2621 lt!321919 separatorToken!297))))

(declare-fun lt!321926 () Unit!13647)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!26 (LexerInterface!1520 List!9179 List!9178 Token!3102) Unit!13647)

(assert (=> b!849492 (= lt!321926 (printWithSeparatorTokenImpliesSeparableTokensList!26 thiss!20117 rules!2621 lt!321919 separatorToken!297))))

(declare-fun separableTokensPredicate!60 (LexerInterface!1520 Token!3102 Token!3102 List!9179) Bool)

(assert (=> b!849492 (separableTokensPredicate!60 thiss!20117 (h!14563 lt!321921) (h!14563 (t!95228 lt!321921)) rules!2621)))

(declare-fun lt!321920 () Unit!13647)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!42 (LexerInterface!1520 Token!3102 Token!3102 List!9179) Unit!13647)

(assert (=> b!849492 (= lt!321920 (lemmaTokensOfDifferentKindsAreSeparable!42 thiss!20117 (h!14563 lt!321921) (h!14563 (t!95228 lt!321921)) rules!2621))))

(declare-fun b!849493 () Bool)

(declare-fun res!388289 () Bool)

(declare-fun e!559045 () Bool)

(assert (=> b!849493 (=> (not res!388289) (not e!559045))))

(declare-fun rulesInvariant!1396 (LexerInterface!1520 List!9179) Bool)

(assert (=> b!849493 (= res!388289 (rulesInvariant!1396 thiss!20117 rules!2621))))

(declare-fun b!849494 () Bool)

(declare-fun e!559047 () Bool)

(declare-fun e!559046 () Bool)

(declare-fun tp!267496 () Bool)

(assert (=> b!849494 (= e!559047 (and e!559046 tp!267496))))

(declare-fun b!849495 () Bool)

(declare-fun res!388293 () Bool)

(assert (=> b!849495 (=> res!388293 e!559033)))

(assert (=> b!849495 (= res!388293 (not (= (h!14563 (t!95228 lt!321921)) separatorToken!297)))))

(declare-fun b!849496 () Bool)

(declare-fun res!388287 () Bool)

(assert (=> b!849496 (=> res!388287 e!559033)))

(declare-fun l!5107 () List!9178)

(declare-fun head!1478 (List!9178) Token!3102)

(assert (=> b!849496 (= res!388287 (not (= (head!1478 l!5107) (h!14563 lt!321921))))))

(declare-fun e!559048 () Bool)

(assert (=> b!849497 (= e!559048 (and tp!267499 tp!267505))))

(declare-fun b!849498 () Bool)

(declare-fun e!559042 () Bool)

(assert (=> b!849498 (= e!559042 e!559033)))

(declare-fun res!388297 () Bool)

(assert (=> b!849498 (=> res!388297 e!559033)))

(assert (=> b!849498 (= res!388297 (not (= (t!95228 (t!95228 lt!321921)) lt!321923)))))

(declare-fun withSeparatorTokenList!50 (LexerInterface!1520 List!9178 Token!3102) List!9178)

(assert (=> b!849498 (= lt!321923 (withSeparatorTokenList!50 thiss!20117 lt!321919 separatorToken!297))))

(declare-fun tail!1036 (List!9178) List!9178)

(assert (=> b!849498 (= lt!321919 (tail!1036 l!5107))))

(declare-fun b!849499 () Bool)

(declare-fun tp!267498 () Bool)

(declare-fun e!559039 () Bool)

(declare-fun inv!11641 (String!10818) Bool)

(declare-fun inv!11644 (TokenValueInjection!3268) Bool)

(assert (=> b!849499 (= e!559039 (and tp!267498 (inv!11641 (tag!1980 (rule!3141 separatorToken!297))) (inv!11644 (transformation!1718 (rule!3141 separatorToken!297))) e!559048))))

(declare-fun b!849500 () Bool)

(declare-fun res!388285 () Bool)

(assert (=> b!849500 (=> (not res!388285) (not e!559045))))

(assert (=> b!849500 (= res!388285 (rulesProduceEachTokenIndividuallyList!408 thiss!20117 rules!2621 l!5107))))

(declare-fun b!849501 () Bool)

(assert (=> b!849501 (= e!559045 (not e!559042))))

(declare-fun res!388288 () Bool)

(assert (=> b!849501 (=> res!388288 e!559042)))

(get-info :version)

(assert (=> b!849501 (= res!388288 (or (not ((_ is Cons!9162) lt!321921)) (not ((_ is Cons!9162) (t!95228 lt!321921)))))))

(assert (=> b!849501 (rulesProduceEachTokenIndividuallyList!408 thiss!20117 rules!2621 lt!321921)))

(assert (=> b!849501 (= lt!321921 (withSeparatorTokenList!50 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!321925 () Unit!13647)

(assert (=> b!849501 (= lt!321925 (withSeparatorTokenListPreservesRulesProduceTokens!50 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!849503 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!42 (LexerInterface!1520 List!9178 List!9179) Bool)

(assert (=> b!849503 (= e!559043 (tokensListTwoByTwoPredicateSeparableList!42 thiss!20117 lt!321923 rules!2621))))

(declare-fun b!849504 () Bool)

(declare-fun res!388298 () Bool)

(assert (=> b!849504 (=> (not res!388298) (not e!559045))))

(declare-fun sepAndNonSepRulesDisjointChars!518 (List!9179 List!9179) Bool)

(assert (=> b!849504 (= res!388298 (sepAndNonSepRulesDisjointChars!518 rules!2621 rules!2621))))

(declare-fun b!849505 () Bool)

(declare-fun res!388294 () Bool)

(assert (=> b!849505 (=> (not res!388294) (not e!559045))))

(declare-fun isEmpty!5413 (List!9179) Bool)

(assert (=> b!849505 (= res!388294 (not (isEmpty!5413 rules!2621)))))

(declare-fun b!849506 () Bool)

(declare-fun res!388295 () Bool)

(assert (=> b!849506 (=> (not res!388295) (not e!559045))))

(declare-fun lambda!25352 () Int)

(declare-fun forall!2153 (List!9178 Int) Bool)

(assert (=> b!849506 (= res!388295 (forall!2153 l!5107 lambda!25352))))

(declare-fun e!559036 () Bool)

(declare-fun tp!267501 () Bool)

(declare-fun b!849507 () Bool)

(declare-fun e!559030 () Bool)

(assert (=> b!849507 (= e!559030 (and tp!267501 (inv!11641 (tag!1980 (rule!3141 (h!14563 l!5107)))) (inv!11644 (transformation!1718 (rule!3141 (h!14563 l!5107)))) e!559036))))

(declare-fun b!849508 () Bool)

(declare-fun res!388292 () Bool)

(assert (=> b!849508 (=> (not res!388292) (not e!559045))))

(assert (=> b!849508 (= res!388292 (isSeparator!1718 (rule!3141 separatorToken!297)))))

(declare-fun b!849509 () Bool)

(assert (=> b!849509 (= e!559038 true)))

(declare-fun lt!321922 () Bool)

(assert (=> b!849509 (= lt!321922 (tokensListTwoByTwoPredicateSeparableList!42 thiss!20117 lt!321921 rules!2621))))

(declare-fun lt!321918 () Token!3102)

(assert (=> b!849509 (separableTokensPredicate!60 thiss!20117 (h!14563 (t!95228 lt!321921)) lt!321918 rules!2621)))

(declare-fun lt!321924 () Unit!13647)

(assert (=> b!849509 (= lt!321924 (lemmaTokensOfDifferentKindsAreSeparable!42 thiss!20117 (h!14563 (t!95228 lt!321921)) lt!321918 rules!2621))))

(assert (=> b!849509 (= lt!321918 (head!1478 (t!95228 (t!95228 lt!321921))))))

(declare-fun b!849510 () Bool)

(declare-fun tp!267495 () Bool)

(declare-fun e!559044 () Bool)

(declare-fun inv!21 (TokenValue!1784) Bool)

(assert (=> b!849510 (= e!559044 (and (inv!21 (value!55662 (h!14563 l!5107))) e!559030 tp!267495))))

(declare-fun e!559034 () Bool)

(declare-fun b!849511 () Bool)

(declare-fun tp!267504 () Bool)

(assert (=> b!849511 (= e!559034 (and (inv!21 (value!55662 separatorToken!297)) e!559039 tp!267504))))

(declare-fun res!388286 () Bool)

(assert (=> start!75930 (=> (not res!388286) (not e!559045))))

(assert (=> start!75930 (= res!388286 ((_ is Lexer!1518) thiss!20117))))

(assert (=> start!75930 e!559045))

(assert (=> start!75930 true))

(assert (=> start!75930 e!559047))

(declare-fun e!559037 () Bool)

(assert (=> start!75930 e!559037))

(declare-fun inv!11645 (Token!3102) Bool)

(assert (=> start!75930 (and (inv!11645 separatorToken!297) e!559034)))

(declare-fun e!559049 () Bool)

(assert (=> b!849502 (= e!559049 (and tp!267494 tp!267502))))

(declare-fun tp!267497 () Bool)

(declare-fun b!849512 () Bool)

(assert (=> b!849512 (= e!559046 (and tp!267497 (inv!11641 (tag!1980 (h!14564 rules!2621))) (inv!11644 (transformation!1718 (h!14564 rules!2621))) e!559049))))

(declare-fun b!849513 () Bool)

(declare-fun res!388291 () Bool)

(assert (=> b!849513 (=> (not res!388291) (not e!559045))))

(declare-fun rulesProduceIndividualToken!584 (LexerInterface!1520 List!9179 Token!3102) Bool)

(assert (=> b!849513 (= res!388291 (rulesProduceIndividualToken!584 thiss!20117 rules!2621 separatorToken!297))))

(assert (=> b!849514 (= e!559036 (and tp!267503 tp!267506))))

(declare-fun b!849515 () Bool)

(declare-fun tp!267500 () Bool)

(assert (=> b!849515 (= e!559037 (and (inv!11645 (h!14563 l!5107)) e!559044 tp!267500))))

(assert (= (and start!75930 res!388286) b!849505))

(assert (= (and b!849505 res!388294) b!849493))

(assert (= (and b!849493 res!388289) b!849500))

(assert (= (and b!849500 res!388285) b!849513))

(assert (= (and b!849513 res!388291) b!849508))

(assert (= (and b!849508 res!388292) b!849506))

(assert (= (and b!849506 res!388295) b!849504))

(assert (= (and b!849504 res!388298) b!849501))

(assert (= (and b!849501 (not res!388288)) b!849498))

(assert (= (and b!849498 (not res!388297)) b!849496))

(assert (= (and b!849496 (not res!388287)) b!849495))

(assert (= (and b!849495 (not res!388293)) b!849492))

(assert (= (and b!849492 res!388290) b!849503))

(assert (= (and b!849492 (not res!388296)) b!849509))

(assert (= b!849512 b!849502))

(assert (= b!849494 b!849512))

(assert (= (and start!75930 ((_ is Cons!9163) rules!2621)) b!849494))

(assert (= b!849507 b!849514))

(assert (= b!849510 b!849507))

(assert (= b!849515 b!849510))

(assert (= (and start!75930 ((_ is Cons!9162) l!5107)) b!849515))

(assert (= b!849499 b!849497))

(assert (= b!849511 b!849499))

(assert (= start!75930 b!849511))

(declare-fun m!1087303 () Bool)

(assert (=> b!849515 m!1087303))

(declare-fun m!1087305 () Bool)

(assert (=> b!849509 m!1087305))

(declare-fun m!1087307 () Bool)

(assert (=> b!849509 m!1087307))

(declare-fun m!1087309 () Bool)

(assert (=> b!849509 m!1087309))

(declare-fun m!1087311 () Bool)

(assert (=> b!849509 m!1087311))

(declare-fun m!1087313 () Bool)

(assert (=> b!849507 m!1087313))

(declare-fun m!1087315 () Bool)

(assert (=> b!849507 m!1087315))

(declare-fun m!1087317 () Bool)

(assert (=> b!849510 m!1087317))

(declare-fun m!1087319 () Bool)

(assert (=> b!849493 m!1087319))

(declare-fun m!1087321 () Bool)

(assert (=> b!849513 m!1087321))

(declare-fun m!1087323 () Bool)

(assert (=> b!849503 m!1087323))

(declare-fun m!1087325 () Bool)

(assert (=> b!849505 m!1087325))

(declare-fun m!1087327 () Bool)

(assert (=> b!849500 m!1087327))

(declare-fun m!1087329 () Bool)

(assert (=> b!849496 m!1087329))

(declare-fun m!1087331 () Bool)

(assert (=> b!849498 m!1087331))

(declare-fun m!1087333 () Bool)

(assert (=> b!849498 m!1087333))

(declare-fun m!1087335 () Bool)

(assert (=> b!849511 m!1087335))

(declare-fun m!1087337 () Bool)

(assert (=> start!75930 m!1087337))

(declare-fun m!1087339 () Bool)

(assert (=> b!849504 m!1087339))

(declare-fun m!1087341 () Bool)

(assert (=> b!849499 m!1087341))

(declare-fun m!1087343 () Bool)

(assert (=> b!849499 m!1087343))

(declare-fun m!1087345 () Bool)

(assert (=> b!849501 m!1087345))

(declare-fun m!1087347 () Bool)

(assert (=> b!849501 m!1087347))

(declare-fun m!1087349 () Bool)

(assert (=> b!849501 m!1087349))

(declare-fun m!1087351 () Bool)

(assert (=> b!849512 m!1087351))

(declare-fun m!1087353 () Bool)

(assert (=> b!849512 m!1087353))

(declare-fun m!1087355 () Bool)

(assert (=> b!849492 m!1087355))

(declare-fun m!1087357 () Bool)

(assert (=> b!849492 m!1087357))

(declare-fun m!1087359 () Bool)

(assert (=> b!849492 m!1087359))

(declare-fun m!1087361 () Bool)

(assert (=> b!849492 m!1087361))

(declare-fun m!1087363 () Bool)

(assert (=> b!849492 m!1087363))

(declare-fun m!1087365 () Bool)

(assert (=> b!849492 m!1087365))

(declare-fun m!1087367 () Bool)

(assert (=> b!849506 m!1087367))

(check-sat (not b!849500) (not b!849505) b_and!74327 (not b_next!25699) (not b_next!25691) (not b!849494) b_and!74317 b_and!74319 b_and!74323 (not b!849512) (not b!849496) (not b!849499) (not b!849515) (not b!849493) (not b!849510) (not b_next!25689) (not b!849511) (not b!849509) (not b_next!25697) (not b_next!25695) b_and!74321 (not b!849498) (not start!75930) (not b!849506) (not b_next!25693) b_and!74325 (not b!849503) (not b!849492) (not b!849507) (not b!849513) (not b!849501) (not b!849504))
(check-sat (not b_next!25689) b_and!74327 (not b_next!25699) (not b_next!25691) b_and!74317 b_and!74319 b_and!74323 b_and!74325 (not b_next!25697) (not b_next!25695) b_and!74321 (not b_next!25693))
