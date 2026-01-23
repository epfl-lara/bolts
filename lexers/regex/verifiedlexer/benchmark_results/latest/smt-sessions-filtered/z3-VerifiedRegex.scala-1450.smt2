; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76354 () Bool)

(assert start!76354)

(declare-fun b!852157 () Bool)

(declare-fun b_free!25785 () Bool)

(declare-fun b_next!25849 () Bool)

(assert (=> b!852157 (= b_free!25785 (not b_next!25849))))

(declare-fun tp!268509 () Bool)

(declare-fun b_and!74865 () Bool)

(assert (=> b!852157 (= tp!268509 b_and!74865)))

(declare-fun b_free!25787 () Bool)

(declare-fun b_next!25851 () Bool)

(assert (=> b!852157 (= b_free!25787 (not b_next!25851))))

(declare-fun tp!268515 () Bool)

(declare-fun b_and!74867 () Bool)

(assert (=> b!852157 (= tp!268515 b_and!74867)))

(declare-fun b!852159 () Bool)

(declare-fun b_free!25789 () Bool)

(declare-fun b_next!25853 () Bool)

(assert (=> b!852159 (= b_free!25789 (not b_next!25853))))

(declare-fun tp!268513 () Bool)

(declare-fun b_and!74869 () Bool)

(assert (=> b!852159 (= tp!268513 b_and!74869)))

(declare-fun b_free!25791 () Bool)

(declare-fun b_next!25855 () Bool)

(assert (=> b!852159 (= b_free!25791 (not b_next!25855))))

(declare-fun tp!268519 () Bool)

(declare-fun b_and!74871 () Bool)

(assert (=> b!852159 (= tp!268519 b_and!74871)))

(declare-fun b!852153 () Bool)

(declare-fun b_free!25793 () Bool)

(declare-fun b_next!25857 () Bool)

(assert (=> b!852153 (= b_free!25793 (not b_next!25857))))

(declare-fun tp!268512 () Bool)

(declare-fun b_and!74873 () Bool)

(assert (=> b!852153 (= tp!268512 b_and!74873)))

(declare-fun b_free!25795 () Bool)

(declare-fun b_next!25859 () Bool)

(assert (=> b!852153 (= b_free!25795 (not b_next!25859))))

(declare-fun tp!268514 () Bool)

(declare-fun b_and!74875 () Bool)

(assert (=> b!852153 (= tp!268514 b_and!74875)))

(declare-fun b!852142 () Bool)

(declare-fun res!389354 () Bool)

(declare-fun e!560870 () Bool)

(assert (=> b!852142 (=> (not res!389354) (not e!560870))))

(declare-datatypes ((List!9216 0))(
  ( (Nil!9200) (Cons!9200 (h!14601 (_ BitVec 16)) (t!95782 List!9216)) )
))
(declare-datatypes ((TokenValue!1792 0))(
  ( (FloatLiteralValue!3584 (text!12989 List!9216)) (TokenValueExt!1791 (__x!7315 Int)) (Broken!8960 (value!55864 List!9216)) (Object!1807) (End!1792) (Def!1792) (Underscore!1792) (Match!1792) (Else!1792) (Error!1792) (Case!1792) (If!1792) (Extends!1792) (Abstract!1792) (Class!1792) (Val!1792) (DelimiterValue!3584 (del!1852 List!9216)) (KeywordValue!1798 (value!55865 List!9216)) (CommentValue!3584 (value!55866 List!9216)) (WhitespaceValue!3584 (value!55867 List!9216)) (IndentationValue!1792 (value!55868 List!9216)) (String!10857) (Int32!1792) (Broken!8961 (value!55869 List!9216)) (Boolean!1793) (Unit!13700) (OperatorValue!1795 (op!1852 List!9216)) (IdentifierValue!3584 (value!55870 List!9216)) (IdentifierValue!3585 (value!55871 List!9216)) (WhitespaceValue!3585 (value!55872 List!9216)) (True!3584) (False!3584) (Broken!8962 (value!55873 List!9216)) (Broken!8963 (value!55874 List!9216)) (True!3585) (RightBrace!1792) (RightBracket!1792) (Colon!1792) (Null!1792) (Comma!1792) (LeftBracket!1792) (False!3585) (LeftBrace!1792) (ImaginaryLiteralValue!1792 (text!12990 List!9216)) (StringLiteralValue!5376 (value!55875 List!9216)) (EOFValue!1792 (value!55876 List!9216)) (IdentValue!1792 (value!55877 List!9216)) (DelimiterValue!3585 (value!55878 List!9216)) (DedentValue!1792 (value!55879 List!9216)) (NewLineValue!1792 (value!55880 List!9216)) (IntegerValue!5376 (value!55881 (_ BitVec 32)) (text!12991 List!9216)) (IntegerValue!5377 (value!55882 Int) (text!12992 List!9216)) (Times!1792) (Or!1792) (Equal!1792) (Minus!1792) (Broken!8964 (value!55883 List!9216)) (And!1792) (Div!1792) (LessEqual!1792) (Mod!1792) (Concat!3951) (Not!1792) (Plus!1792) (SpaceValue!1792 (value!55884 List!9216)) (IntegerValue!5378 (value!55885 Int) (text!12993 List!9216)) (StringLiteralValue!5377 (text!12994 List!9216)) (FloatLiteralValue!3585 (text!12995 List!9216)) (BytesLiteralValue!1792 (value!55886 List!9216)) (CommentValue!3585 (value!55887 List!9216)) (StringLiteralValue!5378 (value!55888 List!9216)) (ErrorTokenValue!1792 (msg!1853 List!9216)) )
))
(declare-datatypes ((C!4888 0))(
  ( (C!4889 (val!2692 Int)) )
))
(declare-datatypes ((Regex!2159 0))(
  ( (ElementMatch!2159 (c!138270 C!4888)) (Concat!3952 (regOne!4830 Regex!2159) (regTwo!4830 Regex!2159)) (EmptyExpr!2159) (Star!2159 (reg!2488 Regex!2159)) (EmptyLang!2159) (Union!2159 (regOne!4831 Regex!2159) (regTwo!4831 Regex!2159)) )
))
(declare-datatypes ((String!10858 0))(
  ( (String!10859 (value!55889 String)) )
))
(declare-datatypes ((List!9217 0))(
  ( (Nil!9201) (Cons!9201 (h!14602 C!4888) (t!95783 List!9217)) )
))
(declare-datatypes ((IArray!6101 0))(
  ( (IArray!6102 (innerList!3108 List!9217)) )
))
(declare-datatypes ((Conc!3048 0))(
  ( (Node!3048 (left!6804 Conc!3048) (right!7134 Conc!3048) (csize!6326 Int) (cheight!3259 Int)) (Leaf!4499 (xs!5737 IArray!6101) (csize!6327 Int)) (Empty!3048) )
))
(declare-datatypes ((BalanceConc!6110 0))(
  ( (BalanceConc!6111 (c!138271 Conc!3048)) )
))
(declare-datatypes ((TokenValueInjection!3284 0))(
  ( (TokenValueInjection!3285 (toValue!2767 Int) (toChars!2626 Int)) )
))
(declare-datatypes ((Rule!3252 0))(
  ( (Rule!3253 (regex!1726 Regex!2159) (tag!1988 String!10858) (isSeparator!1726 Bool) (transformation!1726 TokenValueInjection!3284)) )
))
(declare-datatypes ((Token!3118 0))(
  ( (Token!3119 (value!55890 TokenValue!1792) (rule!3149 Rule!3252) (size!7665 Int) (originalCharacters!2282 List!9217)) )
))
(declare-fun separatorToken!297 () Token!3118)

(declare-datatypes ((List!9218 0))(
  ( (Nil!9202) (Cons!9202 (h!14603 Rule!3252) (t!95784 List!9218)) )
))
(declare-fun rules!2621 () List!9218)

(declare-datatypes ((LexerInterface!1528 0))(
  ( (LexerInterfaceExt!1525 (__x!7316 Int)) (Lexer!1526) )
))
(declare-fun thiss!20117 () LexerInterface!1528)

(declare-fun rulesProduceIndividualToken!592 (LexerInterface!1528 List!9218 Token!3118) Bool)

(assert (=> b!852142 (= res!389354 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!560872 () Bool)

(declare-fun e!560868 () Bool)

(declare-datatypes ((List!9219 0))(
  ( (Nil!9203) (Cons!9203 (h!14604 Token!3118) (t!95785 List!9219)) )
))
(declare-fun l!5107 () List!9219)

(declare-fun tp!268516 () Bool)

(declare-fun b!852143 () Bool)

(declare-fun inv!11692 (Token!3118) Bool)

(assert (=> b!852143 (= e!560872 (and (inv!11692 (h!14604 l!5107)) e!560868 tp!268516))))

(declare-fun b!852144 () Bool)

(declare-fun e!560861 () Bool)

(assert (=> b!852144 (= e!560870 (not e!560861))))

(declare-fun res!389356 () Bool)

(assert (=> b!852144 (=> res!389356 e!560861)))

(declare-fun lt!322790 () List!9219)

(get-info :version)

(assert (=> b!852144 (= res!389356 (and ((_ is Cons!9203) lt!322790) ((_ is Cons!9203) (t!95785 lt!322790))))))

(declare-fun rulesProduceEachTokenIndividuallyList!416 (LexerInterface!1528 List!9218 List!9219) Bool)

(assert (=> b!852144 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 lt!322790)))

(declare-fun withSeparatorTokenList!58 (LexerInterface!1528 List!9219 Token!3118) List!9219)

(assert (=> b!852144 (= lt!322790 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13701 0))(
  ( (Unit!13702) )
))
(declare-fun lt!322791 () Unit!13701)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!58 (LexerInterface!1528 List!9218 List!9219 Token!3118) Unit!13701)

(assert (=> b!852144 (= lt!322791 (withSeparatorTokenListPreservesRulesProduceTokens!58 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!852145 () Bool)

(declare-fun res!389361 () Bool)

(assert (=> b!852145 (=> (not res!389361) (not e!560870))))

(declare-fun lambda!25494 () Int)

(declare-fun forall!2173 (List!9219 Int) Bool)

(assert (=> b!852145 (= res!389361 (forall!2173 l!5107 lambda!25494))))

(declare-fun b!852146 () Bool)

(declare-fun res!389352 () Bool)

(assert (=> b!852146 (=> (not res!389352) (not e!560870))))

(assert (=> b!852146 (= res!389352 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 l!5107))))

(declare-fun b!852147 () Bool)

(declare-fun e!560867 () Bool)

(declare-fun tp!268508 () Bool)

(declare-fun e!560865 () Bool)

(declare-fun inv!11689 (String!10858) Bool)

(declare-fun inv!11693 (TokenValueInjection!3284) Bool)

(assert (=> b!852147 (= e!560867 (and tp!268508 (inv!11689 (tag!1988 (rule!3149 separatorToken!297))) (inv!11693 (transformation!1726 (rule!3149 separatorToken!297))) e!560865))))

(declare-fun b!852148 () Bool)

(declare-fun e!560866 () Bool)

(declare-fun tp!268511 () Bool)

(declare-fun inv!21 (TokenValue!1792) Bool)

(assert (=> b!852148 (= e!560868 (and (inv!21 (value!55890 (h!14604 l!5107))) e!560866 tp!268511))))

(declare-fun b!852150 () Bool)

(declare-fun res!389358 () Bool)

(assert (=> b!852150 (=> res!389358 e!560861)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!48 (LexerInterface!1528 List!9219 List!9218) Bool)

(assert (=> b!852150 (= res!389358 (not (tokensListTwoByTwoPredicateSeparableList!48 thiss!20117 lt!322790 rules!2621)))))

(declare-fun b!852151 () Bool)

(declare-fun res!389357 () Bool)

(assert (=> b!852151 (=> (not res!389357) (not e!560870))))

(declare-fun rulesInvariant!1404 (LexerInterface!1528 List!9218) Bool)

(assert (=> b!852151 (= res!389357 (rulesInvariant!1404 thiss!20117 rules!2621))))

(declare-fun b!852152 () Bool)

(declare-fun res!389355 () Bool)

(assert (=> b!852152 (=> (not res!389355) (not e!560870))))

(declare-fun isEmpty!5439 (List!9218) Bool)

(assert (=> b!852152 (= res!389355 (not (isEmpty!5439 rules!2621)))))

(assert (=> b!852153 (= e!560865 (and tp!268512 tp!268514))))

(declare-fun tp!268518 () Bool)

(declare-fun b!852154 () Bool)

(declare-fun e!560869 () Bool)

(assert (=> b!852154 (= e!560866 (and tp!268518 (inv!11689 (tag!1988 (rule!3149 (h!14604 l!5107)))) (inv!11693 (transformation!1726 (rule!3149 (h!14604 l!5107)))) e!560869))))

(declare-fun tp!268517 () Bool)

(declare-fun b!852155 () Bool)

(declare-fun e!560859 () Bool)

(declare-fun e!560862 () Bool)

(assert (=> b!852155 (= e!560859 (and tp!268517 (inv!11689 (tag!1988 (h!14603 rules!2621))) (inv!11693 (transformation!1726 (h!14603 rules!2621))) e!560862))))

(declare-fun b!852156 () Bool)

(declare-fun res!389359 () Bool)

(assert (=> b!852156 (=> (not res!389359) (not e!560870))))

(declare-fun sepAndNonSepRulesDisjointChars!526 (List!9218 List!9218) Bool)

(assert (=> b!852156 (= res!389359 (sepAndNonSepRulesDisjointChars!526 rules!2621 rules!2621))))

(assert (=> b!852157 (= e!560862 (and tp!268509 tp!268515))))

(declare-fun res!389353 () Bool)

(assert (=> start!76354 (=> (not res!389353) (not e!560870))))

(assert (=> start!76354 (= res!389353 ((_ is Lexer!1526) thiss!20117))))

(assert (=> start!76354 e!560870))

(assert (=> start!76354 true))

(declare-fun e!560864 () Bool)

(assert (=> start!76354 e!560864))

(assert (=> start!76354 e!560872))

(declare-fun e!560857 () Bool)

(assert (=> start!76354 (and (inv!11692 separatorToken!297) e!560857)))

(declare-fun b!852149 () Bool)

(declare-datatypes ((IArray!6103 0))(
  ( (IArray!6104 (innerList!3109 List!9219)) )
))
(declare-datatypes ((Conc!3049 0))(
  ( (Node!3049 (left!6805 Conc!3049) (right!7135 Conc!3049) (csize!6328 Int) (cheight!3260 Int)) (Leaf!4500 (xs!5738 IArray!6103) (csize!6329 Int)) (Empty!3049) )
))
(declare-datatypes ((BalanceConc!6112 0))(
  ( (BalanceConc!6113 (c!138272 Conc!3049)) )
))
(declare-fun rulesProduceEachTokenIndividually!613 (LexerInterface!1528 List!9218 BalanceConc!6112) Bool)

(declare-fun seqFromList!1528 (List!9219) BalanceConc!6112)

(assert (=> b!852149 (= e!560861 (rulesProduceEachTokenIndividually!613 thiss!20117 rules!2621 (seqFromList!1528 lt!322790)))))

(declare-fun b!852158 () Bool)

(declare-fun tp!268520 () Bool)

(assert (=> b!852158 (= e!560864 (and e!560859 tp!268520))))

(assert (=> b!852159 (= e!560869 (and tp!268513 tp!268519))))

(declare-fun b!852160 () Bool)

(declare-fun res!389360 () Bool)

(assert (=> b!852160 (=> (not res!389360) (not e!560870))))

(assert (=> b!852160 (= res!389360 (isSeparator!1726 (rule!3149 separatorToken!297)))))

(declare-fun b!852161 () Bool)

(declare-fun tp!268510 () Bool)

(assert (=> b!852161 (= e!560857 (and (inv!21 (value!55890 separatorToken!297)) e!560867 tp!268510))))

(assert (= (and start!76354 res!389353) b!852152))

(assert (= (and b!852152 res!389355) b!852151))

(assert (= (and b!852151 res!389357) b!852146))

(assert (= (and b!852146 res!389352) b!852142))

(assert (= (and b!852142 res!389354) b!852160))

(assert (= (and b!852160 res!389360) b!852145))

(assert (= (and b!852145 res!389361) b!852156))

(assert (= (and b!852156 res!389359) b!852144))

(assert (= (and b!852144 (not res!389356)) b!852150))

(assert (= (and b!852150 (not res!389358)) b!852149))

(assert (= b!852155 b!852157))

(assert (= b!852158 b!852155))

(assert (= (and start!76354 ((_ is Cons!9202) rules!2621)) b!852158))

(assert (= b!852154 b!852159))

(assert (= b!852148 b!852154))

(assert (= b!852143 b!852148))

(assert (= (and start!76354 ((_ is Cons!9203) l!5107)) b!852143))

(assert (= b!852147 b!852153))

(assert (= b!852161 b!852147))

(assert (= start!76354 b!852161))

(declare-fun m!1091417 () Bool)

(assert (=> b!852161 m!1091417))

(declare-fun m!1091419 () Bool)

(assert (=> b!852152 m!1091419))

(declare-fun m!1091421 () Bool)

(assert (=> b!852155 m!1091421))

(declare-fun m!1091423 () Bool)

(assert (=> b!852155 m!1091423))

(declare-fun m!1091425 () Bool)

(assert (=> b!852154 m!1091425))

(declare-fun m!1091427 () Bool)

(assert (=> b!852154 m!1091427))

(declare-fun m!1091429 () Bool)

(assert (=> b!852149 m!1091429))

(assert (=> b!852149 m!1091429))

(declare-fun m!1091431 () Bool)

(assert (=> b!852149 m!1091431))

(declare-fun m!1091433 () Bool)

(assert (=> b!852156 m!1091433))

(declare-fun m!1091435 () Bool)

(assert (=> b!852148 m!1091435))

(declare-fun m!1091437 () Bool)

(assert (=> b!852150 m!1091437))

(declare-fun m!1091439 () Bool)

(assert (=> b!852151 m!1091439))

(declare-fun m!1091441 () Bool)

(assert (=> start!76354 m!1091441))

(declare-fun m!1091443 () Bool)

(assert (=> b!852146 m!1091443))

(declare-fun m!1091445 () Bool)

(assert (=> b!852147 m!1091445))

(declare-fun m!1091447 () Bool)

(assert (=> b!852147 m!1091447))

(declare-fun m!1091449 () Bool)

(assert (=> b!852144 m!1091449))

(declare-fun m!1091451 () Bool)

(assert (=> b!852144 m!1091451))

(declare-fun m!1091453 () Bool)

(assert (=> b!852144 m!1091453))

(declare-fun m!1091455 () Bool)

(assert (=> b!852145 m!1091455))

(declare-fun m!1091457 () Bool)

(assert (=> b!852142 m!1091457))

(declare-fun m!1091459 () Bool)

(assert (=> b!852143 m!1091459))

(check-sat b_and!74873 (not b!852143) (not b_next!25849) (not b!852146) (not b!852155) (not b!852150) (not b!852151) b_and!74867 (not b!852145) (not b!852152) (not b_next!25855) (not b!852158) (not b_next!25857) (not start!76354) (not b!852142) (not b_next!25853) (not b!852149) b_and!74869 (not b!852154) b_and!74865 (not b!852144) (not b!852156) b_and!74875 (not b!852161) (not b_next!25851) (not b!852148) (not b!852147) b_and!74871 (not b_next!25859))
(check-sat b_and!74873 (not b_next!25855) (not b_next!25857) (not b_next!25853) (not b_next!25849) b_and!74869 b_and!74865 b_and!74875 (not b_next!25851) b_and!74867 b_and!74871 (not b_next!25859))
(get-model)

(declare-fun d!266079 () Bool)

(assert (=> d!266079 (= (isEmpty!5439 rules!2621) ((_ is Nil!9202) rules!2621))))

(assert (=> b!852152 d!266079))

(declare-fun d!266081 () Bool)

(declare-fun res!389376 () Bool)

(declare-fun e!560888 () Bool)

(assert (=> d!266081 (=> (not res!389376) (not e!560888))))

(declare-fun isEmpty!5442 (List!9217) Bool)

(assert (=> d!266081 (= res!389376 (not (isEmpty!5442 (originalCharacters!2282 (h!14604 l!5107)))))))

(assert (=> d!266081 (= (inv!11692 (h!14604 l!5107)) e!560888)))

(declare-fun b!852184 () Bool)

(declare-fun res!389377 () Bool)

(assert (=> b!852184 (=> (not res!389377) (not e!560888))))

(declare-fun list!3613 (BalanceConc!6110) List!9217)

(declare-fun dynLambda!4291 (Int TokenValue!1792) BalanceConc!6110)

(assert (=> b!852184 (= res!389377 (= (originalCharacters!2282 (h!14604 l!5107)) (list!3613 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))))

(declare-fun b!852185 () Bool)

(declare-fun size!7669 (List!9217) Int)

(assert (=> b!852185 (= e!560888 (= (size!7665 (h!14604 l!5107)) (size!7669 (originalCharacters!2282 (h!14604 l!5107)))))))

(assert (= (and d!266081 res!389376) b!852184))

(assert (= (and b!852184 res!389377) b!852185))

(declare-fun b_lambda!28447 () Bool)

(assert (=> (not b_lambda!28447) (not b!852184)))

(declare-fun tb!59917 () Bool)

(declare-fun t!95787 () Bool)

(assert (=> (and b!852157 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95787) tb!59917))

(declare-fun b!852190 () Bool)

(declare-fun e!560891 () Bool)

(declare-fun tp!268523 () Bool)

(declare-fun inv!11696 (Conc!3048) Bool)

(assert (=> b!852190 (= e!560891 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))) tp!268523))))

(declare-fun result!69402 () Bool)

(declare-fun inv!11697 (BalanceConc!6110) Bool)

(assert (=> tb!59917 (= result!69402 (and (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))) e!560891))))

(assert (= tb!59917 b!852190))

(declare-fun m!1091471 () Bool)

(assert (=> b!852190 m!1091471))

(declare-fun m!1091473 () Bool)

(assert (=> tb!59917 m!1091473))

(assert (=> b!852184 t!95787))

(declare-fun b_and!74877 () Bool)

(assert (= b_and!74867 (and (=> t!95787 result!69402) b_and!74877)))

(declare-fun t!95789 () Bool)

(declare-fun tb!59919 () Bool)

(assert (=> (and b!852159 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95789) tb!59919))

(declare-fun result!69406 () Bool)

(assert (= result!69406 result!69402))

(assert (=> b!852184 t!95789))

(declare-fun b_and!74879 () Bool)

(assert (= b_and!74871 (and (=> t!95789 result!69406) b_and!74879)))

(declare-fun tb!59921 () Bool)

(declare-fun t!95791 () Bool)

(assert (=> (and b!852153 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95791) tb!59921))

(declare-fun result!69408 () Bool)

(assert (= result!69408 result!69402))

(assert (=> b!852184 t!95791))

(declare-fun b_and!74881 () Bool)

(assert (= b_and!74875 (and (=> t!95791 result!69408) b_and!74881)))

(declare-fun m!1091475 () Bool)

(assert (=> d!266081 m!1091475))

(declare-fun m!1091477 () Bool)

(assert (=> b!852184 m!1091477))

(assert (=> b!852184 m!1091477))

(declare-fun m!1091479 () Bool)

(assert (=> b!852184 m!1091479))

(declare-fun m!1091481 () Bool)

(assert (=> b!852185 m!1091481))

(assert (=> b!852143 d!266081))

(declare-fun d!266083 () Bool)

(declare-fun lt!322804 () Bool)

(declare-fun e!560902 () Bool)

(assert (=> d!266083 (= lt!322804 e!560902)))

(declare-fun res!389395 () Bool)

(assert (=> d!266083 (=> (not res!389395) (not e!560902))))

(declare-fun list!3614 (BalanceConc!6112) List!9219)

(declare-datatypes ((tuple2!10388 0))(
  ( (tuple2!10389 (_1!6020 BalanceConc!6112) (_2!6020 BalanceConc!6110)) )
))
(declare-fun lex!620 (LexerInterface!1528 List!9218 BalanceConc!6110) tuple2!10388)

(declare-fun print!557 (LexerInterface!1528 BalanceConc!6112) BalanceConc!6110)

(declare-fun singletonSeq!541 (Token!3118) BalanceConc!6112)

(assert (=> d!266083 (= res!389395 (= (list!3614 (_1!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))))) (list!3614 (singletonSeq!541 separatorToken!297))))))

(declare-fun e!560903 () Bool)

(assert (=> d!266083 (= lt!322804 e!560903)))

(declare-fun res!389393 () Bool)

(assert (=> d!266083 (=> (not res!389393) (not e!560903))))

(declare-fun lt!322805 () tuple2!10388)

(declare-fun size!7670 (BalanceConc!6112) Int)

(assert (=> d!266083 (= res!389393 (= (size!7670 (_1!6020 lt!322805)) 1))))

(assert (=> d!266083 (= lt!322805 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))))))

(assert (=> d!266083 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266083 (= (rulesProduceIndividualToken!592 thiss!20117 rules!2621 separatorToken!297) lt!322804)))

(declare-fun b!852206 () Bool)

(declare-fun res!389394 () Bool)

(assert (=> b!852206 (=> (not res!389394) (not e!560903))))

(declare-fun apply!1895 (BalanceConc!6112 Int) Token!3118)

(assert (=> b!852206 (= res!389394 (= (apply!1895 (_1!6020 lt!322805) 0) separatorToken!297))))

(declare-fun b!852207 () Bool)

(declare-fun isEmpty!5443 (BalanceConc!6110) Bool)

(assert (=> b!852207 (= e!560903 (isEmpty!5443 (_2!6020 lt!322805)))))

(declare-fun b!852208 () Bool)

(assert (=> b!852208 (= e!560902 (isEmpty!5443 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))))))))

(assert (= (and d!266083 res!389393) b!852206))

(assert (= (and b!852206 res!389394) b!852207))

(assert (= (and d!266083 res!389395) b!852208))

(declare-fun m!1091501 () Bool)

(assert (=> d!266083 m!1091501))

(assert (=> d!266083 m!1091501))

(declare-fun m!1091503 () Bool)

(assert (=> d!266083 m!1091503))

(declare-fun m!1091505 () Bool)

(assert (=> d!266083 m!1091505))

(declare-fun m!1091507 () Bool)

(assert (=> d!266083 m!1091507))

(declare-fun m!1091509 () Bool)

(assert (=> d!266083 m!1091509))

(assert (=> d!266083 m!1091419))

(assert (=> d!266083 m!1091501))

(assert (=> d!266083 m!1091507))

(declare-fun m!1091511 () Bool)

(assert (=> d!266083 m!1091511))

(declare-fun m!1091513 () Bool)

(assert (=> b!852206 m!1091513))

(declare-fun m!1091515 () Bool)

(assert (=> b!852207 m!1091515))

(assert (=> b!852208 m!1091501))

(assert (=> b!852208 m!1091501))

(assert (=> b!852208 m!1091507))

(assert (=> b!852208 m!1091507))

(assert (=> b!852208 m!1091509))

(declare-fun m!1091517 () Bool)

(assert (=> b!852208 m!1091517))

(assert (=> b!852142 d!266083))

(declare-fun bs!231388 () Bool)

(declare-fun d!266087 () Bool)

(assert (= bs!231388 (and d!266087 b!852145)))

(declare-fun lambda!25507 () Int)

(assert (=> bs!231388 (not (= lambda!25507 lambda!25494))))

(declare-fun b!852296 () Bool)

(declare-fun e!560966 () Bool)

(assert (=> b!852296 (= e!560966 true)))

(declare-fun b!852295 () Bool)

(declare-fun e!560965 () Bool)

(assert (=> b!852295 (= e!560965 e!560966)))

(declare-fun b!852294 () Bool)

(declare-fun e!560964 () Bool)

(assert (=> b!852294 (= e!560964 e!560965)))

(assert (=> d!266087 e!560964))

(assert (= b!852295 b!852296))

(assert (= b!852294 b!852295))

(assert (= (and d!266087 ((_ is Cons!9202) rules!2621)) b!852294))

(declare-fun order!5903 () Int)

(declare-fun order!5905 () Int)

(declare-fun dynLambda!4292 (Int Int) Int)

(declare-fun dynLambda!4293 (Int Int) Int)

(assert (=> b!852296 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25507))))

(declare-fun order!5907 () Int)

(declare-fun dynLambda!4294 (Int Int) Int)

(assert (=> b!852296 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25507))))

(assert (=> d!266087 true))

(declare-fun e!560957 () Bool)

(assert (=> d!266087 e!560957))

(declare-fun res!389429 () Bool)

(assert (=> d!266087 (=> (not res!389429) (not e!560957))))

(declare-fun lt!322836 () Bool)

(assert (=> d!266087 (= res!389429 (= lt!322836 (forall!2173 (list!3614 (seqFromList!1528 lt!322790)) lambda!25507)))))

(declare-fun forall!2175 (BalanceConc!6112 Int) Bool)

(assert (=> d!266087 (= lt!322836 (forall!2175 (seqFromList!1528 lt!322790) lambda!25507))))

(assert (=> d!266087 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266087 (= (rulesProduceEachTokenIndividually!613 thiss!20117 rules!2621 (seqFromList!1528 lt!322790)) lt!322836)))

(declare-fun b!852285 () Bool)

(assert (=> b!852285 (= e!560957 (= lt!322836 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (list!3614 (seqFromList!1528 lt!322790)))))))

(assert (= (and d!266087 res!389429) b!852285))

(assert (=> d!266087 m!1091429))

(declare-fun m!1091607 () Bool)

(assert (=> d!266087 m!1091607))

(assert (=> d!266087 m!1091607))

(declare-fun m!1091609 () Bool)

(assert (=> d!266087 m!1091609))

(assert (=> d!266087 m!1091429))

(declare-fun m!1091611 () Bool)

(assert (=> d!266087 m!1091611))

(assert (=> d!266087 m!1091419))

(assert (=> b!852285 m!1091429))

(assert (=> b!852285 m!1091607))

(assert (=> b!852285 m!1091607))

(declare-fun m!1091613 () Bool)

(assert (=> b!852285 m!1091613))

(assert (=> b!852149 d!266087))

(declare-fun d!266105 () Bool)

(declare-fun fromListB!675 (List!9219) BalanceConc!6112)

(assert (=> d!266105 (= (seqFromList!1528 lt!322790) (fromListB!675 lt!322790))))

(declare-fun bs!231389 () Bool)

(assert (= bs!231389 d!266105))

(declare-fun m!1091615 () Bool)

(assert (=> bs!231389 m!1091615))

(assert (=> b!852149 d!266105))

(declare-fun d!266107 () Bool)

(declare-fun res!389432 () Bool)

(declare-fun e!560969 () Bool)

(assert (=> d!266107 (=> (not res!389432) (not e!560969))))

(declare-fun rulesValid!603 (LexerInterface!1528 List!9218) Bool)

(assert (=> d!266107 (= res!389432 (rulesValid!603 thiss!20117 rules!2621))))

(assert (=> d!266107 (= (rulesInvariant!1404 thiss!20117 rules!2621) e!560969)))

(declare-fun b!852301 () Bool)

(declare-datatypes ((List!9221 0))(
  ( (Nil!9205) (Cons!9205 (h!14606 String!10858) (t!95841 List!9221)) )
))
(declare-fun noDuplicateTag!603 (LexerInterface!1528 List!9218 List!9221) Bool)

(assert (=> b!852301 (= e!560969 (noDuplicateTag!603 thiss!20117 rules!2621 Nil!9205))))

(assert (= (and d!266107 res!389432) b!852301))

(declare-fun m!1091617 () Bool)

(assert (=> d!266107 m!1091617))

(declare-fun m!1091619 () Bool)

(assert (=> b!852301 m!1091619))

(assert (=> b!852151 d!266107))

(declare-fun d!266109 () Bool)

(declare-fun c!138294 () Bool)

(assert (=> d!266109 (= c!138294 ((_ is IntegerValue!5376) (value!55890 separatorToken!297)))))

(declare-fun e!560976 () Bool)

(assert (=> d!266109 (= (inv!21 (value!55890 separatorToken!297)) e!560976)))

(declare-fun b!852312 () Bool)

(declare-fun e!560978 () Bool)

(assert (=> b!852312 (= e!560976 e!560978)))

(declare-fun c!138295 () Bool)

(assert (=> b!852312 (= c!138295 ((_ is IntegerValue!5377) (value!55890 separatorToken!297)))))

(declare-fun b!852313 () Bool)

(declare-fun e!560977 () Bool)

(declare-fun inv!15 (TokenValue!1792) Bool)

(assert (=> b!852313 (= e!560977 (inv!15 (value!55890 separatorToken!297)))))

(declare-fun b!852314 () Bool)

(declare-fun inv!16 (TokenValue!1792) Bool)

(assert (=> b!852314 (= e!560976 (inv!16 (value!55890 separatorToken!297)))))

(declare-fun b!852315 () Bool)

(declare-fun inv!17 (TokenValue!1792) Bool)

(assert (=> b!852315 (= e!560978 (inv!17 (value!55890 separatorToken!297)))))

(declare-fun b!852316 () Bool)

(declare-fun res!389435 () Bool)

(assert (=> b!852316 (=> res!389435 e!560977)))

(assert (=> b!852316 (= res!389435 (not ((_ is IntegerValue!5378) (value!55890 separatorToken!297))))))

(assert (=> b!852316 (= e!560978 e!560977)))

(assert (= (and d!266109 c!138294) b!852314))

(assert (= (and d!266109 (not c!138294)) b!852312))

(assert (= (and b!852312 c!138295) b!852315))

(assert (= (and b!852312 (not c!138295)) b!852316))

(assert (= (and b!852316 (not res!389435)) b!852313))

(declare-fun m!1091621 () Bool)

(assert (=> b!852313 m!1091621))

(declare-fun m!1091623 () Bool)

(assert (=> b!852314 m!1091623))

(declare-fun m!1091625 () Bool)

(assert (=> b!852315 m!1091625))

(assert (=> b!852161 d!266109))

(declare-fun d!266111 () Bool)

(declare-fun res!389448 () Bool)

(declare-fun e!560991 () Bool)

(assert (=> d!266111 (=> res!389448 e!560991)))

(assert (=> d!266111 (= res!389448 (or (not ((_ is Cons!9203) lt!322790)) (not ((_ is Cons!9203) (t!95785 lt!322790)))))))

(assert (=> d!266111 (= (tokensListTwoByTwoPredicateSeparableList!48 thiss!20117 lt!322790 rules!2621) e!560991)))

(declare-fun b!852328 () Bool)

(declare-fun e!560990 () Bool)

(assert (=> b!852328 (= e!560991 e!560990)))

(declare-fun res!389447 () Bool)

(assert (=> b!852328 (=> (not res!389447) (not e!560990))))

(declare-fun separableTokensPredicate!64 (LexerInterface!1528 Token!3118 Token!3118 List!9218) Bool)

(assert (=> b!852328 (= res!389447 (separableTokensPredicate!64 thiss!20117 (h!14604 lt!322790) (h!14604 (t!95785 lt!322790)) rules!2621))))

(declare-fun lt!322855 () Unit!13701)

(declare-fun Unit!13706 () Unit!13701)

(assert (=> b!852328 (= lt!322855 Unit!13706)))

(declare-fun size!7671 (BalanceConc!6110) Int)

(declare-fun charsOf!993 (Token!3118) BalanceConc!6110)

(assert (=> b!852328 (> (size!7671 (charsOf!993 (h!14604 (t!95785 lt!322790)))) 0)))

(declare-fun lt!322857 () Unit!13701)

(declare-fun Unit!13707 () Unit!13701)

(assert (=> b!852328 (= lt!322857 Unit!13707)))

(assert (=> b!852328 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 lt!322790)))))

(declare-fun lt!322859 () Unit!13701)

(declare-fun Unit!13708 () Unit!13701)

(assert (=> b!852328 (= lt!322859 Unit!13708)))

(assert (=> b!852328 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 lt!322790))))

(declare-fun lt!322858 () Unit!13701)

(declare-fun lt!322860 () Unit!13701)

(assert (=> b!852328 (= lt!322858 lt!322860)))

(assert (=> b!852328 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 lt!322790)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 (LexerInterface!1528 List!9218 List!9219 Token!3118) Unit!13701)

(assert (=> b!852328 (= lt!322860 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 thiss!20117 rules!2621 lt!322790 (h!14604 (t!95785 lt!322790))))))

(declare-fun lt!322856 () Unit!13701)

(declare-fun lt!322854 () Unit!13701)

(assert (=> b!852328 (= lt!322856 lt!322854)))

(assert (=> b!852328 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 lt!322790))))

(assert (=> b!852328 (= lt!322854 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 thiss!20117 rules!2621 lt!322790 (h!14604 lt!322790)))))

(declare-fun b!852329 () Bool)

(assert (=> b!852329 (= e!560990 (tokensListTwoByTwoPredicateSeparableList!48 thiss!20117 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))) rules!2621))))

(assert (= (and d!266111 (not res!389448)) b!852328))

(assert (= (and b!852328 res!389447) b!852329))

(declare-fun m!1091639 () Bool)

(assert (=> b!852328 m!1091639))

(declare-fun m!1091641 () Bool)

(assert (=> b!852328 m!1091641))

(declare-fun m!1091643 () Bool)

(assert (=> b!852328 m!1091643))

(declare-fun m!1091645 () Bool)

(assert (=> b!852328 m!1091645))

(declare-fun m!1091647 () Bool)

(assert (=> b!852328 m!1091647))

(declare-fun m!1091649 () Bool)

(assert (=> b!852328 m!1091649))

(declare-fun m!1091651 () Bool)

(assert (=> b!852328 m!1091651))

(assert (=> b!852328 m!1091639))

(declare-fun m!1091653 () Bool)

(assert (=> b!852329 m!1091653))

(assert (=> b!852150 d!266111))

(declare-fun d!266121 () Bool)

(assert (=> d!266121 (= (inv!11689 (tag!1988 (rule!3149 separatorToken!297))) (= (mod (str.len (value!55889 (tag!1988 (rule!3149 separatorToken!297)))) 2) 0))))

(assert (=> b!852147 d!266121))

(declare-fun d!266123 () Bool)

(declare-fun res!389451 () Bool)

(declare-fun e!560994 () Bool)

(assert (=> d!266123 (=> (not res!389451) (not e!560994))))

(declare-fun semiInverseModEq!672 (Int Int) Bool)

(assert (=> d!266123 (= res!389451 (semiInverseModEq!672 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297)))))))

(assert (=> d!266123 (= (inv!11693 (transformation!1726 (rule!3149 separatorToken!297))) e!560994)))

(declare-fun b!852332 () Bool)

(declare-fun equivClasses!639 (Int Int) Bool)

(assert (=> b!852332 (= e!560994 (equivClasses!639 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297)))))))

(assert (= (and d!266123 res!389451) b!852332))

(declare-fun m!1091655 () Bool)

(assert (=> d!266123 m!1091655))

(declare-fun m!1091657 () Bool)

(assert (=> b!852332 m!1091657))

(assert (=> b!852147 d!266123))

(declare-fun bs!231395 () Bool)

(declare-fun d!266125 () Bool)

(assert (= bs!231395 (and d!266125 b!852145)))

(declare-fun lambda!25511 () Int)

(assert (=> bs!231395 (not (= lambda!25511 lambda!25494))))

(declare-fun bs!231396 () Bool)

(assert (= bs!231396 (and d!266125 d!266087)))

(assert (=> bs!231396 (= lambda!25511 lambda!25507)))

(declare-fun b!852415 () Bool)

(declare-fun e!561062 () Bool)

(assert (=> b!852415 (= e!561062 true)))

(declare-fun b!852414 () Bool)

(declare-fun e!561061 () Bool)

(assert (=> b!852414 (= e!561061 e!561062)))

(declare-fun b!852413 () Bool)

(declare-fun e!561060 () Bool)

(assert (=> b!852413 (= e!561060 e!561061)))

(assert (=> d!266125 e!561060))

(assert (= b!852414 b!852415))

(assert (= b!852413 b!852414))

(assert (= (and d!266125 ((_ is Cons!9202) rules!2621)) b!852413))

(assert (=> b!852415 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25511))))

(assert (=> b!852415 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25511))))

(assert (=> d!266125 true))

(declare-fun lt!322885 () Bool)

(assert (=> d!266125 (= lt!322885 (forall!2173 l!5107 lambda!25511))))

(declare-fun e!561059 () Bool)

(assert (=> d!266125 (= lt!322885 e!561059)))

(declare-fun res!389473 () Bool)

(assert (=> d!266125 (=> res!389473 e!561059)))

(assert (=> d!266125 (= res!389473 (not ((_ is Cons!9203) l!5107)))))

(assert (=> d!266125 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266125 (= (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 l!5107) lt!322885)))

(declare-fun b!852411 () Bool)

(declare-fun e!561058 () Bool)

(assert (=> b!852411 (= e!561059 e!561058)))

(declare-fun res!389474 () Bool)

(assert (=> b!852411 (=> (not res!389474) (not e!561058))))

(assert (=> b!852411 (= res!389474 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 l!5107)))))

(declare-fun b!852412 () Bool)

(assert (=> b!852412 (= e!561058 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 l!5107)))))

(assert (= (and d!266125 (not res!389473)) b!852411))

(assert (= (and b!852411 res!389474) b!852412))

(declare-fun m!1091711 () Bool)

(assert (=> d!266125 m!1091711))

(assert (=> d!266125 m!1091419))

(declare-fun m!1091713 () Bool)

(assert (=> b!852411 m!1091713))

(declare-fun m!1091715 () Bool)

(assert (=> b!852412 m!1091715))

(assert (=> b!852146 d!266125))

(declare-fun d!266139 () Bool)

(declare-fun c!138296 () Bool)

(assert (=> d!266139 (= c!138296 ((_ is IntegerValue!5376) (value!55890 (h!14604 l!5107))))))

(declare-fun e!561063 () Bool)

(assert (=> d!266139 (= (inv!21 (value!55890 (h!14604 l!5107))) e!561063)))

(declare-fun b!852416 () Bool)

(declare-fun e!561065 () Bool)

(assert (=> b!852416 (= e!561063 e!561065)))

(declare-fun c!138297 () Bool)

(assert (=> b!852416 (= c!138297 ((_ is IntegerValue!5377) (value!55890 (h!14604 l!5107))))))

(declare-fun b!852417 () Bool)

(declare-fun e!561064 () Bool)

(assert (=> b!852417 (= e!561064 (inv!15 (value!55890 (h!14604 l!5107))))))

(declare-fun b!852418 () Bool)

(assert (=> b!852418 (= e!561063 (inv!16 (value!55890 (h!14604 l!5107))))))

(declare-fun b!852419 () Bool)

(assert (=> b!852419 (= e!561065 (inv!17 (value!55890 (h!14604 l!5107))))))

(declare-fun b!852420 () Bool)

(declare-fun res!389475 () Bool)

(assert (=> b!852420 (=> res!389475 e!561064)))

(assert (=> b!852420 (= res!389475 (not ((_ is IntegerValue!5378) (value!55890 (h!14604 l!5107)))))))

(assert (=> b!852420 (= e!561065 e!561064)))

(assert (= (and d!266139 c!138296) b!852418))

(assert (= (and d!266139 (not c!138296)) b!852416))

(assert (= (and b!852416 c!138297) b!852419))

(assert (= (and b!852416 (not c!138297)) b!852420))

(assert (= (and b!852420 (not res!389475)) b!852417))

(declare-fun m!1091717 () Bool)

(assert (=> b!852417 m!1091717))

(declare-fun m!1091719 () Bool)

(assert (=> b!852418 m!1091719))

(declare-fun m!1091721 () Bool)

(assert (=> b!852419 m!1091721))

(assert (=> b!852148 d!266139))

(declare-fun d!266141 () Bool)

(declare-fun res!389476 () Bool)

(declare-fun e!561066 () Bool)

(assert (=> d!266141 (=> (not res!389476) (not e!561066))))

(assert (=> d!266141 (= res!389476 (not (isEmpty!5442 (originalCharacters!2282 separatorToken!297))))))

(assert (=> d!266141 (= (inv!11692 separatorToken!297) e!561066)))

(declare-fun b!852421 () Bool)

(declare-fun res!389477 () Bool)

(assert (=> b!852421 (=> (not res!389477) (not e!561066))))

(assert (=> b!852421 (= res!389477 (= (originalCharacters!2282 separatorToken!297) (list!3613 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))))

(declare-fun b!852422 () Bool)

(assert (=> b!852422 (= e!561066 (= (size!7665 separatorToken!297) (size!7669 (originalCharacters!2282 separatorToken!297))))))

(assert (= (and d!266141 res!389476) b!852421))

(assert (= (and b!852421 res!389477) b!852422))

(declare-fun b_lambda!28461 () Bool)

(assert (=> (not b_lambda!28461) (not b!852421)))

(declare-fun tb!59943 () Bool)

(declare-fun t!95827 () Bool)

(assert (=> (and b!852157 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95827) tb!59943))

(declare-fun b!852423 () Bool)

(declare-fun e!561067 () Bool)

(declare-fun tp!268584 () Bool)

(assert (=> b!852423 (= e!561067 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))) tp!268584))))

(declare-fun result!69440 () Bool)

(assert (=> tb!59943 (= result!69440 (and (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))) e!561067))))

(assert (= tb!59943 b!852423))

(declare-fun m!1091723 () Bool)

(assert (=> b!852423 m!1091723))

(declare-fun m!1091725 () Bool)

(assert (=> tb!59943 m!1091725))

(assert (=> b!852421 t!95827))

(declare-fun b_and!74903 () Bool)

(assert (= b_and!74877 (and (=> t!95827 result!69440) b_and!74903)))

(declare-fun t!95829 () Bool)

(declare-fun tb!59945 () Bool)

(assert (=> (and b!852159 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95829) tb!59945))

(declare-fun result!69442 () Bool)

(assert (= result!69442 result!69440))

(assert (=> b!852421 t!95829))

(declare-fun b_and!74905 () Bool)

(assert (= b_and!74879 (and (=> t!95829 result!69442) b_and!74905)))

(declare-fun t!95831 () Bool)

(declare-fun tb!59947 () Bool)

(assert (=> (and b!852153 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95831) tb!59947))

(declare-fun result!69444 () Bool)

(assert (= result!69444 result!69440))

(assert (=> b!852421 t!95831))

(declare-fun b_and!74907 () Bool)

(assert (= b_and!74881 (and (=> t!95831 result!69444) b_and!74907)))

(declare-fun m!1091727 () Bool)

(assert (=> d!266141 m!1091727))

(declare-fun m!1091729 () Bool)

(assert (=> b!852421 m!1091729))

(assert (=> b!852421 m!1091729))

(declare-fun m!1091731 () Bool)

(assert (=> b!852421 m!1091731))

(declare-fun m!1091733 () Bool)

(assert (=> b!852422 m!1091733))

(assert (=> start!76354 d!266141))

(declare-fun d!266143 () Bool)

(assert (=> d!266143 (= (inv!11689 (tag!1988 (h!14603 rules!2621))) (= (mod (str.len (value!55889 (tag!1988 (h!14603 rules!2621)))) 2) 0))))

(assert (=> b!852155 d!266143))

(declare-fun d!266145 () Bool)

(declare-fun res!389478 () Bool)

(declare-fun e!561068 () Bool)

(assert (=> d!266145 (=> (not res!389478) (not e!561068))))

(assert (=> d!266145 (= res!389478 (semiInverseModEq!672 (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toValue!2767 (transformation!1726 (h!14603 rules!2621)))))))

(assert (=> d!266145 (= (inv!11693 (transformation!1726 (h!14603 rules!2621))) e!561068)))

(declare-fun b!852424 () Bool)

(assert (=> b!852424 (= e!561068 (equivClasses!639 (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toValue!2767 (transformation!1726 (h!14603 rules!2621)))))))

(assert (= (and d!266145 res!389478) b!852424))

(declare-fun m!1091735 () Bool)

(assert (=> d!266145 m!1091735))

(declare-fun m!1091737 () Bool)

(assert (=> b!852424 m!1091737))

(assert (=> b!852155 d!266145))

(declare-fun bs!231397 () Bool)

(declare-fun d!266147 () Bool)

(assert (= bs!231397 (and d!266147 b!852145)))

(declare-fun lambda!25512 () Int)

(assert (=> bs!231397 (not (= lambda!25512 lambda!25494))))

(declare-fun bs!231398 () Bool)

(assert (= bs!231398 (and d!266147 d!266087)))

(assert (=> bs!231398 (= lambda!25512 lambda!25507)))

(declare-fun bs!231399 () Bool)

(assert (= bs!231399 (and d!266147 d!266125)))

(assert (=> bs!231399 (= lambda!25512 lambda!25511)))

(declare-fun b!852429 () Bool)

(declare-fun e!561073 () Bool)

(assert (=> b!852429 (= e!561073 true)))

(declare-fun b!852428 () Bool)

(declare-fun e!561072 () Bool)

(assert (=> b!852428 (= e!561072 e!561073)))

(declare-fun b!852427 () Bool)

(declare-fun e!561071 () Bool)

(assert (=> b!852427 (= e!561071 e!561072)))

(assert (=> d!266147 e!561071))

(assert (= b!852428 b!852429))

(assert (= b!852427 b!852428))

(assert (= (and d!266147 ((_ is Cons!9202) rules!2621)) b!852427))

(assert (=> b!852429 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25512))))

(assert (=> b!852429 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25512))))

(assert (=> d!266147 true))

(declare-fun lt!322886 () Bool)

(assert (=> d!266147 (= lt!322886 (forall!2173 lt!322790 lambda!25512))))

(declare-fun e!561070 () Bool)

(assert (=> d!266147 (= lt!322886 e!561070)))

(declare-fun res!389479 () Bool)

(assert (=> d!266147 (=> res!389479 e!561070)))

(assert (=> d!266147 (= res!389479 (not ((_ is Cons!9203) lt!322790)))))

(assert (=> d!266147 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266147 (= (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 lt!322790) lt!322886)))

(declare-fun b!852425 () Bool)

(declare-fun e!561069 () Bool)

(assert (=> b!852425 (= e!561070 e!561069)))

(declare-fun res!389480 () Bool)

(assert (=> b!852425 (=> (not res!389480) (not e!561069))))

(assert (=> b!852425 (= res!389480 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 lt!322790)))))

(declare-fun b!852426 () Bool)

(assert (=> b!852426 (= e!561069 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 lt!322790)))))

(assert (= (and d!266147 (not res!389479)) b!852425))

(assert (= (and b!852425 res!389480) b!852426))

(declare-fun m!1091739 () Bool)

(assert (=> d!266147 m!1091739))

(assert (=> d!266147 m!1091419))

(assert (=> b!852425 m!1091651))

(declare-fun m!1091741 () Bool)

(assert (=> b!852426 m!1091741))

(assert (=> b!852144 d!266147))

(declare-fun e!561090 () Bool)

(declare-fun e!561086 () List!9217)

(declare-fun b!852450 () Bool)

(declare-fun printList!476 (LexerInterface!1528 List!9219) List!9217)

(declare-fun $colon$colon!89 (List!9219 Token!3118) List!9219)

(assert (=> b!852450 (= e!561090 (= (printList!476 thiss!20117 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297)) e!561086))))

(declare-fun c!138306 () Bool)

(declare-fun lt!322907 () List!9219)

(assert (=> b!852450 (= c!138306 ((_ is Cons!9203) lt!322907))))

(assert (=> b!852450 (= lt!322907 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!852451 () Bool)

(declare-fun e!561087 () List!9219)

(assert (=> b!852451 (= e!561087 Nil!9203)))

(declare-fun e!561089 () List!9217)

(declare-fun e!561088 () Bool)

(declare-fun b!852452 () Bool)

(assert (=> b!852452 (= e!561088 (= (printList!476 thiss!20117 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107))) e!561089))))

(declare-fun c!138305 () Bool)

(declare-fun lt!322905 () List!9219)

(assert (=> b!852452 (= c!138305 ((_ is Cons!9203) lt!322905))))

(assert (=> b!852452 (= lt!322905 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107)))))

(declare-fun d!266149 () Bool)

(declare-fun lt!322903 () List!9219)

(declare-fun printWithSeparatorTokenList!34 (LexerInterface!1528 List!9219 Token!3118) List!9217)

(assert (=> d!266149 (= (printList!476 thiss!20117 lt!322903) (printWithSeparatorTokenList!34 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!266149 (= lt!322903 e!561087)))

(declare-fun c!138304 () Bool)

(assert (=> d!266149 (= c!138304 ((_ is Cons!9203) l!5107))))

(declare-fun e!561091 () Bool)

(assert (=> d!266149 e!561091))

(declare-fun res!389490 () Bool)

(assert (=> d!266149 (=> (not res!389490) (not e!561091))))

(assert (=> d!266149 (= res!389490 (isSeparator!1726 (rule!3149 separatorToken!297)))))

(assert (=> d!266149 (= (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297) lt!322903)))

(declare-fun b!852453 () Bool)

(assert (=> b!852453 (= e!561089 Nil!9201)))

(declare-fun b!852454 () Bool)

(declare-fun ++!2382 (List!9217 List!9217) List!9217)

(assert (=> b!852454 (= e!561086 (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322907))) (printList!476 thiss!20117 (t!95785 lt!322907))))))

(declare-fun b!852455 () Bool)

(assert (=> b!852455 (= e!561091 e!561090)))

(declare-fun res!389489 () Bool)

(assert (=> b!852455 (=> res!389489 e!561090)))

(assert (=> b!852455 (= res!389489 (not ((_ is Cons!9203) l!5107)))))

(declare-fun b!852456 () Bool)

(assert (=> b!852456 (= e!561087 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107)))))

(declare-fun lt!322906 () List!9217)

(assert (=> b!852456 (= lt!322906 (list!3613 (charsOf!993 (h!14604 l!5107))))))

(declare-fun lt!322910 () List!9217)

(assert (=> b!852456 (= lt!322910 (list!3613 (charsOf!993 separatorToken!297)))))

(declare-fun lt!322904 () List!9217)

(assert (=> b!852456 (= lt!322904 (printList!476 thiss!20117 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297)))))

(declare-fun lt!322909 () Unit!13701)

(declare-fun lemmaConcatAssociativity!751 (List!9217 List!9217 List!9217) Unit!13701)

(assert (=> b!852456 (= lt!322909 (lemmaConcatAssociativity!751 lt!322906 lt!322910 lt!322904))))

(assert (=> b!852456 (= (++!2382 (++!2382 lt!322906 lt!322910) lt!322904) (++!2382 lt!322906 (++!2382 lt!322910 lt!322904)))))

(declare-fun lt!322908 () Unit!13701)

(assert (=> b!852456 (= lt!322908 lt!322909)))

(declare-fun b!852457 () Bool)

(assert (=> b!852457 (= e!561086 Nil!9201)))

(declare-fun b!852458 () Bool)

(assert (=> b!852458 (= e!561089 (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322905))) (printList!476 thiss!20117 (t!95785 lt!322905))))))

(declare-fun b!852459 () Bool)

(declare-fun res!389491 () Bool)

(assert (=> b!852459 (=> (not res!389491) (not e!561091))))

(assert (=> b!852459 (= res!389491 e!561088)))

(declare-fun res!389492 () Bool)

(assert (=> b!852459 (=> res!389492 e!561088)))

(assert (=> b!852459 (= res!389492 (not ((_ is Cons!9203) l!5107)))))

(assert (= (and d!266149 res!389490) b!852459))

(assert (= (and b!852459 (not res!389492)) b!852452))

(assert (= (and b!852452 c!138305) b!852458))

(assert (= (and b!852452 (not c!138305)) b!852453))

(assert (= (and b!852459 res!389491) b!852455))

(assert (= (and b!852455 (not res!389489)) b!852450))

(assert (= (and b!852450 c!138306) b!852454))

(assert (= (and b!852450 (not c!138306)) b!852457))

(assert (= (and d!266149 c!138304) b!852456))

(assert (= (and d!266149 (not c!138304)) b!852451))

(declare-fun m!1091743 () Bool)

(assert (=> b!852458 m!1091743))

(assert (=> b!852458 m!1091743))

(declare-fun m!1091745 () Bool)

(assert (=> b!852458 m!1091745))

(declare-fun m!1091747 () Bool)

(assert (=> b!852458 m!1091747))

(assert (=> b!852458 m!1091745))

(assert (=> b!852458 m!1091747))

(declare-fun m!1091749 () Bool)

(assert (=> b!852458 m!1091749))

(declare-fun m!1091751 () Bool)

(assert (=> d!266149 m!1091751))

(declare-fun m!1091753 () Bool)

(assert (=> d!266149 m!1091753))

(declare-fun m!1091755 () Bool)

(assert (=> b!852450 m!1091755))

(assert (=> b!852450 m!1091755))

(declare-fun m!1091757 () Bool)

(assert (=> b!852450 m!1091757))

(assert (=> b!852450 m!1091757))

(declare-fun m!1091759 () Bool)

(assert (=> b!852450 m!1091759))

(declare-fun m!1091761 () Bool)

(assert (=> b!852454 m!1091761))

(assert (=> b!852454 m!1091761))

(declare-fun m!1091763 () Bool)

(assert (=> b!852454 m!1091763))

(declare-fun m!1091765 () Bool)

(assert (=> b!852454 m!1091765))

(assert (=> b!852454 m!1091763))

(assert (=> b!852454 m!1091765))

(declare-fun m!1091767 () Bool)

(assert (=> b!852454 m!1091767))

(assert (=> b!852452 m!1091755))

(assert (=> b!852452 m!1091755))

(assert (=> b!852452 m!1091757))

(assert (=> b!852452 m!1091757))

(declare-fun m!1091769 () Bool)

(assert (=> b!852452 m!1091769))

(assert (=> b!852452 m!1091769))

(declare-fun m!1091771 () Bool)

(assert (=> b!852452 m!1091771))

(declare-fun m!1091773 () Bool)

(assert (=> b!852456 m!1091773))

(declare-fun m!1091775 () Bool)

(assert (=> b!852456 m!1091775))

(assert (=> b!852456 m!1091757))

(assert (=> b!852456 m!1091769))

(assert (=> b!852456 m!1091755))

(assert (=> b!852456 m!1091755))

(assert (=> b!852456 m!1091757))

(declare-fun m!1091777 () Bool)

(assert (=> b!852456 m!1091777))

(declare-fun m!1091779 () Bool)

(assert (=> b!852456 m!1091779))

(assert (=> b!852456 m!1091777))

(declare-fun m!1091781 () Bool)

(assert (=> b!852456 m!1091781))

(assert (=> b!852456 m!1091773))

(declare-fun m!1091783 () Bool)

(assert (=> b!852456 m!1091783))

(declare-fun m!1091785 () Bool)

(assert (=> b!852456 m!1091785))

(assert (=> b!852456 m!1091785))

(declare-fun m!1091787 () Bool)

(assert (=> b!852456 m!1091787))

(assert (=> b!852456 m!1091755))

(declare-fun m!1091789 () Bool)

(assert (=> b!852456 m!1091789))

(assert (=> b!852456 m!1091775))

(declare-fun m!1091791 () Bool)

(assert (=> b!852456 m!1091791))

(assert (=> b!852144 d!266149))

(declare-fun d!266151 () Bool)

(assert (=> d!266151 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!322913 () Unit!13701)

(declare-fun choose!5030 (LexerInterface!1528 List!9218 List!9219 Token!3118) Unit!13701)

(assert (=> d!266151 (= lt!322913 (choose!5030 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!266151 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266151 (= (withSeparatorTokenListPreservesRulesProduceTokens!58 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!322913)))

(declare-fun bs!231400 () Bool)

(assert (= bs!231400 d!266151))

(assert (=> bs!231400 m!1091451))

(assert (=> bs!231400 m!1091451))

(declare-fun m!1091793 () Bool)

(assert (=> bs!231400 m!1091793))

(declare-fun m!1091795 () Bool)

(assert (=> bs!231400 m!1091795))

(assert (=> bs!231400 m!1091419))

(assert (=> b!852144 d!266151))

(declare-fun d!266153 () Bool)

(assert (=> d!266153 (= (inv!11689 (tag!1988 (rule!3149 (h!14604 l!5107)))) (= (mod (str.len (value!55889 (tag!1988 (rule!3149 (h!14604 l!5107))))) 2) 0))))

(assert (=> b!852154 d!266153))

(declare-fun d!266155 () Bool)

(declare-fun res!389493 () Bool)

(declare-fun e!561092 () Bool)

(assert (=> d!266155 (=> (not res!389493) (not e!561092))))

(assert (=> d!266155 (= res!389493 (semiInverseModEq!672 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))))))

(assert (=> d!266155 (= (inv!11693 (transformation!1726 (rule!3149 (h!14604 l!5107)))) e!561092)))

(declare-fun b!852460 () Bool)

(assert (=> b!852460 (= e!561092 (equivClasses!639 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))))))

(assert (= (and d!266155 res!389493) b!852460))

(declare-fun m!1091797 () Bool)

(assert (=> d!266155 m!1091797))

(declare-fun m!1091799 () Bool)

(assert (=> b!852460 m!1091799))

(assert (=> b!852154 d!266155))

(declare-fun d!266157 () Bool)

(declare-fun res!389498 () Bool)

(declare-fun e!561097 () Bool)

(assert (=> d!266157 (=> res!389498 e!561097)))

(assert (=> d!266157 (= res!389498 (not ((_ is Cons!9202) rules!2621)))))

(assert (=> d!266157 (= (sepAndNonSepRulesDisjointChars!526 rules!2621 rules!2621) e!561097)))

(declare-fun b!852465 () Bool)

(declare-fun e!561098 () Bool)

(assert (=> b!852465 (= e!561097 e!561098)))

(declare-fun res!389499 () Bool)

(assert (=> b!852465 (=> (not res!389499) (not e!561098))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!239 (Rule!3252 List!9218) Bool)

(assert (=> b!852465 (= res!389499 (ruleDisjointCharsFromAllFromOtherType!239 (h!14603 rules!2621) rules!2621))))

(declare-fun b!852466 () Bool)

(assert (=> b!852466 (= e!561098 (sepAndNonSepRulesDisjointChars!526 rules!2621 (t!95784 rules!2621)))))

(assert (= (and d!266157 (not res!389498)) b!852465))

(assert (= (and b!852465 res!389499) b!852466))

(declare-fun m!1091801 () Bool)

(assert (=> b!852465 m!1091801))

(declare-fun m!1091803 () Bool)

(assert (=> b!852466 m!1091803))

(assert (=> b!852156 d!266157))

(declare-fun d!266159 () Bool)

(declare-fun res!389504 () Bool)

(declare-fun e!561103 () Bool)

(assert (=> d!266159 (=> res!389504 e!561103)))

(assert (=> d!266159 (= res!389504 ((_ is Nil!9203) l!5107))))

(assert (=> d!266159 (= (forall!2173 l!5107 lambda!25494) e!561103)))

(declare-fun b!852471 () Bool)

(declare-fun e!561104 () Bool)

(assert (=> b!852471 (= e!561103 e!561104)))

(declare-fun res!389505 () Bool)

(assert (=> b!852471 (=> (not res!389505) (not e!561104))))

(declare-fun dynLambda!4295 (Int Token!3118) Bool)

(assert (=> b!852471 (= res!389505 (dynLambda!4295 lambda!25494 (h!14604 l!5107)))))

(declare-fun b!852472 () Bool)

(assert (=> b!852472 (= e!561104 (forall!2173 (t!95785 l!5107) lambda!25494))))

(assert (= (and d!266159 (not res!389504)) b!852471))

(assert (= (and b!852471 res!389505) b!852472))

(declare-fun b_lambda!28463 () Bool)

(assert (=> (not b_lambda!28463) (not b!852471)))

(declare-fun m!1091805 () Bool)

(assert (=> b!852471 m!1091805))

(declare-fun m!1091807 () Bool)

(assert (=> b!852472 m!1091807))

(assert (=> b!852145 d!266159))

(declare-fun b!852486 () Bool)

(declare-fun b_free!25805 () Bool)

(declare-fun b_next!25869 () Bool)

(assert (=> b!852486 (= b_free!25805 (not b_next!25869))))

(declare-fun tp!268599 () Bool)

(declare-fun b_and!74909 () Bool)

(assert (=> b!852486 (= tp!268599 b_and!74909)))

(declare-fun b_free!25807 () Bool)

(declare-fun b_next!25871 () Bool)

(assert (=> b!852486 (= b_free!25807 (not b_next!25871))))

(declare-fun t!95834 () Bool)

(declare-fun tb!59949 () Bool)

(assert (=> (and b!852486 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95834) tb!59949))

(declare-fun result!69448 () Bool)

(assert (= result!69448 result!69402))

(assert (=> b!852184 t!95834))

(declare-fun tb!59951 () Bool)

(declare-fun t!95836 () Bool)

(assert (=> (and b!852486 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95836) tb!59951))

(declare-fun result!69450 () Bool)

(assert (= result!69450 result!69440))

(assert (=> b!852421 t!95836))

(declare-fun tp!268598 () Bool)

(declare-fun b_and!74911 () Bool)

(assert (=> b!852486 (= tp!268598 (and (=> t!95834 result!69448) (=> t!95836 result!69450) b_and!74911))))

(declare-fun e!561122 () Bool)

(declare-fun b!852484 () Bool)

(declare-fun tp!268597 () Bool)

(declare-fun e!561120 () Bool)

(assert (=> b!852484 (= e!561120 (and (inv!21 (value!55890 (h!14604 (t!95785 l!5107)))) e!561122 tp!268597))))

(declare-fun b!852483 () Bool)

(declare-fun tp!268596 () Bool)

(declare-fun e!561117 () Bool)

(assert (=> b!852483 (= e!561117 (and (inv!11692 (h!14604 (t!95785 l!5107))) e!561120 tp!268596))))

(declare-fun e!561119 () Bool)

(assert (=> b!852486 (= e!561119 (and tp!268599 tp!268598))))

(declare-fun b!852485 () Bool)

(declare-fun tp!268595 () Bool)

(assert (=> b!852485 (= e!561122 (and tp!268595 (inv!11689 (tag!1988 (rule!3149 (h!14604 (t!95785 l!5107))))) (inv!11693 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) e!561119))))

(assert (=> b!852143 (= tp!268516 e!561117)))

(assert (= b!852485 b!852486))

(assert (= b!852484 b!852485))

(assert (= b!852483 b!852484))

(assert (= (and b!852143 ((_ is Cons!9203) (t!95785 l!5107))) b!852483))

(declare-fun m!1091809 () Bool)

(assert (=> b!852484 m!1091809))

(declare-fun m!1091811 () Bool)

(assert (=> b!852483 m!1091811))

(declare-fun m!1091813 () Bool)

(assert (=> b!852485 m!1091813))

(declare-fun m!1091815 () Bool)

(assert (=> b!852485 m!1091815))

(declare-fun b!852491 () Bool)

(declare-fun e!561125 () Bool)

(declare-fun tp_is_empty!3977 () Bool)

(declare-fun tp!268602 () Bool)

(assert (=> b!852491 (= e!561125 (and tp_is_empty!3977 tp!268602))))

(assert (=> b!852161 (= tp!268510 e!561125)))

(assert (= (and b!852161 ((_ is Cons!9201) (originalCharacters!2282 separatorToken!297))) b!852491))

(declare-fun b!852502 () Bool)

(declare-fun e!561128 () Bool)

(assert (=> b!852502 (= e!561128 tp_is_empty!3977)))

(declare-fun b!852503 () Bool)

(declare-fun tp!268617 () Bool)

(declare-fun tp!268615 () Bool)

(assert (=> b!852503 (= e!561128 (and tp!268617 tp!268615))))

(declare-fun b!852504 () Bool)

(declare-fun tp!268613 () Bool)

(assert (=> b!852504 (= e!561128 tp!268613)))

(assert (=> b!852147 (= tp!268508 e!561128)))

(declare-fun b!852505 () Bool)

(declare-fun tp!268616 () Bool)

(declare-fun tp!268614 () Bool)

(assert (=> b!852505 (= e!561128 (and tp!268616 tp!268614))))

(assert (= (and b!852147 ((_ is ElementMatch!2159) (regex!1726 (rule!3149 separatorToken!297)))) b!852502))

(assert (= (and b!852147 ((_ is Concat!3952) (regex!1726 (rule!3149 separatorToken!297)))) b!852503))

(assert (= (and b!852147 ((_ is Star!2159) (regex!1726 (rule!3149 separatorToken!297)))) b!852504))

(assert (= (and b!852147 ((_ is Union!2159) (regex!1726 (rule!3149 separatorToken!297)))) b!852505))

(declare-fun b!852506 () Bool)

(declare-fun e!561129 () Bool)

(declare-fun tp!268618 () Bool)

(assert (=> b!852506 (= e!561129 (and tp_is_empty!3977 tp!268618))))

(assert (=> b!852148 (= tp!268511 e!561129)))

(assert (= (and b!852148 ((_ is Cons!9201) (originalCharacters!2282 (h!14604 l!5107)))) b!852506))

(declare-fun b!852517 () Bool)

(declare-fun b_free!25809 () Bool)

(declare-fun b_next!25873 () Bool)

(assert (=> b!852517 (= b_free!25809 (not b_next!25873))))

(declare-fun tp!268629 () Bool)

(declare-fun b_and!74913 () Bool)

(assert (=> b!852517 (= tp!268629 b_and!74913)))

(declare-fun b_free!25811 () Bool)

(declare-fun b_next!25875 () Bool)

(assert (=> b!852517 (= b_free!25811 (not b_next!25875))))

(declare-fun t!95838 () Bool)

(declare-fun tb!59953 () Bool)

(assert (=> (and b!852517 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95838) tb!59953))

(declare-fun result!69458 () Bool)

(assert (= result!69458 result!69402))

(assert (=> b!852184 t!95838))

(declare-fun tb!59955 () Bool)

(declare-fun t!95840 () Bool)

(assert (=> (and b!852517 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95840) tb!59955))

(declare-fun result!69460 () Bool)

(assert (= result!69460 result!69440))

(assert (=> b!852421 t!95840))

(declare-fun b_and!74915 () Bool)

(declare-fun tp!268630 () Bool)

(assert (=> b!852517 (= tp!268630 (and (=> t!95838 result!69458) (=> t!95840 result!69460) b_and!74915))))

(declare-fun e!561141 () Bool)

(assert (=> b!852517 (= e!561141 (and tp!268629 tp!268630))))

(declare-fun e!561140 () Bool)

(declare-fun tp!268628 () Bool)

(declare-fun b!852516 () Bool)

(assert (=> b!852516 (= e!561140 (and tp!268628 (inv!11689 (tag!1988 (h!14603 (t!95784 rules!2621)))) (inv!11693 (transformation!1726 (h!14603 (t!95784 rules!2621)))) e!561141))))

(declare-fun b!852515 () Bool)

(declare-fun e!561139 () Bool)

(declare-fun tp!268627 () Bool)

(assert (=> b!852515 (= e!561139 (and e!561140 tp!268627))))

(assert (=> b!852158 (= tp!268520 e!561139)))

(assert (= b!852516 b!852517))

(assert (= b!852515 b!852516))

(assert (= (and b!852158 ((_ is Cons!9202) (t!95784 rules!2621))) b!852515))

(declare-fun m!1091817 () Bool)

(assert (=> b!852516 m!1091817))

(declare-fun m!1091819 () Bool)

(assert (=> b!852516 m!1091819))

(declare-fun b!852518 () Bool)

(declare-fun e!561142 () Bool)

(assert (=> b!852518 (= e!561142 tp_is_empty!3977)))

(declare-fun b!852519 () Bool)

(declare-fun tp!268635 () Bool)

(declare-fun tp!268633 () Bool)

(assert (=> b!852519 (= e!561142 (and tp!268635 tp!268633))))

(declare-fun b!852520 () Bool)

(declare-fun tp!268631 () Bool)

(assert (=> b!852520 (= e!561142 tp!268631)))

(assert (=> b!852155 (= tp!268517 e!561142)))

(declare-fun b!852521 () Bool)

(declare-fun tp!268634 () Bool)

(declare-fun tp!268632 () Bool)

(assert (=> b!852521 (= e!561142 (and tp!268634 tp!268632))))

(assert (= (and b!852155 ((_ is ElementMatch!2159) (regex!1726 (h!14603 rules!2621)))) b!852518))

(assert (= (and b!852155 ((_ is Concat!3952) (regex!1726 (h!14603 rules!2621)))) b!852519))

(assert (= (and b!852155 ((_ is Star!2159) (regex!1726 (h!14603 rules!2621)))) b!852520))

(assert (= (and b!852155 ((_ is Union!2159) (regex!1726 (h!14603 rules!2621)))) b!852521))

(declare-fun b!852522 () Bool)

(declare-fun e!561143 () Bool)

(assert (=> b!852522 (= e!561143 tp_is_empty!3977)))

(declare-fun b!852523 () Bool)

(declare-fun tp!268640 () Bool)

(declare-fun tp!268638 () Bool)

(assert (=> b!852523 (= e!561143 (and tp!268640 tp!268638))))

(declare-fun b!852524 () Bool)

(declare-fun tp!268636 () Bool)

(assert (=> b!852524 (= e!561143 tp!268636)))

(assert (=> b!852154 (= tp!268518 e!561143)))

(declare-fun b!852525 () Bool)

(declare-fun tp!268639 () Bool)

(declare-fun tp!268637 () Bool)

(assert (=> b!852525 (= e!561143 (and tp!268639 tp!268637))))

(assert (= (and b!852154 ((_ is ElementMatch!2159) (regex!1726 (rule!3149 (h!14604 l!5107))))) b!852522))

(assert (= (and b!852154 ((_ is Concat!3952) (regex!1726 (rule!3149 (h!14604 l!5107))))) b!852523))

(assert (= (and b!852154 ((_ is Star!2159) (regex!1726 (rule!3149 (h!14604 l!5107))))) b!852524))

(assert (= (and b!852154 ((_ is Union!2159) (regex!1726 (rule!3149 (h!14604 l!5107))))) b!852525))

(declare-fun b_lambda!28465 () Bool)

(assert (= b_lambda!28447 (or (and b!852159 b_free!25791) (and b!852157 b_free!25787 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852486 b_free!25807 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852153 b_free!25795 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852517 b_free!25811 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) b_lambda!28465)))

(declare-fun b_lambda!28467 () Bool)

(assert (= b_lambda!28463 (or b!852145 b_lambda!28467)))

(declare-fun bs!231401 () Bool)

(declare-fun d!266161 () Bool)

(assert (= bs!231401 (and d!266161 b!852145)))

(assert (=> bs!231401 (= (dynLambda!4295 lambda!25494 (h!14604 l!5107)) (not (isSeparator!1726 (rule!3149 (h!14604 l!5107)))))))

(assert (=> b!852471 d!266161))

(declare-fun b_lambda!28469 () Bool)

(assert (= b_lambda!28461 (or (and b!852517 b_free!25811 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852486 b_free!25807 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852159 b_free!25791 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852157 b_free!25787 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852153 b_free!25795) b_lambda!28469)))

(check-sat (not b!852456) (not b!852466) (not b!852423) (not b!852207) (not b!852315) (not b!852454) (not b_lambda!28467) (not b!852184) (not d!266125) (not d!266107) b_and!74873 (not b!852413) (not b!852329) (not b!852520) (not b!852332) (not b!852485) (not d!266083) (not b!852525) (not b!852206) (not b_next!25855) (not b!852465) (not d!266155) (not b!852419) (not b_next!25857) (not b!852460) (not b!852472) (not b_next!25853) (not b!852425) (not d!266087) b_and!74907 (not b!852452) (not b!852208) (not d!266105) (not b!852491) (not d!266147) (not b!852484) (not b_next!25875) (not b!852483) b_and!74911 (not b_next!25849) (not d!266149) (not b!852504) tp_is_empty!3977 b_and!74869 (not b!852190) (not b_next!25873) b_and!74865 b_and!74915 (not d!266141) (not b!852427) b_and!74905 (not b!852426) (not b!852314) (not b!852313) (not b!852506) (not b!852422) (not b!852185) b_and!74903 (not b!852301) (not b!852294) (not b!852450) b_and!74909 (not b!852424) (not d!266145) (not b!852524) (not b!852417) (not tb!59943) (not b_lambda!28469) (not b_next!25851) (not b!852285) (not b!852503) (not b!852412) (not d!266151) (not b!852411) (not b_next!25871) (not b!852458) (not b!852515) (not d!266123) (not b!852505) (not b!852516) (not b!852523) (not d!266081) (not tb!59917) (not b!852328) (not b_next!25869) (not b!852519) (not b_next!25859) (not b!852521) b_and!74913 (not b_lambda!28465) (not b!852418) (not b!852421))
(check-sat b_and!74873 (not b_next!25855) (not b_next!25857) b_and!74869 (not b_next!25873) b_and!74903 b_and!74909 (not b_next!25851) (not b_next!25871) (not b_next!25869) (not b_next!25859) b_and!74913 (not b_next!25853) b_and!74907 (not b_next!25875) b_and!74911 (not b_next!25849) b_and!74865 b_and!74915 b_and!74905)
(get-model)

(declare-fun d!266167 () Bool)

(declare-fun res!389512 () Bool)

(declare-fun e!561144 () Bool)

(assert (=> d!266167 (=> (not res!389512) (not e!561144))))

(assert (=> d!266167 (= res!389512 (not (isEmpty!5442 (originalCharacters!2282 (h!14604 (t!95785 l!5107))))))))

(assert (=> d!266167 (= (inv!11692 (h!14604 (t!95785 l!5107))) e!561144)))

(declare-fun b!852526 () Bool)

(declare-fun res!389513 () Bool)

(assert (=> b!852526 (=> (not res!389513) (not e!561144))))

(assert (=> b!852526 (= res!389513 (= (originalCharacters!2282 (h!14604 (t!95785 l!5107))) (list!3613 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (value!55890 (h!14604 (t!95785 l!5107)))))))))

(declare-fun b!852527 () Bool)

(assert (=> b!852527 (= e!561144 (= (size!7665 (h!14604 (t!95785 l!5107))) (size!7669 (originalCharacters!2282 (h!14604 (t!95785 l!5107))))))))

(assert (= (and d!266167 res!389512) b!852526))

(assert (= (and b!852526 res!389513) b!852527))

(declare-fun b_lambda!28471 () Bool)

(assert (=> (not b_lambda!28471) (not b!852526)))

(declare-fun t!95843 () Bool)

(declare-fun tb!59957 () Bool)

(assert (=> (and b!852159 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95843) tb!59957))

(declare-fun b!852528 () Bool)

(declare-fun e!561145 () Bool)

(declare-fun tp!268641 () Bool)

(assert (=> b!852528 (= e!561145 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (value!55890 (h!14604 (t!95785 l!5107)))))) tp!268641))))

(declare-fun result!69462 () Bool)

(assert (=> tb!59957 (= result!69462 (and (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (value!55890 (h!14604 (t!95785 l!5107))))) e!561145))))

(assert (= tb!59957 b!852528))

(declare-fun m!1091827 () Bool)

(assert (=> b!852528 m!1091827))

(declare-fun m!1091829 () Bool)

(assert (=> tb!59957 m!1091829))

(assert (=> b!852526 t!95843))

(declare-fun b_and!74917 () Bool)

(assert (= b_and!74905 (and (=> t!95843 result!69462) b_and!74917)))

(declare-fun t!95845 () Bool)

(declare-fun tb!59959 () Bool)

(assert (=> (and b!852517 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95845) tb!59959))

(declare-fun result!69464 () Bool)

(assert (= result!69464 result!69462))

(assert (=> b!852526 t!95845))

(declare-fun b_and!74919 () Bool)

(assert (= b_and!74915 (and (=> t!95845 result!69464) b_and!74919)))

(declare-fun t!95847 () Bool)

(declare-fun tb!59961 () Bool)

(assert (=> (and b!852486 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95847) tb!59961))

(declare-fun result!69466 () Bool)

(assert (= result!69466 result!69462))

(assert (=> b!852526 t!95847))

(declare-fun b_and!74921 () Bool)

(assert (= b_and!74911 (and (=> t!95847 result!69466) b_and!74921)))

(declare-fun tb!59963 () Bool)

(declare-fun t!95849 () Bool)

(assert (=> (and b!852157 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95849) tb!59963))

(declare-fun result!69468 () Bool)

(assert (= result!69468 result!69462))

(assert (=> b!852526 t!95849))

(declare-fun b_and!74923 () Bool)

(assert (= b_and!74903 (and (=> t!95849 result!69468) b_and!74923)))

(declare-fun tb!59965 () Bool)

(declare-fun t!95851 () Bool)

(assert (=> (and b!852153 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95851) tb!59965))

(declare-fun result!69470 () Bool)

(assert (= result!69470 result!69462))

(assert (=> b!852526 t!95851))

(declare-fun b_and!74925 () Bool)

(assert (= b_and!74907 (and (=> t!95851 result!69470) b_and!74925)))

(declare-fun m!1091831 () Bool)

(assert (=> d!266167 m!1091831))

(declare-fun m!1091833 () Bool)

(assert (=> b!852526 m!1091833))

(assert (=> b!852526 m!1091833))

(declare-fun m!1091835 () Bool)

(assert (=> b!852526 m!1091835))

(declare-fun m!1091837 () Bool)

(assert (=> b!852527 m!1091837))

(assert (=> b!852483 d!266167))

(declare-fun d!266169 () Bool)

(declare-fun charsToInt!0 (List!9216) (_ BitVec 32))

(assert (=> d!266169 (= (inv!16 (value!55890 separatorToken!297)) (= (charsToInt!0 (text!12991 (value!55890 separatorToken!297))) (value!55881 (value!55890 separatorToken!297))))))

(declare-fun bs!231403 () Bool)

(assert (= bs!231403 d!266169))

(declare-fun m!1091839 () Bool)

(assert (=> bs!231403 m!1091839))

(assert (=> b!852314 d!266169))

(declare-fun b!852539 () Bool)

(declare-fun res!389518 () Bool)

(declare-fun e!561150 () Bool)

(assert (=> b!852539 (=> (not res!389518) (not e!561150))))

(declare-fun lt!322919 () List!9217)

(assert (=> b!852539 (= res!389518 (= (size!7669 lt!322919) (+ (size!7669 (list!3613 (charsOf!993 (h!14604 lt!322905)))) (size!7669 (printList!476 thiss!20117 (t!95785 lt!322905))))))))

(declare-fun b!852538 () Bool)

(declare-fun e!561151 () List!9217)

(assert (=> b!852538 (= e!561151 (Cons!9201 (h!14602 (list!3613 (charsOf!993 (h!14604 lt!322905)))) (++!2382 (t!95783 (list!3613 (charsOf!993 (h!14604 lt!322905)))) (printList!476 thiss!20117 (t!95785 lt!322905)))))))

(declare-fun b!852537 () Bool)

(assert (=> b!852537 (= e!561151 (printList!476 thiss!20117 (t!95785 lt!322905)))))

(declare-fun b!852540 () Bool)

(assert (=> b!852540 (= e!561150 (or (not (= (printList!476 thiss!20117 (t!95785 lt!322905)) Nil!9201)) (= lt!322919 (list!3613 (charsOf!993 (h!14604 lt!322905))))))))

(declare-fun d!266171 () Bool)

(assert (=> d!266171 e!561150))

(declare-fun res!389519 () Bool)

(assert (=> d!266171 (=> (not res!389519) (not e!561150))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1346 (List!9217) (InoxSet C!4888))

(assert (=> d!266171 (= res!389519 (= (content!1346 lt!322919) ((_ map or) (content!1346 (list!3613 (charsOf!993 (h!14604 lt!322905)))) (content!1346 (printList!476 thiss!20117 (t!95785 lt!322905))))))))

(assert (=> d!266171 (= lt!322919 e!561151)))

(declare-fun c!138309 () Bool)

(assert (=> d!266171 (= c!138309 ((_ is Nil!9201) (list!3613 (charsOf!993 (h!14604 lt!322905)))))))

(assert (=> d!266171 (= (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322905))) (printList!476 thiss!20117 (t!95785 lt!322905))) lt!322919)))

(assert (= (and d!266171 c!138309) b!852537))

(assert (= (and d!266171 (not c!138309)) b!852538))

(assert (= (and d!266171 res!389519) b!852539))

(assert (= (and b!852539 res!389518) b!852540))

(declare-fun m!1091841 () Bool)

(assert (=> b!852539 m!1091841))

(assert (=> b!852539 m!1091745))

(declare-fun m!1091843 () Bool)

(assert (=> b!852539 m!1091843))

(assert (=> b!852539 m!1091747))

(declare-fun m!1091845 () Bool)

(assert (=> b!852539 m!1091845))

(assert (=> b!852538 m!1091747))

(declare-fun m!1091847 () Bool)

(assert (=> b!852538 m!1091847))

(declare-fun m!1091849 () Bool)

(assert (=> d!266171 m!1091849))

(assert (=> d!266171 m!1091745))

(declare-fun m!1091851 () Bool)

(assert (=> d!266171 m!1091851))

(assert (=> d!266171 m!1091747))

(declare-fun m!1091853 () Bool)

(assert (=> d!266171 m!1091853))

(assert (=> b!852458 d!266171))

(declare-fun d!266173 () Bool)

(declare-fun list!3615 (Conc!3048) List!9217)

(assert (=> d!266173 (= (list!3613 (charsOf!993 (h!14604 lt!322905))) (list!3615 (c!138271 (charsOf!993 (h!14604 lt!322905)))))))

(declare-fun bs!231404 () Bool)

(assert (= bs!231404 d!266173))

(declare-fun m!1091855 () Bool)

(assert (=> bs!231404 m!1091855))

(assert (=> b!852458 d!266173))

(declare-fun d!266175 () Bool)

(declare-fun lt!322922 () BalanceConc!6110)

(assert (=> d!266175 (= (list!3613 lt!322922) (originalCharacters!2282 (h!14604 lt!322905)))))

(assert (=> d!266175 (= lt!322922 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905)))) (value!55890 (h!14604 lt!322905))))))

(assert (=> d!266175 (= (charsOf!993 (h!14604 lt!322905)) lt!322922)))

(declare-fun b_lambda!28473 () Bool)

(assert (=> (not b_lambda!28473) (not d!266175)))

(declare-fun t!95853 () Bool)

(declare-fun tb!59967 () Bool)

(assert (=> (and b!852486 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95853) tb!59967))

(declare-fun b!852541 () Bool)

(declare-fun e!561152 () Bool)

(declare-fun tp!268642 () Bool)

(assert (=> b!852541 (= e!561152 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905)))) (value!55890 (h!14604 lt!322905))))) tp!268642))))

(declare-fun result!69472 () Bool)

(assert (=> tb!59967 (= result!69472 (and (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905)))) (value!55890 (h!14604 lt!322905)))) e!561152))))

(assert (= tb!59967 b!852541))

(declare-fun m!1091857 () Bool)

(assert (=> b!852541 m!1091857))

(declare-fun m!1091859 () Bool)

(assert (=> tb!59967 m!1091859))

(assert (=> d!266175 t!95853))

(declare-fun b_and!74927 () Bool)

(assert (= b_and!74921 (and (=> t!95853 result!69472) b_and!74927)))

(declare-fun tb!59969 () Bool)

(declare-fun t!95855 () Bool)

(assert (=> (and b!852157 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95855) tb!59969))

(declare-fun result!69474 () Bool)

(assert (= result!69474 result!69472))

(assert (=> d!266175 t!95855))

(declare-fun b_and!74929 () Bool)

(assert (= b_and!74923 (and (=> t!95855 result!69474) b_and!74929)))

(declare-fun tb!59971 () Bool)

(declare-fun t!95857 () Bool)

(assert (=> (and b!852159 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95857) tb!59971))

(declare-fun result!69476 () Bool)

(assert (= result!69476 result!69472))

(assert (=> d!266175 t!95857))

(declare-fun b_and!74931 () Bool)

(assert (= b_and!74917 (and (=> t!95857 result!69476) b_and!74931)))

(declare-fun t!95859 () Bool)

(declare-fun tb!59973 () Bool)

(assert (=> (and b!852153 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95859) tb!59973))

(declare-fun result!69478 () Bool)

(assert (= result!69478 result!69472))

(assert (=> d!266175 t!95859))

(declare-fun b_and!74933 () Bool)

(assert (= b_and!74925 (and (=> t!95859 result!69478) b_and!74933)))

(declare-fun t!95861 () Bool)

(declare-fun tb!59975 () Bool)

(assert (=> (and b!852517 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95861) tb!59975))

(declare-fun result!69480 () Bool)

(assert (= result!69480 result!69472))

(assert (=> d!266175 t!95861))

(declare-fun b_and!74935 () Bool)

(assert (= b_and!74919 (and (=> t!95861 result!69480) b_and!74935)))

(declare-fun m!1091861 () Bool)

(assert (=> d!266175 m!1091861))

(declare-fun m!1091863 () Bool)

(assert (=> d!266175 m!1091863))

(assert (=> b!852458 d!266175))

(declare-fun d!266177 () Bool)

(declare-fun c!138312 () Bool)

(assert (=> d!266177 (= c!138312 ((_ is Cons!9203) (t!95785 lt!322905)))))

(declare-fun e!561155 () List!9217)

(assert (=> d!266177 (= (printList!476 thiss!20117 (t!95785 lt!322905)) e!561155)))

(declare-fun b!852546 () Bool)

(assert (=> b!852546 (= e!561155 (++!2382 (list!3613 (charsOf!993 (h!14604 (t!95785 lt!322905)))) (printList!476 thiss!20117 (t!95785 (t!95785 lt!322905)))))))

(declare-fun b!852547 () Bool)

(assert (=> b!852547 (= e!561155 Nil!9201)))

(assert (= (and d!266177 c!138312) b!852546))

(assert (= (and d!266177 (not c!138312)) b!852547))

(declare-fun m!1091865 () Bool)

(assert (=> b!852546 m!1091865))

(assert (=> b!852546 m!1091865))

(declare-fun m!1091867 () Bool)

(assert (=> b!852546 m!1091867))

(declare-fun m!1091869 () Bool)

(assert (=> b!852546 m!1091869))

(assert (=> b!852546 m!1091867))

(assert (=> b!852546 m!1091869))

(declare-fun m!1091871 () Bool)

(assert (=> b!852546 m!1091871))

(assert (=> b!852458 d!266177))

(declare-fun d!266179 () Bool)

(declare-fun isBalanced!835 (Conc!3048) Bool)

(assert (=> d!266179 (= (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))) (isBalanced!835 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))))

(declare-fun bs!231405 () Bool)

(assert (= bs!231405 d!266179))

(declare-fun m!1091873 () Bool)

(assert (=> bs!231405 m!1091873))

(assert (=> tb!59917 d!266179))

(declare-fun d!266181 () Bool)

(assert (=> d!266181 (= (inv!11689 (tag!1988 (rule!3149 (h!14604 (t!95785 l!5107))))) (= (mod (str.len (value!55889 (tag!1988 (rule!3149 (h!14604 (t!95785 l!5107)))))) 2) 0))))

(assert (=> b!852485 d!266181))

(declare-fun d!266183 () Bool)

(declare-fun res!389520 () Bool)

(declare-fun e!561156 () Bool)

(assert (=> d!266183 (=> (not res!389520) (not e!561156))))

(assert (=> d!266183 (= res!389520 (semiInverseModEq!672 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))))))

(assert (=> d!266183 (= (inv!11693 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) e!561156)))

(declare-fun b!852548 () Bool)

(assert (=> b!852548 (= e!561156 (equivClasses!639 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))))))

(assert (= (and d!266183 res!389520) b!852548))

(declare-fun m!1091875 () Bool)

(assert (=> d!266183 m!1091875))

(declare-fun m!1091877 () Bool)

(assert (=> b!852548 m!1091877))

(assert (=> b!852485 d!266183))

(declare-fun d!266185 () Bool)

(assert (=> d!266185 (= (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))) (isBalanced!835 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))))

(declare-fun bs!231406 () Bool)

(assert (= bs!231406 d!266185))

(declare-fun m!1091879 () Bool)

(assert (=> bs!231406 m!1091879))

(assert (=> tb!59943 d!266185))

(declare-fun b!852551 () Bool)

(declare-fun res!389521 () Bool)

(declare-fun e!561157 () Bool)

(assert (=> b!852551 (=> (not res!389521) (not e!561157))))

(declare-fun lt!322923 () List!9217)

(assert (=> b!852551 (= res!389521 (= (size!7669 lt!322923) (+ (size!7669 (list!3613 (charsOf!993 (h!14604 lt!322907)))) (size!7669 (printList!476 thiss!20117 (t!95785 lt!322907))))))))

(declare-fun b!852550 () Bool)

(declare-fun e!561158 () List!9217)

(assert (=> b!852550 (= e!561158 (Cons!9201 (h!14602 (list!3613 (charsOf!993 (h!14604 lt!322907)))) (++!2382 (t!95783 (list!3613 (charsOf!993 (h!14604 lt!322907)))) (printList!476 thiss!20117 (t!95785 lt!322907)))))))

(declare-fun b!852549 () Bool)

(assert (=> b!852549 (= e!561158 (printList!476 thiss!20117 (t!95785 lt!322907)))))

(declare-fun b!852552 () Bool)

(assert (=> b!852552 (= e!561157 (or (not (= (printList!476 thiss!20117 (t!95785 lt!322907)) Nil!9201)) (= lt!322923 (list!3613 (charsOf!993 (h!14604 lt!322907))))))))

(declare-fun d!266187 () Bool)

(assert (=> d!266187 e!561157))

(declare-fun res!389522 () Bool)

(assert (=> d!266187 (=> (not res!389522) (not e!561157))))

(assert (=> d!266187 (= res!389522 (= (content!1346 lt!322923) ((_ map or) (content!1346 (list!3613 (charsOf!993 (h!14604 lt!322907)))) (content!1346 (printList!476 thiss!20117 (t!95785 lt!322907))))))))

(assert (=> d!266187 (= lt!322923 e!561158)))

(declare-fun c!138313 () Bool)

(assert (=> d!266187 (= c!138313 ((_ is Nil!9201) (list!3613 (charsOf!993 (h!14604 lt!322907)))))))

(assert (=> d!266187 (= (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322907))) (printList!476 thiss!20117 (t!95785 lt!322907))) lt!322923)))

(assert (= (and d!266187 c!138313) b!852549))

(assert (= (and d!266187 (not c!138313)) b!852550))

(assert (= (and d!266187 res!389522) b!852551))

(assert (= (and b!852551 res!389521) b!852552))

(declare-fun m!1091881 () Bool)

(assert (=> b!852551 m!1091881))

(assert (=> b!852551 m!1091763))

(declare-fun m!1091883 () Bool)

(assert (=> b!852551 m!1091883))

(assert (=> b!852551 m!1091765))

(declare-fun m!1091885 () Bool)

(assert (=> b!852551 m!1091885))

(assert (=> b!852550 m!1091765))

(declare-fun m!1091887 () Bool)

(assert (=> b!852550 m!1091887))

(declare-fun m!1091889 () Bool)

(assert (=> d!266187 m!1091889))

(assert (=> d!266187 m!1091763))

(declare-fun m!1091891 () Bool)

(assert (=> d!266187 m!1091891))

(assert (=> d!266187 m!1091765))

(declare-fun m!1091893 () Bool)

(assert (=> d!266187 m!1091893))

(assert (=> b!852454 d!266187))

(declare-fun d!266189 () Bool)

(assert (=> d!266189 (= (list!3613 (charsOf!993 (h!14604 lt!322907))) (list!3615 (c!138271 (charsOf!993 (h!14604 lt!322907)))))))

(declare-fun bs!231407 () Bool)

(assert (= bs!231407 d!266189))

(declare-fun m!1091895 () Bool)

(assert (=> bs!231407 m!1091895))

(assert (=> b!852454 d!266189))

(declare-fun d!266191 () Bool)

(declare-fun lt!322924 () BalanceConc!6110)

(assert (=> d!266191 (= (list!3613 lt!322924) (originalCharacters!2282 (h!14604 lt!322907)))))

(assert (=> d!266191 (= lt!322924 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907)))) (value!55890 (h!14604 lt!322907))))))

(assert (=> d!266191 (= (charsOf!993 (h!14604 lt!322907)) lt!322924)))

(declare-fun b_lambda!28475 () Bool)

(assert (=> (not b_lambda!28475) (not d!266191)))

(declare-fun t!95863 () Bool)

(declare-fun tb!59977 () Bool)

(assert (=> (and b!852159 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95863) tb!59977))

(declare-fun b!852553 () Bool)

(declare-fun e!561159 () Bool)

(declare-fun tp!268643 () Bool)

(assert (=> b!852553 (= e!561159 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907)))) (value!55890 (h!14604 lt!322907))))) tp!268643))))

(declare-fun result!69482 () Bool)

(assert (=> tb!59977 (= result!69482 (and (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907)))) (value!55890 (h!14604 lt!322907)))) e!561159))))

(assert (= tb!59977 b!852553))

(declare-fun m!1091897 () Bool)

(assert (=> b!852553 m!1091897))

(declare-fun m!1091899 () Bool)

(assert (=> tb!59977 m!1091899))

(assert (=> d!266191 t!95863))

(declare-fun b_and!74937 () Bool)

(assert (= b_and!74931 (and (=> t!95863 result!69482) b_and!74937)))

(declare-fun tb!59979 () Bool)

(declare-fun t!95865 () Bool)

(assert (=> (and b!852517 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95865) tb!59979))

(declare-fun result!69484 () Bool)

(assert (= result!69484 result!69482))

(assert (=> d!266191 t!95865))

(declare-fun b_and!74939 () Bool)

(assert (= b_and!74935 (and (=> t!95865 result!69484) b_and!74939)))

(declare-fun t!95867 () Bool)

(declare-fun tb!59981 () Bool)

(assert (=> (and b!852153 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95867) tb!59981))

(declare-fun result!69486 () Bool)

(assert (= result!69486 result!69482))

(assert (=> d!266191 t!95867))

(declare-fun b_and!74941 () Bool)

(assert (= b_and!74933 (and (=> t!95867 result!69486) b_and!74941)))

(declare-fun tb!59983 () Bool)

(declare-fun t!95869 () Bool)

(assert (=> (and b!852486 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95869) tb!59983))

(declare-fun result!69488 () Bool)

(assert (= result!69488 result!69482))

(assert (=> d!266191 t!95869))

(declare-fun b_and!74943 () Bool)

(assert (= b_and!74927 (and (=> t!95869 result!69488) b_and!74943)))

(declare-fun t!95871 () Bool)

(declare-fun tb!59985 () Bool)

(assert (=> (and b!852157 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95871) tb!59985))

(declare-fun result!69490 () Bool)

(assert (= result!69490 result!69482))

(assert (=> d!266191 t!95871))

(declare-fun b_and!74945 () Bool)

(assert (= b_and!74929 (and (=> t!95871 result!69490) b_and!74945)))

(declare-fun m!1091901 () Bool)

(assert (=> d!266191 m!1091901))

(declare-fun m!1091903 () Bool)

(assert (=> d!266191 m!1091903))

(assert (=> b!852454 d!266191))

(declare-fun d!266193 () Bool)

(declare-fun c!138314 () Bool)

(assert (=> d!266193 (= c!138314 ((_ is Cons!9203) (t!95785 lt!322907)))))

(declare-fun e!561160 () List!9217)

(assert (=> d!266193 (= (printList!476 thiss!20117 (t!95785 lt!322907)) e!561160)))

(declare-fun b!852554 () Bool)

(assert (=> b!852554 (= e!561160 (++!2382 (list!3613 (charsOf!993 (h!14604 (t!95785 lt!322907)))) (printList!476 thiss!20117 (t!95785 (t!95785 lt!322907)))))))

(declare-fun b!852555 () Bool)

(assert (=> b!852555 (= e!561160 Nil!9201)))

(assert (= (and d!266193 c!138314) b!852554))

(assert (= (and d!266193 (not c!138314)) b!852555))

(declare-fun m!1091905 () Bool)

(assert (=> b!852554 m!1091905))

(assert (=> b!852554 m!1091905))

(declare-fun m!1091907 () Bool)

(assert (=> b!852554 m!1091907))

(declare-fun m!1091909 () Bool)

(assert (=> b!852554 m!1091909))

(assert (=> b!852554 m!1091907))

(assert (=> b!852554 m!1091909))

(declare-fun m!1091911 () Bool)

(assert (=> b!852554 m!1091911))

(assert (=> b!852454 d!266193))

(declare-fun d!266195 () Bool)

(declare-fun c!138317 () Bool)

(assert (=> d!266195 (= c!138317 ((_ is Node!3048) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))))

(declare-fun e!561165 () Bool)

(assert (=> d!266195 (= (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))) e!561165)))

(declare-fun b!852562 () Bool)

(declare-fun inv!11698 (Conc!3048) Bool)

(assert (=> b!852562 (= e!561165 (inv!11698 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))))

(declare-fun b!852563 () Bool)

(declare-fun e!561166 () Bool)

(assert (=> b!852563 (= e!561165 e!561166)))

(declare-fun res!389525 () Bool)

(assert (=> b!852563 (= res!389525 (not ((_ is Leaf!4499) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))))))))

(assert (=> b!852563 (=> res!389525 e!561166)))

(declare-fun b!852564 () Bool)

(declare-fun inv!11699 (Conc!3048) Bool)

(assert (=> b!852564 (= e!561166 (inv!11699 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))))

(assert (= (and d!266195 c!138317) b!852562))

(assert (= (and d!266195 (not c!138317)) b!852563))

(assert (= (and b!852563 (not res!389525)) b!852564))

(declare-fun m!1091913 () Bool)

(assert (=> b!852562 m!1091913))

(declare-fun m!1091915 () Bool)

(assert (=> b!852564 m!1091915))

(assert (=> b!852190 d!266195))

(declare-fun d!266197 () Bool)

(declare-fun lt!322927 () Bool)

(assert (=> d!266197 (= lt!322927 (isEmpty!5442 (list!3613 (_2!6020 lt!322805))))))

(declare-fun isEmpty!5446 (Conc!3048) Bool)

(assert (=> d!266197 (= lt!322927 (isEmpty!5446 (c!138271 (_2!6020 lt!322805))))))

(assert (=> d!266197 (= (isEmpty!5443 (_2!6020 lt!322805)) lt!322927)))

(declare-fun bs!231408 () Bool)

(assert (= bs!231408 d!266197))

(declare-fun m!1091917 () Bool)

(assert (=> bs!231408 m!1091917))

(assert (=> bs!231408 m!1091917))

(declare-fun m!1091919 () Bool)

(assert (=> bs!231408 m!1091919))

(declare-fun m!1091921 () Bool)

(assert (=> bs!231408 m!1091921))

(assert (=> b!852207 d!266197))

(declare-fun d!266199 () Bool)

(declare-fun res!389526 () Bool)

(declare-fun e!561167 () Bool)

(assert (=> d!266199 (=> res!389526 e!561167)))

(assert (=> d!266199 (= res!389526 ((_ is Nil!9203) (list!3614 (seqFromList!1528 lt!322790))))))

(assert (=> d!266199 (= (forall!2173 (list!3614 (seqFromList!1528 lt!322790)) lambda!25507) e!561167)))

(declare-fun b!852565 () Bool)

(declare-fun e!561168 () Bool)

(assert (=> b!852565 (= e!561167 e!561168)))

(declare-fun res!389527 () Bool)

(assert (=> b!852565 (=> (not res!389527) (not e!561168))))

(assert (=> b!852565 (= res!389527 (dynLambda!4295 lambda!25507 (h!14604 (list!3614 (seqFromList!1528 lt!322790)))))))

(declare-fun b!852566 () Bool)

(assert (=> b!852566 (= e!561168 (forall!2173 (t!95785 (list!3614 (seqFromList!1528 lt!322790))) lambda!25507))))

(assert (= (and d!266199 (not res!389526)) b!852565))

(assert (= (and b!852565 res!389527) b!852566))

(declare-fun b_lambda!28477 () Bool)

(assert (=> (not b_lambda!28477) (not b!852565)))

(declare-fun m!1091923 () Bool)

(assert (=> b!852565 m!1091923))

(declare-fun m!1091925 () Bool)

(assert (=> b!852566 m!1091925))

(assert (=> d!266087 d!266199))

(declare-fun d!266201 () Bool)

(declare-fun list!3617 (Conc!3049) List!9219)

(assert (=> d!266201 (= (list!3614 (seqFromList!1528 lt!322790)) (list!3617 (c!138272 (seqFromList!1528 lt!322790))))))

(declare-fun bs!231409 () Bool)

(assert (= bs!231409 d!266201))

(declare-fun m!1091927 () Bool)

(assert (=> bs!231409 m!1091927))

(assert (=> d!266087 d!266201))

(declare-fun d!266203 () Bool)

(declare-fun lt!322930 () Bool)

(assert (=> d!266203 (= lt!322930 (forall!2173 (list!3614 (seqFromList!1528 lt!322790)) lambda!25507))))

(declare-fun forall!2176 (Conc!3049 Int) Bool)

(assert (=> d!266203 (= lt!322930 (forall!2176 (c!138272 (seqFromList!1528 lt!322790)) lambda!25507))))

(assert (=> d!266203 (= (forall!2175 (seqFromList!1528 lt!322790) lambda!25507) lt!322930)))

(declare-fun bs!231410 () Bool)

(assert (= bs!231410 d!266203))

(assert (=> bs!231410 m!1091429))

(assert (=> bs!231410 m!1091607))

(assert (=> bs!231410 m!1091607))

(assert (=> bs!231410 m!1091609))

(declare-fun m!1091929 () Bool)

(assert (=> bs!231410 m!1091929))

(assert (=> d!266087 d!266203))

(assert (=> d!266087 d!266079))

(declare-fun d!266205 () Bool)

(assert (=> d!266205 (= (inv!16 (value!55890 (h!14604 l!5107))) (= (charsToInt!0 (text!12991 (value!55890 (h!14604 l!5107)))) (value!55881 (value!55890 (h!14604 l!5107)))))))

(declare-fun bs!231411 () Bool)

(assert (= bs!231411 d!266205))

(declare-fun m!1091931 () Bool)

(assert (=> bs!231411 m!1091931))

(assert (=> b!852418 d!266205))

(declare-fun b!852569 () Bool)

(declare-fun res!389528 () Bool)

(declare-fun e!561169 () Bool)

(assert (=> b!852569 (=> (not res!389528) (not e!561169))))

(declare-fun lt!322931 () List!9217)

(assert (=> b!852569 (= res!389528 (= (size!7669 lt!322931) (+ (size!7669 lt!322906) (size!7669 (++!2382 lt!322910 lt!322904)))))))

(declare-fun e!561170 () List!9217)

(declare-fun b!852568 () Bool)

(assert (=> b!852568 (= e!561170 (Cons!9201 (h!14602 lt!322906) (++!2382 (t!95783 lt!322906) (++!2382 lt!322910 lt!322904))))))

(declare-fun b!852567 () Bool)

(assert (=> b!852567 (= e!561170 (++!2382 lt!322910 lt!322904))))

(declare-fun b!852570 () Bool)

(assert (=> b!852570 (= e!561169 (or (not (= (++!2382 lt!322910 lt!322904) Nil!9201)) (= lt!322931 lt!322906)))))

(declare-fun d!266207 () Bool)

(assert (=> d!266207 e!561169))

(declare-fun res!389529 () Bool)

(assert (=> d!266207 (=> (not res!389529) (not e!561169))))

(assert (=> d!266207 (= res!389529 (= (content!1346 lt!322931) ((_ map or) (content!1346 lt!322906) (content!1346 (++!2382 lt!322910 lt!322904)))))))

(assert (=> d!266207 (= lt!322931 e!561170)))

(declare-fun c!138318 () Bool)

(assert (=> d!266207 (= c!138318 ((_ is Nil!9201) lt!322906))))

(assert (=> d!266207 (= (++!2382 lt!322906 (++!2382 lt!322910 lt!322904)) lt!322931)))

(assert (= (and d!266207 c!138318) b!852567))

(assert (= (and d!266207 (not c!138318)) b!852568))

(assert (= (and d!266207 res!389529) b!852569))

(assert (= (and b!852569 res!389528) b!852570))

(declare-fun m!1091933 () Bool)

(assert (=> b!852569 m!1091933))

(declare-fun m!1091935 () Bool)

(assert (=> b!852569 m!1091935))

(assert (=> b!852569 m!1091785))

(declare-fun m!1091937 () Bool)

(assert (=> b!852569 m!1091937))

(assert (=> b!852568 m!1091785))

(declare-fun m!1091939 () Bool)

(assert (=> b!852568 m!1091939))

(declare-fun m!1091941 () Bool)

(assert (=> d!266207 m!1091941))

(declare-fun m!1091943 () Bool)

(assert (=> d!266207 m!1091943))

(assert (=> d!266207 m!1091785))

(declare-fun m!1091945 () Bool)

(assert (=> d!266207 m!1091945))

(assert (=> b!852456 d!266207))

(declare-fun c!138319 () Bool)

(declare-fun d!266209 () Bool)

(assert (=> d!266209 (= c!138319 ((_ is Cons!9203) (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297)))))

(declare-fun e!561171 () List!9217)

(assert (=> d!266209 (= (printList!476 thiss!20117 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297)) e!561171)))

(declare-fun b!852571 () Bool)

(assert (=> b!852571 (= e!561171 (++!2382 (list!3613 (charsOf!993 (h!14604 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297)))) (printList!476 thiss!20117 (t!95785 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297)))))))

(declare-fun b!852572 () Bool)

(assert (=> b!852572 (= e!561171 Nil!9201)))

(assert (= (and d!266209 c!138319) b!852571))

(assert (= (and d!266209 (not c!138319)) b!852572))

(declare-fun m!1091947 () Bool)

(assert (=> b!852571 m!1091947))

(assert (=> b!852571 m!1091947))

(declare-fun m!1091949 () Bool)

(assert (=> b!852571 m!1091949))

(declare-fun m!1091951 () Bool)

(assert (=> b!852571 m!1091951))

(assert (=> b!852571 m!1091949))

(assert (=> b!852571 m!1091951))

(declare-fun m!1091953 () Bool)

(assert (=> b!852571 m!1091953))

(assert (=> b!852456 d!266209))

(declare-fun b!852575 () Bool)

(declare-fun res!389530 () Bool)

(declare-fun e!561172 () Bool)

(assert (=> b!852575 (=> (not res!389530) (not e!561172))))

(declare-fun lt!322932 () List!9217)

(assert (=> b!852575 (= res!389530 (= (size!7669 lt!322932) (+ (size!7669 lt!322910) (size!7669 lt!322904))))))

(declare-fun b!852574 () Bool)

(declare-fun e!561173 () List!9217)

(assert (=> b!852574 (= e!561173 (Cons!9201 (h!14602 lt!322910) (++!2382 (t!95783 lt!322910) lt!322904)))))

(declare-fun b!852573 () Bool)

(assert (=> b!852573 (= e!561173 lt!322904)))

(declare-fun b!852576 () Bool)

(assert (=> b!852576 (= e!561172 (or (not (= lt!322904 Nil!9201)) (= lt!322932 lt!322910)))))

(declare-fun d!266211 () Bool)

(assert (=> d!266211 e!561172))

(declare-fun res!389531 () Bool)

(assert (=> d!266211 (=> (not res!389531) (not e!561172))))

(assert (=> d!266211 (= res!389531 (= (content!1346 lt!322932) ((_ map or) (content!1346 lt!322910) (content!1346 lt!322904))))))

(assert (=> d!266211 (= lt!322932 e!561173)))

(declare-fun c!138320 () Bool)

(assert (=> d!266211 (= c!138320 ((_ is Nil!9201) lt!322910))))

(assert (=> d!266211 (= (++!2382 lt!322910 lt!322904) lt!322932)))

(assert (= (and d!266211 c!138320) b!852573))

(assert (= (and d!266211 (not c!138320)) b!852574))

(assert (= (and d!266211 res!389531) b!852575))

(assert (= (and b!852575 res!389530) b!852576))

(declare-fun m!1091955 () Bool)

(assert (=> b!852575 m!1091955))

(declare-fun m!1091957 () Bool)

(assert (=> b!852575 m!1091957))

(declare-fun m!1091959 () Bool)

(assert (=> b!852575 m!1091959))

(declare-fun m!1091961 () Bool)

(assert (=> b!852574 m!1091961))

(declare-fun m!1091963 () Bool)

(assert (=> d!266211 m!1091963))

(declare-fun m!1091965 () Bool)

(assert (=> d!266211 m!1091965))

(declare-fun m!1091967 () Bool)

(assert (=> d!266211 m!1091967))

(assert (=> b!852456 d!266211))

(declare-fun d!266213 () Bool)

(assert (=> d!266213 (= (++!2382 (++!2382 lt!322906 lt!322910) lt!322904) (++!2382 lt!322906 (++!2382 lt!322910 lt!322904)))))

(declare-fun lt!322935 () Unit!13701)

(declare-fun choose!5032 (List!9217 List!9217 List!9217) Unit!13701)

(assert (=> d!266213 (= lt!322935 (choose!5032 lt!322906 lt!322910 lt!322904))))

(assert (=> d!266213 (= (lemmaConcatAssociativity!751 lt!322906 lt!322910 lt!322904) lt!322935)))

(declare-fun bs!231412 () Bool)

(assert (= bs!231412 d!266213))

(assert (=> bs!231412 m!1091773))

(assert (=> bs!231412 m!1091785))

(assert (=> bs!231412 m!1091785))

(assert (=> bs!231412 m!1091787))

(declare-fun m!1091969 () Bool)

(assert (=> bs!231412 m!1091969))

(assert (=> bs!231412 m!1091773))

(assert (=> bs!231412 m!1091783))

(assert (=> b!852456 d!266213))

(declare-fun d!266215 () Bool)

(assert (=> d!266215 (= (list!3613 (charsOf!993 separatorToken!297)) (list!3615 (c!138271 (charsOf!993 separatorToken!297))))))

(declare-fun bs!231413 () Bool)

(assert (= bs!231413 d!266215))

(declare-fun m!1091971 () Bool)

(assert (=> bs!231413 m!1091971))

(assert (=> b!852456 d!266215))

(declare-fun d!266217 () Bool)

(assert (=> d!266217 (= (list!3613 (charsOf!993 (h!14604 l!5107))) (list!3615 (c!138271 (charsOf!993 (h!14604 l!5107)))))))

(declare-fun bs!231414 () Bool)

(assert (= bs!231414 d!266217))

(declare-fun m!1091973 () Bool)

(assert (=> bs!231414 m!1091973))

(assert (=> b!852456 d!266217))

(declare-fun d!266219 () Bool)

(assert (=> d!266219 (= ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107)) (Cons!9203 (h!14604 l!5107) ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!852456 d!266219))

(declare-fun d!266221 () Bool)

(declare-fun lt!322936 () BalanceConc!6110)

(assert (=> d!266221 (= (list!3613 lt!322936) (originalCharacters!2282 (h!14604 l!5107)))))

(assert (=> d!266221 (= lt!322936 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))

(assert (=> d!266221 (= (charsOf!993 (h!14604 l!5107)) lt!322936)))

(declare-fun b_lambda!28479 () Bool)

(assert (=> (not b_lambda!28479) (not d!266221)))

(assert (=> d!266221 t!95787))

(declare-fun b_and!74947 () Bool)

(assert (= b_and!74945 (and (=> t!95787 result!69402) b_and!74947)))

(assert (=> d!266221 t!95838))

(declare-fun b_and!74949 () Bool)

(assert (= b_and!74939 (and (=> t!95838 result!69458) b_and!74949)))

(assert (=> d!266221 t!95789))

(declare-fun b_and!74951 () Bool)

(assert (= b_and!74937 (and (=> t!95789 result!69406) b_and!74951)))

(assert (=> d!266221 t!95834))

(declare-fun b_and!74953 () Bool)

(assert (= b_and!74943 (and (=> t!95834 result!69448) b_and!74953)))

(assert (=> d!266221 t!95791))

(declare-fun b_and!74955 () Bool)

(assert (= b_and!74941 (and (=> t!95791 result!69408) b_and!74955)))

(declare-fun m!1091975 () Bool)

(assert (=> d!266221 m!1091975))

(assert (=> d!266221 m!1091477))

(assert (=> b!852456 d!266221))

(declare-fun b!852579 () Bool)

(declare-fun res!389532 () Bool)

(declare-fun e!561174 () Bool)

(assert (=> b!852579 (=> (not res!389532) (not e!561174))))

(declare-fun lt!322937 () List!9217)

(assert (=> b!852579 (= res!389532 (= (size!7669 lt!322937) (+ (size!7669 lt!322906) (size!7669 lt!322910))))))

(declare-fun b!852578 () Bool)

(declare-fun e!561175 () List!9217)

(assert (=> b!852578 (= e!561175 (Cons!9201 (h!14602 lt!322906) (++!2382 (t!95783 lt!322906) lt!322910)))))

(declare-fun b!852577 () Bool)

(assert (=> b!852577 (= e!561175 lt!322910)))

(declare-fun b!852580 () Bool)

(assert (=> b!852580 (= e!561174 (or (not (= lt!322910 Nil!9201)) (= lt!322937 lt!322906)))))

(declare-fun d!266223 () Bool)

(assert (=> d!266223 e!561174))

(declare-fun res!389533 () Bool)

(assert (=> d!266223 (=> (not res!389533) (not e!561174))))

(assert (=> d!266223 (= res!389533 (= (content!1346 lt!322937) ((_ map or) (content!1346 lt!322906) (content!1346 lt!322910))))))

(assert (=> d!266223 (= lt!322937 e!561175)))

(declare-fun c!138321 () Bool)

(assert (=> d!266223 (= c!138321 ((_ is Nil!9201) lt!322906))))

(assert (=> d!266223 (= (++!2382 lt!322906 lt!322910) lt!322937)))

(assert (= (and d!266223 c!138321) b!852577))

(assert (= (and d!266223 (not c!138321)) b!852578))

(assert (= (and d!266223 res!389533) b!852579))

(assert (= (and b!852579 res!389532) b!852580))

(declare-fun m!1091977 () Bool)

(assert (=> b!852579 m!1091977))

(assert (=> b!852579 m!1091935))

(assert (=> b!852579 m!1091957))

(declare-fun m!1091979 () Bool)

(assert (=> b!852578 m!1091979))

(declare-fun m!1091981 () Bool)

(assert (=> d!266223 m!1091981))

(assert (=> d!266223 m!1091943))

(assert (=> d!266223 m!1091965))

(assert (=> b!852456 d!266223))

(declare-fun b!852583 () Bool)

(declare-fun res!389534 () Bool)

(declare-fun e!561176 () Bool)

(assert (=> b!852583 (=> (not res!389534) (not e!561176))))

(declare-fun lt!322938 () List!9217)

(assert (=> b!852583 (= res!389534 (= (size!7669 lt!322938) (+ (size!7669 (++!2382 lt!322906 lt!322910)) (size!7669 lt!322904))))))

(declare-fun b!852582 () Bool)

(declare-fun e!561177 () List!9217)

(assert (=> b!852582 (= e!561177 (Cons!9201 (h!14602 (++!2382 lt!322906 lt!322910)) (++!2382 (t!95783 (++!2382 lt!322906 lt!322910)) lt!322904)))))

(declare-fun b!852581 () Bool)

(assert (=> b!852581 (= e!561177 lt!322904)))

(declare-fun b!852584 () Bool)

(assert (=> b!852584 (= e!561176 (or (not (= lt!322904 Nil!9201)) (= lt!322938 (++!2382 lt!322906 lt!322910))))))

(declare-fun d!266225 () Bool)

(assert (=> d!266225 e!561176))

(declare-fun res!389535 () Bool)

(assert (=> d!266225 (=> (not res!389535) (not e!561176))))

(assert (=> d!266225 (= res!389535 (= (content!1346 lt!322938) ((_ map or) (content!1346 (++!2382 lt!322906 lt!322910)) (content!1346 lt!322904))))))

(assert (=> d!266225 (= lt!322938 e!561177)))

(declare-fun c!138322 () Bool)

(assert (=> d!266225 (= c!138322 ((_ is Nil!9201) (++!2382 lt!322906 lt!322910)))))

(assert (=> d!266225 (= (++!2382 (++!2382 lt!322906 lt!322910) lt!322904) lt!322938)))

(assert (= (and d!266225 c!138322) b!852581))

(assert (= (and d!266225 (not c!138322)) b!852582))

(assert (= (and d!266225 res!389535) b!852583))

(assert (= (and b!852583 res!389534) b!852584))

(declare-fun m!1091983 () Bool)

(assert (=> b!852583 m!1091983))

(assert (=> b!852583 m!1091773))

(declare-fun m!1091985 () Bool)

(assert (=> b!852583 m!1091985))

(assert (=> b!852583 m!1091959))

(declare-fun m!1091987 () Bool)

(assert (=> b!852582 m!1091987))

(declare-fun m!1091989 () Bool)

(assert (=> d!266225 m!1091989))

(assert (=> d!266225 m!1091773))

(declare-fun m!1091991 () Bool)

(assert (=> d!266225 m!1091991))

(assert (=> d!266225 m!1091967))

(assert (=> b!852456 d!266225))

(declare-fun d!266227 () Bool)

(declare-fun lt!322939 () BalanceConc!6110)

(assert (=> d!266227 (= (list!3613 lt!322939) (originalCharacters!2282 separatorToken!297))))

(assert (=> d!266227 (= lt!322939 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))

(assert (=> d!266227 (= (charsOf!993 separatorToken!297) lt!322939)))

(declare-fun b_lambda!28481 () Bool)

(assert (=> (not b_lambda!28481) (not d!266227)))

(assert (=> d!266227 t!95831))

(declare-fun b_and!74957 () Bool)

(assert (= b_and!74955 (and (=> t!95831 result!69444) b_and!74957)))

(assert (=> d!266227 t!95840))

(declare-fun b_and!74959 () Bool)

(assert (= b_and!74949 (and (=> t!95840 result!69460) b_and!74959)))

(assert (=> d!266227 t!95829))

(declare-fun b_and!74961 () Bool)

(assert (= b_and!74951 (and (=> t!95829 result!69442) b_and!74961)))

(assert (=> d!266227 t!95836))

(declare-fun b_and!74963 () Bool)

(assert (= b_and!74953 (and (=> t!95836 result!69450) b_and!74963)))

(assert (=> d!266227 t!95827))

(declare-fun b_and!74965 () Bool)

(assert (= b_and!74947 (and (=> t!95827 result!69440) b_and!74965)))

(declare-fun m!1091993 () Bool)

(assert (=> d!266227 m!1091993))

(assert (=> d!266227 m!1091729))

(assert (=> b!852456 d!266227))

(declare-fun d!266229 () Bool)

(assert (=> d!266229 (= ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (Cons!9203 separatorToken!297 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297)))))

(assert (=> b!852456 d!266229))

(declare-fun e!561182 () Bool)

(declare-fun e!561178 () List!9217)

(declare-fun b!852585 () Bool)

(assert (=> b!852585 (= e!561182 (= (printList!476 thiss!20117 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 (t!95785 l!5107)) separatorToken!297) separatorToken!297)) e!561178))))

(declare-fun c!138325 () Bool)

(declare-fun lt!322944 () List!9219)

(assert (=> b!852585 (= c!138325 ((_ is Cons!9203) lt!322944))))

(assert (=> b!852585 (= lt!322944 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 (t!95785 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!852586 () Bool)

(declare-fun e!561179 () List!9219)

(assert (=> b!852586 (= e!561179 Nil!9203)))

(declare-fun b!852587 () Bool)

(declare-fun e!561181 () List!9217)

(declare-fun e!561180 () Bool)

(assert (=> b!852587 (= e!561180 (= (printList!476 thiss!20117 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 (t!95785 l!5107)) separatorToken!297) separatorToken!297) (h!14604 (t!95785 l!5107)))) e!561181))))

(declare-fun c!138324 () Bool)

(declare-fun lt!322942 () List!9219)

(assert (=> b!852587 (= c!138324 ((_ is Cons!9203) lt!322942))))

(assert (=> b!852587 (= lt!322942 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 (t!95785 l!5107)) separatorToken!297) separatorToken!297) (h!14604 (t!95785 l!5107))))))

(declare-fun lt!322940 () List!9219)

(declare-fun d!266231 () Bool)

(assert (=> d!266231 (= (printList!476 thiss!20117 lt!322940) (printWithSeparatorTokenList!34 thiss!20117 (t!95785 l!5107) separatorToken!297))))

(assert (=> d!266231 (= lt!322940 e!561179)))

(declare-fun c!138323 () Bool)

(assert (=> d!266231 (= c!138323 ((_ is Cons!9203) (t!95785 l!5107)))))

(declare-fun e!561183 () Bool)

(assert (=> d!266231 e!561183))

(declare-fun res!389537 () Bool)

(assert (=> d!266231 (=> (not res!389537) (not e!561183))))

(assert (=> d!266231 (= res!389537 (isSeparator!1726 (rule!3149 separatorToken!297)))))

(assert (=> d!266231 (= (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) lt!322940)))

(declare-fun b!852588 () Bool)

(assert (=> b!852588 (= e!561181 Nil!9201)))

(declare-fun b!852589 () Bool)

(assert (=> b!852589 (= e!561178 (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322944))) (printList!476 thiss!20117 (t!95785 lt!322944))))))

(declare-fun b!852590 () Bool)

(assert (=> b!852590 (= e!561183 e!561182)))

(declare-fun res!389536 () Bool)

(assert (=> b!852590 (=> res!389536 e!561182)))

(assert (=> b!852590 (= res!389536 (not ((_ is Cons!9203) (t!95785 l!5107))))))

(declare-fun b!852591 () Bool)

(assert (=> b!852591 (= e!561179 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 (t!95785 l!5107)) separatorToken!297) separatorToken!297) (h!14604 (t!95785 l!5107))))))

(declare-fun lt!322943 () List!9217)

(assert (=> b!852591 (= lt!322943 (list!3613 (charsOf!993 (h!14604 (t!95785 l!5107)))))))

(declare-fun lt!322947 () List!9217)

(assert (=> b!852591 (= lt!322947 (list!3613 (charsOf!993 separatorToken!297)))))

(declare-fun lt!322941 () List!9217)

(assert (=> b!852591 (= lt!322941 (printList!476 thiss!20117 (withSeparatorTokenList!58 thiss!20117 (t!95785 (t!95785 l!5107)) separatorToken!297)))))

(declare-fun lt!322946 () Unit!13701)

(assert (=> b!852591 (= lt!322946 (lemmaConcatAssociativity!751 lt!322943 lt!322947 lt!322941))))

(assert (=> b!852591 (= (++!2382 (++!2382 lt!322943 lt!322947) lt!322941) (++!2382 lt!322943 (++!2382 lt!322947 lt!322941)))))

(declare-fun lt!322945 () Unit!13701)

(assert (=> b!852591 (= lt!322945 lt!322946)))

(declare-fun b!852592 () Bool)

(assert (=> b!852592 (= e!561178 Nil!9201)))

(declare-fun b!852593 () Bool)

(assert (=> b!852593 (= e!561181 (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322942))) (printList!476 thiss!20117 (t!95785 lt!322942))))))

(declare-fun b!852594 () Bool)

(declare-fun res!389538 () Bool)

(assert (=> b!852594 (=> (not res!389538) (not e!561183))))

(assert (=> b!852594 (= res!389538 e!561180)))

(declare-fun res!389539 () Bool)

(assert (=> b!852594 (=> res!389539 e!561180)))

(assert (=> b!852594 (= res!389539 (not ((_ is Cons!9203) (t!95785 l!5107))))))

(assert (= (and d!266231 res!389537) b!852594))

(assert (= (and b!852594 (not res!389539)) b!852587))

(assert (= (and b!852587 c!138324) b!852593))

(assert (= (and b!852587 (not c!138324)) b!852588))

(assert (= (and b!852594 res!389538) b!852590))

(assert (= (and b!852590 (not res!389536)) b!852585))

(assert (= (and b!852585 c!138325) b!852589))

(assert (= (and b!852585 (not c!138325)) b!852592))

(assert (= (and d!266231 c!138323) b!852591))

(assert (= (and d!266231 (not c!138323)) b!852586))

(declare-fun m!1091995 () Bool)

(assert (=> b!852593 m!1091995))

(assert (=> b!852593 m!1091995))

(declare-fun m!1091997 () Bool)

(assert (=> b!852593 m!1091997))

(declare-fun m!1091999 () Bool)

(assert (=> b!852593 m!1091999))

(assert (=> b!852593 m!1091997))

(assert (=> b!852593 m!1091999))

(declare-fun m!1092001 () Bool)

(assert (=> b!852593 m!1092001))

(declare-fun m!1092003 () Bool)

(assert (=> d!266231 m!1092003))

(declare-fun m!1092005 () Bool)

(assert (=> d!266231 m!1092005))

(declare-fun m!1092007 () Bool)

(assert (=> b!852585 m!1092007))

(assert (=> b!852585 m!1092007))

(declare-fun m!1092009 () Bool)

(assert (=> b!852585 m!1092009))

(assert (=> b!852585 m!1092009))

(declare-fun m!1092011 () Bool)

(assert (=> b!852585 m!1092011))

(declare-fun m!1092013 () Bool)

(assert (=> b!852589 m!1092013))

(assert (=> b!852589 m!1092013))

(declare-fun m!1092015 () Bool)

(assert (=> b!852589 m!1092015))

(declare-fun m!1092017 () Bool)

(assert (=> b!852589 m!1092017))

(assert (=> b!852589 m!1092015))

(assert (=> b!852589 m!1092017))

(declare-fun m!1092019 () Bool)

(assert (=> b!852589 m!1092019))

(assert (=> b!852587 m!1092007))

(assert (=> b!852587 m!1092007))

(assert (=> b!852587 m!1092009))

(assert (=> b!852587 m!1092009))

(declare-fun m!1092021 () Bool)

(assert (=> b!852587 m!1092021))

(assert (=> b!852587 m!1092021))

(declare-fun m!1092023 () Bool)

(assert (=> b!852587 m!1092023))

(declare-fun m!1092025 () Bool)

(assert (=> b!852591 m!1092025))

(declare-fun m!1092027 () Bool)

(assert (=> b!852591 m!1092027))

(assert (=> b!852591 m!1092009))

(assert (=> b!852591 m!1092021))

(assert (=> b!852591 m!1092007))

(assert (=> b!852591 m!1092007))

(assert (=> b!852591 m!1092009))

(assert (=> b!852591 m!1091777))

(assert (=> b!852591 m!1091779))

(assert (=> b!852591 m!1091777))

(declare-fun m!1092029 () Bool)

(assert (=> b!852591 m!1092029))

(assert (=> b!852591 m!1092025))

(declare-fun m!1092031 () Bool)

(assert (=> b!852591 m!1092031))

(declare-fun m!1092033 () Bool)

(assert (=> b!852591 m!1092033))

(assert (=> b!852591 m!1092033))

(declare-fun m!1092035 () Bool)

(assert (=> b!852591 m!1092035))

(assert (=> b!852591 m!1092007))

(declare-fun m!1092037 () Bool)

(assert (=> b!852591 m!1092037))

(assert (=> b!852591 m!1092027))

(declare-fun m!1092039 () Bool)

(assert (=> b!852591 m!1092039))

(assert (=> b!852456 d!266231))

(declare-fun d!266233 () Bool)

(assert (=> d!266233 true))

(declare-fun order!5909 () Int)

(declare-fun lambda!25515 () Int)

(declare-fun dynLambda!4297 (Int Int) Int)

(assert (=> d!266233 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) (dynLambda!4297 order!5909 lambda!25515))))

(assert (=> d!266233 true))

(assert (=> d!266233 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297)))) (dynLambda!4297 order!5909 lambda!25515))))

(declare-fun Forall!413 (Int) Bool)

(assert (=> d!266233 (= (semiInverseModEq!672 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297)))) (Forall!413 lambda!25515))))

(declare-fun bs!231415 () Bool)

(assert (= bs!231415 d!266233))

(declare-fun m!1092041 () Bool)

(assert (=> bs!231415 m!1092041))

(assert (=> d!266123 d!266233))

(declare-fun d!266235 () Bool)

(declare-fun e!561186 () Bool)

(assert (=> d!266235 e!561186))

(declare-fun res!389542 () Bool)

(assert (=> d!266235 (=> (not res!389542) (not e!561186))))

(declare-fun lt!322950 () BalanceConc!6112)

(assert (=> d!266235 (= res!389542 (= (list!3614 lt!322950) lt!322790))))

(declare-fun fromList!315 (List!9219) Conc!3049)

(assert (=> d!266235 (= lt!322950 (BalanceConc!6113 (fromList!315 lt!322790)))))

(assert (=> d!266235 (= (fromListB!675 lt!322790) lt!322950)))

(declare-fun b!852601 () Bool)

(declare-fun isBalanced!836 (Conc!3049) Bool)

(assert (=> b!852601 (= e!561186 (isBalanced!836 (fromList!315 lt!322790)))))

(assert (= (and d!266235 res!389542) b!852601))

(declare-fun m!1092043 () Bool)

(assert (=> d!266235 m!1092043))

(declare-fun m!1092045 () Bool)

(assert (=> d!266235 m!1092045))

(assert (=> b!852601 m!1092045))

(assert (=> b!852601 m!1092045))

(declare-fun m!1092047 () Bool)

(assert (=> b!852601 m!1092047))

(assert (=> d!266105 d!266235))

(declare-fun d!266237 () Bool)

(declare-fun c!138327 () Bool)

(assert (=> d!266237 (= c!138327 ((_ is Cons!9203) lt!322903))))

(declare-fun e!561187 () List!9217)

(assert (=> d!266237 (= (printList!476 thiss!20117 lt!322903) e!561187)))

(declare-fun b!852602 () Bool)

(assert (=> b!852602 (= e!561187 (++!2382 (list!3613 (charsOf!993 (h!14604 lt!322903))) (printList!476 thiss!20117 (t!95785 lt!322903))))))

(declare-fun b!852603 () Bool)

(assert (=> b!852603 (= e!561187 Nil!9201)))

(assert (= (and d!266237 c!138327) b!852602))

(assert (= (and d!266237 (not c!138327)) b!852603))

(declare-fun m!1092049 () Bool)

(assert (=> b!852602 m!1092049))

(assert (=> b!852602 m!1092049))

(declare-fun m!1092051 () Bool)

(assert (=> b!852602 m!1092051))

(declare-fun m!1092053 () Bool)

(assert (=> b!852602 m!1092053))

(assert (=> b!852602 m!1092051))

(assert (=> b!852602 m!1092053))

(declare-fun m!1092055 () Bool)

(assert (=> b!852602 m!1092055))

(assert (=> d!266149 d!266237))

(declare-fun d!266239 () Bool)

(declare-fun c!138330 () Bool)

(assert (=> d!266239 (= c!138330 ((_ is Cons!9203) l!5107))))

(declare-fun e!561190 () List!9217)

(assert (=> d!266239 (= (printWithSeparatorTokenList!34 thiss!20117 l!5107 separatorToken!297) e!561190)))

(declare-fun b!852608 () Bool)

(assert (=> b!852608 (= e!561190 (++!2382 (++!2382 (list!3613 (charsOf!993 (h!14604 l!5107))) (list!3613 (charsOf!993 separatorToken!297))) (printWithSeparatorTokenList!34 thiss!20117 (t!95785 l!5107) separatorToken!297)))))

(declare-fun b!852609 () Bool)

(assert (=> b!852609 (= e!561190 Nil!9201)))

(assert (= (and d!266239 c!138330) b!852608))

(assert (= (and d!266239 (not c!138330)) b!852609))

(assert (=> b!852608 m!1091775))

(assert (=> b!852608 m!1091791))

(assert (=> b!852608 m!1091777))

(assert (=> b!852608 m!1091779))

(assert (=> b!852608 m!1091791))

(assert (=> b!852608 m!1091779))

(declare-fun m!1092057 () Bool)

(assert (=> b!852608 m!1092057))

(assert (=> b!852608 m!1092005))

(assert (=> b!852608 m!1091775))

(assert (=> b!852608 m!1091777))

(assert (=> b!852608 m!1092057))

(assert (=> b!852608 m!1092005))

(declare-fun m!1092059 () Bool)

(assert (=> b!852608 m!1092059))

(assert (=> d!266149 d!266239))

(declare-fun d!266241 () Bool)

(declare-fun res!389543 () Bool)

(declare-fun e!561191 () Bool)

(assert (=> d!266241 (=> res!389543 e!561191)))

(assert (=> d!266241 (= res!389543 (not ((_ is Cons!9202) (t!95784 rules!2621))))))

(assert (=> d!266241 (= (sepAndNonSepRulesDisjointChars!526 rules!2621 (t!95784 rules!2621)) e!561191)))

(declare-fun b!852610 () Bool)

(declare-fun e!561192 () Bool)

(assert (=> b!852610 (= e!561191 e!561192)))

(declare-fun res!389544 () Bool)

(assert (=> b!852610 (=> (not res!389544) (not e!561192))))

(assert (=> b!852610 (= res!389544 (ruleDisjointCharsFromAllFromOtherType!239 (h!14603 (t!95784 rules!2621)) rules!2621))))

(declare-fun b!852611 () Bool)

(assert (=> b!852611 (= e!561192 (sepAndNonSepRulesDisjointChars!526 rules!2621 (t!95784 (t!95784 rules!2621))))))

(assert (= (and d!266241 (not res!389543)) b!852610))

(assert (= (and b!852610 res!389544) b!852611))

(declare-fun m!1092061 () Bool)

(assert (=> b!852610 m!1092061))

(declare-fun m!1092063 () Bool)

(assert (=> b!852611 m!1092063))

(assert (=> b!852466 d!266241))

(declare-fun d!266243 () Bool)

(declare-fun res!389546 () Bool)

(declare-fun e!561194 () Bool)

(assert (=> d!266243 (=> res!389546 e!561194)))

(assert (=> d!266243 (= res!389546 (or (not ((_ is Cons!9203) (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))) (not ((_ is Cons!9203) (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))))))))

(assert (=> d!266243 (= (tokensListTwoByTwoPredicateSeparableList!48 thiss!20117 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))) rules!2621) e!561194)))

(declare-fun b!852612 () Bool)

(declare-fun e!561193 () Bool)

(assert (=> b!852612 (= e!561194 e!561193)))

(declare-fun res!389545 () Bool)

(assert (=> b!852612 (=> (not res!389545) (not e!561193))))

(assert (=> b!852612 (= res!389545 (separableTokensPredicate!64 thiss!20117 (h!14604 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790)))) (h!14604 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))) rules!2621))))

(declare-fun lt!322952 () Unit!13701)

(declare-fun Unit!13709 () Unit!13701)

(assert (=> b!852612 (= lt!322952 Unit!13709)))

(assert (=> b!852612 (> (size!7671 (charsOf!993 (h!14604 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))))) 0)))

(declare-fun lt!322954 () Unit!13701)

(declare-fun Unit!13710 () Unit!13701)

(assert (=> b!852612 (= lt!322954 Unit!13710)))

(assert (=> b!852612 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))))))

(declare-fun lt!322956 () Unit!13701)

(declare-fun Unit!13711 () Unit!13701)

(assert (=> b!852612 (= lt!322956 Unit!13711)))

(assert (=> b!852612 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790)))))))

(declare-fun lt!322955 () Unit!13701)

(declare-fun lt!322957 () Unit!13701)

(assert (=> b!852612 (= lt!322955 lt!322957)))

(assert (=> b!852612 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))))))

(assert (=> b!852612 (= lt!322957 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 thiss!20117 rules!2621 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))) (h!14604 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790)))))))))

(declare-fun lt!322953 () Unit!13701)

(declare-fun lt!322951 () Unit!13701)

(assert (=> b!852612 (= lt!322953 lt!322951)))

(assert (=> b!852612 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790)))))))

(assert (=> b!852612 (= lt!322951 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 thiss!20117 rules!2621 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))) (h!14604 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))))))

(declare-fun b!852613 () Bool)

(assert (=> b!852613 (= e!561193 (tokensListTwoByTwoPredicateSeparableList!48 thiss!20117 (Cons!9203 (h!14604 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790))))) (t!95785 (t!95785 (Cons!9203 (h!14604 (t!95785 lt!322790)) (t!95785 (t!95785 lt!322790)))))) rules!2621))))

(assert (= (and d!266243 (not res!389546)) b!852612))

(assert (= (and b!852612 res!389545) b!852613))

(declare-fun m!1092065 () Bool)

(assert (=> b!852612 m!1092065))

(declare-fun m!1092067 () Bool)

(assert (=> b!852612 m!1092067))

(declare-fun m!1092069 () Bool)

(assert (=> b!852612 m!1092069))

(declare-fun m!1092071 () Bool)

(assert (=> b!852612 m!1092071))

(declare-fun m!1092073 () Bool)

(assert (=> b!852612 m!1092073))

(declare-fun m!1092075 () Bool)

(assert (=> b!852612 m!1092075))

(declare-fun m!1092077 () Bool)

(assert (=> b!852612 m!1092077))

(assert (=> b!852612 m!1092065))

(declare-fun m!1092079 () Bool)

(assert (=> b!852613 m!1092079))

(assert (=> b!852329 d!266243))

(declare-fun d!266245 () Bool)

(declare-fun res!389551 () Bool)

(declare-fun e!561199 () Bool)

(assert (=> d!266245 (=> res!389551 e!561199)))

(assert (=> d!266245 (= res!389551 ((_ is Nil!9202) rules!2621))))

(assert (=> d!266245 (= (noDuplicateTag!603 thiss!20117 rules!2621 Nil!9205) e!561199)))

(declare-fun b!852618 () Bool)

(declare-fun e!561200 () Bool)

(assert (=> b!852618 (= e!561199 e!561200)))

(declare-fun res!389552 () Bool)

(assert (=> b!852618 (=> (not res!389552) (not e!561200))))

(declare-fun contains!1699 (List!9221 String!10858) Bool)

(assert (=> b!852618 (= res!389552 (not (contains!1699 Nil!9205 (tag!1988 (h!14603 rules!2621)))))))

(declare-fun b!852619 () Bool)

(assert (=> b!852619 (= e!561200 (noDuplicateTag!603 thiss!20117 (t!95784 rules!2621) (Cons!9205 (tag!1988 (h!14603 rules!2621)) Nil!9205)))))

(assert (= (and d!266245 (not res!389551)) b!852618))

(assert (= (and b!852618 res!389552) b!852619))

(declare-fun m!1092081 () Bool)

(assert (=> b!852618 m!1092081))

(declare-fun m!1092083 () Bool)

(assert (=> b!852619 m!1092083))

(assert (=> b!852301 d!266245))

(declare-fun bs!231416 () Bool)

(declare-fun d!266247 () Bool)

(assert (= bs!231416 (and d!266247 b!852145)))

(declare-fun lambda!25516 () Int)

(assert (=> bs!231416 (not (= lambda!25516 lambda!25494))))

(declare-fun bs!231417 () Bool)

(assert (= bs!231417 (and d!266247 d!266087)))

(assert (=> bs!231417 (= lambda!25516 lambda!25507)))

(declare-fun bs!231418 () Bool)

(assert (= bs!231418 (and d!266247 d!266125)))

(assert (=> bs!231418 (= lambda!25516 lambda!25511)))

(declare-fun bs!231419 () Bool)

(assert (= bs!231419 (and d!266247 d!266147)))

(assert (=> bs!231419 (= lambda!25516 lambda!25512)))

(declare-fun b!852624 () Bool)

(declare-fun e!561205 () Bool)

(assert (=> b!852624 (= e!561205 true)))

(declare-fun b!852623 () Bool)

(declare-fun e!561204 () Bool)

(assert (=> b!852623 (= e!561204 e!561205)))

(declare-fun b!852622 () Bool)

(declare-fun e!561203 () Bool)

(assert (=> b!852622 (= e!561203 e!561204)))

(assert (=> d!266247 e!561203))

(assert (= b!852623 b!852624))

(assert (= b!852622 b!852623))

(assert (= (and d!266247 ((_ is Cons!9202) rules!2621)) b!852622))

(assert (=> b!852624 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25516))))

(assert (=> b!852624 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25516))))

(assert (=> d!266247 true))

(declare-fun lt!322958 () Bool)

(assert (=> d!266247 (= lt!322958 (forall!2173 (list!3614 (seqFromList!1528 lt!322790)) lambda!25516))))

(declare-fun e!561202 () Bool)

(assert (=> d!266247 (= lt!322958 e!561202)))

(declare-fun res!389553 () Bool)

(assert (=> d!266247 (=> res!389553 e!561202)))

(assert (=> d!266247 (= res!389553 (not ((_ is Cons!9203) (list!3614 (seqFromList!1528 lt!322790)))))))

(assert (=> d!266247 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266247 (= (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (list!3614 (seqFromList!1528 lt!322790))) lt!322958)))

(declare-fun b!852620 () Bool)

(declare-fun e!561201 () Bool)

(assert (=> b!852620 (= e!561202 e!561201)))

(declare-fun res!389554 () Bool)

(assert (=> b!852620 (=> (not res!389554) (not e!561201))))

(assert (=> b!852620 (= res!389554 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (list!3614 (seqFromList!1528 lt!322790)))))))

(declare-fun b!852621 () Bool)

(assert (=> b!852621 (= e!561201 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 (list!3614 (seqFromList!1528 lt!322790)))))))

(assert (= (and d!266247 (not res!389553)) b!852620))

(assert (= (and b!852620 res!389554) b!852621))

(assert (=> d!266247 m!1091607))

(declare-fun m!1092085 () Bool)

(assert (=> d!266247 m!1092085))

(assert (=> d!266247 m!1091419))

(declare-fun m!1092087 () Bool)

(assert (=> b!852620 m!1092087))

(declare-fun m!1092089 () Bool)

(assert (=> b!852621 m!1092089))

(assert (=> b!852285 d!266247))

(assert (=> b!852285 d!266201))

(declare-fun d!266249 () Bool)

(declare-fun lt!322959 () Bool)

(declare-fun e!561206 () Bool)

(assert (=> d!266249 (= lt!322959 e!561206)))

(declare-fun res!389557 () Bool)

(assert (=> d!266249 (=> (not res!389557) (not e!561206))))

(assert (=> d!266249 (= res!389557 (= (list!3614 (_1!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 lt!322790)))))) (list!3614 (singletonSeq!541 (h!14604 lt!322790)))))))

(declare-fun e!561207 () Bool)

(assert (=> d!266249 (= lt!322959 e!561207)))

(declare-fun res!389555 () Bool)

(assert (=> d!266249 (=> (not res!389555) (not e!561207))))

(declare-fun lt!322960 () tuple2!10388)

(assert (=> d!266249 (= res!389555 (= (size!7670 (_1!6020 lt!322960)) 1))))

(assert (=> d!266249 (= lt!322960 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 lt!322790)))))))

(assert (=> d!266249 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266249 (= (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 lt!322790)) lt!322959)))

(declare-fun b!852625 () Bool)

(declare-fun res!389556 () Bool)

(assert (=> b!852625 (=> (not res!389556) (not e!561207))))

(assert (=> b!852625 (= res!389556 (= (apply!1895 (_1!6020 lt!322960) 0) (h!14604 lt!322790)))))

(declare-fun b!852626 () Bool)

(assert (=> b!852626 (= e!561207 (isEmpty!5443 (_2!6020 lt!322960)))))

(declare-fun b!852627 () Bool)

(assert (=> b!852627 (= e!561206 (isEmpty!5443 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 lt!322790)))))))))

(assert (= (and d!266249 res!389555) b!852625))

(assert (= (and b!852625 res!389556) b!852626))

(assert (= (and d!266249 res!389557) b!852627))

(declare-fun m!1092091 () Bool)

(assert (=> d!266249 m!1092091))

(assert (=> d!266249 m!1092091))

(declare-fun m!1092093 () Bool)

(assert (=> d!266249 m!1092093))

(declare-fun m!1092095 () Bool)

(assert (=> d!266249 m!1092095))

(declare-fun m!1092097 () Bool)

(assert (=> d!266249 m!1092097))

(declare-fun m!1092099 () Bool)

(assert (=> d!266249 m!1092099))

(assert (=> d!266249 m!1091419))

(assert (=> d!266249 m!1092091))

(assert (=> d!266249 m!1092097))

(declare-fun m!1092101 () Bool)

(assert (=> d!266249 m!1092101))

(declare-fun m!1092103 () Bool)

(assert (=> b!852625 m!1092103))

(declare-fun m!1092105 () Bool)

(assert (=> b!852626 m!1092105))

(assert (=> b!852627 m!1092091))

(assert (=> b!852627 m!1092091))

(assert (=> b!852627 m!1092097))

(assert (=> b!852627 m!1092097))

(assert (=> b!852627 m!1092099))

(declare-fun m!1092107 () Bool)

(assert (=> b!852627 m!1092107))

(assert (=> b!852425 d!266249))

(declare-fun bs!231420 () Bool)

(declare-fun d!266251 () Bool)

(assert (= bs!231420 (and d!266251 d!266087)))

(declare-fun lambda!25517 () Int)

(assert (=> bs!231420 (= lambda!25517 lambda!25507)))

(declare-fun bs!231421 () Bool)

(assert (= bs!231421 (and d!266251 b!852145)))

(assert (=> bs!231421 (not (= lambda!25517 lambda!25494))))

(declare-fun bs!231422 () Bool)

(assert (= bs!231422 (and d!266251 d!266147)))

(assert (=> bs!231422 (= lambda!25517 lambda!25512)))

(declare-fun bs!231423 () Bool)

(assert (= bs!231423 (and d!266251 d!266247)))

(assert (=> bs!231423 (= lambda!25517 lambda!25516)))

(declare-fun bs!231424 () Bool)

(assert (= bs!231424 (and d!266251 d!266125)))

(assert (=> bs!231424 (= lambda!25517 lambda!25511)))

(declare-fun b!852632 () Bool)

(declare-fun e!561212 () Bool)

(assert (=> b!852632 (= e!561212 true)))

(declare-fun b!852631 () Bool)

(declare-fun e!561211 () Bool)

(assert (=> b!852631 (= e!561211 e!561212)))

(declare-fun b!852630 () Bool)

(declare-fun e!561210 () Bool)

(assert (=> b!852630 (= e!561210 e!561211)))

(assert (=> d!266251 e!561210))

(assert (= b!852631 b!852632))

(assert (= b!852630 b!852631))

(assert (= (and d!266251 ((_ is Cons!9202) rules!2621)) b!852630))

(assert (=> b!852632 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25517))))

(assert (=> b!852632 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25517))))

(assert (=> d!266251 true))

(declare-fun lt!322961 () Bool)

(assert (=> d!266251 (= lt!322961 (forall!2173 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297) lambda!25517))))

(declare-fun e!561209 () Bool)

(assert (=> d!266251 (= lt!322961 e!561209)))

(declare-fun res!389558 () Bool)

(assert (=> d!266251 (=> res!389558 e!561209)))

(assert (=> d!266251 (= res!389558 (not ((_ is Cons!9203) (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!266251 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266251 (= (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297)) lt!322961)))

(declare-fun b!852628 () Bool)

(declare-fun e!561208 () Bool)

(assert (=> b!852628 (= e!561209 e!561208)))

(declare-fun res!389559 () Bool)

(assert (=> b!852628 (=> (not res!389559) (not e!561208))))

(assert (=> b!852628 (= res!389559 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!852629 () Bool)

(assert (=> b!852629 (= e!561208 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!266251 (not res!389558)) b!852628))

(assert (= (and b!852628 res!389559) b!852629))

(assert (=> d!266251 m!1091451))

(declare-fun m!1092109 () Bool)

(assert (=> d!266251 m!1092109))

(assert (=> d!266251 m!1091419))

(declare-fun m!1092111 () Bool)

(assert (=> b!852628 m!1092111))

(declare-fun m!1092113 () Bool)

(assert (=> b!852629 m!1092113))

(assert (=> d!266151 d!266251))

(assert (=> d!266151 d!266149))

(declare-fun d!266253 () Bool)

(assert (=> d!266253 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (withSeparatorTokenList!58 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!266253 true))

(declare-fun _$32!333 () Unit!13701)

(assert (=> d!266253 (= (choose!5030 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!333)))

(declare-fun bs!231442 () Bool)

(assert (= bs!231442 d!266253))

(assert (=> bs!231442 m!1091451))

(assert (=> bs!231442 m!1091451))

(assert (=> bs!231442 m!1091793))

(assert (=> d!266151 d!266253))

(assert (=> d!266151 d!266079))

(declare-fun d!266315 () Bool)

(declare-fun lt!323001 () BalanceConc!6110)

(assert (=> d!266315 (= (list!3613 lt!323001) (printList!476 thiss!20117 (list!3614 (singletonSeq!541 separatorToken!297))))))

(declare-fun printTailRec!472 (LexerInterface!1528 BalanceConc!6112 Int BalanceConc!6110) BalanceConc!6110)

(assert (=> d!266315 (= lt!323001 (printTailRec!472 thiss!20117 (singletonSeq!541 separatorToken!297) 0 (BalanceConc!6111 Empty!3048)))))

(assert (=> d!266315 (= (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)) lt!323001)))

(declare-fun bs!231443 () Bool)

(assert (= bs!231443 d!266315))

(declare-fun m!1092315 () Bool)

(assert (=> bs!231443 m!1092315))

(assert (=> bs!231443 m!1091501))

(assert (=> bs!231443 m!1091503))

(assert (=> bs!231443 m!1091503))

(declare-fun m!1092317 () Bool)

(assert (=> bs!231443 m!1092317))

(assert (=> bs!231443 m!1091501))

(declare-fun m!1092319 () Bool)

(assert (=> bs!231443 m!1092319))

(assert (=> d!266083 d!266315))

(declare-fun d!266317 () Bool)

(declare-fun lt!323004 () Int)

(declare-fun size!7673 (List!9219) Int)

(assert (=> d!266317 (= lt!323004 (size!7673 (list!3614 (_1!6020 lt!322805))))))

(declare-fun size!7674 (Conc!3049) Int)

(assert (=> d!266317 (= lt!323004 (size!7674 (c!138272 (_1!6020 lt!322805))))))

(assert (=> d!266317 (= (size!7670 (_1!6020 lt!322805)) lt!323004)))

(declare-fun bs!231444 () Bool)

(assert (= bs!231444 d!266317))

(declare-fun m!1092321 () Bool)

(assert (=> bs!231444 m!1092321))

(assert (=> bs!231444 m!1092321))

(declare-fun m!1092323 () Bool)

(assert (=> bs!231444 m!1092323))

(declare-fun m!1092325 () Bool)

(assert (=> bs!231444 m!1092325))

(assert (=> d!266083 d!266317))

(declare-fun e!561291 () Bool)

(declare-fun lt!323019 () tuple2!10388)

(declare-fun b!852752 () Bool)

(assert (=> b!852752 (= e!561291 (= (_2!6020 lt!323019) (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))))))

(declare-fun d!266319 () Bool)

(declare-fun e!561290 () Bool)

(assert (=> d!266319 e!561290))

(declare-fun res!389620 () Bool)

(assert (=> d!266319 (=> (not res!389620) (not e!561290))))

(assert (=> d!266319 (= res!389620 e!561291)))

(declare-fun c!138354 () Bool)

(assert (=> d!266319 (= c!138354 (> (size!7670 (_1!6020 lt!323019)) 0))))

(declare-fun lexTailRecV2!297 (LexerInterface!1528 List!9218 BalanceConc!6110 BalanceConc!6110 BalanceConc!6110 BalanceConc!6112) tuple2!10388)

(assert (=> d!266319 (= lt!323019 (lexTailRecV2!297 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)) (BalanceConc!6111 Empty!3048) (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)) (BalanceConc!6113 Empty!3049)))))

(assert (=> d!266319 (= (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))) lt!323019)))

(declare-fun b!852753 () Bool)

(declare-fun e!561289 () Bool)

(declare-fun isEmpty!5447 (BalanceConc!6112) Bool)

(assert (=> b!852753 (= e!561289 (not (isEmpty!5447 (_1!6020 lt!323019))))))

(declare-fun b!852754 () Bool)

(declare-datatypes ((tuple2!10392 0))(
  ( (tuple2!10393 (_1!6022 List!9219) (_2!6022 List!9217)) )
))
(declare-fun lexList!390 (LexerInterface!1528 List!9218 List!9217) tuple2!10392)

(assert (=> b!852754 (= e!561290 (= (list!3613 (_2!6020 lt!323019)) (_2!6022 (lexList!390 thiss!20117 rules!2621 (list!3613 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)))))))))

(declare-fun b!852755 () Bool)

(assert (=> b!852755 (= e!561291 e!561289)))

(declare-fun res!389621 () Bool)

(assert (=> b!852755 (= res!389621 (< (size!7671 (_2!6020 lt!323019)) (size!7671 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)))))))

(assert (=> b!852755 (=> (not res!389621) (not e!561289))))

(declare-fun b!852756 () Bool)

(declare-fun res!389622 () Bool)

(assert (=> b!852756 (=> (not res!389622) (not e!561290))))

(assert (=> b!852756 (= res!389622 (= (list!3614 (_1!6020 lt!323019)) (_1!6022 (lexList!390 thiss!20117 rules!2621 (list!3613 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)))))))))

(assert (= (and d!266319 c!138354) b!852755))

(assert (= (and d!266319 (not c!138354)) b!852752))

(assert (= (and b!852755 res!389621) b!852753))

(assert (= (and d!266319 res!389620) b!852756))

(assert (= (and b!852756 res!389622) b!852754))

(declare-fun m!1092427 () Bool)

(assert (=> b!852753 m!1092427))

(declare-fun m!1092431 () Bool)

(assert (=> d!266319 m!1092431))

(assert (=> d!266319 m!1091507))

(assert (=> d!266319 m!1091507))

(declare-fun m!1092433 () Bool)

(assert (=> d!266319 m!1092433))

(declare-fun m!1092435 () Bool)

(assert (=> b!852756 m!1092435))

(assert (=> b!852756 m!1091507))

(declare-fun m!1092437 () Bool)

(assert (=> b!852756 m!1092437))

(assert (=> b!852756 m!1092437))

(declare-fun m!1092439 () Bool)

(assert (=> b!852756 m!1092439))

(declare-fun m!1092441 () Bool)

(assert (=> b!852754 m!1092441))

(assert (=> b!852754 m!1091507))

(assert (=> b!852754 m!1092437))

(assert (=> b!852754 m!1092437))

(assert (=> b!852754 m!1092439))

(declare-fun m!1092443 () Bool)

(assert (=> b!852755 m!1092443))

(assert (=> b!852755 m!1091507))

(declare-fun m!1092445 () Bool)

(assert (=> b!852755 m!1092445))

(assert (=> d!266083 d!266319))

(declare-fun d!266351 () Bool)

(assert (=> d!266351 (= (list!3614 (_1!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))))) (list!3617 (c!138272 (_1!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)))))))))

(declare-fun bs!231454 () Bool)

(assert (= bs!231454 d!266351))

(declare-fun m!1092447 () Bool)

(assert (=> bs!231454 m!1092447))

(assert (=> d!266083 d!266351))

(assert (=> d!266083 d!266079))

(declare-fun d!266353 () Bool)

(assert (=> d!266353 (= (list!3614 (singletonSeq!541 separatorToken!297)) (list!3617 (c!138272 (singletonSeq!541 separatorToken!297))))))

(declare-fun bs!231455 () Bool)

(assert (= bs!231455 d!266353))

(declare-fun m!1092449 () Bool)

(assert (=> bs!231455 m!1092449))

(assert (=> d!266083 d!266353))

(declare-fun d!266355 () Bool)

(declare-fun e!561297 () Bool)

(assert (=> d!266355 e!561297))

(declare-fun res!389629 () Bool)

(assert (=> d!266355 (=> (not res!389629) (not e!561297))))

(declare-fun lt!323024 () BalanceConc!6112)

(assert (=> d!266355 (= res!389629 (= (list!3614 lt!323024) (Cons!9203 separatorToken!297 Nil!9203)))))

(declare-fun singleton!262 (Token!3118) BalanceConc!6112)

(assert (=> d!266355 (= lt!323024 (singleton!262 separatorToken!297))))

(assert (=> d!266355 (= (singletonSeq!541 separatorToken!297) lt!323024)))

(declare-fun b!852763 () Bool)

(assert (=> b!852763 (= e!561297 (isBalanced!836 (c!138272 lt!323024)))))

(assert (= (and d!266355 res!389629) b!852763))

(declare-fun m!1092459 () Bool)

(assert (=> d!266355 m!1092459))

(declare-fun m!1092461 () Bool)

(assert (=> d!266355 m!1092461))

(declare-fun m!1092465 () Bool)

(assert (=> b!852763 m!1092465))

(assert (=> d!266083 d!266355))

(declare-fun d!266365 () Bool)

(declare-fun res!389630 () Bool)

(declare-fun e!561298 () Bool)

(assert (=> d!266365 (=> res!389630 e!561298)))

(assert (=> d!266365 (= res!389630 ((_ is Nil!9203) (t!95785 l!5107)))))

(assert (=> d!266365 (= (forall!2173 (t!95785 l!5107) lambda!25494) e!561298)))

(declare-fun b!852764 () Bool)

(declare-fun e!561299 () Bool)

(assert (=> b!852764 (= e!561298 e!561299)))

(declare-fun res!389631 () Bool)

(assert (=> b!852764 (=> (not res!389631) (not e!561299))))

(assert (=> b!852764 (= res!389631 (dynLambda!4295 lambda!25494 (h!14604 (t!95785 l!5107))))))

(declare-fun b!852765 () Bool)

(assert (=> b!852765 (= e!561299 (forall!2173 (t!95785 (t!95785 l!5107)) lambda!25494))))

(assert (= (and d!266365 (not res!389630)) b!852764))

(assert (= (and b!852764 res!389631) b!852765))

(declare-fun b_lambda!28493 () Bool)

(assert (=> (not b_lambda!28493) (not b!852764)))

(declare-fun m!1092483 () Bool)

(assert (=> b!852764 m!1092483))

(declare-fun m!1092485 () Bool)

(assert (=> b!852765 m!1092485))

(assert (=> b!852472 d!266365))

(declare-fun d!266369 () Bool)

(declare-fun lt!323027 () Int)

(assert (=> d!266369 (>= lt!323027 0)))

(declare-fun e!561302 () Int)

(assert (=> d!266369 (= lt!323027 e!561302)))

(declare-fun c!138357 () Bool)

(assert (=> d!266369 (= c!138357 ((_ is Nil!9201) (originalCharacters!2282 (h!14604 l!5107))))))

(assert (=> d!266369 (= (size!7669 (originalCharacters!2282 (h!14604 l!5107))) lt!323027)))

(declare-fun b!852770 () Bool)

(assert (=> b!852770 (= e!561302 0)))

(declare-fun b!852771 () Bool)

(assert (=> b!852771 (= e!561302 (+ 1 (size!7669 (t!95783 (originalCharacters!2282 (h!14604 l!5107))))))))

(assert (= (and d!266369 c!138357) b!852770))

(assert (= (and d!266369 (not c!138357)) b!852771))

(declare-fun m!1092491 () Bool)

(assert (=> b!852771 m!1092491))

(assert (=> b!852185 d!266369))

(declare-fun bs!231462 () Bool)

(declare-fun d!266375 () Bool)

(assert (= bs!231462 (and d!266375 d!266233)))

(declare-fun lambda!25525 () Int)

(assert (=> bs!231462 (= (and (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) (= (toValue!2767 (transformation!1726 (h!14603 rules!2621))) (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297))))) (= lambda!25525 lambda!25515))))

(assert (=> d!266375 true))

(assert (=> d!266375 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4297 order!5909 lambda!25525))))

(assert (=> d!266375 true))

(assert (=> d!266375 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4297 order!5909 lambda!25525))))

(assert (=> d!266375 (= (semiInverseModEq!672 (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (Forall!413 lambda!25525))))

(declare-fun bs!231463 () Bool)

(assert (= bs!231463 d!266375))

(declare-fun m!1092493 () Bool)

(assert (=> bs!231463 m!1092493))

(assert (=> d!266145 d!266375))

(declare-fun d!266377 () Bool)

(assert (=> d!266377 true))

(declare-fun order!5915 () Int)

(declare-fun lambda!25531 () Int)

(declare-fun dynLambda!4299 (Int Int) Int)

(assert (=> d!266377 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (dynLambda!4299 order!5915 lambda!25531))))

(declare-fun Forall2!323 (Int) Bool)

(assert (=> d!266377 (= (equivClasses!639 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (Forall2!323 lambda!25531))))

(declare-fun bs!231465 () Bool)

(assert (= bs!231465 d!266377))

(declare-fun m!1092497 () Bool)

(assert (=> bs!231465 m!1092497))

(assert (=> b!852460 d!266377))

(declare-fun d!266381 () Bool)

(declare-fun c!138359 () Bool)

(assert (=> d!266381 (= c!138359 ((_ is Cons!9203) ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107))))))

(declare-fun e!561307 () List!9217)

(assert (=> d!266381 (= (printList!476 thiss!20117 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107))) e!561307)))

(declare-fun b!852780 () Bool)

(assert (=> b!852780 (= e!561307 (++!2382 (list!3613 (charsOf!993 (h!14604 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107))))) (printList!476 thiss!20117 (t!95785 ($colon$colon!89 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297) (h!14604 l!5107))))))))

(declare-fun b!852781 () Bool)

(assert (=> b!852781 (= e!561307 Nil!9201)))

(assert (= (and d!266381 c!138359) b!852780))

(assert (= (and d!266381 (not c!138359)) b!852781))

(declare-fun m!1092499 () Bool)

(assert (=> b!852780 m!1092499))

(assert (=> b!852780 m!1092499))

(declare-fun m!1092501 () Bool)

(assert (=> b!852780 m!1092501))

(declare-fun m!1092503 () Bool)

(assert (=> b!852780 m!1092503))

(assert (=> b!852780 m!1092501))

(assert (=> b!852780 m!1092503))

(declare-fun m!1092505 () Bool)

(assert (=> b!852780 m!1092505))

(assert (=> b!852452 d!266381))

(assert (=> b!852452 d!266219))

(assert (=> b!852452 d!266229))

(assert (=> b!852452 d!266231))

(declare-fun d!266383 () Bool)

(declare-fun lt!323030 () Bool)

(declare-fun e!561310 () Bool)

(assert (=> d!266383 (= lt!323030 e!561310)))

(declare-fun res!389640 () Bool)

(assert (=> d!266383 (=> (not res!389640) (not e!561310))))

(assert (=> d!266383 (= res!389640 (= (list!3614 (_1!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 l!5107)))))) (list!3614 (singletonSeq!541 (h!14604 l!5107)))))))

(declare-fun e!561311 () Bool)

(assert (=> d!266383 (= lt!323030 e!561311)))

(declare-fun res!389638 () Bool)

(assert (=> d!266383 (=> (not res!389638) (not e!561311))))

(declare-fun lt!323031 () tuple2!10388)

(assert (=> d!266383 (= res!389638 (= (size!7670 (_1!6020 lt!323031)) 1))))

(assert (=> d!266383 (= lt!323031 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 l!5107)))))))

(assert (=> d!266383 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266383 (= (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 l!5107)) lt!323030)))

(declare-fun b!852784 () Bool)

(declare-fun res!389639 () Bool)

(assert (=> b!852784 (=> (not res!389639) (not e!561311))))

(assert (=> b!852784 (= res!389639 (= (apply!1895 (_1!6020 lt!323031) 0) (h!14604 l!5107)))))

(declare-fun b!852785 () Bool)

(assert (=> b!852785 (= e!561311 (isEmpty!5443 (_2!6020 lt!323031)))))

(declare-fun b!852786 () Bool)

(assert (=> b!852786 (= e!561310 (isEmpty!5443 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 l!5107)))))))))

(assert (= (and d!266383 res!389638) b!852784))

(assert (= (and b!852784 res!389639) b!852785))

(assert (= (and d!266383 res!389640) b!852786))

(declare-fun m!1092513 () Bool)

(assert (=> d!266383 m!1092513))

(assert (=> d!266383 m!1092513))

(declare-fun m!1092515 () Bool)

(assert (=> d!266383 m!1092515))

(declare-fun m!1092517 () Bool)

(assert (=> d!266383 m!1092517))

(declare-fun m!1092519 () Bool)

(assert (=> d!266383 m!1092519))

(declare-fun m!1092521 () Bool)

(assert (=> d!266383 m!1092521))

(assert (=> d!266383 m!1091419))

(assert (=> d!266383 m!1092513))

(assert (=> d!266383 m!1092519))

(declare-fun m!1092523 () Bool)

(assert (=> d!266383 m!1092523))

(declare-fun m!1092525 () Bool)

(assert (=> b!852784 m!1092525))

(declare-fun m!1092527 () Bool)

(assert (=> b!852785 m!1092527))

(assert (=> b!852786 m!1092513))

(assert (=> b!852786 m!1092513))

(assert (=> b!852786 m!1092519))

(assert (=> b!852786 m!1092519))

(assert (=> b!852786 m!1092521))

(declare-fun m!1092531 () Bool)

(assert (=> b!852786 m!1092531))

(assert (=> b!852411 d!266383))

(declare-fun d!266387 () Bool)

(declare-fun lt!323034 () Int)

(assert (=> d!266387 (>= lt!323034 0)))

(declare-fun e!561315 () Int)

(assert (=> d!266387 (= lt!323034 e!561315)))

(declare-fun c!138361 () Bool)

(assert (=> d!266387 (= c!138361 ((_ is Nil!9201) (originalCharacters!2282 separatorToken!297)))))

(assert (=> d!266387 (= (size!7669 (originalCharacters!2282 separatorToken!297)) lt!323034)))

(declare-fun b!852792 () Bool)

(assert (=> b!852792 (= e!561315 0)))

(declare-fun b!852793 () Bool)

(assert (=> b!852793 (= e!561315 (+ 1 (size!7669 (t!95783 (originalCharacters!2282 separatorToken!297)))))))

(assert (= (and d!266387 c!138361) b!852792))

(assert (= (and d!266387 (not c!138361)) b!852793))

(declare-fun m!1092545 () Bool)

(assert (=> b!852793 m!1092545))

(assert (=> b!852422 d!266387))

(declare-fun d!266391 () Bool)

(declare-fun c!138362 () Bool)

(assert (=> d!266391 (= c!138362 ((_ is Cons!9203) ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!561316 () List!9217)

(assert (=> d!266391 (= (printList!476 thiss!20117 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297)) e!561316)))

(declare-fun b!852794 () Bool)

(assert (=> b!852794 (= e!561316 (++!2382 (list!3613 (charsOf!993 (h!14604 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297)))) (printList!476 thiss!20117 (t!95785 ($colon$colon!89 (withSeparatorTokenList!58 thiss!20117 (t!95785 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!852795 () Bool)

(assert (=> b!852795 (= e!561316 Nil!9201)))

(assert (= (and d!266391 c!138362) b!852794))

(assert (= (and d!266391 (not c!138362)) b!852795))

(declare-fun m!1092549 () Bool)

(assert (=> b!852794 m!1092549))

(assert (=> b!852794 m!1092549))

(declare-fun m!1092551 () Bool)

(assert (=> b!852794 m!1092551))

(declare-fun m!1092553 () Bool)

(assert (=> b!852794 m!1092553))

(assert (=> b!852794 m!1092551))

(assert (=> b!852794 m!1092553))

(declare-fun m!1092555 () Bool)

(assert (=> b!852794 m!1092555))

(assert (=> b!852450 d!266391))

(assert (=> b!852450 d!266229))

(assert (=> b!852450 d!266231))

(declare-fun lt!323036 () Bool)

(declare-fun d!266395 () Bool)

(assert (=> d!266395 (= lt!323036 (isEmpty!5442 (list!3613 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)))))))))

(assert (=> d!266395 (= lt!323036 (isEmpty!5446 (c!138271 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297)))))))))

(assert (=> d!266395 (= (isEmpty!5443 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 separatorToken!297))))) lt!323036)))

(declare-fun bs!231467 () Bool)

(assert (= bs!231467 d!266395))

(declare-fun m!1092561 () Bool)

(assert (=> bs!231467 m!1092561))

(assert (=> bs!231467 m!1092561))

(declare-fun m!1092563 () Bool)

(assert (=> bs!231467 m!1092563))

(declare-fun m!1092565 () Bool)

(assert (=> bs!231467 m!1092565))

(assert (=> b!852208 d!266395))

(assert (=> b!852208 d!266319))

(assert (=> b!852208 d!266315))

(assert (=> b!852208 d!266355))

(declare-fun d!266397 () Bool)

(declare-fun c!138363 () Bool)

(assert (=> d!266397 (= c!138363 ((_ is IntegerValue!5376) (value!55890 (h!14604 (t!95785 l!5107)))))))

(declare-fun e!561318 () Bool)

(assert (=> d!266397 (= (inv!21 (value!55890 (h!14604 (t!95785 l!5107)))) e!561318)))

(declare-fun b!852797 () Bool)

(declare-fun e!561320 () Bool)

(assert (=> b!852797 (= e!561318 e!561320)))

(declare-fun c!138364 () Bool)

(assert (=> b!852797 (= c!138364 ((_ is IntegerValue!5377) (value!55890 (h!14604 (t!95785 l!5107)))))))

(declare-fun b!852798 () Bool)

(declare-fun e!561319 () Bool)

(assert (=> b!852798 (= e!561319 (inv!15 (value!55890 (h!14604 (t!95785 l!5107)))))))

(declare-fun b!852799 () Bool)

(assert (=> b!852799 (= e!561318 (inv!16 (value!55890 (h!14604 (t!95785 l!5107)))))))

(declare-fun b!852800 () Bool)

(assert (=> b!852800 (= e!561320 (inv!17 (value!55890 (h!14604 (t!95785 l!5107)))))))

(declare-fun b!852801 () Bool)

(declare-fun res!389644 () Bool)

(assert (=> b!852801 (=> res!389644 e!561319)))

(assert (=> b!852801 (= res!389644 (not ((_ is IntegerValue!5378) (value!55890 (h!14604 (t!95785 l!5107))))))))

(assert (=> b!852801 (= e!561320 e!561319)))

(assert (= (and d!266397 c!138363) b!852799))

(assert (= (and d!266397 (not c!138363)) b!852797))

(assert (= (and b!852797 c!138364) b!852800))

(assert (= (and b!852797 (not c!138364)) b!852801))

(assert (= (and b!852801 (not res!389644)) b!852798))

(declare-fun m!1092571 () Bool)

(assert (=> b!852798 m!1092571))

(declare-fun m!1092575 () Bool)

(assert (=> b!852799 m!1092575))

(declare-fun m!1092577 () Bool)

(assert (=> b!852800 m!1092577))

(assert (=> b!852484 d!266397))

(declare-fun d!266401 () Bool)

(assert (=> d!266401 (= (inv!11689 (tag!1988 (h!14603 (t!95784 rules!2621)))) (= (mod (str.len (value!55889 (tag!1988 (h!14603 (t!95784 rules!2621))))) 2) 0))))

(assert (=> b!852516 d!266401))

(declare-fun d!266403 () Bool)

(declare-fun res!389645 () Bool)

(declare-fun e!561322 () Bool)

(assert (=> d!266403 (=> (not res!389645) (not e!561322))))

(assert (=> d!266403 (= res!389645 (semiInverseModEq!672 (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toValue!2767 (transformation!1726 (h!14603 (t!95784 rules!2621))))))))

(assert (=> d!266403 (= (inv!11693 (transformation!1726 (h!14603 (t!95784 rules!2621)))) e!561322)))

(declare-fun b!852804 () Bool)

(assert (=> b!852804 (= e!561322 (equivClasses!639 (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toValue!2767 (transformation!1726 (h!14603 (t!95784 rules!2621))))))))

(assert (= (and d!266403 res!389645) b!852804))

(declare-fun m!1092587 () Bool)

(assert (=> d!266403 m!1092587))

(declare-fun m!1092589 () Bool)

(assert (=> b!852804 m!1092589))

(assert (=> b!852516 d!266403))

(declare-fun d!266409 () Bool)

(declare-fun charsToBigInt!0 (List!9216 Int) Int)

(assert (=> d!266409 (= (inv!15 (value!55890 separatorToken!297)) (= (charsToBigInt!0 (text!12993 (value!55890 separatorToken!297)) 0) (value!55885 (value!55890 separatorToken!297))))))

(declare-fun bs!231470 () Bool)

(assert (= bs!231470 d!266409))

(declare-fun m!1092601 () Bool)

(assert (=> bs!231470 m!1092601))

(assert (=> b!852313 d!266409))

(declare-fun b!852817 () Bool)

(declare-fun e!561334 () Bool)

(declare-fun e!561332 () Bool)

(assert (=> b!852817 (= e!561334 e!561332)))

(declare-fun res!389652 () Bool)

(assert (=> b!852817 (= res!389652 (not ((_ is Cons!9202) rules!2621)))))

(assert (=> b!852817 (=> res!389652 e!561332)))

(declare-fun d!266415 () Bool)

(declare-fun c!138369 () Bool)

(assert (=> d!266415 (= c!138369 (and ((_ is Cons!9202) rules!2621) (not (= (isSeparator!1726 (h!14603 rules!2621)) (isSeparator!1726 (h!14603 rules!2621))))))))

(assert (=> d!266415 (= (ruleDisjointCharsFromAllFromOtherType!239 (h!14603 rules!2621) rules!2621) e!561334)))

(declare-fun b!852818 () Bool)

(declare-fun call!50510 () Bool)

(assert (=> b!852818 (= e!561332 call!50510)))

(declare-fun b!852819 () Bool)

(declare-fun e!561333 () Bool)

(assert (=> b!852819 (= e!561334 e!561333)))

(declare-fun res!389653 () Bool)

(declare-fun rulesUseDisjointChars!119 (Rule!3252 Rule!3252) Bool)

(assert (=> b!852819 (= res!389653 (rulesUseDisjointChars!119 (h!14603 rules!2621) (h!14603 rules!2621)))))

(assert (=> b!852819 (=> (not res!389653) (not e!561333))))

(declare-fun bm!50505 () Bool)

(assert (=> bm!50505 (= call!50510 (ruleDisjointCharsFromAllFromOtherType!239 (h!14603 rules!2621) (t!95784 rules!2621)))))

(declare-fun b!852820 () Bool)

(assert (=> b!852820 (= e!561333 call!50510)))

(assert (= (and d!266415 c!138369) b!852819))

(assert (= (and d!266415 (not c!138369)) b!852817))

(assert (= (and b!852819 res!389653) b!852820))

(assert (= (and b!852817 (not res!389652)) b!852818))

(assert (= (or b!852820 b!852818) bm!50505))

(declare-fun m!1092621 () Bool)

(assert (=> b!852819 m!1092621))

(declare-fun m!1092623 () Bool)

(assert (=> bm!50505 m!1092623))

(assert (=> b!852465 d!266415))

(declare-fun d!266427 () Bool)

(declare-fun lt!323049 () Token!3118)

(declare-fun apply!1899 (List!9219 Int) Token!3118)

(assert (=> d!266427 (= lt!323049 (apply!1899 (list!3614 (_1!6020 lt!322805)) 0))))

(declare-fun apply!1900 (Conc!3049 Int) Token!3118)

(assert (=> d!266427 (= lt!323049 (apply!1900 (c!138272 (_1!6020 lt!322805)) 0))))

(declare-fun e!561347 () Bool)

(assert (=> d!266427 e!561347))

(declare-fun res!389659 () Bool)

(assert (=> d!266427 (=> (not res!389659) (not e!561347))))

(assert (=> d!266427 (= res!389659 (<= 0 0))))

(assert (=> d!266427 (= (apply!1895 (_1!6020 lt!322805) 0) lt!323049)))

(declare-fun b!852840 () Bool)

(assert (=> b!852840 (= e!561347 (< 0 (size!7670 (_1!6020 lt!322805))))))

(assert (= (and d!266427 res!389659) b!852840))

(assert (=> d!266427 m!1092321))

(assert (=> d!266427 m!1092321))

(declare-fun m!1092633 () Bool)

(assert (=> d!266427 m!1092633))

(declare-fun m!1092635 () Bool)

(assert (=> d!266427 m!1092635))

(assert (=> b!852840 m!1091511))

(assert (=> b!852206 d!266427))

(declare-fun d!266433 () Bool)

(assert (=> d!266433 (= (inv!15 (value!55890 (h!14604 l!5107))) (= (charsToBigInt!0 (text!12993 (value!55890 (h!14604 l!5107))) 0) (value!55885 (value!55890 (h!14604 l!5107)))))))

(declare-fun bs!231475 () Bool)

(assert (= bs!231475 d!266433))

(declare-fun m!1092637 () Bool)

(assert (=> bs!231475 m!1092637))

(assert (=> b!852417 d!266433))

(declare-fun d!266435 () Bool)

(declare-fun charsToBigInt!1 (List!9216) Int)

(assert (=> d!266435 (= (inv!17 (value!55890 (h!14604 l!5107))) (= (charsToBigInt!1 (text!12992 (value!55890 (h!14604 l!5107)))) (value!55882 (value!55890 (h!14604 l!5107)))))))

(declare-fun bs!231476 () Bool)

(assert (= bs!231476 d!266435))

(declare-fun m!1092649 () Bool)

(assert (=> bs!231476 m!1092649))

(assert (=> b!852419 d!266435))

(declare-fun bs!231477 () Bool)

(declare-fun d!266443 () Bool)

(assert (= bs!231477 (and d!266443 d!266377)))

(declare-fun lambda!25532 () Int)

(assert (=> bs!231477 (= (= (toValue!2767 (transformation!1726 (h!14603 rules!2621))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (= lambda!25532 lambda!25531))))

(assert (=> d!266443 true))

(assert (=> d!266443 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4299 order!5915 lambda!25532))))

(assert (=> d!266443 (= (equivClasses!639 (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (Forall2!323 lambda!25532))))

(declare-fun bs!231478 () Bool)

(assert (= bs!231478 d!266443))

(declare-fun m!1092661 () Bool)

(assert (=> bs!231478 m!1092661))

(assert (=> b!852424 d!266443))

(declare-fun d!266445 () Bool)

(assert (=> d!266445 (= (isEmpty!5442 (originalCharacters!2282 (h!14604 l!5107))) ((_ is Nil!9201) (originalCharacters!2282 (h!14604 l!5107))))))

(assert (=> d!266081 d!266445))

(declare-fun d!266449 () Bool)

(assert (=> d!266449 (= (inv!17 (value!55890 separatorToken!297)) (= (charsToBigInt!1 (text!12992 (value!55890 separatorToken!297))) (value!55882 (value!55890 separatorToken!297))))))

(declare-fun bs!231479 () Bool)

(assert (= bs!231479 d!266449))

(declare-fun m!1092669 () Bool)

(assert (=> bs!231479 m!1092669))

(assert (=> b!852315 d!266449))

(declare-fun d!266451 () Bool)

(declare-fun c!138379 () Bool)

(assert (=> d!266451 (= c!138379 ((_ is Node!3048) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))))

(declare-fun e!561355 () Bool)

(assert (=> d!266451 (= (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))) e!561355)))

(declare-fun b!852850 () Bool)

(assert (=> b!852850 (= e!561355 (inv!11698 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))))

(declare-fun b!852851 () Bool)

(declare-fun e!561356 () Bool)

(assert (=> b!852851 (= e!561355 e!561356)))

(declare-fun res!389665 () Bool)

(assert (=> b!852851 (= res!389665 (not ((_ is Leaf!4499) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))))))))

(assert (=> b!852851 (=> res!389665 e!561356)))

(declare-fun b!852852 () Bool)

(assert (=> b!852852 (= e!561356 (inv!11699 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))))

(assert (= (and d!266451 c!138379) b!852850))

(assert (= (and d!266451 (not c!138379)) b!852851))

(assert (= (and b!852851 (not res!389665)) b!852852))

(declare-fun m!1092671 () Bool)

(assert (=> b!852850 m!1092671))

(declare-fun m!1092673 () Bool)

(assert (=> b!852852 m!1092673))

(assert (=> b!852423 d!266451))

(declare-fun d!266453 () Bool)

(declare-fun lt!323058 () Bool)

(declare-fun e!561357 () Bool)

(assert (=> d!266453 (= lt!323058 e!561357)))

(declare-fun res!389668 () Bool)

(assert (=> d!266453 (=> (not res!389668) (not e!561357))))

(assert (=> d!266453 (= res!389668 (= (list!3614 (_1!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 (t!95785 lt!322790))))))) (list!3614 (singletonSeq!541 (h!14604 (t!95785 lt!322790))))))))

(declare-fun e!561358 () Bool)

(assert (=> d!266453 (= lt!323058 e!561358)))

(declare-fun res!389666 () Bool)

(assert (=> d!266453 (=> (not res!389666) (not e!561358))))

(declare-fun lt!323059 () tuple2!10388)

(assert (=> d!266453 (= res!389666 (= (size!7670 (_1!6020 lt!323059)) 1))))

(assert (=> d!266453 (= lt!323059 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 (t!95785 lt!322790))))))))

(assert (=> d!266453 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266453 (= (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 lt!322790))) lt!323058)))

(declare-fun b!852853 () Bool)

(declare-fun res!389667 () Bool)

(assert (=> b!852853 (=> (not res!389667) (not e!561358))))

(assert (=> b!852853 (= res!389667 (= (apply!1895 (_1!6020 lt!323059) 0) (h!14604 (t!95785 lt!322790))))))

(declare-fun b!852854 () Bool)

(assert (=> b!852854 (= e!561358 (isEmpty!5443 (_2!6020 lt!323059)))))

(declare-fun b!852855 () Bool)

(assert (=> b!852855 (= e!561357 (isEmpty!5443 (_2!6020 (lex!620 thiss!20117 rules!2621 (print!557 thiss!20117 (singletonSeq!541 (h!14604 (t!95785 lt!322790))))))))))

(assert (= (and d!266453 res!389666) b!852853))

(assert (= (and b!852853 res!389667) b!852854))

(assert (= (and d!266453 res!389668) b!852855))

(declare-fun m!1092675 () Bool)

(assert (=> d!266453 m!1092675))

(assert (=> d!266453 m!1092675))

(declare-fun m!1092677 () Bool)

(assert (=> d!266453 m!1092677))

(declare-fun m!1092679 () Bool)

(assert (=> d!266453 m!1092679))

(declare-fun m!1092681 () Bool)

(assert (=> d!266453 m!1092681))

(declare-fun m!1092683 () Bool)

(assert (=> d!266453 m!1092683))

(assert (=> d!266453 m!1091419))

(assert (=> d!266453 m!1092675))

(assert (=> d!266453 m!1092681))

(declare-fun m!1092685 () Bool)

(assert (=> d!266453 m!1092685))

(declare-fun m!1092687 () Bool)

(assert (=> b!852853 m!1092687))

(declare-fun m!1092689 () Bool)

(assert (=> b!852854 m!1092689))

(assert (=> b!852855 m!1092675))

(assert (=> b!852855 m!1092675))

(assert (=> b!852855 m!1092681))

(assert (=> b!852855 m!1092681))

(assert (=> b!852855 m!1092683))

(declare-fun m!1092691 () Bool)

(assert (=> b!852855 m!1092691))

(assert (=> b!852328 d!266453))

(assert (=> b!852328 d!266249))

(declare-fun d!266455 () Bool)

(assert (=> d!266455 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 lt!322790)))))

(declare-fun lt!323066 () Unit!13701)

(declare-fun choose!5034 (LexerInterface!1528 List!9218 List!9219 Token!3118) Unit!13701)

(assert (=> d!266455 (= lt!323066 (choose!5034 thiss!20117 rules!2621 lt!322790 (h!14604 (t!95785 lt!322790))))))

(assert (=> d!266455 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266455 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 thiss!20117 rules!2621 lt!322790 (h!14604 (t!95785 lt!322790))) lt!323066)))

(declare-fun bs!231488 () Bool)

(assert (= bs!231488 d!266455))

(assert (=> bs!231488 m!1091649))

(declare-fun m!1092705 () Bool)

(assert (=> bs!231488 m!1092705))

(assert (=> bs!231488 m!1091419))

(assert (=> b!852328 d!266455))

(declare-fun d!266463 () Bool)

(declare-fun prefixMatchZipperSequence!35 (Regex!2159 BalanceConc!6110) Bool)

(declare-fun rulesRegex!24 (LexerInterface!1528 List!9218) Regex!2159)

(declare-fun ++!2384 (BalanceConc!6110 BalanceConc!6110) BalanceConc!6110)

(declare-fun singletonSeq!543 (C!4888) BalanceConc!6110)

(declare-fun apply!1901 (BalanceConc!6110 Int) C!4888)

(assert (=> d!266463 (= (separableTokensPredicate!64 thiss!20117 (h!14604 lt!322790) (h!14604 (t!95785 lt!322790)) rules!2621) (not (prefixMatchZipperSequence!35 (rulesRegex!24 thiss!20117 rules!2621) (++!2384 (charsOf!993 (h!14604 lt!322790)) (singletonSeq!543 (apply!1901 (charsOf!993 (h!14604 (t!95785 lt!322790))) 0))))))))

(declare-fun bs!231503 () Bool)

(assert (= bs!231503 d!266463))

(assert (=> bs!231503 m!1091639))

(declare-fun m!1092757 () Bool)

(assert (=> bs!231503 m!1092757))

(declare-fun m!1092759 () Bool)

(assert (=> bs!231503 m!1092759))

(declare-fun m!1092761 () Bool)

(assert (=> bs!231503 m!1092761))

(declare-fun m!1092763 () Bool)

(assert (=> bs!231503 m!1092763))

(assert (=> bs!231503 m!1091639))

(declare-fun m!1092765 () Bool)

(assert (=> bs!231503 m!1092765))

(assert (=> bs!231503 m!1092765))

(assert (=> bs!231503 m!1092761))

(assert (=> bs!231503 m!1092759))

(assert (=> bs!231503 m!1092757))

(assert (=> bs!231503 m!1092763))

(declare-fun m!1092767 () Bool)

(assert (=> bs!231503 m!1092767))

(assert (=> b!852328 d!266463))

(declare-fun d!266485 () Bool)

(declare-fun lt!323068 () BalanceConc!6110)

(assert (=> d!266485 (= (list!3613 lt!323068) (originalCharacters!2282 (h!14604 (t!95785 lt!322790))))))

(assert (=> d!266485 (= lt!323068 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790))))) (value!55890 (h!14604 (t!95785 lt!322790)))))))

(assert (=> d!266485 (= (charsOf!993 (h!14604 (t!95785 lt!322790))) lt!323068)))

(declare-fun b_lambda!28505 () Bool)

(assert (=> (not b_lambda!28505) (not d!266485)))

(declare-fun t!95939 () Bool)

(declare-fun tb!60047 () Bool)

(assert (=> (and b!852159 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95939) tb!60047))

(declare-fun b!852948 () Bool)

(declare-fun e!561415 () Bool)

(declare-fun tp!268713 () Bool)

(assert (=> b!852948 (= e!561415 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790))))) (value!55890 (h!14604 (t!95785 lt!322790)))))) tp!268713))))

(declare-fun result!69554 () Bool)

(assert (=> tb!60047 (= result!69554 (and (inv!11697 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790))))) (value!55890 (h!14604 (t!95785 lt!322790))))) e!561415))))

(assert (= tb!60047 b!852948))

(declare-fun m!1092769 () Bool)

(assert (=> b!852948 m!1092769))

(declare-fun m!1092771 () Bool)

(assert (=> tb!60047 m!1092771))

(assert (=> d!266485 t!95939))

(declare-fun b_and!75035 () Bool)

(assert (= b_and!74961 (and (=> t!95939 result!69554) b_and!75035)))

(declare-fun t!95945 () Bool)

(declare-fun tb!60053 () Bool)

(assert (=> (and b!852157 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95945) tb!60053))

(declare-fun result!69560 () Bool)

(assert (= result!69560 result!69554))

(assert (=> d!266485 t!95945))

(declare-fun b_and!75037 () Bool)

(assert (= b_and!74965 (and (=> t!95945 result!69560) b_and!75037)))

(declare-fun tb!60055 () Bool)

(declare-fun t!95947 () Bool)

(assert (=> (and b!852153 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95947) tb!60055))

(declare-fun result!69562 () Bool)

(assert (= result!69562 result!69554))

(assert (=> d!266485 t!95947))

(declare-fun b_and!75039 () Bool)

(assert (= b_and!74957 (and (=> t!95947 result!69562) b_and!75039)))

(declare-fun tb!60057 () Bool)

(declare-fun t!95949 () Bool)

(assert (=> (and b!852517 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95949) tb!60057))

(declare-fun result!69564 () Bool)

(assert (= result!69564 result!69554))

(assert (=> d!266485 t!95949))

(declare-fun b_and!75041 () Bool)

(assert (= b_and!74959 (and (=> t!95949 result!69564) b_and!75041)))

(declare-fun tb!60059 () Bool)

(declare-fun t!95951 () Bool)

(assert (=> (and b!852486 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95951) tb!60059))

(declare-fun result!69566 () Bool)

(assert (= result!69566 result!69554))

(assert (=> d!266485 t!95951))

(declare-fun b_and!75043 () Bool)

(assert (= b_and!74963 (and (=> t!95951 result!69566) b_and!75043)))

(declare-fun m!1092777 () Bool)

(assert (=> d!266485 m!1092777))

(declare-fun m!1092779 () Bool)

(assert (=> d!266485 m!1092779))

(assert (=> b!852328 d!266485))

(declare-fun d!266487 () Bool)

(declare-fun lt!323071 () Int)

(assert (=> d!266487 (= lt!323071 (size!7669 (list!3613 (charsOf!993 (h!14604 (t!95785 lt!322790))))))))

(declare-fun size!7677 (Conc!3048) Int)

(assert (=> d!266487 (= lt!323071 (size!7677 (c!138271 (charsOf!993 (h!14604 (t!95785 lt!322790))))))))

(assert (=> d!266487 (= (size!7671 (charsOf!993 (h!14604 (t!95785 lt!322790)))) lt!323071)))

(declare-fun bs!231504 () Bool)

(assert (= bs!231504 d!266487))

(assert (=> bs!231504 m!1091639))

(declare-fun m!1092787 () Bool)

(assert (=> bs!231504 m!1092787))

(assert (=> bs!231504 m!1092787))

(declare-fun m!1092789 () Bool)

(assert (=> bs!231504 m!1092789))

(declare-fun m!1092791 () Bool)

(assert (=> bs!231504 m!1092791))

(assert (=> b!852328 d!266487))

(declare-fun d!266489 () Bool)

(assert (=> d!266489 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 lt!322790))))

(declare-fun lt!323072 () Unit!13701)

(assert (=> d!266489 (= lt!323072 (choose!5034 thiss!20117 rules!2621 lt!322790 (h!14604 lt!322790)))))

(assert (=> d!266489 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266489 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!232 thiss!20117 rules!2621 lt!322790 (h!14604 lt!322790)) lt!323072)))

(declare-fun bs!231505 () Bool)

(assert (= bs!231505 d!266489))

(assert (=> bs!231505 m!1091651))

(declare-fun m!1092793 () Bool)

(assert (=> bs!231505 m!1092793))

(assert (=> bs!231505 m!1091419))

(assert (=> b!852328 d!266489))

(declare-fun d!266491 () Bool)

(declare-fun res!389684 () Bool)

(declare-fun e!561433 () Bool)

(assert (=> d!266491 (=> res!389684 e!561433)))

(assert (=> d!266491 (= res!389684 ((_ is Nil!9203) l!5107))))

(assert (=> d!266491 (= (forall!2173 l!5107 lambda!25511) e!561433)))

(declare-fun b!852991 () Bool)

(declare-fun e!561434 () Bool)

(assert (=> b!852991 (= e!561433 e!561434)))

(declare-fun res!389685 () Bool)

(assert (=> b!852991 (=> (not res!389685) (not e!561434))))

(assert (=> b!852991 (= res!389685 (dynLambda!4295 lambda!25511 (h!14604 l!5107)))))

(declare-fun b!852992 () Bool)

(assert (=> b!852992 (= e!561434 (forall!2173 (t!95785 l!5107) lambda!25511))))

(assert (= (and d!266491 (not res!389684)) b!852991))

(assert (= (and b!852991 res!389685) b!852992))

(declare-fun b_lambda!28521 () Bool)

(assert (=> (not b_lambda!28521) (not b!852991)))

(declare-fun m!1092795 () Bool)

(assert (=> b!852991 m!1092795))

(declare-fun m!1092797 () Bool)

(assert (=> b!852992 m!1092797))

(assert (=> d!266125 d!266491))

(assert (=> d!266125 d!266079))

(declare-fun d!266497 () Bool)

(declare-fun res!389686 () Bool)

(declare-fun e!561435 () Bool)

(assert (=> d!266497 (=> res!389686 e!561435)))

(assert (=> d!266497 (= res!389686 ((_ is Nil!9203) lt!322790))))

(assert (=> d!266497 (= (forall!2173 lt!322790 lambda!25512) e!561435)))

(declare-fun b!852993 () Bool)

(declare-fun e!561436 () Bool)

(assert (=> b!852993 (= e!561435 e!561436)))

(declare-fun res!389687 () Bool)

(assert (=> b!852993 (=> (not res!389687) (not e!561436))))

(assert (=> b!852993 (= res!389687 (dynLambda!4295 lambda!25512 (h!14604 lt!322790)))))

(declare-fun b!852994 () Bool)

(assert (=> b!852994 (= e!561436 (forall!2173 (t!95785 lt!322790) lambda!25512))))

(assert (= (and d!266497 (not res!389686)) b!852993))

(assert (= (and b!852993 res!389687) b!852994))

(declare-fun b_lambda!28523 () Bool)

(assert (=> (not b_lambda!28523) (not b!852993)))

(declare-fun m!1092799 () Bool)

(assert (=> b!852993 m!1092799))

(declare-fun m!1092801 () Bool)

(assert (=> b!852994 m!1092801))

(assert (=> d!266147 d!266497))

(assert (=> d!266147 d!266079))

(declare-fun bs!231510 () Bool)

(declare-fun d!266503 () Bool)

(assert (= bs!231510 (and d!266503 d!266087)))

(declare-fun lambda!25540 () Int)

(assert (=> bs!231510 (= lambda!25540 lambda!25507)))

(declare-fun bs!231511 () Bool)

(assert (= bs!231511 (and d!266503 d!266251)))

(assert (=> bs!231511 (= lambda!25540 lambda!25517)))

(declare-fun bs!231512 () Bool)

(assert (= bs!231512 (and d!266503 b!852145)))

(assert (=> bs!231512 (not (= lambda!25540 lambda!25494))))

(declare-fun bs!231513 () Bool)

(assert (= bs!231513 (and d!266503 d!266147)))

(assert (=> bs!231513 (= lambda!25540 lambda!25512)))

(declare-fun bs!231514 () Bool)

(assert (= bs!231514 (and d!266503 d!266247)))

(assert (=> bs!231514 (= lambda!25540 lambda!25516)))

(declare-fun bs!231515 () Bool)

(assert (= bs!231515 (and d!266503 d!266125)))

(assert (=> bs!231515 (= lambda!25540 lambda!25511)))

(declare-fun b!852999 () Bool)

(declare-fun e!561441 () Bool)

(assert (=> b!852999 (= e!561441 true)))

(declare-fun b!852998 () Bool)

(declare-fun e!561440 () Bool)

(assert (=> b!852998 (= e!561440 e!561441)))

(declare-fun b!852997 () Bool)

(declare-fun e!561439 () Bool)

(assert (=> b!852997 (= e!561439 e!561440)))

(assert (=> d!266503 e!561439))

(assert (= b!852998 b!852999))

(assert (= b!852997 b!852998))

(assert (= (and d!266503 ((_ is Cons!9202) rules!2621)) b!852997))

(assert (=> b!852999 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25540))))

(assert (=> b!852999 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25540))))

(assert (=> d!266503 true))

(declare-fun lt!323073 () Bool)

(assert (=> d!266503 (= lt!323073 (forall!2173 (t!95785 lt!322790) lambda!25540))))

(declare-fun e!561438 () Bool)

(assert (=> d!266503 (= lt!323073 e!561438)))

(declare-fun res!389688 () Bool)

(assert (=> d!266503 (=> res!389688 e!561438)))

(assert (=> d!266503 (= res!389688 (not ((_ is Cons!9203) (t!95785 lt!322790))))))

(assert (=> d!266503 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266503 (= (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 lt!322790)) lt!323073)))

(declare-fun b!852995 () Bool)

(declare-fun e!561437 () Bool)

(assert (=> b!852995 (= e!561438 e!561437)))

(declare-fun res!389689 () Bool)

(assert (=> b!852995 (=> (not res!389689) (not e!561437))))

(assert (=> b!852995 (= res!389689 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 lt!322790))))))

(declare-fun b!852996 () Bool)

(assert (=> b!852996 (= e!561437 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 (t!95785 lt!322790))))))

(assert (= (and d!266503 (not res!389688)) b!852995))

(assert (= (and b!852995 res!389689) b!852996))

(declare-fun m!1092803 () Bool)

(assert (=> d!266503 m!1092803))

(assert (=> d!266503 m!1091419))

(assert (=> b!852995 m!1091649))

(declare-fun m!1092805 () Bool)

(assert (=> b!852996 m!1092805))

(assert (=> b!852426 d!266503))

(declare-fun d!266505 () Bool)

(assert (=> d!266505 (= (list!3613 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))) (list!3615 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))))))

(declare-fun bs!231516 () Bool)

(assert (= bs!231516 d!266505))

(declare-fun m!1092807 () Bool)

(assert (=> bs!231516 m!1092807))

(assert (=> b!852421 d!266505))

(declare-fun d!266507 () Bool)

(assert (=> d!266507 (= (isEmpty!5442 (originalCharacters!2282 separatorToken!297)) ((_ is Nil!9201) (originalCharacters!2282 separatorToken!297)))))

(assert (=> d!266141 d!266507))

(declare-fun d!266509 () Bool)

(assert (=> d!266509 (= (list!3613 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))) (list!3615 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))))))

(declare-fun bs!231517 () Bool)

(assert (= bs!231517 d!266509))

(declare-fun m!1092809 () Bool)

(assert (=> bs!231517 m!1092809))

(assert (=> b!852184 d!266509))

(declare-fun bs!231518 () Bool)

(declare-fun d!266511 () Bool)

(assert (= bs!231518 (and d!266511 d!266377)))

(declare-fun lambda!25541 () Int)

(assert (=> bs!231518 (= (= (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (= lambda!25541 lambda!25531))))

(declare-fun bs!231519 () Bool)

(assert (= bs!231519 (and d!266511 d!266443)))

(assert (=> bs!231519 (= (= (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297))) (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (= lambda!25541 lambda!25532))))

(assert (=> d!266511 true))

(assert (=> d!266511 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297)))) (dynLambda!4299 order!5915 lambda!25541))))

(assert (=> d!266511 (= (equivClasses!639 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297)))) (Forall2!323 lambda!25541))))

(declare-fun bs!231520 () Bool)

(assert (= bs!231520 d!266511))

(declare-fun m!1092811 () Bool)

(assert (=> bs!231520 m!1092811))

(assert (=> b!852332 d!266511))

(declare-fun d!266513 () Bool)

(assert (=> d!266513 true))

(declare-fun lt!323076 () Bool)

(declare-fun rulesValidInductive!611 (LexerInterface!1528 List!9218) Bool)

(assert (=> d!266513 (= lt!323076 (rulesValidInductive!611 thiss!20117 rules!2621))))

(declare-fun lambda!25544 () Int)

(declare-fun forall!2179 (List!9218 Int) Bool)

(assert (=> d!266513 (= lt!323076 (forall!2179 rules!2621 lambda!25544))))

(assert (=> d!266513 (= (rulesValid!603 thiss!20117 rules!2621) lt!323076)))

(declare-fun bs!231521 () Bool)

(assert (= bs!231521 d!266513))

(declare-fun m!1092813 () Bool)

(assert (=> bs!231521 m!1092813))

(declare-fun m!1092815 () Bool)

(assert (=> bs!231521 m!1092815))

(assert (=> d!266107 d!266513))

(declare-fun bs!231522 () Bool)

(declare-fun d!266515 () Bool)

(assert (= bs!231522 (and d!266515 d!266233)))

(declare-fun lambda!25545 () Int)

(assert (=> bs!231522 (= (and (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) (= (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toValue!2767 (transformation!1726 (rule!3149 separatorToken!297))))) (= lambda!25545 lambda!25515))))

(declare-fun bs!231523 () Bool)

(assert (= bs!231523 (and d!266515 d!266375)))

(assert (=> bs!231523 (= (and (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (= (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toValue!2767 (transformation!1726 (h!14603 rules!2621))))) (= lambda!25545 lambda!25525))))

(assert (=> d!266515 true))

(assert (=> d!266515 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (dynLambda!4297 order!5909 lambda!25545))))

(assert (=> d!266515 true))

(assert (=> d!266515 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (dynLambda!4297 order!5909 lambda!25545))))

(assert (=> d!266515 (= (semiInverseModEq!672 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toValue!2767 (transformation!1726 (rule!3149 (h!14604 l!5107))))) (Forall!413 lambda!25545))))

(declare-fun bs!231524 () Bool)

(assert (= bs!231524 d!266515))

(declare-fun m!1092817 () Bool)

(assert (=> bs!231524 m!1092817))

(assert (=> d!266155 d!266515))

(declare-fun bs!231525 () Bool)

(declare-fun d!266517 () Bool)

(assert (= bs!231525 (and d!266517 d!266087)))

(declare-fun lambda!25546 () Int)

(assert (=> bs!231525 (= lambda!25546 lambda!25507)))

(declare-fun bs!231526 () Bool)

(assert (= bs!231526 (and d!266517 d!266251)))

(assert (=> bs!231526 (= lambda!25546 lambda!25517)))

(declare-fun bs!231527 () Bool)

(assert (= bs!231527 (and d!266517 d!266503)))

(assert (=> bs!231527 (= lambda!25546 lambda!25540)))

(declare-fun bs!231528 () Bool)

(assert (= bs!231528 (and d!266517 b!852145)))

(assert (=> bs!231528 (not (= lambda!25546 lambda!25494))))

(declare-fun bs!231529 () Bool)

(assert (= bs!231529 (and d!266517 d!266147)))

(assert (=> bs!231529 (= lambda!25546 lambda!25512)))

(declare-fun bs!231530 () Bool)

(assert (= bs!231530 (and d!266517 d!266247)))

(assert (=> bs!231530 (= lambda!25546 lambda!25516)))

(declare-fun bs!231531 () Bool)

(assert (= bs!231531 (and d!266517 d!266125)))

(assert (=> bs!231531 (= lambda!25546 lambda!25511)))

(declare-fun b!853006 () Bool)

(declare-fun e!561446 () Bool)

(assert (=> b!853006 (= e!561446 true)))

(declare-fun b!853005 () Bool)

(declare-fun e!561445 () Bool)

(assert (=> b!853005 (= e!561445 e!561446)))

(declare-fun b!853004 () Bool)

(declare-fun e!561444 () Bool)

(assert (=> b!853004 (= e!561444 e!561445)))

(assert (=> d!266517 e!561444))

(assert (= b!853005 b!853006))

(assert (= b!853004 b!853005))

(assert (= (and d!266517 ((_ is Cons!9202) rules!2621)) b!853004))

(assert (=> b!853006 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25546))))

(assert (=> b!853006 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 rules!2621)))) (dynLambda!4293 order!5905 lambda!25546))))

(assert (=> d!266517 true))

(declare-fun lt!323077 () Bool)

(assert (=> d!266517 (= lt!323077 (forall!2173 (t!95785 l!5107) lambda!25546))))

(declare-fun e!561443 () Bool)

(assert (=> d!266517 (= lt!323077 e!561443)))

(declare-fun res!389690 () Bool)

(assert (=> d!266517 (=> res!389690 e!561443)))

(assert (=> d!266517 (= res!389690 (not ((_ is Cons!9203) (t!95785 l!5107))))))

(assert (=> d!266517 (not (isEmpty!5439 rules!2621))))

(assert (=> d!266517 (= (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 l!5107)) lt!323077)))

(declare-fun b!853002 () Bool)

(declare-fun e!561442 () Bool)

(assert (=> b!853002 (= e!561443 e!561442)))

(declare-fun res!389691 () Bool)

(assert (=> b!853002 (=> (not res!389691) (not e!561442))))

(assert (=> b!853002 (= res!389691 (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (t!95785 l!5107))))))

(declare-fun b!853003 () Bool)

(assert (=> b!853003 (= e!561442 (rulesProduceEachTokenIndividuallyList!416 thiss!20117 rules!2621 (t!95785 (t!95785 l!5107))))))

(assert (= (and d!266517 (not res!389690)) b!853002))

(assert (= (and b!853002 res!389691) b!853003))

(declare-fun m!1092819 () Bool)

(assert (=> d!266517 m!1092819))

(assert (=> d!266517 m!1091419))

(declare-fun m!1092821 () Bool)

(assert (=> b!853002 m!1092821))

(declare-fun m!1092823 () Bool)

(assert (=> b!853003 m!1092823))

(assert (=> b!852412 d!266517))

(declare-fun b!853010 () Bool)

(declare-fun b_free!25821 () Bool)

(declare-fun b_next!25885 () Bool)

(assert (=> b!853010 (= b_free!25821 (not b_next!25885))))

(declare-fun tp!268762 () Bool)

(declare-fun b_and!75045 () Bool)

(assert (=> b!853010 (= tp!268762 b_and!75045)))

(declare-fun b_free!25823 () Bool)

(declare-fun b_next!25887 () Bool)

(assert (=> b!853010 (= b_free!25823 (not b_next!25887))))

(declare-fun t!95953 () Bool)

(declare-fun tb!60061 () Bool)

(assert (=> (and b!853010 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95953) tb!60061))

(declare-fun result!69568 () Bool)

(assert (= result!69568 result!69440))

(assert (=> d!266227 t!95953))

(declare-fun t!95955 () Bool)

(declare-fun tb!60063 () Bool)

(assert (=> (and b!853010 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95955) tb!60063))

(declare-fun result!69570 () Bool)

(assert (= result!69570 result!69462))

(assert (=> b!852526 t!95955))

(declare-fun t!95957 () Bool)

(declare-fun tb!60065 () Bool)

(assert (=> (and b!853010 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95957) tb!60065))

(declare-fun result!69572 () Bool)

(assert (= result!69572 result!69402))

(assert (=> b!852184 t!95957))

(declare-fun t!95959 () Bool)

(declare-fun tb!60067 () Bool)

(assert (=> (and b!853010 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95959) tb!60067))

(declare-fun result!69574 () Bool)

(assert (= result!69574 result!69472))

(assert (=> d!266175 t!95959))

(declare-fun tb!60069 () Bool)

(declare-fun t!95961 () Bool)

(assert (=> (and b!853010 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95961) tb!60069))

(declare-fun result!69576 () Bool)

(assert (= result!69576 result!69482))

(assert (=> d!266191 t!95961))

(assert (=> d!266221 t!95957))

(declare-fun tb!60071 () Bool)

(declare-fun t!95963 () Bool)

(assert (=> (and b!853010 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95963) tb!60071))

(declare-fun result!69578 () Bool)

(assert (= result!69578 result!69554))

(assert (=> d!266485 t!95963))

(assert (=> b!852421 t!95953))

(declare-fun b_and!75047 () Bool)

(declare-fun tp!268761 () Bool)

(assert (=> b!853010 (= tp!268761 (and (=> t!95963 result!69578) (=> t!95957 result!69572) (=> t!95959 result!69574) (=> t!95955 result!69570) (=> t!95953 result!69568) (=> t!95961 result!69576) b_and!75047))))

(declare-fun e!561450 () Bool)

(declare-fun b!853008 () Bool)

(declare-fun e!561452 () Bool)

(declare-fun tp!268760 () Bool)

(assert (=> b!853008 (= e!561450 (and (inv!21 (value!55890 (h!14604 (t!95785 (t!95785 l!5107))))) e!561452 tp!268760))))

(declare-fun tp!268759 () Bool)

(declare-fun b!853007 () Bool)

(declare-fun e!561447 () Bool)

(assert (=> b!853007 (= e!561447 (and (inv!11692 (h!14604 (t!95785 (t!95785 l!5107)))) e!561450 tp!268759))))

(declare-fun e!561449 () Bool)

(assert (=> b!853010 (= e!561449 (and tp!268762 tp!268761))))

(declare-fun b!853009 () Bool)

(declare-fun tp!268758 () Bool)

(assert (=> b!853009 (= e!561452 (and tp!268758 (inv!11689 (tag!1988 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (inv!11693 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) e!561449))))

(assert (=> b!852483 (= tp!268596 e!561447)))

(assert (= b!853009 b!853010))

(assert (= b!853008 b!853009))

(assert (= b!853007 b!853008))

(assert (= (and b!852483 ((_ is Cons!9203) (t!95785 (t!95785 l!5107)))) b!853007))

(declare-fun m!1092825 () Bool)

(assert (=> b!853008 m!1092825))

(declare-fun m!1092827 () Bool)

(assert (=> b!853007 m!1092827))

(declare-fun m!1092829 () Bool)

(assert (=> b!853009 m!1092829))

(declare-fun m!1092831 () Bool)

(assert (=> b!853009 m!1092831))

(declare-fun b!853013 () Bool)

(declare-fun b_free!25825 () Bool)

(declare-fun b_next!25889 () Bool)

(assert (=> b!853013 (= b_free!25825 (not b_next!25889))))

(declare-fun tp!268765 () Bool)

(declare-fun b_and!75049 () Bool)

(assert (=> b!853013 (= tp!268765 b_and!75049)))

(declare-fun b_free!25827 () Bool)

(declare-fun b_next!25891 () Bool)

(assert (=> b!853013 (= b_free!25827 (not b_next!25891))))

(declare-fun t!95965 () Bool)

(declare-fun tb!60073 () Bool)

(assert (=> (and b!853013 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297)))) t!95965) tb!60073))

(declare-fun result!69580 () Bool)

(assert (= result!69580 result!69440))

(assert (=> d!266227 t!95965))

(declare-fun tb!60075 () Bool)

(declare-fun t!95967 () Bool)

(assert (=> (and b!853013 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) t!95967) tb!60075))

(declare-fun result!69582 () Bool)

(assert (= result!69582 result!69462))

(assert (=> b!852526 t!95967))

(declare-fun t!95969 () Bool)

(declare-fun tb!60077 () Bool)

(assert (=> (and b!853013 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107))))) t!95969) tb!60077))

(declare-fun result!69584 () Bool)

(assert (= result!69584 result!69402))

(assert (=> b!852184 t!95969))

(declare-fun t!95971 () Bool)

(declare-fun tb!60079 () Bool)

(assert (=> (and b!853013 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322905))))) t!95971) tb!60079))

(declare-fun result!69586 () Bool)

(assert (= result!69586 result!69472))

(assert (=> d!266175 t!95971))

(declare-fun tb!60081 () Bool)

(declare-fun t!95973 () Bool)

(assert (=> (and b!853013 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 lt!322907))))) t!95973) tb!60081))

(declare-fun result!69588 () Bool)

(assert (= result!69588 result!69482))

(assert (=> d!266191 t!95973))

(assert (=> d!266221 t!95969))

(declare-fun t!95975 () Bool)

(declare-fun tb!60083 () Bool)

(assert (=> (and b!853013 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 lt!322790)))))) t!95975) tb!60083))

(declare-fun result!69590 () Bool)

(assert (= result!69590 result!69554))

(assert (=> d!266485 t!95975))

(assert (=> b!852421 t!95965))

(declare-fun b_and!75051 () Bool)

(declare-fun tp!268766 () Bool)

(assert (=> b!853013 (= tp!268766 (and (=> t!95975 result!69590) (=> t!95969 result!69584) (=> t!95971 result!69586) (=> t!95965 result!69580) (=> t!95973 result!69588) (=> t!95967 result!69582) b_and!75051))))

(declare-fun e!561456 () Bool)

(assert (=> b!853013 (= e!561456 (and tp!268765 tp!268766))))

(declare-fun e!561455 () Bool)

(declare-fun b!853012 () Bool)

(declare-fun tp!268764 () Bool)

(assert (=> b!853012 (= e!561455 (and tp!268764 (inv!11689 (tag!1988 (h!14603 (t!95784 (t!95784 rules!2621))))) (inv!11693 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) e!561456))))

(declare-fun b!853011 () Bool)

(declare-fun e!561454 () Bool)

(declare-fun tp!268763 () Bool)

(assert (=> b!853011 (= e!561454 (and e!561455 tp!268763))))

(assert (=> b!852515 (= tp!268627 e!561454)))

(assert (= b!853012 b!853013))

(assert (= b!853011 b!853012))

(assert (= (and b!852515 ((_ is Cons!9202) (t!95784 (t!95784 rules!2621)))) b!853011))

(declare-fun m!1092833 () Bool)

(assert (=> b!853012 m!1092833))

(declare-fun m!1092835 () Bool)

(assert (=> b!853012 m!1092835))

(declare-fun b!853014 () Bool)

(declare-fun e!561457 () Bool)

(declare-fun tp!268767 () Bool)

(assert (=> b!853014 (= e!561457 (and tp_is_empty!3977 tp!268767))))

(assert (=> b!852484 (= tp!268597 e!561457)))

(assert (= (and b!852484 ((_ is Cons!9201) (originalCharacters!2282 (h!14604 (t!95785 l!5107))))) b!853014))

(declare-fun b!853015 () Bool)

(declare-fun e!561458 () Bool)

(assert (=> b!853015 (= e!561458 tp_is_empty!3977)))

(declare-fun b!853016 () Bool)

(declare-fun tp!268772 () Bool)

(declare-fun tp!268770 () Bool)

(assert (=> b!853016 (= e!561458 (and tp!268772 tp!268770))))

(declare-fun b!853017 () Bool)

(declare-fun tp!268768 () Bool)

(assert (=> b!853017 (= e!561458 tp!268768)))

(assert (=> b!852516 (= tp!268628 e!561458)))

(declare-fun b!853018 () Bool)

(declare-fun tp!268771 () Bool)

(declare-fun tp!268769 () Bool)

(assert (=> b!853018 (= e!561458 (and tp!268771 tp!268769))))

(assert (= (and b!852516 ((_ is ElementMatch!2159) (regex!1726 (h!14603 (t!95784 rules!2621))))) b!853015))

(assert (= (and b!852516 ((_ is Concat!3952) (regex!1726 (h!14603 (t!95784 rules!2621))))) b!853016))

(assert (= (and b!852516 ((_ is Star!2159) (regex!1726 (h!14603 (t!95784 rules!2621))))) b!853017))

(assert (= (and b!852516 ((_ is Union!2159) (regex!1726 (h!14603 (t!95784 rules!2621))))) b!853018))

(declare-fun b!853019 () Bool)

(declare-fun e!561459 () Bool)

(assert (=> b!853019 (= e!561459 tp_is_empty!3977)))

(declare-fun b!853020 () Bool)

(declare-fun tp!268777 () Bool)

(declare-fun tp!268775 () Bool)

(assert (=> b!853020 (= e!561459 (and tp!268777 tp!268775))))

(declare-fun b!853021 () Bool)

(declare-fun tp!268773 () Bool)

(assert (=> b!853021 (= e!561459 tp!268773)))

(assert (=> b!852503 (= tp!268617 e!561459)))

(declare-fun b!853022 () Bool)

(declare-fun tp!268776 () Bool)

(declare-fun tp!268774 () Bool)

(assert (=> b!853022 (= e!561459 (and tp!268776 tp!268774))))

(assert (= (and b!852503 ((_ is ElementMatch!2159) (regOne!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853019))

(assert (= (and b!852503 ((_ is Concat!3952) (regOne!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853020))

(assert (= (and b!852503 ((_ is Star!2159) (regOne!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853021))

(assert (= (and b!852503 ((_ is Union!2159) (regOne!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853022))

(declare-fun b!853023 () Bool)

(declare-fun e!561460 () Bool)

(assert (=> b!853023 (= e!561460 tp_is_empty!3977)))

(declare-fun b!853024 () Bool)

(declare-fun tp!268782 () Bool)

(declare-fun tp!268780 () Bool)

(assert (=> b!853024 (= e!561460 (and tp!268782 tp!268780))))

(declare-fun b!853025 () Bool)

(declare-fun tp!268778 () Bool)

(assert (=> b!853025 (= e!561460 tp!268778)))

(assert (=> b!852503 (= tp!268615 e!561460)))

(declare-fun b!853026 () Bool)

(declare-fun tp!268781 () Bool)

(declare-fun tp!268779 () Bool)

(assert (=> b!853026 (= e!561460 (and tp!268781 tp!268779))))

(assert (= (and b!852503 ((_ is ElementMatch!2159) (regTwo!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853023))

(assert (= (and b!852503 ((_ is Concat!3952) (regTwo!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853024))

(assert (= (and b!852503 ((_ is Star!2159) (regTwo!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853025))

(assert (= (and b!852503 ((_ is Union!2159) (regTwo!4830 (regex!1726 (rule!3149 separatorToken!297))))) b!853026))

(declare-fun b!853027 () Bool)

(declare-fun e!561461 () Bool)

(assert (=> b!853027 (= e!561461 tp_is_empty!3977)))

(declare-fun b!853028 () Bool)

(declare-fun tp!268787 () Bool)

(declare-fun tp!268785 () Bool)

(assert (=> b!853028 (= e!561461 (and tp!268787 tp!268785))))

(declare-fun b!853029 () Bool)

(declare-fun tp!268783 () Bool)

(assert (=> b!853029 (= e!561461 tp!268783)))

(assert (=> b!852504 (= tp!268613 e!561461)))

(declare-fun b!853030 () Bool)

(declare-fun tp!268786 () Bool)

(declare-fun tp!268784 () Bool)

(assert (=> b!853030 (= e!561461 (and tp!268786 tp!268784))))

(assert (= (and b!852504 ((_ is ElementMatch!2159) (reg!2488 (regex!1726 (rule!3149 separatorToken!297))))) b!853027))

(assert (= (and b!852504 ((_ is Concat!3952) (reg!2488 (regex!1726 (rule!3149 separatorToken!297))))) b!853028))

(assert (= (and b!852504 ((_ is Star!2159) (reg!2488 (regex!1726 (rule!3149 separatorToken!297))))) b!853029))

(assert (= (and b!852504 ((_ is Union!2159) (reg!2488 (regex!1726 (rule!3149 separatorToken!297))))) b!853030))

(declare-fun b!853031 () Bool)

(declare-fun e!561462 () Bool)

(assert (=> b!853031 (= e!561462 tp_is_empty!3977)))

(declare-fun b!853032 () Bool)

(declare-fun tp!268792 () Bool)

(declare-fun tp!268790 () Bool)

(assert (=> b!853032 (= e!561462 (and tp!268792 tp!268790))))

(declare-fun b!853033 () Bool)

(declare-fun tp!268788 () Bool)

(assert (=> b!853033 (= e!561462 tp!268788)))

(assert (=> b!852485 (= tp!268595 e!561462)))

(declare-fun b!853034 () Bool)

(declare-fun tp!268791 () Bool)

(declare-fun tp!268789 () Bool)

(assert (=> b!853034 (= e!561462 (and tp!268791 tp!268789))))

(assert (= (and b!852485 ((_ is ElementMatch!2159) (regex!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) b!853031))

(assert (= (and b!852485 ((_ is Concat!3952) (regex!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) b!853032))

(assert (= (and b!852485 ((_ is Star!2159) (regex!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) b!853033))

(assert (= (and b!852485 ((_ is Union!2159) (regex!1726 (rule!3149 (h!14604 (t!95785 l!5107)))))) b!853034))

(declare-fun b!853035 () Bool)

(declare-fun e!561463 () Bool)

(assert (=> b!853035 (= e!561463 tp_is_empty!3977)))

(declare-fun b!853036 () Bool)

(declare-fun tp!268797 () Bool)

(declare-fun tp!268795 () Bool)

(assert (=> b!853036 (= e!561463 (and tp!268797 tp!268795))))

(declare-fun b!853037 () Bool)

(declare-fun tp!268793 () Bool)

(assert (=> b!853037 (= e!561463 tp!268793)))

(assert (=> b!852521 (= tp!268634 e!561463)))

(declare-fun b!853038 () Bool)

(declare-fun tp!268796 () Bool)

(declare-fun tp!268794 () Bool)

(assert (=> b!853038 (= e!561463 (and tp!268796 tp!268794))))

(assert (= (and b!852521 ((_ is ElementMatch!2159) (regOne!4831 (regex!1726 (h!14603 rules!2621))))) b!853035))

(assert (= (and b!852521 ((_ is Concat!3952) (regOne!4831 (regex!1726 (h!14603 rules!2621))))) b!853036))

(assert (= (and b!852521 ((_ is Star!2159) (regOne!4831 (regex!1726 (h!14603 rules!2621))))) b!853037))

(assert (= (and b!852521 ((_ is Union!2159) (regOne!4831 (regex!1726 (h!14603 rules!2621))))) b!853038))

(declare-fun b!853039 () Bool)

(declare-fun e!561464 () Bool)

(assert (=> b!853039 (= e!561464 tp_is_empty!3977)))

(declare-fun b!853040 () Bool)

(declare-fun tp!268802 () Bool)

(declare-fun tp!268800 () Bool)

(assert (=> b!853040 (= e!561464 (and tp!268802 tp!268800))))

(declare-fun b!853041 () Bool)

(declare-fun tp!268798 () Bool)

(assert (=> b!853041 (= e!561464 tp!268798)))

(assert (=> b!852521 (= tp!268632 e!561464)))

(declare-fun b!853042 () Bool)

(declare-fun tp!268801 () Bool)

(declare-fun tp!268799 () Bool)

(assert (=> b!853042 (= e!561464 (and tp!268801 tp!268799))))

(assert (= (and b!852521 ((_ is ElementMatch!2159) (regTwo!4831 (regex!1726 (h!14603 rules!2621))))) b!853039))

(assert (= (and b!852521 ((_ is Concat!3952) (regTwo!4831 (regex!1726 (h!14603 rules!2621))))) b!853040))

(assert (= (and b!852521 ((_ is Star!2159) (regTwo!4831 (regex!1726 (h!14603 rules!2621))))) b!853041))

(assert (= (and b!852521 ((_ is Union!2159) (regTwo!4831 (regex!1726 (h!14603 rules!2621))))) b!853042))

(declare-fun tp!268811 () Bool)

(declare-fun b!853051 () Bool)

(declare-fun tp!268810 () Bool)

(declare-fun e!561470 () Bool)

(assert (=> b!853051 (= e!561470 (and (inv!11696 (left!6804 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))))) tp!268810 (inv!11696 (right!7134 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))))) tp!268811))))

(declare-fun b!853053 () Bool)

(declare-fun e!561469 () Bool)

(declare-fun tp!268809 () Bool)

(assert (=> b!853053 (= e!561469 tp!268809)))

(declare-fun b!853052 () Bool)

(declare-fun inv!11703 (IArray!6101) Bool)

(assert (=> b!853052 (= e!561470 (and (inv!11703 (xs!5737 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))))) e!561469))))

(assert (=> b!852190 (= tp!268523 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107))))) e!561470))))

(assert (= (and b!852190 ((_ is Node!3048) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))))) b!853051))

(assert (= b!853052 b!853053))

(assert (= (and b!852190 ((_ is Leaf!4499) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (value!55890 (h!14604 l!5107)))))) b!853052))

(declare-fun m!1092837 () Bool)

(assert (=> b!853051 m!1092837))

(declare-fun m!1092839 () Bool)

(assert (=> b!853051 m!1092839))

(declare-fun m!1092841 () Bool)

(assert (=> b!853052 m!1092841))

(assert (=> b!852190 m!1091471))

(declare-fun b!853056 () Bool)

(declare-fun e!561473 () Bool)

(assert (=> b!853056 (= e!561473 true)))

(declare-fun b!853055 () Bool)

(declare-fun e!561472 () Bool)

(assert (=> b!853055 (= e!561472 e!561473)))

(declare-fun b!853054 () Bool)

(declare-fun e!561471 () Bool)

(assert (=> b!853054 (= e!561471 e!561472)))

(assert (=> b!852413 e!561471))

(assert (= b!853055 b!853056))

(assert (= b!853054 b!853055))

(assert (= (and b!852413 ((_ is Cons!9202) (t!95784 rules!2621))) b!853054))

(assert (=> b!853056 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 (t!95784 rules!2621))))) (dynLambda!4293 order!5905 lambda!25511))))

(assert (=> b!853056 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621))))) (dynLambda!4293 order!5905 lambda!25511))))

(declare-fun b!853057 () Bool)

(declare-fun e!561474 () Bool)

(declare-fun tp!268812 () Bool)

(assert (=> b!853057 (= e!561474 (and tp_is_empty!3977 tp!268812))))

(assert (=> b!852506 (= tp!268618 e!561474)))

(assert (= (and b!852506 ((_ is Cons!9201) (t!95783 (originalCharacters!2282 (h!14604 l!5107))))) b!853057))

(declare-fun b!853058 () Bool)

(declare-fun e!561475 () Bool)

(assert (=> b!853058 (= e!561475 tp_is_empty!3977)))

(declare-fun b!853059 () Bool)

(declare-fun tp!268817 () Bool)

(declare-fun tp!268815 () Bool)

(assert (=> b!853059 (= e!561475 (and tp!268817 tp!268815))))

(declare-fun b!853060 () Bool)

(declare-fun tp!268813 () Bool)

(assert (=> b!853060 (= e!561475 tp!268813)))

(assert (=> b!852523 (= tp!268640 e!561475)))

(declare-fun b!853061 () Bool)

(declare-fun tp!268816 () Bool)

(declare-fun tp!268814 () Bool)

(assert (=> b!853061 (= e!561475 (and tp!268816 tp!268814))))

(assert (= (and b!852523 ((_ is ElementMatch!2159) (regOne!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853058))

(assert (= (and b!852523 ((_ is Concat!3952) (regOne!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853059))

(assert (= (and b!852523 ((_ is Star!2159) (regOne!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853060))

(assert (= (and b!852523 ((_ is Union!2159) (regOne!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853061))

(declare-fun b!853062 () Bool)

(declare-fun e!561476 () Bool)

(assert (=> b!853062 (= e!561476 tp_is_empty!3977)))

(declare-fun b!853063 () Bool)

(declare-fun tp!268822 () Bool)

(declare-fun tp!268820 () Bool)

(assert (=> b!853063 (= e!561476 (and tp!268822 tp!268820))))

(declare-fun b!853064 () Bool)

(declare-fun tp!268818 () Bool)

(assert (=> b!853064 (= e!561476 tp!268818)))

(assert (=> b!852523 (= tp!268638 e!561476)))

(declare-fun b!853065 () Bool)

(declare-fun tp!268821 () Bool)

(declare-fun tp!268819 () Bool)

(assert (=> b!853065 (= e!561476 (and tp!268821 tp!268819))))

(assert (= (and b!852523 ((_ is ElementMatch!2159) (regTwo!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853062))

(assert (= (and b!852523 ((_ is Concat!3952) (regTwo!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853063))

(assert (= (and b!852523 ((_ is Star!2159) (regTwo!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853064))

(assert (= (and b!852523 ((_ is Union!2159) (regTwo!4830 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853065))

(declare-fun b!853066 () Bool)

(declare-fun e!561477 () Bool)

(assert (=> b!853066 (= e!561477 tp_is_empty!3977)))

(declare-fun b!853067 () Bool)

(declare-fun tp!268827 () Bool)

(declare-fun tp!268825 () Bool)

(assert (=> b!853067 (= e!561477 (and tp!268827 tp!268825))))

(declare-fun b!853068 () Bool)

(declare-fun tp!268823 () Bool)

(assert (=> b!853068 (= e!561477 tp!268823)))

(assert (=> b!852524 (= tp!268636 e!561477)))

(declare-fun b!853069 () Bool)

(declare-fun tp!268826 () Bool)

(declare-fun tp!268824 () Bool)

(assert (=> b!853069 (= e!561477 (and tp!268826 tp!268824))))

(assert (= (and b!852524 ((_ is ElementMatch!2159) (reg!2488 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853066))

(assert (= (and b!852524 ((_ is Concat!3952) (reg!2488 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853067))

(assert (= (and b!852524 ((_ is Star!2159) (reg!2488 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853068))

(assert (= (and b!852524 ((_ is Union!2159) (reg!2488 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853069))

(declare-fun b!853072 () Bool)

(declare-fun e!561480 () Bool)

(assert (=> b!853072 (= e!561480 true)))

(declare-fun b!853071 () Bool)

(declare-fun e!561479 () Bool)

(assert (=> b!853071 (= e!561479 e!561480)))

(declare-fun b!853070 () Bool)

(declare-fun e!561478 () Bool)

(assert (=> b!853070 (= e!561478 e!561479)))

(assert (=> b!852294 e!561478))

(assert (= b!853071 b!853072))

(assert (= b!853070 b!853071))

(assert (= (and b!852294 ((_ is Cons!9202) (t!95784 rules!2621))) b!853070))

(assert (=> b!853072 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 (t!95784 rules!2621))))) (dynLambda!4293 order!5905 lambda!25507))))

(assert (=> b!853072 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621))))) (dynLambda!4293 order!5905 lambda!25507))))

(declare-fun b!853073 () Bool)

(declare-fun e!561481 () Bool)

(assert (=> b!853073 (= e!561481 tp_is_empty!3977)))

(declare-fun b!853074 () Bool)

(declare-fun tp!268832 () Bool)

(declare-fun tp!268830 () Bool)

(assert (=> b!853074 (= e!561481 (and tp!268832 tp!268830))))

(declare-fun b!853075 () Bool)

(declare-fun tp!268828 () Bool)

(assert (=> b!853075 (= e!561481 tp!268828)))

(assert (=> b!852525 (= tp!268639 e!561481)))

(declare-fun b!853076 () Bool)

(declare-fun tp!268831 () Bool)

(declare-fun tp!268829 () Bool)

(assert (=> b!853076 (= e!561481 (and tp!268831 tp!268829))))

(assert (= (and b!852525 ((_ is ElementMatch!2159) (regOne!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853073))

(assert (= (and b!852525 ((_ is Concat!3952) (regOne!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853074))

(assert (= (and b!852525 ((_ is Star!2159) (regOne!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853075))

(assert (= (and b!852525 ((_ is Union!2159) (regOne!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853076))

(declare-fun b!853077 () Bool)

(declare-fun e!561482 () Bool)

(assert (=> b!853077 (= e!561482 tp_is_empty!3977)))

(declare-fun b!853078 () Bool)

(declare-fun tp!268837 () Bool)

(declare-fun tp!268835 () Bool)

(assert (=> b!853078 (= e!561482 (and tp!268837 tp!268835))))

(declare-fun b!853079 () Bool)

(declare-fun tp!268833 () Bool)

(assert (=> b!853079 (= e!561482 tp!268833)))

(assert (=> b!852525 (= tp!268637 e!561482)))

(declare-fun b!853080 () Bool)

(declare-fun tp!268836 () Bool)

(declare-fun tp!268834 () Bool)

(assert (=> b!853080 (= e!561482 (and tp!268836 tp!268834))))

(assert (= (and b!852525 ((_ is ElementMatch!2159) (regTwo!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853077))

(assert (= (and b!852525 ((_ is Concat!3952) (regTwo!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853078))

(assert (= (and b!852525 ((_ is Star!2159) (regTwo!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853079))

(assert (= (and b!852525 ((_ is Union!2159) (regTwo!4831 (regex!1726 (rule!3149 (h!14604 l!5107)))))) b!853080))

(declare-fun b!853081 () Bool)

(declare-fun tp!268840 () Bool)

(declare-fun e!561484 () Bool)

(declare-fun tp!268839 () Bool)

(assert (=> b!853081 (= e!561484 (and (inv!11696 (left!6804 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))))) tp!268839 (inv!11696 (right!7134 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))))) tp!268840))))

(declare-fun b!853083 () Bool)

(declare-fun e!561483 () Bool)

(declare-fun tp!268838 () Bool)

(assert (=> b!853083 (= e!561483 tp!268838)))

(declare-fun b!853082 () Bool)

(assert (=> b!853082 (= e!561484 (and (inv!11703 (xs!5737 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))))) e!561483))))

(assert (=> b!852423 (= tp!268584 (and (inv!11696 (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297)))) e!561484))))

(assert (= (and b!852423 ((_ is Node!3048) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))))) b!853081))

(assert (= b!853082 b!853083))

(assert (= (and b!852423 ((_ is Leaf!4499) (c!138271 (dynLambda!4291 (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (value!55890 separatorToken!297))))) b!853082))

(declare-fun m!1092843 () Bool)

(assert (=> b!853081 m!1092843))

(declare-fun m!1092845 () Bool)

(assert (=> b!853081 m!1092845))

(declare-fun m!1092847 () Bool)

(assert (=> b!853082 m!1092847))

(assert (=> b!852423 m!1091723))

(declare-fun b!853084 () Bool)

(declare-fun e!561485 () Bool)

(assert (=> b!853084 (= e!561485 tp_is_empty!3977)))

(declare-fun b!853085 () Bool)

(declare-fun tp!268845 () Bool)

(declare-fun tp!268843 () Bool)

(assert (=> b!853085 (= e!561485 (and tp!268845 tp!268843))))

(declare-fun b!853086 () Bool)

(declare-fun tp!268841 () Bool)

(assert (=> b!853086 (= e!561485 tp!268841)))

(assert (=> b!852505 (= tp!268616 e!561485)))

(declare-fun b!853087 () Bool)

(declare-fun tp!268844 () Bool)

(declare-fun tp!268842 () Bool)

(assert (=> b!853087 (= e!561485 (and tp!268844 tp!268842))))

(assert (= (and b!852505 ((_ is ElementMatch!2159) (regOne!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853084))

(assert (= (and b!852505 ((_ is Concat!3952) (regOne!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853085))

(assert (= (and b!852505 ((_ is Star!2159) (regOne!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853086))

(assert (= (and b!852505 ((_ is Union!2159) (regOne!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853087))

(declare-fun b!853088 () Bool)

(declare-fun e!561486 () Bool)

(assert (=> b!853088 (= e!561486 tp_is_empty!3977)))

(declare-fun b!853089 () Bool)

(declare-fun tp!268850 () Bool)

(declare-fun tp!268848 () Bool)

(assert (=> b!853089 (= e!561486 (and tp!268850 tp!268848))))

(declare-fun b!853090 () Bool)

(declare-fun tp!268846 () Bool)

(assert (=> b!853090 (= e!561486 tp!268846)))

(assert (=> b!852505 (= tp!268614 e!561486)))

(declare-fun b!853091 () Bool)

(declare-fun tp!268849 () Bool)

(declare-fun tp!268847 () Bool)

(assert (=> b!853091 (= e!561486 (and tp!268849 tp!268847))))

(assert (= (and b!852505 ((_ is ElementMatch!2159) (regTwo!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853088))

(assert (= (and b!852505 ((_ is Concat!3952) (regTwo!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853089))

(assert (= (and b!852505 ((_ is Star!2159) (regTwo!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853090))

(assert (= (and b!852505 ((_ is Union!2159) (regTwo!4831 (regex!1726 (rule!3149 separatorToken!297))))) b!853091))

(declare-fun b!853092 () Bool)

(declare-fun e!561487 () Bool)

(declare-fun tp!268851 () Bool)

(assert (=> b!853092 (= e!561487 (and tp_is_empty!3977 tp!268851))))

(assert (=> b!852491 (= tp!268602 e!561487)))

(assert (= (and b!852491 ((_ is Cons!9201) (t!95783 (originalCharacters!2282 separatorToken!297)))) b!853092))

(declare-fun b!853095 () Bool)

(declare-fun e!561490 () Bool)

(assert (=> b!853095 (= e!561490 true)))

(declare-fun b!853094 () Bool)

(declare-fun e!561489 () Bool)

(assert (=> b!853094 (= e!561489 e!561490)))

(declare-fun b!853093 () Bool)

(declare-fun e!561488 () Bool)

(assert (=> b!853093 (= e!561488 e!561489)))

(assert (=> b!852427 e!561488))

(assert (= b!853094 b!853095))

(assert (= b!853093 b!853094))

(assert (= (and b!852427 ((_ is Cons!9202) (t!95784 rules!2621))) b!853093))

(assert (=> b!853095 (< (dynLambda!4292 order!5903 (toValue!2767 (transformation!1726 (h!14603 (t!95784 rules!2621))))) (dynLambda!4293 order!5905 lambda!25512))))

(assert (=> b!853095 (< (dynLambda!4294 order!5907 (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621))))) (dynLambda!4293 order!5905 lambda!25512))))

(declare-fun b!853096 () Bool)

(declare-fun e!561491 () Bool)

(assert (=> b!853096 (= e!561491 tp_is_empty!3977)))

(declare-fun b!853097 () Bool)

(declare-fun tp!268856 () Bool)

(declare-fun tp!268854 () Bool)

(assert (=> b!853097 (= e!561491 (and tp!268856 tp!268854))))

(declare-fun b!853098 () Bool)

(declare-fun tp!268852 () Bool)

(assert (=> b!853098 (= e!561491 tp!268852)))

(assert (=> b!852519 (= tp!268635 e!561491)))

(declare-fun b!853099 () Bool)

(declare-fun tp!268855 () Bool)

(declare-fun tp!268853 () Bool)

(assert (=> b!853099 (= e!561491 (and tp!268855 tp!268853))))

(assert (= (and b!852519 ((_ is ElementMatch!2159) (regOne!4830 (regex!1726 (h!14603 rules!2621))))) b!853096))

(assert (= (and b!852519 ((_ is Concat!3952) (regOne!4830 (regex!1726 (h!14603 rules!2621))))) b!853097))

(assert (= (and b!852519 ((_ is Star!2159) (regOne!4830 (regex!1726 (h!14603 rules!2621))))) b!853098))

(assert (= (and b!852519 ((_ is Union!2159) (regOne!4830 (regex!1726 (h!14603 rules!2621))))) b!853099))

(declare-fun b!853100 () Bool)

(declare-fun e!561492 () Bool)

(assert (=> b!853100 (= e!561492 tp_is_empty!3977)))

(declare-fun b!853101 () Bool)

(declare-fun tp!268861 () Bool)

(declare-fun tp!268859 () Bool)

(assert (=> b!853101 (= e!561492 (and tp!268861 tp!268859))))

(declare-fun b!853102 () Bool)

(declare-fun tp!268857 () Bool)

(assert (=> b!853102 (= e!561492 tp!268857)))

(assert (=> b!852519 (= tp!268633 e!561492)))

(declare-fun b!853103 () Bool)

(declare-fun tp!268860 () Bool)

(declare-fun tp!268858 () Bool)

(assert (=> b!853103 (= e!561492 (and tp!268860 tp!268858))))

(assert (= (and b!852519 ((_ is ElementMatch!2159) (regTwo!4830 (regex!1726 (h!14603 rules!2621))))) b!853100))

(assert (= (and b!852519 ((_ is Concat!3952) (regTwo!4830 (regex!1726 (h!14603 rules!2621))))) b!853101))

(assert (= (and b!852519 ((_ is Star!2159) (regTwo!4830 (regex!1726 (h!14603 rules!2621))))) b!853102))

(assert (= (and b!852519 ((_ is Union!2159) (regTwo!4830 (regex!1726 (h!14603 rules!2621))))) b!853103))

(declare-fun b!853104 () Bool)

(declare-fun e!561493 () Bool)

(assert (=> b!853104 (= e!561493 tp_is_empty!3977)))

(declare-fun b!853105 () Bool)

(declare-fun tp!268866 () Bool)

(declare-fun tp!268864 () Bool)

(assert (=> b!853105 (= e!561493 (and tp!268866 tp!268864))))

(declare-fun b!853106 () Bool)

(declare-fun tp!268862 () Bool)

(assert (=> b!853106 (= e!561493 tp!268862)))

(assert (=> b!852520 (= tp!268631 e!561493)))

(declare-fun b!853107 () Bool)

(declare-fun tp!268865 () Bool)

(declare-fun tp!268863 () Bool)

(assert (=> b!853107 (= e!561493 (and tp!268865 tp!268863))))

(assert (= (and b!852520 ((_ is ElementMatch!2159) (reg!2488 (regex!1726 (h!14603 rules!2621))))) b!853104))

(assert (= (and b!852520 ((_ is Concat!3952) (reg!2488 (regex!1726 (h!14603 rules!2621))))) b!853105))

(assert (= (and b!852520 ((_ is Star!2159) (reg!2488 (regex!1726 (h!14603 rules!2621))))) b!853106))

(assert (= (and b!852520 ((_ is Union!2159) (reg!2488 (regex!1726 (h!14603 rules!2621))))) b!853107))

(declare-fun b_lambda!28525 () Bool)

(assert (= b_lambda!28471 (or (and b!852157 b_free!25787 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))) (and b!852486 b_free!25807) (and b!853013 b_free!25827 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))) (and b!852159 b_free!25791 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))) (and b!852153 b_free!25795 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))) (and b!852517 b_free!25811 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))) (and b!853010 b_free!25823 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))) b_lambda!28525)))

(declare-fun b_lambda!28527 () Bool)

(assert (= b_lambda!28479 (or (and b!853010 b_free!25823 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852159 b_free!25791) (and b!853013 b_free!25827 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852157 b_free!25787 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852486 b_free!25807 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852153 b_free!25795 (= (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) (and b!852517 b_free!25811 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))))) b_lambda!28527)))

(declare-fun b_lambda!28529 () Bool)

(assert (= b_lambda!28523 (or d!266147 b_lambda!28529)))

(declare-fun bs!231532 () Bool)

(declare-fun d!266519 () Bool)

(assert (= bs!231532 (and d!266519 d!266147)))

(assert (=> bs!231532 (= (dynLambda!4295 lambda!25512 (h!14604 lt!322790)) (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 lt!322790)))))

(assert (=> bs!231532 m!1091651))

(assert (=> b!852993 d!266519))

(declare-fun b_lambda!28531 () Bool)

(assert (= b_lambda!28477 (or d!266087 b_lambda!28531)))

(declare-fun bs!231533 () Bool)

(declare-fun d!266521 () Bool)

(assert (= bs!231533 (and d!266521 d!266087)))

(assert (=> bs!231533 (= (dynLambda!4295 lambda!25507 (h!14604 (list!3614 (seqFromList!1528 lt!322790)))) (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 (list!3614 (seqFromList!1528 lt!322790)))))))

(assert (=> bs!231533 m!1092087))

(assert (=> b!852565 d!266521))

(declare-fun b_lambda!28533 () Bool)

(assert (= b_lambda!28493 (or b!852145 b_lambda!28533)))

(declare-fun bs!231534 () Bool)

(declare-fun d!266523 () Bool)

(assert (= bs!231534 (and d!266523 b!852145)))

(assert (=> bs!231534 (= (dynLambda!4295 lambda!25494 (h!14604 (t!95785 l!5107))) (not (isSeparator!1726 (rule!3149 (h!14604 (t!95785 l!5107))))))))

(assert (=> b!852764 d!266523))

(declare-fun b_lambda!28535 () Bool)

(assert (= b_lambda!28521 (or d!266125 b_lambda!28535)))

(declare-fun bs!231535 () Bool)

(declare-fun d!266525 () Bool)

(assert (= bs!231535 (and d!266525 d!266125)))

(assert (=> bs!231535 (= (dynLambda!4295 lambda!25511 (h!14604 l!5107)) (rulesProduceIndividualToken!592 thiss!20117 rules!2621 (h!14604 l!5107)))))

(assert (=> bs!231535 m!1091713))

(assert (=> b!852991 d!266525))

(declare-fun b_lambda!28537 () Bool)

(assert (= b_lambda!28481 (or (and b!852517 b_free!25811 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 rules!2621)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!853013 b_free!25827 (= (toChars!2626 (transformation!1726 (h!14603 (t!95784 (t!95784 rules!2621))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852486 b_free!25807 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 l!5107))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852157 b_free!25787 (= (toChars!2626 (transformation!1726 (h!14603 rules!2621))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852153 b_free!25795) (and b!853010 b_free!25823 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 (t!95785 (t!95785 l!5107)))))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) (and b!852159 b_free!25791 (= (toChars!2626 (transformation!1726 (rule!3149 (h!14604 l!5107)))) (toChars!2626 (transformation!1726 (rule!3149 separatorToken!297))))) b_lambda!28537)))

(check-sat b_and!75051 (not b!852526) (not b!852618) (not d!266403) (not d!266505) (not b!853099) (not b!852546) (not b_lambda!28467) (not b!853075) (not b!853021) (not b!852785) (not b!852622) (not d!266175) (not b!853086) (not b!852620) (not b!852582) b_and!74873 (not b!853102) (not b!852553) (not b!852601) (not d!266173) (not b!852562) (not b!852568) (not b!852948) (not d!266227) (not d!266233) (not b!853042) (not d!266427) (not b!853064) (not b!853093) (not b!853107) (not b!853040) (not bs!231535) (not b!853101) (not d!266355) (not b!852994) (not b!853087) (not b!852610) (not d!266487) (not d!266187) (not b_lambda!28525) (not b_lambda!28537) (not d!266433) (not b!852629) (not b!852765) (not b_next!25855) (not b!852541) (not b_next!25857) b_and!75041 (not b!852794) (not b!853081) (not b_lambda!28529) (not b!852608) (not d!266185) (not d!266235) (not b!852850) (not b!853016) (not b!853091) (not b_next!25853) (not d!266513) (not d!266375) (not bs!231533) (not d!266167) (not b!853028) (not d!266201) (not d!266449) (not b_next!25889) (not b_lambda!28475) (not b!852798) b_and!75047 (not b!852754) (not b!852995) (not b!852550) (not d!266179) (not b!853003) (not d!266511) (not b!853089) (not b!852793) (not b!853034) (not b!852997) (not b!853004) (not b!853008) (not b!852612) (not b!853065) (not d!266207) (not b_next!25875) (not d!266213) (not d!266319) (not b!852564) (not b!853082) (not d!266225) (not b!852780) (not b!853103) (not b_next!25849) (not b!852591) (not b!852771) (not d!266489) tp_is_empty!3977 b_and!74869 (not b!853083) (not b!853070) (not b!852566) (not b!853092) (not b!853068) (not b!853036) (not b_lambda!28531) (not b!852800) (not b!853022) (not b!852190) (not d!266383) (not b!852587) (not b!853011) (not tb!60047) b_and!75037 (not b_next!25873) (not d!266169) (not b!852992) (not b_lambda!28527) (not d!266231) (not b!853060) (not d!266377) (not b!852627) (not b!853059) (not d!266485) b_and!74865 (not b!852804) (not b!852579) (not b!852539) (not b!853032) (not b!852819) (not b!853057) (not b!853024) (not d!266197) (not d!266317) (not b!853009) (not tb!59967) b_and!75049 b_and!75043 (not b_lambda!28473) (not tb!59977) (not d!266215) (not b!853061) (not d!266249) (not b!853029) (not d!266217) (not bm!50505) (not b!853053) (not b!853041) (not d!266205) (not d!266351) (not b!852571) (not b_next!25887) (not b!853030) (not b!853074) (not d!266453) (not d!266517) (not d!266189) (not b!852996) (not bs!231532) b_and!74909 (not b!853014) (not b!852548) (not b_lambda!28533) (not b_lambda!28535) (not b!852589) (not b!852585) (not b_next!25891) (not b!852853) (not b!852630) (not b!853079) (not b_next!25885) (not b!853052) (not d!266503) b_and!75035 (not b!853033) (not d!266183) (not b!853007) (not b!852626) (not d!266435) (not b_lambda!28469) (not b!852554) (not d!266409) (not b_next!25851) (not b!853018) (not d!266395) (not d!266353) (not b!852855) (not b_lambda!28505) (not b!852551) (not d!266203) (not b!852840) (not b!852621) (not d!266251) (not b!852528) (not b!852569) (not b!853002) (not b!852799) (not b_next!25871) (not b!852602) (not d!266315) (not b!852578) (not b!852628) (not b!853080) (not b!853069) b_and!75039 (not b!852753) (not tb!59957) (not b!853012) (not b!852854) (not d!266443) (not b!853098) (not d!266223) b_and!75045 (not d!266171) (not b!853038) (not b!853054) (not b!852784) (not b!853097) (not b!852756) (not b!852786) (not b!852619) (not b!852625) (not b_next!25869) (not d!266247) (not b!853085) (not b!853020) (not b!852538) (not b!852423) (not b!852583) (not b!853025) (not b!853078) (not d!266191) (not b!853106) (not b!852852) (not b!852763) (not b!853051) (not b!853090) (not b!853017) (not d!266455) (not d!266253) (not b!852613) (not b_next!25859) (not b!853076) (not d!266221) (not d!266211) (not b!853067) (not d!266509) (not b!853026) (not b!852755) (not d!266515) (not d!266463) (not b!853063) (not b!852574) (not b!852527) (not b!852611) (not b!853037) b_and!74913 (not b!852575) (not b_lambda!28465) (not b!852593) (not b!853105))
(check-sat b_and!75051 b_and!74873 (not b_next!25855) b_and!74869 b_and!74865 (not b_next!25887) b_and!74909 b_and!75035 (not b_next!25851) (not b_next!25871) b_and!75039 b_and!75045 (not b_next!25869) (not b_next!25859) b_and!74913 (not b_next!25857) b_and!75041 (not b_next!25853) (not b_next!25889) b_and!75047 (not b_next!25875) (not b_next!25849) b_and!75037 (not b_next!25873) b_and!75049 b_and!75043 (not b_next!25891) (not b_next!25885))
