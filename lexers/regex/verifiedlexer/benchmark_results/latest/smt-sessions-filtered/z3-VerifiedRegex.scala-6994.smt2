; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371472 () Bool)

(assert start!371472)

(declare-fun b!3951110 () Bool)

(declare-fun b_free!108577 () Bool)

(declare-fun b_next!109281 () Bool)

(assert (=> b!3951110 (= b_free!108577 (not b_next!109281))))

(declare-fun tp!1203612 () Bool)

(declare-fun b_and!302739 () Bool)

(assert (=> b!3951110 (= tp!1203612 b_and!302739)))

(declare-fun b_free!108579 () Bool)

(declare-fun b_next!109283 () Bool)

(assert (=> b!3951110 (= b_free!108579 (not b_next!109283))))

(declare-fun tp!1203625 () Bool)

(declare-fun b_and!302741 () Bool)

(assert (=> b!3951110 (= tp!1203625 b_and!302741)))

(declare-fun b!3951122 () Bool)

(declare-fun b_free!108581 () Bool)

(declare-fun b_next!109285 () Bool)

(assert (=> b!3951122 (= b_free!108581 (not b_next!109285))))

(declare-fun tp!1203614 () Bool)

(declare-fun b_and!302743 () Bool)

(assert (=> b!3951122 (= tp!1203614 b_and!302743)))

(declare-fun b_free!108583 () Bool)

(declare-fun b_next!109287 () Bool)

(assert (=> b!3951122 (= b_free!108583 (not b_next!109287))))

(declare-fun tp!1203615 () Bool)

(declare-fun b_and!302745 () Bool)

(assert (=> b!3951122 (= tp!1203615 b_and!302745)))

(declare-fun b!3951092 () Bool)

(declare-fun b_free!108585 () Bool)

(declare-fun b_next!109289 () Bool)

(assert (=> b!3951092 (= b_free!108585 (not b_next!109289))))

(declare-fun tp!1203626 () Bool)

(declare-fun b_and!302747 () Bool)

(assert (=> b!3951092 (= tp!1203626 b_and!302747)))

(declare-fun b_free!108587 () Bool)

(declare-fun b_next!109291 () Bool)

(assert (=> b!3951092 (= b_free!108587 (not b_next!109291))))

(declare-fun tp!1203622 () Bool)

(declare-fun b_and!302749 () Bool)

(assert (=> b!3951092 (= tp!1203622 b_and!302749)))

(declare-fun b!3951102 () Bool)

(declare-fun b_free!108589 () Bool)

(declare-fun b_next!109293 () Bool)

(assert (=> b!3951102 (= b_free!108589 (not b_next!109293))))

(declare-fun tp!1203608 () Bool)

(declare-fun b_and!302751 () Bool)

(assert (=> b!3951102 (= tp!1203608 b_and!302751)))

(declare-fun b_free!108591 () Bool)

(declare-fun b_next!109295 () Bool)

(assert (=> b!3951102 (= b_free!108591 (not b_next!109295))))

(declare-fun tp!1203611 () Bool)

(declare-fun b_and!302753 () Bool)

(assert (=> b!3951102 (= tp!1203611 b_and!302753)))

(declare-fun b!3951088 () Bool)

(declare-fun e!2445531 () Bool)

(declare-fun e!2445546 () Bool)

(assert (=> b!3951088 (= e!2445531 e!2445546)))

(declare-fun res!1598674 () Bool)

(assert (=> b!3951088 (=> res!1598674 e!2445546)))

(declare-datatypes ((List!42137 0))(
  ( (Nil!42013) (Cons!42013 (h!47433 (_ BitVec 16)) (t!328638 List!42137)) )
))
(declare-datatypes ((TokenValue!6806 0))(
  ( (FloatLiteralValue!13612 (text!48087 List!42137)) (TokenValueExt!6805 (__x!25829 Int)) (Broken!34030 (value!208024 List!42137)) (Object!6929) (End!6806) (Def!6806) (Underscore!6806) (Match!6806) (Else!6806) (Error!6806) (Case!6806) (If!6806) (Extends!6806) (Abstract!6806) (Class!6806) (Val!6806) (DelimiterValue!13612 (del!6866 List!42137)) (KeywordValue!6812 (value!208025 List!42137)) (CommentValue!13612 (value!208026 List!42137)) (WhitespaceValue!13612 (value!208027 List!42137)) (IndentationValue!6806 (value!208028 List!42137)) (String!47747) (Int32!6806) (Broken!34031 (value!208029 List!42137)) (Boolean!6807) (Unit!60527) (OperatorValue!6809 (op!6866 List!42137)) (IdentifierValue!13612 (value!208030 List!42137)) (IdentifierValue!13613 (value!208031 List!42137)) (WhitespaceValue!13613 (value!208032 List!42137)) (True!13612) (False!13612) (Broken!34032 (value!208033 List!42137)) (Broken!34033 (value!208034 List!42137)) (True!13613) (RightBrace!6806) (RightBracket!6806) (Colon!6806) (Null!6806) (Comma!6806) (LeftBracket!6806) (False!13613) (LeftBrace!6806) (ImaginaryLiteralValue!6806 (text!48088 List!42137)) (StringLiteralValue!20418 (value!208035 List!42137)) (EOFValue!6806 (value!208036 List!42137)) (IdentValue!6806 (value!208037 List!42137)) (DelimiterValue!13613 (value!208038 List!42137)) (DedentValue!6806 (value!208039 List!42137)) (NewLineValue!6806 (value!208040 List!42137)) (IntegerValue!20418 (value!208041 (_ BitVec 32)) (text!48089 List!42137)) (IntegerValue!20419 (value!208042 Int) (text!48090 List!42137)) (Times!6806) (Or!6806) (Equal!6806) (Minus!6806) (Broken!34034 (value!208043 List!42137)) (And!6806) (Div!6806) (LessEqual!6806) (Mod!6806) (Concat!18287) (Not!6806) (Plus!6806) (SpaceValue!6806 (value!208044 List!42137)) (IntegerValue!20420 (value!208045 Int) (text!48091 List!42137)) (StringLiteralValue!20419 (text!48092 List!42137)) (FloatLiteralValue!13613 (text!48093 List!42137)) (BytesLiteralValue!6806 (value!208046 List!42137)) (CommentValue!13613 (value!208047 List!42137)) (StringLiteralValue!20420 (value!208048 List!42137)) (ErrorTokenValue!6806 (msg!6867 List!42137)) )
))
(declare-datatypes ((C!23148 0))(
  ( (C!23149 (val!13668 Int)) )
))
(declare-datatypes ((Regex!11481 0))(
  ( (ElementMatch!11481 (c!686044 C!23148)) (Concat!18288 (regOne!23474 Regex!11481) (regTwo!23474 Regex!11481)) (EmptyExpr!11481) (Star!11481 (reg!11810 Regex!11481)) (EmptyLang!11481) (Union!11481 (regOne!23475 Regex!11481) (regTwo!23475 Regex!11481)) )
))
(declare-datatypes ((String!47748 0))(
  ( (String!47749 (value!208049 String)) )
))
(declare-datatypes ((List!42138 0))(
  ( (Nil!42014) (Cons!42014 (h!47434 C!23148) (t!328639 List!42138)) )
))
(declare-datatypes ((IArray!25579 0))(
  ( (IArray!25580 (innerList!12847 List!42138)) )
))
(declare-datatypes ((Conc!12787 0))(
  ( (Node!12787 (left!31953 Conc!12787) (right!32283 Conc!12787) (csize!25804 Int) (cheight!12998 Int)) (Leaf!19782 (xs!16093 IArray!25579) (csize!25805 Int)) (Empty!12787) )
))
(declare-datatypes ((BalanceConc!25168 0))(
  ( (BalanceConc!25169 (c!686045 Conc!12787)) )
))
(declare-datatypes ((TokenValueInjection!13040 0))(
  ( (TokenValueInjection!13041 (toValue!9052 Int) (toChars!8911 Int)) )
))
(declare-datatypes ((Rule!12952 0))(
  ( (Rule!12953 (regex!6576 Regex!11481) (tag!7436 String!47748) (isSeparator!6576 Bool) (transformation!6576 TokenValueInjection!13040)) )
))
(declare-datatypes ((Token!12290 0))(
  ( (Token!12291 (value!208050 TokenValue!6806) (rule!9544 Rule!12952) (size!31486 Int) (originalCharacters!7176 List!42138)) )
))
(declare-datatypes ((List!42139 0))(
  ( (Nil!42015) (Cons!42015 (h!47435 Token!12290) (t!328640 List!42139)) )
))
(declare-datatypes ((tuple2!41298 0))(
  ( (tuple2!41299 (_1!23783 List!42139) (_2!23783 List!42138)) )
))
(declare-fun lt!1381183 () tuple2!41298)

(declare-fun lt!1381177 () List!42139)

(declare-fun lt!1381174 () List!42139)

(declare-fun prefixTokens!80 () List!42139)

(declare-fun prefix!426 () List!42138)

(declare-fun lt!1381175 () List!42138)

(declare-fun lt!1381173 () List!42139)

(assert (=> b!3951088 (= res!1598674 (or (not (= lt!1381173 (_1!23783 lt!1381183))) (not (= lt!1381173 lt!1381177)) (not (= prefixTokens!80 lt!1381174)) (not (= prefix!426 lt!1381175))))))

(assert (=> b!3951088 (= lt!1381175 prefix!426)))

(declare-fun suffix!1176 () List!42138)

(declare-datatypes ((tuple2!41300 0))(
  ( (tuple2!41301 (_1!23784 Token!12290) (_2!23784 List!42138)) )
))
(declare-datatypes ((Option!8996 0))(
  ( (None!8995) (Some!8995 (v!39335 tuple2!41300)) )
))
(declare-fun lt!1381184 () Option!8996)

(declare-datatypes ((Unit!60528 0))(
  ( (Unit!60529) )
))
(declare-fun lt!1381179 () Unit!60528)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!586 (List!42138 List!42138 List!42138 List!42138) Unit!60528)

(assert (=> b!3951088 (= lt!1381179 (lemmaConcatSameAndSameSizesThenSameLists!586 lt!1381175 (_2!23784 (v!39335 lt!1381184)) prefix!426 suffix!1176))))

(declare-fun b!3951089 () Bool)

(declare-fun e!2445541 () Bool)

(declare-fun e!2445542 () Option!8996)

(assert (=> b!3951089 (= e!2445541 (= lt!1381184 e!2445542))))

(declare-fun c!686042 () Bool)

(declare-datatypes ((List!42140 0))(
  ( (Nil!42016) (Cons!42016 (h!47436 Rule!12952) (t!328641 List!42140)) )
))
(declare-fun rules!2768 () List!42140)

(get-info :version)

(assert (=> b!3951089 (= c!686042 (and ((_ is Cons!42016) rules!2768) ((_ is Nil!42016) (t!328641 rules!2768))))))

(declare-fun b!3951090 () Bool)

(declare-fun e!2445524 () Bool)

(declare-fun size!31487 (List!42138) Int)

(assert (=> b!3951090 (= e!2445524 (= (size!31486 (_1!23784 (v!39335 lt!1381184))) (size!31487 (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184))))))))

(declare-fun b!3951091 () Bool)

(declare-fun e!2445522 () Bool)

(declare-fun e!2445544 () Bool)

(assert (=> b!3951091 (= e!2445522 e!2445544)))

(declare-fun res!1598679 () Bool)

(assert (=> b!3951091 (=> res!1598679 e!2445544)))

(declare-fun lt!1381186 () tuple2!41298)

(assert (=> b!3951091 (= res!1598679 (or (not (= lt!1381183 (tuple2!41299 lt!1381177 (_2!23783 lt!1381186)))) (not (= lt!1381186 (tuple2!41299 (_1!23783 lt!1381186) (_2!23783 lt!1381186)))) (not (= (_2!23784 (v!39335 lt!1381184)) suffix!1176))))))

(declare-fun ++!10909 (List!42139 List!42139) List!42139)

(assert (=> b!3951091 (= lt!1381177 (++!10909 lt!1381174 (_1!23783 lt!1381186)))))

(assert (=> b!3951091 (= lt!1381174 (Cons!42015 (_1!23784 (v!39335 lt!1381184)) Nil!42015))))

(declare-fun e!2445554 () Bool)

(assert (=> b!3951092 (= e!2445554 (and tp!1203626 tp!1203622))))

(declare-fun b!3951093 () Bool)

(assert (=> b!3951093 true))

(declare-fun e!2445543 () Bool)

(assert (=> b!3951093 e!2445543))

(declare-fun e!2445553 () Option!8996)

(declare-fun err!4433 () Option!8996)

(assert (=> b!3951093 (= e!2445553 err!4433)))

(declare-fun bm!285221 () Bool)

(declare-datatypes ((LexerInterface!6165 0))(
  ( (LexerInterfaceExt!6162 (__x!25830 Int)) (Lexer!6163) )
))
(declare-fun thiss!20629 () LexerInterface!6165)

(declare-fun call!285226 () Option!8996)

(declare-fun lt!1381176 () List!42138)

(declare-fun maxPrefixOneRule!2523 (LexerInterface!6165 Rule!12952 List!42138) Option!8996)

(assert (=> bm!285221 (= call!285226 (maxPrefixOneRule!2523 thiss!20629 (h!47436 rules!2768) lt!1381176))))

(declare-fun b!3951094 () Bool)

(declare-fun e!2445530 () Bool)

(declare-fun e!2445525 () Bool)

(assert (=> b!3951094 (= e!2445530 e!2445525)))

(declare-fun res!1598684 () Bool)

(assert (=> b!3951094 (=> (not res!1598684) (not e!2445525))))

(declare-fun suffixResult!91 () List!42138)

(assert (=> b!3951094 (= res!1598684 (= lt!1381183 (tuple2!41299 lt!1381173 suffixResult!91)))))

(declare-fun lexList!1933 (LexerInterface!6165 List!42140 List!42138) tuple2!41298)

(assert (=> b!3951094 (= lt!1381183 (lexList!1933 thiss!20629 rules!2768 lt!1381176))))

(declare-fun suffixTokens!72 () List!42139)

(assert (=> b!3951094 (= lt!1381173 (++!10909 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10910 (List!42138 List!42138) List!42138)

(assert (=> b!3951094 (= lt!1381176 (++!10910 prefix!426 suffix!1176))))

(declare-fun tp!1203623 () Bool)

(declare-fun e!2445528 () Bool)

(declare-fun e!2445520 () Bool)

(declare-fun b!3951095 () Bool)

(declare-fun inv!56239 (String!47748) Bool)

(declare-fun inv!56242 (TokenValueInjection!13040) Bool)

(assert (=> b!3951095 (= e!2445528 (and tp!1203623 (inv!56239 (tag!7436 (h!47436 rules!2768))) (inv!56242 (transformation!6576 (h!47436 rules!2768))) e!2445520))))

(declare-fun b!3951096 () Bool)

(declare-fun e!2445529 () Bool)

(declare-fun tp!1203624 () Bool)

(assert (=> b!3951096 (= e!2445529 (and e!2445528 tp!1203624))))

(declare-fun b!3951097 () Bool)

(declare-fun lt!1381178 () Option!8996)

(declare-fun maxPrefix!3469 (LexerInterface!6165 List!42140 List!42138) Option!8996)

(assert (=> b!3951097 (= lt!1381178 (maxPrefix!3469 thiss!20629 (t!328641 rules!2768) lt!1381176))))

(declare-fun lt!1381190 () Option!8996)

(assert (=> b!3951097 (= lt!1381190 call!285226)))

(assert (=> b!3951097 (= e!2445553 (ite (and ((_ is None!8995) lt!1381190) ((_ is None!8995) lt!1381178)) None!8995 (ite ((_ is None!8995) lt!1381178) lt!1381190 (ite ((_ is None!8995) lt!1381190) lt!1381178 (ite (>= (size!31486 (_1!23784 (v!39335 lt!1381190))) (size!31486 (_1!23784 (v!39335 lt!1381178)))) (Some!8995 (v!39335 lt!1381190)) lt!1381178)))))))

(declare-fun e!2445538 () Bool)

(declare-fun b!3951098 () Bool)

(declare-fun e!2445551 () Bool)

(declare-fun tp!1203617 () Bool)

(assert (=> b!3951098 (= e!2445551 (and tp!1203617 (inv!56239 (tag!7436 (rule!9544 (_1!23784 (v!39335 err!4433))))) (inv!56242 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) e!2445538))))

(declare-fun b!3951099 () Bool)

(assert (=> b!3951099 (= e!2445546 (>= (size!31487 suffix!1176) (size!31487 Nil!42014)))))

(declare-fun b!3951100 () Bool)

(declare-fun e!2445533 () Bool)

(declare-fun tp_is_empty!19933 () Bool)

(declare-fun tp!1203607 () Bool)

(assert (=> b!3951100 (= e!2445533 (and tp_is_empty!19933 tp!1203607))))

(declare-fun b!3951101 () Bool)

(declare-fun tp!1203620 () Bool)

(declare-fun e!2445552 () Bool)

(declare-fun inv!21 (TokenValue!6806) Bool)

(assert (=> b!3951101 (= e!2445552 (and (inv!21 (value!208050 (_1!23784 (v!39335 err!4433)))) e!2445551 tp!1203620))))

(assert (=> b!3951102 (= e!2445520 (and tp!1203608 tp!1203611))))

(declare-fun tp!1203613 () Bool)

(declare-fun b!3951103 () Bool)

(declare-fun inv!56243 (Token!12290) Bool)

(assert (=> b!3951103 (= e!2445543 (and (inv!56243 (_1!23784 (v!39335 err!4433))) e!2445552 tp!1203613))))

(declare-fun b!3951104 () Bool)

(declare-fun res!1598680 () Bool)

(assert (=> b!3951104 (=> (not res!1598680) (not e!2445530))))

(declare-fun isEmpty!25094 (List!42138) Bool)

(assert (=> b!3951104 (= res!1598680 (not (isEmpty!25094 prefix!426)))))

(declare-fun tp!1203619 () Bool)

(declare-fun e!2445548 () Bool)

(declare-fun b!3951105 () Bool)

(assert (=> b!3951105 (= e!2445548 (and tp!1203619 (inv!56239 (tag!7436 (rule!9544 (h!47435 suffixTokens!72)))) (inv!56242 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) e!2445554))))

(declare-fun b!3951106 () Bool)

(declare-fun e!2445537 () Bool)

(declare-fun tp!1203621 () Bool)

(assert (=> b!3951106 (= e!2445537 (and tp_is_empty!19933 tp!1203621))))

(declare-fun b!3951107 () Bool)

(declare-fun e!2445540 () Bool)

(declare-fun tp!1203605 () Bool)

(assert (=> b!3951107 (= e!2445540 (and (inv!21 (value!208050 (h!47435 suffixTokens!72))) e!2445548 tp!1203605))))

(declare-fun b!3951108 () Bool)

(declare-fun res!1598686 () Bool)

(assert (=> b!3951108 (=> (not res!1598686) (not e!2445530))))

(declare-fun isEmpty!25095 (List!42139) Bool)

(assert (=> b!3951108 (= res!1598686 (not (isEmpty!25095 prefixTokens!80)))))

(declare-fun b!3951109 () Bool)

(declare-fun e!2445523 () Bool)

(assert (=> b!3951109 (= e!2445525 e!2445523)))

(declare-fun res!1598683 () Bool)

(assert (=> b!3951109 (=> (not res!1598683) (not e!2445523))))

(assert (=> b!3951109 (= res!1598683 ((_ is Some!8995) lt!1381184))))

(assert (=> b!3951109 (= lt!1381184 (maxPrefix!3469 thiss!20629 rules!2768 lt!1381176))))

(declare-fun res!1598675 () Bool)

(assert (=> start!371472 (=> (not res!1598675) (not e!2445530))))

(assert (=> start!371472 (= res!1598675 ((_ is Lexer!6163) thiss!20629))))

(assert (=> start!371472 e!2445530))

(declare-fun e!2445527 () Bool)

(assert (=> start!371472 e!2445527))

(assert (=> start!371472 true))

(assert (=> start!371472 e!2445537))

(assert (=> start!371472 e!2445529))

(declare-fun e!2445545 () Bool)

(assert (=> start!371472 e!2445545))

(declare-fun e!2445526 () Bool)

(assert (=> start!371472 e!2445526))

(assert (=> start!371472 e!2445533))

(declare-fun e!2445549 () Bool)

(assert (=> b!3951110 (= e!2445549 (and tp!1203612 tp!1203625))))

(declare-fun b!3951111 () Bool)

(assert (=> b!3951111 (= e!2445544 e!2445531)))

(declare-fun res!1598676 () Bool)

(assert (=> b!3951111 (=> res!1598676 e!2445531)))

(assert (=> b!3951111 (= res!1598676 (not (= lt!1381184 (Some!8995 (tuple2!41301 (_1!23784 (v!39335 lt!1381184)) (_2!23784 (v!39335 lt!1381184)))))))))

(assert (=> b!3951111 e!2445541))

(declare-fun res!1598677 () Bool)

(assert (=> b!3951111 (=> (not res!1598677) (not e!2445541))))

(declare-fun isPrefix!3665 (List!42138 List!42138) Bool)

(assert (=> b!3951111 (= res!1598677 (isPrefix!3665 lt!1381176 lt!1381176))))

(declare-fun lt!1381180 () Unit!60528)

(declare-fun lemmaIsPrefixRefl!2316 (List!42138 List!42138) Unit!60528)

(assert (=> b!3951111 (= lt!1381180 (lemmaIsPrefixRefl!2316 lt!1381176 lt!1381176))))

(assert (=> b!3951111 (= lt!1381183 (tuple2!41299 (Cons!42015 (_1!23784 (v!39335 lt!1381184)) (_1!23783 lt!1381186)) (_2!23783 lt!1381186)))))

(declare-fun tp!1203610 () Bool)

(declare-fun e!2445532 () Bool)

(declare-fun e!2445536 () Bool)

(declare-fun b!3951112 () Bool)

(assert (=> b!3951112 (= e!2445532 (and (inv!21 (value!208050 (h!47435 prefixTokens!80))) e!2445536 tp!1203610))))

(declare-fun b!3951113 () Bool)

(assert (=> b!3951113 (= e!2445523 (not e!2445522))))

(declare-fun res!1598682 () Bool)

(assert (=> b!3951113 (=> res!1598682 e!2445522)))

(declare-fun lt!1381172 () List!42138)

(assert (=> b!3951113 (= res!1598682 (not (= lt!1381172 lt!1381176)))))

(assert (=> b!3951113 (= lt!1381186 (lexList!1933 thiss!20629 rules!2768 (_2!23784 (v!39335 lt!1381184))))))

(declare-fun lt!1381191 () List!42138)

(declare-fun lt!1381181 () TokenValue!6806)

(declare-fun lt!1381188 () Int)

(assert (=> b!3951113 (and (= (size!31486 (_1!23784 (v!39335 lt!1381184))) lt!1381188) (= (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184))) lt!1381175) (= (tuple2!41301 (_1!23784 (v!39335 lt!1381184)) (_2!23784 (v!39335 lt!1381184))) (tuple2!41301 (Token!12291 lt!1381181 (rule!9544 (_1!23784 (v!39335 lt!1381184))) lt!1381188 lt!1381175) lt!1381191)))))

(assert (=> b!3951113 (= lt!1381188 (size!31487 lt!1381175))))

(assert (=> b!3951113 e!2445524))

(declare-fun res!1598672 () Bool)

(assert (=> b!3951113 (=> (not res!1598672) (not e!2445524))))

(assert (=> b!3951113 (= res!1598672 (= (value!208050 (_1!23784 (v!39335 lt!1381184))) lt!1381181))))

(declare-fun apply!9807 (TokenValueInjection!13040 BalanceConc!25168) TokenValue!6806)

(declare-fun seqFromList!4835 (List!42138) BalanceConc!25168)

(assert (=> b!3951113 (= lt!1381181 (apply!9807 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))) (seqFromList!4835 lt!1381175)))))

(assert (=> b!3951113 (= (_2!23784 (v!39335 lt!1381184)) lt!1381191)))

(declare-fun lt!1381182 () Unit!60528)

(declare-fun lemmaSamePrefixThenSameSuffix!1874 (List!42138 List!42138 List!42138 List!42138 List!42138) Unit!60528)

(assert (=> b!3951113 (= lt!1381182 (lemmaSamePrefixThenSameSuffix!1874 lt!1381175 (_2!23784 (v!39335 lt!1381184)) lt!1381175 lt!1381191 lt!1381176))))

(declare-fun getSuffix!2116 (List!42138 List!42138) List!42138)

(assert (=> b!3951113 (= lt!1381191 (getSuffix!2116 lt!1381176 lt!1381175))))

(assert (=> b!3951113 (isPrefix!3665 lt!1381175 lt!1381172)))

(assert (=> b!3951113 (= lt!1381172 (++!10910 lt!1381175 (_2!23784 (v!39335 lt!1381184))))))

(declare-fun lt!1381185 () Unit!60528)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2524 (List!42138 List!42138) Unit!60528)

(assert (=> b!3951113 (= lt!1381185 (lemmaConcatTwoListThenFirstIsPrefix!2524 lt!1381175 (_2!23784 (v!39335 lt!1381184))))))

(declare-fun list!15604 (BalanceConc!25168) List!42138)

(declare-fun charsOf!4394 (Token!12290) BalanceConc!25168)

(assert (=> b!3951113 (= lt!1381175 (list!15604 (charsOf!4394 (_1!23784 (v!39335 lt!1381184)))))))

(declare-fun ruleValid!2518 (LexerInterface!6165 Rule!12952) Bool)

(assert (=> b!3951113 (ruleValid!2518 thiss!20629 (rule!9544 (_1!23784 (v!39335 lt!1381184))))))

(declare-fun lt!1381189 () Unit!60528)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1594 (LexerInterface!6165 Rule!12952 List!42140) Unit!60528)

(assert (=> b!3951113 (= lt!1381189 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1594 thiss!20629 (rule!9544 (_1!23784 (v!39335 lt!1381184))) rules!2768))))

(declare-fun lt!1381187 () Unit!60528)

(declare-fun lemmaCharactersSize!1229 (Token!12290) Unit!60528)

(assert (=> b!3951113 (= lt!1381187 (lemmaCharactersSize!1229 (_1!23784 (v!39335 lt!1381184))))))

(declare-fun tp!1203609 () Bool)

(declare-fun b!3951114 () Bool)

(assert (=> b!3951114 (= e!2445526 (and (inv!56243 (h!47435 suffixTokens!72)) e!2445540 tp!1203609))))

(declare-fun tp!1203606 () Bool)

(declare-fun b!3951115 () Bool)

(assert (=> b!3951115 (= e!2445536 (and tp!1203606 (inv!56239 (tag!7436 (rule!9544 (h!47435 prefixTokens!80)))) (inv!56242 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) e!2445549))))

(declare-fun b!3951116 () Bool)

(declare-fun tp!1203618 () Bool)

(assert (=> b!3951116 (= e!2445545 (and (inv!56243 (h!47435 prefixTokens!80)) e!2445532 tp!1203618))))

(declare-fun b!3951117 () Bool)

(declare-fun res!1598678 () Bool)

(assert (=> b!3951117 (=> res!1598678 e!2445546)))

(assert (=> b!3951117 (= res!1598678 (not (isPrefix!3665 Nil!42014 suffix!1176)))))

(declare-fun b!3951118 () Bool)

(declare-fun tp!1203616 () Bool)

(assert (=> b!3951118 (= e!2445527 (and tp_is_empty!19933 tp!1203616))))

(declare-fun b!3951119 () Bool)

(declare-fun res!1598685 () Bool)

(assert (=> b!3951119 (=> (not res!1598685) (not e!2445530))))

(declare-fun rulesInvariant!5508 (LexerInterface!6165 List!42140) Bool)

(assert (=> b!3951119 (= res!1598685 (rulesInvariant!5508 thiss!20629 rules!2768))))

(declare-fun b!3951120 () Bool)

(assert (=> b!3951120 (= e!2445542 call!285226)))

(declare-fun b!3951121 () Bool)

(assert (=> b!3951121 (= e!2445542 e!2445553)))

(declare-fun c!686043 () Bool)

(assert (=> b!3951121 (= c!686043 ((_ is Cons!42016) rules!2768))))

(assert (=> b!3951122 (= e!2445538 (and tp!1203614 tp!1203615))))

(declare-fun b!3951123 () Bool)

(declare-fun res!1598673 () Bool)

(assert (=> b!3951123 (=> (not res!1598673) (not e!2445525))))

(assert (=> b!3951123 (= res!1598673 (= (lexList!1933 thiss!20629 rules!2768 suffix!1176) (tuple2!41299 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3951124 () Bool)

(declare-fun res!1598681 () Bool)

(assert (=> b!3951124 (=> (not res!1598681) (not e!2445530))))

(declare-fun isEmpty!25096 (List!42140) Bool)

(assert (=> b!3951124 (= res!1598681 (not (isEmpty!25096 rules!2768)))))

(assert (= (and start!371472 res!1598675) b!3951124))

(assert (= (and b!3951124 res!1598681) b!3951119))

(assert (= (and b!3951119 res!1598685) b!3951108))

(assert (= (and b!3951108 res!1598686) b!3951104))

(assert (= (and b!3951104 res!1598680) b!3951094))

(assert (= (and b!3951094 res!1598684) b!3951123))

(assert (= (and b!3951123 res!1598673) b!3951109))

(assert (= (and b!3951109 res!1598683) b!3951113))

(assert (= (and b!3951113 res!1598672) b!3951090))

(assert (= (and b!3951113 (not res!1598682)) b!3951091))

(assert (= (and b!3951091 (not res!1598679)) b!3951111))

(assert (= (and b!3951111 res!1598677) b!3951089))

(assert (= (and b!3951089 c!686042) b!3951120))

(assert (= (and b!3951089 (not c!686042)) b!3951121))

(assert (= (and b!3951121 c!686043) b!3951097))

(assert (= (and b!3951121 (not c!686043)) b!3951093))

(assert (= b!3951098 b!3951122))

(assert (= b!3951101 b!3951098))

(assert (= b!3951103 b!3951101))

(assert (= (and b!3951093 ((_ is Some!8995) err!4433)) b!3951103))

(assert (= (or b!3951120 b!3951097) bm!285221))

(assert (= (and b!3951111 (not res!1598676)) b!3951088))

(assert (= (and b!3951088 (not res!1598674)) b!3951117))

(assert (= (and b!3951117 (not res!1598678)) b!3951099))

(assert (= (and start!371472 ((_ is Cons!42014) suffixResult!91)) b!3951118))

(assert (= (and start!371472 ((_ is Cons!42014) suffix!1176)) b!3951106))

(assert (= b!3951095 b!3951102))

(assert (= b!3951096 b!3951095))

(assert (= (and start!371472 ((_ is Cons!42016) rules!2768)) b!3951096))

(assert (= b!3951115 b!3951110))

(assert (= b!3951112 b!3951115))

(assert (= b!3951116 b!3951112))

(assert (= (and start!371472 ((_ is Cons!42015) prefixTokens!80)) b!3951116))

(assert (= b!3951105 b!3951092))

(assert (= b!3951107 b!3951105))

(assert (= b!3951114 b!3951107))

(assert (= (and start!371472 ((_ is Cons!42015) suffixTokens!72)) b!3951114))

(assert (= (and start!371472 ((_ is Cons!42014) prefix!426)) b!3951100))

(declare-fun m!4519911 () Bool)

(assert (=> b!3951097 m!4519911))

(declare-fun m!4519913 () Bool)

(assert (=> b!3951107 m!4519913))

(declare-fun m!4519915 () Bool)

(assert (=> b!3951109 m!4519915))

(declare-fun m!4519917 () Bool)

(assert (=> b!3951088 m!4519917))

(declare-fun m!4519919 () Bool)

(assert (=> b!3951099 m!4519919))

(declare-fun m!4519921 () Bool)

(assert (=> b!3951099 m!4519921))

(declare-fun m!4519923 () Bool)

(assert (=> b!3951103 m!4519923))

(declare-fun m!4519925 () Bool)

(assert (=> b!3951117 m!4519925))

(declare-fun m!4519927 () Bool)

(assert (=> b!3951123 m!4519927))

(declare-fun m!4519929 () Bool)

(assert (=> b!3951116 m!4519929))

(declare-fun m!4519931 () Bool)

(assert (=> b!3951098 m!4519931))

(declare-fun m!4519933 () Bool)

(assert (=> b!3951098 m!4519933))

(declare-fun m!4519935 () Bool)

(assert (=> b!3951090 m!4519935))

(declare-fun m!4519937 () Bool)

(assert (=> b!3951104 m!4519937))

(declare-fun m!4519939 () Bool)

(assert (=> b!3951091 m!4519939))

(declare-fun m!4519941 () Bool)

(assert (=> b!3951095 m!4519941))

(declare-fun m!4519943 () Bool)

(assert (=> b!3951095 m!4519943))

(declare-fun m!4519945 () Bool)

(assert (=> bm!285221 m!4519945))

(declare-fun m!4519947 () Bool)

(assert (=> b!3951108 m!4519947))

(declare-fun m!4519949 () Bool)

(assert (=> b!3951112 m!4519949))

(declare-fun m!4519951 () Bool)

(assert (=> b!3951111 m!4519951))

(declare-fun m!4519953 () Bool)

(assert (=> b!3951111 m!4519953))

(declare-fun m!4519955 () Bool)

(assert (=> b!3951113 m!4519955))

(declare-fun m!4519957 () Bool)

(assert (=> b!3951113 m!4519957))

(assert (=> b!3951113 m!4519957))

(declare-fun m!4519959 () Bool)

(assert (=> b!3951113 m!4519959))

(declare-fun m!4519961 () Bool)

(assert (=> b!3951113 m!4519961))

(assert (=> b!3951113 m!4519961))

(declare-fun m!4519963 () Bool)

(assert (=> b!3951113 m!4519963))

(declare-fun m!4519965 () Bool)

(assert (=> b!3951113 m!4519965))

(declare-fun m!4519967 () Bool)

(assert (=> b!3951113 m!4519967))

(declare-fun m!4519969 () Bool)

(assert (=> b!3951113 m!4519969))

(declare-fun m!4519971 () Bool)

(assert (=> b!3951113 m!4519971))

(declare-fun m!4519973 () Bool)

(assert (=> b!3951113 m!4519973))

(declare-fun m!4519975 () Bool)

(assert (=> b!3951113 m!4519975))

(declare-fun m!4519977 () Bool)

(assert (=> b!3951113 m!4519977))

(declare-fun m!4519979 () Bool)

(assert (=> b!3951113 m!4519979))

(declare-fun m!4519981 () Bool)

(assert (=> b!3951113 m!4519981))

(declare-fun m!4519983 () Bool)

(assert (=> b!3951115 m!4519983))

(declare-fun m!4519985 () Bool)

(assert (=> b!3951115 m!4519985))

(declare-fun m!4519987 () Bool)

(assert (=> b!3951124 m!4519987))

(declare-fun m!4519989 () Bool)

(assert (=> b!3951101 m!4519989))

(declare-fun m!4519991 () Bool)

(assert (=> b!3951094 m!4519991))

(declare-fun m!4519993 () Bool)

(assert (=> b!3951094 m!4519993))

(declare-fun m!4519995 () Bool)

(assert (=> b!3951094 m!4519995))

(declare-fun m!4519997 () Bool)

(assert (=> b!3951105 m!4519997))

(declare-fun m!4519999 () Bool)

(assert (=> b!3951105 m!4519999))

(declare-fun m!4520001 () Bool)

(assert (=> b!3951114 m!4520001))

(declare-fun m!4520003 () Bool)

(assert (=> b!3951119 m!4520003))

(check-sat tp_is_empty!19933 (not b!3951117) (not b!3951115) (not b!3951109) (not b!3951097) (not b_next!109291) (not b_next!109285) b_and!302739 (not b!3951118) (not b!3951113) (not b!3951108) b_and!302747 (not b!3951103) (not b!3951088) (not b!3951112) b_and!302745 (not b!3951114) (not bm!285221) b_and!302753 (not b!3951123) (not b!3951106) (not b_next!109289) (not b_next!109281) (not b!3951090) (not b!3951096) (not b!3951091) b_and!302749 (not b_next!109295) b_and!302751 b_and!302743 (not b_next!109287) (not b!3951119) (not b!3951095) (not b!3951111) (not b_next!109293) (not b!3951094) b_and!302741 (not b!3951098) (not b!3951116) (not b!3951124) (not b!3951104) (not b!3951099) (not b!3951107) (not b_next!109283) (not b!3951105) (not b!3951101) (not b!3951100))
(check-sat b_and!302747 b_and!302745 b_and!302753 (not b_next!109287) (not b_next!109293) b_and!302741 (not b_next!109283) (not b_next!109291) (not b_next!109285) b_and!302739 (not b_next!109289) (not b_next!109281) b_and!302749 (not b_next!109295) b_and!302751 b_and!302743)
(get-model)

(declare-fun d!1171683 () Bool)

(declare-fun lt!1381194 () Int)

(assert (=> d!1171683 (>= lt!1381194 0)))

(declare-fun e!2445557 () Int)

(assert (=> d!1171683 (= lt!1381194 e!2445557)))

(declare-fun c!686048 () Bool)

(assert (=> d!1171683 (= c!686048 ((_ is Nil!42014) suffix!1176))))

(assert (=> d!1171683 (= (size!31487 suffix!1176) lt!1381194)))

(declare-fun b!3951129 () Bool)

(assert (=> b!3951129 (= e!2445557 0)))

(declare-fun b!3951130 () Bool)

(assert (=> b!3951130 (= e!2445557 (+ 1 (size!31487 (t!328639 suffix!1176))))))

(assert (= (and d!1171683 c!686048) b!3951129))

(assert (= (and d!1171683 (not c!686048)) b!3951130))

(declare-fun m!4520005 () Bool)

(assert (=> b!3951130 m!4520005))

(assert (=> b!3951099 d!1171683))

(declare-fun d!1171685 () Bool)

(declare-fun lt!1381195 () Int)

(assert (=> d!1171685 (>= lt!1381195 0)))

(declare-fun e!2445558 () Int)

(assert (=> d!1171685 (= lt!1381195 e!2445558)))

(declare-fun c!686049 () Bool)

(assert (=> d!1171685 (= c!686049 ((_ is Nil!42014) Nil!42014))))

(assert (=> d!1171685 (= (size!31487 Nil!42014) lt!1381195)))

(declare-fun b!3951131 () Bool)

(assert (=> b!3951131 (= e!2445558 0)))

(declare-fun b!3951132 () Bool)

(assert (=> b!3951132 (= e!2445558 (+ 1 (size!31487 (t!328639 Nil!42014))))))

(assert (= (and d!1171685 c!686049) b!3951131))

(assert (= (and d!1171685 (not c!686049)) b!3951132))

(declare-fun m!4520007 () Bool)

(assert (=> b!3951132 m!4520007))

(assert (=> b!3951099 d!1171685))

(declare-fun d!1171687 () Bool)

(assert (=> d!1171687 (= (inv!56239 (tag!7436 (rule!9544 (_1!23784 (v!39335 err!4433))))) (= (mod (str.len (value!208049 (tag!7436 (rule!9544 (_1!23784 (v!39335 err!4433)))))) 2) 0))))

(assert (=> b!3951098 d!1171687))

(declare-fun d!1171689 () Bool)

(declare-fun res!1598695 () Bool)

(declare-fun e!2445561 () Bool)

(assert (=> d!1171689 (=> (not res!1598695) (not e!2445561))))

(declare-fun semiInverseModEq!2837 (Int Int) Bool)

(assert (=> d!1171689 (= res!1598695 (semiInverseModEq!2837 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))))))

(assert (=> d!1171689 (= (inv!56242 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) e!2445561)))

(declare-fun b!3951135 () Bool)

(declare-fun equivClasses!2736 (Int Int) Bool)

(assert (=> b!3951135 (= e!2445561 (equivClasses!2736 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))))))

(assert (= (and d!1171689 res!1598695) b!3951135))

(declare-fun m!4520009 () Bool)

(assert (=> d!1171689 m!4520009))

(declare-fun m!4520011 () Bool)

(assert (=> b!3951135 m!4520011))

(assert (=> b!3951098 d!1171689))

(declare-fun d!1171691 () Bool)

(declare-fun res!1598698 () Bool)

(declare-fun e!2445564 () Bool)

(assert (=> d!1171691 (=> (not res!1598698) (not e!2445564))))

(declare-fun rulesValid!2570 (LexerInterface!6165 List!42140) Bool)

(assert (=> d!1171691 (= res!1598698 (rulesValid!2570 thiss!20629 rules!2768))))

(assert (=> d!1171691 (= (rulesInvariant!5508 thiss!20629 rules!2768) e!2445564)))

(declare-fun b!3951138 () Bool)

(declare-datatypes ((List!42141 0))(
  ( (Nil!42017) (Cons!42017 (h!47437 String!47748) (t!328782 List!42141)) )
))
(declare-fun noDuplicateTag!2571 (LexerInterface!6165 List!42140 List!42141) Bool)

(assert (=> b!3951138 (= e!2445564 (noDuplicateTag!2571 thiss!20629 rules!2768 Nil!42017))))

(assert (= (and d!1171691 res!1598698) b!3951138))

(declare-fun m!4520013 () Bool)

(assert (=> d!1171691 m!4520013))

(declare-fun m!4520015 () Bool)

(assert (=> b!3951138 m!4520015))

(assert (=> b!3951119 d!1171691))

(declare-fun b!3951197 () Bool)

(declare-fun res!1598725 () Bool)

(declare-fun e!2445594 () Bool)

(assert (=> b!3951197 (=> (not res!1598725) (not e!2445594))))

(declare-fun lt!1381220 () Option!8996)

(declare-fun get!13865 (Option!8996) tuple2!41300)

(assert (=> b!3951197 (= res!1598725 (< (size!31487 (_2!23784 (get!13865 lt!1381220))) (size!31487 lt!1381176)))))

(declare-fun call!285229 () Option!8996)

(declare-fun bm!285224 () Bool)

(assert (=> bm!285224 (= call!285229 (maxPrefixOneRule!2523 thiss!20629 (h!47436 (t!328641 rules!2768)) lt!1381176))))

(declare-fun b!3951198 () Bool)

(declare-fun e!2445596 () Option!8996)

(declare-fun lt!1381224 () Option!8996)

(declare-fun lt!1381223 () Option!8996)

(assert (=> b!3951198 (= e!2445596 (ite (and ((_ is None!8995) lt!1381224) ((_ is None!8995) lt!1381223)) None!8995 (ite ((_ is None!8995) lt!1381223) lt!1381224 (ite ((_ is None!8995) lt!1381224) lt!1381223 (ite (>= (size!31486 (_1!23784 (v!39335 lt!1381224))) (size!31486 (_1!23784 (v!39335 lt!1381223)))) lt!1381224 lt!1381223)))))))

(assert (=> b!3951198 (= lt!1381224 call!285229)))

(assert (=> b!3951198 (= lt!1381223 (maxPrefix!3469 thiss!20629 (t!328641 (t!328641 rules!2768)) lt!1381176))))

(declare-fun b!3951199 () Bool)

(assert (=> b!3951199 (= e!2445596 call!285229)))

(declare-fun d!1171693 () Bool)

(declare-fun e!2445595 () Bool)

(assert (=> d!1171693 e!2445595))

(declare-fun res!1598728 () Bool)

(assert (=> d!1171693 (=> res!1598728 e!2445595)))

(declare-fun isEmpty!25097 (Option!8996) Bool)

(assert (=> d!1171693 (= res!1598728 (isEmpty!25097 lt!1381220))))

(assert (=> d!1171693 (= lt!1381220 e!2445596)))

(declare-fun c!686069 () Bool)

(assert (=> d!1171693 (= c!686069 (and ((_ is Cons!42016) (t!328641 rules!2768)) ((_ is Nil!42016) (t!328641 (t!328641 rules!2768)))))))

(declare-fun lt!1381221 () Unit!60528)

(declare-fun lt!1381222 () Unit!60528)

(assert (=> d!1171693 (= lt!1381221 lt!1381222)))

(assert (=> d!1171693 (isPrefix!3665 lt!1381176 lt!1381176)))

(assert (=> d!1171693 (= lt!1381222 (lemmaIsPrefixRefl!2316 lt!1381176 lt!1381176))))

(declare-fun rulesValidInductive!2383 (LexerInterface!6165 List!42140) Bool)

(assert (=> d!1171693 (rulesValidInductive!2383 thiss!20629 (t!328641 rules!2768))))

(assert (=> d!1171693 (= (maxPrefix!3469 thiss!20629 (t!328641 rules!2768) lt!1381176) lt!1381220)))

(declare-fun b!3951200 () Bool)

(declare-fun res!1598729 () Bool)

(assert (=> b!3951200 (=> (not res!1598729) (not e!2445594))))

(assert (=> b!3951200 (= res!1598729 (= (++!10910 (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381220)))) (_2!23784 (get!13865 lt!1381220))) lt!1381176))))

(declare-fun b!3951201 () Bool)

(declare-fun contains!8407 (List!42140 Rule!12952) Bool)

(assert (=> b!3951201 (= e!2445594 (contains!8407 (t!328641 rules!2768) (rule!9544 (_1!23784 (get!13865 lt!1381220)))))))

(declare-fun b!3951202 () Bool)

(declare-fun res!1598726 () Bool)

(assert (=> b!3951202 (=> (not res!1598726) (not e!2445594))))

(declare-fun matchR!5515 (Regex!11481 List!42138) Bool)

(assert (=> b!3951202 (= res!1598726 (matchR!5515 (regex!6576 (rule!9544 (_1!23784 (get!13865 lt!1381220)))) (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381220))))))))

(declare-fun b!3951203 () Bool)

(declare-fun res!1598724 () Bool)

(assert (=> b!3951203 (=> (not res!1598724) (not e!2445594))))

(assert (=> b!3951203 (= res!1598724 (= (value!208050 (_1!23784 (get!13865 lt!1381220))) (apply!9807 (transformation!6576 (rule!9544 (_1!23784 (get!13865 lt!1381220)))) (seqFromList!4835 (originalCharacters!7176 (_1!23784 (get!13865 lt!1381220)))))))))

(declare-fun b!3951204 () Bool)

(declare-fun res!1598723 () Bool)

(assert (=> b!3951204 (=> (not res!1598723) (not e!2445594))))

(assert (=> b!3951204 (= res!1598723 (= (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381220)))) (originalCharacters!7176 (_1!23784 (get!13865 lt!1381220)))))))

(declare-fun b!3951205 () Bool)

(assert (=> b!3951205 (= e!2445595 e!2445594)))

(declare-fun res!1598727 () Bool)

(assert (=> b!3951205 (=> (not res!1598727) (not e!2445594))))

(declare-fun isDefined!6982 (Option!8996) Bool)

(assert (=> b!3951205 (= res!1598727 (isDefined!6982 lt!1381220))))

(assert (= (and d!1171693 c!686069) b!3951199))

(assert (= (and d!1171693 (not c!686069)) b!3951198))

(assert (= (or b!3951199 b!3951198) bm!285224))

(assert (= (and d!1171693 (not res!1598728)) b!3951205))

(assert (= (and b!3951205 res!1598727) b!3951204))

(assert (= (and b!3951204 res!1598723) b!3951197))

(assert (= (and b!3951197 res!1598725) b!3951200))

(assert (= (and b!3951200 res!1598729) b!3951203))

(assert (= (and b!3951203 res!1598724) b!3951202))

(assert (= (and b!3951202 res!1598726) b!3951201))

(declare-fun m!4520045 () Bool)

(assert (=> b!3951204 m!4520045))

(declare-fun m!4520047 () Bool)

(assert (=> b!3951204 m!4520047))

(assert (=> b!3951204 m!4520047))

(declare-fun m!4520049 () Bool)

(assert (=> b!3951204 m!4520049))

(assert (=> b!3951201 m!4520045))

(declare-fun m!4520051 () Bool)

(assert (=> b!3951201 m!4520051))

(declare-fun m!4520053 () Bool)

(assert (=> b!3951198 m!4520053))

(assert (=> b!3951200 m!4520045))

(assert (=> b!3951200 m!4520047))

(assert (=> b!3951200 m!4520047))

(assert (=> b!3951200 m!4520049))

(assert (=> b!3951200 m!4520049))

(declare-fun m!4520055 () Bool)

(assert (=> b!3951200 m!4520055))

(declare-fun m!4520057 () Bool)

(assert (=> bm!285224 m!4520057))

(assert (=> b!3951197 m!4520045))

(declare-fun m!4520059 () Bool)

(assert (=> b!3951197 m!4520059))

(declare-fun m!4520061 () Bool)

(assert (=> b!3951197 m!4520061))

(declare-fun m!4520063 () Bool)

(assert (=> d!1171693 m!4520063))

(assert (=> d!1171693 m!4519951))

(assert (=> d!1171693 m!4519953))

(declare-fun m!4520065 () Bool)

(assert (=> d!1171693 m!4520065))

(assert (=> b!3951202 m!4520045))

(assert (=> b!3951202 m!4520047))

(assert (=> b!3951202 m!4520047))

(assert (=> b!3951202 m!4520049))

(assert (=> b!3951202 m!4520049))

(declare-fun m!4520071 () Bool)

(assert (=> b!3951202 m!4520071))

(assert (=> b!3951203 m!4520045))

(declare-fun m!4520073 () Bool)

(assert (=> b!3951203 m!4520073))

(assert (=> b!3951203 m!4520073))

(declare-fun m!4520075 () Bool)

(assert (=> b!3951203 m!4520075))

(declare-fun m!4520077 () Bool)

(assert (=> b!3951205 m!4520077))

(assert (=> b!3951097 d!1171693))

(declare-fun d!1171713 () Bool)

(declare-fun e!2445621 () Bool)

(assert (=> d!1171713 e!2445621))

(declare-fun res!1598753 () Bool)

(assert (=> d!1171713 (=> res!1598753 e!2445621)))

(declare-fun lt!1381229 () Bool)

(assert (=> d!1171713 (= res!1598753 (not lt!1381229))))

(declare-fun e!2445620 () Bool)

(assert (=> d!1171713 (= lt!1381229 e!2445620)))

(declare-fun res!1598754 () Bool)

(assert (=> d!1171713 (=> res!1598754 e!2445620)))

(assert (=> d!1171713 (= res!1598754 ((_ is Nil!42014) Nil!42014))))

(assert (=> d!1171713 (= (isPrefix!3665 Nil!42014 suffix!1176) lt!1381229)))

(declare-fun b!3951241 () Bool)

(declare-fun e!2445619 () Bool)

(assert (=> b!3951241 (= e!2445620 e!2445619)))

(declare-fun res!1598752 () Bool)

(assert (=> b!3951241 (=> (not res!1598752) (not e!2445619))))

(assert (=> b!3951241 (= res!1598752 (not ((_ is Nil!42014) suffix!1176)))))

(declare-fun b!3951243 () Bool)

(declare-fun tail!6120 (List!42138) List!42138)

(assert (=> b!3951243 (= e!2445619 (isPrefix!3665 (tail!6120 Nil!42014) (tail!6120 suffix!1176)))))

(declare-fun b!3951244 () Bool)

(assert (=> b!3951244 (= e!2445621 (>= (size!31487 suffix!1176) (size!31487 Nil!42014)))))

(declare-fun b!3951242 () Bool)

(declare-fun res!1598755 () Bool)

(assert (=> b!3951242 (=> (not res!1598755) (not e!2445619))))

(declare-fun head!8394 (List!42138) C!23148)

(assert (=> b!3951242 (= res!1598755 (= (head!8394 Nil!42014) (head!8394 suffix!1176)))))

(assert (= (and d!1171713 (not res!1598754)) b!3951241))

(assert (= (and b!3951241 res!1598752) b!3951242))

(assert (= (and b!3951242 res!1598755) b!3951243))

(assert (= (and d!1171713 (not res!1598753)) b!3951244))

(declare-fun m!4520091 () Bool)

(assert (=> b!3951243 m!4520091))

(declare-fun m!4520093 () Bool)

(assert (=> b!3951243 m!4520093))

(assert (=> b!3951243 m!4520091))

(assert (=> b!3951243 m!4520093))

(declare-fun m!4520097 () Bool)

(assert (=> b!3951243 m!4520097))

(assert (=> b!3951244 m!4519919))

(assert (=> b!3951244 m!4519921))

(declare-fun m!4520107 () Bool)

(assert (=> b!3951242 m!4520107))

(declare-fun m!4520113 () Bool)

(assert (=> b!3951242 m!4520113))

(assert (=> b!3951117 d!1171713))

(declare-fun d!1171719 () Bool)

(declare-fun res!1598762 () Bool)

(declare-fun e!2445626 () Bool)

(assert (=> d!1171719 (=> (not res!1598762) (not e!2445626))))

(assert (=> d!1171719 (= res!1598762 (not (isEmpty!25094 (originalCharacters!7176 (h!47435 prefixTokens!80)))))))

(assert (=> d!1171719 (= (inv!56243 (h!47435 prefixTokens!80)) e!2445626)))

(declare-fun b!3951253 () Bool)

(declare-fun res!1598763 () Bool)

(assert (=> b!3951253 (=> (not res!1598763) (not e!2445626))))

(declare-fun dynLambda!17989 (Int TokenValue!6806) BalanceConc!25168)

(assert (=> b!3951253 (= res!1598763 (= (originalCharacters!7176 (h!47435 prefixTokens!80)) (list!15604 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (value!208050 (h!47435 prefixTokens!80))))))))

(declare-fun b!3951254 () Bool)

(assert (=> b!3951254 (= e!2445626 (= (size!31486 (h!47435 prefixTokens!80)) (size!31487 (originalCharacters!7176 (h!47435 prefixTokens!80)))))))

(assert (= (and d!1171719 res!1598762) b!3951253))

(assert (= (and b!3951253 res!1598763) b!3951254))

(declare-fun b_lambda!115593 () Bool)

(assert (=> (not b_lambda!115593) (not b!3951253)))

(declare-fun t!328651 () Bool)

(declare-fun tb!237777 () Bool)

(assert (=> (and b!3951110 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328651) tb!237777))

(declare-fun b!3951259 () Bool)

(declare-fun e!2445629 () Bool)

(declare-fun tp!1203632 () Bool)

(declare-fun inv!56246 (Conc!12787) Bool)

(assert (=> b!3951259 (= e!2445629 (and (inv!56246 (c!686045 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (value!208050 (h!47435 prefixTokens!80))))) tp!1203632))))

(declare-fun result!287968 () Bool)

(declare-fun inv!56247 (BalanceConc!25168) Bool)

(assert (=> tb!237777 (= result!287968 (and (inv!56247 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (value!208050 (h!47435 prefixTokens!80)))) e!2445629))))

(assert (= tb!237777 b!3951259))

(declare-fun m!4520115 () Bool)

(assert (=> b!3951259 m!4520115))

(declare-fun m!4520117 () Bool)

(assert (=> tb!237777 m!4520117))

(assert (=> b!3951253 t!328651))

(declare-fun b_and!302763 () Bool)

(assert (= b_and!302741 (and (=> t!328651 result!287968) b_and!302763)))

(declare-fun t!328653 () Bool)

(declare-fun tb!237779 () Bool)

(assert (=> (and b!3951122 (= (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328653) tb!237779))

(declare-fun result!287972 () Bool)

(assert (= result!287972 result!287968))

(assert (=> b!3951253 t!328653))

(declare-fun b_and!302765 () Bool)

(assert (= b_and!302745 (and (=> t!328653 result!287972) b_and!302765)))

(declare-fun t!328655 () Bool)

(declare-fun tb!237781 () Bool)

(assert (=> (and b!3951092 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328655) tb!237781))

(declare-fun result!287974 () Bool)

(assert (= result!287974 result!287968))

(assert (=> b!3951253 t!328655))

(declare-fun b_and!302767 () Bool)

(assert (= b_and!302749 (and (=> t!328655 result!287974) b_and!302767)))

(declare-fun tb!237783 () Bool)

(declare-fun t!328657 () Bool)

(assert (=> (and b!3951102 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328657) tb!237783))

(declare-fun result!287976 () Bool)

(assert (= result!287976 result!287968))

(assert (=> b!3951253 t!328657))

(declare-fun b_and!302769 () Bool)

(assert (= b_and!302753 (and (=> t!328657 result!287976) b_and!302769)))

(declare-fun m!4520119 () Bool)

(assert (=> d!1171719 m!4520119))

(declare-fun m!4520121 () Bool)

(assert (=> b!3951253 m!4520121))

(assert (=> b!3951253 m!4520121))

(declare-fun m!4520123 () Bool)

(assert (=> b!3951253 m!4520123))

(declare-fun m!4520125 () Bool)

(assert (=> b!3951254 m!4520125))

(assert (=> b!3951116 d!1171719))

(declare-fun d!1171721 () Bool)

(assert (=> d!1171721 (= (inv!56239 (tag!7436 (h!47436 rules!2768))) (= (mod (str.len (value!208049 (tag!7436 (h!47436 rules!2768)))) 2) 0))))

(assert (=> b!3951095 d!1171721))

(declare-fun d!1171723 () Bool)

(declare-fun res!1598764 () Bool)

(declare-fun e!2445630 () Bool)

(assert (=> d!1171723 (=> (not res!1598764) (not e!2445630))))

(assert (=> d!1171723 (= res!1598764 (semiInverseModEq!2837 (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toValue!9052 (transformation!6576 (h!47436 rules!2768)))))))

(assert (=> d!1171723 (= (inv!56242 (transformation!6576 (h!47436 rules!2768))) e!2445630)))

(declare-fun b!3951260 () Bool)

(assert (=> b!3951260 (= e!2445630 (equivClasses!2736 (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toValue!9052 (transformation!6576 (h!47436 rules!2768)))))))

(assert (= (and d!1171723 res!1598764) b!3951260))

(declare-fun m!4520127 () Bool)

(assert (=> d!1171723 m!4520127))

(declare-fun m!4520129 () Bool)

(assert (=> b!3951260 m!4520129))

(assert (=> b!3951095 d!1171723))

(declare-fun d!1171725 () Bool)

(declare-fun e!2445647 () Bool)

(assert (=> d!1171725 e!2445647))

(declare-fun c!686081 () Bool)

(declare-fun lt!1381249 () tuple2!41298)

(declare-fun size!31490 (List!42139) Int)

(assert (=> d!1171725 (= c!686081 (> (size!31490 (_1!23783 lt!1381249)) 0))))

(declare-fun e!2445645 () tuple2!41298)

(assert (=> d!1171725 (= lt!1381249 e!2445645)))

(declare-fun c!686082 () Bool)

(declare-fun lt!1381248 () Option!8996)

(assert (=> d!1171725 (= c!686082 ((_ is Some!8995) lt!1381248))))

(assert (=> d!1171725 (= lt!1381248 (maxPrefix!3469 thiss!20629 rules!2768 lt!1381176))))

(assert (=> d!1171725 (= (lexList!1933 thiss!20629 rules!2768 lt!1381176) lt!1381249)))

(declare-fun b!3951289 () Bool)

(declare-fun e!2445646 () Bool)

(assert (=> b!3951289 (= e!2445647 e!2445646)))

(declare-fun res!1598781 () Bool)

(assert (=> b!3951289 (= res!1598781 (< (size!31487 (_2!23783 lt!1381249)) (size!31487 lt!1381176)))))

(assert (=> b!3951289 (=> (not res!1598781) (not e!2445646))))

(declare-fun b!3951290 () Bool)

(assert (=> b!3951290 (= e!2445647 (= (_2!23783 lt!1381249) lt!1381176))))

(declare-fun b!3951291 () Bool)

(assert (=> b!3951291 (= e!2445646 (not (isEmpty!25095 (_1!23783 lt!1381249))))))

(declare-fun b!3951292 () Bool)

(declare-fun lt!1381247 () tuple2!41298)

(assert (=> b!3951292 (= e!2445645 (tuple2!41299 (Cons!42015 (_1!23784 (v!39335 lt!1381248)) (_1!23783 lt!1381247)) (_2!23783 lt!1381247)))))

(assert (=> b!3951292 (= lt!1381247 (lexList!1933 thiss!20629 rules!2768 (_2!23784 (v!39335 lt!1381248))))))

(declare-fun b!3951293 () Bool)

(assert (=> b!3951293 (= e!2445645 (tuple2!41299 Nil!42015 lt!1381176))))

(assert (= (and d!1171725 c!686082) b!3951292))

(assert (= (and d!1171725 (not c!686082)) b!3951293))

(assert (= (and d!1171725 c!686081) b!3951289))

(assert (= (and d!1171725 (not c!686081)) b!3951290))

(assert (= (and b!3951289 res!1598781) b!3951291))

(declare-fun m!4520131 () Bool)

(assert (=> d!1171725 m!4520131))

(assert (=> d!1171725 m!4519915))

(declare-fun m!4520133 () Bool)

(assert (=> b!3951289 m!4520133))

(assert (=> b!3951289 m!4520061))

(declare-fun m!4520135 () Bool)

(assert (=> b!3951291 m!4520135))

(declare-fun m!4520137 () Bool)

(assert (=> b!3951292 m!4520137))

(assert (=> b!3951094 d!1171725))

(declare-fun d!1171727 () Bool)

(declare-fun e!2445659 () Bool)

(assert (=> d!1171727 e!2445659))

(declare-fun res!1598795 () Bool)

(assert (=> d!1171727 (=> (not res!1598795) (not e!2445659))))

(declare-fun lt!1381260 () List!42139)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6372 (List!42139) (InoxSet Token!12290))

(assert (=> d!1171727 (= res!1598795 (= (content!6372 lt!1381260) ((_ map or) (content!6372 prefixTokens!80) (content!6372 suffixTokens!72))))))

(declare-fun e!2445660 () List!42139)

(assert (=> d!1171727 (= lt!1381260 e!2445660)))

(declare-fun c!686088 () Bool)

(assert (=> d!1171727 (= c!686088 ((_ is Nil!42015) prefixTokens!80))))

(assert (=> d!1171727 (= (++!10909 prefixTokens!80 suffixTokens!72) lt!1381260)))

(declare-fun b!3951318 () Bool)

(declare-fun res!1598794 () Bool)

(assert (=> b!3951318 (=> (not res!1598794) (not e!2445659))))

(assert (=> b!3951318 (= res!1598794 (= (size!31490 lt!1381260) (+ (size!31490 prefixTokens!80) (size!31490 suffixTokens!72))))))

(declare-fun b!3951319 () Bool)

(assert (=> b!3951319 (= e!2445659 (or (not (= suffixTokens!72 Nil!42015)) (= lt!1381260 prefixTokens!80)))))

(declare-fun b!3951317 () Bool)

(assert (=> b!3951317 (= e!2445660 (Cons!42015 (h!47435 prefixTokens!80) (++!10909 (t!328640 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3951316 () Bool)

(assert (=> b!3951316 (= e!2445660 suffixTokens!72)))

(assert (= (and d!1171727 c!686088) b!3951316))

(assert (= (and d!1171727 (not c!686088)) b!3951317))

(assert (= (and d!1171727 res!1598795) b!3951318))

(assert (= (and b!3951318 res!1598794) b!3951319))

(declare-fun m!4520195 () Bool)

(assert (=> d!1171727 m!4520195))

(declare-fun m!4520197 () Bool)

(assert (=> d!1171727 m!4520197))

(declare-fun m!4520199 () Bool)

(assert (=> d!1171727 m!4520199))

(declare-fun m!4520201 () Bool)

(assert (=> b!3951318 m!4520201))

(declare-fun m!4520203 () Bool)

(assert (=> b!3951318 m!4520203))

(declare-fun m!4520205 () Bool)

(assert (=> b!3951318 m!4520205))

(declare-fun m!4520207 () Bool)

(assert (=> b!3951317 m!4520207))

(assert (=> b!3951094 d!1171727))

(declare-fun b!3951350 () Bool)

(declare-fun res!1598814 () Bool)

(declare-fun e!2445677 () Bool)

(assert (=> b!3951350 (=> (not res!1598814) (not e!2445677))))

(declare-fun lt!1381268 () List!42138)

(assert (=> b!3951350 (= res!1598814 (= (size!31487 lt!1381268) (+ (size!31487 prefix!426) (size!31487 suffix!1176))))))

(declare-fun d!1171733 () Bool)

(assert (=> d!1171733 e!2445677))

(declare-fun res!1598815 () Bool)

(assert (=> d!1171733 (=> (not res!1598815) (not e!2445677))))

(declare-fun content!6373 (List!42138) (InoxSet C!23148))

(assert (=> d!1171733 (= res!1598815 (= (content!6373 lt!1381268) ((_ map or) (content!6373 prefix!426) (content!6373 suffix!1176))))))

(declare-fun e!2445678 () List!42138)

(assert (=> d!1171733 (= lt!1381268 e!2445678)))

(declare-fun c!686094 () Bool)

(assert (=> d!1171733 (= c!686094 ((_ is Nil!42014) prefix!426))))

(assert (=> d!1171733 (= (++!10910 prefix!426 suffix!1176) lt!1381268)))

(declare-fun b!3951351 () Bool)

(assert (=> b!3951351 (= e!2445677 (or (not (= suffix!1176 Nil!42014)) (= lt!1381268 prefix!426)))))

(declare-fun b!3951349 () Bool)

(assert (=> b!3951349 (= e!2445678 (Cons!42014 (h!47434 prefix!426) (++!10910 (t!328639 prefix!426) suffix!1176)))))

(declare-fun b!3951348 () Bool)

(assert (=> b!3951348 (= e!2445678 suffix!1176)))

(assert (= (and d!1171733 c!686094) b!3951348))

(assert (= (and d!1171733 (not c!686094)) b!3951349))

(assert (= (and d!1171733 res!1598815) b!3951350))

(assert (= (and b!3951350 res!1598814) b!3951351))

(declare-fun m!4520219 () Bool)

(assert (=> b!3951350 m!4520219))

(declare-fun m!4520221 () Bool)

(assert (=> b!3951350 m!4520221))

(assert (=> b!3951350 m!4519919))

(declare-fun m!4520223 () Bool)

(assert (=> d!1171733 m!4520223))

(declare-fun m!4520225 () Bool)

(assert (=> d!1171733 m!4520225))

(declare-fun m!4520227 () Bool)

(assert (=> d!1171733 m!4520227))

(declare-fun m!4520229 () Bool)

(assert (=> b!3951349 m!4520229))

(assert (=> b!3951094 d!1171733))

(declare-fun d!1171739 () Bool)

(assert (=> d!1171739 (= (isEmpty!25094 prefix!426) ((_ is Nil!42014) prefix!426))))

(assert (=> b!3951104 d!1171739))

(declare-fun d!1171743 () Bool)

(assert (=> d!1171743 (= (isEmpty!25096 rules!2768) ((_ is Nil!42016) rules!2768))))

(assert (=> b!3951124 d!1171743))

(declare-fun d!1171745 () Bool)

(declare-fun res!1598820 () Bool)

(declare-fun e!2445682 () Bool)

(assert (=> d!1171745 (=> (not res!1598820) (not e!2445682))))

(assert (=> d!1171745 (= res!1598820 (not (isEmpty!25094 (originalCharacters!7176 (_1!23784 (v!39335 err!4433))))))))

(assert (=> d!1171745 (= (inv!56243 (_1!23784 (v!39335 err!4433))) e!2445682)))

(declare-fun b!3951356 () Bool)

(declare-fun res!1598821 () Bool)

(assert (=> b!3951356 (=> (not res!1598821) (not e!2445682))))

(assert (=> b!3951356 (= res!1598821 (= (originalCharacters!7176 (_1!23784 (v!39335 err!4433))) (list!15604 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (value!208050 (_1!23784 (v!39335 err!4433)))))))))

(declare-fun b!3951357 () Bool)

(assert (=> b!3951357 (= e!2445682 (= (size!31486 (_1!23784 (v!39335 err!4433))) (size!31487 (originalCharacters!7176 (_1!23784 (v!39335 err!4433))))))))

(assert (= (and d!1171745 res!1598820) b!3951356))

(assert (= (and b!3951356 res!1598821) b!3951357))

(declare-fun b_lambda!115595 () Bool)

(assert (=> (not b_lambda!115595) (not b!3951356)))

(declare-fun tb!237785 () Bool)

(declare-fun t!328659 () Bool)

(assert (=> (and b!3951110 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328659) tb!237785))

(declare-fun b!3951358 () Bool)

(declare-fun e!2445683 () Bool)

(declare-fun tp!1203633 () Bool)

(assert (=> b!3951358 (= e!2445683 (and (inv!56246 (c!686045 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (value!208050 (_1!23784 (v!39335 err!4433)))))) tp!1203633))))

(declare-fun result!287978 () Bool)

(assert (=> tb!237785 (= result!287978 (and (inv!56247 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (value!208050 (_1!23784 (v!39335 err!4433))))) e!2445683))))

(assert (= tb!237785 b!3951358))

(declare-fun m!4520247 () Bool)

(assert (=> b!3951358 m!4520247))

(declare-fun m!4520249 () Bool)

(assert (=> tb!237785 m!4520249))

(assert (=> b!3951356 t!328659))

(declare-fun b_and!302771 () Bool)

(assert (= b_and!302763 (and (=> t!328659 result!287978) b_and!302771)))

(declare-fun t!328661 () Bool)

(declare-fun tb!237787 () Bool)

(assert (=> (and b!3951122 (= (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328661) tb!237787))

(declare-fun result!287980 () Bool)

(assert (= result!287980 result!287978))

(assert (=> b!3951356 t!328661))

(declare-fun b_and!302773 () Bool)

(assert (= b_and!302765 (and (=> t!328661 result!287980) b_and!302773)))

(declare-fun tb!237789 () Bool)

(declare-fun t!328663 () Bool)

(assert (=> (and b!3951092 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328663) tb!237789))

(declare-fun result!287982 () Bool)

(assert (= result!287982 result!287978))

(assert (=> b!3951356 t!328663))

(declare-fun b_and!302775 () Bool)

(assert (= b_and!302767 (and (=> t!328663 result!287982) b_and!302775)))

(declare-fun tb!237791 () Bool)

(declare-fun t!328665 () Bool)

(assert (=> (and b!3951102 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328665) tb!237791))

(declare-fun result!287984 () Bool)

(assert (= result!287984 result!287978))

(assert (=> b!3951356 t!328665))

(declare-fun b_and!302777 () Bool)

(assert (= b_and!302769 (and (=> t!328665 result!287984) b_and!302777)))

(declare-fun m!4520251 () Bool)

(assert (=> d!1171745 m!4520251))

(declare-fun m!4520253 () Bool)

(assert (=> b!3951356 m!4520253))

(assert (=> b!3951356 m!4520253))

(declare-fun m!4520255 () Bool)

(assert (=> b!3951356 m!4520255))

(declare-fun m!4520257 () Bool)

(assert (=> b!3951357 m!4520257))

(assert (=> b!3951103 d!1171745))

(declare-fun d!1171749 () Bool)

(declare-fun e!2445686 () Bool)

(assert (=> d!1171749 e!2445686))

(declare-fun c!686095 () Bool)

(declare-fun lt!1381277 () tuple2!41298)

(assert (=> d!1171749 (= c!686095 (> (size!31490 (_1!23783 lt!1381277)) 0))))

(declare-fun e!2445684 () tuple2!41298)

(assert (=> d!1171749 (= lt!1381277 e!2445684)))

(declare-fun c!686096 () Bool)

(declare-fun lt!1381276 () Option!8996)

(assert (=> d!1171749 (= c!686096 ((_ is Some!8995) lt!1381276))))

(assert (=> d!1171749 (= lt!1381276 (maxPrefix!3469 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1171749 (= (lexList!1933 thiss!20629 rules!2768 suffix!1176) lt!1381277)))

(declare-fun b!3951359 () Bool)

(declare-fun e!2445685 () Bool)

(assert (=> b!3951359 (= e!2445686 e!2445685)))

(declare-fun res!1598822 () Bool)

(assert (=> b!3951359 (= res!1598822 (< (size!31487 (_2!23783 lt!1381277)) (size!31487 suffix!1176)))))

(assert (=> b!3951359 (=> (not res!1598822) (not e!2445685))))

(declare-fun b!3951360 () Bool)

(assert (=> b!3951360 (= e!2445686 (= (_2!23783 lt!1381277) suffix!1176))))

(declare-fun b!3951361 () Bool)

(assert (=> b!3951361 (= e!2445685 (not (isEmpty!25095 (_1!23783 lt!1381277))))))

(declare-fun b!3951362 () Bool)

(declare-fun lt!1381275 () tuple2!41298)

(assert (=> b!3951362 (= e!2445684 (tuple2!41299 (Cons!42015 (_1!23784 (v!39335 lt!1381276)) (_1!23783 lt!1381275)) (_2!23783 lt!1381275)))))

(assert (=> b!3951362 (= lt!1381275 (lexList!1933 thiss!20629 rules!2768 (_2!23784 (v!39335 lt!1381276))))))

(declare-fun b!3951363 () Bool)

(assert (=> b!3951363 (= e!2445684 (tuple2!41299 Nil!42015 suffix!1176))))

(assert (= (and d!1171749 c!686096) b!3951362))

(assert (= (and d!1171749 (not c!686096)) b!3951363))

(assert (= (and d!1171749 c!686095) b!3951359))

(assert (= (and d!1171749 (not c!686095)) b!3951360))

(assert (= (and b!3951359 res!1598822) b!3951361))

(declare-fun m!4520267 () Bool)

(assert (=> d!1171749 m!4520267))

(declare-fun m!4520269 () Bool)

(assert (=> d!1171749 m!4520269))

(declare-fun m!4520271 () Bool)

(assert (=> b!3951359 m!4520271))

(assert (=> b!3951359 m!4519919))

(declare-fun m!4520273 () Bool)

(assert (=> b!3951361 m!4520273))

(declare-fun m!4520275 () Bool)

(assert (=> b!3951362 m!4520275))

(assert (=> b!3951123 d!1171749))

(declare-fun b!3951379 () Bool)

(declare-fun res!1598825 () Bool)

(declare-fun e!2445699 () Bool)

(assert (=> b!3951379 (=> res!1598825 e!2445699)))

(assert (=> b!3951379 (= res!1598825 (not ((_ is IntegerValue!20420) (value!208050 (_1!23784 (v!39335 err!4433))))))))

(declare-fun e!2445700 () Bool)

(assert (=> b!3951379 (= e!2445700 e!2445699)))

(declare-fun b!3951380 () Bool)

(declare-fun inv!17 (TokenValue!6806) Bool)

(assert (=> b!3951380 (= e!2445700 (inv!17 (value!208050 (_1!23784 (v!39335 err!4433)))))))

(declare-fun b!3951381 () Bool)

(declare-fun inv!15 (TokenValue!6806) Bool)

(assert (=> b!3951381 (= e!2445699 (inv!15 (value!208050 (_1!23784 (v!39335 err!4433)))))))

(declare-fun b!3951383 () Bool)

(declare-fun e!2445698 () Bool)

(declare-fun inv!16 (TokenValue!6806) Bool)

(assert (=> b!3951383 (= e!2445698 (inv!16 (value!208050 (_1!23784 (v!39335 err!4433)))))))

(declare-fun d!1171753 () Bool)

(declare-fun c!686103 () Bool)

(assert (=> d!1171753 (= c!686103 ((_ is IntegerValue!20418) (value!208050 (_1!23784 (v!39335 err!4433)))))))

(assert (=> d!1171753 (= (inv!21 (value!208050 (_1!23784 (v!39335 err!4433)))) e!2445698)))

(declare-fun b!3951382 () Bool)

(assert (=> b!3951382 (= e!2445698 e!2445700)))

(declare-fun c!686102 () Bool)

(assert (=> b!3951382 (= c!686102 ((_ is IntegerValue!20419) (value!208050 (_1!23784 (v!39335 err!4433)))))))

(assert (= (and d!1171753 c!686103) b!3951383))

(assert (= (and d!1171753 (not c!686103)) b!3951382))

(assert (= (and b!3951382 c!686102) b!3951380))

(assert (= (and b!3951382 (not c!686102)) b!3951379))

(assert (= (and b!3951379 (not res!1598825)) b!3951381))

(declare-fun m!4520287 () Bool)

(assert (=> b!3951380 m!4520287))

(declare-fun m!4520289 () Bool)

(assert (=> b!3951381 m!4520289))

(declare-fun m!4520291 () Bool)

(assert (=> b!3951383 m!4520291))

(assert (=> b!3951101 d!1171753))

(declare-fun b!3951384 () Bool)

(declare-fun res!1598828 () Bool)

(declare-fun e!2445701 () Bool)

(assert (=> b!3951384 (=> (not res!1598828) (not e!2445701))))

(declare-fun lt!1381283 () Option!8996)

(assert (=> b!3951384 (= res!1598828 (< (size!31487 (_2!23784 (get!13865 lt!1381283))) (size!31487 lt!1381176)))))

(declare-fun call!285230 () Option!8996)

(declare-fun bm!285225 () Bool)

(assert (=> bm!285225 (= call!285230 (maxPrefixOneRule!2523 thiss!20629 (h!47436 rules!2768) lt!1381176))))

(declare-fun b!3951385 () Bool)

(declare-fun e!2445703 () Option!8996)

(declare-fun lt!1381287 () Option!8996)

(declare-fun lt!1381286 () Option!8996)

(assert (=> b!3951385 (= e!2445703 (ite (and ((_ is None!8995) lt!1381287) ((_ is None!8995) lt!1381286)) None!8995 (ite ((_ is None!8995) lt!1381286) lt!1381287 (ite ((_ is None!8995) lt!1381287) lt!1381286 (ite (>= (size!31486 (_1!23784 (v!39335 lt!1381287))) (size!31486 (_1!23784 (v!39335 lt!1381286)))) lt!1381287 lt!1381286)))))))

(assert (=> b!3951385 (= lt!1381287 call!285230)))

(assert (=> b!3951385 (= lt!1381286 (maxPrefix!3469 thiss!20629 (t!328641 rules!2768) lt!1381176))))

(declare-fun b!3951386 () Bool)

(assert (=> b!3951386 (= e!2445703 call!285230)))

(declare-fun d!1171761 () Bool)

(declare-fun e!2445702 () Bool)

(assert (=> d!1171761 e!2445702))

(declare-fun res!1598831 () Bool)

(assert (=> d!1171761 (=> res!1598831 e!2445702)))

(assert (=> d!1171761 (= res!1598831 (isEmpty!25097 lt!1381283))))

(assert (=> d!1171761 (= lt!1381283 e!2445703)))

(declare-fun c!686104 () Bool)

(assert (=> d!1171761 (= c!686104 (and ((_ is Cons!42016) rules!2768) ((_ is Nil!42016) (t!328641 rules!2768))))))

(declare-fun lt!1381284 () Unit!60528)

(declare-fun lt!1381285 () Unit!60528)

(assert (=> d!1171761 (= lt!1381284 lt!1381285)))

(assert (=> d!1171761 (isPrefix!3665 lt!1381176 lt!1381176)))

(assert (=> d!1171761 (= lt!1381285 (lemmaIsPrefixRefl!2316 lt!1381176 lt!1381176))))

(assert (=> d!1171761 (rulesValidInductive!2383 thiss!20629 rules!2768)))

(assert (=> d!1171761 (= (maxPrefix!3469 thiss!20629 rules!2768 lt!1381176) lt!1381283)))

(declare-fun b!3951387 () Bool)

(declare-fun res!1598832 () Bool)

(assert (=> b!3951387 (=> (not res!1598832) (not e!2445701))))

(assert (=> b!3951387 (= res!1598832 (= (++!10910 (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381283)))) (_2!23784 (get!13865 lt!1381283))) lt!1381176))))

(declare-fun b!3951388 () Bool)

(assert (=> b!3951388 (= e!2445701 (contains!8407 rules!2768 (rule!9544 (_1!23784 (get!13865 lt!1381283)))))))

(declare-fun b!3951389 () Bool)

(declare-fun res!1598829 () Bool)

(assert (=> b!3951389 (=> (not res!1598829) (not e!2445701))))

(assert (=> b!3951389 (= res!1598829 (matchR!5515 (regex!6576 (rule!9544 (_1!23784 (get!13865 lt!1381283)))) (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381283))))))))

(declare-fun b!3951390 () Bool)

(declare-fun res!1598827 () Bool)

(assert (=> b!3951390 (=> (not res!1598827) (not e!2445701))))

(assert (=> b!3951390 (= res!1598827 (= (value!208050 (_1!23784 (get!13865 lt!1381283))) (apply!9807 (transformation!6576 (rule!9544 (_1!23784 (get!13865 lt!1381283)))) (seqFromList!4835 (originalCharacters!7176 (_1!23784 (get!13865 lt!1381283)))))))))

(declare-fun b!3951391 () Bool)

(declare-fun res!1598826 () Bool)

(assert (=> b!3951391 (=> (not res!1598826) (not e!2445701))))

(assert (=> b!3951391 (= res!1598826 (= (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381283)))) (originalCharacters!7176 (_1!23784 (get!13865 lt!1381283)))))))

(declare-fun b!3951392 () Bool)

(assert (=> b!3951392 (= e!2445702 e!2445701)))

(declare-fun res!1598830 () Bool)

(assert (=> b!3951392 (=> (not res!1598830) (not e!2445701))))

(assert (=> b!3951392 (= res!1598830 (isDefined!6982 lt!1381283))))

(assert (= (and d!1171761 c!686104) b!3951386))

(assert (= (and d!1171761 (not c!686104)) b!3951385))

(assert (= (or b!3951386 b!3951385) bm!285225))

(assert (= (and d!1171761 (not res!1598831)) b!3951392))

(assert (= (and b!3951392 res!1598830) b!3951391))

(assert (= (and b!3951391 res!1598826) b!3951384))

(assert (= (and b!3951384 res!1598828) b!3951387))

(assert (= (and b!3951387 res!1598832) b!3951390))

(assert (= (and b!3951390 res!1598827) b!3951389))

(assert (= (and b!3951389 res!1598829) b!3951388))

(declare-fun m!4520293 () Bool)

(assert (=> b!3951391 m!4520293))

(declare-fun m!4520295 () Bool)

(assert (=> b!3951391 m!4520295))

(assert (=> b!3951391 m!4520295))

(declare-fun m!4520297 () Bool)

(assert (=> b!3951391 m!4520297))

(assert (=> b!3951388 m!4520293))

(declare-fun m!4520299 () Bool)

(assert (=> b!3951388 m!4520299))

(assert (=> b!3951385 m!4519911))

(assert (=> b!3951387 m!4520293))

(assert (=> b!3951387 m!4520295))

(assert (=> b!3951387 m!4520295))

(assert (=> b!3951387 m!4520297))

(assert (=> b!3951387 m!4520297))

(declare-fun m!4520301 () Bool)

(assert (=> b!3951387 m!4520301))

(assert (=> bm!285225 m!4519945))

(assert (=> b!3951384 m!4520293))

(declare-fun m!4520303 () Bool)

(assert (=> b!3951384 m!4520303))

(assert (=> b!3951384 m!4520061))

(declare-fun m!4520305 () Bool)

(assert (=> d!1171761 m!4520305))

(assert (=> d!1171761 m!4519951))

(assert (=> d!1171761 m!4519953))

(declare-fun m!4520307 () Bool)

(assert (=> d!1171761 m!4520307))

(assert (=> b!3951389 m!4520293))

(assert (=> b!3951389 m!4520295))

(assert (=> b!3951389 m!4520295))

(assert (=> b!3951389 m!4520297))

(assert (=> b!3951389 m!4520297))

(declare-fun m!4520315 () Bool)

(assert (=> b!3951389 m!4520315))

(assert (=> b!3951390 m!4520293))

(declare-fun m!4520317 () Bool)

(assert (=> b!3951390 m!4520317))

(assert (=> b!3951390 m!4520317))

(declare-fun m!4520319 () Bool)

(assert (=> b!3951390 m!4520319))

(declare-fun m!4520321 () Bool)

(assert (=> b!3951392 m!4520321))

(assert (=> b!3951109 d!1171761))

(declare-fun d!1171765 () Bool)

(assert (=> d!1171765 (= (isEmpty!25095 prefixTokens!80) ((_ is Nil!42015) prefixTokens!80))))

(assert (=> b!3951108 d!1171765))

(declare-fun d!1171767 () Bool)

(assert (=> d!1171767 (and (= lt!1381175 prefix!426) (= (_2!23784 (v!39335 lt!1381184)) suffix!1176))))

(declare-fun lt!1381293 () Unit!60528)

(declare-fun choose!23585 (List!42138 List!42138 List!42138 List!42138) Unit!60528)

(assert (=> d!1171767 (= lt!1381293 (choose!23585 lt!1381175 (_2!23784 (v!39335 lt!1381184)) prefix!426 suffix!1176))))

(assert (=> d!1171767 (= (++!10910 lt!1381175 (_2!23784 (v!39335 lt!1381184))) (++!10910 prefix!426 suffix!1176))))

(assert (=> d!1171767 (= (lemmaConcatSameAndSameSizesThenSameLists!586 lt!1381175 (_2!23784 (v!39335 lt!1381184)) prefix!426 suffix!1176) lt!1381293)))

(declare-fun bs!587022 () Bool)

(assert (= bs!587022 d!1171767))

(declare-fun m!4520327 () Bool)

(assert (=> bs!587022 m!4520327))

(assert (=> bs!587022 m!4519977))

(assert (=> bs!587022 m!4519995))

(assert (=> b!3951088 d!1171767))

(declare-fun b!3951405 () Bool)

(declare-fun res!1598839 () Bool)

(declare-fun e!2445711 () Bool)

(assert (=> b!3951405 (=> res!1598839 e!2445711)))

(assert (=> b!3951405 (= res!1598839 (not ((_ is IntegerValue!20420) (value!208050 (h!47435 suffixTokens!72)))))))

(declare-fun e!2445712 () Bool)

(assert (=> b!3951405 (= e!2445712 e!2445711)))

(declare-fun b!3951406 () Bool)

(assert (=> b!3951406 (= e!2445712 (inv!17 (value!208050 (h!47435 suffixTokens!72))))))

(declare-fun b!3951407 () Bool)

(assert (=> b!3951407 (= e!2445711 (inv!15 (value!208050 (h!47435 suffixTokens!72))))))

(declare-fun b!3951409 () Bool)

(declare-fun e!2445710 () Bool)

(assert (=> b!3951409 (= e!2445710 (inv!16 (value!208050 (h!47435 suffixTokens!72))))))

(declare-fun d!1171771 () Bool)

(declare-fun c!686109 () Bool)

(assert (=> d!1171771 (= c!686109 ((_ is IntegerValue!20418) (value!208050 (h!47435 suffixTokens!72))))))

(assert (=> d!1171771 (= (inv!21 (value!208050 (h!47435 suffixTokens!72))) e!2445710)))

(declare-fun b!3951408 () Bool)

(assert (=> b!3951408 (= e!2445710 e!2445712)))

(declare-fun c!686108 () Bool)

(assert (=> b!3951408 (= c!686108 ((_ is IntegerValue!20419) (value!208050 (h!47435 suffixTokens!72))))))

(assert (= (and d!1171771 c!686109) b!3951409))

(assert (= (and d!1171771 (not c!686109)) b!3951408))

(assert (= (and b!3951408 c!686108) b!3951406))

(assert (= (and b!3951408 (not c!686108)) b!3951405))

(assert (= (and b!3951405 (not res!1598839)) b!3951407))

(declare-fun m!4520329 () Bool)

(assert (=> b!3951406 m!4520329))

(declare-fun m!4520331 () Bool)

(assert (=> b!3951407 m!4520331))

(declare-fun m!4520333 () Bool)

(assert (=> b!3951409 m!4520333))

(assert (=> b!3951107 d!1171771))

(declare-fun d!1171773 () Bool)

(assert (=> d!1171773 (= (inv!56239 (tag!7436 (rule!9544 (h!47435 suffixTokens!72)))) (= (mod (str.len (value!208049 (tag!7436 (rule!9544 (h!47435 suffixTokens!72))))) 2) 0))))

(assert (=> b!3951105 d!1171773))

(declare-fun d!1171775 () Bool)

(declare-fun res!1598840 () Bool)

(declare-fun e!2445713 () Bool)

(assert (=> d!1171775 (=> (not res!1598840) (not e!2445713))))

(assert (=> d!1171775 (= res!1598840 (semiInverseModEq!2837 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toValue!9052 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))))))

(assert (=> d!1171775 (= (inv!56242 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) e!2445713)))

(declare-fun b!3951410 () Bool)

(assert (=> b!3951410 (= e!2445713 (equivClasses!2736 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toValue!9052 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))))))

(assert (= (and d!1171775 res!1598840) b!3951410))

(declare-fun m!4520337 () Bool)

(assert (=> d!1171775 m!4520337))

(declare-fun m!4520339 () Bool)

(assert (=> b!3951410 m!4520339))

(assert (=> b!3951105 d!1171775))

(declare-fun d!1171779 () Bool)

(assert (=> d!1171779 (= (inv!56239 (tag!7436 (rule!9544 (h!47435 prefixTokens!80)))) (= (mod (str.len (value!208049 (tag!7436 (rule!9544 (h!47435 prefixTokens!80))))) 2) 0))))

(assert (=> b!3951115 d!1171779))

(declare-fun d!1171781 () Bool)

(declare-fun res!1598841 () Bool)

(declare-fun e!2445714 () Bool)

(assert (=> d!1171781 (=> (not res!1598841) (not e!2445714))))

(assert (=> d!1171781 (= res!1598841 (semiInverseModEq!2837 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toValue!9052 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))))))

(assert (=> d!1171781 (= (inv!56242 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) e!2445714)))

(declare-fun b!3951411 () Bool)

(assert (=> b!3951411 (= e!2445714 (equivClasses!2736 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toValue!9052 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))))))

(assert (= (and d!1171781 res!1598841) b!3951411))

(declare-fun m!4520341 () Bool)

(assert (=> d!1171781 m!4520341))

(declare-fun m!4520343 () Bool)

(assert (=> b!3951411 m!4520343))

(assert (=> b!3951115 d!1171781))

(declare-fun d!1171783 () Bool)

(declare-fun res!1598842 () Bool)

(declare-fun e!2445715 () Bool)

(assert (=> d!1171783 (=> (not res!1598842) (not e!2445715))))

(assert (=> d!1171783 (= res!1598842 (not (isEmpty!25094 (originalCharacters!7176 (h!47435 suffixTokens!72)))))))

(assert (=> d!1171783 (= (inv!56243 (h!47435 suffixTokens!72)) e!2445715)))

(declare-fun b!3951412 () Bool)

(declare-fun res!1598843 () Bool)

(assert (=> b!3951412 (=> (not res!1598843) (not e!2445715))))

(assert (=> b!3951412 (= res!1598843 (= (originalCharacters!7176 (h!47435 suffixTokens!72)) (list!15604 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (value!208050 (h!47435 suffixTokens!72))))))))

(declare-fun b!3951413 () Bool)

(assert (=> b!3951413 (= e!2445715 (= (size!31486 (h!47435 suffixTokens!72)) (size!31487 (originalCharacters!7176 (h!47435 suffixTokens!72)))))))

(assert (= (and d!1171783 res!1598842) b!3951412))

(assert (= (and b!3951412 res!1598843) b!3951413))

(declare-fun b_lambda!115601 () Bool)

(assert (=> (not b_lambda!115601) (not b!3951412)))

(declare-fun t!328683 () Bool)

(declare-fun tb!237809 () Bool)

(assert (=> (and b!3951110 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328683) tb!237809))

(declare-fun b!3951414 () Bool)

(declare-fun e!2445716 () Bool)

(declare-fun tp!1203635 () Bool)

(assert (=> b!3951414 (= e!2445716 (and (inv!56246 (c!686045 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (value!208050 (h!47435 suffixTokens!72))))) tp!1203635))))

(declare-fun result!288004 () Bool)

(assert (=> tb!237809 (= result!288004 (and (inv!56247 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (value!208050 (h!47435 suffixTokens!72)))) e!2445716))))

(assert (= tb!237809 b!3951414))

(declare-fun m!4520347 () Bool)

(assert (=> b!3951414 m!4520347))

(declare-fun m!4520349 () Bool)

(assert (=> tb!237809 m!4520349))

(assert (=> b!3951412 t!328683))

(declare-fun b_and!302795 () Bool)

(assert (= b_and!302771 (and (=> t!328683 result!288004) b_and!302795)))

(declare-fun tb!237811 () Bool)

(declare-fun t!328685 () Bool)

(assert (=> (and b!3951122 (= (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328685) tb!237811))

(declare-fun result!288006 () Bool)

(assert (= result!288006 result!288004))

(assert (=> b!3951412 t!328685))

(declare-fun b_and!302797 () Bool)

(assert (= b_and!302773 (and (=> t!328685 result!288006) b_and!302797)))

(declare-fun t!328687 () Bool)

(declare-fun tb!237813 () Bool)

(assert (=> (and b!3951092 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328687) tb!237813))

(declare-fun result!288008 () Bool)

(assert (= result!288008 result!288004))

(assert (=> b!3951412 t!328687))

(declare-fun b_and!302799 () Bool)

(assert (= b_and!302775 (and (=> t!328687 result!288008) b_and!302799)))

(declare-fun tb!237815 () Bool)

(declare-fun t!328689 () Bool)

(assert (=> (and b!3951102 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328689) tb!237815))

(declare-fun result!288010 () Bool)

(assert (= result!288010 result!288004))

(assert (=> b!3951412 t!328689))

(declare-fun b_and!302801 () Bool)

(assert (= b_and!302777 (and (=> t!328689 result!288010) b_and!302801)))

(declare-fun m!4520351 () Bool)

(assert (=> d!1171783 m!4520351))

(declare-fun m!4520353 () Bool)

(assert (=> b!3951412 m!4520353))

(assert (=> b!3951412 m!4520353))

(declare-fun m!4520355 () Bool)

(assert (=> b!3951412 m!4520355))

(declare-fun m!4520357 () Bool)

(assert (=> b!3951413 m!4520357))

(assert (=> b!3951114 d!1171783))

(declare-fun b!3951504 () Bool)

(declare-fun e!2445762 () Bool)

(declare-fun e!2445760 () Bool)

(assert (=> b!3951504 (= e!2445762 e!2445760)))

(declare-fun res!1598911 () Bool)

(assert (=> b!3951504 (=> (not res!1598911) (not e!2445760))))

(declare-fun lt!1381340 () Option!8996)

(assert (=> b!3951504 (= res!1598911 (matchR!5515 (regex!6576 (h!47436 rules!2768)) (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381340))))))))

(declare-fun b!3951505 () Bool)

(declare-fun res!1598910 () Bool)

(assert (=> b!3951505 (=> (not res!1598910) (not e!2445760))))

(assert (=> b!3951505 (= res!1598910 (< (size!31487 (_2!23784 (get!13865 lt!1381340))) (size!31487 lt!1381176)))))

(declare-fun b!3951506 () Bool)

(declare-fun res!1598907 () Bool)

(assert (=> b!3951506 (=> (not res!1598907) (not e!2445760))))

(assert (=> b!3951506 (= res!1598907 (= (value!208050 (_1!23784 (get!13865 lt!1381340))) (apply!9807 (transformation!6576 (rule!9544 (_1!23784 (get!13865 lt!1381340)))) (seqFromList!4835 (originalCharacters!7176 (_1!23784 (get!13865 lt!1381340)))))))))

(declare-fun b!3951507 () Bool)

(declare-fun e!2445761 () Bool)

(declare-datatypes ((tuple2!41304 0))(
  ( (tuple2!41305 (_1!23786 List!42138) (_2!23786 List!42138)) )
))
(declare-fun findLongestMatchInner!1284 (Regex!11481 List!42138 Int List!42138 List!42138 Int) tuple2!41304)

(assert (=> b!3951507 (= e!2445761 (matchR!5515 (regex!6576 (h!47436 rules!2768)) (_1!23786 (findLongestMatchInner!1284 (regex!6576 (h!47436 rules!2768)) Nil!42014 (size!31487 Nil!42014) lt!1381176 lt!1381176 (size!31487 lt!1381176)))))))

(declare-fun b!3951508 () Bool)

(declare-fun res!1598913 () Bool)

(assert (=> b!3951508 (=> (not res!1598913) (not e!2445760))))

(assert (=> b!3951508 (= res!1598913 (= (rule!9544 (_1!23784 (get!13865 lt!1381340))) (h!47436 rules!2768)))))

(declare-fun b!3951509 () Bool)

(declare-fun e!2445763 () Option!8996)

(declare-fun lt!1381341 () tuple2!41304)

(declare-fun size!31491 (BalanceConc!25168) Int)

(assert (=> b!3951509 (= e!2445763 (Some!8995 (tuple2!41301 (Token!12291 (apply!9807 (transformation!6576 (h!47436 rules!2768)) (seqFromList!4835 (_1!23786 lt!1381341))) (h!47436 rules!2768) (size!31491 (seqFromList!4835 (_1!23786 lt!1381341))) (_1!23786 lt!1381341)) (_2!23786 lt!1381341))))))

(declare-fun lt!1381342 () Unit!60528)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1257 (Regex!11481 List!42138) Unit!60528)

(assert (=> b!3951509 (= lt!1381342 (longestMatchIsAcceptedByMatchOrIsEmpty!1257 (regex!6576 (h!47436 rules!2768)) lt!1381176))))

(declare-fun res!1598912 () Bool)

(assert (=> b!3951509 (= res!1598912 (isEmpty!25094 (_1!23786 (findLongestMatchInner!1284 (regex!6576 (h!47436 rules!2768)) Nil!42014 (size!31487 Nil!42014) lt!1381176 lt!1381176 (size!31487 lt!1381176)))))))

(assert (=> b!3951509 (=> res!1598912 e!2445761)))

(assert (=> b!3951509 e!2445761))

(declare-fun lt!1381343 () Unit!60528)

(assert (=> b!3951509 (= lt!1381343 lt!1381342)))

(declare-fun lt!1381344 () Unit!60528)

(declare-fun lemmaSemiInverse!1790 (TokenValueInjection!13040 BalanceConc!25168) Unit!60528)

(assert (=> b!3951509 (= lt!1381344 (lemmaSemiInverse!1790 (transformation!6576 (h!47436 rules!2768)) (seqFromList!4835 (_1!23786 lt!1381341))))))

(declare-fun d!1171787 () Bool)

(assert (=> d!1171787 e!2445762))

(declare-fun res!1598908 () Bool)

(assert (=> d!1171787 (=> res!1598908 e!2445762)))

(assert (=> d!1171787 (= res!1598908 (isEmpty!25097 lt!1381340))))

(assert (=> d!1171787 (= lt!1381340 e!2445763)))

(declare-fun c!686122 () Bool)

(assert (=> d!1171787 (= c!686122 (isEmpty!25094 (_1!23786 lt!1381341)))))

(declare-fun findLongestMatch!1197 (Regex!11481 List!42138) tuple2!41304)

(assert (=> d!1171787 (= lt!1381341 (findLongestMatch!1197 (regex!6576 (h!47436 rules!2768)) lt!1381176))))

(assert (=> d!1171787 (ruleValid!2518 thiss!20629 (h!47436 rules!2768))))

(assert (=> d!1171787 (= (maxPrefixOneRule!2523 thiss!20629 (h!47436 rules!2768) lt!1381176) lt!1381340)))

(declare-fun b!3951510 () Bool)

(declare-fun res!1598909 () Bool)

(assert (=> b!3951510 (=> (not res!1598909) (not e!2445760))))

(assert (=> b!3951510 (= res!1598909 (= (++!10910 (list!15604 (charsOf!4394 (_1!23784 (get!13865 lt!1381340)))) (_2!23784 (get!13865 lt!1381340))) lt!1381176))))

(declare-fun b!3951511 () Bool)

(assert (=> b!3951511 (= e!2445760 (= (size!31486 (_1!23784 (get!13865 lt!1381340))) (size!31487 (originalCharacters!7176 (_1!23784 (get!13865 lt!1381340))))))))

(declare-fun b!3951512 () Bool)

(assert (=> b!3951512 (= e!2445763 None!8995)))

(assert (= (and d!1171787 c!686122) b!3951512))

(assert (= (and d!1171787 (not c!686122)) b!3951509))

(assert (= (and b!3951509 (not res!1598912)) b!3951507))

(assert (= (and d!1171787 (not res!1598908)) b!3951504))

(assert (= (and b!3951504 res!1598911) b!3951510))

(assert (= (and b!3951510 res!1598909) b!3951505))

(assert (= (and b!3951505 res!1598910) b!3951508))

(assert (= (and b!3951508 res!1598913) b!3951506))

(assert (= (and b!3951506 res!1598907) b!3951511))

(assert (=> b!3951509 m!4519921))

(assert (=> b!3951509 m!4520061))

(declare-fun m!4520511 () Bool)

(assert (=> b!3951509 m!4520511))

(declare-fun m!4520515 () Bool)

(assert (=> b!3951509 m!4520515))

(assert (=> b!3951509 m!4520515))

(declare-fun m!4520517 () Bool)

(assert (=> b!3951509 m!4520517))

(assert (=> b!3951509 m!4520515))

(declare-fun m!4520519 () Bool)

(assert (=> b!3951509 m!4520519))

(declare-fun m!4520521 () Bool)

(assert (=> b!3951509 m!4520521))

(assert (=> b!3951509 m!4520061))

(assert (=> b!3951509 m!4520515))

(declare-fun m!4520523 () Bool)

(assert (=> b!3951509 m!4520523))

(declare-fun m!4520525 () Bool)

(assert (=> b!3951509 m!4520525))

(assert (=> b!3951509 m!4519921))

(declare-fun m!4520527 () Bool)

(assert (=> b!3951506 m!4520527))

(declare-fun m!4520529 () Bool)

(assert (=> b!3951506 m!4520529))

(assert (=> b!3951506 m!4520529))

(declare-fun m!4520531 () Bool)

(assert (=> b!3951506 m!4520531))

(assert (=> b!3951510 m!4520527))

(declare-fun m!4520533 () Bool)

(assert (=> b!3951510 m!4520533))

(assert (=> b!3951510 m!4520533))

(declare-fun m!4520535 () Bool)

(assert (=> b!3951510 m!4520535))

(assert (=> b!3951510 m!4520535))

(declare-fun m!4520537 () Bool)

(assert (=> b!3951510 m!4520537))

(assert (=> b!3951504 m!4520527))

(assert (=> b!3951504 m!4520533))

(assert (=> b!3951504 m!4520533))

(assert (=> b!3951504 m!4520535))

(assert (=> b!3951504 m!4520535))

(declare-fun m!4520539 () Bool)

(assert (=> b!3951504 m!4520539))

(declare-fun m!4520541 () Bool)

(assert (=> d!1171787 m!4520541))

(declare-fun m!4520543 () Bool)

(assert (=> d!1171787 m!4520543))

(declare-fun m!4520545 () Bool)

(assert (=> d!1171787 m!4520545))

(declare-fun m!4520547 () Bool)

(assert (=> d!1171787 m!4520547))

(assert (=> b!3951508 m!4520527))

(assert (=> b!3951507 m!4519921))

(assert (=> b!3951507 m!4520061))

(assert (=> b!3951507 m!4519921))

(assert (=> b!3951507 m!4520061))

(assert (=> b!3951507 m!4520511))

(declare-fun m!4520549 () Bool)

(assert (=> b!3951507 m!4520549))

(assert (=> b!3951511 m!4520527))

(declare-fun m!4520551 () Bool)

(assert (=> b!3951511 m!4520551))

(assert (=> b!3951505 m!4520527))

(declare-fun m!4520553 () Bool)

(assert (=> b!3951505 m!4520553))

(assert (=> b!3951505 m!4520061))

(assert (=> bm!285221 d!1171787))

(declare-fun d!1171833 () Bool)

(assert (=> d!1171833 (= (size!31486 (_1!23784 (v!39335 lt!1381184))) (size!31487 (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184)))))))

(declare-fun Unit!60531 () Unit!60528)

(assert (=> d!1171833 (= (lemmaCharactersSize!1229 (_1!23784 (v!39335 lt!1381184))) Unit!60531)))

(declare-fun bs!587028 () Bool)

(assert (= bs!587028 d!1171833))

(assert (=> bs!587028 m!4519935))

(assert (=> b!3951113 d!1171833))

(declare-fun d!1171835 () Bool)

(declare-fun lt!1381347 () List!42138)

(assert (=> d!1171835 (= (++!10910 lt!1381175 lt!1381347) lt!1381176)))

(declare-fun e!2445791 () List!42138)

(assert (=> d!1171835 (= lt!1381347 e!2445791)))

(declare-fun c!686125 () Bool)

(assert (=> d!1171835 (= c!686125 ((_ is Cons!42014) lt!1381175))))

(assert (=> d!1171835 (>= (size!31487 lt!1381176) (size!31487 lt!1381175))))

(assert (=> d!1171835 (= (getSuffix!2116 lt!1381176 lt!1381175) lt!1381347)))

(declare-fun b!3951559 () Bool)

(assert (=> b!3951559 (= e!2445791 (getSuffix!2116 (tail!6120 lt!1381176) (t!328639 lt!1381175)))))

(declare-fun b!3951560 () Bool)

(assert (=> b!3951560 (= e!2445791 lt!1381176)))

(assert (= (and d!1171835 c!686125) b!3951559))

(assert (= (and d!1171835 (not c!686125)) b!3951560))

(declare-fun m!4520559 () Bool)

(assert (=> d!1171835 m!4520559))

(assert (=> d!1171835 m!4520061))

(assert (=> d!1171835 m!4519969))

(declare-fun m!4520561 () Bool)

(assert (=> b!3951559 m!4520561))

(assert (=> b!3951559 m!4520561))

(declare-fun m!4520563 () Bool)

(assert (=> b!3951559 m!4520563))

(assert (=> b!3951113 d!1171835))

(declare-fun d!1171837 () Bool)

(declare-fun list!15606 (Conc!12787) List!42138)

(assert (=> d!1171837 (= (list!15604 (charsOf!4394 (_1!23784 (v!39335 lt!1381184)))) (list!15606 (c!686045 (charsOf!4394 (_1!23784 (v!39335 lt!1381184))))))))

(declare-fun bs!587029 () Bool)

(assert (= bs!587029 d!1171837))

(declare-fun m!4520565 () Bool)

(assert (=> bs!587029 m!4520565))

(assert (=> b!3951113 d!1171837))

(declare-fun d!1171839 () Bool)

(declare-fun fromListB!2238 (List!42138) BalanceConc!25168)

(assert (=> d!1171839 (= (seqFromList!4835 lt!1381175) (fromListB!2238 lt!1381175))))

(declare-fun bs!587030 () Bool)

(assert (= bs!587030 d!1171839))

(declare-fun m!4520567 () Bool)

(assert (=> bs!587030 m!4520567))

(assert (=> b!3951113 d!1171839))

(declare-fun d!1171841 () Bool)

(assert (=> d!1171841 (= (_2!23784 (v!39335 lt!1381184)) lt!1381191)))

(declare-fun lt!1381350 () Unit!60528)

(declare-fun choose!23587 (List!42138 List!42138 List!42138 List!42138 List!42138) Unit!60528)

(assert (=> d!1171841 (= lt!1381350 (choose!23587 lt!1381175 (_2!23784 (v!39335 lt!1381184)) lt!1381175 lt!1381191 lt!1381176))))

(assert (=> d!1171841 (isPrefix!3665 lt!1381175 lt!1381176)))

(assert (=> d!1171841 (= (lemmaSamePrefixThenSameSuffix!1874 lt!1381175 (_2!23784 (v!39335 lt!1381184)) lt!1381175 lt!1381191 lt!1381176) lt!1381350)))

(declare-fun bs!587031 () Bool)

(assert (= bs!587031 d!1171841))

(declare-fun m!4520585 () Bool)

(assert (=> bs!587031 m!4520585))

(declare-fun m!4520587 () Bool)

(assert (=> bs!587031 m!4520587))

(assert (=> b!3951113 d!1171841))

(declare-fun b!3951590 () Bool)

(declare-fun res!1598917 () Bool)

(declare-fun e!2445821 () Bool)

(assert (=> b!3951590 (=> (not res!1598917) (not e!2445821))))

(declare-fun lt!1381351 () List!42138)

(assert (=> b!3951590 (= res!1598917 (= (size!31487 lt!1381351) (+ (size!31487 lt!1381175) (size!31487 (_2!23784 (v!39335 lt!1381184))))))))

(declare-fun d!1171843 () Bool)

(assert (=> d!1171843 e!2445821))

(declare-fun res!1598918 () Bool)

(assert (=> d!1171843 (=> (not res!1598918) (not e!2445821))))

(assert (=> d!1171843 (= res!1598918 (= (content!6373 lt!1381351) ((_ map or) (content!6373 lt!1381175) (content!6373 (_2!23784 (v!39335 lt!1381184))))))))

(declare-fun e!2445822 () List!42138)

(assert (=> d!1171843 (= lt!1381351 e!2445822)))

(declare-fun c!686126 () Bool)

(assert (=> d!1171843 (= c!686126 ((_ is Nil!42014) lt!1381175))))

(assert (=> d!1171843 (= (++!10910 lt!1381175 (_2!23784 (v!39335 lt!1381184))) lt!1381351)))

(declare-fun b!3951591 () Bool)

(assert (=> b!3951591 (= e!2445821 (or (not (= (_2!23784 (v!39335 lt!1381184)) Nil!42014)) (= lt!1381351 lt!1381175)))))

(declare-fun b!3951589 () Bool)

(assert (=> b!3951589 (= e!2445822 (Cons!42014 (h!47434 lt!1381175) (++!10910 (t!328639 lt!1381175) (_2!23784 (v!39335 lt!1381184)))))))

(declare-fun b!3951588 () Bool)

(assert (=> b!3951588 (= e!2445822 (_2!23784 (v!39335 lt!1381184)))))

(assert (= (and d!1171843 c!686126) b!3951588))

(assert (= (and d!1171843 (not c!686126)) b!3951589))

(assert (= (and d!1171843 res!1598918) b!3951590))

(assert (= (and b!3951590 res!1598917) b!3951591))

(declare-fun m!4520589 () Bool)

(assert (=> b!3951590 m!4520589))

(assert (=> b!3951590 m!4519969))

(declare-fun m!4520591 () Bool)

(assert (=> b!3951590 m!4520591))

(declare-fun m!4520593 () Bool)

(assert (=> d!1171843 m!4520593))

(declare-fun m!4520595 () Bool)

(assert (=> d!1171843 m!4520595))

(declare-fun m!4520597 () Bool)

(assert (=> d!1171843 m!4520597))

(declare-fun m!4520599 () Bool)

(assert (=> b!3951589 m!4520599))

(assert (=> b!3951113 d!1171843))

(declare-fun d!1171845 () Bool)

(assert (=> d!1171845 (ruleValid!2518 thiss!20629 (rule!9544 (_1!23784 (v!39335 lt!1381184))))))

(declare-fun lt!1381354 () Unit!60528)

(declare-fun choose!23588 (LexerInterface!6165 Rule!12952 List!42140) Unit!60528)

(assert (=> d!1171845 (= lt!1381354 (choose!23588 thiss!20629 (rule!9544 (_1!23784 (v!39335 lt!1381184))) rules!2768))))

(assert (=> d!1171845 (contains!8407 rules!2768 (rule!9544 (_1!23784 (v!39335 lt!1381184))))))

(assert (=> d!1171845 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1594 thiss!20629 (rule!9544 (_1!23784 (v!39335 lt!1381184))) rules!2768) lt!1381354)))

(declare-fun bs!587032 () Bool)

(assert (= bs!587032 d!1171845))

(assert (=> bs!587032 m!4519965))

(declare-fun m!4520601 () Bool)

(assert (=> bs!587032 m!4520601))

(declare-fun m!4520603 () Bool)

(assert (=> bs!587032 m!4520603))

(assert (=> b!3951113 d!1171845))

(declare-fun d!1171847 () Bool)

(declare-fun dynLambda!17991 (Int BalanceConc!25168) TokenValue!6806)

(assert (=> d!1171847 (= (apply!9807 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))) (seqFromList!4835 lt!1381175)) (dynLambda!17991 (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184))))) (seqFromList!4835 lt!1381175)))))

(declare-fun b_lambda!115613 () Bool)

(assert (=> (not b_lambda!115613) (not d!1171847)))

(declare-fun tb!237863 () Bool)

(declare-fun t!328737 () Bool)

(assert (=> (and b!3951110 (= (toValue!9052 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328737) tb!237863))

(declare-fun result!288066 () Bool)

(assert (=> tb!237863 (= result!288066 (inv!21 (dynLambda!17991 (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184))))) (seqFromList!4835 lt!1381175))))))

(declare-fun m!4520605 () Bool)

(assert (=> tb!237863 m!4520605))

(assert (=> d!1171847 t!328737))

(declare-fun b_and!302831 () Bool)

(assert (= b_and!302739 (and (=> t!328737 result!288066) b_and!302831)))

(declare-fun tb!237865 () Bool)

(declare-fun t!328739 () Bool)

(assert (=> (and b!3951122 (= (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328739) tb!237865))

(declare-fun result!288070 () Bool)

(assert (= result!288070 result!288066))

(assert (=> d!1171847 t!328739))

(declare-fun b_and!302833 () Bool)

(assert (= b_and!302743 (and (=> t!328739 result!288070) b_and!302833)))

(declare-fun t!328741 () Bool)

(declare-fun tb!237867 () Bool)

(assert (=> (and b!3951092 (= (toValue!9052 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328741) tb!237867))

(declare-fun result!288072 () Bool)

(assert (= result!288072 result!288066))

(assert (=> d!1171847 t!328741))

(declare-fun b_and!302835 () Bool)

(assert (= b_and!302747 (and (=> t!328741 result!288072) b_and!302835)))

(declare-fun tb!237869 () Bool)

(declare-fun t!328743 () Bool)

(assert (=> (and b!3951102 (= (toValue!9052 (transformation!6576 (h!47436 rules!2768))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328743) tb!237869))

(declare-fun result!288074 () Bool)

(assert (= result!288074 result!288066))

(assert (=> d!1171847 t!328743))

(declare-fun b_and!302837 () Bool)

(assert (= b_and!302751 (and (=> t!328743 result!288074) b_and!302837)))

(assert (=> d!1171847 m!4519957))

(declare-fun m!4520607 () Bool)

(assert (=> d!1171847 m!4520607))

(assert (=> b!3951113 d!1171847))

(declare-fun d!1171849 () Bool)

(declare-fun res!1598923 () Bool)

(declare-fun e!2445828 () Bool)

(assert (=> d!1171849 (=> (not res!1598923) (not e!2445828))))

(declare-fun validRegex!5232 (Regex!11481) Bool)

(assert (=> d!1171849 (= res!1598923 (validRegex!5232 (regex!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184))))))))

(assert (=> d!1171849 (= (ruleValid!2518 thiss!20629 (rule!9544 (_1!23784 (v!39335 lt!1381184)))) e!2445828)))

(declare-fun b!3951598 () Bool)

(declare-fun res!1598924 () Bool)

(assert (=> b!3951598 (=> (not res!1598924) (not e!2445828))))

(declare-fun nullable!4033 (Regex!11481) Bool)

(assert (=> b!3951598 (= res!1598924 (not (nullable!4033 (regex!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))))))

(declare-fun b!3951599 () Bool)

(assert (=> b!3951599 (= e!2445828 (not (= (tag!7436 (rule!9544 (_1!23784 (v!39335 lt!1381184)))) (String!47749 ""))))))

(assert (= (and d!1171849 res!1598923) b!3951598))

(assert (= (and b!3951598 res!1598924) b!3951599))

(declare-fun m!4520609 () Bool)

(assert (=> d!1171849 m!4520609))

(declare-fun m!4520611 () Bool)

(assert (=> b!3951598 m!4520611))

(assert (=> b!3951113 d!1171849))

(declare-fun d!1171851 () Bool)

(declare-fun e!2445831 () Bool)

(assert (=> d!1171851 e!2445831))

(declare-fun res!1598926 () Bool)

(assert (=> d!1171851 (=> res!1598926 e!2445831)))

(declare-fun lt!1381355 () Bool)

(assert (=> d!1171851 (= res!1598926 (not lt!1381355))))

(declare-fun e!2445830 () Bool)

(assert (=> d!1171851 (= lt!1381355 e!2445830)))

(declare-fun res!1598927 () Bool)

(assert (=> d!1171851 (=> res!1598927 e!2445830)))

(assert (=> d!1171851 (= res!1598927 ((_ is Nil!42014) lt!1381175))))

(assert (=> d!1171851 (= (isPrefix!3665 lt!1381175 lt!1381172) lt!1381355)))

(declare-fun b!3951600 () Bool)

(declare-fun e!2445829 () Bool)

(assert (=> b!3951600 (= e!2445830 e!2445829)))

(declare-fun res!1598925 () Bool)

(assert (=> b!3951600 (=> (not res!1598925) (not e!2445829))))

(assert (=> b!3951600 (= res!1598925 (not ((_ is Nil!42014) lt!1381172)))))

(declare-fun b!3951602 () Bool)

(assert (=> b!3951602 (= e!2445829 (isPrefix!3665 (tail!6120 lt!1381175) (tail!6120 lt!1381172)))))

(declare-fun b!3951603 () Bool)

(assert (=> b!3951603 (= e!2445831 (>= (size!31487 lt!1381172) (size!31487 lt!1381175)))))

(declare-fun b!3951601 () Bool)

(declare-fun res!1598928 () Bool)

(assert (=> b!3951601 (=> (not res!1598928) (not e!2445829))))

(assert (=> b!3951601 (= res!1598928 (= (head!8394 lt!1381175) (head!8394 lt!1381172)))))

(assert (= (and d!1171851 (not res!1598927)) b!3951600))

(assert (= (and b!3951600 res!1598925) b!3951601))

(assert (= (and b!3951601 res!1598928) b!3951602))

(assert (= (and d!1171851 (not res!1598926)) b!3951603))

(declare-fun m!4520613 () Bool)

(assert (=> b!3951602 m!4520613))

(declare-fun m!4520615 () Bool)

(assert (=> b!3951602 m!4520615))

(assert (=> b!3951602 m!4520613))

(assert (=> b!3951602 m!4520615))

(declare-fun m!4520617 () Bool)

(assert (=> b!3951602 m!4520617))

(declare-fun m!4520619 () Bool)

(assert (=> b!3951603 m!4520619))

(assert (=> b!3951603 m!4519969))

(declare-fun m!4520621 () Bool)

(assert (=> b!3951601 m!4520621))

(declare-fun m!4520623 () Bool)

(assert (=> b!3951601 m!4520623))

(assert (=> b!3951113 d!1171851))

(declare-fun d!1171853 () Bool)

(declare-fun lt!1381358 () BalanceConc!25168)

(assert (=> d!1171853 (= (list!15604 lt!1381358) (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184))))))

(assert (=> d!1171853 (= lt!1381358 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184))))) (value!208050 (_1!23784 (v!39335 lt!1381184)))))))

(assert (=> d!1171853 (= (charsOf!4394 (_1!23784 (v!39335 lt!1381184))) lt!1381358)))

(declare-fun b_lambda!115615 () Bool)

(assert (=> (not b_lambda!115615) (not d!1171853)))

(declare-fun t!328745 () Bool)

(declare-fun tb!237871 () Bool)

(assert (=> (and b!3951110 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328745) tb!237871))

(declare-fun b!3951604 () Bool)

(declare-fun e!2445832 () Bool)

(declare-fun tp!1203709 () Bool)

(assert (=> b!3951604 (= e!2445832 (and (inv!56246 (c!686045 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184))))) (value!208050 (_1!23784 (v!39335 lt!1381184)))))) tp!1203709))))

(declare-fun result!288076 () Bool)

(assert (=> tb!237871 (= result!288076 (and (inv!56247 (dynLambda!17989 (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184))))) (value!208050 (_1!23784 (v!39335 lt!1381184))))) e!2445832))))

(assert (= tb!237871 b!3951604))

(declare-fun m!4520625 () Bool)

(assert (=> b!3951604 m!4520625))

(declare-fun m!4520627 () Bool)

(assert (=> tb!237871 m!4520627))

(assert (=> d!1171853 t!328745))

(declare-fun b_and!302839 () Bool)

(assert (= b_and!302795 (and (=> t!328745 result!288076) b_and!302839)))

(declare-fun tb!237873 () Bool)

(declare-fun t!328747 () Bool)

(assert (=> (and b!3951122 (= (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328747) tb!237873))

(declare-fun result!288078 () Bool)

(assert (= result!288078 result!288076))

(assert (=> d!1171853 t!328747))

(declare-fun b_and!302841 () Bool)

(assert (= b_and!302797 (and (=> t!328747 result!288078) b_and!302841)))

(declare-fun tb!237875 () Bool)

(declare-fun t!328749 () Bool)

(assert (=> (and b!3951092 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328749) tb!237875))

(declare-fun result!288080 () Bool)

(assert (= result!288080 result!288076))

(assert (=> d!1171853 t!328749))

(declare-fun b_and!302843 () Bool)

(assert (= b_and!302799 (and (=> t!328749 result!288080) b_and!302843)))

(declare-fun tb!237877 () Bool)

(declare-fun t!328751 () Bool)

(assert (=> (and b!3951102 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328751) tb!237877))

(declare-fun result!288082 () Bool)

(assert (= result!288082 result!288076))

(assert (=> d!1171853 t!328751))

(declare-fun b_and!302845 () Bool)

(assert (= b_and!302801 (and (=> t!328751 result!288082) b_and!302845)))

(declare-fun m!4520629 () Bool)

(assert (=> d!1171853 m!4520629))

(declare-fun m!4520631 () Bool)

(assert (=> d!1171853 m!4520631))

(assert (=> b!3951113 d!1171853))

(declare-fun d!1171855 () Bool)

(declare-fun e!2445835 () Bool)

(assert (=> d!1171855 e!2445835))

(declare-fun c!686127 () Bool)

(declare-fun lt!1381361 () tuple2!41298)

(assert (=> d!1171855 (= c!686127 (> (size!31490 (_1!23783 lt!1381361)) 0))))

(declare-fun e!2445833 () tuple2!41298)

(assert (=> d!1171855 (= lt!1381361 e!2445833)))

(declare-fun c!686128 () Bool)

(declare-fun lt!1381360 () Option!8996)

(assert (=> d!1171855 (= c!686128 ((_ is Some!8995) lt!1381360))))

(assert (=> d!1171855 (= lt!1381360 (maxPrefix!3469 thiss!20629 rules!2768 (_2!23784 (v!39335 lt!1381184))))))

(assert (=> d!1171855 (= (lexList!1933 thiss!20629 rules!2768 (_2!23784 (v!39335 lt!1381184))) lt!1381361)))

(declare-fun b!3951605 () Bool)

(declare-fun e!2445834 () Bool)

(assert (=> b!3951605 (= e!2445835 e!2445834)))

(declare-fun res!1598929 () Bool)

(assert (=> b!3951605 (= res!1598929 (< (size!31487 (_2!23783 lt!1381361)) (size!31487 (_2!23784 (v!39335 lt!1381184)))))))

(assert (=> b!3951605 (=> (not res!1598929) (not e!2445834))))

(declare-fun b!3951606 () Bool)

(assert (=> b!3951606 (= e!2445835 (= (_2!23783 lt!1381361) (_2!23784 (v!39335 lt!1381184))))))

(declare-fun b!3951607 () Bool)

(assert (=> b!3951607 (= e!2445834 (not (isEmpty!25095 (_1!23783 lt!1381361))))))

(declare-fun b!3951608 () Bool)

(declare-fun lt!1381359 () tuple2!41298)

(assert (=> b!3951608 (= e!2445833 (tuple2!41299 (Cons!42015 (_1!23784 (v!39335 lt!1381360)) (_1!23783 lt!1381359)) (_2!23783 lt!1381359)))))

(assert (=> b!3951608 (= lt!1381359 (lexList!1933 thiss!20629 rules!2768 (_2!23784 (v!39335 lt!1381360))))))

(declare-fun b!3951609 () Bool)

(assert (=> b!3951609 (= e!2445833 (tuple2!41299 Nil!42015 (_2!23784 (v!39335 lt!1381184))))))

(assert (= (and d!1171855 c!686128) b!3951608))

(assert (= (and d!1171855 (not c!686128)) b!3951609))

(assert (= (and d!1171855 c!686127) b!3951605))

(assert (= (and d!1171855 (not c!686127)) b!3951606))

(assert (= (and b!3951605 res!1598929) b!3951607))

(declare-fun m!4520633 () Bool)

(assert (=> d!1171855 m!4520633))

(declare-fun m!4520635 () Bool)

(assert (=> d!1171855 m!4520635))

(declare-fun m!4520637 () Bool)

(assert (=> b!3951605 m!4520637))

(assert (=> b!3951605 m!4520591))

(declare-fun m!4520639 () Bool)

(assert (=> b!3951607 m!4520639))

(declare-fun m!4520641 () Bool)

(assert (=> b!3951608 m!4520641))

(assert (=> b!3951113 d!1171855))

(declare-fun d!1171857 () Bool)

(assert (=> d!1171857 (isPrefix!3665 lt!1381175 (++!10910 lt!1381175 (_2!23784 (v!39335 lt!1381184))))))

(declare-fun lt!1381364 () Unit!60528)

(declare-fun choose!23589 (List!42138 List!42138) Unit!60528)

(assert (=> d!1171857 (= lt!1381364 (choose!23589 lt!1381175 (_2!23784 (v!39335 lt!1381184))))))

(assert (=> d!1171857 (= (lemmaConcatTwoListThenFirstIsPrefix!2524 lt!1381175 (_2!23784 (v!39335 lt!1381184))) lt!1381364)))

(declare-fun bs!587033 () Bool)

(assert (= bs!587033 d!1171857))

(assert (=> bs!587033 m!4519977))

(assert (=> bs!587033 m!4519977))

(declare-fun m!4520643 () Bool)

(assert (=> bs!587033 m!4520643))

(declare-fun m!4520645 () Bool)

(assert (=> bs!587033 m!4520645))

(assert (=> b!3951113 d!1171857))

(declare-fun d!1171859 () Bool)

(declare-fun lt!1381365 () Int)

(assert (=> d!1171859 (>= lt!1381365 0)))

(declare-fun e!2445836 () Int)

(assert (=> d!1171859 (= lt!1381365 e!2445836)))

(declare-fun c!686129 () Bool)

(assert (=> d!1171859 (= c!686129 ((_ is Nil!42014) lt!1381175))))

(assert (=> d!1171859 (= (size!31487 lt!1381175) lt!1381365)))

(declare-fun b!3951610 () Bool)

(assert (=> b!3951610 (= e!2445836 0)))

(declare-fun b!3951611 () Bool)

(assert (=> b!3951611 (= e!2445836 (+ 1 (size!31487 (t!328639 lt!1381175))))))

(assert (= (and d!1171859 c!686129) b!3951610))

(assert (= (and d!1171859 (not c!686129)) b!3951611))

(declare-fun m!4520647 () Bool)

(assert (=> b!3951611 m!4520647))

(assert (=> b!3951113 d!1171859))

(declare-fun b!3951612 () Bool)

(declare-fun res!1598930 () Bool)

(declare-fun e!2445838 () Bool)

(assert (=> b!3951612 (=> res!1598930 e!2445838)))

(assert (=> b!3951612 (= res!1598930 (not ((_ is IntegerValue!20420) (value!208050 (h!47435 prefixTokens!80)))))))

(declare-fun e!2445839 () Bool)

(assert (=> b!3951612 (= e!2445839 e!2445838)))

(declare-fun b!3951613 () Bool)

(assert (=> b!3951613 (= e!2445839 (inv!17 (value!208050 (h!47435 prefixTokens!80))))))

(declare-fun b!3951614 () Bool)

(assert (=> b!3951614 (= e!2445838 (inv!15 (value!208050 (h!47435 prefixTokens!80))))))

(declare-fun b!3951616 () Bool)

(declare-fun e!2445837 () Bool)

(assert (=> b!3951616 (= e!2445837 (inv!16 (value!208050 (h!47435 prefixTokens!80))))))

(declare-fun d!1171861 () Bool)

(declare-fun c!686131 () Bool)

(assert (=> d!1171861 (= c!686131 ((_ is IntegerValue!20418) (value!208050 (h!47435 prefixTokens!80))))))

(assert (=> d!1171861 (= (inv!21 (value!208050 (h!47435 prefixTokens!80))) e!2445837)))

(declare-fun b!3951615 () Bool)

(assert (=> b!3951615 (= e!2445837 e!2445839)))

(declare-fun c!686130 () Bool)

(assert (=> b!3951615 (= c!686130 ((_ is IntegerValue!20419) (value!208050 (h!47435 prefixTokens!80))))))

(assert (= (and d!1171861 c!686131) b!3951616))

(assert (= (and d!1171861 (not c!686131)) b!3951615))

(assert (= (and b!3951615 c!686130) b!3951613))

(assert (= (and b!3951615 (not c!686130)) b!3951612))

(assert (= (and b!3951612 (not res!1598930)) b!3951614))

(declare-fun m!4520649 () Bool)

(assert (=> b!3951613 m!4520649))

(declare-fun m!4520651 () Bool)

(assert (=> b!3951614 m!4520651))

(declare-fun m!4520653 () Bool)

(assert (=> b!3951616 m!4520653))

(assert (=> b!3951112 d!1171861))

(declare-fun d!1171863 () Bool)

(declare-fun e!2445840 () Bool)

(assert (=> d!1171863 e!2445840))

(declare-fun res!1598932 () Bool)

(assert (=> d!1171863 (=> (not res!1598932) (not e!2445840))))

(declare-fun lt!1381366 () List!42139)

(assert (=> d!1171863 (= res!1598932 (= (content!6372 lt!1381366) ((_ map or) (content!6372 lt!1381174) (content!6372 (_1!23783 lt!1381186)))))))

(declare-fun e!2445841 () List!42139)

(assert (=> d!1171863 (= lt!1381366 e!2445841)))

(declare-fun c!686132 () Bool)

(assert (=> d!1171863 (= c!686132 ((_ is Nil!42015) lt!1381174))))

(assert (=> d!1171863 (= (++!10909 lt!1381174 (_1!23783 lt!1381186)) lt!1381366)))

(declare-fun b!3951619 () Bool)

(declare-fun res!1598931 () Bool)

(assert (=> b!3951619 (=> (not res!1598931) (not e!2445840))))

(assert (=> b!3951619 (= res!1598931 (= (size!31490 lt!1381366) (+ (size!31490 lt!1381174) (size!31490 (_1!23783 lt!1381186)))))))

(declare-fun b!3951620 () Bool)

(assert (=> b!3951620 (= e!2445840 (or (not (= (_1!23783 lt!1381186) Nil!42015)) (= lt!1381366 lt!1381174)))))

(declare-fun b!3951618 () Bool)

(assert (=> b!3951618 (= e!2445841 (Cons!42015 (h!47435 lt!1381174) (++!10909 (t!328640 lt!1381174) (_1!23783 lt!1381186))))))

(declare-fun b!3951617 () Bool)

(assert (=> b!3951617 (= e!2445841 (_1!23783 lt!1381186))))

(assert (= (and d!1171863 c!686132) b!3951617))

(assert (= (and d!1171863 (not c!686132)) b!3951618))

(assert (= (and d!1171863 res!1598932) b!3951619))

(assert (= (and b!3951619 res!1598931) b!3951620))

(declare-fun m!4520655 () Bool)

(assert (=> d!1171863 m!4520655))

(declare-fun m!4520657 () Bool)

(assert (=> d!1171863 m!4520657))

(declare-fun m!4520659 () Bool)

(assert (=> d!1171863 m!4520659))

(declare-fun m!4520661 () Bool)

(assert (=> b!3951619 m!4520661))

(declare-fun m!4520663 () Bool)

(assert (=> b!3951619 m!4520663))

(declare-fun m!4520665 () Bool)

(assert (=> b!3951619 m!4520665))

(declare-fun m!4520667 () Bool)

(assert (=> b!3951618 m!4520667))

(assert (=> b!3951091 d!1171863))

(declare-fun d!1171865 () Bool)

(declare-fun e!2445844 () Bool)

(assert (=> d!1171865 e!2445844))

(declare-fun res!1598934 () Bool)

(assert (=> d!1171865 (=> res!1598934 e!2445844)))

(declare-fun lt!1381367 () Bool)

(assert (=> d!1171865 (= res!1598934 (not lt!1381367))))

(declare-fun e!2445843 () Bool)

(assert (=> d!1171865 (= lt!1381367 e!2445843)))

(declare-fun res!1598935 () Bool)

(assert (=> d!1171865 (=> res!1598935 e!2445843)))

(assert (=> d!1171865 (= res!1598935 ((_ is Nil!42014) lt!1381176))))

(assert (=> d!1171865 (= (isPrefix!3665 lt!1381176 lt!1381176) lt!1381367)))

(declare-fun b!3951621 () Bool)

(declare-fun e!2445842 () Bool)

(assert (=> b!3951621 (= e!2445843 e!2445842)))

(declare-fun res!1598933 () Bool)

(assert (=> b!3951621 (=> (not res!1598933) (not e!2445842))))

(assert (=> b!3951621 (= res!1598933 (not ((_ is Nil!42014) lt!1381176)))))

(declare-fun b!3951623 () Bool)

(assert (=> b!3951623 (= e!2445842 (isPrefix!3665 (tail!6120 lt!1381176) (tail!6120 lt!1381176)))))

(declare-fun b!3951624 () Bool)

(assert (=> b!3951624 (= e!2445844 (>= (size!31487 lt!1381176) (size!31487 lt!1381176)))))

(declare-fun b!3951622 () Bool)

(declare-fun res!1598936 () Bool)

(assert (=> b!3951622 (=> (not res!1598936) (not e!2445842))))

(assert (=> b!3951622 (= res!1598936 (= (head!8394 lt!1381176) (head!8394 lt!1381176)))))

(assert (= (and d!1171865 (not res!1598935)) b!3951621))

(assert (= (and b!3951621 res!1598933) b!3951622))

(assert (= (and b!3951622 res!1598936) b!3951623))

(assert (= (and d!1171865 (not res!1598934)) b!3951624))

(assert (=> b!3951623 m!4520561))

(assert (=> b!3951623 m!4520561))

(assert (=> b!3951623 m!4520561))

(assert (=> b!3951623 m!4520561))

(declare-fun m!4520669 () Bool)

(assert (=> b!3951623 m!4520669))

(assert (=> b!3951624 m!4520061))

(assert (=> b!3951624 m!4520061))

(declare-fun m!4520671 () Bool)

(assert (=> b!3951622 m!4520671))

(assert (=> b!3951622 m!4520671))

(assert (=> b!3951111 d!1171865))

(declare-fun d!1171867 () Bool)

(assert (=> d!1171867 (isPrefix!3665 lt!1381176 lt!1381176)))

(declare-fun lt!1381370 () Unit!60528)

(declare-fun choose!23591 (List!42138 List!42138) Unit!60528)

(assert (=> d!1171867 (= lt!1381370 (choose!23591 lt!1381176 lt!1381176))))

(assert (=> d!1171867 (= (lemmaIsPrefixRefl!2316 lt!1381176 lt!1381176) lt!1381370)))

(declare-fun bs!587034 () Bool)

(assert (= bs!587034 d!1171867))

(assert (=> bs!587034 m!4519951))

(declare-fun m!4520673 () Bool)

(assert (=> bs!587034 m!4520673))

(assert (=> b!3951111 d!1171867))

(declare-fun d!1171869 () Bool)

(declare-fun lt!1381371 () Int)

(assert (=> d!1171869 (>= lt!1381371 0)))

(declare-fun e!2445845 () Int)

(assert (=> d!1171869 (= lt!1381371 e!2445845)))

(declare-fun c!686133 () Bool)

(assert (=> d!1171869 (= c!686133 ((_ is Nil!42014) (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184)))))))

(assert (=> d!1171869 (= (size!31487 (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184)))) lt!1381371)))

(declare-fun b!3951625 () Bool)

(assert (=> b!3951625 (= e!2445845 0)))

(declare-fun b!3951626 () Bool)

(assert (=> b!3951626 (= e!2445845 (+ 1 (size!31487 (t!328639 (originalCharacters!7176 (_1!23784 (v!39335 lt!1381184)))))))))

(assert (= (and d!1171869 c!686133) b!3951625))

(assert (= (and d!1171869 (not c!686133)) b!3951626))

(declare-fun m!4520675 () Bool)

(assert (=> b!3951626 m!4520675))

(assert (=> b!3951090 d!1171869))

(declare-fun b!3951640 () Bool)

(declare-fun e!2445848 () Bool)

(declare-fun tp!1203723 () Bool)

(declare-fun tp!1203722 () Bool)

(assert (=> b!3951640 (= e!2445848 (and tp!1203723 tp!1203722))))

(declare-fun b!3951638 () Bool)

(declare-fun tp!1203721 () Bool)

(declare-fun tp!1203720 () Bool)

(assert (=> b!3951638 (= e!2445848 (and tp!1203721 tp!1203720))))

(declare-fun b!3951637 () Bool)

(assert (=> b!3951637 (= e!2445848 tp_is_empty!19933)))

(assert (=> b!3951098 (= tp!1203617 e!2445848)))

(declare-fun b!3951639 () Bool)

(declare-fun tp!1203724 () Bool)

(assert (=> b!3951639 (= e!2445848 tp!1203724)))

(assert (= (and b!3951098 ((_ is ElementMatch!11481) (regex!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) b!3951637))

(assert (= (and b!3951098 ((_ is Concat!18288) (regex!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) b!3951638))

(assert (= (and b!3951098 ((_ is Star!11481) (regex!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) b!3951639))

(assert (= (and b!3951098 ((_ is Union!11481) (regex!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) b!3951640))

(declare-fun b!3951645 () Bool)

(declare-fun e!2445851 () Bool)

(declare-fun tp!1203727 () Bool)

(assert (=> b!3951645 (= e!2445851 (and tp_is_empty!19933 tp!1203727))))

(assert (=> b!3951118 (= tp!1203616 e!2445851)))

(assert (= (and b!3951118 ((_ is Cons!42014) (t!328639 suffixResult!91))) b!3951645))

(declare-fun b!3951656 () Bool)

(declare-fun b_free!108605 () Bool)

(declare-fun b_next!109309 () Bool)

(assert (=> b!3951656 (= b_free!108605 (not b_next!109309))))

(declare-fun tb!237879 () Bool)

(declare-fun t!328753 () Bool)

(assert (=> (and b!3951656 (= (toValue!9052 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328753) tb!237879))

(declare-fun result!288090 () Bool)

(assert (= result!288090 result!288066))

(assert (=> d!1171847 t!328753))

(declare-fun tp!1203737 () Bool)

(declare-fun b_and!302847 () Bool)

(assert (=> b!3951656 (= tp!1203737 (and (=> t!328753 result!288090) b_and!302847))))

(declare-fun b_free!108607 () Bool)

(declare-fun b_next!109311 () Bool)

(assert (=> b!3951656 (= b_free!108607 (not b_next!109311))))

(declare-fun tb!237881 () Bool)

(declare-fun t!328755 () Bool)

(assert (=> (and b!3951656 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328755) tb!237881))

(declare-fun result!288092 () Bool)

(assert (= result!288092 result!287968))

(assert (=> b!3951253 t!328755))

(declare-fun t!328757 () Bool)

(declare-fun tb!237883 () Bool)

(assert (=> (and b!3951656 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328757) tb!237883))

(declare-fun result!288094 () Bool)

(assert (= result!288094 result!287978))

(assert (=> b!3951356 t!328757))

(declare-fun tb!237885 () Bool)

(declare-fun t!328759 () Bool)

(assert (=> (and b!3951656 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328759) tb!237885))

(declare-fun result!288096 () Bool)

(assert (= result!288096 result!288004))

(assert (=> b!3951412 t!328759))

(declare-fun t!328761 () Bool)

(declare-fun tb!237887 () Bool)

(assert (=> (and b!3951656 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328761) tb!237887))

(declare-fun result!288098 () Bool)

(assert (= result!288098 result!288076))

(assert (=> d!1171853 t!328761))

(declare-fun tp!1203739 () Bool)

(declare-fun b_and!302849 () Bool)

(assert (=> b!3951656 (= tp!1203739 (and (=> t!328755 result!288092) (=> t!328757 result!288094) (=> t!328759 result!288096) (=> t!328761 result!288098) b_and!302849))))

(declare-fun e!2445860 () Bool)

(assert (=> b!3951656 (= e!2445860 (and tp!1203737 tp!1203739))))

(declare-fun tp!1203738 () Bool)

(declare-fun e!2445863 () Bool)

(declare-fun b!3951655 () Bool)

(assert (=> b!3951655 (= e!2445863 (and tp!1203738 (inv!56239 (tag!7436 (h!47436 (t!328641 rules!2768)))) (inv!56242 (transformation!6576 (h!47436 (t!328641 rules!2768)))) e!2445860))))

(declare-fun b!3951654 () Bool)

(declare-fun e!2445861 () Bool)

(declare-fun tp!1203736 () Bool)

(assert (=> b!3951654 (= e!2445861 (and e!2445863 tp!1203736))))

(assert (=> b!3951096 (= tp!1203624 e!2445861)))

(assert (= b!3951655 b!3951656))

(assert (= b!3951654 b!3951655))

(assert (= (and b!3951096 ((_ is Cons!42016) (t!328641 rules!2768))) b!3951654))

(declare-fun m!4520677 () Bool)

(assert (=> b!3951655 m!4520677))

(declare-fun m!4520679 () Bool)

(assert (=> b!3951655 m!4520679))

(declare-fun b!3951657 () Bool)

(declare-fun e!2445864 () Bool)

(declare-fun tp!1203740 () Bool)

(assert (=> b!3951657 (= e!2445864 (and tp_is_empty!19933 tp!1203740))))

(assert (=> b!3951107 (= tp!1203605 e!2445864)))

(assert (= (and b!3951107 ((_ is Cons!42014) (originalCharacters!7176 (h!47435 suffixTokens!72)))) b!3951657))

(declare-fun b!3951658 () Bool)

(declare-fun e!2445865 () Bool)

(declare-fun tp!1203741 () Bool)

(assert (=> b!3951658 (= e!2445865 (and tp_is_empty!19933 tp!1203741))))

(assert (=> b!3951106 (= tp!1203621 e!2445865)))

(assert (= (and b!3951106 ((_ is Cons!42014) (t!328639 suffix!1176))) b!3951658))

(declare-fun b!3951672 () Bool)

(declare-fun b_free!108609 () Bool)

(declare-fun b_next!109313 () Bool)

(assert (=> b!3951672 (= b_free!108609 (not b_next!109313))))

(declare-fun t!328763 () Bool)

(declare-fun tb!237889 () Bool)

(assert (=> (and b!3951672 (= (toValue!9052 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328763) tb!237889))

(declare-fun result!288102 () Bool)

(assert (= result!288102 result!288066))

(assert (=> d!1171847 t!328763))

(declare-fun tp!1203752 () Bool)

(declare-fun b_and!302851 () Bool)

(assert (=> b!3951672 (= tp!1203752 (and (=> t!328763 result!288102) b_and!302851))))

(declare-fun b_free!108611 () Bool)

(declare-fun b_next!109315 () Bool)

(assert (=> b!3951672 (= b_free!108611 (not b_next!109315))))

(declare-fun t!328765 () Bool)

(declare-fun tb!237891 () Bool)

(assert (=> (and b!3951672 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328765) tb!237891))

(declare-fun result!288104 () Bool)

(assert (= result!288104 result!287968))

(assert (=> b!3951253 t!328765))

(declare-fun tb!237893 () Bool)

(declare-fun t!328767 () Bool)

(assert (=> (and b!3951672 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328767) tb!237893))

(declare-fun result!288106 () Bool)

(assert (= result!288106 result!287978))

(assert (=> b!3951356 t!328767))

(declare-fun tb!237895 () Bool)

(declare-fun t!328769 () Bool)

(assert (=> (and b!3951672 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328769) tb!237895))

(declare-fun result!288108 () Bool)

(assert (= result!288108 result!288004))

(assert (=> b!3951412 t!328769))

(declare-fun tb!237897 () Bool)

(declare-fun t!328771 () Bool)

(assert (=> (and b!3951672 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328771) tb!237897))

(declare-fun result!288110 () Bool)

(assert (= result!288110 result!288076))

(assert (=> d!1171853 t!328771))

(declare-fun b_and!302853 () Bool)

(declare-fun tp!1203753 () Bool)

(assert (=> b!3951672 (= tp!1203753 (and (=> t!328765 result!288104) (=> t!328767 result!288106) (=> t!328769 result!288108) (=> t!328771 result!288110) b_and!302853))))

(declare-fun b!3951670 () Bool)

(declare-fun e!2445879 () Bool)

(declare-fun tp!1203756 () Bool)

(declare-fun e!2445881 () Bool)

(assert (=> b!3951670 (= e!2445879 (and (inv!21 (value!208050 (h!47435 (t!328640 prefixTokens!80)))) e!2445881 tp!1203756))))

(declare-fun e!2445882 () Bool)

(assert (=> b!3951116 (= tp!1203618 e!2445882)))

(declare-fun b!3951671 () Bool)

(declare-fun e!2445878 () Bool)

(declare-fun tp!1203755 () Bool)

(assert (=> b!3951671 (= e!2445881 (and tp!1203755 (inv!56239 (tag!7436 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (inv!56242 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) e!2445878))))

(declare-fun b!3951669 () Bool)

(declare-fun tp!1203754 () Bool)

(assert (=> b!3951669 (= e!2445882 (and (inv!56243 (h!47435 (t!328640 prefixTokens!80))) e!2445879 tp!1203754))))

(assert (=> b!3951672 (= e!2445878 (and tp!1203752 tp!1203753))))

(assert (= b!3951671 b!3951672))

(assert (= b!3951670 b!3951671))

(assert (= b!3951669 b!3951670))

(assert (= (and b!3951116 ((_ is Cons!42015) (t!328640 prefixTokens!80))) b!3951669))

(declare-fun m!4520681 () Bool)

(assert (=> b!3951670 m!4520681))

(declare-fun m!4520683 () Bool)

(assert (=> b!3951671 m!4520683))

(declare-fun m!4520685 () Bool)

(assert (=> b!3951671 m!4520685))

(declare-fun m!4520687 () Bool)

(assert (=> b!3951669 m!4520687))

(declare-fun b!3951676 () Bool)

(declare-fun e!2445884 () Bool)

(declare-fun tp!1203760 () Bool)

(declare-fun tp!1203759 () Bool)

(assert (=> b!3951676 (= e!2445884 (and tp!1203760 tp!1203759))))

(declare-fun b!3951674 () Bool)

(declare-fun tp!1203758 () Bool)

(declare-fun tp!1203757 () Bool)

(assert (=> b!3951674 (= e!2445884 (and tp!1203758 tp!1203757))))

(declare-fun b!3951673 () Bool)

(assert (=> b!3951673 (= e!2445884 tp_is_empty!19933)))

(assert (=> b!3951095 (= tp!1203623 e!2445884)))

(declare-fun b!3951675 () Bool)

(declare-fun tp!1203761 () Bool)

(assert (=> b!3951675 (= e!2445884 tp!1203761)))

(assert (= (and b!3951095 ((_ is ElementMatch!11481) (regex!6576 (h!47436 rules!2768)))) b!3951673))

(assert (= (and b!3951095 ((_ is Concat!18288) (regex!6576 (h!47436 rules!2768)))) b!3951674))

(assert (= (and b!3951095 ((_ is Star!11481) (regex!6576 (h!47436 rules!2768)))) b!3951675))

(assert (= (and b!3951095 ((_ is Union!11481) (regex!6576 (h!47436 rules!2768)))) b!3951676))

(declare-fun b!3951680 () Bool)

(declare-fun e!2445885 () Bool)

(declare-fun tp!1203765 () Bool)

(declare-fun tp!1203764 () Bool)

(assert (=> b!3951680 (= e!2445885 (and tp!1203765 tp!1203764))))

(declare-fun b!3951678 () Bool)

(declare-fun tp!1203763 () Bool)

(declare-fun tp!1203762 () Bool)

(assert (=> b!3951678 (= e!2445885 (and tp!1203763 tp!1203762))))

(declare-fun b!3951677 () Bool)

(assert (=> b!3951677 (= e!2445885 tp_is_empty!19933)))

(assert (=> b!3951105 (= tp!1203619 e!2445885)))

(declare-fun b!3951679 () Bool)

(declare-fun tp!1203766 () Bool)

(assert (=> b!3951679 (= e!2445885 tp!1203766)))

(assert (= (and b!3951105 ((_ is ElementMatch!11481) (regex!6576 (rule!9544 (h!47435 suffixTokens!72))))) b!3951677))

(assert (= (and b!3951105 ((_ is Concat!18288) (regex!6576 (rule!9544 (h!47435 suffixTokens!72))))) b!3951678))

(assert (= (and b!3951105 ((_ is Star!11481) (regex!6576 (rule!9544 (h!47435 suffixTokens!72))))) b!3951679))

(assert (= (and b!3951105 ((_ is Union!11481) (regex!6576 (rule!9544 (h!47435 suffixTokens!72))))) b!3951680))

(declare-fun b!3951684 () Bool)

(declare-fun e!2445886 () Bool)

(declare-fun tp!1203770 () Bool)

(declare-fun tp!1203769 () Bool)

(assert (=> b!3951684 (= e!2445886 (and tp!1203770 tp!1203769))))

(declare-fun b!3951682 () Bool)

(declare-fun tp!1203768 () Bool)

(declare-fun tp!1203767 () Bool)

(assert (=> b!3951682 (= e!2445886 (and tp!1203768 tp!1203767))))

(declare-fun b!3951681 () Bool)

(assert (=> b!3951681 (= e!2445886 tp_is_empty!19933)))

(assert (=> b!3951115 (= tp!1203606 e!2445886)))

(declare-fun b!3951683 () Bool)

(declare-fun tp!1203771 () Bool)

(assert (=> b!3951683 (= e!2445886 tp!1203771)))

(assert (= (and b!3951115 ((_ is ElementMatch!11481) (regex!6576 (rule!9544 (h!47435 prefixTokens!80))))) b!3951681))

(assert (= (and b!3951115 ((_ is Concat!18288) (regex!6576 (rule!9544 (h!47435 prefixTokens!80))))) b!3951682))

(assert (= (and b!3951115 ((_ is Star!11481) (regex!6576 (rule!9544 (h!47435 prefixTokens!80))))) b!3951683))

(assert (= (and b!3951115 ((_ is Union!11481) (regex!6576 (rule!9544 (h!47435 prefixTokens!80))))) b!3951684))

(declare-fun b!3951688 () Bool)

(declare-fun b_free!108613 () Bool)

(declare-fun b_next!109317 () Bool)

(assert (=> b!3951688 (= b_free!108613 (not b_next!109317))))

(declare-fun t!328773 () Bool)

(declare-fun tb!237899 () Bool)

(assert (=> (and b!3951688 (= (toValue!9052 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toValue!9052 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328773) tb!237899))

(declare-fun result!288112 () Bool)

(assert (= result!288112 result!288066))

(assert (=> d!1171847 t!328773))

(declare-fun tp!1203772 () Bool)

(declare-fun b_and!302855 () Bool)

(assert (=> b!3951688 (= tp!1203772 (and (=> t!328773 result!288112) b_and!302855))))

(declare-fun b_free!108615 () Bool)

(declare-fun b_next!109319 () Bool)

(assert (=> b!3951688 (= b_free!108615 (not b_next!109319))))

(declare-fun t!328775 () Bool)

(declare-fun tb!237901 () Bool)

(assert (=> (and b!3951688 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80))))) t!328775) tb!237901))

(declare-fun result!288114 () Bool)

(assert (= result!288114 result!287968))

(assert (=> b!3951253 t!328775))

(declare-fun tb!237903 () Bool)

(declare-fun t!328777 () Bool)

(assert (=> (and b!3951688 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433)))))) t!328777) tb!237903))

(declare-fun result!288116 () Bool)

(assert (= result!288116 result!287978))

(assert (=> b!3951356 t!328777))

(declare-fun t!328779 () Bool)

(declare-fun tb!237905 () Bool)

(assert (=> (and b!3951688 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72))))) t!328779) tb!237905))

(declare-fun result!288118 () Bool)

(assert (= result!288118 result!288004))

(assert (=> b!3951412 t!328779))

(declare-fun tb!237907 () Bool)

(declare-fun t!328781 () Bool)

(assert (=> (and b!3951688 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 lt!1381184)))))) t!328781) tb!237907))

(declare-fun result!288120 () Bool)

(assert (= result!288120 result!288076))

(assert (=> d!1171853 t!328781))

(declare-fun tp!1203773 () Bool)

(declare-fun b_and!302857 () Bool)

(assert (=> b!3951688 (= tp!1203773 (and (=> t!328775 result!288114) (=> t!328777 result!288116) (=> t!328779 result!288118) (=> t!328781 result!288120) b_and!302857))))

(declare-fun tp!1203776 () Bool)

(declare-fun e!2445890 () Bool)

(declare-fun b!3951686 () Bool)

(declare-fun e!2445888 () Bool)

(assert (=> b!3951686 (= e!2445888 (and (inv!21 (value!208050 (h!47435 (t!328640 suffixTokens!72)))) e!2445890 tp!1203776))))

(declare-fun e!2445891 () Bool)

(assert (=> b!3951114 (= tp!1203609 e!2445891)))

(declare-fun e!2445887 () Bool)

(declare-fun tp!1203775 () Bool)

(declare-fun b!3951687 () Bool)

(assert (=> b!3951687 (= e!2445890 (and tp!1203775 (inv!56239 (tag!7436 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (inv!56242 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) e!2445887))))

(declare-fun b!3951685 () Bool)

(declare-fun tp!1203774 () Bool)

(assert (=> b!3951685 (= e!2445891 (and (inv!56243 (h!47435 (t!328640 suffixTokens!72))) e!2445888 tp!1203774))))

(assert (=> b!3951688 (= e!2445887 (and tp!1203772 tp!1203773))))

(assert (= b!3951687 b!3951688))

(assert (= b!3951686 b!3951687))

(assert (= b!3951685 b!3951686))

(assert (= (and b!3951114 ((_ is Cons!42015) (t!328640 suffixTokens!72))) b!3951685))

(declare-fun m!4520689 () Bool)

(assert (=> b!3951686 m!4520689))

(declare-fun m!4520691 () Bool)

(assert (=> b!3951687 m!4520691))

(declare-fun m!4520693 () Bool)

(assert (=> b!3951687 m!4520693))

(declare-fun m!4520695 () Bool)

(assert (=> b!3951685 m!4520695))

(declare-fun b!3951689 () Bool)

(declare-fun e!2445893 () Bool)

(declare-fun tp!1203777 () Bool)

(assert (=> b!3951689 (= e!2445893 (and tp_is_empty!19933 tp!1203777))))

(assert (=> b!3951103 (= tp!1203613 e!2445893)))

(assert (= (and b!3951103 ((_ is Cons!42014) (_2!23784 (v!39335 err!4433)))) b!3951689))

(declare-fun b!3951690 () Bool)

(declare-fun e!2445894 () Bool)

(declare-fun tp!1203778 () Bool)

(assert (=> b!3951690 (= e!2445894 (and tp_is_empty!19933 tp!1203778))))

(assert (=> b!3951112 (= tp!1203610 e!2445894)))

(assert (= (and b!3951112 ((_ is Cons!42014) (originalCharacters!7176 (h!47435 prefixTokens!80)))) b!3951690))

(declare-fun b!3951691 () Bool)

(declare-fun e!2445895 () Bool)

(declare-fun tp!1203779 () Bool)

(assert (=> b!3951691 (= e!2445895 (and tp_is_empty!19933 tp!1203779))))

(assert (=> b!3951101 (= tp!1203620 e!2445895)))

(assert (= (and b!3951101 ((_ is Cons!42014) (originalCharacters!7176 (_1!23784 (v!39335 err!4433))))) b!3951691))

(declare-fun b!3951692 () Bool)

(declare-fun e!2445896 () Bool)

(declare-fun tp!1203780 () Bool)

(assert (=> b!3951692 (= e!2445896 (and tp_is_empty!19933 tp!1203780))))

(assert (=> b!3951100 (= tp!1203607 e!2445896)))

(assert (= (and b!3951100 ((_ is Cons!42014) (t!328639 prefix!426))) b!3951692))

(declare-fun b_lambda!115617 () Bool)

(assert (= b_lambda!115593 (or (and b!3951092 b_free!108587 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))))) (and b!3951672 b_free!108611 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))))) (and b!3951688 b_free!108615 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))))) (and b!3951656 b_free!108607 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))))) (and b!3951102 b_free!108591 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))))) (and b!3951122 b_free!108583 (= (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))))) (and b!3951110 b_free!108579) b_lambda!115617)))

(declare-fun b_lambda!115619 () Bool)

(assert (= b_lambda!115601 (or (and b!3951092 b_free!108587) (and b!3951672 b_free!108611 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))))) (and b!3951656 b_free!108607 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))))) (and b!3951102 b_free!108591 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))))) (and b!3951110 b_free!108579 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))))) (and b!3951688 b_free!108615 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))))) (and b!3951122 b_free!108583 (= (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))) (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))))) b_lambda!115619)))

(declare-fun b_lambda!115621 () Bool)

(assert (= b_lambda!115595 (or (and b!3951656 b_free!108607 (= (toChars!8911 (transformation!6576 (h!47436 (t!328641 rules!2768)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))))) (and b!3951102 b_free!108591 (= (toChars!8911 (transformation!6576 (h!47436 rules!2768))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))))) (and b!3951672 b_free!108611 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 prefixTokens!80))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))))) (and b!3951122 b_free!108583) (and b!3951110 b_free!108579 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 prefixTokens!80)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))))) (and b!3951688 b_free!108615 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 (t!328640 suffixTokens!72))))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))))) (and b!3951092 b_free!108587 (= (toChars!8911 (transformation!6576 (rule!9544 (h!47435 suffixTokens!72)))) (toChars!8911 (transformation!6576 (rule!9544 (_1!23784 (v!39335 err!4433))))))) b_lambda!115621)))

(check-sat (not b!3951391) (not b!3951383) (not b!3951349) (not b_next!109317) (not b!3951692) (not b_next!109291) (not b!3951130) (not b!3951138) (not d!1171853) (not b!3951611) (not b!3951259) (not b!3951619) (not b_next!109285) (not b!3951645) (not d!1171857) (not b!3951356) (not b_lambda!115619) (not b!3951618) (not d!1171691) (not b!3951614) (not b!3951658) (not b_next!109313) (not d!1171837) (not tb!237777) (not d!1171839) (not d!1171863) (not b!3951406) (not d!1171733) (not b!3951350) (not b!3951670) (not tb!237863) (not d!1171767) (not b!3951361) (not b!3951601) (not tb!237785) b_and!302837 (not d!1171867) (not b!3951626) (not b!3951387) (not d!1171833) tp_is_empty!19933 (not d!1171855) (not tb!237871) (not d!1171781) (not b!3951201) (not b!3951684) (not b!3951602) (not b!3951381) (not b!3951669) (not b!3951385) (not b_lambda!115617) (not b_next!109315) (not bm!285224) (not b!3951638) b_and!302841 (not d!1171841) (not b!3951244) (not d!1171849) (not d!1171719) (not b!3951589) (not b!3951687) (not b!3951683) (not b!3951392) (not b!3951253) (not b!3951414) (not b!3951254) (not b_next!109309) (not b_next!109311) (not b!3951689) (not d!1171843) (not b!3951674) (not b!3951359) (not b!3951411) (not b!3951511) (not b_lambda!115621) (not b!3951412) (not b!3951678) b_and!302833 (not b!3951616) (not b!3951624) (not b!3951604) b_and!302839 (not b!3951671) b_and!302831 (not b!3951508) (not b!3951675) (not b_next!109289) (not b!3951135) (not b_next!109281) b_and!302851 (not b!3951413) (not b_lambda!115615) b_and!302857 b_and!302847 (not b!3951204) (not b!3951655) (not b!3951198) b_and!302853 (not d!1171745) (not b!3951506) (not b_next!109295) (not b!3951358) (not b!3951409) (not d!1171787) (not d!1171727) (not b!3951613) (not b!3951205) (not d!1171761) (not b!3951603) (not b!3951202) b_and!302849 (not b!3951200) (not b!3951380) (not b_next!109319) (not b!3951676) (not b!3951686) (not b!3951292) (not b!3951318) (not b!3951607) (not b_next!109287) (not b!3951509) (not d!1171725) (not b_lambda!115613) (not b!3951289) (not b!3951242) (not b_next!109293) (not b!3951197) (not b!3951608) (not b!3951317) b_and!302835 (not d!1171693) (not b!3951654) (not d!1171783) (not b!3951622) (not b!3951504) (not b!3951203) (not b!3951510) b_and!302845 (not b!3951388) b_and!302843 (not d!1171835) (not b!3951260) (not b!3951682) (not b!3951691) (not b!3951685) (not b!3951389) (not b!3951362) (not b!3951640) (not b!3951680) (not b!3951559) (not b!3951390) (not b!3951410) (not b!3951639) (not d!1171723) (not d!1171689) (not b!3951407) (not b!3951507) (not tb!237809) (not b!3951132) (not b!3951357) (not d!1171775) (not bm!285225) (not b!3951590) (not b!3951657) b_and!302855 (not b!3951690) (not b!3951605) (not b_next!109283) (not b!3951243) (not d!1171749) (not b!3951291) (not b!3951384) (not b!3951679) (not b!3951623) (not d!1171845) (not b!3951505) (not b!3951598))
(check-sat (not b_next!109313) b_and!302837 (not b_next!109315) b_and!302841 (not b_next!109295) b_and!302849 (not b_next!109293) b_and!302843 b_and!302855 (not b_next!109283) (not b_next!109317) (not b_next!109291) (not b_next!109285) (not b_next!109309) (not b_next!109311) b_and!302839 b_and!302833 b_and!302831 (not b_next!109289) b_and!302851 (not b_next!109281) b_and!302857 b_and!302847 b_and!302853 (not b_next!109319) (not b_next!109287) b_and!302845 b_and!302835)
