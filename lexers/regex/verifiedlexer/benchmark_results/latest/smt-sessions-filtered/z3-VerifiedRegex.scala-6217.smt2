; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301266 () Bool)

(assert start!301266)

(declare-fun b!3207806 () Bool)

(declare-fun b_free!85281 () Bool)

(declare-fun b_next!85985 () Bool)

(assert (=> b!3207806 (= b_free!85281 (not b_next!85985))))

(declare-fun tp!1012858 () Bool)

(declare-fun b_and!213591 () Bool)

(assert (=> b!3207806 (= tp!1012858 b_and!213591)))

(declare-fun b_free!85283 () Bool)

(declare-fun b_next!85987 () Bool)

(assert (=> b!3207806 (= b_free!85283 (not b_next!85987))))

(declare-fun tp!1012853 () Bool)

(declare-fun b_and!213593 () Bool)

(assert (=> b!3207806 (= tp!1012853 b_and!213593)))

(declare-fun b!3207824 () Bool)

(declare-fun b_free!85285 () Bool)

(declare-fun b_next!85989 () Bool)

(assert (=> b!3207824 (= b_free!85285 (not b_next!85989))))

(declare-fun tp!1012862 () Bool)

(declare-fun b_and!213595 () Bool)

(assert (=> b!3207824 (= tp!1012862 b_and!213595)))

(declare-fun b_free!85287 () Bool)

(declare-fun b_next!85991 () Bool)

(assert (=> b!3207824 (= b_free!85287 (not b_next!85991))))

(declare-fun tp!1012856 () Bool)

(declare-fun b_and!213597 () Bool)

(assert (=> b!3207824 (= tp!1012856 b_and!213597)))

(declare-fun b!3207800 () Bool)

(declare-fun b_free!85289 () Bool)

(declare-fun b_next!85993 () Bool)

(assert (=> b!3207800 (= b_free!85289 (not b_next!85993))))

(declare-fun tp!1012857 () Bool)

(declare-fun b_and!213599 () Bool)

(assert (=> b!3207800 (= tp!1012857 b_and!213599)))

(declare-fun b_free!85291 () Bool)

(declare-fun b_next!85995 () Bool)

(assert (=> b!3207800 (= b_free!85291 (not b_next!85995))))

(declare-fun tp!1012861 () Bool)

(declare-fun b_and!213601 () Bool)

(assert (=> b!3207800 (= tp!1012861 b_and!213601)))

(declare-fun bs!541501 () Bool)

(declare-fun b!3207823 () Bool)

(declare-fun b!3207813 () Bool)

(assert (= bs!541501 (and b!3207823 b!3207813)))

(declare-fun lambda!117379 () Int)

(declare-fun lambda!117378 () Int)

(assert (=> bs!541501 (not (= lambda!117379 lambda!117378))))

(declare-fun b!3207844 () Bool)

(declare-fun e!2000054 () Bool)

(assert (=> b!3207844 (= e!2000054 true)))

(declare-fun b!3207843 () Bool)

(declare-fun e!2000053 () Bool)

(assert (=> b!3207843 (= e!2000053 e!2000054)))

(declare-fun b!3207842 () Bool)

(declare-fun e!2000052 () Bool)

(assert (=> b!3207842 (= e!2000052 e!2000053)))

(assert (=> b!3207823 e!2000052))

(assert (= b!3207843 b!3207844))

(assert (= b!3207842 b!3207843))

(declare-datatypes ((C!20132 0))(
  ( (C!20133 (val!12114 Int)) )
))
(declare-datatypes ((Regex!9973 0))(
  ( (ElementMatch!9973 (c!538860 C!20132)) (Concat!15417 (regOne!20458 Regex!9973) (regTwo!20458 Regex!9973)) (EmptyExpr!9973) (Star!9973 (reg!10302 Regex!9973)) (EmptyLang!9973) (Union!9973 (regOne!20459 Regex!9973) (regTwo!20459 Regex!9973)) )
))
(declare-datatypes ((List!36260 0))(
  ( (Nil!36136) (Cons!36136 (h!41556 (_ BitVec 16)) (t!238411 List!36260)) )
))
(declare-datatypes ((TokenValue!5444 0))(
  ( (FloatLiteralValue!10888 (text!38553 List!36260)) (TokenValueExt!5443 (__x!23105 Int)) (Broken!27220 (value!169033 List!36260)) (Object!5567) (End!5444) (Def!5444) (Underscore!5444) (Match!5444) (Else!5444) (Error!5444) (Case!5444) (If!5444) (Extends!5444) (Abstract!5444) (Class!5444) (Val!5444) (DelimiterValue!10888 (del!5504 List!36260)) (KeywordValue!5450 (value!169034 List!36260)) (CommentValue!10888 (value!169035 List!36260)) (WhitespaceValue!10888 (value!169036 List!36260)) (IndentationValue!5444 (value!169037 List!36260)) (String!40553) (Int32!5444) (Broken!27221 (value!169038 List!36260)) (Boolean!5445) (Unit!50591) (OperatorValue!5447 (op!5504 List!36260)) (IdentifierValue!10888 (value!169039 List!36260)) (IdentifierValue!10889 (value!169040 List!36260)) (WhitespaceValue!10889 (value!169041 List!36260)) (True!10888) (False!10888) (Broken!27222 (value!169042 List!36260)) (Broken!27223 (value!169043 List!36260)) (True!10889) (RightBrace!5444) (RightBracket!5444) (Colon!5444) (Null!5444) (Comma!5444) (LeftBracket!5444) (False!10889) (LeftBrace!5444) (ImaginaryLiteralValue!5444 (text!38554 List!36260)) (StringLiteralValue!16332 (value!169044 List!36260)) (EOFValue!5444 (value!169045 List!36260)) (IdentValue!5444 (value!169046 List!36260)) (DelimiterValue!10889 (value!169047 List!36260)) (DedentValue!5444 (value!169048 List!36260)) (NewLineValue!5444 (value!169049 List!36260)) (IntegerValue!16332 (value!169050 (_ BitVec 32)) (text!38555 List!36260)) (IntegerValue!16333 (value!169051 Int) (text!38556 List!36260)) (Times!5444) (Or!5444) (Equal!5444) (Minus!5444) (Broken!27224 (value!169052 List!36260)) (And!5444) (Div!5444) (LessEqual!5444) (Mod!5444) (Concat!15418) (Not!5444) (Plus!5444) (SpaceValue!5444 (value!169053 List!36260)) (IntegerValue!16334 (value!169054 Int) (text!38557 List!36260)) (StringLiteralValue!16333 (text!38558 List!36260)) (FloatLiteralValue!10889 (text!38559 List!36260)) (BytesLiteralValue!5444 (value!169055 List!36260)) (CommentValue!10889 (value!169056 List!36260)) (StringLiteralValue!16334 (value!169057 List!36260)) (ErrorTokenValue!5444 (msg!5505 List!36260)) )
))
(declare-datatypes ((List!36261 0))(
  ( (Nil!36137) (Cons!36137 (h!41557 C!20132) (t!238412 List!36261)) )
))
(declare-datatypes ((IArray!21611 0))(
  ( (IArray!21612 (innerList!10863 List!36261)) )
))
(declare-datatypes ((Conc!10803 0))(
  ( (Node!10803 (left!28088 Conc!10803) (right!28418 Conc!10803) (csize!21836 Int) (cheight!11014 Int)) (Leaf!17021 (xs!13921 IArray!21611) (csize!21837 Int)) (Empty!10803) )
))
(declare-datatypes ((BalanceConc!21220 0))(
  ( (BalanceConc!21221 (c!538861 Conc!10803)) )
))
(declare-datatypes ((String!40554 0))(
  ( (String!40555 (value!169058 String)) )
))
(declare-datatypes ((TokenValueInjection!10316 0))(
  ( (TokenValueInjection!10317 (toValue!7298 Int) (toChars!7157 Int)) )
))
(declare-datatypes ((Rule!10228 0))(
  ( (Rule!10229 (regex!5214 Regex!9973) (tag!5740 String!40554) (isSeparator!5214 Bool) (transformation!5214 TokenValueInjection!10316)) )
))
(declare-datatypes ((List!36262 0))(
  ( (Nil!36138) (Cons!36138 (h!41558 Rule!10228) (t!238413 List!36262)) )
))
(declare-fun rules!2135 () List!36262)

(get-info :version)

(assert (= (and b!3207823 ((_ is Cons!36138) rules!2135)) b!3207842))

(declare-fun order!18415 () Int)

(declare-fun order!18413 () Int)

(declare-fun dynLambda!14577 (Int Int) Int)

(declare-fun dynLambda!14578 (Int Int) Int)

(assert (=> b!3207844 (< (dynLambda!14577 order!18413 (toValue!7298 (transformation!5214 (h!41558 rules!2135)))) (dynLambda!14578 order!18415 lambda!117379))))

(declare-fun order!18417 () Int)

(declare-fun dynLambda!14579 (Int Int) Int)

(assert (=> b!3207844 (< (dynLambda!14579 order!18417 (toChars!7157 (transformation!5214 (h!41558 rules!2135)))) (dynLambda!14578 order!18415 lambda!117379))))

(assert (=> b!3207823 true))

(declare-datatypes ((Token!9794 0))(
  ( (Token!9795 (value!169059 TokenValue!5444) (rule!7654 Rule!10228) (size!27229 Int) (originalCharacters!5928 List!36261)) )
))
(declare-datatypes ((List!36263 0))(
  ( (Nil!36139) (Cons!36139 (h!41559 Token!9794) (t!238414 List!36263)) )
))
(declare-fun tokens!494 () List!36263)

(declare-fun b!3207788 () Bool)

(declare-fun e!2000021 () Bool)

(declare-fun tp!1012850 () Bool)

(declare-fun e!2000010 () Bool)

(declare-fun inv!21 (TokenValue!5444) Bool)

(assert (=> b!3207788 (= e!2000021 (and (inv!21 (value!169059 (h!41559 tokens!494))) e!2000010 tp!1012850))))

(declare-fun tp!1012854 () Bool)

(declare-fun b!3207789 () Bool)

(declare-fun e!2000034 () Bool)

(declare-fun inv!48997 (String!40554) Bool)

(declare-fun inv!49000 (TokenValueInjection!10316) Bool)

(assert (=> b!3207789 (= e!2000010 (and tp!1012854 (inv!48997 (tag!5740 (rule!7654 (h!41559 tokens!494)))) (inv!49000 (transformation!5214 (rule!7654 (h!41559 tokens!494)))) e!2000034))))

(declare-fun b!3207791 () Bool)

(declare-fun e!2000011 () Bool)

(declare-fun e!2000019 () Bool)

(assert (=> b!3207791 (= e!2000011 (not e!2000019))))

(declare-fun res!1305458 () Bool)

(assert (=> b!3207791 (=> res!1305458 e!2000019)))

(declare-fun lt!1083464 () List!36261)

(declare-fun lt!1083460 () List!36261)

(assert (=> b!3207791 (= res!1305458 (not (= lt!1083464 lt!1083460)))))

(declare-datatypes ((LexerInterface!4803 0))(
  ( (LexerInterfaceExt!4800 (__x!23106 Int)) (Lexer!4801) )
))
(declare-fun thiss!18206 () LexerInterface!4803)

(declare-fun printList!1353 (LexerInterface!4803 List!36263) List!36261)

(assert (=> b!3207791 (= lt!1083460 (printList!1353 thiss!18206 (Cons!36139 (h!41559 tokens!494) Nil!36139)))))

(declare-fun lt!1083450 () BalanceConc!21220)

(declare-fun list!12855 (BalanceConc!21220) List!36261)

(assert (=> b!3207791 (= lt!1083464 (list!12855 lt!1083450))))

(declare-datatypes ((IArray!21613 0))(
  ( (IArray!21614 (innerList!10864 List!36263)) )
))
(declare-datatypes ((Conc!10804 0))(
  ( (Node!10804 (left!28089 Conc!10804) (right!28419 Conc!10804) (csize!21838 Int) (cheight!11015 Int)) (Leaf!17022 (xs!13922 IArray!21613) (csize!21839 Int)) (Empty!10804) )
))
(declare-datatypes ((BalanceConc!21222 0))(
  ( (BalanceConc!21223 (c!538862 Conc!10804)) )
))
(declare-fun lt!1083462 () BalanceConc!21222)

(declare-fun printTailRec!1300 (LexerInterface!4803 BalanceConc!21222 Int BalanceConc!21220) BalanceConc!21220)

(assert (=> b!3207791 (= lt!1083450 (printTailRec!1300 thiss!18206 lt!1083462 0 (BalanceConc!21221 Empty!10803)))))

(declare-fun print!1868 (LexerInterface!4803 BalanceConc!21222) BalanceConc!21220)

(assert (=> b!3207791 (= lt!1083450 (print!1868 thiss!18206 lt!1083462))))

(declare-fun singletonSeq!2310 (Token!9794) BalanceConc!21222)

(assert (=> b!3207791 (= lt!1083462 (singletonSeq!2310 (h!41559 tokens!494)))))

(declare-fun e!2000029 () Bool)

(declare-fun b!3207792 () Bool)

(declare-fun tp!1012852 () Bool)

(declare-fun e!2000036 () Bool)

(assert (=> b!3207792 (= e!2000029 (and tp!1012852 (inv!48997 (tag!5740 (h!41558 rules!2135))) (inv!49000 (transformation!5214 (h!41558 rules!2135))) e!2000036))))

(declare-fun b!3207793 () Bool)

(declare-fun res!1305435 () Bool)

(declare-fun e!2000027 () Bool)

(assert (=> b!3207793 (=> res!1305435 e!2000027)))

(declare-fun lt!1083473 () List!36261)

(declare-fun isEmpty!20228 (List!36261) Bool)

(assert (=> b!3207793 (= res!1305435 (isEmpty!20228 lt!1083473))))

(declare-fun b!3207794 () Bool)

(declare-fun res!1305445 () Bool)

(declare-fun e!2000043 () Bool)

(assert (=> b!3207794 (=> res!1305445 e!2000043)))

(declare-datatypes ((tuple2!35534 0))(
  ( (tuple2!35535 (_1!20901 Token!9794) (_2!20901 List!36261)) )
))
(declare-fun lt!1083446 () tuple2!35534)

(assert (=> b!3207794 (= res!1305445 (not (isEmpty!20228 (_2!20901 lt!1083446))))))

(declare-fun b!3207795 () Bool)

(declare-fun res!1305448 () Bool)

(declare-fun e!2000020 () Bool)

(assert (=> b!3207795 (=> (not res!1305448) (not e!2000020))))

(declare-datatypes ((tuple2!35536 0))(
  ( (tuple2!35537 (_1!20902 BalanceConc!21222) (_2!20902 BalanceConc!21220)) )
))
(declare-fun lt!1083452 () tuple2!35536)

(declare-fun apply!8177 (BalanceConc!21222 Int) Token!9794)

(assert (=> b!3207795 (= res!1305448 (= (apply!8177 (_1!20902 lt!1083452) 0) (h!41559 (t!238414 tokens!494))))))

(declare-fun b!3207796 () Bool)

(declare-fun res!1305449 () Bool)

(assert (=> b!3207796 (=> (not res!1305449) (not e!2000011))))

(declare-fun sepAndNonSepRulesDisjointChars!1408 (List!36262 List!36262) Bool)

(assert (=> b!3207796 (= res!1305449 (sepAndNonSepRulesDisjointChars!1408 rules!2135 rules!2135))))

(declare-fun b!3207797 () Bool)

(declare-fun e!2000023 () Bool)

(declare-fun e!2000015 () Bool)

(assert (=> b!3207797 (= e!2000023 e!2000015)))

(declare-fun res!1305455 () Bool)

(assert (=> b!3207797 (=> res!1305455 e!2000015)))

(declare-datatypes ((Option!7127 0))(
  ( (None!7126) (Some!7126 (v!35676 tuple2!35534)) )
))
(declare-fun lt!1083470 () Option!7127)

(declare-fun isDefined!5543 (Option!7127) Bool)

(assert (=> b!3207797 (= res!1305455 (not (isDefined!5543 lt!1083470)))))

(declare-fun lt!1083457 () List!36261)

(declare-fun maxPrefix!2445 (LexerInterface!4803 List!36262 List!36261) Option!7127)

(assert (=> b!3207797 (= lt!1083470 (maxPrefix!2445 thiss!18206 rules!2135 lt!1083457))))

(declare-fun b!3207798 () Bool)

(declare-fun e!2000042 () Bool)

(declare-fun e!2000037 () Bool)

(assert (=> b!3207798 (= e!2000042 e!2000037)))

(declare-fun res!1305443 () Bool)

(assert (=> b!3207798 (=> res!1305443 e!2000037)))

(declare-fun lt!1083447 () List!36261)

(declare-fun separatorToken!241 () Token!9794)

(declare-fun lt!1083472 () List!36261)

(declare-fun ++!8670 (List!36261 List!36261) List!36261)

(declare-fun charsOf!3230 (Token!9794) BalanceConc!21220)

(declare-fun printWithSeparatorTokenList!148 (LexerInterface!4803 List!36263 Token!9794) List!36261)

(assert (=> b!3207798 (= res!1305443 (not (= lt!1083472 (++!8670 (++!8670 (list!12855 (charsOf!3230 (h!41559 (t!238414 tokens!494)))) lt!1083447) (printWithSeparatorTokenList!148 thiss!18206 (t!238414 (t!238414 tokens!494)) separatorToken!241)))))))

(assert (=> b!3207798 (= lt!1083473 (++!8670 lt!1083447 lt!1083472))))

(assert (=> b!3207798 (= lt!1083447 (list!12855 (charsOf!3230 separatorToken!241)))))

(assert (=> b!3207798 (= lt!1083472 (printWithSeparatorTokenList!148 thiss!18206 (t!238414 tokens!494) separatorToken!241))))

(declare-fun lt!1083440 () List!36261)

(assert (=> b!3207798 (= lt!1083440 (printWithSeparatorTokenList!148 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3207799 () Bool)

(declare-fun e!2000022 () Bool)

(declare-fun tp!1012860 () Bool)

(assert (=> b!3207799 (= e!2000022 (and e!2000029 tp!1012860))))

(assert (=> b!3207800 (= e!2000036 (and tp!1012857 tp!1012861))))

(declare-fun e!2000044 () Bool)

(declare-fun b!3207801 () Bool)

(declare-fun e!2000045 () Bool)

(declare-fun tp!1012859 () Bool)

(assert (=> b!3207801 (= e!2000044 (and tp!1012859 (inv!48997 (tag!5740 (rule!7654 separatorToken!241))) (inv!49000 (transformation!5214 (rule!7654 separatorToken!241))) e!2000045))))

(declare-fun b!3207802 () Bool)

(declare-fun res!1305441 () Bool)

(assert (=> b!3207802 (=> (not res!1305441) (not e!2000011))))

(declare-fun rulesProduceIndividualToken!2295 (LexerInterface!4803 List!36262 Token!9794) Bool)

(assert (=> b!3207802 (= res!1305441 (rulesProduceIndividualToken!2295 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3207803 () Bool)

(declare-fun e!2000030 () Bool)

(declare-fun tp!1012855 () Bool)

(assert (=> b!3207803 (= e!2000030 (and (inv!21 (value!169059 separatorToken!241)) e!2000044 tp!1012855))))

(declare-fun b!3207804 () Bool)

(assert (=> b!3207804 (= e!2000015 e!2000043)))

(declare-fun res!1305450 () Bool)

(assert (=> b!3207804 (=> res!1305450 e!2000043)))

(assert (=> b!3207804 (= res!1305450 (not (= (_1!20901 lt!1083446) (h!41559 tokens!494))))))

(declare-fun get!11503 (Option!7127) tuple2!35534)

(assert (=> b!3207804 (= lt!1083446 (get!11503 lt!1083470))))

(declare-fun b!3207805 () Bool)

(declare-fun e!2000038 () Bool)

(assert (=> b!3207805 (= e!2000038 true)))

(declare-fun lt!1083469 () Bool)

(declare-fun lt!1083463 () List!36261)

(declare-fun lt!1083436 () C!20132)

(declare-fun contains!6446 (List!36261 C!20132) Bool)

(assert (=> b!3207805 (= lt!1083469 (contains!6446 lt!1083463 lt!1083436))))

(assert (=> b!3207806 (= e!2000045 (and tp!1012858 tp!1012853))))

(declare-fun b!3207807 () Bool)

(assert (=> b!3207807 (= e!2000027 e!2000038)))

(declare-fun res!1305457 () Bool)

(assert (=> b!3207807 (=> res!1305457 e!2000038)))

(declare-fun lt!1083465 () List!36261)

(assert (=> b!3207807 (= res!1305457 (contains!6446 lt!1083465 lt!1083436))))

(declare-fun head!7033 (List!36261) C!20132)

(assert (=> b!3207807 (= lt!1083436 (head!7033 lt!1083473))))

(declare-fun b!3207808 () Bool)

(declare-fun res!1305463 () Bool)

(assert (=> b!3207808 (=> (not res!1305463) (not e!2000011))))

(assert (=> b!3207808 (= res!1305463 (isSeparator!5214 (rule!7654 separatorToken!241)))))

(declare-fun b!3207809 () Bool)

(declare-fun e!2000039 () Bool)

(declare-fun e!2000016 () Bool)

(assert (=> b!3207809 (= e!2000039 e!2000016)))

(declare-fun res!1305466 () Bool)

(assert (=> b!3207809 (=> res!1305466 e!2000016)))

(declare-fun lt!1083456 () List!36261)

(assert (=> b!3207809 (= res!1305466 (not (= lt!1083440 lt!1083456)))))

(declare-fun lt!1083467 () List!36261)

(assert (=> b!3207809 (= lt!1083467 lt!1083456)))

(assert (=> b!3207809 (= lt!1083456 (++!8670 lt!1083457 lt!1083473))))

(declare-datatypes ((Unit!50592 0))(
  ( (Unit!50593) )
))
(declare-fun lt!1083461 () Unit!50592)

(declare-fun lemmaConcatAssociativity!1736 (List!36261 List!36261 List!36261) Unit!50592)

(assert (=> b!3207809 (= lt!1083461 (lemmaConcatAssociativity!1736 lt!1083457 lt!1083447 lt!1083472))))

(declare-fun res!1305453 () Bool)

(assert (=> start!301266 (=> (not res!1305453) (not e!2000011))))

(assert (=> start!301266 (= res!1305453 ((_ is Lexer!4801) thiss!18206))))

(assert (=> start!301266 e!2000011))

(assert (=> start!301266 true))

(assert (=> start!301266 e!2000022))

(declare-fun e!2000026 () Bool)

(assert (=> start!301266 e!2000026))

(declare-fun inv!49001 (Token!9794) Bool)

(assert (=> start!301266 (and (inv!49001 separatorToken!241) e!2000030)))

(declare-fun b!3207790 () Bool)

(declare-fun tp!1012851 () Bool)

(assert (=> b!3207790 (= e!2000026 (and (inv!49001 (h!41559 tokens!494)) e!2000021 tp!1012851))))

(declare-fun b!3207810 () Bool)

(declare-fun res!1305439 () Bool)

(declare-fun e!2000025 () Bool)

(assert (=> b!3207810 (=> res!1305439 e!2000025)))

(assert (=> b!3207810 (= res!1305439 (not (rulesProduceIndividualToken!2295 thiss!18206 rules!2135 (h!41559 tokens!494))))))

(declare-fun b!3207811 () Bool)

(declare-fun e!2000040 () Bool)

(declare-fun lt!1083438 () Rule!10228)

(assert (=> b!3207811 (= e!2000040 (= (rule!7654 (h!41559 tokens!494)) lt!1083438))))

(declare-fun b!3207812 () Bool)

(declare-fun e!2000031 () Bool)

(assert (=> b!3207812 (= e!2000025 e!2000031)))

(declare-fun res!1305446 () Bool)

(assert (=> b!3207812 (=> res!1305446 e!2000031)))

(declare-fun lt!1083441 () BalanceConc!21220)

(declare-fun isEmpty!20229 (BalanceConc!21222) Bool)

(declare-fun lex!2133 (LexerInterface!4803 List!36262 BalanceConc!21220) tuple2!35536)

(assert (=> b!3207812 (= res!1305446 (isEmpty!20229 (_1!20902 (lex!2133 thiss!18206 rules!2135 lt!1083441))))))

(declare-fun seqFromList!3499 (List!36261) BalanceConc!21220)

(assert (=> b!3207812 (= lt!1083441 (seqFromList!3499 lt!1083457))))

(declare-fun res!1305459 () Bool)

(assert (=> b!3207813 (=> (not res!1305459) (not e!2000011))))

(declare-fun forall!7378 (List!36263 Int) Bool)

(assert (=> b!3207813 (= res!1305459 (forall!7378 tokens!494 lambda!117378))))

(declare-fun b!3207814 () Bool)

(declare-fun e!2000028 () Bool)

(declare-fun lt!1083455 () Rule!10228)

(assert (=> b!3207814 (= e!2000028 (= (rule!7654 separatorToken!241) lt!1083455))))

(declare-fun b!3207815 () Bool)

(declare-fun e!2000013 () Bool)

(assert (=> b!3207815 (= e!2000013 false)))

(declare-fun b!3207816 () Bool)

(declare-fun res!1305468 () Bool)

(assert (=> b!3207816 (=> (not res!1305468) (not e!2000011))))

(assert (=> b!3207816 (= res!1305468 (and (not ((_ is Nil!36139) tokens!494)) (not ((_ is Nil!36139) (t!238414 tokens!494)))))))

(declare-fun b!3207817 () Bool)

(assert (=> b!3207817 (= e!2000043 e!2000027)))

(declare-fun res!1305460 () Bool)

(assert (=> b!3207817 (=> res!1305460 e!2000027)))

(declare-fun matchR!4607 (Regex!9973 List!36261) Bool)

(assert (=> b!3207817 (= res!1305460 (not (matchR!4607 (regex!5214 (rule!7654 (h!41559 tokens!494))) lt!1083457)))))

(declare-fun ruleValid!1644 (LexerInterface!4803 Rule!10228) Bool)

(assert (=> b!3207817 (ruleValid!1644 thiss!18206 (rule!7654 (h!41559 tokens!494)))))

(declare-fun lt!1083451 () Unit!50592)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!930 (LexerInterface!4803 Rule!10228 List!36262) Unit!50592)

(assert (=> b!3207817 (= lt!1083451 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!930 thiss!18206 (rule!7654 (h!41559 tokens!494)) rules!2135))))

(declare-fun b!3207818 () Bool)

(assert (=> b!3207818 (= e!2000019 e!2000025)))

(declare-fun res!1305442 () Bool)

(assert (=> b!3207818 (=> res!1305442 e!2000025)))

(assert (=> b!3207818 (= res!1305442 (or (not (= lt!1083460 lt!1083457)) (not (= lt!1083464 lt!1083457))))))

(assert (=> b!3207818 (= lt!1083457 (list!12855 (charsOf!3230 (h!41559 tokens!494))))))

(declare-fun b!3207819 () Bool)

(declare-fun e!2000033 () Bool)

(assert (=> b!3207819 (= e!2000033 e!2000040)))

(declare-fun res!1305464 () Bool)

(assert (=> b!3207819 (=> (not res!1305464) (not e!2000040))))

(assert (=> b!3207819 (= res!1305464 (matchR!4607 (regex!5214 lt!1083438) lt!1083457))))

(declare-datatypes ((Option!7128 0))(
  ( (None!7127) (Some!7127 (v!35677 Rule!10228)) )
))
(declare-fun lt!1083466 () Option!7128)

(declare-fun get!11504 (Option!7128) Rule!10228)

(assert (=> b!3207819 (= lt!1083438 (get!11504 lt!1083466))))

(declare-fun b!3207820 () Bool)

(declare-fun res!1305444 () Bool)

(assert (=> b!3207820 (=> (not res!1305444) (not e!2000011))))

(declare-fun isEmpty!20230 (List!36262) Bool)

(assert (=> b!3207820 (= res!1305444 (not (isEmpty!20230 rules!2135)))))

(declare-fun b!3207821 () Bool)

(declare-fun e!2000014 () Bool)

(assert (=> b!3207821 (= e!2000014 e!2000028)))

(declare-fun res!1305440 () Bool)

(assert (=> b!3207821 (=> (not res!1305440) (not e!2000028))))

(assert (=> b!3207821 (= res!1305440 (matchR!4607 (regex!5214 lt!1083455) lt!1083447))))

(declare-fun lt!1083476 () Option!7128)

(assert (=> b!3207821 (= lt!1083455 (get!11504 lt!1083476))))

(declare-fun b!3207822 () Bool)

(assert (=> b!3207822 (= e!2000031 e!2000042)))

(declare-fun res!1305452 () Bool)

(assert (=> b!3207822 (=> res!1305452 e!2000042)))

(assert (=> b!3207822 (= res!1305452 (or (isSeparator!5214 (rule!7654 (h!41559 tokens!494))) (isSeparator!5214 (rule!7654 (h!41559 (t!238414 tokens!494))))))))

(declare-fun lt!1083444 () Unit!50592)

(declare-fun forallContained!1185 (List!36263 Int Token!9794) Unit!50592)

(assert (=> b!3207822 (= lt!1083444 (forallContained!1185 tokens!494 lambda!117378 (h!41559 (t!238414 tokens!494))))))

(declare-fun lt!1083468 () Unit!50592)

(assert (=> b!3207822 (= lt!1083468 (forallContained!1185 tokens!494 lambda!117378 (h!41559 tokens!494)))))

(assert (=> b!3207823 (= e!2000016 e!2000023)))

(declare-fun res!1305437 () Bool)

(assert (=> b!3207823 (=> res!1305437 e!2000023)))

(declare-fun contains!6447 (List!36262 Rule!10228) Bool)

(assert (=> b!3207823 (= res!1305437 (not (contains!6447 rules!2135 (rule!7654 (h!41559 tokens!494)))))))

(declare-fun lt!1083454 () C!20132)

(assert (=> b!3207823 (not (contains!6446 lt!1083465 lt!1083454))))

(declare-fun usedCharacters!530 (Regex!9973) List!36261)

(assert (=> b!3207823 (= lt!1083465 (usedCharacters!530 (regex!5214 (rule!7654 (h!41559 tokens!494)))))))

(declare-fun lt!1083448 () Unit!50592)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!138 (LexerInterface!4803 List!36262 List!36262 Rule!10228 Rule!10228 C!20132) Unit!50592)

(assert (=> b!3207823 (= lt!1083448 (lemmaNonSepRuleNotContainsCharContainedInASepRule!138 thiss!18206 rules!2135 rules!2135 (rule!7654 (h!41559 tokens!494)) (rule!7654 separatorToken!241) lt!1083454))))

(declare-fun lt!1083445 () Unit!50592)

(assert (=> b!3207823 (= lt!1083445 (forallContained!1185 tokens!494 lambda!117379 (h!41559 (t!238414 tokens!494))))))

(assert (=> b!3207823 (= (rulesProduceIndividualToken!2295 thiss!18206 rules!2135 (h!41559 (t!238414 tokens!494))) e!2000020)))

(declare-fun res!1305438 () Bool)

(assert (=> b!3207823 (=> (not res!1305438) (not e!2000020))))

(declare-fun size!27230 (BalanceConc!21222) Int)

(assert (=> b!3207823 (= res!1305438 (= (size!27230 (_1!20902 lt!1083452)) 1))))

(declare-fun lt!1083471 () BalanceConc!21220)

(assert (=> b!3207823 (= lt!1083452 (lex!2133 thiss!18206 rules!2135 lt!1083471))))

(declare-fun lt!1083437 () BalanceConc!21222)

(assert (=> b!3207823 (= lt!1083471 (printTailRec!1300 thiss!18206 lt!1083437 0 (BalanceConc!21221 Empty!10803)))))

(assert (=> b!3207823 (= lt!1083471 (print!1868 thiss!18206 lt!1083437))))

(assert (=> b!3207823 (= lt!1083437 (singletonSeq!2310 (h!41559 (t!238414 tokens!494))))))

(declare-fun e!2000035 () Bool)

(assert (=> b!3207823 e!2000035))

(declare-fun res!1305456 () Bool)

(assert (=> b!3207823 (=> (not res!1305456) (not e!2000035))))

(declare-fun lt!1083453 () tuple2!35536)

(assert (=> b!3207823 (= res!1305456 (= (size!27230 (_1!20902 lt!1083453)) 1))))

(declare-fun lt!1083442 () BalanceConc!21220)

(assert (=> b!3207823 (= lt!1083453 (lex!2133 thiss!18206 rules!2135 lt!1083442))))

(declare-fun lt!1083475 () BalanceConc!21222)

(assert (=> b!3207823 (= lt!1083442 (printTailRec!1300 thiss!18206 lt!1083475 0 (BalanceConc!21221 Empty!10803)))))

(assert (=> b!3207823 (= lt!1083442 (print!1868 thiss!18206 lt!1083475))))

(assert (=> b!3207823 (= lt!1083475 (singletonSeq!2310 separatorToken!241))))

(declare-fun lt!1083459 () Unit!50592)

(declare-fun e!2000041 () Unit!50592)

(assert (=> b!3207823 (= lt!1083459 e!2000041)))

(declare-fun c!538859 () Bool)

(assert (=> b!3207823 (= c!538859 (not (contains!6446 lt!1083463 lt!1083454)))))

(assert (=> b!3207823 (= lt!1083454 (head!7033 lt!1083447))))

(assert (=> b!3207823 (= lt!1083463 (usedCharacters!530 (regex!5214 (rule!7654 separatorToken!241))))))

(assert (=> b!3207823 e!2000014))

(declare-fun res!1305465 () Bool)

(assert (=> b!3207823 (=> (not res!1305465) (not e!2000014))))

(declare-fun isDefined!5544 (Option!7128) Bool)

(assert (=> b!3207823 (= res!1305465 (isDefined!5544 lt!1083476))))

(declare-fun getRuleFromTag!919 (LexerInterface!4803 List!36262 String!40554) Option!7128)

(assert (=> b!3207823 (= lt!1083476 (getRuleFromTag!919 thiss!18206 rules!2135 (tag!5740 (rule!7654 separatorToken!241))))))

(declare-fun lt!1083443 () Unit!50592)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!919 (LexerInterface!4803 List!36262 List!36261 Token!9794) Unit!50592)

(assert (=> b!3207823 (= lt!1083443 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!919 thiss!18206 rules!2135 lt!1083447 separatorToken!241))))

(declare-fun maxPrefixOneRule!1582 (LexerInterface!4803 Rule!10228 List!36261) Option!7127)

(declare-fun apply!8178 (TokenValueInjection!10316 BalanceConc!21220) TokenValue!5444)

(declare-fun size!27231 (List!36261) Int)

(assert (=> b!3207823 (= (maxPrefixOneRule!1582 thiss!18206 (rule!7654 (h!41559 tokens!494)) lt!1083457) (Some!7126 (tuple2!35535 (Token!9795 (apply!8178 (transformation!5214 (rule!7654 (h!41559 tokens!494))) lt!1083441) (rule!7654 (h!41559 tokens!494)) (size!27231 lt!1083457) lt!1083457) Nil!36137)))))

(declare-fun lt!1083474 () Unit!50592)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!695 (LexerInterface!4803 List!36262 List!36261 List!36261 List!36261 Rule!10228) Unit!50592)

(assert (=> b!3207823 (= lt!1083474 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!695 thiss!18206 rules!2135 lt!1083457 lt!1083457 Nil!36137 (rule!7654 (h!41559 tokens!494))))))

(assert (=> b!3207823 e!2000033))

(declare-fun res!1305462 () Bool)

(assert (=> b!3207823 (=> (not res!1305462) (not e!2000033))))

(assert (=> b!3207823 (= res!1305462 (isDefined!5544 lt!1083466))))

(assert (=> b!3207823 (= lt!1083466 (getRuleFromTag!919 thiss!18206 rules!2135 (tag!5740 (rule!7654 (h!41559 tokens!494)))))))

(declare-fun lt!1083458 () Unit!50592)

(assert (=> b!3207823 (= lt!1083458 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!919 thiss!18206 rules!2135 lt!1083457 (h!41559 tokens!494)))))

(declare-fun lt!1083449 () Unit!50592)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!842 (LexerInterface!4803 List!36262 List!36263 Token!9794) Unit!50592)

(assert (=> b!3207823 (= lt!1083449 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!842 thiss!18206 rules!2135 tokens!494 (h!41559 tokens!494)))))

(assert (=> b!3207824 (= e!2000034 (and tp!1012862 tp!1012856))))

(declare-fun b!3207825 () Bool)

(declare-fun res!1305436 () Bool)

(assert (=> b!3207825 (=> (not res!1305436) (not e!2000011))))

(declare-fun rulesProduceEachTokenIndividually!1254 (LexerInterface!4803 List!36262 BalanceConc!21222) Bool)

(declare-fun seqFromList!3500 (List!36263) BalanceConc!21222)

(assert (=> b!3207825 (= res!1305436 (rulesProduceEachTokenIndividually!1254 thiss!18206 rules!2135 (seqFromList!3500 tokens!494)))))

(declare-fun b!3207826 () Bool)

(declare-fun res!1305467 () Bool)

(assert (=> b!3207826 (=> res!1305467 e!2000023)))

(assert (=> b!3207826 (= res!1305467 (not (contains!6447 rules!2135 (rule!7654 separatorToken!241))))))

(declare-fun b!3207827 () Bool)

(declare-fun isEmpty!20231 (BalanceConc!21220) Bool)

(assert (=> b!3207827 (= e!2000020 (isEmpty!20231 (_2!20902 lt!1083452)))))

(declare-fun b!3207828 () Bool)

(declare-fun Unit!50594 () Unit!50592)

(assert (=> b!3207828 (= e!2000041 Unit!50594)))

(declare-fun b!3207829 () Bool)

(assert (=> b!3207829 (= e!2000035 (isEmpty!20231 (_2!20902 lt!1083453)))))

(declare-fun b!3207830 () Bool)

(declare-fun res!1305454 () Bool)

(assert (=> b!3207830 (=> (not res!1305454) (not e!2000011))))

(declare-fun rulesInvariant!4200 (LexerInterface!4803 List!36262) Bool)

(assert (=> b!3207830 (= res!1305454 (rulesInvariant!4200 thiss!18206 rules!2135))))

(declare-fun b!3207831 () Bool)

(assert (=> b!3207831 (= e!2000037 e!2000039)))

(declare-fun res!1305447 () Bool)

(assert (=> b!3207831 (=> res!1305447 e!2000039)))

(assert (=> b!3207831 (= res!1305447 (not (= lt!1083440 lt!1083467)))))

(assert (=> b!3207831 (= lt!1083467 (++!8670 (++!8670 lt!1083457 lt!1083447) lt!1083472))))

(declare-fun b!3207832 () Bool)

(declare-fun Unit!50595 () Unit!50592)

(assert (=> b!3207832 (= e!2000041 Unit!50595)))

(declare-fun lt!1083439 () Unit!50592)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!378 (Regex!9973 List!36261 C!20132) Unit!50592)

(assert (=> b!3207832 (= lt!1083439 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!378 (regex!5214 (rule!7654 separatorToken!241)) lt!1083447 lt!1083454))))

(declare-fun res!1305451 () Bool)

(assert (=> b!3207832 (= res!1305451 (not (matchR!4607 (regex!5214 (rule!7654 separatorToken!241)) lt!1083447)))))

(assert (=> b!3207832 (=> (not res!1305451) (not e!2000013))))

(assert (=> b!3207832 e!2000013))

(declare-fun b!3207833 () Bool)

(declare-fun res!1305461 () Bool)

(assert (=> b!3207833 (=> (not res!1305461) (not e!2000035))))

(assert (=> b!3207833 (= res!1305461 (= (apply!8177 (_1!20902 lt!1083453) 0) separatorToken!241))))

(assert (= (and start!301266 res!1305453) b!3207820))

(assert (= (and b!3207820 res!1305444) b!3207830))

(assert (= (and b!3207830 res!1305454) b!3207825))

(assert (= (and b!3207825 res!1305436) b!3207802))

(assert (= (and b!3207802 res!1305441) b!3207808))

(assert (= (and b!3207808 res!1305463) b!3207813))

(assert (= (and b!3207813 res!1305459) b!3207796))

(assert (= (and b!3207796 res!1305449) b!3207816))

(assert (= (and b!3207816 res!1305468) b!3207791))

(assert (= (and b!3207791 (not res!1305458)) b!3207818))

(assert (= (and b!3207818 (not res!1305442)) b!3207810))

(assert (= (and b!3207810 (not res!1305439)) b!3207812))

(assert (= (and b!3207812 (not res!1305446)) b!3207822))

(assert (= (and b!3207822 (not res!1305452)) b!3207798))

(assert (= (and b!3207798 (not res!1305443)) b!3207831))

(assert (= (and b!3207831 (not res!1305447)) b!3207809))

(assert (= (and b!3207809 (not res!1305466)) b!3207823))

(assert (= (and b!3207823 res!1305462) b!3207819))

(assert (= (and b!3207819 res!1305464) b!3207811))

(assert (= (and b!3207823 res!1305465) b!3207821))

(assert (= (and b!3207821 res!1305440) b!3207814))

(assert (= (and b!3207823 c!538859) b!3207832))

(assert (= (and b!3207823 (not c!538859)) b!3207828))

(assert (= (and b!3207832 res!1305451) b!3207815))

(assert (= (and b!3207823 res!1305456) b!3207833))

(assert (= (and b!3207833 res!1305461) b!3207829))

(assert (= (and b!3207823 res!1305438) b!3207795))

(assert (= (and b!3207795 res!1305448) b!3207827))

(assert (= (and b!3207823 (not res!1305437)) b!3207826))

(assert (= (and b!3207826 (not res!1305467)) b!3207797))

(assert (= (and b!3207797 (not res!1305455)) b!3207804))

(assert (= (and b!3207804 (not res!1305450)) b!3207794))

(assert (= (and b!3207794 (not res!1305445)) b!3207817))

(assert (= (and b!3207817 (not res!1305460)) b!3207793))

(assert (= (and b!3207793 (not res!1305435)) b!3207807))

(assert (= (and b!3207807 (not res!1305457)) b!3207805))

(assert (= b!3207792 b!3207800))

(assert (= b!3207799 b!3207792))

(assert (= (and start!301266 ((_ is Cons!36138) rules!2135)) b!3207799))

(assert (= b!3207789 b!3207824))

(assert (= b!3207788 b!3207789))

(assert (= b!3207790 b!3207788))

(assert (= (and start!301266 ((_ is Cons!36139) tokens!494)) b!3207790))

(assert (= b!3207801 b!3207806))

(assert (= b!3207803 b!3207801))

(assert (= start!301266 b!3207803))

(declare-fun m!3474843 () Bool)

(assert (=> start!301266 m!3474843))

(declare-fun m!3474845 () Bool)

(assert (=> b!3207802 m!3474845))

(declare-fun m!3474847 () Bool)

(assert (=> b!3207790 m!3474847))

(declare-fun m!3474849 () Bool)

(assert (=> b!3207797 m!3474849))

(declare-fun m!3474851 () Bool)

(assert (=> b!3207797 m!3474851))

(declare-fun m!3474853 () Bool)

(assert (=> b!3207796 m!3474853))

(declare-fun m!3474855 () Bool)

(assert (=> b!3207810 m!3474855))

(declare-fun m!3474857 () Bool)

(assert (=> b!3207830 m!3474857))

(declare-fun m!3474859 () Bool)

(assert (=> b!3207819 m!3474859))

(declare-fun m!3474861 () Bool)

(assert (=> b!3207819 m!3474861))

(declare-fun m!3474863 () Bool)

(assert (=> b!3207822 m!3474863))

(declare-fun m!3474865 () Bool)

(assert (=> b!3207822 m!3474865))

(declare-fun m!3474867 () Bool)

(assert (=> b!3207832 m!3474867))

(declare-fun m!3474869 () Bool)

(assert (=> b!3207832 m!3474869))

(declare-fun m!3474871 () Bool)

(assert (=> b!3207823 m!3474871))

(declare-fun m!3474873 () Bool)

(assert (=> b!3207823 m!3474873))

(declare-fun m!3474875 () Bool)

(assert (=> b!3207823 m!3474875))

(declare-fun m!3474877 () Bool)

(assert (=> b!3207823 m!3474877))

(declare-fun m!3474879 () Bool)

(assert (=> b!3207823 m!3474879))

(declare-fun m!3474881 () Bool)

(assert (=> b!3207823 m!3474881))

(declare-fun m!3474883 () Bool)

(assert (=> b!3207823 m!3474883))

(declare-fun m!3474885 () Bool)

(assert (=> b!3207823 m!3474885))

(declare-fun m!3474887 () Bool)

(assert (=> b!3207823 m!3474887))

(declare-fun m!3474889 () Bool)

(assert (=> b!3207823 m!3474889))

(declare-fun m!3474891 () Bool)

(assert (=> b!3207823 m!3474891))

(declare-fun m!3474893 () Bool)

(assert (=> b!3207823 m!3474893))

(declare-fun m!3474895 () Bool)

(assert (=> b!3207823 m!3474895))

(declare-fun m!3474897 () Bool)

(assert (=> b!3207823 m!3474897))

(declare-fun m!3474899 () Bool)

(assert (=> b!3207823 m!3474899))

(declare-fun m!3474901 () Bool)

(assert (=> b!3207823 m!3474901))

(declare-fun m!3474903 () Bool)

(assert (=> b!3207823 m!3474903))

(declare-fun m!3474905 () Bool)

(assert (=> b!3207823 m!3474905))

(declare-fun m!3474907 () Bool)

(assert (=> b!3207823 m!3474907))

(declare-fun m!3474909 () Bool)

(assert (=> b!3207823 m!3474909))

(declare-fun m!3474911 () Bool)

(assert (=> b!3207823 m!3474911))

(declare-fun m!3474913 () Bool)

(assert (=> b!3207823 m!3474913))

(declare-fun m!3474915 () Bool)

(assert (=> b!3207823 m!3474915))

(declare-fun m!3474917 () Bool)

(assert (=> b!3207823 m!3474917))

(declare-fun m!3474919 () Bool)

(assert (=> b!3207823 m!3474919))

(declare-fun m!3474921 () Bool)

(assert (=> b!3207823 m!3474921))

(declare-fun m!3474923 () Bool)

(assert (=> b!3207823 m!3474923))

(declare-fun m!3474925 () Bool)

(assert (=> b!3207823 m!3474925))

(declare-fun m!3474927 () Bool)

(assert (=> b!3207823 m!3474927))

(declare-fun m!3474929 () Bool)

(assert (=> b!3207823 m!3474929))

(declare-fun m!3474931 () Bool)

(assert (=> b!3207809 m!3474931))

(declare-fun m!3474933 () Bool)

(assert (=> b!3207809 m!3474933))

(declare-fun m!3474935 () Bool)

(assert (=> b!3207803 m!3474935))

(declare-fun m!3474937 () Bool)

(assert (=> b!3207788 m!3474937))

(declare-fun m!3474939 () Bool)

(assert (=> b!3207821 m!3474939))

(declare-fun m!3474941 () Bool)

(assert (=> b!3207821 m!3474941))

(declare-fun m!3474943 () Bool)

(assert (=> b!3207807 m!3474943))

(declare-fun m!3474945 () Bool)

(assert (=> b!3207807 m!3474945))

(declare-fun m!3474947 () Bool)

(assert (=> b!3207813 m!3474947))

(declare-fun m!3474949 () Bool)

(assert (=> b!3207805 m!3474949))

(declare-fun m!3474951 () Bool)

(assert (=> b!3207794 m!3474951))

(declare-fun m!3474953 () Bool)

(assert (=> b!3207818 m!3474953))

(assert (=> b!3207818 m!3474953))

(declare-fun m!3474955 () Bool)

(assert (=> b!3207818 m!3474955))

(declare-fun m!3474957 () Bool)

(assert (=> b!3207826 m!3474957))

(declare-fun m!3474959 () Bool)

(assert (=> b!3207825 m!3474959))

(assert (=> b!3207825 m!3474959))

(declare-fun m!3474961 () Bool)

(assert (=> b!3207825 m!3474961))

(declare-fun m!3474963 () Bool)

(assert (=> b!3207793 m!3474963))

(declare-fun m!3474965 () Bool)

(assert (=> b!3207817 m!3474965))

(declare-fun m!3474967 () Bool)

(assert (=> b!3207817 m!3474967))

(declare-fun m!3474969 () Bool)

(assert (=> b!3207817 m!3474969))

(declare-fun m!3474971 () Bool)

(assert (=> b!3207820 m!3474971))

(declare-fun m!3474973 () Bool)

(assert (=> b!3207827 m!3474973))

(declare-fun m!3474975 () Bool)

(assert (=> b!3207792 m!3474975))

(declare-fun m!3474977 () Bool)

(assert (=> b!3207792 m!3474977))

(declare-fun m!3474979 () Bool)

(assert (=> b!3207801 m!3474979))

(declare-fun m!3474981 () Bool)

(assert (=> b!3207801 m!3474981))

(declare-fun m!3474983 () Bool)

(assert (=> b!3207831 m!3474983))

(assert (=> b!3207831 m!3474983))

(declare-fun m!3474985 () Bool)

(assert (=> b!3207831 m!3474985))

(declare-fun m!3474987 () Bool)

(assert (=> b!3207833 m!3474987))

(declare-fun m!3474989 () Bool)

(assert (=> b!3207791 m!3474989))

(declare-fun m!3474991 () Bool)

(assert (=> b!3207791 m!3474991))

(declare-fun m!3474993 () Bool)

(assert (=> b!3207791 m!3474993))

(declare-fun m!3474995 () Bool)

(assert (=> b!3207791 m!3474995))

(declare-fun m!3474997 () Bool)

(assert (=> b!3207791 m!3474997))

(declare-fun m!3474999 () Bool)

(assert (=> b!3207812 m!3474999))

(declare-fun m!3475001 () Bool)

(assert (=> b!3207812 m!3475001))

(declare-fun m!3475003 () Bool)

(assert (=> b!3207812 m!3475003))

(declare-fun m!3475005 () Bool)

(assert (=> b!3207795 m!3475005))

(declare-fun m!3475007 () Bool)

(assert (=> b!3207804 m!3475007))

(declare-fun m!3475009 () Bool)

(assert (=> b!3207789 m!3475009))

(declare-fun m!3475011 () Bool)

(assert (=> b!3207789 m!3475011))

(declare-fun m!3475013 () Bool)

(assert (=> b!3207798 m!3475013))

(declare-fun m!3475015 () Bool)

(assert (=> b!3207798 m!3475015))

(declare-fun m!3475017 () Bool)

(assert (=> b!3207798 m!3475017))

(declare-fun m!3475019 () Bool)

(assert (=> b!3207798 m!3475019))

(declare-fun m!3475021 () Bool)

(assert (=> b!3207798 m!3475021))

(assert (=> b!3207798 m!3475013))

(declare-fun m!3475023 () Bool)

(assert (=> b!3207798 m!3475023))

(declare-fun m!3475025 () Bool)

(assert (=> b!3207798 m!3475025))

(assert (=> b!3207798 m!3475015))

(declare-fun m!3475027 () Bool)

(assert (=> b!3207798 m!3475027))

(assert (=> b!3207798 m!3475023))

(declare-fun m!3475029 () Bool)

(assert (=> b!3207798 m!3475029))

(assert (=> b!3207798 m!3475029))

(assert (=> b!3207798 m!3475025))

(declare-fun m!3475031 () Bool)

(assert (=> b!3207798 m!3475031))

(declare-fun m!3475033 () Bool)

(assert (=> b!3207829 m!3475033))

(check-sat (not b!3207813) (not b!3207796) (not b_next!85993) (not b!3207791) (not b!3207792) (not b!3207820) (not b!3207790) (not b!3207804) (not b_next!85987) (not b!3207833) (not b_next!85989) (not b_next!85985) b_and!213593 (not start!301266) (not b!3207819) b_and!213597 (not b!3207823) (not b!3207818) (not b!3207795) (not b!3207821) (not b!3207793) (not b!3207794) (not b!3207789) (not b!3207810) (not b_next!85995) (not b!3207801) (not b!3207817) (not b!3207827) b_and!213595 (not b!3207812) (not b!3207826) (not b!3207797) (not b!3207809) (not b!3207805) (not b!3207822) (not b!3207799) (not b!3207788) b_and!213601 (not b!3207842) b_and!213591 (not b!3207829) (not b!3207825) (not b_next!85991) (not b!3207803) (not b!3207807) (not b!3207802) (not b!3207832) (not b!3207830) (not b!3207798) (not b!3207831) b_and!213599)
(check-sat (not b_next!85989) b_and!213597 (not b_next!85995) (not b_next!85993) b_and!213595 b_and!213601 b_and!213591 (not b_next!85991) (not b_next!85987) b_and!213599 (not b_next!85985) b_and!213593)
