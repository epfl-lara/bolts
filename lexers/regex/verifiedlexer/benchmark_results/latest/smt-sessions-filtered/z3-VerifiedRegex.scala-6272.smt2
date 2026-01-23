; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!310090 () Bool)

(assert start!310090)

(declare-fun b!3323421 () Bool)

(declare-fun b_free!87433 () Bool)

(declare-fun b_next!88137 () Bool)

(assert (=> b!3323421 (= b_free!87433 (not b_next!88137))))

(declare-fun tp!1038296 () Bool)

(declare-fun b_and!228935 () Bool)

(assert (=> b!3323421 (= tp!1038296 b_and!228935)))

(declare-fun b_free!87435 () Bool)

(declare-fun b_next!88139 () Bool)

(assert (=> b!3323421 (= b_free!87435 (not b_next!88139))))

(declare-fun tp!1038294 () Bool)

(declare-fun b_and!228937 () Bool)

(assert (=> b!3323421 (= tp!1038294 b_and!228937)))

(declare-fun b!3323427 () Bool)

(declare-fun b_free!87437 () Bool)

(declare-fun b_next!88141 () Bool)

(assert (=> b!3323427 (= b_free!87437 (not b_next!88141))))

(declare-fun tp!1038288 () Bool)

(declare-fun b_and!228939 () Bool)

(assert (=> b!3323427 (= tp!1038288 b_and!228939)))

(declare-fun b_free!87439 () Bool)

(declare-fun b_next!88143 () Bool)

(assert (=> b!3323427 (= b_free!87439 (not b_next!88143))))

(declare-fun tp!1038297 () Bool)

(declare-fun b_and!228941 () Bool)

(assert (=> b!3323427 (= tp!1038297 b_and!228941)))

(declare-fun b!3323433 () Bool)

(declare-fun b_free!87441 () Bool)

(declare-fun b_next!88145 () Bool)

(assert (=> b!3323433 (= b_free!87441 (not b_next!88145))))

(declare-fun tp!1038295 () Bool)

(declare-fun b_and!228943 () Bool)

(assert (=> b!3323433 (= tp!1038295 b_and!228943)))

(declare-fun b_free!87443 () Bool)

(declare-fun b_next!88147 () Bool)

(assert (=> b!3323433 (= b_free!87443 (not b_next!88147))))

(declare-fun tp!1038290 () Bool)

(declare-fun b_and!228945 () Bool)

(assert (=> b!3323433 (= tp!1038290 b_and!228945)))

(declare-fun b!3323420 () Bool)

(declare-fun res!1348160 () Bool)

(declare-fun e!2066902 () Bool)

(assert (=> b!3323420 (=> (not res!1348160) (not e!2066902))))

(declare-datatypes ((LexerInterface!4913 0))(
  ( (LexerInterfaceExt!4910 (__x!23325 Int)) (Lexer!4911) )
))
(declare-fun thiss!18206 () LexerInterface!4913)

(declare-datatypes ((C!20352 0))(
  ( (C!20353 (val!12224 Int)) )
))
(declare-datatypes ((Regex!10083 0))(
  ( (ElementMatch!10083 (c!564520 C!20352)) (Concat!15637 (regOne!20678 Regex!10083) (regTwo!20678 Regex!10083)) (EmptyExpr!10083) (Star!10083 (reg!10412 Regex!10083)) (EmptyLang!10083) (Union!10083 (regOne!20679 Regex!10083) (regTwo!20679 Regex!10083)) )
))
(declare-datatypes ((List!36754 0))(
  ( (Nil!36630) (Cons!36630 (h!42050 (_ BitVec 16)) (t!256357 List!36754)) )
))
(declare-datatypes ((TokenValue!5554 0))(
  ( (FloatLiteralValue!11108 (text!39323 List!36754)) (TokenValueExt!5553 (__x!23326 Int)) (Broken!27770 (value!172168 List!36754)) (Object!5677) (End!5554) (Def!5554) (Underscore!5554) (Match!5554) (Else!5554) (Error!5554) (Case!5554) (If!5554) (Extends!5554) (Abstract!5554) (Class!5554) (Val!5554) (DelimiterValue!11108 (del!5614 List!36754)) (KeywordValue!5560 (value!172169 List!36754)) (CommentValue!11108 (value!172170 List!36754)) (WhitespaceValue!11108 (value!172171 List!36754)) (IndentationValue!5554 (value!172172 List!36754)) (String!41103) (Int32!5554) (Broken!27771 (value!172173 List!36754)) (Boolean!5555) (Unit!51639) (OperatorValue!5557 (op!5614 List!36754)) (IdentifierValue!11108 (value!172174 List!36754)) (IdentifierValue!11109 (value!172175 List!36754)) (WhitespaceValue!11109 (value!172176 List!36754)) (True!11108) (False!11108) (Broken!27772 (value!172177 List!36754)) (Broken!27773 (value!172178 List!36754)) (True!11109) (RightBrace!5554) (RightBracket!5554) (Colon!5554) (Null!5554) (Comma!5554) (LeftBracket!5554) (False!11109) (LeftBrace!5554) (ImaginaryLiteralValue!5554 (text!39324 List!36754)) (StringLiteralValue!16662 (value!172179 List!36754)) (EOFValue!5554 (value!172180 List!36754)) (IdentValue!5554 (value!172181 List!36754)) (DelimiterValue!11109 (value!172182 List!36754)) (DedentValue!5554 (value!172183 List!36754)) (NewLineValue!5554 (value!172184 List!36754)) (IntegerValue!16662 (value!172185 (_ BitVec 32)) (text!39325 List!36754)) (IntegerValue!16663 (value!172186 Int) (text!39326 List!36754)) (Times!5554) (Or!5554) (Equal!5554) (Minus!5554) (Broken!27774 (value!172187 List!36754)) (And!5554) (Div!5554) (LessEqual!5554) (Mod!5554) (Concat!15638) (Not!5554) (Plus!5554) (SpaceValue!5554 (value!172188 List!36754)) (IntegerValue!16664 (value!172189 Int) (text!39327 List!36754)) (StringLiteralValue!16663 (text!39328 List!36754)) (FloatLiteralValue!11109 (text!39329 List!36754)) (BytesLiteralValue!5554 (value!172190 List!36754)) (CommentValue!11109 (value!172191 List!36754)) (StringLiteralValue!16664 (value!172192 List!36754)) (ErrorTokenValue!5554 (msg!5615 List!36754)) )
))
(declare-datatypes ((List!36755 0))(
  ( (Nil!36631) (Cons!36631 (h!42051 C!20352) (t!256358 List!36755)) )
))
(declare-datatypes ((IArray!22051 0))(
  ( (IArray!22052 (innerList!11083 List!36755)) )
))
(declare-datatypes ((Conc!11023 0))(
  ( (Node!11023 (left!28547 Conc!11023) (right!28877 Conc!11023) (csize!22276 Int) (cheight!11234 Int)) (Leaf!17296 (xs!14161 IArray!22051) (csize!22277 Int)) (Empty!11023) )
))
(declare-datatypes ((BalanceConc!21660 0))(
  ( (BalanceConc!21661 (c!564521 Conc!11023)) )
))
(declare-datatypes ((String!41104 0))(
  ( (String!41105 (value!172193 String)) )
))
(declare-datatypes ((TokenValueInjection!10536 0))(
  ( (TokenValueInjection!10537 (toValue!7480 Int) (toChars!7339 Int)) )
))
(declare-datatypes ((Rule!10448 0))(
  ( (Rule!10449 (regex!5324 Regex!10083) (tag!5876 String!41104) (isSeparator!5324 Bool) (transformation!5324 TokenValueInjection!10536)) )
))
(declare-datatypes ((List!36756 0))(
  ( (Nil!36632) (Cons!36632 (h!42052 Rule!10448) (t!256359 List!36756)) )
))
(declare-fun rules!2135 () List!36756)

(declare-fun rulesInvariant!4310 (LexerInterface!4913 List!36756) Bool)

(assert (=> b!3323420 (= res!1348160 (rulesInvariant!4310 thiss!18206 rules!2135))))

(declare-fun e!2066911 () Bool)

(assert (=> b!3323421 (= e!2066911 (and tp!1038296 tp!1038294))))

(declare-datatypes ((Token!10014 0))(
  ( (Token!10015 (value!172194 TokenValue!5554) (rule!7846 Rule!10448) (size!27685 Int) (originalCharacters!6038 List!36755)) )
))
(declare-datatypes ((List!36757 0))(
  ( (Nil!36633) (Cons!36633 (h!42053 Token!10014) (t!256360 List!36757)) )
))
(declare-fun tokens!494 () List!36757)

(declare-fun e!2066914 () Bool)

(declare-fun e!2066910 () Bool)

(declare-fun b!3323422 () Bool)

(declare-fun tp!1038286 () Bool)

(declare-fun inv!49623 (String!41104) Bool)

(declare-fun inv!49626 (TokenValueInjection!10536) Bool)

(assert (=> b!3323422 (= e!2066910 (and tp!1038286 (inv!49623 (tag!5876 (rule!7846 (h!42053 tokens!494)))) (inv!49626 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) e!2066914))))

(declare-fun separatorToken!241 () Token!10014)

(declare-fun e!2066908 () Bool)

(declare-fun tp!1038289 () Bool)

(declare-fun b!3323423 () Bool)

(assert (=> b!3323423 (= e!2066908 (and tp!1038289 (inv!49623 (tag!5876 (rule!7846 separatorToken!241))) (inv!49626 (transformation!5324 (rule!7846 separatorToken!241))) e!2066911))))

(declare-fun b!3323424 () Bool)

(declare-fun e!2066909 () Bool)

(declare-fun e!2066903 () Bool)

(declare-fun tp!1038287 () Bool)

(assert (=> b!3323424 (= e!2066909 (and e!2066903 tp!1038287))))

(declare-fun b!3323425 () Bool)

(declare-fun tp!1038292 () Bool)

(declare-fun e!2066901 () Bool)

(declare-fun inv!21 (TokenValue!5554) Bool)

(assert (=> b!3323425 (= e!2066901 (and (inv!21 (value!172194 separatorToken!241)) e!2066908 tp!1038292))))

(declare-fun e!2066906 () Bool)

(declare-fun b!3323426 () Bool)

(declare-fun tp!1038298 () Bool)

(declare-fun e!2066907 () Bool)

(declare-fun inv!49627 (Token!10014) Bool)

(assert (=> b!3323426 (= e!2066907 (and (inv!49627 (h!42053 tokens!494)) e!2066906 tp!1038298))))

(assert (=> b!3323427 (= e!2066914 (and tp!1038288 tp!1038297))))

(declare-fun b!3323428 () Bool)

(declare-fun res!1348163 () Bool)

(declare-fun e!2066905 () Bool)

(assert (=> b!3323428 (=> (not res!1348163) (not e!2066905))))

(declare-fun rulesProduceIndividualToken!2405 (LexerInterface!4913 List!36756 Token!10014) Bool)

(assert (=> b!3323428 (= res!1348163 (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3323429 () Bool)

(assert (=> b!3323429 (= e!2066902 e!2066905)))

(declare-fun res!1348162 () Bool)

(assert (=> b!3323429 (=> (not res!1348162) (not e!2066905))))

(declare-datatypes ((IArray!22053 0))(
  ( (IArray!22054 (innerList!11084 List!36757)) )
))
(declare-datatypes ((Conc!11024 0))(
  ( (Node!11024 (left!28548 Conc!11024) (right!28878 Conc!11024) (csize!22278 Int) (cheight!11235 Int)) (Leaf!17297 (xs!14162 IArray!22053) (csize!22279 Int)) (Empty!11024) )
))
(declare-datatypes ((BalanceConc!21662 0))(
  ( (BalanceConc!21663 (c!564522 Conc!11024)) )
))
(declare-fun lt!1129204 () BalanceConc!21662)

(declare-fun rulesProduceEachTokenIndividually!1364 (LexerInterface!4913 List!36756 BalanceConc!21662) Bool)

(assert (=> b!3323429 (= res!1348162 (rulesProduceEachTokenIndividually!1364 thiss!18206 rules!2135 lt!1129204))))

(declare-fun seqFromList!3700 (List!36757) BalanceConc!21662)

(assert (=> b!3323429 (= lt!1129204 (seqFromList!3700 tokens!494))))

(declare-fun b!3323430 () Bool)

(declare-fun res!1348158 () Bool)

(assert (=> b!3323430 (=> (not res!1348158) (not e!2066905))))

(get-info :version)

(assert (=> b!3323430 (= res!1348158 ((_ is Nil!36633) tokens!494))))

(declare-fun res!1348165 () Bool)

(assert (=> start!310090 (=> (not res!1348165) (not e!2066902))))

(assert (=> start!310090 (= res!1348165 ((_ is Lexer!4911) thiss!18206))))

(assert (=> start!310090 e!2066902))

(assert (=> start!310090 true))

(assert (=> start!310090 e!2066909))

(assert (=> start!310090 (and (inv!49627 separatorToken!241) e!2066901)))

(assert (=> start!310090 e!2066907))

(declare-fun b!3323431 () Bool)

(declare-fun lambda!119593 () Int)

(declare-fun filter!538 (List!36757 Int) List!36757)

(declare-fun list!13177 (BalanceConc!21662) List!36757)

(declare-datatypes ((tuple2!36130 0))(
  ( (tuple2!36131 (_1!21199 BalanceConc!21662) (_2!21199 BalanceConc!21660)) )
))
(declare-fun lex!2239 (LexerInterface!4913 List!36756 BalanceConc!21660) tuple2!36130)

(declare-fun printWithSeparatorToken!104 (LexerInterface!4913 BalanceConc!21662 Token!10014) BalanceConc!21660)

(assert (=> b!3323431 (= e!2066905 (not (= (filter!538 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))) lambda!119593) tokens!494)))))

(declare-fun b!3323432 () Bool)

(declare-fun res!1348159 () Bool)

(assert (=> b!3323432 (=> (not res!1348159) (not e!2066905))))

(assert (=> b!3323432 (= res!1348159 (isSeparator!5324 (rule!7846 separatorToken!241)))))

(declare-fun e!2066912 () Bool)

(assert (=> b!3323433 (= e!2066912 (and tp!1038295 tp!1038290))))

(declare-fun b!3323434 () Bool)

(declare-fun res!1348164 () Bool)

(assert (=> b!3323434 (=> (not res!1348164) (not e!2066905))))

(declare-fun sepAndNonSepRulesDisjointChars!1518 (List!36756 List!36756) Bool)

(assert (=> b!3323434 (= res!1348164 (sepAndNonSepRulesDisjointChars!1518 rules!2135 rules!2135))))

(declare-fun b!3323435 () Bool)

(declare-fun tp!1038293 () Bool)

(assert (=> b!3323435 (= e!2066903 (and tp!1038293 (inv!49623 (tag!5876 (h!42052 rules!2135))) (inv!49626 (transformation!5324 (h!42052 rules!2135))) e!2066912))))

(declare-fun b!3323436 () Bool)

(declare-fun res!1348166 () Bool)

(assert (=> b!3323436 (=> (not res!1348166) (not e!2066905))))

(declare-fun forall!7629 (List!36757 Int) Bool)

(assert (=> b!3323436 (= res!1348166 (forall!7629 tokens!494 lambda!119593))))

(declare-fun tp!1038291 () Bool)

(declare-fun b!3323437 () Bool)

(assert (=> b!3323437 (= e!2066906 (and (inv!21 (value!172194 (h!42053 tokens!494))) e!2066910 tp!1038291))))

(declare-fun b!3323438 () Bool)

(declare-fun res!1348161 () Bool)

(assert (=> b!3323438 (=> (not res!1348161) (not e!2066902))))

(declare-fun isEmpty!20783 (List!36756) Bool)

(assert (=> b!3323438 (= res!1348161 (not (isEmpty!20783 rules!2135)))))

(assert (= (and start!310090 res!1348165) b!3323438))

(assert (= (and b!3323438 res!1348161) b!3323420))

(assert (= (and b!3323420 res!1348160) b!3323429))

(assert (= (and b!3323429 res!1348162) b!3323428))

(assert (= (and b!3323428 res!1348163) b!3323432))

(assert (= (and b!3323432 res!1348159) b!3323436))

(assert (= (and b!3323436 res!1348166) b!3323434))

(assert (= (and b!3323434 res!1348164) b!3323430))

(assert (= (and b!3323430 res!1348158) b!3323431))

(assert (= b!3323435 b!3323433))

(assert (= b!3323424 b!3323435))

(assert (= (and start!310090 ((_ is Cons!36632) rules!2135)) b!3323424))

(assert (= b!3323423 b!3323421))

(assert (= b!3323425 b!3323423))

(assert (= start!310090 b!3323425))

(assert (= b!3323422 b!3323427))

(assert (= b!3323437 b!3323422))

(assert (= b!3323426 b!3323437))

(assert (= (and start!310090 ((_ is Cons!36633) tokens!494)) b!3323426))

(declare-fun m!3662597 () Bool)

(assert (=> b!3323434 m!3662597))

(declare-fun m!3662599 () Bool)

(assert (=> b!3323425 m!3662599))

(declare-fun m!3662601 () Bool)

(assert (=> b!3323438 m!3662601))

(declare-fun m!3662603 () Bool)

(assert (=> b!3323428 m!3662603))

(declare-fun m!3662605 () Bool)

(assert (=> start!310090 m!3662605))

(declare-fun m!3662607 () Bool)

(assert (=> b!3323420 m!3662607))

(declare-fun m!3662609 () Bool)

(assert (=> b!3323423 m!3662609))

(declare-fun m!3662611 () Bool)

(assert (=> b!3323423 m!3662611))

(declare-fun m!3662613 () Bool)

(assert (=> b!3323435 m!3662613))

(declare-fun m!3662615 () Bool)

(assert (=> b!3323435 m!3662615))

(declare-fun m!3662617 () Bool)

(assert (=> b!3323431 m!3662617))

(assert (=> b!3323431 m!3662617))

(declare-fun m!3662619 () Bool)

(assert (=> b!3323431 m!3662619))

(declare-fun m!3662621 () Bool)

(assert (=> b!3323431 m!3662621))

(assert (=> b!3323431 m!3662621))

(declare-fun m!3662623 () Bool)

(assert (=> b!3323431 m!3662623))

(declare-fun m!3662625 () Bool)

(assert (=> b!3323436 m!3662625))

(declare-fun m!3662627 () Bool)

(assert (=> b!3323429 m!3662627))

(declare-fun m!3662629 () Bool)

(assert (=> b!3323429 m!3662629))

(declare-fun m!3662631 () Bool)

(assert (=> b!3323437 m!3662631))

(declare-fun m!3662633 () Bool)

(assert (=> b!3323422 m!3662633))

(declare-fun m!3662635 () Bool)

(assert (=> b!3323422 m!3662635))

(declare-fun m!3662637 () Bool)

(assert (=> b!3323426 m!3662637))

(check-sat (not b!3323428) (not b!3323423) (not b!3323420) (not b_next!88145) (not b_next!88139) (not b!3323422) (not b_next!88143) (not b!3323431) (not b_next!88137) b_and!228937 (not b_next!88141) b_and!228945 (not start!310090) (not b!3323438) (not b!3323436) (not b!3323424) b_and!228935 b_and!228943 (not b!3323435) (not b!3323437) b_and!228941 (not b!3323425) (not b_next!88147) (not b!3323429) (not b!3323434) (not b!3323426) b_and!228939)
(check-sat b_and!228945 b_and!228941 (not b_next!88145) (not b_next!88147) (not b_next!88139) b_and!228939 (not b_next!88143) (not b_next!88137) b_and!228937 (not b_next!88141) b_and!228935 b_and!228943)
(get-model)

(declare-fun d!934225 () Bool)

(declare-fun res!1348175 () Bool)

(declare-fun e!2066919 () Bool)

(assert (=> d!934225 (=> res!1348175 e!2066919)))

(assert (=> d!934225 (= res!1348175 ((_ is Nil!36633) tokens!494))))

(assert (=> d!934225 (= (forall!7629 tokens!494 lambda!119593) e!2066919)))

(declare-fun b!3323443 () Bool)

(declare-fun e!2066920 () Bool)

(assert (=> b!3323443 (= e!2066919 e!2066920)))

(declare-fun res!1348176 () Bool)

(assert (=> b!3323443 (=> (not res!1348176) (not e!2066920))))

(declare-fun dynLambda!15088 (Int Token!10014) Bool)

(assert (=> b!3323443 (= res!1348176 (dynLambda!15088 lambda!119593 (h!42053 tokens!494)))))

(declare-fun b!3323444 () Bool)

(assert (=> b!3323444 (= e!2066920 (forall!7629 (t!256360 tokens!494) lambda!119593))))

(assert (= (and d!934225 (not res!1348175)) b!3323443))

(assert (= (and b!3323443 res!1348176) b!3323444))

(declare-fun b_lambda!93679 () Bool)

(assert (=> (not b_lambda!93679) (not b!3323443)))

(declare-fun m!3662639 () Bool)

(assert (=> b!3323443 m!3662639))

(declare-fun m!3662641 () Bool)

(assert (=> b!3323444 m!3662641))

(assert (=> b!3323436 d!934225))

(declare-fun b!3323455 () Bool)

(declare-fun res!1348179 () Bool)

(declare-fun e!2066927 () Bool)

(assert (=> b!3323455 (=> res!1348179 e!2066927)))

(assert (=> b!3323455 (= res!1348179 (not ((_ is IntegerValue!16664) (value!172194 separatorToken!241))))))

(declare-fun e!2066929 () Bool)

(assert (=> b!3323455 (= e!2066929 e!2066927)))

(declare-fun b!3323457 () Bool)

(declare-fun inv!17 (TokenValue!5554) Bool)

(assert (=> b!3323457 (= e!2066929 (inv!17 (value!172194 separatorToken!241)))))

(declare-fun b!3323456 () Bool)

(declare-fun e!2066928 () Bool)

(assert (=> b!3323456 (= e!2066928 e!2066929)))

(declare-fun c!564528 () Bool)

(assert (=> b!3323456 (= c!564528 ((_ is IntegerValue!16663) (value!172194 separatorToken!241)))))

(declare-fun d!934227 () Bool)

(declare-fun c!564527 () Bool)

(assert (=> d!934227 (= c!564527 ((_ is IntegerValue!16662) (value!172194 separatorToken!241)))))

(assert (=> d!934227 (= (inv!21 (value!172194 separatorToken!241)) e!2066928)))

(declare-fun b!3323458 () Bool)

(declare-fun inv!16 (TokenValue!5554) Bool)

(assert (=> b!3323458 (= e!2066928 (inv!16 (value!172194 separatorToken!241)))))

(declare-fun b!3323459 () Bool)

(declare-fun inv!15 (TokenValue!5554) Bool)

(assert (=> b!3323459 (= e!2066927 (inv!15 (value!172194 separatorToken!241)))))

(assert (= (and d!934227 c!564527) b!3323458))

(assert (= (and d!934227 (not c!564527)) b!3323456))

(assert (= (and b!3323456 c!564528) b!3323457))

(assert (= (and b!3323456 (not c!564528)) b!3323455))

(assert (= (and b!3323455 (not res!1348179)) b!3323459))

(declare-fun m!3662643 () Bool)

(assert (=> b!3323457 m!3662643))

(declare-fun m!3662645 () Bool)

(assert (=> b!3323458 m!3662645))

(declare-fun m!3662647 () Bool)

(assert (=> b!3323459 m!3662647))

(assert (=> b!3323425 d!934227))

(declare-fun d!934229 () Bool)

(assert (=> d!934229 (= (inv!49623 (tag!5876 (h!42052 rules!2135))) (= (mod (str.len (value!172193 (tag!5876 (h!42052 rules!2135)))) 2) 0))))

(assert (=> b!3323435 d!934229))

(declare-fun d!934231 () Bool)

(declare-fun res!1348182 () Bool)

(declare-fun e!2066932 () Bool)

(assert (=> d!934231 (=> (not res!1348182) (not e!2066932))))

(declare-fun semiInverseModEq!2209 (Int Int) Bool)

(assert (=> d!934231 (= res!1348182 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))))))

(assert (=> d!934231 (= (inv!49626 (transformation!5324 (h!42052 rules!2135))) e!2066932)))

(declare-fun b!3323462 () Bool)

(declare-fun equivClasses!2108 (Int Int) Bool)

(assert (=> b!3323462 (= e!2066932 (equivClasses!2108 (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))))))

(assert (= (and d!934231 res!1348182) b!3323462))

(declare-fun m!3662649 () Bool)

(assert (=> d!934231 m!3662649))

(declare-fun m!3662651 () Bool)

(assert (=> b!3323462 m!3662651))

(assert (=> b!3323435 d!934231))

(declare-fun d!934233 () Bool)

(declare-fun res!1348187 () Bool)

(declare-fun e!2066937 () Bool)

(assert (=> d!934233 (=> res!1348187 e!2066937)))

(assert (=> d!934233 (= res!1348187 (not ((_ is Cons!36632) rules!2135)))))

(assert (=> d!934233 (= (sepAndNonSepRulesDisjointChars!1518 rules!2135 rules!2135) e!2066937)))

(declare-fun b!3323467 () Bool)

(declare-fun e!2066938 () Bool)

(assert (=> b!3323467 (= e!2066937 e!2066938)))

(declare-fun res!1348188 () Bool)

(assert (=> b!3323467 (=> (not res!1348188) (not e!2066938))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!645 (Rule!10448 List!36756) Bool)

(assert (=> b!3323467 (= res!1348188 (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 rules!2135) rules!2135))))

(declare-fun b!3323468 () Bool)

(assert (=> b!3323468 (= e!2066938 (sepAndNonSepRulesDisjointChars!1518 rules!2135 (t!256359 rules!2135)))))

(assert (= (and d!934233 (not res!1348187)) b!3323467))

(assert (= (and b!3323467 res!1348188) b!3323468))

(declare-fun m!3662653 () Bool)

(assert (=> b!3323467 m!3662653))

(declare-fun m!3662655 () Bool)

(assert (=> b!3323468 m!3662655))

(assert (=> b!3323434 d!934233))

(declare-fun d!934235 () Bool)

(declare-fun lt!1129222 () Bool)

(declare-fun e!2066967 () Bool)

(assert (=> d!934235 (= lt!1129222 e!2066967)))

(declare-fun res!1348220 () Bool)

(assert (=> d!934235 (=> (not res!1348220) (not e!2066967))))

(declare-fun print!1978 (LexerInterface!4913 BalanceConc!21662) BalanceConc!21660)

(declare-fun singletonSeq!2420 (Token!10014) BalanceConc!21662)

(assert (=> d!934235 (= res!1348220 (= (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))) (list!13177 (singletonSeq!2420 separatorToken!241))))))

(declare-fun e!2066968 () Bool)

(assert (=> d!934235 (= lt!1129222 e!2066968)))

(declare-fun res!1348221 () Bool)

(assert (=> d!934235 (=> (not res!1348221) (not e!2066968))))

(declare-fun lt!1129221 () tuple2!36130)

(declare-fun size!27690 (BalanceConc!21662) Int)

(assert (=> d!934235 (= res!1348221 (= (size!27690 (_1!21199 lt!1129221)) 1))))

(assert (=> d!934235 (= lt!1129221 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(assert (=> d!934235 (not (isEmpty!20783 rules!2135))))

(assert (=> d!934235 (= (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 separatorToken!241) lt!1129222)))

(declare-fun b!3323517 () Bool)

(declare-fun res!1348219 () Bool)

(assert (=> b!3323517 (=> (not res!1348219) (not e!2066968))))

(declare-fun apply!8449 (BalanceConc!21662 Int) Token!10014)

(assert (=> b!3323517 (= res!1348219 (= (apply!8449 (_1!21199 lt!1129221) 0) separatorToken!241))))

(declare-fun b!3323518 () Bool)

(declare-fun isEmpty!20787 (BalanceConc!21660) Bool)

(assert (=> b!3323518 (= e!2066968 (isEmpty!20787 (_2!21199 lt!1129221)))))

(declare-fun b!3323519 () Bool)

(assert (=> b!3323519 (= e!2066967 (isEmpty!20787 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))))

(assert (= (and d!934235 res!1348221) b!3323517))

(assert (= (and b!3323517 res!1348219) b!3323518))

(assert (= (and d!934235 res!1348220) b!3323519))

(declare-fun m!3662709 () Bool)

(assert (=> d!934235 m!3662709))

(declare-fun m!3662711 () Bool)

(assert (=> d!934235 m!3662711))

(assert (=> d!934235 m!3662601))

(declare-fun m!3662713 () Bool)

(assert (=> d!934235 m!3662713))

(declare-fun m!3662715 () Bool)

(assert (=> d!934235 m!3662715))

(declare-fun m!3662717 () Bool)

(assert (=> d!934235 m!3662717))

(assert (=> d!934235 m!3662709))

(assert (=> d!934235 m!3662717))

(declare-fun m!3662719 () Bool)

(assert (=> d!934235 m!3662719))

(assert (=> d!934235 m!3662717))

(declare-fun m!3662721 () Bool)

(assert (=> b!3323517 m!3662721))

(declare-fun m!3662723 () Bool)

(assert (=> b!3323518 m!3662723))

(assert (=> b!3323519 m!3662717))

(assert (=> b!3323519 m!3662717))

(assert (=> b!3323519 m!3662709))

(assert (=> b!3323519 m!3662709))

(assert (=> b!3323519 m!3662711))

(declare-fun m!3662725 () Bool)

(assert (=> b!3323519 m!3662725))

(assert (=> b!3323428 d!934235))

(declare-fun d!934245 () Bool)

(assert (=> d!934245 (= (isEmpty!20783 rules!2135) ((_ is Nil!36632) rules!2135))))

(assert (=> b!3323438 d!934245))

(declare-fun b!3323520 () Bool)

(declare-fun res!1348222 () Bool)

(declare-fun e!2066969 () Bool)

(assert (=> b!3323520 (=> res!1348222 e!2066969)))

(assert (=> b!3323520 (= res!1348222 (not ((_ is IntegerValue!16664) (value!172194 (h!42053 tokens!494)))))))

(declare-fun e!2066971 () Bool)

(assert (=> b!3323520 (= e!2066971 e!2066969)))

(declare-fun b!3323522 () Bool)

(assert (=> b!3323522 (= e!2066971 (inv!17 (value!172194 (h!42053 tokens!494))))))

(declare-fun b!3323521 () Bool)

(declare-fun e!2066970 () Bool)

(assert (=> b!3323521 (= e!2066970 e!2066971)))

(declare-fun c!564539 () Bool)

(assert (=> b!3323521 (= c!564539 ((_ is IntegerValue!16663) (value!172194 (h!42053 tokens!494))))))

(declare-fun d!934247 () Bool)

(declare-fun c!564538 () Bool)

(assert (=> d!934247 (= c!564538 ((_ is IntegerValue!16662) (value!172194 (h!42053 tokens!494))))))

(assert (=> d!934247 (= (inv!21 (value!172194 (h!42053 tokens!494))) e!2066970)))

(declare-fun b!3323523 () Bool)

(assert (=> b!3323523 (= e!2066970 (inv!16 (value!172194 (h!42053 tokens!494))))))

(declare-fun b!3323524 () Bool)

(assert (=> b!3323524 (= e!2066969 (inv!15 (value!172194 (h!42053 tokens!494))))))

(assert (= (and d!934247 c!564538) b!3323523))

(assert (= (and d!934247 (not c!564538)) b!3323521))

(assert (= (and b!3323521 c!564539) b!3323522))

(assert (= (and b!3323521 (not c!564539)) b!3323520))

(assert (= (and b!3323520 (not res!1348222)) b!3323524))

(declare-fun m!3662727 () Bool)

(assert (=> b!3323522 m!3662727))

(declare-fun m!3662729 () Bool)

(assert (=> b!3323523 m!3662729))

(declare-fun m!3662731 () Bool)

(assert (=> b!3323524 m!3662731))

(assert (=> b!3323437 d!934247))

(declare-fun d!934249 () Bool)

(declare-fun res!1348227 () Bool)

(declare-fun e!2066974 () Bool)

(assert (=> d!934249 (=> (not res!1348227) (not e!2066974))))

(declare-fun isEmpty!20788 (List!36755) Bool)

(assert (=> d!934249 (= res!1348227 (not (isEmpty!20788 (originalCharacters!6038 (h!42053 tokens!494)))))))

(assert (=> d!934249 (= (inv!49627 (h!42053 tokens!494)) e!2066974)))

(declare-fun b!3323529 () Bool)

(declare-fun res!1348228 () Bool)

(assert (=> b!3323529 (=> (not res!1348228) (not e!2066974))))

(declare-fun list!13180 (BalanceConc!21660) List!36755)

(declare-fun dynLambda!15089 (Int TokenValue!5554) BalanceConc!21660)

(assert (=> b!3323529 (= res!1348228 (= (originalCharacters!6038 (h!42053 tokens!494)) (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(declare-fun b!3323530 () Bool)

(declare-fun size!27691 (List!36755) Int)

(assert (=> b!3323530 (= e!2066974 (= (size!27685 (h!42053 tokens!494)) (size!27691 (originalCharacters!6038 (h!42053 tokens!494)))))))

(assert (= (and d!934249 res!1348227) b!3323529))

(assert (= (and b!3323529 res!1348228) b!3323530))

(declare-fun b_lambda!93683 () Bool)

(assert (=> (not b_lambda!93683) (not b!3323529)))

(declare-fun t!256364 () Bool)

(declare-fun tb!173907 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256364) tb!173907))

(declare-fun b!3323535 () Bool)

(declare-fun e!2066977 () Bool)

(declare-fun tp!1038301 () Bool)

(declare-fun inv!49630 (Conc!11023) Bool)

(assert (=> b!3323535 (= e!2066977 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) tp!1038301))))

(declare-fun result!216940 () Bool)

(declare-fun inv!49631 (BalanceConc!21660) Bool)

(assert (=> tb!173907 (= result!216940 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))) e!2066977))))

(assert (= tb!173907 b!3323535))

(declare-fun m!3662733 () Bool)

(assert (=> b!3323535 m!3662733))

(declare-fun m!3662735 () Bool)

(assert (=> tb!173907 m!3662735))

(assert (=> b!3323529 t!256364))

(declare-fun b_and!228947 () Bool)

(assert (= b_and!228937 (and (=> t!256364 result!216940) b_and!228947)))

(declare-fun t!256366 () Bool)

(declare-fun tb!173909 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256366) tb!173909))

(declare-fun result!216944 () Bool)

(assert (= result!216944 result!216940))

(assert (=> b!3323529 t!256366))

(declare-fun b_and!228949 () Bool)

(assert (= b_and!228941 (and (=> t!256366 result!216944) b_and!228949)))

(declare-fun tb!173911 () Bool)

(declare-fun t!256368 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256368) tb!173911))

(declare-fun result!216946 () Bool)

(assert (= result!216946 result!216940))

(assert (=> b!3323529 t!256368))

(declare-fun b_and!228951 () Bool)

(assert (= b_and!228945 (and (=> t!256368 result!216946) b_and!228951)))

(declare-fun m!3662737 () Bool)

(assert (=> d!934249 m!3662737))

(declare-fun m!3662739 () Bool)

(assert (=> b!3323529 m!3662739))

(assert (=> b!3323529 m!3662739))

(declare-fun m!3662741 () Bool)

(assert (=> b!3323529 m!3662741))

(declare-fun m!3662743 () Bool)

(assert (=> b!3323530 m!3662743))

(assert (=> b!3323426 d!934249))

(declare-fun b!3323551 () Bool)

(declare-fun e!2066989 () List!36757)

(declare-fun call!241310 () List!36757)

(assert (=> b!3323551 (= e!2066989 (Cons!36633 (h!42053 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) call!241310))))

(declare-fun b!3323552 () Bool)

(declare-fun e!2066988 () Bool)

(declare-fun lt!1129228 () List!36757)

(assert (=> b!3323552 (= e!2066988 (forall!7629 lt!1129228 lambda!119593))))

(declare-fun bm!241305 () Bool)

(assert (=> bm!241305 (= call!241310 (filter!538 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) lambda!119593))))

(declare-fun b!3323553 () Bool)

(declare-fun e!2066987 () List!36757)

(assert (=> b!3323553 (= e!2066987 e!2066989)))

(declare-fun c!564545 () Bool)

(assert (=> b!3323553 (= c!564545 (dynLambda!15088 lambda!119593 (h!42053 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3323554 () Bool)

(declare-fun res!1348237 () Bool)

(assert (=> b!3323554 (=> (not res!1348237) (not e!2066988))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4997 (List!36757) (InoxSet Token!10014))

(assert (=> b!3323554 (= res!1348237 (= ((_ map implies) (content!4997 lt!1129228) (content!4997 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) ((as const (InoxSet Token!10014)) true)))))

(declare-fun d!934251 () Bool)

(assert (=> d!934251 e!2066988))

(declare-fun res!1348236 () Bool)

(assert (=> d!934251 (=> (not res!1348236) (not e!2066988))))

(declare-fun size!27692 (List!36757) Int)

(assert (=> d!934251 (= res!1348236 (<= (size!27692 lt!1129228) (size!27692 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (=> d!934251 (= lt!1129228 e!2066987)))

(declare-fun c!564544 () Bool)

(assert (=> d!934251 (= c!564544 ((_ is Nil!36633) (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!934251 (= (filter!538 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))) lambda!119593) lt!1129228)))

(declare-fun b!3323555 () Bool)

(assert (=> b!3323555 (= e!2066987 Nil!36633)))

(declare-fun b!3323556 () Bool)

(assert (=> b!3323556 (= e!2066989 call!241310)))

(assert (= (and d!934251 c!564544) b!3323555))

(assert (= (and d!934251 (not c!564544)) b!3323553))

(assert (= (and b!3323553 c!564545) b!3323551))

(assert (= (and b!3323553 (not c!564545)) b!3323556))

(assert (= (or b!3323551 b!3323556) bm!241305))

(assert (= (and d!934251 res!1348236) b!3323554))

(assert (= (and b!3323554 res!1348237) b!3323552))

(declare-fun b_lambda!93685 () Bool)

(assert (=> (not b_lambda!93685) (not b!3323553)))

(declare-fun m!3662757 () Bool)

(assert (=> d!934251 m!3662757))

(assert (=> d!934251 m!3662621))

(declare-fun m!3662759 () Bool)

(assert (=> d!934251 m!3662759))

(declare-fun m!3662761 () Bool)

(assert (=> b!3323553 m!3662761))

(declare-fun m!3662763 () Bool)

(assert (=> b!3323552 m!3662763))

(declare-fun m!3662765 () Bool)

(assert (=> b!3323554 m!3662765))

(assert (=> b!3323554 m!3662621))

(declare-fun m!3662767 () Bool)

(assert (=> b!3323554 m!3662767))

(declare-fun m!3662769 () Bool)

(assert (=> bm!241305 m!3662769))

(assert (=> b!3323431 d!934251))

(declare-fun d!934261 () Bool)

(declare-fun list!13181 (Conc!11024) List!36757)

(assert (=> d!934261 (= (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))) (list!13181 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun bs!550662 () Bool)

(assert (= bs!550662 d!934261))

(declare-fun m!3662771 () Bool)

(assert (=> bs!550662 m!3662771))

(assert (=> b!3323431 d!934261))

(declare-fun b!3323594 () Bool)

(declare-fun e!2067020 () Bool)

(declare-fun lt!1129231 () tuple2!36130)

(declare-fun isEmpty!20789 (BalanceConc!21662) Bool)

(assert (=> b!3323594 (= e!2067020 (not (isEmpty!20789 (_1!21199 lt!1129231))))))

(declare-fun e!2067019 () Bool)

(declare-fun b!3323595 () Bool)

(declare-datatypes ((tuple2!36134 0))(
  ( (tuple2!36135 (_1!21201 List!36757) (_2!21201 List!36755)) )
))
(declare-fun lexList!1372 (LexerInterface!4913 List!36756 List!36755) tuple2!36134)

(assert (=> b!3323595 (= e!2067019 (= (list!13180 (_2!21199 lt!1129231)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun d!934263 () Bool)

(assert (=> d!934263 e!2067019))

(declare-fun res!1348268 () Bool)

(assert (=> d!934263 (=> (not res!1348268) (not e!2067019))))

(declare-fun e!2067018 () Bool)

(assert (=> d!934263 (= res!1348268 e!2067018)))

(declare-fun c!564548 () Bool)

(assert (=> d!934263 (= c!564548 (> (size!27690 (_1!21199 lt!1129231)) 0))))

(declare-fun lexTailRecV2!982 (LexerInterface!4913 List!36756 BalanceConc!21660 BalanceConc!21660 BalanceConc!21660 BalanceConc!21662) tuple2!36130)

(assert (=> d!934263 (= lt!1129231 (lexTailRecV2!982 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (BalanceConc!21661 Empty!11023) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (BalanceConc!21663 Empty!11024)))))

(assert (=> d!934263 (= (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) lt!1129231)))

(declare-fun b!3323596 () Bool)

(assert (=> b!3323596 (= e!2067018 (= (_2!21199 lt!1129231) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun b!3323597 () Bool)

(declare-fun res!1348267 () Bool)

(assert (=> b!3323597 (=> (not res!1348267) (not e!2067019))))

(assert (=> b!3323597 (= res!1348267 (= (list!13177 (_1!21199 lt!1129231)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun b!3323598 () Bool)

(assert (=> b!3323598 (= e!2067018 e!2067020)))

(declare-fun res!1348266 () Bool)

(declare-fun size!27693 (BalanceConc!21660) Int)

(assert (=> b!3323598 (= res!1348266 (< (size!27693 (_2!21199 lt!1129231)) (size!27693 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> b!3323598 (=> (not res!1348266) (not e!2067020))))

(assert (= (and d!934263 c!564548) b!3323598))

(assert (= (and d!934263 (not c!564548)) b!3323596))

(assert (= (and b!3323598 res!1348266) b!3323594))

(assert (= (and d!934263 res!1348268) b!3323597))

(assert (= (and b!3323597 res!1348267) b!3323595))

(declare-fun m!3662801 () Bool)

(assert (=> b!3323597 m!3662801))

(assert (=> b!3323597 m!3662617))

(declare-fun m!3662803 () Bool)

(assert (=> b!3323597 m!3662803))

(assert (=> b!3323597 m!3662803))

(declare-fun m!3662805 () Bool)

(assert (=> b!3323597 m!3662805))

(declare-fun m!3662807 () Bool)

(assert (=> d!934263 m!3662807))

(assert (=> d!934263 m!3662617))

(assert (=> d!934263 m!3662617))

(declare-fun m!3662809 () Bool)

(assert (=> d!934263 m!3662809))

(declare-fun m!3662811 () Bool)

(assert (=> b!3323594 m!3662811))

(declare-fun m!3662813 () Bool)

(assert (=> b!3323598 m!3662813))

(assert (=> b!3323598 m!3662617))

(declare-fun m!3662815 () Bool)

(assert (=> b!3323598 m!3662815))

(declare-fun m!3662817 () Bool)

(assert (=> b!3323595 m!3662817))

(assert (=> b!3323595 m!3662617))

(assert (=> b!3323595 m!3662803))

(assert (=> b!3323595 m!3662803))

(assert (=> b!3323595 m!3662805))

(assert (=> b!3323431 d!934263))

(declare-fun d!934277 () Bool)

(declare-fun lt!1129236 () BalanceConc!21660)

(declare-fun printWithSeparatorTokenList!222 (LexerInterface!4913 List!36757 Token!10014) List!36755)

(assert (=> d!934277 (= (list!13180 lt!1129236) (printWithSeparatorTokenList!222 thiss!18206 (list!13177 lt!1129204) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!38 (LexerInterface!4913 BalanceConc!21662 Token!10014 Int BalanceConc!21660) BalanceConc!21660)

(assert (=> d!934277 (= lt!1129236 (printWithSeparatorTokenTailRec!38 thiss!18206 lt!1129204 separatorToken!241 0 (BalanceConc!21661 Empty!11023)))))

(assert (=> d!934277 (isSeparator!5324 (rule!7846 separatorToken!241))))

(assert (=> d!934277 (= (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) lt!1129236)))

(declare-fun bs!550663 () Bool)

(assert (= bs!550663 d!934277))

(declare-fun m!3662819 () Bool)

(assert (=> bs!550663 m!3662819))

(declare-fun m!3662821 () Bool)

(assert (=> bs!550663 m!3662821))

(assert (=> bs!550663 m!3662821))

(declare-fun m!3662823 () Bool)

(assert (=> bs!550663 m!3662823))

(declare-fun m!3662825 () Bool)

(assert (=> bs!550663 m!3662825))

(assert (=> b!3323431 d!934277))

(declare-fun d!934279 () Bool)

(declare-fun res!1348271 () Bool)

(declare-fun e!2067023 () Bool)

(assert (=> d!934279 (=> (not res!1348271) (not e!2067023))))

(declare-fun rulesValid!1969 (LexerInterface!4913 List!36756) Bool)

(assert (=> d!934279 (= res!1348271 (rulesValid!1969 thiss!18206 rules!2135))))

(assert (=> d!934279 (= (rulesInvariant!4310 thiss!18206 rules!2135) e!2067023)))

(declare-fun b!3323601 () Bool)

(declare-datatypes ((List!36759 0))(
  ( (Nil!36635) (Cons!36635 (h!42055 String!41104) (t!256412 List!36759)) )
))
(declare-fun noDuplicateTag!1965 (LexerInterface!4913 List!36756 List!36759) Bool)

(assert (=> b!3323601 (= e!2067023 (noDuplicateTag!1965 thiss!18206 rules!2135 Nil!36635))))

(assert (= (and d!934279 res!1348271) b!3323601))

(declare-fun m!3662827 () Bool)

(assert (=> d!934279 m!3662827))

(declare-fun m!3662829 () Bool)

(assert (=> b!3323601 m!3662829))

(assert (=> b!3323420 d!934279))

(declare-fun d!934281 () Bool)

(declare-fun res!1348272 () Bool)

(declare-fun e!2067024 () Bool)

(assert (=> d!934281 (=> (not res!1348272) (not e!2067024))))

(assert (=> d!934281 (= res!1348272 (not (isEmpty!20788 (originalCharacters!6038 separatorToken!241))))))

(assert (=> d!934281 (= (inv!49627 separatorToken!241) e!2067024)))

(declare-fun b!3323602 () Bool)

(declare-fun res!1348273 () Bool)

(assert (=> b!3323602 (=> (not res!1348273) (not e!2067024))))

(assert (=> b!3323602 (= res!1348273 (= (originalCharacters!6038 separatorToken!241) (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(declare-fun b!3323603 () Bool)

(assert (=> b!3323603 (= e!2067024 (= (size!27685 separatorToken!241) (size!27691 (originalCharacters!6038 separatorToken!241))))))

(assert (= (and d!934281 res!1348272) b!3323602))

(assert (= (and b!3323602 res!1348273) b!3323603))

(declare-fun b_lambda!93691 () Bool)

(assert (=> (not b_lambda!93691) (not b!3323602)))

(declare-fun t!256378 () Bool)

(declare-fun tb!173919 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256378) tb!173919))

(declare-fun b!3323604 () Bool)

(declare-fun e!2067025 () Bool)

(declare-fun tp!1038305 () Bool)

(assert (=> b!3323604 (= e!2067025 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) tp!1038305))))

(declare-fun result!216956 () Bool)

(assert (=> tb!173919 (= result!216956 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))) e!2067025))))

(assert (= tb!173919 b!3323604))

(declare-fun m!3662831 () Bool)

(assert (=> b!3323604 m!3662831))

(declare-fun m!3662833 () Bool)

(assert (=> tb!173919 m!3662833))

(assert (=> b!3323602 t!256378))

(declare-fun b_and!228959 () Bool)

(assert (= b_and!228947 (and (=> t!256378 result!216956) b_and!228959)))

(declare-fun t!256380 () Bool)

(declare-fun tb!173921 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256380) tb!173921))

(declare-fun result!216958 () Bool)

(assert (= result!216958 result!216956))

(assert (=> b!3323602 t!256380))

(declare-fun b_and!228961 () Bool)

(assert (= b_and!228949 (and (=> t!256380 result!216958) b_and!228961)))

(declare-fun t!256382 () Bool)

(declare-fun tb!173923 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256382) tb!173923))

(declare-fun result!216960 () Bool)

(assert (= result!216960 result!216956))

(assert (=> b!3323602 t!256382))

(declare-fun b_and!228963 () Bool)

(assert (= b_and!228951 (and (=> t!256382 result!216960) b_and!228963)))

(declare-fun m!3662835 () Bool)

(assert (=> d!934281 m!3662835))

(declare-fun m!3662837 () Bool)

(assert (=> b!3323602 m!3662837))

(assert (=> b!3323602 m!3662837))

(declare-fun m!3662839 () Bool)

(assert (=> b!3323602 m!3662839))

(declare-fun m!3662841 () Bool)

(assert (=> b!3323603 m!3662841))

(assert (=> start!310090 d!934281))

(declare-fun bs!550668 () Bool)

(declare-fun d!934283 () Bool)

(assert (= bs!550668 (and d!934283 b!3323436)))

(declare-fun lambda!119603 () Int)

(assert (=> bs!550668 (not (= lambda!119603 lambda!119593))))

(declare-fun b!3323711 () Bool)

(declare-fun e!2067103 () Bool)

(assert (=> b!3323711 (= e!2067103 true)))

(declare-fun b!3323710 () Bool)

(declare-fun e!2067102 () Bool)

(assert (=> b!3323710 (= e!2067102 e!2067103)))

(declare-fun b!3323709 () Bool)

(declare-fun e!2067101 () Bool)

(assert (=> b!3323709 (= e!2067101 e!2067102)))

(assert (=> d!934283 e!2067101))

(assert (= b!3323710 b!3323711))

(assert (= b!3323709 b!3323710))

(assert (= (and d!934283 ((_ is Cons!36632) rules!2135)) b!3323709))

(declare-fun order!19139 () Int)

(declare-fun order!19137 () Int)

(declare-fun dynLambda!15090 (Int Int) Int)

(declare-fun dynLambda!15091 (Int Int) Int)

(assert (=> b!3323711 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15091 order!19139 lambda!119603))))

(declare-fun order!19141 () Int)

(declare-fun dynLambda!15092 (Int Int) Int)

(assert (=> b!3323711 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15091 order!19139 lambda!119603))))

(assert (=> d!934283 true))

(declare-fun e!2067094 () Bool)

(assert (=> d!934283 e!2067094))

(declare-fun res!1348286 () Bool)

(assert (=> d!934283 (=> (not res!1348286) (not e!2067094))))

(declare-fun lt!1129240 () Bool)

(assert (=> d!934283 (= res!1348286 (= lt!1129240 (forall!7629 (list!13177 lt!1129204) lambda!119603)))))

(declare-fun forall!7631 (BalanceConc!21662 Int) Bool)

(assert (=> d!934283 (= lt!1129240 (forall!7631 lt!1129204 lambda!119603))))

(assert (=> d!934283 (not (isEmpty!20783 rules!2135))))

(assert (=> d!934283 (= (rulesProduceEachTokenIndividually!1364 thiss!18206 rules!2135 lt!1129204) lt!1129240)))

(declare-fun b!3323700 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1781 (LexerInterface!4913 List!36756 List!36757) Bool)

(assert (=> b!3323700 (= e!2067094 (= lt!1129240 (rulesProduceEachTokenIndividuallyList!1781 thiss!18206 rules!2135 (list!13177 lt!1129204))))))

(assert (= (and d!934283 res!1348286) b!3323700))

(assert (=> d!934283 m!3662821))

(assert (=> d!934283 m!3662821))

(declare-fun m!3662891 () Bool)

(assert (=> d!934283 m!3662891))

(declare-fun m!3662893 () Bool)

(assert (=> d!934283 m!3662893))

(assert (=> d!934283 m!3662601))

(assert (=> b!3323700 m!3662821))

(assert (=> b!3323700 m!3662821))

(declare-fun m!3662895 () Bool)

(assert (=> b!3323700 m!3662895))

(assert (=> b!3323429 d!934283))

(declare-fun d!934301 () Bool)

(declare-fun fromListB!1635 (List!36757) BalanceConc!21662)

(assert (=> d!934301 (= (seqFromList!3700 tokens!494) (fromListB!1635 tokens!494))))

(declare-fun bs!550669 () Bool)

(assert (= bs!550669 d!934301))

(declare-fun m!3662897 () Bool)

(assert (=> bs!550669 m!3662897))

(assert (=> b!3323429 d!934301))

(declare-fun d!934303 () Bool)

(assert (=> d!934303 (= (inv!49623 (tag!5876 (rule!7846 separatorToken!241))) (= (mod (str.len (value!172193 (tag!5876 (rule!7846 separatorToken!241)))) 2) 0))))

(assert (=> b!3323423 d!934303))

(declare-fun d!934305 () Bool)

(declare-fun res!1348287 () Bool)

(declare-fun e!2067104 () Bool)

(assert (=> d!934305 (=> (not res!1348287) (not e!2067104))))

(assert (=> d!934305 (= res!1348287 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))))))

(assert (=> d!934305 (= (inv!49626 (transformation!5324 (rule!7846 separatorToken!241))) e!2067104)))

(declare-fun b!3323714 () Bool)

(assert (=> b!3323714 (= e!2067104 (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))))))

(assert (= (and d!934305 res!1348287) b!3323714))

(declare-fun m!3662899 () Bool)

(assert (=> d!934305 m!3662899))

(declare-fun m!3662901 () Bool)

(assert (=> b!3323714 m!3662901))

(assert (=> b!3323423 d!934305))

(declare-fun d!934307 () Bool)

(assert (=> d!934307 (= (inv!49623 (tag!5876 (rule!7846 (h!42053 tokens!494)))) (= (mod (str.len (value!172193 (tag!5876 (rule!7846 (h!42053 tokens!494))))) 2) 0))))

(assert (=> b!3323422 d!934307))

(declare-fun d!934309 () Bool)

(declare-fun res!1348288 () Bool)

(declare-fun e!2067105 () Bool)

(assert (=> d!934309 (=> (not res!1348288) (not e!2067105))))

(assert (=> d!934309 (= res!1348288 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))))))

(assert (=> d!934309 (= (inv!49626 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) e!2067105)))

(declare-fun b!3323715 () Bool)

(assert (=> b!3323715 (= e!2067105 (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))))))

(assert (= (and d!934309 res!1348288) b!3323715))

(declare-fun m!3662903 () Bool)

(assert (=> d!934309 m!3662903))

(declare-fun m!3662905 () Bool)

(assert (=> b!3323715 m!3662905))

(assert (=> b!3323422 d!934309))

(declare-fun b!3323720 () Bool)

(declare-fun e!2067108 () Bool)

(declare-fun tp_is_empty!17409 () Bool)

(declare-fun tp!1038365 () Bool)

(assert (=> b!3323720 (= e!2067108 (and tp_is_empty!17409 tp!1038365))))

(assert (=> b!3323425 (= tp!1038292 e!2067108)))

(assert (= (and b!3323425 ((_ is Cons!36631) (originalCharacters!6038 separatorToken!241))) b!3323720))

(declare-fun e!2067111 () Bool)

(assert (=> b!3323435 (= tp!1038293 e!2067111)))

(declare-fun b!3323732 () Bool)

(declare-fun tp!1038378 () Bool)

(declare-fun tp!1038377 () Bool)

(assert (=> b!3323732 (= e!2067111 (and tp!1038378 tp!1038377))))

(declare-fun b!3323733 () Bool)

(declare-fun tp!1038379 () Bool)

(assert (=> b!3323733 (= e!2067111 tp!1038379)))

(declare-fun b!3323731 () Bool)

(assert (=> b!3323731 (= e!2067111 tp_is_empty!17409)))

(declare-fun b!3323734 () Bool)

(declare-fun tp!1038376 () Bool)

(declare-fun tp!1038380 () Bool)

(assert (=> b!3323734 (= e!2067111 (and tp!1038376 tp!1038380))))

(assert (= (and b!3323435 ((_ is ElementMatch!10083) (regex!5324 (h!42052 rules!2135)))) b!3323731))

(assert (= (and b!3323435 ((_ is Concat!15637) (regex!5324 (h!42052 rules!2135)))) b!3323732))

(assert (= (and b!3323435 ((_ is Star!10083) (regex!5324 (h!42052 rules!2135)))) b!3323733))

(assert (= (and b!3323435 ((_ is Union!10083) (regex!5324 (h!42052 rules!2135)))) b!3323734))

(declare-fun b!3323745 () Bool)

(declare-fun b_free!87453 () Bool)

(declare-fun b_next!88157 () Bool)

(assert (=> b!3323745 (= b_free!87453 (not b_next!88157))))

(declare-fun tp!1038390 () Bool)

(declare-fun b_and!228979 () Bool)

(assert (=> b!3323745 (= tp!1038390 b_and!228979)))

(declare-fun b_free!87455 () Bool)

(declare-fun b_next!88159 () Bool)

(assert (=> b!3323745 (= b_free!87455 (not b_next!88159))))

(declare-fun tb!173939 () Bool)

(declare-fun t!256405 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256405) tb!173939))

(declare-fun result!216990 () Bool)

(assert (= result!216990 result!216940))

(assert (=> b!3323529 t!256405))

(declare-fun t!256407 () Bool)

(declare-fun tb!173941 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256407) tb!173941))

(declare-fun result!216992 () Bool)

(assert (= result!216992 result!216956))

(assert (=> b!3323602 t!256407))

(declare-fun b_and!228981 () Bool)

(declare-fun tp!1038389 () Bool)

(assert (=> b!3323745 (= tp!1038389 (and (=> t!256405 result!216990) (=> t!256407 result!216992) b_and!228981))))

(declare-fun e!2067122 () Bool)

(assert (=> b!3323745 (= e!2067122 (and tp!1038390 tp!1038389))))

(declare-fun tp!1038392 () Bool)

(declare-fun e!2067120 () Bool)

(declare-fun b!3323744 () Bool)

(assert (=> b!3323744 (= e!2067120 (and tp!1038392 (inv!49623 (tag!5876 (h!42052 (t!256359 rules!2135)))) (inv!49626 (transformation!5324 (h!42052 (t!256359 rules!2135)))) e!2067122))))

(declare-fun b!3323743 () Bool)

(declare-fun e!2067123 () Bool)

(declare-fun tp!1038391 () Bool)

(assert (=> b!3323743 (= e!2067123 (and e!2067120 tp!1038391))))

(assert (=> b!3323424 (= tp!1038287 e!2067123)))

(assert (= b!3323744 b!3323745))

(assert (= b!3323743 b!3323744))

(assert (= (and b!3323424 ((_ is Cons!36632) (t!256359 rules!2135))) b!3323743))

(declare-fun m!3662907 () Bool)

(assert (=> b!3323744 m!3662907))

(declare-fun m!3662909 () Bool)

(assert (=> b!3323744 m!3662909))

(declare-fun e!2067124 () Bool)

(assert (=> b!3323423 (= tp!1038289 e!2067124)))

(declare-fun b!3323747 () Bool)

(declare-fun tp!1038395 () Bool)

(declare-fun tp!1038394 () Bool)

(assert (=> b!3323747 (= e!2067124 (and tp!1038395 tp!1038394))))

(declare-fun b!3323748 () Bool)

(declare-fun tp!1038396 () Bool)

(assert (=> b!3323748 (= e!2067124 tp!1038396)))

(declare-fun b!3323746 () Bool)

(assert (=> b!3323746 (= e!2067124 tp_is_empty!17409)))

(declare-fun b!3323749 () Bool)

(declare-fun tp!1038393 () Bool)

(declare-fun tp!1038397 () Bool)

(assert (=> b!3323749 (= e!2067124 (and tp!1038393 tp!1038397))))

(assert (= (and b!3323423 ((_ is ElementMatch!10083) (regex!5324 (rule!7846 separatorToken!241)))) b!3323746))

(assert (= (and b!3323423 ((_ is Concat!15637) (regex!5324 (rule!7846 separatorToken!241)))) b!3323747))

(assert (= (and b!3323423 ((_ is Star!10083) (regex!5324 (rule!7846 separatorToken!241)))) b!3323748))

(assert (= (and b!3323423 ((_ is Union!10083) (regex!5324 (rule!7846 separatorToken!241)))) b!3323749))

(declare-fun e!2067125 () Bool)

(assert (=> b!3323422 (= tp!1038286 e!2067125)))

(declare-fun b!3323751 () Bool)

(declare-fun tp!1038400 () Bool)

(declare-fun tp!1038399 () Bool)

(assert (=> b!3323751 (= e!2067125 (and tp!1038400 tp!1038399))))

(declare-fun b!3323752 () Bool)

(declare-fun tp!1038401 () Bool)

(assert (=> b!3323752 (= e!2067125 tp!1038401)))

(declare-fun b!3323750 () Bool)

(assert (=> b!3323750 (= e!2067125 tp_is_empty!17409)))

(declare-fun b!3323753 () Bool)

(declare-fun tp!1038398 () Bool)

(declare-fun tp!1038402 () Bool)

(assert (=> b!3323753 (= e!2067125 (and tp!1038398 tp!1038402))))

(assert (= (and b!3323422 ((_ is ElementMatch!10083) (regex!5324 (rule!7846 (h!42053 tokens!494))))) b!3323750))

(assert (= (and b!3323422 ((_ is Concat!15637) (regex!5324 (rule!7846 (h!42053 tokens!494))))) b!3323751))

(assert (= (and b!3323422 ((_ is Star!10083) (regex!5324 (rule!7846 (h!42053 tokens!494))))) b!3323752))

(assert (= (and b!3323422 ((_ is Union!10083) (regex!5324 (rule!7846 (h!42053 tokens!494))))) b!3323753))

(declare-fun b!3323754 () Bool)

(declare-fun e!2067126 () Bool)

(declare-fun tp!1038403 () Bool)

(assert (=> b!3323754 (= e!2067126 (and tp_is_empty!17409 tp!1038403))))

(assert (=> b!3323437 (= tp!1038291 e!2067126)))

(assert (= (and b!3323437 ((_ is Cons!36631) (originalCharacters!6038 (h!42053 tokens!494)))) b!3323754))

(declare-fun b!3323768 () Bool)

(declare-fun b_free!87457 () Bool)

(declare-fun b_next!88161 () Bool)

(assert (=> b!3323768 (= b_free!87457 (not b_next!88161))))

(declare-fun tp!1038418 () Bool)

(declare-fun b_and!228983 () Bool)

(assert (=> b!3323768 (= tp!1038418 b_and!228983)))

(declare-fun b_free!87459 () Bool)

(declare-fun b_next!88163 () Bool)

(assert (=> b!3323768 (= b_free!87459 (not b_next!88163))))

(declare-fun t!256409 () Bool)

(declare-fun tb!173943 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256409) tb!173943))

(declare-fun result!216996 () Bool)

(assert (= result!216996 result!216940))

(assert (=> b!3323529 t!256409))

(declare-fun t!256411 () Bool)

(declare-fun tb!173945 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256411) tb!173945))

(declare-fun result!216998 () Bool)

(assert (= result!216998 result!216956))

(assert (=> b!3323602 t!256411))

(declare-fun tp!1038416 () Bool)

(declare-fun b_and!228985 () Bool)

(assert (=> b!3323768 (= tp!1038416 (and (=> t!256409 result!216996) (=> t!256411 result!216998) b_and!228985))))

(declare-fun e!2067144 () Bool)

(assert (=> b!3323768 (= e!2067144 (and tp!1038418 tp!1038416))))

(declare-fun e!2067139 () Bool)

(declare-fun b!3323766 () Bool)

(declare-fun tp!1038417 () Bool)

(declare-fun e!2067143 () Bool)

(assert (=> b!3323766 (= e!2067139 (and (inv!21 (value!172194 (h!42053 (t!256360 tokens!494)))) e!2067143 tp!1038417))))

(declare-fun e!2067142 () Bool)

(assert (=> b!3323426 (= tp!1038298 e!2067142)))

(declare-fun tp!1038415 () Bool)

(declare-fun b!3323767 () Bool)

(assert (=> b!3323767 (= e!2067143 (and tp!1038415 (inv!49623 (tag!5876 (rule!7846 (h!42053 (t!256360 tokens!494))))) (inv!49626 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) e!2067144))))

(declare-fun b!3323765 () Bool)

(declare-fun tp!1038414 () Bool)

(assert (=> b!3323765 (= e!2067142 (and (inv!49627 (h!42053 (t!256360 tokens!494))) e!2067139 tp!1038414))))

(assert (= b!3323767 b!3323768))

(assert (= b!3323766 b!3323767))

(assert (= b!3323765 b!3323766))

(assert (= (and b!3323426 ((_ is Cons!36633) (t!256360 tokens!494))) b!3323765))

(declare-fun m!3662911 () Bool)

(assert (=> b!3323766 m!3662911))

(declare-fun m!3662913 () Bool)

(assert (=> b!3323767 m!3662913))

(declare-fun m!3662915 () Bool)

(assert (=> b!3323767 m!3662915))

(declare-fun m!3662917 () Bool)

(assert (=> b!3323765 m!3662917))

(declare-fun b_lambda!93703 () Bool)

(assert (= b_lambda!93691 (or (and b!3323433 b_free!87443 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323768 b_free!87459 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323745 b_free!87455 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323421 b_free!87435) (and b!3323427 b_free!87439 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) b_lambda!93703)))

(declare-fun b_lambda!93705 () Bool)

(assert (= b_lambda!93679 (or b!3323436 b_lambda!93705)))

(declare-fun bs!550670 () Bool)

(declare-fun d!934311 () Bool)

(assert (= bs!550670 (and d!934311 b!3323436)))

(assert (=> bs!550670 (= (dynLambda!15088 lambda!119593 (h!42053 tokens!494)) (not (isSeparator!5324 (rule!7846 (h!42053 tokens!494)))))))

(assert (=> b!3323443 d!934311))

(declare-fun b_lambda!93707 () Bool)

(assert (= b_lambda!93685 (or b!3323436 b_lambda!93707)))

(declare-fun bs!550671 () Bool)

(declare-fun d!934313 () Bool)

(assert (= bs!550671 (and d!934313 b!3323436)))

(assert (=> bs!550671 (= (dynLambda!15088 lambda!119593 (h!42053 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) (not (isSeparator!5324 (rule!7846 (h!42053 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (=> b!3323553 d!934313))

(declare-fun b_lambda!93709 () Bool)

(assert (= b_lambda!93683 (or (and b!3323745 b_free!87455 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (and b!3323427 b_free!87439) (and b!3323768 b_free!87459 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (and b!3323433 b_free!87443 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (and b!3323421 b_free!87435 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) b_lambda!93709)))

(check-sat (not b!3323519) (not b!3323554) (not b!3323715) (not b_lambda!93705) (not d!934279) (not b_next!88141) (not b!3323552) (not b!3323743) (not b!3323535) (not d!934249) (not tb!173919) (not b_lambda!93709) b_and!228981 (not b!3323732) (not b!3323458) (not b!3323462) (not b!3323597) (not b!3323714) (not tb!173907) (not b!3323518) b_and!228935 b_and!228943 (not b!3323751) b_and!228959 (not b!3323457) (not b!3323753) (not b!3323733) (not b!3323522) tp_is_empty!17409 (not b!3323459) (not b!3323603) (not b!3323734) (not b_next!88161) (not d!934281) (not b_next!88159) (not b!3323744) (not b!3323467) (not b_next!88157) (not b!3323602) (not b!3323517) (not b!3323767) (not d!934309) b_and!228963 (not b_next!88145) (not d!934277) (not b!3323598) (not b!3323601) (not d!934301) (not b!3323529) (not b!3323749) (not b_lambda!93703) (not d!934231) (not b_next!88147) b_and!228985 (not b_next!88139) (not b!3323766) (not d!934305) (not b!3323748) b_and!228979 (not b!3323754) (not b!3323752) (not b!3323524) (not b!3323523) (not b!3323594) (not b!3323530) (not b!3323444) b_and!228983 (not d!934251) (not b!3323468) (not d!934261) (not b_next!88163) (not b!3323604) (not d!934283) (not d!934263) (not b_lambda!93707) b_and!228939 (not bm!241305) (not b!3323765) (not d!934235) (not b!3323595) (not b!3323709) (not b!3323747) (not b_next!88143) (not b!3323700) b_and!228961 (not b_next!88137) (not b!3323720))
(check-sat (not b_next!88141) b_and!228981 b_and!228959 (not b_next!88161) b_and!228963 (not b_next!88145) (not b_next!88139) b_and!228979 b_and!228983 (not b_next!88163) b_and!228939 (not b_next!88137) b_and!228935 b_and!228943 (not b_next!88159) (not b_next!88157) (not b_next!88147) b_and!228985 (not b_next!88143) b_and!228961)
(get-model)

(declare-fun d!934357 () Bool)

(assert (=> d!934357 true))

(declare-fun lambda!119612 () Int)

(declare-fun order!19147 () Int)

(declare-fun dynLambda!15095 (Int Int) Int)

(assert (=> d!934357 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15095 order!19147 lambda!119612))))

(declare-fun Forall2!900 (Int) Bool)

(assert (=> d!934357 (= (equivClasses!2108 (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (Forall2!900 lambda!119612))))

(declare-fun bs!550683 () Bool)

(assert (= bs!550683 d!934357))

(declare-fun m!3663079 () Bool)

(assert (=> bs!550683 m!3663079))

(assert (=> b!3323462 d!934357))

(declare-fun d!934369 () Bool)

(declare-fun e!2067203 () Bool)

(assert (=> d!934369 e!2067203))

(declare-fun res!1348329 () Bool)

(assert (=> d!934369 (=> (not res!1348329) (not e!2067203))))

(declare-fun lt!1129297 () BalanceConc!21662)

(assert (=> d!934369 (= res!1348329 (= (list!13177 lt!1129297) tokens!494))))

(declare-fun fromList!677 (List!36757) Conc!11024)

(assert (=> d!934369 (= lt!1129297 (BalanceConc!21663 (fromList!677 tokens!494)))))

(assert (=> d!934369 (= (fromListB!1635 tokens!494) lt!1129297)))

(declare-fun b!3323862 () Bool)

(declare-fun isBalanced!3305 (Conc!11024) Bool)

(assert (=> b!3323862 (= e!2067203 (isBalanced!3305 (fromList!677 tokens!494)))))

(assert (= (and d!934369 res!1348329) b!3323862))

(declare-fun m!3663089 () Bool)

(assert (=> d!934369 m!3663089))

(declare-fun m!3663091 () Bool)

(assert (=> d!934369 m!3663091))

(assert (=> b!3323862 m!3663091))

(assert (=> b!3323862 m!3663091))

(declare-fun m!3663093 () Bool)

(assert (=> b!3323862 m!3663093))

(assert (=> d!934301 d!934369))

(declare-fun d!934377 () Bool)

(assert (=> d!934377 true))

(declare-fun order!19149 () Int)

(declare-fun lambda!119615 () Int)

(declare-fun dynLambda!15096 (Int Int) Int)

(assert (=> d!934377 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (dynLambda!15096 order!19149 lambda!119615))))

(assert (=> d!934377 true))

(assert (=> d!934377 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (dynLambda!15096 order!19149 lambda!119615))))

(declare-fun Forall!1303 (Int) Bool)

(assert (=> d!934377 (= (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (Forall!1303 lambda!119615))))

(declare-fun bs!550684 () Bool)

(assert (= bs!550684 d!934377))

(declare-fun m!3663095 () Bool)

(assert (=> bs!550684 m!3663095))

(assert (=> d!934309 d!934377))

(declare-fun b!3323875 () Bool)

(declare-fun e!2067211 () Bool)

(declare-fun e!2067210 () Bool)

(assert (=> b!3323875 (= e!2067211 e!2067210)))

(declare-fun res!1348334 () Bool)

(declare-fun rulesUseDisjointChars!306 (Rule!10448 Rule!10448) Bool)

(assert (=> b!3323875 (= res!1348334 (rulesUseDisjointChars!306 (h!42052 rules!2135) (h!42052 rules!2135)))))

(assert (=> b!3323875 (=> (not res!1348334) (not e!2067210))))

(declare-fun b!3323876 () Bool)

(declare-fun call!241314 () Bool)

(assert (=> b!3323876 (= e!2067210 call!241314)))

(declare-fun b!3323877 () Bool)

(declare-fun e!2067212 () Bool)

(assert (=> b!3323877 (= e!2067211 e!2067212)))

(declare-fun res!1348335 () Bool)

(assert (=> b!3323877 (= res!1348335 (not ((_ is Cons!36632) rules!2135)))))

(assert (=> b!3323877 (=> res!1348335 e!2067212)))

(declare-fun b!3323878 () Bool)

(assert (=> b!3323878 (= e!2067212 call!241314)))

(declare-fun d!934379 () Bool)

(declare-fun c!564586 () Bool)

(assert (=> d!934379 (= c!564586 (and ((_ is Cons!36632) rules!2135) (not (= (isSeparator!5324 (h!42052 rules!2135)) (isSeparator!5324 (h!42052 rules!2135))))))))

(assert (=> d!934379 (= (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 rules!2135) rules!2135) e!2067211)))

(declare-fun bm!241309 () Bool)

(assert (=> bm!241309 (= call!241314 (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 rules!2135) (t!256359 rules!2135)))))

(assert (= (and d!934379 c!564586) b!3323875))

(assert (= (and d!934379 (not c!564586)) b!3323877))

(assert (= (and b!3323875 res!1348334) b!3323876))

(assert (= (and b!3323877 (not res!1348335)) b!3323878))

(assert (= (or b!3323876 b!3323878) bm!241309))

(declare-fun m!3663097 () Bool)

(assert (=> b!3323875 m!3663097))

(declare-fun m!3663099 () Bool)

(assert (=> bm!241309 m!3663099))

(assert (=> b!3323467 d!934379))

(declare-fun d!934381 () Bool)

(declare-fun charsToBigInt!1 (List!36754) Int)

(assert (=> d!934381 (= (inv!17 (value!172194 (h!42053 tokens!494))) (= (charsToBigInt!1 (text!39326 (value!172194 (h!42053 tokens!494)))) (value!172186 (value!172194 (h!42053 tokens!494)))))))

(declare-fun bs!550685 () Bool)

(assert (= bs!550685 d!934381))

(declare-fun m!3663101 () Bool)

(assert (=> bs!550685 m!3663101))

(assert (=> b!3323522 d!934381))

(declare-fun d!934383 () Bool)

(declare-fun lt!1129300 () Int)

(assert (=> d!934383 (>= lt!1129300 0)))

(declare-fun e!2067215 () Int)

(assert (=> d!934383 (= lt!1129300 e!2067215)))

(declare-fun c!564589 () Bool)

(assert (=> d!934383 (= c!564589 ((_ is Nil!36631) (originalCharacters!6038 separatorToken!241)))))

(assert (=> d!934383 (= (size!27691 (originalCharacters!6038 separatorToken!241)) lt!1129300)))

(declare-fun b!3323883 () Bool)

(assert (=> b!3323883 (= e!2067215 0)))

(declare-fun b!3323884 () Bool)

(assert (=> b!3323884 (= e!2067215 (+ 1 (size!27691 (t!256358 (originalCharacters!6038 separatorToken!241)))))))

(assert (= (and d!934383 c!564589) b!3323883))

(assert (= (and d!934383 (not c!564589)) b!3323884))

(declare-fun m!3663103 () Bool)

(assert (=> b!3323884 m!3663103))

(assert (=> b!3323603 d!934383))

(declare-fun b!3323885 () Bool)

(declare-fun res!1348336 () Bool)

(declare-fun e!2067216 () Bool)

(assert (=> b!3323885 (=> res!1348336 e!2067216)))

(assert (=> b!3323885 (= res!1348336 (not ((_ is IntegerValue!16664) (value!172194 (h!42053 (t!256360 tokens!494))))))))

(declare-fun e!2067218 () Bool)

(assert (=> b!3323885 (= e!2067218 e!2067216)))

(declare-fun b!3323887 () Bool)

(assert (=> b!3323887 (= e!2067218 (inv!17 (value!172194 (h!42053 (t!256360 tokens!494)))))))

(declare-fun b!3323886 () Bool)

(declare-fun e!2067217 () Bool)

(assert (=> b!3323886 (= e!2067217 e!2067218)))

(declare-fun c!564591 () Bool)

(assert (=> b!3323886 (= c!564591 ((_ is IntegerValue!16663) (value!172194 (h!42053 (t!256360 tokens!494)))))))

(declare-fun d!934385 () Bool)

(declare-fun c!564590 () Bool)

(assert (=> d!934385 (= c!564590 ((_ is IntegerValue!16662) (value!172194 (h!42053 (t!256360 tokens!494)))))))

(assert (=> d!934385 (= (inv!21 (value!172194 (h!42053 (t!256360 tokens!494)))) e!2067217)))

(declare-fun b!3323888 () Bool)

(assert (=> b!3323888 (= e!2067217 (inv!16 (value!172194 (h!42053 (t!256360 tokens!494)))))))

(declare-fun b!3323889 () Bool)

(assert (=> b!3323889 (= e!2067216 (inv!15 (value!172194 (h!42053 (t!256360 tokens!494)))))))

(assert (= (and d!934385 c!564590) b!3323888))

(assert (= (and d!934385 (not c!564590)) b!3323886))

(assert (= (and b!3323886 c!564591) b!3323887))

(assert (= (and b!3323886 (not c!564591)) b!3323885))

(assert (= (and b!3323885 (not res!1348336)) b!3323889))

(declare-fun m!3663105 () Bool)

(assert (=> b!3323887 m!3663105))

(declare-fun m!3663107 () Bool)

(assert (=> b!3323888 m!3663107))

(declare-fun m!3663109 () Bool)

(assert (=> b!3323889 m!3663109))

(assert (=> b!3323766 d!934385))

(declare-fun d!934387 () Bool)

(declare-fun charsToBigInt!0 (List!36754 Int) Int)

(assert (=> d!934387 (= (inv!15 (value!172194 (h!42053 tokens!494))) (= (charsToBigInt!0 (text!39327 (value!172194 (h!42053 tokens!494))) 0) (value!172189 (value!172194 (h!42053 tokens!494)))))))

(declare-fun bs!550686 () Bool)

(assert (= bs!550686 d!934387))

(declare-fun m!3663111 () Bool)

(assert (=> bs!550686 m!3663111))

(assert (=> b!3323524 d!934387))

(declare-fun bs!550704 () Bool)

(declare-fun d!934389 () Bool)

(assert (= bs!550704 (and d!934389 b!3323436)))

(declare-fun lambda!119627 () Int)

(assert (=> bs!550704 (not (= lambda!119627 lambda!119593))))

(declare-fun bs!550705 () Bool)

(assert (= bs!550705 (and d!934389 d!934283)))

(assert (=> bs!550705 (= lambda!119627 lambda!119603)))

(declare-fun b!3323925 () Bool)

(declare-fun e!2067247 () Bool)

(assert (=> b!3323925 (= e!2067247 true)))

(declare-fun b!3323924 () Bool)

(declare-fun e!2067246 () Bool)

(assert (=> b!3323924 (= e!2067246 e!2067247)))

(declare-fun b!3323923 () Bool)

(declare-fun e!2067245 () Bool)

(assert (=> b!3323923 (= e!2067245 e!2067246)))

(assert (=> d!934389 e!2067245))

(assert (= b!3323924 b!3323925))

(assert (= b!3323923 b!3323924))

(assert (= (and d!934389 ((_ is Cons!36632) rules!2135)) b!3323923))

(assert (=> b!3323925 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15091 order!19139 lambda!119627))))

(assert (=> b!3323925 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15091 order!19139 lambda!119627))))

(assert (=> d!934389 true))

(declare-fun lt!1129312 () Bool)

(assert (=> d!934389 (= lt!1129312 (forall!7629 (list!13177 lt!1129204) lambda!119627))))

(declare-fun e!2067243 () Bool)

(assert (=> d!934389 (= lt!1129312 e!2067243)))

(declare-fun res!1348354 () Bool)

(assert (=> d!934389 (=> res!1348354 e!2067243)))

(assert (=> d!934389 (= res!1348354 (not ((_ is Cons!36633) (list!13177 lt!1129204))))))

(assert (=> d!934389 (not (isEmpty!20783 rules!2135))))

(assert (=> d!934389 (= (rulesProduceEachTokenIndividuallyList!1781 thiss!18206 rules!2135 (list!13177 lt!1129204)) lt!1129312)))

(declare-fun b!3323921 () Bool)

(declare-fun e!2067244 () Bool)

(assert (=> b!3323921 (= e!2067243 e!2067244)))

(declare-fun res!1348353 () Bool)

(assert (=> b!3323921 (=> (not res!1348353) (not e!2067244))))

(assert (=> b!3323921 (= res!1348353 (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 (h!42053 (list!13177 lt!1129204))))))

(declare-fun b!3323922 () Bool)

(assert (=> b!3323922 (= e!2067244 (rulesProduceEachTokenIndividuallyList!1781 thiss!18206 rules!2135 (t!256360 (list!13177 lt!1129204))))))

(assert (= (and d!934389 (not res!1348354)) b!3323921))

(assert (= (and b!3323921 res!1348353) b!3323922))

(assert (=> d!934389 m!3662821))

(declare-fun m!3663161 () Bool)

(assert (=> d!934389 m!3663161))

(assert (=> d!934389 m!3662601))

(declare-fun m!3663163 () Bool)

(assert (=> b!3323921 m!3663163))

(declare-fun m!3663165 () Bool)

(assert (=> b!3323922 m!3663165))

(assert (=> b!3323700 d!934389))

(declare-fun d!934427 () Bool)

(assert (=> d!934427 (= (list!13177 lt!1129204) (list!13181 (c!564522 lt!1129204)))))

(declare-fun bs!550707 () Bool)

(assert (= bs!550707 d!934427))

(declare-fun m!3663169 () Bool)

(assert (=> bs!550707 m!3663169))

(assert (=> b!3323700 d!934427))

(declare-fun bs!550708 () Bool)

(declare-fun d!934431 () Bool)

(assert (= bs!550708 (and d!934431 d!934377)))

(declare-fun lambda!119628 () Int)

(assert (=> bs!550708 (= (and (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (= (toValue!7480 (transformation!5324 (h!42052 rules!2135))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (= lambda!119628 lambda!119615))))

(assert (=> d!934431 true))

(assert (=> d!934431 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15096 order!19149 lambda!119628))))

(assert (=> d!934431 true))

(assert (=> d!934431 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15096 order!19149 lambda!119628))))

(assert (=> d!934431 (= (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (Forall!1303 lambda!119628))))

(declare-fun bs!550709 () Bool)

(assert (= bs!550709 d!934431))

(declare-fun m!3663171 () Bool)

(assert (=> bs!550709 m!3663171))

(assert (=> d!934231 d!934431))

(declare-fun d!934433 () Bool)

(assert (=> d!934433 (= (inv!49623 (tag!5876 (rule!7846 (h!42053 (t!256360 tokens!494))))) (= (mod (str.len (value!172193 (tag!5876 (rule!7846 (h!42053 (t!256360 tokens!494)))))) 2) 0))))

(assert (=> b!3323767 d!934433))

(declare-fun d!934435 () Bool)

(declare-fun res!1348355 () Bool)

(declare-fun e!2067250 () Bool)

(assert (=> d!934435 (=> (not res!1348355) (not e!2067250))))

(assert (=> d!934435 (= res!1348355 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))))))

(assert (=> d!934435 (= (inv!49626 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) e!2067250)))

(declare-fun b!3323930 () Bool)

(assert (=> b!3323930 (= e!2067250 (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))))))

(assert (= (and d!934435 res!1348355) b!3323930))

(declare-fun m!3663173 () Bool)

(assert (=> d!934435 m!3663173))

(declare-fun m!3663175 () Bool)

(assert (=> b!3323930 m!3663175))

(assert (=> b!3323767 d!934435))

(declare-fun d!934437 () Bool)

(declare-fun c!564604 () Bool)

(assert (=> d!934437 (= c!564604 ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(declare-fun e!2067264 () Bool)

(assert (=> d!934437 (= (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) e!2067264)))

(declare-fun b!3323949 () Bool)

(declare-fun inv!49634 (Conc!11023) Bool)

(assert (=> b!3323949 (= e!2067264 (inv!49634 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(declare-fun b!3323950 () Bool)

(declare-fun e!2067265 () Bool)

(assert (=> b!3323950 (= e!2067264 e!2067265)))

(declare-fun res!1348364 () Bool)

(assert (=> b!3323950 (= res!1348364 (not ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(assert (=> b!3323950 (=> res!1348364 e!2067265)))

(declare-fun b!3323951 () Bool)

(declare-fun inv!49635 (Conc!11023) Bool)

(assert (=> b!3323951 (= e!2067265 (inv!49635 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(assert (= (and d!934437 c!564604) b!3323949))

(assert (= (and d!934437 (not c!564604)) b!3323950))

(assert (= (and b!3323950 (not res!1348364)) b!3323951))

(declare-fun m!3663183 () Bool)

(assert (=> b!3323949 m!3663183))

(declare-fun m!3663185 () Bool)

(assert (=> b!3323951 m!3663185))

(assert (=> b!3323535 d!934437))

(declare-fun d!934443 () Bool)

(declare-fun lt!1129317 () Bool)

(assert (=> d!934443 (= lt!1129317 (isEmpty!20788 (list!13180 (_2!21199 lt!1129221))))))

(declare-fun isEmpty!20792 (Conc!11023) Bool)

(assert (=> d!934443 (= lt!1129317 (isEmpty!20792 (c!564521 (_2!21199 lt!1129221))))))

(assert (=> d!934443 (= (isEmpty!20787 (_2!21199 lt!1129221)) lt!1129317)))

(declare-fun bs!550711 () Bool)

(assert (= bs!550711 d!934443))

(declare-fun m!3663187 () Bool)

(assert (=> bs!550711 m!3663187))

(assert (=> bs!550711 m!3663187))

(declare-fun m!3663189 () Bool)

(assert (=> bs!550711 m!3663189))

(declare-fun m!3663191 () Bool)

(assert (=> bs!550711 m!3663191))

(assert (=> b!3323518 d!934443))

(declare-fun d!934445 () Bool)

(assert (=> d!934445 (= (list!13177 (singletonSeq!2420 separatorToken!241)) (list!13181 (c!564522 (singletonSeq!2420 separatorToken!241))))))

(declare-fun bs!550712 () Bool)

(assert (= bs!550712 d!934445))

(declare-fun m!3663193 () Bool)

(assert (=> bs!550712 m!3663193))

(assert (=> d!934235 d!934445))

(declare-fun d!934447 () Bool)

(assert (=> d!934447 (= (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))) (list!13181 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(declare-fun bs!550713 () Bool)

(assert (= bs!550713 d!934447))

(declare-fun m!3663195 () Bool)

(assert (=> bs!550713 m!3663195))

(assert (=> d!934235 d!934447))

(declare-fun d!934449 () Bool)

(declare-fun lt!1129326 () BalanceConc!21660)

(declare-fun printList!1461 (LexerInterface!4913 List!36757) List!36755)

(assert (=> d!934449 (= (list!13180 lt!1129326) (printList!1461 thiss!18206 (list!13177 (singletonSeq!2420 separatorToken!241))))))

(declare-fun printTailRec!1408 (LexerInterface!4913 BalanceConc!21662 Int BalanceConc!21660) BalanceConc!21660)

(assert (=> d!934449 (= lt!1129326 (printTailRec!1408 thiss!18206 (singletonSeq!2420 separatorToken!241) 0 (BalanceConc!21661 Empty!11023)))))

(assert (=> d!934449 (= (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) lt!1129326)))

(declare-fun bs!550718 () Bool)

(assert (= bs!550718 d!934449))

(declare-fun m!3663243 () Bool)

(assert (=> bs!550718 m!3663243))

(assert (=> bs!550718 m!3662717))

(assert (=> bs!550718 m!3662719))

(assert (=> bs!550718 m!3662719))

(declare-fun m!3663245 () Bool)

(assert (=> bs!550718 m!3663245))

(assert (=> bs!550718 m!3662717))

(declare-fun m!3663247 () Bool)

(assert (=> bs!550718 m!3663247))

(assert (=> d!934235 d!934449))

(assert (=> d!934235 d!934245))

(declare-fun b!3323975 () Bool)

(declare-fun e!2067283 () Bool)

(declare-fun lt!1129327 () tuple2!36130)

(assert (=> b!3323975 (= e!2067283 (not (isEmpty!20789 (_1!21199 lt!1129327))))))

(declare-fun e!2067282 () Bool)

(declare-fun b!3323976 () Bool)

(assert (=> b!3323976 (= e!2067282 (= (list!13180 (_2!21199 lt!1129327)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(declare-fun d!934473 () Bool)

(assert (=> d!934473 e!2067282))

(declare-fun res!1348375 () Bool)

(assert (=> d!934473 (=> (not res!1348375) (not e!2067282))))

(declare-fun e!2067281 () Bool)

(assert (=> d!934473 (= res!1348375 e!2067281)))

(declare-fun c!564612 () Bool)

(assert (=> d!934473 (= c!564612 (> (size!27690 (_1!21199 lt!1129327)) 0))))

(assert (=> d!934473 (= lt!1129327 (lexTailRecV2!982 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) (BalanceConc!21661 Empty!11023) (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) (BalanceConc!21663 Empty!11024)))))

(assert (=> d!934473 (= (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))) lt!1129327)))

(declare-fun b!3323977 () Bool)

(assert (=> b!3323977 (= e!2067281 (= (_2!21199 lt!1129327) (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(declare-fun b!3323978 () Bool)

(declare-fun res!1348374 () Bool)

(assert (=> b!3323978 (=> (not res!1348374) (not e!2067282))))

(assert (=> b!3323978 (= res!1348374 (= (list!13177 (_1!21199 lt!1129327)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(declare-fun b!3323979 () Bool)

(assert (=> b!3323979 (= e!2067281 e!2067283)))

(declare-fun res!1348373 () Bool)

(assert (=> b!3323979 (= res!1348373 (< (size!27693 (_2!21199 lt!1129327)) (size!27693 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(assert (=> b!3323979 (=> (not res!1348373) (not e!2067283))))

(assert (= (and d!934473 c!564612) b!3323979))

(assert (= (and d!934473 (not c!564612)) b!3323977))

(assert (= (and b!3323979 res!1348373) b!3323975))

(assert (= (and d!934473 res!1348375) b!3323978))

(assert (= (and b!3323978 res!1348374) b!3323976))

(declare-fun m!3663249 () Bool)

(assert (=> b!3323978 m!3663249))

(assert (=> b!3323978 m!3662709))

(declare-fun m!3663251 () Bool)

(assert (=> b!3323978 m!3663251))

(assert (=> b!3323978 m!3663251))

(declare-fun m!3663253 () Bool)

(assert (=> b!3323978 m!3663253))

(declare-fun m!3663255 () Bool)

(assert (=> d!934473 m!3663255))

(assert (=> d!934473 m!3662709))

(assert (=> d!934473 m!3662709))

(declare-fun m!3663257 () Bool)

(assert (=> d!934473 m!3663257))

(declare-fun m!3663261 () Bool)

(assert (=> b!3323975 m!3663261))

(declare-fun m!3663265 () Bool)

(assert (=> b!3323979 m!3663265))

(assert (=> b!3323979 m!3662709))

(declare-fun m!3663267 () Bool)

(assert (=> b!3323979 m!3663267))

(declare-fun m!3663269 () Bool)

(assert (=> b!3323976 m!3663269))

(assert (=> b!3323976 m!3662709))

(assert (=> b!3323976 m!3663251))

(assert (=> b!3323976 m!3663251))

(assert (=> b!3323976 m!3663253))

(assert (=> d!934235 d!934473))

(declare-fun d!934477 () Bool)

(declare-fun lt!1129335 () Int)

(assert (=> d!934477 (= lt!1129335 (size!27692 (list!13177 (_1!21199 lt!1129221))))))

(declare-fun size!27695 (Conc!11024) Int)

(assert (=> d!934477 (= lt!1129335 (size!27695 (c!564522 (_1!21199 lt!1129221))))))

(assert (=> d!934477 (= (size!27690 (_1!21199 lt!1129221)) lt!1129335)))

(declare-fun bs!550725 () Bool)

(assert (= bs!550725 d!934477))

(declare-fun m!3663279 () Bool)

(assert (=> bs!550725 m!3663279))

(assert (=> bs!550725 m!3663279))

(declare-fun m!3663281 () Bool)

(assert (=> bs!550725 m!3663281))

(declare-fun m!3663283 () Bool)

(assert (=> bs!550725 m!3663283))

(assert (=> d!934235 d!934477))

(declare-fun d!934485 () Bool)

(declare-fun e!2067286 () Bool)

(assert (=> d!934485 e!2067286))

(declare-fun res!1348378 () Bool)

(assert (=> d!934485 (=> (not res!1348378) (not e!2067286))))

(declare-fun lt!1129338 () BalanceConc!21662)

(assert (=> d!934485 (= res!1348378 (= (list!13177 lt!1129338) (Cons!36633 separatorToken!241 Nil!36633)))))

(declare-fun singleton!1046 (Token!10014) BalanceConc!21662)

(assert (=> d!934485 (= lt!1129338 (singleton!1046 separatorToken!241))))

(assert (=> d!934485 (= (singletonSeq!2420 separatorToken!241) lt!1129338)))

(declare-fun b!3323982 () Bool)

(assert (=> b!3323982 (= e!2067286 (isBalanced!3305 (c!564522 lt!1129338)))))

(assert (= (and d!934485 res!1348378) b!3323982))

(declare-fun m!3663285 () Bool)

(assert (=> d!934485 m!3663285))

(declare-fun m!3663287 () Bool)

(assert (=> d!934485 m!3663287))

(declare-fun m!3663289 () Bool)

(assert (=> b!3323982 m!3663289))

(assert (=> d!934235 d!934485))

(declare-fun d!934487 () Bool)

(declare-fun lt!1129339 () Int)

(assert (=> d!934487 (>= lt!1129339 0)))

(declare-fun e!2067287 () Int)

(assert (=> d!934487 (= lt!1129339 e!2067287)))

(declare-fun c!564613 () Bool)

(assert (=> d!934487 (= c!564613 ((_ is Nil!36631) (originalCharacters!6038 (h!42053 tokens!494))))))

(assert (=> d!934487 (= (size!27691 (originalCharacters!6038 (h!42053 tokens!494))) lt!1129339)))

(declare-fun b!3323983 () Bool)

(assert (=> b!3323983 (= e!2067287 0)))

(declare-fun b!3323984 () Bool)

(assert (=> b!3323984 (= e!2067287 (+ 1 (size!27691 (t!256358 (originalCharacters!6038 (h!42053 tokens!494))))))))

(assert (= (and d!934487 c!564613) b!3323983))

(assert (= (and d!934487 (not c!564613)) b!3323984))

(declare-fun m!3663291 () Bool)

(assert (=> b!3323984 m!3663291))

(assert (=> b!3323530 d!934487))

(declare-fun d!934489 () Bool)

(declare-fun res!1348379 () Bool)

(declare-fun e!2067288 () Bool)

(assert (=> d!934489 (=> res!1348379 e!2067288)))

(assert (=> d!934489 (= res!1348379 ((_ is Nil!36633) (t!256360 tokens!494)))))

(assert (=> d!934489 (= (forall!7629 (t!256360 tokens!494) lambda!119593) e!2067288)))

(declare-fun b!3323985 () Bool)

(declare-fun e!2067289 () Bool)

(assert (=> b!3323985 (= e!2067288 e!2067289)))

(declare-fun res!1348380 () Bool)

(assert (=> b!3323985 (=> (not res!1348380) (not e!2067289))))

(assert (=> b!3323985 (= res!1348380 (dynLambda!15088 lambda!119593 (h!42053 (t!256360 tokens!494))))))

(declare-fun b!3323986 () Bool)

(assert (=> b!3323986 (= e!2067289 (forall!7629 (t!256360 (t!256360 tokens!494)) lambda!119593))))

(assert (= (and d!934489 (not res!1348379)) b!3323985))

(assert (= (and b!3323985 res!1348380) b!3323986))

(declare-fun b_lambda!93721 () Bool)

(assert (=> (not b_lambda!93721) (not b!3323985)))

(declare-fun m!3663293 () Bool)

(assert (=> b!3323985 m!3663293))

(declare-fun m!3663295 () Bool)

(assert (=> b!3323986 m!3663295))

(assert (=> b!3323444 d!934489))

(declare-fun e!2067292 () List!36757)

(declare-fun call!241318 () List!36757)

(declare-fun b!3323987 () Bool)

(assert (=> b!3323987 (= e!2067292 (Cons!36633 (h!42053 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) call!241318))))

(declare-fun b!3323988 () Bool)

(declare-fun e!2067291 () Bool)

(declare-fun lt!1129340 () List!36757)

(assert (=> b!3323988 (= e!2067291 (forall!7629 lt!1129340 lambda!119593))))

(declare-fun bm!241313 () Bool)

(assert (=> bm!241313 (= call!241318 (filter!538 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) lambda!119593))))

(declare-fun b!3323989 () Bool)

(declare-fun e!2067290 () List!36757)

(assert (=> b!3323989 (= e!2067290 e!2067292)))

(declare-fun c!564615 () Bool)

(assert (=> b!3323989 (= c!564615 (dynLambda!15088 lambda!119593 (h!42053 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(declare-fun b!3323990 () Bool)

(declare-fun res!1348382 () Bool)

(assert (=> b!3323990 (=> (not res!1348382) (not e!2067291))))

(assert (=> b!3323990 (= res!1348382 (= ((_ map implies) (content!4997 lt!1129340) (content!4997 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) ((as const (InoxSet Token!10014)) true)))))

(declare-fun d!934491 () Bool)

(assert (=> d!934491 e!2067291))

(declare-fun res!1348381 () Bool)

(assert (=> d!934491 (=> (not res!1348381) (not e!2067291))))

(assert (=> d!934491 (= res!1348381 (<= (size!27692 lt!1129340) (size!27692 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(assert (=> d!934491 (= lt!1129340 e!2067290)))

(declare-fun c!564614 () Bool)

(assert (=> d!934491 (= c!564614 ((_ is Nil!36633) (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (=> d!934491 (= (filter!538 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) lambda!119593) lt!1129340)))

(declare-fun b!3323991 () Bool)

(assert (=> b!3323991 (= e!2067290 Nil!36633)))

(declare-fun b!3323992 () Bool)

(assert (=> b!3323992 (= e!2067292 call!241318)))

(assert (= (and d!934491 c!564614) b!3323991))

(assert (= (and d!934491 (not c!564614)) b!3323989))

(assert (= (and b!3323989 c!564615) b!3323987))

(assert (= (and b!3323989 (not c!564615)) b!3323992))

(assert (= (or b!3323987 b!3323992) bm!241313))

(assert (= (and d!934491 res!1348381) b!3323990))

(assert (= (and b!3323990 res!1348382) b!3323988))

(declare-fun b_lambda!93723 () Bool)

(assert (=> (not b_lambda!93723) (not b!3323989)))

(declare-fun m!3663297 () Bool)

(assert (=> d!934491 m!3663297))

(declare-fun m!3663299 () Bool)

(assert (=> d!934491 m!3663299))

(declare-fun m!3663301 () Bool)

(assert (=> b!3323989 m!3663301))

(declare-fun m!3663303 () Bool)

(assert (=> b!3323988 m!3663303))

(declare-fun m!3663305 () Bool)

(assert (=> b!3323990 m!3663305))

(declare-fun m!3663307 () Bool)

(assert (=> b!3323990 m!3663307))

(declare-fun m!3663309 () Bool)

(assert (=> bm!241313 m!3663309))

(assert (=> bm!241305 d!934491))

(declare-fun d!934493 () Bool)

(assert (=> d!934493 (= (inv!17 (value!172194 separatorToken!241)) (= (charsToBigInt!1 (text!39326 (value!172194 separatorToken!241))) (value!172186 (value!172194 separatorToken!241))))))

(declare-fun bs!550726 () Bool)

(assert (= bs!550726 d!934493))

(declare-fun m!3663311 () Bool)

(assert (=> bs!550726 m!3663311))

(assert (=> b!3323457 d!934493))

(declare-fun d!934495 () Bool)

(declare-fun list!13184 (Conc!11023) List!36755)

(assert (=> d!934495 (= (list!13180 (_2!21199 lt!1129231)) (list!13184 (c!564521 (_2!21199 lt!1129231))))))

(declare-fun bs!550727 () Bool)

(assert (= bs!550727 d!934495))

(declare-fun m!3663313 () Bool)

(assert (=> bs!550727 m!3663313))

(assert (=> b!3323595 d!934495))

(declare-fun b!3324003 () Bool)

(declare-fun e!2067301 () tuple2!36134)

(declare-datatypes ((tuple2!36138 0))(
  ( (tuple2!36139 (_1!21203 Token!10014) (_2!21203 List!36755)) )
))
(declare-datatypes ((Option!7308 0))(
  ( (None!7307) (Some!7307 (v!36171 tuple2!36138)) )
))
(declare-fun lt!1129347 () Option!7308)

(declare-fun lt!1129349 () tuple2!36134)

(assert (=> b!3324003 (= e!2067301 (tuple2!36135 (Cons!36633 (_1!21203 (v!36171 lt!1129347)) (_1!21201 lt!1129349)) (_2!21201 lt!1129349)))))

(assert (=> b!3324003 (= lt!1129349 (lexList!1372 thiss!18206 rules!2135 (_2!21203 (v!36171 lt!1129347))))))

(declare-fun b!3324004 () Bool)

(declare-fun e!2067299 () Bool)

(declare-fun lt!1129348 () tuple2!36134)

(declare-fun isEmpty!20794 (List!36757) Bool)

(assert (=> b!3324004 (= e!2067299 (not (isEmpty!20794 (_1!21201 lt!1129348))))))

(declare-fun e!2067300 () Bool)

(declare-fun b!3324005 () Bool)

(assert (=> b!3324005 (= e!2067300 (= (_2!21201 lt!1129348) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun d!934497 () Bool)

(assert (=> d!934497 e!2067300))

(declare-fun c!564621 () Bool)

(assert (=> d!934497 (= c!564621 (> (size!27692 (_1!21201 lt!1129348)) 0))))

(assert (=> d!934497 (= lt!1129348 e!2067301)))

(declare-fun c!564620 () Bool)

(assert (=> d!934497 (= c!564620 ((_ is Some!7307) lt!1129347))))

(declare-fun maxPrefix!2519 (LexerInterface!4913 List!36756 List!36755) Option!7308)

(assert (=> d!934497 (= lt!1129347 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> d!934497 (= (lexList!1372 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) lt!1129348)))

(declare-fun b!3324006 () Bool)

(assert (=> b!3324006 (= e!2067301 (tuple2!36135 Nil!36633 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun b!3324007 () Bool)

(assert (=> b!3324007 (= e!2067300 e!2067299)))

(declare-fun res!1348385 () Bool)

(assert (=> b!3324007 (= res!1348385 (< (size!27691 (_2!21201 lt!1129348)) (size!27691 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))

(assert (=> b!3324007 (=> (not res!1348385) (not e!2067299))))

(assert (= (and d!934497 c!564620) b!3324003))

(assert (= (and d!934497 (not c!564620)) b!3324006))

(assert (= (and d!934497 c!564621) b!3324007))

(assert (= (and d!934497 (not c!564621)) b!3324005))

(assert (= (and b!3324007 res!1348385) b!3324004))

(declare-fun m!3663315 () Bool)

(assert (=> b!3324003 m!3663315))

(declare-fun m!3663317 () Bool)

(assert (=> b!3324004 m!3663317))

(declare-fun m!3663319 () Bool)

(assert (=> d!934497 m!3663319))

(assert (=> d!934497 m!3662803))

(declare-fun m!3663321 () Bool)

(assert (=> d!934497 m!3663321))

(declare-fun m!3663323 () Bool)

(assert (=> b!3324007 m!3663323))

(assert (=> b!3324007 m!3662803))

(declare-fun m!3663325 () Bool)

(assert (=> b!3324007 m!3663325))

(assert (=> b!3323595 d!934497))

(declare-fun d!934499 () Bool)

(assert (=> d!934499 (= (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) (list!13184 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun bs!550728 () Bool)

(assert (= bs!550728 d!934499))

(declare-fun m!3663327 () Bool)

(assert (=> bs!550728 m!3663327))

(assert (=> b!3323595 d!934499))

(declare-fun bs!550729 () Bool)

(declare-fun d!934501 () Bool)

(assert (= bs!550729 (and d!934501 d!934357)))

(declare-fun lambda!119630 () Int)

(assert (=> bs!550729 (= (= (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (= lambda!119630 lambda!119612))))

(assert (=> d!934501 true))

(assert (=> d!934501 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (dynLambda!15095 order!19147 lambda!119630))))

(assert (=> d!934501 (= (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (Forall2!900 lambda!119630))))

(declare-fun bs!550730 () Bool)

(assert (= bs!550730 d!934501))

(declare-fun m!3663329 () Bool)

(assert (=> bs!550730 m!3663329))

(assert (=> b!3323714 d!934501))

(declare-fun d!934503 () Bool)

(declare-fun c!564622 () Bool)

(assert (=> d!934503 (= c!564622 ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(declare-fun e!2067302 () Bool)

(assert (=> d!934503 (= (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) e!2067302)))

(declare-fun b!3324008 () Bool)

(assert (=> b!3324008 (= e!2067302 (inv!49634 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(declare-fun b!3324009 () Bool)

(declare-fun e!2067303 () Bool)

(assert (=> b!3324009 (= e!2067302 e!2067303)))

(declare-fun res!1348386 () Bool)

(assert (=> b!3324009 (= res!1348386 (not ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(assert (=> b!3324009 (=> res!1348386 e!2067303)))

(declare-fun b!3324010 () Bool)

(assert (=> b!3324010 (= e!2067303 (inv!49635 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(assert (= (and d!934503 c!564622) b!3324008))

(assert (= (and d!934503 (not c!564622)) b!3324009))

(assert (= (and b!3324009 (not res!1348386)) b!3324010))

(declare-fun m!3663331 () Bool)

(assert (=> b!3324008 m!3663331))

(declare-fun m!3663333 () Bool)

(assert (=> b!3324010 m!3663333))

(assert (=> b!3323604 d!934503))

(declare-fun d!934505 () Bool)

(declare-fun c!564625 () Bool)

(assert (=> d!934505 (= c!564625 ((_ is Nil!36633) lt!1129228))))

(declare-fun e!2067306 () (InoxSet Token!10014))

(assert (=> d!934505 (= (content!4997 lt!1129228) e!2067306)))

(declare-fun b!3324015 () Bool)

(assert (=> b!3324015 (= e!2067306 ((as const (Array Token!10014 Bool)) false))))

(declare-fun b!3324016 () Bool)

(assert (=> b!3324016 (= e!2067306 ((_ map or) (store ((as const (Array Token!10014 Bool)) false) (h!42053 lt!1129228) true) (content!4997 (t!256360 lt!1129228))))))

(assert (= (and d!934505 c!564625) b!3324015))

(assert (= (and d!934505 (not c!564625)) b!3324016))

(declare-fun m!3663335 () Bool)

(assert (=> b!3324016 m!3663335))

(declare-fun m!3663337 () Bool)

(assert (=> b!3324016 m!3663337))

(assert (=> b!3323554 d!934505))

(declare-fun d!934507 () Bool)

(declare-fun c!564626 () Bool)

(assert (=> d!934507 (= c!564626 ((_ is Nil!36633) (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun e!2067307 () (InoxSet Token!10014))

(assert (=> d!934507 (= (content!4997 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) e!2067307)))

(declare-fun b!3324017 () Bool)

(assert (=> b!3324017 (= e!2067307 ((as const (Array Token!10014 Bool)) false))))

(declare-fun b!3324018 () Bool)

(assert (=> b!3324018 (= e!2067307 ((_ map or) (store ((as const (Array Token!10014 Bool)) false) (h!42053 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) true) (content!4997 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(assert (= (and d!934507 c!564626) b!3324017))

(assert (= (and d!934507 (not c!564626)) b!3324018))

(declare-fun m!3663339 () Bool)

(assert (=> b!3324018 m!3663339))

(assert (=> b!3324018 m!3663307))

(assert (=> b!3323554 d!934507))

(declare-fun d!934509 () Bool)

(assert (=> d!934509 (= (list!13180 lt!1129236) (list!13184 (c!564521 lt!1129236)))))

(declare-fun bs!550731 () Bool)

(assert (= bs!550731 d!934509))

(declare-fun m!3663341 () Bool)

(assert (=> bs!550731 m!3663341))

(assert (=> d!934277 d!934509))

(declare-fun d!934511 () Bool)

(declare-fun c!564629 () Bool)

(assert (=> d!934511 (= c!564629 ((_ is Cons!36633) (list!13177 lt!1129204)))))

(declare-fun e!2067310 () List!36755)

(assert (=> d!934511 (= (printWithSeparatorTokenList!222 thiss!18206 (list!13177 lt!1129204) separatorToken!241) e!2067310)))

(declare-fun b!3324023 () Bool)

(declare-fun ++!8895 (List!36755 List!36755) List!36755)

(declare-fun charsOf!3338 (Token!10014) BalanceConc!21660)

(assert (=> b!3324023 (= e!2067310 (++!8895 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241))) (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241)))))

(declare-fun b!3324024 () Bool)

(assert (=> b!3324024 (= e!2067310 Nil!36631)))

(assert (= (and d!934511 c!564629) b!3324023))

(assert (= (and d!934511 (not c!564629)) b!3324024))

(declare-fun m!3663343 () Bool)

(assert (=> b!3324023 m!3663343))

(declare-fun m!3663345 () Bool)

(assert (=> b!3324023 m!3663345))

(declare-fun m!3663347 () Bool)

(assert (=> b!3324023 m!3663347))

(declare-fun m!3663349 () Bool)

(assert (=> b!3324023 m!3663349))

(declare-fun m!3663351 () Bool)

(assert (=> b!3324023 m!3663351))

(assert (=> b!3324023 m!3663343))

(declare-fun m!3663353 () Bool)

(assert (=> b!3324023 m!3663353))

(declare-fun m!3663355 () Bool)

(assert (=> b!3324023 m!3663355))

(assert (=> b!3324023 m!3663351))

(assert (=> b!3324023 m!3663355))

(assert (=> b!3324023 m!3663353))

(assert (=> b!3324023 m!3663349))

(assert (=> b!3324023 m!3663345))

(assert (=> d!934277 d!934511))

(assert (=> d!934277 d!934427))

(declare-fun d!934513 () Bool)

(declare-fun lt!1129366 () BalanceConc!21660)

(declare-fun printWithSeparatorTokenListTailRec!22 (LexerInterface!4913 List!36757 Token!10014 List!36755) List!36755)

(declare-fun dropList!1131 (BalanceConc!21662 Int) List!36757)

(assert (=> d!934513 (= (list!13180 lt!1129366) (printWithSeparatorTokenListTailRec!22 thiss!18206 (dropList!1131 lt!1129204 0) separatorToken!241 (list!13180 (BalanceConc!21661 Empty!11023))))))

(declare-fun e!2067316 () BalanceConc!21660)

(assert (=> d!934513 (= lt!1129366 e!2067316)))

(declare-fun c!564632 () Bool)

(assert (=> d!934513 (= c!564632 (>= 0 (size!27690 lt!1129204)))))

(declare-fun e!2067315 () Bool)

(assert (=> d!934513 e!2067315))

(declare-fun res!1348389 () Bool)

(assert (=> d!934513 (=> (not res!1348389) (not e!2067315))))

(assert (=> d!934513 (= res!1348389 (>= 0 0))))

(assert (=> d!934513 (= (printWithSeparatorTokenTailRec!38 thiss!18206 lt!1129204 separatorToken!241 0 (BalanceConc!21661 Empty!11023)) lt!1129366)))

(declare-fun b!3324031 () Bool)

(assert (=> b!3324031 (= e!2067315 (<= 0 (size!27690 lt!1129204)))))

(declare-fun b!3324032 () Bool)

(assert (=> b!3324032 (= e!2067316 (BalanceConc!21661 Empty!11023))))

(declare-fun b!3324033 () Bool)

(declare-fun ++!8896 (BalanceConc!21660 BalanceConc!21660) BalanceConc!21660)

(assert (=> b!3324033 (= e!2067316 (printWithSeparatorTokenTailRec!38 thiss!18206 lt!1129204 separatorToken!241 (+ 0 1) (++!8896 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) (charsOf!3338 separatorToken!241))))))

(declare-fun lt!1129368 () List!36757)

(assert (=> b!3324033 (= lt!1129368 (list!13177 lt!1129204))))

(declare-datatypes ((Unit!51643 0))(
  ( (Unit!51644) )
))
(declare-fun lt!1129369 () Unit!51643)

(declare-fun lemmaDropApply!1089 (List!36757 Int) Unit!51643)

(assert (=> b!3324033 (= lt!1129369 (lemmaDropApply!1089 lt!1129368 0))))

(declare-fun head!7155 (List!36757) Token!10014)

(declare-fun drop!1921 (List!36757 Int) List!36757)

(declare-fun apply!8452 (List!36757 Int) Token!10014)

(assert (=> b!3324033 (= (head!7155 (drop!1921 lt!1129368 0)) (apply!8452 lt!1129368 0))))

(declare-fun lt!1129367 () Unit!51643)

(assert (=> b!3324033 (= lt!1129367 lt!1129369)))

(declare-fun lt!1129364 () List!36757)

(assert (=> b!3324033 (= lt!1129364 (list!13177 lt!1129204))))

(declare-fun lt!1129370 () Unit!51643)

(declare-fun lemmaDropTail!973 (List!36757 Int) Unit!51643)

(assert (=> b!3324033 (= lt!1129370 (lemmaDropTail!973 lt!1129364 0))))

(declare-fun tail!5289 (List!36757) List!36757)

(assert (=> b!3324033 (= (tail!5289 (drop!1921 lt!1129364 0)) (drop!1921 lt!1129364 (+ 0 1)))))

(declare-fun lt!1129365 () Unit!51643)

(assert (=> b!3324033 (= lt!1129365 lt!1129370)))

(assert (= (and d!934513 res!1348389) b!3324031))

(assert (= (and d!934513 c!564632) b!3324032))

(assert (= (and d!934513 (not c!564632)) b!3324033))

(declare-fun m!3663357 () Bool)

(assert (=> d!934513 m!3663357))

(declare-fun m!3663359 () Bool)

(assert (=> d!934513 m!3663359))

(declare-fun m!3663361 () Bool)

(assert (=> d!934513 m!3663361))

(assert (=> d!934513 m!3663359))

(declare-fun m!3663363 () Bool)

(assert (=> d!934513 m!3663363))

(declare-fun m!3663365 () Bool)

(assert (=> d!934513 m!3663365))

(assert (=> d!934513 m!3663361))

(assert (=> b!3324031 m!3663365))

(declare-fun m!3663367 () Bool)

(assert (=> b!3324033 m!3663367))

(declare-fun m!3663369 () Bool)

(assert (=> b!3324033 m!3663369))

(assert (=> b!3324033 m!3663355))

(declare-fun m!3663371 () Bool)

(assert (=> b!3324033 m!3663371))

(assert (=> b!3324033 m!3663369))

(declare-fun m!3663373 () Bool)

(assert (=> b!3324033 m!3663373))

(declare-fun m!3663375 () Bool)

(assert (=> b!3324033 m!3663375))

(declare-fun m!3663377 () Bool)

(assert (=> b!3324033 m!3663377))

(declare-fun m!3663379 () Bool)

(assert (=> b!3324033 m!3663379))

(assert (=> b!3324033 m!3663371))

(declare-fun m!3663381 () Bool)

(assert (=> b!3324033 m!3663381))

(declare-fun m!3663383 () Bool)

(assert (=> b!3324033 m!3663383))

(declare-fun m!3663385 () Bool)

(assert (=> b!3324033 m!3663385))

(declare-fun m!3663387 () Bool)

(assert (=> b!3324033 m!3663387))

(declare-fun m!3663389 () Bool)

(assert (=> b!3324033 m!3663389))

(assert (=> b!3324033 m!3663375))

(declare-fun m!3663391 () Bool)

(assert (=> b!3324033 m!3663391))

(assert (=> b!3324033 m!3663367))

(assert (=> b!3324033 m!3663373))

(assert (=> b!3324033 m!3663355))

(assert (=> b!3324033 m!3663387))

(assert (=> b!3324033 m!3662821))

(assert (=> d!934277 d!934513))

(declare-fun d!934515 () Bool)

(assert (=> d!934515 (= (inv!15 (value!172194 separatorToken!241)) (= (charsToBigInt!0 (text!39327 (value!172194 separatorToken!241)) 0) (value!172189 (value!172194 separatorToken!241))))))

(declare-fun bs!550732 () Bool)

(assert (= bs!550732 d!934515))

(declare-fun m!3663393 () Bool)

(assert (=> bs!550732 m!3663393))

(assert (=> b!3323459 d!934515))

(declare-fun d!934517 () Bool)

(declare-fun isBalanced!3307 (Conc!11023) Bool)

(assert (=> d!934517 (= (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))) (isBalanced!3307 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(declare-fun bs!550733 () Bool)

(assert (= bs!550733 d!934517))

(declare-fun m!3663395 () Bool)

(assert (=> bs!550733 m!3663395))

(assert (=> tb!173907 d!934517))

(declare-fun d!934519 () Bool)

(assert (=> d!934519 (= (list!13177 (_1!21199 lt!1129231)) (list!13181 (c!564522 (_1!21199 lt!1129231))))))

(declare-fun bs!550734 () Bool)

(assert (= bs!550734 d!934519))

(declare-fun m!3663397 () Bool)

(assert (=> bs!550734 m!3663397))

(assert (=> b!3323597 d!934519))

(assert (=> b!3323597 d!934497))

(assert (=> b!3323597 d!934499))

(declare-fun d!934521 () Bool)

(declare-fun lt!1129373 () Int)

(assert (=> d!934521 (>= lt!1129373 0)))

(declare-fun e!2067319 () Int)

(assert (=> d!934521 (= lt!1129373 e!2067319)))

(declare-fun c!564635 () Bool)

(assert (=> d!934521 (= c!564635 ((_ is Nil!36633) lt!1129228))))

(assert (=> d!934521 (= (size!27692 lt!1129228) lt!1129373)))

(declare-fun b!3324038 () Bool)

(assert (=> b!3324038 (= e!2067319 0)))

(declare-fun b!3324039 () Bool)

(assert (=> b!3324039 (= e!2067319 (+ 1 (size!27692 (t!256360 lt!1129228))))))

(assert (= (and d!934521 c!564635) b!3324038))

(assert (= (and d!934521 (not c!564635)) b!3324039))

(declare-fun m!3663399 () Bool)

(assert (=> b!3324039 m!3663399))

(assert (=> d!934251 d!934521))

(declare-fun d!934523 () Bool)

(declare-fun lt!1129374 () Int)

(assert (=> d!934523 (>= lt!1129374 0)))

(declare-fun e!2067320 () Int)

(assert (=> d!934523 (= lt!1129374 e!2067320)))

(declare-fun c!564636 () Bool)

(assert (=> d!934523 (= c!564636 ((_ is Nil!36633) (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!934523 (= (size!27692 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) lt!1129374)))

(declare-fun b!3324040 () Bool)

(assert (=> b!3324040 (= e!2067320 0)))

(declare-fun b!3324041 () Bool)

(assert (=> b!3324041 (= e!2067320 (+ 1 (size!27692 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(assert (= (and d!934523 c!564636) b!3324040))

(assert (= (and d!934523 (not c!564636)) b!3324041))

(assert (=> b!3324041 m!3663299))

(assert (=> d!934251 d!934523))

(declare-fun d!934525 () Bool)

(assert (=> d!934525 (= (isEmpty!20788 (originalCharacters!6038 separatorToken!241)) ((_ is Nil!36631) (originalCharacters!6038 separatorToken!241)))))

(assert (=> d!934281 d!934525))

(declare-fun d!934527 () Bool)

(assert (=> d!934527 true))

(declare-fun lt!1129377 () Bool)

(declare-fun rulesValidInductive!1817 (LexerInterface!4913 List!36756) Bool)

(assert (=> d!934527 (= lt!1129377 (rulesValidInductive!1817 thiss!18206 rules!2135))))

(declare-fun lambda!119633 () Int)

(declare-fun forall!7634 (List!36756 Int) Bool)

(assert (=> d!934527 (= lt!1129377 (forall!7634 rules!2135 lambda!119633))))

(assert (=> d!934527 (= (rulesValid!1969 thiss!18206 rules!2135) lt!1129377)))

(declare-fun bs!550735 () Bool)

(assert (= bs!550735 d!934527))

(declare-fun m!3663401 () Bool)

(assert (=> bs!550735 m!3663401))

(declare-fun m!3663403 () Bool)

(assert (=> bs!550735 m!3663403))

(assert (=> d!934279 d!934527))

(declare-fun bs!550736 () Bool)

(declare-fun d!934529 () Bool)

(assert (= bs!550736 (and d!934529 d!934357)))

(declare-fun lambda!119634 () Int)

(assert (=> bs!550736 (= (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (= lambda!119634 lambda!119612))))

(declare-fun bs!550737 () Bool)

(assert (= bs!550737 (and d!934529 d!934501)))

(assert (=> bs!550737 (= (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (= lambda!119634 lambda!119630))))

(assert (=> d!934529 true))

(assert (=> d!934529 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (dynLambda!15095 order!19147 lambda!119634))))

(assert (=> d!934529 (= (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (Forall2!900 lambda!119634))))

(declare-fun bs!550738 () Bool)

(assert (= bs!550738 d!934529))

(declare-fun m!3663405 () Bool)

(assert (=> bs!550738 m!3663405))

(assert (=> b!3323715 d!934529))

(declare-fun d!934531 () Bool)

(declare-fun res!1348390 () Bool)

(declare-fun e!2067321 () Bool)

(assert (=> d!934531 (=> (not res!1348390) (not e!2067321))))

(assert (=> d!934531 (= res!1348390 (not (isEmpty!20788 (originalCharacters!6038 (h!42053 (t!256360 tokens!494))))))))

(assert (=> d!934531 (= (inv!49627 (h!42053 (t!256360 tokens!494))) e!2067321)))

(declare-fun b!3324044 () Bool)

(declare-fun res!1348391 () Bool)

(assert (=> b!3324044 (=> (not res!1348391) (not e!2067321))))

(assert (=> b!3324044 (= res!1348391 (= (originalCharacters!6038 (h!42053 (t!256360 tokens!494))) (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))))))

(declare-fun b!3324045 () Bool)

(assert (=> b!3324045 (= e!2067321 (= (size!27685 (h!42053 (t!256360 tokens!494))) (size!27691 (originalCharacters!6038 (h!42053 (t!256360 tokens!494))))))))

(assert (= (and d!934531 res!1348390) b!3324044))

(assert (= (and b!3324044 res!1348391) b!3324045))

(declare-fun b_lambda!93725 () Bool)

(assert (=> (not b_lambda!93725) (not b!3324044)))

(declare-fun tb!173957 () Bool)

(declare-fun t!256431 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256431) tb!173957))

(declare-fun b!3324046 () Bool)

(declare-fun e!2067322 () Bool)

(declare-fun tp!1038420 () Bool)

(assert (=> b!3324046 (= e!2067322 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))) tp!1038420))))

(declare-fun result!217010 () Bool)

(assert (=> tb!173957 (= result!217010 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))) e!2067322))))

(assert (= tb!173957 b!3324046))

(declare-fun m!3663407 () Bool)

(assert (=> b!3324046 m!3663407))

(declare-fun m!3663409 () Bool)

(assert (=> tb!173957 m!3663409))

(assert (=> b!3324044 t!256431))

(declare-fun b_and!228997 () Bool)

(assert (= b_and!228963 (and (=> t!256431 result!217010) b_and!228997)))

(declare-fun t!256433 () Bool)

(declare-fun tb!173959 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256433) tb!173959))

(declare-fun result!217012 () Bool)

(assert (= result!217012 result!217010))

(assert (=> b!3324044 t!256433))

(declare-fun b_and!228999 () Bool)

(assert (= b_and!228961 (and (=> t!256433 result!217012) b_and!228999)))

(declare-fun tb!173961 () Bool)

(declare-fun t!256435 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256435) tb!173961))

(declare-fun result!217014 () Bool)

(assert (= result!217014 result!217010))

(assert (=> b!3324044 t!256435))

(declare-fun b_and!229001 () Bool)

(assert (= b_and!228959 (and (=> t!256435 result!217014) b_and!229001)))

(declare-fun t!256437 () Bool)

(declare-fun tb!173963 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256437) tb!173963))

(declare-fun result!217016 () Bool)

(assert (= result!217016 result!217010))

(assert (=> b!3324044 t!256437))

(declare-fun b_and!229003 () Bool)

(assert (= b_and!228981 (and (=> t!256437 result!217016) b_and!229003)))

(declare-fun t!256439 () Bool)

(declare-fun tb!173965 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256439) tb!173965))

(declare-fun result!217018 () Bool)

(assert (= result!217018 result!217010))

(assert (=> b!3324044 t!256439))

(declare-fun b_and!229005 () Bool)

(assert (= b_and!228985 (and (=> t!256439 result!217018) b_and!229005)))

(declare-fun m!3663411 () Bool)

(assert (=> d!934531 m!3663411))

(declare-fun m!3663413 () Bool)

(assert (=> b!3324044 m!3663413))

(assert (=> b!3324044 m!3663413))

(declare-fun m!3663415 () Bool)

(assert (=> b!3324044 m!3663415))

(declare-fun m!3663417 () Bool)

(assert (=> b!3324045 m!3663417))

(assert (=> b!3323765 d!934531))

(declare-fun d!934533 () Bool)

(declare-fun res!1348392 () Bool)

(declare-fun e!2067323 () Bool)

(assert (=> d!934533 (=> res!1348392 e!2067323)))

(assert (=> d!934533 (= res!1348392 ((_ is Nil!36633) (list!13177 lt!1129204)))))

(assert (=> d!934533 (= (forall!7629 (list!13177 lt!1129204) lambda!119603) e!2067323)))

(declare-fun b!3324047 () Bool)

(declare-fun e!2067324 () Bool)

(assert (=> b!3324047 (= e!2067323 e!2067324)))

(declare-fun res!1348393 () Bool)

(assert (=> b!3324047 (=> (not res!1348393) (not e!2067324))))

(assert (=> b!3324047 (= res!1348393 (dynLambda!15088 lambda!119603 (h!42053 (list!13177 lt!1129204))))))

(declare-fun b!3324048 () Bool)

(assert (=> b!3324048 (= e!2067324 (forall!7629 (t!256360 (list!13177 lt!1129204)) lambda!119603))))

(assert (= (and d!934533 (not res!1348392)) b!3324047))

(assert (= (and b!3324047 res!1348393) b!3324048))

(declare-fun b_lambda!93727 () Bool)

(assert (=> (not b_lambda!93727) (not b!3324047)))

(declare-fun m!3663419 () Bool)

(assert (=> b!3324047 m!3663419))

(declare-fun m!3663421 () Bool)

(assert (=> b!3324048 m!3663421))

(assert (=> d!934283 d!934533))

(assert (=> d!934283 d!934427))

(declare-fun d!934535 () Bool)

(declare-fun lt!1129380 () Bool)

(assert (=> d!934535 (= lt!1129380 (forall!7629 (list!13177 lt!1129204) lambda!119603))))

(declare-fun forall!7635 (Conc!11024 Int) Bool)

(assert (=> d!934535 (= lt!1129380 (forall!7635 (c!564522 lt!1129204) lambda!119603))))

(assert (=> d!934535 (= (forall!7631 lt!1129204 lambda!119603) lt!1129380)))

(declare-fun bs!550739 () Bool)

(assert (= bs!550739 d!934535))

(assert (=> bs!550739 m!3662821))

(assert (=> bs!550739 m!3662821))

(assert (=> bs!550739 m!3662891))

(declare-fun m!3663423 () Bool)

(assert (=> bs!550739 m!3663423))

(assert (=> d!934283 d!934535))

(assert (=> d!934283 d!934245))

(declare-fun d!934537 () Bool)

(declare-fun res!1348394 () Bool)

(declare-fun e!2067325 () Bool)

(assert (=> d!934537 (=> res!1348394 e!2067325)))

(assert (=> d!934537 (= res!1348394 (not ((_ is Cons!36632) (t!256359 rules!2135))))))

(assert (=> d!934537 (= (sepAndNonSepRulesDisjointChars!1518 rules!2135 (t!256359 rules!2135)) e!2067325)))

(declare-fun b!3324049 () Bool)

(declare-fun e!2067326 () Bool)

(assert (=> b!3324049 (= e!2067325 e!2067326)))

(declare-fun res!1348395 () Bool)

(assert (=> b!3324049 (=> (not res!1348395) (not e!2067326))))

(assert (=> b!3324049 (= res!1348395 (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 (t!256359 rules!2135)) rules!2135))))

(declare-fun b!3324050 () Bool)

(assert (=> b!3324050 (= e!2067326 (sepAndNonSepRulesDisjointChars!1518 rules!2135 (t!256359 (t!256359 rules!2135))))))

(assert (= (and d!934537 (not res!1348394)) b!3324049))

(assert (= (and b!3324049 res!1348395) b!3324050))

(declare-fun m!3663425 () Bool)

(assert (=> b!3324049 m!3663425))

(declare-fun m!3663427 () Bool)

(assert (=> b!3324050 m!3663427))

(assert (=> b!3323468 d!934537))

(declare-fun d!934539 () Bool)

(declare-fun charsToInt!0 (List!36754) (_ BitVec 32))

(assert (=> d!934539 (= (inv!16 (value!172194 (h!42053 tokens!494))) (= (charsToInt!0 (text!39325 (value!172194 (h!42053 tokens!494)))) (value!172185 (value!172194 (h!42053 tokens!494)))))))

(declare-fun bs!550740 () Bool)

(assert (= bs!550740 d!934539))

(declare-fun m!3663429 () Bool)

(assert (=> bs!550740 m!3663429))

(assert (=> b!3323523 d!934539))

(declare-fun d!934541 () Bool)

(assert (=> d!934541 (= (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))) (list!13184 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(declare-fun bs!550741 () Bool)

(assert (= bs!550741 d!934541))

(declare-fun m!3663431 () Bool)

(assert (=> bs!550741 m!3663431))

(assert (=> b!3323602 d!934541))

(declare-fun d!934543 () Bool)

(assert (=> d!934543 (= (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))) (list!13184 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(declare-fun bs!550742 () Bool)

(assert (= bs!550742 d!934543))

(declare-fun m!3663433 () Bool)

(assert (=> bs!550742 m!3663433))

(assert (=> b!3323529 d!934543))

(declare-fun lt!1129381 () Bool)

(declare-fun d!934545 () Bool)

(assert (=> d!934545 (= lt!1129381 (isEmpty!20788 (list!13180 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(assert (=> d!934545 (= lt!1129381 (isEmpty!20792 (c!564521 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(assert (=> d!934545 (= (isEmpty!20787 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))) lt!1129381)))

(declare-fun bs!550743 () Bool)

(assert (= bs!550743 d!934545))

(declare-fun m!3663435 () Bool)

(assert (=> bs!550743 m!3663435))

(assert (=> bs!550743 m!3663435))

(declare-fun m!3663437 () Bool)

(assert (=> bs!550743 m!3663437))

(declare-fun m!3663439 () Bool)

(assert (=> bs!550743 m!3663439))

(assert (=> b!3323519 d!934545))

(assert (=> b!3323519 d!934473))

(assert (=> b!3323519 d!934449))

(assert (=> b!3323519 d!934485))

(declare-fun d!934547 () Bool)

(assert (=> d!934547 (= (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))) (isBalanced!3307 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(declare-fun bs!550744 () Bool)

(assert (= bs!550744 d!934547))

(declare-fun m!3663441 () Bool)

(assert (=> bs!550744 m!3663441))

(assert (=> tb!173919 d!934547))

(declare-fun bs!550745 () Bool)

(declare-fun d!934549 () Bool)

(assert (= bs!550745 (and d!934549 d!934377)))

(declare-fun lambda!119635 () Int)

(assert (=> bs!550745 (= (and (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (= (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (= lambda!119635 lambda!119615))))

(declare-fun bs!550746 () Bool)

(assert (= bs!550746 (and d!934549 d!934431)))

(assert (=> bs!550746 (= (and (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (= (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (h!42052 rules!2135))))) (= lambda!119635 lambda!119628))))

(assert (=> d!934549 true))

(assert (=> d!934549 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) (dynLambda!15096 order!19149 lambda!119635))))

(assert (=> d!934549 true))

(assert (=> d!934549 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (dynLambda!15096 order!19149 lambda!119635))))

(assert (=> d!934549 (= (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (Forall!1303 lambda!119635))))

(declare-fun bs!550747 () Bool)

(assert (= bs!550747 d!934549))

(declare-fun m!3663443 () Bool)

(assert (=> bs!550747 m!3663443))

(assert (=> d!934305 d!934549))

(declare-fun d!934551 () Bool)

(declare-fun lt!1129384 () Token!10014)

(assert (=> d!934551 (= lt!1129384 (apply!8452 (list!13177 (_1!21199 lt!1129221)) 0))))

(declare-fun apply!8453 (Conc!11024 Int) Token!10014)

(assert (=> d!934551 (= lt!1129384 (apply!8453 (c!564522 (_1!21199 lt!1129221)) 0))))

(declare-fun e!2067329 () Bool)

(assert (=> d!934551 e!2067329))

(declare-fun res!1348398 () Bool)

(assert (=> d!934551 (=> (not res!1348398) (not e!2067329))))

(assert (=> d!934551 (= res!1348398 (<= 0 0))))

(assert (=> d!934551 (= (apply!8449 (_1!21199 lt!1129221) 0) lt!1129384)))

(declare-fun b!3324053 () Bool)

(assert (=> b!3324053 (= e!2067329 (< 0 (size!27690 (_1!21199 lt!1129221))))))

(assert (= (and d!934551 res!1348398) b!3324053))

(assert (=> d!934551 m!3663279))

(assert (=> d!934551 m!3663279))

(declare-fun m!3663445 () Bool)

(assert (=> d!934551 m!3663445))

(declare-fun m!3663447 () Bool)

(assert (=> d!934551 m!3663447))

(assert (=> b!3324053 m!3662713))

(assert (=> b!3323517 d!934551))

(declare-fun d!934553 () Bool)

(declare-fun lt!1129385 () Int)

(assert (=> d!934553 (= lt!1129385 (size!27692 (list!13177 (_1!21199 lt!1129231))))))

(assert (=> d!934553 (= lt!1129385 (size!27695 (c!564522 (_1!21199 lt!1129231))))))

(assert (=> d!934553 (= (size!27690 (_1!21199 lt!1129231)) lt!1129385)))

(declare-fun bs!550748 () Bool)

(assert (= bs!550748 d!934553))

(assert (=> bs!550748 m!3662801))

(assert (=> bs!550748 m!3662801))

(declare-fun m!3663449 () Bool)

(assert (=> bs!550748 m!3663449))

(declare-fun m!3663451 () Bool)

(assert (=> bs!550748 m!3663451))

(assert (=> d!934263 d!934553))

(declare-datatypes ((tuple2!36142 0))(
  ( (tuple2!36143 (_1!21205 Token!10014) (_2!21205 BalanceConc!21660)) )
))
(declare-datatypes ((Option!7310 0))(
  ( (None!7309) (Some!7309 (v!36173 tuple2!36142)) )
))
(declare-fun lt!1129570 () Option!7310)

(declare-fun lt!1129575 () tuple2!36130)

(declare-fun b!3324184 () Bool)

(declare-fun lexRec!715 (LexerInterface!4913 List!36756 BalanceConc!21660) tuple2!36130)

(assert (=> b!3324184 (= lt!1129575 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129570))))))

(declare-fun e!2067394 () tuple2!36130)

(declare-fun prepend!1211 (BalanceConc!21662 Token!10014) BalanceConc!21662)

(assert (=> b!3324184 (= e!2067394 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129575) (_1!21205 (v!36173 lt!1129570))) (_2!21199 lt!1129575)))))

(declare-fun b!3324185 () Bool)

(declare-fun e!2067391 () tuple2!36130)

(assert (=> b!3324185 (= e!2067391 (tuple2!36131 (BalanceConc!21663 Empty!11024) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun b!3324186 () Bool)

(declare-fun lt!1129568 () Option!7310)

(declare-fun lt!1129587 () BalanceConc!21660)

(declare-fun append!907 (BalanceConc!21662 Token!10014) BalanceConc!21662)

(assert (=> b!3324186 (= e!2067391 (lexTailRecV2!982 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) lt!1129587 (_2!21205 (v!36173 lt!1129568)) (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun lt!1129571 () tuple2!36130)

(assert (=> b!3324186 (= lt!1129571 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129568))))))

(declare-fun lt!1129562 () List!36755)

(assert (=> b!3324186 (= lt!1129562 (list!13180 (BalanceConc!21661 Empty!11023)))))

(declare-fun lt!1129558 () List!36755)

(assert (=> b!3324186 (= lt!1129558 (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun lt!1129573 () List!36755)

(assert (=> b!3324186 (= lt!1129573 (list!13180 (_2!21205 (v!36173 lt!1129568))))))

(declare-fun lt!1129565 () Unit!51643)

(declare-fun lemmaConcatAssociativity!1847 (List!36755 List!36755 List!36755) Unit!51643)

(assert (=> b!3324186 (= lt!1129565 (lemmaConcatAssociativity!1847 lt!1129562 lt!1129558 lt!1129573))))

(assert (=> b!3324186 (= (++!8895 (++!8895 lt!1129562 lt!1129558) lt!1129573) (++!8895 lt!1129562 (++!8895 lt!1129558 lt!1129573)))))

(declare-fun lt!1129574 () Unit!51643)

(assert (=> b!3324186 (= lt!1129574 lt!1129565)))

(declare-fun lt!1129563 () Option!7310)

(declare-fun maxPrefixZipperSequence!1108 (LexerInterface!4913 List!36756 BalanceConc!21660) Option!7310)

(assert (=> b!3324186 (= lt!1129563 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun c!564653 () Bool)

(assert (=> b!3324186 (= c!564653 ((_ is Some!7309) lt!1129563))))

(declare-fun e!2067393 () tuple2!36130)

(assert (=> b!3324186 (= (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) e!2067393)))

(declare-fun lt!1129561 () Unit!51643)

(declare-fun Unit!51646 () Unit!51643)

(assert (=> b!3324186 (= lt!1129561 Unit!51646)))

(declare-fun lt!1129584 () List!36757)

(assert (=> b!3324186 (= lt!1129584 (list!13177 (BalanceConc!21663 Empty!11024)))))

(declare-fun lt!1129576 () List!36757)

(assert (=> b!3324186 (= lt!1129576 (Cons!36633 (_1!21205 (v!36173 lt!1129568)) Nil!36633))))

(declare-fun lt!1129560 () List!36757)

(assert (=> b!3324186 (= lt!1129560 (list!13177 (_1!21199 lt!1129571)))))

(declare-fun lt!1129579 () Unit!51643)

(declare-fun lemmaConcatAssociativity!1848 (List!36757 List!36757 List!36757) Unit!51643)

(assert (=> b!3324186 (= lt!1129579 (lemmaConcatAssociativity!1848 lt!1129584 lt!1129576 lt!1129560))))

(declare-fun ++!8897 (List!36757 List!36757) List!36757)

(assert (=> b!3324186 (= (++!8897 (++!8897 lt!1129584 lt!1129576) lt!1129560) (++!8897 lt!1129584 (++!8897 lt!1129576 lt!1129560)))))

(declare-fun lt!1129559 () Unit!51643)

(assert (=> b!3324186 (= lt!1129559 lt!1129579)))

(declare-fun lt!1129583 () List!36755)

(assert (=> b!3324186 (= lt!1129583 (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))

(declare-fun lt!1129581 () List!36755)

(assert (=> b!3324186 (= lt!1129581 (list!13180 (_2!21205 (v!36173 lt!1129568))))))

(declare-fun lt!1129556 () List!36757)

(assert (=> b!3324186 (= lt!1129556 (list!13177 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun lt!1129585 () Unit!51643)

(declare-fun lemmaLexThenLexPrefix!480 (LexerInterface!4913 List!36756 List!36755 List!36755 List!36757 List!36757 List!36755) Unit!51643)

(assert (=> b!3324186 (= lt!1129585 (lemmaLexThenLexPrefix!480 thiss!18206 rules!2135 lt!1129583 lt!1129581 lt!1129556 (list!13177 (_1!21199 lt!1129571)) (list!13180 (_2!21199 lt!1129571))))))

(assert (=> b!3324186 (= (lexList!1372 thiss!18206 rules!2135 lt!1129583) (tuple2!36135 lt!1129556 Nil!36631))))

(declare-fun lt!1129567 () Unit!51643)

(assert (=> b!3324186 (= lt!1129567 lt!1129585)))

(declare-fun lt!1129572 () BalanceConc!21660)

(assert (=> b!3324186 (= lt!1129572 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))

(assert (=> b!3324186 (= lt!1129570 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 lt!1129572))))

(declare-fun c!564654 () Bool)

(assert (=> b!3324186 (= c!564654 ((_ is Some!7309) lt!1129570))))

(assert (=> b!3324186 (= (lexRec!715 thiss!18206 rules!2135 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))) e!2067394)))

(declare-fun lt!1129557 () Unit!51643)

(declare-fun Unit!51647 () Unit!51643)

(assert (=> b!3324186 (= lt!1129557 Unit!51647)))

(assert (=> b!3324186 (= lt!1129587 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun lt!1129580 () List!36755)

(assert (=> b!3324186 (= lt!1129580 (list!13180 lt!1129587))))

(declare-fun lt!1129569 () List!36755)

(assert (=> b!3324186 (= lt!1129569 (list!13180 (_2!21205 (v!36173 lt!1129568))))))

(declare-fun lt!1129578 () Unit!51643)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!562 (List!36755 List!36755) Unit!51643)

(assert (=> b!3324186 (= lt!1129578 (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1129580 lt!1129569))))

(declare-fun isSuffix!877 (List!36755 List!36755) Bool)

(assert (=> b!3324186 (isSuffix!877 lt!1129569 (++!8895 lt!1129580 lt!1129569))))

(declare-fun lt!1129586 () Unit!51643)

(assert (=> b!3324186 (= lt!1129586 lt!1129578)))

(declare-fun b!3324187 () Bool)

(assert (=> b!3324187 (= e!2067394 (tuple2!36131 (BalanceConc!21663 Empty!11024) lt!1129572))))

(declare-fun b!3324188 () Bool)

(assert (=> b!3324188 (= e!2067393 (tuple2!36131 (BalanceConc!21663 Empty!11024) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun d!934555 () Bool)

(declare-fun e!2067392 () Bool)

(assert (=> d!934555 e!2067392))

(declare-fun res!1348404 () Bool)

(assert (=> d!934555 (=> (not res!1348404) (not e!2067392))))

(declare-fun lt!1129588 () tuple2!36130)

(assert (=> d!934555 (= res!1348404 (= (list!13177 (_1!21199 lt!1129588)) (list!13177 (_1!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!934555 (= lt!1129588 e!2067391)))

(declare-fun c!564652 () Bool)

(assert (=> d!934555 (= c!564652 ((_ is Some!7309) lt!1129568))))

(declare-fun maxPrefixZipperSequenceV2!502 (LexerInterface!4913 List!36756 BalanceConc!21660 BalanceConc!21660) Option!7310)

(assert (=> d!934555 (= lt!1129568 (maxPrefixZipperSequenceV2!502 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun lt!1129566 () Unit!51643)

(declare-fun lt!1129589 () Unit!51643)

(assert (=> d!934555 (= lt!1129566 lt!1129589)))

(declare-fun lt!1129577 () List!36755)

(declare-fun lt!1129564 () List!36755)

(assert (=> d!934555 (isSuffix!877 lt!1129577 (++!8895 lt!1129564 lt!1129577))))

(assert (=> d!934555 (= lt!1129589 (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1129564 lt!1129577))))

(assert (=> d!934555 (= lt!1129577 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!934555 (= lt!1129564 (list!13180 (BalanceConc!21661 Empty!11023)))))

(assert (=> d!934555 (= (lexTailRecV2!982 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (BalanceConc!21661 Empty!11023) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (BalanceConc!21663 Empty!11024)) lt!1129588)))

(declare-fun b!3324189 () Bool)

(assert (=> b!3324189 (= e!2067392 (= (list!13180 (_2!21199 lt!1129588)) (list!13180 (_2!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun lt!1129582 () tuple2!36130)

(declare-fun b!3324190 () Bool)

(assert (=> b!3324190 (= lt!1129582 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129563))))))

(assert (=> b!3324190 (= e!2067393 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129582) (_1!21205 (v!36173 lt!1129563))) (_2!21199 lt!1129582)))))

(assert (= (and d!934555 c!564652) b!3324186))

(assert (= (and d!934555 (not c!564652)) b!3324185))

(assert (= (and b!3324186 c!564653) b!3324190))

(assert (= (and b!3324186 (not c!564653)) b!3324188))

(assert (= (and b!3324186 c!564654) b!3324184))

(assert (= (and b!3324186 (not c!564654)) b!3324187))

(assert (= (and d!934555 res!1348404) b!3324189))

(declare-fun m!3663567 () Bool)

(assert (=> b!3324184 m!3663567))

(declare-fun m!3663569 () Bool)

(assert (=> b!3324184 m!3663569))

(declare-fun m!3663571 () Bool)

(assert (=> b!3324190 m!3663571))

(declare-fun m!3663573 () Bool)

(assert (=> b!3324190 m!3663573))

(assert (=> b!3324186 m!3662617))

(declare-fun m!3663575 () Bool)

(assert (=> b!3324186 m!3663575))

(declare-fun m!3663577 () Bool)

(assert (=> b!3324186 m!3663577))

(declare-fun m!3663579 () Bool)

(assert (=> b!3324186 m!3663579))

(declare-fun m!3663581 () Bool)

(assert (=> b!3324186 m!3663581))

(declare-fun m!3663583 () Bool)

(assert (=> b!3324186 m!3663583))

(declare-fun m!3663585 () Bool)

(assert (=> b!3324186 m!3663585))

(declare-fun m!3663587 () Bool)

(assert (=> b!3324186 m!3663587))

(declare-fun m!3663589 () Bool)

(assert (=> b!3324186 m!3663589))

(assert (=> b!3324186 m!3663583))

(declare-fun m!3663591 () Bool)

(assert (=> b!3324186 m!3663591))

(declare-fun m!3663593 () Bool)

(assert (=> b!3324186 m!3663593))

(declare-fun m!3663595 () Bool)

(assert (=> b!3324186 m!3663595))

(declare-fun m!3663597 () Bool)

(assert (=> b!3324186 m!3663597))

(declare-fun m!3663599 () Bool)

(assert (=> b!3324186 m!3663599))

(declare-fun m!3663601 () Bool)

(assert (=> b!3324186 m!3663601))

(declare-fun m!3663603 () Bool)

(assert (=> b!3324186 m!3663603))

(declare-fun m!3663605 () Bool)

(assert (=> b!3324186 m!3663605))

(assert (=> b!3324186 m!3663585))

(declare-fun m!3663607 () Bool)

(assert (=> b!3324186 m!3663607))

(declare-fun m!3663609 () Bool)

(assert (=> b!3324186 m!3663609))

(declare-fun m!3663611 () Bool)

(assert (=> b!3324186 m!3663611))

(assert (=> b!3324186 m!3663575))

(assert (=> b!3324186 m!3663575))

(declare-fun m!3663613 () Bool)

(assert (=> b!3324186 m!3663613))

(assert (=> b!3324186 m!3663605))

(declare-fun m!3663615 () Bool)

(assert (=> b!3324186 m!3663615))

(declare-fun m!3663617 () Bool)

(assert (=> b!3324186 m!3663617))

(assert (=> b!3324186 m!3663599))

(declare-fun m!3663619 () Bool)

(assert (=> b!3324186 m!3663619))

(declare-fun m!3663621 () Bool)

(assert (=> b!3324186 m!3663621))

(assert (=> b!3324186 m!3663359))

(assert (=> b!3324186 m!3663359))

(declare-fun m!3663623 () Bool)

(assert (=> b!3324186 m!3663623))

(declare-fun m!3663625 () Bool)

(assert (=> b!3324186 m!3663625))

(assert (=> b!3324186 m!3663603))

(assert (=> b!3324186 m!3663619))

(declare-fun m!3663627 () Bool)

(assert (=> b!3324186 m!3663627))

(assert (=> b!3324186 m!3663587))

(declare-fun m!3663629 () Bool)

(assert (=> b!3324186 m!3663629))

(assert (=> b!3324186 m!3662617))

(declare-fun m!3663631 () Bool)

(assert (=> b!3324186 m!3663631))

(assert (=> b!3324186 m!3662617))

(declare-fun m!3663633 () Bool)

(assert (=> b!3324186 m!3663633))

(assert (=> b!3324186 m!3663603))

(assert (=> b!3324186 m!3663623))

(assert (=> b!3324186 m!3663597))

(declare-fun m!3663635 () Bool)

(assert (=> b!3324186 m!3663635))

(declare-fun m!3663637 () Bool)

(assert (=> b!3324186 m!3663637))

(assert (=> b!3324186 m!3663635))

(declare-fun m!3663639 () Bool)

(assert (=> b!3324189 m!3663639))

(assert (=> b!3324189 m!3662617))

(assert (=> b!3324189 m!3663631))

(declare-fun m!3663641 () Bool)

(assert (=> b!3324189 m!3663641))

(declare-fun m!3663643 () Bool)

(assert (=> d!934555 m!3663643))

(declare-fun m!3663645 () Bool)

(assert (=> d!934555 m!3663645))

(assert (=> d!934555 m!3662617))

(assert (=> d!934555 m!3663631))

(declare-fun m!3663647 () Bool)

(assert (=> d!934555 m!3663647))

(assert (=> d!934555 m!3662617))

(assert (=> d!934555 m!3662803))

(assert (=> d!934555 m!3663359))

(declare-fun m!3663649 () Bool)

(assert (=> d!934555 m!3663649))

(declare-fun m!3663651 () Bool)

(assert (=> d!934555 m!3663651))

(assert (=> d!934555 m!3663649))

(assert (=> d!934555 m!3662617))

(assert (=> d!934555 m!3662617))

(declare-fun m!3663653 () Bool)

(assert (=> d!934555 m!3663653))

(assert (=> d!934263 d!934555))

(declare-fun d!934567 () Bool)

(assert (=> d!934567 (= (inv!16 (value!172194 separatorToken!241)) (= (charsToInt!0 (text!39325 (value!172194 separatorToken!241))) (value!172185 (value!172194 separatorToken!241))))))

(declare-fun bs!550754 () Bool)

(assert (= bs!550754 d!934567))

(declare-fun m!3663655 () Bool)

(assert (=> bs!550754 m!3663655))

(assert (=> b!3323458 d!934567))

(declare-fun b!3324199 () Bool)

(declare-fun e!2067399 () List!36757)

(assert (=> b!3324199 (= e!2067399 Nil!36633)))

(declare-fun b!3324200 () Bool)

(declare-fun e!2067400 () List!36757)

(assert (=> b!3324200 (= e!2067399 e!2067400)))

(declare-fun c!564660 () Bool)

(assert (=> b!3324200 (= c!564660 ((_ is Leaf!17297) (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun b!3324201 () Bool)

(declare-fun list!13185 (IArray!22053) List!36757)

(assert (=> b!3324201 (= e!2067400 (list!13185 (xs!14162 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun c!564659 () Bool)

(declare-fun d!934569 () Bool)

(assert (=> d!934569 (= c!564659 ((_ is Empty!11024) (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!934569 (= (list!13181 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))) e!2067399)))

(declare-fun b!3324202 () Bool)

(assert (=> b!3324202 (= e!2067400 (++!8897 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(assert (= (and d!934569 c!564659) b!3324199))

(assert (= (and d!934569 (not c!564659)) b!3324200))

(assert (= (and b!3324200 c!564660) b!3324201))

(assert (= (and b!3324200 (not c!564660)) b!3324202))

(declare-fun m!3663657 () Bool)

(assert (=> b!3324201 m!3663657))

(declare-fun m!3663659 () Bool)

(assert (=> b!3324202 m!3663659))

(declare-fun m!3663661 () Bool)

(assert (=> b!3324202 m!3663661))

(assert (=> b!3324202 m!3663659))

(assert (=> b!3324202 m!3663661))

(declare-fun m!3663663 () Bool)

(assert (=> b!3324202 m!3663663))

(assert (=> d!934261 d!934569))

(declare-fun d!934571 () Bool)

(assert (=> d!934571 (= (isEmpty!20788 (originalCharacters!6038 (h!42053 tokens!494))) ((_ is Nil!36631) (originalCharacters!6038 (h!42053 tokens!494))))))

(assert (=> d!934249 d!934571))

(declare-fun d!934573 () Bool)

(declare-fun lt!1129592 () Bool)

(assert (=> d!934573 (= lt!1129592 (isEmpty!20794 (list!13177 (_1!21199 lt!1129231))))))

(declare-fun isEmpty!20795 (Conc!11024) Bool)

(assert (=> d!934573 (= lt!1129592 (isEmpty!20795 (c!564522 (_1!21199 lt!1129231))))))

(assert (=> d!934573 (= (isEmpty!20789 (_1!21199 lt!1129231)) lt!1129592)))

(declare-fun bs!550755 () Bool)

(assert (= bs!550755 d!934573))

(assert (=> bs!550755 m!3662801))

(assert (=> bs!550755 m!3662801))

(declare-fun m!3663665 () Bool)

(assert (=> bs!550755 m!3663665))

(declare-fun m!3663667 () Bool)

(assert (=> bs!550755 m!3663667))

(assert (=> b!3323594 d!934573))

(declare-fun d!934575 () Bool)

(assert (=> d!934575 (= (inv!49623 (tag!5876 (h!42052 (t!256359 rules!2135)))) (= (mod (str.len (value!172193 (tag!5876 (h!42052 (t!256359 rules!2135))))) 2) 0))))

(assert (=> b!3323744 d!934575))

(declare-fun d!934577 () Bool)

(declare-fun res!1348405 () Bool)

(declare-fun e!2067401 () Bool)

(assert (=> d!934577 (=> (not res!1348405) (not e!2067401))))

(assert (=> d!934577 (= res!1348405 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))))))

(assert (=> d!934577 (= (inv!49626 (transformation!5324 (h!42052 (t!256359 rules!2135)))) e!2067401)))

(declare-fun b!3324203 () Bool)

(assert (=> b!3324203 (= e!2067401 (equivClasses!2108 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))))))

(assert (= (and d!934577 res!1348405) b!3324203))

(declare-fun m!3663669 () Bool)

(assert (=> d!934577 m!3663669))

(declare-fun m!3663671 () Bool)

(assert (=> b!3324203 m!3663671))

(assert (=> b!3323744 d!934577))

(declare-fun d!934579 () Bool)

(declare-fun res!1348406 () Bool)

(declare-fun e!2067402 () Bool)

(assert (=> d!934579 (=> res!1348406 e!2067402)))

(assert (=> d!934579 (= res!1348406 ((_ is Nil!36633) lt!1129228))))

(assert (=> d!934579 (= (forall!7629 lt!1129228 lambda!119593) e!2067402)))

(declare-fun b!3324204 () Bool)

(declare-fun e!2067403 () Bool)

(assert (=> b!3324204 (= e!2067402 e!2067403)))

(declare-fun res!1348407 () Bool)

(assert (=> b!3324204 (=> (not res!1348407) (not e!2067403))))

(assert (=> b!3324204 (= res!1348407 (dynLambda!15088 lambda!119593 (h!42053 lt!1129228)))))

(declare-fun b!3324205 () Bool)

(assert (=> b!3324205 (= e!2067403 (forall!7629 (t!256360 lt!1129228) lambda!119593))))

(assert (= (and d!934579 (not res!1348406)) b!3324204))

(assert (= (and b!3324204 res!1348407) b!3324205))

(declare-fun b_lambda!93739 () Bool)

(assert (=> (not b_lambda!93739) (not b!3324204)))

(declare-fun m!3663673 () Bool)

(assert (=> b!3324204 m!3663673))

(declare-fun m!3663675 () Bool)

(assert (=> b!3324205 m!3663675))

(assert (=> b!3323552 d!934579))

(declare-fun d!934581 () Bool)

(declare-fun lt!1129595 () Int)

(assert (=> d!934581 (= lt!1129595 (size!27691 (list!13180 (_2!21199 lt!1129231))))))

(declare-fun size!27697 (Conc!11023) Int)

(assert (=> d!934581 (= lt!1129595 (size!27697 (c!564521 (_2!21199 lt!1129231))))))

(assert (=> d!934581 (= (size!27693 (_2!21199 lt!1129231)) lt!1129595)))

(declare-fun bs!550756 () Bool)

(assert (= bs!550756 d!934581))

(assert (=> bs!550756 m!3662817))

(assert (=> bs!550756 m!3662817))

(declare-fun m!3663677 () Bool)

(assert (=> bs!550756 m!3663677))

(declare-fun m!3663679 () Bool)

(assert (=> bs!550756 m!3663679))

(assert (=> b!3323598 d!934581))

(declare-fun d!934583 () Bool)

(declare-fun lt!1129596 () Int)

(assert (=> d!934583 (= lt!1129596 (size!27691 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> d!934583 (= lt!1129596 (size!27697 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> d!934583 (= (size!27693 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) lt!1129596)))

(declare-fun bs!550757 () Bool)

(assert (= bs!550757 d!934583))

(assert (=> bs!550757 m!3662617))

(assert (=> bs!550757 m!3662803))

(assert (=> bs!550757 m!3662803))

(assert (=> bs!550757 m!3663325))

(declare-fun m!3663681 () Bool)

(assert (=> bs!550757 m!3663681))

(assert (=> b!3323598 d!934583))

(declare-fun d!934585 () Bool)

(declare-fun res!1348412 () Bool)

(declare-fun e!2067408 () Bool)

(assert (=> d!934585 (=> res!1348412 e!2067408)))

(assert (=> d!934585 (= res!1348412 ((_ is Nil!36632) rules!2135))))

(assert (=> d!934585 (= (noDuplicateTag!1965 thiss!18206 rules!2135 Nil!36635) e!2067408)))

(declare-fun b!3324210 () Bool)

(declare-fun e!2067409 () Bool)

(assert (=> b!3324210 (= e!2067408 e!2067409)))

(declare-fun res!1348413 () Bool)

(assert (=> b!3324210 (=> (not res!1348413) (not e!2067409))))

(declare-fun contains!6637 (List!36759 String!41104) Bool)

(assert (=> b!3324210 (= res!1348413 (not (contains!6637 Nil!36635 (tag!5876 (h!42052 rules!2135)))))))

(declare-fun b!3324211 () Bool)

(assert (=> b!3324211 (= e!2067409 (noDuplicateTag!1965 thiss!18206 (t!256359 rules!2135) (Cons!36635 (tag!5876 (h!42052 rules!2135)) Nil!36635)))))

(assert (= (and d!934585 (not res!1348412)) b!3324210))

(assert (= (and b!3324210 res!1348413) b!3324211))

(declare-fun m!3663683 () Bool)

(assert (=> b!3324210 m!3663683))

(declare-fun m!3663685 () Bool)

(assert (=> b!3324211 m!3663685))

(assert (=> b!3323601 d!934585))

(declare-fun e!2067410 () Bool)

(assert (=> b!3323749 (= tp!1038393 e!2067410)))

(declare-fun b!3324213 () Bool)

(declare-fun tp!1038532 () Bool)

(declare-fun tp!1038531 () Bool)

(assert (=> b!3324213 (= e!2067410 (and tp!1038532 tp!1038531))))

(declare-fun b!3324214 () Bool)

(declare-fun tp!1038533 () Bool)

(assert (=> b!3324214 (= e!2067410 tp!1038533)))

(declare-fun b!3324212 () Bool)

(assert (=> b!3324212 (= e!2067410 tp_is_empty!17409)))

(declare-fun b!3324215 () Bool)

(declare-fun tp!1038530 () Bool)

(declare-fun tp!1038534 () Bool)

(assert (=> b!3324215 (= e!2067410 (and tp!1038530 tp!1038534))))

(assert (= (and b!3323749 ((_ is ElementMatch!10083) (regOne!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324212))

(assert (= (and b!3323749 ((_ is Concat!15637) (regOne!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324213))

(assert (= (and b!3323749 ((_ is Star!10083) (regOne!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324214))

(assert (= (and b!3323749 ((_ is Union!10083) (regOne!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324215))

(declare-fun e!2067411 () Bool)

(assert (=> b!3323749 (= tp!1038397 e!2067411)))

(declare-fun b!3324217 () Bool)

(declare-fun tp!1038537 () Bool)

(declare-fun tp!1038536 () Bool)

(assert (=> b!3324217 (= e!2067411 (and tp!1038537 tp!1038536))))

(declare-fun b!3324218 () Bool)

(declare-fun tp!1038538 () Bool)

(assert (=> b!3324218 (= e!2067411 tp!1038538)))

(declare-fun b!3324216 () Bool)

(assert (=> b!3324216 (= e!2067411 tp_is_empty!17409)))

(declare-fun b!3324219 () Bool)

(declare-fun tp!1038535 () Bool)

(declare-fun tp!1038539 () Bool)

(assert (=> b!3324219 (= e!2067411 (and tp!1038535 tp!1038539))))

(assert (= (and b!3323749 ((_ is ElementMatch!10083) (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324216))

(assert (= (and b!3323749 ((_ is Concat!15637) (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324217))

(assert (= (and b!3323749 ((_ is Star!10083) (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324218))

(assert (= (and b!3323749 ((_ is Union!10083) (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241))))) b!3324219))

(declare-fun e!2067412 () Bool)

(assert (=> b!3323752 (= tp!1038401 e!2067412)))

(declare-fun b!3324221 () Bool)

(declare-fun tp!1038542 () Bool)

(declare-fun tp!1038541 () Bool)

(assert (=> b!3324221 (= e!2067412 (and tp!1038542 tp!1038541))))

(declare-fun b!3324222 () Bool)

(declare-fun tp!1038543 () Bool)

(assert (=> b!3324222 (= e!2067412 tp!1038543)))

(declare-fun b!3324220 () Bool)

(assert (=> b!3324220 (= e!2067412 tp_is_empty!17409)))

(declare-fun b!3324223 () Bool)

(declare-fun tp!1038540 () Bool)

(declare-fun tp!1038544 () Bool)

(assert (=> b!3324223 (= e!2067412 (and tp!1038540 tp!1038544))))

(assert (= (and b!3323752 ((_ is ElementMatch!10083) (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324220))

(assert (= (and b!3323752 ((_ is Concat!15637) (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324221))

(assert (= (and b!3323752 ((_ is Star!10083) (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324222))

(assert (= (and b!3323752 ((_ is Union!10083) (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324223))

(declare-fun e!2067413 () Bool)

(assert (=> b!3323753 (= tp!1038398 e!2067413)))

(declare-fun b!3324225 () Bool)

(declare-fun tp!1038547 () Bool)

(declare-fun tp!1038546 () Bool)

(assert (=> b!3324225 (= e!2067413 (and tp!1038547 tp!1038546))))

(declare-fun b!3324226 () Bool)

(declare-fun tp!1038548 () Bool)

(assert (=> b!3324226 (= e!2067413 tp!1038548)))

(declare-fun b!3324224 () Bool)

(assert (=> b!3324224 (= e!2067413 tp_is_empty!17409)))

(declare-fun b!3324227 () Bool)

(declare-fun tp!1038545 () Bool)

(declare-fun tp!1038549 () Bool)

(assert (=> b!3324227 (= e!2067413 (and tp!1038545 tp!1038549))))

(assert (= (and b!3323753 ((_ is ElementMatch!10083) (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324224))

(assert (= (and b!3323753 ((_ is Concat!15637) (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324225))

(assert (= (and b!3323753 ((_ is Star!10083) (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324226))

(assert (= (and b!3323753 ((_ is Union!10083) (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324227))

(declare-fun e!2067414 () Bool)

(assert (=> b!3323753 (= tp!1038402 e!2067414)))

(declare-fun b!3324229 () Bool)

(declare-fun tp!1038552 () Bool)

(declare-fun tp!1038551 () Bool)

(assert (=> b!3324229 (= e!2067414 (and tp!1038552 tp!1038551))))

(declare-fun b!3324230 () Bool)

(declare-fun tp!1038553 () Bool)

(assert (=> b!3324230 (= e!2067414 tp!1038553)))

(declare-fun b!3324228 () Bool)

(assert (=> b!3324228 (= e!2067414 tp_is_empty!17409)))

(declare-fun b!3324231 () Bool)

(declare-fun tp!1038550 () Bool)

(declare-fun tp!1038554 () Bool)

(assert (=> b!3324231 (= e!2067414 (and tp!1038550 tp!1038554))))

(assert (= (and b!3323753 ((_ is ElementMatch!10083) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324228))

(assert (= (and b!3323753 ((_ is Concat!15637) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324229))

(assert (= (and b!3323753 ((_ is Star!10083) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324230))

(assert (= (and b!3323753 ((_ is Union!10083) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324231))

(declare-fun e!2067415 () Bool)

(assert (=> b!3323767 (= tp!1038415 e!2067415)))

(declare-fun b!3324233 () Bool)

(declare-fun tp!1038557 () Bool)

(declare-fun tp!1038556 () Bool)

(assert (=> b!3324233 (= e!2067415 (and tp!1038557 tp!1038556))))

(declare-fun b!3324234 () Bool)

(declare-fun tp!1038558 () Bool)

(assert (=> b!3324234 (= e!2067415 tp!1038558)))

(declare-fun b!3324232 () Bool)

(assert (=> b!3324232 (= e!2067415 tp_is_empty!17409)))

(declare-fun b!3324235 () Bool)

(declare-fun tp!1038555 () Bool)

(declare-fun tp!1038559 () Bool)

(assert (=> b!3324235 (= e!2067415 (and tp!1038555 tp!1038559))))

(assert (= (and b!3323767 ((_ is ElementMatch!10083) (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) b!3324232))

(assert (= (and b!3323767 ((_ is Concat!15637) (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) b!3324233))

(assert (= (and b!3323767 ((_ is Star!10083) (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) b!3324234))

(assert (= (and b!3323767 ((_ is Union!10083) (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) b!3324235))

(declare-fun e!2067416 () Bool)

(assert (=> b!3323748 (= tp!1038396 e!2067416)))

(declare-fun b!3324237 () Bool)

(declare-fun tp!1038562 () Bool)

(declare-fun tp!1038561 () Bool)

(assert (=> b!3324237 (= e!2067416 (and tp!1038562 tp!1038561))))

(declare-fun b!3324238 () Bool)

(declare-fun tp!1038563 () Bool)

(assert (=> b!3324238 (= e!2067416 tp!1038563)))

(declare-fun b!3324236 () Bool)

(assert (=> b!3324236 (= e!2067416 tp_is_empty!17409)))

(declare-fun b!3324239 () Bool)

(declare-fun tp!1038560 () Bool)

(declare-fun tp!1038564 () Bool)

(assert (=> b!3324239 (= e!2067416 (and tp!1038560 tp!1038564))))

(assert (= (and b!3323748 ((_ is ElementMatch!10083) (reg!10412 (regex!5324 (rule!7846 separatorToken!241))))) b!3324236))

(assert (= (and b!3323748 ((_ is Concat!15637) (reg!10412 (regex!5324 (rule!7846 separatorToken!241))))) b!3324237))

(assert (= (and b!3323748 ((_ is Star!10083) (reg!10412 (regex!5324 (rule!7846 separatorToken!241))))) b!3324238))

(assert (= (and b!3323748 ((_ is Union!10083) (reg!10412 (regex!5324 (rule!7846 separatorToken!241))))) b!3324239))

(declare-fun b!3324248 () Bool)

(declare-fun tp!1038573 () Bool)

(declare-fun tp!1038572 () Bool)

(declare-fun e!2067421 () Bool)

(assert (=> b!3324248 (= e!2067421 (and (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) tp!1038573 (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) tp!1038572))))

(declare-fun b!3324250 () Bool)

(declare-fun e!2067422 () Bool)

(declare-fun tp!1038571 () Bool)

(assert (=> b!3324250 (= e!2067422 tp!1038571)))

(declare-fun b!3324249 () Bool)

(declare-fun inv!49637 (IArray!22051) Bool)

(assert (=> b!3324249 (= e!2067421 (and (inv!49637 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) e!2067422))))

(assert (=> b!3323535 (= tp!1038301 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) e!2067421))))

(assert (= (and b!3323535 ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) b!3324248))

(assert (= b!3324249 b!3324250))

(assert (= (and b!3323535 ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) b!3324249))

(declare-fun m!3663687 () Bool)

(assert (=> b!3324248 m!3663687))

(declare-fun m!3663689 () Bool)

(assert (=> b!3324248 m!3663689))

(declare-fun m!3663691 () Bool)

(assert (=> b!3324249 m!3663691))

(assert (=> b!3323535 m!3662733))

(declare-fun b!3324253 () Bool)

(declare-fun b_free!87469 () Bool)

(declare-fun b_next!88173 () Bool)

(assert (=> b!3324253 (= b_free!87469 (not b_next!88173))))

(declare-fun tp!1038575 () Bool)

(declare-fun b_and!229015 () Bool)

(assert (=> b!3324253 (= tp!1038575 b_and!229015)))

(declare-fun b_free!87471 () Bool)

(declare-fun b_next!88175 () Bool)

(assert (=> b!3324253 (= b_free!87471 (not b_next!88175))))

(declare-fun tb!173979 () Bool)

(declare-fun t!256454 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256454) tb!173979))

(declare-fun result!217036 () Bool)

(assert (= result!217036 result!216940))

(assert (=> b!3323529 t!256454))

(declare-fun tb!173981 () Bool)

(declare-fun t!256456 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256456) tb!173981))

(declare-fun result!217038 () Bool)

(assert (= result!217038 result!216956))

(assert (=> b!3323602 t!256456))

(declare-fun t!256458 () Bool)

(declare-fun tb!173983 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256458) tb!173983))

(declare-fun result!217040 () Bool)

(assert (= result!217040 result!217010))

(assert (=> b!3324044 t!256458))

(declare-fun tp!1038574 () Bool)

(declare-fun b_and!229017 () Bool)

(assert (=> b!3324253 (= tp!1038574 (and (=> t!256454 result!217036) (=> t!256456 result!217038) (=> t!256458 result!217040) b_and!229017))))

(declare-fun e!2067425 () Bool)

(assert (=> b!3324253 (= e!2067425 (and tp!1038575 tp!1038574))))

(declare-fun tp!1038577 () Bool)

(declare-fun b!3324252 () Bool)

(declare-fun e!2067423 () Bool)

(assert (=> b!3324252 (= e!2067423 (and tp!1038577 (inv!49623 (tag!5876 (h!42052 (t!256359 (t!256359 rules!2135))))) (inv!49626 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) e!2067425))))

(declare-fun b!3324251 () Bool)

(declare-fun e!2067426 () Bool)

(declare-fun tp!1038576 () Bool)

(assert (=> b!3324251 (= e!2067426 (and e!2067423 tp!1038576))))

(assert (=> b!3323743 (= tp!1038391 e!2067426)))

(assert (= b!3324252 b!3324253))

(assert (= b!3324251 b!3324252))

(assert (= (and b!3323743 ((_ is Cons!36632) (t!256359 (t!256359 rules!2135)))) b!3324251))

(declare-fun m!3663693 () Bool)

(assert (=> b!3324252 m!3663693))

(declare-fun m!3663695 () Bool)

(assert (=> b!3324252 m!3663695))

(declare-fun b!3324254 () Bool)

(declare-fun e!2067427 () Bool)

(declare-fun tp!1038578 () Bool)

(assert (=> b!3324254 (= e!2067427 (and tp_is_empty!17409 tp!1038578))))

(assert (=> b!3323754 (= tp!1038403 e!2067427)))

(assert (= (and b!3323754 ((_ is Cons!36631) (t!256358 (originalCharacters!6038 (h!42053 tokens!494))))) b!3324254))

(declare-fun e!2067428 () Bool)

(assert (=> b!3323744 (= tp!1038392 e!2067428)))

(declare-fun b!3324256 () Bool)

(declare-fun tp!1038581 () Bool)

(declare-fun tp!1038580 () Bool)

(assert (=> b!3324256 (= e!2067428 (and tp!1038581 tp!1038580))))

(declare-fun b!3324257 () Bool)

(declare-fun tp!1038582 () Bool)

(assert (=> b!3324257 (= e!2067428 tp!1038582)))

(declare-fun b!3324255 () Bool)

(assert (=> b!3324255 (= e!2067428 tp_is_empty!17409)))

(declare-fun b!3324258 () Bool)

(declare-fun tp!1038579 () Bool)

(declare-fun tp!1038583 () Bool)

(assert (=> b!3324258 (= e!2067428 (and tp!1038579 tp!1038583))))

(assert (= (and b!3323744 ((_ is ElementMatch!10083) (regex!5324 (h!42052 (t!256359 rules!2135))))) b!3324255))

(assert (= (and b!3323744 ((_ is Concat!15637) (regex!5324 (h!42052 (t!256359 rules!2135))))) b!3324256))

(assert (= (and b!3323744 ((_ is Star!10083) (regex!5324 (h!42052 (t!256359 rules!2135))))) b!3324257))

(assert (= (and b!3323744 ((_ is Union!10083) (regex!5324 (h!42052 (t!256359 rules!2135))))) b!3324258))

(declare-fun b!3324259 () Bool)

(declare-fun e!2067429 () Bool)

(declare-fun tp!1038584 () Bool)

(assert (=> b!3324259 (= e!2067429 (and tp_is_empty!17409 tp!1038584))))

(assert (=> b!3323720 (= tp!1038365 e!2067429)))

(assert (= (and b!3323720 ((_ is Cons!36631) (t!256358 (originalCharacters!6038 separatorToken!241)))) b!3324259))

(declare-fun e!2067430 () Bool)

(assert (=> b!3323751 (= tp!1038400 e!2067430)))

(declare-fun b!3324261 () Bool)

(declare-fun tp!1038587 () Bool)

(declare-fun tp!1038586 () Bool)

(assert (=> b!3324261 (= e!2067430 (and tp!1038587 tp!1038586))))

(declare-fun b!3324262 () Bool)

(declare-fun tp!1038588 () Bool)

(assert (=> b!3324262 (= e!2067430 tp!1038588)))

(declare-fun b!3324260 () Bool)

(assert (=> b!3324260 (= e!2067430 tp_is_empty!17409)))

(declare-fun b!3324263 () Bool)

(declare-fun tp!1038585 () Bool)

(declare-fun tp!1038589 () Bool)

(assert (=> b!3324263 (= e!2067430 (and tp!1038585 tp!1038589))))

(assert (= (and b!3323751 ((_ is ElementMatch!10083) (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324260))

(assert (= (and b!3323751 ((_ is Concat!15637) (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324261))

(assert (= (and b!3323751 ((_ is Star!10083) (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324262))

(assert (= (and b!3323751 ((_ is Union!10083) (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324263))

(declare-fun e!2067431 () Bool)

(assert (=> b!3323751 (= tp!1038399 e!2067431)))

(declare-fun b!3324265 () Bool)

(declare-fun tp!1038592 () Bool)

(declare-fun tp!1038591 () Bool)

(assert (=> b!3324265 (= e!2067431 (and tp!1038592 tp!1038591))))

(declare-fun b!3324266 () Bool)

(declare-fun tp!1038593 () Bool)

(assert (=> b!3324266 (= e!2067431 tp!1038593)))

(declare-fun b!3324264 () Bool)

(assert (=> b!3324264 (= e!2067431 tp_is_empty!17409)))

(declare-fun b!3324267 () Bool)

(declare-fun tp!1038590 () Bool)

(declare-fun tp!1038594 () Bool)

(assert (=> b!3324267 (= e!2067431 (and tp!1038590 tp!1038594))))

(assert (= (and b!3323751 ((_ is ElementMatch!10083) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324264))

(assert (= (and b!3323751 ((_ is Concat!15637) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324265))

(assert (= (and b!3323751 ((_ is Star!10083) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324266))

(assert (= (and b!3323751 ((_ is Union!10083) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494)))))) b!3324267))

(declare-fun b!3324271 () Bool)

(declare-fun b_free!87473 () Bool)

(declare-fun b_next!88177 () Bool)

(assert (=> b!3324271 (= b_free!87473 (not b_next!88177))))

(declare-fun tp!1038599 () Bool)

(declare-fun b_and!229019 () Bool)

(assert (=> b!3324271 (= tp!1038599 b_and!229019)))

(declare-fun b_free!87475 () Bool)

(declare-fun b_next!88179 () Bool)

(assert (=> b!3324271 (= b_free!87475 (not b_next!88179))))

(declare-fun t!256460 () Bool)

(declare-fun tb!173985 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256460) tb!173985))

(declare-fun result!217042 () Bool)

(assert (= result!217042 result!216940))

(assert (=> b!3323529 t!256460))

(declare-fun t!256462 () Bool)

(declare-fun tb!173987 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256462) tb!173987))

(declare-fun result!217044 () Bool)

(assert (= result!217044 result!216956))

(assert (=> b!3323602 t!256462))

(declare-fun t!256464 () Bool)

(declare-fun tb!173989 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256464) tb!173989))

(declare-fun result!217046 () Bool)

(assert (= result!217046 result!217010))

(assert (=> b!3324044 t!256464))

(declare-fun tp!1038597 () Bool)

(declare-fun b_and!229021 () Bool)

(assert (=> b!3324271 (= tp!1038597 (and (=> t!256460 result!217042) (=> t!256462 result!217044) (=> t!256464 result!217046) b_and!229021))))

(declare-fun e!2067437 () Bool)

(assert (=> b!3324271 (= e!2067437 (and tp!1038599 tp!1038597))))

(declare-fun tp!1038598 () Bool)

(declare-fun e!2067432 () Bool)

(declare-fun b!3324269 () Bool)

(declare-fun e!2067436 () Bool)

(assert (=> b!3324269 (= e!2067432 (and (inv!21 (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))) e!2067436 tp!1038598))))

(declare-fun e!2067435 () Bool)

(assert (=> b!3323765 (= tp!1038414 e!2067435)))

(declare-fun b!3324270 () Bool)

(declare-fun tp!1038596 () Bool)

(assert (=> b!3324270 (= e!2067436 (and tp!1038596 (inv!49623 (tag!5876 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (inv!49626 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) e!2067437))))

(declare-fun b!3324268 () Bool)

(declare-fun tp!1038595 () Bool)

(assert (=> b!3324268 (= e!2067435 (and (inv!49627 (h!42053 (t!256360 (t!256360 tokens!494)))) e!2067432 tp!1038595))))

(assert (= b!3324270 b!3324271))

(assert (= b!3324269 b!3324270))

(assert (= b!3324268 b!3324269))

(assert (= (and b!3323765 ((_ is Cons!36633) (t!256360 (t!256360 tokens!494)))) b!3324268))

(declare-fun m!3663697 () Bool)

(assert (=> b!3324269 m!3663697))

(declare-fun m!3663699 () Bool)

(assert (=> b!3324270 m!3663699))

(declare-fun m!3663701 () Bool)

(assert (=> b!3324270 m!3663701))

(declare-fun m!3663703 () Bool)

(assert (=> b!3324268 m!3663703))

(declare-fun b!3324272 () Bool)

(declare-fun e!2067438 () Bool)

(declare-fun tp!1038600 () Bool)

(assert (=> b!3324272 (= e!2067438 (and tp_is_empty!17409 tp!1038600))))

(assert (=> b!3323766 (= tp!1038417 e!2067438)))

(assert (= (and b!3323766 ((_ is Cons!36631) (originalCharacters!6038 (h!42053 (t!256360 tokens!494))))) b!3324272))

(declare-fun e!2067439 () Bool)

(assert (=> b!3323747 (= tp!1038395 e!2067439)))

(declare-fun b!3324274 () Bool)

(declare-fun tp!1038603 () Bool)

(declare-fun tp!1038602 () Bool)

(assert (=> b!3324274 (= e!2067439 (and tp!1038603 tp!1038602))))

(declare-fun b!3324275 () Bool)

(declare-fun tp!1038604 () Bool)

(assert (=> b!3324275 (= e!2067439 tp!1038604)))

(declare-fun b!3324273 () Bool)

(assert (=> b!3324273 (= e!2067439 tp_is_empty!17409)))

(declare-fun b!3324276 () Bool)

(declare-fun tp!1038601 () Bool)

(declare-fun tp!1038605 () Bool)

(assert (=> b!3324276 (= e!2067439 (and tp!1038601 tp!1038605))))

(assert (= (and b!3323747 ((_ is ElementMatch!10083) (regOne!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324273))

(assert (= (and b!3323747 ((_ is Concat!15637) (regOne!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324274))

(assert (= (and b!3323747 ((_ is Star!10083) (regOne!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324275))

(assert (= (and b!3323747 ((_ is Union!10083) (regOne!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324276))

(declare-fun e!2067440 () Bool)

(assert (=> b!3323747 (= tp!1038394 e!2067440)))

(declare-fun b!3324278 () Bool)

(declare-fun tp!1038608 () Bool)

(declare-fun tp!1038607 () Bool)

(assert (=> b!3324278 (= e!2067440 (and tp!1038608 tp!1038607))))

(declare-fun b!3324279 () Bool)

(declare-fun tp!1038609 () Bool)

(assert (=> b!3324279 (= e!2067440 tp!1038609)))

(declare-fun b!3324277 () Bool)

(assert (=> b!3324277 (= e!2067440 tp_is_empty!17409)))

(declare-fun b!3324280 () Bool)

(declare-fun tp!1038606 () Bool)

(declare-fun tp!1038610 () Bool)

(assert (=> b!3324280 (= e!2067440 (and tp!1038606 tp!1038610))))

(assert (= (and b!3323747 ((_ is ElementMatch!10083) (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324277))

(assert (= (and b!3323747 ((_ is Concat!15637) (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324278))

(assert (= (and b!3323747 ((_ is Star!10083) (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324279))

(assert (= (and b!3323747 ((_ is Union!10083) (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241))))) b!3324280))

(declare-fun tp!1038612 () Bool)

(declare-fun tp!1038613 () Bool)

(declare-fun b!3324281 () Bool)

(declare-fun e!2067441 () Bool)

(assert (=> b!3324281 (= e!2067441 (and (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) tp!1038613 (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) tp!1038612))))

(declare-fun b!3324283 () Bool)

(declare-fun e!2067442 () Bool)

(declare-fun tp!1038611 () Bool)

(assert (=> b!3324283 (= e!2067442 tp!1038611)))

(declare-fun b!3324282 () Bool)

(assert (=> b!3324282 (= e!2067441 (and (inv!49637 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) e!2067442))))

(assert (=> b!3323604 (= tp!1038305 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) e!2067441))))

(assert (= (and b!3323604 ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) b!3324281))

(assert (= b!3324282 b!3324283))

(assert (= (and b!3323604 ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) b!3324282))

(declare-fun m!3663705 () Bool)

(assert (=> b!3324281 m!3663705))

(declare-fun m!3663707 () Bool)

(assert (=> b!3324281 m!3663707))

(declare-fun m!3663709 () Bool)

(assert (=> b!3324282 m!3663709))

(assert (=> b!3323604 m!3662831))

(declare-fun e!2067443 () Bool)

(assert (=> b!3323734 (= tp!1038376 e!2067443)))

(declare-fun b!3324285 () Bool)

(declare-fun tp!1038616 () Bool)

(declare-fun tp!1038615 () Bool)

(assert (=> b!3324285 (= e!2067443 (and tp!1038616 tp!1038615))))

(declare-fun b!3324286 () Bool)

(declare-fun tp!1038617 () Bool)

(assert (=> b!3324286 (= e!2067443 tp!1038617)))

(declare-fun b!3324284 () Bool)

(assert (=> b!3324284 (= e!2067443 tp_is_empty!17409)))

(declare-fun b!3324287 () Bool)

(declare-fun tp!1038614 () Bool)

(declare-fun tp!1038618 () Bool)

(assert (=> b!3324287 (= e!2067443 (and tp!1038614 tp!1038618))))

(assert (= (and b!3323734 ((_ is ElementMatch!10083) (regOne!20679 (regex!5324 (h!42052 rules!2135))))) b!3324284))

(assert (= (and b!3323734 ((_ is Concat!15637) (regOne!20679 (regex!5324 (h!42052 rules!2135))))) b!3324285))

(assert (= (and b!3323734 ((_ is Star!10083) (regOne!20679 (regex!5324 (h!42052 rules!2135))))) b!3324286))

(assert (= (and b!3323734 ((_ is Union!10083) (regOne!20679 (regex!5324 (h!42052 rules!2135))))) b!3324287))

(declare-fun e!2067444 () Bool)

(assert (=> b!3323734 (= tp!1038380 e!2067444)))

(declare-fun b!3324289 () Bool)

(declare-fun tp!1038621 () Bool)

(declare-fun tp!1038620 () Bool)

(assert (=> b!3324289 (= e!2067444 (and tp!1038621 tp!1038620))))

(declare-fun b!3324290 () Bool)

(declare-fun tp!1038622 () Bool)

(assert (=> b!3324290 (= e!2067444 tp!1038622)))

(declare-fun b!3324288 () Bool)

(assert (=> b!3324288 (= e!2067444 tp_is_empty!17409)))

(declare-fun b!3324291 () Bool)

(declare-fun tp!1038619 () Bool)

(declare-fun tp!1038623 () Bool)

(assert (=> b!3324291 (= e!2067444 (and tp!1038619 tp!1038623))))

(assert (= (and b!3323734 ((_ is ElementMatch!10083) (regTwo!20679 (regex!5324 (h!42052 rules!2135))))) b!3324288))

(assert (= (and b!3323734 ((_ is Concat!15637) (regTwo!20679 (regex!5324 (h!42052 rules!2135))))) b!3324289))

(assert (= (and b!3323734 ((_ is Star!10083) (regTwo!20679 (regex!5324 (h!42052 rules!2135))))) b!3324290))

(assert (= (and b!3323734 ((_ is Union!10083) (regTwo!20679 (regex!5324 (h!42052 rules!2135))))) b!3324291))

(declare-fun e!2067445 () Bool)

(assert (=> b!3323732 (= tp!1038378 e!2067445)))

(declare-fun b!3324293 () Bool)

(declare-fun tp!1038626 () Bool)

(declare-fun tp!1038625 () Bool)

(assert (=> b!3324293 (= e!2067445 (and tp!1038626 tp!1038625))))

(declare-fun b!3324294 () Bool)

(declare-fun tp!1038627 () Bool)

(assert (=> b!3324294 (= e!2067445 tp!1038627)))

(declare-fun b!3324292 () Bool)

(assert (=> b!3324292 (= e!2067445 tp_is_empty!17409)))

(declare-fun b!3324295 () Bool)

(declare-fun tp!1038624 () Bool)

(declare-fun tp!1038628 () Bool)

(assert (=> b!3324295 (= e!2067445 (and tp!1038624 tp!1038628))))

(assert (= (and b!3323732 ((_ is ElementMatch!10083) (regOne!20678 (regex!5324 (h!42052 rules!2135))))) b!3324292))

(assert (= (and b!3323732 ((_ is Concat!15637) (regOne!20678 (regex!5324 (h!42052 rules!2135))))) b!3324293))

(assert (= (and b!3323732 ((_ is Star!10083) (regOne!20678 (regex!5324 (h!42052 rules!2135))))) b!3324294))

(assert (= (and b!3323732 ((_ is Union!10083) (regOne!20678 (regex!5324 (h!42052 rules!2135))))) b!3324295))

(declare-fun e!2067446 () Bool)

(assert (=> b!3323732 (= tp!1038377 e!2067446)))

(declare-fun b!3324297 () Bool)

(declare-fun tp!1038631 () Bool)

(declare-fun tp!1038630 () Bool)

(assert (=> b!3324297 (= e!2067446 (and tp!1038631 tp!1038630))))

(declare-fun b!3324298 () Bool)

(declare-fun tp!1038632 () Bool)

(assert (=> b!3324298 (= e!2067446 tp!1038632)))

(declare-fun b!3324296 () Bool)

(assert (=> b!3324296 (= e!2067446 tp_is_empty!17409)))

(declare-fun b!3324299 () Bool)

(declare-fun tp!1038629 () Bool)

(declare-fun tp!1038633 () Bool)

(assert (=> b!3324299 (= e!2067446 (and tp!1038629 tp!1038633))))

(assert (= (and b!3323732 ((_ is ElementMatch!10083) (regTwo!20678 (regex!5324 (h!42052 rules!2135))))) b!3324296))

(assert (= (and b!3323732 ((_ is Concat!15637) (regTwo!20678 (regex!5324 (h!42052 rules!2135))))) b!3324297))

(assert (= (and b!3323732 ((_ is Star!10083) (regTwo!20678 (regex!5324 (h!42052 rules!2135))))) b!3324298))

(assert (= (and b!3323732 ((_ is Union!10083) (regTwo!20678 (regex!5324 (h!42052 rules!2135))))) b!3324299))

(declare-fun b!3324302 () Bool)

(declare-fun e!2067449 () Bool)

(assert (=> b!3324302 (= e!2067449 true)))

(declare-fun b!3324301 () Bool)

(declare-fun e!2067448 () Bool)

(assert (=> b!3324301 (= e!2067448 e!2067449)))

(declare-fun b!3324300 () Bool)

(declare-fun e!2067447 () Bool)

(assert (=> b!3324300 (= e!2067447 e!2067448)))

(assert (=> b!3323709 e!2067447))

(assert (= b!3324301 b!3324302))

(assert (= b!3324300 b!3324301))

(assert (= (and b!3323709 ((_ is Cons!36632) (t!256359 rules!2135))) b!3324300))

(assert (=> b!3324302 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15091 order!19139 lambda!119603))))

(assert (=> b!3324302 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15091 order!19139 lambda!119603))))

(declare-fun e!2067450 () Bool)

(assert (=> b!3323733 (= tp!1038379 e!2067450)))

(declare-fun b!3324304 () Bool)

(declare-fun tp!1038636 () Bool)

(declare-fun tp!1038635 () Bool)

(assert (=> b!3324304 (= e!2067450 (and tp!1038636 tp!1038635))))

(declare-fun b!3324305 () Bool)

(declare-fun tp!1038637 () Bool)

(assert (=> b!3324305 (= e!2067450 tp!1038637)))

(declare-fun b!3324303 () Bool)

(assert (=> b!3324303 (= e!2067450 tp_is_empty!17409)))

(declare-fun b!3324306 () Bool)

(declare-fun tp!1038634 () Bool)

(declare-fun tp!1038638 () Bool)

(assert (=> b!3324306 (= e!2067450 (and tp!1038634 tp!1038638))))

(assert (= (and b!3323733 ((_ is ElementMatch!10083) (reg!10412 (regex!5324 (h!42052 rules!2135))))) b!3324303))

(assert (= (and b!3323733 ((_ is Concat!15637) (reg!10412 (regex!5324 (h!42052 rules!2135))))) b!3324304))

(assert (= (and b!3323733 ((_ is Star!10083) (reg!10412 (regex!5324 (h!42052 rules!2135))))) b!3324305))

(assert (= (and b!3323733 ((_ is Union!10083) (reg!10412 (regex!5324 (h!42052 rules!2135))))) b!3324306))

(declare-fun b_lambda!93741 () Bool)

(assert (= b_lambda!93727 (or d!934283 b_lambda!93741)))

(declare-fun bs!550758 () Bool)

(declare-fun d!934587 () Bool)

(assert (= bs!550758 (and d!934587 d!934283)))

(assert (=> bs!550758 (= (dynLambda!15088 lambda!119603 (h!42053 (list!13177 lt!1129204))) (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 (h!42053 (list!13177 lt!1129204))))))

(assert (=> bs!550758 m!3663163))

(assert (=> b!3324047 d!934587))

(declare-fun b_lambda!93743 () Bool)

(assert (= b_lambda!93725 (or (and b!3323768 b_free!87459) (and b!3324271 b_free!87475 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) (and b!3324253 b_free!87471 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) (and b!3323421 b_free!87435 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) (and b!3323745 b_free!87455 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) (and b!3323433 b_free!87443 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) (and b!3323427 b_free!87439 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b_lambda!93743)))

(declare-fun b_lambda!93745 () Bool)

(assert (= b_lambda!93739 (or b!3323436 b_lambda!93745)))

(declare-fun bs!550759 () Bool)

(declare-fun d!934589 () Bool)

(assert (= bs!550759 (and d!934589 b!3323436)))

(assert (=> bs!550759 (= (dynLambda!15088 lambda!119593 (h!42053 lt!1129228)) (not (isSeparator!5324 (rule!7846 (h!42053 lt!1129228)))))))

(assert (=> b!3324204 d!934589))

(declare-fun b_lambda!93747 () Bool)

(assert (= b_lambda!93723 (or b!3323436 b_lambda!93747)))

(declare-fun bs!550760 () Bool)

(declare-fun d!934591 () Bool)

(assert (= bs!550760 (and d!934591 b!3323436)))

(assert (=> bs!550760 (= (dynLambda!15088 lambda!119593 (h!42053 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (not (isSeparator!5324 (rule!7846 (h!42053 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))))

(assert (=> b!3323989 d!934591))

(declare-fun b_lambda!93749 () Bool)

(assert (= b_lambda!93721 (or b!3323436 b_lambda!93749)))

(declare-fun bs!550761 () Bool)

(declare-fun d!934593 () Bool)

(assert (= bs!550761 (and d!934593 b!3323436)))

(assert (=> bs!550761 (= (dynLambda!15088 lambda!119593 (h!42053 (t!256360 tokens!494))) (not (isSeparator!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))))

(assert (=> b!3323985 d!934593))

(check-sat (not d!934443) (not b_next!88141) (not b!3324304) (not b!3324235) (not d!934377) (not b!3324297) (not b_next!88177) (not d!934473) (not b!3323930) (not b!3324281) (not tb!173957) (not b!3323535) (not d!934497) (not d!934381) (not b_lambda!93745) (not b_lambda!93709) (not d!934431) (not b!3324217) (not b!3324238) (not b!3324041) (not b!3324048) (not b!3324219) (not b!3324250) (not b!3324263) (not b!3324269) (not d!934555) (not b!3324218) (not b!3323988) (not d!934389) (not b!3324268) (not b!3324279) (not d!934547) (not b!3323887) (not b!3324023) (not b!3323990) (not b!3324287) b_and!228935 (not b!3324202) b_and!228943 (not b!3324283) b_and!229021 (not b!3323889) (not b_lambda!93747) (not b!3324016) (not b!3324262) (not b!3324008) (not b!3324045) (not b!3324270) (not b!3323884) (not b_lambda!93743) (not b!3324226) b_and!229001 (not d!934445) (not d!934581) (not b!3324290) (not b!3323922) tp_is_empty!17409 (not b!3323862) (not b!3324258) (not b!3324285) (not b_next!88175) (not d!934517) (not d!934549) (not d!934491) (not b_next!88161) (not b!3324291) (not b!3324010) (not b!3324266) (not d!934541) (not b!3324211) (not b!3324214) (not b!3324249) (not d!934357) (not b!3323986) (not b_next!88159) (not b!3324278) (not d!934369) (not b_next!88157) (not bm!241313) (not d!934583) (not b_next!88173) (not bs!550758) (not b!3324004) (not b!3324289) b_and!228999 (not b!3324300) (not d!934519) b_and!229003 (not b!3324295) (not d!934551) (not bm!241309) (not b!3324252) (not b!3323951) (not b!3323888) (not b!3324276) (not b!3324230) (not b!3324225) (not b!3324031) (not b!3323979) (not d!934529) (not b!3323923) (not b!3324306) (not d!934447) (not b!3324007) (not d!934553) (not b!3324251) (not b_next!88145) (not b!3324205) (not d!934501) (not b!3324293) (not b!3324254) (not b!3324213) (not b!3324298) (not b_lambda!93703) b_and!229015 (not b!3324272) (not b!3323982) (not d!934485) (not b!3324049) (not b_next!88147) (not b!3324222) (not b!3323921) (not d!934427) (not b!3323949) (not b!3324280) (not b_next!88139) (not d!934577) (not b!3324018) (not b!3324215) (not b!3324050) (not b!3324203) (not d!934509) (not b!3324305) (not d!934493) (not b!3324053) (not b!3323978) b_and!228979 (not b!3324294) (not b_next!88179) (not b!3324248) (not b_lambda!93741) (not b!3324227) (not b!3324186) (not b!3324229) (not d!934387) (not d!934545) (not b!3324190) (not d!934495) (not b!3324221) b_and!229005 b_and!228983 b_and!229019 (not b!3324282) (not b!3324189) (not b!3324184) (not b_next!88163) (not b!3323604) (not d!934543) (not b!3324275) (not b!3324261) (not b!3324286) (not b!3324237) (not b!3323984) (not d!934515) (not b!3324274) (not b_lambda!93707) b_and!229017 b_and!228939 (not d!934435) (not b!3324046) (not b!3324039) (not b!3324233) (not b!3324256) (not b!3323875) (not b!3324044) (not b!3324223) (not d!934535) (not d!934499) (not b_lambda!93749) (not d!934513) (not b!3324033) b_and!228997 (not b!3324234) (not b!3323976) (not b_next!88143) (not d!934573) (not d!934449) (not d!934477) (not d!934531) (not d!934539) (not b!3324201) (not b!3324299) (not b_lambda!93705) (not b!3324259) (not b!3324265) (not b!3324267) (not d!934527) (not b!3324257) (not b!3324210) (not b!3324231) (not b!3324239) (not b_next!88137) (not b!3323975) (not d!934567) (not b!3324003))
(check-sat (not b_next!88141) (not b_next!88177) b_and!229001 (not b_next!88175) (not b_next!88161) (not b_next!88145) (not b_next!88139) (not b_next!88163) (not b_next!88137) b_and!228935 b_and!228943 b_and!229021 (not b_next!88159) (not b_next!88173) (not b_next!88157) b_and!228999 b_and!229003 b_and!229015 (not b_next!88147) b_and!228979 (not b_next!88179) b_and!229005 b_and!228983 b_and!229019 b_and!229017 b_and!228939 b_and!228997 (not b_next!88143))
(get-model)

(declare-fun d!934619 () Bool)

(assert (=> d!934619 (= (isEmpty!20794 (_1!21201 lt!1129348)) ((_ is Nil!36633) (_1!21201 lt!1129348)))))

(assert (=> b!3324004 d!934619))

(declare-fun lt!1129628 () List!36755)

(declare-fun d!934621 () Bool)

(assert (=> d!934621 (= lt!1129628 (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (printWithSeparatorTokenList!222 thiss!18206 (dropList!1131 lt!1129204 0) separatorToken!241)))))

(declare-fun e!2067463 () List!36755)

(assert (=> d!934621 (= lt!1129628 e!2067463)))

(declare-fun c!564670 () Bool)

(assert (=> d!934621 (= c!564670 ((_ is Cons!36633) (dropList!1131 lt!1129204 0)))))

(assert (=> d!934621 (isSeparator!5324 (rule!7846 separatorToken!241))))

(assert (=> d!934621 (= (printWithSeparatorTokenListTailRec!22 thiss!18206 (dropList!1131 lt!1129204 0) separatorToken!241 (list!13180 (BalanceConc!21661 Empty!11023))) lt!1129628)))

(declare-fun b!3324331 () Bool)

(assert (=> b!3324331 (= e!2067463 (printWithSeparatorTokenListTailRec!22 thiss!18206 (t!256360 (dropList!1131 lt!1129204 0)) separatorToken!241 (++!8895 (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (list!13180 (charsOf!3338 (h!42053 (dropList!1131 lt!1129204 0))))) (list!13180 (charsOf!3338 separatorToken!241)))))))

(declare-fun lt!1129630 () List!36755)

(assert (=> b!3324331 (= lt!1129630 (++!8895 (list!13180 (charsOf!3338 (h!42053 (dropList!1131 lt!1129204 0)))) (list!13180 (charsOf!3338 separatorToken!241))))))

(declare-fun lt!1129626 () List!36755)

(assert (=> b!3324331 (= lt!1129626 (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (dropList!1131 lt!1129204 0)) separatorToken!241))))

(declare-fun lt!1129625 () Unit!51643)

(assert (=> b!3324331 (= lt!1129625 (lemmaConcatAssociativity!1847 (list!13180 (BalanceConc!21661 Empty!11023)) lt!1129630 lt!1129626))))

(assert (=> b!3324331 (= (++!8895 (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) lt!1129630) lt!1129626) (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (++!8895 lt!1129630 lt!1129626)))))

(declare-fun lt!1129627 () Unit!51643)

(assert (=> b!3324331 (= lt!1129627 lt!1129625)))

(declare-fun lt!1129623 () List!36755)

(assert (=> b!3324331 (= lt!1129623 (list!13180 (charsOf!3338 (h!42053 (dropList!1131 lt!1129204 0)))))))

(declare-fun lt!1129622 () List!36755)

(assert (=> b!3324331 (= lt!1129622 (list!13180 (charsOf!3338 separatorToken!241)))))

(declare-fun lt!1129624 () Unit!51643)

(assert (=> b!3324331 (= lt!1129624 (lemmaConcatAssociativity!1847 (list!13180 (BalanceConc!21661 Empty!11023)) lt!1129623 lt!1129622))))

(assert (=> b!3324331 (= (++!8895 (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) lt!1129623) lt!1129622) (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (++!8895 lt!1129623 lt!1129622)))))

(declare-fun lt!1129629 () Unit!51643)

(assert (=> b!3324331 (= lt!1129629 lt!1129624)))

(declare-fun b!3324332 () Bool)

(assert (=> b!3324332 (= e!2067463 (list!13180 (BalanceConc!21661 Empty!11023)))))

(assert (= (and d!934621 c!564670) b!3324331))

(assert (= (and d!934621 (not c!564670)) b!3324332))

(assert (=> d!934621 m!3663361))

(declare-fun m!3663757 () Bool)

(assert (=> d!934621 m!3663757))

(assert (=> d!934621 m!3663359))

(assert (=> d!934621 m!3663757))

(declare-fun m!3663759 () Bool)

(assert (=> d!934621 m!3663759))

(assert (=> b!3324331 m!3663359))

(declare-fun m!3663761 () Bool)

(assert (=> b!3324331 m!3663761))

(declare-fun m!3663763 () Bool)

(assert (=> b!3324331 m!3663763))

(assert (=> b!3324331 m!3663359))

(declare-fun m!3663765 () Bool)

(assert (=> b!3324331 m!3663765))

(assert (=> b!3324331 m!3663359))

(declare-fun m!3663767 () Bool)

(assert (=> b!3324331 m!3663767))

(declare-fun m!3663769 () Bool)

(assert (=> b!3324331 m!3663769))

(assert (=> b!3324331 m!3663765))

(declare-fun m!3663771 () Bool)

(assert (=> b!3324331 m!3663771))

(assert (=> b!3324331 m!3663763))

(assert (=> b!3324331 m!3663767))

(declare-fun m!3663773 () Bool)

(assert (=> b!3324331 m!3663773))

(declare-fun m!3663775 () Bool)

(assert (=> b!3324331 m!3663775))

(declare-fun m!3663777 () Bool)

(assert (=> b!3324331 m!3663777))

(declare-fun m!3663779 () Bool)

(assert (=> b!3324331 m!3663779))

(declare-fun m!3663781 () Bool)

(assert (=> b!3324331 m!3663781))

(assert (=> b!3324331 m!3663769))

(assert (=> b!3324331 m!3663351))

(assert (=> b!3324331 m!3663775))

(declare-fun m!3663783 () Bool)

(assert (=> b!3324331 m!3663783))

(assert (=> b!3324331 m!3663359))

(assert (=> b!3324331 m!3663783))

(declare-fun m!3663785 () Bool)

(assert (=> b!3324331 m!3663785))

(assert (=> b!3324331 m!3663355))

(assert (=> b!3324331 m!3663351))

(assert (=> b!3324331 m!3663359))

(assert (=> b!3324331 m!3663779))

(assert (=> b!3324331 m!3663359))

(assert (=> b!3324331 m!3663773))

(declare-fun m!3663787 () Bool)

(assert (=> b!3324331 m!3663787))

(assert (=> b!3324331 m!3663767))

(assert (=> b!3324331 m!3663351))

(declare-fun m!3663789 () Bool)

(assert (=> b!3324331 m!3663789))

(assert (=> b!3324331 m!3663359))

(declare-fun m!3663791 () Bool)

(assert (=> b!3324331 m!3663791))

(assert (=> b!3324331 m!3663355))

(declare-fun m!3663793 () Bool)

(assert (=> b!3324331 m!3663793))

(assert (=> d!934513 d!934621))

(declare-fun d!934623 () Bool)

(assert (=> d!934623 (= (list!13180 (BalanceConc!21661 Empty!11023)) (list!13184 (c!564521 (BalanceConc!21661 Empty!11023))))))

(declare-fun bs!550768 () Bool)

(assert (= bs!550768 d!934623))

(declare-fun m!3663795 () Bool)

(assert (=> bs!550768 m!3663795))

(assert (=> d!934513 d!934623))

(declare-fun d!934625 () Bool)

(assert (=> d!934625 (= (list!13180 lt!1129366) (list!13184 (c!564521 lt!1129366)))))

(declare-fun bs!550769 () Bool)

(assert (= bs!550769 d!934625))

(declare-fun m!3663797 () Bool)

(assert (=> bs!550769 m!3663797))

(assert (=> d!934513 d!934625))

(declare-fun d!934627 () Bool)

(declare-fun lt!1129631 () Int)

(assert (=> d!934627 (= lt!1129631 (size!27692 (list!13177 lt!1129204)))))

(assert (=> d!934627 (= lt!1129631 (size!27695 (c!564522 lt!1129204)))))

(assert (=> d!934627 (= (size!27690 lt!1129204) lt!1129631)))

(declare-fun bs!550770 () Bool)

(assert (= bs!550770 d!934627))

(assert (=> bs!550770 m!3662821))

(assert (=> bs!550770 m!3662821))

(declare-fun m!3663799 () Bool)

(assert (=> bs!550770 m!3663799))

(declare-fun m!3663801 () Bool)

(assert (=> bs!550770 m!3663801))

(assert (=> d!934513 d!934627))

(declare-fun d!934629 () Bool)

(assert (=> d!934629 (= (dropList!1131 lt!1129204 0) (drop!1921 (list!13181 (c!564522 lt!1129204)) 0))))

(declare-fun bs!550771 () Bool)

(assert (= bs!550771 d!934629))

(assert (=> bs!550771 m!3663169))

(assert (=> bs!550771 m!3663169))

(declare-fun m!3663803 () Bool)

(assert (=> bs!550771 m!3663803))

(assert (=> d!934513 d!934629))

(declare-fun d!934631 () Bool)

(declare-fun choose!19251 (Int) Bool)

(assert (=> d!934631 (= (Forall!1303 lambda!119628) (choose!19251 lambda!119628))))

(declare-fun bs!550772 () Bool)

(assert (= bs!550772 d!934631))

(declare-fun m!3663805 () Bool)

(assert (=> bs!550772 m!3663805))

(assert (=> d!934431 d!934631))

(declare-fun d!934633 () Bool)

(declare-fun res!1348428 () Bool)

(declare-fun e!2067464 () Bool)

(assert (=> d!934633 (=> res!1348428 e!2067464)))

(assert (=> d!934633 (= res!1348428 ((_ is Nil!36633) (t!256360 lt!1129228)))))

(assert (=> d!934633 (= (forall!7629 (t!256360 lt!1129228) lambda!119593) e!2067464)))

(declare-fun b!3324333 () Bool)

(declare-fun e!2067465 () Bool)

(assert (=> b!3324333 (= e!2067464 e!2067465)))

(declare-fun res!1348429 () Bool)

(assert (=> b!3324333 (=> (not res!1348429) (not e!2067465))))

(assert (=> b!3324333 (= res!1348429 (dynLambda!15088 lambda!119593 (h!42053 (t!256360 lt!1129228))))))

(declare-fun b!3324334 () Bool)

(assert (=> b!3324334 (= e!2067465 (forall!7629 (t!256360 (t!256360 lt!1129228)) lambda!119593))))

(assert (= (and d!934633 (not res!1348428)) b!3324333))

(assert (= (and b!3324333 res!1348429) b!3324334))

(declare-fun b_lambda!93751 () Bool)

(assert (=> (not b_lambda!93751) (not b!3324333)))

(declare-fun m!3663807 () Bool)

(assert (=> b!3324333 m!3663807))

(declare-fun m!3663809 () Bool)

(assert (=> b!3324334 m!3663809))

(assert (=> b!3324205 d!934633))

(declare-fun d!934635 () Bool)

(assert (=> d!934635 (= (inv!49623 (tag!5876 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (= (mod (str.len (value!172193 (tag!5876 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) 2) 0))))

(assert (=> b!3324270 d!934635))

(declare-fun d!934637 () Bool)

(declare-fun res!1348430 () Bool)

(declare-fun e!2067466 () Bool)

(assert (=> d!934637 (=> (not res!1348430) (not e!2067466))))

(assert (=> d!934637 (= res!1348430 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))))))

(assert (=> d!934637 (= (inv!49626 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) e!2067466)))

(declare-fun b!3324335 () Bool)

(assert (=> b!3324335 (= e!2067466 (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))))))

(assert (= (and d!934637 res!1348430) b!3324335))

(declare-fun m!3663811 () Bool)

(assert (=> d!934637 m!3663811))

(declare-fun m!3663813 () Bool)

(assert (=> b!3324335 m!3663813))

(assert (=> b!3324270 d!934637))

(declare-fun d!934639 () Bool)

(declare-fun c!564671 () Bool)

(assert (=> d!934639 (= c!564671 ((_ is Nil!36633) (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun e!2067467 () (InoxSet Token!10014))

(assert (=> d!934639 (= (content!4997 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) e!2067467)))

(declare-fun b!3324336 () Bool)

(assert (=> b!3324336 (= e!2067467 ((as const (Array Token!10014 Bool)) false))))

(declare-fun b!3324337 () Bool)

(assert (=> b!3324337 (= e!2067467 ((_ map or) (store ((as const (Array Token!10014 Bool)) false) (h!42053 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) true) (content!4997 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (= (and d!934639 c!564671) b!3324336))

(assert (= (and d!934639 (not c!564671)) b!3324337))

(declare-fun m!3663815 () Bool)

(assert (=> b!3324337 m!3663815))

(declare-fun m!3663817 () Bool)

(assert (=> b!3324337 m!3663817))

(assert (=> b!3324018 d!934639))

(declare-fun d!934641 () Bool)

(declare-fun lt!1129632 () Int)

(assert (=> d!934641 (>= lt!1129632 0)))

(declare-fun e!2067468 () Int)

(assert (=> d!934641 (= lt!1129632 e!2067468)))

(declare-fun c!564672 () Bool)

(assert (=> d!934641 (= c!564672 ((_ is Nil!36633) (list!13177 (_1!21199 lt!1129231))))))

(assert (=> d!934641 (= (size!27692 (list!13177 (_1!21199 lt!1129231))) lt!1129632)))

(declare-fun b!3324338 () Bool)

(assert (=> b!3324338 (= e!2067468 0)))

(declare-fun b!3324339 () Bool)

(assert (=> b!3324339 (= e!2067468 (+ 1 (size!27692 (t!256360 (list!13177 (_1!21199 lt!1129231))))))))

(assert (= (and d!934641 c!564672) b!3324338))

(assert (= (and d!934641 (not c!564672)) b!3324339))

(declare-fun m!3663819 () Bool)

(assert (=> b!3324339 m!3663819))

(assert (=> d!934553 d!934641))

(assert (=> d!934553 d!934519))

(declare-fun d!934643 () Bool)

(declare-fun lt!1129635 () Int)

(assert (=> d!934643 (= lt!1129635 (size!27692 (list!13181 (c!564522 (_1!21199 lt!1129231)))))))

(assert (=> d!934643 (= lt!1129635 (ite ((_ is Empty!11024) (c!564522 (_1!21199 lt!1129231))) 0 (ite ((_ is Leaf!17297) (c!564522 (_1!21199 lt!1129231))) (csize!22279 (c!564522 (_1!21199 lt!1129231))) (csize!22278 (c!564522 (_1!21199 lt!1129231))))))))

(assert (=> d!934643 (= (size!27695 (c!564522 (_1!21199 lt!1129231))) lt!1129635)))

(declare-fun bs!550773 () Bool)

(assert (= bs!550773 d!934643))

(assert (=> bs!550773 m!3663397))

(assert (=> bs!550773 m!3663397))

(declare-fun m!3663821 () Bool)

(assert (=> bs!550773 m!3663821))

(assert (=> d!934553 d!934643))

(declare-fun d!934645 () Bool)

(declare-fun choose!625 (List!36754) (_ BitVec 32))

(assert (=> d!934645 (= (charsToInt!0 (text!39325 (value!172194 (h!42053 tokens!494)))) (choose!625 (text!39325 (value!172194 (h!42053 tokens!494)))))))

(declare-fun bs!550774 () Bool)

(assert (= bs!550774 d!934645))

(declare-fun m!3663823 () Bool)

(assert (=> bs!550774 m!3663823))

(assert (=> d!934539 d!934645))

(declare-fun d!934647 () Bool)

(declare-fun res!1348431 () Bool)

(declare-fun e!2067469 () Bool)

(assert (=> d!934647 (=> res!1348431 e!2067469)))

(assert (=> d!934647 (= res!1348431 ((_ is Nil!36633) lt!1129340))))

(assert (=> d!934647 (= (forall!7629 lt!1129340 lambda!119593) e!2067469)))

(declare-fun b!3324340 () Bool)

(declare-fun e!2067470 () Bool)

(assert (=> b!3324340 (= e!2067469 e!2067470)))

(declare-fun res!1348432 () Bool)

(assert (=> b!3324340 (=> (not res!1348432) (not e!2067470))))

(assert (=> b!3324340 (= res!1348432 (dynLambda!15088 lambda!119593 (h!42053 lt!1129340)))))

(declare-fun b!3324341 () Bool)

(assert (=> b!3324341 (= e!2067470 (forall!7629 (t!256360 lt!1129340) lambda!119593))))

(assert (= (and d!934647 (not res!1348431)) b!3324340))

(assert (= (and b!3324340 res!1348432) b!3324341))

(declare-fun b_lambda!93753 () Bool)

(assert (=> (not b_lambda!93753) (not b!3324340)))

(declare-fun m!3663825 () Bool)

(assert (=> b!3324340 m!3663825))

(declare-fun m!3663827 () Bool)

(assert (=> b!3324341 m!3663827))

(assert (=> b!3323988 d!934647))

(declare-fun b!3324354 () Bool)

(declare-fun res!1348450 () Bool)

(declare-fun e!2067475 () Bool)

(assert (=> b!3324354 (=> (not res!1348450) (not e!2067475))))

(assert (=> b!3324354 (= res!1348450 (isBalanced!3305 (right!28878 (c!564522 lt!1129338))))))

(declare-fun b!3324356 () Bool)

(declare-fun e!2067476 () Bool)

(assert (=> b!3324356 (= e!2067476 e!2067475)))

(declare-fun res!1348447 () Bool)

(assert (=> b!3324356 (=> (not res!1348447) (not e!2067475))))

(declare-fun height!1625 (Conc!11024) Int)

(assert (=> b!3324356 (= res!1348447 (<= (- 1) (- (height!1625 (left!28548 (c!564522 lt!1129338))) (height!1625 (right!28878 (c!564522 lt!1129338))))))))

(declare-fun b!3324357 () Bool)

(declare-fun res!1348446 () Bool)

(assert (=> b!3324357 (=> (not res!1348446) (not e!2067475))))

(assert (=> b!3324357 (= res!1348446 (not (isEmpty!20795 (left!28548 (c!564522 lt!1129338)))))))

(declare-fun b!3324358 () Bool)

(declare-fun res!1348445 () Bool)

(assert (=> b!3324358 (=> (not res!1348445) (not e!2067475))))

(assert (=> b!3324358 (= res!1348445 (isBalanced!3305 (left!28548 (c!564522 lt!1129338))))))

(declare-fun b!3324359 () Bool)

(assert (=> b!3324359 (= e!2067475 (not (isEmpty!20795 (right!28878 (c!564522 lt!1129338)))))))

(declare-fun d!934649 () Bool)

(declare-fun res!1348448 () Bool)

(assert (=> d!934649 (=> res!1348448 e!2067476)))

(assert (=> d!934649 (= res!1348448 (not ((_ is Node!11024) (c!564522 lt!1129338))))))

(assert (=> d!934649 (= (isBalanced!3305 (c!564522 lt!1129338)) e!2067476)))

(declare-fun b!3324355 () Bool)

(declare-fun res!1348449 () Bool)

(assert (=> b!3324355 (=> (not res!1348449) (not e!2067475))))

(assert (=> b!3324355 (= res!1348449 (<= (- (height!1625 (left!28548 (c!564522 lt!1129338))) (height!1625 (right!28878 (c!564522 lt!1129338)))) 1))))

(assert (= (and d!934649 (not res!1348448)) b!3324356))

(assert (= (and b!3324356 res!1348447) b!3324355))

(assert (= (and b!3324355 res!1348449) b!3324358))

(assert (= (and b!3324358 res!1348445) b!3324354))

(assert (= (and b!3324354 res!1348450) b!3324357))

(assert (= (and b!3324357 res!1348446) b!3324359))

(declare-fun m!3663829 () Bool)

(assert (=> b!3324356 m!3663829))

(declare-fun m!3663831 () Bool)

(assert (=> b!3324356 m!3663831))

(declare-fun m!3663833 () Bool)

(assert (=> b!3324354 m!3663833))

(declare-fun m!3663835 () Bool)

(assert (=> b!3324358 m!3663835))

(declare-fun m!3663837 () Bool)

(assert (=> b!3324357 m!3663837))

(declare-fun m!3663839 () Bool)

(assert (=> b!3324359 m!3663839))

(assert (=> b!3324355 m!3663829))

(assert (=> b!3324355 m!3663831))

(assert (=> b!3323982 d!934649))

(declare-fun b!3324371 () Bool)

(declare-fun e!2067482 () List!36755)

(assert (=> b!3324371 (= e!2067482 (++!8895 (list!13184 (left!28547 (c!564521 lt!1129236))) (list!13184 (right!28877 (c!564521 lt!1129236)))))))

(declare-fun b!3324368 () Bool)

(declare-fun e!2067481 () List!36755)

(assert (=> b!3324368 (= e!2067481 Nil!36631)))

(declare-fun b!3324370 () Bool)

(declare-fun list!13186 (IArray!22051) List!36755)

(assert (=> b!3324370 (= e!2067482 (list!13186 (xs!14161 (c!564521 lt!1129236))))))

(declare-fun b!3324369 () Bool)

(assert (=> b!3324369 (= e!2067481 e!2067482)))

(declare-fun c!564678 () Bool)

(assert (=> b!3324369 (= c!564678 ((_ is Leaf!17296) (c!564521 lt!1129236)))))

(declare-fun d!934651 () Bool)

(declare-fun c!564677 () Bool)

(assert (=> d!934651 (= c!564677 ((_ is Empty!11023) (c!564521 lt!1129236)))))

(assert (=> d!934651 (= (list!13184 (c!564521 lt!1129236)) e!2067481)))

(assert (= (and d!934651 c!564677) b!3324368))

(assert (= (and d!934651 (not c!564677)) b!3324369))

(assert (= (and b!3324369 c!564678) b!3324370))

(assert (= (and b!3324369 (not c!564678)) b!3324371))

(declare-fun m!3663841 () Bool)

(assert (=> b!3324371 m!3663841))

(declare-fun m!3663843 () Bool)

(assert (=> b!3324371 m!3663843))

(assert (=> b!3324371 m!3663841))

(assert (=> b!3324371 m!3663843))

(declare-fun m!3663845 () Bool)

(assert (=> b!3324371 m!3663845))

(declare-fun m!3663847 () Bool)

(assert (=> b!3324370 m!3663847))

(assert (=> d!934509 d!934651))

(declare-fun b!3324382 () Bool)

(declare-fun res!1348456 () Bool)

(declare-fun e!2067488 () Bool)

(assert (=> b!3324382 (=> (not res!1348456) (not e!2067488))))

(declare-fun lt!1129638 () List!36755)

(assert (=> b!3324382 (= res!1348456 (= (size!27691 lt!1129638) (+ (size!27691 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241)))) (size!27691 (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241)))))))

(declare-fun b!3324383 () Bool)

(assert (=> b!3324383 (= e!2067488 (or (not (= (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241) Nil!36631)) (= lt!1129638 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241))))))))

(declare-fun e!2067487 () List!36755)

(declare-fun b!3324381 () Bool)

(assert (=> b!3324381 (= e!2067487 (Cons!36631 (h!42051 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241)))) (++!8895 (t!256358 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241)))) (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241))))))

(declare-fun b!3324380 () Bool)

(assert (=> b!3324380 (= e!2067487 (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241))))

(declare-fun d!934653 () Bool)

(assert (=> d!934653 e!2067488))

(declare-fun res!1348455 () Bool)

(assert (=> d!934653 (=> (not res!1348455) (not e!2067488))))

(declare-fun content!4998 (List!36755) (InoxSet C!20352))

(assert (=> d!934653 (= res!1348455 (= (content!4998 lt!1129638) ((_ map or) (content!4998 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241)))) (content!4998 (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241)))))))

(assert (=> d!934653 (= lt!1129638 e!2067487)))

(declare-fun c!564681 () Bool)

(assert (=> d!934653 (= c!564681 ((_ is Nil!36631) (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241)))))))

(assert (=> d!934653 (= (++!8895 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241))) (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241)) lt!1129638)))

(assert (= (and d!934653 c!564681) b!3324380))

(assert (= (and d!934653 (not c!564681)) b!3324381))

(assert (= (and d!934653 res!1348455) b!3324382))

(assert (= (and b!3324382 res!1348456) b!3324383))

(declare-fun m!3663849 () Bool)

(assert (=> b!3324382 m!3663849))

(assert (=> b!3324382 m!3663343))

(declare-fun m!3663851 () Bool)

(assert (=> b!3324382 m!3663851))

(assert (=> b!3324382 m!3663345))

(declare-fun m!3663853 () Bool)

(assert (=> b!3324382 m!3663853))

(assert (=> b!3324381 m!3663345))

(declare-fun m!3663855 () Bool)

(assert (=> b!3324381 m!3663855))

(declare-fun m!3663857 () Bool)

(assert (=> d!934653 m!3663857))

(assert (=> d!934653 m!3663343))

(declare-fun m!3663859 () Bool)

(assert (=> d!934653 m!3663859))

(assert (=> d!934653 m!3663345))

(declare-fun m!3663861 () Bool)

(assert (=> d!934653 m!3663861))

(assert (=> b!3324023 d!934653))

(declare-fun d!934655 () Bool)

(declare-fun c!564682 () Bool)

(assert (=> d!934655 (= c!564682 ((_ is Cons!36633) (t!256360 (list!13177 lt!1129204))))))

(declare-fun e!2067489 () List!36755)

(assert (=> d!934655 (= (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (list!13177 lt!1129204)) separatorToken!241) e!2067489)))

(declare-fun b!3324384 () Bool)

(assert (=> b!3324384 (= e!2067489 (++!8895 (++!8895 (list!13180 (charsOf!3338 (h!42053 (t!256360 (list!13177 lt!1129204))))) (list!13180 (charsOf!3338 separatorToken!241))) (printWithSeparatorTokenList!222 thiss!18206 (t!256360 (t!256360 (list!13177 lt!1129204))) separatorToken!241)))))

(declare-fun b!3324385 () Bool)

(assert (=> b!3324385 (= e!2067489 Nil!36631)))

(assert (= (and d!934655 c!564682) b!3324384))

(assert (= (and d!934655 (not c!564682)) b!3324385))

(declare-fun m!3663863 () Bool)

(assert (=> b!3324384 m!3663863))

(declare-fun m!3663865 () Bool)

(assert (=> b!3324384 m!3663865))

(declare-fun m!3663867 () Bool)

(assert (=> b!3324384 m!3663867))

(declare-fun m!3663869 () Bool)

(assert (=> b!3324384 m!3663869))

(assert (=> b!3324384 m!3663351))

(assert (=> b!3324384 m!3663863))

(declare-fun m!3663871 () Bool)

(assert (=> b!3324384 m!3663871))

(assert (=> b!3324384 m!3663355))

(assert (=> b!3324384 m!3663351))

(assert (=> b!3324384 m!3663355))

(assert (=> b!3324384 m!3663871))

(assert (=> b!3324384 m!3663869))

(assert (=> b!3324384 m!3663865))

(assert (=> b!3324023 d!934655))

(declare-fun d!934657 () Bool)

(assert (=> d!934657 (= (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13184 (c!564521 (charsOf!3338 (h!42053 (list!13177 lt!1129204))))))))

(declare-fun bs!550775 () Bool)

(assert (= bs!550775 d!934657))

(declare-fun m!3663873 () Bool)

(assert (=> bs!550775 m!3663873))

(assert (=> b!3324023 d!934657))

(declare-fun b!3324388 () Bool)

(declare-fun res!1348458 () Bool)

(declare-fun e!2067491 () Bool)

(assert (=> b!3324388 (=> (not res!1348458) (not e!2067491))))

(declare-fun lt!1129639 () List!36755)

(assert (=> b!3324388 (= res!1348458 (= (size!27691 lt!1129639) (+ (size!27691 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204))))) (size!27691 (list!13180 (charsOf!3338 separatorToken!241))))))))

(declare-fun b!3324389 () Bool)

(assert (=> b!3324389 (= e!2067491 (or (not (= (list!13180 (charsOf!3338 separatorToken!241)) Nil!36631)) (= lt!1129639 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))))))))

(declare-fun b!3324387 () Bool)

(declare-fun e!2067490 () List!36755)

(assert (=> b!3324387 (= e!2067490 (Cons!36631 (h!42051 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204))))) (++!8895 (t!256358 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204))))) (list!13180 (charsOf!3338 separatorToken!241)))))))

(declare-fun b!3324386 () Bool)

(assert (=> b!3324386 (= e!2067490 (list!13180 (charsOf!3338 separatorToken!241)))))

(declare-fun d!934659 () Bool)

(assert (=> d!934659 e!2067491))

(declare-fun res!1348457 () Bool)

(assert (=> d!934659 (=> (not res!1348457) (not e!2067491))))

(assert (=> d!934659 (= res!1348457 (= (content!4998 lt!1129639) ((_ map or) (content!4998 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204))))) (content!4998 (list!13180 (charsOf!3338 separatorToken!241))))))))

(assert (=> d!934659 (= lt!1129639 e!2067490)))

(declare-fun c!564683 () Bool)

(assert (=> d!934659 (= c!564683 ((_ is Nil!36631) (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204))))))))

(assert (=> d!934659 (= (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 lt!1129204)))) (list!13180 (charsOf!3338 separatorToken!241))) lt!1129639)))

(assert (= (and d!934659 c!564683) b!3324386))

(assert (= (and d!934659 (not c!564683)) b!3324387))

(assert (= (and d!934659 res!1348457) b!3324388))

(assert (= (and b!3324388 res!1348458) b!3324389))

(declare-fun m!3663875 () Bool)

(assert (=> b!3324388 m!3663875))

(assert (=> b!3324388 m!3663349))

(declare-fun m!3663877 () Bool)

(assert (=> b!3324388 m!3663877))

(assert (=> b!3324388 m!3663351))

(declare-fun m!3663879 () Bool)

(assert (=> b!3324388 m!3663879))

(assert (=> b!3324387 m!3663351))

(declare-fun m!3663881 () Bool)

(assert (=> b!3324387 m!3663881))

(declare-fun m!3663883 () Bool)

(assert (=> d!934659 m!3663883))

(assert (=> d!934659 m!3663349))

(declare-fun m!3663885 () Bool)

(assert (=> d!934659 m!3663885))

(assert (=> d!934659 m!3663351))

(declare-fun m!3663887 () Bool)

(assert (=> d!934659 m!3663887))

(assert (=> b!3324023 d!934659))

(declare-fun d!934661 () Bool)

(assert (=> d!934661 (= (list!13180 (charsOf!3338 separatorToken!241)) (list!13184 (c!564521 (charsOf!3338 separatorToken!241))))))

(declare-fun bs!550776 () Bool)

(assert (= bs!550776 d!934661))

(declare-fun m!3663889 () Bool)

(assert (=> bs!550776 m!3663889))

(assert (=> b!3324023 d!934661))

(declare-fun d!934663 () Bool)

(declare-fun lt!1129642 () BalanceConc!21660)

(assert (=> d!934663 (= (list!13180 lt!1129642) (originalCharacters!6038 (h!42053 (list!13177 lt!1129204))))))

(assert (=> d!934663 (= lt!1129642 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204))))) (value!172194 (h!42053 (list!13177 lt!1129204)))))))

(assert (=> d!934663 (= (charsOf!3338 (h!42053 (list!13177 lt!1129204))) lt!1129642)))

(declare-fun b_lambda!93755 () Bool)

(assert (=> (not b_lambda!93755) (not d!934663)))

(declare-fun t!256470 () Bool)

(declare-fun tb!173991 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256470) tb!173991))

(declare-fun b!3324390 () Bool)

(declare-fun e!2067492 () Bool)

(declare-fun tp!1038639 () Bool)

(assert (=> b!3324390 (= e!2067492 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204))))) (value!172194 (h!42053 (list!13177 lt!1129204)))))) tp!1038639))))

(declare-fun result!217048 () Bool)

(assert (=> tb!173991 (= result!217048 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204))))) (value!172194 (h!42053 (list!13177 lt!1129204))))) e!2067492))))

(assert (= tb!173991 b!3324390))

(declare-fun m!3663891 () Bool)

(assert (=> b!3324390 m!3663891))

(declare-fun m!3663893 () Bool)

(assert (=> tb!173991 m!3663893))

(assert (=> d!934663 t!256470))

(declare-fun b_and!229023 () Bool)

(assert (= b_and!229001 (and (=> t!256470 result!217048) b_and!229023)))

(declare-fun tb!173993 () Bool)

(declare-fun t!256472 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256472) tb!173993))

(declare-fun result!217050 () Bool)

(assert (= result!217050 result!217048))

(assert (=> d!934663 t!256472))

(declare-fun b_and!229025 () Bool)

(assert (= b_and!229021 (and (=> t!256472 result!217050) b_and!229025)))

(declare-fun t!256474 () Bool)

(declare-fun tb!173995 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256474) tb!173995))

(declare-fun result!217052 () Bool)

(assert (= result!217052 result!217048))

(assert (=> d!934663 t!256474))

(declare-fun b_and!229027 () Bool)

(assert (= b_and!228997 (and (=> t!256474 result!217052) b_and!229027)))

(declare-fun tb!173997 () Bool)

(declare-fun t!256476 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256476) tb!173997))

(declare-fun result!217054 () Bool)

(assert (= result!217054 result!217048))

(assert (=> d!934663 t!256476))

(declare-fun b_and!229029 () Bool)

(assert (= b_and!229017 (and (=> t!256476 result!217054) b_and!229029)))

(declare-fun tb!173999 () Bool)

(declare-fun t!256478 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256478) tb!173999))

(declare-fun result!217056 () Bool)

(assert (= result!217056 result!217048))

(assert (=> d!934663 t!256478))

(declare-fun b_and!229031 () Bool)

(assert (= b_and!228999 (and (=> t!256478 result!217056) b_and!229031)))

(declare-fun tb!174001 () Bool)

(declare-fun t!256480 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256480) tb!174001))

(declare-fun result!217058 () Bool)

(assert (= result!217058 result!217048))

(assert (=> d!934663 t!256480))

(declare-fun b_and!229033 () Bool)

(assert (= b_and!229003 (and (=> t!256480 result!217058) b_and!229033)))

(declare-fun tb!174003 () Bool)

(declare-fun t!256482 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256482) tb!174003))

(declare-fun result!217060 () Bool)

(assert (= result!217060 result!217048))

(assert (=> d!934663 t!256482))

(declare-fun b_and!229035 () Bool)

(assert (= b_and!229005 (and (=> t!256482 result!217060) b_and!229035)))

(declare-fun m!3663895 () Bool)

(assert (=> d!934663 m!3663895))

(declare-fun m!3663897 () Bool)

(assert (=> d!934663 m!3663897))

(assert (=> b!3324023 d!934663))

(declare-fun d!934665 () Bool)

(declare-fun lt!1129643 () BalanceConc!21660)

(assert (=> d!934665 (= (list!13180 lt!1129643) (originalCharacters!6038 separatorToken!241))))

(assert (=> d!934665 (= lt!1129643 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))

(assert (=> d!934665 (= (charsOf!3338 separatorToken!241) lt!1129643)))

(declare-fun b_lambda!93757 () Bool)

(assert (=> (not b_lambda!93757) (not d!934665)))

(assert (=> d!934665 t!256411))

(declare-fun b_and!229037 () Bool)

(assert (= b_and!229035 (and (=> t!256411 result!216998) b_and!229037)))

(assert (=> d!934665 t!256456))

(declare-fun b_and!229039 () Bool)

(assert (= b_and!229029 (and (=> t!256456 result!217038) b_and!229039)))

(assert (=> d!934665 t!256462))

(declare-fun b_and!229041 () Bool)

(assert (= b_and!229025 (and (=> t!256462 result!217044) b_and!229041)))

(assert (=> d!934665 t!256382))

(declare-fun b_and!229043 () Bool)

(assert (= b_and!229027 (and (=> t!256382 result!216960) b_and!229043)))

(assert (=> d!934665 t!256378))

(declare-fun b_and!229045 () Bool)

(assert (= b_and!229023 (and (=> t!256378 result!216956) b_and!229045)))

(assert (=> d!934665 t!256380))

(declare-fun b_and!229047 () Bool)

(assert (= b_and!229031 (and (=> t!256380 result!216958) b_and!229047)))

(assert (=> d!934665 t!256407))

(declare-fun b_and!229049 () Bool)

(assert (= b_and!229033 (and (=> t!256407 result!216992) b_and!229049)))

(declare-fun m!3663899 () Bool)

(assert (=> d!934665 m!3663899))

(assert (=> d!934665 m!3662837))

(assert (=> b!3324023 d!934665))

(declare-fun d!934667 () Bool)

(declare-fun lt!1129646 () Bool)

(declare-fun content!4999 (List!36759) (InoxSet String!41104))

(assert (=> d!934667 (= lt!1129646 (select (content!4999 Nil!36635) (tag!5876 (h!42052 rules!2135))))))

(declare-fun e!2067498 () Bool)

(assert (=> d!934667 (= lt!1129646 e!2067498)))

(declare-fun res!1348464 () Bool)

(assert (=> d!934667 (=> (not res!1348464) (not e!2067498))))

(assert (=> d!934667 (= res!1348464 ((_ is Cons!36635) Nil!36635))))

(assert (=> d!934667 (= (contains!6637 Nil!36635 (tag!5876 (h!42052 rules!2135))) lt!1129646)))

(declare-fun b!3324395 () Bool)

(declare-fun e!2067497 () Bool)

(assert (=> b!3324395 (= e!2067498 e!2067497)))

(declare-fun res!1348463 () Bool)

(assert (=> b!3324395 (=> res!1348463 e!2067497)))

(assert (=> b!3324395 (= res!1348463 (= (h!42055 Nil!36635) (tag!5876 (h!42052 rules!2135))))))

(declare-fun b!3324396 () Bool)

(assert (=> b!3324396 (= e!2067497 (contains!6637 (t!256412 Nil!36635) (tag!5876 (h!42052 rules!2135))))))

(assert (= (and d!934667 res!1348464) b!3324395))

(assert (= (and b!3324395 (not res!1348463)) b!3324396))

(declare-fun m!3663901 () Bool)

(assert (=> d!934667 m!3663901))

(declare-fun m!3663903 () Bool)

(assert (=> d!934667 m!3663903))

(declare-fun m!3663905 () Bool)

(assert (=> b!3324396 m!3663905))

(assert (=> b!3324210 d!934667))

(declare-fun d!934669 () Bool)

(declare-fun lt!1129647 () Int)

(assert (=> d!934669 (>= lt!1129647 0)))

(declare-fun e!2067499 () Int)

(assert (=> d!934669 (= lt!1129647 e!2067499)))

(declare-fun c!564684 () Bool)

(assert (=> d!934669 (= c!564684 ((_ is Nil!36633) (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (=> d!934669 (= (size!27692 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) lt!1129647)))

(declare-fun b!3324397 () Bool)

(assert (=> b!3324397 (= e!2067499 0)))

(declare-fun b!3324398 () Bool)

(assert (=> b!3324398 (= e!2067499 (+ 1 (size!27692 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (= (and d!934669 c!564684) b!3324397))

(assert (= (and d!934669 (not c!564684)) b!3324398))

(declare-fun m!3663907 () Bool)

(assert (=> b!3324398 m!3663907))

(assert (=> b!3324041 d!934669))

(declare-fun d!934671 () Bool)

(declare-fun choose!644 (List!36754) Int)

(assert (=> d!934671 (= (charsToBigInt!1 (text!39326 (value!172194 (h!42053 tokens!494)))) (choose!644 (text!39326 (value!172194 (h!42053 tokens!494)))))))

(declare-fun bs!550777 () Bool)

(assert (= bs!550777 d!934671))

(declare-fun m!3663909 () Bool)

(assert (=> bs!550777 m!3663909))

(assert (=> d!934381 d!934671))

(declare-fun d!934673 () Bool)

(declare-fun lt!1129648 () Int)

(assert (=> d!934673 (>= lt!1129648 0)))

(declare-fun e!2067500 () Int)

(assert (=> d!934673 (= lt!1129648 e!2067500)))

(declare-fun c!564685 () Bool)

(assert (=> d!934673 (= c!564685 ((_ is Nil!36631) (list!13180 (_2!21199 lt!1129231))))))

(assert (=> d!934673 (= (size!27691 (list!13180 (_2!21199 lt!1129231))) lt!1129648)))

(declare-fun b!3324399 () Bool)

(assert (=> b!3324399 (= e!2067500 0)))

(declare-fun b!3324400 () Bool)

(assert (=> b!3324400 (= e!2067500 (+ 1 (size!27691 (t!256358 (list!13180 (_2!21199 lt!1129231))))))))

(assert (= (and d!934673 c!564685) b!3324399))

(assert (= (and d!934673 (not c!564685)) b!3324400))

(declare-fun m!3663911 () Bool)

(assert (=> b!3324400 m!3663911))

(assert (=> d!934581 d!934673))

(assert (=> d!934581 d!934495))

(declare-fun d!934675 () Bool)

(declare-fun lt!1129651 () Int)

(assert (=> d!934675 (= lt!1129651 (size!27691 (list!13184 (c!564521 (_2!21199 lt!1129231)))))))

(assert (=> d!934675 (= lt!1129651 (ite ((_ is Empty!11023) (c!564521 (_2!21199 lt!1129231))) 0 (ite ((_ is Leaf!17296) (c!564521 (_2!21199 lt!1129231))) (csize!22277 (c!564521 (_2!21199 lt!1129231))) (csize!22276 (c!564521 (_2!21199 lt!1129231))))))))

(assert (=> d!934675 (= (size!27697 (c!564521 (_2!21199 lt!1129231))) lt!1129651)))

(declare-fun bs!550778 () Bool)

(assert (= bs!550778 d!934675))

(assert (=> bs!550778 m!3663313))

(assert (=> bs!550778 m!3663313))

(declare-fun m!3663913 () Bool)

(assert (=> bs!550778 m!3663913))

(assert (=> d!934581 d!934675))

(declare-fun bm!241316 () Bool)

(declare-fun call!241321 () Int)

(assert (=> bm!241316 (= call!241321 (size!27692 lt!1129364))))

(declare-fun b!3324419 () Bool)

(declare-fun e!2067515 () List!36757)

(assert (=> b!3324419 (= e!2067515 lt!1129364)))

(declare-fun b!3324420 () Bool)

(declare-fun e!2067512 () Int)

(declare-fun e!2067513 () Int)

(assert (=> b!3324420 (= e!2067512 e!2067513)))

(declare-fun c!564696 () Bool)

(assert (=> b!3324420 (= c!564696 (>= 0 call!241321))))

(declare-fun d!934677 () Bool)

(declare-fun e!2067511 () Bool)

(assert (=> d!934677 e!2067511))

(declare-fun res!1348467 () Bool)

(assert (=> d!934677 (=> (not res!1348467) (not e!2067511))))

(declare-fun lt!1129654 () List!36757)

(assert (=> d!934677 (= res!1348467 (= ((_ map implies) (content!4997 lt!1129654) (content!4997 lt!1129364)) ((as const (InoxSet Token!10014)) true)))))

(declare-fun e!2067514 () List!36757)

(assert (=> d!934677 (= lt!1129654 e!2067514)))

(declare-fun c!564695 () Bool)

(assert (=> d!934677 (= c!564695 ((_ is Nil!36633) lt!1129364))))

(assert (=> d!934677 (= (drop!1921 lt!1129364 0) lt!1129654)))

(declare-fun b!3324421 () Bool)

(assert (=> b!3324421 (= e!2067514 e!2067515)))

(declare-fun c!564697 () Bool)

(assert (=> b!3324421 (= c!564697 (<= 0 0))))

(declare-fun b!3324422 () Bool)

(assert (=> b!3324422 (= e!2067511 (= (size!27692 lt!1129654) e!2067512))))

(declare-fun c!564694 () Bool)

(assert (=> b!3324422 (= c!564694 (<= 0 0))))

(declare-fun b!3324423 () Bool)

(assert (=> b!3324423 (= e!2067512 call!241321)))

(declare-fun b!3324424 () Bool)

(assert (=> b!3324424 (= e!2067513 0)))

(declare-fun b!3324425 () Bool)

(assert (=> b!3324425 (= e!2067515 (drop!1921 (t!256360 lt!1129364) (- 0 1)))))

(declare-fun b!3324426 () Bool)

(assert (=> b!3324426 (= e!2067513 (- call!241321 0))))

(declare-fun b!3324427 () Bool)

(assert (=> b!3324427 (= e!2067514 Nil!36633)))

(assert (= (and d!934677 c!564695) b!3324427))

(assert (= (and d!934677 (not c!564695)) b!3324421))

(assert (= (and b!3324421 c!564697) b!3324419))

(assert (= (and b!3324421 (not c!564697)) b!3324425))

(assert (= (and d!934677 res!1348467) b!3324422))

(assert (= (and b!3324422 c!564694) b!3324423))

(assert (= (and b!3324422 (not c!564694)) b!3324420))

(assert (= (and b!3324420 c!564696) b!3324424))

(assert (= (and b!3324420 (not c!564696)) b!3324426))

(assert (= (or b!3324423 b!3324420 b!3324426) bm!241316))

(declare-fun m!3663915 () Bool)

(assert (=> bm!241316 m!3663915))

(declare-fun m!3663917 () Bool)

(assert (=> d!934677 m!3663917))

(declare-fun m!3663919 () Bool)

(assert (=> d!934677 m!3663919))

(declare-fun m!3663921 () Bool)

(assert (=> b!3324422 m!3663921))

(declare-fun m!3663923 () Bool)

(assert (=> b!3324425 m!3663923))

(assert (=> b!3324033 d!934677))

(declare-fun d!934679 () Bool)

(declare-fun lt!1129655 () BalanceConc!21660)

(assert (=> d!934679 (= (list!13180 lt!1129655) (originalCharacters!6038 (apply!8449 lt!1129204 0)))))

(assert (=> d!934679 (= lt!1129655 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0)))) (value!172194 (apply!8449 lt!1129204 0))))))

(assert (=> d!934679 (= (charsOf!3338 (apply!8449 lt!1129204 0)) lt!1129655)))

(declare-fun b_lambda!93759 () Bool)

(assert (=> (not b_lambda!93759) (not d!934679)))

(declare-fun t!256485 () Bool)

(declare-fun tb!174005 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256485) tb!174005))

(declare-fun b!3324428 () Bool)

(declare-fun e!2067516 () Bool)

(declare-fun tp!1038640 () Bool)

(assert (=> b!3324428 (= e!2067516 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0)))) (value!172194 (apply!8449 lt!1129204 0))))) tp!1038640))))

(declare-fun result!217062 () Bool)

(assert (=> tb!174005 (= result!217062 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0)))) (value!172194 (apply!8449 lt!1129204 0)))) e!2067516))))

(assert (= tb!174005 b!3324428))

(declare-fun m!3663925 () Bool)

(assert (=> b!3324428 m!3663925))

(declare-fun m!3663927 () Bool)

(assert (=> tb!174005 m!3663927))

(assert (=> d!934679 t!256485))

(declare-fun b_and!229051 () Bool)

(assert (= b_and!229045 (and (=> t!256485 result!217062) b_and!229051)))

(declare-fun tb!174007 () Bool)

(declare-fun t!256487 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256487) tb!174007))

(declare-fun result!217064 () Bool)

(assert (= result!217064 result!217062))

(assert (=> d!934679 t!256487))

(declare-fun b_and!229053 () Bool)

(assert (= b_and!229037 (and (=> t!256487 result!217064) b_and!229053)))

(declare-fun tb!174009 () Bool)

(declare-fun t!256489 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256489) tb!174009))

(declare-fun result!217066 () Bool)

(assert (= result!217066 result!217062))

(assert (=> d!934679 t!256489))

(declare-fun b_and!229055 () Bool)

(assert (= b_and!229041 (and (=> t!256489 result!217066) b_and!229055)))

(declare-fun t!256491 () Bool)

(declare-fun tb!174011 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256491) tb!174011))

(declare-fun result!217068 () Bool)

(assert (= result!217068 result!217062))

(assert (=> d!934679 t!256491))

(declare-fun b_and!229057 () Bool)

(assert (= b_and!229043 (and (=> t!256491 result!217068) b_and!229057)))

(declare-fun t!256493 () Bool)

(declare-fun tb!174013 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256493) tb!174013))

(declare-fun result!217070 () Bool)

(assert (= result!217070 result!217062))

(assert (=> d!934679 t!256493))

(declare-fun b_and!229059 () Bool)

(assert (= b_and!229039 (and (=> t!256493 result!217070) b_and!229059)))

(declare-fun tb!174015 () Bool)

(declare-fun t!256495 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256495) tb!174015))

(declare-fun result!217072 () Bool)

(assert (= result!217072 result!217062))

(assert (=> d!934679 t!256495))

(declare-fun b_and!229061 () Bool)

(assert (= b_and!229049 (and (=> t!256495 result!217072) b_and!229061)))

(declare-fun tb!174017 () Bool)

(declare-fun t!256497 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256497) tb!174017))

(declare-fun result!217074 () Bool)

(assert (= result!217074 result!217062))

(assert (=> d!934679 t!256497))

(declare-fun b_and!229063 () Bool)

(assert (= b_and!229047 (and (=> t!256497 result!217074) b_and!229063)))

(declare-fun m!3663929 () Bool)

(assert (=> d!934679 m!3663929))

(declare-fun m!3663931 () Bool)

(assert (=> d!934679 m!3663931))

(assert (=> b!3324033 d!934679))

(declare-fun d!934681 () Bool)

(declare-fun lt!1129658 () Token!10014)

(declare-fun contains!6639 (List!36757 Token!10014) Bool)

(assert (=> d!934681 (contains!6639 lt!1129368 lt!1129658)))

(declare-fun e!2067521 () Token!10014)

(assert (=> d!934681 (= lt!1129658 e!2067521)))

(declare-fun c!564700 () Bool)

(assert (=> d!934681 (= c!564700 (= 0 0))))

(declare-fun e!2067522 () Bool)

(assert (=> d!934681 e!2067522))

(declare-fun res!1348470 () Bool)

(assert (=> d!934681 (=> (not res!1348470) (not e!2067522))))

(assert (=> d!934681 (= res!1348470 (<= 0 0))))

(assert (=> d!934681 (= (apply!8452 lt!1129368 0) lt!1129658)))

(declare-fun b!3324435 () Bool)

(assert (=> b!3324435 (= e!2067522 (< 0 (size!27692 lt!1129368)))))

(declare-fun b!3324436 () Bool)

(assert (=> b!3324436 (= e!2067521 (head!7155 lt!1129368))))

(declare-fun b!3324437 () Bool)

(assert (=> b!3324437 (= e!2067521 (apply!8452 (tail!5289 lt!1129368) (- 0 1)))))

(assert (= (and d!934681 res!1348470) b!3324435))

(assert (= (and d!934681 c!564700) b!3324436))

(assert (= (and d!934681 (not c!564700)) b!3324437))

(declare-fun m!3663933 () Bool)

(assert (=> d!934681 m!3663933))

(declare-fun m!3663935 () Bool)

(assert (=> b!3324435 m!3663935))

(declare-fun m!3663937 () Bool)

(assert (=> b!3324436 m!3663937))

(declare-fun m!3663939 () Bool)

(assert (=> b!3324437 m!3663939))

(assert (=> b!3324437 m!3663939))

(declare-fun m!3663941 () Bool)

(assert (=> b!3324437 m!3663941))

(assert (=> b!3324033 d!934681))

(declare-fun d!934683 () Bool)

(declare-fun e!2067525 () Bool)

(assert (=> d!934683 e!2067525))

(declare-fun res!1348481 () Bool)

(assert (=> d!934683 (=> (not res!1348481) (not e!2067525))))

(declare-fun appendAssocInst!768 (Conc!11023 Conc!11023) Bool)

(assert (=> d!934683 (= res!1348481 (appendAssocInst!768 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0)))))))

(declare-fun lt!1129661 () BalanceConc!21660)

(declare-fun ++!8898 (Conc!11023 Conc!11023) Conc!11023)

(assert (=> d!934683 (= lt!1129661 (BalanceConc!21661 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0))))))))

(assert (=> d!934683 (= (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) lt!1129661)))

(declare-fun b!3324447 () Bool)

(declare-fun res!1348482 () Bool)

(assert (=> b!3324447 (=> (not res!1348482) (not e!2067525))))

(declare-fun height!1626 (Conc!11023) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3324447 (= res!1348482 (<= (height!1626 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0))))) (+ (max!0 (height!1626 (c!564521 (BalanceConc!21661 Empty!11023))) (height!1626 (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0))))) 1)))))

(declare-fun b!3324448 () Bool)

(declare-fun res!1348480 () Bool)

(assert (=> b!3324448 (=> (not res!1348480) (not e!2067525))))

(assert (=> b!3324448 (= res!1348480 (>= (height!1626 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0))))) (max!0 (height!1626 (c!564521 (BalanceConc!21661 Empty!11023))) (height!1626 (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0)))))))))

(declare-fun b!3324449 () Bool)

(assert (=> b!3324449 (= e!2067525 (= (list!13180 lt!1129661) (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (list!13180 (charsOf!3338 (apply!8449 lt!1129204 0))))))))

(declare-fun b!3324446 () Bool)

(declare-fun res!1348479 () Bool)

(assert (=> b!3324446 (=> (not res!1348479) (not e!2067525))))

(assert (=> b!3324446 (= res!1348479 (isBalanced!3307 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (apply!8449 lt!1129204 0))))))))

(assert (= (and d!934683 res!1348481) b!3324446))

(assert (= (and b!3324446 res!1348479) b!3324447))

(assert (= (and b!3324447 res!1348482) b!3324448))

(assert (= (and b!3324448 res!1348480) b!3324449))

(declare-fun m!3663943 () Bool)

(assert (=> b!3324448 m!3663943))

(declare-fun m!3663945 () Bool)

(assert (=> b!3324448 m!3663945))

(declare-fun m!3663947 () Bool)

(assert (=> b!3324448 m!3663947))

(assert (=> b!3324448 m!3663947))

(assert (=> b!3324448 m!3663945))

(declare-fun m!3663949 () Bool)

(assert (=> b!3324448 m!3663949))

(assert (=> b!3324448 m!3663943))

(declare-fun m!3663951 () Bool)

(assert (=> b!3324448 m!3663951))

(declare-fun m!3663953 () Bool)

(assert (=> b!3324449 m!3663953))

(assert (=> b!3324449 m!3663359))

(assert (=> b!3324449 m!3663369))

(declare-fun m!3663955 () Bool)

(assert (=> b!3324449 m!3663955))

(assert (=> b!3324449 m!3663359))

(assert (=> b!3324449 m!3663955))

(declare-fun m!3663957 () Bool)

(assert (=> b!3324449 m!3663957))

(assert (=> b!3324447 m!3663943))

(assert (=> b!3324447 m!3663945))

(assert (=> b!3324447 m!3663947))

(assert (=> b!3324447 m!3663947))

(assert (=> b!3324447 m!3663945))

(assert (=> b!3324447 m!3663949))

(assert (=> b!3324447 m!3663943))

(assert (=> b!3324447 m!3663951))

(assert (=> b!3324446 m!3663943))

(assert (=> b!3324446 m!3663943))

(declare-fun m!3663959 () Bool)

(assert (=> b!3324446 m!3663959))

(declare-fun m!3663961 () Bool)

(assert (=> d!934683 m!3663961))

(assert (=> d!934683 m!3663943))

(assert (=> b!3324033 d!934683))

(declare-fun lt!1129664 () BalanceConc!21660)

(declare-fun d!934685 () Bool)

(assert (=> d!934685 (= (list!13180 lt!1129664) (printWithSeparatorTokenListTailRec!22 thiss!18206 (dropList!1131 lt!1129204 (+ 0 1)) separatorToken!241 (list!13180 (++!8896 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) (charsOf!3338 separatorToken!241)))))))

(declare-fun e!2067527 () BalanceConc!21660)

(assert (=> d!934685 (= lt!1129664 e!2067527)))

(declare-fun c!564704 () Bool)

(assert (=> d!934685 (= c!564704 (>= (+ 0 1) (size!27690 lt!1129204)))))

(declare-fun e!2067526 () Bool)

(assert (=> d!934685 e!2067526))

(declare-fun res!1348483 () Bool)

(assert (=> d!934685 (=> (not res!1348483) (not e!2067526))))

(assert (=> d!934685 (= res!1348483 (>= (+ 0 1) 0))))

(assert (=> d!934685 (= (printWithSeparatorTokenTailRec!38 thiss!18206 lt!1129204 separatorToken!241 (+ 0 1) (++!8896 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) (charsOf!3338 separatorToken!241))) lt!1129664)))

(declare-fun b!3324450 () Bool)

(assert (=> b!3324450 (= e!2067526 (<= (+ 0 1) (size!27690 lt!1129204)))))

(declare-fun b!3324451 () Bool)

(assert (=> b!3324451 (= e!2067527 (++!8896 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) (charsOf!3338 separatorToken!241)))))

(declare-fun b!3324452 () Bool)

(assert (=> b!3324452 (= e!2067527 (printWithSeparatorTokenTailRec!38 thiss!18206 lt!1129204 separatorToken!241 (+ 0 1 1) (++!8896 (++!8896 (++!8896 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) (charsOf!3338 separatorToken!241)) (charsOf!3338 (apply!8449 lt!1129204 (+ 0 1)))) (charsOf!3338 separatorToken!241))))))

(declare-fun lt!1129666 () List!36757)

(assert (=> b!3324452 (= lt!1129666 (list!13177 lt!1129204))))

(declare-fun lt!1129667 () Unit!51643)

(assert (=> b!3324452 (= lt!1129667 (lemmaDropApply!1089 lt!1129666 (+ 0 1)))))

(assert (=> b!3324452 (= (head!7155 (drop!1921 lt!1129666 (+ 0 1))) (apply!8452 lt!1129666 (+ 0 1)))))

(declare-fun lt!1129665 () Unit!51643)

(assert (=> b!3324452 (= lt!1129665 lt!1129667)))

(declare-fun lt!1129662 () List!36757)

(assert (=> b!3324452 (= lt!1129662 (list!13177 lt!1129204))))

(declare-fun lt!1129668 () Unit!51643)

(assert (=> b!3324452 (= lt!1129668 (lemmaDropTail!973 lt!1129662 (+ 0 1)))))

(assert (=> b!3324452 (= (tail!5289 (drop!1921 lt!1129662 (+ 0 1))) (drop!1921 lt!1129662 (+ 0 1 1)))))

(declare-fun lt!1129663 () Unit!51643)

(assert (=> b!3324452 (= lt!1129663 lt!1129668)))

(assert (= (and d!934685 res!1348483) b!3324450))

(assert (= (and d!934685 c!564704) b!3324451))

(assert (= (and d!934685 (not c!564704)) b!3324452))

(declare-fun m!3663963 () Bool)

(assert (=> d!934685 m!3663963))

(assert (=> d!934685 m!3663387))

(declare-fun m!3663965 () Bool)

(assert (=> d!934685 m!3663965))

(declare-fun m!3663967 () Bool)

(assert (=> d!934685 m!3663967))

(assert (=> d!934685 m!3663965))

(declare-fun m!3663969 () Bool)

(assert (=> d!934685 m!3663969))

(assert (=> d!934685 m!3663365))

(assert (=> d!934685 m!3663967))

(assert (=> b!3324450 m!3663365))

(declare-fun m!3663971 () Bool)

(assert (=> b!3324452 m!3663971))

(declare-fun m!3663973 () Bool)

(assert (=> b!3324452 m!3663973))

(assert (=> b!3324452 m!3663355))

(declare-fun m!3663975 () Bool)

(assert (=> b!3324452 m!3663975))

(assert (=> b!3324452 m!3663387))

(assert (=> b!3324452 m!3663973))

(declare-fun m!3663977 () Bool)

(assert (=> b!3324452 m!3663977))

(declare-fun m!3663979 () Bool)

(assert (=> b!3324452 m!3663979))

(declare-fun m!3663981 () Bool)

(assert (=> b!3324452 m!3663981))

(declare-fun m!3663983 () Bool)

(assert (=> b!3324452 m!3663983))

(assert (=> b!3324452 m!3663975))

(declare-fun m!3663985 () Bool)

(assert (=> b!3324452 m!3663985))

(declare-fun m!3663987 () Bool)

(assert (=> b!3324452 m!3663987))

(declare-fun m!3663989 () Bool)

(assert (=> b!3324452 m!3663989))

(declare-fun m!3663991 () Bool)

(assert (=> b!3324452 m!3663991))

(declare-fun m!3663993 () Bool)

(assert (=> b!3324452 m!3663993))

(assert (=> b!3324452 m!3663979))

(declare-fun m!3663995 () Bool)

(assert (=> b!3324452 m!3663995))

(assert (=> b!3324452 m!3663971))

(assert (=> b!3324452 m!3663977))

(assert (=> b!3324452 m!3663355))

(assert (=> b!3324452 m!3663991))

(assert (=> b!3324452 m!3662821))

(assert (=> b!3324033 d!934685))

(declare-fun d!934687 () Bool)

(assert (=> d!934687 (= (head!7155 (drop!1921 lt!1129368 0)) (h!42053 (drop!1921 lt!1129368 0)))))

(assert (=> b!3324033 d!934687))

(declare-fun bm!241317 () Bool)

(declare-fun call!241322 () Int)

(assert (=> bm!241317 (= call!241322 (size!27692 lt!1129368))))

(declare-fun b!3324457 () Bool)

(declare-fun e!2067534 () List!36757)

(assert (=> b!3324457 (= e!2067534 lt!1129368)))

(declare-fun b!3324458 () Bool)

(declare-fun e!2067531 () Int)

(declare-fun e!2067532 () Int)

(assert (=> b!3324458 (= e!2067531 e!2067532)))

(declare-fun c!564709 () Bool)

(assert (=> b!3324458 (= c!564709 (>= 0 call!241322))))

(declare-fun d!934689 () Bool)

(declare-fun e!2067530 () Bool)

(assert (=> d!934689 e!2067530))

(declare-fun res!1348484 () Bool)

(assert (=> d!934689 (=> (not res!1348484) (not e!2067530))))

(declare-fun lt!1129675 () List!36757)

(assert (=> d!934689 (= res!1348484 (= ((_ map implies) (content!4997 lt!1129675) (content!4997 lt!1129368)) ((as const (InoxSet Token!10014)) true)))))

(declare-fun e!2067533 () List!36757)

(assert (=> d!934689 (= lt!1129675 e!2067533)))

(declare-fun c!564708 () Bool)

(assert (=> d!934689 (= c!564708 ((_ is Nil!36633) lt!1129368))))

(assert (=> d!934689 (= (drop!1921 lt!1129368 0) lt!1129675)))

(declare-fun b!3324459 () Bool)

(assert (=> b!3324459 (= e!2067533 e!2067534)))

(declare-fun c!564710 () Bool)

(assert (=> b!3324459 (= c!564710 (<= 0 0))))

(declare-fun b!3324460 () Bool)

(assert (=> b!3324460 (= e!2067530 (= (size!27692 lt!1129675) e!2067531))))

(declare-fun c!564707 () Bool)

(assert (=> b!3324460 (= c!564707 (<= 0 0))))

(declare-fun b!3324461 () Bool)

(assert (=> b!3324461 (= e!2067531 call!241322)))

(declare-fun b!3324462 () Bool)

(assert (=> b!3324462 (= e!2067532 0)))

(declare-fun b!3324463 () Bool)

(assert (=> b!3324463 (= e!2067534 (drop!1921 (t!256360 lt!1129368) (- 0 1)))))

(declare-fun b!3324464 () Bool)

(assert (=> b!3324464 (= e!2067532 (- call!241322 0))))

(declare-fun b!3324465 () Bool)

(assert (=> b!3324465 (= e!2067533 Nil!36633)))

(assert (= (and d!934689 c!564708) b!3324465))

(assert (= (and d!934689 (not c!564708)) b!3324459))

(assert (= (and b!3324459 c!564710) b!3324457))

(assert (= (and b!3324459 (not c!564710)) b!3324463))

(assert (= (and d!934689 res!1348484) b!3324460))

(assert (= (and b!3324460 c!564707) b!3324461))

(assert (= (and b!3324460 (not c!564707)) b!3324458))

(assert (= (and b!3324458 c!564709) b!3324462))

(assert (= (and b!3324458 (not c!564709)) b!3324464))

(assert (= (or b!3324461 b!3324458 b!3324464) bm!241317))

(assert (=> bm!241317 m!3663935))

(declare-fun m!3663997 () Bool)

(assert (=> d!934689 m!3663997))

(declare-fun m!3663999 () Bool)

(assert (=> d!934689 m!3663999))

(declare-fun m!3664001 () Bool)

(assert (=> b!3324460 m!3664001))

(declare-fun m!3664003 () Bool)

(assert (=> b!3324463 m!3664003))

(assert (=> b!3324033 d!934689))

(declare-fun d!934691 () Bool)

(assert (=> d!934691 (= (head!7155 (drop!1921 lt!1129368 0)) (apply!8452 lt!1129368 0))))

(declare-fun lt!1129678 () Unit!51643)

(declare-fun choose!19254 (List!36757 Int) Unit!51643)

(assert (=> d!934691 (= lt!1129678 (choose!19254 lt!1129368 0))))

(declare-fun e!2067543 () Bool)

(assert (=> d!934691 e!2067543))

(declare-fun res!1348493 () Bool)

(assert (=> d!934691 (=> (not res!1348493) (not e!2067543))))

(assert (=> d!934691 (= res!1348493 (>= 0 0))))

(assert (=> d!934691 (= (lemmaDropApply!1089 lt!1129368 0) lt!1129678)))

(declare-fun b!3324478 () Bool)

(assert (=> b!3324478 (= e!2067543 (< 0 (size!27692 lt!1129368)))))

(assert (= (and d!934691 res!1348493) b!3324478))

(assert (=> d!934691 m!3663371))

(assert (=> d!934691 m!3663371))

(assert (=> d!934691 m!3663381))

(assert (=> d!934691 m!3663383))

(declare-fun m!3664005 () Bool)

(assert (=> d!934691 m!3664005))

(assert (=> b!3324478 m!3663935))

(assert (=> b!3324033 d!934691))

(declare-fun d!934693 () Bool)

(declare-fun lt!1129682 () Token!10014)

(assert (=> d!934693 (= lt!1129682 (apply!8452 (list!13177 lt!1129204) 0))))

(assert (=> d!934693 (= lt!1129682 (apply!8453 (c!564522 lt!1129204) 0))))

(declare-fun e!2067548 () Bool)

(assert (=> d!934693 e!2067548))

(declare-fun res!1348497 () Bool)

(assert (=> d!934693 (=> (not res!1348497) (not e!2067548))))

(assert (=> d!934693 (= res!1348497 (<= 0 0))))

(assert (=> d!934693 (= (apply!8449 lt!1129204 0) lt!1129682)))

(declare-fun b!3324486 () Bool)

(assert (=> b!3324486 (= e!2067548 (< 0 (size!27690 lt!1129204)))))

(assert (= (and d!934693 res!1348497) b!3324486))

(assert (=> d!934693 m!3662821))

(assert (=> d!934693 m!3662821))

(declare-fun m!3664007 () Bool)

(assert (=> d!934693 m!3664007))

(declare-fun m!3664009 () Bool)

(assert (=> d!934693 m!3664009))

(assert (=> b!3324486 m!3663365))

(assert (=> b!3324033 d!934693))

(declare-fun d!934695 () Bool)

(assert (=> d!934695 (= (tail!5289 (drop!1921 lt!1129364 0)) (t!256360 (drop!1921 lt!1129364 0)))))

(assert (=> b!3324033 d!934695))

(declare-fun d!934697 () Bool)

(assert (=> d!934697 (= (tail!5289 (drop!1921 lt!1129364 0)) (drop!1921 lt!1129364 (+ 0 1)))))

(declare-fun lt!1129686 () Unit!51643)

(declare-fun choose!19255 (List!36757 Int) Unit!51643)

(assert (=> d!934697 (= lt!1129686 (choose!19255 lt!1129364 0))))

(declare-fun e!2067556 () Bool)

(assert (=> d!934697 e!2067556))

(declare-fun res!1348500 () Bool)

(assert (=> d!934697 (=> (not res!1348500) (not e!2067556))))

(assert (=> d!934697 (= res!1348500 (>= 0 0))))

(assert (=> d!934697 (= (lemmaDropTail!973 lt!1129364 0) lt!1129686)))

(declare-fun b!3324499 () Bool)

(assert (=> b!3324499 (= e!2067556 (< 0 (size!27692 lt!1129364)))))

(assert (= (and d!934697 res!1348500) b!3324499))

(assert (=> d!934697 m!3663375))

(assert (=> d!934697 m!3663375))

(assert (=> d!934697 m!3663391))

(assert (=> d!934697 m!3663377))

(declare-fun m!3664027 () Bool)

(assert (=> d!934697 m!3664027))

(assert (=> b!3324499 m!3663915))

(assert (=> b!3324033 d!934697))

(assert (=> b!3324033 d!934427))

(assert (=> b!3324033 d!934665))

(declare-fun bm!241318 () Bool)

(declare-fun call!241323 () Int)

(assert (=> bm!241318 (= call!241323 (size!27692 lt!1129364))))

(declare-fun b!3324500 () Bool)

(declare-fun e!2067561 () List!36757)

(assert (=> b!3324500 (= e!2067561 lt!1129364)))

(declare-fun b!3324501 () Bool)

(declare-fun e!2067558 () Int)

(declare-fun e!2067559 () Int)

(assert (=> b!3324501 (= e!2067558 e!2067559)))

(declare-fun c!564722 () Bool)

(assert (=> b!3324501 (= c!564722 (>= (+ 0 1) call!241323))))

(declare-fun d!934703 () Bool)

(declare-fun e!2067557 () Bool)

(assert (=> d!934703 e!2067557))

(declare-fun res!1348501 () Bool)

(assert (=> d!934703 (=> (not res!1348501) (not e!2067557))))

(declare-fun lt!1129687 () List!36757)

(assert (=> d!934703 (= res!1348501 (= ((_ map implies) (content!4997 lt!1129687) (content!4997 lt!1129364)) ((as const (InoxSet Token!10014)) true)))))

(declare-fun e!2067560 () List!36757)

(assert (=> d!934703 (= lt!1129687 e!2067560)))

(declare-fun c!564721 () Bool)

(assert (=> d!934703 (= c!564721 ((_ is Nil!36633) lt!1129364))))

(assert (=> d!934703 (= (drop!1921 lt!1129364 (+ 0 1)) lt!1129687)))

(declare-fun b!3324502 () Bool)

(assert (=> b!3324502 (= e!2067560 e!2067561)))

(declare-fun c!564723 () Bool)

(assert (=> b!3324502 (= c!564723 (<= (+ 0 1) 0))))

(declare-fun b!3324503 () Bool)

(assert (=> b!3324503 (= e!2067557 (= (size!27692 lt!1129687) e!2067558))))

(declare-fun c!564720 () Bool)

(assert (=> b!3324503 (= c!564720 (<= (+ 0 1) 0))))

(declare-fun b!3324504 () Bool)

(assert (=> b!3324504 (= e!2067558 call!241323)))

(declare-fun b!3324505 () Bool)

(assert (=> b!3324505 (= e!2067559 0)))

(declare-fun b!3324506 () Bool)

(assert (=> b!3324506 (= e!2067561 (drop!1921 (t!256360 lt!1129364) (- (+ 0 1) 1)))))

(declare-fun b!3324507 () Bool)

(assert (=> b!3324507 (= e!2067559 (- call!241323 (+ 0 1)))))

(declare-fun b!3324508 () Bool)

(assert (=> b!3324508 (= e!2067560 Nil!36633)))

(assert (= (and d!934703 c!564721) b!3324508))

(assert (= (and d!934703 (not c!564721)) b!3324502))

(assert (= (and b!3324502 c!564723) b!3324500))

(assert (= (and b!3324502 (not c!564723)) b!3324506))

(assert (= (and d!934703 res!1348501) b!3324503))

(assert (= (and b!3324503 c!564720) b!3324504))

(assert (= (and b!3324503 (not c!564720)) b!3324501))

(assert (= (and b!3324501 c!564722) b!3324505))

(assert (= (and b!3324501 (not c!564722)) b!3324507))

(assert (= (or b!3324504 b!3324501 b!3324507) bm!241318))

(assert (=> bm!241318 m!3663915))

(declare-fun m!3664029 () Bool)

(assert (=> d!934703 m!3664029))

(assert (=> d!934703 m!3663919))

(declare-fun m!3664031 () Bool)

(assert (=> b!3324503 m!3664031))

(declare-fun m!3664033 () Bool)

(assert (=> b!3324506 m!3664033))

(assert (=> b!3324033 d!934703))

(declare-fun d!934705 () Bool)

(declare-fun e!2067564 () Bool)

(assert (=> d!934705 e!2067564))

(declare-fun res!1348504 () Bool)

(assert (=> d!934705 (=> (not res!1348504) (not e!2067564))))

(assert (=> d!934705 (= res!1348504 (appendAssocInst!768 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0)))) (c!564521 (charsOf!3338 separatorToken!241))))))

(declare-fun lt!1129688 () BalanceConc!21660)

(assert (=> d!934705 (= lt!1129688 (BalanceConc!21661 (++!8898 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0)))) (c!564521 (charsOf!3338 separatorToken!241)))))))

(assert (=> d!934705 (= (++!8896 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))) (charsOf!3338 separatorToken!241)) lt!1129688)))

(declare-fun b!3324514 () Bool)

(declare-fun res!1348505 () Bool)

(assert (=> b!3324514 (=> (not res!1348505) (not e!2067564))))

(assert (=> b!3324514 (= res!1348505 (<= (height!1626 (++!8898 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0)))) (c!564521 (charsOf!3338 separatorToken!241)))) (+ (max!0 (height!1626 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))))) (height!1626 (c!564521 (charsOf!3338 separatorToken!241)))) 1)))))

(declare-fun b!3324515 () Bool)

(declare-fun res!1348503 () Bool)

(assert (=> b!3324515 (=> (not res!1348503) (not e!2067564))))

(assert (=> b!3324515 (= res!1348503 (>= (height!1626 (++!8898 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0)))) (c!564521 (charsOf!3338 separatorToken!241)))) (max!0 (height!1626 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0))))) (height!1626 (c!564521 (charsOf!3338 separatorToken!241))))))))

(declare-fun b!3324516 () Bool)

(assert (=> b!3324516 (= e!2067564 (= (list!13180 lt!1129688) (++!8895 (list!13180 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0)))) (list!13180 (charsOf!3338 separatorToken!241)))))))

(declare-fun b!3324513 () Bool)

(declare-fun res!1348502 () Bool)

(assert (=> b!3324513 (=> (not res!1348502) (not e!2067564))))

(assert (=> b!3324513 (= res!1348502 (isBalanced!3307 (++!8898 (c!564521 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 lt!1129204 0)))) (c!564521 (charsOf!3338 separatorToken!241)))))))

(assert (= (and d!934705 res!1348504) b!3324513))

(assert (= (and b!3324513 res!1348502) b!3324514))

(assert (= (and b!3324514 res!1348505) b!3324515))

(assert (= (and b!3324515 res!1348503) b!3324516))

(declare-fun m!3664047 () Bool)

(assert (=> b!3324515 m!3664047))

(declare-fun m!3664049 () Bool)

(assert (=> b!3324515 m!3664049))

(declare-fun m!3664053 () Bool)

(assert (=> b!3324515 m!3664053))

(assert (=> b!3324515 m!3664053))

(assert (=> b!3324515 m!3664049))

(declare-fun m!3664055 () Bool)

(assert (=> b!3324515 m!3664055))

(assert (=> b!3324515 m!3664047))

(declare-fun m!3664057 () Bool)

(assert (=> b!3324515 m!3664057))

(declare-fun m!3664059 () Bool)

(assert (=> b!3324516 m!3664059))

(assert (=> b!3324516 m!3663373))

(declare-fun m!3664061 () Bool)

(assert (=> b!3324516 m!3664061))

(assert (=> b!3324516 m!3663355))

(assert (=> b!3324516 m!3663351))

(assert (=> b!3324516 m!3664061))

(assert (=> b!3324516 m!3663351))

(declare-fun m!3664063 () Bool)

(assert (=> b!3324516 m!3664063))

(assert (=> b!3324514 m!3664047))

(assert (=> b!3324514 m!3664049))

(assert (=> b!3324514 m!3664053))

(assert (=> b!3324514 m!3664053))

(assert (=> b!3324514 m!3664049))

(assert (=> b!3324514 m!3664055))

(assert (=> b!3324514 m!3664047))

(assert (=> b!3324514 m!3664057))

(assert (=> b!3324513 m!3664047))

(assert (=> b!3324513 m!3664047))

(declare-fun m!3664065 () Bool)

(assert (=> b!3324513 m!3664065))

(declare-fun m!3664067 () Bool)

(assert (=> d!934705 m!3664067))

(assert (=> d!934705 m!3664047))

(assert (=> b!3324033 d!934705))

(declare-fun bs!550779 () Bool)

(declare-fun d!934713 () Bool)

(assert (= bs!550779 (and d!934713 d!934357)))

(declare-fun lambda!119636 () Int)

(assert (=> bs!550779 (= (= (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (= lambda!119636 lambda!119612))))

(declare-fun bs!550780 () Bool)

(assert (= bs!550780 (and d!934713 d!934501)))

(assert (=> bs!550780 (= (= (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (= lambda!119636 lambda!119630))))

(declare-fun bs!550781 () Bool)

(assert (= bs!550781 (and d!934713 d!934529)))

(assert (=> bs!550781 (= (= (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (= lambda!119636 lambda!119634))))

(assert (=> d!934713 true))

(assert (=> d!934713 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15095 order!19147 lambda!119636))))

(assert (=> d!934713 (= (equivClasses!2108 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (Forall2!900 lambda!119636))))

(declare-fun bs!550782 () Bool)

(assert (= bs!550782 d!934713))

(declare-fun m!3664069 () Bool)

(assert (=> bs!550782 m!3664069))

(assert (=> b!3324203 d!934713))

(declare-fun d!934715 () Bool)

(declare-fun res!1348518 () Bool)

(declare-fun e!2067575 () Bool)

(assert (=> d!934715 (=> (not res!1348518) (not e!2067575))))

(assert (=> d!934715 (= res!1348518 (= (csize!22276 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) (+ (size!27697 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) (size!27697 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))))

(assert (=> d!934715 (= (inv!49634 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) e!2067575)))

(declare-fun b!3324533 () Bool)

(declare-fun res!1348519 () Bool)

(assert (=> b!3324533 (=> (not res!1348519) (not e!2067575))))

(assert (=> b!3324533 (= res!1348519 (and (not (= (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) Empty!11023)) (not (= (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) Empty!11023))))))

(declare-fun b!3324534 () Bool)

(declare-fun res!1348520 () Bool)

(assert (=> b!3324534 (=> (not res!1348520) (not e!2067575))))

(assert (=> b!3324534 (= res!1348520 (= (cheight!11234 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) (+ (max!0 (height!1626 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) (height!1626 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) 1)))))

(declare-fun b!3324535 () Bool)

(assert (=> b!3324535 (= e!2067575 (<= 0 (cheight!11234 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(assert (= (and d!934715 res!1348518) b!3324533))

(assert (= (and b!3324533 res!1348519) b!3324534))

(assert (= (and b!3324534 res!1348520) b!3324535))

(declare-fun m!3664075 () Bool)

(assert (=> d!934715 m!3664075))

(declare-fun m!3664077 () Bool)

(assert (=> d!934715 m!3664077))

(declare-fun m!3664079 () Bool)

(assert (=> b!3324534 m!3664079))

(declare-fun m!3664081 () Bool)

(assert (=> b!3324534 m!3664081))

(assert (=> b!3324534 m!3664079))

(assert (=> b!3324534 m!3664081))

(declare-fun m!3664083 () Bool)

(assert (=> b!3324534 m!3664083))

(assert (=> b!3324008 d!934715))

(declare-fun d!934721 () Bool)

(assert (=> d!934721 (= (charsToInt!0 (text!39325 (value!172194 separatorToken!241))) (choose!625 (text!39325 (value!172194 separatorToken!241))))))

(declare-fun bs!550785 () Bool)

(assert (= bs!550785 d!934721))

(declare-fun m!3664085 () Bool)

(assert (=> bs!550785 m!3664085))

(assert (=> d!934567 d!934721))

(assert (=> b!3323535 d!934437))

(declare-fun d!934723 () Bool)

(declare-fun lt!1129697 () Int)

(assert (=> d!934723 (>= lt!1129697 0)))

(declare-fun e!2067578 () Int)

(assert (=> d!934723 (= lt!1129697 e!2067578)))

(declare-fun c!564728 () Bool)

(assert (=> d!934723 (= c!564728 ((_ is Nil!36631) (t!256358 (originalCharacters!6038 separatorToken!241))))))

(assert (=> d!934723 (= (size!27691 (t!256358 (originalCharacters!6038 separatorToken!241))) lt!1129697)))

(declare-fun b!3324538 () Bool)

(assert (=> b!3324538 (= e!2067578 0)))

(declare-fun b!3324539 () Bool)

(assert (=> b!3324539 (= e!2067578 (+ 1 (size!27691 (t!256358 (t!256358 (originalCharacters!6038 separatorToken!241))))))))

(assert (= (and d!934723 c!564728) b!3324538))

(assert (= (and d!934723 (not c!564728)) b!3324539))

(declare-fun m!3664091 () Bool)

(assert (=> b!3324539 m!3664091))

(assert (=> b!3323884 d!934723))

(declare-fun d!934725 () Bool)

(declare-fun choose!19257 (Int) Bool)

(assert (=> d!934725 (= (Forall2!900 lambda!119612) (choose!19257 lambda!119612))))

(declare-fun bs!550786 () Bool)

(assert (= bs!550786 d!934725))

(declare-fun m!3664095 () Bool)

(assert (=> bs!550786 m!3664095))

(assert (=> d!934357 d!934725))

(declare-fun d!934729 () Bool)

(assert (=> d!934729 (= (list!13180 lt!1129326) (list!13184 (c!564521 lt!1129326)))))

(declare-fun bs!550787 () Bool)

(assert (= bs!550787 d!934729))

(declare-fun m!3664097 () Bool)

(assert (=> bs!550787 m!3664097))

(assert (=> d!934449 d!934729))

(declare-fun d!934731 () Bool)

(declare-fun c!564732 () Bool)

(assert (=> d!934731 (= c!564732 ((_ is Cons!36633) (list!13177 (singletonSeq!2420 separatorToken!241))))))

(declare-fun e!2067588 () List!36755)

(assert (=> d!934731 (= (printList!1461 thiss!18206 (list!13177 (singletonSeq!2420 separatorToken!241))) e!2067588)))

(declare-fun b!3324552 () Bool)

(assert (=> b!3324552 (= e!2067588 (++!8895 (list!13180 (charsOf!3338 (h!42053 (list!13177 (singletonSeq!2420 separatorToken!241))))) (printList!1461 thiss!18206 (t!256360 (list!13177 (singletonSeq!2420 separatorToken!241))))))))

(declare-fun b!3324553 () Bool)

(assert (=> b!3324553 (= e!2067588 Nil!36631)))

(assert (= (and d!934731 c!564732) b!3324552))

(assert (= (and d!934731 (not c!564732)) b!3324553))

(declare-fun m!3664105 () Bool)

(assert (=> b!3324552 m!3664105))

(assert (=> b!3324552 m!3664105))

(declare-fun m!3664107 () Bool)

(assert (=> b!3324552 m!3664107))

(declare-fun m!3664109 () Bool)

(assert (=> b!3324552 m!3664109))

(assert (=> b!3324552 m!3664107))

(assert (=> b!3324552 m!3664109))

(declare-fun m!3664111 () Bool)

(assert (=> b!3324552 m!3664111))

(assert (=> d!934449 d!934731))

(assert (=> d!934449 d!934445))

(declare-fun d!934737 () Bool)

(declare-fun lt!1129716 () BalanceConc!21660)

(declare-fun printListTailRec!613 (LexerInterface!4913 List!36757 List!36755) List!36755)

(assert (=> d!934737 (= (list!13180 lt!1129716) (printListTailRec!613 thiss!18206 (dropList!1131 (singletonSeq!2420 separatorToken!241) 0) (list!13180 (BalanceConc!21661 Empty!11023))))))

(declare-fun e!2067594 () BalanceConc!21660)

(assert (=> d!934737 (= lt!1129716 e!2067594)))

(declare-fun c!564735 () Bool)

(assert (=> d!934737 (= c!564735 (>= 0 (size!27690 (singletonSeq!2420 separatorToken!241))))))

(declare-fun e!2067593 () Bool)

(assert (=> d!934737 e!2067593))

(declare-fun res!1348531 () Bool)

(assert (=> d!934737 (=> (not res!1348531) (not e!2067593))))

(assert (=> d!934737 (= res!1348531 (>= 0 0))))

(assert (=> d!934737 (= (printTailRec!1408 thiss!18206 (singletonSeq!2420 separatorToken!241) 0 (BalanceConc!21661 Empty!11023)) lt!1129716)))

(declare-fun b!3324560 () Bool)

(assert (=> b!3324560 (= e!2067593 (<= 0 (size!27690 (singletonSeq!2420 separatorToken!241))))))

(declare-fun b!3324561 () Bool)

(assert (=> b!3324561 (= e!2067594 (BalanceConc!21661 Empty!11023))))

(declare-fun b!3324562 () Bool)

(assert (=> b!3324562 (= e!2067594 (printTailRec!1408 thiss!18206 (singletonSeq!2420 separatorToken!241) (+ 0 1) (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (apply!8449 (singletonSeq!2420 separatorToken!241) 0)))))))

(declare-fun lt!1129713 () List!36757)

(assert (=> b!3324562 (= lt!1129713 (list!13177 (singletonSeq!2420 separatorToken!241)))))

(declare-fun lt!1129715 () Unit!51643)

(assert (=> b!3324562 (= lt!1129715 (lemmaDropApply!1089 lt!1129713 0))))

(assert (=> b!3324562 (= (head!7155 (drop!1921 lt!1129713 0)) (apply!8452 lt!1129713 0))))

(declare-fun lt!1129717 () Unit!51643)

(assert (=> b!3324562 (= lt!1129717 lt!1129715)))

(declare-fun lt!1129718 () List!36757)

(assert (=> b!3324562 (= lt!1129718 (list!13177 (singletonSeq!2420 separatorToken!241)))))

(declare-fun lt!1129719 () Unit!51643)

(assert (=> b!3324562 (= lt!1129719 (lemmaDropTail!973 lt!1129718 0))))

(assert (=> b!3324562 (= (tail!5289 (drop!1921 lt!1129718 0)) (drop!1921 lt!1129718 (+ 0 1)))))

(declare-fun lt!1129714 () Unit!51643)

(assert (=> b!3324562 (= lt!1129714 lt!1129719)))

(assert (= (and d!934737 res!1348531) b!3324560))

(assert (= (and d!934737 c!564735) b!3324561))

(assert (= (and d!934737 (not c!564735)) b!3324562))

(declare-fun m!3664113 () Bool)

(assert (=> d!934737 m!3664113))

(assert (=> d!934737 m!3663359))

(declare-fun m!3664115 () Bool)

(assert (=> d!934737 m!3664115))

(assert (=> d!934737 m!3662717))

(declare-fun m!3664117 () Bool)

(assert (=> d!934737 m!3664117))

(assert (=> d!934737 m!3662717))

(assert (=> d!934737 m!3664113))

(assert (=> d!934737 m!3663359))

(declare-fun m!3664119 () Bool)

(assert (=> d!934737 m!3664119))

(assert (=> b!3324560 m!3662717))

(assert (=> b!3324560 m!3664117))

(declare-fun m!3664121 () Bool)

(assert (=> b!3324562 m!3664121))

(declare-fun m!3664123 () Bool)

(assert (=> b!3324562 m!3664123))

(assert (=> b!3324562 m!3662717))

(declare-fun m!3664125 () Bool)

(assert (=> b!3324562 m!3664125))

(assert (=> b!3324562 m!3664125))

(assert (=> b!3324562 m!3664121))

(declare-fun m!3664127 () Bool)

(assert (=> b!3324562 m!3664127))

(declare-fun m!3664129 () Bool)

(assert (=> b!3324562 m!3664129))

(declare-fun m!3664131 () Bool)

(assert (=> b!3324562 m!3664131))

(declare-fun m!3664133 () Bool)

(assert (=> b!3324562 m!3664133))

(declare-fun m!3664135 () Bool)

(assert (=> b!3324562 m!3664135))

(declare-fun m!3664137 () Bool)

(assert (=> b!3324562 m!3664137))

(assert (=> b!3324562 m!3662717))

(assert (=> b!3324562 m!3664123))

(declare-fun m!3664139 () Bool)

(assert (=> b!3324562 m!3664139))

(declare-fun m!3664141 () Bool)

(assert (=> b!3324562 m!3664141))

(assert (=> b!3324562 m!3664135))

(assert (=> b!3324562 m!3664141))

(declare-fun m!3664143 () Bool)

(assert (=> b!3324562 m!3664143))

(assert (=> b!3324562 m!3662717))

(assert (=> b!3324562 m!3662719))

(assert (=> d!934449 d!934737))

(declare-fun b!3324566 () Bool)

(declare-fun e!2067596 () List!36755)

(assert (=> b!3324566 (= e!2067596 (++!8895 (list!13184 (left!28547 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))) (list!13184 (right!28877 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun b!3324563 () Bool)

(declare-fun e!2067595 () List!36755)

(assert (=> b!3324563 (= e!2067595 Nil!36631)))

(declare-fun b!3324565 () Bool)

(assert (=> b!3324565 (= e!2067596 (list!13186 (xs!14161 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))

(declare-fun b!3324564 () Bool)

(assert (=> b!3324564 (= e!2067595 e!2067596)))

(declare-fun c!564737 () Bool)

(assert (=> b!3324564 (= c!564737 ((_ is Leaf!17296) (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun d!934739 () Bool)

(declare-fun c!564736 () Bool)

(assert (=> d!934739 (= c!564736 ((_ is Empty!11023) (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> d!934739 (= (list!13184 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) e!2067595)))

(assert (= (and d!934739 c!564736) b!3324563))

(assert (= (and d!934739 (not c!564736)) b!3324564))

(assert (= (and b!3324564 c!564737) b!3324565))

(assert (= (and b!3324564 (not c!564737)) b!3324566))

(declare-fun m!3664145 () Bool)

(assert (=> b!3324566 m!3664145))

(declare-fun m!3664147 () Bool)

(assert (=> b!3324566 m!3664147))

(assert (=> b!3324566 m!3664145))

(assert (=> b!3324566 m!3664147))

(declare-fun m!3664149 () Bool)

(assert (=> b!3324566 m!3664149))

(declare-fun m!3664151 () Bool)

(assert (=> b!3324565 m!3664151))

(assert (=> d!934499 d!934739))

(declare-fun d!934741 () Bool)

(declare-fun res!1348536 () Bool)

(declare-fun e!2067601 () Bool)

(assert (=> d!934741 (=> (not res!1348536) (not e!2067601))))

(assert (=> d!934741 (= res!1348536 (<= (size!27691 (list!13186 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) 512))))

(assert (=> d!934741 (= (inv!49635 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) e!2067601)))

(declare-fun b!3324575 () Bool)

(declare-fun res!1348537 () Bool)

(assert (=> b!3324575 (=> (not res!1348537) (not e!2067601))))

(assert (=> b!3324575 (= res!1348537 (= (csize!22277 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) (size!27691 (list!13186 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))))

(declare-fun b!3324576 () Bool)

(assert (=> b!3324576 (= e!2067601 (and (> (csize!22277 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) 0) (<= (csize!22277 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) 512)))))

(assert (= (and d!934741 res!1348536) b!3324575))

(assert (= (and b!3324575 res!1348537) b!3324576))

(declare-fun m!3664153 () Bool)

(assert (=> d!934741 m!3664153))

(assert (=> d!934741 m!3664153))

(declare-fun m!3664155 () Bool)

(assert (=> d!934741 m!3664155))

(assert (=> b!3324575 m!3664153))

(assert (=> b!3324575 m!3664153))

(assert (=> b!3324575 m!3664155))

(assert (=> b!3323951 d!934741))

(declare-fun d!934743 () Bool)

(assert (=> d!934743 (= (list!13180 (_2!21199 lt!1129327)) (list!13184 (c!564521 (_2!21199 lt!1129327))))))

(declare-fun bs!550788 () Bool)

(assert (= bs!550788 d!934743))

(declare-fun m!3664157 () Bool)

(assert (=> bs!550788 m!3664157))

(assert (=> b!3323976 d!934743))

(declare-fun b!3324591 () Bool)

(declare-fun e!2067608 () tuple2!36134)

(declare-fun lt!1129730 () Option!7308)

(declare-fun lt!1129732 () tuple2!36134)

(assert (=> b!3324591 (= e!2067608 (tuple2!36135 (Cons!36633 (_1!21203 (v!36171 lt!1129730)) (_1!21201 lt!1129732)) (_2!21201 lt!1129732)))))

(assert (=> b!3324591 (= lt!1129732 (lexList!1372 thiss!18206 rules!2135 (_2!21203 (v!36171 lt!1129730))))))

(declare-fun b!3324592 () Bool)

(declare-fun e!2067606 () Bool)

(declare-fun lt!1129731 () tuple2!36134)

(assert (=> b!3324592 (= e!2067606 (not (isEmpty!20794 (_1!21201 lt!1129731))))))

(declare-fun b!3324593 () Bool)

(declare-fun e!2067607 () Bool)

(assert (=> b!3324593 (= e!2067607 (= (_2!21201 lt!1129731) (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(declare-fun d!934745 () Bool)

(assert (=> d!934745 e!2067607))

(declare-fun c!564741 () Bool)

(assert (=> d!934745 (= c!564741 (> (size!27692 (_1!21201 lt!1129731)) 0))))

(assert (=> d!934745 (= lt!1129731 e!2067608)))

(declare-fun c!564740 () Bool)

(assert (=> d!934745 (= c!564740 ((_ is Some!7307) lt!1129730))))

(assert (=> d!934745 (= lt!1129730 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(assert (=> d!934745 (= (lexList!1372 thiss!18206 rules!2135 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))) lt!1129731)))

(declare-fun b!3324594 () Bool)

(assert (=> b!3324594 (= e!2067608 (tuple2!36135 Nil!36633 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(declare-fun b!3324595 () Bool)

(assert (=> b!3324595 (= e!2067607 e!2067606)))

(declare-fun res!1348552 () Bool)

(assert (=> b!3324595 (= res!1348552 (< (size!27691 (_2!21201 lt!1129731)) (size!27691 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))))

(assert (=> b!3324595 (=> (not res!1348552) (not e!2067606))))

(assert (= (and d!934745 c!564740) b!3324591))

(assert (= (and d!934745 (not c!564740)) b!3324594))

(assert (= (and d!934745 c!564741) b!3324595))

(assert (= (and d!934745 (not c!564741)) b!3324593))

(assert (= (and b!3324595 res!1348552) b!3324592))

(declare-fun m!3664159 () Bool)

(assert (=> b!3324591 m!3664159))

(declare-fun m!3664161 () Bool)

(assert (=> b!3324592 m!3664161))

(declare-fun m!3664163 () Bool)

(assert (=> d!934745 m!3664163))

(assert (=> d!934745 m!3663251))

(declare-fun m!3664165 () Bool)

(assert (=> d!934745 m!3664165))

(declare-fun m!3664167 () Bool)

(assert (=> b!3324595 m!3664167))

(assert (=> b!3324595 m!3663251))

(declare-fun m!3664169 () Bool)

(assert (=> b!3324595 m!3664169))

(assert (=> b!3323976 d!934745))

(declare-fun d!934747 () Bool)

(assert (=> d!934747 (= (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))) (list!13184 (c!564521 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(declare-fun bs!550789 () Bool)

(assert (= bs!550789 d!934747))

(declare-fun m!3664171 () Bool)

(assert (=> bs!550789 m!3664171))

(assert (=> b!3323976 d!934747))

(declare-fun b!3324599 () Bool)

(declare-fun e!2067610 () List!36755)

(assert (=> b!3324599 (= e!2067610 (++!8895 (list!13184 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) (list!13184 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))))

(declare-fun b!3324596 () Bool)

(declare-fun e!2067609 () List!36755)

(assert (=> b!3324596 (= e!2067609 Nil!36631)))

(declare-fun b!3324598 () Bool)

(assert (=> b!3324598 (= e!2067610 (list!13186 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun b!3324597 () Bool)

(assert (=> b!3324597 (= e!2067609 e!2067610)))

(declare-fun c!564743 () Bool)

(assert (=> b!3324597 (= c!564743 ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(declare-fun d!934749 () Bool)

(declare-fun c!564742 () Bool)

(assert (=> d!934749 (= c!564742 ((_ is Empty!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))

(assert (=> d!934749 (= (list!13184 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) e!2067609)))

(assert (= (and d!934749 c!564742) b!3324596))

(assert (= (and d!934749 (not c!564742)) b!3324597))

(assert (= (and b!3324597 c!564743) b!3324598))

(assert (= (and b!3324597 (not c!564743)) b!3324599))

(declare-fun m!3664173 () Bool)

(assert (=> b!3324599 m!3664173))

(declare-fun m!3664175 () Bool)

(assert (=> b!3324599 m!3664175))

(assert (=> b!3324599 m!3664173))

(assert (=> b!3324599 m!3664175))

(declare-fun m!3664177 () Bool)

(assert (=> b!3324599 m!3664177))

(assert (=> b!3324598 m!3664153))

(assert (=> d!934543 d!934749))

(assert (=> b!3323604 d!934503))

(declare-fun d!934751 () Bool)

(declare-fun lt!1129733 () Int)

(assert (=> d!934751 (>= lt!1129733 0)))

(declare-fun e!2067611 () Int)

(assert (=> d!934751 (= lt!1129733 e!2067611)))

(declare-fun c!564744 () Bool)

(assert (=> d!934751 (= c!564744 ((_ is Nil!36631) (t!256358 (originalCharacters!6038 (h!42053 tokens!494)))))))

(assert (=> d!934751 (= (size!27691 (t!256358 (originalCharacters!6038 (h!42053 tokens!494)))) lt!1129733)))

(declare-fun b!3324600 () Bool)

(assert (=> b!3324600 (= e!2067611 0)))

(declare-fun b!3324601 () Bool)

(assert (=> b!3324601 (= e!2067611 (+ 1 (size!27691 (t!256358 (t!256358 (originalCharacters!6038 (h!42053 tokens!494)))))))))

(assert (= (and d!934751 c!564744) b!3324600))

(assert (= (and d!934751 (not c!564744)) b!3324601))

(declare-fun m!3664179 () Bool)

(assert (=> b!3324601 m!3664179))

(assert (=> b!3323984 d!934751))

(declare-fun b!3324602 () Bool)

(declare-fun res!1348553 () Bool)

(declare-fun e!2067612 () Bool)

(assert (=> b!3324602 (=> res!1348553 e!2067612)))

(assert (=> b!3324602 (= res!1348553 (not ((_ is IntegerValue!16664) (value!172194 (h!42053 (t!256360 (t!256360 tokens!494)))))))))

(declare-fun e!2067614 () Bool)

(assert (=> b!3324602 (= e!2067614 e!2067612)))

(declare-fun b!3324604 () Bool)

(assert (=> b!3324604 (= e!2067614 (inv!17 (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))))

(declare-fun b!3324603 () Bool)

(declare-fun e!2067613 () Bool)

(assert (=> b!3324603 (= e!2067613 e!2067614)))

(declare-fun c!564746 () Bool)

(assert (=> b!3324603 (= c!564746 ((_ is IntegerValue!16663) (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))))

(declare-fun d!934753 () Bool)

(declare-fun c!564745 () Bool)

(assert (=> d!934753 (= c!564745 ((_ is IntegerValue!16662) (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))))

(assert (=> d!934753 (= (inv!21 (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))) e!2067613)))

(declare-fun b!3324605 () Bool)

(assert (=> b!3324605 (= e!2067613 (inv!16 (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))))

(declare-fun b!3324606 () Bool)

(assert (=> b!3324606 (= e!2067612 (inv!15 (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))))

(assert (= (and d!934753 c!564745) b!3324605))

(assert (= (and d!934753 (not c!564745)) b!3324603))

(assert (= (and b!3324603 c!564746) b!3324604))

(assert (= (and b!3324603 (not c!564746)) b!3324602))

(assert (= (and b!3324602 (not res!1348553)) b!3324606))

(declare-fun m!3664181 () Bool)

(assert (=> b!3324604 m!3664181))

(declare-fun m!3664183 () Bool)

(assert (=> b!3324605 m!3664183))

(declare-fun m!3664185 () Bool)

(assert (=> b!3324606 m!3664185))

(assert (=> b!3324269 d!934753))

(declare-fun d!934755 () Bool)

(declare-fun lt!1129734 () Int)

(assert (=> d!934755 (= lt!1129734 (size!27691 (list!13180 (_2!21199 lt!1129327))))))

(assert (=> d!934755 (= lt!1129734 (size!27697 (c!564521 (_2!21199 lt!1129327))))))

(assert (=> d!934755 (= (size!27693 (_2!21199 lt!1129327)) lt!1129734)))

(declare-fun bs!550790 () Bool)

(assert (= bs!550790 d!934755))

(assert (=> bs!550790 m!3663269))

(assert (=> bs!550790 m!3663269))

(declare-fun m!3664187 () Bool)

(assert (=> bs!550790 m!3664187))

(declare-fun m!3664189 () Bool)

(assert (=> bs!550790 m!3664189))

(assert (=> b!3323979 d!934755))

(declare-fun d!934757 () Bool)

(declare-fun lt!1129735 () Int)

(assert (=> d!934757 (= lt!1129735 (size!27691 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(assert (=> d!934757 (= lt!1129735 (size!27697 (c!564521 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))

(assert (=> d!934757 (= (size!27693 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))) lt!1129735)))

(declare-fun bs!550791 () Bool)

(assert (= bs!550791 d!934757))

(assert (=> bs!550791 m!3662709))

(assert (=> bs!550791 m!3663251))

(assert (=> bs!550791 m!3663251))

(assert (=> bs!550791 m!3664169))

(declare-fun m!3664191 () Bool)

(assert (=> bs!550791 m!3664191))

(assert (=> b!3323979 d!934757))

(declare-fun d!934759 () Bool)

(assert (=> d!934759 (= (inv!49623 (tag!5876 (h!42052 (t!256359 (t!256359 rules!2135))))) (= (mod (str.len (value!172193 (tag!5876 (h!42052 (t!256359 (t!256359 rules!2135)))))) 2) 0))))

(assert (=> b!3324252 d!934759))

(declare-fun d!934761 () Bool)

(declare-fun res!1348554 () Bool)

(declare-fun e!2067615 () Bool)

(assert (=> d!934761 (=> (not res!1348554) (not e!2067615))))

(assert (=> d!934761 (= res!1348554 (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))))))

(assert (=> d!934761 (= (inv!49626 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) e!2067615)))

(declare-fun b!3324607 () Bool)

(assert (=> b!3324607 (= e!2067615 (equivClasses!2108 (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))))))

(assert (= (and d!934761 res!1348554) b!3324607))

(declare-fun m!3664193 () Bool)

(assert (=> d!934761 m!3664193))

(declare-fun m!3664195 () Bool)

(assert (=> b!3324607 m!3664195))

(assert (=> b!3324252 d!934761))

(declare-fun bs!550792 () Bool)

(declare-fun d!934763 () Bool)

(assert (= bs!550792 (and d!934763 b!3323436)))

(declare-fun lambda!119640 () Int)

(assert (=> bs!550792 (not (= lambda!119640 lambda!119593))))

(declare-fun bs!550793 () Bool)

(assert (= bs!550793 (and d!934763 d!934283)))

(assert (=> bs!550793 (= lambda!119640 lambda!119603)))

(declare-fun bs!550794 () Bool)

(assert (= bs!550794 (and d!934763 d!934389)))

(assert (=> bs!550794 (= lambda!119640 lambda!119627)))

(declare-fun b!3324612 () Bool)

(declare-fun e!2067620 () Bool)

(assert (=> b!3324612 (= e!2067620 true)))

(declare-fun b!3324611 () Bool)

(declare-fun e!2067619 () Bool)

(assert (=> b!3324611 (= e!2067619 e!2067620)))

(declare-fun b!3324610 () Bool)

(declare-fun e!2067618 () Bool)

(assert (=> b!3324610 (= e!2067618 e!2067619)))

(assert (=> d!934763 e!2067618))

(assert (= b!3324611 b!3324612))

(assert (= b!3324610 b!3324611))

(assert (= (and d!934763 ((_ is Cons!36632) rules!2135)) b!3324610))

(assert (=> b!3324612 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15091 order!19139 lambda!119640))))

(assert (=> b!3324612 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15091 order!19139 lambda!119640))))

(assert (=> d!934763 true))

(declare-fun lt!1129736 () Bool)

(assert (=> d!934763 (= lt!1129736 (forall!7629 (t!256360 (list!13177 lt!1129204)) lambda!119640))))

(declare-fun e!2067616 () Bool)

(assert (=> d!934763 (= lt!1129736 e!2067616)))

(declare-fun res!1348556 () Bool)

(assert (=> d!934763 (=> res!1348556 e!2067616)))

(assert (=> d!934763 (= res!1348556 (not ((_ is Cons!36633) (t!256360 (list!13177 lt!1129204)))))))

(assert (=> d!934763 (not (isEmpty!20783 rules!2135))))

(assert (=> d!934763 (= (rulesProduceEachTokenIndividuallyList!1781 thiss!18206 rules!2135 (t!256360 (list!13177 lt!1129204))) lt!1129736)))

(declare-fun b!3324608 () Bool)

(declare-fun e!2067617 () Bool)

(assert (=> b!3324608 (= e!2067616 e!2067617)))

(declare-fun res!1348555 () Bool)

(assert (=> b!3324608 (=> (not res!1348555) (not e!2067617))))

(assert (=> b!3324608 (= res!1348555 (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 (h!42053 (t!256360 (list!13177 lt!1129204)))))))

(declare-fun b!3324609 () Bool)

(assert (=> b!3324609 (= e!2067617 (rulesProduceEachTokenIndividuallyList!1781 thiss!18206 rules!2135 (t!256360 (t!256360 (list!13177 lt!1129204)))))))

(assert (= (and d!934763 (not res!1348556)) b!3324608))

(assert (= (and b!3324608 res!1348555) b!3324609))

(declare-fun m!3664197 () Bool)

(assert (=> d!934763 m!3664197))

(assert (=> d!934763 m!3662601))

(declare-fun m!3664199 () Bool)

(assert (=> b!3324608 m!3664199))

(declare-fun m!3664201 () Bool)

(assert (=> b!3324609 m!3664201))

(assert (=> b!3323922 d!934763))

(declare-fun b!3324633 () Bool)

(declare-fun e!2067630 () List!36757)

(assert (=> b!3324633 (= e!2067630 (Cons!36633 (h!42053 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (++!8897 (t!256360 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(declare-fun d!934765 () Bool)

(declare-fun e!2067631 () Bool)

(assert (=> d!934765 e!2067631))

(declare-fun res!1348571 () Bool)

(assert (=> d!934765 (=> (not res!1348571) (not e!2067631))))

(declare-fun lt!1129744 () List!36757)

(assert (=> d!934765 (= res!1348571 (= (content!4997 lt!1129744) ((_ map or) (content!4997 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (content!4997 (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))))

(assert (=> d!934765 (= lt!1129744 e!2067630)))

(declare-fun c!564750 () Bool)

(assert (=> d!934765 (= c!564750 ((_ is Nil!36633) (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(assert (=> d!934765 (= (++!8897 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) lt!1129744)))

(declare-fun b!3324634 () Bool)

(declare-fun res!1348570 () Bool)

(assert (=> b!3324634 (=> (not res!1348570) (not e!2067631))))

(assert (=> b!3324634 (= res!1348570 (= (size!27692 lt!1129744) (+ (size!27692 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (size!27692 (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))))

(declare-fun b!3324632 () Bool)

(assert (=> b!3324632 (= e!2067630 (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3324635 () Bool)

(assert (=> b!3324635 (= e!2067631 (or (not (= (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) Nil!36633)) (= lt!1129744 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (= (and d!934765 c!564750) b!3324632))

(assert (= (and d!934765 (not c!564750)) b!3324633))

(assert (= (and d!934765 res!1348571) b!3324634))

(assert (= (and b!3324634 res!1348570) b!3324635))

(assert (=> b!3324633 m!3663661))

(declare-fun m!3664237 () Bool)

(assert (=> b!3324633 m!3664237))

(declare-fun m!3664239 () Bool)

(assert (=> d!934765 m!3664239))

(assert (=> d!934765 m!3663659))

(declare-fun m!3664241 () Bool)

(assert (=> d!934765 m!3664241))

(assert (=> d!934765 m!3663661))

(declare-fun m!3664243 () Bool)

(assert (=> d!934765 m!3664243))

(declare-fun m!3664245 () Bool)

(assert (=> b!3324634 m!3664245))

(assert (=> b!3324634 m!3663659))

(declare-fun m!3664247 () Bool)

(assert (=> b!3324634 m!3664247))

(assert (=> b!3324634 m!3663661))

(declare-fun m!3664249 () Bool)

(assert (=> b!3324634 m!3664249))

(assert (=> b!3324202 d!934765))

(declare-fun b!3324642 () Bool)

(declare-fun e!2067635 () List!36757)

(assert (=> b!3324642 (= e!2067635 Nil!36633)))

(declare-fun b!3324643 () Bool)

(declare-fun e!2067636 () List!36757)

(assert (=> b!3324643 (= e!2067635 e!2067636)))

(declare-fun c!564754 () Bool)

(assert (=> b!3324643 (= c!564754 ((_ is Leaf!17297) (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3324644 () Bool)

(assert (=> b!3324644 (= e!2067636 (list!13185 (xs!14162 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(declare-fun c!564753 () Bool)

(declare-fun d!934773 () Bool)

(assert (=> d!934773 (= c!564753 ((_ is Empty!11024) (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (=> d!934773 (= (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) e!2067635)))

(declare-fun b!3324645 () Bool)

(assert (=> b!3324645 (= e!2067636 (++!8897 (list!13181 (left!28548 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (list!13181 (right!28878 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (= (and d!934773 c!564753) b!3324642))

(assert (= (and d!934773 (not c!564753)) b!3324643))

(assert (= (and b!3324643 c!564754) b!3324644))

(assert (= (and b!3324643 (not c!564754)) b!3324645))

(declare-fun m!3664265 () Bool)

(assert (=> b!3324644 m!3664265))

(declare-fun m!3664267 () Bool)

(assert (=> b!3324645 m!3664267))

(declare-fun m!3664269 () Bool)

(assert (=> b!3324645 m!3664269))

(assert (=> b!3324645 m!3664267))

(assert (=> b!3324645 m!3664269))

(declare-fun m!3664271 () Bool)

(assert (=> b!3324645 m!3664271))

(assert (=> b!3324202 d!934773))

(declare-fun b!3324648 () Bool)

(declare-fun e!2067639 () List!36757)

(assert (=> b!3324648 (= e!2067639 Nil!36633)))

(declare-fun b!3324649 () Bool)

(declare-fun e!2067640 () List!36757)

(assert (=> b!3324649 (= e!2067639 e!2067640)))

(declare-fun c!564756 () Bool)

(assert (=> b!3324649 (= c!564756 ((_ is Leaf!17297) (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3324650 () Bool)

(assert (=> b!3324650 (= e!2067640 (list!13185 (xs!14162 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(declare-fun d!934777 () Bool)

(declare-fun c!564755 () Bool)

(assert (=> d!934777 (= c!564755 ((_ is Empty!11024) (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (=> d!934777 (= (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) e!2067639)))

(declare-fun b!3324651 () Bool)

(assert (=> b!3324651 (= e!2067640 (++!8897 (list!13181 (left!28548 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) (list!13181 (right!28878 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (= (and d!934777 c!564755) b!3324648))

(assert (= (and d!934777 (not c!564755)) b!3324649))

(assert (= (and b!3324649 c!564756) b!3324650))

(assert (= (and b!3324649 (not c!564756)) b!3324651))

(declare-fun m!3664277 () Bool)

(assert (=> b!3324650 m!3664277))

(declare-fun m!3664279 () Bool)

(assert (=> b!3324651 m!3664279))

(declare-fun m!3664281 () Bool)

(assert (=> b!3324651 m!3664281))

(assert (=> b!3324651 m!3664279))

(assert (=> b!3324651 m!3664281))

(declare-fun m!3664287 () Bool)

(assert (=> b!3324651 m!3664287))

(assert (=> b!3324202 d!934777))

(declare-fun b!3324658 () Bool)

(declare-fun res!1348577 () Bool)

(declare-fun e!2067644 () Bool)

(assert (=> b!3324658 (=> (not res!1348577) (not e!2067644))))

(declare-fun lt!1129746 () List!36755)

(assert (=> b!3324658 (= res!1348577 (= (size!27691 lt!1129746) (+ (size!27691 lt!1129562) (size!27691 (++!8895 lt!1129558 lt!1129573)))))))

(declare-fun b!3324659 () Bool)

(assert (=> b!3324659 (= e!2067644 (or (not (= (++!8895 lt!1129558 lt!1129573) Nil!36631)) (= lt!1129746 lt!1129562)))))

(declare-fun e!2067643 () List!36755)

(declare-fun b!3324657 () Bool)

(assert (=> b!3324657 (= e!2067643 (Cons!36631 (h!42051 lt!1129562) (++!8895 (t!256358 lt!1129562) (++!8895 lt!1129558 lt!1129573))))))

(declare-fun b!3324656 () Bool)

(assert (=> b!3324656 (= e!2067643 (++!8895 lt!1129558 lt!1129573))))

(declare-fun d!934781 () Bool)

(assert (=> d!934781 e!2067644))

(declare-fun res!1348576 () Bool)

(assert (=> d!934781 (=> (not res!1348576) (not e!2067644))))

(assert (=> d!934781 (= res!1348576 (= (content!4998 lt!1129746) ((_ map or) (content!4998 lt!1129562) (content!4998 (++!8895 lt!1129558 lt!1129573)))))))

(assert (=> d!934781 (= lt!1129746 e!2067643)))

(declare-fun c!564759 () Bool)

(assert (=> d!934781 (= c!564759 ((_ is Nil!36631) lt!1129562))))

(assert (=> d!934781 (= (++!8895 lt!1129562 (++!8895 lt!1129558 lt!1129573)) lt!1129746)))

(assert (= (and d!934781 c!564759) b!3324656))

(assert (= (and d!934781 (not c!564759)) b!3324657))

(assert (= (and d!934781 res!1348576) b!3324658))

(assert (= (and b!3324658 res!1348577) b!3324659))

(declare-fun m!3664293 () Bool)

(assert (=> b!3324658 m!3664293))

(declare-fun m!3664295 () Bool)

(assert (=> b!3324658 m!3664295))

(assert (=> b!3324658 m!3663635))

(declare-fun m!3664297 () Bool)

(assert (=> b!3324658 m!3664297))

(assert (=> b!3324657 m!3663635))

(declare-fun m!3664299 () Bool)

(assert (=> b!3324657 m!3664299))

(declare-fun m!3664301 () Bool)

(assert (=> d!934781 m!3664301))

(declare-fun m!3664303 () Bool)

(assert (=> d!934781 m!3664303))

(assert (=> d!934781 m!3663635))

(declare-fun m!3664305 () Bool)

(assert (=> d!934781 m!3664305))

(assert (=> b!3324186 d!934781))

(declare-fun b!3324660 () Bool)

(declare-fun e!2067647 () tuple2!36134)

(declare-fun lt!1129747 () Option!7308)

(declare-fun lt!1129749 () tuple2!36134)

(assert (=> b!3324660 (= e!2067647 (tuple2!36135 (Cons!36633 (_1!21203 (v!36171 lt!1129747)) (_1!21201 lt!1129749)) (_2!21201 lt!1129749)))))

(assert (=> b!3324660 (= lt!1129749 (lexList!1372 thiss!18206 rules!2135 (_2!21203 (v!36171 lt!1129747))))))

(declare-fun b!3324661 () Bool)

(declare-fun e!2067645 () Bool)

(declare-fun lt!1129748 () tuple2!36134)

(assert (=> b!3324661 (= e!2067645 (not (isEmpty!20794 (_1!21201 lt!1129748))))))

(declare-fun b!3324662 () Bool)

(declare-fun e!2067646 () Bool)

(assert (=> b!3324662 (= e!2067646 (= (_2!21201 lt!1129748) lt!1129583))))

(declare-fun d!934785 () Bool)

(assert (=> d!934785 e!2067646))

(declare-fun c!564761 () Bool)

(assert (=> d!934785 (= c!564761 (> (size!27692 (_1!21201 lt!1129748)) 0))))

(assert (=> d!934785 (= lt!1129748 e!2067647)))

(declare-fun c!564760 () Bool)

(assert (=> d!934785 (= c!564760 ((_ is Some!7307) lt!1129747))))

(assert (=> d!934785 (= lt!1129747 (maxPrefix!2519 thiss!18206 rules!2135 lt!1129583))))

(assert (=> d!934785 (= (lexList!1372 thiss!18206 rules!2135 lt!1129583) lt!1129748)))

(declare-fun b!3324663 () Bool)

(assert (=> b!3324663 (= e!2067647 (tuple2!36135 Nil!36633 lt!1129583))))

(declare-fun b!3324664 () Bool)

(assert (=> b!3324664 (= e!2067646 e!2067645)))

(declare-fun res!1348578 () Bool)

(assert (=> b!3324664 (= res!1348578 (< (size!27691 (_2!21201 lt!1129748)) (size!27691 lt!1129583)))))

(assert (=> b!3324664 (=> (not res!1348578) (not e!2067645))))

(assert (= (and d!934785 c!564760) b!3324660))

(assert (= (and d!934785 (not c!564760)) b!3324663))

(assert (= (and d!934785 c!564761) b!3324664))

(assert (= (and d!934785 (not c!564761)) b!3324662))

(assert (= (and b!3324664 res!1348578) b!3324661))

(declare-fun m!3664307 () Bool)

(assert (=> b!3324660 m!3664307))

(declare-fun m!3664309 () Bool)

(assert (=> b!3324661 m!3664309))

(declare-fun m!3664311 () Bool)

(assert (=> d!934785 m!3664311))

(declare-fun m!3664315 () Bool)

(assert (=> d!934785 m!3664315))

(declare-fun m!3664317 () Bool)

(assert (=> b!3324664 m!3664317))

(declare-fun m!3664319 () Bool)

(assert (=> b!3324664 m!3664319))

(assert (=> b!3324186 d!934785))

(declare-fun d!934789 () Bool)

(assert (=> d!934789 (isSuffix!877 lt!1129569 (++!8895 lt!1129580 lt!1129569))))

(declare-fun lt!1129752 () Unit!51643)

(declare-fun choose!19259 (List!36755 List!36755) Unit!51643)

(assert (=> d!934789 (= lt!1129752 (choose!19259 lt!1129580 lt!1129569))))

(assert (=> d!934789 (= (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1129580 lt!1129569) lt!1129752)))

(declare-fun bs!550799 () Bool)

(assert (= bs!550799 d!934789))

(assert (=> bs!550799 m!3663583))

(assert (=> bs!550799 m!3663583))

(assert (=> bs!550799 m!3663591))

(declare-fun m!3664321 () Bool)

(assert (=> bs!550799 m!3664321))

(assert (=> b!3324186 d!934789))

(declare-fun d!934791 () Bool)

(assert (=> d!934791 (= (list!13177 (BalanceConc!21663 Empty!11024)) (list!13181 (c!564522 (BalanceConc!21663 Empty!11024))))))

(declare-fun bs!550800 () Bool)

(assert (= bs!550800 d!934791))

(declare-fun m!3664323 () Bool)

(assert (=> bs!550800 m!3664323))

(assert (=> b!3324186 d!934791))

(declare-fun b!3324667 () Bool)

(declare-fun res!1348580 () Bool)

(declare-fun e!2067649 () Bool)

(assert (=> b!3324667 (=> (not res!1348580) (not e!2067649))))

(declare-fun lt!1129753 () List!36755)

(assert (=> b!3324667 (= res!1348580 (= (size!27691 lt!1129753) (+ (size!27691 lt!1129558) (size!27691 lt!1129573))))))

(declare-fun b!3324668 () Bool)

(assert (=> b!3324668 (= e!2067649 (or (not (= lt!1129573 Nil!36631)) (= lt!1129753 lt!1129558)))))

(declare-fun b!3324666 () Bool)

(declare-fun e!2067648 () List!36755)

(assert (=> b!3324666 (= e!2067648 (Cons!36631 (h!42051 lt!1129558) (++!8895 (t!256358 lt!1129558) lt!1129573)))))

(declare-fun b!3324665 () Bool)

(assert (=> b!3324665 (= e!2067648 lt!1129573)))

(declare-fun d!934793 () Bool)

(assert (=> d!934793 e!2067649))

(declare-fun res!1348579 () Bool)

(assert (=> d!934793 (=> (not res!1348579) (not e!2067649))))

(assert (=> d!934793 (= res!1348579 (= (content!4998 lt!1129753) ((_ map or) (content!4998 lt!1129558) (content!4998 lt!1129573))))))

(assert (=> d!934793 (= lt!1129753 e!2067648)))

(declare-fun c!564762 () Bool)

(assert (=> d!934793 (= c!564762 ((_ is Nil!36631) lt!1129558))))

(assert (=> d!934793 (= (++!8895 lt!1129558 lt!1129573) lt!1129753)))

(assert (= (and d!934793 c!564762) b!3324665))

(assert (= (and d!934793 (not c!564762)) b!3324666))

(assert (= (and d!934793 res!1348579) b!3324667))

(assert (= (and b!3324667 res!1348580) b!3324668))

(declare-fun m!3664325 () Bool)

(assert (=> b!3324667 m!3664325))

(declare-fun m!3664327 () Bool)

(assert (=> b!3324667 m!3664327))

(declare-fun m!3664329 () Bool)

(assert (=> b!3324667 m!3664329))

(declare-fun m!3664331 () Bool)

(assert (=> b!3324666 m!3664331))

(declare-fun m!3664333 () Bool)

(assert (=> d!934793 m!3664333))

(declare-fun m!3664335 () Bool)

(assert (=> d!934793 m!3664335))

(declare-fun m!3664337 () Bool)

(assert (=> d!934793 m!3664337))

(assert (=> b!3324186 d!934793))

(declare-fun d!934795 () Bool)

(assert (=> d!934795 (= (list!13180 (_2!21205 (v!36173 lt!1129568))) (list!13184 (c!564521 (_2!21205 (v!36173 lt!1129568)))))))

(declare-fun bs!550801 () Bool)

(assert (= bs!550801 d!934795))

(declare-fun m!3664339 () Bool)

(assert (=> bs!550801 m!3664339))

(assert (=> b!3324186 d!934795))

(declare-fun d!934797 () Bool)

(declare-fun lt!1129754 () BalanceConc!21660)

(assert (=> d!934797 (= (list!13180 lt!1129754) (originalCharacters!6038 (_1!21205 (v!36173 lt!1129568))))))

(assert (=> d!934797 (= lt!1129754 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568))))) (value!172194 (_1!21205 (v!36173 lt!1129568)))))))

(assert (=> d!934797 (= (charsOf!3338 (_1!21205 (v!36173 lt!1129568))) lt!1129754)))

(declare-fun b_lambda!93771 () Bool)

(assert (=> (not b_lambda!93771) (not d!934797)))

(declare-fun t!256502 () Bool)

(declare-fun tb!174019 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256502) tb!174019))

(declare-fun b!3324681 () Bool)

(declare-fun e!2067654 () Bool)

(declare-fun tp!1038641 () Bool)

(assert (=> b!3324681 (= e!2067654 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568))))) (value!172194 (_1!21205 (v!36173 lt!1129568)))))) tp!1038641))))

(declare-fun result!217076 () Bool)

(assert (=> tb!174019 (= result!217076 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568))))) (value!172194 (_1!21205 (v!36173 lt!1129568))))) e!2067654))))

(assert (= tb!174019 b!3324681))

(declare-fun m!3664341 () Bool)

(assert (=> b!3324681 m!3664341))

(declare-fun m!3664343 () Bool)

(assert (=> tb!174019 m!3664343))

(assert (=> d!934797 t!256502))

(declare-fun b_and!229065 () Bool)

(assert (= b_and!229051 (and (=> t!256502 result!217076) b_and!229065)))

(declare-fun t!256504 () Bool)

(declare-fun tb!174021 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256504) tb!174021))

(declare-fun result!217078 () Bool)

(assert (= result!217078 result!217076))

(assert (=> d!934797 t!256504))

(declare-fun b_and!229067 () Bool)

(assert (= b_and!229055 (and (=> t!256504 result!217078) b_and!229067)))

(declare-fun tb!174023 () Bool)

(declare-fun t!256506 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256506) tb!174023))

(declare-fun result!217080 () Bool)

(assert (= result!217080 result!217076))

(assert (=> d!934797 t!256506))

(declare-fun b_and!229069 () Bool)

(assert (= b_and!229061 (and (=> t!256506 result!217080) b_and!229069)))

(declare-fun tb!174025 () Bool)

(declare-fun t!256508 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256508) tb!174025))

(declare-fun result!217082 () Bool)

(assert (= result!217082 result!217076))

(assert (=> d!934797 t!256508))

(declare-fun b_and!229071 () Bool)

(assert (= b_and!229057 (and (=> t!256508 result!217082) b_and!229071)))

(declare-fun t!256510 () Bool)

(declare-fun tb!174027 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256510) tb!174027))

(declare-fun result!217084 () Bool)

(assert (= result!217084 result!217076))

(assert (=> d!934797 t!256510))

(declare-fun b_and!229073 () Bool)

(assert (= b_and!229063 (and (=> t!256510 result!217084) b_and!229073)))

(declare-fun t!256512 () Bool)

(declare-fun tb!174029 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256512) tb!174029))

(declare-fun result!217086 () Bool)

(assert (= result!217086 result!217076))

(assert (=> d!934797 t!256512))

(declare-fun b_and!229075 () Bool)

(assert (= b_and!229059 (and (=> t!256512 result!217086) b_and!229075)))

(declare-fun tb!174031 () Bool)

(declare-fun t!256514 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256514) tb!174031))

(declare-fun result!217088 () Bool)

(assert (= result!217088 result!217076))

(assert (=> d!934797 t!256514))

(declare-fun b_and!229077 () Bool)

(assert (= b_and!229053 (and (=> t!256514 result!217088) b_and!229077)))

(declare-fun m!3664345 () Bool)

(assert (=> d!934797 m!3664345))

(declare-fun m!3664347 () Bool)

(assert (=> d!934797 m!3664347))

(assert (=> b!3324186 d!934797))

(declare-fun d!934799 () Bool)

(assert (=> d!934799 (= (list!13180 lt!1129587) (list!13184 (c!564521 lt!1129587)))))

(declare-fun bs!550802 () Bool)

(assert (= bs!550802 d!934799))

(declare-fun m!3664349 () Bool)

(assert (=> bs!550802 m!3664349))

(assert (=> b!3324186 d!934799))

(declare-fun b!3324778 () Bool)

(declare-fun e!2067706 () tuple2!36130)

(declare-fun lt!1129805 () tuple2!36130)

(declare-fun lt!1129803 () Option!7310)

(assert (=> b!3324778 (= e!2067706 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129805) (_1!21205 (v!36173 lt!1129803))) (_2!21199 lt!1129805)))))

(assert (=> b!3324778 (= lt!1129805 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129803))))))

(declare-fun b!3324779 () Bool)

(declare-fun res!1348648 () Bool)

(declare-fun e!2067705 () Bool)

(assert (=> b!3324779 (=> (not res!1348648) (not e!2067705))))

(declare-fun lt!1129804 () tuple2!36130)

(assert (=> b!3324779 (= res!1348648 (= (list!13177 (_1!21199 lt!1129804)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun d!934801 () Bool)

(assert (=> d!934801 e!2067705))

(declare-fun res!1348649 () Bool)

(assert (=> d!934801 (=> (not res!1348649) (not e!2067705))))

(declare-fun e!2067708 () Bool)

(assert (=> d!934801 (= res!1348649 e!2067708)))

(declare-fun c!564782 () Bool)

(assert (=> d!934801 (= c!564782 (> (size!27690 (_1!21199 lt!1129804)) 0))))

(assert (=> d!934801 (= lt!1129804 e!2067706)))

(declare-fun c!564783 () Bool)

(assert (=> d!934801 (= c!564783 ((_ is Some!7309) lt!1129803))))

(assert (=> d!934801 (= lt!1129803 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!934801 (= (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) lt!1129804)))

(declare-fun b!3324780 () Bool)

(assert (=> b!3324780 (= e!2067708 (= (list!13180 (_2!21199 lt!1129804)) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun b!3324781 () Bool)

(assert (=> b!3324781 (= e!2067706 (tuple2!36131 (BalanceConc!21663 Empty!11024) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun b!3324782 () Bool)

(assert (=> b!3324782 (= e!2067705 (= (list!13180 (_2!21199 lt!1129804)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun b!3324783 () Bool)

(declare-fun e!2067707 () Bool)

(assert (=> b!3324783 (= e!2067707 (not (isEmpty!20789 (_1!21199 lt!1129804))))))

(declare-fun b!3324784 () Bool)

(assert (=> b!3324784 (= e!2067708 e!2067707)))

(declare-fun res!1348650 () Bool)

(assert (=> b!3324784 (= res!1348650 (< (size!27693 (_2!21199 lt!1129804)) (size!27693 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> b!3324784 (=> (not res!1348650) (not e!2067707))))

(assert (= (and d!934801 c!564783) b!3324778))

(assert (= (and d!934801 (not c!564783)) b!3324781))

(assert (= (and d!934801 c!564782) b!3324784))

(assert (= (and d!934801 (not c!564782)) b!3324780))

(assert (= (and b!3324784 res!1348650) b!3324783))

(assert (= (and d!934801 res!1348649) b!3324779))

(assert (= (and b!3324779 res!1348648) b!3324782))

(declare-fun m!3664501 () Bool)

(assert (=> d!934801 m!3664501))

(assert (=> d!934801 m!3662617))

(assert (=> d!934801 m!3663633))

(declare-fun m!3664505 () Bool)

(assert (=> b!3324779 m!3664505))

(assert (=> b!3324779 m!3662617))

(assert (=> b!3324779 m!3662803))

(assert (=> b!3324779 m!3662803))

(assert (=> b!3324779 m!3662805))

(declare-fun m!3664507 () Bool)

(assert (=> b!3324778 m!3664507))

(declare-fun m!3664509 () Bool)

(assert (=> b!3324778 m!3664509))

(declare-fun m!3664513 () Bool)

(assert (=> b!3324780 m!3664513))

(assert (=> b!3324780 m!3662617))

(assert (=> b!3324780 m!3662803))

(declare-fun m!3664515 () Bool)

(assert (=> b!3324783 m!3664515))

(declare-fun m!3664517 () Bool)

(assert (=> b!3324784 m!3664517))

(assert (=> b!3324784 m!3662617))

(assert (=> b!3324784 m!3662815))

(assert (=> b!3324782 m!3664513))

(assert (=> b!3324782 m!3662617))

(assert (=> b!3324782 m!3662803))

(assert (=> b!3324782 m!3662803))

(assert (=> b!3324782 m!3662805))

(assert (=> b!3324186 d!934801))

(declare-fun e!2067713 () List!36757)

(declare-fun b!3324793 () Bool)

(assert (=> b!3324793 (= e!2067713 (Cons!36633 (h!42053 (++!8897 lt!1129584 lt!1129576)) (++!8897 (t!256360 (++!8897 lt!1129584 lt!1129576)) lt!1129560)))))

(declare-fun d!934867 () Bool)

(declare-fun e!2067714 () Bool)

(assert (=> d!934867 e!2067714))

(declare-fun res!1348655 () Bool)

(assert (=> d!934867 (=> (not res!1348655) (not e!2067714))))

(declare-fun lt!1129809 () List!36757)

(assert (=> d!934867 (= res!1348655 (= (content!4997 lt!1129809) ((_ map or) (content!4997 (++!8897 lt!1129584 lt!1129576)) (content!4997 lt!1129560))))))

(assert (=> d!934867 (= lt!1129809 e!2067713)))

(declare-fun c!564786 () Bool)

(assert (=> d!934867 (= c!564786 ((_ is Nil!36633) (++!8897 lt!1129584 lt!1129576)))))

(assert (=> d!934867 (= (++!8897 (++!8897 lt!1129584 lt!1129576) lt!1129560) lt!1129809)))

(declare-fun b!3324794 () Bool)

(declare-fun res!1348654 () Bool)

(assert (=> b!3324794 (=> (not res!1348654) (not e!2067714))))

(assert (=> b!3324794 (= res!1348654 (= (size!27692 lt!1129809) (+ (size!27692 (++!8897 lt!1129584 lt!1129576)) (size!27692 lt!1129560))))))

(declare-fun b!3324792 () Bool)

(assert (=> b!3324792 (= e!2067713 lt!1129560)))

(declare-fun b!3324795 () Bool)

(assert (=> b!3324795 (= e!2067714 (or (not (= lt!1129560 Nil!36633)) (= lt!1129809 (++!8897 lt!1129584 lt!1129576))))))

(assert (= (and d!934867 c!564786) b!3324792))

(assert (= (and d!934867 (not c!564786)) b!3324793))

(assert (= (and d!934867 res!1348655) b!3324794))

(assert (= (and b!3324794 res!1348654) b!3324795))

(declare-fun m!3664519 () Bool)

(assert (=> b!3324793 m!3664519))

(declare-fun m!3664521 () Bool)

(assert (=> d!934867 m!3664521))

(assert (=> d!934867 m!3663587))

(declare-fun m!3664523 () Bool)

(assert (=> d!934867 m!3664523))

(declare-fun m!3664525 () Bool)

(assert (=> d!934867 m!3664525))

(declare-fun m!3664527 () Bool)

(assert (=> b!3324794 m!3664527))

(assert (=> b!3324794 m!3663587))

(declare-fun m!3664529 () Bool)

(assert (=> b!3324794 m!3664529))

(declare-fun m!3664531 () Bool)

(assert (=> b!3324794 m!3664531))

(assert (=> b!3324186 d!934867))

(declare-fun b!3324798 () Bool)

(declare-fun res!1348657 () Bool)

(declare-fun e!2067716 () Bool)

(assert (=> b!3324798 (=> (not res!1348657) (not e!2067716))))

(declare-fun lt!1129810 () List!36755)

(assert (=> b!3324798 (= res!1348657 (= (size!27691 lt!1129810) (+ (size!27691 (list!13180 (BalanceConc!21661 Empty!11023))) (size!27691 (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))))

(declare-fun b!3324799 () Bool)

(assert (=> b!3324799 (= e!2067716 (or (not (= (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))) Nil!36631)) (= lt!1129810 (list!13180 (BalanceConc!21661 Empty!11023)))))))

(declare-fun b!3324797 () Bool)

(declare-fun e!2067715 () List!36755)

(assert (=> b!3324797 (= e!2067715 (Cons!36631 (h!42051 (list!13180 (BalanceConc!21661 Empty!11023))) (++!8895 (t!256358 (list!13180 (BalanceConc!21661 Empty!11023))) (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))

(declare-fun b!3324796 () Bool)

(assert (=> b!3324796 (= e!2067715 (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun d!934869 () Bool)

(assert (=> d!934869 e!2067716))

(declare-fun res!1348656 () Bool)

(assert (=> d!934869 (=> (not res!1348656) (not e!2067716))))

(assert (=> d!934869 (= res!1348656 (= (content!4998 lt!1129810) ((_ map or) (content!4998 (list!13180 (BalanceConc!21661 Empty!11023))) (content!4998 (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))))

(assert (=> d!934869 (= lt!1129810 e!2067715)))

(declare-fun c!564787 () Bool)

(assert (=> d!934869 (= c!564787 ((_ is Nil!36631) (list!13180 (BalanceConc!21661 Empty!11023))))))

(assert (=> d!934869 (= (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))) lt!1129810)))

(assert (= (and d!934869 c!564787) b!3324796))

(assert (= (and d!934869 (not c!564787)) b!3324797))

(assert (= (and d!934869 res!1348656) b!3324798))

(assert (= (and b!3324798 res!1348657) b!3324799))

(declare-fun m!3664555 () Bool)

(assert (=> b!3324798 m!3664555))

(assert (=> b!3324798 m!3663359))

(declare-fun m!3664557 () Bool)

(assert (=> b!3324798 m!3664557))

(assert (=> b!3324798 m!3663623))

(declare-fun m!3664559 () Bool)

(assert (=> b!3324798 m!3664559))

(assert (=> b!3324797 m!3663623))

(declare-fun m!3664561 () Bool)

(assert (=> b!3324797 m!3664561))

(declare-fun m!3664563 () Bool)

(assert (=> d!934869 m!3664563))

(assert (=> d!934869 m!3663359))

(declare-fun m!3664565 () Bool)

(assert (=> d!934869 m!3664565))

(assert (=> d!934869 m!3663623))

(declare-fun m!3664567 () Bool)

(assert (=> d!934869 m!3664567))

(assert (=> b!3324186 d!934869))

(declare-fun b!3324800 () Bool)

(declare-fun e!2067718 () tuple2!36130)

(declare-fun lt!1129813 () tuple2!36130)

(declare-fun lt!1129811 () Option!7310)

(assert (=> b!3324800 (= e!2067718 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129813) (_1!21205 (v!36173 lt!1129811))) (_2!21199 lt!1129813)))))

(assert (=> b!3324800 (= lt!1129813 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129811))))))

(declare-fun b!3324801 () Bool)

(declare-fun res!1348658 () Bool)

(declare-fun e!2067717 () Bool)

(assert (=> b!3324801 (=> (not res!1348658) (not e!2067717))))

(declare-fun lt!1129812 () tuple2!36130)

(assert (=> b!3324801 (= res!1348658 (= (list!13177 (_1!21199 lt!1129812)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))))

(declare-fun d!934873 () Bool)

(assert (=> d!934873 e!2067717))

(declare-fun res!1348659 () Bool)

(assert (=> d!934873 (=> (not res!1348659) (not e!2067717))))

(declare-fun e!2067720 () Bool)

(assert (=> d!934873 (= res!1348659 e!2067720)))

(declare-fun c!564788 () Bool)

(assert (=> d!934873 (= c!564788 (> (size!27690 (_1!21199 lt!1129812)) 0))))

(assert (=> d!934873 (= lt!1129812 e!2067718)))

(declare-fun c!564789 () Bool)

(assert (=> d!934873 (= c!564789 ((_ is Some!7309) lt!1129811))))

(assert (=> d!934873 (= lt!1129811 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))

(assert (=> d!934873 (= (lexRec!715 thiss!18206 rules!2135 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))) lt!1129812)))

(declare-fun b!3324802 () Bool)

(assert (=> b!3324802 (= e!2067720 (= (list!13180 (_2!21199 lt!1129812)) (list!13180 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))

(declare-fun b!3324803 () Bool)

(assert (=> b!3324803 (= e!2067718 (tuple2!36131 (BalanceConc!21663 Empty!11024) (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))

(declare-fun b!3324804 () Bool)

(assert (=> b!3324804 (= e!2067717 (= (list!13180 (_2!21199 lt!1129812)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))))

(declare-fun b!3324805 () Bool)

(declare-fun e!2067719 () Bool)

(assert (=> b!3324805 (= e!2067719 (not (isEmpty!20789 (_1!21199 lt!1129812))))))

(declare-fun b!3324806 () Bool)

(assert (=> b!3324806 (= e!2067720 e!2067719)))

(declare-fun res!1348660 () Bool)

(assert (=> b!3324806 (= res!1348660 (< (size!27693 (_2!21199 lt!1129812)) (size!27693 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))

(assert (=> b!3324806 (=> (not res!1348660) (not e!2067719))))

(assert (= (and d!934873 c!564789) b!3324800))

(assert (= (and d!934873 (not c!564789)) b!3324803))

(assert (= (and d!934873 c!564788) b!3324806))

(assert (= (and d!934873 (not c!564788)) b!3324802))

(assert (= (and b!3324806 res!1348660) b!3324805))

(assert (= (and d!934873 res!1348659) b!3324801))

(assert (= (and b!3324801 res!1348658) b!3324804))

(declare-fun m!3664569 () Bool)

(assert (=> d!934873 m!3664569))

(assert (=> d!934873 m!3663605))

(declare-fun m!3664571 () Bool)

(assert (=> d!934873 m!3664571))

(declare-fun m!3664573 () Bool)

(assert (=> b!3324801 m!3664573))

(assert (=> b!3324801 m!3663605))

(declare-fun m!3664575 () Bool)

(assert (=> b!3324801 m!3664575))

(assert (=> b!3324801 m!3664575))

(declare-fun m!3664577 () Bool)

(assert (=> b!3324801 m!3664577))

(declare-fun m!3664579 () Bool)

(assert (=> b!3324800 m!3664579))

(declare-fun m!3664581 () Bool)

(assert (=> b!3324800 m!3664581))

(declare-fun m!3664583 () Bool)

(assert (=> b!3324802 m!3664583))

(assert (=> b!3324802 m!3663605))

(assert (=> b!3324802 m!3664575))

(declare-fun m!3664585 () Bool)

(assert (=> b!3324805 m!3664585))

(declare-fun m!3664587 () Bool)

(assert (=> b!3324806 m!3664587))

(assert (=> b!3324806 m!3663605))

(declare-fun m!3664589 () Bool)

(assert (=> b!3324806 m!3664589))

(assert (=> b!3324804 m!3664583))

(assert (=> b!3324804 m!3663605))

(assert (=> b!3324804 m!3664575))

(assert (=> b!3324804 m!3664575))

(assert (=> b!3324804 m!3664577))

(assert (=> b!3324186 d!934873))

(declare-fun d!934875 () Bool)

(assert (=> d!934875 (= (lexList!1372 thiss!18206 rules!2135 lt!1129583) (tuple2!36135 lt!1129556 Nil!36631))))

(declare-fun lt!1129833 () Unit!51643)

(declare-fun choose!19261 (LexerInterface!4913 List!36756 List!36755 List!36755 List!36757 List!36757 List!36755) Unit!51643)

(assert (=> d!934875 (= lt!1129833 (choose!19261 thiss!18206 rules!2135 lt!1129583 lt!1129581 lt!1129556 (list!13177 (_1!21199 lt!1129571)) (list!13180 (_2!21199 lt!1129571))))))

(assert (=> d!934875 (not (isEmpty!20783 rules!2135))))

(assert (=> d!934875 (= (lemmaLexThenLexPrefix!480 thiss!18206 rules!2135 lt!1129583 lt!1129581 lt!1129556 (list!13177 (_1!21199 lt!1129571)) (list!13180 (_2!21199 lt!1129571))) lt!1129833)))

(declare-fun bs!550829 () Bool)

(assert (= bs!550829 d!934875))

(assert (=> bs!550829 m!3663579))

(assert (=> bs!550829 m!3663597))

(assert (=> bs!550829 m!3663599))

(declare-fun m!3664713 () Bool)

(assert (=> bs!550829 m!3664713))

(assert (=> bs!550829 m!3662601))

(assert (=> b!3324186 d!934875))

(declare-fun b!3324847 () Bool)

(declare-fun e!2067745 () List!36757)

(assert (=> b!3324847 (= e!2067745 (Cons!36633 (h!42053 lt!1129584) (++!8897 (t!256360 lt!1129584) (++!8897 lt!1129576 lt!1129560))))))

(declare-fun d!934919 () Bool)

(declare-fun e!2067746 () Bool)

(assert (=> d!934919 e!2067746))

(declare-fun res!1348676 () Bool)

(assert (=> d!934919 (=> (not res!1348676) (not e!2067746))))

(declare-fun lt!1129834 () List!36757)

(assert (=> d!934919 (= res!1348676 (= (content!4997 lt!1129834) ((_ map or) (content!4997 lt!1129584) (content!4997 (++!8897 lt!1129576 lt!1129560)))))))

(assert (=> d!934919 (= lt!1129834 e!2067745)))

(declare-fun c!564803 () Bool)

(assert (=> d!934919 (= c!564803 ((_ is Nil!36633) lt!1129584))))

(assert (=> d!934919 (= (++!8897 lt!1129584 (++!8897 lt!1129576 lt!1129560)) lt!1129834)))

(declare-fun b!3324848 () Bool)

(declare-fun res!1348675 () Bool)

(assert (=> b!3324848 (=> (not res!1348675) (not e!2067746))))

(assert (=> b!3324848 (= res!1348675 (= (size!27692 lt!1129834) (+ (size!27692 lt!1129584) (size!27692 (++!8897 lt!1129576 lt!1129560)))))))

(declare-fun b!3324846 () Bool)

(assert (=> b!3324846 (= e!2067745 (++!8897 lt!1129576 lt!1129560))))

(declare-fun b!3324849 () Bool)

(assert (=> b!3324849 (= e!2067746 (or (not (= (++!8897 lt!1129576 lt!1129560) Nil!36633)) (= lt!1129834 lt!1129584)))))

(assert (= (and d!934919 c!564803) b!3324846))

(assert (= (and d!934919 (not c!564803)) b!3324847))

(assert (= (and d!934919 res!1348676) b!3324848))

(assert (= (and b!3324848 res!1348675) b!3324849))

(assert (=> b!3324847 m!3663585))

(declare-fun m!3664715 () Bool)

(assert (=> b!3324847 m!3664715))

(declare-fun m!3664717 () Bool)

(assert (=> d!934919 m!3664717))

(declare-fun m!3664719 () Bool)

(assert (=> d!934919 m!3664719))

(assert (=> d!934919 m!3663585))

(declare-fun m!3664721 () Bool)

(assert (=> d!934919 m!3664721))

(declare-fun m!3664723 () Bool)

(assert (=> b!3324848 m!3664723))

(declare-fun m!3664725 () Bool)

(assert (=> b!3324848 m!3664725))

(assert (=> b!3324848 m!3663585))

(declare-fun m!3664727 () Bool)

(assert (=> b!3324848 m!3664727))

(assert (=> b!3324186 d!934919))

(declare-fun b!3324850 () Bool)

(declare-fun e!2067748 () tuple2!36130)

(declare-fun lt!1129837 () tuple2!36130)

(declare-fun lt!1129835 () Option!7310)

(assert (=> b!3324850 (= e!2067748 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129837) (_1!21205 (v!36173 lt!1129835))) (_2!21199 lt!1129837)))))

(assert (=> b!3324850 (= lt!1129837 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129835))))))

(declare-fun b!3324851 () Bool)

(declare-fun res!1348677 () Bool)

(declare-fun e!2067747 () Bool)

(assert (=> b!3324851 (=> (not res!1348677) (not e!2067747))))

(declare-fun lt!1129836 () tuple2!36130)

(assert (=> b!3324851 (= res!1348677 (= (list!13177 (_1!21199 lt!1129836)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (_2!21205 (v!36173 lt!1129568)))))))))

(declare-fun d!934921 () Bool)

(assert (=> d!934921 e!2067747))

(declare-fun res!1348678 () Bool)

(assert (=> d!934921 (=> (not res!1348678) (not e!2067747))))

(declare-fun e!2067750 () Bool)

(assert (=> d!934921 (= res!1348678 e!2067750)))

(declare-fun c!564804 () Bool)

(assert (=> d!934921 (= c!564804 (> (size!27690 (_1!21199 lt!1129836)) 0))))

(assert (=> d!934921 (= lt!1129836 e!2067748)))

(declare-fun c!564805 () Bool)

(assert (=> d!934921 (= c!564805 ((_ is Some!7309) lt!1129835))))

(assert (=> d!934921 (= lt!1129835 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129568))))))

(assert (=> d!934921 (= (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129568))) lt!1129836)))

(declare-fun b!3324852 () Bool)

(assert (=> b!3324852 (= e!2067750 (= (list!13180 (_2!21199 lt!1129836)) (list!13180 (_2!21205 (v!36173 lt!1129568)))))))

(declare-fun b!3324853 () Bool)

(assert (=> b!3324853 (= e!2067748 (tuple2!36131 (BalanceConc!21663 Empty!11024) (_2!21205 (v!36173 lt!1129568))))))

(declare-fun b!3324854 () Bool)

(assert (=> b!3324854 (= e!2067747 (= (list!13180 (_2!21199 lt!1129836)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (_2!21205 (v!36173 lt!1129568)))))))))

(declare-fun b!3324855 () Bool)

(declare-fun e!2067749 () Bool)

(assert (=> b!3324855 (= e!2067749 (not (isEmpty!20789 (_1!21199 lt!1129836))))))

(declare-fun b!3324856 () Bool)

(assert (=> b!3324856 (= e!2067750 e!2067749)))

(declare-fun res!1348679 () Bool)

(assert (=> b!3324856 (= res!1348679 (< (size!27693 (_2!21199 lt!1129836)) (size!27693 (_2!21205 (v!36173 lt!1129568)))))))

(assert (=> b!3324856 (=> (not res!1348679) (not e!2067749))))

(assert (= (and d!934921 c!564805) b!3324850))

(assert (= (and d!934921 (not c!564805)) b!3324853))

(assert (= (and d!934921 c!564804) b!3324856))

(assert (= (and d!934921 (not c!564804)) b!3324852))

(assert (= (and b!3324856 res!1348679) b!3324855))

(assert (= (and d!934921 res!1348678) b!3324851))

(assert (= (and b!3324851 res!1348677) b!3324854))

(declare-fun m!3664729 () Bool)

(assert (=> d!934921 m!3664729))

(declare-fun m!3664731 () Bool)

(assert (=> d!934921 m!3664731))

(declare-fun m!3664733 () Bool)

(assert (=> b!3324851 m!3664733))

(assert (=> b!3324851 m!3663589))

(assert (=> b!3324851 m!3663589))

(declare-fun m!3664735 () Bool)

(assert (=> b!3324851 m!3664735))

(declare-fun m!3664737 () Bool)

(assert (=> b!3324850 m!3664737))

(declare-fun m!3664739 () Bool)

(assert (=> b!3324850 m!3664739))

(declare-fun m!3664741 () Bool)

(assert (=> b!3324852 m!3664741))

(assert (=> b!3324852 m!3663589))

(declare-fun m!3664743 () Bool)

(assert (=> b!3324855 m!3664743))

(declare-fun m!3664745 () Bool)

(assert (=> b!3324856 m!3664745))

(declare-fun m!3664747 () Bool)

(assert (=> b!3324856 m!3664747))

(assert (=> b!3324854 m!3664741))

(assert (=> b!3324854 m!3663589))

(assert (=> b!3324854 m!3663589))

(assert (=> b!3324854 m!3664735))

(assert (=> b!3324186 d!934921))

(declare-fun b!3324859 () Bool)

(declare-fun res!1348681 () Bool)

(declare-fun e!2067752 () Bool)

(assert (=> b!3324859 (=> (not res!1348681) (not e!2067752))))

(declare-fun lt!1129838 () List!36755)

(assert (=> b!3324859 (= res!1348681 (= (size!27691 lt!1129838) (+ (size!27691 lt!1129580) (size!27691 lt!1129569))))))

(declare-fun b!3324860 () Bool)

(assert (=> b!3324860 (= e!2067752 (or (not (= lt!1129569 Nil!36631)) (= lt!1129838 lt!1129580)))))

(declare-fun b!3324858 () Bool)

(declare-fun e!2067751 () List!36755)

(assert (=> b!3324858 (= e!2067751 (Cons!36631 (h!42051 lt!1129580) (++!8895 (t!256358 lt!1129580) lt!1129569)))))

(declare-fun b!3324857 () Bool)

(assert (=> b!3324857 (= e!2067751 lt!1129569)))

(declare-fun d!934923 () Bool)

(assert (=> d!934923 e!2067752))

(declare-fun res!1348680 () Bool)

(assert (=> d!934923 (=> (not res!1348680) (not e!2067752))))

(assert (=> d!934923 (= res!1348680 (= (content!4998 lt!1129838) ((_ map or) (content!4998 lt!1129580) (content!4998 lt!1129569))))))

(assert (=> d!934923 (= lt!1129838 e!2067751)))

(declare-fun c!564806 () Bool)

(assert (=> d!934923 (= c!564806 ((_ is Nil!36631) lt!1129580))))

(assert (=> d!934923 (= (++!8895 lt!1129580 lt!1129569) lt!1129838)))

(assert (= (and d!934923 c!564806) b!3324857))

(assert (= (and d!934923 (not c!564806)) b!3324858))

(assert (= (and d!934923 res!1348680) b!3324859))

(assert (= (and b!3324859 res!1348681) b!3324860))

(declare-fun m!3664749 () Bool)

(assert (=> b!3324859 m!3664749))

(declare-fun m!3664751 () Bool)

(assert (=> b!3324859 m!3664751))

(declare-fun m!3664753 () Bool)

(assert (=> b!3324859 m!3664753))

(declare-fun m!3664755 () Bool)

(assert (=> b!3324858 m!3664755))

(declare-fun m!3664757 () Bool)

(assert (=> d!934923 m!3664757))

(declare-fun m!3664759 () Bool)

(assert (=> d!934923 m!3664759))

(declare-fun m!3664761 () Bool)

(assert (=> d!934923 m!3664761))

(assert (=> b!3324186 d!934923))

(declare-fun d!934925 () Bool)

(assert (=> d!934925 (= (list!13177 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568)))) (list!13181 (c!564522 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568))))))))

(declare-fun bs!550830 () Bool)

(assert (= bs!550830 d!934925))

(declare-fun m!3664763 () Bool)

(assert (=> bs!550830 m!3664763))

(assert (=> b!3324186 d!934925))

(declare-fun b!3324863 () Bool)

(declare-fun res!1348685 () Bool)

(declare-fun e!2067756 () Bool)

(assert (=> b!3324863 (=> (not res!1348685) (not e!2067756))))

(declare-fun lt!1129839 () List!36755)

(assert (=> b!3324863 (= res!1348685 (= (size!27691 lt!1129839) (+ (size!27691 (++!8895 lt!1129562 lt!1129558)) (size!27691 lt!1129573))))))

(declare-fun b!3324864 () Bool)

(assert (=> b!3324864 (= e!2067756 (or (not (= lt!1129573 Nil!36631)) (= lt!1129839 (++!8895 lt!1129562 lt!1129558))))))

(declare-fun b!3324862 () Bool)

(declare-fun e!2067755 () List!36755)

(assert (=> b!3324862 (= e!2067755 (Cons!36631 (h!42051 (++!8895 lt!1129562 lt!1129558)) (++!8895 (t!256358 (++!8895 lt!1129562 lt!1129558)) lt!1129573)))))

(declare-fun b!3324861 () Bool)

(assert (=> b!3324861 (= e!2067755 lt!1129573)))

(declare-fun d!934927 () Bool)

(assert (=> d!934927 e!2067756))

(declare-fun res!1348684 () Bool)

(assert (=> d!934927 (=> (not res!1348684) (not e!2067756))))

(assert (=> d!934927 (= res!1348684 (= (content!4998 lt!1129839) ((_ map or) (content!4998 (++!8895 lt!1129562 lt!1129558)) (content!4998 lt!1129573))))))

(assert (=> d!934927 (= lt!1129839 e!2067755)))

(declare-fun c!564809 () Bool)

(assert (=> d!934927 (= c!564809 ((_ is Nil!36631) (++!8895 lt!1129562 lt!1129558)))))

(assert (=> d!934927 (= (++!8895 (++!8895 lt!1129562 lt!1129558) lt!1129573) lt!1129839)))

(assert (= (and d!934927 c!564809) b!3324861))

(assert (= (and d!934927 (not c!564809)) b!3324862))

(assert (= (and d!934927 res!1348684) b!3324863))

(assert (= (and b!3324863 res!1348685) b!3324864))

(declare-fun m!3664765 () Bool)

(assert (=> b!3324863 m!3664765))

(assert (=> b!3324863 m!3663619))

(declare-fun m!3664767 () Bool)

(assert (=> b!3324863 m!3664767))

(assert (=> b!3324863 m!3664329))

(declare-fun m!3664769 () Bool)

(assert (=> b!3324862 m!3664769))

(declare-fun m!3664771 () Bool)

(assert (=> d!934927 m!3664771))

(assert (=> d!934927 m!3663619))

(declare-fun m!3664773 () Bool)

(assert (=> d!934927 m!3664773))

(assert (=> d!934927 m!3664337))

(assert (=> b!3324186 d!934927))

(declare-fun d!934929 () Bool)

(declare-fun e!2067764 () Bool)

(assert (=> d!934929 e!2067764))

(declare-fun res!1348689 () Bool)

(assert (=> d!934929 (=> res!1348689 e!2067764)))

(declare-fun lt!1129842 () Bool)

(assert (=> d!934929 (= res!1348689 (not lt!1129842))))

(declare-fun drop!1923 (List!36755 Int) List!36755)

(assert (=> d!934929 (= lt!1129842 (= lt!1129569 (drop!1923 (++!8895 lt!1129580 lt!1129569) (- (size!27691 (++!8895 lt!1129580 lt!1129569)) (size!27691 lt!1129569)))))))

(assert (=> d!934929 (= (isSuffix!877 lt!1129569 (++!8895 lt!1129580 lt!1129569)) lt!1129842)))

(declare-fun b!3324876 () Bool)

(assert (=> b!3324876 (= e!2067764 (>= (size!27691 (++!8895 lt!1129580 lt!1129569)) (size!27691 lt!1129569)))))

(assert (= (and d!934929 (not res!1348689)) b!3324876))

(assert (=> d!934929 m!3663583))

(declare-fun m!3664775 () Bool)

(assert (=> d!934929 m!3664775))

(assert (=> d!934929 m!3664753))

(assert (=> d!934929 m!3663583))

(declare-fun m!3664777 () Bool)

(assert (=> d!934929 m!3664777))

(assert (=> b!3324876 m!3663583))

(assert (=> b!3324876 m!3664775))

(assert (=> b!3324876 m!3664753))

(assert (=> b!3324186 d!934929))

(declare-fun b!3324911 () Bool)

(declare-fun e!2067794 () Option!7310)

(declare-fun call!241332 () Option!7310)

(assert (=> b!3324911 (= e!2067794 call!241332)))

(declare-fun e!2067791 () Bool)

(declare-fun lt!1129879 () Option!7310)

(declare-fun b!3324912 () Bool)

(declare-fun get!11676 (Option!7310) tuple2!36142)

(declare-fun get!11677 (Option!7308) tuple2!36138)

(assert (=> b!3324912 (= e!2067791 (= (list!13180 (_2!21205 (get!11676 lt!1129879))) (_2!21203 (get!11677 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 lt!1129572))))))))

(declare-fun bm!241327 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!513 (LexerInterface!4913 Rule!10448 BalanceConc!21660) Option!7310)

(assert (=> bm!241327 (= call!241332 (maxPrefixOneRuleZipperSequence!513 thiss!18206 (h!42052 rules!2135) lt!1129572))))

(declare-fun b!3324913 () Bool)

(declare-fun res!1348716 () Bool)

(declare-fun e!2067795 () Bool)

(assert (=> b!3324913 (=> (not res!1348716) (not e!2067795))))

(declare-fun e!2067796 () Bool)

(assert (=> b!3324913 (= res!1348716 e!2067796)))

(declare-fun res!1348714 () Bool)

(assert (=> b!3324913 (=> res!1348714 e!2067796)))

(declare-fun isDefined!5657 (Option!7310) Bool)

(assert (=> b!3324913 (= res!1348714 (not (isDefined!5657 lt!1129879)))))

(declare-fun d!934931 () Bool)

(assert (=> d!934931 e!2067795))

(declare-fun res!1348715 () Bool)

(assert (=> d!934931 (=> (not res!1348715) (not e!2067795))))

(declare-fun isDefined!5658 (Option!7308) Bool)

(declare-fun maxPrefixZipper!499 (LexerInterface!4913 List!36756 List!36755) Option!7308)

(assert (=> d!934931 (= res!1348715 (= (isDefined!5657 lt!1129879) (isDefined!5658 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 lt!1129572)))))))

(assert (=> d!934931 (= lt!1129879 e!2067794)))

(declare-fun c!564816 () Bool)

(assert (=> d!934931 (= c!564816 (and ((_ is Cons!36632) rules!2135) ((_ is Nil!36632) (t!256359 rules!2135))))))

(declare-fun lt!1129876 () Unit!51643)

(declare-fun lt!1129878 () Unit!51643)

(assert (=> d!934931 (= lt!1129876 lt!1129878)))

(declare-fun lt!1129877 () List!36755)

(declare-fun lt!1129875 () List!36755)

(declare-fun isPrefix!2812 (List!36755 List!36755) Bool)

(assert (=> d!934931 (isPrefix!2812 lt!1129877 lt!1129875)))

(declare-fun lemmaIsPrefixRefl!1771 (List!36755 List!36755) Unit!51643)

(assert (=> d!934931 (= lt!1129878 (lemmaIsPrefixRefl!1771 lt!1129877 lt!1129875))))

(assert (=> d!934931 (= lt!1129875 (list!13180 lt!1129572))))

(assert (=> d!934931 (= lt!1129877 (list!13180 lt!1129572))))

(assert (=> d!934931 (rulesValidInductive!1817 thiss!18206 rules!2135)))

(assert (=> d!934931 (= (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 lt!1129572) lt!1129879)))

(declare-fun b!3324914 () Bool)

(declare-fun e!2067793 () Bool)

(assert (=> b!3324914 (= e!2067793 e!2067791)))

(declare-fun res!1348719 () Bool)

(assert (=> b!3324914 (=> (not res!1348719) (not e!2067791))))

(assert (=> b!3324914 (= res!1348719 (= (_1!21205 (get!11676 lt!1129879)) (_1!21203 (get!11677 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 lt!1129572))))))))

(declare-fun b!3324915 () Bool)

(assert (=> b!3324915 (= e!2067795 e!2067793)))

(declare-fun res!1348717 () Bool)

(assert (=> b!3324915 (=> res!1348717 e!2067793)))

(assert (=> b!3324915 (= res!1348717 (not (isDefined!5657 lt!1129879)))))

(declare-fun b!3324916 () Bool)

(declare-fun lt!1129874 () Option!7310)

(declare-fun lt!1129880 () Option!7310)

(assert (=> b!3324916 (= e!2067794 (ite (and ((_ is None!7309) lt!1129874) ((_ is None!7309) lt!1129880)) None!7309 (ite ((_ is None!7309) lt!1129880) lt!1129874 (ite ((_ is None!7309) lt!1129874) lt!1129880 (ite (>= (size!27685 (_1!21205 (v!36173 lt!1129874))) (size!27685 (_1!21205 (v!36173 lt!1129880)))) lt!1129874 lt!1129880)))))))

(assert (=> b!3324916 (= lt!1129874 call!241332)))

(assert (=> b!3324916 (= lt!1129880 (maxPrefixZipperSequence!1108 thiss!18206 (t!256359 rules!2135) lt!1129572))))

(declare-fun b!3324917 () Bool)

(declare-fun e!2067792 () Bool)

(assert (=> b!3324917 (= e!2067792 (= (list!13180 (_2!21205 (get!11676 lt!1129879))) (_2!21203 (get!11677 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 lt!1129572))))))))

(declare-fun b!3324918 () Bool)

(assert (=> b!3324918 (= e!2067796 e!2067792)))

(declare-fun res!1348718 () Bool)

(assert (=> b!3324918 (=> (not res!1348718) (not e!2067792))))

(assert (=> b!3324918 (= res!1348718 (= (_1!21205 (get!11676 lt!1129879)) (_1!21203 (get!11677 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 lt!1129572))))))))

(assert (= (and d!934931 c!564816) b!3324911))

(assert (= (and d!934931 (not c!564816)) b!3324916))

(assert (= (or b!3324911 b!3324916) bm!241327))

(assert (= (and d!934931 res!1348715) b!3324913))

(assert (= (and b!3324913 (not res!1348714)) b!3324918))

(assert (= (and b!3324918 res!1348718) b!3324917))

(assert (= (and b!3324913 res!1348716) b!3324915))

(assert (= (and b!3324915 (not res!1348717)) b!3324914))

(assert (= (and b!3324914 res!1348719) b!3324912))

(declare-fun m!3664785 () Bool)

(assert (=> b!3324918 m!3664785))

(declare-fun m!3664787 () Bool)

(assert (=> b!3324918 m!3664787))

(assert (=> b!3324918 m!3664787))

(declare-fun m!3664789 () Bool)

(assert (=> b!3324918 m!3664789))

(assert (=> b!3324918 m!3664789))

(declare-fun m!3664791 () Bool)

(assert (=> b!3324918 m!3664791))

(assert (=> d!934931 m!3664787))

(assert (=> d!934931 m!3664789))

(declare-fun m!3664793 () Bool)

(assert (=> d!934931 m!3664793))

(declare-fun m!3664795 () Bool)

(assert (=> d!934931 m!3664795))

(assert (=> d!934931 m!3664789))

(declare-fun m!3664797 () Bool)

(assert (=> d!934931 m!3664797))

(assert (=> d!934931 m!3663401))

(declare-fun m!3664799 () Bool)

(assert (=> d!934931 m!3664799))

(assert (=> d!934931 m!3664787))

(assert (=> b!3324915 m!3664793))

(assert (=> b!3324913 m!3664793))

(declare-fun m!3664801 () Bool)

(assert (=> bm!241327 m!3664801))

(assert (=> b!3324917 m!3664789))

(assert (=> b!3324917 m!3664791))

(assert (=> b!3324917 m!3664785))

(assert (=> b!3324917 m!3664787))

(assert (=> b!3324917 m!3664789))

(assert (=> b!3324917 m!3664787))

(declare-fun m!3664803 () Bool)

(assert (=> b!3324917 m!3664803))

(declare-fun m!3664805 () Bool)

(assert (=> b!3324916 m!3664805))

(assert (=> b!3324912 m!3664785))

(declare-fun m!3664807 () Bool)

(assert (=> b!3324912 m!3664807))

(declare-fun m!3664809 () Bool)

(assert (=> b!3324912 m!3664809))

(assert (=> b!3324912 m!3664787))

(assert (=> b!3324912 m!3664803))

(assert (=> b!3324912 m!3664787))

(assert (=> b!3324912 m!3664807))

(assert (=> b!3324914 m!3664785))

(assert (=> b!3324914 m!3664787))

(assert (=> b!3324914 m!3664787))

(assert (=> b!3324914 m!3664807))

(assert (=> b!3324914 m!3664807))

(assert (=> b!3324914 m!3664809))

(assert (=> b!3324186 d!934931))

(declare-fun d!934937 () Bool)

(assert (=> d!934937 (= (++!8897 (++!8897 lt!1129584 lt!1129576) lt!1129560) (++!8897 lt!1129584 (++!8897 lt!1129576 lt!1129560)))))

(declare-fun lt!1129890 () Unit!51643)

(declare-fun choose!19263 (List!36757 List!36757 List!36757) Unit!51643)

(assert (=> d!934937 (= lt!1129890 (choose!19263 lt!1129584 lt!1129576 lt!1129560))))

(assert (=> d!934937 (= (lemmaConcatAssociativity!1848 lt!1129584 lt!1129576 lt!1129560) lt!1129890)))

(declare-fun bs!550832 () Bool)

(assert (= bs!550832 d!934937))

(declare-fun m!3664811 () Bool)

(assert (=> bs!550832 m!3664811))

(assert (=> bs!550832 m!3663587))

(assert (=> bs!550832 m!3663629))

(assert (=> bs!550832 m!3663585))

(assert (=> bs!550832 m!3663585))

(assert (=> bs!550832 m!3663607))

(assert (=> bs!550832 m!3663587))

(assert (=> b!3324186 d!934937))

(declare-fun lt!1129910 () tuple2!36130)

(declare-fun lt!1129905 () Option!7310)

(declare-fun b!3324927 () Bool)

(assert (=> b!3324927 (= lt!1129910 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129905))))))

(declare-fun e!2067806 () tuple2!36130)

(assert (=> b!3324927 (= e!2067806 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129910) (_1!21205 (v!36173 lt!1129905))) (_2!21199 lt!1129910)))))

(declare-fun b!3324928 () Bool)

(declare-fun e!2067803 () tuple2!36130)

(assert (=> b!3324928 (= e!2067803 (tuple2!36131 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568))) (_2!21205 (v!36173 lt!1129568))))))

(declare-fun lt!1129903 () Option!7310)

(declare-fun b!3324929 () Bool)

(declare-fun lt!1129922 () BalanceConc!21660)

(assert (=> b!3324929 (= e!2067803 (lexTailRecV2!982 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) lt!1129922 (_2!21205 (v!36173 lt!1129903)) (append!907 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568))) (_1!21205 (v!36173 lt!1129903)))))))

(declare-fun lt!1129906 () tuple2!36130)

(assert (=> b!3324929 (= lt!1129906 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129903))))))

(declare-fun lt!1129897 () List!36755)

(assert (=> b!3324929 (= lt!1129897 (list!13180 lt!1129587))))

(declare-fun lt!1129893 () List!36755)

(assert (=> b!3324929 (= lt!1129893 (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129903)))))))

(declare-fun lt!1129908 () List!36755)

(assert (=> b!3324929 (= lt!1129908 (list!13180 (_2!21205 (v!36173 lt!1129903))))))

(declare-fun lt!1129900 () Unit!51643)

(assert (=> b!3324929 (= lt!1129900 (lemmaConcatAssociativity!1847 lt!1129897 lt!1129893 lt!1129908))))

(assert (=> b!3324929 (= (++!8895 (++!8895 lt!1129897 lt!1129893) lt!1129908) (++!8895 lt!1129897 (++!8895 lt!1129893 lt!1129908)))))

(declare-fun lt!1129909 () Unit!51643)

(assert (=> b!3324929 (= lt!1129909 lt!1129900)))

(declare-fun lt!1129898 () Option!7310)

(assert (=> b!3324929 (= lt!1129898 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129568))))))

(declare-fun c!564819 () Bool)

(assert (=> b!3324929 (= c!564819 ((_ is Some!7309) lt!1129898))))

(declare-fun e!2067805 () tuple2!36130)

(assert (=> b!3324929 (= (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129568))) e!2067805)))

(declare-fun lt!1129896 () Unit!51643)

(declare-fun Unit!51648 () Unit!51643)

(assert (=> b!3324929 (= lt!1129896 Unit!51648)))

(declare-fun lt!1129919 () List!36757)

(assert (=> b!3324929 (= lt!1129919 (list!13177 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun lt!1129911 () List!36757)

(assert (=> b!3324929 (= lt!1129911 (Cons!36633 (_1!21205 (v!36173 lt!1129903)) Nil!36633))))

(declare-fun lt!1129895 () List!36757)

(assert (=> b!3324929 (= lt!1129895 (list!13177 (_1!21199 lt!1129906)))))

(declare-fun lt!1129914 () Unit!51643)

(assert (=> b!3324929 (= lt!1129914 (lemmaConcatAssociativity!1848 lt!1129919 lt!1129911 lt!1129895))))

(assert (=> b!3324929 (= (++!8897 (++!8897 lt!1129919 lt!1129911) lt!1129895) (++!8897 lt!1129919 (++!8897 lt!1129911 lt!1129895)))))

(declare-fun lt!1129894 () Unit!51643)

(assert (=> b!3324929 (= lt!1129894 lt!1129914)))

(declare-fun lt!1129918 () List!36755)

(assert (=> b!3324929 (= lt!1129918 (++!8895 (list!13180 lt!1129587) (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129903))))))))

(declare-fun lt!1129916 () List!36755)

(assert (=> b!3324929 (= lt!1129916 (list!13180 (_2!21205 (v!36173 lt!1129903))))))

(declare-fun lt!1129891 () List!36757)

(assert (=> b!3324929 (= lt!1129891 (list!13177 (append!907 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568))) (_1!21205 (v!36173 lt!1129903)))))))

(declare-fun lt!1129920 () Unit!51643)

(assert (=> b!3324929 (= lt!1129920 (lemmaLexThenLexPrefix!480 thiss!18206 rules!2135 lt!1129918 lt!1129916 lt!1129891 (list!13177 (_1!21199 lt!1129906)) (list!13180 (_2!21199 lt!1129906))))))

(assert (=> b!3324929 (= (lexList!1372 thiss!18206 rules!2135 lt!1129918) (tuple2!36135 lt!1129891 Nil!36631))))

(declare-fun lt!1129902 () Unit!51643)

(assert (=> b!3324929 (= lt!1129902 lt!1129920)))

(declare-fun lt!1129907 () BalanceConc!21660)

(assert (=> b!3324929 (= lt!1129907 (++!8896 lt!1129587 (charsOf!3338 (_1!21205 (v!36173 lt!1129903)))))))

(assert (=> b!3324929 (= lt!1129905 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 lt!1129907))))

(declare-fun c!564820 () Bool)

(assert (=> b!3324929 (= c!564820 ((_ is Some!7309) lt!1129905))))

(assert (=> b!3324929 (= (lexRec!715 thiss!18206 rules!2135 (++!8896 lt!1129587 (charsOf!3338 (_1!21205 (v!36173 lt!1129903))))) e!2067806)))

(declare-fun lt!1129892 () Unit!51643)

(declare-fun Unit!51649 () Unit!51643)

(assert (=> b!3324929 (= lt!1129892 Unit!51649)))

(assert (=> b!3324929 (= lt!1129922 (++!8896 lt!1129587 (charsOf!3338 (_1!21205 (v!36173 lt!1129903)))))))

(declare-fun lt!1129915 () List!36755)

(assert (=> b!3324929 (= lt!1129915 (list!13180 lt!1129922))))

(declare-fun lt!1129904 () List!36755)

(assert (=> b!3324929 (= lt!1129904 (list!13180 (_2!21205 (v!36173 lt!1129903))))))

(declare-fun lt!1129913 () Unit!51643)

(assert (=> b!3324929 (= lt!1129913 (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1129915 lt!1129904))))

(assert (=> b!3324929 (isSuffix!877 lt!1129904 (++!8895 lt!1129915 lt!1129904))))

(declare-fun lt!1129921 () Unit!51643)

(assert (=> b!3324929 (= lt!1129921 lt!1129913)))

(declare-fun b!3324930 () Bool)

(assert (=> b!3324930 (= e!2067806 (tuple2!36131 (BalanceConc!21663 Empty!11024) lt!1129907))))

(declare-fun b!3324931 () Bool)

(assert (=> b!3324931 (= e!2067805 (tuple2!36131 (BalanceConc!21663 Empty!11024) (_2!21205 (v!36173 lt!1129568))))))

(declare-fun d!934939 () Bool)

(declare-fun e!2067804 () Bool)

(assert (=> d!934939 e!2067804))

(declare-fun res!1348726 () Bool)

(assert (=> d!934939 (=> (not res!1348726) (not e!2067804))))

(declare-fun lt!1129923 () tuple2!36130)

(assert (=> d!934939 (= res!1348726 (= (list!13177 (_1!21199 lt!1129923)) (list!13177 (_1!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!934939 (= lt!1129923 e!2067803)))

(declare-fun c!564818 () Bool)

(assert (=> d!934939 (= c!564818 ((_ is Some!7309) lt!1129903))))

(assert (=> d!934939 (= lt!1129903 (maxPrefixZipperSequenceV2!502 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129568)) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun lt!1129901 () Unit!51643)

(declare-fun lt!1129924 () Unit!51643)

(assert (=> d!934939 (= lt!1129901 lt!1129924)))

(declare-fun lt!1129912 () List!36755)

(declare-fun lt!1129899 () List!36755)

(assert (=> d!934939 (isSuffix!877 lt!1129912 (++!8895 lt!1129899 lt!1129912))))

(assert (=> d!934939 (= lt!1129924 (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1129899 lt!1129912))))

(assert (=> d!934939 (= lt!1129912 (list!13180 (_2!21205 (v!36173 lt!1129568))))))

(assert (=> d!934939 (= lt!1129899 (list!13180 lt!1129587))))

(assert (=> d!934939 (= (lexTailRecV2!982 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) lt!1129587 (_2!21205 (v!36173 lt!1129568)) (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568)))) lt!1129923)))

(declare-fun b!3324932 () Bool)

(assert (=> b!3324932 (= e!2067804 (= (list!13180 (_2!21199 lt!1129923)) (list!13180 (_2!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun b!3324933 () Bool)

(declare-fun lt!1129917 () tuple2!36130)

(assert (=> b!3324933 (= lt!1129917 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129898))))))

(assert (=> b!3324933 (= e!2067805 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129917) (_1!21205 (v!36173 lt!1129898))) (_2!21199 lt!1129917)))))

(assert (= (and d!934939 c!564818) b!3324929))

(assert (= (and d!934939 (not c!564818)) b!3324928))

(assert (= (and b!3324929 c!564819) b!3324933))

(assert (= (and b!3324929 (not c!564819)) b!3324931))

(assert (= (and b!3324929 c!564820) b!3324927))

(assert (= (and b!3324929 (not c!564820)) b!3324930))

(assert (= (and d!934939 res!1348726) b!3324932))

(declare-fun m!3664835 () Bool)

(assert (=> b!3324927 m!3664835))

(declare-fun m!3664837 () Bool)

(assert (=> b!3324927 m!3664837))

(declare-fun m!3664839 () Bool)

(assert (=> b!3324933 m!3664839))

(declare-fun m!3664841 () Bool)

(assert (=> b!3324933 m!3664841))

(assert (=> b!3324929 m!3662617))

(declare-fun m!3664843 () Bool)

(assert (=> b!3324929 m!3664843))

(declare-fun m!3664845 () Bool)

(assert (=> b!3324929 m!3664845))

(declare-fun m!3664847 () Bool)

(assert (=> b!3324929 m!3664847))

(declare-fun m!3664849 () Bool)

(assert (=> b!3324929 m!3664849))

(declare-fun m!3664851 () Bool)

(assert (=> b!3324929 m!3664851))

(declare-fun m!3664853 () Bool)

(assert (=> b!3324929 m!3664853))

(declare-fun m!3664855 () Bool)

(assert (=> b!3324929 m!3664855))

(declare-fun m!3664857 () Bool)

(assert (=> b!3324929 m!3664857))

(assert (=> b!3324929 m!3664851))

(declare-fun m!3664859 () Bool)

(assert (=> b!3324929 m!3664859))

(declare-fun m!3664861 () Bool)

(assert (=> b!3324929 m!3664861))

(declare-fun m!3664863 () Bool)

(assert (=> b!3324929 m!3664863))

(declare-fun m!3664865 () Bool)

(assert (=> b!3324929 m!3664865))

(declare-fun m!3664867 () Bool)

(assert (=> b!3324929 m!3664867))

(declare-fun m!3664869 () Bool)

(assert (=> b!3324929 m!3664869))

(declare-fun m!3664871 () Bool)

(assert (=> b!3324929 m!3664871))

(declare-fun m!3664873 () Bool)

(assert (=> b!3324929 m!3664873))

(assert (=> b!3324929 m!3664853))

(declare-fun m!3664875 () Bool)

(assert (=> b!3324929 m!3664875))

(declare-fun m!3664877 () Bool)

(assert (=> b!3324929 m!3664877))

(assert (=> b!3324929 m!3663575))

(assert (=> b!3324929 m!3663613))

(assert (=> b!3324929 m!3663575))

(assert (=> b!3324929 m!3664843))

(assert (=> b!3324929 m!3664843))

(declare-fun m!3664879 () Bool)

(assert (=> b!3324929 m!3664879))

(assert (=> b!3324929 m!3664873))

(declare-fun m!3664881 () Bool)

(assert (=> b!3324929 m!3664881))

(declare-fun m!3664883 () Bool)

(assert (=> b!3324929 m!3664883))

(assert (=> b!3324929 m!3664867))

(declare-fun m!3664885 () Bool)

(assert (=> b!3324929 m!3664885))

(declare-fun m!3664887 () Bool)

(assert (=> b!3324929 m!3664887))

(assert (=> b!3324929 m!3663617))

(assert (=> b!3324929 m!3663617))

(declare-fun m!3664889 () Bool)

(assert (=> b!3324929 m!3664889))

(declare-fun m!3664891 () Bool)

(assert (=> b!3324929 m!3664891))

(assert (=> b!3324929 m!3664871))

(assert (=> b!3324929 m!3664885))

(declare-fun m!3664893 () Bool)

(assert (=> b!3324929 m!3664893))

(assert (=> b!3324929 m!3664855))

(declare-fun m!3664895 () Bool)

(assert (=> b!3324929 m!3664895))

(assert (=> b!3324929 m!3663593))

(assert (=> b!3324929 m!3664731))

(assert (=> b!3324929 m!3664871))

(assert (=> b!3324929 m!3664889))

(assert (=> b!3324929 m!3664865))

(declare-fun m!3664897 () Bool)

(assert (=> b!3324929 m!3664897))

(declare-fun m!3664899 () Bool)

(assert (=> b!3324929 m!3664899))

(assert (=> b!3324929 m!3664897))

(declare-fun m!3664901 () Bool)

(assert (=> b!3324932 m!3664901))

(assert (=> b!3324932 m!3662617))

(assert (=> b!3324932 m!3663631))

(assert (=> b!3324932 m!3663641))

(declare-fun m!3664903 () Bool)

(assert (=> d!934939 m!3664903))

(declare-fun m!3664905 () Bool)

(assert (=> d!934939 m!3664905))

(assert (=> d!934939 m!3662617))

(assert (=> d!934939 m!3663631))

(assert (=> d!934939 m!3663647))

(assert (=> d!934939 m!3663589))

(assert (=> d!934939 m!3663617))

(declare-fun m!3664907 () Bool)

(assert (=> d!934939 m!3664907))

(declare-fun m!3664909 () Bool)

(assert (=> d!934939 m!3664909))

(assert (=> d!934939 m!3664907))

(assert (=> d!934939 m!3662617))

(declare-fun m!3664911 () Bool)

(assert (=> d!934939 m!3664911))

(assert (=> b!3324186 d!934939))

(declare-fun d!934943 () Bool)

(declare-fun e!2067811 () Bool)

(assert (=> d!934943 e!2067811))

(declare-fun res!1348733 () Bool)

(assert (=> d!934943 (=> (not res!1348733) (not e!2067811))))

(assert (=> d!934943 (= res!1348733 (appendAssocInst!768 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))

(declare-fun lt!1129927 () BalanceConc!21660)

(assert (=> d!934943 (= lt!1129927 (BalanceConc!21661 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))

(assert (=> d!934943 (= (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))) lt!1129927)))

(declare-fun b!3324943 () Bool)

(declare-fun res!1348734 () Bool)

(assert (=> b!3324943 (=> (not res!1348734) (not e!2067811))))

(assert (=> b!3324943 (= res!1348734 (<= (height!1626 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))) (+ (max!0 (height!1626 (c!564521 (BalanceConc!21661 Empty!11023))) (height!1626 (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))) 1)))))

(declare-fun b!3324944 () Bool)

(declare-fun res!1348732 () Bool)

(assert (=> b!3324944 (=> (not res!1348732) (not e!2067811))))

(assert (=> b!3324944 (= res!1348732 (>= (height!1626 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))) (max!0 (height!1626 (c!564521 (BalanceConc!21661 Empty!11023))) (height!1626 (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))))

(declare-fun b!3324945 () Bool)

(assert (=> b!3324945 (= e!2067811 (= (list!13180 lt!1129927) (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))

(declare-fun b!3324942 () Bool)

(declare-fun res!1348731 () Bool)

(assert (=> b!3324942 (=> (not res!1348731) (not e!2067811))))

(assert (=> b!3324942 (= res!1348731 (isBalanced!3307 (++!8898 (c!564521 (BalanceConc!21661 Empty!11023)) (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))))))))

(assert (= (and d!934943 res!1348733) b!3324942))

(assert (= (and b!3324942 res!1348731) b!3324943))

(assert (= (and b!3324943 res!1348734) b!3324944))

(assert (= (and b!3324944 res!1348732) b!3324945))

(declare-fun m!3664927 () Bool)

(assert (=> b!3324944 m!3664927))

(declare-fun m!3664929 () Bool)

(assert (=> b!3324944 m!3664929))

(assert (=> b!3324944 m!3663947))

(assert (=> b!3324944 m!3663947))

(assert (=> b!3324944 m!3664929))

(declare-fun m!3664933 () Bool)

(assert (=> b!3324944 m!3664933))

(assert (=> b!3324944 m!3664927))

(declare-fun m!3664935 () Bool)

(assert (=> b!3324944 m!3664935))

(declare-fun m!3664937 () Bool)

(assert (=> b!3324945 m!3664937))

(assert (=> b!3324945 m!3663359))

(assert (=> b!3324945 m!3663603))

(assert (=> b!3324945 m!3663623))

(assert (=> b!3324945 m!3663359))

(assert (=> b!3324945 m!3663623))

(assert (=> b!3324945 m!3663625))

(assert (=> b!3324943 m!3664927))

(assert (=> b!3324943 m!3664929))

(assert (=> b!3324943 m!3663947))

(assert (=> b!3324943 m!3663947))

(assert (=> b!3324943 m!3664929))

(assert (=> b!3324943 m!3664933))

(assert (=> b!3324943 m!3664927))

(assert (=> b!3324943 m!3664935))

(assert (=> b!3324942 m!3664927))

(assert (=> b!3324942 m!3664927))

(declare-fun m!3664941 () Bool)

(assert (=> b!3324942 m!3664941))

(declare-fun m!3664943 () Bool)

(assert (=> d!934943 m!3664943))

(assert (=> d!934943 m!3664927))

(assert (=> b!3324186 d!934943))

(assert (=> b!3324186 d!934623))

(declare-fun d!934951 () Bool)

(declare-fun e!2067823 () Bool)

(assert (=> d!934951 e!2067823))

(declare-fun res!1348744 () Bool)

(assert (=> d!934951 (=> (not res!1348744) (not e!2067823))))

(declare-fun append!908 (Conc!11024 Token!10014) Conc!11024)

(assert (=> d!934951 (= res!1348744 (isBalanced!3305 (append!908 (c!564522 (BalanceConc!21663 Empty!11024)) (_1!21205 (v!36173 lt!1129568)))))))

(declare-fun lt!1129934 () BalanceConc!21662)

(assert (=> d!934951 (= lt!1129934 (BalanceConc!21663 (append!908 (c!564522 (BalanceConc!21663 Empty!11024)) (_1!21205 (v!36173 lt!1129568)))))))

(assert (=> d!934951 (= (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1129568))) lt!1129934)))

(declare-fun b!3324961 () Bool)

(declare-fun $colon+!230 (List!36757 Token!10014) List!36757)

(assert (=> b!3324961 (= e!2067823 (= (list!13177 lt!1129934) ($colon+!230 (list!13177 (BalanceConc!21663 Empty!11024)) (_1!21205 (v!36173 lt!1129568)))))))

(assert (= (and d!934951 res!1348744) b!3324961))

(declare-fun m!3664961 () Bool)

(assert (=> d!934951 m!3664961))

(assert (=> d!934951 m!3664961))

(declare-fun m!3664963 () Bool)

(assert (=> d!934951 m!3664963))

(declare-fun m!3664965 () Bool)

(assert (=> b!3324961 m!3664965))

(assert (=> b!3324961 m!3663611))

(assert (=> b!3324961 m!3663611))

(declare-fun m!3664967 () Bool)

(assert (=> b!3324961 m!3664967))

(assert (=> b!3324186 d!934951))

(declare-fun b!3324963 () Bool)

(declare-fun e!2067824 () List!36757)

(assert (=> b!3324963 (= e!2067824 (Cons!36633 (h!42053 lt!1129584) (++!8897 (t!256360 lt!1129584) lt!1129576)))))

(declare-fun d!934965 () Bool)

(declare-fun e!2067825 () Bool)

(assert (=> d!934965 e!2067825))

(declare-fun res!1348746 () Bool)

(assert (=> d!934965 (=> (not res!1348746) (not e!2067825))))

(declare-fun lt!1129935 () List!36757)

(assert (=> d!934965 (= res!1348746 (= (content!4997 lt!1129935) ((_ map or) (content!4997 lt!1129584) (content!4997 lt!1129576))))))

(assert (=> d!934965 (= lt!1129935 e!2067824)))

(declare-fun c!564827 () Bool)

(assert (=> d!934965 (= c!564827 ((_ is Nil!36633) lt!1129584))))

(assert (=> d!934965 (= (++!8897 lt!1129584 lt!1129576) lt!1129935)))

(declare-fun b!3324964 () Bool)

(declare-fun res!1348745 () Bool)

(assert (=> b!3324964 (=> (not res!1348745) (not e!2067825))))

(assert (=> b!3324964 (= res!1348745 (= (size!27692 lt!1129935) (+ (size!27692 lt!1129584) (size!27692 lt!1129576))))))

(declare-fun b!3324962 () Bool)

(assert (=> b!3324962 (= e!2067824 lt!1129576)))

(declare-fun b!3324965 () Bool)

(assert (=> b!3324965 (= e!2067825 (or (not (= lt!1129576 Nil!36633)) (= lt!1129935 lt!1129584)))))

(assert (= (and d!934965 c!564827) b!3324962))

(assert (= (and d!934965 (not c!564827)) b!3324963))

(assert (= (and d!934965 res!1348746) b!3324964))

(assert (= (and b!3324964 res!1348745) b!3324965))

(declare-fun m!3664969 () Bool)

(assert (=> b!3324963 m!3664969))

(declare-fun m!3664971 () Bool)

(assert (=> d!934965 m!3664971))

(assert (=> d!934965 m!3664719))

(declare-fun m!3664973 () Bool)

(assert (=> d!934965 m!3664973))

(declare-fun m!3664975 () Bool)

(assert (=> b!3324964 m!3664975))

(assert (=> b!3324964 m!3664725))

(declare-fun m!3664977 () Bool)

(assert (=> b!3324964 m!3664977))

(assert (=> b!3324186 d!934965))

(declare-fun d!934967 () Bool)

(assert (=> d!934967 (= (list!13180 (_2!21199 lt!1129571)) (list!13184 (c!564521 (_2!21199 lt!1129571))))))

(declare-fun bs!550840 () Bool)

(assert (= bs!550840 d!934967))

(declare-fun m!3664979 () Bool)

(assert (=> bs!550840 m!3664979))

(assert (=> b!3324186 d!934967))

(declare-fun b!3324966 () Bool)

(declare-fun e!2067829 () Option!7310)

(declare-fun call!241334 () Option!7310)

(assert (=> b!3324966 (= e!2067829 call!241334)))

(declare-fun b!3324967 () Bool)

(declare-fun lt!1129941 () Option!7310)

(declare-fun e!2067826 () Bool)

(assert (=> b!3324967 (= e!2067826 (= (list!13180 (_2!21205 (get!11676 lt!1129941))) (_2!21203 (get!11677 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun bm!241329 () Bool)

(assert (=> bm!241329 (= call!241334 (maxPrefixOneRuleZipperSequence!513 thiss!18206 (h!42052 rules!2135) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun b!3324968 () Bool)

(declare-fun res!1348749 () Bool)

(declare-fun e!2067830 () Bool)

(assert (=> b!3324968 (=> (not res!1348749) (not e!2067830))))

(declare-fun e!2067831 () Bool)

(assert (=> b!3324968 (= res!1348749 e!2067831)))

(declare-fun res!1348747 () Bool)

(assert (=> b!3324968 (=> res!1348747 e!2067831)))

(assert (=> b!3324968 (= res!1348747 (not (isDefined!5657 lt!1129941)))))

(declare-fun d!934969 () Bool)

(assert (=> d!934969 e!2067830))

(declare-fun res!1348748 () Bool)

(assert (=> d!934969 (=> (not res!1348748) (not e!2067830))))

(assert (=> d!934969 (= res!1348748 (= (isDefined!5657 lt!1129941) (isDefined!5658 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!934969 (= lt!1129941 e!2067829)))

(declare-fun c!564828 () Bool)

(assert (=> d!934969 (= c!564828 (and ((_ is Cons!36632) rules!2135) ((_ is Nil!36632) (t!256359 rules!2135))))))

(declare-fun lt!1129938 () Unit!51643)

(declare-fun lt!1129940 () Unit!51643)

(assert (=> d!934969 (= lt!1129938 lt!1129940)))

(declare-fun lt!1129939 () List!36755)

(declare-fun lt!1129937 () List!36755)

(assert (=> d!934969 (isPrefix!2812 lt!1129939 lt!1129937)))

(assert (=> d!934969 (= lt!1129940 (lemmaIsPrefixRefl!1771 lt!1129939 lt!1129937))))

(assert (=> d!934969 (= lt!1129937 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!934969 (= lt!1129939 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!934969 (rulesValidInductive!1817 thiss!18206 rules!2135)))

(assert (=> d!934969 (= (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) lt!1129941)))

(declare-fun b!3324969 () Bool)

(declare-fun e!2067828 () Bool)

(assert (=> b!3324969 (= e!2067828 e!2067826)))

(declare-fun res!1348752 () Bool)

(assert (=> b!3324969 (=> (not res!1348752) (not e!2067826))))

(assert (=> b!3324969 (= res!1348752 (= (_1!21205 (get!11676 lt!1129941)) (_1!21203 (get!11677 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3324970 () Bool)

(assert (=> b!3324970 (= e!2067830 e!2067828)))

(declare-fun res!1348750 () Bool)

(assert (=> b!3324970 (=> res!1348750 e!2067828)))

(assert (=> b!3324970 (= res!1348750 (not (isDefined!5657 lt!1129941)))))

(declare-fun b!3324971 () Bool)

(declare-fun lt!1129936 () Option!7310)

(declare-fun lt!1129942 () Option!7310)

(assert (=> b!3324971 (= e!2067829 (ite (and ((_ is None!7309) lt!1129936) ((_ is None!7309) lt!1129942)) None!7309 (ite ((_ is None!7309) lt!1129942) lt!1129936 (ite ((_ is None!7309) lt!1129936) lt!1129942 (ite (>= (size!27685 (_1!21205 (v!36173 lt!1129936))) (size!27685 (_1!21205 (v!36173 lt!1129942)))) lt!1129936 lt!1129942)))))))

(assert (=> b!3324971 (= lt!1129936 call!241334)))

(assert (=> b!3324971 (= lt!1129942 (maxPrefixZipperSequence!1108 thiss!18206 (t!256359 rules!2135) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun b!3324972 () Bool)

(declare-fun e!2067827 () Bool)

(assert (=> b!3324972 (= e!2067827 (= (list!13180 (_2!21205 (get!11676 lt!1129941))) (_2!21203 (get!11677 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3324973 () Bool)

(assert (=> b!3324973 (= e!2067831 e!2067827)))

(declare-fun res!1348751 () Bool)

(assert (=> b!3324973 (=> (not res!1348751) (not e!2067827))))

(assert (=> b!3324973 (= res!1348751 (= (_1!21205 (get!11676 lt!1129941)) (_1!21203 (get!11677 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (= (and d!934969 c!564828) b!3324966))

(assert (= (and d!934969 (not c!564828)) b!3324971))

(assert (= (or b!3324966 b!3324971) bm!241329))

(assert (= (and d!934969 res!1348748) b!3324968))

(assert (= (and b!3324968 (not res!1348747)) b!3324973))

(assert (= (and b!3324973 res!1348751) b!3324972))

(assert (= (and b!3324968 res!1348749) b!3324970))

(assert (= (and b!3324970 (not res!1348750)) b!3324969))

(assert (= (and b!3324969 res!1348752) b!3324967))

(declare-fun m!3664981 () Bool)

(assert (=> b!3324973 m!3664981))

(assert (=> b!3324973 m!3662617))

(assert (=> b!3324973 m!3662803))

(assert (=> b!3324973 m!3662803))

(declare-fun m!3664983 () Bool)

(assert (=> b!3324973 m!3664983))

(assert (=> b!3324973 m!3664983))

(declare-fun m!3664985 () Bool)

(assert (=> b!3324973 m!3664985))

(assert (=> d!934969 m!3662803))

(assert (=> d!934969 m!3664983))

(declare-fun m!3664987 () Bool)

(assert (=> d!934969 m!3664987))

(declare-fun m!3664989 () Bool)

(assert (=> d!934969 m!3664989))

(assert (=> d!934969 m!3664983))

(declare-fun m!3664991 () Bool)

(assert (=> d!934969 m!3664991))

(assert (=> d!934969 m!3663401))

(declare-fun m!3664993 () Bool)

(assert (=> d!934969 m!3664993))

(assert (=> d!934969 m!3662617))

(assert (=> d!934969 m!3662803))

(assert (=> b!3324970 m!3664987))

(assert (=> b!3324968 m!3664987))

(assert (=> bm!241329 m!3662617))

(declare-fun m!3664995 () Bool)

(assert (=> bm!241329 m!3664995))

(assert (=> b!3324972 m!3664983))

(assert (=> b!3324972 m!3664985))

(assert (=> b!3324972 m!3664981))

(assert (=> b!3324972 m!3662803))

(assert (=> b!3324972 m!3664983))

(assert (=> b!3324972 m!3662617))

(assert (=> b!3324972 m!3662803))

(declare-fun m!3664997 () Bool)

(assert (=> b!3324972 m!3664997))

(assert (=> b!3324971 m!3662617))

(declare-fun m!3664999 () Bool)

(assert (=> b!3324971 m!3664999))

(assert (=> b!3324967 m!3664981))

(assert (=> b!3324967 m!3663321))

(declare-fun m!3665001 () Bool)

(assert (=> b!3324967 m!3665001))

(assert (=> b!3324967 m!3662617))

(assert (=> b!3324967 m!3662803))

(assert (=> b!3324967 m!3664997))

(assert (=> b!3324967 m!3662803))

(assert (=> b!3324967 m!3663321))

(assert (=> b!3324969 m!3664981))

(assert (=> b!3324969 m!3662617))

(assert (=> b!3324969 m!3662803))

(assert (=> b!3324969 m!3662803))

(assert (=> b!3324969 m!3663321))

(assert (=> b!3324969 m!3663321))

(assert (=> b!3324969 m!3665001))

(assert (=> b!3324186 d!934969))

(declare-fun b!3324984 () Bool)

(declare-fun res!1348758 () Bool)

(declare-fun e!2067839 () Bool)

(assert (=> b!3324984 (=> (not res!1348758) (not e!2067839))))

(declare-fun lt!1129947 () List!36755)

(assert (=> b!3324984 (= res!1348758 (= (size!27691 lt!1129947) (+ (size!27691 lt!1129562) (size!27691 lt!1129558))))))

(declare-fun b!3324985 () Bool)

(assert (=> b!3324985 (= e!2067839 (or (not (= lt!1129558 Nil!36631)) (= lt!1129947 lt!1129562)))))

(declare-fun b!3324983 () Bool)

(declare-fun e!2067838 () List!36755)

(assert (=> b!3324983 (= e!2067838 (Cons!36631 (h!42051 lt!1129562) (++!8895 (t!256358 lt!1129562) lt!1129558)))))

(declare-fun b!3324982 () Bool)

(assert (=> b!3324982 (= e!2067838 lt!1129558)))

(declare-fun d!934971 () Bool)

(assert (=> d!934971 e!2067839))

(declare-fun res!1348757 () Bool)

(assert (=> d!934971 (=> (not res!1348757) (not e!2067839))))

(assert (=> d!934971 (= res!1348757 (= (content!4998 lt!1129947) ((_ map or) (content!4998 lt!1129562) (content!4998 lt!1129558))))))

(assert (=> d!934971 (= lt!1129947 e!2067838)))

(declare-fun c!564831 () Bool)

(assert (=> d!934971 (= c!564831 ((_ is Nil!36631) lt!1129562))))

(assert (=> d!934971 (= (++!8895 lt!1129562 lt!1129558) lt!1129947)))

(assert (= (and d!934971 c!564831) b!3324982))

(assert (= (and d!934971 (not c!564831)) b!3324983))

(assert (= (and d!934971 res!1348757) b!3324984))

(assert (= (and b!3324984 res!1348758) b!3324985))

(declare-fun m!3665003 () Bool)

(assert (=> b!3324984 m!3665003))

(assert (=> b!3324984 m!3664295))

(assert (=> b!3324984 m!3664327))

(declare-fun m!3665005 () Bool)

(assert (=> b!3324983 m!3665005))

(declare-fun m!3665007 () Bool)

(assert (=> d!934971 m!3665007))

(assert (=> d!934971 m!3664303))

(assert (=> d!934971 m!3664335))

(assert (=> b!3324186 d!934971))

(declare-fun d!934973 () Bool)

(assert (=> d!934973 (= (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1129568)))) (list!13184 (c!564521 (charsOf!3338 (_1!21205 (v!36173 lt!1129568))))))))

(declare-fun bs!550841 () Bool)

(assert (= bs!550841 d!934973))

(declare-fun m!3665009 () Bool)

(assert (=> bs!550841 m!3665009))

(assert (=> b!3324186 d!934973))

(declare-fun d!934975 () Bool)

(assert (=> d!934975 (= (list!13177 (_1!21199 lt!1129571)) (list!13181 (c!564522 (_1!21199 lt!1129571))))))

(declare-fun bs!550842 () Bool)

(assert (= bs!550842 d!934975))

(declare-fun m!3665011 () Bool)

(assert (=> bs!550842 m!3665011))

(assert (=> b!3324186 d!934975))

(declare-fun b!3324991 () Bool)

(declare-fun e!2067843 () List!36757)

(assert (=> b!3324991 (= e!2067843 (Cons!36633 (h!42053 lt!1129576) (++!8897 (t!256360 lt!1129576) lt!1129560)))))

(declare-fun d!934977 () Bool)

(declare-fun e!2067844 () Bool)

(assert (=> d!934977 e!2067844))

(declare-fun res!1348762 () Bool)

(assert (=> d!934977 (=> (not res!1348762) (not e!2067844))))

(declare-fun lt!1129950 () List!36757)

(assert (=> d!934977 (= res!1348762 (= (content!4997 lt!1129950) ((_ map or) (content!4997 lt!1129576) (content!4997 lt!1129560))))))

(assert (=> d!934977 (= lt!1129950 e!2067843)))

(declare-fun c!564833 () Bool)

(assert (=> d!934977 (= c!564833 ((_ is Nil!36633) lt!1129576))))

(assert (=> d!934977 (= (++!8897 lt!1129576 lt!1129560) lt!1129950)))

(declare-fun b!3324992 () Bool)

(declare-fun res!1348761 () Bool)

(assert (=> b!3324992 (=> (not res!1348761) (not e!2067844))))

(assert (=> b!3324992 (= res!1348761 (= (size!27692 lt!1129950) (+ (size!27692 lt!1129576) (size!27692 lt!1129560))))))

(declare-fun b!3324990 () Bool)

(assert (=> b!3324990 (= e!2067843 lt!1129560)))

(declare-fun b!3324993 () Bool)

(assert (=> b!3324993 (= e!2067844 (or (not (= lt!1129560 Nil!36633)) (= lt!1129950 lt!1129576)))))

(assert (= (and d!934977 c!564833) b!3324990))

(assert (= (and d!934977 (not c!564833)) b!3324991))

(assert (= (and d!934977 res!1348762) b!3324992))

(assert (= (and b!3324992 res!1348761) b!3324993))

(declare-fun m!3665013 () Bool)

(assert (=> b!3324991 m!3665013))

(declare-fun m!3665015 () Bool)

(assert (=> d!934977 m!3665015))

(assert (=> d!934977 m!3664973))

(assert (=> d!934977 m!3664525))

(declare-fun m!3665017 () Bool)

(assert (=> b!3324992 m!3665017))

(assert (=> b!3324992 m!3664977))

(assert (=> b!3324992 m!3664531))

(assert (=> b!3324186 d!934977))

(declare-fun d!934979 () Bool)

(assert (=> d!934979 (= (++!8895 (++!8895 lt!1129562 lt!1129558) lt!1129573) (++!8895 lt!1129562 (++!8895 lt!1129558 lt!1129573)))))

(declare-fun lt!1129956 () Unit!51643)

(declare-fun choose!19264 (List!36755 List!36755 List!36755) Unit!51643)

(assert (=> d!934979 (= lt!1129956 (choose!19264 lt!1129562 lt!1129558 lt!1129573))))

(assert (=> d!934979 (= (lemmaConcatAssociativity!1847 lt!1129562 lt!1129558 lt!1129573) lt!1129956)))

(declare-fun bs!550843 () Bool)

(assert (= bs!550843 d!934979))

(assert (=> bs!550843 m!3663619))

(declare-fun m!3665057 () Bool)

(assert (=> bs!550843 m!3665057))

(assert (=> bs!550843 m!3663635))

(assert (=> bs!550843 m!3663637))

(assert (=> bs!550843 m!3663619))

(assert (=> bs!550843 m!3663627))

(assert (=> bs!550843 m!3663635))

(assert (=> b!3324186 d!934979))

(declare-fun d!934987 () Bool)

(declare-fun lt!1129957 () Int)

(assert (=> d!934987 (>= lt!1129957 0)))

(declare-fun e!2067850 () Int)

(assert (=> d!934987 (= lt!1129957 e!2067850)))

(declare-fun c!564837 () Bool)

(assert (=> d!934987 (= c!564837 ((_ is Nil!36631) (_2!21201 lt!1129348)))))

(assert (=> d!934987 (= (size!27691 (_2!21201 lt!1129348)) lt!1129957)))

(declare-fun b!3325003 () Bool)

(assert (=> b!3325003 (= e!2067850 0)))

(declare-fun b!3325004 () Bool)

(assert (=> b!3325004 (= e!2067850 (+ 1 (size!27691 (t!256358 (_2!21201 lt!1129348)))))))

(assert (= (and d!934987 c!564837) b!3325003))

(assert (= (and d!934987 (not c!564837)) b!3325004))

(declare-fun m!3665059 () Bool)

(assert (=> b!3325004 m!3665059))

(assert (=> b!3324007 d!934987))

(declare-fun d!934989 () Bool)

(declare-fun lt!1129958 () Int)

(assert (=> d!934989 (>= lt!1129958 0)))

(declare-fun e!2067851 () Int)

(assert (=> d!934989 (= lt!1129958 e!2067851)))

(declare-fun c!564838 () Bool)

(assert (=> d!934989 (= c!564838 ((_ is Nil!36631) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> d!934989 (= (size!27691 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) lt!1129958)))

(declare-fun b!3325005 () Bool)

(assert (=> b!3325005 (= e!2067851 0)))

(declare-fun b!3325006 () Bool)

(assert (=> b!3325006 (= e!2067851 (+ 1 (size!27691 (t!256358 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (= (and d!934989 c!564838) b!3325005))

(assert (= (and d!934989 (not c!564838)) b!3325006))

(declare-fun m!3665061 () Bool)

(assert (=> b!3325006 m!3665061))

(assert (=> b!3324007 d!934989))

(declare-fun d!934991 () Bool)

(assert (=> d!934991 (= (Forall2!900 lambda!119634) (choose!19257 lambda!119634))))

(declare-fun bs!550844 () Bool)

(assert (= bs!550844 d!934991))

(declare-fun m!3665063 () Bool)

(assert (=> bs!550844 m!3665063))

(assert (=> d!934529 d!934991))

(declare-fun d!934993 () Bool)

(declare-fun lt!1129959 () Token!10014)

(assert (=> d!934993 (contains!6639 (list!13177 (_1!21199 lt!1129221)) lt!1129959)))

(declare-fun e!2067852 () Token!10014)

(assert (=> d!934993 (= lt!1129959 e!2067852)))

(declare-fun c!564839 () Bool)

(assert (=> d!934993 (= c!564839 (= 0 0))))

(declare-fun e!2067853 () Bool)

(assert (=> d!934993 e!2067853))

(declare-fun res!1348766 () Bool)

(assert (=> d!934993 (=> (not res!1348766) (not e!2067853))))

(assert (=> d!934993 (= res!1348766 (<= 0 0))))

(assert (=> d!934993 (= (apply!8452 (list!13177 (_1!21199 lt!1129221)) 0) lt!1129959)))

(declare-fun b!3325007 () Bool)

(assert (=> b!3325007 (= e!2067853 (< 0 (size!27692 (list!13177 (_1!21199 lt!1129221)))))))

(declare-fun b!3325008 () Bool)

(assert (=> b!3325008 (= e!2067852 (head!7155 (list!13177 (_1!21199 lt!1129221))))))

(declare-fun b!3325009 () Bool)

(assert (=> b!3325009 (= e!2067852 (apply!8452 (tail!5289 (list!13177 (_1!21199 lt!1129221))) (- 0 1)))))

(assert (= (and d!934993 res!1348766) b!3325007))

(assert (= (and d!934993 c!564839) b!3325008))

(assert (= (and d!934993 (not c!564839)) b!3325009))

(assert (=> d!934993 m!3663279))

(declare-fun m!3665065 () Bool)

(assert (=> d!934993 m!3665065))

(assert (=> b!3325007 m!3663279))

(assert (=> b!3325007 m!3663281))

(assert (=> b!3325008 m!3663279))

(declare-fun m!3665067 () Bool)

(assert (=> b!3325008 m!3665067))

(assert (=> b!3325009 m!3663279))

(declare-fun m!3665069 () Bool)

(assert (=> b!3325009 m!3665069))

(assert (=> b!3325009 m!3665069))

(declare-fun m!3665071 () Bool)

(assert (=> b!3325009 m!3665071))

(assert (=> d!934551 d!934993))

(declare-fun d!934995 () Bool)

(assert (=> d!934995 (= (list!13177 (_1!21199 lt!1129221)) (list!13181 (c!564522 (_1!21199 lt!1129221))))))

(declare-fun bs!550845 () Bool)

(assert (= bs!550845 d!934995))

(declare-fun m!3665073 () Bool)

(assert (=> bs!550845 m!3665073))

(assert (=> d!934551 d!934995))

(declare-fun b!3325032 () Bool)

(declare-fun e!2067868 () Bool)

(assert (=> b!3325032 (= e!2067868 (< 0 (size!27695 (c!564522 (_1!21199 lt!1129221)))))))

(declare-fun b!3325033 () Bool)

(declare-fun e!2067867 () Token!10014)

(declare-fun call!241337 () Token!10014)

(assert (=> b!3325033 (= e!2067867 call!241337)))

(declare-fun bm!241332 () Bool)

(declare-fun c!564850 () Bool)

(declare-fun c!564849 () Bool)

(assert (=> bm!241332 (= c!564850 c!564849)))

(declare-fun e!2067866 () Int)

(assert (=> bm!241332 (= call!241337 (apply!8453 (ite c!564849 (left!28548 (c!564522 (_1!21199 lt!1129221))) (right!28878 (c!564522 (_1!21199 lt!1129221)))) e!2067866))))

(declare-fun d!934997 () Bool)

(declare-fun lt!1129971 () Token!10014)

(assert (=> d!934997 (= lt!1129971 (apply!8452 (list!13181 (c!564522 (_1!21199 lt!1129221))) 0))))

(declare-fun e!2067869 () Token!10014)

(assert (=> d!934997 (= lt!1129971 e!2067869)))

(declare-fun c!564848 () Bool)

(assert (=> d!934997 (= c!564848 ((_ is Leaf!17297) (c!564522 (_1!21199 lt!1129221))))))

(assert (=> d!934997 e!2067868))

(declare-fun res!1348773 () Bool)

(assert (=> d!934997 (=> (not res!1348773) (not e!2067868))))

(assert (=> d!934997 (= res!1348773 (<= 0 0))))

(assert (=> d!934997 (= (apply!8453 (c!564522 (_1!21199 lt!1129221)) 0) lt!1129971)))

(declare-fun b!3325034 () Bool)

(declare-fun apply!8455 (IArray!22053 Int) Token!10014)

(assert (=> b!3325034 (= e!2067869 (apply!8455 (xs!14162 (c!564522 (_1!21199 lt!1129221))) 0))))

(declare-fun b!3325035 () Bool)

(assert (=> b!3325035 (= e!2067866 (- 0 (size!27695 (left!28548 (c!564522 (_1!21199 lt!1129221))))))))

(declare-fun b!3325036 () Bool)

(assert (=> b!3325036 (= e!2067867 call!241337)))

(declare-fun b!3325037 () Bool)

(assert (=> b!3325037 (= e!2067869 e!2067867)))

(declare-fun lt!1129970 () Bool)

(declare-fun appendIndex!327 (List!36757 List!36757 Int) Bool)

(assert (=> b!3325037 (= lt!1129970 (appendIndex!327 (list!13181 (left!28548 (c!564522 (_1!21199 lt!1129221)))) (list!13181 (right!28878 (c!564522 (_1!21199 lt!1129221)))) 0))))

(assert (=> b!3325037 (= c!564849 (< 0 (size!27695 (left!28548 (c!564522 (_1!21199 lt!1129221))))))))

(declare-fun b!3325038 () Bool)

(assert (=> b!3325038 (= e!2067866 0)))

(assert (= (and d!934997 res!1348773) b!3325032))

(assert (= (and d!934997 c!564848) b!3325034))

(assert (= (and d!934997 (not c!564848)) b!3325037))

(assert (= (and b!3325037 c!564849) b!3325036))

(assert (= (and b!3325037 (not c!564849)) b!3325033))

(assert (= (or b!3325036 b!3325033) bm!241332))

(assert (= (and bm!241332 c!564850) b!3325038))

(assert (= (and bm!241332 (not c!564850)) b!3325035))

(declare-fun m!3665111 () Bool)

(assert (=> bm!241332 m!3665111))

(assert (=> d!934997 m!3665073))

(assert (=> d!934997 m!3665073))

(declare-fun m!3665113 () Bool)

(assert (=> d!934997 m!3665113))

(declare-fun m!3665115 () Bool)

(assert (=> b!3325037 m!3665115))

(declare-fun m!3665117 () Bool)

(assert (=> b!3325037 m!3665117))

(assert (=> b!3325037 m!3665115))

(assert (=> b!3325037 m!3665117))

(declare-fun m!3665119 () Bool)

(assert (=> b!3325037 m!3665119))

(declare-fun m!3665121 () Bool)

(assert (=> b!3325037 m!3665121))

(assert (=> b!3325035 m!3665121))

(declare-fun m!3665123 () Bool)

(assert (=> b!3325034 m!3665123))

(assert (=> b!3325032 m!3663283))

(assert (=> d!934551 d!934997))

(declare-fun d!935011 () Bool)

(assert (=> d!935011 (= (inv!49637 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) (<= (size!27691 (innerList!11083 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) 2147483647))))

(declare-fun bs!550850 () Bool)

(assert (= bs!550850 d!935011))

(declare-fun m!3665125 () Bool)

(assert (=> bs!550850 m!3665125))

(assert (=> b!3324249 d!935011))

(declare-fun b!3325039 () Bool)

(declare-fun e!2067871 () tuple2!36130)

(declare-fun lt!1129974 () tuple2!36130)

(declare-fun lt!1129972 () Option!7310)

(assert (=> b!3325039 (= e!2067871 (tuple2!36131 (prepend!1211 (_1!21199 lt!1129974) (_1!21205 (v!36173 lt!1129972))) (_2!21199 lt!1129974)))))

(assert (=> b!3325039 (= lt!1129974 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129972))))))

(declare-fun b!3325040 () Bool)

(declare-fun res!1348774 () Bool)

(declare-fun e!2067870 () Bool)

(assert (=> b!3325040 (=> (not res!1348774) (not e!2067870))))

(declare-fun lt!1129973 () tuple2!36130)

(assert (=> b!3325040 (= res!1348774 (= (list!13177 (_1!21199 lt!1129973)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (_2!21205 (v!36173 lt!1129563)))))))))

(declare-fun d!935013 () Bool)

(assert (=> d!935013 e!2067870))

(declare-fun res!1348775 () Bool)

(assert (=> d!935013 (=> (not res!1348775) (not e!2067870))))

(declare-fun e!2067873 () Bool)

(assert (=> d!935013 (= res!1348775 e!2067873)))

(declare-fun c!564851 () Bool)

(assert (=> d!935013 (= c!564851 (> (size!27690 (_1!21199 lt!1129973)) 0))))

(assert (=> d!935013 (= lt!1129973 e!2067871)))

(declare-fun c!564852 () Bool)

(assert (=> d!935013 (= c!564852 ((_ is Some!7309) lt!1129972))))

(assert (=> d!935013 (= lt!1129972 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129563))))))

(assert (=> d!935013 (= (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129563))) lt!1129973)))

(declare-fun b!3325041 () Bool)

(assert (=> b!3325041 (= e!2067873 (= (list!13180 (_2!21199 lt!1129973)) (list!13180 (_2!21205 (v!36173 lt!1129563)))))))

(declare-fun b!3325042 () Bool)

(assert (=> b!3325042 (= e!2067871 (tuple2!36131 (BalanceConc!21663 Empty!11024) (_2!21205 (v!36173 lt!1129563))))))

(declare-fun b!3325043 () Bool)

(assert (=> b!3325043 (= e!2067870 (= (list!13180 (_2!21199 lt!1129973)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (_2!21205 (v!36173 lt!1129563)))))))))

(declare-fun b!3325044 () Bool)

(declare-fun e!2067872 () Bool)

(assert (=> b!3325044 (= e!2067872 (not (isEmpty!20789 (_1!21199 lt!1129973))))))

(declare-fun b!3325045 () Bool)

(assert (=> b!3325045 (= e!2067873 e!2067872)))

(declare-fun res!1348776 () Bool)

(assert (=> b!3325045 (= res!1348776 (< (size!27693 (_2!21199 lt!1129973)) (size!27693 (_2!21205 (v!36173 lt!1129563)))))))

(assert (=> b!3325045 (=> (not res!1348776) (not e!2067872))))

(assert (= (and d!935013 c!564852) b!3325039))

(assert (= (and d!935013 (not c!564852)) b!3325042))

(assert (= (and d!935013 c!564851) b!3325045))

(assert (= (and d!935013 (not c!564851)) b!3325041))

(assert (= (and b!3325045 res!1348776) b!3325044))

(assert (= (and d!935013 res!1348775) b!3325040))

(assert (= (and b!3325040 res!1348774) b!3325043))

(declare-fun m!3665127 () Bool)

(assert (=> d!935013 m!3665127))

(declare-fun m!3665129 () Bool)

(assert (=> d!935013 m!3665129))

(declare-fun m!3665131 () Bool)

(assert (=> b!3325040 m!3665131))

(declare-fun m!3665133 () Bool)

(assert (=> b!3325040 m!3665133))

(assert (=> b!3325040 m!3665133))

(declare-fun m!3665135 () Bool)

(assert (=> b!3325040 m!3665135))

(declare-fun m!3665137 () Bool)

(assert (=> b!3325039 m!3665137))

(declare-fun m!3665139 () Bool)

(assert (=> b!3325039 m!3665139))

(declare-fun m!3665141 () Bool)

(assert (=> b!3325041 m!3665141))

(assert (=> b!3325041 m!3665133))

(declare-fun m!3665143 () Bool)

(assert (=> b!3325044 m!3665143))

(declare-fun m!3665145 () Bool)

(assert (=> b!3325045 m!3665145))

(declare-fun m!3665147 () Bool)

(assert (=> b!3325045 m!3665147))

(assert (=> b!3325043 m!3665141))

(assert (=> b!3325043 m!3665133))

(assert (=> b!3325043 m!3665133))

(assert (=> b!3325043 m!3665135))

(assert (=> b!3324190 d!935013))

(declare-fun d!935015 () Bool)

(declare-fun e!2067876 () Bool)

(assert (=> d!935015 e!2067876))

(declare-fun res!1348779 () Bool)

(assert (=> d!935015 (=> (not res!1348779) (not e!2067876))))

(declare-fun prepend!1213 (Conc!11024 Token!10014) Conc!11024)

(assert (=> d!935015 (= res!1348779 (isBalanced!3305 (prepend!1213 (c!564522 (_1!21199 lt!1129582)) (_1!21205 (v!36173 lt!1129563)))))))

(declare-fun lt!1129977 () BalanceConc!21662)

(assert (=> d!935015 (= lt!1129977 (BalanceConc!21663 (prepend!1213 (c!564522 (_1!21199 lt!1129582)) (_1!21205 (v!36173 lt!1129563)))))))

(assert (=> d!935015 (= (prepend!1211 (_1!21199 lt!1129582) (_1!21205 (v!36173 lt!1129563))) lt!1129977)))

(declare-fun b!3325048 () Bool)

(assert (=> b!3325048 (= e!2067876 (= (list!13177 lt!1129977) (Cons!36633 (_1!21205 (v!36173 lt!1129563)) (list!13177 (_1!21199 lt!1129582)))))))

(assert (= (and d!935015 res!1348779) b!3325048))

(declare-fun m!3665149 () Bool)

(assert (=> d!935015 m!3665149))

(assert (=> d!935015 m!3665149))

(declare-fun m!3665151 () Bool)

(assert (=> d!935015 m!3665151))

(declare-fun m!3665153 () Bool)

(assert (=> b!3325048 m!3665153))

(declare-fun m!3665155 () Bool)

(assert (=> b!3325048 m!3665155))

(assert (=> b!3324190 d!935015))

(declare-fun b!3325049 () Bool)

(declare-fun e!2067877 () List!36757)

(assert (=> b!3325049 (= e!2067877 Nil!36633)))

(declare-fun b!3325050 () Bool)

(declare-fun e!2067878 () List!36757)

(assert (=> b!3325050 (= e!2067877 e!2067878)))

(declare-fun c!564855 () Bool)

(assert (=> b!3325050 (= c!564855 ((_ is Leaf!17297) (c!564522 (singletonSeq!2420 separatorToken!241))))))

(declare-fun b!3325051 () Bool)

(assert (=> b!3325051 (= e!2067878 (list!13185 (xs!14162 (c!564522 (singletonSeq!2420 separatorToken!241)))))))

(declare-fun d!935017 () Bool)

(declare-fun c!564854 () Bool)

(assert (=> d!935017 (= c!564854 ((_ is Empty!11024) (c!564522 (singletonSeq!2420 separatorToken!241))))))

(assert (=> d!935017 (= (list!13181 (c!564522 (singletonSeq!2420 separatorToken!241))) e!2067877)))

(declare-fun b!3325052 () Bool)

(assert (=> b!3325052 (= e!2067878 (++!8897 (list!13181 (left!28548 (c!564522 (singletonSeq!2420 separatorToken!241)))) (list!13181 (right!28878 (c!564522 (singletonSeq!2420 separatorToken!241))))))))

(assert (= (and d!935017 c!564854) b!3325049))

(assert (= (and d!935017 (not c!564854)) b!3325050))

(assert (= (and b!3325050 c!564855) b!3325051))

(assert (= (and b!3325050 (not c!564855)) b!3325052))

(declare-fun m!3665157 () Bool)

(assert (=> b!3325051 m!3665157))

(declare-fun m!3665159 () Bool)

(assert (=> b!3325052 m!3665159))

(declare-fun m!3665161 () Bool)

(assert (=> b!3325052 m!3665161))

(assert (=> b!3325052 m!3665159))

(assert (=> b!3325052 m!3665161))

(declare-fun m!3665163 () Bool)

(assert (=> b!3325052 m!3665163))

(assert (=> d!934445 d!935017))

(assert (=> b!3324031 d!934627))

(declare-fun d!935019 () Bool)

(declare-fun c!564856 () Bool)

(assert (=> d!935019 (= c!564856 ((_ is Nil!36633) lt!1129340))))

(declare-fun e!2067879 () (InoxSet Token!10014))

(assert (=> d!935019 (= (content!4997 lt!1129340) e!2067879)))

(declare-fun b!3325053 () Bool)

(assert (=> b!3325053 (= e!2067879 ((as const (Array Token!10014 Bool)) false))))

(declare-fun b!3325054 () Bool)

(assert (=> b!3325054 (= e!2067879 ((_ map or) (store ((as const (Array Token!10014 Bool)) false) (h!42053 lt!1129340) true) (content!4997 (t!256360 lt!1129340))))))

(assert (= (and d!935019 c!564856) b!3325053))

(assert (= (and d!935019 (not c!564856)) b!3325054))

(declare-fun m!3665165 () Bool)

(assert (=> b!3325054 m!3665165))

(declare-fun m!3665167 () Bool)

(assert (=> b!3325054 m!3665167))

(assert (=> b!3323990 d!935019))

(assert (=> b!3323990 d!934639))

(declare-fun d!935021 () Bool)

(assert (=> d!935021 (= (inv!15 (value!172194 (h!42053 (t!256360 tokens!494)))) (= (charsToBigInt!0 (text!39327 (value!172194 (h!42053 (t!256360 tokens!494)))) 0) (value!172189 (value!172194 (h!42053 (t!256360 tokens!494))))))))

(declare-fun bs!550851 () Bool)

(assert (= bs!550851 d!935021))

(declare-fun m!3665169 () Bool)

(assert (=> bs!550851 m!3665169))

(assert (=> b!3323889 d!935021))

(declare-fun bs!550852 () Bool)

(declare-fun d!935023 () Bool)

(assert (= bs!550852 (and d!935023 d!934357)))

(declare-fun lambda!119650 () Int)

(assert (=> bs!550852 (= (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (= lambda!119650 lambda!119612))))

(declare-fun bs!550853 () Bool)

(assert (= bs!550853 (and d!935023 d!934501)))

(assert (=> bs!550853 (= (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241)))) (= lambda!119650 lambda!119630))))

(declare-fun bs!550854 () Bool)

(assert (= bs!550854 (and d!935023 d!934529)))

(assert (=> bs!550854 (= (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (= lambda!119650 lambda!119634))))

(declare-fun bs!550855 () Bool)

(assert (= bs!550855 (and d!935023 d!934713)))

(assert (=> bs!550855 (= (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (= lambda!119650 lambda!119636))))

(assert (=> d!935023 true))

(assert (=> d!935023 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) (dynLambda!15095 order!19147 lambda!119650))))

(assert (=> d!935023 (= (equivClasses!2108 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) (Forall2!900 lambda!119650))))

(declare-fun bs!550856 () Bool)

(assert (= bs!550856 d!935023))

(declare-fun m!3665171 () Bool)

(assert (=> bs!550856 m!3665171))

(assert (=> b!3323930 d!935023))

(declare-fun b!3325055 () Bool)

(declare-fun e!2067880 () List!36757)

(assert (=> b!3325055 (= e!2067880 Nil!36633)))

(declare-fun b!3325056 () Bool)

(declare-fun e!2067881 () List!36757)

(assert (=> b!3325056 (= e!2067880 e!2067881)))

(declare-fun c!564858 () Bool)

(assert (=> b!3325056 (= c!564858 ((_ is Leaf!17297) (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(declare-fun b!3325057 () Bool)

(assert (=> b!3325057 (= e!2067881 (list!13185 (xs!14162 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))))))

(declare-fun d!935025 () Bool)

(declare-fun c!564857 () Bool)

(assert (=> d!935025 (= c!564857 ((_ is Empty!11024) (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(assert (=> d!935025 (= (list!13181 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))) e!2067880)))

(declare-fun b!3325058 () Bool)

(assert (=> b!3325058 (= e!2067881 (++!8897 (list!13181 (left!28548 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))) (list!13181 (right!28878 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))))

(assert (= (and d!935025 c!564857) b!3325055))

(assert (= (and d!935025 (not c!564857)) b!3325056))

(assert (= (and b!3325056 c!564858) b!3325057))

(assert (= (and b!3325056 (not c!564858)) b!3325058))

(declare-fun m!3665173 () Bool)

(assert (=> b!3325057 m!3665173))

(declare-fun m!3665175 () Bool)

(assert (=> b!3325058 m!3665175))

(declare-fun m!3665177 () Bool)

(assert (=> b!3325058 m!3665177))

(assert (=> b!3325058 m!3665175))

(assert (=> b!3325058 m!3665177))

(declare-fun m!3665179 () Bool)

(assert (=> b!3325058 m!3665179))

(assert (=> d!934447 d!935025))

(assert (=> d!934555 d!934499))

(assert (=> d!934555 d!934623))

(declare-fun d!935027 () Bool)

(assert (=> d!935027 (= (list!13177 (_1!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))) (list!13181 (c!564522 (_1!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun bs!550857 () Bool)

(assert (= bs!550857 d!935027))

(declare-fun m!3665181 () Bool)

(assert (=> bs!550857 m!3665181))

(assert (=> d!934555 d!935027))

(declare-fun d!935029 () Bool)

(assert (=> d!935029 (isSuffix!877 lt!1129577 (++!8895 lt!1129564 lt!1129577))))

(declare-fun lt!1129978 () Unit!51643)

(assert (=> d!935029 (= lt!1129978 (choose!19259 lt!1129564 lt!1129577))))

(assert (=> d!935029 (= (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1129564 lt!1129577) lt!1129978)))

(declare-fun bs!550858 () Bool)

(assert (= bs!550858 d!935029))

(assert (=> bs!550858 m!3663649))

(assert (=> bs!550858 m!3663649))

(assert (=> bs!550858 m!3663651))

(declare-fun m!3665183 () Bool)

(assert (=> bs!550858 m!3665183))

(assert (=> d!934555 d!935029))

(assert (=> d!934555 d!934801))

(declare-fun d!935031 () Bool)

(declare-fun e!2067882 () Bool)

(assert (=> d!935031 e!2067882))

(declare-fun res!1348780 () Bool)

(assert (=> d!935031 (=> res!1348780 e!2067882)))

(declare-fun lt!1129979 () Bool)

(assert (=> d!935031 (= res!1348780 (not lt!1129979))))

(assert (=> d!935031 (= lt!1129979 (= lt!1129577 (drop!1923 (++!8895 lt!1129564 lt!1129577) (- (size!27691 (++!8895 lt!1129564 lt!1129577)) (size!27691 lt!1129577)))))))

(assert (=> d!935031 (= (isSuffix!877 lt!1129577 (++!8895 lt!1129564 lt!1129577)) lt!1129979)))

(declare-fun b!3325059 () Bool)

(assert (=> b!3325059 (= e!2067882 (>= (size!27691 (++!8895 lt!1129564 lt!1129577)) (size!27691 lt!1129577)))))

(assert (= (and d!935031 (not res!1348780)) b!3325059))

(assert (=> d!935031 m!3663649))

(declare-fun m!3665185 () Bool)

(assert (=> d!935031 m!3665185))

(declare-fun m!3665187 () Bool)

(assert (=> d!935031 m!3665187))

(assert (=> d!935031 m!3663649))

(declare-fun m!3665189 () Bool)

(assert (=> d!935031 m!3665189))

(assert (=> b!3325059 m!3663649))

(assert (=> b!3325059 m!3665185))

(assert (=> b!3325059 m!3665187))

(assert (=> d!934555 d!935031))

(declare-fun d!935033 () Bool)

(assert (=> d!935033 (= (list!13177 (_1!21199 lt!1129588)) (list!13181 (c!564522 (_1!21199 lt!1129588))))))

(declare-fun bs!550859 () Bool)

(assert (= bs!550859 d!935033))

(declare-fun m!3665191 () Bool)

(assert (=> bs!550859 m!3665191))

(assert (=> d!934555 d!935033))

(declare-fun b!3325062 () Bool)

(declare-fun res!1348782 () Bool)

(declare-fun e!2067884 () Bool)

(assert (=> b!3325062 (=> (not res!1348782) (not e!2067884))))

(declare-fun lt!1129980 () List!36755)

(assert (=> b!3325062 (= res!1348782 (= (size!27691 lt!1129980) (+ (size!27691 lt!1129564) (size!27691 lt!1129577))))))

(declare-fun b!3325063 () Bool)

(assert (=> b!3325063 (= e!2067884 (or (not (= lt!1129577 Nil!36631)) (= lt!1129980 lt!1129564)))))

(declare-fun b!3325061 () Bool)

(declare-fun e!2067883 () List!36755)

(assert (=> b!3325061 (= e!2067883 (Cons!36631 (h!42051 lt!1129564) (++!8895 (t!256358 lt!1129564) lt!1129577)))))

(declare-fun b!3325060 () Bool)

(assert (=> b!3325060 (= e!2067883 lt!1129577)))

(declare-fun d!935035 () Bool)

(assert (=> d!935035 e!2067884))

(declare-fun res!1348781 () Bool)

(assert (=> d!935035 (=> (not res!1348781) (not e!2067884))))

(assert (=> d!935035 (= res!1348781 (= (content!4998 lt!1129980) ((_ map or) (content!4998 lt!1129564) (content!4998 lt!1129577))))))

(assert (=> d!935035 (= lt!1129980 e!2067883)))

(declare-fun c!564859 () Bool)

(assert (=> d!935035 (= c!564859 ((_ is Nil!36631) lt!1129564))))

(assert (=> d!935035 (= (++!8895 lt!1129564 lt!1129577) lt!1129980)))

(assert (= (and d!935035 c!564859) b!3325060))

(assert (= (and d!935035 (not c!564859)) b!3325061))

(assert (= (and d!935035 res!1348781) b!3325062))

(assert (= (and b!3325062 res!1348782) b!3325063))

(declare-fun m!3665193 () Bool)

(assert (=> b!3325062 m!3665193))

(declare-fun m!3665195 () Bool)

(assert (=> b!3325062 m!3665195))

(assert (=> b!3325062 m!3665187))

(declare-fun m!3665197 () Bool)

(assert (=> b!3325061 m!3665197))

(declare-fun m!3665199 () Bool)

(assert (=> d!935035 m!3665199))

(declare-fun m!3665201 () Bool)

(assert (=> d!935035 m!3665201))

(declare-fun m!3665203 () Bool)

(assert (=> d!935035 m!3665203))

(assert (=> d!934555 d!935035))

(declare-fun b!3325147 () Bool)

(declare-fun e!2067945 () Bool)

(declare-fun e!2067940 () Bool)

(assert (=> b!3325147 (= e!2067945 e!2067940)))

(declare-fun res!1348837 () Bool)

(assert (=> b!3325147 (=> (not res!1348837) (not e!2067940))))

(declare-fun lt!1130072 () Option!7310)

(assert (=> b!3325147 (= res!1348837 (= (_1!21205 (get!11676 lt!1130072)) (_1!21203 (get!11677 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3325148 () Bool)

(declare-fun e!2067941 () Option!7310)

(declare-fun call!241344 () Option!7310)

(assert (=> b!3325148 (= e!2067941 call!241344)))

(declare-fun d!935037 () Bool)

(declare-fun e!2067944 () Bool)

(assert (=> d!935037 e!2067944))

(declare-fun res!1348834 () Bool)

(assert (=> d!935037 (=> (not res!1348834) (not e!2067944))))

(assert (=> d!935037 (= res!1348834 (= (isDefined!5657 lt!1130072) (isDefined!5658 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!935037 (= lt!1130072 e!2067941)))

(declare-fun c!564876 () Bool)

(assert (=> d!935037 (= c!564876 (and ((_ is Cons!36632) rules!2135) ((_ is Nil!36632) (t!256359 rules!2135))))))

(declare-fun lt!1130069 () Unit!51643)

(declare-fun lt!1130070 () Unit!51643)

(assert (=> d!935037 (= lt!1130069 lt!1130070)))

(declare-fun lt!1130074 () List!36755)

(declare-fun lt!1130068 () List!36755)

(assert (=> d!935037 (isPrefix!2812 lt!1130074 lt!1130068)))

(assert (=> d!935037 (= lt!1130070 (lemmaIsPrefixRefl!1771 lt!1130074 lt!1130068))))

(assert (=> d!935037 (= lt!1130068 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!935037 (= lt!1130074 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!935037 (rulesValidInductive!1817 thiss!18206 rules!2135)))

(assert (=> d!935037 (= (maxPrefixZipperSequenceV2!502 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) lt!1130072)))

(declare-fun b!3325149 () Bool)

(declare-fun lt!1130071 () Option!7310)

(declare-fun lt!1130073 () Option!7310)

(assert (=> b!3325149 (= e!2067941 (ite (and ((_ is None!7309) lt!1130071) ((_ is None!7309) lt!1130073)) None!7309 (ite ((_ is None!7309) lt!1130073) lt!1130071 (ite ((_ is None!7309) lt!1130071) lt!1130073 (ite (>= (size!27685 (_1!21205 (v!36173 lt!1130071))) (size!27685 (_1!21205 (v!36173 lt!1130073)))) lt!1130071 lt!1130073)))))))

(assert (=> b!3325149 (= lt!1130071 call!241344)))

(assert (=> b!3325149 (= lt!1130073 (maxPrefixZipperSequenceV2!502 thiss!18206 (t!256359 rules!2135) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun bm!241339 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!197 (LexerInterface!4913 Rule!10448 BalanceConc!21660 BalanceConc!21660) Option!7310)

(assert (=> bm!241339 (= call!241344 (maxPrefixOneRuleZipperSequenceV2!197 thiss!18206 (h!42052 rules!2135) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241) (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(declare-fun b!3325150 () Bool)

(declare-fun e!2067943 () Bool)

(assert (=> b!3325150 (= e!2067943 (= (list!13180 (_2!21205 (get!11676 lt!1130072))) (_2!21203 (get!11677 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3325151 () Bool)

(assert (=> b!3325151 (= e!2067944 e!2067945)))

(declare-fun res!1348833 () Bool)

(assert (=> b!3325151 (=> res!1348833 e!2067945)))

(assert (=> b!3325151 (= res!1348833 (not (isDefined!5657 lt!1130072)))))

(declare-fun b!3325152 () Bool)

(declare-fun res!1348836 () Bool)

(assert (=> b!3325152 (=> (not res!1348836) (not e!2067944))))

(declare-fun e!2067942 () Bool)

(assert (=> b!3325152 (= res!1348836 e!2067942)))

(declare-fun res!1348838 () Bool)

(assert (=> b!3325152 (=> res!1348838 e!2067942)))

(assert (=> b!3325152 (= res!1348838 (not (isDefined!5657 lt!1130072)))))

(declare-fun b!3325153 () Bool)

(assert (=> b!3325153 (= e!2067940 (= (list!13180 (_2!21205 (get!11676 lt!1130072))) (_2!21203 (get!11677 (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(declare-fun b!3325154 () Bool)

(assert (=> b!3325154 (= e!2067942 e!2067943)))

(declare-fun res!1348835 () Bool)

(assert (=> b!3325154 (=> (not res!1348835) (not e!2067943))))

(assert (=> b!3325154 (= res!1348835 (= (_1!21205 (get!11676 lt!1130072)) (_1!21203 (get!11677 (maxPrefixZipper!499 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (= (and d!935037 c!564876) b!3325148))

(assert (= (and d!935037 (not c!564876)) b!3325149))

(assert (= (or b!3325148 b!3325149) bm!241339))

(assert (= (and d!935037 res!1348834) b!3325152))

(assert (= (and b!3325152 (not res!1348838)) b!3325154))

(assert (= (and b!3325154 res!1348835) b!3325150))

(assert (= (and b!3325152 res!1348836) b!3325151))

(assert (= (and b!3325151 (not res!1348833)) b!3325147))

(assert (= (and b!3325147 res!1348837) b!3325153))

(assert (=> bm!241339 m!3662617))

(assert (=> bm!241339 m!3662617))

(declare-fun m!3665419 () Bool)

(assert (=> bm!241339 m!3665419))

(declare-fun m!3665421 () Bool)

(assert (=> b!3325152 m!3665421))

(assert (=> b!3325151 m!3665421))

(declare-fun m!3665423 () Bool)

(assert (=> b!3325147 m!3665423))

(assert (=> b!3325147 m!3662617))

(assert (=> b!3325147 m!3662803))

(assert (=> b!3325147 m!3662803))

(assert (=> b!3325147 m!3663321))

(assert (=> b!3325147 m!3663321))

(assert (=> b!3325147 m!3665001))

(assert (=> b!3325149 m!3662617))

(assert (=> b!3325149 m!3662617))

(declare-fun m!3665425 () Bool)

(assert (=> b!3325149 m!3665425))

(assert (=> b!3325154 m!3665423))

(assert (=> b!3325154 m!3662617))

(assert (=> b!3325154 m!3662803))

(assert (=> b!3325154 m!3662803))

(assert (=> b!3325154 m!3664983))

(assert (=> b!3325154 m!3664983))

(assert (=> b!3325154 m!3664985))

(declare-fun m!3665427 () Bool)

(assert (=> d!935037 m!3665427))

(assert (=> d!935037 m!3665421))

(assert (=> d!935037 m!3664983))

(assert (=> d!935037 m!3664991))

(assert (=> d!935037 m!3662803))

(assert (=> d!935037 m!3664983))

(declare-fun m!3665429 () Bool)

(assert (=> d!935037 m!3665429))

(assert (=> d!935037 m!3663401))

(assert (=> d!935037 m!3662617))

(assert (=> d!935037 m!3662803))

(assert (=> b!3325153 m!3665423))

(assert (=> b!3325153 m!3663321))

(assert (=> b!3325153 m!3665001))

(assert (=> b!3325153 m!3662617))

(assert (=> b!3325153 m!3662803))

(declare-fun m!3665431 () Bool)

(assert (=> b!3325153 m!3665431))

(assert (=> b!3325153 m!3662803))

(assert (=> b!3325153 m!3663321))

(assert (=> b!3325150 m!3665423))

(assert (=> b!3325150 m!3662617))

(assert (=> b!3325150 m!3662803))

(assert (=> b!3325150 m!3665431))

(assert (=> b!3325150 m!3662803))

(assert (=> b!3325150 m!3664983))

(assert (=> b!3325150 m!3664983))

(assert (=> b!3325150 m!3664985))

(assert (=> d!934555 d!935037))

(declare-fun d!935067 () Bool)

(declare-fun lt!1130075 () Int)

(assert (=> d!935067 (>= lt!1130075 0)))

(declare-fun e!2067946 () Int)

(assert (=> d!935067 (= lt!1130075 e!2067946)))

(declare-fun c!564877 () Bool)

(assert (=> d!935067 (= c!564877 ((_ is Nil!36633) (list!13177 (_1!21199 lt!1129221))))))

(assert (=> d!935067 (= (size!27692 (list!13177 (_1!21199 lt!1129221))) lt!1130075)))

(declare-fun b!3325155 () Bool)

(assert (=> b!3325155 (= e!2067946 0)))

(declare-fun b!3325156 () Bool)

(assert (=> b!3325156 (= e!2067946 (+ 1 (size!27692 (t!256360 (list!13177 (_1!21199 lt!1129221))))))))

(assert (= (and d!935067 c!564877) b!3325155))

(assert (= (and d!935067 (not c!564877)) b!3325156))

(declare-fun m!3665433 () Bool)

(assert (=> b!3325156 m!3665433))

(assert (=> d!934477 d!935067))

(assert (=> d!934477 d!934995))

(declare-fun d!935069 () Bool)

(declare-fun lt!1130076 () Int)

(assert (=> d!935069 (= lt!1130076 (size!27692 (list!13181 (c!564522 (_1!21199 lt!1129221)))))))

(assert (=> d!935069 (= lt!1130076 (ite ((_ is Empty!11024) (c!564522 (_1!21199 lt!1129221))) 0 (ite ((_ is Leaf!17297) (c!564522 (_1!21199 lt!1129221))) (csize!22279 (c!564522 (_1!21199 lt!1129221))) (csize!22278 (c!564522 (_1!21199 lt!1129221))))))))

(assert (=> d!935069 (= (size!27695 (c!564522 (_1!21199 lt!1129221))) lt!1130076)))

(declare-fun bs!550864 () Bool)

(assert (= bs!550864 d!935069))

(assert (=> bs!550864 m!3665073))

(assert (=> bs!550864 m!3665073))

(declare-fun m!3665435 () Bool)

(assert (=> bs!550864 m!3665435))

(assert (=> d!934477 d!935069))

(declare-fun b!3325160 () Bool)

(declare-fun e!2067948 () List!36755)

(assert (=> b!3325160 (= e!2067948 (++!8895 (list!13184 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) (list!13184 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))))

(declare-fun b!3325157 () Bool)

(declare-fun e!2067947 () List!36755)

(assert (=> b!3325157 (= e!2067947 Nil!36631)))

(declare-fun b!3325159 () Bool)

(assert (=> b!3325159 (= e!2067948 (list!13186 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun b!3325158 () Bool)

(assert (=> b!3325158 (= e!2067947 e!2067948)))

(declare-fun c!564879 () Bool)

(assert (=> b!3325158 (= c!564879 ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(declare-fun d!935071 () Bool)

(declare-fun c!564878 () Bool)

(assert (=> d!935071 (= c!564878 ((_ is Empty!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))

(assert (=> d!935071 (= (list!13184 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) e!2067947)))

(assert (= (and d!935071 c!564878) b!3325157))

(assert (= (and d!935071 (not c!564878)) b!3325158))

(assert (= (and b!3325158 c!564879) b!3325159))

(assert (= (and b!3325158 (not c!564879)) b!3325160))

(declare-fun m!3665437 () Bool)

(assert (=> b!3325160 m!3665437))

(declare-fun m!3665439 () Bool)

(assert (=> b!3325160 m!3665439))

(assert (=> b!3325160 m!3665437))

(assert (=> b!3325160 m!3665439))

(declare-fun m!3665441 () Bool)

(assert (=> b!3325160 m!3665441))

(declare-fun m!3665443 () Bool)

(assert (=> b!3325159 m!3665443))

(assert (=> d!934541 d!935071))

(declare-fun d!935073 () Bool)

(declare-fun lt!1130077 () Int)

(assert (=> d!935073 (>= lt!1130077 0)))

(declare-fun e!2067949 () Int)

(assert (=> d!935073 (= lt!1130077 e!2067949)))

(declare-fun c!564880 () Bool)

(assert (=> d!935073 (= c!564880 ((_ is Nil!36631) (originalCharacters!6038 (h!42053 (t!256360 tokens!494)))))))

(assert (=> d!935073 (= (size!27691 (originalCharacters!6038 (h!42053 (t!256360 tokens!494)))) lt!1130077)))

(declare-fun b!3325161 () Bool)

(assert (=> b!3325161 (= e!2067949 0)))

(declare-fun b!3325162 () Bool)

(assert (=> b!3325162 (= e!2067949 (+ 1 (size!27691 (t!256358 (originalCharacters!6038 (h!42053 (t!256360 tokens!494)))))))))

(assert (= (and d!935073 c!564880) b!3325161))

(assert (= (and d!935073 (not c!564880)) b!3325162))

(declare-fun m!3665445 () Bool)

(assert (=> b!3325162 m!3665445))

(assert (=> b!3324045 d!935073))

(declare-fun d!935075 () Bool)

(assert (=> d!935075 (= (Forall!1303 lambda!119635) (choose!19251 lambda!119635))))

(declare-fun bs!550865 () Bool)

(assert (= bs!550865 d!935075))

(declare-fun m!3665447 () Bool)

(assert (=> bs!550865 m!3665447))

(assert (=> d!934549 d!935075))

(declare-fun d!935077 () Bool)

(declare-fun lt!1130078 () Int)

(assert (=> d!935077 (>= lt!1130078 0)))

(declare-fun e!2067950 () Int)

(assert (=> d!935077 (= lt!1130078 e!2067950)))

(declare-fun c!564881 () Bool)

(assert (=> d!935077 (= c!564881 ((_ is Nil!36633) (t!256360 lt!1129228)))))

(assert (=> d!935077 (= (size!27692 (t!256360 lt!1129228)) lt!1130078)))

(declare-fun b!3325163 () Bool)

(assert (=> b!3325163 (= e!2067950 0)))

(declare-fun b!3325164 () Bool)

(assert (=> b!3325164 (= e!2067950 (+ 1 (size!27692 (t!256360 (t!256360 lt!1129228)))))))

(assert (= (and d!935077 c!564881) b!3325163))

(assert (= (and d!935077 (not c!564881)) b!3325164))

(declare-fun m!3665449 () Bool)

(assert (=> b!3325164 m!3665449))

(assert (=> b!3324039 d!935077))

(declare-fun b!3325165 () Bool)

(declare-fun e!2067953 () tuple2!36134)

(declare-fun lt!1130079 () Option!7308)

(declare-fun lt!1130081 () tuple2!36134)

(assert (=> b!3325165 (= e!2067953 (tuple2!36135 (Cons!36633 (_1!21203 (v!36171 lt!1130079)) (_1!21201 lt!1130081)) (_2!21201 lt!1130081)))))

(assert (=> b!3325165 (= lt!1130081 (lexList!1372 thiss!18206 rules!2135 (_2!21203 (v!36171 lt!1130079))))))

(declare-fun b!3325166 () Bool)

(declare-fun e!2067951 () Bool)

(declare-fun lt!1130080 () tuple2!36134)

(assert (=> b!3325166 (= e!2067951 (not (isEmpty!20794 (_1!21201 lt!1130080))))))

(declare-fun b!3325167 () Bool)

(declare-fun e!2067952 () Bool)

(assert (=> b!3325167 (= e!2067952 (= (_2!21201 lt!1130080) (_2!21203 (v!36171 lt!1129347))))))

(declare-fun d!935079 () Bool)

(assert (=> d!935079 e!2067952))

(declare-fun c!564883 () Bool)

(assert (=> d!935079 (= c!564883 (> (size!27692 (_1!21201 lt!1130080)) 0))))

(assert (=> d!935079 (= lt!1130080 e!2067953)))

(declare-fun c!564882 () Bool)

(assert (=> d!935079 (= c!564882 ((_ is Some!7307) lt!1130079))))

(assert (=> d!935079 (= lt!1130079 (maxPrefix!2519 thiss!18206 rules!2135 (_2!21203 (v!36171 lt!1129347))))))

(assert (=> d!935079 (= (lexList!1372 thiss!18206 rules!2135 (_2!21203 (v!36171 lt!1129347))) lt!1130080)))

(declare-fun b!3325168 () Bool)

(assert (=> b!3325168 (= e!2067953 (tuple2!36135 Nil!36633 (_2!21203 (v!36171 lt!1129347))))))

(declare-fun b!3325169 () Bool)

(assert (=> b!3325169 (= e!2067952 e!2067951)))

(declare-fun res!1348839 () Bool)

(assert (=> b!3325169 (= res!1348839 (< (size!27691 (_2!21201 lt!1130080)) (size!27691 (_2!21203 (v!36171 lt!1129347)))))))

(assert (=> b!3325169 (=> (not res!1348839) (not e!2067951))))

(assert (= (and d!935079 c!564882) b!3325165))

(assert (= (and d!935079 (not c!564882)) b!3325168))

(assert (= (and d!935079 c!564883) b!3325169))

(assert (= (and d!935079 (not c!564883)) b!3325167))

(assert (= (and b!3325169 res!1348839) b!3325166))

(declare-fun m!3665451 () Bool)

(assert (=> b!3325165 m!3665451))

(declare-fun m!3665453 () Bool)

(assert (=> b!3325166 m!3665453))

(declare-fun m!3665455 () Bool)

(assert (=> d!935079 m!3665455))

(declare-fun m!3665457 () Bool)

(assert (=> d!935079 m!3665457))

(declare-fun m!3665459 () Bool)

(assert (=> b!3325169 m!3665459))

(declare-fun m!3665461 () Bool)

(assert (=> b!3325169 m!3665461))

(assert (=> b!3324003 d!935079))

(declare-fun d!935081 () Bool)

(declare-fun lt!1130082 () Bool)

(assert (=> d!935081 (= lt!1130082 (isEmpty!20794 (list!13177 (_1!21199 lt!1129327))))))

(assert (=> d!935081 (= lt!1130082 (isEmpty!20795 (c!564522 (_1!21199 lt!1129327))))))

(assert (=> d!935081 (= (isEmpty!20789 (_1!21199 lt!1129327)) lt!1130082)))

(declare-fun bs!550866 () Bool)

(assert (= bs!550866 d!935081))

(assert (=> bs!550866 m!3663249))

(assert (=> bs!550866 m!3663249))

(declare-fun m!3665463 () Bool)

(assert (=> bs!550866 m!3665463))

(declare-fun m!3665465 () Bool)

(assert (=> bs!550866 m!3665465))

(assert (=> b!3323975 d!935081))

(declare-fun d!935083 () Bool)

(assert (=> d!935083 (= (list!13177 (_1!21199 lt!1129327)) (list!13181 (c!564522 (_1!21199 lt!1129327))))))

(declare-fun bs!550867 () Bool)

(assert (= bs!550867 d!935083))

(declare-fun m!3665467 () Bool)

(assert (=> bs!550867 m!3665467))

(assert (=> b!3323978 d!935083))

(assert (=> b!3323978 d!934745))

(assert (=> b!3323978 d!934747))

(declare-fun d!935085 () Bool)

(declare-fun res!1348840 () Bool)

(declare-fun e!2067954 () Bool)

(assert (=> d!935085 (=> res!1348840 e!2067954)))

(assert (=> d!935085 (= res!1348840 (not ((_ is Cons!36632) (t!256359 (t!256359 rules!2135)))))))

(assert (=> d!935085 (= (sepAndNonSepRulesDisjointChars!1518 rules!2135 (t!256359 (t!256359 rules!2135))) e!2067954)))

(declare-fun b!3325170 () Bool)

(declare-fun e!2067955 () Bool)

(assert (=> b!3325170 (= e!2067954 e!2067955)))

(declare-fun res!1348841 () Bool)

(assert (=> b!3325170 (=> (not res!1348841) (not e!2067955))))

(assert (=> b!3325170 (= res!1348841 (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 (t!256359 (t!256359 rules!2135))) rules!2135))))

(declare-fun b!3325171 () Bool)

(assert (=> b!3325171 (= e!2067955 (sepAndNonSepRulesDisjointChars!1518 rules!2135 (t!256359 (t!256359 (t!256359 rules!2135)))))))

(assert (= (and d!935085 (not res!1348840)) b!3325170))

(assert (= (and b!3325170 res!1348841) b!3325171))

(declare-fun m!3665469 () Bool)

(assert (=> b!3325170 m!3665469))

(declare-fun m!3665471 () Bool)

(assert (=> b!3325171 m!3665471))

(assert (=> b!3324050 d!935085))

(declare-fun d!935087 () Bool)

(assert (=> d!935087 (= (list!13185 (xs!14162 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) (innerList!11084 (xs!14162 (c!564522 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))

(assert (=> b!3324201 d!935087))

(declare-fun b!3325182 () Bool)

(declare-fun e!2067964 () Bool)

(assert (=> b!3325182 (= e!2067964 true)))

(declare-fun b!3325181 () Bool)

(declare-fun e!2067963 () Bool)

(assert (=> b!3325181 (= e!2067963 e!2067964)))

(declare-fun d!935089 () Bool)

(assert (=> d!935089 e!2067963))

(assert (= b!3325181 b!3325182))

(assert (= d!935089 b!3325181))

(declare-fun lambda!119655 () Int)

(declare-fun order!19153 () Int)

(declare-fun dynLambda!15099 (Int Int) Int)

(assert (=> b!3325182 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15099 order!19153 lambda!119655))))

(assert (=> b!3325182 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (dynLambda!15099 order!19153 lambda!119655))))

(declare-fun res!1348844 () Bool)

(declare-fun e!2067958 () Bool)

(assert (=> d!935089 (=> (not res!1348844) (not e!2067958))))

(declare-fun forall!7638 (List!36755 Int) Bool)

(declare-fun usedCharacters!602 (Regex!10083) List!36755)

(assert (=> d!935089 (= res!1348844 (forall!7638 (usedCharacters!602 (regex!5324 (h!42052 rules!2135))) lambda!119655))))

(assert (=> d!935089 (= (rulesUseDisjointChars!306 (h!42052 rules!2135) (h!42052 rules!2135)) e!2067958)))

(declare-fun b!3325174 () Bool)

(assert (=> b!3325174 (= e!2067958 (forall!7638 (usedCharacters!602 (regex!5324 (h!42052 rules!2135))) lambda!119655))))

(assert (= (and d!935089 res!1348844) b!3325174))

(declare-fun m!3665477 () Bool)

(assert (=> d!935089 m!3665477))

(assert (=> d!935089 m!3665477))

(declare-fun m!3665479 () Bool)

(assert (=> d!935089 m!3665479))

(assert (=> b!3325174 m!3665477))

(assert (=> b!3325174 m!3665477))

(assert (=> b!3325174 m!3665479))

(assert (=> b!3323875 d!935089))

(declare-fun b!3325188 () Bool)

(declare-fun e!2067969 () Bool)

(declare-fun e!2067968 () Bool)

(assert (=> b!3325188 (= e!2067969 e!2067968)))

(declare-fun res!1348846 () Bool)

(assert (=> b!3325188 (= res!1348846 (rulesUseDisjointChars!306 (h!42052 rules!2135) (h!42052 (t!256359 rules!2135))))))

(assert (=> b!3325188 (=> (not res!1348846) (not e!2067968))))

(declare-fun b!3325189 () Bool)

(declare-fun call!241345 () Bool)

(assert (=> b!3325189 (= e!2067968 call!241345)))

(declare-fun b!3325190 () Bool)

(declare-fun e!2067970 () Bool)

(assert (=> b!3325190 (= e!2067969 e!2067970)))

(declare-fun res!1348847 () Bool)

(assert (=> b!3325190 (= res!1348847 (not ((_ is Cons!36632) (t!256359 rules!2135))))))

(assert (=> b!3325190 (=> res!1348847 e!2067970)))

(declare-fun b!3325191 () Bool)

(assert (=> b!3325191 (= e!2067970 call!241345)))

(declare-fun d!935095 () Bool)

(declare-fun c!564890 () Bool)

(assert (=> d!935095 (= c!564890 (and ((_ is Cons!36632) (t!256359 rules!2135)) (not (= (isSeparator!5324 (h!42052 (t!256359 rules!2135))) (isSeparator!5324 (h!42052 rules!2135))))))))

(assert (=> d!935095 (= (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 rules!2135) (t!256359 rules!2135)) e!2067969)))

(declare-fun bm!241340 () Bool)

(assert (=> bm!241340 (= call!241345 (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 rules!2135) (t!256359 (t!256359 rules!2135))))))

(assert (= (and d!935095 c!564890) b!3325188))

(assert (= (and d!935095 (not c!564890)) b!3325190))

(assert (= (and b!3325188 res!1348846) b!3325189))

(assert (= (and b!3325190 (not res!1348847)) b!3325191))

(assert (= (or b!3325189 b!3325191) bm!241340))

(declare-fun m!3665493 () Bool)

(assert (=> b!3325188 m!3665493))

(declare-fun m!3665495 () Bool)

(assert (=> bm!241340 m!3665495))

(assert (=> bm!241309 d!935095))

(declare-fun d!935099 () Bool)

(declare-fun res!1348850 () Bool)

(declare-fun e!2067973 () Bool)

(assert (=> d!935099 (=> res!1348850 e!2067973)))

(assert (=> d!935099 (= res!1348850 ((_ is Nil!36633) (list!13177 lt!1129204)))))

(assert (=> d!935099 (= (forall!7629 (list!13177 lt!1129204) lambda!119627) e!2067973)))

(declare-fun b!3325196 () Bool)

(declare-fun e!2067974 () Bool)

(assert (=> b!3325196 (= e!2067973 e!2067974)))

(declare-fun res!1348851 () Bool)

(assert (=> b!3325196 (=> (not res!1348851) (not e!2067974))))

(assert (=> b!3325196 (= res!1348851 (dynLambda!15088 lambda!119627 (h!42053 (list!13177 lt!1129204))))))

(declare-fun b!3325197 () Bool)

(assert (=> b!3325197 (= e!2067974 (forall!7629 (t!256360 (list!13177 lt!1129204)) lambda!119627))))

(assert (= (and d!935099 (not res!1348850)) b!3325196))

(assert (= (and b!3325196 res!1348851) b!3325197))

(declare-fun b_lambda!93777 () Bool)

(assert (=> (not b_lambda!93777) (not b!3325196)))

(declare-fun m!3665511 () Bool)

(assert (=> b!3325196 m!3665511))

(declare-fun m!3665513 () Bool)

(assert (=> b!3325197 m!3665513))

(assert (=> d!934389 d!935099))

(assert (=> d!934389 d!934245))

(declare-fun d!935103 () Bool)

(assert (=> d!935103 (= (charsToBigInt!1 (text!39326 (value!172194 separatorToken!241))) (choose!644 (text!39326 (value!172194 separatorToken!241))))))

(declare-fun bs!550870 () Bool)

(assert (= bs!550870 d!935103))

(declare-fun m!3665515 () Bool)

(assert (=> bs!550870 m!3665515))

(assert (=> d!934493 d!935103))

(declare-fun d!935105 () Bool)

(assert (=> d!935105 (= (list!13180 (_2!21199 lt!1129588)) (list!13184 (c!564521 (_2!21199 lt!1129588))))))

(declare-fun bs!550871 () Bool)

(assert (= bs!550871 d!935105))

(declare-fun m!3665517 () Bool)

(assert (=> bs!550871 m!3665517))

(assert (=> b!3324189 d!935105))

(declare-fun d!935107 () Bool)

(assert (=> d!935107 (= (list!13180 (_2!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))) (list!13184 (c!564521 (_2!21199 (lexRec!715 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(declare-fun bs!550872 () Bool)

(assert (= bs!550872 d!935107))

(declare-fun m!3665519 () Bool)

(assert (=> bs!550872 m!3665519))

(assert (=> b!3324189 d!935107))

(assert (=> b!3324189 d!934801))

(declare-fun d!935109 () Bool)

(declare-fun c!564892 () Bool)

(assert (=> d!935109 (= c!564892 ((_ is Node!11023) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun e!2067975 () Bool)

(assert (=> d!935109 (= (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) e!2067975)))

(declare-fun b!3325198 () Bool)

(assert (=> b!3325198 (= e!2067975 (inv!49634 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun b!3325199 () Bool)

(declare-fun e!2067976 () Bool)

(assert (=> b!3325199 (= e!2067975 e!2067976)))

(declare-fun res!1348852 () Bool)

(assert (=> b!3325199 (= res!1348852 (not ((_ is Leaf!17296) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))))

(assert (=> b!3325199 (=> res!1348852 e!2067976)))

(declare-fun b!3325200 () Bool)

(assert (=> b!3325200 (= e!2067976 (inv!49635 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(assert (= (and d!935109 c!564892) b!3325198))

(assert (= (and d!935109 (not c!564892)) b!3325199))

(assert (= (and b!3325199 (not res!1348852)) b!3325200))

(declare-fun m!3665521 () Bool)

(assert (=> b!3325198 m!3665521))

(declare-fun m!3665523 () Bool)

(assert (=> b!3325200 m!3665523))

(assert (=> b!3324248 d!935109))

(declare-fun d!935111 () Bool)

(declare-fun c!564893 () Bool)

(assert (=> d!935111 (= c!564893 ((_ is Node!11023) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun e!2067977 () Bool)

(assert (=> d!935111 (= (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) e!2067977)))

(declare-fun b!3325201 () Bool)

(assert (=> b!3325201 (= e!2067977 (inv!49634 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun b!3325202 () Bool)

(declare-fun e!2067978 () Bool)

(assert (=> b!3325202 (= e!2067977 e!2067978)))

(declare-fun res!1348853 () Bool)

(assert (=> b!3325202 (= res!1348853 (not ((_ is Leaf!17296) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))))

(assert (=> b!3325202 (=> res!1348853 e!2067978)))

(declare-fun b!3325203 () Bool)

(assert (=> b!3325203 (= e!2067978 (inv!49635 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(assert (= (and d!935111 c!564893) b!3325201))

(assert (= (and d!935111 (not c!564893)) b!3325202))

(assert (= (and b!3325202 (not res!1348853)) b!3325203))

(declare-fun m!3665525 () Bool)

(assert (=> b!3325201 m!3665525))

(declare-fun m!3665527 () Bool)

(assert (=> b!3325203 m!3665527))

(assert (=> b!3324248 d!935111))

(declare-fun d!935113 () Bool)

(assert (=> d!935113 (= (inv!16 (value!172194 (h!42053 (t!256360 tokens!494)))) (= (charsToInt!0 (text!39325 (value!172194 (h!42053 (t!256360 tokens!494))))) (value!172185 (value!172194 (h!42053 (t!256360 tokens!494))))))))

(declare-fun bs!550873 () Bool)

(assert (= bs!550873 d!935113))

(declare-fun m!3665529 () Bool)

(assert (=> bs!550873 m!3665529))

(assert (=> b!3323888 d!935113))

(declare-fun d!935115 () Bool)

(declare-fun res!1348854 () Bool)

(declare-fun e!2067979 () Bool)

(assert (=> d!935115 (=> res!1348854 e!2067979)))

(assert (=> d!935115 (= res!1348854 ((_ is Nil!36633) (t!256360 (t!256360 tokens!494))))))

(assert (=> d!935115 (= (forall!7629 (t!256360 (t!256360 tokens!494)) lambda!119593) e!2067979)))

(declare-fun b!3325204 () Bool)

(declare-fun e!2067980 () Bool)

(assert (=> b!3325204 (= e!2067979 e!2067980)))

(declare-fun res!1348855 () Bool)

(assert (=> b!3325204 (=> (not res!1348855) (not e!2067980))))

(assert (=> b!3325204 (= res!1348855 (dynLambda!15088 lambda!119593 (h!42053 (t!256360 (t!256360 tokens!494)))))))

(declare-fun b!3325205 () Bool)

(assert (=> b!3325205 (= e!2067980 (forall!7629 (t!256360 (t!256360 (t!256360 tokens!494))) lambda!119593))))

(assert (= (and d!935115 (not res!1348854)) b!3325204))

(assert (= (and b!3325204 res!1348855) b!3325205))

(declare-fun b_lambda!93779 () Bool)

(assert (=> (not b_lambda!93779) (not b!3325204)))

(declare-fun m!3665531 () Bool)

(assert (=> b!3325204 m!3665531))

(declare-fun m!3665533 () Bool)

(assert (=> b!3325205 m!3665533))

(assert (=> b!3323986 d!935115))

(declare-fun d!935117 () Bool)

(declare-fun c!564894 () Bool)

(assert (=> d!935117 (= c!564894 ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))))))

(declare-fun e!2067981 () Bool)

(assert (=> d!935117 (= (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))) e!2067981)))

(declare-fun b!3325206 () Bool)

(assert (=> b!3325206 (= e!2067981 (inv!49634 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))))))

(declare-fun b!3325207 () Bool)

(declare-fun e!2067982 () Bool)

(assert (=> b!3325207 (= e!2067981 e!2067982)))

(declare-fun res!1348856 () Bool)

(assert (=> b!3325207 (= res!1348856 (not ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))))))))

(assert (=> b!3325207 (=> res!1348856 e!2067982)))

(declare-fun b!3325208 () Bool)

(assert (=> b!3325208 (= e!2067982 (inv!49635 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))))))

(assert (= (and d!935117 c!564894) b!3325206))

(assert (= (and d!935117 (not c!564894)) b!3325207))

(assert (= (and b!3325207 (not res!1348856)) b!3325208))

(declare-fun m!3665535 () Bool)

(assert (=> b!3325206 m!3665535))

(declare-fun m!3665537 () Bool)

(assert (=> b!3325208 m!3665537))

(assert (=> b!3324046 d!935117))

(declare-fun b!3325209 () Bool)

(declare-fun res!1348862 () Bool)

(declare-fun e!2067983 () Bool)

(assert (=> b!3325209 (=> (not res!1348862) (not e!2067983))))

(assert (=> b!3325209 (= res!1348862 (isBalanced!3305 (right!28878 (fromList!677 tokens!494))))))

(declare-fun b!3325211 () Bool)

(declare-fun e!2067984 () Bool)

(assert (=> b!3325211 (= e!2067984 e!2067983)))

(declare-fun res!1348859 () Bool)

(assert (=> b!3325211 (=> (not res!1348859) (not e!2067983))))

(assert (=> b!3325211 (= res!1348859 (<= (- 1) (- (height!1625 (left!28548 (fromList!677 tokens!494))) (height!1625 (right!28878 (fromList!677 tokens!494))))))))

(declare-fun b!3325212 () Bool)

(declare-fun res!1348858 () Bool)

(assert (=> b!3325212 (=> (not res!1348858) (not e!2067983))))

(assert (=> b!3325212 (= res!1348858 (not (isEmpty!20795 (left!28548 (fromList!677 tokens!494)))))))

(declare-fun b!3325213 () Bool)

(declare-fun res!1348857 () Bool)

(assert (=> b!3325213 (=> (not res!1348857) (not e!2067983))))

(assert (=> b!3325213 (= res!1348857 (isBalanced!3305 (left!28548 (fromList!677 tokens!494))))))

(declare-fun b!3325214 () Bool)

(assert (=> b!3325214 (= e!2067983 (not (isEmpty!20795 (right!28878 (fromList!677 tokens!494)))))))

(declare-fun d!935119 () Bool)

(declare-fun res!1348860 () Bool)

(assert (=> d!935119 (=> res!1348860 e!2067984)))

(assert (=> d!935119 (= res!1348860 (not ((_ is Node!11024) (fromList!677 tokens!494))))))

(assert (=> d!935119 (= (isBalanced!3305 (fromList!677 tokens!494)) e!2067984)))

(declare-fun b!3325210 () Bool)

(declare-fun res!1348861 () Bool)

(assert (=> b!3325210 (=> (not res!1348861) (not e!2067983))))

(assert (=> b!3325210 (= res!1348861 (<= (- (height!1625 (left!28548 (fromList!677 tokens!494))) (height!1625 (right!28878 (fromList!677 tokens!494)))) 1))))

(assert (= (and d!935119 (not res!1348860)) b!3325211))

(assert (= (and b!3325211 res!1348859) b!3325210))

(assert (= (and b!3325210 res!1348861) b!3325213))

(assert (= (and b!3325213 res!1348857) b!3325209))

(assert (= (and b!3325209 res!1348862) b!3325212))

(assert (= (and b!3325212 res!1348858) b!3325214))

(declare-fun m!3665539 () Bool)

(assert (=> b!3325211 m!3665539))

(declare-fun m!3665541 () Bool)

(assert (=> b!3325211 m!3665541))

(declare-fun m!3665543 () Bool)

(assert (=> b!3325209 m!3665543))

(declare-fun m!3665545 () Bool)

(assert (=> b!3325213 m!3665545))

(declare-fun m!3665547 () Bool)

(assert (=> b!3325212 m!3665547))

(declare-fun m!3665549 () Bool)

(assert (=> b!3325214 m!3665549))

(assert (=> b!3325210 m!3665539))

(assert (=> b!3325210 m!3665541))

(assert (=> b!3323862 d!935119))

(declare-fun d!935121 () Bool)

(declare-fun e!2067989 () Bool)

(assert (=> d!935121 e!2067989))

(declare-fun res!1348867 () Bool)

(assert (=> d!935121 (=> (not res!1348867) (not e!2067989))))

(declare-fun lt!1130097 () Conc!11024)

(assert (=> d!935121 (= res!1348867 (= (list!13181 lt!1130097) tokens!494))))

(declare-fun choose!19268 (List!36757) Conc!11024)

(assert (=> d!935121 (= lt!1130097 (choose!19268 tokens!494))))

(assert (=> d!935121 (= (fromList!677 tokens!494) lt!1130097)))

(declare-fun b!3325219 () Bool)

(assert (=> b!3325219 (= e!2067989 (isBalanced!3305 lt!1130097))))

(assert (= (and d!935121 res!1348867) b!3325219))

(declare-fun m!3665551 () Bool)

(assert (=> d!935121 m!3665551))

(declare-fun m!3665553 () Bool)

(assert (=> d!935121 m!3665553))

(declare-fun m!3665555 () Bool)

(assert (=> b!3325219 m!3665555))

(assert (=> b!3323862 d!935121))

(declare-fun d!935123 () Bool)

(assert (=> d!935123 (= (inv!49637 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) (<= (size!27691 (innerList!11083 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) 2147483647))))

(declare-fun bs!550874 () Bool)

(assert (= bs!550874 d!935123))

(declare-fun m!3665557 () Bool)

(assert (=> bs!550874 m!3665557))

(assert (=> b!3324282 d!935123))

(declare-fun bs!550875 () Bool)

(declare-fun d!935125 () Bool)

(assert (= bs!550875 (and d!935125 d!934377)))

(declare-fun lambda!119656 () Int)

(assert (=> bs!550875 (= (and (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (= (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (= lambda!119656 lambda!119615))))

(declare-fun bs!550876 () Bool)

(assert (= bs!550876 (and d!935125 d!934431)))

(assert (=> bs!550876 (= (and (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (= (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (h!42052 rules!2135))))) (= lambda!119656 lambda!119628))))

(declare-fun bs!550877 () Bool)

(assert (= bs!550877 (and d!935125 d!934549)))

(assert (=> bs!550877 (= (and (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) (= (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241))))) (= lambda!119656 lambda!119635))))

(assert (=> d!935125 true))

(assert (=> d!935125 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15096 order!19149 lambda!119656))))

(assert (=> d!935125 true))

(assert (=> d!935125 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15096 order!19149 lambda!119656))))

(assert (=> d!935125 (= (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (Forall!1303 lambda!119656))))

(declare-fun bs!550878 () Bool)

(assert (= bs!550878 d!935125))

(declare-fun m!3665575 () Bool)

(assert (=> bs!550878 m!3665575))

(assert (=> d!934577 d!935125))

(declare-fun b!3325225 () Bool)

(declare-fun e!2067993 () List!36757)

(assert (=> b!3325225 (= e!2067993 Nil!36633)))

(declare-fun b!3325226 () Bool)

(declare-fun e!2067994 () List!36757)

(assert (=> b!3325226 (= e!2067993 e!2067994)))

(declare-fun c!564898 () Bool)

(assert (=> b!3325226 (= c!564898 ((_ is Leaf!17297) (c!564522 lt!1129204)))))

(declare-fun b!3325227 () Bool)

(assert (=> b!3325227 (= e!2067994 (list!13185 (xs!14162 (c!564522 lt!1129204))))))

(declare-fun d!935129 () Bool)

(declare-fun c!564897 () Bool)

(assert (=> d!935129 (= c!564897 ((_ is Empty!11024) (c!564522 lt!1129204)))))

(assert (=> d!935129 (= (list!13181 (c!564522 lt!1129204)) e!2067993)))

(declare-fun b!3325228 () Bool)

(assert (=> b!3325228 (= e!2067994 (++!8897 (list!13181 (left!28548 (c!564522 lt!1129204))) (list!13181 (right!28878 (c!564522 lt!1129204)))))))

(assert (= (and d!935129 c!564897) b!3325225))

(assert (= (and d!935129 (not c!564897)) b!3325226))

(assert (= (and b!3325226 c!564898) b!3325227))

(assert (= (and b!3325226 (not c!564898)) b!3325228))

(declare-fun m!3665581 () Bool)

(assert (=> b!3325227 m!3665581))

(declare-fun m!3665583 () Bool)

(assert (=> b!3325228 m!3665583))

(declare-fun m!3665585 () Bool)

(assert (=> b!3325228 m!3665585))

(assert (=> b!3325228 m!3665583))

(assert (=> b!3325228 m!3665585))

(declare-fun m!3665587 () Bool)

(assert (=> b!3325228 m!3665587))

(assert (=> d!934427 d!935129))

(declare-fun b!3325233 () Bool)

(declare-fun e!2067997 () List!36755)

(assert (=> b!3325233 (= e!2067997 (++!8895 (list!13184 (left!28547 (c!564521 (_2!21199 lt!1129231)))) (list!13184 (right!28877 (c!564521 (_2!21199 lt!1129231))))))))

(declare-fun b!3325230 () Bool)

(declare-fun e!2067996 () List!36755)

(assert (=> b!3325230 (= e!2067996 Nil!36631)))

(declare-fun b!3325232 () Bool)

(assert (=> b!3325232 (= e!2067997 (list!13186 (xs!14161 (c!564521 (_2!21199 lt!1129231)))))))

(declare-fun b!3325231 () Bool)

(assert (=> b!3325231 (= e!2067996 e!2067997)))

(declare-fun c!564900 () Bool)

(assert (=> b!3325231 (= c!564900 ((_ is Leaf!17296) (c!564521 (_2!21199 lt!1129231))))))

(declare-fun d!935135 () Bool)

(declare-fun c!564899 () Bool)

(assert (=> d!935135 (= c!564899 ((_ is Empty!11023) (c!564521 (_2!21199 lt!1129231))))))

(assert (=> d!935135 (= (list!13184 (c!564521 (_2!21199 lt!1129231))) e!2067996)))

(assert (= (and d!935135 c!564899) b!3325230))

(assert (= (and d!935135 (not c!564899)) b!3325231))

(assert (= (and b!3325231 c!564900) b!3325232))

(assert (= (and b!3325231 (not c!564900)) b!3325233))

(declare-fun m!3665593 () Bool)

(assert (=> b!3325233 m!3665593))

(declare-fun m!3665595 () Bool)

(assert (=> b!3325233 m!3665595))

(assert (=> b!3325233 m!3665593))

(assert (=> b!3325233 m!3665595))

(declare-fun m!3665597 () Bool)

(assert (=> b!3325233 m!3665597))

(declare-fun m!3665599 () Bool)

(assert (=> b!3325232 m!3665599))

(assert (=> d!934495 d!935135))

(declare-fun d!935139 () Bool)

(assert (=> d!935139 (= (isEmpty!20788 (originalCharacters!6038 (h!42053 (t!256360 tokens!494)))) ((_ is Nil!36631) (originalCharacters!6038 (h!42053 (t!256360 tokens!494)))))))

(assert (=> d!934531 d!935139))

(declare-fun d!935141 () Bool)

(declare-fun lt!1130101 () Int)

(assert (=> d!935141 (= lt!1130101 (size!27692 (list!13177 (_1!21199 lt!1129327))))))

(assert (=> d!935141 (= lt!1130101 (size!27695 (c!564522 (_1!21199 lt!1129327))))))

(assert (=> d!935141 (= (size!27690 (_1!21199 lt!1129327)) lt!1130101)))

(declare-fun bs!550880 () Bool)

(assert (= bs!550880 d!935141))

(assert (=> bs!550880 m!3663249))

(assert (=> bs!550880 m!3663249))

(declare-fun m!3665601 () Bool)

(assert (=> bs!550880 m!3665601))

(declare-fun m!3665603 () Bool)

(assert (=> bs!550880 m!3665603))

(assert (=> d!934473 d!935141))

(declare-fun b!3325234 () Bool)

(declare-fun lt!1130116 () Option!7310)

(declare-fun lt!1130121 () tuple2!36130)

(assert (=> b!3325234 (= lt!1130121 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1130116))))))

(declare-fun e!2068001 () tuple2!36130)

(assert (=> b!3325234 (= e!2068001 (tuple2!36131 (prepend!1211 (_1!21199 lt!1130121) (_1!21205 (v!36173 lt!1130116))) (_2!21199 lt!1130121)))))

(declare-fun b!3325235 () Bool)

(declare-fun e!2067998 () tuple2!36130)

(assert (=> b!3325235 (= e!2067998 (tuple2!36131 (BalanceConc!21663 Empty!11024) (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(declare-fun lt!1130114 () Option!7310)

(declare-fun b!3325236 () Bool)

(declare-fun lt!1130133 () BalanceConc!21660)

(assert (=> b!3325236 (= e!2067998 (lexTailRecV2!982 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) lt!1130133 (_2!21205 (v!36173 lt!1130114)) (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1130114)))))))

(declare-fun lt!1130117 () tuple2!36130)

(assert (=> b!3325236 (= lt!1130117 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1130114))))))

(declare-fun lt!1130108 () List!36755)

(assert (=> b!3325236 (= lt!1130108 (list!13180 (BalanceConc!21661 Empty!11023)))))

(declare-fun lt!1130104 () List!36755)

(assert (=> b!3325236 (= lt!1130104 (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1130114)))))))

(declare-fun lt!1130119 () List!36755)

(assert (=> b!3325236 (= lt!1130119 (list!13180 (_2!21205 (v!36173 lt!1130114))))))

(declare-fun lt!1130111 () Unit!51643)

(assert (=> b!3325236 (= lt!1130111 (lemmaConcatAssociativity!1847 lt!1130108 lt!1130104 lt!1130119))))

(assert (=> b!3325236 (= (++!8895 (++!8895 lt!1130108 lt!1130104) lt!1130119) (++!8895 lt!1130108 (++!8895 lt!1130104 lt!1130119)))))

(declare-fun lt!1130120 () Unit!51643)

(assert (=> b!3325236 (= lt!1130120 lt!1130111)))

(declare-fun lt!1130109 () Option!7310)

(assert (=> b!3325236 (= lt!1130109 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(declare-fun c!564902 () Bool)

(assert (=> b!3325236 (= c!564902 ((_ is Some!7309) lt!1130109))))

(declare-fun e!2068000 () tuple2!36130)

(assert (=> b!3325236 (= (lexRec!715 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))) e!2068000)))

(declare-fun lt!1130107 () Unit!51643)

(declare-fun Unit!51652 () Unit!51643)

(assert (=> b!3325236 (= lt!1130107 Unit!51652)))

(declare-fun lt!1130130 () List!36757)

(assert (=> b!3325236 (= lt!1130130 (list!13177 (BalanceConc!21663 Empty!11024)))))

(declare-fun lt!1130122 () List!36757)

(assert (=> b!3325236 (= lt!1130122 (Cons!36633 (_1!21205 (v!36173 lt!1130114)) Nil!36633))))

(declare-fun lt!1130106 () List!36757)

(assert (=> b!3325236 (= lt!1130106 (list!13177 (_1!21199 lt!1130117)))))

(declare-fun lt!1130125 () Unit!51643)

(assert (=> b!3325236 (= lt!1130125 (lemmaConcatAssociativity!1848 lt!1130130 lt!1130122 lt!1130106))))

(assert (=> b!3325236 (= (++!8897 (++!8897 lt!1130130 lt!1130122) lt!1130106) (++!8897 lt!1130130 (++!8897 lt!1130122 lt!1130106)))))

(declare-fun lt!1130105 () Unit!51643)

(assert (=> b!3325236 (= lt!1130105 lt!1130125)))

(declare-fun lt!1130129 () List!36755)

(assert (=> b!3325236 (= lt!1130129 (++!8895 (list!13180 (BalanceConc!21661 Empty!11023)) (list!13180 (charsOf!3338 (_1!21205 (v!36173 lt!1130114))))))))

(declare-fun lt!1130127 () List!36755)

(assert (=> b!3325236 (= lt!1130127 (list!13180 (_2!21205 (v!36173 lt!1130114))))))

(declare-fun lt!1130102 () List!36757)

(assert (=> b!3325236 (= lt!1130102 (list!13177 (append!907 (BalanceConc!21663 Empty!11024) (_1!21205 (v!36173 lt!1130114)))))))

(declare-fun lt!1130131 () Unit!51643)

(assert (=> b!3325236 (= lt!1130131 (lemmaLexThenLexPrefix!480 thiss!18206 rules!2135 lt!1130129 lt!1130127 lt!1130102 (list!13177 (_1!21199 lt!1130117)) (list!13180 (_2!21199 lt!1130117))))))

(assert (=> b!3325236 (= (lexList!1372 thiss!18206 rules!2135 lt!1130129) (tuple2!36135 lt!1130102 Nil!36631))))

(declare-fun lt!1130113 () Unit!51643)

(assert (=> b!3325236 (= lt!1130113 lt!1130131)))

(declare-fun lt!1130118 () BalanceConc!21660)

(assert (=> b!3325236 (= lt!1130118 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1130114)))))))

(assert (=> b!3325236 (= lt!1130116 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 lt!1130118))))

(declare-fun c!564903 () Bool)

(assert (=> b!3325236 (= c!564903 ((_ is Some!7309) lt!1130116))))

(assert (=> b!3325236 (= (lexRec!715 thiss!18206 rules!2135 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1130114))))) e!2068001)))

(declare-fun lt!1130103 () Unit!51643)

(declare-fun Unit!51653 () Unit!51643)

(assert (=> b!3325236 (= lt!1130103 Unit!51653)))

(assert (=> b!3325236 (= lt!1130133 (++!8896 (BalanceConc!21661 Empty!11023) (charsOf!3338 (_1!21205 (v!36173 lt!1130114)))))))

(declare-fun lt!1130126 () List!36755)

(assert (=> b!3325236 (= lt!1130126 (list!13180 lt!1130133))))

(declare-fun lt!1130115 () List!36755)

(assert (=> b!3325236 (= lt!1130115 (list!13180 (_2!21205 (v!36173 lt!1130114))))))

(declare-fun lt!1130124 () Unit!51643)

(assert (=> b!3325236 (= lt!1130124 (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1130126 lt!1130115))))

(assert (=> b!3325236 (isSuffix!877 lt!1130115 (++!8895 lt!1130126 lt!1130115))))

(declare-fun lt!1130132 () Unit!51643)

(assert (=> b!3325236 (= lt!1130132 lt!1130124)))

(declare-fun b!3325237 () Bool)

(assert (=> b!3325237 (= e!2068001 (tuple2!36131 (BalanceConc!21663 Empty!11024) lt!1130118))))

(declare-fun b!3325238 () Bool)

(assert (=> b!3325238 (= e!2068000 (tuple2!36131 (BalanceConc!21663 Empty!11024) (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(declare-fun d!935143 () Bool)

(declare-fun e!2067999 () Bool)

(assert (=> d!935143 e!2067999))

(declare-fun res!1348872 () Bool)

(assert (=> d!935143 (=> (not res!1348872) (not e!2067999))))

(declare-fun lt!1130134 () tuple2!36130)

(assert (=> d!935143 (= res!1348872 (= (list!13177 (_1!21199 lt!1130134)) (list!13177 (_1!21199 (lexRec!715 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(assert (=> d!935143 (= lt!1130134 e!2067998)))

(declare-fun c!564901 () Bool)

(assert (=> d!935143 (= c!564901 ((_ is Some!7309) lt!1130114))))

(assert (=> d!935143 (= lt!1130114 (maxPrefixZipperSequenceV2!502 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(declare-fun lt!1130112 () Unit!51643)

(declare-fun lt!1130135 () Unit!51643)

(assert (=> d!935143 (= lt!1130112 lt!1130135)))

(declare-fun lt!1130123 () List!36755)

(declare-fun lt!1130110 () List!36755)

(assert (=> d!935143 (isSuffix!877 lt!1130123 (++!8895 lt!1130110 lt!1130123))))

(assert (=> d!935143 (= lt!1130135 (lemmaConcatTwoListThenFSndIsSuffix!562 lt!1130110 lt!1130123))))

(assert (=> d!935143 (= lt!1130123 (list!13180 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))

(assert (=> d!935143 (= lt!1130110 (list!13180 (BalanceConc!21661 Empty!11023)))))

(assert (=> d!935143 (= (lexTailRecV2!982 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) (BalanceConc!21661 Empty!11023) (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)) (BalanceConc!21663 Empty!11024)) lt!1130134)))

(declare-fun b!3325239 () Bool)

(assert (=> b!3325239 (= e!2067999 (= (list!13180 (_2!21199 lt!1130134)) (list!13180 (_2!21199 (lexRec!715 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(declare-fun b!3325240 () Bool)

(declare-fun lt!1130128 () tuple2!36130)

(assert (=> b!3325240 (= lt!1130128 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1130109))))))

(assert (=> b!3325240 (= e!2068000 (tuple2!36131 (prepend!1211 (_1!21199 lt!1130128) (_1!21205 (v!36173 lt!1130109))) (_2!21199 lt!1130128)))))

(assert (= (and d!935143 c!564901) b!3325236))

(assert (= (and d!935143 (not c!564901)) b!3325235))

(assert (= (and b!3325236 c!564902) b!3325240))

(assert (= (and b!3325236 (not c!564902)) b!3325238))

(assert (= (and b!3325236 c!564903) b!3325234))

(assert (= (and b!3325236 (not c!564903)) b!3325237))

(assert (= (and d!935143 res!1348872) b!3325239))

(declare-fun m!3665605 () Bool)

(assert (=> b!3325234 m!3665605))

(declare-fun m!3665607 () Bool)

(assert (=> b!3325234 m!3665607))

(declare-fun m!3665609 () Bool)

(assert (=> b!3325240 m!3665609))

(declare-fun m!3665611 () Bool)

(assert (=> b!3325240 m!3665611))

(assert (=> b!3325236 m!3662709))

(declare-fun m!3665613 () Bool)

(assert (=> b!3325236 m!3665613))

(declare-fun m!3665615 () Bool)

(assert (=> b!3325236 m!3665615))

(declare-fun m!3665617 () Bool)

(assert (=> b!3325236 m!3665617))

(declare-fun m!3665619 () Bool)

(assert (=> b!3325236 m!3665619))

(declare-fun m!3665621 () Bool)

(assert (=> b!3325236 m!3665621))

(declare-fun m!3665623 () Bool)

(assert (=> b!3325236 m!3665623))

(declare-fun m!3665625 () Bool)

(assert (=> b!3325236 m!3665625))

(declare-fun m!3665627 () Bool)

(assert (=> b!3325236 m!3665627))

(assert (=> b!3325236 m!3665621))

(declare-fun m!3665629 () Bool)

(assert (=> b!3325236 m!3665629))

(declare-fun m!3665631 () Bool)

(assert (=> b!3325236 m!3665631))

(declare-fun m!3665633 () Bool)

(assert (=> b!3325236 m!3665633))

(declare-fun m!3665635 () Bool)

(assert (=> b!3325236 m!3665635))

(declare-fun m!3665637 () Bool)

(assert (=> b!3325236 m!3665637))

(declare-fun m!3665639 () Bool)

(assert (=> b!3325236 m!3665639))

(declare-fun m!3665641 () Bool)

(assert (=> b!3325236 m!3665641))

(declare-fun m!3665643 () Bool)

(assert (=> b!3325236 m!3665643))

(assert (=> b!3325236 m!3665623))

(declare-fun m!3665645 () Bool)

(assert (=> b!3325236 m!3665645))

(declare-fun m!3665647 () Bool)

(assert (=> b!3325236 m!3665647))

(assert (=> b!3325236 m!3663611))

(assert (=> b!3325236 m!3665613))

(assert (=> b!3325236 m!3665613))

(declare-fun m!3665649 () Bool)

(assert (=> b!3325236 m!3665649))

(assert (=> b!3325236 m!3665643))

(declare-fun m!3665651 () Bool)

(assert (=> b!3325236 m!3665651))

(declare-fun m!3665653 () Bool)

(assert (=> b!3325236 m!3665653))

(assert (=> b!3325236 m!3665637))

(declare-fun m!3665655 () Bool)

(assert (=> b!3325236 m!3665655))

(declare-fun m!3665657 () Bool)

(assert (=> b!3325236 m!3665657))

(assert (=> b!3325236 m!3663359))

(assert (=> b!3325236 m!3663359))

(declare-fun m!3665659 () Bool)

(assert (=> b!3325236 m!3665659))

(declare-fun m!3665661 () Bool)

(assert (=> b!3325236 m!3665661))

(assert (=> b!3325236 m!3665641))

(assert (=> b!3325236 m!3665655))

(declare-fun m!3665663 () Bool)

(assert (=> b!3325236 m!3665663))

(assert (=> b!3325236 m!3665625))

(declare-fun m!3665665 () Bool)

(assert (=> b!3325236 m!3665665))

(assert (=> b!3325236 m!3662709))

(declare-fun m!3665667 () Bool)

(assert (=> b!3325236 m!3665667))

(assert (=> b!3325236 m!3662709))

(declare-fun m!3665669 () Bool)

(assert (=> b!3325236 m!3665669))

(assert (=> b!3325236 m!3665641))

(assert (=> b!3325236 m!3665659))

(assert (=> b!3325236 m!3665635))

(declare-fun m!3665671 () Bool)

(assert (=> b!3325236 m!3665671))

(declare-fun m!3665673 () Bool)

(assert (=> b!3325236 m!3665673))

(assert (=> b!3325236 m!3665671))

(declare-fun m!3665675 () Bool)

(assert (=> b!3325239 m!3665675))

(assert (=> b!3325239 m!3662709))

(assert (=> b!3325239 m!3665667))

(declare-fun m!3665677 () Bool)

(assert (=> b!3325239 m!3665677))

(declare-fun m!3665679 () Bool)

(assert (=> d!935143 m!3665679))

(declare-fun m!3665681 () Bool)

(assert (=> d!935143 m!3665681))

(assert (=> d!935143 m!3662709))

(assert (=> d!935143 m!3665667))

(declare-fun m!3665683 () Bool)

(assert (=> d!935143 m!3665683))

(assert (=> d!935143 m!3662709))

(assert (=> d!935143 m!3663251))

(assert (=> d!935143 m!3663359))

(declare-fun m!3665685 () Bool)

(assert (=> d!935143 m!3665685))

(declare-fun m!3665687 () Bool)

(assert (=> d!935143 m!3665687))

(assert (=> d!935143 m!3665685))

(assert (=> d!935143 m!3662709))

(assert (=> d!935143 m!3662709))

(declare-fun m!3665689 () Bool)

(assert (=> d!935143 m!3665689))

(assert (=> d!934473 d!935143))

(declare-fun b!3325265 () Bool)

(declare-fun res!1348897 () Bool)

(declare-fun e!2068009 () Bool)

(assert (=> b!3325265 (=> (not res!1348897) (not e!2068009))))

(assert (=> b!3325265 (= res!1348897 (isBalanced!3307 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun b!3325266 () Bool)

(assert (=> b!3325266 (= e!2068009 (not (isEmpty!20792 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))))

(declare-fun b!3325267 () Bool)

(declare-fun res!1348899 () Bool)

(assert (=> b!3325267 (=> (not res!1348899) (not e!2068009))))

(assert (=> b!3325267 (= res!1348899 (not (isEmpty!20792 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))))

(declare-fun b!3325268 () Bool)

(declare-fun e!2068010 () Bool)

(assert (=> b!3325268 (= e!2068010 e!2068009)))

(declare-fun res!1348898 () Bool)

(assert (=> b!3325268 (=> (not res!1348898) (not e!2068009))))

(assert (=> b!3325268 (= res!1348898 (<= (- 1) (- (height!1626 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) (height!1626 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))))

(declare-fun d!935145 () Bool)

(declare-fun res!1348901 () Bool)

(assert (=> d!935145 (=> res!1348901 e!2068010)))

(assert (=> d!935145 (= res!1348901 (not ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(assert (=> d!935145 (= (isBalanced!3307 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) e!2068010)))

(declare-fun b!3325269 () Bool)

(declare-fun res!1348902 () Bool)

(assert (=> b!3325269 (=> (not res!1348902) (not e!2068009))))

(assert (=> b!3325269 (= res!1348902 (isBalanced!3307 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun b!3325270 () Bool)

(declare-fun res!1348900 () Bool)

(assert (=> b!3325270 (=> (not res!1348900) (not e!2068009))))

(assert (=> b!3325270 (= res!1348900 (<= (- (height!1626 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) (height!1626 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) 1))))

(assert (= (and d!935145 (not res!1348901)) b!3325268))

(assert (= (and b!3325268 res!1348898) b!3325270))

(assert (= (and b!3325270 res!1348900) b!3325265))

(assert (= (and b!3325265 res!1348897) b!3325269))

(assert (= (and b!3325269 res!1348902) b!3325267))

(assert (= (and b!3325267 res!1348899) b!3325266))

(declare-fun m!3665707 () Bool)

(assert (=> b!3325266 m!3665707))

(declare-fun m!3665709 () Bool)

(assert (=> b!3325269 m!3665709))

(assert (=> b!3325270 m!3664079))

(assert (=> b!3325270 m!3664081))

(declare-fun m!3665711 () Bool)

(assert (=> b!3325265 m!3665711))

(declare-fun m!3665713 () Bool)

(assert (=> b!3325267 m!3665713))

(assert (=> b!3325268 m!3664079))

(assert (=> b!3325268 m!3664081))

(assert (=> d!934547 d!935145))

(declare-fun d!935149 () Bool)

(declare-fun c!564908 () Bool)

(assert (=> d!935149 (= c!564908 ((_ is Nil!36633) (t!256360 lt!1129228)))))

(declare-fun e!2068013 () (InoxSet Token!10014))

(assert (=> d!935149 (= (content!4997 (t!256360 lt!1129228)) e!2068013)))

(declare-fun b!3325275 () Bool)

(assert (=> b!3325275 (= e!2068013 ((as const (Array Token!10014 Bool)) false))))

(declare-fun b!3325276 () Bool)

(assert (=> b!3325276 (= e!2068013 ((_ map or) (store ((as const (Array Token!10014 Bool)) false) (h!42053 (t!256360 lt!1129228)) true) (content!4997 (t!256360 (t!256360 lt!1129228)))))))

(assert (= (and d!935149 c!564908) b!3325275))

(assert (= (and d!935149 (not c!564908)) b!3325276))

(declare-fun m!3665721 () Bool)

(assert (=> b!3325276 m!3665721))

(declare-fun m!3665723 () Bool)

(assert (=> b!3325276 m!3665723))

(assert (=> b!3324016 d!935149))

(declare-fun d!935153 () Bool)

(assert (=> d!935153 (= (isEmpty!20794 (list!13177 (_1!21199 lt!1129231))) ((_ is Nil!36633) (list!13177 (_1!21199 lt!1129231))))))

(assert (=> d!934573 d!935153))

(assert (=> d!934573 d!934519))

(declare-fun d!935155 () Bool)

(declare-fun lt!1130142 () Bool)

(assert (=> d!935155 (= lt!1130142 (isEmpty!20794 (list!13181 (c!564522 (_1!21199 lt!1129231)))))))

(assert (=> d!935155 (= lt!1130142 (= (size!27695 (c!564522 (_1!21199 lt!1129231))) 0))))

(assert (=> d!935155 (= (isEmpty!20795 (c!564522 (_1!21199 lt!1129231))) lt!1130142)))

(declare-fun bs!550884 () Bool)

(assert (= bs!550884 d!935155))

(assert (=> bs!550884 m!3663397))

(assert (=> bs!550884 m!3663397))

(declare-fun m!3665745 () Bool)

(assert (=> bs!550884 m!3665745))

(assert (=> bs!550884 m!3663451))

(assert (=> d!934573 d!935155))

(declare-fun bs!550887 () Bool)

(declare-fun d!935171 () Bool)

(assert (= bs!550887 (and d!935171 d!934527)))

(declare-fun lambda!119659 () Int)

(assert (=> bs!550887 (= lambda!119659 lambda!119633)))

(assert (=> d!935171 true))

(declare-fun lt!1130147 () Bool)

(assert (=> d!935171 (= lt!1130147 (forall!7634 rules!2135 lambda!119659))))

(declare-fun e!2068033 () Bool)

(assert (=> d!935171 (= lt!1130147 e!2068033)))

(declare-fun res!1348918 () Bool)

(assert (=> d!935171 (=> res!1348918 e!2068033)))

(assert (=> d!935171 (= res!1348918 (not ((_ is Cons!36632) rules!2135)))))

(assert (=> d!935171 (= (rulesValidInductive!1817 thiss!18206 rules!2135) lt!1130147)))

(declare-fun b!3325304 () Bool)

(declare-fun e!2068034 () Bool)

(assert (=> b!3325304 (= e!2068033 e!2068034)))

(declare-fun res!1348919 () Bool)

(assert (=> b!3325304 (=> (not res!1348919) (not e!2068034))))

(declare-fun ruleValid!1678 (LexerInterface!4913 Rule!10448) Bool)

(assert (=> b!3325304 (= res!1348919 (ruleValid!1678 thiss!18206 (h!42052 rules!2135)))))

(declare-fun b!3325305 () Bool)

(assert (=> b!3325305 (= e!2068034 (rulesValidInductive!1817 thiss!18206 (t!256359 rules!2135)))))

(assert (= (and d!935171 (not res!1348918)) b!3325304))

(assert (= (and b!3325304 res!1348919) b!3325305))

(declare-fun m!3665759 () Bool)

(assert (=> d!935171 m!3665759))

(declare-fun m!3665761 () Bool)

(assert (=> b!3325304 m!3665761))

(declare-fun m!3665763 () Bool)

(assert (=> b!3325305 m!3665763))

(assert (=> d!934527 d!935171))

(declare-fun d!935181 () Bool)

(declare-fun res!1348925 () Bool)

(declare-fun e!2068041 () Bool)

(assert (=> d!935181 (=> res!1348925 e!2068041)))

(assert (=> d!935181 (= res!1348925 ((_ is Nil!36632) rules!2135))))

(assert (=> d!935181 (= (forall!7634 rules!2135 lambda!119633) e!2068041)))

(declare-fun b!3325313 () Bool)

(declare-fun e!2068042 () Bool)

(assert (=> b!3325313 (= e!2068041 e!2068042)))

(declare-fun res!1348926 () Bool)

(assert (=> b!3325313 (=> (not res!1348926) (not e!2068042))))

(declare-fun dynLambda!15100 (Int Rule!10448) Bool)

(assert (=> b!3325313 (= res!1348926 (dynLambda!15100 lambda!119633 (h!42052 rules!2135)))))

(declare-fun b!3325314 () Bool)

(assert (=> b!3325314 (= e!2068042 (forall!7634 (t!256359 rules!2135) lambda!119633))))

(assert (= (and d!935181 (not res!1348925)) b!3325313))

(assert (= (and b!3325313 res!1348926) b!3325314))

(declare-fun b_lambda!93781 () Bool)

(assert (=> (not b_lambda!93781) (not b!3325313)))

(declare-fun m!3665773 () Bool)

(assert (=> b!3325313 m!3665773))

(declare-fun m!3665775 () Bool)

(assert (=> b!3325314 m!3665775))

(assert (=> d!934527 d!935181))

(declare-fun d!935185 () Bool)

(assert (=> d!935185 (= (isEmpty!20788 (list!13180 (_2!21199 lt!1129221))) ((_ is Nil!36631) (list!13180 (_2!21199 lt!1129221))))))

(assert (=> d!934443 d!935185))

(declare-fun d!935187 () Bool)

(assert (=> d!935187 (= (list!13180 (_2!21199 lt!1129221)) (list!13184 (c!564521 (_2!21199 lt!1129221))))))

(declare-fun bs!550888 () Bool)

(assert (= bs!550888 d!935187))

(declare-fun m!3665777 () Bool)

(assert (=> bs!550888 m!3665777))

(assert (=> d!934443 d!935187))

(declare-fun d!935189 () Bool)

(declare-fun lt!1130151 () Bool)

(assert (=> d!935189 (= lt!1130151 (isEmpty!20788 (list!13184 (c!564521 (_2!21199 lt!1129221)))))))

(assert (=> d!935189 (= lt!1130151 (= (size!27697 (c!564521 (_2!21199 lt!1129221))) 0))))

(assert (=> d!935189 (= (isEmpty!20792 (c!564521 (_2!21199 lt!1129221))) lt!1130151)))

(declare-fun bs!550889 () Bool)

(assert (= bs!550889 d!935189))

(assert (=> bs!550889 m!3665777))

(assert (=> bs!550889 m!3665777))

(declare-fun m!3665779 () Bool)

(assert (=> bs!550889 m!3665779))

(declare-fun m!3665781 () Bool)

(assert (=> bs!550889 m!3665781))

(assert (=> d!934443 d!935189))

(declare-fun d!935191 () Bool)

(declare-fun res!1348927 () Bool)

(declare-fun e!2068043 () Bool)

(assert (=> d!935191 (=> (not res!1348927) (not e!2068043))))

(assert (=> d!935191 (= res!1348927 (<= (size!27691 (list!13186 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) 512))))

(assert (=> d!935191 (= (inv!49635 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) e!2068043)))

(declare-fun b!3325315 () Bool)

(declare-fun res!1348928 () Bool)

(assert (=> b!3325315 (=> (not res!1348928) (not e!2068043))))

(assert (=> b!3325315 (= res!1348928 (= (csize!22277 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) (size!27691 (list!13186 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))))

(declare-fun b!3325316 () Bool)

(assert (=> b!3325316 (= e!2068043 (and (> (csize!22277 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) 0) (<= (csize!22277 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))) 512)))))

(assert (= (and d!935191 res!1348927) b!3325315))

(assert (= (and b!3325315 res!1348928) b!3325316))

(assert (=> d!935191 m!3665443))

(assert (=> d!935191 m!3665443))

(declare-fun m!3665783 () Bool)

(assert (=> d!935191 m!3665783))

(assert (=> b!3325315 m!3665443))

(assert (=> b!3325315 m!3665443))

(assert (=> b!3325315 m!3665783))

(assert (=> b!3324010 d!935191))

(declare-fun d!935193 () Bool)

(assert (=> d!935193 (= (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))) (list!13184 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))))))

(declare-fun bs!550890 () Bool)

(assert (= bs!550890 d!935193))

(declare-fun m!3665785 () Bool)

(assert (=> bs!550890 m!3665785))

(assert (=> b!3324044 d!935193))

(declare-fun d!935195 () Bool)

(declare-fun c!564919 () Bool)

(assert (=> d!935195 (= c!564919 ((_ is Nil!36630) (text!39327 (value!172194 (h!42053 tokens!494)))))))

(declare-fun e!2068046 () Int)

(assert (=> d!935195 (= (charsToBigInt!0 (text!39327 (value!172194 (h!42053 tokens!494))) 0) e!2068046)))

(declare-fun b!3325321 () Bool)

(assert (=> b!3325321 (= e!2068046 0)))

(declare-fun b!3325322 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!3325322 (= e!2068046 (charsToBigInt!0 (t!256357 (text!39327 (value!172194 (h!42053 tokens!494)))) (+ (* 0 10) (charToBigInt!0 (h!42050 (text!39327 (value!172194 (h!42053 tokens!494))))))))))

(assert (= (and d!935195 c!564919) b!3325321))

(assert (= (and d!935195 (not c!564919)) b!3325322))

(declare-fun m!3665787 () Bool)

(assert (=> b!3325322 m!3665787))

(declare-fun m!3665789 () Bool)

(assert (=> b!3325322 m!3665789))

(assert (=> d!934387 d!935195))

(declare-fun d!935197 () Bool)

(declare-fun lt!1130154 () Int)

(assert (=> d!935197 (>= lt!1130154 0)))

(declare-fun e!2068049 () Int)

(assert (=> d!935197 (= lt!1130154 e!2068049)))

(declare-fun c!564920 () Bool)

(assert (=> d!935197 (= c!564920 ((_ is Nil!36633) (_1!21201 lt!1129348)))))

(assert (=> d!935197 (= (size!27692 (_1!21201 lt!1129348)) lt!1130154)))

(declare-fun b!3325327 () Bool)

(assert (=> b!3325327 (= e!2068049 0)))

(declare-fun b!3325328 () Bool)

(assert (=> b!3325328 (= e!2068049 (+ 1 (size!27692 (t!256360 (_1!21201 lt!1129348)))))))

(assert (= (and d!935197 c!564920) b!3325327))

(assert (= (and d!935197 (not c!564920)) b!3325328))

(declare-fun m!3665791 () Bool)

(assert (=> b!3325328 m!3665791))

(assert (=> d!934497 d!935197))

(declare-fun b!3325426 () Bool)

(declare-fun res!1348976 () Bool)

(declare-fun e!2068104 () Bool)

(assert (=> b!3325426 (=> (not res!1348976) (not e!2068104))))

(declare-fun lt!1130193 () Option!7308)

(declare-fun matchR!4683 (Regex!10083 List!36755) Bool)

(assert (=> b!3325426 (= res!1348976 (matchR!4683 (regex!5324 (rule!7846 (_1!21203 (get!11677 lt!1130193)))) (list!13180 (charsOf!3338 (_1!21203 (get!11677 lt!1130193))))))))

(declare-fun d!935199 () Bool)

(declare-fun e!2068103 () Bool)

(assert (=> d!935199 e!2068103))

(declare-fun res!1348971 () Bool)

(assert (=> d!935199 (=> res!1348971 e!2068103)))

(declare-fun isEmpty!20797 (Option!7308) Bool)

(assert (=> d!935199 (= res!1348971 (isEmpty!20797 lt!1130193))))

(declare-fun e!2068105 () Option!7308)

(assert (=> d!935199 (= lt!1130193 e!2068105)))

(declare-fun c!564950 () Bool)

(assert (=> d!935199 (= c!564950 (and ((_ is Cons!36632) rules!2135) ((_ is Nil!36632) (t!256359 rules!2135))))))

(declare-fun lt!1130191 () Unit!51643)

(declare-fun lt!1130192 () Unit!51643)

(assert (=> d!935199 (= lt!1130191 lt!1130192)))

(assert (=> d!935199 (isPrefix!2812 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))

(assert (=> d!935199 (= lt!1130192 (lemmaIsPrefixRefl!1771 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(assert (=> d!935199 (rulesValidInductive!1817 thiss!18206 rules!2135)))

(assert (=> d!935199 (= (maxPrefix!2519 thiss!18206 rules!2135 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) lt!1130193)))

(declare-fun bm!241350 () Bool)

(declare-fun call!241355 () Option!7308)

(declare-fun maxPrefixOneRule!1654 (LexerInterface!4913 Rule!10448 List!36755) Option!7308)

(assert (=> bm!241350 (= call!241355 (maxPrefixOneRule!1654 thiss!18206 (h!42052 rules!2135) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun b!3325427 () Bool)

(declare-fun res!1348975 () Bool)

(assert (=> b!3325427 (=> (not res!1348975) (not e!2068104))))

(assert (=> b!3325427 (= res!1348975 (= (++!8895 (list!13180 (charsOf!3338 (_1!21203 (get!11677 lt!1130193)))) (_2!21203 (get!11677 lt!1130193))) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun b!3325428 () Bool)

(declare-fun contains!6641 (List!36756 Rule!10448) Bool)

(assert (=> b!3325428 (= e!2068104 (contains!6641 rules!2135 (rule!7846 (_1!21203 (get!11677 lt!1130193)))))))

(declare-fun b!3325429 () Bool)

(declare-fun lt!1130195 () Option!7308)

(declare-fun lt!1130194 () Option!7308)

(assert (=> b!3325429 (= e!2068105 (ite (and ((_ is None!7307) lt!1130195) ((_ is None!7307) lt!1130194)) None!7307 (ite ((_ is None!7307) lt!1130194) lt!1130195 (ite ((_ is None!7307) lt!1130195) lt!1130194 (ite (>= (size!27685 (_1!21203 (v!36171 lt!1130195))) (size!27685 (_1!21203 (v!36171 lt!1130194)))) lt!1130195 lt!1130194)))))))

(assert (=> b!3325429 (= lt!1130195 call!241355)))

(assert (=> b!3325429 (= lt!1130194 (maxPrefix!2519 thiss!18206 (t!256359 rules!2135) (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))

(declare-fun b!3325430 () Bool)

(assert (=> b!3325430 (= e!2068103 e!2068104)))

(declare-fun res!1348977 () Bool)

(assert (=> b!3325430 (=> (not res!1348977) (not e!2068104))))

(assert (=> b!3325430 (= res!1348977 (isDefined!5658 lt!1130193))))

(declare-fun b!3325431 () Bool)

(assert (=> b!3325431 (= e!2068105 call!241355)))

(declare-fun b!3325432 () Bool)

(declare-fun res!1348973 () Bool)

(assert (=> b!3325432 (=> (not res!1348973) (not e!2068104))))

(assert (=> b!3325432 (= res!1348973 (< (size!27691 (_2!21203 (get!11677 lt!1130193))) (size!27691 (list!13180 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))

(declare-fun b!3325433 () Bool)

(declare-fun res!1348974 () Bool)

(assert (=> b!3325433 (=> (not res!1348974) (not e!2068104))))

(assert (=> b!3325433 (= res!1348974 (= (list!13180 (charsOf!3338 (_1!21203 (get!11677 lt!1130193)))) (originalCharacters!6038 (_1!21203 (get!11677 lt!1130193)))))))

(declare-fun b!3325434 () Bool)

(declare-fun res!1348972 () Bool)

(assert (=> b!3325434 (=> (not res!1348972) (not e!2068104))))

(declare-fun apply!8457 (TokenValueInjection!10536 BalanceConc!21660) TokenValue!5554)

(declare-fun seqFromList!3702 (List!36755) BalanceConc!21660)

(assert (=> b!3325434 (= res!1348972 (= (value!172194 (_1!21203 (get!11677 lt!1130193))) (apply!8457 (transformation!5324 (rule!7846 (_1!21203 (get!11677 lt!1130193)))) (seqFromList!3702 (originalCharacters!6038 (_1!21203 (get!11677 lt!1130193)))))))))

(assert (= (and d!935199 c!564950) b!3325431))

(assert (= (and d!935199 (not c!564950)) b!3325429))

(assert (= (or b!3325431 b!3325429) bm!241350))

(assert (= (and d!935199 (not res!1348971)) b!3325430))

(assert (= (and b!3325430 res!1348977) b!3325433))

(assert (= (and b!3325433 res!1348974) b!3325432))

(assert (= (and b!3325432 res!1348973) b!3325427))

(assert (= (and b!3325427 res!1348975) b!3325434))

(assert (= (and b!3325434 res!1348972) b!3325426))

(assert (= (and b!3325426 res!1348976) b!3325428))

(assert (=> b!3325429 m!3662803))

(declare-fun m!3665929 () Bool)

(assert (=> b!3325429 m!3665929))

(assert (=> bm!241350 m!3662803))

(declare-fun m!3665931 () Bool)

(assert (=> bm!241350 m!3665931))

(declare-fun m!3665933 () Bool)

(assert (=> b!3325432 m!3665933))

(declare-fun m!3665935 () Bool)

(assert (=> b!3325432 m!3665935))

(assert (=> b!3325432 m!3662803))

(assert (=> b!3325432 m!3663325))

(assert (=> b!3325434 m!3665933))

(declare-fun m!3665937 () Bool)

(assert (=> b!3325434 m!3665937))

(assert (=> b!3325434 m!3665937))

(declare-fun m!3665939 () Bool)

(assert (=> b!3325434 m!3665939))

(declare-fun m!3665941 () Bool)

(assert (=> d!935199 m!3665941))

(assert (=> d!935199 m!3662803))

(assert (=> d!935199 m!3662803))

(declare-fun m!3665943 () Bool)

(assert (=> d!935199 m!3665943))

(assert (=> d!935199 m!3662803))

(assert (=> d!935199 m!3662803))

(declare-fun m!3665945 () Bool)

(assert (=> d!935199 m!3665945))

(assert (=> d!935199 m!3663401))

(declare-fun m!3665947 () Bool)

(assert (=> b!3325430 m!3665947))

(assert (=> b!3325426 m!3665933))

(declare-fun m!3665949 () Bool)

(assert (=> b!3325426 m!3665949))

(assert (=> b!3325426 m!3665949))

(declare-fun m!3665951 () Bool)

(assert (=> b!3325426 m!3665951))

(assert (=> b!3325426 m!3665951))

(declare-fun m!3665953 () Bool)

(assert (=> b!3325426 m!3665953))

(assert (=> b!3325428 m!3665933))

(declare-fun m!3665955 () Bool)

(assert (=> b!3325428 m!3665955))

(assert (=> b!3325433 m!3665933))

(assert (=> b!3325433 m!3665949))

(assert (=> b!3325433 m!3665949))

(assert (=> b!3325433 m!3665951))

(assert (=> b!3325427 m!3665933))

(assert (=> b!3325427 m!3665949))

(assert (=> b!3325427 m!3665949))

(assert (=> b!3325427 m!3665951))

(assert (=> b!3325427 m!3665951))

(declare-fun m!3665967 () Bool)

(assert (=> b!3325427 m!3665967))

(assert (=> d!934497 d!935199))

(declare-fun d!935233 () Bool)

(declare-fun lt!1130199 () Bool)

(declare-fun e!2068112 () Bool)

(assert (=> d!935233 (= lt!1130199 e!2068112)))

(declare-fun res!1348984 () Bool)

(assert (=> d!935233 (=> (not res!1348984) (not e!2068112))))

(assert (=> d!935233 (= res!1348984 (= (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 (h!42053 (list!13177 lt!1129204))))))) (list!13177 (singletonSeq!2420 (h!42053 (list!13177 lt!1129204))))))))

(declare-fun e!2068113 () Bool)

(assert (=> d!935233 (= lt!1130199 e!2068113)))

(declare-fun res!1348985 () Bool)

(assert (=> d!935233 (=> (not res!1348985) (not e!2068113))))

(declare-fun lt!1130198 () tuple2!36130)

(assert (=> d!935233 (= res!1348985 (= (size!27690 (_1!21199 lt!1130198)) 1))))

(assert (=> d!935233 (= lt!1130198 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 (h!42053 (list!13177 lt!1129204))))))))

(assert (=> d!935233 (not (isEmpty!20783 rules!2135))))

(assert (=> d!935233 (= (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 (h!42053 (list!13177 lt!1129204))) lt!1130199)))

(declare-fun b!3325448 () Bool)

(declare-fun res!1348983 () Bool)

(assert (=> b!3325448 (=> (not res!1348983) (not e!2068113))))

(assert (=> b!3325448 (= res!1348983 (= (apply!8449 (_1!21199 lt!1130198) 0) (h!42053 (list!13177 lt!1129204))))))

(declare-fun b!3325449 () Bool)

(assert (=> b!3325449 (= e!2068113 (isEmpty!20787 (_2!21199 lt!1130198)))))

(declare-fun b!3325450 () Bool)

(assert (=> b!3325450 (= e!2068112 (isEmpty!20787 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 (h!42053 (list!13177 lt!1129204))))))))))

(assert (= (and d!935233 res!1348985) b!3325448))

(assert (= (and b!3325448 res!1348983) b!3325449))

(assert (= (and d!935233 res!1348984) b!3325450))

(declare-fun m!3665981 () Bool)

(assert (=> d!935233 m!3665981))

(declare-fun m!3665983 () Bool)

(assert (=> d!935233 m!3665983))

(assert (=> d!935233 m!3662601))

(declare-fun m!3665985 () Bool)

(assert (=> d!935233 m!3665985))

(declare-fun m!3665989 () Bool)

(assert (=> d!935233 m!3665989))

(declare-fun m!3665993 () Bool)

(assert (=> d!935233 m!3665993))

(assert (=> d!935233 m!3665981))

(assert (=> d!935233 m!3665993))

(declare-fun m!3665995 () Bool)

(assert (=> d!935233 m!3665995))

(assert (=> d!935233 m!3665993))

(declare-fun m!3665997 () Bool)

(assert (=> b!3325448 m!3665997))

(declare-fun m!3665999 () Bool)

(assert (=> b!3325449 m!3665999))

(assert (=> b!3325450 m!3665993))

(assert (=> b!3325450 m!3665993))

(assert (=> b!3325450 m!3665981))

(assert (=> b!3325450 m!3665981))

(assert (=> b!3325450 m!3665983))

(declare-fun m!3666001 () Bool)

(assert (=> b!3325450 m!3666001))

(assert (=> b!3323921 d!935233))

(assert (=> bs!550758 d!935233))

(declare-fun d!935241 () Bool)

(declare-fun res!1348988 () Bool)

(declare-fun e!2068117 () Bool)

(assert (=> d!935241 (=> (not res!1348988) (not e!2068117))))

(assert (=> d!935241 (= res!1348988 (= (csize!22276 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) (+ (size!27697 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) (size!27697 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))))

(assert (=> d!935241 (= (inv!49634 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) e!2068117)))

(declare-fun b!3325453 () Bool)

(declare-fun res!1348989 () Bool)

(assert (=> b!3325453 (=> (not res!1348989) (not e!2068117))))

(assert (=> b!3325453 (= res!1348989 (and (not (= (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) Empty!11023)) (not (= (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) Empty!11023))))))

(declare-fun b!3325454 () Bool)

(declare-fun res!1348991 () Bool)

(assert (=> b!3325454 (=> (not res!1348991) (not e!2068117))))

(assert (=> b!3325454 (= res!1348991 (= (cheight!11234 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) (+ (max!0 (height!1626 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) (height!1626 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) 1)))))

(declare-fun b!3325455 () Bool)

(assert (=> b!3325455 (= e!2068117 (<= 0 (cheight!11234 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(assert (= (and d!935241 res!1348988) b!3325453))

(assert (= (and b!3325453 res!1348989) b!3325454))

(assert (= (and b!3325454 res!1348991) b!3325455))

(declare-fun m!3666003 () Bool)

(assert (=> d!935241 m!3666003))

(declare-fun m!3666005 () Bool)

(assert (=> d!935241 m!3666005))

(declare-fun m!3666007 () Bool)

(assert (=> b!3325454 m!3666007))

(declare-fun m!3666009 () Bool)

(assert (=> b!3325454 m!3666009))

(assert (=> b!3325454 m!3666007))

(assert (=> b!3325454 m!3666009))

(declare-fun m!3666011 () Bool)

(assert (=> b!3325454 m!3666011))

(assert (=> b!3323949 d!935241))

(declare-fun d!935243 () Bool)

(declare-fun res!1348992 () Bool)

(declare-fun e!2068121 () Bool)

(assert (=> d!935243 (=> (not res!1348992) (not e!2068121))))

(assert (=> d!935243 (= res!1348992 (not (isEmpty!20788 (originalCharacters!6038 (h!42053 (t!256360 (t!256360 tokens!494)))))))))

(assert (=> d!935243 (= (inv!49627 (h!42053 (t!256360 (t!256360 tokens!494)))) e!2068121)))

(declare-fun b!3325463 () Bool)

(declare-fun res!1348993 () Bool)

(assert (=> b!3325463 (=> (not res!1348993) (not e!2068121))))

(assert (=> b!3325463 (= res!1348993 (= (originalCharacters!6038 (h!42053 (t!256360 (t!256360 tokens!494)))) (list!13180 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))))))

(declare-fun b!3325464 () Bool)

(assert (=> b!3325464 (= e!2068121 (= (size!27685 (h!42053 (t!256360 (t!256360 tokens!494)))) (size!27691 (originalCharacters!6038 (h!42053 (t!256360 (t!256360 tokens!494)))))))))

(assert (= (and d!935243 res!1348992) b!3325463))

(assert (= (and b!3325463 res!1348993) b!3325464))

(declare-fun b_lambda!93791 () Bool)

(assert (=> (not b_lambda!93791) (not b!3325463)))

(declare-fun t!256567 () Bool)

(declare-fun tb!174075 () Bool)

(assert (=> (and b!3323427 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256567) tb!174075))

(declare-fun b!3325465 () Bool)

(declare-fun e!2068122 () Bool)

(declare-fun tp!1038645 () Bool)

(assert (=> b!3325465 (= e!2068122 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (value!172194 (h!42053 (t!256360 (t!256360 tokens!494))))))) tp!1038645))))

(declare-fun result!217132 () Bool)

(assert (=> tb!174075 (= result!217132 (and (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (value!172194 (h!42053 (t!256360 (t!256360 tokens!494)))))) e!2068122))))

(assert (= tb!174075 b!3325465))

(declare-fun m!3666013 () Bool)

(assert (=> b!3325465 m!3666013))

(declare-fun m!3666015 () Bool)

(assert (=> tb!174075 m!3666015))

(assert (=> b!3325463 t!256567))

(declare-fun b_and!229135 () Bool)

(assert (= b_and!229073 (and (=> t!256567 result!217132) b_and!229135)))

(declare-fun t!256569 () Bool)

(declare-fun tb!174077 () Bool)

(assert (=> (and b!3324271 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256569) tb!174077))

(declare-fun result!217134 () Bool)

(assert (= result!217134 result!217132))

(assert (=> b!3325463 t!256569))

(declare-fun b_and!229137 () Bool)

(assert (= b_and!229067 (and (=> t!256569 result!217134) b_and!229137)))

(declare-fun t!256571 () Bool)

(declare-fun tb!174079 () Bool)

(assert (=> (and b!3324253 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256571) tb!174079))

(declare-fun result!217136 () Bool)

(assert (= result!217136 result!217132))

(assert (=> b!3325463 t!256571))

(declare-fun b_and!229139 () Bool)

(assert (= b_and!229075 (and (=> t!256571 result!217136) b_and!229139)))

(declare-fun t!256573 () Bool)

(declare-fun tb!174081 () Bool)

(assert (=> (and b!3323745 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256573) tb!174081))

(declare-fun result!217138 () Bool)

(assert (= result!217138 result!217132))

(assert (=> b!3325463 t!256573))

(declare-fun b_and!229141 () Bool)

(assert (= b_and!229069 (and (=> t!256573 result!217138) b_and!229141)))

(declare-fun t!256575 () Bool)

(declare-fun tb!174083 () Bool)

(assert (=> (and b!3323768 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256575) tb!174083))

(declare-fun result!217140 () Bool)

(assert (= result!217140 result!217132))

(assert (=> b!3325463 t!256575))

(declare-fun b_and!229143 () Bool)

(assert (= b_and!229077 (and (=> t!256575 result!217140) b_and!229143)))

(declare-fun tb!174085 () Bool)

(declare-fun t!256577 () Bool)

(assert (=> (and b!3323433 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256577) tb!174085))

(declare-fun result!217142 () Bool)

(assert (= result!217142 result!217132))

(assert (=> b!3325463 t!256577))

(declare-fun b_and!229145 () Bool)

(assert (= b_and!229071 (and (=> t!256577 result!217142) b_and!229145)))

(declare-fun tb!174087 () Bool)

(declare-fun t!256579 () Bool)

(assert (=> (and b!3323421 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256579) tb!174087))

(declare-fun result!217144 () Bool)

(assert (= result!217144 result!217132))

(assert (=> b!3325463 t!256579))

(declare-fun b_and!229147 () Bool)

(assert (= b_and!229065 (and (=> t!256579 result!217144) b_and!229147)))

(declare-fun m!3666017 () Bool)

(assert (=> d!935243 m!3666017))

(declare-fun m!3666019 () Bool)

(assert (=> b!3325463 m!3666019))

(assert (=> b!3325463 m!3666019))

(declare-fun m!3666021 () Bool)

(assert (=> b!3325463 m!3666021))

(declare-fun m!3666023 () Bool)

(assert (=> b!3325464 m!3666023))

(assert (=> b!3324268 d!935243))

(assert (=> b!3324053 d!934477))

(declare-fun d!935245 () Bool)

(assert (=> d!935245 (= (Forall2!900 lambda!119630) (choose!19257 lambda!119630))))

(declare-fun bs!550892 () Bool)

(assert (= bs!550892 d!935245))

(declare-fun m!3666027 () Bool)

(assert (=> bs!550892 m!3666027))

(assert (=> d!934501 d!935245))

(declare-fun d!935247 () Bool)

(assert (=> d!935247 (= (inv!49631 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))) (isBalanced!3307 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))))))

(declare-fun bs!550893 () Bool)

(assert (= bs!550893 d!935247))

(declare-fun m!3666037 () Bool)

(assert (=> bs!550893 m!3666037))

(assert (=> tb!173957 d!935247))

(assert (=> d!934583 d!934989))

(assert (=> d!934583 d!934499))

(declare-fun d!935249 () Bool)

(declare-fun lt!1130235 () Int)

(assert (=> d!935249 (= lt!1130235 (size!27691 (list!13184 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))

(assert (=> d!935249 (= lt!1130235 (ite ((_ is Empty!11023) (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) 0 (ite ((_ is Leaf!17296) (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) (csize!22277 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) (csize!22276 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))

(assert (=> d!935249 (= (size!27697 (c!564521 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))) lt!1130235)))

(declare-fun bs!550894 () Bool)

(assert (= bs!550894 d!935249))

(assert (=> bs!550894 m!3663327))

(assert (=> bs!550894 m!3663327))

(declare-fun m!3666053 () Bool)

(assert (=> bs!550894 m!3666053))

(assert (=> d!934583 d!935249))

(declare-fun b!3325466 () Bool)

(declare-fun e!2068124 () tuple2!36130)

(declare-fun lt!1130238 () tuple2!36130)

(declare-fun lt!1130236 () Option!7310)

(assert (=> b!3325466 (= e!2068124 (tuple2!36131 (prepend!1211 (_1!21199 lt!1130238) (_1!21205 (v!36173 lt!1130236))) (_2!21199 lt!1130238)))))

(assert (=> b!3325466 (= lt!1130238 (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1130236))))))

(declare-fun b!3325467 () Bool)

(declare-fun res!1348994 () Bool)

(declare-fun e!2068123 () Bool)

(assert (=> b!3325467 (=> (not res!1348994) (not e!2068123))))

(declare-fun lt!1130237 () tuple2!36130)

(assert (=> b!3325467 (= res!1348994 (= (list!13177 (_1!21199 lt!1130237)) (_1!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (_2!21205 (v!36173 lt!1129570)))))))))

(declare-fun d!935251 () Bool)

(assert (=> d!935251 e!2068123))

(declare-fun res!1348995 () Bool)

(assert (=> d!935251 (=> (not res!1348995) (not e!2068123))))

(declare-fun e!2068126 () Bool)

(assert (=> d!935251 (= res!1348995 e!2068126)))

(declare-fun c!564958 () Bool)

(assert (=> d!935251 (= c!564958 (> (size!27690 (_1!21199 lt!1130237)) 0))))

(assert (=> d!935251 (= lt!1130237 e!2068124)))

(declare-fun c!564959 () Bool)

(assert (=> d!935251 (= c!564959 ((_ is Some!7309) lt!1130236))))

(assert (=> d!935251 (= lt!1130236 (maxPrefixZipperSequence!1108 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129570))))))

(assert (=> d!935251 (= (lexRec!715 thiss!18206 rules!2135 (_2!21205 (v!36173 lt!1129570))) lt!1130237)))

(declare-fun b!3325468 () Bool)

(assert (=> b!3325468 (= e!2068126 (= (list!13180 (_2!21199 lt!1130237)) (list!13180 (_2!21205 (v!36173 lt!1129570)))))))

(declare-fun b!3325469 () Bool)

(assert (=> b!3325469 (= e!2068124 (tuple2!36131 (BalanceConc!21663 Empty!11024) (_2!21205 (v!36173 lt!1129570))))))

(declare-fun b!3325470 () Bool)

(assert (=> b!3325470 (= e!2068123 (= (list!13180 (_2!21199 lt!1130237)) (_2!21201 (lexList!1372 thiss!18206 rules!2135 (list!13180 (_2!21205 (v!36173 lt!1129570)))))))))

(declare-fun b!3325471 () Bool)

(declare-fun e!2068125 () Bool)

(assert (=> b!3325471 (= e!2068125 (not (isEmpty!20789 (_1!21199 lt!1130237))))))

(declare-fun b!3325472 () Bool)

(assert (=> b!3325472 (= e!2068126 e!2068125)))

(declare-fun res!1348996 () Bool)

(assert (=> b!3325472 (= res!1348996 (< (size!27693 (_2!21199 lt!1130237)) (size!27693 (_2!21205 (v!36173 lt!1129570)))))))

(assert (=> b!3325472 (=> (not res!1348996) (not e!2068125))))

(assert (= (and d!935251 c!564959) b!3325466))

(assert (= (and d!935251 (not c!564959)) b!3325469))

(assert (= (and d!935251 c!564958) b!3325472))

(assert (= (and d!935251 (not c!564958)) b!3325468))

(assert (= (and b!3325472 res!1348996) b!3325471))

(assert (= (and d!935251 res!1348995) b!3325467))

(assert (= (and b!3325467 res!1348994) b!3325470))

(declare-fun m!3666099 () Bool)

(assert (=> d!935251 m!3666099))

(declare-fun m!3666101 () Bool)

(assert (=> d!935251 m!3666101))

(declare-fun m!3666105 () Bool)

(assert (=> b!3325467 m!3666105))

(declare-fun m!3666107 () Bool)

(assert (=> b!3325467 m!3666107))

(assert (=> b!3325467 m!3666107))

(declare-fun m!3666109 () Bool)

(assert (=> b!3325467 m!3666109))

(declare-fun m!3666115 () Bool)

(assert (=> b!3325466 m!3666115))

(declare-fun m!3666117 () Bool)

(assert (=> b!3325466 m!3666117))

(declare-fun m!3666119 () Bool)

(assert (=> b!3325468 m!3666119))

(assert (=> b!3325468 m!3666107))

(declare-fun m!3666125 () Bool)

(assert (=> b!3325471 m!3666125))

(declare-fun m!3666127 () Bool)

(assert (=> b!3325472 m!3666127))

(declare-fun m!3666129 () Bool)

(assert (=> b!3325472 m!3666129))

(assert (=> b!3325470 m!3666119))

(assert (=> b!3325470 m!3666107))

(assert (=> b!3325470 m!3666107))

(assert (=> b!3325470 m!3666109))

(assert (=> b!3324184 d!935251))

(declare-fun d!935253 () Bool)

(declare-fun e!2068127 () Bool)

(assert (=> d!935253 e!2068127))

(declare-fun res!1348997 () Bool)

(assert (=> d!935253 (=> (not res!1348997) (not e!2068127))))

(assert (=> d!935253 (= res!1348997 (isBalanced!3305 (prepend!1213 (c!564522 (_1!21199 lt!1129575)) (_1!21205 (v!36173 lt!1129570)))))))

(declare-fun lt!1130239 () BalanceConc!21662)

(assert (=> d!935253 (= lt!1130239 (BalanceConc!21663 (prepend!1213 (c!564522 (_1!21199 lt!1129575)) (_1!21205 (v!36173 lt!1129570)))))))

(assert (=> d!935253 (= (prepend!1211 (_1!21199 lt!1129575) (_1!21205 (v!36173 lt!1129570))) lt!1130239)))

(declare-fun b!3325473 () Bool)

(assert (=> b!3325473 (= e!2068127 (= (list!13177 lt!1130239) (Cons!36633 (_1!21205 (v!36173 lt!1129570)) (list!13177 (_1!21199 lt!1129575)))))))

(assert (= (and d!935253 res!1348997) b!3325473))

(declare-fun m!3666139 () Bool)

(assert (=> d!935253 m!3666139))

(assert (=> d!935253 m!3666139))

(declare-fun m!3666141 () Bool)

(assert (=> d!935253 m!3666141))

(declare-fun m!3666143 () Bool)

(assert (=> b!3325473 m!3666143))

(declare-fun m!3666145 () Bool)

(assert (=> b!3325473 m!3666145))

(assert (=> b!3324184 d!935253))

(assert (=> d!934535 d!934533))

(assert (=> d!934535 d!934427))

(declare-fun b!3325508 () Bool)

(declare-fun e!2068149 () Bool)

(assert (=> b!3325508 (= e!2068149 (forall!7635 (right!28878 (c!564522 lt!1129204)) lambda!119603))))

(declare-fun b!3325506 () Bool)

(declare-fun e!2068148 () Bool)

(declare-fun forall!7639 (IArray!22053 Int) Bool)

(assert (=> b!3325506 (= e!2068148 (forall!7639 (xs!14162 (c!564522 lt!1129204)) lambda!119603))))

(declare-fun b!3325507 () Bool)

(assert (=> b!3325507 (= e!2068148 e!2068149)))

(declare-fun lt!1130249 () Unit!51643)

(declare-fun lemmaForallConcat!178 (List!36757 List!36757 Int) Unit!51643)

(assert (=> b!3325507 (= lt!1130249 (lemmaForallConcat!178 (list!13181 (left!28548 (c!564522 lt!1129204))) (list!13181 (right!28878 (c!564522 lt!1129204))) lambda!119603))))

(declare-fun res!1349016 () Bool)

(assert (=> b!3325507 (= res!1349016 (forall!7635 (left!28548 (c!564522 lt!1129204)) lambda!119603))))

(assert (=> b!3325507 (=> (not res!1349016) (not e!2068149))))

(declare-fun d!935257 () Bool)

(declare-fun lt!1130250 () Bool)

(assert (=> d!935257 (= lt!1130250 (forall!7629 (list!13181 (c!564522 lt!1129204)) lambda!119603))))

(declare-fun e!2068150 () Bool)

(assert (=> d!935257 (= lt!1130250 e!2068150)))

(declare-fun res!1349015 () Bool)

(assert (=> d!935257 (=> res!1349015 e!2068150)))

(assert (=> d!935257 (= res!1349015 ((_ is Empty!11024) (c!564522 lt!1129204)))))

(assert (=> d!935257 (= (forall!7635 (c!564522 lt!1129204) lambda!119603) lt!1130250)))

(declare-fun b!3325505 () Bool)

(assert (=> b!3325505 (= e!2068150 e!2068148)))

(declare-fun c!564967 () Bool)

(assert (=> b!3325505 (= c!564967 ((_ is Leaf!17297) (c!564522 lt!1129204)))))

(assert (= (and d!935257 (not res!1349015)) b!3325505))

(assert (= (and b!3325505 c!564967) b!3325506))

(assert (= (and b!3325505 (not c!564967)) b!3325507))

(assert (= (and b!3325507 res!1349016) b!3325508))

(declare-fun m!3666205 () Bool)

(assert (=> b!3325508 m!3666205))

(declare-fun m!3666207 () Bool)

(assert (=> b!3325506 m!3666207))

(assert (=> b!3325507 m!3665583))

(assert (=> b!3325507 m!3665585))

(assert (=> b!3325507 m!3665583))

(assert (=> b!3325507 m!3665585))

(declare-fun m!3666209 () Bool)

(assert (=> b!3325507 m!3666209))

(declare-fun m!3666211 () Bool)

(assert (=> b!3325507 m!3666211))

(assert (=> d!935257 m!3663169))

(assert (=> d!935257 m!3663169))

(declare-fun m!3666213 () Bool)

(assert (=> d!935257 m!3666213))

(assert (=> d!934535 d!935257))

(declare-fun d!935271 () Bool)

(assert (=> d!935271 (= (isEmpty!20788 (list!13180 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))) ((_ is Nil!36631) (list!13180 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(assert (=> d!934545 d!935271))

(declare-fun d!935273 () Bool)

(assert (=> d!935273 (= (list!13180 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))) (list!13184 (c!564521 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))))))

(declare-fun bs!550895 () Bool)

(assert (= bs!550895 d!935273))

(declare-fun m!3666219 () Bool)

(assert (=> bs!550895 m!3666219))

(assert (=> d!934545 d!935273))

(declare-fun d!935275 () Bool)

(declare-fun lt!1130252 () Bool)

(assert (=> d!935275 (= lt!1130252 (isEmpty!20788 (list!13184 (c!564521 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241))))))))))

(assert (=> d!935275 (= lt!1130252 (= (size!27697 (c!564521 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))) 0))))

(assert (=> d!935275 (= (isEmpty!20792 (c!564521 (_2!21199 (lex!2239 thiss!18206 rules!2135 (print!1978 thiss!18206 (singletonSeq!2420 separatorToken!241)))))) lt!1130252)))

(declare-fun bs!550896 () Bool)

(assert (= bs!550896 d!935275))

(assert (=> bs!550896 m!3666219))

(assert (=> bs!550896 m!3666219))

(declare-fun m!3666221 () Bool)

(assert (=> bs!550896 m!3666221))

(declare-fun m!3666223 () Bool)

(assert (=> bs!550896 m!3666223))

(assert (=> d!934545 d!935275))

(declare-fun d!935277 () Bool)

(assert (=> d!935277 (= (inv!17 (value!172194 (h!42053 (t!256360 tokens!494)))) (= (charsToBigInt!1 (text!39326 (value!172194 (h!42053 (t!256360 tokens!494))))) (value!172186 (value!172194 (h!42053 (t!256360 tokens!494))))))))

(declare-fun bs!550897 () Bool)

(assert (= bs!550897 d!935277))

(declare-fun m!3666227 () Bool)

(assert (=> bs!550897 m!3666227))

(assert (=> b!3323887 d!935277))

(declare-fun d!935279 () Bool)

(declare-fun c!564968 () Bool)

(assert (=> d!935279 (= c!564968 ((_ is Nil!36630) (text!39327 (value!172194 separatorToken!241))))))

(declare-fun e!2068152 () Int)

(assert (=> d!935279 (= (charsToBigInt!0 (text!39327 (value!172194 separatorToken!241)) 0) e!2068152)))

(declare-fun b!3325510 () Bool)

(assert (=> b!3325510 (= e!2068152 0)))

(declare-fun b!3325511 () Bool)

(assert (=> b!3325511 (= e!2068152 (charsToBigInt!0 (t!256357 (text!39327 (value!172194 separatorToken!241))) (+ (* 0 10) (charToBigInt!0 (h!42050 (text!39327 (value!172194 separatorToken!241)))))))))

(assert (= (and d!935279 c!564968) b!3325510))

(assert (= (and d!935279 (not c!564968)) b!3325511))

(declare-fun m!3666235 () Bool)

(assert (=> b!3325511 m!3666235))

(declare-fun m!3666237 () Bool)

(assert (=> b!3325511 m!3666237))

(assert (=> d!934515 d!935279))

(declare-fun d!935287 () Bool)

(declare-fun c!564969 () Bool)

(assert (=> d!935287 (= c!564969 ((_ is Node!11023) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun e!2068153 () Bool)

(assert (=> d!935287 (= (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) e!2068153)))

(declare-fun b!3325512 () Bool)

(assert (=> b!3325512 (= e!2068153 (inv!49634 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun b!3325513 () Bool)

(declare-fun e!2068154 () Bool)

(assert (=> b!3325513 (= e!2068153 e!2068154)))

(declare-fun res!1349017 () Bool)

(assert (=> b!3325513 (= res!1349017 (not ((_ is Leaf!17296) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))))

(assert (=> b!3325513 (=> res!1349017 e!2068154)))

(declare-fun b!3325514 () Bool)

(assert (=> b!3325514 (= e!2068154 (inv!49635 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(assert (= (and d!935287 c!564969) b!3325512))

(assert (= (and d!935287 (not c!564969)) b!3325513))

(assert (= (and b!3325513 (not res!1349017)) b!3325514))

(declare-fun m!3666241 () Bool)

(assert (=> b!3325512 m!3666241))

(declare-fun m!3666243 () Bool)

(assert (=> b!3325514 m!3666243))

(assert (=> b!3324281 d!935287))

(declare-fun d!935291 () Bool)

(declare-fun c!564970 () Bool)

(assert (=> d!935291 (= c!564970 ((_ is Node!11023) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun e!2068155 () Bool)

(assert (=> d!935291 (= (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) e!2068155)))

(declare-fun b!3325515 () Bool)

(assert (=> b!3325515 (= e!2068155 (inv!49634 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(declare-fun b!3325516 () Bool)

(declare-fun e!2068156 () Bool)

(assert (=> b!3325516 (= e!2068155 e!2068156)))

(declare-fun res!1349018 () Bool)

(assert (=> b!3325516 (= res!1349018 (not ((_ is Leaf!17296) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))))))

(assert (=> b!3325516 (=> res!1349018 e!2068156)))

(declare-fun b!3325517 () Bool)

(assert (=> b!3325517 (= e!2068156 (inv!49635 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))))

(assert (= (and d!935291 c!564970) b!3325515))

(assert (= (and d!935291 (not c!564970)) b!3325516))

(assert (= (and b!3325516 (not res!1349018)) b!3325517))

(declare-fun m!3666245 () Bool)

(assert (=> b!3325515 m!3666245))

(declare-fun m!3666247 () Bool)

(assert (=> b!3325517 m!3666247))

(assert (=> b!3324281 d!935291))

(declare-fun d!935293 () Bool)

(assert (=> d!935293 (= (list!13177 lt!1129297) (list!13181 (c!564522 lt!1129297)))))

(declare-fun bs!550901 () Bool)

(assert (= bs!550901 d!935293))

(declare-fun m!3666249 () Bool)

(assert (=> bs!550901 m!3666249))

(assert (=> d!934369 d!935293))

(assert (=> d!934369 d!935121))

(declare-fun b!3325518 () Bool)

(declare-fun call!241357 () List!36757)

(declare-fun e!2068159 () List!36757)

(assert (=> b!3325518 (= e!2068159 (Cons!36633 (h!42053 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) call!241357))))

(declare-fun b!3325519 () Bool)

(declare-fun e!2068158 () Bool)

(declare-fun lt!1130253 () List!36757)

(assert (=> b!3325519 (= e!2068158 (forall!7629 lt!1130253 lambda!119593))))

(declare-fun bm!241352 () Bool)

(assert (=> bm!241352 (= call!241357 (filter!538 (t!256360 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))) lambda!119593))))

(declare-fun b!3325520 () Bool)

(declare-fun e!2068157 () List!36757)

(assert (=> b!3325520 (= e!2068157 e!2068159)))

(declare-fun c!564972 () Bool)

(assert (=> b!3325520 (= c!564972 (dynLambda!15088 lambda!119593 (h!42053 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(declare-fun b!3325521 () Bool)

(declare-fun res!1349020 () Bool)

(assert (=> b!3325521 (=> (not res!1349020) (not e!2068158))))

(assert (=> b!3325521 (= res!1349020 (= ((_ map implies) (content!4997 lt!1130253) (content!4997 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))) ((as const (InoxSet Token!10014)) true)))))

(declare-fun d!935295 () Bool)

(assert (=> d!935295 e!2068158))

(declare-fun res!1349019 () Bool)

(assert (=> d!935295 (=> (not res!1349019) (not e!2068158))))

(assert (=> d!935295 (= res!1349019 (<= (size!27692 lt!1130253) (size!27692 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))

(assert (=> d!935295 (= lt!1130253 e!2068157)))

(declare-fun c!564971 () Bool)

(assert (=> d!935295 (= c!564971 ((_ is Nil!36633) (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241))))))))))

(assert (=> d!935295 (= (filter!538 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))) lambda!119593) lt!1130253)))

(declare-fun b!3325522 () Bool)

(assert (=> b!3325522 (= e!2068157 Nil!36633)))

(declare-fun b!3325523 () Bool)

(assert (=> b!3325523 (= e!2068159 call!241357)))

(assert (= (and d!935295 c!564971) b!3325522))

(assert (= (and d!935295 (not c!564971)) b!3325520))

(assert (= (and b!3325520 c!564972) b!3325518))

(assert (= (and b!3325520 (not c!564972)) b!3325523))

(assert (= (or b!3325518 b!3325523) bm!241352))

(assert (= (and d!935295 res!1349019) b!3325521))

(assert (= (and b!3325521 res!1349020) b!3325519))

(declare-fun b_lambda!93795 () Bool)

(assert (=> (not b_lambda!93795) (not b!3325520)))

(declare-fun m!3666251 () Bool)

(assert (=> d!935295 m!3666251))

(assert (=> d!935295 m!3663907))

(declare-fun m!3666253 () Bool)

(assert (=> b!3325520 m!3666253))

(declare-fun m!3666255 () Bool)

(assert (=> b!3325519 m!3666255))

(declare-fun m!3666257 () Bool)

(assert (=> b!3325521 m!3666257))

(assert (=> b!3325521 m!3663817))

(declare-fun m!3666259 () Bool)

(assert (=> bm!241352 m!3666259))

(assert (=> bm!241313 d!935295))

(declare-fun bs!550902 () Bool)

(declare-fun d!935297 () Bool)

(assert (= bs!550902 (and d!935297 d!934377)))

(declare-fun lambda!119660 () Int)

(assert (=> bs!550902 (= (and (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (= lambda!119660 lambda!119615))))

(declare-fun bs!550903 () Bool)

(assert (= bs!550903 (and d!935297 d!934431)))

(assert (=> bs!550903 (= (and (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (h!42052 rules!2135)))) (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (h!42052 rules!2135))))) (= lambda!119660 lambda!119628))))

(declare-fun bs!550904 () Bool)

(assert (= bs!550904 (and d!935297 d!934549)))

(assert (=> bs!550904 (= (and (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 separatorToken!241))))) (= lambda!119660 lambda!119635))))

(declare-fun bs!550905 () Bool)

(assert (= bs!550905 (and d!935297 d!935125)))

(assert (=> bs!550905 (= (and (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (= (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135)))))) (= lambda!119660 lambda!119656))))

(assert (=> d!935297 true))

(assert (=> d!935297 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) (dynLambda!15096 order!19149 lambda!119660))))

(assert (=> d!935297 true))

(assert (=> d!935297 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) (dynLambda!15096 order!19149 lambda!119660))))

(assert (=> d!935297 (= (semiInverseModEq!2209 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toValue!7480 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) (Forall!1303 lambda!119660))))

(declare-fun bs!550906 () Bool)

(assert (= bs!550906 d!935297))

(declare-fun m!3666269 () Bool)

(assert (=> bs!550906 m!3666269))

(assert (=> d!934435 d!935297))

(declare-fun d!935301 () Bool)

(declare-fun res!1349021 () Bool)

(declare-fun e!2068163 () Bool)

(assert (=> d!935301 (=> res!1349021 e!2068163)))

(assert (=> d!935301 (= res!1349021 ((_ is Nil!36632) (t!256359 rules!2135)))))

(assert (=> d!935301 (= (noDuplicateTag!1965 thiss!18206 (t!256359 rules!2135) (Cons!36635 (tag!5876 (h!42052 rules!2135)) Nil!36635)) e!2068163)))

(declare-fun b!3325530 () Bool)

(declare-fun e!2068164 () Bool)

(assert (=> b!3325530 (= e!2068163 e!2068164)))

(declare-fun res!1349022 () Bool)

(assert (=> b!3325530 (=> (not res!1349022) (not e!2068164))))

(assert (=> b!3325530 (= res!1349022 (not (contains!6637 (Cons!36635 (tag!5876 (h!42052 rules!2135)) Nil!36635) (tag!5876 (h!42052 (t!256359 rules!2135))))))))

(declare-fun b!3325531 () Bool)

(assert (=> b!3325531 (= e!2068164 (noDuplicateTag!1965 thiss!18206 (t!256359 (t!256359 rules!2135)) (Cons!36635 (tag!5876 (h!42052 (t!256359 rules!2135))) (Cons!36635 (tag!5876 (h!42052 rules!2135)) Nil!36635))))))

(assert (= (and d!935301 (not res!1349021)) b!3325530))

(assert (= (and b!3325530 res!1349022) b!3325531))

(declare-fun m!3666271 () Bool)

(assert (=> b!3325530 m!3666271))

(declare-fun m!3666273 () Bool)

(assert (=> b!3325531 m!3666273))

(assert (=> b!3324211 d!935301))

(declare-fun d!935303 () Bool)

(assert (=> d!935303 (= (list!13177 lt!1129338) (list!13181 (c!564522 lt!1129338)))))

(declare-fun bs!550907 () Bool)

(assert (= bs!550907 d!935303))

(declare-fun m!3666275 () Bool)

(assert (=> bs!550907 m!3666275))

(assert (=> d!934485 d!935303))

(declare-fun d!935305 () Bool)

(declare-fun e!2068167 () Bool)

(assert (=> d!935305 e!2068167))

(declare-fun res!1349025 () Bool)

(assert (=> d!935305 (=> (not res!1349025) (not e!2068167))))

(declare-fun lt!1130256 () BalanceConc!21662)

(assert (=> d!935305 (= res!1349025 (= (list!13177 lt!1130256) (Cons!36633 separatorToken!241 Nil!36633)))))

(declare-fun choose!19270 (Token!10014) BalanceConc!21662)

(assert (=> d!935305 (= lt!1130256 (choose!19270 separatorToken!241))))

(assert (=> d!935305 (= (singleton!1046 separatorToken!241) lt!1130256)))

(declare-fun b!3325534 () Bool)

(assert (=> b!3325534 (= e!2068167 (isBalanced!3305 (c!564522 lt!1130256)))))

(assert (= (and d!935305 res!1349025) b!3325534))

(declare-fun m!3666277 () Bool)

(assert (=> d!935305 m!3666277))

(declare-fun m!3666279 () Bool)

(assert (=> d!935305 m!3666279))

(declare-fun m!3666281 () Bool)

(assert (=> b!3325534 m!3666281))

(assert (=> d!934485 d!935305))

(declare-fun b!3325535 () Bool)

(declare-fun res!1349026 () Bool)

(declare-fun e!2068168 () Bool)

(assert (=> b!3325535 (=> (not res!1349026) (not e!2068168))))

(assert (=> b!3325535 (= res!1349026 (isBalanced!3307 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun b!3325536 () Bool)

(assert (=> b!3325536 (= e!2068168 (not (isEmpty!20792 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))))

(declare-fun b!3325537 () Bool)

(declare-fun res!1349028 () Bool)

(assert (=> b!3325537 (=> (not res!1349028) (not e!2068168))))

(assert (=> b!3325537 (= res!1349028 (not (isEmpty!20792 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))))))

(declare-fun b!3325538 () Bool)

(declare-fun e!2068169 () Bool)

(assert (=> b!3325538 (= e!2068169 e!2068168)))

(declare-fun res!1349027 () Bool)

(assert (=> b!3325538 (=> (not res!1349027) (not e!2068168))))

(assert (=> b!3325538 (= res!1349027 (<= (- 1) (- (height!1626 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) (height!1626 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))))

(declare-fun d!935307 () Bool)

(declare-fun res!1349030 () Bool)

(assert (=> d!935307 (=> res!1349030 e!2068169)))

(assert (=> d!935307 (= res!1349030 (not ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(assert (=> d!935307 (= (isBalanced!3307 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))) e!2068169)))

(declare-fun b!3325539 () Bool)

(declare-fun res!1349031 () Bool)

(assert (=> b!3325539 (=> (not res!1349031) (not e!2068168))))

(assert (=> b!3325539 (= res!1349031 (isBalanced!3307 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))))

(declare-fun b!3325540 () Bool)

(declare-fun res!1349029 () Bool)

(assert (=> b!3325540 (=> (not res!1349029) (not e!2068168))))

(assert (=> b!3325540 (= res!1349029 (<= (- (height!1626 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) (height!1626 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) 1))))

(assert (= (and d!935307 (not res!1349030)) b!3325538))

(assert (= (and b!3325538 res!1349027) b!3325540))

(assert (= (and b!3325540 res!1349029) b!3325535))

(assert (= (and b!3325535 res!1349026) b!3325539))

(assert (= (and b!3325539 res!1349031) b!3325537))

(assert (= (and b!3325537 res!1349028) b!3325536))

(declare-fun m!3666283 () Bool)

(assert (=> b!3325536 m!3666283))

(declare-fun m!3666285 () Bool)

(assert (=> b!3325539 m!3666285))

(assert (=> b!3325540 m!3666007))

(assert (=> b!3325540 m!3666009))

(declare-fun m!3666287 () Bool)

(assert (=> b!3325535 m!3666287))

(declare-fun m!3666289 () Bool)

(assert (=> b!3325537 m!3666289))

(assert (=> b!3325538 m!3666007))

(assert (=> b!3325538 m!3666009))

(assert (=> d!934517 d!935307))

(declare-fun d!935309 () Bool)

(declare-fun lt!1130257 () Int)

(assert (=> d!935309 (>= lt!1130257 0)))

(declare-fun e!2068170 () Int)

(assert (=> d!935309 (= lt!1130257 e!2068170)))

(declare-fun c!564976 () Bool)

(assert (=> d!935309 (= c!564976 ((_ is Nil!36633) lt!1129340))))

(assert (=> d!935309 (= (size!27692 lt!1129340) lt!1130257)))

(declare-fun b!3325541 () Bool)

(assert (=> b!3325541 (= e!2068170 0)))

(declare-fun b!3325542 () Bool)

(assert (=> b!3325542 (= e!2068170 (+ 1 (size!27692 (t!256360 lt!1129340))))))

(assert (= (and d!935309 c!564976) b!3325541))

(assert (= (and d!935309 (not c!564976)) b!3325542))

(declare-fun m!3666291 () Bool)

(assert (=> b!3325542 m!3666291))

(assert (=> d!934491 d!935309))

(assert (=> d!934491 d!934669))

(declare-fun d!935311 () Bool)

(assert (=> d!935311 (= (Forall!1303 lambda!119615) (choose!19251 lambda!119615))))

(declare-fun bs!550908 () Bool)

(assert (= bs!550908 d!935311))

(declare-fun m!3666293 () Bool)

(assert (=> bs!550908 m!3666293))

(assert (=> d!934377 d!935311))

(declare-fun d!935313 () Bool)

(declare-fun res!1349032 () Bool)

(declare-fun e!2068171 () Bool)

(assert (=> d!935313 (=> res!1349032 e!2068171)))

(assert (=> d!935313 (= res!1349032 ((_ is Nil!36633) (t!256360 (list!13177 lt!1129204))))))

(assert (=> d!935313 (= (forall!7629 (t!256360 (list!13177 lt!1129204)) lambda!119603) e!2068171)))

(declare-fun b!3325543 () Bool)

(declare-fun e!2068172 () Bool)

(assert (=> b!3325543 (= e!2068171 e!2068172)))

(declare-fun res!1349033 () Bool)

(assert (=> b!3325543 (=> (not res!1349033) (not e!2068172))))

(assert (=> b!3325543 (= res!1349033 (dynLambda!15088 lambda!119603 (h!42053 (t!256360 (list!13177 lt!1129204)))))))

(declare-fun b!3325544 () Bool)

(assert (=> b!3325544 (= e!2068172 (forall!7629 (t!256360 (t!256360 (list!13177 lt!1129204))) lambda!119603))))

(assert (= (and d!935313 (not res!1349032)) b!3325543))

(assert (= (and b!3325543 res!1349033) b!3325544))

(declare-fun b_lambda!93797 () Bool)

(assert (=> (not b_lambda!93797) (not b!3325543)))

(declare-fun m!3666295 () Bool)

(assert (=> b!3325543 m!3666295))

(declare-fun m!3666297 () Bool)

(assert (=> b!3325544 m!3666297))

(assert (=> b!3324048 d!935313))

(declare-fun b!3325545 () Bool)

(declare-fun e!2068173 () List!36757)

(assert (=> b!3325545 (= e!2068173 Nil!36633)))

(declare-fun b!3325546 () Bool)

(declare-fun e!2068174 () List!36757)

(assert (=> b!3325546 (= e!2068173 e!2068174)))

(declare-fun c!564978 () Bool)

(assert (=> b!3325546 (= c!564978 ((_ is Leaf!17297) (c!564522 (_1!21199 lt!1129231))))))

(declare-fun b!3325547 () Bool)

(assert (=> b!3325547 (= e!2068174 (list!13185 (xs!14162 (c!564522 (_1!21199 lt!1129231)))))))

(declare-fun d!935315 () Bool)

(declare-fun c!564977 () Bool)

(assert (=> d!935315 (= c!564977 ((_ is Empty!11024) (c!564522 (_1!21199 lt!1129231))))))

(assert (=> d!935315 (= (list!13181 (c!564522 (_1!21199 lt!1129231))) e!2068173)))

(declare-fun b!3325548 () Bool)

(assert (=> b!3325548 (= e!2068174 (++!8897 (list!13181 (left!28548 (c!564522 (_1!21199 lt!1129231)))) (list!13181 (right!28878 (c!564522 (_1!21199 lt!1129231))))))))

(assert (= (and d!935315 c!564977) b!3325545))

(assert (= (and d!935315 (not c!564977)) b!3325546))

(assert (= (and b!3325546 c!564978) b!3325547))

(assert (= (and b!3325546 (not c!564978)) b!3325548))

(declare-fun m!3666299 () Bool)

(assert (=> b!3325547 m!3666299))

(declare-fun m!3666301 () Bool)

(assert (=> b!3325548 m!3666301))

(declare-fun m!3666303 () Bool)

(assert (=> b!3325548 m!3666303))

(assert (=> b!3325548 m!3666301))

(assert (=> b!3325548 m!3666303))

(declare-fun m!3666305 () Bool)

(assert (=> b!3325548 m!3666305))

(assert (=> d!934519 d!935315))

(declare-fun b!3325549 () Bool)

(declare-fun e!2068176 () Bool)

(declare-fun e!2068175 () Bool)

(assert (=> b!3325549 (= e!2068176 e!2068175)))

(declare-fun res!1349034 () Bool)

(assert (=> b!3325549 (= res!1349034 (rulesUseDisjointChars!306 (h!42052 (t!256359 rules!2135)) (h!42052 rules!2135)))))

(assert (=> b!3325549 (=> (not res!1349034) (not e!2068175))))

(declare-fun b!3325550 () Bool)

(declare-fun call!241358 () Bool)

(assert (=> b!3325550 (= e!2068175 call!241358)))

(declare-fun b!3325551 () Bool)

(declare-fun e!2068177 () Bool)

(assert (=> b!3325551 (= e!2068176 e!2068177)))

(declare-fun res!1349035 () Bool)

(assert (=> b!3325551 (= res!1349035 (not ((_ is Cons!36632) rules!2135)))))

(assert (=> b!3325551 (=> res!1349035 e!2068177)))

(declare-fun b!3325552 () Bool)

(assert (=> b!3325552 (= e!2068177 call!241358)))

(declare-fun d!935317 () Bool)

(declare-fun c!564979 () Bool)

(assert (=> d!935317 (= c!564979 (and ((_ is Cons!36632) rules!2135) (not (= (isSeparator!5324 (h!42052 rules!2135)) (isSeparator!5324 (h!42052 (t!256359 rules!2135)))))))))

(assert (=> d!935317 (= (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 (t!256359 rules!2135)) rules!2135) e!2068176)))

(declare-fun bm!241353 () Bool)

(assert (=> bm!241353 (= call!241358 (ruleDisjointCharsFromAllFromOtherType!645 (h!42052 (t!256359 rules!2135)) (t!256359 rules!2135)))))

(assert (= (and d!935317 c!564979) b!3325549))

(assert (= (and d!935317 (not c!564979)) b!3325551))

(assert (= (and b!3325549 res!1349034) b!3325550))

(assert (= (and b!3325551 (not res!1349035)) b!3325552))

(assert (= (or b!3325550 b!3325552) bm!241353))

(declare-fun m!3666307 () Bool)

(assert (=> b!3325549 m!3666307))

(declare-fun m!3666309 () Bool)

(assert (=> bm!241353 m!3666309))

(assert (=> b!3324049 d!935317))

(declare-fun e!2068178 () Bool)

(assert (=> b!3324213 (= tp!1038532 e!2068178)))

(declare-fun b!3325554 () Bool)

(declare-fun tp!1038649 () Bool)

(declare-fun tp!1038648 () Bool)

(assert (=> b!3325554 (= e!2068178 (and tp!1038649 tp!1038648))))

(declare-fun b!3325555 () Bool)

(declare-fun tp!1038650 () Bool)

(assert (=> b!3325555 (= e!2068178 tp!1038650)))

(declare-fun b!3325553 () Bool)

(assert (=> b!3325553 (= e!2068178 tp_is_empty!17409)))

(declare-fun b!3325556 () Bool)

(declare-fun tp!1038647 () Bool)

(declare-fun tp!1038651 () Bool)

(assert (=> b!3325556 (= e!2068178 (and tp!1038647 tp!1038651))))

(assert (= (and b!3324213 ((_ is ElementMatch!10083) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325553))

(assert (= (and b!3324213 ((_ is Concat!15637) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325554))

(assert (= (and b!3324213 ((_ is Star!10083) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325555))

(assert (= (and b!3324213 ((_ is Union!10083) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325556))

(declare-fun e!2068179 () Bool)

(assert (=> b!3324213 (= tp!1038531 e!2068179)))

(declare-fun b!3325558 () Bool)

(declare-fun tp!1038654 () Bool)

(declare-fun tp!1038653 () Bool)

(assert (=> b!3325558 (= e!2068179 (and tp!1038654 tp!1038653))))

(declare-fun b!3325559 () Bool)

(declare-fun tp!1038655 () Bool)

(assert (=> b!3325559 (= e!2068179 tp!1038655)))

(declare-fun b!3325557 () Bool)

(assert (=> b!3325557 (= e!2068179 tp_is_empty!17409)))

(declare-fun b!3325560 () Bool)

(declare-fun tp!1038652 () Bool)

(declare-fun tp!1038656 () Bool)

(assert (=> b!3325560 (= e!2068179 (and tp!1038652 tp!1038656))))

(assert (= (and b!3324213 ((_ is ElementMatch!10083) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325557))

(assert (= (and b!3324213 ((_ is Concat!15637) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325558))

(assert (= (and b!3324213 ((_ is Star!10083) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325559))

(assert (= (and b!3324213 ((_ is Union!10083) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325560))

(declare-fun b!3325563 () Bool)

(declare-fun b_free!87477 () Bool)

(declare-fun b_next!88181 () Bool)

(assert (=> b!3325563 (= b_free!87477 (not b_next!88181))))

(declare-fun tp!1038658 () Bool)

(declare-fun b_and!229163 () Bool)

(assert (=> b!3325563 (= tp!1038658 b_and!229163)))

(declare-fun b_free!87479 () Bool)

(declare-fun b_next!88183 () Bool)

(assert (=> b!3325563 (= b_free!87479 (not b_next!88183))))

(declare-fun t!256597 () Bool)

(declare-fun tb!174103 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256597) tb!174103))

(declare-fun result!217160 () Bool)

(assert (= result!217160 result!216956))

(assert (=> d!934665 t!256597))

(declare-fun t!256599 () Bool)

(declare-fun tb!174105 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256599) tb!174105))

(declare-fun result!217162 () Bool)

(assert (= result!217162 result!217076))

(assert (=> d!934797 t!256599))

(declare-fun tb!174107 () Bool)

(declare-fun t!256601 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256601) tb!174107))

(declare-fun result!217164 () Bool)

(assert (= result!217164 result!217062))

(assert (=> d!934679 t!256601))

(declare-fun tb!174109 () Bool)

(declare-fun t!256603 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256603) tb!174109))

(declare-fun result!217166 () Bool)

(assert (= result!217166 result!217048))

(assert (=> d!934663 t!256603))

(declare-fun tb!174111 () Bool)

(declare-fun t!256605 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256605) tb!174111))

(declare-fun result!217168 () Bool)

(assert (= result!217168 result!217010))

(assert (=> b!3324044 t!256605))

(declare-fun t!256607 () Bool)

(declare-fun tb!174113 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256607) tb!174113))

(declare-fun result!217170 () Bool)

(assert (= result!217170 result!217132))

(assert (=> b!3325463 t!256607))

(assert (=> b!3323602 t!256597))

(declare-fun t!256609 () Bool)

(declare-fun tb!174115 () Bool)

(assert (=> (and b!3325563 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256609) tb!174115))

(declare-fun result!217172 () Bool)

(assert (= result!217172 result!216940))

(assert (=> b!3323529 t!256609))

(declare-fun b_and!229165 () Bool)

(declare-fun tp!1038657 () Bool)

(assert (=> b!3325563 (= tp!1038657 (and (=> t!256597 result!217160) (=> t!256601 result!217164) (=> t!256599 result!217162) (=> t!256607 result!217170) (=> t!256603 result!217166) (=> t!256609 result!217172) (=> t!256605 result!217168) b_and!229165))))

(declare-fun e!2068182 () Bool)

(assert (=> b!3325563 (= e!2068182 (and tp!1038658 tp!1038657))))

(declare-fun e!2068180 () Bool)

(declare-fun b!3325562 () Bool)

(declare-fun tp!1038660 () Bool)

(assert (=> b!3325562 (= e!2068180 (and tp!1038660 (inv!49623 (tag!5876 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (inv!49626 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) e!2068182))))

(declare-fun b!3325561 () Bool)

(declare-fun e!2068183 () Bool)

(declare-fun tp!1038659 () Bool)

(assert (=> b!3325561 (= e!2068183 (and e!2068180 tp!1038659))))

(assert (=> b!3324251 (= tp!1038576 e!2068183)))

(assert (= b!3325562 b!3325563))

(assert (= b!3325561 b!3325562))

(assert (= (and b!3324251 ((_ is Cons!36632) (t!256359 (t!256359 (t!256359 rules!2135))))) b!3325561))

(declare-fun m!3666311 () Bool)

(assert (=> b!3325562 m!3666311))

(declare-fun m!3666313 () Bool)

(assert (=> b!3325562 m!3666313))

(declare-fun b!3325564 () Bool)

(declare-fun e!2068184 () Bool)

(declare-fun tp!1038661 () Bool)

(assert (=> b!3325564 (= e!2068184 (and tp_is_empty!17409 tp!1038661))))

(assert (=> b!3324272 (= tp!1038600 e!2068184)))

(assert (= (and b!3324272 ((_ is Cons!36631) (t!256358 (originalCharacters!6038 (h!42053 (t!256360 tokens!494)))))) b!3325564))

(declare-fun e!2068185 () Bool)

(assert (=> b!3324231 (= tp!1038550 e!2068185)))

(declare-fun b!3325566 () Bool)

(declare-fun tp!1038664 () Bool)

(declare-fun tp!1038663 () Bool)

(assert (=> b!3325566 (= e!2068185 (and tp!1038664 tp!1038663))))

(declare-fun b!3325567 () Bool)

(declare-fun tp!1038665 () Bool)

(assert (=> b!3325567 (= e!2068185 tp!1038665)))

(declare-fun b!3325565 () Bool)

(assert (=> b!3325565 (= e!2068185 tp_is_empty!17409)))

(declare-fun b!3325568 () Bool)

(declare-fun tp!1038662 () Bool)

(declare-fun tp!1038666 () Bool)

(assert (=> b!3325568 (= e!2068185 (and tp!1038662 tp!1038666))))

(assert (= (and b!3324231 ((_ is ElementMatch!10083) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325565))

(assert (= (and b!3324231 ((_ is Concat!15637) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325566))

(assert (= (and b!3324231 ((_ is Star!10083) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325567))

(assert (= (and b!3324231 ((_ is Union!10083) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325568))

(declare-fun e!2068186 () Bool)

(assert (=> b!3324231 (= tp!1038554 e!2068186)))

(declare-fun b!3325570 () Bool)

(declare-fun tp!1038669 () Bool)

(declare-fun tp!1038668 () Bool)

(assert (=> b!3325570 (= e!2068186 (and tp!1038669 tp!1038668))))

(declare-fun b!3325571 () Bool)

(declare-fun tp!1038670 () Bool)

(assert (=> b!3325571 (= e!2068186 tp!1038670)))

(declare-fun b!3325569 () Bool)

(assert (=> b!3325569 (= e!2068186 tp_is_empty!17409)))

(declare-fun b!3325572 () Bool)

(declare-fun tp!1038667 () Bool)

(declare-fun tp!1038671 () Bool)

(assert (=> b!3325572 (= e!2068186 (and tp!1038667 tp!1038671))))

(assert (= (and b!3324231 ((_ is ElementMatch!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325569))

(assert (= (and b!3324231 ((_ is Concat!15637) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325570))

(assert (= (and b!3324231 ((_ is Star!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325571))

(assert (= (and b!3324231 ((_ is Union!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325572))

(declare-fun e!2068187 () Bool)

(assert (=> b!3324294 (= tp!1038627 e!2068187)))

(declare-fun b!3325574 () Bool)

(declare-fun tp!1038674 () Bool)

(declare-fun tp!1038673 () Bool)

(assert (=> b!3325574 (= e!2068187 (and tp!1038674 tp!1038673))))

(declare-fun b!3325575 () Bool)

(declare-fun tp!1038675 () Bool)

(assert (=> b!3325575 (= e!2068187 tp!1038675)))

(declare-fun b!3325573 () Bool)

(assert (=> b!3325573 (= e!2068187 tp_is_empty!17409)))

(declare-fun b!3325576 () Bool)

(declare-fun tp!1038672 () Bool)

(declare-fun tp!1038676 () Bool)

(assert (=> b!3325576 (= e!2068187 (and tp!1038672 tp!1038676))))

(assert (= (and b!3324294 ((_ is ElementMatch!10083) (reg!10412 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325573))

(assert (= (and b!3324294 ((_ is Concat!15637) (reg!10412 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325574))

(assert (= (and b!3324294 ((_ is Star!10083) (reg!10412 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325575))

(assert (= (and b!3324294 ((_ is Union!10083) (reg!10412 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325576))

(declare-fun e!2068188 () Bool)

(assert (=> b!3324222 (= tp!1038543 e!2068188)))

(declare-fun b!3325578 () Bool)

(declare-fun tp!1038679 () Bool)

(declare-fun tp!1038678 () Bool)

(assert (=> b!3325578 (= e!2068188 (and tp!1038679 tp!1038678))))

(declare-fun b!3325579 () Bool)

(declare-fun tp!1038680 () Bool)

(assert (=> b!3325579 (= e!2068188 tp!1038680)))

(declare-fun b!3325577 () Bool)

(assert (=> b!3325577 (= e!2068188 tp_is_empty!17409)))

(declare-fun b!3325580 () Bool)

(declare-fun tp!1038677 () Bool)

(declare-fun tp!1038681 () Bool)

(assert (=> b!3325580 (= e!2068188 (and tp!1038677 tp!1038681))))

(assert (= (and b!3324222 ((_ is ElementMatch!10083) (reg!10412 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325577))

(assert (= (and b!3324222 ((_ is Concat!15637) (reg!10412 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325578))

(assert (= (and b!3324222 ((_ is Star!10083) (reg!10412 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325579))

(assert (= (and b!3324222 ((_ is Union!10083) (reg!10412 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325580))

(declare-fun e!2068189 () Bool)

(assert (=> b!3324285 (= tp!1038616 e!2068189)))

(declare-fun b!3325582 () Bool)

(declare-fun tp!1038684 () Bool)

(declare-fun tp!1038683 () Bool)

(assert (=> b!3325582 (= e!2068189 (and tp!1038684 tp!1038683))))

(declare-fun b!3325583 () Bool)

(declare-fun tp!1038685 () Bool)

(assert (=> b!3325583 (= e!2068189 tp!1038685)))

(declare-fun b!3325581 () Bool)

(assert (=> b!3325581 (= e!2068189 tp_is_empty!17409)))

(declare-fun b!3325584 () Bool)

(declare-fun tp!1038682 () Bool)

(declare-fun tp!1038686 () Bool)

(assert (=> b!3325584 (= e!2068189 (and tp!1038682 tp!1038686))))

(assert (= (and b!3324285 ((_ is ElementMatch!10083) (regOne!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325581))

(assert (= (and b!3324285 ((_ is Concat!15637) (regOne!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325582))

(assert (= (and b!3324285 ((_ is Star!10083) (regOne!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325583))

(assert (= (and b!3324285 ((_ is Union!10083) (regOne!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325584))

(declare-fun e!2068190 () Bool)

(assert (=> b!3324285 (= tp!1038615 e!2068190)))

(declare-fun b!3325586 () Bool)

(declare-fun tp!1038689 () Bool)

(declare-fun tp!1038688 () Bool)

(assert (=> b!3325586 (= e!2068190 (and tp!1038689 tp!1038688))))

(declare-fun b!3325587 () Bool)

(declare-fun tp!1038690 () Bool)

(assert (=> b!3325587 (= e!2068190 tp!1038690)))

(declare-fun b!3325585 () Bool)

(assert (=> b!3325585 (= e!2068190 tp_is_empty!17409)))

(declare-fun b!3325588 () Bool)

(declare-fun tp!1038687 () Bool)

(declare-fun tp!1038691 () Bool)

(assert (=> b!3325588 (= e!2068190 (and tp!1038687 tp!1038691))))

(assert (= (and b!3324285 ((_ is ElementMatch!10083) (regTwo!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325585))

(assert (= (and b!3324285 ((_ is Concat!15637) (regTwo!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325586))

(assert (= (and b!3324285 ((_ is Star!10083) (regTwo!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325587))

(assert (= (and b!3324285 ((_ is Union!10083) (regTwo!20678 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325588))

(declare-fun e!2068191 () Bool)

(assert (=> b!3324287 (= tp!1038614 e!2068191)))

(declare-fun b!3325590 () Bool)

(declare-fun tp!1038694 () Bool)

(declare-fun tp!1038693 () Bool)

(assert (=> b!3325590 (= e!2068191 (and tp!1038694 tp!1038693))))

(declare-fun b!3325591 () Bool)

(declare-fun tp!1038695 () Bool)

(assert (=> b!3325591 (= e!2068191 tp!1038695)))

(declare-fun b!3325589 () Bool)

(assert (=> b!3325589 (= e!2068191 tp_is_empty!17409)))

(declare-fun b!3325592 () Bool)

(declare-fun tp!1038692 () Bool)

(declare-fun tp!1038696 () Bool)

(assert (=> b!3325592 (= e!2068191 (and tp!1038692 tp!1038696))))

(assert (= (and b!3324287 ((_ is ElementMatch!10083) (regOne!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325589))

(assert (= (and b!3324287 ((_ is Concat!15637) (regOne!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325590))

(assert (= (and b!3324287 ((_ is Star!10083) (regOne!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325591))

(assert (= (and b!3324287 ((_ is Union!10083) (regOne!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325592))

(declare-fun e!2068192 () Bool)

(assert (=> b!3324287 (= tp!1038618 e!2068192)))

(declare-fun b!3325594 () Bool)

(declare-fun tp!1038699 () Bool)

(declare-fun tp!1038698 () Bool)

(assert (=> b!3325594 (= e!2068192 (and tp!1038699 tp!1038698))))

(declare-fun b!3325595 () Bool)

(declare-fun tp!1038700 () Bool)

(assert (=> b!3325595 (= e!2068192 tp!1038700)))

(declare-fun b!3325593 () Bool)

(assert (=> b!3325593 (= e!2068192 tp_is_empty!17409)))

(declare-fun b!3325596 () Bool)

(declare-fun tp!1038697 () Bool)

(declare-fun tp!1038701 () Bool)

(assert (=> b!3325596 (= e!2068192 (and tp!1038697 tp!1038701))))

(assert (= (and b!3324287 ((_ is ElementMatch!10083) (regTwo!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325593))

(assert (= (and b!3324287 ((_ is Concat!15637) (regTwo!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325594))

(assert (= (and b!3324287 ((_ is Star!10083) (regTwo!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325595))

(assert (= (and b!3324287 ((_ is Union!10083) (regTwo!20679 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325596))

(declare-fun e!2068193 () Bool)

(assert (=> b!3324270 (= tp!1038596 e!2068193)))

(declare-fun b!3325598 () Bool)

(declare-fun tp!1038704 () Bool)

(declare-fun tp!1038703 () Bool)

(assert (=> b!3325598 (= e!2068193 (and tp!1038704 tp!1038703))))

(declare-fun b!3325599 () Bool)

(declare-fun tp!1038705 () Bool)

(assert (=> b!3325599 (= e!2068193 tp!1038705)))

(declare-fun b!3325597 () Bool)

(assert (=> b!3325597 (= e!2068193 tp_is_empty!17409)))

(declare-fun b!3325600 () Bool)

(declare-fun tp!1038702 () Bool)

(declare-fun tp!1038706 () Bool)

(assert (=> b!3325600 (= e!2068193 (and tp!1038702 tp!1038706))))

(assert (= (and b!3324270 ((_ is ElementMatch!10083) (regex!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) b!3325597))

(assert (= (and b!3324270 ((_ is Concat!15637) (regex!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) b!3325598))

(assert (= (and b!3324270 ((_ is Star!10083) (regex!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) b!3325599))

(assert (= (and b!3324270 ((_ is Union!10083) (regex!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) b!3325600))

(declare-fun e!2068194 () Bool)

(assert (=> b!3324304 (= tp!1038636 e!2068194)))

(declare-fun b!3325602 () Bool)

(declare-fun tp!1038709 () Bool)

(declare-fun tp!1038708 () Bool)

(assert (=> b!3325602 (= e!2068194 (and tp!1038709 tp!1038708))))

(declare-fun b!3325603 () Bool)

(declare-fun tp!1038710 () Bool)

(assert (=> b!3325603 (= e!2068194 tp!1038710)))

(declare-fun b!3325601 () Bool)

(assert (=> b!3325601 (= e!2068194 tp_is_empty!17409)))

(declare-fun b!3325604 () Bool)

(declare-fun tp!1038707 () Bool)

(declare-fun tp!1038711 () Bool)

(assert (=> b!3325604 (= e!2068194 (and tp!1038707 tp!1038711))))

(assert (= (and b!3324304 ((_ is ElementMatch!10083) (regOne!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325601))

(assert (= (and b!3324304 ((_ is Concat!15637) (regOne!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325602))

(assert (= (and b!3324304 ((_ is Star!10083) (regOne!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325603))

(assert (= (and b!3324304 ((_ is Union!10083) (regOne!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325604))

(declare-fun e!2068195 () Bool)

(assert (=> b!3324304 (= tp!1038635 e!2068195)))

(declare-fun b!3325606 () Bool)

(declare-fun tp!1038714 () Bool)

(declare-fun tp!1038713 () Bool)

(assert (=> b!3325606 (= e!2068195 (and tp!1038714 tp!1038713))))

(declare-fun b!3325607 () Bool)

(declare-fun tp!1038715 () Bool)

(assert (=> b!3325607 (= e!2068195 tp!1038715)))

(declare-fun b!3325605 () Bool)

(assert (=> b!3325605 (= e!2068195 tp_is_empty!17409)))

(declare-fun b!3325608 () Bool)

(declare-fun tp!1038712 () Bool)

(declare-fun tp!1038716 () Bool)

(assert (=> b!3325608 (= e!2068195 (and tp!1038712 tp!1038716))))

(assert (= (and b!3324304 ((_ is ElementMatch!10083) (regTwo!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325605))

(assert (= (and b!3324304 ((_ is Concat!15637) (regTwo!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325606))

(assert (= (and b!3324304 ((_ is Star!10083) (regTwo!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325607))

(assert (= (and b!3324304 ((_ is Union!10083) (regTwo!20678 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325608))

(declare-fun e!2068196 () Bool)

(assert (=> b!3324215 (= tp!1038530 e!2068196)))

(declare-fun b!3325610 () Bool)

(declare-fun tp!1038719 () Bool)

(declare-fun tp!1038718 () Bool)

(assert (=> b!3325610 (= e!2068196 (and tp!1038719 tp!1038718))))

(declare-fun b!3325611 () Bool)

(declare-fun tp!1038720 () Bool)

(assert (=> b!3325611 (= e!2068196 tp!1038720)))

(declare-fun b!3325609 () Bool)

(assert (=> b!3325609 (= e!2068196 tp_is_empty!17409)))

(declare-fun b!3325612 () Bool)

(declare-fun tp!1038717 () Bool)

(declare-fun tp!1038721 () Bool)

(assert (=> b!3325612 (= e!2068196 (and tp!1038717 tp!1038721))))

(assert (= (and b!3324215 ((_ is ElementMatch!10083) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325609))

(assert (= (and b!3324215 ((_ is Concat!15637) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325610))

(assert (= (and b!3324215 ((_ is Star!10083) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325611))

(assert (= (and b!3324215 ((_ is Union!10083) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325612))

(declare-fun e!2068197 () Bool)

(assert (=> b!3324215 (= tp!1038534 e!2068197)))

(declare-fun b!3325614 () Bool)

(declare-fun tp!1038724 () Bool)

(declare-fun tp!1038723 () Bool)

(assert (=> b!3325614 (= e!2068197 (and tp!1038724 tp!1038723))))

(declare-fun b!3325615 () Bool)

(declare-fun tp!1038725 () Bool)

(assert (=> b!3325615 (= e!2068197 tp!1038725)))

(declare-fun b!3325613 () Bool)

(assert (=> b!3325613 (= e!2068197 tp_is_empty!17409)))

(declare-fun b!3325616 () Bool)

(declare-fun tp!1038722 () Bool)

(declare-fun tp!1038726 () Bool)

(assert (=> b!3325616 (= e!2068197 (and tp!1038722 tp!1038726))))

(assert (= (and b!3324215 ((_ is ElementMatch!10083) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325613))

(assert (= (and b!3324215 ((_ is Concat!15637) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325614))

(assert (= (and b!3324215 ((_ is Star!10083) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325615))

(assert (= (and b!3324215 ((_ is Union!10083) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325616))

(declare-fun e!2068198 () Bool)

(assert (=> b!3324257 (= tp!1038582 e!2068198)))

(declare-fun b!3325618 () Bool)

(declare-fun tp!1038729 () Bool)

(declare-fun tp!1038728 () Bool)

(assert (=> b!3325618 (= e!2068198 (and tp!1038729 tp!1038728))))

(declare-fun b!3325619 () Bool)

(declare-fun tp!1038730 () Bool)

(assert (=> b!3325619 (= e!2068198 tp!1038730)))

(declare-fun b!3325617 () Bool)

(assert (=> b!3325617 (= e!2068198 tp_is_empty!17409)))

(declare-fun b!3325620 () Bool)

(declare-fun tp!1038727 () Bool)

(declare-fun tp!1038731 () Bool)

(assert (=> b!3325620 (= e!2068198 (and tp!1038727 tp!1038731))))

(assert (= (and b!3324257 ((_ is ElementMatch!10083) (reg!10412 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325617))

(assert (= (and b!3324257 ((_ is Concat!15637) (reg!10412 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325618))

(assert (= (and b!3324257 ((_ is Star!10083) (reg!10412 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325619))

(assert (= (and b!3324257 ((_ is Union!10083) (reg!10412 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325620))

(declare-fun e!2068199 () Bool)

(declare-fun b!3325621 () Bool)

(declare-fun tp!1038734 () Bool)

(declare-fun tp!1038733 () Bool)

(assert (=> b!3325621 (= e!2068199 (and (inv!49630 (left!28547 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) tp!1038734 (inv!49630 (right!28877 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) tp!1038733))))

(declare-fun b!3325623 () Bool)

(declare-fun e!2068200 () Bool)

(declare-fun tp!1038732 () Bool)

(assert (=> b!3325623 (= e!2068200 tp!1038732)))

(declare-fun b!3325622 () Bool)

(assert (=> b!3325622 (= e!2068199 (and (inv!49637 (xs!14161 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) e!2068200))))

(assert (=> b!3324248 (= tp!1038573 (and (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) e!2068199))))

(assert (= (and b!3324248 ((_ is Node!11023) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) b!3325621))

(assert (= b!3325622 b!3325623))

(assert (= (and b!3324248 ((_ is Leaf!17296) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) b!3325622))

(declare-fun m!3666315 () Bool)

(assert (=> b!3325621 m!3666315))

(declare-fun m!3666317 () Bool)

(assert (=> b!3325621 m!3666317))

(declare-fun m!3666319 () Bool)

(assert (=> b!3325622 m!3666319))

(assert (=> b!3324248 m!3663687))

(declare-fun tp!1038737 () Bool)

(declare-fun e!2068201 () Bool)

(declare-fun b!3325624 () Bool)

(declare-fun tp!1038736 () Bool)

(assert (=> b!3325624 (= e!2068201 (and (inv!49630 (left!28547 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) tp!1038737 (inv!49630 (right!28877 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) tp!1038736))))

(declare-fun b!3325626 () Bool)

(declare-fun e!2068202 () Bool)

(declare-fun tp!1038735 () Bool)

(assert (=> b!3325626 (= e!2068202 tp!1038735)))

(declare-fun b!3325625 () Bool)

(assert (=> b!3325625 (= e!2068201 (and (inv!49637 (xs!14161 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) e!2068202))))

(assert (=> b!3324248 (= tp!1038572 (and (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))) e!2068201))))

(assert (= (and b!3324248 ((_ is Node!11023) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) b!3325624))

(assert (= b!3325625 b!3325626))

(assert (= (and b!3324248 ((_ is Leaf!17296) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494))))))) b!3325625))

(declare-fun m!3666321 () Bool)

(assert (=> b!3325624 m!3666321))

(declare-fun m!3666323 () Bool)

(assert (=> b!3325624 m!3666323))

(declare-fun m!3666325 () Bool)

(assert (=> b!3325625 m!3666325))

(assert (=> b!3324248 m!3663689))

(declare-fun b!3325627 () Bool)

(declare-fun tp!1038739 () Bool)

(declare-fun tp!1038740 () Bool)

(declare-fun e!2068203 () Bool)

(assert (=> b!3325627 (= e!2068203 (and (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))))) tp!1038740 (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))))) tp!1038739))))

(declare-fun b!3325629 () Bool)

(declare-fun e!2068204 () Bool)

(declare-fun tp!1038738 () Bool)

(assert (=> b!3325629 (= e!2068204 tp!1038738)))

(declare-fun b!3325628 () Bool)

(assert (=> b!3325628 (= e!2068203 (and (inv!49637 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))))) e!2068204))))

(assert (=> b!3324046 (= tp!1038420 (and (inv!49630 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494)))))) e!2068203))))

(assert (= (and b!3324046 ((_ is Node!11023) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))))) b!3325627))

(assert (= b!3325628 b!3325629))

(assert (= (and b!3324046 ((_ is Leaf!17296) (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (value!172194 (h!42053 (t!256360 tokens!494))))))) b!3325628))

(declare-fun m!3666327 () Bool)

(assert (=> b!3325627 m!3666327))

(declare-fun m!3666329 () Bool)

(assert (=> b!3325627 m!3666329))

(declare-fun m!3666331 () Bool)

(assert (=> b!3325628 m!3666331))

(assert (=> b!3324046 m!3663407))

(declare-fun e!2068205 () Bool)

(assert (=> b!3324306 (= tp!1038634 e!2068205)))

(declare-fun b!3325631 () Bool)

(declare-fun tp!1038743 () Bool)

(declare-fun tp!1038742 () Bool)

(assert (=> b!3325631 (= e!2068205 (and tp!1038743 tp!1038742))))

(declare-fun b!3325632 () Bool)

(declare-fun tp!1038744 () Bool)

(assert (=> b!3325632 (= e!2068205 tp!1038744)))

(declare-fun b!3325630 () Bool)

(assert (=> b!3325630 (= e!2068205 tp_is_empty!17409)))

(declare-fun b!3325633 () Bool)

(declare-fun tp!1038741 () Bool)

(declare-fun tp!1038745 () Bool)

(assert (=> b!3325633 (= e!2068205 (and tp!1038741 tp!1038745))))

(assert (= (and b!3324306 ((_ is ElementMatch!10083) (regOne!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325630))

(assert (= (and b!3324306 ((_ is Concat!15637) (regOne!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325631))

(assert (= (and b!3324306 ((_ is Star!10083) (regOne!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325632))

(assert (= (and b!3324306 ((_ is Union!10083) (regOne!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325633))

(declare-fun e!2068206 () Bool)

(assert (=> b!3324306 (= tp!1038638 e!2068206)))

(declare-fun b!3325635 () Bool)

(declare-fun tp!1038748 () Bool)

(declare-fun tp!1038747 () Bool)

(assert (=> b!3325635 (= e!2068206 (and tp!1038748 tp!1038747))))

(declare-fun b!3325636 () Bool)

(declare-fun tp!1038749 () Bool)

(assert (=> b!3325636 (= e!2068206 tp!1038749)))

(declare-fun b!3325634 () Bool)

(assert (=> b!3325634 (= e!2068206 tp_is_empty!17409)))

(declare-fun b!3325637 () Bool)

(declare-fun tp!1038746 () Bool)

(declare-fun tp!1038750 () Bool)

(assert (=> b!3325637 (= e!2068206 (and tp!1038746 tp!1038750))))

(assert (= (and b!3324306 ((_ is ElementMatch!10083) (regTwo!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325634))

(assert (= (and b!3324306 ((_ is Concat!15637) (regTwo!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325635))

(assert (= (and b!3324306 ((_ is Star!10083) (regTwo!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325636))

(assert (= (and b!3324306 ((_ is Union!10083) (regTwo!20679 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325637))

(declare-fun b!3325640 () Bool)

(declare-fun e!2068209 () Bool)

(assert (=> b!3325640 (= e!2068209 true)))

(declare-fun b!3325639 () Bool)

(declare-fun e!2068208 () Bool)

(assert (=> b!3325639 (= e!2068208 e!2068209)))

(declare-fun b!3325638 () Bool)

(declare-fun e!2068207 () Bool)

(assert (=> b!3325638 (= e!2068207 e!2068208)))

(assert (=> b!3323923 e!2068207))

(assert (= b!3325639 b!3325640))

(assert (= b!3325638 b!3325639))

(assert (= (and b!3323923 ((_ is Cons!36632) (t!256359 rules!2135))) b!3325638))

(assert (=> b!3325640 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15091 order!19139 lambda!119627))))

(assert (=> b!3325640 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135))))) (dynLambda!15091 order!19139 lambda!119627))))

(declare-fun b!3325727 () Bool)

(declare-fun e!2068246 () Bool)

(declare-fun tp!1038806 () Bool)

(assert (=> b!3325727 (= e!2068246 (and tp_is_empty!17409 tp!1038806))))

(assert (=> b!3324250 (= tp!1038571 e!2068246)))

(assert (= (and b!3324250 ((_ is Cons!36631) (innerList!11083 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (value!172194 (h!42053 tokens!494)))))))) b!3325727))

(declare-fun e!2068247 () Bool)

(assert (=> b!3324274 (= tp!1038603 e!2068247)))

(declare-fun b!3325729 () Bool)

(declare-fun tp!1038809 () Bool)

(declare-fun tp!1038808 () Bool)

(assert (=> b!3325729 (= e!2068247 (and tp!1038809 tp!1038808))))

(declare-fun b!3325730 () Bool)

(declare-fun tp!1038810 () Bool)

(assert (=> b!3325730 (= e!2068247 tp!1038810)))

(declare-fun b!3325728 () Bool)

(assert (=> b!3325728 (= e!2068247 tp_is_empty!17409)))

(declare-fun b!3325731 () Bool)

(declare-fun tp!1038807 () Bool)

(declare-fun tp!1038811 () Bool)

(assert (=> b!3325731 (= e!2068247 (and tp!1038807 tp!1038811))))

(assert (= (and b!3324274 ((_ is ElementMatch!10083) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325728))

(assert (= (and b!3324274 ((_ is Concat!15637) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325729))

(assert (= (and b!3324274 ((_ is Star!10083) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325730))

(assert (= (and b!3324274 ((_ is Union!10083) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325731))

(declare-fun e!2068249 () Bool)

(assert (=> b!3324274 (= tp!1038602 e!2068249)))

(declare-fun b!3325737 () Bool)

(declare-fun tp!1038819 () Bool)

(declare-fun tp!1038818 () Bool)

(assert (=> b!3325737 (= e!2068249 (and tp!1038819 tp!1038818))))

(declare-fun b!3325738 () Bool)

(declare-fun tp!1038820 () Bool)

(assert (=> b!3325738 (= e!2068249 tp!1038820)))

(declare-fun b!3325736 () Bool)

(assert (=> b!3325736 (= e!2068249 tp_is_empty!17409)))

(declare-fun b!3325739 () Bool)

(declare-fun tp!1038817 () Bool)

(declare-fun tp!1038821 () Bool)

(assert (=> b!3325739 (= e!2068249 (and tp!1038817 tp!1038821))))

(assert (= (and b!3324274 ((_ is ElementMatch!10083) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325736))

(assert (= (and b!3324274 ((_ is Concat!15637) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325737))

(assert (= (and b!3324274 ((_ is Star!10083) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325738))

(assert (= (and b!3324274 ((_ is Union!10083) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325739))

(declare-fun e!2068252 () Bool)

(assert (=> b!3324233 (= tp!1038557 e!2068252)))

(declare-fun b!3325744 () Bool)

(declare-fun tp!1038827 () Bool)

(declare-fun tp!1038826 () Bool)

(assert (=> b!3325744 (= e!2068252 (and tp!1038827 tp!1038826))))

(declare-fun b!3325745 () Bool)

(declare-fun tp!1038828 () Bool)

(assert (=> b!3325745 (= e!2068252 tp!1038828)))

(declare-fun b!3325743 () Bool)

(assert (=> b!3325743 (= e!2068252 tp_is_empty!17409)))

(declare-fun b!3325746 () Bool)

(declare-fun tp!1038825 () Bool)

(declare-fun tp!1038829 () Bool)

(assert (=> b!3325746 (= e!2068252 (and tp!1038825 tp!1038829))))

(assert (= (and b!3324233 ((_ is ElementMatch!10083) (regOne!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325743))

(assert (= (and b!3324233 ((_ is Concat!15637) (regOne!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325744))

(assert (= (and b!3324233 ((_ is Star!10083) (regOne!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325745))

(assert (= (and b!3324233 ((_ is Union!10083) (regOne!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325746))

(declare-fun e!2068253 () Bool)

(assert (=> b!3324233 (= tp!1038556 e!2068253)))

(declare-fun b!3325748 () Bool)

(declare-fun tp!1038832 () Bool)

(declare-fun tp!1038831 () Bool)

(assert (=> b!3325748 (= e!2068253 (and tp!1038832 tp!1038831))))

(declare-fun b!3325749 () Bool)

(declare-fun tp!1038833 () Bool)

(assert (=> b!3325749 (= e!2068253 tp!1038833)))

(declare-fun b!3325747 () Bool)

(assert (=> b!3325747 (= e!2068253 tp_is_empty!17409)))

(declare-fun b!3325750 () Bool)

(declare-fun tp!1038830 () Bool)

(declare-fun tp!1038834 () Bool)

(assert (=> b!3325750 (= e!2068253 (and tp!1038830 tp!1038834))))

(assert (= (and b!3324233 ((_ is ElementMatch!10083) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325747))

(assert (= (and b!3324233 ((_ is Concat!15637) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325748))

(assert (= (and b!3324233 ((_ is Star!10083) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325749))

(assert (= (and b!3324233 ((_ is Union!10083) (regTwo!20678 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325750))

(declare-fun e!2068256 () Bool)

(assert (=> b!3324266 (= tp!1038593 e!2068256)))

(declare-fun b!3325755 () Bool)

(declare-fun tp!1038840 () Bool)

(declare-fun tp!1038839 () Bool)

(assert (=> b!3325755 (= e!2068256 (and tp!1038840 tp!1038839))))

(declare-fun b!3325756 () Bool)

(declare-fun tp!1038841 () Bool)

(assert (=> b!3325756 (= e!2068256 tp!1038841)))

(declare-fun b!3325754 () Bool)

(assert (=> b!3325754 (= e!2068256 tp_is_empty!17409)))

(declare-fun b!3325757 () Bool)

(declare-fun tp!1038838 () Bool)

(declare-fun tp!1038842 () Bool)

(assert (=> b!3325757 (= e!2068256 (and tp!1038838 tp!1038842))))

(assert (= (and b!3324266 ((_ is ElementMatch!10083) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325754))

(assert (= (and b!3324266 ((_ is Concat!15637) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325755))

(assert (= (and b!3324266 ((_ is Star!10083) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325756))

(assert (= (and b!3324266 ((_ is Union!10083) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325757))

(declare-fun e!2068258 () Bool)

(assert (=> b!3324235 (= tp!1038555 e!2068258)))

(declare-fun b!3325760 () Bool)

(declare-fun tp!1038846 () Bool)

(declare-fun tp!1038845 () Bool)

(assert (=> b!3325760 (= e!2068258 (and tp!1038846 tp!1038845))))

(declare-fun b!3325761 () Bool)

(declare-fun tp!1038847 () Bool)

(assert (=> b!3325761 (= e!2068258 tp!1038847)))

(declare-fun b!3325759 () Bool)

(assert (=> b!3325759 (= e!2068258 tp_is_empty!17409)))

(declare-fun b!3325762 () Bool)

(declare-fun tp!1038843 () Bool)

(declare-fun tp!1038848 () Bool)

(assert (=> b!3325762 (= e!2068258 (and tp!1038843 tp!1038848))))

(assert (= (and b!3324235 ((_ is ElementMatch!10083) (regOne!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325759))

(assert (= (and b!3324235 ((_ is Concat!15637) (regOne!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325760))

(assert (= (and b!3324235 ((_ is Star!10083) (regOne!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325761))

(assert (= (and b!3324235 ((_ is Union!10083) (regOne!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325762))

(declare-fun e!2068261 () Bool)

(assert (=> b!3324235 (= tp!1038559 e!2068261)))

(declare-fun b!3325765 () Bool)

(declare-fun tp!1038854 () Bool)

(declare-fun tp!1038852 () Bool)

(assert (=> b!3325765 (= e!2068261 (and tp!1038854 tp!1038852))))

(declare-fun b!3325766 () Bool)

(declare-fun tp!1038856 () Bool)

(assert (=> b!3325766 (= e!2068261 tp!1038856)))

(declare-fun b!3325764 () Bool)

(assert (=> b!3325764 (= e!2068261 tp_is_empty!17409)))

(declare-fun b!3325768 () Bool)

(declare-fun tp!1038850 () Bool)

(declare-fun tp!1038857 () Bool)

(assert (=> b!3325768 (= e!2068261 (and tp!1038850 tp!1038857))))

(assert (= (and b!3324235 ((_ is ElementMatch!10083) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325764))

(assert (= (and b!3324235 ((_ is Concat!15637) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325765))

(assert (= (and b!3324235 ((_ is Star!10083) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325766))

(assert (= (and b!3324235 ((_ is Union!10083) (regTwo!20679 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3325768))

(declare-fun e!2068265 () Bool)

(assert (=> b!3324298 (= tp!1038632 e!2068265)))

(declare-fun b!3325772 () Bool)

(declare-fun tp!1038861 () Bool)

(declare-fun tp!1038860 () Bool)

(assert (=> b!3325772 (= e!2068265 (and tp!1038861 tp!1038860))))

(declare-fun b!3325773 () Bool)

(declare-fun tp!1038862 () Bool)

(assert (=> b!3325773 (= e!2068265 tp!1038862)))

(declare-fun b!3325771 () Bool)

(assert (=> b!3325771 (= e!2068265 tp_is_empty!17409)))

(declare-fun b!3325774 () Bool)

(declare-fun tp!1038859 () Bool)

(declare-fun tp!1038863 () Bool)

(assert (=> b!3325774 (= e!2068265 (and tp!1038859 tp!1038863))))

(assert (= (and b!3324298 ((_ is ElementMatch!10083) (reg!10412 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325771))

(assert (= (and b!3324298 ((_ is Concat!15637) (reg!10412 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325772))

(assert (= (and b!3324298 ((_ is Star!10083) (reg!10412 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325773))

(assert (= (and b!3324298 ((_ is Union!10083) (reg!10412 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325774))

(declare-fun e!2068266 () Bool)

(assert (=> b!3324226 (= tp!1038548 e!2068266)))

(declare-fun b!3325776 () Bool)

(declare-fun tp!1038866 () Bool)

(declare-fun tp!1038865 () Bool)

(assert (=> b!3325776 (= e!2068266 (and tp!1038866 tp!1038865))))

(declare-fun b!3325777 () Bool)

(declare-fun tp!1038867 () Bool)

(assert (=> b!3325777 (= e!2068266 tp!1038867)))

(declare-fun b!3325775 () Bool)

(assert (=> b!3325775 (= e!2068266 tp_is_empty!17409)))

(declare-fun b!3325778 () Bool)

(declare-fun tp!1038864 () Bool)

(declare-fun tp!1038868 () Bool)

(assert (=> b!3325778 (= e!2068266 (and tp!1038864 tp!1038868))))

(assert (= (and b!3324226 ((_ is ElementMatch!10083) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325775))

(assert (= (and b!3324226 ((_ is Concat!15637) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325776))

(assert (= (and b!3324226 ((_ is Star!10083) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325777))

(assert (= (and b!3324226 ((_ is Union!10083) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325778))

(declare-fun e!2068267 () Bool)

(assert (=> b!3324289 (= tp!1038621 e!2068267)))

(declare-fun b!3325780 () Bool)

(declare-fun tp!1038871 () Bool)

(declare-fun tp!1038870 () Bool)

(assert (=> b!3325780 (= e!2068267 (and tp!1038871 tp!1038870))))

(declare-fun b!3325781 () Bool)

(declare-fun tp!1038872 () Bool)

(assert (=> b!3325781 (= e!2068267 tp!1038872)))

(declare-fun b!3325779 () Bool)

(assert (=> b!3325779 (= e!2068267 tp_is_empty!17409)))

(declare-fun b!3325782 () Bool)

(declare-fun tp!1038869 () Bool)

(declare-fun tp!1038873 () Bool)

(assert (=> b!3325782 (= e!2068267 (and tp!1038869 tp!1038873))))

(assert (= (and b!3324289 ((_ is ElementMatch!10083) (regOne!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325779))

(assert (= (and b!3324289 ((_ is Concat!15637) (regOne!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325780))

(assert (= (and b!3324289 ((_ is Star!10083) (regOne!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325781))

(assert (= (and b!3324289 ((_ is Union!10083) (regOne!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325782))

(declare-fun e!2068268 () Bool)

(assert (=> b!3324289 (= tp!1038620 e!2068268)))

(declare-fun b!3325784 () Bool)

(declare-fun tp!1038876 () Bool)

(declare-fun tp!1038875 () Bool)

(assert (=> b!3325784 (= e!2068268 (and tp!1038876 tp!1038875))))

(declare-fun b!3325785 () Bool)

(declare-fun tp!1038877 () Bool)

(assert (=> b!3325785 (= e!2068268 tp!1038877)))

(declare-fun b!3325783 () Bool)

(assert (=> b!3325783 (= e!2068268 tp_is_empty!17409)))

(declare-fun b!3325786 () Bool)

(declare-fun tp!1038874 () Bool)

(declare-fun tp!1038878 () Bool)

(assert (=> b!3325786 (= e!2068268 (and tp!1038874 tp!1038878))))

(assert (= (and b!3324289 ((_ is ElementMatch!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325783))

(assert (= (and b!3324289 ((_ is Concat!15637) (regTwo!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325784))

(assert (= (and b!3324289 ((_ is Star!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325785))

(assert (= (and b!3324289 ((_ is Union!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325786))

(declare-fun b!3325787 () Bool)

(declare-fun e!2068269 () Bool)

(declare-fun tp!1038879 () Bool)

(assert (=> b!3325787 (= e!2068269 (and tp_is_empty!17409 tp!1038879))))

(assert (=> b!3324259 (= tp!1038584 e!2068269)))

(assert (= (and b!3324259 ((_ is Cons!36631) (t!256358 (t!256358 (originalCharacters!6038 separatorToken!241))))) b!3325787))

(declare-fun e!2068270 () Bool)

(assert (=> b!3324227 (= tp!1038545 e!2068270)))

(declare-fun b!3325789 () Bool)

(declare-fun tp!1038882 () Bool)

(declare-fun tp!1038881 () Bool)

(assert (=> b!3325789 (= e!2068270 (and tp!1038882 tp!1038881))))

(declare-fun b!3325790 () Bool)

(declare-fun tp!1038883 () Bool)

(assert (=> b!3325790 (= e!2068270 tp!1038883)))

(declare-fun b!3325788 () Bool)

(assert (=> b!3325788 (= e!2068270 tp_is_empty!17409)))

(declare-fun b!3325791 () Bool)

(declare-fun tp!1038880 () Bool)

(declare-fun tp!1038884 () Bool)

(assert (=> b!3325791 (= e!2068270 (and tp!1038880 tp!1038884))))

(assert (= (and b!3324227 ((_ is ElementMatch!10083) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325788))

(assert (= (and b!3324227 ((_ is Concat!15637) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325789))

(assert (= (and b!3324227 ((_ is Star!10083) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325790))

(assert (= (and b!3324227 ((_ is Union!10083) (regOne!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325791))

(declare-fun e!2068272 () Bool)

(assert (=> b!3324227 (= tp!1038549 e!2068272)))

(declare-fun b!3325797 () Bool)

(declare-fun tp!1038892 () Bool)

(declare-fun tp!1038891 () Bool)

(assert (=> b!3325797 (= e!2068272 (and tp!1038892 tp!1038891))))

(declare-fun b!3325798 () Bool)

(declare-fun tp!1038893 () Bool)

(assert (=> b!3325798 (= e!2068272 tp!1038893)))

(declare-fun b!3325796 () Bool)

(assert (=> b!3325796 (= e!2068272 tp_is_empty!17409)))

(declare-fun b!3325799 () Bool)

(declare-fun tp!1038890 () Bool)

(declare-fun tp!1038894 () Bool)

(assert (=> b!3325799 (= e!2068272 (and tp!1038890 tp!1038894))))

(assert (= (and b!3324227 ((_ is ElementMatch!10083) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325796))

(assert (= (and b!3324227 ((_ is Concat!15637) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325797))

(assert (= (and b!3324227 ((_ is Star!10083) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325798))

(assert (= (and b!3324227 ((_ is Union!10083) (regTwo!20679 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325799))

(declare-fun e!2068274 () Bool)

(assert (=> b!3324290 (= tp!1038622 e!2068274)))

(declare-fun b!3325805 () Bool)

(declare-fun tp!1038902 () Bool)

(declare-fun tp!1038901 () Bool)

(assert (=> b!3325805 (= e!2068274 (and tp!1038902 tp!1038901))))

(declare-fun b!3325806 () Bool)

(declare-fun tp!1038903 () Bool)

(assert (=> b!3325806 (= e!2068274 tp!1038903)))

(declare-fun b!3325804 () Bool)

(assert (=> b!3325804 (= e!2068274 tp_is_empty!17409)))

(declare-fun b!3325807 () Bool)

(declare-fun tp!1038900 () Bool)

(declare-fun tp!1038904 () Bool)

(assert (=> b!3325807 (= e!2068274 (and tp!1038900 tp!1038904))))

(assert (= (and b!3324290 ((_ is ElementMatch!10083) (reg!10412 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325804))

(assert (= (and b!3324290 ((_ is Concat!15637) (reg!10412 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325805))

(assert (= (and b!3324290 ((_ is Star!10083) (reg!10412 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325806))

(assert (= (and b!3324290 ((_ is Union!10083) (reg!10412 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325807))

(declare-fun e!2068276 () Bool)

(assert (=> b!3324218 (= tp!1038538 e!2068276)))

(declare-fun b!3325813 () Bool)

(declare-fun tp!1038912 () Bool)

(declare-fun tp!1038911 () Bool)

(assert (=> b!3325813 (= e!2068276 (and tp!1038912 tp!1038911))))

(declare-fun b!3325814 () Bool)

(declare-fun tp!1038913 () Bool)

(assert (=> b!3325814 (= e!2068276 tp!1038913)))

(declare-fun b!3325812 () Bool)

(assert (=> b!3325812 (= e!2068276 tp_is_empty!17409)))

(declare-fun b!3325815 () Bool)

(declare-fun tp!1038910 () Bool)

(declare-fun tp!1038914 () Bool)

(assert (=> b!3325815 (= e!2068276 (and tp!1038910 tp!1038914))))

(assert (= (and b!3324218 ((_ is ElementMatch!10083) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325812))

(assert (= (and b!3324218 ((_ is Concat!15637) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325813))

(assert (= (and b!3324218 ((_ is Star!10083) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325814))

(assert (= (and b!3324218 ((_ is Union!10083) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325815))

(declare-fun e!2068278 () Bool)

(assert (=> b!3324299 (= tp!1038629 e!2068278)))

(declare-fun b!3325821 () Bool)

(declare-fun tp!1038922 () Bool)

(declare-fun tp!1038921 () Bool)

(assert (=> b!3325821 (= e!2068278 (and tp!1038922 tp!1038921))))

(declare-fun b!3325822 () Bool)

(declare-fun tp!1038923 () Bool)

(assert (=> b!3325822 (= e!2068278 tp!1038923)))

(declare-fun b!3325820 () Bool)

(assert (=> b!3325820 (= e!2068278 tp_is_empty!17409)))

(declare-fun b!3325823 () Bool)

(declare-fun tp!1038920 () Bool)

(declare-fun tp!1038924 () Bool)

(assert (=> b!3325823 (= e!2068278 (and tp!1038920 tp!1038924))))

(assert (= (and b!3324299 ((_ is ElementMatch!10083) (regOne!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325820))

(assert (= (and b!3324299 ((_ is Concat!15637) (regOne!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325821))

(assert (= (and b!3324299 ((_ is Star!10083) (regOne!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325822))

(assert (= (and b!3324299 ((_ is Union!10083) (regOne!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325823))

(declare-fun e!2068280 () Bool)

(assert (=> b!3324299 (= tp!1038633 e!2068280)))

(declare-fun b!3325829 () Bool)

(declare-fun tp!1038932 () Bool)

(declare-fun tp!1038931 () Bool)

(assert (=> b!3325829 (= e!2068280 (and tp!1038932 tp!1038931))))

(declare-fun b!3325830 () Bool)

(declare-fun tp!1038933 () Bool)

(assert (=> b!3325830 (= e!2068280 tp!1038933)))

(declare-fun b!3325828 () Bool)

(assert (=> b!3325828 (= e!2068280 tp_is_empty!17409)))

(declare-fun b!3325831 () Bool)

(declare-fun tp!1038930 () Bool)

(declare-fun tp!1038934 () Bool)

(assert (=> b!3325831 (= e!2068280 (and tp!1038930 tp!1038934))))

(assert (= (and b!3324299 ((_ is ElementMatch!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325828))

(assert (= (and b!3324299 ((_ is Concat!15637) (regTwo!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325829))

(assert (= (and b!3324299 ((_ is Star!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325830))

(assert (= (and b!3324299 ((_ is Union!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325831))

(declare-fun b!3325838 () Bool)

(declare-fun e!2068284 () Bool)

(assert (=> b!3325838 (= e!2068284 true)))

(declare-fun b!3325837 () Bool)

(declare-fun e!2068283 () Bool)

(assert (=> b!3325837 (= e!2068283 e!2068284)))

(declare-fun b!3325836 () Bool)

(declare-fun e!2068282 () Bool)

(assert (=> b!3325836 (= e!2068282 e!2068283)))

(assert (=> b!3324300 e!2068282))

(assert (= b!3325837 b!3325838))

(assert (= b!3325836 b!3325837))

(assert (= (and b!3324300 ((_ is Cons!36632) (t!256359 (t!256359 rules!2135)))) b!3325836))

(assert (=> b!3325838 (< (dynLambda!15090 order!19137 (toValue!7480 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))) (dynLambda!15091 order!19139 lambda!119603))))

(assert (=> b!3325838 (< (dynLambda!15092 order!19141 (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))) (dynLambda!15091 order!19139 lambda!119603))))

(declare-fun e!2068287 () Bool)

(assert (=> b!3324229 (= tp!1038552 e!2068287)))

(declare-fun b!3325843 () Bool)

(declare-fun tp!1038945 () Bool)

(declare-fun tp!1038944 () Bool)

(assert (=> b!3325843 (= e!2068287 (and tp!1038945 tp!1038944))))

(declare-fun b!3325844 () Bool)

(declare-fun tp!1038946 () Bool)

(assert (=> b!3325844 (= e!2068287 tp!1038946)))

(declare-fun b!3325842 () Bool)

(assert (=> b!3325842 (= e!2068287 tp_is_empty!17409)))

(declare-fun b!3325845 () Bool)

(declare-fun tp!1038943 () Bool)

(declare-fun tp!1038947 () Bool)

(assert (=> b!3325845 (= e!2068287 (and tp!1038943 tp!1038947))))

(assert (= (and b!3324229 ((_ is ElementMatch!10083) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325842))

(assert (= (and b!3324229 ((_ is Concat!15637) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325843))

(assert (= (and b!3324229 ((_ is Star!10083) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325844))

(assert (= (and b!3324229 ((_ is Union!10083) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325845))

(declare-fun e!2068288 () Bool)

(assert (=> b!3324229 (= tp!1038551 e!2068288)))

(declare-fun b!3325847 () Bool)

(declare-fun tp!1038950 () Bool)

(declare-fun tp!1038949 () Bool)

(assert (=> b!3325847 (= e!2068288 (and tp!1038950 tp!1038949))))

(declare-fun b!3325848 () Bool)

(declare-fun tp!1038951 () Bool)

(assert (=> b!3325848 (= e!2068288 tp!1038951)))

(declare-fun b!3325846 () Bool)

(assert (=> b!3325846 (= e!2068288 tp_is_empty!17409)))

(declare-fun b!3325849 () Bool)

(declare-fun tp!1038948 () Bool)

(declare-fun tp!1038952 () Bool)

(assert (=> b!3325849 (= e!2068288 (and tp!1038948 tp!1038952))))

(assert (= (and b!3324229 ((_ is ElementMatch!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325846))

(assert (= (and b!3324229 ((_ is Concat!15637) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325847))

(assert (= (and b!3324229 ((_ is Star!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325848))

(assert (= (and b!3324229 ((_ is Union!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325849))

(declare-fun e!2068291 () Bool)

(assert (=> b!3324262 (= tp!1038588 e!2068291)))

(declare-fun b!3325854 () Bool)

(declare-fun tp!1038958 () Bool)

(declare-fun tp!1038957 () Bool)

(assert (=> b!3325854 (= e!2068291 (and tp!1038958 tp!1038957))))

(declare-fun b!3325855 () Bool)

(declare-fun tp!1038959 () Bool)

(assert (=> b!3325855 (= e!2068291 tp!1038959)))

(declare-fun b!3325853 () Bool)

(assert (=> b!3325853 (= e!2068291 tp_is_empty!17409)))

(declare-fun b!3325856 () Bool)

(declare-fun tp!1038956 () Bool)

(declare-fun tp!1038960 () Bool)

(assert (=> b!3325856 (= e!2068291 (and tp!1038956 tp!1038960))))

(assert (= (and b!3324262 ((_ is ElementMatch!10083) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325853))

(assert (= (and b!3324262 ((_ is Concat!15637) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325854))

(assert (= (and b!3324262 ((_ is Star!10083) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325855))

(assert (= (and b!3324262 ((_ is Union!10083) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325856))

(declare-fun e!2068292 () Bool)

(assert (=> b!3324238 (= tp!1038563 e!2068292)))

(declare-fun b!3325858 () Bool)

(declare-fun tp!1038963 () Bool)

(declare-fun tp!1038962 () Bool)

(assert (=> b!3325858 (= e!2068292 (and tp!1038963 tp!1038962))))

(declare-fun b!3325859 () Bool)

(declare-fun tp!1038964 () Bool)

(assert (=> b!3325859 (= e!2068292 tp!1038964)))

(declare-fun b!3325857 () Bool)

(assert (=> b!3325857 (= e!2068292 tp_is_empty!17409)))

(declare-fun b!3325860 () Bool)

(declare-fun tp!1038961 () Bool)

(declare-fun tp!1038965 () Bool)

(assert (=> b!3325860 (= e!2068292 (and tp!1038961 tp!1038965))))

(assert (= (and b!3324238 ((_ is ElementMatch!10083) (reg!10412 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325857))

(assert (= (and b!3324238 ((_ is Concat!15637) (reg!10412 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325858))

(assert (= (and b!3324238 ((_ is Star!10083) (reg!10412 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325859))

(assert (= (and b!3324238 ((_ is Union!10083) (reg!10412 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325860))

(declare-fun b!3325868 () Bool)

(declare-fun b_free!87485 () Bool)

(declare-fun b_next!88189 () Bool)

(assert (=> b!3325868 (= b_free!87485 (not b_next!88189))))

(declare-fun tp!1038974 () Bool)

(declare-fun b_and!229171 () Bool)

(assert (=> b!3325868 (= tp!1038974 b_and!229171)))

(declare-fun b_free!87487 () Bool)

(declare-fun b_next!88191 () Bool)

(assert (=> b!3325868 (= b_free!87487 (not b_next!88191))))

(declare-fun t!256626 () Bool)

(declare-fun tb!174131 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241)))) t!256626) tb!174131))

(declare-fun result!217188 () Bool)

(assert (= result!217188 result!216956))

(assert (=> d!934665 t!256626))

(declare-fun t!256628 () Bool)

(declare-fun tb!174133 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (_1!21205 (v!36173 lt!1129568)))))) t!256628) tb!174133))

(declare-fun result!217190 () Bool)

(assert (= result!217190 result!217076))

(assert (=> d!934797 t!256628))

(declare-fun tb!174135 () Bool)

(declare-fun t!256630 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (apply!8449 lt!1129204 0))))) t!256630) tb!174135))

(declare-fun result!217192 () Bool)

(assert (= result!217192 result!217062))

(assert (=> d!934679 t!256630))

(declare-fun tb!174137 () Bool)

(declare-fun t!256632 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (list!13177 lt!1129204)))))) t!256632) tb!174137))

(declare-fun result!217194 () Bool)

(assert (= result!217194 result!217048))

(assert (=> d!934663 t!256632))

(declare-fun t!256634 () Bool)

(declare-fun tb!174139 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494)))))) t!256634) tb!174139))

(declare-fun result!217196 () Bool)

(assert (= result!217196 result!217010))

(assert (=> b!3324044 t!256634))

(declare-fun t!256636 () Bool)

(declare-fun tb!174141 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494))))))) t!256636) tb!174141))

(declare-fun result!217198 () Bool)

(assert (= result!217198 result!217132))

(assert (=> b!3325463 t!256636))

(assert (=> b!3323602 t!256626))

(declare-fun t!256638 () Bool)

(declare-fun tb!174143 () Bool)

(assert (=> (and b!3325868 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494))))) t!256638) tb!174143))

(declare-fun result!217200 () Bool)

(assert (= result!217200 result!216940))

(assert (=> b!3323529 t!256638))

(declare-fun tp!1038970 () Bool)

(declare-fun b_and!229173 () Bool)

(assert (=> b!3325868 (= tp!1038970 (and (=> t!256628 result!217190) (=> t!256636 result!217198) (=> t!256626 result!217188) (=> t!256634 result!217196) (=> t!256632 result!217194) (=> t!256638 result!217200) (=> t!256630 result!217192) b_and!229173))))

(declare-fun e!2068299 () Bool)

(assert (=> b!3325868 (= e!2068299 (and tp!1038974 tp!1038970))))

(declare-fun b!3325864 () Bool)

(declare-fun e!2068298 () Bool)

(declare-fun e!2068294 () Bool)

(declare-fun tp!1038972 () Bool)

(assert (=> b!3325864 (= e!2068294 (and (inv!21 (value!172194 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494)))))) e!2068298 tp!1038972))))

(declare-fun e!2068297 () Bool)

(assert (=> b!3324268 (= tp!1038595 e!2068297)))

(declare-fun tp!1038968 () Bool)

(declare-fun b!3325866 () Bool)

(assert (=> b!3325866 (= e!2068298 (and tp!1038968 (inv!49623 (tag!5876 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (inv!49626 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) e!2068299))))

(declare-fun tp!1038967 () Bool)

(declare-fun b!3325862 () Bool)

(assert (=> b!3325862 (= e!2068297 (and (inv!49627 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))) e!2068294 tp!1038967))))

(assert (= b!3325866 b!3325868))

(assert (= b!3325864 b!3325866))

(assert (= b!3325862 b!3325864))

(assert (= (and b!3324268 ((_ is Cons!36633) (t!256360 (t!256360 (t!256360 tokens!494))))) b!3325862))

(declare-fun m!3666475 () Bool)

(assert (=> b!3325864 m!3666475))

(declare-fun m!3666477 () Bool)

(assert (=> b!3325866 m!3666477))

(declare-fun m!3666479 () Bool)

(assert (=> b!3325866 m!3666479))

(declare-fun m!3666481 () Bool)

(assert (=> b!3325862 m!3666481))

(declare-fun e!2068307 () Bool)

(assert (=> b!3324279 (= tp!1038609 e!2068307)))

(declare-fun b!3325890 () Bool)

(declare-fun tp!1039002 () Bool)

(declare-fun tp!1039001 () Bool)

(assert (=> b!3325890 (= e!2068307 (and tp!1039002 tp!1039001))))

(declare-fun b!3325891 () Bool)

(declare-fun tp!1039003 () Bool)

(assert (=> b!3325891 (= e!2068307 tp!1039003)))

(declare-fun b!3325889 () Bool)

(assert (=> b!3325889 (= e!2068307 tp_is_empty!17409)))

(declare-fun b!3325892 () Bool)

(declare-fun tp!1039000 () Bool)

(declare-fun tp!1039004 () Bool)

(assert (=> b!3325892 (= e!2068307 (and tp!1039000 tp!1039004))))

(assert (= (and b!3324279 ((_ is ElementMatch!10083) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325889))

(assert (= (and b!3324279 ((_ is Concat!15637) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325890))

(assert (= (and b!3324279 ((_ is Star!10083) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325891))

(assert (= (and b!3324279 ((_ is Union!10083) (reg!10412 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325892))

(declare-fun b!3325897 () Bool)

(declare-fun e!2068309 () Bool)

(declare-fun tp!1039010 () Bool)

(assert (=> b!3325897 (= e!2068309 (and tp_is_empty!17409 tp!1039010))))

(assert (=> b!3324269 (= tp!1038598 e!2068309)))

(assert (= (and b!3324269 ((_ is Cons!36631) (originalCharacters!6038 (h!42053 (t!256360 (t!256360 tokens!494)))))) b!3325897))

(declare-fun e!2068311 () Bool)

(assert (=> b!3324295 (= tp!1038624 e!2068311)))

(declare-fun b!3325903 () Bool)

(declare-fun tp!1039018 () Bool)

(declare-fun tp!1039017 () Bool)

(assert (=> b!3325903 (= e!2068311 (and tp!1039018 tp!1039017))))

(declare-fun b!3325904 () Bool)

(declare-fun tp!1039019 () Bool)

(assert (=> b!3325904 (= e!2068311 tp!1039019)))

(declare-fun b!3325902 () Bool)

(assert (=> b!3325902 (= e!2068311 tp_is_empty!17409)))

(declare-fun b!3325905 () Bool)

(declare-fun tp!1039016 () Bool)

(declare-fun tp!1039020 () Bool)

(assert (=> b!3325905 (= e!2068311 (and tp!1039016 tp!1039020))))

(assert (= (and b!3324295 ((_ is ElementMatch!10083) (regOne!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325902))

(assert (= (and b!3324295 ((_ is Concat!15637) (regOne!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325903))

(assert (= (and b!3324295 ((_ is Star!10083) (regOne!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325904))

(assert (= (and b!3324295 ((_ is Union!10083) (regOne!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325905))

(declare-fun e!2068313 () Bool)

(assert (=> b!3324295 (= tp!1038628 e!2068313)))

(declare-fun b!3325911 () Bool)

(declare-fun tp!1039028 () Bool)

(declare-fun tp!1039027 () Bool)

(assert (=> b!3325911 (= e!2068313 (and tp!1039028 tp!1039027))))

(declare-fun b!3325912 () Bool)

(declare-fun tp!1039029 () Bool)

(assert (=> b!3325912 (= e!2068313 tp!1039029)))

(declare-fun b!3325910 () Bool)

(assert (=> b!3325910 (= e!2068313 tp_is_empty!17409)))

(declare-fun b!3325913 () Bool)

(declare-fun tp!1039025 () Bool)

(declare-fun tp!1039030 () Bool)

(assert (=> b!3325913 (= e!2068313 (and tp!1039025 tp!1039030))))

(assert (= (and b!3324295 ((_ is ElementMatch!10083) (regTwo!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325910))

(assert (= (and b!3324295 ((_ is Concat!15637) (regTwo!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325911))

(assert (= (and b!3324295 ((_ is Star!10083) (regTwo!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325912))

(assert (= (and b!3324295 ((_ is Union!10083) (regTwo!20679 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3325913))

(declare-fun e!2068315 () Bool)

(assert (=> b!3324252 (= tp!1038577 e!2068315)))

(declare-fun b!3325916 () Bool)

(declare-fun tp!1039033 () Bool)

(declare-fun tp!1039032 () Bool)

(assert (=> b!3325916 (= e!2068315 (and tp!1039033 tp!1039032))))

(declare-fun b!3325917 () Bool)

(declare-fun tp!1039035 () Bool)

(assert (=> b!3325917 (= e!2068315 tp!1039035)))

(declare-fun b!3325915 () Bool)

(assert (=> b!3325915 (= e!2068315 tp_is_empty!17409)))

(declare-fun b!3325918 () Bool)

(declare-fun tp!1039031 () Bool)

(declare-fun tp!1039036 () Bool)

(assert (=> b!3325918 (= e!2068315 (and tp!1039031 tp!1039036))))

(assert (= (and b!3324252 ((_ is ElementMatch!10083) (regex!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))) b!3325915))

(assert (= (and b!3324252 ((_ is Concat!15637) (regex!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))) b!3325916))

(assert (= (and b!3324252 ((_ is Star!10083) (regex!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))) b!3325917))

(assert (= (and b!3324252 ((_ is Union!10083) (regex!5324 (h!42052 (t!256359 (t!256359 rules!2135)))))) b!3325918))

(declare-fun e!2068317 () Bool)

(assert (=> b!3324223 (= tp!1038540 e!2068317)))

(declare-fun b!3325924 () Bool)

(declare-fun tp!1039044 () Bool)

(declare-fun tp!1039043 () Bool)

(assert (=> b!3325924 (= e!2068317 (and tp!1039044 tp!1039043))))

(declare-fun b!3325925 () Bool)

(declare-fun tp!1039045 () Bool)

(assert (=> b!3325925 (= e!2068317 tp!1039045)))

(declare-fun b!3325923 () Bool)

(assert (=> b!3325923 (= e!2068317 tp_is_empty!17409)))

(declare-fun b!3325926 () Bool)

(declare-fun tp!1039042 () Bool)

(declare-fun tp!1039046 () Bool)

(assert (=> b!3325926 (= e!2068317 (and tp!1039042 tp!1039046))))

(assert (= (and b!3324223 ((_ is ElementMatch!10083) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325923))

(assert (= (and b!3324223 ((_ is Concat!15637) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325924))

(assert (= (and b!3324223 ((_ is Star!10083) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325925))

(assert (= (and b!3324223 ((_ is Union!10083) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325926))

(declare-fun e!2068319 () Bool)

(assert (=> b!3324223 (= tp!1038544 e!2068319)))

(declare-fun b!3325932 () Bool)

(declare-fun tp!1039054 () Bool)

(declare-fun tp!1039053 () Bool)

(assert (=> b!3325932 (= e!2068319 (and tp!1039054 tp!1039053))))

(declare-fun b!3325933 () Bool)

(declare-fun tp!1039055 () Bool)

(assert (=> b!3325933 (= e!2068319 tp!1039055)))

(declare-fun b!3325931 () Bool)

(assert (=> b!3325931 (= e!2068319 tp_is_empty!17409)))

(declare-fun b!3325934 () Bool)

(declare-fun tp!1039052 () Bool)

(declare-fun tp!1039056 () Bool)

(assert (=> b!3325934 (= e!2068319 (and tp!1039052 tp!1039056))))

(assert (= (and b!3324223 ((_ is ElementMatch!10083) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325931))

(assert (= (and b!3324223 ((_ is Concat!15637) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325932))

(assert (= (and b!3324223 ((_ is Star!10083) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325933))

(assert (= (and b!3324223 ((_ is Union!10083) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3325934))

(declare-fun e!2068321 () Bool)

(assert (=> b!3324286 (= tp!1038617 e!2068321)))

(declare-fun b!3325940 () Bool)

(declare-fun tp!1039064 () Bool)

(declare-fun tp!1039063 () Bool)

(assert (=> b!3325940 (= e!2068321 (and tp!1039064 tp!1039063))))

(declare-fun b!3325941 () Bool)

(declare-fun tp!1039065 () Bool)

(assert (=> b!3325941 (= e!2068321 tp!1039065)))

(declare-fun b!3325939 () Bool)

(assert (=> b!3325939 (= e!2068321 tp_is_empty!17409)))

(declare-fun b!3325942 () Bool)

(declare-fun tp!1039062 () Bool)

(declare-fun tp!1039066 () Bool)

(assert (=> b!3325942 (= e!2068321 (and tp!1039062 tp!1039066))))

(assert (= (and b!3324286 ((_ is ElementMatch!10083) (reg!10412 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325939))

(assert (= (and b!3324286 ((_ is Concat!15637) (reg!10412 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325940))

(assert (= (and b!3324286 ((_ is Star!10083) (reg!10412 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325941))

(assert (= (and b!3324286 ((_ is Union!10083) (reg!10412 (regOne!20679 (regex!5324 (h!42052 rules!2135)))))) b!3325942))

(declare-fun e!2068323 () Bool)

(assert (=> b!3324214 (= tp!1038533 e!2068323)))

(declare-fun b!3325948 () Bool)

(declare-fun tp!1039074 () Bool)

(declare-fun tp!1039073 () Bool)

(assert (=> b!3325948 (= e!2068323 (and tp!1039074 tp!1039073))))

(declare-fun b!3325949 () Bool)

(declare-fun tp!1039075 () Bool)

(assert (=> b!3325949 (= e!2068323 tp!1039075)))

(declare-fun b!3325947 () Bool)

(assert (=> b!3325947 (= e!2068323 tp_is_empty!17409)))

(declare-fun b!3325950 () Bool)

(declare-fun tp!1039072 () Bool)

(declare-fun tp!1039076 () Bool)

(assert (=> b!3325950 (= e!2068323 (and tp!1039072 tp!1039076))))

(assert (= (and b!3324214 ((_ is ElementMatch!10083) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325947))

(assert (= (and b!3324214 ((_ is Concat!15637) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325948))

(assert (= (and b!3324214 ((_ is Star!10083) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325949))

(assert (= (and b!3324214 ((_ is Union!10083) (reg!10412 (regOne!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3325950))

(declare-fun e!2068325 () Bool)

(assert (=> b!3324305 (= tp!1038637 e!2068325)))

(declare-fun b!3325956 () Bool)

(declare-fun tp!1039084 () Bool)

(declare-fun tp!1039083 () Bool)

(assert (=> b!3325956 (= e!2068325 (and tp!1039084 tp!1039083))))

(declare-fun b!3325957 () Bool)

(declare-fun tp!1039085 () Bool)

(assert (=> b!3325957 (= e!2068325 tp!1039085)))

(declare-fun b!3325955 () Bool)

(assert (=> b!3325955 (= e!2068325 tp_is_empty!17409)))

(declare-fun b!3325958 () Bool)

(declare-fun tp!1039082 () Bool)

(declare-fun tp!1039086 () Bool)

(assert (=> b!3325958 (= e!2068325 (and tp!1039082 tp!1039086))))

(assert (= (and b!3324305 ((_ is ElementMatch!10083) (reg!10412 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325955))

(assert (= (and b!3324305 ((_ is Concat!15637) (reg!10412 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325956))

(assert (= (and b!3324305 ((_ is Star!10083) (reg!10412 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325957))

(assert (= (and b!3324305 ((_ is Union!10083) (reg!10412 (reg!10412 (regex!5324 (h!42052 rules!2135)))))) b!3325958))

(declare-fun e!2068326 () Bool)

(assert (=> b!3324256 (= tp!1038581 e!2068326)))

(declare-fun b!3325960 () Bool)

(declare-fun tp!1039089 () Bool)

(declare-fun tp!1039088 () Bool)

(assert (=> b!3325960 (= e!2068326 (and tp!1039089 tp!1039088))))

(declare-fun b!3325961 () Bool)

(declare-fun tp!1039090 () Bool)

(assert (=> b!3325961 (= e!2068326 tp!1039090)))

(declare-fun b!3325959 () Bool)

(assert (=> b!3325959 (= e!2068326 tp_is_empty!17409)))

(declare-fun b!3325962 () Bool)

(declare-fun tp!1039087 () Bool)

(declare-fun tp!1039091 () Bool)

(assert (=> b!3325962 (= e!2068326 (and tp!1039087 tp!1039091))))

(assert (= (and b!3324256 ((_ is ElementMatch!10083) (regOne!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325959))

(assert (= (and b!3324256 ((_ is Concat!15637) (regOne!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325960))

(assert (= (and b!3324256 ((_ is Star!10083) (regOne!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325961))

(assert (= (and b!3324256 ((_ is Union!10083) (regOne!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325962))

(declare-fun e!2068328 () Bool)

(assert (=> b!3324256 (= tp!1038580 e!2068328)))

(declare-fun b!3325968 () Bool)

(declare-fun tp!1039099 () Bool)

(declare-fun tp!1039098 () Bool)

(assert (=> b!3325968 (= e!2068328 (and tp!1039099 tp!1039098))))

(declare-fun b!3325969 () Bool)

(declare-fun tp!1039100 () Bool)

(assert (=> b!3325969 (= e!2068328 tp!1039100)))

(declare-fun b!3325967 () Bool)

(assert (=> b!3325967 (= e!2068328 tp_is_empty!17409)))

(declare-fun b!3325970 () Bool)

(declare-fun tp!1039097 () Bool)

(declare-fun tp!1039101 () Bool)

(assert (=> b!3325970 (= e!2068328 (and tp!1039097 tp!1039101))))

(assert (= (and b!3324256 ((_ is ElementMatch!10083) (regTwo!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325967))

(assert (= (and b!3324256 ((_ is Concat!15637) (regTwo!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325968))

(assert (= (and b!3324256 ((_ is Star!10083) (regTwo!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325969))

(assert (= (and b!3324256 ((_ is Union!10083) (regTwo!20678 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325970))

(declare-fun b!3325975 () Bool)

(declare-fun tp!1039109 () Bool)

(declare-fun tp!1039108 () Bool)

(declare-fun e!2068330 () Bool)

(assert (=> b!3325975 (= e!2068330 (and (inv!49630 (left!28547 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) tp!1039109 (inv!49630 (right!28877 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) tp!1039108))))

(declare-fun b!3325977 () Bool)

(declare-fun e!2068331 () Bool)

(declare-fun tp!1039107 () Bool)

(assert (=> b!3325977 (= e!2068331 tp!1039107)))

(declare-fun b!3325976 () Bool)

(assert (=> b!3325976 (= e!2068330 (and (inv!49637 (xs!14161 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) e!2068331))))

(assert (=> b!3324281 (= tp!1038613 (and (inv!49630 (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) e!2068330))))

(assert (= (and b!3324281 ((_ is Node!11023) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) b!3325975))

(assert (= b!3325976 b!3325977))

(assert (= (and b!3324281 ((_ is Leaf!17296) (left!28547 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) b!3325976))

(declare-fun m!3666483 () Bool)

(assert (=> b!3325975 m!3666483))

(declare-fun m!3666485 () Bool)

(assert (=> b!3325975 m!3666485))

(declare-fun m!3666487 () Bool)

(assert (=> b!3325976 m!3666487))

(assert (=> b!3324281 m!3663705))

(declare-fun tp!1039116 () Bool)

(declare-fun tp!1039117 () Bool)

(declare-fun b!3325982 () Bool)

(declare-fun e!2068333 () Bool)

(assert (=> b!3325982 (= e!2068333 (and (inv!49630 (left!28547 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) tp!1039117 (inv!49630 (right!28877 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) tp!1039116))))

(declare-fun b!3325984 () Bool)

(declare-fun e!2068334 () Bool)

(declare-fun tp!1039115 () Bool)

(assert (=> b!3325984 (= e!2068334 tp!1039115)))

(declare-fun b!3325983 () Bool)

(assert (=> b!3325983 (= e!2068333 (and (inv!49637 (xs!14161 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) e!2068334))))

(assert (=> b!3324281 (= tp!1038612 (and (inv!49630 (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))) e!2068333))))

(assert (= (and b!3324281 ((_ is Node!11023) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) b!3325982))

(assert (= b!3325983 b!3325984))

(assert (= (and b!3324281 ((_ is Leaf!17296) (right!28877 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241)))))) b!3325983))

(declare-fun m!3666489 () Bool)

(assert (=> b!3325982 m!3666489))

(declare-fun m!3666491 () Bool)

(assert (=> b!3325982 m!3666491))

(declare-fun m!3666493 () Bool)

(assert (=> b!3325983 m!3666493))

(assert (=> b!3324281 m!3663707))

(declare-fun e!2068337 () Bool)

(assert (=> b!3324258 (= tp!1038579 e!2068337)))

(declare-fun b!3325994 () Bool)

(declare-fun tp!1039130 () Bool)

(declare-fun tp!1039129 () Bool)

(assert (=> b!3325994 (= e!2068337 (and tp!1039130 tp!1039129))))

(declare-fun b!3325995 () Bool)

(declare-fun tp!1039131 () Bool)

(assert (=> b!3325995 (= e!2068337 tp!1039131)))

(declare-fun b!3325993 () Bool)

(assert (=> b!3325993 (= e!2068337 tp_is_empty!17409)))

(declare-fun b!3325996 () Bool)

(declare-fun tp!1039128 () Bool)

(declare-fun tp!1039132 () Bool)

(assert (=> b!3325996 (= e!2068337 (and tp!1039128 tp!1039132))))

(assert (= (and b!3324258 ((_ is ElementMatch!10083) (regOne!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325993))

(assert (= (and b!3324258 ((_ is Concat!15637) (regOne!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325994))

(assert (= (and b!3324258 ((_ is Star!10083) (regOne!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325995))

(assert (= (and b!3324258 ((_ is Union!10083) (regOne!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3325996))

(declare-fun e!2068339 () Bool)

(assert (=> b!3324258 (= tp!1038583 e!2068339)))

(declare-fun b!3326002 () Bool)

(declare-fun tp!1039140 () Bool)

(declare-fun tp!1039139 () Bool)

(assert (=> b!3326002 (= e!2068339 (and tp!1039140 tp!1039139))))

(declare-fun b!3326003 () Bool)

(declare-fun tp!1039141 () Bool)

(assert (=> b!3326003 (= e!2068339 tp!1039141)))

(declare-fun b!3326001 () Bool)

(assert (=> b!3326001 (= e!2068339 tp_is_empty!17409)))

(declare-fun b!3326004 () Bool)

(declare-fun tp!1039138 () Bool)

(declare-fun tp!1039142 () Bool)

(assert (=> b!3326004 (= e!2068339 (and tp!1039138 tp!1039142))))

(assert (= (and b!3324258 ((_ is ElementMatch!10083) (regTwo!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3326001))

(assert (= (and b!3324258 ((_ is Concat!15637) (regTwo!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3326002))

(assert (= (and b!3324258 ((_ is Star!10083) (regTwo!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3326003))

(assert (= (and b!3324258 ((_ is Union!10083) (regTwo!20679 (regex!5324 (h!42052 (t!256359 rules!2135)))))) b!3326004))

(declare-fun b!3326009 () Bool)

(declare-fun e!2068341 () Bool)

(declare-fun tp!1039148 () Bool)

(assert (=> b!3326009 (= e!2068341 (and tp_is_empty!17409 tp!1039148))))

(assert (=> b!3324283 (= tp!1038611 e!2068341)))

(assert (= (and b!3324283 ((_ is Cons!36631) (innerList!11083 (xs!14161 (c!564521 (dynLambda!15089 (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (value!172194 separatorToken!241))))))) b!3326009))

(declare-fun e!2068342 () Bool)

(assert (=> b!3324265 (= tp!1038592 e!2068342)))

(declare-fun b!3326011 () Bool)

(declare-fun tp!1039151 () Bool)

(declare-fun tp!1039150 () Bool)

(assert (=> b!3326011 (= e!2068342 (and tp!1039151 tp!1039150))))

(declare-fun b!3326012 () Bool)

(declare-fun tp!1039152 () Bool)

(assert (=> b!3326012 (= e!2068342 tp!1039152)))

(declare-fun b!3326010 () Bool)

(assert (=> b!3326010 (= e!2068342 tp_is_empty!17409)))

(declare-fun b!3326013 () Bool)

(declare-fun tp!1039149 () Bool)

(declare-fun tp!1039153 () Bool)

(assert (=> b!3326013 (= e!2068342 (and tp!1039149 tp!1039153))))

(assert (= (and b!3324265 ((_ is ElementMatch!10083) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326010))

(assert (= (and b!3324265 ((_ is Concat!15637) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326011))

(assert (= (and b!3324265 ((_ is Star!10083) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326012))

(assert (= (and b!3324265 ((_ is Union!10083) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326013))

(declare-fun e!2068344 () Bool)

(assert (=> b!3324265 (= tp!1038591 e!2068344)))

(declare-fun b!3326019 () Bool)

(declare-fun tp!1039161 () Bool)

(declare-fun tp!1039160 () Bool)

(assert (=> b!3326019 (= e!2068344 (and tp!1039161 tp!1039160))))

(declare-fun b!3326020 () Bool)

(declare-fun tp!1039162 () Bool)

(assert (=> b!3326020 (= e!2068344 tp!1039162)))

(declare-fun b!3326018 () Bool)

(assert (=> b!3326018 (= e!2068344 tp_is_empty!17409)))

(declare-fun b!3326021 () Bool)

(declare-fun tp!1039159 () Bool)

(declare-fun tp!1039163 () Bool)

(assert (=> b!3326021 (= e!2068344 (and tp!1039159 tp!1039163))))

(assert (= (and b!3324265 ((_ is ElementMatch!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326018))

(assert (= (and b!3324265 ((_ is Concat!15637) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326019))

(assert (= (and b!3324265 ((_ is Star!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326020))

(assert (= (and b!3324265 ((_ is Union!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326021))

(declare-fun e!2068346 () Bool)

(assert (=> b!3324234 (= tp!1038558 e!2068346)))

(declare-fun b!3326027 () Bool)

(declare-fun tp!1039171 () Bool)

(declare-fun tp!1039170 () Bool)

(assert (=> b!3326027 (= e!2068346 (and tp!1039171 tp!1039170))))

(declare-fun b!3326028 () Bool)

(declare-fun tp!1039172 () Bool)

(assert (=> b!3326028 (= e!2068346 tp!1039172)))

(declare-fun b!3326026 () Bool)

(assert (=> b!3326026 (= e!2068346 tp_is_empty!17409)))

(declare-fun b!3326029 () Bool)

(declare-fun tp!1039169 () Bool)

(declare-fun tp!1039173 () Bool)

(assert (=> b!3326029 (= e!2068346 (and tp!1039169 tp!1039173))))

(assert (= (and b!3324234 ((_ is ElementMatch!10083) (reg!10412 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3326026))

(assert (= (and b!3324234 ((_ is Concat!15637) (reg!10412 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3326027))

(assert (= (and b!3324234 ((_ is Star!10083) (reg!10412 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3326028))

(assert (= (and b!3324234 ((_ is Union!10083) (reg!10412 (regex!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))))) b!3326029))

(declare-fun e!2068348 () Bool)

(assert (=> b!3324297 (= tp!1038631 e!2068348)))

(declare-fun b!3326035 () Bool)

(declare-fun tp!1039181 () Bool)

(declare-fun tp!1039180 () Bool)

(assert (=> b!3326035 (= e!2068348 (and tp!1039181 tp!1039180))))

(declare-fun b!3326036 () Bool)

(declare-fun tp!1039182 () Bool)

(assert (=> b!3326036 (= e!2068348 tp!1039182)))

(declare-fun b!3326034 () Bool)

(assert (=> b!3326034 (= e!2068348 tp_is_empty!17409)))

(declare-fun b!3326037 () Bool)

(declare-fun tp!1039179 () Bool)

(declare-fun tp!1039183 () Bool)

(assert (=> b!3326037 (= e!2068348 (and tp!1039179 tp!1039183))))

(assert (= (and b!3324297 ((_ is ElementMatch!10083) (regOne!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326034))

(assert (= (and b!3324297 ((_ is Concat!15637) (regOne!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326035))

(assert (= (and b!3324297 ((_ is Star!10083) (regOne!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326036))

(assert (= (and b!3324297 ((_ is Union!10083) (regOne!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326037))

(declare-fun e!2068349 () Bool)

(assert (=> b!3324297 (= tp!1038630 e!2068349)))

(declare-fun b!3326039 () Bool)

(declare-fun tp!1039186 () Bool)

(declare-fun tp!1039185 () Bool)

(assert (=> b!3326039 (= e!2068349 (and tp!1039186 tp!1039185))))

(declare-fun b!3326040 () Bool)

(declare-fun tp!1039187 () Bool)

(assert (=> b!3326040 (= e!2068349 tp!1039187)))

(declare-fun b!3326038 () Bool)

(assert (=> b!3326038 (= e!2068349 tp_is_empty!17409)))

(declare-fun b!3326041 () Bool)

(declare-fun tp!1039184 () Bool)

(declare-fun tp!1039188 () Bool)

(assert (=> b!3326041 (= e!2068349 (and tp!1039184 tp!1039188))))

(assert (= (and b!3324297 ((_ is ElementMatch!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326038))

(assert (= (and b!3324297 ((_ is Concat!15637) (regTwo!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326039))

(assert (= (and b!3324297 ((_ is Star!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326040))

(assert (= (and b!3324297 ((_ is Union!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326041))

(declare-fun e!2068351 () Bool)

(assert (=> b!3324267 (= tp!1038590 e!2068351)))

(declare-fun b!3326047 () Bool)

(declare-fun tp!1039196 () Bool)

(declare-fun tp!1039195 () Bool)

(assert (=> b!3326047 (= e!2068351 (and tp!1039196 tp!1039195))))

(declare-fun b!3326048 () Bool)

(declare-fun tp!1039197 () Bool)

(assert (=> b!3326048 (= e!2068351 tp!1039197)))

(declare-fun b!3326046 () Bool)

(assert (=> b!3326046 (= e!2068351 tp_is_empty!17409)))

(declare-fun b!3326049 () Bool)

(declare-fun tp!1039194 () Bool)

(declare-fun tp!1039198 () Bool)

(assert (=> b!3326049 (= e!2068351 (and tp!1039194 tp!1039198))))

(assert (= (and b!3324267 ((_ is ElementMatch!10083) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326046))

(assert (= (and b!3324267 ((_ is Concat!15637) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326047))

(assert (= (and b!3324267 ((_ is Star!10083) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326048))

(assert (= (and b!3324267 ((_ is Union!10083) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326049))

(declare-fun e!2068353 () Bool)

(assert (=> b!3324267 (= tp!1038594 e!2068353)))

(declare-fun b!3326055 () Bool)

(declare-fun tp!1039206 () Bool)

(declare-fun tp!1039205 () Bool)

(assert (=> b!3326055 (= e!2068353 (and tp!1039206 tp!1039205))))

(declare-fun b!3326056 () Bool)

(declare-fun tp!1039207 () Bool)

(assert (=> b!3326056 (= e!2068353 tp!1039207)))

(declare-fun b!3326054 () Bool)

(assert (=> b!3326054 (= e!2068353 tp_is_empty!17409)))

(declare-fun b!3326057 () Bool)

(declare-fun tp!1039204 () Bool)

(declare-fun tp!1039208 () Bool)

(assert (=> b!3326057 (= e!2068353 (and tp!1039204 tp!1039208))))

(assert (= (and b!3324267 ((_ is ElementMatch!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326054))

(assert (= (and b!3324267 ((_ is Concat!15637) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326055))

(assert (= (and b!3324267 ((_ is Star!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326056))

(assert (= (and b!3324267 ((_ is Union!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326057))

(declare-fun e!2068355 () Bool)

(assert (=> b!3324275 (= tp!1038604 e!2068355)))

(declare-fun b!3326063 () Bool)

(declare-fun tp!1039216 () Bool)

(declare-fun tp!1039215 () Bool)

(assert (=> b!3326063 (= e!2068355 (and tp!1039216 tp!1039215))))

(declare-fun b!3326064 () Bool)

(declare-fun tp!1039217 () Bool)

(assert (=> b!3326064 (= e!2068355 tp!1039217)))

(declare-fun b!3326062 () Bool)

(assert (=> b!3326062 (= e!2068355 tp_is_empty!17409)))

(declare-fun b!3326065 () Bool)

(declare-fun tp!1039214 () Bool)

(declare-fun tp!1039218 () Bool)

(assert (=> b!3326065 (= e!2068355 (and tp!1039214 tp!1039218))))

(assert (= (and b!3324275 ((_ is ElementMatch!10083) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326062))

(assert (= (and b!3324275 ((_ is Concat!15637) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326063))

(assert (= (and b!3324275 ((_ is Star!10083) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326064))

(assert (= (and b!3324275 ((_ is Union!10083) (reg!10412 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326065))

(declare-fun e!2068356 () Bool)

(assert (=> b!3324225 (= tp!1038547 e!2068356)))

(declare-fun b!3326067 () Bool)

(declare-fun tp!1039221 () Bool)

(declare-fun tp!1039220 () Bool)

(assert (=> b!3326067 (= e!2068356 (and tp!1039221 tp!1039220))))

(declare-fun b!3326068 () Bool)

(declare-fun tp!1039222 () Bool)

(assert (=> b!3326068 (= e!2068356 tp!1039222)))

(declare-fun b!3326066 () Bool)

(assert (=> b!3326066 (= e!2068356 tp_is_empty!17409)))

(declare-fun b!3326069 () Bool)

(declare-fun tp!1039219 () Bool)

(declare-fun tp!1039223 () Bool)

(assert (=> b!3326069 (= e!2068356 (and tp!1039219 tp!1039223))))

(assert (= (and b!3324225 ((_ is ElementMatch!10083) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326066))

(assert (= (and b!3324225 ((_ is Concat!15637) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326067))

(assert (= (and b!3324225 ((_ is Star!10083) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326068))

(assert (= (and b!3324225 ((_ is Union!10083) (regOne!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326069))

(declare-fun e!2068358 () Bool)

(assert (=> b!3324225 (= tp!1038546 e!2068358)))

(declare-fun b!3326075 () Bool)

(declare-fun tp!1039231 () Bool)

(declare-fun tp!1039230 () Bool)

(assert (=> b!3326075 (= e!2068358 (and tp!1039231 tp!1039230))))

(declare-fun b!3326076 () Bool)

(declare-fun tp!1039232 () Bool)

(assert (=> b!3326076 (= e!2068358 tp!1039232)))

(declare-fun b!3326074 () Bool)

(assert (=> b!3326074 (= e!2068358 tp_is_empty!17409)))

(declare-fun b!3326077 () Bool)

(declare-fun tp!1039229 () Bool)

(declare-fun tp!1039233 () Bool)

(assert (=> b!3326077 (= e!2068358 (and tp!1039229 tp!1039233))))

(assert (= (and b!3324225 ((_ is ElementMatch!10083) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326074))

(assert (= (and b!3324225 ((_ is Concat!15637) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326075))

(assert (= (and b!3324225 ((_ is Star!10083) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326076))

(assert (= (and b!3324225 ((_ is Union!10083) (regTwo!20678 (regOne!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326077))

(declare-fun e!2068360 () Bool)

(assert (=> b!3324217 (= tp!1038537 e!2068360)))

(declare-fun b!3326083 () Bool)

(declare-fun tp!1039241 () Bool)

(declare-fun tp!1039240 () Bool)

(assert (=> b!3326083 (= e!2068360 (and tp!1039241 tp!1039240))))

(declare-fun b!3326084 () Bool)

(declare-fun tp!1039242 () Bool)

(assert (=> b!3326084 (= e!2068360 tp!1039242)))

(declare-fun b!3326082 () Bool)

(assert (=> b!3326082 (= e!2068360 tp_is_empty!17409)))

(declare-fun b!3326085 () Bool)

(declare-fun tp!1039239 () Bool)

(declare-fun tp!1039243 () Bool)

(assert (=> b!3326085 (= e!2068360 (and tp!1039239 tp!1039243))))

(assert (= (and b!3324217 ((_ is ElementMatch!10083) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326082))

(assert (= (and b!3324217 ((_ is Concat!15637) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326083))

(assert (= (and b!3324217 ((_ is Star!10083) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326084))

(assert (= (and b!3324217 ((_ is Union!10083) (regOne!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326085))

(declare-fun e!2068361 () Bool)

(assert (=> b!3324217 (= tp!1038536 e!2068361)))

(declare-fun b!3326087 () Bool)

(declare-fun tp!1039246 () Bool)

(declare-fun tp!1039245 () Bool)

(assert (=> b!3326087 (= e!2068361 (and tp!1039246 tp!1039245))))

(declare-fun b!3326088 () Bool)

(declare-fun tp!1039247 () Bool)

(assert (=> b!3326088 (= e!2068361 tp!1039247)))

(declare-fun b!3326086 () Bool)

(assert (=> b!3326086 (= e!2068361 tp_is_empty!17409)))

(declare-fun b!3326089 () Bool)

(declare-fun tp!1039244 () Bool)

(declare-fun tp!1039248 () Bool)

(assert (=> b!3326089 (= e!2068361 (and tp!1039244 tp!1039248))))

(assert (= (and b!3324217 ((_ is ElementMatch!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326086))

(assert (= (and b!3324217 ((_ is Concat!15637) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326087))

(assert (= (and b!3324217 ((_ is Star!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326088))

(assert (= (and b!3324217 ((_ is Union!10083) (regTwo!20678 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326089))

(declare-fun e!2068363 () Bool)

(assert (=> b!3324276 (= tp!1038601 e!2068363)))

(declare-fun b!3326095 () Bool)

(declare-fun tp!1039256 () Bool)

(declare-fun tp!1039255 () Bool)

(assert (=> b!3326095 (= e!2068363 (and tp!1039256 tp!1039255))))

(declare-fun b!3326096 () Bool)

(declare-fun tp!1039257 () Bool)

(assert (=> b!3326096 (= e!2068363 tp!1039257)))

(declare-fun b!3326094 () Bool)

(assert (=> b!3326094 (= e!2068363 tp_is_empty!17409)))

(declare-fun b!3326097 () Bool)

(declare-fun tp!1039254 () Bool)

(declare-fun tp!1039258 () Bool)

(assert (=> b!3326097 (= e!2068363 (and tp!1039254 tp!1039258))))

(assert (= (and b!3324276 ((_ is ElementMatch!10083) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326094))

(assert (= (and b!3324276 ((_ is Concat!15637) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326095))

(assert (= (and b!3324276 ((_ is Star!10083) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326096))

(assert (= (and b!3324276 ((_ is Union!10083) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326097))

(declare-fun e!2068365 () Bool)

(assert (=> b!3324276 (= tp!1038605 e!2068365)))

(declare-fun b!3326102 () Bool)

(declare-fun tp!1039264 () Bool)

(declare-fun tp!1039262 () Bool)

(assert (=> b!3326102 (= e!2068365 (and tp!1039264 tp!1039262))))

(declare-fun b!3326104 () Bool)

(declare-fun tp!1039267 () Bool)

(assert (=> b!3326104 (= e!2068365 tp!1039267)))

(declare-fun b!3326100 () Bool)

(assert (=> b!3326100 (= e!2068365 tp_is_empty!17409)))

(declare-fun b!3326105 () Bool)

(declare-fun tp!1039260 () Bool)

(declare-fun tp!1039268 () Bool)

(assert (=> b!3326105 (= e!2068365 (and tp!1039260 tp!1039268))))

(assert (= (and b!3324276 ((_ is ElementMatch!10083) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326100))

(assert (= (and b!3324276 ((_ is Concat!15637) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326102))

(assert (= (and b!3324276 ((_ is Star!10083) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326104))

(assert (= (and b!3324276 ((_ is Union!10083) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326105))

(declare-fun e!2068366 () Bool)

(assert (=> b!3324219 (= tp!1038535 e!2068366)))

(declare-fun b!3326107 () Bool)

(declare-fun tp!1039271 () Bool)

(declare-fun tp!1039270 () Bool)

(assert (=> b!3326107 (= e!2068366 (and tp!1039271 tp!1039270))))

(declare-fun b!3326108 () Bool)

(declare-fun tp!1039272 () Bool)

(assert (=> b!3326108 (= e!2068366 tp!1039272)))

(declare-fun b!3326106 () Bool)

(assert (=> b!3326106 (= e!2068366 tp_is_empty!17409)))

(declare-fun b!3326109 () Bool)

(declare-fun tp!1039269 () Bool)

(declare-fun tp!1039273 () Bool)

(assert (=> b!3326109 (= e!2068366 (and tp!1039269 tp!1039273))))

(assert (= (and b!3324219 ((_ is ElementMatch!10083) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326106))

(assert (= (and b!3324219 ((_ is Concat!15637) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326107))

(assert (= (and b!3324219 ((_ is Star!10083) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326108))

(assert (= (and b!3324219 ((_ is Union!10083) (regOne!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326109))

(declare-fun e!2068368 () Bool)

(assert (=> b!3324219 (= tp!1038539 e!2068368)))

(declare-fun b!3326115 () Bool)

(declare-fun tp!1039281 () Bool)

(declare-fun tp!1039280 () Bool)

(assert (=> b!3326115 (= e!2068368 (and tp!1039281 tp!1039280))))

(declare-fun b!3326116 () Bool)

(declare-fun tp!1039282 () Bool)

(assert (=> b!3326116 (= e!2068368 tp!1039282)))

(declare-fun b!3326114 () Bool)

(assert (=> b!3326114 (= e!2068368 tp_is_empty!17409)))

(declare-fun b!3326117 () Bool)

(declare-fun tp!1039279 () Bool)

(declare-fun tp!1039283 () Bool)

(assert (=> b!3326117 (= e!2068368 (and tp!1039279 tp!1039283))))

(assert (= (and b!3324219 ((_ is ElementMatch!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326114))

(assert (= (and b!3324219 ((_ is Concat!15637) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326115))

(assert (= (and b!3324219 ((_ is Star!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326116))

(assert (= (and b!3324219 ((_ is Union!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326117))

(declare-fun e!2068370 () Bool)

(assert (=> b!3324291 (= tp!1038619 e!2068370)))

(declare-fun b!3326123 () Bool)

(declare-fun tp!1039291 () Bool)

(declare-fun tp!1039290 () Bool)

(assert (=> b!3326123 (= e!2068370 (and tp!1039291 tp!1039290))))

(declare-fun b!3326124 () Bool)

(declare-fun tp!1039292 () Bool)

(assert (=> b!3326124 (= e!2068370 tp!1039292)))

(declare-fun b!3326122 () Bool)

(assert (=> b!3326122 (= e!2068370 tp_is_empty!17409)))

(declare-fun b!3326125 () Bool)

(declare-fun tp!1039289 () Bool)

(declare-fun tp!1039293 () Bool)

(assert (=> b!3326125 (= e!2068370 (and tp!1039289 tp!1039293))))

(assert (= (and b!3324291 ((_ is ElementMatch!10083) (regOne!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326122))

(assert (= (and b!3324291 ((_ is Concat!15637) (regOne!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326123))

(assert (= (and b!3324291 ((_ is Star!10083) (regOne!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326124))

(assert (= (and b!3324291 ((_ is Union!10083) (regOne!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326125))

(declare-fun e!2068371 () Bool)

(assert (=> b!3324291 (= tp!1038623 e!2068371)))

(declare-fun b!3326127 () Bool)

(declare-fun tp!1039296 () Bool)

(declare-fun tp!1039295 () Bool)

(assert (=> b!3326127 (= e!2068371 (and tp!1039296 tp!1039295))))

(declare-fun b!3326128 () Bool)

(declare-fun tp!1039297 () Bool)

(assert (=> b!3326128 (= e!2068371 tp!1039297)))

(declare-fun b!3326126 () Bool)

(assert (=> b!3326126 (= e!2068371 tp_is_empty!17409)))

(declare-fun b!3326129 () Bool)

(declare-fun tp!1039294 () Bool)

(declare-fun tp!1039298 () Bool)

(assert (=> b!3326129 (= e!2068371 (and tp!1039294 tp!1039298))))

(assert (= (and b!3324291 ((_ is ElementMatch!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326126))

(assert (= (and b!3324291 ((_ is Concat!15637) (regTwo!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326127))

(assert (= (and b!3324291 ((_ is Star!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326128))

(assert (= (and b!3324291 ((_ is Union!10083) (regTwo!20679 (regTwo!20679 (regex!5324 (h!42052 rules!2135)))))) b!3326129))

(declare-fun e!2068373 () Bool)

(assert (=> b!3324237 (= tp!1038562 e!2068373)))

(declare-fun b!3326135 () Bool)

(declare-fun tp!1039306 () Bool)

(declare-fun tp!1039305 () Bool)

(assert (=> b!3326135 (= e!2068373 (and tp!1039306 tp!1039305))))

(declare-fun b!3326136 () Bool)

(declare-fun tp!1039307 () Bool)

(assert (=> b!3326136 (= e!2068373 tp!1039307)))

(declare-fun b!3326134 () Bool)

(assert (=> b!3326134 (= e!2068373 tp_is_empty!17409)))

(declare-fun b!3326137 () Bool)

(declare-fun tp!1039304 () Bool)

(declare-fun tp!1039308 () Bool)

(assert (=> b!3326137 (= e!2068373 (and tp!1039304 tp!1039308))))

(assert (= (and b!3324237 ((_ is ElementMatch!10083) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326134))

(assert (= (and b!3324237 ((_ is Concat!15637) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326135))

(assert (= (and b!3324237 ((_ is Star!10083) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326136))

(assert (= (and b!3324237 ((_ is Union!10083) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326137))

(declare-fun e!2068375 () Bool)

(assert (=> b!3324237 (= tp!1038561 e!2068375)))

(declare-fun b!3326143 () Bool)

(declare-fun tp!1039316 () Bool)

(declare-fun tp!1039315 () Bool)

(assert (=> b!3326143 (= e!2068375 (and tp!1039316 tp!1039315))))

(declare-fun b!3326144 () Bool)

(declare-fun tp!1039317 () Bool)

(assert (=> b!3326144 (= e!2068375 tp!1039317)))

(declare-fun b!3326142 () Bool)

(assert (=> b!3326142 (= e!2068375 tp_is_empty!17409)))

(declare-fun b!3326145 () Bool)

(declare-fun tp!1039314 () Bool)

(declare-fun tp!1039318 () Bool)

(assert (=> b!3326145 (= e!2068375 (and tp!1039314 tp!1039318))))

(assert (= (and b!3324237 ((_ is ElementMatch!10083) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326142))

(assert (= (and b!3324237 ((_ is Concat!15637) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326143))

(assert (= (and b!3324237 ((_ is Star!10083) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326144))

(assert (= (and b!3324237 ((_ is Union!10083) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326145))

(declare-fun e!2068376 () Bool)

(assert (=> b!3324261 (= tp!1038587 e!2068376)))

(declare-fun b!3326147 () Bool)

(declare-fun tp!1039321 () Bool)

(declare-fun tp!1039320 () Bool)

(assert (=> b!3326147 (= e!2068376 (and tp!1039321 tp!1039320))))

(declare-fun b!3326148 () Bool)

(declare-fun tp!1039322 () Bool)

(assert (=> b!3326148 (= e!2068376 tp!1039322)))

(declare-fun b!3326146 () Bool)

(assert (=> b!3326146 (= e!2068376 tp_is_empty!17409)))

(declare-fun b!3326149 () Bool)

(declare-fun tp!1039319 () Bool)

(declare-fun tp!1039323 () Bool)

(assert (=> b!3326149 (= e!2068376 (and tp!1039319 tp!1039323))))

(assert (= (and b!3324261 ((_ is ElementMatch!10083) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326146))

(assert (= (and b!3324261 ((_ is Concat!15637) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326147))

(assert (= (and b!3324261 ((_ is Star!10083) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326148))

(assert (= (and b!3324261 ((_ is Union!10083) (regOne!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326149))

(declare-fun e!2068378 () Bool)

(assert (=> b!3324261 (= tp!1038586 e!2068378)))

(declare-fun b!3326155 () Bool)

(declare-fun tp!1039331 () Bool)

(declare-fun tp!1039330 () Bool)

(assert (=> b!3326155 (= e!2068378 (and tp!1039331 tp!1039330))))

(declare-fun b!3326156 () Bool)

(declare-fun tp!1039332 () Bool)

(assert (=> b!3326156 (= e!2068378 tp!1039332)))

(declare-fun b!3326154 () Bool)

(assert (=> b!3326154 (= e!2068378 tp_is_empty!17409)))

(declare-fun b!3326157 () Bool)

(declare-fun tp!1039329 () Bool)

(declare-fun tp!1039333 () Bool)

(assert (=> b!3326157 (= e!2068378 (and tp!1039329 tp!1039333))))

(assert (= (and b!3324261 ((_ is ElementMatch!10083) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326154))

(assert (= (and b!3324261 ((_ is Concat!15637) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326155))

(assert (= (and b!3324261 ((_ is Star!10083) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326156))

(assert (= (and b!3324261 ((_ is Union!10083) (regTwo!20678 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326157))

(declare-fun b!3326162 () Bool)

(declare-fun e!2068380 () Bool)

(declare-fun tp!1039339 () Bool)

(assert (=> b!3326162 (= e!2068380 (and tp_is_empty!17409 tp!1039339))))

(assert (=> b!3324254 (= tp!1038578 e!2068380)))

(assert (= (and b!3324254 ((_ is Cons!36631) (t!256358 (t!256358 (originalCharacters!6038 (h!42053 tokens!494)))))) b!3326162))

(declare-fun e!2068381 () Bool)

(assert (=> b!3324278 (= tp!1038608 e!2068381)))

(declare-fun b!3326164 () Bool)

(declare-fun tp!1039342 () Bool)

(declare-fun tp!1039341 () Bool)

(assert (=> b!3326164 (= e!2068381 (and tp!1039342 tp!1039341))))

(declare-fun b!3326165 () Bool)

(declare-fun tp!1039343 () Bool)

(assert (=> b!3326165 (= e!2068381 tp!1039343)))

(declare-fun b!3326163 () Bool)

(assert (=> b!3326163 (= e!2068381 tp_is_empty!17409)))

(declare-fun b!3326166 () Bool)

(declare-fun tp!1039340 () Bool)

(declare-fun tp!1039344 () Bool)

(assert (=> b!3326166 (= e!2068381 (and tp!1039340 tp!1039344))))

(assert (= (and b!3324278 ((_ is ElementMatch!10083) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326163))

(assert (= (and b!3324278 ((_ is Concat!15637) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326164))

(assert (= (and b!3324278 ((_ is Star!10083) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326165))

(assert (= (and b!3324278 ((_ is Union!10083) (regOne!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326166))

(declare-fun e!2068383 () Bool)

(assert (=> b!3324278 (= tp!1038607 e!2068383)))

(declare-fun b!3326172 () Bool)

(declare-fun tp!1039352 () Bool)

(declare-fun tp!1039351 () Bool)

(assert (=> b!3326172 (= e!2068383 (and tp!1039352 tp!1039351))))

(declare-fun b!3326173 () Bool)

(declare-fun tp!1039353 () Bool)

(assert (=> b!3326173 (= e!2068383 tp!1039353)))

(declare-fun b!3326171 () Bool)

(assert (=> b!3326171 (= e!2068383 tp_is_empty!17409)))

(declare-fun b!3326174 () Bool)

(declare-fun tp!1039350 () Bool)

(declare-fun tp!1039354 () Bool)

(assert (=> b!3326174 (= e!2068383 (and tp!1039350 tp!1039354))))

(assert (= (and b!3324278 ((_ is ElementMatch!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326171))

(assert (= (and b!3324278 ((_ is Concat!15637) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326172))

(assert (= (and b!3324278 ((_ is Star!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326173))

(assert (= (and b!3324278 ((_ is Union!10083) (regTwo!20678 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326174))

(declare-fun e!2068385 () Bool)

(assert (=> b!3324221 (= tp!1038542 e!2068385)))

(declare-fun b!3326180 () Bool)

(declare-fun tp!1039362 () Bool)

(declare-fun tp!1039360 () Bool)

(assert (=> b!3326180 (= e!2068385 (and tp!1039362 tp!1039360))))

(declare-fun b!3326181 () Bool)

(declare-fun tp!1039363 () Bool)

(assert (=> b!3326181 (= e!2068385 tp!1039363)))

(declare-fun b!3326178 () Bool)

(assert (=> b!3326178 (= e!2068385 tp_is_empty!17409)))

(declare-fun b!3326182 () Bool)

(declare-fun tp!1039358 () Bool)

(declare-fun tp!1039364 () Bool)

(assert (=> b!3326182 (= e!2068385 (and tp!1039358 tp!1039364))))

(assert (= (and b!3324221 ((_ is ElementMatch!10083) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326178))

(assert (= (and b!3324221 ((_ is Concat!15637) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326180))

(assert (= (and b!3324221 ((_ is Star!10083) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326181))

(assert (= (and b!3324221 ((_ is Union!10083) (regOne!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326182))

(declare-fun e!2068386 () Bool)

(assert (=> b!3324221 (= tp!1038541 e!2068386)))

(declare-fun b!3326184 () Bool)

(declare-fun tp!1039367 () Bool)

(declare-fun tp!1039366 () Bool)

(assert (=> b!3326184 (= e!2068386 (and tp!1039367 tp!1039366))))

(declare-fun b!3326185 () Bool)

(declare-fun tp!1039368 () Bool)

(assert (=> b!3326185 (= e!2068386 tp!1039368)))

(declare-fun b!3326183 () Bool)

(assert (=> b!3326183 (= e!2068386 tp_is_empty!17409)))

(declare-fun b!3326186 () Bool)

(declare-fun tp!1039365 () Bool)

(declare-fun tp!1039369 () Bool)

(assert (=> b!3326186 (= e!2068386 (and tp!1039365 tp!1039369))))

(assert (= (and b!3324221 ((_ is ElementMatch!10083) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326183))

(assert (= (and b!3324221 ((_ is Concat!15637) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326184))

(assert (= (and b!3324221 ((_ is Star!10083) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326185))

(assert (= (and b!3324221 ((_ is Union!10083) (regTwo!20678 (reg!10412 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326186))

(declare-fun e!2068388 () Bool)

(assert (=> b!3324280 (= tp!1038606 e!2068388)))

(declare-fun b!3326192 () Bool)

(declare-fun tp!1039377 () Bool)

(declare-fun tp!1039376 () Bool)

(assert (=> b!3326192 (= e!2068388 (and tp!1039377 tp!1039376))))

(declare-fun b!3326193 () Bool)

(declare-fun tp!1039378 () Bool)

(assert (=> b!3326193 (= e!2068388 tp!1039378)))

(declare-fun b!3326191 () Bool)

(assert (=> b!3326191 (= e!2068388 tp_is_empty!17409)))

(declare-fun b!3326194 () Bool)

(declare-fun tp!1039375 () Bool)

(declare-fun tp!1039379 () Bool)

(assert (=> b!3326194 (= e!2068388 (and tp!1039375 tp!1039379))))

(assert (= (and b!3324280 ((_ is ElementMatch!10083) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326191))

(assert (= (and b!3324280 ((_ is Concat!15637) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326192))

(assert (= (and b!3324280 ((_ is Star!10083) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326193))

(assert (= (and b!3324280 ((_ is Union!10083) (regOne!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326194))

(declare-fun e!2068389 () Bool)

(assert (=> b!3324280 (= tp!1038610 e!2068389)))

(declare-fun b!3326196 () Bool)

(declare-fun tp!1039382 () Bool)

(declare-fun tp!1039381 () Bool)

(assert (=> b!3326196 (= e!2068389 (and tp!1039382 tp!1039381))))

(declare-fun b!3326197 () Bool)

(declare-fun tp!1039383 () Bool)

(assert (=> b!3326197 (= e!2068389 tp!1039383)))

(declare-fun b!3326195 () Bool)

(assert (=> b!3326195 (= e!2068389 tp_is_empty!17409)))

(declare-fun b!3326198 () Bool)

(declare-fun tp!1039380 () Bool)

(declare-fun tp!1039384 () Bool)

(assert (=> b!3326198 (= e!2068389 (and tp!1039380 tp!1039384))))

(assert (= (and b!3324280 ((_ is ElementMatch!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326195))

(assert (= (and b!3324280 ((_ is Concat!15637) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326196))

(assert (= (and b!3324280 ((_ is Star!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326197))

(assert (= (and b!3324280 ((_ is Union!10083) (regTwo!20679 (regTwo!20678 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326198))

(declare-fun e!2068391 () Bool)

(assert (=> b!3324239 (= tp!1038560 e!2068391)))

(declare-fun b!3326204 () Bool)

(declare-fun tp!1039392 () Bool)

(declare-fun tp!1039391 () Bool)

(assert (=> b!3326204 (= e!2068391 (and tp!1039392 tp!1039391))))

(declare-fun b!3326205 () Bool)

(declare-fun tp!1039393 () Bool)

(assert (=> b!3326205 (= e!2068391 tp!1039393)))

(declare-fun b!3326203 () Bool)

(assert (=> b!3326203 (= e!2068391 tp_is_empty!17409)))

(declare-fun b!3326206 () Bool)

(declare-fun tp!1039390 () Bool)

(declare-fun tp!1039394 () Bool)

(assert (=> b!3326206 (= e!2068391 (and tp!1039390 tp!1039394))))

(assert (= (and b!3324239 ((_ is ElementMatch!10083) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326203))

(assert (= (and b!3324239 ((_ is Concat!15637) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326204))

(assert (= (and b!3324239 ((_ is Star!10083) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326205))

(assert (= (and b!3324239 ((_ is Union!10083) (regOne!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326206))

(declare-fun e!2068398 () Bool)

(assert (=> b!3324239 (= tp!1038564 e!2068398)))

(declare-fun b!3326212 () Bool)

(declare-fun tp!1039402 () Bool)

(declare-fun tp!1039401 () Bool)

(assert (=> b!3326212 (= e!2068398 (and tp!1039402 tp!1039401))))

(declare-fun b!3326213 () Bool)

(declare-fun tp!1039403 () Bool)

(assert (=> b!3326213 (= e!2068398 tp!1039403)))

(declare-fun b!3326211 () Bool)

(assert (=> b!3326211 (= e!2068398 tp_is_empty!17409)))

(declare-fun b!3326214 () Bool)

(declare-fun tp!1039400 () Bool)

(declare-fun tp!1039404 () Bool)

(assert (=> b!3326214 (= e!2068398 (and tp!1039400 tp!1039404))))

(assert (= (and b!3324239 ((_ is ElementMatch!10083) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326211))

(assert (= (and b!3324239 ((_ is Concat!15637) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326212))

(assert (= (and b!3324239 ((_ is Star!10083) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326213))

(assert (= (and b!3324239 ((_ is Union!10083) (regTwo!20679 (reg!10412 (regex!5324 (rule!7846 separatorToken!241)))))) b!3326214))

(declare-fun e!2068399 () Bool)

(assert (=> b!3324230 (= tp!1038553 e!2068399)))

(declare-fun b!3326216 () Bool)

(declare-fun tp!1039407 () Bool)

(declare-fun tp!1039406 () Bool)

(assert (=> b!3326216 (= e!2068399 (and tp!1039407 tp!1039406))))

(declare-fun b!3326217 () Bool)

(declare-fun tp!1039408 () Bool)

(assert (=> b!3326217 (= e!2068399 tp!1039408)))

(declare-fun b!3326215 () Bool)

(assert (=> b!3326215 (= e!2068399 tp_is_empty!17409)))

(declare-fun b!3326218 () Bool)

(declare-fun tp!1039405 () Bool)

(declare-fun tp!1039409 () Bool)

(assert (=> b!3326218 (= e!2068399 (and tp!1039405 tp!1039409))))

(assert (= (and b!3324230 ((_ is ElementMatch!10083) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326215))

(assert (= (and b!3324230 ((_ is Concat!15637) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326216))

(assert (= (and b!3324230 ((_ is Star!10083) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326217))

(assert (= (and b!3324230 ((_ is Union!10083) (reg!10412 (regTwo!20679 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326218))

(declare-fun e!2068400 () Bool)

(assert (=> b!3324293 (= tp!1038626 e!2068400)))

(declare-fun b!3326220 () Bool)

(declare-fun tp!1039412 () Bool)

(declare-fun tp!1039411 () Bool)

(assert (=> b!3326220 (= e!2068400 (and tp!1039412 tp!1039411))))

(declare-fun b!3326221 () Bool)

(declare-fun tp!1039413 () Bool)

(assert (=> b!3326221 (= e!2068400 tp!1039413)))

(declare-fun b!3326219 () Bool)

(assert (=> b!3326219 (= e!2068400 tp_is_empty!17409)))

(declare-fun b!3326222 () Bool)

(declare-fun tp!1039410 () Bool)

(declare-fun tp!1039414 () Bool)

(assert (=> b!3326222 (= e!2068400 (and tp!1039410 tp!1039414))))

(assert (= (and b!3324293 ((_ is ElementMatch!10083) (regOne!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326219))

(assert (= (and b!3324293 ((_ is Concat!15637) (regOne!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326220))

(assert (= (and b!3324293 ((_ is Star!10083) (regOne!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326221))

(assert (= (and b!3324293 ((_ is Union!10083) (regOne!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326222))

(declare-fun e!2068401 () Bool)

(assert (=> b!3324293 (= tp!1038625 e!2068401)))

(declare-fun b!3326224 () Bool)

(declare-fun tp!1039417 () Bool)

(declare-fun tp!1039416 () Bool)

(assert (=> b!3326224 (= e!2068401 (and tp!1039417 tp!1039416))))

(declare-fun b!3326225 () Bool)

(declare-fun tp!1039418 () Bool)

(assert (=> b!3326225 (= e!2068401 tp!1039418)))

(declare-fun b!3326223 () Bool)

(assert (=> b!3326223 (= e!2068401 tp_is_empty!17409)))

(declare-fun b!3326226 () Bool)

(declare-fun tp!1039415 () Bool)

(declare-fun tp!1039419 () Bool)

(assert (=> b!3326226 (= e!2068401 (and tp!1039415 tp!1039419))))

(assert (= (and b!3324293 ((_ is ElementMatch!10083) (regTwo!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326223))

(assert (= (and b!3324293 ((_ is Concat!15637) (regTwo!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326224))

(assert (= (and b!3324293 ((_ is Star!10083) (regTwo!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326225))

(assert (= (and b!3324293 ((_ is Union!10083) (regTwo!20678 (regOne!20678 (regex!5324 (h!42052 rules!2135)))))) b!3326226))

(declare-fun e!2068402 () Bool)

(assert (=> b!3324263 (= tp!1038585 e!2068402)))

(declare-fun b!3326228 () Bool)

(declare-fun tp!1039422 () Bool)

(declare-fun tp!1039421 () Bool)

(assert (=> b!3326228 (= e!2068402 (and tp!1039422 tp!1039421))))

(declare-fun b!3326229 () Bool)

(declare-fun tp!1039423 () Bool)

(assert (=> b!3326229 (= e!2068402 tp!1039423)))

(declare-fun b!3326227 () Bool)

(assert (=> b!3326227 (= e!2068402 tp_is_empty!17409)))

(declare-fun b!3326230 () Bool)

(declare-fun tp!1039420 () Bool)

(declare-fun tp!1039424 () Bool)

(assert (=> b!3326230 (= e!2068402 (and tp!1039420 tp!1039424))))

(assert (= (and b!3324263 ((_ is ElementMatch!10083) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326227))

(assert (= (and b!3324263 ((_ is Concat!15637) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326228))

(assert (= (and b!3324263 ((_ is Star!10083) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326229))

(assert (= (and b!3324263 ((_ is Union!10083) (regOne!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326230))

(declare-fun e!2068403 () Bool)

(assert (=> b!3324263 (= tp!1038589 e!2068403)))

(declare-fun b!3326232 () Bool)

(declare-fun tp!1039427 () Bool)

(declare-fun tp!1039426 () Bool)

(assert (=> b!3326232 (= e!2068403 (and tp!1039427 tp!1039426))))

(declare-fun b!3326233 () Bool)

(declare-fun tp!1039428 () Bool)

(assert (=> b!3326233 (= e!2068403 tp!1039428)))

(declare-fun b!3326231 () Bool)

(assert (=> b!3326231 (= e!2068403 tp_is_empty!17409)))

(declare-fun b!3326234 () Bool)

(declare-fun tp!1039425 () Bool)

(declare-fun tp!1039429 () Bool)

(assert (=> b!3326234 (= e!2068403 (and tp!1039425 tp!1039429))))

(assert (= (and b!3324263 ((_ is ElementMatch!10083) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326231))

(assert (= (and b!3324263 ((_ is Concat!15637) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326232))

(assert (= (and b!3324263 ((_ is Star!10083) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326233))

(assert (= (and b!3324263 ((_ is Union!10083) (regTwo!20679 (regOne!20678 (regex!5324 (rule!7846 (h!42053 tokens!494))))))) b!3326234))

(declare-fun b_lambda!93799 () Bool)

(assert (= b_lambda!93779 (or b!3323436 b_lambda!93799)))

(declare-fun bs!550924 () Bool)

(declare-fun d!935359 () Bool)

(assert (= bs!550924 (and d!935359 b!3323436)))

(assert (=> bs!550924 (= (dynLambda!15088 lambda!119593 (h!42053 (t!256360 (t!256360 tokens!494)))) (not (isSeparator!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))))

(assert (=> b!3325204 d!935359))

(declare-fun b_lambda!93801 () Bool)

(assert (= b_lambda!93703 (or (and b!3324253 b_free!87471 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3324271 b_free!87475 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3325563 b_free!87479 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3325868 b_free!87487 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) b_lambda!93801)))

(declare-fun b_lambda!93803 () Bool)

(assert (= b_lambda!93797 (or d!934283 b_lambda!93803)))

(declare-fun bs!550925 () Bool)

(declare-fun d!935361 () Bool)

(assert (= bs!550925 (and d!935361 d!934283)))

(assert (=> bs!550925 (= (dynLambda!15088 lambda!119603 (h!42053 (t!256360 (list!13177 lt!1129204)))) (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 (h!42053 (t!256360 (list!13177 lt!1129204)))))))

(assert (=> bs!550925 m!3664199))

(assert (=> b!3325543 d!935361))

(declare-fun b_lambda!93805 () Bool)

(assert (= b_lambda!93751 (or b!3323436 b_lambda!93805)))

(declare-fun bs!550926 () Bool)

(declare-fun d!935363 () Bool)

(assert (= bs!550926 (and d!935363 b!3323436)))

(assert (=> bs!550926 (= (dynLambda!15088 lambda!119593 (h!42053 (t!256360 lt!1129228))) (not (isSeparator!5324 (rule!7846 (h!42053 (t!256360 lt!1129228))))))))

(assert (=> b!3324333 d!935363))

(declare-fun b_lambda!93807 () Bool)

(assert (= b_lambda!93777 (or d!934389 b_lambda!93807)))

(declare-fun bs!550927 () Bool)

(declare-fun d!935365 () Bool)

(assert (= bs!550927 (and d!935365 d!934389)))

(assert (=> bs!550927 (= (dynLambda!15088 lambda!119627 (h!42053 (list!13177 lt!1129204))) (rulesProduceIndividualToken!2405 thiss!18206 rules!2135 (h!42053 (list!13177 lt!1129204))))))

(assert (=> bs!550927 m!3663163))

(assert (=> b!3325196 d!935365))

(declare-fun b_lambda!93809 () Bool)

(assert (= b_lambda!93757 (or (and b!3325563 b_free!87479 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323433 b_free!87443 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323768 b_free!87459 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323745 b_free!87455 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323421 b_free!87435) (and b!3325868 b_free!87487 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3323427 b_free!87439 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3324271 b_free!87475 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) (and b!3324253 b_free!87471 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))))) b_lambda!93809)))

(declare-fun b_lambda!93811 () Bool)

(assert (= b_lambda!93791 (or (and b!3324253 b_free!87471 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3324271 b_free!87475) (and b!3323768 b_free!87459 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 tokens!494))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3325563 b_free!87479 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3325868 b_free!87487 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3323745 b_free!87455 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 rules!2135)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3323427 b_free!87439 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3323433 b_free!87443 (= (toChars!7339 (transformation!5324 (h!42052 rules!2135))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) (and b!3323421 b_free!87435 (= (toChars!7339 (transformation!5324 (rule!7846 separatorToken!241))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))))) b_lambda!93811)))

(declare-fun b_lambda!93813 () Bool)

(assert (= b_lambda!93795 (or b!3323436 b_lambda!93813)))

(declare-fun bs!550928 () Bool)

(declare-fun d!935367 () Bool)

(assert (= bs!550928 (and d!935367 b!3323436)))

(assert (=> bs!550928 (= (dynLambda!15088 lambda!119593 (h!42053 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))) (not (isSeparator!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (list!13177 (_1!21199 (lex!2239 thiss!18206 rules!2135 (printWithSeparatorToken!104 thiss!18206 lt!1129204 separatorToken!241)))))))))))))

(assert (=> b!3325520 d!935367))

(declare-fun b_lambda!93815 () Bool)

(assert (= b_lambda!93781 (or d!934527 b_lambda!93815)))

(declare-fun bs!550929 () Bool)

(declare-fun d!935369 () Bool)

(assert (= bs!550929 (and d!935369 d!934527)))

(assert (=> bs!550929 (= (dynLambda!15100 lambda!119633 (h!42052 rules!2135)) (ruleValid!1678 thiss!18206 (h!42052 rules!2135)))))

(assert (=> bs!550929 m!3665761))

(assert (=> b!3325313 d!935369))

(declare-fun b_lambda!93817 () Bool)

(assert (= b_lambda!93753 (or b!3323436 b_lambda!93817)))

(declare-fun bs!550930 () Bool)

(declare-fun d!935371 () Bool)

(assert (= bs!550930 (and d!935371 b!3323436)))

(assert (=> bs!550930 (= (dynLambda!15088 lambda!119593 (h!42053 lt!1129340)) (not (isSeparator!5324 (rule!7846 (h!42053 lt!1129340)))))))

(assert (=> b!3324340 d!935371))

(declare-fun b_lambda!93819 () Bool)

(assert (= b_lambda!93709 (or (and b!3324253 b_free!87471 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 rules!2135))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (and b!3324271 b_free!87475 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 tokens!494)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (and b!3325563 b_free!87479 (= (toChars!7339 (transformation!5324 (h!42052 (t!256359 (t!256359 (t!256359 rules!2135)))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) (and b!3325868 b_free!87487 (= (toChars!7339 (transformation!5324 (rule!7846 (h!42053 (t!256360 (t!256360 (t!256360 tokens!494))))))) (toChars!7339 (transformation!5324 (rule!7846 (h!42053 tokens!494)))))) b_lambda!93819)))

(check-sat (not b!3324933) (not b!3325548) (not b!3326085) (not b!3324651) (not b!3325602) (not bm!241340) (not d!934971) (not b!3324633) (not b!3324912) (not d!934931) (not b!3324913) (not b!3325757) (not b!3326155) (not b!3324798) (not d!934667) (not b!3325048) (not b!3326198) (not b!3326055) (not d!934795) (not b_next!88141) (not b!3325766) (not b!3324607) (not b!3324452) (not b!3324661) (not b_next!88177) (not b!3326036) (not b!3326233) (not b!3325960) b_and!229147 (not d!935275) (not d!935155) (not b!3325467) (not b!3325154) (not d!934797) b_and!229141 (not b!3325782) (not d!934637) (not b!3326028) (not b!3325762) (not b!3325843) (not b!3325214) (not b!3326135) (not b!3325547) (not d!935187) (not b!3325776) (not b!3324281) (not d!935081) (not b!3325790) (not d!935305) (not b!3325234) (not b!3325580) (not b!3325206) (not b!3324598) (not d!935189) (not b!3324992) (not b!3324944) (not b_lambda!93745) (not b!3324514) (not b!3324805) (not b!3325911) (not b!3325604) (not b!3325755) (not b!3325045) (not d!934977) (not b!3325584) (not b!3324595) (not b!3325789) b_and!229137 (not b!3326216) (not d!935191) (not b!3325855) (not d!935125) (not b!3324359) (not b!3326107) (not b!3325542) (not b_lambda!93809) (not b!3325968) (not b!3325544) (not b!3326102) (not b!3324779) (not b!3324915) (not b!3325729) (not b!3325576) (not d!934743) (not b!3325636) (not d!935107) (not b!3325240) (not b!3326213) (not d!934993) (not b!3325821) (not b!3325519) (not b!3325315) (not b!3326021) (not b!3326226) (not d!934789) (not d!934969) (not b!3325591) (not b!3324513) (not b!3325197) (not b!3326164) (not b!3325426) (not b!3325638) (not b!3324384) (not d!934705) (not d!934943) (not d!934661) (not b_lambda!93755) (not d!934683) (not b!3326166) (not bm!241329) (not b!3325227) (not b!3326186) (not b!3325037) (not d!934995) (not b!3325538) (not b!3324971) (not b!3325780) (not d!934643) (not b!3326048) (not b!3324794) (not b!3324801) (not b!3325004) (not b!3324666) (not b!3326035) (not bs!550929) (not d!934921) (not b!3325171) (not b!3326041) (not b!3325815) (not b!3326129) (not d!934741) (not d!934685) (not b!3325539) (not b!3325041) (not d!935241) (not bm!241316) (not b!3324516) (not b!3325621) (not b!3324552) (not b!3325466) (not b!3325449) (not b!3324858) (not b!3325912) (not b!3325844) (not b!3325933) (not b!3325530) (not b_next!88189) (not b!3326049) (not b!3324854) (not b!3325428) (not b!3325512) (not b!3325958) (not b!3324390) (not b!3324645) (not d!934757) (not b!3325610) b_and!228935 (not d!934631) (not d!934937) (not b!3324448) (not b!3324929) (not b!3324450) (not b!3325583) (not b!3324660) (not d!934781) (not b!3324806) b_and!229165 (not b!3326012) (not b!3325304) (not b!3324802) (not d!935079) b_and!228943 (not b!3326222) (not b!3325265) (not b!3325623) (not b!3325768) (not b!3325464) (not b_lambda!93759) (not b!3325514) (not d!934923) (not d!934689) (not b!3325890) (not b!3326027) (not b_lambda!93747) (not b_lambda!93819) (not b!3324566) (not b!3326003) (not d!935023) (not b_lambda!93807) (not b!3325432) (not b!3325564) (not b!3325052) (not b!3324447) (not b!3325984) (not b!3325032) (not b!3324425) (not b!3325750) (not b!3325600) (not b!3325765) (not b!3326125) (not b!3325806) (not b!3324943) (not d!935035) (not b!3324634) (not b!3325566) (not b!3325233) (not b!3325534) (not b_next!88181) (not b_lambda!93743) (not d!935113) (not b!3325748) (not b!3324341) (not b!3325822) (not b_lambda!93817) (not b_next!88191) (not b!3326230) (not d!935029) (not b!3326095) (not b!3324605) (not b!3324778) tp_is_empty!17409 (not b!3326147) (not b_next!88175) (not b!3325039) (not b!3325268) (not b!3324793) (not b!3324358) (not b!3324667) (not b!3326084) (not d!934725) (not b!3326148) (not b!3324356) (not d!934973) (not b!3325044) (not d!934703) (not b!3325009) (not bm!241339) (not b!3325051) (not b!3324382) (not d!934745) (not b!3325506) (not b!3325151) (not b!3325164) (not d!935199) (not b_next!88161) (not b!3325147) (not b!3325916) (not b!3326184) (not b!3325465) (not d!934785) (not b!3326162) (not b!3325209) (not b!3325791) (not b!3325174) (not b!3325864) (not d!934919) (not b!3325603) (not b!3326145) (not b!3325305) (not b!3325969) (not b!3325618) (not b!3325774) (not b_next!88183) (not b!3325628) (not b!3325836) (not b!3325574) (not d!934621) (not b!3325006) (not b!3326181) (not b!3326194) (not b!3325983) (not b!3325427) (not d!935251) (not b!3325059) (not b!3325798) (not b!3325210) (not d!934737) (not b!3326047) (not b!3326232) (not b!3325454) (not b_next!88159) (not b!3324400) (not b_next!88173) (not b!3325433) (not b!3324499) (not d!935031) (not b!3325948) (not b_next!88157) (not b!3325201) (not b!3325468) (not b!3325831) (not b!3325982) (not b!3324608) (not b!3324851) (not b!3326083) (not b!3326204) (not d!934965) (not d!935245) (not d!935243) (not b!3325611) (not b!3325198) (not b!3325830) (not d!935249) (not bm!241327) (not b!3324918) (not b!3324449) (not d!935123) (not b!3326108) (not b!3326013) (not b!3325737) (not b!3325784) (not b!3325760) (not b!3324591) (not b!3326182) (not b!3325572) (not b!3325787) (not bm!241317) (not b!3324560) (not b!3324575) (not b!3325560) (not b!3325561) (not b!3325429) (not d!934761) (not d!935069) (not b!3324968) (not b!3325730) (not b!3325845) (not b!3325328) (not d!935273) (not b!3325616) (not b!3324657) (not b!3326037) (not b!3324856) (not b!3325637) (not b!3325891) (not b!3324592) (not b!3325856) (not b!3325165) (not b!3326224) (not d!934975) (not d!935105) (not b!3325976) (not bm!241318) (not b_lambda!93811) (not d!934867) (not b!3325594) (not b_lambda!93801) (not b!3324863) (not b!3326143) (not b!3325932) (not b!3325631) (not b!3325562) (not b!3325592) (not b!3325761) (not b!3325903) (not b!3325463) (not b!3326029) (not b!3324644) (not b!3325949) (not b!3325941) (not b!3326056) (not b!3325823) (not b!3326193) (not b!3325619) (not b!3325558) (not b!3325150) (not b!3325913) (not b!3324539) (not b!3326174) (not b!3325269) (not d!934677) (not b!3324604) (not b!3325213) (not b!3326105) (not d!934625) (not b!3326221) (not b!3326165) (not b!3324337) (not b!3325555) (not b!3326180) (not b!3324658) (not d!935013) (not b!3325629) (not b!3326229) (not b!3325738) (not b!3325862) (not b!3324396) (not b!3325062) (not bm!241332) (not b!3324804) (not b!3324436) (not b!3324331) (not b!3325970) (not d!934657) (not b!3324664) (not b!3325559) (not d!934927) (not b!3324783) (not d!934645) (not b!3325149) (not b!3326002) (not b!3324446) (not b!3325515) (not d!934623) (not b!3324932) (not b_next!88145) (not b!3325957) (not b!3325567) (not d!934873) (not b!3324914) (not b!3326220) (not d!934979) (not b!3326011) (not d!935083) (not b!3324381) (not b!3325054) (not b!3325797) (not b!3325200) (not d!934715) (not b!3325203) (not b!3324797) (not b!3325549) (not b!3325266) (not b!3324984) (not d!934799) (not b!3324650) (not b!3324859) (not d!934675) (not b!3324370) (not b!3325471) (not b!3325749) (not b!3326064) (not b!3325598) (not b!3326173) (not d!934679) (not b!3325554) (not d!934929) (not b!3326124) b_and!229163 (not d!934747) (not b!3325977) (not b_next!88147) (not b!3324876) (not b!3325956) b_and!229015 (not b!3325058) (not d!934801) b_and!229173 (not b!3324942) (not b!3325007) (not b!3325858) (not b!3325934) (not b!3326228) (not b!3325807) (not b!3326234) (not b!3325962) (not b!3325622) (not bm!241353) (not b!3325608) (not b!3325756) (not d!934729) (not d!935011) (not bm!241350) (not b!3324428) (not b_lambda!93805) b_and!229139 (not b!3326212) (not d!935021) (not b!3325035) (not b!3324916) (not b!3325232) (not b!3326137) (not b!3325571) (not b_lambda!93771) (not b!3324800) (not b!3325975) (not b!3325587) (not b!3325626) (not b!3324371) (not b!3325924) (not b!3324927) (not d!934939) (not b!3326149) (not b!3326156) (not d!934765) (not b!3325166) (not b!3325917) (not b!3326128) (not b!3325745) (not b!3325950) (not b!3325521) (not b_next!88139) (not b!3325008) (not b!3326104) (not bs!550927) (not b!3324354) (not b!3324945) (not d!935193) (not b!3325620) (not b!3325153) (not b_lambda!93799) (not b!3325219) (not b!3325156) (not b!3325517) (not b!3325152) (not b!3325746) (not b!3325897) (not b!3325537) (not b!3324610) (not b!3324534) (not bs!550925) b_and!229145 (not b!3325632) (not b!3324972) (not b!3326065) (not d!934659) (not b!3325860) (not b!3326206) (not d!934653) (not bm!241352) (not b!3325596) (not b!3325270) (not b!3325228) (not b!3325276) (not b!3324460) (not b!3325994) (not b!3325205) (not b!3325905) (not b!3326020) (not b!3325925) (not b!3326109) (not b!3326136) b_and!229171 (not d!934875) (not b!3325430) (not b!3324387) (not b!3325786) (not b!3325450) (not b!3324983) (not b!3324969) (not b!3324681) (not b_next!88179) (not d!934991) (not b!3324248) (not b_lambda!93741) (not d!934721) (not d!934697) (not b!3325590) b_and!228979 (not b!3325595) (not b!3325267) (not b!3325043) (not b!3325614) (not b!3325727) (not b!3325995) (not b!3324478) (not d!935037) (not b!3324486) (not b!3325814) (not b!3326089) (not b!3325854) (not b!3325633) (not b!3326217) (not b!3325556) (not b!3325314) (not b!3325918) (not d!934713) (not b!3325848) (not b!3324599) (not b!3326225) (not d!935075) (not b!3325624) (not b!3326004) (not b!3325744) (not b!3326205) (not b!3325535) (not b!3325236) (not b!3325582) (not b!3325773) b_and!229135 (not b!3325805) (not d!934763) (not b!3325472) (not b!3325212) (not b!3324961) (not d!934663) (not b!3325575) (not b_lambda!93815) (not b!3324601) b_and!229019 (not b!3324609) (not tb!174075) (not b!3326019) (not d!934671) (not b!3326115) (not b!3325508) (not b!3324917) (not b!3324437) (not b!3325940) (not d!934691) (not d!935247) (not d!935121) (not b!3325635) (not b!3325570) b_and!228983 (not b!3325586) (not b!3326069) (not b!3326040) (not b!3324973) (not b!3326116) (not b!3325057) (not b!3326076) (not b!3325829) (not d!934925) (not b!3325578) (not b!3325813) (not b!3325208) (not b!3325731) (not b!3325961) (not b!3324855) (not b!3325847) (not b!3324784) (not b!3326067) (not b_next!88163) (not b!3326096) (not b!3325904) (not b!3325568) b_and!229143 (not b!3326157) (not b!3324782) (not b!3325470) (not b!3324991) (not b!3324850) (not b!3325579) (not b!3324964) (not d!935277) (not b!3324398) (not d!935103) (not d!934951) (not b!3324335) (not b!3326009) (not d!934869) (not b_lambda!93707) (not d!934755) (not d!934629) (not b!3326144) (not d!934681) (not b!3326068) (not d!935311) (not d!934693) (not b!3325511) (not b!3324565) (not b!3325799) (not b!3324606) (not d!935171) (not d!934793) (not b!3324780) b_and!228939 (not tb!174019) (not d!935141) (not b!3325160) (not b!3325785) (not b!3326123) (not b!3324355) (not b!3325531) (not b!3324562) (not b!3324422) (not b!3325170) (not b!3324046) (not b!3326218) (not b!3325778) (not b!3325942) (not b!3324967) (not b!3324963) (not b!3325434) (not d!935257) (not d!935033) (not d!934665) (not tb!174005) (not b_lambda!93749) (not b!3325612) (not b!3325627) (not b!3324970) (not b!3325996) (not b!3325615) (not b!3325599) (not tb!173991) (not b!3326057) (not b!3326087) (not b!3325588) (not d!934627) (not b!3324503) (not b!3325739) (not b!3324334) (not b!3325625) (not d!935253) (not b!3325040) (not b!3326197) (not b!3326172) (not b!3325777) (not b!3325034) (not b!3325926) (not d!935303) (not b!3326077) (not b!3324847) (not b!3325781) (not d!935143) (not b!3326117) (not d!935295) (not b!3326088) (not d!934967) (not b!3325892) (not b!3325061) (not b!3325540) (not b!3326039) (not b!3325239) (not b!3326097) (not d!934997) (not b!3324506) (not b!3325473) (not b_next!88143) (not b!3325169) (not b!3326127) (not b!3326185) (not b!3324357) (not b!3324852) (not d!934791) (not d!935027) (not b_lambda!93813) (not b!3325448) (not b!3324388) (not b!3325536) (not b_lambda!93705) (not b_lambda!93803) (not b!3324463) (not b!3324435) (not b!3325849) (not b!3324862) (not b!3326214) (not d!935015) (not b!3326192) (not b!3326196) (not d!935297) (not b!3325162) (not b!3325607) (not b!3324339) (not b!3325772) (not b!3325507) (not d!935089) (not b!3325159) (not b!3325866) (not b!3326075) (not b!3325322) (not d!935293) (not b!3325606) (not b!3324848) (not d!935233) (not b_next!88137) (not b!3325859) (not b!3326063) (not b!3325188) (not b!3324515) (not b!3325211))
(check-sat (not b_next!88141) b_and!229137 (not b_next!88189) (not b_next!88181) (not b_next!88161) (not b_next!88183) (not b_next!88145) b_and!229139 (not b_next!88139) b_and!229135 b_and!228939 (not b_next!88143) (not b_next!88137) (not b_next!88177) b_and!229147 b_and!229141 b_and!229165 b_and!228935 b_and!228943 (not b_next!88191) (not b_next!88175) (not b_next!88159) (not b_next!88173) (not b_next!88157) b_and!229015 b_and!229173 b_and!229163 (not b_next!88147) b_and!229145 b_and!229171 b_and!228979 (not b_next!88179) b_and!228983 b_and!229019 (not b_next!88163) b_and!229143)
