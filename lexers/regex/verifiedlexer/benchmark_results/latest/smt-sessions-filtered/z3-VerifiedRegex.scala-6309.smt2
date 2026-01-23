; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!317190 () Bool)

(assert start!317190)

(declare-fun b!3398131 () Bool)

(declare-fun b_free!88977 () Bool)

(declare-fun b_next!89681 () Bool)

(assert (=> b!3398131 (= b_free!88977 (not b_next!89681))))

(declare-fun tp!1060667 () Bool)

(declare-fun b_and!236983 () Bool)

(assert (=> b!3398131 (= tp!1060667 b_and!236983)))

(declare-fun b_free!88979 () Bool)

(declare-fun b_next!89683 () Bool)

(assert (=> b!3398131 (= b_free!88979 (not b_next!89683))))

(declare-fun tp!1060668 () Bool)

(declare-fun b_and!236985 () Bool)

(assert (=> b!3398131 (= tp!1060668 b_and!236985)))

(declare-fun b!3398120 () Bool)

(declare-fun b_free!88981 () Bool)

(declare-fun b_next!89685 () Bool)

(assert (=> b!3398120 (= b_free!88981 (not b_next!89685))))

(declare-fun tp!1060666 () Bool)

(declare-fun b_and!236987 () Bool)

(assert (=> b!3398120 (= tp!1060666 b_and!236987)))

(declare-fun b_free!88983 () Bool)

(declare-fun b_next!89687 () Bool)

(assert (=> b!3398120 (= b_free!88983 (not b_next!89687))))

(declare-fun tp!1060669 () Bool)

(declare-fun b_and!236989 () Bool)

(assert (=> b!3398120 (= tp!1060669 b_and!236989)))

(declare-fun b!3398126 () Bool)

(declare-fun b_free!88985 () Bool)

(declare-fun b_next!89689 () Bool)

(assert (=> b!3398126 (= b_free!88985 (not b_next!89689))))

(declare-fun tp!1060661 () Bool)

(declare-fun b_and!236991 () Bool)

(assert (=> b!3398126 (= tp!1060661 b_and!236991)))

(declare-fun b_free!88987 () Bool)

(declare-fun b_next!89691 () Bool)

(assert (=> b!3398126 (= b_free!88987 (not b_next!89691))))

(declare-fun tp!1060660 () Bool)

(declare-fun b_and!236993 () Bool)

(assert (=> b!3398126 (= tp!1060660 b_and!236993)))

(declare-fun b!3398116 () Bool)

(declare-fun e!2109426 () Bool)

(declare-fun e!2109415 () Bool)

(assert (=> b!3398116 (= e!2109426 e!2109415)))

(declare-fun res!1374908 () Bool)

(assert (=> b!3398116 (=> res!1374908 e!2109415)))

(declare-datatypes ((C!20500 0))(
  ( (C!20501 (val!12298 Int)) )
))
(declare-datatypes ((List!37096 0))(
  ( (Nil!36972) (Cons!36972 (h!42392 C!20500) (t!265513 List!37096)) )
))
(declare-fun lt!1155329 () List!37096)

(declare-fun lt!1155327 () List!37096)

(assert (=> b!3398116 (= res!1374908 (not (= lt!1155329 lt!1155327)))))

(declare-fun lt!1155334 () List!37096)

(assert (=> b!3398116 (= lt!1155334 lt!1155327)))

(declare-fun lt!1155340 () List!37096)

(declare-fun lt!1155331 () List!37096)

(declare-fun ++!9061 (List!37096 List!37096) List!37096)

(assert (=> b!3398116 (= lt!1155327 (++!9061 lt!1155340 lt!1155331))))

(declare-fun lt!1155335 () List!37096)

(declare-datatypes ((Unit!52137 0))(
  ( (Unit!52138) )
))
(declare-fun lt!1155339 () Unit!52137)

(declare-fun lt!1155328 () List!37096)

(declare-fun lemmaConcatAssociativity!1900 (List!37096 List!37096 List!37096) Unit!52137)

(assert (=> b!3398116 (= lt!1155339 (lemmaConcatAssociativity!1900 lt!1155340 lt!1155328 lt!1155335))))

(declare-datatypes ((Regex!10157 0))(
  ( (ElementMatch!10157 (c!579206 C!20500)) (Concat!15785 (regOne!20826 Regex!10157) (regTwo!20826 Regex!10157)) (EmptyExpr!10157) (Star!10157 (reg!10486 Regex!10157)) (EmptyLang!10157) (Union!10157 (regOne!20827 Regex!10157) (regTwo!20827 Regex!10157)) )
))
(declare-datatypes ((List!37097 0))(
  ( (Nil!36973) (Cons!36973 (h!42393 (_ BitVec 16)) (t!265514 List!37097)) )
))
(declare-datatypes ((TokenValue!5628 0))(
  ( (FloatLiteralValue!11256 (text!39841 List!37097)) (TokenValueExt!5627 (__x!23473 Int)) (Broken!28140 (value!174277 List!37097)) (Object!5751) (End!5628) (Def!5628) (Underscore!5628) (Match!5628) (Else!5628) (Error!5628) (Case!5628) (If!5628) (Extends!5628) (Abstract!5628) (Class!5628) (Val!5628) (DelimiterValue!11256 (del!5688 List!37097)) (KeywordValue!5634 (value!174278 List!37097)) (CommentValue!11256 (value!174279 List!37097)) (WhitespaceValue!11256 (value!174280 List!37097)) (IndentationValue!5628 (value!174281 List!37097)) (String!41473) (Int32!5628) (Broken!28141 (value!174282 List!37097)) (Boolean!5629) (Unit!52139) (OperatorValue!5631 (op!5688 List!37097)) (IdentifierValue!11256 (value!174283 List!37097)) (IdentifierValue!11257 (value!174284 List!37097)) (WhitespaceValue!11257 (value!174285 List!37097)) (True!11256) (False!11256) (Broken!28142 (value!174286 List!37097)) (Broken!28143 (value!174287 List!37097)) (True!11257) (RightBrace!5628) (RightBracket!5628) (Colon!5628) (Null!5628) (Comma!5628) (LeftBracket!5628) (False!11257) (LeftBrace!5628) (ImaginaryLiteralValue!5628 (text!39842 List!37097)) (StringLiteralValue!16884 (value!174288 List!37097)) (EOFValue!5628 (value!174289 List!37097)) (IdentValue!5628 (value!174290 List!37097)) (DelimiterValue!11257 (value!174291 List!37097)) (DedentValue!5628 (value!174292 List!37097)) (NewLineValue!5628 (value!174293 List!37097)) (IntegerValue!16884 (value!174294 (_ BitVec 32)) (text!39843 List!37097)) (IntegerValue!16885 (value!174295 Int) (text!39844 List!37097)) (Times!5628) (Or!5628) (Equal!5628) (Minus!5628) (Broken!28144 (value!174296 List!37097)) (And!5628) (Div!5628) (LessEqual!5628) (Mod!5628) (Concat!15786) (Not!5628) (Plus!5628) (SpaceValue!5628 (value!174297 List!37097)) (IntegerValue!16886 (value!174298 Int) (text!39845 List!37097)) (StringLiteralValue!16885 (text!39846 List!37097)) (FloatLiteralValue!11257 (text!39847 List!37097)) (BytesLiteralValue!5628 (value!174299 List!37097)) (CommentValue!11257 (value!174300 List!37097)) (StringLiteralValue!16886 (value!174301 List!37097)) (ErrorTokenValue!5628 (msg!5689 List!37097)) )
))
(declare-datatypes ((IArray!22347 0))(
  ( (IArray!22348 (innerList!11231 List!37096)) )
))
(declare-datatypes ((Conc!11171 0))(
  ( (Node!11171 (left!28824 Conc!11171) (right!29154 Conc!11171) (csize!22572 Int) (cheight!11382 Int)) (Leaf!17481 (xs!14329 IArray!22347) (csize!22573 Int)) (Empty!11171) )
))
(declare-datatypes ((BalanceConc!21956 0))(
  ( (BalanceConc!21957 (c!579207 Conc!11171)) )
))
(declare-datatypes ((String!41474 0))(
  ( (String!41475 (value!174302 String)) )
))
(declare-datatypes ((TokenValueInjection!10684 0))(
  ( (TokenValueInjection!10685 (toValue!7598 Int) (toChars!7457 Int)) )
))
(declare-datatypes ((Rule!10596 0))(
  ( (Rule!10597 (regex!5398 Regex!10157) (tag!5982 String!41474) (isSeparator!5398 Bool) (transformation!5398 TokenValueInjection!10684)) )
))
(declare-datatypes ((Token!10162 0))(
  ( (Token!10163 (value!174303 TokenValue!5628) (rule!7958 Rule!10596) (size!27985 Int) (originalCharacters!6112 List!37096)) )
))
(declare-datatypes ((List!37098 0))(
  ( (Nil!36974) (Cons!36974 (h!42394 Token!10162) (t!265515 List!37098)) )
))
(declare-fun tokens!494 () List!37098)

(declare-fun e!2109433 () Bool)

(declare-fun e!2109419 () Bool)

(declare-fun b!3398118 () Bool)

(declare-fun tp!1060670 () Bool)

(declare-fun inv!21 (TokenValue!5628) Bool)

(assert (=> b!3398118 (= e!2109433 (and (inv!21 (value!174303 (h!42394 tokens!494))) e!2109419 tp!1060670))))

(declare-fun b!3398119 () Bool)

(declare-fun res!1374900 () Bool)

(declare-fun e!2109421 () Bool)

(assert (=> b!3398119 (=> (not res!1374900) (not e!2109421))))

(declare-fun separatorToken!241 () Token!10162)

(assert (=> b!3398119 (= res!1374900 (isSeparator!5398 (rule!7958 separatorToken!241)))))

(declare-fun e!2109413 () Bool)

(assert (=> b!3398120 (= e!2109413 (and tp!1060666 tp!1060669))))

(declare-fun tp!1060658 () Bool)

(declare-fun e!2109418 () Bool)

(declare-fun b!3398121 () Bool)

(declare-fun e!2109427 () Bool)

(assert (=> b!3398121 (= e!2109418 (and (inv!21 (value!174303 separatorToken!241)) e!2109427 tp!1060658))))

(declare-fun b!3398122 () Bool)

(declare-fun e!2109422 () Bool)

(assert (=> b!3398122 (= e!2109421 (not e!2109422))))

(declare-fun res!1374907 () Bool)

(assert (=> b!3398122 (=> res!1374907 e!2109422)))

(declare-fun lt!1155333 () List!37096)

(declare-fun lt!1155338 () List!37096)

(assert (=> b!3398122 (= res!1374907 (not (= lt!1155333 lt!1155338)))))

(declare-datatypes ((LexerInterface!4987 0))(
  ( (LexerInterfaceExt!4984 (__x!23474 Int)) (Lexer!4985) )
))
(declare-fun thiss!18206 () LexerInterface!4987)

(declare-fun printList!1535 (LexerInterface!4987 List!37098) List!37096)

(assert (=> b!3398122 (= lt!1155338 (printList!1535 thiss!18206 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))

(declare-fun lt!1155330 () BalanceConc!21956)

(declare-fun list!13399 (BalanceConc!21956) List!37096)

(assert (=> b!3398122 (= lt!1155333 (list!13399 lt!1155330))))

(declare-datatypes ((IArray!22349 0))(
  ( (IArray!22350 (innerList!11232 List!37098)) )
))
(declare-datatypes ((Conc!11172 0))(
  ( (Node!11172 (left!28825 Conc!11172) (right!29155 Conc!11172) (csize!22574 Int) (cheight!11383 Int)) (Leaf!17482 (xs!14330 IArray!22349) (csize!22575 Int)) (Empty!11172) )
))
(declare-datatypes ((BalanceConc!21958 0))(
  ( (BalanceConc!21959 (c!579208 Conc!11172)) )
))
(declare-fun lt!1155326 () BalanceConc!21958)

(declare-fun printTailRec!1482 (LexerInterface!4987 BalanceConc!21958 Int BalanceConc!21956) BalanceConc!21956)

(assert (=> b!3398122 (= lt!1155330 (printTailRec!1482 thiss!18206 lt!1155326 0 (BalanceConc!21957 Empty!11171)))))

(declare-fun print!2052 (LexerInterface!4987 BalanceConc!21958) BalanceConc!21956)

(assert (=> b!3398122 (= lt!1155330 (print!2052 thiss!18206 lt!1155326))))

(declare-fun singletonSeq!2494 (Token!10162) BalanceConc!21958)

(assert (=> b!3398122 (= lt!1155326 (singletonSeq!2494 (h!42394 tokens!494)))))

(declare-fun b!3398123 () Bool)

(declare-fun res!1374897 () Bool)

(assert (=> b!3398123 (=> (not res!1374897) (not e!2109421))))

(declare-datatypes ((List!37099 0))(
  ( (Nil!36975) (Cons!36975 (h!42395 Rule!10596) (t!265516 List!37099)) )
))
(declare-fun rules!2135 () List!37099)

(declare-fun rulesProduceIndividualToken!2479 (LexerInterface!4987 List!37099 Token!10162) Bool)

(assert (=> b!3398123 (= res!1374897 (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3398124 () Bool)

(declare-fun e!2109423 () Bool)

(assert (=> b!3398124 (= e!2109422 e!2109423)))

(declare-fun res!1374902 () Bool)

(assert (=> b!3398124 (=> res!1374902 e!2109423)))

(assert (=> b!3398124 (= res!1374902 (or (not (= lt!1155338 lt!1155340)) (not (= lt!1155333 lt!1155340))))))

(declare-fun charsOf!3412 (Token!10162) BalanceConc!21956)

(assert (=> b!3398124 (= lt!1155340 (list!13399 (charsOf!3412 (h!42394 tokens!494))))))

(declare-fun b!3398125 () Bool)

(declare-fun e!2109417 () Bool)

(declare-fun e!2109425 () Bool)

(assert (=> b!3398125 (= e!2109417 e!2109425)))

(declare-fun res!1374901 () Bool)

(assert (=> b!3398125 (=> res!1374901 e!2109425)))

(declare-fun printWithSeparatorTokenList!274 (LexerInterface!4987 List!37098 Token!10162) List!37096)

(assert (=> b!3398125 (= res!1374901 (not (= lt!1155335 (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(assert (=> b!3398125 (= lt!1155331 (++!9061 lt!1155328 lt!1155335))))

(assert (=> b!3398125 (= lt!1155328 (list!13399 (charsOf!3412 separatorToken!241)))))

(assert (=> b!3398125 (= lt!1155335 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241))))

(assert (=> b!3398125 (= lt!1155329 (printWithSeparatorTokenList!274 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2109428 () Bool)

(assert (=> b!3398126 (= e!2109428 (and tp!1060661 tp!1060660))))

(declare-fun e!2109429 () Bool)

(declare-fun b!3398127 () Bool)

(declare-fun tp!1060662 () Bool)

(declare-fun inv!50071 (Token!10162) Bool)

(assert (=> b!3398127 (= e!2109429 (and (inv!50071 (h!42394 tokens!494)) e!2109433 tp!1060662))))

(declare-fun b!3398128 () Bool)

(assert (=> b!3398128 (= e!2109423 e!2109417)))

(declare-fun res!1374906 () Bool)

(assert (=> b!3398128 (=> res!1374906 e!2109417)))

(assert (=> b!3398128 (= res!1374906 (or (isSeparator!5398 (rule!7958 (h!42394 tokens!494))) (isSeparator!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))))

(declare-fun lt!1155332 () Unit!52137)

(declare-fun lambda!120899 () Int)

(declare-fun forallContained!1345 (List!37098 Int Token!10162) Unit!52137)

(assert (=> b!3398128 (= lt!1155332 (forallContained!1345 tokens!494 lambda!120899 (h!42394 (t!265515 tokens!494))))))

(declare-fun lt!1155337 () Unit!52137)

(assert (=> b!3398128 (= lt!1155337 (forallContained!1345 tokens!494 lambda!120899 (h!42394 tokens!494)))))

(declare-fun tp!1060664 () Bool)

(declare-fun b!3398129 () Bool)

(declare-fun e!2109414 () Bool)

(declare-fun inv!50068 (String!41474) Bool)

(declare-fun inv!50072 (TokenValueInjection!10684) Bool)

(assert (=> b!3398129 (= e!2109419 (and tp!1060664 (inv!50068 (tag!5982 (rule!7958 (h!42394 tokens!494)))) (inv!50072 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) e!2109414))))

(declare-fun b!3398130 () Bool)

(declare-fun res!1374903 () Bool)

(assert (=> b!3398130 (=> (not res!1374903) (not e!2109421))))

(declare-fun sepAndNonSepRulesDisjointChars!1592 (List!37099 List!37099) Bool)

(assert (=> b!3398130 (= res!1374903 (sepAndNonSepRulesDisjointChars!1592 rules!2135 rules!2135))))

(assert (=> b!3398131 (= e!2109414 (and tp!1060667 tp!1060668))))

(declare-fun b!3398132 () Bool)

(assert (=> b!3398132 (= e!2109425 e!2109426)))

(declare-fun res!1374896 () Bool)

(assert (=> b!3398132 (=> res!1374896 e!2109426)))

(assert (=> b!3398132 (= res!1374896 (not (= lt!1155329 lt!1155334)))))

(assert (=> b!3398132 (= lt!1155334 (++!9061 (++!9061 lt!1155340 lt!1155328) lt!1155335))))

(declare-fun b!3398133 () Bool)

(declare-fun res!1374904 () Bool)

(assert (=> b!3398133 (=> (not res!1374904) (not e!2109421))))

(declare-fun rulesInvariant!4384 (LexerInterface!4987 List!37099) Bool)

(assert (=> b!3398133 (= res!1374904 (rulesInvariant!4384 thiss!18206 rules!2135))))

(declare-fun b!3398134 () Bool)

(declare-fun res!1374909 () Bool)

(assert (=> b!3398134 (=> (not res!1374909) (not e!2109421))))

(declare-fun forall!7813 (List!37098 Int) Bool)

(assert (=> b!3398134 (= res!1374909 (forall!7813 tokens!494 lambda!120899))))

(declare-fun b!3398135 () Bool)

(declare-fun res!1374905 () Bool)

(assert (=> b!3398135 (=> (not res!1374905) (not e!2109421))))

(get-info :version)

(assert (=> b!3398135 (= res!1374905 (and (not ((_ is Nil!36974) tokens!494)) (not ((_ is Nil!36974) (t!265515 tokens!494)))))))

(declare-fun b!3398117 () Bool)

(declare-fun res!1374895 () Bool)

(assert (=> b!3398117 (=> (not res!1374895) (not e!2109421))))

(declare-fun isEmpty!21232 (List!37099) Bool)

(assert (=> b!3398117 (= res!1374895 (not (isEmpty!21232 rules!2135)))))

(declare-fun res!1374899 () Bool)

(assert (=> start!317190 (=> (not res!1374899) (not e!2109421))))

(assert (=> start!317190 (= res!1374899 ((_ is Lexer!4985) thiss!18206))))

(assert (=> start!317190 e!2109421))

(assert (=> start!317190 true))

(declare-fun e!2109424 () Bool)

(assert (=> start!317190 e!2109424))

(assert (=> start!317190 e!2109429))

(assert (=> start!317190 (and (inv!50071 separatorToken!241) e!2109418)))

(declare-fun b!3398136 () Bool)

(declare-fun res!1374898 () Bool)

(assert (=> b!3398136 (=> res!1374898 e!2109423)))

(declare-fun isEmpty!21233 (BalanceConc!21958) Bool)

(declare-datatypes ((tuple2!36596 0))(
  ( (tuple2!36597 (_1!21432 BalanceConc!21958) (_2!21432 BalanceConc!21956)) )
))
(declare-fun lex!2313 (LexerInterface!4987 List!37099 BalanceConc!21956) tuple2!36596)

(declare-fun seqFromList!3849 (List!37096) BalanceConc!21956)

(assert (=> b!3398136 (= res!1374898 (isEmpty!21233 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)))))))

(declare-fun b!3398137 () Bool)

(declare-datatypes ((tuple2!36598 0))(
  ( (tuple2!36599 (_1!21433 Token!10162) (_2!21433 List!37096)) )
))
(declare-datatypes ((Option!7436 0))(
  ( (None!7435) (Some!7435 (v!36599 tuple2!36598)) )
))
(declare-fun isDefined!5740 (Option!7436) Bool)

(declare-fun maxPrefix!2553 (LexerInterface!4987 List!37099 List!37096) Option!7436)

(assert (=> b!3398137 (= e!2109415 (isDefined!5740 (maxPrefix!2553 thiss!18206 rules!2135 lt!1155340)))))

(declare-fun lt!1155336 () Unit!52137)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!976 (LexerInterface!4987 List!37099 List!37098 Token!10162) Unit!52137)

(assert (=> b!3398137 (= lt!1155336 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!976 thiss!18206 rules!2135 tokens!494 (h!42394 tokens!494)))))

(declare-fun b!3398138 () Bool)

(declare-fun res!1374910 () Bool)

(assert (=> b!3398138 (=> (not res!1374910) (not e!2109421))))

(declare-fun rulesProduceEachTokenIndividually!1438 (LexerInterface!4987 List!37099 BalanceConc!21958) Bool)

(declare-fun seqFromList!3850 (List!37098) BalanceConc!21958)

(assert (=> b!3398138 (= res!1374910 (rulesProduceEachTokenIndividually!1438 thiss!18206 rules!2135 (seqFromList!3850 tokens!494)))))

(declare-fun b!3398139 () Bool)

(declare-fun e!2109432 () Bool)

(declare-fun tp!1060663 () Bool)

(assert (=> b!3398139 (= e!2109424 (and e!2109432 tp!1060663))))

(declare-fun b!3398140 () Bool)

(declare-fun tp!1060665 () Bool)

(assert (=> b!3398140 (= e!2109427 (and tp!1060665 (inv!50068 (tag!5982 (rule!7958 separatorToken!241))) (inv!50072 (transformation!5398 (rule!7958 separatorToken!241))) e!2109413))))

(declare-fun b!3398141 () Bool)

(declare-fun res!1374894 () Bool)

(assert (=> b!3398141 (=> res!1374894 e!2109423)))

(assert (=> b!3398141 (= res!1374894 (not (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 (h!42394 tokens!494))))))

(declare-fun b!3398142 () Bool)

(declare-fun tp!1060659 () Bool)

(assert (=> b!3398142 (= e!2109432 (and tp!1060659 (inv!50068 (tag!5982 (h!42395 rules!2135))) (inv!50072 (transformation!5398 (h!42395 rules!2135))) e!2109428))))

(assert (= (and start!317190 res!1374899) b!3398117))

(assert (= (and b!3398117 res!1374895) b!3398133))

(assert (= (and b!3398133 res!1374904) b!3398138))

(assert (= (and b!3398138 res!1374910) b!3398123))

(assert (= (and b!3398123 res!1374897) b!3398119))

(assert (= (and b!3398119 res!1374900) b!3398134))

(assert (= (and b!3398134 res!1374909) b!3398130))

(assert (= (and b!3398130 res!1374903) b!3398135))

(assert (= (and b!3398135 res!1374905) b!3398122))

(assert (= (and b!3398122 (not res!1374907)) b!3398124))

(assert (= (and b!3398124 (not res!1374902)) b!3398141))

(assert (= (and b!3398141 (not res!1374894)) b!3398136))

(assert (= (and b!3398136 (not res!1374898)) b!3398128))

(assert (= (and b!3398128 (not res!1374906)) b!3398125))

(assert (= (and b!3398125 (not res!1374901)) b!3398132))

(assert (= (and b!3398132 (not res!1374896)) b!3398116))

(assert (= (and b!3398116 (not res!1374908)) b!3398137))

(assert (= b!3398142 b!3398126))

(assert (= b!3398139 b!3398142))

(assert (= (and start!317190 ((_ is Cons!36975) rules!2135)) b!3398139))

(assert (= b!3398129 b!3398131))

(assert (= b!3398118 b!3398129))

(assert (= b!3398127 b!3398118))

(assert (= (and start!317190 ((_ is Cons!36974) tokens!494)) b!3398127))

(assert (= b!3398140 b!3398120))

(assert (= b!3398121 b!3398140))

(assert (= start!317190 b!3398121))

(declare-fun m!3769215 () Bool)

(assert (=> b!3398116 m!3769215))

(declare-fun m!3769217 () Bool)

(assert (=> b!3398116 m!3769217))

(declare-fun m!3769219 () Bool)

(assert (=> b!3398123 m!3769219))

(declare-fun m!3769221 () Bool)

(assert (=> b!3398134 m!3769221))

(declare-fun m!3769223 () Bool)

(assert (=> b!3398133 m!3769223))

(declare-fun m!3769225 () Bool)

(assert (=> b!3398140 m!3769225))

(declare-fun m!3769227 () Bool)

(assert (=> b!3398140 m!3769227))

(declare-fun m!3769229 () Bool)

(assert (=> b!3398127 m!3769229))

(declare-fun m!3769231 () Bool)

(assert (=> b!3398130 m!3769231))

(declare-fun m!3769233 () Bool)

(assert (=> b!3398129 m!3769233))

(declare-fun m!3769235 () Bool)

(assert (=> b!3398129 m!3769235))

(declare-fun m!3769237 () Bool)

(assert (=> b!3398132 m!3769237))

(assert (=> b!3398132 m!3769237))

(declare-fun m!3769239 () Bool)

(assert (=> b!3398132 m!3769239))

(declare-fun m!3769241 () Bool)

(assert (=> b!3398121 m!3769241))

(declare-fun m!3769243 () Bool)

(assert (=> b!3398125 m!3769243))

(declare-fun m!3769245 () Bool)

(assert (=> b!3398125 m!3769245))

(declare-fun m!3769247 () Bool)

(assert (=> b!3398125 m!3769247))

(declare-fun m!3769249 () Bool)

(assert (=> b!3398125 m!3769249))

(assert (=> b!3398125 m!3769243))

(declare-fun m!3769251 () Bool)

(assert (=> b!3398125 m!3769251))

(declare-fun m!3769253 () Bool)

(assert (=> b!3398125 m!3769253))

(declare-fun m!3769255 () Bool)

(assert (=> b!3398125 m!3769255))

(assert (=> b!3398125 m!3769245))

(declare-fun m!3769257 () Bool)

(assert (=> b!3398125 m!3769257))

(assert (=> b!3398125 m!3769251))

(declare-fun m!3769259 () Bool)

(assert (=> b!3398125 m!3769259))

(assert (=> b!3398125 m!3769259))

(assert (=> b!3398125 m!3769255))

(declare-fun m!3769261 () Bool)

(assert (=> b!3398125 m!3769261))

(declare-fun m!3769263 () Bool)

(assert (=> b!3398117 m!3769263))

(declare-fun m!3769265 () Bool)

(assert (=> b!3398122 m!3769265))

(declare-fun m!3769267 () Bool)

(assert (=> b!3398122 m!3769267))

(declare-fun m!3769269 () Bool)

(assert (=> b!3398122 m!3769269))

(declare-fun m!3769271 () Bool)

(assert (=> b!3398122 m!3769271))

(declare-fun m!3769273 () Bool)

(assert (=> b!3398122 m!3769273))

(declare-fun m!3769275 () Bool)

(assert (=> b!3398138 m!3769275))

(assert (=> b!3398138 m!3769275))

(declare-fun m!3769277 () Bool)

(assert (=> b!3398138 m!3769277))

(declare-fun m!3769279 () Bool)

(assert (=> b!3398141 m!3769279))

(declare-fun m!3769281 () Bool)

(assert (=> start!317190 m!3769281))

(declare-fun m!3769283 () Bool)

(assert (=> b!3398128 m!3769283))

(declare-fun m!3769285 () Bool)

(assert (=> b!3398128 m!3769285))

(declare-fun m!3769287 () Bool)

(assert (=> b!3398136 m!3769287))

(assert (=> b!3398136 m!3769287))

(declare-fun m!3769289 () Bool)

(assert (=> b!3398136 m!3769289))

(declare-fun m!3769291 () Bool)

(assert (=> b!3398136 m!3769291))

(declare-fun m!3769293 () Bool)

(assert (=> b!3398124 m!3769293))

(assert (=> b!3398124 m!3769293))

(declare-fun m!3769295 () Bool)

(assert (=> b!3398124 m!3769295))

(declare-fun m!3769297 () Bool)

(assert (=> b!3398142 m!3769297))

(declare-fun m!3769299 () Bool)

(assert (=> b!3398142 m!3769299))

(declare-fun m!3769301 () Bool)

(assert (=> b!3398118 m!3769301))

(declare-fun m!3769303 () Bool)

(assert (=> b!3398137 m!3769303))

(assert (=> b!3398137 m!3769303))

(declare-fun m!3769305 () Bool)

(assert (=> b!3398137 m!3769305))

(declare-fun m!3769307 () Bool)

(assert (=> b!3398137 m!3769307))

(check-sat (not b!3398139) (not b!3398137) (not b!3398121) (not b!3398129) (not b!3398132) (not b!3398142) (not b!3398122) (not b!3398124) (not b!3398134) b_and!236991 (not b!3398118) (not b!3398133) (not b_next!89681) b_and!236983 (not b!3398123) (not b!3398125) (not b!3398141) b_and!236987 (not b!3398127) (not b!3398117) (not b_next!89689) b_and!236993 (not b!3398116) (not b_next!89685) (not b!3398138) (not b_next!89691) (not b!3398140) (not b_next!89683) (not start!317190) (not b_next!89687) (not b!3398136) b_and!236989 b_and!236985 (not b!3398130) (not b!3398128))
(check-sat b_and!236991 (not b_next!89681) b_and!236983 b_and!236987 (not b_next!89689) (not b_next!89691) (not b_next!89683) b_and!236993 (not b_next!89685) (not b_next!89687) b_and!236989 b_and!236985)
(get-model)

(declare-fun b!3398204 () Bool)

(declare-fun e!2109474 () List!37096)

(assert (=> b!3398204 (= e!2109474 (Cons!36972 (h!42392 lt!1155340) (++!9061 (t!265513 lt!1155340) lt!1155331)))))

(declare-fun e!2109473 () Bool)

(declare-fun lt!1155353 () List!37096)

(declare-fun b!3398206 () Bool)

(assert (=> b!3398206 (= e!2109473 (or (not (= lt!1155331 Nil!36972)) (= lt!1155353 lt!1155340)))))

(declare-fun d!966194 () Bool)

(assert (=> d!966194 e!2109473))

(declare-fun res!1374954 () Bool)

(assert (=> d!966194 (=> (not res!1374954) (not e!2109473))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5111 (List!37096) (InoxSet C!20500))

(assert (=> d!966194 (= res!1374954 (= (content!5111 lt!1155353) ((_ map or) (content!5111 lt!1155340) (content!5111 lt!1155331))))))

(assert (=> d!966194 (= lt!1155353 e!2109474)))

(declare-fun c!579220 () Bool)

(assert (=> d!966194 (= c!579220 ((_ is Nil!36972) lt!1155340))))

(assert (=> d!966194 (= (++!9061 lt!1155340 lt!1155331) lt!1155353)))

(declare-fun b!3398205 () Bool)

(declare-fun res!1374955 () Bool)

(assert (=> b!3398205 (=> (not res!1374955) (not e!2109473))))

(declare-fun size!27989 (List!37096) Int)

(assert (=> b!3398205 (= res!1374955 (= (size!27989 lt!1155353) (+ (size!27989 lt!1155340) (size!27989 lt!1155331))))))

(declare-fun b!3398203 () Bool)

(assert (=> b!3398203 (= e!2109474 lt!1155331)))

(assert (= (and d!966194 c!579220) b!3398203))

(assert (= (and d!966194 (not c!579220)) b!3398204))

(assert (= (and d!966194 res!1374954) b!3398205))

(assert (= (and b!3398205 res!1374955) b!3398206))

(declare-fun m!3769381 () Bool)

(assert (=> b!3398204 m!3769381))

(declare-fun m!3769383 () Bool)

(assert (=> d!966194 m!3769383))

(declare-fun m!3769385 () Bool)

(assert (=> d!966194 m!3769385))

(declare-fun m!3769387 () Bool)

(assert (=> d!966194 m!3769387))

(declare-fun m!3769389 () Bool)

(assert (=> b!3398205 m!3769389))

(declare-fun m!3769391 () Bool)

(assert (=> b!3398205 m!3769391))

(declare-fun m!3769393 () Bool)

(assert (=> b!3398205 m!3769393))

(assert (=> b!3398116 d!966194))

(declare-fun d!966196 () Bool)

(assert (=> d!966196 (= (++!9061 (++!9061 lt!1155340 lt!1155328) lt!1155335) (++!9061 lt!1155340 (++!9061 lt!1155328 lt!1155335)))))

(declare-fun lt!1155356 () Unit!52137)

(declare-fun choose!19706 (List!37096 List!37096 List!37096) Unit!52137)

(assert (=> d!966196 (= lt!1155356 (choose!19706 lt!1155340 lt!1155328 lt!1155335))))

(assert (=> d!966196 (= (lemmaConcatAssociativity!1900 lt!1155340 lt!1155328 lt!1155335) lt!1155356)))

(declare-fun bs!556009 () Bool)

(assert (= bs!556009 d!966196))

(assert (=> bs!556009 m!3769253))

(assert (=> bs!556009 m!3769237))

(assert (=> bs!556009 m!3769239))

(declare-fun m!3769395 () Bool)

(assert (=> bs!556009 m!3769395))

(assert (=> bs!556009 m!3769237))

(assert (=> bs!556009 m!3769253))

(declare-fun m!3769397 () Bool)

(assert (=> bs!556009 m!3769397))

(assert (=> b!3398116 d!966196))

(declare-fun d!966198 () Bool)

(declare-fun res!1374960 () Bool)

(declare-fun e!2109477 () Bool)

(assert (=> d!966198 (=> (not res!1374960) (not e!2109477))))

(declare-fun isEmpty!21239 (List!37096) Bool)

(assert (=> d!966198 (= res!1374960 (not (isEmpty!21239 (originalCharacters!6112 (h!42394 tokens!494)))))))

(assert (=> d!966198 (= (inv!50071 (h!42394 tokens!494)) e!2109477)))

(declare-fun b!3398211 () Bool)

(declare-fun res!1374961 () Bool)

(assert (=> b!3398211 (=> (not res!1374961) (not e!2109477))))

(declare-fun dynLambda!15424 (Int TokenValue!5628) BalanceConc!21956)

(assert (=> b!3398211 (= res!1374961 (= (originalCharacters!6112 (h!42394 tokens!494)) (list!13399 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))))

(declare-fun b!3398212 () Bool)

(assert (=> b!3398212 (= e!2109477 (= (size!27985 (h!42394 tokens!494)) (size!27989 (originalCharacters!6112 (h!42394 tokens!494)))))))

(assert (= (and d!966198 res!1374960) b!3398211))

(assert (= (and b!3398211 res!1374961) b!3398212))

(declare-fun b_lambda!96843 () Bool)

(assert (=> (not b_lambda!96843) (not b!3398211)))

(declare-fun t!265530 () Bool)

(declare-fun tb!181999 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265530) tb!181999))

(declare-fun b!3398217 () Bool)

(declare-fun e!2109480 () Bool)

(declare-fun tp!1060677 () Bool)

(declare-fun inv!50075 (Conc!11171) Bool)

(assert (=> b!3398217 (= e!2109480 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))) tp!1060677))))

(declare-fun result!225606 () Bool)

(declare-fun inv!50076 (BalanceConc!21956) Bool)

(assert (=> tb!181999 (= result!225606 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))) e!2109480))))

(assert (= tb!181999 b!3398217))

(declare-fun m!3769399 () Bool)

(assert (=> b!3398217 m!3769399))

(declare-fun m!3769401 () Bool)

(assert (=> tb!181999 m!3769401))

(assert (=> b!3398211 t!265530))

(declare-fun b_and!237007 () Bool)

(assert (= b_and!236985 (and (=> t!265530 result!225606) b_and!237007)))

(declare-fun t!265532 () Bool)

(declare-fun tb!182001 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265532) tb!182001))

(declare-fun result!225610 () Bool)

(assert (= result!225610 result!225606))

(assert (=> b!3398211 t!265532))

(declare-fun b_and!237009 () Bool)

(assert (= b_and!236989 (and (=> t!265532 result!225610) b_and!237009)))

(declare-fun t!265534 () Bool)

(declare-fun tb!182003 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265534) tb!182003))

(declare-fun result!225612 () Bool)

(assert (= result!225612 result!225606))

(assert (=> b!3398211 t!265534))

(declare-fun b_and!237011 () Bool)

(assert (= b_and!236993 (and (=> t!265534 result!225612) b_and!237011)))

(declare-fun m!3769403 () Bool)

(assert (=> d!966198 m!3769403))

(declare-fun m!3769405 () Bool)

(assert (=> b!3398211 m!3769405))

(assert (=> b!3398211 m!3769405))

(declare-fun m!3769407 () Bool)

(assert (=> b!3398211 m!3769407))

(declare-fun m!3769409 () Bool)

(assert (=> b!3398212 m!3769409))

(assert (=> b!3398127 d!966198))

(declare-fun d!966200 () Bool)

(declare-fun isEmpty!21240 (Option!7436) Bool)

(assert (=> d!966200 (= (isDefined!5740 (maxPrefix!2553 thiss!18206 rules!2135 lt!1155340)) (not (isEmpty!21240 (maxPrefix!2553 thiss!18206 rules!2135 lt!1155340))))))

(declare-fun bs!556010 () Bool)

(assert (= bs!556010 d!966200))

(assert (=> bs!556010 m!3769303))

(declare-fun m!3769411 () Bool)

(assert (=> bs!556010 m!3769411))

(assert (=> b!3398137 d!966200))

(declare-fun b!3398270 () Bool)

(declare-fun res!1375008 () Bool)

(declare-fun e!2109516 () Bool)

(assert (=> b!3398270 (=> (not res!1375008) (not e!2109516))))

(declare-fun lt!1155404 () Option!7436)

(declare-fun get!11808 (Option!7436) tuple2!36598)

(assert (=> b!3398270 (= res!1375008 (< (size!27989 (_2!21433 (get!11808 lt!1155404))) (size!27989 lt!1155340)))))

(declare-fun call!245803 () Option!7436)

(declare-fun bm!245798 () Bool)

(declare-fun maxPrefixOneRule!1702 (LexerInterface!4987 Rule!10596 List!37096) Option!7436)

(assert (=> bm!245798 (= call!245803 (maxPrefixOneRule!1702 thiss!18206 (h!42395 rules!2135) lt!1155340))))

(declare-fun b!3398271 () Bool)

(declare-fun res!1375009 () Bool)

(assert (=> b!3398271 (=> (not res!1375009) (not e!2109516))))

(assert (=> b!3398271 (= res!1375009 (= (++!9061 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))) (_2!21433 (get!11808 lt!1155404))) lt!1155340))))

(declare-fun b!3398272 () Bool)

(declare-fun res!1375004 () Bool)

(assert (=> b!3398272 (=> (not res!1375004) (not e!2109516))))

(declare-fun apply!8625 (TokenValueInjection!10684 BalanceConc!21956) TokenValue!5628)

(assert (=> b!3398272 (= res!1375004 (= (value!174303 (_1!21433 (get!11808 lt!1155404))) (apply!8625 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))) (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404)))))))))

(declare-fun d!966202 () Bool)

(declare-fun e!2109517 () Bool)

(assert (=> d!966202 e!2109517))

(declare-fun res!1375007 () Bool)

(assert (=> d!966202 (=> res!1375007 e!2109517)))

(assert (=> d!966202 (= res!1375007 (isEmpty!21240 lt!1155404))))

(declare-fun e!2109515 () Option!7436)

(assert (=> d!966202 (= lt!1155404 e!2109515)))

(declare-fun c!579226 () Bool)

(assert (=> d!966202 (= c!579226 (and ((_ is Cons!36975) rules!2135) ((_ is Nil!36975) (t!265516 rules!2135))))))

(declare-fun lt!1155400 () Unit!52137)

(declare-fun lt!1155403 () Unit!52137)

(assert (=> d!966202 (= lt!1155400 lt!1155403)))

(declare-fun isPrefix!2832 (List!37096 List!37096) Bool)

(assert (=> d!966202 (isPrefix!2832 lt!1155340 lt!1155340)))

(declare-fun lemmaIsPrefixRefl!1791 (List!37096 List!37096) Unit!52137)

(assert (=> d!966202 (= lt!1155403 (lemmaIsPrefixRefl!1791 lt!1155340 lt!1155340))))

(declare-fun rulesValidInductive!1841 (LexerInterface!4987 List!37099) Bool)

(assert (=> d!966202 (rulesValidInductive!1841 thiss!18206 rules!2135)))

(assert (=> d!966202 (= (maxPrefix!2553 thiss!18206 rules!2135 lt!1155340) lt!1155404)))

(declare-fun b!3398273 () Bool)

(declare-fun contains!6790 (List!37099 Rule!10596) Bool)

(assert (=> b!3398273 (= e!2109516 (contains!6790 rules!2135 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))

(declare-fun b!3398274 () Bool)

(declare-fun lt!1155401 () Option!7436)

(declare-fun lt!1155402 () Option!7436)

(assert (=> b!3398274 (= e!2109515 (ite (and ((_ is None!7435) lt!1155401) ((_ is None!7435) lt!1155402)) None!7435 (ite ((_ is None!7435) lt!1155402) lt!1155401 (ite ((_ is None!7435) lt!1155401) lt!1155402 (ite (>= (size!27985 (_1!21433 (v!36599 lt!1155401))) (size!27985 (_1!21433 (v!36599 lt!1155402)))) lt!1155401 lt!1155402)))))))

(assert (=> b!3398274 (= lt!1155401 call!245803)))

(assert (=> b!3398274 (= lt!1155402 (maxPrefix!2553 thiss!18206 (t!265516 rules!2135) lt!1155340))))

(declare-fun b!3398275 () Bool)

(assert (=> b!3398275 (= e!2109515 call!245803)))

(declare-fun b!3398276 () Bool)

(declare-fun res!1375006 () Bool)

(assert (=> b!3398276 (=> (not res!1375006) (not e!2109516))))

(assert (=> b!3398276 (= res!1375006 (= (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))) (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404)))))))

(declare-fun b!3398277 () Bool)

(assert (=> b!3398277 (= e!2109517 e!2109516)))

(declare-fun res!1375005 () Bool)

(assert (=> b!3398277 (=> (not res!1375005) (not e!2109516))))

(assert (=> b!3398277 (= res!1375005 (isDefined!5740 lt!1155404))))

(declare-fun b!3398278 () Bool)

(declare-fun res!1375010 () Bool)

(assert (=> b!3398278 (=> (not res!1375010) (not e!2109516))))

(declare-fun matchR!4741 (Regex!10157 List!37096) Bool)

(assert (=> b!3398278 (= res!1375010 (matchR!4741 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))) (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))))))

(assert (= (and d!966202 c!579226) b!3398275))

(assert (= (and d!966202 (not c!579226)) b!3398274))

(assert (= (or b!3398275 b!3398274) bm!245798))

(assert (= (and d!966202 (not res!1375007)) b!3398277))

(assert (= (and b!3398277 res!1375005) b!3398276))

(assert (= (and b!3398276 res!1375006) b!3398270))

(assert (= (and b!3398270 res!1375008) b!3398271))

(assert (= (and b!3398271 res!1375009) b!3398272))

(assert (= (and b!3398272 res!1375004) b!3398278))

(assert (= (and b!3398278 res!1375010) b!3398273))

(declare-fun m!3769495 () Bool)

(assert (=> b!3398274 m!3769495))

(declare-fun m!3769499 () Bool)

(assert (=> b!3398278 m!3769499))

(declare-fun m!3769501 () Bool)

(assert (=> b!3398278 m!3769501))

(assert (=> b!3398278 m!3769501))

(declare-fun m!3769503 () Bool)

(assert (=> b!3398278 m!3769503))

(assert (=> b!3398278 m!3769503))

(declare-fun m!3769505 () Bool)

(assert (=> b!3398278 m!3769505))

(declare-fun m!3769507 () Bool)

(assert (=> bm!245798 m!3769507))

(assert (=> b!3398270 m!3769499))

(declare-fun m!3769509 () Bool)

(assert (=> b!3398270 m!3769509))

(assert (=> b!3398270 m!3769391))

(assert (=> b!3398276 m!3769499))

(assert (=> b!3398276 m!3769501))

(assert (=> b!3398276 m!3769501))

(assert (=> b!3398276 m!3769503))

(assert (=> b!3398273 m!3769499))

(declare-fun m!3769511 () Bool)

(assert (=> b!3398273 m!3769511))

(declare-fun m!3769513 () Bool)

(assert (=> b!3398277 m!3769513))

(assert (=> b!3398271 m!3769499))

(assert (=> b!3398271 m!3769501))

(assert (=> b!3398271 m!3769501))

(assert (=> b!3398271 m!3769503))

(assert (=> b!3398271 m!3769503))

(declare-fun m!3769515 () Bool)

(assert (=> b!3398271 m!3769515))

(assert (=> b!3398272 m!3769499))

(declare-fun m!3769517 () Bool)

(assert (=> b!3398272 m!3769517))

(assert (=> b!3398272 m!3769517))

(declare-fun m!3769519 () Bool)

(assert (=> b!3398272 m!3769519))

(declare-fun m!3769521 () Bool)

(assert (=> d!966202 m!3769521))

(declare-fun m!3769523 () Bool)

(assert (=> d!966202 m!3769523))

(declare-fun m!3769525 () Bool)

(assert (=> d!966202 m!3769525))

(declare-fun m!3769527 () Bool)

(assert (=> d!966202 m!3769527))

(assert (=> b!3398137 d!966202))

(declare-fun d!966228 () Bool)

(assert (=> d!966228 (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 (h!42394 tokens!494))))

(declare-fun lt!1155430 () Unit!52137)

(declare-fun choose!19707 (LexerInterface!4987 List!37099 List!37098 Token!10162) Unit!52137)

(assert (=> d!966228 (= lt!1155430 (choose!19707 thiss!18206 rules!2135 tokens!494 (h!42394 tokens!494)))))

(assert (=> d!966228 (not (isEmpty!21232 rules!2135))))

(assert (=> d!966228 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!976 thiss!18206 rules!2135 tokens!494 (h!42394 tokens!494)) lt!1155430)))

(declare-fun bs!556017 () Bool)

(assert (= bs!556017 d!966228))

(assert (=> bs!556017 m!3769279))

(declare-fun m!3769601 () Bool)

(assert (=> bs!556017 m!3769601))

(assert (=> bs!556017 m!3769263))

(assert (=> b!3398137 d!966228))

(declare-fun d!966246 () Bool)

(declare-fun dynLambda!15425 (Int Token!10162) Bool)

(assert (=> d!966246 (dynLambda!15425 lambda!120899 (h!42394 (t!265515 tokens!494)))))

(declare-fun lt!1155438 () Unit!52137)

(declare-fun choose!19708 (List!37098 Int Token!10162) Unit!52137)

(assert (=> d!966246 (= lt!1155438 (choose!19708 tokens!494 lambda!120899 (h!42394 (t!265515 tokens!494))))))

(declare-fun e!2109547 () Bool)

(assert (=> d!966246 e!2109547))

(declare-fun res!1375050 () Bool)

(assert (=> d!966246 (=> (not res!1375050) (not e!2109547))))

(assert (=> d!966246 (= res!1375050 (forall!7813 tokens!494 lambda!120899))))

(assert (=> d!966246 (= (forallContained!1345 tokens!494 lambda!120899 (h!42394 (t!265515 tokens!494))) lt!1155438)))

(declare-fun b!3398340 () Bool)

(declare-fun contains!6791 (List!37098 Token!10162) Bool)

(assert (=> b!3398340 (= e!2109547 (contains!6791 tokens!494 (h!42394 (t!265515 tokens!494))))))

(assert (= (and d!966246 res!1375050) b!3398340))

(declare-fun b_lambda!96849 () Bool)

(assert (=> (not b_lambda!96849) (not d!966246)))

(declare-fun m!3769603 () Bool)

(assert (=> d!966246 m!3769603))

(declare-fun m!3769605 () Bool)

(assert (=> d!966246 m!3769605))

(assert (=> d!966246 m!3769221))

(declare-fun m!3769607 () Bool)

(assert (=> b!3398340 m!3769607))

(assert (=> b!3398128 d!966246))

(declare-fun d!966248 () Bool)

(assert (=> d!966248 (dynLambda!15425 lambda!120899 (h!42394 tokens!494))))

(declare-fun lt!1155439 () Unit!52137)

(assert (=> d!966248 (= lt!1155439 (choose!19708 tokens!494 lambda!120899 (h!42394 tokens!494)))))

(declare-fun e!2109548 () Bool)

(assert (=> d!966248 e!2109548))

(declare-fun res!1375051 () Bool)

(assert (=> d!966248 (=> (not res!1375051) (not e!2109548))))

(assert (=> d!966248 (= res!1375051 (forall!7813 tokens!494 lambda!120899))))

(assert (=> d!966248 (= (forallContained!1345 tokens!494 lambda!120899 (h!42394 tokens!494)) lt!1155439)))

(declare-fun b!3398341 () Bool)

(assert (=> b!3398341 (= e!2109548 (contains!6791 tokens!494 (h!42394 tokens!494)))))

(assert (= (and d!966248 res!1375051) b!3398341))

(declare-fun b_lambda!96851 () Bool)

(assert (=> (not b_lambda!96851) (not d!966248)))

(declare-fun m!3769609 () Bool)

(assert (=> d!966248 m!3769609))

(declare-fun m!3769611 () Bool)

(assert (=> d!966248 m!3769611))

(assert (=> d!966248 m!3769221))

(declare-fun m!3769613 () Bool)

(assert (=> b!3398341 m!3769613))

(assert (=> b!3398128 d!966248))

(declare-fun bs!556019 () Bool)

(declare-fun d!966250 () Bool)

(assert (= bs!556019 (and d!966250 b!3398134)))

(declare-fun lambda!120904 () Int)

(assert (=> bs!556019 (not (= lambda!120904 lambda!120899))))

(declare-fun b!3398355 () Bool)

(declare-fun e!2109560 () Bool)

(assert (=> b!3398355 (= e!2109560 true)))

(declare-fun b!3398354 () Bool)

(declare-fun e!2109559 () Bool)

(assert (=> b!3398354 (= e!2109559 e!2109560)))

(declare-fun b!3398353 () Bool)

(declare-fun e!2109558 () Bool)

(assert (=> b!3398353 (= e!2109558 e!2109559)))

(assert (=> d!966250 e!2109558))

(assert (= b!3398354 b!3398355))

(assert (= b!3398353 b!3398354))

(assert (= (and d!966250 ((_ is Cons!36975) rules!2135)) b!3398353))

(declare-fun order!19517 () Int)

(declare-fun order!19515 () Int)

(declare-fun dynLambda!15426 (Int Int) Int)

(declare-fun dynLambda!15427 (Int Int) Int)

(assert (=> b!3398355 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15427 order!19517 lambda!120904))))

(declare-fun order!19519 () Int)

(declare-fun dynLambda!15428 (Int Int) Int)

(assert (=> b!3398355 (< (dynLambda!15428 order!19519 (toChars!7457 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15427 order!19517 lambda!120904))))

(assert (=> d!966250 true))

(declare-fun e!2109551 () Bool)

(assert (=> d!966250 e!2109551))

(declare-fun res!1375054 () Bool)

(assert (=> d!966250 (=> (not res!1375054) (not e!2109551))))

(declare-fun lt!1155447 () Bool)

(declare-fun list!13402 (BalanceConc!21958) List!37098)

(assert (=> d!966250 (= res!1375054 (= lt!1155447 (forall!7813 (list!13402 (seqFromList!3850 tokens!494)) lambda!120904)))))

(declare-fun forall!7815 (BalanceConc!21958 Int) Bool)

(assert (=> d!966250 (= lt!1155447 (forall!7815 (seqFromList!3850 tokens!494) lambda!120904))))

(assert (=> d!966250 (not (isEmpty!21232 rules!2135))))

(assert (=> d!966250 (= (rulesProduceEachTokenIndividually!1438 thiss!18206 rules!2135 (seqFromList!3850 tokens!494)) lt!1155447)))

(declare-fun b!3398344 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1827 (LexerInterface!4987 List!37099 List!37098) Bool)

(assert (=> b!3398344 (= e!2109551 (= lt!1155447 (rulesProduceEachTokenIndividuallyList!1827 thiss!18206 rules!2135 (list!13402 (seqFromList!3850 tokens!494)))))))

(assert (= (and d!966250 res!1375054) b!3398344))

(assert (=> d!966250 m!3769275))

(declare-fun m!3769649 () Bool)

(assert (=> d!966250 m!3769649))

(assert (=> d!966250 m!3769649))

(declare-fun m!3769651 () Bool)

(assert (=> d!966250 m!3769651))

(assert (=> d!966250 m!3769275))

(declare-fun m!3769653 () Bool)

(assert (=> d!966250 m!3769653))

(assert (=> d!966250 m!3769263))

(assert (=> b!3398344 m!3769275))

(assert (=> b!3398344 m!3769649))

(assert (=> b!3398344 m!3769649))

(declare-fun m!3769655 () Bool)

(assert (=> b!3398344 m!3769655))

(assert (=> b!3398138 d!966250))

(declare-fun d!966256 () Bool)

(declare-fun fromListB!1726 (List!37098) BalanceConc!21958)

(assert (=> d!966256 (= (seqFromList!3850 tokens!494) (fromListB!1726 tokens!494))))

(declare-fun bs!556020 () Bool)

(assert (= bs!556020 d!966256))

(declare-fun m!3769657 () Bool)

(assert (=> bs!556020 m!3769657))

(assert (=> b!3398138 d!966256))

(declare-fun d!966258 () Bool)

(assert (=> d!966258 (= (isEmpty!21232 rules!2135) ((_ is Nil!36975) rules!2135))))

(assert (=> b!3398117 d!966258))

(declare-fun d!966260 () Bool)

(declare-fun list!13403 (Conc!11171) List!37096)

(assert (=> d!966260 (= (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13403 (c!579207 (charsOf!3412 (h!42394 tokens!494)))))))

(declare-fun bs!556021 () Bool)

(assert (= bs!556021 d!966260))

(declare-fun m!3769659 () Bool)

(assert (=> bs!556021 m!3769659))

(assert (=> b!3398124 d!966260))

(declare-fun d!966262 () Bool)

(declare-fun lt!1155450 () BalanceConc!21956)

(assert (=> d!966262 (= (list!13399 lt!1155450) (originalCharacters!6112 (h!42394 tokens!494)))))

(assert (=> d!966262 (= lt!1155450 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))

(assert (=> d!966262 (= (charsOf!3412 (h!42394 tokens!494)) lt!1155450)))

(declare-fun b_lambda!96853 () Bool)

(assert (=> (not b_lambda!96853) (not d!966262)))

(assert (=> d!966262 t!265530))

(declare-fun b_and!237019 () Bool)

(assert (= b_and!237007 (and (=> t!265530 result!225606) b_and!237019)))

(assert (=> d!966262 t!265532))

(declare-fun b_and!237021 () Bool)

(assert (= b_and!237009 (and (=> t!265532 result!225610) b_and!237021)))

(assert (=> d!966262 t!265534))

(declare-fun b_and!237023 () Bool)

(assert (= b_and!237011 (and (=> t!265534 result!225612) b_and!237023)))

(declare-fun m!3769661 () Bool)

(assert (=> d!966262 m!3769661))

(assert (=> d!966262 m!3769405))

(assert (=> b!3398124 d!966262))

(declare-fun d!966264 () Bool)

(declare-fun res!1375059 () Bool)

(declare-fun e!2109565 () Bool)

(assert (=> d!966264 (=> res!1375059 e!2109565)))

(assert (=> d!966264 (= res!1375059 ((_ is Nil!36974) tokens!494))))

(assert (=> d!966264 (= (forall!7813 tokens!494 lambda!120899) e!2109565)))

(declare-fun b!3398362 () Bool)

(declare-fun e!2109566 () Bool)

(assert (=> b!3398362 (= e!2109565 e!2109566)))

(declare-fun res!1375060 () Bool)

(assert (=> b!3398362 (=> (not res!1375060) (not e!2109566))))

(assert (=> b!3398362 (= res!1375060 (dynLambda!15425 lambda!120899 (h!42394 tokens!494)))))

(declare-fun b!3398363 () Bool)

(assert (=> b!3398363 (= e!2109566 (forall!7813 (t!265515 tokens!494) lambda!120899))))

(assert (= (and d!966264 (not res!1375059)) b!3398362))

(assert (= (and b!3398362 res!1375060) b!3398363))

(declare-fun b_lambda!96855 () Bool)

(assert (=> (not b_lambda!96855) (not b!3398362)))

(assert (=> b!3398362 m!3769609))

(declare-fun m!3769663 () Bool)

(assert (=> b!3398363 m!3769663))

(assert (=> b!3398134 d!966264))

(declare-fun lt!1155453 () Bool)

(declare-fun d!966266 () Bool)

(declare-fun isEmpty!21241 (List!37098) Bool)

(assert (=> d!966266 (= lt!1155453 (isEmpty!21241 (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))))))

(declare-fun isEmpty!21242 (Conc!11172) Bool)

(assert (=> d!966266 (= lt!1155453 (isEmpty!21242 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))))))

(assert (=> d!966266 (= (isEmpty!21233 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)))) lt!1155453)))

(declare-fun bs!556022 () Bool)

(assert (= bs!556022 d!966266))

(declare-fun m!3769665 () Bool)

(assert (=> bs!556022 m!3769665))

(assert (=> bs!556022 m!3769665))

(declare-fun m!3769667 () Bool)

(assert (=> bs!556022 m!3769667))

(declare-fun m!3769669 () Bool)

(assert (=> bs!556022 m!3769669))

(assert (=> b!3398136 d!966266))

(declare-fun b!3398394 () Bool)

(declare-fun res!1375070 () Bool)

(declare-fun e!2109589 () Bool)

(assert (=> b!3398394 (=> (not res!1375070) (not e!2109589))))

(declare-fun lt!1155457 () tuple2!36596)

(declare-datatypes ((tuple2!36602 0))(
  ( (tuple2!36603 (_1!21435 List!37098) (_2!21435 List!37096)) )
))
(declare-fun lexList!1420 (LexerInterface!4987 List!37099 List!37096) tuple2!36602)

(assert (=> b!3398394 (= res!1375070 (= (list!13402 (_1!21432 lt!1155457)) (_1!21435 (lexList!1420 thiss!18206 rules!2135 (list!13399 (seqFromList!3849 lt!1155340))))))))

(declare-fun b!3398395 () Bool)

(declare-fun e!2109587 () Bool)

(assert (=> b!3398395 (= e!2109587 (not (isEmpty!21233 (_1!21432 lt!1155457))))))

(declare-fun b!3398396 () Bool)

(declare-fun e!2109588 () Bool)

(assert (=> b!3398396 (= e!2109588 e!2109587)))

(declare-fun res!1375072 () Bool)

(declare-fun size!27990 (BalanceConc!21956) Int)

(assert (=> b!3398396 (= res!1375072 (< (size!27990 (_2!21432 lt!1155457)) (size!27990 (seqFromList!3849 lt!1155340))))))

(assert (=> b!3398396 (=> (not res!1375072) (not e!2109587))))

(declare-fun d!966268 () Bool)

(assert (=> d!966268 e!2109589))

(declare-fun res!1375071 () Bool)

(assert (=> d!966268 (=> (not res!1375071) (not e!2109589))))

(assert (=> d!966268 (= res!1375071 e!2109588)))

(declare-fun c!579242 () Bool)

(declare-fun size!27991 (BalanceConc!21958) Int)

(assert (=> d!966268 (= c!579242 (> (size!27991 (_1!21432 lt!1155457)) 0))))

(declare-fun lexTailRecV2!1028 (LexerInterface!4987 List!37099 BalanceConc!21956 BalanceConc!21956 BalanceConc!21956 BalanceConc!21958) tuple2!36596)

(assert (=> d!966268 (= lt!1155457 (lexTailRecV2!1028 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340) (BalanceConc!21957 Empty!11171) (seqFromList!3849 lt!1155340) (BalanceConc!21959 Empty!11172)))))

(assert (=> d!966268 (= (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)) lt!1155457)))

(declare-fun b!3398397 () Bool)

(assert (=> b!3398397 (= e!2109588 (= (_2!21432 lt!1155457) (seqFromList!3849 lt!1155340)))))

(declare-fun b!3398398 () Bool)

(assert (=> b!3398398 (= e!2109589 (= (list!13399 (_2!21432 lt!1155457)) (_2!21435 (lexList!1420 thiss!18206 rules!2135 (list!13399 (seqFromList!3849 lt!1155340))))))))

(assert (= (and d!966268 c!579242) b!3398396))

(assert (= (and d!966268 (not c!579242)) b!3398397))

(assert (= (and b!3398396 res!1375072) b!3398395))

(assert (= (and d!966268 res!1375071) b!3398394))

(assert (= (and b!3398394 res!1375070) b!3398398))

(declare-fun m!3769681 () Bool)

(assert (=> d!966268 m!3769681))

(assert (=> d!966268 m!3769287))

(assert (=> d!966268 m!3769287))

(declare-fun m!3769683 () Bool)

(assert (=> d!966268 m!3769683))

(declare-fun m!3769685 () Bool)

(assert (=> b!3398396 m!3769685))

(assert (=> b!3398396 m!3769287))

(declare-fun m!3769687 () Bool)

(assert (=> b!3398396 m!3769687))

(declare-fun m!3769689 () Bool)

(assert (=> b!3398395 m!3769689))

(declare-fun m!3769691 () Bool)

(assert (=> b!3398398 m!3769691))

(assert (=> b!3398398 m!3769287))

(declare-fun m!3769693 () Bool)

(assert (=> b!3398398 m!3769693))

(assert (=> b!3398398 m!3769693))

(declare-fun m!3769695 () Bool)

(assert (=> b!3398398 m!3769695))

(declare-fun m!3769697 () Bool)

(assert (=> b!3398394 m!3769697))

(assert (=> b!3398394 m!3769287))

(assert (=> b!3398394 m!3769693))

(assert (=> b!3398394 m!3769693))

(assert (=> b!3398394 m!3769695))

(assert (=> b!3398136 d!966268))

(declare-fun d!966274 () Bool)

(declare-fun fromListB!1727 (List!37096) BalanceConc!21956)

(assert (=> d!966274 (= (seqFromList!3849 lt!1155340) (fromListB!1727 lt!1155340))))

(declare-fun bs!556025 () Bool)

(assert (= bs!556025 d!966274))

(declare-fun m!3769715 () Bool)

(assert (=> bs!556025 m!3769715))

(assert (=> b!3398136 d!966274))

(declare-fun d!966280 () Bool)

(declare-fun c!579251 () Bool)

(assert (=> d!966280 (= c!579251 ((_ is Cons!36974) tokens!494))))

(declare-fun e!2109601 () List!37096)

(assert (=> d!966280 (= (printWithSeparatorTokenList!274 thiss!18206 tokens!494 separatorToken!241) e!2109601)))

(declare-fun b!3398421 () Bool)

(assert (=> b!3398421 (= e!2109601 (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241)))))

(declare-fun b!3398422 () Bool)

(assert (=> b!3398422 (= e!2109601 Nil!36972)))

(assert (= (and d!966280 c!579251) b!3398421))

(assert (= (and d!966280 (not c!579251)) b!3398422))

(assert (=> b!3398421 m!3769249))

(assert (=> b!3398421 m!3769295))

(assert (=> b!3398421 m!3769257))

(declare-fun m!3769755 () Bool)

(assert (=> b!3398421 m!3769755))

(assert (=> b!3398421 m!3769293))

(assert (=> b!3398421 m!3769245))

(assert (=> b!3398421 m!3769257))

(assert (=> b!3398421 m!3769245))

(assert (=> b!3398421 m!3769755))

(assert (=> b!3398421 m!3769249))

(declare-fun m!3769757 () Bool)

(assert (=> b!3398421 m!3769757))

(assert (=> b!3398421 m!3769293))

(assert (=> b!3398421 m!3769295))

(assert (=> b!3398125 d!966280))

(declare-fun b!3398425 () Bool)

(declare-fun e!2109604 () List!37096)

(assert (=> b!3398425 (= e!2109604 (Cons!36972 (h!42392 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (++!9061 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) lt!1155328)))))

(declare-fun e!2109603 () Bool)

(declare-fun b!3398427 () Bool)

(declare-fun lt!1155463 () List!37096)

(assert (=> b!3398427 (= e!2109603 (or (not (= lt!1155328 Nil!36972)) (= lt!1155463 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun d!966296 () Bool)

(assert (=> d!966296 e!2109603))

(declare-fun res!1375079 () Bool)

(assert (=> d!966296 (=> (not res!1375079) (not e!2109603))))

(assert (=> d!966296 (= res!1375079 (= (content!5111 lt!1155463) ((_ map or) (content!5111 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (content!5111 lt!1155328))))))

(assert (=> d!966296 (= lt!1155463 e!2109604)))

(declare-fun c!579252 () Bool)

(assert (=> d!966296 (= c!579252 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(assert (=> d!966296 (= (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328) lt!1155463)))

(declare-fun b!3398426 () Bool)

(declare-fun res!1375080 () Bool)

(assert (=> b!3398426 (=> (not res!1375080) (not e!2109603))))

(assert (=> b!3398426 (= res!1375080 (= (size!27989 lt!1155463) (+ (size!27989 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (size!27989 lt!1155328))))))

(declare-fun b!3398424 () Bool)

(assert (=> b!3398424 (= e!2109604 lt!1155328)))

(assert (= (and d!966296 c!579252) b!3398424))

(assert (= (and d!966296 (not c!579252)) b!3398425))

(assert (= (and d!966296 res!1375079) b!3398426))

(assert (= (and b!3398426 res!1375080) b!3398427))

(declare-fun m!3769767 () Bool)

(assert (=> b!3398425 m!3769767))

(declare-fun m!3769769 () Bool)

(assert (=> d!966296 m!3769769))

(assert (=> d!966296 m!3769251))

(declare-fun m!3769771 () Bool)

(assert (=> d!966296 m!3769771))

(declare-fun m!3769773 () Bool)

(assert (=> d!966296 m!3769773))

(declare-fun m!3769775 () Bool)

(assert (=> b!3398426 m!3769775))

(assert (=> b!3398426 m!3769251))

(declare-fun m!3769777 () Bool)

(assert (=> b!3398426 m!3769777))

(declare-fun m!3769779 () Bool)

(assert (=> b!3398426 m!3769779))

(assert (=> b!3398125 d!966296))

(declare-fun d!966300 () Bool)

(declare-fun lt!1155464 () BalanceConc!21956)

(assert (=> d!966300 (= (list!13399 lt!1155464) (originalCharacters!6112 separatorToken!241))))

(assert (=> d!966300 (= lt!1155464 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))

(assert (=> d!966300 (= (charsOf!3412 separatorToken!241) lt!1155464)))

(declare-fun b_lambda!96861 () Bool)

(assert (=> (not b_lambda!96861) (not d!966300)))

(declare-fun tb!182011 () Bool)

(declare-fun t!265554 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265554) tb!182011))

(declare-fun b!3398433 () Bool)

(declare-fun e!2109608 () Bool)

(declare-fun tp!1060679 () Bool)

(assert (=> b!3398433 (= e!2109608 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))) tp!1060679))))

(declare-fun result!225620 () Bool)

(assert (=> tb!182011 (= result!225620 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))) e!2109608))))

(assert (= tb!182011 b!3398433))

(declare-fun m!3769787 () Bool)

(assert (=> b!3398433 m!3769787))

(declare-fun m!3769789 () Bool)

(assert (=> tb!182011 m!3769789))

(assert (=> d!966300 t!265554))

(declare-fun b_and!237037 () Bool)

(assert (= b_and!237019 (and (=> t!265554 result!225620) b_and!237037)))

(declare-fun t!265556 () Bool)

(declare-fun tb!182013 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265556) tb!182013))

(declare-fun result!225624 () Bool)

(assert (= result!225624 result!225620))

(assert (=> d!966300 t!265556))

(declare-fun b_and!237039 () Bool)

(assert (= b_and!237021 (and (=> t!265556 result!225624) b_and!237039)))

(declare-fun tb!182015 () Bool)

(declare-fun t!265558 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265558) tb!182015))

(declare-fun result!225626 () Bool)

(assert (= result!225626 result!225620))

(assert (=> d!966300 t!265558))

(declare-fun b_and!237041 () Bool)

(assert (= b_and!237023 (and (=> t!265558 result!225626) b_and!237041)))

(declare-fun m!3769791 () Bool)

(assert (=> d!966300 m!3769791))

(declare-fun m!3769793 () Bool)

(assert (=> d!966300 m!3769793))

(assert (=> b!3398125 d!966300))

(declare-fun d!966302 () Bool)

(declare-fun c!579255 () Bool)

(assert (=> d!966302 (= c!579255 ((_ is Cons!36974) (t!265515 (t!265515 tokens!494))))))

(declare-fun e!2109611 () List!37096)

(assert (=> d!966302 (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241) e!2109611)))

(declare-fun b!3398444 () Bool)

(assert (=> b!3398444 (= e!2109611 (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241)))))

(declare-fun b!3398445 () Bool)

(assert (=> b!3398445 (= e!2109611 Nil!36972)))

(assert (= (and d!966302 c!579255) b!3398444))

(assert (= (and d!966302 (not c!579255)) b!3398445))

(declare-fun m!3769795 () Bool)

(assert (=> b!3398444 m!3769795))

(declare-fun m!3769797 () Bool)

(assert (=> b!3398444 m!3769797))

(assert (=> b!3398444 m!3769257))

(declare-fun m!3769799 () Bool)

(assert (=> b!3398444 m!3769799))

(declare-fun m!3769801 () Bool)

(assert (=> b!3398444 m!3769801))

(assert (=> b!3398444 m!3769245))

(assert (=> b!3398444 m!3769257))

(assert (=> b!3398444 m!3769245))

(assert (=> b!3398444 m!3769799))

(assert (=> b!3398444 m!3769795))

(declare-fun m!3769803 () Bool)

(assert (=> b!3398444 m!3769803))

(assert (=> b!3398444 m!3769801))

(assert (=> b!3398444 m!3769797))

(assert (=> b!3398125 d!966302))

(declare-fun e!2109614 () List!37096)

(declare-fun b!3398451 () Bool)

(assert (=> b!3398451 (= e!2109614 (Cons!36972 (h!42392 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) (++!9061 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241))))))

(declare-fun e!2109613 () Bool)

(declare-fun b!3398453 () Bool)

(declare-fun lt!1155465 () List!37096)

(assert (=> b!3398453 (= e!2109613 (or (not (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241) Nil!36972)) (= lt!1155465 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328))))))

(declare-fun d!966304 () Bool)

(assert (=> d!966304 e!2109613))

(declare-fun res!1375082 () Bool)

(assert (=> d!966304 (=> (not res!1375082) (not e!2109613))))

(assert (=> d!966304 (= res!1375082 (= (content!5111 lt!1155465) ((_ map or) (content!5111 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) (content!5111 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(assert (=> d!966304 (= lt!1155465 e!2109614)))

(declare-fun c!579256 () Bool)

(assert (=> d!966304 (= c!579256 ((_ is Nil!36972) (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)))))

(assert (=> d!966304 (= (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)) lt!1155465)))

(declare-fun b!3398452 () Bool)

(declare-fun res!1375083 () Bool)

(assert (=> b!3398452 (=> (not res!1375083) (not e!2109613))))

(assert (=> b!3398452 (= res!1375083 (= (size!27989 lt!1155465) (+ (size!27989 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) (size!27989 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(declare-fun b!3398450 () Bool)

(assert (=> b!3398450 (= e!2109614 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241))))

(assert (= (and d!966304 c!579256) b!3398450))

(assert (= (and d!966304 (not c!579256)) b!3398451))

(assert (= (and d!966304 res!1375082) b!3398452))

(assert (= (and b!3398452 res!1375083) b!3398453))

(assert (=> b!3398451 m!3769255))

(declare-fun m!3769805 () Bool)

(assert (=> b!3398451 m!3769805))

(declare-fun m!3769807 () Bool)

(assert (=> d!966304 m!3769807))

(assert (=> d!966304 m!3769259))

(declare-fun m!3769809 () Bool)

(assert (=> d!966304 m!3769809))

(assert (=> d!966304 m!3769255))

(declare-fun m!3769811 () Bool)

(assert (=> d!966304 m!3769811))

(declare-fun m!3769813 () Bool)

(assert (=> b!3398452 m!3769813))

(assert (=> b!3398452 m!3769259))

(declare-fun m!3769815 () Bool)

(assert (=> b!3398452 m!3769815))

(assert (=> b!3398452 m!3769255))

(declare-fun m!3769817 () Bool)

(assert (=> b!3398452 m!3769817))

(assert (=> b!3398125 d!966304))

(declare-fun d!966306 () Bool)

(declare-fun c!579257 () Bool)

(assert (=> d!966306 (= c!579257 ((_ is Cons!36974) (t!265515 tokens!494)))))

(declare-fun e!2109618 () List!37096)

(assert (=> d!966306 (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241) e!2109618)))

(declare-fun b!3398462 () Bool)

(assert (=> b!3398462 (= e!2109618 (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))

(declare-fun b!3398463 () Bool)

(assert (=> b!3398463 (= e!2109618 Nil!36972)))

(assert (= (and d!966306 c!579257) b!3398462))

(assert (= (and d!966306 (not c!579257)) b!3398463))

(assert (=> b!3398462 m!3769255))

(assert (=> b!3398462 m!3769251))

(assert (=> b!3398462 m!3769257))

(declare-fun m!3769819 () Bool)

(assert (=> b!3398462 m!3769819))

(assert (=> b!3398462 m!3769243))

(assert (=> b!3398462 m!3769245))

(assert (=> b!3398462 m!3769257))

(assert (=> b!3398462 m!3769245))

(assert (=> b!3398462 m!3769819))

(assert (=> b!3398462 m!3769255))

(declare-fun m!3769821 () Bool)

(assert (=> b!3398462 m!3769821))

(assert (=> b!3398462 m!3769243))

(assert (=> b!3398462 m!3769251))

(assert (=> b!3398125 d!966306))

(declare-fun d!966308 () Bool)

(assert (=> d!966308 (= (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13403 (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(declare-fun bs!556028 () Bool)

(assert (= bs!556028 d!966308))

(declare-fun m!3769823 () Bool)

(assert (=> bs!556028 m!3769823))

(assert (=> b!3398125 d!966308))

(declare-fun b!3398469 () Bool)

(declare-fun e!2109626 () List!37096)

(assert (=> b!3398469 (= e!2109626 (Cons!36972 (h!42392 lt!1155328) (++!9061 (t!265513 lt!1155328) lt!1155335)))))

(declare-fun e!2109625 () Bool)

(declare-fun lt!1155466 () List!37096)

(declare-fun b!3398471 () Bool)

(assert (=> b!3398471 (= e!2109625 (or (not (= lt!1155335 Nil!36972)) (= lt!1155466 lt!1155328)))))

(declare-fun d!966310 () Bool)

(assert (=> d!966310 e!2109625))

(declare-fun res!1375084 () Bool)

(assert (=> d!966310 (=> (not res!1375084) (not e!2109625))))

(assert (=> d!966310 (= res!1375084 (= (content!5111 lt!1155466) ((_ map or) (content!5111 lt!1155328) (content!5111 lt!1155335))))))

(assert (=> d!966310 (= lt!1155466 e!2109626)))

(declare-fun c!579258 () Bool)

(assert (=> d!966310 (= c!579258 ((_ is Nil!36972) lt!1155328))))

(assert (=> d!966310 (= (++!9061 lt!1155328 lt!1155335) lt!1155466)))

(declare-fun b!3398470 () Bool)

(declare-fun res!1375085 () Bool)

(assert (=> b!3398470 (=> (not res!1375085) (not e!2109625))))

(assert (=> b!3398470 (= res!1375085 (= (size!27989 lt!1155466) (+ (size!27989 lt!1155328) (size!27989 lt!1155335))))))

(declare-fun b!3398468 () Bool)

(assert (=> b!3398468 (= e!2109626 lt!1155335)))

(assert (= (and d!966310 c!579258) b!3398468))

(assert (= (and d!966310 (not c!579258)) b!3398469))

(assert (= (and d!966310 res!1375084) b!3398470))

(assert (= (and b!3398470 res!1375085) b!3398471))

(declare-fun m!3769825 () Bool)

(assert (=> b!3398469 m!3769825))

(declare-fun m!3769827 () Bool)

(assert (=> d!966310 m!3769827))

(assert (=> d!966310 m!3769773))

(declare-fun m!3769829 () Bool)

(assert (=> d!966310 m!3769829))

(declare-fun m!3769831 () Bool)

(assert (=> b!3398470 m!3769831))

(assert (=> b!3398470 m!3769779))

(declare-fun m!3769833 () Bool)

(assert (=> b!3398470 m!3769833))

(assert (=> b!3398125 d!966310))

(declare-fun d!966312 () Bool)

(assert (=> d!966312 (= (list!13399 (charsOf!3412 separatorToken!241)) (list!13403 (c!579207 (charsOf!3412 separatorToken!241))))))

(declare-fun bs!556029 () Bool)

(assert (= bs!556029 d!966312))

(declare-fun m!3769835 () Bool)

(assert (=> bs!556029 m!3769835))

(assert (=> b!3398125 d!966312))

(declare-fun d!966314 () Bool)

(declare-fun lt!1155467 () BalanceConc!21956)

(assert (=> d!966314 (= (list!13399 lt!1155467) (originalCharacters!6112 (h!42394 (t!265515 tokens!494))))))

(assert (=> d!966314 (= lt!1155467 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))))

(assert (=> d!966314 (= (charsOf!3412 (h!42394 (t!265515 tokens!494))) lt!1155467)))

(declare-fun b_lambda!96863 () Bool)

(assert (=> (not b_lambda!96863) (not d!966314)))

(declare-fun t!265560 () Bool)

(declare-fun tb!182017 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265560) tb!182017))

(declare-fun b!3398472 () Bool)

(declare-fun e!2109627 () Bool)

(declare-fun tp!1060708 () Bool)

(assert (=> b!3398472 (= e!2109627 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))) tp!1060708))))

(declare-fun result!225630 () Bool)

(assert (=> tb!182017 (= result!225630 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))) e!2109627))))

(assert (= tb!182017 b!3398472))

(declare-fun m!3769837 () Bool)

(assert (=> b!3398472 m!3769837))

(declare-fun m!3769839 () Bool)

(assert (=> tb!182017 m!3769839))

(assert (=> d!966314 t!265560))

(declare-fun b_and!237043 () Bool)

(assert (= b_and!237037 (and (=> t!265560 result!225630) b_and!237043)))

(declare-fun t!265562 () Bool)

(declare-fun tb!182019 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265562) tb!182019))

(declare-fun result!225632 () Bool)

(assert (= result!225632 result!225630))

(assert (=> d!966314 t!265562))

(declare-fun b_and!237045 () Bool)

(assert (= b_and!237039 (and (=> t!265562 result!225632) b_and!237045)))

(declare-fun tb!182021 () Bool)

(declare-fun t!265564 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265564) tb!182021))

(declare-fun result!225634 () Bool)

(assert (= result!225634 result!225630))

(assert (=> d!966314 t!265564))

(declare-fun b_and!237049 () Bool)

(assert (= b_and!237041 (and (=> t!265564 result!225634) b_and!237049)))

(declare-fun m!3769841 () Bool)

(assert (=> d!966314 m!3769841))

(declare-fun m!3769843 () Bool)

(assert (=> d!966314 m!3769843))

(assert (=> b!3398125 d!966314))

(declare-fun b!3398477 () Bool)

(declare-fun e!2109633 () List!37096)

(assert (=> b!3398477 (= e!2109633 (Cons!36972 (h!42392 (++!9061 lt!1155340 lt!1155328)) (++!9061 (t!265513 (++!9061 lt!1155340 lt!1155328)) lt!1155335)))))

(declare-fun lt!1155468 () List!37096)

(declare-fun e!2109632 () Bool)

(declare-fun b!3398479 () Bool)

(assert (=> b!3398479 (= e!2109632 (or (not (= lt!1155335 Nil!36972)) (= lt!1155468 (++!9061 lt!1155340 lt!1155328))))))

(declare-fun d!966316 () Bool)

(assert (=> d!966316 e!2109632))

(declare-fun res!1375086 () Bool)

(assert (=> d!966316 (=> (not res!1375086) (not e!2109632))))

(assert (=> d!966316 (= res!1375086 (= (content!5111 lt!1155468) ((_ map or) (content!5111 (++!9061 lt!1155340 lt!1155328)) (content!5111 lt!1155335))))))

(assert (=> d!966316 (= lt!1155468 e!2109633)))

(declare-fun c!579259 () Bool)

(assert (=> d!966316 (= c!579259 ((_ is Nil!36972) (++!9061 lt!1155340 lt!1155328)))))

(assert (=> d!966316 (= (++!9061 (++!9061 lt!1155340 lt!1155328) lt!1155335) lt!1155468)))

(declare-fun b!3398478 () Bool)

(declare-fun res!1375087 () Bool)

(assert (=> b!3398478 (=> (not res!1375087) (not e!2109632))))

(assert (=> b!3398478 (= res!1375087 (= (size!27989 lt!1155468) (+ (size!27989 (++!9061 lt!1155340 lt!1155328)) (size!27989 lt!1155335))))))

(declare-fun b!3398476 () Bool)

(assert (=> b!3398476 (= e!2109633 lt!1155335)))

(assert (= (and d!966316 c!579259) b!3398476))

(assert (= (and d!966316 (not c!579259)) b!3398477))

(assert (= (and d!966316 res!1375086) b!3398478))

(assert (= (and b!3398478 res!1375087) b!3398479))

(declare-fun m!3769845 () Bool)

(assert (=> b!3398477 m!3769845))

(declare-fun m!3769847 () Bool)

(assert (=> d!966316 m!3769847))

(assert (=> d!966316 m!3769237))

(declare-fun m!3769853 () Bool)

(assert (=> d!966316 m!3769853))

(assert (=> d!966316 m!3769829))

(declare-fun m!3769855 () Bool)

(assert (=> b!3398478 m!3769855))

(assert (=> b!3398478 m!3769237))

(declare-fun m!3769857 () Bool)

(assert (=> b!3398478 m!3769857))

(assert (=> b!3398478 m!3769833))

(assert (=> b!3398132 d!966316))

(declare-fun b!3398485 () Bool)

(declare-fun e!2109637 () List!37096)

(assert (=> b!3398485 (= e!2109637 (Cons!36972 (h!42392 lt!1155340) (++!9061 (t!265513 lt!1155340) lt!1155328)))))

(declare-fun lt!1155469 () List!37096)

(declare-fun e!2109636 () Bool)

(declare-fun b!3398487 () Bool)

(assert (=> b!3398487 (= e!2109636 (or (not (= lt!1155328 Nil!36972)) (= lt!1155469 lt!1155340)))))

(declare-fun d!966318 () Bool)

(assert (=> d!966318 e!2109636))

(declare-fun res!1375088 () Bool)

(assert (=> d!966318 (=> (not res!1375088) (not e!2109636))))

(assert (=> d!966318 (= res!1375088 (= (content!5111 lt!1155469) ((_ map or) (content!5111 lt!1155340) (content!5111 lt!1155328))))))

(assert (=> d!966318 (= lt!1155469 e!2109637)))

(declare-fun c!579260 () Bool)

(assert (=> d!966318 (= c!579260 ((_ is Nil!36972) lt!1155340))))

(assert (=> d!966318 (= (++!9061 lt!1155340 lt!1155328) lt!1155469)))

(declare-fun b!3398486 () Bool)

(declare-fun res!1375089 () Bool)

(assert (=> b!3398486 (=> (not res!1375089) (not e!2109636))))

(assert (=> b!3398486 (= res!1375089 (= (size!27989 lt!1155469) (+ (size!27989 lt!1155340) (size!27989 lt!1155328))))))

(declare-fun b!3398484 () Bool)

(assert (=> b!3398484 (= e!2109637 lt!1155328)))

(assert (= (and d!966318 c!579260) b!3398484))

(assert (= (and d!966318 (not c!579260)) b!3398485))

(assert (= (and d!966318 res!1375088) b!3398486))

(assert (= (and b!3398486 res!1375089) b!3398487))

(declare-fun m!3769859 () Bool)

(assert (=> b!3398485 m!3769859))

(declare-fun m!3769861 () Bool)

(assert (=> d!966318 m!3769861))

(assert (=> d!966318 m!3769385))

(assert (=> d!966318 m!3769773))

(declare-fun m!3769863 () Bool)

(assert (=> b!3398486 m!3769863))

(assert (=> b!3398486 m!3769391))

(assert (=> b!3398486 m!3769779))

(assert (=> b!3398132 d!966318))

(declare-fun d!966320 () Bool)

(assert (=> d!966320 (= (inv!50068 (tag!5982 (h!42395 rules!2135))) (= (mod (str.len (value!174302 (tag!5982 (h!42395 rules!2135)))) 2) 0))))

(assert (=> b!3398142 d!966320))

(declare-fun d!966322 () Bool)

(declare-fun res!1375092 () Bool)

(declare-fun e!2109659 () Bool)

(assert (=> d!966322 (=> (not res!1375092) (not e!2109659))))

(declare-fun semiInverseModEq!2255 (Int Int) Bool)

(assert (=> d!966322 (= res!1375092 (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toValue!7598 (transformation!5398 (h!42395 rules!2135)))))))

(assert (=> d!966322 (= (inv!50072 (transformation!5398 (h!42395 rules!2135))) e!2109659)))

(declare-fun b!3398505 () Bool)

(declare-fun equivClasses!2154 (Int Int) Bool)

(assert (=> b!3398505 (= e!2109659 (equivClasses!2154 (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toValue!7598 (transformation!5398 (h!42395 rules!2135)))))))

(assert (= (and d!966322 res!1375092) b!3398505))

(declare-fun m!3769873 () Bool)

(assert (=> d!966322 m!3769873))

(declare-fun m!3769875 () Bool)

(assert (=> b!3398505 m!3769875))

(assert (=> b!3398142 d!966322))

(declare-fun b!3398521 () Bool)

(declare-fun e!2109668 () Bool)

(declare-fun inv!17 (TokenValue!5628) Bool)

(assert (=> b!3398521 (= e!2109668 (inv!17 (value!174303 separatorToken!241)))))

(declare-fun d!966324 () Bool)

(declare-fun c!579266 () Bool)

(assert (=> d!966324 (= c!579266 ((_ is IntegerValue!16884) (value!174303 separatorToken!241)))))

(declare-fun e!2109669 () Bool)

(assert (=> d!966324 (= (inv!21 (value!174303 separatorToken!241)) e!2109669)))

(declare-fun b!3398522 () Bool)

(declare-fun e!2109670 () Bool)

(declare-fun inv!15 (TokenValue!5628) Bool)

(assert (=> b!3398522 (= e!2109670 (inv!15 (value!174303 separatorToken!241)))))

(declare-fun b!3398523 () Bool)

(assert (=> b!3398523 (= e!2109669 e!2109668)))

(declare-fun c!579265 () Bool)

(assert (=> b!3398523 (= c!579265 ((_ is IntegerValue!16885) (value!174303 separatorToken!241)))))

(declare-fun b!3398524 () Bool)

(declare-fun res!1375095 () Bool)

(assert (=> b!3398524 (=> res!1375095 e!2109670)))

(assert (=> b!3398524 (= res!1375095 (not ((_ is IntegerValue!16886) (value!174303 separatorToken!241))))))

(assert (=> b!3398524 (= e!2109668 e!2109670)))

(declare-fun b!3398525 () Bool)

(declare-fun inv!16 (TokenValue!5628) Bool)

(assert (=> b!3398525 (= e!2109669 (inv!16 (value!174303 separatorToken!241)))))

(assert (= (and d!966324 c!579266) b!3398525))

(assert (= (and d!966324 (not c!579266)) b!3398523))

(assert (= (and b!3398523 c!579265) b!3398521))

(assert (= (and b!3398523 (not c!579265)) b!3398524))

(assert (= (and b!3398524 (not res!1375095)) b!3398522))

(declare-fun m!3769877 () Bool)

(assert (=> b!3398521 m!3769877))

(declare-fun m!3769879 () Bool)

(assert (=> b!3398522 m!3769879))

(declare-fun m!3769881 () Bool)

(assert (=> b!3398525 m!3769881))

(assert (=> b!3398121 d!966324))

(declare-fun d!966330 () Bool)

(declare-fun lt!1155474 () Bool)

(declare-fun e!2109675 () Bool)

(assert (=> d!966330 (= lt!1155474 e!2109675)))

(declare-fun res!1375104 () Bool)

(assert (=> d!966330 (=> (not res!1375104) (not e!2109675))))

(assert (=> d!966330 (= res!1375104 (= (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))))) (list!13402 (singletonSeq!2494 separatorToken!241))))))

(declare-fun e!2109676 () Bool)

(assert (=> d!966330 (= lt!1155474 e!2109676)))

(declare-fun res!1375103 () Bool)

(assert (=> d!966330 (=> (not res!1375103) (not e!2109676))))

(declare-fun lt!1155475 () tuple2!36596)

(assert (=> d!966330 (= res!1375103 (= (size!27991 (_1!21432 lt!1155475)) 1))))

(assert (=> d!966330 (= lt!1155475 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))))))

(assert (=> d!966330 (not (isEmpty!21232 rules!2135))))

(assert (=> d!966330 (= (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 separatorToken!241) lt!1155474)))

(declare-fun b!3398532 () Bool)

(declare-fun res!1375102 () Bool)

(assert (=> b!3398532 (=> (not res!1375102) (not e!2109676))))

(declare-fun apply!8626 (BalanceConc!21958 Int) Token!10162)

(assert (=> b!3398532 (= res!1375102 (= (apply!8626 (_1!21432 lt!1155475) 0) separatorToken!241))))

(declare-fun b!3398533 () Bool)

(declare-fun isEmpty!21243 (BalanceConc!21956) Bool)

(assert (=> b!3398533 (= e!2109676 (isEmpty!21243 (_2!21432 lt!1155475)))))

(declare-fun b!3398534 () Bool)

(assert (=> b!3398534 (= e!2109675 (isEmpty!21243 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))))))))

(assert (= (and d!966330 res!1375103) b!3398532))

(assert (= (and b!3398532 res!1375102) b!3398533))

(assert (= (and d!966330 res!1375104) b!3398534))

(declare-fun m!3769883 () Bool)

(assert (=> d!966330 m!3769883))

(declare-fun m!3769885 () Bool)

(assert (=> d!966330 m!3769885))

(declare-fun m!3769887 () Bool)

(assert (=> d!966330 m!3769887))

(assert (=> d!966330 m!3769885))

(assert (=> d!966330 m!3769263))

(assert (=> d!966330 m!3769887))

(declare-fun m!3769889 () Bool)

(assert (=> d!966330 m!3769889))

(declare-fun m!3769891 () Bool)

(assert (=> d!966330 m!3769891))

(assert (=> d!966330 m!3769885))

(declare-fun m!3769893 () Bool)

(assert (=> d!966330 m!3769893))

(declare-fun m!3769895 () Bool)

(assert (=> b!3398532 m!3769895))

(declare-fun m!3769897 () Bool)

(assert (=> b!3398533 m!3769897))

(assert (=> b!3398534 m!3769885))

(assert (=> b!3398534 m!3769885))

(assert (=> b!3398534 m!3769887))

(assert (=> b!3398534 m!3769887))

(assert (=> b!3398534 m!3769889))

(declare-fun m!3769899 () Bool)

(assert (=> b!3398534 m!3769899))

(assert (=> b!3398123 d!966330))

(declare-fun d!966332 () Bool)

(assert (=> d!966332 (= (list!13399 lt!1155330) (list!13403 (c!579207 lt!1155330)))))

(declare-fun bs!556032 () Bool)

(assert (= bs!556032 d!966332))

(declare-fun m!3769901 () Bool)

(assert (=> bs!556032 m!3769901))

(assert (=> b!3398122 d!966332))

(declare-fun d!966334 () Bool)

(declare-fun lt!1155478 () BalanceConc!21956)

(assert (=> d!966334 (= (list!13399 lt!1155478) (printList!1535 thiss!18206 (list!13402 lt!1155326)))))

(assert (=> d!966334 (= lt!1155478 (printTailRec!1482 thiss!18206 lt!1155326 0 (BalanceConc!21957 Empty!11171)))))

(assert (=> d!966334 (= (print!2052 thiss!18206 lt!1155326) lt!1155478)))

(declare-fun bs!556033 () Bool)

(assert (= bs!556033 d!966334))

(declare-fun m!3769903 () Bool)

(assert (=> bs!556033 m!3769903))

(declare-fun m!3769905 () Bool)

(assert (=> bs!556033 m!3769905))

(assert (=> bs!556033 m!3769905))

(declare-fun m!3769907 () Bool)

(assert (=> bs!556033 m!3769907))

(assert (=> bs!556033 m!3769267))

(assert (=> b!3398122 d!966334))

(declare-fun d!966336 () Bool)

(declare-fun lt!1155495 () BalanceConc!21956)

(declare-fun printListTailRec!660 (LexerInterface!4987 List!37098 List!37096) List!37096)

(declare-fun dropList!1177 (BalanceConc!21958 Int) List!37098)

(assert (=> d!966336 (= (list!13399 lt!1155495) (printListTailRec!660 thiss!18206 (dropList!1177 lt!1155326 0) (list!13399 (BalanceConc!21957 Empty!11171))))))

(declare-fun e!2109682 () BalanceConc!21956)

(assert (=> d!966336 (= lt!1155495 e!2109682)))

(declare-fun c!579269 () Bool)

(assert (=> d!966336 (= c!579269 (>= 0 (size!27991 lt!1155326)))))

(declare-fun e!2109681 () Bool)

(assert (=> d!966336 e!2109681))

(declare-fun res!1375107 () Bool)

(assert (=> d!966336 (=> (not res!1375107) (not e!2109681))))

(assert (=> d!966336 (= res!1375107 (>= 0 0))))

(assert (=> d!966336 (= (printTailRec!1482 thiss!18206 lt!1155326 0 (BalanceConc!21957 Empty!11171)) lt!1155495)))

(declare-fun b!3398541 () Bool)

(assert (=> b!3398541 (= e!2109681 (<= 0 (size!27991 lt!1155326)))))

(declare-fun b!3398542 () Bool)

(assert (=> b!3398542 (= e!2109682 (BalanceConc!21957 Empty!11171))))

(declare-fun b!3398543 () Bool)

(declare-fun ++!9063 (BalanceConc!21956 BalanceConc!21956) BalanceConc!21956)

(assert (=> b!3398543 (= e!2109682 (printTailRec!1482 thiss!18206 lt!1155326 (+ 0 1) (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (apply!8626 lt!1155326 0)))))))

(declare-fun lt!1155498 () List!37098)

(assert (=> b!3398543 (= lt!1155498 (list!13402 lt!1155326))))

(declare-fun lt!1155494 () Unit!52137)

(declare-fun lemmaDropApply!1135 (List!37098 Int) Unit!52137)

(assert (=> b!3398543 (= lt!1155494 (lemmaDropApply!1135 lt!1155498 0))))

(declare-fun head!7253 (List!37098) Token!10162)

(declare-fun drop!1977 (List!37098 Int) List!37098)

(declare-fun apply!8627 (List!37098 Int) Token!10162)

(assert (=> b!3398543 (= (head!7253 (drop!1977 lt!1155498 0)) (apply!8627 lt!1155498 0))))

(declare-fun lt!1155493 () Unit!52137)

(assert (=> b!3398543 (= lt!1155493 lt!1155494)))

(declare-fun lt!1155496 () List!37098)

(assert (=> b!3398543 (= lt!1155496 (list!13402 lt!1155326))))

(declare-fun lt!1155499 () Unit!52137)

(declare-fun lemmaDropTail!1019 (List!37098 Int) Unit!52137)

(assert (=> b!3398543 (= lt!1155499 (lemmaDropTail!1019 lt!1155496 0))))

(declare-fun tail!5375 (List!37098) List!37098)

(assert (=> b!3398543 (= (tail!5375 (drop!1977 lt!1155496 0)) (drop!1977 lt!1155496 (+ 0 1)))))

(declare-fun lt!1155497 () Unit!52137)

(assert (=> b!3398543 (= lt!1155497 lt!1155499)))

(assert (= (and d!966336 res!1375107) b!3398541))

(assert (= (and d!966336 c!579269) b!3398542))

(assert (= (and d!966336 (not c!579269)) b!3398543))

(declare-fun m!3769909 () Bool)

(assert (=> d!966336 m!3769909))

(declare-fun m!3769911 () Bool)

(assert (=> d!966336 m!3769911))

(declare-fun m!3769913 () Bool)

(assert (=> d!966336 m!3769913))

(assert (=> d!966336 m!3769909))

(assert (=> d!966336 m!3769911))

(declare-fun m!3769915 () Bool)

(assert (=> d!966336 m!3769915))

(declare-fun m!3769917 () Bool)

(assert (=> d!966336 m!3769917))

(assert (=> b!3398541 m!3769917))

(declare-fun m!3769919 () Bool)

(assert (=> b!3398543 m!3769919))

(declare-fun m!3769921 () Bool)

(assert (=> b!3398543 m!3769921))

(declare-fun m!3769923 () Bool)

(assert (=> b!3398543 m!3769923))

(declare-fun m!3769925 () Bool)

(assert (=> b!3398543 m!3769925))

(declare-fun m!3769927 () Bool)

(assert (=> b!3398543 m!3769927))

(declare-fun m!3769929 () Bool)

(assert (=> b!3398543 m!3769929))

(declare-fun m!3769931 () Bool)

(assert (=> b!3398543 m!3769931))

(declare-fun m!3769933 () Bool)

(assert (=> b!3398543 m!3769933))

(declare-fun m!3769935 () Bool)

(assert (=> b!3398543 m!3769935))

(assert (=> b!3398543 m!3769919))

(declare-fun m!3769937 () Bool)

(assert (=> b!3398543 m!3769937))

(declare-fun m!3769939 () Bool)

(assert (=> b!3398543 m!3769939))

(assert (=> b!3398543 m!3769905))

(declare-fun m!3769941 () Bool)

(assert (=> b!3398543 m!3769941))

(assert (=> b!3398543 m!3769931))

(assert (=> b!3398543 m!3769937))

(assert (=> b!3398543 m!3769925))

(assert (=> b!3398543 m!3769929))

(assert (=> b!3398122 d!966336))

(declare-fun d!966338 () Bool)

(declare-fun e!2109685 () Bool)

(assert (=> d!966338 e!2109685))

(declare-fun res!1375110 () Bool)

(assert (=> d!966338 (=> (not res!1375110) (not e!2109685))))

(declare-fun lt!1155502 () BalanceConc!21958)

(assert (=> d!966338 (= res!1375110 (= (list!13402 lt!1155502) (Cons!36974 (h!42394 tokens!494) Nil!36974)))))

(declare-fun singleton!1092 (Token!10162) BalanceConc!21958)

(assert (=> d!966338 (= lt!1155502 (singleton!1092 (h!42394 tokens!494)))))

(assert (=> d!966338 (= (singletonSeq!2494 (h!42394 tokens!494)) lt!1155502)))

(declare-fun b!3398546 () Bool)

(declare-fun isBalanced!3373 (Conc!11172) Bool)

(assert (=> b!3398546 (= e!2109685 (isBalanced!3373 (c!579208 lt!1155502)))))

(assert (= (and d!966338 res!1375110) b!3398546))

(declare-fun m!3769943 () Bool)

(assert (=> d!966338 m!3769943))

(declare-fun m!3769945 () Bool)

(assert (=> d!966338 m!3769945))

(declare-fun m!3769947 () Bool)

(assert (=> b!3398546 m!3769947))

(assert (=> b!3398122 d!966338))

(declare-fun d!966340 () Bool)

(declare-fun c!579272 () Bool)

(assert (=> d!966340 (= c!579272 ((_ is Cons!36974) (Cons!36974 (h!42394 tokens!494) Nil!36974)))))

(declare-fun e!2109688 () List!37096)

(assert (=> d!966340 (= (printList!1535 thiss!18206 (Cons!36974 (h!42394 tokens!494) Nil!36974)) e!2109688)))

(declare-fun b!3398551 () Bool)

(assert (=> b!3398551 (= e!2109688 (++!9061 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))) (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))))

(declare-fun b!3398552 () Bool)

(assert (=> b!3398552 (= e!2109688 Nil!36972)))

(assert (= (and d!966340 c!579272) b!3398551))

(assert (= (and d!966340 (not c!579272)) b!3398552))

(declare-fun m!3769949 () Bool)

(assert (=> b!3398551 m!3769949))

(assert (=> b!3398551 m!3769949))

(declare-fun m!3769951 () Bool)

(assert (=> b!3398551 m!3769951))

(declare-fun m!3769953 () Bool)

(assert (=> b!3398551 m!3769953))

(assert (=> b!3398551 m!3769951))

(assert (=> b!3398551 m!3769953))

(declare-fun m!3769955 () Bool)

(assert (=> b!3398551 m!3769955))

(assert (=> b!3398122 d!966340))

(declare-fun d!966342 () Bool)

(declare-fun res!1375113 () Bool)

(declare-fun e!2109691 () Bool)

(assert (=> d!966342 (=> (not res!1375113) (not e!2109691))))

(declare-fun rulesValid!2015 (LexerInterface!4987 List!37099) Bool)

(assert (=> d!966342 (= res!1375113 (rulesValid!2015 thiss!18206 rules!2135))))

(assert (=> d!966342 (= (rulesInvariant!4384 thiss!18206 rules!2135) e!2109691)))

(declare-fun b!3398555 () Bool)

(declare-datatypes ((List!37101 0))(
  ( (Nil!36977) (Cons!36977 (h!42397 String!41474) (t!265592 List!37101)) )
))
(declare-fun noDuplicateTag!2011 (LexerInterface!4987 List!37099 List!37101) Bool)

(assert (=> b!3398555 (= e!2109691 (noDuplicateTag!2011 thiss!18206 rules!2135 Nil!36977))))

(assert (= (and d!966342 res!1375113) b!3398555))

(declare-fun m!3769957 () Bool)

(assert (=> d!966342 m!3769957))

(declare-fun m!3769959 () Bool)

(assert (=> b!3398555 m!3769959))

(assert (=> b!3398133 d!966342))

(declare-fun d!966344 () Bool)

(assert (=> d!966344 (= (inv!50068 (tag!5982 (rule!7958 separatorToken!241))) (= (mod (str.len (value!174302 (tag!5982 (rule!7958 separatorToken!241)))) 2) 0))))

(assert (=> b!3398140 d!966344))

(declare-fun d!966346 () Bool)

(declare-fun res!1375114 () Bool)

(declare-fun e!2109692 () Bool)

(assert (=> d!966346 (=> (not res!1375114) (not e!2109692))))

(assert (=> d!966346 (= res!1375114 (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))))))

(assert (=> d!966346 (= (inv!50072 (transformation!5398 (rule!7958 separatorToken!241))) e!2109692)))

(declare-fun b!3398556 () Bool)

(assert (=> b!3398556 (= e!2109692 (equivClasses!2154 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))))))

(assert (= (and d!966346 res!1375114) b!3398556))

(declare-fun m!3769961 () Bool)

(assert (=> d!966346 m!3769961))

(declare-fun m!3769963 () Bool)

(assert (=> b!3398556 m!3769963))

(assert (=> b!3398140 d!966346))

(declare-fun b!3398557 () Bool)

(declare-fun e!2109693 () Bool)

(assert (=> b!3398557 (= e!2109693 (inv!17 (value!174303 (h!42394 tokens!494))))))

(declare-fun d!966348 () Bool)

(declare-fun c!579274 () Bool)

(assert (=> d!966348 (= c!579274 ((_ is IntegerValue!16884) (value!174303 (h!42394 tokens!494))))))

(declare-fun e!2109694 () Bool)

(assert (=> d!966348 (= (inv!21 (value!174303 (h!42394 tokens!494))) e!2109694)))

(declare-fun b!3398558 () Bool)

(declare-fun e!2109695 () Bool)

(assert (=> b!3398558 (= e!2109695 (inv!15 (value!174303 (h!42394 tokens!494))))))

(declare-fun b!3398559 () Bool)

(assert (=> b!3398559 (= e!2109694 e!2109693)))

(declare-fun c!579273 () Bool)

(assert (=> b!3398559 (= c!579273 ((_ is IntegerValue!16885) (value!174303 (h!42394 tokens!494))))))

(declare-fun b!3398560 () Bool)

(declare-fun res!1375115 () Bool)

(assert (=> b!3398560 (=> res!1375115 e!2109695)))

(assert (=> b!3398560 (= res!1375115 (not ((_ is IntegerValue!16886) (value!174303 (h!42394 tokens!494)))))))

(assert (=> b!3398560 (= e!2109693 e!2109695)))

(declare-fun b!3398561 () Bool)

(assert (=> b!3398561 (= e!2109694 (inv!16 (value!174303 (h!42394 tokens!494))))))

(assert (= (and d!966348 c!579274) b!3398561))

(assert (= (and d!966348 (not c!579274)) b!3398559))

(assert (= (and b!3398559 c!579273) b!3398557))

(assert (= (and b!3398559 (not c!579273)) b!3398560))

(assert (= (and b!3398560 (not res!1375115)) b!3398558))

(declare-fun m!3769965 () Bool)

(assert (=> b!3398557 m!3769965))

(declare-fun m!3769967 () Bool)

(assert (=> b!3398558 m!3769967))

(declare-fun m!3769969 () Bool)

(assert (=> b!3398561 m!3769969))

(assert (=> b!3398118 d!966348))

(declare-fun d!966350 () Bool)

(declare-fun res!1375116 () Bool)

(declare-fun e!2109696 () Bool)

(assert (=> d!966350 (=> (not res!1375116) (not e!2109696))))

(assert (=> d!966350 (= res!1375116 (not (isEmpty!21239 (originalCharacters!6112 separatorToken!241))))))

(assert (=> d!966350 (= (inv!50071 separatorToken!241) e!2109696)))

(declare-fun b!3398562 () Bool)

(declare-fun res!1375117 () Bool)

(assert (=> b!3398562 (=> (not res!1375117) (not e!2109696))))

(assert (=> b!3398562 (= res!1375117 (= (originalCharacters!6112 separatorToken!241) (list!13399 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))))

(declare-fun b!3398563 () Bool)

(assert (=> b!3398563 (= e!2109696 (= (size!27985 separatorToken!241) (size!27989 (originalCharacters!6112 separatorToken!241))))))

(assert (= (and d!966350 res!1375116) b!3398562))

(assert (= (and b!3398562 res!1375117) b!3398563))

(declare-fun b_lambda!96881 () Bool)

(assert (=> (not b_lambda!96881) (not b!3398562)))

(assert (=> b!3398562 t!265554))

(declare-fun b_and!237057 () Bool)

(assert (= b_and!237043 (and (=> t!265554 result!225620) b_and!237057)))

(assert (=> b!3398562 t!265556))

(declare-fun b_and!237059 () Bool)

(assert (= b_and!237045 (and (=> t!265556 result!225624) b_and!237059)))

(assert (=> b!3398562 t!265558))

(declare-fun b_and!237061 () Bool)

(assert (= b_and!237049 (and (=> t!265558 result!225626) b_and!237061)))

(declare-fun m!3769971 () Bool)

(assert (=> d!966350 m!3769971))

(assert (=> b!3398562 m!3769793))

(assert (=> b!3398562 m!3769793))

(declare-fun m!3769973 () Bool)

(assert (=> b!3398562 m!3769973))

(declare-fun m!3769975 () Bool)

(assert (=> b!3398563 m!3769975))

(assert (=> start!317190 d!966350))

(declare-fun d!966352 () Bool)

(assert (=> d!966352 (= (inv!50068 (tag!5982 (rule!7958 (h!42394 tokens!494)))) (= (mod (str.len (value!174302 (tag!5982 (rule!7958 (h!42394 tokens!494))))) 2) 0))))

(assert (=> b!3398129 d!966352))

(declare-fun d!966354 () Bool)

(declare-fun res!1375118 () Bool)

(declare-fun e!2109697 () Bool)

(assert (=> d!966354 (=> (not res!1375118) (not e!2109697))))

(assert (=> d!966354 (= res!1375118 (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494))))))))

(assert (=> d!966354 (= (inv!50072 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) e!2109697)))

(declare-fun b!3398564 () Bool)

(assert (=> b!3398564 (= e!2109697 (equivClasses!2154 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494))))))))

(assert (= (and d!966354 res!1375118) b!3398564))

(declare-fun m!3769977 () Bool)

(assert (=> d!966354 m!3769977))

(declare-fun m!3769979 () Bool)

(assert (=> b!3398564 m!3769979))

(assert (=> b!3398129 d!966354))

(declare-fun d!966356 () Bool)

(declare-fun res!1375123 () Bool)

(declare-fun e!2109702 () Bool)

(assert (=> d!966356 (=> res!1375123 e!2109702)))

(assert (=> d!966356 (= res!1375123 (not ((_ is Cons!36975) rules!2135)))))

(assert (=> d!966356 (= (sepAndNonSepRulesDisjointChars!1592 rules!2135 rules!2135) e!2109702)))

(declare-fun b!3398569 () Bool)

(declare-fun e!2109703 () Bool)

(assert (=> b!3398569 (= e!2109702 e!2109703)))

(declare-fun res!1375124 () Bool)

(assert (=> b!3398569 (=> (not res!1375124) (not e!2109703))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!691 (Rule!10596 List!37099) Bool)

(assert (=> b!3398569 (= res!1375124 (ruleDisjointCharsFromAllFromOtherType!691 (h!42395 rules!2135) rules!2135))))

(declare-fun b!3398570 () Bool)

(assert (=> b!3398570 (= e!2109703 (sepAndNonSepRulesDisjointChars!1592 rules!2135 (t!265516 rules!2135)))))

(assert (= (and d!966356 (not res!1375123)) b!3398569))

(assert (= (and b!3398569 res!1375124) b!3398570))

(declare-fun m!3769981 () Bool)

(assert (=> b!3398569 m!3769981))

(declare-fun m!3769983 () Bool)

(assert (=> b!3398570 m!3769983))

(assert (=> b!3398130 d!966356))

(declare-fun d!966358 () Bool)

(declare-fun lt!1155503 () Bool)

(declare-fun e!2109704 () Bool)

(assert (=> d!966358 (= lt!1155503 e!2109704)))

(declare-fun res!1375127 () Bool)

(assert (=> d!966358 (=> (not res!1375127) (not e!2109704))))

(assert (=> d!966358 (= res!1375127 (= (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))))) (list!13402 (singletonSeq!2494 (h!42394 tokens!494)))))))

(declare-fun e!2109705 () Bool)

(assert (=> d!966358 (= lt!1155503 e!2109705)))

(declare-fun res!1375126 () Bool)

(assert (=> d!966358 (=> (not res!1375126) (not e!2109705))))

(declare-fun lt!1155504 () tuple2!36596)

(assert (=> d!966358 (= res!1375126 (= (size!27991 (_1!21432 lt!1155504)) 1))))

(assert (=> d!966358 (= lt!1155504 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))))))

(assert (=> d!966358 (not (isEmpty!21232 rules!2135))))

(assert (=> d!966358 (= (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 (h!42394 tokens!494)) lt!1155503)))

(declare-fun b!3398571 () Bool)

(declare-fun res!1375125 () Bool)

(assert (=> b!3398571 (=> (not res!1375125) (not e!2109705))))

(assert (=> b!3398571 (= res!1375125 (= (apply!8626 (_1!21432 lt!1155504) 0) (h!42394 tokens!494)))))

(declare-fun b!3398572 () Bool)

(assert (=> b!3398572 (= e!2109705 (isEmpty!21243 (_2!21432 lt!1155504)))))

(declare-fun b!3398573 () Bool)

(assert (=> b!3398573 (= e!2109704 (isEmpty!21243 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))))))))

(assert (= (and d!966358 res!1375126) b!3398571))

(assert (= (and b!3398571 res!1375125) b!3398572))

(assert (= (and d!966358 res!1375127) b!3398573))

(declare-fun m!3769985 () Bool)

(assert (=> d!966358 m!3769985))

(assert (=> d!966358 m!3769269))

(declare-fun m!3769987 () Bool)

(assert (=> d!966358 m!3769987))

(assert (=> d!966358 m!3769269))

(assert (=> d!966358 m!3769263))

(assert (=> d!966358 m!3769987))

(declare-fun m!3769989 () Bool)

(assert (=> d!966358 m!3769989))

(declare-fun m!3769991 () Bool)

(assert (=> d!966358 m!3769991))

(assert (=> d!966358 m!3769269))

(declare-fun m!3769993 () Bool)

(assert (=> d!966358 m!3769993))

(declare-fun m!3769995 () Bool)

(assert (=> b!3398571 m!3769995))

(declare-fun m!3769997 () Bool)

(assert (=> b!3398572 m!3769997))

(assert (=> b!3398573 m!3769269))

(assert (=> b!3398573 m!3769269))

(assert (=> b!3398573 m!3769987))

(assert (=> b!3398573 m!3769987))

(assert (=> b!3398573 m!3769989))

(declare-fun m!3769999 () Bool)

(assert (=> b!3398573 m!3769999))

(assert (=> b!3398141 d!966358))

(declare-fun b!3398587 () Bool)

(declare-fun b_free!88997 () Bool)

(declare-fun b_next!89701 () Bool)

(assert (=> b!3398587 (= b_free!88997 (not b_next!89701))))

(declare-fun tp!1060750 () Bool)

(declare-fun b_and!237063 () Bool)

(assert (=> b!3398587 (= tp!1060750 b_and!237063)))

(declare-fun b_free!88999 () Bool)

(declare-fun b_next!89703 () Bool)

(assert (=> b!3398587 (= b_free!88999 (not b_next!89703))))

(declare-fun t!265581 () Bool)

(declare-fun tb!182035 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265581) tb!182035))

(declare-fun result!225654 () Bool)

(assert (= result!225654 result!225620))

(assert (=> d!966300 t!265581))

(declare-fun t!265583 () Bool)

(declare-fun tb!182037 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265583) tb!182037))

(declare-fun result!225656 () Bool)

(assert (= result!225656 result!225606))

(assert (=> d!966262 t!265583))

(declare-fun t!265585 () Bool)

(declare-fun tb!182039 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265585) tb!182039))

(declare-fun result!225658 () Bool)

(assert (= result!225658 result!225630))

(assert (=> d!966314 t!265585))

(assert (=> b!3398562 t!265581))

(assert (=> b!3398211 t!265583))

(declare-fun tp!1060749 () Bool)

(declare-fun b_and!237065 () Bool)

(assert (=> b!3398587 (= tp!1060749 (and (=> t!265581 result!225654) (=> t!265583 result!225656) (=> t!265585 result!225658) b_and!237065))))

(declare-fun e!2109722 () Bool)

(assert (=> b!3398587 (= e!2109722 (and tp!1060750 tp!1060749))))

(declare-fun b!3398584 () Bool)

(declare-fun e!2109723 () Bool)

(declare-fun tp!1060748 () Bool)

(declare-fun e!2109721 () Bool)

(assert (=> b!3398584 (= e!2109721 (and (inv!50071 (h!42394 (t!265515 tokens!494))) e!2109723 tp!1060748))))

(declare-fun e!2109718 () Bool)

(declare-fun b!3398585 () Bool)

(declare-fun tp!1060747 () Bool)

(assert (=> b!3398585 (= e!2109723 (and (inv!21 (value!174303 (h!42394 (t!265515 tokens!494)))) e!2109718 tp!1060747))))

(assert (=> b!3398127 (= tp!1060662 e!2109721)))

(declare-fun b!3398586 () Bool)

(declare-fun tp!1060751 () Bool)

(assert (=> b!3398586 (= e!2109718 (and tp!1060751 (inv!50068 (tag!5982 (rule!7958 (h!42394 (t!265515 tokens!494))))) (inv!50072 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) e!2109722))))

(assert (= b!3398586 b!3398587))

(assert (= b!3398585 b!3398586))

(assert (= b!3398584 b!3398585))

(assert (= (and b!3398127 ((_ is Cons!36974) (t!265515 tokens!494))) b!3398584))

(declare-fun m!3770001 () Bool)

(assert (=> b!3398584 m!3770001))

(declare-fun m!3770003 () Bool)

(assert (=> b!3398585 m!3770003))

(declare-fun m!3770005 () Bool)

(assert (=> b!3398586 m!3770005))

(declare-fun m!3770007 () Bool)

(assert (=> b!3398586 m!3770007))

(declare-fun b!3398599 () Bool)

(declare-fun e!2109726 () Bool)

(declare-fun tp!1060765 () Bool)

(declare-fun tp!1060762 () Bool)

(assert (=> b!3398599 (= e!2109726 (and tp!1060765 tp!1060762))))

(declare-fun b!3398598 () Bool)

(declare-fun tp_is_empty!17501 () Bool)

(assert (=> b!3398598 (= e!2109726 tp_is_empty!17501)))

(assert (=> b!3398142 (= tp!1060659 e!2109726)))

(declare-fun b!3398600 () Bool)

(declare-fun tp!1060766 () Bool)

(assert (=> b!3398600 (= e!2109726 tp!1060766)))

(declare-fun b!3398601 () Bool)

(declare-fun tp!1060764 () Bool)

(declare-fun tp!1060763 () Bool)

(assert (=> b!3398601 (= e!2109726 (and tp!1060764 tp!1060763))))

(assert (= (and b!3398142 ((_ is ElementMatch!10157) (regex!5398 (h!42395 rules!2135)))) b!3398598))

(assert (= (and b!3398142 ((_ is Concat!15785) (regex!5398 (h!42395 rules!2135)))) b!3398599))

(assert (= (and b!3398142 ((_ is Star!10157) (regex!5398 (h!42395 rules!2135)))) b!3398600))

(assert (= (and b!3398142 ((_ is Union!10157) (regex!5398 (h!42395 rules!2135)))) b!3398601))

(declare-fun b!3398606 () Bool)

(declare-fun e!2109729 () Bool)

(declare-fun tp!1060769 () Bool)

(assert (=> b!3398606 (= e!2109729 (and tp_is_empty!17501 tp!1060769))))

(assert (=> b!3398121 (= tp!1060658 e!2109729)))

(assert (= (and b!3398121 ((_ is Cons!36972) (originalCharacters!6112 separatorToken!241))) b!3398606))

(declare-fun b!3398617 () Bool)

(declare-fun b_free!89001 () Bool)

(declare-fun b_next!89705 () Bool)

(assert (=> b!3398617 (= b_free!89001 (not b_next!89705))))

(declare-fun tp!1060779 () Bool)

(declare-fun b_and!237067 () Bool)

(assert (=> b!3398617 (= tp!1060779 b_and!237067)))

(declare-fun b_free!89003 () Bool)

(declare-fun b_next!89707 () Bool)

(assert (=> b!3398617 (= b_free!89003 (not b_next!89707))))

(declare-fun t!265587 () Bool)

(declare-fun tb!182041 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265587) tb!182041))

(declare-fun result!225666 () Bool)

(assert (= result!225666 result!225620))

(assert (=> d!966300 t!265587))

(declare-fun t!265589 () Bool)

(declare-fun tb!182043 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265589) tb!182043))

(declare-fun result!225668 () Bool)

(assert (= result!225668 result!225606))

(assert (=> d!966262 t!265589))

(declare-fun t!265591 () Bool)

(declare-fun tb!182045 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265591) tb!182045))

(declare-fun result!225670 () Bool)

(assert (= result!225670 result!225630))

(assert (=> d!966314 t!265591))

(assert (=> b!3398562 t!265587))

(assert (=> b!3398211 t!265589))

(declare-fun tp!1060778 () Bool)

(declare-fun b_and!237069 () Bool)

(assert (=> b!3398617 (= tp!1060778 (and (=> t!265587 result!225666) (=> t!265591 result!225670) (=> t!265589 result!225668) b_and!237069))))

(declare-fun e!2109740 () Bool)

(assert (=> b!3398617 (= e!2109740 (and tp!1060779 tp!1060778))))

(declare-fun tp!1060781 () Bool)

(declare-fun e!2109738 () Bool)

(declare-fun b!3398616 () Bool)

(assert (=> b!3398616 (= e!2109738 (and tp!1060781 (inv!50068 (tag!5982 (h!42395 (t!265516 rules!2135)))) (inv!50072 (transformation!5398 (h!42395 (t!265516 rules!2135)))) e!2109740))))

(declare-fun b!3398615 () Bool)

(declare-fun e!2109739 () Bool)

(declare-fun tp!1060780 () Bool)

(assert (=> b!3398615 (= e!2109739 (and e!2109738 tp!1060780))))

(assert (=> b!3398139 (= tp!1060663 e!2109739)))

(assert (= b!3398616 b!3398617))

(assert (= b!3398615 b!3398616))

(assert (= (and b!3398139 ((_ is Cons!36975) (t!265516 rules!2135))) b!3398615))

(declare-fun m!3770009 () Bool)

(assert (=> b!3398616 m!3770009))

(declare-fun m!3770011 () Bool)

(assert (=> b!3398616 m!3770011))

(declare-fun b!3398619 () Bool)

(declare-fun e!2109742 () Bool)

(declare-fun tp!1060785 () Bool)

(declare-fun tp!1060782 () Bool)

(assert (=> b!3398619 (= e!2109742 (and tp!1060785 tp!1060782))))

(declare-fun b!3398618 () Bool)

(assert (=> b!3398618 (= e!2109742 tp_is_empty!17501)))

(assert (=> b!3398140 (= tp!1060665 e!2109742)))

(declare-fun b!3398620 () Bool)

(declare-fun tp!1060786 () Bool)

(assert (=> b!3398620 (= e!2109742 tp!1060786)))

(declare-fun b!3398621 () Bool)

(declare-fun tp!1060784 () Bool)

(declare-fun tp!1060783 () Bool)

(assert (=> b!3398621 (= e!2109742 (and tp!1060784 tp!1060783))))

(assert (= (and b!3398140 ((_ is ElementMatch!10157) (regex!5398 (rule!7958 separatorToken!241)))) b!3398618))

(assert (= (and b!3398140 ((_ is Concat!15785) (regex!5398 (rule!7958 separatorToken!241)))) b!3398619))

(assert (= (and b!3398140 ((_ is Star!10157) (regex!5398 (rule!7958 separatorToken!241)))) b!3398620))

(assert (= (and b!3398140 ((_ is Union!10157) (regex!5398 (rule!7958 separatorToken!241)))) b!3398621))

(declare-fun b!3398622 () Bool)

(declare-fun e!2109743 () Bool)

(declare-fun tp!1060787 () Bool)

(assert (=> b!3398622 (= e!2109743 (and tp_is_empty!17501 tp!1060787))))

(assert (=> b!3398118 (= tp!1060670 e!2109743)))

(assert (= (and b!3398118 ((_ is Cons!36972) (originalCharacters!6112 (h!42394 tokens!494)))) b!3398622))

(declare-fun b!3398624 () Bool)

(declare-fun e!2109744 () Bool)

(declare-fun tp!1060791 () Bool)

(declare-fun tp!1060788 () Bool)

(assert (=> b!3398624 (= e!2109744 (and tp!1060791 tp!1060788))))

(declare-fun b!3398623 () Bool)

(assert (=> b!3398623 (= e!2109744 tp_is_empty!17501)))

(assert (=> b!3398129 (= tp!1060664 e!2109744)))

(declare-fun b!3398625 () Bool)

(declare-fun tp!1060792 () Bool)

(assert (=> b!3398625 (= e!2109744 tp!1060792)))

(declare-fun b!3398626 () Bool)

(declare-fun tp!1060790 () Bool)

(declare-fun tp!1060789 () Bool)

(assert (=> b!3398626 (= e!2109744 (and tp!1060790 tp!1060789))))

(assert (= (and b!3398129 ((_ is ElementMatch!10157) (regex!5398 (rule!7958 (h!42394 tokens!494))))) b!3398623))

(assert (= (and b!3398129 ((_ is Concat!15785) (regex!5398 (rule!7958 (h!42394 tokens!494))))) b!3398624))

(assert (= (and b!3398129 ((_ is Star!10157) (regex!5398 (rule!7958 (h!42394 tokens!494))))) b!3398625))

(assert (= (and b!3398129 ((_ is Union!10157) (regex!5398 (rule!7958 (h!42394 tokens!494))))) b!3398626))

(declare-fun b_lambda!96883 () Bool)

(assert (= b_lambda!96851 (or b!3398134 b_lambda!96883)))

(declare-fun bs!556034 () Bool)

(declare-fun d!966360 () Bool)

(assert (= bs!556034 (and d!966360 b!3398134)))

(assert (=> bs!556034 (= (dynLambda!15425 lambda!120899 (h!42394 tokens!494)) (not (isSeparator!5398 (rule!7958 (h!42394 tokens!494)))))))

(assert (=> d!966248 d!966360))

(declare-fun b_lambda!96885 () Bool)

(assert (= b_lambda!96849 (or b!3398134 b_lambda!96885)))

(declare-fun bs!556035 () Bool)

(declare-fun d!966362 () Bool)

(assert (= bs!556035 (and d!966362 b!3398134)))

(assert (=> bs!556035 (= (dynLambda!15425 lambda!120899 (h!42394 (t!265515 tokens!494))) (not (isSeparator!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))))

(assert (=> d!966246 d!966362))

(declare-fun b_lambda!96887 () Bool)

(assert (= b_lambda!96843 (or (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398120 b_free!88983 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398587 b_free!88999 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398131 b_free!88979) b_lambda!96887)))

(declare-fun b_lambda!96889 () Bool)

(assert (= b_lambda!96853 (or (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398120 b_free!88983 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398587 b_free!88999 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (and b!3398131 b_free!88979) b_lambda!96889)))

(declare-fun b_lambda!96891 () Bool)

(assert (= b_lambda!96855 (or b!3398134 b_lambda!96891)))

(assert (=> b!3398362 d!966360))

(declare-fun b_lambda!96893 () Bool)

(assert (= b_lambda!96863 (or (and b!3398587 b_free!88999) (and b!3398120 b_free!88983 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3398131 b_free!88979 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) b_lambda!96893)))

(declare-fun b_lambda!96895 () Bool)

(assert (= b_lambda!96881 (or (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) (and b!3398120 b_free!88983) (and b!3398587 b_free!88999 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) (and b!3398131 b_free!88979 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) b_lambda!96895)))

(declare-fun b_lambda!96897 () Bool)

(assert (= b_lambda!96861 (or (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) (and b!3398120 b_free!88983) (and b!3398587 b_free!88999 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) (and b!3398131 b_free!88979 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))))) b_lambda!96897)))

(check-sat (not b!3398619) (not b_lambda!96887) (not b!3398277) (not b!3398621) (not d!966334) (not b!3398599) (not b!3398276) (not b!3398472) (not b!3398340) (not b!3398556) (not b_next!89701) (not d!966202) (not d!966316) b_and!237059 (not d!966194) b_and!236991 (not b!3398585) (not b!3398353) (not b!3398451) (not d!966196) (not b!3398204) (not b!3398272) (not d!966308) (not b!3398395) (not bm!245798) (not b!3398505) (not b!3398562) (not b!3398601) (not b!3398564) (not b_lambda!96889) (not b!3398211) b_and!237067 (not d!966346) (not b_next!89681) (not d!966296) b_and!237063 tp_is_empty!17501 (not d!966350) b_and!236983 (not b!3398600) (not d!966260) (not b!3398273) (not b!3398271) b_and!236987 (not b!3398616) (not b!3398344) (not b!3398620) (not b!3398205) (not d!966198) b_and!237061 (not b!3398551) (not tb!182017) (not b!3398469) (not tb!181999) (not b_lambda!96885) (not d!966312) (not b_lambda!96893) (not b!3398573) (not b_lambda!96891) (not b!3398396) (not b!3398541) (not b!3398217) (not b!3398534) b_and!237057 (not b!3398622) (not b_next!89689) (not b!3398606) b_and!237065 (not b!3398533) (not b_lambda!96883) (not b!3398584) (not d!966314) (not b!3398478) (not b_next!89685) (not b!3398570) (not d!966304) (not b_next!89703) (not b!3398563) (not b!3398558) (not b!3398571) (not b!3398543) (not b!3398421) (not b_next!89691) (not d!966318) (not d!966354) (not d!966262) (not d!966332) (not b!3398470) (not d!966358) (not b_lambda!96897) (not b!3398532) (not b!3398521) (not b!3398394) (not b!3398477) (not b_next!89683) (not b!3398625) (not b!3398557) (not b!3398212) (not d!966246) (not b!3398274) (not b!3398444) (not b!3398426) (not b!3398425) (not d!966256) (not b_next!89687) (not d!966250) (not b_lambda!96895) (not b!3398555) (not b!3398624) b_and!237069 (not b!3398561) (not d!966330) (not d!966322) (not d!966274) (not b!3398270) (not b!3398546) (not d!966266) (not b!3398572) (not d!966300) (not b!3398485) (not b_next!89707) (not b!3398363) (not b!3398433) (not tb!182011) (not b_next!89705) (not d!966342) (not b!3398398) (not d!966268) (not b!3398626) (not b!3398615) (not b!3398569) (not b!3398341) (not b!3398452) (not d!966310) (not b!3398525) (not b!3398522) (not d!966338) (not d!966228) (not b!3398586) (not b!3398462) (not d!966248) (not b!3398278) (not b!3398486) (not d!966200) (not d!966336))
(check-sat b_and!236991 b_and!236983 b_and!236987 b_and!237061 (not b_next!89685) (not b_next!89703) (not b_next!89691) (not b_next!89683) (not b_next!89707) (not b_next!89705) (not b_next!89701) b_and!237059 (not b_next!89681) b_and!237063 b_and!237067 b_and!237065 b_and!237057 (not b_next!89689) (not b_next!89687) b_and!237069)
(get-model)

(declare-fun b!3398794 () Bool)

(declare-fun e!2109841 () List!37096)

(assert (=> b!3398794 (= e!2109841 (Cons!36972 (h!42392 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (++!9061 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241)))))))

(declare-fun lt!1155583 () List!37096)

(declare-fun e!2109840 () Bool)

(declare-fun b!3398796 () Bool)

(assert (=> b!3398796 (= e!2109840 (or (not (= (list!13399 (charsOf!3412 separatorToken!241)) Nil!36972)) (= lt!1155583 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun d!966484 () Bool)

(assert (=> d!966484 e!2109840))

(declare-fun res!1375201 () Bool)

(assert (=> d!966484 (=> (not res!1375201) (not e!2109840))))

(assert (=> d!966484 (= res!1375201 (= (content!5111 lt!1155583) ((_ map or) (content!5111 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (content!5111 (list!13399 (charsOf!3412 separatorToken!241))))))))

(assert (=> d!966484 (= lt!1155583 e!2109841)))

(declare-fun c!579323 () Bool)

(assert (=> d!966484 (= c!579323 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(assert (=> d!966484 (= (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241))) lt!1155583)))

(declare-fun b!3398795 () Bool)

(declare-fun res!1375202 () Bool)

(assert (=> b!3398795 (=> (not res!1375202) (not e!2109840))))

(assert (=> b!3398795 (= res!1375202 (= (size!27989 lt!1155583) (+ (size!27989 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) (size!27989 (list!13399 (charsOf!3412 separatorToken!241))))))))

(declare-fun b!3398793 () Bool)

(assert (=> b!3398793 (= e!2109841 (list!13399 (charsOf!3412 separatorToken!241)))))

(assert (= (and d!966484 c!579323) b!3398793))

(assert (= (and d!966484 (not c!579323)) b!3398794))

(assert (= (and d!966484 res!1375201) b!3398795))

(assert (= (and b!3398795 res!1375202) b!3398796))

(assert (=> b!3398794 m!3769257))

(declare-fun m!3770385 () Bool)

(assert (=> b!3398794 m!3770385))

(declare-fun m!3770387 () Bool)

(assert (=> d!966484 m!3770387))

(assert (=> d!966484 m!3769251))

(assert (=> d!966484 m!3769771))

(assert (=> d!966484 m!3769257))

(declare-fun m!3770389 () Bool)

(assert (=> d!966484 m!3770389))

(declare-fun m!3770391 () Bool)

(assert (=> b!3398795 m!3770391))

(assert (=> b!3398795 m!3769251))

(assert (=> b!3398795 m!3769777))

(assert (=> b!3398795 m!3769257))

(declare-fun m!3770393 () Bool)

(assert (=> b!3398795 m!3770393))

(assert (=> b!3398462 d!966484))

(assert (=> b!3398462 d!966302))

(assert (=> b!3398462 d!966300))

(assert (=> b!3398462 d!966308))

(declare-fun e!2109849 () List!37096)

(declare-fun b!3398806 () Bool)

(assert (=> b!3398806 (= e!2109849 (Cons!36972 (h!42392 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241)))) (++!9061 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241)))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241))))))

(declare-fun e!2109848 () Bool)

(declare-fun b!3398808 () Bool)

(declare-fun lt!1155584 () List!37096)

(assert (=> b!3398808 (= e!2109848 (or (not (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241) Nil!36972)) (= lt!1155584 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241))))))))

(declare-fun d!966486 () Bool)

(assert (=> d!966486 e!2109848))

(declare-fun res!1375207 () Bool)

(assert (=> d!966486 (=> (not res!1375207) (not e!2109848))))

(assert (=> d!966486 (= res!1375207 (= (content!5111 lt!1155584) ((_ map or) (content!5111 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241)))) (content!5111 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(assert (=> d!966486 (= lt!1155584 e!2109849)))

(declare-fun c!579326 () Bool)

(assert (=> d!966486 (= c!579326 ((_ is Nil!36972) (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241)))))))

(assert (=> d!966486 (= (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)) lt!1155584)))

(declare-fun b!3398807 () Bool)

(declare-fun res!1375208 () Bool)

(assert (=> b!3398807 (=> (not res!1375208) (not e!2109848))))

(assert (=> b!3398807 (= res!1375208 (= (size!27989 lt!1155584) (+ (size!27989 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241)))) (size!27989 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(declare-fun b!3398805 () Bool)

(assert (=> b!3398805 (= e!2109849 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241))))

(assert (= (and d!966486 c!579326) b!3398805))

(assert (= (and d!966486 (not c!579326)) b!3398806))

(assert (= (and d!966486 res!1375207) b!3398807))

(assert (= (and b!3398807 res!1375208) b!3398808))

(assert (=> b!3398806 m!3769255))

(declare-fun m!3770395 () Bool)

(assert (=> b!3398806 m!3770395))

(declare-fun m!3770397 () Bool)

(assert (=> d!966486 m!3770397))

(assert (=> d!966486 m!3769819))

(declare-fun m!3770399 () Bool)

(assert (=> d!966486 m!3770399))

(assert (=> d!966486 m!3769255))

(assert (=> d!966486 m!3769811))

(declare-fun m!3770401 () Bool)

(assert (=> b!3398807 m!3770401))

(assert (=> b!3398807 m!3769819))

(declare-fun m!3770403 () Bool)

(assert (=> b!3398807 m!3770403))

(assert (=> b!3398807 m!3769255))

(assert (=> b!3398807 m!3769817))

(assert (=> b!3398462 d!966486))

(assert (=> b!3398462 d!966312))

(assert (=> b!3398462 d!966314))

(declare-fun d!966488 () Bool)

(declare-fun c!579331 () Bool)

(assert (=> d!966488 (= c!579331 ((_ is Nil!36972) lt!1155463))))

(declare-fun e!2109857 () (InoxSet C!20500))

(assert (=> d!966488 (= (content!5111 lt!1155463) e!2109857)))

(declare-fun b!3398821 () Bool)

(assert (=> b!3398821 (= e!2109857 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3398822 () Bool)

(assert (=> b!3398822 (= e!2109857 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155463) true) (content!5111 (t!265513 lt!1155463))))))

(assert (= (and d!966488 c!579331) b!3398821))

(assert (= (and d!966488 (not c!579331)) b!3398822))

(declare-fun m!3770419 () Bool)

(assert (=> b!3398822 m!3770419))

(declare-fun m!3770421 () Bool)

(assert (=> b!3398822 m!3770421))

(assert (=> d!966296 d!966488))

(declare-fun d!966494 () Bool)

(declare-fun c!579332 () Bool)

(assert (=> d!966494 (= c!579332 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(declare-fun e!2109858 () (InoxSet C!20500))

(assert (=> d!966494 (= (content!5111 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) e!2109858)))

(declare-fun b!3398823 () Bool)

(assert (=> b!3398823 (= e!2109858 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3398824 () Bool)

(assert (=> b!3398824 (= e!2109858 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) true) (content!5111 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))))

(assert (= (and d!966494 c!579332) b!3398823))

(assert (= (and d!966494 (not c!579332)) b!3398824))

(declare-fun m!3770423 () Bool)

(assert (=> b!3398824 m!3770423))

(declare-fun m!3770425 () Bool)

(assert (=> b!3398824 m!3770425))

(assert (=> d!966296 d!966494))

(declare-fun d!966496 () Bool)

(declare-fun c!579333 () Bool)

(assert (=> d!966496 (= c!579333 ((_ is Nil!36972) lt!1155328))))

(declare-fun e!2109859 () (InoxSet C!20500))

(assert (=> d!966496 (= (content!5111 lt!1155328) e!2109859)))

(declare-fun b!3398825 () Bool)

(assert (=> b!3398825 (= e!2109859 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3398826 () Bool)

(assert (=> b!3398826 (= e!2109859 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155328) true) (content!5111 (t!265513 lt!1155328))))))

(assert (= (and d!966496 c!579333) b!3398825))

(assert (= (and d!966496 (not c!579333)) b!3398826))

(declare-fun m!3770427 () Bool)

(assert (=> b!3398826 m!3770427))

(declare-fun m!3770429 () Bool)

(assert (=> b!3398826 m!3770429))

(assert (=> d!966296 d!966496))

(declare-fun d!966498 () Bool)

(assert (=> d!966498 (dynLambda!15425 lambda!120899 (h!42394 tokens!494))))

(assert (=> d!966498 true))

(declare-fun _$7!1247 () Unit!52137)

(assert (=> d!966498 (= (choose!19708 tokens!494 lambda!120899 (h!42394 tokens!494)) _$7!1247)))

(declare-fun b_lambda!96913 () Bool)

(assert (=> (not b_lambda!96913) (not d!966498)))

(declare-fun bs!556063 () Bool)

(assert (= bs!556063 d!966498))

(assert (=> bs!556063 m!3769609))

(assert (=> d!966248 d!966498))

(assert (=> d!966248 d!966264))

(declare-fun b!3398828 () Bool)

(declare-fun e!2109861 () List!37096)

(assert (=> b!3398828 (= e!2109861 (Cons!36972 (h!42392 (t!265513 lt!1155328)) (++!9061 (t!265513 (t!265513 lt!1155328)) lt!1155335)))))

(declare-fun b!3398830 () Bool)

(declare-fun e!2109860 () Bool)

(declare-fun lt!1155586 () List!37096)

(assert (=> b!3398830 (= e!2109860 (or (not (= lt!1155335 Nil!36972)) (= lt!1155586 (t!265513 lt!1155328))))))

(declare-fun d!966500 () Bool)

(assert (=> d!966500 e!2109860))

(declare-fun res!1375213 () Bool)

(assert (=> d!966500 (=> (not res!1375213) (not e!2109860))))

(assert (=> d!966500 (= res!1375213 (= (content!5111 lt!1155586) ((_ map or) (content!5111 (t!265513 lt!1155328)) (content!5111 lt!1155335))))))

(assert (=> d!966500 (= lt!1155586 e!2109861)))

(declare-fun c!579334 () Bool)

(assert (=> d!966500 (= c!579334 ((_ is Nil!36972) (t!265513 lt!1155328)))))

(assert (=> d!966500 (= (++!9061 (t!265513 lt!1155328) lt!1155335) lt!1155586)))

(declare-fun b!3398829 () Bool)

(declare-fun res!1375214 () Bool)

(assert (=> b!3398829 (=> (not res!1375214) (not e!2109860))))

(assert (=> b!3398829 (= res!1375214 (= (size!27989 lt!1155586) (+ (size!27989 (t!265513 lt!1155328)) (size!27989 lt!1155335))))))

(declare-fun b!3398827 () Bool)

(assert (=> b!3398827 (= e!2109861 lt!1155335)))

(assert (= (and d!966500 c!579334) b!3398827))

(assert (= (and d!966500 (not c!579334)) b!3398828))

(assert (= (and d!966500 res!1375213) b!3398829))

(assert (= (and b!3398829 res!1375214) b!3398830))

(declare-fun m!3770431 () Bool)

(assert (=> b!3398828 m!3770431))

(declare-fun m!3770433 () Bool)

(assert (=> d!966500 m!3770433))

(assert (=> d!966500 m!3770429))

(assert (=> d!966500 m!3769829))

(declare-fun m!3770435 () Bool)

(assert (=> b!3398829 m!3770435))

(declare-fun m!3770437 () Bool)

(assert (=> b!3398829 m!3770437))

(assert (=> b!3398829 m!3769833))

(assert (=> b!3398469 d!966500))

(declare-fun d!966502 () Bool)

(assert (=> d!966502 (= (isEmpty!21239 (originalCharacters!6112 (h!42394 tokens!494))) ((_ is Nil!36972) (originalCharacters!6112 (h!42394 tokens!494))))))

(assert (=> d!966198 d!966502))

(declare-fun d!966504 () Bool)

(assert (=> d!966504 (= (head!7253 (drop!1977 lt!1155498 0)) (h!42394 (drop!1977 lt!1155498 0)))))

(assert (=> b!3398543 d!966504))

(declare-fun d!966506 () Bool)

(declare-fun list!13406 (Conc!11172) List!37098)

(assert (=> d!966506 (= (list!13402 lt!1155326) (list!13406 (c!579208 lt!1155326)))))

(declare-fun bs!556064 () Bool)

(assert (= bs!556064 d!966506))

(declare-fun m!3770439 () Bool)

(assert (=> bs!556064 m!3770439))

(assert (=> b!3398543 d!966506))

(declare-fun b!3398864 () Bool)

(declare-fun res!1375244 () Bool)

(declare-fun e!2109873 () Bool)

(assert (=> b!3398864 (=> (not res!1375244) (not e!2109873))))

(declare-fun height!1669 (Conc!11171) Int)

(declare-fun ++!9064 (Conc!11171 Conc!11171) Conc!11171)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3398864 (= res!1375244 (>= (height!1669 (++!9064 (c!579207 (BalanceConc!21957 Empty!11171)) (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0))))) (max!0 (height!1669 (c!579207 (BalanceConc!21957 Empty!11171))) (height!1669 (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0)))))))))

(declare-fun b!3398862 () Bool)

(declare-fun res!1375243 () Bool)

(assert (=> b!3398862 (=> (not res!1375243) (not e!2109873))))

(declare-fun isBalanced!3374 (Conc!11171) Bool)

(assert (=> b!3398862 (= res!1375243 (isBalanced!3374 (++!9064 (c!579207 (BalanceConc!21957 Empty!11171)) (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0))))))))

(declare-fun b!3398865 () Bool)

(declare-fun lt!1155589 () BalanceConc!21956)

(assert (=> b!3398865 (= e!2109873 (= (list!13399 lt!1155589) (++!9061 (list!13399 (BalanceConc!21957 Empty!11171)) (list!13399 (charsOf!3412 (apply!8626 lt!1155326 0))))))))

(declare-fun d!966508 () Bool)

(assert (=> d!966508 e!2109873))

(declare-fun res!1375242 () Bool)

(assert (=> d!966508 (=> (not res!1375242) (not e!2109873))))

(declare-fun appendAssocInst!790 (Conc!11171 Conc!11171) Bool)

(assert (=> d!966508 (= res!1375242 (appendAssocInst!790 (c!579207 (BalanceConc!21957 Empty!11171)) (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0)))))))

(assert (=> d!966508 (= lt!1155589 (BalanceConc!21957 (++!9064 (c!579207 (BalanceConc!21957 Empty!11171)) (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0))))))))

(assert (=> d!966508 (= (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (apply!8626 lt!1155326 0))) lt!1155589)))

(declare-fun b!3398863 () Bool)

(declare-fun res!1375245 () Bool)

(assert (=> b!3398863 (=> (not res!1375245) (not e!2109873))))

(assert (=> b!3398863 (= res!1375245 (<= (height!1669 (++!9064 (c!579207 (BalanceConc!21957 Empty!11171)) (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0))))) (+ (max!0 (height!1669 (c!579207 (BalanceConc!21957 Empty!11171))) (height!1669 (c!579207 (charsOf!3412 (apply!8626 lt!1155326 0))))) 1)))))

(assert (= (and d!966508 res!1375242) b!3398862))

(assert (= (and b!3398862 res!1375243) b!3398863))

(assert (= (and b!3398863 res!1375245) b!3398864))

(assert (= (and b!3398864 res!1375244) b!3398865))

(declare-fun m!3770461 () Bool)

(assert (=> b!3398863 m!3770461))

(declare-fun m!3770463 () Bool)

(assert (=> b!3398863 m!3770463))

(declare-fun m!3770465 () Bool)

(assert (=> b!3398863 m!3770465))

(declare-fun m!3770467 () Bool)

(assert (=> b!3398863 m!3770467))

(declare-fun m!3770469 () Bool)

(assert (=> b!3398863 m!3770469))

(assert (=> b!3398863 m!3770467))

(assert (=> b!3398863 m!3770463))

(assert (=> b!3398863 m!3770461))

(assert (=> b!3398864 m!3770461))

(assert (=> b!3398864 m!3770463))

(assert (=> b!3398864 m!3770465))

(assert (=> b!3398864 m!3770467))

(assert (=> b!3398864 m!3770469))

(assert (=> b!3398864 m!3770467))

(assert (=> b!3398864 m!3770463))

(assert (=> b!3398864 m!3770461))

(assert (=> b!3398862 m!3770467))

(assert (=> b!3398862 m!3770467))

(declare-fun m!3770471 () Bool)

(assert (=> b!3398862 m!3770471))

(declare-fun m!3770473 () Bool)

(assert (=> b!3398865 m!3770473))

(assert (=> b!3398865 m!3769911))

(assert (=> b!3398865 m!3769931))

(declare-fun m!3770475 () Bool)

(assert (=> b!3398865 m!3770475))

(assert (=> b!3398865 m!3769911))

(assert (=> b!3398865 m!3770475))

(declare-fun m!3770477 () Bool)

(assert (=> b!3398865 m!3770477))

(declare-fun m!3770479 () Bool)

(assert (=> d!966508 m!3770479))

(assert (=> d!966508 m!3770467))

(assert (=> b!3398543 d!966508))

(declare-fun b!3398894 () Bool)

(declare-fun e!2109893 () Bool)

(declare-fun lt!1155598 () List!37098)

(declare-fun e!2109892 () Int)

(declare-fun size!27995 (List!37098) Int)

(assert (=> b!3398894 (= e!2109893 (= (size!27995 lt!1155598) e!2109892))))

(declare-fun c!579353 () Bool)

(assert (=> b!3398894 (= c!579353 (<= 0 0))))

(declare-fun b!3398895 () Bool)

(declare-fun e!2109894 () List!37098)

(assert (=> b!3398895 (= e!2109894 Nil!36974)))

(declare-fun b!3398896 () Bool)

(declare-fun e!2109890 () Int)

(assert (=> b!3398896 (= e!2109892 e!2109890)))

(declare-fun c!579354 () Bool)

(declare-fun call!245818 () Int)

(assert (=> b!3398896 (= c!579354 (>= 0 call!245818))))

(declare-fun b!3398898 () Bool)

(declare-fun e!2109891 () List!37098)

(assert (=> b!3398898 (= e!2109891 (drop!1977 (t!265515 lt!1155498) (- 0 1)))))

(declare-fun b!3398899 () Bool)

(assert (=> b!3398899 (= e!2109894 e!2109891)))

(declare-fun c!579355 () Bool)

(assert (=> b!3398899 (= c!579355 (<= 0 0))))

(declare-fun b!3398900 () Bool)

(assert (=> b!3398900 (= e!2109890 0)))

(declare-fun b!3398901 () Bool)

(assert (=> b!3398901 (= e!2109892 call!245818)))

(declare-fun b!3398897 () Bool)

(assert (=> b!3398897 (= e!2109891 lt!1155498)))

(declare-fun d!966516 () Bool)

(assert (=> d!966516 e!2109893))

(declare-fun res!1375250 () Bool)

(assert (=> d!966516 (=> (not res!1375250) (not e!2109893))))

(declare-fun content!5113 (List!37098) (InoxSet Token!10162))

(assert (=> d!966516 (= res!1375250 (= ((_ map implies) (content!5113 lt!1155598) (content!5113 lt!1155498)) ((as const (InoxSet Token!10162)) true)))))

(assert (=> d!966516 (= lt!1155598 e!2109894)))

(declare-fun c!579352 () Bool)

(assert (=> d!966516 (= c!579352 ((_ is Nil!36974) lt!1155498))))

(assert (=> d!966516 (= (drop!1977 lt!1155498 0) lt!1155598)))

(declare-fun bm!245813 () Bool)

(assert (=> bm!245813 (= call!245818 (size!27995 lt!1155498))))

(declare-fun b!3398902 () Bool)

(assert (=> b!3398902 (= e!2109890 (- call!245818 0))))

(assert (= (and d!966516 c!579352) b!3398895))

(assert (= (and d!966516 (not c!579352)) b!3398899))

(assert (= (and b!3398899 c!579355) b!3398897))

(assert (= (and b!3398899 (not c!579355)) b!3398898))

(assert (= (and d!966516 res!1375250) b!3398894))

(assert (= (and b!3398894 c!579353) b!3398901))

(assert (= (and b!3398894 (not c!579353)) b!3398896))

(assert (= (and b!3398896 c!579354) b!3398900))

(assert (= (and b!3398896 (not c!579354)) b!3398902))

(assert (= (or b!3398901 b!3398896 b!3398902) bm!245813))

(declare-fun m!3770481 () Bool)

(assert (=> b!3398894 m!3770481))

(declare-fun m!3770483 () Bool)

(assert (=> b!3398898 m!3770483))

(declare-fun m!3770485 () Bool)

(assert (=> d!966516 m!3770485))

(declare-fun m!3770487 () Bool)

(assert (=> d!966516 m!3770487))

(declare-fun m!3770489 () Bool)

(assert (=> bm!245813 m!3770489))

(assert (=> b!3398543 d!966516))

(declare-fun b!3398903 () Bool)

(declare-fun e!2109898 () Bool)

(declare-fun lt!1155599 () List!37098)

(declare-fun e!2109897 () Int)

(assert (=> b!3398903 (= e!2109898 (= (size!27995 lt!1155599) e!2109897))))

(declare-fun c!579357 () Bool)

(assert (=> b!3398903 (= c!579357 (<= (+ 0 1) 0))))

(declare-fun b!3398904 () Bool)

(declare-fun e!2109899 () List!37098)

(assert (=> b!3398904 (= e!2109899 Nil!36974)))

(declare-fun b!3398905 () Bool)

(declare-fun e!2109895 () Int)

(assert (=> b!3398905 (= e!2109897 e!2109895)))

(declare-fun c!579358 () Bool)

(declare-fun call!245819 () Int)

(assert (=> b!3398905 (= c!579358 (>= (+ 0 1) call!245819))))

(declare-fun b!3398907 () Bool)

(declare-fun e!2109896 () List!37098)

(assert (=> b!3398907 (= e!2109896 (drop!1977 (t!265515 lt!1155496) (- (+ 0 1) 1)))))

(declare-fun b!3398908 () Bool)

(assert (=> b!3398908 (= e!2109899 e!2109896)))

(declare-fun c!579359 () Bool)

(assert (=> b!3398908 (= c!579359 (<= (+ 0 1) 0))))

(declare-fun b!3398909 () Bool)

(assert (=> b!3398909 (= e!2109895 0)))

(declare-fun b!3398910 () Bool)

(assert (=> b!3398910 (= e!2109897 call!245819)))

(declare-fun b!3398906 () Bool)

(assert (=> b!3398906 (= e!2109896 lt!1155496)))

(declare-fun d!966518 () Bool)

(assert (=> d!966518 e!2109898))

(declare-fun res!1375251 () Bool)

(assert (=> d!966518 (=> (not res!1375251) (not e!2109898))))

(assert (=> d!966518 (= res!1375251 (= ((_ map implies) (content!5113 lt!1155599) (content!5113 lt!1155496)) ((as const (InoxSet Token!10162)) true)))))

(assert (=> d!966518 (= lt!1155599 e!2109899)))

(declare-fun c!579356 () Bool)

(assert (=> d!966518 (= c!579356 ((_ is Nil!36974) lt!1155496))))

(assert (=> d!966518 (= (drop!1977 lt!1155496 (+ 0 1)) lt!1155599)))

(declare-fun bm!245814 () Bool)

(assert (=> bm!245814 (= call!245819 (size!27995 lt!1155496))))

(declare-fun b!3398911 () Bool)

(assert (=> b!3398911 (= e!2109895 (- call!245819 (+ 0 1)))))

(assert (= (and d!966518 c!579356) b!3398904))

(assert (= (and d!966518 (not c!579356)) b!3398908))

(assert (= (and b!3398908 c!579359) b!3398906))

(assert (= (and b!3398908 (not c!579359)) b!3398907))

(assert (= (and d!966518 res!1375251) b!3398903))

(assert (= (and b!3398903 c!579357) b!3398910))

(assert (= (and b!3398903 (not c!579357)) b!3398905))

(assert (= (and b!3398905 c!579358) b!3398909))

(assert (= (and b!3398905 (not c!579358)) b!3398911))

(assert (= (or b!3398910 b!3398905 b!3398911) bm!245814))

(declare-fun m!3770491 () Bool)

(assert (=> b!3398903 m!3770491))

(declare-fun m!3770493 () Bool)

(assert (=> b!3398907 m!3770493))

(declare-fun m!3770495 () Bool)

(assert (=> d!966518 m!3770495))

(declare-fun m!3770497 () Bool)

(assert (=> d!966518 m!3770497))

(declare-fun m!3770499 () Bool)

(assert (=> bm!245814 m!3770499))

(assert (=> b!3398543 d!966518))

(declare-fun d!966520 () Bool)

(declare-fun lt!1155603 () BalanceConc!21956)

(assert (=> d!966520 (= (list!13399 lt!1155603) (originalCharacters!6112 (apply!8626 lt!1155326 0)))))

(assert (=> d!966520 (= lt!1155603 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0)))) (value!174303 (apply!8626 lt!1155326 0))))))

(assert (=> d!966520 (= (charsOf!3412 (apply!8626 lt!1155326 0)) lt!1155603)))

(declare-fun b_lambda!96915 () Bool)

(assert (=> (not b_lambda!96915) (not d!966520)))

(declare-fun t!265647 () Bool)

(declare-fun tb!182097 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265647) tb!182097))

(declare-fun b!3398917 () Bool)

(declare-fun e!2109903 () Bool)

(declare-fun tp!1060797 () Bool)

(assert (=> b!3398917 (= e!2109903 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0)))) (value!174303 (apply!8626 lt!1155326 0))))) tp!1060797))))

(declare-fun result!225724 () Bool)

(assert (=> tb!182097 (= result!225724 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0)))) (value!174303 (apply!8626 lt!1155326 0)))) e!2109903))))

(assert (= tb!182097 b!3398917))

(declare-fun m!3770513 () Bool)

(assert (=> b!3398917 m!3770513))

(declare-fun m!3770515 () Bool)

(assert (=> tb!182097 m!3770515))

(assert (=> d!966520 t!265647))

(declare-fun b_and!237131 () Bool)

(assert (= b_and!237061 (and (=> t!265647 result!225724) b_and!237131)))

(declare-fun t!265649 () Bool)

(declare-fun tb!182099 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265649) tb!182099))

(declare-fun result!225726 () Bool)

(assert (= result!225726 result!225724))

(assert (=> d!966520 t!265649))

(declare-fun b_and!237133 () Bool)

(assert (= b_and!237065 (and (=> t!265649 result!225726) b_and!237133)))

(declare-fun tb!182101 () Bool)

(declare-fun t!265651 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265651) tb!182101))

(declare-fun result!225728 () Bool)

(assert (= result!225728 result!225724))

(assert (=> d!966520 t!265651))

(declare-fun b_and!237135 () Bool)

(assert (= b_and!237059 (and (=> t!265651 result!225728) b_and!237135)))

(declare-fun tb!182103 () Bool)

(declare-fun t!265653 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265653) tb!182103))

(declare-fun result!225730 () Bool)

(assert (= result!225730 result!225724))

(assert (=> d!966520 t!265653))

(declare-fun b_and!237137 () Bool)

(assert (= b_and!237069 (and (=> t!265653 result!225730) b_and!237137)))

(declare-fun t!265655 () Bool)

(declare-fun tb!182105 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265655) tb!182105))

(declare-fun result!225732 () Bool)

(assert (= result!225732 result!225724))

(assert (=> d!966520 t!265655))

(declare-fun b_and!237139 () Bool)

(assert (= b_and!237057 (and (=> t!265655 result!225732) b_and!237139)))

(declare-fun m!3770517 () Bool)

(assert (=> d!966520 m!3770517))

(declare-fun m!3770521 () Bool)

(assert (=> d!966520 m!3770521))

(assert (=> b!3398543 d!966520))

(declare-fun b!3398922 () Bool)

(declare-fun e!2109909 () Bool)

(declare-fun lt!1155605 () List!37098)

(declare-fun e!2109908 () Int)

(assert (=> b!3398922 (= e!2109909 (= (size!27995 lt!1155605) e!2109908))))

(declare-fun c!579364 () Bool)

(assert (=> b!3398922 (= c!579364 (<= 0 0))))

(declare-fun b!3398923 () Bool)

(declare-fun e!2109910 () List!37098)

(assert (=> b!3398923 (= e!2109910 Nil!36974)))

(declare-fun b!3398924 () Bool)

(declare-fun e!2109906 () Int)

(assert (=> b!3398924 (= e!2109908 e!2109906)))

(declare-fun c!579365 () Bool)

(declare-fun call!245820 () Int)

(assert (=> b!3398924 (= c!579365 (>= 0 call!245820))))

(declare-fun b!3398926 () Bool)

(declare-fun e!2109907 () List!37098)

(assert (=> b!3398926 (= e!2109907 (drop!1977 (t!265515 lt!1155496) (- 0 1)))))

(declare-fun b!3398927 () Bool)

(assert (=> b!3398927 (= e!2109910 e!2109907)))

(declare-fun c!579366 () Bool)

(assert (=> b!3398927 (= c!579366 (<= 0 0))))

(declare-fun b!3398928 () Bool)

(assert (=> b!3398928 (= e!2109906 0)))

(declare-fun b!3398929 () Bool)

(assert (=> b!3398929 (= e!2109908 call!245820)))

(declare-fun b!3398925 () Bool)

(assert (=> b!3398925 (= e!2109907 lt!1155496)))

(declare-fun d!966526 () Bool)

(assert (=> d!966526 e!2109909))

(declare-fun res!1375255 () Bool)

(assert (=> d!966526 (=> (not res!1375255) (not e!2109909))))

(assert (=> d!966526 (= res!1375255 (= ((_ map implies) (content!5113 lt!1155605) (content!5113 lt!1155496)) ((as const (InoxSet Token!10162)) true)))))

(assert (=> d!966526 (= lt!1155605 e!2109910)))

(declare-fun c!579363 () Bool)

(assert (=> d!966526 (= c!579363 ((_ is Nil!36974) lt!1155496))))

(assert (=> d!966526 (= (drop!1977 lt!1155496 0) lt!1155605)))

(declare-fun bm!245815 () Bool)

(assert (=> bm!245815 (= call!245820 (size!27995 lt!1155496))))

(declare-fun b!3398930 () Bool)

(assert (=> b!3398930 (= e!2109906 (- call!245820 0))))

(assert (= (and d!966526 c!579363) b!3398923))

(assert (= (and d!966526 (not c!579363)) b!3398927))

(assert (= (and b!3398927 c!579366) b!3398925))

(assert (= (and b!3398927 (not c!579366)) b!3398926))

(assert (= (and d!966526 res!1375255) b!3398922))

(assert (= (and b!3398922 c!579364) b!3398929))

(assert (= (and b!3398922 (not c!579364)) b!3398924))

(assert (= (and b!3398924 c!579365) b!3398928))

(assert (= (and b!3398924 (not c!579365)) b!3398930))

(assert (= (or b!3398929 b!3398924 b!3398930) bm!245815))

(declare-fun m!3770531 () Bool)

(assert (=> b!3398922 m!3770531))

(declare-fun m!3770533 () Bool)

(assert (=> b!3398926 m!3770533))

(declare-fun m!3770535 () Bool)

(assert (=> d!966526 m!3770535))

(assert (=> d!966526 m!3770497))

(assert (=> bm!245815 m!3770499))

(assert (=> b!3398543 d!966526))

(declare-fun d!966530 () Bool)

(assert (=> d!966530 (= (tail!5375 (drop!1977 lt!1155496 0)) (t!265515 (drop!1977 lt!1155496 0)))))

(assert (=> b!3398543 d!966530))

(declare-fun d!966532 () Bool)

(declare-fun lt!1155608 () Token!10162)

(assert (=> d!966532 (contains!6791 lt!1155498 lt!1155608)))

(declare-fun e!2109922 () Token!10162)

(assert (=> d!966532 (= lt!1155608 e!2109922)))

(declare-fun c!579369 () Bool)

(assert (=> d!966532 (= c!579369 (= 0 0))))

(declare-fun e!2109921 () Bool)

(assert (=> d!966532 e!2109921))

(declare-fun res!1375264 () Bool)

(assert (=> d!966532 (=> (not res!1375264) (not e!2109921))))

(assert (=> d!966532 (= res!1375264 (<= 0 0))))

(assert (=> d!966532 (= (apply!8627 lt!1155498 0) lt!1155608)))

(declare-fun b!3398943 () Bool)

(assert (=> b!3398943 (= e!2109921 (< 0 (size!27995 lt!1155498)))))

(declare-fun b!3398944 () Bool)

(assert (=> b!3398944 (= e!2109922 (head!7253 lt!1155498))))

(declare-fun b!3398945 () Bool)

(assert (=> b!3398945 (= e!2109922 (apply!8627 (tail!5375 lt!1155498) (- 0 1)))))

(assert (= (and d!966532 res!1375264) b!3398943))

(assert (= (and d!966532 c!579369) b!3398944))

(assert (= (and d!966532 (not c!579369)) b!3398945))

(declare-fun m!3770543 () Bool)

(assert (=> d!966532 m!3770543))

(assert (=> b!3398943 m!3770489))

(declare-fun m!3770545 () Bool)

(assert (=> b!3398944 m!3770545))

(declare-fun m!3770547 () Bool)

(assert (=> b!3398945 m!3770547))

(assert (=> b!3398945 m!3770547))

(declare-fun m!3770549 () Bool)

(assert (=> b!3398945 m!3770549))

(assert (=> b!3398543 d!966532))

(declare-fun d!966538 () Bool)

(assert (=> d!966538 (= (tail!5375 (drop!1977 lt!1155496 0)) (drop!1977 lt!1155496 (+ 0 1)))))

(declare-fun lt!1155613 () Unit!52137)

(declare-fun choose!19711 (List!37098 Int) Unit!52137)

(assert (=> d!966538 (= lt!1155613 (choose!19711 lt!1155496 0))))

(declare-fun e!2109932 () Bool)

(assert (=> d!966538 e!2109932))

(declare-fun res!1375267 () Bool)

(assert (=> d!966538 (=> (not res!1375267) (not e!2109932))))

(assert (=> d!966538 (= res!1375267 (>= 0 0))))

(assert (=> d!966538 (= (lemmaDropTail!1019 lt!1155496 0) lt!1155613)))

(declare-fun b!3398962 () Bool)

(assert (=> b!3398962 (= e!2109932 (< 0 (size!27995 lt!1155496)))))

(assert (= (and d!966538 res!1375267) b!3398962))

(assert (=> d!966538 m!3769925))

(assert (=> d!966538 m!3769925))

(assert (=> d!966538 m!3769927))

(assert (=> d!966538 m!3769923))

(declare-fun m!3770565 () Bool)

(assert (=> d!966538 m!3770565))

(assert (=> b!3398962 m!3770499))

(assert (=> b!3398543 d!966538))

(declare-fun d!966550 () Bool)

(declare-fun lt!1155617 () BalanceConc!21956)

(assert (=> d!966550 (= (list!13399 lt!1155617) (printListTailRec!660 thiss!18206 (dropList!1177 lt!1155326 (+ 0 1)) (list!13399 (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (apply!8626 lt!1155326 0))))))))

(declare-fun e!2109936 () BalanceConc!21956)

(assert (=> d!966550 (= lt!1155617 e!2109936)))

(declare-fun c!579378 () Bool)

(assert (=> d!966550 (= c!579378 (>= (+ 0 1) (size!27991 lt!1155326)))))

(declare-fun e!2109934 () Bool)

(assert (=> d!966550 e!2109934))

(declare-fun res!1375268 () Bool)

(assert (=> d!966550 (=> (not res!1375268) (not e!2109934))))

(assert (=> d!966550 (= res!1375268 (>= (+ 0 1) 0))))

(assert (=> d!966550 (= (printTailRec!1482 thiss!18206 lt!1155326 (+ 0 1) (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (apply!8626 lt!1155326 0)))) lt!1155617)))

(declare-fun b!3398965 () Bool)

(assert (=> b!3398965 (= e!2109934 (<= (+ 0 1) (size!27991 lt!1155326)))))

(declare-fun b!3398967 () Bool)

(assert (=> b!3398967 (= e!2109936 (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (apply!8626 lt!1155326 0))))))

(declare-fun b!3398969 () Bool)

(assert (=> b!3398969 (= e!2109936 (printTailRec!1482 thiss!18206 lt!1155326 (+ 0 1 1) (++!9063 (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (apply!8626 lt!1155326 0))) (charsOf!3412 (apply!8626 lt!1155326 (+ 0 1))))))))

(declare-fun lt!1155620 () List!37098)

(assert (=> b!3398969 (= lt!1155620 (list!13402 lt!1155326))))

(declare-fun lt!1155616 () Unit!52137)

(assert (=> b!3398969 (= lt!1155616 (lemmaDropApply!1135 lt!1155620 (+ 0 1)))))

(assert (=> b!3398969 (= (head!7253 (drop!1977 lt!1155620 (+ 0 1))) (apply!8627 lt!1155620 (+ 0 1)))))

(declare-fun lt!1155615 () Unit!52137)

(assert (=> b!3398969 (= lt!1155615 lt!1155616)))

(declare-fun lt!1155618 () List!37098)

(assert (=> b!3398969 (= lt!1155618 (list!13402 lt!1155326))))

(declare-fun lt!1155622 () Unit!52137)

(assert (=> b!3398969 (= lt!1155622 (lemmaDropTail!1019 lt!1155618 (+ 0 1)))))

(assert (=> b!3398969 (= (tail!5375 (drop!1977 lt!1155618 (+ 0 1))) (drop!1977 lt!1155618 (+ 0 1 1)))))

(declare-fun lt!1155619 () Unit!52137)

(assert (=> b!3398969 (= lt!1155619 lt!1155622)))

(assert (= (and d!966550 res!1375268) b!3398965))

(assert (= (and d!966550 c!579378) b!3398967))

(assert (= (and d!966550 (not c!579378)) b!3398969))

(declare-fun m!3770569 () Bool)

(assert (=> d!966550 m!3770569))

(declare-fun m!3770571 () Bool)

(assert (=> d!966550 m!3770571))

(declare-fun m!3770573 () Bool)

(assert (=> d!966550 m!3770573))

(assert (=> d!966550 m!3770569))

(assert (=> d!966550 m!3769937))

(assert (=> d!966550 m!3770571))

(declare-fun m!3770575 () Bool)

(assert (=> d!966550 m!3770575))

(assert (=> d!966550 m!3769917))

(assert (=> b!3398965 m!3769917))

(declare-fun m!3770577 () Bool)

(assert (=> b!3398969 m!3770577))

(declare-fun m!3770579 () Bool)

(assert (=> b!3398969 m!3770579))

(declare-fun m!3770581 () Bool)

(assert (=> b!3398969 m!3770581))

(declare-fun m!3770583 () Bool)

(assert (=> b!3398969 m!3770583))

(declare-fun m!3770585 () Bool)

(assert (=> b!3398969 m!3770585))

(declare-fun m!3770587 () Bool)

(assert (=> b!3398969 m!3770587))

(declare-fun m!3770589 () Bool)

(assert (=> b!3398969 m!3770589))

(declare-fun m!3770591 () Bool)

(assert (=> b!3398969 m!3770591))

(declare-fun m!3770593 () Bool)

(assert (=> b!3398969 m!3770593))

(assert (=> b!3398969 m!3770577))

(declare-fun m!3770595 () Bool)

(assert (=> b!3398969 m!3770595))

(declare-fun m!3770599 () Bool)

(assert (=> b!3398969 m!3770599))

(assert (=> b!3398969 m!3769905))

(declare-fun m!3770601 () Bool)

(assert (=> b!3398969 m!3770601))

(assert (=> b!3398969 m!3769937))

(assert (=> b!3398969 m!3770589))

(assert (=> b!3398969 m!3770595))

(assert (=> b!3398969 m!3770583))

(assert (=> b!3398969 m!3770587))

(assert (=> b!3398543 d!966550))

(declare-fun d!966558 () Bool)

(assert (=> d!966558 (= (head!7253 (drop!1977 lt!1155498 0)) (apply!8627 lt!1155498 0))))

(declare-fun lt!1155628 () Unit!52137)

(declare-fun choose!19712 (List!37098 Int) Unit!52137)

(assert (=> d!966558 (= lt!1155628 (choose!19712 lt!1155498 0))))

(declare-fun e!2109942 () Bool)

(assert (=> d!966558 e!2109942))

(declare-fun res!1375274 () Bool)

(assert (=> d!966558 (=> (not res!1375274) (not e!2109942))))

(assert (=> d!966558 (= res!1375274 (>= 0 0))))

(assert (=> d!966558 (= (lemmaDropApply!1135 lt!1155498 0) lt!1155628)))

(declare-fun b!3398977 () Bool)

(assert (=> b!3398977 (= e!2109942 (< 0 (size!27995 lt!1155498)))))

(assert (= (and d!966558 res!1375274) b!3398977))

(assert (=> d!966558 m!3769919))

(assert (=> d!966558 m!3769919))

(assert (=> d!966558 m!3769921))

(assert (=> d!966558 m!3769935))

(declare-fun m!3770639 () Bool)

(assert (=> d!966558 m!3770639))

(assert (=> b!3398977 m!3770489))

(assert (=> b!3398543 d!966558))

(declare-fun d!966574 () Bool)

(declare-fun lt!1155632 () Token!10162)

(assert (=> d!966574 (= lt!1155632 (apply!8627 (list!13402 lt!1155326) 0))))

(declare-fun apply!8629 (Conc!11172 Int) Token!10162)

(assert (=> d!966574 (= lt!1155632 (apply!8629 (c!579208 lt!1155326) 0))))

(declare-fun e!2109945 () Bool)

(assert (=> d!966574 e!2109945))

(declare-fun res!1375277 () Bool)

(assert (=> d!966574 (=> (not res!1375277) (not e!2109945))))

(assert (=> d!966574 (= res!1375277 (<= 0 0))))

(assert (=> d!966574 (= (apply!8626 lt!1155326 0) lt!1155632)))

(declare-fun b!3398980 () Bool)

(assert (=> b!3398980 (= e!2109945 (< 0 (size!27991 lt!1155326)))))

(assert (= (and d!966574 res!1375277) b!3398980))

(assert (=> d!966574 m!3769905))

(assert (=> d!966574 m!3769905))

(declare-fun m!3770649 () Bool)

(assert (=> d!966574 m!3770649))

(declare-fun m!3770651 () Bool)

(assert (=> d!966574 m!3770651))

(assert (=> b!3398980 m!3769917))

(assert (=> b!3398543 d!966574))

(declare-fun d!966580 () Bool)

(assert (=> d!966580 (= (inv!50068 (tag!5982 (rule!7958 (h!42394 (t!265515 tokens!494))))) (= (mod (str.len (value!174302 (tag!5982 (rule!7958 (h!42394 (t!265515 tokens!494)))))) 2) 0))))

(assert (=> b!3398586 d!966580))

(declare-fun d!966582 () Bool)

(declare-fun res!1375278 () Bool)

(declare-fun e!2109946 () Bool)

(assert (=> d!966582 (=> (not res!1375278) (not e!2109946))))

(assert (=> d!966582 (= res!1375278 (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))))))

(assert (=> d!966582 (= (inv!50072 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) e!2109946)))

(declare-fun b!3398981 () Bool)

(assert (=> b!3398981 (= e!2109946 (equivClasses!2154 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))))))

(assert (= (and d!966582 res!1375278) b!3398981))

(declare-fun m!3770653 () Bool)

(assert (=> d!966582 m!3770653))

(declare-fun m!3770655 () Bool)

(assert (=> b!3398981 m!3770655))

(assert (=> b!3398586 d!966582))

(declare-fun d!966584 () Bool)

(declare-fun charsToBigInt!0 (List!37097 Int) Int)

(assert (=> d!966584 (= (inv!15 (value!174303 separatorToken!241)) (= (charsToBigInt!0 (text!39845 (value!174303 separatorToken!241)) 0) (value!174298 (value!174303 separatorToken!241))))))

(declare-fun bs!556082 () Bool)

(assert (= bs!556082 d!966584))

(declare-fun m!3770657 () Bool)

(assert (=> bs!556082 m!3770657))

(assert (=> b!3398522 d!966584))

(declare-fun d!966586 () Bool)

(declare-fun c!579381 () Bool)

(assert (=> d!966586 (= c!579381 ((_ is Nil!36972) lt!1155468))))

(declare-fun e!2109947 () (InoxSet C!20500))

(assert (=> d!966586 (= (content!5111 lt!1155468) e!2109947)))

(declare-fun b!3398982 () Bool)

(assert (=> b!3398982 (= e!2109947 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3398983 () Bool)

(assert (=> b!3398983 (= e!2109947 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155468) true) (content!5111 (t!265513 lt!1155468))))))

(assert (= (and d!966586 c!579381) b!3398982))

(assert (= (and d!966586 (not c!579381)) b!3398983))

(declare-fun m!3770659 () Bool)

(assert (=> b!3398983 m!3770659))

(declare-fun m!3770661 () Bool)

(assert (=> b!3398983 m!3770661))

(assert (=> d!966316 d!966586))

(declare-fun d!966588 () Bool)

(declare-fun c!579382 () Bool)

(assert (=> d!966588 (= c!579382 ((_ is Nil!36972) (++!9061 lt!1155340 lt!1155328)))))

(declare-fun e!2109948 () (InoxSet C!20500))

(assert (=> d!966588 (= (content!5111 (++!9061 lt!1155340 lt!1155328)) e!2109948)))

(declare-fun b!3398984 () Bool)

(assert (=> b!3398984 (= e!2109948 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3398985 () Bool)

(assert (=> b!3398985 (= e!2109948 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 (++!9061 lt!1155340 lt!1155328)) true) (content!5111 (t!265513 (++!9061 lt!1155340 lt!1155328)))))))

(assert (= (and d!966588 c!579382) b!3398984))

(assert (= (and d!966588 (not c!579382)) b!3398985))

(declare-fun m!3770663 () Bool)

(assert (=> b!3398985 m!3770663))

(declare-fun m!3770665 () Bool)

(assert (=> b!3398985 m!3770665))

(assert (=> d!966316 d!966588))

(declare-fun d!966590 () Bool)

(declare-fun c!579383 () Bool)

(assert (=> d!966590 (= c!579383 ((_ is Nil!36972) lt!1155335))))

(declare-fun e!2109949 () (InoxSet C!20500))

(assert (=> d!966590 (= (content!5111 lt!1155335) e!2109949)))

(declare-fun b!3398986 () Bool)

(assert (=> b!3398986 (= e!2109949 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3398987 () Bool)

(assert (=> b!3398987 (= e!2109949 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155335) true) (content!5111 (t!265513 lt!1155335))))))

(assert (= (and d!966590 c!579383) b!3398986))

(assert (= (and d!966590 (not c!579383)) b!3398987))

(declare-fun m!3770667 () Bool)

(assert (=> b!3398987 m!3770667))

(declare-fun m!3770669 () Bool)

(assert (=> b!3398987 m!3770669))

(assert (=> d!966316 d!966590))

(declare-fun d!966592 () Bool)

(assert (=> d!966592 (= (inv!50068 (tag!5982 (h!42395 (t!265516 rules!2135)))) (= (mod (str.len (value!174302 (tag!5982 (h!42395 (t!265516 rules!2135))))) 2) 0))))

(assert (=> b!3398616 d!966592))

(declare-fun d!966594 () Bool)

(declare-fun res!1375279 () Bool)

(declare-fun e!2109950 () Bool)

(assert (=> d!966594 (=> (not res!1375279) (not e!2109950))))

(assert (=> d!966594 (= res!1375279 (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toValue!7598 (transformation!5398 (h!42395 (t!265516 rules!2135))))))))

(assert (=> d!966594 (= (inv!50072 (transformation!5398 (h!42395 (t!265516 rules!2135)))) e!2109950)))

(declare-fun b!3398988 () Bool)

(assert (=> b!3398988 (= e!2109950 (equivClasses!2154 (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toValue!7598 (transformation!5398 (h!42395 (t!265516 rules!2135))))))))

(assert (= (and d!966594 res!1375279) b!3398988))

(declare-fun m!3770671 () Bool)

(assert (=> d!966594 m!3770671))

(declare-fun m!3770673 () Bool)

(assert (=> b!3398988 m!3770673))

(assert (=> b!3398616 d!966594))

(declare-fun d!966596 () Bool)

(declare-fun lt!1155635 () Bool)

(assert (=> d!966596 (= lt!1155635 (isEmpty!21239 (list!13399 (_2!21432 lt!1155475))))))

(declare-fun isEmpty!21245 (Conc!11171) Bool)

(assert (=> d!966596 (= lt!1155635 (isEmpty!21245 (c!579207 (_2!21432 lt!1155475))))))

(assert (=> d!966596 (= (isEmpty!21243 (_2!21432 lt!1155475)) lt!1155635)))

(declare-fun bs!556083 () Bool)

(assert (= bs!556083 d!966596))

(declare-fun m!3770675 () Bool)

(assert (=> bs!556083 m!3770675))

(assert (=> bs!556083 m!3770675))

(declare-fun m!3770677 () Bool)

(assert (=> bs!556083 m!3770677))

(declare-fun m!3770679 () Bool)

(assert (=> bs!556083 m!3770679))

(assert (=> b!3398533 d!966596))

(declare-fun d!966598 () Bool)

(declare-fun c!579388 () Bool)

(assert (=> d!966598 (= c!579388 ((_ is Empty!11171) (c!579207 lt!1155330)))))

(declare-fun e!2109955 () List!37096)

(assert (=> d!966598 (= (list!13403 (c!579207 lt!1155330)) e!2109955)))

(declare-fun b!3398999 () Bool)

(declare-fun e!2109956 () List!37096)

(declare-fun list!13407 (IArray!22347) List!37096)

(assert (=> b!3398999 (= e!2109956 (list!13407 (xs!14329 (c!579207 lt!1155330))))))

(declare-fun b!3398998 () Bool)

(assert (=> b!3398998 (= e!2109955 e!2109956)))

(declare-fun c!579389 () Bool)

(assert (=> b!3398998 (= c!579389 ((_ is Leaf!17481) (c!579207 lt!1155330)))))

(declare-fun b!3399000 () Bool)

(assert (=> b!3399000 (= e!2109956 (++!9061 (list!13403 (left!28824 (c!579207 lt!1155330))) (list!13403 (right!29154 (c!579207 lt!1155330)))))))

(declare-fun b!3398997 () Bool)

(assert (=> b!3398997 (= e!2109955 Nil!36972)))

(assert (= (and d!966598 c!579388) b!3398997))

(assert (= (and d!966598 (not c!579388)) b!3398998))

(assert (= (and b!3398998 c!579389) b!3398999))

(assert (= (and b!3398998 (not c!579389)) b!3399000))

(declare-fun m!3770681 () Bool)

(assert (=> b!3398999 m!3770681))

(declare-fun m!3770683 () Bool)

(assert (=> b!3399000 m!3770683))

(declare-fun m!3770685 () Bool)

(assert (=> b!3399000 m!3770685))

(assert (=> b!3399000 m!3770683))

(assert (=> b!3399000 m!3770685))

(declare-fun m!3770687 () Bool)

(assert (=> b!3399000 m!3770687))

(assert (=> d!966332 d!966598))

(declare-fun d!966600 () Bool)

(assert (=> d!966600 true))

(declare-fun lambda!120925 () Int)

(declare-fun order!19531 () Int)

(declare-fun dynLambda!15432 (Int Int) Int)

(assert (=> d!966600 (< (dynLambda!15428 order!19519 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (dynLambda!15432 order!19531 lambda!120925))))

(assert (=> d!966600 true))

(assert (=> d!966600 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (dynLambda!15432 order!19531 lambda!120925))))

(declare-fun Forall!1325 (Int) Bool)

(assert (=> d!966600 (= (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (Forall!1325 lambda!120925))))

(declare-fun bs!556084 () Bool)

(assert (= bs!556084 d!966600))

(declare-fun m!3770689 () Bool)

(assert (=> bs!556084 m!3770689))

(assert (=> d!966354 d!966600))

(declare-fun d!966602 () Bool)

(assert (=> d!966602 (= (list!13399 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))) (list!13403 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))))

(declare-fun bs!556085 () Bool)

(assert (= bs!556085 d!966602))

(declare-fun m!3770691 () Bool)

(assert (=> bs!556085 m!3770691))

(assert (=> b!3398211 d!966602))

(declare-fun d!966604 () Bool)

(assert (=> d!966604 (dynLambda!15425 lambda!120899 (h!42394 (t!265515 tokens!494)))))

(assert (=> d!966604 true))

(declare-fun _$7!1248 () Unit!52137)

(assert (=> d!966604 (= (choose!19708 tokens!494 lambda!120899 (h!42394 (t!265515 tokens!494))) _$7!1248)))

(declare-fun b_lambda!96917 () Bool)

(assert (=> (not b_lambda!96917) (not d!966604)))

(declare-fun bs!556086 () Bool)

(assert (= bs!556086 d!966604))

(assert (=> bs!556086 m!3769603))

(assert (=> d!966246 d!966604))

(assert (=> d!966246 d!966264))

(declare-fun d!966606 () Bool)

(declare-fun lt!1155636 () Bool)

(assert (=> d!966606 (= lt!1155636 (isEmpty!21239 (list!13399 (_2!21432 lt!1155504))))))

(assert (=> d!966606 (= lt!1155636 (isEmpty!21245 (c!579207 (_2!21432 lt!1155504))))))

(assert (=> d!966606 (= (isEmpty!21243 (_2!21432 lt!1155504)) lt!1155636)))

(declare-fun bs!556087 () Bool)

(assert (= bs!556087 d!966606))

(declare-fun m!3770693 () Bool)

(assert (=> bs!556087 m!3770693))

(assert (=> bs!556087 m!3770693))

(declare-fun m!3770695 () Bool)

(assert (=> bs!556087 m!3770695))

(declare-fun m!3770697 () Bool)

(assert (=> bs!556087 m!3770697))

(assert (=> b!3398572 d!966606))

(declare-fun d!966608 () Bool)

(assert (=> d!966608 (= (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))) (list!13403 (c!579207 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun bs!556088 () Bool)

(assert (= bs!556088 d!966608))

(declare-fun m!3770699 () Bool)

(assert (=> bs!556088 m!3770699))

(assert (=> b!3398276 d!966608))

(declare-fun d!966610 () Bool)

(declare-fun lt!1155637 () BalanceConc!21956)

(assert (=> d!966610 (= (list!13399 lt!1155637) (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404))))))

(assert (=> d!966610 (= lt!1155637 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))) (value!174303 (_1!21433 (get!11808 lt!1155404)))))))

(assert (=> d!966610 (= (charsOf!3412 (_1!21433 (get!11808 lt!1155404))) lt!1155637)))

(declare-fun b_lambda!96919 () Bool)

(assert (=> (not b_lambda!96919) (not d!966610)))

(declare-fun t!265658 () Bool)

(declare-fun tb!182107 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265658) tb!182107))

(declare-fun b!3399005 () Bool)

(declare-fun e!2109957 () Bool)

(declare-fun tp!1060798 () Bool)

(assert (=> b!3399005 (= e!2109957 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))) (value!174303 (_1!21433 (get!11808 lt!1155404)))))) tp!1060798))))

(declare-fun result!225734 () Bool)

(assert (=> tb!182107 (= result!225734 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))) (value!174303 (_1!21433 (get!11808 lt!1155404))))) e!2109957))))

(assert (= tb!182107 b!3399005))

(declare-fun m!3770701 () Bool)

(assert (=> b!3399005 m!3770701))

(declare-fun m!3770703 () Bool)

(assert (=> tb!182107 m!3770703))

(assert (=> d!966610 t!265658))

(declare-fun b_and!237141 () Bool)

(assert (= b_and!237137 (and (=> t!265658 result!225734) b_and!237141)))

(declare-fun tb!182109 () Bool)

(declare-fun t!265660 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265660) tb!182109))

(declare-fun result!225736 () Bool)

(assert (= result!225736 result!225734))

(assert (=> d!966610 t!265660))

(declare-fun b_and!237143 () Bool)

(assert (= b_and!237131 (and (=> t!265660 result!225736) b_and!237143)))

(declare-fun t!265662 () Bool)

(declare-fun tb!182111 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265662) tb!182111))

(declare-fun result!225738 () Bool)

(assert (= result!225738 result!225734))

(assert (=> d!966610 t!265662))

(declare-fun b_and!237145 () Bool)

(assert (= b_and!237133 (and (=> t!265662 result!225738) b_and!237145)))

(declare-fun t!265664 () Bool)

(declare-fun tb!182113 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265664) tb!182113))

(declare-fun result!225740 () Bool)

(assert (= result!225740 result!225734))

(assert (=> d!966610 t!265664))

(declare-fun b_and!237147 () Bool)

(assert (= b_and!237139 (and (=> t!265664 result!225740) b_and!237147)))

(declare-fun t!265666 () Bool)

(declare-fun tb!182115 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265666) tb!182115))

(declare-fun result!225742 () Bool)

(assert (= result!225742 result!225734))

(assert (=> d!966610 t!265666))

(declare-fun b_and!237149 () Bool)

(assert (= b_and!237135 (and (=> t!265666 result!225742) b_and!237149)))

(declare-fun m!3770705 () Bool)

(assert (=> d!966610 m!3770705))

(declare-fun m!3770707 () Bool)

(assert (=> d!966610 m!3770707))

(assert (=> b!3398276 d!966610))

(declare-fun d!966612 () Bool)

(assert (=> d!966612 (= (get!11808 lt!1155404) (v!36599 lt!1155404))))

(assert (=> b!3398276 d!966612))

(declare-fun b!3399007 () Bool)

(declare-fun e!2109959 () List!37096)

(assert (=> b!3399007 (= e!2109959 (Cons!36972 (h!42392 (t!265513 lt!1155340)) (++!9061 (t!265513 (t!265513 lt!1155340)) lt!1155331)))))

(declare-fun e!2109958 () Bool)

(declare-fun lt!1155638 () List!37096)

(declare-fun b!3399009 () Bool)

(assert (=> b!3399009 (= e!2109958 (or (not (= lt!1155331 Nil!36972)) (= lt!1155638 (t!265513 lt!1155340))))))

(declare-fun d!966614 () Bool)

(assert (=> d!966614 e!2109958))

(declare-fun res!1375280 () Bool)

(assert (=> d!966614 (=> (not res!1375280) (not e!2109958))))

(assert (=> d!966614 (= res!1375280 (= (content!5111 lt!1155638) ((_ map or) (content!5111 (t!265513 lt!1155340)) (content!5111 lt!1155331))))))

(assert (=> d!966614 (= lt!1155638 e!2109959)))

(declare-fun c!579390 () Bool)

(assert (=> d!966614 (= c!579390 ((_ is Nil!36972) (t!265513 lt!1155340)))))

(assert (=> d!966614 (= (++!9061 (t!265513 lt!1155340) lt!1155331) lt!1155638)))

(declare-fun b!3399008 () Bool)

(declare-fun res!1375281 () Bool)

(assert (=> b!3399008 (=> (not res!1375281) (not e!2109958))))

(assert (=> b!3399008 (= res!1375281 (= (size!27989 lt!1155638) (+ (size!27989 (t!265513 lt!1155340)) (size!27989 lt!1155331))))))

(declare-fun b!3399006 () Bool)

(assert (=> b!3399006 (= e!2109959 lt!1155331)))

(assert (= (and d!966614 c!579390) b!3399006))

(assert (= (and d!966614 (not c!579390)) b!3399007))

(assert (= (and d!966614 res!1375280) b!3399008))

(assert (= (and b!3399008 res!1375281) b!3399009))

(declare-fun m!3770709 () Bool)

(assert (=> b!3399007 m!3770709))

(declare-fun m!3770711 () Bool)

(assert (=> d!966614 m!3770711))

(declare-fun m!3770713 () Bool)

(assert (=> d!966614 m!3770713))

(assert (=> d!966614 m!3769387))

(declare-fun m!3770715 () Bool)

(assert (=> b!3399008 m!3770715))

(declare-fun m!3770717 () Bool)

(assert (=> b!3399008 m!3770717))

(assert (=> b!3399008 m!3769393))

(assert (=> b!3398204 d!966614))

(declare-fun bs!556089 () Bool)

(declare-fun d!966616 () Bool)

(assert (= bs!556089 (and d!966616 d!966600)))

(declare-fun lambda!120926 () Int)

(assert (=> bs!556089 (= (and (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (= (toValue!7598 (transformation!5398 (h!42395 rules!2135))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (= lambda!120926 lambda!120925))))

(assert (=> d!966616 true))

(assert (=> d!966616 (< (dynLambda!15428 order!19519 (toChars!7457 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15432 order!19531 lambda!120926))))

(assert (=> d!966616 true))

(assert (=> d!966616 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15432 order!19531 lambda!120926))))

(assert (=> d!966616 (= (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (Forall!1325 lambda!120926))))

(declare-fun bs!556090 () Bool)

(assert (= bs!556090 d!966616))

(declare-fun m!3770719 () Bool)

(assert (=> bs!556090 m!3770719))

(assert (=> d!966322 d!966616))

(assert (=> b!3398272 d!966612))

(declare-fun d!966618 () Bool)

(declare-fun dynLambda!15433 (Int BalanceConc!21956) TokenValue!5628)

(assert (=> d!966618 (= (apply!8625 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))) (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404))))) (dynLambda!15433 (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))) (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun b_lambda!96921 () Bool)

(assert (=> (not b_lambda!96921) (not d!966618)))

(declare-fun tb!182117 () Bool)

(declare-fun t!265668 () Bool)

(assert (=> (and b!3398126 (= (toValue!7598 (transformation!5398 (h!42395 rules!2135))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265668) tb!182117))

(declare-fun result!225744 () Bool)

(assert (=> tb!182117 (= result!225744 (inv!21 (dynLambda!15433 (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))) (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404)))))))))

(declare-fun m!3770721 () Bool)

(assert (=> tb!182117 m!3770721))

(assert (=> d!966618 t!265668))

(declare-fun b_and!237151 () Bool)

(assert (= b_and!236991 (and (=> t!265668 result!225744) b_and!237151)))

(declare-fun tb!182119 () Bool)

(declare-fun t!265670 () Bool)

(assert (=> (and b!3398131 (= (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265670) tb!182119))

(declare-fun result!225748 () Bool)

(assert (= result!225748 result!225744))

(assert (=> d!966618 t!265670))

(declare-fun b_and!237153 () Bool)

(assert (= b_and!236983 (and (=> t!265670 result!225748) b_and!237153)))

(declare-fun tb!182121 () Bool)

(declare-fun t!265672 () Bool)

(assert (=> (and b!3398617 (= (toValue!7598 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265672) tb!182121))

(declare-fun result!225750 () Bool)

(assert (= result!225750 result!225744))

(assert (=> d!966618 t!265672))

(declare-fun b_and!237155 () Bool)

(assert (= b_and!237067 (and (=> t!265672 result!225750) b_and!237155)))

(declare-fun t!265674 () Bool)

(declare-fun tb!182123 () Bool)

(assert (=> (and b!3398120 (= (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265674) tb!182123))

(declare-fun result!225752 () Bool)

(assert (= result!225752 result!225744))

(assert (=> d!966618 t!265674))

(declare-fun b_and!237157 () Bool)

(assert (= b_and!236987 (and (=> t!265674 result!225752) b_and!237157)))

(declare-fun t!265676 () Bool)

(declare-fun tb!182125 () Bool)

(assert (=> (and b!3398587 (= (toValue!7598 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265676) tb!182125))

(declare-fun result!225754 () Bool)

(assert (= result!225754 result!225744))

(assert (=> d!966618 t!265676))

(declare-fun b_and!237159 () Bool)

(assert (= b_and!237063 (and (=> t!265676 result!225754) b_and!237159)))

(assert (=> d!966618 m!3769517))

(declare-fun m!3770723 () Bool)

(assert (=> d!966618 m!3770723))

(assert (=> b!3398272 d!966618))

(declare-fun d!966620 () Bool)

(assert (=> d!966620 (= (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404)))) (fromListB!1727 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155404)))))))

(declare-fun bs!556091 () Bool)

(assert (= bs!556091 d!966620))

(declare-fun m!3770725 () Bool)

(assert (=> bs!556091 m!3770725))

(assert (=> b!3398272 d!966620))

(declare-fun d!966622 () Bool)

(assert (=> d!966622 true))

(declare-fun order!19533 () Int)

(declare-fun lambda!120929 () Int)

(declare-fun dynLambda!15434 (Int Int) Int)

(assert (=> d!966622 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15434 order!19533 lambda!120929))))

(declare-fun Forall2!922 (Int) Bool)

(assert (=> d!966622 (= (equivClasses!2154 (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (Forall2!922 lambda!120929))))

(declare-fun bs!556092 () Bool)

(assert (= bs!556092 d!966622))

(declare-fun m!3770727 () Bool)

(assert (=> bs!556092 m!3770727))

(assert (=> b!3398505 d!966622))

(declare-fun d!966624 () Bool)

(declare-fun lt!1155641 () Int)

(assert (=> d!966624 (>= lt!1155641 0)))

(declare-fun e!2109967 () Int)

(assert (=> d!966624 (= lt!1155641 e!2109967)))

(declare-fun c!579393 () Bool)

(assert (=> d!966624 (= c!579393 ((_ is Nil!36972) lt!1155463))))

(assert (=> d!966624 (= (size!27989 lt!1155463) lt!1155641)))

(declare-fun b!3399020 () Bool)

(assert (=> b!3399020 (= e!2109967 0)))

(declare-fun b!3399021 () Bool)

(assert (=> b!3399021 (= e!2109967 (+ 1 (size!27989 (t!265513 lt!1155463))))))

(assert (= (and d!966624 c!579393) b!3399020))

(assert (= (and d!966624 (not c!579393)) b!3399021))

(declare-fun m!3770729 () Bool)

(assert (=> b!3399021 m!3770729))

(assert (=> b!3398426 d!966624))

(declare-fun d!966626 () Bool)

(declare-fun lt!1155642 () Int)

(assert (=> d!966626 (>= lt!1155642 0)))

(declare-fun e!2109968 () Int)

(assert (=> d!966626 (= lt!1155642 e!2109968)))

(declare-fun c!579394 () Bool)

(assert (=> d!966626 (= c!579394 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(assert (=> d!966626 (= (size!27989 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) lt!1155642)))

(declare-fun b!3399022 () Bool)

(assert (=> b!3399022 (= e!2109968 0)))

(declare-fun b!3399023 () Bool)

(assert (=> b!3399023 (= e!2109968 (+ 1 (size!27989 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))))

(assert (= (and d!966626 c!579394) b!3399022))

(assert (= (and d!966626 (not c!579394)) b!3399023))

(declare-fun m!3770731 () Bool)

(assert (=> b!3399023 m!3770731))

(assert (=> b!3398426 d!966626))

(declare-fun d!966628 () Bool)

(declare-fun lt!1155643 () Int)

(assert (=> d!966628 (>= lt!1155643 0)))

(declare-fun e!2109969 () Int)

(assert (=> d!966628 (= lt!1155643 e!2109969)))

(declare-fun c!579395 () Bool)

(assert (=> d!966628 (= c!579395 ((_ is Nil!36972) lt!1155328))))

(assert (=> d!966628 (= (size!27989 lt!1155328) lt!1155643)))

(declare-fun b!3399024 () Bool)

(assert (=> b!3399024 (= e!2109969 0)))

(declare-fun b!3399025 () Bool)

(assert (=> b!3399025 (= e!2109969 (+ 1 (size!27989 (t!265513 lt!1155328))))))

(assert (= (and d!966628 c!579395) b!3399024))

(assert (= (and d!966628 (not c!579395)) b!3399025))

(assert (=> b!3399025 m!3770437))

(assert (=> b!3398426 d!966628))

(declare-fun d!966630 () Bool)

(declare-fun lt!1155646 () Int)

(assert (=> d!966630 (= lt!1155646 (size!27995 (list!13402 (_1!21432 lt!1155457))))))

(declare-fun size!27996 (Conc!11172) Int)

(assert (=> d!966630 (= lt!1155646 (size!27996 (c!579208 (_1!21432 lt!1155457))))))

(assert (=> d!966630 (= (size!27991 (_1!21432 lt!1155457)) lt!1155646)))

(declare-fun bs!556093 () Bool)

(assert (= bs!556093 d!966630))

(assert (=> bs!556093 m!3769697))

(assert (=> bs!556093 m!3769697))

(declare-fun m!3770733 () Bool)

(assert (=> bs!556093 m!3770733))

(declare-fun m!3770735 () Bool)

(assert (=> bs!556093 m!3770735))

(assert (=> d!966268 d!966630))

(declare-fun b!3399091 () Bool)

(declare-fun e!2110005 () tuple2!36596)

(assert (=> b!3399091 (= e!2110005 (tuple2!36597 (BalanceConc!21959 Empty!11172) (seqFromList!3849 lt!1155340)))))

(declare-fun d!966632 () Bool)

(declare-fun e!2110007 () Bool)

(assert (=> d!966632 e!2110007))

(declare-fun res!1375315 () Bool)

(assert (=> d!966632 (=> (not res!1375315) (not e!2110007))))

(declare-fun lt!1155769 () tuple2!36596)

(declare-fun lexRec!736 (LexerInterface!4987 List!37099 BalanceConc!21956) tuple2!36596)

(assert (=> d!966632 (= res!1375315 (= (list!13402 (_1!21432 lt!1155769)) (list!13402 (_1!21432 (lexRec!736 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))))))

(assert (=> d!966632 (= lt!1155769 e!2110005)))

(declare-fun c!579414 () Bool)

(declare-datatypes ((tuple2!36604 0))(
  ( (tuple2!36605 (_1!21436 Token!10162) (_2!21436 BalanceConc!21956)) )
))
(declare-datatypes ((Option!7437 0))(
  ( (None!7436) (Some!7436 (v!36608 tuple2!36604)) )
))
(declare-fun lt!1155762 () Option!7437)

(assert (=> d!966632 (= c!579414 ((_ is Some!7436) lt!1155762))))

(declare-fun maxPrefixZipperSequenceV2!523 (LexerInterface!4987 List!37099 BalanceConc!21956 BalanceConc!21956) Option!7437)

(assert (=> d!966632 (= lt!1155762 (maxPrefixZipperSequenceV2!523 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340) (seqFromList!3849 lt!1155340)))))

(declare-fun lt!1155747 () Unit!52137)

(declare-fun lt!1155759 () Unit!52137)

(assert (=> d!966632 (= lt!1155747 lt!1155759)))

(declare-fun lt!1155765 () List!37096)

(declare-fun lt!1155742 () List!37096)

(declare-fun isSuffix!898 (List!37096 List!37096) Bool)

(assert (=> d!966632 (isSuffix!898 lt!1155765 (++!9061 lt!1155742 lt!1155765))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!583 (List!37096 List!37096) Unit!52137)

(assert (=> d!966632 (= lt!1155759 (lemmaConcatTwoListThenFSndIsSuffix!583 lt!1155742 lt!1155765))))

(assert (=> d!966632 (= lt!1155765 (list!13399 (seqFromList!3849 lt!1155340)))))

(assert (=> d!966632 (= lt!1155742 (list!13399 (BalanceConc!21957 Empty!11171)))))

(assert (=> d!966632 (= (lexTailRecV2!1028 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340) (BalanceConc!21957 Empty!11171) (seqFromList!3849 lt!1155340) (BalanceConc!21959 Empty!11172)) lt!1155769)))

(declare-fun b!3399092 () Bool)

(declare-fun lt!1155760 () Option!7437)

(declare-fun lt!1155756 () tuple2!36596)

(assert (=> b!3399092 (= lt!1155756 (lexRec!736 thiss!18206 rules!2135 (_2!21436 (v!36608 lt!1155760))))))

(declare-fun e!2110006 () tuple2!36596)

(declare-fun prepend!1242 (BalanceConc!21958 Token!10162) BalanceConc!21958)

(assert (=> b!3399092 (= e!2110006 (tuple2!36597 (prepend!1242 (_1!21432 lt!1155756) (_1!21436 (v!36608 lt!1155760))) (_2!21432 lt!1155756)))))

(declare-fun b!3399093 () Bool)

(assert (=> b!3399093 (= e!2110007 (= (list!13399 (_2!21432 lt!1155769)) (list!13399 (_2!21432 (lexRec!736 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))))))

(declare-fun b!3399094 () Bool)

(declare-fun lt!1155757 () BalanceConc!21956)

(declare-fun append!942 (BalanceConc!21958 Token!10162) BalanceConc!21958)

(assert (=> b!3399094 (= e!2110005 (lexTailRecV2!1028 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340) lt!1155757 (_2!21436 (v!36608 lt!1155762)) (append!942 (BalanceConc!21959 Empty!11172) (_1!21436 (v!36608 lt!1155762)))))))

(declare-fun lt!1155761 () tuple2!36596)

(assert (=> b!3399094 (= lt!1155761 (lexRec!736 thiss!18206 rules!2135 (_2!21436 (v!36608 lt!1155762))))))

(declare-fun lt!1155749 () List!37096)

(assert (=> b!3399094 (= lt!1155749 (list!13399 (BalanceConc!21957 Empty!11171)))))

(declare-fun lt!1155750 () List!37096)

(assert (=> b!3399094 (= lt!1155750 (list!13399 (charsOf!3412 (_1!21436 (v!36608 lt!1155762)))))))

(declare-fun lt!1155751 () List!37096)

(assert (=> b!3399094 (= lt!1155751 (list!13399 (_2!21436 (v!36608 lt!1155762))))))

(declare-fun lt!1155770 () Unit!52137)

(assert (=> b!3399094 (= lt!1155770 (lemmaConcatAssociativity!1900 lt!1155749 lt!1155750 lt!1155751))))

(assert (=> b!3399094 (= (++!9061 (++!9061 lt!1155749 lt!1155750) lt!1155751) (++!9061 lt!1155749 (++!9061 lt!1155750 lt!1155751)))))

(declare-fun lt!1155763 () Unit!52137)

(assert (=> b!3399094 (= lt!1155763 lt!1155770)))

(declare-fun lt!1155741 () Option!7437)

(declare-fun maxPrefixZipperSequence!1129 (LexerInterface!4987 List!37099 BalanceConc!21956) Option!7437)

(assert (=> b!3399094 (= lt!1155741 (maxPrefixZipperSequence!1129 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)))))

(declare-fun c!579413 () Bool)

(assert (=> b!3399094 (= c!579413 ((_ is Some!7436) lt!1155741))))

(declare-fun e!2110004 () tuple2!36596)

(assert (=> b!3399094 (= (lexRec!736 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)) e!2110004)))

(declare-fun lt!1155758 () Unit!52137)

(declare-fun Unit!52140 () Unit!52137)

(assert (=> b!3399094 (= lt!1155758 Unit!52140)))

(declare-fun lt!1155743 () List!37098)

(assert (=> b!3399094 (= lt!1155743 (list!13402 (BalanceConc!21959 Empty!11172)))))

(declare-fun lt!1155739 () List!37098)

(assert (=> b!3399094 (= lt!1155739 (Cons!36974 (_1!21436 (v!36608 lt!1155762)) Nil!36974))))

(declare-fun lt!1155744 () List!37098)

(assert (=> b!3399094 (= lt!1155744 (list!13402 (_1!21432 lt!1155761)))))

(declare-fun lt!1155766 () Unit!52137)

(declare-fun lemmaConcatAssociativity!1901 (List!37098 List!37098 List!37098) Unit!52137)

(assert (=> b!3399094 (= lt!1155766 (lemmaConcatAssociativity!1901 lt!1155743 lt!1155739 lt!1155744))))

(declare-fun ++!9066 (List!37098 List!37098) List!37098)

(assert (=> b!3399094 (= (++!9066 (++!9066 lt!1155743 lt!1155739) lt!1155744) (++!9066 lt!1155743 (++!9066 lt!1155739 lt!1155744)))))

(declare-fun lt!1155764 () Unit!52137)

(assert (=> b!3399094 (= lt!1155764 lt!1155766)))

(declare-fun lt!1155740 () List!37096)

(assert (=> b!3399094 (= lt!1155740 (++!9061 (list!13399 (BalanceConc!21957 Empty!11171)) (list!13399 (charsOf!3412 (_1!21436 (v!36608 lt!1155762))))))))

(declare-fun lt!1155752 () List!37096)

(assert (=> b!3399094 (= lt!1155752 (list!13399 (_2!21436 (v!36608 lt!1155762))))))

(declare-fun lt!1155738 () List!37098)

(assert (=> b!3399094 (= lt!1155738 (list!13402 (append!942 (BalanceConc!21959 Empty!11172) (_1!21436 (v!36608 lt!1155762)))))))

(declare-fun lt!1155755 () Unit!52137)

(declare-fun lemmaLexThenLexPrefix!501 (LexerInterface!4987 List!37099 List!37096 List!37096 List!37098 List!37098 List!37096) Unit!52137)

(assert (=> b!3399094 (= lt!1155755 (lemmaLexThenLexPrefix!501 thiss!18206 rules!2135 lt!1155740 lt!1155752 lt!1155738 (list!13402 (_1!21432 lt!1155761)) (list!13399 (_2!21432 lt!1155761))))))

(assert (=> b!3399094 (= (lexList!1420 thiss!18206 rules!2135 lt!1155740) (tuple2!36603 lt!1155738 Nil!36972))))

(declare-fun lt!1155748 () Unit!52137)

(assert (=> b!3399094 (= lt!1155748 lt!1155755)))

(declare-fun lt!1155771 () BalanceConc!21956)

(assert (=> b!3399094 (= lt!1155771 (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (_1!21436 (v!36608 lt!1155762)))))))

(assert (=> b!3399094 (= lt!1155760 (maxPrefixZipperSequence!1129 thiss!18206 rules!2135 lt!1155771))))

(declare-fun c!579415 () Bool)

(assert (=> b!3399094 (= c!579415 ((_ is Some!7436) lt!1155760))))

(assert (=> b!3399094 (= (lexRec!736 thiss!18206 rules!2135 (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (_1!21436 (v!36608 lt!1155762))))) e!2110006)))

(declare-fun lt!1155746 () Unit!52137)

(declare-fun Unit!52141 () Unit!52137)

(assert (=> b!3399094 (= lt!1155746 Unit!52141)))

(assert (=> b!3399094 (= lt!1155757 (++!9063 (BalanceConc!21957 Empty!11171) (charsOf!3412 (_1!21436 (v!36608 lt!1155762)))))))

(declare-fun lt!1155745 () List!37096)

(assert (=> b!3399094 (= lt!1155745 (list!13399 lt!1155757))))

(declare-fun lt!1155767 () List!37096)

(assert (=> b!3399094 (= lt!1155767 (list!13399 (_2!21436 (v!36608 lt!1155762))))))

(declare-fun lt!1155768 () Unit!52137)

(assert (=> b!3399094 (= lt!1155768 (lemmaConcatTwoListThenFSndIsSuffix!583 lt!1155745 lt!1155767))))

(assert (=> b!3399094 (isSuffix!898 lt!1155767 (++!9061 lt!1155745 lt!1155767))))

(declare-fun lt!1155754 () Unit!52137)

(assert (=> b!3399094 (= lt!1155754 lt!1155768)))

(declare-fun b!3399095 () Bool)

(assert (=> b!3399095 (= e!2110004 (tuple2!36597 (BalanceConc!21959 Empty!11172) (seqFromList!3849 lt!1155340)))))

(declare-fun b!3399096 () Bool)

(declare-fun lt!1155753 () tuple2!36596)

(assert (=> b!3399096 (= lt!1155753 (lexRec!736 thiss!18206 rules!2135 (_2!21436 (v!36608 lt!1155741))))))

(assert (=> b!3399096 (= e!2110004 (tuple2!36597 (prepend!1242 (_1!21432 lt!1155753) (_1!21436 (v!36608 lt!1155741))) (_2!21432 lt!1155753)))))

(declare-fun b!3399097 () Bool)

(assert (=> b!3399097 (= e!2110006 (tuple2!36597 (BalanceConc!21959 Empty!11172) lt!1155771))))

(assert (= (and d!966632 c!579414) b!3399094))

(assert (= (and d!966632 (not c!579414)) b!3399091))

(assert (= (and b!3399094 c!579413) b!3399096))

(assert (= (and b!3399094 (not c!579413)) b!3399095))

(assert (= (and b!3399094 c!579415) b!3399092))

(assert (= (and b!3399094 (not c!579415)) b!3399097))

(assert (= (and d!966632 res!1375315) b!3399093))

(declare-fun m!3770829 () Bool)

(assert (=> b!3399094 m!3770829))

(declare-fun m!3770831 () Bool)

(assert (=> b!3399094 m!3770831))

(declare-fun m!3770833 () Bool)

(assert (=> b!3399094 m!3770833))

(declare-fun m!3770835 () Bool)

(assert (=> b!3399094 m!3770835))

(declare-fun m!3770837 () Bool)

(assert (=> b!3399094 m!3770837))

(assert (=> b!3399094 m!3769287))

(declare-fun m!3770839 () Bool)

(assert (=> b!3399094 m!3770839))

(declare-fun m!3770841 () Bool)

(assert (=> b!3399094 m!3770841))

(declare-fun m!3770843 () Bool)

(assert (=> b!3399094 m!3770843))

(declare-fun m!3770845 () Bool)

(assert (=> b!3399094 m!3770845))

(declare-fun m!3770847 () Bool)

(assert (=> b!3399094 m!3770847))

(declare-fun m!3770849 () Bool)

(assert (=> b!3399094 m!3770849))

(assert (=> b!3399094 m!3769911))

(declare-fun m!3770851 () Bool)

(assert (=> b!3399094 m!3770851))

(declare-fun m!3770853 () Bool)

(assert (=> b!3399094 m!3770853))

(declare-fun m!3770855 () Bool)

(assert (=> b!3399094 m!3770855))

(declare-fun m!3770857 () Bool)

(assert (=> b!3399094 m!3770857))

(declare-fun m!3770859 () Bool)

(assert (=> b!3399094 m!3770859))

(declare-fun m!3770861 () Bool)

(assert (=> b!3399094 m!3770861))

(assert (=> b!3399094 m!3769287))

(declare-fun m!3770863 () Bool)

(assert (=> b!3399094 m!3770863))

(declare-fun m!3770865 () Bool)

(assert (=> b!3399094 m!3770865))

(assert (=> b!3399094 m!3770855))

(declare-fun m!3770867 () Bool)

(assert (=> b!3399094 m!3770867))

(declare-fun m!3770869 () Bool)

(assert (=> b!3399094 m!3770869))

(assert (=> b!3399094 m!3770835))

(assert (=> b!3399094 m!3770863))

(declare-fun m!3770871 () Bool)

(assert (=> b!3399094 m!3770871))

(declare-fun m!3770873 () Bool)

(assert (=> b!3399094 m!3770873))

(declare-fun m!3770875 () Bool)

(assert (=> b!3399094 m!3770875))

(assert (=> b!3399094 m!3770873))

(assert (=> b!3399094 m!3770863))

(declare-fun m!3770877 () Bool)

(assert (=> b!3399094 m!3770877))

(assert (=> b!3399094 m!3769287))

(declare-fun m!3770879 () Bool)

(assert (=> b!3399094 m!3770879))

(assert (=> b!3399094 m!3769911))

(assert (=> b!3399094 m!3770847))

(declare-fun m!3770881 () Bool)

(assert (=> b!3399094 m!3770881))

(declare-fun m!3770883 () Bool)

(assert (=> b!3399094 m!3770883))

(assert (=> b!3399094 m!3770843))

(assert (=> b!3399094 m!3770871))

(assert (=> b!3399094 m!3770859))

(declare-fun m!3770885 () Bool)

(assert (=> b!3399094 m!3770885))

(assert (=> b!3399094 m!3770835))

(assert (=> b!3399094 m!3770851))

(assert (=> b!3399094 m!3770837))

(declare-fun m!3770887 () Bool)

(assert (=> b!3399094 m!3770887))

(assert (=> b!3399094 m!3770867))

(declare-fun m!3770889 () Bool)

(assert (=> b!3399094 m!3770889))

(declare-fun m!3770891 () Bool)

(assert (=> b!3399094 m!3770891))

(declare-fun m!3770893 () Bool)

(assert (=> d!966632 m!3770893))

(declare-fun m!3770895 () Bool)

(assert (=> d!966632 m!3770895))

(assert (=> d!966632 m!3769911))

(declare-fun m!3770897 () Bool)

(assert (=> d!966632 m!3770897))

(declare-fun m!3770899 () Bool)

(assert (=> d!966632 m!3770899))

(declare-fun m!3770901 () Bool)

(assert (=> d!966632 m!3770901))

(assert (=> d!966632 m!3769287))

(assert (=> d!966632 m!3769693))

(assert (=> d!966632 m!3770897))

(assert (=> d!966632 m!3769287))

(assert (=> d!966632 m!3769287))

(declare-fun m!3770903 () Bool)

(assert (=> d!966632 m!3770903))

(assert (=> d!966632 m!3769287))

(assert (=> d!966632 m!3770879))

(declare-fun m!3770905 () Bool)

(assert (=> b!3399096 m!3770905))

(declare-fun m!3770907 () Bool)

(assert (=> b!3399096 m!3770907))

(declare-fun m!3770909 () Bool)

(assert (=> b!3399092 m!3770909))

(declare-fun m!3770911 () Bool)

(assert (=> b!3399092 m!3770911))

(declare-fun m!3770913 () Bool)

(assert (=> b!3399093 m!3770913))

(assert (=> b!3399093 m!3769287))

(assert (=> b!3399093 m!3770879))

(declare-fun m!3770915 () Bool)

(assert (=> b!3399093 m!3770915))

(assert (=> d!966268 d!966632))

(declare-fun d!966672 () Bool)

(declare-fun res!1375316 () Bool)

(declare-fun e!2110008 () Bool)

(assert (=> d!966672 (=> res!1375316 e!2110008)))

(assert (=> d!966672 (= res!1375316 ((_ is Nil!36974) (t!265515 tokens!494)))))

(assert (=> d!966672 (= (forall!7813 (t!265515 tokens!494) lambda!120899) e!2110008)))

(declare-fun b!3399098 () Bool)

(declare-fun e!2110009 () Bool)

(assert (=> b!3399098 (= e!2110008 e!2110009)))

(declare-fun res!1375317 () Bool)

(assert (=> b!3399098 (=> (not res!1375317) (not e!2110009))))

(assert (=> b!3399098 (= res!1375317 (dynLambda!15425 lambda!120899 (h!42394 (t!265515 tokens!494))))))

(declare-fun b!3399099 () Bool)

(assert (=> b!3399099 (= e!2110009 (forall!7813 (t!265515 (t!265515 tokens!494)) lambda!120899))))

(assert (= (and d!966672 (not res!1375316)) b!3399098))

(assert (= (and b!3399098 res!1375317) b!3399099))

(declare-fun b_lambda!96923 () Bool)

(assert (=> (not b_lambda!96923) (not b!3399098)))

(assert (=> b!3399098 m!3769603))

(declare-fun m!3770917 () Bool)

(assert (=> b!3399099 m!3770917))

(assert (=> b!3398363 d!966672))

(declare-fun b!3399101 () Bool)

(declare-fun e!2110011 () List!37096)

(assert (=> b!3399101 (= e!2110011 (Cons!36972 (h!42392 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (++!9061 (t!265513 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))))

(declare-fun e!2110010 () Bool)

(declare-fun lt!1155772 () List!37096)

(declare-fun b!3399103 () Bool)

(assert (=> b!3399103 (= e!2110010 (or (not (= (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))) Nil!36972)) (= lt!1155772 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))))))

(declare-fun d!966674 () Bool)

(assert (=> d!966674 e!2110010))

(declare-fun res!1375318 () Bool)

(assert (=> d!966674 (=> (not res!1375318) (not e!2110010))))

(assert (=> d!966674 (= res!1375318 (= (content!5111 lt!1155772) ((_ map or) (content!5111 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (content!5111 (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))))))

(assert (=> d!966674 (= lt!1155772 e!2110011)))

(declare-fun c!579416 () Bool)

(assert (=> d!966674 (= c!579416 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))))

(assert (=> d!966674 (= (++!9061 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))) (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974)))) lt!1155772)))

(declare-fun b!3399102 () Bool)

(declare-fun res!1375319 () Bool)

(assert (=> b!3399102 (=> (not res!1375319) (not e!2110010))))

(assert (=> b!3399102 (= res!1375319 (= (size!27989 lt!1155772) (+ (size!27989 (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (size!27989 (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))))))

(declare-fun b!3399100 () Bool)

(assert (=> b!3399100 (= e!2110011 (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))

(assert (= (and d!966674 c!579416) b!3399100))

(assert (= (and d!966674 (not c!579416)) b!3399101))

(assert (= (and d!966674 res!1375318) b!3399102))

(assert (= (and b!3399102 res!1375319) b!3399103))

(assert (=> b!3399101 m!3769953))

(declare-fun m!3770919 () Bool)

(assert (=> b!3399101 m!3770919))

(declare-fun m!3770921 () Bool)

(assert (=> d!966674 m!3770921))

(assert (=> d!966674 m!3769951))

(declare-fun m!3770923 () Bool)

(assert (=> d!966674 m!3770923))

(assert (=> d!966674 m!3769953))

(declare-fun m!3770925 () Bool)

(assert (=> d!966674 m!3770925))

(declare-fun m!3770927 () Bool)

(assert (=> b!3399102 m!3770927))

(assert (=> b!3399102 m!3769951))

(declare-fun m!3770929 () Bool)

(assert (=> b!3399102 m!3770929))

(assert (=> b!3399102 m!3769953))

(declare-fun m!3770931 () Bool)

(assert (=> b!3399102 m!3770931))

(assert (=> b!3398551 d!966674))

(declare-fun d!966676 () Bool)

(assert (=> d!966676 (= (list!13399 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))) (list!13403 (c!579207 (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))))

(declare-fun bs!556100 () Bool)

(assert (= bs!556100 d!966676))

(declare-fun m!3770933 () Bool)

(assert (=> bs!556100 m!3770933))

(assert (=> b!3398551 d!966676))

(declare-fun d!966678 () Bool)

(declare-fun lt!1155773 () BalanceConc!21956)

(assert (=> d!966678 (= (list!13399 lt!1155773) (originalCharacters!6112 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))

(assert (=> d!966678 (= lt!1155773 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (value!174303 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))))

(assert (=> d!966678 (= (charsOf!3412 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))) lt!1155773)))

(declare-fun b_lambda!96925 () Bool)

(assert (=> (not b_lambda!96925) (not d!966678)))

(declare-fun tb!182127 () Bool)

(declare-fun t!265679 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265679) tb!182127))

(declare-fun b!3399104 () Bool)

(declare-fun e!2110012 () Bool)

(declare-fun tp!1060799 () Bool)

(assert (=> b!3399104 (= e!2110012 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (value!174303 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) tp!1060799))))

(declare-fun result!225756 () Bool)

(assert (=> tb!182127 (= result!225756 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (value!174303 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) e!2110012))))

(assert (= tb!182127 b!3399104))

(declare-fun m!3770935 () Bool)

(assert (=> b!3399104 m!3770935))

(declare-fun m!3770937 () Bool)

(assert (=> tb!182127 m!3770937))

(assert (=> d!966678 t!265679))

(declare-fun b_and!237161 () Bool)

(assert (= b_and!237141 (and (=> t!265679 result!225756) b_and!237161)))

(declare-fun t!265681 () Bool)

(declare-fun tb!182129 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265681) tb!182129))

(declare-fun result!225758 () Bool)

(assert (= result!225758 result!225756))

(assert (=> d!966678 t!265681))

(declare-fun b_and!237163 () Bool)

(assert (= b_and!237147 (and (=> t!265681 result!225758) b_and!237163)))

(declare-fun t!265683 () Bool)

(declare-fun tb!182131 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265683) tb!182131))

(declare-fun result!225760 () Bool)

(assert (= result!225760 result!225756))

(assert (=> d!966678 t!265683))

(declare-fun b_and!237165 () Bool)

(assert (= b_and!237145 (and (=> t!265683 result!225760) b_and!237165)))

(declare-fun tb!182133 () Bool)

(declare-fun t!265685 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265685) tb!182133))

(declare-fun result!225762 () Bool)

(assert (= result!225762 result!225756))

(assert (=> d!966678 t!265685))

(declare-fun b_and!237167 () Bool)

(assert (= b_and!237149 (and (=> t!265685 result!225762) b_and!237167)))

(declare-fun tb!182135 () Bool)

(declare-fun t!265687 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265687) tb!182135))

(declare-fun result!225764 () Bool)

(assert (= result!225764 result!225756))

(assert (=> d!966678 t!265687))

(declare-fun b_and!237169 () Bool)

(assert (= b_and!237143 (and (=> t!265687 result!225764) b_and!237169)))

(declare-fun m!3770939 () Bool)

(assert (=> d!966678 m!3770939))

(declare-fun m!3770941 () Bool)

(assert (=> d!966678 m!3770941))

(assert (=> b!3398551 d!966678))

(declare-fun d!966680 () Bool)

(declare-fun c!579417 () Bool)

(assert (=> d!966680 (= c!579417 ((_ is Cons!36974) (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))

(declare-fun e!2110013 () List!37096)

(assert (=> d!966680 (= (printList!1535 thiss!18206 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))) e!2110013)))

(declare-fun b!3399105 () Bool)

(assert (=> b!3399105 (= e!2110013 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))))) (printList!1535 thiss!18206 (t!265515 (t!265515 (Cons!36974 (h!42394 tokens!494) Nil!36974))))))))

(declare-fun b!3399106 () Bool)

(assert (=> b!3399106 (= e!2110013 Nil!36972)))

(assert (= (and d!966680 c!579417) b!3399105))

(assert (= (and d!966680 (not c!579417)) b!3399106))

(declare-fun m!3770943 () Bool)

(assert (=> b!3399105 m!3770943))

(assert (=> b!3399105 m!3770943))

(declare-fun m!3770945 () Bool)

(assert (=> b!3399105 m!3770945))

(declare-fun m!3770947 () Bool)

(assert (=> b!3399105 m!3770947))

(assert (=> b!3399105 m!3770945))

(assert (=> b!3399105 m!3770947))

(declare-fun m!3770949 () Bool)

(assert (=> b!3399105 m!3770949))

(assert (=> b!3398551 d!966680))

(assert (=> d!966228 d!966358))

(declare-fun d!966682 () Bool)

(assert (=> d!966682 (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 (h!42394 tokens!494))))

(assert (=> d!966682 true))

(declare-fun _$77!932 () Unit!52137)

(assert (=> d!966682 (= (choose!19707 thiss!18206 rules!2135 tokens!494 (h!42394 tokens!494)) _$77!932)))

(declare-fun bs!556101 () Bool)

(assert (= bs!556101 d!966682))

(assert (=> bs!556101 m!3769279))

(assert (=> d!966228 d!966682))

(assert (=> d!966228 d!966258))

(declare-fun d!966684 () Bool)

(assert (=> d!966684 (= (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))) (isBalanced!3374 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun bs!556102 () Bool)

(assert (= bs!556102 d!966684))

(declare-fun m!3770951 () Bool)

(assert (=> bs!556102 m!3770951))

(assert (=> tb!182017 d!966684))

(declare-fun d!966686 () Bool)

(assert (=> d!966686 (= (list!13399 (_2!21432 lt!1155457)) (list!13403 (c!579207 (_2!21432 lt!1155457))))))

(declare-fun bs!556103 () Bool)

(assert (= bs!556103 d!966686))

(declare-fun m!3770953 () Bool)

(assert (=> bs!556103 m!3770953))

(assert (=> b!3398398 d!966686))

(declare-fun b!3399131 () Bool)

(declare-fun e!2110028 () Bool)

(declare-fun lt!1155848 () tuple2!36602)

(assert (=> b!3399131 (= e!2110028 (not (isEmpty!21241 (_1!21435 lt!1155848))))))

(declare-fun b!3399132 () Bool)

(declare-fun e!2110029 () tuple2!36602)

(declare-fun lt!1155849 () Option!7436)

(declare-fun lt!1155850 () tuple2!36602)

(assert (=> b!3399132 (= e!2110029 (tuple2!36603 (Cons!36974 (_1!21433 (v!36599 lt!1155849)) (_1!21435 lt!1155850)) (_2!21435 lt!1155850)))))

(assert (=> b!3399132 (= lt!1155850 (lexList!1420 thiss!18206 rules!2135 (_2!21433 (v!36599 lt!1155849))))))

(declare-fun b!3399133 () Bool)

(declare-fun e!2110030 () Bool)

(assert (=> b!3399133 (= e!2110030 e!2110028)))

(declare-fun res!1375324 () Bool)

(assert (=> b!3399133 (= res!1375324 (< (size!27989 (_2!21435 lt!1155848)) (size!27989 (list!13399 (seqFromList!3849 lt!1155340)))))))

(assert (=> b!3399133 (=> (not res!1375324) (not e!2110028))))

(declare-fun d!966688 () Bool)

(assert (=> d!966688 e!2110030))

(declare-fun c!579428 () Bool)

(assert (=> d!966688 (= c!579428 (> (size!27995 (_1!21435 lt!1155848)) 0))))

(assert (=> d!966688 (= lt!1155848 e!2110029)))

(declare-fun c!579429 () Bool)

(assert (=> d!966688 (= c!579429 ((_ is Some!7435) lt!1155849))))

(assert (=> d!966688 (= lt!1155849 (maxPrefix!2553 thiss!18206 rules!2135 (list!13399 (seqFromList!3849 lt!1155340))))))

(assert (=> d!966688 (= (lexList!1420 thiss!18206 rules!2135 (list!13399 (seqFromList!3849 lt!1155340))) lt!1155848)))

(declare-fun b!3399134 () Bool)

(assert (=> b!3399134 (= e!2110030 (= (_2!21435 lt!1155848) (list!13399 (seqFromList!3849 lt!1155340))))))

(declare-fun b!3399135 () Bool)

(assert (=> b!3399135 (= e!2110029 (tuple2!36603 Nil!36974 (list!13399 (seqFromList!3849 lt!1155340))))))

(assert (= (and d!966688 c!579429) b!3399132))

(assert (= (and d!966688 (not c!579429)) b!3399135))

(assert (= (and d!966688 c!579428) b!3399133))

(assert (= (and d!966688 (not c!579428)) b!3399134))

(assert (= (and b!3399133 res!1375324) b!3399131))

(declare-fun m!3770955 () Bool)

(assert (=> b!3399131 m!3770955))

(declare-fun m!3770957 () Bool)

(assert (=> b!3399132 m!3770957))

(declare-fun m!3770959 () Bool)

(assert (=> b!3399133 m!3770959))

(assert (=> b!3399133 m!3769693))

(declare-fun m!3770961 () Bool)

(assert (=> b!3399133 m!3770961))

(declare-fun m!3770963 () Bool)

(assert (=> d!966688 m!3770963))

(assert (=> d!966688 m!3769693))

(declare-fun m!3770965 () Bool)

(assert (=> d!966688 m!3770965))

(assert (=> b!3398398 d!966688))

(declare-fun d!966690 () Bool)

(assert (=> d!966690 (= (list!13399 (seqFromList!3849 lt!1155340)) (list!13403 (c!579207 (seqFromList!3849 lt!1155340))))))

(declare-fun bs!556104 () Bool)

(assert (= bs!556104 d!966690))

(declare-fun m!3770967 () Bool)

(assert (=> bs!556104 m!3770967))

(assert (=> b!3398398 d!966690))

(declare-fun d!966692 () Bool)

(assert (=> d!966692 true))

(declare-fun lt!1155887 () Bool)

(assert (=> d!966692 (= lt!1155887 (rulesValidInductive!1841 thiss!18206 rules!2135))))

(declare-fun lambda!120932 () Int)

(declare-fun forall!7817 (List!37099 Int) Bool)

(assert (=> d!966692 (= lt!1155887 (forall!7817 rules!2135 lambda!120932))))

(assert (=> d!966692 (= (rulesValid!2015 thiss!18206 rules!2135) lt!1155887)))

(declare-fun bs!556105 () Bool)

(assert (= bs!556105 d!966692))

(assert (=> bs!556105 m!3769527))

(declare-fun m!3770969 () Bool)

(assert (=> bs!556105 m!3770969))

(assert (=> d!966342 d!966692))

(declare-fun d!966694 () Bool)

(assert (=> d!966694 (= (list!13402 (_1!21432 lt!1155457)) (list!13406 (c!579208 (_1!21432 lt!1155457))))))

(declare-fun bs!556106 () Bool)

(assert (= bs!556106 d!966694))

(declare-fun m!3770979 () Bool)

(assert (=> bs!556106 m!3770979))

(assert (=> b!3398394 d!966694))

(assert (=> b!3398394 d!966688))

(assert (=> b!3398394 d!966690))

(declare-fun e!2110036 () List!37096)

(declare-fun b!3399146 () Bool)

(assert (=> b!3399146 (= e!2110036 (Cons!36972 (h!42392 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328))) (++!9061 (t!265513 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241))))))

(declare-fun e!2110035 () Bool)

(declare-fun lt!1155888 () List!37096)

(declare-fun b!3399148 () Bool)

(assert (=> b!3399148 (= e!2110035 (or (not (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241) Nil!36972)) (= lt!1155888 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)))))))

(declare-fun d!966696 () Bool)

(assert (=> d!966696 e!2110035))

(declare-fun res!1375326 () Bool)

(assert (=> d!966696 (=> (not res!1375326) (not e!2110035))))

(assert (=> d!966696 (= res!1375326 (= (content!5111 lt!1155888) ((_ map or) (content!5111 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328))) (content!5111 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(assert (=> d!966696 (= lt!1155888 e!2110036)))

(declare-fun c!579433 () Bool)

(assert (=> d!966696 (= c!579433 ((_ is Nil!36972) (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328))))))

(assert (=> d!966696 (= (++!9061 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)) lt!1155888)))

(declare-fun b!3399147 () Bool)

(declare-fun res!1375327 () Bool)

(assert (=> b!3399147 (=> (not res!1375327) (not e!2110035))))

(assert (=> b!3399147 (= res!1375327 (= (size!27989 lt!1155888) (+ (size!27989 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328))) (size!27989 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(declare-fun b!3399145 () Bool)

(assert (=> b!3399145 (= e!2110036 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241))))

(assert (= (and d!966696 c!579433) b!3399145))

(assert (= (and d!966696 (not c!579433)) b!3399146))

(assert (= (and d!966696 res!1375326) b!3399147))

(assert (= (and b!3399147 res!1375327) b!3399148))

(assert (=> b!3399146 m!3769255))

(declare-fun m!3771009 () Bool)

(assert (=> b!3399146 m!3771009))

(declare-fun m!3771013 () Bool)

(assert (=> d!966696 m!3771013))

(declare-fun m!3771015 () Bool)

(assert (=> d!966696 m!3771015))

(assert (=> d!966696 m!3769255))

(assert (=> d!966696 m!3769811))

(declare-fun m!3771017 () Bool)

(assert (=> b!3399147 m!3771017))

(declare-fun m!3771021 () Bool)

(assert (=> b!3399147 m!3771021))

(assert (=> b!3399147 m!3769255))

(assert (=> b!3399147 m!3769817))

(assert (=> b!3398451 d!966696))

(declare-fun d!966698 () Bool)

(assert (=> d!966698 (= (list!13399 lt!1155478) (list!13403 (c!579207 lt!1155478)))))

(declare-fun bs!556107 () Bool)

(assert (= bs!556107 d!966698))

(declare-fun m!3771025 () Bool)

(assert (=> bs!556107 m!3771025))

(assert (=> d!966334 d!966698))

(declare-fun d!966700 () Bool)

(declare-fun c!579434 () Bool)

(assert (=> d!966700 (= c!579434 ((_ is Cons!36974) (list!13402 lt!1155326)))))

(declare-fun e!2110037 () List!37096)

(assert (=> d!966700 (= (printList!1535 thiss!18206 (list!13402 lt!1155326)) e!2110037)))

(declare-fun b!3399149 () Bool)

(assert (=> b!3399149 (= e!2110037 (++!9061 (list!13399 (charsOf!3412 (h!42394 (list!13402 lt!1155326)))) (printList!1535 thiss!18206 (t!265515 (list!13402 lt!1155326)))))))

(declare-fun b!3399150 () Bool)

(assert (=> b!3399150 (= e!2110037 Nil!36972)))

(assert (= (and d!966700 c!579434) b!3399149))

(assert (= (and d!966700 (not c!579434)) b!3399150))

(declare-fun m!3771041 () Bool)

(assert (=> b!3399149 m!3771041))

(assert (=> b!3399149 m!3771041))

(declare-fun m!3771045 () Bool)

(assert (=> b!3399149 m!3771045))

(declare-fun m!3771051 () Bool)

(assert (=> b!3399149 m!3771051))

(assert (=> b!3399149 m!3771045))

(assert (=> b!3399149 m!3771051))

(declare-fun m!3771055 () Bool)

(assert (=> b!3399149 m!3771055))

(assert (=> d!966334 d!966700))

(assert (=> d!966334 d!966506))

(assert (=> d!966334 d!966336))

(declare-fun d!966702 () Bool)

(declare-fun lt!1155889 () Int)

(assert (=> d!966702 (>= lt!1155889 0)))

(declare-fun e!2110038 () Int)

(assert (=> d!966702 (= lt!1155889 e!2110038)))

(declare-fun c!579435 () Bool)

(assert (=> d!966702 (= c!579435 ((_ is Nil!36972) (originalCharacters!6112 (h!42394 tokens!494))))))

(assert (=> d!966702 (= (size!27989 (originalCharacters!6112 (h!42394 tokens!494))) lt!1155889)))

(declare-fun b!3399151 () Bool)

(assert (=> b!3399151 (= e!2110038 0)))

(declare-fun b!3399152 () Bool)

(assert (=> b!3399152 (= e!2110038 (+ 1 (size!27989 (t!265513 (originalCharacters!6112 (h!42394 tokens!494))))))))

(assert (= (and d!966702 c!579435) b!3399151))

(assert (= (and d!966702 (not c!579435)) b!3399152))

(declare-fun m!3771067 () Bool)

(assert (=> b!3399152 m!3771067))

(assert (=> b!3398212 d!966702))

(declare-fun bm!245818 () Bool)

(declare-fun call!245823 () Bool)

(assert (=> bm!245818 (= call!245823 (ruleDisjointCharsFromAllFromOtherType!691 (h!42395 rules!2135) (t!265516 rules!2135)))))

(declare-fun b!3399177 () Bool)

(declare-fun e!2110055 () Bool)

(assert (=> b!3399177 (= e!2110055 call!245823)))

(declare-fun b!3399178 () Bool)

(declare-fun e!2110056 () Bool)

(assert (=> b!3399178 (= e!2110056 e!2110055)))

(declare-fun res!1375336 () Bool)

(assert (=> b!3399178 (= res!1375336 (not ((_ is Cons!36975) rules!2135)))))

(assert (=> b!3399178 (=> res!1375336 e!2110055)))

(declare-fun b!3399179 () Bool)

(declare-fun e!2110054 () Bool)

(assert (=> b!3399179 (= e!2110054 call!245823)))

(declare-fun d!966704 () Bool)

(declare-fun c!579444 () Bool)

(assert (=> d!966704 (= c!579444 (and ((_ is Cons!36975) rules!2135) (not (= (isSeparator!5398 (h!42395 rules!2135)) (isSeparator!5398 (h!42395 rules!2135))))))))

(assert (=> d!966704 (= (ruleDisjointCharsFromAllFromOtherType!691 (h!42395 rules!2135) rules!2135) e!2110056)))

(declare-fun b!3399180 () Bool)

(assert (=> b!3399180 (= e!2110056 e!2110054)))

(declare-fun res!1375337 () Bool)

(declare-fun rulesUseDisjointChars!329 (Rule!10596 Rule!10596) Bool)

(assert (=> b!3399180 (= res!1375337 (rulesUseDisjointChars!329 (h!42395 rules!2135) (h!42395 rules!2135)))))

(assert (=> b!3399180 (=> (not res!1375337) (not e!2110054))))

(assert (= (and d!966704 c!579444) b!3399180))

(assert (= (and d!966704 (not c!579444)) b!3399178))

(assert (= (and b!3399180 res!1375337) b!3399179))

(assert (= (and b!3399178 (not res!1375336)) b!3399177))

(assert (= (or b!3399179 b!3399177) bm!245818))

(declare-fun m!3771121 () Bool)

(assert (=> bm!245818 m!3771121))

(declare-fun m!3771123 () Bool)

(assert (=> b!3399180 m!3771123))

(assert (=> b!3398569 d!966704))

(declare-fun d!966724 () Bool)

(declare-fun lt!1155892 () Int)

(assert (=> d!966724 (>= lt!1155892 0)))

(declare-fun e!2110057 () Int)

(assert (=> d!966724 (= lt!1155892 e!2110057)))

(declare-fun c!579445 () Bool)

(assert (=> d!966724 (= c!579445 ((_ is Nil!36972) lt!1155466))))

(assert (=> d!966724 (= (size!27989 lt!1155466) lt!1155892)))

(declare-fun b!3399181 () Bool)

(assert (=> b!3399181 (= e!2110057 0)))

(declare-fun b!3399182 () Bool)

(assert (=> b!3399182 (= e!2110057 (+ 1 (size!27989 (t!265513 lt!1155466))))))

(assert (= (and d!966724 c!579445) b!3399181))

(assert (= (and d!966724 (not c!579445)) b!3399182))

(declare-fun m!3771125 () Bool)

(assert (=> b!3399182 m!3771125))

(assert (=> b!3398470 d!966724))

(assert (=> b!3398470 d!966628))

(declare-fun d!966728 () Bool)

(declare-fun lt!1155893 () Int)

(assert (=> d!966728 (>= lt!1155893 0)))

(declare-fun e!2110059 () Int)

(assert (=> d!966728 (= lt!1155893 e!2110059)))

(declare-fun c!579447 () Bool)

(assert (=> d!966728 (= c!579447 ((_ is Nil!36972) lt!1155335))))

(assert (=> d!966728 (= (size!27989 lt!1155335) lt!1155893)))

(declare-fun b!3399185 () Bool)

(assert (=> b!3399185 (= e!2110059 0)))

(declare-fun b!3399186 () Bool)

(assert (=> b!3399186 (= e!2110059 (+ 1 (size!27989 (t!265513 lt!1155335))))))

(assert (= (and d!966728 c!579447) b!3399185))

(assert (= (and d!966728 (not c!579447)) b!3399186))

(declare-fun m!3771131 () Bool)

(assert (=> b!3399186 m!3771131))

(assert (=> b!3398470 d!966728))

(declare-fun b!3399190 () Bool)

(declare-fun e!2110062 () List!37096)

(assert (=> b!3399190 (= e!2110062 (Cons!36972 (h!42392 (t!265513 lt!1155340)) (++!9061 (t!265513 (t!265513 lt!1155340)) lt!1155328)))))

(declare-fun lt!1155894 () List!37096)

(declare-fun e!2110061 () Bool)

(declare-fun b!3399192 () Bool)

(assert (=> b!3399192 (= e!2110061 (or (not (= lt!1155328 Nil!36972)) (= lt!1155894 (t!265513 lt!1155340))))))

(declare-fun d!966732 () Bool)

(assert (=> d!966732 e!2110061))

(declare-fun res!1375338 () Bool)

(assert (=> d!966732 (=> (not res!1375338) (not e!2110061))))

(assert (=> d!966732 (= res!1375338 (= (content!5111 lt!1155894) ((_ map or) (content!5111 (t!265513 lt!1155340)) (content!5111 lt!1155328))))))

(assert (=> d!966732 (= lt!1155894 e!2110062)))

(declare-fun c!579449 () Bool)

(assert (=> d!966732 (= c!579449 ((_ is Nil!36972) (t!265513 lt!1155340)))))

(assert (=> d!966732 (= (++!9061 (t!265513 lt!1155340) lt!1155328) lt!1155894)))

(declare-fun b!3399191 () Bool)

(declare-fun res!1375339 () Bool)

(assert (=> b!3399191 (=> (not res!1375339) (not e!2110061))))

(assert (=> b!3399191 (= res!1375339 (= (size!27989 lt!1155894) (+ (size!27989 (t!265513 lt!1155340)) (size!27989 lt!1155328))))))

(declare-fun b!3399189 () Bool)

(assert (=> b!3399189 (= e!2110062 lt!1155328)))

(assert (= (and d!966732 c!579449) b!3399189))

(assert (= (and d!966732 (not c!579449)) b!3399190))

(assert (= (and d!966732 res!1375338) b!3399191))

(assert (= (and b!3399191 res!1375339) b!3399192))

(declare-fun m!3771139 () Bool)

(assert (=> b!3399190 m!3771139))

(declare-fun m!3771141 () Bool)

(assert (=> d!966732 m!3771141))

(assert (=> d!966732 m!3770713))

(assert (=> d!966732 m!3769773))

(declare-fun m!3771143 () Bool)

(assert (=> b!3399191 m!3771143))

(assert (=> b!3399191 m!3770717))

(assert (=> b!3399191 m!3769779))

(assert (=> b!3398485 d!966732))

(declare-fun d!966738 () Bool)

(assert (=> d!966738 (= (isDefined!5740 lt!1155404) (not (isEmpty!21240 lt!1155404)))))

(declare-fun bs!556111 () Bool)

(assert (= bs!556111 d!966738))

(assert (=> bs!556111 m!3769521))

(assert (=> b!3398277 d!966738))

(declare-fun lt!1155896 () Bool)

(declare-fun d!966740 () Bool)

(assert (=> d!966740 (= lt!1155896 (isEmpty!21239 (list!13399 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)))))))))

(assert (=> d!966740 (= lt!1155896 (isEmpty!21245 (c!579207 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)))))))))

(assert (=> d!966740 (= (isEmpty!21243 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))))) lt!1155896)))

(declare-fun bs!556112 () Bool)

(assert (= bs!556112 d!966740))

(declare-fun m!3771151 () Bool)

(assert (=> bs!556112 m!3771151))

(assert (=> bs!556112 m!3771151))

(declare-fun m!3771153 () Bool)

(assert (=> bs!556112 m!3771153))

(declare-fun m!3771155 () Bool)

(assert (=> bs!556112 m!3771155))

(assert (=> b!3398534 d!966740))

(declare-fun b!3399201 () Bool)

(declare-fun res!1375342 () Bool)

(declare-fun e!2110069 () Bool)

(assert (=> b!3399201 (=> (not res!1375342) (not e!2110069))))

(declare-fun lt!1155897 () tuple2!36596)

(assert (=> b!3399201 (= res!1375342 (= (list!13402 (_1!21432 lt!1155897)) (_1!21435 (lexList!1420 thiss!18206 rules!2135 (list!13399 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)))))))))

(declare-fun b!3399202 () Bool)

(declare-fun e!2110067 () Bool)

(assert (=> b!3399202 (= e!2110067 (not (isEmpty!21233 (_1!21432 lt!1155897))))))

(declare-fun b!3399203 () Bool)

(declare-fun e!2110068 () Bool)

(assert (=> b!3399203 (= e!2110068 e!2110067)))

(declare-fun res!1375344 () Bool)

(assert (=> b!3399203 (= res!1375344 (< (size!27990 (_2!21432 lt!1155897)) (size!27990 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)))))))

(assert (=> b!3399203 (=> (not res!1375344) (not e!2110067))))

(declare-fun d!966744 () Bool)

(assert (=> d!966744 e!2110069))

(declare-fun res!1375343 () Bool)

(assert (=> d!966744 (=> (not res!1375343) (not e!2110069))))

(assert (=> d!966744 (= res!1375343 e!2110068)))

(declare-fun c!579453 () Bool)

(assert (=> d!966744 (= c!579453 (> (size!27991 (_1!21432 lt!1155897)) 0))))

(assert (=> d!966744 (= lt!1155897 (lexTailRecV2!1028 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)) (BalanceConc!21957 Empty!11171) (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)) (BalanceConc!21959 Empty!11172)))))

(assert (=> d!966744 (= (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))) lt!1155897)))

(declare-fun b!3399204 () Bool)

(assert (=> b!3399204 (= e!2110068 (= (_2!21432 lt!1155897) (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))))))

(declare-fun b!3399205 () Bool)

(assert (=> b!3399205 (= e!2110069 (= (list!13399 (_2!21432 lt!1155897)) (_2!21435 (lexList!1420 thiss!18206 rules!2135 (list!13399 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)))))))))

(assert (= (and d!966744 c!579453) b!3399203))

(assert (= (and d!966744 (not c!579453)) b!3399204))

(assert (= (and b!3399203 res!1375344) b!3399202))

(assert (= (and d!966744 res!1375343) b!3399201))

(assert (= (and b!3399201 res!1375342) b!3399205))

(declare-fun m!3771165 () Bool)

(assert (=> d!966744 m!3771165))

(assert (=> d!966744 m!3769887))

(assert (=> d!966744 m!3769887))

(declare-fun m!3771167 () Bool)

(assert (=> d!966744 m!3771167))

(declare-fun m!3771169 () Bool)

(assert (=> b!3399203 m!3771169))

(assert (=> b!3399203 m!3769887))

(declare-fun m!3771171 () Bool)

(assert (=> b!3399203 m!3771171))

(declare-fun m!3771173 () Bool)

(assert (=> b!3399202 m!3771173))

(declare-fun m!3771175 () Bool)

(assert (=> b!3399205 m!3771175))

(assert (=> b!3399205 m!3769887))

(declare-fun m!3771177 () Bool)

(assert (=> b!3399205 m!3771177))

(assert (=> b!3399205 m!3771177))

(declare-fun m!3771179 () Bool)

(assert (=> b!3399205 m!3771179))

(declare-fun m!3771181 () Bool)

(assert (=> b!3399201 m!3771181))

(assert (=> b!3399201 m!3769887))

(assert (=> b!3399201 m!3771177))

(assert (=> b!3399201 m!3771177))

(assert (=> b!3399201 m!3771179))

(assert (=> b!3398534 d!966744))

(declare-fun d!966754 () Bool)

(declare-fun lt!1155901 () BalanceConc!21956)

(assert (=> d!966754 (= (list!13399 lt!1155901) (printList!1535 thiss!18206 (list!13402 (singletonSeq!2494 separatorToken!241))))))

(assert (=> d!966754 (= lt!1155901 (printTailRec!1482 thiss!18206 (singletonSeq!2494 separatorToken!241) 0 (BalanceConc!21957 Empty!11171)))))

(assert (=> d!966754 (= (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)) lt!1155901)))

(declare-fun bs!556113 () Bool)

(assert (= bs!556113 d!966754))

(declare-fun m!3771185 () Bool)

(assert (=> bs!556113 m!3771185))

(assert (=> bs!556113 m!3769885))

(assert (=> bs!556113 m!3769893))

(assert (=> bs!556113 m!3769893))

(declare-fun m!3771191 () Bool)

(assert (=> bs!556113 m!3771191))

(assert (=> bs!556113 m!3769885))

(declare-fun m!3771197 () Bool)

(assert (=> bs!556113 m!3771197))

(assert (=> b!3398534 d!966754))

(declare-fun d!966756 () Bool)

(declare-fun e!2110075 () Bool)

(assert (=> d!966756 e!2110075))

(declare-fun res!1375347 () Bool)

(assert (=> d!966756 (=> (not res!1375347) (not e!2110075))))

(declare-fun lt!1155902 () BalanceConc!21958)

(assert (=> d!966756 (= res!1375347 (= (list!13402 lt!1155902) (Cons!36974 separatorToken!241 Nil!36974)))))

(assert (=> d!966756 (= lt!1155902 (singleton!1092 separatorToken!241))))

(assert (=> d!966756 (= (singletonSeq!2494 separatorToken!241) lt!1155902)))

(declare-fun b!3399216 () Bool)

(assert (=> b!3399216 (= e!2110075 (isBalanced!3373 (c!579208 lt!1155902)))))

(assert (= (and d!966756 res!1375347) b!3399216))

(declare-fun m!3771201 () Bool)

(assert (=> d!966756 m!3771201))

(declare-fun m!3771203 () Bool)

(assert (=> d!966756 m!3771203))

(declare-fun m!3771205 () Bool)

(assert (=> b!3399216 m!3771205))

(assert (=> b!3398534 d!966756))

(declare-fun d!966762 () Bool)

(assert (=> d!966762 (= (list!13399 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))) (list!13403 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))))

(declare-fun bs!556114 () Bool)

(assert (= bs!556114 d!966762))

(declare-fun m!3771207 () Bool)

(assert (=> bs!556114 m!3771207))

(assert (=> b!3398562 d!966762))

(declare-fun d!966764 () Bool)

(assert (=> d!966764 (= (isEmpty!21240 lt!1155404) (not ((_ is Some!7435) lt!1155404)))))

(assert (=> d!966202 d!966764))

(declare-fun d!966772 () Bool)

(declare-fun e!2110090 () Bool)

(assert (=> d!966772 e!2110090))

(declare-fun res!1375364 () Bool)

(assert (=> d!966772 (=> res!1375364 e!2110090)))

(declare-fun lt!1155912 () Bool)

(assert (=> d!966772 (= res!1375364 (not lt!1155912))))

(declare-fun e!2110089 () Bool)

(assert (=> d!966772 (= lt!1155912 e!2110089)))

(declare-fun res!1375363 () Bool)

(assert (=> d!966772 (=> res!1375363 e!2110089)))

(assert (=> d!966772 (= res!1375363 ((_ is Nil!36972) lt!1155340))))

(assert (=> d!966772 (= (isPrefix!2832 lt!1155340 lt!1155340) lt!1155912)))

(declare-fun b!3399234 () Bool)

(declare-fun e!2110088 () Bool)

(declare-fun tail!5376 (List!37096) List!37096)

(assert (=> b!3399234 (= e!2110088 (isPrefix!2832 (tail!5376 lt!1155340) (tail!5376 lt!1155340)))))

(declare-fun b!3399233 () Bool)

(declare-fun res!1375362 () Bool)

(assert (=> b!3399233 (=> (not res!1375362) (not e!2110088))))

(declare-fun head!7254 (List!37096) C!20500)

(assert (=> b!3399233 (= res!1375362 (= (head!7254 lt!1155340) (head!7254 lt!1155340)))))

(declare-fun b!3399235 () Bool)

(assert (=> b!3399235 (= e!2110090 (>= (size!27989 lt!1155340) (size!27989 lt!1155340)))))

(declare-fun b!3399232 () Bool)

(assert (=> b!3399232 (= e!2110089 e!2110088)))

(declare-fun res!1375361 () Bool)

(assert (=> b!3399232 (=> (not res!1375361) (not e!2110088))))

(assert (=> b!3399232 (= res!1375361 (not ((_ is Nil!36972) lt!1155340)))))

(assert (= (and d!966772 (not res!1375363)) b!3399232))

(assert (= (and b!3399232 res!1375361) b!3399233))

(assert (= (and b!3399233 res!1375362) b!3399234))

(assert (= (and d!966772 (not res!1375364)) b!3399235))

(declare-fun m!3771235 () Bool)

(assert (=> b!3399234 m!3771235))

(assert (=> b!3399234 m!3771235))

(assert (=> b!3399234 m!3771235))

(assert (=> b!3399234 m!3771235))

(declare-fun m!3771237 () Bool)

(assert (=> b!3399234 m!3771237))

(declare-fun m!3771239 () Bool)

(assert (=> b!3399233 m!3771239))

(assert (=> b!3399233 m!3771239))

(assert (=> b!3399235 m!3769391))

(assert (=> b!3399235 m!3769391))

(assert (=> d!966202 d!966772))

(declare-fun d!966784 () Bool)

(assert (=> d!966784 (isPrefix!2832 lt!1155340 lt!1155340)))

(declare-fun lt!1155915 () Unit!52137)

(declare-fun choose!19713 (List!37096 List!37096) Unit!52137)

(assert (=> d!966784 (= lt!1155915 (choose!19713 lt!1155340 lt!1155340))))

(assert (=> d!966784 (= (lemmaIsPrefixRefl!1791 lt!1155340 lt!1155340) lt!1155915)))

(declare-fun bs!556120 () Bool)

(assert (= bs!556120 d!966784))

(assert (=> bs!556120 m!3769523))

(declare-fun m!3771241 () Bool)

(assert (=> bs!556120 m!3771241))

(assert (=> d!966202 d!966784))

(declare-fun bs!556121 () Bool)

(declare-fun d!966786 () Bool)

(assert (= bs!556121 (and d!966786 d!966692)))

(declare-fun lambda!120935 () Int)

(assert (=> bs!556121 (= lambda!120935 lambda!120932)))

(assert (=> d!966786 true))

(declare-fun lt!1155921 () Bool)

(assert (=> d!966786 (= lt!1155921 (forall!7817 rules!2135 lambda!120935))))

(declare-fun e!2110104 () Bool)

(assert (=> d!966786 (= lt!1155921 e!2110104)))

(declare-fun res!1375381 () Bool)

(assert (=> d!966786 (=> res!1375381 e!2110104)))

(assert (=> d!966786 (= res!1375381 (not ((_ is Cons!36975) rules!2135)))))

(assert (=> d!966786 (= (rulesValidInductive!1841 thiss!18206 rules!2135) lt!1155921)))

(declare-fun b!3399252 () Bool)

(declare-fun e!2110105 () Bool)

(assert (=> b!3399252 (= e!2110104 e!2110105)))

(declare-fun res!1375382 () Bool)

(assert (=> b!3399252 (=> (not res!1375382) (not e!2110105))))

(declare-fun ruleValid!1714 (LexerInterface!4987 Rule!10596) Bool)

(assert (=> b!3399252 (= res!1375382 (ruleValid!1714 thiss!18206 (h!42395 rules!2135)))))

(declare-fun b!3399253 () Bool)

(assert (=> b!3399253 (= e!2110105 (rulesValidInductive!1841 thiss!18206 (t!265516 rules!2135)))))

(assert (= (and d!966786 (not res!1375381)) b!3399252))

(assert (= (and b!3399252 res!1375382) b!3399253))

(declare-fun m!3771249 () Bool)

(assert (=> d!966786 m!3771249))

(declare-fun m!3771251 () Bool)

(assert (=> b!3399252 m!3771251))

(declare-fun m!3771253 () Bool)

(assert (=> b!3399253 m!3771253))

(assert (=> d!966202 d!966786))

(declare-fun d!966790 () Bool)

(declare-fun res!1375383 () Bool)

(declare-fun e!2110106 () Bool)

(assert (=> d!966790 (=> res!1375383 e!2110106)))

(assert (=> d!966790 (= res!1375383 ((_ is Nil!36974) (list!13402 (seqFromList!3850 tokens!494))))))

(assert (=> d!966790 (= (forall!7813 (list!13402 (seqFromList!3850 tokens!494)) lambda!120904) e!2110106)))

(declare-fun b!3399254 () Bool)

(declare-fun e!2110107 () Bool)

(assert (=> b!3399254 (= e!2110106 e!2110107)))

(declare-fun res!1375384 () Bool)

(assert (=> b!3399254 (=> (not res!1375384) (not e!2110107))))

(assert (=> b!3399254 (= res!1375384 (dynLambda!15425 lambda!120904 (h!42394 (list!13402 (seqFromList!3850 tokens!494)))))))

(declare-fun b!3399255 () Bool)

(assert (=> b!3399255 (= e!2110107 (forall!7813 (t!265515 (list!13402 (seqFromList!3850 tokens!494))) lambda!120904))))

(assert (= (and d!966790 (not res!1375383)) b!3399254))

(assert (= (and b!3399254 res!1375384) b!3399255))

(declare-fun b_lambda!96929 () Bool)

(assert (=> (not b_lambda!96929) (not b!3399254)))

(declare-fun m!3771257 () Bool)

(assert (=> b!3399254 m!3771257))

(declare-fun m!3771259 () Bool)

(assert (=> b!3399255 m!3771259))

(assert (=> d!966250 d!966790))

(declare-fun d!966794 () Bool)

(assert (=> d!966794 (= (list!13402 (seqFromList!3850 tokens!494)) (list!13406 (c!579208 (seqFromList!3850 tokens!494))))))

(declare-fun bs!556123 () Bool)

(assert (= bs!556123 d!966794))

(declare-fun m!3771261 () Bool)

(assert (=> bs!556123 m!3771261))

(assert (=> d!966250 d!966794))

(declare-fun d!966796 () Bool)

(declare-fun lt!1155929 () Bool)

(assert (=> d!966796 (= lt!1155929 (forall!7813 (list!13402 (seqFromList!3850 tokens!494)) lambda!120904))))

(declare-fun forall!7818 (Conc!11172 Int) Bool)

(assert (=> d!966796 (= lt!1155929 (forall!7818 (c!579208 (seqFromList!3850 tokens!494)) lambda!120904))))

(assert (=> d!966796 (= (forall!7815 (seqFromList!3850 tokens!494) lambda!120904) lt!1155929)))

(declare-fun bs!556124 () Bool)

(assert (= bs!556124 d!966796))

(assert (=> bs!556124 m!3769275))

(assert (=> bs!556124 m!3769649))

(assert (=> bs!556124 m!3769649))

(assert (=> bs!556124 m!3769651))

(declare-fun m!3771263 () Bool)

(assert (=> bs!556124 m!3771263))

(assert (=> d!966250 d!966796))

(assert (=> d!966250 d!966258))

(declare-fun d!966798 () Bool)

(declare-fun c!579459 () Bool)

(assert (=> d!966798 (= c!579459 ((_ is Empty!11171) (c!579207 (charsOf!3412 separatorToken!241))))))

(declare-fun e!2110112 () List!37096)

(assert (=> d!966798 (= (list!13403 (c!579207 (charsOf!3412 separatorToken!241))) e!2110112)))

(declare-fun b!3399262 () Bool)

(declare-fun e!2110113 () List!37096)

(assert (=> b!3399262 (= e!2110113 (list!13407 (xs!14329 (c!579207 (charsOf!3412 separatorToken!241)))))))

(declare-fun b!3399261 () Bool)

(assert (=> b!3399261 (= e!2110112 e!2110113)))

(declare-fun c!579460 () Bool)

(assert (=> b!3399261 (= c!579460 ((_ is Leaf!17481) (c!579207 (charsOf!3412 separatorToken!241))))))

(declare-fun b!3399263 () Bool)

(assert (=> b!3399263 (= e!2110113 (++!9061 (list!13403 (left!28824 (c!579207 (charsOf!3412 separatorToken!241)))) (list!13403 (right!29154 (c!579207 (charsOf!3412 separatorToken!241))))))))

(declare-fun b!3399260 () Bool)

(assert (=> b!3399260 (= e!2110112 Nil!36972)))

(assert (= (and d!966798 c!579459) b!3399260))

(assert (= (and d!966798 (not c!579459)) b!3399261))

(assert (= (and b!3399261 c!579460) b!3399262))

(assert (= (and b!3399261 (not c!579460)) b!3399263))

(declare-fun m!3771265 () Bool)

(assert (=> b!3399262 m!3771265))

(declare-fun m!3771267 () Bool)

(assert (=> b!3399263 m!3771267))

(declare-fun m!3771269 () Bool)

(assert (=> b!3399263 m!3771269))

(assert (=> b!3399263 m!3771267))

(assert (=> b!3399263 m!3771269))

(declare-fun m!3771271 () Bool)

(assert (=> b!3399263 m!3771271))

(assert (=> d!966312 d!966798))

(declare-fun d!966800 () Bool)

(declare-fun lt!1155930 () Bool)

(assert (=> d!966800 (= lt!1155930 (isEmpty!21239 (list!13399 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))))))))))

(assert (=> d!966800 (= lt!1155930 (isEmpty!21245 (c!579207 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))))))))))

(assert (=> d!966800 (= (isEmpty!21243 (_2!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))))) lt!1155930)))

(declare-fun bs!556125 () Bool)

(assert (= bs!556125 d!966800))

(declare-fun m!3771273 () Bool)

(assert (=> bs!556125 m!3771273))

(assert (=> bs!556125 m!3771273))

(declare-fun m!3771275 () Bool)

(assert (=> bs!556125 m!3771275))

(declare-fun m!3771277 () Bool)

(assert (=> bs!556125 m!3771277))

(assert (=> b!3398573 d!966800))

(declare-fun b!3399266 () Bool)

(declare-fun res!1375391 () Bool)

(declare-fun e!2110118 () Bool)

(assert (=> b!3399266 (=> (not res!1375391) (not e!2110118))))

(declare-fun lt!1155932 () tuple2!36596)

(assert (=> b!3399266 (= res!1375391 (= (list!13402 (_1!21432 lt!1155932)) (_1!21435 (lexList!1420 thiss!18206 rules!2135 (list!13399 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))))))))))

(declare-fun b!3399267 () Bool)

(declare-fun e!2110116 () Bool)

(assert (=> b!3399267 (= e!2110116 (not (isEmpty!21233 (_1!21432 lt!1155932))))))

(declare-fun b!3399268 () Bool)

(declare-fun e!2110117 () Bool)

(assert (=> b!3399268 (= e!2110117 e!2110116)))

(declare-fun res!1375393 () Bool)

(assert (=> b!3399268 (= res!1375393 (< (size!27990 (_2!21432 lt!1155932)) (size!27990 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))))))))

(assert (=> b!3399268 (=> (not res!1375393) (not e!2110116))))

(declare-fun d!966802 () Bool)

(assert (=> d!966802 e!2110118))

(declare-fun res!1375392 () Bool)

(assert (=> d!966802 (=> (not res!1375392) (not e!2110118))))

(assert (=> d!966802 (= res!1375392 e!2110117)))

(declare-fun c!579461 () Bool)

(assert (=> d!966802 (= c!579461 (> (size!27991 (_1!21432 lt!1155932)) 0))))

(assert (=> d!966802 (= lt!1155932 (lexTailRecV2!1028 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))) (BalanceConc!21957 Empty!11171) (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))) (BalanceConc!21959 Empty!11172)))))

(assert (=> d!966802 (= (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))) lt!1155932)))

(declare-fun b!3399269 () Bool)

(assert (=> b!3399269 (= e!2110117 (= (_2!21432 lt!1155932) (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))))))

(declare-fun b!3399270 () Bool)

(assert (=> b!3399270 (= e!2110118 (= (list!13399 (_2!21432 lt!1155932)) (_2!21435 (lexList!1420 thiss!18206 rules!2135 (list!13399 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))))))))))

(assert (= (and d!966802 c!579461) b!3399268))

(assert (= (and d!966802 (not c!579461)) b!3399269))

(assert (= (and b!3399268 res!1375393) b!3399267))

(assert (= (and d!966802 res!1375392) b!3399266))

(assert (= (and b!3399266 res!1375391) b!3399270))

(declare-fun m!3771281 () Bool)

(assert (=> d!966802 m!3771281))

(assert (=> d!966802 m!3769987))

(assert (=> d!966802 m!3769987))

(declare-fun m!3771283 () Bool)

(assert (=> d!966802 m!3771283))

(declare-fun m!3771287 () Bool)

(assert (=> b!3399268 m!3771287))

(assert (=> b!3399268 m!3769987))

(declare-fun m!3771289 () Bool)

(assert (=> b!3399268 m!3771289))

(declare-fun m!3771291 () Bool)

(assert (=> b!3399267 m!3771291))

(declare-fun m!3771293 () Bool)

(assert (=> b!3399270 m!3771293))

(assert (=> b!3399270 m!3769987))

(declare-fun m!3771295 () Bool)

(assert (=> b!3399270 m!3771295))

(assert (=> b!3399270 m!3771295))

(declare-fun m!3771297 () Bool)

(assert (=> b!3399270 m!3771297))

(declare-fun m!3771299 () Bool)

(assert (=> b!3399266 m!3771299))

(assert (=> b!3399266 m!3769987))

(assert (=> b!3399266 m!3771295))

(assert (=> b!3399266 m!3771295))

(assert (=> b!3399266 m!3771297))

(assert (=> b!3398573 d!966802))

(declare-fun d!966810 () Bool)

(declare-fun lt!1155933 () BalanceConc!21956)

(assert (=> d!966810 (= (list!13399 lt!1155933) (printList!1535 thiss!18206 (list!13402 (singletonSeq!2494 (h!42394 tokens!494)))))))

(assert (=> d!966810 (= lt!1155933 (printTailRec!1482 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)) 0 (BalanceConc!21957 Empty!11171)))))

(assert (=> d!966810 (= (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))) lt!1155933)))

(declare-fun bs!556128 () Bool)

(assert (= bs!556128 d!966810))

(declare-fun m!3771301 () Bool)

(assert (=> bs!556128 m!3771301))

(assert (=> bs!556128 m!3769269))

(assert (=> bs!556128 m!3769993))

(assert (=> bs!556128 m!3769993))

(declare-fun m!3771303 () Bool)

(assert (=> bs!556128 m!3771303))

(assert (=> bs!556128 m!3769269))

(declare-fun m!3771305 () Bool)

(assert (=> bs!556128 m!3771305))

(assert (=> b!3398573 d!966810))

(assert (=> b!3398573 d!966338))

(declare-fun e!2110120 () List!37096)

(declare-fun b!3399272 () Bool)

(assert (=> b!3399272 (= e!2110120 (Cons!36972 (h!42392 (t!265513 (++!9061 lt!1155340 lt!1155328))) (++!9061 (t!265513 (t!265513 (++!9061 lt!1155340 lt!1155328))) lt!1155335)))))

(declare-fun e!2110119 () Bool)

(declare-fun b!3399274 () Bool)

(declare-fun lt!1155934 () List!37096)

(assert (=> b!3399274 (= e!2110119 (or (not (= lt!1155335 Nil!36972)) (= lt!1155934 (t!265513 (++!9061 lt!1155340 lt!1155328)))))))

(declare-fun d!966812 () Bool)

(assert (=> d!966812 e!2110119))

(declare-fun res!1375394 () Bool)

(assert (=> d!966812 (=> (not res!1375394) (not e!2110119))))

(assert (=> d!966812 (= res!1375394 (= (content!5111 lt!1155934) ((_ map or) (content!5111 (t!265513 (++!9061 lt!1155340 lt!1155328))) (content!5111 lt!1155335))))))

(assert (=> d!966812 (= lt!1155934 e!2110120)))

(declare-fun c!579462 () Bool)

(assert (=> d!966812 (= c!579462 ((_ is Nil!36972) (t!265513 (++!9061 lt!1155340 lt!1155328))))))

(assert (=> d!966812 (= (++!9061 (t!265513 (++!9061 lt!1155340 lt!1155328)) lt!1155335) lt!1155934)))

(declare-fun b!3399273 () Bool)

(declare-fun res!1375395 () Bool)

(assert (=> b!3399273 (=> (not res!1375395) (not e!2110119))))

(assert (=> b!3399273 (= res!1375395 (= (size!27989 lt!1155934) (+ (size!27989 (t!265513 (++!9061 lt!1155340 lt!1155328))) (size!27989 lt!1155335))))))

(declare-fun b!3399271 () Bool)

(assert (=> b!3399271 (= e!2110120 lt!1155335)))

(assert (= (and d!966812 c!579462) b!3399271))

(assert (= (and d!966812 (not c!579462)) b!3399272))

(assert (= (and d!966812 res!1375394) b!3399273))

(assert (= (and b!3399273 res!1375395) b!3399274))

(declare-fun m!3771307 () Bool)

(assert (=> b!3399272 m!3771307))

(declare-fun m!3771309 () Bool)

(assert (=> d!966812 m!3771309))

(assert (=> d!966812 m!3770665))

(assert (=> d!966812 m!3769829))

(declare-fun m!3771311 () Bool)

(assert (=> b!3399273 m!3771311))

(declare-fun m!3771313 () Bool)

(assert (=> b!3399273 m!3771313))

(assert (=> b!3399273 m!3769833))

(assert (=> b!3398477 d!966812))

(declare-fun d!966814 () Bool)

(declare-fun lt!1155935 () Int)

(assert (=> d!966814 (>= lt!1155935 0)))

(declare-fun e!2110121 () Int)

(assert (=> d!966814 (= lt!1155935 e!2110121)))

(declare-fun c!579463 () Bool)

(assert (=> d!966814 (= c!579463 ((_ is Nil!36972) lt!1155353))))

(assert (=> d!966814 (= (size!27989 lt!1155353) lt!1155935)))

(declare-fun b!3399275 () Bool)

(assert (=> b!3399275 (= e!2110121 0)))

(declare-fun b!3399276 () Bool)

(assert (=> b!3399276 (= e!2110121 (+ 1 (size!27989 (t!265513 lt!1155353))))))

(assert (= (and d!966814 c!579463) b!3399275))

(assert (= (and d!966814 (not c!579463)) b!3399276))

(declare-fun m!3771315 () Bool)

(assert (=> b!3399276 m!3771315))

(assert (=> b!3398205 d!966814))

(declare-fun d!966816 () Bool)

(declare-fun lt!1155936 () Int)

(assert (=> d!966816 (>= lt!1155936 0)))

(declare-fun e!2110122 () Int)

(assert (=> d!966816 (= lt!1155936 e!2110122)))

(declare-fun c!579464 () Bool)

(assert (=> d!966816 (= c!579464 ((_ is Nil!36972) lt!1155340))))

(assert (=> d!966816 (= (size!27989 lt!1155340) lt!1155936)))

(declare-fun b!3399277 () Bool)

(assert (=> b!3399277 (= e!2110122 0)))

(declare-fun b!3399278 () Bool)

(assert (=> b!3399278 (= e!2110122 (+ 1 (size!27989 (t!265513 lt!1155340))))))

(assert (= (and d!966816 c!579464) b!3399277))

(assert (= (and d!966816 (not c!579464)) b!3399278))

(assert (=> b!3399278 m!3770717))

(assert (=> b!3398205 d!966816))

(declare-fun d!966818 () Bool)

(declare-fun lt!1155937 () Int)

(assert (=> d!966818 (>= lt!1155937 0)))

(declare-fun e!2110123 () Int)

(assert (=> d!966818 (= lt!1155937 e!2110123)))

(declare-fun c!579465 () Bool)

(assert (=> d!966818 (= c!579465 ((_ is Nil!36972) lt!1155331))))

(assert (=> d!966818 (= (size!27989 lt!1155331) lt!1155937)))

(declare-fun b!3399279 () Bool)

(assert (=> b!3399279 (= e!2110123 0)))

(declare-fun b!3399280 () Bool)

(assert (=> b!3399280 (= e!2110123 (+ 1 (size!27989 (t!265513 lt!1155331))))))

(assert (= (and d!966818 c!579465) b!3399279))

(assert (= (and d!966818 (not c!579465)) b!3399280))

(declare-fun m!3771317 () Bool)

(assert (=> b!3399280 m!3771317))

(assert (=> b!3398205 d!966818))

(declare-fun d!966820 () Bool)

(declare-fun c!579469 () Bool)

(assert (=> d!966820 (= c!579469 ((_ is Node!11171) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun e!2110135 () Bool)

(assert (=> d!966820 (= (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))) e!2110135)))

(declare-fun b!3399295 () Bool)

(declare-fun inv!50079 (Conc!11171) Bool)

(assert (=> b!3399295 (= e!2110135 (inv!50079 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun b!3399296 () Bool)

(declare-fun e!2110136 () Bool)

(assert (=> b!3399296 (= e!2110135 e!2110136)))

(declare-fun res!1375404 () Bool)

(assert (=> b!3399296 (= res!1375404 (not ((_ is Leaf!17481) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))))))))

(assert (=> b!3399296 (=> res!1375404 e!2110136)))

(declare-fun b!3399297 () Bool)

(declare-fun inv!50080 (Conc!11171) Bool)

(assert (=> b!3399297 (= e!2110136 (inv!50080 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))))))

(assert (= (and d!966820 c!579469) b!3399295))

(assert (= (and d!966820 (not c!579469)) b!3399296))

(assert (= (and b!3399296 (not res!1375404)) b!3399297))

(declare-fun m!3771329 () Bool)

(assert (=> b!3399295 m!3771329))

(declare-fun m!3771331 () Bool)

(assert (=> b!3399297 m!3771331))

(assert (=> b!3398472 d!966820))

(declare-fun d!966826 () Bool)

(declare-fun lt!1155943 () Bool)

(declare-fun content!5114 (List!37099) (InoxSet Rule!10596))

(assert (=> d!966826 (= lt!1155943 (select (content!5114 rules!2135) (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))

(declare-fun e!2110141 () Bool)

(assert (=> d!966826 (= lt!1155943 e!2110141)))

(declare-fun res!1375409 () Bool)

(assert (=> d!966826 (=> (not res!1375409) (not e!2110141))))

(assert (=> d!966826 (= res!1375409 ((_ is Cons!36975) rules!2135))))

(assert (=> d!966826 (= (contains!6790 rules!2135 (rule!7958 (_1!21433 (get!11808 lt!1155404)))) lt!1155943)))

(declare-fun b!3399302 () Bool)

(declare-fun e!2110142 () Bool)

(assert (=> b!3399302 (= e!2110141 e!2110142)))

(declare-fun res!1375410 () Bool)

(assert (=> b!3399302 (=> res!1375410 e!2110142)))

(assert (=> b!3399302 (= res!1375410 (= (h!42395 rules!2135) (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))

(declare-fun b!3399303 () Bool)

(assert (=> b!3399303 (= e!2110142 (contains!6790 (t!265516 rules!2135) (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))

(assert (= (and d!966826 res!1375409) b!3399302))

(assert (= (and b!3399302 (not res!1375410)) b!3399303))

(declare-fun m!3771333 () Bool)

(assert (=> d!966826 m!3771333))

(declare-fun m!3771335 () Bool)

(assert (=> d!966826 m!3771335))

(declare-fun m!3771337 () Bool)

(assert (=> b!3399303 m!3771337))

(assert (=> b!3398273 d!966826))

(assert (=> b!3398273 d!966612))

(declare-fun b!3399344 () Bool)

(declare-fun res!1375440 () Bool)

(declare-fun e!2110162 () Bool)

(assert (=> b!3399344 (=> (not res!1375440) (not e!2110162))))

(assert (=> b!3399344 (= res!1375440 (isBalanced!3373 (left!28825 (c!579208 lt!1155502))))))

(declare-fun d!966828 () Bool)

(declare-fun res!1375442 () Bool)

(declare-fun e!2110161 () Bool)

(assert (=> d!966828 (=> res!1375442 e!2110161)))

(assert (=> d!966828 (= res!1375442 (not ((_ is Node!11172) (c!579208 lt!1155502))))))

(assert (=> d!966828 (= (isBalanced!3373 (c!579208 lt!1155502)) e!2110161)))

(declare-fun b!3399345 () Bool)

(assert (=> b!3399345 (= e!2110162 (not (isEmpty!21242 (right!29155 (c!579208 lt!1155502)))))))

(declare-fun b!3399346 () Bool)

(declare-fun res!1375443 () Bool)

(assert (=> b!3399346 (=> (not res!1375443) (not e!2110162))))

(assert (=> b!3399346 (= res!1375443 (not (isEmpty!21242 (left!28825 (c!579208 lt!1155502)))))))

(declare-fun b!3399347 () Bool)

(declare-fun res!1375441 () Bool)

(assert (=> b!3399347 (=> (not res!1375441) (not e!2110162))))

(assert (=> b!3399347 (= res!1375441 (isBalanced!3373 (right!29155 (c!579208 lt!1155502))))))

(declare-fun b!3399348 () Bool)

(assert (=> b!3399348 (= e!2110161 e!2110162)))

(declare-fun res!1375439 () Bool)

(assert (=> b!3399348 (=> (not res!1375439) (not e!2110162))))

(declare-fun height!1672 (Conc!11172) Int)

(assert (=> b!3399348 (= res!1375439 (<= (- 1) (- (height!1672 (left!28825 (c!579208 lt!1155502))) (height!1672 (right!29155 (c!579208 lt!1155502))))))))

(declare-fun b!3399349 () Bool)

(declare-fun res!1375444 () Bool)

(assert (=> b!3399349 (=> (not res!1375444) (not e!2110162))))

(assert (=> b!3399349 (= res!1375444 (<= (- (height!1672 (left!28825 (c!579208 lt!1155502))) (height!1672 (right!29155 (c!579208 lt!1155502)))) 1))))

(assert (= (and d!966828 (not res!1375442)) b!3399348))

(assert (= (and b!3399348 res!1375439) b!3399349))

(assert (= (and b!3399349 res!1375444) b!3399344))

(assert (= (and b!3399344 res!1375440) b!3399347))

(assert (= (and b!3399347 res!1375441) b!3399346))

(assert (= (and b!3399346 res!1375443) b!3399345))

(declare-fun m!3771339 () Bool)

(assert (=> b!3399349 m!3771339))

(declare-fun m!3771341 () Bool)

(assert (=> b!3399349 m!3771341))

(declare-fun m!3771343 () Bool)

(assert (=> b!3399347 m!3771343))

(declare-fun m!3771345 () Bool)

(assert (=> b!3399345 m!3771345))

(declare-fun m!3771347 () Bool)

(assert (=> b!3399346 m!3771347))

(assert (=> b!3399348 m!3771339))

(assert (=> b!3399348 m!3771341))

(declare-fun m!3771349 () Bool)

(assert (=> b!3399344 m!3771349))

(assert (=> b!3398546 d!966828))

(declare-fun d!966830 () Bool)

(declare-fun lt!1155947 () Int)

(assert (=> d!966830 (>= lt!1155947 0)))

(declare-fun e!2110170 () Int)

(assert (=> d!966830 (= lt!1155947 e!2110170)))

(declare-fun c!579479 () Bool)

(assert (=> d!966830 (= c!579479 ((_ is Nil!36972) (_2!21433 (get!11808 lt!1155404))))))

(assert (=> d!966830 (= (size!27989 (_2!21433 (get!11808 lt!1155404))) lt!1155947)))

(declare-fun b!3399364 () Bool)

(assert (=> b!3399364 (= e!2110170 0)))

(declare-fun b!3399365 () Bool)

(assert (=> b!3399365 (= e!2110170 (+ 1 (size!27989 (t!265513 (_2!21433 (get!11808 lt!1155404))))))))

(assert (= (and d!966830 c!579479) b!3399364))

(assert (= (and d!966830 (not c!579479)) b!3399365))

(declare-fun m!3771351 () Bool)

(assert (=> b!3399365 m!3771351))

(assert (=> b!3398270 d!966830))

(assert (=> b!3398270 d!966612))

(assert (=> b!3398270 d!966816))

(declare-fun d!966832 () Bool)

(declare-fun c!579480 () Bool)

(assert (=> d!966832 (= c!579480 ((_ is Nil!36972) lt!1155465))))

(declare-fun e!2110171 () (InoxSet C!20500))

(assert (=> d!966832 (= (content!5111 lt!1155465) e!2110171)))

(declare-fun b!3399366 () Bool)

(assert (=> b!3399366 (= e!2110171 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399367 () Bool)

(assert (=> b!3399367 (= e!2110171 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155465) true) (content!5111 (t!265513 lt!1155465))))))

(assert (= (and d!966832 c!579480) b!3399366))

(assert (= (and d!966832 (not c!579480)) b!3399367))

(declare-fun m!3771353 () Bool)

(assert (=> b!3399367 m!3771353))

(declare-fun m!3771355 () Bool)

(assert (=> b!3399367 m!3771355))

(assert (=> d!966304 d!966832))

(declare-fun d!966834 () Bool)

(declare-fun c!579481 () Bool)

(assert (=> d!966834 (= c!579481 ((_ is Nil!36972) (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)))))

(declare-fun e!2110172 () (InoxSet C!20500))

(assert (=> d!966834 (= (content!5111 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) e!2110172)))

(declare-fun b!3399368 () Bool)

(assert (=> b!3399368 (= e!2110172 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399369 () Bool)

(assert (=> b!3399369 (= e!2110172 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) true) (content!5111 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)))))))

(assert (= (and d!966834 c!579481) b!3399368))

(assert (= (and d!966834 (not c!579481)) b!3399369))

(declare-fun m!3771357 () Bool)

(assert (=> b!3399369 m!3771357))

(assert (=> b!3399369 m!3771015))

(assert (=> d!966304 d!966834))

(declare-fun d!966836 () Bool)

(declare-fun c!579482 () Bool)

(assert (=> d!966836 (= c!579482 ((_ is Nil!36972) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))

(declare-fun e!2110173 () (InoxSet C!20500))

(assert (=> d!966836 (= (content!5111 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)) e!2110173)))

(declare-fun b!3399370 () Bool)

(assert (=> b!3399370 (= e!2110173 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399371 () Bool)

(assert (=> b!3399371 (= e!2110173 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)) true) (content!5111 (t!265513 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(assert (= (and d!966836 c!579482) b!3399370))

(assert (= (and d!966836 (not c!579482)) b!3399371))

(declare-fun m!3771359 () Bool)

(assert (=> b!3399371 m!3771359))

(declare-fun m!3771363 () Bool)

(assert (=> b!3399371 m!3771363))

(assert (=> d!966304 d!966836))

(declare-fun d!966838 () Bool)

(assert (=> d!966838 (= (isEmpty!21239 (originalCharacters!6112 separatorToken!241)) ((_ is Nil!36972) (originalCharacters!6112 separatorToken!241)))))

(assert (=> d!966350 d!966838))

(declare-fun d!966840 () Bool)

(assert (=> d!966840 (= (isEmpty!21240 (maxPrefix!2553 thiss!18206 rules!2135 lt!1155340)) (not ((_ is Some!7435) (maxPrefix!2553 thiss!18206 rules!2135 lt!1155340))))))

(assert (=> d!966200 d!966840))

(declare-fun d!966842 () Bool)

(assert (=> d!966842 (= (list!13399 lt!1155464) (list!13403 (c!579207 lt!1155464)))))

(declare-fun bs!556129 () Bool)

(assert (= bs!556129 d!966842))

(declare-fun m!3771371 () Bool)

(assert (=> bs!556129 m!3771371))

(assert (=> d!966300 d!966842))

(declare-fun d!966844 () Bool)

(declare-fun charsToInt!0 (List!37097) (_ BitVec 32))

(assert (=> d!966844 (= (inv!16 (value!174303 (h!42394 tokens!494))) (= (charsToInt!0 (text!39843 (value!174303 (h!42394 tokens!494)))) (value!174294 (value!174303 (h!42394 tokens!494)))))))

(declare-fun bs!556131 () Bool)

(assert (= bs!556131 d!966844))

(declare-fun m!3771383 () Bool)

(assert (=> bs!556131 m!3771383))

(assert (=> b!3398561 d!966844))

(assert (=> d!966196 d!966316))

(declare-fun e!2110175 () List!37096)

(declare-fun b!3399373 () Bool)

(assert (=> b!3399373 (= e!2110175 (Cons!36972 (h!42392 lt!1155340) (++!9061 (t!265513 lt!1155340) (++!9061 lt!1155328 lt!1155335))))))

(declare-fun e!2110174 () Bool)

(declare-fun lt!1155948 () List!37096)

(declare-fun b!3399375 () Bool)

(assert (=> b!3399375 (= e!2110174 (or (not (= (++!9061 lt!1155328 lt!1155335) Nil!36972)) (= lt!1155948 lt!1155340)))))

(declare-fun d!966850 () Bool)

(assert (=> d!966850 e!2110174))

(declare-fun res!1375453 () Bool)

(assert (=> d!966850 (=> (not res!1375453) (not e!2110174))))

(assert (=> d!966850 (= res!1375453 (= (content!5111 lt!1155948) ((_ map or) (content!5111 lt!1155340) (content!5111 (++!9061 lt!1155328 lt!1155335)))))))

(assert (=> d!966850 (= lt!1155948 e!2110175)))

(declare-fun c!579483 () Bool)

(assert (=> d!966850 (= c!579483 ((_ is Nil!36972) lt!1155340))))

(assert (=> d!966850 (= (++!9061 lt!1155340 (++!9061 lt!1155328 lt!1155335)) lt!1155948)))

(declare-fun b!3399374 () Bool)

(declare-fun res!1375454 () Bool)

(assert (=> b!3399374 (=> (not res!1375454) (not e!2110174))))

(assert (=> b!3399374 (= res!1375454 (= (size!27989 lt!1155948) (+ (size!27989 lt!1155340) (size!27989 (++!9061 lt!1155328 lt!1155335)))))))

(declare-fun b!3399372 () Bool)

(assert (=> b!3399372 (= e!2110175 (++!9061 lt!1155328 lt!1155335))))

(assert (= (and d!966850 c!579483) b!3399372))

(assert (= (and d!966850 (not c!579483)) b!3399373))

(assert (= (and d!966850 res!1375453) b!3399374))

(assert (= (and b!3399374 res!1375454) b!3399375))

(assert (=> b!3399373 m!3769253))

(declare-fun m!3771387 () Bool)

(assert (=> b!3399373 m!3771387))

(declare-fun m!3771389 () Bool)

(assert (=> d!966850 m!3771389))

(assert (=> d!966850 m!3769385))

(assert (=> d!966850 m!3769253))

(declare-fun m!3771391 () Bool)

(assert (=> d!966850 m!3771391))

(declare-fun m!3771393 () Bool)

(assert (=> b!3399374 m!3771393))

(assert (=> b!3399374 m!3769391))

(assert (=> b!3399374 m!3769253))

(declare-fun m!3771395 () Bool)

(assert (=> b!3399374 m!3771395))

(assert (=> d!966196 d!966850))

(assert (=> d!966196 d!966310))

(assert (=> d!966196 d!966318))

(declare-fun d!966854 () Bool)

(assert (=> d!966854 (= (++!9061 (++!9061 lt!1155340 lt!1155328) lt!1155335) (++!9061 lt!1155340 (++!9061 lt!1155328 lt!1155335)))))

(assert (=> d!966854 true))

(declare-fun _$52!1800 () Unit!52137)

(assert (=> d!966854 (= (choose!19706 lt!1155340 lt!1155328 lt!1155335) _$52!1800)))

(declare-fun bs!556134 () Bool)

(assert (= bs!556134 d!966854))

(assert (=> bs!556134 m!3769237))

(assert (=> bs!556134 m!3769237))

(assert (=> bs!556134 m!3769239))

(assert (=> bs!556134 m!3769253))

(assert (=> bs!556134 m!3769253))

(assert (=> bs!556134 m!3769397))

(assert (=> d!966196 d!966854))

(declare-fun d!966868 () Bool)

(declare-fun c!579489 () Bool)

(assert (=> d!966868 (= c!579489 ((_ is Nil!36972) lt!1155469))))

(declare-fun e!2110181 () (InoxSet C!20500))

(assert (=> d!966868 (= (content!5111 lt!1155469) e!2110181)))

(declare-fun b!3399386 () Bool)

(assert (=> b!3399386 (= e!2110181 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399387 () Bool)

(assert (=> b!3399387 (= e!2110181 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155469) true) (content!5111 (t!265513 lt!1155469))))))

(assert (= (and d!966868 c!579489) b!3399386))

(assert (= (and d!966868 (not c!579489)) b!3399387))

(declare-fun m!3771411 () Bool)

(assert (=> b!3399387 m!3771411))

(declare-fun m!3771413 () Bool)

(assert (=> b!3399387 m!3771413))

(assert (=> d!966318 d!966868))

(declare-fun d!966870 () Bool)

(declare-fun c!579490 () Bool)

(assert (=> d!966870 (= c!579490 ((_ is Nil!36972) lt!1155340))))

(declare-fun e!2110182 () (InoxSet C!20500))

(assert (=> d!966870 (= (content!5111 lt!1155340) e!2110182)))

(declare-fun b!3399388 () Bool)

(assert (=> b!3399388 (= e!2110182 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399389 () Bool)

(assert (=> b!3399389 (= e!2110182 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155340) true) (content!5111 (t!265513 lt!1155340))))))

(assert (= (and d!966870 c!579490) b!3399388))

(assert (= (and d!966870 (not c!579490)) b!3399389))

(declare-fun m!3771415 () Bool)

(assert (=> b!3399389 m!3771415))

(assert (=> b!3399389 m!3770713))

(assert (=> d!966318 d!966870))

(assert (=> d!966318 d!966496))

(declare-fun bs!556135 () Bool)

(declare-fun d!966872 () Bool)

(assert (= bs!556135 (and d!966872 d!966622)))

(declare-fun lambda!120939 () Int)

(assert (=> bs!556135 (= (= (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (= lambda!120939 lambda!120929))))

(assert (=> d!966872 true))

(assert (=> d!966872 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))) (dynLambda!15434 order!19533 lambda!120939))))

(assert (=> d!966872 (= (equivClasses!2154 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))) (Forall2!922 lambda!120939))))

(declare-fun bs!556136 () Bool)

(assert (= bs!556136 d!966872))

(declare-fun m!3771417 () Bool)

(assert (=> bs!556136 m!3771417))

(assert (=> b!3398556 d!966872))

(declare-fun d!966874 () Bool)

(declare-fun lt!1155951 () Int)

(assert (=> d!966874 (>= lt!1155951 0)))

(declare-fun e!2110183 () Int)

(assert (=> d!966874 (= lt!1155951 e!2110183)))

(declare-fun c!579491 () Bool)

(assert (=> d!966874 (= c!579491 ((_ is Nil!36972) lt!1155465))))

(assert (=> d!966874 (= (size!27989 lt!1155465) lt!1155951)))

(declare-fun b!3399390 () Bool)

(assert (=> b!3399390 (= e!2110183 0)))

(declare-fun b!3399391 () Bool)

(assert (=> b!3399391 (= e!2110183 (+ 1 (size!27989 (t!265513 lt!1155465))))))

(assert (= (and d!966874 c!579491) b!3399390))

(assert (= (and d!966874 (not c!579491)) b!3399391))

(declare-fun m!3771419 () Bool)

(assert (=> b!3399391 m!3771419))

(assert (=> b!3398452 d!966874))

(declare-fun d!966876 () Bool)

(declare-fun lt!1155952 () Int)

(assert (=> d!966876 (>= lt!1155952 0)))

(declare-fun e!2110184 () Int)

(assert (=> d!966876 (= lt!1155952 e!2110184)))

(declare-fun c!579493 () Bool)

(assert (=> d!966876 (= c!579493 ((_ is Nil!36972) (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)))))

(assert (=> d!966876 (= (size!27989 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)) lt!1155952)))

(declare-fun b!3399392 () Bool)

(assert (=> b!3399392 (= e!2110184 0)))

(declare-fun b!3399393 () Bool)

(assert (=> b!3399393 (= e!2110184 (+ 1 (size!27989 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))) lt!1155328)))))))

(assert (= (and d!966876 c!579493) b!3399392))

(assert (= (and d!966876 (not c!579493)) b!3399393))

(assert (=> b!3399393 m!3771021))

(assert (=> b!3398452 d!966876))

(declare-fun d!966878 () Bool)

(declare-fun lt!1155953 () Int)

(assert (=> d!966878 (>= lt!1155953 0)))

(declare-fun e!2110185 () Int)

(assert (=> d!966878 (= lt!1155953 e!2110185)))

(declare-fun c!579494 () Bool)

(assert (=> d!966878 (= c!579494 ((_ is Nil!36972) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))

(assert (=> d!966878 (= (size!27989 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)) lt!1155953)))

(declare-fun b!3399394 () Bool)

(assert (=> b!3399394 (= e!2110185 0)))

(declare-fun b!3399395 () Bool)

(assert (=> b!3399395 (= e!2110185 (+ 1 (size!27989 (t!265513 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 tokens!494)) separatorToken!241)))))))

(assert (= (and d!966878 c!579494) b!3399394))

(assert (= (and d!966878 (not c!579494)) b!3399395))

(declare-fun m!3771421 () Bool)

(assert (=> b!3399395 m!3771421))

(assert (=> b!3398452 d!966878))

(declare-fun d!966880 () Bool)

(declare-fun lt!1155954 () Bool)

(assert (=> d!966880 (= lt!1155954 (isEmpty!21241 (list!13402 (_1!21432 lt!1155457))))))

(assert (=> d!966880 (= lt!1155954 (isEmpty!21242 (c!579208 (_1!21432 lt!1155457))))))

(assert (=> d!966880 (= (isEmpty!21233 (_1!21432 lt!1155457)) lt!1155954)))

(declare-fun bs!556137 () Bool)

(assert (= bs!556137 d!966880))

(assert (=> bs!556137 m!3769697))

(assert (=> bs!556137 m!3769697))

(declare-fun m!3771423 () Bool)

(assert (=> bs!556137 m!3771423))

(declare-fun m!3771425 () Bool)

(assert (=> bs!556137 m!3771425))

(assert (=> b!3398395 d!966880))

(declare-fun d!966882 () Bool)

(declare-fun c!579495 () Bool)

(assert (=> d!966882 (= c!579495 ((_ is Empty!11171) (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(declare-fun e!2110188 () List!37096)

(assert (=> d!966882 (= (list!13403 (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) e!2110188)))

(declare-fun b!3399400 () Bool)

(declare-fun e!2110189 () List!37096)

(assert (=> b!3399400 (= e!2110189 (list!13407 (xs!14329 (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun b!3399399 () Bool)

(assert (=> b!3399399 (= e!2110188 e!2110189)))

(declare-fun c!579496 () Bool)

(assert (=> b!3399399 (= c!579496 ((_ is Leaf!17481) (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))

(declare-fun b!3399401 () Bool)

(assert (=> b!3399401 (= e!2110189 (++!9061 (list!13403 (left!28824 (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))) (list!13403 (right!29154 (c!579207 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))))

(declare-fun b!3399398 () Bool)

(assert (=> b!3399398 (= e!2110188 Nil!36972)))

(assert (= (and d!966882 c!579495) b!3399398))

(assert (= (and d!966882 (not c!579495)) b!3399399))

(assert (= (and b!3399399 c!579496) b!3399400))

(assert (= (and b!3399399 (not c!579496)) b!3399401))

(declare-fun m!3771427 () Bool)

(assert (=> b!3399400 m!3771427))

(declare-fun m!3771429 () Bool)

(assert (=> b!3399401 m!3771429))

(declare-fun m!3771431 () Bool)

(assert (=> b!3399401 m!3771431))

(assert (=> b!3399401 m!3771429))

(assert (=> b!3399401 m!3771431))

(declare-fun m!3771433 () Bool)

(assert (=> b!3399401 m!3771433))

(assert (=> d!966308 d!966882))

(declare-fun d!966884 () Bool)

(declare-fun c!579497 () Bool)

(assert (=> d!966884 (= c!579497 ((_ is Nil!36972) lt!1155353))))

(declare-fun e!2110190 () (InoxSet C!20500))

(assert (=> d!966884 (= (content!5111 lt!1155353) e!2110190)))

(declare-fun b!3399402 () Bool)

(assert (=> b!3399402 (= e!2110190 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399403 () Bool)

(assert (=> b!3399403 (= e!2110190 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155353) true) (content!5111 (t!265513 lt!1155353))))))

(assert (= (and d!966884 c!579497) b!3399402))

(assert (= (and d!966884 (not c!579497)) b!3399403))

(declare-fun m!3771435 () Bool)

(assert (=> b!3399403 m!3771435))

(declare-fun m!3771437 () Bool)

(assert (=> b!3399403 m!3771437))

(assert (=> d!966194 d!966884))

(assert (=> d!966194 d!966870))

(declare-fun d!966886 () Bool)

(declare-fun c!579498 () Bool)

(assert (=> d!966886 (= c!579498 ((_ is Nil!36972) lt!1155331))))

(declare-fun e!2110191 () (InoxSet C!20500))

(assert (=> d!966886 (= (content!5111 lt!1155331) e!2110191)))

(declare-fun b!3399404 () Bool)

(assert (=> b!3399404 (= e!2110191 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399405 () Bool)

(assert (=> b!3399405 (= e!2110191 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155331) true) (content!5111 (t!265513 lt!1155331))))))

(assert (= (and d!966886 c!579498) b!3399404))

(assert (= (and d!966886 (not c!579498)) b!3399405))

(declare-fun m!3771439 () Bool)

(assert (=> b!3399405 m!3771439))

(declare-fun m!3771441 () Bool)

(assert (=> b!3399405 m!3771441))

(assert (=> d!966194 d!966886))

(declare-fun d!966888 () Bool)

(declare-fun charsToBigInt!1 (List!37097) Int)

(assert (=> d!966888 (= (inv!17 (value!174303 (h!42394 tokens!494))) (= (charsToBigInt!1 (text!39844 (value!174303 (h!42394 tokens!494)))) (value!174295 (value!174303 (h!42394 tokens!494)))))))

(declare-fun bs!556138 () Bool)

(assert (= bs!556138 d!966888))

(declare-fun m!3771457 () Bool)

(assert (=> bs!556138 m!3771457))

(assert (=> b!3398557 d!966888))

(declare-fun d!966894 () Bool)

(declare-fun lt!1155978 () List!37096)

(assert (=> d!966894 (= lt!1155978 (++!9061 (list!13399 (BalanceConc!21957 Empty!11171)) (printList!1535 thiss!18206 (dropList!1177 lt!1155326 0))))))

(declare-fun e!2110203 () List!37096)

(assert (=> d!966894 (= lt!1155978 e!2110203)))

(declare-fun c!579504 () Bool)

(assert (=> d!966894 (= c!579504 ((_ is Cons!36974) (dropList!1177 lt!1155326 0)))))

(assert (=> d!966894 (= (printListTailRec!660 thiss!18206 (dropList!1177 lt!1155326 0) (list!13399 (BalanceConc!21957 Empty!11171))) lt!1155978)))

(declare-fun b!3399422 () Bool)

(assert (=> b!3399422 (= e!2110203 (printListTailRec!660 thiss!18206 (t!265515 (dropList!1177 lt!1155326 0)) (++!9061 (list!13399 (BalanceConc!21957 Empty!11171)) (list!13399 (charsOf!3412 (h!42394 (dropList!1177 lt!1155326 0)))))))))

(declare-fun lt!1155977 () List!37096)

(assert (=> b!3399422 (= lt!1155977 (list!13399 (charsOf!3412 (h!42394 (dropList!1177 lt!1155326 0)))))))

(declare-fun lt!1155976 () List!37096)

(assert (=> b!3399422 (= lt!1155976 (printList!1535 thiss!18206 (t!265515 (dropList!1177 lt!1155326 0))))))

(declare-fun lt!1155974 () Unit!52137)

(assert (=> b!3399422 (= lt!1155974 (lemmaConcatAssociativity!1900 (list!13399 (BalanceConc!21957 Empty!11171)) lt!1155977 lt!1155976))))

(assert (=> b!3399422 (= (++!9061 (++!9061 (list!13399 (BalanceConc!21957 Empty!11171)) lt!1155977) lt!1155976) (++!9061 (list!13399 (BalanceConc!21957 Empty!11171)) (++!9061 lt!1155977 lt!1155976)))))

(declare-fun lt!1155975 () Unit!52137)

(assert (=> b!3399422 (= lt!1155975 lt!1155974)))

(declare-fun b!3399423 () Bool)

(assert (=> b!3399423 (= e!2110203 (list!13399 (BalanceConc!21957 Empty!11171)))))

(assert (= (and d!966894 c!579504) b!3399422))

(assert (= (and d!966894 (not c!579504)) b!3399423))

(assert (=> d!966894 m!3769909))

(declare-fun m!3771481 () Bool)

(assert (=> d!966894 m!3771481))

(assert (=> d!966894 m!3769911))

(assert (=> d!966894 m!3771481))

(declare-fun m!3771483 () Bool)

(assert (=> d!966894 m!3771483))

(declare-fun m!3771485 () Bool)

(assert (=> b!3399422 m!3771485))

(declare-fun m!3771487 () Bool)

(assert (=> b!3399422 m!3771487))

(declare-fun m!3771489 () Bool)

(assert (=> b!3399422 m!3771489))

(assert (=> b!3399422 m!3769911))

(declare-fun m!3771491 () Bool)

(assert (=> b!3399422 m!3771491))

(declare-fun m!3771493 () Bool)

(assert (=> b!3399422 m!3771493))

(declare-fun m!3771495 () Bool)

(assert (=> b!3399422 m!3771495))

(declare-fun m!3771497 () Bool)

(assert (=> b!3399422 m!3771497))

(assert (=> b!3399422 m!3769911))

(assert (=> b!3399422 m!3771487))

(declare-fun m!3771499 () Bool)

(assert (=> b!3399422 m!3771499))

(assert (=> b!3399422 m!3771485))

(declare-fun m!3771501 () Bool)

(assert (=> b!3399422 m!3771501))

(assert (=> b!3399422 m!3769911))

(assert (=> b!3399422 m!3771501))

(assert (=> b!3399422 m!3771495))

(assert (=> b!3399422 m!3769911))

(declare-fun m!3771505 () Bool)

(assert (=> b!3399422 m!3771505))

(assert (=> b!3399422 m!3771491))

(assert (=> d!966336 d!966894))

(declare-fun d!966910 () Bool)

(assert (=> d!966910 (= (list!13399 lt!1155495) (list!13403 (c!579207 lt!1155495)))))

(declare-fun bs!556142 () Bool)

(assert (= bs!556142 d!966910))

(declare-fun m!3771511 () Bool)

(assert (=> bs!556142 m!3771511))

(assert (=> d!966336 d!966910))

(declare-fun d!966912 () Bool)

(assert (=> d!966912 (= (dropList!1177 lt!1155326 0) (drop!1977 (list!13406 (c!579208 lt!1155326)) 0))))

(declare-fun bs!556143 () Bool)

(assert (= bs!556143 d!966912))

(assert (=> bs!556143 m!3770439))

(assert (=> bs!556143 m!3770439))

(declare-fun m!3771527 () Bool)

(assert (=> bs!556143 m!3771527))

(assert (=> d!966336 d!966912))

(declare-fun d!966922 () Bool)

(assert (=> d!966922 (= (list!13399 (BalanceConc!21957 Empty!11171)) (list!13403 (c!579207 (BalanceConc!21957 Empty!11171))))))

(declare-fun bs!556144 () Bool)

(assert (= bs!556144 d!966922))

(declare-fun m!3771529 () Bool)

(assert (=> bs!556144 m!3771529))

(assert (=> d!966336 d!966922))

(declare-fun d!966924 () Bool)

(declare-fun lt!1155984 () Int)

(assert (=> d!966924 (= lt!1155984 (size!27995 (list!13402 lt!1155326)))))

(assert (=> d!966924 (= lt!1155984 (size!27996 (c!579208 lt!1155326)))))

(assert (=> d!966924 (= (size!27991 lt!1155326) lt!1155984)))

(declare-fun bs!556145 () Bool)

(assert (= bs!556145 d!966924))

(assert (=> bs!556145 m!3769905))

(assert (=> bs!556145 m!3769905))

(declare-fun m!3771531 () Bool)

(assert (=> bs!556145 m!3771531))

(declare-fun m!3771533 () Bool)

(assert (=> bs!556145 m!3771533))

(assert (=> d!966336 d!966924))

(declare-fun d!966926 () Bool)

(declare-fun res!1375469 () Bool)

(declare-fun e!2110211 () Bool)

(assert (=> d!966926 (=> res!1375469 e!2110211)))

(assert (=> d!966926 (= res!1375469 (not ((_ is Cons!36975) (t!265516 rules!2135))))))

(assert (=> d!966926 (= (sepAndNonSepRulesDisjointChars!1592 rules!2135 (t!265516 rules!2135)) e!2110211)))

(declare-fun b!3399436 () Bool)

(declare-fun e!2110212 () Bool)

(assert (=> b!3399436 (= e!2110211 e!2110212)))

(declare-fun res!1375470 () Bool)

(assert (=> b!3399436 (=> (not res!1375470) (not e!2110212))))

(assert (=> b!3399436 (= res!1375470 (ruleDisjointCharsFromAllFromOtherType!691 (h!42395 (t!265516 rules!2135)) rules!2135))))

(declare-fun b!3399437 () Bool)

(assert (=> b!3399437 (= e!2110212 (sepAndNonSepRulesDisjointChars!1592 rules!2135 (t!265516 (t!265516 rules!2135))))))

(assert (= (and d!966926 (not res!1375469)) b!3399436))

(assert (= (and b!3399436 res!1375470) b!3399437))

(declare-fun m!3771535 () Bool)

(assert (=> b!3399436 m!3771535))

(declare-fun m!3771537 () Bool)

(assert (=> b!3399437 m!3771537))

(assert (=> b!3398570 d!966926))

(declare-fun d!966928 () Bool)

(assert (=> d!966928 (= (isEmpty!21241 (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))) ((_ is Nil!36974) (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))))))

(assert (=> d!966266 d!966928))

(declare-fun d!966930 () Bool)

(assert (=> d!966930 (= (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)))) (list!13406 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))))))

(declare-fun bs!556146 () Bool)

(assert (= bs!556146 d!966930))

(declare-fun m!3771539 () Bool)

(assert (=> bs!556146 m!3771539))

(assert (=> d!966266 d!966930))

(declare-fun d!966932 () Bool)

(declare-fun lt!1155987 () Bool)

(assert (=> d!966932 (= lt!1155987 (isEmpty!21241 (list!13406 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340)))))))))

(assert (=> d!966932 (= lt!1155987 (= (size!27996 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))) 0))))

(assert (=> d!966932 (= (isEmpty!21242 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (seqFromList!3849 lt!1155340))))) lt!1155987)))

(declare-fun bs!556147 () Bool)

(assert (= bs!556147 d!966932))

(assert (=> bs!556147 m!3771539))

(assert (=> bs!556147 m!3771539))

(declare-fun m!3771541 () Bool)

(assert (=> bs!556147 m!3771541))

(declare-fun m!3771543 () Bool)

(assert (=> bs!556147 m!3771543))

(assert (=> d!966266 d!966932))

(declare-fun b!3399466 () Bool)

(declare-fun res!1375488 () Bool)

(declare-fun e!2110229 () Bool)

(assert (=> b!3399466 (=> res!1375488 e!2110229)))

(assert (=> b!3399466 (= res!1375488 (not (isEmpty!21239 (tail!5376 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))))))))

(declare-fun b!3399467 () Bool)

(declare-fun res!1375492 () Bool)

(declare-fun e!2110227 () Bool)

(assert (=> b!3399467 (=> (not res!1375492) (not e!2110227))))

(assert (=> b!3399467 (= res!1375492 (isEmpty!21239 (tail!5376 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))))))))

(declare-fun b!3399468 () Bool)

(assert (=> b!3399468 (= e!2110229 (not (= (head!7254 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) (c!579206 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))))))))

(declare-fun b!3399469 () Bool)

(declare-fun res!1375493 () Bool)

(declare-fun e!2110232 () Bool)

(assert (=> b!3399469 (=> res!1375493 e!2110232)))

(assert (=> b!3399469 (= res!1375493 e!2110227)))

(declare-fun res!1375487 () Bool)

(assert (=> b!3399469 (=> (not res!1375487) (not e!2110227))))

(declare-fun lt!1155990 () Bool)

(assert (=> b!3399469 (= res!1375487 lt!1155990)))

(declare-fun b!3399470 () Bool)

(declare-fun e!2110231 () Bool)

(declare-fun e!2110230 () Bool)

(assert (=> b!3399470 (= e!2110231 e!2110230)))

(declare-fun c!579516 () Bool)

(assert (=> b!3399470 (= c!579516 ((_ is EmptyLang!10157) (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun b!3399471 () Bool)

(declare-fun res!1375491 () Bool)

(assert (=> b!3399471 (=> res!1375491 e!2110232)))

(assert (=> b!3399471 (= res!1375491 (not ((_ is ElementMatch!10157) (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))))

(assert (=> b!3399471 (= e!2110230 e!2110232)))

(declare-fun d!966934 () Bool)

(assert (=> d!966934 e!2110231))

(declare-fun c!579517 () Bool)

(assert (=> d!966934 (= c!579517 ((_ is EmptyExpr!10157) (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun e!2110233 () Bool)

(assert (=> d!966934 (= lt!1155990 e!2110233)))

(declare-fun c!579515 () Bool)

(assert (=> d!966934 (= c!579515 (isEmpty!21239 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun validRegex!4616 (Regex!10157) Bool)

(assert (=> d!966934 (validRegex!4616 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))

(assert (=> d!966934 (= (matchR!4741 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))) (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) lt!1155990)))

(declare-fun b!3399472 () Bool)

(assert (=> b!3399472 (= e!2110227 (= (head!7254 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) (c!579206 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))))))

(declare-fun b!3399473 () Bool)

(declare-fun derivativeStep!3013 (Regex!10157 C!20500) Regex!10157)

(assert (=> b!3399473 (= e!2110233 (matchR!4741 (derivativeStep!3013 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))) (head!7254 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))))) (tail!5376 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))))))))

(declare-fun b!3399474 () Bool)

(declare-fun e!2110228 () Bool)

(assert (=> b!3399474 (= e!2110232 e!2110228)))

(declare-fun res!1375489 () Bool)

(assert (=> b!3399474 (=> (not res!1375489) (not e!2110228))))

(assert (=> b!3399474 (= res!1375489 (not lt!1155990))))

(declare-fun b!3399475 () Bool)

(declare-fun nullable!3460 (Regex!10157) Bool)

(assert (=> b!3399475 (= e!2110233 (nullable!3460 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun b!3399476 () Bool)

(assert (=> b!3399476 (= e!2110230 (not lt!1155990))))

(declare-fun b!3399477 () Bool)

(declare-fun res!1375490 () Bool)

(assert (=> b!3399477 (=> (not res!1375490) (not e!2110227))))

(declare-fun call!245829 () Bool)

(assert (=> b!3399477 (= res!1375490 (not call!245829))))

(declare-fun bm!245824 () Bool)

(assert (=> bm!245824 (= call!245829 (isEmpty!21239 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))))))

(declare-fun b!3399478 () Bool)

(assert (=> b!3399478 (= e!2110228 e!2110229)))

(declare-fun res!1375494 () Bool)

(assert (=> b!3399478 (=> res!1375494 e!2110229)))

(assert (=> b!3399478 (= res!1375494 call!245829)))

(declare-fun b!3399479 () Bool)

(assert (=> b!3399479 (= e!2110231 (= lt!1155990 call!245829))))

(assert (= (and d!966934 c!579515) b!3399475))

(assert (= (and d!966934 (not c!579515)) b!3399473))

(assert (= (and d!966934 c!579517) b!3399479))

(assert (= (and d!966934 (not c!579517)) b!3399470))

(assert (= (and b!3399470 c!579516) b!3399476))

(assert (= (and b!3399470 (not c!579516)) b!3399471))

(assert (= (and b!3399471 (not res!1375491)) b!3399469))

(assert (= (and b!3399469 res!1375487) b!3399477))

(assert (= (and b!3399477 res!1375490) b!3399467))

(assert (= (and b!3399467 res!1375492) b!3399472))

(assert (= (and b!3399469 (not res!1375493)) b!3399474))

(assert (= (and b!3399474 res!1375489) b!3399478))

(assert (= (and b!3399478 (not res!1375494)) b!3399466))

(assert (= (and b!3399466 (not res!1375488)) b!3399468))

(assert (= (or b!3399479 b!3399477 b!3399478) bm!245824))

(assert (=> b!3399467 m!3769503))

(declare-fun m!3771545 () Bool)

(assert (=> b!3399467 m!3771545))

(assert (=> b!3399467 m!3771545))

(declare-fun m!3771547 () Bool)

(assert (=> b!3399467 m!3771547))

(assert (=> b!3399472 m!3769503))

(declare-fun m!3771549 () Bool)

(assert (=> b!3399472 m!3771549))

(assert (=> b!3399468 m!3769503))

(assert (=> b!3399468 m!3771549))

(assert (=> bm!245824 m!3769503))

(declare-fun m!3771551 () Bool)

(assert (=> bm!245824 m!3771551))

(assert (=> b!3399473 m!3769503))

(assert (=> b!3399473 m!3771549))

(assert (=> b!3399473 m!3771549))

(declare-fun m!3771553 () Bool)

(assert (=> b!3399473 m!3771553))

(assert (=> b!3399473 m!3769503))

(assert (=> b!3399473 m!3771545))

(assert (=> b!3399473 m!3771553))

(assert (=> b!3399473 m!3771545))

(declare-fun m!3771555 () Bool)

(assert (=> b!3399473 m!3771555))

(assert (=> d!966934 m!3769503))

(assert (=> d!966934 m!3771551))

(declare-fun m!3771557 () Bool)

(assert (=> d!966934 m!3771557))

(declare-fun m!3771559 () Bool)

(assert (=> b!3399475 m!3771559))

(assert (=> b!3399466 m!3769503))

(assert (=> b!3399466 m!3771545))

(assert (=> b!3399466 m!3771545))

(assert (=> b!3399466 m!3771547))

(assert (=> b!3398278 d!966934))

(assert (=> b!3398278 d!966612))

(assert (=> b!3398278 d!966608))

(assert (=> b!3398278 d!966610))

(declare-fun d!966936 () Bool)

(assert (=> d!966936 (= (list!13402 lt!1155502) (list!13406 (c!579208 lt!1155502)))))

(declare-fun bs!556148 () Bool)

(assert (= bs!556148 d!966936))

(declare-fun m!3771561 () Bool)

(assert (=> bs!556148 m!3771561))

(assert (=> d!966338 d!966936))

(declare-fun d!966938 () Bool)

(declare-fun e!2110236 () Bool)

(assert (=> d!966938 e!2110236))

(declare-fun res!1375497 () Bool)

(assert (=> d!966938 (=> (not res!1375497) (not e!2110236))))

(declare-fun lt!1155993 () BalanceConc!21958)

(assert (=> d!966938 (= res!1375497 (= (list!13402 lt!1155993) (Cons!36974 (h!42394 tokens!494) Nil!36974)))))

(declare-fun choose!19716 (Token!10162) BalanceConc!21958)

(assert (=> d!966938 (= lt!1155993 (choose!19716 (h!42394 tokens!494)))))

(assert (=> d!966938 (= (singleton!1092 (h!42394 tokens!494)) lt!1155993)))

(declare-fun b!3399482 () Bool)

(assert (=> b!3399482 (= e!2110236 (isBalanced!3373 (c!579208 lt!1155993)))))

(assert (= (and d!966938 res!1375497) b!3399482))

(declare-fun m!3771563 () Bool)

(assert (=> d!966938 m!3771563))

(declare-fun m!3771565 () Bool)

(assert (=> d!966938 m!3771565))

(declare-fun m!3771567 () Bool)

(assert (=> b!3399482 m!3771567))

(assert (=> d!966338 d!966938))

(declare-fun d!966940 () Bool)

(assert (=> d!966940 (= (list!13399 lt!1155467) (list!13403 (c!579207 lt!1155467)))))

(declare-fun bs!556149 () Bool)

(assert (= bs!556149 d!966940))

(declare-fun m!3771569 () Bool)

(assert (=> bs!556149 m!3771569))

(assert (=> d!966314 d!966940))

(assert (=> b!3398541 d!966924))

(declare-fun d!966942 () Bool)

(declare-fun res!1375498 () Bool)

(declare-fun e!2110237 () Bool)

(assert (=> d!966942 (=> (not res!1375498) (not e!2110237))))

(assert (=> d!966942 (= res!1375498 (not (isEmpty!21239 (originalCharacters!6112 (h!42394 (t!265515 tokens!494))))))))

(assert (=> d!966942 (= (inv!50071 (h!42394 (t!265515 tokens!494))) e!2110237)))

(declare-fun b!3399483 () Bool)

(declare-fun res!1375499 () Bool)

(assert (=> b!3399483 (=> (not res!1375499) (not e!2110237))))

(assert (=> b!3399483 (= res!1375499 (= (originalCharacters!6112 (h!42394 (t!265515 tokens!494))) (list!13399 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))))))

(declare-fun b!3399484 () Bool)

(assert (=> b!3399484 (= e!2110237 (= (size!27985 (h!42394 (t!265515 tokens!494))) (size!27989 (originalCharacters!6112 (h!42394 (t!265515 tokens!494))))))))

(assert (= (and d!966942 res!1375498) b!3399483))

(assert (= (and b!3399483 res!1375499) b!3399484))

(declare-fun b_lambda!96935 () Bool)

(assert (=> (not b_lambda!96935) (not b!3399483)))

(assert (=> b!3399483 t!265585))

(declare-fun b_and!237171 () Bool)

(assert (= b_and!237165 (and (=> t!265585 result!225658) b_and!237171)))

(assert (=> b!3399483 t!265560))

(declare-fun b_and!237173 () Bool)

(assert (= b_and!237163 (and (=> t!265560 result!225630) b_and!237173)))

(assert (=> b!3399483 t!265564))

(declare-fun b_and!237175 () Bool)

(assert (= b_and!237169 (and (=> t!265564 result!225634) b_and!237175)))

(assert (=> b!3399483 t!265562))

(declare-fun b_and!237177 () Bool)

(assert (= b_and!237167 (and (=> t!265562 result!225632) b_and!237177)))

(assert (=> b!3399483 t!265591))

(declare-fun b_and!237179 () Bool)

(assert (= b_and!237161 (and (=> t!265591 result!225670) b_and!237179)))

(declare-fun m!3771571 () Bool)

(assert (=> d!966942 m!3771571))

(assert (=> b!3399483 m!3769843))

(assert (=> b!3399483 m!3769843))

(declare-fun m!3771573 () Bool)

(assert (=> b!3399483 m!3771573))

(declare-fun m!3771575 () Bool)

(assert (=> b!3399484 m!3771575))

(assert (=> b!3398584 d!966942))

(declare-fun b!3399485 () Bool)

(declare-fun res!1375504 () Bool)

(declare-fun e!2110239 () Bool)

(assert (=> b!3399485 (=> (not res!1375504) (not e!2110239))))

(declare-fun lt!1155998 () Option!7436)

(assert (=> b!3399485 (= res!1375504 (< (size!27989 (_2!21433 (get!11808 lt!1155998))) (size!27989 lt!1155340)))))

(declare-fun bm!245825 () Bool)

(declare-fun call!245830 () Option!7436)

(assert (=> bm!245825 (= call!245830 (maxPrefixOneRule!1702 thiss!18206 (h!42395 (t!265516 rules!2135)) lt!1155340))))

(declare-fun b!3399486 () Bool)

(declare-fun res!1375505 () Bool)

(assert (=> b!3399486 (=> (not res!1375505) (not e!2110239))))

(assert (=> b!3399486 (= res!1375505 (= (++!9061 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155998)))) (_2!21433 (get!11808 lt!1155998))) lt!1155340))))

(declare-fun b!3399487 () Bool)

(declare-fun res!1375500 () Bool)

(assert (=> b!3399487 (=> (not res!1375500) (not e!2110239))))

(assert (=> b!3399487 (= res!1375500 (= (value!174303 (_1!21433 (get!11808 lt!1155998))) (apply!8625 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155998)))) (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1155998)))))))))

(declare-fun d!966944 () Bool)

(declare-fun e!2110240 () Bool)

(assert (=> d!966944 e!2110240))

(declare-fun res!1375503 () Bool)

(assert (=> d!966944 (=> res!1375503 e!2110240)))

(assert (=> d!966944 (= res!1375503 (isEmpty!21240 lt!1155998))))

(declare-fun e!2110238 () Option!7436)

(assert (=> d!966944 (= lt!1155998 e!2110238)))

(declare-fun c!579518 () Bool)

(assert (=> d!966944 (= c!579518 (and ((_ is Cons!36975) (t!265516 rules!2135)) ((_ is Nil!36975) (t!265516 (t!265516 rules!2135)))))))

(declare-fun lt!1155994 () Unit!52137)

(declare-fun lt!1155997 () Unit!52137)

(assert (=> d!966944 (= lt!1155994 lt!1155997)))

(assert (=> d!966944 (isPrefix!2832 lt!1155340 lt!1155340)))

(assert (=> d!966944 (= lt!1155997 (lemmaIsPrefixRefl!1791 lt!1155340 lt!1155340))))

(assert (=> d!966944 (rulesValidInductive!1841 thiss!18206 (t!265516 rules!2135))))

(assert (=> d!966944 (= (maxPrefix!2553 thiss!18206 (t!265516 rules!2135) lt!1155340) lt!1155998)))

(declare-fun b!3399488 () Bool)

(assert (=> b!3399488 (= e!2110239 (contains!6790 (t!265516 rules!2135) (rule!7958 (_1!21433 (get!11808 lt!1155998)))))))

(declare-fun b!3399489 () Bool)

(declare-fun lt!1155995 () Option!7436)

(declare-fun lt!1155996 () Option!7436)

(assert (=> b!3399489 (= e!2110238 (ite (and ((_ is None!7435) lt!1155995) ((_ is None!7435) lt!1155996)) None!7435 (ite ((_ is None!7435) lt!1155996) lt!1155995 (ite ((_ is None!7435) lt!1155995) lt!1155996 (ite (>= (size!27985 (_1!21433 (v!36599 lt!1155995))) (size!27985 (_1!21433 (v!36599 lt!1155996)))) lt!1155995 lt!1155996)))))))

(assert (=> b!3399489 (= lt!1155995 call!245830)))

(assert (=> b!3399489 (= lt!1155996 (maxPrefix!2553 thiss!18206 (t!265516 (t!265516 rules!2135)) lt!1155340))))

(declare-fun b!3399490 () Bool)

(assert (=> b!3399490 (= e!2110238 call!245830)))

(declare-fun b!3399491 () Bool)

(declare-fun res!1375502 () Bool)

(assert (=> b!3399491 (=> (not res!1375502) (not e!2110239))))

(assert (=> b!3399491 (= res!1375502 (= (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155998)))) (originalCharacters!6112 (_1!21433 (get!11808 lt!1155998)))))))

(declare-fun b!3399492 () Bool)

(assert (=> b!3399492 (= e!2110240 e!2110239)))

(declare-fun res!1375501 () Bool)

(assert (=> b!3399492 (=> (not res!1375501) (not e!2110239))))

(assert (=> b!3399492 (= res!1375501 (isDefined!5740 lt!1155998))))

(declare-fun b!3399493 () Bool)

(declare-fun res!1375506 () Bool)

(assert (=> b!3399493 (=> (not res!1375506) (not e!2110239))))

(assert (=> b!3399493 (= res!1375506 (matchR!4741 (regex!5398 (rule!7958 (_1!21433 (get!11808 lt!1155998)))) (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155998))))))))

(assert (= (and d!966944 c!579518) b!3399490))

(assert (= (and d!966944 (not c!579518)) b!3399489))

(assert (= (or b!3399490 b!3399489) bm!245825))

(assert (= (and d!966944 (not res!1375503)) b!3399492))

(assert (= (and b!3399492 res!1375501) b!3399491))

(assert (= (and b!3399491 res!1375502) b!3399485))

(assert (= (and b!3399485 res!1375504) b!3399486))

(assert (= (and b!3399486 res!1375505) b!3399487))

(assert (= (and b!3399487 res!1375500) b!3399493))

(assert (= (and b!3399493 res!1375506) b!3399488))

(declare-fun m!3771577 () Bool)

(assert (=> b!3399489 m!3771577))

(declare-fun m!3771579 () Bool)

(assert (=> b!3399493 m!3771579))

(declare-fun m!3771581 () Bool)

(assert (=> b!3399493 m!3771581))

(assert (=> b!3399493 m!3771581))

(declare-fun m!3771583 () Bool)

(assert (=> b!3399493 m!3771583))

(assert (=> b!3399493 m!3771583))

(declare-fun m!3771585 () Bool)

(assert (=> b!3399493 m!3771585))

(declare-fun m!3771587 () Bool)

(assert (=> bm!245825 m!3771587))

(assert (=> b!3399485 m!3771579))

(declare-fun m!3771589 () Bool)

(assert (=> b!3399485 m!3771589))

(assert (=> b!3399485 m!3769391))

(assert (=> b!3399491 m!3771579))

(assert (=> b!3399491 m!3771581))

(assert (=> b!3399491 m!3771581))

(assert (=> b!3399491 m!3771583))

(assert (=> b!3399488 m!3771579))

(declare-fun m!3771591 () Bool)

(assert (=> b!3399488 m!3771591))

(declare-fun m!3771593 () Bool)

(assert (=> b!3399492 m!3771593))

(assert (=> b!3399486 m!3771579))

(assert (=> b!3399486 m!3771581))

(assert (=> b!3399486 m!3771581))

(assert (=> b!3399486 m!3771583))

(assert (=> b!3399486 m!3771583))

(declare-fun m!3771595 () Bool)

(assert (=> b!3399486 m!3771595))

(assert (=> b!3399487 m!3771579))

(declare-fun m!3771597 () Bool)

(assert (=> b!3399487 m!3771597))

(assert (=> b!3399487 m!3771597))

(declare-fun m!3771599 () Bool)

(assert (=> b!3399487 m!3771599))

(declare-fun m!3771601 () Bool)

(assert (=> d!966944 m!3771601))

(assert (=> d!966944 m!3769523))

(assert (=> d!966944 m!3769525))

(assert (=> d!966944 m!3771253))

(assert (=> b!3398274 d!966944))

(declare-fun d!966946 () Bool)

(assert (=> d!966946 (= (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))) (isBalanced!3374 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))))

(declare-fun bs!556150 () Bool)

(assert (= bs!556150 d!966946))

(declare-fun m!3771603 () Bool)

(assert (=> bs!556150 m!3771603))

(assert (=> tb!182011 d!966946))

(declare-fun d!966948 () Bool)

(declare-fun lt!1155999 () Int)

(assert (=> d!966948 (>= lt!1155999 0)))

(declare-fun e!2110241 () Int)

(assert (=> d!966948 (= lt!1155999 e!2110241)))

(declare-fun c!579519 () Bool)

(assert (=> d!966948 (= c!579519 ((_ is Nil!36972) lt!1155468))))

(assert (=> d!966948 (= (size!27989 lt!1155468) lt!1155999)))

(declare-fun b!3399494 () Bool)

(assert (=> b!3399494 (= e!2110241 0)))

(declare-fun b!3399495 () Bool)

(assert (=> b!3399495 (= e!2110241 (+ 1 (size!27989 (t!265513 lt!1155468))))))

(assert (= (and d!966948 c!579519) b!3399494))

(assert (= (and d!966948 (not c!579519)) b!3399495))

(declare-fun m!3771605 () Bool)

(assert (=> b!3399495 m!3771605))

(assert (=> b!3398478 d!966948))

(declare-fun d!966950 () Bool)

(declare-fun lt!1156000 () Int)

(assert (=> d!966950 (>= lt!1156000 0)))

(declare-fun e!2110242 () Int)

(assert (=> d!966950 (= lt!1156000 e!2110242)))

(declare-fun c!579520 () Bool)

(assert (=> d!966950 (= c!579520 ((_ is Nil!36972) (++!9061 lt!1155340 lt!1155328)))))

(assert (=> d!966950 (= (size!27989 (++!9061 lt!1155340 lt!1155328)) lt!1156000)))

(declare-fun b!3399496 () Bool)

(assert (=> b!3399496 (= e!2110242 0)))

(declare-fun b!3399497 () Bool)

(assert (=> b!3399497 (= e!2110242 (+ 1 (size!27989 (t!265513 (++!9061 lt!1155340 lt!1155328)))))))

(assert (= (and d!966950 c!579520) b!3399496))

(assert (= (and d!966950 (not c!579520)) b!3399497))

(assert (=> b!3399497 m!3771313))

(assert (=> b!3398478 d!966950))

(assert (=> b!3398478 d!966728))

(declare-fun d!966952 () Bool)

(declare-fun lt!1156001 () Int)

(assert (=> d!966952 (>= lt!1156001 0)))

(declare-fun e!2110243 () Int)

(assert (=> d!966952 (= lt!1156001 e!2110243)))

(declare-fun c!579521 () Bool)

(assert (=> d!966952 (= c!579521 ((_ is Nil!36972) lt!1155469))))

(assert (=> d!966952 (= (size!27989 lt!1155469) lt!1156001)))

(declare-fun b!3399498 () Bool)

(assert (=> b!3399498 (= e!2110243 0)))

(declare-fun b!3399499 () Bool)

(assert (=> b!3399499 (= e!2110243 (+ 1 (size!27989 (t!265513 lt!1155469))))))

(assert (= (and d!966952 c!579521) b!3399498))

(assert (= (and d!966952 (not c!579521)) b!3399499))

(declare-fun m!3771607 () Bool)

(assert (=> b!3399499 m!3771607))

(assert (=> b!3398486 d!966952))

(assert (=> b!3398486 d!966816))

(assert (=> b!3398486 d!966628))

(declare-fun d!966954 () Bool)

(declare-fun lt!1156004 () Bool)

(assert (=> d!966954 (= lt!1156004 (select (content!5113 tokens!494) (h!42394 (t!265515 tokens!494))))))

(declare-fun e!2110249 () Bool)

(assert (=> d!966954 (= lt!1156004 e!2110249)))

(declare-fun res!1375512 () Bool)

(assert (=> d!966954 (=> (not res!1375512) (not e!2110249))))

(assert (=> d!966954 (= res!1375512 ((_ is Cons!36974) tokens!494))))

(assert (=> d!966954 (= (contains!6791 tokens!494 (h!42394 (t!265515 tokens!494))) lt!1156004)))

(declare-fun b!3399504 () Bool)

(declare-fun e!2110248 () Bool)

(assert (=> b!3399504 (= e!2110249 e!2110248)))

(declare-fun res!1375511 () Bool)

(assert (=> b!3399504 (=> res!1375511 e!2110248)))

(assert (=> b!3399504 (= res!1375511 (= (h!42394 tokens!494) (h!42394 (t!265515 tokens!494))))))

(declare-fun b!3399505 () Bool)

(assert (=> b!3399505 (= e!2110248 (contains!6791 (t!265515 tokens!494) (h!42394 (t!265515 tokens!494))))))

(assert (= (and d!966954 res!1375512) b!3399504))

(assert (= (and b!3399504 (not res!1375511)) b!3399505))

(declare-fun m!3771609 () Bool)

(assert (=> d!966954 m!3771609))

(declare-fun m!3771611 () Bool)

(assert (=> d!966954 m!3771611))

(declare-fun m!3771613 () Bool)

(assert (=> b!3399505 m!3771613))

(assert (=> b!3398340 d!966954))

(declare-fun d!966956 () Bool)

(declare-fun lt!1156005 () Int)

(assert (=> d!966956 (>= lt!1156005 0)))

(declare-fun e!2110250 () Int)

(assert (=> d!966956 (= lt!1156005 e!2110250)))

(declare-fun c!579522 () Bool)

(assert (=> d!966956 (= c!579522 ((_ is Nil!36972) (originalCharacters!6112 separatorToken!241)))))

(assert (=> d!966956 (= (size!27989 (originalCharacters!6112 separatorToken!241)) lt!1156005)))

(declare-fun b!3399506 () Bool)

(assert (=> b!3399506 (= e!2110250 0)))

(declare-fun b!3399507 () Bool)

(assert (=> b!3399507 (= e!2110250 (+ 1 (size!27989 (t!265513 (originalCharacters!6112 separatorToken!241)))))))

(assert (= (and d!966956 c!579522) b!3399506))

(assert (= (and d!966956 (not c!579522)) b!3399507))

(declare-fun m!3771615 () Bool)

(assert (=> b!3399507 m!3771615))

(assert (=> b!3398563 d!966956))

(declare-fun d!966958 () Bool)

(assert (=> d!966958 (= (list!13402 (singletonSeq!2494 separatorToken!241)) (list!13406 (c!579208 (singletonSeq!2494 separatorToken!241))))))

(declare-fun bs!556151 () Bool)

(assert (= bs!556151 d!966958))

(declare-fun m!3771617 () Bool)

(assert (=> bs!556151 m!3771617))

(assert (=> d!966330 d!966958))

(declare-fun d!966960 () Bool)

(assert (=> d!966960 (= (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241))))) (list!13406 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 separatorToken!241)))))))))

(declare-fun bs!556152 () Bool)

(assert (= bs!556152 d!966960))

(declare-fun m!3771619 () Bool)

(assert (=> bs!556152 m!3771619))

(assert (=> d!966330 d!966960))

(assert (=> d!966330 d!966756))

(assert (=> d!966330 d!966754))

(assert (=> d!966330 d!966258))

(assert (=> d!966330 d!966744))

(declare-fun d!966962 () Bool)

(declare-fun lt!1156006 () Int)

(assert (=> d!966962 (= lt!1156006 (size!27995 (list!13402 (_1!21432 lt!1155475))))))

(assert (=> d!966962 (= lt!1156006 (size!27996 (c!579208 (_1!21432 lt!1155475))))))

(assert (=> d!966962 (= (size!27991 (_1!21432 lt!1155475)) lt!1156006)))

(declare-fun bs!556153 () Bool)

(assert (= bs!556153 d!966962))

(declare-fun m!3771621 () Bool)

(assert (=> bs!556153 m!3771621))

(assert (=> bs!556153 m!3771621))

(declare-fun m!3771623 () Bool)

(assert (=> bs!556153 m!3771623))

(declare-fun m!3771625 () Bool)

(assert (=> bs!556153 m!3771625))

(assert (=> d!966330 d!966962))

(declare-fun d!966964 () Bool)

(assert (=> d!966964 (= (list!13399 lt!1155450) (list!13403 (c!579207 lt!1155450)))))

(declare-fun bs!556154 () Bool)

(assert (= bs!556154 d!966964))

(declare-fun m!3771627 () Bool)

(assert (=> bs!556154 m!3771627))

(assert (=> d!966262 d!966964))

(declare-fun d!966966 () Bool)

(declare-fun e!2110253 () Bool)

(assert (=> d!966966 e!2110253))

(declare-fun res!1375515 () Bool)

(assert (=> d!966966 (=> (not res!1375515) (not e!2110253))))

(declare-fun lt!1156009 () BalanceConc!21958)

(assert (=> d!966966 (= res!1375515 (= (list!13402 lt!1156009) tokens!494))))

(declare-fun fromList!720 (List!37098) Conc!11172)

(assert (=> d!966966 (= lt!1156009 (BalanceConc!21959 (fromList!720 tokens!494)))))

(assert (=> d!966966 (= (fromListB!1726 tokens!494) lt!1156009)))

(declare-fun b!3399510 () Bool)

(assert (=> b!3399510 (= e!2110253 (isBalanced!3373 (fromList!720 tokens!494)))))

(assert (= (and d!966966 res!1375515) b!3399510))

(declare-fun m!3771629 () Bool)

(assert (=> d!966966 m!3771629))

(declare-fun m!3771631 () Bool)

(assert (=> d!966966 m!3771631))

(assert (=> b!3399510 m!3771631))

(assert (=> b!3399510 m!3771631))

(declare-fun m!3771633 () Bool)

(assert (=> b!3399510 m!3771633))

(assert (=> d!966256 d!966966))

(declare-fun b!3399558 () Bool)

(declare-fun e!2110282 () Bool)

(declare-fun e!2110284 () Bool)

(assert (=> b!3399558 (= e!2110282 e!2110284)))

(declare-fun res!1375543 () Bool)

(assert (=> b!3399558 (=> (not res!1375543) (not e!2110284))))

(declare-fun lt!1156030 () Option!7436)

(assert (=> b!3399558 (= res!1375543 (matchR!4741 (regex!5398 (h!42395 rules!2135)) (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1156030))))))))

(declare-fun b!3399559 () Bool)

(declare-fun e!2110281 () Bool)

(declare-datatypes ((tuple2!36610 0))(
  ( (tuple2!36611 (_1!21439 List!37096) (_2!21439 List!37096)) )
))
(declare-fun findLongestMatchInner!887 (Regex!10157 List!37096 Int List!37096 List!37096 Int) tuple2!36610)

(assert (=> b!3399559 (= e!2110281 (matchR!4741 (regex!5398 (h!42395 rules!2135)) (_1!21439 (findLongestMatchInner!887 (regex!5398 (h!42395 rules!2135)) Nil!36972 (size!27989 Nil!36972) lt!1155340 lt!1155340 (size!27989 lt!1155340)))))))

(declare-fun b!3399560 () Bool)

(declare-fun e!2110283 () Option!7436)

(declare-fun lt!1156031 () tuple2!36610)

(assert (=> b!3399560 (= e!2110283 (Some!7435 (tuple2!36599 (Token!10163 (apply!8625 (transformation!5398 (h!42395 rules!2135)) (seqFromList!3849 (_1!21439 lt!1156031))) (h!42395 rules!2135) (size!27990 (seqFromList!3849 (_1!21439 lt!1156031))) (_1!21439 lt!1156031)) (_2!21439 lt!1156031))))))

(declare-fun lt!1156032 () Unit!52137)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!860 (Regex!10157 List!37096) Unit!52137)

(assert (=> b!3399560 (= lt!1156032 (longestMatchIsAcceptedByMatchOrIsEmpty!860 (regex!5398 (h!42395 rules!2135)) lt!1155340))))

(declare-fun res!1375548 () Bool)

(assert (=> b!3399560 (= res!1375548 (isEmpty!21239 (_1!21439 (findLongestMatchInner!887 (regex!5398 (h!42395 rules!2135)) Nil!36972 (size!27989 Nil!36972) lt!1155340 lt!1155340 (size!27989 lt!1155340)))))))

(assert (=> b!3399560 (=> res!1375548 e!2110281)))

(assert (=> b!3399560 e!2110281))

(declare-fun lt!1156029 () Unit!52137)

(assert (=> b!3399560 (= lt!1156029 lt!1156032)))

(declare-fun lt!1156033 () Unit!52137)

(declare-fun lemmaSemiInverse!1235 (TokenValueInjection!10684 BalanceConc!21956) Unit!52137)

(assert (=> b!3399560 (= lt!1156033 (lemmaSemiInverse!1235 (transformation!5398 (h!42395 rules!2135)) (seqFromList!3849 (_1!21439 lt!1156031))))))

(declare-fun b!3399561 () Bool)

(assert (=> b!3399561 (= e!2110283 None!7435)))

(declare-fun b!3399562 () Bool)

(declare-fun res!1375546 () Bool)

(assert (=> b!3399562 (=> (not res!1375546) (not e!2110284))))

(assert (=> b!3399562 (= res!1375546 (= (rule!7958 (_1!21433 (get!11808 lt!1156030))) (h!42395 rules!2135)))))

(declare-fun b!3399563 () Bool)

(assert (=> b!3399563 (= e!2110284 (= (size!27985 (_1!21433 (get!11808 lt!1156030))) (size!27989 (originalCharacters!6112 (_1!21433 (get!11808 lt!1156030))))))))

(declare-fun b!3399565 () Bool)

(declare-fun res!1375545 () Bool)

(assert (=> b!3399565 (=> (not res!1375545) (not e!2110284))))

(assert (=> b!3399565 (= res!1375545 (< (size!27989 (_2!21433 (get!11808 lt!1156030))) (size!27989 lt!1155340)))))

(declare-fun b!3399566 () Bool)

(declare-fun res!1375544 () Bool)

(assert (=> b!3399566 (=> (not res!1375544) (not e!2110284))))

(assert (=> b!3399566 (= res!1375544 (= (++!9061 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1156030)))) (_2!21433 (get!11808 lt!1156030))) lt!1155340))))

(declare-fun b!3399564 () Bool)

(declare-fun res!1375547 () Bool)

(assert (=> b!3399564 (=> (not res!1375547) (not e!2110284))))

(assert (=> b!3399564 (= res!1375547 (= (value!174303 (_1!21433 (get!11808 lt!1156030))) (apply!8625 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1156030)))) (seqFromList!3849 (originalCharacters!6112 (_1!21433 (get!11808 lt!1156030)))))))))

(declare-fun d!966968 () Bool)

(assert (=> d!966968 e!2110282))

(declare-fun res!1375542 () Bool)

(assert (=> d!966968 (=> res!1375542 e!2110282)))

(assert (=> d!966968 (= res!1375542 (isEmpty!21240 lt!1156030))))

(assert (=> d!966968 (= lt!1156030 e!2110283)))

(declare-fun c!579533 () Bool)

(assert (=> d!966968 (= c!579533 (isEmpty!21239 (_1!21439 lt!1156031)))))

(declare-fun findLongestMatch!802 (Regex!10157 List!37096) tuple2!36610)

(assert (=> d!966968 (= lt!1156031 (findLongestMatch!802 (regex!5398 (h!42395 rules!2135)) lt!1155340))))

(assert (=> d!966968 (ruleValid!1714 thiss!18206 (h!42395 rules!2135))))

(assert (=> d!966968 (= (maxPrefixOneRule!1702 thiss!18206 (h!42395 rules!2135) lt!1155340) lt!1156030)))

(assert (= (and d!966968 c!579533) b!3399561))

(assert (= (and d!966968 (not c!579533)) b!3399560))

(assert (= (and b!3399560 (not res!1375548)) b!3399559))

(assert (= (and d!966968 (not res!1375542)) b!3399558))

(assert (= (and b!3399558 res!1375543) b!3399566))

(assert (= (and b!3399566 res!1375544) b!3399565))

(assert (= (and b!3399565 res!1375545) b!3399562))

(assert (= (and b!3399562 res!1375546) b!3399564))

(assert (= (and b!3399564 res!1375547) b!3399563))

(declare-fun m!3771691 () Bool)

(assert (=> d!966968 m!3771691))

(declare-fun m!3771693 () Bool)

(assert (=> d!966968 m!3771693))

(declare-fun m!3771695 () Bool)

(assert (=> d!966968 m!3771695))

(assert (=> d!966968 m!3771251))

(declare-fun m!3771697 () Bool)

(assert (=> b!3399565 m!3771697))

(declare-fun m!3771699 () Bool)

(assert (=> b!3399565 m!3771699))

(assert (=> b!3399565 m!3769391))

(assert (=> b!3399562 m!3771697))

(assert (=> b!3399564 m!3771697))

(declare-fun m!3771701 () Bool)

(assert (=> b!3399564 m!3771701))

(assert (=> b!3399564 m!3771701))

(declare-fun m!3771703 () Bool)

(assert (=> b!3399564 m!3771703))

(declare-fun m!3771705 () Bool)

(assert (=> b!3399559 m!3771705))

(assert (=> b!3399559 m!3769391))

(assert (=> b!3399559 m!3771705))

(assert (=> b!3399559 m!3769391))

(declare-fun m!3771711 () Bool)

(assert (=> b!3399559 m!3771711))

(declare-fun m!3771717 () Bool)

(assert (=> b!3399559 m!3771717))

(assert (=> b!3399560 m!3769391))

(declare-fun m!3771719 () Bool)

(assert (=> b!3399560 m!3771719))

(assert (=> b!3399560 m!3771719))

(declare-fun m!3771721 () Bool)

(assert (=> b!3399560 m!3771721))

(declare-fun m!3771723 () Bool)

(assert (=> b!3399560 m!3771723))

(assert (=> b!3399560 m!3771705))

(declare-fun m!3771725 () Bool)

(assert (=> b!3399560 m!3771725))

(assert (=> b!3399560 m!3771719))

(declare-fun m!3771727 () Bool)

(assert (=> b!3399560 m!3771727))

(assert (=> b!3399560 m!3771719))

(declare-fun m!3771729 () Bool)

(assert (=> b!3399560 m!3771729))

(assert (=> b!3399560 m!3771705))

(assert (=> b!3399560 m!3769391))

(assert (=> b!3399560 m!3771711))

(assert (=> b!3399563 m!3771697))

(declare-fun m!3771731 () Bool)

(assert (=> b!3399563 m!3771731))

(assert (=> b!3399558 m!3771697))

(declare-fun m!3771733 () Bool)

(assert (=> b!3399558 m!3771733))

(assert (=> b!3399558 m!3771733))

(declare-fun m!3771735 () Bool)

(assert (=> b!3399558 m!3771735))

(assert (=> b!3399558 m!3771735))

(declare-fun m!3771737 () Bool)

(assert (=> b!3399558 m!3771737))

(assert (=> b!3399566 m!3771697))

(assert (=> b!3399566 m!3771733))

(assert (=> b!3399566 m!3771733))

(assert (=> b!3399566 m!3771735))

(assert (=> b!3399566 m!3771735))

(declare-fun m!3771739 () Bool)

(assert (=> b!3399566 m!3771739))

(assert (=> bm!245798 d!966968))

(declare-fun d!966986 () Bool)

(declare-fun c!579534 () Bool)

(assert (=> d!966986 (= c!579534 ((_ is Nil!36972) lt!1155466))))

(declare-fun e!2110296 () (InoxSet C!20500))

(assert (=> d!966986 (= (content!5111 lt!1155466) e!2110296)))

(declare-fun b!3399578 () Bool)

(assert (=> b!3399578 (= e!2110296 ((as const (Array C!20500 Bool)) false))))

(declare-fun b!3399579 () Bool)

(assert (=> b!3399579 (= e!2110296 ((_ map or) (store ((as const (Array C!20500 Bool)) false) (h!42392 lt!1155466) true) (content!5111 (t!265513 lt!1155466))))))

(assert (= (and d!966986 c!579534) b!3399578))

(assert (= (and d!966986 (not c!579534)) b!3399579))

(declare-fun m!3771741 () Bool)

(assert (=> b!3399579 m!3771741))

(declare-fun m!3771743 () Bool)

(assert (=> b!3399579 m!3771743))

(assert (=> d!966310 d!966986))

(assert (=> d!966310 d!966496))

(assert (=> d!966310 d!966590))

(declare-fun d!966988 () Bool)

(declare-fun lt!1156036 () Int)

(assert (=> d!966988 (= lt!1156036 (size!27989 (list!13399 (_2!21432 lt!1155457))))))

(declare-fun size!27997 (Conc!11171) Int)

(assert (=> d!966988 (= lt!1156036 (size!27997 (c!579207 (_2!21432 lt!1155457))))))

(assert (=> d!966988 (= (size!27990 (_2!21432 lt!1155457)) lt!1156036)))

(declare-fun bs!556158 () Bool)

(assert (= bs!556158 d!966988))

(assert (=> bs!556158 m!3769691))

(assert (=> bs!556158 m!3769691))

(declare-fun m!3771749 () Bool)

(assert (=> bs!556158 m!3771749))

(declare-fun m!3771751 () Bool)

(assert (=> bs!556158 m!3771751))

(assert (=> b!3398396 d!966988))

(declare-fun d!966990 () Bool)

(declare-fun lt!1156037 () Int)

(assert (=> d!966990 (= lt!1156037 (size!27989 (list!13399 (seqFromList!3849 lt!1155340))))))

(assert (=> d!966990 (= lt!1156037 (size!27997 (c!579207 (seqFromList!3849 lt!1155340))))))

(assert (=> d!966990 (= (size!27990 (seqFromList!3849 lt!1155340)) lt!1156037)))

(declare-fun bs!556159 () Bool)

(assert (= bs!556159 d!966990))

(assert (=> bs!556159 m!3769287))

(assert (=> bs!556159 m!3769693))

(assert (=> bs!556159 m!3769693))

(assert (=> bs!556159 m!3770961))

(declare-fun m!3771753 () Bool)

(assert (=> bs!556159 m!3771753))

(assert (=> b!3398396 d!966990))

(declare-fun bs!556160 () Bool)

(declare-fun d!966992 () Bool)

(assert (= bs!556160 (and d!966992 d!966600)))

(declare-fun lambda!120943 () Int)

(assert (=> bs!556160 (= (and (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (= (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494)))))) (= lambda!120943 lambda!120925))))

(declare-fun bs!556161 () Bool)

(assert (= bs!556161 (and d!966992 d!966616)))

(assert (=> bs!556161 (= (and (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (h!42395 rules!2135)))) (= (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (h!42395 rules!2135))))) (= lambda!120943 lambda!120926))))

(assert (=> d!966992 true))

(assert (=> d!966992 (< (dynLambda!15428 order!19519 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) (dynLambda!15432 order!19531 lambda!120943))))

(assert (=> d!966992 true))

(assert (=> d!966992 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))) (dynLambda!15432 order!19531 lambda!120943))))

(assert (=> d!966992 (= (semiInverseModEq!2255 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))) (Forall!1325 lambda!120943))))

(declare-fun bs!556162 () Bool)

(assert (= bs!556162 d!966992))

(declare-fun m!3771767 () Bool)

(assert (=> bs!556162 m!3771767))

(assert (=> d!966346 d!966992))

(declare-fun d!966994 () Bool)

(assert (=> d!966994 (= (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))) (isBalanced!3374 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))))

(declare-fun bs!556163 () Bool)

(assert (= bs!556163 d!966994))

(declare-fun m!3771769 () Bool)

(assert (=> bs!556163 m!3771769))

(assert (=> tb!181999 d!966994))

(declare-fun d!966996 () Bool)

(declare-fun c!579535 () Bool)

(assert (=> d!966996 (= c!579535 ((_ is Empty!11171) (c!579207 (charsOf!3412 (h!42394 tokens!494)))))))

(declare-fun e!2110316 () List!37096)

(assert (=> d!966996 (= (list!13403 (c!579207 (charsOf!3412 (h!42394 tokens!494)))) e!2110316)))

(declare-fun b!3399622 () Bool)

(declare-fun e!2110317 () List!37096)

(assert (=> b!3399622 (= e!2110317 (list!13407 (xs!14329 (c!579207 (charsOf!3412 (h!42394 tokens!494))))))))

(declare-fun b!3399621 () Bool)

(assert (=> b!3399621 (= e!2110316 e!2110317)))

(declare-fun c!579536 () Bool)

(assert (=> b!3399621 (= c!579536 ((_ is Leaf!17481) (c!579207 (charsOf!3412 (h!42394 tokens!494)))))))

(declare-fun b!3399623 () Bool)

(assert (=> b!3399623 (= e!2110317 (++!9061 (list!13403 (left!28824 (c!579207 (charsOf!3412 (h!42394 tokens!494))))) (list!13403 (right!29154 (c!579207 (charsOf!3412 (h!42394 tokens!494)))))))))

(declare-fun b!3399620 () Bool)

(assert (=> b!3399620 (= e!2110316 Nil!36972)))

(assert (= (and d!966996 c!579535) b!3399620))

(assert (= (and d!966996 (not c!579535)) b!3399621))

(assert (= (and b!3399621 c!579536) b!3399622))

(assert (= (and b!3399621 (not c!579536)) b!3399623))

(declare-fun m!3771771 () Bool)

(assert (=> b!3399622 m!3771771))

(declare-fun m!3771773 () Bool)

(assert (=> b!3399623 m!3771773))

(declare-fun m!3771775 () Bool)

(assert (=> b!3399623 m!3771775))

(assert (=> b!3399623 m!3771773))

(assert (=> b!3399623 m!3771775))

(declare-fun m!3771779 () Bool)

(assert (=> b!3399623 m!3771779))

(assert (=> d!966260 d!966996))

(assert (=> b!3398421 d!966262))

(assert (=> b!3398421 d!966260))

(declare-fun e!2110322 () List!37096)

(declare-fun b!3399632 () Bool)

(assert (=> b!3399632 (= e!2110322 (Cons!36972 (h!42392 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241)))) (++!9061 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241)))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241))))))

(declare-fun b!3399634 () Bool)

(declare-fun lt!1156038 () List!37096)

(declare-fun e!2110321 () Bool)

(assert (=> b!3399634 (= e!2110321 (or (not (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241) Nil!36972)) (= lt!1156038 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241))))))))

(declare-fun d!966998 () Bool)

(assert (=> d!966998 e!2110321))

(declare-fun res!1375549 () Bool)

(assert (=> d!966998 (=> (not res!1375549) (not e!2110321))))

(assert (=> d!966998 (= res!1375549 (= (content!5111 lt!1156038) ((_ map or) (content!5111 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241)))) (content!5111 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241)))))))

(assert (=> d!966998 (= lt!1156038 e!2110322)))

(declare-fun c!579537 () Bool)

(assert (=> d!966998 (= c!579537 ((_ is Nil!36972) (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241)))))))

(assert (=> d!966998 (= (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241)) lt!1156038)))

(declare-fun b!3399633 () Bool)

(declare-fun res!1375550 () Bool)

(assert (=> b!3399633 (=> (not res!1375550) (not e!2110321))))

(assert (=> b!3399633 (= res!1375550 (= (size!27989 lt!1156038) (+ (size!27989 (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241)))) (size!27989 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241)))))))

(declare-fun b!3399631 () Bool)

(assert (=> b!3399631 (= e!2110322 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 tokens!494) separatorToken!241))))

(assert (= (and d!966998 c!579537) b!3399631))

(assert (= (and d!966998 (not c!579537)) b!3399632))

(assert (= (and d!966998 res!1375549) b!3399633))

(assert (= (and b!3399633 res!1375550) b!3399634))

(assert (=> b!3399632 m!3769249))

(declare-fun m!3771785 () Bool)

(assert (=> b!3399632 m!3771785))

(declare-fun m!3771787 () Bool)

(assert (=> d!966998 m!3771787))

(assert (=> d!966998 m!3769755))

(declare-fun m!3771789 () Bool)

(assert (=> d!966998 m!3771789))

(assert (=> d!966998 m!3769249))

(declare-fun m!3771791 () Bool)

(assert (=> d!966998 m!3771791))

(declare-fun m!3771793 () Bool)

(assert (=> b!3399633 m!3771793))

(assert (=> b!3399633 m!3769755))

(declare-fun m!3771795 () Bool)

(assert (=> b!3399633 m!3771795))

(assert (=> b!3399633 m!3769249))

(declare-fun m!3771797 () Bool)

(assert (=> b!3399633 m!3771797))

(assert (=> b!3398421 d!966998))

(assert (=> b!3398421 d!966300))

(assert (=> b!3398421 d!966312))

(declare-fun b!3399652 () Bool)

(declare-fun e!2110328 () List!37096)

(assert (=> b!3399652 (= e!2110328 (Cons!36972 (h!42392 (list!13399 (charsOf!3412 (h!42394 tokens!494)))) (++!9061 (t!265513 (list!13399 (charsOf!3412 (h!42394 tokens!494)))) (list!13399 (charsOf!3412 separatorToken!241)))))))

(declare-fun lt!1156039 () List!37096)

(declare-fun e!2110327 () Bool)

(declare-fun b!3399654 () Bool)

(assert (=> b!3399654 (= e!2110327 (or (not (= (list!13399 (charsOf!3412 separatorToken!241)) Nil!36972)) (= lt!1156039 (list!13399 (charsOf!3412 (h!42394 tokens!494))))))))

(declare-fun d!967000 () Bool)

(assert (=> d!967000 e!2110327))

(declare-fun res!1375551 () Bool)

(assert (=> d!967000 (=> (not res!1375551) (not e!2110327))))

(assert (=> d!967000 (= res!1375551 (= (content!5111 lt!1156039) ((_ map or) (content!5111 (list!13399 (charsOf!3412 (h!42394 tokens!494)))) (content!5111 (list!13399 (charsOf!3412 separatorToken!241))))))))

(assert (=> d!967000 (= lt!1156039 e!2110328)))

(declare-fun c!579538 () Bool)

(assert (=> d!967000 (= c!579538 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 tokens!494)))))))

(assert (=> d!967000 (= (++!9061 (list!13399 (charsOf!3412 (h!42394 tokens!494))) (list!13399 (charsOf!3412 separatorToken!241))) lt!1156039)))

(declare-fun b!3399653 () Bool)

(declare-fun res!1375552 () Bool)

(assert (=> b!3399653 (=> (not res!1375552) (not e!2110327))))

(assert (=> b!3399653 (= res!1375552 (= (size!27989 lt!1156039) (+ (size!27989 (list!13399 (charsOf!3412 (h!42394 tokens!494)))) (size!27989 (list!13399 (charsOf!3412 separatorToken!241))))))))

(declare-fun b!3399651 () Bool)

(assert (=> b!3399651 (= e!2110328 (list!13399 (charsOf!3412 separatorToken!241)))))

(assert (= (and d!967000 c!579538) b!3399651))

(assert (= (and d!967000 (not c!579538)) b!3399652))

(assert (= (and d!967000 res!1375551) b!3399653))

(assert (= (and b!3399653 res!1375552) b!3399654))

(assert (=> b!3399652 m!3769257))

(declare-fun m!3771799 () Bool)

(assert (=> b!3399652 m!3771799))

(declare-fun m!3771801 () Bool)

(assert (=> d!967000 m!3771801))

(assert (=> d!967000 m!3769295))

(declare-fun m!3771803 () Bool)

(assert (=> d!967000 m!3771803))

(assert (=> d!967000 m!3769257))

(assert (=> d!967000 m!3770389))

(declare-fun m!3771805 () Bool)

(assert (=> b!3399653 m!3771805))

(assert (=> b!3399653 m!3769295))

(declare-fun m!3771807 () Bool)

(assert (=> b!3399653 m!3771807))

(assert (=> b!3399653 m!3769257))

(assert (=> b!3399653 m!3770393))

(assert (=> b!3398421 d!967000))

(assert (=> b!3398421 d!966306))

(declare-fun b!3399667 () Bool)

(declare-fun e!2110332 () Bool)

(assert (=> b!3399667 (= e!2110332 (inv!17 (value!174303 (h!42394 (t!265515 tokens!494)))))))

(declare-fun d!967002 () Bool)

(declare-fun c!579540 () Bool)

(assert (=> d!967002 (= c!579540 ((_ is IntegerValue!16884) (value!174303 (h!42394 (t!265515 tokens!494)))))))

(declare-fun e!2110333 () Bool)

(assert (=> d!967002 (= (inv!21 (value!174303 (h!42394 (t!265515 tokens!494)))) e!2110333)))

(declare-fun b!3399668 () Bool)

(declare-fun e!2110334 () Bool)

(assert (=> b!3399668 (= e!2110334 (inv!15 (value!174303 (h!42394 (t!265515 tokens!494)))))))

(declare-fun b!3399669 () Bool)

(assert (=> b!3399669 (= e!2110333 e!2110332)))

(declare-fun c!579539 () Bool)

(assert (=> b!3399669 (= c!579539 ((_ is IntegerValue!16885) (value!174303 (h!42394 (t!265515 tokens!494)))))))

(declare-fun b!3399670 () Bool)

(declare-fun res!1375553 () Bool)

(assert (=> b!3399670 (=> res!1375553 e!2110334)))

(assert (=> b!3399670 (= res!1375553 (not ((_ is IntegerValue!16886) (value!174303 (h!42394 (t!265515 tokens!494))))))))

(assert (=> b!3399670 (= e!2110332 e!2110334)))

(declare-fun b!3399671 () Bool)

(assert (=> b!3399671 (= e!2110333 (inv!16 (value!174303 (h!42394 (t!265515 tokens!494)))))))

(assert (= (and d!967002 c!579540) b!3399671))

(assert (= (and d!967002 (not c!579540)) b!3399669))

(assert (= (and b!3399669 c!579539) b!3399667))

(assert (= (and b!3399669 (not c!579539)) b!3399670))

(assert (= (and b!3399670 (not res!1375553)) b!3399668))

(declare-fun m!3771809 () Bool)

(assert (=> b!3399667 m!3771809))

(declare-fun m!3771811 () Bool)

(assert (=> b!3399668 m!3771811))

(declare-fun m!3771813 () Bool)

(assert (=> b!3399671 m!3771813))

(assert (=> b!3398585 d!967002))

(declare-fun bs!556165 () Bool)

(declare-fun d!967004 () Bool)

(assert (= bs!556165 (and d!967004 b!3398134)))

(declare-fun lambda!120946 () Int)

(assert (=> bs!556165 (not (= lambda!120946 lambda!120899))))

(declare-fun bs!556166 () Bool)

(assert (= bs!556166 (and d!967004 d!966250)))

(assert (=> bs!556166 (= lambda!120946 lambda!120904)))

(declare-fun b!3399692 () Bool)

(declare-fun e!2110346 () Bool)

(assert (=> b!3399692 (= e!2110346 true)))

(declare-fun b!3399691 () Bool)

(declare-fun e!2110345 () Bool)

(assert (=> b!3399691 (= e!2110345 e!2110346)))

(declare-fun b!3399690 () Bool)

(declare-fun e!2110344 () Bool)

(assert (=> b!3399690 (= e!2110344 e!2110345)))

(assert (=> d!967004 e!2110344))

(assert (= b!3399691 b!3399692))

(assert (= b!3399690 b!3399691))

(assert (= (and d!967004 ((_ is Cons!36975) rules!2135)) b!3399690))

(assert (=> b!3399692 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15427 order!19517 lambda!120946))))

(assert (=> b!3399692 (< (dynLambda!15428 order!19519 (toChars!7457 (transformation!5398 (h!42395 rules!2135)))) (dynLambda!15427 order!19517 lambda!120946))))

(assert (=> d!967004 true))

(declare-fun lt!1156042 () Bool)

(assert (=> d!967004 (= lt!1156042 (forall!7813 (list!13402 (seqFromList!3850 tokens!494)) lambda!120946))))

(declare-fun e!2110342 () Bool)

(assert (=> d!967004 (= lt!1156042 e!2110342)))

(declare-fun res!1375559 () Bool)

(assert (=> d!967004 (=> res!1375559 e!2110342)))

(assert (=> d!967004 (= res!1375559 (not ((_ is Cons!36974) (list!13402 (seqFromList!3850 tokens!494)))))))

(assert (=> d!967004 (not (isEmpty!21232 rules!2135))))

(assert (=> d!967004 (= (rulesProduceEachTokenIndividuallyList!1827 thiss!18206 rules!2135 (list!13402 (seqFromList!3850 tokens!494))) lt!1156042)))

(declare-fun b!3399688 () Bool)

(declare-fun e!2110343 () Bool)

(assert (=> b!3399688 (= e!2110342 e!2110343)))

(declare-fun res!1375558 () Bool)

(assert (=> b!3399688 (=> (not res!1375558) (not e!2110343))))

(assert (=> b!3399688 (= res!1375558 (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 (h!42394 (list!13402 (seqFromList!3850 tokens!494)))))))

(declare-fun b!3399689 () Bool)

(assert (=> b!3399689 (= e!2110343 (rulesProduceEachTokenIndividuallyList!1827 thiss!18206 rules!2135 (t!265515 (list!13402 (seqFromList!3850 tokens!494)))))))

(assert (= (and d!967004 (not res!1375559)) b!3399688))

(assert (= (and b!3399688 res!1375558) b!3399689))

(assert (=> d!967004 m!3769649))

(declare-fun m!3771815 () Bool)

(assert (=> d!967004 m!3771815))

(assert (=> d!967004 m!3769263))

(declare-fun m!3771817 () Bool)

(assert (=> b!3399688 m!3771817))

(declare-fun m!3771819 () Bool)

(assert (=> b!3399689 m!3771819))

(assert (=> b!3398344 d!967004))

(assert (=> b!3398344 d!966794))

(declare-fun d!967008 () Bool)

(declare-fun c!579541 () Bool)

(assert (=> d!967008 (= c!579541 ((_ is Node!11171) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))))

(declare-fun e!2110347 () Bool)

(assert (=> d!967008 (= (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))) e!2110347)))

(declare-fun b!3399693 () Bool)

(assert (=> b!3399693 (= e!2110347 (inv!50079 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))))

(declare-fun b!3399694 () Bool)

(declare-fun e!2110348 () Bool)

(assert (=> b!3399694 (= e!2110347 e!2110348)))

(declare-fun res!1375560 () Bool)

(assert (=> b!3399694 (= res!1375560 (not ((_ is Leaf!17481) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))))))))

(assert (=> b!3399694 (=> res!1375560 e!2110348)))

(declare-fun b!3399695 () Bool)

(assert (=> b!3399695 (= e!2110348 (inv!50080 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))))))

(assert (= (and d!967008 c!579541) b!3399693))

(assert (= (and d!967008 (not c!579541)) b!3399694))

(assert (= (and b!3399694 (not res!1375560)) b!3399695))

(declare-fun m!3771821 () Bool)

(assert (=> b!3399693 m!3771821))

(declare-fun m!3771823 () Bool)

(assert (=> b!3399695 m!3771823))

(assert (=> b!3398433 d!967008))

(declare-fun d!967010 () Bool)

(assert (=> d!967010 (= (inv!16 (value!174303 separatorToken!241)) (= (charsToInt!0 (text!39843 (value!174303 separatorToken!241))) (value!174294 (value!174303 separatorToken!241))))))

(declare-fun bs!556167 () Bool)

(assert (= bs!556167 d!967010))

(declare-fun m!3771825 () Bool)

(assert (=> bs!556167 m!3771825))

(assert (=> b!3398525 d!967010))

(declare-fun d!967012 () Bool)

(declare-fun c!579542 () Bool)

(assert (=> d!967012 (= c!579542 ((_ is Node!11171) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))))

(declare-fun e!2110349 () Bool)

(assert (=> d!967012 (= (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))) e!2110349)))

(declare-fun b!3399696 () Bool)

(assert (=> b!3399696 (= e!2110349 (inv!50079 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))))

(declare-fun b!3399697 () Bool)

(declare-fun e!2110350 () Bool)

(assert (=> b!3399697 (= e!2110349 e!2110350)))

(declare-fun res!1375561 () Bool)

(assert (=> b!3399697 (= res!1375561 (not ((_ is Leaf!17481) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))))))))

(assert (=> b!3399697 (=> res!1375561 e!2110350)))

(declare-fun b!3399698 () Bool)

(assert (=> b!3399698 (= e!2110350 (inv!50080 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))))))

(assert (= (and d!967012 c!579542) b!3399696))

(assert (= (and d!967012 (not c!579542)) b!3399697))

(assert (= (and b!3399697 (not res!1375561)) b!3399698))

(declare-fun m!3771827 () Bool)

(assert (=> b!3399696 m!3771827))

(declare-fun m!3771829 () Bool)

(assert (=> b!3399698 m!3771829))

(assert (=> b!3398217 d!967012))

(declare-fun d!967014 () Bool)

(assert (=> d!967014 (= (inv!15 (value!174303 (h!42394 tokens!494))) (= (charsToBigInt!0 (text!39845 (value!174303 (h!42394 tokens!494))) 0) (value!174298 (value!174303 (h!42394 tokens!494)))))))

(declare-fun bs!556168 () Bool)

(assert (= bs!556168 d!967014))

(declare-fun m!3771831 () Bool)

(assert (=> bs!556168 m!3771831))

(assert (=> b!3398558 d!967014))

(declare-fun d!967016 () Bool)

(assert (=> d!967016 (= (inv!17 (value!174303 separatorToken!241)) (= (charsToBigInt!1 (text!39844 (value!174303 separatorToken!241))) (value!174295 (value!174303 separatorToken!241))))))

(declare-fun bs!556169 () Bool)

(assert (= bs!556169 d!967016))

(declare-fun m!3771833 () Bool)

(assert (=> bs!556169 m!3771833))

(assert (=> b!3398521 d!967016))

(declare-fun d!967018 () Bool)

(declare-fun res!1375566 () Bool)

(declare-fun e!2110355 () Bool)

(assert (=> d!967018 (=> res!1375566 e!2110355)))

(assert (=> d!967018 (= res!1375566 ((_ is Nil!36975) rules!2135))))

(assert (=> d!967018 (= (noDuplicateTag!2011 thiss!18206 rules!2135 Nil!36977) e!2110355)))

(declare-fun b!3399703 () Bool)

(declare-fun e!2110356 () Bool)

(assert (=> b!3399703 (= e!2110355 e!2110356)))

(declare-fun res!1375567 () Bool)

(assert (=> b!3399703 (=> (not res!1375567) (not e!2110356))))

(declare-fun contains!6793 (List!37101 String!41474) Bool)

(assert (=> b!3399703 (= res!1375567 (not (contains!6793 Nil!36977 (tag!5982 (h!42395 rules!2135)))))))

(declare-fun b!3399704 () Bool)

(assert (=> b!3399704 (= e!2110356 (noDuplicateTag!2011 thiss!18206 (t!265516 rules!2135) (Cons!36977 (tag!5982 (h!42395 rules!2135)) Nil!36977)))))

(assert (= (and d!967018 (not res!1375566)) b!3399703))

(assert (= (and b!3399703 res!1375567) b!3399704))

(declare-fun m!3771835 () Bool)

(assert (=> b!3399703 m!3771835))

(declare-fun m!3771837 () Bool)

(assert (=> b!3399704 m!3771837))

(assert (=> b!3398555 d!967018))

(declare-fun d!967020 () Bool)

(declare-fun lt!1156043 () BalanceConc!21956)

(assert (=> d!967020 (= (list!13399 lt!1156043) (originalCharacters!6112 (h!42394 (t!265515 (t!265515 tokens!494)))))))

(assert (=> d!967020 (= lt!1156043 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (value!174303 (h!42394 (t!265515 (t!265515 tokens!494))))))))

(assert (=> d!967020 (= (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))) lt!1156043)))

(declare-fun b_lambda!96949 () Bool)

(assert (=> (not b_lambda!96949) (not d!967020)))

(declare-fun t!265730 () Bool)

(declare-fun tb!182169 () Bool)

(assert (=> (and b!3398617 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265730) tb!182169))

(declare-fun b!3399705 () Bool)

(declare-fun e!2110357 () Bool)

(declare-fun tp!1060912 () Bool)

(assert (=> b!3399705 (= e!2110357 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (value!174303 (h!42394 (t!265515 (t!265515 tokens!494))))))) tp!1060912))))

(declare-fun result!225800 () Bool)

(assert (=> tb!182169 (= result!225800 (and (inv!50076 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (value!174303 (h!42394 (t!265515 (t!265515 tokens!494)))))) e!2110357))))

(assert (= tb!182169 b!3399705))

(declare-fun m!3771839 () Bool)

(assert (=> b!3399705 m!3771839))

(declare-fun m!3771841 () Bool)

(assert (=> tb!182169 m!3771841))

(assert (=> d!967020 t!265730))

(declare-fun b_and!237189 () Bool)

(assert (= b_and!237179 (and (=> t!265730 result!225800) b_and!237189)))

(declare-fun t!265732 () Bool)

(declare-fun tb!182171 () Bool)

(assert (=> (and b!3398126 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265732) tb!182171))

(declare-fun result!225802 () Bool)

(assert (= result!225802 result!225800))

(assert (=> d!967020 t!265732))

(declare-fun b_and!237191 () Bool)

(assert (= b_and!237175 (and (=> t!265732 result!225802) b_and!237191)))

(declare-fun t!265734 () Bool)

(declare-fun tb!182173 () Bool)

(assert (=> (and b!3398131 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265734) tb!182173))

(declare-fun result!225804 () Bool)

(assert (= result!225804 result!225800))

(assert (=> d!967020 t!265734))

(declare-fun b_and!237193 () Bool)

(assert (= b_and!237173 (and (=> t!265734 result!225804) b_and!237193)))

(declare-fun t!265736 () Bool)

(declare-fun tb!182175 () Bool)

(assert (=> (and b!3398120 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265736) tb!182175))

(declare-fun result!225806 () Bool)

(assert (= result!225806 result!225800))

(assert (=> d!967020 t!265736))

(declare-fun b_and!237195 () Bool)

(assert (= b_and!237177 (and (=> t!265736 result!225806) b_and!237195)))

(declare-fun t!265738 () Bool)

(declare-fun tb!182177 () Bool)

(assert (=> (and b!3398587 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265738) tb!182177))

(declare-fun result!225808 () Bool)

(assert (= result!225808 result!225800))

(assert (=> d!967020 t!265738))

(declare-fun b_and!237197 () Bool)

(assert (= b_and!237171 (and (=> t!265738 result!225808) b_and!237197)))

(declare-fun m!3771843 () Bool)

(assert (=> d!967020 m!3771843))

(declare-fun m!3771845 () Bool)

(assert (=> d!967020 m!3771845))

(assert (=> b!3398444 d!967020))

(declare-fun d!967022 () Bool)

(assert (=> d!967022 (= (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13403 (c!579207 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))))))))

(declare-fun bs!556170 () Bool)

(assert (= bs!556170 d!967022))

(declare-fun m!3771847 () Bool)

(assert (=> bs!556170 m!3771847))

(assert (=> b!3398444 d!967022))

(declare-fun d!967024 () Bool)

(declare-fun c!579543 () Bool)

(assert (=> d!967024 (= c!579543 ((_ is Cons!36974) (t!265515 (t!265515 (t!265515 tokens!494)))))))

(declare-fun e!2110358 () List!37096)

(assert (=> d!967024 (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241) e!2110358)))

(declare-fun b!3399706 () Bool)

(assert (=> b!3399706 (= e!2110358 (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 (t!265515 tokens!494)))))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 (t!265515 tokens!494)))) separatorToken!241)))))

(declare-fun b!3399707 () Bool)

(assert (=> b!3399707 (= e!2110358 Nil!36972)))

(assert (= (and d!967024 c!579543) b!3399706))

(assert (= (and d!967024 (not c!579543)) b!3399707))

(declare-fun m!3771849 () Bool)

(assert (=> b!3399706 m!3771849))

(declare-fun m!3771851 () Bool)

(assert (=> b!3399706 m!3771851))

(assert (=> b!3399706 m!3769257))

(declare-fun m!3771853 () Bool)

(assert (=> b!3399706 m!3771853))

(declare-fun m!3771855 () Bool)

(assert (=> b!3399706 m!3771855))

(assert (=> b!3399706 m!3769245))

(assert (=> b!3399706 m!3769257))

(assert (=> b!3399706 m!3769245))

(assert (=> b!3399706 m!3771853))

(assert (=> b!3399706 m!3771849))

(declare-fun m!3771857 () Bool)

(assert (=> b!3399706 m!3771857))

(assert (=> b!3399706 m!3771855))

(assert (=> b!3399706 m!3771851))

(assert (=> b!3398444 d!967024))

(declare-fun b!3399709 () Bool)

(declare-fun e!2110360 () List!37096)

(assert (=> b!3399709 (= e!2110360 (Cons!36972 (h!42392 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))))) (++!9061 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))))) (list!13399 (charsOf!3412 separatorToken!241)))))))

(declare-fun lt!1156044 () List!37096)

(declare-fun b!3399711 () Bool)

(declare-fun e!2110359 () Bool)

(assert (=> b!3399711 (= e!2110359 (or (not (= (list!13399 (charsOf!3412 separatorToken!241)) Nil!36972)) (= lt!1156044 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))))))))

(declare-fun d!967026 () Bool)

(assert (=> d!967026 e!2110359))

(declare-fun res!1375568 () Bool)

(assert (=> d!967026 (=> (not res!1375568) (not e!2110359))))

(assert (=> d!967026 (= res!1375568 (= (content!5111 lt!1156044) ((_ map or) (content!5111 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))))) (content!5111 (list!13399 (charsOf!3412 separatorToken!241))))))))

(assert (=> d!967026 (= lt!1156044 e!2110360)))

(declare-fun c!579544 () Bool)

(assert (=> d!967026 (= c!579544 ((_ is Nil!36972) (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))))))))

(assert (=> d!967026 (= (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241))) lt!1156044)))

(declare-fun b!3399710 () Bool)

(declare-fun res!1375569 () Bool)

(assert (=> b!3399710 (=> (not res!1375569) (not e!2110359))))

(assert (=> b!3399710 (= res!1375569 (= (size!27989 lt!1156044) (+ (size!27989 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494)))))) (size!27989 (list!13399 (charsOf!3412 separatorToken!241))))))))

(declare-fun b!3399708 () Bool)

(assert (=> b!3399708 (= e!2110360 (list!13399 (charsOf!3412 separatorToken!241)))))

(assert (= (and d!967026 c!579544) b!3399708))

(assert (= (and d!967026 (not c!579544)) b!3399709))

(assert (= (and d!967026 res!1375568) b!3399710))

(assert (= (and b!3399710 res!1375569) b!3399711))

(assert (=> b!3399709 m!3769257))

(declare-fun m!3771859 () Bool)

(assert (=> b!3399709 m!3771859))

(declare-fun m!3771861 () Bool)

(assert (=> d!967026 m!3771861))

(assert (=> d!967026 m!3769797))

(declare-fun m!3771863 () Bool)

(assert (=> d!967026 m!3771863))

(assert (=> d!967026 m!3769257))

(assert (=> d!967026 m!3770389))

(declare-fun m!3771865 () Bool)

(assert (=> b!3399710 m!3771865))

(assert (=> b!3399710 m!3769797))

(declare-fun m!3771867 () Bool)

(assert (=> b!3399710 m!3771867))

(assert (=> b!3399710 m!3769257))

(assert (=> b!3399710 m!3770393))

(assert (=> b!3398444 d!967026))

(assert (=> b!3398444 d!966300))

(assert (=> b!3398444 d!966312))

(declare-fun e!2110362 () List!37096)

(declare-fun b!3399713 () Bool)

(assert (=> b!3399713 (= e!2110362 (Cons!36972 (h!42392 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241)))) (++!9061 (t!265513 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241)))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241))))))

(declare-fun e!2110361 () Bool)

(declare-fun lt!1156045 () List!37096)

(declare-fun b!3399715 () Bool)

(assert (=> b!3399715 (= e!2110361 (or (not (= (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241) Nil!36972)) (= lt!1156045 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241))))))))

(declare-fun d!967028 () Bool)

(assert (=> d!967028 e!2110361))

(declare-fun res!1375570 () Bool)

(assert (=> d!967028 (=> (not res!1375570) (not e!2110361))))

(assert (=> d!967028 (= res!1375570 (= (content!5111 lt!1156045) ((_ map or) (content!5111 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241)))) (content!5111 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241)))))))

(assert (=> d!967028 (= lt!1156045 e!2110362)))

(declare-fun c!579545 () Bool)

(assert (=> d!967028 (= c!579545 ((_ is Nil!36972) (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241)))))))

(assert (=> d!967028 (= (++!9061 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241))) (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241)) lt!1156045)))

(declare-fun b!3399714 () Bool)

(declare-fun res!1375571 () Bool)

(assert (=> b!3399714 (=> (not res!1375571) (not e!2110361))))

(assert (=> b!3399714 (= res!1375571 (= (size!27989 lt!1156045) (+ (size!27989 (++!9061 (list!13399 (charsOf!3412 (h!42394 (t!265515 (t!265515 tokens!494))))) (list!13399 (charsOf!3412 separatorToken!241)))) (size!27989 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241)))))))

(declare-fun b!3399712 () Bool)

(assert (=> b!3399712 (= e!2110362 (printWithSeparatorTokenList!274 thiss!18206 (t!265515 (t!265515 (t!265515 tokens!494))) separatorToken!241))))

(assert (= (and d!967028 c!579545) b!3399712))

(assert (= (and d!967028 (not c!579545)) b!3399713))

(assert (= (and d!967028 res!1375570) b!3399714))

(assert (= (and b!3399714 res!1375571) b!3399715))

(assert (=> b!3399713 m!3769795))

(declare-fun m!3771869 () Bool)

(assert (=> b!3399713 m!3771869))

(declare-fun m!3771871 () Bool)

(assert (=> d!967028 m!3771871))

(assert (=> d!967028 m!3769799))

(declare-fun m!3771873 () Bool)

(assert (=> d!967028 m!3771873))

(assert (=> d!967028 m!3769795))

(declare-fun m!3771875 () Bool)

(assert (=> d!967028 m!3771875))

(declare-fun m!3771877 () Bool)

(assert (=> b!3399714 m!3771877))

(assert (=> b!3399714 m!3769799))

(declare-fun m!3771879 () Bool)

(assert (=> b!3399714 m!3771879))

(assert (=> b!3399714 m!3769795))

(declare-fun m!3771881 () Bool)

(assert (=> b!3399714 m!3771881))

(assert (=> b!3398444 d!967028))

(declare-fun bs!556171 () Bool)

(declare-fun d!967030 () Bool)

(assert (= bs!556171 (and d!967030 d!966622)))

(declare-fun lambda!120947 () Int)

(assert (=> bs!556171 (= (= (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (h!42395 rules!2135)))) (= lambda!120947 lambda!120929))))

(declare-fun bs!556172 () Bool)

(assert (= bs!556172 (and d!967030 d!966872)))

(assert (=> bs!556172 (= (= (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (rule!7958 separatorToken!241)))) (= lambda!120947 lambda!120939))))

(assert (=> d!967030 true))

(assert (=> d!967030 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (dynLambda!15434 order!19533 lambda!120947))))

(assert (=> d!967030 (= (equivClasses!2154 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toValue!7598 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) (Forall2!922 lambda!120947))))

(declare-fun bs!556173 () Bool)

(assert (= bs!556173 d!967030))

(declare-fun m!3771883 () Bool)

(assert (=> bs!556173 m!3771883))

(assert (=> b!3398564 d!967030))

(declare-fun d!967032 () Bool)

(declare-fun lt!1156046 () Token!10162)

(assert (=> d!967032 (= lt!1156046 (apply!8627 (list!13402 (_1!21432 lt!1155504)) 0))))

(assert (=> d!967032 (= lt!1156046 (apply!8629 (c!579208 (_1!21432 lt!1155504)) 0))))

(declare-fun e!2110363 () Bool)

(assert (=> d!967032 e!2110363))

(declare-fun res!1375572 () Bool)

(assert (=> d!967032 (=> (not res!1375572) (not e!2110363))))

(assert (=> d!967032 (= res!1375572 (<= 0 0))))

(assert (=> d!967032 (= (apply!8626 (_1!21432 lt!1155504) 0) lt!1156046)))

(declare-fun b!3399716 () Bool)

(assert (=> b!3399716 (= e!2110363 (< 0 (size!27991 (_1!21432 lt!1155504))))))

(assert (= (and d!967032 res!1375572) b!3399716))

(declare-fun m!3771885 () Bool)

(assert (=> d!967032 m!3771885))

(assert (=> d!967032 m!3771885))

(declare-fun m!3771887 () Bool)

(assert (=> d!967032 m!3771887))

(declare-fun m!3771889 () Bool)

(assert (=> d!967032 m!3771889))

(assert (=> b!3399716 m!3769985))

(assert (=> b!3398571 d!967032))

(declare-fun b!3399718 () Bool)

(declare-fun e!2110365 () List!37096)

(assert (=> b!3399718 (= e!2110365 (Cons!36972 (h!42392 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) (++!9061 (t!265513 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) (_2!21433 (get!11808 lt!1155404)))))))

(declare-fun b!3399720 () Bool)

(declare-fun e!2110364 () Bool)

(declare-fun lt!1156047 () List!37096)

(assert (=> b!3399720 (= e!2110364 (or (not (= (_2!21433 (get!11808 lt!1155404)) Nil!36972)) (= lt!1156047 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))))))))

(declare-fun d!967034 () Bool)

(assert (=> d!967034 e!2110364))

(declare-fun res!1375573 () Bool)

(assert (=> d!967034 (=> (not res!1375573) (not e!2110364))))

(assert (=> d!967034 (= res!1375573 (= (content!5111 lt!1156047) ((_ map or) (content!5111 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) (content!5111 (_2!21433 (get!11808 lt!1155404))))))))

(assert (=> d!967034 (= lt!1156047 e!2110365)))

(declare-fun c!579546 () Bool)

(assert (=> d!967034 (= c!579546 ((_ is Nil!36972) (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))))))

(assert (=> d!967034 (= (++!9061 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404)))) (_2!21433 (get!11808 lt!1155404))) lt!1156047)))

(declare-fun b!3399719 () Bool)

(declare-fun res!1375574 () Bool)

(assert (=> b!3399719 (=> (not res!1375574) (not e!2110364))))

(assert (=> b!3399719 (= res!1375574 (= (size!27989 lt!1156047) (+ (size!27989 (list!13399 (charsOf!3412 (_1!21433 (get!11808 lt!1155404))))) (size!27989 (_2!21433 (get!11808 lt!1155404))))))))

(declare-fun b!3399717 () Bool)

(assert (=> b!3399717 (= e!2110365 (_2!21433 (get!11808 lt!1155404)))))

(assert (= (and d!967034 c!579546) b!3399717))

(assert (= (and d!967034 (not c!579546)) b!3399718))

(assert (= (and d!967034 res!1375573) b!3399719))

(assert (= (and b!3399719 res!1375574) b!3399720))

(declare-fun m!3771891 () Bool)

(assert (=> b!3399718 m!3771891))

(declare-fun m!3771893 () Bool)

(assert (=> d!967034 m!3771893))

(assert (=> d!967034 m!3769503))

(declare-fun m!3771895 () Bool)

(assert (=> d!967034 m!3771895))

(declare-fun m!3771897 () Bool)

(assert (=> d!967034 m!3771897))

(declare-fun m!3771899 () Bool)

(assert (=> b!3399719 m!3771899))

(assert (=> b!3399719 m!3769503))

(declare-fun m!3771901 () Bool)

(assert (=> b!3399719 m!3771901))

(assert (=> b!3399719 m!3769509))

(assert (=> b!3398271 d!967034))

(assert (=> b!3398271 d!966608))

(assert (=> b!3398271 d!966610))

(assert (=> b!3398271 d!966612))

(declare-fun d!967036 () Bool)

(assert (=> d!967036 (= (list!13402 (_1!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494)))))) (list!13406 (c!579208 (_1!21432 (lex!2313 thiss!18206 rules!2135 (print!2052 thiss!18206 (singletonSeq!2494 (h!42394 tokens!494))))))))))

(declare-fun bs!556174 () Bool)

(assert (= bs!556174 d!967036))

(declare-fun m!3771903 () Bool)

(assert (=> bs!556174 m!3771903))

(assert (=> d!966358 d!967036))

(assert (=> d!966358 d!966802))

(assert (=> d!966358 d!966810))

(declare-fun d!967038 () Bool)

(assert (=> d!967038 (= (list!13402 (singletonSeq!2494 (h!42394 tokens!494))) (list!13406 (c!579208 (singletonSeq!2494 (h!42394 tokens!494)))))))

(declare-fun bs!556175 () Bool)

(assert (= bs!556175 d!967038))

(declare-fun m!3771905 () Bool)

(assert (=> bs!556175 m!3771905))

(assert (=> d!966358 d!967038))

(assert (=> d!966358 d!966338))

(declare-fun d!967040 () Bool)

(declare-fun lt!1156048 () Int)

(assert (=> d!967040 (= lt!1156048 (size!27995 (list!13402 (_1!21432 lt!1155504))))))

(assert (=> d!967040 (= lt!1156048 (size!27996 (c!579208 (_1!21432 lt!1155504))))))

(assert (=> d!967040 (= (size!27991 (_1!21432 lt!1155504)) lt!1156048)))

(declare-fun bs!556176 () Bool)

(assert (= bs!556176 d!967040))

(assert (=> bs!556176 m!3771885))

(assert (=> bs!556176 m!3771885))

(declare-fun m!3771907 () Bool)

(assert (=> bs!556176 m!3771907))

(declare-fun m!3771909 () Bool)

(assert (=> bs!556176 m!3771909))

(assert (=> d!966358 d!967040))

(assert (=> d!966358 d!966258))

(declare-fun d!967042 () Bool)

(declare-fun lt!1156049 () Token!10162)

(assert (=> d!967042 (= lt!1156049 (apply!8627 (list!13402 (_1!21432 lt!1155475)) 0))))

(assert (=> d!967042 (= lt!1156049 (apply!8629 (c!579208 (_1!21432 lt!1155475)) 0))))

(declare-fun e!2110366 () Bool)

(assert (=> d!967042 e!2110366))

(declare-fun res!1375575 () Bool)

(assert (=> d!967042 (=> (not res!1375575) (not e!2110366))))

(assert (=> d!967042 (= res!1375575 (<= 0 0))))

(assert (=> d!967042 (= (apply!8626 (_1!21432 lt!1155475) 0) lt!1156049)))

(declare-fun b!3399721 () Bool)

(assert (=> b!3399721 (= e!2110366 (< 0 (size!27991 (_1!21432 lt!1155475))))))

(assert (= (and d!967042 res!1375575) b!3399721))

(assert (=> d!967042 m!3771621))

(assert (=> d!967042 m!3771621))

(declare-fun m!3771911 () Bool)

(assert (=> d!967042 m!3771911))

(declare-fun m!3771913 () Bool)

(assert (=> d!967042 m!3771913))

(assert (=> b!3399721 m!3769883))

(assert (=> b!3398532 d!967042))

(declare-fun d!967044 () Bool)

(declare-fun lt!1156050 () Bool)

(assert (=> d!967044 (= lt!1156050 (select (content!5113 tokens!494) (h!42394 tokens!494)))))

(declare-fun e!2110368 () Bool)

(assert (=> d!967044 (= lt!1156050 e!2110368)))

(declare-fun res!1375577 () Bool)

(assert (=> d!967044 (=> (not res!1375577) (not e!2110368))))

(assert (=> d!967044 (= res!1375577 ((_ is Cons!36974) tokens!494))))

(assert (=> d!967044 (= (contains!6791 tokens!494 (h!42394 tokens!494)) lt!1156050)))

(declare-fun b!3399722 () Bool)

(declare-fun e!2110367 () Bool)

(assert (=> b!3399722 (= e!2110368 e!2110367)))

(declare-fun res!1375576 () Bool)

(assert (=> b!3399722 (=> res!1375576 e!2110367)))

(assert (=> b!3399722 (= res!1375576 (= (h!42394 tokens!494) (h!42394 tokens!494)))))

(declare-fun b!3399723 () Bool)

(assert (=> b!3399723 (= e!2110367 (contains!6791 (t!265515 tokens!494) (h!42394 tokens!494)))))

(assert (= (and d!967044 res!1375577) b!3399722))

(assert (= (and b!3399722 (not res!1375576)) b!3399723))

(assert (=> d!967044 m!3771609))

(declare-fun m!3771915 () Bool)

(assert (=> d!967044 m!3771915))

(declare-fun m!3771917 () Bool)

(assert (=> b!3399723 m!3771917))

(assert (=> b!3398341 d!967044))

(declare-fun b!3399725 () Bool)

(declare-fun e!2110370 () List!37096)

(assert (=> b!3399725 (= e!2110370 (Cons!36972 (h!42392 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))) (++!9061 (t!265513 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))) lt!1155328)))))

(declare-fun e!2110369 () Bool)

(declare-fun lt!1156051 () List!37096)

(declare-fun b!3399727 () Bool)

(assert (=> b!3399727 (= e!2110369 (or (not (= lt!1155328 Nil!36972)) (= lt!1156051 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))))))))

(declare-fun d!967046 () Bool)

(assert (=> d!967046 e!2110369))

(declare-fun res!1375578 () Bool)

(assert (=> d!967046 (=> (not res!1375578) (not e!2110369))))

(assert (=> d!967046 (= res!1375578 (= (content!5111 lt!1156051) ((_ map or) (content!5111 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))) (content!5111 lt!1155328))))))

(assert (=> d!967046 (= lt!1156051 e!2110370)))

(declare-fun c!579547 () Bool)

(assert (=> d!967046 (= c!579547 ((_ is Nil!36972) (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))))))

(assert (=> d!967046 (= (++!9061 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494))))) lt!1155328) lt!1156051)))

(declare-fun b!3399726 () Bool)

(declare-fun res!1375579 () Bool)

(assert (=> b!3399726 (=> (not res!1375579) (not e!2110369))))

(assert (=> b!3399726 (= res!1375579 (= (size!27989 lt!1156051) (+ (size!27989 (t!265513 (list!13399 (charsOf!3412 (h!42394 (t!265515 tokens!494)))))) (size!27989 lt!1155328))))))

(declare-fun b!3399724 () Bool)

(assert (=> b!3399724 (= e!2110370 lt!1155328)))

(assert (= (and d!967046 c!579547) b!3399724))

(assert (= (and d!967046 (not c!579547)) b!3399725))

(assert (= (and d!967046 res!1375578) b!3399726))

(assert (= (and b!3399726 res!1375579) b!3399727))

(declare-fun m!3771919 () Bool)

(assert (=> b!3399725 m!3771919))

(declare-fun m!3771921 () Bool)

(assert (=> d!967046 m!3771921))

(assert (=> d!967046 m!3770425))

(assert (=> d!967046 m!3769773))

(declare-fun m!3771923 () Bool)

(assert (=> b!3399726 m!3771923))

(assert (=> b!3399726 m!3770731))

(assert (=> b!3399726 m!3769779))

(assert (=> b!3398425 d!967046))

(declare-fun d!967048 () Bool)

(declare-fun e!2110373 () Bool)

(assert (=> d!967048 e!2110373))

(declare-fun res!1375582 () Bool)

(assert (=> d!967048 (=> (not res!1375582) (not e!2110373))))

(declare-fun lt!1156054 () BalanceConc!21956)

(assert (=> d!967048 (= res!1375582 (= (list!13399 lt!1156054) lt!1155340))))

(declare-fun fromList!721 (List!37096) Conc!11171)

(assert (=> d!967048 (= lt!1156054 (BalanceConc!21957 (fromList!721 lt!1155340)))))

(assert (=> d!967048 (= (fromListB!1727 lt!1155340) lt!1156054)))

(declare-fun b!3399730 () Bool)

(assert (=> b!3399730 (= e!2110373 (isBalanced!3374 (fromList!721 lt!1155340)))))

(assert (= (and d!967048 res!1375582) b!3399730))

(declare-fun m!3771925 () Bool)

(assert (=> d!967048 m!3771925))

(declare-fun m!3771927 () Bool)

(assert (=> d!967048 m!3771927))

(assert (=> b!3399730 m!3771927))

(assert (=> b!3399730 m!3771927))

(declare-fun m!3771929 () Bool)

(assert (=> b!3399730 m!3771929))

(assert (=> d!966274 d!967048))

(declare-fun b!3399732 () Bool)

(declare-fun e!2110374 () Bool)

(declare-fun tp!1060916 () Bool)

(declare-fun tp!1060913 () Bool)

(assert (=> b!3399732 (= e!2110374 (and tp!1060916 tp!1060913))))

(declare-fun b!3399731 () Bool)

(assert (=> b!3399731 (= e!2110374 tp_is_empty!17501)))

(assert (=> b!3398621 (= tp!1060784 e!2110374)))

(declare-fun b!3399733 () Bool)

(declare-fun tp!1060917 () Bool)

(assert (=> b!3399733 (= e!2110374 tp!1060917)))

(declare-fun b!3399734 () Bool)

(declare-fun tp!1060915 () Bool)

(declare-fun tp!1060914 () Bool)

(assert (=> b!3399734 (= e!2110374 (and tp!1060915 tp!1060914))))

(assert (= (and b!3398621 ((_ is ElementMatch!10157) (regOne!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399731))

(assert (= (and b!3398621 ((_ is Concat!15785) (regOne!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399732))

(assert (= (and b!3398621 ((_ is Star!10157) (regOne!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399733))

(assert (= (and b!3398621 ((_ is Union!10157) (regOne!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399734))

(declare-fun b!3399736 () Bool)

(declare-fun e!2110375 () Bool)

(declare-fun tp!1060921 () Bool)

(declare-fun tp!1060918 () Bool)

(assert (=> b!3399736 (= e!2110375 (and tp!1060921 tp!1060918))))

(declare-fun b!3399735 () Bool)

(assert (=> b!3399735 (= e!2110375 tp_is_empty!17501)))

(assert (=> b!3398621 (= tp!1060783 e!2110375)))

(declare-fun b!3399737 () Bool)

(declare-fun tp!1060922 () Bool)

(assert (=> b!3399737 (= e!2110375 tp!1060922)))

(declare-fun b!3399738 () Bool)

(declare-fun tp!1060920 () Bool)

(declare-fun tp!1060919 () Bool)

(assert (=> b!3399738 (= e!2110375 (and tp!1060920 tp!1060919))))

(assert (= (and b!3398621 ((_ is ElementMatch!10157) (regTwo!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399735))

(assert (= (and b!3398621 ((_ is Concat!15785) (regTwo!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399736))

(assert (= (and b!3398621 ((_ is Star!10157) (regTwo!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399737))

(assert (= (and b!3398621 ((_ is Union!10157) (regTwo!20827 (regex!5398 (rule!7958 separatorToken!241))))) b!3399738))

(declare-fun b!3399739 () Bool)

(declare-fun e!2110376 () Bool)

(declare-fun tp!1060923 () Bool)

(assert (=> b!3399739 (= e!2110376 (and tp_is_empty!17501 tp!1060923))))

(assert (=> b!3398622 (= tp!1060787 e!2110376)))

(assert (= (and b!3398622 ((_ is Cons!36972) (t!265513 (originalCharacters!6112 (h!42394 tokens!494))))) b!3399739))

(declare-fun b!3399740 () Bool)

(declare-fun e!2110377 () Bool)

(declare-fun tp!1060924 () Bool)

(assert (=> b!3399740 (= e!2110377 (and tp_is_empty!17501 tp!1060924))))

(assert (=> b!3398606 (= tp!1060769 e!2110377)))

(assert (= (and b!3398606 ((_ is Cons!36972) (t!265513 (originalCharacters!6112 separatorToken!241)))) b!3399740))

(declare-fun b!3399743 () Bool)

(declare-fun b_free!89013 () Bool)

(declare-fun b_next!89717 () Bool)

(assert (=> b!3399743 (= b_free!89013 (not b_next!89717))))

(declare-fun t!265740 () Bool)

(declare-fun tb!182179 () Bool)

(assert (=> (and b!3399743 (= (toValue!7598 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265740) tb!182179))

(declare-fun result!225810 () Bool)

(assert (= result!225810 result!225744))

(assert (=> d!966618 t!265740))

(declare-fun b_and!237199 () Bool)

(declare-fun tp!1060926 () Bool)

(assert (=> b!3399743 (= tp!1060926 (and (=> t!265740 result!225810) b_and!237199))))

(declare-fun b_free!89015 () Bool)

(declare-fun b_next!89719 () Bool)

(assert (=> b!3399743 (= b_free!89015 (not b_next!89719))))

(declare-fun t!265742 () Bool)

(declare-fun tb!182181 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265742) tb!182181))

(declare-fun result!225812 () Bool)

(assert (= result!225812 result!225734))

(assert (=> d!966610 t!265742))

(declare-fun t!265744 () Bool)

(declare-fun tb!182183 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265744) tb!182183))

(declare-fun result!225814 () Bool)

(assert (= result!225814 result!225620))

(assert (=> d!966300 t!265744))

(declare-fun t!265746 () Bool)

(declare-fun tb!182185 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265746) tb!182185))

(declare-fun result!225816 () Bool)

(assert (= result!225816 result!225756))

(assert (=> d!966678 t!265746))

(declare-fun tb!182187 () Bool)

(declare-fun t!265748 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265748) tb!182187))

(declare-fun result!225818 () Bool)

(assert (= result!225818 result!225606))

(assert (=> d!966262 t!265748))

(declare-fun tb!182189 () Bool)

(declare-fun t!265750 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265750) tb!182189))

(declare-fun result!225820 () Bool)

(assert (= result!225820 result!225800))

(assert (=> d!967020 t!265750))

(declare-fun tb!182191 () Bool)

(declare-fun t!265752 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265752) tb!182191))

(declare-fun result!225822 () Bool)

(assert (= result!225822 result!225630))

(assert (=> d!966314 t!265752))

(assert (=> b!3399483 t!265752))

(declare-fun tb!182193 () Bool)

(declare-fun t!265754 () Bool)

(assert (=> (and b!3399743 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265754) tb!182193))

(declare-fun result!225824 () Bool)

(assert (= result!225824 result!225724))

(assert (=> d!966520 t!265754))

(assert (=> b!3398562 t!265744))

(assert (=> b!3398211 t!265748))

(declare-fun b_and!237201 () Bool)

(declare-fun tp!1060925 () Bool)

(assert (=> b!3399743 (= tp!1060925 (and (=> t!265750 result!225820) (=> t!265754 result!225824) (=> t!265744 result!225814) (=> t!265748 result!225818) (=> t!265742 result!225812) (=> t!265752 result!225822) (=> t!265746 result!225816) b_and!237201))))

(declare-fun e!2110380 () Bool)

(assert (=> b!3399743 (= e!2110380 (and tp!1060926 tp!1060925))))

(declare-fun b!3399742 () Bool)

(declare-fun tp!1060928 () Bool)

(declare-fun e!2110378 () Bool)

(assert (=> b!3399742 (= e!2110378 (and tp!1060928 (inv!50068 (tag!5982 (h!42395 (t!265516 (t!265516 rules!2135))))) (inv!50072 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) e!2110380))))

(declare-fun b!3399741 () Bool)

(declare-fun e!2110379 () Bool)

(declare-fun tp!1060927 () Bool)

(assert (=> b!3399741 (= e!2110379 (and e!2110378 tp!1060927))))

(assert (=> b!3398615 (= tp!1060780 e!2110379)))

(assert (= b!3399742 b!3399743))

(assert (= b!3399741 b!3399742))

(assert (= (and b!3398615 ((_ is Cons!36975) (t!265516 (t!265516 rules!2135)))) b!3399741))

(declare-fun m!3771931 () Bool)

(assert (=> b!3399742 m!3771931))

(declare-fun m!3771933 () Bool)

(assert (=> b!3399742 m!3771933))

(declare-fun b!3399745 () Bool)

(declare-fun e!2110382 () Bool)

(declare-fun tp!1060932 () Bool)

(declare-fun tp!1060929 () Bool)

(assert (=> b!3399745 (= e!2110382 (and tp!1060932 tp!1060929))))

(declare-fun b!3399744 () Bool)

(assert (=> b!3399744 (= e!2110382 tp_is_empty!17501)))

(assert (=> b!3398586 (= tp!1060751 e!2110382)))

(declare-fun b!3399746 () Bool)

(declare-fun tp!1060933 () Bool)

(assert (=> b!3399746 (= e!2110382 tp!1060933)))

(declare-fun b!3399747 () Bool)

(declare-fun tp!1060931 () Bool)

(declare-fun tp!1060930 () Bool)

(assert (=> b!3399747 (= e!2110382 (and tp!1060931 tp!1060930))))

(assert (= (and b!3398586 ((_ is ElementMatch!10157) (regex!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) b!3399744))

(assert (= (and b!3398586 ((_ is Concat!15785) (regex!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) b!3399745))

(assert (= (and b!3398586 ((_ is Star!10157) (regex!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) b!3399746))

(assert (= (and b!3398586 ((_ is Union!10157) (regex!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) b!3399747))

(declare-fun b!3399748 () Bool)

(declare-fun e!2110383 () Bool)

(declare-fun tp!1060934 () Bool)

(assert (=> b!3399748 (= e!2110383 (and tp_is_empty!17501 tp!1060934))))

(assert (=> b!3398585 (= tp!1060747 e!2110383)))

(assert (= (and b!3398585 ((_ is Cons!36972) (originalCharacters!6112 (h!42394 (t!265515 tokens!494))))) b!3399748))

(declare-fun b!3399750 () Bool)

(declare-fun e!2110384 () Bool)

(declare-fun tp!1060938 () Bool)

(declare-fun tp!1060935 () Bool)

(assert (=> b!3399750 (= e!2110384 (and tp!1060938 tp!1060935))))

(declare-fun b!3399749 () Bool)

(assert (=> b!3399749 (= e!2110384 tp_is_empty!17501)))

(assert (=> b!3398620 (= tp!1060786 e!2110384)))

(declare-fun b!3399751 () Bool)

(declare-fun tp!1060939 () Bool)

(assert (=> b!3399751 (= e!2110384 tp!1060939)))

(declare-fun b!3399752 () Bool)

(declare-fun tp!1060937 () Bool)

(declare-fun tp!1060936 () Bool)

(assert (=> b!3399752 (= e!2110384 (and tp!1060937 tp!1060936))))

(assert (= (and b!3398620 ((_ is ElementMatch!10157) (reg!10486 (regex!5398 (rule!7958 separatorToken!241))))) b!3399749))

(assert (= (and b!3398620 ((_ is Concat!15785) (reg!10486 (regex!5398 (rule!7958 separatorToken!241))))) b!3399750))

(assert (= (and b!3398620 ((_ is Star!10157) (reg!10486 (regex!5398 (rule!7958 separatorToken!241))))) b!3399751))

(assert (= (and b!3398620 ((_ is Union!10157) (reg!10486 (regex!5398 (rule!7958 separatorToken!241))))) b!3399752))

(declare-fun tp!1060946 () Bool)

(declare-fun e!2110389 () Bool)

(declare-fun b!3399761 () Bool)

(declare-fun tp!1060948 () Bool)

(assert (=> b!3399761 (= e!2110389 (and (inv!50075 (left!28824 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))))) tp!1060946 (inv!50075 (right!29154 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))))) tp!1060948))))

(declare-fun b!3399763 () Bool)

(declare-fun e!2110390 () Bool)

(declare-fun tp!1060947 () Bool)

(assert (=> b!3399763 (= e!2110390 tp!1060947)))

(declare-fun b!3399762 () Bool)

(declare-fun inv!50082 (IArray!22347) Bool)

(assert (=> b!3399762 (= e!2110389 (and (inv!50082 (xs!14329 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))))) e!2110390))))

(assert (=> b!3398433 (= tp!1060679 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241)))) e!2110389))))

(assert (= (and b!3398433 ((_ is Node!11171) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))))) b!3399761))

(assert (= b!3399762 b!3399763))

(assert (= (and b!3398433 ((_ is Leaf!17481) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (value!174303 separatorToken!241))))) b!3399762))

(declare-fun m!3771935 () Bool)

(assert (=> b!3399761 m!3771935))

(declare-fun m!3771937 () Bool)

(assert (=> b!3399761 m!3771937))

(declare-fun m!3771939 () Bool)

(assert (=> b!3399762 m!3771939))

(assert (=> b!3398433 m!3769787))

(declare-fun b!3399765 () Bool)

(declare-fun e!2110391 () Bool)

(declare-fun tp!1060952 () Bool)

(declare-fun tp!1060949 () Bool)

(assert (=> b!3399765 (= e!2110391 (and tp!1060952 tp!1060949))))

(declare-fun b!3399764 () Bool)

(assert (=> b!3399764 (= e!2110391 tp_is_empty!17501)))

(assert (=> b!3398616 (= tp!1060781 e!2110391)))

(declare-fun b!3399766 () Bool)

(declare-fun tp!1060953 () Bool)

(assert (=> b!3399766 (= e!2110391 tp!1060953)))

(declare-fun b!3399767 () Bool)

(declare-fun tp!1060951 () Bool)

(declare-fun tp!1060950 () Bool)

(assert (=> b!3399767 (= e!2110391 (and tp!1060951 tp!1060950))))

(assert (= (and b!3398616 ((_ is ElementMatch!10157) (regex!5398 (h!42395 (t!265516 rules!2135))))) b!3399764))

(assert (= (and b!3398616 ((_ is Concat!15785) (regex!5398 (h!42395 (t!265516 rules!2135))))) b!3399765))

(assert (= (and b!3398616 ((_ is Star!10157) (regex!5398 (h!42395 (t!265516 rules!2135))))) b!3399766))

(assert (= (and b!3398616 ((_ is Union!10157) (regex!5398 (h!42395 (t!265516 rules!2135))))) b!3399767))

(declare-fun b!3399769 () Bool)

(declare-fun e!2110392 () Bool)

(declare-fun tp!1060957 () Bool)

(declare-fun tp!1060954 () Bool)

(assert (=> b!3399769 (= e!2110392 (and tp!1060957 tp!1060954))))

(declare-fun b!3399768 () Bool)

(assert (=> b!3399768 (= e!2110392 tp_is_empty!17501)))

(assert (=> b!3398619 (= tp!1060785 e!2110392)))

(declare-fun b!3399770 () Bool)

(declare-fun tp!1060958 () Bool)

(assert (=> b!3399770 (= e!2110392 tp!1060958)))

(declare-fun b!3399771 () Bool)

(declare-fun tp!1060956 () Bool)

(declare-fun tp!1060955 () Bool)

(assert (=> b!3399771 (= e!2110392 (and tp!1060956 tp!1060955))))

(assert (= (and b!3398619 ((_ is ElementMatch!10157) (regOne!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399768))

(assert (= (and b!3398619 ((_ is Concat!15785) (regOne!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399769))

(assert (= (and b!3398619 ((_ is Star!10157) (regOne!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399770))

(assert (= (and b!3398619 ((_ is Union!10157) (regOne!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399771))

(declare-fun b!3399773 () Bool)

(declare-fun e!2110393 () Bool)

(declare-fun tp!1060962 () Bool)

(declare-fun tp!1060959 () Bool)

(assert (=> b!3399773 (= e!2110393 (and tp!1060962 tp!1060959))))

(declare-fun b!3399772 () Bool)

(assert (=> b!3399772 (= e!2110393 tp_is_empty!17501)))

(assert (=> b!3398619 (= tp!1060782 e!2110393)))

(declare-fun b!3399774 () Bool)

(declare-fun tp!1060963 () Bool)

(assert (=> b!3399774 (= e!2110393 tp!1060963)))

(declare-fun b!3399775 () Bool)

(declare-fun tp!1060961 () Bool)

(declare-fun tp!1060960 () Bool)

(assert (=> b!3399775 (= e!2110393 (and tp!1060961 tp!1060960))))

(assert (= (and b!3398619 ((_ is ElementMatch!10157) (regTwo!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399772))

(assert (= (and b!3398619 ((_ is Concat!15785) (regTwo!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399773))

(assert (= (and b!3398619 ((_ is Star!10157) (regTwo!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399774))

(assert (= (and b!3398619 ((_ is Union!10157) (regTwo!20826 (regex!5398 (rule!7958 separatorToken!241))))) b!3399775))

(declare-fun tp!1060966 () Bool)

(declare-fun b!3399776 () Bool)

(declare-fun tp!1060964 () Bool)

(declare-fun e!2110394 () Bool)

(assert (=> b!3399776 (= e!2110394 (and (inv!50075 (left!28824 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))))) tp!1060964 (inv!50075 (right!29154 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))))) tp!1060966))))

(declare-fun b!3399778 () Bool)

(declare-fun e!2110395 () Bool)

(declare-fun tp!1060965 () Bool)

(assert (=> b!3399778 (= e!2110395 tp!1060965)))

(declare-fun b!3399777 () Bool)

(assert (=> b!3399777 (= e!2110394 (and (inv!50082 (xs!14329 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))))) e!2110395))))

(assert (=> b!3398217 (= tp!1060677 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494))))) e!2110394))))

(assert (= (and b!3398217 ((_ is Node!11171) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))))) b!3399776))

(assert (= b!3399777 b!3399778))

(assert (= (and b!3398217 ((_ is Leaf!17481) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (value!174303 (h!42394 tokens!494)))))) b!3399777))

(declare-fun m!3771941 () Bool)

(assert (=> b!3399776 m!3771941))

(declare-fun m!3771943 () Bool)

(assert (=> b!3399776 m!3771943))

(declare-fun m!3771945 () Bool)

(assert (=> b!3399777 m!3771945))

(assert (=> b!3398217 m!3769399))

(declare-fun b!3399780 () Bool)

(declare-fun e!2110396 () Bool)

(declare-fun tp!1060970 () Bool)

(declare-fun tp!1060967 () Bool)

(assert (=> b!3399780 (= e!2110396 (and tp!1060970 tp!1060967))))

(declare-fun b!3399779 () Bool)

(assert (=> b!3399779 (= e!2110396 tp_is_empty!17501)))

(assert (=> b!3398625 (= tp!1060792 e!2110396)))

(declare-fun b!3399781 () Bool)

(declare-fun tp!1060971 () Bool)

(assert (=> b!3399781 (= e!2110396 tp!1060971)))

(declare-fun b!3399782 () Bool)

(declare-fun tp!1060969 () Bool)

(declare-fun tp!1060968 () Bool)

(assert (=> b!3399782 (= e!2110396 (and tp!1060969 tp!1060968))))

(assert (= (and b!3398625 ((_ is ElementMatch!10157) (reg!10486 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399779))

(assert (= (and b!3398625 ((_ is Concat!15785) (reg!10486 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399780))

(assert (= (and b!3398625 ((_ is Star!10157) (reg!10486 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399781))

(assert (= (and b!3398625 ((_ is Union!10157) (reg!10486 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399782))

(declare-fun b!3399784 () Bool)

(declare-fun e!2110397 () Bool)

(declare-fun tp!1060975 () Bool)

(declare-fun tp!1060972 () Bool)

(assert (=> b!3399784 (= e!2110397 (and tp!1060975 tp!1060972))))

(declare-fun b!3399783 () Bool)

(assert (=> b!3399783 (= e!2110397 tp_is_empty!17501)))

(assert (=> b!3398624 (= tp!1060791 e!2110397)))

(declare-fun b!3399785 () Bool)

(declare-fun tp!1060976 () Bool)

(assert (=> b!3399785 (= e!2110397 tp!1060976)))

(declare-fun b!3399786 () Bool)

(declare-fun tp!1060974 () Bool)

(declare-fun tp!1060973 () Bool)

(assert (=> b!3399786 (= e!2110397 (and tp!1060974 tp!1060973))))

(assert (= (and b!3398624 ((_ is ElementMatch!10157) (regOne!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399783))

(assert (= (and b!3398624 ((_ is Concat!15785) (regOne!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399784))

(assert (= (and b!3398624 ((_ is Star!10157) (regOne!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399785))

(assert (= (and b!3398624 ((_ is Union!10157) (regOne!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399786))

(declare-fun b!3399788 () Bool)

(declare-fun e!2110398 () Bool)

(declare-fun tp!1060980 () Bool)

(declare-fun tp!1060977 () Bool)

(assert (=> b!3399788 (= e!2110398 (and tp!1060980 tp!1060977))))

(declare-fun b!3399787 () Bool)

(assert (=> b!3399787 (= e!2110398 tp_is_empty!17501)))

(assert (=> b!3398624 (= tp!1060788 e!2110398)))

(declare-fun b!3399789 () Bool)

(declare-fun tp!1060981 () Bool)

(assert (=> b!3399789 (= e!2110398 tp!1060981)))

(declare-fun b!3399790 () Bool)

(declare-fun tp!1060979 () Bool)

(declare-fun tp!1060978 () Bool)

(assert (=> b!3399790 (= e!2110398 (and tp!1060979 tp!1060978))))

(assert (= (and b!3398624 ((_ is ElementMatch!10157) (regTwo!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399787))

(assert (= (and b!3398624 ((_ is Concat!15785) (regTwo!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399788))

(assert (= (and b!3398624 ((_ is Star!10157) (regTwo!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399789))

(assert (= (and b!3398624 ((_ is Union!10157) (regTwo!20826 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399790))

(declare-fun b!3399794 () Bool)

(declare-fun b_free!89017 () Bool)

(declare-fun b_next!89721 () Bool)

(assert (=> b!3399794 (= b_free!89017 (not b_next!89721))))

(declare-fun t!265756 () Bool)

(declare-fun tb!182195 () Bool)

(assert (=> (and b!3399794 (= (toValue!7598 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toValue!7598 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265756) tb!182195))

(declare-fun result!225828 () Bool)

(assert (= result!225828 result!225744))

(assert (=> d!966618 t!265756))

(declare-fun b_and!237203 () Bool)

(declare-fun tp!1060985 () Bool)

(assert (=> b!3399794 (= tp!1060985 (and (=> t!265756 result!225828) b_and!237203))))

(declare-fun b_free!89019 () Bool)

(declare-fun b_next!89723 () Bool)

(assert (=> b!3399794 (= b_free!89019 (not b_next!89723))))

(declare-fun t!265758 () Bool)

(declare-fun tb!182197 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (_1!21433 (get!11808 lt!1155404)))))) t!265758) tb!182197))

(declare-fun result!225830 () Bool)

(assert (= result!225830 result!225734))

(assert (=> d!966610 t!265758))

(declare-fun tb!182199 () Bool)

(declare-fun t!265760 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241)))) t!265760) tb!182199))

(declare-fun result!225832 () Bool)

(assert (= result!225832 result!225620))

(assert (=> d!966300 t!265760))

(declare-fun t!265762 () Bool)

(declare-fun tb!182201 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (Cons!36974 (h!42394 tokens!494) Nil!36974)))))) t!265762) tb!182201))

(declare-fun result!225834 () Bool)

(assert (= result!225834 result!225756))

(assert (=> d!966678 t!265762))

(declare-fun t!265764 () Bool)

(declare-fun tb!182203 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494))))) t!265764) tb!182203))

(declare-fun result!225836 () Bool)

(assert (= result!225836 result!225606))

(assert (=> d!966262 t!265764))

(declare-fun t!265766 () Bool)

(declare-fun tb!182205 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494))))))) t!265766) tb!182205))

(declare-fun result!225838 () Bool)

(assert (= result!225838 result!225800))

(assert (=> d!967020 t!265766))

(declare-fun t!265768 () Bool)

(declare-fun tb!182207 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494)))))) t!265768) tb!182207))

(declare-fun result!225840 () Bool)

(assert (= result!225840 result!225630))

(assert (=> d!966314 t!265768))

(assert (=> b!3399483 t!265768))

(declare-fun t!265770 () Bool)

(declare-fun tb!182209 () Bool)

(assert (=> (and b!3399794 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (apply!8626 lt!1155326 0))))) t!265770) tb!182209))

(declare-fun result!225842 () Bool)

(assert (= result!225842 result!225724))

(assert (=> d!966520 t!265770))

(assert (=> b!3398562 t!265760))

(assert (=> b!3398211 t!265764))

(declare-fun b_and!237205 () Bool)

(declare-fun tp!1060984 () Bool)

(assert (=> b!3399794 (= tp!1060984 (and (=> t!265762 result!225834) (=> t!265764 result!225836) (=> t!265766 result!225838) (=> t!265760 result!225832) (=> t!265770 result!225842) (=> t!265758 result!225830) (=> t!265768 result!225840) b_and!237205))))

(declare-fun e!2110403 () Bool)

(assert (=> b!3399794 (= e!2110403 (and tp!1060985 tp!1060984))))

(declare-fun tp!1060983 () Bool)

(declare-fun b!3399791 () Bool)

(declare-fun e!2110404 () Bool)

(declare-fun e!2110402 () Bool)

(assert (=> b!3399791 (= e!2110402 (and (inv!50071 (h!42394 (t!265515 (t!265515 tokens!494)))) e!2110404 tp!1060983))))

(declare-fun e!2110399 () Bool)

(declare-fun tp!1060982 () Bool)

(declare-fun b!3399792 () Bool)

(assert (=> b!3399792 (= e!2110404 (and (inv!21 (value!174303 (h!42394 (t!265515 (t!265515 tokens!494))))) e!2110399 tp!1060982))))

(assert (=> b!3398584 (= tp!1060748 e!2110402)))

(declare-fun tp!1060986 () Bool)

(declare-fun b!3399793 () Bool)

(assert (=> b!3399793 (= e!2110399 (and tp!1060986 (inv!50068 (tag!5982 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (inv!50072 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) e!2110403))))

(assert (= b!3399793 b!3399794))

(assert (= b!3399792 b!3399793))

(assert (= b!3399791 b!3399792))

(assert (= (and b!3398584 ((_ is Cons!36974) (t!265515 (t!265515 tokens!494)))) b!3399791))

(declare-fun m!3771947 () Bool)

(assert (=> b!3399791 m!3771947))

(declare-fun m!3771949 () Bool)

(assert (=> b!3399792 m!3771949))

(declare-fun m!3771951 () Bool)

(assert (=> b!3399793 m!3771951))

(declare-fun m!3771953 () Bool)

(assert (=> b!3399793 m!3771953))

(declare-fun b!3399797 () Bool)

(declare-fun e!2110407 () Bool)

(assert (=> b!3399797 (= e!2110407 true)))

(declare-fun b!3399796 () Bool)

(declare-fun e!2110406 () Bool)

(assert (=> b!3399796 (= e!2110406 e!2110407)))

(declare-fun b!3399795 () Bool)

(declare-fun e!2110405 () Bool)

(assert (=> b!3399795 (= e!2110405 e!2110406)))

(assert (=> b!3398353 e!2110405))

(assert (= b!3399796 b!3399797))

(assert (= b!3399795 b!3399796))

(assert (= (and b!3398353 ((_ is Cons!36975) (t!265516 rules!2135))) b!3399795))

(assert (=> b!3399797 (< (dynLambda!15426 order!19515 (toValue!7598 (transformation!5398 (h!42395 (t!265516 rules!2135))))) (dynLambda!15427 order!19517 lambda!120904))))

(assert (=> b!3399797 (< (dynLambda!15428 order!19519 (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135))))) (dynLambda!15427 order!19517 lambda!120904))))

(declare-fun b!3399799 () Bool)

(declare-fun e!2110408 () Bool)

(declare-fun tp!1060990 () Bool)

(declare-fun tp!1060987 () Bool)

(assert (=> b!3399799 (= e!2110408 (and tp!1060990 tp!1060987))))

(declare-fun b!3399798 () Bool)

(assert (=> b!3399798 (= e!2110408 tp_is_empty!17501)))

(assert (=> b!3398626 (= tp!1060790 e!2110408)))

(declare-fun b!3399800 () Bool)

(declare-fun tp!1060991 () Bool)

(assert (=> b!3399800 (= e!2110408 tp!1060991)))

(declare-fun b!3399801 () Bool)

(declare-fun tp!1060989 () Bool)

(declare-fun tp!1060988 () Bool)

(assert (=> b!3399801 (= e!2110408 (and tp!1060989 tp!1060988))))

(assert (= (and b!3398626 ((_ is ElementMatch!10157) (regOne!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399798))

(assert (= (and b!3398626 ((_ is Concat!15785) (regOne!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399799))

(assert (= (and b!3398626 ((_ is Star!10157) (regOne!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399800))

(assert (= (and b!3398626 ((_ is Union!10157) (regOne!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399801))

(declare-fun b!3399803 () Bool)

(declare-fun e!2110409 () Bool)

(declare-fun tp!1060995 () Bool)

(declare-fun tp!1060992 () Bool)

(assert (=> b!3399803 (= e!2110409 (and tp!1060995 tp!1060992))))

(declare-fun b!3399802 () Bool)

(assert (=> b!3399802 (= e!2110409 tp_is_empty!17501)))

(assert (=> b!3398626 (= tp!1060789 e!2110409)))

(declare-fun b!3399804 () Bool)

(declare-fun tp!1060996 () Bool)

(assert (=> b!3399804 (= e!2110409 tp!1060996)))

(declare-fun b!3399805 () Bool)

(declare-fun tp!1060994 () Bool)

(declare-fun tp!1060993 () Bool)

(assert (=> b!3399805 (= e!2110409 (and tp!1060994 tp!1060993))))

(assert (= (and b!3398626 ((_ is ElementMatch!10157) (regTwo!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399802))

(assert (= (and b!3398626 ((_ is Concat!15785) (regTwo!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399803))

(assert (= (and b!3398626 ((_ is Star!10157) (regTwo!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399804))

(assert (= (and b!3398626 ((_ is Union!10157) (regTwo!20827 (regex!5398 (rule!7958 (h!42394 tokens!494)))))) b!3399805))

(declare-fun b!3399807 () Bool)

(declare-fun e!2110410 () Bool)

(declare-fun tp!1061000 () Bool)

(declare-fun tp!1060997 () Bool)

(assert (=> b!3399807 (= e!2110410 (and tp!1061000 tp!1060997))))

(declare-fun b!3399806 () Bool)

(assert (=> b!3399806 (= e!2110410 tp_is_empty!17501)))

(assert (=> b!3398599 (= tp!1060765 e!2110410)))

(declare-fun b!3399808 () Bool)

(declare-fun tp!1061001 () Bool)

(assert (=> b!3399808 (= e!2110410 tp!1061001)))

(declare-fun b!3399809 () Bool)

(declare-fun tp!1060999 () Bool)

(declare-fun tp!1060998 () Bool)

(assert (=> b!3399809 (= e!2110410 (and tp!1060999 tp!1060998))))

(assert (= (and b!3398599 ((_ is ElementMatch!10157) (regOne!20826 (regex!5398 (h!42395 rules!2135))))) b!3399806))

(assert (= (and b!3398599 ((_ is Concat!15785) (regOne!20826 (regex!5398 (h!42395 rules!2135))))) b!3399807))

(assert (= (and b!3398599 ((_ is Star!10157) (regOne!20826 (regex!5398 (h!42395 rules!2135))))) b!3399808))

(assert (= (and b!3398599 ((_ is Union!10157) (regOne!20826 (regex!5398 (h!42395 rules!2135))))) b!3399809))

(declare-fun b!3399811 () Bool)

(declare-fun e!2110411 () Bool)

(declare-fun tp!1061005 () Bool)

(declare-fun tp!1061002 () Bool)

(assert (=> b!3399811 (= e!2110411 (and tp!1061005 tp!1061002))))

(declare-fun b!3399810 () Bool)

(assert (=> b!3399810 (= e!2110411 tp_is_empty!17501)))

(assert (=> b!3398599 (= tp!1060762 e!2110411)))

(declare-fun b!3399812 () Bool)

(declare-fun tp!1061006 () Bool)

(assert (=> b!3399812 (= e!2110411 tp!1061006)))

(declare-fun b!3399813 () Bool)

(declare-fun tp!1061004 () Bool)

(declare-fun tp!1061003 () Bool)

(assert (=> b!3399813 (= e!2110411 (and tp!1061004 tp!1061003))))

(assert (= (and b!3398599 ((_ is ElementMatch!10157) (regTwo!20826 (regex!5398 (h!42395 rules!2135))))) b!3399810))

(assert (= (and b!3398599 ((_ is Concat!15785) (regTwo!20826 (regex!5398 (h!42395 rules!2135))))) b!3399811))

(assert (= (and b!3398599 ((_ is Star!10157) (regTwo!20826 (regex!5398 (h!42395 rules!2135))))) b!3399812))

(assert (= (and b!3398599 ((_ is Union!10157) (regTwo!20826 (regex!5398 (h!42395 rules!2135))))) b!3399813))

(declare-fun tp!1061009 () Bool)

(declare-fun tp!1061007 () Bool)

(declare-fun e!2110412 () Bool)

(declare-fun b!3399814 () Bool)

(assert (=> b!3399814 (= e!2110412 (and (inv!50075 (left!28824 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))))) tp!1061007 (inv!50075 (right!29154 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))))) tp!1061009))))

(declare-fun b!3399816 () Bool)

(declare-fun e!2110413 () Bool)

(declare-fun tp!1061008 () Bool)

(assert (=> b!3399816 (= e!2110413 tp!1061008)))

(declare-fun b!3399815 () Bool)

(assert (=> b!3399815 (= e!2110412 (and (inv!50082 (xs!14329 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))))) e!2110413))))

(assert (=> b!3398472 (= tp!1060708 (and (inv!50075 (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494)))))) e!2110412))))

(assert (= (and b!3398472 ((_ is Node!11171) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))))) b!3399814))

(assert (= b!3399815 b!3399816))

(assert (= (and b!3398472 ((_ is Leaf!17481) (c!579207 (dynLambda!15424 (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (value!174303 (h!42394 (t!265515 tokens!494))))))) b!3399815))

(declare-fun m!3771955 () Bool)

(assert (=> b!3399814 m!3771955))

(declare-fun m!3771957 () Bool)

(assert (=> b!3399814 m!3771957))

(declare-fun m!3771959 () Bool)

(assert (=> b!3399815 m!3771959))

(assert (=> b!3398472 m!3769837))

(declare-fun b!3399818 () Bool)

(declare-fun e!2110414 () Bool)

(declare-fun tp!1061013 () Bool)

(declare-fun tp!1061010 () Bool)

(assert (=> b!3399818 (= e!2110414 (and tp!1061013 tp!1061010))))

(declare-fun b!3399817 () Bool)

(assert (=> b!3399817 (= e!2110414 tp_is_empty!17501)))

(assert (=> b!3398601 (= tp!1060764 e!2110414)))

(declare-fun b!3399819 () Bool)

(declare-fun tp!1061014 () Bool)

(assert (=> b!3399819 (= e!2110414 tp!1061014)))

(declare-fun b!3399820 () Bool)

(declare-fun tp!1061012 () Bool)

(declare-fun tp!1061011 () Bool)

(assert (=> b!3399820 (= e!2110414 (and tp!1061012 tp!1061011))))

(assert (= (and b!3398601 ((_ is ElementMatch!10157) (regOne!20827 (regex!5398 (h!42395 rules!2135))))) b!3399817))

(assert (= (and b!3398601 ((_ is Concat!15785) (regOne!20827 (regex!5398 (h!42395 rules!2135))))) b!3399818))

(assert (= (and b!3398601 ((_ is Star!10157) (regOne!20827 (regex!5398 (h!42395 rules!2135))))) b!3399819))

(assert (= (and b!3398601 ((_ is Union!10157) (regOne!20827 (regex!5398 (h!42395 rules!2135))))) b!3399820))

(declare-fun b!3399822 () Bool)

(declare-fun e!2110415 () Bool)

(declare-fun tp!1061018 () Bool)

(declare-fun tp!1061015 () Bool)

(assert (=> b!3399822 (= e!2110415 (and tp!1061018 tp!1061015))))

(declare-fun b!3399821 () Bool)

(assert (=> b!3399821 (= e!2110415 tp_is_empty!17501)))

(assert (=> b!3398601 (= tp!1060763 e!2110415)))

(declare-fun b!3399823 () Bool)

(declare-fun tp!1061019 () Bool)

(assert (=> b!3399823 (= e!2110415 tp!1061019)))

(declare-fun b!3399824 () Bool)

(declare-fun tp!1061017 () Bool)

(declare-fun tp!1061016 () Bool)

(assert (=> b!3399824 (= e!2110415 (and tp!1061017 tp!1061016))))

(assert (= (and b!3398601 ((_ is ElementMatch!10157) (regTwo!20827 (regex!5398 (h!42395 rules!2135))))) b!3399821))

(assert (= (and b!3398601 ((_ is Concat!15785) (regTwo!20827 (regex!5398 (h!42395 rules!2135))))) b!3399822))

(assert (= (and b!3398601 ((_ is Star!10157) (regTwo!20827 (regex!5398 (h!42395 rules!2135))))) b!3399823))

(assert (= (and b!3398601 ((_ is Union!10157) (regTwo!20827 (regex!5398 (h!42395 rules!2135))))) b!3399824))

(declare-fun b!3399826 () Bool)

(declare-fun e!2110416 () Bool)

(declare-fun tp!1061023 () Bool)

(declare-fun tp!1061020 () Bool)

(assert (=> b!3399826 (= e!2110416 (and tp!1061023 tp!1061020))))

(declare-fun b!3399825 () Bool)

(assert (=> b!3399825 (= e!2110416 tp_is_empty!17501)))

(assert (=> b!3398600 (= tp!1060766 e!2110416)))

(declare-fun b!3399827 () Bool)

(declare-fun tp!1061024 () Bool)

(assert (=> b!3399827 (= e!2110416 tp!1061024)))

(declare-fun b!3399828 () Bool)

(declare-fun tp!1061022 () Bool)

(declare-fun tp!1061021 () Bool)

(assert (=> b!3399828 (= e!2110416 (and tp!1061022 tp!1061021))))

(assert (= (and b!3398600 ((_ is ElementMatch!10157) (reg!10486 (regex!5398 (h!42395 rules!2135))))) b!3399825))

(assert (= (and b!3398600 ((_ is Concat!15785) (reg!10486 (regex!5398 (h!42395 rules!2135))))) b!3399826))

(assert (= (and b!3398600 ((_ is Star!10157) (reg!10486 (regex!5398 (h!42395 rules!2135))))) b!3399827))

(assert (= (and b!3398600 ((_ is Union!10157) (reg!10486 (regex!5398 (h!42395 rules!2135))))) b!3399828))

(declare-fun b_lambda!96951 () Bool)

(assert (= b_lambda!96949 (or (and b!3399743 b_free!89015 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))))) (and b!3399794 b_free!89019) (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))))) (and b!3398120 b_free!88983 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))))) (and b!3398587 b_free!88999 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))))) (and b!3398131 b_free!88979 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))))) b_lambda!96951)))

(declare-fun b_lambda!96953 () Bool)

(assert (= b_lambda!96917 (or b!3398134 b_lambda!96953)))

(assert (=> d!966604 d!966362))

(declare-fun b_lambda!96955 () Bool)

(assert (= b_lambda!96929 (or d!966250 b_lambda!96955)))

(declare-fun bs!556177 () Bool)

(declare-fun d!967050 () Bool)

(assert (= bs!556177 (and d!967050 d!966250)))

(assert (=> bs!556177 (= (dynLambda!15425 lambda!120904 (h!42394 (list!13402 (seqFromList!3850 tokens!494)))) (rulesProduceIndividualToken!2479 thiss!18206 rules!2135 (h!42394 (list!13402 (seqFromList!3850 tokens!494)))))))

(assert (=> bs!556177 m!3771817))

(assert (=> b!3399254 d!967050))

(declare-fun b_lambda!96957 () Bool)

(assert (= b_lambda!96923 (or b!3398134 b_lambda!96957)))

(assert (=> b!3399098 d!966362))

(declare-fun b_lambda!96959 () Bool)

(assert (= b_lambda!96913 (or b!3398134 b_lambda!96959)))

(assert (=> d!966498 d!966360))

(declare-fun b_lambda!96961 () Bool)

(assert (= b_lambda!96935 (or (and b!3398587 b_free!88999) (and b!3398120 b_free!88983 (= (toChars!7457 (transformation!5398 (rule!7958 separatorToken!241))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3398131 b_free!88979 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 tokens!494)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3399743 b_free!89015 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 (t!265516 rules!2135))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3398126 b_free!88987 (= (toChars!7457 (transformation!5398 (h!42395 rules!2135))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3399794 b_free!89019 (= (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 (t!265515 tokens!494)))))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) (and b!3398617 b_free!89003 (= (toChars!7457 (transformation!5398 (h!42395 (t!265516 rules!2135)))) (toChars!7457 (transformation!5398 (rule!7958 (h!42394 (t!265515 tokens!494))))))) b_lambda!96961)))

(check-sat (not d!966678) (not b_lambda!96887) (not b!3399827) (not b!3399690) (not b!3399369) (not b!3398472) (not b!3399484) (not d!966850) (not b!3399101) (not b!3399785) (not d!966936) (not b_next!89701) (not b!3399790) (not b!3399132) (not b!3399104) (not b!3399705) (not d!967036) (not b!3398898) (not b!3399272) (not b!3398999) (not d!966606) (not b!3399092) (not b!3399788) (not b!3399273) (not b!3399367) (not b!3399263) (not d!966754) (not d!966960) (not b!3399775) (not d!966964) (not b!3398988) (not b!3399804) (not b!3399813) (not b!3399719) (not b!3399489) (not b!3399733) (not b!3399278) (not b!3399566) (not bm!245818) (not b!3399822) (not b!3398987) (not d!966880) (not d!966934) (not b!3399741) (not b!3398795) (not d!966500) (not b!3398864) (not b!3399738) (not b_next!89681) (not b_lambda!96889) (not b!3399391) (not b!3398922) (not b!3399105) (not d!966998) (not b!3399751) (not b!3399562) (not b!3399493) (not bm!245824) (not b!3399725) (not d!966596) (not b!3399563) (not b!3399349) (not b!3399346) (not b!3399723) (not b!3399133) (not b!3399795) (not b!3399000) (not b!3399747) tp_is_empty!17501 (not d!966740) (not d!967038) (not b!3398828) (not d!966854) (not b!3399373) (not d!966594) (not b!3399763) (not b!3398894) (not b!3399422) (not d!967044) (not b!3399820) (not d!966674) (not b!3399497) (not b!3399491) (not d!966676) (not b!3399732) (not b!3399688) (not b!3399303) (not d!966812) (not b!3399766) (not b!3399667) (not d!967040) (not b!3399696) (not d!967034) (not b!3399268) (not b!3399560) (not d!966966) (not d!966910) (not b!3399716) (not b!3398980) (not b!3399826) (not d!966692) (not b!3399633) (not b!3399792) (not b!3398907) (not b!3399710) (not b!3399507) b_and!237197 (not b!3399668) (not b!3399280) (not b!3399021) (not d!966696) (not b!3398943) (not d!966894) (not b!3399579) (not b!3399805) (not b!3399815) (not bs!556177) (not b!3399824) (not b!3399131) (not d!966532) (not d!967016) (not b!3399777) (not b!3399782) (not b!3399770) (not b_lambda!96885) (not b_lambda!96893) (not b_lambda!96955) (not b!3399475) (not b!3399345) (not b!3399393) (not b!3399400) (not b!3399730) (not b!3399809) (not b_lambda!96959) (not d!966694) (not b!3399713) (not b_lambda!96891) (not b!3399205) (not b!3399748) (not d!967014) (not d!966508) (not b!3399395) (not b!3398863) (not b!3398903) (not b!3399689) (not d!966616) (not d!966614) (not b!3399387) (not b_lambda!96957) (not b!3399233) (not b!3398794) (not b!3399765) (not d!966550) (not d!966990) (not b!3398217) (not b!3399771) (not d!966826) (not b_next!89689) (not d!966756) (not b!3399216) (not b!3399276) (not b_next!89717) (not b!3399374) (not b!3399808) (not b!3399558) (not d!967030) (not b!3399487) (not b!3399801) (not d!966800) (not b!3399739) (not b!3399025) (not b_lambda!96883) (not b!3399485) (not d!966558) (not d!966608) (not b!3399008) (not b_lambda!96953) (not b!3399726) (not b!3399814) (not b!3399623) (not bm!245825) (not b!3399202) (not b!3399483) (not b!3399253) (not d!966526) (not b!3399344) (not b!3398969) (not b!3399811) (not b!3399472) (not b_next!89685) (not b!3399799) (not b!3399262) (not b!3399295) (not b!3398983) (not d!966938) (not b!3399736) (not b_lambda!96915) (not d!966600) (not b_lambda!96925) (not b!3398824) (not b!3399099) (not b_next!89703) (not b!3398826) (not d!966538) (not d!966682) (not b!3399436) (not b!3399371) (not b!3399437) (not b_next!89691) (not b!3399693) (not tb!182169) (not d!966486) (not d!966786) b_and!237159 (not b!3399750) (not d!966574) (not bm!245813) (not b!3399149) (not b!3399267) (not b!3399565) (not d!966484) (not d!966584) (not b!3399709) (not b!3399803) (not b!3399180) (not d!966810) (not b!3399762) (not b!3399297) (not d!966516) (not bm!245814) (not b!3399789) (not d!967032) (not b_lambda!96897) (not d!966954) (not d!966992) (not b!3399784) (not b!3399714) (not b!3399190) (not d!966762) (not d!966944) (not d!966520) (not bm!245815) (not b!3399828) (not tb!182097) (not b_next!89683) b_and!237191 (not d!967028) (not d!967000) (not b!3399468) (not d!966968) (not b!3399007) (not d!966912) (not b!3399492) (not b!3399776) (not b_lambda!96921) (not b!3399096) (not b!3399482) (not d!966632) (not d!966684) (not b!3398981) (not b_lambda!96951) (not d!966802) (not d!967020) (not b!3399632) (not b!3399773) (not b!3399752) (not b!3399146) (not b!3398977) (not b_next!89687) (not b!3399823) (not b!3399347) (not d!966610) (not d!966738) (not b!3399201) (not b!3399005) (not b_lambda!96919) (not b!3398917) (not d!966958) (not b!3399559) (not b_lambda!96895) b_and!237193 (not b!3399348) (not b!3399652) b_and!237201 (not b!3399486) (not b!3398807) (not b!3398862) (not b!3399234) (not b!3399093) (not b!3399807) (not b!3399102) (not b!3398829) (not b!3399023) (not d!966582) (not b!3399718) (not b!3399761) (not d!967010) (not b!3399786) (not d!967004) (not d!967022) (not b!3399147) (not b!3399706) (not b_next!89719) (not d!966922) (not b!3399740) (not d!966698) b_and!237205 (not d!966686) (not d!966962) (not b!3399255) (not b!3398865) (not b!3399235) (not d!966506) (not b!3399812) (not b!3399778) (not d!966924) b_and!237155 (not b!3399774) (not tb!182127) (not b!3399401) (not d!966620) (not d!966602) (not b!3399495) (not b!3399780) (not b!3398985) (not b!3399818) (not d!966872) (not b!3399403) b_and!237153 (not b!3399734) (not b!3399791) (not b!3399767) (not b_next!89721) (not b_next!89707) (not b!3399746) (not d!966690) (not b!3399365) (not b!3399499) (not d!966940) (not b!3398822) (not d!967042) (not b!3399698) (not b!3398962) (not d!966688) (not d!966888) (not d!966622) (not b!3398433) (not b!3399270) b_and!237203 (not b_next!89705) (not b!3399488) (not d!966744) (not d!966844) (not b!3399266) (not b!3398945) (not d!966842) (not b!3399467) (not b!3399800) (not d!966796) (not b!3399094) b_and!237189 (not d!966794) (not tb!182117) (not b!3399182) b_and!237199 (not b!3399203) (not b_next!89723) (not b!3399564) (not d!966994) (not d!966784) (not tb!182107) b_and!237157 (not b!3399389) (not b!3399816) (not b!3399737) (not b_lambda!96961) (not b!3399769) (not b!3399653) (not b!3399704) (not b!3399745) (not d!966630) (not b!3399793) (not b!3399191) (not b!3399721) (not d!967048) (not b!3399703) (not b!3399186) (not b!3399510) (not d!966942) b_and!237151 (not b!3398944) (not b!3399473) (not d!966732) b_and!237195 (not b!3399781) (not b!3399695) (not b!3399505) (not d!967046) (not b!3399252) (not b!3398806) (not b!3399622) (not b!3398926) (not d!966932) (not d!966518) (not d!966930) (not b!3399466) (not d!966946) (not b!3398965) (not b!3399819) (not d!967026) (not d!966988) (not b!3399671) (not b!3399405) (not b!3399742) (not b!3399152))
(check-sat (not b_next!89701) (not b_next!89681) b_and!237197 (not b_next!89685) (not b_next!89703) b_and!237201 b_and!237155 b_and!237153 (not b_next!89689) (not b_next!89717) (not b_next!89691) b_and!237159 (not b_next!89683) b_and!237191 (not b_next!89687) b_and!237193 (not b_next!89719) b_and!237205 (not b_next!89721) (not b_next!89707) b_and!237203 (not b_next!89705) (not b_next!89723) b_and!237189 b_and!237199 b_and!237157 b_and!237151 b_and!237195)
