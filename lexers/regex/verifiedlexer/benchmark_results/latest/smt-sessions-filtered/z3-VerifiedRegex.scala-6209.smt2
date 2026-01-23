; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300430 () Bool)

(assert start!300430)

(declare-fun b!3200279 () Bool)

(declare-fun b_free!85025 () Bool)

(declare-fun b_next!85729 () Bool)

(assert (=> b!3200279 (= b_free!85025 (not b_next!85729))))

(declare-fun tp!1011517 () Bool)

(declare-fun b_and!212711 () Bool)

(assert (=> b!3200279 (= tp!1011517 b_and!212711)))

(declare-fun b_free!85027 () Bool)

(declare-fun b_next!85731 () Bool)

(assert (=> b!3200279 (= b_free!85027 (not b_next!85731))))

(declare-fun tp!1011509 () Bool)

(declare-fun b_and!212713 () Bool)

(assert (=> b!3200279 (= tp!1011509 b_and!212713)))

(declare-fun b!3200271 () Bool)

(declare-fun b_free!85029 () Bool)

(declare-fun b_next!85733 () Bool)

(assert (=> b!3200271 (= b_free!85029 (not b_next!85733))))

(declare-fun tp!1011507 () Bool)

(declare-fun b_and!212715 () Bool)

(assert (=> b!3200271 (= tp!1011507 b_and!212715)))

(declare-fun b_free!85031 () Bool)

(declare-fun b_next!85735 () Bool)

(assert (=> b!3200271 (= b_free!85031 (not b_next!85735))))

(declare-fun tp!1011516 () Bool)

(declare-fun b_and!212717 () Bool)

(assert (=> b!3200271 (= tp!1011516 b_and!212717)))

(declare-fun b!3200272 () Bool)

(declare-fun b_free!85033 () Bool)

(declare-fun b_next!85737 () Bool)

(assert (=> b!3200272 (= b_free!85033 (not b_next!85737))))

(declare-fun tp!1011514 () Bool)

(declare-fun b_and!212719 () Bool)

(assert (=> b!3200272 (= tp!1011514 b_and!212719)))

(declare-fun b_free!85035 () Bool)

(declare-fun b_next!85739 () Bool)

(assert (=> b!3200272 (= b_free!85035 (not b_next!85739))))

(declare-fun tp!1011510 () Bool)

(declare-fun b_and!212721 () Bool)

(assert (=> b!3200272 (= tp!1011510 b_and!212721)))

(declare-fun e!1995155 () Bool)

(declare-fun e!1995168 () Bool)

(declare-datatypes ((C!20100 0))(
  ( (C!20101 (val!12098 Int)) )
))
(declare-datatypes ((Regex!9957 0))(
  ( (ElementMatch!9957 (c!537330 C!20100)) (Concat!15385 (regOne!20426 Regex!9957) (regTwo!20426 Regex!9957)) (EmptyExpr!9957) (Star!9957 (reg!10286 Regex!9957)) (EmptyLang!9957) (Union!9957 (regOne!20427 Regex!9957) (regTwo!20427 Regex!9957)) )
))
(declare-datatypes ((List!36192 0))(
  ( (Nil!36068) (Cons!36068 (h!41488 (_ BitVec 16)) (t!237407 List!36192)) )
))
(declare-datatypes ((TokenValue!5428 0))(
  ( (FloatLiteralValue!10856 (text!38441 List!36192)) (TokenValueExt!5427 (__x!23073 Int)) (Broken!27140 (value!168577 List!36192)) (Object!5551) (End!5428) (Def!5428) (Underscore!5428) (Match!5428) (Else!5428) (Error!5428) (Case!5428) (If!5428) (Extends!5428) (Abstract!5428) (Class!5428) (Val!5428) (DelimiterValue!10856 (del!5488 List!36192)) (KeywordValue!5434 (value!168578 List!36192)) (CommentValue!10856 (value!168579 List!36192)) (WhitespaceValue!10856 (value!168580 List!36192)) (IndentationValue!5428 (value!168581 List!36192)) (String!40473) (Int32!5428) (Broken!27141 (value!168582 List!36192)) (Boolean!5429) (Unit!50475) (OperatorValue!5431 (op!5488 List!36192)) (IdentifierValue!10856 (value!168583 List!36192)) (IdentifierValue!10857 (value!168584 List!36192)) (WhitespaceValue!10857 (value!168585 List!36192)) (True!10856) (False!10856) (Broken!27142 (value!168586 List!36192)) (Broken!27143 (value!168587 List!36192)) (True!10857) (RightBrace!5428) (RightBracket!5428) (Colon!5428) (Null!5428) (Comma!5428) (LeftBracket!5428) (False!10857) (LeftBrace!5428) (ImaginaryLiteralValue!5428 (text!38442 List!36192)) (StringLiteralValue!16284 (value!168588 List!36192)) (EOFValue!5428 (value!168589 List!36192)) (IdentValue!5428 (value!168590 List!36192)) (DelimiterValue!10857 (value!168591 List!36192)) (DedentValue!5428 (value!168592 List!36192)) (NewLineValue!5428 (value!168593 List!36192)) (IntegerValue!16284 (value!168594 (_ BitVec 32)) (text!38443 List!36192)) (IntegerValue!16285 (value!168595 Int) (text!38444 List!36192)) (Times!5428) (Or!5428) (Equal!5428) (Minus!5428) (Broken!27144 (value!168596 List!36192)) (And!5428) (Div!5428) (LessEqual!5428) (Mod!5428) (Concat!15386) (Not!5428) (Plus!5428) (SpaceValue!5428 (value!168597 List!36192)) (IntegerValue!16286 (value!168598 Int) (text!38445 List!36192)) (StringLiteralValue!16285 (text!38446 List!36192)) (FloatLiteralValue!10857 (text!38447 List!36192)) (BytesLiteralValue!5428 (value!168599 List!36192)) (CommentValue!10857 (value!168600 List!36192)) (StringLiteralValue!16286 (value!168601 List!36192)) (ErrorTokenValue!5428 (msg!5489 List!36192)) )
))
(declare-datatypes ((List!36193 0))(
  ( (Nil!36069) (Cons!36069 (h!41489 C!20100) (t!237408 List!36193)) )
))
(declare-datatypes ((IArray!21547 0))(
  ( (IArray!21548 (innerList!10831 List!36193)) )
))
(declare-datatypes ((Conc!10771 0))(
  ( (Node!10771 (left!28028 Conc!10771) (right!28358 Conc!10771) (csize!21772 Int) (cheight!10982 Int)) (Leaf!16981 (xs!13889 IArray!21547) (csize!21773 Int)) (Empty!10771) )
))
(declare-datatypes ((BalanceConc!21156 0))(
  ( (BalanceConc!21157 (c!537331 Conc!10771)) )
))
(declare-datatypes ((String!40474 0))(
  ( (String!40475 (value!168602 String)) )
))
(declare-datatypes ((TokenValueInjection!10284 0))(
  ( (TokenValueInjection!10285 (toValue!7274 Int) (toChars!7133 Int)) )
))
(declare-datatypes ((Rule!10196 0))(
  ( (Rule!10197 (regex!5198 Regex!9957) (tag!5720 String!40474) (isSeparator!5198 Bool) (transformation!5198 TokenValueInjection!10284)) )
))
(declare-datatypes ((Token!9762 0))(
  ( (Token!9763 (value!168603 TokenValue!5428) (rule!7634 Rule!10196) (size!27166 Int) (originalCharacters!5912 List!36193)) )
))
(declare-datatypes ((List!36194 0))(
  ( (Nil!36070) (Cons!36070 (h!41490 Token!9762) (t!237409 List!36194)) )
))
(declare-fun tokens!494 () List!36194)

(declare-fun tp!1011511 () Bool)

(declare-fun b!3200270 () Bool)

(declare-fun inv!48924 (Token!9762) Bool)

(assert (=> b!3200270 (= e!1995155 (and (inv!48924 (h!41490 tokens!494)) e!1995168 tp!1011511))))

(declare-fun e!1995173 () Bool)

(assert (=> b!3200271 (= e!1995173 (and tp!1011507 tp!1011516))))

(declare-fun e!1995152 () Bool)

(assert (=> b!3200272 (= e!1995152 (and tp!1011514 tp!1011510))))

(declare-fun b!3200273 () Bool)

(declare-fun res!1302144 () Bool)

(declare-fun e!1995172 () Bool)

(assert (=> b!3200273 (=> (not res!1302144) (not e!1995172))))

(declare-fun separatorToken!241 () Token!9762)

(assert (=> b!3200273 (= res!1302144 (isSeparator!5198 (rule!7634 separatorToken!241)))))

(declare-fun b!3200274 () Bool)

(declare-fun e!1995162 () Bool)

(declare-fun e!1995158 () Bool)

(assert (=> b!3200274 (= e!1995162 e!1995158)))

(declare-fun res!1302125 () Bool)

(assert (=> b!3200274 (=> res!1302125 e!1995158)))

(declare-fun lt!1079159 () List!36193)

(declare-fun lt!1079147 () List!36193)

(declare-fun lt!1079154 () List!36193)

(assert (=> b!3200274 (= res!1302125 (or (not (= lt!1079159 lt!1079147)) (not (= lt!1079154 lt!1079147))))))

(declare-fun list!12823 (BalanceConc!21156) List!36193)

(declare-fun charsOf!3214 (Token!9762) BalanceConc!21156)

(assert (=> b!3200274 (= lt!1079147 (list!12823 (charsOf!3214 (h!41490 tokens!494))))))

(declare-fun tp!1011506 () Bool)

(declare-fun b!3200275 () Bool)

(declare-fun e!1995171 () Bool)

(declare-fun inv!21 (TokenValue!5428) Bool)

(assert (=> b!3200275 (= e!1995168 (and (inv!21 (value!168603 (h!41490 tokens!494))) e!1995171 tp!1011506))))

(declare-fun b!3200276 () Bool)

(declare-fun e!1995164 () Bool)

(declare-fun e!1995176 () Bool)

(assert (=> b!3200276 (= e!1995164 e!1995176)))

(declare-fun res!1302139 () Bool)

(assert (=> b!3200276 (=> (not res!1302139) (not e!1995176))))

(declare-fun lt!1079155 () Rule!10196)

(declare-fun lt!1079150 () List!36193)

(declare-fun matchR!4591 (Regex!9957 List!36193) Bool)

(assert (=> b!3200276 (= res!1302139 (matchR!4591 (regex!5198 lt!1079155) lt!1079150))))

(declare-datatypes ((Option!7091 0))(
  ( (None!7090) (Some!7090 (v!35620 Rule!10196)) )
))
(declare-fun lt!1079152 () Option!7091)

(declare-fun get!11474 (Option!7091) Rule!10196)

(assert (=> b!3200276 (= lt!1079155 (get!11474 lt!1079152))))

(declare-fun b!3200277 () Bool)

(declare-datatypes ((Unit!50476 0))(
  ( (Unit!50477) )
))
(declare-fun e!1995170 () Unit!50476)

(declare-fun Unit!50478 () Unit!50476)

(assert (=> b!3200277 (= e!1995170 Unit!50478)))

(declare-fun b!3200278 () Bool)

(declare-fun res!1302124 () Bool)

(assert (=> b!3200278 (=> (not res!1302124) (not e!1995172))))

(declare-datatypes ((LexerInterface!4787 0))(
  ( (LexerInterfaceExt!4784 (__x!23074 Int)) (Lexer!4785) )
))
(declare-fun thiss!18206 () LexerInterface!4787)

(declare-datatypes ((List!36195 0))(
  ( (Nil!36071) (Cons!36071 (h!41491 Rule!10196) (t!237410 List!36195)) )
))
(declare-fun rules!2135 () List!36195)

(declare-fun rulesInvariant!4184 (LexerInterface!4787 List!36195) Bool)

(assert (=> b!3200278 (= res!1302124 (rulesInvariant!4184 thiss!18206 rules!2135))))

(declare-fun e!1995160 () Bool)

(assert (=> b!3200279 (= e!1995160 (and tp!1011517 tp!1011509))))

(declare-fun b!3200280 () Bool)

(declare-fun e!1995163 () Bool)

(assert (=> b!3200280 (= e!1995163 true)))

(declare-datatypes ((IArray!21549 0))(
  ( (IArray!21550 (innerList!10832 List!36194)) )
))
(declare-datatypes ((Conc!10772 0))(
  ( (Node!10772 (left!28029 Conc!10772) (right!28359 Conc!10772) (csize!21774 Int) (cheight!10983 Int)) (Leaf!16982 (xs!13890 IArray!21549) (csize!21775 Int)) (Empty!10772) )
))
(declare-datatypes ((BalanceConc!21158 0))(
  ( (BalanceConc!21159 (c!537332 Conc!10772)) )
))
(declare-fun lt!1079139 () BalanceConc!21158)

(declare-fun print!1852 (LexerInterface!4787 BalanceConc!21158) BalanceConc!21156)

(declare-fun printTailRec!1284 (LexerInterface!4787 BalanceConc!21158 Int BalanceConc!21156) BalanceConc!21156)

(assert (=> b!3200280 (= (print!1852 thiss!18206 lt!1079139) (printTailRec!1284 thiss!18206 lt!1079139 0 (BalanceConc!21157 Empty!10771)))))

(declare-fun singletonSeq!2294 (Token!9762) BalanceConc!21158)

(assert (=> b!3200280 (= lt!1079139 (singletonSeq!2294 separatorToken!241))))

(declare-fun lt!1079143 () Unit!50476)

(assert (=> b!3200280 (= lt!1079143 e!1995170)))

(declare-fun c!537329 () Bool)

(declare-fun lt!1079142 () C!20100)

(declare-fun contains!6415 (List!36193 C!20100) Bool)

(declare-fun usedCharacters!514 (Regex!9957) List!36193)

(assert (=> b!3200280 (= c!537329 (not (contains!6415 (usedCharacters!514 (regex!5198 (rule!7634 separatorToken!241))) lt!1079142)))))

(declare-fun head!7013 (List!36193) C!20100)

(assert (=> b!3200280 (= lt!1079142 (head!7013 lt!1079150))))

(assert (=> b!3200280 e!1995164))

(declare-fun res!1302140 () Bool)

(assert (=> b!3200280 (=> (not res!1302140) (not e!1995164))))

(declare-fun isDefined!5526 (Option!7091) Bool)

(assert (=> b!3200280 (= res!1302140 (isDefined!5526 lt!1079152))))

(declare-fun getRuleFromTag!903 (LexerInterface!4787 List!36195 String!40474) Option!7091)

(assert (=> b!3200280 (= lt!1079152 (getRuleFromTag!903 thiss!18206 rules!2135 (tag!5720 (rule!7634 separatorToken!241))))))

(declare-fun lt!1079157 () Unit!50476)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!903 (LexerInterface!4787 List!36195 List!36193 Token!9762) Unit!50476)

(assert (=> b!3200280 (= lt!1079157 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!903 thiss!18206 rules!2135 lt!1079150 separatorToken!241))))

(declare-fun lt!1079149 () BalanceConc!21156)

(declare-datatypes ((tuple2!35446 0))(
  ( (tuple2!35447 (_1!20857 Token!9762) (_2!20857 List!36193)) )
))
(declare-datatypes ((Option!7092 0))(
  ( (None!7091) (Some!7091 (v!35621 tuple2!35446)) )
))
(declare-fun maxPrefixOneRule!1566 (LexerInterface!4787 Rule!10196 List!36193) Option!7092)

(declare-fun apply!8134 (TokenValueInjection!10284 BalanceConc!21156) TokenValue!5428)

(declare-fun size!27167 (List!36193) Int)

(assert (=> b!3200280 (= (maxPrefixOneRule!1566 thiss!18206 (rule!7634 (h!41490 tokens!494)) lt!1079147) (Some!7091 (tuple2!35447 (Token!9763 (apply!8134 (transformation!5198 (rule!7634 (h!41490 tokens!494))) lt!1079149) (rule!7634 (h!41490 tokens!494)) (size!27167 lt!1079147) lt!1079147) Nil!36069)))))

(declare-fun lt!1079151 () Unit!50476)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!679 (LexerInterface!4787 List!36195 List!36193 List!36193 List!36193 Rule!10196) Unit!50476)

(assert (=> b!3200280 (= lt!1079151 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!679 thiss!18206 rules!2135 lt!1079147 lt!1079147 Nil!36069 (rule!7634 (h!41490 tokens!494))))))

(declare-fun e!1995161 () Bool)

(assert (=> b!3200280 e!1995161))

(declare-fun res!1302131 () Bool)

(assert (=> b!3200280 (=> (not res!1302131) (not e!1995161))))

(declare-fun lt!1079160 () Option!7091)

(assert (=> b!3200280 (= res!1302131 (isDefined!5526 lt!1079160))))

(assert (=> b!3200280 (= lt!1079160 (getRuleFromTag!903 thiss!18206 rules!2135 (tag!5720 (rule!7634 (h!41490 tokens!494)))))))

(declare-fun lt!1079146 () Unit!50476)

(assert (=> b!3200280 (= lt!1079146 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!903 thiss!18206 rules!2135 lt!1079147 (h!41490 tokens!494)))))

(declare-fun lt!1079141 () Unit!50476)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!826 (LexerInterface!4787 List!36195 List!36194 Token!9762) Unit!50476)

(assert (=> b!3200280 (= lt!1079141 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!826 thiss!18206 rules!2135 tokens!494 (h!41490 tokens!494)))))

(declare-fun b!3200281 () Bool)

(declare-fun e!1995156 () Bool)

(assert (=> b!3200281 (= e!1995161 e!1995156)))

(declare-fun res!1302129 () Bool)

(assert (=> b!3200281 (=> (not res!1302129) (not e!1995156))))

(declare-fun lt!1079153 () Rule!10196)

(assert (=> b!3200281 (= res!1302129 (matchR!4591 (regex!5198 lt!1079153) lt!1079147))))

(assert (=> b!3200281 (= lt!1079153 (get!11474 lt!1079160))))

(declare-fun b!3200282 () Bool)

(declare-fun res!1302134 () Bool)

(assert (=> b!3200282 (=> (not res!1302134) (not e!1995172))))

(get-info :version)

(assert (=> b!3200282 (= res!1302134 (and (not ((_ is Nil!36070) tokens!494)) (not ((_ is Nil!36070) (t!237409 tokens!494)))))))

(declare-fun b!3200283 () Bool)

(declare-fun res!1302143 () Bool)

(assert (=> b!3200283 (=> (not res!1302143) (not e!1995172))))

(declare-fun sepAndNonSepRulesDisjointChars!1392 (List!36195 List!36195) Bool)

(assert (=> b!3200283 (= res!1302143 (sepAndNonSepRulesDisjointChars!1392 rules!2135 rules!2135))))

(declare-fun b!3200284 () Bool)

(declare-fun res!1302127 () Bool)

(assert (=> b!3200284 (=> res!1302127 e!1995158)))

(declare-fun rulesProduceIndividualToken!2279 (LexerInterface!4787 List!36195 Token!9762) Bool)

(assert (=> b!3200284 (= res!1302127 (not (rulesProduceIndividualToken!2279 thiss!18206 rules!2135 (h!41490 tokens!494))))))

(declare-fun b!3200269 () Bool)

(declare-fun res!1302126 () Bool)

(assert (=> b!3200269 (=> (not res!1302126) (not e!1995172))))

(declare-fun isEmpty!20156 (List!36195) Bool)

(assert (=> b!3200269 (= res!1302126 (not (isEmpty!20156 rules!2135)))))

(declare-fun res!1302135 () Bool)

(assert (=> start!300430 (=> (not res!1302135) (not e!1995172))))

(assert (=> start!300430 (= res!1302135 ((_ is Lexer!4785) thiss!18206))))

(assert (=> start!300430 e!1995172))

(assert (=> start!300430 true))

(declare-fun e!1995165 () Bool)

(assert (=> start!300430 e!1995165))

(assert (=> start!300430 e!1995155))

(declare-fun e!1995151 () Bool)

(assert (=> start!300430 (and (inv!48924 separatorToken!241) e!1995151)))

(declare-fun e!1995178 () Bool)

(declare-fun b!3200285 () Bool)

(declare-fun tp!1011518 () Bool)

(declare-fun inv!48921 (String!40474) Bool)

(declare-fun inv!48925 (TokenValueInjection!10284) Bool)

(assert (=> b!3200285 (= e!1995178 (and tp!1011518 (inv!48921 (tag!5720 (h!41491 rules!2135))) (inv!48925 (transformation!5198 (h!41491 rules!2135))) e!1995160))))

(declare-fun b!3200286 () Bool)

(assert (=> b!3200286 (= e!1995172 (not e!1995162))))

(declare-fun res!1302141 () Bool)

(assert (=> b!3200286 (=> res!1302141 e!1995162)))

(assert (=> b!3200286 (= res!1302141 (not (= lt!1079154 lt!1079159)))))

(declare-fun printList!1337 (LexerInterface!4787 List!36194) List!36193)

(assert (=> b!3200286 (= lt!1079159 (printList!1337 thiss!18206 (Cons!36070 (h!41490 tokens!494) Nil!36070)))))

(declare-fun lt!1079158 () BalanceConc!21156)

(assert (=> b!3200286 (= lt!1079154 (list!12823 lt!1079158))))

(declare-fun lt!1079138 () BalanceConc!21158)

(assert (=> b!3200286 (= lt!1079158 (printTailRec!1284 thiss!18206 lt!1079138 0 (BalanceConc!21157 Empty!10771)))))

(assert (=> b!3200286 (= lt!1079158 (print!1852 thiss!18206 lt!1079138))))

(assert (=> b!3200286 (= lt!1079138 (singletonSeq!2294 (h!41490 tokens!494)))))

(declare-fun b!3200287 () Bool)

(declare-fun e!1995175 () Bool)

(declare-fun e!1995169 () Bool)

(assert (=> b!3200287 (= e!1995175 e!1995169)))

(declare-fun res!1302123 () Bool)

(assert (=> b!3200287 (=> res!1302123 e!1995169)))

(assert (=> b!3200287 (= res!1302123 (or (isSeparator!5198 (rule!7634 (h!41490 tokens!494))) (isSeparator!5198 (rule!7634 (h!41490 (t!237409 tokens!494))))))))

(declare-fun lt!1079137 () Unit!50476)

(declare-fun lambda!117141 () Int)

(declare-fun forallContained!1169 (List!36194 Int Token!9762) Unit!50476)

(assert (=> b!3200287 (= lt!1079137 (forallContained!1169 tokens!494 lambda!117141 (h!41490 (t!237409 tokens!494))))))

(declare-fun lt!1079136 () Unit!50476)

(assert (=> b!3200287 (= lt!1079136 (forallContained!1169 tokens!494 lambda!117141 (h!41490 tokens!494)))))

(declare-fun tp!1011512 () Bool)

(declare-fun e!1995166 () Bool)

(declare-fun b!3200288 () Bool)

(assert (=> b!3200288 (= e!1995151 (and (inv!21 (value!168603 separatorToken!241)) e!1995166 tp!1011512))))

(declare-fun b!3200289 () Bool)

(assert (=> b!3200289 (= e!1995156 (= (rule!7634 (h!41490 tokens!494)) lt!1079153))))

(declare-fun b!3200290 () Bool)

(declare-fun tp!1011508 () Bool)

(assert (=> b!3200290 (= e!1995171 (and tp!1011508 (inv!48921 (tag!5720 (rule!7634 (h!41490 tokens!494)))) (inv!48925 (transformation!5198 (rule!7634 (h!41490 tokens!494)))) e!1995152))))

(declare-fun tp!1011515 () Bool)

(declare-fun b!3200291 () Bool)

(assert (=> b!3200291 (= e!1995166 (and tp!1011515 (inv!48921 (tag!5720 (rule!7634 separatorToken!241))) (inv!48925 (transformation!5198 (rule!7634 separatorToken!241))) e!1995173))))

(declare-fun b!3200292 () Bool)

(declare-fun tp!1011513 () Bool)

(assert (=> b!3200292 (= e!1995165 (and e!1995178 tp!1011513))))

(declare-fun b!3200293 () Bool)

(declare-fun res!1302142 () Bool)

(assert (=> b!3200293 (=> (not res!1302142) (not e!1995172))))

(declare-fun forall!7350 (List!36194 Int) Bool)

(assert (=> b!3200293 (= res!1302142 (forall!7350 tokens!494 lambda!117141))))

(declare-fun b!3200294 () Bool)

(declare-fun res!1302136 () Bool)

(assert (=> b!3200294 (=> (not res!1302136) (not e!1995172))))

(declare-fun rulesProduceEachTokenIndividually!1238 (LexerInterface!4787 List!36195 BalanceConc!21158) Bool)

(declare-fun seqFromList!3467 (List!36194) BalanceConc!21158)

(assert (=> b!3200294 (= res!1302136 (rulesProduceEachTokenIndividually!1238 thiss!18206 rules!2135 (seqFromList!3467 tokens!494)))))

(declare-fun b!3200295 () Bool)

(assert (=> b!3200295 (= e!1995176 (= (rule!7634 separatorToken!241) lt!1079155))))

(declare-fun b!3200296 () Bool)

(declare-fun e!1995177 () Bool)

(declare-fun e!1995150 () Bool)

(assert (=> b!3200296 (= e!1995177 e!1995150)))

(declare-fun res!1302132 () Bool)

(assert (=> b!3200296 (=> res!1302132 e!1995150)))

(declare-fun lt!1079156 () List!36193)

(declare-fun lt!1079144 () List!36193)

(assert (=> b!3200296 (= res!1302132 (not (= lt!1079156 lt!1079144)))))

(declare-fun lt!1079140 () List!36193)

(declare-fun ++!8642 (List!36193 List!36193) List!36193)

(assert (=> b!3200296 (= lt!1079144 (++!8642 (++!8642 lt!1079147 lt!1079150) lt!1079140))))

(declare-fun b!3200297 () Bool)

(declare-fun e!1995154 () Bool)

(assert (=> b!3200297 (= e!1995154 false)))

(declare-fun b!3200298 () Bool)

(declare-fun Unit!50479 () Unit!50476)

(assert (=> b!3200298 (= e!1995170 Unit!50479)))

(declare-fun lt!1079162 () Unit!50476)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!362 (Regex!9957 List!36193 C!20100) Unit!50476)

(assert (=> b!3200298 (= lt!1079162 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!362 (regex!5198 (rule!7634 separatorToken!241)) lt!1079150 lt!1079142))))

(declare-fun res!1302133 () Bool)

(assert (=> b!3200298 (= res!1302133 (not (matchR!4591 (regex!5198 (rule!7634 separatorToken!241)) lt!1079150)))))

(assert (=> b!3200298 (=> (not res!1302133) (not e!1995154))))

(assert (=> b!3200298 e!1995154))

(declare-fun b!3200299 () Bool)

(declare-fun res!1302128 () Bool)

(assert (=> b!3200299 (=> (not res!1302128) (not e!1995172))))

(assert (=> b!3200299 (= res!1302128 (rulesProduceIndividualToken!2279 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3200300 () Bool)

(assert (=> b!3200300 (= e!1995169 e!1995177)))

(declare-fun res!1302137 () Bool)

(assert (=> b!3200300 (=> res!1302137 e!1995177)))

(declare-fun printWithSeparatorTokenList!132 (LexerInterface!4787 List!36194 Token!9762) List!36193)

(assert (=> b!3200300 (= res!1302137 (not (= lt!1079140 (++!8642 (++!8642 (list!12823 (charsOf!3214 (h!41490 (t!237409 tokens!494)))) lt!1079150) (printWithSeparatorTokenList!132 thiss!18206 (t!237409 (t!237409 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1079145 () List!36193)

(assert (=> b!3200300 (= lt!1079145 (++!8642 lt!1079150 lt!1079140))))

(assert (=> b!3200300 (= lt!1079150 (list!12823 (charsOf!3214 separatorToken!241)))))

(assert (=> b!3200300 (= lt!1079140 (printWithSeparatorTokenList!132 thiss!18206 (t!237409 tokens!494) separatorToken!241))))

(assert (=> b!3200300 (= lt!1079156 (printWithSeparatorTokenList!132 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3200301 () Bool)

(assert (=> b!3200301 (= e!1995150 e!1995163)))

(declare-fun res!1302138 () Bool)

(assert (=> b!3200301 (=> res!1302138 e!1995163)))

(declare-fun lt!1079161 () List!36193)

(assert (=> b!3200301 (= res!1302138 (not (= lt!1079156 lt!1079161)))))

(assert (=> b!3200301 (= lt!1079144 lt!1079161)))

(assert (=> b!3200301 (= lt!1079161 (++!8642 lt!1079147 lt!1079145))))

(declare-fun lt!1079148 () Unit!50476)

(declare-fun lemmaConcatAssociativity!1716 (List!36193 List!36193 List!36193) Unit!50476)

(assert (=> b!3200301 (= lt!1079148 (lemmaConcatAssociativity!1716 lt!1079147 lt!1079150 lt!1079140))))

(declare-fun b!3200302 () Bool)

(assert (=> b!3200302 (= e!1995158 e!1995175)))

(declare-fun res!1302130 () Bool)

(assert (=> b!3200302 (=> res!1302130 e!1995175)))

(declare-fun isEmpty!20157 (BalanceConc!21158) Bool)

(declare-datatypes ((tuple2!35448 0))(
  ( (tuple2!35449 (_1!20858 BalanceConc!21158) (_2!20858 BalanceConc!21156)) )
))
(declare-fun lex!2117 (LexerInterface!4787 List!36195 BalanceConc!21156) tuple2!35448)

(assert (=> b!3200302 (= res!1302130 (isEmpty!20157 (_1!20858 (lex!2117 thiss!18206 rules!2135 lt!1079149))))))

(declare-fun seqFromList!3468 (List!36193) BalanceConc!21156)

(assert (=> b!3200302 (= lt!1079149 (seqFromList!3468 lt!1079147))))

(assert (= (and start!300430 res!1302135) b!3200269))

(assert (= (and b!3200269 res!1302126) b!3200278))

(assert (= (and b!3200278 res!1302124) b!3200294))

(assert (= (and b!3200294 res!1302136) b!3200299))

(assert (= (and b!3200299 res!1302128) b!3200273))

(assert (= (and b!3200273 res!1302144) b!3200293))

(assert (= (and b!3200293 res!1302142) b!3200283))

(assert (= (and b!3200283 res!1302143) b!3200282))

(assert (= (and b!3200282 res!1302134) b!3200286))

(assert (= (and b!3200286 (not res!1302141)) b!3200274))

(assert (= (and b!3200274 (not res!1302125)) b!3200284))

(assert (= (and b!3200284 (not res!1302127)) b!3200302))

(assert (= (and b!3200302 (not res!1302130)) b!3200287))

(assert (= (and b!3200287 (not res!1302123)) b!3200300))

(assert (= (and b!3200300 (not res!1302137)) b!3200296))

(assert (= (and b!3200296 (not res!1302132)) b!3200301))

(assert (= (and b!3200301 (not res!1302138)) b!3200280))

(assert (= (and b!3200280 res!1302131) b!3200281))

(assert (= (and b!3200281 res!1302129) b!3200289))

(assert (= (and b!3200280 res!1302140) b!3200276))

(assert (= (and b!3200276 res!1302139) b!3200295))

(assert (= (and b!3200280 c!537329) b!3200298))

(assert (= (and b!3200280 (not c!537329)) b!3200277))

(assert (= (and b!3200298 res!1302133) b!3200297))

(assert (= b!3200285 b!3200279))

(assert (= b!3200292 b!3200285))

(assert (= (and start!300430 ((_ is Cons!36071) rules!2135)) b!3200292))

(assert (= b!3200290 b!3200272))

(assert (= b!3200275 b!3200290))

(assert (= b!3200270 b!3200275))

(assert (= (and start!300430 ((_ is Cons!36070) tokens!494)) b!3200270))

(assert (= b!3200291 b!3200271))

(assert (= b!3200288 b!3200291))

(assert (= start!300430 b!3200288))

(declare-fun m!3462277 () Bool)

(assert (=> b!3200287 m!3462277))

(declare-fun m!3462279 () Bool)

(assert (=> b!3200287 m!3462279))

(declare-fun m!3462281 () Bool)

(assert (=> b!3200280 m!3462281))

(declare-fun m!3462283 () Bool)

(assert (=> b!3200280 m!3462283))

(declare-fun m!3462285 () Bool)

(assert (=> b!3200280 m!3462285))

(declare-fun m!3462287 () Bool)

(assert (=> b!3200280 m!3462287))

(declare-fun m!3462289 () Bool)

(assert (=> b!3200280 m!3462289))

(declare-fun m!3462291 () Bool)

(assert (=> b!3200280 m!3462291))

(declare-fun m!3462293 () Bool)

(assert (=> b!3200280 m!3462293))

(declare-fun m!3462295 () Bool)

(assert (=> b!3200280 m!3462295))

(assert (=> b!3200280 m!3462285))

(declare-fun m!3462297 () Bool)

(assert (=> b!3200280 m!3462297))

(declare-fun m!3462299 () Bool)

(assert (=> b!3200280 m!3462299))

(declare-fun m!3462301 () Bool)

(assert (=> b!3200280 m!3462301))

(declare-fun m!3462303 () Bool)

(assert (=> b!3200280 m!3462303))

(declare-fun m!3462305 () Bool)

(assert (=> b!3200280 m!3462305))

(declare-fun m!3462307 () Bool)

(assert (=> b!3200280 m!3462307))

(declare-fun m!3462309 () Bool)

(assert (=> b!3200280 m!3462309))

(declare-fun m!3462311 () Bool)

(assert (=> b!3200280 m!3462311))

(declare-fun m!3462313 () Bool)

(assert (=> b!3200280 m!3462313))

(declare-fun m!3462315 () Bool)

(assert (=> b!3200281 m!3462315))

(declare-fun m!3462317 () Bool)

(assert (=> b!3200281 m!3462317))

(declare-fun m!3462319 () Bool)

(assert (=> b!3200294 m!3462319))

(assert (=> b!3200294 m!3462319))

(declare-fun m!3462321 () Bool)

(assert (=> b!3200294 m!3462321))

(declare-fun m!3462323 () Bool)

(assert (=> b!3200283 m!3462323))

(declare-fun m!3462325 () Bool)

(assert (=> b!3200278 m!3462325))

(declare-fun m!3462327 () Bool)

(assert (=> b!3200275 m!3462327))

(declare-fun m!3462329 () Bool)

(assert (=> b!3200290 m!3462329))

(declare-fun m!3462331 () Bool)

(assert (=> b!3200290 m!3462331))

(declare-fun m!3462333 () Bool)

(assert (=> b!3200299 m!3462333))

(declare-fun m!3462335 () Bool)

(assert (=> b!3200301 m!3462335))

(declare-fun m!3462337 () Bool)

(assert (=> b!3200301 m!3462337))

(declare-fun m!3462339 () Bool)

(assert (=> b!3200302 m!3462339))

(declare-fun m!3462341 () Bool)

(assert (=> b!3200302 m!3462341))

(declare-fun m!3462343 () Bool)

(assert (=> b!3200302 m!3462343))

(declare-fun m!3462345 () Bool)

(assert (=> b!3200300 m!3462345))

(declare-fun m!3462347 () Bool)

(assert (=> b!3200300 m!3462347))

(declare-fun m!3462349 () Bool)

(assert (=> b!3200300 m!3462349))

(declare-fun m!3462351 () Bool)

(assert (=> b!3200300 m!3462351))

(declare-fun m!3462353 () Bool)

(assert (=> b!3200300 m!3462353))

(assert (=> b!3200300 m!3462349))

(assert (=> b!3200300 m!3462345))

(assert (=> b!3200300 m!3462347))

(declare-fun m!3462355 () Bool)

(assert (=> b!3200300 m!3462355))

(declare-fun m!3462357 () Bool)

(assert (=> b!3200300 m!3462357))

(assert (=> b!3200300 m!3462355))

(assert (=> b!3200300 m!3462351))

(declare-fun m!3462359 () Bool)

(assert (=> b!3200300 m!3462359))

(declare-fun m!3462361 () Bool)

(assert (=> b!3200300 m!3462361))

(declare-fun m!3462363 () Bool)

(assert (=> b!3200300 m!3462363))

(declare-fun m!3462365 () Bool)

(assert (=> b!3200288 m!3462365))

(declare-fun m!3462367 () Bool)

(assert (=> b!3200291 m!3462367))

(declare-fun m!3462369 () Bool)

(assert (=> b!3200291 m!3462369))

(declare-fun m!3462371 () Bool)

(assert (=> b!3200269 m!3462371))

(declare-fun m!3462373 () Bool)

(assert (=> start!300430 m!3462373))

(declare-fun m!3462375 () Bool)

(assert (=> b!3200284 m!3462375))

(declare-fun m!3462377 () Bool)

(assert (=> b!3200285 m!3462377))

(declare-fun m!3462379 () Bool)

(assert (=> b!3200285 m!3462379))

(declare-fun m!3462381 () Bool)

(assert (=> b!3200276 m!3462381))

(declare-fun m!3462383 () Bool)

(assert (=> b!3200276 m!3462383))

(declare-fun m!3462385 () Bool)

(assert (=> b!3200274 m!3462385))

(assert (=> b!3200274 m!3462385))

(declare-fun m!3462387 () Bool)

(assert (=> b!3200274 m!3462387))

(declare-fun m!3462389 () Bool)

(assert (=> b!3200286 m!3462389))

(declare-fun m!3462391 () Bool)

(assert (=> b!3200286 m!3462391))

(declare-fun m!3462393 () Bool)

(assert (=> b!3200286 m!3462393))

(declare-fun m!3462395 () Bool)

(assert (=> b!3200286 m!3462395))

(declare-fun m!3462397 () Bool)

(assert (=> b!3200286 m!3462397))

(declare-fun m!3462399 () Bool)

(assert (=> b!3200298 m!3462399))

(declare-fun m!3462401 () Bool)

(assert (=> b!3200298 m!3462401))

(declare-fun m!3462403 () Bool)

(assert (=> b!3200296 m!3462403))

(assert (=> b!3200296 m!3462403))

(declare-fun m!3462405 () Bool)

(assert (=> b!3200296 m!3462405))

(declare-fun m!3462407 () Bool)

(assert (=> b!3200270 m!3462407))

(declare-fun m!3462409 () Bool)

(assert (=> b!3200293 m!3462409))

(check-sat (not b!3200294) (not b!3200270) (not b!3200274) (not b!3200284) (not b!3200290) (not b_next!85731) (not b!3200292) (not b!3200269) (not b!3200285) (not b_next!85735) b_and!212711 b_and!212717 (not b_next!85739) (not b!3200296) (not b!3200281) (not b!3200301) (not b!3200291) b_and!212715 (not b!3200280) (not b!3200283) (not b!3200298) (not b!3200293) b_and!212719 (not b_next!85737) (not b!3200288) (not b!3200275) (not b!3200286) (not b!3200302) (not b_next!85733) (not b!3200300) (not b!3200278) (not b!3200287) (not b_next!85729) (not b!3200299) b_and!212713 b_and!212721 (not start!300430) (not b!3200276))
(check-sat b_and!212715 b_and!212719 (not b_next!85737) (not b_next!85731) (not b_next!85735) (not b_next!85733) (not b_next!85729) b_and!212711 b_and!212717 (not b_next!85739) b_and!212713 b_and!212721)
