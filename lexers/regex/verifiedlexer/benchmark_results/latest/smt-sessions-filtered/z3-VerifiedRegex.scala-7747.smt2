; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407098 () Bool)

(assert start!407098)

(declare-fun b!4251462 () Bool)

(declare-fun b_free!126419 () Bool)

(declare-fun b_next!127123 () Bool)

(assert (=> b!4251462 (= b_free!126419 (not b_next!127123))))

(declare-fun tp!1304641 () Bool)

(declare-fun b_and!337069 () Bool)

(assert (=> b!4251462 (= tp!1304641 b_and!337069)))

(declare-fun b_free!126421 () Bool)

(declare-fun b_next!127125 () Bool)

(assert (=> b!4251462 (= b_free!126421 (not b_next!127125))))

(declare-fun tp!1304640 () Bool)

(declare-fun b_and!337071 () Bool)

(assert (=> b!4251462 (= tp!1304640 b_and!337071)))

(declare-fun b!4251471 () Bool)

(declare-fun b_free!126423 () Bool)

(declare-fun b_next!127127 () Bool)

(assert (=> b!4251471 (= b_free!126423 (not b_next!127127))))

(declare-fun tp!1304644 () Bool)

(declare-fun b_and!337073 () Bool)

(assert (=> b!4251471 (= tp!1304644 b_and!337073)))

(declare-fun b_free!126425 () Bool)

(declare-fun b_next!127129 () Bool)

(assert (=> b!4251471 (= b_free!126425 (not b_next!127129))))

(declare-fun tp!1304643 () Bool)

(declare-fun b_and!337075 () Bool)

(assert (=> b!4251471 (= tp!1304643 b_and!337075)))

(declare-fun b!4251450 () Bool)

(declare-fun e!2640717 () Bool)

(declare-fun e!2640712 () Bool)

(declare-fun tp!1304648 () Bool)

(assert (=> b!4251450 (= e!2640717 (and e!2640712 tp!1304648))))

(declare-fun b!4251451 () Bool)

(declare-fun e!2640708 () Bool)

(declare-fun e!2640718 () Bool)

(assert (=> b!4251451 (= e!2640708 e!2640718)))

(declare-fun res!1747741 () Bool)

(assert (=> b!4251451 (=> (not res!1747741) (not e!2640718))))

(declare-datatypes ((C!25964 0))(
  ( (C!25965 (val!15172 Int)) )
))
(declare-datatypes ((List!47245 0))(
  ( (Nil!47121) (Cons!47121 (h!52541 C!25964) (t!352434 List!47245)) )
))
(declare-fun lt!1508745 () List!47245)

(declare-fun shorterInput!62 () List!47245)

(declare-datatypes ((List!47246 0))(
  ( (Nil!47122) (Cons!47122 (h!52542 (_ BitVec 16)) (t!352435 List!47246)) )
))
(declare-datatypes ((TokenValue!8208 0))(
  ( (FloatLiteralValue!16416 (text!57901 List!47246)) (TokenValueExt!8207 (__x!28639 Int)) (Broken!41040 (value!247883 List!47246)) (Object!8331) (End!8208) (Def!8208) (Underscore!8208) (Match!8208) (Else!8208) (Error!8208) (Case!8208) (If!8208) (Extends!8208) (Abstract!8208) (Class!8208) (Val!8208) (DelimiterValue!16416 (del!8268 List!47246)) (KeywordValue!8214 (value!247884 List!47246)) (CommentValue!16416 (value!247885 List!47246)) (WhitespaceValue!16416 (value!247886 List!47246)) (IndentationValue!8208 (value!247887 List!47246)) (String!54969) (Int32!8208) (Broken!41041 (value!247888 List!47246)) (Boolean!8209) (Unit!66078) (OperatorValue!8211 (op!8268 List!47246)) (IdentifierValue!16416 (value!247889 List!47246)) (IdentifierValue!16417 (value!247890 List!47246)) (WhitespaceValue!16417 (value!247891 List!47246)) (True!16416) (False!16416) (Broken!41042 (value!247892 List!47246)) (Broken!41043 (value!247893 List!47246)) (True!16417) (RightBrace!8208) (RightBracket!8208) (Colon!8208) (Null!8208) (Comma!8208) (LeftBracket!8208) (False!16417) (LeftBrace!8208) (ImaginaryLiteralValue!8208 (text!57902 List!47246)) (StringLiteralValue!24624 (value!247894 List!47246)) (EOFValue!8208 (value!247895 List!47246)) (IdentValue!8208 (value!247896 List!47246)) (DelimiterValue!16417 (value!247897 List!47246)) (DedentValue!8208 (value!247898 List!47246)) (NewLineValue!8208 (value!247899 List!47246)) (IntegerValue!24624 (value!247900 (_ BitVec 32)) (text!57903 List!47246)) (IntegerValue!24625 (value!247901 Int) (text!57904 List!47246)) (Times!8208) (Or!8208) (Equal!8208) (Minus!8208) (Broken!41044 (value!247902 List!47246)) (And!8208) (Div!8208) (LessEqual!8208) (Mod!8208) (Concat!21091) (Not!8208) (Plus!8208) (SpaceValue!8208 (value!247903 List!47246)) (IntegerValue!24626 (value!247904 Int) (text!57905 List!47246)) (StringLiteralValue!24625 (text!57906 List!47246)) (FloatLiteralValue!16417 (text!57907 List!47246)) (BytesLiteralValue!8208 (value!247905 List!47246)) (CommentValue!16417 (value!247906 List!47246)) (StringLiteralValue!24626 (value!247907 List!47246)) (ErrorTokenValue!8208 (msg!8269 List!47246)) )
))
(declare-datatypes ((IArray!28383 0))(
  ( (IArray!28384 (innerList!14249 List!47245)) )
))
(declare-datatypes ((Conc!14189 0))(
  ( (Node!14189 (left!34940 Conc!14189) (right!35270 Conc!14189) (csize!28608 Int) (cheight!14400 Int)) (Leaf!21937 (xs!17495 IArray!28383) (csize!28609 Int)) (Empty!14189) )
))
(declare-datatypes ((BalanceConc!27972 0))(
  ( (BalanceConc!27973 (c!721900 Conc!14189)) )
))
(declare-datatypes ((TokenValueInjection!15844 0))(
  ( (TokenValueInjection!15845 (toValue!10750 Int) (toChars!10609 Int)) )
))
(declare-datatypes ((Regex!12883 0))(
  ( (ElementMatch!12883 (c!721901 C!25964)) (Concat!21092 (regOne!26278 Regex!12883) (regTwo!26278 Regex!12883)) (EmptyExpr!12883) (Star!12883 (reg!13212 Regex!12883)) (EmptyLang!12883) (Union!12883 (regOne!26279 Regex!12883) (regTwo!26279 Regex!12883)) )
))
(declare-datatypes ((String!54970 0))(
  ( (String!54971 (value!247908 String)) )
))
(declare-datatypes ((Rule!15756 0))(
  ( (Rule!15757 (regex!7978 Regex!12883) (tag!8842 String!54970) (isSeparator!7978 Bool) (transformation!7978 TokenValueInjection!15844)) )
))
(declare-datatypes ((Token!14582 0))(
  ( (Token!14583 (value!247909 TokenValue!8208) (rule!11112 Rule!15756) (size!34492 Int) (originalCharacters!8322 List!47245)) )
))
(declare-datatypes ((tuple2!44678 0))(
  ( (tuple2!44679 (_1!25473 Token!14582) (_2!25473 List!47245)) )
))
(declare-datatypes ((Option!10112 0))(
  ( (None!10111) (Some!10111 (v!41069 tuple2!44678)) )
))
(declare-fun lt!1508746 () Option!10112)

(declare-fun ++!11987 (List!47245 List!47245) List!47245)

(assert (=> b!4251451 (= res!1747741 (= (++!11987 lt!1508745 (_2!25473 (v!41069 lt!1508746))) shorterInput!62))))

(declare-fun list!16976 (BalanceConc!27972) List!47245)

(declare-fun charsOf!5318 (Token!14582) BalanceConc!27972)

(assert (=> b!4251451 (= lt!1508745 (list!16976 (charsOf!5318 (_1!25473 (v!41069 lt!1508746)))))))

(declare-fun b!4251452 () Bool)

(declare-fun e!2640716 () Bool)

(declare-fun tp_is_empty!22757 () Bool)

(declare-fun tp!1304649 () Bool)

(assert (=> b!4251452 (= e!2640716 (and tp_is_empty!22757 tp!1304649))))

(declare-fun b!4251453 () Bool)

(declare-fun res!1747740 () Bool)

(declare-fun e!2640704 () Bool)

(assert (=> b!4251453 (=> (not res!1747740) (not e!2640704))))

(declare-fun longerInput!62 () List!47245)

(declare-fun isEmpty!27882 (List!47245) Bool)

(assert (=> b!4251453 (= res!1747740 (not (isEmpty!27882 longerInput!62)))))

(declare-fun b!4251454 () Bool)

(declare-fun e!2640713 () Bool)

(assert (=> b!4251454 (= e!2640704 e!2640713)))

(declare-fun res!1747737 () Bool)

(assert (=> b!4251454 (=> (not res!1747737) (not e!2640713))))

(declare-fun lt!1508750 () Int)

(declare-fun size!34493 (List!47245) Int)

(assert (=> b!4251454 (= res!1747737 (> lt!1508750 (size!34493 shorterInput!62)))))

(assert (=> b!4251454 (= lt!1508750 (size!34493 longerInput!62))))

(declare-fun b!4251455 () Bool)

(declare-fun e!2640705 () Bool)

(declare-fun lt!1508749 () Int)

(assert (=> b!4251455 (= e!2640705 (>= lt!1508749 lt!1508750))))

(declare-fun b!4251456 () Bool)

(declare-fun res!1747748 () Bool)

(assert (=> b!4251456 (=> (not res!1747748) (not e!2640713))))

(declare-datatypes ((LexerInterface!7573 0))(
  ( (LexerInterfaceExt!7570 (__x!28640 Int)) (Lexer!7571) )
))
(declare-fun thiss!21641 () LexerInterface!7573)

(declare-fun suffix!1284 () List!47245)

(declare-datatypes ((List!47247 0))(
  ( (Nil!47123) (Cons!47123 (h!52543 Token!14582) (t!352436 List!47247)) )
))
(declare-fun tokens!592 () List!47247)

(declare-datatypes ((List!47248 0))(
  ( (Nil!47124) (Cons!47124 (h!52544 Rule!15756) (t!352437 List!47248)) )
))
(declare-fun rules!2971 () List!47248)

(declare-datatypes ((tuple2!44680 0))(
  ( (tuple2!44681 (_1!25474 List!47247) (_2!25474 List!47245)) )
))
(declare-fun lexList!2079 (LexerInterface!7573 List!47248 List!47245) tuple2!44680)

(assert (=> b!4251456 (= res!1747748 (= (lexList!2079 thiss!21641 rules!2971 longerInput!62) (tuple2!44681 tokens!592 suffix!1284)))))

(declare-fun b!4251457 () Bool)

(declare-fun res!1747744 () Bool)

(assert (=> b!4251457 (=> (not res!1747744) (not e!2640718))))

(declare-fun lt!1508747 () Option!10112)

(declare-fun lt!1508748 () List!47245)

(assert (=> b!4251457 (= res!1747744 (and (= (_1!25473 (v!41069 lt!1508747)) (_1!25473 (v!41069 lt!1508746))) (= lt!1508748 lt!1508745)))))

(declare-fun b!4251458 () Bool)

(declare-fun res!1747743 () Bool)

(assert (=> b!4251458 (=> (not res!1747743) (not e!2640705))))

(declare-fun tail!6856 (List!47247) List!47247)

(assert (=> b!4251458 (= res!1747743 (= (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508747))) (tuple2!44681 (tail!6856 tokens!592) suffix!1284)))))

(declare-fun b!4251459 () Bool)

(declare-fun e!2640709 () Bool)

(declare-fun tp!1304646 () Bool)

(declare-fun inv!61895 (String!54970) Bool)

(declare-fun inv!61898 (TokenValueInjection!15844) Bool)

(assert (=> b!4251459 (= e!2640712 (and tp!1304646 (inv!61895 (tag!8842 (h!52544 rules!2971))) (inv!61898 (transformation!7978 (h!52544 rules!2971))) e!2640709))))

(declare-fun res!1747745 () Bool)

(assert (=> start!407098 (=> (not res!1747745) (not e!2640704))))

(get-info :version)

(assert (=> start!407098 (= res!1747745 ((_ is Lexer!7571) thiss!21641))))

(assert (=> start!407098 e!2640704))

(assert (=> start!407098 true))

(declare-fun e!2640720 () Bool)

(assert (=> start!407098 e!2640720))

(assert (=> start!407098 e!2640716))

(declare-fun e!2640721 () Bool)

(assert (=> start!407098 e!2640721))

(assert (=> start!407098 e!2640717))

(declare-fun e!2640710 () Bool)

(assert (=> start!407098 e!2640710))

(declare-fun tp!1304650 () Bool)

(declare-fun e!2640714 () Bool)

(declare-fun b!4251460 () Bool)

(declare-fun e!2640722 () Bool)

(declare-fun inv!21 (TokenValue!8208) Bool)

(assert (=> b!4251460 (= e!2640722 (and (inv!21 (value!247909 (h!52543 tokens!592))) e!2640714 tp!1304650))))

(declare-fun b!4251461 () Bool)

(assert (=> b!4251461 (= e!2640718 e!2640705)))

(declare-fun res!1747747 () Bool)

(assert (=> b!4251461 (=> (not res!1747747) (not e!2640705))))

(assert (=> b!4251461 (= res!1747747 (> lt!1508749 (size!34493 (_2!25473 (v!41069 lt!1508746)))))))

(assert (=> b!4251461 (= lt!1508749 (size!34493 (_2!25473 (v!41069 lt!1508747))))))

(declare-fun e!2640707 () Bool)

(assert (=> b!4251462 (= e!2640707 (and tp!1304641 tp!1304640))))

(declare-fun b!4251463 () Bool)

(declare-fun res!1747739 () Bool)

(assert (=> b!4251463 (=> (not res!1747739) (not e!2640704))))

(declare-fun rulesInvariant!6684 (LexerInterface!7573 List!47248) Bool)

(assert (=> b!4251463 (= res!1747739 (rulesInvariant!6684 thiss!21641 rules!2971))))

(declare-fun b!4251464 () Bool)

(declare-fun e!2640711 () Bool)

(assert (=> b!4251464 (= e!2640713 e!2640711)))

(declare-fun res!1747742 () Bool)

(assert (=> b!4251464 (=> (not res!1747742) (not e!2640711))))

(assert (=> b!4251464 (= res!1747742 (and ((_ is Some!10111) lt!1508747) ((_ is Some!10111) lt!1508746)))))

(declare-fun maxPrefix!4529 (LexerInterface!7573 List!47248 List!47245) Option!10112)

(assert (=> b!4251464 (= lt!1508746 (maxPrefix!4529 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4251464 (= lt!1508747 (maxPrefix!4529 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4251465 () Bool)

(declare-fun tp!1304639 () Bool)

(assert (=> b!4251465 (= e!2640710 (and tp_is_empty!22757 tp!1304639))))

(declare-fun b!4251466 () Bool)

(declare-fun tp!1304647 () Bool)

(assert (=> b!4251466 (= e!2640720 (and tp_is_empty!22757 tp!1304647))))

(declare-fun b!4251467 () Bool)

(assert (=> b!4251467 (= e!2640711 e!2640708)))

(declare-fun res!1747736 () Bool)

(assert (=> b!4251467 (=> (not res!1747736) (not e!2640708))))

(assert (=> b!4251467 (= res!1747736 (= (++!11987 lt!1508748 (_2!25473 (v!41069 lt!1508747))) longerInput!62))))

(assert (=> b!4251467 (= lt!1508748 (list!16976 (charsOf!5318 (_1!25473 (v!41069 lt!1508747)))))))

(declare-fun b!4251468 () Bool)

(declare-fun tp!1304642 () Bool)

(declare-fun inv!61899 (Token!14582) Bool)

(assert (=> b!4251468 (= e!2640721 (and (inv!61899 (h!52543 tokens!592)) e!2640722 tp!1304642))))

(declare-fun tp!1304645 () Bool)

(declare-fun b!4251469 () Bool)

(assert (=> b!4251469 (= e!2640714 (and tp!1304645 (inv!61895 (tag!8842 (rule!11112 (h!52543 tokens!592)))) (inv!61898 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) e!2640707))))

(declare-fun b!4251470 () Bool)

(declare-fun res!1747738 () Bool)

(assert (=> b!4251470 (=> (not res!1747738) (not e!2640704))))

(declare-fun isEmpty!27883 (List!47248) Bool)

(assert (=> b!4251470 (= res!1747738 (not (isEmpty!27883 rules!2971)))))

(assert (=> b!4251471 (= e!2640709 (and tp!1304644 tp!1304643))))

(declare-fun b!4251472 () Bool)

(declare-fun res!1747746 () Bool)

(assert (=> b!4251472 (=> (not res!1747746) (not e!2640705))))

(assert (=> b!4251472 (= res!1747746 (not (isEmpty!27882 (_2!25473 (v!41069 lt!1508747)))))))

(assert (= (and start!407098 res!1747745) b!4251470))

(assert (= (and b!4251470 res!1747738) b!4251463))

(assert (= (and b!4251463 res!1747739) b!4251453))

(assert (= (and b!4251453 res!1747740) b!4251454))

(assert (= (and b!4251454 res!1747737) b!4251456))

(assert (= (and b!4251456 res!1747748) b!4251464))

(assert (= (and b!4251464 res!1747742) b!4251467))

(assert (= (and b!4251467 res!1747736) b!4251451))

(assert (= (and b!4251451 res!1747741) b!4251457))

(assert (= (and b!4251457 res!1747744) b!4251461))

(assert (= (and b!4251461 res!1747747) b!4251472))

(assert (= (and b!4251472 res!1747746) b!4251458))

(assert (= (and b!4251458 res!1747743) b!4251455))

(assert (= (and start!407098 ((_ is Cons!47121) suffix!1284)) b!4251466))

(assert (= (and start!407098 ((_ is Cons!47121) longerInput!62)) b!4251452))

(assert (= b!4251469 b!4251462))

(assert (= b!4251460 b!4251469))

(assert (= b!4251468 b!4251460))

(assert (= (and start!407098 ((_ is Cons!47123) tokens!592)) b!4251468))

(assert (= b!4251459 b!4251471))

(assert (= b!4251450 b!4251459))

(assert (= (and start!407098 ((_ is Cons!47124) rules!2971)) b!4251450))

(assert (= (and start!407098 ((_ is Cons!47121) shorterInput!62)) b!4251465))

(declare-fun m!4836133 () Bool)

(assert (=> b!4251472 m!4836133))

(declare-fun m!4836135 () Bool)

(assert (=> b!4251458 m!4836135))

(declare-fun m!4836137 () Bool)

(assert (=> b!4251458 m!4836137))

(declare-fun m!4836139 () Bool)

(assert (=> b!4251463 m!4836139))

(declare-fun m!4836141 () Bool)

(assert (=> b!4251459 m!4836141))

(declare-fun m!4836143 () Bool)

(assert (=> b!4251459 m!4836143))

(declare-fun m!4836145 () Bool)

(assert (=> b!4251451 m!4836145))

(declare-fun m!4836147 () Bool)

(assert (=> b!4251451 m!4836147))

(assert (=> b!4251451 m!4836147))

(declare-fun m!4836149 () Bool)

(assert (=> b!4251451 m!4836149))

(declare-fun m!4836151 () Bool)

(assert (=> b!4251454 m!4836151))

(declare-fun m!4836153 () Bool)

(assert (=> b!4251454 m!4836153))

(declare-fun m!4836155 () Bool)

(assert (=> b!4251469 m!4836155))

(declare-fun m!4836157 () Bool)

(assert (=> b!4251469 m!4836157))

(declare-fun m!4836159 () Bool)

(assert (=> b!4251460 m!4836159))

(declare-fun m!4836161 () Bool)

(assert (=> b!4251464 m!4836161))

(declare-fun m!4836163 () Bool)

(assert (=> b!4251464 m!4836163))

(declare-fun m!4836165 () Bool)

(assert (=> b!4251468 m!4836165))

(declare-fun m!4836167 () Bool)

(assert (=> b!4251453 m!4836167))

(declare-fun m!4836169 () Bool)

(assert (=> b!4251467 m!4836169))

(declare-fun m!4836171 () Bool)

(assert (=> b!4251467 m!4836171))

(assert (=> b!4251467 m!4836171))

(declare-fun m!4836173 () Bool)

(assert (=> b!4251467 m!4836173))

(declare-fun m!4836175 () Bool)

(assert (=> b!4251461 m!4836175))

(declare-fun m!4836177 () Bool)

(assert (=> b!4251461 m!4836177))

(declare-fun m!4836179 () Bool)

(assert (=> b!4251456 m!4836179))

(declare-fun m!4836181 () Bool)

(assert (=> b!4251470 m!4836181))

(check-sat (not b!4251468) (not b!4251450) (not b!4251472) (not b!4251459) b_and!337075 (not b_next!127127) (not b!4251453) (not b!4251451) (not b_next!127123) (not b!4251470) b_and!337073 (not b_next!127129) (not b!4251454) tp_is_empty!22757 (not b!4251456) (not b!4251466) (not b!4251469) (not b!4251467) (not b!4251458) (not b!4251460) (not b!4251461) b_and!337069 (not b_next!127125) (not b!4251463) (not b!4251464) (not b!4251452) (not b!4251465) b_and!337071)
(check-sat (not b_next!127129) b_and!337075 (not b_next!127127) b_and!337069 (not b_next!127123) b_and!337073 (not b_next!127125) b_and!337071)
(get-model)

(declare-fun d!1250132 () Bool)

(declare-fun c!721910 () Bool)

(assert (=> d!1250132 (= c!721910 ((_ is IntegerValue!24624) (value!247909 (h!52543 tokens!592))))))

(declare-fun e!2640741 () Bool)

(assert (=> d!1250132 (= (inv!21 (value!247909 (h!52543 tokens!592))) e!2640741)))

(declare-fun b!4251502 () Bool)

(declare-fun e!2640739 () Bool)

(declare-fun inv!15 (TokenValue!8208) Bool)

(assert (=> b!4251502 (= e!2640739 (inv!15 (value!247909 (h!52543 tokens!592))))))

(declare-fun b!4251503 () Bool)

(declare-fun e!2640740 () Bool)

(declare-fun inv!17 (TokenValue!8208) Bool)

(assert (=> b!4251503 (= e!2640740 (inv!17 (value!247909 (h!52543 tokens!592))))))

(declare-fun b!4251504 () Bool)

(assert (=> b!4251504 (= e!2640741 e!2640740)))

(declare-fun c!721911 () Bool)

(assert (=> b!4251504 (= c!721911 ((_ is IntegerValue!24625) (value!247909 (h!52543 tokens!592))))))

(declare-fun b!4251505 () Bool)

(declare-fun res!1747761 () Bool)

(assert (=> b!4251505 (=> res!1747761 e!2640739)))

(assert (=> b!4251505 (= res!1747761 (not ((_ is IntegerValue!24626) (value!247909 (h!52543 tokens!592)))))))

(assert (=> b!4251505 (= e!2640740 e!2640739)))

(declare-fun b!4251506 () Bool)

(declare-fun inv!16 (TokenValue!8208) Bool)

(assert (=> b!4251506 (= e!2640741 (inv!16 (value!247909 (h!52543 tokens!592))))))

(assert (= (and d!1250132 c!721910) b!4251506))

(assert (= (and d!1250132 (not c!721910)) b!4251504))

(assert (= (and b!4251504 c!721911) b!4251503))

(assert (= (and b!4251504 (not c!721911)) b!4251505))

(assert (= (and b!4251505 (not res!1747761)) b!4251502))

(declare-fun m!4836199 () Bool)

(assert (=> b!4251502 m!4836199))

(declare-fun m!4836201 () Bool)

(assert (=> b!4251503 m!4836201))

(declare-fun m!4836203 () Bool)

(assert (=> b!4251506 m!4836203))

(assert (=> b!4251460 d!1250132))

(declare-fun d!1250134 () Bool)

(assert (=> d!1250134 (= (isEmpty!27883 rules!2971) ((_ is Nil!47124) rules!2971))))

(assert (=> b!4251470 d!1250134))

(declare-fun d!1250136 () Bool)

(assert (=> d!1250136 (= (isEmpty!27882 (_2!25473 (v!41069 lt!1508747))) ((_ is Nil!47121) (_2!25473 (v!41069 lt!1508747))))))

(assert (=> b!4251472 d!1250136))

(declare-fun d!1250138 () Bool)

(declare-fun e!2640746 () Bool)

(assert (=> d!1250138 e!2640746))

(declare-fun res!1747766 () Bool)

(assert (=> d!1250138 (=> (not res!1747766) (not e!2640746))))

(declare-fun lt!1508757 () List!47245)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7406 (List!47245) (InoxSet C!25964))

(assert (=> d!1250138 (= res!1747766 (= (content!7406 lt!1508757) ((_ map or) (content!7406 lt!1508745) (content!7406 (_2!25473 (v!41069 lt!1508746))))))))

(declare-fun e!2640747 () List!47245)

(assert (=> d!1250138 (= lt!1508757 e!2640747)))

(declare-fun c!721914 () Bool)

(assert (=> d!1250138 (= c!721914 ((_ is Nil!47121) lt!1508745))))

(assert (=> d!1250138 (= (++!11987 lt!1508745 (_2!25473 (v!41069 lt!1508746))) lt!1508757)))

(declare-fun b!4251516 () Bool)

(assert (=> b!4251516 (= e!2640747 (Cons!47121 (h!52541 lt!1508745) (++!11987 (t!352434 lt!1508745) (_2!25473 (v!41069 lt!1508746)))))))

(declare-fun b!4251515 () Bool)

(assert (=> b!4251515 (= e!2640747 (_2!25473 (v!41069 lt!1508746)))))

(declare-fun b!4251517 () Bool)

(declare-fun res!1747767 () Bool)

(assert (=> b!4251517 (=> (not res!1747767) (not e!2640746))))

(assert (=> b!4251517 (= res!1747767 (= (size!34493 lt!1508757) (+ (size!34493 lt!1508745) (size!34493 (_2!25473 (v!41069 lt!1508746))))))))

(declare-fun b!4251518 () Bool)

(assert (=> b!4251518 (= e!2640746 (or (not (= (_2!25473 (v!41069 lt!1508746)) Nil!47121)) (= lt!1508757 lt!1508745)))))

(assert (= (and d!1250138 c!721914) b!4251515))

(assert (= (and d!1250138 (not c!721914)) b!4251516))

(assert (= (and d!1250138 res!1747766) b!4251517))

(assert (= (and b!4251517 res!1747767) b!4251518))

(declare-fun m!4836205 () Bool)

(assert (=> d!1250138 m!4836205))

(declare-fun m!4836207 () Bool)

(assert (=> d!1250138 m!4836207))

(declare-fun m!4836209 () Bool)

(assert (=> d!1250138 m!4836209))

(declare-fun m!4836211 () Bool)

(assert (=> b!4251516 m!4836211))

(declare-fun m!4836213 () Bool)

(assert (=> b!4251517 m!4836213))

(declare-fun m!4836215 () Bool)

(assert (=> b!4251517 m!4836215))

(assert (=> b!4251517 m!4836175))

(assert (=> b!4251451 d!1250138))

(declare-fun d!1250140 () Bool)

(declare-fun list!16978 (Conc!14189) List!47245)

(assert (=> d!1250140 (= (list!16976 (charsOf!5318 (_1!25473 (v!41069 lt!1508746)))) (list!16978 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746))))))))

(declare-fun bs!598654 () Bool)

(assert (= bs!598654 d!1250140))

(declare-fun m!4836217 () Bool)

(assert (=> bs!598654 m!4836217))

(assert (=> b!4251451 d!1250140))

(declare-fun d!1250142 () Bool)

(declare-fun lt!1508760 () BalanceConc!27972)

(assert (=> d!1250142 (= (list!16976 lt!1508760) (originalCharacters!8322 (_1!25473 (v!41069 lt!1508746))))))

(declare-fun dynLambda!20182 (Int TokenValue!8208) BalanceConc!27972)

(assert (=> d!1250142 (= lt!1508760 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))))

(assert (=> d!1250142 (= (charsOf!5318 (_1!25473 (v!41069 lt!1508746))) lt!1508760)))

(declare-fun b_lambda!125237 () Bool)

(assert (=> (not b_lambda!125237) (not d!1250142)))

(declare-fun t!352443 () Bool)

(declare-fun tb!256375 () Bool)

(assert (=> (and b!4251462 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746)))))) t!352443) tb!256375))

(declare-fun b!4251523 () Bool)

(declare-fun e!2640750 () Bool)

(declare-fun tp!1304656 () Bool)

(declare-fun inv!61902 (Conc!14189) Bool)

(assert (=> b!4251523 (= e!2640750 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))) tp!1304656))))

(declare-fun result!312678 () Bool)

(declare-fun inv!61903 (BalanceConc!27972) Bool)

(assert (=> tb!256375 (= result!312678 (and (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))) e!2640750))))

(assert (= tb!256375 b!4251523))

(declare-fun m!4836219 () Bool)

(assert (=> b!4251523 m!4836219))

(declare-fun m!4836221 () Bool)

(assert (=> tb!256375 m!4836221))

(assert (=> d!1250142 t!352443))

(declare-fun b_and!337081 () Bool)

(assert (= b_and!337071 (and (=> t!352443 result!312678) b_and!337081)))

(declare-fun t!352445 () Bool)

(declare-fun tb!256377 () Bool)

(assert (=> (and b!4251471 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746)))))) t!352445) tb!256377))

(declare-fun result!312682 () Bool)

(assert (= result!312682 result!312678))

(assert (=> d!1250142 t!352445))

(declare-fun b_and!337083 () Bool)

(assert (= b_and!337075 (and (=> t!352445 result!312682) b_and!337083)))

(declare-fun m!4836223 () Bool)

(assert (=> d!1250142 m!4836223))

(declare-fun m!4836225 () Bool)

(assert (=> d!1250142 m!4836225))

(assert (=> b!4251451 d!1250142))

(declare-fun d!1250144 () Bool)

(declare-fun lt!1508763 () Int)

(assert (=> d!1250144 (>= lt!1508763 0)))

(declare-fun e!2640753 () Int)

(assert (=> d!1250144 (= lt!1508763 e!2640753)))

(declare-fun c!721917 () Bool)

(assert (=> d!1250144 (= c!721917 ((_ is Nil!47121) (_2!25473 (v!41069 lt!1508746))))))

(assert (=> d!1250144 (= (size!34493 (_2!25473 (v!41069 lt!1508746))) lt!1508763)))

(declare-fun b!4251528 () Bool)

(assert (=> b!4251528 (= e!2640753 0)))

(declare-fun b!4251529 () Bool)

(assert (=> b!4251529 (= e!2640753 (+ 1 (size!34493 (t!352434 (_2!25473 (v!41069 lt!1508746))))))))

(assert (= (and d!1250144 c!721917) b!4251528))

(assert (= (and d!1250144 (not c!721917)) b!4251529))

(declare-fun m!4836227 () Bool)

(assert (=> b!4251529 m!4836227))

(assert (=> b!4251461 d!1250144))

(declare-fun d!1250146 () Bool)

(declare-fun lt!1508764 () Int)

(assert (=> d!1250146 (>= lt!1508764 0)))

(declare-fun e!2640754 () Int)

(assert (=> d!1250146 (= lt!1508764 e!2640754)))

(declare-fun c!721918 () Bool)

(assert (=> d!1250146 (= c!721918 ((_ is Nil!47121) (_2!25473 (v!41069 lt!1508747))))))

(assert (=> d!1250146 (= (size!34493 (_2!25473 (v!41069 lt!1508747))) lt!1508764)))

(declare-fun b!4251530 () Bool)

(assert (=> b!4251530 (= e!2640754 0)))

(declare-fun b!4251531 () Bool)

(assert (=> b!4251531 (= e!2640754 (+ 1 (size!34493 (t!352434 (_2!25473 (v!41069 lt!1508747))))))))

(assert (= (and d!1250146 c!721918) b!4251530))

(assert (= (and d!1250146 (not c!721918)) b!4251531))

(declare-fun m!4836229 () Bool)

(assert (=> b!4251531 m!4836229))

(assert (=> b!4251461 d!1250146))

(declare-fun d!1250148 () Bool)

(declare-fun res!1747786 () Bool)

(declare-fun e!2640763 () Bool)

(assert (=> d!1250148 (=> (not res!1747786) (not e!2640763))))

(assert (=> d!1250148 (= res!1747786 (not (isEmpty!27882 (originalCharacters!8322 (h!52543 tokens!592)))))))

(assert (=> d!1250148 (= (inv!61899 (h!52543 tokens!592)) e!2640763)))

(declare-fun b!4251554 () Bool)

(declare-fun res!1747787 () Bool)

(assert (=> b!4251554 (=> (not res!1747787) (not e!2640763))))

(assert (=> b!4251554 (= res!1747787 (= (originalCharacters!8322 (h!52543 tokens!592)) (list!16976 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))))))

(declare-fun b!4251555 () Bool)

(assert (=> b!4251555 (= e!2640763 (= (size!34492 (h!52543 tokens!592)) (size!34493 (originalCharacters!8322 (h!52543 tokens!592)))))))

(assert (= (and d!1250148 res!1747786) b!4251554))

(assert (= (and b!4251554 res!1747787) b!4251555))

(declare-fun b_lambda!125239 () Bool)

(assert (=> (not b_lambda!125239) (not b!4251554)))

(declare-fun t!352447 () Bool)

(declare-fun tb!256379 () Bool)

(assert (=> (and b!4251462 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) t!352447) tb!256379))

(declare-fun b!4251556 () Bool)

(declare-fun e!2640764 () Bool)

(declare-fun tp!1304657 () Bool)

(assert (=> b!4251556 (= e!2640764 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))) tp!1304657))))

(declare-fun result!312684 () Bool)

(assert (=> tb!256379 (= result!312684 (and (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))) e!2640764))))

(assert (= tb!256379 b!4251556))

(declare-fun m!4836231 () Bool)

(assert (=> b!4251556 m!4836231))

(declare-fun m!4836233 () Bool)

(assert (=> tb!256379 m!4836233))

(assert (=> b!4251554 t!352447))

(declare-fun b_and!337085 () Bool)

(assert (= b_and!337081 (and (=> t!352447 result!312684) b_and!337085)))

(declare-fun t!352449 () Bool)

(declare-fun tb!256381 () Bool)

(assert (=> (and b!4251471 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) t!352449) tb!256381))

(declare-fun result!312686 () Bool)

(assert (= result!312686 result!312684))

(assert (=> b!4251554 t!352449))

(declare-fun b_and!337087 () Bool)

(assert (= b_and!337083 (and (=> t!352449 result!312686) b_and!337087)))

(declare-fun m!4836235 () Bool)

(assert (=> d!1250148 m!4836235))

(declare-fun m!4836237 () Bool)

(assert (=> b!4251554 m!4836237))

(assert (=> b!4251554 m!4836237))

(declare-fun m!4836239 () Bool)

(assert (=> b!4251554 m!4836239))

(declare-fun m!4836241 () Bool)

(assert (=> b!4251555 m!4836241))

(assert (=> b!4251468 d!1250148))

(declare-fun d!1250150 () Bool)

(assert (=> d!1250150 (= (inv!61895 (tag!8842 (h!52544 rules!2971))) (= (mod (str.len (value!247908 (tag!8842 (h!52544 rules!2971)))) 2) 0))))

(assert (=> b!4251459 d!1250150))

(declare-fun d!1250152 () Bool)

(declare-fun res!1747804 () Bool)

(declare-fun e!2640773 () Bool)

(assert (=> d!1250152 (=> (not res!1747804) (not e!2640773))))

(declare-fun semiInverseModEq!3481 (Int Int) Bool)

(assert (=> d!1250152 (= res!1747804 (semiInverseModEq!3481 (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toValue!10750 (transformation!7978 (h!52544 rules!2971)))))))

(assert (=> d!1250152 (= (inv!61898 (transformation!7978 (h!52544 rules!2971))) e!2640773)))

(declare-fun b!4251577 () Bool)

(declare-fun equivClasses!3380 (Int Int) Bool)

(assert (=> b!4251577 (= e!2640773 (equivClasses!3380 (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toValue!10750 (transformation!7978 (h!52544 rules!2971)))))))

(assert (= (and d!1250152 res!1747804) b!4251577))

(declare-fun m!4836305 () Bool)

(assert (=> d!1250152 m!4836305))

(declare-fun m!4836307 () Bool)

(assert (=> b!4251577 m!4836307))

(assert (=> b!4251459 d!1250152))

(declare-fun b!4251662 () Bool)

(declare-fun e!2640834 () tuple2!44680)

(declare-fun lt!1508813 () Option!10112)

(declare-fun lt!1508815 () tuple2!44680)

(assert (=> b!4251662 (= e!2640834 (tuple2!44681 (Cons!47123 (_1!25473 (v!41069 lt!1508813)) (_1!25474 lt!1508815)) (_2!25474 lt!1508815)))))

(assert (=> b!4251662 (= lt!1508815 (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508813))))))

(declare-fun b!4251663 () Bool)

(declare-fun e!2640832 () Bool)

(declare-fun e!2640833 () Bool)

(assert (=> b!4251663 (= e!2640832 e!2640833)))

(declare-fun res!1747829 () Bool)

(declare-fun lt!1508814 () tuple2!44680)

(assert (=> b!4251663 (= res!1747829 (< (size!34493 (_2!25474 lt!1508814)) (size!34493 (_2!25473 (v!41069 lt!1508747)))))))

(assert (=> b!4251663 (=> (not res!1747829) (not e!2640833))))

(declare-fun b!4251664 () Bool)

(declare-fun isEmpty!27886 (List!47247) Bool)

(assert (=> b!4251664 (= e!2640833 (not (isEmpty!27886 (_1!25474 lt!1508814))))))

(declare-fun b!4251665 () Bool)

(assert (=> b!4251665 (= e!2640834 (tuple2!44681 Nil!47123 (_2!25473 (v!41069 lt!1508747))))))

(declare-fun d!1250158 () Bool)

(assert (=> d!1250158 e!2640832))

(declare-fun c!721947 () Bool)

(declare-fun size!34495 (List!47247) Int)

(assert (=> d!1250158 (= c!721947 (> (size!34495 (_1!25474 lt!1508814)) 0))))

(assert (=> d!1250158 (= lt!1508814 e!2640834)))

(declare-fun c!721948 () Bool)

(assert (=> d!1250158 (= c!721948 ((_ is Some!10111) lt!1508813))))

(assert (=> d!1250158 (= lt!1508813 (maxPrefix!4529 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508747))))))

(assert (=> d!1250158 (= (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508747))) lt!1508814)))

(declare-fun b!4251666 () Bool)

(assert (=> b!4251666 (= e!2640832 (= (_2!25474 lt!1508814) (_2!25473 (v!41069 lt!1508747))))))

(assert (= (and d!1250158 c!721948) b!4251662))

(assert (= (and d!1250158 (not c!721948)) b!4251665))

(assert (= (and d!1250158 c!721947) b!4251663))

(assert (= (and d!1250158 (not c!721947)) b!4251666))

(assert (= (and b!4251663 res!1747829) b!4251664))

(declare-fun m!4836395 () Bool)

(assert (=> b!4251662 m!4836395))

(declare-fun m!4836403 () Bool)

(assert (=> b!4251663 m!4836403))

(assert (=> b!4251663 m!4836177))

(declare-fun m!4836405 () Bool)

(assert (=> b!4251664 m!4836405))

(declare-fun m!4836407 () Bool)

(assert (=> d!1250158 m!4836407))

(declare-fun m!4836409 () Bool)

(assert (=> d!1250158 m!4836409))

(assert (=> b!4251458 d!1250158))

(declare-fun d!1250198 () Bool)

(assert (=> d!1250198 (= (tail!6856 tokens!592) (t!352436 tokens!592))))

(assert (=> b!4251458 d!1250198))

(declare-fun d!1250200 () Bool)

(assert (=> d!1250200 (= (inv!61895 (tag!8842 (rule!11112 (h!52543 tokens!592)))) (= (mod (str.len (value!247908 (tag!8842 (rule!11112 (h!52543 tokens!592))))) 2) 0))))

(assert (=> b!4251469 d!1250200))

(declare-fun d!1250202 () Bool)

(declare-fun res!1747830 () Bool)

(declare-fun e!2640850 () Bool)

(assert (=> d!1250202 (=> (not res!1747830) (not e!2640850))))

(assert (=> d!1250202 (= res!1747830 (semiInverseModEq!3481 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592))))))))

(assert (=> d!1250202 (= (inv!61898 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) e!2640850)))

(declare-fun b!4251695 () Bool)

(assert (=> b!4251695 (= e!2640850 (equivClasses!3380 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592))))))))

(assert (= (and d!1250202 res!1747830) b!4251695))

(declare-fun m!4836411 () Bool)

(assert (=> d!1250202 m!4836411))

(declare-fun m!4836413 () Bool)

(assert (=> b!4251695 m!4836413))

(assert (=> b!4251469 d!1250202))

(declare-fun d!1250204 () Bool)

(declare-fun lt!1508816 () Int)

(assert (=> d!1250204 (>= lt!1508816 0)))

(declare-fun e!2640855 () Int)

(assert (=> d!1250204 (= lt!1508816 e!2640855)))

(declare-fun c!721949 () Bool)

(assert (=> d!1250204 (= c!721949 ((_ is Nil!47121) shorterInput!62))))

(assert (=> d!1250204 (= (size!34493 shorterInput!62) lt!1508816)))

(declare-fun b!4251698 () Bool)

(assert (=> b!4251698 (= e!2640855 0)))

(declare-fun b!4251701 () Bool)

(assert (=> b!4251701 (= e!2640855 (+ 1 (size!34493 (t!352434 shorterInput!62))))))

(assert (= (and d!1250204 c!721949) b!4251698))

(assert (= (and d!1250204 (not c!721949)) b!4251701))

(declare-fun m!4836415 () Bool)

(assert (=> b!4251701 m!4836415))

(assert (=> b!4251454 d!1250204))

(declare-fun d!1250206 () Bool)

(declare-fun lt!1508817 () Int)

(assert (=> d!1250206 (>= lt!1508817 0)))

(declare-fun e!2640858 () Int)

(assert (=> d!1250206 (= lt!1508817 e!2640858)))

(declare-fun c!721950 () Bool)

(assert (=> d!1250206 (= c!721950 ((_ is Nil!47121) longerInput!62))))

(assert (=> d!1250206 (= (size!34493 longerInput!62) lt!1508817)))

(declare-fun b!4251702 () Bool)

(assert (=> b!4251702 (= e!2640858 0)))

(declare-fun b!4251703 () Bool)

(assert (=> b!4251703 (= e!2640858 (+ 1 (size!34493 (t!352434 longerInput!62))))))

(assert (= (and d!1250206 c!721950) b!4251702))

(assert (= (and d!1250206 (not c!721950)) b!4251703))

(declare-fun m!4836417 () Bool)

(assert (=> b!4251703 m!4836417))

(assert (=> b!4251454 d!1250206))

(declare-fun b!4251704 () Bool)

(declare-fun e!2640861 () tuple2!44680)

(declare-fun lt!1508818 () Option!10112)

(declare-fun lt!1508820 () tuple2!44680)

(assert (=> b!4251704 (= e!2640861 (tuple2!44681 (Cons!47123 (_1!25473 (v!41069 lt!1508818)) (_1!25474 lt!1508820)) (_2!25474 lt!1508820)))))

(assert (=> b!4251704 (= lt!1508820 (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508818))))))

(declare-fun b!4251705 () Bool)

(declare-fun e!2640859 () Bool)

(declare-fun e!2640860 () Bool)

(assert (=> b!4251705 (= e!2640859 e!2640860)))

(declare-fun res!1747831 () Bool)

(declare-fun lt!1508819 () tuple2!44680)

(assert (=> b!4251705 (= res!1747831 (< (size!34493 (_2!25474 lt!1508819)) (size!34493 longerInput!62)))))

(assert (=> b!4251705 (=> (not res!1747831) (not e!2640860))))

(declare-fun b!4251706 () Bool)

(assert (=> b!4251706 (= e!2640860 (not (isEmpty!27886 (_1!25474 lt!1508819))))))

(declare-fun b!4251707 () Bool)

(assert (=> b!4251707 (= e!2640861 (tuple2!44681 Nil!47123 longerInput!62))))

(declare-fun d!1250208 () Bool)

(assert (=> d!1250208 e!2640859))

(declare-fun c!721951 () Bool)

(assert (=> d!1250208 (= c!721951 (> (size!34495 (_1!25474 lt!1508819)) 0))))

(assert (=> d!1250208 (= lt!1508819 e!2640861)))

(declare-fun c!721952 () Bool)

(assert (=> d!1250208 (= c!721952 ((_ is Some!10111) lt!1508818))))

(assert (=> d!1250208 (= lt!1508818 (maxPrefix!4529 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250208 (= (lexList!2079 thiss!21641 rules!2971 longerInput!62) lt!1508819)))

(declare-fun b!4251708 () Bool)

(assert (=> b!4251708 (= e!2640859 (= (_2!25474 lt!1508819) longerInput!62))))

(assert (= (and d!1250208 c!721952) b!4251704))

(assert (= (and d!1250208 (not c!721952)) b!4251707))

(assert (= (and d!1250208 c!721951) b!4251705))

(assert (= (and d!1250208 (not c!721951)) b!4251708))

(assert (= (and b!4251705 res!1747831) b!4251706))

(declare-fun m!4836423 () Bool)

(assert (=> b!4251704 m!4836423))

(declare-fun m!4836425 () Bool)

(assert (=> b!4251705 m!4836425))

(assert (=> b!4251705 m!4836153))

(declare-fun m!4836427 () Bool)

(assert (=> b!4251706 m!4836427))

(declare-fun m!4836429 () Bool)

(assert (=> d!1250208 m!4836429))

(assert (=> d!1250208 m!4836163))

(assert (=> b!4251456 d!1250208))

(declare-fun d!1250210 () Bool)

(declare-fun e!2640869 () Bool)

(assert (=> d!1250210 e!2640869))

(declare-fun res!1747832 () Bool)

(assert (=> d!1250210 (=> (not res!1747832) (not e!2640869))))

(declare-fun lt!1508821 () List!47245)

(assert (=> d!1250210 (= res!1747832 (= (content!7406 lt!1508821) ((_ map or) (content!7406 lt!1508748) (content!7406 (_2!25473 (v!41069 lt!1508747))))))))

(declare-fun e!2640870 () List!47245)

(assert (=> d!1250210 (= lt!1508821 e!2640870)))

(declare-fun c!721953 () Bool)

(assert (=> d!1250210 (= c!721953 ((_ is Nil!47121) lt!1508748))))

(assert (=> d!1250210 (= (++!11987 lt!1508748 (_2!25473 (v!41069 lt!1508747))) lt!1508821)))

(declare-fun b!4251719 () Bool)

(assert (=> b!4251719 (= e!2640870 (Cons!47121 (h!52541 lt!1508748) (++!11987 (t!352434 lt!1508748) (_2!25473 (v!41069 lt!1508747)))))))

(declare-fun b!4251718 () Bool)

(assert (=> b!4251718 (= e!2640870 (_2!25473 (v!41069 lt!1508747)))))

(declare-fun b!4251720 () Bool)

(declare-fun res!1747833 () Bool)

(assert (=> b!4251720 (=> (not res!1747833) (not e!2640869))))

(assert (=> b!4251720 (= res!1747833 (= (size!34493 lt!1508821) (+ (size!34493 lt!1508748) (size!34493 (_2!25473 (v!41069 lt!1508747))))))))

(declare-fun b!4251721 () Bool)

(assert (=> b!4251721 (= e!2640869 (or (not (= (_2!25473 (v!41069 lt!1508747)) Nil!47121)) (= lt!1508821 lt!1508748)))))

(assert (= (and d!1250210 c!721953) b!4251718))

(assert (= (and d!1250210 (not c!721953)) b!4251719))

(assert (= (and d!1250210 res!1747832) b!4251720))

(assert (= (and b!4251720 res!1747833) b!4251721))

(declare-fun m!4836431 () Bool)

(assert (=> d!1250210 m!4836431))

(declare-fun m!4836433 () Bool)

(assert (=> d!1250210 m!4836433))

(declare-fun m!4836435 () Bool)

(assert (=> d!1250210 m!4836435))

(declare-fun m!4836437 () Bool)

(assert (=> b!4251719 m!4836437))

(declare-fun m!4836439 () Bool)

(assert (=> b!4251720 m!4836439))

(declare-fun m!4836441 () Bool)

(assert (=> b!4251720 m!4836441))

(assert (=> b!4251720 m!4836177))

(assert (=> b!4251467 d!1250210))

(declare-fun d!1250212 () Bool)

(assert (=> d!1250212 (= (list!16976 (charsOf!5318 (_1!25473 (v!41069 lt!1508747)))) (list!16978 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747))))))))

(declare-fun bs!598657 () Bool)

(assert (= bs!598657 d!1250212))

(declare-fun m!4836443 () Bool)

(assert (=> bs!598657 m!4836443))

(assert (=> b!4251467 d!1250212))

(declare-fun d!1250214 () Bool)

(declare-fun lt!1508822 () BalanceConc!27972)

(assert (=> d!1250214 (= (list!16976 lt!1508822) (originalCharacters!8322 (_1!25473 (v!41069 lt!1508747))))))

(assert (=> d!1250214 (= lt!1508822 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))))

(assert (=> d!1250214 (= (charsOf!5318 (_1!25473 (v!41069 lt!1508747))) lt!1508822)))

(declare-fun b_lambda!125247 () Bool)

(assert (=> (not b_lambda!125247) (not d!1250214)))

(declare-fun tb!256403 () Bool)

(declare-fun t!352471 () Bool)

(assert (=> (and b!4251462 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747)))))) t!352471) tb!256403))

(declare-fun b!4251722 () Bool)

(declare-fun e!2640871 () Bool)

(declare-fun tp!1304713 () Bool)

(assert (=> b!4251722 (= e!2640871 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))) tp!1304713))))

(declare-fun result!312716 () Bool)

(assert (=> tb!256403 (= result!312716 (and (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))) e!2640871))))

(assert (= tb!256403 b!4251722))

(declare-fun m!4836445 () Bool)

(assert (=> b!4251722 m!4836445))

(declare-fun m!4836447 () Bool)

(assert (=> tb!256403 m!4836447))

(assert (=> d!1250214 t!352471))

(declare-fun b_and!337105 () Bool)

(assert (= b_and!337085 (and (=> t!352471 result!312716) b_and!337105)))

(declare-fun tb!256405 () Bool)

(declare-fun t!352473 () Bool)

(assert (=> (and b!4251471 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747)))))) t!352473) tb!256405))

(declare-fun result!312718 () Bool)

(assert (= result!312718 result!312716))

(assert (=> d!1250214 t!352473))

(declare-fun b_and!337107 () Bool)

(assert (= b_and!337087 (and (=> t!352473 result!312718) b_and!337107)))

(declare-fun m!4836449 () Bool)

(assert (=> d!1250214 m!4836449))

(declare-fun m!4836451 () Bool)

(assert (=> d!1250214 m!4836451))

(assert (=> b!4251467 d!1250214))

(declare-fun d!1250216 () Bool)

(declare-fun res!1747836 () Bool)

(declare-fun e!2640874 () Bool)

(assert (=> d!1250216 (=> (not res!1747836) (not e!2640874))))

(declare-fun rulesValid!3103 (LexerInterface!7573 List!47248) Bool)

(assert (=> d!1250216 (= res!1747836 (rulesValid!3103 thiss!21641 rules!2971))))

(assert (=> d!1250216 (= (rulesInvariant!6684 thiss!21641 rules!2971) e!2640874)))

(declare-fun b!4251725 () Bool)

(declare-datatypes ((List!47250 0))(
  ( (Nil!47126) (Cons!47126 (h!52546 String!54970) (t!352487 List!47250)) )
))
(declare-fun noDuplicateTag!3264 (LexerInterface!7573 List!47248 List!47250) Bool)

(assert (=> b!4251725 (= e!2640874 (noDuplicateTag!3264 thiss!21641 rules!2971 Nil!47126))))

(assert (= (and d!1250216 res!1747836) b!4251725))

(declare-fun m!4836453 () Bool)

(assert (=> d!1250216 m!4836453))

(declare-fun m!4836455 () Bool)

(assert (=> b!4251725 m!4836455))

(assert (=> b!4251463 d!1250216))

(declare-fun call!293983 () Option!10112)

(declare-fun bm!293978 () Bool)

(declare-fun maxPrefixOneRule!3476 (LexerInterface!7573 Rule!15756 List!47245) Option!10112)

(assert (=> bm!293978 (= call!293983 (maxPrefixOneRule!3476 thiss!21641 (h!52544 rules!2971) shorterInput!62))))

(declare-fun b!4251744 () Bool)

(declare-fun e!2640881 () Option!10112)

(assert (=> b!4251744 (= e!2640881 call!293983)))

(declare-fun b!4251745 () Bool)

(declare-fun res!1747851 () Bool)

(declare-fun e!2640883 () Bool)

(assert (=> b!4251745 (=> (not res!1747851) (not e!2640883))))

(declare-fun lt!1508834 () Option!10112)

(declare-fun get!15297 (Option!10112) tuple2!44678)

(declare-fun apply!10778 (TokenValueInjection!15844 BalanceConc!27972) TokenValue!8208)

(declare-fun seqFromList!5838 (List!47245) BalanceConc!27972)

(assert (=> b!4251745 (= res!1747851 (= (value!247909 (_1!25473 (get!15297 lt!1508834))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834)))))))))

(declare-fun b!4251746 () Bool)

(declare-fun res!1747854 () Bool)

(assert (=> b!4251746 (=> (not res!1747854) (not e!2640883))))

(assert (=> b!4251746 (= res!1747854 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))) (_2!25473 (get!15297 lt!1508834))) shorterInput!62))))

(declare-fun b!4251747 () Bool)

(declare-fun res!1747856 () Bool)

(assert (=> b!4251747 (=> (not res!1747856) (not e!2640883))))

(assert (=> b!4251747 (= res!1747856 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))) (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834)))))))

(declare-fun d!1250218 () Bool)

(declare-fun e!2640882 () Bool)

(assert (=> d!1250218 e!2640882))

(declare-fun res!1747852 () Bool)

(assert (=> d!1250218 (=> res!1747852 e!2640882)))

(declare-fun isEmpty!27887 (Option!10112) Bool)

(assert (=> d!1250218 (= res!1747852 (isEmpty!27887 lt!1508834))))

(assert (=> d!1250218 (= lt!1508834 e!2640881)))

(declare-fun c!721956 () Bool)

(assert (=> d!1250218 (= c!721956 (and ((_ is Cons!47124) rules!2971) ((_ is Nil!47124) (t!352437 rules!2971))))))

(declare-datatypes ((Unit!66081 0))(
  ( (Unit!66082) )
))
(declare-fun lt!1508835 () Unit!66081)

(declare-fun lt!1508833 () Unit!66081)

(assert (=> d!1250218 (= lt!1508835 lt!1508833)))

(declare-fun isPrefix!4751 (List!47245 List!47245) Bool)

(assert (=> d!1250218 (isPrefix!4751 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3148 (List!47245 List!47245) Unit!66081)

(assert (=> d!1250218 (= lt!1508833 (lemmaIsPrefixRefl!3148 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3002 (LexerInterface!7573 List!47248) Bool)

(assert (=> d!1250218 (rulesValidInductive!3002 thiss!21641 rules!2971)))

(assert (=> d!1250218 (= (maxPrefix!4529 thiss!21641 rules!2971 shorterInput!62) lt!1508834)))

(declare-fun b!4251748 () Bool)

(declare-fun res!1747853 () Bool)

(assert (=> b!4251748 (=> (not res!1747853) (not e!2640883))))

(assert (=> b!4251748 (= res!1747853 (< (size!34493 (_2!25473 (get!15297 lt!1508834))) (size!34493 shorterInput!62)))))

(declare-fun b!4251749 () Bool)

(declare-fun contains!9763 (List!47248 Rule!15756) Bool)

(assert (=> b!4251749 (= e!2640883 (contains!9763 rules!2971 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))

(declare-fun b!4251750 () Bool)

(declare-fun res!1747857 () Bool)

(assert (=> b!4251750 (=> (not res!1747857) (not e!2640883))))

(declare-fun matchR!6473 (Regex!12883 List!47245) Bool)

(assert (=> b!4251750 (= res!1747857 (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun b!4251751 () Bool)

(assert (=> b!4251751 (= e!2640882 e!2640883)))

(declare-fun res!1747855 () Bool)

(assert (=> b!4251751 (=> (not res!1747855) (not e!2640883))))

(declare-fun isDefined!7466 (Option!10112) Bool)

(assert (=> b!4251751 (= res!1747855 (isDefined!7466 lt!1508834))))

(declare-fun b!4251752 () Bool)

(declare-fun lt!1508837 () Option!10112)

(declare-fun lt!1508836 () Option!10112)

(assert (=> b!4251752 (= e!2640881 (ite (and ((_ is None!10111) lt!1508837) ((_ is None!10111) lt!1508836)) None!10111 (ite ((_ is None!10111) lt!1508836) lt!1508837 (ite ((_ is None!10111) lt!1508837) lt!1508836 (ite (>= (size!34492 (_1!25473 (v!41069 lt!1508837))) (size!34492 (_1!25473 (v!41069 lt!1508836)))) lt!1508837 lt!1508836)))))))

(assert (=> b!4251752 (= lt!1508837 call!293983)))

(assert (=> b!4251752 (= lt!1508836 (maxPrefix!4529 thiss!21641 (t!352437 rules!2971) shorterInput!62))))

(assert (= (and d!1250218 c!721956) b!4251744))

(assert (= (and d!1250218 (not c!721956)) b!4251752))

(assert (= (or b!4251744 b!4251752) bm!293978))

(assert (= (and d!1250218 (not res!1747852)) b!4251751))

(assert (= (and b!4251751 res!1747855) b!4251747))

(assert (= (and b!4251747 res!1747856) b!4251748))

(assert (= (and b!4251748 res!1747853) b!4251746))

(assert (= (and b!4251746 res!1747854) b!4251745))

(assert (= (and b!4251745 res!1747851) b!4251750))

(assert (= (and b!4251750 res!1747857) b!4251749))

(declare-fun m!4836457 () Bool)

(assert (=> b!4251745 m!4836457))

(declare-fun m!4836459 () Bool)

(assert (=> b!4251745 m!4836459))

(assert (=> b!4251745 m!4836459))

(declare-fun m!4836461 () Bool)

(assert (=> b!4251745 m!4836461))

(declare-fun m!4836463 () Bool)

(assert (=> d!1250218 m!4836463))

(declare-fun m!4836465 () Bool)

(assert (=> d!1250218 m!4836465))

(declare-fun m!4836467 () Bool)

(assert (=> d!1250218 m!4836467))

(declare-fun m!4836469 () Bool)

(assert (=> d!1250218 m!4836469))

(assert (=> b!4251746 m!4836457))

(declare-fun m!4836471 () Bool)

(assert (=> b!4251746 m!4836471))

(assert (=> b!4251746 m!4836471))

(declare-fun m!4836473 () Bool)

(assert (=> b!4251746 m!4836473))

(assert (=> b!4251746 m!4836473))

(declare-fun m!4836475 () Bool)

(assert (=> b!4251746 m!4836475))

(declare-fun m!4836477 () Bool)

(assert (=> b!4251751 m!4836477))

(declare-fun m!4836479 () Bool)

(assert (=> bm!293978 m!4836479))

(assert (=> b!4251750 m!4836457))

(assert (=> b!4251750 m!4836471))

(assert (=> b!4251750 m!4836471))

(assert (=> b!4251750 m!4836473))

(assert (=> b!4251750 m!4836473))

(declare-fun m!4836481 () Bool)

(assert (=> b!4251750 m!4836481))

(assert (=> b!4251748 m!4836457))

(declare-fun m!4836483 () Bool)

(assert (=> b!4251748 m!4836483))

(assert (=> b!4251748 m!4836151))

(assert (=> b!4251747 m!4836457))

(assert (=> b!4251747 m!4836471))

(assert (=> b!4251747 m!4836471))

(assert (=> b!4251747 m!4836473))

(declare-fun m!4836485 () Bool)

(assert (=> b!4251752 m!4836485))

(assert (=> b!4251749 m!4836457))

(declare-fun m!4836487 () Bool)

(assert (=> b!4251749 m!4836487))

(assert (=> b!4251464 d!1250218))

(declare-fun bm!293979 () Bool)

(declare-fun call!293984 () Option!10112)

(assert (=> bm!293979 (= call!293984 (maxPrefixOneRule!3476 thiss!21641 (h!52544 rules!2971) longerInput!62))))

(declare-fun b!4251753 () Bool)

(declare-fun e!2640884 () Option!10112)

(assert (=> b!4251753 (= e!2640884 call!293984)))

(declare-fun b!4251754 () Bool)

(declare-fun res!1747858 () Bool)

(declare-fun e!2640886 () Bool)

(assert (=> b!4251754 (=> (not res!1747858) (not e!2640886))))

(declare-fun lt!1508839 () Option!10112)

(assert (=> b!4251754 (= res!1747858 (= (value!247909 (_1!25473 (get!15297 lt!1508839))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839)))))))))

(declare-fun b!4251755 () Bool)

(declare-fun res!1747861 () Bool)

(assert (=> b!4251755 (=> (not res!1747861) (not e!2640886))))

(assert (=> b!4251755 (= res!1747861 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))) (_2!25473 (get!15297 lt!1508839))) longerInput!62))))

(declare-fun b!4251756 () Bool)

(declare-fun res!1747863 () Bool)

(assert (=> b!4251756 (=> (not res!1747863) (not e!2640886))))

(assert (=> b!4251756 (= res!1747863 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))) (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839)))))))

(declare-fun d!1250220 () Bool)

(declare-fun e!2640885 () Bool)

(assert (=> d!1250220 e!2640885))

(declare-fun res!1747859 () Bool)

(assert (=> d!1250220 (=> res!1747859 e!2640885)))

(assert (=> d!1250220 (= res!1747859 (isEmpty!27887 lt!1508839))))

(assert (=> d!1250220 (= lt!1508839 e!2640884)))

(declare-fun c!721957 () Bool)

(assert (=> d!1250220 (= c!721957 (and ((_ is Cons!47124) rules!2971) ((_ is Nil!47124) (t!352437 rules!2971))))))

(declare-fun lt!1508840 () Unit!66081)

(declare-fun lt!1508838 () Unit!66081)

(assert (=> d!1250220 (= lt!1508840 lt!1508838)))

(assert (=> d!1250220 (isPrefix!4751 longerInput!62 longerInput!62)))

(assert (=> d!1250220 (= lt!1508838 (lemmaIsPrefixRefl!3148 longerInput!62 longerInput!62))))

(assert (=> d!1250220 (rulesValidInductive!3002 thiss!21641 rules!2971)))

(assert (=> d!1250220 (= (maxPrefix!4529 thiss!21641 rules!2971 longerInput!62) lt!1508839)))

(declare-fun b!4251757 () Bool)

(declare-fun res!1747860 () Bool)

(assert (=> b!4251757 (=> (not res!1747860) (not e!2640886))))

(assert (=> b!4251757 (= res!1747860 (< (size!34493 (_2!25473 (get!15297 lt!1508839))) (size!34493 longerInput!62)))))

(declare-fun b!4251758 () Bool)

(assert (=> b!4251758 (= e!2640886 (contains!9763 rules!2971 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))

(declare-fun b!4251759 () Bool)

(declare-fun res!1747864 () Bool)

(assert (=> b!4251759 (=> (not res!1747864) (not e!2640886))))

(assert (=> b!4251759 (= res!1747864 (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun b!4251760 () Bool)

(assert (=> b!4251760 (= e!2640885 e!2640886)))

(declare-fun res!1747862 () Bool)

(assert (=> b!4251760 (=> (not res!1747862) (not e!2640886))))

(assert (=> b!4251760 (= res!1747862 (isDefined!7466 lt!1508839))))

(declare-fun b!4251761 () Bool)

(declare-fun lt!1508842 () Option!10112)

(declare-fun lt!1508841 () Option!10112)

(assert (=> b!4251761 (= e!2640884 (ite (and ((_ is None!10111) lt!1508842) ((_ is None!10111) lt!1508841)) None!10111 (ite ((_ is None!10111) lt!1508841) lt!1508842 (ite ((_ is None!10111) lt!1508842) lt!1508841 (ite (>= (size!34492 (_1!25473 (v!41069 lt!1508842))) (size!34492 (_1!25473 (v!41069 lt!1508841)))) lt!1508842 lt!1508841)))))))

(assert (=> b!4251761 (= lt!1508842 call!293984)))

(assert (=> b!4251761 (= lt!1508841 (maxPrefix!4529 thiss!21641 (t!352437 rules!2971) longerInput!62))))

(assert (= (and d!1250220 c!721957) b!4251753))

(assert (= (and d!1250220 (not c!721957)) b!4251761))

(assert (= (or b!4251753 b!4251761) bm!293979))

(assert (= (and d!1250220 (not res!1747859)) b!4251760))

(assert (= (and b!4251760 res!1747862) b!4251756))

(assert (= (and b!4251756 res!1747863) b!4251757))

(assert (= (and b!4251757 res!1747860) b!4251755))

(assert (= (and b!4251755 res!1747861) b!4251754))

(assert (= (and b!4251754 res!1747858) b!4251759))

(assert (= (and b!4251759 res!1747864) b!4251758))

(declare-fun m!4836489 () Bool)

(assert (=> b!4251754 m!4836489))

(declare-fun m!4836491 () Bool)

(assert (=> b!4251754 m!4836491))

(assert (=> b!4251754 m!4836491))

(declare-fun m!4836493 () Bool)

(assert (=> b!4251754 m!4836493))

(declare-fun m!4836495 () Bool)

(assert (=> d!1250220 m!4836495))

(declare-fun m!4836497 () Bool)

(assert (=> d!1250220 m!4836497))

(declare-fun m!4836499 () Bool)

(assert (=> d!1250220 m!4836499))

(assert (=> d!1250220 m!4836469))

(assert (=> b!4251755 m!4836489))

(declare-fun m!4836501 () Bool)

(assert (=> b!4251755 m!4836501))

(assert (=> b!4251755 m!4836501))

(declare-fun m!4836503 () Bool)

(assert (=> b!4251755 m!4836503))

(assert (=> b!4251755 m!4836503))

(declare-fun m!4836505 () Bool)

(assert (=> b!4251755 m!4836505))

(declare-fun m!4836507 () Bool)

(assert (=> b!4251760 m!4836507))

(declare-fun m!4836509 () Bool)

(assert (=> bm!293979 m!4836509))

(assert (=> b!4251759 m!4836489))

(assert (=> b!4251759 m!4836501))

(assert (=> b!4251759 m!4836501))

(assert (=> b!4251759 m!4836503))

(assert (=> b!4251759 m!4836503))

(declare-fun m!4836511 () Bool)

(assert (=> b!4251759 m!4836511))

(assert (=> b!4251757 m!4836489))

(declare-fun m!4836513 () Bool)

(assert (=> b!4251757 m!4836513))

(assert (=> b!4251757 m!4836153))

(assert (=> b!4251756 m!4836489))

(assert (=> b!4251756 m!4836501))

(assert (=> b!4251756 m!4836501))

(assert (=> b!4251756 m!4836503))

(declare-fun m!4836515 () Bool)

(assert (=> b!4251761 m!4836515))

(assert (=> b!4251758 m!4836489))

(declare-fun m!4836517 () Bool)

(assert (=> b!4251758 m!4836517))

(assert (=> b!4251464 d!1250220))

(declare-fun d!1250222 () Bool)

(assert (=> d!1250222 (= (isEmpty!27882 longerInput!62) ((_ is Nil!47121) longerInput!62))))

(assert (=> b!4251453 d!1250222))

(declare-fun b!4251766 () Bool)

(declare-fun e!2640889 () Bool)

(declare-fun tp!1304716 () Bool)

(assert (=> b!4251766 (= e!2640889 (and tp_is_empty!22757 tp!1304716))))

(assert (=> b!4251460 (= tp!1304650 e!2640889)))

(assert (= (and b!4251460 ((_ is Cons!47121) (originalCharacters!8322 (h!52543 tokens!592)))) b!4251766))

(declare-fun b!4251767 () Bool)

(declare-fun e!2640890 () Bool)

(declare-fun tp!1304717 () Bool)

(assert (=> b!4251767 (= e!2640890 (and tp_is_empty!22757 tp!1304717))))

(assert (=> b!4251465 (= tp!1304639 e!2640890)))

(assert (= (and b!4251465 ((_ is Cons!47121) (t!352434 shorterInput!62))) b!4251767))

(declare-fun b!4251768 () Bool)

(declare-fun e!2640891 () Bool)

(declare-fun tp!1304718 () Bool)

(assert (=> b!4251768 (= e!2640891 (and tp_is_empty!22757 tp!1304718))))

(assert (=> b!4251466 (= tp!1304647 e!2640891)))

(assert (= (and b!4251466 ((_ is Cons!47121) (t!352434 suffix!1284))) b!4251768))

(declare-fun b!4251779 () Bool)

(declare-fun b_free!126435 () Bool)

(declare-fun b_next!127139 () Bool)

(assert (=> b!4251779 (= b_free!126435 (not b_next!127139))))

(declare-fun tp!1304728 () Bool)

(declare-fun b_and!337109 () Bool)

(assert (=> b!4251779 (= tp!1304728 b_and!337109)))

(declare-fun b_free!126437 () Bool)

(declare-fun b_next!127141 () Bool)

(assert (=> b!4251779 (= b_free!126437 (not b_next!127141))))

(declare-fun t!352476 () Bool)

(declare-fun tb!256407 () Bool)

(assert (=> (and b!4251779 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746)))))) t!352476) tb!256407))

(declare-fun result!312724 () Bool)

(assert (= result!312724 result!312678))

(assert (=> d!1250142 t!352476))

(declare-fun t!352478 () Bool)

(declare-fun tb!256409 () Bool)

(assert (=> (and b!4251779 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) t!352478) tb!256409))

(declare-fun result!312726 () Bool)

(assert (= result!312726 result!312684))

(assert (=> b!4251554 t!352478))

(declare-fun t!352480 () Bool)

(declare-fun tb!256411 () Bool)

(assert (=> (and b!4251779 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747)))))) t!352480) tb!256411))

(declare-fun result!312728 () Bool)

(assert (= result!312728 result!312716))

(assert (=> d!1250214 t!352480))

(declare-fun b_and!337111 () Bool)

(declare-fun tp!1304730 () Bool)

(assert (=> b!4251779 (= tp!1304730 (and (=> t!352476 result!312724) (=> t!352478 result!312726) (=> t!352480 result!312728) b_and!337111))))

(declare-fun e!2640902 () Bool)

(assert (=> b!4251779 (= e!2640902 (and tp!1304728 tp!1304730))))

(declare-fun tp!1304729 () Bool)

(declare-fun b!4251778 () Bool)

(declare-fun e!2640900 () Bool)

(assert (=> b!4251778 (= e!2640900 (and tp!1304729 (inv!61895 (tag!8842 (h!52544 (t!352437 rules!2971)))) (inv!61898 (transformation!7978 (h!52544 (t!352437 rules!2971)))) e!2640902))))

(declare-fun b!4251777 () Bool)

(declare-fun e!2640903 () Bool)

(declare-fun tp!1304727 () Bool)

(assert (=> b!4251777 (= e!2640903 (and e!2640900 tp!1304727))))

(assert (=> b!4251450 (= tp!1304648 e!2640903)))

(assert (= b!4251778 b!4251779))

(assert (= b!4251777 b!4251778))

(assert (= (and b!4251450 ((_ is Cons!47124) (t!352437 rules!2971))) b!4251777))

(declare-fun m!4836519 () Bool)

(assert (=> b!4251778 m!4836519))

(declare-fun m!4836521 () Bool)

(assert (=> b!4251778 m!4836521))

(declare-fun b!4251793 () Bool)

(declare-fun b_free!126439 () Bool)

(declare-fun b_next!127143 () Bool)

(assert (=> b!4251793 (= b_free!126439 (not b_next!127143))))

(declare-fun tp!1304742 () Bool)

(declare-fun b_and!337113 () Bool)

(assert (=> b!4251793 (= tp!1304742 b_and!337113)))

(declare-fun b_free!126441 () Bool)

(declare-fun b_next!127145 () Bool)

(assert (=> b!4251793 (= b_free!126441 (not b_next!127145))))

(declare-fun tb!256413 () Bool)

(declare-fun t!352482 () Bool)

(assert (=> (and b!4251793 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746)))))) t!352482) tb!256413))

(declare-fun result!312732 () Bool)

(assert (= result!312732 result!312678))

(assert (=> d!1250142 t!352482))

(declare-fun t!352484 () Bool)

(declare-fun tb!256415 () Bool)

(assert (=> (and b!4251793 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) t!352484) tb!256415))

(declare-fun result!312734 () Bool)

(assert (= result!312734 result!312684))

(assert (=> b!4251554 t!352484))

(declare-fun t!352486 () Bool)

(declare-fun tb!256417 () Bool)

(assert (=> (and b!4251793 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747)))))) t!352486) tb!256417))

(declare-fun result!312736 () Bool)

(assert (= result!312736 result!312716))

(assert (=> d!1250214 t!352486))

(declare-fun b_and!337115 () Bool)

(declare-fun tp!1304745 () Bool)

(assert (=> b!4251793 (= tp!1304745 (and (=> t!352482 result!312732) (=> t!352484 result!312734) (=> t!352486 result!312736) b_and!337115))))

(declare-fun e!2640916 () Bool)

(assert (=> b!4251793 (= e!2640916 (and tp!1304742 tp!1304745))))

(declare-fun e!2640921 () Bool)

(declare-fun e!2640918 () Bool)

(declare-fun tp!1304744 () Bool)

(declare-fun b!4251790 () Bool)

(assert (=> b!4251790 (= e!2640918 (and (inv!61899 (h!52543 (t!352436 tokens!592))) e!2640921 tp!1304744))))

(assert (=> b!4251468 (= tp!1304642 e!2640918)))

(declare-fun b!4251791 () Bool)

(declare-fun tp!1304741 () Bool)

(declare-fun e!2640919 () Bool)

(assert (=> b!4251791 (= e!2640921 (and (inv!21 (value!247909 (h!52543 (t!352436 tokens!592)))) e!2640919 tp!1304741))))

(declare-fun tp!1304743 () Bool)

(declare-fun b!4251792 () Bool)

(assert (=> b!4251792 (= e!2640919 (and tp!1304743 (inv!61895 (tag!8842 (rule!11112 (h!52543 (t!352436 tokens!592))))) (inv!61898 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) e!2640916))))

(assert (= b!4251792 b!4251793))

(assert (= b!4251791 b!4251792))

(assert (= b!4251790 b!4251791))

(assert (= (and b!4251468 ((_ is Cons!47123) (t!352436 tokens!592))) b!4251790))

(declare-fun m!4836523 () Bool)

(assert (=> b!4251790 m!4836523))

(declare-fun m!4836525 () Bool)

(assert (=> b!4251791 m!4836525))

(declare-fun m!4836527 () Bool)

(assert (=> b!4251792 m!4836527))

(declare-fun m!4836529 () Bool)

(assert (=> b!4251792 m!4836529))

(declare-fun b!4251794 () Bool)

(declare-fun e!2640922 () Bool)

(declare-fun tp!1304746 () Bool)

(assert (=> b!4251794 (= e!2640922 (and tp_is_empty!22757 tp!1304746))))

(assert (=> b!4251452 (= tp!1304649 e!2640922)))

(assert (= (and b!4251452 ((_ is Cons!47121) (t!352434 longerInput!62))) b!4251794))

(declare-fun b!4251806 () Bool)

(declare-fun e!2640925 () Bool)

(declare-fun tp!1304759 () Bool)

(declare-fun tp!1304760 () Bool)

(assert (=> b!4251806 (= e!2640925 (and tp!1304759 tp!1304760))))

(declare-fun b!4251808 () Bool)

(declare-fun tp!1304758 () Bool)

(declare-fun tp!1304761 () Bool)

(assert (=> b!4251808 (= e!2640925 (and tp!1304758 tp!1304761))))

(assert (=> b!4251459 (= tp!1304646 e!2640925)))

(declare-fun b!4251807 () Bool)

(declare-fun tp!1304757 () Bool)

(assert (=> b!4251807 (= e!2640925 tp!1304757)))

(declare-fun b!4251805 () Bool)

(assert (=> b!4251805 (= e!2640925 tp_is_empty!22757)))

(assert (= (and b!4251459 ((_ is ElementMatch!12883) (regex!7978 (h!52544 rules!2971)))) b!4251805))

(assert (= (and b!4251459 ((_ is Concat!21092) (regex!7978 (h!52544 rules!2971)))) b!4251806))

(assert (= (and b!4251459 ((_ is Star!12883) (regex!7978 (h!52544 rules!2971)))) b!4251807))

(assert (= (and b!4251459 ((_ is Union!12883) (regex!7978 (h!52544 rules!2971)))) b!4251808))

(declare-fun b!4251810 () Bool)

(declare-fun e!2640926 () Bool)

(declare-fun tp!1304764 () Bool)

(declare-fun tp!1304765 () Bool)

(assert (=> b!4251810 (= e!2640926 (and tp!1304764 tp!1304765))))

(declare-fun b!4251812 () Bool)

(declare-fun tp!1304763 () Bool)

(declare-fun tp!1304766 () Bool)

(assert (=> b!4251812 (= e!2640926 (and tp!1304763 tp!1304766))))

(assert (=> b!4251469 (= tp!1304645 e!2640926)))

(declare-fun b!4251811 () Bool)

(declare-fun tp!1304762 () Bool)

(assert (=> b!4251811 (= e!2640926 tp!1304762)))

(declare-fun b!4251809 () Bool)

(assert (=> b!4251809 (= e!2640926 tp_is_empty!22757)))

(assert (= (and b!4251469 ((_ is ElementMatch!12883) (regex!7978 (rule!11112 (h!52543 tokens!592))))) b!4251809))

(assert (= (and b!4251469 ((_ is Concat!21092) (regex!7978 (rule!11112 (h!52543 tokens!592))))) b!4251810))

(assert (= (and b!4251469 ((_ is Star!12883) (regex!7978 (rule!11112 (h!52543 tokens!592))))) b!4251811))

(assert (= (and b!4251469 ((_ is Union!12883) (regex!7978 (rule!11112 (h!52543 tokens!592))))) b!4251812))

(declare-fun b_lambda!125249 () Bool)

(assert (= b_lambda!125239 (or (and b!4251462 b_free!126421) (and b!4251471 b_free!126425 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))))) (and b!4251779 b_free!126437 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))))) (and b!4251793 b_free!126441 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))))) b_lambda!125249)))

(check-sat (not b!4251516) (not b!4251756) (not d!1250210) (not d!1250208) (not b!4251662) (not b_next!127139) (not b!4251759) (not b_next!127129) (not b_next!127145) (not d!1250212) (not b_lambda!125247) (not b!4251768) (not b!4251577) (not b!4251722) (not b!4251790) (not b!4251778) (not b!4251663) (not b!4251748) (not b!4251555) (not b!4251812) (not d!1250158) (not b!4251808) (not d!1250214) (not b!4251529) (not b!4251750) (not b!4251777) (not b!4251704) (not b!4251754) (not b!4251706) (not b!4251757) (not b!4251811) (not b!4251766) (not b!4251664) b_and!337107 (not b!4251806) (not b!4251767) (not b!4251523) b_and!337111 (not d!1250142) (not b!4251554) (not bm!293979) (not b!4251746) tp_is_empty!22757 (not b!4251725) (not b!4251760) (not b_lambda!125237) (not b!4251794) (not b_lambda!125249) (not b!4251751) (not b_next!127127) (not b!4251758) (not b!4251755) (not tb!256379) (not b!4251517) (not b!4251807) b_and!337115 (not b!4251703) (not d!1250202) (not b!4251701) (not d!1250148) (not d!1250220) (not b_next!127143) (not d!1250152) b_and!337109 (not b!4251747) (not b!4251531) (not d!1250140) (not b!4251749) b_and!337069 (not b_next!127141) (not b_next!127123) (not b!4251745) (not b!4251556) (not tb!256375) (not b!4251791) (not d!1250138) (not b!4251810) (not b!4251719) b_and!337073 (not d!1250218) (not b!4251705) (not b!4251503) (not b!4251502) (not b!4251752) (not b!4251792) (not bm!293978) (not b!4251506) (not d!1250216) (not b_next!127125) (not tb!256403) (not b!4251761) b_and!337113 (not b!4251720) (not b!4251695) b_and!337105)
(check-sat b_and!337107 b_and!337111 (not b_next!127127) b_and!337115 (not b_next!127143) b_and!337109 (not b_next!127123) (not b_next!127139) b_and!337073 (not b_next!127129) (not b_next!127145) b_and!337069 (not b_next!127141) (not b_next!127125) b_and!337105 b_and!337113)
(get-model)

(declare-fun d!1250226 () Bool)

(assert (=> d!1250226 true))

(declare-fun lambda!130273 () Int)

(declare-fun order!24759 () Int)

(declare-fun order!24761 () Int)

(declare-fun dynLambda!20185 (Int Int) Int)

(declare-fun dynLambda!20186 (Int Int) Int)

(assert (=> d!1250226 (< (dynLambda!20185 order!24759 (toChars!10609 (transformation!7978 (h!52544 rules!2971)))) (dynLambda!20186 order!24761 lambda!130273))))

(assert (=> d!1250226 true))

(declare-fun order!24763 () Int)

(declare-fun dynLambda!20187 (Int Int) Int)

(assert (=> d!1250226 (< (dynLambda!20187 order!24763 (toValue!10750 (transformation!7978 (h!52544 rules!2971)))) (dynLambda!20186 order!24761 lambda!130273))))

(declare-fun Forall!1605 (Int) Bool)

(assert (=> d!1250226 (= (semiInverseModEq!3481 (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toValue!10750 (transformation!7978 (h!52544 rules!2971)))) (Forall!1605 lambda!130273))))

(declare-fun bs!598671 () Bool)

(assert (= bs!598671 d!1250226))

(declare-fun m!4836807 () Bool)

(assert (=> bs!598671 m!4836807))

(assert (=> d!1250152 d!1250226))

(declare-fun d!1250316 () Bool)

(declare-fun c!721979 () Bool)

(assert (=> d!1250316 (= c!721979 ((_ is IntegerValue!24624) (value!247909 (h!52543 (t!352436 tokens!592)))))))

(declare-fun e!2641000 () Bool)

(assert (=> d!1250316 (= (inv!21 (value!247909 (h!52543 (t!352436 tokens!592)))) e!2641000)))

(declare-fun b!4251951 () Bool)

(declare-fun e!2640998 () Bool)

(assert (=> b!4251951 (= e!2640998 (inv!15 (value!247909 (h!52543 (t!352436 tokens!592)))))))

(declare-fun b!4251952 () Bool)

(declare-fun e!2640999 () Bool)

(assert (=> b!4251952 (= e!2640999 (inv!17 (value!247909 (h!52543 (t!352436 tokens!592)))))))

(declare-fun b!4251953 () Bool)

(assert (=> b!4251953 (= e!2641000 e!2640999)))

(declare-fun c!721980 () Bool)

(assert (=> b!4251953 (= c!721980 ((_ is IntegerValue!24625) (value!247909 (h!52543 (t!352436 tokens!592)))))))

(declare-fun b!4251954 () Bool)

(declare-fun res!1747959 () Bool)

(assert (=> b!4251954 (=> res!1747959 e!2640998)))

(assert (=> b!4251954 (= res!1747959 (not ((_ is IntegerValue!24626) (value!247909 (h!52543 (t!352436 tokens!592))))))))

(assert (=> b!4251954 (= e!2640999 e!2640998)))

(declare-fun b!4251955 () Bool)

(assert (=> b!4251955 (= e!2641000 (inv!16 (value!247909 (h!52543 (t!352436 tokens!592)))))))

(assert (= (and d!1250316 c!721979) b!4251955))

(assert (= (and d!1250316 (not c!721979)) b!4251953))

(assert (= (and b!4251953 c!721980) b!4251952))

(assert (= (and b!4251953 (not c!721980)) b!4251954))

(assert (= (and b!4251954 (not res!1747959)) b!4251951))

(declare-fun m!4836809 () Bool)

(assert (=> b!4251951 m!4836809))

(declare-fun m!4836811 () Bool)

(assert (=> b!4251952 m!4836811))

(declare-fun m!4836813 () Bool)

(assert (=> b!4251955 m!4836813))

(assert (=> b!4251791 d!1250316))

(declare-fun d!1250318 () Bool)

(declare-fun isBalanced!3768 (Conc!14189) Bool)

(assert (=> d!1250318 (= (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))) (isBalanced!3768 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))))))

(declare-fun bs!598672 () Bool)

(assert (= bs!598672 d!1250318))

(declare-fun m!4836821 () Bool)

(assert (=> bs!598672 m!4836821))

(assert (=> tb!256375 d!1250318))

(declare-fun d!1250324 () Bool)

(declare-fun charsToInt!0 (List!47246) (_ BitVec 32))

(assert (=> d!1250324 (= (inv!16 (value!247909 (h!52543 tokens!592))) (= (charsToInt!0 (text!57903 (value!247909 (h!52543 tokens!592)))) (value!247900 (value!247909 (h!52543 tokens!592)))))))

(declare-fun bs!598673 () Bool)

(assert (= bs!598673 d!1250324))

(declare-fun m!4836823 () Bool)

(assert (=> bs!598673 m!4836823))

(assert (=> b!4251506 d!1250324))

(declare-fun d!1250326 () Bool)

(assert (=> d!1250326 (= (isEmpty!27887 lt!1508839) (not ((_ is Some!10111) lt!1508839)))))

(assert (=> d!1250220 d!1250326))

(declare-fun b!4251983 () Bool)

(declare-fun res!1747976 () Bool)

(declare-fun e!2641016 () Bool)

(assert (=> b!4251983 (=> (not res!1747976) (not e!2641016))))

(declare-fun head!8995 (List!47245) C!25964)

(assert (=> b!4251983 (= res!1747976 (= (head!8995 longerInput!62) (head!8995 longerInput!62)))))

(declare-fun b!4251982 () Bool)

(declare-fun e!2641018 () Bool)

(assert (=> b!4251982 (= e!2641018 e!2641016)))

(declare-fun res!1747975 () Bool)

(assert (=> b!4251982 (=> (not res!1747975) (not e!2641016))))

(assert (=> b!4251982 (= res!1747975 (not ((_ is Nil!47121) longerInput!62)))))

(declare-fun b!4251984 () Bool)

(declare-fun tail!6858 (List!47245) List!47245)

(assert (=> b!4251984 (= e!2641016 (isPrefix!4751 (tail!6858 longerInput!62) (tail!6858 longerInput!62)))))

(declare-fun b!4251985 () Bool)

(declare-fun e!2641017 () Bool)

(assert (=> b!4251985 (= e!2641017 (>= (size!34493 longerInput!62) (size!34493 longerInput!62)))))

(declare-fun d!1250328 () Bool)

(assert (=> d!1250328 e!2641017))

(declare-fun res!1747977 () Bool)

(assert (=> d!1250328 (=> res!1747977 e!2641017)))

(declare-fun lt!1508907 () Bool)

(assert (=> d!1250328 (= res!1747977 (not lt!1508907))))

(assert (=> d!1250328 (= lt!1508907 e!2641018)))

(declare-fun res!1747974 () Bool)

(assert (=> d!1250328 (=> res!1747974 e!2641018)))

(assert (=> d!1250328 (= res!1747974 ((_ is Nil!47121) longerInput!62))))

(assert (=> d!1250328 (= (isPrefix!4751 longerInput!62 longerInput!62) lt!1508907)))

(assert (= (and d!1250328 (not res!1747974)) b!4251982))

(assert (= (and b!4251982 res!1747975) b!4251983))

(assert (= (and b!4251983 res!1747976) b!4251984))

(assert (= (and d!1250328 (not res!1747977)) b!4251985))

(declare-fun m!4836839 () Bool)

(assert (=> b!4251983 m!4836839))

(assert (=> b!4251983 m!4836839))

(declare-fun m!4836841 () Bool)

(assert (=> b!4251984 m!4836841))

(assert (=> b!4251984 m!4836841))

(assert (=> b!4251984 m!4836841))

(assert (=> b!4251984 m!4836841))

(declare-fun m!4836843 () Bool)

(assert (=> b!4251984 m!4836843))

(assert (=> b!4251985 m!4836153))

(assert (=> b!4251985 m!4836153))

(assert (=> d!1250220 d!1250328))

(declare-fun d!1250334 () Bool)

(assert (=> d!1250334 (isPrefix!4751 longerInput!62 longerInput!62)))

(declare-fun lt!1508913 () Unit!66081)

(declare-fun choose!25958 (List!47245 List!47245) Unit!66081)

(assert (=> d!1250334 (= lt!1508913 (choose!25958 longerInput!62 longerInput!62))))

(assert (=> d!1250334 (= (lemmaIsPrefixRefl!3148 longerInput!62 longerInput!62) lt!1508913)))

(declare-fun bs!598676 () Bool)

(assert (= bs!598676 d!1250334))

(assert (=> bs!598676 m!4836497))

(declare-fun m!4836857 () Bool)

(assert (=> bs!598676 m!4836857))

(assert (=> d!1250220 d!1250334))

(declare-fun d!1250342 () Bool)

(assert (=> d!1250342 true))

(declare-fun lt!1508917 () Bool)

(declare-fun lambda!130280 () Int)

(declare-fun forall!8546 (List!47248 Int) Bool)

(assert (=> d!1250342 (= lt!1508917 (forall!8546 rules!2971 lambda!130280))))

(declare-fun e!2641034 () Bool)

(assert (=> d!1250342 (= lt!1508917 e!2641034)))

(declare-fun res!1747986 () Bool)

(assert (=> d!1250342 (=> res!1747986 e!2641034)))

(assert (=> d!1250342 (= res!1747986 (not ((_ is Cons!47124) rules!2971)))))

(assert (=> d!1250342 (= (rulesValidInductive!3002 thiss!21641 rules!2971) lt!1508917)))

(declare-fun b!4252008 () Bool)

(declare-fun e!2641035 () Bool)

(assert (=> b!4252008 (= e!2641034 e!2641035)))

(declare-fun res!1747987 () Bool)

(assert (=> b!4252008 (=> (not res!1747987) (not e!2641035))))

(declare-fun ruleValid!3610 (LexerInterface!7573 Rule!15756) Bool)

(assert (=> b!4252008 (= res!1747987 (ruleValid!3610 thiss!21641 (h!52544 rules!2971)))))

(declare-fun b!4252009 () Bool)

(assert (=> b!4252009 (= e!2641035 (rulesValidInductive!3002 thiss!21641 (t!352437 rules!2971)))))

(assert (= (and d!1250342 (not res!1747986)) b!4252008))

(assert (= (and b!4252008 res!1747987) b!4252009))

(declare-fun m!4836883 () Bool)

(assert (=> d!1250342 m!4836883))

(declare-fun m!4836885 () Bool)

(assert (=> b!4252008 m!4836885))

(declare-fun m!4836887 () Bool)

(assert (=> b!4252009 m!4836887))

(assert (=> d!1250220 d!1250342))

(declare-fun d!1250356 () Bool)

(declare-fun e!2641036 () Bool)

(assert (=> d!1250356 e!2641036))

(declare-fun res!1747988 () Bool)

(assert (=> d!1250356 (=> (not res!1747988) (not e!2641036))))

(declare-fun lt!1508918 () List!47245)

(assert (=> d!1250356 (= res!1747988 (= (content!7406 lt!1508918) ((_ map or) (content!7406 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) (content!7406 (_2!25473 (get!15297 lt!1508839))))))))

(declare-fun e!2641037 () List!47245)

(assert (=> d!1250356 (= lt!1508918 e!2641037)))

(declare-fun c!721992 () Bool)

(assert (=> d!1250356 (= c!721992 ((_ is Nil!47121) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))))))

(assert (=> d!1250356 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))) (_2!25473 (get!15297 lt!1508839))) lt!1508918)))

(declare-fun b!4252013 () Bool)

(assert (=> b!4252013 (= e!2641037 (Cons!47121 (h!52541 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) (++!11987 (t!352434 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) (_2!25473 (get!15297 lt!1508839)))))))

(declare-fun b!4252012 () Bool)

(assert (=> b!4252012 (= e!2641037 (_2!25473 (get!15297 lt!1508839)))))

(declare-fun b!4252014 () Bool)

(declare-fun res!1747989 () Bool)

(assert (=> b!4252014 (=> (not res!1747989) (not e!2641036))))

(assert (=> b!4252014 (= res!1747989 (= (size!34493 lt!1508918) (+ (size!34493 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) (size!34493 (_2!25473 (get!15297 lt!1508839))))))))

(declare-fun b!4252015 () Bool)

(assert (=> b!4252015 (= e!2641036 (or (not (= (_2!25473 (get!15297 lt!1508839)) Nil!47121)) (= lt!1508918 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))))))))

(assert (= (and d!1250356 c!721992) b!4252012))

(assert (= (and d!1250356 (not c!721992)) b!4252013))

(assert (= (and d!1250356 res!1747988) b!4252014))

(assert (= (and b!4252014 res!1747989) b!4252015))

(declare-fun m!4836889 () Bool)

(assert (=> d!1250356 m!4836889))

(assert (=> d!1250356 m!4836503))

(declare-fun m!4836891 () Bool)

(assert (=> d!1250356 m!4836891))

(declare-fun m!4836893 () Bool)

(assert (=> d!1250356 m!4836893))

(declare-fun m!4836895 () Bool)

(assert (=> b!4252013 m!4836895))

(declare-fun m!4836897 () Bool)

(assert (=> b!4252014 m!4836897))

(assert (=> b!4252014 m!4836503))

(declare-fun m!4836899 () Bool)

(assert (=> b!4252014 m!4836899))

(assert (=> b!4252014 m!4836513))

(assert (=> b!4251755 d!1250356))

(declare-fun d!1250358 () Bool)

(assert (=> d!1250358 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))) (list!16978 (c!721900 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun bs!598681 () Bool)

(assert (= bs!598681 d!1250358))

(declare-fun m!4836901 () Bool)

(assert (=> bs!598681 m!4836901))

(assert (=> b!4251755 d!1250358))

(declare-fun d!1250360 () Bool)

(declare-fun lt!1508919 () BalanceConc!27972)

(assert (=> d!1250360 (= (list!16976 lt!1508919) (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839))))))

(assert (=> d!1250360 (= lt!1508919 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))) (value!247909 (_1!25473 (get!15297 lt!1508839)))))))

(assert (=> d!1250360 (= (charsOf!5318 (_1!25473 (get!15297 lt!1508839))) lt!1508919)))

(declare-fun b_lambda!125257 () Bool)

(assert (=> (not b_lambda!125257) (not d!1250360)))

(declare-fun tb!256443 () Bool)

(declare-fun t!352513 () Bool)

(assert (=> (and b!4251462 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352513) tb!256443))

(declare-fun b!4252016 () Bool)

(declare-fun e!2641038 () Bool)

(declare-fun tp!1304770 () Bool)

(assert (=> b!4252016 (= e!2641038 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))) (value!247909 (_1!25473 (get!15297 lt!1508839)))))) tp!1304770))))

(declare-fun result!312764 () Bool)

(assert (=> tb!256443 (= result!312764 (and (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))) (value!247909 (_1!25473 (get!15297 lt!1508839))))) e!2641038))))

(assert (= tb!256443 b!4252016))

(declare-fun m!4836903 () Bool)

(assert (=> b!4252016 m!4836903))

(declare-fun m!4836905 () Bool)

(assert (=> tb!256443 m!4836905))

(assert (=> d!1250360 t!352513))

(declare-fun b_and!337141 () Bool)

(assert (= b_and!337105 (and (=> t!352513 result!312764) b_and!337141)))

(declare-fun tb!256445 () Bool)

(declare-fun t!352515 () Bool)

(assert (=> (and b!4251471 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352515) tb!256445))

(declare-fun result!312766 () Bool)

(assert (= result!312766 result!312764))

(assert (=> d!1250360 t!352515))

(declare-fun b_and!337143 () Bool)

(assert (= b_and!337107 (and (=> t!352515 result!312766) b_and!337143)))

(declare-fun t!352517 () Bool)

(declare-fun tb!256447 () Bool)

(assert (=> (and b!4251779 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352517) tb!256447))

(declare-fun result!312768 () Bool)

(assert (= result!312768 result!312764))

(assert (=> d!1250360 t!352517))

(declare-fun b_and!337145 () Bool)

(assert (= b_and!337111 (and (=> t!352517 result!312768) b_and!337145)))

(declare-fun t!352519 () Bool)

(declare-fun tb!256449 () Bool)

(assert (=> (and b!4251793 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352519) tb!256449))

(declare-fun result!312770 () Bool)

(assert (= result!312770 result!312764))

(assert (=> d!1250360 t!352519))

(declare-fun b_and!337147 () Bool)

(assert (= b_and!337115 (and (=> t!352519 result!312770) b_and!337147)))

(declare-fun m!4836907 () Bool)

(assert (=> d!1250360 m!4836907))

(declare-fun m!4836909 () Bool)

(assert (=> d!1250360 m!4836909))

(assert (=> b!4251755 d!1250360))

(declare-fun d!1250362 () Bool)

(assert (=> d!1250362 (= (get!15297 lt!1508839) (v!41069 lt!1508839))))

(assert (=> b!4251755 d!1250362))

(declare-fun d!1250364 () Bool)

(declare-fun c!722001 () Bool)

(assert (=> d!1250364 (= c!722001 ((_ is Nil!47121) lt!1508821))))

(declare-fun e!2641053 () (InoxSet C!25964))

(assert (=> d!1250364 (= (content!7406 lt!1508821) e!2641053)))

(declare-fun b!4252045 () Bool)

(assert (=> b!4252045 (= e!2641053 ((as const (Array C!25964 Bool)) false))))

(declare-fun b!4252046 () Bool)

(assert (=> b!4252046 (= e!2641053 ((_ map or) (store ((as const (Array C!25964 Bool)) false) (h!52541 lt!1508821) true) (content!7406 (t!352434 lt!1508821))))))

(assert (= (and d!1250364 c!722001) b!4252045))

(assert (= (and d!1250364 (not c!722001)) b!4252046))

(declare-fun m!4836911 () Bool)

(assert (=> b!4252046 m!4836911))

(declare-fun m!4836913 () Bool)

(assert (=> b!4252046 m!4836913))

(assert (=> d!1250210 d!1250364))

(declare-fun d!1250366 () Bool)

(declare-fun c!722002 () Bool)

(assert (=> d!1250366 (= c!722002 ((_ is Nil!47121) lt!1508748))))

(declare-fun e!2641056 () (InoxSet C!25964))

(assert (=> d!1250366 (= (content!7406 lt!1508748) e!2641056)))

(declare-fun b!4252051 () Bool)

(assert (=> b!4252051 (= e!2641056 ((as const (Array C!25964 Bool)) false))))

(declare-fun b!4252052 () Bool)

(assert (=> b!4252052 (= e!2641056 ((_ map or) (store ((as const (Array C!25964 Bool)) false) (h!52541 lt!1508748) true) (content!7406 (t!352434 lt!1508748))))))

(assert (= (and d!1250366 c!722002) b!4252051))

(assert (= (and d!1250366 (not c!722002)) b!4252052))

(declare-fun m!4836915 () Bool)

(assert (=> b!4252052 m!4836915))

(declare-fun m!4836917 () Bool)

(assert (=> b!4252052 m!4836917))

(assert (=> d!1250210 d!1250366))

(declare-fun d!1250368 () Bool)

(declare-fun c!722003 () Bool)

(assert (=> d!1250368 (= c!722003 ((_ is Nil!47121) (_2!25473 (v!41069 lt!1508747))))))

(declare-fun e!2641057 () (InoxSet C!25964))

(assert (=> d!1250368 (= (content!7406 (_2!25473 (v!41069 lt!1508747))) e!2641057)))

(declare-fun b!4252053 () Bool)

(assert (=> b!4252053 (= e!2641057 ((as const (Array C!25964 Bool)) false))))

(declare-fun b!4252054 () Bool)

(assert (=> b!4252054 (= e!2641057 ((_ map or) (store ((as const (Array C!25964 Bool)) false) (h!52541 (_2!25473 (v!41069 lt!1508747))) true) (content!7406 (t!352434 (_2!25473 (v!41069 lt!1508747))))))))

(assert (= (and d!1250368 c!722003) b!4252053))

(assert (= (and d!1250368 (not c!722003)) b!4252054))

(declare-fun m!4836919 () Bool)

(assert (=> b!4252054 m!4836919))

(declare-fun m!4836921 () Bool)

(assert (=> b!4252054 m!4836921))

(assert (=> d!1250210 d!1250368))

(declare-fun d!1250370 () Bool)

(declare-fun charsToBigInt!0 (List!47246 Int) Int)

(assert (=> d!1250370 (= (inv!15 (value!247909 (h!52543 tokens!592))) (= (charsToBigInt!0 (text!57905 (value!247909 (h!52543 tokens!592))) 0) (value!247904 (value!247909 (h!52543 tokens!592)))))))

(declare-fun bs!598682 () Bool)

(assert (= bs!598682 d!1250370))

(declare-fun m!4836923 () Bool)

(assert (=> bs!598682 m!4836923))

(assert (=> b!4251502 d!1250370))

(declare-fun d!1250372 () Bool)

(declare-fun c!722009 () Bool)

(assert (=> d!1250372 (= c!722009 ((_ is Node!14189) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))))))

(declare-fun e!2641069 () Bool)

(assert (=> d!1250372 (= (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))) e!2641069)))

(declare-fun b!4252075 () Bool)

(declare-fun inv!61904 (Conc!14189) Bool)

(assert (=> b!4252075 (= e!2641069 (inv!61904 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))))))

(declare-fun b!4252076 () Bool)

(declare-fun e!2641070 () Bool)

(assert (=> b!4252076 (= e!2641069 e!2641070)))

(declare-fun res!1748016 () Bool)

(assert (=> b!4252076 (= res!1748016 (not ((_ is Leaf!21937) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))))))))

(assert (=> b!4252076 (=> res!1748016 e!2641070)))

(declare-fun b!4252077 () Bool)

(declare-fun inv!61905 (Conc!14189) Bool)

(assert (=> b!4252077 (= e!2641070 (inv!61905 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))))))

(assert (= (and d!1250372 c!722009) b!4252075))

(assert (= (and d!1250372 (not c!722009)) b!4252076))

(assert (= (and b!4252076 (not res!1748016)) b!4252077))

(declare-fun m!4836935 () Bool)

(assert (=> b!4252075 m!4836935))

(declare-fun m!4836939 () Bool)

(assert (=> b!4252077 m!4836939))

(assert (=> b!4251523 d!1250372))

(declare-fun d!1250374 () Bool)

(declare-fun lt!1508923 () Int)

(assert (=> d!1250374 (>= lt!1508923 0)))

(declare-fun e!2641071 () Int)

(assert (=> d!1250374 (= lt!1508923 e!2641071)))

(declare-fun c!722010 () Bool)

(assert (=> d!1250374 (= c!722010 ((_ is Nil!47121) (originalCharacters!8322 (h!52543 tokens!592))))))

(assert (=> d!1250374 (= (size!34493 (originalCharacters!8322 (h!52543 tokens!592))) lt!1508923)))

(declare-fun b!4252078 () Bool)

(assert (=> b!4252078 (= e!2641071 0)))

(declare-fun b!4252079 () Bool)

(assert (=> b!4252079 (= e!2641071 (+ 1 (size!34493 (t!352434 (originalCharacters!8322 (h!52543 tokens!592))))))))

(assert (= (and d!1250374 c!722010) b!4252078))

(assert (= (and d!1250374 (not c!722010)) b!4252079))

(declare-fun m!4836945 () Bool)

(assert (=> b!4252079 m!4836945))

(assert (=> b!4251555 d!1250374))

(declare-fun d!1250378 () Bool)

(assert (=> d!1250378 true))

(declare-fun order!24769 () Int)

(declare-fun lambda!130284 () Int)

(declare-fun dynLambda!20188 (Int Int) Int)

(assert (=> d!1250378 (< (dynLambda!20187 order!24763 (toValue!10750 (transformation!7978 (h!52544 rules!2971)))) (dynLambda!20188 order!24769 lambda!130284))))

(declare-fun Forall2!1205 (Int) Bool)

(assert (=> d!1250378 (= (equivClasses!3380 (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toValue!10750 (transformation!7978 (h!52544 rules!2971)))) (Forall2!1205 lambda!130284))))

(declare-fun bs!598685 () Bool)

(assert (= bs!598685 d!1250378))

(declare-fun m!4836959 () Bool)

(assert (=> bs!598685 m!4836959))

(assert (=> b!4251577 d!1250378))

(declare-fun d!1250388 () Bool)

(declare-fun e!2641084 () Bool)

(assert (=> d!1250388 e!2641084))

(declare-fun res!1748027 () Bool)

(assert (=> d!1250388 (=> (not res!1748027) (not e!2641084))))

(declare-fun lt!1508930 () List!47245)

(assert (=> d!1250388 (= res!1748027 (= (content!7406 lt!1508930) ((_ map or) (content!7406 (t!352434 lt!1508748)) (content!7406 (_2!25473 (v!41069 lt!1508747))))))))

(declare-fun e!2641085 () List!47245)

(assert (=> d!1250388 (= lt!1508930 e!2641085)))

(declare-fun c!722013 () Bool)

(assert (=> d!1250388 (= c!722013 ((_ is Nil!47121) (t!352434 lt!1508748)))))

(assert (=> d!1250388 (= (++!11987 (t!352434 lt!1508748) (_2!25473 (v!41069 lt!1508747))) lt!1508930)))

(declare-fun b!4252097 () Bool)

(assert (=> b!4252097 (= e!2641085 (Cons!47121 (h!52541 (t!352434 lt!1508748)) (++!11987 (t!352434 (t!352434 lt!1508748)) (_2!25473 (v!41069 lt!1508747)))))))

(declare-fun b!4252096 () Bool)

(assert (=> b!4252096 (= e!2641085 (_2!25473 (v!41069 lt!1508747)))))

(declare-fun b!4252098 () Bool)

(declare-fun res!1748028 () Bool)

(assert (=> b!4252098 (=> (not res!1748028) (not e!2641084))))

(assert (=> b!4252098 (= res!1748028 (= (size!34493 lt!1508930) (+ (size!34493 (t!352434 lt!1508748)) (size!34493 (_2!25473 (v!41069 lt!1508747))))))))

(declare-fun b!4252099 () Bool)

(assert (=> b!4252099 (= e!2641084 (or (not (= (_2!25473 (v!41069 lt!1508747)) Nil!47121)) (= lt!1508930 (t!352434 lt!1508748))))))

(assert (= (and d!1250388 c!722013) b!4252096))

(assert (= (and d!1250388 (not c!722013)) b!4252097))

(assert (= (and d!1250388 res!1748027) b!4252098))

(assert (= (and b!4252098 res!1748028) b!4252099))

(declare-fun m!4836965 () Bool)

(assert (=> d!1250388 m!4836965))

(assert (=> d!1250388 m!4836917))

(assert (=> d!1250388 m!4836435))

(declare-fun m!4836967 () Bool)

(assert (=> b!4252097 m!4836967))

(declare-fun m!4836969 () Bool)

(assert (=> b!4252098 m!4836969))

(declare-fun m!4836971 () Bool)

(assert (=> b!4252098 m!4836971))

(assert (=> b!4252098 m!4836177))

(assert (=> b!4251719 d!1250388))

(declare-fun d!1250392 () Bool)

(assert (=> d!1250392 (= (list!16976 lt!1508822) (list!16978 (c!721900 lt!1508822)))))

(declare-fun bs!598686 () Bool)

(assert (= bs!598686 d!1250392))

(declare-fun m!4836973 () Bool)

(assert (=> bs!598686 m!4836973))

(assert (=> d!1250214 d!1250392))

(declare-fun b!4252178 () Bool)

(declare-fun e!2641124 () Bool)

(declare-fun derivativeStep!3856 (Regex!12883 C!25964) Regex!12883)

(assert (=> b!4252178 (= e!2641124 (matchR!6473 (derivativeStep!3856 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))) (head!8995 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))))) (tail!6858 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))))))))

(declare-fun b!4252179 () Bool)

(declare-fun res!1748060 () Bool)

(declare-fun e!2641129 () Bool)

(assert (=> b!4252179 (=> res!1748060 e!2641129)))

(assert (=> b!4252179 (= res!1748060 (not (isEmpty!27882 (tail!6858 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))))))))

(declare-fun b!4252180 () Bool)

(declare-fun nullable!4526 (Regex!12883) Bool)

(assert (=> b!4252180 (= e!2641124 (nullable!4526 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun b!4252181 () Bool)

(declare-fun res!1748062 () Bool)

(declare-fun e!2641128 () Bool)

(assert (=> b!4252181 (=> res!1748062 e!2641128)))

(assert (=> b!4252181 (= res!1748062 (not ((_ is ElementMatch!12883) (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))))

(declare-fun e!2641126 () Bool)

(assert (=> b!4252181 (= e!2641126 e!2641128)))

(declare-fun b!4252182 () Bool)

(declare-fun res!1748061 () Bool)

(declare-fun e!2641130 () Bool)

(assert (=> b!4252182 (=> (not res!1748061) (not e!2641130))))

(assert (=> b!4252182 (= res!1748061 (isEmpty!27882 (tail!6858 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839)))))))))

(declare-fun d!1250394 () Bool)

(declare-fun e!2641125 () Bool)

(assert (=> d!1250394 e!2641125))

(declare-fun c!722040 () Bool)

(assert (=> d!1250394 (= c!722040 ((_ is EmptyExpr!12883) (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun lt!1508941 () Bool)

(assert (=> d!1250394 (= lt!1508941 e!2641124)))

(declare-fun c!722039 () Bool)

(assert (=> d!1250394 (= c!722039 (isEmpty!27882 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun validRegex!5833 (Regex!12883) Bool)

(assert (=> d!1250394 (validRegex!5833 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))

(assert (=> d!1250394 (= (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) lt!1508941)))

(declare-fun b!4252183 () Bool)

(assert (=> b!4252183 (= e!2641130 (= (head!8995 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) (c!721901 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))))

(declare-fun b!4252184 () Bool)

(declare-fun res!1748056 () Bool)

(assert (=> b!4252184 (=> res!1748056 e!2641128)))

(assert (=> b!4252184 (= res!1748056 e!2641130)))

(declare-fun res!1748055 () Bool)

(assert (=> b!4252184 (=> (not res!1748055) (not e!2641130))))

(assert (=> b!4252184 (= res!1748055 lt!1508941)))

(declare-fun b!4252185 () Bool)

(declare-fun call!293994 () Bool)

(assert (=> b!4252185 (= e!2641125 (= lt!1508941 call!293994))))

(declare-fun b!4252186 () Bool)

(assert (=> b!4252186 (= e!2641129 (not (= (head!8995 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))) (c!721901 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))))))))

(declare-fun bm!293989 () Bool)

(assert (=> bm!293989 (= call!293994 (isEmpty!27882 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun b!4252187 () Bool)

(assert (=> b!4252187 (= e!2641125 e!2641126)))

(declare-fun c!722041 () Bool)

(assert (=> b!4252187 (= c!722041 ((_ is EmptyLang!12883) (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun b!4252188 () Bool)

(declare-fun res!1748059 () Bool)

(assert (=> b!4252188 (=> (not res!1748059) (not e!2641130))))

(assert (=> b!4252188 (= res!1748059 (not call!293994))))

(declare-fun b!4252189 () Bool)

(assert (=> b!4252189 (= e!2641126 (not lt!1508941))))

(declare-fun b!4252190 () Bool)

(declare-fun e!2641127 () Bool)

(assert (=> b!4252190 (= e!2641128 e!2641127)))

(declare-fun res!1748057 () Bool)

(assert (=> b!4252190 (=> (not res!1748057) (not e!2641127))))

(assert (=> b!4252190 (= res!1748057 (not lt!1508941))))

(declare-fun b!4252191 () Bool)

(assert (=> b!4252191 (= e!2641127 e!2641129)))

(declare-fun res!1748058 () Bool)

(assert (=> b!4252191 (=> res!1748058 e!2641129)))

(assert (=> b!4252191 (= res!1748058 call!293994)))

(assert (= (and d!1250394 c!722039) b!4252180))

(assert (= (and d!1250394 (not c!722039)) b!4252178))

(assert (= (and d!1250394 c!722040) b!4252185))

(assert (= (and d!1250394 (not c!722040)) b!4252187))

(assert (= (and b!4252187 c!722041) b!4252189))

(assert (= (and b!4252187 (not c!722041)) b!4252181))

(assert (= (and b!4252181 (not res!1748062)) b!4252184))

(assert (= (and b!4252184 res!1748055) b!4252188))

(assert (= (and b!4252188 res!1748059) b!4252182))

(assert (= (and b!4252182 res!1748061) b!4252183))

(assert (= (and b!4252184 (not res!1748056)) b!4252190))

(assert (= (and b!4252190 res!1748057) b!4252191))

(assert (= (and b!4252191 (not res!1748058)) b!4252179))

(assert (= (and b!4252179 (not res!1748060)) b!4252186))

(assert (= (or b!4252185 b!4252188 b!4252191) bm!293989))

(assert (=> b!4252182 m!4836503))

(declare-fun m!4837039 () Bool)

(assert (=> b!4252182 m!4837039))

(assert (=> b!4252182 m!4837039))

(declare-fun m!4837041 () Bool)

(assert (=> b!4252182 m!4837041))

(assert (=> b!4252179 m!4836503))

(assert (=> b!4252179 m!4837039))

(assert (=> b!4252179 m!4837039))

(assert (=> b!4252179 m!4837041))

(assert (=> bm!293989 m!4836503))

(declare-fun m!4837043 () Bool)

(assert (=> bm!293989 m!4837043))

(assert (=> b!4252183 m!4836503))

(declare-fun m!4837045 () Bool)

(assert (=> b!4252183 m!4837045))

(assert (=> b!4252186 m!4836503))

(assert (=> b!4252186 m!4837045))

(assert (=> d!1250394 m!4836503))

(assert (=> d!1250394 m!4837043))

(declare-fun m!4837047 () Bool)

(assert (=> d!1250394 m!4837047))

(declare-fun m!4837049 () Bool)

(assert (=> b!4252180 m!4837049))

(assert (=> b!4252178 m!4836503))

(assert (=> b!4252178 m!4837045))

(assert (=> b!4252178 m!4837045))

(declare-fun m!4837051 () Bool)

(assert (=> b!4252178 m!4837051))

(assert (=> b!4252178 m!4836503))

(assert (=> b!4252178 m!4837039))

(assert (=> b!4252178 m!4837051))

(assert (=> b!4252178 m!4837039))

(declare-fun m!4837053 () Bool)

(assert (=> b!4252178 m!4837053))

(assert (=> b!4251759 d!1250394))

(assert (=> b!4251759 d!1250362))

(assert (=> b!4251759 d!1250358))

(assert (=> b!4251759 d!1250360))

(declare-fun b!4252192 () Bool)

(declare-fun e!2641136 () tuple2!44680)

(declare-fun lt!1508942 () Option!10112)

(declare-fun lt!1508944 () tuple2!44680)

(assert (=> b!4252192 (= e!2641136 (tuple2!44681 (Cons!47123 (_1!25473 (v!41069 lt!1508942)) (_1!25474 lt!1508944)) (_2!25474 lt!1508944)))))

(assert (=> b!4252192 (= lt!1508944 (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508942))))))

(declare-fun b!4252193 () Bool)

(declare-fun e!2641134 () Bool)

(declare-fun e!2641135 () Bool)

(assert (=> b!4252193 (= e!2641134 e!2641135)))

(declare-fun res!1748063 () Bool)

(declare-fun lt!1508943 () tuple2!44680)

(assert (=> b!4252193 (= res!1748063 (< (size!34493 (_2!25474 lt!1508943)) (size!34493 (_2!25473 (v!41069 lt!1508818)))))))

(assert (=> b!4252193 (=> (not res!1748063) (not e!2641135))))

(declare-fun b!4252194 () Bool)

(assert (=> b!4252194 (= e!2641135 (not (isEmpty!27886 (_1!25474 lt!1508943))))))

(declare-fun b!4252195 () Bool)

(assert (=> b!4252195 (= e!2641136 (tuple2!44681 Nil!47123 (_2!25473 (v!41069 lt!1508818))))))

(declare-fun d!1250426 () Bool)

(assert (=> d!1250426 e!2641134))

(declare-fun c!722042 () Bool)

(assert (=> d!1250426 (= c!722042 (> (size!34495 (_1!25474 lt!1508943)) 0))))

(assert (=> d!1250426 (= lt!1508943 e!2641136)))

(declare-fun c!722043 () Bool)

(assert (=> d!1250426 (= c!722043 ((_ is Some!10111) lt!1508942))))

(assert (=> d!1250426 (= lt!1508942 (maxPrefix!4529 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508818))))))

(assert (=> d!1250426 (= (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508818))) lt!1508943)))

(declare-fun b!4252196 () Bool)

(assert (=> b!4252196 (= e!2641134 (= (_2!25474 lt!1508943) (_2!25473 (v!41069 lt!1508818))))))

(assert (= (and d!1250426 c!722043) b!4252192))

(assert (= (and d!1250426 (not c!722043)) b!4252195))

(assert (= (and d!1250426 c!722042) b!4252193))

(assert (= (and d!1250426 (not c!722042)) b!4252196))

(assert (= (and b!4252193 res!1748063) b!4252194))

(declare-fun m!4837055 () Bool)

(assert (=> b!4252192 m!4837055))

(declare-fun m!4837057 () Bool)

(assert (=> b!4252193 m!4837057))

(declare-fun m!4837061 () Bool)

(assert (=> b!4252193 m!4837061))

(declare-fun m!4837063 () Bool)

(assert (=> b!4252194 m!4837063))

(declare-fun m!4837065 () Bool)

(assert (=> d!1250426 m!4837065))

(declare-fun m!4837067 () Bool)

(assert (=> d!1250426 m!4837067))

(assert (=> b!4251704 d!1250426))

(declare-fun d!1250430 () Bool)

(declare-fun lt!1508945 () Int)

(assert (=> d!1250430 (>= lt!1508945 0)))

(declare-fun e!2641139 () Int)

(assert (=> d!1250430 (= lt!1508945 e!2641139)))

(declare-fun c!722045 () Bool)

(assert (=> d!1250430 (= c!722045 ((_ is Nil!47121) (_2!25473 (get!15297 lt!1508834))))))

(assert (=> d!1250430 (= (size!34493 (_2!25473 (get!15297 lt!1508834))) lt!1508945)))

(declare-fun b!4252200 () Bool)

(assert (=> b!4252200 (= e!2641139 0)))

(declare-fun b!4252201 () Bool)

(assert (=> b!4252201 (= e!2641139 (+ 1 (size!34493 (t!352434 (_2!25473 (get!15297 lt!1508834))))))))

(assert (= (and d!1250430 c!722045) b!4252200))

(assert (= (and d!1250430 (not c!722045)) b!4252201))

(declare-fun m!4837071 () Bool)

(assert (=> b!4252201 m!4837071))

(assert (=> b!4251748 d!1250430))

(declare-fun d!1250432 () Bool)

(assert (=> d!1250432 (= (get!15297 lt!1508834) (v!41069 lt!1508834))))

(assert (=> b!4251748 d!1250432))

(assert (=> b!4251748 d!1250204))

(declare-fun d!1250436 () Bool)

(assert (=> d!1250436 (= (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))) (isBalanced!3768 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))))))

(declare-fun bs!598690 () Bool)

(assert (= bs!598690 d!1250436))

(declare-fun m!4837075 () Bool)

(assert (=> bs!598690 m!4837075))

(assert (=> tb!256379 d!1250436))

(declare-fun d!1250438 () Bool)

(declare-fun lt!1508951 () Int)

(assert (=> d!1250438 (>= lt!1508951 0)))

(declare-fun e!2641148 () Int)

(assert (=> d!1250438 (= lt!1508951 e!2641148)))

(declare-fun c!722052 () Bool)

(assert (=> d!1250438 (= c!722052 ((_ is Nil!47123) (_1!25474 lt!1508814)))))

(assert (=> d!1250438 (= (size!34495 (_1!25474 lt!1508814)) lt!1508951)))

(declare-fun b!4252215 () Bool)

(assert (=> b!4252215 (= e!2641148 0)))

(declare-fun b!4252216 () Bool)

(assert (=> b!4252216 (= e!2641148 (+ 1 (size!34495 (t!352436 (_1!25474 lt!1508814)))))))

(assert (= (and d!1250438 c!722052) b!4252215))

(assert (= (and d!1250438 (not c!722052)) b!4252216))

(declare-fun m!4837099 () Bool)

(assert (=> b!4252216 m!4837099))

(assert (=> d!1250158 d!1250438))

(declare-fun bm!293990 () Bool)

(declare-fun call!293995 () Option!10112)

(assert (=> bm!293990 (= call!293995 (maxPrefixOneRule!3476 thiss!21641 (h!52544 rules!2971) (_2!25473 (v!41069 lt!1508747))))))

(declare-fun b!4252217 () Bool)

(declare-fun e!2641149 () Option!10112)

(assert (=> b!4252217 (= e!2641149 call!293995)))

(declare-fun b!4252218 () Bool)

(declare-fun res!1748066 () Bool)

(declare-fun e!2641151 () Bool)

(assert (=> b!4252218 (=> (not res!1748066) (not e!2641151))))

(declare-fun lt!1508953 () Option!10112)

(assert (=> b!4252218 (= res!1748066 (= (value!247909 (_1!25473 (get!15297 lt!1508953))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508953)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508953)))))))))

(declare-fun b!4252219 () Bool)

(declare-fun res!1748069 () Bool)

(assert (=> b!4252219 (=> (not res!1748069) (not e!2641151))))

(assert (=> b!4252219 (= res!1748069 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508953)))) (_2!25473 (get!15297 lt!1508953))) (_2!25473 (v!41069 lt!1508747))))))

(declare-fun b!4252220 () Bool)

(declare-fun res!1748071 () Bool)

(assert (=> b!4252220 (=> (not res!1748071) (not e!2641151))))

(assert (=> b!4252220 (= res!1748071 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508953)))) (originalCharacters!8322 (_1!25473 (get!15297 lt!1508953)))))))

(declare-fun d!1250444 () Bool)

(declare-fun e!2641150 () Bool)

(assert (=> d!1250444 e!2641150))

(declare-fun res!1748067 () Bool)

(assert (=> d!1250444 (=> res!1748067 e!2641150)))

(assert (=> d!1250444 (= res!1748067 (isEmpty!27887 lt!1508953))))

(assert (=> d!1250444 (= lt!1508953 e!2641149)))

(declare-fun c!722053 () Bool)

(assert (=> d!1250444 (= c!722053 (and ((_ is Cons!47124) rules!2971) ((_ is Nil!47124) (t!352437 rules!2971))))))

(declare-fun lt!1508954 () Unit!66081)

(declare-fun lt!1508952 () Unit!66081)

(assert (=> d!1250444 (= lt!1508954 lt!1508952)))

(assert (=> d!1250444 (isPrefix!4751 (_2!25473 (v!41069 lt!1508747)) (_2!25473 (v!41069 lt!1508747)))))

(assert (=> d!1250444 (= lt!1508952 (lemmaIsPrefixRefl!3148 (_2!25473 (v!41069 lt!1508747)) (_2!25473 (v!41069 lt!1508747))))))

(assert (=> d!1250444 (rulesValidInductive!3002 thiss!21641 rules!2971)))

(assert (=> d!1250444 (= (maxPrefix!4529 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508747))) lt!1508953)))

(declare-fun b!4252221 () Bool)

(declare-fun res!1748068 () Bool)

(assert (=> b!4252221 (=> (not res!1748068) (not e!2641151))))

(assert (=> b!4252221 (= res!1748068 (< (size!34493 (_2!25473 (get!15297 lt!1508953))) (size!34493 (_2!25473 (v!41069 lt!1508747)))))))

(declare-fun b!4252222 () Bool)

(assert (=> b!4252222 (= e!2641151 (contains!9763 rules!2971 (rule!11112 (_1!25473 (get!15297 lt!1508953)))))))

(declare-fun b!4252223 () Bool)

(declare-fun res!1748072 () Bool)

(assert (=> b!4252223 (=> (not res!1748072) (not e!2641151))))

(assert (=> b!4252223 (= res!1748072 (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508953)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508953))))))))

(declare-fun b!4252224 () Bool)

(assert (=> b!4252224 (= e!2641150 e!2641151)))

(declare-fun res!1748070 () Bool)

(assert (=> b!4252224 (=> (not res!1748070) (not e!2641151))))

(assert (=> b!4252224 (= res!1748070 (isDefined!7466 lt!1508953))))

(declare-fun b!4252225 () Bool)

(declare-fun lt!1508956 () Option!10112)

(declare-fun lt!1508955 () Option!10112)

(assert (=> b!4252225 (= e!2641149 (ite (and ((_ is None!10111) lt!1508956) ((_ is None!10111) lt!1508955)) None!10111 (ite ((_ is None!10111) lt!1508955) lt!1508956 (ite ((_ is None!10111) lt!1508956) lt!1508955 (ite (>= (size!34492 (_1!25473 (v!41069 lt!1508956))) (size!34492 (_1!25473 (v!41069 lt!1508955)))) lt!1508956 lt!1508955)))))))

(assert (=> b!4252225 (= lt!1508956 call!293995)))

(assert (=> b!4252225 (= lt!1508955 (maxPrefix!4529 thiss!21641 (t!352437 rules!2971) (_2!25473 (v!41069 lt!1508747))))))

(assert (= (and d!1250444 c!722053) b!4252217))

(assert (= (and d!1250444 (not c!722053)) b!4252225))

(assert (= (or b!4252217 b!4252225) bm!293990))

(assert (= (and d!1250444 (not res!1748067)) b!4252224))

(assert (= (and b!4252224 res!1748070) b!4252220))

(assert (= (and b!4252220 res!1748071) b!4252221))

(assert (= (and b!4252221 res!1748068) b!4252219))

(assert (= (and b!4252219 res!1748069) b!4252218))

(assert (= (and b!4252218 res!1748066) b!4252223))

(assert (= (and b!4252223 res!1748072) b!4252222))

(declare-fun m!4837105 () Bool)

(assert (=> b!4252218 m!4837105))

(declare-fun m!4837107 () Bool)

(assert (=> b!4252218 m!4837107))

(assert (=> b!4252218 m!4837107))

(declare-fun m!4837109 () Bool)

(assert (=> b!4252218 m!4837109))

(declare-fun m!4837111 () Bool)

(assert (=> d!1250444 m!4837111))

(declare-fun m!4837113 () Bool)

(assert (=> d!1250444 m!4837113))

(declare-fun m!4837115 () Bool)

(assert (=> d!1250444 m!4837115))

(assert (=> d!1250444 m!4836469))

(assert (=> b!4252219 m!4837105))

(declare-fun m!4837117 () Bool)

(assert (=> b!4252219 m!4837117))

(assert (=> b!4252219 m!4837117))

(declare-fun m!4837119 () Bool)

(assert (=> b!4252219 m!4837119))

(assert (=> b!4252219 m!4837119))

(declare-fun m!4837121 () Bool)

(assert (=> b!4252219 m!4837121))

(declare-fun m!4837123 () Bool)

(assert (=> b!4252224 m!4837123))

(declare-fun m!4837125 () Bool)

(assert (=> bm!293990 m!4837125))

(assert (=> b!4252223 m!4837105))

(assert (=> b!4252223 m!4837117))

(assert (=> b!4252223 m!4837117))

(assert (=> b!4252223 m!4837119))

(assert (=> b!4252223 m!4837119))

(declare-fun m!4837127 () Bool)

(assert (=> b!4252223 m!4837127))

(assert (=> b!4252221 m!4837105))

(declare-fun m!4837129 () Bool)

(assert (=> b!4252221 m!4837129))

(assert (=> b!4252221 m!4836177))

(assert (=> b!4252220 m!4837105))

(assert (=> b!4252220 m!4837117))

(assert (=> b!4252220 m!4837117))

(assert (=> b!4252220 m!4837119))

(declare-fun m!4837131 () Bool)

(assert (=> b!4252225 m!4837131))

(assert (=> b!4252222 m!4837105))

(declare-fun m!4837133 () Bool)

(assert (=> b!4252222 m!4837133))

(assert (=> d!1250158 d!1250444))

(declare-fun d!1250448 () Bool)

(declare-fun lt!1508957 () Int)

(assert (=> d!1250448 (>= lt!1508957 0)))

(declare-fun e!2641162 () Int)

(assert (=> d!1250448 (= lt!1508957 e!2641162)))

(declare-fun c!722054 () Bool)

(assert (=> d!1250448 (= c!722054 ((_ is Nil!47121) (_2!25474 lt!1508814)))))

(assert (=> d!1250448 (= (size!34493 (_2!25474 lt!1508814)) lt!1508957)))

(declare-fun b!4252250 () Bool)

(assert (=> b!4252250 (= e!2641162 0)))

(declare-fun b!4252251 () Bool)

(assert (=> b!4252251 (= e!2641162 (+ 1 (size!34493 (t!352434 (_2!25474 lt!1508814)))))))

(assert (= (and d!1250448 c!722054) b!4252250))

(assert (= (and d!1250448 (not c!722054)) b!4252251))

(declare-fun m!4837141 () Bool)

(assert (=> b!4252251 m!4837141))

(assert (=> b!4251663 d!1250448))

(assert (=> b!4251663 d!1250146))

(declare-fun d!1250450 () Bool)

(declare-fun lt!1508958 () Int)

(assert (=> d!1250450 (>= lt!1508958 0)))

(declare-fun e!2641164 () Int)

(assert (=> d!1250450 (= lt!1508958 e!2641164)))

(declare-fun c!722055 () Bool)

(assert (=> d!1250450 (= c!722055 ((_ is Nil!47121) (_2!25473 (get!15297 lt!1508839))))))

(assert (=> d!1250450 (= (size!34493 (_2!25473 (get!15297 lt!1508839))) lt!1508958)))

(declare-fun b!4252256 () Bool)

(assert (=> b!4252256 (= e!2641164 0)))

(declare-fun b!4252257 () Bool)

(assert (=> b!4252257 (= e!2641164 (+ 1 (size!34493 (t!352434 (_2!25473 (get!15297 lt!1508839))))))))

(assert (= (and d!1250450 c!722055) b!4252256))

(assert (= (and d!1250450 (not c!722055)) b!4252257))

(declare-fun m!4837143 () Bool)

(assert (=> b!4252257 m!4837143))

(assert (=> b!4251757 d!1250450))

(assert (=> b!4251757 d!1250362))

(assert (=> b!4251757 d!1250206))

(declare-fun d!1250452 () Bool)

(declare-fun e!2641166 () Bool)

(assert (=> d!1250452 e!2641166))

(declare-fun res!1748073 () Bool)

(assert (=> d!1250452 (=> (not res!1748073) (not e!2641166))))

(declare-fun lt!1508959 () List!47245)

(assert (=> d!1250452 (= res!1748073 (= (content!7406 lt!1508959) ((_ map or) (content!7406 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) (content!7406 (_2!25473 (get!15297 lt!1508834))))))))

(declare-fun e!2641167 () List!47245)

(assert (=> d!1250452 (= lt!1508959 e!2641167)))

(declare-fun c!722056 () Bool)

(assert (=> d!1250452 (= c!722056 ((_ is Nil!47121) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))))))

(assert (=> d!1250452 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))) (_2!25473 (get!15297 lt!1508834))) lt!1508959)))

(declare-fun b!4252263 () Bool)

(assert (=> b!4252263 (= e!2641167 (Cons!47121 (h!52541 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) (++!11987 (t!352434 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) (_2!25473 (get!15297 lt!1508834)))))))

(declare-fun b!4252262 () Bool)

(assert (=> b!4252262 (= e!2641167 (_2!25473 (get!15297 lt!1508834)))))

(declare-fun b!4252264 () Bool)

(declare-fun res!1748074 () Bool)

(assert (=> b!4252264 (=> (not res!1748074) (not e!2641166))))

(assert (=> b!4252264 (= res!1748074 (= (size!34493 lt!1508959) (+ (size!34493 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) (size!34493 (_2!25473 (get!15297 lt!1508834))))))))

(declare-fun b!4252265 () Bool)

(assert (=> b!4252265 (= e!2641166 (or (not (= (_2!25473 (get!15297 lt!1508834)) Nil!47121)) (= lt!1508959 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))))))))

(assert (= (and d!1250452 c!722056) b!4252262))

(assert (= (and d!1250452 (not c!722056)) b!4252263))

(assert (= (and d!1250452 res!1748073) b!4252264))

(assert (= (and b!4252264 res!1748074) b!4252265))

(declare-fun m!4837145 () Bool)

(assert (=> d!1250452 m!4837145))

(assert (=> d!1250452 m!4836473))

(declare-fun m!4837147 () Bool)

(assert (=> d!1250452 m!4837147))

(declare-fun m!4837149 () Bool)

(assert (=> d!1250452 m!4837149))

(declare-fun m!4837151 () Bool)

(assert (=> b!4252263 m!4837151))

(declare-fun m!4837153 () Bool)

(assert (=> b!4252264 m!4837153))

(assert (=> b!4252264 m!4836473))

(declare-fun m!4837155 () Bool)

(assert (=> b!4252264 m!4837155))

(assert (=> b!4252264 m!4836483))

(assert (=> b!4251746 d!1250452))

(declare-fun d!1250454 () Bool)

(assert (=> d!1250454 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))) (list!16978 (c!721900 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun bs!598692 () Bool)

(assert (= bs!598692 d!1250454))

(declare-fun m!4837157 () Bool)

(assert (=> bs!598692 m!4837157))

(assert (=> b!4251746 d!1250454))

(declare-fun d!1250456 () Bool)

(declare-fun lt!1508960 () BalanceConc!27972)

(assert (=> d!1250456 (= (list!16976 lt!1508960) (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834))))))

(assert (=> d!1250456 (= lt!1508960 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))) (value!247909 (_1!25473 (get!15297 lt!1508834)))))))

(assert (=> d!1250456 (= (charsOf!5318 (_1!25473 (get!15297 lt!1508834))) lt!1508960)))

(declare-fun b_lambda!125263 () Bool)

(assert (=> (not b_lambda!125263) (not d!1250456)))

(declare-fun t!352554 () Bool)

(declare-fun tb!256483 () Bool)

(assert (=> (and b!4251462 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352554) tb!256483))

(declare-fun b!4252270 () Bool)

(declare-fun e!2641174 () Bool)

(declare-fun tp!1304811 () Bool)

(assert (=> b!4252270 (= e!2641174 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))) (value!247909 (_1!25473 (get!15297 lt!1508834)))))) tp!1304811))))

(declare-fun result!312808 () Bool)

(assert (=> tb!256483 (= result!312808 (and (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))) (value!247909 (_1!25473 (get!15297 lt!1508834))))) e!2641174))))

(assert (= tb!256483 b!4252270))

(declare-fun m!4837159 () Bool)

(assert (=> b!4252270 m!4837159))

(declare-fun m!4837161 () Bool)

(assert (=> tb!256483 m!4837161))

(assert (=> d!1250456 t!352554))

(declare-fun b_and!337169 () Bool)

(assert (= b_and!337141 (and (=> t!352554 result!312808) b_and!337169)))

(declare-fun tb!256485 () Bool)

(declare-fun t!352556 () Bool)

(assert (=> (and b!4251471 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352556) tb!256485))

(declare-fun result!312810 () Bool)

(assert (= result!312810 result!312808))

(assert (=> d!1250456 t!352556))

(declare-fun b_and!337171 () Bool)

(assert (= b_and!337143 (and (=> t!352556 result!312810) b_and!337171)))

(declare-fun tb!256487 () Bool)

(declare-fun t!352558 () Bool)

(assert (=> (and b!4251779 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352558) tb!256487))

(declare-fun result!312812 () Bool)

(assert (= result!312812 result!312808))

(assert (=> d!1250456 t!352558))

(declare-fun b_and!337173 () Bool)

(assert (= b_and!337145 (and (=> t!352558 result!312812) b_and!337173)))

(declare-fun tb!256489 () Bool)

(declare-fun t!352560 () Bool)

(assert (=> (and b!4251793 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352560) tb!256489))

(declare-fun result!312814 () Bool)

(assert (= result!312814 result!312808))

(assert (=> d!1250456 t!352560))

(declare-fun b_and!337175 () Bool)

(assert (= b_and!337147 (and (=> t!352560 result!312814) b_and!337175)))

(declare-fun m!4837169 () Bool)

(assert (=> d!1250456 m!4837169))

(declare-fun m!4837173 () Bool)

(assert (=> d!1250456 m!4837173))

(assert (=> b!4251746 d!1250456))

(assert (=> b!4251746 d!1250432))

(declare-fun d!1250458 () Bool)

(assert (=> d!1250458 (= (list!16976 lt!1508760) (list!16978 (c!721900 lt!1508760)))))

(declare-fun bs!598693 () Bool)

(assert (= bs!598693 d!1250458))

(declare-fun m!4837175 () Bool)

(assert (=> bs!598693 m!4837175))

(assert (=> d!1250142 d!1250458))

(declare-fun d!1250460 () Bool)

(assert (=> d!1250460 (= (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))) (isBalanced!3768 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))))))

(declare-fun bs!598694 () Bool)

(assert (= bs!598694 d!1250460))

(declare-fun m!4837177 () Bool)

(assert (=> bs!598694 m!4837177))

(assert (=> tb!256403 d!1250460))

(declare-fun d!1250462 () Bool)

(declare-fun c!722057 () Bool)

(assert (=> d!1250462 (= c!722057 ((_ is Node!14189) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))))))

(declare-fun e!2641179 () Bool)

(assert (=> d!1250462 (= (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))) e!2641179)))

(declare-fun b!4252274 () Bool)

(assert (=> b!4252274 (= e!2641179 (inv!61904 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))))))

(declare-fun b!4252275 () Bool)

(declare-fun e!2641180 () Bool)

(assert (=> b!4252275 (= e!2641179 e!2641180)))

(declare-fun res!1748075 () Bool)

(assert (=> b!4252275 (= res!1748075 (not ((_ is Leaf!21937) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))))))))

(assert (=> b!4252275 (=> res!1748075 e!2641180)))

(declare-fun b!4252276 () Bool)

(assert (=> b!4252276 (= e!2641180 (inv!61905 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))))))

(assert (= (and d!1250462 c!722057) b!4252274))

(assert (= (and d!1250462 (not c!722057)) b!4252275))

(assert (= (and b!4252275 (not res!1748075)) b!4252276))

(declare-fun m!4837179 () Bool)

(assert (=> b!4252274 m!4837179))

(declare-fun m!4837181 () Bool)

(assert (=> b!4252276 m!4837181))

(assert (=> b!4251556 d!1250462))

(declare-fun d!1250464 () Bool)

(declare-fun lt!1508963 () Bool)

(declare-fun content!7407 (List!47248) (InoxSet Rule!15756))

(assert (=> d!1250464 (= lt!1508963 (select (content!7407 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))

(declare-fun e!2641198 () Bool)

(assert (=> d!1250464 (= lt!1508963 e!2641198)))

(declare-fun res!1748081 () Bool)

(assert (=> d!1250464 (=> (not res!1748081) (not e!2641198))))

(assert (=> d!1250464 (= res!1748081 ((_ is Cons!47124) rules!2971))))

(assert (=> d!1250464 (= (contains!9763 rules!2971 (rule!11112 (_1!25473 (get!15297 lt!1508834)))) lt!1508963)))

(declare-fun b!4252310 () Bool)

(declare-fun e!2641197 () Bool)

(assert (=> b!4252310 (= e!2641198 e!2641197)))

(declare-fun res!1748080 () Bool)

(assert (=> b!4252310 (=> res!1748080 e!2641197)))

(assert (=> b!4252310 (= res!1748080 (= (h!52544 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))

(declare-fun b!4252311 () Bool)

(assert (=> b!4252311 (= e!2641197 (contains!9763 (t!352437 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))

(assert (= (and d!1250464 res!1748081) b!4252310))

(assert (= (and b!4252310 (not res!1748080)) b!4252311))

(declare-fun m!4837199 () Bool)

(assert (=> d!1250464 m!4837199))

(declare-fun m!4837201 () Bool)

(assert (=> d!1250464 m!4837201))

(declare-fun m!4837203 () Bool)

(assert (=> b!4252311 m!4837203))

(assert (=> b!4251749 d!1250464))

(assert (=> b!4251749 d!1250432))

(declare-fun d!1250466 () Bool)

(declare-fun lt!1508964 () Int)

(assert (=> d!1250466 (>= lt!1508964 0)))

(declare-fun e!2641201 () Int)

(assert (=> d!1250466 (= lt!1508964 e!2641201)))

(declare-fun c!722058 () Bool)

(assert (=> d!1250466 (= c!722058 ((_ is Nil!47121) lt!1508757))))

(assert (=> d!1250466 (= (size!34493 lt!1508757) lt!1508964)))

(declare-fun b!4252320 () Bool)

(assert (=> b!4252320 (= e!2641201 0)))

(declare-fun b!4252321 () Bool)

(assert (=> b!4252321 (= e!2641201 (+ 1 (size!34493 (t!352434 lt!1508757))))))

(assert (= (and d!1250466 c!722058) b!4252320))

(assert (= (and d!1250466 (not c!722058)) b!4252321))

(declare-fun m!4837205 () Bool)

(assert (=> b!4252321 m!4837205))

(assert (=> b!4251517 d!1250466))

(declare-fun d!1250468 () Bool)

(declare-fun lt!1508965 () Int)

(assert (=> d!1250468 (>= lt!1508965 0)))

(declare-fun e!2641203 () Int)

(assert (=> d!1250468 (= lt!1508965 e!2641203)))

(declare-fun c!722059 () Bool)

(assert (=> d!1250468 (= c!722059 ((_ is Nil!47121) lt!1508745))))

(assert (=> d!1250468 (= (size!34493 lt!1508745) lt!1508965)))

(declare-fun b!4252323 () Bool)

(assert (=> b!4252323 (= e!2641203 0)))

(declare-fun b!4252324 () Bool)

(assert (=> b!4252324 (= e!2641203 (+ 1 (size!34493 (t!352434 lt!1508745))))))

(assert (= (and d!1250468 c!722059) b!4252323))

(assert (= (and d!1250468 (not c!722059)) b!4252324))

(declare-fun m!4837207 () Bool)

(assert (=> b!4252324 m!4837207))

(assert (=> b!4251517 d!1250468))

(assert (=> b!4251517 d!1250144))

(declare-fun d!1250470 () Bool)

(assert (=> d!1250470 (= (isDefined!7466 lt!1508834) (not (isEmpty!27887 lt!1508834)))))

(declare-fun bs!598695 () Bool)

(assert (= bs!598695 d!1250470))

(assert (=> bs!598695 m!4836463))

(assert (=> b!4251751 d!1250470))

(declare-fun bs!598696 () Bool)

(declare-fun d!1250472 () Bool)

(assert (= bs!598696 (and d!1250472 d!1250342)))

(declare-fun lambda!130287 () Int)

(assert (=> bs!598696 (= lambda!130287 lambda!130280)))

(assert (=> d!1250472 true))

(declare-fun lt!1508968 () Bool)

(assert (=> d!1250472 (= lt!1508968 (rulesValidInductive!3002 thiss!21641 rules!2971))))

(assert (=> d!1250472 (= lt!1508968 (forall!8546 rules!2971 lambda!130287))))

(assert (=> d!1250472 (= (rulesValid!3103 thiss!21641 rules!2971) lt!1508968)))

(declare-fun bs!598697 () Bool)

(assert (= bs!598697 d!1250472))

(assert (=> bs!598697 m!4836469))

(declare-fun m!4837209 () Bool)

(assert (=> bs!598697 m!4837209))

(assert (=> d!1250216 d!1250472))

(declare-fun d!1250474 () Bool)

(declare-fun lt!1508969 () Int)

(assert (=> d!1250474 (>= lt!1508969 0)))

(declare-fun e!2641204 () Int)

(assert (=> d!1250474 (= lt!1508969 e!2641204)))

(declare-fun c!722060 () Bool)

(assert (=> d!1250474 (= c!722060 ((_ is Nil!47121) (t!352434 (_2!25473 (v!41069 lt!1508746)))))))

(assert (=> d!1250474 (= (size!34493 (t!352434 (_2!25473 (v!41069 lt!1508746)))) lt!1508969)))

(declare-fun b!4252325 () Bool)

(assert (=> b!4252325 (= e!2641204 0)))

(declare-fun b!4252326 () Bool)

(assert (=> b!4252326 (= e!2641204 (+ 1 (size!34493 (t!352434 (t!352434 (_2!25473 (v!41069 lt!1508746)))))))))

(assert (= (and d!1250474 c!722060) b!4252325))

(assert (= (and d!1250474 (not c!722060)) b!4252326))

(declare-fun m!4837211 () Bool)

(assert (=> b!4252326 m!4837211))

(assert (=> b!4251529 d!1250474))

(declare-fun b!4252337 () Bool)

(declare-fun e!2641210 () List!47245)

(declare-fun list!16979 (IArray!28383) List!47245)

(assert (=> b!4252337 (= e!2641210 (list!16979 (xs!17495 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747)))))))))

(declare-fun d!1250476 () Bool)

(declare-fun c!722065 () Bool)

(assert (=> d!1250476 (= c!722065 ((_ is Empty!14189) (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747))))))))

(declare-fun e!2641209 () List!47245)

(assert (=> d!1250476 (= (list!16978 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747))))) e!2641209)))

(declare-fun b!4252336 () Bool)

(assert (=> b!4252336 (= e!2641209 e!2641210)))

(declare-fun c!722066 () Bool)

(assert (=> b!4252336 (= c!722066 ((_ is Leaf!21937) (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747))))))))

(declare-fun b!4252338 () Bool)

(assert (=> b!4252338 (= e!2641210 (++!11987 (list!16978 (left!34940 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747)))))) (list!16978 (right!35270 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508747))))))))))

(declare-fun b!4252335 () Bool)

(assert (=> b!4252335 (= e!2641209 Nil!47121)))

(assert (= (and d!1250476 c!722065) b!4252335))

(assert (= (and d!1250476 (not c!722065)) b!4252336))

(assert (= (and b!4252336 c!722066) b!4252337))

(assert (= (and b!4252336 (not c!722066)) b!4252338))

(declare-fun m!4837213 () Bool)

(assert (=> b!4252337 m!4837213))

(declare-fun m!4837215 () Bool)

(assert (=> b!4252338 m!4837215))

(declare-fun m!4837217 () Bool)

(assert (=> b!4252338 m!4837217))

(assert (=> b!4252338 m!4837215))

(assert (=> b!4252338 m!4837217))

(declare-fun m!4837219 () Bool)

(assert (=> b!4252338 m!4837219))

(assert (=> d!1250212 d!1250476))

(declare-fun d!1250478 () Bool)

(declare-fun res!1748082 () Bool)

(declare-fun e!2641211 () Bool)

(assert (=> d!1250478 (=> (not res!1748082) (not e!2641211))))

(assert (=> d!1250478 (= res!1748082 (not (isEmpty!27882 (originalCharacters!8322 (h!52543 (t!352436 tokens!592))))))))

(assert (=> d!1250478 (= (inv!61899 (h!52543 (t!352436 tokens!592))) e!2641211)))

(declare-fun b!4252339 () Bool)

(declare-fun res!1748083 () Bool)

(assert (=> b!4252339 (=> (not res!1748083) (not e!2641211))))

(assert (=> b!4252339 (= res!1748083 (= (originalCharacters!8322 (h!52543 (t!352436 tokens!592))) (list!16976 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (value!247909 (h!52543 (t!352436 tokens!592)))))))))

(declare-fun b!4252340 () Bool)

(assert (=> b!4252340 (= e!2641211 (= (size!34492 (h!52543 (t!352436 tokens!592))) (size!34493 (originalCharacters!8322 (h!52543 (t!352436 tokens!592))))))))

(assert (= (and d!1250478 res!1748082) b!4252339))

(assert (= (and b!4252339 res!1748083) b!4252340))

(declare-fun b_lambda!125271 () Bool)

(assert (=> (not b_lambda!125271) (not b!4252339)))

(declare-fun t!352579 () Bool)

(declare-fun tb!256507 () Bool)

(assert (=> (and b!4251462 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) t!352579) tb!256507))

(declare-fun b!4252341 () Bool)

(declare-fun e!2641212 () Bool)

(declare-fun tp!1304861 () Bool)

(assert (=> b!4252341 (= e!2641212 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (value!247909 (h!52543 (t!352436 tokens!592)))))) tp!1304861))))

(declare-fun result!312832 () Bool)

(assert (=> tb!256507 (= result!312832 (and (inv!61903 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (value!247909 (h!52543 (t!352436 tokens!592))))) e!2641212))))

(assert (= tb!256507 b!4252341))

(declare-fun m!4837221 () Bool)

(assert (=> b!4252341 m!4837221))

(declare-fun m!4837223 () Bool)

(assert (=> tb!256507 m!4837223))

(assert (=> b!4252339 t!352579))

(declare-fun b_and!337181 () Bool)

(assert (= b_and!337169 (and (=> t!352579 result!312832) b_and!337181)))

(declare-fun t!352581 () Bool)

(declare-fun tb!256509 () Bool)

(assert (=> (and b!4251471 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) t!352581) tb!256509))

(declare-fun result!312834 () Bool)

(assert (= result!312834 result!312832))

(assert (=> b!4252339 t!352581))

(declare-fun b_and!337183 () Bool)

(assert (= b_and!337171 (and (=> t!352581 result!312834) b_and!337183)))

(declare-fun t!352583 () Bool)

(declare-fun tb!256511 () Bool)

(assert (=> (and b!4251779 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) t!352583) tb!256511))

(declare-fun result!312836 () Bool)

(assert (= result!312836 result!312832))

(assert (=> b!4252339 t!352583))

(declare-fun b_and!337185 () Bool)

(assert (= b_and!337173 (and (=> t!352583 result!312836) b_and!337185)))

(declare-fun t!352585 () Bool)

(declare-fun tb!256513 () Bool)

(assert (=> (and b!4251793 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) t!352585) tb!256513))

(declare-fun result!312838 () Bool)

(assert (= result!312838 result!312832))

(assert (=> b!4252339 t!352585))

(declare-fun b_and!337187 () Bool)

(assert (= b_and!337175 (and (=> t!352585 result!312838) b_and!337187)))

(declare-fun m!4837225 () Bool)

(assert (=> d!1250478 m!4837225))

(declare-fun m!4837227 () Bool)

(assert (=> b!4252339 m!4837227))

(assert (=> b!4252339 m!4837227))

(declare-fun m!4837229 () Bool)

(assert (=> b!4252339 m!4837229))

(declare-fun m!4837231 () Bool)

(assert (=> b!4252340 m!4837231))

(assert (=> b!4251790 d!1250478))

(assert (=> b!4251754 d!1250362))

(declare-fun d!1250480 () Bool)

(declare-fun dynLambda!20191 (Int BalanceConc!27972) TokenValue!8208)

(assert (=> d!1250480 (= (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839))))) (dynLambda!20191 (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839))))))))

(declare-fun b_lambda!125273 () Bool)

(assert (=> (not b_lambda!125273) (not d!1250480)))

(declare-fun tb!256515 () Bool)

(declare-fun t!352587 () Bool)

(assert (=> (and b!4251462 (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352587) tb!256515))

(declare-fun result!312840 () Bool)

(assert (=> tb!256515 (= result!312840 (inv!21 (dynLambda!20191 (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839))))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839)))))))))

(declare-fun m!4837233 () Bool)

(assert (=> tb!256515 m!4837233))

(assert (=> d!1250480 t!352587))

(declare-fun b_and!337189 () Bool)

(assert (= b_and!337069 (and (=> t!352587 result!312840) b_and!337189)))

(declare-fun tb!256517 () Bool)

(declare-fun t!352589 () Bool)

(assert (=> (and b!4251471 (= (toValue!10750 (transformation!7978 (h!52544 rules!2971))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352589) tb!256517))

(declare-fun result!312844 () Bool)

(assert (= result!312844 result!312840))

(assert (=> d!1250480 t!352589))

(declare-fun b_and!337191 () Bool)

(assert (= b_and!337073 (and (=> t!352589 result!312844) b_and!337191)))

(declare-fun tb!256519 () Bool)

(declare-fun t!352591 () Bool)

(assert (=> (and b!4251779 (= (toValue!10750 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352591) tb!256519))

(declare-fun result!312846 () Bool)

(assert (= result!312846 result!312840))

(assert (=> d!1250480 t!352591))

(declare-fun b_and!337193 () Bool)

(assert (= b_and!337109 (and (=> t!352591 result!312846) b_and!337193)))

(declare-fun t!352593 () Bool)

(declare-fun tb!256521 () Bool)

(assert (=> (and b!4251793 (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352593) tb!256521))

(declare-fun result!312848 () Bool)

(assert (= result!312848 result!312840))

(assert (=> d!1250480 t!352593))

(declare-fun b_and!337195 () Bool)

(assert (= b_and!337113 (and (=> t!352593 result!312848) b_and!337195)))

(assert (=> d!1250480 m!4836491))

(declare-fun m!4837235 () Bool)

(assert (=> d!1250480 m!4837235))

(assert (=> b!4251754 d!1250480))

(declare-fun d!1250482 () Bool)

(declare-fun fromListB!2655 (List!47245) BalanceConc!27972)

(assert (=> d!1250482 (= (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839)))) (fromListB!2655 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508839)))))))

(declare-fun bs!598698 () Bool)

(assert (= bs!598698 d!1250482))

(declare-fun m!4837237 () Bool)

(assert (=> bs!598698 m!4837237))

(assert (=> b!4251754 d!1250482))

(declare-fun d!1250484 () Bool)

(declare-fun lt!1508970 () Int)

(assert (=> d!1250484 (>= lt!1508970 0)))

(declare-fun e!2641216 () Int)

(assert (=> d!1250484 (= lt!1508970 e!2641216)))

(declare-fun c!722067 () Bool)

(assert (=> d!1250484 (= c!722067 ((_ is Nil!47121) (t!352434 (_2!25473 (v!41069 lt!1508747)))))))

(assert (=> d!1250484 (= (size!34493 (t!352434 (_2!25473 (v!41069 lt!1508747)))) lt!1508970)))

(declare-fun b!4252344 () Bool)

(assert (=> b!4252344 (= e!2641216 0)))

(declare-fun b!4252345 () Bool)

(assert (=> b!4252345 (= e!2641216 (+ 1 (size!34493 (t!352434 (t!352434 (_2!25473 (v!41069 lt!1508747)))))))))

(assert (= (and d!1250484 c!722067) b!4252344))

(assert (= (and d!1250484 (not c!722067)) b!4252345))

(declare-fun m!4837239 () Bool)

(assert (=> b!4252345 m!4837239))

(assert (=> b!4251531 d!1250484))

(declare-fun d!1250486 () Bool)

(assert (=> d!1250486 (= (inv!61895 (tag!8842 (rule!11112 (h!52543 (t!352436 tokens!592))))) (= (mod (str.len (value!247908 (tag!8842 (rule!11112 (h!52543 (t!352436 tokens!592)))))) 2) 0))))

(assert (=> b!4251792 d!1250486))

(declare-fun d!1250488 () Bool)

(declare-fun res!1748084 () Bool)

(declare-fun e!2641217 () Bool)

(assert (=> d!1250488 (=> (not res!1748084) (not e!2641217))))

(assert (=> d!1250488 (= res!1748084 (semiInverseModEq!3481 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toValue!10750 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))))))

(assert (=> d!1250488 (= (inv!61898 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) e!2641217)))

(declare-fun b!4252346 () Bool)

(assert (=> b!4252346 (= e!2641217 (equivClasses!3380 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toValue!10750 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))))))

(assert (= (and d!1250488 res!1748084) b!4252346))

(declare-fun m!4837241 () Bool)

(assert (=> d!1250488 m!4837241))

(declare-fun m!4837243 () Bool)

(assert (=> b!4252346 m!4837243))

(assert (=> b!4251792 d!1250488))

(declare-fun b!4252365 () Bool)

(declare-fun res!1748104 () Bool)

(declare-fun e!2641228 () Bool)

(assert (=> b!4252365 (=> (not res!1748104) (not e!2641228))))

(declare-fun lt!1508982 () Option!10112)

(assert (=> b!4252365 (= res!1748104 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508982)))) (_2!25473 (get!15297 lt!1508982))) shorterInput!62))))

(declare-fun b!4252366 () Bool)

(declare-fun e!2641226 () Option!10112)

(assert (=> b!4252366 (= e!2641226 None!10111)))

(declare-fun d!1250490 () Bool)

(declare-fun e!2641229 () Bool)

(assert (=> d!1250490 e!2641229))

(declare-fun res!1748102 () Bool)

(assert (=> d!1250490 (=> res!1748102 e!2641229)))

(assert (=> d!1250490 (= res!1748102 (isEmpty!27887 lt!1508982))))

(assert (=> d!1250490 (= lt!1508982 e!2641226)))

(declare-fun c!722070 () Bool)

(declare-datatypes ((tuple2!44684 0))(
  ( (tuple2!44685 (_1!25476 List!47245) (_2!25476 List!47245)) )
))
(declare-fun lt!1508984 () tuple2!44684)

(assert (=> d!1250490 (= c!722070 (isEmpty!27882 (_1!25476 lt!1508984)))))

(declare-fun findLongestMatch!1615 (Regex!12883 List!47245) tuple2!44684)

(assert (=> d!1250490 (= lt!1508984 (findLongestMatch!1615 (regex!7978 (h!52544 rules!2971)) shorterInput!62))))

(assert (=> d!1250490 (ruleValid!3610 thiss!21641 (h!52544 rules!2971))))

(assert (=> d!1250490 (= (maxPrefixOneRule!3476 thiss!21641 (h!52544 rules!2971) shorterInput!62) lt!1508982)))

(declare-fun b!4252367 () Bool)

(declare-fun res!1748099 () Bool)

(assert (=> b!4252367 (=> (not res!1748099) (not e!2641228))))

(assert (=> b!4252367 (= res!1748099 (< (size!34493 (_2!25473 (get!15297 lt!1508982))) (size!34493 shorterInput!62)))))

(declare-fun b!4252368 () Bool)

(assert (=> b!4252368 (= e!2641229 e!2641228)))

(declare-fun res!1748105 () Bool)

(assert (=> b!4252368 (=> (not res!1748105) (not e!2641228))))

(assert (=> b!4252368 (= res!1748105 (matchR!6473 (regex!7978 (h!52544 rules!2971)) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508982))))))))

(declare-fun b!4252369 () Bool)

(declare-fun res!1748100 () Bool)

(assert (=> b!4252369 (=> (not res!1748100) (not e!2641228))))

(assert (=> b!4252369 (= res!1748100 (= (rule!11112 (_1!25473 (get!15297 lt!1508982))) (h!52544 rules!2971)))))

(declare-fun b!4252370 () Bool)

(declare-fun res!1748103 () Bool)

(assert (=> b!4252370 (=> (not res!1748103) (not e!2641228))))

(assert (=> b!4252370 (= res!1748103 (= (value!247909 (_1!25473 (get!15297 lt!1508982))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508982)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508982)))))))))

(declare-fun b!4252371 () Bool)

(assert (=> b!4252371 (= e!2641228 (= (size!34492 (_1!25473 (get!15297 lt!1508982))) (size!34493 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508982))))))))

(declare-fun b!4252372 () Bool)

(declare-fun e!2641227 () Bool)

(declare-fun findLongestMatchInner!1712 (Regex!12883 List!47245 Int List!47245 List!47245 Int) tuple2!44684)

(assert (=> b!4252372 (= e!2641227 (matchR!6473 (regex!7978 (h!52544 rules!2971)) (_1!25476 (findLongestMatchInner!1712 (regex!7978 (h!52544 rules!2971)) Nil!47121 (size!34493 Nil!47121) shorterInput!62 shorterInput!62 (size!34493 shorterInput!62)))))))

(declare-fun b!4252373 () Bool)

(declare-fun size!34497 (BalanceConc!27972) Int)

(assert (=> b!4252373 (= e!2641226 (Some!10111 (tuple2!44679 (Token!14583 (apply!10778 (transformation!7978 (h!52544 rules!2971)) (seqFromList!5838 (_1!25476 lt!1508984))) (h!52544 rules!2971) (size!34497 (seqFromList!5838 (_1!25476 lt!1508984))) (_1!25476 lt!1508984)) (_2!25476 lt!1508984))))))

(declare-fun lt!1508981 () Unit!66081)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1675 (Regex!12883 List!47245) Unit!66081)

(assert (=> b!4252373 (= lt!1508981 (longestMatchIsAcceptedByMatchOrIsEmpty!1675 (regex!7978 (h!52544 rules!2971)) shorterInput!62))))

(declare-fun res!1748101 () Bool)

(assert (=> b!4252373 (= res!1748101 (isEmpty!27882 (_1!25476 (findLongestMatchInner!1712 (regex!7978 (h!52544 rules!2971)) Nil!47121 (size!34493 Nil!47121) shorterInput!62 shorterInput!62 (size!34493 shorterInput!62)))))))

(assert (=> b!4252373 (=> res!1748101 e!2641227)))

(assert (=> b!4252373 e!2641227))

(declare-fun lt!1508985 () Unit!66081)

(assert (=> b!4252373 (= lt!1508985 lt!1508981)))

(declare-fun lt!1508983 () Unit!66081)

(declare-fun lemmaSemiInverse!2543 (TokenValueInjection!15844 BalanceConc!27972) Unit!66081)

(assert (=> b!4252373 (= lt!1508983 (lemmaSemiInverse!2543 (transformation!7978 (h!52544 rules!2971)) (seqFromList!5838 (_1!25476 lt!1508984))))))

(assert (= (and d!1250490 c!722070) b!4252366))

(assert (= (and d!1250490 (not c!722070)) b!4252373))

(assert (= (and b!4252373 (not res!1748101)) b!4252372))

(assert (= (and d!1250490 (not res!1748102)) b!4252368))

(assert (= (and b!4252368 res!1748105) b!4252365))

(assert (= (and b!4252365 res!1748104) b!4252367))

(assert (= (and b!4252367 res!1748099) b!4252369))

(assert (= (and b!4252369 res!1748100) b!4252370))

(assert (= (and b!4252370 res!1748103) b!4252371))

(declare-fun m!4837245 () Bool)

(assert (=> b!4252370 m!4837245))

(declare-fun m!4837247 () Bool)

(assert (=> b!4252370 m!4837247))

(assert (=> b!4252370 m!4837247))

(declare-fun m!4837249 () Bool)

(assert (=> b!4252370 m!4837249))

(assert (=> b!4252367 m!4837245))

(declare-fun m!4837251 () Bool)

(assert (=> b!4252367 m!4837251))

(assert (=> b!4252367 m!4836151))

(declare-fun m!4837253 () Bool)

(assert (=> b!4252372 m!4837253))

(assert (=> b!4252372 m!4836151))

(assert (=> b!4252372 m!4837253))

(assert (=> b!4252372 m!4836151))

(declare-fun m!4837255 () Bool)

(assert (=> b!4252372 m!4837255))

(declare-fun m!4837257 () Bool)

(assert (=> b!4252372 m!4837257))

(assert (=> b!4252369 m!4837245))

(assert (=> b!4252373 m!4836151))

(declare-fun m!4837259 () Bool)

(assert (=> b!4252373 m!4837259))

(declare-fun m!4837261 () Bool)

(assert (=> b!4252373 m!4837261))

(assert (=> b!4252373 m!4837253))

(assert (=> b!4252373 m!4836151))

(assert (=> b!4252373 m!4837255))

(assert (=> b!4252373 m!4837259))

(declare-fun m!4837263 () Bool)

(assert (=> b!4252373 m!4837263))

(declare-fun m!4837265 () Bool)

(assert (=> b!4252373 m!4837265))

(assert (=> b!4252373 m!4837253))

(assert (=> b!4252373 m!4837259))

(assert (=> b!4252373 m!4837259))

(declare-fun m!4837267 () Bool)

(assert (=> b!4252373 m!4837267))

(declare-fun m!4837269 () Bool)

(assert (=> b!4252373 m!4837269))

(declare-fun m!4837271 () Bool)

(assert (=> d!1250490 m!4837271))

(declare-fun m!4837273 () Bool)

(assert (=> d!1250490 m!4837273))

(declare-fun m!4837275 () Bool)

(assert (=> d!1250490 m!4837275))

(assert (=> d!1250490 m!4836885))

(assert (=> b!4252365 m!4837245))

(declare-fun m!4837277 () Bool)

(assert (=> b!4252365 m!4837277))

(assert (=> b!4252365 m!4837277))

(declare-fun m!4837279 () Bool)

(assert (=> b!4252365 m!4837279))

(assert (=> b!4252365 m!4837279))

(declare-fun m!4837281 () Bool)

(assert (=> b!4252365 m!4837281))

(assert (=> b!4252371 m!4837245))

(declare-fun m!4837283 () Bool)

(assert (=> b!4252371 m!4837283))

(assert (=> b!4252368 m!4837245))

(assert (=> b!4252368 m!4837277))

(assert (=> b!4252368 m!4837277))

(assert (=> b!4252368 m!4837279))

(assert (=> b!4252368 m!4837279))

(declare-fun m!4837285 () Bool)

(assert (=> b!4252368 m!4837285))

(assert (=> bm!293978 d!1250490))

(declare-fun d!1250492 () Bool)

(declare-fun c!722071 () Bool)

(assert (=> d!1250492 (= c!722071 ((_ is Nil!47121) lt!1508757))))

(declare-fun e!2641230 () (InoxSet C!25964))

(assert (=> d!1250492 (= (content!7406 lt!1508757) e!2641230)))

(declare-fun b!4252374 () Bool)

(assert (=> b!4252374 (= e!2641230 ((as const (Array C!25964 Bool)) false))))

(declare-fun b!4252375 () Bool)

(assert (=> b!4252375 (= e!2641230 ((_ map or) (store ((as const (Array C!25964 Bool)) false) (h!52541 lt!1508757) true) (content!7406 (t!352434 lt!1508757))))))

(assert (= (and d!1250492 c!722071) b!4252374))

(assert (= (and d!1250492 (not c!722071)) b!4252375))

(declare-fun m!4837287 () Bool)

(assert (=> b!4252375 m!4837287))

(declare-fun m!4837289 () Bool)

(assert (=> b!4252375 m!4837289))

(assert (=> d!1250138 d!1250492))

(declare-fun d!1250494 () Bool)

(declare-fun c!722072 () Bool)

(assert (=> d!1250494 (= c!722072 ((_ is Nil!47121) lt!1508745))))

(declare-fun e!2641231 () (InoxSet C!25964))

(assert (=> d!1250494 (= (content!7406 lt!1508745) e!2641231)))

(declare-fun b!4252376 () Bool)

(assert (=> b!4252376 (= e!2641231 ((as const (Array C!25964 Bool)) false))))

(declare-fun b!4252377 () Bool)

(assert (=> b!4252377 (= e!2641231 ((_ map or) (store ((as const (Array C!25964 Bool)) false) (h!52541 lt!1508745) true) (content!7406 (t!352434 lt!1508745))))))

(assert (= (and d!1250494 c!722072) b!4252376))

(assert (= (and d!1250494 (not c!722072)) b!4252377))

(declare-fun m!4837291 () Bool)

(assert (=> b!4252377 m!4837291))

(declare-fun m!4837293 () Bool)

(assert (=> b!4252377 m!4837293))

(assert (=> d!1250138 d!1250494))

(declare-fun d!1250496 () Bool)

(declare-fun c!722073 () Bool)

(assert (=> d!1250496 (= c!722073 ((_ is Nil!47121) (_2!25473 (v!41069 lt!1508746))))))

(declare-fun e!2641232 () (InoxSet C!25964))

(assert (=> d!1250496 (= (content!7406 (_2!25473 (v!41069 lt!1508746))) e!2641232)))

(declare-fun b!4252378 () Bool)

(assert (=> b!4252378 (= e!2641232 ((as const (Array C!25964 Bool)) false))))

(declare-fun b!4252379 () Bool)

(assert (=> b!4252379 (= e!2641232 ((_ map or) (store ((as const (Array C!25964 Bool)) false) (h!52541 (_2!25473 (v!41069 lt!1508746))) true) (content!7406 (t!352434 (_2!25473 (v!41069 lt!1508746))))))))

(assert (= (and d!1250496 c!722073) b!4252378))

(assert (= (and d!1250496 (not c!722073)) b!4252379))

(declare-fun m!4837295 () Bool)

(assert (=> b!4252379 m!4837295))

(declare-fun m!4837297 () Bool)

(assert (=> b!4252379 m!4837297))

(assert (=> d!1250138 d!1250496))

(declare-fun d!1250498 () Bool)

(declare-fun charsToBigInt!1 (List!47246) Int)

(assert (=> d!1250498 (= (inv!17 (value!247909 (h!52543 tokens!592))) (= (charsToBigInt!1 (text!57904 (value!247909 (h!52543 tokens!592)))) (value!247901 (value!247909 (h!52543 tokens!592)))))))

(declare-fun bs!598699 () Bool)

(assert (= bs!598699 d!1250498))

(declare-fun m!4837299 () Bool)

(assert (=> bs!598699 m!4837299))

(assert (=> b!4251503 d!1250498))

(declare-fun d!1250500 () Bool)

(declare-fun lt!1508986 () Int)

(assert (=> d!1250500 (>= lt!1508986 0)))

(declare-fun e!2641233 () Int)

(assert (=> d!1250500 (= lt!1508986 e!2641233)))

(declare-fun c!722074 () Bool)

(assert (=> d!1250500 (= c!722074 ((_ is Nil!47121) (t!352434 shorterInput!62)))))

(assert (=> d!1250500 (= (size!34493 (t!352434 shorterInput!62)) lt!1508986)))

(declare-fun b!4252380 () Bool)

(assert (=> b!4252380 (= e!2641233 0)))

(declare-fun b!4252381 () Bool)

(assert (=> b!4252381 (= e!2641233 (+ 1 (size!34493 (t!352434 (t!352434 shorterInput!62)))))))

(assert (= (and d!1250500 c!722074) b!4252380))

(assert (= (and d!1250500 (not c!722074)) b!4252381))

(declare-fun m!4837301 () Bool)

(assert (=> b!4252381 m!4837301))

(assert (=> b!4251701 d!1250500))

(declare-fun b!4252382 () Bool)

(declare-fun res!1748111 () Bool)

(declare-fun e!2641236 () Bool)

(assert (=> b!4252382 (=> (not res!1748111) (not e!2641236))))

(declare-fun lt!1508988 () Option!10112)

(assert (=> b!4252382 (= res!1748111 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508988)))) (_2!25473 (get!15297 lt!1508988))) longerInput!62))))

(declare-fun b!4252383 () Bool)

(declare-fun e!2641234 () Option!10112)

(assert (=> b!4252383 (= e!2641234 None!10111)))

(declare-fun d!1250502 () Bool)

(declare-fun e!2641237 () Bool)

(assert (=> d!1250502 e!2641237))

(declare-fun res!1748109 () Bool)

(assert (=> d!1250502 (=> res!1748109 e!2641237)))

(assert (=> d!1250502 (= res!1748109 (isEmpty!27887 lt!1508988))))

(assert (=> d!1250502 (= lt!1508988 e!2641234)))

(declare-fun c!722075 () Bool)

(declare-fun lt!1508990 () tuple2!44684)

(assert (=> d!1250502 (= c!722075 (isEmpty!27882 (_1!25476 lt!1508990)))))

(assert (=> d!1250502 (= lt!1508990 (findLongestMatch!1615 (regex!7978 (h!52544 rules!2971)) longerInput!62))))

(assert (=> d!1250502 (ruleValid!3610 thiss!21641 (h!52544 rules!2971))))

(assert (=> d!1250502 (= (maxPrefixOneRule!3476 thiss!21641 (h!52544 rules!2971) longerInput!62) lt!1508988)))

(declare-fun b!4252384 () Bool)

(declare-fun res!1748106 () Bool)

(assert (=> b!4252384 (=> (not res!1748106) (not e!2641236))))

(assert (=> b!4252384 (= res!1748106 (< (size!34493 (_2!25473 (get!15297 lt!1508988))) (size!34493 longerInput!62)))))

(declare-fun b!4252385 () Bool)

(assert (=> b!4252385 (= e!2641237 e!2641236)))

(declare-fun res!1748112 () Bool)

(assert (=> b!4252385 (=> (not res!1748112) (not e!2641236))))

(assert (=> b!4252385 (= res!1748112 (matchR!6473 (regex!7978 (h!52544 rules!2971)) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508988))))))))

(declare-fun b!4252386 () Bool)

(declare-fun res!1748107 () Bool)

(assert (=> b!4252386 (=> (not res!1748107) (not e!2641236))))

(assert (=> b!4252386 (= res!1748107 (= (rule!11112 (_1!25473 (get!15297 lt!1508988))) (h!52544 rules!2971)))))

(declare-fun b!4252387 () Bool)

(declare-fun res!1748110 () Bool)

(assert (=> b!4252387 (=> (not res!1748110) (not e!2641236))))

(assert (=> b!4252387 (= res!1748110 (= (value!247909 (_1!25473 (get!15297 lt!1508988))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508988)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508988)))))))))

(declare-fun b!4252388 () Bool)

(assert (=> b!4252388 (= e!2641236 (= (size!34492 (_1!25473 (get!15297 lt!1508988))) (size!34493 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508988))))))))

(declare-fun b!4252389 () Bool)

(declare-fun e!2641235 () Bool)

(assert (=> b!4252389 (= e!2641235 (matchR!6473 (regex!7978 (h!52544 rules!2971)) (_1!25476 (findLongestMatchInner!1712 (regex!7978 (h!52544 rules!2971)) Nil!47121 (size!34493 Nil!47121) longerInput!62 longerInput!62 (size!34493 longerInput!62)))))))

(declare-fun b!4252390 () Bool)

(assert (=> b!4252390 (= e!2641234 (Some!10111 (tuple2!44679 (Token!14583 (apply!10778 (transformation!7978 (h!52544 rules!2971)) (seqFromList!5838 (_1!25476 lt!1508990))) (h!52544 rules!2971) (size!34497 (seqFromList!5838 (_1!25476 lt!1508990))) (_1!25476 lt!1508990)) (_2!25476 lt!1508990))))))

(declare-fun lt!1508987 () Unit!66081)

(assert (=> b!4252390 (= lt!1508987 (longestMatchIsAcceptedByMatchOrIsEmpty!1675 (regex!7978 (h!52544 rules!2971)) longerInput!62))))

(declare-fun res!1748108 () Bool)

(assert (=> b!4252390 (= res!1748108 (isEmpty!27882 (_1!25476 (findLongestMatchInner!1712 (regex!7978 (h!52544 rules!2971)) Nil!47121 (size!34493 Nil!47121) longerInput!62 longerInput!62 (size!34493 longerInput!62)))))))

(assert (=> b!4252390 (=> res!1748108 e!2641235)))

(assert (=> b!4252390 e!2641235))

(declare-fun lt!1508991 () Unit!66081)

(assert (=> b!4252390 (= lt!1508991 lt!1508987)))

(declare-fun lt!1508989 () Unit!66081)

(assert (=> b!4252390 (= lt!1508989 (lemmaSemiInverse!2543 (transformation!7978 (h!52544 rules!2971)) (seqFromList!5838 (_1!25476 lt!1508990))))))

(assert (= (and d!1250502 c!722075) b!4252383))

(assert (= (and d!1250502 (not c!722075)) b!4252390))

(assert (= (and b!4252390 (not res!1748108)) b!4252389))

(assert (= (and d!1250502 (not res!1748109)) b!4252385))

(assert (= (and b!4252385 res!1748112) b!4252382))

(assert (= (and b!4252382 res!1748111) b!4252384))

(assert (= (and b!4252384 res!1748106) b!4252386))

(assert (= (and b!4252386 res!1748107) b!4252387))

(assert (= (and b!4252387 res!1748110) b!4252388))

(declare-fun m!4837303 () Bool)

(assert (=> b!4252387 m!4837303))

(declare-fun m!4837305 () Bool)

(assert (=> b!4252387 m!4837305))

(assert (=> b!4252387 m!4837305))

(declare-fun m!4837307 () Bool)

(assert (=> b!4252387 m!4837307))

(assert (=> b!4252384 m!4837303))

(declare-fun m!4837309 () Bool)

(assert (=> b!4252384 m!4837309))

(assert (=> b!4252384 m!4836153))

(assert (=> b!4252389 m!4837253))

(assert (=> b!4252389 m!4836153))

(assert (=> b!4252389 m!4837253))

(assert (=> b!4252389 m!4836153))

(declare-fun m!4837311 () Bool)

(assert (=> b!4252389 m!4837311))

(declare-fun m!4837313 () Bool)

(assert (=> b!4252389 m!4837313))

(assert (=> b!4252386 m!4837303))

(assert (=> b!4252390 m!4836153))

(declare-fun m!4837315 () Bool)

(assert (=> b!4252390 m!4837315))

(declare-fun m!4837317 () Bool)

(assert (=> b!4252390 m!4837317))

(assert (=> b!4252390 m!4837253))

(assert (=> b!4252390 m!4836153))

(assert (=> b!4252390 m!4837311))

(assert (=> b!4252390 m!4837315))

(declare-fun m!4837319 () Bool)

(assert (=> b!4252390 m!4837319))

(declare-fun m!4837321 () Bool)

(assert (=> b!4252390 m!4837321))

(assert (=> b!4252390 m!4837253))

(assert (=> b!4252390 m!4837315))

(assert (=> b!4252390 m!4837315))

(declare-fun m!4837323 () Bool)

(assert (=> b!4252390 m!4837323))

(declare-fun m!4837325 () Bool)

(assert (=> b!4252390 m!4837325))

(declare-fun m!4837327 () Bool)

(assert (=> d!1250502 m!4837327))

(declare-fun m!4837329 () Bool)

(assert (=> d!1250502 m!4837329))

(declare-fun m!4837331 () Bool)

(assert (=> d!1250502 m!4837331))

(assert (=> d!1250502 m!4836885))

(assert (=> b!4252382 m!4837303))

(declare-fun m!4837333 () Bool)

(assert (=> b!4252382 m!4837333))

(assert (=> b!4252382 m!4837333))

(declare-fun m!4837335 () Bool)

(assert (=> b!4252382 m!4837335))

(assert (=> b!4252382 m!4837335))

(declare-fun m!4837337 () Bool)

(assert (=> b!4252382 m!4837337))

(assert (=> b!4252388 m!4837303))

(declare-fun m!4837339 () Bool)

(assert (=> b!4252388 m!4837339))

(assert (=> b!4252385 m!4837303))

(assert (=> b!4252385 m!4837333))

(assert (=> b!4252385 m!4837333))

(assert (=> b!4252385 m!4837335))

(assert (=> b!4252385 m!4837335))

(declare-fun m!4837341 () Bool)

(assert (=> b!4252385 m!4837341))

(assert (=> bm!293979 d!1250502))

(declare-fun d!1250504 () Bool)

(assert (=> d!1250504 (= (inv!61895 (tag!8842 (h!52544 (t!352437 rules!2971)))) (= (mod (str.len (value!247908 (tag!8842 (h!52544 (t!352437 rules!2971))))) 2) 0))))

(assert (=> b!4251778 d!1250504))

(declare-fun d!1250506 () Bool)

(declare-fun res!1748113 () Bool)

(declare-fun e!2641238 () Bool)

(assert (=> d!1250506 (=> (not res!1748113) (not e!2641238))))

(assert (=> d!1250506 (= res!1748113 (semiInverseModEq!3481 (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toValue!10750 (transformation!7978 (h!52544 (t!352437 rules!2971))))))))

(assert (=> d!1250506 (= (inv!61898 (transformation!7978 (h!52544 (t!352437 rules!2971)))) e!2641238)))

(declare-fun b!4252391 () Bool)

(assert (=> b!4252391 (= e!2641238 (equivClasses!3380 (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toValue!10750 (transformation!7978 (h!52544 (t!352437 rules!2971))))))))

(assert (= (and d!1250506 res!1748113) b!4252391))

(declare-fun m!4837343 () Bool)

(assert (=> d!1250506 m!4837343))

(declare-fun m!4837345 () Bool)

(assert (=> b!4252391 m!4837345))

(assert (=> b!4251778 d!1250506))

(assert (=> b!4251747 d!1250454))

(assert (=> b!4251747 d!1250456))

(assert (=> b!4251747 d!1250432))

(declare-fun d!1250508 () Bool)

(assert (=> d!1250508 (= (isDefined!7466 lt!1508839) (not (isEmpty!27887 lt!1508839)))))

(declare-fun bs!598700 () Bool)

(assert (= bs!598700 d!1250508))

(assert (=> bs!598700 m!4836495))

(assert (=> b!4251760 d!1250508))

(declare-fun d!1250510 () Bool)

(declare-fun lt!1508992 () Int)

(assert (=> d!1250510 (>= lt!1508992 0)))

(declare-fun e!2641239 () Int)

(assert (=> d!1250510 (= lt!1508992 e!2641239)))

(declare-fun c!722076 () Bool)

(assert (=> d!1250510 (= c!722076 ((_ is Nil!47121) lt!1508821))))

(assert (=> d!1250510 (= (size!34493 lt!1508821) lt!1508992)))

(declare-fun b!4252392 () Bool)

(assert (=> b!4252392 (= e!2641239 0)))

(declare-fun b!4252393 () Bool)

(assert (=> b!4252393 (= e!2641239 (+ 1 (size!34493 (t!352434 lt!1508821))))))

(assert (= (and d!1250510 c!722076) b!4252392))

(assert (= (and d!1250510 (not c!722076)) b!4252393))

(declare-fun m!4837347 () Bool)

(assert (=> b!4252393 m!4837347))

(assert (=> b!4251720 d!1250510))

(declare-fun d!1250512 () Bool)

(declare-fun lt!1508993 () Int)

(assert (=> d!1250512 (>= lt!1508993 0)))

(declare-fun e!2641240 () Int)

(assert (=> d!1250512 (= lt!1508993 e!2641240)))

(declare-fun c!722077 () Bool)

(assert (=> d!1250512 (= c!722077 ((_ is Nil!47121) lt!1508748))))

(assert (=> d!1250512 (= (size!34493 lt!1508748) lt!1508993)))

(declare-fun b!4252394 () Bool)

(assert (=> b!4252394 (= e!2641240 0)))

(declare-fun b!4252395 () Bool)

(assert (=> b!4252395 (= e!2641240 (+ 1 (size!34493 (t!352434 lt!1508748))))))

(assert (= (and d!1250512 c!722077) b!4252394))

(assert (= (and d!1250512 (not c!722077)) b!4252395))

(assert (=> b!4252395 m!4836971))

(assert (=> b!4251720 d!1250512))

(assert (=> b!4251720 d!1250146))

(declare-fun b!4252398 () Bool)

(declare-fun e!2641242 () List!47245)

(assert (=> b!4252398 (= e!2641242 (list!16979 (xs!17495 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746)))))))))

(declare-fun d!1250514 () Bool)

(declare-fun c!722078 () Bool)

(assert (=> d!1250514 (= c!722078 ((_ is Empty!14189) (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746))))))))

(declare-fun e!2641241 () List!47245)

(assert (=> d!1250514 (= (list!16978 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746))))) e!2641241)))

(declare-fun b!4252397 () Bool)

(assert (=> b!4252397 (= e!2641241 e!2641242)))

(declare-fun c!722079 () Bool)

(assert (=> b!4252397 (= c!722079 ((_ is Leaf!21937) (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746))))))))

(declare-fun b!4252399 () Bool)

(assert (=> b!4252399 (= e!2641242 (++!11987 (list!16978 (left!34940 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746)))))) (list!16978 (right!35270 (c!721900 (charsOf!5318 (_1!25473 (v!41069 lt!1508746))))))))))

(declare-fun b!4252396 () Bool)

(assert (=> b!4252396 (= e!2641241 Nil!47121)))

(assert (= (and d!1250514 c!722078) b!4252396))

(assert (= (and d!1250514 (not c!722078)) b!4252397))

(assert (= (and b!4252397 c!722079) b!4252398))

(assert (= (and b!4252397 (not c!722079)) b!4252399))

(declare-fun m!4837349 () Bool)

(assert (=> b!4252398 m!4837349))

(declare-fun m!4837351 () Bool)

(assert (=> b!4252399 m!4837351))

(declare-fun m!4837353 () Bool)

(assert (=> b!4252399 m!4837353))

(assert (=> b!4252399 m!4837351))

(assert (=> b!4252399 m!4837353))

(declare-fun m!4837355 () Bool)

(assert (=> b!4252399 m!4837355))

(assert (=> d!1250140 d!1250514))

(declare-fun b!4252400 () Bool)

(declare-fun e!2641245 () tuple2!44680)

(declare-fun lt!1508994 () Option!10112)

(declare-fun lt!1508996 () tuple2!44680)

(assert (=> b!4252400 (= e!2641245 (tuple2!44681 (Cons!47123 (_1!25473 (v!41069 lt!1508994)) (_1!25474 lt!1508996)) (_2!25474 lt!1508996)))))

(assert (=> b!4252400 (= lt!1508996 (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508994))))))

(declare-fun b!4252401 () Bool)

(declare-fun e!2641243 () Bool)

(declare-fun e!2641244 () Bool)

(assert (=> b!4252401 (= e!2641243 e!2641244)))

(declare-fun res!1748114 () Bool)

(declare-fun lt!1508995 () tuple2!44680)

(assert (=> b!4252401 (= res!1748114 (< (size!34493 (_2!25474 lt!1508995)) (size!34493 (_2!25473 (v!41069 lt!1508813)))))))

(assert (=> b!4252401 (=> (not res!1748114) (not e!2641244))))

(declare-fun b!4252402 () Bool)

(assert (=> b!4252402 (= e!2641244 (not (isEmpty!27886 (_1!25474 lt!1508995))))))

(declare-fun b!4252403 () Bool)

(assert (=> b!4252403 (= e!2641245 (tuple2!44681 Nil!47123 (_2!25473 (v!41069 lt!1508813))))))

(declare-fun d!1250516 () Bool)

(assert (=> d!1250516 e!2641243))

(declare-fun c!722080 () Bool)

(assert (=> d!1250516 (= c!722080 (> (size!34495 (_1!25474 lt!1508995)) 0))))

(assert (=> d!1250516 (= lt!1508995 e!2641245)))

(declare-fun c!722081 () Bool)

(assert (=> d!1250516 (= c!722081 ((_ is Some!10111) lt!1508994))))

(assert (=> d!1250516 (= lt!1508994 (maxPrefix!4529 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508813))))))

(assert (=> d!1250516 (= (lexList!2079 thiss!21641 rules!2971 (_2!25473 (v!41069 lt!1508813))) lt!1508995)))

(declare-fun b!4252404 () Bool)

(assert (=> b!4252404 (= e!2641243 (= (_2!25474 lt!1508995) (_2!25473 (v!41069 lt!1508813))))))

(assert (= (and d!1250516 c!722081) b!4252400))

(assert (= (and d!1250516 (not c!722081)) b!4252403))

(assert (= (and d!1250516 c!722080) b!4252401))

(assert (= (and d!1250516 (not c!722080)) b!4252404))

(assert (= (and b!4252401 res!1748114) b!4252402))

(declare-fun m!4837357 () Bool)

(assert (=> b!4252400 m!4837357))

(declare-fun m!4837359 () Bool)

(assert (=> b!4252401 m!4837359))

(declare-fun m!4837361 () Bool)

(assert (=> b!4252401 m!4837361))

(declare-fun m!4837363 () Bool)

(assert (=> b!4252402 m!4837363))

(declare-fun m!4837365 () Bool)

(assert (=> d!1250516 m!4837365))

(declare-fun m!4837367 () Bool)

(assert (=> d!1250516 m!4837367))

(assert (=> b!4251662 d!1250516))

(assert (=> b!4251756 d!1250358))

(assert (=> b!4251756 d!1250360))

(assert (=> b!4251756 d!1250362))

(assert (=> b!4251745 d!1250432))

(declare-fun d!1250518 () Bool)

(assert (=> d!1250518 (= (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834))))) (dynLambda!20191 (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun b_lambda!125275 () Bool)

(assert (=> (not b_lambda!125275) (not d!1250518)))

(declare-fun tb!256523 () Bool)

(declare-fun t!352595 () Bool)

(assert (=> (and b!4251462 (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352595) tb!256523))

(declare-fun result!312850 () Bool)

(assert (=> tb!256523 (= result!312850 (inv!21 (dynLambda!20191 (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834)))))))))

(declare-fun m!4837369 () Bool)

(assert (=> tb!256523 m!4837369))

(assert (=> d!1250518 t!352595))

(declare-fun b_and!337197 () Bool)

(assert (= b_and!337189 (and (=> t!352595 result!312850) b_and!337197)))

(declare-fun t!352597 () Bool)

(declare-fun tb!256525 () Bool)

(assert (=> (and b!4251471 (= (toValue!10750 (transformation!7978 (h!52544 rules!2971))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352597) tb!256525))

(declare-fun result!312852 () Bool)

(assert (= result!312852 result!312850))

(assert (=> d!1250518 t!352597))

(declare-fun b_and!337199 () Bool)

(assert (= b_and!337191 (and (=> t!352597 result!312852) b_and!337199)))

(declare-fun t!352599 () Bool)

(declare-fun tb!256527 () Bool)

(assert (=> (and b!4251779 (= (toValue!10750 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352599) tb!256527))

(declare-fun result!312854 () Bool)

(assert (= result!312854 result!312850))

(assert (=> d!1250518 t!352599))

(declare-fun b_and!337201 () Bool)

(assert (= b_and!337193 (and (=> t!352599 result!312854) b_and!337201)))

(declare-fun tb!256529 () Bool)

(declare-fun t!352601 () Bool)

(assert (=> (and b!4251793 (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352601) tb!256529))

(declare-fun result!312856 () Bool)

(assert (= result!312856 result!312850))

(assert (=> d!1250518 t!352601))

(declare-fun b_and!337203 () Bool)

(assert (= b_and!337195 (and (=> t!352601 result!312856) b_and!337203)))

(assert (=> d!1250518 m!4836459))

(declare-fun m!4837371 () Bool)

(assert (=> d!1250518 m!4837371))

(assert (=> b!4251745 d!1250518))

(declare-fun d!1250520 () Bool)

(assert (=> d!1250520 (= (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834)))) (fromListB!2655 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508834)))))))

(declare-fun bs!598701 () Bool)

(assert (= bs!598701 d!1250520))

(declare-fun m!4837373 () Bool)

(assert (=> bs!598701 m!4837373))

(assert (=> b!4251745 d!1250520))

(declare-fun d!1250522 () Bool)

(assert (=> d!1250522 (= (isEmpty!27886 (_1!25474 lt!1508814)) ((_ is Nil!47123) (_1!25474 lt!1508814)))))

(assert (=> b!4251664 d!1250522))

(declare-fun bs!598702 () Bool)

(declare-fun d!1250524 () Bool)

(assert (= bs!598702 (and d!1250524 d!1250226)))

(declare-fun lambda!130288 () Int)

(assert (=> bs!598702 (= (and (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (h!52544 rules!2971)))) (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (h!52544 rules!2971))))) (= lambda!130288 lambda!130273))))

(assert (=> d!1250524 true))

(assert (=> d!1250524 (< (dynLambda!20185 order!24759 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) (dynLambda!20186 order!24761 lambda!130288))))

(assert (=> d!1250524 true))

(assert (=> d!1250524 (< (dynLambda!20187 order!24763 (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) (dynLambda!20186 order!24761 lambda!130288))))

(assert (=> d!1250524 (= (semiInverseModEq!3481 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) (Forall!1605 lambda!130288))))

(declare-fun bs!598703 () Bool)

(assert (= bs!598703 d!1250524))

(declare-fun m!4837375 () Bool)

(assert (=> bs!598703 m!4837375))

(assert (=> d!1250202 d!1250524))

(declare-fun d!1250526 () Bool)

(declare-fun lt!1508997 () Bool)

(assert (=> d!1250526 (= lt!1508997 (select (content!7407 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))

(declare-fun e!2641248 () Bool)

(assert (=> d!1250526 (= lt!1508997 e!2641248)))

(declare-fun res!1748116 () Bool)

(assert (=> d!1250526 (=> (not res!1748116) (not e!2641248))))

(assert (=> d!1250526 (= res!1748116 ((_ is Cons!47124) rules!2971))))

(assert (=> d!1250526 (= (contains!9763 rules!2971 (rule!11112 (_1!25473 (get!15297 lt!1508839)))) lt!1508997)))

(declare-fun b!4252405 () Bool)

(declare-fun e!2641247 () Bool)

(assert (=> b!4252405 (= e!2641248 e!2641247)))

(declare-fun res!1748115 () Bool)

(assert (=> b!4252405 (=> res!1748115 e!2641247)))

(assert (=> b!4252405 (= res!1748115 (= (h!52544 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))

(declare-fun b!4252406 () Bool)

(assert (=> b!4252406 (= e!2641247 (contains!9763 (t!352437 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508839)))))))

(assert (= (and d!1250526 res!1748116) b!4252405))

(assert (= (and b!4252405 (not res!1748115)) b!4252406))

(assert (=> d!1250526 m!4837199))

(declare-fun m!4837377 () Bool)

(assert (=> d!1250526 m!4837377))

(declare-fun m!4837379 () Bool)

(assert (=> b!4252406 m!4837379))

(assert (=> b!4251758 d!1250526))

(assert (=> b!4251758 d!1250362))

(declare-fun d!1250528 () Bool)

(assert (=> d!1250528 (= (isEmpty!27886 (_1!25474 lt!1508819)) ((_ is Nil!47123) (_1!25474 lt!1508819)))))

(assert (=> b!4251706 d!1250528))

(declare-fun call!293996 () Option!10112)

(declare-fun bm!293991 () Bool)

(assert (=> bm!293991 (= call!293996 (maxPrefixOneRule!3476 thiss!21641 (h!52544 (t!352437 rules!2971)) shorterInput!62))))

(declare-fun b!4252407 () Bool)

(declare-fun e!2641249 () Option!10112)

(assert (=> b!4252407 (= e!2641249 call!293996)))

(declare-fun b!4252408 () Bool)

(declare-fun res!1748117 () Bool)

(declare-fun e!2641251 () Bool)

(assert (=> b!4252408 (=> (not res!1748117) (not e!2641251))))

(declare-fun lt!1508999 () Option!10112)

(assert (=> b!4252408 (= res!1748117 (= (value!247909 (_1!25473 (get!15297 lt!1508999))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508999)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1508999)))))))))

(declare-fun b!4252409 () Bool)

(declare-fun res!1748120 () Bool)

(assert (=> b!4252409 (=> (not res!1748120) (not e!2641251))))

(assert (=> b!4252409 (= res!1748120 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508999)))) (_2!25473 (get!15297 lt!1508999))) shorterInput!62))))

(declare-fun b!4252410 () Bool)

(declare-fun res!1748122 () Bool)

(assert (=> b!4252410 (=> (not res!1748122) (not e!2641251))))

(assert (=> b!4252410 (= res!1748122 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508999)))) (originalCharacters!8322 (_1!25473 (get!15297 lt!1508999)))))))

(declare-fun d!1250530 () Bool)

(declare-fun e!2641250 () Bool)

(assert (=> d!1250530 e!2641250))

(declare-fun res!1748118 () Bool)

(assert (=> d!1250530 (=> res!1748118 e!2641250)))

(assert (=> d!1250530 (= res!1748118 (isEmpty!27887 lt!1508999))))

(assert (=> d!1250530 (= lt!1508999 e!2641249)))

(declare-fun c!722082 () Bool)

(assert (=> d!1250530 (= c!722082 (and ((_ is Cons!47124) (t!352437 rules!2971)) ((_ is Nil!47124) (t!352437 (t!352437 rules!2971)))))))

(declare-fun lt!1509000 () Unit!66081)

(declare-fun lt!1508998 () Unit!66081)

(assert (=> d!1250530 (= lt!1509000 lt!1508998)))

(assert (=> d!1250530 (isPrefix!4751 shorterInput!62 shorterInput!62)))

(assert (=> d!1250530 (= lt!1508998 (lemmaIsPrefixRefl!3148 shorterInput!62 shorterInput!62))))

(assert (=> d!1250530 (rulesValidInductive!3002 thiss!21641 (t!352437 rules!2971))))

(assert (=> d!1250530 (= (maxPrefix!4529 thiss!21641 (t!352437 rules!2971) shorterInput!62) lt!1508999)))

(declare-fun b!4252411 () Bool)

(declare-fun res!1748119 () Bool)

(assert (=> b!4252411 (=> (not res!1748119) (not e!2641251))))

(assert (=> b!4252411 (= res!1748119 (< (size!34493 (_2!25473 (get!15297 lt!1508999))) (size!34493 shorterInput!62)))))

(declare-fun b!4252412 () Bool)

(assert (=> b!4252412 (= e!2641251 (contains!9763 (t!352437 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1508999)))))))

(declare-fun b!4252413 () Bool)

(declare-fun res!1748123 () Bool)

(assert (=> b!4252413 (=> (not res!1748123) (not e!2641251))))

(assert (=> b!4252413 (= res!1748123 (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508999)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508999))))))))

(declare-fun b!4252414 () Bool)

(assert (=> b!4252414 (= e!2641250 e!2641251)))

(declare-fun res!1748121 () Bool)

(assert (=> b!4252414 (=> (not res!1748121) (not e!2641251))))

(assert (=> b!4252414 (= res!1748121 (isDefined!7466 lt!1508999))))

(declare-fun b!4252415 () Bool)

(declare-fun lt!1509002 () Option!10112)

(declare-fun lt!1509001 () Option!10112)

(assert (=> b!4252415 (= e!2641249 (ite (and ((_ is None!10111) lt!1509002) ((_ is None!10111) lt!1509001)) None!10111 (ite ((_ is None!10111) lt!1509001) lt!1509002 (ite ((_ is None!10111) lt!1509002) lt!1509001 (ite (>= (size!34492 (_1!25473 (v!41069 lt!1509002))) (size!34492 (_1!25473 (v!41069 lt!1509001)))) lt!1509002 lt!1509001)))))))

(assert (=> b!4252415 (= lt!1509002 call!293996)))

(assert (=> b!4252415 (= lt!1509001 (maxPrefix!4529 thiss!21641 (t!352437 (t!352437 rules!2971)) shorterInput!62))))

(assert (= (and d!1250530 c!722082) b!4252407))

(assert (= (and d!1250530 (not c!722082)) b!4252415))

(assert (= (or b!4252407 b!4252415) bm!293991))

(assert (= (and d!1250530 (not res!1748118)) b!4252414))

(assert (= (and b!4252414 res!1748121) b!4252410))

(assert (= (and b!4252410 res!1748122) b!4252411))

(assert (= (and b!4252411 res!1748119) b!4252409))

(assert (= (and b!4252409 res!1748120) b!4252408))

(assert (= (and b!4252408 res!1748117) b!4252413))

(assert (= (and b!4252413 res!1748123) b!4252412))

(declare-fun m!4837381 () Bool)

(assert (=> b!4252408 m!4837381))

(declare-fun m!4837383 () Bool)

(assert (=> b!4252408 m!4837383))

(assert (=> b!4252408 m!4837383))

(declare-fun m!4837385 () Bool)

(assert (=> b!4252408 m!4837385))

(declare-fun m!4837387 () Bool)

(assert (=> d!1250530 m!4837387))

(assert (=> d!1250530 m!4836465))

(assert (=> d!1250530 m!4836467))

(assert (=> d!1250530 m!4836887))

(assert (=> b!4252409 m!4837381))

(declare-fun m!4837389 () Bool)

(assert (=> b!4252409 m!4837389))

(assert (=> b!4252409 m!4837389))

(declare-fun m!4837391 () Bool)

(assert (=> b!4252409 m!4837391))

(assert (=> b!4252409 m!4837391))

(declare-fun m!4837393 () Bool)

(assert (=> b!4252409 m!4837393))

(declare-fun m!4837395 () Bool)

(assert (=> b!4252414 m!4837395))

(declare-fun m!4837397 () Bool)

(assert (=> bm!293991 m!4837397))

(assert (=> b!4252413 m!4837381))

(assert (=> b!4252413 m!4837389))

(assert (=> b!4252413 m!4837389))

(assert (=> b!4252413 m!4837391))

(assert (=> b!4252413 m!4837391))

(declare-fun m!4837399 () Bool)

(assert (=> b!4252413 m!4837399))

(assert (=> b!4252411 m!4837381))

(declare-fun m!4837401 () Bool)

(assert (=> b!4252411 m!4837401))

(assert (=> b!4252411 m!4836151))

(assert (=> b!4252410 m!4837381))

(assert (=> b!4252410 m!4837389))

(assert (=> b!4252410 m!4837389))

(assert (=> b!4252410 m!4837391))

(declare-fun m!4837403 () Bool)

(assert (=> b!4252415 m!4837403))

(assert (=> b!4252412 m!4837381))

(declare-fun m!4837405 () Bool)

(assert (=> b!4252412 m!4837405))

(assert (=> b!4251752 d!1250530))

(declare-fun d!1250532 () Bool)

(assert (=> d!1250532 (= (isEmpty!27882 (originalCharacters!8322 (h!52543 tokens!592))) ((_ is Nil!47121) (originalCharacters!8322 (h!52543 tokens!592))))))

(assert (=> d!1250148 d!1250532))

(declare-fun d!1250534 () Bool)

(declare-fun e!2641252 () Bool)

(assert (=> d!1250534 e!2641252))

(declare-fun res!1748124 () Bool)

(assert (=> d!1250534 (=> (not res!1748124) (not e!2641252))))

(declare-fun lt!1509003 () List!47245)

(assert (=> d!1250534 (= res!1748124 (= (content!7406 lt!1509003) ((_ map or) (content!7406 (t!352434 lt!1508745)) (content!7406 (_2!25473 (v!41069 lt!1508746))))))))

(declare-fun e!2641253 () List!47245)

(assert (=> d!1250534 (= lt!1509003 e!2641253)))

(declare-fun c!722083 () Bool)

(assert (=> d!1250534 (= c!722083 ((_ is Nil!47121) (t!352434 lt!1508745)))))

(assert (=> d!1250534 (= (++!11987 (t!352434 lt!1508745) (_2!25473 (v!41069 lt!1508746))) lt!1509003)))

(declare-fun b!4252417 () Bool)

(assert (=> b!4252417 (= e!2641253 (Cons!47121 (h!52541 (t!352434 lt!1508745)) (++!11987 (t!352434 (t!352434 lt!1508745)) (_2!25473 (v!41069 lt!1508746)))))))

(declare-fun b!4252416 () Bool)

(assert (=> b!4252416 (= e!2641253 (_2!25473 (v!41069 lt!1508746)))))

(declare-fun b!4252418 () Bool)

(declare-fun res!1748125 () Bool)

(assert (=> b!4252418 (=> (not res!1748125) (not e!2641252))))

(assert (=> b!4252418 (= res!1748125 (= (size!34493 lt!1509003) (+ (size!34493 (t!352434 lt!1508745)) (size!34493 (_2!25473 (v!41069 lt!1508746))))))))

(declare-fun b!4252419 () Bool)

(assert (=> b!4252419 (= e!2641252 (or (not (= (_2!25473 (v!41069 lt!1508746)) Nil!47121)) (= lt!1509003 (t!352434 lt!1508745))))))

(assert (= (and d!1250534 c!722083) b!4252416))

(assert (= (and d!1250534 (not c!722083)) b!4252417))

(assert (= (and d!1250534 res!1748124) b!4252418))

(assert (= (and b!4252418 res!1748125) b!4252419))

(declare-fun m!4837407 () Bool)

(assert (=> d!1250534 m!4837407))

(assert (=> d!1250534 m!4837293))

(assert (=> d!1250534 m!4836209))

(declare-fun m!4837409 () Bool)

(assert (=> b!4252417 m!4837409))

(declare-fun m!4837411 () Bool)

(assert (=> b!4252418 m!4837411))

(assert (=> b!4252418 m!4837207))

(assert (=> b!4252418 m!4836175))

(assert (=> b!4251516 d!1250534))

(declare-fun bm!293992 () Bool)

(declare-fun call!293997 () Option!10112)

(assert (=> bm!293992 (= call!293997 (maxPrefixOneRule!3476 thiss!21641 (h!52544 (t!352437 rules!2971)) longerInput!62))))

(declare-fun b!4252420 () Bool)

(declare-fun e!2641254 () Option!10112)

(assert (=> b!4252420 (= e!2641254 call!293997)))

(declare-fun b!4252421 () Bool)

(declare-fun res!1748126 () Bool)

(declare-fun e!2641256 () Bool)

(assert (=> b!4252421 (=> (not res!1748126) (not e!2641256))))

(declare-fun lt!1509005 () Option!10112)

(assert (=> b!4252421 (= res!1748126 (= (value!247909 (_1!25473 (get!15297 lt!1509005))) (apply!10778 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1509005)))) (seqFromList!5838 (originalCharacters!8322 (_1!25473 (get!15297 lt!1509005)))))))))

(declare-fun b!4252422 () Bool)

(declare-fun res!1748129 () Bool)

(assert (=> b!4252422 (=> (not res!1748129) (not e!2641256))))

(assert (=> b!4252422 (= res!1748129 (= (++!11987 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1509005)))) (_2!25473 (get!15297 lt!1509005))) longerInput!62))))

(declare-fun b!4252423 () Bool)

(declare-fun res!1748131 () Bool)

(assert (=> b!4252423 (=> (not res!1748131) (not e!2641256))))

(assert (=> b!4252423 (= res!1748131 (= (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1509005)))) (originalCharacters!8322 (_1!25473 (get!15297 lt!1509005)))))))

(declare-fun d!1250536 () Bool)

(declare-fun e!2641255 () Bool)

(assert (=> d!1250536 e!2641255))

(declare-fun res!1748127 () Bool)

(assert (=> d!1250536 (=> res!1748127 e!2641255)))

(assert (=> d!1250536 (= res!1748127 (isEmpty!27887 lt!1509005))))

(assert (=> d!1250536 (= lt!1509005 e!2641254)))

(declare-fun c!722084 () Bool)

(assert (=> d!1250536 (= c!722084 (and ((_ is Cons!47124) (t!352437 rules!2971)) ((_ is Nil!47124) (t!352437 (t!352437 rules!2971)))))))

(declare-fun lt!1509006 () Unit!66081)

(declare-fun lt!1509004 () Unit!66081)

(assert (=> d!1250536 (= lt!1509006 lt!1509004)))

(assert (=> d!1250536 (isPrefix!4751 longerInput!62 longerInput!62)))

(assert (=> d!1250536 (= lt!1509004 (lemmaIsPrefixRefl!3148 longerInput!62 longerInput!62))))

(assert (=> d!1250536 (rulesValidInductive!3002 thiss!21641 (t!352437 rules!2971))))

(assert (=> d!1250536 (= (maxPrefix!4529 thiss!21641 (t!352437 rules!2971) longerInput!62) lt!1509005)))

(declare-fun b!4252424 () Bool)

(declare-fun res!1748128 () Bool)

(assert (=> b!4252424 (=> (not res!1748128) (not e!2641256))))

(assert (=> b!4252424 (= res!1748128 (< (size!34493 (_2!25473 (get!15297 lt!1509005))) (size!34493 longerInput!62)))))

(declare-fun b!4252425 () Bool)

(assert (=> b!4252425 (= e!2641256 (contains!9763 (t!352437 rules!2971) (rule!11112 (_1!25473 (get!15297 lt!1509005)))))))

(declare-fun b!4252426 () Bool)

(declare-fun res!1748132 () Bool)

(assert (=> b!4252426 (=> (not res!1748132) (not e!2641256))))

(assert (=> b!4252426 (= res!1748132 (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1509005)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1509005))))))))

(declare-fun b!4252427 () Bool)

(assert (=> b!4252427 (= e!2641255 e!2641256)))

(declare-fun res!1748130 () Bool)

(assert (=> b!4252427 (=> (not res!1748130) (not e!2641256))))

(assert (=> b!4252427 (= res!1748130 (isDefined!7466 lt!1509005))))

(declare-fun b!4252428 () Bool)

(declare-fun lt!1509008 () Option!10112)

(declare-fun lt!1509007 () Option!10112)

(assert (=> b!4252428 (= e!2641254 (ite (and ((_ is None!10111) lt!1509008) ((_ is None!10111) lt!1509007)) None!10111 (ite ((_ is None!10111) lt!1509007) lt!1509008 (ite ((_ is None!10111) lt!1509008) lt!1509007 (ite (>= (size!34492 (_1!25473 (v!41069 lt!1509008))) (size!34492 (_1!25473 (v!41069 lt!1509007)))) lt!1509008 lt!1509007)))))))

(assert (=> b!4252428 (= lt!1509008 call!293997)))

(assert (=> b!4252428 (= lt!1509007 (maxPrefix!4529 thiss!21641 (t!352437 (t!352437 rules!2971)) longerInput!62))))

(assert (= (and d!1250536 c!722084) b!4252420))

(assert (= (and d!1250536 (not c!722084)) b!4252428))

(assert (= (or b!4252420 b!4252428) bm!293992))

(assert (= (and d!1250536 (not res!1748127)) b!4252427))

(assert (= (and b!4252427 res!1748130) b!4252423))

(assert (= (and b!4252423 res!1748131) b!4252424))

(assert (= (and b!4252424 res!1748128) b!4252422))

(assert (= (and b!4252422 res!1748129) b!4252421))

(assert (= (and b!4252421 res!1748126) b!4252426))

(assert (= (and b!4252426 res!1748132) b!4252425))

(declare-fun m!4837413 () Bool)

(assert (=> b!4252421 m!4837413))

(declare-fun m!4837415 () Bool)

(assert (=> b!4252421 m!4837415))

(assert (=> b!4252421 m!4837415))

(declare-fun m!4837417 () Bool)

(assert (=> b!4252421 m!4837417))

(declare-fun m!4837419 () Bool)

(assert (=> d!1250536 m!4837419))

(assert (=> d!1250536 m!4836497))

(assert (=> d!1250536 m!4836499))

(assert (=> d!1250536 m!4836887))

(assert (=> b!4252422 m!4837413))

(declare-fun m!4837421 () Bool)

(assert (=> b!4252422 m!4837421))

(assert (=> b!4252422 m!4837421))

(declare-fun m!4837423 () Bool)

(assert (=> b!4252422 m!4837423))

(assert (=> b!4252422 m!4837423))

(declare-fun m!4837425 () Bool)

(assert (=> b!4252422 m!4837425))

(declare-fun m!4837427 () Bool)

(assert (=> b!4252427 m!4837427))

(declare-fun m!4837429 () Bool)

(assert (=> bm!293992 m!4837429))

(assert (=> b!4252426 m!4837413))

(assert (=> b!4252426 m!4837421))

(assert (=> b!4252426 m!4837421))

(assert (=> b!4252426 m!4837423))

(assert (=> b!4252426 m!4837423))

(declare-fun m!4837431 () Bool)

(assert (=> b!4252426 m!4837431))

(assert (=> b!4252424 m!4837413))

(declare-fun m!4837433 () Bool)

(assert (=> b!4252424 m!4837433))

(assert (=> b!4252424 m!4836153))

(assert (=> b!4252423 m!4837413))

(assert (=> b!4252423 m!4837421))

(assert (=> b!4252423 m!4837421))

(assert (=> b!4252423 m!4837423))

(declare-fun m!4837435 () Bool)

(assert (=> b!4252428 m!4837435))

(assert (=> b!4252425 m!4837413))

(declare-fun m!4837437 () Bool)

(assert (=> b!4252425 m!4837437))

(assert (=> b!4251761 d!1250536))

(declare-fun d!1250538 () Bool)

(declare-fun lt!1509009 () Int)

(assert (=> d!1250538 (>= lt!1509009 0)))

(declare-fun e!2641257 () Int)

(assert (=> d!1250538 (= lt!1509009 e!2641257)))

(declare-fun c!722085 () Bool)

(assert (=> d!1250538 (= c!722085 ((_ is Nil!47121) (_2!25474 lt!1508819)))))

(assert (=> d!1250538 (= (size!34493 (_2!25474 lt!1508819)) lt!1509009)))

(declare-fun b!4252429 () Bool)

(assert (=> b!4252429 (= e!2641257 0)))

(declare-fun b!4252430 () Bool)

(assert (=> b!4252430 (= e!2641257 (+ 1 (size!34493 (t!352434 (_2!25474 lt!1508819)))))))

(assert (= (and d!1250538 c!722085) b!4252429))

(assert (= (and d!1250538 (not c!722085)) b!4252430))

(declare-fun m!4837439 () Bool)

(assert (=> b!4252430 m!4837439))

(assert (=> b!4251705 d!1250538))

(assert (=> b!4251705 d!1250206))

(declare-fun b!4252431 () Bool)

(declare-fun e!2641258 () Bool)

(assert (=> b!4252431 (= e!2641258 (matchR!6473 (derivativeStep!3856 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))) (head!8995 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))))) (tail!6858 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))))))))

(declare-fun b!4252432 () Bool)

(declare-fun res!1748138 () Bool)

(declare-fun e!2641263 () Bool)

(assert (=> b!4252432 (=> res!1748138 e!2641263)))

(assert (=> b!4252432 (= res!1748138 (not (isEmpty!27882 (tail!6858 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))))))))

(declare-fun b!4252433 () Bool)

(assert (=> b!4252433 (= e!2641258 (nullable!4526 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun b!4252434 () Bool)

(declare-fun res!1748140 () Bool)

(declare-fun e!2641262 () Bool)

(assert (=> b!4252434 (=> res!1748140 e!2641262)))

(assert (=> b!4252434 (= res!1748140 (not ((_ is ElementMatch!12883) (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))))

(declare-fun e!2641260 () Bool)

(assert (=> b!4252434 (= e!2641260 e!2641262)))

(declare-fun b!4252435 () Bool)

(declare-fun res!1748139 () Bool)

(declare-fun e!2641264 () Bool)

(assert (=> b!4252435 (=> (not res!1748139) (not e!2641264))))

(assert (=> b!4252435 (= res!1748139 (isEmpty!27882 (tail!6858 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834)))))))))

(declare-fun d!1250540 () Bool)

(declare-fun e!2641259 () Bool)

(assert (=> d!1250540 e!2641259))

(declare-fun c!722087 () Bool)

(assert (=> d!1250540 (= c!722087 ((_ is EmptyExpr!12883) (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun lt!1509010 () Bool)

(assert (=> d!1250540 (= lt!1509010 e!2641258)))

(declare-fun c!722086 () Bool)

(assert (=> d!1250540 (= c!722086 (isEmpty!27882 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))))))

(assert (=> d!1250540 (validRegex!5833 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))

(assert (=> d!1250540 (= (matchR!6473 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))) (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) lt!1509010)))

(declare-fun b!4252436 () Bool)

(assert (=> b!4252436 (= e!2641264 (= (head!8995 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) (c!721901 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))))))

(declare-fun b!4252437 () Bool)

(declare-fun res!1748134 () Bool)

(assert (=> b!4252437 (=> res!1748134 e!2641262)))

(assert (=> b!4252437 (= res!1748134 e!2641264)))

(declare-fun res!1748133 () Bool)

(assert (=> b!4252437 (=> (not res!1748133) (not e!2641264))))

(assert (=> b!4252437 (= res!1748133 lt!1509010)))

(declare-fun b!4252438 () Bool)

(declare-fun call!293998 () Bool)

(assert (=> b!4252438 (= e!2641259 (= lt!1509010 call!293998))))

(declare-fun b!4252439 () Bool)

(assert (=> b!4252439 (= e!2641263 (not (= (head!8995 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))) (c!721901 (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))))))))

(declare-fun bm!293993 () Bool)

(assert (=> bm!293993 (= call!293998 (isEmpty!27882 (list!16976 (charsOf!5318 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun b!4252440 () Bool)

(assert (=> b!4252440 (= e!2641259 e!2641260)))

(declare-fun c!722088 () Bool)

(assert (=> b!4252440 (= c!722088 ((_ is EmptyLang!12883) (regex!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834))))))))

(declare-fun b!4252441 () Bool)

(declare-fun res!1748137 () Bool)

(assert (=> b!4252441 (=> (not res!1748137) (not e!2641264))))

(assert (=> b!4252441 (= res!1748137 (not call!293998))))

(declare-fun b!4252442 () Bool)

(assert (=> b!4252442 (= e!2641260 (not lt!1509010))))

(declare-fun b!4252443 () Bool)

(declare-fun e!2641261 () Bool)

(assert (=> b!4252443 (= e!2641262 e!2641261)))

(declare-fun res!1748135 () Bool)

(assert (=> b!4252443 (=> (not res!1748135) (not e!2641261))))

(assert (=> b!4252443 (= res!1748135 (not lt!1509010))))

(declare-fun b!4252444 () Bool)

(assert (=> b!4252444 (= e!2641261 e!2641263)))

(declare-fun res!1748136 () Bool)

(assert (=> b!4252444 (=> res!1748136 e!2641263)))

(assert (=> b!4252444 (= res!1748136 call!293998)))

(assert (= (and d!1250540 c!722086) b!4252433))

(assert (= (and d!1250540 (not c!722086)) b!4252431))

(assert (= (and d!1250540 c!722087) b!4252438))

(assert (= (and d!1250540 (not c!722087)) b!4252440))

(assert (= (and b!4252440 c!722088) b!4252442))

(assert (= (and b!4252440 (not c!722088)) b!4252434))

(assert (= (and b!4252434 (not res!1748140)) b!4252437))

(assert (= (and b!4252437 res!1748133) b!4252441))

(assert (= (and b!4252441 res!1748137) b!4252435))

(assert (= (and b!4252435 res!1748139) b!4252436))

(assert (= (and b!4252437 (not res!1748134)) b!4252443))

(assert (= (and b!4252443 res!1748135) b!4252444))

(assert (= (and b!4252444 (not res!1748136)) b!4252432))

(assert (= (and b!4252432 (not res!1748138)) b!4252439))

(assert (= (or b!4252438 b!4252441 b!4252444) bm!293993))

(assert (=> b!4252435 m!4836473))

(declare-fun m!4837441 () Bool)

(assert (=> b!4252435 m!4837441))

(assert (=> b!4252435 m!4837441))

(declare-fun m!4837443 () Bool)

(assert (=> b!4252435 m!4837443))

(assert (=> b!4252432 m!4836473))

(assert (=> b!4252432 m!4837441))

(assert (=> b!4252432 m!4837441))

(assert (=> b!4252432 m!4837443))

(assert (=> bm!293993 m!4836473))

(declare-fun m!4837445 () Bool)

(assert (=> bm!293993 m!4837445))

(assert (=> b!4252436 m!4836473))

(declare-fun m!4837447 () Bool)

(assert (=> b!4252436 m!4837447))

(assert (=> b!4252439 m!4836473))

(assert (=> b!4252439 m!4837447))

(assert (=> d!1250540 m!4836473))

(assert (=> d!1250540 m!4837445))

(declare-fun m!4837449 () Bool)

(assert (=> d!1250540 m!4837449))

(declare-fun m!4837451 () Bool)

(assert (=> b!4252433 m!4837451))

(assert (=> b!4252431 m!4836473))

(assert (=> b!4252431 m!4837447))

(assert (=> b!4252431 m!4837447))

(declare-fun m!4837453 () Bool)

(assert (=> b!4252431 m!4837453))

(assert (=> b!4252431 m!4836473))

(assert (=> b!4252431 m!4837441))

(assert (=> b!4252431 m!4837453))

(assert (=> b!4252431 m!4837441))

(declare-fun m!4837455 () Bool)

(assert (=> b!4252431 m!4837455))

(assert (=> b!4251750 d!1250540))

(assert (=> b!4251750 d!1250432))

(assert (=> b!4251750 d!1250454))

(assert (=> b!4251750 d!1250456))

(declare-fun d!1250542 () Bool)

(declare-fun res!1748145 () Bool)

(declare-fun e!2641269 () Bool)

(assert (=> d!1250542 (=> res!1748145 e!2641269)))

(assert (=> d!1250542 (= res!1748145 ((_ is Nil!47124) rules!2971))))

(assert (=> d!1250542 (= (noDuplicateTag!3264 thiss!21641 rules!2971 Nil!47126) e!2641269)))

(declare-fun b!4252449 () Bool)

(declare-fun e!2641270 () Bool)

(assert (=> b!4252449 (= e!2641269 e!2641270)))

(declare-fun res!1748146 () Bool)

(assert (=> b!4252449 (=> (not res!1748146) (not e!2641270))))

(declare-fun contains!9765 (List!47250 String!54970) Bool)

(assert (=> b!4252449 (= res!1748146 (not (contains!9765 Nil!47126 (tag!8842 (h!52544 rules!2971)))))))

(declare-fun b!4252450 () Bool)

(assert (=> b!4252450 (= e!2641270 (noDuplicateTag!3264 thiss!21641 (t!352437 rules!2971) (Cons!47126 (tag!8842 (h!52544 rules!2971)) Nil!47126)))))

(assert (= (and d!1250542 (not res!1748145)) b!4252449))

(assert (= (and b!4252449 res!1748146) b!4252450))

(declare-fun m!4837457 () Bool)

(assert (=> b!4252449 m!4837457))

(declare-fun m!4837459 () Bool)

(assert (=> b!4252450 m!4837459))

(assert (=> b!4251725 d!1250542))

(declare-fun d!1250544 () Bool)

(assert (=> d!1250544 (= (list!16976 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))) (list!16978 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))))))

(declare-fun bs!598704 () Bool)

(assert (= bs!598704 d!1250544))

(declare-fun m!4837461 () Bool)

(assert (=> bs!598704 m!4837461))

(assert (=> b!4251554 d!1250544))

(declare-fun d!1250546 () Bool)

(declare-fun lt!1509011 () Int)

(assert (=> d!1250546 (>= lt!1509011 0)))

(declare-fun e!2641271 () Int)

(assert (=> d!1250546 (= lt!1509011 e!2641271)))

(declare-fun c!722089 () Bool)

(assert (=> d!1250546 (= c!722089 ((_ is Nil!47123) (_1!25474 lt!1508819)))))

(assert (=> d!1250546 (= (size!34495 (_1!25474 lt!1508819)) lt!1509011)))

(declare-fun b!4252451 () Bool)

(assert (=> b!4252451 (= e!2641271 0)))

(declare-fun b!4252452 () Bool)

(assert (=> b!4252452 (= e!2641271 (+ 1 (size!34495 (t!352436 (_1!25474 lt!1508819)))))))

(assert (= (and d!1250546 c!722089) b!4252451))

(assert (= (and d!1250546 (not c!722089)) b!4252452))

(declare-fun m!4837463 () Bool)

(assert (=> b!4252452 m!4837463))

(assert (=> d!1250208 d!1250546))

(assert (=> d!1250208 d!1250220))

(declare-fun d!1250548 () Bool)

(declare-fun c!722090 () Bool)

(assert (=> d!1250548 (= c!722090 ((_ is Node!14189) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))))))

(declare-fun e!2641272 () Bool)

(assert (=> d!1250548 (= (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))) e!2641272)))

(declare-fun b!4252453 () Bool)

(assert (=> b!4252453 (= e!2641272 (inv!61904 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))))))

(declare-fun b!4252454 () Bool)

(declare-fun e!2641273 () Bool)

(assert (=> b!4252454 (= e!2641272 e!2641273)))

(declare-fun res!1748147 () Bool)

(assert (=> b!4252454 (= res!1748147 (not ((_ is Leaf!21937) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))))))))

(assert (=> b!4252454 (=> res!1748147 e!2641273)))

(declare-fun b!4252455 () Bool)

(assert (=> b!4252455 (= e!2641273 (inv!61905 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))))))

(assert (= (and d!1250548 c!722090) b!4252453))

(assert (= (and d!1250548 (not c!722090)) b!4252454))

(assert (= (and b!4252454 (not res!1748147)) b!4252455))

(declare-fun m!4837465 () Bool)

(assert (=> b!4252453 m!4837465))

(declare-fun m!4837467 () Bool)

(assert (=> b!4252455 m!4837467))

(assert (=> b!4251722 d!1250548))

(declare-fun bs!598705 () Bool)

(declare-fun d!1250550 () Bool)

(assert (= bs!598705 (and d!1250550 d!1250378)))

(declare-fun lambda!130289 () Int)

(assert (=> bs!598705 (= (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (h!52544 rules!2971)))) (= lambda!130289 lambda!130284))))

(assert (=> d!1250550 true))

(assert (=> d!1250550 (< (dynLambda!20187 order!24763 (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) (dynLambda!20188 order!24769 lambda!130289))))

(assert (=> d!1250550 (= (equivClasses!3380 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toValue!10750 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) (Forall2!1205 lambda!130289))))

(declare-fun bs!598706 () Bool)

(assert (= bs!598706 d!1250550))

(declare-fun m!4837469 () Bool)

(assert (=> bs!598706 m!4837469))

(assert (=> b!4251695 d!1250550))

(declare-fun d!1250552 () Bool)

(declare-fun lt!1509012 () Int)

(assert (=> d!1250552 (>= lt!1509012 0)))

(declare-fun e!2641274 () Int)

(assert (=> d!1250552 (= lt!1509012 e!2641274)))

(declare-fun c!722091 () Bool)

(assert (=> d!1250552 (= c!722091 ((_ is Nil!47121) (t!352434 longerInput!62)))))

(assert (=> d!1250552 (= (size!34493 (t!352434 longerInput!62)) lt!1509012)))

(declare-fun b!4252456 () Bool)

(assert (=> b!4252456 (= e!2641274 0)))

(declare-fun b!4252457 () Bool)

(assert (=> b!4252457 (= e!2641274 (+ 1 (size!34493 (t!352434 (t!352434 longerInput!62)))))))

(assert (= (and d!1250552 c!722091) b!4252456))

(assert (= (and d!1250552 (not c!722091)) b!4252457))

(declare-fun m!4837471 () Bool)

(assert (=> b!4252457 m!4837471))

(assert (=> b!4251703 d!1250552))

(declare-fun d!1250554 () Bool)

(assert (=> d!1250554 (= (isEmpty!27887 lt!1508834) (not ((_ is Some!10111) lt!1508834)))))

(assert (=> d!1250218 d!1250554))

(declare-fun b!4252459 () Bool)

(declare-fun res!1748150 () Bool)

(declare-fun e!2641275 () Bool)

(assert (=> b!4252459 (=> (not res!1748150) (not e!2641275))))

(assert (=> b!4252459 (= res!1748150 (= (head!8995 shorterInput!62) (head!8995 shorterInput!62)))))

(declare-fun b!4252458 () Bool)

(declare-fun e!2641277 () Bool)

(assert (=> b!4252458 (= e!2641277 e!2641275)))

(declare-fun res!1748149 () Bool)

(assert (=> b!4252458 (=> (not res!1748149) (not e!2641275))))

(assert (=> b!4252458 (= res!1748149 (not ((_ is Nil!47121) shorterInput!62)))))

(declare-fun b!4252460 () Bool)

(assert (=> b!4252460 (= e!2641275 (isPrefix!4751 (tail!6858 shorterInput!62) (tail!6858 shorterInput!62)))))

(declare-fun b!4252461 () Bool)

(declare-fun e!2641276 () Bool)

(assert (=> b!4252461 (= e!2641276 (>= (size!34493 shorterInput!62) (size!34493 shorterInput!62)))))

(declare-fun d!1250556 () Bool)

(assert (=> d!1250556 e!2641276))

(declare-fun res!1748151 () Bool)

(assert (=> d!1250556 (=> res!1748151 e!2641276)))

(declare-fun lt!1509013 () Bool)

(assert (=> d!1250556 (= res!1748151 (not lt!1509013))))

(assert (=> d!1250556 (= lt!1509013 e!2641277)))

(declare-fun res!1748148 () Bool)

(assert (=> d!1250556 (=> res!1748148 e!2641277)))

(assert (=> d!1250556 (= res!1748148 ((_ is Nil!47121) shorterInput!62))))

(assert (=> d!1250556 (= (isPrefix!4751 shorterInput!62 shorterInput!62) lt!1509013)))

(assert (= (and d!1250556 (not res!1748148)) b!4252458))

(assert (= (and b!4252458 res!1748149) b!4252459))

(assert (= (and b!4252459 res!1748150) b!4252460))

(assert (= (and d!1250556 (not res!1748151)) b!4252461))

(declare-fun m!4837473 () Bool)

(assert (=> b!4252459 m!4837473))

(assert (=> b!4252459 m!4837473))

(declare-fun m!4837475 () Bool)

(assert (=> b!4252460 m!4837475))

(assert (=> b!4252460 m!4837475))

(assert (=> b!4252460 m!4837475))

(assert (=> b!4252460 m!4837475))

(declare-fun m!4837477 () Bool)

(assert (=> b!4252460 m!4837477))

(assert (=> b!4252461 m!4836151))

(assert (=> b!4252461 m!4836151))

(assert (=> d!1250218 d!1250556))

(declare-fun d!1250558 () Bool)

(assert (=> d!1250558 (isPrefix!4751 shorterInput!62 shorterInput!62)))

(declare-fun lt!1509014 () Unit!66081)

(assert (=> d!1250558 (= lt!1509014 (choose!25958 shorterInput!62 shorterInput!62))))

(assert (=> d!1250558 (= (lemmaIsPrefixRefl!3148 shorterInput!62 shorterInput!62) lt!1509014)))

(declare-fun bs!598707 () Bool)

(assert (= bs!598707 d!1250558))

(assert (=> bs!598707 m!4836465))

(declare-fun m!4837479 () Bool)

(assert (=> bs!598707 m!4837479))

(assert (=> d!1250218 d!1250558))

(assert (=> d!1250218 d!1250342))

(declare-fun b!4252465 () Bool)

(declare-fun b_free!126451 () Bool)

(declare-fun b_next!127155 () Bool)

(assert (=> b!4252465 (= b_free!126451 (not b_next!127155))))

(declare-fun t!352603 () Bool)

(declare-fun tb!256531 () Bool)

(assert (=> (and b!4252465 (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352603) tb!256531))

(declare-fun result!312858 () Bool)

(assert (= result!312858 result!312840))

(assert (=> d!1250480 t!352603))

(declare-fun t!352605 () Bool)

(declare-fun tb!256533 () Bool)

(assert (=> (and b!4252465 (= (toValue!10750 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352605) tb!256533))

(declare-fun result!312860 () Bool)

(assert (= result!312860 result!312850))

(assert (=> d!1250518 t!352605))

(declare-fun tp!1304863 () Bool)

(declare-fun b_and!337205 () Bool)

(assert (=> b!4252465 (= tp!1304863 (and (=> t!352603 result!312858) (=> t!352605 result!312860) b_and!337205))))

(declare-fun b_free!126453 () Bool)

(declare-fun b_next!127157 () Bool)

(assert (=> b!4252465 (= b_free!126453 (not b_next!127157))))

(declare-fun t!352607 () Bool)

(declare-fun tb!256535 () Bool)

(assert (=> (and b!4252465 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) t!352607) tb!256535))

(declare-fun result!312862 () Bool)

(assert (= result!312862 result!312684))

(assert (=> b!4251554 t!352607))

(declare-fun tb!256537 () Bool)

(declare-fun t!352609 () Bool)

(assert (=> (and b!4252465 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747)))))) t!352609) tb!256537))

(declare-fun result!312864 () Bool)

(assert (= result!312864 result!312716))

(assert (=> d!1250214 t!352609))

(declare-fun t!352611 () Bool)

(declare-fun tb!256539 () Bool)

(assert (=> (and b!4252465 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352611) tb!256539))

(declare-fun result!312866 () Bool)

(assert (= result!312866 result!312808))

(assert (=> d!1250456 t!352611))

(declare-fun tb!256541 () Bool)

(declare-fun t!352613 () Bool)

(assert (=> (and b!4252465 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746)))))) t!352613) tb!256541))

(declare-fun result!312868 () Bool)

(assert (= result!312868 result!312678))

(assert (=> d!1250142 t!352613))

(declare-fun t!352615 () Bool)

(declare-fun tb!256543 () Bool)

(assert (=> (and b!4252465 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) t!352615) tb!256543))

(declare-fun result!312870 () Bool)

(assert (= result!312870 result!312832))

(assert (=> b!4252339 t!352615))

(declare-fun t!352617 () Bool)

(declare-fun tb!256545 () Bool)

(assert (=> (and b!4252465 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352617) tb!256545))

(declare-fun result!312872 () Bool)

(assert (= result!312872 result!312764))

(assert (=> d!1250360 t!352617))

(declare-fun tp!1304866 () Bool)

(declare-fun b_and!337207 () Bool)

(assert (=> b!4252465 (= tp!1304866 (and (=> t!352615 result!312870) (=> t!352609 result!312864) (=> t!352613 result!312868) (=> t!352611 result!312866) (=> t!352607 result!312862) (=> t!352617 result!312872) b_and!337207))))

(declare-fun e!2641278 () Bool)

(assert (=> b!4252465 (= e!2641278 (and tp!1304863 tp!1304866))))

(declare-fun tp!1304865 () Bool)

(declare-fun e!2641283 () Bool)

(declare-fun e!2641280 () Bool)

(declare-fun b!4252462 () Bool)

(assert (=> b!4252462 (= e!2641280 (and (inv!61899 (h!52543 (t!352436 (t!352436 tokens!592)))) e!2641283 tp!1304865))))

(assert (=> b!4251790 (= tp!1304744 e!2641280)))

(declare-fun b!4252463 () Bool)

(declare-fun tp!1304862 () Bool)

(declare-fun e!2641281 () Bool)

(assert (=> b!4252463 (= e!2641283 (and (inv!21 (value!247909 (h!52543 (t!352436 (t!352436 tokens!592))))) e!2641281 tp!1304862))))

(declare-fun tp!1304864 () Bool)

(declare-fun b!4252464 () Bool)

(assert (=> b!4252464 (= e!2641281 (and tp!1304864 (inv!61895 (tag!8842 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (inv!61898 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) e!2641278))))

(assert (= b!4252464 b!4252465))

(assert (= b!4252463 b!4252464))

(assert (= b!4252462 b!4252463))

(assert (= (and b!4251790 ((_ is Cons!47123) (t!352436 (t!352436 tokens!592)))) b!4252462))

(declare-fun m!4837481 () Bool)

(assert (=> b!4252462 m!4837481))

(declare-fun m!4837483 () Bool)

(assert (=> b!4252463 m!4837483))

(declare-fun m!4837485 () Bool)

(assert (=> b!4252464 m!4837485))

(declare-fun m!4837487 () Bool)

(assert (=> b!4252464 m!4837487))

(declare-fun b!4252466 () Bool)

(declare-fun e!2641284 () Bool)

(declare-fun tp!1304867 () Bool)

(assert (=> b!4252466 (= e!2641284 (and tp_is_empty!22757 tp!1304867))))

(assert (=> b!4251791 (= tp!1304741 e!2641284)))

(assert (= (and b!4251791 ((_ is Cons!47121) (originalCharacters!8322 (h!52543 (t!352436 tokens!592))))) b!4252466))

(declare-fun b!4252467 () Bool)

(declare-fun e!2641285 () Bool)

(declare-fun tp!1304868 () Bool)

(assert (=> b!4252467 (= e!2641285 (and tp_is_empty!22757 tp!1304868))))

(assert (=> b!4251766 (= tp!1304716 e!2641285)))

(assert (= (and b!4251766 ((_ is Cons!47121) (t!352434 (originalCharacters!8322 (h!52543 tokens!592))))) b!4252467))

(declare-fun b!4252468 () Bool)

(declare-fun e!2641286 () Bool)

(declare-fun tp!1304869 () Bool)

(assert (=> b!4252468 (= e!2641286 (and tp_is_empty!22757 tp!1304869))))

(assert (=> b!4251794 (= tp!1304746 e!2641286)))

(assert (= (and b!4251794 ((_ is Cons!47121) (t!352434 (t!352434 longerInput!62)))) b!4252468))

(declare-fun b!4252470 () Bool)

(declare-fun e!2641287 () Bool)

(declare-fun tp!1304872 () Bool)

(declare-fun tp!1304873 () Bool)

(assert (=> b!4252470 (= e!2641287 (and tp!1304872 tp!1304873))))

(declare-fun b!4252472 () Bool)

(declare-fun tp!1304871 () Bool)

(declare-fun tp!1304874 () Bool)

(assert (=> b!4252472 (= e!2641287 (and tp!1304871 tp!1304874))))

(assert (=> b!4251792 (= tp!1304743 e!2641287)))

(declare-fun b!4252471 () Bool)

(declare-fun tp!1304870 () Bool)

(assert (=> b!4252471 (= e!2641287 tp!1304870)))

(declare-fun b!4252469 () Bool)

(assert (=> b!4252469 (= e!2641287 tp_is_empty!22757)))

(assert (= (and b!4251792 ((_ is ElementMatch!12883) (regex!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) b!4252469))

(assert (= (and b!4251792 ((_ is Concat!21092) (regex!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) b!4252470))

(assert (= (and b!4251792 ((_ is Star!12883) (regex!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) b!4252471))

(assert (= (and b!4251792 ((_ is Union!12883) (regex!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) b!4252472))

(declare-fun tp!1304881 () Bool)

(declare-fun e!2641293 () Bool)

(declare-fun b!4252481 () Bool)

(declare-fun tp!1304883 () Bool)

(assert (=> b!4252481 (= e!2641293 (and (inv!61902 (left!34940 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))))) tp!1304881 (inv!61902 (right!35270 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))))) tp!1304883))))

(declare-fun b!4252483 () Bool)

(declare-fun e!2641292 () Bool)

(declare-fun tp!1304882 () Bool)

(assert (=> b!4252483 (= e!2641292 tp!1304882)))

(declare-fun b!4252482 () Bool)

(declare-fun inv!61909 (IArray!28383) Bool)

(assert (=> b!4252482 (= e!2641293 (and (inv!61909 (xs!17495 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))))) e!2641292))))

(assert (=> b!4251556 (= tp!1304657 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592))))) e!2641293))))

(assert (= (and b!4251556 ((_ is Node!14189) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))))) b!4252481))

(assert (= b!4252482 b!4252483))

(assert (= (and b!4251556 ((_ is Leaf!21937) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (value!247909 (h!52543 tokens!592)))))) b!4252482))

(declare-fun m!4837489 () Bool)

(assert (=> b!4252481 m!4837489))

(declare-fun m!4837491 () Bool)

(assert (=> b!4252481 m!4837491))

(declare-fun m!4837493 () Bool)

(assert (=> b!4252482 m!4837493))

(assert (=> b!4251556 m!4836231))

(declare-fun b!4252486 () Bool)

(declare-fun b_free!126455 () Bool)

(declare-fun b_next!127159 () Bool)

(assert (=> b!4252486 (= b_free!126455 (not b_next!127159))))

(declare-fun t!352619 () Bool)

(declare-fun tb!256547 () Bool)

(assert (=> (and b!4252486 (= (toValue!10750 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352619) tb!256547))

(declare-fun result!312876 () Bool)

(assert (= result!312876 result!312840))

(assert (=> d!1250480 t!352619))

(declare-fun tb!256549 () Bool)

(declare-fun t!352621 () Bool)

(assert (=> (and b!4252486 (= (toValue!10750 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toValue!10750 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352621) tb!256549))

(declare-fun result!312878 () Bool)

(assert (= result!312878 result!312850))

(assert (=> d!1250518 t!352621))

(declare-fun tp!1304885 () Bool)

(declare-fun b_and!337209 () Bool)

(assert (=> b!4252486 (= tp!1304885 (and (=> t!352619 result!312876) (=> t!352621 result!312878) b_and!337209))))

(declare-fun b_free!126457 () Bool)

(declare-fun b_next!127161 () Bool)

(assert (=> b!4252486 (= b_free!126457 (not b_next!127161))))

(declare-fun t!352623 () Bool)

(declare-fun tb!256551 () Bool)

(assert (=> (and b!4252486 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592))))) t!352623) tb!256551))

(declare-fun result!312880 () Bool)

(assert (= result!312880 result!312684))

(assert (=> b!4251554 t!352623))

(declare-fun t!352625 () Bool)

(declare-fun tb!256553 () Bool)

(assert (=> (and b!4252486 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747)))))) t!352625) tb!256553))

(declare-fun result!312882 () Bool)

(assert (= result!312882 result!312716))

(assert (=> d!1250214 t!352625))

(declare-fun t!352627 () Bool)

(declare-fun tb!256555 () Bool)

(assert (=> (and b!4252486 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508834)))))) t!352627) tb!256555))

(declare-fun result!312884 () Bool)

(assert (= result!312884 result!312808))

(assert (=> d!1250456 t!352627))

(declare-fun tb!256557 () Bool)

(declare-fun t!352629 () Bool)

(assert (=> (and b!4252486 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746)))))) t!352629) tb!256557))

(declare-fun result!312886 () Bool)

(assert (= result!312886 result!312678))

(assert (=> d!1250142 t!352629))

(declare-fun tb!256559 () Bool)

(declare-fun t!352631 () Bool)

(assert (=> (and b!4252486 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592)))))) t!352631) tb!256559))

(declare-fun result!312888 () Bool)

(assert (= result!312888 result!312832))

(assert (=> b!4252339 t!352631))

(declare-fun tb!256561 () Bool)

(declare-fun t!352633 () Bool)

(assert (=> (and b!4252486 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (get!15297 lt!1508839)))))) t!352633) tb!256561))

(declare-fun result!312890 () Bool)

(assert (= result!312890 result!312764))

(assert (=> d!1250360 t!352633))

(declare-fun b_and!337211 () Bool)

(declare-fun tp!1304887 () Bool)

(assert (=> b!4252486 (= tp!1304887 (and (=> t!352625 result!312882) (=> t!352631 result!312888) (=> t!352623 result!312880) (=> t!352627 result!312884) (=> t!352633 result!312890) (=> t!352629 result!312886) b_and!337211))))

(declare-fun e!2641296 () Bool)

(assert (=> b!4252486 (= e!2641296 (and tp!1304885 tp!1304887))))

(declare-fun tp!1304886 () Bool)

(declare-fun e!2641294 () Bool)

(declare-fun b!4252485 () Bool)

(assert (=> b!4252485 (= e!2641294 (and tp!1304886 (inv!61895 (tag!8842 (h!52544 (t!352437 (t!352437 rules!2971))))) (inv!61898 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) e!2641296))))

(declare-fun b!4252484 () Bool)

(declare-fun e!2641297 () Bool)

(declare-fun tp!1304884 () Bool)

(assert (=> b!4252484 (= e!2641297 (and e!2641294 tp!1304884))))

(assert (=> b!4251777 (= tp!1304727 e!2641297)))

(assert (= b!4252485 b!4252486))

(assert (= b!4252484 b!4252485))

(assert (= (and b!4251777 ((_ is Cons!47124) (t!352437 (t!352437 rules!2971)))) b!4252484))

(declare-fun m!4837495 () Bool)

(assert (=> b!4252485 m!4837495))

(declare-fun m!4837497 () Bool)

(assert (=> b!4252485 m!4837497))

(declare-fun b!4252487 () Bool)

(declare-fun tp!1304890 () Bool)

(declare-fun tp!1304888 () Bool)

(declare-fun e!2641299 () Bool)

(assert (=> b!4252487 (= e!2641299 (and (inv!61902 (left!34940 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))))) tp!1304888 (inv!61902 (right!35270 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))))) tp!1304890))))

(declare-fun b!4252489 () Bool)

(declare-fun e!2641298 () Bool)

(declare-fun tp!1304889 () Bool)

(assert (=> b!4252489 (= e!2641298 tp!1304889)))

(declare-fun b!4252488 () Bool)

(assert (=> b!4252488 (= e!2641299 (and (inv!61909 (xs!17495 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))))) e!2641298))))

(assert (=> b!4251523 (= tp!1304656 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746)))))) e!2641299))))

(assert (= (and b!4251523 ((_ is Node!14189) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))))) b!4252487))

(assert (= b!4252488 b!4252489))

(assert (= (and b!4251523 ((_ is Leaf!21937) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))) (value!247909 (_1!25473 (v!41069 lt!1508746))))))) b!4252488))

(declare-fun m!4837499 () Bool)

(assert (=> b!4252487 m!4837499))

(declare-fun m!4837501 () Bool)

(assert (=> b!4252487 m!4837501))

(declare-fun m!4837503 () Bool)

(assert (=> b!4252488 m!4837503))

(assert (=> b!4251523 m!4836219))

(declare-fun b!4252491 () Bool)

(declare-fun e!2641300 () Bool)

(declare-fun tp!1304893 () Bool)

(declare-fun tp!1304894 () Bool)

(assert (=> b!4252491 (= e!2641300 (and tp!1304893 tp!1304894))))

(declare-fun b!4252493 () Bool)

(declare-fun tp!1304892 () Bool)

(declare-fun tp!1304895 () Bool)

(assert (=> b!4252493 (= e!2641300 (and tp!1304892 tp!1304895))))

(assert (=> b!4251778 (= tp!1304729 e!2641300)))

(declare-fun b!4252492 () Bool)

(declare-fun tp!1304891 () Bool)

(assert (=> b!4252492 (= e!2641300 tp!1304891)))

(declare-fun b!4252490 () Bool)

(assert (=> b!4252490 (= e!2641300 tp_is_empty!22757)))

(assert (= (and b!4251778 ((_ is ElementMatch!12883) (regex!7978 (h!52544 (t!352437 rules!2971))))) b!4252490))

(assert (= (and b!4251778 ((_ is Concat!21092) (regex!7978 (h!52544 (t!352437 rules!2971))))) b!4252491))

(assert (= (and b!4251778 ((_ is Star!12883) (regex!7978 (h!52544 (t!352437 rules!2971))))) b!4252492))

(assert (= (and b!4251778 ((_ is Union!12883) (regex!7978 (h!52544 (t!352437 rules!2971))))) b!4252493))

(declare-fun b!4252495 () Bool)

(declare-fun e!2641301 () Bool)

(declare-fun tp!1304898 () Bool)

(declare-fun tp!1304899 () Bool)

(assert (=> b!4252495 (= e!2641301 (and tp!1304898 tp!1304899))))

(declare-fun b!4252497 () Bool)

(declare-fun tp!1304897 () Bool)

(declare-fun tp!1304900 () Bool)

(assert (=> b!4252497 (= e!2641301 (and tp!1304897 tp!1304900))))

(assert (=> b!4251807 (= tp!1304757 e!2641301)))

(declare-fun b!4252496 () Bool)

(declare-fun tp!1304896 () Bool)

(assert (=> b!4252496 (= e!2641301 tp!1304896)))

(declare-fun b!4252494 () Bool)

(assert (=> b!4252494 (= e!2641301 tp_is_empty!22757)))

(assert (= (and b!4251807 ((_ is ElementMatch!12883) (reg!13212 (regex!7978 (h!52544 rules!2971))))) b!4252494))

(assert (= (and b!4251807 ((_ is Concat!21092) (reg!13212 (regex!7978 (h!52544 rules!2971))))) b!4252495))

(assert (= (and b!4251807 ((_ is Star!12883) (reg!13212 (regex!7978 (h!52544 rules!2971))))) b!4252496))

(assert (= (and b!4251807 ((_ is Union!12883) (reg!13212 (regex!7978 (h!52544 rules!2971))))) b!4252497))

(declare-fun b!4252499 () Bool)

(declare-fun e!2641302 () Bool)

(declare-fun tp!1304903 () Bool)

(declare-fun tp!1304904 () Bool)

(assert (=> b!4252499 (= e!2641302 (and tp!1304903 tp!1304904))))

(declare-fun b!4252501 () Bool)

(declare-fun tp!1304902 () Bool)

(declare-fun tp!1304905 () Bool)

(assert (=> b!4252501 (= e!2641302 (and tp!1304902 tp!1304905))))

(assert (=> b!4251812 (= tp!1304763 e!2641302)))

(declare-fun b!4252500 () Bool)

(declare-fun tp!1304901 () Bool)

(assert (=> b!4252500 (= e!2641302 tp!1304901)))

(declare-fun b!4252498 () Bool)

(assert (=> b!4252498 (= e!2641302 tp_is_empty!22757)))

(assert (= (and b!4251812 ((_ is ElementMatch!12883) (regOne!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252498))

(assert (= (and b!4251812 ((_ is Concat!21092) (regOne!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252499))

(assert (= (and b!4251812 ((_ is Star!12883) (regOne!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252500))

(assert (= (and b!4251812 ((_ is Union!12883) (regOne!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252501))

(declare-fun b!4252503 () Bool)

(declare-fun e!2641303 () Bool)

(declare-fun tp!1304908 () Bool)

(declare-fun tp!1304909 () Bool)

(assert (=> b!4252503 (= e!2641303 (and tp!1304908 tp!1304909))))

(declare-fun b!4252505 () Bool)

(declare-fun tp!1304907 () Bool)

(declare-fun tp!1304910 () Bool)

(assert (=> b!4252505 (= e!2641303 (and tp!1304907 tp!1304910))))

(assert (=> b!4251812 (= tp!1304766 e!2641303)))

(declare-fun b!4252504 () Bool)

(declare-fun tp!1304906 () Bool)

(assert (=> b!4252504 (= e!2641303 tp!1304906)))

(declare-fun b!4252502 () Bool)

(assert (=> b!4252502 (= e!2641303 tp_is_empty!22757)))

(assert (= (and b!4251812 ((_ is ElementMatch!12883) (regTwo!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252502))

(assert (= (and b!4251812 ((_ is Concat!21092) (regTwo!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252503))

(assert (= (and b!4251812 ((_ is Star!12883) (regTwo!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252504))

(assert (= (and b!4251812 ((_ is Union!12883) (regTwo!26279 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252505))

(declare-fun b!4252507 () Bool)

(declare-fun e!2641304 () Bool)

(declare-fun tp!1304913 () Bool)

(declare-fun tp!1304914 () Bool)

(assert (=> b!4252507 (= e!2641304 (and tp!1304913 tp!1304914))))

(declare-fun b!4252509 () Bool)

(declare-fun tp!1304912 () Bool)

(declare-fun tp!1304915 () Bool)

(assert (=> b!4252509 (= e!2641304 (and tp!1304912 tp!1304915))))

(assert (=> b!4251808 (= tp!1304758 e!2641304)))

(declare-fun b!4252508 () Bool)

(declare-fun tp!1304911 () Bool)

(assert (=> b!4252508 (= e!2641304 tp!1304911)))

(declare-fun b!4252506 () Bool)

(assert (=> b!4252506 (= e!2641304 tp_is_empty!22757)))

(assert (= (and b!4251808 ((_ is ElementMatch!12883) (regOne!26279 (regex!7978 (h!52544 rules!2971))))) b!4252506))

(assert (= (and b!4251808 ((_ is Concat!21092) (regOne!26279 (regex!7978 (h!52544 rules!2971))))) b!4252507))

(assert (= (and b!4251808 ((_ is Star!12883) (regOne!26279 (regex!7978 (h!52544 rules!2971))))) b!4252508))

(assert (= (and b!4251808 ((_ is Union!12883) (regOne!26279 (regex!7978 (h!52544 rules!2971))))) b!4252509))

(declare-fun b!4252511 () Bool)

(declare-fun e!2641305 () Bool)

(declare-fun tp!1304918 () Bool)

(declare-fun tp!1304919 () Bool)

(assert (=> b!4252511 (= e!2641305 (and tp!1304918 tp!1304919))))

(declare-fun b!4252513 () Bool)

(declare-fun tp!1304917 () Bool)

(declare-fun tp!1304920 () Bool)

(assert (=> b!4252513 (= e!2641305 (and tp!1304917 tp!1304920))))

(assert (=> b!4251808 (= tp!1304761 e!2641305)))

(declare-fun b!4252512 () Bool)

(declare-fun tp!1304916 () Bool)

(assert (=> b!4252512 (= e!2641305 tp!1304916)))

(declare-fun b!4252510 () Bool)

(assert (=> b!4252510 (= e!2641305 tp_is_empty!22757)))

(assert (= (and b!4251808 ((_ is ElementMatch!12883) (regTwo!26279 (regex!7978 (h!52544 rules!2971))))) b!4252510))

(assert (= (and b!4251808 ((_ is Concat!21092) (regTwo!26279 (regex!7978 (h!52544 rules!2971))))) b!4252511))

(assert (= (and b!4251808 ((_ is Star!12883) (regTwo!26279 (regex!7978 (h!52544 rules!2971))))) b!4252512))

(assert (= (and b!4251808 ((_ is Union!12883) (regTwo!26279 (regex!7978 (h!52544 rules!2971))))) b!4252513))

(declare-fun tp!1304921 () Bool)

(declare-fun b!4252514 () Bool)

(declare-fun tp!1304923 () Bool)

(declare-fun e!2641307 () Bool)

(assert (=> b!4252514 (= e!2641307 (and (inv!61902 (left!34940 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))))) tp!1304921 (inv!61902 (right!35270 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))))) tp!1304923))))

(declare-fun b!4252516 () Bool)

(declare-fun e!2641306 () Bool)

(declare-fun tp!1304922 () Bool)

(assert (=> b!4252516 (= e!2641306 tp!1304922)))

(declare-fun b!4252515 () Bool)

(assert (=> b!4252515 (= e!2641307 (and (inv!61909 (xs!17495 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))))) e!2641306))))

(assert (=> b!4251722 (= tp!1304713 (and (inv!61902 (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747)))))) e!2641307))))

(assert (= (and b!4251722 ((_ is Node!14189) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))))) b!4252514))

(assert (= b!4252515 b!4252516))

(assert (= (and b!4251722 ((_ is Leaf!21937) (c!721900 (dynLambda!20182 (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))) (value!247909 (_1!25473 (v!41069 lt!1508747))))))) b!4252515))

(declare-fun m!4837505 () Bool)

(assert (=> b!4252514 m!4837505))

(declare-fun m!4837507 () Bool)

(assert (=> b!4252514 m!4837507))

(declare-fun m!4837509 () Bool)

(assert (=> b!4252515 m!4837509))

(assert (=> b!4251722 m!4836445))

(declare-fun b!4252517 () Bool)

(declare-fun e!2641308 () Bool)

(declare-fun tp!1304924 () Bool)

(assert (=> b!4252517 (= e!2641308 (and tp_is_empty!22757 tp!1304924))))

(assert (=> b!4251768 (= tp!1304718 e!2641308)))

(assert (= (and b!4251768 ((_ is Cons!47121) (t!352434 (t!352434 suffix!1284)))) b!4252517))

(declare-fun b!4252519 () Bool)

(declare-fun e!2641309 () Bool)

(declare-fun tp!1304927 () Bool)

(declare-fun tp!1304928 () Bool)

(assert (=> b!4252519 (= e!2641309 (and tp!1304927 tp!1304928))))

(declare-fun b!4252521 () Bool)

(declare-fun tp!1304926 () Bool)

(declare-fun tp!1304929 () Bool)

(assert (=> b!4252521 (= e!2641309 (and tp!1304926 tp!1304929))))

(assert (=> b!4251810 (= tp!1304764 e!2641309)))

(declare-fun b!4252520 () Bool)

(declare-fun tp!1304925 () Bool)

(assert (=> b!4252520 (= e!2641309 tp!1304925)))

(declare-fun b!4252518 () Bool)

(assert (=> b!4252518 (= e!2641309 tp_is_empty!22757)))

(assert (= (and b!4251810 ((_ is ElementMatch!12883) (regOne!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252518))

(assert (= (and b!4251810 ((_ is Concat!21092) (regOne!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252519))

(assert (= (and b!4251810 ((_ is Star!12883) (regOne!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252520))

(assert (= (and b!4251810 ((_ is Union!12883) (regOne!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252521))

(declare-fun b!4252523 () Bool)

(declare-fun e!2641310 () Bool)

(declare-fun tp!1304932 () Bool)

(declare-fun tp!1304933 () Bool)

(assert (=> b!4252523 (= e!2641310 (and tp!1304932 tp!1304933))))

(declare-fun b!4252525 () Bool)

(declare-fun tp!1304931 () Bool)

(declare-fun tp!1304934 () Bool)

(assert (=> b!4252525 (= e!2641310 (and tp!1304931 tp!1304934))))

(assert (=> b!4251810 (= tp!1304765 e!2641310)))

(declare-fun b!4252524 () Bool)

(declare-fun tp!1304930 () Bool)

(assert (=> b!4252524 (= e!2641310 tp!1304930)))

(declare-fun b!4252522 () Bool)

(assert (=> b!4252522 (= e!2641310 tp_is_empty!22757)))

(assert (= (and b!4251810 ((_ is ElementMatch!12883) (regTwo!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252522))

(assert (= (and b!4251810 ((_ is Concat!21092) (regTwo!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252523))

(assert (= (and b!4251810 ((_ is Star!12883) (regTwo!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252524))

(assert (= (and b!4251810 ((_ is Union!12883) (regTwo!26278 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252525))

(declare-fun b!4252527 () Bool)

(declare-fun e!2641311 () Bool)

(declare-fun tp!1304937 () Bool)

(declare-fun tp!1304938 () Bool)

(assert (=> b!4252527 (= e!2641311 (and tp!1304937 tp!1304938))))

(declare-fun b!4252529 () Bool)

(declare-fun tp!1304936 () Bool)

(declare-fun tp!1304939 () Bool)

(assert (=> b!4252529 (= e!2641311 (and tp!1304936 tp!1304939))))

(assert (=> b!4251806 (= tp!1304759 e!2641311)))

(declare-fun b!4252528 () Bool)

(declare-fun tp!1304935 () Bool)

(assert (=> b!4252528 (= e!2641311 tp!1304935)))

(declare-fun b!4252526 () Bool)

(assert (=> b!4252526 (= e!2641311 tp_is_empty!22757)))

(assert (= (and b!4251806 ((_ is ElementMatch!12883) (regOne!26278 (regex!7978 (h!52544 rules!2971))))) b!4252526))

(assert (= (and b!4251806 ((_ is Concat!21092) (regOne!26278 (regex!7978 (h!52544 rules!2971))))) b!4252527))

(assert (= (and b!4251806 ((_ is Star!12883) (regOne!26278 (regex!7978 (h!52544 rules!2971))))) b!4252528))

(assert (= (and b!4251806 ((_ is Union!12883) (regOne!26278 (regex!7978 (h!52544 rules!2971))))) b!4252529))

(declare-fun b!4252531 () Bool)

(declare-fun e!2641312 () Bool)

(declare-fun tp!1304942 () Bool)

(declare-fun tp!1304943 () Bool)

(assert (=> b!4252531 (= e!2641312 (and tp!1304942 tp!1304943))))

(declare-fun b!4252533 () Bool)

(declare-fun tp!1304941 () Bool)

(declare-fun tp!1304944 () Bool)

(assert (=> b!4252533 (= e!2641312 (and tp!1304941 tp!1304944))))

(assert (=> b!4251806 (= tp!1304760 e!2641312)))

(declare-fun b!4252532 () Bool)

(declare-fun tp!1304940 () Bool)

(assert (=> b!4252532 (= e!2641312 tp!1304940)))

(declare-fun b!4252530 () Bool)

(assert (=> b!4252530 (= e!2641312 tp_is_empty!22757)))

(assert (= (and b!4251806 ((_ is ElementMatch!12883) (regTwo!26278 (regex!7978 (h!52544 rules!2971))))) b!4252530))

(assert (= (and b!4251806 ((_ is Concat!21092) (regTwo!26278 (regex!7978 (h!52544 rules!2971))))) b!4252531))

(assert (= (and b!4251806 ((_ is Star!12883) (regTwo!26278 (regex!7978 (h!52544 rules!2971))))) b!4252532))

(assert (= (and b!4251806 ((_ is Union!12883) (regTwo!26278 (regex!7978 (h!52544 rules!2971))))) b!4252533))

(declare-fun b!4252535 () Bool)

(declare-fun e!2641313 () Bool)

(declare-fun tp!1304947 () Bool)

(declare-fun tp!1304948 () Bool)

(assert (=> b!4252535 (= e!2641313 (and tp!1304947 tp!1304948))))

(declare-fun b!4252537 () Bool)

(declare-fun tp!1304946 () Bool)

(declare-fun tp!1304949 () Bool)

(assert (=> b!4252537 (= e!2641313 (and tp!1304946 tp!1304949))))

(assert (=> b!4251811 (= tp!1304762 e!2641313)))

(declare-fun b!4252536 () Bool)

(declare-fun tp!1304945 () Bool)

(assert (=> b!4252536 (= e!2641313 tp!1304945)))

(declare-fun b!4252534 () Bool)

(assert (=> b!4252534 (= e!2641313 tp_is_empty!22757)))

(assert (= (and b!4251811 ((_ is ElementMatch!12883) (reg!13212 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252534))

(assert (= (and b!4251811 ((_ is Concat!21092) (reg!13212 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252535))

(assert (= (and b!4251811 ((_ is Star!12883) (reg!13212 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252536))

(assert (= (and b!4251811 ((_ is Union!12883) (reg!13212 (regex!7978 (rule!11112 (h!52543 tokens!592)))))) b!4252537))

(declare-fun b!4252538 () Bool)

(declare-fun e!2641314 () Bool)

(declare-fun tp!1304950 () Bool)

(assert (=> b!4252538 (= e!2641314 (and tp_is_empty!22757 tp!1304950))))

(assert (=> b!4251767 (= tp!1304717 e!2641314)))

(assert (= (and b!4251767 ((_ is Cons!47121) (t!352434 (t!352434 shorterInput!62)))) b!4252538))

(declare-fun b_lambda!125277 () Bool)

(assert (= b_lambda!125271 (or (and b!4251779 b_free!126437 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))))) (and b!4252465 b_free!126453 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))))) (and b!4251462 b_free!126421 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))))) (and b!4251471 b_free!126425 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))))) (and b!4251793 b_free!126441) (and b!4252486 b_free!126457 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))))) b_lambda!125277)))

(declare-fun b_lambda!125279 () Bool)

(assert (= b_lambda!125237 (or (and b!4251793 b_free!126441 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))))) (and b!4251779 b_free!126437 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))))) (and b!4252465 b_free!126453 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))))) (and b!4251471 b_free!126425 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))))) (and b!4251462 b_free!126421 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))))) (and b!4252486 b_free!126457 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508746))))))) b_lambda!125279)))

(declare-fun b_lambda!125281 () Bool)

(assert (= b_lambda!125247 (or (and b!4251779 b_free!126437 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 rules!2971)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))))) (and b!4252465 b_free!126453 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 (t!352436 tokens!592)))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))))) (and b!4252486 b_free!126457 (= (toChars!10609 (transformation!7978 (h!52544 (t!352437 (t!352437 rules!2971))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))))) (and b!4251471 b_free!126425 (= (toChars!10609 (transformation!7978 (h!52544 rules!2971))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))))) (and b!4251793 b_free!126441 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 (t!352436 tokens!592))))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))))) (and b!4251462 b_free!126421 (= (toChars!10609 (transformation!7978 (rule!11112 (h!52543 tokens!592)))) (toChars!10609 (transformation!7978 (rule!11112 (_1!25473 (v!41069 lt!1508747))))))) b_lambda!125281)))

(check-sat (not b_next!127129) (not b_next!127145) (not b!4252532) (not bm!293990) (not b!4252484) (not b!4252421) (not b!4252481) (not b!4252079) (not b!4252503) (not b!4252381) (not b!4252528) (not b!4252514) (not b!4252496) (not tb!256443) (not b!4252531) (not b!4251722) (not b!4252341) (not b!4252218) (not b!4252274) (not b!4252368) (not b!4252009) (not d!1250508) b_and!337197 (not b!4252372) (not b!4252523) b_and!337207 (not d!1250534) (not b!4252499) (not b!4252489) (not tb!256507) (not b!4252482) (not b!4252401) (not b!4252193) (not d!1250530) (not b!4252533) (not bm!293992) (not b!4252339) (not b!4252387) (not d!1250436) (not b!4251952) (not d!1250342) (not b!4252517) (not b!4252385) (not b!4252491) b_and!337185 (not b!4252223) (not b!4252411) (not b!4252462) (not d!1250536) (not b!4252418) (not b!4252413) (not b!4252435) (not d!1250464) (not d!1250226) (not b!4252251) (not b!4252054) (not b!4252436) (not b!4252433) b_and!337181 (not b!4252529) (not d!1250426) (not b!4252508) (not b!4252371) (not b!4252257) (not b!4252412) (not b!4252373) (not d!1250324) (not d!1250356) (not b!4251523) (not d!1250460) (not bm!293991) (not b!4252340) (not b!4252183) (not b!4252450) (not d!1250444) (not b!4252075) (not b_lambda!125263) (not b!4252513) (not b!4252098) (not b!4252509) (not b!4252391) tp_is_empty!22757 (not b!4252524) (not d!1250524) (not b!4252016) b_and!337201 (not b!4252386) (not bm!293989) (not tb!256515) (not b!4252192) (not b!4252367) (not b!4252179) (not b!4252521) b_and!337209 (not b!4252425) (not b!4252219) (not b!4252194) (not b!4252013) (not d!1250360) (not b!4252324) (not b!4252487) (not b!4252467) (not b_lambda!125249) (not b!4252201) (not d!1250378) (not b!4252370) (not b!4252515) (not b!4252488) (not b_next!127127) (not b!4252457) (not d!1250544) (not b!4252393) (not b_next!127155) (not b_next!127159) (not b!4252431) (not b!4252426) b_and!337203 (not b!4252414) (not b!4252052) (not b!4252415) (not d!1250470) (not b!4251983) (not d!1250370) (not b!4252408) (not b!4252504) (not b!4252520) (not b!4252459) (not b!4252216) (not d!1250506) (not b!4251951) (not b!4252014) (not d!1250516) (not b!4252225) (not b!4252427) (not b!4252270) (not b!4252535) (not b!4252417) (not b!4252220) (not b!4251984) (not b!4252379) (not b!4252180) (not b!4252264) (not b!4252345) (not b_next!127157) (not b!4252453) (not b!4252512) (not b!4252497) (not b!4251985) (not b!4252224) (not d!1250358) (not d!1250520) (not b!4252493) (not b!4252527) (not b_next!127143) (not b!4252321) (not b!4252337) (not b!4252471) (not d!1250452) (not b!4252470) (not b!4252500) (not tb!256523) (not b!4252399) (not b!4252326) (not d!1250458) (not d!1250502) (not d!1250454) (not b!4252382) (not d!1250334) (not d!1250392) (not tb!256483) (not b!4252395) (not b_lambda!125273) (not b!4252178) (not b!4252511) (not d!1250478) (not b!4252525) (not b!4252536) (not b!4251955) (not b_next!127141) (not b_next!127161) (not b!4252077) (not b_next!127123) (not b!4252046) b_and!337183 (not d!1250472) (not b!4252346) b_and!337211 (not b!4251556) (not b!4252472) (not b!4252516) (not b!4252495) (not d!1250558) (not b!4252423) b_and!337205 (not b!4252538) (not b!4252428) (not b!4252221) (not b!4252461) (not b!4252409) (not d!1250540) (not b!4252507) (not b!4252460) (not b!4252276) (not b_lambda!125279) (not b!4252466) (not b!4252519) (not b!4252449) (not b!4252505) (not b_next!127139) (not d!1250388) (not b!4252432) (not b!4252097) (not b!4252388) (not b!4252501) (not d!1250394) (not b!4252410) (not bm!293993) (not d!1250498) (not b_lambda!125275) (not b!4252369) (not d!1250488) (not d!1250550) (not b!4252452) (not b!4252390) (not b!4252384) (not b!4252537) (not d!1250526) (not b!4252182) (not b!4252222) (not b!4252455) (not b!4252311) (not b!4252424) (not b!4252463) (not b!4252406) b_and!337199 (not b!4252468) (not b!4252464) (not b!4252375) (not b!4252422) (not b!4252365) (not b!4252439) (not b!4252398) (not b!4252389) (not d!1250482) (not b!4252377) (not d!1250490) (not b_lambda!125281) (not b!4252492) b_and!337187 (not b!4252483) (not b!4252400) (not d!1250318) (not b_lambda!125277) (not b!4252263) (not b_next!127125) (not b!4252485) (not b!4252402) (not b!4252008) (not b!4252338) (not b!4252430) (not b_lambda!125257) (not d!1250456) (not b!4252186))
(check-sat b_and!337197 b_and!337207 b_and!337185 b_and!337181 b_and!337201 b_and!337209 (not b_next!127127) (not b_next!127157) (not b_next!127143) b_and!337205 (not b_next!127139) b_and!337199 b_and!337187 (not b_next!127125) (not b_next!127129) (not b_next!127145) (not b_next!127155) (not b_next!127159) b_and!337203 (not b_next!127161) (not b_next!127141) (not b_next!127123) b_and!337183 b_and!337211)
