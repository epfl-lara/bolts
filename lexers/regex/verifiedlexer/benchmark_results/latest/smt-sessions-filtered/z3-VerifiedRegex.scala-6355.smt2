; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327906 () Bool)

(assert start!327906)

(declare-fun b!3528190 () Bool)

(declare-fun b_free!90961 () Bool)

(declare-fun b_next!91665 () Bool)

(assert (=> b!3528190 (= b_free!90961 (not b_next!91665))))

(declare-fun tp!1088106 () Bool)

(declare-fun b_and!251591 () Bool)

(assert (=> b!3528190 (= tp!1088106 b_and!251591)))

(declare-fun b_free!90963 () Bool)

(declare-fun b_next!91667 () Bool)

(assert (=> b!3528190 (= b_free!90963 (not b_next!91667))))

(declare-fun tp!1088112 () Bool)

(declare-fun b_and!251593 () Bool)

(assert (=> b!3528190 (= tp!1088112 b_and!251593)))

(declare-fun b!3528203 () Bool)

(declare-fun b_free!90965 () Bool)

(declare-fun b_next!91669 () Bool)

(assert (=> b!3528203 (= b_free!90965 (not b_next!91669))))

(declare-fun tp!1088103 () Bool)

(declare-fun b_and!251595 () Bool)

(assert (=> b!3528203 (= tp!1088103 b_and!251595)))

(declare-fun b_free!90967 () Bool)

(declare-fun b_next!91671 () Bool)

(assert (=> b!3528203 (= b_free!90967 (not b_next!91671))))

(declare-fun tp!1088110 () Bool)

(declare-fun b_and!251597 () Bool)

(assert (=> b!3528203 (= tp!1088110 b_and!251597)))

(declare-fun b!3528170 () Bool)

(declare-fun b_free!90969 () Bool)

(declare-fun b_next!91673 () Bool)

(assert (=> b!3528170 (= b_free!90969 (not b_next!91673))))

(declare-fun tp!1088107 () Bool)

(declare-fun b_and!251599 () Bool)

(assert (=> b!3528170 (= tp!1088107 b_and!251599)))

(declare-fun b_free!90971 () Bool)

(declare-fun b_next!91675 () Bool)

(assert (=> b!3528170 (= b_free!90971 (not b_next!91675))))

(declare-fun tp!1088113 () Bool)

(declare-fun b_and!251601 () Bool)

(assert (=> b!3528170 (= tp!1088113 b_and!251601)))

(declare-fun bs!565781 () Bool)

(declare-fun b!3528201 () Bool)

(declare-fun b!3528198 () Bool)

(assert (= bs!565781 (and b!3528201 b!3528198)))

(declare-fun lambda!122959 () Int)

(declare-fun lambda!122958 () Int)

(assert (=> bs!565781 (not (= lambda!122959 lambda!122958))))

(declare-fun b!3528216 () Bool)

(declare-fun e!2184148 () Bool)

(assert (=> b!3528216 (= e!2184148 true)))

(declare-fun b!3528215 () Bool)

(declare-fun e!2184147 () Bool)

(assert (=> b!3528215 (= e!2184147 e!2184148)))

(declare-fun b!3528214 () Bool)

(declare-fun e!2184146 () Bool)

(assert (=> b!3528214 (= e!2184146 e!2184147)))

(assert (=> b!3528201 e!2184146))

(assert (= b!3528215 b!3528216))

(assert (= b!3528214 b!3528215))

(declare-datatypes ((C!20684 0))(
  ( (C!20685 (val!12390 Int)) )
))
(declare-datatypes ((Regex!10249 0))(
  ( (ElementMatch!10249 (c!608160 C!20684)) (Concat!15969 (regOne!21010 Regex!10249) (regTwo!21010 Regex!10249)) (EmptyExpr!10249) (Star!10249 (reg!10578 Regex!10249)) (EmptyLang!10249) (Union!10249 (regOne!21011 Regex!10249) (regTwo!21011 Regex!10249)) )
))
(declare-datatypes ((List!37528 0))(
  ( (Nil!37404) (Cons!37404 (h!42824 (_ BitVec 16)) (t!282693 List!37528)) )
))
(declare-datatypes ((TokenValue!5720 0))(
  ( (FloatLiteralValue!11440 (text!40485 List!37528)) (TokenValueExt!5719 (__x!23657 Int)) (Broken!28600 (value!176899 List!37528)) (Object!5843) (End!5720) (Def!5720) (Underscore!5720) (Match!5720) (Else!5720) (Error!5720) (Case!5720) (If!5720) (Extends!5720) (Abstract!5720) (Class!5720) (Val!5720) (DelimiterValue!11440 (del!5780 List!37528)) (KeywordValue!5726 (value!176900 List!37528)) (CommentValue!11440 (value!176901 List!37528)) (WhitespaceValue!11440 (value!176902 List!37528)) (IndentationValue!5720 (value!176903 List!37528)) (String!41933) (Int32!5720) (Broken!28601 (value!176904 List!37528)) (Boolean!5721) (Unit!53109) (OperatorValue!5723 (op!5780 List!37528)) (IdentifierValue!11440 (value!176905 List!37528)) (IdentifierValue!11441 (value!176906 List!37528)) (WhitespaceValue!11441 (value!176907 List!37528)) (True!11440) (False!11440) (Broken!28602 (value!176908 List!37528)) (Broken!28603 (value!176909 List!37528)) (True!11441) (RightBrace!5720) (RightBracket!5720) (Colon!5720) (Null!5720) (Comma!5720) (LeftBracket!5720) (False!11441) (LeftBrace!5720) (ImaginaryLiteralValue!5720 (text!40486 List!37528)) (StringLiteralValue!17160 (value!176910 List!37528)) (EOFValue!5720 (value!176911 List!37528)) (IdentValue!5720 (value!176912 List!37528)) (DelimiterValue!11441 (value!176913 List!37528)) (DedentValue!5720 (value!176914 List!37528)) (NewLineValue!5720 (value!176915 List!37528)) (IntegerValue!17160 (value!176916 (_ BitVec 32)) (text!40487 List!37528)) (IntegerValue!17161 (value!176917 Int) (text!40488 List!37528)) (Times!5720) (Or!5720) (Equal!5720) (Minus!5720) (Broken!28604 (value!176918 List!37528)) (And!5720) (Div!5720) (LessEqual!5720) (Mod!5720) (Concat!15970) (Not!5720) (Plus!5720) (SpaceValue!5720 (value!176919 List!37528)) (IntegerValue!17162 (value!176920 Int) (text!40489 List!37528)) (StringLiteralValue!17161 (text!40490 List!37528)) (FloatLiteralValue!11441 (text!40491 List!37528)) (BytesLiteralValue!5720 (value!176921 List!37528)) (CommentValue!11441 (value!176922 List!37528)) (StringLiteralValue!17162 (value!176923 List!37528)) (ErrorTokenValue!5720 (msg!5781 List!37528)) )
))
(declare-datatypes ((List!37529 0))(
  ( (Nil!37405) (Cons!37405 (h!42825 C!20684) (t!282694 List!37529)) )
))
(declare-datatypes ((IArray!22715 0))(
  ( (IArray!22716 (innerList!11415 List!37529)) )
))
(declare-datatypes ((Conc!11355 0))(
  ( (Node!11355 (left!29230 Conc!11355) (right!29560 Conc!11355) (csize!22940 Int) (cheight!11566 Int)) (Leaf!17711 (xs!14545 IArray!22715) (csize!22941 Int)) (Empty!11355) )
))
(declare-datatypes ((BalanceConc!22324 0))(
  ( (BalanceConc!22325 (c!608161 Conc!11355)) )
))
(declare-datatypes ((String!41934 0))(
  ( (String!41935 (value!176924 String)) )
))
(declare-datatypes ((TokenValueInjection!10868 0))(
  ( (TokenValueInjection!10869 (toValue!7746 Int) (toChars!7605 Int)) )
))
(declare-datatypes ((Rule!10780 0))(
  ( (Rule!10781 (regex!5490 Regex!10249) (tag!6134 String!41934) (isSeparator!5490 Bool) (transformation!5490 TokenValueInjection!10868)) )
))
(declare-datatypes ((List!37530 0))(
  ( (Nil!37406) (Cons!37406 (h!42826 Rule!10780) (t!282695 List!37530)) )
))
(declare-fun rules!2135 () List!37530)

(get-info :version)

(assert (= (and b!3528201 ((_ is Cons!37406) rules!2135)) b!3528214))

(declare-fun order!20179 () Int)

(declare-fun order!20177 () Int)

(declare-fun dynLambda!15968 (Int Int) Int)

(declare-fun dynLambda!15969 (Int Int) Int)

(assert (=> b!3528216 (< (dynLambda!15968 order!20177 (toValue!7746 (transformation!5490 (h!42826 rules!2135)))) (dynLambda!15969 order!20179 lambda!122959))))

(declare-fun order!20181 () Int)

(declare-fun dynLambda!15970 (Int Int) Int)

(assert (=> b!3528216 (< (dynLambda!15970 order!20181 (toChars!7605 (transformation!5490 (h!42826 rules!2135)))) (dynLambda!15969 order!20179 lambda!122959))))

(assert (=> b!3528201 true))

(declare-fun b!3528163 () Bool)

(declare-fun e!2184134 () Bool)

(declare-fun e!2184119 () Bool)

(assert (=> b!3528163 (= e!2184134 e!2184119)))

(declare-fun res!1423502 () Bool)

(assert (=> b!3528163 (=> res!1423502 e!2184119)))

(declare-fun lt!1206259 () BalanceConc!22324)

(declare-datatypes ((LexerInterface!5079 0))(
  ( (LexerInterfaceExt!5076 (__x!23658 Int)) (Lexer!5077) )
))
(declare-fun thiss!18206 () LexerInterface!5079)

(declare-datatypes ((Token!10346 0))(
  ( (Token!10347 (value!176925 TokenValue!5720) (rule!8150 Rule!10780) (size!28473 Int) (originalCharacters!6204 List!37529)) )
))
(declare-datatypes ((List!37531 0))(
  ( (Nil!37407) (Cons!37407 (h!42827 Token!10346) (t!282696 List!37531)) )
))
(declare-datatypes ((IArray!22717 0))(
  ( (IArray!22718 (innerList!11416 List!37531)) )
))
(declare-datatypes ((Conc!11356 0))(
  ( (Node!11356 (left!29231 Conc!11356) (right!29561 Conc!11356) (csize!22942 Int) (cheight!11567 Int)) (Leaf!17712 (xs!14546 IArray!22717) (csize!22943 Int)) (Empty!11356) )
))
(declare-datatypes ((BalanceConc!22326 0))(
  ( (BalanceConc!22327 (c!608162 Conc!11356)) )
))
(declare-fun isEmpty!21883 (BalanceConc!22326) Bool)

(declare-datatypes ((tuple2!37260 0))(
  ( (tuple2!37261 (_1!21764 BalanceConc!22326) (_2!21764 BalanceConc!22324)) )
))
(declare-fun lex!2405 (LexerInterface!5079 List!37530 BalanceConc!22324) tuple2!37260)

(assert (=> b!3528163 (= res!1423502 (isEmpty!21883 (_1!21764 (lex!2405 thiss!18206 rules!2135 lt!1206259))))))

(declare-fun lt!1206246 () List!37529)

(declare-fun seqFromList!4033 (List!37529) BalanceConc!22324)

(assert (=> b!3528163 (= lt!1206259 (seqFromList!4033 lt!1206246))))

(declare-fun b!3528164 () Bool)

(declare-fun res!1423517 () Bool)

(declare-fun e!2184106 () Bool)

(assert (=> b!3528164 (=> (not res!1423517) (not e!2184106))))

(declare-fun tokens!494 () List!37531)

(assert (=> b!3528164 (= res!1423517 (and (not ((_ is Nil!37407) tokens!494)) (not ((_ is Nil!37407) (t!282696 tokens!494)))))))

(declare-fun separatorToken!241 () Token!10346)

(declare-fun tp!1088105 () Bool)

(declare-fun e!2184127 () Bool)

(declare-fun b!3528165 () Bool)

(declare-fun e!2184109 () Bool)

(declare-fun inv!50641 (String!41934) Bool)

(declare-fun inv!50644 (TokenValueInjection!10868) Bool)

(assert (=> b!3528165 (= e!2184109 (and tp!1088105 (inv!50641 (tag!6134 (rule!8150 separatorToken!241))) (inv!50644 (transformation!5490 (rule!8150 separatorToken!241))) e!2184127))))

(declare-fun e!2184114 () Bool)

(declare-fun tp!1088108 () Bool)

(declare-fun b!3528167 () Bool)

(declare-fun inv!21 (TokenValue!5720) Bool)

(assert (=> b!3528167 (= e!2184114 (and (inv!21 (value!176925 separatorToken!241)) e!2184109 tp!1088108))))

(declare-fun b!3528168 () Bool)

(declare-fun e!2184132 () Bool)

(assert (=> b!3528168 (= e!2184106 (not e!2184132))))

(declare-fun res!1423511 () Bool)

(assert (=> b!3528168 (=> res!1423511 e!2184132)))

(declare-fun lt!1206260 () List!37529)

(declare-fun lt!1206262 () List!37529)

(assert (=> b!3528168 (= res!1423511 (not (= lt!1206260 lt!1206262)))))

(declare-fun printList!1627 (LexerInterface!5079 List!37531) List!37529)

(assert (=> b!3528168 (= lt!1206262 (printList!1627 thiss!18206 (Cons!37407 (h!42827 tokens!494) Nil!37407)))))

(declare-fun lt!1206243 () BalanceConc!22324)

(declare-fun list!13689 (BalanceConc!22324) List!37529)

(assert (=> b!3528168 (= lt!1206260 (list!13689 lt!1206243))))

(declare-fun lt!1206254 () BalanceConc!22326)

(declare-fun printTailRec!1574 (LexerInterface!5079 BalanceConc!22326 Int BalanceConc!22324) BalanceConc!22324)

(assert (=> b!3528168 (= lt!1206243 (printTailRec!1574 thiss!18206 lt!1206254 0 (BalanceConc!22325 Empty!11355)))))

(declare-fun print!2144 (LexerInterface!5079 BalanceConc!22326) BalanceConc!22324)

(assert (=> b!3528168 (= lt!1206243 (print!2144 thiss!18206 lt!1206254))))

(declare-fun singletonSeq!2586 (Token!10346) BalanceConc!22326)

(assert (=> b!3528168 (= lt!1206254 (singletonSeq!2586 (h!42827 tokens!494)))))

(declare-fun b!3528169 () Bool)

(assert (=> b!3528169 (= e!2184132 e!2184134)))

(declare-fun res!1423504 () Bool)

(assert (=> b!3528169 (=> res!1423504 e!2184134)))

(assert (=> b!3528169 (= res!1423504 (or (not (= lt!1206262 lt!1206246)) (not (= lt!1206260 lt!1206246))))))

(declare-fun charsOf!3504 (Token!10346) BalanceConc!22324)

(assert (=> b!3528169 (= lt!1206246 (list!13689 (charsOf!3504 (h!42827 tokens!494))))))

(declare-fun e!2184111 () Bool)

(assert (=> b!3528170 (= e!2184111 (and tp!1088107 tp!1088113))))

(declare-fun b!3528171 () Bool)

(declare-fun e!2184139 () Bool)

(declare-fun e!2184115 () Bool)

(assert (=> b!3528171 (= e!2184139 e!2184115)))

(declare-fun res!1423500 () Bool)

(assert (=> b!3528171 (=> (not res!1423500) (not e!2184115))))

(declare-fun lt!1206252 () Rule!10780)

(declare-fun lt!1206247 () List!37529)

(declare-fun matchR!4833 (Regex!10249 List!37529) Bool)

(assert (=> b!3528171 (= res!1423500 (matchR!4833 (regex!5490 lt!1206252) lt!1206247))))

(declare-datatypes ((Option!7643 0))(
  ( (None!7642) (Some!7642 (v!37156 Rule!10780)) )
))
(declare-fun lt!1206267 () Option!7643)

(declare-fun get!12016 (Option!7643) Rule!10780)

(assert (=> b!3528171 (= lt!1206252 (get!12016 lt!1206267))))

(declare-fun b!3528172 () Bool)

(assert (=> b!3528172 (= e!2184115 (= (rule!8150 separatorToken!241) lt!1206252))))

(declare-fun b!3528173 () Bool)

(declare-fun res!1423520 () Bool)

(declare-fun e!2184116 () Bool)

(assert (=> b!3528173 (=> (not res!1423520) (not e!2184116))))

(declare-fun lt!1206268 () tuple2!37260)

(declare-fun apply!8938 (BalanceConc!22326 Int) Token!10346)

(assert (=> b!3528173 (= res!1423520 (= (apply!8938 (_1!21764 lt!1206268) 0) separatorToken!241))))

(declare-fun b!3528174 () Bool)

(declare-fun isEmpty!21884 (BalanceConc!22324) Bool)

(assert (=> b!3528174 (= e!2184116 (isEmpty!21884 (_2!21764 lt!1206268)))))

(declare-fun b!3528175 () Bool)

(declare-datatypes ((Unit!53110 0))(
  ( (Unit!53111) )
))
(declare-fun e!2184110 () Unit!53110)

(declare-fun Unit!53112 () Unit!53110)

(assert (=> b!3528175 (= e!2184110 Unit!53112)))

(declare-fun lt!1206284 () Unit!53110)

(declare-fun lt!1206278 () C!20684)

(declare-fun lt!1206258 () List!37529)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!548 (Regex!10249 List!37529 C!20684) Unit!53110)

(assert (=> b!3528175 (= lt!1206284 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!548 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258 lt!1206278))))

(declare-fun res!1423510 () Bool)

(assert (=> b!3528175 (= res!1423510 (not (matchR!4833 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258)))))

(declare-fun e!2184135 () Bool)

(assert (=> b!3528175 (=> (not res!1423510) (not e!2184135))))

(assert (=> b!3528175 e!2184135))

(declare-fun b!3528176 () Bool)

(declare-fun res!1423496 () Bool)

(assert (=> b!3528176 (=> (not res!1423496) (not e!2184106))))

(assert (=> b!3528176 (= res!1423496 (isSeparator!5490 (rule!8150 separatorToken!241)))))

(declare-fun b!3528177 () Bool)

(declare-fun Unit!53113 () Unit!53110)

(assert (=> b!3528177 (= e!2184110 Unit!53113)))

(declare-fun b!3528178 () Bool)

(declare-fun e!2184118 () Bool)

(declare-fun e!2184125 () Bool)

(assert (=> b!3528178 (= e!2184118 e!2184125)))

(declare-fun res!1423519 () Bool)

(assert (=> b!3528178 (=> res!1423519 e!2184125)))

(declare-fun lt!1206242 () List!37529)

(declare-fun ++!9277 (List!37529 List!37529) List!37529)

(declare-fun printWithSeparatorTokenList!366 (LexerInterface!5079 List!37531 Token!10346) List!37529)

(assert (=> b!3528178 (= res!1423519 (not (= lt!1206242 (++!9277 (++!9277 lt!1206258 lt!1206247) (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241)))))))

(assert (=> b!3528178 (= lt!1206258 (list!13689 (charsOf!3504 (h!42827 (t!282696 tokens!494)))))))

(declare-fun lt!1206239 () List!37529)

(assert (=> b!3528178 (= lt!1206239 (++!9277 lt!1206247 lt!1206242))))

(assert (=> b!3528178 (= lt!1206247 (list!13689 (charsOf!3504 separatorToken!241)))))

(assert (=> b!3528178 (= lt!1206242 (printWithSeparatorTokenList!366 thiss!18206 (t!282696 tokens!494) separatorToken!241))))

(declare-fun lt!1206240 () List!37529)

(assert (=> b!3528178 (= lt!1206240 (printWithSeparatorTokenList!366 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3528179 () Bool)

(declare-fun e!2184131 () Bool)

(declare-fun lt!1206277 () tuple2!37260)

(assert (=> b!3528179 (= e!2184131 (not (isEmpty!21884 (_2!21764 lt!1206277))))))

(declare-fun b!3528180 () Bool)

(declare-fun e!2184121 () Bool)

(declare-fun lt!1206264 () Rule!10780)

(assert (=> b!3528180 (= e!2184121 (= (rule!8150 (h!42827 (t!282696 tokens!494))) lt!1206264))))

(declare-fun b!3528181 () Bool)

(declare-fun res!1423495 () Bool)

(assert (=> b!3528181 (=> (not res!1423495) (not e!2184106))))

(declare-fun isEmpty!21885 (List!37530) Bool)

(assert (=> b!3528181 (= res!1423495 (not (isEmpty!21885 rules!2135)))))

(declare-fun b!3528182 () Bool)

(declare-fun res!1423508 () Bool)

(assert (=> b!3528182 (=> (not res!1423508) (not e!2184106))))

(declare-fun rulesInvariant!4476 (LexerInterface!5079 List!37530) Bool)

(assert (=> b!3528182 (= res!1423508 (rulesInvariant!4476 thiss!18206 rules!2135))))

(declare-fun b!3528183 () Bool)

(declare-fun e!2184122 () Bool)

(assert (=> b!3528183 (= e!2184125 e!2184122)))

(declare-fun res!1423512 () Bool)

(assert (=> b!3528183 (=> res!1423512 e!2184122)))

(declare-fun lt!1206281 () List!37529)

(assert (=> b!3528183 (= res!1423512 (not (= lt!1206240 lt!1206281)))))

(assert (=> b!3528183 (= lt!1206281 (++!9277 (++!9277 lt!1206246 lt!1206247) lt!1206242))))

(declare-fun b!3528184 () Bool)

(declare-fun e!2184136 () Bool)

(assert (=> b!3528184 (= e!2184122 e!2184136)))

(declare-fun res!1423521 () Bool)

(assert (=> b!3528184 (=> res!1423521 e!2184136)))

(declare-fun lt!1206251 () List!37529)

(assert (=> b!3528184 (= res!1423521 (not (= lt!1206240 lt!1206251)))))

(assert (=> b!3528184 (= lt!1206281 lt!1206251)))

(assert (=> b!3528184 (= lt!1206251 (++!9277 lt!1206246 lt!1206239))))

(declare-fun lt!1206280 () Unit!53110)

(declare-fun lemmaConcatAssociativity!2024 (List!37529 List!37529 List!37529) Unit!53110)

(assert (=> b!3528184 (= lt!1206280 (lemmaConcatAssociativity!2024 lt!1206246 lt!1206247 lt!1206242))))

(declare-fun b!3528185 () Bool)

(assert (=> b!3528185 (= e!2184135 false)))

(declare-fun res!1423503 () Bool)

(assert (=> start!327906 (=> (not res!1423503) (not e!2184106))))

(assert (=> start!327906 (= res!1423503 ((_ is Lexer!5077) thiss!18206))))

(assert (=> start!327906 e!2184106))

(assert (=> start!327906 true))

(declare-fun e!2184129 () Bool)

(assert (=> start!327906 e!2184129))

(declare-fun e!2184112 () Bool)

(assert (=> start!327906 e!2184112))

(declare-fun inv!50645 (Token!10346) Bool)

(assert (=> start!327906 (and (inv!50645 separatorToken!241) e!2184114)))

(declare-fun b!3528166 () Bool)

(declare-fun e!2184105 () Bool)

(declare-fun e!2184120 () Bool)

(assert (=> b!3528166 (= e!2184105 e!2184120)))

(declare-fun res!1423506 () Bool)

(assert (=> b!3528166 (=> (not res!1423506) (not e!2184120))))

(declare-fun lt!1206250 () Rule!10780)

(assert (=> b!3528166 (= res!1423506 (matchR!4833 (regex!5490 lt!1206250) lt!1206246))))

(declare-fun lt!1206276 () Option!7643)

(assert (=> b!3528166 (= lt!1206250 (get!12016 lt!1206276))))

(declare-fun b!3528186 () Bool)

(declare-fun e!2184138 () Unit!53110)

(declare-fun Unit!53114 () Unit!53110)

(assert (=> b!3528186 (= e!2184138 Unit!53114)))

(declare-fun b!3528187 () Bool)

(declare-fun res!1423501 () Bool)

(assert (=> b!3528187 (=> (not res!1423501) (not e!2184106))))

(declare-fun sepAndNonSepRulesDisjointChars!1684 (List!37530 List!37530) Bool)

(assert (=> b!3528187 (= res!1423501 (sepAndNonSepRulesDisjointChars!1684 rules!2135 rules!2135))))

(declare-fun b!3528188 () Bool)

(declare-fun res!1423498 () Bool)

(assert (=> b!3528188 (=> res!1423498 e!2184131)))

(assert (=> b!3528188 (= res!1423498 (not (= (apply!8938 (_1!21764 lt!1206277) 0) (h!42827 (t!282696 tokens!494)))))))

(declare-fun tp!1088102 () Bool)

(declare-fun b!3528189 () Bool)

(declare-fun e!2184133 () Bool)

(assert (=> b!3528189 (= e!2184112 (and (inv!50645 (h!42827 tokens!494)) e!2184133 tp!1088102))))

(declare-fun e!2184107 () Bool)

(assert (=> b!3528190 (= e!2184107 (and tp!1088106 tp!1088112))))

(declare-fun b!3528191 () Bool)

(declare-fun Unit!53115 () Unit!53110)

(assert (=> b!3528191 (= e!2184138 Unit!53115)))

(declare-fun lt!1206270 () C!20684)

(declare-fun lt!1206253 () Unit!53110)

(assert (=> b!3528191 (= lt!1206253 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!548 (regex!5490 (rule!8150 separatorToken!241)) lt!1206247 lt!1206270))))

(declare-fun res!1423515 () Bool)

(assert (=> b!3528191 (= res!1423515 (not (matchR!4833 (regex!5490 (rule!8150 separatorToken!241)) lt!1206247)))))

(declare-fun e!2184126 () Bool)

(assert (=> b!3528191 (=> (not res!1423515) (not e!2184126))))

(assert (=> b!3528191 e!2184126))

(declare-fun b!3528192 () Bool)

(declare-fun tp!1088111 () Bool)

(declare-fun e!2184113 () Bool)

(assert (=> b!3528192 (= e!2184113 (and tp!1088111 (inv!50641 (tag!6134 (h!42826 rules!2135))) (inv!50644 (transformation!5490 (h!42826 rules!2135))) e!2184111))))

(declare-fun b!3528193 () Bool)

(declare-fun tp!1088109 () Bool)

(assert (=> b!3528193 (= e!2184129 (and e!2184113 tp!1088109))))

(declare-fun b!3528194 () Bool)

(assert (=> b!3528194 (= e!2184126 false)))

(declare-fun b!3528195 () Bool)

(assert (=> b!3528195 (= e!2184119 e!2184118)))

(declare-fun res!1423523 () Bool)

(assert (=> b!3528195 (=> res!1423523 e!2184118)))

(assert (=> b!3528195 (= res!1423523 (or (isSeparator!5490 (rule!8150 (h!42827 tokens!494))) (isSeparator!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun lt!1206257 () Unit!53110)

(declare-fun forallContained!1437 (List!37531 Int Token!10346) Unit!53110)

(assert (=> b!3528195 (= lt!1206257 (forallContained!1437 tokens!494 lambda!122958 (h!42827 (t!282696 tokens!494))))))

(declare-fun lt!1206245 () Unit!53110)

(assert (=> b!3528195 (= lt!1206245 (forallContained!1437 tokens!494 lambda!122958 (h!42827 tokens!494)))))

(declare-fun tp!1088104 () Bool)

(declare-fun b!3528196 () Bool)

(declare-fun e!2184123 () Bool)

(assert (=> b!3528196 (= e!2184123 (and tp!1088104 (inv!50641 (tag!6134 (rule!8150 (h!42827 tokens!494)))) (inv!50644 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) e!2184107))))

(declare-fun b!3528197 () Bool)

(declare-fun res!1423513 () Bool)

(assert (=> b!3528197 (=> (not res!1423513) (not e!2184106))))

(declare-fun rulesProduceEachTokenIndividually!1530 (LexerInterface!5079 List!37530 BalanceConc!22326) Bool)

(declare-fun seqFromList!4034 (List!37531) BalanceConc!22326)

(assert (=> b!3528197 (= res!1423513 (rulesProduceEachTokenIndividually!1530 thiss!18206 rules!2135 (seqFromList!4034 tokens!494)))))

(declare-fun res!1423509 () Bool)

(assert (=> b!3528198 (=> (not res!1423509) (not e!2184106))))

(declare-fun forall!8053 (List!37531 Int) Bool)

(assert (=> b!3528198 (= res!1423509 (forall!8053 tokens!494 lambda!122958))))

(declare-fun b!3528199 () Bool)

(declare-fun e!2184128 () Bool)

(assert (=> b!3528199 (= e!2184128 e!2184121)))

(declare-fun res!1423522 () Bool)

(assert (=> b!3528199 (=> (not res!1423522) (not e!2184121))))

(assert (=> b!3528199 (= res!1423522 (matchR!4833 (regex!5490 lt!1206264) lt!1206258))))

(declare-fun lt!1206261 () Option!7643)

(assert (=> b!3528199 (= lt!1206264 (get!12016 lt!1206261))))

(declare-fun b!3528200 () Bool)

(assert (=> b!3528200 (= e!2184120 (= (rule!8150 (h!42827 tokens!494)) lt!1206250))))

(declare-fun contains!7035 (List!37530 Rule!10780) Bool)

(assert (=> b!3528201 (= e!2184136 (contains!7035 rules!2135 (rule!8150 separatorToken!241)))))

(declare-fun lt!1206283 () List!37529)

(declare-fun contains!7036 (List!37529 C!20684) Bool)

(assert (=> b!3528201 (not (contains!7036 lt!1206283 lt!1206278))))

(declare-fun lt!1206279 () Unit!53110)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!172 (LexerInterface!5079 List!37530 List!37530 Rule!10780 Rule!10780 C!20684) Unit!53110)

(assert (=> b!3528201 (= lt!1206279 (lemmaSepRuleNotContainsCharContainedInANonSepRule!172 thiss!18206 rules!2135 rules!2135 (rule!8150 (h!42827 (t!282696 tokens!494))) (rule!8150 separatorToken!241) lt!1206278))))

(declare-fun lt!1206256 () Unit!53110)

(assert (=> b!3528201 (= lt!1206256 e!2184110)))

(declare-fun c!608159 () Bool)

(declare-fun usedCharacters!724 (Regex!10249) List!37529)

(assert (=> b!3528201 (= c!608159 (not (contains!7036 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) lt!1206278)))))

(declare-fun head!7405 (List!37529) C!20684)

(assert (=> b!3528201 (= lt!1206278 (head!7405 lt!1206258))))

(declare-datatypes ((tuple2!37262 0))(
  ( (tuple2!37263 (_1!21765 Token!10346) (_2!21765 List!37529)) )
))
(declare-datatypes ((Option!7644 0))(
  ( (None!7643) (Some!7643 (v!37157 tuple2!37262)) )
))
(declare-fun maxPrefixOneRule!1786 (LexerInterface!5079 Rule!10780 List!37529) Option!7644)

(declare-fun apply!8939 (TokenValueInjection!10868 BalanceConc!22324) TokenValue!5720)

(declare-fun size!28474 (List!37529) Int)

(assert (=> b!3528201 (= (maxPrefixOneRule!1786 thiss!18206 (rule!8150 (h!42827 (t!282696 tokens!494))) lt!1206258) (Some!7643 (tuple2!37263 (Token!10347 (apply!8939 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (seqFromList!4033 lt!1206258)) (rule!8150 (h!42827 (t!282696 tokens!494))) (size!28474 lt!1206258) lt!1206258) Nil!37405)))))

(declare-fun lt!1206266 () Unit!53110)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!879 (LexerInterface!5079 List!37530 List!37529 List!37529 List!37529 Rule!10780) Unit!53110)

(assert (=> b!3528201 (= lt!1206266 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!879 thiss!18206 rules!2135 lt!1206258 lt!1206258 Nil!37405 (rule!8150 (h!42827 (t!282696 tokens!494)))))))

(assert (=> b!3528201 e!2184128))

(declare-fun res!1423518 () Bool)

(assert (=> b!3528201 (=> (not res!1423518) (not e!2184128))))

(declare-fun isDefined!5890 (Option!7643) Bool)

(assert (=> b!3528201 (= res!1423518 (isDefined!5890 lt!1206261))))

(declare-fun getRuleFromTag!1133 (LexerInterface!5079 List!37530 String!41934) Option!7643)

(assert (=> b!3528201 (= lt!1206261 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun lt!1206275 () Unit!53110)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 (LexerInterface!5079 List!37530 List!37529 Token!10346) Unit!53110)

(assert (=> b!3528201 (= lt!1206275 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 thiss!18206 rules!2135 lt!1206258 (h!42827 (t!282696 tokens!494))))))

(declare-fun lt!1206274 () Bool)

(assert (=> b!3528201 lt!1206274))

(declare-fun lt!1206244 () Unit!53110)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1068 (LexerInterface!5079 List!37530 List!37531 Token!10346) Unit!53110)

(assert (=> b!3528201 (= lt!1206244 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1068 thiss!18206 rules!2135 tokens!494 (h!42827 (t!282696 tokens!494))))))

(declare-fun maxPrefix!2619 (LexerInterface!5079 List!37530 List!37529) Option!7644)

(assert (=> b!3528201 (= (maxPrefix!2619 thiss!18206 rules!2135 lt!1206251) (Some!7643 (tuple2!37263 (h!42827 tokens!494) lt!1206239)))))

(declare-fun lt!1206265 () Unit!53110)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!246 (LexerInterface!5079 List!37530 Token!10346 Rule!10780 List!37529 Rule!10780) Unit!53110)

(assert (=> b!3528201 (= lt!1206265 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!246 thiss!18206 rules!2135 (h!42827 tokens!494) (rule!8150 (h!42827 tokens!494)) lt!1206239 (rule!8150 separatorToken!241)))))

(assert (=> b!3528201 (not (contains!7036 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494)))) lt!1206270))))

(declare-fun lt!1206255 () Unit!53110)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!290 (LexerInterface!5079 List!37530 List!37530 Rule!10780 Rule!10780 C!20684) Unit!53110)

(assert (=> b!3528201 (= lt!1206255 (lemmaNonSepRuleNotContainsCharContainedInASepRule!290 thiss!18206 rules!2135 rules!2135 (rule!8150 (h!42827 tokens!494)) (rule!8150 separatorToken!241) lt!1206270))))

(declare-fun lt!1206269 () Unit!53110)

(assert (=> b!3528201 (= lt!1206269 (forallContained!1437 tokens!494 lambda!122959 (h!42827 (t!282696 tokens!494))))))

(declare-fun lt!1206249 () Bool)

(assert (=> b!3528201 (= lt!1206274 (not lt!1206249))))

(declare-fun rulesProduceIndividualToken!2571 (LexerInterface!5079 List!37530 Token!10346) Bool)

(assert (=> b!3528201 (= lt!1206274 (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 (t!282696 tokens!494))))))

(assert (=> b!3528201 (= lt!1206249 e!2184131)))

(declare-fun res!1423514 () Bool)

(assert (=> b!3528201 (=> res!1423514 e!2184131)))

(declare-fun size!28475 (BalanceConc!22326) Int)

(assert (=> b!3528201 (= res!1423514 (not (= (size!28475 (_1!21764 lt!1206277)) 1)))))

(declare-fun lt!1206241 () BalanceConc!22324)

(assert (=> b!3528201 (= lt!1206277 (lex!2405 thiss!18206 rules!2135 lt!1206241))))

(declare-fun lt!1206273 () BalanceConc!22326)

(assert (=> b!3528201 (= lt!1206241 (printTailRec!1574 thiss!18206 lt!1206273 0 (BalanceConc!22325 Empty!11355)))))

(assert (=> b!3528201 (= lt!1206241 (print!2144 thiss!18206 lt!1206273))))

(assert (=> b!3528201 (= lt!1206273 (singletonSeq!2586 (h!42827 (t!282696 tokens!494))))))

(assert (=> b!3528201 e!2184116))

(declare-fun res!1423497 () Bool)

(assert (=> b!3528201 (=> (not res!1423497) (not e!2184116))))

(assert (=> b!3528201 (= res!1423497 (= (size!28475 (_1!21764 lt!1206268)) 1))))

(declare-fun lt!1206237 () BalanceConc!22324)

(assert (=> b!3528201 (= lt!1206268 (lex!2405 thiss!18206 rules!2135 lt!1206237))))

(declare-fun lt!1206271 () BalanceConc!22326)

(assert (=> b!3528201 (= lt!1206237 (printTailRec!1574 thiss!18206 lt!1206271 0 (BalanceConc!22325 Empty!11355)))))

(assert (=> b!3528201 (= lt!1206237 (print!2144 thiss!18206 lt!1206271))))

(assert (=> b!3528201 (= lt!1206271 (singletonSeq!2586 separatorToken!241))))

(declare-fun lt!1206248 () Unit!53110)

(assert (=> b!3528201 (= lt!1206248 e!2184138)))

(declare-fun c!608158 () Bool)

(assert (=> b!3528201 (= c!608158 (not (contains!7036 lt!1206283 lt!1206270)))))

(assert (=> b!3528201 (= lt!1206270 (head!7405 lt!1206247))))

(assert (=> b!3528201 (= lt!1206283 (usedCharacters!724 (regex!5490 (rule!8150 separatorToken!241))))))

(assert (=> b!3528201 e!2184139))

(declare-fun res!1423516 () Bool)

(assert (=> b!3528201 (=> (not res!1423516) (not e!2184139))))

(assert (=> b!3528201 (= res!1423516 (isDefined!5890 lt!1206267))))

(assert (=> b!3528201 (= lt!1206267 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 separatorToken!241))))))

(declare-fun lt!1206282 () Unit!53110)

(assert (=> b!3528201 (= lt!1206282 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 thiss!18206 rules!2135 lt!1206247 separatorToken!241))))

(assert (=> b!3528201 (= (maxPrefixOneRule!1786 thiss!18206 (rule!8150 (h!42827 tokens!494)) lt!1206246) (Some!7643 (tuple2!37263 (Token!10347 (apply!8939 (transformation!5490 (rule!8150 (h!42827 tokens!494))) lt!1206259) (rule!8150 (h!42827 tokens!494)) (size!28474 lt!1206246) lt!1206246) Nil!37405)))))

(declare-fun lt!1206272 () Unit!53110)

(assert (=> b!3528201 (= lt!1206272 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!879 thiss!18206 rules!2135 lt!1206246 lt!1206246 Nil!37405 (rule!8150 (h!42827 tokens!494))))))

(assert (=> b!3528201 e!2184105))

(declare-fun res!1423505 () Bool)

(assert (=> b!3528201 (=> (not res!1423505) (not e!2184105))))

(assert (=> b!3528201 (= res!1423505 (isDefined!5890 lt!1206276))))

(assert (=> b!3528201 (= lt!1206276 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 tokens!494)))))))

(declare-fun lt!1206263 () Unit!53110)

(assert (=> b!3528201 (= lt!1206263 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 thiss!18206 rules!2135 lt!1206246 (h!42827 tokens!494)))))

(declare-fun lt!1206238 () Unit!53110)

(assert (=> b!3528201 (= lt!1206238 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1068 thiss!18206 rules!2135 tokens!494 (h!42827 tokens!494)))))

(declare-fun b!3528202 () Bool)

(declare-fun res!1423507 () Bool)

(assert (=> b!3528202 (=> (not res!1423507) (not e!2184106))))

(assert (=> b!3528202 (= res!1423507 (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3528203 (= e!2184127 (and tp!1088103 tp!1088110))))

(declare-fun tp!1088114 () Bool)

(declare-fun b!3528204 () Bool)

(assert (=> b!3528204 (= e!2184133 (and (inv!21 (value!176925 (h!42827 tokens!494))) e!2184123 tp!1088114))))

(declare-fun b!3528205 () Bool)

(declare-fun res!1423499 () Bool)

(assert (=> b!3528205 (=> res!1423499 e!2184134)))

(assert (=> b!3528205 (= res!1423499 (not (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 tokens!494))))))

(assert (= (and start!327906 res!1423503) b!3528181))

(assert (= (and b!3528181 res!1423495) b!3528182))

(assert (= (and b!3528182 res!1423508) b!3528197))

(assert (= (and b!3528197 res!1423513) b!3528202))

(assert (= (and b!3528202 res!1423507) b!3528176))

(assert (= (and b!3528176 res!1423496) b!3528198))

(assert (= (and b!3528198 res!1423509) b!3528187))

(assert (= (and b!3528187 res!1423501) b!3528164))

(assert (= (and b!3528164 res!1423517) b!3528168))

(assert (= (and b!3528168 (not res!1423511)) b!3528169))

(assert (= (and b!3528169 (not res!1423504)) b!3528205))

(assert (= (and b!3528205 (not res!1423499)) b!3528163))

(assert (= (and b!3528163 (not res!1423502)) b!3528195))

(assert (= (and b!3528195 (not res!1423523)) b!3528178))

(assert (= (and b!3528178 (not res!1423519)) b!3528183))

(assert (= (and b!3528183 (not res!1423512)) b!3528184))

(assert (= (and b!3528184 (not res!1423521)) b!3528201))

(assert (= (and b!3528201 res!1423505) b!3528166))

(assert (= (and b!3528166 res!1423506) b!3528200))

(assert (= (and b!3528201 res!1423516) b!3528171))

(assert (= (and b!3528171 res!1423500) b!3528172))

(assert (= (and b!3528201 c!608158) b!3528191))

(assert (= (and b!3528201 (not c!608158)) b!3528186))

(assert (= (and b!3528191 res!1423515) b!3528194))

(assert (= (and b!3528201 res!1423497) b!3528173))

(assert (= (and b!3528173 res!1423520) b!3528174))

(assert (= (and b!3528201 (not res!1423514)) b!3528188))

(assert (= (and b!3528188 (not res!1423498)) b!3528179))

(assert (= (and b!3528201 res!1423518) b!3528199))

(assert (= (and b!3528199 res!1423522) b!3528180))

(assert (= (and b!3528201 c!608159) b!3528175))

(assert (= (and b!3528201 (not c!608159)) b!3528177))

(assert (= (and b!3528175 res!1423510) b!3528185))

(assert (= b!3528192 b!3528170))

(assert (= b!3528193 b!3528192))

(assert (= (and start!327906 ((_ is Cons!37406) rules!2135)) b!3528193))

(assert (= b!3528196 b!3528190))

(assert (= b!3528204 b!3528196))

(assert (= b!3528189 b!3528204))

(assert (= (and start!327906 ((_ is Cons!37407) tokens!494)) b!3528189))

(assert (= b!3528165 b!3528203))

(assert (= b!3528167 b!3528165))

(assert (= start!327906 b!3528167))

(declare-fun m!3982897 () Bool)

(assert (=> b!3528179 m!3982897))

(declare-fun m!3982899 () Bool)

(assert (=> b!3528178 m!3982899))

(declare-fun m!3982901 () Bool)

(assert (=> b!3528178 m!3982901))

(declare-fun m!3982903 () Bool)

(assert (=> b!3528178 m!3982903))

(declare-fun m!3982905 () Bool)

(assert (=> b!3528178 m!3982905))

(declare-fun m!3982907 () Bool)

(assert (=> b!3528178 m!3982907))

(declare-fun m!3982909 () Bool)

(assert (=> b!3528178 m!3982909))

(declare-fun m!3982911 () Bool)

(assert (=> b!3528178 m!3982911))

(declare-fun m!3982913 () Bool)

(assert (=> b!3528178 m!3982913))

(declare-fun m!3982915 () Bool)

(assert (=> b!3528178 m!3982915))

(assert (=> b!3528178 m!3982911))

(assert (=> b!3528178 m!3982899))

(declare-fun m!3982917 () Bool)

(assert (=> b!3528178 m!3982917))

(assert (=> b!3528178 m!3982905))

(assert (=> b!3528178 m!3982909))

(declare-fun m!3982919 () Bool)

(assert (=> b!3528202 m!3982919))

(declare-fun m!3982921 () Bool)

(assert (=> b!3528187 m!3982921))

(declare-fun m!3982923 () Bool)

(assert (=> b!3528163 m!3982923))

(declare-fun m!3982925 () Bool)

(assert (=> b!3528163 m!3982925))

(declare-fun m!3982927 () Bool)

(assert (=> b!3528163 m!3982927))

(declare-fun m!3982929 () Bool)

(assert (=> b!3528196 m!3982929))

(declare-fun m!3982931 () Bool)

(assert (=> b!3528196 m!3982931))

(declare-fun m!3982933 () Bool)

(assert (=> b!3528183 m!3982933))

(assert (=> b!3528183 m!3982933))

(declare-fun m!3982935 () Bool)

(assert (=> b!3528183 m!3982935))

(declare-fun m!3982937 () Bool)

(assert (=> b!3528174 m!3982937))

(declare-fun m!3982939 () Bool)

(assert (=> b!3528182 m!3982939))

(declare-fun m!3982941 () Bool)

(assert (=> b!3528201 m!3982941))

(declare-fun m!3982943 () Bool)

(assert (=> b!3528201 m!3982943))

(declare-fun m!3982945 () Bool)

(assert (=> b!3528201 m!3982945))

(declare-fun m!3982947 () Bool)

(assert (=> b!3528201 m!3982947))

(declare-fun m!3982949 () Bool)

(assert (=> b!3528201 m!3982949))

(declare-fun m!3982951 () Bool)

(assert (=> b!3528201 m!3982951))

(declare-fun m!3982953 () Bool)

(assert (=> b!3528201 m!3982953))

(declare-fun m!3982955 () Bool)

(assert (=> b!3528201 m!3982955))

(declare-fun m!3982957 () Bool)

(assert (=> b!3528201 m!3982957))

(declare-fun m!3982959 () Bool)

(assert (=> b!3528201 m!3982959))

(declare-fun m!3982961 () Bool)

(assert (=> b!3528201 m!3982961))

(declare-fun m!3982963 () Bool)

(assert (=> b!3528201 m!3982963))

(declare-fun m!3982965 () Bool)

(assert (=> b!3528201 m!3982965))

(declare-fun m!3982967 () Bool)

(assert (=> b!3528201 m!3982967))

(declare-fun m!3982969 () Bool)

(assert (=> b!3528201 m!3982969))

(declare-fun m!3982971 () Bool)

(assert (=> b!3528201 m!3982971))

(declare-fun m!3982973 () Bool)

(assert (=> b!3528201 m!3982973))

(declare-fun m!3982975 () Bool)

(assert (=> b!3528201 m!3982975))

(declare-fun m!3982977 () Bool)

(assert (=> b!3528201 m!3982977))

(declare-fun m!3982979 () Bool)

(assert (=> b!3528201 m!3982979))

(declare-fun m!3982981 () Bool)

(assert (=> b!3528201 m!3982981))

(declare-fun m!3982983 () Bool)

(assert (=> b!3528201 m!3982983))

(assert (=> b!3528201 m!3982943))

(declare-fun m!3982985 () Bool)

(assert (=> b!3528201 m!3982985))

(declare-fun m!3982987 () Bool)

(assert (=> b!3528201 m!3982987))

(declare-fun m!3982989 () Bool)

(assert (=> b!3528201 m!3982989))

(declare-fun m!3982991 () Bool)

(assert (=> b!3528201 m!3982991))

(declare-fun m!3982993 () Bool)

(assert (=> b!3528201 m!3982993))

(declare-fun m!3982995 () Bool)

(assert (=> b!3528201 m!3982995))

(declare-fun m!3982997 () Bool)

(assert (=> b!3528201 m!3982997))

(declare-fun m!3982999 () Bool)

(assert (=> b!3528201 m!3982999))

(declare-fun m!3983001 () Bool)

(assert (=> b!3528201 m!3983001))

(declare-fun m!3983003 () Bool)

(assert (=> b!3528201 m!3983003))

(declare-fun m!3983005 () Bool)

(assert (=> b!3528201 m!3983005))

(declare-fun m!3983007 () Bool)

(assert (=> b!3528201 m!3983007))

(declare-fun m!3983009 () Bool)

(assert (=> b!3528201 m!3983009))

(declare-fun m!3983011 () Bool)

(assert (=> b!3528201 m!3983011))

(declare-fun m!3983013 () Bool)

(assert (=> b!3528201 m!3983013))

(declare-fun m!3983015 () Bool)

(assert (=> b!3528201 m!3983015))

(declare-fun m!3983017 () Bool)

(assert (=> b!3528201 m!3983017))

(declare-fun m!3983019 () Bool)

(assert (=> b!3528201 m!3983019))

(declare-fun m!3983021 () Bool)

(assert (=> b!3528201 m!3983021))

(declare-fun m!3983023 () Bool)

(assert (=> b!3528201 m!3983023))

(assert (=> b!3528201 m!3982981))

(declare-fun m!3983025 () Bool)

(assert (=> b!3528201 m!3983025))

(assert (=> b!3528201 m!3983013))

(declare-fun m!3983027 () Bool)

(assert (=> b!3528201 m!3983027))

(declare-fun m!3983029 () Bool)

(assert (=> b!3528201 m!3983029))

(declare-fun m!3983031 () Bool)

(assert (=> b!3528201 m!3983031))

(declare-fun m!3983033 () Bool)

(assert (=> b!3528181 m!3983033))

(declare-fun m!3983035 () Bool)

(assert (=> b!3528189 m!3983035))

(declare-fun m!3983037 () Bool)

(assert (=> b!3528192 m!3983037))

(declare-fun m!3983039 () Bool)

(assert (=> b!3528192 m!3983039))

(declare-fun m!3983041 () Bool)

(assert (=> b!3528171 m!3983041))

(declare-fun m!3983043 () Bool)

(assert (=> b!3528171 m!3983043))

(declare-fun m!3983045 () Bool)

(assert (=> b!3528166 m!3983045))

(declare-fun m!3983047 () Bool)

(assert (=> b!3528166 m!3983047))

(declare-fun m!3983049 () Bool)

(assert (=> b!3528165 m!3983049))

(declare-fun m!3983051 () Bool)

(assert (=> b!3528165 m!3983051))

(declare-fun m!3983053 () Bool)

(assert (=> b!3528184 m!3983053))

(declare-fun m!3983055 () Bool)

(assert (=> b!3528184 m!3983055))

(declare-fun m!3983057 () Bool)

(assert (=> b!3528169 m!3983057))

(assert (=> b!3528169 m!3983057))

(declare-fun m!3983059 () Bool)

(assert (=> b!3528169 m!3983059))

(declare-fun m!3983061 () Bool)

(assert (=> b!3528167 m!3983061))

(declare-fun m!3983063 () Bool)

(assert (=> b!3528188 m!3983063))

(declare-fun m!3983065 () Bool)

(assert (=> b!3528204 m!3983065))

(declare-fun m!3983067 () Bool)

(assert (=> b!3528195 m!3983067))

(declare-fun m!3983069 () Bool)

(assert (=> b!3528195 m!3983069))

(declare-fun m!3983071 () Bool)

(assert (=> b!3528197 m!3983071))

(assert (=> b!3528197 m!3983071))

(declare-fun m!3983073 () Bool)

(assert (=> b!3528197 m!3983073))

(declare-fun m!3983075 () Bool)

(assert (=> b!3528173 m!3983075))

(declare-fun m!3983077 () Bool)

(assert (=> b!3528175 m!3983077))

(declare-fun m!3983079 () Bool)

(assert (=> b!3528175 m!3983079))

(declare-fun m!3983081 () Bool)

(assert (=> b!3528198 m!3983081))

(declare-fun m!3983083 () Bool)

(assert (=> b!3528191 m!3983083))

(declare-fun m!3983085 () Bool)

(assert (=> b!3528191 m!3983085))

(declare-fun m!3983087 () Bool)

(assert (=> start!327906 m!3983087))

(declare-fun m!3983089 () Bool)

(assert (=> b!3528205 m!3983089))

(declare-fun m!3983091 () Bool)

(assert (=> b!3528199 m!3983091))

(declare-fun m!3983093 () Bool)

(assert (=> b!3528199 m!3983093))

(declare-fun m!3983095 () Bool)

(assert (=> b!3528168 m!3983095))

(declare-fun m!3983097 () Bool)

(assert (=> b!3528168 m!3983097))

(declare-fun m!3983099 () Bool)

(assert (=> b!3528168 m!3983099))

(declare-fun m!3983101 () Bool)

(assert (=> b!3528168 m!3983101))

(declare-fun m!3983103 () Bool)

(assert (=> b!3528168 m!3983103))

(check-sat (not b!3528189) (not b!3528214) (not b!3528201) (not b!3528171) (not b!3528179) (not b!3528204) (not b!3528199) (not b!3528167) b_and!251593 (not b_next!91667) b_and!251597 (not b!3528196) (not b!3528188) (not b!3528187) (not b!3528195) (not b!3528174) b_and!251601 (not b!3528205) (not b!3528198) (not b_next!91673) (not b!3528192) (not b!3528197) (not b!3528163) (not b!3528178) (not start!327906) b_and!251599 (not b_next!91665) (not b!3528181) (not b!3528184) (not b!3528175) (not b!3528165) b_and!251595 (not b!3528173) (not b!3528202) (not b!3528166) (not b!3528169) (not b_next!91671) (not b!3528168) (not b_next!91669) (not b!3528191) (not b_next!91675) (not b!3528182) (not b!3528193) b_and!251591 (not b!3528183))
(check-sat b_and!251601 (not b_next!91673) b_and!251593 (not b_next!91667) b_and!251595 b_and!251597 (not b_next!91671) (not b_next!91669) (not b_next!91675) b_and!251591 b_and!251599 (not b_next!91665))
(get-model)

(declare-fun bs!565784 () Bool)

(declare-fun d!1029754 () Bool)

(assert (= bs!565784 (and d!1029754 b!3528198)))

(declare-fun lambda!122964 () Int)

(assert (=> bs!565784 (not (= lambda!122964 lambda!122958))))

(declare-fun bs!565785 () Bool)

(assert (= bs!565785 (and d!1029754 b!3528201)))

(assert (=> bs!565785 (= lambda!122964 lambda!122959)))

(declare-fun b!3528299 () Bool)

(declare-fun e!2184199 () Bool)

(assert (=> b!3528299 (= e!2184199 true)))

(declare-fun b!3528298 () Bool)

(declare-fun e!2184198 () Bool)

(assert (=> b!3528298 (= e!2184198 e!2184199)))

(declare-fun b!3528297 () Bool)

(declare-fun e!2184197 () Bool)

(assert (=> b!3528297 (= e!2184197 e!2184198)))

(assert (=> d!1029754 e!2184197))

(assert (= b!3528298 b!3528299))

(assert (= b!3528297 b!3528298))

(assert (= (and d!1029754 ((_ is Cons!37406) rules!2135)) b!3528297))

(assert (=> b!3528299 (< (dynLambda!15968 order!20177 (toValue!7746 (transformation!5490 (h!42826 rules!2135)))) (dynLambda!15969 order!20179 lambda!122964))))

(assert (=> b!3528299 (< (dynLambda!15970 order!20181 (toChars!7605 (transformation!5490 (h!42826 rules!2135)))) (dynLambda!15969 order!20179 lambda!122964))))

(assert (=> d!1029754 true))

(declare-fun e!2184196 () Bool)

(assert (=> d!1029754 e!2184196))

(declare-fun res!1423572 () Bool)

(assert (=> d!1029754 (=> (not res!1423572) (not e!2184196))))

(declare-fun lt!1206308 () Bool)

(declare-fun list!13691 (BalanceConc!22326) List!37531)

(assert (=> d!1029754 (= res!1423572 (= lt!1206308 (forall!8053 (list!13691 (seqFromList!4034 tokens!494)) lambda!122964)))))

(declare-fun forall!8054 (BalanceConc!22326 Int) Bool)

(assert (=> d!1029754 (= lt!1206308 (forall!8054 (seqFromList!4034 tokens!494) lambda!122964))))

(assert (=> d!1029754 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029754 (= (rulesProduceEachTokenIndividually!1530 thiss!18206 rules!2135 (seqFromList!4034 tokens!494)) lt!1206308)))

(declare-fun b!3528296 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1890 (LexerInterface!5079 List!37530 List!37531) Bool)

(assert (=> b!3528296 (= e!2184196 (= lt!1206308 (rulesProduceEachTokenIndividuallyList!1890 thiss!18206 rules!2135 (list!13691 (seqFromList!4034 tokens!494)))))))

(assert (= (and d!1029754 res!1423572) b!3528296))

(assert (=> d!1029754 m!3983071))

(declare-fun m!3983235 () Bool)

(assert (=> d!1029754 m!3983235))

(assert (=> d!1029754 m!3983235))

(declare-fun m!3983237 () Bool)

(assert (=> d!1029754 m!3983237))

(assert (=> d!1029754 m!3983071))

(declare-fun m!3983239 () Bool)

(assert (=> d!1029754 m!3983239))

(assert (=> d!1029754 m!3983033))

(assert (=> b!3528296 m!3983071))

(assert (=> b!3528296 m!3983235))

(assert (=> b!3528296 m!3983235))

(declare-fun m!3983241 () Bool)

(assert (=> b!3528296 m!3983241))

(assert (=> b!3528197 d!1029754))

(declare-fun d!1029794 () Bool)

(declare-fun fromListB!1852 (List!37531) BalanceConc!22326)

(assert (=> d!1029794 (= (seqFromList!4034 tokens!494) (fromListB!1852 tokens!494))))

(declare-fun bs!565786 () Bool)

(assert (= bs!565786 d!1029794))

(declare-fun m!3983243 () Bool)

(assert (=> bs!565786 m!3983243))

(assert (=> b!3528197 d!1029794))

(declare-fun b!3528328 () Bool)

(declare-fun e!2184216 () Bool)

(declare-fun e!2184219 () Bool)

(assert (=> b!3528328 (= e!2184216 e!2184219)))

(declare-fun res!1423591 () Bool)

(assert (=> b!3528328 (=> (not res!1423591) (not e!2184219))))

(declare-fun lt!1206311 () Bool)

(assert (=> b!3528328 (= res!1423591 (not lt!1206311))))

(declare-fun b!3528329 () Bool)

(declare-fun res!1423594 () Bool)

(declare-fun e!2184217 () Bool)

(assert (=> b!3528329 (=> (not res!1423594) (not e!2184217))))

(declare-fun call!254799 () Bool)

(assert (=> b!3528329 (= res!1423594 (not call!254799))))

(declare-fun b!3528330 () Bool)

(declare-fun e!2184215 () Bool)

(assert (=> b!3528330 (= e!2184215 (not lt!1206311))))

(declare-fun b!3528331 () Bool)

(declare-fun e!2184220 () Bool)

(assert (=> b!3528331 (= e!2184219 e!2184220)))

(declare-fun res!1423595 () Bool)

(assert (=> b!3528331 (=> res!1423595 e!2184220)))

(assert (=> b!3528331 (= res!1423595 call!254799)))

(declare-fun b!3528332 () Bool)

(declare-fun res!1423589 () Bool)

(assert (=> b!3528332 (=> (not res!1423589) (not e!2184217))))

(declare-fun isEmpty!21886 (List!37529) Bool)

(declare-fun tail!5502 (List!37529) List!37529)

(assert (=> b!3528332 (= res!1423589 (isEmpty!21886 (tail!5502 lt!1206258)))))

(declare-fun b!3528333 () Bool)

(assert (=> b!3528333 (= e!2184217 (= (head!7405 lt!1206258) (c!608160 (regex!5490 lt!1206264))))))

(declare-fun bm!254794 () Bool)

(assert (=> bm!254794 (= call!254799 (isEmpty!21886 lt!1206258))))

(declare-fun b!3528334 () Bool)

(declare-fun e!2184214 () Bool)

(declare-fun derivativeStep!3076 (Regex!10249 C!20684) Regex!10249)

(assert (=> b!3528334 (= e!2184214 (matchR!4833 (derivativeStep!3076 (regex!5490 lt!1206264) (head!7405 lt!1206258)) (tail!5502 lt!1206258)))))

(declare-fun b!3528335 () Bool)

(assert (=> b!3528335 (= e!2184220 (not (= (head!7405 lt!1206258) (c!608160 (regex!5490 lt!1206264)))))))

(declare-fun b!3528336 () Bool)

(declare-fun res!1423596 () Bool)

(assert (=> b!3528336 (=> res!1423596 e!2184220)))

(assert (=> b!3528336 (= res!1423596 (not (isEmpty!21886 (tail!5502 lt!1206258))))))

(declare-fun b!3528337 () Bool)

(declare-fun e!2184218 () Bool)

(assert (=> b!3528337 (= e!2184218 e!2184215)))

(declare-fun c!608187 () Bool)

(assert (=> b!3528337 (= c!608187 ((_ is EmptyLang!10249) (regex!5490 lt!1206264)))))

(declare-fun b!3528339 () Bool)

(assert (=> b!3528339 (= e!2184218 (= lt!1206311 call!254799))))

(declare-fun b!3528340 () Bool)

(declare-fun nullable!3523 (Regex!10249) Bool)

(assert (=> b!3528340 (= e!2184214 (nullable!3523 (regex!5490 lt!1206264)))))

(declare-fun b!3528341 () Bool)

(declare-fun res!1423593 () Bool)

(assert (=> b!3528341 (=> res!1423593 e!2184216)))

(assert (=> b!3528341 (= res!1423593 (not ((_ is ElementMatch!10249) (regex!5490 lt!1206264))))))

(assert (=> b!3528341 (= e!2184215 e!2184216)))

(declare-fun b!3528338 () Bool)

(declare-fun res!1423590 () Bool)

(assert (=> b!3528338 (=> res!1423590 e!2184216)))

(assert (=> b!3528338 (= res!1423590 e!2184217)))

(declare-fun res!1423592 () Bool)

(assert (=> b!3528338 (=> (not res!1423592) (not e!2184217))))

(assert (=> b!3528338 (= res!1423592 lt!1206311)))

(declare-fun d!1029796 () Bool)

(assert (=> d!1029796 e!2184218))

(declare-fun c!608189 () Bool)

(assert (=> d!1029796 (= c!608189 ((_ is EmptyExpr!10249) (regex!5490 lt!1206264)))))

(assert (=> d!1029796 (= lt!1206311 e!2184214)))

(declare-fun c!608188 () Bool)

(assert (=> d!1029796 (= c!608188 (isEmpty!21886 lt!1206258))))

(declare-fun validRegex!4679 (Regex!10249) Bool)

(assert (=> d!1029796 (validRegex!4679 (regex!5490 lt!1206264))))

(assert (=> d!1029796 (= (matchR!4833 (regex!5490 lt!1206264) lt!1206258) lt!1206311)))

(assert (= (and d!1029796 c!608188) b!3528340))

(assert (= (and d!1029796 (not c!608188)) b!3528334))

(assert (= (and d!1029796 c!608189) b!3528339))

(assert (= (and d!1029796 (not c!608189)) b!3528337))

(assert (= (and b!3528337 c!608187) b!3528330))

(assert (= (and b!3528337 (not c!608187)) b!3528341))

(assert (= (and b!3528341 (not res!1423593)) b!3528338))

(assert (= (and b!3528338 res!1423592) b!3528329))

(assert (= (and b!3528329 res!1423594) b!3528332))

(assert (= (and b!3528332 res!1423589) b!3528333))

(assert (= (and b!3528338 (not res!1423590)) b!3528328))

(assert (= (and b!3528328 res!1423591) b!3528331))

(assert (= (and b!3528331 (not res!1423595)) b!3528336))

(assert (= (and b!3528336 (not res!1423596)) b!3528335))

(assert (= (or b!3528339 b!3528329 b!3528331) bm!254794))

(assert (=> b!3528335 m!3983019))

(assert (=> b!3528333 m!3983019))

(declare-fun m!3983245 () Bool)

(assert (=> b!3528336 m!3983245))

(assert (=> b!3528336 m!3983245))

(declare-fun m!3983247 () Bool)

(assert (=> b!3528336 m!3983247))

(assert (=> b!3528332 m!3983245))

(assert (=> b!3528332 m!3983245))

(assert (=> b!3528332 m!3983247))

(declare-fun m!3983249 () Bool)

(assert (=> b!3528340 m!3983249))

(declare-fun m!3983251 () Bool)

(assert (=> bm!254794 m!3983251))

(assert (=> d!1029796 m!3983251))

(declare-fun m!3983253 () Bool)

(assert (=> d!1029796 m!3983253))

(assert (=> b!3528334 m!3983019))

(assert (=> b!3528334 m!3983019))

(declare-fun m!3983255 () Bool)

(assert (=> b!3528334 m!3983255))

(assert (=> b!3528334 m!3983245))

(assert (=> b!3528334 m!3983255))

(assert (=> b!3528334 m!3983245))

(declare-fun m!3983257 () Bool)

(assert (=> b!3528334 m!3983257))

(assert (=> b!3528199 d!1029796))

(declare-fun d!1029798 () Bool)

(assert (=> d!1029798 (= (get!12016 lt!1206261) (v!37156 lt!1206261))))

(assert (=> b!3528199 d!1029798))

(declare-fun d!1029800 () Bool)

(declare-fun res!1423601 () Bool)

(declare-fun e!2184225 () Bool)

(assert (=> d!1029800 (=> res!1423601 e!2184225)))

(assert (=> d!1029800 (= res!1423601 ((_ is Nil!37407) tokens!494))))

(assert (=> d!1029800 (= (forall!8053 tokens!494 lambda!122958) e!2184225)))

(declare-fun b!3528346 () Bool)

(declare-fun e!2184226 () Bool)

(assert (=> b!3528346 (= e!2184225 e!2184226)))

(declare-fun res!1423602 () Bool)

(assert (=> b!3528346 (=> (not res!1423602) (not e!2184226))))

(declare-fun dynLambda!15973 (Int Token!10346) Bool)

(assert (=> b!3528346 (= res!1423602 (dynLambda!15973 lambda!122958 (h!42827 tokens!494)))))

(declare-fun b!3528347 () Bool)

(assert (=> b!3528347 (= e!2184226 (forall!8053 (t!282696 tokens!494) lambda!122958))))

(assert (= (and d!1029800 (not res!1423601)) b!3528346))

(assert (= (and b!3528346 res!1423602) b!3528347))

(declare-fun b_lambda!103179 () Bool)

(assert (=> (not b_lambda!103179) (not b!3528346)))

(declare-fun m!3983259 () Bool)

(assert (=> b!3528346 m!3983259))

(declare-fun m!3983261 () Bool)

(assert (=> b!3528347 m!3983261))

(assert (=> b!3528198 d!1029800))

(declare-fun d!1029802 () Bool)

(assert (=> d!1029802 (dynLambda!15973 lambda!122958 (h!42827 (t!282696 tokens!494)))))

(declare-fun lt!1206314 () Unit!53110)

(declare-fun choose!20495 (List!37531 Int Token!10346) Unit!53110)

(assert (=> d!1029802 (= lt!1206314 (choose!20495 tokens!494 lambda!122958 (h!42827 (t!282696 tokens!494))))))

(declare-fun e!2184229 () Bool)

(assert (=> d!1029802 e!2184229))

(declare-fun res!1423605 () Bool)

(assert (=> d!1029802 (=> (not res!1423605) (not e!2184229))))

(assert (=> d!1029802 (= res!1423605 (forall!8053 tokens!494 lambda!122958))))

(assert (=> d!1029802 (= (forallContained!1437 tokens!494 lambda!122958 (h!42827 (t!282696 tokens!494))) lt!1206314)))

(declare-fun b!3528350 () Bool)

(declare-fun contains!7038 (List!37531 Token!10346) Bool)

(assert (=> b!3528350 (= e!2184229 (contains!7038 tokens!494 (h!42827 (t!282696 tokens!494))))))

(assert (= (and d!1029802 res!1423605) b!3528350))

(declare-fun b_lambda!103181 () Bool)

(assert (=> (not b_lambda!103181) (not d!1029802)))

(declare-fun m!3983263 () Bool)

(assert (=> d!1029802 m!3983263))

(declare-fun m!3983265 () Bool)

(assert (=> d!1029802 m!3983265))

(assert (=> d!1029802 m!3983081))

(declare-fun m!3983267 () Bool)

(assert (=> b!3528350 m!3983267))

(assert (=> b!3528195 d!1029802))

(declare-fun d!1029804 () Bool)

(assert (=> d!1029804 (dynLambda!15973 lambda!122958 (h!42827 tokens!494))))

(declare-fun lt!1206315 () Unit!53110)

(assert (=> d!1029804 (= lt!1206315 (choose!20495 tokens!494 lambda!122958 (h!42827 tokens!494)))))

(declare-fun e!2184230 () Bool)

(assert (=> d!1029804 e!2184230))

(declare-fun res!1423606 () Bool)

(assert (=> d!1029804 (=> (not res!1423606) (not e!2184230))))

(assert (=> d!1029804 (= res!1423606 (forall!8053 tokens!494 lambda!122958))))

(assert (=> d!1029804 (= (forallContained!1437 tokens!494 lambda!122958 (h!42827 tokens!494)) lt!1206315)))

(declare-fun b!3528351 () Bool)

(assert (=> b!3528351 (= e!2184230 (contains!7038 tokens!494 (h!42827 tokens!494)))))

(assert (= (and d!1029804 res!1423606) b!3528351))

(declare-fun b_lambda!103183 () Bool)

(assert (=> (not b_lambda!103183) (not d!1029804)))

(assert (=> d!1029804 m!3983259))

(declare-fun m!3983269 () Bool)

(assert (=> d!1029804 m!3983269))

(assert (=> d!1029804 m!3983081))

(declare-fun m!3983271 () Bool)

(assert (=> b!3528351 m!3983271))

(assert (=> b!3528195 d!1029804))

(declare-fun d!1029806 () Bool)

(declare-fun lt!1206318 () Token!10346)

(declare-fun apply!8940 (List!37531 Int) Token!10346)

(assert (=> d!1029806 (= lt!1206318 (apply!8940 (list!13691 (_1!21764 lt!1206268)) 0))))

(declare-fun apply!8941 (Conc!11356 Int) Token!10346)

(assert (=> d!1029806 (= lt!1206318 (apply!8941 (c!608162 (_1!21764 lt!1206268)) 0))))

(declare-fun e!2184233 () Bool)

(assert (=> d!1029806 e!2184233))

(declare-fun res!1423609 () Bool)

(assert (=> d!1029806 (=> (not res!1423609) (not e!2184233))))

(assert (=> d!1029806 (= res!1423609 (<= 0 0))))

(assert (=> d!1029806 (= (apply!8938 (_1!21764 lt!1206268) 0) lt!1206318)))

(declare-fun b!3528354 () Bool)

(assert (=> b!3528354 (= e!2184233 (< 0 (size!28475 (_1!21764 lt!1206268))))))

(assert (= (and d!1029806 res!1423609) b!3528354))

(declare-fun m!3983273 () Bool)

(assert (=> d!1029806 m!3983273))

(assert (=> d!1029806 m!3983273))

(declare-fun m!3983275 () Bool)

(assert (=> d!1029806 m!3983275))

(declare-fun m!3983277 () Bool)

(assert (=> d!1029806 m!3983277))

(assert (=> b!3528354 m!3983007))

(assert (=> b!3528173 d!1029806))

(declare-fun d!1029808 () Bool)

(assert (=> d!1029808 (= (inv!50641 (tag!6134 (rule!8150 (h!42827 tokens!494)))) (= (mod (str.len (value!176924 (tag!6134 (rule!8150 (h!42827 tokens!494))))) 2) 0))))

(assert (=> b!3528196 d!1029808))

(declare-fun d!1029810 () Bool)

(declare-fun res!1423612 () Bool)

(declare-fun e!2184236 () Bool)

(assert (=> d!1029810 (=> (not res!1423612) (not e!2184236))))

(declare-fun semiInverseModEq!2318 (Int Int) Bool)

(assert (=> d!1029810 (= res!1423612 (semiInverseModEq!2318 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))))))

(assert (=> d!1029810 (= (inv!50644 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) e!2184236)))

(declare-fun b!3528357 () Bool)

(declare-fun equivClasses!2217 (Int Int) Bool)

(assert (=> b!3528357 (= e!2184236 (equivClasses!2217 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))))))

(assert (= (and d!1029810 res!1423612) b!3528357))

(declare-fun m!3983279 () Bool)

(assert (=> d!1029810 m!3983279))

(declare-fun m!3983281 () Bool)

(assert (=> b!3528357 m!3983281))

(assert (=> b!3528196 d!1029810))

(declare-fun d!1029812 () Bool)

(assert (=> d!1029812 (not (matchR!4833 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258))))

(declare-fun lt!1206321 () Unit!53110)

(declare-fun choose!20496 (Regex!10249 List!37529 C!20684) Unit!53110)

(assert (=> d!1029812 (= lt!1206321 (choose!20496 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258 lt!1206278))))

(assert (=> d!1029812 (validRegex!4679 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))

(assert (=> d!1029812 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!548 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258 lt!1206278) lt!1206321)))

(declare-fun bs!565787 () Bool)

(assert (= bs!565787 d!1029812))

(assert (=> bs!565787 m!3983079))

(declare-fun m!3983283 () Bool)

(assert (=> bs!565787 m!3983283))

(declare-fun m!3983285 () Bool)

(assert (=> bs!565787 m!3983285))

(assert (=> b!3528175 d!1029812))

(declare-fun b!3528358 () Bool)

(declare-fun e!2184239 () Bool)

(declare-fun e!2184242 () Bool)

(assert (=> b!3528358 (= e!2184239 e!2184242)))

(declare-fun res!1423615 () Bool)

(assert (=> b!3528358 (=> (not res!1423615) (not e!2184242))))

(declare-fun lt!1206322 () Bool)

(assert (=> b!3528358 (= res!1423615 (not lt!1206322))))

(declare-fun b!3528359 () Bool)

(declare-fun res!1423618 () Bool)

(declare-fun e!2184240 () Bool)

(assert (=> b!3528359 (=> (not res!1423618) (not e!2184240))))

(declare-fun call!254800 () Bool)

(assert (=> b!3528359 (= res!1423618 (not call!254800))))

(declare-fun b!3528360 () Bool)

(declare-fun e!2184238 () Bool)

(assert (=> b!3528360 (= e!2184238 (not lt!1206322))))

(declare-fun b!3528361 () Bool)

(declare-fun e!2184243 () Bool)

(assert (=> b!3528361 (= e!2184242 e!2184243)))

(declare-fun res!1423619 () Bool)

(assert (=> b!3528361 (=> res!1423619 e!2184243)))

(assert (=> b!3528361 (= res!1423619 call!254800)))

(declare-fun b!3528362 () Bool)

(declare-fun res!1423613 () Bool)

(assert (=> b!3528362 (=> (not res!1423613) (not e!2184240))))

(assert (=> b!3528362 (= res!1423613 (isEmpty!21886 (tail!5502 lt!1206258)))))

(declare-fun b!3528363 () Bool)

(assert (=> b!3528363 (= e!2184240 (= (head!7405 lt!1206258) (c!608160 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))

(declare-fun bm!254795 () Bool)

(assert (=> bm!254795 (= call!254800 (isEmpty!21886 lt!1206258))))

(declare-fun b!3528364 () Bool)

(declare-fun e!2184237 () Bool)

(assert (=> b!3528364 (= e!2184237 (matchR!4833 (derivativeStep!3076 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (head!7405 lt!1206258)) (tail!5502 lt!1206258)))))

(declare-fun b!3528365 () Bool)

(assert (=> b!3528365 (= e!2184243 (not (= (head!7405 lt!1206258) (c!608160 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))))

(declare-fun b!3528366 () Bool)

(declare-fun res!1423620 () Bool)

(assert (=> b!3528366 (=> res!1423620 e!2184243)))

(assert (=> b!3528366 (= res!1423620 (not (isEmpty!21886 (tail!5502 lt!1206258))))))

(declare-fun b!3528367 () Bool)

(declare-fun e!2184241 () Bool)

(assert (=> b!3528367 (= e!2184241 e!2184238)))

(declare-fun c!608191 () Bool)

(assert (=> b!3528367 (= c!608191 ((_ is EmptyLang!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun b!3528369 () Bool)

(assert (=> b!3528369 (= e!2184241 (= lt!1206322 call!254800))))

(declare-fun b!3528370 () Bool)

(assert (=> b!3528370 (= e!2184237 (nullable!3523 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun b!3528371 () Bool)

(declare-fun res!1423617 () Bool)

(assert (=> b!3528371 (=> res!1423617 e!2184239)))

(assert (=> b!3528371 (= res!1423617 (not ((_ is ElementMatch!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))

(assert (=> b!3528371 (= e!2184238 e!2184239)))

(declare-fun b!3528368 () Bool)

(declare-fun res!1423614 () Bool)

(assert (=> b!3528368 (=> res!1423614 e!2184239)))

(assert (=> b!3528368 (= res!1423614 e!2184240)))

(declare-fun res!1423616 () Bool)

(assert (=> b!3528368 (=> (not res!1423616) (not e!2184240))))

(assert (=> b!3528368 (= res!1423616 lt!1206322)))

(declare-fun d!1029814 () Bool)

(assert (=> d!1029814 e!2184241))

(declare-fun c!608193 () Bool)

(assert (=> d!1029814 (= c!608193 ((_ is EmptyExpr!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(assert (=> d!1029814 (= lt!1206322 e!2184237)))

(declare-fun c!608192 () Bool)

(assert (=> d!1029814 (= c!608192 (isEmpty!21886 lt!1206258))))

(assert (=> d!1029814 (validRegex!4679 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))

(assert (=> d!1029814 (= (matchR!4833 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258) lt!1206322)))

(assert (= (and d!1029814 c!608192) b!3528370))

(assert (= (and d!1029814 (not c!608192)) b!3528364))

(assert (= (and d!1029814 c!608193) b!3528369))

(assert (= (and d!1029814 (not c!608193)) b!3528367))

(assert (= (and b!3528367 c!608191) b!3528360))

(assert (= (and b!3528367 (not c!608191)) b!3528371))

(assert (= (and b!3528371 (not res!1423617)) b!3528368))

(assert (= (and b!3528368 res!1423616) b!3528359))

(assert (= (and b!3528359 res!1423618) b!3528362))

(assert (= (and b!3528362 res!1423613) b!3528363))

(assert (= (and b!3528368 (not res!1423614)) b!3528358))

(assert (= (and b!3528358 res!1423615) b!3528361))

(assert (= (and b!3528361 (not res!1423619)) b!3528366))

(assert (= (and b!3528366 (not res!1423620)) b!3528365))

(assert (= (or b!3528369 b!3528359 b!3528361) bm!254795))

(assert (=> b!3528365 m!3983019))

(assert (=> b!3528363 m!3983019))

(assert (=> b!3528366 m!3983245))

(assert (=> b!3528366 m!3983245))

(assert (=> b!3528366 m!3983247))

(assert (=> b!3528362 m!3983245))

(assert (=> b!3528362 m!3983245))

(assert (=> b!3528362 m!3983247))

(declare-fun m!3983287 () Bool)

(assert (=> b!3528370 m!3983287))

(assert (=> bm!254795 m!3983251))

(assert (=> d!1029814 m!3983251))

(assert (=> d!1029814 m!3983285))

(assert (=> b!3528364 m!3983019))

(assert (=> b!3528364 m!3983019))

(declare-fun m!3983289 () Bool)

(assert (=> b!3528364 m!3983289))

(assert (=> b!3528364 m!3983245))

(assert (=> b!3528364 m!3983289))

(assert (=> b!3528364 m!3983245))

(declare-fun m!3983291 () Bool)

(assert (=> b!3528364 m!3983291))

(assert (=> b!3528175 d!1029814))

(declare-fun d!1029816 () Bool)

(declare-fun lt!1206325 () Bool)

(assert (=> d!1029816 (= lt!1206325 (isEmpty!21886 (list!13689 (_2!21764 lt!1206268))))))

(declare-fun isEmpty!21887 (Conc!11355) Bool)

(assert (=> d!1029816 (= lt!1206325 (isEmpty!21887 (c!608161 (_2!21764 lt!1206268))))))

(assert (=> d!1029816 (= (isEmpty!21884 (_2!21764 lt!1206268)) lt!1206325)))

(declare-fun bs!565788 () Bool)

(assert (= bs!565788 d!1029816))

(declare-fun m!3983293 () Bool)

(assert (=> bs!565788 m!3983293))

(assert (=> bs!565788 m!3983293))

(declare-fun m!3983295 () Bool)

(assert (=> bs!565788 m!3983295))

(declare-fun m!3983297 () Bool)

(assert (=> bs!565788 m!3983297))

(assert (=> b!3528174 d!1029816))

(declare-fun d!1029818 () Bool)

(declare-fun lt!1206343 () Bool)

(declare-fun e!2184275 () Bool)

(assert (=> d!1029818 (= lt!1206343 e!2184275)))

(declare-fun res!1423656 () Bool)

(assert (=> d!1029818 (=> (not res!1423656) (not e!2184275))))

(assert (=> d!1029818 (= res!1423656 (= (list!13691 (_1!21764 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 separatorToken!241))))) (list!13691 (singletonSeq!2586 separatorToken!241))))))

(declare-fun e!2184276 () Bool)

(assert (=> d!1029818 (= lt!1206343 e!2184276)))

(declare-fun res!1423654 () Bool)

(assert (=> d!1029818 (=> (not res!1423654) (not e!2184276))))

(declare-fun lt!1206342 () tuple2!37260)

(assert (=> d!1029818 (= res!1423654 (= (size!28475 (_1!21764 lt!1206342)) 1))))

(assert (=> d!1029818 (= lt!1206342 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 separatorToken!241))))))

(assert (=> d!1029818 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029818 (= (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 separatorToken!241) lt!1206343)))

(declare-fun b!3528426 () Bool)

(declare-fun res!1423655 () Bool)

(assert (=> b!3528426 (=> (not res!1423655) (not e!2184276))))

(assert (=> b!3528426 (= res!1423655 (= (apply!8938 (_1!21764 lt!1206342) 0) separatorToken!241))))

(declare-fun b!3528427 () Bool)

(assert (=> b!3528427 (= e!2184276 (isEmpty!21884 (_2!21764 lt!1206342)))))

(declare-fun b!3528428 () Bool)

(assert (=> b!3528428 (= e!2184275 (isEmpty!21884 (_2!21764 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 separatorToken!241))))))))

(assert (= (and d!1029818 res!1423654) b!3528426))

(assert (= (and b!3528426 res!1423655) b!3528427))

(assert (= (and d!1029818 res!1423656) b!3528428))

(declare-fun m!3983331 () Bool)

(assert (=> d!1029818 m!3983331))

(declare-fun m!3983333 () Bool)

(assert (=> d!1029818 m!3983333))

(assert (=> d!1029818 m!3983033))

(assert (=> d!1029818 m!3982977))

(assert (=> d!1029818 m!3983331))

(assert (=> d!1029818 m!3982977))

(declare-fun m!3983335 () Bool)

(assert (=> d!1029818 m!3983335))

(declare-fun m!3983337 () Bool)

(assert (=> d!1029818 m!3983337))

(assert (=> d!1029818 m!3982977))

(declare-fun m!3983339 () Bool)

(assert (=> d!1029818 m!3983339))

(declare-fun m!3983341 () Bool)

(assert (=> b!3528426 m!3983341))

(declare-fun m!3983343 () Bool)

(assert (=> b!3528427 m!3983343))

(assert (=> b!3528428 m!3982977))

(assert (=> b!3528428 m!3982977))

(assert (=> b!3528428 m!3983331))

(assert (=> b!3528428 m!3983331))

(assert (=> b!3528428 m!3983333))

(declare-fun m!3983345 () Bool)

(assert (=> b!3528428 m!3983345))

(assert (=> b!3528202 d!1029818))

(declare-fun d!1029830 () Bool)

(assert (=> d!1029830 (= (isEmpty!21885 rules!2135) ((_ is Nil!37406) rules!2135))))

(assert (=> b!3528181 d!1029830))

(declare-fun b!3528439 () Bool)

(declare-fun e!2184283 () Bool)

(declare-fun inv!16 (TokenValue!5720) Bool)

(assert (=> b!3528439 (= e!2184283 (inv!16 (value!176925 (h!42827 tokens!494))))))

(declare-fun b!3528440 () Bool)

(declare-fun res!1423659 () Bool)

(declare-fun e!2184284 () Bool)

(assert (=> b!3528440 (=> res!1423659 e!2184284)))

(assert (=> b!3528440 (= res!1423659 (not ((_ is IntegerValue!17162) (value!176925 (h!42827 tokens!494)))))))

(declare-fun e!2184285 () Bool)

(assert (=> b!3528440 (= e!2184285 e!2184284)))

(declare-fun d!1029832 () Bool)

(declare-fun c!608209 () Bool)

(assert (=> d!1029832 (= c!608209 ((_ is IntegerValue!17160) (value!176925 (h!42827 tokens!494))))))

(assert (=> d!1029832 (= (inv!21 (value!176925 (h!42827 tokens!494))) e!2184283)))

(declare-fun b!3528441 () Bool)

(declare-fun inv!15 (TokenValue!5720) Bool)

(assert (=> b!3528441 (= e!2184284 (inv!15 (value!176925 (h!42827 tokens!494))))))

(declare-fun b!3528442 () Bool)

(declare-fun inv!17 (TokenValue!5720) Bool)

(assert (=> b!3528442 (= e!2184285 (inv!17 (value!176925 (h!42827 tokens!494))))))

(declare-fun b!3528443 () Bool)

(assert (=> b!3528443 (= e!2184283 e!2184285)))

(declare-fun c!608208 () Bool)

(assert (=> b!3528443 (= c!608208 ((_ is IntegerValue!17161) (value!176925 (h!42827 tokens!494))))))

(assert (= (and d!1029832 c!608209) b!3528439))

(assert (= (and d!1029832 (not c!608209)) b!3528443))

(assert (= (and b!3528443 c!608208) b!3528442))

(assert (= (and b!3528443 (not c!608208)) b!3528440))

(assert (= (and b!3528440 (not res!1423659)) b!3528441))

(declare-fun m!3983347 () Bool)

(assert (=> b!3528439 m!3983347))

(declare-fun m!3983349 () Bool)

(assert (=> b!3528441 m!3983349))

(declare-fun m!3983351 () Bool)

(assert (=> b!3528442 m!3983351))

(assert (=> b!3528204 d!1029832))

(declare-fun b!3528452 () Bool)

(declare-fun e!2184290 () List!37529)

(assert (=> b!3528452 (= e!2184290 lt!1206242)))

(declare-fun d!1029834 () Bool)

(declare-fun e!2184291 () Bool)

(assert (=> d!1029834 e!2184291))

(declare-fun res!1423665 () Bool)

(assert (=> d!1029834 (=> (not res!1423665) (not e!2184291))))

(declare-fun lt!1206346 () List!37529)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5277 (List!37529) (InoxSet C!20684))

(assert (=> d!1029834 (= res!1423665 (= (content!5277 lt!1206346) ((_ map or) (content!5277 (++!9277 lt!1206246 lt!1206247)) (content!5277 lt!1206242))))))

(assert (=> d!1029834 (= lt!1206346 e!2184290)))

(declare-fun c!608212 () Bool)

(assert (=> d!1029834 (= c!608212 ((_ is Nil!37405) (++!9277 lt!1206246 lt!1206247)))))

(assert (=> d!1029834 (= (++!9277 (++!9277 lt!1206246 lt!1206247) lt!1206242) lt!1206346)))

(declare-fun b!3528453 () Bool)

(assert (=> b!3528453 (= e!2184290 (Cons!37405 (h!42825 (++!9277 lt!1206246 lt!1206247)) (++!9277 (t!282694 (++!9277 lt!1206246 lt!1206247)) lt!1206242)))))

(declare-fun b!3528455 () Bool)

(assert (=> b!3528455 (= e!2184291 (or (not (= lt!1206242 Nil!37405)) (= lt!1206346 (++!9277 lt!1206246 lt!1206247))))))

(declare-fun b!3528454 () Bool)

(declare-fun res!1423664 () Bool)

(assert (=> b!3528454 (=> (not res!1423664) (not e!2184291))))

(assert (=> b!3528454 (= res!1423664 (= (size!28474 lt!1206346) (+ (size!28474 (++!9277 lt!1206246 lt!1206247)) (size!28474 lt!1206242))))))

(assert (= (and d!1029834 c!608212) b!3528452))

(assert (= (and d!1029834 (not c!608212)) b!3528453))

(assert (= (and d!1029834 res!1423665) b!3528454))

(assert (= (and b!3528454 res!1423664) b!3528455))

(declare-fun m!3983353 () Bool)

(assert (=> d!1029834 m!3983353))

(assert (=> d!1029834 m!3982933))

(declare-fun m!3983355 () Bool)

(assert (=> d!1029834 m!3983355))

(declare-fun m!3983357 () Bool)

(assert (=> d!1029834 m!3983357))

(declare-fun m!3983359 () Bool)

(assert (=> b!3528453 m!3983359))

(declare-fun m!3983361 () Bool)

(assert (=> b!3528454 m!3983361))

(assert (=> b!3528454 m!3982933))

(declare-fun m!3983363 () Bool)

(assert (=> b!3528454 m!3983363))

(declare-fun m!3983365 () Bool)

(assert (=> b!3528454 m!3983365))

(assert (=> b!3528183 d!1029834))

(declare-fun b!3528456 () Bool)

(declare-fun e!2184292 () List!37529)

(assert (=> b!3528456 (= e!2184292 lt!1206247)))

(declare-fun d!1029836 () Bool)

(declare-fun e!2184293 () Bool)

(assert (=> d!1029836 e!2184293))

(declare-fun res!1423667 () Bool)

(assert (=> d!1029836 (=> (not res!1423667) (not e!2184293))))

(declare-fun lt!1206347 () List!37529)

(assert (=> d!1029836 (= res!1423667 (= (content!5277 lt!1206347) ((_ map or) (content!5277 lt!1206246) (content!5277 lt!1206247))))))

(assert (=> d!1029836 (= lt!1206347 e!2184292)))

(declare-fun c!608213 () Bool)

(assert (=> d!1029836 (= c!608213 ((_ is Nil!37405) lt!1206246))))

(assert (=> d!1029836 (= (++!9277 lt!1206246 lt!1206247) lt!1206347)))

(declare-fun b!3528457 () Bool)

(assert (=> b!3528457 (= e!2184292 (Cons!37405 (h!42825 lt!1206246) (++!9277 (t!282694 lt!1206246) lt!1206247)))))

(declare-fun b!3528459 () Bool)

(assert (=> b!3528459 (= e!2184293 (or (not (= lt!1206247 Nil!37405)) (= lt!1206347 lt!1206246)))))

(declare-fun b!3528458 () Bool)

(declare-fun res!1423666 () Bool)

(assert (=> b!3528458 (=> (not res!1423666) (not e!2184293))))

(assert (=> b!3528458 (= res!1423666 (= (size!28474 lt!1206347) (+ (size!28474 lt!1206246) (size!28474 lt!1206247))))))

(assert (= (and d!1029836 c!608213) b!3528456))

(assert (= (and d!1029836 (not c!608213)) b!3528457))

(assert (= (and d!1029836 res!1423667) b!3528458))

(assert (= (and b!3528458 res!1423666) b!3528459))

(declare-fun m!3983367 () Bool)

(assert (=> d!1029836 m!3983367))

(declare-fun m!3983369 () Bool)

(assert (=> d!1029836 m!3983369))

(declare-fun m!3983371 () Bool)

(assert (=> d!1029836 m!3983371))

(declare-fun m!3983373 () Bool)

(assert (=> b!3528457 m!3983373))

(declare-fun m!3983375 () Bool)

(assert (=> b!3528458 m!3983375))

(assert (=> b!3528458 m!3982965))

(declare-fun m!3983377 () Bool)

(assert (=> b!3528458 m!3983377))

(assert (=> b!3528183 d!1029836))

(declare-fun d!1029838 () Bool)

(declare-fun res!1423670 () Bool)

(declare-fun e!2184296 () Bool)

(assert (=> d!1029838 (=> (not res!1423670) (not e!2184296))))

(declare-fun rulesValid!2078 (LexerInterface!5079 List!37530) Bool)

(assert (=> d!1029838 (= res!1423670 (rulesValid!2078 thiss!18206 rules!2135))))

(assert (=> d!1029838 (= (rulesInvariant!4476 thiss!18206 rules!2135) e!2184296)))

(declare-fun b!3528462 () Bool)

(declare-datatypes ((List!37532 0))(
  ( (Nil!37408) (Cons!37408 (h!42828 String!41934) (t!282811 List!37532)) )
))
(declare-fun noDuplicateTag!2074 (LexerInterface!5079 List!37530 List!37532) Bool)

(assert (=> b!3528462 (= e!2184296 (noDuplicateTag!2074 thiss!18206 rules!2135 Nil!37408))))

(assert (= (and d!1029838 res!1423670) b!3528462))

(declare-fun m!3983379 () Bool)

(assert (=> d!1029838 m!3983379))

(declare-fun m!3983381 () Bool)

(assert (=> b!3528462 m!3983381))

(assert (=> b!3528182 d!1029838))

(declare-fun d!1029840 () Bool)

(declare-fun lt!1206348 () Bool)

(assert (=> d!1029840 (= lt!1206348 (isEmpty!21886 (list!13689 (_2!21764 lt!1206277))))))

(assert (=> d!1029840 (= lt!1206348 (isEmpty!21887 (c!608161 (_2!21764 lt!1206277))))))

(assert (=> d!1029840 (= (isEmpty!21884 (_2!21764 lt!1206277)) lt!1206348)))

(declare-fun bs!565794 () Bool)

(assert (= bs!565794 d!1029840))

(declare-fun m!3983383 () Bool)

(assert (=> bs!565794 m!3983383))

(assert (=> bs!565794 m!3983383))

(declare-fun m!3983385 () Bool)

(assert (=> bs!565794 m!3983385))

(declare-fun m!3983387 () Bool)

(assert (=> bs!565794 m!3983387))

(assert (=> b!3528179 d!1029840))

(declare-fun d!1029842 () Bool)

(declare-fun res!1423675 () Bool)

(declare-fun e!2184299 () Bool)

(assert (=> d!1029842 (=> (not res!1423675) (not e!2184299))))

(assert (=> d!1029842 (= res!1423675 (not (isEmpty!21886 (originalCharacters!6204 separatorToken!241))))))

(assert (=> d!1029842 (= (inv!50645 separatorToken!241) e!2184299)))

(declare-fun b!3528467 () Bool)

(declare-fun res!1423676 () Bool)

(assert (=> b!3528467 (=> (not res!1423676) (not e!2184299))))

(declare-fun dynLambda!15974 (Int TokenValue!5720) BalanceConc!22324)

(assert (=> b!3528467 (= res!1423676 (= (originalCharacters!6204 separatorToken!241) (list!13689 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (value!176925 separatorToken!241)))))))

(declare-fun b!3528468 () Bool)

(assert (=> b!3528468 (= e!2184299 (= (size!28473 separatorToken!241) (size!28474 (originalCharacters!6204 separatorToken!241))))))

(assert (= (and d!1029842 res!1423675) b!3528467))

(assert (= (and b!3528467 res!1423676) b!3528468))

(declare-fun b_lambda!103185 () Bool)

(assert (=> (not b_lambda!103185) (not b!3528467)))

(declare-fun t!282720 () Bool)

(declare-fun tb!197419 () Bool)

(assert (=> (and b!3528190 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241)))) t!282720) tb!197419))

(declare-fun b!3528473 () Bool)

(declare-fun e!2184302 () Bool)

(declare-fun tp!1088121 () Bool)

(declare-fun inv!50648 (Conc!11355) Bool)

(assert (=> b!3528473 (= e!2184302 (and (inv!50648 (c!608161 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (value!176925 separatorToken!241)))) tp!1088121))))

(declare-fun result!241846 () Bool)

(declare-fun inv!50649 (BalanceConc!22324) Bool)

(assert (=> tb!197419 (= result!241846 (and (inv!50649 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (value!176925 separatorToken!241))) e!2184302))))

(assert (= tb!197419 b!3528473))

(declare-fun m!3983389 () Bool)

(assert (=> b!3528473 m!3983389))

(declare-fun m!3983391 () Bool)

(assert (=> tb!197419 m!3983391))

(assert (=> b!3528467 t!282720))

(declare-fun b_and!251615 () Bool)

(assert (= b_and!251593 (and (=> t!282720 result!241846) b_and!251615)))

(declare-fun t!282722 () Bool)

(declare-fun tb!197421 () Bool)

(assert (=> (and b!3528203 (= (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241)))) t!282722) tb!197421))

(declare-fun result!241850 () Bool)

(assert (= result!241850 result!241846))

(assert (=> b!3528467 t!282722))

(declare-fun b_and!251617 () Bool)

(assert (= b_and!251597 (and (=> t!282722 result!241850) b_and!251617)))

(declare-fun tb!197423 () Bool)

(declare-fun t!282724 () Bool)

(assert (=> (and b!3528170 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241)))) t!282724) tb!197423))

(declare-fun result!241852 () Bool)

(assert (= result!241852 result!241846))

(assert (=> b!3528467 t!282724))

(declare-fun b_and!251619 () Bool)

(assert (= b_and!251601 (and (=> t!282724 result!241852) b_and!251619)))

(declare-fun m!3983393 () Bool)

(assert (=> d!1029842 m!3983393))

(declare-fun m!3983395 () Bool)

(assert (=> b!3528467 m!3983395))

(assert (=> b!3528467 m!3983395))

(declare-fun m!3983397 () Bool)

(assert (=> b!3528467 m!3983397))

(declare-fun m!3983399 () Bool)

(assert (=> b!3528468 m!3983399))

(assert (=> start!327906 d!1029842))

(declare-fun d!1029844 () Bool)

(declare-fun c!608216 () Bool)

(assert (=> d!1029844 (= c!608216 ((_ is Cons!37407) tokens!494))))

(declare-fun e!2184305 () List!37529)

(assert (=> d!1029844 (= (printWithSeparatorTokenList!366 thiss!18206 tokens!494 separatorToken!241) e!2184305)))

(declare-fun b!3528478 () Bool)

(assert (=> b!3528478 (= e!2184305 (++!9277 (++!9277 (list!13689 (charsOf!3504 (h!42827 tokens!494))) (list!13689 (charsOf!3504 separatorToken!241))) (printWithSeparatorTokenList!366 thiss!18206 (t!282696 tokens!494) separatorToken!241)))))

(declare-fun b!3528479 () Bool)

(assert (=> b!3528479 (= e!2184305 Nil!37405)))

(assert (= (and d!1029844 c!608216) b!3528478))

(assert (= (and d!1029844 (not c!608216)) b!3528479))

(assert (=> b!3528478 m!3983059))

(assert (=> b!3528478 m!3982917))

(declare-fun m!3983401 () Bool)

(assert (=> b!3528478 m!3983401))

(assert (=> b!3528478 m!3982899))

(assert (=> b!3528478 m!3982917))

(assert (=> b!3528478 m!3982903))

(assert (=> b!3528478 m!3983057))

(assert (=> b!3528478 m!3983059))

(assert (=> b!3528478 m!3983401))

(assert (=> b!3528478 m!3982903))

(declare-fun m!3983403 () Bool)

(assert (=> b!3528478 m!3983403))

(assert (=> b!3528478 m!3983057))

(assert (=> b!3528478 m!3982899))

(assert (=> b!3528178 d!1029844))

(declare-fun b!3528480 () Bool)

(declare-fun e!2184306 () List!37529)

(assert (=> b!3528480 (= e!2184306 (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241))))

(declare-fun d!1029846 () Bool)

(declare-fun e!2184307 () Bool)

(assert (=> d!1029846 e!2184307))

(declare-fun res!1423678 () Bool)

(assert (=> d!1029846 (=> (not res!1423678) (not e!2184307))))

(declare-fun lt!1206349 () List!37529)

(assert (=> d!1029846 (= res!1423678 (= (content!5277 lt!1206349) ((_ map or) (content!5277 (++!9277 lt!1206258 lt!1206247)) (content!5277 (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241)))))))

(assert (=> d!1029846 (= lt!1206349 e!2184306)))

(declare-fun c!608217 () Bool)

(assert (=> d!1029846 (= c!608217 ((_ is Nil!37405) (++!9277 lt!1206258 lt!1206247)))))

(assert (=> d!1029846 (= (++!9277 (++!9277 lt!1206258 lt!1206247) (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241)) lt!1206349)))

(declare-fun b!3528481 () Bool)

(assert (=> b!3528481 (= e!2184306 (Cons!37405 (h!42825 (++!9277 lt!1206258 lt!1206247)) (++!9277 (t!282694 (++!9277 lt!1206258 lt!1206247)) (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241))))))

(declare-fun b!3528483 () Bool)

(assert (=> b!3528483 (= e!2184307 (or (not (= (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241) Nil!37405)) (= lt!1206349 (++!9277 lt!1206258 lt!1206247))))))

(declare-fun b!3528482 () Bool)

(declare-fun res!1423677 () Bool)

(assert (=> b!3528482 (=> (not res!1423677) (not e!2184307))))

(assert (=> b!3528482 (= res!1423677 (= (size!28474 lt!1206349) (+ (size!28474 (++!9277 lt!1206258 lt!1206247)) (size!28474 (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1029846 c!608217) b!3528480))

(assert (= (and d!1029846 (not c!608217)) b!3528481))

(assert (= (and d!1029846 res!1423678) b!3528482))

(assert (= (and b!3528482 res!1423677) b!3528483))

(declare-fun m!3983405 () Bool)

(assert (=> d!1029846 m!3983405))

(assert (=> d!1029846 m!3982909))

(declare-fun m!3983407 () Bool)

(assert (=> d!1029846 m!3983407))

(assert (=> d!1029846 m!3982911))

(declare-fun m!3983409 () Bool)

(assert (=> d!1029846 m!3983409))

(assert (=> b!3528481 m!3982911))

(declare-fun m!3983411 () Bool)

(assert (=> b!3528481 m!3983411))

(declare-fun m!3983413 () Bool)

(assert (=> b!3528482 m!3983413))

(assert (=> b!3528482 m!3982909))

(declare-fun m!3983415 () Bool)

(assert (=> b!3528482 m!3983415))

(assert (=> b!3528482 m!3982911))

(declare-fun m!3983417 () Bool)

(assert (=> b!3528482 m!3983417))

(assert (=> b!3528178 d!1029846))

(declare-fun b!3528484 () Bool)

(declare-fun e!2184308 () List!37529)

(assert (=> b!3528484 (= e!2184308 lt!1206242)))

(declare-fun d!1029848 () Bool)

(declare-fun e!2184309 () Bool)

(assert (=> d!1029848 e!2184309))

(declare-fun res!1423680 () Bool)

(assert (=> d!1029848 (=> (not res!1423680) (not e!2184309))))

(declare-fun lt!1206350 () List!37529)

(assert (=> d!1029848 (= res!1423680 (= (content!5277 lt!1206350) ((_ map or) (content!5277 lt!1206247) (content!5277 lt!1206242))))))

(assert (=> d!1029848 (= lt!1206350 e!2184308)))

(declare-fun c!608218 () Bool)

(assert (=> d!1029848 (= c!608218 ((_ is Nil!37405) lt!1206247))))

(assert (=> d!1029848 (= (++!9277 lt!1206247 lt!1206242) lt!1206350)))

(declare-fun b!3528485 () Bool)

(assert (=> b!3528485 (= e!2184308 (Cons!37405 (h!42825 lt!1206247) (++!9277 (t!282694 lt!1206247) lt!1206242)))))

(declare-fun b!3528487 () Bool)

(assert (=> b!3528487 (= e!2184309 (or (not (= lt!1206242 Nil!37405)) (= lt!1206350 lt!1206247)))))

(declare-fun b!3528486 () Bool)

(declare-fun res!1423679 () Bool)

(assert (=> b!3528486 (=> (not res!1423679) (not e!2184309))))

(assert (=> b!3528486 (= res!1423679 (= (size!28474 lt!1206350) (+ (size!28474 lt!1206247) (size!28474 lt!1206242))))))

(assert (= (and d!1029848 c!608218) b!3528484))

(assert (= (and d!1029848 (not c!608218)) b!3528485))

(assert (= (and d!1029848 res!1423680) b!3528486))

(assert (= (and b!3528486 res!1423679) b!3528487))

(declare-fun m!3983419 () Bool)

(assert (=> d!1029848 m!3983419))

(assert (=> d!1029848 m!3983371))

(assert (=> d!1029848 m!3983357))

(declare-fun m!3983421 () Bool)

(assert (=> b!3528485 m!3983421))

(declare-fun m!3983423 () Bool)

(assert (=> b!3528486 m!3983423))

(assert (=> b!3528486 m!3983377))

(assert (=> b!3528486 m!3983365))

(assert (=> b!3528178 d!1029848))

(declare-fun d!1029850 () Bool)

(declare-fun lt!1206353 () BalanceConc!22324)

(assert (=> d!1029850 (= (list!13689 lt!1206353) (originalCharacters!6204 separatorToken!241))))

(assert (=> d!1029850 (= lt!1206353 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (value!176925 separatorToken!241)))))

(assert (=> d!1029850 (= (charsOf!3504 separatorToken!241) lt!1206353)))

(declare-fun b_lambda!103187 () Bool)

(assert (=> (not b_lambda!103187) (not d!1029850)))

(assert (=> d!1029850 t!282720))

(declare-fun b_and!251621 () Bool)

(assert (= b_and!251615 (and (=> t!282720 result!241846) b_and!251621)))

(assert (=> d!1029850 t!282722))

(declare-fun b_and!251623 () Bool)

(assert (= b_and!251617 (and (=> t!282722 result!241850) b_and!251623)))

(assert (=> d!1029850 t!282724))

(declare-fun b_and!251625 () Bool)

(assert (= b_and!251619 (and (=> t!282724 result!241852) b_and!251625)))

(declare-fun m!3983425 () Bool)

(assert (=> d!1029850 m!3983425))

(assert (=> d!1029850 m!3983395))

(assert (=> b!3528178 d!1029850))

(declare-fun d!1029852 () Bool)

(declare-fun list!13693 (Conc!11355) List!37529)

(assert (=> d!1029852 (= (list!13689 (charsOf!3504 (h!42827 (t!282696 tokens!494)))) (list!13693 (c!608161 (charsOf!3504 (h!42827 (t!282696 tokens!494))))))))

(declare-fun bs!565795 () Bool)

(assert (= bs!565795 d!1029852))

(declare-fun m!3983427 () Bool)

(assert (=> bs!565795 m!3983427))

(assert (=> b!3528178 d!1029852))

(declare-fun b!3528488 () Bool)

(declare-fun e!2184310 () List!37529)

(assert (=> b!3528488 (= e!2184310 lt!1206247)))

(declare-fun d!1029854 () Bool)

(declare-fun e!2184311 () Bool)

(assert (=> d!1029854 e!2184311))

(declare-fun res!1423682 () Bool)

(assert (=> d!1029854 (=> (not res!1423682) (not e!2184311))))

(declare-fun lt!1206354 () List!37529)

(assert (=> d!1029854 (= res!1423682 (= (content!5277 lt!1206354) ((_ map or) (content!5277 lt!1206258) (content!5277 lt!1206247))))))

(assert (=> d!1029854 (= lt!1206354 e!2184310)))

(declare-fun c!608219 () Bool)

(assert (=> d!1029854 (= c!608219 ((_ is Nil!37405) lt!1206258))))

(assert (=> d!1029854 (= (++!9277 lt!1206258 lt!1206247) lt!1206354)))

(declare-fun b!3528489 () Bool)

(assert (=> b!3528489 (= e!2184310 (Cons!37405 (h!42825 lt!1206258) (++!9277 (t!282694 lt!1206258) lt!1206247)))))

(declare-fun b!3528491 () Bool)

(assert (=> b!3528491 (= e!2184311 (or (not (= lt!1206247 Nil!37405)) (= lt!1206354 lt!1206258)))))

(declare-fun b!3528490 () Bool)

(declare-fun res!1423681 () Bool)

(assert (=> b!3528490 (=> (not res!1423681) (not e!2184311))))

(assert (=> b!3528490 (= res!1423681 (= (size!28474 lt!1206354) (+ (size!28474 lt!1206258) (size!28474 lt!1206247))))))

(assert (= (and d!1029854 c!608219) b!3528488))

(assert (= (and d!1029854 (not c!608219)) b!3528489))

(assert (= (and d!1029854 res!1423682) b!3528490))

(assert (= (and b!3528490 res!1423681) b!3528491))

(declare-fun m!3983429 () Bool)

(assert (=> d!1029854 m!3983429))

(declare-fun m!3983431 () Bool)

(assert (=> d!1029854 m!3983431))

(assert (=> d!1029854 m!3983371))

(declare-fun m!3983433 () Bool)

(assert (=> b!3528489 m!3983433))

(declare-fun m!3983435 () Bool)

(assert (=> b!3528490 m!3983435))

(assert (=> b!3528490 m!3982969))

(assert (=> b!3528490 m!3983377))

(assert (=> b!3528178 d!1029854))

(declare-fun d!1029856 () Bool)

(declare-fun c!608220 () Bool)

(assert (=> d!1029856 (= c!608220 ((_ is Cons!37407) (t!282696 (t!282696 tokens!494))))))

(declare-fun e!2184312 () List!37529)

(assert (=> d!1029856 (= (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241) e!2184312)))

(declare-fun b!3528492 () Bool)

(assert (=> b!3528492 (= e!2184312 (++!9277 (++!9277 (list!13689 (charsOf!3504 (h!42827 (t!282696 (t!282696 tokens!494))))) (list!13689 (charsOf!3504 separatorToken!241))) (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 (t!282696 tokens!494))) separatorToken!241)))))

(declare-fun b!3528493 () Bool)

(assert (=> b!3528493 (= e!2184312 Nil!37405)))

(assert (= (and d!1029856 c!608220) b!3528492))

(assert (= (and d!1029856 (not c!608220)) b!3528493))

(declare-fun m!3983437 () Bool)

(assert (=> b!3528492 m!3983437))

(assert (=> b!3528492 m!3982917))

(declare-fun m!3983439 () Bool)

(assert (=> b!3528492 m!3983439))

(assert (=> b!3528492 m!3982899))

(assert (=> b!3528492 m!3982917))

(declare-fun m!3983441 () Bool)

(assert (=> b!3528492 m!3983441))

(declare-fun m!3983443 () Bool)

(assert (=> b!3528492 m!3983443))

(assert (=> b!3528492 m!3983437))

(assert (=> b!3528492 m!3983439))

(assert (=> b!3528492 m!3983441))

(declare-fun m!3983445 () Bool)

(assert (=> b!3528492 m!3983445))

(assert (=> b!3528492 m!3983443))

(assert (=> b!3528492 m!3982899))

(assert (=> b!3528178 d!1029856))

(declare-fun d!1029858 () Bool)

(declare-fun c!608221 () Bool)

(assert (=> d!1029858 (= c!608221 ((_ is Cons!37407) (t!282696 tokens!494)))))

(declare-fun e!2184313 () List!37529)

(assert (=> d!1029858 (= (printWithSeparatorTokenList!366 thiss!18206 (t!282696 tokens!494) separatorToken!241) e!2184313)))

(declare-fun b!3528494 () Bool)

(assert (=> b!3528494 (= e!2184313 (++!9277 (++!9277 (list!13689 (charsOf!3504 (h!42827 (t!282696 tokens!494)))) (list!13689 (charsOf!3504 separatorToken!241))) (printWithSeparatorTokenList!366 thiss!18206 (t!282696 (t!282696 tokens!494)) separatorToken!241)))))

(declare-fun b!3528495 () Bool)

(assert (=> b!3528495 (= e!2184313 Nil!37405)))

(assert (= (and d!1029858 c!608221) b!3528494))

(assert (= (and d!1029858 (not c!608221)) b!3528495))

(assert (=> b!3528494 m!3982907))

(assert (=> b!3528494 m!3982917))

(declare-fun m!3983447 () Bool)

(assert (=> b!3528494 m!3983447))

(assert (=> b!3528494 m!3982899))

(assert (=> b!3528494 m!3982917))

(assert (=> b!3528494 m!3982911))

(assert (=> b!3528494 m!3982905))

(assert (=> b!3528494 m!3982907))

(assert (=> b!3528494 m!3983447))

(assert (=> b!3528494 m!3982911))

(declare-fun m!3983449 () Bool)

(assert (=> b!3528494 m!3983449))

(assert (=> b!3528494 m!3982905))

(assert (=> b!3528494 m!3982899))

(assert (=> b!3528178 d!1029858))

(declare-fun d!1029860 () Bool)

(assert (=> d!1029860 (= (list!13689 (charsOf!3504 separatorToken!241)) (list!13693 (c!608161 (charsOf!3504 separatorToken!241))))))

(declare-fun bs!565796 () Bool)

(assert (= bs!565796 d!1029860))

(declare-fun m!3983451 () Bool)

(assert (=> bs!565796 m!3983451))

(assert (=> b!3528178 d!1029860))

(declare-fun d!1029862 () Bool)

(declare-fun lt!1206355 () BalanceConc!22324)

(assert (=> d!1029862 (= (list!13689 lt!1206355) (originalCharacters!6204 (h!42827 (t!282696 tokens!494))))))

(assert (=> d!1029862 (= lt!1206355 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (value!176925 (h!42827 (t!282696 tokens!494)))))))

(assert (=> d!1029862 (= (charsOf!3504 (h!42827 (t!282696 tokens!494))) lt!1206355)))

(declare-fun b_lambda!103189 () Bool)

(assert (=> (not b_lambda!103189) (not d!1029862)))

(declare-fun t!282726 () Bool)

(declare-fun tb!197425 () Bool)

(assert (=> (and b!3528190 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282726) tb!197425))

(declare-fun b!3528496 () Bool)

(declare-fun e!2184314 () Bool)

(declare-fun tp!1088122 () Bool)

(assert (=> b!3528496 (= e!2184314 (and (inv!50648 (c!608161 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (value!176925 (h!42827 (t!282696 tokens!494)))))) tp!1088122))))

(declare-fun result!241854 () Bool)

(assert (=> tb!197425 (= result!241854 (and (inv!50649 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (value!176925 (h!42827 (t!282696 tokens!494))))) e!2184314))))

(assert (= tb!197425 b!3528496))

(declare-fun m!3983453 () Bool)

(assert (=> b!3528496 m!3983453))

(declare-fun m!3983455 () Bool)

(assert (=> tb!197425 m!3983455))

(assert (=> d!1029862 t!282726))

(declare-fun b_and!251627 () Bool)

(assert (= b_and!251621 (and (=> t!282726 result!241854) b_and!251627)))

(declare-fun t!282728 () Bool)

(declare-fun tb!197427 () Bool)

(assert (=> (and b!3528203 (= (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282728) tb!197427))

(declare-fun result!241856 () Bool)

(assert (= result!241856 result!241854))

(assert (=> d!1029862 t!282728))

(declare-fun b_and!251629 () Bool)

(assert (= b_and!251623 (and (=> t!282728 result!241856) b_and!251629)))

(declare-fun tb!197429 () Bool)

(declare-fun t!282730 () Bool)

(assert (=> (and b!3528170 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282730) tb!197429))

(declare-fun result!241858 () Bool)

(assert (= result!241858 result!241854))

(assert (=> d!1029862 t!282730))

(declare-fun b_and!251631 () Bool)

(assert (= b_and!251625 (and (=> t!282730 result!241858) b_and!251631)))

(declare-fun m!3983457 () Bool)

(assert (=> d!1029862 m!3983457))

(declare-fun m!3983459 () Bool)

(assert (=> d!1029862 m!3983459))

(assert (=> b!3528178 d!1029862))

(declare-fun d!1029864 () Bool)

(declare-fun lt!1206357 () Bool)

(declare-fun e!2184315 () Bool)

(assert (=> d!1029864 (= lt!1206357 e!2184315)))

(declare-fun res!1423685 () Bool)

(assert (=> d!1029864 (=> (not res!1423685) (not e!2184315))))

(assert (=> d!1029864 (= res!1423685 (= (list!13691 (_1!21764 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 (h!42827 (t!282696 tokens!494))))))) (list!13691 (singletonSeq!2586 (h!42827 (t!282696 tokens!494))))))))

(declare-fun e!2184316 () Bool)

(assert (=> d!1029864 (= lt!1206357 e!2184316)))

(declare-fun res!1423683 () Bool)

(assert (=> d!1029864 (=> (not res!1423683) (not e!2184316))))

(declare-fun lt!1206356 () tuple2!37260)

(assert (=> d!1029864 (= res!1423683 (= (size!28475 (_1!21764 lt!1206356)) 1))))

(assert (=> d!1029864 (= lt!1206356 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 (h!42827 (t!282696 tokens!494))))))))

(assert (=> d!1029864 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029864 (= (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 (t!282696 tokens!494))) lt!1206357)))

(declare-fun b!3528497 () Bool)

(declare-fun res!1423684 () Bool)

(assert (=> b!3528497 (=> (not res!1423684) (not e!2184316))))

(assert (=> b!3528497 (= res!1423684 (= (apply!8938 (_1!21764 lt!1206356) 0) (h!42827 (t!282696 tokens!494))))))

(declare-fun b!3528498 () Bool)

(assert (=> b!3528498 (= e!2184316 (isEmpty!21884 (_2!21764 lt!1206356)))))

(declare-fun b!3528499 () Bool)

(assert (=> b!3528499 (= e!2184315 (isEmpty!21884 (_2!21764 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 (h!42827 (t!282696 tokens!494))))))))))

(assert (= (and d!1029864 res!1423683) b!3528497))

(assert (= (and b!3528497 res!1423684) b!3528498))

(assert (= (and d!1029864 res!1423685) b!3528499))

(declare-fun m!3983461 () Bool)

(assert (=> d!1029864 m!3983461))

(declare-fun m!3983463 () Bool)

(assert (=> d!1029864 m!3983463))

(assert (=> d!1029864 m!3983033))

(assert (=> d!1029864 m!3982953))

(assert (=> d!1029864 m!3983461))

(assert (=> d!1029864 m!3982953))

(declare-fun m!3983465 () Bool)

(assert (=> d!1029864 m!3983465))

(declare-fun m!3983467 () Bool)

(assert (=> d!1029864 m!3983467))

(assert (=> d!1029864 m!3982953))

(declare-fun m!3983469 () Bool)

(assert (=> d!1029864 m!3983469))

(declare-fun m!3983471 () Bool)

(assert (=> b!3528497 m!3983471))

(declare-fun m!3983473 () Bool)

(assert (=> b!3528498 m!3983473))

(assert (=> b!3528499 m!3982953))

(assert (=> b!3528499 m!3982953))

(assert (=> b!3528499 m!3983461))

(assert (=> b!3528499 m!3983461))

(assert (=> b!3528499 m!3983463))

(declare-fun m!3983475 () Bool)

(assert (=> b!3528499 m!3983475))

(assert (=> b!3528201 d!1029864))

(declare-fun d!1029866 () Bool)

(declare-fun lt!1206360 () Bool)

(assert (=> d!1029866 (= lt!1206360 (select (content!5277 lt!1206283) lt!1206278))))

(declare-fun e!2184321 () Bool)

(assert (=> d!1029866 (= lt!1206360 e!2184321)))

(declare-fun res!1423690 () Bool)

(assert (=> d!1029866 (=> (not res!1423690) (not e!2184321))))

(assert (=> d!1029866 (= res!1423690 ((_ is Cons!37405) lt!1206283))))

(assert (=> d!1029866 (= (contains!7036 lt!1206283 lt!1206278) lt!1206360)))

(declare-fun b!3528504 () Bool)

(declare-fun e!2184322 () Bool)

(assert (=> b!3528504 (= e!2184321 e!2184322)))

(declare-fun res!1423691 () Bool)

(assert (=> b!3528504 (=> res!1423691 e!2184322)))

(assert (=> b!3528504 (= res!1423691 (= (h!42825 lt!1206283) lt!1206278))))

(declare-fun b!3528505 () Bool)

(assert (=> b!3528505 (= e!2184322 (contains!7036 (t!282694 lt!1206283) lt!1206278))))

(assert (= (and d!1029866 res!1423690) b!3528504))

(assert (= (and b!3528504 (not res!1423691)) b!3528505))

(declare-fun m!3983477 () Bool)

(assert (=> d!1029866 m!3983477))

(declare-fun m!3983479 () Bool)

(assert (=> d!1029866 m!3983479))

(declare-fun m!3983481 () Bool)

(assert (=> b!3528505 m!3983481))

(assert (=> b!3528201 d!1029866))

(declare-fun d!1029868 () Bool)

(declare-fun e!2184325 () Bool)

(assert (=> d!1029868 e!2184325))

(declare-fun res!1423694 () Bool)

(assert (=> d!1029868 (=> (not res!1423694) (not e!2184325))))

(declare-fun lt!1206363 () BalanceConc!22326)

(assert (=> d!1029868 (= res!1423694 (= (list!13691 lt!1206363) (Cons!37407 separatorToken!241 Nil!37407)))))

(declare-fun singleton!1155 (Token!10346) BalanceConc!22326)

(assert (=> d!1029868 (= lt!1206363 (singleton!1155 separatorToken!241))))

(assert (=> d!1029868 (= (singletonSeq!2586 separatorToken!241) lt!1206363)))

(declare-fun b!3528508 () Bool)

(declare-fun isBalanced!3464 (Conc!11356) Bool)

(assert (=> b!3528508 (= e!2184325 (isBalanced!3464 (c!608162 lt!1206363)))))

(assert (= (and d!1029868 res!1423694) b!3528508))

(declare-fun m!3983483 () Bool)

(assert (=> d!1029868 m!3983483))

(declare-fun m!3983485 () Bool)

(assert (=> d!1029868 m!3983485))

(declare-fun m!3983487 () Bool)

(assert (=> b!3528508 m!3983487))

(assert (=> b!3528201 d!1029868))

(declare-fun b!3528536 () Bool)

(declare-fun e!2184343 () Option!7643)

(assert (=> b!3528536 (= e!2184343 None!7642)))

(declare-fun b!3528537 () Bool)

(declare-fun e!2184346 () Option!7643)

(assert (=> b!3528537 (= e!2184346 e!2184343)))

(declare-fun c!608230 () Bool)

(assert (=> b!3528537 (= c!608230 (and ((_ is Cons!37406) rules!2135) (not (= (tag!6134 (h!42826 rules!2135)) (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))))))))

(declare-fun b!3528538 () Bool)

(declare-fun e!2184345 () Bool)

(declare-fun e!2184344 () Bool)

(assert (=> b!3528538 (= e!2184345 e!2184344)))

(declare-fun res!1423709 () Bool)

(assert (=> b!3528538 (=> (not res!1423709) (not e!2184344))))

(declare-fun lt!1206373 () Option!7643)

(assert (=> b!3528538 (= res!1423709 (contains!7035 rules!2135 (get!12016 lt!1206373)))))

(declare-fun b!3528539 () Bool)

(declare-fun lt!1206375 () Unit!53110)

(declare-fun lt!1206374 () Unit!53110)

(assert (=> b!3528539 (= lt!1206375 lt!1206374)))

(assert (=> b!3528539 (rulesInvariant!4476 thiss!18206 (t!282695 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!467 (LexerInterface!5079 Rule!10780 List!37530) Unit!53110)

(assert (=> b!3528539 (= lt!1206374 (lemmaInvariantOnRulesThenOnTail!467 thiss!18206 (h!42826 rules!2135) (t!282695 rules!2135)))))

(assert (=> b!3528539 (= e!2184343 (getRuleFromTag!1133 thiss!18206 (t!282695 rules!2135) (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun d!1029870 () Bool)

(assert (=> d!1029870 e!2184345))

(declare-fun res!1423708 () Bool)

(assert (=> d!1029870 (=> res!1423708 e!2184345)))

(declare-fun isEmpty!21892 (Option!7643) Bool)

(assert (=> d!1029870 (= res!1423708 (isEmpty!21892 lt!1206373))))

(assert (=> d!1029870 (= lt!1206373 e!2184346)))

(declare-fun c!608229 () Bool)

(assert (=> d!1029870 (= c!608229 (and ((_ is Cons!37406) rules!2135) (= (tag!6134 (h!42826 rules!2135)) (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))

(assert (=> d!1029870 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1029870 (= (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))) lt!1206373)))

(declare-fun b!3528540 () Bool)

(assert (=> b!3528540 (= e!2184346 (Some!7642 (h!42826 rules!2135)))))

(declare-fun b!3528541 () Bool)

(assert (=> b!3528541 (= e!2184344 (= (tag!6134 (get!12016 lt!1206373)) (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(assert (= (and d!1029870 c!608229) b!3528540))

(assert (= (and d!1029870 (not c!608229)) b!3528537))

(assert (= (and b!3528537 c!608230) b!3528539))

(assert (= (and b!3528537 (not c!608230)) b!3528536))

(assert (= (and d!1029870 (not res!1423708)) b!3528538))

(assert (= (and b!3528538 res!1423709) b!3528541))

(declare-fun m!3983499 () Bool)

(assert (=> b!3528538 m!3983499))

(assert (=> b!3528538 m!3983499))

(declare-fun m!3983505 () Bool)

(assert (=> b!3528538 m!3983505))

(declare-fun m!3983507 () Bool)

(assert (=> b!3528539 m!3983507))

(declare-fun m!3983511 () Bool)

(assert (=> b!3528539 m!3983511))

(declare-fun m!3983515 () Bool)

(assert (=> b!3528539 m!3983515))

(declare-fun m!3983517 () Bool)

(assert (=> d!1029870 m!3983517))

(assert (=> d!1029870 m!3982939))

(assert (=> b!3528541 m!3983499))

(assert (=> b!3528201 d!1029870))

(declare-fun d!1029874 () Bool)

(declare-fun lt!1206378 () Int)

(declare-fun size!28477 (List!37531) Int)

(assert (=> d!1029874 (= lt!1206378 (size!28477 (list!13691 (_1!21764 lt!1206268))))))

(declare-fun size!28478 (Conc!11356) Int)

(assert (=> d!1029874 (= lt!1206378 (size!28478 (c!608162 (_1!21764 lt!1206268))))))

(assert (=> d!1029874 (= (size!28475 (_1!21764 lt!1206268)) lt!1206378)))

(declare-fun bs!565798 () Bool)

(assert (= bs!565798 d!1029874))

(assert (=> bs!565798 m!3983273))

(assert (=> bs!565798 m!3983273))

(declare-fun m!3983521 () Bool)

(assert (=> bs!565798 m!3983521))

(declare-fun m!3983523 () Bool)

(assert (=> bs!565798 m!3983523))

(assert (=> b!3528201 d!1029874))

(declare-fun d!1029878 () Bool)

(assert (=> d!1029878 (= (maxPrefixOneRule!1786 thiss!18206 (rule!8150 (h!42827 (t!282696 tokens!494))) lt!1206258) (Some!7643 (tuple2!37263 (Token!10347 (apply!8939 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (seqFromList!4033 lt!1206258)) (rule!8150 (h!42827 (t!282696 tokens!494))) (size!28474 lt!1206258) lt!1206258) Nil!37405)))))

(declare-fun lt!1206392 () Unit!53110)

(declare-fun choose!20500 (LexerInterface!5079 List!37530 List!37529 List!37529 List!37529 Rule!10780) Unit!53110)

(assert (=> d!1029878 (= lt!1206392 (choose!20500 thiss!18206 rules!2135 lt!1206258 lt!1206258 Nil!37405 (rule!8150 (h!42827 (t!282696 tokens!494)))))))

(assert (=> d!1029878 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029878 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!879 thiss!18206 rules!2135 lt!1206258 lt!1206258 Nil!37405 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206392)))

(declare-fun bs!565802 () Bool)

(assert (= bs!565802 d!1029878))

(assert (=> bs!565802 m!3982943))

(assert (=> bs!565802 m!3982969))

(assert (=> bs!565802 m!3983001))

(declare-fun m!3983581 () Bool)

(assert (=> bs!565802 m!3983581))

(assert (=> bs!565802 m!3983033))

(assert (=> bs!565802 m!3982943))

(assert (=> bs!565802 m!3982945))

(assert (=> b!3528201 d!1029878))

(declare-fun d!1029904 () Bool)

(declare-fun e!2184385 () Bool)

(assert (=> d!1029904 e!2184385))

(declare-fun res!1423749 () Bool)

(assert (=> d!1029904 (=> (not res!1423749) (not e!2184385))))

(declare-fun e!2184387 () Bool)

(assert (=> d!1029904 (= res!1423749 e!2184387)))

(declare-fun c!608240 () Bool)

(declare-fun lt!1206402 () tuple2!37260)

(assert (=> d!1029904 (= c!608240 (> (size!28475 (_1!21764 lt!1206402)) 0))))

(declare-fun lexTailRecV2!1092 (LexerInterface!5079 List!37530 BalanceConc!22324 BalanceConc!22324 BalanceConc!22324 BalanceConc!22326) tuple2!37260)

(assert (=> d!1029904 (= lt!1206402 (lexTailRecV2!1092 thiss!18206 rules!2135 lt!1206237 (BalanceConc!22325 Empty!11355) lt!1206237 (BalanceConc!22327 Empty!11356)))))

(assert (=> d!1029904 (= (lex!2405 thiss!18206 rules!2135 lt!1206237) lt!1206402)))

(declare-fun b!3528600 () Bool)

(declare-datatypes ((tuple2!37266 0))(
  ( (tuple2!37267 (_1!21767 List!37531) (_2!21767 List!37529)) )
))
(declare-fun lexList!1484 (LexerInterface!5079 List!37530 List!37529) tuple2!37266)

(assert (=> b!3528600 (= e!2184385 (= (list!13689 (_2!21764 lt!1206402)) (_2!21767 (lexList!1484 thiss!18206 rules!2135 (list!13689 lt!1206237)))))))

(declare-fun b!3528601 () Bool)

(declare-fun res!1423751 () Bool)

(assert (=> b!3528601 (=> (not res!1423751) (not e!2184385))))

(assert (=> b!3528601 (= res!1423751 (= (list!13691 (_1!21764 lt!1206402)) (_1!21767 (lexList!1484 thiss!18206 rules!2135 (list!13689 lt!1206237)))))))

(declare-fun b!3528602 () Bool)

(declare-fun e!2184386 () Bool)

(assert (=> b!3528602 (= e!2184386 (not (isEmpty!21883 (_1!21764 lt!1206402))))))

(declare-fun b!3528603 () Bool)

(assert (=> b!3528603 (= e!2184387 e!2184386)))

(declare-fun res!1423750 () Bool)

(declare-fun size!28479 (BalanceConc!22324) Int)

(assert (=> b!3528603 (= res!1423750 (< (size!28479 (_2!21764 lt!1206402)) (size!28479 lt!1206237)))))

(assert (=> b!3528603 (=> (not res!1423750) (not e!2184386))))

(declare-fun b!3528604 () Bool)

(assert (=> b!3528604 (= e!2184387 (= (_2!21764 lt!1206402) lt!1206237))))

(assert (= (and d!1029904 c!608240) b!3528603))

(assert (= (and d!1029904 (not c!608240)) b!3528604))

(assert (= (and b!3528603 res!1423750) b!3528602))

(assert (= (and d!1029904 res!1423749) b!3528601))

(assert (= (and b!3528601 res!1423751) b!3528600))

(declare-fun m!3983615 () Bool)

(assert (=> d!1029904 m!3983615))

(declare-fun m!3983617 () Bool)

(assert (=> d!1029904 m!3983617))

(declare-fun m!3983619 () Bool)

(assert (=> b!3528600 m!3983619))

(declare-fun m!3983621 () Bool)

(assert (=> b!3528600 m!3983621))

(assert (=> b!3528600 m!3983621))

(declare-fun m!3983623 () Bool)

(assert (=> b!3528600 m!3983623))

(declare-fun m!3983625 () Bool)

(assert (=> b!3528602 m!3983625))

(declare-fun m!3983627 () Bool)

(assert (=> b!3528601 m!3983627))

(assert (=> b!3528601 m!3983621))

(assert (=> b!3528601 m!3983621))

(assert (=> b!3528601 m!3983623))

(declare-fun m!3983629 () Bool)

(assert (=> b!3528603 m!3983629))

(declare-fun m!3983631 () Bool)

(assert (=> b!3528603 m!3983631))

(assert (=> b!3528201 d!1029904))

(declare-fun d!1029912 () Bool)

(declare-fun lt!1206405 () BalanceConc!22324)

(assert (=> d!1029912 (= (list!13689 lt!1206405) (printList!1627 thiss!18206 (list!13691 lt!1206273)))))

(assert (=> d!1029912 (= lt!1206405 (printTailRec!1574 thiss!18206 lt!1206273 0 (BalanceConc!22325 Empty!11355)))))

(assert (=> d!1029912 (= (print!2144 thiss!18206 lt!1206273) lt!1206405)))

(declare-fun bs!565803 () Bool)

(assert (= bs!565803 d!1029912))

(declare-fun m!3983633 () Bool)

(assert (=> bs!565803 m!3983633))

(declare-fun m!3983635 () Bool)

(assert (=> bs!565803 m!3983635))

(assert (=> bs!565803 m!3983635))

(declare-fun m!3983637 () Bool)

(assert (=> bs!565803 m!3983637))

(assert (=> bs!565803 m!3982993))

(assert (=> b!3528201 d!1029912))

(declare-fun d!1029914 () Bool)

(assert (=> d!1029914 (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 tokens!494))))

(declare-fun lt!1206435 () Unit!53110)

(declare-fun choose!20501 (LexerInterface!5079 List!37530 List!37531 Token!10346) Unit!53110)

(assert (=> d!1029914 (= lt!1206435 (choose!20501 thiss!18206 rules!2135 tokens!494 (h!42827 tokens!494)))))

(assert (=> d!1029914 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029914 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1068 thiss!18206 rules!2135 tokens!494 (h!42827 tokens!494)) lt!1206435)))

(declare-fun bs!565805 () Bool)

(assert (= bs!565805 d!1029914))

(assert (=> bs!565805 m!3983089))

(declare-fun m!3983673 () Bool)

(assert (=> bs!565805 m!3983673))

(assert (=> bs!565805 m!3983033))

(assert (=> b!3528201 d!1029914))

(declare-fun d!1029926 () Bool)

(assert (=> d!1029926 (= (head!7405 lt!1206258) (h!42825 lt!1206258))))

(assert (=> b!3528201 d!1029926))

(declare-fun d!1029928 () Bool)

(declare-fun c!608258 () Bool)

(assert (=> d!1029928 (= c!608258 (or ((_ is EmptyExpr!10249) (regex!5490 (rule!8150 (h!42827 tokens!494)))) ((_ is EmptyLang!10249) (regex!5490 (rule!8150 (h!42827 tokens!494))))))))

(declare-fun e!2184427 () List!37529)

(assert (=> d!1029928 (= (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494)))) e!2184427)))

(declare-fun b!3528672 () Bool)

(declare-fun e!2184426 () List!37529)

(declare-fun e!2184428 () List!37529)

(assert (=> b!3528672 (= e!2184426 e!2184428)))

(declare-fun c!608259 () Bool)

(assert (=> b!3528672 (= c!608259 ((_ is Union!10249) (regex!5490 (rule!8150 (h!42827 tokens!494)))))))

(declare-fun b!3528673 () Bool)

(declare-fun e!2184425 () List!37529)

(assert (=> b!3528673 (= e!2184427 e!2184425)))

(declare-fun c!608260 () Bool)

(assert (=> b!3528673 (= c!608260 ((_ is ElementMatch!10249) (regex!5490 (rule!8150 (h!42827 tokens!494)))))))

(declare-fun call!254813 () List!37529)

(declare-fun bm!254808 () Bool)

(declare-fun call!254815 () List!37529)

(declare-fun call!254816 () List!37529)

(assert (=> bm!254808 (= call!254815 (++!9277 (ite c!608259 call!254816 call!254813) (ite c!608259 call!254813 call!254816)))))

(declare-fun b!3528674 () Bool)

(assert (=> b!3528674 (= e!2184425 (Cons!37405 (c!608160 (regex!5490 (rule!8150 (h!42827 tokens!494)))) Nil!37405))))

(declare-fun bm!254809 () Bool)

(assert (=> bm!254809 (= call!254816 (usedCharacters!724 (ite c!608259 (regOne!21011 (regex!5490 (rule!8150 (h!42827 tokens!494)))) (regTwo!21010 (regex!5490 (rule!8150 (h!42827 tokens!494)))))))))

(declare-fun b!3528675 () Bool)

(assert (=> b!3528675 (= e!2184428 call!254815)))

(declare-fun b!3528676 () Bool)

(declare-fun c!608261 () Bool)

(assert (=> b!3528676 (= c!608261 ((_ is Star!10249) (regex!5490 (rule!8150 (h!42827 tokens!494)))))))

(assert (=> b!3528676 (= e!2184425 e!2184426)))

(declare-fun b!3528677 () Bool)

(assert (=> b!3528677 (= e!2184427 Nil!37405)))

(declare-fun call!254814 () List!37529)

(declare-fun bm!254810 () Bool)

(assert (=> bm!254810 (= call!254814 (usedCharacters!724 (ite c!608261 (reg!10578 (regex!5490 (rule!8150 (h!42827 tokens!494)))) (ite c!608259 (regTwo!21011 (regex!5490 (rule!8150 (h!42827 tokens!494)))) (regOne!21010 (regex!5490 (rule!8150 (h!42827 tokens!494))))))))))

(declare-fun bm!254811 () Bool)

(assert (=> bm!254811 (= call!254813 call!254814)))

(declare-fun b!3528678 () Bool)

(assert (=> b!3528678 (= e!2184428 call!254815)))

(declare-fun b!3528679 () Bool)

(assert (=> b!3528679 (= e!2184426 call!254814)))

(assert (= (and d!1029928 c!608258) b!3528677))

(assert (= (and d!1029928 (not c!608258)) b!3528673))

(assert (= (and b!3528673 c!608260) b!3528674))

(assert (= (and b!3528673 (not c!608260)) b!3528676))

(assert (= (and b!3528676 c!608261) b!3528679))

(assert (= (and b!3528676 (not c!608261)) b!3528672))

(assert (= (and b!3528672 c!608259) b!3528675))

(assert (= (and b!3528672 (not c!608259)) b!3528678))

(assert (= (or b!3528675 b!3528678) bm!254811))

(assert (= (or b!3528675 b!3528678) bm!254809))

(assert (= (or b!3528675 b!3528678) bm!254808))

(assert (= (or b!3528679 bm!254811) bm!254810))

(declare-fun m!3983719 () Bool)

(assert (=> bm!254808 m!3983719))

(declare-fun m!3983721 () Bool)

(assert (=> bm!254809 m!3983721))

(declare-fun m!3983723 () Bool)

(assert (=> bm!254810 m!3983723))

(assert (=> b!3528201 d!1029928))

(declare-fun d!1029932 () Bool)

(assert (=> d!1029932 (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 (t!282696 tokens!494)))))

(declare-fun lt!1206441 () Unit!53110)

(assert (=> d!1029932 (= lt!1206441 (choose!20501 thiss!18206 rules!2135 tokens!494 (h!42827 (t!282696 tokens!494))))))

(assert (=> d!1029932 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029932 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1068 thiss!18206 rules!2135 tokens!494 (h!42827 (t!282696 tokens!494))) lt!1206441)))

(declare-fun bs!565806 () Bool)

(assert (= bs!565806 d!1029932))

(assert (=> bs!565806 m!3982983))

(declare-fun m!3983725 () Bool)

(assert (=> bs!565806 m!3983725))

(assert (=> bs!565806 m!3983033))

(assert (=> b!3528201 d!1029932))

(declare-fun d!1029934 () Bool)

(assert (=> d!1029934 (= (head!7405 lt!1206247) (h!42825 lt!1206247))))

(assert (=> b!3528201 d!1029934))

(declare-fun d!1029936 () Bool)

(assert (=> d!1029936 (not (contains!7036 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494)))) lt!1206270))))

(declare-fun lt!1206447 () Unit!53110)

(declare-fun choose!20502 (LexerInterface!5079 List!37530 List!37530 Rule!10780 Rule!10780 C!20684) Unit!53110)

(assert (=> d!1029936 (= lt!1206447 (choose!20502 thiss!18206 rules!2135 rules!2135 (rule!8150 (h!42827 tokens!494)) (rule!8150 separatorToken!241) lt!1206270))))

(assert (=> d!1029936 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1029936 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!290 thiss!18206 rules!2135 rules!2135 (rule!8150 (h!42827 tokens!494)) (rule!8150 separatorToken!241) lt!1206270) lt!1206447)))

(declare-fun bs!565808 () Bool)

(assert (= bs!565808 d!1029936))

(assert (=> bs!565808 m!3983013))

(assert (=> bs!565808 m!3983013))

(assert (=> bs!565808 m!3983015))

(declare-fun m!3983729 () Bool)

(assert (=> bs!565808 m!3983729))

(assert (=> bs!565808 m!3982939))

(assert (=> b!3528201 d!1029936))

(declare-fun b!3528680 () Bool)

(declare-fun e!2184429 () Option!7643)

(assert (=> b!3528680 (= e!2184429 None!7642)))

(declare-fun b!3528681 () Bool)

(declare-fun e!2184432 () Option!7643)

(assert (=> b!3528681 (= e!2184432 e!2184429)))

(declare-fun c!608265 () Bool)

(assert (=> b!3528681 (= c!608265 (and ((_ is Cons!37406) rules!2135) (not (= (tag!6134 (h!42826 rules!2135)) (tag!6134 (rule!8150 (h!42827 tokens!494)))))))))

(declare-fun b!3528682 () Bool)

(declare-fun e!2184431 () Bool)

(declare-fun e!2184430 () Bool)

(assert (=> b!3528682 (= e!2184431 e!2184430)))

(declare-fun res!1423786 () Bool)

(assert (=> b!3528682 (=> (not res!1423786) (not e!2184430))))

(declare-fun lt!1206448 () Option!7643)

(assert (=> b!3528682 (= res!1423786 (contains!7035 rules!2135 (get!12016 lt!1206448)))))

(declare-fun b!3528683 () Bool)

(declare-fun lt!1206450 () Unit!53110)

(declare-fun lt!1206449 () Unit!53110)

(assert (=> b!3528683 (= lt!1206450 lt!1206449)))

(assert (=> b!3528683 (rulesInvariant!4476 thiss!18206 (t!282695 rules!2135))))

(assert (=> b!3528683 (= lt!1206449 (lemmaInvariantOnRulesThenOnTail!467 thiss!18206 (h!42826 rules!2135) (t!282695 rules!2135)))))

(assert (=> b!3528683 (= e!2184429 (getRuleFromTag!1133 thiss!18206 (t!282695 rules!2135) (tag!6134 (rule!8150 (h!42827 tokens!494)))))))

(declare-fun d!1029940 () Bool)

(assert (=> d!1029940 e!2184431))

(declare-fun res!1423785 () Bool)

(assert (=> d!1029940 (=> res!1423785 e!2184431)))

(assert (=> d!1029940 (= res!1423785 (isEmpty!21892 lt!1206448))))

(assert (=> d!1029940 (= lt!1206448 e!2184432)))

(declare-fun c!608264 () Bool)

(assert (=> d!1029940 (= c!608264 (and ((_ is Cons!37406) rules!2135) (= (tag!6134 (h!42826 rules!2135)) (tag!6134 (rule!8150 (h!42827 tokens!494))))))))

(assert (=> d!1029940 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1029940 (= (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 tokens!494)))) lt!1206448)))

(declare-fun b!3528684 () Bool)

(assert (=> b!3528684 (= e!2184432 (Some!7642 (h!42826 rules!2135)))))

(declare-fun b!3528685 () Bool)

(assert (=> b!3528685 (= e!2184430 (= (tag!6134 (get!12016 lt!1206448)) (tag!6134 (rule!8150 (h!42827 tokens!494)))))))

(assert (= (and d!1029940 c!608264) b!3528684))

(assert (= (and d!1029940 (not c!608264)) b!3528681))

(assert (= (and b!3528681 c!608265) b!3528683))

(assert (= (and b!3528681 (not c!608265)) b!3528680))

(assert (= (and d!1029940 (not res!1423785)) b!3528682))

(assert (= (and b!3528682 res!1423786) b!3528685))

(declare-fun m!3983731 () Bool)

(assert (=> b!3528682 m!3983731))

(assert (=> b!3528682 m!3983731))

(declare-fun m!3983733 () Bool)

(assert (=> b!3528682 m!3983733))

(assert (=> b!3528683 m!3983507))

(assert (=> b!3528683 m!3983511))

(declare-fun m!3983735 () Bool)

(assert (=> b!3528683 m!3983735))

(declare-fun m!3983737 () Bool)

(assert (=> d!1029940 m!3983737))

(assert (=> d!1029940 m!3982939))

(assert (=> b!3528685 m!3983731))

(assert (=> b!3528201 d!1029940))

(declare-fun d!1029942 () Bool)

(assert (=> d!1029942 (= (maxPrefixOneRule!1786 thiss!18206 (rule!8150 (h!42827 tokens!494)) lt!1206246) (Some!7643 (tuple2!37263 (Token!10347 (apply!8939 (transformation!5490 (rule!8150 (h!42827 tokens!494))) (seqFromList!4033 lt!1206246)) (rule!8150 (h!42827 tokens!494)) (size!28474 lt!1206246) lt!1206246) Nil!37405)))))

(declare-fun lt!1206451 () Unit!53110)

(assert (=> d!1029942 (= lt!1206451 (choose!20500 thiss!18206 rules!2135 lt!1206246 lt!1206246 Nil!37405 (rule!8150 (h!42827 tokens!494))))))

(assert (=> d!1029942 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029942 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!879 thiss!18206 rules!2135 lt!1206246 lt!1206246 Nil!37405 (rule!8150 (h!42827 tokens!494))) lt!1206451)))

(declare-fun bs!565809 () Bool)

(assert (= bs!565809 d!1029942))

(assert (=> bs!565809 m!3982927))

(assert (=> bs!565809 m!3982965))

(assert (=> bs!565809 m!3983029))

(declare-fun m!3983739 () Bool)

(assert (=> bs!565809 m!3983739))

(assert (=> bs!565809 m!3983033))

(assert (=> bs!565809 m!3982927))

(declare-fun m!3983741 () Bool)

(assert (=> bs!565809 m!3983741))

(assert (=> b!3528201 d!1029942))

(declare-fun d!1029944 () Bool)

(declare-fun lt!1206452 () Bool)

(assert (=> d!1029944 (= lt!1206452 (select (content!5277 lt!1206283) lt!1206270))))

(declare-fun e!2184433 () Bool)

(assert (=> d!1029944 (= lt!1206452 e!2184433)))

(declare-fun res!1423787 () Bool)

(assert (=> d!1029944 (=> (not res!1423787) (not e!2184433))))

(assert (=> d!1029944 (= res!1423787 ((_ is Cons!37405) lt!1206283))))

(assert (=> d!1029944 (= (contains!7036 lt!1206283 lt!1206270) lt!1206452)))

(declare-fun b!3528686 () Bool)

(declare-fun e!2184434 () Bool)

(assert (=> b!3528686 (= e!2184433 e!2184434)))

(declare-fun res!1423788 () Bool)

(assert (=> b!3528686 (=> res!1423788 e!2184434)))

(assert (=> b!3528686 (= res!1423788 (= (h!42825 lt!1206283) lt!1206270))))

(declare-fun b!3528687 () Bool)

(assert (=> b!3528687 (= e!2184434 (contains!7036 (t!282694 lt!1206283) lt!1206270))))

(assert (= (and d!1029944 res!1423787) b!3528686))

(assert (= (and b!3528686 (not res!1423788)) b!3528687))

(assert (=> d!1029944 m!3983477))

(declare-fun m!3983743 () Bool)

(assert (=> d!1029944 m!3983743))

(declare-fun m!3983745 () Bool)

(assert (=> b!3528687 m!3983745))

(assert (=> b!3528201 d!1029944))

(declare-fun d!1029946 () Bool)

(declare-fun e!2184439 () Bool)

(assert (=> d!1029946 e!2184439))

(declare-fun res!1423795 () Bool)

(assert (=> d!1029946 (=> (not res!1423795) (not e!2184439))))

(assert (=> d!1029946 (= res!1423795 (isDefined!5890 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 tokens!494))))))))

(declare-fun lt!1206459 () Unit!53110)

(declare-fun choose!20504 (LexerInterface!5079 List!37530 List!37529 Token!10346) Unit!53110)

(assert (=> d!1029946 (= lt!1206459 (choose!20504 thiss!18206 rules!2135 lt!1206246 (h!42827 tokens!494)))))

(assert (=> d!1029946 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1029946 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 thiss!18206 rules!2135 lt!1206246 (h!42827 tokens!494)) lt!1206459)))

(declare-fun b!3528694 () Bool)

(declare-fun res!1423796 () Bool)

(assert (=> b!3528694 (=> (not res!1423796) (not e!2184439))))

(assert (=> b!3528694 (= res!1423796 (matchR!4833 (regex!5490 (get!12016 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 tokens!494)))))) (list!13689 (charsOf!3504 (h!42827 tokens!494)))))))

(declare-fun b!3528695 () Bool)

(assert (=> b!3528695 (= e!2184439 (= (rule!8150 (h!42827 tokens!494)) (get!12016 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 tokens!494)))))))))

(assert (= (and d!1029946 res!1423795) b!3528694))

(assert (= (and b!3528694 res!1423796) b!3528695))

(assert (=> d!1029946 m!3982973))

(assert (=> d!1029946 m!3982973))

(declare-fun m!3983759 () Bool)

(assert (=> d!1029946 m!3983759))

(declare-fun m!3983761 () Bool)

(assert (=> d!1029946 m!3983761))

(assert (=> d!1029946 m!3982939))

(assert (=> b!3528694 m!3982973))

(declare-fun m!3983763 () Bool)

(assert (=> b!3528694 m!3983763))

(assert (=> b!3528694 m!3982973))

(assert (=> b!3528694 m!3983057))

(assert (=> b!3528694 m!3983059))

(declare-fun m!3983765 () Bool)

(assert (=> b!3528694 m!3983765))

(assert (=> b!3528694 m!3983057))

(assert (=> b!3528694 m!3983059))

(assert (=> b!3528695 m!3982973))

(assert (=> b!3528695 m!3982973))

(assert (=> b!3528695 m!3983763))

(assert (=> b!3528201 d!1029946))

(declare-fun d!1029952 () Bool)

(declare-fun fromListB!1855 (List!37529) BalanceConc!22324)

(assert (=> d!1029952 (= (seqFromList!4033 lt!1206258) (fromListB!1855 lt!1206258))))

(declare-fun bs!565811 () Bool)

(assert (= bs!565811 d!1029952))

(declare-fun m!3983767 () Bool)

(assert (=> bs!565811 m!3983767))

(assert (=> b!3528201 d!1029952))

(declare-fun b!3528712 () Bool)

(declare-fun e!2184448 () Option!7643)

(assert (=> b!3528712 (= e!2184448 None!7642)))

(declare-fun b!3528713 () Bool)

(declare-fun e!2184451 () Option!7643)

(assert (=> b!3528713 (= e!2184451 e!2184448)))

(declare-fun c!608275 () Bool)

(assert (=> b!3528713 (= c!608275 (and ((_ is Cons!37406) rules!2135) (not (= (tag!6134 (h!42826 rules!2135)) (tag!6134 (rule!8150 separatorToken!241))))))))

(declare-fun b!3528714 () Bool)

(declare-fun e!2184450 () Bool)

(declare-fun e!2184449 () Bool)

(assert (=> b!3528714 (= e!2184450 e!2184449)))

(declare-fun res!1423798 () Bool)

(assert (=> b!3528714 (=> (not res!1423798) (not e!2184449))))

(declare-fun lt!1206460 () Option!7643)

(assert (=> b!3528714 (= res!1423798 (contains!7035 rules!2135 (get!12016 lt!1206460)))))

(declare-fun b!3528715 () Bool)

(declare-fun lt!1206462 () Unit!53110)

(declare-fun lt!1206461 () Unit!53110)

(assert (=> b!3528715 (= lt!1206462 lt!1206461)))

(assert (=> b!3528715 (rulesInvariant!4476 thiss!18206 (t!282695 rules!2135))))

(assert (=> b!3528715 (= lt!1206461 (lemmaInvariantOnRulesThenOnTail!467 thiss!18206 (h!42826 rules!2135) (t!282695 rules!2135)))))

(assert (=> b!3528715 (= e!2184448 (getRuleFromTag!1133 thiss!18206 (t!282695 rules!2135) (tag!6134 (rule!8150 separatorToken!241))))))

(declare-fun d!1029954 () Bool)

(assert (=> d!1029954 e!2184450))

(declare-fun res!1423797 () Bool)

(assert (=> d!1029954 (=> res!1423797 e!2184450)))

(assert (=> d!1029954 (= res!1423797 (isEmpty!21892 lt!1206460))))

(assert (=> d!1029954 (= lt!1206460 e!2184451)))

(declare-fun c!608274 () Bool)

(assert (=> d!1029954 (= c!608274 (and ((_ is Cons!37406) rules!2135) (= (tag!6134 (h!42826 rules!2135)) (tag!6134 (rule!8150 separatorToken!241)))))))

(assert (=> d!1029954 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1029954 (= (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 separatorToken!241))) lt!1206460)))

(declare-fun b!3528716 () Bool)

(assert (=> b!3528716 (= e!2184451 (Some!7642 (h!42826 rules!2135)))))

(declare-fun b!3528717 () Bool)

(assert (=> b!3528717 (= e!2184449 (= (tag!6134 (get!12016 lt!1206460)) (tag!6134 (rule!8150 separatorToken!241))))))

(assert (= (and d!1029954 c!608274) b!3528716))

(assert (= (and d!1029954 (not c!608274)) b!3528713))

(assert (= (and b!3528713 c!608275) b!3528715))

(assert (= (and b!3528713 (not c!608275)) b!3528712))

(assert (= (and d!1029954 (not res!1423797)) b!3528714))

(assert (= (and b!3528714 res!1423798) b!3528717))

(declare-fun m!3983769 () Bool)

(assert (=> b!3528714 m!3983769))

(assert (=> b!3528714 m!3983769))

(declare-fun m!3983771 () Bool)

(assert (=> b!3528714 m!3983771))

(assert (=> b!3528715 m!3983507))

(assert (=> b!3528715 m!3983511))

(declare-fun m!3983773 () Bool)

(assert (=> b!3528715 m!3983773))

(declare-fun m!3983775 () Bool)

(assert (=> d!1029954 m!3983775))

(assert (=> d!1029954 m!3982939))

(assert (=> b!3528717 m!3983769))

(assert (=> b!3528201 d!1029954))

(declare-fun d!1029956 () Bool)

(declare-fun lt!1206463 () Bool)

(assert (=> d!1029956 (= lt!1206463 (select (content!5277 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494))))) lt!1206270))))

(declare-fun e!2184452 () Bool)

(assert (=> d!1029956 (= lt!1206463 e!2184452)))

(declare-fun res!1423799 () Bool)

(assert (=> d!1029956 (=> (not res!1423799) (not e!2184452))))

(assert (=> d!1029956 (= res!1423799 ((_ is Cons!37405) (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494))))))))

(assert (=> d!1029956 (= (contains!7036 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494)))) lt!1206270) lt!1206463)))

(declare-fun b!3528718 () Bool)

(declare-fun e!2184453 () Bool)

(assert (=> b!3528718 (= e!2184452 e!2184453)))

(declare-fun res!1423800 () Bool)

(assert (=> b!3528718 (=> res!1423800 e!2184453)))

(assert (=> b!3528718 (= res!1423800 (= (h!42825 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494))))) lt!1206270))))

(declare-fun b!3528719 () Bool)

(assert (=> b!3528719 (= e!2184453 (contains!7036 (t!282694 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 tokens!494))))) lt!1206270))))

(assert (= (and d!1029956 res!1423799) b!3528718))

(assert (= (and b!3528718 (not res!1423800)) b!3528719))

(assert (=> d!1029956 m!3983013))

(declare-fun m!3983777 () Bool)

(assert (=> d!1029956 m!3983777))

(declare-fun m!3983779 () Bool)

(assert (=> d!1029956 m!3983779))

(declare-fun m!3983781 () Bool)

(assert (=> b!3528719 m!3983781))

(assert (=> b!3528201 d!1029956))

(declare-fun d!1029958 () Bool)

(declare-fun e!2184454 () Bool)

(assert (=> d!1029958 e!2184454))

(declare-fun res!1423801 () Bool)

(assert (=> d!1029958 (=> (not res!1423801) (not e!2184454))))

(declare-fun e!2184456 () Bool)

(assert (=> d!1029958 (= res!1423801 e!2184456)))

(declare-fun c!608276 () Bool)

(declare-fun lt!1206464 () tuple2!37260)

(assert (=> d!1029958 (= c!608276 (> (size!28475 (_1!21764 lt!1206464)) 0))))

(assert (=> d!1029958 (= lt!1206464 (lexTailRecV2!1092 thiss!18206 rules!2135 lt!1206241 (BalanceConc!22325 Empty!11355) lt!1206241 (BalanceConc!22327 Empty!11356)))))

(assert (=> d!1029958 (= (lex!2405 thiss!18206 rules!2135 lt!1206241) lt!1206464)))

(declare-fun b!3528720 () Bool)

(assert (=> b!3528720 (= e!2184454 (= (list!13689 (_2!21764 lt!1206464)) (_2!21767 (lexList!1484 thiss!18206 rules!2135 (list!13689 lt!1206241)))))))

(declare-fun b!3528721 () Bool)

(declare-fun res!1423803 () Bool)

(assert (=> b!3528721 (=> (not res!1423803) (not e!2184454))))

(assert (=> b!3528721 (= res!1423803 (= (list!13691 (_1!21764 lt!1206464)) (_1!21767 (lexList!1484 thiss!18206 rules!2135 (list!13689 lt!1206241)))))))

(declare-fun b!3528722 () Bool)

(declare-fun e!2184455 () Bool)

(assert (=> b!3528722 (= e!2184455 (not (isEmpty!21883 (_1!21764 lt!1206464))))))

(declare-fun b!3528723 () Bool)

(assert (=> b!3528723 (= e!2184456 e!2184455)))

(declare-fun res!1423802 () Bool)

(assert (=> b!3528723 (= res!1423802 (< (size!28479 (_2!21764 lt!1206464)) (size!28479 lt!1206241)))))

(assert (=> b!3528723 (=> (not res!1423802) (not e!2184455))))

(declare-fun b!3528724 () Bool)

(assert (=> b!3528724 (= e!2184456 (= (_2!21764 lt!1206464) lt!1206241))))

(assert (= (and d!1029958 c!608276) b!3528723))

(assert (= (and d!1029958 (not c!608276)) b!3528724))

(assert (= (and b!3528723 res!1423802) b!3528722))

(assert (= (and d!1029958 res!1423801) b!3528721))

(assert (= (and b!3528721 res!1423803) b!3528720))

(declare-fun m!3983783 () Bool)

(assert (=> d!1029958 m!3983783))

(declare-fun m!3983785 () Bool)

(assert (=> d!1029958 m!3983785))

(declare-fun m!3983787 () Bool)

(assert (=> b!3528720 m!3983787))

(declare-fun m!3983789 () Bool)

(assert (=> b!3528720 m!3983789))

(assert (=> b!3528720 m!3983789))

(declare-fun m!3983791 () Bool)

(assert (=> b!3528720 m!3983791))

(declare-fun m!3983793 () Bool)

(assert (=> b!3528722 m!3983793))

(declare-fun m!3983795 () Bool)

(assert (=> b!3528721 m!3983795))

(assert (=> b!3528721 m!3983789))

(assert (=> b!3528721 m!3983789))

(assert (=> b!3528721 m!3983791))

(declare-fun m!3983797 () Bool)

(assert (=> b!3528723 m!3983797))

(declare-fun m!3983799 () Bool)

(assert (=> b!3528723 m!3983799))

(assert (=> b!3528201 d!1029958))

(declare-fun d!1029960 () Bool)

(declare-fun dynLambda!15975 (Int BalanceConc!22324) TokenValue!5720)

(assert (=> d!1029960 (= (apply!8939 (transformation!5490 (rule!8150 (h!42827 tokens!494))) lt!1206259) (dynLambda!15975 (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) lt!1206259))))

(declare-fun b_lambda!103193 () Bool)

(assert (=> (not b_lambda!103193) (not d!1029960)))

(declare-fun t!282742 () Bool)

(declare-fun tb!197437 () Bool)

(assert (=> (and b!3528190 (= (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282742) tb!197437))

(declare-fun result!241866 () Bool)

(assert (=> tb!197437 (= result!241866 (inv!21 (dynLambda!15975 (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) lt!1206259)))))

(declare-fun m!3983809 () Bool)

(assert (=> tb!197437 m!3983809))

(assert (=> d!1029960 t!282742))

(declare-fun b_and!251639 () Bool)

(assert (= b_and!251591 (and (=> t!282742 result!241866) b_and!251639)))

(declare-fun tb!197439 () Bool)

(declare-fun t!282744 () Bool)

(assert (=> (and b!3528203 (= (toValue!7746 (transformation!5490 (rule!8150 separatorToken!241))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282744) tb!197439))

(declare-fun result!241870 () Bool)

(assert (= result!241870 result!241866))

(assert (=> d!1029960 t!282744))

(declare-fun b_and!251641 () Bool)

(assert (= b_and!251595 (and (=> t!282744 result!241870) b_and!251641)))

(declare-fun t!282746 () Bool)

(declare-fun tb!197441 () Bool)

(assert (=> (and b!3528170 (= (toValue!7746 (transformation!5490 (h!42826 rules!2135))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282746) tb!197441))

(declare-fun result!241872 () Bool)

(assert (= result!241872 result!241866))

(assert (=> d!1029960 t!282746))

(declare-fun b_and!251643 () Bool)

(assert (= b_and!251599 (and (=> t!282746 result!241872) b_and!251643)))

(declare-fun m!3983811 () Bool)

(assert (=> d!1029960 m!3983811))

(assert (=> b!3528201 d!1029960))

(declare-fun d!1029966 () Bool)

(declare-fun e!2184494 () Bool)

(assert (=> d!1029966 e!2184494))

(declare-fun res!1423831 () Bool)

(assert (=> d!1029966 (=> res!1423831 e!2184494)))

(declare-fun lt!1206519 () Option!7644)

(declare-fun isEmpty!21895 (Option!7644) Bool)

(assert (=> d!1029966 (= res!1423831 (isEmpty!21895 lt!1206519))))

(declare-fun e!2184492 () Option!7644)

(assert (=> d!1029966 (= lt!1206519 e!2184492)))

(declare-fun c!608291 () Bool)

(declare-datatypes ((tuple2!37270 0))(
  ( (tuple2!37271 (_1!21769 List!37529) (_2!21769 List!37529)) )
))
(declare-fun lt!1206518 () tuple2!37270)

(assert (=> d!1029966 (= c!608291 (isEmpty!21886 (_1!21769 lt!1206518)))))

(declare-fun findLongestMatch!860 (Regex!10249 List!37529) tuple2!37270)

(assert (=> d!1029966 (= lt!1206518 (findLongestMatch!860 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258))))

(declare-fun ruleValid!1778 (LexerInterface!5079 Rule!10780) Bool)

(assert (=> d!1029966 (ruleValid!1778 thiss!18206 (rule!8150 (h!42827 (t!282696 tokens!494))))))

(assert (=> d!1029966 (= (maxPrefixOneRule!1786 thiss!18206 (rule!8150 (h!42827 (t!282696 tokens!494))) lt!1206258) lt!1206519)))

(declare-fun b!3528781 () Bool)

(declare-fun res!1423834 () Bool)

(declare-fun e!2184495 () Bool)

(assert (=> b!3528781 (=> (not res!1423834) (not e!2184495))))

(declare-fun get!12018 (Option!7644) tuple2!37262)

(assert (=> b!3528781 (= res!1423834 (= (value!176925 (_1!21765 (get!12018 lt!1206519))) (apply!8939 (transformation!5490 (rule!8150 (_1!21765 (get!12018 lt!1206519)))) (seqFromList!4033 (originalCharacters!6204 (_1!21765 (get!12018 lt!1206519)))))))))

(declare-fun b!3528782 () Bool)

(declare-fun res!1423835 () Bool)

(assert (=> b!3528782 (=> (not res!1423835) (not e!2184495))))

(assert (=> b!3528782 (= res!1423835 (= (rule!8150 (_1!21765 (get!12018 lt!1206519))) (rule!8150 (h!42827 (t!282696 tokens!494)))))))

(declare-fun b!3528783 () Bool)

(assert (=> b!3528783 (= e!2184494 e!2184495)))

(declare-fun res!1423830 () Bool)

(assert (=> b!3528783 (=> (not res!1423830) (not e!2184495))))

(assert (=> b!3528783 (= res!1423830 (matchR!4833 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206519))))))))

(declare-fun b!3528784 () Bool)

(declare-fun e!2184493 () Bool)

(declare-fun findLongestMatchInner!945 (Regex!10249 List!37529 Int List!37529 List!37529 Int) tuple2!37270)

(assert (=> b!3528784 (= e!2184493 (matchR!4833 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (_1!21769 (findLongestMatchInner!945 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) Nil!37405 (size!28474 Nil!37405) lt!1206258 lt!1206258 (size!28474 lt!1206258)))))))

(declare-fun b!3528785 () Bool)

(assert (=> b!3528785 (= e!2184495 (= (size!28473 (_1!21765 (get!12018 lt!1206519))) (size!28474 (originalCharacters!6204 (_1!21765 (get!12018 lt!1206519))))))))

(declare-fun b!3528786 () Bool)

(assert (=> b!3528786 (= e!2184492 None!7643)))

(declare-fun b!3528787 () Bool)

(assert (=> b!3528787 (= e!2184492 (Some!7643 (tuple2!37263 (Token!10347 (apply!8939 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (seqFromList!4033 (_1!21769 lt!1206518))) (rule!8150 (h!42827 (t!282696 tokens!494))) (size!28479 (seqFromList!4033 (_1!21769 lt!1206518))) (_1!21769 lt!1206518)) (_2!21769 lt!1206518))))))

(declare-fun lt!1206521 () Unit!53110)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!918 (Regex!10249 List!37529) Unit!53110)

(assert (=> b!3528787 (= lt!1206521 (longestMatchIsAcceptedByMatchOrIsEmpty!918 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) lt!1206258))))

(declare-fun res!1423832 () Bool)

(assert (=> b!3528787 (= res!1423832 (isEmpty!21886 (_1!21769 (findLongestMatchInner!945 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) Nil!37405 (size!28474 Nil!37405) lt!1206258 lt!1206258 (size!28474 lt!1206258)))))))

(assert (=> b!3528787 (=> res!1423832 e!2184493)))

(assert (=> b!3528787 e!2184493))

(declare-fun lt!1206517 () Unit!53110)

(assert (=> b!3528787 (= lt!1206517 lt!1206521)))

(declare-fun lt!1206520 () Unit!53110)

(declare-fun lemmaSemiInverse!1297 (TokenValueInjection!10868 BalanceConc!22324) Unit!53110)

(assert (=> b!3528787 (= lt!1206520 (lemmaSemiInverse!1297 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (seqFromList!4033 (_1!21769 lt!1206518))))))

(declare-fun b!3528788 () Bool)

(declare-fun res!1423836 () Bool)

(assert (=> b!3528788 (=> (not res!1423836) (not e!2184495))))

(assert (=> b!3528788 (= res!1423836 (= (++!9277 (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206519)))) (_2!21765 (get!12018 lt!1206519))) lt!1206258))))

(declare-fun b!3528789 () Bool)

(declare-fun res!1423833 () Bool)

(assert (=> b!3528789 (=> (not res!1423833) (not e!2184495))))

(assert (=> b!3528789 (= res!1423833 (< (size!28474 (_2!21765 (get!12018 lt!1206519))) (size!28474 lt!1206258)))))

(assert (= (and d!1029966 c!608291) b!3528786))

(assert (= (and d!1029966 (not c!608291)) b!3528787))

(assert (= (and b!3528787 (not res!1423832)) b!3528784))

(assert (= (and d!1029966 (not res!1423831)) b!3528783))

(assert (= (and b!3528783 res!1423830) b!3528788))

(assert (= (and b!3528788 res!1423836) b!3528789))

(assert (= (and b!3528789 res!1423833) b!3528782))

(assert (= (and b!3528782 res!1423835) b!3528781))

(assert (= (and b!3528781 res!1423834) b!3528785))

(declare-fun m!3983939 () Bool)

(assert (=> b!3528783 m!3983939))

(declare-fun m!3983941 () Bool)

(assert (=> b!3528783 m!3983941))

(assert (=> b!3528783 m!3983941))

(declare-fun m!3983943 () Bool)

(assert (=> b!3528783 m!3983943))

(assert (=> b!3528783 m!3983943))

(declare-fun m!3983945 () Bool)

(assert (=> b!3528783 m!3983945))

(declare-fun m!3983947 () Bool)

(assert (=> b!3528784 m!3983947))

(assert (=> b!3528784 m!3982969))

(assert (=> b!3528784 m!3983947))

(assert (=> b!3528784 m!3982969))

(declare-fun m!3983949 () Bool)

(assert (=> b!3528784 m!3983949))

(declare-fun m!3983951 () Bool)

(assert (=> b!3528784 m!3983951))

(declare-fun m!3983953 () Bool)

(assert (=> d!1029966 m!3983953))

(declare-fun m!3983955 () Bool)

(assert (=> d!1029966 m!3983955))

(declare-fun m!3983957 () Bool)

(assert (=> d!1029966 m!3983957))

(declare-fun m!3983959 () Bool)

(assert (=> d!1029966 m!3983959))

(assert (=> b!3528785 m!3983939))

(declare-fun m!3983961 () Bool)

(assert (=> b!3528785 m!3983961))

(assert (=> b!3528781 m!3983939))

(declare-fun m!3983963 () Bool)

(assert (=> b!3528781 m!3983963))

(assert (=> b!3528781 m!3983963))

(declare-fun m!3983965 () Bool)

(assert (=> b!3528781 m!3983965))

(assert (=> b!3528788 m!3983939))

(assert (=> b!3528788 m!3983941))

(assert (=> b!3528788 m!3983941))

(assert (=> b!3528788 m!3983943))

(assert (=> b!3528788 m!3983943))

(declare-fun m!3983967 () Bool)

(assert (=> b!3528788 m!3983967))

(assert (=> b!3528789 m!3983939))

(declare-fun m!3983969 () Bool)

(assert (=> b!3528789 m!3983969))

(assert (=> b!3528789 m!3982969))

(assert (=> b!3528782 m!3983939))

(assert (=> b!3528787 m!3983947))

(assert (=> b!3528787 m!3982969))

(assert (=> b!3528787 m!3983949))

(declare-fun m!3983971 () Bool)

(assert (=> b!3528787 m!3983971))

(declare-fun m!3983973 () Bool)

(assert (=> b!3528787 m!3983973))

(assert (=> b!3528787 m!3982969))

(assert (=> b!3528787 m!3983971))

(declare-fun m!3983975 () Bool)

(assert (=> b!3528787 m!3983975))

(assert (=> b!3528787 m!3983971))

(declare-fun m!3983977 () Bool)

(assert (=> b!3528787 m!3983977))

(assert (=> b!3528787 m!3983947))

(declare-fun m!3983979 () Bool)

(assert (=> b!3528787 m!3983979))

(declare-fun m!3983981 () Bool)

(assert (=> b!3528787 m!3983981))

(assert (=> b!3528787 m!3983971))

(assert (=> b!3528201 d!1029966))

(declare-fun d!1029992 () Bool)

(assert (=> d!1029992 (= (maxPrefix!2619 thiss!18206 rules!2135 (++!9277 (list!13689 (charsOf!3504 (h!42827 tokens!494))) lt!1206239)) (Some!7643 (tuple2!37263 (h!42827 tokens!494) lt!1206239)))))

(declare-fun lt!1206527 () Unit!53110)

(declare-fun choose!20507 (LexerInterface!5079 List!37530 Token!10346 Rule!10780 List!37529 Rule!10780) Unit!53110)

(assert (=> d!1029992 (= lt!1206527 (choose!20507 thiss!18206 rules!2135 (h!42827 tokens!494) (rule!8150 (h!42827 tokens!494)) lt!1206239 (rule!8150 separatorToken!241)))))

(assert (=> d!1029992 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1029992 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!246 thiss!18206 rules!2135 (h!42827 tokens!494) (rule!8150 (h!42827 tokens!494)) lt!1206239 (rule!8150 separatorToken!241)) lt!1206527)))

(declare-fun bs!565818 () Bool)

(assert (= bs!565818 d!1029992))

(declare-fun m!3983989 () Bool)

(assert (=> bs!565818 m!3983989))

(declare-fun m!3983991 () Bool)

(assert (=> bs!565818 m!3983991))

(assert (=> bs!565818 m!3983059))

(assert (=> bs!565818 m!3983989))

(assert (=> bs!565818 m!3983057))

(assert (=> bs!565818 m!3983059))

(assert (=> bs!565818 m!3983033))

(declare-fun m!3983993 () Bool)

(assert (=> bs!565818 m!3983993))

(assert (=> bs!565818 m!3983057))

(assert (=> b!3528201 d!1029992))

(declare-fun d!1029996 () Bool)

(declare-fun e!2184498 () Bool)

(assert (=> d!1029996 e!2184498))

(declare-fun res!1423838 () Bool)

(assert (=> d!1029996 (=> res!1423838 e!2184498)))

(declare-fun lt!1206530 () Option!7644)

(assert (=> d!1029996 (= res!1423838 (isEmpty!21895 lt!1206530))))

(declare-fun e!2184496 () Option!7644)

(assert (=> d!1029996 (= lt!1206530 e!2184496)))

(declare-fun c!608292 () Bool)

(declare-fun lt!1206529 () tuple2!37270)

(assert (=> d!1029996 (= c!608292 (isEmpty!21886 (_1!21769 lt!1206529)))))

(assert (=> d!1029996 (= lt!1206529 (findLongestMatch!860 (regex!5490 (rule!8150 (h!42827 tokens!494))) lt!1206246))))

(assert (=> d!1029996 (ruleValid!1778 thiss!18206 (rule!8150 (h!42827 tokens!494)))))

(assert (=> d!1029996 (= (maxPrefixOneRule!1786 thiss!18206 (rule!8150 (h!42827 tokens!494)) lt!1206246) lt!1206530)))

(declare-fun b!3528790 () Bool)

(declare-fun res!1423841 () Bool)

(declare-fun e!2184499 () Bool)

(assert (=> b!3528790 (=> (not res!1423841) (not e!2184499))))

(assert (=> b!3528790 (= res!1423841 (= (value!176925 (_1!21765 (get!12018 lt!1206530))) (apply!8939 (transformation!5490 (rule!8150 (_1!21765 (get!12018 lt!1206530)))) (seqFromList!4033 (originalCharacters!6204 (_1!21765 (get!12018 lt!1206530)))))))))

(declare-fun b!3528791 () Bool)

(declare-fun res!1423842 () Bool)

(assert (=> b!3528791 (=> (not res!1423842) (not e!2184499))))

(assert (=> b!3528791 (= res!1423842 (= (rule!8150 (_1!21765 (get!12018 lt!1206530))) (rule!8150 (h!42827 tokens!494))))))

(declare-fun b!3528792 () Bool)

(assert (=> b!3528792 (= e!2184498 e!2184499)))

(declare-fun res!1423837 () Bool)

(assert (=> b!3528792 (=> (not res!1423837) (not e!2184499))))

(assert (=> b!3528792 (= res!1423837 (matchR!4833 (regex!5490 (rule!8150 (h!42827 tokens!494))) (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206530))))))))

(declare-fun b!3528793 () Bool)

(declare-fun e!2184497 () Bool)

(assert (=> b!3528793 (= e!2184497 (matchR!4833 (regex!5490 (rule!8150 (h!42827 tokens!494))) (_1!21769 (findLongestMatchInner!945 (regex!5490 (rule!8150 (h!42827 tokens!494))) Nil!37405 (size!28474 Nil!37405) lt!1206246 lt!1206246 (size!28474 lt!1206246)))))))

(declare-fun b!3528794 () Bool)

(assert (=> b!3528794 (= e!2184499 (= (size!28473 (_1!21765 (get!12018 lt!1206530))) (size!28474 (originalCharacters!6204 (_1!21765 (get!12018 lt!1206530))))))))

(declare-fun b!3528795 () Bool)

(assert (=> b!3528795 (= e!2184496 None!7643)))

(declare-fun b!3528796 () Bool)

(assert (=> b!3528796 (= e!2184496 (Some!7643 (tuple2!37263 (Token!10347 (apply!8939 (transformation!5490 (rule!8150 (h!42827 tokens!494))) (seqFromList!4033 (_1!21769 lt!1206529))) (rule!8150 (h!42827 tokens!494)) (size!28479 (seqFromList!4033 (_1!21769 lt!1206529))) (_1!21769 lt!1206529)) (_2!21769 lt!1206529))))))

(declare-fun lt!1206532 () Unit!53110)

(assert (=> b!3528796 (= lt!1206532 (longestMatchIsAcceptedByMatchOrIsEmpty!918 (regex!5490 (rule!8150 (h!42827 tokens!494))) lt!1206246))))

(declare-fun res!1423839 () Bool)

(assert (=> b!3528796 (= res!1423839 (isEmpty!21886 (_1!21769 (findLongestMatchInner!945 (regex!5490 (rule!8150 (h!42827 tokens!494))) Nil!37405 (size!28474 Nil!37405) lt!1206246 lt!1206246 (size!28474 lt!1206246)))))))

(assert (=> b!3528796 (=> res!1423839 e!2184497)))

(assert (=> b!3528796 e!2184497))

(declare-fun lt!1206528 () Unit!53110)

(assert (=> b!3528796 (= lt!1206528 lt!1206532)))

(declare-fun lt!1206531 () Unit!53110)

(assert (=> b!3528796 (= lt!1206531 (lemmaSemiInverse!1297 (transformation!5490 (rule!8150 (h!42827 tokens!494))) (seqFromList!4033 (_1!21769 lt!1206529))))))

(declare-fun b!3528797 () Bool)

(declare-fun res!1423843 () Bool)

(assert (=> b!3528797 (=> (not res!1423843) (not e!2184499))))

(assert (=> b!3528797 (= res!1423843 (= (++!9277 (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206530)))) (_2!21765 (get!12018 lt!1206530))) lt!1206246))))

(declare-fun b!3528798 () Bool)

(declare-fun res!1423840 () Bool)

(assert (=> b!3528798 (=> (not res!1423840) (not e!2184499))))

(assert (=> b!3528798 (= res!1423840 (< (size!28474 (_2!21765 (get!12018 lt!1206530))) (size!28474 lt!1206246)))))

(assert (= (and d!1029996 c!608292) b!3528795))

(assert (= (and d!1029996 (not c!608292)) b!3528796))

(assert (= (and b!3528796 (not res!1423839)) b!3528793))

(assert (= (and d!1029996 (not res!1423838)) b!3528792))

(assert (= (and b!3528792 res!1423837) b!3528797))

(assert (= (and b!3528797 res!1423843) b!3528798))

(assert (= (and b!3528798 res!1423840) b!3528791))

(assert (= (and b!3528791 res!1423842) b!3528790))

(assert (= (and b!3528790 res!1423841) b!3528794))

(declare-fun m!3983995 () Bool)

(assert (=> b!3528792 m!3983995))

(declare-fun m!3983997 () Bool)

(assert (=> b!3528792 m!3983997))

(assert (=> b!3528792 m!3983997))

(declare-fun m!3983999 () Bool)

(assert (=> b!3528792 m!3983999))

(assert (=> b!3528792 m!3983999))

(declare-fun m!3984001 () Bool)

(assert (=> b!3528792 m!3984001))

(assert (=> b!3528793 m!3983947))

(assert (=> b!3528793 m!3982965))

(assert (=> b!3528793 m!3983947))

(assert (=> b!3528793 m!3982965))

(declare-fun m!3984003 () Bool)

(assert (=> b!3528793 m!3984003))

(declare-fun m!3984005 () Bool)

(assert (=> b!3528793 m!3984005))

(declare-fun m!3984007 () Bool)

(assert (=> d!1029996 m!3984007))

(declare-fun m!3984009 () Bool)

(assert (=> d!1029996 m!3984009))

(declare-fun m!3984011 () Bool)

(assert (=> d!1029996 m!3984011))

(declare-fun m!3984013 () Bool)

(assert (=> d!1029996 m!3984013))

(assert (=> b!3528794 m!3983995))

(declare-fun m!3984015 () Bool)

(assert (=> b!3528794 m!3984015))

(assert (=> b!3528790 m!3983995))

(declare-fun m!3984017 () Bool)

(assert (=> b!3528790 m!3984017))

(assert (=> b!3528790 m!3984017))

(declare-fun m!3984019 () Bool)

(assert (=> b!3528790 m!3984019))

(assert (=> b!3528797 m!3983995))

(assert (=> b!3528797 m!3983997))

(assert (=> b!3528797 m!3983997))

(assert (=> b!3528797 m!3983999))

(assert (=> b!3528797 m!3983999))

(declare-fun m!3984021 () Bool)

(assert (=> b!3528797 m!3984021))

(assert (=> b!3528798 m!3983995))

(declare-fun m!3984023 () Bool)

(assert (=> b!3528798 m!3984023))

(assert (=> b!3528798 m!3982965))

(assert (=> b!3528791 m!3983995))

(assert (=> b!3528796 m!3983947))

(assert (=> b!3528796 m!3982965))

(assert (=> b!3528796 m!3984003))

(declare-fun m!3984025 () Bool)

(assert (=> b!3528796 m!3984025))

(declare-fun m!3984027 () Bool)

(assert (=> b!3528796 m!3984027))

(assert (=> b!3528796 m!3982965))

(assert (=> b!3528796 m!3984025))

(declare-fun m!3984029 () Bool)

(assert (=> b!3528796 m!3984029))

(assert (=> b!3528796 m!3984025))

(declare-fun m!3984031 () Bool)

(assert (=> b!3528796 m!3984031))

(assert (=> b!3528796 m!3983947))

(declare-fun m!3984033 () Bool)

(assert (=> b!3528796 m!3984033))

(declare-fun m!3984035 () Bool)

(assert (=> b!3528796 m!3984035))

(assert (=> b!3528796 m!3984025))

(assert (=> b!3528201 d!1029996))

(declare-fun d!1029998 () Bool)

(assert (=> d!1029998 (dynLambda!15973 lambda!122959 (h!42827 (t!282696 tokens!494)))))

(declare-fun lt!1206533 () Unit!53110)

(assert (=> d!1029998 (= lt!1206533 (choose!20495 tokens!494 lambda!122959 (h!42827 (t!282696 tokens!494))))))

(declare-fun e!2184500 () Bool)

(assert (=> d!1029998 e!2184500))

(declare-fun res!1423844 () Bool)

(assert (=> d!1029998 (=> (not res!1423844) (not e!2184500))))

(assert (=> d!1029998 (= res!1423844 (forall!8053 tokens!494 lambda!122959))))

(assert (=> d!1029998 (= (forallContained!1437 tokens!494 lambda!122959 (h!42827 (t!282696 tokens!494))) lt!1206533)))

(declare-fun b!3528799 () Bool)

(assert (=> b!3528799 (= e!2184500 (contains!7038 tokens!494 (h!42827 (t!282696 tokens!494))))))

(assert (= (and d!1029998 res!1423844) b!3528799))

(declare-fun b_lambda!103197 () Bool)

(assert (=> (not b_lambda!103197) (not d!1029998)))

(declare-fun m!3984037 () Bool)

(assert (=> d!1029998 m!3984037))

(declare-fun m!3984039 () Bool)

(assert (=> d!1029998 m!3984039))

(declare-fun m!3984041 () Bool)

(assert (=> d!1029998 m!3984041))

(assert (=> b!3528799 m!3983267))

(assert (=> b!3528201 d!1029998))

(declare-fun d!1030000 () Bool)

(declare-fun e!2184501 () Bool)

(assert (=> d!1030000 e!2184501))

(declare-fun res!1423845 () Bool)

(assert (=> d!1030000 (=> (not res!1423845) (not e!2184501))))

(assert (=> d!1030000 (= res!1423845 (isDefined!5890 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))

(declare-fun lt!1206534 () Unit!53110)

(assert (=> d!1030000 (= lt!1206534 (choose!20504 thiss!18206 rules!2135 lt!1206258 (h!42827 (t!282696 tokens!494))))))

(assert (=> d!1030000 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1030000 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 thiss!18206 rules!2135 lt!1206258 (h!42827 (t!282696 tokens!494))) lt!1206534)))

(declare-fun b!3528800 () Bool)

(declare-fun res!1423846 () Bool)

(assert (=> b!3528800 (=> (not res!1423846) (not e!2184501))))

(assert (=> b!3528800 (= res!1423846 (matchR!4833 (regex!5490 (get!12016 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (list!13689 (charsOf!3504 (h!42827 (t!282696 tokens!494))))))))

(declare-fun b!3528801 () Bool)

(assert (=> b!3528801 (= e!2184501 (= (rule!8150 (h!42827 (t!282696 tokens!494))) (get!12016 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))))))))

(assert (= (and d!1030000 res!1423845) b!3528800))

(assert (= (and b!3528800 res!1423846) b!3528801))

(assert (=> d!1030000 m!3982997))

(assert (=> d!1030000 m!3982997))

(declare-fun m!3984043 () Bool)

(assert (=> d!1030000 m!3984043))

(declare-fun m!3984045 () Bool)

(assert (=> d!1030000 m!3984045))

(assert (=> d!1030000 m!3982939))

(assert (=> b!3528800 m!3982997))

(declare-fun m!3984047 () Bool)

(assert (=> b!3528800 m!3984047))

(assert (=> b!3528800 m!3982997))

(assert (=> b!3528800 m!3982905))

(assert (=> b!3528800 m!3982907))

(declare-fun m!3984049 () Bool)

(assert (=> b!3528800 m!3984049))

(assert (=> b!3528800 m!3982905))

(assert (=> b!3528800 m!3982907))

(assert (=> b!3528801 m!3982997))

(assert (=> b!3528801 m!3982997))

(assert (=> b!3528801 m!3984047))

(assert (=> b!3528201 d!1030000))

(declare-fun d!1030002 () Bool)

(declare-fun c!608293 () Bool)

(assert (=> d!1030002 (= c!608293 (or ((_ is EmptyExpr!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) ((_ is EmptyLang!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))

(declare-fun e!2184504 () List!37529)

(assert (=> d!1030002 (= (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) e!2184504)))

(declare-fun b!3528802 () Bool)

(declare-fun e!2184503 () List!37529)

(declare-fun e!2184505 () List!37529)

(assert (=> b!3528802 (= e!2184503 e!2184505)))

(declare-fun c!608294 () Bool)

(assert (=> b!3528802 (= c!608294 ((_ is Union!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun b!3528803 () Bool)

(declare-fun e!2184502 () List!37529)

(assert (=> b!3528803 (= e!2184504 e!2184502)))

(declare-fun c!608295 () Bool)

(assert (=> b!3528803 (= c!608295 ((_ is ElementMatch!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(declare-fun call!254831 () List!37529)

(declare-fun call!254829 () List!37529)

(declare-fun bm!254824 () Bool)

(declare-fun call!254832 () List!37529)

(assert (=> bm!254824 (= call!254831 (++!9277 (ite c!608294 call!254832 call!254829) (ite c!608294 call!254829 call!254832)))))

(declare-fun b!3528804 () Bool)

(assert (=> b!3528804 (= e!2184502 (Cons!37405 (c!608160 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) Nil!37405))))

(declare-fun bm!254825 () Bool)

(assert (=> bm!254825 (= call!254832 (usedCharacters!724 (ite c!608294 (regOne!21011 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (regTwo!21010 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))))

(declare-fun b!3528805 () Bool)

(assert (=> b!3528805 (= e!2184505 call!254831)))

(declare-fun b!3528806 () Bool)

(declare-fun c!608296 () Bool)

(assert (=> b!3528806 (= c!608296 ((_ is Star!10249) (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(assert (=> b!3528806 (= e!2184502 e!2184503)))

(declare-fun b!3528807 () Bool)

(assert (=> b!3528807 (= e!2184504 Nil!37405)))

(declare-fun call!254830 () List!37529)

(declare-fun bm!254826 () Bool)

(assert (=> bm!254826 (= call!254830 (usedCharacters!724 (ite c!608296 (reg!10578 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (ite c!608294 (regTwo!21011 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (regOne!21010 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))))

(declare-fun bm!254827 () Bool)

(assert (=> bm!254827 (= call!254829 call!254830)))

(declare-fun b!3528808 () Bool)

(assert (=> b!3528808 (= e!2184505 call!254831)))

(declare-fun b!3528809 () Bool)

(assert (=> b!3528809 (= e!2184503 call!254830)))

(assert (= (and d!1030002 c!608293) b!3528807))

(assert (= (and d!1030002 (not c!608293)) b!3528803))

(assert (= (and b!3528803 c!608295) b!3528804))

(assert (= (and b!3528803 (not c!608295)) b!3528806))

(assert (= (and b!3528806 c!608296) b!3528809))

(assert (= (and b!3528806 (not c!608296)) b!3528802))

(assert (= (and b!3528802 c!608294) b!3528805))

(assert (= (and b!3528802 (not c!608294)) b!3528808))

(assert (= (or b!3528805 b!3528808) bm!254827))

(assert (= (or b!3528805 b!3528808) bm!254825))

(assert (= (or b!3528805 b!3528808) bm!254824))

(assert (= (or b!3528809 bm!254827) bm!254826))

(declare-fun m!3984051 () Bool)

(assert (=> bm!254824 m!3984051))

(declare-fun m!3984053 () Bool)

(assert (=> bm!254825 m!3984053))

(declare-fun m!3984055 () Bool)

(assert (=> bm!254826 m!3984055))

(assert (=> b!3528201 d!1030002))

(declare-fun d!1030004 () Bool)

(assert (=> d!1030004 (= (isDefined!5890 lt!1206261) (not (isEmpty!21892 lt!1206261)))))

(declare-fun bs!565819 () Bool)

(assert (= bs!565819 d!1030004))

(declare-fun m!3984057 () Bool)

(assert (=> bs!565819 m!3984057))

(assert (=> b!3528201 d!1030004))

(declare-fun d!1030006 () Bool)

(declare-fun lt!1206537 () Int)

(assert (=> d!1030006 (>= lt!1206537 0)))

(declare-fun e!2184508 () Int)

(assert (=> d!1030006 (= lt!1206537 e!2184508)))

(declare-fun c!608299 () Bool)

(assert (=> d!1030006 (= c!608299 ((_ is Nil!37405) lt!1206258))))

(assert (=> d!1030006 (= (size!28474 lt!1206258) lt!1206537)))

(declare-fun b!3528814 () Bool)

(assert (=> b!3528814 (= e!2184508 0)))

(declare-fun b!3528815 () Bool)

(assert (=> b!3528815 (= e!2184508 (+ 1 (size!28474 (t!282694 lt!1206258))))))

(assert (= (and d!1030006 c!608299) b!3528814))

(assert (= (and d!1030006 (not c!608299)) b!3528815))

(declare-fun m!3984059 () Bool)

(assert (=> b!3528815 m!3984059))

(assert (=> b!3528201 d!1030006))

(declare-fun d!1030008 () Bool)

(declare-fun lt!1206538 () BalanceConc!22324)

(assert (=> d!1030008 (= (list!13689 lt!1206538) (printList!1627 thiss!18206 (list!13691 lt!1206271)))))

(assert (=> d!1030008 (= lt!1206538 (printTailRec!1574 thiss!18206 lt!1206271 0 (BalanceConc!22325 Empty!11355)))))

(assert (=> d!1030008 (= (print!2144 thiss!18206 lt!1206271) lt!1206538)))

(declare-fun bs!565820 () Bool)

(assert (= bs!565820 d!1030008))

(declare-fun m!3984061 () Bool)

(assert (=> bs!565820 m!3984061))

(declare-fun m!3984063 () Bool)

(assert (=> bs!565820 m!3984063))

(assert (=> bs!565820 m!3984063))

(declare-fun m!3984065 () Bool)

(assert (=> bs!565820 m!3984065))

(assert (=> bs!565820 m!3982991))

(assert (=> b!3528201 d!1030008))

(declare-fun d!1030010 () Bool)

(declare-fun e!2184509 () Bool)

(assert (=> d!1030010 e!2184509))

(declare-fun res!1423847 () Bool)

(assert (=> d!1030010 (=> (not res!1423847) (not e!2184509))))

(declare-fun lt!1206539 () BalanceConc!22326)

(assert (=> d!1030010 (= res!1423847 (= (list!13691 lt!1206539) (Cons!37407 (h!42827 (t!282696 tokens!494)) Nil!37407)))))

(assert (=> d!1030010 (= lt!1206539 (singleton!1155 (h!42827 (t!282696 tokens!494))))))

(assert (=> d!1030010 (= (singletonSeq!2586 (h!42827 (t!282696 tokens!494))) lt!1206539)))

(declare-fun b!3528816 () Bool)

(assert (=> b!3528816 (= e!2184509 (isBalanced!3464 (c!608162 lt!1206539)))))

(assert (= (and d!1030010 res!1423847) b!3528816))

(declare-fun m!3984067 () Bool)

(assert (=> d!1030010 m!3984067))

(declare-fun m!3984069 () Bool)

(assert (=> d!1030010 m!3984069))

(declare-fun m!3984071 () Bool)

(assert (=> b!3528816 m!3984071))

(assert (=> b!3528201 d!1030010))

(declare-fun d!1030012 () Bool)

(assert (=> d!1030012 (= (isDefined!5890 lt!1206267) (not (isEmpty!21892 lt!1206267)))))

(declare-fun bs!565821 () Bool)

(assert (= bs!565821 d!1030012))

(declare-fun m!3984073 () Bool)

(assert (=> bs!565821 m!3984073))

(assert (=> b!3528201 d!1030012))

(declare-fun d!1030014 () Bool)

(declare-fun lt!1206540 () Int)

(assert (=> d!1030014 (= lt!1206540 (size!28477 (list!13691 (_1!21764 lt!1206277))))))

(assert (=> d!1030014 (= lt!1206540 (size!28478 (c!608162 (_1!21764 lt!1206277))))))

(assert (=> d!1030014 (= (size!28475 (_1!21764 lt!1206277)) lt!1206540)))

(declare-fun bs!565822 () Bool)

(assert (= bs!565822 d!1030014))

(declare-fun m!3984075 () Bool)

(assert (=> bs!565822 m!3984075))

(assert (=> bs!565822 m!3984075))

(declare-fun m!3984077 () Bool)

(assert (=> bs!565822 m!3984077))

(declare-fun m!3984079 () Bool)

(assert (=> bs!565822 m!3984079))

(assert (=> b!3528201 d!1030014))

(declare-fun d!1030016 () Bool)

(declare-fun lt!1206579 () BalanceConc!22324)

(declare-fun printListTailRec!724 (LexerInterface!5079 List!37531 List!37529) List!37529)

(declare-fun dropList!1241 (BalanceConc!22326 Int) List!37531)

(assert (=> d!1030016 (= (list!13689 lt!1206579) (printListTailRec!724 thiss!18206 (dropList!1241 lt!1206271 0) (list!13689 (BalanceConc!22325 Empty!11355))))))

(declare-fun e!2184534 () BalanceConc!22324)

(assert (=> d!1030016 (= lt!1206579 e!2184534)))

(declare-fun c!608311 () Bool)

(assert (=> d!1030016 (= c!608311 (>= 0 (size!28475 lt!1206271)))))

(declare-fun e!2184535 () Bool)

(assert (=> d!1030016 e!2184535))

(declare-fun res!1423881 () Bool)

(assert (=> d!1030016 (=> (not res!1423881) (not e!2184535))))

(assert (=> d!1030016 (= res!1423881 (>= 0 0))))

(assert (=> d!1030016 (= (printTailRec!1574 thiss!18206 lt!1206271 0 (BalanceConc!22325 Empty!11355)) lt!1206579)))

(declare-fun b!3528872 () Bool)

(assert (=> b!3528872 (= e!2184535 (<= 0 (size!28475 lt!1206271)))))

(declare-fun b!3528873 () Bool)

(assert (=> b!3528873 (= e!2184534 (BalanceConc!22325 Empty!11355))))

(declare-fun b!3528874 () Bool)

(declare-fun ++!9279 (BalanceConc!22324 BalanceConc!22324) BalanceConc!22324)

(assert (=> b!3528874 (= e!2184534 (printTailRec!1574 thiss!18206 lt!1206271 (+ 0 1) (++!9279 (BalanceConc!22325 Empty!11355) (charsOf!3504 (apply!8938 lt!1206271 0)))))))

(declare-fun lt!1206585 () List!37531)

(assert (=> b!3528874 (= lt!1206585 (list!13691 lt!1206271))))

(declare-fun lt!1206583 () Unit!53110)

(declare-fun lemmaDropApply!1199 (List!37531 Int) Unit!53110)

(assert (=> b!3528874 (= lt!1206583 (lemmaDropApply!1199 lt!1206585 0))))

(declare-fun head!7407 (List!37531) Token!10346)

(declare-fun drop!2055 (List!37531 Int) List!37531)

(assert (=> b!3528874 (= (head!7407 (drop!2055 lt!1206585 0)) (apply!8940 lt!1206585 0))))

(declare-fun lt!1206580 () Unit!53110)

(assert (=> b!3528874 (= lt!1206580 lt!1206583)))

(declare-fun lt!1206582 () List!37531)

(assert (=> b!3528874 (= lt!1206582 (list!13691 lt!1206271))))

(declare-fun lt!1206584 () Unit!53110)

(declare-fun lemmaDropTail!1083 (List!37531 Int) Unit!53110)

(assert (=> b!3528874 (= lt!1206584 (lemmaDropTail!1083 lt!1206582 0))))

(declare-fun tail!5505 (List!37531) List!37531)

(assert (=> b!3528874 (= (tail!5505 (drop!2055 lt!1206582 0)) (drop!2055 lt!1206582 (+ 0 1)))))

(declare-fun lt!1206581 () Unit!53110)

(assert (=> b!3528874 (= lt!1206581 lt!1206584)))

(assert (= (and d!1030016 res!1423881) b!3528872))

(assert (= (and d!1030016 c!608311) b!3528873))

(assert (= (and d!1030016 (not c!608311)) b!3528874))

(declare-fun m!3984191 () Bool)

(assert (=> d!1030016 m!3984191))

(declare-fun m!3984193 () Bool)

(assert (=> d!1030016 m!3984193))

(declare-fun m!3984195 () Bool)

(assert (=> d!1030016 m!3984195))

(assert (=> d!1030016 m!3984191))

(assert (=> d!1030016 m!3984193))

(declare-fun m!3984197 () Bool)

(assert (=> d!1030016 m!3984197))

(declare-fun m!3984199 () Bool)

(assert (=> d!1030016 m!3984199))

(assert (=> b!3528872 m!3984199))

(declare-fun m!3984201 () Bool)

(assert (=> b!3528874 m!3984201))

(declare-fun m!3984203 () Bool)

(assert (=> b!3528874 m!3984203))

(assert (=> b!3528874 m!3984063))

(declare-fun m!3984205 () Bool)

(assert (=> b!3528874 m!3984205))

(declare-fun m!3984207 () Bool)

(assert (=> b!3528874 m!3984207))

(declare-fun m!3984209 () Bool)

(assert (=> b!3528874 m!3984209))

(assert (=> b!3528874 m!3984205))

(assert (=> b!3528874 m!3984207))

(declare-fun m!3984211 () Bool)

(assert (=> b!3528874 m!3984211))

(declare-fun m!3984213 () Bool)

(assert (=> b!3528874 m!3984213))

(assert (=> b!3528874 m!3984201))

(assert (=> b!3528874 m!3984211))

(declare-fun m!3984215 () Bool)

(assert (=> b!3528874 m!3984215))

(assert (=> b!3528874 m!3984209))

(declare-fun m!3984217 () Bool)

(assert (=> b!3528874 m!3984217))

(declare-fun m!3984219 () Bool)

(assert (=> b!3528874 m!3984219))

(declare-fun m!3984221 () Bool)

(assert (=> b!3528874 m!3984221))

(declare-fun m!3984223 () Bool)

(assert (=> b!3528874 m!3984223))

(assert (=> b!3528201 d!1030016))

(declare-fun d!1030036 () Bool)

(assert (=> d!1030036 (= (isDefined!5890 lt!1206276) (not (isEmpty!21892 lt!1206276)))))

(declare-fun bs!565825 () Bool)

(assert (= bs!565825 d!1030036))

(declare-fun m!3984225 () Bool)

(assert (=> bs!565825 m!3984225))

(assert (=> b!3528201 d!1030036))

(declare-fun d!1030038 () Bool)

(assert (=> d!1030038 (not (contains!7036 (usedCharacters!724 (regex!5490 (rule!8150 separatorToken!241))) lt!1206278))))

(declare-fun lt!1206592 () Unit!53110)

(declare-fun choose!20509 (LexerInterface!5079 List!37530 List!37530 Rule!10780 Rule!10780 C!20684) Unit!53110)

(assert (=> d!1030038 (= lt!1206592 (choose!20509 thiss!18206 rules!2135 rules!2135 (rule!8150 (h!42827 (t!282696 tokens!494))) (rule!8150 separatorToken!241) lt!1206278))))

(assert (=> d!1030038 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1030038 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!172 thiss!18206 rules!2135 rules!2135 (rule!8150 (h!42827 (t!282696 tokens!494))) (rule!8150 separatorToken!241) lt!1206278) lt!1206592)))

(declare-fun bs!565826 () Bool)

(assert (= bs!565826 d!1030038))

(assert (=> bs!565826 m!3982967))

(assert (=> bs!565826 m!3982967))

(declare-fun m!3984239 () Bool)

(assert (=> bs!565826 m!3984239))

(declare-fun m!3984241 () Bool)

(assert (=> bs!565826 m!3984241))

(assert (=> bs!565826 m!3982939))

(assert (=> b!3528201 d!1030038))

(declare-fun b!3528986 () Bool)

(declare-fun e!2184605 () Bool)

(declare-fun e!2184606 () Bool)

(assert (=> b!3528986 (= e!2184605 e!2184606)))

(declare-fun res!1423951 () Bool)

(assert (=> b!3528986 (=> (not res!1423951) (not e!2184606))))

(declare-fun lt!1206632 () Option!7644)

(declare-fun isDefined!5892 (Option!7644) Bool)

(assert (=> b!3528986 (= res!1423951 (isDefined!5892 lt!1206632))))

(declare-fun call!254848 () Option!7644)

(declare-fun bm!254843 () Bool)

(assert (=> bm!254843 (= call!254848 (maxPrefixOneRule!1786 thiss!18206 (h!42826 rules!2135) lt!1206251))))

(declare-fun d!1030044 () Bool)

(assert (=> d!1030044 e!2184605))

(declare-fun res!1423956 () Bool)

(assert (=> d!1030044 (=> res!1423956 e!2184605)))

(assert (=> d!1030044 (= res!1423956 (isEmpty!21895 lt!1206632))))

(declare-fun e!2184604 () Option!7644)

(assert (=> d!1030044 (= lt!1206632 e!2184604)))

(declare-fun c!608334 () Bool)

(assert (=> d!1030044 (= c!608334 (and ((_ is Cons!37406) rules!2135) ((_ is Nil!37406) (t!282695 rules!2135))))))

(declare-fun lt!1206635 () Unit!53110)

(declare-fun lt!1206633 () Unit!53110)

(assert (=> d!1030044 (= lt!1206635 lt!1206633)))

(declare-fun isPrefix!2880 (List!37529 List!37529) Bool)

(assert (=> d!1030044 (isPrefix!2880 lt!1206251 lt!1206251)))

(declare-fun lemmaIsPrefixRefl!1839 (List!37529 List!37529) Unit!53110)

(assert (=> d!1030044 (= lt!1206633 (lemmaIsPrefixRefl!1839 lt!1206251 lt!1206251))))

(declare-fun rulesValidInductive!1889 (LexerInterface!5079 List!37530) Bool)

(assert (=> d!1030044 (rulesValidInductive!1889 thiss!18206 rules!2135)))

(assert (=> d!1030044 (= (maxPrefix!2619 thiss!18206 rules!2135 lt!1206251) lt!1206632)))

(declare-fun b!3528987 () Bool)

(assert (=> b!3528987 (= e!2184606 (contains!7035 rules!2135 (rule!8150 (_1!21765 (get!12018 lt!1206632)))))))

(declare-fun b!3528988 () Bool)

(declare-fun lt!1206634 () Option!7644)

(declare-fun lt!1206631 () Option!7644)

(assert (=> b!3528988 (= e!2184604 (ite (and ((_ is None!7643) lt!1206634) ((_ is None!7643) lt!1206631)) None!7643 (ite ((_ is None!7643) lt!1206631) lt!1206634 (ite ((_ is None!7643) lt!1206634) lt!1206631 (ite (>= (size!28473 (_1!21765 (v!37157 lt!1206634))) (size!28473 (_1!21765 (v!37157 lt!1206631)))) lt!1206634 lt!1206631)))))))

(assert (=> b!3528988 (= lt!1206634 call!254848)))

(assert (=> b!3528988 (= lt!1206631 (maxPrefix!2619 thiss!18206 (t!282695 rules!2135) lt!1206251))))

(declare-fun b!3528989 () Bool)

(declare-fun res!1423953 () Bool)

(assert (=> b!3528989 (=> (not res!1423953) (not e!2184606))))

(assert (=> b!3528989 (= res!1423953 (= (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206632)))) (originalCharacters!6204 (_1!21765 (get!12018 lt!1206632)))))))

(declare-fun b!3528990 () Bool)

(declare-fun res!1423952 () Bool)

(assert (=> b!3528990 (=> (not res!1423952) (not e!2184606))))

(assert (=> b!3528990 (= res!1423952 (= (value!176925 (_1!21765 (get!12018 lt!1206632))) (apply!8939 (transformation!5490 (rule!8150 (_1!21765 (get!12018 lt!1206632)))) (seqFromList!4033 (originalCharacters!6204 (_1!21765 (get!12018 lt!1206632)))))))))

(declare-fun b!3528991 () Bool)

(declare-fun res!1423954 () Bool)

(assert (=> b!3528991 (=> (not res!1423954) (not e!2184606))))

(assert (=> b!3528991 (= res!1423954 (< (size!28474 (_2!21765 (get!12018 lt!1206632))) (size!28474 lt!1206251)))))

(declare-fun b!3528992 () Bool)

(declare-fun res!1423955 () Bool)

(assert (=> b!3528992 (=> (not res!1423955) (not e!2184606))))

(assert (=> b!3528992 (= res!1423955 (matchR!4833 (regex!5490 (rule!8150 (_1!21765 (get!12018 lt!1206632)))) (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206632))))))))

(declare-fun b!3528993 () Bool)

(assert (=> b!3528993 (= e!2184604 call!254848)))

(declare-fun b!3528994 () Bool)

(declare-fun res!1423957 () Bool)

(assert (=> b!3528994 (=> (not res!1423957) (not e!2184606))))

(assert (=> b!3528994 (= res!1423957 (= (++!9277 (list!13689 (charsOf!3504 (_1!21765 (get!12018 lt!1206632)))) (_2!21765 (get!12018 lt!1206632))) lt!1206251))))

(assert (= (and d!1030044 c!608334) b!3528993))

(assert (= (and d!1030044 (not c!608334)) b!3528988))

(assert (= (or b!3528993 b!3528988) bm!254843))

(assert (= (and d!1030044 (not res!1423956)) b!3528986))

(assert (= (and b!3528986 res!1423951) b!3528989))

(assert (= (and b!3528989 res!1423953) b!3528991))

(assert (= (and b!3528991 res!1423954) b!3528994))

(assert (= (and b!3528994 res!1423957) b!3528990))

(assert (= (and b!3528990 res!1423952) b!3528992))

(assert (= (and b!3528992 res!1423955) b!3528987))

(declare-fun m!3984419 () Bool)

(assert (=> b!3528988 m!3984419))

(declare-fun m!3984421 () Bool)

(assert (=> bm!254843 m!3984421))

(declare-fun m!3984423 () Bool)

(assert (=> b!3528992 m!3984423))

(declare-fun m!3984425 () Bool)

(assert (=> b!3528992 m!3984425))

(assert (=> b!3528992 m!3984425))

(declare-fun m!3984427 () Bool)

(assert (=> b!3528992 m!3984427))

(assert (=> b!3528992 m!3984427))

(declare-fun m!3984429 () Bool)

(assert (=> b!3528992 m!3984429))

(declare-fun m!3984431 () Bool)

(assert (=> d!1030044 m!3984431))

(declare-fun m!3984433 () Bool)

(assert (=> d!1030044 m!3984433))

(declare-fun m!3984435 () Bool)

(assert (=> d!1030044 m!3984435))

(declare-fun m!3984437 () Bool)

(assert (=> d!1030044 m!3984437))

(assert (=> b!3528991 m!3984423))

(declare-fun m!3984439 () Bool)

(assert (=> b!3528991 m!3984439))

(declare-fun m!3984441 () Bool)

(assert (=> b!3528991 m!3984441))

(assert (=> b!3528987 m!3984423))

(declare-fun m!3984443 () Bool)

(assert (=> b!3528987 m!3984443))

(declare-fun m!3984445 () Bool)

(assert (=> b!3528986 m!3984445))

(assert (=> b!3528994 m!3984423))

(assert (=> b!3528994 m!3984425))

(assert (=> b!3528994 m!3984425))

(assert (=> b!3528994 m!3984427))

(assert (=> b!3528994 m!3984427))

(declare-fun m!3984447 () Bool)

(assert (=> b!3528994 m!3984447))

(assert (=> b!3528990 m!3984423))

(declare-fun m!3984449 () Bool)

(assert (=> b!3528990 m!3984449))

(assert (=> b!3528990 m!3984449))

(declare-fun m!3984451 () Bool)

(assert (=> b!3528990 m!3984451))

(assert (=> b!3528989 m!3984423))

(assert (=> b!3528989 m!3984425))

(assert (=> b!3528989 m!3984425))

(assert (=> b!3528989 m!3984427))

(assert (=> b!3528201 d!1030044))

(declare-fun d!1030102 () Bool)

(assert (=> d!1030102 (= (apply!8939 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))) (seqFromList!4033 lt!1206258)) (dynLambda!15975 (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (seqFromList!4033 lt!1206258)))))

(declare-fun b_lambda!103209 () Bool)

(assert (=> (not b_lambda!103209) (not d!1030102)))

(declare-fun t!282760 () Bool)

(declare-fun tb!197455 () Bool)

(assert (=> (and b!3528190 (= (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282760) tb!197455))

(declare-fun result!241892 () Bool)

(assert (=> tb!197455 (= result!241892 (inv!21 (dynLambda!15975 (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (seqFromList!4033 lt!1206258))))))

(declare-fun m!3984453 () Bool)

(assert (=> tb!197455 m!3984453))

(assert (=> d!1030102 t!282760))

(declare-fun b_and!251669 () Bool)

(assert (= b_and!251639 (and (=> t!282760 result!241892) b_and!251669)))

(declare-fun tb!197457 () Bool)

(declare-fun t!282762 () Bool)

(assert (=> (and b!3528203 (= (toValue!7746 (transformation!5490 (rule!8150 separatorToken!241))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282762) tb!197457))

(declare-fun result!241894 () Bool)

(assert (= result!241894 result!241892))

(assert (=> d!1030102 t!282762))

(declare-fun b_and!251671 () Bool)

(assert (= b_and!251641 (and (=> t!282762 result!241894) b_and!251671)))

(declare-fun tb!197459 () Bool)

(declare-fun t!282764 () Bool)

(assert (=> (and b!3528170 (= (toValue!7746 (transformation!5490 (h!42826 rules!2135))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282764) tb!197459))

(declare-fun result!241896 () Bool)

(assert (= result!241896 result!241892))

(assert (=> d!1030102 t!282764))

(declare-fun b_and!251673 () Bool)

(assert (= b_and!251643 (and (=> t!282764 result!241896) b_and!251673)))

(assert (=> d!1030102 m!3982943))

(declare-fun m!3984455 () Bool)

(assert (=> d!1030102 m!3984455))

(assert (=> b!3528201 d!1030102))

(declare-fun d!1030104 () Bool)

(declare-fun e!2184625 () Bool)

(assert (=> d!1030104 e!2184625))

(declare-fun res!1423966 () Bool)

(assert (=> d!1030104 (=> (not res!1423966) (not e!2184625))))

(assert (=> d!1030104 (= res!1423966 (isDefined!5890 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 separatorToken!241)))))))

(declare-fun lt!1206637 () Unit!53110)

(assert (=> d!1030104 (= lt!1206637 (choose!20504 thiss!18206 rules!2135 lt!1206247 separatorToken!241))))

(assert (=> d!1030104 (rulesInvariant!4476 thiss!18206 rules!2135)))

(assert (=> d!1030104 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1133 thiss!18206 rules!2135 lt!1206247 separatorToken!241) lt!1206637)))

(declare-fun b!3529037 () Bool)

(declare-fun res!1423967 () Bool)

(assert (=> b!3529037 (=> (not res!1423967) (not e!2184625))))

(assert (=> b!3529037 (= res!1423967 (matchR!4833 (regex!5490 (get!12016 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 separatorToken!241))))) (list!13689 (charsOf!3504 separatorToken!241))))))

(declare-fun b!3529038 () Bool)

(assert (=> b!3529038 (= e!2184625 (= (rule!8150 separatorToken!241) (get!12016 (getRuleFromTag!1133 thiss!18206 rules!2135 (tag!6134 (rule!8150 separatorToken!241))))))))

(assert (= (and d!1030104 res!1423966) b!3529037))

(assert (= (and b!3529037 res!1423967) b!3529038))

(assert (=> d!1030104 m!3983011))

(assert (=> d!1030104 m!3983011))

(declare-fun m!3984457 () Bool)

(assert (=> d!1030104 m!3984457))

(declare-fun m!3984459 () Bool)

(assert (=> d!1030104 m!3984459))

(assert (=> d!1030104 m!3982939))

(assert (=> b!3529037 m!3983011))

(declare-fun m!3984461 () Bool)

(assert (=> b!3529037 m!3984461))

(assert (=> b!3529037 m!3983011))

(assert (=> b!3529037 m!3982899))

(assert (=> b!3529037 m!3982917))

(declare-fun m!3984463 () Bool)

(assert (=> b!3529037 m!3984463))

(assert (=> b!3529037 m!3982899))

(assert (=> b!3529037 m!3982917))

(assert (=> b!3529038 m!3983011))

(assert (=> b!3529038 m!3983011))

(assert (=> b!3529038 m!3984461))

(assert (=> b!3528201 d!1030104))

(declare-fun d!1030106 () Bool)

(declare-fun lt!1206638 () BalanceConc!22324)

(assert (=> d!1030106 (= (list!13689 lt!1206638) (printListTailRec!724 thiss!18206 (dropList!1241 lt!1206273 0) (list!13689 (BalanceConc!22325 Empty!11355))))))

(declare-fun e!2184632 () BalanceConc!22324)

(assert (=> d!1030106 (= lt!1206638 e!2184632)))

(declare-fun c!608338 () Bool)

(assert (=> d!1030106 (= c!608338 (>= 0 (size!28475 lt!1206273)))))

(declare-fun e!2184633 () Bool)

(assert (=> d!1030106 e!2184633))

(declare-fun res!1423968 () Bool)

(assert (=> d!1030106 (=> (not res!1423968) (not e!2184633))))

(assert (=> d!1030106 (= res!1423968 (>= 0 0))))

(assert (=> d!1030106 (= (printTailRec!1574 thiss!18206 lt!1206273 0 (BalanceConc!22325 Empty!11355)) lt!1206638)))

(declare-fun b!3529043 () Bool)

(assert (=> b!3529043 (= e!2184633 (<= 0 (size!28475 lt!1206273)))))

(declare-fun b!3529044 () Bool)

(assert (=> b!3529044 (= e!2184632 (BalanceConc!22325 Empty!11355))))

(declare-fun b!3529045 () Bool)

(assert (=> b!3529045 (= e!2184632 (printTailRec!1574 thiss!18206 lt!1206273 (+ 0 1) (++!9279 (BalanceConc!22325 Empty!11355) (charsOf!3504 (apply!8938 lt!1206273 0)))))))

(declare-fun lt!1206644 () List!37531)

(assert (=> b!3529045 (= lt!1206644 (list!13691 lt!1206273))))

(declare-fun lt!1206642 () Unit!53110)

(assert (=> b!3529045 (= lt!1206642 (lemmaDropApply!1199 lt!1206644 0))))

(assert (=> b!3529045 (= (head!7407 (drop!2055 lt!1206644 0)) (apply!8940 lt!1206644 0))))

(declare-fun lt!1206639 () Unit!53110)

(assert (=> b!3529045 (= lt!1206639 lt!1206642)))

(declare-fun lt!1206641 () List!37531)

(assert (=> b!3529045 (= lt!1206641 (list!13691 lt!1206273))))

(declare-fun lt!1206643 () Unit!53110)

(assert (=> b!3529045 (= lt!1206643 (lemmaDropTail!1083 lt!1206641 0))))

(assert (=> b!3529045 (= (tail!5505 (drop!2055 lt!1206641 0)) (drop!2055 lt!1206641 (+ 0 1)))))

(declare-fun lt!1206640 () Unit!53110)

(assert (=> b!3529045 (= lt!1206640 lt!1206643)))

(assert (= (and d!1030106 res!1423968) b!3529043))

(assert (= (and d!1030106 c!608338) b!3529044))

(assert (= (and d!1030106 (not c!608338)) b!3529045))

(declare-fun m!3984465 () Bool)

(assert (=> d!1030106 m!3984465))

(assert (=> d!1030106 m!3984193))

(declare-fun m!3984467 () Bool)

(assert (=> d!1030106 m!3984467))

(assert (=> d!1030106 m!3984465))

(assert (=> d!1030106 m!3984193))

(declare-fun m!3984469 () Bool)

(assert (=> d!1030106 m!3984469))

(declare-fun m!3984471 () Bool)

(assert (=> d!1030106 m!3984471))

(assert (=> b!3529043 m!3984471))

(declare-fun m!3984473 () Bool)

(assert (=> b!3529045 m!3984473))

(declare-fun m!3984475 () Bool)

(assert (=> b!3529045 m!3984475))

(assert (=> b!3529045 m!3983635))

(declare-fun m!3984477 () Bool)

(assert (=> b!3529045 m!3984477))

(declare-fun m!3984479 () Bool)

(assert (=> b!3529045 m!3984479))

(declare-fun m!3984481 () Bool)

(assert (=> b!3529045 m!3984481))

(assert (=> b!3529045 m!3984477))

(assert (=> b!3529045 m!3984479))

(declare-fun m!3984483 () Bool)

(assert (=> b!3529045 m!3984483))

(declare-fun m!3984485 () Bool)

(assert (=> b!3529045 m!3984485))

(assert (=> b!3529045 m!3984473))

(assert (=> b!3529045 m!3984483))

(declare-fun m!3984489 () Bool)

(assert (=> b!3529045 m!3984489))

(assert (=> b!3529045 m!3984481))

(declare-fun m!3984493 () Bool)

(assert (=> b!3529045 m!3984493))

(declare-fun m!3984495 () Bool)

(assert (=> b!3529045 m!3984495))

(declare-fun m!3984497 () Bool)

(assert (=> b!3529045 m!3984497))

(declare-fun m!3984499 () Bool)

(assert (=> b!3529045 m!3984499))

(assert (=> b!3528201 d!1030106))

(declare-fun d!1030108 () Bool)

(declare-fun lt!1206647 () Bool)

(declare-fun content!5278 (List!37530) (InoxSet Rule!10780))

(assert (=> d!1030108 (= lt!1206647 (select (content!5278 rules!2135) (rule!8150 separatorToken!241)))))

(declare-fun e!2184657 () Bool)

(assert (=> d!1030108 (= lt!1206647 e!2184657)))

(declare-fun res!1423974 () Bool)

(assert (=> d!1030108 (=> (not res!1423974) (not e!2184657))))

(assert (=> d!1030108 (= res!1423974 ((_ is Cons!37406) rules!2135))))

(assert (=> d!1030108 (= (contains!7035 rules!2135 (rule!8150 separatorToken!241)) lt!1206647)))

(declare-fun b!3529066 () Bool)

(declare-fun e!2184658 () Bool)

(assert (=> b!3529066 (= e!2184657 e!2184658)))

(declare-fun res!1423973 () Bool)

(assert (=> b!3529066 (=> res!1423973 e!2184658)))

(assert (=> b!3529066 (= res!1423973 (= (h!42826 rules!2135) (rule!8150 separatorToken!241)))))

(declare-fun b!3529067 () Bool)

(assert (=> b!3529067 (= e!2184658 (contains!7035 (t!282695 rules!2135) (rule!8150 separatorToken!241)))))

(assert (= (and d!1030108 res!1423974) b!3529066))

(assert (= (and b!3529066 (not res!1423973)) b!3529067))

(declare-fun m!3984501 () Bool)

(assert (=> d!1030108 m!3984501))

(declare-fun m!3984503 () Bool)

(assert (=> d!1030108 m!3984503))

(declare-fun m!3984505 () Bool)

(assert (=> b!3529067 m!3984505))

(assert (=> b!3528201 d!1030108))

(declare-fun d!1030110 () Bool)

(declare-fun c!608339 () Bool)

(assert (=> d!1030110 (= c!608339 (or ((_ is EmptyExpr!10249) (regex!5490 (rule!8150 separatorToken!241))) ((_ is EmptyLang!10249) (regex!5490 (rule!8150 separatorToken!241)))))))

(declare-fun e!2184667 () List!37529)

(assert (=> d!1030110 (= (usedCharacters!724 (regex!5490 (rule!8150 separatorToken!241))) e!2184667)))

(declare-fun b!3529072 () Bool)

(declare-fun e!2184666 () List!37529)

(declare-fun e!2184668 () List!37529)

(assert (=> b!3529072 (= e!2184666 e!2184668)))

(declare-fun c!608340 () Bool)

(assert (=> b!3529072 (= c!608340 ((_ is Union!10249) (regex!5490 (rule!8150 separatorToken!241))))))

(declare-fun b!3529073 () Bool)

(declare-fun e!2184665 () List!37529)

(assert (=> b!3529073 (= e!2184667 e!2184665)))

(declare-fun c!608341 () Bool)

(assert (=> b!3529073 (= c!608341 ((_ is ElementMatch!10249) (regex!5490 (rule!8150 separatorToken!241))))))

(declare-fun bm!254845 () Bool)

(declare-fun call!254850 () List!37529)

(declare-fun call!254852 () List!37529)

(declare-fun call!254853 () List!37529)

(assert (=> bm!254845 (= call!254852 (++!9277 (ite c!608340 call!254853 call!254850) (ite c!608340 call!254850 call!254853)))))

(declare-fun b!3529074 () Bool)

(assert (=> b!3529074 (= e!2184665 (Cons!37405 (c!608160 (regex!5490 (rule!8150 separatorToken!241))) Nil!37405))))

(declare-fun bm!254846 () Bool)

(assert (=> bm!254846 (= call!254853 (usedCharacters!724 (ite c!608340 (regOne!21011 (regex!5490 (rule!8150 separatorToken!241))) (regTwo!21010 (regex!5490 (rule!8150 separatorToken!241))))))))

(declare-fun b!3529075 () Bool)

(assert (=> b!3529075 (= e!2184668 call!254852)))

(declare-fun b!3529076 () Bool)

(declare-fun c!608342 () Bool)

(assert (=> b!3529076 (= c!608342 ((_ is Star!10249) (regex!5490 (rule!8150 separatorToken!241))))))

(assert (=> b!3529076 (= e!2184665 e!2184666)))

(declare-fun b!3529077 () Bool)

(assert (=> b!3529077 (= e!2184667 Nil!37405)))

(declare-fun call!254851 () List!37529)

(declare-fun bm!254847 () Bool)

(assert (=> bm!254847 (= call!254851 (usedCharacters!724 (ite c!608342 (reg!10578 (regex!5490 (rule!8150 separatorToken!241))) (ite c!608340 (regTwo!21011 (regex!5490 (rule!8150 separatorToken!241))) (regOne!21010 (regex!5490 (rule!8150 separatorToken!241)))))))))

(declare-fun bm!254848 () Bool)

(assert (=> bm!254848 (= call!254850 call!254851)))

(declare-fun b!3529078 () Bool)

(assert (=> b!3529078 (= e!2184668 call!254852)))

(declare-fun b!3529079 () Bool)

(assert (=> b!3529079 (= e!2184666 call!254851)))

(assert (= (and d!1030110 c!608339) b!3529077))

(assert (= (and d!1030110 (not c!608339)) b!3529073))

(assert (= (and b!3529073 c!608341) b!3529074))

(assert (= (and b!3529073 (not c!608341)) b!3529076))

(assert (= (and b!3529076 c!608342) b!3529079))

(assert (= (and b!3529076 (not c!608342)) b!3529072))

(assert (= (and b!3529072 c!608340) b!3529075))

(assert (= (and b!3529072 (not c!608340)) b!3529078))

(assert (= (or b!3529075 b!3529078) bm!254848))

(assert (= (or b!3529075 b!3529078) bm!254846))

(assert (= (or b!3529075 b!3529078) bm!254845))

(assert (= (or b!3529079 bm!254848) bm!254847))

(declare-fun m!3984507 () Bool)

(assert (=> bm!254845 m!3984507))

(declare-fun m!3984509 () Bool)

(assert (=> bm!254846 m!3984509))

(declare-fun m!3984511 () Bool)

(assert (=> bm!254847 m!3984511))

(assert (=> b!3528201 d!1030110))

(declare-fun d!1030112 () Bool)

(declare-fun lt!1206648 () Int)

(assert (=> d!1030112 (>= lt!1206648 0)))

(declare-fun e!2184669 () Int)

(assert (=> d!1030112 (= lt!1206648 e!2184669)))

(declare-fun c!608343 () Bool)

(assert (=> d!1030112 (= c!608343 ((_ is Nil!37405) lt!1206246))))

(assert (=> d!1030112 (= (size!28474 lt!1206246) lt!1206648)))

(declare-fun b!3529080 () Bool)

(assert (=> b!3529080 (= e!2184669 0)))

(declare-fun b!3529081 () Bool)

(assert (=> b!3529081 (= e!2184669 (+ 1 (size!28474 (t!282694 lt!1206246))))))

(assert (= (and d!1030112 c!608343) b!3529080))

(assert (= (and d!1030112 (not c!608343)) b!3529081))

(declare-fun m!3984513 () Bool)

(assert (=> b!3529081 m!3984513))

(assert (=> b!3528201 d!1030112))

(declare-fun d!1030114 () Bool)

(declare-fun lt!1206649 () Bool)

(assert (=> d!1030114 (= lt!1206649 (select (content!5277 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) lt!1206278))))

(declare-fun e!2184670 () Bool)

(assert (=> d!1030114 (= lt!1206649 e!2184670)))

(declare-fun res!1423975 () Bool)

(assert (=> d!1030114 (=> (not res!1423975) (not e!2184670))))

(assert (=> d!1030114 (= res!1423975 ((_ is Cons!37405) (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))))))

(assert (=> d!1030114 (= (contains!7036 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) lt!1206278) lt!1206649)))

(declare-fun b!3529082 () Bool)

(declare-fun e!2184671 () Bool)

(assert (=> b!3529082 (= e!2184670 e!2184671)))

(declare-fun res!1423976 () Bool)

(assert (=> b!3529082 (=> res!1423976 e!2184671)))

(assert (=> b!3529082 (= res!1423976 (= (h!42825 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) lt!1206278))))

(declare-fun b!3529083 () Bool)

(assert (=> b!3529083 (= e!2184671 (contains!7036 (t!282694 (usedCharacters!724 (regex!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) lt!1206278))))

(assert (= (and d!1030114 res!1423975) b!3529082))

(assert (= (and b!3529082 (not res!1423976)) b!3529083))

(assert (=> d!1030114 m!3982981))

(declare-fun m!3984521 () Bool)

(assert (=> d!1030114 m!3984521))

(declare-fun m!3984525 () Bool)

(assert (=> d!1030114 m!3984525))

(declare-fun m!3984527 () Bool)

(assert (=> b!3529083 m!3984527))

(assert (=> b!3528201 d!1030114))

(declare-fun d!1030116 () Bool)

(declare-fun res!1423981 () Bool)

(declare-fun e!2184677 () Bool)

(assert (=> d!1030116 (=> res!1423981 e!2184677)))

(assert (=> d!1030116 (= res!1423981 (not ((_ is Cons!37406) rules!2135)))))

(assert (=> d!1030116 (= (sepAndNonSepRulesDisjointChars!1684 rules!2135 rules!2135) e!2184677)))

(declare-fun b!3529092 () Bool)

(declare-fun e!2184678 () Bool)

(assert (=> b!3529092 (= e!2184677 e!2184678)))

(declare-fun res!1423982 () Bool)

(assert (=> b!3529092 (=> (not res!1423982) (not e!2184678))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!755 (Rule!10780 List!37530) Bool)

(assert (=> b!3529092 (= res!1423982 (ruleDisjointCharsFromAllFromOtherType!755 (h!42826 rules!2135) rules!2135))))

(declare-fun b!3529093 () Bool)

(assert (=> b!3529093 (= e!2184678 (sepAndNonSepRulesDisjointChars!1684 rules!2135 (t!282695 rules!2135)))))

(assert (= (and d!1030116 (not res!1423981)) b!3529092))

(assert (= (and b!3529092 res!1423982) b!3529093))

(declare-fun m!3984529 () Bool)

(assert (=> b!3529092 m!3984529))

(declare-fun m!3984531 () Bool)

(assert (=> b!3529093 m!3984531))

(assert (=> b!3528187 d!1030116))

(declare-fun d!1030124 () Bool)

(assert (=> d!1030124 (= (inv!50641 (tag!6134 (rule!8150 separatorToken!241))) (= (mod (str.len (value!176924 (tag!6134 (rule!8150 separatorToken!241)))) 2) 0))))

(assert (=> b!3528165 d!1030124))

(declare-fun d!1030126 () Bool)

(declare-fun res!1423983 () Bool)

(declare-fun e!2184679 () Bool)

(assert (=> d!1030126 (=> (not res!1423983) (not e!2184679))))

(assert (=> d!1030126 (= res!1423983 (semiInverseModEq!2318 (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toValue!7746 (transformation!5490 (rule!8150 separatorToken!241)))))))

(assert (=> d!1030126 (= (inv!50644 (transformation!5490 (rule!8150 separatorToken!241))) e!2184679)))

(declare-fun b!3529094 () Bool)

(assert (=> b!3529094 (= e!2184679 (equivClasses!2217 (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toValue!7746 (transformation!5490 (rule!8150 separatorToken!241)))))))

(assert (= (and d!1030126 res!1423983) b!3529094))

(declare-fun m!3984533 () Bool)

(assert (=> d!1030126 m!3984533))

(declare-fun m!3984535 () Bool)

(assert (=> b!3529094 m!3984535))

(assert (=> b!3528165 d!1030126))

(declare-fun d!1030128 () Bool)

(declare-fun lt!1206650 () Token!10346)

(assert (=> d!1030128 (= lt!1206650 (apply!8940 (list!13691 (_1!21764 lt!1206277)) 0))))

(assert (=> d!1030128 (= lt!1206650 (apply!8941 (c!608162 (_1!21764 lt!1206277)) 0))))

(declare-fun e!2184680 () Bool)

(assert (=> d!1030128 e!2184680))

(declare-fun res!1423984 () Bool)

(assert (=> d!1030128 (=> (not res!1423984) (not e!2184680))))

(assert (=> d!1030128 (= res!1423984 (<= 0 0))))

(assert (=> d!1030128 (= (apply!8938 (_1!21764 lt!1206277) 0) lt!1206650)))

(declare-fun b!3529095 () Bool)

(assert (=> b!3529095 (= e!2184680 (< 0 (size!28475 (_1!21764 lt!1206277))))))

(assert (= (and d!1030128 res!1423984) b!3529095))

(assert (=> d!1030128 m!3984075))

(assert (=> d!1030128 m!3984075))

(declare-fun m!3984537 () Bool)

(assert (=> d!1030128 m!3984537))

(declare-fun m!3984539 () Bool)

(assert (=> d!1030128 m!3984539))

(assert (=> b!3529095 m!3982985))

(assert (=> b!3528188 d!1030128))

(declare-fun b!3529096 () Bool)

(declare-fun e!2184681 () Bool)

(assert (=> b!3529096 (= e!2184681 (inv!16 (value!176925 separatorToken!241)))))

(declare-fun b!3529097 () Bool)

(declare-fun res!1423985 () Bool)

(declare-fun e!2184682 () Bool)

(assert (=> b!3529097 (=> res!1423985 e!2184682)))

(assert (=> b!3529097 (= res!1423985 (not ((_ is IntegerValue!17162) (value!176925 separatorToken!241))))))

(declare-fun e!2184683 () Bool)

(assert (=> b!3529097 (= e!2184683 e!2184682)))

(declare-fun d!1030130 () Bool)

(declare-fun c!608345 () Bool)

(assert (=> d!1030130 (= c!608345 ((_ is IntegerValue!17160) (value!176925 separatorToken!241)))))

(assert (=> d!1030130 (= (inv!21 (value!176925 separatorToken!241)) e!2184681)))

(declare-fun b!3529098 () Bool)

(assert (=> b!3529098 (= e!2184682 (inv!15 (value!176925 separatorToken!241)))))

(declare-fun b!3529099 () Bool)

(assert (=> b!3529099 (= e!2184683 (inv!17 (value!176925 separatorToken!241)))))

(declare-fun b!3529100 () Bool)

(assert (=> b!3529100 (= e!2184681 e!2184683)))

(declare-fun c!608344 () Bool)

(assert (=> b!3529100 (= c!608344 ((_ is IntegerValue!17161) (value!176925 separatorToken!241)))))

(assert (= (and d!1030130 c!608345) b!3529096))

(assert (= (and d!1030130 (not c!608345)) b!3529100))

(assert (= (and b!3529100 c!608344) b!3529099))

(assert (= (and b!3529100 (not c!608344)) b!3529097))

(assert (= (and b!3529097 (not res!1423985)) b!3529098))

(declare-fun m!3984541 () Bool)

(assert (=> b!3529096 m!3984541))

(declare-fun m!3984543 () Bool)

(assert (=> b!3529098 m!3984543))

(declare-fun m!3984545 () Bool)

(assert (=> b!3529099 m!3984545))

(assert (=> b!3528167 d!1030130))

(declare-fun b!3529101 () Bool)

(declare-fun e!2184686 () Bool)

(declare-fun e!2184689 () Bool)

(assert (=> b!3529101 (= e!2184686 e!2184689)))

(declare-fun res!1423988 () Bool)

(assert (=> b!3529101 (=> (not res!1423988) (not e!2184689))))

(declare-fun lt!1206651 () Bool)

(assert (=> b!3529101 (= res!1423988 (not lt!1206651))))

(declare-fun b!3529102 () Bool)

(declare-fun res!1423991 () Bool)

(declare-fun e!2184687 () Bool)

(assert (=> b!3529102 (=> (not res!1423991) (not e!2184687))))

(declare-fun call!254854 () Bool)

(assert (=> b!3529102 (= res!1423991 (not call!254854))))

(declare-fun b!3529103 () Bool)

(declare-fun e!2184685 () Bool)

(assert (=> b!3529103 (= e!2184685 (not lt!1206651))))

(declare-fun b!3529104 () Bool)

(declare-fun e!2184690 () Bool)

(assert (=> b!3529104 (= e!2184689 e!2184690)))

(declare-fun res!1423992 () Bool)

(assert (=> b!3529104 (=> res!1423992 e!2184690)))

(assert (=> b!3529104 (= res!1423992 call!254854)))

(declare-fun b!3529105 () Bool)

(declare-fun res!1423986 () Bool)

(assert (=> b!3529105 (=> (not res!1423986) (not e!2184687))))

(assert (=> b!3529105 (= res!1423986 (isEmpty!21886 (tail!5502 lt!1206246)))))

(declare-fun b!3529106 () Bool)

(assert (=> b!3529106 (= e!2184687 (= (head!7405 lt!1206246) (c!608160 (regex!5490 lt!1206250))))))

(declare-fun bm!254849 () Bool)

(assert (=> bm!254849 (= call!254854 (isEmpty!21886 lt!1206246))))

(declare-fun b!3529107 () Bool)

(declare-fun e!2184684 () Bool)

(assert (=> b!3529107 (= e!2184684 (matchR!4833 (derivativeStep!3076 (regex!5490 lt!1206250) (head!7405 lt!1206246)) (tail!5502 lt!1206246)))))

(declare-fun b!3529108 () Bool)

(assert (=> b!3529108 (= e!2184690 (not (= (head!7405 lt!1206246) (c!608160 (regex!5490 lt!1206250)))))))

(declare-fun b!3529109 () Bool)

(declare-fun res!1423993 () Bool)

(assert (=> b!3529109 (=> res!1423993 e!2184690)))

(assert (=> b!3529109 (= res!1423993 (not (isEmpty!21886 (tail!5502 lt!1206246))))))

(declare-fun b!3529110 () Bool)

(declare-fun e!2184688 () Bool)

(assert (=> b!3529110 (= e!2184688 e!2184685)))

(declare-fun c!608346 () Bool)

(assert (=> b!3529110 (= c!608346 ((_ is EmptyLang!10249) (regex!5490 lt!1206250)))))

(declare-fun b!3529112 () Bool)

(assert (=> b!3529112 (= e!2184688 (= lt!1206651 call!254854))))

(declare-fun b!3529113 () Bool)

(assert (=> b!3529113 (= e!2184684 (nullable!3523 (regex!5490 lt!1206250)))))

(declare-fun b!3529114 () Bool)

(declare-fun res!1423990 () Bool)

(assert (=> b!3529114 (=> res!1423990 e!2184686)))

(assert (=> b!3529114 (= res!1423990 (not ((_ is ElementMatch!10249) (regex!5490 lt!1206250))))))

(assert (=> b!3529114 (= e!2184685 e!2184686)))

(declare-fun b!3529111 () Bool)

(declare-fun res!1423987 () Bool)

(assert (=> b!3529111 (=> res!1423987 e!2184686)))

(assert (=> b!3529111 (= res!1423987 e!2184687)))

(declare-fun res!1423989 () Bool)

(assert (=> b!3529111 (=> (not res!1423989) (not e!2184687))))

(assert (=> b!3529111 (= res!1423989 lt!1206651)))

(declare-fun d!1030132 () Bool)

(assert (=> d!1030132 e!2184688))

(declare-fun c!608348 () Bool)

(assert (=> d!1030132 (= c!608348 ((_ is EmptyExpr!10249) (regex!5490 lt!1206250)))))

(assert (=> d!1030132 (= lt!1206651 e!2184684)))

(declare-fun c!608347 () Bool)

(assert (=> d!1030132 (= c!608347 (isEmpty!21886 lt!1206246))))

(assert (=> d!1030132 (validRegex!4679 (regex!5490 lt!1206250))))

(assert (=> d!1030132 (= (matchR!4833 (regex!5490 lt!1206250) lt!1206246) lt!1206651)))

(assert (= (and d!1030132 c!608347) b!3529113))

(assert (= (and d!1030132 (not c!608347)) b!3529107))

(assert (= (and d!1030132 c!608348) b!3529112))

(assert (= (and d!1030132 (not c!608348)) b!3529110))

(assert (= (and b!3529110 c!608346) b!3529103))

(assert (= (and b!3529110 (not c!608346)) b!3529114))

(assert (= (and b!3529114 (not res!1423990)) b!3529111))

(assert (= (and b!3529111 res!1423989) b!3529102))

(assert (= (and b!3529102 res!1423991) b!3529105))

(assert (= (and b!3529105 res!1423986) b!3529106))

(assert (= (and b!3529111 (not res!1423987)) b!3529101))

(assert (= (and b!3529101 res!1423988) b!3529104))

(assert (= (and b!3529104 (not res!1423992)) b!3529109))

(assert (= (and b!3529109 (not res!1423993)) b!3529108))

(assert (= (or b!3529112 b!3529102 b!3529104) bm!254849))

(declare-fun m!3984547 () Bool)

(assert (=> b!3529108 m!3984547))

(assert (=> b!3529106 m!3984547))

(declare-fun m!3984549 () Bool)

(assert (=> b!3529109 m!3984549))

(assert (=> b!3529109 m!3984549))

(declare-fun m!3984551 () Bool)

(assert (=> b!3529109 m!3984551))

(assert (=> b!3529105 m!3984549))

(assert (=> b!3529105 m!3984549))

(assert (=> b!3529105 m!3984551))

(declare-fun m!3984553 () Bool)

(assert (=> b!3529113 m!3984553))

(declare-fun m!3984555 () Bool)

(assert (=> bm!254849 m!3984555))

(assert (=> d!1030132 m!3984555))

(declare-fun m!3984557 () Bool)

(assert (=> d!1030132 m!3984557))

(assert (=> b!3529107 m!3984547))

(assert (=> b!3529107 m!3984547))

(declare-fun m!3984559 () Bool)

(assert (=> b!3529107 m!3984559))

(assert (=> b!3529107 m!3984549))

(assert (=> b!3529107 m!3984559))

(assert (=> b!3529107 m!3984549))

(declare-fun m!3984561 () Bool)

(assert (=> b!3529107 m!3984561))

(assert (=> b!3528166 d!1030132))

(declare-fun d!1030134 () Bool)

(assert (=> d!1030134 (= (get!12016 lt!1206276) (v!37156 lt!1206276))))

(assert (=> b!3528166 d!1030134))

(declare-fun b!3529115 () Bool)

(declare-fun e!2184691 () List!37529)

(assert (=> b!3529115 (= e!2184691 lt!1206239)))

(declare-fun d!1030136 () Bool)

(declare-fun e!2184692 () Bool)

(assert (=> d!1030136 e!2184692))

(declare-fun res!1423995 () Bool)

(assert (=> d!1030136 (=> (not res!1423995) (not e!2184692))))

(declare-fun lt!1206652 () List!37529)

(assert (=> d!1030136 (= res!1423995 (= (content!5277 lt!1206652) ((_ map or) (content!5277 lt!1206246) (content!5277 lt!1206239))))))

(assert (=> d!1030136 (= lt!1206652 e!2184691)))

(declare-fun c!608349 () Bool)

(assert (=> d!1030136 (= c!608349 ((_ is Nil!37405) lt!1206246))))

(assert (=> d!1030136 (= (++!9277 lt!1206246 lt!1206239) lt!1206652)))

(declare-fun b!3529116 () Bool)

(assert (=> b!3529116 (= e!2184691 (Cons!37405 (h!42825 lt!1206246) (++!9277 (t!282694 lt!1206246) lt!1206239)))))

(declare-fun b!3529118 () Bool)

(assert (=> b!3529118 (= e!2184692 (or (not (= lt!1206239 Nil!37405)) (= lt!1206652 lt!1206246)))))

(declare-fun b!3529117 () Bool)

(declare-fun res!1423994 () Bool)

(assert (=> b!3529117 (=> (not res!1423994) (not e!2184692))))

(assert (=> b!3529117 (= res!1423994 (= (size!28474 lt!1206652) (+ (size!28474 lt!1206246) (size!28474 lt!1206239))))))

(assert (= (and d!1030136 c!608349) b!3529115))

(assert (= (and d!1030136 (not c!608349)) b!3529116))

(assert (= (and d!1030136 res!1423995) b!3529117))

(assert (= (and b!3529117 res!1423994) b!3529118))

(declare-fun m!3984563 () Bool)

(assert (=> d!1030136 m!3984563))

(assert (=> d!1030136 m!3983369))

(declare-fun m!3984565 () Bool)

(assert (=> d!1030136 m!3984565))

(declare-fun m!3984567 () Bool)

(assert (=> b!3529116 m!3984567))

(declare-fun m!3984569 () Bool)

(assert (=> b!3529117 m!3984569))

(assert (=> b!3529117 m!3982965))

(declare-fun m!3984571 () Bool)

(assert (=> b!3529117 m!3984571))

(assert (=> b!3528184 d!1030136))

(declare-fun d!1030138 () Bool)

(assert (=> d!1030138 (= (++!9277 (++!9277 lt!1206246 lt!1206247) lt!1206242) (++!9277 lt!1206246 (++!9277 lt!1206247 lt!1206242)))))

(declare-fun lt!1206655 () Unit!53110)

(declare-fun choose!20510 (List!37529 List!37529 List!37529) Unit!53110)

(assert (=> d!1030138 (= lt!1206655 (choose!20510 lt!1206246 lt!1206247 lt!1206242))))

(assert (=> d!1030138 (= (lemmaConcatAssociativity!2024 lt!1206246 lt!1206247 lt!1206242) lt!1206655)))

(declare-fun bs!565838 () Bool)

(assert (= bs!565838 d!1030138))

(declare-fun m!3984573 () Bool)

(assert (=> bs!565838 m!3984573))

(assert (=> bs!565838 m!3982915))

(assert (=> bs!565838 m!3982933))

(assert (=> bs!565838 m!3982915))

(declare-fun m!3984575 () Bool)

(assert (=> bs!565838 m!3984575))

(assert (=> bs!565838 m!3982933))

(assert (=> bs!565838 m!3982935))

(assert (=> b!3528184 d!1030138))

(declare-fun lt!1206658 () Bool)

(declare-fun d!1030140 () Bool)

(declare-fun isEmpty!21896 (List!37531) Bool)

(assert (=> d!1030140 (= lt!1206658 (isEmpty!21896 (list!13691 (_1!21764 (lex!2405 thiss!18206 rules!2135 lt!1206259)))))))

(declare-fun isEmpty!21897 (Conc!11356) Bool)

(assert (=> d!1030140 (= lt!1206658 (isEmpty!21897 (c!608162 (_1!21764 (lex!2405 thiss!18206 rules!2135 lt!1206259)))))))

(assert (=> d!1030140 (= (isEmpty!21883 (_1!21764 (lex!2405 thiss!18206 rules!2135 lt!1206259))) lt!1206658)))

(declare-fun bs!565839 () Bool)

(assert (= bs!565839 d!1030140))

(declare-fun m!3984577 () Bool)

(assert (=> bs!565839 m!3984577))

(assert (=> bs!565839 m!3984577))

(declare-fun m!3984579 () Bool)

(assert (=> bs!565839 m!3984579))

(declare-fun m!3984581 () Bool)

(assert (=> bs!565839 m!3984581))

(assert (=> b!3528163 d!1030140))

(declare-fun d!1030142 () Bool)

(declare-fun e!2184693 () Bool)

(assert (=> d!1030142 e!2184693))

(declare-fun res!1423996 () Bool)

(assert (=> d!1030142 (=> (not res!1423996) (not e!2184693))))

(declare-fun e!2184695 () Bool)

(assert (=> d!1030142 (= res!1423996 e!2184695)))

(declare-fun c!608350 () Bool)

(declare-fun lt!1206659 () tuple2!37260)

(assert (=> d!1030142 (= c!608350 (> (size!28475 (_1!21764 lt!1206659)) 0))))

(assert (=> d!1030142 (= lt!1206659 (lexTailRecV2!1092 thiss!18206 rules!2135 lt!1206259 (BalanceConc!22325 Empty!11355) lt!1206259 (BalanceConc!22327 Empty!11356)))))

(assert (=> d!1030142 (= (lex!2405 thiss!18206 rules!2135 lt!1206259) lt!1206659)))

(declare-fun b!3529119 () Bool)

(assert (=> b!3529119 (= e!2184693 (= (list!13689 (_2!21764 lt!1206659)) (_2!21767 (lexList!1484 thiss!18206 rules!2135 (list!13689 lt!1206259)))))))

(declare-fun b!3529120 () Bool)

(declare-fun res!1423998 () Bool)

(assert (=> b!3529120 (=> (not res!1423998) (not e!2184693))))

(assert (=> b!3529120 (= res!1423998 (= (list!13691 (_1!21764 lt!1206659)) (_1!21767 (lexList!1484 thiss!18206 rules!2135 (list!13689 lt!1206259)))))))

(declare-fun b!3529121 () Bool)

(declare-fun e!2184694 () Bool)

(assert (=> b!3529121 (= e!2184694 (not (isEmpty!21883 (_1!21764 lt!1206659))))))

(declare-fun b!3529122 () Bool)

(assert (=> b!3529122 (= e!2184695 e!2184694)))

(declare-fun res!1423997 () Bool)

(assert (=> b!3529122 (= res!1423997 (< (size!28479 (_2!21764 lt!1206659)) (size!28479 lt!1206259)))))

(assert (=> b!3529122 (=> (not res!1423997) (not e!2184694))))

(declare-fun b!3529123 () Bool)

(assert (=> b!3529123 (= e!2184695 (= (_2!21764 lt!1206659) lt!1206259))))

(assert (= (and d!1030142 c!608350) b!3529122))

(assert (= (and d!1030142 (not c!608350)) b!3529123))

(assert (= (and b!3529122 res!1423997) b!3529121))

(assert (= (and d!1030142 res!1423996) b!3529120))

(assert (= (and b!3529120 res!1423998) b!3529119))

(declare-fun m!3984583 () Bool)

(assert (=> d!1030142 m!3984583))

(declare-fun m!3984585 () Bool)

(assert (=> d!1030142 m!3984585))

(declare-fun m!3984587 () Bool)

(assert (=> b!3529119 m!3984587))

(declare-fun m!3984589 () Bool)

(assert (=> b!3529119 m!3984589))

(assert (=> b!3529119 m!3984589))

(declare-fun m!3984591 () Bool)

(assert (=> b!3529119 m!3984591))

(declare-fun m!3984593 () Bool)

(assert (=> b!3529121 m!3984593))

(declare-fun m!3984595 () Bool)

(assert (=> b!3529120 m!3984595))

(assert (=> b!3529120 m!3984589))

(assert (=> b!3529120 m!3984589))

(assert (=> b!3529120 m!3984591))

(declare-fun m!3984597 () Bool)

(assert (=> b!3529122 m!3984597))

(declare-fun m!3984599 () Bool)

(assert (=> b!3529122 m!3984599))

(assert (=> b!3528163 d!1030142))

(declare-fun d!1030144 () Bool)

(assert (=> d!1030144 (= (seqFromList!4033 lt!1206246) (fromListB!1855 lt!1206246))))

(declare-fun bs!565840 () Bool)

(assert (= bs!565840 d!1030144))

(declare-fun m!3984601 () Bool)

(assert (=> bs!565840 m!3984601))

(assert (=> b!3528163 d!1030144))

(declare-fun d!1030146 () Bool)

(declare-fun lt!1206661 () Bool)

(declare-fun e!2184696 () Bool)

(assert (=> d!1030146 (= lt!1206661 e!2184696)))

(declare-fun res!1424001 () Bool)

(assert (=> d!1030146 (=> (not res!1424001) (not e!2184696))))

(assert (=> d!1030146 (= res!1424001 (= (list!13691 (_1!21764 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 (h!42827 tokens!494)))))) (list!13691 (singletonSeq!2586 (h!42827 tokens!494)))))))

(declare-fun e!2184697 () Bool)

(assert (=> d!1030146 (= lt!1206661 e!2184697)))

(declare-fun res!1423999 () Bool)

(assert (=> d!1030146 (=> (not res!1423999) (not e!2184697))))

(declare-fun lt!1206660 () tuple2!37260)

(assert (=> d!1030146 (= res!1423999 (= (size!28475 (_1!21764 lt!1206660)) 1))))

(assert (=> d!1030146 (= lt!1206660 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 (h!42827 tokens!494)))))))

(assert (=> d!1030146 (not (isEmpty!21885 rules!2135))))

(assert (=> d!1030146 (= (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 tokens!494)) lt!1206661)))

(declare-fun b!3529124 () Bool)

(declare-fun res!1424000 () Bool)

(assert (=> b!3529124 (=> (not res!1424000) (not e!2184697))))

(assert (=> b!3529124 (= res!1424000 (= (apply!8938 (_1!21764 lt!1206660) 0) (h!42827 tokens!494)))))

(declare-fun b!3529125 () Bool)

(assert (=> b!3529125 (= e!2184697 (isEmpty!21884 (_2!21764 lt!1206660)))))

(declare-fun b!3529126 () Bool)

(assert (=> b!3529126 (= e!2184696 (isEmpty!21884 (_2!21764 (lex!2405 thiss!18206 rules!2135 (print!2144 thiss!18206 (singletonSeq!2586 (h!42827 tokens!494)))))))))

(assert (= (and d!1030146 res!1423999) b!3529124))

(assert (= (and b!3529124 res!1424000) b!3529125))

(assert (= (and d!1030146 res!1424001) b!3529126))

(declare-fun m!3984603 () Bool)

(assert (=> d!1030146 m!3984603))

(declare-fun m!3984605 () Bool)

(assert (=> d!1030146 m!3984605))

(assert (=> d!1030146 m!3983033))

(assert (=> d!1030146 m!3983099))

(assert (=> d!1030146 m!3984603))

(assert (=> d!1030146 m!3983099))

(declare-fun m!3984607 () Bool)

(assert (=> d!1030146 m!3984607))

(declare-fun m!3984609 () Bool)

(assert (=> d!1030146 m!3984609))

(assert (=> d!1030146 m!3983099))

(declare-fun m!3984611 () Bool)

(assert (=> d!1030146 m!3984611))

(declare-fun m!3984613 () Bool)

(assert (=> b!3529124 m!3984613))

(declare-fun m!3984615 () Bool)

(assert (=> b!3529125 m!3984615))

(assert (=> b!3529126 m!3983099))

(assert (=> b!3529126 m!3983099))

(assert (=> b!3529126 m!3984603))

(assert (=> b!3529126 m!3984603))

(assert (=> b!3529126 m!3984605))

(declare-fun m!3984617 () Bool)

(assert (=> b!3529126 m!3984617))

(assert (=> b!3528205 d!1030146))

(declare-fun d!1030148 () Bool)

(assert (=> d!1030148 (= (inv!50641 (tag!6134 (h!42826 rules!2135))) (= (mod (str.len (value!176924 (tag!6134 (h!42826 rules!2135)))) 2) 0))))

(assert (=> b!3528192 d!1030148))

(declare-fun d!1030150 () Bool)

(declare-fun res!1424002 () Bool)

(declare-fun e!2184698 () Bool)

(assert (=> d!1030150 (=> (not res!1424002) (not e!2184698))))

(assert (=> d!1030150 (= res!1424002 (semiInverseModEq!2318 (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toValue!7746 (transformation!5490 (h!42826 rules!2135)))))))

(assert (=> d!1030150 (= (inv!50644 (transformation!5490 (h!42826 rules!2135))) e!2184698)))

(declare-fun b!3529127 () Bool)

(assert (=> b!3529127 (= e!2184698 (equivClasses!2217 (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toValue!7746 (transformation!5490 (h!42826 rules!2135)))))))

(assert (= (and d!1030150 res!1424002) b!3529127))

(declare-fun m!3984619 () Bool)

(assert (=> d!1030150 m!3984619))

(declare-fun m!3984621 () Bool)

(assert (=> b!3529127 m!3984621))

(assert (=> b!3528192 d!1030150))

(declare-fun b!3529128 () Bool)

(declare-fun e!2184701 () Bool)

(declare-fun e!2184704 () Bool)

(assert (=> b!3529128 (= e!2184701 e!2184704)))

(declare-fun res!1424005 () Bool)

(assert (=> b!3529128 (=> (not res!1424005) (not e!2184704))))

(declare-fun lt!1206662 () Bool)

(assert (=> b!3529128 (= res!1424005 (not lt!1206662))))

(declare-fun b!3529129 () Bool)

(declare-fun res!1424008 () Bool)

(declare-fun e!2184702 () Bool)

(assert (=> b!3529129 (=> (not res!1424008) (not e!2184702))))

(declare-fun call!254855 () Bool)

(assert (=> b!3529129 (= res!1424008 (not call!254855))))

(declare-fun b!3529130 () Bool)

(declare-fun e!2184700 () Bool)

(assert (=> b!3529130 (= e!2184700 (not lt!1206662))))

(declare-fun b!3529131 () Bool)

(declare-fun e!2184705 () Bool)

(assert (=> b!3529131 (= e!2184704 e!2184705)))

(declare-fun res!1424009 () Bool)

(assert (=> b!3529131 (=> res!1424009 e!2184705)))

(assert (=> b!3529131 (= res!1424009 call!254855)))

(declare-fun b!3529132 () Bool)

(declare-fun res!1424003 () Bool)

(assert (=> b!3529132 (=> (not res!1424003) (not e!2184702))))

(assert (=> b!3529132 (= res!1424003 (isEmpty!21886 (tail!5502 lt!1206247)))))

(declare-fun b!3529133 () Bool)

(assert (=> b!3529133 (= e!2184702 (= (head!7405 lt!1206247) (c!608160 (regex!5490 lt!1206252))))))

(declare-fun bm!254850 () Bool)

(assert (=> bm!254850 (= call!254855 (isEmpty!21886 lt!1206247))))

(declare-fun b!3529134 () Bool)

(declare-fun e!2184699 () Bool)

(assert (=> b!3529134 (= e!2184699 (matchR!4833 (derivativeStep!3076 (regex!5490 lt!1206252) (head!7405 lt!1206247)) (tail!5502 lt!1206247)))))

(declare-fun b!3529135 () Bool)

(assert (=> b!3529135 (= e!2184705 (not (= (head!7405 lt!1206247) (c!608160 (regex!5490 lt!1206252)))))))

(declare-fun b!3529136 () Bool)

(declare-fun res!1424010 () Bool)

(assert (=> b!3529136 (=> res!1424010 e!2184705)))

(assert (=> b!3529136 (= res!1424010 (not (isEmpty!21886 (tail!5502 lt!1206247))))))

(declare-fun b!3529137 () Bool)

(declare-fun e!2184703 () Bool)

(assert (=> b!3529137 (= e!2184703 e!2184700)))

(declare-fun c!608351 () Bool)

(assert (=> b!3529137 (= c!608351 ((_ is EmptyLang!10249) (regex!5490 lt!1206252)))))

(declare-fun b!3529139 () Bool)

(assert (=> b!3529139 (= e!2184703 (= lt!1206662 call!254855))))

(declare-fun b!3529140 () Bool)

(assert (=> b!3529140 (= e!2184699 (nullable!3523 (regex!5490 lt!1206252)))))

(declare-fun b!3529141 () Bool)

(declare-fun res!1424007 () Bool)

(assert (=> b!3529141 (=> res!1424007 e!2184701)))

(assert (=> b!3529141 (= res!1424007 (not ((_ is ElementMatch!10249) (regex!5490 lt!1206252))))))

(assert (=> b!3529141 (= e!2184700 e!2184701)))

(declare-fun b!3529138 () Bool)

(declare-fun res!1424004 () Bool)

(assert (=> b!3529138 (=> res!1424004 e!2184701)))

(assert (=> b!3529138 (= res!1424004 e!2184702)))

(declare-fun res!1424006 () Bool)

(assert (=> b!3529138 (=> (not res!1424006) (not e!2184702))))

(assert (=> b!3529138 (= res!1424006 lt!1206662)))

(declare-fun d!1030152 () Bool)

(assert (=> d!1030152 e!2184703))

(declare-fun c!608353 () Bool)

(assert (=> d!1030152 (= c!608353 ((_ is EmptyExpr!10249) (regex!5490 lt!1206252)))))

(assert (=> d!1030152 (= lt!1206662 e!2184699)))

(declare-fun c!608352 () Bool)

(assert (=> d!1030152 (= c!608352 (isEmpty!21886 lt!1206247))))

(assert (=> d!1030152 (validRegex!4679 (regex!5490 lt!1206252))))

(assert (=> d!1030152 (= (matchR!4833 (regex!5490 lt!1206252) lt!1206247) lt!1206662)))

(assert (= (and d!1030152 c!608352) b!3529140))

(assert (= (and d!1030152 (not c!608352)) b!3529134))

(assert (= (and d!1030152 c!608353) b!3529139))

(assert (= (and d!1030152 (not c!608353)) b!3529137))

(assert (= (and b!3529137 c!608351) b!3529130))

(assert (= (and b!3529137 (not c!608351)) b!3529141))

(assert (= (and b!3529141 (not res!1424007)) b!3529138))

(assert (= (and b!3529138 res!1424006) b!3529129))

(assert (= (and b!3529129 res!1424008) b!3529132))

(assert (= (and b!3529132 res!1424003) b!3529133))

(assert (= (and b!3529138 (not res!1424004)) b!3529128))

(assert (= (and b!3529128 res!1424005) b!3529131))

(assert (= (and b!3529131 (not res!1424009)) b!3529136))

(assert (= (and b!3529136 (not res!1424010)) b!3529135))

(assert (= (or b!3529139 b!3529129 b!3529131) bm!254850))

(assert (=> b!3529135 m!3982941))

(assert (=> b!3529133 m!3982941))

(declare-fun m!3984623 () Bool)

(assert (=> b!3529136 m!3984623))

(assert (=> b!3529136 m!3984623))

(declare-fun m!3984625 () Bool)

(assert (=> b!3529136 m!3984625))

(assert (=> b!3529132 m!3984623))

(assert (=> b!3529132 m!3984623))

(assert (=> b!3529132 m!3984625))

(declare-fun m!3984627 () Bool)

(assert (=> b!3529140 m!3984627))

(declare-fun m!3984629 () Bool)

(assert (=> bm!254850 m!3984629))

(assert (=> d!1030152 m!3984629))

(declare-fun m!3984631 () Bool)

(assert (=> d!1030152 m!3984631))

(assert (=> b!3529134 m!3982941))

(assert (=> b!3529134 m!3982941))

(declare-fun m!3984633 () Bool)

(assert (=> b!3529134 m!3984633))

(assert (=> b!3529134 m!3984623))

(assert (=> b!3529134 m!3984633))

(assert (=> b!3529134 m!3984623))

(declare-fun m!3984635 () Bool)

(assert (=> b!3529134 m!3984635))

(assert (=> b!3528171 d!1030152))

(declare-fun d!1030154 () Bool)

(assert (=> d!1030154 (= (get!12016 lt!1206267) (v!37156 lt!1206267))))

(assert (=> b!3528171 d!1030154))

(declare-fun d!1030156 () Bool)

(declare-fun lt!1206663 () BalanceConc!22324)

(assert (=> d!1030156 (= (list!13689 lt!1206663) (printList!1627 thiss!18206 (list!13691 lt!1206254)))))

(assert (=> d!1030156 (= lt!1206663 (printTailRec!1574 thiss!18206 lt!1206254 0 (BalanceConc!22325 Empty!11355)))))

(assert (=> d!1030156 (= (print!2144 thiss!18206 lt!1206254) lt!1206663)))

(declare-fun bs!565841 () Bool)

(assert (= bs!565841 d!1030156))

(declare-fun m!3984637 () Bool)

(assert (=> bs!565841 m!3984637))

(declare-fun m!3984639 () Bool)

(assert (=> bs!565841 m!3984639))

(assert (=> bs!565841 m!3984639))

(declare-fun m!3984641 () Bool)

(assert (=> bs!565841 m!3984641))

(assert (=> bs!565841 m!3983097))

(assert (=> b!3528168 d!1030156))

(declare-fun d!1030158 () Bool)

(declare-fun lt!1206664 () BalanceConc!22324)

(assert (=> d!1030158 (= (list!13689 lt!1206664) (printListTailRec!724 thiss!18206 (dropList!1241 lt!1206254 0) (list!13689 (BalanceConc!22325 Empty!11355))))))

(declare-fun e!2184706 () BalanceConc!22324)

(assert (=> d!1030158 (= lt!1206664 e!2184706)))

(declare-fun c!608354 () Bool)

(assert (=> d!1030158 (= c!608354 (>= 0 (size!28475 lt!1206254)))))

(declare-fun e!2184707 () Bool)

(assert (=> d!1030158 e!2184707))

(declare-fun res!1424011 () Bool)

(assert (=> d!1030158 (=> (not res!1424011) (not e!2184707))))

(assert (=> d!1030158 (= res!1424011 (>= 0 0))))

(assert (=> d!1030158 (= (printTailRec!1574 thiss!18206 lt!1206254 0 (BalanceConc!22325 Empty!11355)) lt!1206664)))

(declare-fun b!3529142 () Bool)

(assert (=> b!3529142 (= e!2184707 (<= 0 (size!28475 lt!1206254)))))

(declare-fun b!3529143 () Bool)

(assert (=> b!3529143 (= e!2184706 (BalanceConc!22325 Empty!11355))))

(declare-fun b!3529144 () Bool)

(assert (=> b!3529144 (= e!2184706 (printTailRec!1574 thiss!18206 lt!1206254 (+ 0 1) (++!9279 (BalanceConc!22325 Empty!11355) (charsOf!3504 (apply!8938 lt!1206254 0)))))))

(declare-fun lt!1206670 () List!37531)

(assert (=> b!3529144 (= lt!1206670 (list!13691 lt!1206254))))

(declare-fun lt!1206668 () Unit!53110)

(assert (=> b!3529144 (= lt!1206668 (lemmaDropApply!1199 lt!1206670 0))))

(assert (=> b!3529144 (= (head!7407 (drop!2055 lt!1206670 0)) (apply!8940 lt!1206670 0))))

(declare-fun lt!1206665 () Unit!53110)

(assert (=> b!3529144 (= lt!1206665 lt!1206668)))

(declare-fun lt!1206667 () List!37531)

(assert (=> b!3529144 (= lt!1206667 (list!13691 lt!1206254))))

(declare-fun lt!1206669 () Unit!53110)

(assert (=> b!3529144 (= lt!1206669 (lemmaDropTail!1083 lt!1206667 0))))

(assert (=> b!3529144 (= (tail!5505 (drop!2055 lt!1206667 0)) (drop!2055 lt!1206667 (+ 0 1)))))

(declare-fun lt!1206666 () Unit!53110)

(assert (=> b!3529144 (= lt!1206666 lt!1206669)))

(assert (= (and d!1030158 res!1424011) b!3529142))

(assert (= (and d!1030158 c!608354) b!3529143))

(assert (= (and d!1030158 (not c!608354)) b!3529144))

(declare-fun m!3984643 () Bool)

(assert (=> d!1030158 m!3984643))

(assert (=> d!1030158 m!3984193))

(declare-fun m!3984645 () Bool)

(assert (=> d!1030158 m!3984645))

(assert (=> d!1030158 m!3984643))

(assert (=> d!1030158 m!3984193))

(declare-fun m!3984647 () Bool)

(assert (=> d!1030158 m!3984647))

(declare-fun m!3984649 () Bool)

(assert (=> d!1030158 m!3984649))

(assert (=> b!3529142 m!3984649))

(declare-fun m!3984651 () Bool)

(assert (=> b!3529144 m!3984651))

(declare-fun m!3984653 () Bool)

(assert (=> b!3529144 m!3984653))

(assert (=> b!3529144 m!3984639))

(declare-fun m!3984655 () Bool)

(assert (=> b!3529144 m!3984655))

(declare-fun m!3984657 () Bool)

(assert (=> b!3529144 m!3984657))

(declare-fun m!3984659 () Bool)

(assert (=> b!3529144 m!3984659))

(assert (=> b!3529144 m!3984655))

(assert (=> b!3529144 m!3984657))

(declare-fun m!3984661 () Bool)

(assert (=> b!3529144 m!3984661))

(declare-fun m!3984663 () Bool)

(assert (=> b!3529144 m!3984663))

(assert (=> b!3529144 m!3984651))

(assert (=> b!3529144 m!3984661))

(declare-fun m!3984665 () Bool)

(assert (=> b!3529144 m!3984665))

(assert (=> b!3529144 m!3984659))

(declare-fun m!3984667 () Bool)

(assert (=> b!3529144 m!3984667))

(declare-fun m!3984669 () Bool)

(assert (=> b!3529144 m!3984669))

(declare-fun m!3984671 () Bool)

(assert (=> b!3529144 m!3984671))

(declare-fun m!3984673 () Bool)

(assert (=> b!3529144 m!3984673))

(assert (=> b!3528168 d!1030158))

(declare-fun d!1030160 () Bool)

(assert (=> d!1030160 (= (list!13689 lt!1206243) (list!13693 (c!608161 lt!1206243)))))

(declare-fun bs!565842 () Bool)

(assert (= bs!565842 d!1030160))

(declare-fun m!3984675 () Bool)

(assert (=> bs!565842 m!3984675))

(assert (=> b!3528168 d!1030160))

(declare-fun d!1030162 () Bool)

(declare-fun e!2184708 () Bool)

(assert (=> d!1030162 e!2184708))

(declare-fun res!1424012 () Bool)

(assert (=> d!1030162 (=> (not res!1424012) (not e!2184708))))

(declare-fun lt!1206671 () BalanceConc!22326)

(assert (=> d!1030162 (= res!1424012 (= (list!13691 lt!1206671) (Cons!37407 (h!42827 tokens!494) Nil!37407)))))

(assert (=> d!1030162 (= lt!1206671 (singleton!1155 (h!42827 tokens!494)))))

(assert (=> d!1030162 (= (singletonSeq!2586 (h!42827 tokens!494)) lt!1206671)))

(declare-fun b!3529145 () Bool)

(assert (=> b!3529145 (= e!2184708 (isBalanced!3464 (c!608162 lt!1206671)))))

(assert (= (and d!1030162 res!1424012) b!3529145))

(declare-fun m!3984677 () Bool)

(assert (=> d!1030162 m!3984677))

(declare-fun m!3984679 () Bool)

(assert (=> d!1030162 m!3984679))

(declare-fun m!3984681 () Bool)

(assert (=> b!3529145 m!3984681))

(assert (=> b!3528168 d!1030162))

(declare-fun d!1030164 () Bool)

(declare-fun c!608357 () Bool)

(assert (=> d!1030164 (= c!608357 ((_ is Cons!37407) (Cons!37407 (h!42827 tokens!494) Nil!37407)))))

(declare-fun e!2184711 () List!37529)

(assert (=> d!1030164 (= (printList!1627 thiss!18206 (Cons!37407 (h!42827 tokens!494) Nil!37407)) e!2184711)))

(declare-fun b!3529150 () Bool)

(assert (=> b!3529150 (= e!2184711 (++!9277 (list!13689 (charsOf!3504 (h!42827 (Cons!37407 (h!42827 tokens!494) Nil!37407)))) (printList!1627 thiss!18206 (t!282696 (Cons!37407 (h!42827 tokens!494) Nil!37407)))))))

(declare-fun b!3529151 () Bool)

(assert (=> b!3529151 (= e!2184711 Nil!37405)))

(assert (= (and d!1030164 c!608357) b!3529150))

(assert (= (and d!1030164 (not c!608357)) b!3529151))

(declare-fun m!3984683 () Bool)

(assert (=> b!3529150 m!3984683))

(assert (=> b!3529150 m!3984683))

(declare-fun m!3984685 () Bool)

(assert (=> b!3529150 m!3984685))

(declare-fun m!3984687 () Bool)

(assert (=> b!3529150 m!3984687))

(assert (=> b!3529150 m!3984685))

(assert (=> b!3529150 m!3984687))

(declare-fun m!3984689 () Bool)

(assert (=> b!3529150 m!3984689))

(assert (=> b!3528168 d!1030164))

(declare-fun d!1030166 () Bool)

(declare-fun res!1424013 () Bool)

(declare-fun e!2184712 () Bool)

(assert (=> d!1030166 (=> (not res!1424013) (not e!2184712))))

(assert (=> d!1030166 (= res!1424013 (not (isEmpty!21886 (originalCharacters!6204 (h!42827 tokens!494)))))))

(assert (=> d!1030166 (= (inv!50645 (h!42827 tokens!494)) e!2184712)))

(declare-fun b!3529152 () Bool)

(declare-fun res!1424014 () Bool)

(assert (=> b!3529152 (=> (not res!1424014) (not e!2184712))))

(assert (=> b!3529152 (= res!1424014 (= (originalCharacters!6204 (h!42827 tokens!494)) (list!13689 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (value!176925 (h!42827 tokens!494))))))))

(declare-fun b!3529153 () Bool)

(assert (=> b!3529153 (= e!2184712 (= (size!28473 (h!42827 tokens!494)) (size!28474 (originalCharacters!6204 (h!42827 tokens!494)))))))

(assert (= (and d!1030166 res!1424013) b!3529152))

(assert (= (and b!3529152 res!1424014) b!3529153))

(declare-fun b_lambda!103233 () Bool)

(assert (=> (not b_lambda!103233) (not b!3529152)))

(declare-fun t!282786 () Bool)

(declare-fun tb!197481 () Bool)

(assert (=> (and b!3528190 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282786) tb!197481))

(declare-fun b!3529154 () Bool)

(declare-fun e!2184713 () Bool)

(declare-fun tp!1088180 () Bool)

(assert (=> b!3529154 (= e!2184713 (and (inv!50648 (c!608161 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (value!176925 (h!42827 tokens!494))))) tp!1088180))))

(declare-fun result!241922 () Bool)

(assert (=> tb!197481 (= result!241922 (and (inv!50649 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (value!176925 (h!42827 tokens!494)))) e!2184713))))

(assert (= tb!197481 b!3529154))

(declare-fun m!3984691 () Bool)

(assert (=> b!3529154 m!3984691))

(declare-fun m!3984693 () Bool)

(assert (=> tb!197481 m!3984693))

(assert (=> b!3529152 t!282786))

(declare-fun b_and!251683 () Bool)

(assert (= b_and!251627 (and (=> t!282786 result!241922) b_and!251683)))

(declare-fun tb!197483 () Bool)

(declare-fun t!282788 () Bool)

(assert (=> (and b!3528203 (= (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282788) tb!197483))

(declare-fun result!241924 () Bool)

(assert (= result!241924 result!241922))

(assert (=> b!3529152 t!282788))

(declare-fun b_and!251685 () Bool)

(assert (= b_and!251629 (and (=> t!282788 result!241924) b_and!251685)))

(declare-fun t!282790 () Bool)

(declare-fun tb!197485 () Bool)

(assert (=> (and b!3528170 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282790) tb!197485))

(declare-fun result!241926 () Bool)

(assert (= result!241926 result!241922))

(assert (=> b!3529152 t!282790))

(declare-fun b_and!251687 () Bool)

(assert (= b_and!251631 (and (=> t!282790 result!241926) b_and!251687)))

(declare-fun m!3984695 () Bool)

(assert (=> d!1030166 m!3984695))

(declare-fun m!3984697 () Bool)

(assert (=> b!3529152 m!3984697))

(assert (=> b!3529152 m!3984697))

(declare-fun m!3984699 () Bool)

(assert (=> b!3529152 m!3984699))

(declare-fun m!3984701 () Bool)

(assert (=> b!3529153 m!3984701))

(assert (=> b!3528189 d!1030166))

(declare-fun d!1030168 () Bool)

(assert (=> d!1030168 (not (matchR!4833 (regex!5490 (rule!8150 separatorToken!241)) lt!1206247))))

(declare-fun lt!1206672 () Unit!53110)

(assert (=> d!1030168 (= lt!1206672 (choose!20496 (regex!5490 (rule!8150 separatorToken!241)) lt!1206247 lt!1206270))))

(assert (=> d!1030168 (validRegex!4679 (regex!5490 (rule!8150 separatorToken!241)))))

(assert (=> d!1030168 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!548 (regex!5490 (rule!8150 separatorToken!241)) lt!1206247 lt!1206270) lt!1206672)))

(declare-fun bs!565843 () Bool)

(assert (= bs!565843 d!1030168))

(assert (=> bs!565843 m!3983085))

(declare-fun m!3984703 () Bool)

(assert (=> bs!565843 m!3984703))

(declare-fun m!3984705 () Bool)

(assert (=> bs!565843 m!3984705))

(assert (=> b!3528191 d!1030168))

(declare-fun b!3529155 () Bool)

(declare-fun e!2184716 () Bool)

(declare-fun e!2184719 () Bool)

(assert (=> b!3529155 (= e!2184716 e!2184719)))

(declare-fun res!1424017 () Bool)

(assert (=> b!3529155 (=> (not res!1424017) (not e!2184719))))

(declare-fun lt!1206673 () Bool)

(assert (=> b!3529155 (= res!1424017 (not lt!1206673))))

(declare-fun b!3529156 () Bool)

(declare-fun res!1424020 () Bool)

(declare-fun e!2184717 () Bool)

(assert (=> b!3529156 (=> (not res!1424020) (not e!2184717))))

(declare-fun call!254856 () Bool)

(assert (=> b!3529156 (= res!1424020 (not call!254856))))

(declare-fun b!3529157 () Bool)

(declare-fun e!2184715 () Bool)

(assert (=> b!3529157 (= e!2184715 (not lt!1206673))))

(declare-fun b!3529158 () Bool)

(declare-fun e!2184720 () Bool)

(assert (=> b!3529158 (= e!2184719 e!2184720)))

(declare-fun res!1424021 () Bool)

(assert (=> b!3529158 (=> res!1424021 e!2184720)))

(assert (=> b!3529158 (= res!1424021 call!254856)))

(declare-fun b!3529159 () Bool)

(declare-fun res!1424015 () Bool)

(assert (=> b!3529159 (=> (not res!1424015) (not e!2184717))))

(assert (=> b!3529159 (= res!1424015 (isEmpty!21886 (tail!5502 lt!1206247)))))

(declare-fun b!3529160 () Bool)

(assert (=> b!3529160 (= e!2184717 (= (head!7405 lt!1206247) (c!608160 (regex!5490 (rule!8150 separatorToken!241)))))))

(declare-fun bm!254851 () Bool)

(assert (=> bm!254851 (= call!254856 (isEmpty!21886 lt!1206247))))

(declare-fun b!3529161 () Bool)

(declare-fun e!2184714 () Bool)

(assert (=> b!3529161 (= e!2184714 (matchR!4833 (derivativeStep!3076 (regex!5490 (rule!8150 separatorToken!241)) (head!7405 lt!1206247)) (tail!5502 lt!1206247)))))

(declare-fun b!3529162 () Bool)

(assert (=> b!3529162 (= e!2184720 (not (= (head!7405 lt!1206247) (c!608160 (regex!5490 (rule!8150 separatorToken!241))))))))

(declare-fun b!3529163 () Bool)

(declare-fun res!1424022 () Bool)

(assert (=> b!3529163 (=> res!1424022 e!2184720)))

(assert (=> b!3529163 (= res!1424022 (not (isEmpty!21886 (tail!5502 lt!1206247))))))

(declare-fun b!3529164 () Bool)

(declare-fun e!2184718 () Bool)

(assert (=> b!3529164 (= e!2184718 e!2184715)))

(declare-fun c!608358 () Bool)

(assert (=> b!3529164 (= c!608358 ((_ is EmptyLang!10249) (regex!5490 (rule!8150 separatorToken!241))))))

(declare-fun b!3529166 () Bool)

(assert (=> b!3529166 (= e!2184718 (= lt!1206673 call!254856))))

(declare-fun b!3529167 () Bool)

(assert (=> b!3529167 (= e!2184714 (nullable!3523 (regex!5490 (rule!8150 separatorToken!241))))))

(declare-fun b!3529168 () Bool)

(declare-fun res!1424019 () Bool)

(assert (=> b!3529168 (=> res!1424019 e!2184716)))

(assert (=> b!3529168 (= res!1424019 (not ((_ is ElementMatch!10249) (regex!5490 (rule!8150 separatorToken!241)))))))

(assert (=> b!3529168 (= e!2184715 e!2184716)))

(declare-fun b!3529165 () Bool)

(declare-fun res!1424016 () Bool)

(assert (=> b!3529165 (=> res!1424016 e!2184716)))

(assert (=> b!3529165 (= res!1424016 e!2184717)))

(declare-fun res!1424018 () Bool)

(assert (=> b!3529165 (=> (not res!1424018) (not e!2184717))))

(assert (=> b!3529165 (= res!1424018 lt!1206673)))

(declare-fun d!1030170 () Bool)

(assert (=> d!1030170 e!2184718))

(declare-fun c!608360 () Bool)

(assert (=> d!1030170 (= c!608360 ((_ is EmptyExpr!10249) (regex!5490 (rule!8150 separatorToken!241))))))

(assert (=> d!1030170 (= lt!1206673 e!2184714)))

(declare-fun c!608359 () Bool)

(assert (=> d!1030170 (= c!608359 (isEmpty!21886 lt!1206247))))

(assert (=> d!1030170 (validRegex!4679 (regex!5490 (rule!8150 separatorToken!241)))))

(assert (=> d!1030170 (= (matchR!4833 (regex!5490 (rule!8150 separatorToken!241)) lt!1206247) lt!1206673)))

(assert (= (and d!1030170 c!608359) b!3529167))

(assert (= (and d!1030170 (not c!608359)) b!3529161))

(assert (= (and d!1030170 c!608360) b!3529166))

(assert (= (and d!1030170 (not c!608360)) b!3529164))

(assert (= (and b!3529164 c!608358) b!3529157))

(assert (= (and b!3529164 (not c!608358)) b!3529168))

(assert (= (and b!3529168 (not res!1424019)) b!3529165))

(assert (= (and b!3529165 res!1424018) b!3529156))

(assert (= (and b!3529156 res!1424020) b!3529159))

(assert (= (and b!3529159 res!1424015) b!3529160))

(assert (= (and b!3529165 (not res!1424016)) b!3529155))

(assert (= (and b!3529155 res!1424017) b!3529158))

(assert (= (and b!3529158 (not res!1424021)) b!3529163))

(assert (= (and b!3529163 (not res!1424022)) b!3529162))

(assert (= (or b!3529166 b!3529156 b!3529158) bm!254851))

(assert (=> b!3529162 m!3982941))

(assert (=> b!3529160 m!3982941))

(assert (=> b!3529163 m!3984623))

(assert (=> b!3529163 m!3984623))

(assert (=> b!3529163 m!3984625))

(assert (=> b!3529159 m!3984623))

(assert (=> b!3529159 m!3984623))

(assert (=> b!3529159 m!3984625))

(declare-fun m!3984707 () Bool)

(assert (=> b!3529167 m!3984707))

(assert (=> bm!254851 m!3984629))

(assert (=> d!1030170 m!3984629))

(assert (=> d!1030170 m!3984705))

(assert (=> b!3529161 m!3982941))

(assert (=> b!3529161 m!3982941))

(declare-fun m!3984709 () Bool)

(assert (=> b!3529161 m!3984709))

(assert (=> b!3529161 m!3984623))

(assert (=> b!3529161 m!3984709))

(assert (=> b!3529161 m!3984623))

(declare-fun m!3984711 () Bool)

(assert (=> b!3529161 m!3984711))

(assert (=> b!3528191 d!1030170))

(declare-fun d!1030172 () Bool)

(assert (=> d!1030172 (= (list!13689 (charsOf!3504 (h!42827 tokens!494))) (list!13693 (c!608161 (charsOf!3504 (h!42827 tokens!494)))))))

(declare-fun bs!565844 () Bool)

(assert (= bs!565844 d!1030172))

(declare-fun m!3984713 () Bool)

(assert (=> bs!565844 m!3984713))

(assert (=> b!3528169 d!1030172))

(declare-fun d!1030174 () Bool)

(declare-fun lt!1206674 () BalanceConc!22324)

(assert (=> d!1030174 (= (list!13689 lt!1206674) (originalCharacters!6204 (h!42827 tokens!494)))))

(assert (=> d!1030174 (= lt!1206674 (dynLambda!15974 (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (value!176925 (h!42827 tokens!494))))))

(assert (=> d!1030174 (= (charsOf!3504 (h!42827 tokens!494)) lt!1206674)))

(declare-fun b_lambda!103235 () Bool)

(assert (=> (not b_lambda!103235) (not d!1030174)))

(assert (=> d!1030174 t!282786))

(declare-fun b_and!251689 () Bool)

(assert (= b_and!251683 (and (=> t!282786 result!241922) b_and!251689)))

(assert (=> d!1030174 t!282788))

(declare-fun b_and!251691 () Bool)

(assert (= b_and!251685 (and (=> t!282788 result!241924) b_and!251691)))

(assert (=> d!1030174 t!282790))

(declare-fun b_and!251693 () Bool)

(assert (= b_and!251687 (and (=> t!282790 result!241926) b_and!251693)))

(declare-fun m!3984715 () Bool)

(assert (=> d!1030174 m!3984715))

(assert (=> d!1030174 m!3984697))

(assert (=> b!3528169 d!1030174))

(declare-fun b!3529181 () Bool)

(declare-fun e!2184723 () Bool)

(declare-fun tp!1088192 () Bool)

(assert (=> b!3529181 (= e!2184723 tp!1088192)))

(declare-fun b!3529179 () Bool)

(declare-fun tp_is_empty!17629 () Bool)

(assert (=> b!3529179 (= e!2184723 tp_is_empty!17629)))

(assert (=> b!3528165 (= tp!1088105 e!2184723)))

(declare-fun b!3529182 () Bool)

(declare-fun tp!1088194 () Bool)

(declare-fun tp!1088193 () Bool)

(assert (=> b!3529182 (= e!2184723 (and tp!1088194 tp!1088193))))

(declare-fun b!3529180 () Bool)

(declare-fun tp!1088191 () Bool)

(declare-fun tp!1088195 () Bool)

(assert (=> b!3529180 (= e!2184723 (and tp!1088191 tp!1088195))))

(assert (= (and b!3528165 ((_ is ElementMatch!10249) (regex!5490 (rule!8150 separatorToken!241)))) b!3529179))

(assert (= (and b!3528165 ((_ is Concat!15969) (regex!5490 (rule!8150 separatorToken!241)))) b!3529180))

(assert (= (and b!3528165 ((_ is Star!10249) (regex!5490 (rule!8150 separatorToken!241)))) b!3529181))

(assert (= (and b!3528165 ((_ is Union!10249) (regex!5490 (rule!8150 separatorToken!241)))) b!3529182))

(declare-fun b!3529187 () Bool)

(declare-fun e!2184726 () Bool)

(declare-fun tp!1088198 () Bool)

(assert (=> b!3529187 (= e!2184726 (and tp_is_empty!17629 tp!1088198))))

(assert (=> b!3528167 (= tp!1088108 e!2184726)))

(assert (= (and b!3528167 ((_ is Cons!37405) (originalCharacters!6204 separatorToken!241))) b!3529187))

(declare-fun b!3529190 () Bool)

(declare-fun e!2184727 () Bool)

(declare-fun tp!1088200 () Bool)

(assert (=> b!3529190 (= e!2184727 tp!1088200)))

(declare-fun b!3529188 () Bool)

(assert (=> b!3529188 (= e!2184727 tp_is_empty!17629)))

(assert (=> b!3528196 (= tp!1088104 e!2184727)))

(declare-fun b!3529191 () Bool)

(declare-fun tp!1088202 () Bool)

(declare-fun tp!1088201 () Bool)

(assert (=> b!3529191 (= e!2184727 (and tp!1088202 tp!1088201))))

(declare-fun b!3529189 () Bool)

(declare-fun tp!1088199 () Bool)

(declare-fun tp!1088203 () Bool)

(assert (=> b!3529189 (= e!2184727 (and tp!1088199 tp!1088203))))

(assert (= (and b!3528196 ((_ is ElementMatch!10249) (regex!5490 (rule!8150 (h!42827 tokens!494))))) b!3529188))

(assert (= (and b!3528196 ((_ is Concat!15969) (regex!5490 (rule!8150 (h!42827 tokens!494))))) b!3529189))

(assert (= (and b!3528196 ((_ is Star!10249) (regex!5490 (rule!8150 (h!42827 tokens!494))))) b!3529190))

(assert (= (and b!3528196 ((_ is Union!10249) (regex!5490 (rule!8150 (h!42827 tokens!494))))) b!3529191))

(declare-fun b!3529194 () Bool)

(declare-fun e!2184730 () Bool)

(assert (=> b!3529194 (= e!2184730 true)))

(declare-fun b!3529193 () Bool)

(declare-fun e!2184729 () Bool)

(assert (=> b!3529193 (= e!2184729 e!2184730)))

(declare-fun b!3529192 () Bool)

(declare-fun e!2184728 () Bool)

(assert (=> b!3529192 (= e!2184728 e!2184729)))

(assert (=> b!3528214 e!2184728))

(assert (= b!3529193 b!3529194))

(assert (= b!3529192 b!3529193))

(assert (= (and b!3528214 ((_ is Cons!37406) (t!282695 rules!2135))) b!3529192))

(assert (=> b!3529194 (< (dynLambda!15968 order!20177 (toValue!7746 (transformation!5490 (h!42826 (t!282695 rules!2135))))) (dynLambda!15969 order!20179 lambda!122959))))

(assert (=> b!3529194 (< (dynLambda!15970 order!20181 (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135))))) (dynLambda!15969 order!20179 lambda!122959))))

(declare-fun b!3529197 () Bool)

(declare-fun e!2184731 () Bool)

(declare-fun tp!1088205 () Bool)

(assert (=> b!3529197 (= e!2184731 tp!1088205)))

(declare-fun b!3529195 () Bool)

(assert (=> b!3529195 (= e!2184731 tp_is_empty!17629)))

(assert (=> b!3528192 (= tp!1088111 e!2184731)))

(declare-fun b!3529198 () Bool)

(declare-fun tp!1088207 () Bool)

(declare-fun tp!1088206 () Bool)

(assert (=> b!3529198 (= e!2184731 (and tp!1088207 tp!1088206))))

(declare-fun b!3529196 () Bool)

(declare-fun tp!1088204 () Bool)

(declare-fun tp!1088208 () Bool)

(assert (=> b!3529196 (= e!2184731 (and tp!1088204 tp!1088208))))

(assert (= (and b!3528192 ((_ is ElementMatch!10249) (regex!5490 (h!42826 rules!2135)))) b!3529195))

(assert (= (and b!3528192 ((_ is Concat!15969) (regex!5490 (h!42826 rules!2135)))) b!3529196))

(assert (= (and b!3528192 ((_ is Star!10249) (regex!5490 (h!42826 rules!2135)))) b!3529197))

(assert (= (and b!3528192 ((_ is Union!10249) (regex!5490 (h!42826 rules!2135)))) b!3529198))

(declare-fun b!3529199 () Bool)

(declare-fun e!2184732 () Bool)

(declare-fun tp!1088209 () Bool)

(assert (=> b!3529199 (= e!2184732 (and tp_is_empty!17629 tp!1088209))))

(assert (=> b!3528204 (= tp!1088114 e!2184732)))

(assert (= (and b!3528204 ((_ is Cons!37405) (originalCharacters!6204 (h!42827 tokens!494)))) b!3529199))

(declare-fun b!3529210 () Bool)

(declare-fun b_free!90981 () Bool)

(declare-fun b_next!91685 () Bool)

(assert (=> b!3529210 (= b_free!90981 (not b_next!91685))))

(declare-fun t!282792 () Bool)

(declare-fun tb!197487 () Bool)

(assert (=> (and b!3529210 (= (toValue!7746 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282792) tb!197487))

(declare-fun result!241934 () Bool)

(assert (= result!241934 result!241866))

(assert (=> d!1029960 t!282792))

(declare-fun tb!197489 () Bool)

(declare-fun t!282794 () Bool)

(assert (=> (and b!3529210 (= (toValue!7746 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282794) tb!197489))

(declare-fun result!241936 () Bool)

(assert (= result!241936 result!241892))

(assert (=> d!1030102 t!282794))

(declare-fun b_and!251695 () Bool)

(declare-fun tp!1088221 () Bool)

(assert (=> b!3529210 (= tp!1088221 (and (=> t!282792 result!241934) (=> t!282794 result!241936) b_and!251695))))

(declare-fun b_free!90983 () Bool)

(declare-fun b_next!91687 () Bool)

(assert (=> b!3529210 (= b_free!90983 (not b_next!91687))))

(declare-fun tb!197491 () Bool)

(declare-fun t!282796 () Bool)

(assert (=> (and b!3529210 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282796) tb!197491))

(declare-fun result!241938 () Bool)

(assert (= result!241938 result!241922))

(assert (=> d!1030174 t!282796))

(declare-fun tb!197493 () Bool)

(declare-fun t!282798 () Bool)

(assert (=> (and b!3529210 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241)))) t!282798) tb!197493))

(declare-fun result!241940 () Bool)

(assert (= result!241940 result!241846))

(assert (=> b!3528467 t!282798))

(assert (=> d!1029850 t!282798))

(declare-fun t!282800 () Bool)

(declare-fun tb!197495 () Bool)

(assert (=> (and b!3529210 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282800) tb!197495))

(declare-fun result!241942 () Bool)

(assert (= result!241942 result!241854))

(assert (=> d!1029862 t!282800))

(assert (=> b!3529152 t!282796))

(declare-fun b_and!251697 () Bool)

(declare-fun tp!1088219 () Bool)

(assert (=> b!3529210 (= tp!1088219 (and (=> t!282798 result!241940) (=> t!282796 result!241938) (=> t!282800 result!241942) b_and!251697))))

(declare-fun e!2184741 () Bool)

(assert (=> b!3529210 (= e!2184741 (and tp!1088221 tp!1088219))))

(declare-fun e!2184743 () Bool)

(declare-fun b!3529209 () Bool)

(declare-fun tp!1088220 () Bool)

(assert (=> b!3529209 (= e!2184743 (and tp!1088220 (inv!50641 (tag!6134 (h!42826 (t!282695 rules!2135)))) (inv!50644 (transformation!5490 (h!42826 (t!282695 rules!2135)))) e!2184741))))

(declare-fun b!3529208 () Bool)

(declare-fun e!2184742 () Bool)

(declare-fun tp!1088218 () Bool)

(assert (=> b!3529208 (= e!2184742 (and e!2184743 tp!1088218))))

(assert (=> b!3528193 (= tp!1088109 e!2184742)))

(assert (= b!3529209 b!3529210))

(assert (= b!3529208 b!3529209))

(assert (= (and b!3528193 ((_ is Cons!37406) (t!282695 rules!2135))) b!3529208))

(declare-fun m!3984717 () Bool)

(assert (=> b!3529209 m!3984717))

(declare-fun m!3984719 () Bool)

(assert (=> b!3529209 m!3984719))

(declare-fun b!3529224 () Bool)

(declare-fun b_free!90985 () Bool)

(declare-fun b_next!91689 () Bool)

(assert (=> b!3529224 (= b_free!90985 (not b_next!91689))))

(declare-fun t!282802 () Bool)

(declare-fun tb!197497 () Bool)

(assert (=> (and b!3529224 (= (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282802) tb!197497))

(declare-fun result!241946 () Bool)

(assert (= result!241946 result!241866))

(assert (=> d!1029960 t!282802))

(declare-fun t!282804 () Bool)

(declare-fun tb!197499 () Bool)

(assert (=> (and b!3529224 (= (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282804) tb!197499))

(declare-fun result!241948 () Bool)

(assert (= result!241948 result!241892))

(assert (=> d!1030102 t!282804))

(declare-fun b_and!251699 () Bool)

(declare-fun tp!1088235 () Bool)

(assert (=> b!3529224 (= tp!1088235 (and (=> t!282802 result!241946) (=> t!282804 result!241948) b_and!251699))))

(declare-fun b_free!90987 () Bool)

(declare-fun b_next!91691 () Bool)

(assert (=> b!3529224 (= b_free!90987 (not b_next!91691))))

(declare-fun t!282806 () Bool)

(declare-fun tb!197501 () Bool)

(assert (=> (and b!3529224 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494))))) t!282806) tb!197501))

(declare-fun result!241950 () Bool)

(assert (= result!241950 result!241922))

(assert (=> d!1030174 t!282806))

(declare-fun tb!197503 () Bool)

(declare-fun t!282808 () Bool)

(assert (=> (and b!3529224 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241)))) t!282808) tb!197503))

(declare-fun result!241952 () Bool)

(assert (= result!241952 result!241846))

(assert (=> b!3528467 t!282808))

(assert (=> d!1029850 t!282808))

(declare-fun t!282810 () Bool)

(declare-fun tb!197505 () Bool)

(assert (=> (and b!3529224 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494)))))) t!282810) tb!197505))

(declare-fun result!241954 () Bool)

(assert (= result!241954 result!241854))

(assert (=> d!1029862 t!282810))

(assert (=> b!3529152 t!282806))

(declare-fun b_and!251701 () Bool)

(declare-fun tp!1088236 () Bool)

(assert (=> b!3529224 (= tp!1088236 (and (=> t!282806 result!241950) (=> t!282808 result!241952) (=> t!282810 result!241954) b_and!251701))))

(declare-fun tp!1088234 () Bool)

(declare-fun b!3529223 () Bool)

(declare-fun e!2184761 () Bool)

(declare-fun e!2184758 () Bool)

(assert (=> b!3529223 (= e!2184758 (and tp!1088234 (inv!50641 (tag!6134 (rule!8150 (h!42827 (t!282696 tokens!494))))) (inv!50644 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) e!2184761))))

(declare-fun b!3529222 () Bool)

(declare-fun e!2184760 () Bool)

(declare-fun tp!1088232 () Bool)

(assert (=> b!3529222 (= e!2184760 (and (inv!21 (value!176925 (h!42827 (t!282696 tokens!494)))) e!2184758 tp!1088232))))

(assert (=> b!3529224 (= e!2184761 (and tp!1088235 tp!1088236))))

(declare-fun e!2184757 () Bool)

(assert (=> b!3528189 (= tp!1088102 e!2184757)))

(declare-fun b!3529221 () Bool)

(declare-fun tp!1088233 () Bool)

(assert (=> b!3529221 (= e!2184757 (and (inv!50645 (h!42827 (t!282696 tokens!494))) e!2184760 tp!1088233))))

(assert (= b!3529223 b!3529224))

(assert (= b!3529222 b!3529223))

(assert (= b!3529221 b!3529222))

(assert (= (and b!3528189 ((_ is Cons!37407) (t!282696 tokens!494))) b!3529221))

(declare-fun m!3984721 () Bool)

(assert (=> b!3529223 m!3984721))

(declare-fun m!3984723 () Bool)

(assert (=> b!3529223 m!3984723))

(declare-fun m!3984725 () Bool)

(assert (=> b!3529222 m!3984725))

(declare-fun m!3984727 () Bool)

(assert (=> b!3529221 m!3984727))

(declare-fun b_lambda!103237 () Bool)

(assert (= b_lambda!103209 (or (and b!3528190 b_free!90961 (= (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (and b!3529224 b_free!90985) (and b!3529210 b_free!90981 (= (toValue!7746 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (and b!3528170 b_free!90969 (= (toValue!7746 (transformation!5490 (h!42826 rules!2135))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (and b!3528203 b_free!90965 (= (toValue!7746 (transformation!5490 (rule!8150 separatorToken!241))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) b_lambda!103237)))

(declare-fun b_lambda!103239 () Bool)

(assert (= b_lambda!103235 (or (and b!3528190 b_free!90963) (and b!3528203 b_free!90967 (= (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3529224 b_free!90987 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3529210 b_free!90983 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3528170 b_free!90971 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) b_lambda!103239)))

(declare-fun b_lambda!103241 () Bool)

(assert (= b_lambda!103189 (or (and b!3528170 b_free!90971 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (and b!3528190 b_free!90963 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (and b!3529210 b_free!90983 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) (and b!3529224 b_free!90987) (and b!3528203 b_free!90967 (= (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))) b_lambda!103241)))

(declare-fun b_lambda!103243 () Bool)

(assert (= b_lambda!103183 (or b!3528198 b_lambda!103243)))

(declare-fun bs!565845 () Bool)

(declare-fun d!1030176 () Bool)

(assert (= bs!565845 (and d!1030176 b!3528198)))

(assert (=> bs!565845 (= (dynLambda!15973 lambda!122958 (h!42827 tokens!494)) (not (isSeparator!5490 (rule!8150 (h!42827 tokens!494)))))))

(assert (=> d!1029804 d!1030176))

(declare-fun b_lambda!103245 () Bool)

(assert (= b_lambda!103185 (or (and b!3528170 b_free!90971 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3529210 b_free!90983 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3528190 b_free!90963 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3529224 b_free!90987 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3528203 b_free!90967) b_lambda!103245)))

(declare-fun b_lambda!103247 () Bool)

(assert (= b_lambda!103179 (or b!3528198 b_lambda!103247)))

(assert (=> b!3528346 d!1030176))

(declare-fun b_lambda!103249 () Bool)

(assert (= b_lambda!103197 (or b!3528201 b_lambda!103249)))

(declare-fun bs!565846 () Bool)

(declare-fun d!1030178 () Bool)

(assert (= bs!565846 (and d!1030178 b!3528201)))

(assert (=> bs!565846 (= (dynLambda!15973 lambda!122959 (h!42827 (t!282696 tokens!494))) (rulesProduceIndividualToken!2571 thiss!18206 rules!2135 (h!42827 (t!282696 tokens!494))))))

(assert (=> bs!565846 m!3982983))

(assert (=> d!1029998 d!1030178))

(declare-fun b_lambda!103251 () Bool)

(assert (= b_lambda!103193 (or (and b!3529224 b_free!90985 (= (toValue!7746 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3528203 b_free!90965 (= (toValue!7746 (transformation!5490 (rule!8150 separatorToken!241))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3528170 b_free!90969 (= (toValue!7746 (transformation!5490 (h!42826 rules!2135))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3528190 b_free!90961) (and b!3529210 b_free!90981 (= (toValue!7746 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toValue!7746 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) b_lambda!103251)))

(declare-fun b_lambda!103253 () Bool)

(assert (= b_lambda!103233 (or (and b!3528190 b_free!90963) (and b!3528203 b_free!90967 (= (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3529224 b_free!90987 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3529210 b_free!90983 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) (and b!3528170 b_free!90971 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))))) b_lambda!103253)))

(declare-fun b_lambda!103255 () Bool)

(assert (= b_lambda!103181 (or b!3528198 b_lambda!103255)))

(declare-fun bs!565847 () Bool)

(declare-fun d!1030180 () Bool)

(assert (= bs!565847 (and d!1030180 b!3528198)))

(assert (=> bs!565847 (= (dynLambda!15973 lambda!122958 (h!42827 (t!282696 tokens!494))) (not (isSeparator!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))))))

(assert (=> d!1029802 d!1030180))

(declare-fun b_lambda!103257 () Bool)

(assert (= b_lambda!103187 (or (and b!3528170 b_free!90971 (= (toChars!7605 (transformation!5490 (h!42826 rules!2135))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3529210 b_free!90983 (= (toChars!7605 (transformation!5490 (h!42826 (t!282695 rules!2135)))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3528190 b_free!90963 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 tokens!494)))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3529224 b_free!90987 (= (toChars!7605 (transformation!5490 (rule!8150 (h!42827 (t!282696 tokens!494))))) (toChars!7605 (transformation!5490 (rule!8150 separatorToken!241))))) (and b!3528203 b_free!90967) b_lambda!103257)))

(check-sat b_and!251697 (not d!1029944) (not b!3528798) (not b!3528723) (not d!1030142) b_and!251671 (not d!1029864) (not bm!254826) (not b!3528427) (not b!3528602) (not b!3528799) (not b!3528428) (not d!1029818) (not b!3528486) (not b_lambda!103257) (not b_lambda!103253) (not b!3529161) (not d!1030016) (not b!3529121) (not bm!254810) (not b!3528714) (not b!3529067) (not bm!254794) (not b!3528994) (not tb!197481) (not b!3529099) (not b!3528457) (not b!3528787) (not b!3528721) (not b_lambda!103247) (not b_lambda!103243) (not d!1029836) (not b!3528793) (not b!3528722) (not b!3528496) (not b!3529209) (not b!3528991) b_and!251673 (not b!3528788) (not d!1030114) (not d!1029848) (not d!1029796) (not b!3528340) (not d!1029814) (not b!3529038) (not b!3528426) (not b!3528492) (not b!3529125) (not b!3529223) (not d!1030172) (not d!1029842) (not b!3529098) (not b!3529135) (not tb!197437) (not b!3528478) (not b!3528987) (not b!3528439) (not b!3528458) (not d!1030000) (not b_next!91673) (not b!3528481) (not b!3528336) (not d!1030108) (not b!3529093) (not d!1030162) (not b!3528350) (not b!3529152) (not b!3528789) (not bm!254849) (not b!3529197) (not d!1029840) (not d!1030106) (not b!3529094) (not d!1029914) (not d!1029870) (not b!3529133) (not b!3528790) (not b!3528989) (not b!3529187) (not b!3529145) (not d!1029874) (not b!3529132) (not b!3528872) (not b!3528362) b_and!251695 (not b!3528485) (not b!3529189) b_and!251701 (not b!3529127) (not b!3528874) (not b!3528988) b_and!251699 (not b!3528719) (not b_next!91689) (not d!1029912) (not b!3529222) (not b!3528296) (not bm!254851) (not b!3529109) (not b_next!91665) (not b_lambda!103251) (not b!3528794) (not d!1030010) (not b_lambda!103237) (not tb!197425) (not b!3529154) (not tb!197455) (not b!3528335) (not b!3528332) (not b!3528687) (not b_lambda!103239) (not b!3529106) (not b!3528816) (not d!1029802) (not b!3529107) (not d!1030144) (not b!3528782) (not b!3529142) (not b!3529096) (not d!1029956) (not d!1029932) (not b!3528815) (not b!3529198) (not d!1029868) (not d!1029816) (not b!3529144) (not bm!254808) (not b!3528347) (not b!3529182) (not b!3529191) (not d!1030014) (not d!1029794) (not d!1029958) (not b!3528453) (not b!3529122) (not d!1030168) (not b_lambda!103255) (not b!3528366) (not b!3528538) (not b!3529120) (not d!1029942) (not b!3529160) (not b!3528717) (not b!3528363) tp_is_empty!17629 (not b!3529181) (not d!1029966) b_and!251669 (not d!1030166) (not d!1030146) (not b!3529153) (not b!3529180) (not b!3528490) (not d!1030044) (not d!1030174) (not d!1030138) (not d!1030126) (not b!3528986) (not b!3528498) (not b!3528508) (not d!1030158) (not d!1030004) (not b!3528467) (not b!3529199) (not b!3528990) (not b!3528539) (not b!3528541) (not b!3529150) (not b!3529140) (not d!1029854) (not b!3529192) (not d!1029846) (not d!1030136) (not b!3529113) (not b!3528603) (not b!3528351) (not b!3529126) (not d!1029954) (not d!1029860) (not b!3528801) (not b!3528333) (not bm!254809) (not bm!254843) (not b!3528683) (not b_lambda!103245) (not b!3528357) (not b!3528364) (not d!1030160) (not b!3529196) (not b!3528454) (not b!3528682) (not bm!254845) (not d!1029878) (not b!3528792) (not b!3528783) (not b!3529083) (not b!3528334) (not b!3528499) (not b!3529159) (not b!3529037) (not b!3529095) (not d!1030150) (not d!1029862) (not tb!197419) (not d!1030128) (not b!3529190) (not b!3528462) (not d!1029806) (not d!1030170) (not b_next!91667) (not d!1029804) (not b!3529108) (not d!1030104) (not d!1029904) (not d!1029812) (not d!1030038) (not b!3528297) (not d!1029838) (not b_next!91687) (not b!3529043) (not d!1030012) (not d!1029992) (not b!3529136) (not b!3528505) (not b_lambda!103249) (not b!3529119) (not bm!254825) (not b!3529167) (not b!3529124) (not d!1029754) (not b!3528800) (not b!3528370) (not d!1030140) (not d!1029852) (not b!3528992) (not b!3528494) (not d!1030008) (not b!3528473) (not d!1029810) (not b!3528601) (not b_lambda!103241) (not d!1030156) (not d!1029866) (not b!3528694) (not b!3529208) (not b!3528695) b_and!251689 (not d!1029998) (not b!3529092) (not b!3528715) (not d!1030152) (not b!3529105) (not b!3529221) (not b!3528489) (not b!3529045) (not b!3528482) (not b!3529134) (not d!1029946) (not d!1029834) (not b!3528468) (not b!3529117) (not b!3528785) (not b!3529162) (not d!1030036) (not bm!254847) (not b!3528442) (not b!3528781) (not b_next!91671) (not b!3528784) (not b!3529081) (not b!3528720) (not bm!254795) (not b_next!91669) (not d!1029952) (not b!3528354) (not d!1029940) (not b!3528497) (not d!1029936) (not b!3528685) b_and!251693 (not b!3528365) b_and!251691 (not d!1029996) (not bm!254824) (not d!1029850) (not bm!254850) (not b!3528441) (not b_next!91675) (not b_next!91685) (not d!1030132) (not b!3529163) (not b!3529116) (not b!3528791) (not b_next!91691) (not bs!565846) (not b!3528600) (not bm!254846) (not b!3528797) (not b!3528796))
(check-sat b_and!251673 (not b_next!91673) (not b_next!91665) b_and!251669 (not b_next!91667) (not b_next!91687) b_and!251689 (not b_next!91671) (not b_next!91691) b_and!251697 b_and!251671 b_and!251695 b_and!251701 b_and!251699 (not b_next!91689) b_and!251693 (not b_next!91669) b_and!251691 (not b_next!91675) (not b_next!91685))
