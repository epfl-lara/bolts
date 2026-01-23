; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26346 () Bool)

(assert start!26346)

(declare-fun b!248510 () Bool)

(declare-fun b_free!9265 () Bool)

(declare-fun b_next!9265 () Bool)

(assert (=> b!248510 (= b_free!9265 (not b_next!9265))))

(declare-fun tp!96836 () Bool)

(declare-fun b_and!18733 () Bool)

(assert (=> b!248510 (= tp!96836 b_and!18733)))

(declare-fun b_free!9267 () Bool)

(declare-fun b_next!9267 () Bool)

(assert (=> b!248510 (= b_free!9267 (not b_next!9267))))

(declare-fun tp!96835 () Bool)

(declare-fun b_and!18735 () Bool)

(assert (=> b!248510 (= tp!96835 b_and!18735)))

(declare-fun b!248518 () Bool)

(declare-fun b_free!9269 () Bool)

(declare-fun b_next!9269 () Bool)

(assert (=> b!248518 (= b_free!9269 (not b_next!9269))))

(declare-fun tp!96826 () Bool)

(declare-fun b_and!18737 () Bool)

(assert (=> b!248518 (= tp!96826 b_and!18737)))

(declare-fun b_free!9271 () Bool)

(declare-fun b_next!9271 () Bool)

(assert (=> b!248518 (= b_free!9271 (not b_next!9271))))

(declare-fun tp!96831 () Bool)

(declare-fun b_and!18739 () Bool)

(assert (=> b!248518 (= tp!96831 b_and!18739)))

(declare-fun b!248519 () Bool)

(declare-fun b_free!9273 () Bool)

(declare-fun b_next!9273 () Bool)

(assert (=> b!248519 (= b_free!9273 (not b_next!9273))))

(declare-fun tp!96829 () Bool)

(declare-fun b_and!18741 () Bool)

(assert (=> b!248519 (= tp!96829 b_and!18741)))

(declare-fun b_free!9275 () Bool)

(declare-fun b_next!9275 () Bool)

(assert (=> b!248519 (= b_free!9275 (not b_next!9275))))

(declare-fun tp!96833 () Bool)

(declare-fun b_and!18743 () Bool)

(assert (=> b!248519 (= tp!96833 b_and!18743)))

(declare-fun bs!26632 () Bool)

(declare-fun b!248508 () Bool)

(declare-fun b!248521 () Bool)

(assert (= bs!26632 (and b!248508 b!248521)))

(declare-fun lambda!8210 () Int)

(declare-fun lambda!8209 () Int)

(assert (=> bs!26632 (not (= lambda!8210 lambda!8209))))

(declare-fun b!248544 () Bool)

(declare-fun e!154342 () Bool)

(assert (=> b!248544 (= e!154342 true)))

(declare-fun b!248543 () Bool)

(declare-fun e!154341 () Bool)

(assert (=> b!248543 (= e!154341 e!154342)))

(declare-fun b!248542 () Bool)

(declare-fun e!154340 () Bool)

(assert (=> b!248542 (= e!154340 e!154341)))

(assert (=> b!248508 e!154340))

(assert (= b!248543 b!248544))

(assert (= b!248542 b!248543))

(declare-datatypes ((List!3669 0))(
  ( (Nil!3659) (Cons!3659 (h!9056 (_ BitVec 16)) (t!35301 List!3669)) )
))
(declare-datatypes ((TokenValue!717 0))(
  ( (FloatLiteralValue!1434 (text!5464 List!3669)) (TokenValueExt!716 (__x!2921 Int)) (Broken!3585 (value!24097 List!3669)) (Object!726) (End!717) (Def!717) (Underscore!717) (Match!717) (Else!717) (Error!717) (Case!717) (If!717) (Extends!717) (Abstract!717) (Class!717) (Val!717) (DelimiterValue!1434 (del!777 List!3669)) (KeywordValue!723 (value!24098 List!3669)) (CommentValue!1434 (value!24099 List!3669)) (WhitespaceValue!1434 (value!24100 List!3669)) (IndentationValue!717 (value!24101 List!3669)) (String!4664) (Int32!717) (Broken!3586 (value!24102 List!3669)) (Boolean!718) (Unit!4443) (OperatorValue!720 (op!777 List!3669)) (IdentifierValue!1434 (value!24103 List!3669)) (IdentifierValue!1435 (value!24104 List!3669)) (WhitespaceValue!1435 (value!24105 List!3669)) (True!1434) (False!1434) (Broken!3587 (value!24106 List!3669)) (Broken!3588 (value!24107 List!3669)) (True!1435) (RightBrace!717) (RightBracket!717) (Colon!717) (Null!717) (Comma!717) (LeftBracket!717) (False!1435) (LeftBrace!717) (ImaginaryLiteralValue!717 (text!5465 List!3669)) (StringLiteralValue!2151 (value!24108 List!3669)) (EOFValue!717 (value!24109 List!3669)) (IdentValue!717 (value!24110 List!3669)) (DelimiterValue!1435 (value!24111 List!3669)) (DedentValue!717 (value!24112 List!3669)) (NewLineValue!717 (value!24113 List!3669)) (IntegerValue!2151 (value!24114 (_ BitVec 32)) (text!5466 List!3669)) (IntegerValue!2152 (value!24115 Int) (text!5467 List!3669)) (Times!717) (Or!717) (Equal!717) (Minus!717) (Broken!3589 (value!24116 List!3669)) (And!717) (Div!717) (LessEqual!717) (Mod!717) (Concat!1636) (Not!717) (Plus!717) (SpaceValue!717 (value!24117 List!3669)) (IntegerValue!2153 (value!24118 Int) (text!5468 List!3669)) (StringLiteralValue!2152 (text!5469 List!3669)) (FloatLiteralValue!1435 (text!5470 List!3669)) (BytesLiteralValue!717 (value!24119 List!3669)) (CommentValue!1435 (value!24120 List!3669)) (StringLiteralValue!2153 (value!24121 List!3669)) (ErrorTokenValue!717 (msg!778 List!3669)) )
))
(declare-datatypes ((C!2760 0))(
  ( (C!2761 (val!1266 Int)) )
))
(declare-datatypes ((List!3670 0))(
  ( (Nil!3660) (Cons!3660 (h!9057 C!2760) (t!35302 List!3670)) )
))
(declare-datatypes ((IArray!2425 0))(
  ( (IArray!2426 (innerList!1270 List!3670)) )
))
(declare-datatypes ((Conc!1212 0))(
  ( (Node!1212 (left!3006 Conc!1212) (right!3336 Conc!1212) (csize!2654 Int) (cheight!1423 Int)) (Leaf!1899 (xs!3807 IArray!2425) (csize!2655 Int)) (Empty!1212) )
))
(declare-datatypes ((BalanceConc!2432 0))(
  ( (BalanceConc!2433 (c!47272 Conc!1212)) )
))
(declare-datatypes ((TokenValueInjection!1206 0))(
  ( (TokenValueInjection!1207 (toValue!1398 Int) (toChars!1257 Int)) )
))
(declare-datatypes ((String!4665 0))(
  ( (String!4666 (value!24122 String)) )
))
(declare-datatypes ((Regex!919 0))(
  ( (ElementMatch!919 (c!47273 C!2760)) (Concat!1637 (regOne!2350 Regex!919) (regTwo!2350 Regex!919)) (EmptyExpr!919) (Star!919 (reg!1248 Regex!919)) (EmptyLang!919) (Union!919 (regOne!2351 Regex!919) (regTwo!2351 Regex!919)) )
))
(declare-datatypes ((Rule!1190 0))(
  ( (Rule!1191 (regex!695 Regex!919) (tag!903 String!4665) (isSeparator!695 Bool) (transformation!695 TokenValueInjection!1206)) )
))
(declare-datatypes ((List!3671 0))(
  ( (Nil!3661) (Cons!3661 (h!9058 Rule!1190) (t!35303 List!3671)) )
))
(declare-fun rules!1920 () List!3671)

(get-info :version)

(assert (= (and b!248508 ((_ is Cons!3661) rules!1920)) b!248542))

(declare-fun order!2709 () Int)

(declare-fun order!2711 () Int)

(declare-fun dynLambda!1791 (Int Int) Int)

(declare-fun dynLambda!1792 (Int Int) Int)

(assert (=> b!248544 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8210))))

(declare-fun order!2713 () Int)

(declare-fun dynLambda!1793 (Int Int) Int)

(assert (=> b!248544 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8210))))

(assert (=> b!248508 true))

(declare-fun b!248498 () Bool)

(declare-fun e!154307 () Bool)

(declare-fun e!154326 () Bool)

(declare-fun tp!96825 () Bool)

(assert (=> b!248498 (= e!154307 (and e!154326 tp!96825))))

(declare-fun b!248499 () Bool)

(declare-fun res!115138 () Bool)

(declare-fun e!154315 () Bool)

(assert (=> b!248499 (=> (not res!115138) (not e!154315))))

(declare-datatypes ((Token!1134 0))(
  ( (Token!1135 (value!24123 TokenValue!717) (rule!1272 Rule!1190) (size!2894 Int) (originalCharacters!738 List!3670)) )
))
(declare-fun separatorToken!170 () Token!1134)

(assert (=> b!248499 (= res!115138 (isSeparator!695 (rule!1272 separatorToken!170)))))

(declare-fun b!248500 () Bool)

(declare-fun e!154327 () Bool)

(declare-fun e!154317 () Bool)

(assert (=> b!248500 (= e!154327 e!154317)))

(declare-fun res!115135 () Bool)

(assert (=> b!248500 (=> res!115135 e!154317)))

(declare-fun lt!101094 () List!3670)

(declare-fun lt!101091 () List!3670)

(declare-fun lt!101108 () List!3670)

(assert (=> b!248500 (= res!115135 (or (not (= lt!101094 lt!101108)) (not (= lt!101108 lt!101091)) (not (= lt!101094 lt!101091))))))

(declare-datatypes ((LexerInterface!581 0))(
  ( (LexerInterfaceExt!578 (__x!2922 Int)) (Lexer!579) )
))
(declare-fun thiss!17480 () LexerInterface!581)

(declare-datatypes ((List!3672 0))(
  ( (Nil!3662) (Cons!3662 (h!9059 Token!1134) (t!35304 List!3672)) )
))
(declare-fun tokens!465 () List!3672)

(declare-fun printList!265 (LexerInterface!581 List!3672) List!3670)

(assert (=> b!248500 (= lt!101108 (printList!265 thiss!17480 (Cons!3662 (h!9059 tokens!465) Nil!3662)))))

(declare-fun lt!101097 () BalanceConc!2432)

(declare-fun list!1448 (BalanceConc!2432) List!3670)

(assert (=> b!248500 (= lt!101094 (list!1448 lt!101097))))

(declare-datatypes ((IArray!2427 0))(
  ( (IArray!2428 (innerList!1271 List!3672)) )
))
(declare-datatypes ((Conc!1213 0))(
  ( (Node!1213 (left!3007 Conc!1213) (right!3337 Conc!1213) (csize!2656 Int) (cheight!1424 Int)) (Leaf!1900 (xs!3808 IArray!2427) (csize!2657 Int)) (Empty!1213) )
))
(declare-datatypes ((BalanceConc!2434 0))(
  ( (BalanceConc!2435 (c!47274 Conc!1213)) )
))
(declare-fun lt!101093 () BalanceConc!2434)

(declare-fun printTailRec!275 (LexerInterface!581 BalanceConc!2434 Int BalanceConc!2432) BalanceConc!2432)

(assert (=> b!248500 (= lt!101097 (printTailRec!275 thiss!17480 lt!101093 0 (BalanceConc!2433 Empty!1212)))))

(declare-fun print!312 (LexerInterface!581 BalanceConc!2434) BalanceConc!2432)

(assert (=> b!248500 (= lt!101097 (print!312 thiss!17480 lt!101093))))

(declare-fun singletonSeq!247 (Token!1134) BalanceConc!2434)

(assert (=> b!248500 (= lt!101093 (singletonSeq!247 (h!9059 tokens!465)))))

(declare-fun e!154331 () Bool)

(declare-fun b!248501 () Bool)

(declare-fun tp!96832 () Bool)

(declare-fun e!154322 () Bool)

(declare-fun inv!21 (TokenValue!717) Bool)

(assert (=> b!248501 (= e!154322 (and (inv!21 (value!24123 separatorToken!170)) e!154331 tp!96832))))

(declare-fun b!248502 () Bool)

(declare-fun res!115157 () Bool)

(declare-fun e!154309 () Bool)

(assert (=> b!248502 (=> (not res!115157) (not e!154309))))

(declare-fun rulesInvariant!547 (LexerInterface!581 List!3671) Bool)

(assert (=> b!248502 (= res!115157 (rulesInvariant!547 thiss!17480 rules!1920))))

(declare-fun b!248503 () Bool)

(declare-fun e!154321 () Bool)

(declare-fun e!154319 () Bool)

(assert (=> b!248503 (= e!154321 (not e!154319))))

(declare-fun res!115154 () Bool)

(assert (=> b!248503 (=> res!115154 e!154319)))

(declare-fun lt!101106 () List!3670)

(declare-fun lt!101088 () BalanceConc!2432)

(assert (=> b!248503 (= res!115154 (not (= lt!101106 (list!1448 lt!101088))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!264 (LexerInterface!581 List!3671 BalanceConc!2434 Token!1134 Int) BalanceConc!2432)

(declare-fun seqFromList!767 (List!3672) BalanceConc!2434)

(assert (=> b!248503 (= lt!101088 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 (seqFromList!767 (t!35304 tokens!465)) separatorToken!170 0))))

(declare-fun lt!101087 () List!3670)

(declare-fun lt!101105 () List!3670)

(assert (=> b!248503 (= lt!101087 lt!101105)))

(declare-fun lt!101110 () List!3670)

(declare-fun ++!936 (List!3670 List!3670) List!3670)

(assert (=> b!248503 (= lt!101105 (++!936 lt!101091 lt!101110))))

(declare-fun lt!101098 () List!3670)

(assert (=> b!248503 (= lt!101087 (++!936 (++!936 lt!101091 lt!101098) lt!101106))))

(declare-datatypes ((Unit!4444 0))(
  ( (Unit!4445) )
))
(declare-fun lt!101095 () Unit!4444)

(declare-fun lemmaConcatAssociativity!400 (List!3670 List!3670 List!3670) Unit!4444)

(assert (=> b!248503 (= lt!101095 (lemmaConcatAssociativity!400 lt!101091 lt!101098 lt!101106))))

(declare-fun charsOf!350 (Token!1134) BalanceConc!2432)

(assert (=> b!248503 (= lt!101091 (list!1448 (charsOf!350 (h!9059 tokens!465))))))

(assert (=> b!248503 (= lt!101110 (++!936 lt!101098 lt!101106))))

(declare-fun printWithSeparatorTokenWhenNeededList!274 (LexerInterface!581 List!3671 List!3672 Token!1134) List!3670)

(assert (=> b!248503 (= lt!101106 (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 (t!35304 tokens!465) separatorToken!170))))

(assert (=> b!248503 (= lt!101098 (list!1448 (charsOf!350 separatorToken!170)))))

(declare-fun e!154332 () Bool)

(declare-fun tp!96830 () Bool)

(declare-fun b!248504 () Bool)

(declare-fun e!154310 () Bool)

(declare-fun inv!4512 (Token!1134) Bool)

(assert (=> b!248504 (= e!154310 (and (inv!4512 (h!9059 tokens!465)) e!154332 tp!96830))))

(declare-fun b!248505 () Bool)

(declare-fun e!154333 () Bool)

(declare-datatypes ((tuple2!4086 0))(
  ( (tuple2!4087 (_1!2259 Token!1134) (_2!2259 List!3670)) )
))
(declare-datatypes ((Option!752 0))(
  ( (None!751) (Some!751 (v!14524 tuple2!4086)) )
))
(declare-fun lt!101092 () Option!752)

(declare-fun get!1201 (Option!752) tuple2!4086)

(declare-fun head!858 (List!3672) Token!1134)

(assert (=> b!248505 (= e!154333 (= (_1!2259 (get!1201 lt!101092)) (head!858 tokens!465)))))

(declare-fun b!248506 () Bool)

(declare-fun e!154328 () Bool)

(assert (=> b!248506 (= e!154328 e!154333)))

(declare-fun res!115156 () Bool)

(assert (=> b!248506 (=> (not res!115156) (not e!154333))))

(declare-fun isDefined!603 (Option!752) Bool)

(assert (=> b!248506 (= res!115156 (isDefined!603 lt!101092))))

(declare-fun lt!101096 () List!3670)

(declare-fun maxPrefix!311 (LexerInterface!581 List!3671 List!3670) Option!752)

(assert (=> b!248506 (= lt!101092 (maxPrefix!311 thiss!17480 rules!1920 lt!101096))))

(declare-fun e!154312 () Bool)

(declare-fun e!154329 () Bool)

(declare-fun b!248507 () Bool)

(declare-fun tp!96828 () Bool)

(declare-fun inv!4509 (String!4665) Bool)

(declare-fun inv!4513 (TokenValueInjection!1206) Bool)

(assert (=> b!248507 (= e!154312 (and tp!96828 (inv!4509 (tag!903 (rule!1272 (h!9059 tokens!465)))) (inv!4513 (transformation!695 (rule!1272 (h!9059 tokens!465)))) e!154329))))

(declare-fun e!154311 () Bool)

(assert (=> b!248508 (= e!154317 e!154311)))

(declare-fun res!115159 () Bool)

(assert (=> b!248508 (=> res!115159 e!154311)))

(declare-datatypes ((tuple2!4088 0))(
  ( (tuple2!4089 (_1!2260 Token!1134) (_2!2260 BalanceConc!2432)) )
))
(declare-datatypes ((Option!753 0))(
  ( (None!752) (Some!752 (v!14525 tuple2!4088)) )
))
(declare-fun isDefined!604 (Option!753) Bool)

(declare-fun maxPrefixZipperSequence!274 (LexerInterface!581 List!3671 BalanceConc!2432) Option!753)

(declare-fun seqFromList!768 (List!3670) BalanceConc!2432)

(assert (=> b!248508 (= res!115159 (not (isDefined!604 (maxPrefixZipperSequence!274 thiss!17480 rules!1920 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))))

(declare-fun lt!101109 () Unit!4444)

(declare-fun forallContained!262 (List!3672 Int Token!1134) Unit!4444)

(assert (=> b!248508 (= lt!101109 (forallContained!262 tokens!465 lambda!8210 (h!9059 tokens!465)))))

(assert (=> b!248508 (= lt!101091 (originalCharacters!738 (h!9059 tokens!465)))))

(declare-fun b!248509 () Bool)

(declare-fun res!115160 () Bool)

(assert (=> b!248509 (=> (not res!115160) (not e!154315))))

(declare-fun sepAndNonSepRulesDisjointChars!284 (List!3671 List!3671) Bool)

(assert (=> b!248509 (= res!115160 (sepAndNonSepRulesDisjointChars!284 rules!1920 rules!1920))))

(assert (=> b!248510 (= e!154329 (and tp!96836 tp!96835))))

(declare-fun res!115141 () Bool)

(assert (=> start!26346 (=> (not res!115141) (not e!154309))))

(assert (=> start!26346 (= res!115141 ((_ is Lexer!579) thiss!17480))))

(assert (=> start!26346 e!154309))

(assert (=> start!26346 true))

(assert (=> start!26346 e!154307))

(assert (=> start!26346 (and (inv!4512 separatorToken!170) e!154322)))

(assert (=> start!26346 e!154310))

(declare-fun b!248511 () Bool)

(declare-fun res!115153 () Bool)

(assert (=> b!248511 (=> (not res!115153) (not e!154315))))

(declare-fun rulesProduceIndividualToken!330 (LexerInterface!581 List!3671 Token!1134) Bool)

(assert (=> b!248511 (= res!115153 (rulesProduceIndividualToken!330 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!248512 () Bool)

(declare-fun res!115145 () Bool)

(assert (=> b!248512 (=> res!115145 e!154317)))

(assert (=> b!248512 (= res!115145 (not (rulesProduceIndividualToken!330 thiss!17480 rules!1920 (h!9059 tokens!465))))))

(declare-fun b!248513 () Bool)

(declare-fun res!115146 () Bool)

(declare-fun e!154318 () Bool)

(assert (=> b!248513 (=> (not res!115146) (not e!154318))))

(declare-fun lt!101102 () tuple2!4086)

(declare-fun isEmpty!2253 (List!3670) Bool)

(assert (=> b!248513 (= res!115146 (isEmpty!2253 (_2!2259 lt!101102)))))

(declare-fun e!154325 () Bool)

(declare-fun b!248514 () Bool)

(declare-fun tp!96834 () Bool)

(assert (=> b!248514 (= e!154326 (and tp!96834 (inv!4509 (tag!903 (h!9058 rules!1920))) (inv!4513 (transformation!695 (h!9058 rules!1920))) e!154325))))

(declare-fun b!248515 () Bool)

(declare-fun tp!96827 () Bool)

(assert (=> b!248515 (= e!154332 (and (inv!21 (value!24123 (h!9059 tokens!465))) e!154312 tp!96827))))

(declare-fun b!248516 () Bool)

(declare-fun res!115148 () Bool)

(assert (=> b!248516 (=> (not res!115148) (not e!154321))))

(declare-fun lt!101111 () List!3670)

(assert (=> b!248516 (= res!115148 (= (list!1448 (seqFromList!768 lt!101096)) lt!101111))))

(declare-fun b!248517 () Bool)

(declare-fun res!115152 () Bool)

(declare-fun e!154323 () Bool)

(assert (=> b!248517 (=> res!115152 e!154323)))

(declare-fun lt!101112 () List!3670)

(assert (=> b!248517 (= res!115152 (not (= lt!101112 lt!101096)))))

(assert (=> b!248518 (= e!154325 (and tp!96826 tp!96831))))

(declare-fun e!154330 () Bool)

(assert (=> b!248519 (= e!154330 (and tp!96829 tp!96833))))

(declare-fun b!248520 () Bool)

(declare-fun e!154314 () Bool)

(assert (=> b!248520 (= e!154314 e!154323)))

(declare-fun res!115142 () Bool)

(assert (=> b!248520 (=> res!115142 e!154323)))

(declare-fun isPrefix!379 (List!3670 List!3670) Bool)

(assert (=> b!248520 (= res!115142 (not (isPrefix!379 lt!101091 lt!101096)))))

(declare-fun lt!101090 () tuple2!4086)

(assert (=> b!248520 (= lt!101090 (get!1201 (maxPrefix!311 thiss!17480 rules!1920 lt!101096)))))

(assert (=> b!248520 (isPrefix!379 lt!101091 lt!101112)))

(assert (=> b!248520 (= lt!101112 (++!936 lt!101091 lt!101106))))

(declare-fun lt!101104 () Unit!4444)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!274 (List!3670 List!3670) Unit!4444)

(assert (=> b!248520 (= lt!101104 (lemmaConcatTwoListThenFirstIsPrefix!274 lt!101091 lt!101106))))

(declare-fun filter!77 (List!3672 Int) List!3672)

(declare-fun list!1449 (BalanceConc!2434) List!3672)

(declare-datatypes ((tuple2!4090 0))(
  ( (tuple2!4091 (_1!2261 BalanceConc!2434) (_2!2261 BalanceConc!2432)) )
))
(declare-fun lex!381 (LexerInterface!581 List!3671 BalanceConc!2432) tuple2!4090)

(assert (=> b!248520 (= (filter!77 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))) lambda!8209) (t!35304 tokens!465))))

(declare-fun lt!101089 () Unit!4444)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!68 (LexerInterface!581 List!3671 List!3672 Token!1134) Unit!4444)

(assert (=> b!248520 (= lt!101089 (theoremInvertabilityFromTokensSepTokenWhenNeeded!68 thiss!17480 rules!1920 (t!35304 tokens!465) separatorToken!170))))

(assert (=> b!248520 e!154328))

(declare-fun res!115158 () Bool)

(assert (=> b!248520 (=> res!115158 e!154328)))

(declare-fun isEmpty!2254 (List!3672) Bool)

(assert (=> b!248520 (= res!115158 (isEmpty!2254 tokens!465))))

(declare-fun lt!101099 () Unit!4444)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!150 (LexerInterface!581 List!3671 List!3672 Token!1134) Unit!4444)

(assert (=> b!248520 (= lt!101099 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!150 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!115137 () Bool)

(assert (=> b!248521 (=> (not res!115137) (not e!154315))))

(declare-fun forall!857 (List!3672 Int) Bool)

(assert (=> b!248521 (= res!115137 (forall!857 tokens!465 lambda!8209))))

(declare-fun b!248522 () Bool)

(assert (=> b!248522 (= e!154309 e!154315)))

(declare-fun res!115143 () Bool)

(assert (=> b!248522 (=> (not res!115143) (not e!154315))))

(declare-fun lt!101100 () BalanceConc!2434)

(declare-fun rulesProduceEachTokenIndividually!373 (LexerInterface!581 List!3671 BalanceConc!2434) Bool)

(assert (=> b!248522 (= res!115143 (rulesProduceEachTokenIndividually!373 thiss!17480 rules!1920 lt!101100))))

(assert (=> b!248522 (= lt!101100 (seqFromList!767 tokens!465))))

(declare-fun e!154316 () Bool)

(declare-fun b!248523 () Bool)

(assert (=> b!248523 (= e!154316 (not (= lt!101096 (++!936 lt!101091 lt!101106))))))

(declare-fun b!248524 () Bool)

(assert (=> b!248524 (= e!154315 e!154321)))

(declare-fun res!115136 () Bool)

(assert (=> b!248524 (=> (not res!115136) (not e!154321))))

(assert (=> b!248524 (= res!115136 (= lt!101096 lt!101111))))

(assert (=> b!248524 (= lt!101111 (list!1448 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 lt!101100 separatorToken!170 0)))))

(assert (=> b!248524 (= lt!101096 (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!248525 () Bool)

(assert (=> b!248525 (= e!154319 e!154327)))

(declare-fun res!115139 () Bool)

(assert (=> b!248525 (=> res!115139 e!154327)))

(assert (=> b!248525 (= res!115139 e!154316)))

(declare-fun res!115151 () Bool)

(assert (=> b!248525 (=> (not res!115151) (not e!154316))))

(declare-fun lt!101103 () Bool)

(assert (=> b!248525 (= res!115151 (not lt!101103))))

(assert (=> b!248525 (= lt!101103 (= lt!101096 lt!101105))))

(declare-fun b!248526 () Bool)

(declare-fun res!115150 () Bool)

(assert (=> b!248526 (=> res!115150 e!154317)))

(declare-fun isEmpty!2255 (BalanceConc!2434) Bool)

(assert (=> b!248526 (= res!115150 (isEmpty!2255 (_1!2261 (lex!381 thiss!17480 rules!1920 (seqFromList!768 lt!101091)))))))

(declare-fun b!248527 () Bool)

(declare-fun res!115140 () Bool)

(assert (=> b!248527 (=> (not res!115140) (not e!154309))))

(declare-fun isEmpty!2256 (List!3671) Bool)

(assert (=> b!248527 (= res!115140 (not (isEmpty!2256 rules!1920)))))

(declare-fun b!248528 () Bool)

(declare-fun size!2895 (BalanceConc!2434) Int)

(assert (=> b!248528 (= e!154323 (<= 0 (size!2895 lt!101100)))))

(assert (=> b!248528 (= lt!101106 (_2!2259 lt!101090))))

(declare-fun lt!101101 () Unit!4444)

(declare-fun lemmaSamePrefixThenSameSuffix!194 (List!3670 List!3670 List!3670 List!3670 List!3670) Unit!4444)

(assert (=> b!248528 (= lt!101101 (lemmaSamePrefixThenSameSuffix!194 lt!101091 lt!101106 lt!101091 (_2!2259 lt!101090) lt!101096))))

(declare-fun b!248529 () Bool)

(declare-fun res!115144 () Bool)

(assert (=> b!248529 (=> res!115144 e!154323)))

(assert (=> b!248529 (= res!115144 (not (= (++!936 lt!101091 (_2!2259 lt!101090)) lt!101096)))))

(declare-fun b!248530 () Bool)

(declare-fun matchR!257 (Regex!919 List!3670) Bool)

(assert (=> b!248530 (= e!154318 (matchR!257 (regex!695 (rule!1272 (h!9059 tokens!465))) lt!101091))))

(declare-fun b!248531 () Bool)

(assert (=> b!248531 (= e!154311 e!154314)))

(declare-fun res!115149 () Bool)

(assert (=> b!248531 (=> res!115149 e!154314)))

(assert (=> b!248531 (= res!115149 lt!101103)))

(assert (=> b!248531 e!154318))

(declare-fun res!115155 () Bool)

(assert (=> b!248531 (=> (not res!115155) (not e!154318))))

(assert (=> b!248531 (= res!115155 (= (_1!2259 lt!101102) (h!9059 tokens!465)))))

(declare-fun lt!101107 () Option!752)

(assert (=> b!248531 (= lt!101102 (get!1201 lt!101107))))

(assert (=> b!248531 (isDefined!603 lt!101107)))

(assert (=> b!248531 (= lt!101107 (maxPrefix!311 thiss!17480 rules!1920 lt!101091))))

(declare-fun tp!96837 () Bool)

(declare-fun b!248532 () Bool)

(assert (=> b!248532 (= e!154331 (and tp!96837 (inv!4509 (tag!903 (rule!1272 separatorToken!170))) (inv!4513 (transformation!695 (rule!1272 separatorToken!170))) e!154330))))

(declare-fun b!248533 () Bool)

(declare-fun res!115147 () Bool)

(assert (=> b!248533 (=> (not res!115147) (not e!154315))))

(assert (=> b!248533 (= res!115147 ((_ is Cons!3662) tokens!465))))

(assert (= (and start!26346 res!115141) b!248527))

(assert (= (and b!248527 res!115140) b!248502))

(assert (= (and b!248502 res!115157) b!248522))

(assert (= (and b!248522 res!115143) b!248511))

(assert (= (and b!248511 res!115153) b!248499))

(assert (= (and b!248499 res!115138) b!248521))

(assert (= (and b!248521 res!115137) b!248509))

(assert (= (and b!248509 res!115160) b!248533))

(assert (= (and b!248533 res!115147) b!248524))

(assert (= (and b!248524 res!115136) b!248516))

(assert (= (and b!248516 res!115148) b!248503))

(assert (= (and b!248503 (not res!115154)) b!248525))

(assert (= (and b!248525 res!115151) b!248523))

(assert (= (and b!248525 (not res!115139)) b!248500))

(assert (= (and b!248500 (not res!115135)) b!248512))

(assert (= (and b!248512 (not res!115145)) b!248526))

(assert (= (and b!248526 (not res!115150)) b!248508))

(assert (= (and b!248508 (not res!115159)) b!248531))

(assert (= (and b!248531 res!115155) b!248513))

(assert (= (and b!248513 res!115146) b!248530))

(assert (= (and b!248531 (not res!115149)) b!248520))

(assert (= (and b!248520 (not res!115158)) b!248506))

(assert (= (and b!248506 res!115156) b!248505))

(assert (= (and b!248520 (not res!115142)) b!248517))

(assert (= (and b!248517 (not res!115152)) b!248529))

(assert (= (and b!248529 (not res!115144)) b!248528))

(assert (= b!248514 b!248518))

(assert (= b!248498 b!248514))

(assert (= (and start!26346 ((_ is Cons!3661) rules!1920)) b!248498))

(assert (= b!248532 b!248519))

(assert (= b!248501 b!248532))

(assert (= start!26346 b!248501))

(assert (= b!248507 b!248510))

(assert (= b!248515 b!248507))

(assert (= b!248504 b!248515))

(assert (= (and start!26346 ((_ is Cons!3662) tokens!465)) b!248504))

(declare-fun m!304181 () Bool)

(assert (=> b!248511 m!304181))

(declare-fun m!304183 () Bool)

(assert (=> b!248524 m!304183))

(assert (=> b!248524 m!304183))

(declare-fun m!304185 () Bool)

(assert (=> b!248524 m!304185))

(declare-fun m!304187 () Bool)

(assert (=> b!248524 m!304187))

(declare-fun m!304189 () Bool)

(assert (=> b!248529 m!304189))

(declare-fun m!304191 () Bool)

(assert (=> b!248528 m!304191))

(declare-fun m!304193 () Bool)

(assert (=> b!248528 m!304193))

(declare-fun m!304195 () Bool)

(assert (=> b!248516 m!304195))

(assert (=> b!248516 m!304195))

(declare-fun m!304197 () Bool)

(assert (=> b!248516 m!304197))

(declare-fun m!304199 () Bool)

(assert (=> b!248505 m!304199))

(declare-fun m!304201 () Bool)

(assert (=> b!248505 m!304201))

(declare-fun m!304203 () Bool)

(assert (=> b!248532 m!304203))

(declare-fun m!304205 () Bool)

(assert (=> b!248532 m!304205))

(declare-fun m!304207 () Bool)

(assert (=> b!248502 m!304207))

(declare-fun m!304209 () Bool)

(assert (=> b!248526 m!304209))

(assert (=> b!248526 m!304209))

(declare-fun m!304211 () Bool)

(assert (=> b!248526 m!304211))

(declare-fun m!304213 () Bool)

(assert (=> b!248526 m!304213))

(declare-fun m!304215 () Bool)

(assert (=> b!248527 m!304215))

(declare-fun m!304217 () Bool)

(assert (=> b!248512 m!304217))

(declare-fun m!304219 () Bool)

(assert (=> b!248522 m!304219))

(declare-fun m!304221 () Bool)

(assert (=> b!248522 m!304221))

(declare-fun m!304223 () Bool)

(assert (=> b!248506 m!304223))

(declare-fun m!304225 () Bool)

(assert (=> b!248506 m!304225))

(declare-fun m!304227 () Bool)

(assert (=> b!248523 m!304227))

(declare-fun m!304229 () Bool)

(assert (=> b!248515 m!304229))

(declare-fun m!304231 () Bool)

(assert (=> b!248530 m!304231))

(declare-fun m!304233 () Bool)

(assert (=> b!248531 m!304233))

(declare-fun m!304235 () Bool)

(assert (=> b!248531 m!304235))

(declare-fun m!304237 () Bool)

(assert (=> b!248531 m!304237))

(declare-fun m!304239 () Bool)

(assert (=> b!248514 m!304239))

(declare-fun m!304241 () Bool)

(assert (=> b!248514 m!304241))

(declare-fun m!304243 () Bool)

(assert (=> b!248504 m!304243))

(declare-fun m!304245 () Bool)

(assert (=> b!248509 m!304245))

(declare-fun m!304247 () Bool)

(assert (=> start!26346 m!304247))

(declare-fun m!304249 () Bool)

(assert (=> b!248503 m!304249))

(declare-fun m!304251 () Bool)

(assert (=> b!248503 m!304251))

(declare-fun m!304253 () Bool)

(assert (=> b!248503 m!304253))

(declare-fun m!304255 () Bool)

(assert (=> b!248503 m!304255))

(declare-fun m!304257 () Bool)

(assert (=> b!248503 m!304257))

(declare-fun m!304259 () Bool)

(assert (=> b!248503 m!304259))

(assert (=> b!248503 m!304257))

(assert (=> b!248503 m!304249))

(declare-fun m!304261 () Bool)

(assert (=> b!248503 m!304261))

(declare-fun m!304263 () Bool)

(assert (=> b!248503 m!304263))

(assert (=> b!248503 m!304251))

(declare-fun m!304265 () Bool)

(assert (=> b!248503 m!304265))

(declare-fun m!304267 () Bool)

(assert (=> b!248503 m!304267))

(assert (=> b!248503 m!304263))

(declare-fun m!304269 () Bool)

(assert (=> b!248503 m!304269))

(declare-fun m!304271 () Bool)

(assert (=> b!248503 m!304271))

(declare-fun m!304273 () Bool)

(assert (=> b!248503 m!304273))

(declare-fun m!304275 () Bool)

(assert (=> b!248501 m!304275))

(declare-fun m!304277 () Bool)

(assert (=> b!248500 m!304277))

(declare-fun m!304279 () Bool)

(assert (=> b!248500 m!304279))

(declare-fun m!304281 () Bool)

(assert (=> b!248500 m!304281))

(declare-fun m!304283 () Bool)

(assert (=> b!248500 m!304283))

(declare-fun m!304285 () Bool)

(assert (=> b!248500 m!304285))

(declare-fun m!304287 () Bool)

(assert (=> b!248521 m!304287))

(declare-fun m!304289 () Bool)

(assert (=> b!248508 m!304289))

(assert (=> b!248508 m!304289))

(declare-fun m!304291 () Bool)

(assert (=> b!248508 m!304291))

(assert (=> b!248508 m!304291))

(declare-fun m!304293 () Bool)

(assert (=> b!248508 m!304293))

(declare-fun m!304295 () Bool)

(assert (=> b!248508 m!304295))

(declare-fun m!304297 () Bool)

(assert (=> b!248513 m!304297))

(declare-fun m!304299 () Bool)

(assert (=> b!248507 m!304299))

(declare-fun m!304301 () Bool)

(assert (=> b!248507 m!304301))

(declare-fun m!304303 () Bool)

(assert (=> b!248520 m!304303))

(assert (=> b!248520 m!304225))

(declare-fun m!304305 () Bool)

(assert (=> b!248520 m!304305))

(declare-fun m!304307 () Bool)

(assert (=> b!248520 m!304307))

(declare-fun m!304309 () Bool)

(assert (=> b!248520 m!304309))

(declare-fun m!304311 () Bool)

(assert (=> b!248520 m!304311))

(assert (=> b!248520 m!304225))

(declare-fun m!304313 () Bool)

(assert (=> b!248520 m!304313))

(declare-fun m!304315 () Bool)

(assert (=> b!248520 m!304315))

(declare-fun m!304317 () Bool)

(assert (=> b!248520 m!304317))

(declare-fun m!304319 () Bool)

(assert (=> b!248520 m!304319))

(assert (=> b!248520 m!304309))

(assert (=> b!248520 m!304227))

(declare-fun m!304321 () Bool)

(assert (=> b!248520 m!304321))

(check-sat (not b!248526) b_and!18739 (not b_next!9275) (not b_next!9267) (not b!248511) (not b!248527) (not b!248505) b_and!18733 (not b!248506) (not b!248516) (not b!248498) b_and!18735 (not start!26346) (not b!248528) (not b!248542) (not b_next!9269) (not b!248502) (not b!248515) (not b!248522) (not b!248508) (not b!248524) (not b!248529) (not b!248514) (not b!248532) b_and!18741 b_and!18743 (not b!248520) (not b!248531) (not b!248509) (not b!248530) (not b!248523) b_and!18737 (not b!248521) (not b!248501) (not b_next!9273) (not b_next!9265) (not b!248504) (not b!248513) (not b!248512) (not b!248503) (not b!248507) (not b_next!9271) (not b!248500))
(check-sat b_and!18735 (not b_next!9269) b_and!18739 (not b_next!9275) (not b_next!9267) b_and!18733 b_and!18741 b_and!18743 b_and!18737 (not b_next!9271) (not b_next!9273) (not b_next!9265))
(get-model)

(declare-fun d!69851 () Bool)

(declare-fun res!115176 () Bool)

(declare-fun e!154347 () Bool)

(assert (=> d!69851 (=> res!115176 e!154347)))

(assert (=> d!69851 (= res!115176 (not ((_ is Cons!3661) rules!1920)))))

(assert (=> d!69851 (= (sepAndNonSepRulesDisjointChars!284 rules!1920 rules!1920) e!154347)))

(declare-fun b!248551 () Bool)

(declare-fun e!154348 () Bool)

(assert (=> b!248551 (= e!154347 e!154348)))

(declare-fun res!115177 () Bool)

(assert (=> b!248551 (=> (not res!115177) (not e!154348))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!94 (Rule!1190 List!3671) Bool)

(assert (=> b!248551 (= res!115177 (ruleDisjointCharsFromAllFromOtherType!94 (h!9058 rules!1920) rules!1920))))

(declare-fun b!248552 () Bool)

(assert (=> b!248552 (= e!154348 (sepAndNonSepRulesDisjointChars!284 rules!1920 (t!35303 rules!1920)))))

(assert (= (and d!69851 (not res!115176)) b!248551))

(assert (= (and b!248551 res!115177) b!248552))

(declare-fun m!304329 () Bool)

(assert (=> b!248551 m!304329))

(declare-fun m!304331 () Bool)

(assert (=> b!248552 m!304331))

(assert (=> b!248509 d!69851))

(declare-fun d!69853 () Bool)

(declare-fun res!115182 () Bool)

(declare-fun e!154351 () Bool)

(assert (=> d!69853 (=> (not res!115182) (not e!154351))))

(assert (=> d!69853 (= res!115182 (not (isEmpty!2253 (originalCharacters!738 separatorToken!170))))))

(assert (=> d!69853 (= (inv!4512 separatorToken!170) e!154351)))

(declare-fun b!248557 () Bool)

(declare-fun res!115183 () Bool)

(assert (=> b!248557 (=> (not res!115183) (not e!154351))))

(declare-fun dynLambda!1796 (Int TokenValue!717) BalanceConc!2432)

(assert (=> b!248557 (= res!115183 (= (originalCharacters!738 separatorToken!170) (list!1448 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (value!24123 separatorToken!170)))))))

(declare-fun b!248558 () Bool)

(declare-fun size!2898 (List!3670) Int)

(assert (=> b!248558 (= e!154351 (= (size!2894 separatorToken!170) (size!2898 (originalCharacters!738 separatorToken!170))))))

(assert (= (and d!69853 res!115182) b!248557))

(assert (= (and b!248557 res!115183) b!248558))

(declare-fun b_lambda!7275 () Bool)

(assert (=> (not b_lambda!7275) (not b!248557)))

(declare-fun tb!12729 () Bool)

(declare-fun t!35306 () Bool)

(assert (=> (and b!248510 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170)))) t!35306) tb!12729))

(declare-fun b!248563 () Bool)

(declare-fun e!154354 () Bool)

(declare-fun tp!96840 () Bool)

(declare-fun inv!4516 (Conc!1212) Bool)

(assert (=> b!248563 (= e!154354 (and (inv!4516 (c!47272 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (value!24123 separatorToken!170)))) tp!96840))))

(declare-fun result!16052 () Bool)

(declare-fun inv!4517 (BalanceConc!2432) Bool)

(assert (=> tb!12729 (= result!16052 (and (inv!4517 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (value!24123 separatorToken!170))) e!154354))))

(assert (= tb!12729 b!248563))

(declare-fun m!304333 () Bool)

(assert (=> b!248563 m!304333))

(declare-fun m!304335 () Bool)

(assert (=> tb!12729 m!304335))

(assert (=> b!248557 t!35306))

(declare-fun b_and!18745 () Bool)

(assert (= b_and!18735 (and (=> t!35306 result!16052) b_and!18745)))

(declare-fun t!35308 () Bool)

(declare-fun tb!12731 () Bool)

(assert (=> (and b!248518 (= (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170)))) t!35308) tb!12731))

(declare-fun result!16056 () Bool)

(assert (= result!16056 result!16052))

(assert (=> b!248557 t!35308))

(declare-fun b_and!18747 () Bool)

(assert (= b_and!18739 (and (=> t!35308 result!16056) b_and!18747)))

(declare-fun t!35310 () Bool)

(declare-fun tb!12733 () Bool)

(assert (=> (and b!248519 (= (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170)))) t!35310) tb!12733))

(declare-fun result!16058 () Bool)

(assert (= result!16058 result!16052))

(assert (=> b!248557 t!35310))

(declare-fun b_and!18749 () Bool)

(assert (= b_and!18743 (and (=> t!35310 result!16058) b_and!18749)))

(declare-fun m!304337 () Bool)

(assert (=> d!69853 m!304337))

(declare-fun m!304339 () Bool)

(assert (=> b!248557 m!304339))

(assert (=> b!248557 m!304339))

(declare-fun m!304341 () Bool)

(assert (=> b!248557 m!304341))

(declare-fun m!304343 () Bool)

(assert (=> b!248558 m!304343))

(assert (=> start!26346 d!69853))

(declare-fun b!248592 () Bool)

(declare-fun res!115202 () Bool)

(declare-fun e!154372 () Bool)

(assert (=> b!248592 (=> (not res!115202) (not e!154372))))

(declare-fun tail!451 (List!3670) List!3670)

(assert (=> b!248592 (= res!115202 (isEmpty!2253 (tail!451 lt!101091)))))

(declare-fun b!248593 () Bool)

(declare-fun e!154369 () Bool)

(declare-fun lt!101118 () Bool)

(assert (=> b!248593 (= e!154369 (not lt!101118))))

(declare-fun b!248594 () Bool)

(declare-fun res!115203 () Bool)

(declare-fun e!154371 () Bool)

(assert (=> b!248594 (=> res!115203 e!154371)))

(assert (=> b!248594 (= res!115203 (not ((_ is ElementMatch!919) (regex!695 (rule!1272 (h!9059 tokens!465))))))))

(assert (=> b!248594 (= e!154369 e!154371)))

(declare-fun bm!13062 () Bool)

(declare-fun call!13067 () Bool)

(assert (=> bm!13062 (= call!13067 (isEmpty!2253 lt!101091))))

(declare-fun b!248595 () Bool)

(declare-fun e!154373 () Bool)

(assert (=> b!248595 (= e!154373 (= lt!101118 call!13067))))

(declare-fun b!248596 () Bool)

(declare-fun e!154370 () Bool)

(declare-fun e!154375 () Bool)

(assert (=> b!248596 (= e!154370 e!154375)))

(declare-fun res!115205 () Bool)

(assert (=> b!248596 (=> res!115205 e!154375)))

(assert (=> b!248596 (= res!115205 call!13067)))

(declare-fun b!248597 () Bool)

(declare-fun res!115204 () Bool)

(assert (=> b!248597 (=> res!115204 e!154375)))

(assert (=> b!248597 (= res!115204 (not (isEmpty!2253 (tail!451 lt!101091))))))

(declare-fun b!248598 () Bool)

(declare-fun e!154374 () Bool)

(declare-fun derivativeStep!127 (Regex!919 C!2760) Regex!919)

(declare-fun head!859 (List!3670) C!2760)

(assert (=> b!248598 (= e!154374 (matchR!257 (derivativeStep!127 (regex!695 (rule!1272 (h!9059 tokens!465))) (head!859 lt!101091)) (tail!451 lt!101091)))))

(declare-fun b!248599 () Bool)

(declare-fun res!115207 () Bool)

(assert (=> b!248599 (=> res!115207 e!154371)))

(assert (=> b!248599 (= res!115207 e!154372)))

(declare-fun res!115206 () Bool)

(assert (=> b!248599 (=> (not res!115206) (not e!154372))))

(assert (=> b!248599 (= res!115206 lt!101118)))

(declare-fun b!248600 () Bool)

(declare-fun res!115200 () Bool)

(assert (=> b!248600 (=> (not res!115200) (not e!154372))))

(assert (=> b!248600 (= res!115200 (not call!13067))))

(declare-fun b!248601 () Bool)

(assert (=> b!248601 (= e!154373 e!154369)))

(declare-fun c!47281 () Bool)

(assert (=> b!248601 (= c!47281 ((_ is EmptyLang!919) (regex!695 (rule!1272 (h!9059 tokens!465)))))))

(declare-fun d!69855 () Bool)

(assert (=> d!69855 e!154373))

(declare-fun c!47282 () Bool)

(assert (=> d!69855 (= c!47282 ((_ is EmptyExpr!919) (regex!695 (rule!1272 (h!9059 tokens!465)))))))

(assert (=> d!69855 (= lt!101118 e!154374)))

(declare-fun c!47283 () Bool)

(assert (=> d!69855 (= c!47283 (isEmpty!2253 lt!101091))))

(declare-fun validRegex!236 (Regex!919) Bool)

(assert (=> d!69855 (validRegex!236 (regex!695 (rule!1272 (h!9059 tokens!465))))))

(assert (=> d!69855 (= (matchR!257 (regex!695 (rule!1272 (h!9059 tokens!465))) lt!101091) lt!101118)))

(declare-fun b!248602 () Bool)

(assert (=> b!248602 (= e!154371 e!154370)))

(declare-fun res!115201 () Bool)

(assert (=> b!248602 (=> (not res!115201) (not e!154370))))

(assert (=> b!248602 (= res!115201 (not lt!101118))))

(declare-fun b!248603 () Bool)

(assert (=> b!248603 (= e!154372 (= (head!859 lt!101091) (c!47273 (regex!695 (rule!1272 (h!9059 tokens!465))))))))

(declare-fun b!248604 () Bool)

(declare-fun nullable!161 (Regex!919) Bool)

(assert (=> b!248604 (= e!154374 (nullable!161 (regex!695 (rule!1272 (h!9059 tokens!465)))))))

(declare-fun b!248605 () Bool)

(assert (=> b!248605 (= e!154375 (not (= (head!859 lt!101091) (c!47273 (regex!695 (rule!1272 (h!9059 tokens!465)))))))))

(assert (= (and d!69855 c!47283) b!248604))

(assert (= (and d!69855 (not c!47283)) b!248598))

(assert (= (and d!69855 c!47282) b!248595))

(assert (= (and d!69855 (not c!47282)) b!248601))

(assert (= (and b!248601 c!47281) b!248593))

(assert (= (and b!248601 (not c!47281)) b!248594))

(assert (= (and b!248594 (not res!115203)) b!248599))

(assert (= (and b!248599 res!115206) b!248600))

(assert (= (and b!248600 res!115200) b!248592))

(assert (= (and b!248592 res!115202) b!248603))

(assert (= (and b!248599 (not res!115207)) b!248602))

(assert (= (and b!248602 res!115201) b!248596))

(assert (= (and b!248596 (not res!115205)) b!248597))

(assert (= (and b!248597 (not res!115204)) b!248605))

(assert (= (or b!248595 b!248596 b!248600) bm!13062))

(declare-fun m!304345 () Bool)

(assert (=> b!248603 m!304345))

(assert (=> b!248605 m!304345))

(declare-fun m!304347 () Bool)

(assert (=> d!69855 m!304347))

(declare-fun m!304349 () Bool)

(assert (=> d!69855 m!304349))

(assert (=> b!248598 m!304345))

(assert (=> b!248598 m!304345))

(declare-fun m!304351 () Bool)

(assert (=> b!248598 m!304351))

(declare-fun m!304353 () Bool)

(assert (=> b!248598 m!304353))

(assert (=> b!248598 m!304351))

(assert (=> b!248598 m!304353))

(declare-fun m!304355 () Bool)

(assert (=> b!248598 m!304355))

(assert (=> b!248597 m!304353))

(assert (=> b!248597 m!304353))

(declare-fun m!304357 () Bool)

(assert (=> b!248597 m!304357))

(declare-fun m!304359 () Bool)

(assert (=> b!248604 m!304359))

(assert (=> bm!13062 m!304347))

(assert (=> b!248592 m!304353))

(assert (=> b!248592 m!304353))

(assert (=> b!248592 m!304357))

(assert (=> b!248530 d!69855))

(declare-fun d!69857 () Bool)

(declare-fun isEmpty!2261 (Option!753) Bool)

(assert (=> d!69857 (= (isDefined!604 (maxPrefixZipperSequence!274 thiss!17480 rules!1920 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465))))) (not (isEmpty!2261 (maxPrefixZipperSequence!274 thiss!17480 rules!1920 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))))

(declare-fun bs!26634 () Bool)

(assert (= bs!26634 d!69857))

(assert (=> bs!26634 m!304291))

(declare-fun m!304361 () Bool)

(assert (=> bs!26634 m!304361))

(assert (=> b!248508 d!69857))

(declare-fun b!248685 () Bool)

(declare-fun e!154421 () Option!753)

(declare-fun lt!101152 () Option!753)

(declare-fun lt!101157 () Option!753)

(assert (=> b!248685 (= e!154421 (ite (and ((_ is None!752) lt!101152) ((_ is None!752) lt!101157)) None!752 (ite ((_ is None!752) lt!101157) lt!101152 (ite ((_ is None!752) lt!101152) lt!101157 (ite (>= (size!2894 (_1!2260 (v!14525 lt!101152))) (size!2894 (_1!2260 (v!14525 lt!101157)))) lt!101152 lt!101157)))))))

(declare-fun call!13073 () Option!753)

(assert (=> b!248685 (= lt!101152 call!13073)))

(assert (=> b!248685 (= lt!101157 (maxPrefixZipperSequence!274 thiss!17480 (t!35303 rules!1920) (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))

(declare-fun b!248686 () Bool)

(assert (=> b!248686 (= e!154421 call!13073)))

(declare-fun b!248687 () Bool)

(declare-fun e!154425 () Bool)

(declare-fun e!154426 () Bool)

(assert (=> b!248687 (= e!154425 e!154426)))

(declare-fun res!115260 () Bool)

(assert (=> b!248687 (=> res!115260 e!154426)))

(declare-fun lt!101154 () Option!753)

(assert (=> b!248687 (= res!115260 (not (isDefined!604 lt!101154)))))

(declare-fun d!69859 () Bool)

(assert (=> d!69859 e!154425))

(declare-fun res!115262 () Bool)

(assert (=> d!69859 (=> (not res!115262) (not e!154425))))

(declare-fun maxPrefixZipper!97 (LexerInterface!581 List!3671 List!3670) Option!752)

(assert (=> d!69859 (= res!115262 (= (isDefined!604 lt!101154) (isDefined!603 (maxPrefixZipper!97 thiss!17480 rules!1920 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465))))))))))

(assert (=> d!69859 (= lt!101154 e!154421)))

(declare-fun c!47298 () Bool)

(assert (=> d!69859 (= c!47298 (and ((_ is Cons!3661) rules!1920) ((_ is Nil!3661) (t!35303 rules!1920))))))

(declare-fun lt!101153 () Unit!4444)

(declare-fun lt!101151 () Unit!4444)

(assert (=> d!69859 (= lt!101153 lt!101151)))

(declare-fun lt!101155 () List!3670)

(declare-fun lt!101156 () List!3670)

(assert (=> d!69859 (isPrefix!379 lt!101155 lt!101156)))

(declare-fun lemmaIsPrefixRefl!193 (List!3670 List!3670) Unit!4444)

(assert (=> d!69859 (= lt!101151 (lemmaIsPrefixRefl!193 lt!101155 lt!101156))))

(assert (=> d!69859 (= lt!101156 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))

(assert (=> d!69859 (= lt!101155 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))

(declare-fun rulesValidInductive!184 (LexerInterface!581 List!3671) Bool)

(assert (=> d!69859 (rulesValidInductive!184 thiss!17480 rules!1920)))

(assert (=> d!69859 (= (maxPrefixZipperSequence!274 thiss!17480 rules!1920 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))) lt!101154)))

(declare-fun b!248688 () Bool)

(declare-fun e!154423 () Bool)

(assert (=> b!248688 (= e!154426 e!154423)))

(declare-fun res!115263 () Bool)

(assert (=> b!248688 (=> (not res!115263) (not e!154423))))

(declare-fun get!1203 (Option!753) tuple2!4088)

(assert (=> b!248688 (= res!115263 (= (_1!2260 (get!1203 lt!101154)) (_1!2259 (get!1201 (maxPrefix!311 thiss!17480 rules!1920 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))))))

(declare-fun bm!13068 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!98 (LexerInterface!581 Rule!1190 BalanceConc!2432) Option!753)

(assert (=> bm!13068 (= call!13073 (maxPrefixOneRuleZipperSequence!98 thiss!17480 (h!9058 rules!1920) (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))

(declare-fun b!248689 () Bool)

(declare-fun e!154422 () Bool)

(declare-fun e!154424 () Bool)

(assert (=> b!248689 (= e!154422 e!154424)))

(declare-fun res!115259 () Bool)

(assert (=> b!248689 (=> (not res!115259) (not e!154424))))

(assert (=> b!248689 (= res!115259 (= (_1!2260 (get!1203 lt!101154)) (_1!2259 (get!1201 (maxPrefixZipper!97 thiss!17480 rules!1920 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))))))

(declare-fun b!248690 () Bool)

(assert (=> b!248690 (= e!154423 (= (list!1448 (_2!2260 (get!1203 lt!101154))) (_2!2259 (get!1201 (maxPrefix!311 thiss!17480 rules!1920 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))))))

(declare-fun b!248691 () Bool)

(assert (=> b!248691 (= e!154424 (= (list!1448 (_2!2260 (get!1203 lt!101154))) (_2!2259 (get!1201 (maxPrefixZipper!97 thiss!17480 rules!1920 (list!1448 (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465)))))))))))

(declare-fun b!248692 () Bool)

(declare-fun res!115261 () Bool)

(assert (=> b!248692 (=> (not res!115261) (not e!154425))))

(assert (=> b!248692 (= res!115261 e!154422)))

(declare-fun res!115264 () Bool)

(assert (=> b!248692 (=> res!115264 e!154422)))

(assert (=> b!248692 (= res!115264 (not (isDefined!604 lt!101154)))))

(assert (= (and d!69859 c!47298) b!248686))

(assert (= (and d!69859 (not c!47298)) b!248685))

(assert (= (or b!248686 b!248685) bm!13068))

(assert (= (and d!69859 res!115262) b!248692))

(assert (= (and b!248692 (not res!115264)) b!248689))

(assert (= (and b!248689 res!115259) b!248691))

(assert (= (and b!248692 res!115261) b!248687))

(assert (= (and b!248687 (not res!115260)) b!248688))

(assert (= (and b!248688 res!115263) b!248690))

(declare-fun m!304431 () Bool)

(assert (=> b!248692 m!304431))

(declare-fun m!304433 () Bool)

(assert (=> b!248688 m!304433))

(assert (=> b!248688 m!304289))

(declare-fun m!304435 () Bool)

(assert (=> b!248688 m!304435))

(assert (=> b!248688 m!304435))

(declare-fun m!304437 () Bool)

(assert (=> b!248688 m!304437))

(assert (=> b!248688 m!304437))

(declare-fun m!304439 () Bool)

(assert (=> b!248688 m!304439))

(assert (=> b!248689 m!304433))

(assert (=> b!248689 m!304289))

(assert (=> b!248689 m!304435))

(assert (=> b!248689 m!304435))

(declare-fun m!304441 () Bool)

(assert (=> b!248689 m!304441))

(assert (=> b!248689 m!304441))

(declare-fun m!304443 () Bool)

(assert (=> b!248689 m!304443))

(assert (=> b!248685 m!304289))

(declare-fun m!304445 () Bool)

(assert (=> b!248685 m!304445))

(assert (=> b!248687 m!304431))

(assert (=> bm!13068 m!304289))

(declare-fun m!304447 () Bool)

(assert (=> bm!13068 m!304447))

(declare-fun m!304449 () Bool)

(assert (=> d!69859 m!304449))

(assert (=> d!69859 m!304435))

(assert (=> d!69859 m!304441))

(declare-fun m!304451 () Bool)

(assert (=> d!69859 m!304451))

(assert (=> d!69859 m!304431))

(assert (=> d!69859 m!304441))

(declare-fun m!304453 () Bool)

(assert (=> d!69859 m!304453))

(assert (=> d!69859 m!304289))

(assert (=> d!69859 m!304435))

(declare-fun m!304455 () Bool)

(assert (=> d!69859 m!304455))

(assert (=> b!248690 m!304437))

(assert (=> b!248690 m!304439))

(declare-fun m!304457 () Bool)

(assert (=> b!248690 m!304457))

(assert (=> b!248690 m!304433))

(assert (=> b!248690 m!304289))

(assert (=> b!248690 m!304435))

(assert (=> b!248690 m!304435))

(assert (=> b!248690 m!304437))

(assert (=> b!248691 m!304435))

(assert (=> b!248691 m!304441))

(assert (=> b!248691 m!304441))

(assert (=> b!248691 m!304443))

(assert (=> b!248691 m!304457))

(assert (=> b!248691 m!304433))

(assert (=> b!248691 m!304289))

(assert (=> b!248691 m!304435))

(assert (=> b!248508 d!69859))

(declare-fun d!69875 () Bool)

(declare-fun fromListB!275 (List!3670) BalanceConc!2432)

(assert (=> d!69875 (= (seqFromList!768 (originalCharacters!738 (h!9059 tokens!465))) (fromListB!275 (originalCharacters!738 (h!9059 tokens!465))))))

(declare-fun bs!26638 () Bool)

(assert (= bs!26638 d!69875))

(declare-fun m!304459 () Bool)

(assert (=> bs!26638 m!304459))

(assert (=> b!248508 d!69875))

(declare-fun d!69877 () Bool)

(declare-fun dynLambda!1797 (Int Token!1134) Bool)

(assert (=> d!69877 (dynLambda!1797 lambda!8210 (h!9059 tokens!465))))

(declare-fun lt!101174 () Unit!4444)

(declare-fun choose!2343 (List!3672 Int Token!1134) Unit!4444)

(assert (=> d!69877 (= lt!101174 (choose!2343 tokens!465 lambda!8210 (h!9059 tokens!465)))))

(declare-fun e!154441 () Bool)

(assert (=> d!69877 e!154441))

(declare-fun res!115279 () Bool)

(assert (=> d!69877 (=> (not res!115279) (not e!154441))))

(assert (=> d!69877 (= res!115279 (forall!857 tokens!465 lambda!8210))))

(assert (=> d!69877 (= (forallContained!262 tokens!465 lambda!8210 (h!9059 tokens!465)) lt!101174)))

(declare-fun b!248711 () Bool)

(declare-fun contains!675 (List!3672 Token!1134) Bool)

(assert (=> b!248711 (= e!154441 (contains!675 tokens!465 (h!9059 tokens!465)))))

(assert (= (and d!69877 res!115279) b!248711))

(declare-fun b_lambda!7277 () Bool)

(assert (=> (not b_lambda!7277) (not d!69877)))

(declare-fun m!304461 () Bool)

(assert (=> d!69877 m!304461))

(declare-fun m!304463 () Bool)

(assert (=> d!69877 m!304463))

(declare-fun m!304465 () Bool)

(assert (=> d!69877 m!304465))

(declare-fun m!304467 () Bool)

(assert (=> b!248711 m!304467))

(assert (=> b!248508 d!69877))

(declare-fun b!248733 () Bool)

(declare-fun res!115293 () Bool)

(declare-fun e!154456 () Bool)

(assert (=> b!248733 (=> (not res!115293) (not e!154456))))

(declare-fun lt!101187 () List!3670)

(assert (=> b!248733 (= res!115293 (= (size!2898 lt!101187) (+ (size!2898 lt!101091) (size!2898 (_2!2259 lt!101090)))))))

(declare-fun d!69879 () Bool)

(assert (=> d!69879 e!154456))

(declare-fun res!115294 () Bool)

(assert (=> d!69879 (=> (not res!115294) (not e!154456))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!509 (List!3670) (InoxSet C!2760))

(assert (=> d!69879 (= res!115294 (= (content!509 lt!101187) ((_ map or) (content!509 lt!101091) (content!509 (_2!2259 lt!101090)))))))

(declare-fun e!154455 () List!3670)

(assert (=> d!69879 (= lt!101187 e!154455)))

(declare-fun c!47304 () Bool)

(assert (=> d!69879 (= c!47304 ((_ is Nil!3660) lt!101091))))

(assert (=> d!69879 (= (++!936 lt!101091 (_2!2259 lt!101090)) lt!101187)))

(declare-fun b!248734 () Bool)

(assert (=> b!248734 (= e!154456 (or (not (= (_2!2259 lt!101090) Nil!3660)) (= lt!101187 lt!101091)))))

(declare-fun b!248732 () Bool)

(assert (=> b!248732 (= e!154455 (Cons!3660 (h!9057 lt!101091) (++!936 (t!35302 lt!101091) (_2!2259 lt!101090))))))

(declare-fun b!248731 () Bool)

(assert (=> b!248731 (= e!154455 (_2!2259 lt!101090))))

(assert (= (and d!69879 c!47304) b!248731))

(assert (= (and d!69879 (not c!47304)) b!248732))

(assert (= (and d!69879 res!115294) b!248733))

(assert (= (and b!248733 res!115293) b!248734))

(declare-fun m!304505 () Bool)

(assert (=> b!248733 m!304505))

(declare-fun m!304507 () Bool)

(assert (=> b!248733 m!304507))

(declare-fun m!304509 () Bool)

(assert (=> b!248733 m!304509))

(declare-fun m!304511 () Bool)

(assert (=> d!69879 m!304511))

(declare-fun m!304513 () Bool)

(assert (=> d!69879 m!304513))

(declare-fun m!304515 () Bool)

(assert (=> d!69879 m!304515))

(declare-fun m!304517 () Bool)

(assert (=> b!248732 m!304517))

(assert (=> b!248529 d!69879))

(declare-fun d!69887 () Bool)

(assert (=> d!69887 (= (inv!4509 (tag!903 (rule!1272 (h!9059 tokens!465)))) (= (mod (str.len (value!24122 (tag!903 (rule!1272 (h!9059 tokens!465))))) 2) 0))))

(assert (=> b!248507 d!69887))

(declare-fun d!69891 () Bool)

(declare-fun res!115301 () Bool)

(declare-fun e!154463 () Bool)

(assert (=> d!69891 (=> (not res!115301) (not e!154463))))

(declare-fun semiInverseModEq!235 (Int Int) Bool)

(assert (=> d!69891 (= res!115301 (semiInverseModEq!235 (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (toValue!1398 (transformation!695 (rule!1272 (h!9059 tokens!465))))))))

(assert (=> d!69891 (= (inv!4513 (transformation!695 (rule!1272 (h!9059 tokens!465)))) e!154463)))

(declare-fun b!248745 () Bool)

(declare-fun equivClasses!218 (Int Int) Bool)

(assert (=> b!248745 (= e!154463 (equivClasses!218 (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (toValue!1398 (transformation!695 (rule!1272 (h!9059 tokens!465))))))))

(assert (= (and d!69891 res!115301) b!248745))

(declare-fun m!304519 () Bool)

(assert (=> d!69891 m!304519))

(declare-fun m!304521 () Bool)

(assert (=> b!248745 m!304521))

(assert (=> b!248507 d!69891))

(declare-fun d!69893 () Bool)

(declare-fun lt!101193 () Int)

(declare-fun size!2900 (List!3672) Int)

(assert (=> d!69893 (= lt!101193 (size!2900 (list!1449 lt!101100)))))

(declare-fun size!2901 (Conc!1213) Int)

(assert (=> d!69893 (= lt!101193 (size!2901 (c!47274 lt!101100)))))

(assert (=> d!69893 (= (size!2895 lt!101100) lt!101193)))

(declare-fun bs!26640 () Bool)

(assert (= bs!26640 d!69893))

(declare-fun m!304523 () Bool)

(assert (=> bs!26640 m!304523))

(assert (=> bs!26640 m!304523))

(declare-fun m!304525 () Bool)

(assert (=> bs!26640 m!304525))

(declare-fun m!304527 () Bool)

(assert (=> bs!26640 m!304527))

(assert (=> b!248528 d!69893))

(declare-fun d!69895 () Bool)

(assert (=> d!69895 (= lt!101106 (_2!2259 lt!101090))))

(declare-fun lt!101196 () Unit!4444)

(declare-fun choose!2344 (List!3670 List!3670 List!3670 List!3670 List!3670) Unit!4444)

(assert (=> d!69895 (= lt!101196 (choose!2344 lt!101091 lt!101106 lt!101091 (_2!2259 lt!101090) lt!101096))))

(assert (=> d!69895 (isPrefix!379 lt!101091 lt!101096)))

(assert (=> d!69895 (= (lemmaSamePrefixThenSameSuffix!194 lt!101091 lt!101106 lt!101091 (_2!2259 lt!101090) lt!101096) lt!101196)))

(declare-fun bs!26641 () Bool)

(assert (= bs!26641 d!69895))

(declare-fun m!304543 () Bool)

(assert (=> bs!26641 m!304543))

(assert (=> bs!26641 m!304321))

(assert (=> b!248528 d!69895))

(declare-fun d!69903 () Bool)

(declare-fun isEmpty!2262 (Option!752) Bool)

(assert (=> d!69903 (= (isDefined!603 lt!101092) (not (isEmpty!2262 lt!101092)))))

(declare-fun bs!26642 () Bool)

(assert (= bs!26642 d!69903))

(declare-fun m!304545 () Bool)

(assert (=> bs!26642 m!304545))

(assert (=> b!248506 d!69903))

(declare-fun b!248782 () Bool)

(declare-fun res!115332 () Bool)

(declare-fun e!154483 () Bool)

(assert (=> b!248782 (=> (not res!115332) (not e!154483))))

(declare-fun lt!101208 () Option!752)

(declare-fun apply!689 (TokenValueInjection!1206 BalanceConc!2432) TokenValue!717)

(assert (=> b!248782 (= res!115332 (= (value!24123 (_1!2259 (get!1201 lt!101208))) (apply!689 (transformation!695 (rule!1272 (_1!2259 (get!1201 lt!101208)))) (seqFromList!768 (originalCharacters!738 (_1!2259 (get!1201 lt!101208)))))))))

(declare-fun b!248783 () Bool)

(declare-fun e!154482 () Option!752)

(declare-fun lt!101211 () Option!752)

(declare-fun lt!101210 () Option!752)

(assert (=> b!248783 (= e!154482 (ite (and ((_ is None!751) lt!101211) ((_ is None!751) lt!101210)) None!751 (ite ((_ is None!751) lt!101210) lt!101211 (ite ((_ is None!751) lt!101211) lt!101210 (ite (>= (size!2894 (_1!2259 (v!14524 lt!101211))) (size!2894 (_1!2259 (v!14524 lt!101210)))) lt!101211 lt!101210)))))))

(declare-fun call!13079 () Option!752)

(assert (=> b!248783 (= lt!101211 call!13079)))

(assert (=> b!248783 (= lt!101210 (maxPrefix!311 thiss!17480 (t!35303 rules!1920) lt!101096))))

(declare-fun b!248784 () Bool)

(declare-fun res!115331 () Bool)

(assert (=> b!248784 (=> (not res!115331) (not e!154483))))

(assert (=> b!248784 (= res!115331 (< (size!2898 (_2!2259 (get!1201 lt!101208))) (size!2898 lt!101096)))))

(declare-fun b!248785 () Bool)

(declare-fun res!115333 () Bool)

(assert (=> b!248785 (=> (not res!115333) (not e!154483))))

(assert (=> b!248785 (= res!115333 (= (++!936 (list!1448 (charsOf!350 (_1!2259 (get!1201 lt!101208)))) (_2!2259 (get!1201 lt!101208))) lt!101096))))

(declare-fun b!248786 () Bool)

(declare-fun res!115329 () Bool)

(assert (=> b!248786 (=> (not res!115329) (not e!154483))))

(assert (=> b!248786 (= res!115329 (matchR!257 (regex!695 (rule!1272 (_1!2259 (get!1201 lt!101208)))) (list!1448 (charsOf!350 (_1!2259 (get!1201 lt!101208))))))))

(declare-fun b!248787 () Bool)

(declare-fun res!115328 () Bool)

(assert (=> b!248787 (=> (not res!115328) (not e!154483))))

(assert (=> b!248787 (= res!115328 (= (list!1448 (charsOf!350 (_1!2259 (get!1201 lt!101208)))) (originalCharacters!738 (_1!2259 (get!1201 lt!101208)))))))

(declare-fun d!69905 () Bool)

(declare-fun e!154481 () Bool)

(assert (=> d!69905 e!154481))

(declare-fun res!115330 () Bool)

(assert (=> d!69905 (=> res!115330 e!154481)))

(assert (=> d!69905 (= res!115330 (isEmpty!2262 lt!101208))))

(assert (=> d!69905 (= lt!101208 e!154482)))

(declare-fun c!47310 () Bool)

(assert (=> d!69905 (= c!47310 (and ((_ is Cons!3661) rules!1920) ((_ is Nil!3661) (t!35303 rules!1920))))))

(declare-fun lt!101209 () Unit!4444)

(declare-fun lt!101207 () Unit!4444)

(assert (=> d!69905 (= lt!101209 lt!101207)))

(assert (=> d!69905 (isPrefix!379 lt!101096 lt!101096)))

(assert (=> d!69905 (= lt!101207 (lemmaIsPrefixRefl!193 lt!101096 lt!101096))))

(assert (=> d!69905 (rulesValidInductive!184 thiss!17480 rules!1920)))

(assert (=> d!69905 (= (maxPrefix!311 thiss!17480 rules!1920 lt!101096) lt!101208)))

(declare-fun bm!13074 () Bool)

(declare-fun maxPrefixOneRule!127 (LexerInterface!581 Rule!1190 List!3670) Option!752)

(assert (=> bm!13074 (= call!13079 (maxPrefixOneRule!127 thiss!17480 (h!9058 rules!1920) lt!101096))))

(declare-fun b!248788 () Bool)

(assert (=> b!248788 (= e!154481 e!154483)))

(declare-fun res!115327 () Bool)

(assert (=> b!248788 (=> (not res!115327) (not e!154483))))

(assert (=> b!248788 (= res!115327 (isDefined!603 lt!101208))))

(declare-fun b!248789 () Bool)

(assert (=> b!248789 (= e!154482 call!13079)))

(declare-fun b!248790 () Bool)

(declare-fun contains!676 (List!3671 Rule!1190) Bool)

(assert (=> b!248790 (= e!154483 (contains!676 rules!1920 (rule!1272 (_1!2259 (get!1201 lt!101208)))))))

(assert (= (and d!69905 c!47310) b!248789))

(assert (= (and d!69905 (not c!47310)) b!248783))

(assert (= (or b!248789 b!248783) bm!13074))

(assert (= (and d!69905 (not res!115330)) b!248788))

(assert (= (and b!248788 res!115327) b!248787))

(assert (= (and b!248787 res!115328) b!248784))

(assert (= (and b!248784 res!115331) b!248785))

(assert (= (and b!248785 res!115333) b!248782))

(assert (= (and b!248782 res!115332) b!248786))

(assert (= (and b!248786 res!115329) b!248790))

(declare-fun m!304563 () Bool)

(assert (=> b!248786 m!304563))

(declare-fun m!304565 () Bool)

(assert (=> b!248786 m!304565))

(assert (=> b!248786 m!304565))

(declare-fun m!304567 () Bool)

(assert (=> b!248786 m!304567))

(assert (=> b!248786 m!304567))

(declare-fun m!304569 () Bool)

(assert (=> b!248786 m!304569))

(declare-fun m!304571 () Bool)

(assert (=> b!248788 m!304571))

(assert (=> b!248790 m!304563))

(declare-fun m!304573 () Bool)

(assert (=> b!248790 m!304573))

(assert (=> b!248784 m!304563))

(declare-fun m!304575 () Bool)

(assert (=> b!248784 m!304575))

(declare-fun m!304577 () Bool)

(assert (=> b!248784 m!304577))

(assert (=> b!248787 m!304563))

(assert (=> b!248787 m!304565))

(assert (=> b!248787 m!304565))

(assert (=> b!248787 m!304567))

(declare-fun m!304579 () Bool)

(assert (=> d!69905 m!304579))

(declare-fun m!304581 () Bool)

(assert (=> d!69905 m!304581))

(declare-fun m!304583 () Bool)

(assert (=> d!69905 m!304583))

(assert (=> d!69905 m!304451))

(declare-fun m!304585 () Bool)

(assert (=> bm!13074 m!304585))

(assert (=> b!248785 m!304563))

(assert (=> b!248785 m!304565))

(assert (=> b!248785 m!304565))

(assert (=> b!248785 m!304567))

(assert (=> b!248785 m!304567))

(declare-fun m!304587 () Bool)

(assert (=> b!248785 m!304587))

(assert (=> b!248782 m!304563))

(declare-fun m!304589 () Bool)

(assert (=> b!248782 m!304589))

(assert (=> b!248782 m!304589))

(declare-fun m!304591 () Bool)

(assert (=> b!248782 m!304591))

(declare-fun m!304593 () Bool)

(assert (=> b!248783 m!304593))

(assert (=> b!248506 d!69905))

(declare-fun d!69911 () Bool)

(assert (=> d!69911 (= (isEmpty!2256 rules!1920) ((_ is Nil!3661) rules!1920))))

(assert (=> b!248527 d!69911))

(declare-fun d!69913 () Bool)

(assert (=> d!69913 (= (get!1201 lt!101092) (v!14524 lt!101092))))

(assert (=> b!248505 d!69913))

(declare-fun d!69915 () Bool)

(assert (=> d!69915 (= (head!858 tokens!465) (h!9059 tokens!465))))

(assert (=> b!248505 d!69915))

(declare-fun d!69917 () Bool)

(declare-fun lt!101214 () Bool)

(assert (=> d!69917 (= lt!101214 (isEmpty!2254 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 (seqFromList!768 lt!101091))))))))

(declare-fun isEmpty!2263 (Conc!1213) Bool)

(assert (=> d!69917 (= lt!101214 (isEmpty!2263 (c!47274 (_1!2261 (lex!381 thiss!17480 rules!1920 (seqFromList!768 lt!101091))))))))

(assert (=> d!69917 (= (isEmpty!2255 (_1!2261 (lex!381 thiss!17480 rules!1920 (seqFromList!768 lt!101091)))) lt!101214)))

(declare-fun bs!26643 () Bool)

(assert (= bs!26643 d!69917))

(declare-fun m!304595 () Bool)

(assert (=> bs!26643 m!304595))

(assert (=> bs!26643 m!304595))

(declare-fun m!304597 () Bool)

(assert (=> bs!26643 m!304597))

(declare-fun m!304599 () Bool)

(assert (=> bs!26643 m!304599))

(assert (=> b!248526 d!69917))

(declare-fun b!248822 () Bool)

(declare-fun e!154507 () Bool)

(declare-fun lt!101226 () tuple2!4090)

(assert (=> b!248822 (= e!154507 (= (_2!2261 lt!101226) (seqFromList!768 lt!101091)))))

(declare-fun b!248823 () Bool)

(declare-fun e!154506 () Bool)

(assert (=> b!248823 (= e!154506 (not (isEmpty!2255 (_1!2261 lt!101226))))))

(declare-fun b!248824 () Bool)

(assert (=> b!248824 (= e!154507 e!154506)))

(declare-fun res!115363 () Bool)

(declare-fun size!2902 (BalanceConc!2432) Int)

(assert (=> b!248824 (= res!115363 (< (size!2902 (_2!2261 lt!101226)) (size!2902 (seqFromList!768 lt!101091))))))

(assert (=> b!248824 (=> (not res!115363) (not e!154506))))

(declare-fun d!69919 () Bool)

(declare-fun e!154505 () Bool)

(assert (=> d!69919 e!154505))

(declare-fun res!115361 () Bool)

(assert (=> d!69919 (=> (not res!115361) (not e!154505))))

(assert (=> d!69919 (= res!115361 e!154507)))

(declare-fun c!47313 () Bool)

(assert (=> d!69919 (= c!47313 (> (size!2895 (_1!2261 lt!101226)) 0))))

(declare-fun lexTailRecV2!156 (LexerInterface!581 List!3671 BalanceConc!2432 BalanceConc!2432 BalanceConc!2432 BalanceConc!2434) tuple2!4090)

(assert (=> d!69919 (= lt!101226 (lexTailRecV2!156 thiss!17480 rules!1920 (seqFromList!768 lt!101091) (BalanceConc!2433 Empty!1212) (seqFromList!768 lt!101091) (BalanceConc!2435 Empty!1213)))))

(assert (=> d!69919 (= (lex!381 thiss!17480 rules!1920 (seqFromList!768 lt!101091)) lt!101226)))

(declare-fun b!248825 () Bool)

(declare-datatypes ((tuple2!4094 0))(
  ( (tuple2!4095 (_1!2263 List!3672) (_2!2263 List!3670)) )
))
(declare-fun lexList!189 (LexerInterface!581 List!3671 List!3670) tuple2!4094)

(assert (=> b!248825 (= e!154505 (= (list!1448 (_2!2261 lt!101226)) (_2!2263 (lexList!189 thiss!17480 rules!1920 (list!1448 (seqFromList!768 lt!101091))))))))

(declare-fun b!248826 () Bool)

(declare-fun res!115362 () Bool)

(assert (=> b!248826 (=> (not res!115362) (not e!154505))))

(assert (=> b!248826 (= res!115362 (= (list!1449 (_1!2261 lt!101226)) (_1!2263 (lexList!189 thiss!17480 rules!1920 (list!1448 (seqFromList!768 lt!101091))))))))

(assert (= (and d!69919 c!47313) b!248824))

(assert (= (and d!69919 (not c!47313)) b!248822))

(assert (= (and b!248824 res!115363) b!248823))

(assert (= (and d!69919 res!115361) b!248826))

(assert (= (and b!248826 res!115362) b!248825))

(declare-fun m!304629 () Bool)

(assert (=> b!248823 m!304629))

(declare-fun m!304631 () Bool)

(assert (=> b!248826 m!304631))

(assert (=> b!248826 m!304209))

(declare-fun m!304633 () Bool)

(assert (=> b!248826 m!304633))

(assert (=> b!248826 m!304633))

(declare-fun m!304635 () Bool)

(assert (=> b!248826 m!304635))

(declare-fun m!304637 () Bool)

(assert (=> b!248824 m!304637))

(assert (=> b!248824 m!304209))

(declare-fun m!304639 () Bool)

(assert (=> b!248824 m!304639))

(declare-fun m!304641 () Bool)

(assert (=> d!69919 m!304641))

(assert (=> d!69919 m!304209))

(assert (=> d!69919 m!304209))

(declare-fun m!304643 () Bool)

(assert (=> d!69919 m!304643))

(declare-fun m!304645 () Bool)

(assert (=> b!248825 m!304645))

(assert (=> b!248825 m!304209))

(assert (=> b!248825 m!304633))

(assert (=> b!248825 m!304633))

(assert (=> b!248825 m!304635))

(assert (=> b!248526 d!69919))

(declare-fun d!69927 () Bool)

(assert (=> d!69927 (= (seqFromList!768 lt!101091) (fromListB!275 lt!101091))))

(declare-fun bs!26644 () Bool)

(assert (= bs!26644 d!69927))

(declare-fun m!304647 () Bool)

(assert (=> bs!26644 m!304647))

(assert (=> b!248526 d!69927))

(declare-fun d!69929 () Bool)

(declare-fun res!115364 () Bool)

(declare-fun e!154508 () Bool)

(assert (=> d!69929 (=> (not res!115364) (not e!154508))))

(assert (=> d!69929 (= res!115364 (not (isEmpty!2253 (originalCharacters!738 (h!9059 tokens!465)))))))

(assert (=> d!69929 (= (inv!4512 (h!9059 tokens!465)) e!154508)))

(declare-fun b!248827 () Bool)

(declare-fun res!115365 () Bool)

(assert (=> b!248827 (=> (not res!115365) (not e!154508))))

(assert (=> b!248827 (= res!115365 (= (originalCharacters!738 (h!9059 tokens!465)) (list!1448 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (value!24123 (h!9059 tokens!465))))))))

(declare-fun b!248828 () Bool)

(assert (=> b!248828 (= e!154508 (= (size!2894 (h!9059 tokens!465)) (size!2898 (originalCharacters!738 (h!9059 tokens!465)))))))

(assert (= (and d!69929 res!115364) b!248827))

(assert (= (and b!248827 res!115365) b!248828))

(declare-fun b_lambda!7283 () Bool)

(assert (=> (not b_lambda!7283) (not b!248827)))

(declare-fun t!35319 () Bool)

(declare-fun tb!12741 () Bool)

(assert (=> (and b!248510 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465))))) t!35319) tb!12741))

(declare-fun b!248829 () Bool)

(declare-fun e!154509 () Bool)

(declare-fun tp!96844 () Bool)

(assert (=> b!248829 (= e!154509 (and (inv!4516 (c!47272 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (value!24123 (h!9059 tokens!465))))) tp!96844))))

(declare-fun result!16068 () Bool)

(assert (=> tb!12741 (= result!16068 (and (inv!4517 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (value!24123 (h!9059 tokens!465)))) e!154509))))

(assert (= tb!12741 b!248829))

(declare-fun m!304649 () Bool)

(assert (=> b!248829 m!304649))

(declare-fun m!304651 () Bool)

(assert (=> tb!12741 m!304651))

(assert (=> b!248827 t!35319))

(declare-fun b_and!18757 () Bool)

(assert (= b_and!18745 (and (=> t!35319 result!16068) b_and!18757)))

(declare-fun tb!12743 () Bool)

(declare-fun t!35321 () Bool)

(assert (=> (and b!248518 (= (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465))))) t!35321) tb!12743))

(declare-fun result!16070 () Bool)

(assert (= result!16070 result!16068))

(assert (=> b!248827 t!35321))

(declare-fun b_and!18759 () Bool)

(assert (= b_and!18747 (and (=> t!35321 result!16070) b_and!18759)))

(declare-fun tb!12745 () Bool)

(declare-fun t!35323 () Bool)

(assert (=> (and b!248519 (= (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465))))) t!35323) tb!12745))

(declare-fun result!16072 () Bool)

(assert (= result!16072 result!16068))

(assert (=> b!248827 t!35323))

(declare-fun b_and!18761 () Bool)

(assert (= b_and!18749 (and (=> t!35323 result!16072) b_and!18761)))

(declare-fun m!304653 () Bool)

(assert (=> d!69929 m!304653))

(declare-fun m!304655 () Bool)

(assert (=> b!248827 m!304655))

(assert (=> b!248827 m!304655))

(declare-fun m!304657 () Bool)

(assert (=> b!248827 m!304657))

(declare-fun m!304659 () Bool)

(assert (=> b!248828 m!304659))

(assert (=> b!248504 d!69929))

(declare-fun d!69931 () Bool)

(assert (=> d!69931 (= (inv!4509 (tag!903 (h!9058 rules!1920))) (= (mod (str.len (value!24122 (tag!903 (h!9058 rules!1920)))) 2) 0))))

(assert (=> b!248514 d!69931))

(declare-fun d!69933 () Bool)

(declare-fun res!115366 () Bool)

(declare-fun e!154510 () Bool)

(assert (=> d!69933 (=> (not res!115366) (not e!154510))))

(assert (=> d!69933 (= res!115366 (semiInverseModEq!235 (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toValue!1398 (transformation!695 (h!9058 rules!1920)))))))

(assert (=> d!69933 (= (inv!4513 (transformation!695 (h!9058 rules!1920))) e!154510)))

(declare-fun b!248830 () Bool)

(assert (=> b!248830 (= e!154510 (equivClasses!218 (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toValue!1398 (transformation!695 (h!9058 rules!1920)))))))

(assert (= (and d!69933 res!115366) b!248830))

(declare-fun m!304661 () Bool)

(assert (=> d!69933 m!304661))

(declare-fun m!304663 () Bool)

(assert (=> b!248830 m!304663))

(assert (=> b!248514 d!69933))

(declare-fun d!69935 () Bool)

(assert (=> d!69935 (= (isEmpty!2253 (_2!2259 lt!101102)) ((_ is Nil!3660) (_2!2259 lt!101102)))))

(assert (=> b!248513 d!69935))

(declare-fun d!69937 () Bool)

(declare-fun lt!101231 () Bool)

(declare-fun e!154516 () Bool)

(assert (=> d!69937 (= lt!101231 e!154516)))

(declare-fun res!115374 () Bool)

(assert (=> d!69937 (=> (not res!115374) (not e!154516))))

(assert (=> d!69937 (= res!115374 (= (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 (print!312 thiss!17480 (singletonSeq!247 (h!9059 tokens!465)))))) (list!1449 (singletonSeq!247 (h!9059 tokens!465)))))))

(declare-fun e!154515 () Bool)

(assert (=> d!69937 (= lt!101231 e!154515)))

(declare-fun res!115373 () Bool)

(assert (=> d!69937 (=> (not res!115373) (not e!154515))))

(declare-fun lt!101232 () tuple2!4090)

(assert (=> d!69937 (= res!115373 (= (size!2895 (_1!2261 lt!101232)) 1))))

(assert (=> d!69937 (= lt!101232 (lex!381 thiss!17480 rules!1920 (print!312 thiss!17480 (singletonSeq!247 (h!9059 tokens!465)))))))

(assert (=> d!69937 (not (isEmpty!2256 rules!1920))))

(assert (=> d!69937 (= (rulesProduceIndividualToken!330 thiss!17480 rules!1920 (h!9059 tokens!465)) lt!101231)))

(declare-fun b!248837 () Bool)

(declare-fun res!115375 () Bool)

(assert (=> b!248837 (=> (not res!115375) (not e!154515))))

(declare-fun apply!691 (BalanceConc!2434 Int) Token!1134)

(assert (=> b!248837 (= res!115375 (= (apply!691 (_1!2261 lt!101232) 0) (h!9059 tokens!465)))))

(declare-fun b!248838 () Bool)

(declare-fun isEmpty!2264 (BalanceConc!2432) Bool)

(assert (=> b!248838 (= e!154515 (isEmpty!2264 (_2!2261 lt!101232)))))

(declare-fun b!248839 () Bool)

(assert (=> b!248839 (= e!154516 (isEmpty!2264 (_2!2261 (lex!381 thiss!17480 rules!1920 (print!312 thiss!17480 (singletonSeq!247 (h!9059 tokens!465)))))))))

(assert (= (and d!69937 res!115373) b!248837))

(assert (= (and b!248837 res!115375) b!248838))

(assert (= (and d!69937 res!115374) b!248839))

(assert (=> d!69937 m!304215))

(declare-fun m!304665 () Bool)

(assert (=> d!69937 m!304665))

(assert (=> d!69937 m!304285))

(declare-fun m!304667 () Bool)

(assert (=> d!69937 m!304667))

(declare-fun m!304669 () Bool)

(assert (=> d!69937 m!304669))

(assert (=> d!69937 m!304667))

(declare-fun m!304671 () Bool)

(assert (=> d!69937 m!304671))

(assert (=> d!69937 m!304285))

(assert (=> d!69937 m!304285))

(declare-fun m!304673 () Bool)

(assert (=> d!69937 m!304673))

(declare-fun m!304675 () Bool)

(assert (=> b!248837 m!304675))

(declare-fun m!304677 () Bool)

(assert (=> b!248838 m!304677))

(assert (=> b!248839 m!304285))

(assert (=> b!248839 m!304285))

(assert (=> b!248839 m!304667))

(assert (=> b!248839 m!304667))

(assert (=> b!248839 m!304671))

(declare-fun m!304679 () Bool)

(assert (=> b!248839 m!304679))

(assert (=> b!248512 d!69937))

(declare-fun d!69939 () Bool)

(declare-fun lt!101235 () Bool)

(declare-fun e!154522 () Bool)

(assert (=> d!69939 (= lt!101235 e!154522)))

(declare-fun res!115381 () Bool)

(assert (=> d!69939 (=> (not res!115381) (not e!154522))))

(assert (=> d!69939 (= res!115381 (= (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 (print!312 thiss!17480 (singletonSeq!247 separatorToken!170))))) (list!1449 (singletonSeq!247 separatorToken!170))))))

(declare-fun e!154521 () Bool)

(assert (=> d!69939 (= lt!101235 e!154521)))

(declare-fun res!115380 () Bool)

(assert (=> d!69939 (=> (not res!115380) (not e!154521))))

(declare-fun lt!101236 () tuple2!4090)

(assert (=> d!69939 (= res!115380 (= (size!2895 (_1!2261 lt!101236)) 1))))

(assert (=> d!69939 (= lt!101236 (lex!381 thiss!17480 rules!1920 (print!312 thiss!17480 (singletonSeq!247 separatorToken!170))))))

(assert (=> d!69939 (not (isEmpty!2256 rules!1920))))

(assert (=> d!69939 (= (rulesProduceIndividualToken!330 thiss!17480 rules!1920 separatorToken!170) lt!101235)))

(declare-fun b!248844 () Bool)

(declare-fun res!115382 () Bool)

(assert (=> b!248844 (=> (not res!115382) (not e!154521))))

(assert (=> b!248844 (= res!115382 (= (apply!691 (_1!2261 lt!101236) 0) separatorToken!170))))

(declare-fun b!248845 () Bool)

(assert (=> b!248845 (= e!154521 (isEmpty!2264 (_2!2261 lt!101236)))))

(declare-fun b!248846 () Bool)

(assert (=> b!248846 (= e!154522 (isEmpty!2264 (_2!2261 (lex!381 thiss!17480 rules!1920 (print!312 thiss!17480 (singletonSeq!247 separatorToken!170))))))))

(assert (= (and d!69939 res!115380) b!248844))

(assert (= (and b!248844 res!115382) b!248845))

(assert (= (and d!69939 res!115381) b!248846))

(assert (=> d!69939 m!304215))

(declare-fun m!304681 () Bool)

(assert (=> d!69939 m!304681))

(declare-fun m!304683 () Bool)

(assert (=> d!69939 m!304683))

(declare-fun m!304685 () Bool)

(assert (=> d!69939 m!304685))

(declare-fun m!304687 () Bool)

(assert (=> d!69939 m!304687))

(assert (=> d!69939 m!304685))

(declare-fun m!304689 () Bool)

(assert (=> d!69939 m!304689))

(assert (=> d!69939 m!304683))

(assert (=> d!69939 m!304683))

(declare-fun m!304691 () Bool)

(assert (=> d!69939 m!304691))

(declare-fun m!304693 () Bool)

(assert (=> b!248844 m!304693))

(declare-fun m!304695 () Bool)

(assert (=> b!248845 m!304695))

(assert (=> b!248846 m!304683))

(assert (=> b!248846 m!304683))

(assert (=> b!248846 m!304685))

(assert (=> b!248846 m!304685))

(assert (=> b!248846 m!304689))

(declare-fun m!304697 () Bool)

(assert (=> b!248846 m!304697))

(assert (=> b!248511 d!69939))

(declare-fun d!69941 () Bool)

(assert (=> d!69941 (= (inv!4509 (tag!903 (rule!1272 separatorToken!170))) (= (mod (str.len (value!24122 (tag!903 (rule!1272 separatorToken!170)))) 2) 0))))

(assert (=> b!248532 d!69941))

(declare-fun d!69943 () Bool)

(declare-fun res!115385 () Bool)

(declare-fun e!154525 () Bool)

(assert (=> d!69943 (=> (not res!115385) (not e!154525))))

(assert (=> d!69943 (= res!115385 (semiInverseModEq!235 (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (toValue!1398 (transformation!695 (rule!1272 separatorToken!170)))))))

(assert (=> d!69943 (= (inv!4513 (transformation!695 (rule!1272 separatorToken!170))) e!154525)))

(declare-fun b!248849 () Bool)

(assert (=> b!248849 (= e!154525 (equivClasses!218 (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (toValue!1398 (transformation!695 (rule!1272 separatorToken!170)))))))

(assert (= (and d!69943 res!115385) b!248849))

(declare-fun m!304701 () Bool)

(assert (=> d!69943 m!304701))

(declare-fun m!304703 () Bool)

(assert (=> b!248849 m!304703))

(assert (=> b!248532 d!69943))

(declare-fun d!69945 () Bool)

(assert (=> d!69945 (= (get!1201 lt!101107) (v!14524 lt!101107))))

(assert (=> b!248531 d!69945))

(declare-fun d!69947 () Bool)

(assert (=> d!69947 (= (isDefined!603 lt!101107) (not (isEmpty!2262 lt!101107)))))

(declare-fun bs!26645 () Bool)

(assert (= bs!26645 d!69947))

(declare-fun m!304709 () Bool)

(assert (=> bs!26645 m!304709))

(assert (=> b!248531 d!69947))

(declare-fun b!248850 () Bool)

(declare-fun res!115391 () Bool)

(declare-fun e!154528 () Bool)

(assert (=> b!248850 (=> (not res!115391) (not e!154528))))

(declare-fun lt!101239 () Option!752)

(assert (=> b!248850 (= res!115391 (= (value!24123 (_1!2259 (get!1201 lt!101239))) (apply!689 (transformation!695 (rule!1272 (_1!2259 (get!1201 lt!101239)))) (seqFromList!768 (originalCharacters!738 (_1!2259 (get!1201 lt!101239)))))))))

(declare-fun b!248851 () Bool)

(declare-fun e!154527 () Option!752)

(declare-fun lt!101242 () Option!752)

(declare-fun lt!101241 () Option!752)

(assert (=> b!248851 (= e!154527 (ite (and ((_ is None!751) lt!101242) ((_ is None!751) lt!101241)) None!751 (ite ((_ is None!751) lt!101241) lt!101242 (ite ((_ is None!751) lt!101242) lt!101241 (ite (>= (size!2894 (_1!2259 (v!14524 lt!101242))) (size!2894 (_1!2259 (v!14524 lt!101241)))) lt!101242 lt!101241)))))))

(declare-fun call!13080 () Option!752)

(assert (=> b!248851 (= lt!101242 call!13080)))

(assert (=> b!248851 (= lt!101241 (maxPrefix!311 thiss!17480 (t!35303 rules!1920) lt!101091))))

(declare-fun b!248852 () Bool)

(declare-fun res!115390 () Bool)

(assert (=> b!248852 (=> (not res!115390) (not e!154528))))

(assert (=> b!248852 (= res!115390 (< (size!2898 (_2!2259 (get!1201 lt!101239))) (size!2898 lt!101091)))))

(declare-fun b!248853 () Bool)

(declare-fun res!115392 () Bool)

(assert (=> b!248853 (=> (not res!115392) (not e!154528))))

(assert (=> b!248853 (= res!115392 (= (++!936 (list!1448 (charsOf!350 (_1!2259 (get!1201 lt!101239)))) (_2!2259 (get!1201 lt!101239))) lt!101091))))

(declare-fun b!248854 () Bool)

(declare-fun res!115388 () Bool)

(assert (=> b!248854 (=> (not res!115388) (not e!154528))))

(assert (=> b!248854 (= res!115388 (matchR!257 (regex!695 (rule!1272 (_1!2259 (get!1201 lt!101239)))) (list!1448 (charsOf!350 (_1!2259 (get!1201 lt!101239))))))))

(declare-fun b!248855 () Bool)

(declare-fun res!115387 () Bool)

(assert (=> b!248855 (=> (not res!115387) (not e!154528))))

(assert (=> b!248855 (= res!115387 (= (list!1448 (charsOf!350 (_1!2259 (get!1201 lt!101239)))) (originalCharacters!738 (_1!2259 (get!1201 lt!101239)))))))

(declare-fun d!69949 () Bool)

(declare-fun e!154526 () Bool)

(assert (=> d!69949 e!154526))

(declare-fun res!115389 () Bool)

(assert (=> d!69949 (=> res!115389 e!154526)))

(assert (=> d!69949 (= res!115389 (isEmpty!2262 lt!101239))))

(assert (=> d!69949 (= lt!101239 e!154527)))

(declare-fun c!47314 () Bool)

(assert (=> d!69949 (= c!47314 (and ((_ is Cons!3661) rules!1920) ((_ is Nil!3661) (t!35303 rules!1920))))))

(declare-fun lt!101240 () Unit!4444)

(declare-fun lt!101238 () Unit!4444)

(assert (=> d!69949 (= lt!101240 lt!101238)))

(assert (=> d!69949 (isPrefix!379 lt!101091 lt!101091)))

(assert (=> d!69949 (= lt!101238 (lemmaIsPrefixRefl!193 lt!101091 lt!101091))))

(assert (=> d!69949 (rulesValidInductive!184 thiss!17480 rules!1920)))

(assert (=> d!69949 (= (maxPrefix!311 thiss!17480 rules!1920 lt!101091) lt!101239)))

(declare-fun bm!13075 () Bool)

(assert (=> bm!13075 (= call!13080 (maxPrefixOneRule!127 thiss!17480 (h!9058 rules!1920) lt!101091))))

(declare-fun b!248856 () Bool)

(assert (=> b!248856 (= e!154526 e!154528)))

(declare-fun res!115386 () Bool)

(assert (=> b!248856 (=> (not res!115386) (not e!154528))))

(assert (=> b!248856 (= res!115386 (isDefined!603 lt!101239))))

(declare-fun b!248857 () Bool)

(assert (=> b!248857 (= e!154527 call!13080)))

(declare-fun b!248858 () Bool)

(assert (=> b!248858 (= e!154528 (contains!676 rules!1920 (rule!1272 (_1!2259 (get!1201 lt!101239)))))))

(assert (= (and d!69949 c!47314) b!248857))

(assert (= (and d!69949 (not c!47314)) b!248851))

(assert (= (or b!248857 b!248851) bm!13075))

(assert (= (and d!69949 (not res!115389)) b!248856))

(assert (= (and b!248856 res!115386) b!248855))

(assert (= (and b!248855 res!115387) b!248852))

(assert (= (and b!248852 res!115390) b!248853))

(assert (= (and b!248853 res!115392) b!248850))

(assert (= (and b!248850 res!115391) b!248854))

(assert (= (and b!248854 res!115388) b!248858))

(declare-fun m!304713 () Bool)

(assert (=> b!248854 m!304713))

(declare-fun m!304715 () Bool)

(assert (=> b!248854 m!304715))

(assert (=> b!248854 m!304715))

(declare-fun m!304717 () Bool)

(assert (=> b!248854 m!304717))

(assert (=> b!248854 m!304717))

(declare-fun m!304719 () Bool)

(assert (=> b!248854 m!304719))

(declare-fun m!304721 () Bool)

(assert (=> b!248856 m!304721))

(assert (=> b!248858 m!304713))

(declare-fun m!304723 () Bool)

(assert (=> b!248858 m!304723))

(assert (=> b!248852 m!304713))

(declare-fun m!304725 () Bool)

(assert (=> b!248852 m!304725))

(assert (=> b!248852 m!304507))

(assert (=> b!248855 m!304713))

(assert (=> b!248855 m!304715))

(assert (=> b!248855 m!304715))

(assert (=> b!248855 m!304717))

(declare-fun m!304727 () Bool)

(assert (=> d!69949 m!304727))

(declare-fun m!304729 () Bool)

(assert (=> d!69949 m!304729))

(declare-fun m!304731 () Bool)

(assert (=> d!69949 m!304731))

(assert (=> d!69949 m!304451))

(declare-fun m!304733 () Bool)

(assert (=> bm!13075 m!304733))

(assert (=> b!248853 m!304713))

(assert (=> b!248853 m!304715))

(assert (=> b!248853 m!304715))

(assert (=> b!248853 m!304717))

(assert (=> b!248853 m!304717))

(declare-fun m!304735 () Bool)

(assert (=> b!248853 m!304735))

(assert (=> b!248850 m!304713))

(declare-fun m!304737 () Bool)

(assert (=> b!248850 m!304737))

(assert (=> b!248850 m!304737))

(declare-fun m!304739 () Bool)

(assert (=> b!248850 m!304739))

(declare-fun m!304741 () Bool)

(assert (=> b!248851 m!304741))

(assert (=> b!248531 d!69949))

(declare-fun d!69953 () Bool)

(declare-fun list!1452 (Conc!1212) List!3670)

(assert (=> d!69953 (= (list!1448 (seqFromList!768 lt!101096)) (list!1452 (c!47272 (seqFromList!768 lt!101096))))))

(declare-fun bs!26646 () Bool)

(assert (= bs!26646 d!69953))

(declare-fun m!304743 () Bool)

(assert (=> bs!26646 m!304743))

(assert (=> b!248516 d!69953))

(declare-fun d!69955 () Bool)

(assert (=> d!69955 (= (seqFromList!768 lt!101096) (fromListB!275 lt!101096))))

(declare-fun bs!26647 () Bool)

(assert (= bs!26647 d!69955))

(declare-fun m!304745 () Bool)

(assert (=> bs!26647 m!304745))

(assert (=> b!248516 d!69955))

(declare-fun b!248869 () Bool)

(declare-fun e!154536 () Bool)

(declare-fun inv!16 (TokenValue!717) Bool)

(assert (=> b!248869 (= e!154536 (inv!16 (value!24123 (h!9059 tokens!465))))))

(declare-fun b!248870 () Bool)

(declare-fun e!154535 () Bool)

(declare-fun inv!17 (TokenValue!717) Bool)

(assert (=> b!248870 (= e!154535 (inv!17 (value!24123 (h!9059 tokens!465))))))

(declare-fun b!248871 () Bool)

(declare-fun e!154537 () Bool)

(declare-fun inv!15 (TokenValue!717) Bool)

(assert (=> b!248871 (= e!154537 (inv!15 (value!24123 (h!9059 tokens!465))))))

(declare-fun b!248872 () Bool)

(declare-fun res!115395 () Bool)

(assert (=> b!248872 (=> res!115395 e!154537)))

(assert (=> b!248872 (= res!115395 (not ((_ is IntegerValue!2153) (value!24123 (h!9059 tokens!465)))))))

(assert (=> b!248872 (= e!154535 e!154537)))

(declare-fun b!248873 () Bool)

(assert (=> b!248873 (= e!154536 e!154535)))

(declare-fun c!47320 () Bool)

(assert (=> b!248873 (= c!47320 ((_ is IntegerValue!2152) (value!24123 (h!9059 tokens!465))))))

(declare-fun d!69957 () Bool)

(declare-fun c!47319 () Bool)

(assert (=> d!69957 (= c!47319 ((_ is IntegerValue!2151) (value!24123 (h!9059 tokens!465))))))

(assert (=> d!69957 (= (inv!21 (value!24123 (h!9059 tokens!465))) e!154536)))

(assert (= (and d!69957 c!47319) b!248869))

(assert (= (and d!69957 (not c!47319)) b!248873))

(assert (= (and b!248873 c!47320) b!248870))

(assert (= (and b!248873 (not c!47320)) b!248872))

(assert (= (and b!248872 (not res!115395)) b!248871))

(declare-fun m!304747 () Bool)

(assert (=> b!248869 m!304747))

(declare-fun m!304749 () Bool)

(assert (=> b!248870 m!304749))

(declare-fun m!304751 () Bool)

(assert (=> b!248871 m!304751))

(assert (=> b!248515 d!69957))

(declare-fun d!69959 () Bool)

(assert (=> d!69959 (= (list!1448 (charsOf!350 separatorToken!170)) (list!1452 (c!47272 (charsOf!350 separatorToken!170))))))

(declare-fun bs!26648 () Bool)

(assert (= bs!26648 d!69959))

(declare-fun m!304753 () Bool)

(assert (=> bs!26648 m!304753))

(assert (=> b!248503 d!69959))

(declare-fun d!69961 () Bool)

(declare-fun lt!101245 () BalanceConc!2432)

(assert (=> d!69961 (= (list!1448 lt!101245) (originalCharacters!738 separatorToken!170))))

(assert (=> d!69961 (= lt!101245 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (value!24123 separatorToken!170)))))

(assert (=> d!69961 (= (charsOf!350 separatorToken!170) lt!101245)))

(declare-fun b_lambda!7285 () Bool)

(assert (=> (not b_lambda!7285) (not d!69961)))

(assert (=> d!69961 t!35306))

(declare-fun b_and!18763 () Bool)

(assert (= b_and!18757 (and (=> t!35306 result!16052) b_and!18763)))

(assert (=> d!69961 t!35308))

(declare-fun b_and!18765 () Bool)

(assert (= b_and!18759 (and (=> t!35308 result!16056) b_and!18765)))

(assert (=> d!69961 t!35310))

(declare-fun b_and!18767 () Bool)

(assert (= b_and!18761 (and (=> t!35310 result!16058) b_and!18767)))

(declare-fun m!304755 () Bool)

(assert (=> d!69961 m!304755))

(assert (=> d!69961 m!304339))

(assert (=> b!248503 d!69961))

(declare-fun b!248876 () Bool)

(declare-fun res!115396 () Bool)

(declare-fun e!154539 () Bool)

(assert (=> b!248876 (=> (not res!115396) (not e!154539))))

(declare-fun lt!101246 () List!3670)

(assert (=> b!248876 (= res!115396 (= (size!2898 lt!101246) (+ (size!2898 lt!101091) (size!2898 lt!101098))))))

(declare-fun d!69963 () Bool)

(assert (=> d!69963 e!154539))

(declare-fun res!115397 () Bool)

(assert (=> d!69963 (=> (not res!115397) (not e!154539))))

(assert (=> d!69963 (= res!115397 (= (content!509 lt!101246) ((_ map or) (content!509 lt!101091) (content!509 lt!101098))))))

(declare-fun e!154538 () List!3670)

(assert (=> d!69963 (= lt!101246 e!154538)))

(declare-fun c!47321 () Bool)

(assert (=> d!69963 (= c!47321 ((_ is Nil!3660) lt!101091))))

(assert (=> d!69963 (= (++!936 lt!101091 lt!101098) lt!101246)))

(declare-fun b!248877 () Bool)

(assert (=> b!248877 (= e!154539 (or (not (= lt!101098 Nil!3660)) (= lt!101246 lt!101091)))))

(declare-fun b!248875 () Bool)

(assert (=> b!248875 (= e!154538 (Cons!3660 (h!9057 lt!101091) (++!936 (t!35302 lt!101091) lt!101098)))))

(declare-fun b!248874 () Bool)

(assert (=> b!248874 (= e!154538 lt!101098)))

(assert (= (and d!69963 c!47321) b!248874))

(assert (= (and d!69963 (not c!47321)) b!248875))

(assert (= (and d!69963 res!115397) b!248876))

(assert (= (and b!248876 res!115396) b!248877))

(declare-fun m!304757 () Bool)

(assert (=> b!248876 m!304757))

(assert (=> b!248876 m!304507))

(declare-fun m!304759 () Bool)

(assert (=> b!248876 m!304759))

(declare-fun m!304761 () Bool)

(assert (=> d!69963 m!304761))

(assert (=> d!69963 m!304513))

(declare-fun m!304763 () Bool)

(assert (=> d!69963 m!304763))

(declare-fun m!304765 () Bool)

(assert (=> b!248875 m!304765))

(assert (=> b!248503 d!69963))

(declare-fun b!248880 () Bool)

(declare-fun res!115398 () Bool)

(declare-fun e!154541 () Bool)

(assert (=> b!248880 (=> (not res!115398) (not e!154541))))

(declare-fun lt!101247 () List!3670)

(assert (=> b!248880 (= res!115398 (= (size!2898 lt!101247) (+ (size!2898 (++!936 lt!101091 lt!101098)) (size!2898 lt!101106))))))

(declare-fun d!69965 () Bool)

(assert (=> d!69965 e!154541))

(declare-fun res!115399 () Bool)

(assert (=> d!69965 (=> (not res!115399) (not e!154541))))

(assert (=> d!69965 (= res!115399 (= (content!509 lt!101247) ((_ map or) (content!509 (++!936 lt!101091 lt!101098)) (content!509 lt!101106))))))

(declare-fun e!154540 () List!3670)

(assert (=> d!69965 (= lt!101247 e!154540)))

(declare-fun c!47322 () Bool)

(assert (=> d!69965 (= c!47322 ((_ is Nil!3660) (++!936 lt!101091 lt!101098)))))

(assert (=> d!69965 (= (++!936 (++!936 lt!101091 lt!101098) lt!101106) lt!101247)))

(declare-fun b!248881 () Bool)

(assert (=> b!248881 (= e!154541 (or (not (= lt!101106 Nil!3660)) (= lt!101247 (++!936 lt!101091 lt!101098))))))

(declare-fun b!248879 () Bool)

(assert (=> b!248879 (= e!154540 (Cons!3660 (h!9057 (++!936 lt!101091 lt!101098)) (++!936 (t!35302 (++!936 lt!101091 lt!101098)) lt!101106)))))

(declare-fun b!248878 () Bool)

(assert (=> b!248878 (= e!154540 lt!101106)))

(assert (= (and d!69965 c!47322) b!248878))

(assert (= (and d!69965 (not c!47322)) b!248879))

(assert (= (and d!69965 res!115399) b!248880))

(assert (= (and b!248880 res!115398) b!248881))

(declare-fun m!304767 () Bool)

(assert (=> b!248880 m!304767))

(assert (=> b!248880 m!304251))

(declare-fun m!304769 () Bool)

(assert (=> b!248880 m!304769))

(declare-fun m!304771 () Bool)

(assert (=> b!248880 m!304771))

(declare-fun m!304773 () Bool)

(assert (=> d!69965 m!304773))

(assert (=> d!69965 m!304251))

(declare-fun m!304775 () Bool)

(assert (=> d!69965 m!304775))

(declare-fun m!304777 () Bool)

(assert (=> d!69965 m!304777))

(declare-fun m!304779 () Bool)

(assert (=> b!248879 m!304779))

(assert (=> b!248503 d!69965))

(declare-fun d!69967 () Bool)

(assert (=> d!69967 (= (list!1448 (charsOf!350 (h!9059 tokens!465))) (list!1452 (c!47272 (charsOf!350 (h!9059 tokens!465)))))))

(declare-fun bs!26649 () Bool)

(assert (= bs!26649 d!69967))

(declare-fun m!304781 () Bool)

(assert (=> bs!26649 m!304781))

(assert (=> b!248503 d!69967))

(declare-fun d!69969 () Bool)

(declare-fun lt!101248 () BalanceConc!2432)

(assert (=> d!69969 (= (list!1448 lt!101248) (originalCharacters!738 (h!9059 tokens!465)))))

(assert (=> d!69969 (= lt!101248 (dynLambda!1796 (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (value!24123 (h!9059 tokens!465))))))

(assert (=> d!69969 (= (charsOf!350 (h!9059 tokens!465)) lt!101248)))

(declare-fun b_lambda!7287 () Bool)

(assert (=> (not b_lambda!7287) (not d!69969)))

(assert (=> d!69969 t!35319))

(declare-fun b_and!18769 () Bool)

(assert (= b_and!18763 (and (=> t!35319 result!16068) b_and!18769)))

(assert (=> d!69969 t!35321))

(declare-fun b_and!18771 () Bool)

(assert (= b_and!18765 (and (=> t!35321 result!16070) b_and!18771)))

(assert (=> d!69969 t!35323))

(declare-fun b_and!18773 () Bool)

(assert (= b_and!18767 (and (=> t!35323 result!16072) b_and!18773)))

(declare-fun m!304783 () Bool)

(assert (=> d!69969 m!304783))

(assert (=> d!69969 m!304655))

(assert (=> b!248503 d!69969))

(declare-fun d!69971 () Bool)

(assert (=> d!69971 (= (list!1448 lt!101088) (list!1452 (c!47272 lt!101088)))))

(declare-fun bs!26650 () Bool)

(assert (= bs!26650 d!69971))

(declare-fun m!304785 () Bool)

(assert (=> bs!26650 m!304785))

(assert (=> b!248503 d!69971))

(declare-fun d!69973 () Bool)

(declare-fun fromListB!276 (List!3672) BalanceConc!2434)

(assert (=> d!69973 (= (seqFromList!767 (t!35304 tokens!465)) (fromListB!276 (t!35304 tokens!465)))))

(declare-fun bs!26651 () Bool)

(assert (= bs!26651 d!69973))

(declare-fun m!304787 () Bool)

(assert (=> bs!26651 m!304787))

(assert (=> b!248503 d!69973))

(declare-fun b!248884 () Bool)

(declare-fun res!115400 () Bool)

(declare-fun e!154543 () Bool)

(assert (=> b!248884 (=> (not res!115400) (not e!154543))))

(declare-fun lt!101249 () List!3670)

(assert (=> b!248884 (= res!115400 (= (size!2898 lt!101249) (+ (size!2898 lt!101091) (size!2898 lt!101110))))))

(declare-fun d!69975 () Bool)

(assert (=> d!69975 e!154543))

(declare-fun res!115401 () Bool)

(assert (=> d!69975 (=> (not res!115401) (not e!154543))))

(assert (=> d!69975 (= res!115401 (= (content!509 lt!101249) ((_ map or) (content!509 lt!101091) (content!509 lt!101110))))))

(declare-fun e!154542 () List!3670)

(assert (=> d!69975 (= lt!101249 e!154542)))

(declare-fun c!47323 () Bool)

(assert (=> d!69975 (= c!47323 ((_ is Nil!3660) lt!101091))))

(assert (=> d!69975 (= (++!936 lt!101091 lt!101110) lt!101249)))

(declare-fun b!248885 () Bool)

(assert (=> b!248885 (= e!154543 (or (not (= lt!101110 Nil!3660)) (= lt!101249 lt!101091)))))

(declare-fun b!248883 () Bool)

(assert (=> b!248883 (= e!154542 (Cons!3660 (h!9057 lt!101091) (++!936 (t!35302 lt!101091) lt!101110)))))

(declare-fun b!248882 () Bool)

(assert (=> b!248882 (= e!154542 lt!101110)))

(assert (= (and d!69975 c!47323) b!248882))

(assert (= (and d!69975 (not c!47323)) b!248883))

(assert (= (and d!69975 res!115401) b!248884))

(assert (= (and b!248884 res!115400) b!248885))

(declare-fun m!304789 () Bool)

(assert (=> b!248884 m!304789))

(assert (=> b!248884 m!304507))

(declare-fun m!304791 () Bool)

(assert (=> b!248884 m!304791))

(declare-fun m!304793 () Bool)

(assert (=> d!69975 m!304793))

(assert (=> d!69975 m!304513))

(declare-fun m!304795 () Bool)

(assert (=> d!69975 m!304795))

(declare-fun m!304797 () Bool)

(assert (=> b!248883 m!304797))

(assert (=> b!248503 d!69975))

(declare-fun d!69977 () Bool)

(assert (=> d!69977 (= (++!936 (++!936 lt!101091 lt!101098) lt!101106) (++!936 lt!101091 (++!936 lt!101098 lt!101106)))))

(declare-fun lt!101252 () Unit!4444)

(declare-fun choose!2345 (List!3670 List!3670 List!3670) Unit!4444)

(assert (=> d!69977 (= lt!101252 (choose!2345 lt!101091 lt!101098 lt!101106))))

(assert (=> d!69977 (= (lemmaConcatAssociativity!400 lt!101091 lt!101098 lt!101106) lt!101252)))

(declare-fun bs!26652 () Bool)

(assert (= bs!26652 d!69977))

(assert (=> bs!26652 m!304251))

(assert (=> bs!26652 m!304265))

(declare-fun m!304799 () Bool)

(assert (=> bs!26652 m!304799))

(assert (=> bs!26652 m!304267))

(declare-fun m!304801 () Bool)

(assert (=> bs!26652 m!304801))

(assert (=> bs!26652 m!304251))

(assert (=> bs!26652 m!304267))

(assert (=> b!248503 d!69977))

(declare-fun bs!26659 () Bool)

(declare-fun b!248949 () Bool)

(assert (= bs!26659 (and b!248949 b!248521)))

(declare-fun lambda!8216 () Int)

(assert (=> bs!26659 (not (= lambda!8216 lambda!8209))))

(declare-fun bs!26660 () Bool)

(assert (= bs!26660 (and b!248949 b!248508)))

(assert (=> bs!26660 (= lambda!8216 lambda!8210)))

(declare-fun b!248956 () Bool)

(declare-fun e!154584 () Bool)

(assert (=> b!248956 (= e!154584 true)))

(declare-fun b!248955 () Bool)

(declare-fun e!154583 () Bool)

(assert (=> b!248955 (= e!154583 e!154584)))

(declare-fun b!248954 () Bool)

(declare-fun e!154582 () Bool)

(assert (=> b!248954 (= e!154582 e!154583)))

(assert (=> b!248949 e!154582))

(assert (= b!248955 b!248956))

(assert (= b!248954 b!248955))

(assert (= (and b!248949 ((_ is Cons!3661) rules!1920)) b!248954))

(assert (=> b!248956 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8216))))

(assert (=> b!248956 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8216))))

(assert (=> b!248949 true))

(declare-fun d!69979 () Bool)

(declare-fun c!47347 () Bool)

(assert (=> d!69979 (= c!47347 ((_ is Cons!3662) (t!35304 tokens!465)))))

(declare-fun e!154580 () List!3670)

(assert (=> d!69979 (= (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 (t!35304 tokens!465) separatorToken!170) e!154580)))

(declare-fun c!47345 () Bool)

(declare-fun bm!13089 () Bool)

(declare-fun call!13096 () BalanceConc!2432)

(declare-fun call!13095 () BalanceConc!2432)

(declare-fun call!13094 () List!3670)

(assert (=> bm!13089 (= call!13094 (list!1448 (ite c!47345 call!13095 call!13096)))))

(declare-fun bm!13090 () Bool)

(declare-fun call!13097 () List!3670)

(declare-fun lt!101299 () List!3670)

(declare-fun call!13098 () List!3670)

(assert (=> bm!13090 (= call!13097 (++!936 call!13094 (ite c!47345 lt!101299 call!13098)))))

(declare-fun b!248946 () Bool)

(declare-fun e!154581 () BalanceConc!2432)

(assert (=> b!248946 (= e!154581 (charsOf!350 separatorToken!170))))

(declare-fun b!248947 () Bool)

(declare-fun e!154578 () List!3670)

(assert (=> b!248947 (= e!154578 (++!936 call!13097 lt!101299))))

(declare-fun bm!13091 () Bool)

(assert (=> bm!13091 (= call!13095 (charsOf!350 (h!9059 (t!35304 tokens!465))))))

(declare-fun bm!13092 () Bool)

(assert (=> bm!13092 (= call!13098 (list!1448 e!154581))))

(declare-fun c!47346 () Bool)

(declare-fun c!47344 () Bool)

(assert (=> bm!13092 (= c!47346 c!47344)))

(declare-fun b!248948 () Bool)

(declare-fun lt!101297 () Option!752)

(assert (=> b!248948 (= c!47344 (and ((_ is Some!751) lt!101297) (not (= (_1!2259 (v!14524 lt!101297)) (h!9059 (t!35304 tokens!465))))))))

(declare-fun e!154579 () List!3670)

(assert (=> b!248948 (= e!154579 e!154578)))

(declare-fun bm!13093 () Bool)

(assert (=> bm!13093 (= call!13096 call!13095)))

(assert (=> b!248949 (= e!154580 e!154579)))

(declare-fun lt!101295 () Unit!4444)

(assert (=> b!248949 (= lt!101295 (forallContained!262 (t!35304 tokens!465) lambda!8216 (h!9059 (t!35304 tokens!465))))))

(assert (=> b!248949 (= lt!101299 (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 (t!35304 (t!35304 tokens!465)) separatorToken!170))))

(assert (=> b!248949 (= lt!101297 (maxPrefix!311 thiss!17480 rules!1920 (++!936 (list!1448 (charsOf!350 (h!9059 (t!35304 tokens!465)))) lt!101299)))))

(assert (=> b!248949 (= c!47345 (and ((_ is Some!751) lt!101297) (= (_1!2259 (v!14524 lt!101297)) (h!9059 (t!35304 tokens!465)))))))

(declare-fun b!248950 () Bool)

(assert (=> b!248950 (= e!154581 call!13096)))

(declare-fun b!248951 () Bool)

(assert (=> b!248951 (= e!154578 Nil!3660)))

(assert (=> b!248951 (= (print!312 thiss!17480 (singletonSeq!247 (h!9059 (t!35304 tokens!465)))) (printTailRec!275 thiss!17480 (singletonSeq!247 (h!9059 (t!35304 tokens!465))) 0 (BalanceConc!2433 Empty!1212)))))

(declare-fun lt!101294 () Unit!4444)

(declare-fun Unit!4450 () Unit!4444)

(assert (=> b!248951 (= lt!101294 Unit!4450)))

(declare-fun lt!101298 () Unit!4444)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!92 (LexerInterface!581 List!3671 List!3670 List!3670) Unit!4444)

(assert (=> b!248951 (= lt!101298 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!92 thiss!17480 rules!1920 call!13098 lt!101299))))

(assert (=> b!248951 false))

(declare-fun lt!101296 () Unit!4444)

(declare-fun Unit!4451 () Unit!4444)

(assert (=> b!248951 (= lt!101296 Unit!4451)))

(declare-fun b!248952 () Bool)

(assert (=> b!248952 (= e!154579 call!13097)))

(declare-fun b!248953 () Bool)

(assert (=> b!248953 (= e!154580 Nil!3660)))

(assert (= (and d!69979 c!47347) b!248949))

(assert (= (and d!69979 (not c!47347)) b!248953))

(assert (= (and b!248949 c!47345) b!248952))

(assert (= (and b!248949 (not c!47345)) b!248948))

(assert (= (and b!248948 c!47344) b!248947))

(assert (= (and b!248948 (not c!47344)) b!248951))

(assert (= (or b!248947 b!248951) bm!13093))

(assert (= (or b!248947 b!248951) bm!13092))

(assert (= (and bm!13092 c!47346) b!248946))

(assert (= (and bm!13092 (not c!47346)) b!248950))

(assert (= (or b!248952 bm!13093) bm!13091))

(assert (= (or b!248952 b!248947) bm!13089))

(assert (= (or b!248952 b!248947) bm!13090))

(declare-fun m!304885 () Bool)

(assert (=> b!248951 m!304885))

(assert (=> b!248951 m!304885))

(declare-fun m!304887 () Bool)

(assert (=> b!248951 m!304887))

(assert (=> b!248951 m!304885))

(declare-fun m!304889 () Bool)

(assert (=> b!248951 m!304889))

(declare-fun m!304891 () Bool)

(assert (=> b!248951 m!304891))

(declare-fun m!304893 () Bool)

(assert (=> bm!13091 m!304893))

(assert (=> b!248949 m!304893))

(declare-fun m!304895 () Bool)

(assert (=> b!248949 m!304895))

(declare-fun m!304897 () Bool)

(assert (=> b!248949 m!304897))

(declare-fun m!304899 () Bool)

(assert (=> b!248949 m!304899))

(declare-fun m!304901 () Bool)

(assert (=> b!248949 m!304901))

(declare-fun m!304903 () Bool)

(assert (=> b!248949 m!304903))

(assert (=> b!248949 m!304893))

(assert (=> b!248949 m!304895))

(assert (=> b!248949 m!304901))

(declare-fun m!304905 () Bool)

(assert (=> bm!13090 m!304905))

(declare-fun m!304907 () Bool)

(assert (=> bm!13092 m!304907))

(assert (=> b!248946 m!304257))

(declare-fun m!304909 () Bool)

(assert (=> bm!13089 m!304909))

(declare-fun m!304911 () Bool)

(assert (=> b!248947 m!304911))

(assert (=> b!248503 d!69979))

(declare-fun b!248962 () Bool)

(declare-fun res!115423 () Bool)

(declare-fun e!154588 () Bool)

(assert (=> b!248962 (=> (not res!115423) (not e!154588))))

(declare-fun lt!101307 () List!3670)

(assert (=> b!248962 (= res!115423 (= (size!2898 lt!101307) (+ (size!2898 lt!101098) (size!2898 lt!101106))))))

(declare-fun d!70009 () Bool)

(assert (=> d!70009 e!154588))

(declare-fun res!115424 () Bool)

(assert (=> d!70009 (=> (not res!115424) (not e!154588))))

(assert (=> d!70009 (= res!115424 (= (content!509 lt!101307) ((_ map or) (content!509 lt!101098) (content!509 lt!101106))))))

(declare-fun e!154587 () List!3670)

(assert (=> d!70009 (= lt!101307 e!154587)))

(declare-fun c!47349 () Bool)

(assert (=> d!70009 (= c!47349 ((_ is Nil!3660) lt!101098))))

(assert (=> d!70009 (= (++!936 lt!101098 lt!101106) lt!101307)))

(declare-fun b!248963 () Bool)

(assert (=> b!248963 (= e!154588 (or (not (= lt!101106 Nil!3660)) (= lt!101307 lt!101098)))))

(declare-fun b!248961 () Bool)

(assert (=> b!248961 (= e!154587 (Cons!3660 (h!9057 lt!101098) (++!936 (t!35302 lt!101098) lt!101106)))))

(declare-fun b!248960 () Bool)

(assert (=> b!248960 (= e!154587 lt!101106)))

(assert (= (and d!70009 c!47349) b!248960))

(assert (= (and d!70009 (not c!47349)) b!248961))

(assert (= (and d!70009 res!115424) b!248962))

(assert (= (and b!248962 res!115423) b!248963))

(declare-fun m!304913 () Bool)

(assert (=> b!248962 m!304913))

(assert (=> b!248962 m!304759))

(assert (=> b!248962 m!304771))

(declare-fun m!304915 () Bool)

(assert (=> d!70009 m!304915))

(assert (=> d!70009 m!304763))

(assert (=> d!70009 m!304777))

(declare-fun m!304917 () Bool)

(assert (=> b!248961 m!304917))

(assert (=> b!248503 d!70009))

(declare-fun bs!26663 () Bool)

(declare-fun d!70011 () Bool)

(assert (= bs!26663 (and d!70011 b!248521)))

(declare-fun lambda!8223 () Int)

(assert (=> bs!26663 (= lambda!8223 lambda!8209)))

(declare-fun bs!26664 () Bool)

(assert (= bs!26664 (and d!70011 b!248508)))

(assert (=> bs!26664 (not (= lambda!8223 lambda!8210))))

(declare-fun bs!26665 () Bool)

(assert (= bs!26665 (and d!70011 b!248949)))

(assert (=> bs!26665 (not (= lambda!8223 lambda!8216))))

(declare-fun bs!26666 () Bool)

(declare-fun b!249027 () Bool)

(assert (= bs!26666 (and b!249027 b!248521)))

(declare-fun lambda!8224 () Int)

(assert (=> bs!26666 (not (= lambda!8224 lambda!8209))))

(declare-fun bs!26667 () Bool)

(assert (= bs!26667 (and b!249027 b!248508)))

(assert (=> bs!26667 (= lambda!8224 lambda!8210)))

(declare-fun bs!26668 () Bool)

(assert (= bs!26668 (and b!249027 b!248949)))

(assert (=> bs!26668 (= lambda!8224 lambda!8216)))

(declare-fun bs!26669 () Bool)

(assert (= bs!26669 (and b!249027 d!70011)))

(assert (=> bs!26669 (not (= lambda!8224 lambda!8223))))

(declare-fun b!249038 () Bool)

(declare-fun e!154636 () Bool)

(assert (=> b!249038 (= e!154636 true)))

(declare-fun b!249037 () Bool)

(declare-fun e!154635 () Bool)

(assert (=> b!249037 (= e!154635 e!154636)))

(declare-fun b!249036 () Bool)

(declare-fun e!154634 () Bool)

(assert (=> b!249036 (= e!154634 e!154635)))

(assert (=> b!249027 e!154634))

(assert (= b!249037 b!249038))

(assert (= b!249036 b!249037))

(assert (= (and b!249027 ((_ is Cons!3661) rules!1920)) b!249036))

(assert (=> b!249038 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8224))))

(assert (=> b!249038 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8224))))

(assert (=> b!249027 true))

(declare-fun b!249025 () Bool)

(declare-fun e!154631 () BalanceConc!2432)

(declare-fun call!13119 () BalanceConc!2432)

(assert (=> b!249025 (= e!154631 call!13119)))

(declare-fun b!249026 () Bool)

(declare-fun e!154633 () Bool)

(declare-fun lt!101359 () Option!753)

(declare-fun call!13121 () Token!1134)

(assert (=> b!249026 (= e!154633 (not (= (_1!2260 (v!14525 lt!101359)) call!13121)))))

(declare-fun bm!13114 () Bool)

(declare-fun call!13122 () BalanceConc!2432)

(assert (=> bm!13114 (= call!13122 call!13119)))

(declare-fun bm!13115 () Bool)

(declare-fun c!47372 () Bool)

(declare-fun c!47374 () Bool)

(assert (=> bm!13115 (= c!47372 c!47374)))

(declare-fun lt!101363 () BalanceConc!2432)

(declare-fun call!13120 () BalanceConc!2432)

(declare-fun ++!938 (BalanceConc!2432 BalanceConc!2432) BalanceConc!2432)

(assert (=> bm!13115 (= call!13120 (++!938 e!154631 (ite c!47374 lt!101363 call!13122)))))

(declare-fun bm!13116 () Bool)

(declare-fun call!13123 () Token!1134)

(declare-fun c!47375 () Bool)

(assert (=> bm!13116 (= call!13119 (charsOf!350 (ite c!47374 call!13121 (ite c!47375 separatorToken!170 call!13123))))))

(declare-fun e!154630 () BalanceConc!2432)

(declare-fun e!154632 () BalanceConc!2432)

(assert (=> b!249027 (= e!154630 e!154632)))

(declare-fun lt!101358 () List!3672)

(assert (=> b!249027 (= lt!101358 (list!1449 (seqFromList!767 (t!35304 tokens!465))))))

(declare-fun lt!101360 () Unit!4444)

(declare-fun lemmaDropApply!184 (List!3672 Int) Unit!4444)

(assert (=> b!249027 (= lt!101360 (lemmaDropApply!184 lt!101358 0))))

(declare-fun drop!197 (List!3672 Int) List!3672)

(declare-fun apply!692 (List!3672 Int) Token!1134)

(assert (=> b!249027 (= (head!858 (drop!197 lt!101358 0)) (apply!692 lt!101358 0))))

(declare-fun lt!101362 () Unit!4444)

(assert (=> b!249027 (= lt!101362 lt!101360)))

(declare-fun lt!101365 () List!3672)

(assert (=> b!249027 (= lt!101365 (list!1449 (seqFromList!767 (t!35304 tokens!465))))))

(declare-fun lt!101364 () Unit!4444)

(declare-fun lemmaDropTail!176 (List!3672 Int) Unit!4444)

(assert (=> b!249027 (= lt!101364 (lemmaDropTail!176 lt!101365 0))))

(declare-fun tail!454 (List!3672) List!3672)

(assert (=> b!249027 (= (tail!454 (drop!197 lt!101365 0)) (drop!197 lt!101365 (+ 0 1)))))

(declare-fun lt!101353 () Unit!4444)

(assert (=> b!249027 (= lt!101353 lt!101364)))

(declare-fun lt!101361 () Unit!4444)

(assert (=> b!249027 (= lt!101361 (forallContained!262 (list!1449 (seqFromList!767 (t!35304 tokens!465))) lambda!8224 (apply!691 (seqFromList!767 (t!35304 tokens!465)) 0)))))

(assert (=> b!249027 (= lt!101363 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 (seqFromList!767 (t!35304 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!249027 (= lt!101359 (maxPrefixZipperSequence!274 thiss!17480 rules!1920 (++!938 (charsOf!350 (apply!691 (seqFromList!767 (t!35304 tokens!465)) 0)) lt!101363)))))

(declare-fun res!115442 () Bool)

(assert (=> b!249027 (= res!115442 ((_ is Some!752) lt!101359))))

(declare-fun e!154629 () Bool)

(assert (=> b!249027 (=> (not res!115442) (not e!154629))))

(assert (=> b!249027 (= c!47374 e!154629)))

(declare-fun b!249028 () Bool)

(declare-fun e!154628 () Bool)

(assert (=> b!249028 (= e!154628 (<= 0 (size!2895 (seqFromList!767 (t!35304 tokens!465)))))))

(declare-fun bm!13117 () Bool)

(assert (=> bm!13117 (= call!13121 (apply!691 (seqFromList!767 (t!35304 tokens!465)) 0))))

(declare-fun b!249029 () Bool)

(assert (=> b!249029 (= e!154630 (BalanceConc!2433 Empty!1212))))

(declare-fun b!249030 () Bool)

(assert (=> b!249030 (= c!47375 e!154633)))

(declare-fun res!115444 () Bool)

(assert (=> b!249030 (=> (not res!115444) (not e!154633))))

(assert (=> b!249030 (= res!115444 ((_ is Some!752) lt!101359))))

(declare-fun e!154627 () BalanceConc!2432)

(assert (=> b!249030 (= e!154632 e!154627)))

(declare-fun b!249031 () Bool)

(assert (=> b!249031 (= e!154627 (++!938 call!13120 lt!101363))))

(declare-fun bm!13118 () Bool)

(assert (=> bm!13118 (= call!13123 call!13121)))

(declare-fun b!249032 () Bool)

(assert (=> b!249032 (= e!154632 call!13120)))

(declare-fun b!249033 () Bool)

(assert (=> b!249033 (= e!154627 (BalanceConc!2433 Empty!1212))))

(assert (=> b!249033 (= (print!312 thiss!17480 (singletonSeq!247 call!13123)) (printTailRec!275 thiss!17480 (singletonSeq!247 call!13123) 0 (BalanceConc!2433 Empty!1212)))))

(declare-fun lt!101352 () Unit!4444)

(declare-fun Unit!4452 () Unit!4444)

(assert (=> b!249033 (= lt!101352 Unit!4452)))

(declare-fun lt!101356 () Unit!4444)

(assert (=> b!249033 (= lt!101356 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!92 thiss!17480 rules!1920 (list!1448 call!13122) (list!1448 lt!101363)))))

(assert (=> b!249033 false))

(declare-fun lt!101354 () Unit!4444)

(declare-fun Unit!4453 () Unit!4444)

(assert (=> b!249033 (= lt!101354 Unit!4453)))

(declare-fun lt!101357 () BalanceConc!2432)

(declare-fun dropList!144 (BalanceConc!2434 Int) List!3672)

(assert (=> d!70011 (= (list!1448 lt!101357) (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 (dropList!144 (seqFromList!767 (t!35304 tokens!465)) 0) separatorToken!170))))

(assert (=> d!70011 (= lt!101357 e!154630)))

(declare-fun c!47373 () Bool)

(assert (=> d!70011 (= c!47373 (>= 0 (size!2895 (seqFromList!767 (t!35304 tokens!465)))))))

(declare-fun lt!101355 () Unit!4444)

(declare-fun lemmaContentSubsetPreservesForall!88 (List!3672 List!3672 Int) Unit!4444)

(assert (=> d!70011 (= lt!101355 (lemmaContentSubsetPreservesForall!88 (list!1449 (seqFromList!767 (t!35304 tokens!465))) (dropList!144 (seqFromList!767 (t!35304 tokens!465)) 0) lambda!8223))))

(assert (=> d!70011 e!154628))

(declare-fun res!115443 () Bool)

(assert (=> d!70011 (=> (not res!115443) (not e!154628))))

(assert (=> d!70011 (= res!115443 (>= 0 0))))

(assert (=> d!70011 (= (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 (seqFromList!767 (t!35304 tokens!465)) separatorToken!170 0) lt!101357)))

(declare-fun b!249034 () Bool)

(assert (=> b!249034 (= e!154631 (charsOf!350 call!13123))))

(declare-fun b!249035 () Bool)

(assert (=> b!249035 (= e!154629 (= (_1!2260 (v!14525 lt!101359)) (apply!691 (seqFromList!767 (t!35304 tokens!465)) 0)))))

(assert (= (and d!70011 res!115443) b!249028))

(assert (= (and d!70011 c!47373) b!249029))

(assert (= (and d!70011 (not c!47373)) b!249027))

(assert (= (and b!249027 res!115442) b!249035))

(assert (= (and b!249027 c!47374) b!249032))

(assert (= (and b!249027 (not c!47374)) b!249030))

(assert (= (and b!249030 res!115444) b!249026))

(assert (= (and b!249030 c!47375) b!249031))

(assert (= (and b!249030 (not c!47375)) b!249033))

(assert (= (or b!249031 b!249033) bm!13118))

(assert (= (or b!249031 b!249033) bm!13114))

(assert (= (or b!249032 b!249026 bm!13118) bm!13117))

(assert (= (or b!249032 bm!13114) bm!13116))

(assert (= (or b!249032 b!249031) bm!13115))

(assert (= (and bm!13115 c!47372) b!249025))

(assert (= (and bm!13115 (not c!47372)) b!249034))

(assert (=> bm!13117 m!304249))

(declare-fun m!304985 () Bool)

(assert (=> bm!13117 m!304985))

(declare-fun m!304987 () Bool)

(assert (=> b!249033 m!304987))

(declare-fun m!304989 () Bool)

(assert (=> b!249033 m!304989))

(declare-fun m!304991 () Bool)

(assert (=> b!249033 m!304991))

(assert (=> b!249033 m!304991))

(declare-fun m!304993 () Bool)

(assert (=> b!249033 m!304993))

(declare-fun m!304995 () Bool)

(assert (=> b!249033 m!304995))

(assert (=> b!249033 m!304987))

(declare-fun m!304997 () Bool)

(assert (=> b!249033 m!304997))

(assert (=> b!249033 m!304993))

(assert (=> b!249033 m!304987))

(declare-fun m!304999 () Bool)

(assert (=> bm!13116 m!304999))

(declare-fun m!305001 () Bool)

(assert (=> bm!13115 m!305001))

(assert (=> b!249028 m!304249))

(declare-fun m!305003 () Bool)

(assert (=> b!249028 m!305003))

(declare-fun m!305005 () Bool)

(assert (=> d!70011 m!305005))

(declare-fun m!305007 () Bool)

(assert (=> d!70011 m!305007))

(assert (=> d!70011 m!304249))

(assert (=> d!70011 m!305005))

(declare-fun m!305009 () Bool)

(assert (=> d!70011 m!305009))

(declare-fun m!305011 () Bool)

(assert (=> d!70011 m!305011))

(assert (=> d!70011 m!305005))

(declare-fun m!305013 () Bool)

(assert (=> d!70011 m!305013))

(assert (=> d!70011 m!304249))

(assert (=> d!70011 m!305011))

(assert (=> d!70011 m!304249))

(assert (=> d!70011 m!305003))

(declare-fun m!305015 () Bool)

(assert (=> b!249034 m!305015))

(assert (=> b!249027 m!305011))

(assert (=> b!249027 m!304985))

(declare-fun m!305017 () Bool)

(assert (=> b!249027 m!305017))

(assert (=> b!249027 m!304985))

(declare-fun m!305019 () Bool)

(assert (=> b!249027 m!305019))

(assert (=> b!249027 m!305019))

(declare-fun m!305021 () Bool)

(assert (=> b!249027 m!305021))

(declare-fun m!305023 () Bool)

(assert (=> b!249027 m!305023))

(declare-fun m!305025 () Bool)

(assert (=> b!249027 m!305025))

(assert (=> b!249027 m!304249))

(assert (=> b!249027 m!305011))

(assert (=> b!249027 m!304249))

(declare-fun m!305027 () Bool)

(assert (=> b!249027 m!305027))

(declare-fun m!305029 () Bool)

(assert (=> b!249027 m!305029))

(declare-fun m!305031 () Bool)

(assert (=> b!249027 m!305031))

(assert (=> b!249027 m!305021))

(declare-fun m!305033 () Bool)

(assert (=> b!249027 m!305033))

(declare-fun m!305035 () Bool)

(assert (=> b!249027 m!305035))

(assert (=> b!249027 m!305023))

(assert (=> b!249027 m!304249))

(assert (=> b!249027 m!304985))

(assert (=> b!249027 m!305031))

(declare-fun m!305043 () Bool)

(assert (=> b!249027 m!305043))

(declare-fun m!305045 () Bool)

(assert (=> b!249027 m!305045))

(declare-fun m!305049 () Bool)

(assert (=> b!249027 m!305049))

(declare-fun m!305051 () Bool)

(assert (=> b!249031 m!305051))

(assert (=> b!249035 m!304249))

(assert (=> b!249035 m!304985))

(assert (=> b!248503 d!70011))

(declare-fun d!70027 () Bool)

(assert (=> d!70027 (= (list!1448 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 lt!101100 separatorToken!170 0)) (list!1452 (c!47272 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 lt!101100 separatorToken!170 0))))))

(declare-fun bs!26673 () Bool)

(assert (= bs!26673 d!70027))

(declare-fun m!305067 () Bool)

(assert (=> bs!26673 m!305067))

(assert (=> b!248524 d!70027))

(declare-fun bs!26674 () Bool)

(declare-fun d!70029 () Bool)

(assert (= bs!26674 (and d!70029 b!248949)))

(declare-fun lambda!8226 () Int)

(assert (=> bs!26674 (not (= lambda!8226 lambda!8216))))

(declare-fun bs!26675 () Bool)

(assert (= bs!26675 (and d!70029 b!248508)))

(assert (=> bs!26675 (not (= lambda!8226 lambda!8210))))

(declare-fun bs!26676 () Bool)

(assert (= bs!26676 (and d!70029 b!248521)))

(assert (=> bs!26676 (= lambda!8226 lambda!8209)))

(declare-fun bs!26677 () Bool)

(assert (= bs!26677 (and d!70029 d!70011)))

(assert (=> bs!26677 (= lambda!8226 lambda!8223)))

(declare-fun bs!26678 () Bool)

(assert (= bs!26678 (and d!70029 b!249027)))

(assert (=> bs!26678 (not (= lambda!8226 lambda!8224))))

(declare-fun bs!26679 () Bool)

(declare-fun b!249054 () Bool)

(assert (= bs!26679 (and b!249054 b!248949)))

(declare-fun lambda!8227 () Int)

(assert (=> bs!26679 (= lambda!8227 lambda!8216)))

(declare-fun bs!26680 () Bool)

(assert (= bs!26680 (and b!249054 b!248508)))

(assert (=> bs!26680 (= lambda!8227 lambda!8210)))

(declare-fun bs!26681 () Bool)

(assert (= bs!26681 (and b!249054 d!70029)))

(assert (=> bs!26681 (not (= lambda!8227 lambda!8226))))

(declare-fun bs!26682 () Bool)

(assert (= bs!26682 (and b!249054 b!248521)))

(assert (=> bs!26682 (not (= lambda!8227 lambda!8209))))

(declare-fun bs!26683 () Bool)

(assert (= bs!26683 (and b!249054 d!70011)))

(assert (=> bs!26683 (not (= lambda!8227 lambda!8223))))

(declare-fun bs!26684 () Bool)

(assert (= bs!26684 (and b!249054 b!249027)))

(assert (=> bs!26684 (= lambda!8227 lambda!8224)))

(declare-fun b!249069 () Bool)

(declare-fun e!154656 () Bool)

(assert (=> b!249069 (= e!154656 true)))

(declare-fun b!249068 () Bool)

(declare-fun e!154655 () Bool)

(assert (=> b!249068 (= e!154655 e!154656)))

(declare-fun b!249067 () Bool)

(declare-fun e!154654 () Bool)

(assert (=> b!249067 (= e!154654 e!154655)))

(assert (=> b!249054 e!154654))

(assert (= b!249068 b!249069))

(assert (= b!249067 b!249068))

(assert (= (and b!249054 ((_ is Cons!3661) rules!1920)) b!249067))

(assert (=> b!249069 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8227))))

(assert (=> b!249069 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8227))))

(assert (=> b!249054 true))

(declare-fun b!249052 () Bool)

(declare-fun e!154649 () BalanceConc!2432)

(declare-fun call!13129 () BalanceConc!2432)

(assert (=> b!249052 (= e!154649 call!13129)))

(declare-fun b!249053 () Bool)

(declare-fun e!154651 () Bool)

(declare-fun lt!101379 () Option!753)

(declare-fun call!13131 () Token!1134)

(assert (=> b!249053 (= e!154651 (not (= (_1!2260 (v!14525 lt!101379)) call!13131)))))

(declare-fun bm!13124 () Bool)

(declare-fun call!13132 () BalanceConc!2432)

(assert (=> bm!13124 (= call!13132 call!13129)))

(declare-fun bm!13125 () Bool)

(declare-fun c!47381 () Bool)

(declare-fun c!47383 () Bool)

(assert (=> bm!13125 (= c!47381 c!47383)))

(declare-fun call!13130 () BalanceConc!2432)

(declare-fun lt!101383 () BalanceConc!2432)

(assert (=> bm!13125 (= call!13130 (++!938 e!154649 (ite c!47383 lt!101383 call!13132)))))

(declare-fun bm!13126 () Bool)

(declare-fun c!47384 () Bool)

(declare-fun call!13133 () Token!1134)

(assert (=> bm!13126 (= call!13129 (charsOf!350 (ite c!47383 call!13131 (ite c!47384 separatorToken!170 call!13133))))))

(declare-fun e!154648 () BalanceConc!2432)

(declare-fun e!154650 () BalanceConc!2432)

(assert (=> b!249054 (= e!154648 e!154650)))

(declare-fun lt!101378 () List!3672)

(assert (=> b!249054 (= lt!101378 (list!1449 lt!101100))))

(declare-fun lt!101380 () Unit!4444)

(assert (=> b!249054 (= lt!101380 (lemmaDropApply!184 lt!101378 0))))

(assert (=> b!249054 (= (head!858 (drop!197 lt!101378 0)) (apply!692 lt!101378 0))))

(declare-fun lt!101382 () Unit!4444)

(assert (=> b!249054 (= lt!101382 lt!101380)))

(declare-fun lt!101385 () List!3672)

(assert (=> b!249054 (= lt!101385 (list!1449 lt!101100))))

(declare-fun lt!101384 () Unit!4444)

(assert (=> b!249054 (= lt!101384 (lemmaDropTail!176 lt!101385 0))))

(assert (=> b!249054 (= (tail!454 (drop!197 lt!101385 0)) (drop!197 lt!101385 (+ 0 1)))))

(declare-fun lt!101373 () Unit!4444)

(assert (=> b!249054 (= lt!101373 lt!101384)))

(declare-fun lt!101381 () Unit!4444)

(assert (=> b!249054 (= lt!101381 (forallContained!262 (list!1449 lt!101100) lambda!8227 (apply!691 lt!101100 0)))))

(assert (=> b!249054 (= lt!101383 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 lt!101100 separatorToken!170 (+ 0 1)))))

(assert (=> b!249054 (= lt!101379 (maxPrefixZipperSequence!274 thiss!17480 rules!1920 (++!938 (charsOf!350 (apply!691 lt!101100 0)) lt!101383)))))

(declare-fun res!115445 () Bool)

(assert (=> b!249054 (= res!115445 ((_ is Some!752) lt!101379))))

(declare-fun e!154647 () Bool)

(assert (=> b!249054 (=> (not res!115445) (not e!154647))))

(assert (=> b!249054 (= c!47383 e!154647)))

(declare-fun b!249055 () Bool)

(declare-fun e!154646 () Bool)

(assert (=> b!249055 (= e!154646 (<= 0 (size!2895 lt!101100)))))

(declare-fun bm!13127 () Bool)

(assert (=> bm!13127 (= call!13131 (apply!691 lt!101100 0))))

(declare-fun b!249056 () Bool)

(assert (=> b!249056 (= e!154648 (BalanceConc!2433 Empty!1212))))

(declare-fun b!249057 () Bool)

(assert (=> b!249057 (= c!47384 e!154651)))

(declare-fun res!115447 () Bool)

(assert (=> b!249057 (=> (not res!115447) (not e!154651))))

(assert (=> b!249057 (= res!115447 ((_ is Some!752) lt!101379))))

(declare-fun e!154645 () BalanceConc!2432)

(assert (=> b!249057 (= e!154650 e!154645)))

(declare-fun b!249058 () Bool)

(assert (=> b!249058 (= e!154645 (++!938 call!13130 lt!101383))))

(declare-fun bm!13128 () Bool)

(assert (=> bm!13128 (= call!13133 call!13131)))

(declare-fun b!249059 () Bool)

(assert (=> b!249059 (= e!154650 call!13130)))

(declare-fun b!249060 () Bool)

(assert (=> b!249060 (= e!154645 (BalanceConc!2433 Empty!1212))))

(assert (=> b!249060 (= (print!312 thiss!17480 (singletonSeq!247 call!13133)) (printTailRec!275 thiss!17480 (singletonSeq!247 call!13133) 0 (BalanceConc!2433 Empty!1212)))))

(declare-fun lt!101372 () Unit!4444)

(declare-fun Unit!4458 () Unit!4444)

(assert (=> b!249060 (= lt!101372 Unit!4458)))

(declare-fun lt!101376 () Unit!4444)

(assert (=> b!249060 (= lt!101376 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!92 thiss!17480 rules!1920 (list!1448 call!13132) (list!1448 lt!101383)))))

(assert (=> b!249060 false))

(declare-fun lt!101374 () Unit!4444)

(declare-fun Unit!4459 () Unit!4444)

(assert (=> b!249060 (= lt!101374 Unit!4459)))

(declare-fun lt!101377 () BalanceConc!2432)

(assert (=> d!70029 (= (list!1448 lt!101377) (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 (dropList!144 lt!101100 0) separatorToken!170))))

(assert (=> d!70029 (= lt!101377 e!154648)))

(declare-fun c!47382 () Bool)

(assert (=> d!70029 (= c!47382 (>= 0 (size!2895 lt!101100)))))

(declare-fun lt!101375 () Unit!4444)

(assert (=> d!70029 (= lt!101375 (lemmaContentSubsetPreservesForall!88 (list!1449 lt!101100) (dropList!144 lt!101100 0) lambda!8226))))

(assert (=> d!70029 e!154646))

(declare-fun res!115446 () Bool)

(assert (=> d!70029 (=> (not res!115446) (not e!154646))))

(assert (=> d!70029 (= res!115446 (>= 0 0))))

(assert (=> d!70029 (= (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 lt!101100 separatorToken!170 0) lt!101377)))

(declare-fun b!249061 () Bool)

(assert (=> b!249061 (= e!154649 (charsOf!350 call!13133))))

(declare-fun b!249062 () Bool)

(assert (=> b!249062 (= e!154647 (= (_1!2260 (v!14525 lt!101379)) (apply!691 lt!101100 0)))))

(assert (= (and d!70029 res!115446) b!249055))

(assert (= (and d!70029 c!47382) b!249056))

(assert (= (and d!70029 (not c!47382)) b!249054))

(assert (= (and b!249054 res!115445) b!249062))

(assert (= (and b!249054 c!47383) b!249059))

(assert (= (and b!249054 (not c!47383)) b!249057))

(assert (= (and b!249057 res!115447) b!249053))

(assert (= (and b!249057 c!47384) b!249058))

(assert (= (and b!249057 (not c!47384)) b!249060))

(assert (= (or b!249058 b!249060) bm!13128))

(assert (= (or b!249058 b!249060) bm!13124))

(assert (= (or b!249059 b!249053 bm!13128) bm!13127))

(assert (= (or b!249059 bm!13124) bm!13126))

(assert (= (or b!249059 b!249058) bm!13125))

(assert (= (and bm!13125 c!47381) b!249052))

(assert (= (and bm!13125 (not c!47381)) b!249061))

(declare-fun m!305085 () Bool)

(assert (=> bm!13127 m!305085))

(declare-fun m!305087 () Bool)

(assert (=> b!249060 m!305087))

(declare-fun m!305089 () Bool)

(assert (=> b!249060 m!305089))

(declare-fun m!305091 () Bool)

(assert (=> b!249060 m!305091))

(assert (=> b!249060 m!305091))

(declare-fun m!305093 () Bool)

(assert (=> b!249060 m!305093))

(declare-fun m!305095 () Bool)

(assert (=> b!249060 m!305095))

(assert (=> b!249060 m!305087))

(declare-fun m!305097 () Bool)

(assert (=> b!249060 m!305097))

(assert (=> b!249060 m!305093))

(assert (=> b!249060 m!305087))

(declare-fun m!305099 () Bool)

(assert (=> bm!13126 m!305099))

(declare-fun m!305101 () Bool)

(assert (=> bm!13125 m!305101))

(assert (=> b!249055 m!304191))

(declare-fun m!305103 () Bool)

(assert (=> d!70029 m!305103))

(declare-fun m!305105 () Bool)

(assert (=> d!70029 m!305105))

(assert (=> d!70029 m!305103))

(declare-fun m!305107 () Bool)

(assert (=> d!70029 m!305107))

(assert (=> d!70029 m!304523))

(assert (=> d!70029 m!305103))

(declare-fun m!305109 () Bool)

(assert (=> d!70029 m!305109))

(assert (=> d!70029 m!304523))

(assert (=> d!70029 m!304191))

(declare-fun m!305111 () Bool)

(assert (=> b!249061 m!305111))

(assert (=> b!249054 m!304523))

(assert (=> b!249054 m!305085))

(declare-fun m!305113 () Bool)

(assert (=> b!249054 m!305113))

(assert (=> b!249054 m!305085))

(declare-fun m!305115 () Bool)

(assert (=> b!249054 m!305115))

(assert (=> b!249054 m!305115))

(declare-fun m!305117 () Bool)

(assert (=> b!249054 m!305117))

(declare-fun m!305119 () Bool)

(assert (=> b!249054 m!305119))

(declare-fun m!305121 () Bool)

(assert (=> b!249054 m!305121))

(assert (=> b!249054 m!304523))

(declare-fun m!305123 () Bool)

(assert (=> b!249054 m!305123))

(declare-fun m!305125 () Bool)

(assert (=> b!249054 m!305125))

(declare-fun m!305127 () Bool)

(assert (=> b!249054 m!305127))

(assert (=> b!249054 m!305117))

(declare-fun m!305129 () Bool)

(assert (=> b!249054 m!305129))

(declare-fun m!305131 () Bool)

(assert (=> b!249054 m!305131))

(assert (=> b!249054 m!305119))

(assert (=> b!249054 m!305085))

(assert (=> b!249054 m!305127))

(declare-fun m!305133 () Bool)

(assert (=> b!249054 m!305133))

(declare-fun m!305135 () Bool)

(assert (=> b!249054 m!305135))

(declare-fun m!305137 () Bool)

(assert (=> b!249054 m!305137))

(declare-fun m!305139 () Bool)

(assert (=> b!249058 m!305139))

(assert (=> b!249062 m!305085))

(assert (=> b!248524 d!70029))

(declare-fun bs!26685 () Bool)

(declare-fun b!249073 () Bool)

(assert (= bs!26685 (and b!249073 b!248949)))

(declare-fun lambda!8228 () Int)

(assert (=> bs!26685 (= lambda!8228 lambda!8216)))

(declare-fun bs!26686 () Bool)

(assert (= bs!26686 (and b!249073 b!248508)))

(assert (=> bs!26686 (= lambda!8228 lambda!8210)))

(declare-fun bs!26687 () Bool)

(assert (= bs!26687 (and b!249073 b!249054)))

(assert (=> bs!26687 (= lambda!8228 lambda!8227)))

(declare-fun bs!26688 () Bool)

(assert (= bs!26688 (and b!249073 d!70029)))

(assert (=> bs!26688 (not (= lambda!8228 lambda!8226))))

(declare-fun bs!26689 () Bool)

(assert (= bs!26689 (and b!249073 b!248521)))

(assert (=> bs!26689 (not (= lambda!8228 lambda!8209))))

(declare-fun bs!26690 () Bool)

(assert (= bs!26690 (and b!249073 d!70011)))

(assert (=> bs!26690 (not (= lambda!8228 lambda!8223))))

(declare-fun bs!26691 () Bool)

(assert (= bs!26691 (and b!249073 b!249027)))

(assert (=> bs!26691 (= lambda!8228 lambda!8224)))

(declare-fun b!249080 () Bool)

(declare-fun e!154663 () Bool)

(assert (=> b!249080 (= e!154663 true)))

(declare-fun b!249079 () Bool)

(declare-fun e!154662 () Bool)

(assert (=> b!249079 (= e!154662 e!154663)))

(declare-fun b!249078 () Bool)

(declare-fun e!154661 () Bool)

(assert (=> b!249078 (= e!154661 e!154662)))

(assert (=> b!249073 e!154661))

(assert (= b!249079 b!249080))

(assert (= b!249078 b!249079))

(assert (= (and b!249073 ((_ is Cons!3661) rules!1920)) b!249078))

(assert (=> b!249080 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8228))))

(assert (=> b!249080 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8228))))

(assert (=> b!249073 true))

(declare-fun d!70035 () Bool)

(declare-fun c!47389 () Bool)

(assert (=> d!70035 (= c!47389 ((_ is Cons!3662) tokens!465))))

(declare-fun e!154659 () List!3670)

(assert (=> d!70035 (= (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!154659)))

(declare-fun c!47387 () Bool)

(declare-fun call!13135 () BalanceConc!2432)

(declare-fun bm!13129 () Bool)

(declare-fun call!13136 () BalanceConc!2432)

(declare-fun call!13134 () List!3670)

(assert (=> bm!13129 (= call!13134 (list!1448 (ite c!47387 call!13135 call!13136)))))

(declare-fun call!13138 () List!3670)

(declare-fun lt!101392 () List!3670)

(declare-fun bm!13130 () Bool)

(declare-fun call!13137 () List!3670)

(assert (=> bm!13130 (= call!13137 (++!936 call!13134 (ite c!47387 lt!101392 call!13138)))))

(declare-fun b!249070 () Bool)

(declare-fun e!154660 () BalanceConc!2432)

(assert (=> b!249070 (= e!154660 (charsOf!350 separatorToken!170))))

(declare-fun b!249071 () Bool)

(declare-fun e!154657 () List!3670)

(assert (=> b!249071 (= e!154657 (++!936 call!13137 lt!101392))))

(declare-fun bm!13131 () Bool)

(assert (=> bm!13131 (= call!13135 (charsOf!350 (h!9059 tokens!465)))))

(declare-fun bm!13132 () Bool)

(assert (=> bm!13132 (= call!13138 (list!1448 e!154660))))

(declare-fun c!47388 () Bool)

(declare-fun c!47386 () Bool)

(assert (=> bm!13132 (= c!47388 c!47386)))

(declare-fun b!249072 () Bool)

(declare-fun lt!101390 () Option!752)

(assert (=> b!249072 (= c!47386 (and ((_ is Some!751) lt!101390) (not (= (_1!2259 (v!14524 lt!101390)) (h!9059 tokens!465)))))))

(declare-fun e!154658 () List!3670)

(assert (=> b!249072 (= e!154658 e!154657)))

(declare-fun bm!13133 () Bool)

(assert (=> bm!13133 (= call!13136 call!13135)))

(assert (=> b!249073 (= e!154659 e!154658)))

(declare-fun lt!101388 () Unit!4444)

(assert (=> b!249073 (= lt!101388 (forallContained!262 tokens!465 lambda!8228 (h!9059 tokens!465)))))

(assert (=> b!249073 (= lt!101392 (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 (t!35304 tokens!465) separatorToken!170))))

(assert (=> b!249073 (= lt!101390 (maxPrefix!311 thiss!17480 rules!1920 (++!936 (list!1448 (charsOf!350 (h!9059 tokens!465))) lt!101392)))))

(assert (=> b!249073 (= c!47387 (and ((_ is Some!751) lt!101390) (= (_1!2259 (v!14524 lt!101390)) (h!9059 tokens!465))))))

(declare-fun b!249074 () Bool)

(assert (=> b!249074 (= e!154660 call!13136)))

(declare-fun b!249075 () Bool)

(assert (=> b!249075 (= e!154657 Nil!3660)))

(assert (=> b!249075 (= (print!312 thiss!17480 (singletonSeq!247 (h!9059 tokens!465))) (printTailRec!275 thiss!17480 (singletonSeq!247 (h!9059 tokens!465)) 0 (BalanceConc!2433 Empty!1212)))))

(declare-fun lt!101387 () Unit!4444)

(declare-fun Unit!4460 () Unit!4444)

(assert (=> b!249075 (= lt!101387 Unit!4460)))

(declare-fun lt!101391 () Unit!4444)

(assert (=> b!249075 (= lt!101391 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!92 thiss!17480 rules!1920 call!13138 lt!101392))))

(assert (=> b!249075 false))

(declare-fun lt!101389 () Unit!4444)

(declare-fun Unit!4461 () Unit!4444)

(assert (=> b!249075 (= lt!101389 Unit!4461)))

(declare-fun b!249076 () Bool)

(assert (=> b!249076 (= e!154658 call!13137)))

(declare-fun b!249077 () Bool)

(assert (=> b!249077 (= e!154659 Nil!3660)))

(assert (= (and d!70035 c!47389) b!249073))

(assert (= (and d!70035 (not c!47389)) b!249077))

(assert (= (and b!249073 c!47387) b!249076))

(assert (= (and b!249073 (not c!47387)) b!249072))

(assert (= (and b!249072 c!47386) b!249071))

(assert (= (and b!249072 (not c!47386)) b!249075))

(assert (= (or b!249071 b!249075) bm!13133))

(assert (= (or b!249071 b!249075) bm!13132))

(assert (= (and bm!13132 c!47388) b!249070))

(assert (= (and bm!13132 (not c!47388)) b!249074))

(assert (= (or b!249076 bm!13133) bm!13131))

(assert (= (or b!249076 b!249071) bm!13129))

(assert (= (or b!249076 b!249071) bm!13130))

(assert (=> b!249075 m!304285))

(assert (=> b!249075 m!304285))

(assert (=> b!249075 m!304667))

(assert (=> b!249075 m!304285))

(declare-fun m!305141 () Bool)

(assert (=> b!249075 m!305141))

(declare-fun m!305143 () Bool)

(assert (=> b!249075 m!305143))

(assert (=> bm!13131 m!304263))

(assert (=> b!249073 m!304263))

(assert (=> b!249073 m!304269))

(declare-fun m!305145 () Bool)

(assert (=> b!249073 m!305145))

(assert (=> b!249073 m!304253))

(declare-fun m!305147 () Bool)

(assert (=> b!249073 m!305147))

(declare-fun m!305149 () Bool)

(assert (=> b!249073 m!305149))

(assert (=> b!249073 m!304263))

(assert (=> b!249073 m!304269))

(assert (=> b!249073 m!305147))

(declare-fun m!305151 () Bool)

(assert (=> bm!13130 m!305151))

(declare-fun m!305153 () Bool)

(assert (=> bm!13132 m!305153))

(assert (=> b!249070 m!304257))

(declare-fun m!305155 () Bool)

(assert (=> bm!13129 m!305155))

(declare-fun m!305157 () Bool)

(assert (=> b!249071 m!305157))

(assert (=> b!248524 d!70035))

(declare-fun d!70037 () Bool)

(declare-fun res!115452 () Bool)

(declare-fun e!154666 () Bool)

(assert (=> d!70037 (=> (not res!115452) (not e!154666))))

(declare-fun rulesValid!201 (LexerInterface!581 List!3671) Bool)

(assert (=> d!70037 (= res!115452 (rulesValid!201 thiss!17480 rules!1920))))

(assert (=> d!70037 (= (rulesInvariant!547 thiss!17480 rules!1920) e!154666)))

(declare-fun b!249083 () Bool)

(declare-datatypes ((List!3674 0))(
  ( (Nil!3664) (Cons!3664 (h!9061 String!4665) (t!35370 List!3674)) )
))
(declare-fun noDuplicateTag!201 (LexerInterface!581 List!3671 List!3674) Bool)

(assert (=> b!249083 (= e!154666 (noDuplicateTag!201 thiss!17480 rules!1920 Nil!3664))))

(assert (= (and d!70037 res!115452) b!249083))

(declare-fun m!305159 () Bool)

(assert (=> d!70037 m!305159))

(declare-fun m!305161 () Bool)

(assert (=> b!249083 m!305161))

(assert (=> b!248502 d!70037))

(declare-fun b!249086 () Bool)

(declare-fun res!115453 () Bool)

(declare-fun e!154668 () Bool)

(assert (=> b!249086 (=> (not res!115453) (not e!154668))))

(declare-fun lt!101393 () List!3670)

(assert (=> b!249086 (= res!115453 (= (size!2898 lt!101393) (+ (size!2898 lt!101091) (size!2898 lt!101106))))))

(declare-fun d!70039 () Bool)

(assert (=> d!70039 e!154668))

(declare-fun res!115454 () Bool)

(assert (=> d!70039 (=> (not res!115454) (not e!154668))))

(assert (=> d!70039 (= res!115454 (= (content!509 lt!101393) ((_ map or) (content!509 lt!101091) (content!509 lt!101106))))))

(declare-fun e!154667 () List!3670)

(assert (=> d!70039 (= lt!101393 e!154667)))

(declare-fun c!47390 () Bool)

(assert (=> d!70039 (= c!47390 ((_ is Nil!3660) lt!101091))))

(assert (=> d!70039 (= (++!936 lt!101091 lt!101106) lt!101393)))

(declare-fun b!249087 () Bool)

(assert (=> b!249087 (= e!154668 (or (not (= lt!101106 Nil!3660)) (= lt!101393 lt!101091)))))

(declare-fun b!249085 () Bool)

(assert (=> b!249085 (= e!154667 (Cons!3660 (h!9057 lt!101091) (++!936 (t!35302 lt!101091) lt!101106)))))

(declare-fun b!249084 () Bool)

(assert (=> b!249084 (= e!154667 lt!101106)))

(assert (= (and d!70039 c!47390) b!249084))

(assert (= (and d!70039 (not c!47390)) b!249085))

(assert (= (and d!70039 res!115454) b!249086))

(assert (= (and b!249086 res!115453) b!249087))

(declare-fun m!305163 () Bool)

(assert (=> b!249086 m!305163))

(assert (=> b!249086 m!304507))

(assert (=> b!249086 m!304771))

(declare-fun m!305165 () Bool)

(assert (=> d!70039 m!305165))

(assert (=> d!70039 m!304513))

(assert (=> d!70039 m!304777))

(declare-fun m!305167 () Bool)

(assert (=> b!249085 m!305167))

(assert (=> b!248523 d!70039))

(declare-fun b!249088 () Bool)

(declare-fun e!154670 () Bool)

(assert (=> b!249088 (= e!154670 (inv!16 (value!24123 separatorToken!170)))))

(declare-fun b!249089 () Bool)

(declare-fun e!154669 () Bool)

(assert (=> b!249089 (= e!154669 (inv!17 (value!24123 separatorToken!170)))))

(declare-fun b!249090 () Bool)

(declare-fun e!154671 () Bool)

(assert (=> b!249090 (= e!154671 (inv!15 (value!24123 separatorToken!170)))))

(declare-fun b!249091 () Bool)

(declare-fun res!115455 () Bool)

(assert (=> b!249091 (=> res!115455 e!154671)))

(assert (=> b!249091 (= res!115455 (not ((_ is IntegerValue!2153) (value!24123 separatorToken!170))))))

(assert (=> b!249091 (= e!154669 e!154671)))

(declare-fun b!249092 () Bool)

(assert (=> b!249092 (= e!154670 e!154669)))

(declare-fun c!47392 () Bool)

(assert (=> b!249092 (= c!47392 ((_ is IntegerValue!2152) (value!24123 separatorToken!170)))))

(declare-fun d!70041 () Bool)

(declare-fun c!47391 () Bool)

(assert (=> d!70041 (= c!47391 ((_ is IntegerValue!2151) (value!24123 separatorToken!170)))))

(assert (=> d!70041 (= (inv!21 (value!24123 separatorToken!170)) e!154670)))

(assert (= (and d!70041 c!47391) b!249088))

(assert (= (and d!70041 (not c!47391)) b!249092))

(assert (= (and b!249092 c!47392) b!249089))

(assert (= (and b!249092 (not c!47392)) b!249091))

(assert (= (and b!249091 (not res!115455)) b!249090))

(declare-fun m!305169 () Bool)

(assert (=> b!249088 m!305169))

(declare-fun m!305171 () Bool)

(assert (=> b!249089 m!305171))

(declare-fun m!305173 () Bool)

(assert (=> b!249090 m!305173))

(assert (=> b!248501 d!70041))

(declare-fun bs!26692 () Bool)

(declare-fun d!70043 () Bool)

(assert (= bs!26692 (and d!70043 b!249073)))

(declare-fun lambda!8233 () Int)

(assert (=> bs!26692 (= lambda!8233 lambda!8228)))

(declare-fun bs!26693 () Bool)

(assert (= bs!26693 (and d!70043 b!248949)))

(assert (=> bs!26693 (= lambda!8233 lambda!8216)))

(declare-fun bs!26694 () Bool)

(assert (= bs!26694 (and d!70043 b!248508)))

(assert (=> bs!26694 (= lambda!8233 lambda!8210)))

(declare-fun bs!26695 () Bool)

(assert (= bs!26695 (and d!70043 b!249054)))

(assert (=> bs!26695 (= lambda!8233 lambda!8227)))

(declare-fun bs!26696 () Bool)

(assert (= bs!26696 (and d!70043 d!70029)))

(assert (=> bs!26696 (not (= lambda!8233 lambda!8226))))

(declare-fun bs!26697 () Bool)

(assert (= bs!26697 (and d!70043 b!248521)))

(assert (=> bs!26697 (not (= lambda!8233 lambda!8209))))

(declare-fun bs!26698 () Bool)

(assert (= bs!26698 (and d!70043 d!70011)))

(assert (=> bs!26698 (not (= lambda!8233 lambda!8223))))

(declare-fun bs!26699 () Bool)

(assert (= bs!26699 (and d!70043 b!249027)))

(assert (=> bs!26699 (= lambda!8233 lambda!8224)))

(declare-fun b!249098 () Bool)

(declare-fun e!154677 () Bool)

(assert (=> b!249098 (= e!154677 true)))

(declare-fun b!249097 () Bool)

(declare-fun e!154676 () Bool)

(assert (=> b!249097 (= e!154676 e!154677)))

(declare-fun b!249096 () Bool)

(declare-fun e!154675 () Bool)

(assert (=> b!249096 (= e!154675 e!154676)))

(assert (=> d!70043 e!154675))

(assert (= b!249097 b!249098))

(assert (= b!249096 b!249097))

(assert (= (and d!70043 ((_ is Cons!3661) rules!1920)) b!249096))

(assert (=> b!249098 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8233))))

(assert (=> b!249098 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 rules!1920)))) (dynLambda!1792 order!2711 lambda!8233))))

(assert (=> d!70043 true))

(declare-fun e!154674 () Bool)

(assert (=> d!70043 e!154674))

(declare-fun res!115458 () Bool)

(assert (=> d!70043 (=> (not res!115458) (not e!154674))))

(declare-fun lt!101396 () Bool)

(assert (=> d!70043 (= res!115458 (= lt!101396 (forall!857 (list!1449 lt!101100) lambda!8233)))))

(declare-fun forall!859 (BalanceConc!2434 Int) Bool)

(assert (=> d!70043 (= lt!101396 (forall!859 lt!101100 lambda!8233))))

(assert (=> d!70043 (not (isEmpty!2256 rules!1920))))

(assert (=> d!70043 (= (rulesProduceEachTokenIndividually!373 thiss!17480 rules!1920 lt!101100) lt!101396)))

(declare-fun b!249095 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!205 (LexerInterface!581 List!3671 List!3672) Bool)

(assert (=> b!249095 (= e!154674 (= lt!101396 (rulesProduceEachTokenIndividuallyList!205 thiss!17480 rules!1920 (list!1449 lt!101100))))))

(assert (= (and d!70043 res!115458) b!249095))

(assert (=> d!70043 m!304523))

(assert (=> d!70043 m!304523))

(declare-fun m!305175 () Bool)

(assert (=> d!70043 m!305175))

(declare-fun m!305177 () Bool)

(assert (=> d!70043 m!305177))

(assert (=> d!70043 m!304215))

(assert (=> b!249095 m!304523))

(assert (=> b!249095 m!304523))

(declare-fun m!305179 () Bool)

(assert (=> b!249095 m!305179))

(assert (=> b!248522 d!70043))

(declare-fun d!70045 () Bool)

(assert (=> d!70045 (= (seqFromList!767 tokens!465) (fromListB!276 tokens!465))))

(declare-fun bs!26700 () Bool)

(assert (= bs!26700 d!70045))

(declare-fun m!305181 () Bool)

(assert (=> bs!26700 m!305181))

(assert (=> b!248522 d!70045))

(declare-fun d!70047 () Bool)

(declare-fun lt!101403 () BalanceConc!2432)

(assert (=> d!70047 (= (list!1448 lt!101403) (printList!265 thiss!17480 (list!1449 lt!101093)))))

(assert (=> d!70047 (= lt!101403 (printTailRec!275 thiss!17480 lt!101093 0 (BalanceConc!2433 Empty!1212)))))

(assert (=> d!70047 (= (print!312 thiss!17480 lt!101093) lt!101403)))

(declare-fun bs!26701 () Bool)

(assert (= bs!26701 d!70047))

(declare-fun m!305183 () Bool)

(assert (=> bs!26701 m!305183))

(declare-fun m!305185 () Bool)

(assert (=> bs!26701 m!305185))

(assert (=> bs!26701 m!305185))

(declare-fun m!305187 () Bool)

(assert (=> bs!26701 m!305187))

(assert (=> bs!26701 m!304281))

(assert (=> b!248500 d!70047))

(declare-fun d!70049 () Bool)

(declare-fun lt!101462 () BalanceConc!2432)

(declare-fun printListTailRec!112 (LexerInterface!581 List!3672 List!3670) List!3670)

(assert (=> d!70049 (= (list!1448 lt!101462) (printListTailRec!112 thiss!17480 (dropList!144 lt!101093 0) (list!1448 (BalanceConc!2433 Empty!1212))))))

(declare-fun e!154707 () BalanceConc!2432)

(assert (=> d!70049 (= lt!101462 e!154707)))

(declare-fun c!47407 () Bool)

(assert (=> d!70049 (= c!47407 (>= 0 (size!2895 lt!101093)))))

(declare-fun e!154706 () Bool)

(assert (=> d!70049 e!154706))

(declare-fun res!115470 () Bool)

(assert (=> d!70049 (=> (not res!115470) (not e!154706))))

(assert (=> d!70049 (= res!115470 (>= 0 0))))

(assert (=> d!70049 (= (printTailRec!275 thiss!17480 lt!101093 0 (BalanceConc!2433 Empty!1212)) lt!101462)))

(declare-fun b!249141 () Bool)

(assert (=> b!249141 (= e!154706 (<= 0 (size!2895 lt!101093)))))

(declare-fun b!249142 () Bool)

(assert (=> b!249142 (= e!154707 (BalanceConc!2433 Empty!1212))))

(declare-fun b!249143 () Bool)

(assert (=> b!249143 (= e!154707 (printTailRec!275 thiss!17480 lt!101093 (+ 0 1) (++!938 (BalanceConc!2433 Empty!1212) (charsOf!350 (apply!691 lt!101093 0)))))))

(declare-fun lt!101458 () List!3672)

(assert (=> b!249143 (= lt!101458 (list!1449 lt!101093))))

(declare-fun lt!101461 () Unit!4444)

(assert (=> b!249143 (= lt!101461 (lemmaDropApply!184 lt!101458 0))))

(assert (=> b!249143 (= (head!858 (drop!197 lt!101458 0)) (apply!692 lt!101458 0))))

(declare-fun lt!101457 () Unit!4444)

(assert (=> b!249143 (= lt!101457 lt!101461)))

(declare-fun lt!101459 () List!3672)

(assert (=> b!249143 (= lt!101459 (list!1449 lt!101093))))

(declare-fun lt!101460 () Unit!4444)

(assert (=> b!249143 (= lt!101460 (lemmaDropTail!176 lt!101459 0))))

(assert (=> b!249143 (= (tail!454 (drop!197 lt!101459 0)) (drop!197 lt!101459 (+ 0 1)))))

(declare-fun lt!101456 () Unit!4444)

(assert (=> b!249143 (= lt!101456 lt!101460)))

(assert (= (and d!70049 res!115470) b!249141))

(assert (= (and d!70049 c!47407) b!249142))

(assert (= (and d!70049 (not c!47407)) b!249143))

(declare-fun m!305237 () Bool)

(assert (=> d!70049 m!305237))

(declare-fun m!305241 () Bool)

(assert (=> d!70049 m!305241))

(declare-fun m!305243 () Bool)

(assert (=> d!70049 m!305243))

(declare-fun m!305247 () Bool)

(assert (=> d!70049 m!305247))

(assert (=> d!70049 m!305247))

(assert (=> d!70049 m!305241))

(declare-fun m!305253 () Bool)

(assert (=> d!70049 m!305253))

(assert (=> b!249141 m!305237))

(declare-fun m!305257 () Bool)

(assert (=> b!249143 m!305257))

(declare-fun m!305259 () Bool)

(assert (=> b!249143 m!305259))

(declare-fun m!305263 () Bool)

(assert (=> b!249143 m!305263))

(declare-fun m!305265 () Bool)

(assert (=> b!249143 m!305265))

(declare-fun m!305267 () Bool)

(assert (=> b!249143 m!305267))

(assert (=> b!249143 m!305265))

(declare-fun m!305269 () Bool)

(assert (=> b!249143 m!305269))

(declare-fun m!305271 () Bool)

(assert (=> b!249143 m!305271))

(declare-fun m!305273 () Bool)

(assert (=> b!249143 m!305273))

(declare-fun m!305275 () Bool)

(assert (=> b!249143 m!305275))

(assert (=> b!249143 m!305185))

(declare-fun m!305277 () Bool)

(assert (=> b!249143 m!305277))

(assert (=> b!249143 m!305269))

(declare-fun m!305279 () Bool)

(assert (=> b!249143 m!305279))

(assert (=> b!249143 m!305273))

(assert (=> b!249143 m!305263))

(assert (=> b!249143 m!305277))

(declare-fun m!305281 () Bool)

(assert (=> b!249143 m!305281))

(assert (=> b!248500 d!70049))

(declare-fun d!70053 () Bool)

(assert (=> d!70053 (= (list!1448 lt!101097) (list!1452 (c!47272 lt!101097)))))

(declare-fun bs!26711 () Bool)

(assert (= bs!26711 d!70053))

(declare-fun m!305283 () Bool)

(assert (=> bs!26711 m!305283))

(assert (=> b!248500 d!70053))

(declare-fun d!70055 () Bool)

(declare-fun e!154713 () Bool)

(assert (=> d!70055 e!154713))

(declare-fun res!115475 () Bool)

(assert (=> d!70055 (=> (not res!115475) (not e!154713))))

(declare-fun lt!101470 () BalanceConc!2434)

(assert (=> d!70055 (= res!115475 (= (list!1449 lt!101470) (Cons!3662 (h!9059 tokens!465) Nil!3662)))))

(declare-fun singleton!93 (Token!1134) BalanceConc!2434)

(assert (=> d!70055 (= lt!101470 (singleton!93 (h!9059 tokens!465)))))

(assert (=> d!70055 (= (singletonSeq!247 (h!9059 tokens!465)) lt!101470)))

(declare-fun b!249151 () Bool)

(declare-fun isBalanced!314 (Conc!1213) Bool)

(assert (=> b!249151 (= e!154713 (isBalanced!314 (c!47274 lt!101470)))))

(assert (= (and d!70055 res!115475) b!249151))

(declare-fun m!305299 () Bool)

(assert (=> d!70055 m!305299))

(declare-fun m!305303 () Bool)

(assert (=> d!70055 m!305303))

(declare-fun m!305307 () Bool)

(assert (=> b!249151 m!305307))

(assert (=> b!248500 d!70055))

(declare-fun d!70063 () Bool)

(declare-fun c!47412 () Bool)

(assert (=> d!70063 (= c!47412 ((_ is Cons!3662) (Cons!3662 (h!9059 tokens!465) Nil!3662)))))

(declare-fun e!154718 () List!3670)

(assert (=> d!70063 (= (printList!265 thiss!17480 (Cons!3662 (h!9059 tokens!465) Nil!3662)) e!154718)))

(declare-fun b!249160 () Bool)

(assert (=> b!249160 (= e!154718 (++!936 (list!1448 (charsOf!350 (h!9059 (Cons!3662 (h!9059 tokens!465) Nil!3662)))) (printList!265 thiss!17480 (t!35304 (Cons!3662 (h!9059 tokens!465) Nil!3662)))))))

(declare-fun b!249161 () Bool)

(assert (=> b!249161 (= e!154718 Nil!3660)))

(assert (= (and d!70063 c!47412) b!249160))

(assert (= (and d!70063 (not c!47412)) b!249161))

(declare-fun m!305323 () Bool)

(assert (=> b!249160 m!305323))

(assert (=> b!249160 m!305323))

(declare-fun m!305325 () Bool)

(assert (=> b!249160 m!305325))

(declare-fun m!305327 () Bool)

(assert (=> b!249160 m!305327))

(assert (=> b!249160 m!305325))

(assert (=> b!249160 m!305327))

(declare-fun m!305329 () Bool)

(assert (=> b!249160 m!305329))

(assert (=> b!248500 d!70063))

(declare-fun d!70073 () Bool)

(declare-fun res!115482 () Bool)

(declare-fun e!154723 () Bool)

(assert (=> d!70073 (=> res!115482 e!154723)))

(assert (=> d!70073 (= res!115482 ((_ is Nil!3662) tokens!465))))

(assert (=> d!70073 (= (forall!857 tokens!465 lambda!8209) e!154723)))

(declare-fun b!249166 () Bool)

(declare-fun e!154724 () Bool)

(assert (=> b!249166 (= e!154723 e!154724)))

(declare-fun res!115483 () Bool)

(assert (=> b!249166 (=> (not res!115483) (not e!154724))))

(assert (=> b!249166 (= res!115483 (dynLambda!1797 lambda!8209 (h!9059 tokens!465)))))

(declare-fun b!249167 () Bool)

(assert (=> b!249167 (= e!154724 (forall!857 (t!35304 tokens!465) lambda!8209))))

(assert (= (and d!70073 (not res!115482)) b!249166))

(assert (= (and b!249166 res!115483) b!249167))

(declare-fun b_lambda!7297 () Bool)

(assert (=> (not b_lambda!7297) (not b!249166)))

(declare-fun m!305335 () Bool)

(assert (=> b!249166 m!305335))

(declare-fun m!305337 () Bool)

(assert (=> b!249167 m!305337))

(assert (=> b!248521 d!70073))

(declare-fun bs!26740 () Bool)

(declare-fun d!70079 () Bool)

(assert (= bs!26740 (and d!70079 b!249073)))

(declare-fun lambda!8245 () Int)

(assert (=> bs!26740 (not (= lambda!8245 lambda!8228))))

(declare-fun bs!26741 () Bool)

(assert (= bs!26741 (and d!70079 b!248949)))

(assert (=> bs!26741 (not (= lambda!8245 lambda!8216))))

(declare-fun bs!26742 () Bool)

(assert (= bs!26742 (and d!70079 d!70043)))

(assert (=> bs!26742 (not (= lambda!8245 lambda!8233))))

(declare-fun bs!26743 () Bool)

(assert (= bs!26743 (and d!70079 b!248508)))

(assert (=> bs!26743 (not (= lambda!8245 lambda!8210))))

(declare-fun bs!26744 () Bool)

(assert (= bs!26744 (and d!70079 b!249054)))

(assert (=> bs!26744 (not (= lambda!8245 lambda!8227))))

(declare-fun bs!26745 () Bool)

(assert (= bs!26745 (and d!70079 d!70029)))

(assert (=> bs!26745 (= lambda!8245 lambda!8226)))

(declare-fun bs!26746 () Bool)

(assert (= bs!26746 (and d!70079 b!248521)))

(assert (=> bs!26746 (= lambda!8245 lambda!8209)))

(declare-fun bs!26747 () Bool)

(assert (= bs!26747 (and d!70079 d!70011)))

(assert (=> bs!26747 (= lambda!8245 lambda!8223)))

(declare-fun bs!26748 () Bool)

(assert (= bs!26748 (and d!70079 b!249027)))

(assert (=> bs!26748 (not (= lambda!8245 lambda!8224))))

(assert (=> d!70079 (= (filter!77 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!264 thiss!17480 rules!1920 (seqFromList!767 (t!35304 tokens!465)) separatorToken!170 0)))) lambda!8245) (t!35304 tokens!465))))

(declare-fun lt!101499 () Unit!4444)

(declare-fun choose!2348 (LexerInterface!581 List!3671 List!3672 Token!1134) Unit!4444)

(assert (=> d!70079 (= lt!101499 (choose!2348 thiss!17480 rules!1920 (t!35304 tokens!465) separatorToken!170))))

(assert (=> d!70079 (not (isEmpty!2256 rules!1920))))

(assert (=> d!70079 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!68 thiss!17480 rules!1920 (t!35304 tokens!465) separatorToken!170) lt!101499)))

(declare-fun bs!26749 () Bool)

(assert (= bs!26749 d!70079))

(declare-fun m!305447 () Bool)

(assert (=> bs!26749 m!305447))

(assert (=> bs!26749 m!305447))

(declare-fun m!305449 () Bool)

(assert (=> bs!26749 m!305449))

(assert (=> bs!26749 m!304249))

(assert (=> bs!26749 m!304261))

(assert (=> bs!26749 m!304249))

(assert (=> bs!26749 m!304261))

(declare-fun m!305451 () Bool)

(assert (=> bs!26749 m!305451))

(declare-fun m!305453 () Bool)

(assert (=> bs!26749 m!305453))

(assert (=> bs!26749 m!304215))

(assert (=> b!248520 d!70079))

(declare-fun d!70099 () Bool)

(declare-fun list!1453 (Conc!1213) List!3672)

(assert (=> d!70099 (= (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))) (list!1453 (c!47274 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088)))))))

(declare-fun bs!26750 () Bool)

(assert (= bs!26750 d!70099))

(declare-fun m!305455 () Bool)

(assert (=> bs!26750 m!305455))

(assert (=> b!248520 d!70099))

(assert (=> b!248520 d!70039))

(assert (=> b!248520 d!69905))

(declare-fun b!249203 () Bool)

(declare-fun e!154751 () Bool)

(declare-fun lt!101502 () tuple2!4090)

(assert (=> b!249203 (= e!154751 (= (_2!2261 lt!101502) lt!101088))))

(declare-fun b!249204 () Bool)

(declare-fun e!154750 () Bool)

(assert (=> b!249204 (= e!154750 (not (isEmpty!2255 (_1!2261 lt!101502))))))

(declare-fun b!249205 () Bool)

(assert (=> b!249205 (= e!154751 e!154750)))

(declare-fun res!115497 () Bool)

(assert (=> b!249205 (= res!115497 (< (size!2902 (_2!2261 lt!101502)) (size!2902 lt!101088)))))

(assert (=> b!249205 (=> (not res!115497) (not e!154750))))

(declare-fun d!70101 () Bool)

(declare-fun e!154749 () Bool)

(assert (=> d!70101 e!154749))

(declare-fun res!115495 () Bool)

(assert (=> d!70101 (=> (not res!115495) (not e!154749))))

(assert (=> d!70101 (= res!115495 e!154751)))

(declare-fun c!47422 () Bool)

(assert (=> d!70101 (= c!47422 (> (size!2895 (_1!2261 lt!101502)) 0))))

(assert (=> d!70101 (= lt!101502 (lexTailRecV2!156 thiss!17480 rules!1920 lt!101088 (BalanceConc!2433 Empty!1212) lt!101088 (BalanceConc!2435 Empty!1213)))))

(assert (=> d!70101 (= (lex!381 thiss!17480 rules!1920 lt!101088) lt!101502)))

(declare-fun b!249206 () Bool)

(assert (=> b!249206 (= e!154749 (= (list!1448 (_2!2261 lt!101502)) (_2!2263 (lexList!189 thiss!17480 rules!1920 (list!1448 lt!101088)))))))

(declare-fun b!249207 () Bool)

(declare-fun res!115496 () Bool)

(assert (=> b!249207 (=> (not res!115496) (not e!154749))))

(assert (=> b!249207 (= res!115496 (= (list!1449 (_1!2261 lt!101502)) (_1!2263 (lexList!189 thiss!17480 rules!1920 (list!1448 lt!101088)))))))

(assert (= (and d!70101 c!47422) b!249205))

(assert (= (and d!70101 (not c!47422)) b!249203))

(assert (= (and b!249205 res!115497) b!249204))

(assert (= (and d!70101 res!115495) b!249207))

(assert (= (and b!249207 res!115496) b!249206))

(declare-fun m!305457 () Bool)

(assert (=> b!249204 m!305457))

(declare-fun m!305459 () Bool)

(assert (=> b!249207 m!305459))

(assert (=> b!249207 m!304271))

(assert (=> b!249207 m!304271))

(declare-fun m!305461 () Bool)

(assert (=> b!249207 m!305461))

(declare-fun m!305463 () Bool)

(assert (=> b!249205 m!305463))

(declare-fun m!305465 () Bool)

(assert (=> b!249205 m!305465))

(declare-fun m!305467 () Bool)

(assert (=> d!70101 m!305467))

(declare-fun m!305469 () Bool)

(assert (=> d!70101 m!305469))

(declare-fun m!305471 () Bool)

(assert (=> b!249206 m!305471))

(assert (=> b!249206 m!304271))

(assert (=> b!249206 m!304271))

(assert (=> b!249206 m!305461))

(assert (=> b!248520 d!70101))

(declare-fun b!249223 () Bool)

(declare-fun res!115512 () Bool)

(declare-fun e!154765 () Bool)

(assert (=> b!249223 (=> (not res!115512) (not e!154765))))

(assert (=> b!249223 (= res!115512 (= (head!859 lt!101091) (head!859 lt!101112)))))

(declare-fun b!249224 () Bool)

(assert (=> b!249224 (= e!154765 (isPrefix!379 (tail!451 lt!101091) (tail!451 lt!101112)))))

(declare-fun d!70103 () Bool)

(declare-fun e!154766 () Bool)

(assert (=> d!70103 e!154766))

(declare-fun res!115510 () Bool)

(assert (=> d!70103 (=> res!115510 e!154766)))

(declare-fun lt!101506 () Bool)

(assert (=> d!70103 (= res!115510 (not lt!101506))))

(declare-fun e!154764 () Bool)

(assert (=> d!70103 (= lt!101506 e!154764)))

(declare-fun res!115509 () Bool)

(assert (=> d!70103 (=> res!115509 e!154764)))

(assert (=> d!70103 (= res!115509 ((_ is Nil!3660) lt!101091))))

(assert (=> d!70103 (= (isPrefix!379 lt!101091 lt!101112) lt!101506)))

(declare-fun b!249222 () Bool)

(assert (=> b!249222 (= e!154764 e!154765)))

(declare-fun res!115511 () Bool)

(assert (=> b!249222 (=> (not res!115511) (not e!154765))))

(assert (=> b!249222 (= res!115511 (not ((_ is Nil!3660) lt!101112)))))

(declare-fun b!249225 () Bool)

(assert (=> b!249225 (= e!154766 (>= (size!2898 lt!101112) (size!2898 lt!101091)))))

(assert (= (and d!70103 (not res!115509)) b!249222))

(assert (= (and b!249222 res!115511) b!249223))

(assert (= (and b!249223 res!115512) b!249224))

(assert (= (and d!70103 (not res!115510)) b!249225))

(assert (=> b!249223 m!304345))

(declare-fun m!305473 () Bool)

(assert (=> b!249223 m!305473))

(assert (=> b!249224 m!304353))

(declare-fun m!305475 () Bool)

(assert (=> b!249224 m!305475))

(assert (=> b!249224 m!304353))

(assert (=> b!249224 m!305475))

(declare-fun m!305477 () Bool)

(assert (=> b!249224 m!305477))

(declare-fun m!305479 () Bool)

(assert (=> b!249225 m!305479))

(assert (=> b!249225 m!304507))

(assert (=> b!248520 d!70103))

(declare-fun d!70105 () Bool)

(declare-fun e!154837 () Bool)

(assert (=> d!70105 e!154837))

(declare-fun res!115548 () Bool)

(assert (=> d!70105 (=> res!115548 e!154837)))

(assert (=> d!70105 (= res!115548 (isEmpty!2254 tokens!465))))

(declare-fun lt!101523 () Unit!4444)

(declare-fun choose!2349 (LexerInterface!581 List!3671 List!3672 Token!1134) Unit!4444)

(assert (=> d!70105 (= lt!101523 (choose!2349 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!70105 (not (isEmpty!2256 rules!1920))))

(assert (=> d!70105 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!150 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!101523)))

(declare-fun b!249337 () Bool)

(declare-fun e!154838 () Bool)

(assert (=> b!249337 (= e!154837 e!154838)))

(declare-fun res!115549 () Bool)

(assert (=> b!249337 (=> (not res!115549) (not e!154838))))

(assert (=> b!249337 (= res!115549 (isDefined!603 (maxPrefix!311 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!249338 () Bool)

(assert (=> b!249338 (= e!154838 (= (_1!2259 (get!1201 (maxPrefix!311 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!274 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!858 tokens!465)))))

(assert (= (and d!70105 (not res!115548)) b!249337))

(assert (= (and b!249337 res!115549) b!249338))

(assert (=> d!70105 m!304319))

(declare-fun m!305551 () Bool)

(assert (=> d!70105 m!305551))

(assert (=> d!70105 m!304215))

(assert (=> b!249337 m!304187))

(assert (=> b!249337 m!304187))

(declare-fun m!305553 () Bool)

(assert (=> b!249337 m!305553))

(assert (=> b!249337 m!305553))

(declare-fun m!305555 () Bool)

(assert (=> b!249337 m!305555))

(assert (=> b!249338 m!304187))

(assert (=> b!249338 m!304187))

(assert (=> b!249338 m!305553))

(assert (=> b!249338 m!305553))

(declare-fun m!305557 () Bool)

(assert (=> b!249338 m!305557))

(assert (=> b!249338 m!304201))

(assert (=> b!248520 d!70105))

(declare-fun d!70127 () Bool)

(assert (=> d!70127 (isPrefix!379 lt!101091 (++!936 lt!101091 lt!101106))))

(declare-fun lt!101526 () Unit!4444)

(declare-fun choose!2350 (List!3670 List!3670) Unit!4444)

(assert (=> d!70127 (= lt!101526 (choose!2350 lt!101091 lt!101106))))

(assert (=> d!70127 (= (lemmaConcatTwoListThenFirstIsPrefix!274 lt!101091 lt!101106) lt!101526)))

(declare-fun bs!26767 () Bool)

(assert (= bs!26767 d!70127))

(assert (=> bs!26767 m!304227))

(assert (=> bs!26767 m!304227))

(declare-fun m!305559 () Bool)

(assert (=> bs!26767 m!305559))

(declare-fun m!305561 () Bool)

(assert (=> bs!26767 m!305561))

(assert (=> b!248520 d!70127))

(declare-fun call!13170 () List!3672)

(declare-fun bm!13165 () Bool)

(assert (=> bm!13165 (= call!13170 (filter!77 (t!35304 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088)))) lambda!8209))))

(declare-fun e!154847 () List!3672)

(declare-fun b!249351 () Bool)

(assert (=> b!249351 (= e!154847 (Cons!3662 (h!9059 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088)))) call!13170))))

(declare-fun d!70129 () Bool)

(declare-fun e!154845 () Bool)

(assert (=> d!70129 e!154845))

(declare-fun res!115554 () Bool)

(assert (=> d!70129 (=> (not res!115554) (not e!154845))))

(declare-fun lt!101529 () List!3672)

(assert (=> d!70129 (= res!115554 (<= (size!2900 lt!101529) (size!2900 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))))))))

(declare-fun e!154846 () List!3672)

(assert (=> d!70129 (= lt!101529 e!154846)))

(declare-fun c!47438 () Bool)

(assert (=> d!70129 (= c!47438 ((_ is Nil!3662) (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088)))))))

(assert (=> d!70129 (= (filter!77 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))) lambda!8209) lt!101529)))

(declare-fun b!249352 () Bool)

(assert (=> b!249352 (= e!154847 call!13170)))

(declare-fun b!249353 () Bool)

(assert (=> b!249353 (= e!154846 e!154847)))

(declare-fun c!47437 () Bool)

(assert (=> b!249353 (= c!47437 (dynLambda!1797 lambda!8209 (h!9059 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))))))))

(declare-fun b!249354 () Bool)

(assert (=> b!249354 (= e!154845 (forall!857 lt!101529 lambda!8209))))

(declare-fun b!249355 () Bool)

(declare-fun res!115555 () Bool)

(assert (=> b!249355 (=> (not res!115555) (not e!154845))))

(declare-fun content!511 (List!3672) (InoxSet Token!1134))

(assert (=> b!249355 (= res!115555 (= ((_ map implies) (content!511 lt!101529) (content!511 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))))) ((as const (InoxSet Token!1134)) true)))))

(declare-fun b!249356 () Bool)

(assert (=> b!249356 (= e!154846 Nil!3662)))

(assert (= (and d!70129 c!47438) b!249356))

(assert (= (and d!70129 (not c!47438)) b!249353))

(assert (= (and b!249353 c!47437) b!249351))

(assert (= (and b!249353 (not c!47437)) b!249352))

(assert (= (or b!249351 b!249352) bm!13165))

(assert (= (and d!70129 res!115554) b!249355))

(assert (= (and b!249355 res!115555) b!249354))

(declare-fun b_lambda!7315 () Bool)

(assert (=> (not b_lambda!7315) (not b!249353)))

(declare-fun m!305563 () Bool)

(assert (=> d!70129 m!305563))

(assert (=> d!70129 m!304309))

(declare-fun m!305565 () Bool)

(assert (=> d!70129 m!305565))

(declare-fun m!305567 () Bool)

(assert (=> b!249355 m!305567))

(assert (=> b!249355 m!304309))

(declare-fun m!305569 () Bool)

(assert (=> b!249355 m!305569))

(declare-fun m!305571 () Bool)

(assert (=> b!249354 m!305571))

(declare-fun m!305573 () Bool)

(assert (=> b!249353 m!305573))

(declare-fun m!305575 () Bool)

(assert (=> bm!13165 m!305575))

(assert (=> b!248520 d!70129))

(declare-fun b!249358 () Bool)

(declare-fun res!115559 () Bool)

(declare-fun e!154849 () Bool)

(assert (=> b!249358 (=> (not res!115559) (not e!154849))))

(assert (=> b!249358 (= res!115559 (= (head!859 lt!101091) (head!859 lt!101096)))))

(declare-fun b!249359 () Bool)

(assert (=> b!249359 (= e!154849 (isPrefix!379 (tail!451 lt!101091) (tail!451 lt!101096)))))

(declare-fun d!70131 () Bool)

(declare-fun e!154850 () Bool)

(assert (=> d!70131 e!154850))

(declare-fun res!115557 () Bool)

(assert (=> d!70131 (=> res!115557 e!154850)))

(declare-fun lt!101530 () Bool)

(assert (=> d!70131 (= res!115557 (not lt!101530))))

(declare-fun e!154848 () Bool)

(assert (=> d!70131 (= lt!101530 e!154848)))

(declare-fun res!115556 () Bool)

(assert (=> d!70131 (=> res!115556 e!154848)))

(assert (=> d!70131 (= res!115556 ((_ is Nil!3660) lt!101091))))

(assert (=> d!70131 (= (isPrefix!379 lt!101091 lt!101096) lt!101530)))

(declare-fun b!249357 () Bool)

(assert (=> b!249357 (= e!154848 e!154849)))

(declare-fun res!115558 () Bool)

(assert (=> b!249357 (=> (not res!115558) (not e!154849))))

(assert (=> b!249357 (= res!115558 (not ((_ is Nil!3660) lt!101096)))))

(declare-fun b!249360 () Bool)

(assert (=> b!249360 (= e!154850 (>= (size!2898 lt!101096) (size!2898 lt!101091)))))

(assert (= (and d!70131 (not res!115556)) b!249357))

(assert (= (and b!249357 res!115558) b!249358))

(assert (= (and b!249358 res!115559) b!249359))

(assert (= (and d!70131 (not res!115557)) b!249360))

(assert (=> b!249358 m!304345))

(declare-fun m!305577 () Bool)

(assert (=> b!249358 m!305577))

(assert (=> b!249359 m!304353))

(declare-fun m!305579 () Bool)

(assert (=> b!249359 m!305579))

(assert (=> b!249359 m!304353))

(assert (=> b!249359 m!305579))

(declare-fun m!305581 () Bool)

(assert (=> b!249359 m!305581))

(assert (=> b!249360 m!304577))

(assert (=> b!249360 m!304507))

(assert (=> b!248520 d!70131))

(declare-fun d!70133 () Bool)

(assert (=> d!70133 (= (isEmpty!2254 tokens!465) ((_ is Nil!3662) tokens!465))))

(assert (=> b!248520 d!70133))

(declare-fun d!70135 () Bool)

(assert (=> d!70135 (= (get!1201 (maxPrefix!311 thiss!17480 rules!1920 lt!101096)) (v!14524 (maxPrefix!311 thiss!17480 rules!1920 lt!101096)))))

(assert (=> b!248520 d!70135))

(declare-fun b!249371 () Bool)

(declare-fun b_free!9285 () Bool)

(declare-fun b_next!9285 () Bool)

(assert (=> b!249371 (= b_free!9285 (not b_next!9285))))

(declare-fun tp!96912 () Bool)

(declare-fun b_and!18801 () Bool)

(assert (=> b!249371 (= tp!96912 b_and!18801)))

(declare-fun b_free!9287 () Bool)

(declare-fun b_next!9287 () Bool)

(assert (=> b!249371 (= b_free!9287 (not b_next!9287))))

(declare-fun t!35362 () Bool)

(declare-fun tb!12761 () Bool)

(assert (=> (and b!249371 (= (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920)))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170)))) t!35362) tb!12761))

(declare-fun result!16098 () Bool)

(assert (= result!16098 result!16052))

(assert (=> b!248557 t!35362))

(declare-fun t!35364 () Bool)

(declare-fun tb!12763 () Bool)

(assert (=> (and b!249371 (= (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920)))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465))))) t!35364) tb!12763))

(declare-fun result!16100 () Bool)

(assert (= result!16100 result!16068))

(assert (=> b!248827 t!35364))

(assert (=> d!69961 t!35362))

(assert (=> d!69969 t!35364))

(declare-fun b_and!18803 () Bool)

(declare-fun tp!96913 () Bool)

(assert (=> b!249371 (= tp!96913 (and (=> t!35362 result!16098) (=> t!35364 result!16100) b_and!18803))))

(declare-fun e!154860 () Bool)

(assert (=> b!249371 (= e!154860 (and tp!96912 tp!96913))))

(declare-fun e!154862 () Bool)

(declare-fun tp!96910 () Bool)

(declare-fun b!249370 () Bool)

(assert (=> b!249370 (= e!154862 (and tp!96910 (inv!4509 (tag!903 (h!9058 (t!35303 rules!1920)))) (inv!4513 (transformation!695 (h!9058 (t!35303 rules!1920)))) e!154860))))

(declare-fun b!249369 () Bool)

(declare-fun e!154861 () Bool)

(declare-fun tp!96911 () Bool)

(assert (=> b!249369 (= e!154861 (and e!154862 tp!96911))))

(assert (=> b!248498 (= tp!96825 e!154861)))

(assert (= b!249370 b!249371))

(assert (= b!249369 b!249370))

(assert (= (and b!248498 ((_ is Cons!3661) (t!35303 rules!1920))) b!249369))

(declare-fun m!305583 () Bool)

(assert (=> b!249370 m!305583))

(declare-fun m!305585 () Bool)

(assert (=> b!249370 m!305585))

(declare-fun b!249383 () Bool)

(declare-fun e!154865 () Bool)

(declare-fun tp!96925 () Bool)

(declare-fun tp!96927 () Bool)

(assert (=> b!249383 (= e!154865 (and tp!96925 tp!96927))))

(declare-fun b!249385 () Bool)

(declare-fun tp!96924 () Bool)

(declare-fun tp!96928 () Bool)

(assert (=> b!249385 (= e!154865 (and tp!96924 tp!96928))))

(assert (=> b!248507 (= tp!96828 e!154865)))

(declare-fun b!249382 () Bool)

(declare-fun tp_is_empty!1767 () Bool)

(assert (=> b!249382 (= e!154865 tp_is_empty!1767)))

(declare-fun b!249384 () Bool)

(declare-fun tp!96926 () Bool)

(assert (=> b!249384 (= e!154865 tp!96926)))

(assert (= (and b!248507 ((_ is ElementMatch!919) (regex!695 (rule!1272 (h!9059 tokens!465))))) b!249382))

(assert (= (and b!248507 ((_ is Concat!1637) (regex!695 (rule!1272 (h!9059 tokens!465))))) b!249383))

(assert (= (and b!248507 ((_ is Star!919) (regex!695 (rule!1272 (h!9059 tokens!465))))) b!249384))

(assert (= (and b!248507 ((_ is Union!919) (regex!695 (rule!1272 (h!9059 tokens!465))))) b!249385))

(declare-fun b!249390 () Bool)

(declare-fun e!154868 () Bool)

(declare-fun tp!96931 () Bool)

(assert (=> b!249390 (= e!154868 (and tp_is_empty!1767 tp!96931))))

(assert (=> b!248515 (= tp!96827 e!154868)))

(assert (= (and b!248515 ((_ is Cons!3660) (originalCharacters!738 (h!9059 tokens!465)))) b!249390))

(declare-fun b!249404 () Bool)

(declare-fun b_free!9289 () Bool)

(declare-fun b_next!9289 () Bool)

(assert (=> b!249404 (= b_free!9289 (not b_next!9289))))

(declare-fun tp!96946 () Bool)

(declare-fun b_and!18805 () Bool)

(assert (=> b!249404 (= tp!96946 b_and!18805)))

(declare-fun b_free!9291 () Bool)

(declare-fun b_next!9291 () Bool)

(assert (=> b!249404 (= b_free!9291 (not b_next!9291))))

(declare-fun t!35366 () Bool)

(declare-fun tb!12765 () Bool)

(assert (=> (and b!249404 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170)))) t!35366) tb!12765))

(declare-fun result!16108 () Bool)

(assert (= result!16108 result!16052))

(assert (=> b!248557 t!35366))

(declare-fun t!35368 () Bool)

(declare-fun tb!12767 () Bool)

(assert (=> (and b!249404 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465))))) t!35368) tb!12767))

(declare-fun result!16110 () Bool)

(assert (= result!16110 result!16068))

(assert (=> b!248827 t!35368))

(assert (=> d!69961 t!35366))

(assert (=> d!69969 t!35368))

(declare-fun tp!96942 () Bool)

(declare-fun b_and!18807 () Bool)

(assert (=> b!249404 (= tp!96942 (and (=> t!35366 result!16108) (=> t!35368 result!16110) b_and!18807))))

(declare-fun tp!96944 () Bool)

(declare-fun e!154882 () Bool)

(declare-fun b!249403 () Bool)

(declare-fun e!154883 () Bool)

(assert (=> b!249403 (= e!154882 (and tp!96944 (inv!4509 (tag!903 (rule!1272 (h!9059 (t!35304 tokens!465))))) (inv!4513 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) e!154883))))

(declare-fun tp!96943 () Bool)

(declare-fun e!154884 () Bool)

(declare-fun e!154881 () Bool)

(declare-fun b!249401 () Bool)

(assert (=> b!249401 (= e!154884 (and (inv!4512 (h!9059 (t!35304 tokens!465))) e!154881 tp!96943))))

(assert (=> b!249404 (= e!154883 (and tp!96946 tp!96942))))

(assert (=> b!248504 (= tp!96830 e!154884)))

(declare-fun b!249402 () Bool)

(declare-fun tp!96945 () Bool)

(assert (=> b!249402 (= e!154881 (and (inv!21 (value!24123 (h!9059 (t!35304 tokens!465)))) e!154882 tp!96945))))

(assert (= b!249403 b!249404))

(assert (= b!249402 b!249403))

(assert (= b!249401 b!249402))

(assert (= (and b!248504 ((_ is Cons!3662) (t!35304 tokens!465))) b!249401))

(declare-fun m!305587 () Bool)

(assert (=> b!249403 m!305587))

(declare-fun m!305589 () Bool)

(assert (=> b!249403 m!305589))

(declare-fun m!305591 () Bool)

(assert (=> b!249401 m!305591))

(declare-fun m!305593 () Bool)

(assert (=> b!249402 m!305593))

(declare-fun b!249406 () Bool)

(declare-fun e!154887 () Bool)

(declare-fun tp!96948 () Bool)

(declare-fun tp!96950 () Bool)

(assert (=> b!249406 (= e!154887 (and tp!96948 tp!96950))))

(declare-fun b!249408 () Bool)

(declare-fun tp!96947 () Bool)

(declare-fun tp!96951 () Bool)

(assert (=> b!249408 (= e!154887 (and tp!96947 tp!96951))))

(assert (=> b!248514 (= tp!96834 e!154887)))

(declare-fun b!249405 () Bool)

(assert (=> b!249405 (= e!154887 tp_is_empty!1767)))

(declare-fun b!249407 () Bool)

(declare-fun tp!96949 () Bool)

(assert (=> b!249407 (= e!154887 tp!96949)))

(assert (= (and b!248514 ((_ is ElementMatch!919) (regex!695 (h!9058 rules!1920)))) b!249405))

(assert (= (and b!248514 ((_ is Concat!1637) (regex!695 (h!9058 rules!1920)))) b!249406))

(assert (= (and b!248514 ((_ is Star!919) (regex!695 (h!9058 rules!1920)))) b!249407))

(assert (= (and b!248514 ((_ is Union!919) (regex!695 (h!9058 rules!1920)))) b!249408))

(declare-fun b!249411 () Bool)

(declare-fun e!154890 () Bool)

(assert (=> b!249411 (= e!154890 true)))

(declare-fun b!249410 () Bool)

(declare-fun e!154889 () Bool)

(assert (=> b!249410 (= e!154889 e!154890)))

(declare-fun b!249409 () Bool)

(declare-fun e!154888 () Bool)

(assert (=> b!249409 (= e!154888 e!154889)))

(assert (=> b!248542 e!154888))

(assert (= b!249410 b!249411))

(assert (= b!249409 b!249410))

(assert (= (and b!248542 ((_ is Cons!3661) (t!35303 rules!1920))) b!249409))

(assert (=> b!249411 (< (dynLambda!1791 order!2709 (toValue!1398 (transformation!695 (h!9058 (t!35303 rules!1920))))) (dynLambda!1792 order!2711 lambda!8210))))

(assert (=> b!249411 (< (dynLambda!1793 order!2713 (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920))))) (dynLambda!1792 order!2711 lambda!8210))))

(declare-fun b!249412 () Bool)

(declare-fun e!154891 () Bool)

(declare-fun tp!96952 () Bool)

(assert (=> b!249412 (= e!154891 (and tp_is_empty!1767 tp!96952))))

(assert (=> b!248501 (= tp!96832 e!154891)))

(assert (= (and b!248501 ((_ is Cons!3660) (originalCharacters!738 separatorToken!170))) b!249412))

(declare-fun b!249414 () Bool)

(declare-fun e!154892 () Bool)

(declare-fun tp!96954 () Bool)

(declare-fun tp!96956 () Bool)

(assert (=> b!249414 (= e!154892 (and tp!96954 tp!96956))))

(declare-fun b!249416 () Bool)

(declare-fun tp!96953 () Bool)

(declare-fun tp!96957 () Bool)

(assert (=> b!249416 (= e!154892 (and tp!96953 tp!96957))))

(assert (=> b!248532 (= tp!96837 e!154892)))

(declare-fun b!249413 () Bool)

(assert (=> b!249413 (= e!154892 tp_is_empty!1767)))

(declare-fun b!249415 () Bool)

(declare-fun tp!96955 () Bool)

(assert (=> b!249415 (= e!154892 tp!96955)))

(assert (= (and b!248532 ((_ is ElementMatch!919) (regex!695 (rule!1272 separatorToken!170)))) b!249413))

(assert (= (and b!248532 ((_ is Concat!1637) (regex!695 (rule!1272 separatorToken!170)))) b!249414))

(assert (= (and b!248532 ((_ is Star!919) (regex!695 (rule!1272 separatorToken!170)))) b!249415))

(assert (= (and b!248532 ((_ is Union!919) (regex!695 (rule!1272 separatorToken!170)))) b!249416))

(declare-fun b_lambda!7317 () Bool)

(assert (= b_lambda!7283 (or (and b!248510 b_free!9267) (and b!248518 b_free!9271 (= (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) (and b!249371 b_free!9287 (= (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920)))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) (and b!249404 b_free!9291 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) (and b!248519 b_free!9275 (= (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) b_lambda!7317)))

(declare-fun b_lambda!7319 () Bool)

(assert (= b_lambda!7315 (or b!248521 b_lambda!7319)))

(declare-fun bs!26768 () Bool)

(declare-fun d!70137 () Bool)

(assert (= bs!26768 (and d!70137 b!248521)))

(assert (=> bs!26768 (= (dynLambda!1797 lambda!8209 (h!9059 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))))) (not (isSeparator!695 (rule!1272 (h!9059 (list!1449 (_1!2261 (lex!381 thiss!17480 rules!1920 lt!101088))))))))))

(assert (=> b!249353 d!70137))

(declare-fun b_lambda!7321 () Bool)

(assert (= b_lambda!7287 (or (and b!248510 b_free!9267) (and b!248518 b_free!9271 (= (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) (and b!249371 b_free!9287 (= (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920)))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) (and b!249404 b_free!9291 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) (and b!248519 b_free!9275 (= (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))) (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))))) b_lambda!7321)))

(declare-fun b_lambda!7323 () Bool)

(assert (= b_lambda!7275 (or (and b!249404 b_free!9291 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!249371 b_free!9287 (= (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920)))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!248510 b_free!9267 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!248518 b_free!9271 (= (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!248519 b_free!9275) b_lambda!7323)))

(declare-fun b_lambda!7325 () Bool)

(assert (= b_lambda!7277 (or b!248508 b_lambda!7325)))

(declare-fun bs!26769 () Bool)

(declare-fun d!70139 () Bool)

(assert (= bs!26769 (and d!70139 b!248508)))

(assert (=> bs!26769 (= (dynLambda!1797 lambda!8210 (h!9059 tokens!465)) (rulesProduceIndividualToken!330 thiss!17480 rules!1920 (h!9059 tokens!465)))))

(assert (=> bs!26769 m!304217))

(assert (=> d!69877 d!70139))

(declare-fun b_lambda!7327 () Bool)

(assert (= b_lambda!7297 (or b!248521 b_lambda!7327)))

(declare-fun bs!26770 () Bool)

(declare-fun d!70141 () Bool)

(assert (= bs!26770 (and d!70141 b!248521)))

(assert (=> bs!26770 (= (dynLambda!1797 lambda!8209 (h!9059 tokens!465)) (not (isSeparator!695 (rule!1272 (h!9059 tokens!465)))))))

(assert (=> b!249166 d!70141))

(declare-fun b_lambda!7329 () Bool)

(assert (= b_lambda!7285 (or (and b!249404 b_free!9291 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 (t!35304 tokens!465))))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!249371 b_free!9287 (= (toChars!1257 (transformation!695 (h!9058 (t!35303 rules!1920)))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!248510 b_free!9267 (= (toChars!1257 (transformation!695 (rule!1272 (h!9059 tokens!465)))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!248518 b_free!9271 (= (toChars!1257 (transformation!695 (h!9058 rules!1920))) (toChars!1257 (transformation!695 (rule!1272 separatorToken!170))))) (and b!248519 b_free!9275) b_lambda!7329)))

(check-sat (not b!248825) (not d!70129) (not bm!13074) (not bm!13089) (not d!69895) (not b!248732) (not b!248876) (not d!69961) (not b!248785) (not d!69857) (not b!248855) (not d!69937) tp_is_empty!1767 (not d!70055) (not b_next!9269) (not b!248844) (not b!249054) (not b!249225) (not tb!12729) (not b_lambda!7321) (not b!248962) (not b!249337) (not bm!13092) (not b!249027) (not b!249028) (not bm!13090) (not b!249061) (not b!249358) (not b!248790) (not d!69963) (not b_next!9291) (not b!248604) (not b!248603) (not b!248690) (not b!248880) (not d!69853) b_and!18803 (not d!69971) (not b!248687) (not bm!13131) (not d!70105) (not b!249033) (not b!249406) (not d!69973) (not b!249414) (not b_lambda!7325) (not d!69947) (not b!248827) (not b!249055) (not d!70009) (not b!249383) (not d!69927) (not b!249070) (not d!70047) (not bm!13127) (not b!248856) (not b!248852) (not b_next!9275) (not b!249370) (not b!249401) (not b!248858) (not b!249151) (not b!248949) (not b!248605) (not b!248830) (not b!248786) (not d!69877) (not d!69929) (not d!69939) (not d!69891) (not b!249355) (not d!69903) (not d!70049) b_and!18771 (not b!248839) (not b!249407) (not b!248597) (not b!249160) (not bm!13126) (not b!248551) (not d!69933) (not b_next!9267) (not b!248854) (not b!249096) (not bm!13115) (not d!69949) (not b!248947) (not bm!13062) (not b!248689) (not b!248838) (not d!69965) (not b_lambda!7323) (not b!248711) (not b!249058) (not b!249384) (not b!249207) (not b!248846) (not b!248951) (not b!248961) (not b_lambda!7327) (not b!249385) (not b!249412) b_and!18769 (not d!69917) (not b!248787) (not b!248688) (not bm!13091) (not tb!12741) (not b!249360) (not b!248828) (not b!249416) (not b!248592) (not b!249086) (not b!249415) (not bm!13117) (not d!69879) (not d!69967) (not b!248870) (not b!249390) (not b!248788) b_and!18733 (not b!249060) (not b!249369) (not d!69953) (not d!69975) (not b!249075) (not bs!26769) (not b!249035) (not b!249223) (not b!248845) (not b!249095) (not b!248685) (not b!248850) (not d!70039) (not b!249359) (not b!249167) (not bm!13132) (not d!69859) (not b!249224) (not d!70099) (not b!248598) (not d!70027) (not b!249088) (not d!69905) (not b!249409) (not d!69875) (not b!249062) (not bm!13075) b_and!18741 (not b!248851) (not b!248691) (not b!249085) (not b!248782) (not d!70127) (not d!69969) (not d!69855) (not b!249408) (not b!249354) b_and!18807 (not b!248733) (not b!248879) (not b!249204) (not b!248826) (not bm!13125) (not b!248954) (not b!249090) (not d!70029) (not b!248884) (not d!69959) (not b!248745) b_and!18773 (not b!248784) (not d!70045) (not b!249089) (not b!249141) (not b!248849) (not b!249036) (not b!248692) (not d!70101) (not d!70079) (not b!248837) b_and!18737 (not b!248869) (not d!69919) (not bm!13116) (not b_next!9265) (not b!248824) (not d!69893) (not b!249083) (not b!248557) (not b!249403) (not b!249067) (not b!249031) (not d!70011) (not b!248563) (not b_next!9273) (not b!248883) (not b_next!9289) (not b_lambda!7329) (not bm!13165) (not d!70037) (not b!248552) b_and!18805 (not b!249205) (not b!249338) (not d!69977) (not bm!13129) (not b_lambda!7317) (not b!248783) (not b!249071) (not b!248823) (not d!69955) (not bm!13130) (not b!249078) (not b_next!9287) (not b!248853) (not b!248558) (not b!249034) (not d!70043) (not b!248875) (not b_next!9285) (not b_lambda!7319) (not b!248946) (not d!70053) (not b_next!9271) b_and!18801 (not b!249143) (not b!249402) (not d!69943) (not b!248829) (not b!248871) (not b!249073) (not bm!13068) (not b!249206))
(check-sat (not b_next!9269) (not b_next!9291) b_and!18803 (not b_next!9275) b_and!18771 (not b_next!9267) b_and!18769 b_and!18733 b_and!18741 b_and!18807 b_and!18773 b_and!18737 (not b_next!9287) (not b_next!9285) (not b_next!9273) (not b_next!9265) b_and!18805 (not b_next!9289) (not b_next!9271) b_and!18801)
