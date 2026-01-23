; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25990 () Bool)

(assert start!25990)

(declare-fun b!244959 () Bool)

(declare-fun b_free!9041 () Bool)

(declare-fun b_next!9041 () Bool)

(assert (=> b!244959 (= b_free!9041 (not b_next!9041))))

(declare-fun tp!95973 () Bool)

(declare-fun b_and!18413 () Bool)

(assert (=> b!244959 (= tp!95973 b_and!18413)))

(declare-fun b_free!9043 () Bool)

(declare-fun b_next!9043 () Bool)

(assert (=> b!244959 (= b_free!9043 (not b_next!9043))))

(declare-fun tp!95964 () Bool)

(declare-fun b_and!18415 () Bool)

(assert (=> b!244959 (= tp!95964 b_and!18415)))

(declare-fun b!244954 () Bool)

(declare-fun b_free!9045 () Bool)

(declare-fun b_next!9045 () Bool)

(assert (=> b!244954 (= b_free!9045 (not b_next!9045))))

(declare-fun tp!95961 () Bool)

(declare-fun b_and!18417 () Bool)

(assert (=> b!244954 (= tp!95961 b_and!18417)))

(declare-fun b_free!9047 () Bool)

(declare-fun b_next!9047 () Bool)

(assert (=> b!244954 (= b_free!9047 (not b_next!9047))))

(declare-fun tp!95969 () Bool)

(declare-fun b_and!18419 () Bool)

(assert (=> b!244954 (= tp!95969 b_and!18419)))

(declare-fun b!244933 () Bool)

(declare-fun b_free!9049 () Bool)

(declare-fun b_next!9049 () Bool)

(assert (=> b!244933 (= b_free!9049 (not b_next!9049))))

(declare-fun tp!95968 () Bool)

(declare-fun b_and!18421 () Bool)

(assert (=> b!244933 (= tp!95968 b_and!18421)))

(declare-fun b_free!9051 () Bool)

(declare-fun b_next!9051 () Bool)

(assert (=> b!244933 (= b_free!9051 (not b_next!9051))))

(declare-fun tp!95967 () Bool)

(declare-fun b_and!18423 () Bool)

(assert (=> b!244933 (= tp!95967 b_and!18423)))

(declare-fun bs!26330 () Bool)

(declare-fun b!244958 () Bool)

(declare-fun b!244938 () Bool)

(assert (= bs!26330 (and b!244958 b!244938)))

(declare-fun lambda!8000 () Int)

(declare-fun lambda!7999 () Int)

(assert (=> bs!26330 (not (= lambda!8000 lambda!7999))))

(declare-fun b!244974 () Bool)

(declare-fun e!151786 () Bool)

(assert (=> b!244974 (= e!151786 true)))

(declare-fun b!244973 () Bool)

(declare-fun e!151785 () Bool)

(assert (=> b!244973 (= e!151785 e!151786)))

(declare-fun b!244972 () Bool)

(declare-fun e!151784 () Bool)

(assert (=> b!244972 (= e!151784 e!151785)))

(assert (=> b!244958 e!151784))

(assert (= b!244973 b!244974))

(assert (= b!244972 b!244973))

(declare-datatypes ((List!3601 0))(
  ( (Nil!3591) (Cons!3591 (h!8988 (_ BitVec 16)) (t!35073 List!3601)) )
))
(declare-datatypes ((TokenValue!701 0))(
  ( (FloatLiteralValue!1402 (text!5352 List!3601)) (TokenValueExt!700 (__x!2889 Int)) (Broken!3505 (value!23641 List!3601)) (Object!710) (End!701) (Def!701) (Underscore!701) (Match!701) (Else!701) (Error!701) (Case!701) (If!701) (Extends!701) (Abstract!701) (Class!701) (Val!701) (DelimiterValue!1402 (del!761 List!3601)) (KeywordValue!707 (value!23642 List!3601)) (CommentValue!1402 (value!23643 List!3601)) (WhitespaceValue!1402 (value!23644 List!3601)) (IndentationValue!701 (value!23645 List!3601)) (String!4584) (Int32!701) (Broken!3506 (value!23646 List!3601)) (Boolean!702) (Unit!4363) (OperatorValue!704 (op!761 List!3601)) (IdentifierValue!1402 (value!23647 List!3601)) (IdentifierValue!1403 (value!23648 List!3601)) (WhitespaceValue!1403 (value!23649 List!3601)) (True!1402) (False!1402) (Broken!3507 (value!23650 List!3601)) (Broken!3508 (value!23651 List!3601)) (True!1403) (RightBrace!701) (RightBracket!701) (Colon!701) (Null!701) (Comma!701) (LeftBracket!701) (False!1403) (LeftBrace!701) (ImaginaryLiteralValue!701 (text!5353 List!3601)) (StringLiteralValue!2103 (value!23652 List!3601)) (EOFValue!701 (value!23653 List!3601)) (IdentValue!701 (value!23654 List!3601)) (DelimiterValue!1403 (value!23655 List!3601)) (DedentValue!701 (value!23656 List!3601)) (NewLineValue!701 (value!23657 List!3601)) (IntegerValue!2103 (value!23658 (_ BitVec 32)) (text!5354 List!3601)) (IntegerValue!2104 (value!23659 Int) (text!5355 List!3601)) (Times!701) (Or!701) (Equal!701) (Minus!701) (Broken!3509 (value!23660 List!3601)) (And!701) (Div!701) (LessEqual!701) (Mod!701) (Concat!1604) (Not!701) (Plus!701) (SpaceValue!701 (value!23661 List!3601)) (IntegerValue!2105 (value!23662 Int) (text!5356 List!3601)) (StringLiteralValue!2104 (text!5357 List!3601)) (FloatLiteralValue!1403 (text!5358 List!3601)) (BytesLiteralValue!701 (value!23663 List!3601)) (CommentValue!1403 (value!23664 List!3601)) (StringLiteralValue!2105 (value!23665 List!3601)) (ErrorTokenValue!701 (msg!762 List!3601)) )
))
(declare-datatypes ((C!2728 0))(
  ( (C!2729 (val!1250 Int)) )
))
(declare-datatypes ((List!3602 0))(
  ( (Nil!3592) (Cons!3592 (h!8989 C!2728) (t!35074 List!3602)) )
))
(declare-datatypes ((IArray!2361 0))(
  ( (IArray!2362 (innerList!1238 List!3602)) )
))
(declare-datatypes ((Conc!1180 0))(
  ( (Node!1180 (left!2934 Conc!1180) (right!3264 Conc!1180) (csize!2590 Int) (cheight!1391 Int)) (Leaf!1859 (xs!3775 IArray!2361) (csize!2591 Int)) (Empty!1180) )
))
(declare-datatypes ((BalanceConc!2368 0))(
  ( (BalanceConc!2369 (c!46884 Conc!1180)) )
))
(declare-datatypes ((TokenValueInjection!1174 0))(
  ( (TokenValueInjection!1175 (toValue!1382 Int) (toChars!1241 Int)) )
))
(declare-datatypes ((Regex!903 0))(
  ( (ElementMatch!903 (c!46885 C!2728)) (Concat!1605 (regOne!2318 Regex!903) (regTwo!2318 Regex!903)) (EmptyExpr!903) (Star!903 (reg!1232 Regex!903)) (EmptyLang!903) (Union!903 (regOne!2319 Regex!903) (regTwo!2319 Regex!903)) )
))
(declare-datatypes ((String!4585 0))(
  ( (String!4586 (value!23666 String)) )
))
(declare-datatypes ((Rule!1158 0))(
  ( (Rule!1159 (regex!679 Regex!903) (tag!887 String!4585) (isSeparator!679 Bool) (transformation!679 TokenValueInjection!1174)) )
))
(declare-datatypes ((List!3603 0))(
  ( (Nil!3593) (Cons!3593 (h!8990 Rule!1158) (t!35075 List!3603)) )
))
(declare-fun rules!1920 () List!3603)

(get-info :version)

(assert (= (and b!244958 ((_ is Cons!3593) rules!1920)) b!244972))

(declare-fun order!2615 () Int)

(declare-fun order!2613 () Int)

(declare-fun dynLambda!1735 (Int Int) Int)

(declare-fun dynLambda!1736 (Int Int) Int)

(assert (=> b!244974 (< (dynLambda!1735 order!2613 (toValue!1382 (transformation!679 (h!8990 rules!1920)))) (dynLambda!1736 order!2615 lambda!8000))))

(declare-fun order!2617 () Int)

(declare-fun dynLambda!1737 (Int Int) Int)

(assert (=> b!244974 (< (dynLambda!1737 order!2617 (toChars!1241 (transformation!679 (h!8990 rules!1920)))) (dynLambda!1736 order!2615 lambda!8000))))

(assert (=> b!244958 true))

(declare-fun b!244929 () Bool)

(declare-fun e!151758 () Bool)

(declare-fun e!151757 () Bool)

(assert (=> b!244929 (= e!151758 e!151757)))

(declare-fun res!113202 () Bool)

(assert (=> b!244929 (=> (not res!113202) (not e!151757))))

(declare-fun lt!99144 () List!3602)

(declare-fun lt!99134 () List!3602)

(assert (=> b!244929 (= res!113202 (= lt!99144 lt!99134))))

(declare-datatypes ((Token!1102 0))(
  ( (Token!1103 (value!23667 TokenValue!701) (rule!1256 Rule!1158) (size!2861 Int) (originalCharacters!722 List!3602)) )
))
(declare-fun separatorToken!170 () Token!1102)

(declare-datatypes ((List!3604 0))(
  ( (Nil!3594) (Cons!3594 (h!8991 Token!1102) (t!35076 List!3604)) )
))
(declare-datatypes ((IArray!2363 0))(
  ( (IArray!2364 (innerList!1239 List!3604)) )
))
(declare-datatypes ((Conc!1181 0))(
  ( (Node!1181 (left!2935 Conc!1181) (right!3265 Conc!1181) (csize!2592 Int) (cheight!1392 Int)) (Leaf!1860 (xs!3776 IArray!2363) (csize!2593 Int)) (Empty!1181) )
))
(declare-datatypes ((BalanceConc!2370 0))(
  ( (BalanceConc!2371 (c!46886 Conc!1181)) )
))
(declare-fun lt!99145 () BalanceConc!2370)

(declare-datatypes ((LexerInterface!565 0))(
  ( (LexerInterfaceExt!562 (__x!2890 Int)) (Lexer!563) )
))
(declare-fun thiss!17480 () LexerInterface!565)

(declare-fun list!1411 (BalanceConc!2368) List!3602)

(declare-fun printWithSeparatorTokenWhenNeededRec!248 (LexerInterface!565 List!3603 BalanceConc!2370 Token!1102 Int) BalanceConc!2368)

(assert (=> b!244929 (= lt!99134 (list!1411 (printWithSeparatorTokenWhenNeededRec!248 thiss!17480 rules!1920 lt!99145 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3604)

(declare-fun printWithSeparatorTokenWhenNeededList!258 (LexerInterface!565 List!3603 List!3604 Token!1102) List!3602)

(assert (=> b!244929 (= lt!99144 (printWithSeparatorTokenWhenNeededList!258 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!244930 () Bool)

(declare-fun e!151752 () Bool)

(assert (=> b!244930 (= e!151752 e!151758)))

(declare-fun res!113199 () Bool)

(assert (=> b!244930 (=> (not res!113199) (not e!151758))))

(declare-fun rulesProduceEachTokenIndividually!357 (LexerInterface!565 List!3603 BalanceConc!2370) Bool)

(assert (=> b!244930 (= res!113199 (rulesProduceEachTokenIndividually!357 thiss!17480 rules!1920 lt!99145))))

(declare-fun seqFromList!735 (List!3604) BalanceConc!2370)

(assert (=> b!244930 (= lt!99145 (seqFromList!735 tokens!465))))

(declare-fun b!244931 () Bool)

(declare-fun res!113196 () Bool)

(declare-fun e!151775 () Bool)

(assert (=> b!244931 (=> (not res!113196) (not e!151775))))

(declare-datatypes ((tuple2!3982 0))(
  ( (tuple2!3983 (_1!2207 Token!1102) (_2!2207 List!3602)) )
))
(declare-fun lt!99133 () tuple2!3982)

(declare-fun isEmpty!2173 (List!3602) Bool)

(assert (=> b!244931 (= res!113196 (isEmpty!2173 (_2!2207 lt!99133)))))

(declare-fun b!244932 () Bool)

(declare-fun res!113210 () Bool)

(declare-fun e!151764 () Bool)

(assert (=> b!244932 (=> res!113210 e!151764)))

(declare-fun forall!835 (List!3604 Int) Bool)

(assert (=> b!244932 (= res!113210 (not (forall!835 (t!35076 tokens!465) lambda!7999)))))

(declare-fun e!151753 () Bool)

(assert (=> b!244933 (= e!151753 (and tp!95968 tp!95967))))

(declare-fun b!244934 () Bool)

(declare-fun tp!95965 () Bool)

(declare-fun e!151750 () Bool)

(declare-fun e!151759 () Bool)

(declare-fun inv!4445 (String!4585) Bool)

(declare-fun inv!4448 (TokenValueInjection!1174) Bool)

(assert (=> b!244934 (= e!151759 (and tp!95965 (inv!4445 (tag!887 (rule!1256 separatorToken!170))) (inv!4448 (transformation!679 (rule!1256 separatorToken!170))) e!151750))))

(declare-fun e!151766 () Bool)

(declare-fun b!244935 () Bool)

(declare-fun e!151760 () Bool)

(declare-fun tp!95972 () Bool)

(declare-fun inv!4449 (Token!1102) Bool)

(assert (=> b!244935 (= e!151760 (and (inv!4449 (h!8991 tokens!465)) e!151766 tp!95972))))

(declare-fun b!244936 () Bool)

(declare-fun res!113214 () Bool)

(assert (=> b!244936 (=> (not res!113214) (not e!151758))))

(assert (=> b!244936 (= res!113214 (isSeparator!679 (rule!1256 separatorToken!170)))))

(declare-fun b!244937 () Bool)

(declare-fun res!113205 () Bool)

(assert (=> b!244937 (=> (not res!113205) (not e!151757))))

(declare-fun seqFromList!736 (List!3602) BalanceConc!2368)

(assert (=> b!244937 (= res!113205 (= (list!1411 (seqFromList!736 lt!99144)) lt!99134))))

(declare-fun res!113211 () Bool)

(assert (=> b!244938 (=> (not res!113211) (not e!151758))))

(assert (=> b!244938 (= res!113211 (forall!835 tokens!465 lambda!7999))))

(declare-fun tp!95971 () Bool)

(declare-fun e!151768 () Bool)

(declare-fun e!151765 () Bool)

(declare-fun b!244939 () Bool)

(assert (=> b!244939 (= e!151765 (and tp!95971 (inv!4445 (tag!887 (h!8990 rules!1920))) (inv!4448 (transformation!679 (h!8990 rules!1920))) e!151768))))

(declare-fun b!244941 () Bool)

(declare-fun e!151755 () Bool)

(declare-fun e!151769 () Bool)

(assert (=> b!244941 (= e!151755 e!151769)))

(declare-fun res!113215 () Bool)

(assert (=> b!244941 (=> res!113215 e!151769)))

(declare-fun lt!99149 () List!3602)

(declare-fun lt!99136 () List!3602)

(declare-fun lt!99150 () List!3602)

(assert (=> b!244941 (= res!113215 (or (not (= lt!99149 lt!99150)) (not (= lt!99150 lt!99136)) (not (= lt!99149 lt!99136))))))

(declare-fun printList!249 (LexerInterface!565 List!3604) List!3602)

(assert (=> b!244941 (= lt!99150 (printList!249 thiss!17480 (Cons!3594 (h!8991 tokens!465) Nil!3594)))))

(declare-fun lt!99131 () BalanceConc!2368)

(assert (=> b!244941 (= lt!99149 (list!1411 lt!99131))))

(declare-fun lt!99132 () BalanceConc!2370)

(declare-fun printTailRec!259 (LexerInterface!565 BalanceConc!2370 Int BalanceConc!2368) BalanceConc!2368)

(assert (=> b!244941 (= lt!99131 (printTailRec!259 thiss!17480 lt!99132 0 (BalanceConc!2369 Empty!1180)))))

(declare-fun print!296 (LexerInterface!565 BalanceConc!2370) BalanceConc!2368)

(assert (=> b!244941 (= lt!99131 (print!296 thiss!17480 lt!99132))))

(declare-fun singletonSeq!231 (Token!1102) BalanceConc!2370)

(assert (=> b!244941 (= lt!99132 (singletonSeq!231 (h!8991 tokens!465)))))

(declare-fun b!244942 () Bool)

(declare-fun tp!95962 () Bool)

(declare-fun e!151767 () Bool)

(declare-fun inv!21 (TokenValue!701) Bool)

(assert (=> b!244942 (= e!151766 (and (inv!21 (value!23667 (h!8991 tokens!465))) e!151767 tp!95962))))

(declare-fun b!244943 () Bool)

(assert (=> b!244943 (= e!151764 (forall!835 (t!35076 tokens!465) lambda!7999))))

(declare-fun b!244944 () Bool)

(declare-fun e!151776 () Bool)

(assert (=> b!244944 (= e!151776 e!151764)))

(declare-fun res!113197 () Bool)

(assert (=> b!244944 (=> res!113197 e!151764)))

(declare-fun lt!99147 () BalanceConc!2370)

(assert (=> b!244944 (= res!113197 (not (rulesProduceEachTokenIndividually!357 thiss!17480 rules!1920 lt!99147)))))

(declare-fun e!151771 () Bool)

(assert (=> b!244944 e!151771))

(declare-fun res!113220 () Bool)

(assert (=> b!244944 (=> res!113220 e!151771)))

(declare-fun isEmpty!2174 (List!3604) Bool)

(assert (=> b!244944 (= res!113220 (isEmpty!2174 tokens!465))))

(declare-datatypes ((Unit!4364 0))(
  ( (Unit!4365) )
))
(declare-fun lt!99139 () Unit!4364)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!134 (LexerInterface!565 List!3603 List!3604 Token!1102) Unit!4364)

(assert (=> b!244944 (= lt!99139 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!134 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!244945 () Bool)

(declare-fun e!151772 () Bool)

(declare-fun tp!95970 () Bool)

(assert (=> b!244945 (= e!151772 (and e!151765 tp!95970))))

(declare-fun b!244946 () Bool)

(declare-fun e!151762 () Bool)

(assert (=> b!244946 (= e!151762 e!151776)))

(declare-fun res!113212 () Bool)

(assert (=> b!244946 (=> res!113212 e!151776)))

(declare-fun lt!99146 () Bool)

(assert (=> b!244946 (= res!113212 lt!99146)))

(assert (=> b!244946 e!151775))

(declare-fun res!113217 () Bool)

(assert (=> b!244946 (=> (not res!113217) (not e!151775))))

(assert (=> b!244946 (= res!113217 (= (_1!2207 lt!99133) (h!8991 tokens!465)))))

(declare-datatypes ((Option!720 0))(
  ( (None!719) (Some!719 (v!14480 tuple2!3982)) )
))
(declare-fun lt!99130 () Option!720)

(declare-fun get!1173 (Option!720) tuple2!3982)

(assert (=> b!244946 (= lt!99133 (get!1173 lt!99130))))

(declare-fun isDefined!571 (Option!720) Bool)

(assert (=> b!244946 (isDefined!571 lt!99130)))

(declare-fun maxPrefix!295 (LexerInterface!565 List!3603 List!3602) Option!720)

(assert (=> b!244946 (= lt!99130 (maxPrefix!295 thiss!17480 rules!1920 lt!99136))))

(declare-fun b!244947 () Bool)

(declare-fun res!113200 () Bool)

(assert (=> b!244947 (=> (not res!113200) (not e!151758))))

(declare-fun rulesProduceIndividualToken!314 (LexerInterface!565 List!3603 Token!1102) Bool)

(assert (=> b!244947 (= res!113200 (rulesProduceIndividualToken!314 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!244948 () Bool)

(declare-fun e!151751 () Bool)

(declare-fun tp!95963 () Bool)

(assert (=> b!244948 (= e!151751 (and (inv!21 (value!23667 separatorToken!170)) e!151759 tp!95963))))

(declare-fun b!244949 () Bool)

(declare-fun e!151756 () Bool)

(assert (=> b!244949 (= e!151757 (not e!151756))))

(declare-fun res!113208 () Bool)

(assert (=> b!244949 (=> res!113208 e!151756)))

(declare-fun lt!99141 () List!3602)

(assert (=> b!244949 (= res!113208 (not (= lt!99141 (list!1411 (printWithSeparatorTokenWhenNeededRec!248 thiss!17480 rules!1920 lt!99147 separatorToken!170 0)))))))

(assert (=> b!244949 (= lt!99147 (seqFromList!735 (t!35076 tokens!465)))))

(declare-fun lt!99135 () List!3602)

(declare-fun lt!99137 () List!3602)

(assert (=> b!244949 (= lt!99135 lt!99137)))

(declare-fun lt!99142 () List!3602)

(declare-fun ++!916 (List!3602 List!3602) List!3602)

(assert (=> b!244949 (= lt!99137 (++!916 lt!99136 lt!99142))))

(declare-fun lt!99148 () List!3602)

(assert (=> b!244949 (= lt!99135 (++!916 (++!916 lt!99136 lt!99148) lt!99141))))

(declare-fun lt!99138 () Unit!4364)

(declare-fun lemmaConcatAssociativity!384 (List!3602 List!3602 List!3602) Unit!4364)

(assert (=> b!244949 (= lt!99138 (lemmaConcatAssociativity!384 lt!99136 lt!99148 lt!99141))))

(declare-fun charsOf!334 (Token!1102) BalanceConc!2368)

(assert (=> b!244949 (= lt!99136 (list!1411 (charsOf!334 (h!8991 tokens!465))))))

(assert (=> b!244949 (= lt!99142 (++!916 lt!99148 lt!99141))))

(assert (=> b!244949 (= lt!99141 (printWithSeparatorTokenWhenNeededList!258 thiss!17480 rules!1920 (t!35076 tokens!465) separatorToken!170))))

(assert (=> b!244949 (= lt!99148 (list!1411 (charsOf!334 separatorToken!170)))))

(declare-fun b!244950 () Bool)

(declare-fun matchR!241 (Regex!903 List!3602) Bool)

(assert (=> b!244950 (= e!151775 (matchR!241 (regex!679 (rule!1256 (h!8991 tokens!465))) lt!99136))))

(declare-fun b!244951 () Bool)

(declare-fun res!113198 () Bool)

(assert (=> b!244951 (=> res!113198 e!151769)))

(assert (=> b!244951 (= res!113198 (not (rulesProduceIndividualToken!314 thiss!17480 rules!1920 (h!8991 tokens!465))))))

(declare-fun e!151761 () Bool)

(declare-fun b!244952 () Bool)

(assert (=> b!244952 (= e!151761 (not (= lt!99144 (++!916 lt!99136 lt!99141))))))

(declare-fun b!244953 () Bool)

(declare-fun res!113219 () Bool)

(assert (=> b!244953 (=> (not res!113219) (not e!151758))))

(declare-fun sepAndNonSepRulesDisjointChars!268 (List!3603 List!3603) Bool)

(assert (=> b!244953 (= res!113219 (sepAndNonSepRulesDisjointChars!268 rules!1920 rules!1920))))

(assert (=> b!244954 (= e!151750 (and tp!95961 tp!95969))))

(declare-fun b!244955 () Bool)

(declare-fun e!151770 () Bool)

(declare-fun lt!99143 () Option!720)

(declare-fun head!838 (List!3604) Token!1102)

(assert (=> b!244955 (= e!151770 (= (_1!2207 (get!1173 lt!99143)) (head!838 tokens!465)))))

(declare-fun b!244956 () Bool)

(assert (=> b!244956 (= e!151756 e!151755)))

(declare-fun res!113209 () Bool)

(assert (=> b!244956 (=> res!113209 e!151755)))

(assert (=> b!244956 (= res!113209 e!151761)))

(declare-fun res!113201 () Bool)

(assert (=> b!244956 (=> (not res!113201) (not e!151761))))

(assert (=> b!244956 (= res!113201 (not lt!99146))))

(assert (=> b!244956 (= lt!99146 (= lt!99144 lt!99137))))

(declare-fun b!244957 () Bool)

(declare-fun res!113204 () Bool)

(assert (=> b!244957 (=> (not res!113204) (not e!151758))))

(assert (=> b!244957 (= res!113204 ((_ is Cons!3594) tokens!465))))

(assert (=> b!244958 (= e!151769 e!151762)))

(declare-fun res!113213 () Bool)

(assert (=> b!244958 (=> res!113213 e!151762)))

(declare-datatypes ((tuple2!3984 0))(
  ( (tuple2!3985 (_1!2208 Token!1102) (_2!2208 BalanceConc!2368)) )
))
(declare-datatypes ((Option!721 0))(
  ( (None!720) (Some!720 (v!14481 tuple2!3984)) )
))
(declare-fun isDefined!572 (Option!721) Bool)

(declare-fun maxPrefixZipperSequence!258 (LexerInterface!565 List!3603 BalanceConc!2368) Option!721)

(assert (=> b!244958 (= res!113213 (not (isDefined!572 (maxPrefixZipperSequence!258 thiss!17480 rules!1920 (seqFromList!736 (originalCharacters!722 (h!8991 tokens!465)))))))))

(declare-fun lt!99140 () Unit!4364)

(declare-fun forallContained!246 (List!3604 Int Token!1102) Unit!4364)

(assert (=> b!244958 (= lt!99140 (forallContained!246 tokens!465 lambda!8000 (h!8991 tokens!465)))))

(assert (=> b!244958 (= lt!99136 (originalCharacters!722 (h!8991 tokens!465)))))

(assert (=> b!244959 (= e!151768 (and tp!95973 tp!95964))))

(declare-fun b!244940 () Bool)

(declare-fun res!113216 () Bool)

(assert (=> b!244940 (=> (not res!113216) (not e!151752))))

(declare-fun rulesInvariant!531 (LexerInterface!565 List!3603) Bool)

(assert (=> b!244940 (= res!113216 (rulesInvariant!531 thiss!17480 rules!1920))))

(declare-fun res!113207 () Bool)

(assert (=> start!25990 (=> (not res!113207) (not e!151752))))

(assert (=> start!25990 (= res!113207 ((_ is Lexer!563) thiss!17480))))

(assert (=> start!25990 e!151752))

(assert (=> start!25990 true))

(assert (=> start!25990 e!151772))

(assert (=> start!25990 (and (inv!4449 separatorToken!170) e!151751)))

(assert (=> start!25990 e!151760))

(declare-fun b!244960 () Bool)

(assert (=> b!244960 (= e!151771 e!151770)))

(declare-fun res!113218 () Bool)

(assert (=> b!244960 (=> (not res!113218) (not e!151770))))

(assert (=> b!244960 (= res!113218 (isDefined!571 lt!99143))))

(assert (=> b!244960 (= lt!99143 (maxPrefix!295 thiss!17480 rules!1920 lt!99144))))

(declare-fun tp!95966 () Bool)

(declare-fun b!244961 () Bool)

(assert (=> b!244961 (= e!151767 (and tp!95966 (inv!4445 (tag!887 (rule!1256 (h!8991 tokens!465)))) (inv!4448 (transformation!679 (rule!1256 (h!8991 tokens!465)))) e!151753))))

(declare-fun b!244962 () Bool)

(declare-fun res!113206 () Bool)

(assert (=> b!244962 (=> (not res!113206) (not e!151752))))

(declare-fun isEmpty!2175 (List!3603) Bool)

(assert (=> b!244962 (= res!113206 (not (isEmpty!2175 rules!1920)))))

(declare-fun b!244963 () Bool)

(declare-fun res!113203 () Bool)

(assert (=> b!244963 (=> res!113203 e!151769)))

(declare-fun isEmpty!2176 (BalanceConc!2370) Bool)

(declare-datatypes ((tuple2!3986 0))(
  ( (tuple2!3987 (_1!2209 BalanceConc!2370) (_2!2209 BalanceConc!2368)) )
))
(declare-fun lex!365 (LexerInterface!565 List!3603 BalanceConc!2368) tuple2!3986)

(assert (=> b!244963 (= res!113203 (isEmpty!2176 (_1!2209 (lex!365 thiss!17480 rules!1920 (seqFromList!736 lt!99136)))))))

(assert (= (and start!25990 res!113207) b!244962))

(assert (= (and b!244962 res!113206) b!244940))

(assert (= (and b!244940 res!113216) b!244930))

(assert (= (and b!244930 res!113199) b!244947))

(assert (= (and b!244947 res!113200) b!244936))

(assert (= (and b!244936 res!113214) b!244938))

(assert (= (and b!244938 res!113211) b!244953))

(assert (= (and b!244953 res!113219) b!244957))

(assert (= (and b!244957 res!113204) b!244929))

(assert (= (and b!244929 res!113202) b!244937))

(assert (= (and b!244937 res!113205) b!244949))

(assert (= (and b!244949 (not res!113208)) b!244956))

(assert (= (and b!244956 res!113201) b!244952))

(assert (= (and b!244956 (not res!113209)) b!244941))

(assert (= (and b!244941 (not res!113215)) b!244951))

(assert (= (and b!244951 (not res!113198)) b!244963))

(assert (= (and b!244963 (not res!113203)) b!244958))

(assert (= (and b!244958 (not res!113213)) b!244946))

(assert (= (and b!244946 res!113217) b!244931))

(assert (= (and b!244931 res!113196) b!244950))

(assert (= (and b!244946 (not res!113212)) b!244944))

(assert (= (and b!244944 (not res!113220)) b!244960))

(assert (= (and b!244960 res!113218) b!244955))

(assert (= (and b!244944 (not res!113197)) b!244932))

(assert (= (and b!244932 (not res!113210)) b!244943))

(assert (= b!244939 b!244959))

(assert (= b!244945 b!244939))

(assert (= (and start!25990 ((_ is Cons!3593) rules!1920)) b!244945))

(assert (= b!244934 b!244954))

(assert (= b!244948 b!244934))

(assert (= start!25990 b!244948))

(assert (= b!244961 b!244933))

(assert (= b!244942 b!244961))

(assert (= b!244935 b!244942))

(assert (= (and start!25990 ((_ is Cons!3594) tokens!465)) b!244935))

(declare-fun m!299579 () Bool)

(assert (=> b!244944 m!299579))

(declare-fun m!299581 () Bool)

(assert (=> b!244944 m!299581))

(declare-fun m!299583 () Bool)

(assert (=> b!244944 m!299583))

(declare-fun m!299585 () Bool)

(assert (=> b!244929 m!299585))

(assert (=> b!244929 m!299585))

(declare-fun m!299587 () Bool)

(assert (=> b!244929 m!299587))

(declare-fun m!299589 () Bool)

(assert (=> b!244929 m!299589))

(declare-fun m!299591 () Bool)

(assert (=> b!244951 m!299591))

(declare-fun m!299593 () Bool)

(assert (=> b!244961 m!299593))

(declare-fun m!299595 () Bool)

(assert (=> b!244961 m!299595))

(declare-fun m!299597 () Bool)

(assert (=> b!244941 m!299597))

(declare-fun m!299599 () Bool)

(assert (=> b!244941 m!299599))

(declare-fun m!299601 () Bool)

(assert (=> b!244941 m!299601))

(declare-fun m!299603 () Bool)

(assert (=> b!244941 m!299603))

(declare-fun m!299605 () Bool)

(assert (=> b!244941 m!299605))

(declare-fun m!299607 () Bool)

(assert (=> b!244930 m!299607))

(declare-fun m!299609 () Bool)

(assert (=> b!244930 m!299609))

(declare-fun m!299611 () Bool)

(assert (=> b!244940 m!299611))

(declare-fun m!299613 () Bool)

(assert (=> b!244943 m!299613))

(declare-fun m!299615 () Bool)

(assert (=> b!244937 m!299615))

(assert (=> b!244937 m!299615))

(declare-fun m!299617 () Bool)

(assert (=> b!244937 m!299617))

(declare-fun m!299619 () Bool)

(assert (=> start!25990 m!299619))

(declare-fun m!299621 () Bool)

(assert (=> b!244947 m!299621))

(declare-fun m!299623 () Bool)

(assert (=> b!244958 m!299623))

(assert (=> b!244958 m!299623))

(declare-fun m!299625 () Bool)

(assert (=> b!244958 m!299625))

(assert (=> b!244958 m!299625))

(declare-fun m!299627 () Bool)

(assert (=> b!244958 m!299627))

(declare-fun m!299629 () Bool)

(assert (=> b!244958 m!299629))

(declare-fun m!299631 () Bool)

(assert (=> b!244953 m!299631))

(declare-fun m!299633 () Bool)

(assert (=> b!244962 m!299633))

(declare-fun m!299635 () Bool)

(assert (=> b!244955 m!299635))

(declare-fun m!299637 () Bool)

(assert (=> b!244955 m!299637))

(declare-fun m!299639 () Bool)

(assert (=> b!244939 m!299639))

(declare-fun m!299641 () Bool)

(assert (=> b!244939 m!299641))

(declare-fun m!299643 () Bool)

(assert (=> b!244946 m!299643))

(declare-fun m!299645 () Bool)

(assert (=> b!244946 m!299645))

(declare-fun m!299647 () Bool)

(assert (=> b!244946 m!299647))

(declare-fun m!299649 () Bool)

(assert (=> b!244963 m!299649))

(assert (=> b!244963 m!299649))

(declare-fun m!299651 () Bool)

(assert (=> b!244963 m!299651))

(declare-fun m!299653 () Bool)

(assert (=> b!244963 m!299653))

(declare-fun m!299655 () Bool)

(assert (=> b!244952 m!299655))

(declare-fun m!299657 () Bool)

(assert (=> b!244931 m!299657))

(declare-fun m!299659 () Bool)

(assert (=> b!244935 m!299659))

(declare-fun m!299661 () Bool)

(assert (=> b!244934 m!299661))

(declare-fun m!299663 () Bool)

(assert (=> b!244934 m!299663))

(declare-fun m!299665 () Bool)

(assert (=> b!244949 m!299665))

(declare-fun m!299667 () Bool)

(assert (=> b!244949 m!299667))

(declare-fun m!299669 () Bool)

(assert (=> b!244949 m!299669))

(declare-fun m!299671 () Bool)

(assert (=> b!244949 m!299671))

(assert (=> b!244949 m!299669))

(declare-fun m!299673 () Bool)

(assert (=> b!244949 m!299673))

(declare-fun m!299675 () Bool)

(assert (=> b!244949 m!299675))

(declare-fun m!299677 () Bool)

(assert (=> b!244949 m!299677))

(declare-fun m!299679 () Bool)

(assert (=> b!244949 m!299679))

(declare-fun m!299681 () Bool)

(assert (=> b!244949 m!299681))

(declare-fun m!299683 () Bool)

(assert (=> b!244949 m!299683))

(assert (=> b!244949 m!299681))

(declare-fun m!299685 () Bool)

(assert (=> b!244949 m!299685))

(assert (=> b!244949 m!299677))

(declare-fun m!299687 () Bool)

(assert (=> b!244949 m!299687))

(declare-fun m!299689 () Bool)

(assert (=> b!244949 m!299689))

(assert (=> b!244949 m!299673))

(declare-fun m!299691 () Bool)

(assert (=> b!244950 m!299691))

(declare-fun m!299693 () Bool)

(assert (=> b!244938 m!299693))

(assert (=> b!244932 m!299613))

(declare-fun m!299695 () Bool)

(assert (=> b!244948 m!299695))

(declare-fun m!299697 () Bool)

(assert (=> b!244942 m!299697))

(declare-fun m!299699 () Bool)

(assert (=> b!244960 m!299699))

(declare-fun m!299701 () Bool)

(assert (=> b!244960 m!299701))

(check-sat (not b_next!9047) (not b!244946) b_and!18421 (not b!244943) b_and!18423 b_and!18415 (not b!244958) (not b!244944) (not b!244942) (not b!244963) b_and!18417 (not b_next!9049) (not b!244938) (not start!25990) (not b!244945) (not b!244950) (not b!244951) (not b!244937) (not b_next!9051) (not b!244962) (not b_next!9041) b_and!18413 (not b_next!9045) (not b!244960) (not b!244961) (not b!244930) (not b!244949) (not b!244939) (not b!244952) (not b!244972) (not b!244940) (not b!244932) (not b!244955) (not b!244931) b_and!18419 (not b_next!9043) (not b!244935) (not b!244953) (not b!244934) (not b!244947) (not b!244941) (not b!244929) (not b!244948))
(check-sat (not b_next!9047) b_and!18421 (not b_next!9045) b_and!18423 b_and!18415 b_and!18417 (not b_next!9049) (not b_next!9051) (not b_next!9041) b_and!18413 b_and!18419 (not b_next!9043))
