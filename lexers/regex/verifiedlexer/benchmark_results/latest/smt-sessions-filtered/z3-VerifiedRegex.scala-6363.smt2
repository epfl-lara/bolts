; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!330298 () Bool)

(assert start!330298)

(declare-fun b!3567660 () Bool)

(declare-fun b_free!91329 () Bool)

(declare-fun b_next!92033 () Bool)

(assert (=> b!3567660 (= b_free!91329 (not b_next!92033))))

(declare-fun tp!1093243 () Bool)

(declare-fun b_and!256675 () Bool)

(assert (=> b!3567660 (= tp!1093243 b_and!256675)))

(declare-fun b_free!91331 () Bool)

(declare-fun b_next!92035 () Bool)

(assert (=> b!3567660 (= b_free!91331 (not b_next!92035))))

(declare-fun tp!1093244 () Bool)

(declare-fun b_and!256677 () Bool)

(assert (=> b!3567660 (= tp!1093244 b_and!256677)))

(declare-fun b!3567674 () Bool)

(declare-fun b_free!91333 () Bool)

(declare-fun b_next!92037 () Bool)

(assert (=> b!3567674 (= b_free!91333 (not b_next!92037))))

(declare-fun tp!1093253 () Bool)

(declare-fun b_and!256679 () Bool)

(assert (=> b!3567674 (= tp!1093253 b_and!256679)))

(declare-fun b_free!91335 () Bool)

(declare-fun b_next!92039 () Bool)

(assert (=> b!3567674 (= b_free!91335 (not b_next!92039))))

(declare-fun tp!1093254 () Bool)

(declare-fun b_and!256681 () Bool)

(assert (=> b!3567674 (= tp!1093254 b_and!256681)))

(declare-fun b!3567686 () Bool)

(declare-fun b_free!91337 () Bool)

(declare-fun b_next!92041 () Bool)

(assert (=> b!3567686 (= b_free!91337 (not b_next!92041))))

(declare-fun tp!1093250 () Bool)

(declare-fun b_and!256683 () Bool)

(assert (=> b!3567686 (= tp!1093250 b_and!256683)))

(declare-fun b_free!91339 () Bool)

(declare-fun b_next!92043 () Bool)

(assert (=> b!3567686 (= b_free!91339 (not b_next!92043))))

(declare-fun tp!1093245 () Bool)

(declare-fun b_and!256685 () Bool)

(assert (=> b!3567686 (= tp!1093245 b_and!256685)))

(declare-fun bs!568993 () Bool)

(declare-fun b!3567678 () Bool)

(declare-fun b!3567655 () Bool)

(assert (= bs!568993 (and b!3567678 b!3567655)))

(declare-fun lambda!123391 () Int)

(declare-fun lambda!123390 () Int)

(assert (=> bs!568993 (not (= lambda!123391 lambda!123390))))

(declare-fun b!3567700 () Bool)

(declare-fun e!2206944 () Bool)

(assert (=> b!3567700 (= e!2206944 true)))

(declare-fun b!3567699 () Bool)

(declare-fun e!2206943 () Bool)

(assert (=> b!3567699 (= e!2206943 e!2206944)))

(declare-fun b!3567698 () Bool)

(declare-fun e!2206942 () Bool)

(assert (=> b!3567698 (= e!2206942 e!2206943)))

(assert (=> b!3567678 e!2206942))

(assert (= b!3567699 b!3567700))

(assert (= b!3567698 b!3567699))

(declare-datatypes ((C!20716 0))(
  ( (C!20717 (val!12406 Int)) )
))
(declare-datatypes ((Regex!10265 0))(
  ( (ElementMatch!10265 (c!618262 C!20716)) (Concat!16001 (regOne!21042 Regex!10265) (regTwo!21042 Regex!10265)) (EmptyExpr!10265) (Star!10265 (reg!10594 Regex!10265)) (EmptyLang!10265) (Union!10265 (regOne!21043 Regex!10265) (regTwo!21043 Regex!10265)) )
))
(declare-datatypes ((List!37602 0))(
  ( (Nil!37478) (Cons!37478 (h!42898 (_ BitVec 16)) (t!288743 List!37602)) )
))
(declare-datatypes ((TokenValue!5736 0))(
  ( (FloatLiteralValue!11472 (text!40597 List!37602)) (TokenValueExt!5735 (__x!23689 Int)) (Broken!28680 (value!177355 List!37602)) (Object!5859) (End!5736) (Def!5736) (Underscore!5736) (Match!5736) (Else!5736) (Error!5736) (Case!5736) (If!5736) (Extends!5736) (Abstract!5736) (Class!5736) (Val!5736) (DelimiterValue!11472 (del!5796 List!37602)) (KeywordValue!5742 (value!177356 List!37602)) (CommentValue!11472 (value!177357 List!37602)) (WhitespaceValue!11472 (value!177358 List!37602)) (IndentationValue!5736 (value!177359 List!37602)) (String!42013) (Int32!5736) (Broken!28681 (value!177360 List!37602)) (Boolean!5737) (Unit!53454) (OperatorValue!5739 (op!5796 List!37602)) (IdentifierValue!11472 (value!177361 List!37602)) (IdentifierValue!11473 (value!177362 List!37602)) (WhitespaceValue!11473 (value!177363 List!37602)) (True!11472) (False!11472) (Broken!28682 (value!177364 List!37602)) (Broken!28683 (value!177365 List!37602)) (True!11473) (RightBrace!5736) (RightBracket!5736) (Colon!5736) (Null!5736) (Comma!5736) (LeftBracket!5736) (False!11473) (LeftBrace!5736) (ImaginaryLiteralValue!5736 (text!40598 List!37602)) (StringLiteralValue!17208 (value!177366 List!37602)) (EOFValue!5736 (value!177367 List!37602)) (IdentValue!5736 (value!177368 List!37602)) (DelimiterValue!11473 (value!177369 List!37602)) (DedentValue!5736 (value!177370 List!37602)) (NewLineValue!5736 (value!177371 List!37602)) (IntegerValue!17208 (value!177372 (_ BitVec 32)) (text!40599 List!37602)) (IntegerValue!17209 (value!177373 Int) (text!40600 List!37602)) (Times!5736) (Or!5736) (Equal!5736) (Minus!5736) (Broken!28684 (value!177374 List!37602)) (And!5736) (Div!5736) (LessEqual!5736) (Mod!5736) (Concat!16002) (Not!5736) (Plus!5736) (SpaceValue!5736 (value!177375 List!37602)) (IntegerValue!17210 (value!177376 Int) (text!40601 List!37602)) (StringLiteralValue!17209 (text!40602 List!37602)) (FloatLiteralValue!11473 (text!40603 List!37602)) (BytesLiteralValue!5736 (value!177377 List!37602)) (CommentValue!11473 (value!177378 List!37602)) (StringLiteralValue!17210 (value!177379 List!37602)) (ErrorTokenValue!5736 (msg!5797 List!37602)) )
))
(declare-datatypes ((List!37603 0))(
  ( (Nil!37479) (Cons!37479 (h!42899 C!20716) (t!288744 List!37603)) )
))
(declare-datatypes ((IArray!22779 0))(
  ( (IArray!22780 (innerList!11447 List!37603)) )
))
(declare-datatypes ((Conc!11387 0))(
  ( (Node!11387 (left!29302 Conc!11387) (right!29632 Conc!11387) (csize!23004 Int) (cheight!11598 Int)) (Leaf!17751 (xs!14589 IArray!22779) (csize!23005 Int)) (Empty!11387) )
))
(declare-datatypes ((BalanceConc!22388 0))(
  ( (BalanceConc!22389 (c!618263 Conc!11387)) )
))
(declare-datatypes ((String!42014 0))(
  ( (String!42015 (value!177380 String)) )
))
(declare-datatypes ((TokenValueInjection!10900 0))(
  ( (TokenValueInjection!10901 (toValue!7774 Int) (toChars!7633 Int)) )
))
(declare-datatypes ((Rule!10812 0))(
  ( (Rule!10813 (regex!5506 Regex!10265) (tag!6160 String!42014) (isSeparator!5506 Bool) (transformation!5506 TokenValueInjection!10900)) )
))
(declare-datatypes ((List!37604 0))(
  ( (Nil!37480) (Cons!37480 (h!42900 Rule!10812) (t!288745 List!37604)) )
))
(declare-fun rules!2135 () List!37604)

(get-info :version)

(assert (= (and b!3567678 ((_ is Cons!37480) rules!2135)) b!3567698))

(declare-fun order!20309 () Int)

(declare-fun order!20311 () Int)

(declare-fun dynLambda!16075 (Int Int) Int)

(declare-fun dynLambda!16076 (Int Int) Int)

(assert (=> b!3567700 (< (dynLambda!16075 order!20309 (toValue!7774 (transformation!5506 (h!42900 rules!2135)))) (dynLambda!16076 order!20311 lambda!123391))))

(declare-fun order!20313 () Int)

(declare-fun dynLambda!16077 (Int Int) Int)

(assert (=> b!3567700 (< (dynLambda!16077 order!20313 (toChars!7633 (transformation!5506 (h!42900 rules!2135)))) (dynLambda!16076 order!20311 lambda!123391))))

(assert (=> b!3567678 true))

(declare-fun b!3567641 () Bool)

(declare-datatypes ((Unit!53455 0))(
  ( (Unit!53456) )
))
(declare-fun e!2206929 () Unit!53455)

(declare-fun Unit!53457 () Unit!53455)

(assert (=> b!3567641 (= e!2206929 Unit!53457)))

(declare-datatypes ((Token!10378 0))(
  ( (Token!10379 (value!177381 TokenValue!5736) (rule!8192 Rule!10812) (size!28563 Int) (originalCharacters!6220 List!37603)) )
))
(declare-datatypes ((List!37605 0))(
  ( (Nil!37481) (Cons!37481 (h!42901 Token!10378) (t!288746 List!37605)) )
))
(declare-fun tokens!494 () List!37605)

(declare-fun lt!1222184 () Unit!53455)

(declare-fun lt!1222192 () C!20716)

(declare-fun lt!1222191 () List!37603)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!564 (Regex!10265 List!37603 C!20716) Unit!53455)

(assert (=> b!3567641 (= lt!1222184 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!564 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191 lt!1222192))))

(declare-fun res!1438333 () Bool)

(declare-fun matchR!4849 (Regex!10265 List!37603) Bool)

(assert (=> b!3567641 (= res!1438333 (not (matchR!4849 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191)))))

(declare-fun e!2206921 () Bool)

(assert (=> b!3567641 (=> (not res!1438333) (not e!2206921))))

(assert (=> b!3567641 e!2206921))

(declare-fun b!3567642 () Bool)

(declare-fun e!2206897 () Bool)

(declare-fun lt!1222178 () Rule!10812)

(assert (=> b!3567642 (= e!2206897 (= (rule!8192 (h!42901 (t!288746 tokens!494))) lt!1222178))))

(declare-fun b!3567643 () Bool)

(declare-fun res!1438328 () Bool)

(declare-fun e!2206919 () Bool)

(assert (=> b!3567643 (=> (not res!1438328) (not e!2206919))))

(declare-fun isEmpty!21994 (List!37604) Bool)

(assert (=> b!3567643 (= res!1438328 (not (isEmpty!21994 rules!2135)))))

(declare-fun b!3567644 () Bool)

(declare-fun e!2206917 () Unit!53455)

(declare-fun Unit!53458 () Unit!53455)

(assert (=> b!3567644 (= e!2206917 Unit!53458)))

(declare-fun lt!1222179 () C!20716)

(declare-fun separatorToken!241 () Token!10378)

(declare-fun lt!1222190 () List!37603)

(declare-fun lt!1222170 () Unit!53455)

(assert (=> b!3567644 (= lt!1222170 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!564 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190 lt!1222179))))

(declare-fun res!1438332 () Bool)

(assert (=> b!3567644 (= res!1438332 (not (matchR!4849 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190)))))

(declare-fun e!2206932 () Bool)

(assert (=> b!3567644 (=> (not res!1438332) (not e!2206932))))

(assert (=> b!3567644 e!2206932))

(declare-fun b!3567645 () Bool)

(declare-fun e!2206920 () Bool)

(declare-fun lt!1222156 () Rule!10812)

(assert (=> b!3567645 (= e!2206920 (= (rule!8192 separatorToken!241) lt!1222156))))

(declare-fun res!1438344 () Bool)

(assert (=> start!330298 (=> (not res!1438344) (not e!2206919))))

(declare-datatypes ((LexerInterface!5095 0))(
  ( (LexerInterfaceExt!5092 (__x!23690 Int)) (Lexer!5093) )
))
(declare-fun thiss!18206 () LexerInterface!5095)

(assert (=> start!330298 (= res!1438344 ((_ is Lexer!5093) thiss!18206))))

(assert (=> start!330298 e!2206919))

(assert (=> start!330298 true))

(declare-fun e!2206912 () Bool)

(assert (=> start!330298 e!2206912))

(declare-fun e!2206907 () Bool)

(assert (=> start!330298 e!2206907))

(declare-fun e!2206930 () Bool)

(declare-fun inv!50750 (Token!10378) Bool)

(assert (=> start!330298 (and (inv!50750 separatorToken!241) e!2206930)))

(declare-fun b!3567646 () Bool)

(declare-fun e!2206911 () Bool)

(assert (=> b!3567646 (= e!2206919 (not e!2206911))))

(declare-fun res!1438351 () Bool)

(assert (=> b!3567646 (=> res!1438351 e!2206911)))

(declare-fun lt!1222148 () List!37603)

(declare-fun lt!1222150 () List!37603)

(assert (=> b!3567646 (= res!1438351 (not (= lt!1222148 lt!1222150)))))

(declare-fun printList!1643 (LexerInterface!5095 List!37605) List!37603)

(assert (=> b!3567646 (= lt!1222150 (printList!1643 thiss!18206 (Cons!37481 (h!42901 tokens!494) Nil!37481)))))

(declare-fun lt!1222181 () BalanceConc!22388)

(declare-fun list!13743 (BalanceConc!22388) List!37603)

(assert (=> b!3567646 (= lt!1222148 (list!13743 lt!1222181))))

(declare-datatypes ((IArray!22781 0))(
  ( (IArray!22782 (innerList!11448 List!37605)) )
))
(declare-datatypes ((Conc!11388 0))(
  ( (Node!11388 (left!29303 Conc!11388) (right!29633 Conc!11388) (csize!23006 Int) (cheight!11599 Int)) (Leaf!17752 (xs!14590 IArray!22781) (csize!23007 Int)) (Empty!11388) )
))
(declare-datatypes ((BalanceConc!22390 0))(
  ( (BalanceConc!22391 (c!618264 Conc!11388)) )
))
(declare-fun lt!1222172 () BalanceConc!22390)

(declare-fun printTailRec!1590 (LexerInterface!5095 BalanceConc!22390 Int BalanceConc!22388) BalanceConc!22388)

(assert (=> b!3567646 (= lt!1222181 (printTailRec!1590 thiss!18206 lt!1222172 0 (BalanceConc!22389 Empty!11387)))))

(declare-fun print!2160 (LexerInterface!5095 BalanceConc!22390) BalanceConc!22388)

(assert (=> b!3567646 (= lt!1222181 (print!2160 thiss!18206 lt!1222172))))

(declare-fun singletonSeq!2602 (Token!10378) BalanceConc!22390)

(assert (=> b!3567646 (= lt!1222172 (singletonSeq!2602 (h!42901 tokens!494)))))

(declare-fun b!3567647 () Bool)

(declare-fun res!1438321 () Bool)

(declare-fun e!2206923 () Bool)

(assert (=> b!3567647 (=> res!1438321 e!2206923)))

(declare-fun contains!7083 (List!37604 Rule!10812) Bool)

(assert (=> b!3567647 (= res!1438321 (not (contains!7083 rules!2135 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun b!3567648 () Bool)

(declare-fun res!1438334 () Bool)

(declare-fun e!2206924 () Bool)

(assert (=> b!3567648 (=> res!1438334 e!2206924)))

(declare-datatypes ((tuple2!37376 0))(
  ( (tuple2!37377 (_1!21822 Token!10378) (_2!21822 List!37603)) )
))
(declare-fun lt!1222158 () tuple2!37376)

(declare-fun isEmpty!21995 (List!37603) Bool)

(assert (=> b!3567648 (= res!1438334 (not (isEmpty!21995 (_2!21822 lt!1222158))))))

(declare-fun b!3567649 () Bool)

(declare-fun res!1438325 () Bool)

(declare-fun e!2206922 () Bool)

(assert (=> b!3567649 (=> (not res!1438325) (not e!2206922))))

(declare-datatypes ((tuple2!37378 0))(
  ( (tuple2!37379 (_1!21823 BalanceConc!22390) (_2!21823 BalanceConc!22388)) )
))
(declare-fun lt!1222169 () tuple2!37378)

(declare-fun apply!8996 (BalanceConc!22390 Int) Token!10378)

(assert (=> b!3567649 (= res!1438325 (= (apply!8996 (_1!21823 lt!1222169) 0) separatorToken!241))))

(declare-fun b!3567650 () Bool)

(declare-fun e!2206933 () Bool)

(declare-fun e!2206913 () Bool)

(assert (=> b!3567650 (= e!2206933 e!2206913)))

(declare-fun res!1438354 () Bool)

(assert (=> b!3567650 (=> (not res!1438354) (not e!2206913))))

(declare-fun lt!1222180 () Rule!10812)

(declare-fun lt!1222162 () List!37603)

(assert (=> b!3567650 (= res!1438354 (matchR!4849 (regex!5506 lt!1222180) lt!1222162))))

(declare-datatypes ((Option!7681 0))(
  ( (None!7680) (Some!7680 (v!37270 Rule!10812)) )
))
(declare-fun lt!1222171 () Option!7681)

(declare-fun get!12059 (Option!7681) Rule!10812)

(assert (=> b!3567650 (= lt!1222180 (get!12059 lt!1222171))))

(declare-fun b!3567651 () Bool)

(assert (=> b!3567651 (= e!2206913 (= (rule!8192 (h!42901 tokens!494)) lt!1222180))))

(declare-fun b!3567652 () Bool)

(declare-fun e!2206899 () Bool)

(assert (=> b!3567652 (= e!2206923 e!2206899)))

(declare-fun res!1438339 () Bool)

(assert (=> b!3567652 (=> res!1438339 e!2206899)))

(declare-datatypes ((Option!7682 0))(
  ( (None!7681) (Some!7681 (v!37271 tuple2!37376)) )
))
(declare-fun lt!1222142 () Option!7682)

(declare-fun isDefined!5925 (Option!7682) Bool)

(assert (=> b!3567652 (= res!1438339 (not (isDefined!5925 lt!1222142)))))

(declare-fun maxPrefix!2635 (LexerInterface!5095 List!37604 List!37603) Option!7682)

(assert (=> b!3567652 (= lt!1222142 (maxPrefix!2635 thiss!18206 rules!2135 lt!1222190))))

(declare-fun b!3567653 () Bool)

(declare-fun e!2206914 () Bool)

(declare-fun tp!1093242 () Bool)

(assert (=> b!3567653 (= e!2206912 (and e!2206914 tp!1093242))))

(declare-fun b!3567654 () Bool)

(declare-fun e!2206904 () Bool)

(declare-fun e!2206910 () Bool)

(assert (=> b!3567654 (= e!2206904 e!2206910)))

(declare-fun res!1438345 () Bool)

(assert (=> b!3567654 (=> res!1438345 e!2206910)))

(declare-fun lt!1222146 () BalanceConc!22388)

(declare-fun isEmpty!21996 (BalanceConc!22390) Bool)

(declare-fun lex!2421 (LexerInterface!5095 List!37604 BalanceConc!22388) tuple2!37378)

(assert (=> b!3567654 (= res!1438345 (isEmpty!21996 (_1!21823 (lex!2421 thiss!18206 rules!2135 lt!1222146))))))

(declare-fun seqFromList!4065 (List!37603) BalanceConc!22388)

(assert (=> b!3567654 (= lt!1222146 (seqFromList!4065 lt!1222162))))

(declare-fun res!1438343 () Bool)

(assert (=> b!3567655 (=> (not res!1438343) (not e!2206919))))

(declare-fun forall!8102 (List!37605 Int) Bool)

(assert (=> b!3567655 (= res!1438343 (forall!8102 tokens!494 lambda!123390))))

(declare-fun b!3567656 () Bool)

(declare-fun res!1438326 () Bool)

(assert (=> b!3567656 (=> (not res!1438326) (not e!2206919))))

(declare-fun rulesInvariant!4492 (LexerInterface!5095 List!37604) Bool)

(assert (=> b!3567656 (= res!1438326 (rulesInvariant!4492 thiss!18206 rules!2135))))

(declare-fun b!3567657 () Bool)

(declare-fun e!2206927 () Bool)

(assert (=> b!3567657 (= e!2206924 e!2206927)))

(declare-fun res!1438352 () Bool)

(assert (=> b!3567657 (=> res!1438352 e!2206927)))

(assert (=> b!3567657 (= res!1438352 (not (matchR!4849 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190)))))

(declare-fun ruleValid!1790 (LexerInterface!5095 Rule!10812) Bool)

(assert (=> b!3567657 (ruleValid!1790 thiss!18206 (rule!8192 separatorToken!241))))

(declare-fun lt!1222165 () Unit!53455)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!956 (LexerInterface!5095 Rule!10812 List!37604) Unit!53455)

(assert (=> b!3567657 (= lt!1222165 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!956 thiss!18206 (rule!8192 separatorToken!241) rules!2135))))

(declare-fun b!3567658 () Bool)

(declare-fun tp!1093246 () Bool)

(declare-fun e!2206898 () Bool)

(declare-fun inv!21 (TokenValue!5736) Bool)

(assert (=> b!3567658 (= e!2206930 (and (inv!21 (value!177381 separatorToken!241)) e!2206898 tp!1093246))))

(declare-fun b!3567659 () Bool)

(declare-fun res!1438327 () Bool)

(assert (=> b!3567659 (=> (not res!1438327) (not e!2206919))))

(assert (=> b!3567659 (= res!1438327 (isSeparator!5506 (rule!8192 separatorToken!241)))))

(declare-fun e!2206935 () Bool)

(assert (=> b!3567660 (= e!2206935 (and tp!1093243 tp!1093244))))

(declare-fun b!3567661 () Bool)

(declare-fun e!2206901 () Bool)

(declare-fun e!2206931 () Bool)

(assert (=> b!3567661 (= e!2206901 e!2206931)))

(declare-fun res!1438350 () Bool)

(assert (=> b!3567661 (=> res!1438350 e!2206931)))

(declare-fun lt!1222168 () List!37603)

(declare-fun lt!1222143 () List!37603)

(assert (=> b!3567661 (= res!1438350 (not (= lt!1222168 lt!1222143)))))

(declare-fun lt!1222167 () List!37603)

(declare-fun ++!9315 (List!37603 List!37603) List!37603)

(assert (=> b!3567661 (= lt!1222143 (++!9315 (++!9315 lt!1222162 lt!1222190) lt!1222167))))

(declare-fun b!3567662 () Bool)

(declare-fun res!1438337 () Bool)

(assert (=> b!3567662 (=> res!1438337 e!2206904)))

(declare-fun rulesProduceIndividualToken!2587 (LexerInterface!5095 List!37604 Token!10378) Bool)

(assert (=> b!3567662 (= res!1438337 (not (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 tokens!494))))))

(declare-fun e!2206916 () Bool)

(declare-fun b!3567663 () Bool)

(declare-fun tp!1093252 () Bool)

(declare-fun inv!50747 (String!42014) Bool)

(declare-fun inv!50751 (TokenValueInjection!10900) Bool)

(assert (=> b!3567663 (= e!2206898 (and tp!1093252 (inv!50747 (tag!6160 (rule!8192 separatorToken!241))) (inv!50751 (transformation!5506 (rule!8192 separatorToken!241))) e!2206916))))

(declare-fun b!3567664 () Bool)

(assert (=> b!3567664 (= e!2206927 (not (isEmpty!21995 lt!1222167)))))

(declare-fun b!3567665 () Bool)

(declare-fun e!2206918 () Bool)

(declare-fun lt!1222175 () tuple2!37378)

(declare-fun isEmpty!21997 (BalanceConc!22388) Bool)

(assert (=> b!3567665 (= e!2206918 (not (isEmpty!21997 (_2!21823 lt!1222175))))))

(declare-fun b!3567666 () Bool)

(declare-fun res!1438331 () Bool)

(assert (=> b!3567666 (=> res!1438331 e!2206918)))

(assert (=> b!3567666 (= res!1438331 (not (= (apply!8996 (_1!21823 lt!1222175) 0) (h!42901 (t!288746 tokens!494)))))))

(declare-fun b!3567667 () Bool)

(declare-fun e!2206902 () Bool)

(assert (=> b!3567667 (= e!2206910 e!2206902)))

(declare-fun res!1438342 () Bool)

(assert (=> b!3567667 (=> res!1438342 e!2206902)))

(assert (=> b!3567667 (= res!1438342 (or (isSeparator!5506 (rule!8192 (h!42901 tokens!494))) (isSeparator!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun lt!1222189 () Unit!53455)

(declare-fun forallContained!1453 (List!37605 Int Token!10378) Unit!53455)

(assert (=> b!3567667 (= lt!1222189 (forallContained!1453 tokens!494 lambda!123390 (h!42901 (t!288746 tokens!494))))))

(declare-fun lt!1222159 () Unit!53455)

(assert (=> b!3567667 (= lt!1222159 (forallContained!1453 tokens!494 lambda!123390 (h!42901 tokens!494)))))

(declare-fun e!2206900 () Bool)

(declare-fun b!3567668 () Bool)

(declare-fun tp!1093247 () Bool)

(assert (=> b!3567668 (= e!2206900 (and tp!1093247 (inv!50747 (tag!6160 (rule!8192 (h!42901 tokens!494)))) (inv!50751 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) e!2206935))))

(declare-fun tp!1093251 () Bool)

(declare-fun b!3567669 () Bool)

(declare-fun e!2206934 () Bool)

(assert (=> b!3567669 (= e!2206914 (and tp!1093251 (inv!50747 (tag!6160 (h!42900 rules!2135))) (inv!50751 (transformation!5506 (h!42900 rules!2135))) e!2206934))))

(declare-fun b!3567670 () Bool)

(assert (=> b!3567670 (= e!2206911 e!2206904)))

(declare-fun res!1438341 () Bool)

(assert (=> b!3567670 (=> res!1438341 e!2206904)))

(assert (=> b!3567670 (= res!1438341 (or (not (= lt!1222150 lt!1222162)) (not (= lt!1222148 lt!1222162))))))

(declare-fun charsOf!3520 (Token!10378) BalanceConc!22388)

(assert (=> b!3567670 (= lt!1222162 (list!13743 (charsOf!3520 (h!42901 tokens!494))))))

(declare-fun b!3567671 () Bool)

(declare-fun e!2206905 () Bool)

(assert (=> b!3567671 (= e!2206931 e!2206905)))

(declare-fun res!1438323 () Bool)

(assert (=> b!3567671 (=> res!1438323 e!2206905)))

(declare-fun lt!1222147 () List!37603)

(assert (=> b!3567671 (= res!1438323 (not (= lt!1222168 lt!1222147)))))

(assert (=> b!3567671 (= lt!1222143 lt!1222147)))

(declare-fun lt!1222182 () List!37603)

(assert (=> b!3567671 (= lt!1222147 (++!9315 lt!1222162 lt!1222182))))

(declare-fun lt!1222144 () Unit!53455)

(declare-fun lemmaConcatAssociativity!2046 (List!37603 List!37603 List!37603) Unit!53455)

(assert (=> b!3567671 (= lt!1222144 (lemmaConcatAssociativity!2046 lt!1222162 lt!1222190 lt!1222167))))

(declare-fun b!3567672 () Bool)

(declare-fun Unit!53459 () Unit!53455)

(assert (=> b!3567672 (= e!2206917 Unit!53459)))

(declare-fun b!3567673 () Bool)

(assert (=> b!3567673 (= e!2206922 (isEmpty!21997 (_2!21823 lt!1222169)))))

(assert (=> b!3567674 (= e!2206916 (and tp!1093253 tp!1093254))))

(declare-fun e!2206908 () Bool)

(declare-fun b!3567675 () Bool)

(declare-fun tp!1093248 () Bool)

(assert (=> b!3567675 (= e!2206908 (and (inv!21 (value!177381 (h!42901 tokens!494))) e!2206900 tp!1093248))))

(declare-fun b!3567676 () Bool)

(assert (=> b!3567676 (= e!2206902 e!2206901)))

(declare-fun res!1438353 () Bool)

(assert (=> b!3567676 (=> res!1438353 e!2206901)))

(declare-fun printWithSeparatorTokenList!382 (LexerInterface!5095 List!37605 Token!10378) List!37603)

(assert (=> b!3567676 (= res!1438353 (not (= lt!1222167 (++!9315 (++!9315 lt!1222191 lt!1222190) (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241)))))))

(assert (=> b!3567676 (= lt!1222191 (list!13743 (charsOf!3520 (h!42901 (t!288746 tokens!494)))))))

(assert (=> b!3567676 (= lt!1222182 (++!9315 lt!1222190 lt!1222167))))

(assert (=> b!3567676 (= lt!1222190 (list!13743 (charsOf!3520 separatorToken!241)))))

(assert (=> b!3567676 (= lt!1222167 (printWithSeparatorTokenList!382 thiss!18206 (t!288746 tokens!494) separatorToken!241))))

(assert (=> b!3567676 (= lt!1222168 (printWithSeparatorTokenList!382 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3567677 () Bool)

(declare-fun e!2206909 () Bool)

(assert (=> b!3567677 (= e!2206909 e!2206897)))

(declare-fun res!1438330 () Bool)

(assert (=> b!3567677 (=> (not res!1438330) (not e!2206897))))

(assert (=> b!3567677 (= res!1438330 (matchR!4849 (regex!5506 lt!1222178) lt!1222191))))

(declare-fun lt!1222174 () Option!7681)

(assert (=> b!3567677 (= lt!1222178 (get!12059 lt!1222174))))

(assert (=> b!3567678 (= e!2206905 e!2206923)))

(declare-fun res!1438322 () Bool)

(assert (=> b!3567678 (=> res!1438322 e!2206923)))

(assert (=> b!3567678 (= res!1438322 (not (contains!7083 rules!2135 (rule!8192 separatorToken!241))))))

(declare-fun lt!1222157 () List!37603)

(declare-fun contains!7084 (List!37603 C!20716) Bool)

(assert (=> b!3567678 (not (contains!7084 lt!1222157 lt!1222192))))

(declare-fun lt!1222161 () Unit!53455)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!188 (LexerInterface!5095 List!37604 List!37604 Rule!10812 Rule!10812 C!20716) Unit!53455)

(assert (=> b!3567678 (= lt!1222161 (lemmaSepRuleNotContainsCharContainedInANonSepRule!188 thiss!18206 rules!2135 rules!2135 (rule!8192 (h!42901 (t!288746 tokens!494))) (rule!8192 separatorToken!241) lt!1222192))))

(declare-fun lt!1222151 () Unit!53455)

(assert (=> b!3567678 (= lt!1222151 e!2206929)))

(declare-fun c!618261 () Bool)

(declare-fun usedCharacters!740 (Regex!10265) List!37603)

(assert (=> b!3567678 (= c!618261 (not (contains!7084 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) lt!1222192)))))

(declare-fun head!7431 (List!37603) C!20716)

(assert (=> b!3567678 (= lt!1222192 (head!7431 lt!1222191))))

(declare-fun maxPrefixOneRule!1802 (LexerInterface!5095 Rule!10812 List!37603) Option!7682)

(declare-fun apply!8997 (TokenValueInjection!10900 BalanceConc!22388) TokenValue!5736)

(declare-fun size!28564 (List!37603) Int)

(assert (=> b!3567678 (= (maxPrefixOneRule!1802 thiss!18206 (rule!8192 (h!42901 (t!288746 tokens!494))) lt!1222191) (Some!7681 (tuple2!37377 (Token!10379 (apply!8997 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (seqFromList!4065 lt!1222191)) (rule!8192 (h!42901 (t!288746 tokens!494))) (size!28564 lt!1222191) lt!1222191) Nil!37479)))))

(declare-fun lt!1222183 () Unit!53455)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!895 (LexerInterface!5095 List!37604 List!37603 List!37603 List!37603 Rule!10812) Unit!53455)

(assert (=> b!3567678 (= lt!1222183 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!895 thiss!18206 rules!2135 lt!1222191 lt!1222191 Nil!37479 (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(assert (=> b!3567678 e!2206909))

(declare-fun res!1438335 () Bool)

(assert (=> b!3567678 (=> (not res!1438335) (not e!2206909))))

(declare-fun isDefined!5926 (Option!7681) Bool)

(assert (=> b!3567678 (= res!1438335 (isDefined!5926 lt!1222174))))

(declare-fun getRuleFromTag!1149 (LexerInterface!5095 List!37604 String!42014) Option!7681)

(assert (=> b!3567678 (= lt!1222174 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun lt!1222185 () Unit!53455)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 (LexerInterface!5095 List!37604 List!37603 Token!10378) Unit!53455)

(assert (=> b!3567678 (= lt!1222185 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 thiss!18206 rules!2135 lt!1222191 (h!42901 (t!288746 tokens!494))))))

(declare-fun lt!1222173 () Bool)

(assert (=> b!3567678 lt!1222173))

(declare-fun lt!1222155 () Unit!53455)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1084 (LexerInterface!5095 List!37604 List!37605 Token!10378) Unit!53455)

(assert (=> b!3567678 (= lt!1222155 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1084 thiss!18206 rules!2135 tokens!494 (h!42901 (t!288746 tokens!494))))))

(assert (=> b!3567678 (= (maxPrefix!2635 thiss!18206 rules!2135 lt!1222147) (Some!7681 (tuple2!37377 (h!42901 tokens!494) lt!1222182)))))

(declare-fun lt!1222176 () Unit!53455)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!262 (LexerInterface!5095 List!37604 Token!10378 Rule!10812 List!37603 Rule!10812) Unit!53455)

(assert (=> b!3567678 (= lt!1222176 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!262 thiss!18206 rules!2135 (h!42901 tokens!494) (rule!8192 (h!42901 tokens!494)) lt!1222182 (rule!8192 separatorToken!241)))))

(assert (=> b!3567678 (not (contains!7084 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494)))) lt!1222179))))

(declare-fun lt!1222187 () Unit!53455)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!306 (LexerInterface!5095 List!37604 List!37604 Rule!10812 Rule!10812 C!20716) Unit!53455)

(assert (=> b!3567678 (= lt!1222187 (lemmaNonSepRuleNotContainsCharContainedInASepRule!306 thiss!18206 rules!2135 rules!2135 (rule!8192 (h!42901 tokens!494)) (rule!8192 separatorToken!241) lt!1222179))))

(declare-fun lt!1222145 () Unit!53455)

(assert (=> b!3567678 (= lt!1222145 (forallContained!1453 tokens!494 lambda!123391 (h!42901 (t!288746 tokens!494))))))

(declare-fun lt!1222166 () Bool)

(assert (=> b!3567678 (= lt!1222173 (not lt!1222166))))

(assert (=> b!3567678 (= lt!1222173 (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 (t!288746 tokens!494))))))

(assert (=> b!3567678 (= lt!1222166 e!2206918)))

(declare-fun res!1438338 () Bool)

(assert (=> b!3567678 (=> res!1438338 e!2206918)))

(declare-fun size!28565 (BalanceConc!22390) Int)

(assert (=> b!3567678 (= res!1438338 (not (= (size!28565 (_1!21823 lt!1222175)) 1)))))

(declare-fun lt!1222149 () BalanceConc!22388)

(assert (=> b!3567678 (= lt!1222175 (lex!2421 thiss!18206 rules!2135 lt!1222149))))

(declare-fun lt!1222163 () BalanceConc!22390)

(assert (=> b!3567678 (= lt!1222149 (printTailRec!1590 thiss!18206 lt!1222163 0 (BalanceConc!22389 Empty!11387)))))

(assert (=> b!3567678 (= lt!1222149 (print!2160 thiss!18206 lt!1222163))))

(assert (=> b!3567678 (= lt!1222163 (singletonSeq!2602 (h!42901 (t!288746 tokens!494))))))

(assert (=> b!3567678 e!2206922))

(declare-fun res!1438355 () Bool)

(assert (=> b!3567678 (=> (not res!1438355) (not e!2206922))))

(assert (=> b!3567678 (= res!1438355 (= (size!28565 (_1!21823 lt!1222169)) 1))))

(declare-fun lt!1222160 () BalanceConc!22388)

(assert (=> b!3567678 (= lt!1222169 (lex!2421 thiss!18206 rules!2135 lt!1222160))))

(declare-fun lt!1222153 () BalanceConc!22390)

(assert (=> b!3567678 (= lt!1222160 (printTailRec!1590 thiss!18206 lt!1222153 0 (BalanceConc!22389 Empty!11387)))))

(assert (=> b!3567678 (= lt!1222160 (print!2160 thiss!18206 lt!1222153))))

(assert (=> b!3567678 (= lt!1222153 (singletonSeq!2602 separatorToken!241))))

(declare-fun lt!1222154 () Unit!53455)

(assert (=> b!3567678 (= lt!1222154 e!2206917)))

(declare-fun c!618260 () Bool)

(assert (=> b!3567678 (= c!618260 (not (contains!7084 lt!1222157 lt!1222179)))))

(assert (=> b!3567678 (= lt!1222179 (head!7431 lt!1222190))))

(assert (=> b!3567678 (= lt!1222157 (usedCharacters!740 (regex!5506 (rule!8192 separatorToken!241))))))

(declare-fun e!2206906 () Bool)

(assert (=> b!3567678 e!2206906))

(declare-fun res!1438347 () Bool)

(assert (=> b!3567678 (=> (not res!1438347) (not e!2206906))))

(declare-fun lt!1222188 () Option!7681)

(assert (=> b!3567678 (= res!1438347 (isDefined!5926 lt!1222188))))

(assert (=> b!3567678 (= lt!1222188 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 separatorToken!241))))))

(declare-fun lt!1222152 () Unit!53455)

(assert (=> b!3567678 (= lt!1222152 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 thiss!18206 rules!2135 lt!1222190 separatorToken!241))))

(assert (=> b!3567678 (= (maxPrefixOneRule!1802 thiss!18206 (rule!8192 (h!42901 tokens!494)) lt!1222162) (Some!7681 (tuple2!37377 (Token!10379 (apply!8997 (transformation!5506 (rule!8192 (h!42901 tokens!494))) lt!1222146) (rule!8192 (h!42901 tokens!494)) (size!28564 lt!1222162) lt!1222162) Nil!37479)))))

(declare-fun lt!1222177 () Unit!53455)

(assert (=> b!3567678 (= lt!1222177 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!895 thiss!18206 rules!2135 lt!1222162 lt!1222162 Nil!37479 (rule!8192 (h!42901 tokens!494))))))

(assert (=> b!3567678 e!2206933))

(declare-fun res!1438349 () Bool)

(assert (=> b!3567678 (=> (not res!1438349) (not e!2206933))))

(assert (=> b!3567678 (= res!1438349 (isDefined!5926 lt!1222171))))

(assert (=> b!3567678 (= lt!1222171 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 tokens!494)))))))

(declare-fun lt!1222186 () Unit!53455)

(assert (=> b!3567678 (= lt!1222186 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 thiss!18206 rules!2135 lt!1222162 (h!42901 tokens!494)))))

(declare-fun lt!1222164 () Unit!53455)

(assert (=> b!3567678 (= lt!1222164 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1084 thiss!18206 rules!2135 tokens!494 (h!42901 tokens!494)))))

(declare-fun b!3567679 () Bool)

(declare-fun tp!1093249 () Bool)

(assert (=> b!3567679 (= e!2206907 (and (inv!50750 (h!42901 tokens!494)) e!2206908 tp!1093249))))

(declare-fun b!3567680 () Bool)

(declare-fun res!1438348 () Bool)

(assert (=> b!3567680 (=> (not res!1438348) (not e!2206919))))

(declare-fun rulesProduceEachTokenIndividually!1546 (LexerInterface!5095 List!37604 BalanceConc!22390) Bool)

(declare-fun seqFromList!4066 (List!37605) BalanceConc!22390)

(assert (=> b!3567680 (= res!1438348 (rulesProduceEachTokenIndividually!1546 thiss!18206 rules!2135 (seqFromList!4066 tokens!494)))))

(declare-fun b!3567681 () Bool)

(assert (=> b!3567681 (= e!2206899 e!2206924)))

(declare-fun res!1438329 () Bool)

(assert (=> b!3567681 (=> res!1438329 e!2206924)))

(assert (=> b!3567681 (= res!1438329 (not (= (_1!21822 lt!1222158) separatorToken!241)))))

(declare-fun get!12060 (Option!7682) tuple2!37376)

(assert (=> b!3567681 (= lt!1222158 (get!12060 lt!1222142))))

(declare-fun b!3567682 () Bool)

(declare-fun res!1438324 () Bool)

(assert (=> b!3567682 (=> (not res!1438324) (not e!2206919))))

(declare-fun sepAndNonSepRulesDisjointChars!1700 (List!37604 List!37604) Bool)

(assert (=> b!3567682 (= res!1438324 (sepAndNonSepRulesDisjointChars!1700 rules!2135 rules!2135))))

(declare-fun b!3567683 () Bool)

(assert (=> b!3567683 (= e!2206932 false)))

(declare-fun b!3567684 () Bool)

(declare-fun res!1438340 () Bool)

(assert (=> b!3567684 (=> (not res!1438340) (not e!2206919))))

(assert (=> b!3567684 (= res!1438340 (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3567685 () Bool)

(declare-fun res!1438336 () Bool)

(assert (=> b!3567685 (=> (not res!1438336) (not e!2206919))))

(assert (=> b!3567685 (= res!1438336 (and (not ((_ is Nil!37481) tokens!494)) (not ((_ is Nil!37481) (t!288746 tokens!494)))))))

(assert (=> b!3567686 (= e!2206934 (and tp!1093250 tp!1093245))))

(declare-fun b!3567687 () Bool)

(declare-fun Unit!53460 () Unit!53455)

(assert (=> b!3567687 (= e!2206929 Unit!53460)))

(declare-fun b!3567688 () Bool)

(assert (=> b!3567688 (= e!2206921 false)))

(declare-fun b!3567689 () Bool)

(assert (=> b!3567689 (= e!2206906 e!2206920)))

(declare-fun res!1438346 () Bool)

(assert (=> b!3567689 (=> (not res!1438346) (not e!2206920))))

(assert (=> b!3567689 (= res!1438346 (matchR!4849 (regex!5506 lt!1222156) lt!1222190))))

(assert (=> b!3567689 (= lt!1222156 (get!12059 lt!1222188))))

(assert (= (and start!330298 res!1438344) b!3567643))

(assert (= (and b!3567643 res!1438328) b!3567656))

(assert (= (and b!3567656 res!1438326) b!3567680))

(assert (= (and b!3567680 res!1438348) b!3567684))

(assert (= (and b!3567684 res!1438340) b!3567659))

(assert (= (and b!3567659 res!1438327) b!3567655))

(assert (= (and b!3567655 res!1438343) b!3567682))

(assert (= (and b!3567682 res!1438324) b!3567685))

(assert (= (and b!3567685 res!1438336) b!3567646))

(assert (= (and b!3567646 (not res!1438351)) b!3567670))

(assert (= (and b!3567670 (not res!1438341)) b!3567662))

(assert (= (and b!3567662 (not res!1438337)) b!3567654))

(assert (= (and b!3567654 (not res!1438345)) b!3567667))

(assert (= (and b!3567667 (not res!1438342)) b!3567676))

(assert (= (and b!3567676 (not res!1438353)) b!3567661))

(assert (= (and b!3567661 (not res!1438350)) b!3567671))

(assert (= (and b!3567671 (not res!1438323)) b!3567678))

(assert (= (and b!3567678 res!1438349) b!3567650))

(assert (= (and b!3567650 res!1438354) b!3567651))

(assert (= (and b!3567678 res!1438347) b!3567689))

(assert (= (and b!3567689 res!1438346) b!3567645))

(assert (= (and b!3567678 c!618260) b!3567644))

(assert (= (and b!3567678 (not c!618260)) b!3567672))

(assert (= (and b!3567644 res!1438332) b!3567683))

(assert (= (and b!3567678 res!1438355) b!3567649))

(assert (= (and b!3567649 res!1438325) b!3567673))

(assert (= (and b!3567678 (not res!1438338)) b!3567666))

(assert (= (and b!3567666 (not res!1438331)) b!3567665))

(assert (= (and b!3567678 res!1438335) b!3567677))

(assert (= (and b!3567677 res!1438330) b!3567642))

(assert (= (and b!3567678 c!618261) b!3567641))

(assert (= (and b!3567678 (not c!618261)) b!3567687))

(assert (= (and b!3567641 res!1438333) b!3567688))

(assert (= (and b!3567678 (not res!1438322)) b!3567647))

(assert (= (and b!3567647 (not res!1438321)) b!3567652))

(assert (= (and b!3567652 (not res!1438339)) b!3567681))

(assert (= (and b!3567681 (not res!1438329)) b!3567648))

(assert (= (and b!3567648 (not res!1438334)) b!3567657))

(assert (= (and b!3567657 (not res!1438352)) b!3567664))

(assert (= b!3567669 b!3567686))

(assert (= b!3567653 b!3567669))

(assert (= (and start!330298 ((_ is Cons!37480) rules!2135)) b!3567653))

(assert (= b!3567668 b!3567660))

(assert (= b!3567675 b!3567668))

(assert (= b!3567679 b!3567675))

(assert (= (and start!330298 ((_ is Cons!37481) tokens!494)) b!3567679))

(assert (= b!3567663 b!3567674))

(assert (= b!3567658 b!3567663))

(assert (= start!330298 b!3567658))

(declare-fun m!4054317 () Bool)

(assert (=> b!3567689 m!4054317))

(declare-fun m!4054319 () Bool)

(assert (=> b!3567689 m!4054319))

(declare-fun m!4054321 () Bool)

(assert (=> b!3567667 m!4054321))

(declare-fun m!4054323 () Bool)

(assert (=> b!3567667 m!4054323))

(declare-fun m!4054325 () Bool)

(assert (=> b!3567662 m!4054325))

(declare-fun m!4054327 () Bool)

(assert (=> b!3567681 m!4054327))

(declare-fun m!4054329 () Bool)

(assert (=> b!3567658 m!4054329))

(declare-fun m!4054331 () Bool)

(assert (=> b!3567648 m!4054331))

(declare-fun m!4054333 () Bool)

(assert (=> b!3567643 m!4054333))

(declare-fun m!4054335 () Bool)

(assert (=> b!3567678 m!4054335))

(declare-fun m!4054337 () Bool)

(assert (=> b!3567678 m!4054337))

(declare-fun m!4054339 () Bool)

(assert (=> b!3567678 m!4054339))

(declare-fun m!4054341 () Bool)

(assert (=> b!3567678 m!4054341))

(declare-fun m!4054343 () Bool)

(assert (=> b!3567678 m!4054343))

(declare-fun m!4054345 () Bool)

(assert (=> b!3567678 m!4054345))

(declare-fun m!4054347 () Bool)

(assert (=> b!3567678 m!4054347))

(declare-fun m!4054349 () Bool)

(assert (=> b!3567678 m!4054349))

(declare-fun m!4054351 () Bool)

(assert (=> b!3567678 m!4054351))

(declare-fun m!4054353 () Bool)

(assert (=> b!3567678 m!4054353))

(declare-fun m!4054355 () Bool)

(assert (=> b!3567678 m!4054355))

(declare-fun m!4054357 () Bool)

(assert (=> b!3567678 m!4054357))

(declare-fun m!4054359 () Bool)

(assert (=> b!3567678 m!4054359))

(declare-fun m!4054361 () Bool)

(assert (=> b!3567678 m!4054361))

(declare-fun m!4054363 () Bool)

(assert (=> b!3567678 m!4054363))

(declare-fun m!4054365 () Bool)

(assert (=> b!3567678 m!4054365))

(declare-fun m!4054367 () Bool)

(assert (=> b!3567678 m!4054367))

(declare-fun m!4054369 () Bool)

(assert (=> b!3567678 m!4054369))

(declare-fun m!4054371 () Bool)

(assert (=> b!3567678 m!4054371))

(declare-fun m!4054373 () Bool)

(assert (=> b!3567678 m!4054373))

(declare-fun m!4054375 () Bool)

(assert (=> b!3567678 m!4054375))

(declare-fun m!4054377 () Bool)

(assert (=> b!3567678 m!4054377))

(declare-fun m!4054379 () Bool)

(assert (=> b!3567678 m!4054379))

(declare-fun m!4054381 () Bool)

(assert (=> b!3567678 m!4054381))

(declare-fun m!4054383 () Bool)

(assert (=> b!3567678 m!4054383))

(declare-fun m!4054385 () Bool)

(assert (=> b!3567678 m!4054385))

(declare-fun m!4054387 () Bool)

(assert (=> b!3567678 m!4054387))

(declare-fun m!4054389 () Bool)

(assert (=> b!3567678 m!4054389))

(declare-fun m!4054391 () Bool)

(assert (=> b!3567678 m!4054391))

(declare-fun m!4054393 () Bool)

(assert (=> b!3567678 m!4054393))

(assert (=> b!3567678 m!4054383))

(declare-fun m!4054395 () Bool)

(assert (=> b!3567678 m!4054395))

(declare-fun m!4054397 () Bool)

(assert (=> b!3567678 m!4054397))

(declare-fun m!4054399 () Bool)

(assert (=> b!3567678 m!4054399))

(declare-fun m!4054401 () Bool)

(assert (=> b!3567678 m!4054401))

(declare-fun m!4054403 () Bool)

(assert (=> b!3567678 m!4054403))

(declare-fun m!4054405 () Bool)

(assert (=> b!3567678 m!4054405))

(declare-fun m!4054407 () Bool)

(assert (=> b!3567678 m!4054407))

(declare-fun m!4054409 () Bool)

(assert (=> b!3567678 m!4054409))

(declare-fun m!4054411 () Bool)

(assert (=> b!3567678 m!4054411))

(declare-fun m!4054413 () Bool)

(assert (=> b!3567678 m!4054413))

(declare-fun m!4054415 () Bool)

(assert (=> b!3567678 m!4054415))

(assert (=> b!3567678 m!4054351))

(assert (=> b!3567678 m!4054337))

(declare-fun m!4054417 () Bool)

(assert (=> b!3567678 m!4054417))

(declare-fun m!4054419 () Bool)

(assert (=> b!3567678 m!4054419))

(declare-fun m!4054421 () Bool)

(assert (=> b!3567678 m!4054421))

(declare-fun m!4054423 () Bool)

(assert (=> b!3567678 m!4054423))

(declare-fun m!4054425 () Bool)

(assert (=> b!3567678 m!4054425))

(declare-fun m!4054427 () Bool)

(assert (=> b!3567663 m!4054427))

(declare-fun m!4054429 () Bool)

(assert (=> b!3567663 m!4054429))

(declare-fun m!4054431 () Bool)

(assert (=> b!3567664 m!4054431))

(declare-fun m!4054433 () Bool)

(assert (=> b!3567682 m!4054433))

(declare-fun m!4054435 () Bool)

(assert (=> b!3567668 m!4054435))

(declare-fun m!4054437 () Bool)

(assert (=> b!3567668 m!4054437))

(declare-fun m!4054439 () Bool)

(assert (=> b!3567644 m!4054439))

(declare-fun m!4054441 () Bool)

(assert (=> b!3567644 m!4054441))

(declare-fun m!4054443 () Bool)

(assert (=> b!3567661 m!4054443))

(assert (=> b!3567661 m!4054443))

(declare-fun m!4054445 () Bool)

(assert (=> b!3567661 m!4054445))

(declare-fun m!4054447 () Bool)

(assert (=> b!3567669 m!4054447))

(declare-fun m!4054449 () Bool)

(assert (=> b!3567669 m!4054449))

(declare-fun m!4054451 () Bool)

(assert (=> b!3567671 m!4054451))

(declare-fun m!4054453 () Bool)

(assert (=> b!3567671 m!4054453))

(declare-fun m!4054455 () Bool)

(assert (=> b!3567665 m!4054455))

(declare-fun m!4054457 () Bool)

(assert (=> b!3567670 m!4054457))

(assert (=> b!3567670 m!4054457))

(declare-fun m!4054459 () Bool)

(assert (=> b!3567670 m!4054459))

(declare-fun m!4054461 () Bool)

(assert (=> b!3567646 m!4054461))

(declare-fun m!4054463 () Bool)

(assert (=> b!3567646 m!4054463))

(declare-fun m!4054465 () Bool)

(assert (=> b!3567646 m!4054465))

(declare-fun m!4054467 () Bool)

(assert (=> b!3567646 m!4054467))

(declare-fun m!4054469 () Bool)

(assert (=> b!3567646 m!4054469))

(declare-fun m!4054471 () Bool)

(assert (=> b!3567684 m!4054471))

(declare-fun m!4054473 () Bool)

(assert (=> b!3567649 m!4054473))

(declare-fun m!4054475 () Bool)

(assert (=> b!3567675 m!4054475))

(declare-fun m!4054477 () Bool)

(assert (=> b!3567647 m!4054477))

(declare-fun m!4054479 () Bool)

(assert (=> b!3567655 m!4054479))

(declare-fun m!4054481 () Bool)

(assert (=> b!3567666 m!4054481))

(assert (=> b!3567657 m!4054441))

(declare-fun m!4054483 () Bool)

(assert (=> b!3567657 m!4054483))

(declare-fun m!4054485 () Bool)

(assert (=> b!3567657 m!4054485))

(declare-fun m!4054487 () Bool)

(assert (=> b!3567676 m!4054487))

(declare-fun m!4054489 () Bool)

(assert (=> b!3567676 m!4054489))

(declare-fun m!4054491 () Bool)

(assert (=> b!3567676 m!4054491))

(declare-fun m!4054493 () Bool)

(assert (=> b!3567676 m!4054493))

(declare-fun m!4054495 () Bool)

(assert (=> b!3567676 m!4054495))

(declare-fun m!4054497 () Bool)

(assert (=> b!3567676 m!4054497))

(assert (=> b!3567676 m!4054487))

(declare-fun m!4054499 () Bool)

(assert (=> b!3567676 m!4054499))

(assert (=> b!3567676 m!4054491))

(declare-fun m!4054501 () Bool)

(assert (=> b!3567676 m!4054501))

(assert (=> b!3567676 m!4054495))

(declare-fun m!4054503 () Bool)

(assert (=> b!3567676 m!4054503))

(declare-fun m!4054505 () Bool)

(assert (=> b!3567676 m!4054505))

(assert (=> b!3567676 m!4054501))

(declare-fun m!4054507 () Bool)

(assert (=> start!330298 m!4054507))

(declare-fun m!4054509 () Bool)

(assert (=> b!3567680 m!4054509))

(assert (=> b!3567680 m!4054509))

(declare-fun m!4054511 () Bool)

(assert (=> b!3567680 m!4054511))

(declare-fun m!4054513 () Bool)

(assert (=> b!3567650 m!4054513))

(declare-fun m!4054515 () Bool)

(assert (=> b!3567650 m!4054515))

(declare-fun m!4054517 () Bool)

(assert (=> b!3567654 m!4054517))

(declare-fun m!4054519 () Bool)

(assert (=> b!3567654 m!4054519))

(declare-fun m!4054521 () Bool)

(assert (=> b!3567654 m!4054521))

(declare-fun m!4054523 () Bool)

(assert (=> b!3567677 m!4054523))

(declare-fun m!4054525 () Bool)

(assert (=> b!3567677 m!4054525))

(declare-fun m!4054527 () Bool)

(assert (=> b!3567679 m!4054527))

(declare-fun m!4054529 () Bool)

(assert (=> b!3567652 m!4054529))

(declare-fun m!4054531 () Bool)

(assert (=> b!3567652 m!4054531))

(declare-fun m!4054533 () Bool)

(assert (=> b!3567656 m!4054533))

(declare-fun m!4054535 () Bool)

(assert (=> b!3567673 m!4054535))

(declare-fun m!4054537 () Bool)

(assert (=> b!3567641 m!4054537))

(declare-fun m!4054539 () Bool)

(assert (=> b!3567641 m!4054539))

(check-sat (not b_next!92039) (not b!3567665) (not b_next!92043) (not b!3567698) (not b!3567678) (not b!3567679) (not b!3567673) (not b_next!92035) b_and!256675 (not b!3567653) (not b!3567647) (not b_next!92041) (not b_next!92037) b_and!256683 (not b!3567658) b_and!256681 (not b!3567664) (not b!3567677) (not b!3567689) (not b!3567663) (not b!3567670) (not b!3567657) (not b!3567675) (not b!3567661) (not b!3567656) (not b!3567666) (not b!3567680) (not b!3567650) (not b!3567668) (not b!3567652) (not b!3567644) (not b!3567643) (not b!3567684) (not b!3567649) b_and!256677 (not b_next!92033) (not b!3567667) (not b!3567655) (not b!3567669) (not b!3567654) (not b!3567648) (not b!3567641) (not start!330298) (not b!3567646) b_and!256679 (not b!3567676) (not b!3567662) (not b!3567671) (not b!3567681) (not b!3567682) b_and!256685)
(check-sat (not b_next!92039) b_and!256681 (not b_next!92043) (not b_next!92035) b_and!256675 (not b_next!92041) b_and!256679 b_and!256685 (not b_next!92037) b_and!256683 b_and!256677 (not b_next!92033))
(get-model)

(declare-fun b!3567713 () Bool)

(declare-fun res!1438369 () Bool)

(declare-fun e!2206952 () Bool)

(assert (=> b!3567713 (=> res!1438369 e!2206952)))

(assert (=> b!3567713 (= res!1438369 (not ((_ is IntegerValue!17210) (value!177381 (h!42901 tokens!494)))))))

(declare-fun e!2206953 () Bool)

(assert (=> b!3567713 (= e!2206953 e!2206952)))

(declare-fun b!3567714 () Bool)

(declare-fun inv!15 (TokenValue!5736) Bool)

(assert (=> b!3567714 (= e!2206952 (inv!15 (value!177381 (h!42901 tokens!494))))))

(declare-fun b!3567715 () Bool)

(declare-fun e!2206951 () Bool)

(declare-fun inv!16 (TokenValue!5736) Bool)

(assert (=> b!3567715 (= e!2206951 (inv!16 (value!177381 (h!42901 tokens!494))))))

(declare-fun d!1051302 () Bool)

(declare-fun c!618270 () Bool)

(assert (=> d!1051302 (= c!618270 ((_ is IntegerValue!17208) (value!177381 (h!42901 tokens!494))))))

(assert (=> d!1051302 (= (inv!21 (value!177381 (h!42901 tokens!494))) e!2206951)))

(declare-fun b!3567716 () Bool)

(assert (=> b!3567716 (= e!2206951 e!2206953)))

(declare-fun c!618269 () Bool)

(assert (=> b!3567716 (= c!618269 ((_ is IntegerValue!17209) (value!177381 (h!42901 tokens!494))))))

(declare-fun b!3567717 () Bool)

(declare-fun inv!17 (TokenValue!5736) Bool)

(assert (=> b!3567717 (= e!2206953 (inv!17 (value!177381 (h!42901 tokens!494))))))

(assert (= (and d!1051302 c!618270) b!3567715))

(assert (= (and d!1051302 (not c!618270)) b!3567716))

(assert (= (and b!3567716 c!618269) b!3567717))

(assert (= (and b!3567716 (not c!618269)) b!3567713))

(assert (= (and b!3567713 (not res!1438369)) b!3567714))

(declare-fun m!4054547 () Bool)

(assert (=> b!3567714 m!4054547))

(declare-fun m!4054549 () Bool)

(assert (=> b!3567715 m!4054549))

(declare-fun m!4054551 () Bool)

(assert (=> b!3567717 m!4054551))

(assert (=> b!3567675 d!1051302))

(declare-fun d!1051304 () Bool)

(declare-fun lt!1222198 () Bool)

(declare-fun isEmpty!22001 (List!37605) Bool)

(declare-fun list!13745 (BalanceConc!22390) List!37605)

(assert (=> d!1051304 (= lt!1222198 (isEmpty!22001 (list!13745 (_1!21823 (lex!2421 thiss!18206 rules!2135 lt!1222146)))))))

(declare-fun isEmpty!22002 (Conc!11388) Bool)

(assert (=> d!1051304 (= lt!1222198 (isEmpty!22002 (c!618264 (_1!21823 (lex!2421 thiss!18206 rules!2135 lt!1222146)))))))

(assert (=> d!1051304 (= (isEmpty!21996 (_1!21823 (lex!2421 thiss!18206 rules!2135 lt!1222146))) lt!1222198)))

(declare-fun bs!568995 () Bool)

(assert (= bs!568995 d!1051304))

(declare-fun m!4054553 () Bool)

(assert (=> bs!568995 m!4054553))

(assert (=> bs!568995 m!4054553))

(declare-fun m!4054555 () Bool)

(assert (=> bs!568995 m!4054555))

(declare-fun m!4054557 () Bool)

(assert (=> bs!568995 m!4054557))

(assert (=> b!3567654 d!1051304))

(declare-fun d!1051306 () Bool)

(declare-fun e!2206976 () Bool)

(assert (=> d!1051306 e!2206976))

(declare-fun res!1438395 () Bool)

(assert (=> d!1051306 (=> (not res!1438395) (not e!2206976))))

(declare-fun e!2206977 () Bool)

(assert (=> d!1051306 (= res!1438395 e!2206977)))

(declare-fun c!618276 () Bool)

(declare-fun lt!1222210 () tuple2!37378)

(assert (=> d!1051306 (= c!618276 (> (size!28565 (_1!21823 lt!1222210)) 0))))

(declare-fun lexTailRecV2!1102 (LexerInterface!5095 List!37604 BalanceConc!22388 BalanceConc!22388 BalanceConc!22388 BalanceConc!22390) tuple2!37378)

(assert (=> d!1051306 (= lt!1222210 (lexTailRecV2!1102 thiss!18206 rules!2135 lt!1222146 (BalanceConc!22389 Empty!11387) lt!1222146 (BalanceConc!22391 Empty!11388)))))

(assert (=> d!1051306 (= (lex!2421 thiss!18206 rules!2135 lt!1222146) lt!1222210)))

(declare-fun b!3567752 () Bool)

(declare-fun res!1438396 () Bool)

(assert (=> b!3567752 (=> (not res!1438396) (not e!2206976))))

(declare-datatypes ((tuple2!37382 0))(
  ( (tuple2!37383 (_1!21825 List!37605) (_2!21825 List!37603)) )
))
(declare-fun lexList!1494 (LexerInterface!5095 List!37604 List!37603) tuple2!37382)

(assert (=> b!3567752 (= res!1438396 (= (list!13745 (_1!21823 lt!1222210)) (_1!21825 (lexList!1494 thiss!18206 rules!2135 (list!13743 lt!1222146)))))))

(declare-fun b!3567753 () Bool)

(declare-fun e!2206975 () Bool)

(assert (=> b!3567753 (= e!2206975 (not (isEmpty!21996 (_1!21823 lt!1222210))))))

(declare-fun b!3567754 () Bool)

(assert (=> b!3567754 (= e!2206977 (= (_2!21823 lt!1222210) lt!1222146))))

(declare-fun b!3567755 () Bool)

(assert (=> b!3567755 (= e!2206976 (= (list!13743 (_2!21823 lt!1222210)) (_2!21825 (lexList!1494 thiss!18206 rules!2135 (list!13743 lt!1222146)))))))

(declare-fun b!3567756 () Bool)

(assert (=> b!3567756 (= e!2206977 e!2206975)))

(declare-fun res!1438394 () Bool)

(declare-fun size!28567 (BalanceConc!22388) Int)

(assert (=> b!3567756 (= res!1438394 (< (size!28567 (_2!21823 lt!1222210)) (size!28567 lt!1222146)))))

(assert (=> b!3567756 (=> (not res!1438394) (not e!2206975))))

(assert (= (and d!1051306 c!618276) b!3567756))

(assert (= (and d!1051306 (not c!618276)) b!3567754))

(assert (= (and b!3567756 res!1438394) b!3567753))

(assert (= (and d!1051306 res!1438395) b!3567752))

(assert (= (and b!3567752 res!1438396) b!3567755))

(declare-fun m!4054595 () Bool)

(assert (=> b!3567753 m!4054595))

(declare-fun m!4054597 () Bool)

(assert (=> b!3567756 m!4054597))

(declare-fun m!4054599 () Bool)

(assert (=> b!3567756 m!4054599))

(declare-fun m!4054601 () Bool)

(assert (=> b!3567752 m!4054601))

(declare-fun m!4054603 () Bool)

(assert (=> b!3567752 m!4054603))

(assert (=> b!3567752 m!4054603))

(declare-fun m!4054605 () Bool)

(assert (=> b!3567752 m!4054605))

(declare-fun m!4054607 () Bool)

(assert (=> d!1051306 m!4054607))

(declare-fun m!4054609 () Bool)

(assert (=> d!1051306 m!4054609))

(declare-fun m!4054611 () Bool)

(assert (=> b!3567755 m!4054611))

(assert (=> b!3567755 m!4054603))

(assert (=> b!3567755 m!4054603))

(assert (=> b!3567755 m!4054605))

(assert (=> b!3567654 d!1051306))

(declare-fun d!1051314 () Bool)

(declare-fun fromListB!1873 (List!37603) BalanceConc!22388)

(assert (=> d!1051314 (= (seqFromList!4065 lt!1222162) (fromListB!1873 lt!1222162))))

(declare-fun bs!568998 () Bool)

(assert (= bs!568998 d!1051314))

(declare-fun m!4054617 () Bool)

(assert (=> bs!568998 m!4054617))

(assert (=> b!3567654 d!1051314))

(declare-fun d!1051318 () Bool)

(declare-fun c!618280 () Bool)

(assert (=> d!1051318 (= c!618280 ((_ is Cons!37481) tokens!494))))

(declare-fun e!2206980 () List!37603)

(assert (=> d!1051318 (= (printWithSeparatorTokenList!382 thiss!18206 tokens!494 separatorToken!241) e!2206980)))

(declare-fun b!3567761 () Bool)

(assert (=> b!3567761 (= e!2206980 (++!9315 (++!9315 (list!13743 (charsOf!3520 (h!42901 tokens!494))) (list!13743 (charsOf!3520 separatorToken!241))) (printWithSeparatorTokenList!382 thiss!18206 (t!288746 tokens!494) separatorToken!241)))))

(declare-fun b!3567762 () Bool)

(assert (=> b!3567762 (= e!2206980 Nil!37479)))

(assert (= (and d!1051318 c!618280) b!3567761))

(assert (= (and d!1051318 (not c!618280)) b!3567762))

(assert (=> b!3567761 m!4054457))

(assert (=> b!3567761 m!4054487))

(declare-fun m!4054619 () Bool)

(assert (=> b!3567761 m!4054619))

(assert (=> b!3567761 m!4054505))

(declare-fun m!4054621 () Bool)

(assert (=> b!3567761 m!4054621))

(assert (=> b!3567761 m!4054487))

(assert (=> b!3567761 m!4054499))

(assert (=> b!3567761 m!4054459))

(assert (=> b!3567761 m!4054499))

(assert (=> b!3567761 m!4054619))

(assert (=> b!3567761 m!4054505))

(assert (=> b!3567761 m!4054457))

(assert (=> b!3567761 m!4054459))

(assert (=> b!3567676 d!1051318))

(declare-fun d!1051320 () Bool)

(declare-fun lt!1222218 () BalanceConc!22388)

(assert (=> d!1051320 (= (list!13743 lt!1222218) (originalCharacters!6220 separatorToken!241))))

(declare-fun dynLambda!16080 (Int TokenValue!5736) BalanceConc!22388)

(assert (=> d!1051320 (= lt!1222218 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (value!177381 separatorToken!241)))))

(assert (=> d!1051320 (= (charsOf!3520 separatorToken!241) lt!1222218)))

(declare-fun b_lambda!105051 () Bool)

(assert (=> (not b_lambda!105051) (not d!1051320)))

(declare-fun tb!203115 () Bool)

(declare-fun t!288749 () Bool)

(assert (=> (and b!3567660 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241)))) t!288749) tb!203115))

(declare-fun b!3567795 () Bool)

(declare-fun e!2206997 () Bool)

(declare-fun tp!1093257 () Bool)

(declare-fun inv!50754 (Conc!11387) Bool)

(assert (=> b!3567795 (= e!2206997 (and (inv!50754 (c!618263 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (value!177381 separatorToken!241)))) tp!1093257))))

(declare-fun result!247672 () Bool)

(declare-fun inv!50755 (BalanceConc!22388) Bool)

(assert (=> tb!203115 (= result!247672 (and (inv!50755 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (value!177381 separatorToken!241))) e!2206997))))

(assert (= tb!203115 b!3567795))

(declare-fun m!4054623 () Bool)

(assert (=> b!3567795 m!4054623))

(declare-fun m!4054625 () Bool)

(assert (=> tb!203115 m!4054625))

(assert (=> d!1051320 t!288749))

(declare-fun b_and!256687 () Bool)

(assert (= b_and!256677 (and (=> t!288749 result!247672) b_and!256687)))

(declare-fun t!288751 () Bool)

(declare-fun tb!203117 () Bool)

(assert (=> (and b!3567674 (= (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241)))) t!288751) tb!203117))

(declare-fun result!247676 () Bool)

(assert (= result!247676 result!247672))

(assert (=> d!1051320 t!288751))

(declare-fun b_and!256689 () Bool)

(assert (= b_and!256681 (and (=> t!288751 result!247676) b_and!256689)))

(declare-fun t!288753 () Bool)

(declare-fun tb!203119 () Bool)

(assert (=> (and b!3567686 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241)))) t!288753) tb!203119))

(declare-fun result!247678 () Bool)

(assert (= result!247678 result!247672))

(assert (=> d!1051320 t!288753))

(declare-fun b_and!256691 () Bool)

(assert (= b_and!256685 (and (=> t!288753 result!247678) b_and!256691)))

(declare-fun m!4054627 () Bool)

(assert (=> d!1051320 m!4054627))

(declare-fun m!4054629 () Bool)

(assert (=> d!1051320 m!4054629))

(assert (=> b!3567676 d!1051320))

(declare-fun d!1051322 () Bool)

(declare-fun list!13746 (Conc!11387) List!37603)

(assert (=> d!1051322 (= (list!13743 (charsOf!3520 (h!42901 (t!288746 tokens!494)))) (list!13746 (c!618263 (charsOf!3520 (h!42901 (t!288746 tokens!494))))))))

(declare-fun bs!568999 () Bool)

(assert (= bs!568999 d!1051322))

(declare-fun m!4054631 () Bool)

(assert (=> bs!568999 m!4054631))

(assert (=> b!3567676 d!1051322))

(declare-fun b!3567819 () Bool)

(declare-fun e!2207010 () List!37603)

(assert (=> b!3567819 (= e!2207010 (Cons!37479 (h!42899 (++!9315 lt!1222191 lt!1222190)) (++!9315 (t!288744 (++!9315 lt!1222191 lt!1222190)) (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241))))))

(declare-fun b!3567820 () Bool)

(declare-fun res!1438425 () Bool)

(declare-fun e!2207009 () Bool)

(assert (=> b!3567820 (=> (not res!1438425) (not e!2207009))))

(declare-fun lt!1222224 () List!37603)

(assert (=> b!3567820 (= res!1438425 (= (size!28564 lt!1222224) (+ (size!28564 (++!9315 lt!1222191 lt!1222190)) (size!28564 (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241)))))))

(declare-fun d!1051324 () Bool)

(assert (=> d!1051324 e!2207009))

(declare-fun res!1438426 () Bool)

(assert (=> d!1051324 (=> (not res!1438426) (not e!2207009))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5309 (List!37603) (InoxSet C!20716))

(assert (=> d!1051324 (= res!1438426 (= (content!5309 lt!1222224) ((_ map or) (content!5309 (++!9315 lt!1222191 lt!1222190)) (content!5309 (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241)))))))

(assert (=> d!1051324 (= lt!1222224 e!2207010)))

(declare-fun c!618292 () Bool)

(assert (=> d!1051324 (= c!618292 ((_ is Nil!37479) (++!9315 lt!1222191 lt!1222190)))))

(assert (=> d!1051324 (= (++!9315 (++!9315 lt!1222191 lt!1222190) (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241)) lt!1222224)))

(declare-fun b!3567821 () Bool)

(assert (=> b!3567821 (= e!2207009 (or (not (= (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241) Nil!37479)) (= lt!1222224 (++!9315 lt!1222191 lt!1222190))))))

(declare-fun b!3567818 () Bool)

(assert (=> b!3567818 (= e!2207010 (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241))))

(assert (= (and d!1051324 c!618292) b!3567818))

(assert (= (and d!1051324 (not c!618292)) b!3567819))

(assert (= (and d!1051324 res!1438426) b!3567820))

(assert (= (and b!3567820 res!1438425) b!3567821))

(assert (=> b!3567819 m!4054495))

(declare-fun m!4054649 () Bool)

(assert (=> b!3567819 m!4054649))

(declare-fun m!4054653 () Bool)

(assert (=> b!3567820 m!4054653))

(assert (=> b!3567820 m!4054501))

(declare-fun m!4054655 () Bool)

(assert (=> b!3567820 m!4054655))

(assert (=> b!3567820 m!4054495))

(declare-fun m!4054657 () Bool)

(assert (=> b!3567820 m!4054657))

(declare-fun m!4054659 () Bool)

(assert (=> d!1051324 m!4054659))

(assert (=> d!1051324 m!4054501))

(declare-fun m!4054661 () Bool)

(assert (=> d!1051324 m!4054661))

(assert (=> d!1051324 m!4054495))

(declare-fun m!4054663 () Bool)

(assert (=> d!1051324 m!4054663))

(assert (=> b!3567676 d!1051324))

(declare-fun b!3567823 () Bool)

(declare-fun e!2207012 () List!37603)

(assert (=> b!3567823 (= e!2207012 (Cons!37479 (h!42899 lt!1222191) (++!9315 (t!288744 lt!1222191) lt!1222190)))))

(declare-fun b!3567824 () Bool)

(declare-fun res!1438427 () Bool)

(declare-fun e!2207011 () Bool)

(assert (=> b!3567824 (=> (not res!1438427) (not e!2207011))))

(declare-fun lt!1222226 () List!37603)

(assert (=> b!3567824 (= res!1438427 (= (size!28564 lt!1222226) (+ (size!28564 lt!1222191) (size!28564 lt!1222190))))))

(declare-fun d!1051330 () Bool)

(assert (=> d!1051330 e!2207011))

(declare-fun res!1438428 () Bool)

(assert (=> d!1051330 (=> (not res!1438428) (not e!2207011))))

(assert (=> d!1051330 (= res!1438428 (= (content!5309 lt!1222226) ((_ map or) (content!5309 lt!1222191) (content!5309 lt!1222190))))))

(assert (=> d!1051330 (= lt!1222226 e!2207012)))

(declare-fun c!618293 () Bool)

(assert (=> d!1051330 (= c!618293 ((_ is Nil!37479) lt!1222191))))

(assert (=> d!1051330 (= (++!9315 lt!1222191 lt!1222190) lt!1222226)))

(declare-fun b!3567825 () Bool)

(assert (=> b!3567825 (= e!2207011 (or (not (= lt!1222190 Nil!37479)) (= lt!1222226 lt!1222191)))))

(declare-fun b!3567822 () Bool)

(assert (=> b!3567822 (= e!2207012 lt!1222190)))

(assert (= (and d!1051330 c!618293) b!3567822))

(assert (= (and d!1051330 (not c!618293)) b!3567823))

(assert (= (and d!1051330 res!1438428) b!3567824))

(assert (= (and b!3567824 res!1438427) b!3567825))

(declare-fun m!4054665 () Bool)

(assert (=> b!3567823 m!4054665))

(declare-fun m!4054667 () Bool)

(assert (=> b!3567824 m!4054667))

(assert (=> b!3567824 m!4054335))

(declare-fun m!4054669 () Bool)

(assert (=> b!3567824 m!4054669))

(declare-fun m!4054671 () Bool)

(assert (=> d!1051330 m!4054671))

(declare-fun m!4054673 () Bool)

(assert (=> d!1051330 m!4054673))

(declare-fun m!4054675 () Bool)

(assert (=> d!1051330 m!4054675))

(assert (=> b!3567676 d!1051330))

(declare-fun b!3567827 () Bool)

(declare-fun e!2207014 () List!37603)

(assert (=> b!3567827 (= e!2207014 (Cons!37479 (h!42899 lt!1222190) (++!9315 (t!288744 lt!1222190) lt!1222167)))))

(declare-fun b!3567828 () Bool)

(declare-fun res!1438429 () Bool)

(declare-fun e!2207013 () Bool)

(assert (=> b!3567828 (=> (not res!1438429) (not e!2207013))))

(declare-fun lt!1222227 () List!37603)

(assert (=> b!3567828 (= res!1438429 (= (size!28564 lt!1222227) (+ (size!28564 lt!1222190) (size!28564 lt!1222167))))))

(declare-fun d!1051332 () Bool)

(assert (=> d!1051332 e!2207013))

(declare-fun res!1438430 () Bool)

(assert (=> d!1051332 (=> (not res!1438430) (not e!2207013))))

(assert (=> d!1051332 (= res!1438430 (= (content!5309 lt!1222227) ((_ map or) (content!5309 lt!1222190) (content!5309 lt!1222167))))))

(assert (=> d!1051332 (= lt!1222227 e!2207014)))

(declare-fun c!618294 () Bool)

(assert (=> d!1051332 (= c!618294 ((_ is Nil!37479) lt!1222190))))

(assert (=> d!1051332 (= (++!9315 lt!1222190 lt!1222167) lt!1222227)))

(declare-fun b!3567829 () Bool)

(assert (=> b!3567829 (= e!2207013 (or (not (= lt!1222167 Nil!37479)) (= lt!1222227 lt!1222190)))))

(declare-fun b!3567826 () Bool)

(assert (=> b!3567826 (= e!2207014 lt!1222167)))

(assert (= (and d!1051332 c!618294) b!3567826))

(assert (= (and d!1051332 (not c!618294)) b!3567827))

(assert (= (and d!1051332 res!1438430) b!3567828))

(assert (= (and b!3567828 res!1438429) b!3567829))

(declare-fun m!4054677 () Bool)

(assert (=> b!3567827 m!4054677))

(declare-fun m!4054679 () Bool)

(assert (=> b!3567828 m!4054679))

(assert (=> b!3567828 m!4054669))

(declare-fun m!4054681 () Bool)

(assert (=> b!3567828 m!4054681))

(declare-fun m!4054683 () Bool)

(assert (=> d!1051332 m!4054683))

(assert (=> d!1051332 m!4054675))

(declare-fun m!4054685 () Bool)

(assert (=> d!1051332 m!4054685))

(assert (=> b!3567676 d!1051332))

(declare-fun d!1051334 () Bool)

(declare-fun c!618295 () Bool)

(assert (=> d!1051334 (= c!618295 ((_ is Cons!37481) (t!288746 (t!288746 tokens!494))))))

(declare-fun e!2207015 () List!37603)

(assert (=> d!1051334 (= (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241) e!2207015)))

(declare-fun b!3567830 () Bool)

(assert (=> b!3567830 (= e!2207015 (++!9315 (++!9315 (list!13743 (charsOf!3520 (h!42901 (t!288746 (t!288746 tokens!494))))) (list!13743 (charsOf!3520 separatorToken!241))) (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 (t!288746 tokens!494))) separatorToken!241)))))

(declare-fun b!3567831 () Bool)

(assert (=> b!3567831 (= e!2207015 Nil!37479)))

(assert (= (and d!1051334 c!618295) b!3567830))

(assert (= (and d!1051334 (not c!618295)) b!3567831))

(declare-fun m!4054687 () Bool)

(assert (=> b!3567830 m!4054687))

(assert (=> b!3567830 m!4054487))

(declare-fun m!4054689 () Bool)

(assert (=> b!3567830 m!4054689))

(declare-fun m!4054691 () Bool)

(assert (=> b!3567830 m!4054691))

(declare-fun m!4054693 () Bool)

(assert (=> b!3567830 m!4054693))

(assert (=> b!3567830 m!4054487))

(assert (=> b!3567830 m!4054499))

(declare-fun m!4054695 () Bool)

(assert (=> b!3567830 m!4054695))

(assert (=> b!3567830 m!4054499))

(assert (=> b!3567830 m!4054689))

(assert (=> b!3567830 m!4054691))

(assert (=> b!3567830 m!4054687))

(assert (=> b!3567830 m!4054695))

(assert (=> b!3567676 d!1051334))

(declare-fun d!1051336 () Bool)

(declare-fun c!618296 () Bool)

(assert (=> d!1051336 (= c!618296 ((_ is Cons!37481) (t!288746 tokens!494)))))

(declare-fun e!2207020 () List!37603)

(assert (=> d!1051336 (= (printWithSeparatorTokenList!382 thiss!18206 (t!288746 tokens!494) separatorToken!241) e!2207020)))

(declare-fun b!3567836 () Bool)

(assert (=> b!3567836 (= e!2207020 (++!9315 (++!9315 (list!13743 (charsOf!3520 (h!42901 (t!288746 tokens!494)))) (list!13743 (charsOf!3520 separatorToken!241))) (printWithSeparatorTokenList!382 thiss!18206 (t!288746 (t!288746 tokens!494)) separatorToken!241)))))

(declare-fun b!3567837 () Bool)

(assert (=> b!3567837 (= e!2207020 Nil!37479)))

(assert (= (and d!1051336 c!618296) b!3567836))

(assert (= (and d!1051336 (not c!618296)) b!3567837))

(assert (=> b!3567836 m!4054491))

(assert (=> b!3567836 m!4054487))

(declare-fun m!4054697 () Bool)

(assert (=> b!3567836 m!4054697))

(assert (=> b!3567836 m!4054495))

(declare-fun m!4054699 () Bool)

(assert (=> b!3567836 m!4054699))

(assert (=> b!3567836 m!4054487))

(assert (=> b!3567836 m!4054499))

(assert (=> b!3567836 m!4054493))

(assert (=> b!3567836 m!4054499))

(assert (=> b!3567836 m!4054697))

(assert (=> b!3567836 m!4054495))

(assert (=> b!3567836 m!4054491))

(assert (=> b!3567836 m!4054493))

(assert (=> b!3567676 d!1051336))

(declare-fun d!1051338 () Bool)

(assert (=> d!1051338 (= (list!13743 (charsOf!3520 separatorToken!241)) (list!13746 (c!618263 (charsOf!3520 separatorToken!241))))))

(declare-fun bs!569001 () Bool)

(assert (= bs!569001 d!1051338))

(declare-fun m!4054701 () Bool)

(assert (=> bs!569001 m!4054701))

(assert (=> b!3567676 d!1051338))

(declare-fun d!1051340 () Bool)

(declare-fun lt!1222231 () BalanceConc!22388)

(assert (=> d!1051340 (= (list!13743 lt!1222231) (originalCharacters!6220 (h!42901 (t!288746 tokens!494))))))

(assert (=> d!1051340 (= lt!1222231 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (value!177381 (h!42901 (t!288746 tokens!494)))))))

(assert (=> d!1051340 (= (charsOf!3520 (h!42901 (t!288746 tokens!494))) lt!1222231)))

(declare-fun b_lambda!105053 () Bool)

(assert (=> (not b_lambda!105053) (not d!1051340)))

(declare-fun t!288755 () Bool)

(declare-fun tb!203121 () Bool)

(assert (=> (and b!3567660 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288755) tb!203121))

(declare-fun b!3567840 () Bool)

(declare-fun e!2207023 () Bool)

(declare-fun tp!1093258 () Bool)

(assert (=> b!3567840 (= e!2207023 (and (inv!50754 (c!618263 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (value!177381 (h!42901 (t!288746 tokens!494)))))) tp!1093258))))

(declare-fun result!247680 () Bool)

(assert (=> tb!203121 (= result!247680 (and (inv!50755 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (value!177381 (h!42901 (t!288746 tokens!494))))) e!2207023))))

(assert (= tb!203121 b!3567840))

(declare-fun m!4054709 () Bool)

(assert (=> b!3567840 m!4054709))

(declare-fun m!4054711 () Bool)

(assert (=> tb!203121 m!4054711))

(assert (=> d!1051340 t!288755))

(declare-fun b_and!256693 () Bool)

(assert (= b_and!256687 (and (=> t!288755 result!247680) b_and!256693)))

(declare-fun tb!203123 () Bool)

(declare-fun t!288757 () Bool)

(assert (=> (and b!3567674 (= (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288757) tb!203123))

(declare-fun result!247682 () Bool)

(assert (= result!247682 result!247680))

(assert (=> d!1051340 t!288757))

(declare-fun b_and!256695 () Bool)

(assert (= b_and!256689 (and (=> t!288757 result!247682) b_and!256695)))

(declare-fun tb!203125 () Bool)

(declare-fun t!288759 () Bool)

(assert (=> (and b!3567686 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288759) tb!203125))

(declare-fun result!247684 () Bool)

(assert (= result!247684 result!247680))

(assert (=> d!1051340 t!288759))

(declare-fun b_and!256697 () Bool)

(assert (= b_and!256691 (and (=> t!288759 result!247684) b_and!256697)))

(declare-fun m!4054713 () Bool)

(assert (=> d!1051340 m!4054713))

(declare-fun m!4054715 () Bool)

(assert (=> d!1051340 m!4054715))

(assert (=> b!3567676 d!1051340))

(declare-fun d!1051346 () Bool)

(declare-fun res!1438441 () Bool)

(declare-fun e!2207032 () Bool)

(assert (=> d!1051346 (=> res!1438441 e!2207032)))

(assert (=> d!1051346 (= res!1438441 ((_ is Nil!37481) tokens!494))))

(assert (=> d!1051346 (= (forall!8102 tokens!494 lambda!123390) e!2207032)))

(declare-fun b!3567853 () Bool)

(declare-fun e!2207035 () Bool)

(assert (=> b!3567853 (= e!2207032 e!2207035)))

(declare-fun res!1438444 () Bool)

(assert (=> b!3567853 (=> (not res!1438444) (not e!2207035))))

(declare-fun dynLambda!16081 (Int Token!10378) Bool)

(assert (=> b!3567853 (= res!1438444 (dynLambda!16081 lambda!123390 (h!42901 tokens!494)))))

(declare-fun b!3567856 () Bool)

(assert (=> b!3567856 (= e!2207035 (forall!8102 (t!288746 tokens!494) lambda!123390))))

(assert (= (and d!1051346 (not res!1438441)) b!3567853))

(assert (= (and b!3567853 res!1438444) b!3567856))

(declare-fun b_lambda!105055 () Bool)

(assert (=> (not b_lambda!105055) (not b!3567853)))

(declare-fun m!4054717 () Bool)

(assert (=> b!3567853 m!4054717))

(declare-fun m!4054719 () Bool)

(assert (=> b!3567856 m!4054719))

(assert (=> b!3567655 d!1051346))

(declare-fun b!3567905 () Bool)

(declare-fun e!2207064 () Bool)

(declare-fun derivativeStep!3087 (Regex!10265 C!20716) Regex!10265)

(declare-fun tail!5523 (List!37603) List!37603)

(assert (=> b!3567905 (= e!2207064 (matchR!4849 (derivativeStep!3087 (regex!5506 lt!1222180) (head!7431 lt!1222162)) (tail!5523 lt!1222162)))))

(declare-fun b!3567906 () Bool)

(declare-fun e!2207067 () Bool)

(assert (=> b!3567906 (= e!2207067 (not (= (head!7431 lt!1222162) (c!618262 (regex!5506 lt!1222180)))))))

(declare-fun b!3567907 () Bool)

(declare-fun res!1438477 () Bool)

(declare-fun e!2207069 () Bool)

(assert (=> b!3567907 (=> res!1438477 e!2207069)))

(assert (=> b!3567907 (= res!1438477 (not ((_ is ElementMatch!10265) (regex!5506 lt!1222180))))))

(declare-fun e!2207066 () Bool)

(assert (=> b!3567907 (= e!2207066 e!2207069)))

(declare-fun b!3567908 () Bool)

(declare-fun e!2207063 () Bool)

(declare-fun lt!1222235 () Bool)

(declare-fun call!258630 () Bool)

(assert (=> b!3567908 (= e!2207063 (= lt!1222235 call!258630))))

(declare-fun b!3567909 () Bool)

(declare-fun nullable!3534 (Regex!10265) Bool)

(assert (=> b!3567909 (= e!2207064 (nullable!3534 (regex!5506 lt!1222180)))))

(declare-fun b!3567910 () Bool)

(declare-fun res!1438476 () Bool)

(assert (=> b!3567910 (=> res!1438476 e!2207067)))

(assert (=> b!3567910 (= res!1438476 (not (isEmpty!21995 (tail!5523 lt!1222162))))))

(declare-fun b!3567912 () Bool)

(declare-fun e!2207065 () Bool)

(assert (=> b!3567912 (= e!2207065 (= (head!7431 lt!1222162) (c!618262 (regex!5506 lt!1222180))))))

(declare-fun b!3567913 () Bool)

(declare-fun e!2207068 () Bool)

(assert (=> b!3567913 (= e!2207068 e!2207067)))

(declare-fun res!1438474 () Bool)

(assert (=> b!3567913 (=> res!1438474 e!2207067)))

(assert (=> b!3567913 (= res!1438474 call!258630)))

(declare-fun b!3567914 () Bool)

(assert (=> b!3567914 (= e!2207066 (not lt!1222235))))

(declare-fun b!3567911 () Bool)

(declare-fun res!1438472 () Bool)

(assert (=> b!3567911 (=> (not res!1438472) (not e!2207065))))

(assert (=> b!3567911 (= res!1438472 (isEmpty!21995 (tail!5523 lt!1222162)))))

(declare-fun d!1051348 () Bool)

(assert (=> d!1051348 e!2207063))

(declare-fun c!618309 () Bool)

(assert (=> d!1051348 (= c!618309 ((_ is EmptyExpr!10265) (regex!5506 lt!1222180)))))

(assert (=> d!1051348 (= lt!1222235 e!2207064)))

(declare-fun c!618310 () Bool)

(assert (=> d!1051348 (= c!618310 (isEmpty!21995 lt!1222162))))

(declare-fun validRegex!4690 (Regex!10265) Bool)

(assert (=> d!1051348 (validRegex!4690 (regex!5506 lt!1222180))))

(assert (=> d!1051348 (= (matchR!4849 (regex!5506 lt!1222180) lt!1222162) lt!1222235)))

(declare-fun b!3567915 () Bool)

(declare-fun res!1438475 () Bool)

(assert (=> b!3567915 (=> res!1438475 e!2207069)))

(assert (=> b!3567915 (= res!1438475 e!2207065)))

(declare-fun res!1438473 () Bool)

(assert (=> b!3567915 (=> (not res!1438473) (not e!2207065))))

(assert (=> b!3567915 (= res!1438473 lt!1222235)))

(declare-fun b!3567916 () Bool)

(assert (=> b!3567916 (= e!2207063 e!2207066)))

(declare-fun c!618311 () Bool)

(assert (=> b!3567916 (= c!618311 ((_ is EmptyLang!10265) (regex!5506 lt!1222180)))))

(declare-fun b!3567917 () Bool)

(assert (=> b!3567917 (= e!2207069 e!2207068)))

(declare-fun res!1438478 () Bool)

(assert (=> b!3567917 (=> (not res!1438478) (not e!2207068))))

(assert (=> b!3567917 (= res!1438478 (not lt!1222235))))

(declare-fun b!3567918 () Bool)

(declare-fun res!1438479 () Bool)

(assert (=> b!3567918 (=> (not res!1438479) (not e!2207065))))

(assert (=> b!3567918 (= res!1438479 (not call!258630))))

(declare-fun bm!258625 () Bool)

(assert (=> bm!258625 (= call!258630 (isEmpty!21995 lt!1222162))))

(assert (= (and d!1051348 c!618310) b!3567909))

(assert (= (and d!1051348 (not c!618310)) b!3567905))

(assert (= (and d!1051348 c!618309) b!3567908))

(assert (= (and d!1051348 (not c!618309)) b!3567916))

(assert (= (and b!3567916 c!618311) b!3567914))

(assert (= (and b!3567916 (not c!618311)) b!3567907))

(assert (= (and b!3567907 (not res!1438477)) b!3567915))

(assert (= (and b!3567915 res!1438473) b!3567918))

(assert (= (and b!3567918 res!1438479) b!3567911))

(assert (= (and b!3567911 res!1438472) b!3567912))

(assert (= (and b!3567915 (not res!1438475)) b!3567917))

(assert (= (and b!3567917 res!1438478) b!3567913))

(assert (= (and b!3567913 (not res!1438474)) b!3567910))

(assert (= (and b!3567910 (not res!1438476)) b!3567906))

(assert (= (or b!3567908 b!3567913 b!3567918) bm!258625))

(declare-fun m!4054753 () Bool)

(assert (=> b!3567905 m!4054753))

(assert (=> b!3567905 m!4054753))

(declare-fun m!4054755 () Bool)

(assert (=> b!3567905 m!4054755))

(declare-fun m!4054757 () Bool)

(assert (=> b!3567905 m!4054757))

(assert (=> b!3567905 m!4054755))

(assert (=> b!3567905 m!4054757))

(declare-fun m!4054759 () Bool)

(assert (=> b!3567905 m!4054759))

(assert (=> b!3567910 m!4054757))

(assert (=> b!3567910 m!4054757))

(declare-fun m!4054761 () Bool)

(assert (=> b!3567910 m!4054761))

(declare-fun m!4054763 () Bool)

(assert (=> b!3567909 m!4054763))

(declare-fun m!4054765 () Bool)

(assert (=> d!1051348 m!4054765))

(declare-fun m!4054767 () Bool)

(assert (=> d!1051348 m!4054767))

(assert (=> b!3567912 m!4054753))

(assert (=> b!3567906 m!4054753))

(assert (=> bm!258625 m!4054765))

(assert (=> b!3567911 m!4054757))

(assert (=> b!3567911 m!4054757))

(assert (=> b!3567911 m!4054761))

(assert (=> b!3567650 d!1051348))

(declare-fun d!1051364 () Bool)

(assert (=> d!1051364 (= (get!12059 lt!1222171) (v!37270 lt!1222171))))

(assert (=> b!3567650 d!1051364))

(declare-fun d!1051368 () Bool)

(declare-fun lt!1222238 () Bool)

(assert (=> d!1051368 (= lt!1222238 (isEmpty!21995 (list!13743 (_2!21823 lt!1222169))))))

(declare-fun isEmpty!22004 (Conc!11387) Bool)

(assert (=> d!1051368 (= lt!1222238 (isEmpty!22004 (c!618263 (_2!21823 lt!1222169))))))

(assert (=> d!1051368 (= (isEmpty!21997 (_2!21823 lt!1222169)) lt!1222238)))

(declare-fun bs!569003 () Bool)

(assert (= bs!569003 d!1051368))

(declare-fun m!4054773 () Bool)

(assert (=> bs!569003 m!4054773))

(assert (=> bs!569003 m!4054773))

(declare-fun m!4054775 () Bool)

(assert (=> bs!569003 m!4054775))

(declare-fun m!4054777 () Bool)

(assert (=> bs!569003 m!4054777))

(assert (=> b!3567673 d!1051368))

(declare-fun d!1051370 () Bool)

(declare-fun isEmpty!22005 (Option!7682) Bool)

(assert (=> d!1051370 (= (isDefined!5925 lt!1222142) (not (isEmpty!22005 lt!1222142)))))

(declare-fun bs!569004 () Bool)

(assert (= bs!569004 d!1051370))

(declare-fun m!4054779 () Bool)

(assert (=> bs!569004 m!4054779))

(assert (=> b!3567652 d!1051370))

(declare-fun b!3567979 () Bool)

(declare-fun res!1438528 () Bool)

(declare-fun e!2207104 () Bool)

(assert (=> b!3567979 (=> (not res!1438528) (not e!2207104))))

(declare-fun lt!1222256 () Option!7682)

(assert (=> b!3567979 (= res!1438528 (< (size!28564 (_2!21822 (get!12060 lt!1222256))) (size!28564 lt!1222190)))))

(declare-fun b!3567980 () Bool)

(assert (=> b!3567980 (= e!2207104 (contains!7083 rules!2135 (rule!8192 (_1!21822 (get!12060 lt!1222256)))))))

(declare-fun b!3567982 () Bool)

(declare-fun e!2207103 () Option!7682)

(declare-fun lt!1222255 () Option!7682)

(declare-fun lt!1222257 () Option!7682)

(assert (=> b!3567982 (= e!2207103 (ite (and ((_ is None!7681) lt!1222255) ((_ is None!7681) lt!1222257)) None!7681 (ite ((_ is None!7681) lt!1222257) lt!1222255 (ite ((_ is None!7681) lt!1222255) lt!1222257 (ite (>= (size!28563 (_1!21822 (v!37271 lt!1222255))) (size!28563 (_1!21822 (v!37271 lt!1222257)))) lt!1222255 lt!1222257)))))))

(declare-fun call!258634 () Option!7682)

(assert (=> b!3567982 (= lt!1222255 call!258634)))

(assert (=> b!3567982 (= lt!1222257 (maxPrefix!2635 thiss!18206 (t!288745 rules!2135) lt!1222190))))

(declare-fun b!3567983 () Bool)

(declare-fun res!1438524 () Bool)

(assert (=> b!3567983 (=> (not res!1438524) (not e!2207104))))

(assert (=> b!3567983 (= res!1438524 (= (value!177381 (_1!21822 (get!12060 lt!1222256))) (apply!8997 (transformation!5506 (rule!8192 (_1!21822 (get!12060 lt!1222256)))) (seqFromList!4065 (originalCharacters!6220 (_1!21822 (get!12060 lt!1222256)))))))))

(declare-fun b!3567984 () Bool)

(declare-fun res!1438522 () Bool)

(assert (=> b!3567984 (=> (not res!1438522) (not e!2207104))))

(assert (=> b!3567984 (= res!1438522 (matchR!4849 (regex!5506 (rule!8192 (_1!21822 (get!12060 lt!1222256)))) (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222256))))))))

(declare-fun b!3567985 () Bool)

(declare-fun res!1438523 () Bool)

(assert (=> b!3567985 (=> (not res!1438523) (not e!2207104))))

(assert (=> b!3567985 (= res!1438523 (= (++!9315 (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222256)))) (_2!21822 (get!12060 lt!1222256))) lt!1222190))))

(declare-fun bm!258629 () Bool)

(assert (=> bm!258629 (= call!258634 (maxPrefixOneRule!1802 thiss!18206 (h!42900 rules!2135) lt!1222190))))

(declare-fun b!3567986 () Bool)

(declare-fun res!1438527 () Bool)

(assert (=> b!3567986 (=> (not res!1438527) (not e!2207104))))

(assert (=> b!3567986 (= res!1438527 (= (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222256)))) (originalCharacters!6220 (_1!21822 (get!12060 lt!1222256)))))))

(declare-fun b!3567987 () Bool)

(assert (=> b!3567987 (= e!2207103 call!258634)))

(declare-fun d!1051372 () Bool)

(declare-fun e!2207105 () Bool)

(assert (=> d!1051372 e!2207105))

(declare-fun res!1438525 () Bool)

(assert (=> d!1051372 (=> res!1438525 e!2207105)))

(assert (=> d!1051372 (= res!1438525 (isEmpty!22005 lt!1222256))))

(assert (=> d!1051372 (= lt!1222256 e!2207103)))

(declare-fun c!618321 () Bool)

(assert (=> d!1051372 (= c!618321 (and ((_ is Cons!37480) rules!2135) ((_ is Nil!37480) (t!288745 rules!2135))))))

(declare-fun lt!1222254 () Unit!53455)

(declare-fun lt!1222258 () Unit!53455)

(assert (=> d!1051372 (= lt!1222254 lt!1222258)))

(declare-fun isPrefix!2890 (List!37603 List!37603) Bool)

(assert (=> d!1051372 (isPrefix!2890 lt!1222190 lt!1222190)))

(declare-fun lemmaIsPrefixRefl!1849 (List!37603 List!37603) Unit!53455)

(assert (=> d!1051372 (= lt!1222258 (lemmaIsPrefixRefl!1849 lt!1222190 lt!1222190))))

(declare-fun rulesValidInductive!1899 (LexerInterface!5095 List!37604) Bool)

(assert (=> d!1051372 (rulesValidInductive!1899 thiss!18206 rules!2135)))

(assert (=> d!1051372 (= (maxPrefix!2635 thiss!18206 rules!2135 lt!1222190) lt!1222256)))

(declare-fun b!3567981 () Bool)

(assert (=> b!3567981 (= e!2207105 e!2207104)))

(declare-fun res!1438526 () Bool)

(assert (=> b!3567981 (=> (not res!1438526) (not e!2207104))))

(assert (=> b!3567981 (= res!1438526 (isDefined!5925 lt!1222256))))

(assert (= (and d!1051372 c!618321) b!3567987))

(assert (= (and d!1051372 (not c!618321)) b!3567982))

(assert (= (or b!3567987 b!3567982) bm!258629))

(assert (= (and d!1051372 (not res!1438525)) b!3567981))

(assert (= (and b!3567981 res!1438526) b!3567986))

(assert (= (and b!3567986 res!1438527) b!3567979))

(assert (= (and b!3567979 res!1438528) b!3567985))

(assert (= (and b!3567985 res!1438523) b!3567983))

(assert (= (and b!3567983 res!1438524) b!3567984))

(assert (= (and b!3567984 res!1438522) b!3567980))

(declare-fun m!4054827 () Bool)

(assert (=> b!3567980 m!4054827))

(declare-fun m!4054829 () Bool)

(assert (=> b!3567980 m!4054829))

(assert (=> b!3567979 m!4054827))

(declare-fun m!4054831 () Bool)

(assert (=> b!3567979 m!4054831))

(assert (=> b!3567979 m!4054669))

(assert (=> b!3567984 m!4054827))

(declare-fun m!4054833 () Bool)

(assert (=> b!3567984 m!4054833))

(assert (=> b!3567984 m!4054833))

(declare-fun m!4054835 () Bool)

(assert (=> b!3567984 m!4054835))

(assert (=> b!3567984 m!4054835))

(declare-fun m!4054837 () Bool)

(assert (=> b!3567984 m!4054837))

(declare-fun m!4054839 () Bool)

(assert (=> b!3567981 m!4054839))

(assert (=> b!3567985 m!4054827))

(assert (=> b!3567985 m!4054833))

(assert (=> b!3567985 m!4054833))

(assert (=> b!3567985 m!4054835))

(assert (=> b!3567985 m!4054835))

(declare-fun m!4054841 () Bool)

(assert (=> b!3567985 m!4054841))

(declare-fun m!4054843 () Bool)

(assert (=> b!3567982 m!4054843))

(declare-fun m!4054845 () Bool)

(assert (=> d!1051372 m!4054845))

(declare-fun m!4054847 () Bool)

(assert (=> d!1051372 m!4054847))

(declare-fun m!4054849 () Bool)

(assert (=> d!1051372 m!4054849))

(declare-fun m!4054851 () Bool)

(assert (=> d!1051372 m!4054851))

(assert (=> b!3567986 m!4054827))

(assert (=> b!3567986 m!4054833))

(assert (=> b!3567986 m!4054833))

(assert (=> b!3567986 m!4054835))

(assert (=> b!3567983 m!4054827))

(declare-fun m!4054853 () Bool)

(assert (=> b!3567983 m!4054853))

(assert (=> b!3567983 m!4054853))

(declare-fun m!4054855 () Bool)

(assert (=> b!3567983 m!4054855))

(declare-fun m!4054857 () Bool)

(assert (=> bm!258629 m!4054857))

(assert (=> b!3567652 d!1051372))

(declare-fun d!1051388 () Bool)

(declare-fun res!1438547 () Bool)

(declare-fun e!2207114 () Bool)

(assert (=> d!1051388 (=> (not res!1438547) (not e!2207114))))

(assert (=> d!1051388 (= res!1438547 (not (isEmpty!21995 (originalCharacters!6220 separatorToken!241))))))

(assert (=> d!1051388 (= (inv!50750 separatorToken!241) e!2207114)))

(declare-fun b!3568010 () Bool)

(declare-fun res!1438548 () Bool)

(assert (=> b!3568010 (=> (not res!1438548) (not e!2207114))))

(assert (=> b!3568010 (= res!1438548 (= (originalCharacters!6220 separatorToken!241) (list!13743 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (value!177381 separatorToken!241)))))))

(declare-fun b!3568011 () Bool)

(assert (=> b!3568011 (= e!2207114 (= (size!28563 separatorToken!241) (size!28564 (originalCharacters!6220 separatorToken!241))))))

(assert (= (and d!1051388 res!1438547) b!3568010))

(assert (= (and b!3568010 res!1438548) b!3568011))

(declare-fun b_lambda!105061 () Bool)

(assert (=> (not b_lambda!105061) (not b!3568010)))

(assert (=> b!3568010 t!288749))

(declare-fun b_and!256705 () Bool)

(assert (= b_and!256693 (and (=> t!288749 result!247672) b_and!256705)))

(assert (=> b!3568010 t!288751))

(declare-fun b_and!256707 () Bool)

(assert (= b_and!256695 (and (=> t!288751 result!247676) b_and!256707)))

(assert (=> b!3568010 t!288753))

(declare-fun b_and!256709 () Bool)

(assert (= b_and!256697 (and (=> t!288753 result!247678) b_and!256709)))

(declare-fun m!4054859 () Bool)

(assert (=> d!1051388 m!4054859))

(assert (=> b!3568010 m!4054629))

(assert (=> b!3568010 m!4054629))

(declare-fun m!4054861 () Bool)

(assert (=> b!3568010 m!4054861))

(declare-fun m!4054863 () Bool)

(assert (=> b!3568011 m!4054863))

(assert (=> start!330298 d!1051388))

(declare-fun d!1051390 () Bool)

(assert (=> d!1051390 (= (inv!50747 (tag!6160 (h!42900 rules!2135))) (= (mod (str.len (value!177380 (tag!6160 (h!42900 rules!2135)))) 2) 0))))

(assert (=> b!3567669 d!1051390))

(declare-fun d!1051392 () Bool)

(declare-fun res!1438558 () Bool)

(declare-fun e!2207120 () Bool)

(assert (=> d!1051392 (=> (not res!1438558) (not e!2207120))))

(declare-fun semiInverseModEq!2329 (Int Int) Bool)

(assert (=> d!1051392 (= res!1438558 (semiInverseModEq!2329 (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toValue!7774 (transformation!5506 (h!42900 rules!2135)))))))

(assert (=> d!1051392 (= (inv!50751 (transformation!5506 (h!42900 rules!2135))) e!2207120)))

(declare-fun b!3568023 () Bool)

(declare-fun equivClasses!2228 (Int Int) Bool)

(assert (=> b!3568023 (= e!2207120 (equivClasses!2228 (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toValue!7774 (transformation!5506 (h!42900 rules!2135)))))))

(assert (= (and d!1051392 res!1438558) b!3568023))

(declare-fun m!4054897 () Bool)

(assert (=> d!1051392 m!4054897))

(declare-fun m!4054899 () Bool)

(assert (=> b!3568023 m!4054899))

(assert (=> b!3567669 d!1051392))

(declare-fun d!1051396 () Bool)

(assert (=> d!1051396 (= (isEmpty!21995 (_2!21822 lt!1222158)) ((_ is Nil!37479) (_2!21822 lt!1222158)))))

(assert (=> b!3567648 d!1051396))

(declare-fun d!1051400 () Bool)

(assert (=> d!1051400 (= (list!13743 (charsOf!3520 (h!42901 tokens!494))) (list!13746 (c!618263 (charsOf!3520 (h!42901 tokens!494)))))))

(declare-fun bs!569007 () Bool)

(assert (= bs!569007 d!1051400))

(declare-fun m!4054905 () Bool)

(assert (=> bs!569007 m!4054905))

(assert (=> b!3567670 d!1051400))

(declare-fun d!1051402 () Bool)

(declare-fun lt!1222276 () BalanceConc!22388)

(assert (=> d!1051402 (= (list!13743 lt!1222276) (originalCharacters!6220 (h!42901 tokens!494)))))

(assert (=> d!1051402 (= lt!1222276 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (value!177381 (h!42901 tokens!494))))))

(assert (=> d!1051402 (= (charsOf!3520 (h!42901 tokens!494)) lt!1222276)))

(declare-fun b_lambda!105063 () Bool)

(assert (=> (not b_lambda!105063) (not d!1051402)))

(declare-fun t!288767 () Bool)

(declare-fun tb!203133 () Bool)

(assert (=> (and b!3567660 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288767) tb!203133))

(declare-fun b!3568038 () Bool)

(declare-fun e!2207128 () Bool)

(declare-fun tp!1093262 () Bool)

(assert (=> b!3568038 (= e!2207128 (and (inv!50754 (c!618263 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (value!177381 (h!42901 tokens!494))))) tp!1093262))))

(declare-fun result!247694 () Bool)

(assert (=> tb!203133 (= result!247694 (and (inv!50755 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (value!177381 (h!42901 tokens!494)))) e!2207128))))

(assert (= tb!203133 b!3568038))

(declare-fun m!4054909 () Bool)

(assert (=> b!3568038 m!4054909))

(declare-fun m!4054911 () Bool)

(assert (=> tb!203133 m!4054911))

(assert (=> d!1051402 t!288767))

(declare-fun b_and!256711 () Bool)

(assert (= b_and!256705 (and (=> t!288767 result!247694) b_and!256711)))

(declare-fun t!288769 () Bool)

(declare-fun tb!203135 () Bool)

(assert (=> (and b!3567674 (= (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288769) tb!203135))

(declare-fun result!247696 () Bool)

(assert (= result!247696 result!247694))

(assert (=> d!1051402 t!288769))

(declare-fun b_and!256713 () Bool)

(assert (= b_and!256707 (and (=> t!288769 result!247696) b_and!256713)))

(declare-fun t!288771 () Bool)

(declare-fun tb!203137 () Bool)

(assert (=> (and b!3567686 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288771) tb!203137))

(declare-fun result!247698 () Bool)

(assert (= result!247698 result!247694))

(assert (=> d!1051402 t!288771))

(declare-fun b_and!256715 () Bool)

(assert (= b_and!256709 (and (=> t!288771 result!247698) b_and!256715)))

(declare-fun m!4054915 () Bool)

(assert (=> d!1051402 m!4054915))

(declare-fun m!4054919 () Bool)

(assert (=> d!1051402 m!4054919))

(assert (=> b!3567670 d!1051402))

(declare-fun d!1051404 () Bool)

(declare-fun lt!1222281 () Token!10378)

(declare-fun apply!9000 (List!37605 Int) Token!10378)

(assert (=> d!1051404 (= lt!1222281 (apply!9000 (list!13745 (_1!21823 lt!1222169)) 0))))

(declare-fun apply!9001 (Conc!11388 Int) Token!10378)

(assert (=> d!1051404 (= lt!1222281 (apply!9001 (c!618264 (_1!21823 lt!1222169)) 0))))

(declare-fun e!2207133 () Bool)

(assert (=> d!1051404 e!2207133))

(declare-fun res!1438571 () Bool)

(assert (=> d!1051404 (=> (not res!1438571) (not e!2207133))))

(assert (=> d!1051404 (= res!1438571 (<= 0 0))))

(assert (=> d!1051404 (= (apply!8996 (_1!21823 lt!1222169) 0) lt!1222281)))

(declare-fun b!3568043 () Bool)

(assert (=> b!3568043 (= e!2207133 (< 0 (size!28565 (_1!21823 lt!1222169))))))

(assert (= (and d!1051404 res!1438571) b!3568043))

(declare-fun m!4054921 () Bool)

(assert (=> d!1051404 m!4054921))

(assert (=> d!1051404 m!4054921))

(declare-fun m!4054925 () Bool)

(assert (=> d!1051404 m!4054925))

(declare-fun m!4054927 () Bool)

(assert (=> d!1051404 m!4054927))

(assert (=> b!3568043 m!4054371))

(assert (=> b!3567649 d!1051404))

(declare-fun b!3568046 () Bool)

(declare-fun e!2207136 () List!37603)

(assert (=> b!3568046 (= e!2207136 (Cons!37479 (h!42899 lt!1222162) (++!9315 (t!288744 lt!1222162) lt!1222182)))))

(declare-fun b!3568047 () Bool)

(declare-fun res!1438573 () Bool)

(declare-fun e!2207135 () Bool)

(assert (=> b!3568047 (=> (not res!1438573) (not e!2207135))))

(declare-fun lt!1222283 () List!37603)

(assert (=> b!3568047 (= res!1438573 (= (size!28564 lt!1222283) (+ (size!28564 lt!1222162) (size!28564 lt!1222182))))))

(declare-fun d!1051408 () Bool)

(assert (=> d!1051408 e!2207135))

(declare-fun res!1438574 () Bool)

(assert (=> d!1051408 (=> (not res!1438574) (not e!2207135))))

(assert (=> d!1051408 (= res!1438574 (= (content!5309 lt!1222283) ((_ map or) (content!5309 lt!1222162) (content!5309 lt!1222182))))))

(assert (=> d!1051408 (= lt!1222283 e!2207136)))

(declare-fun c!618328 () Bool)

(assert (=> d!1051408 (= c!618328 ((_ is Nil!37479) lt!1222162))))

(assert (=> d!1051408 (= (++!9315 lt!1222162 lt!1222182) lt!1222283)))

(declare-fun b!3568048 () Bool)

(assert (=> b!3568048 (= e!2207135 (or (not (= lt!1222182 Nil!37479)) (= lt!1222283 lt!1222162)))))

(declare-fun b!3568045 () Bool)

(assert (=> b!3568045 (= e!2207136 lt!1222182)))

(assert (= (and d!1051408 c!618328) b!3568045))

(assert (= (and d!1051408 (not c!618328)) b!3568046))

(assert (= (and d!1051408 res!1438574) b!3568047))

(assert (= (and b!3568047 res!1438573) b!3568048))

(declare-fun m!4054933 () Bool)

(assert (=> b!3568046 m!4054933))

(declare-fun m!4054935 () Bool)

(assert (=> b!3568047 m!4054935))

(assert (=> b!3568047 m!4054411))

(declare-fun m!4054937 () Bool)

(assert (=> b!3568047 m!4054937))

(declare-fun m!4054939 () Bool)

(assert (=> d!1051408 m!4054939))

(declare-fun m!4054941 () Bool)

(assert (=> d!1051408 m!4054941))

(declare-fun m!4054943 () Bool)

(assert (=> d!1051408 m!4054943))

(assert (=> b!3567671 d!1051408))

(declare-fun d!1051414 () Bool)

(assert (=> d!1051414 (= (++!9315 (++!9315 lt!1222162 lt!1222190) lt!1222167) (++!9315 lt!1222162 (++!9315 lt!1222190 lt!1222167)))))

(declare-fun lt!1222286 () Unit!53455)

(declare-fun choose!20717 (List!37603 List!37603 List!37603) Unit!53455)

(assert (=> d!1051414 (= lt!1222286 (choose!20717 lt!1222162 lt!1222190 lt!1222167))))

(assert (=> d!1051414 (= (lemmaConcatAssociativity!2046 lt!1222162 lt!1222190 lt!1222167) lt!1222286)))

(declare-fun bs!569008 () Bool)

(assert (= bs!569008 d!1051414))

(assert (=> bs!569008 m!4054497))

(declare-fun m!4054957 () Bool)

(assert (=> bs!569008 m!4054957))

(assert (=> bs!569008 m!4054443))

(declare-fun m!4054959 () Bool)

(assert (=> bs!569008 m!4054959))

(assert (=> bs!569008 m!4054443))

(assert (=> bs!569008 m!4054445))

(assert (=> bs!569008 m!4054497))

(assert (=> b!3567671 d!1051414))

(declare-fun d!1051418 () Bool)

(declare-fun lt!1222287 () Token!10378)

(assert (=> d!1051418 (= lt!1222287 (apply!9000 (list!13745 (_1!21823 lt!1222175)) 0))))

(assert (=> d!1051418 (= lt!1222287 (apply!9001 (c!618264 (_1!21823 lt!1222175)) 0))))

(declare-fun e!2207139 () Bool)

(assert (=> d!1051418 e!2207139))

(declare-fun res!1438577 () Bool)

(assert (=> d!1051418 (=> (not res!1438577) (not e!2207139))))

(assert (=> d!1051418 (= res!1438577 (<= 0 0))))

(assert (=> d!1051418 (= (apply!8996 (_1!21823 lt!1222175) 0) lt!1222287)))

(declare-fun b!3568052 () Bool)

(assert (=> b!3568052 (= e!2207139 (< 0 (size!28565 (_1!21823 lt!1222175))))))

(assert (= (and d!1051418 res!1438577) b!3568052))

(declare-fun m!4054961 () Bool)

(assert (=> d!1051418 m!4054961))

(assert (=> d!1051418 m!4054961))

(declare-fun m!4054963 () Bool)

(assert (=> d!1051418 m!4054963))

(declare-fun m!4054965 () Bool)

(assert (=> d!1051418 m!4054965))

(assert (=> b!3568052 m!4054401))

(assert (=> b!3567666 d!1051418))

(declare-fun d!1051420 () Bool)

(assert (=> d!1051420 (dynLambda!16081 lambda!123390 (h!42901 (t!288746 tokens!494)))))

(declare-fun lt!1222290 () Unit!53455)

(declare-fun choose!20718 (List!37605 Int Token!10378) Unit!53455)

(assert (=> d!1051420 (= lt!1222290 (choose!20718 tokens!494 lambda!123390 (h!42901 (t!288746 tokens!494))))))

(declare-fun e!2207142 () Bool)

(assert (=> d!1051420 e!2207142))

(declare-fun res!1438580 () Bool)

(assert (=> d!1051420 (=> (not res!1438580) (not e!2207142))))

(assert (=> d!1051420 (= res!1438580 (forall!8102 tokens!494 lambda!123390))))

(assert (=> d!1051420 (= (forallContained!1453 tokens!494 lambda!123390 (h!42901 (t!288746 tokens!494))) lt!1222290)))

(declare-fun b!3568055 () Bool)

(declare-fun contains!7085 (List!37605 Token!10378) Bool)

(assert (=> b!3568055 (= e!2207142 (contains!7085 tokens!494 (h!42901 (t!288746 tokens!494))))))

(assert (= (and d!1051420 res!1438580) b!3568055))

(declare-fun b_lambda!105067 () Bool)

(assert (=> (not b_lambda!105067) (not d!1051420)))

(declare-fun m!4054967 () Bool)

(assert (=> d!1051420 m!4054967))

(declare-fun m!4054969 () Bool)

(assert (=> d!1051420 m!4054969))

(assert (=> d!1051420 m!4054479))

(declare-fun m!4054971 () Bool)

(assert (=> b!3568055 m!4054971))

(assert (=> b!3567667 d!1051420))

(declare-fun d!1051422 () Bool)

(assert (=> d!1051422 (dynLambda!16081 lambda!123390 (h!42901 tokens!494))))

(declare-fun lt!1222291 () Unit!53455)

(assert (=> d!1051422 (= lt!1222291 (choose!20718 tokens!494 lambda!123390 (h!42901 tokens!494)))))

(declare-fun e!2207143 () Bool)

(assert (=> d!1051422 e!2207143))

(declare-fun res!1438581 () Bool)

(assert (=> d!1051422 (=> (not res!1438581) (not e!2207143))))

(assert (=> d!1051422 (= res!1438581 (forall!8102 tokens!494 lambda!123390))))

(assert (=> d!1051422 (= (forallContained!1453 tokens!494 lambda!123390 (h!42901 tokens!494)) lt!1222291)))

(declare-fun b!3568056 () Bool)

(assert (=> b!3568056 (= e!2207143 (contains!7085 tokens!494 (h!42901 tokens!494)))))

(assert (= (and d!1051422 res!1438581) b!3568056))

(declare-fun b_lambda!105069 () Bool)

(assert (=> (not b_lambda!105069) (not d!1051422)))

(assert (=> d!1051422 m!4054717))

(declare-fun m!4054973 () Bool)

(assert (=> d!1051422 m!4054973))

(assert (=> d!1051422 m!4054479))

(declare-fun m!4054975 () Bool)

(assert (=> b!3568056 m!4054975))

(assert (=> b!3567667 d!1051422))

(declare-fun d!1051424 () Bool)

(declare-fun lt!1222313 () BalanceConc!22388)

(declare-fun printListTailRec!734 (LexerInterface!5095 List!37605 List!37603) List!37603)

(declare-fun dropList!1251 (BalanceConc!22390 Int) List!37605)

(assert (=> d!1051424 (= (list!13743 lt!1222313) (printListTailRec!734 thiss!18206 (dropList!1251 lt!1222172 0) (list!13743 (BalanceConc!22389 Empty!11387))))))

(declare-fun e!2207148 () BalanceConc!22388)

(assert (=> d!1051424 (= lt!1222313 e!2207148)))

(declare-fun c!618331 () Bool)

(assert (=> d!1051424 (= c!618331 (>= 0 (size!28565 lt!1222172)))))

(declare-fun e!2207149 () Bool)

(assert (=> d!1051424 e!2207149))

(declare-fun res!1438584 () Bool)

(assert (=> d!1051424 (=> (not res!1438584) (not e!2207149))))

(assert (=> d!1051424 (= res!1438584 (>= 0 0))))

(assert (=> d!1051424 (= (printTailRec!1590 thiss!18206 lt!1222172 0 (BalanceConc!22389 Empty!11387)) lt!1222313)))

(declare-fun b!3568063 () Bool)

(assert (=> b!3568063 (= e!2207149 (<= 0 (size!28565 lt!1222172)))))

(declare-fun b!3568064 () Bool)

(assert (=> b!3568064 (= e!2207148 (BalanceConc!22389 Empty!11387))))

(declare-fun b!3568065 () Bool)

(declare-fun ++!9317 (BalanceConc!22388 BalanceConc!22388) BalanceConc!22388)

(assert (=> b!3568065 (= e!2207148 (printTailRec!1590 thiss!18206 lt!1222172 (+ 0 1) (++!9317 (BalanceConc!22389 Empty!11387) (charsOf!3520 (apply!8996 lt!1222172 0)))))))

(declare-fun lt!1222312 () List!37605)

(assert (=> b!3568065 (= lt!1222312 (list!13745 lt!1222172))))

(declare-fun lt!1222311 () Unit!53455)

(declare-fun lemmaDropApply!1209 (List!37605 Int) Unit!53455)

(assert (=> b!3568065 (= lt!1222311 (lemmaDropApply!1209 lt!1222312 0))))

(declare-fun head!7433 (List!37605) Token!10378)

(declare-fun drop!2071 (List!37605 Int) List!37605)

(assert (=> b!3568065 (= (head!7433 (drop!2071 lt!1222312 0)) (apply!9000 lt!1222312 0))))

(declare-fun lt!1222310 () Unit!53455)

(assert (=> b!3568065 (= lt!1222310 lt!1222311)))

(declare-fun lt!1222309 () List!37605)

(assert (=> b!3568065 (= lt!1222309 (list!13745 lt!1222172))))

(declare-fun lt!1222314 () Unit!53455)

(declare-fun lemmaDropTail!1093 (List!37605 Int) Unit!53455)

(assert (=> b!3568065 (= lt!1222314 (lemmaDropTail!1093 lt!1222309 0))))

(declare-fun tail!5525 (List!37605) List!37605)

(assert (=> b!3568065 (= (tail!5525 (drop!2071 lt!1222309 0)) (drop!2071 lt!1222309 (+ 0 1)))))

(declare-fun lt!1222315 () Unit!53455)

(assert (=> b!3568065 (= lt!1222315 lt!1222314)))

(assert (= (and d!1051424 res!1438584) b!3568063))

(assert (= (and d!1051424 c!618331) b!3568064))

(assert (= (and d!1051424 (not c!618331)) b!3568065))

(declare-fun m!4054983 () Bool)

(assert (=> d!1051424 m!4054983))

(declare-fun m!4054985 () Bool)

(assert (=> d!1051424 m!4054985))

(declare-fun m!4054987 () Bool)

(assert (=> d!1051424 m!4054987))

(assert (=> d!1051424 m!4054985))

(declare-fun m!4054989 () Bool)

(assert (=> d!1051424 m!4054989))

(assert (=> d!1051424 m!4054983))

(declare-fun m!4054991 () Bool)

(assert (=> d!1051424 m!4054991))

(assert (=> b!3568063 m!4054991))

(declare-fun m!4054993 () Bool)

(assert (=> b!3568065 m!4054993))

(declare-fun m!4054995 () Bool)

(assert (=> b!3568065 m!4054995))

(declare-fun m!4054997 () Bool)

(assert (=> b!3568065 m!4054997))

(declare-fun m!4054999 () Bool)

(assert (=> b!3568065 m!4054999))

(declare-fun m!4055001 () Bool)

(assert (=> b!3568065 m!4055001))

(declare-fun m!4055003 () Bool)

(assert (=> b!3568065 m!4055003))

(declare-fun m!4055005 () Bool)

(assert (=> b!3568065 m!4055005))

(declare-fun m!4055007 () Bool)

(assert (=> b!3568065 m!4055007))

(declare-fun m!4055009 () Bool)

(assert (=> b!3568065 m!4055009))

(declare-fun m!4055011 () Bool)

(assert (=> b!3568065 m!4055011))

(assert (=> b!3568065 m!4055005))

(declare-fun m!4055013 () Bool)

(assert (=> b!3568065 m!4055013))

(assert (=> b!3568065 m!4055013))

(assert (=> b!3568065 m!4054999))

(declare-fun m!4055015 () Bool)

(assert (=> b!3568065 m!4055015))

(assert (=> b!3568065 m!4054995))

(declare-fun m!4055017 () Bool)

(assert (=> b!3568065 m!4055017))

(assert (=> b!3568065 m!4055007))

(assert (=> b!3567646 d!1051424))

(declare-fun d!1051428 () Bool)

(declare-fun lt!1222342 () BalanceConc!22388)

(assert (=> d!1051428 (= (list!13743 lt!1222342) (printList!1643 thiss!18206 (list!13745 lt!1222172)))))

(assert (=> d!1051428 (= lt!1222342 (printTailRec!1590 thiss!18206 lt!1222172 0 (BalanceConc!22389 Empty!11387)))))

(assert (=> d!1051428 (= (print!2160 thiss!18206 lt!1222172) lt!1222342)))

(declare-fun bs!569011 () Bool)

(assert (= bs!569011 d!1051428))

(declare-fun m!4055061 () Bool)

(assert (=> bs!569011 m!4055061))

(assert (=> bs!569011 m!4055015))

(assert (=> bs!569011 m!4055015))

(declare-fun m!4055063 () Bool)

(assert (=> bs!569011 m!4055063))

(assert (=> bs!569011 m!4054463))

(assert (=> b!3567646 d!1051428))

(declare-fun d!1051436 () Bool)

(assert (=> d!1051436 (= (list!13743 lt!1222181) (list!13746 (c!618263 lt!1222181)))))

(declare-fun bs!569012 () Bool)

(assert (= bs!569012 d!1051436))

(declare-fun m!4055065 () Bool)

(assert (=> bs!569012 m!4055065))

(assert (=> b!3567646 d!1051436))

(declare-fun d!1051438 () Bool)

(declare-fun e!2207164 () Bool)

(assert (=> d!1051438 e!2207164))

(declare-fun res!1438593 () Bool)

(assert (=> d!1051438 (=> (not res!1438593) (not e!2207164))))

(declare-fun lt!1222345 () BalanceConc!22390)

(assert (=> d!1051438 (= res!1438593 (= (list!13745 lt!1222345) (Cons!37481 (h!42901 tokens!494) Nil!37481)))))

(declare-fun singleton!1166 (Token!10378) BalanceConc!22390)

(assert (=> d!1051438 (= lt!1222345 (singleton!1166 (h!42901 tokens!494)))))

(assert (=> d!1051438 (= (singletonSeq!2602 (h!42901 tokens!494)) lt!1222345)))

(declare-fun b!3568086 () Bool)

(declare-fun isBalanced!3481 (Conc!11388) Bool)

(assert (=> b!3568086 (= e!2207164 (isBalanced!3481 (c!618264 lt!1222345)))))

(assert (= (and d!1051438 res!1438593) b!3568086))

(declare-fun m!4055075 () Bool)

(assert (=> d!1051438 m!4055075))

(declare-fun m!4055077 () Bool)

(assert (=> d!1051438 m!4055077))

(declare-fun m!4055079 () Bool)

(assert (=> b!3568086 m!4055079))

(assert (=> b!3567646 d!1051438))

(declare-fun d!1051442 () Bool)

(declare-fun c!618340 () Bool)

(assert (=> d!1051442 (= c!618340 ((_ is Cons!37481) (Cons!37481 (h!42901 tokens!494) Nil!37481)))))

(declare-fun e!2207167 () List!37603)

(assert (=> d!1051442 (= (printList!1643 thiss!18206 (Cons!37481 (h!42901 tokens!494) Nil!37481)) e!2207167)))

(declare-fun b!3568091 () Bool)

(assert (=> b!3568091 (= e!2207167 (++!9315 (list!13743 (charsOf!3520 (h!42901 (Cons!37481 (h!42901 tokens!494) Nil!37481)))) (printList!1643 thiss!18206 (t!288746 (Cons!37481 (h!42901 tokens!494) Nil!37481)))))))

(declare-fun b!3568092 () Bool)

(assert (=> b!3568092 (= e!2207167 Nil!37479)))

(assert (= (and d!1051442 c!618340) b!3568091))

(assert (= (and d!1051442 (not c!618340)) b!3568092))

(declare-fun m!4055081 () Bool)

(assert (=> b!3568091 m!4055081))

(assert (=> b!3568091 m!4055081))

(declare-fun m!4055083 () Bool)

(assert (=> b!3568091 m!4055083))

(declare-fun m!4055085 () Bool)

(assert (=> b!3568091 m!4055085))

(assert (=> b!3568091 m!4055083))

(assert (=> b!3568091 m!4055085))

(declare-fun m!4055087 () Bool)

(assert (=> b!3568091 m!4055087))

(assert (=> b!3567646 d!1051442))

(declare-fun b!3568093 () Bool)

(declare-fun e!2207169 () Bool)

(assert (=> b!3568093 (= e!2207169 (matchR!4849 (derivativeStep!3087 (regex!5506 lt!1222156) (head!7431 lt!1222190)) (tail!5523 lt!1222190)))))

(declare-fun b!3568094 () Bool)

(declare-fun e!2207172 () Bool)

(assert (=> b!3568094 (= e!2207172 (not (= (head!7431 lt!1222190) (c!618262 (regex!5506 lt!1222156)))))))

(declare-fun b!3568095 () Bool)

(declare-fun res!1438599 () Bool)

(declare-fun e!2207174 () Bool)

(assert (=> b!3568095 (=> res!1438599 e!2207174)))

(assert (=> b!3568095 (= res!1438599 (not ((_ is ElementMatch!10265) (regex!5506 lt!1222156))))))

(declare-fun e!2207171 () Bool)

(assert (=> b!3568095 (= e!2207171 e!2207174)))

(declare-fun b!3568096 () Bool)

(declare-fun e!2207168 () Bool)

(declare-fun lt!1222346 () Bool)

(declare-fun call!258639 () Bool)

(assert (=> b!3568096 (= e!2207168 (= lt!1222346 call!258639))))

(declare-fun b!3568097 () Bool)

(assert (=> b!3568097 (= e!2207169 (nullable!3534 (regex!5506 lt!1222156)))))

(declare-fun b!3568098 () Bool)

(declare-fun res!1438598 () Bool)

(assert (=> b!3568098 (=> res!1438598 e!2207172)))

(assert (=> b!3568098 (= res!1438598 (not (isEmpty!21995 (tail!5523 lt!1222190))))))

(declare-fun b!3568100 () Bool)

(declare-fun e!2207170 () Bool)

(assert (=> b!3568100 (= e!2207170 (= (head!7431 lt!1222190) (c!618262 (regex!5506 lt!1222156))))))

(declare-fun b!3568101 () Bool)

(declare-fun e!2207173 () Bool)

(assert (=> b!3568101 (= e!2207173 e!2207172)))

(declare-fun res!1438596 () Bool)

(assert (=> b!3568101 (=> res!1438596 e!2207172)))

(assert (=> b!3568101 (= res!1438596 call!258639)))

(declare-fun b!3568102 () Bool)

(assert (=> b!3568102 (= e!2207171 (not lt!1222346))))

(declare-fun b!3568099 () Bool)

(declare-fun res!1438594 () Bool)

(assert (=> b!3568099 (=> (not res!1438594) (not e!2207170))))

(assert (=> b!3568099 (= res!1438594 (isEmpty!21995 (tail!5523 lt!1222190)))))

(declare-fun d!1051444 () Bool)

(assert (=> d!1051444 e!2207168))

(declare-fun c!618341 () Bool)

(assert (=> d!1051444 (= c!618341 ((_ is EmptyExpr!10265) (regex!5506 lt!1222156)))))

(assert (=> d!1051444 (= lt!1222346 e!2207169)))

(declare-fun c!618342 () Bool)

(assert (=> d!1051444 (= c!618342 (isEmpty!21995 lt!1222190))))

(assert (=> d!1051444 (validRegex!4690 (regex!5506 lt!1222156))))

(assert (=> d!1051444 (= (matchR!4849 (regex!5506 lt!1222156) lt!1222190) lt!1222346)))

(declare-fun b!3568103 () Bool)

(declare-fun res!1438597 () Bool)

(assert (=> b!3568103 (=> res!1438597 e!2207174)))

(assert (=> b!3568103 (= res!1438597 e!2207170)))

(declare-fun res!1438595 () Bool)

(assert (=> b!3568103 (=> (not res!1438595) (not e!2207170))))

(assert (=> b!3568103 (= res!1438595 lt!1222346)))

(declare-fun b!3568104 () Bool)

(assert (=> b!3568104 (= e!2207168 e!2207171)))

(declare-fun c!618343 () Bool)

(assert (=> b!3568104 (= c!618343 ((_ is EmptyLang!10265) (regex!5506 lt!1222156)))))

(declare-fun b!3568105 () Bool)

(assert (=> b!3568105 (= e!2207174 e!2207173)))

(declare-fun res!1438600 () Bool)

(assert (=> b!3568105 (=> (not res!1438600) (not e!2207173))))

(assert (=> b!3568105 (= res!1438600 (not lt!1222346))))

(declare-fun b!3568106 () Bool)

(declare-fun res!1438601 () Bool)

(assert (=> b!3568106 (=> (not res!1438601) (not e!2207170))))

(assert (=> b!3568106 (= res!1438601 (not call!258639))))

(declare-fun bm!258634 () Bool)

(assert (=> bm!258634 (= call!258639 (isEmpty!21995 lt!1222190))))

(assert (= (and d!1051444 c!618342) b!3568097))

(assert (= (and d!1051444 (not c!618342)) b!3568093))

(assert (= (and d!1051444 c!618341) b!3568096))

(assert (= (and d!1051444 (not c!618341)) b!3568104))

(assert (= (and b!3568104 c!618343) b!3568102))

(assert (= (and b!3568104 (not c!618343)) b!3568095))

(assert (= (and b!3568095 (not res!1438599)) b!3568103))

(assert (= (and b!3568103 res!1438595) b!3568106))

(assert (= (and b!3568106 res!1438601) b!3568099))

(assert (= (and b!3568099 res!1438594) b!3568100))

(assert (= (and b!3568103 (not res!1438597)) b!3568105))

(assert (= (and b!3568105 res!1438600) b!3568101))

(assert (= (and b!3568101 (not res!1438596)) b!3568098))

(assert (= (and b!3568098 (not res!1438598)) b!3568094))

(assert (= (or b!3568096 b!3568101 b!3568106) bm!258634))

(assert (=> b!3568093 m!4054363))

(assert (=> b!3568093 m!4054363))

(declare-fun m!4055089 () Bool)

(assert (=> b!3568093 m!4055089))

(declare-fun m!4055091 () Bool)

(assert (=> b!3568093 m!4055091))

(assert (=> b!3568093 m!4055089))

(assert (=> b!3568093 m!4055091))

(declare-fun m!4055093 () Bool)

(assert (=> b!3568093 m!4055093))

(assert (=> b!3568098 m!4055091))

(assert (=> b!3568098 m!4055091))

(declare-fun m!4055095 () Bool)

(assert (=> b!3568098 m!4055095))

(declare-fun m!4055097 () Bool)

(assert (=> b!3568097 m!4055097))

(declare-fun m!4055099 () Bool)

(assert (=> d!1051444 m!4055099))

(declare-fun m!4055101 () Bool)

(assert (=> d!1051444 m!4055101))

(assert (=> b!3568100 m!4054363))

(assert (=> b!3568094 m!4054363))

(assert (=> bm!258634 m!4055099))

(assert (=> b!3568099 m!4055091))

(assert (=> b!3568099 m!4055091))

(assert (=> b!3568099 m!4055095))

(assert (=> b!3567689 d!1051444))

(declare-fun d!1051446 () Bool)

(assert (=> d!1051446 (= (get!12059 lt!1222188) (v!37270 lt!1222188))))

(assert (=> b!3567689 d!1051446))

(declare-fun d!1051448 () Bool)

(assert (=> d!1051448 (= (inv!50747 (tag!6160 (rule!8192 (h!42901 tokens!494)))) (= (mod (str.len (value!177380 (tag!6160 (rule!8192 (h!42901 tokens!494))))) 2) 0))))

(assert (=> b!3567668 d!1051448))

(declare-fun d!1051450 () Bool)

(declare-fun res!1438602 () Bool)

(declare-fun e!2207175 () Bool)

(assert (=> d!1051450 (=> (not res!1438602) (not e!2207175))))

(assert (=> d!1051450 (= res!1438602 (semiInverseModEq!2329 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))))))

(assert (=> d!1051450 (= (inv!50751 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) e!2207175)))

(declare-fun b!3568107 () Bool)

(assert (=> b!3568107 (= e!2207175 (equivClasses!2228 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))))))

(assert (= (and d!1051450 res!1438602) b!3568107))

(declare-fun m!4055103 () Bool)

(assert (=> d!1051450 m!4055103))

(declare-fun m!4055105 () Bool)

(assert (=> b!3568107 m!4055105))

(assert (=> b!3567668 d!1051450))

(declare-fun d!1051452 () Bool)

(declare-fun lt!1222349 () Bool)

(declare-fun content!5310 (List!37604) (InoxSet Rule!10812))

(assert (=> d!1051452 (= lt!1222349 (select (content!5310 rules!2135) (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(declare-fun e!2207181 () Bool)

(assert (=> d!1051452 (= lt!1222349 e!2207181)))

(declare-fun res!1438607 () Bool)

(assert (=> d!1051452 (=> (not res!1438607) (not e!2207181))))

(assert (=> d!1051452 (= res!1438607 ((_ is Cons!37480) rules!2135))))

(assert (=> d!1051452 (= (contains!7083 rules!2135 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222349)))

(declare-fun b!3568112 () Bool)

(declare-fun e!2207180 () Bool)

(assert (=> b!3568112 (= e!2207181 e!2207180)))

(declare-fun res!1438608 () Bool)

(assert (=> b!3568112 (=> res!1438608 e!2207180)))

(assert (=> b!3568112 (= res!1438608 (= (h!42900 rules!2135) (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(declare-fun b!3568113 () Bool)

(assert (=> b!3568113 (= e!2207180 (contains!7083 (t!288745 rules!2135) (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(assert (= (and d!1051452 res!1438607) b!3568112))

(assert (= (and b!3568112 (not res!1438608)) b!3568113))

(declare-fun m!4055107 () Bool)

(assert (=> d!1051452 m!4055107))

(declare-fun m!4055109 () Bool)

(assert (=> d!1051452 m!4055109))

(declare-fun m!4055111 () Bool)

(assert (=> b!3568113 m!4055111))

(assert (=> b!3567647 d!1051452))

(declare-fun d!1051454 () Bool)

(assert (=> d!1051454 (= (isEmpty!21995 lt!1222167) ((_ is Nil!37479) lt!1222167))))

(assert (=> b!3567664 d!1051454))

(declare-fun d!1051456 () Bool)

(assert (=> d!1051456 (= (isEmpty!21994 rules!2135) ((_ is Nil!37480) rules!2135))))

(assert (=> b!3567643 d!1051456))

(declare-fun d!1051458 () Bool)

(declare-fun lt!1222350 () Bool)

(assert (=> d!1051458 (= lt!1222350 (isEmpty!21995 (list!13743 (_2!21823 lt!1222175))))))

(assert (=> d!1051458 (= lt!1222350 (isEmpty!22004 (c!618263 (_2!21823 lt!1222175))))))

(assert (=> d!1051458 (= (isEmpty!21997 (_2!21823 lt!1222175)) lt!1222350)))

(declare-fun bs!569013 () Bool)

(assert (= bs!569013 d!1051458))

(declare-fun m!4055113 () Bool)

(assert (=> bs!569013 m!4055113))

(assert (=> bs!569013 m!4055113))

(declare-fun m!4055115 () Bool)

(assert (=> bs!569013 m!4055115))

(declare-fun m!4055117 () Bool)

(assert (=> bs!569013 m!4055117))

(assert (=> b!3567665 d!1051458))

(declare-fun d!1051460 () Bool)

(assert (=> d!1051460 (not (matchR!4849 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190))))

(declare-fun lt!1222353 () Unit!53455)

(declare-fun choose!20720 (Regex!10265 List!37603 C!20716) Unit!53455)

(assert (=> d!1051460 (= lt!1222353 (choose!20720 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190 lt!1222179))))

(assert (=> d!1051460 (validRegex!4690 (regex!5506 (rule!8192 separatorToken!241)))))

(assert (=> d!1051460 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!564 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190 lt!1222179) lt!1222353)))

(declare-fun bs!569014 () Bool)

(assert (= bs!569014 d!1051460))

(assert (=> bs!569014 m!4054441))

(declare-fun m!4055119 () Bool)

(assert (=> bs!569014 m!4055119))

(declare-fun m!4055121 () Bool)

(assert (=> bs!569014 m!4055121))

(assert (=> b!3567644 d!1051460))

(declare-fun b!3568114 () Bool)

(declare-fun e!2207183 () Bool)

(assert (=> b!3568114 (= e!2207183 (matchR!4849 (derivativeStep!3087 (regex!5506 (rule!8192 separatorToken!241)) (head!7431 lt!1222190)) (tail!5523 lt!1222190)))))

(declare-fun b!3568115 () Bool)

(declare-fun e!2207186 () Bool)

(assert (=> b!3568115 (= e!2207186 (not (= (head!7431 lt!1222190) (c!618262 (regex!5506 (rule!8192 separatorToken!241))))))))

(declare-fun b!3568116 () Bool)

(declare-fun res!1438614 () Bool)

(declare-fun e!2207188 () Bool)

(assert (=> b!3568116 (=> res!1438614 e!2207188)))

(assert (=> b!3568116 (= res!1438614 (not ((_ is ElementMatch!10265) (regex!5506 (rule!8192 separatorToken!241)))))))

(declare-fun e!2207185 () Bool)

(assert (=> b!3568116 (= e!2207185 e!2207188)))

(declare-fun b!3568117 () Bool)

(declare-fun e!2207182 () Bool)

(declare-fun lt!1222354 () Bool)

(declare-fun call!258640 () Bool)

(assert (=> b!3568117 (= e!2207182 (= lt!1222354 call!258640))))

(declare-fun b!3568118 () Bool)

(assert (=> b!3568118 (= e!2207183 (nullable!3534 (regex!5506 (rule!8192 separatorToken!241))))))

(declare-fun b!3568119 () Bool)

(declare-fun res!1438613 () Bool)

(assert (=> b!3568119 (=> res!1438613 e!2207186)))

(assert (=> b!3568119 (= res!1438613 (not (isEmpty!21995 (tail!5523 lt!1222190))))))

(declare-fun b!3568121 () Bool)

(declare-fun e!2207184 () Bool)

(assert (=> b!3568121 (= e!2207184 (= (head!7431 lt!1222190) (c!618262 (regex!5506 (rule!8192 separatorToken!241)))))))

(declare-fun b!3568122 () Bool)

(declare-fun e!2207187 () Bool)

(assert (=> b!3568122 (= e!2207187 e!2207186)))

(declare-fun res!1438611 () Bool)

(assert (=> b!3568122 (=> res!1438611 e!2207186)))

(assert (=> b!3568122 (= res!1438611 call!258640)))

(declare-fun b!3568123 () Bool)

(assert (=> b!3568123 (= e!2207185 (not lt!1222354))))

(declare-fun b!3568120 () Bool)

(declare-fun res!1438609 () Bool)

(assert (=> b!3568120 (=> (not res!1438609) (not e!2207184))))

(assert (=> b!3568120 (= res!1438609 (isEmpty!21995 (tail!5523 lt!1222190)))))

(declare-fun d!1051462 () Bool)

(assert (=> d!1051462 e!2207182))

(declare-fun c!618345 () Bool)

(assert (=> d!1051462 (= c!618345 ((_ is EmptyExpr!10265) (regex!5506 (rule!8192 separatorToken!241))))))

(assert (=> d!1051462 (= lt!1222354 e!2207183)))

(declare-fun c!618346 () Bool)

(assert (=> d!1051462 (= c!618346 (isEmpty!21995 lt!1222190))))

(assert (=> d!1051462 (validRegex!4690 (regex!5506 (rule!8192 separatorToken!241)))))

(assert (=> d!1051462 (= (matchR!4849 (regex!5506 (rule!8192 separatorToken!241)) lt!1222190) lt!1222354)))

(declare-fun b!3568124 () Bool)

(declare-fun res!1438612 () Bool)

(assert (=> b!3568124 (=> res!1438612 e!2207188)))

(assert (=> b!3568124 (= res!1438612 e!2207184)))

(declare-fun res!1438610 () Bool)

(assert (=> b!3568124 (=> (not res!1438610) (not e!2207184))))

(assert (=> b!3568124 (= res!1438610 lt!1222354)))

(declare-fun b!3568125 () Bool)

(assert (=> b!3568125 (= e!2207182 e!2207185)))

(declare-fun c!618347 () Bool)

(assert (=> b!3568125 (= c!618347 ((_ is EmptyLang!10265) (regex!5506 (rule!8192 separatorToken!241))))))

(declare-fun b!3568126 () Bool)

(assert (=> b!3568126 (= e!2207188 e!2207187)))

(declare-fun res!1438615 () Bool)

(assert (=> b!3568126 (=> (not res!1438615) (not e!2207187))))

(assert (=> b!3568126 (= res!1438615 (not lt!1222354))))

(declare-fun b!3568127 () Bool)

(declare-fun res!1438616 () Bool)

(assert (=> b!3568127 (=> (not res!1438616) (not e!2207184))))

(assert (=> b!3568127 (= res!1438616 (not call!258640))))

(declare-fun bm!258635 () Bool)

(assert (=> bm!258635 (= call!258640 (isEmpty!21995 lt!1222190))))

(assert (= (and d!1051462 c!618346) b!3568118))

(assert (= (and d!1051462 (not c!618346)) b!3568114))

(assert (= (and d!1051462 c!618345) b!3568117))

(assert (= (and d!1051462 (not c!618345)) b!3568125))

(assert (= (and b!3568125 c!618347) b!3568123))

(assert (= (and b!3568125 (not c!618347)) b!3568116))

(assert (= (and b!3568116 (not res!1438614)) b!3568124))

(assert (= (and b!3568124 res!1438610) b!3568127))

(assert (= (and b!3568127 res!1438616) b!3568120))

(assert (= (and b!3568120 res!1438609) b!3568121))

(assert (= (and b!3568124 (not res!1438612)) b!3568126))

(assert (= (and b!3568126 res!1438615) b!3568122))

(assert (= (and b!3568122 (not res!1438611)) b!3568119))

(assert (= (and b!3568119 (not res!1438613)) b!3568115))

(assert (= (or b!3568117 b!3568122 b!3568127) bm!258635))

(assert (=> b!3568114 m!4054363))

(assert (=> b!3568114 m!4054363))

(declare-fun m!4055123 () Bool)

(assert (=> b!3568114 m!4055123))

(assert (=> b!3568114 m!4055091))

(assert (=> b!3568114 m!4055123))

(assert (=> b!3568114 m!4055091))

(declare-fun m!4055125 () Bool)

(assert (=> b!3568114 m!4055125))

(assert (=> b!3568119 m!4055091))

(assert (=> b!3568119 m!4055091))

(assert (=> b!3568119 m!4055095))

(declare-fun m!4055127 () Bool)

(assert (=> b!3568118 m!4055127))

(assert (=> d!1051462 m!4055099))

(assert (=> d!1051462 m!4055121))

(assert (=> b!3568121 m!4054363))

(assert (=> b!3568115 m!4054363))

(assert (=> bm!258635 m!4055099))

(assert (=> b!3568120 m!4055091))

(assert (=> b!3568120 m!4055091))

(assert (=> b!3568120 m!4055095))

(assert (=> b!3567644 d!1051462))

(declare-fun d!1051464 () Bool)

(declare-fun res!1438621 () Bool)

(declare-fun e!2207193 () Bool)

(assert (=> d!1051464 (=> res!1438621 e!2207193)))

(assert (=> d!1051464 (= res!1438621 (not ((_ is Cons!37480) rules!2135)))))

(assert (=> d!1051464 (= (sepAndNonSepRulesDisjointChars!1700 rules!2135 rules!2135) e!2207193)))

(declare-fun b!3568132 () Bool)

(declare-fun e!2207194 () Bool)

(assert (=> b!3568132 (= e!2207193 e!2207194)))

(declare-fun res!1438622 () Bool)

(assert (=> b!3568132 (=> (not res!1438622) (not e!2207194))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!765 (Rule!10812 List!37604) Bool)

(assert (=> b!3568132 (= res!1438622 (ruleDisjointCharsFromAllFromOtherType!765 (h!42900 rules!2135) rules!2135))))

(declare-fun b!3568133 () Bool)

(assert (=> b!3568133 (= e!2207194 (sepAndNonSepRulesDisjointChars!1700 rules!2135 (t!288745 rules!2135)))))

(assert (= (and d!1051464 (not res!1438621)) b!3568132))

(assert (= (and b!3568132 res!1438622) b!3568133))

(declare-fun m!4055129 () Bool)

(assert (=> b!3568132 m!4055129))

(declare-fun m!4055131 () Bool)

(assert (=> b!3568133 m!4055131))

(assert (=> b!3567682 d!1051464))

(declare-fun b!3568135 () Bool)

(declare-fun e!2207196 () List!37603)

(assert (=> b!3568135 (= e!2207196 (Cons!37479 (h!42899 (++!9315 lt!1222162 lt!1222190)) (++!9315 (t!288744 (++!9315 lt!1222162 lt!1222190)) lt!1222167)))))

(declare-fun b!3568136 () Bool)

(declare-fun res!1438623 () Bool)

(declare-fun e!2207195 () Bool)

(assert (=> b!3568136 (=> (not res!1438623) (not e!2207195))))

(declare-fun lt!1222355 () List!37603)

(assert (=> b!3568136 (= res!1438623 (= (size!28564 lt!1222355) (+ (size!28564 (++!9315 lt!1222162 lt!1222190)) (size!28564 lt!1222167))))))

(declare-fun d!1051466 () Bool)

(assert (=> d!1051466 e!2207195))

(declare-fun res!1438624 () Bool)

(assert (=> d!1051466 (=> (not res!1438624) (not e!2207195))))

(assert (=> d!1051466 (= res!1438624 (= (content!5309 lt!1222355) ((_ map or) (content!5309 (++!9315 lt!1222162 lt!1222190)) (content!5309 lt!1222167))))))

(assert (=> d!1051466 (= lt!1222355 e!2207196)))

(declare-fun c!618348 () Bool)

(assert (=> d!1051466 (= c!618348 ((_ is Nil!37479) (++!9315 lt!1222162 lt!1222190)))))

(assert (=> d!1051466 (= (++!9315 (++!9315 lt!1222162 lt!1222190) lt!1222167) lt!1222355)))

(declare-fun b!3568137 () Bool)

(assert (=> b!3568137 (= e!2207195 (or (not (= lt!1222167 Nil!37479)) (= lt!1222355 (++!9315 lt!1222162 lt!1222190))))))

(declare-fun b!3568134 () Bool)

(assert (=> b!3568134 (= e!2207196 lt!1222167)))

(assert (= (and d!1051466 c!618348) b!3568134))

(assert (= (and d!1051466 (not c!618348)) b!3568135))

(assert (= (and d!1051466 res!1438624) b!3568136))

(assert (= (and b!3568136 res!1438623) b!3568137))

(declare-fun m!4055133 () Bool)

(assert (=> b!3568135 m!4055133))

(declare-fun m!4055135 () Bool)

(assert (=> b!3568136 m!4055135))

(assert (=> b!3568136 m!4054443))

(declare-fun m!4055137 () Bool)

(assert (=> b!3568136 m!4055137))

(assert (=> b!3568136 m!4054681))

(declare-fun m!4055139 () Bool)

(assert (=> d!1051466 m!4055139))

(assert (=> d!1051466 m!4054443))

(declare-fun m!4055141 () Bool)

(assert (=> d!1051466 m!4055141))

(assert (=> d!1051466 m!4054685))

(assert (=> b!3567661 d!1051466))

(declare-fun b!3568139 () Bool)

(declare-fun e!2207198 () List!37603)

(assert (=> b!3568139 (= e!2207198 (Cons!37479 (h!42899 lt!1222162) (++!9315 (t!288744 lt!1222162) lt!1222190)))))

(declare-fun b!3568140 () Bool)

(declare-fun res!1438625 () Bool)

(declare-fun e!2207197 () Bool)

(assert (=> b!3568140 (=> (not res!1438625) (not e!2207197))))

(declare-fun lt!1222356 () List!37603)

(assert (=> b!3568140 (= res!1438625 (= (size!28564 lt!1222356) (+ (size!28564 lt!1222162) (size!28564 lt!1222190))))))

(declare-fun d!1051468 () Bool)

(assert (=> d!1051468 e!2207197))

(declare-fun res!1438626 () Bool)

(assert (=> d!1051468 (=> (not res!1438626) (not e!2207197))))

(assert (=> d!1051468 (= res!1438626 (= (content!5309 lt!1222356) ((_ map or) (content!5309 lt!1222162) (content!5309 lt!1222190))))))

(assert (=> d!1051468 (= lt!1222356 e!2207198)))

(declare-fun c!618349 () Bool)

(assert (=> d!1051468 (= c!618349 ((_ is Nil!37479) lt!1222162))))

(assert (=> d!1051468 (= (++!9315 lt!1222162 lt!1222190) lt!1222356)))

(declare-fun b!3568141 () Bool)

(assert (=> b!3568141 (= e!2207197 (or (not (= lt!1222190 Nil!37479)) (= lt!1222356 lt!1222162)))))

(declare-fun b!3568138 () Bool)

(assert (=> b!3568138 (= e!2207198 lt!1222190)))

(assert (= (and d!1051468 c!618349) b!3568138))

(assert (= (and d!1051468 (not c!618349)) b!3568139))

(assert (= (and d!1051468 res!1438626) b!3568140))

(assert (= (and b!3568140 res!1438625) b!3568141))

(declare-fun m!4055143 () Bool)

(assert (=> b!3568139 m!4055143))

(declare-fun m!4055145 () Bool)

(assert (=> b!3568140 m!4055145))

(assert (=> b!3568140 m!4054411))

(assert (=> b!3568140 m!4054669))

(declare-fun m!4055147 () Bool)

(assert (=> d!1051468 m!4055147))

(assert (=> d!1051468 m!4054941))

(assert (=> d!1051468 m!4054675))

(assert (=> b!3567661 d!1051468))

(declare-fun d!1051470 () Bool)

(declare-fun lt!1222368 () Bool)

(declare-fun e!2207215 () Bool)

(assert (=> d!1051470 (= lt!1222368 e!2207215)))

(declare-fun res!1438642 () Bool)

(assert (=> d!1051470 (=> (not res!1438642) (not e!2207215))))

(assert (=> d!1051470 (= res!1438642 (= (list!13745 (_1!21823 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 (h!42901 tokens!494)))))) (list!13745 (singletonSeq!2602 (h!42901 tokens!494)))))))

(declare-fun e!2207216 () Bool)

(assert (=> d!1051470 (= lt!1222368 e!2207216)))

(declare-fun res!1438643 () Bool)

(assert (=> d!1051470 (=> (not res!1438643) (not e!2207216))))

(declare-fun lt!1222367 () tuple2!37378)

(assert (=> d!1051470 (= res!1438643 (= (size!28565 (_1!21823 lt!1222367)) 1))))

(assert (=> d!1051470 (= lt!1222367 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 (h!42901 tokens!494)))))))

(assert (=> d!1051470 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051470 (= (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 tokens!494)) lt!1222368)))

(declare-fun b!3568166 () Bool)

(declare-fun res!1438644 () Bool)

(assert (=> b!3568166 (=> (not res!1438644) (not e!2207216))))

(assert (=> b!3568166 (= res!1438644 (= (apply!8996 (_1!21823 lt!1222367) 0) (h!42901 tokens!494)))))

(declare-fun b!3568167 () Bool)

(assert (=> b!3568167 (= e!2207216 (isEmpty!21997 (_2!21823 lt!1222367)))))

(declare-fun b!3568168 () Bool)

(assert (=> b!3568168 (= e!2207215 (isEmpty!21997 (_2!21823 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 (h!42901 tokens!494)))))))))

(assert (= (and d!1051470 res!1438643) b!3568166))

(assert (= (and b!3568166 res!1438644) b!3568167))

(assert (= (and d!1051470 res!1438642) b!3568168))

(assert (=> d!1051470 m!4054467))

(declare-fun m!4055165 () Bool)

(assert (=> d!1051470 m!4055165))

(declare-fun m!4055167 () Bool)

(assert (=> d!1051470 m!4055167))

(declare-fun m!4055171 () Bool)

(assert (=> d!1051470 m!4055171))

(assert (=> d!1051470 m!4054333))

(assert (=> d!1051470 m!4054467))

(assert (=> d!1051470 m!4055165))

(declare-fun m!4055177 () Bool)

(assert (=> d!1051470 m!4055177))

(assert (=> d!1051470 m!4054467))

(declare-fun m!4055181 () Bool)

(assert (=> d!1051470 m!4055181))

(declare-fun m!4055183 () Bool)

(assert (=> b!3568166 m!4055183))

(declare-fun m!4055185 () Bool)

(assert (=> b!3568167 m!4055185))

(assert (=> b!3568168 m!4054467))

(assert (=> b!3568168 m!4054467))

(assert (=> b!3568168 m!4055165))

(assert (=> b!3568168 m!4055165))

(assert (=> b!3568168 m!4055167))

(declare-fun m!4055187 () Bool)

(assert (=> b!3568168 m!4055187))

(assert (=> b!3567662 d!1051470))

(declare-fun d!1051484 () Bool)

(assert (=> d!1051484 (not (matchR!4849 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191))))

(declare-fun lt!1222371 () Unit!53455)

(assert (=> d!1051484 (= lt!1222371 (choose!20720 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191 lt!1222192))))

(assert (=> d!1051484 (validRegex!4690 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(assert (=> d!1051484 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!564 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191 lt!1222192) lt!1222371)))

(declare-fun bs!569019 () Bool)

(assert (= bs!569019 d!1051484))

(assert (=> bs!569019 m!4054539))

(declare-fun m!4055201 () Bool)

(assert (=> bs!569019 m!4055201))

(declare-fun m!4055205 () Bool)

(assert (=> bs!569019 m!4055205))

(assert (=> b!3567641 d!1051484))

(declare-fun b!3568177 () Bool)

(declare-fun e!2207222 () Bool)

(assert (=> b!3568177 (= e!2207222 (matchR!4849 (derivativeStep!3087 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (head!7431 lt!1222191)) (tail!5523 lt!1222191)))))

(declare-fun b!3568178 () Bool)

(declare-fun e!2207225 () Bool)

(assert (=> b!3568178 (= e!2207225 (not (= (head!7431 lt!1222191) (c!618262 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))))

(declare-fun b!3568179 () Bool)

(declare-fun res!1438654 () Bool)

(declare-fun e!2207227 () Bool)

(assert (=> b!3568179 (=> res!1438654 e!2207227)))

(assert (=> b!3568179 (= res!1438654 (not ((_ is ElementMatch!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))

(declare-fun e!2207224 () Bool)

(assert (=> b!3568179 (= e!2207224 e!2207227)))

(declare-fun b!3568180 () Bool)

(declare-fun e!2207221 () Bool)

(declare-fun lt!1222372 () Bool)

(declare-fun call!258641 () Bool)

(assert (=> b!3568180 (= e!2207221 (= lt!1222372 call!258641))))

(declare-fun b!3568181 () Bool)

(assert (=> b!3568181 (= e!2207222 (nullable!3534 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun b!3568182 () Bool)

(declare-fun res!1438653 () Bool)

(assert (=> b!3568182 (=> res!1438653 e!2207225)))

(assert (=> b!3568182 (= res!1438653 (not (isEmpty!21995 (tail!5523 lt!1222191))))))

(declare-fun b!3568184 () Bool)

(declare-fun e!2207223 () Bool)

(assert (=> b!3568184 (= e!2207223 (= (head!7431 lt!1222191) (c!618262 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))

(declare-fun b!3568185 () Bool)

(declare-fun e!2207226 () Bool)

(assert (=> b!3568185 (= e!2207226 e!2207225)))

(declare-fun res!1438651 () Bool)

(assert (=> b!3568185 (=> res!1438651 e!2207225)))

(assert (=> b!3568185 (= res!1438651 call!258641)))

(declare-fun b!3568186 () Bool)

(assert (=> b!3568186 (= e!2207224 (not lt!1222372))))

(declare-fun b!3568183 () Bool)

(declare-fun res!1438649 () Bool)

(assert (=> b!3568183 (=> (not res!1438649) (not e!2207223))))

(assert (=> b!3568183 (= res!1438649 (isEmpty!21995 (tail!5523 lt!1222191)))))

(declare-fun d!1051488 () Bool)

(assert (=> d!1051488 e!2207221))

(declare-fun c!618355 () Bool)

(assert (=> d!1051488 (= c!618355 ((_ is EmptyExpr!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(assert (=> d!1051488 (= lt!1222372 e!2207222)))

(declare-fun c!618356 () Bool)

(assert (=> d!1051488 (= c!618356 (isEmpty!21995 lt!1222191))))

(assert (=> d!1051488 (validRegex!4690 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(assert (=> d!1051488 (= (matchR!4849 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191) lt!1222372)))

(declare-fun b!3568187 () Bool)

(declare-fun res!1438652 () Bool)

(assert (=> b!3568187 (=> res!1438652 e!2207227)))

(assert (=> b!3568187 (= res!1438652 e!2207223)))

(declare-fun res!1438650 () Bool)

(assert (=> b!3568187 (=> (not res!1438650) (not e!2207223))))

(assert (=> b!3568187 (= res!1438650 lt!1222372)))

(declare-fun b!3568188 () Bool)

(assert (=> b!3568188 (= e!2207221 e!2207224)))

(declare-fun c!618357 () Bool)

(assert (=> b!3568188 (= c!618357 ((_ is EmptyLang!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun b!3568189 () Bool)

(assert (=> b!3568189 (= e!2207227 e!2207226)))

(declare-fun res!1438655 () Bool)

(assert (=> b!3568189 (=> (not res!1438655) (not e!2207226))))

(assert (=> b!3568189 (= res!1438655 (not lt!1222372))))

(declare-fun b!3568190 () Bool)

(declare-fun res!1438656 () Bool)

(assert (=> b!3568190 (=> (not res!1438656) (not e!2207223))))

(assert (=> b!3568190 (= res!1438656 (not call!258641))))

(declare-fun bm!258636 () Bool)

(assert (=> bm!258636 (= call!258641 (isEmpty!21995 lt!1222191))))

(assert (= (and d!1051488 c!618356) b!3568181))

(assert (= (and d!1051488 (not c!618356)) b!3568177))

(assert (= (and d!1051488 c!618355) b!3568180))

(assert (= (and d!1051488 (not c!618355)) b!3568188))

(assert (= (and b!3568188 c!618357) b!3568186))

(assert (= (and b!3568188 (not c!618357)) b!3568179))

(assert (= (and b!3568179 (not res!1438654)) b!3568187))

(assert (= (and b!3568187 res!1438650) b!3568190))

(assert (= (and b!3568190 res!1438656) b!3568183))

(assert (= (and b!3568183 res!1438649) b!3568184))

(assert (= (and b!3568187 (not res!1438652)) b!3568189))

(assert (= (and b!3568189 res!1438655) b!3568185))

(assert (= (and b!3568185 (not res!1438651)) b!3568182))

(assert (= (and b!3568182 (not res!1438653)) b!3568178))

(assert (= (or b!3568180 b!3568185 b!3568190) bm!258636))

(assert (=> b!3568177 m!4054393))

(assert (=> b!3568177 m!4054393))

(declare-fun m!4055207 () Bool)

(assert (=> b!3568177 m!4055207))

(declare-fun m!4055209 () Bool)

(assert (=> b!3568177 m!4055209))

(assert (=> b!3568177 m!4055207))

(assert (=> b!3568177 m!4055209))

(declare-fun m!4055211 () Bool)

(assert (=> b!3568177 m!4055211))

(assert (=> b!3568182 m!4055209))

(assert (=> b!3568182 m!4055209))

(declare-fun m!4055213 () Bool)

(assert (=> b!3568182 m!4055213))

(declare-fun m!4055215 () Bool)

(assert (=> b!3568181 m!4055215))

(declare-fun m!4055217 () Bool)

(assert (=> d!1051488 m!4055217))

(assert (=> d!1051488 m!4055205))

(assert (=> b!3568184 m!4054393))

(assert (=> b!3568178 m!4054393))

(assert (=> bm!258636 m!4055217))

(assert (=> b!3568183 m!4055209))

(assert (=> b!3568183 m!4055209))

(assert (=> b!3568183 m!4055213))

(assert (=> b!3567641 d!1051488))

(declare-fun d!1051490 () Bool)

(declare-fun lt!1222376 () Bool)

(declare-fun e!2207228 () Bool)

(assert (=> d!1051490 (= lt!1222376 e!2207228)))

(declare-fun res!1438657 () Bool)

(assert (=> d!1051490 (=> (not res!1438657) (not e!2207228))))

(assert (=> d!1051490 (= res!1438657 (= (list!13745 (_1!21823 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 separatorToken!241))))) (list!13745 (singletonSeq!2602 separatorToken!241))))))

(declare-fun e!2207229 () Bool)

(assert (=> d!1051490 (= lt!1222376 e!2207229)))

(declare-fun res!1438658 () Bool)

(assert (=> d!1051490 (=> (not res!1438658) (not e!2207229))))

(declare-fun lt!1222375 () tuple2!37378)

(assert (=> d!1051490 (= res!1438658 (= (size!28565 (_1!21823 lt!1222375)) 1))))

(assert (=> d!1051490 (= lt!1222375 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 separatorToken!241))))))

(assert (=> d!1051490 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051490 (= (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 separatorToken!241) lt!1222376)))

(declare-fun b!3568191 () Bool)

(declare-fun res!1438659 () Bool)

(assert (=> b!3568191 (=> (not res!1438659) (not e!2207229))))

(assert (=> b!3568191 (= res!1438659 (= (apply!8996 (_1!21823 lt!1222375) 0) separatorToken!241))))

(declare-fun b!3568192 () Bool)

(assert (=> b!3568192 (= e!2207229 (isEmpty!21997 (_2!21823 lt!1222375)))))

(declare-fun b!3568193 () Bool)

(assert (=> b!3568193 (= e!2207228 (isEmpty!21997 (_2!21823 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 separatorToken!241))))))))

(assert (= (and d!1051490 res!1438658) b!3568191))

(assert (= (and b!3568191 res!1438659) b!3568192))

(assert (= (and d!1051490 res!1438657) b!3568193))

(assert (=> d!1051490 m!4054381))

(declare-fun m!4055219 () Bool)

(assert (=> d!1051490 m!4055219))

(declare-fun m!4055221 () Bool)

(assert (=> d!1051490 m!4055221))

(declare-fun m!4055223 () Bool)

(assert (=> d!1051490 m!4055223))

(assert (=> d!1051490 m!4054333))

(assert (=> d!1051490 m!4054381))

(assert (=> d!1051490 m!4055219))

(declare-fun m!4055225 () Bool)

(assert (=> d!1051490 m!4055225))

(assert (=> d!1051490 m!4054381))

(declare-fun m!4055227 () Bool)

(assert (=> d!1051490 m!4055227))

(declare-fun m!4055231 () Bool)

(assert (=> b!3568191 m!4055231))

(declare-fun m!4055233 () Bool)

(assert (=> b!3568192 m!4055233))

(assert (=> b!3568193 m!4054381))

(assert (=> b!3568193 m!4054381))

(assert (=> b!3568193 m!4055219))

(assert (=> b!3568193 m!4055219))

(assert (=> b!3568193 m!4055221))

(declare-fun m!4055235 () Bool)

(assert (=> b!3568193 m!4055235))

(assert (=> b!3567684 d!1051490))

(declare-fun d!1051494 () Bool)

(assert (=> d!1051494 (= (inv!50747 (tag!6160 (rule!8192 separatorToken!241))) (= (mod (str.len (value!177380 (tag!6160 (rule!8192 separatorToken!241)))) 2) 0))))

(assert (=> b!3567663 d!1051494))

(declare-fun d!1051498 () Bool)

(declare-fun res!1438662 () Bool)

(declare-fun e!2207232 () Bool)

(assert (=> d!1051498 (=> (not res!1438662) (not e!2207232))))

(assert (=> d!1051498 (= res!1438662 (semiInverseModEq!2329 (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toValue!7774 (transformation!5506 (rule!8192 separatorToken!241)))))))

(assert (=> d!1051498 (= (inv!50751 (transformation!5506 (rule!8192 separatorToken!241))) e!2207232)))

(declare-fun b!3568198 () Bool)

(assert (=> b!3568198 (= e!2207232 (equivClasses!2228 (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toValue!7774 (transformation!5506 (rule!8192 separatorToken!241)))))))

(assert (= (and d!1051498 res!1438662) b!3568198))

(declare-fun m!4055239 () Bool)

(assert (=> d!1051498 m!4055239))

(declare-fun m!4055241 () Bool)

(assert (=> b!3568198 m!4055241))

(assert (=> b!3567663 d!1051498))

(declare-fun b!3568199 () Bool)

(declare-fun res!1438663 () Bool)

(declare-fun e!2207234 () Bool)

(assert (=> b!3568199 (=> res!1438663 e!2207234)))

(assert (=> b!3568199 (= res!1438663 (not ((_ is IntegerValue!17210) (value!177381 separatorToken!241))))))

(declare-fun e!2207235 () Bool)

(assert (=> b!3568199 (= e!2207235 e!2207234)))

(declare-fun b!3568200 () Bool)

(assert (=> b!3568200 (= e!2207234 (inv!15 (value!177381 separatorToken!241)))))

(declare-fun b!3568201 () Bool)

(declare-fun e!2207233 () Bool)

(assert (=> b!3568201 (= e!2207233 (inv!16 (value!177381 separatorToken!241)))))

(declare-fun d!1051500 () Bool)

(declare-fun c!618360 () Bool)

(assert (=> d!1051500 (= c!618360 ((_ is IntegerValue!17208) (value!177381 separatorToken!241)))))

(assert (=> d!1051500 (= (inv!21 (value!177381 separatorToken!241)) e!2207233)))

(declare-fun b!3568202 () Bool)

(assert (=> b!3568202 (= e!2207233 e!2207235)))

(declare-fun c!618359 () Bool)

(assert (=> b!3568202 (= c!618359 ((_ is IntegerValue!17209) (value!177381 separatorToken!241)))))

(declare-fun b!3568203 () Bool)

(assert (=> b!3568203 (= e!2207235 (inv!17 (value!177381 separatorToken!241)))))

(assert (= (and d!1051500 c!618360) b!3568201))

(assert (= (and d!1051500 (not c!618360)) b!3568202))

(assert (= (and b!3568202 c!618359) b!3568203))

(assert (= (and b!3568202 (not c!618359)) b!3568199))

(assert (= (and b!3568199 (not res!1438663)) b!3568200))

(declare-fun m!4055249 () Bool)

(assert (=> b!3568200 m!4055249))

(declare-fun m!4055251 () Bool)

(assert (=> b!3568201 m!4055251))

(declare-fun m!4055253 () Bool)

(assert (=> b!3568203 m!4055253))

(assert (=> b!3567658 d!1051500))

(declare-fun bs!569025 () Bool)

(declare-fun d!1051504 () Bool)

(assert (= bs!569025 (and d!1051504 b!3567655)))

(declare-fun lambda!123401 () Int)

(assert (=> bs!569025 (not (= lambda!123401 lambda!123390))))

(declare-fun bs!569026 () Bool)

(assert (= bs!569026 (and d!1051504 b!3567678)))

(assert (=> bs!569026 (= lambda!123401 lambda!123391)))

(declare-fun b!3568246 () Bool)

(declare-fun e!2207267 () Bool)

(assert (=> b!3568246 (= e!2207267 true)))

(declare-fun b!3568245 () Bool)

(declare-fun e!2207266 () Bool)

(assert (=> b!3568245 (= e!2207266 e!2207267)))

(declare-fun b!3568244 () Bool)

(declare-fun e!2207265 () Bool)

(assert (=> b!3568244 (= e!2207265 e!2207266)))

(assert (=> d!1051504 e!2207265))

(assert (= b!3568245 b!3568246))

(assert (= b!3568244 b!3568245))

(assert (= (and d!1051504 ((_ is Cons!37480) rules!2135)) b!3568244))

(assert (=> b!3568246 (< (dynLambda!16075 order!20309 (toValue!7774 (transformation!5506 (h!42900 rules!2135)))) (dynLambda!16076 order!20311 lambda!123401))))

(assert (=> b!3568246 (< (dynLambda!16077 order!20313 (toChars!7633 (transformation!5506 (h!42900 rules!2135)))) (dynLambda!16076 order!20311 lambda!123401))))

(assert (=> d!1051504 true))

(declare-fun e!2207264 () Bool)

(assert (=> d!1051504 e!2207264))

(declare-fun res!1438690 () Bool)

(assert (=> d!1051504 (=> (not res!1438690) (not e!2207264))))

(declare-fun lt!1222396 () Bool)

(assert (=> d!1051504 (= res!1438690 (= lt!1222396 (forall!8102 (list!13745 (seqFromList!4066 tokens!494)) lambda!123401)))))

(declare-fun forall!8104 (BalanceConc!22390 Int) Bool)

(assert (=> d!1051504 (= lt!1222396 (forall!8104 (seqFromList!4066 tokens!494) lambda!123401))))

(assert (=> d!1051504 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051504 (= (rulesProduceEachTokenIndividually!1546 thiss!18206 rules!2135 (seqFromList!4066 tokens!494)) lt!1222396)))

(declare-fun b!3568243 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1901 (LexerInterface!5095 List!37604 List!37605) Bool)

(assert (=> b!3568243 (= e!2207264 (= lt!1222396 (rulesProduceEachTokenIndividuallyList!1901 thiss!18206 rules!2135 (list!13745 (seqFromList!4066 tokens!494)))))))

(assert (= (and d!1051504 res!1438690) b!3568243))

(assert (=> d!1051504 m!4054509))

(declare-fun m!4055335 () Bool)

(assert (=> d!1051504 m!4055335))

(assert (=> d!1051504 m!4055335))

(declare-fun m!4055337 () Bool)

(assert (=> d!1051504 m!4055337))

(assert (=> d!1051504 m!4054509))

(declare-fun m!4055339 () Bool)

(assert (=> d!1051504 m!4055339))

(assert (=> d!1051504 m!4054333))

(assert (=> b!3568243 m!4054509))

(assert (=> b!3568243 m!4055335))

(assert (=> b!3568243 m!4055335))

(declare-fun m!4055341 () Bool)

(assert (=> b!3568243 m!4055341))

(assert (=> b!3567680 d!1051504))

(declare-fun d!1051542 () Bool)

(declare-fun fromListB!1875 (List!37605) BalanceConc!22390)

(assert (=> d!1051542 (= (seqFromList!4066 tokens!494) (fromListB!1875 tokens!494))))

(declare-fun bs!569027 () Bool)

(assert (= bs!569027 d!1051542))

(declare-fun m!4055343 () Bool)

(assert (=> bs!569027 m!4055343))

(assert (=> b!3567680 d!1051542))

(declare-fun d!1051544 () Bool)

(assert (=> d!1051544 (= (get!12060 lt!1222142) (v!37271 lt!1222142))))

(assert (=> b!3567681 d!1051544))

(declare-fun b!3568247 () Bool)

(declare-fun e!2207269 () Bool)

(assert (=> b!3568247 (= e!2207269 (matchR!4849 (derivativeStep!3087 (regex!5506 lt!1222178) (head!7431 lt!1222191)) (tail!5523 lt!1222191)))))

(declare-fun b!3568248 () Bool)

(declare-fun e!2207272 () Bool)

(assert (=> b!3568248 (= e!2207272 (not (= (head!7431 lt!1222191) (c!618262 (regex!5506 lt!1222178)))))))

(declare-fun b!3568249 () Bool)

(declare-fun res!1438696 () Bool)

(declare-fun e!2207274 () Bool)

(assert (=> b!3568249 (=> res!1438696 e!2207274)))

(assert (=> b!3568249 (= res!1438696 (not ((_ is ElementMatch!10265) (regex!5506 lt!1222178))))))

(declare-fun e!2207271 () Bool)

(assert (=> b!3568249 (= e!2207271 e!2207274)))

(declare-fun b!3568250 () Bool)

(declare-fun e!2207268 () Bool)

(declare-fun lt!1222397 () Bool)

(declare-fun call!258643 () Bool)

(assert (=> b!3568250 (= e!2207268 (= lt!1222397 call!258643))))

(declare-fun b!3568251 () Bool)

(assert (=> b!3568251 (= e!2207269 (nullable!3534 (regex!5506 lt!1222178)))))

(declare-fun b!3568252 () Bool)

(declare-fun res!1438695 () Bool)

(assert (=> b!3568252 (=> res!1438695 e!2207272)))

(assert (=> b!3568252 (= res!1438695 (not (isEmpty!21995 (tail!5523 lt!1222191))))))

(declare-fun b!3568254 () Bool)

(declare-fun e!2207270 () Bool)

(assert (=> b!3568254 (= e!2207270 (= (head!7431 lt!1222191) (c!618262 (regex!5506 lt!1222178))))))

(declare-fun b!3568255 () Bool)

(declare-fun e!2207273 () Bool)

(assert (=> b!3568255 (= e!2207273 e!2207272)))

(declare-fun res!1438693 () Bool)

(assert (=> b!3568255 (=> res!1438693 e!2207272)))

(assert (=> b!3568255 (= res!1438693 call!258643)))

(declare-fun b!3568256 () Bool)

(assert (=> b!3568256 (= e!2207271 (not lt!1222397))))

(declare-fun b!3568253 () Bool)

(declare-fun res!1438691 () Bool)

(assert (=> b!3568253 (=> (not res!1438691) (not e!2207270))))

(assert (=> b!3568253 (= res!1438691 (isEmpty!21995 (tail!5523 lt!1222191)))))

(declare-fun d!1051546 () Bool)

(assert (=> d!1051546 e!2207268))

(declare-fun c!618367 () Bool)

(assert (=> d!1051546 (= c!618367 ((_ is EmptyExpr!10265) (regex!5506 lt!1222178)))))

(assert (=> d!1051546 (= lt!1222397 e!2207269)))

(declare-fun c!618368 () Bool)

(assert (=> d!1051546 (= c!618368 (isEmpty!21995 lt!1222191))))

(assert (=> d!1051546 (validRegex!4690 (regex!5506 lt!1222178))))

(assert (=> d!1051546 (= (matchR!4849 (regex!5506 lt!1222178) lt!1222191) lt!1222397)))

(declare-fun b!3568257 () Bool)

(declare-fun res!1438694 () Bool)

(assert (=> b!3568257 (=> res!1438694 e!2207274)))

(assert (=> b!3568257 (= res!1438694 e!2207270)))

(declare-fun res!1438692 () Bool)

(assert (=> b!3568257 (=> (not res!1438692) (not e!2207270))))

(assert (=> b!3568257 (= res!1438692 lt!1222397)))

(declare-fun b!3568258 () Bool)

(assert (=> b!3568258 (= e!2207268 e!2207271)))

(declare-fun c!618369 () Bool)

(assert (=> b!3568258 (= c!618369 ((_ is EmptyLang!10265) (regex!5506 lt!1222178)))))

(declare-fun b!3568259 () Bool)

(assert (=> b!3568259 (= e!2207274 e!2207273)))

(declare-fun res!1438697 () Bool)

(assert (=> b!3568259 (=> (not res!1438697) (not e!2207273))))

(assert (=> b!3568259 (= res!1438697 (not lt!1222397))))

(declare-fun b!3568260 () Bool)

(declare-fun res!1438698 () Bool)

(assert (=> b!3568260 (=> (not res!1438698) (not e!2207270))))

(assert (=> b!3568260 (= res!1438698 (not call!258643))))

(declare-fun bm!258638 () Bool)

(assert (=> bm!258638 (= call!258643 (isEmpty!21995 lt!1222191))))

(assert (= (and d!1051546 c!618368) b!3568251))

(assert (= (and d!1051546 (not c!618368)) b!3568247))

(assert (= (and d!1051546 c!618367) b!3568250))

(assert (= (and d!1051546 (not c!618367)) b!3568258))

(assert (= (and b!3568258 c!618369) b!3568256))

(assert (= (and b!3568258 (not c!618369)) b!3568249))

(assert (= (and b!3568249 (not res!1438696)) b!3568257))

(assert (= (and b!3568257 res!1438692) b!3568260))

(assert (= (and b!3568260 res!1438698) b!3568253))

(assert (= (and b!3568253 res!1438691) b!3568254))

(assert (= (and b!3568257 (not res!1438694)) b!3568259))

(assert (= (and b!3568259 res!1438697) b!3568255))

(assert (= (and b!3568255 (not res!1438693)) b!3568252))

(assert (= (and b!3568252 (not res!1438695)) b!3568248))

(assert (= (or b!3568250 b!3568255 b!3568260) bm!258638))

(assert (=> b!3568247 m!4054393))

(assert (=> b!3568247 m!4054393))

(declare-fun m!4055345 () Bool)

(assert (=> b!3568247 m!4055345))

(assert (=> b!3568247 m!4055209))

(assert (=> b!3568247 m!4055345))

(assert (=> b!3568247 m!4055209))

(declare-fun m!4055347 () Bool)

(assert (=> b!3568247 m!4055347))

(assert (=> b!3568252 m!4055209))

(assert (=> b!3568252 m!4055209))

(assert (=> b!3568252 m!4055213))

(declare-fun m!4055349 () Bool)

(assert (=> b!3568251 m!4055349))

(assert (=> d!1051546 m!4055217))

(declare-fun m!4055351 () Bool)

(assert (=> d!1051546 m!4055351))

(assert (=> b!3568254 m!4054393))

(assert (=> b!3568248 m!4054393))

(assert (=> bm!258638 m!4055217))

(assert (=> b!3568253 m!4055209))

(assert (=> b!3568253 m!4055209))

(assert (=> b!3568253 m!4055213))

(assert (=> b!3567677 d!1051546))

(declare-fun d!1051548 () Bool)

(assert (=> d!1051548 (= (get!12059 lt!1222174) (v!37270 lt!1222174))))

(assert (=> b!3567677 d!1051548))

(declare-fun d!1051550 () Bool)

(declare-fun res!1438701 () Bool)

(declare-fun e!2207277 () Bool)

(assert (=> d!1051550 (=> (not res!1438701) (not e!2207277))))

(declare-fun rulesValid!2089 (LexerInterface!5095 List!37604) Bool)

(assert (=> d!1051550 (= res!1438701 (rulesValid!2089 thiss!18206 rules!2135))))

(assert (=> d!1051550 (= (rulesInvariant!4492 thiss!18206 rules!2135) e!2207277)))

(declare-fun b!3568263 () Bool)

(declare-datatypes ((List!37607 0))(
  ( (Nil!37483) (Cons!37483 (h!42903 String!42014) (t!288862 List!37607)) )
))
(declare-fun noDuplicateTag!2085 (LexerInterface!5095 List!37604 List!37607) Bool)

(assert (=> b!3568263 (= e!2207277 (noDuplicateTag!2085 thiss!18206 rules!2135 Nil!37483))))

(assert (= (and d!1051550 res!1438701) b!3568263))

(declare-fun m!4055355 () Bool)

(assert (=> d!1051550 m!4055355))

(declare-fun m!4055357 () Bool)

(assert (=> b!3568263 m!4055357))

(assert (=> b!3567656 d!1051550))

(declare-fun d!1051554 () Bool)

(declare-fun lt!1222403 () Bool)

(assert (=> d!1051554 (= lt!1222403 (select (content!5309 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494))))) lt!1222179))))

(declare-fun e!2207282 () Bool)

(assert (=> d!1051554 (= lt!1222403 e!2207282)))

(declare-fun res!1438707 () Bool)

(assert (=> d!1051554 (=> (not res!1438707) (not e!2207282))))

(assert (=> d!1051554 (= res!1438707 ((_ is Cons!37479) (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494))))))))

(assert (=> d!1051554 (= (contains!7084 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494)))) lt!1222179) lt!1222403)))

(declare-fun b!3568268 () Bool)

(declare-fun e!2207283 () Bool)

(assert (=> b!3568268 (= e!2207282 e!2207283)))

(declare-fun res!1438706 () Bool)

(assert (=> b!3568268 (=> res!1438706 e!2207283)))

(assert (=> b!3568268 (= res!1438706 (= (h!42899 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494))))) lt!1222179))))

(declare-fun b!3568269 () Bool)

(assert (=> b!3568269 (= e!2207283 (contains!7084 (t!288744 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494))))) lt!1222179))))

(assert (= (and d!1051554 res!1438707) b!3568268))

(assert (= (and b!3568268 (not res!1438706)) b!3568269))

(assert (=> d!1051554 m!4054351))

(declare-fun m!4055359 () Bool)

(assert (=> d!1051554 m!4055359))

(declare-fun m!4055361 () Bool)

(assert (=> d!1051554 m!4055361))

(declare-fun m!4055363 () Bool)

(assert (=> b!3568269 m!4055363))

(assert (=> b!3567678 d!1051554))

(declare-fun b!3568319 () Bool)

(declare-fun res!1438742 () Bool)

(declare-fun e!2207314 () Bool)

(assert (=> b!3568319 (=> (not res!1438742) (not e!2207314))))

(declare-fun lt!1222445 () Option!7682)

(assert (=> b!3568319 (= res!1438742 (= (value!177381 (_1!21822 (get!12060 lt!1222445))) (apply!8997 (transformation!5506 (rule!8192 (_1!21822 (get!12060 lt!1222445)))) (seqFromList!4065 (originalCharacters!6220 (_1!21822 (get!12060 lt!1222445)))))))))

(declare-fun b!3568320 () Bool)

(declare-fun res!1438738 () Bool)

(assert (=> b!3568320 (=> (not res!1438738) (not e!2207314))))

(assert (=> b!3568320 (= res!1438738 (= (rule!8192 (_1!21822 (get!12060 lt!1222445))) (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(declare-fun b!3568321 () Bool)

(declare-fun e!2207313 () Bool)

(declare-datatypes ((tuple2!37386 0))(
  ( (tuple2!37387 (_1!21827 List!37603) (_2!21827 List!37603)) )
))
(declare-fun findLongestMatchInner!955 (Regex!10265 List!37603 Int List!37603 List!37603 Int) tuple2!37386)

(assert (=> b!3568321 (= e!2207313 (matchR!4849 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (_1!21827 (findLongestMatchInner!955 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) Nil!37479 (size!28564 Nil!37479) lt!1222191 lt!1222191 (size!28564 lt!1222191)))))))

(declare-fun b!3568322 () Bool)

(assert (=> b!3568322 (= e!2207314 (= (size!28563 (_1!21822 (get!12060 lt!1222445))) (size!28564 (originalCharacters!6220 (_1!21822 (get!12060 lt!1222445))))))))

(declare-fun b!3568323 () Bool)

(declare-fun res!1438740 () Bool)

(assert (=> b!3568323 (=> (not res!1438740) (not e!2207314))))

(assert (=> b!3568323 (= res!1438740 (< (size!28564 (_2!21822 (get!12060 lt!1222445))) (size!28564 lt!1222191)))))

(declare-fun b!3568324 () Bool)

(declare-fun e!2207315 () Bool)

(assert (=> b!3568324 (= e!2207315 e!2207314)))

(declare-fun res!1438739 () Bool)

(assert (=> b!3568324 (=> (not res!1438739) (not e!2207314))))

(assert (=> b!3568324 (= res!1438739 (matchR!4849 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222445))))))))

(declare-fun b!3568325 () Bool)

(declare-fun res!1438741 () Bool)

(assert (=> b!3568325 (=> (not res!1438741) (not e!2207314))))

(assert (=> b!3568325 (= res!1438741 (= (++!9315 (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222445)))) (_2!21822 (get!12060 lt!1222445))) lt!1222191))))

(declare-fun b!3568326 () Bool)

(declare-fun e!2207312 () Option!7682)

(assert (=> b!3568326 (= e!2207312 None!7681)))

(declare-fun d!1051556 () Bool)

(assert (=> d!1051556 e!2207315))

(declare-fun res!1438737 () Bool)

(assert (=> d!1051556 (=> res!1438737 e!2207315)))

(assert (=> d!1051556 (= res!1438737 (isEmpty!22005 lt!1222445))))

(assert (=> d!1051556 (= lt!1222445 e!2207312)))

(declare-fun c!618380 () Bool)

(declare-fun lt!1222442 () tuple2!37386)

(assert (=> d!1051556 (= c!618380 (isEmpty!21995 (_1!21827 lt!1222442)))))

(declare-fun findLongestMatch!870 (Regex!10265 List!37603) tuple2!37386)

(assert (=> d!1051556 (= lt!1222442 (findLongestMatch!870 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191))))

(assert (=> d!1051556 (ruleValid!1790 thiss!18206 (rule!8192 (h!42901 (t!288746 tokens!494))))))

(assert (=> d!1051556 (= (maxPrefixOneRule!1802 thiss!18206 (rule!8192 (h!42901 (t!288746 tokens!494))) lt!1222191) lt!1222445)))

(declare-fun b!3568327 () Bool)

(assert (=> b!3568327 (= e!2207312 (Some!7681 (tuple2!37377 (Token!10379 (apply!8997 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (seqFromList!4065 (_1!21827 lt!1222442))) (rule!8192 (h!42901 (t!288746 tokens!494))) (size!28567 (seqFromList!4065 (_1!21827 lt!1222442))) (_1!21827 lt!1222442)) (_2!21827 lt!1222442))))))

(declare-fun lt!1222444 () Unit!53455)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!928 (Regex!10265 List!37603) Unit!53455)

(assert (=> b!3568327 (= lt!1222444 (longestMatchIsAcceptedByMatchOrIsEmpty!928 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222191))))

(declare-fun res!1438743 () Bool)

(assert (=> b!3568327 (= res!1438743 (isEmpty!21995 (_1!21827 (findLongestMatchInner!955 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) Nil!37479 (size!28564 Nil!37479) lt!1222191 lt!1222191 (size!28564 lt!1222191)))))))

(assert (=> b!3568327 (=> res!1438743 e!2207313)))

(assert (=> b!3568327 e!2207313))

(declare-fun lt!1222441 () Unit!53455)

(assert (=> b!3568327 (= lt!1222441 lt!1222444)))

(declare-fun lt!1222443 () Unit!53455)

(declare-fun lemmaSemiInverse!1307 (TokenValueInjection!10900 BalanceConc!22388) Unit!53455)

(assert (=> b!3568327 (= lt!1222443 (lemmaSemiInverse!1307 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (seqFromList!4065 (_1!21827 lt!1222442))))))

(assert (= (and d!1051556 c!618380) b!3568326))

(assert (= (and d!1051556 (not c!618380)) b!3568327))

(assert (= (and b!3568327 (not res!1438743)) b!3568321))

(assert (= (and d!1051556 (not res!1438737)) b!3568324))

(assert (= (and b!3568324 res!1438739) b!3568325))

(assert (= (and b!3568325 res!1438741) b!3568323))

(assert (= (and b!3568323 res!1438740) b!3568320))

(assert (= (and b!3568320 res!1438738) b!3568319))

(assert (= (and b!3568319 res!1438742) b!3568322))

(declare-fun m!4055457 () Bool)

(assert (=> b!3568324 m!4055457))

(declare-fun m!4055459 () Bool)

(assert (=> b!3568324 m!4055459))

(assert (=> b!3568324 m!4055459))

(declare-fun m!4055461 () Bool)

(assert (=> b!3568324 m!4055461))

(assert (=> b!3568324 m!4055461))

(declare-fun m!4055463 () Bool)

(assert (=> b!3568324 m!4055463))

(assert (=> b!3568323 m!4055457))

(declare-fun m!4055465 () Bool)

(assert (=> b!3568323 m!4055465))

(assert (=> b!3568323 m!4054335))

(assert (=> b!3568320 m!4055457))

(assert (=> b!3568325 m!4055457))

(assert (=> b!3568325 m!4055459))

(assert (=> b!3568325 m!4055459))

(assert (=> b!3568325 m!4055461))

(assert (=> b!3568325 m!4055461))

(declare-fun m!4055467 () Bool)

(assert (=> b!3568325 m!4055467))

(assert (=> b!3568319 m!4055457))

(declare-fun m!4055469 () Bool)

(assert (=> b!3568319 m!4055469))

(assert (=> b!3568319 m!4055469))

(declare-fun m!4055471 () Bool)

(assert (=> b!3568319 m!4055471))

(assert (=> b!3568322 m!4055457))

(declare-fun m!4055473 () Bool)

(assert (=> b!3568322 m!4055473))

(declare-fun m!4055475 () Bool)

(assert (=> b!3568321 m!4055475))

(assert (=> b!3568321 m!4054335))

(assert (=> b!3568321 m!4055475))

(assert (=> b!3568321 m!4054335))

(declare-fun m!4055477 () Bool)

(assert (=> b!3568321 m!4055477))

(declare-fun m!4055479 () Bool)

(assert (=> b!3568321 m!4055479))

(declare-fun m!4055481 () Bool)

(assert (=> d!1051556 m!4055481))

(declare-fun m!4055483 () Bool)

(assert (=> d!1051556 m!4055483))

(declare-fun m!4055485 () Bool)

(assert (=> d!1051556 m!4055485))

(declare-fun m!4055487 () Bool)

(assert (=> d!1051556 m!4055487))

(declare-fun m!4055489 () Bool)

(assert (=> b!3568327 m!4055489))

(declare-fun m!4055491 () Bool)

(assert (=> b!3568327 m!4055491))

(assert (=> b!3568327 m!4055475))

(assert (=> b!3568327 m!4054335))

(assert (=> b!3568327 m!4055477))

(declare-fun m!4055493 () Bool)

(assert (=> b!3568327 m!4055493))

(assert (=> b!3568327 m!4055489))

(assert (=> b!3568327 m!4055489))

(declare-fun m!4055495 () Bool)

(assert (=> b!3568327 m!4055495))

(assert (=> b!3568327 m!4054335))

(assert (=> b!3568327 m!4055489))

(declare-fun m!4055497 () Bool)

(assert (=> b!3568327 m!4055497))

(assert (=> b!3568327 m!4055475))

(declare-fun m!4055499 () Bool)

(assert (=> b!3568327 m!4055499))

(assert (=> b!3567678 d!1051556))

(declare-fun b!3568346 () Bool)

(declare-fun e!2207331 () Bool)

(declare-fun e!2207328 () Bool)

(assert (=> b!3568346 (= e!2207331 e!2207328)))

(declare-fun res!1438750 () Bool)

(assert (=> b!3568346 (=> (not res!1438750) (not e!2207328))))

(declare-fun lt!1222463 () Option!7681)

(assert (=> b!3568346 (= res!1438750 (contains!7083 rules!2135 (get!12059 lt!1222463)))))

(declare-fun b!3568347 () Bool)

(declare-fun e!2207329 () Option!7681)

(assert (=> b!3568347 (= e!2207329 (Some!7680 (h!42900 rules!2135)))))

(declare-fun b!3568348 () Bool)

(declare-fun e!2207330 () Option!7681)

(assert (=> b!3568348 (= e!2207329 e!2207330)))

(declare-fun c!618387 () Bool)

(assert (=> b!3568348 (= c!618387 (and ((_ is Cons!37480) rules!2135) (not (= (tag!6160 (h!42900 rules!2135)) (tag!6160 (rule!8192 (h!42901 tokens!494)))))))))

(declare-fun d!1051568 () Bool)

(assert (=> d!1051568 e!2207331))

(declare-fun res!1438751 () Bool)

(assert (=> d!1051568 (=> res!1438751 e!2207331)))

(declare-fun isEmpty!22007 (Option!7681) Bool)

(assert (=> d!1051568 (= res!1438751 (isEmpty!22007 lt!1222463))))

(assert (=> d!1051568 (= lt!1222463 e!2207329)))

(declare-fun c!618388 () Bool)

(assert (=> d!1051568 (= c!618388 (and ((_ is Cons!37480) rules!2135) (= (tag!6160 (h!42900 rules!2135)) (tag!6160 (rule!8192 (h!42901 tokens!494))))))))

(assert (=> d!1051568 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051568 (= (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 tokens!494)))) lt!1222463)))

(declare-fun b!3568349 () Bool)

(assert (=> b!3568349 (= e!2207330 None!7680)))

(declare-fun b!3568350 () Bool)

(assert (=> b!3568350 (= e!2207328 (= (tag!6160 (get!12059 lt!1222463)) (tag!6160 (rule!8192 (h!42901 tokens!494)))))))

(declare-fun b!3568351 () Bool)

(declare-fun lt!1222464 () Unit!53455)

(declare-fun lt!1222462 () Unit!53455)

(assert (=> b!3568351 (= lt!1222464 lt!1222462)))

(assert (=> b!3568351 (rulesInvariant!4492 thiss!18206 (t!288745 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!478 (LexerInterface!5095 Rule!10812 List!37604) Unit!53455)

(assert (=> b!3568351 (= lt!1222462 (lemmaInvariantOnRulesThenOnTail!478 thiss!18206 (h!42900 rules!2135) (t!288745 rules!2135)))))

(assert (=> b!3568351 (= e!2207330 (getRuleFromTag!1149 thiss!18206 (t!288745 rules!2135) (tag!6160 (rule!8192 (h!42901 tokens!494)))))))

(assert (= (and d!1051568 c!618388) b!3568347))

(assert (= (and d!1051568 (not c!618388)) b!3568348))

(assert (= (and b!3568348 c!618387) b!3568351))

(assert (= (and b!3568348 (not c!618387)) b!3568349))

(assert (= (and d!1051568 (not res!1438751)) b!3568346))

(assert (= (and b!3568346 res!1438750) b!3568350))

(declare-fun m!4055501 () Bool)

(assert (=> b!3568346 m!4055501))

(assert (=> b!3568346 m!4055501))

(declare-fun m!4055503 () Bool)

(assert (=> b!3568346 m!4055503))

(declare-fun m!4055505 () Bool)

(assert (=> d!1051568 m!4055505))

(assert (=> d!1051568 m!4054533))

(assert (=> b!3568350 m!4055501))

(declare-fun m!4055507 () Bool)

(assert (=> b!3568351 m!4055507))

(declare-fun m!4055509 () Bool)

(assert (=> b!3568351 m!4055509))

(declare-fun m!4055511 () Bool)

(assert (=> b!3568351 m!4055511))

(assert (=> b!3567678 d!1051568))

(declare-fun d!1051570 () Bool)

(declare-fun lt!1222467 () Int)

(assert (=> d!1051570 (>= lt!1222467 0)))

(declare-fun e!2207338 () Int)

(assert (=> d!1051570 (= lt!1222467 e!2207338)))

(declare-fun c!618391 () Bool)

(assert (=> d!1051570 (= c!618391 ((_ is Nil!37479) lt!1222162))))

(assert (=> d!1051570 (= (size!28564 lt!1222162) lt!1222467)))

(declare-fun b!3568368 () Bool)

(assert (=> b!3568368 (= e!2207338 0)))

(declare-fun b!3568369 () Bool)

(assert (=> b!3568369 (= e!2207338 (+ 1 (size!28564 (t!288744 lt!1222162))))))

(assert (= (and d!1051570 c!618391) b!3568368))

(assert (= (and d!1051570 (not c!618391)) b!3568369))

(declare-fun m!4055513 () Bool)

(assert (=> b!3568369 m!4055513))

(assert (=> b!3567678 d!1051570))

(declare-fun d!1051572 () Bool)

(assert (=> d!1051572 (not (contains!7084 (usedCharacters!740 (regex!5506 (rule!8192 separatorToken!241))) lt!1222192))))

(declare-fun lt!1222475 () Unit!53455)

(declare-fun choose!20724 (LexerInterface!5095 List!37604 List!37604 Rule!10812 Rule!10812 C!20716) Unit!53455)

(assert (=> d!1051572 (= lt!1222475 (choose!20724 thiss!18206 rules!2135 rules!2135 (rule!8192 (h!42901 (t!288746 tokens!494))) (rule!8192 separatorToken!241) lt!1222192))))

(assert (=> d!1051572 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051572 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!188 thiss!18206 rules!2135 rules!2135 (rule!8192 (h!42901 (t!288746 tokens!494))) (rule!8192 separatorToken!241) lt!1222192) lt!1222475)))

(declare-fun bs!569029 () Bool)

(assert (= bs!569029 d!1051572))

(assert (=> bs!569029 m!4054341))

(assert (=> bs!569029 m!4054341))

(declare-fun m!4055515 () Bool)

(assert (=> bs!569029 m!4055515))

(declare-fun m!4055517 () Bool)

(assert (=> bs!569029 m!4055517))

(assert (=> bs!569029 m!4054533))

(assert (=> b!3567678 d!1051572))

(declare-fun d!1051574 () Bool)

(declare-fun c!618403 () Bool)

(assert (=> d!1051574 (= c!618403 (or ((_ is EmptyExpr!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) ((_ is EmptyLang!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))

(declare-fun e!2207355 () List!37603)

(assert (=> d!1051574 (= (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) e!2207355)))

(declare-fun b!3568406 () Bool)

(declare-fun e!2207357 () List!37603)

(declare-fun call!258653 () List!37603)

(assert (=> b!3568406 (= e!2207357 call!258653)))

(declare-fun call!258655 () List!37603)

(declare-fun c!618406 () Bool)

(declare-fun call!258654 () List!37603)

(declare-fun bm!258648 () Bool)

(assert (=> bm!258648 (= call!258653 (++!9315 (ite c!618406 call!258654 call!258655) (ite c!618406 call!258655 call!258654)))))

(declare-fun c!618404 () Bool)

(declare-fun bm!258649 () Bool)

(declare-fun call!258656 () List!37603)

(assert (=> bm!258649 (= call!258656 (usedCharacters!740 (ite c!618404 (reg!10594 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (ite c!618406 (regTwo!21043 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (regOne!21042 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))))

(declare-fun b!3568407 () Bool)

(declare-fun e!2207358 () List!37603)

(assert (=> b!3568407 (= e!2207355 e!2207358)))

(declare-fun c!618405 () Bool)

(assert (=> b!3568407 (= c!618405 ((_ is ElementMatch!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun b!3568408 () Bool)

(declare-fun e!2207356 () List!37603)

(assert (=> b!3568408 (= e!2207356 call!258656)))

(declare-fun b!3568409 () Bool)

(assert (=> b!3568409 (= c!618404 ((_ is Star!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(assert (=> b!3568409 (= e!2207358 e!2207356)))

(declare-fun bm!258650 () Bool)

(assert (=> bm!258650 (= call!258654 (usedCharacters!740 (ite c!618406 (regOne!21043 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (regTwo!21042 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))))

(declare-fun b!3568410 () Bool)

(assert (=> b!3568410 (= e!2207356 e!2207357)))

(assert (=> b!3568410 (= c!618406 ((_ is Union!10265) (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun bm!258651 () Bool)

(assert (=> bm!258651 (= call!258655 call!258656)))

(declare-fun b!3568411 () Bool)

(assert (=> b!3568411 (= e!2207358 (Cons!37479 (c!618262 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) Nil!37479))))

(declare-fun b!3568412 () Bool)

(assert (=> b!3568412 (= e!2207357 call!258653)))

(declare-fun b!3568413 () Bool)

(assert (=> b!3568413 (= e!2207355 Nil!37479)))

(assert (= (and d!1051574 c!618403) b!3568413))

(assert (= (and d!1051574 (not c!618403)) b!3568407))

(assert (= (and b!3568407 c!618405) b!3568411))

(assert (= (and b!3568407 (not c!618405)) b!3568409))

(assert (= (and b!3568409 c!618404) b!3568408))

(assert (= (and b!3568409 (not c!618404)) b!3568410))

(assert (= (and b!3568410 c!618406) b!3568406))

(assert (= (and b!3568410 (not c!618406)) b!3568412))

(assert (= (or b!3568406 b!3568412) bm!258651))

(assert (= (or b!3568406 b!3568412) bm!258650))

(assert (= (or b!3568406 b!3568412) bm!258648))

(assert (= (or b!3568408 bm!258651) bm!258649))

(declare-fun m!4055577 () Bool)

(assert (=> bm!258648 m!4055577))

(declare-fun m!4055583 () Bool)

(assert (=> bm!258649 m!4055583))

(declare-fun m!4055585 () Bool)

(assert (=> bm!258650 m!4055585))

(assert (=> b!3567678 d!1051574))

(declare-fun d!1051584 () Bool)

(declare-fun e!2207359 () Bool)

(assert (=> d!1051584 e!2207359))

(declare-fun res!1438780 () Bool)

(assert (=> d!1051584 (=> (not res!1438780) (not e!2207359))))

(declare-fun lt!1222483 () BalanceConc!22390)

(assert (=> d!1051584 (= res!1438780 (= (list!13745 lt!1222483) (Cons!37481 (h!42901 (t!288746 tokens!494)) Nil!37481)))))

(assert (=> d!1051584 (= lt!1222483 (singleton!1166 (h!42901 (t!288746 tokens!494))))))

(assert (=> d!1051584 (= (singletonSeq!2602 (h!42901 (t!288746 tokens!494))) lt!1222483)))

(declare-fun b!3568414 () Bool)

(assert (=> b!3568414 (= e!2207359 (isBalanced!3481 (c!618264 lt!1222483)))))

(assert (= (and d!1051584 res!1438780) b!3568414))

(declare-fun m!4055603 () Bool)

(assert (=> d!1051584 m!4055603))

(declare-fun m!4055607 () Bool)

(assert (=> d!1051584 m!4055607))

(declare-fun m!4055609 () Bool)

(assert (=> b!3568414 m!4055609))

(assert (=> b!3567678 d!1051584))

(declare-fun d!1051586 () Bool)

(declare-fun e!2207361 () Bool)

(assert (=> d!1051586 e!2207361))

(declare-fun res!1438782 () Bool)

(assert (=> d!1051586 (=> (not res!1438782) (not e!2207361))))

(declare-fun e!2207362 () Bool)

(assert (=> d!1051586 (= res!1438782 e!2207362)))

(declare-fun c!618407 () Bool)

(declare-fun lt!1222484 () tuple2!37378)

(assert (=> d!1051586 (= c!618407 (> (size!28565 (_1!21823 lt!1222484)) 0))))

(assert (=> d!1051586 (= lt!1222484 (lexTailRecV2!1102 thiss!18206 rules!2135 lt!1222160 (BalanceConc!22389 Empty!11387) lt!1222160 (BalanceConc!22391 Empty!11388)))))

(assert (=> d!1051586 (= (lex!2421 thiss!18206 rules!2135 lt!1222160) lt!1222484)))

(declare-fun b!3568415 () Bool)

(declare-fun res!1438783 () Bool)

(assert (=> b!3568415 (=> (not res!1438783) (not e!2207361))))

(assert (=> b!3568415 (= res!1438783 (= (list!13745 (_1!21823 lt!1222484)) (_1!21825 (lexList!1494 thiss!18206 rules!2135 (list!13743 lt!1222160)))))))

(declare-fun b!3568416 () Bool)

(declare-fun e!2207360 () Bool)

(assert (=> b!3568416 (= e!2207360 (not (isEmpty!21996 (_1!21823 lt!1222484))))))

(declare-fun b!3568417 () Bool)

(assert (=> b!3568417 (= e!2207362 (= (_2!21823 lt!1222484) lt!1222160))))

(declare-fun b!3568418 () Bool)

(assert (=> b!3568418 (= e!2207361 (= (list!13743 (_2!21823 lt!1222484)) (_2!21825 (lexList!1494 thiss!18206 rules!2135 (list!13743 lt!1222160)))))))

(declare-fun b!3568419 () Bool)

(assert (=> b!3568419 (= e!2207362 e!2207360)))

(declare-fun res!1438781 () Bool)

(assert (=> b!3568419 (= res!1438781 (< (size!28567 (_2!21823 lt!1222484)) (size!28567 lt!1222160)))))

(assert (=> b!3568419 (=> (not res!1438781) (not e!2207360))))

(assert (= (and d!1051586 c!618407) b!3568419))

(assert (= (and d!1051586 (not c!618407)) b!3568417))

(assert (= (and b!3568419 res!1438781) b!3568416))

(assert (= (and d!1051586 res!1438782) b!3568415))

(assert (= (and b!3568415 res!1438783) b!3568418))

(declare-fun m!4055621 () Bool)

(assert (=> b!3568416 m!4055621))

(declare-fun m!4055623 () Bool)

(assert (=> b!3568419 m!4055623))

(declare-fun m!4055625 () Bool)

(assert (=> b!3568419 m!4055625))

(declare-fun m!4055627 () Bool)

(assert (=> b!3568415 m!4055627))

(declare-fun m!4055629 () Bool)

(assert (=> b!3568415 m!4055629))

(assert (=> b!3568415 m!4055629))

(declare-fun m!4055631 () Bool)

(assert (=> b!3568415 m!4055631))

(declare-fun m!4055633 () Bool)

(assert (=> d!1051586 m!4055633))

(declare-fun m!4055635 () Bool)

(assert (=> d!1051586 m!4055635))

(declare-fun m!4055637 () Bool)

(assert (=> b!3568418 m!4055637))

(assert (=> b!3568418 m!4055629))

(assert (=> b!3568418 m!4055629))

(assert (=> b!3568418 m!4055631))

(assert (=> b!3567678 d!1051586))

(declare-fun d!1051590 () Bool)

(assert (=> d!1051590 (= (maxPrefix!2635 thiss!18206 rules!2135 (++!9315 (list!13743 (charsOf!3520 (h!42901 tokens!494))) lt!1222182)) (Some!7681 (tuple2!37377 (h!42901 tokens!494) lt!1222182)))))

(declare-fun lt!1222495 () Unit!53455)

(declare-fun choose!20725 (LexerInterface!5095 List!37604 Token!10378 Rule!10812 List!37603 Rule!10812) Unit!53455)

(assert (=> d!1051590 (= lt!1222495 (choose!20725 thiss!18206 rules!2135 (h!42901 tokens!494) (rule!8192 (h!42901 tokens!494)) lt!1222182 (rule!8192 separatorToken!241)))))

(assert (=> d!1051590 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051590 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!262 thiss!18206 rules!2135 (h!42901 tokens!494) (rule!8192 (h!42901 tokens!494)) lt!1222182 (rule!8192 separatorToken!241)) lt!1222495)))

(declare-fun bs!569033 () Bool)

(assert (= bs!569033 d!1051590))

(declare-fun m!4055705 () Bool)

(assert (=> bs!569033 m!4055705))

(assert (=> bs!569033 m!4054457))

(assert (=> bs!569033 m!4054459))

(declare-fun m!4055713 () Bool)

(assert (=> bs!569033 m!4055713))

(declare-fun m!4055715 () Bool)

(assert (=> bs!569033 m!4055715))

(assert (=> bs!569033 m!4054333))

(assert (=> bs!569033 m!4054459))

(assert (=> bs!569033 m!4055713))

(assert (=> bs!569033 m!4054457))

(assert (=> b!3567678 d!1051590))

(declare-fun d!1051614 () Bool)

(declare-fun lt!1222498 () BalanceConc!22388)

(assert (=> d!1051614 (= (list!13743 lt!1222498) (printList!1643 thiss!18206 (list!13745 lt!1222153)))))

(assert (=> d!1051614 (= lt!1222498 (printTailRec!1590 thiss!18206 lt!1222153 0 (BalanceConc!22389 Empty!11387)))))

(assert (=> d!1051614 (= (print!2160 thiss!18206 lt!1222153) lt!1222498)))

(declare-fun bs!569034 () Bool)

(assert (= bs!569034 d!1051614))

(declare-fun m!4055723 () Bool)

(assert (=> bs!569034 m!4055723))

(declare-fun m!4055725 () Bool)

(assert (=> bs!569034 m!4055725))

(assert (=> bs!569034 m!4055725))

(declare-fun m!4055727 () Bool)

(assert (=> bs!569034 m!4055727))

(assert (=> bs!569034 m!4054421))

(assert (=> b!3567678 d!1051614))

(declare-fun d!1051618 () Bool)

(declare-fun lt!1222503 () BalanceConc!22388)

(assert (=> d!1051618 (= (list!13743 lt!1222503) (printListTailRec!734 thiss!18206 (dropList!1251 lt!1222163 0) (list!13743 (BalanceConc!22389 Empty!11387))))))

(declare-fun e!2207392 () BalanceConc!22388)

(assert (=> d!1051618 (= lt!1222503 e!2207392)))

(declare-fun c!618423 () Bool)

(assert (=> d!1051618 (= c!618423 (>= 0 (size!28565 lt!1222163)))))

(declare-fun e!2207393 () Bool)

(assert (=> d!1051618 e!2207393))

(declare-fun res!1438797 () Bool)

(assert (=> d!1051618 (=> (not res!1438797) (not e!2207393))))

(assert (=> d!1051618 (= res!1438797 (>= 0 0))))

(assert (=> d!1051618 (= (printTailRec!1590 thiss!18206 lt!1222163 0 (BalanceConc!22389 Empty!11387)) lt!1222503)))

(declare-fun b!3568465 () Bool)

(assert (=> b!3568465 (= e!2207393 (<= 0 (size!28565 lt!1222163)))))

(declare-fun b!3568466 () Bool)

(assert (=> b!3568466 (= e!2207392 (BalanceConc!22389 Empty!11387))))

(declare-fun b!3568467 () Bool)

(assert (=> b!3568467 (= e!2207392 (printTailRec!1590 thiss!18206 lt!1222163 (+ 0 1) (++!9317 (BalanceConc!22389 Empty!11387) (charsOf!3520 (apply!8996 lt!1222163 0)))))))

(declare-fun lt!1222502 () List!37605)

(assert (=> b!3568467 (= lt!1222502 (list!13745 lt!1222163))))

(declare-fun lt!1222501 () Unit!53455)

(assert (=> b!3568467 (= lt!1222501 (lemmaDropApply!1209 lt!1222502 0))))

(assert (=> b!3568467 (= (head!7433 (drop!2071 lt!1222502 0)) (apply!9000 lt!1222502 0))))

(declare-fun lt!1222500 () Unit!53455)

(assert (=> b!3568467 (= lt!1222500 lt!1222501)))

(declare-fun lt!1222499 () List!37605)

(assert (=> b!3568467 (= lt!1222499 (list!13745 lt!1222163))))

(declare-fun lt!1222504 () Unit!53455)

(assert (=> b!3568467 (= lt!1222504 (lemmaDropTail!1093 lt!1222499 0))))

(assert (=> b!3568467 (= (tail!5525 (drop!2071 lt!1222499 0)) (drop!2071 lt!1222499 (+ 0 1)))))

(declare-fun lt!1222505 () Unit!53455)

(assert (=> b!3568467 (= lt!1222505 lt!1222504)))

(assert (= (and d!1051618 res!1438797) b!3568465))

(assert (= (and d!1051618 c!618423) b!3568466))

(assert (= (and d!1051618 (not c!618423)) b!3568467))

(declare-fun m!4055729 () Bool)

(assert (=> d!1051618 m!4055729))

(assert (=> d!1051618 m!4054985))

(declare-fun m!4055731 () Bool)

(assert (=> d!1051618 m!4055731))

(assert (=> d!1051618 m!4054985))

(declare-fun m!4055733 () Bool)

(assert (=> d!1051618 m!4055733))

(assert (=> d!1051618 m!4055729))

(declare-fun m!4055735 () Bool)

(assert (=> d!1051618 m!4055735))

(assert (=> b!3568465 m!4055735))

(declare-fun m!4055737 () Bool)

(assert (=> b!3568467 m!4055737))

(declare-fun m!4055739 () Bool)

(assert (=> b!3568467 m!4055739))

(declare-fun m!4055741 () Bool)

(assert (=> b!3568467 m!4055741))

(declare-fun m!4055743 () Bool)

(assert (=> b!3568467 m!4055743))

(declare-fun m!4055745 () Bool)

(assert (=> b!3568467 m!4055745))

(declare-fun m!4055747 () Bool)

(assert (=> b!3568467 m!4055747))

(declare-fun m!4055749 () Bool)

(assert (=> b!3568467 m!4055749))

(declare-fun m!4055751 () Bool)

(assert (=> b!3568467 m!4055751))

(declare-fun m!4055753 () Bool)

(assert (=> b!3568467 m!4055753))

(declare-fun m!4055755 () Bool)

(assert (=> b!3568467 m!4055755))

(assert (=> b!3568467 m!4055749))

(declare-fun m!4055759 () Bool)

(assert (=> b!3568467 m!4055759))

(assert (=> b!3568467 m!4055759))

(assert (=> b!3568467 m!4055743))

(declare-fun m!4055763 () Bool)

(assert (=> b!3568467 m!4055763))

(assert (=> b!3568467 m!4055739))

(declare-fun m!4055767 () Bool)

(assert (=> b!3568467 m!4055767))

(assert (=> b!3568467 m!4055751))

(assert (=> b!3567678 d!1051618))

(declare-fun d!1051622 () Bool)

(declare-fun e!2207395 () Bool)

(assert (=> d!1051622 e!2207395))

(declare-fun res!1438799 () Bool)

(assert (=> d!1051622 (=> (not res!1438799) (not e!2207395))))

(declare-fun e!2207396 () Bool)

(assert (=> d!1051622 (= res!1438799 e!2207396)))

(declare-fun c!618424 () Bool)

(declare-fun lt!1222509 () tuple2!37378)

(assert (=> d!1051622 (= c!618424 (> (size!28565 (_1!21823 lt!1222509)) 0))))

(assert (=> d!1051622 (= lt!1222509 (lexTailRecV2!1102 thiss!18206 rules!2135 lt!1222149 (BalanceConc!22389 Empty!11387) lt!1222149 (BalanceConc!22391 Empty!11388)))))

(assert (=> d!1051622 (= (lex!2421 thiss!18206 rules!2135 lt!1222149) lt!1222509)))

(declare-fun b!3568468 () Bool)

(declare-fun res!1438800 () Bool)

(assert (=> b!3568468 (=> (not res!1438800) (not e!2207395))))

(assert (=> b!3568468 (= res!1438800 (= (list!13745 (_1!21823 lt!1222509)) (_1!21825 (lexList!1494 thiss!18206 rules!2135 (list!13743 lt!1222149)))))))

(declare-fun b!3568469 () Bool)

(declare-fun e!2207394 () Bool)

(assert (=> b!3568469 (= e!2207394 (not (isEmpty!21996 (_1!21823 lt!1222509))))))

(declare-fun b!3568470 () Bool)

(assert (=> b!3568470 (= e!2207396 (= (_2!21823 lt!1222509) lt!1222149))))

(declare-fun b!3568471 () Bool)

(assert (=> b!3568471 (= e!2207395 (= (list!13743 (_2!21823 lt!1222509)) (_2!21825 (lexList!1494 thiss!18206 rules!2135 (list!13743 lt!1222149)))))))

(declare-fun b!3568472 () Bool)

(assert (=> b!3568472 (= e!2207396 e!2207394)))

(declare-fun res!1438798 () Bool)

(assert (=> b!3568472 (= res!1438798 (< (size!28567 (_2!21823 lt!1222509)) (size!28567 lt!1222149)))))

(assert (=> b!3568472 (=> (not res!1438798) (not e!2207394))))

(assert (= (and d!1051622 c!618424) b!3568472))

(assert (= (and d!1051622 (not c!618424)) b!3568470))

(assert (= (and b!3568472 res!1438798) b!3568469))

(assert (= (and d!1051622 res!1438799) b!3568468))

(assert (= (and b!3568468 res!1438800) b!3568471))

(declare-fun m!4055769 () Bool)

(assert (=> b!3568469 m!4055769))

(declare-fun m!4055771 () Bool)

(assert (=> b!3568472 m!4055771))

(declare-fun m!4055773 () Bool)

(assert (=> b!3568472 m!4055773))

(declare-fun m!4055775 () Bool)

(assert (=> b!3568468 m!4055775))

(declare-fun m!4055777 () Bool)

(assert (=> b!3568468 m!4055777))

(assert (=> b!3568468 m!4055777))

(declare-fun m!4055779 () Bool)

(assert (=> b!3568468 m!4055779))

(declare-fun m!4055781 () Bool)

(assert (=> d!1051622 m!4055781))

(declare-fun m!4055783 () Bool)

(assert (=> d!1051622 m!4055783))

(declare-fun m!4055785 () Bool)

(assert (=> b!3568471 m!4055785))

(assert (=> b!3568471 m!4055777))

(assert (=> b!3568471 m!4055777))

(assert (=> b!3568471 m!4055779))

(assert (=> b!3567678 d!1051622))

(declare-fun d!1051624 () Bool)

(assert (=> d!1051624 (= (isDefined!5926 lt!1222171) (not (isEmpty!22007 lt!1222171)))))

(declare-fun bs!569036 () Bool)

(assert (= bs!569036 d!1051624))

(declare-fun m!4055787 () Bool)

(assert (=> bs!569036 m!4055787))

(assert (=> b!3567678 d!1051624))

(declare-fun d!1051626 () Bool)

(declare-fun c!618425 () Bool)

(assert (=> d!1051626 (= c!618425 (or ((_ is EmptyExpr!10265) (regex!5506 (rule!8192 (h!42901 tokens!494)))) ((_ is EmptyLang!10265) (regex!5506 (rule!8192 (h!42901 tokens!494))))))))

(declare-fun e!2207397 () List!37603)

(assert (=> d!1051626 (= (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494)))) e!2207397)))

(declare-fun b!3568473 () Bool)

(declare-fun e!2207399 () List!37603)

(declare-fun call!258669 () List!37603)

(assert (=> b!3568473 (= e!2207399 call!258669)))

(declare-fun c!618428 () Bool)

(declare-fun call!258670 () List!37603)

(declare-fun call!258671 () List!37603)

(declare-fun bm!258664 () Bool)

(assert (=> bm!258664 (= call!258669 (++!9315 (ite c!618428 call!258670 call!258671) (ite c!618428 call!258671 call!258670)))))

(declare-fun bm!258665 () Bool)

(declare-fun call!258672 () List!37603)

(declare-fun c!618426 () Bool)

(assert (=> bm!258665 (= call!258672 (usedCharacters!740 (ite c!618426 (reg!10594 (regex!5506 (rule!8192 (h!42901 tokens!494)))) (ite c!618428 (regTwo!21043 (regex!5506 (rule!8192 (h!42901 tokens!494)))) (regOne!21042 (regex!5506 (rule!8192 (h!42901 tokens!494))))))))))

(declare-fun b!3568474 () Bool)

(declare-fun e!2207400 () List!37603)

(assert (=> b!3568474 (= e!2207397 e!2207400)))

(declare-fun c!618427 () Bool)

(assert (=> b!3568474 (= c!618427 ((_ is ElementMatch!10265) (regex!5506 (rule!8192 (h!42901 tokens!494)))))))

(declare-fun b!3568475 () Bool)

(declare-fun e!2207398 () List!37603)

(assert (=> b!3568475 (= e!2207398 call!258672)))

(declare-fun b!3568476 () Bool)

(assert (=> b!3568476 (= c!618426 ((_ is Star!10265) (regex!5506 (rule!8192 (h!42901 tokens!494)))))))

(assert (=> b!3568476 (= e!2207400 e!2207398)))

(declare-fun bm!258666 () Bool)

(assert (=> bm!258666 (= call!258670 (usedCharacters!740 (ite c!618428 (regOne!21043 (regex!5506 (rule!8192 (h!42901 tokens!494)))) (regTwo!21042 (regex!5506 (rule!8192 (h!42901 tokens!494)))))))))

(declare-fun b!3568477 () Bool)

(assert (=> b!3568477 (= e!2207398 e!2207399)))

(assert (=> b!3568477 (= c!618428 ((_ is Union!10265) (regex!5506 (rule!8192 (h!42901 tokens!494)))))))

(declare-fun bm!258667 () Bool)

(assert (=> bm!258667 (= call!258671 call!258672)))

(declare-fun b!3568478 () Bool)

(assert (=> b!3568478 (= e!2207400 (Cons!37479 (c!618262 (regex!5506 (rule!8192 (h!42901 tokens!494)))) Nil!37479))))

(declare-fun b!3568479 () Bool)

(assert (=> b!3568479 (= e!2207399 call!258669)))

(declare-fun b!3568480 () Bool)

(assert (=> b!3568480 (= e!2207397 Nil!37479)))

(assert (= (and d!1051626 c!618425) b!3568480))

(assert (= (and d!1051626 (not c!618425)) b!3568474))

(assert (= (and b!3568474 c!618427) b!3568478))

(assert (= (and b!3568474 (not c!618427)) b!3568476))

(assert (= (and b!3568476 c!618426) b!3568475))

(assert (= (and b!3568476 (not c!618426)) b!3568477))

(assert (= (and b!3568477 c!618428) b!3568473))

(assert (= (and b!3568477 (not c!618428)) b!3568479))

(assert (= (or b!3568473 b!3568479) bm!258667))

(assert (= (or b!3568473 b!3568479) bm!258666))

(assert (= (or b!3568473 b!3568479) bm!258664))

(assert (= (or b!3568475 bm!258667) bm!258665))

(declare-fun m!4055789 () Bool)

(assert (=> bm!258664 m!4055789))

(declare-fun m!4055791 () Bool)

(assert (=> bm!258665 m!4055791))

(declare-fun m!4055793 () Bool)

(assert (=> bm!258666 m!4055793))

(assert (=> b!3567678 d!1051626))

(declare-fun d!1051628 () Bool)

(assert (=> d!1051628 (= (maxPrefixOneRule!1802 thiss!18206 (rule!8192 (h!42901 (t!288746 tokens!494))) lt!1222191) (Some!7681 (tuple2!37377 (Token!10379 (apply!8997 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (seqFromList!4065 lt!1222191)) (rule!8192 (h!42901 (t!288746 tokens!494))) (size!28564 lt!1222191) lt!1222191) Nil!37479)))))

(declare-fun lt!1222523 () Unit!53455)

(declare-fun choose!20726 (LexerInterface!5095 List!37604 List!37603 List!37603 List!37603 Rule!10812) Unit!53455)

(assert (=> d!1051628 (= lt!1222523 (choose!20726 thiss!18206 rules!2135 lt!1222191 lt!1222191 Nil!37479 (rule!8192 (h!42901 (t!288746 tokens!494)))))))

(assert (=> d!1051628 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051628 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!895 thiss!18206 rules!2135 lt!1222191 lt!1222191 Nil!37479 (rule!8192 (h!42901 (t!288746 tokens!494)))) lt!1222523)))

(declare-fun bs!569038 () Bool)

(assert (= bs!569038 d!1051628))

(declare-fun m!4055807 () Bool)

(assert (=> bs!569038 m!4055807))

(assert (=> bs!569038 m!4054335))

(assert (=> bs!569038 m!4054361))

(assert (=> bs!569038 m!4054337))

(assert (=> bs!569038 m!4054417))

(assert (=> bs!569038 m!4054337))

(assert (=> bs!569038 m!4054333))

(assert (=> b!3567678 d!1051628))

(declare-fun d!1051634 () Bool)

(assert (=> d!1051634 (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 tokens!494))))

(declare-fun lt!1222550 () Unit!53455)

(declare-fun choose!20728 (LexerInterface!5095 List!37604 List!37605 Token!10378) Unit!53455)

(assert (=> d!1051634 (= lt!1222550 (choose!20728 thiss!18206 rules!2135 tokens!494 (h!42901 tokens!494)))))

(assert (=> d!1051634 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051634 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1084 thiss!18206 rules!2135 tokens!494 (h!42901 tokens!494)) lt!1222550)))

(declare-fun bs!569050 () Bool)

(assert (= bs!569050 d!1051634))

(assert (=> bs!569050 m!4054325))

(declare-fun m!4055983 () Bool)

(assert (=> bs!569050 m!4055983))

(assert (=> bs!569050 m!4054333))

(assert (=> b!3567678 d!1051634))

(declare-fun d!1051686 () Bool)

(assert (=> d!1051686 (= (isDefined!5926 lt!1222188) (not (isEmpty!22007 lt!1222188)))))

(declare-fun bs!569051 () Bool)

(assert (= bs!569051 d!1051686))

(declare-fun m!4055985 () Bool)

(assert (=> bs!569051 m!4055985))

(assert (=> b!3567678 d!1051686))

(declare-fun d!1051688 () Bool)

(declare-fun lt!1222553 () Int)

(declare-fun size!28570 (List!37605) Int)

(assert (=> d!1051688 (= lt!1222553 (size!28570 (list!13745 (_1!21823 lt!1222169))))))

(declare-fun size!28571 (Conc!11388) Int)

(assert (=> d!1051688 (= lt!1222553 (size!28571 (c!618264 (_1!21823 lt!1222169))))))

(assert (=> d!1051688 (= (size!28565 (_1!21823 lt!1222169)) lt!1222553)))

(declare-fun bs!569052 () Bool)

(assert (= bs!569052 d!1051688))

(assert (=> bs!569052 m!4054921))

(assert (=> bs!569052 m!4054921))

(declare-fun m!4055987 () Bool)

(assert (=> bs!569052 m!4055987))

(declare-fun m!4055989 () Bool)

(assert (=> bs!569052 m!4055989))

(assert (=> b!3567678 d!1051688))

(declare-fun d!1051690 () Bool)

(declare-fun lt!1222555 () Bool)

(declare-fun e!2207486 () Bool)

(assert (=> d!1051690 (= lt!1222555 e!2207486)))

(declare-fun res!1438833 () Bool)

(assert (=> d!1051690 (=> (not res!1438833) (not e!2207486))))

(assert (=> d!1051690 (= res!1438833 (= (list!13745 (_1!21823 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 (h!42901 (t!288746 tokens!494))))))) (list!13745 (singletonSeq!2602 (h!42901 (t!288746 tokens!494))))))))

(declare-fun e!2207487 () Bool)

(assert (=> d!1051690 (= lt!1222555 e!2207487)))

(declare-fun res!1438834 () Bool)

(assert (=> d!1051690 (=> (not res!1438834) (not e!2207487))))

(declare-fun lt!1222554 () tuple2!37378)

(assert (=> d!1051690 (= res!1438834 (= (size!28565 (_1!21823 lt!1222554)) 1))))

(assert (=> d!1051690 (= lt!1222554 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 (h!42901 (t!288746 tokens!494))))))))

(assert (=> d!1051690 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051690 (= (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 (t!288746 tokens!494))) lt!1222555)))

(declare-fun b!3568611 () Bool)

(declare-fun res!1438835 () Bool)

(assert (=> b!3568611 (=> (not res!1438835) (not e!2207487))))

(assert (=> b!3568611 (= res!1438835 (= (apply!8996 (_1!21823 lt!1222554) 0) (h!42901 (t!288746 tokens!494))))))

(declare-fun b!3568612 () Bool)

(assert (=> b!3568612 (= e!2207487 (isEmpty!21997 (_2!21823 lt!1222554)))))

(declare-fun b!3568613 () Bool)

(assert (=> b!3568613 (= e!2207486 (isEmpty!21997 (_2!21823 (lex!2421 thiss!18206 rules!2135 (print!2160 thiss!18206 (singletonSeq!2602 (h!42901 (t!288746 tokens!494))))))))))

(assert (= (and d!1051690 res!1438834) b!3568611))

(assert (= (and b!3568611 res!1438835) b!3568612))

(assert (= (and d!1051690 res!1438833) b!3568613))

(assert (=> d!1051690 m!4054359))

(declare-fun m!4055991 () Bool)

(assert (=> d!1051690 m!4055991))

(declare-fun m!4055993 () Bool)

(assert (=> d!1051690 m!4055993))

(declare-fun m!4055995 () Bool)

(assert (=> d!1051690 m!4055995))

(assert (=> d!1051690 m!4054333))

(assert (=> d!1051690 m!4054359))

(assert (=> d!1051690 m!4055991))

(declare-fun m!4055997 () Bool)

(assert (=> d!1051690 m!4055997))

(assert (=> d!1051690 m!4054359))

(declare-fun m!4055999 () Bool)

(assert (=> d!1051690 m!4055999))

(declare-fun m!4056001 () Bool)

(assert (=> b!3568611 m!4056001))

(declare-fun m!4056003 () Bool)

(assert (=> b!3568612 m!4056003))

(assert (=> b!3568613 m!4054359))

(assert (=> b!3568613 m!4054359))

(assert (=> b!3568613 m!4055991))

(assert (=> b!3568613 m!4055991))

(assert (=> b!3568613 m!4055993))

(declare-fun m!4056005 () Bool)

(assert (=> b!3568613 m!4056005))

(assert (=> b!3567678 d!1051690))

(declare-fun d!1051692 () Bool)

(assert (=> d!1051692 (not (contains!7084 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 tokens!494)))) lt!1222179))))

(declare-fun lt!1222558 () Unit!53455)

(declare-fun choose!20729 (LexerInterface!5095 List!37604 List!37604 Rule!10812 Rule!10812 C!20716) Unit!53455)

(assert (=> d!1051692 (= lt!1222558 (choose!20729 thiss!18206 rules!2135 rules!2135 (rule!8192 (h!42901 tokens!494)) (rule!8192 separatorToken!241) lt!1222179))))

(assert (=> d!1051692 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051692 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!306 thiss!18206 rules!2135 rules!2135 (rule!8192 (h!42901 tokens!494)) (rule!8192 separatorToken!241) lt!1222179) lt!1222558)))

(declare-fun bs!569053 () Bool)

(assert (= bs!569053 d!1051692))

(assert (=> bs!569053 m!4054351))

(assert (=> bs!569053 m!4054351))

(assert (=> bs!569053 m!4054353))

(declare-fun m!4056007 () Bool)

(assert (=> bs!569053 m!4056007))

(assert (=> bs!569053 m!4054533))

(assert (=> b!3567678 d!1051692))

(declare-fun d!1051694 () Bool)

(assert (=> d!1051694 (= (maxPrefixOneRule!1802 thiss!18206 (rule!8192 (h!42901 tokens!494)) lt!1222162) (Some!7681 (tuple2!37377 (Token!10379 (apply!8997 (transformation!5506 (rule!8192 (h!42901 tokens!494))) (seqFromList!4065 lt!1222162)) (rule!8192 (h!42901 tokens!494)) (size!28564 lt!1222162) lt!1222162) Nil!37479)))))

(declare-fun lt!1222559 () Unit!53455)

(assert (=> d!1051694 (= lt!1222559 (choose!20726 thiss!18206 rules!2135 lt!1222162 lt!1222162 Nil!37479 (rule!8192 (h!42901 tokens!494))))))

(assert (=> d!1051694 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051694 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!895 thiss!18206 rules!2135 lt!1222162 lt!1222162 Nil!37479 (rule!8192 (h!42901 tokens!494))) lt!1222559)))

(declare-fun bs!569054 () Bool)

(assert (= bs!569054 d!1051694))

(declare-fun m!4056009 () Bool)

(assert (=> bs!569054 m!4056009))

(assert (=> bs!569054 m!4054411))

(assert (=> bs!569054 m!4054339))

(assert (=> bs!569054 m!4054521))

(declare-fun m!4056011 () Bool)

(assert (=> bs!569054 m!4056011))

(assert (=> bs!569054 m!4054521))

(assert (=> bs!569054 m!4054333))

(assert (=> b!3567678 d!1051694))

(declare-fun d!1051696 () Bool)

(declare-fun lt!1222560 () BalanceConc!22388)

(assert (=> d!1051696 (= (list!13743 lt!1222560) (printList!1643 thiss!18206 (list!13745 lt!1222163)))))

(assert (=> d!1051696 (= lt!1222560 (printTailRec!1590 thiss!18206 lt!1222163 0 (BalanceConc!22389 Empty!11387)))))

(assert (=> d!1051696 (= (print!2160 thiss!18206 lt!1222163) lt!1222560)))

(declare-fun bs!569055 () Bool)

(assert (= bs!569055 d!1051696))

(declare-fun m!4056013 () Bool)

(assert (=> bs!569055 m!4056013))

(assert (=> bs!569055 m!4055763))

(assert (=> bs!569055 m!4055763))

(declare-fun m!4056015 () Bool)

(assert (=> bs!569055 m!4056015))

(assert (=> bs!569055 m!4054367))

(assert (=> b!3567678 d!1051696))

(declare-fun b!3568614 () Bool)

(declare-fun res!1438841 () Bool)

(declare-fun e!2207490 () Bool)

(assert (=> b!3568614 (=> (not res!1438841) (not e!2207490))))

(declare-fun lt!1222565 () Option!7682)

(assert (=> b!3568614 (= res!1438841 (= (value!177381 (_1!21822 (get!12060 lt!1222565))) (apply!8997 (transformation!5506 (rule!8192 (_1!21822 (get!12060 lt!1222565)))) (seqFromList!4065 (originalCharacters!6220 (_1!21822 (get!12060 lt!1222565)))))))))

(declare-fun b!3568615 () Bool)

(declare-fun res!1438837 () Bool)

(assert (=> b!3568615 (=> (not res!1438837) (not e!2207490))))

(assert (=> b!3568615 (= res!1438837 (= (rule!8192 (_1!21822 (get!12060 lt!1222565))) (rule!8192 (h!42901 tokens!494))))))

(declare-fun b!3568616 () Bool)

(declare-fun e!2207489 () Bool)

(assert (=> b!3568616 (= e!2207489 (matchR!4849 (regex!5506 (rule!8192 (h!42901 tokens!494))) (_1!21827 (findLongestMatchInner!955 (regex!5506 (rule!8192 (h!42901 tokens!494))) Nil!37479 (size!28564 Nil!37479) lt!1222162 lt!1222162 (size!28564 lt!1222162)))))))

(declare-fun b!3568617 () Bool)

(assert (=> b!3568617 (= e!2207490 (= (size!28563 (_1!21822 (get!12060 lt!1222565))) (size!28564 (originalCharacters!6220 (_1!21822 (get!12060 lt!1222565))))))))

(declare-fun b!3568618 () Bool)

(declare-fun res!1438839 () Bool)

(assert (=> b!3568618 (=> (not res!1438839) (not e!2207490))))

(assert (=> b!3568618 (= res!1438839 (< (size!28564 (_2!21822 (get!12060 lt!1222565))) (size!28564 lt!1222162)))))

(declare-fun b!3568619 () Bool)

(declare-fun e!2207491 () Bool)

(assert (=> b!3568619 (= e!2207491 e!2207490)))

(declare-fun res!1438838 () Bool)

(assert (=> b!3568619 (=> (not res!1438838) (not e!2207490))))

(assert (=> b!3568619 (= res!1438838 (matchR!4849 (regex!5506 (rule!8192 (h!42901 tokens!494))) (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222565))))))))

(declare-fun b!3568620 () Bool)

(declare-fun res!1438840 () Bool)

(assert (=> b!3568620 (=> (not res!1438840) (not e!2207490))))

(assert (=> b!3568620 (= res!1438840 (= (++!9315 (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222565)))) (_2!21822 (get!12060 lt!1222565))) lt!1222162))))

(declare-fun b!3568621 () Bool)

(declare-fun e!2207488 () Option!7682)

(assert (=> b!3568621 (= e!2207488 None!7681)))

(declare-fun d!1051698 () Bool)

(assert (=> d!1051698 e!2207491))

(declare-fun res!1438836 () Bool)

(assert (=> d!1051698 (=> res!1438836 e!2207491)))

(assert (=> d!1051698 (= res!1438836 (isEmpty!22005 lt!1222565))))

(assert (=> d!1051698 (= lt!1222565 e!2207488)))

(declare-fun c!618453 () Bool)

(declare-fun lt!1222562 () tuple2!37386)

(assert (=> d!1051698 (= c!618453 (isEmpty!21995 (_1!21827 lt!1222562)))))

(assert (=> d!1051698 (= lt!1222562 (findLongestMatch!870 (regex!5506 (rule!8192 (h!42901 tokens!494))) lt!1222162))))

(assert (=> d!1051698 (ruleValid!1790 thiss!18206 (rule!8192 (h!42901 tokens!494)))))

(assert (=> d!1051698 (= (maxPrefixOneRule!1802 thiss!18206 (rule!8192 (h!42901 tokens!494)) lt!1222162) lt!1222565)))

(declare-fun b!3568622 () Bool)

(assert (=> b!3568622 (= e!2207488 (Some!7681 (tuple2!37377 (Token!10379 (apply!8997 (transformation!5506 (rule!8192 (h!42901 tokens!494))) (seqFromList!4065 (_1!21827 lt!1222562))) (rule!8192 (h!42901 tokens!494)) (size!28567 (seqFromList!4065 (_1!21827 lt!1222562))) (_1!21827 lt!1222562)) (_2!21827 lt!1222562))))))

(declare-fun lt!1222564 () Unit!53455)

(assert (=> b!3568622 (= lt!1222564 (longestMatchIsAcceptedByMatchOrIsEmpty!928 (regex!5506 (rule!8192 (h!42901 tokens!494))) lt!1222162))))

(declare-fun res!1438842 () Bool)

(assert (=> b!3568622 (= res!1438842 (isEmpty!21995 (_1!21827 (findLongestMatchInner!955 (regex!5506 (rule!8192 (h!42901 tokens!494))) Nil!37479 (size!28564 Nil!37479) lt!1222162 lt!1222162 (size!28564 lt!1222162)))))))

(assert (=> b!3568622 (=> res!1438842 e!2207489)))

(assert (=> b!3568622 e!2207489))

(declare-fun lt!1222561 () Unit!53455)

(assert (=> b!3568622 (= lt!1222561 lt!1222564)))

(declare-fun lt!1222563 () Unit!53455)

(assert (=> b!3568622 (= lt!1222563 (lemmaSemiInverse!1307 (transformation!5506 (rule!8192 (h!42901 tokens!494))) (seqFromList!4065 (_1!21827 lt!1222562))))))

(assert (= (and d!1051698 c!618453) b!3568621))

(assert (= (and d!1051698 (not c!618453)) b!3568622))

(assert (= (and b!3568622 (not res!1438842)) b!3568616))

(assert (= (and d!1051698 (not res!1438836)) b!3568619))

(assert (= (and b!3568619 res!1438838) b!3568620))

(assert (= (and b!3568620 res!1438840) b!3568618))

(assert (= (and b!3568618 res!1438839) b!3568615))

(assert (= (and b!3568615 res!1438837) b!3568614))

(assert (= (and b!3568614 res!1438841) b!3568617))

(declare-fun m!4056017 () Bool)

(assert (=> b!3568619 m!4056017))

(declare-fun m!4056019 () Bool)

(assert (=> b!3568619 m!4056019))

(assert (=> b!3568619 m!4056019))

(declare-fun m!4056021 () Bool)

(assert (=> b!3568619 m!4056021))

(assert (=> b!3568619 m!4056021))

(declare-fun m!4056023 () Bool)

(assert (=> b!3568619 m!4056023))

(assert (=> b!3568618 m!4056017))

(declare-fun m!4056025 () Bool)

(assert (=> b!3568618 m!4056025))

(assert (=> b!3568618 m!4054411))

(assert (=> b!3568615 m!4056017))

(assert (=> b!3568620 m!4056017))

(assert (=> b!3568620 m!4056019))

(assert (=> b!3568620 m!4056019))

(assert (=> b!3568620 m!4056021))

(assert (=> b!3568620 m!4056021))

(declare-fun m!4056027 () Bool)

(assert (=> b!3568620 m!4056027))

(assert (=> b!3568614 m!4056017))

(declare-fun m!4056029 () Bool)

(assert (=> b!3568614 m!4056029))

(assert (=> b!3568614 m!4056029))

(declare-fun m!4056031 () Bool)

(assert (=> b!3568614 m!4056031))

(assert (=> b!3568617 m!4056017))

(declare-fun m!4056033 () Bool)

(assert (=> b!3568617 m!4056033))

(assert (=> b!3568616 m!4055475))

(assert (=> b!3568616 m!4054411))

(assert (=> b!3568616 m!4055475))

(assert (=> b!3568616 m!4054411))

(declare-fun m!4056035 () Bool)

(assert (=> b!3568616 m!4056035))

(declare-fun m!4056037 () Bool)

(assert (=> b!3568616 m!4056037))

(declare-fun m!4056039 () Bool)

(assert (=> d!1051698 m!4056039))

(declare-fun m!4056041 () Bool)

(assert (=> d!1051698 m!4056041))

(declare-fun m!4056043 () Bool)

(assert (=> d!1051698 m!4056043))

(declare-fun m!4056045 () Bool)

(assert (=> d!1051698 m!4056045))

(declare-fun m!4056047 () Bool)

(assert (=> b!3568622 m!4056047))

(declare-fun m!4056049 () Bool)

(assert (=> b!3568622 m!4056049))

(assert (=> b!3568622 m!4055475))

(assert (=> b!3568622 m!4054411))

(assert (=> b!3568622 m!4056035))

(declare-fun m!4056051 () Bool)

(assert (=> b!3568622 m!4056051))

(assert (=> b!3568622 m!4056047))

(assert (=> b!3568622 m!4056047))

(declare-fun m!4056053 () Bool)

(assert (=> b!3568622 m!4056053))

(assert (=> b!3568622 m!4054411))

(assert (=> b!3568622 m!4056047))

(declare-fun m!4056055 () Bool)

(assert (=> b!3568622 m!4056055))

(assert (=> b!3568622 m!4055475))

(declare-fun m!4056057 () Bool)

(assert (=> b!3568622 m!4056057))

(assert (=> b!3567678 d!1051698))

(declare-fun d!1051700 () Bool)

(declare-fun lt!1222566 () Bool)

(assert (=> d!1051700 (= lt!1222566 (select (content!5309 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) lt!1222192))))

(declare-fun e!2207492 () Bool)

(assert (=> d!1051700 (= lt!1222566 e!2207492)))

(declare-fun res!1438844 () Bool)

(assert (=> d!1051700 (=> (not res!1438844) (not e!2207492))))

(assert (=> d!1051700 (= res!1438844 ((_ is Cons!37479) (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))

(assert (=> d!1051700 (= (contains!7084 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) lt!1222192) lt!1222566)))

(declare-fun b!3568623 () Bool)

(declare-fun e!2207493 () Bool)

(assert (=> b!3568623 (= e!2207492 e!2207493)))

(declare-fun res!1438843 () Bool)

(assert (=> b!3568623 (=> res!1438843 e!2207493)))

(assert (=> b!3568623 (= res!1438843 (= (h!42899 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) lt!1222192))))

(declare-fun b!3568624 () Bool)

(assert (=> b!3568624 (= e!2207493 (contains!7084 (t!288744 (usedCharacters!740 (regex!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) lt!1222192))))

(assert (= (and d!1051700 res!1438844) b!3568623))

(assert (= (and b!3568623 (not res!1438843)) b!3568624))

(assert (=> d!1051700 m!4054383))

(declare-fun m!4056059 () Bool)

(assert (=> d!1051700 m!4056059))

(declare-fun m!4056061 () Bool)

(assert (=> d!1051700 m!4056061))

(declare-fun m!4056063 () Bool)

(assert (=> b!3568624 m!4056063))

(assert (=> b!3567678 d!1051700))

(declare-fun d!1051702 () Bool)

(assert (=> d!1051702 (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 (t!288746 tokens!494)))))

(declare-fun lt!1222567 () Unit!53455)

(assert (=> d!1051702 (= lt!1222567 (choose!20728 thiss!18206 rules!2135 tokens!494 (h!42901 (t!288746 tokens!494))))))

(assert (=> d!1051702 (not (isEmpty!21994 rules!2135))))

(assert (=> d!1051702 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1084 thiss!18206 rules!2135 tokens!494 (h!42901 (t!288746 tokens!494))) lt!1222567)))

(declare-fun bs!569056 () Bool)

(assert (= bs!569056 d!1051702))

(assert (=> bs!569056 m!4054385))

(declare-fun m!4056065 () Bool)

(assert (=> bs!569056 m!4056065))

(assert (=> bs!569056 m!4054333))

(assert (=> b!3567678 d!1051702))

(declare-fun d!1051704 () Bool)

(assert (=> d!1051704 (dynLambda!16081 lambda!123391 (h!42901 (t!288746 tokens!494)))))

(declare-fun lt!1222568 () Unit!53455)

(assert (=> d!1051704 (= lt!1222568 (choose!20718 tokens!494 lambda!123391 (h!42901 (t!288746 tokens!494))))))

(declare-fun e!2207494 () Bool)

(assert (=> d!1051704 e!2207494))

(declare-fun res!1438845 () Bool)

(assert (=> d!1051704 (=> (not res!1438845) (not e!2207494))))

(assert (=> d!1051704 (= res!1438845 (forall!8102 tokens!494 lambda!123391))))

(assert (=> d!1051704 (= (forallContained!1453 tokens!494 lambda!123391 (h!42901 (t!288746 tokens!494))) lt!1222568)))

(declare-fun b!3568625 () Bool)

(assert (=> b!3568625 (= e!2207494 (contains!7085 tokens!494 (h!42901 (t!288746 tokens!494))))))

(assert (= (and d!1051704 res!1438845) b!3568625))

(declare-fun b_lambda!105109 () Bool)

(assert (=> (not b_lambda!105109) (not d!1051704)))

(declare-fun m!4056067 () Bool)

(assert (=> d!1051704 m!4056067))

(declare-fun m!4056069 () Bool)

(assert (=> d!1051704 m!4056069))

(declare-fun m!4056071 () Bool)

(assert (=> d!1051704 m!4056071))

(assert (=> b!3568625 m!4054971))

(assert (=> b!3567678 d!1051704))

(declare-fun d!1051706 () Bool)

(assert (=> d!1051706 (= (head!7431 lt!1222190) (h!42899 lt!1222190))))

(assert (=> b!3567678 d!1051706))

(declare-fun b!3568626 () Bool)

(declare-fun res!1438852 () Bool)

(declare-fun e!2207496 () Bool)

(assert (=> b!3568626 (=> (not res!1438852) (not e!2207496))))

(declare-fun lt!1222571 () Option!7682)

(assert (=> b!3568626 (= res!1438852 (< (size!28564 (_2!21822 (get!12060 lt!1222571))) (size!28564 lt!1222147)))))

(declare-fun b!3568627 () Bool)

(assert (=> b!3568627 (= e!2207496 (contains!7083 rules!2135 (rule!8192 (_1!21822 (get!12060 lt!1222571)))))))

(declare-fun b!3568629 () Bool)

(declare-fun e!2207495 () Option!7682)

(declare-fun lt!1222570 () Option!7682)

(declare-fun lt!1222572 () Option!7682)

(assert (=> b!3568629 (= e!2207495 (ite (and ((_ is None!7681) lt!1222570) ((_ is None!7681) lt!1222572)) None!7681 (ite ((_ is None!7681) lt!1222572) lt!1222570 (ite ((_ is None!7681) lt!1222570) lt!1222572 (ite (>= (size!28563 (_1!21822 (v!37271 lt!1222570))) (size!28563 (_1!21822 (v!37271 lt!1222572)))) lt!1222570 lt!1222572)))))))

(declare-fun call!258682 () Option!7682)

(assert (=> b!3568629 (= lt!1222570 call!258682)))

(assert (=> b!3568629 (= lt!1222572 (maxPrefix!2635 thiss!18206 (t!288745 rules!2135) lt!1222147))))

(declare-fun b!3568630 () Bool)

(declare-fun res!1438848 () Bool)

(assert (=> b!3568630 (=> (not res!1438848) (not e!2207496))))

(assert (=> b!3568630 (= res!1438848 (= (value!177381 (_1!21822 (get!12060 lt!1222571))) (apply!8997 (transformation!5506 (rule!8192 (_1!21822 (get!12060 lt!1222571)))) (seqFromList!4065 (originalCharacters!6220 (_1!21822 (get!12060 lt!1222571)))))))))

(declare-fun b!3568631 () Bool)

(declare-fun res!1438846 () Bool)

(assert (=> b!3568631 (=> (not res!1438846) (not e!2207496))))

(assert (=> b!3568631 (= res!1438846 (matchR!4849 (regex!5506 (rule!8192 (_1!21822 (get!12060 lt!1222571)))) (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222571))))))))

(declare-fun b!3568632 () Bool)

(declare-fun res!1438847 () Bool)

(assert (=> b!3568632 (=> (not res!1438847) (not e!2207496))))

(assert (=> b!3568632 (= res!1438847 (= (++!9315 (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222571)))) (_2!21822 (get!12060 lt!1222571))) lt!1222147))))

(declare-fun bm!258677 () Bool)

(assert (=> bm!258677 (= call!258682 (maxPrefixOneRule!1802 thiss!18206 (h!42900 rules!2135) lt!1222147))))

(declare-fun b!3568633 () Bool)

(declare-fun res!1438851 () Bool)

(assert (=> b!3568633 (=> (not res!1438851) (not e!2207496))))

(assert (=> b!3568633 (= res!1438851 (= (list!13743 (charsOf!3520 (_1!21822 (get!12060 lt!1222571)))) (originalCharacters!6220 (_1!21822 (get!12060 lt!1222571)))))))

(declare-fun b!3568634 () Bool)

(assert (=> b!3568634 (= e!2207495 call!258682)))

(declare-fun d!1051708 () Bool)

(declare-fun e!2207497 () Bool)

(assert (=> d!1051708 e!2207497))

(declare-fun res!1438849 () Bool)

(assert (=> d!1051708 (=> res!1438849 e!2207497)))

(assert (=> d!1051708 (= res!1438849 (isEmpty!22005 lt!1222571))))

(assert (=> d!1051708 (= lt!1222571 e!2207495)))

(declare-fun c!618454 () Bool)

(assert (=> d!1051708 (= c!618454 (and ((_ is Cons!37480) rules!2135) ((_ is Nil!37480) (t!288745 rules!2135))))))

(declare-fun lt!1222569 () Unit!53455)

(declare-fun lt!1222573 () Unit!53455)

(assert (=> d!1051708 (= lt!1222569 lt!1222573)))

(assert (=> d!1051708 (isPrefix!2890 lt!1222147 lt!1222147)))

(assert (=> d!1051708 (= lt!1222573 (lemmaIsPrefixRefl!1849 lt!1222147 lt!1222147))))

(assert (=> d!1051708 (rulesValidInductive!1899 thiss!18206 rules!2135)))

(assert (=> d!1051708 (= (maxPrefix!2635 thiss!18206 rules!2135 lt!1222147) lt!1222571)))

(declare-fun b!3568628 () Bool)

(assert (=> b!3568628 (= e!2207497 e!2207496)))

(declare-fun res!1438850 () Bool)

(assert (=> b!3568628 (=> (not res!1438850) (not e!2207496))))

(assert (=> b!3568628 (= res!1438850 (isDefined!5925 lt!1222571))))

(assert (= (and d!1051708 c!618454) b!3568634))

(assert (= (and d!1051708 (not c!618454)) b!3568629))

(assert (= (or b!3568634 b!3568629) bm!258677))

(assert (= (and d!1051708 (not res!1438849)) b!3568628))

(assert (= (and b!3568628 res!1438850) b!3568633))

(assert (= (and b!3568633 res!1438851) b!3568626))

(assert (= (and b!3568626 res!1438852) b!3568632))

(assert (= (and b!3568632 res!1438847) b!3568630))

(assert (= (and b!3568630 res!1438848) b!3568631))

(assert (= (and b!3568631 res!1438846) b!3568627))

(declare-fun m!4056073 () Bool)

(assert (=> b!3568627 m!4056073))

(declare-fun m!4056075 () Bool)

(assert (=> b!3568627 m!4056075))

(assert (=> b!3568626 m!4056073))

(declare-fun m!4056077 () Bool)

(assert (=> b!3568626 m!4056077))

(declare-fun m!4056079 () Bool)

(assert (=> b!3568626 m!4056079))

(assert (=> b!3568631 m!4056073))

(declare-fun m!4056081 () Bool)

(assert (=> b!3568631 m!4056081))

(assert (=> b!3568631 m!4056081))

(declare-fun m!4056083 () Bool)

(assert (=> b!3568631 m!4056083))

(assert (=> b!3568631 m!4056083))

(declare-fun m!4056085 () Bool)

(assert (=> b!3568631 m!4056085))

(declare-fun m!4056087 () Bool)

(assert (=> b!3568628 m!4056087))

(assert (=> b!3568632 m!4056073))

(assert (=> b!3568632 m!4056081))

(assert (=> b!3568632 m!4056081))

(assert (=> b!3568632 m!4056083))

(assert (=> b!3568632 m!4056083))

(declare-fun m!4056089 () Bool)

(assert (=> b!3568632 m!4056089))

(declare-fun m!4056091 () Bool)

(assert (=> b!3568629 m!4056091))

(declare-fun m!4056093 () Bool)

(assert (=> d!1051708 m!4056093))

(declare-fun m!4056095 () Bool)

(assert (=> d!1051708 m!4056095))

(declare-fun m!4056097 () Bool)

(assert (=> d!1051708 m!4056097))

(assert (=> d!1051708 m!4054851))

(assert (=> b!3568633 m!4056073))

(assert (=> b!3568633 m!4056081))

(assert (=> b!3568633 m!4056081))

(assert (=> b!3568633 m!4056083))

(assert (=> b!3568630 m!4056073))

(declare-fun m!4056099 () Bool)

(assert (=> b!3568630 m!4056099))

(assert (=> b!3568630 m!4056099))

(declare-fun m!4056101 () Bool)

(assert (=> b!3568630 m!4056101))

(declare-fun m!4056103 () Bool)

(assert (=> bm!258677 m!4056103))

(assert (=> b!3567678 d!1051708))

(declare-fun d!1051710 () Bool)

(declare-fun e!2207498 () Bool)

(assert (=> d!1051710 e!2207498))

(declare-fun res!1438853 () Bool)

(assert (=> d!1051710 (=> (not res!1438853) (not e!2207498))))

(declare-fun lt!1222574 () BalanceConc!22390)

(assert (=> d!1051710 (= res!1438853 (= (list!13745 lt!1222574) (Cons!37481 separatorToken!241 Nil!37481)))))

(assert (=> d!1051710 (= lt!1222574 (singleton!1166 separatorToken!241))))

(assert (=> d!1051710 (= (singletonSeq!2602 separatorToken!241) lt!1222574)))

(declare-fun b!3568635 () Bool)

(assert (=> b!3568635 (= e!2207498 (isBalanced!3481 (c!618264 lt!1222574)))))

(assert (= (and d!1051710 res!1438853) b!3568635))

(declare-fun m!4056105 () Bool)

(assert (=> d!1051710 m!4056105))

(declare-fun m!4056107 () Bool)

(assert (=> d!1051710 m!4056107))

(declare-fun m!4056109 () Bool)

(assert (=> b!3568635 m!4056109))

(assert (=> b!3567678 d!1051710))

(declare-fun d!1051712 () Bool)

(assert (=> d!1051712 (= (head!7431 lt!1222191) (h!42899 lt!1222191))))

(assert (=> b!3567678 d!1051712))

(declare-fun d!1051714 () Bool)

(declare-fun e!2207501 () Bool)

(assert (=> d!1051714 e!2207501))

(declare-fun res!1438858 () Bool)

(assert (=> d!1051714 (=> (not res!1438858) (not e!2207501))))

(assert (=> d!1051714 (= res!1438858 (isDefined!5926 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 tokens!494))))))))

(declare-fun lt!1222577 () Unit!53455)

(declare-fun choose!20731 (LexerInterface!5095 List!37604 List!37603 Token!10378) Unit!53455)

(assert (=> d!1051714 (= lt!1222577 (choose!20731 thiss!18206 rules!2135 lt!1222162 (h!42901 tokens!494)))))

(assert (=> d!1051714 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051714 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 thiss!18206 rules!2135 lt!1222162 (h!42901 tokens!494)) lt!1222577)))

(declare-fun b!3568640 () Bool)

(declare-fun res!1438859 () Bool)

(assert (=> b!3568640 (=> (not res!1438859) (not e!2207501))))

(assert (=> b!3568640 (= res!1438859 (matchR!4849 (regex!5506 (get!12059 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 tokens!494)))))) (list!13743 (charsOf!3520 (h!42901 tokens!494)))))))

(declare-fun b!3568641 () Bool)

(assert (=> b!3568641 (= e!2207501 (= (rule!8192 (h!42901 tokens!494)) (get!12059 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 tokens!494)))))))))

(assert (= (and d!1051714 res!1438858) b!3568640))

(assert (= (and b!3568640 res!1438859) b!3568641))

(assert (=> d!1051714 m!4054377))

(assert (=> d!1051714 m!4054377))

(declare-fun m!4056111 () Bool)

(assert (=> d!1051714 m!4056111))

(declare-fun m!4056113 () Bool)

(assert (=> d!1051714 m!4056113))

(assert (=> d!1051714 m!4054533))

(assert (=> b!3568640 m!4054459))

(declare-fun m!4056115 () Bool)

(assert (=> b!3568640 m!4056115))

(assert (=> b!3568640 m!4054377))

(declare-fun m!4056117 () Bool)

(assert (=> b!3568640 m!4056117))

(assert (=> b!3568640 m!4054457))

(assert (=> b!3568640 m!4054459))

(assert (=> b!3568640 m!4054457))

(assert (=> b!3568640 m!4054377))

(assert (=> b!3568641 m!4054377))

(assert (=> b!3568641 m!4054377))

(assert (=> b!3568641 m!4056117))

(assert (=> b!3567678 d!1051714))

(declare-fun d!1051716 () Bool)

(declare-fun dynLambda!16083 (Int BalanceConc!22388) TokenValue!5736)

(assert (=> d!1051716 (= (apply!8997 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))) (seqFromList!4065 lt!1222191)) (dynLambda!16083 (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (seqFromList!4065 lt!1222191)))))

(declare-fun b_lambda!105111 () Bool)

(assert (=> (not b_lambda!105111) (not d!1051716)))

(declare-fun t!288830 () Bool)

(declare-fun tb!203183 () Bool)

(assert (=> (and b!3567660 (= (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288830) tb!203183))

(declare-fun result!247754 () Bool)

(assert (=> tb!203183 (= result!247754 (inv!21 (dynLambda!16083 (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (seqFromList!4065 lt!1222191))))))

(declare-fun m!4056119 () Bool)

(assert (=> tb!203183 m!4056119))

(assert (=> d!1051716 t!288830))

(declare-fun b_and!256761 () Bool)

(assert (= b_and!256675 (and (=> t!288830 result!247754) b_and!256761)))

(declare-fun t!288832 () Bool)

(declare-fun tb!203185 () Bool)

(assert (=> (and b!3567674 (= (toValue!7774 (transformation!5506 (rule!8192 separatorToken!241))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288832) tb!203185))

(declare-fun result!247758 () Bool)

(assert (= result!247758 result!247754))

(assert (=> d!1051716 t!288832))

(declare-fun b_and!256763 () Bool)

(assert (= b_and!256679 (and (=> t!288832 result!247758) b_and!256763)))

(declare-fun tb!203187 () Bool)

(declare-fun t!288834 () Bool)

(assert (=> (and b!3567686 (= (toValue!7774 (transformation!5506 (h!42900 rules!2135))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288834) tb!203187))

(declare-fun result!247760 () Bool)

(assert (= result!247760 result!247754))

(assert (=> d!1051716 t!288834))

(declare-fun b_and!256765 () Bool)

(assert (= b_and!256683 (and (=> t!288834 result!247760) b_and!256765)))

(assert (=> d!1051716 m!4054337))

(declare-fun m!4056121 () Bool)

(assert (=> d!1051716 m!4056121))

(assert (=> b!3567678 d!1051716))

(declare-fun b!3568644 () Bool)

(declare-fun e!2207508 () Bool)

(declare-fun e!2207505 () Bool)

(assert (=> b!3568644 (= e!2207508 e!2207505)))

(declare-fun res!1438860 () Bool)

(assert (=> b!3568644 (=> (not res!1438860) (not e!2207505))))

(declare-fun lt!1222579 () Option!7681)

(assert (=> b!3568644 (= res!1438860 (contains!7083 rules!2135 (get!12059 lt!1222579)))))

(declare-fun b!3568645 () Bool)

(declare-fun e!2207506 () Option!7681)

(assert (=> b!3568645 (= e!2207506 (Some!7680 (h!42900 rules!2135)))))

(declare-fun b!3568646 () Bool)

(declare-fun e!2207507 () Option!7681)

(assert (=> b!3568646 (= e!2207506 e!2207507)))

(declare-fun c!618455 () Bool)

(assert (=> b!3568646 (= c!618455 (and ((_ is Cons!37480) rules!2135) (not (= (tag!6160 (h!42900 rules!2135)) (tag!6160 (rule!8192 separatorToken!241))))))))

(declare-fun d!1051718 () Bool)

(assert (=> d!1051718 e!2207508))

(declare-fun res!1438861 () Bool)

(assert (=> d!1051718 (=> res!1438861 e!2207508)))

(assert (=> d!1051718 (= res!1438861 (isEmpty!22007 lt!1222579))))

(assert (=> d!1051718 (= lt!1222579 e!2207506)))

(declare-fun c!618456 () Bool)

(assert (=> d!1051718 (= c!618456 (and ((_ is Cons!37480) rules!2135) (= (tag!6160 (h!42900 rules!2135)) (tag!6160 (rule!8192 separatorToken!241)))))))

(assert (=> d!1051718 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051718 (= (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 separatorToken!241))) lt!1222579)))

(declare-fun b!3568647 () Bool)

(assert (=> b!3568647 (= e!2207507 None!7680)))

(declare-fun b!3568648 () Bool)

(assert (=> b!3568648 (= e!2207505 (= (tag!6160 (get!12059 lt!1222579)) (tag!6160 (rule!8192 separatorToken!241))))))

(declare-fun b!3568649 () Bool)

(declare-fun lt!1222580 () Unit!53455)

(declare-fun lt!1222578 () Unit!53455)

(assert (=> b!3568649 (= lt!1222580 lt!1222578)))

(assert (=> b!3568649 (rulesInvariant!4492 thiss!18206 (t!288745 rules!2135))))

(assert (=> b!3568649 (= lt!1222578 (lemmaInvariantOnRulesThenOnTail!478 thiss!18206 (h!42900 rules!2135) (t!288745 rules!2135)))))

(assert (=> b!3568649 (= e!2207507 (getRuleFromTag!1149 thiss!18206 (t!288745 rules!2135) (tag!6160 (rule!8192 separatorToken!241))))))

(assert (= (and d!1051718 c!618456) b!3568645))

(assert (= (and d!1051718 (not c!618456)) b!3568646))

(assert (= (and b!3568646 c!618455) b!3568649))

(assert (= (and b!3568646 (not c!618455)) b!3568647))

(assert (= (and d!1051718 (not res!1438861)) b!3568644))

(assert (= (and b!3568644 res!1438860) b!3568648))

(declare-fun m!4056123 () Bool)

(assert (=> b!3568644 m!4056123))

(assert (=> b!3568644 m!4056123))

(declare-fun m!4056125 () Bool)

(assert (=> b!3568644 m!4056125))

(declare-fun m!4056127 () Bool)

(assert (=> d!1051718 m!4056127))

(assert (=> d!1051718 m!4054533))

(assert (=> b!3568648 m!4056123))

(assert (=> b!3568649 m!4055507))

(assert (=> b!3568649 m!4055509))

(declare-fun m!4056129 () Bool)

(assert (=> b!3568649 m!4056129))

(assert (=> b!3567678 d!1051718))

(declare-fun d!1051720 () Bool)

(declare-fun lt!1222581 () Int)

(assert (=> d!1051720 (= lt!1222581 (size!28570 (list!13745 (_1!21823 lt!1222175))))))

(assert (=> d!1051720 (= lt!1222581 (size!28571 (c!618264 (_1!21823 lt!1222175))))))

(assert (=> d!1051720 (= (size!28565 (_1!21823 lt!1222175)) lt!1222581)))

(declare-fun bs!569057 () Bool)

(assert (= bs!569057 d!1051720))

(assert (=> bs!569057 m!4054961))

(assert (=> bs!569057 m!4054961))

(declare-fun m!4056131 () Bool)

(assert (=> bs!569057 m!4056131))

(declare-fun m!4056133 () Bool)

(assert (=> bs!569057 m!4056133))

(assert (=> b!3567678 d!1051720))

(declare-fun d!1051722 () Bool)

(declare-fun lt!1222582 () Bool)

(assert (=> d!1051722 (= lt!1222582 (select (content!5309 lt!1222157) lt!1222192))))

(declare-fun e!2207509 () Bool)

(assert (=> d!1051722 (= lt!1222582 e!2207509)))

(declare-fun res!1438863 () Bool)

(assert (=> d!1051722 (=> (not res!1438863) (not e!2207509))))

(assert (=> d!1051722 (= res!1438863 ((_ is Cons!37479) lt!1222157))))

(assert (=> d!1051722 (= (contains!7084 lt!1222157 lt!1222192) lt!1222582)))

(declare-fun b!3568650 () Bool)

(declare-fun e!2207510 () Bool)

(assert (=> b!3568650 (= e!2207509 e!2207510)))

(declare-fun res!1438862 () Bool)

(assert (=> b!3568650 (=> res!1438862 e!2207510)))

(assert (=> b!3568650 (= res!1438862 (= (h!42899 lt!1222157) lt!1222192))))

(declare-fun b!3568651 () Bool)

(assert (=> b!3568651 (= e!2207510 (contains!7084 (t!288744 lt!1222157) lt!1222192))))

(assert (= (and d!1051722 res!1438863) b!3568650))

(assert (= (and b!3568650 (not res!1438862)) b!3568651))

(declare-fun m!4056135 () Bool)

(assert (=> d!1051722 m!4056135))

(declare-fun m!4056137 () Bool)

(assert (=> d!1051722 m!4056137))

(declare-fun m!4056139 () Bool)

(assert (=> b!3568651 m!4056139))

(assert (=> b!3567678 d!1051722))

(declare-fun d!1051724 () Bool)

(declare-fun e!2207511 () Bool)

(assert (=> d!1051724 e!2207511))

(declare-fun res!1438864 () Bool)

(assert (=> d!1051724 (=> (not res!1438864) (not e!2207511))))

(assert (=> d!1051724 (= res!1438864 (isDefined!5926 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 separatorToken!241)))))))

(declare-fun lt!1222583 () Unit!53455)

(assert (=> d!1051724 (= lt!1222583 (choose!20731 thiss!18206 rules!2135 lt!1222190 separatorToken!241))))

(assert (=> d!1051724 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051724 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 thiss!18206 rules!2135 lt!1222190 separatorToken!241) lt!1222583)))

(declare-fun b!3568652 () Bool)

(declare-fun res!1438865 () Bool)

(assert (=> b!3568652 (=> (not res!1438865) (not e!2207511))))

(assert (=> b!3568652 (= res!1438865 (matchR!4849 (regex!5506 (get!12059 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 separatorToken!241))))) (list!13743 (charsOf!3520 separatorToken!241))))))

(declare-fun b!3568653 () Bool)

(assert (=> b!3568653 (= e!2207511 (= (rule!8192 separatorToken!241) (get!12059 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 separatorToken!241))))))))

(assert (= (and d!1051724 res!1438864) b!3568652))

(assert (= (and b!3568652 res!1438865) b!3568653))

(assert (=> d!1051724 m!4054409))

(assert (=> d!1051724 m!4054409))

(declare-fun m!4056141 () Bool)

(assert (=> d!1051724 m!4056141))

(declare-fun m!4056143 () Bool)

(assert (=> d!1051724 m!4056143))

(assert (=> d!1051724 m!4054533))

(assert (=> b!3568652 m!4054499))

(declare-fun m!4056145 () Bool)

(assert (=> b!3568652 m!4056145))

(assert (=> b!3568652 m!4054409))

(declare-fun m!4056147 () Bool)

(assert (=> b!3568652 m!4056147))

(assert (=> b!3568652 m!4054487))

(assert (=> b!3568652 m!4054499))

(assert (=> b!3568652 m!4054487))

(assert (=> b!3568652 m!4054409))

(assert (=> b!3568653 m!4054409))

(assert (=> b!3568653 m!4054409))

(assert (=> b!3568653 m!4056147))

(assert (=> b!3567678 d!1051724))

(declare-fun d!1051726 () Bool)

(assert (=> d!1051726 (= (isDefined!5926 lt!1222174) (not (isEmpty!22007 lt!1222174)))))

(declare-fun bs!569058 () Bool)

(assert (= bs!569058 d!1051726))

(declare-fun m!4056149 () Bool)

(assert (=> bs!569058 m!4056149))

(assert (=> b!3567678 d!1051726))

(declare-fun d!1051728 () Bool)

(assert (=> d!1051728 (= (apply!8997 (transformation!5506 (rule!8192 (h!42901 tokens!494))) lt!1222146) (dynLambda!16083 (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) lt!1222146))))

(declare-fun b_lambda!105113 () Bool)

(assert (=> (not b_lambda!105113) (not d!1051728)))

(declare-fun t!288836 () Bool)

(declare-fun tb!203189 () Bool)

(assert (=> (and b!3567660 (= (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288836) tb!203189))

(declare-fun result!247762 () Bool)

(assert (=> tb!203189 (= result!247762 (inv!21 (dynLambda!16083 (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) lt!1222146)))))

(declare-fun m!4056151 () Bool)

(assert (=> tb!203189 m!4056151))

(assert (=> d!1051728 t!288836))

(declare-fun b_and!256767 () Bool)

(assert (= b_and!256761 (and (=> t!288836 result!247762) b_and!256767)))

(declare-fun tb!203191 () Bool)

(declare-fun t!288838 () Bool)

(assert (=> (and b!3567674 (= (toValue!7774 (transformation!5506 (rule!8192 separatorToken!241))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288838) tb!203191))

(declare-fun result!247764 () Bool)

(assert (= result!247764 result!247762))

(assert (=> d!1051728 t!288838))

(declare-fun b_and!256769 () Bool)

(assert (= b_and!256763 (and (=> t!288838 result!247764) b_and!256769)))

(declare-fun t!288840 () Bool)

(declare-fun tb!203193 () Bool)

(assert (=> (and b!3567686 (= (toValue!7774 (transformation!5506 (h!42900 rules!2135))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288840) tb!203193))

(declare-fun result!247766 () Bool)

(assert (= result!247766 result!247762))

(assert (=> d!1051728 t!288840))

(declare-fun b_and!256771 () Bool)

(assert (= b_and!256765 (and (=> t!288840 result!247766) b_and!256771)))

(declare-fun m!4056153 () Bool)

(assert (=> d!1051728 m!4056153))

(assert (=> b!3567678 d!1051728))

(declare-fun d!1051730 () Bool)

(declare-fun lt!1222588 () BalanceConc!22388)

(assert (=> d!1051730 (= (list!13743 lt!1222588) (printListTailRec!734 thiss!18206 (dropList!1251 lt!1222153 0) (list!13743 (BalanceConc!22389 Empty!11387))))))

(declare-fun e!2207513 () BalanceConc!22388)

(assert (=> d!1051730 (= lt!1222588 e!2207513)))

(declare-fun c!618457 () Bool)

(assert (=> d!1051730 (= c!618457 (>= 0 (size!28565 lt!1222153)))))

(declare-fun e!2207514 () Bool)

(assert (=> d!1051730 e!2207514))

(declare-fun res!1438866 () Bool)

(assert (=> d!1051730 (=> (not res!1438866) (not e!2207514))))

(assert (=> d!1051730 (= res!1438866 (>= 0 0))))

(assert (=> d!1051730 (= (printTailRec!1590 thiss!18206 lt!1222153 0 (BalanceConc!22389 Empty!11387)) lt!1222588)))

(declare-fun b!3568654 () Bool)

(assert (=> b!3568654 (= e!2207514 (<= 0 (size!28565 lt!1222153)))))

(declare-fun b!3568655 () Bool)

(assert (=> b!3568655 (= e!2207513 (BalanceConc!22389 Empty!11387))))

(declare-fun b!3568656 () Bool)

(assert (=> b!3568656 (= e!2207513 (printTailRec!1590 thiss!18206 lt!1222153 (+ 0 1) (++!9317 (BalanceConc!22389 Empty!11387) (charsOf!3520 (apply!8996 lt!1222153 0)))))))

(declare-fun lt!1222587 () List!37605)

(assert (=> b!3568656 (= lt!1222587 (list!13745 lt!1222153))))

(declare-fun lt!1222586 () Unit!53455)

(assert (=> b!3568656 (= lt!1222586 (lemmaDropApply!1209 lt!1222587 0))))

(assert (=> b!3568656 (= (head!7433 (drop!2071 lt!1222587 0)) (apply!9000 lt!1222587 0))))

(declare-fun lt!1222585 () Unit!53455)

(assert (=> b!3568656 (= lt!1222585 lt!1222586)))

(declare-fun lt!1222584 () List!37605)

(assert (=> b!3568656 (= lt!1222584 (list!13745 lt!1222153))))

(declare-fun lt!1222589 () Unit!53455)

(assert (=> b!3568656 (= lt!1222589 (lemmaDropTail!1093 lt!1222584 0))))

(assert (=> b!3568656 (= (tail!5525 (drop!2071 lt!1222584 0)) (drop!2071 lt!1222584 (+ 0 1)))))

(declare-fun lt!1222590 () Unit!53455)

(assert (=> b!3568656 (= lt!1222590 lt!1222589)))

(assert (= (and d!1051730 res!1438866) b!3568654))

(assert (= (and d!1051730 c!618457) b!3568655))

(assert (= (and d!1051730 (not c!618457)) b!3568656))

(declare-fun m!4056155 () Bool)

(assert (=> d!1051730 m!4056155))

(assert (=> d!1051730 m!4054985))

(declare-fun m!4056157 () Bool)

(assert (=> d!1051730 m!4056157))

(assert (=> d!1051730 m!4054985))

(declare-fun m!4056159 () Bool)

(assert (=> d!1051730 m!4056159))

(assert (=> d!1051730 m!4056155))

(declare-fun m!4056161 () Bool)

(assert (=> d!1051730 m!4056161))

(assert (=> b!3568654 m!4056161))

(declare-fun m!4056163 () Bool)

(assert (=> b!3568656 m!4056163))

(declare-fun m!4056165 () Bool)

(assert (=> b!3568656 m!4056165))

(declare-fun m!4056167 () Bool)

(assert (=> b!3568656 m!4056167))

(declare-fun m!4056169 () Bool)

(assert (=> b!3568656 m!4056169))

(declare-fun m!4056171 () Bool)

(assert (=> b!3568656 m!4056171))

(declare-fun m!4056173 () Bool)

(assert (=> b!3568656 m!4056173))

(declare-fun m!4056175 () Bool)

(assert (=> b!3568656 m!4056175))

(declare-fun m!4056177 () Bool)

(assert (=> b!3568656 m!4056177))

(declare-fun m!4056179 () Bool)

(assert (=> b!3568656 m!4056179))

(declare-fun m!4056181 () Bool)

(assert (=> b!3568656 m!4056181))

(assert (=> b!3568656 m!4056175))

(declare-fun m!4056183 () Bool)

(assert (=> b!3568656 m!4056183))

(assert (=> b!3568656 m!4056183))

(assert (=> b!3568656 m!4056169))

(assert (=> b!3568656 m!4055725))

(assert (=> b!3568656 m!4056165))

(declare-fun m!4056185 () Bool)

(assert (=> b!3568656 m!4056185))

(assert (=> b!3568656 m!4056177))

(assert (=> b!3567678 d!1051730))

(declare-fun d!1051732 () Bool)

(assert (=> d!1051732 (= (seqFromList!4065 lt!1222191) (fromListB!1873 lt!1222191))))

(declare-fun bs!569059 () Bool)

(assert (= bs!569059 d!1051732))

(declare-fun m!4056187 () Bool)

(assert (=> bs!569059 m!4056187))

(assert (=> b!3567678 d!1051732))

(declare-fun d!1051734 () Bool)

(declare-fun lt!1222591 () Bool)

(assert (=> d!1051734 (= lt!1222591 (select (content!5309 lt!1222157) lt!1222179))))

(declare-fun e!2207515 () Bool)

(assert (=> d!1051734 (= lt!1222591 e!2207515)))

(declare-fun res!1438868 () Bool)

(assert (=> d!1051734 (=> (not res!1438868) (not e!2207515))))

(assert (=> d!1051734 (= res!1438868 ((_ is Cons!37479) lt!1222157))))

(assert (=> d!1051734 (= (contains!7084 lt!1222157 lt!1222179) lt!1222591)))

(declare-fun b!3568657 () Bool)

(declare-fun e!2207516 () Bool)

(assert (=> b!3568657 (= e!2207515 e!2207516)))

(declare-fun res!1438867 () Bool)

(assert (=> b!3568657 (=> res!1438867 e!2207516)))

(assert (=> b!3568657 (= res!1438867 (= (h!42899 lt!1222157) lt!1222179))))

(declare-fun b!3568658 () Bool)

(assert (=> b!3568658 (= e!2207516 (contains!7084 (t!288744 lt!1222157) lt!1222179))))

(assert (= (and d!1051734 res!1438868) b!3568657))

(assert (= (and b!3568657 (not res!1438867)) b!3568658))

(assert (=> d!1051734 m!4056135))

(declare-fun m!4056189 () Bool)

(assert (=> d!1051734 m!4056189))

(declare-fun m!4056191 () Bool)

(assert (=> b!3568658 m!4056191))

(assert (=> b!3567678 d!1051734))

(declare-fun d!1051736 () Bool)

(declare-fun e!2207517 () Bool)

(assert (=> d!1051736 e!2207517))

(declare-fun res!1438869 () Bool)

(assert (=> d!1051736 (=> (not res!1438869) (not e!2207517))))

(assert (=> d!1051736 (= res!1438869 (isDefined!5926 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))

(declare-fun lt!1222592 () Unit!53455)

(assert (=> d!1051736 (= lt!1222592 (choose!20731 thiss!18206 rules!2135 lt!1222191 (h!42901 (t!288746 tokens!494))))))

(assert (=> d!1051736 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051736 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1149 thiss!18206 rules!2135 lt!1222191 (h!42901 (t!288746 tokens!494))) lt!1222592)))

(declare-fun b!3568659 () Bool)

(declare-fun res!1438870 () Bool)

(assert (=> b!3568659 (=> (not res!1438870) (not e!2207517))))

(assert (=> b!3568659 (= res!1438870 (matchR!4849 (regex!5506 (get!12059 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (list!13743 (charsOf!3520 (h!42901 (t!288746 tokens!494))))))))

(declare-fun b!3568660 () Bool)

(assert (=> b!3568660 (= e!2207517 (= (rule!8192 (h!42901 (t!288746 tokens!494))) (get!12059 (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))))))))

(assert (= (and d!1051736 res!1438869) b!3568659))

(assert (= (and b!3568659 res!1438870) b!3568660))

(assert (=> d!1051736 m!4054399))

(assert (=> d!1051736 m!4054399))

(declare-fun m!4056193 () Bool)

(assert (=> d!1051736 m!4056193))

(declare-fun m!4056195 () Bool)

(assert (=> d!1051736 m!4056195))

(assert (=> d!1051736 m!4054533))

(assert (=> b!3568659 m!4054493))

(declare-fun m!4056197 () Bool)

(assert (=> b!3568659 m!4056197))

(assert (=> b!3568659 m!4054399))

(declare-fun m!4056199 () Bool)

(assert (=> b!3568659 m!4056199))

(assert (=> b!3568659 m!4054491))

(assert (=> b!3568659 m!4054493))

(assert (=> b!3568659 m!4054491))

(assert (=> b!3568659 m!4054399))

(assert (=> b!3568660 m!4054399))

(assert (=> b!3568660 m!4054399))

(assert (=> b!3568660 m!4056199))

(assert (=> b!3567678 d!1051736))

(declare-fun d!1051738 () Bool)

(declare-fun lt!1222593 () Bool)

(assert (=> d!1051738 (= lt!1222593 (select (content!5310 rules!2135) (rule!8192 separatorToken!241)))))

(declare-fun e!2207519 () Bool)

(assert (=> d!1051738 (= lt!1222593 e!2207519)))

(declare-fun res!1438871 () Bool)

(assert (=> d!1051738 (=> (not res!1438871) (not e!2207519))))

(assert (=> d!1051738 (= res!1438871 ((_ is Cons!37480) rules!2135))))

(assert (=> d!1051738 (= (contains!7083 rules!2135 (rule!8192 separatorToken!241)) lt!1222593)))

(declare-fun b!3568661 () Bool)

(declare-fun e!2207518 () Bool)

(assert (=> b!3568661 (= e!2207519 e!2207518)))

(declare-fun res!1438872 () Bool)

(assert (=> b!3568661 (=> res!1438872 e!2207518)))

(assert (=> b!3568661 (= res!1438872 (= (h!42900 rules!2135) (rule!8192 separatorToken!241)))))

(declare-fun b!3568662 () Bool)

(assert (=> b!3568662 (= e!2207518 (contains!7083 (t!288745 rules!2135) (rule!8192 separatorToken!241)))))

(assert (= (and d!1051738 res!1438871) b!3568661))

(assert (= (and b!3568661 (not res!1438872)) b!3568662))

(assert (=> d!1051738 m!4055107))

(declare-fun m!4056201 () Bool)

(assert (=> d!1051738 m!4056201))

(declare-fun m!4056203 () Bool)

(assert (=> b!3568662 m!4056203))

(assert (=> b!3567678 d!1051738))

(declare-fun d!1051740 () Bool)

(declare-fun c!618458 () Bool)

(assert (=> d!1051740 (= c!618458 (or ((_ is EmptyExpr!10265) (regex!5506 (rule!8192 separatorToken!241))) ((_ is EmptyLang!10265) (regex!5506 (rule!8192 separatorToken!241)))))))

(declare-fun e!2207520 () List!37603)

(assert (=> d!1051740 (= (usedCharacters!740 (regex!5506 (rule!8192 separatorToken!241))) e!2207520)))

(declare-fun b!3568663 () Bool)

(declare-fun e!2207522 () List!37603)

(declare-fun call!258683 () List!37603)

(assert (=> b!3568663 (= e!2207522 call!258683)))

(declare-fun call!258685 () List!37603)

(declare-fun c!618461 () Bool)

(declare-fun call!258684 () List!37603)

(declare-fun bm!258678 () Bool)

(assert (=> bm!258678 (= call!258683 (++!9315 (ite c!618461 call!258684 call!258685) (ite c!618461 call!258685 call!258684)))))

(declare-fun c!618459 () Bool)

(declare-fun call!258686 () List!37603)

(declare-fun bm!258679 () Bool)

(assert (=> bm!258679 (= call!258686 (usedCharacters!740 (ite c!618459 (reg!10594 (regex!5506 (rule!8192 separatorToken!241))) (ite c!618461 (regTwo!21043 (regex!5506 (rule!8192 separatorToken!241))) (regOne!21042 (regex!5506 (rule!8192 separatorToken!241)))))))))

(declare-fun b!3568664 () Bool)

(declare-fun e!2207523 () List!37603)

(assert (=> b!3568664 (= e!2207520 e!2207523)))

(declare-fun c!618460 () Bool)

(assert (=> b!3568664 (= c!618460 ((_ is ElementMatch!10265) (regex!5506 (rule!8192 separatorToken!241))))))

(declare-fun b!3568665 () Bool)

(declare-fun e!2207521 () List!37603)

(assert (=> b!3568665 (= e!2207521 call!258686)))

(declare-fun b!3568666 () Bool)

(assert (=> b!3568666 (= c!618459 ((_ is Star!10265) (regex!5506 (rule!8192 separatorToken!241))))))

(assert (=> b!3568666 (= e!2207523 e!2207521)))

(declare-fun bm!258680 () Bool)

(assert (=> bm!258680 (= call!258684 (usedCharacters!740 (ite c!618461 (regOne!21043 (regex!5506 (rule!8192 separatorToken!241))) (regTwo!21042 (regex!5506 (rule!8192 separatorToken!241))))))))

(declare-fun b!3568667 () Bool)

(assert (=> b!3568667 (= e!2207521 e!2207522)))

(assert (=> b!3568667 (= c!618461 ((_ is Union!10265) (regex!5506 (rule!8192 separatorToken!241))))))

(declare-fun bm!258681 () Bool)

(assert (=> bm!258681 (= call!258685 call!258686)))

(declare-fun b!3568668 () Bool)

(assert (=> b!3568668 (= e!2207523 (Cons!37479 (c!618262 (regex!5506 (rule!8192 separatorToken!241))) Nil!37479))))

(declare-fun b!3568669 () Bool)

(assert (=> b!3568669 (= e!2207522 call!258683)))

(declare-fun b!3568670 () Bool)

(assert (=> b!3568670 (= e!2207520 Nil!37479)))

(assert (= (and d!1051740 c!618458) b!3568670))

(assert (= (and d!1051740 (not c!618458)) b!3568664))

(assert (= (and b!3568664 c!618460) b!3568668))

(assert (= (and b!3568664 (not c!618460)) b!3568666))

(assert (= (and b!3568666 c!618459) b!3568665))

(assert (= (and b!3568666 (not c!618459)) b!3568667))

(assert (= (and b!3568667 c!618461) b!3568663))

(assert (= (and b!3568667 (not c!618461)) b!3568669))

(assert (= (or b!3568663 b!3568669) bm!258681))

(assert (= (or b!3568663 b!3568669) bm!258680))

(assert (= (or b!3568663 b!3568669) bm!258678))

(assert (= (or b!3568665 bm!258681) bm!258679))

(declare-fun m!4056205 () Bool)

(assert (=> bm!258678 m!4056205))

(declare-fun m!4056207 () Bool)

(assert (=> bm!258679 m!4056207))

(declare-fun m!4056209 () Bool)

(assert (=> bm!258680 m!4056209))

(assert (=> b!3567678 d!1051740))

(declare-fun b!3568671 () Bool)

(declare-fun e!2207527 () Bool)

(declare-fun e!2207524 () Bool)

(assert (=> b!3568671 (= e!2207527 e!2207524)))

(declare-fun res!1438873 () Bool)

(assert (=> b!3568671 (=> (not res!1438873) (not e!2207524))))

(declare-fun lt!1222595 () Option!7681)

(assert (=> b!3568671 (= res!1438873 (contains!7083 rules!2135 (get!12059 lt!1222595)))))

(declare-fun b!3568672 () Bool)

(declare-fun e!2207525 () Option!7681)

(assert (=> b!3568672 (= e!2207525 (Some!7680 (h!42900 rules!2135)))))

(declare-fun b!3568673 () Bool)

(declare-fun e!2207526 () Option!7681)

(assert (=> b!3568673 (= e!2207525 e!2207526)))

(declare-fun c!618462 () Bool)

(assert (=> b!3568673 (= c!618462 (and ((_ is Cons!37480) rules!2135) (not (= (tag!6160 (h!42900 rules!2135)) (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))))))))

(declare-fun d!1051742 () Bool)

(assert (=> d!1051742 e!2207527))

(declare-fun res!1438874 () Bool)

(assert (=> d!1051742 (=> res!1438874 e!2207527)))

(assert (=> d!1051742 (= res!1438874 (isEmpty!22007 lt!1222595))))

(assert (=> d!1051742 (= lt!1222595 e!2207525)))

(declare-fun c!618463 () Bool)

(assert (=> d!1051742 (= c!618463 (and ((_ is Cons!37480) rules!2135) (= (tag!6160 (h!42900 rules!2135)) (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494)))))))))

(assert (=> d!1051742 (rulesInvariant!4492 thiss!18206 rules!2135)))

(assert (=> d!1051742 (= (getRuleFromTag!1149 thiss!18206 rules!2135 (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))) lt!1222595)))

(declare-fun b!3568674 () Bool)

(assert (=> b!3568674 (= e!2207526 None!7680)))

(declare-fun b!3568675 () Bool)

(assert (=> b!3568675 (= e!2207524 (= (tag!6160 (get!12059 lt!1222595)) (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(declare-fun b!3568676 () Bool)

(declare-fun lt!1222596 () Unit!53455)

(declare-fun lt!1222594 () Unit!53455)

(assert (=> b!3568676 (= lt!1222596 lt!1222594)))

(assert (=> b!3568676 (rulesInvariant!4492 thiss!18206 (t!288745 rules!2135))))

(assert (=> b!3568676 (= lt!1222594 (lemmaInvariantOnRulesThenOnTail!478 thiss!18206 (h!42900 rules!2135) (t!288745 rules!2135)))))

(assert (=> b!3568676 (= e!2207526 (getRuleFromTag!1149 thiss!18206 (t!288745 rules!2135) (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(assert (= (and d!1051742 c!618463) b!3568672))

(assert (= (and d!1051742 (not c!618463)) b!3568673))

(assert (= (and b!3568673 c!618462) b!3568676))

(assert (= (and b!3568673 (not c!618462)) b!3568674))

(assert (= (and d!1051742 (not res!1438874)) b!3568671))

(assert (= (and b!3568671 res!1438873) b!3568675))

(declare-fun m!4056211 () Bool)

(assert (=> b!3568671 m!4056211))

(assert (=> b!3568671 m!4056211))

(declare-fun m!4056213 () Bool)

(assert (=> b!3568671 m!4056213))

(declare-fun m!4056215 () Bool)

(assert (=> d!1051742 m!4056215))

(assert (=> d!1051742 m!4054533))

(assert (=> b!3568675 m!4056211))

(assert (=> b!3568676 m!4055507))

(assert (=> b!3568676 m!4055509))

(declare-fun m!4056217 () Bool)

(assert (=> b!3568676 m!4056217))

(assert (=> b!3567678 d!1051742))

(declare-fun d!1051744 () Bool)

(declare-fun lt!1222597 () Int)

(assert (=> d!1051744 (>= lt!1222597 0)))

(declare-fun e!2207528 () Int)

(assert (=> d!1051744 (= lt!1222597 e!2207528)))

(declare-fun c!618464 () Bool)

(assert (=> d!1051744 (= c!618464 ((_ is Nil!37479) lt!1222191))))

(assert (=> d!1051744 (= (size!28564 lt!1222191) lt!1222597)))

(declare-fun b!3568677 () Bool)

(assert (=> b!3568677 (= e!2207528 0)))

(declare-fun b!3568678 () Bool)

(assert (=> b!3568678 (= e!2207528 (+ 1 (size!28564 (t!288744 lt!1222191))))))

(assert (= (and d!1051744 c!618464) b!3568677))

(assert (= (and d!1051744 (not c!618464)) b!3568678))

(declare-fun m!4056219 () Bool)

(assert (=> b!3568678 m!4056219))

(assert (=> b!3567678 d!1051744))

(assert (=> b!3567657 d!1051462))

(declare-fun d!1051746 () Bool)

(declare-fun res!1438879 () Bool)

(declare-fun e!2207531 () Bool)

(assert (=> d!1051746 (=> (not res!1438879) (not e!2207531))))

(assert (=> d!1051746 (= res!1438879 (validRegex!4690 (regex!5506 (rule!8192 separatorToken!241))))))

(assert (=> d!1051746 (= (ruleValid!1790 thiss!18206 (rule!8192 separatorToken!241)) e!2207531)))

(declare-fun b!3568683 () Bool)

(declare-fun res!1438880 () Bool)

(assert (=> b!3568683 (=> (not res!1438880) (not e!2207531))))

(assert (=> b!3568683 (= res!1438880 (not (nullable!3534 (regex!5506 (rule!8192 separatorToken!241)))))))

(declare-fun b!3568684 () Bool)

(assert (=> b!3568684 (= e!2207531 (not (= (tag!6160 (rule!8192 separatorToken!241)) (String!42015 ""))))))

(assert (= (and d!1051746 res!1438879) b!3568683))

(assert (= (and b!3568683 res!1438880) b!3568684))

(assert (=> d!1051746 m!4055121))

(assert (=> b!3568683 m!4055127))

(assert (=> b!3567657 d!1051746))

(declare-fun d!1051748 () Bool)

(assert (=> d!1051748 (ruleValid!1790 thiss!18206 (rule!8192 separatorToken!241))))

(declare-fun lt!1222600 () Unit!53455)

(declare-fun choose!20734 (LexerInterface!5095 Rule!10812 List!37604) Unit!53455)

(assert (=> d!1051748 (= lt!1222600 (choose!20734 thiss!18206 (rule!8192 separatorToken!241) rules!2135))))

(assert (=> d!1051748 (contains!7083 rules!2135 (rule!8192 separatorToken!241))))

(assert (=> d!1051748 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!956 thiss!18206 (rule!8192 separatorToken!241) rules!2135) lt!1222600)))

(declare-fun bs!569060 () Bool)

(assert (= bs!569060 d!1051748))

(assert (=> bs!569060 m!4054483))

(declare-fun m!4056221 () Bool)

(assert (=> bs!569060 m!4056221))

(assert (=> bs!569060 m!4054365))

(assert (=> b!3567657 d!1051748))

(declare-fun d!1051750 () Bool)

(declare-fun res!1438881 () Bool)

(declare-fun e!2207532 () Bool)

(assert (=> d!1051750 (=> (not res!1438881) (not e!2207532))))

(assert (=> d!1051750 (= res!1438881 (not (isEmpty!21995 (originalCharacters!6220 (h!42901 tokens!494)))))))

(assert (=> d!1051750 (= (inv!50750 (h!42901 tokens!494)) e!2207532)))

(declare-fun b!3568685 () Bool)

(declare-fun res!1438882 () Bool)

(assert (=> b!3568685 (=> (not res!1438882) (not e!2207532))))

(assert (=> b!3568685 (= res!1438882 (= (originalCharacters!6220 (h!42901 tokens!494)) (list!13743 (dynLambda!16080 (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (value!177381 (h!42901 tokens!494))))))))

(declare-fun b!3568686 () Bool)

(assert (=> b!3568686 (= e!2207532 (= (size!28563 (h!42901 tokens!494)) (size!28564 (originalCharacters!6220 (h!42901 tokens!494)))))))

(assert (= (and d!1051750 res!1438881) b!3568685))

(assert (= (and b!3568685 res!1438882) b!3568686))

(declare-fun b_lambda!105115 () Bool)

(assert (=> (not b_lambda!105115) (not b!3568685)))

(assert (=> b!3568685 t!288767))

(declare-fun b_and!256773 () Bool)

(assert (= b_and!256711 (and (=> t!288767 result!247694) b_and!256773)))

(assert (=> b!3568685 t!288769))

(declare-fun b_and!256775 () Bool)

(assert (= b_and!256713 (and (=> t!288769 result!247696) b_and!256775)))

(assert (=> b!3568685 t!288771))

(declare-fun b_and!256777 () Bool)

(assert (= b_and!256715 (and (=> t!288771 result!247698) b_and!256777)))

(declare-fun m!4056223 () Bool)

(assert (=> d!1051750 m!4056223))

(assert (=> b!3568685 m!4054919))

(assert (=> b!3568685 m!4054919))

(declare-fun m!4056225 () Bool)

(assert (=> b!3568685 m!4056225))

(declare-fun m!4056227 () Bool)

(assert (=> b!3568686 m!4056227))

(assert (=> b!3567679 d!1051750))

(declare-fun b!3568697 () Bool)

(declare-fun b_free!91349 () Bool)

(declare-fun b_next!92053 () Bool)

(assert (=> b!3568697 (= b_free!91349 (not b_next!92053))))

(declare-fun t!288842 () Bool)

(declare-fun tb!203195 () Bool)

(assert (=> (and b!3568697 (= (toValue!7774 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288842) tb!203195))

(declare-fun result!247770 () Bool)

(assert (= result!247770 result!247754))

(assert (=> d!1051716 t!288842))

(declare-fun t!288844 () Bool)

(declare-fun tb!203197 () Bool)

(assert (=> (and b!3568697 (= (toValue!7774 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288844) tb!203197))

(declare-fun result!247772 () Bool)

(assert (= result!247772 result!247762))

(assert (=> d!1051728 t!288844))

(declare-fun tp!1093330 () Bool)

(declare-fun b_and!256779 () Bool)

(assert (=> b!3568697 (= tp!1093330 (and (=> t!288842 result!247770) (=> t!288844 result!247772) b_and!256779))))

(declare-fun b_free!91351 () Bool)

(declare-fun b_next!92055 () Bool)

(assert (=> b!3568697 (= b_free!91351 (not b_next!92055))))

(declare-fun tb!203199 () Bool)

(declare-fun t!288846 () Bool)

(assert (=> (and b!3568697 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288846) tb!203199))

(declare-fun result!247774 () Bool)

(assert (= result!247774 result!247694))

(assert (=> d!1051402 t!288846))

(declare-fun t!288848 () Bool)

(declare-fun tb!203201 () Bool)

(assert (=> (and b!3568697 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241)))) t!288848) tb!203201))

(declare-fun result!247776 () Bool)

(assert (= result!247776 result!247672))

(assert (=> b!3568010 t!288848))

(assert (=> b!3568685 t!288846))

(declare-fun tb!203203 () Bool)

(declare-fun t!288850 () Bool)

(assert (=> (and b!3568697 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288850) tb!203203))

(declare-fun result!247778 () Bool)

(assert (= result!247778 result!247680))

(assert (=> d!1051340 t!288850))

(assert (=> d!1051320 t!288848))

(declare-fun b_and!256781 () Bool)

(declare-fun tp!1093332 () Bool)

(assert (=> b!3568697 (= tp!1093332 (and (=> t!288848 result!247776) (=> t!288850 result!247778) (=> t!288846 result!247774) b_and!256781))))

(declare-fun e!2207544 () Bool)

(assert (=> b!3568697 (= e!2207544 (and tp!1093330 tp!1093332))))

(declare-fun b!3568696 () Bool)

(declare-fun tp!1093329 () Bool)

(declare-fun e!2207541 () Bool)

(assert (=> b!3568696 (= e!2207541 (and tp!1093329 (inv!50747 (tag!6160 (h!42900 (t!288745 rules!2135)))) (inv!50751 (transformation!5506 (h!42900 (t!288745 rules!2135)))) e!2207544))))

(declare-fun b!3568695 () Bool)

(declare-fun e!2207542 () Bool)

(declare-fun tp!1093331 () Bool)

(assert (=> b!3568695 (= e!2207542 (and e!2207541 tp!1093331))))

(assert (=> b!3567653 (= tp!1093242 e!2207542)))

(assert (= b!3568696 b!3568697))

(assert (= b!3568695 b!3568696))

(assert (= (and b!3567653 ((_ is Cons!37480) (t!288745 rules!2135))) b!3568695))

(declare-fun m!4056229 () Bool)

(assert (=> b!3568696 m!4056229))

(declare-fun m!4056231 () Bool)

(assert (=> b!3568696 m!4056231))

(declare-fun b!3568702 () Bool)

(declare-fun e!2207547 () Bool)

(declare-fun tp_is_empty!17649 () Bool)

(declare-fun tp!1093335 () Bool)

(assert (=> b!3568702 (= e!2207547 (and tp_is_empty!17649 tp!1093335))))

(assert (=> b!3567675 (= tp!1093248 e!2207547)))

(assert (= (and b!3567675 ((_ is Cons!37479) (originalCharacters!6220 (h!42901 tokens!494)))) b!3568702))

(declare-fun b!3568714 () Bool)

(declare-fun e!2207550 () Bool)

(declare-fun tp!1093349 () Bool)

(declare-fun tp!1093350 () Bool)

(assert (=> b!3568714 (= e!2207550 (and tp!1093349 tp!1093350))))

(assert (=> b!3567663 (= tp!1093252 e!2207550)))

(declare-fun b!3568713 () Bool)

(assert (=> b!3568713 (= e!2207550 tp_is_empty!17649)))

(declare-fun b!3568715 () Bool)

(declare-fun tp!1093348 () Bool)

(assert (=> b!3568715 (= e!2207550 tp!1093348)))

(declare-fun b!3568716 () Bool)

(declare-fun tp!1093347 () Bool)

(declare-fun tp!1093346 () Bool)

(assert (=> b!3568716 (= e!2207550 (and tp!1093347 tp!1093346))))

(assert (= (and b!3567663 ((_ is ElementMatch!10265) (regex!5506 (rule!8192 separatorToken!241)))) b!3568713))

(assert (= (and b!3567663 ((_ is Concat!16001) (regex!5506 (rule!8192 separatorToken!241)))) b!3568714))

(assert (= (and b!3567663 ((_ is Star!10265) (regex!5506 (rule!8192 separatorToken!241)))) b!3568715))

(assert (= (and b!3567663 ((_ is Union!10265) (regex!5506 (rule!8192 separatorToken!241)))) b!3568716))

(declare-fun b!3568717 () Bool)

(declare-fun e!2207551 () Bool)

(declare-fun tp!1093351 () Bool)

(assert (=> b!3568717 (= e!2207551 (and tp_is_empty!17649 tp!1093351))))

(assert (=> b!3567658 (= tp!1093246 e!2207551)))

(assert (= (and b!3567658 ((_ is Cons!37479) (originalCharacters!6220 separatorToken!241))) b!3568717))

(declare-fun b!3568720 () Bool)

(declare-fun e!2207554 () Bool)

(assert (=> b!3568720 (= e!2207554 true)))

(declare-fun b!3568719 () Bool)

(declare-fun e!2207553 () Bool)

(assert (=> b!3568719 (= e!2207553 e!2207554)))

(declare-fun b!3568718 () Bool)

(declare-fun e!2207552 () Bool)

(assert (=> b!3568718 (= e!2207552 e!2207553)))

(assert (=> b!3567698 e!2207552))

(assert (= b!3568719 b!3568720))

(assert (= b!3568718 b!3568719))

(assert (= (and b!3567698 ((_ is Cons!37480) (t!288745 rules!2135))) b!3568718))

(assert (=> b!3568720 (< (dynLambda!16075 order!20309 (toValue!7774 (transformation!5506 (h!42900 (t!288745 rules!2135))))) (dynLambda!16076 order!20311 lambda!123391))))

(assert (=> b!3568720 (< (dynLambda!16077 order!20313 (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135))))) (dynLambda!16076 order!20311 lambda!123391))))

(declare-fun b!3568722 () Bool)

(declare-fun e!2207555 () Bool)

(declare-fun tp!1093355 () Bool)

(declare-fun tp!1093356 () Bool)

(assert (=> b!3568722 (= e!2207555 (and tp!1093355 tp!1093356))))

(assert (=> b!3567669 (= tp!1093251 e!2207555)))

(declare-fun b!3568721 () Bool)

(assert (=> b!3568721 (= e!2207555 tp_is_empty!17649)))

(declare-fun b!3568723 () Bool)

(declare-fun tp!1093354 () Bool)

(assert (=> b!3568723 (= e!2207555 tp!1093354)))

(declare-fun b!3568724 () Bool)

(declare-fun tp!1093353 () Bool)

(declare-fun tp!1093352 () Bool)

(assert (=> b!3568724 (= e!2207555 (and tp!1093353 tp!1093352))))

(assert (= (and b!3567669 ((_ is ElementMatch!10265) (regex!5506 (h!42900 rules!2135)))) b!3568721))

(assert (= (and b!3567669 ((_ is Concat!16001) (regex!5506 (h!42900 rules!2135)))) b!3568722))

(assert (= (and b!3567669 ((_ is Star!10265) (regex!5506 (h!42900 rules!2135)))) b!3568723))

(assert (= (and b!3567669 ((_ is Union!10265) (regex!5506 (h!42900 rules!2135)))) b!3568724))

(declare-fun b!3568726 () Bool)

(declare-fun e!2207556 () Bool)

(declare-fun tp!1093360 () Bool)

(declare-fun tp!1093361 () Bool)

(assert (=> b!3568726 (= e!2207556 (and tp!1093360 tp!1093361))))

(assert (=> b!3567668 (= tp!1093247 e!2207556)))

(declare-fun b!3568725 () Bool)

(assert (=> b!3568725 (= e!2207556 tp_is_empty!17649)))

(declare-fun b!3568727 () Bool)

(declare-fun tp!1093359 () Bool)

(assert (=> b!3568727 (= e!2207556 tp!1093359)))

(declare-fun b!3568728 () Bool)

(declare-fun tp!1093358 () Bool)

(declare-fun tp!1093357 () Bool)

(assert (=> b!3568728 (= e!2207556 (and tp!1093358 tp!1093357))))

(assert (= (and b!3567668 ((_ is ElementMatch!10265) (regex!5506 (rule!8192 (h!42901 tokens!494))))) b!3568725))

(assert (= (and b!3567668 ((_ is Concat!16001) (regex!5506 (rule!8192 (h!42901 tokens!494))))) b!3568726))

(assert (= (and b!3567668 ((_ is Star!10265) (regex!5506 (rule!8192 (h!42901 tokens!494))))) b!3568727))

(assert (= (and b!3567668 ((_ is Union!10265) (regex!5506 (rule!8192 (h!42901 tokens!494))))) b!3568728))

(declare-fun b!3568742 () Bool)

(declare-fun b_free!91353 () Bool)

(declare-fun b_next!92057 () Bool)

(assert (=> b!3568742 (= b_free!91353 (not b_next!92057))))

(declare-fun t!288852 () Bool)

(declare-fun tb!203205 () Bool)

(assert (=> (and b!3568742 (= (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288852) tb!203205))

(declare-fun result!247786 () Bool)

(assert (= result!247786 result!247754))

(assert (=> d!1051716 t!288852))

(declare-fun t!288854 () Bool)

(declare-fun tb!203207 () Bool)

(assert (=> (and b!3568742 (= (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288854) tb!203207))

(declare-fun result!247788 () Bool)

(assert (= result!247788 result!247762))

(assert (=> d!1051728 t!288854))

(declare-fun b_and!256783 () Bool)

(declare-fun tp!1093372 () Bool)

(assert (=> b!3568742 (= tp!1093372 (and (=> t!288852 result!247786) (=> t!288854 result!247788) b_and!256783))))

(declare-fun b_free!91355 () Bool)

(declare-fun b_next!92059 () Bool)

(assert (=> b!3568742 (= b_free!91355 (not b_next!92059))))

(declare-fun t!288856 () Bool)

(declare-fun tb!203209 () Bool)

(assert (=> (and b!3568742 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494))))) t!288856) tb!203209))

(declare-fun result!247790 () Bool)

(assert (= result!247790 result!247694))

(assert (=> d!1051402 t!288856))

(declare-fun t!288858 () Bool)

(declare-fun tb!203211 () Bool)

(assert (=> (and b!3568742 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241)))) t!288858) tb!203211))

(declare-fun result!247792 () Bool)

(assert (= result!247792 result!247672))

(assert (=> b!3568010 t!288858))

(assert (=> b!3568685 t!288856))

(declare-fun t!288860 () Bool)

(declare-fun tb!203213 () Bool)

(assert (=> (and b!3568742 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494)))))) t!288860) tb!203213))

(declare-fun result!247794 () Bool)

(assert (= result!247794 result!247680))

(assert (=> d!1051340 t!288860))

(assert (=> d!1051320 t!288858))

(declare-fun b_and!256785 () Bool)

(declare-fun tp!1093373 () Bool)

(assert (=> b!3568742 (= tp!1093373 (and (=> t!288860 result!247794) (=> t!288856 result!247790) (=> t!288858 result!247792) b_and!256785))))

(declare-fun e!2207570 () Bool)

(assert (=> b!3567679 (= tp!1093249 e!2207570)))

(declare-fun b!3568739 () Bool)

(declare-fun e!2207572 () Bool)

(declare-fun tp!1093375 () Bool)

(assert (=> b!3568739 (= e!2207570 (and (inv!50750 (h!42901 (t!288746 tokens!494))) e!2207572 tp!1093375))))

(declare-fun e!2207571 () Bool)

(assert (=> b!3568742 (= e!2207571 (and tp!1093372 tp!1093373))))

(declare-fun tp!1093376 () Bool)

(declare-fun b!3568740 () Bool)

(declare-fun e!2207569 () Bool)

(assert (=> b!3568740 (= e!2207572 (and (inv!21 (value!177381 (h!42901 (t!288746 tokens!494)))) e!2207569 tp!1093376))))

(declare-fun tp!1093374 () Bool)

(declare-fun b!3568741 () Bool)

(assert (=> b!3568741 (= e!2207569 (and tp!1093374 (inv!50747 (tag!6160 (rule!8192 (h!42901 (t!288746 tokens!494))))) (inv!50751 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) e!2207571))))

(assert (= b!3568741 b!3568742))

(assert (= b!3568740 b!3568741))

(assert (= b!3568739 b!3568740))

(assert (= (and b!3567679 ((_ is Cons!37481) (t!288746 tokens!494))) b!3568739))

(declare-fun m!4056233 () Bool)

(assert (=> b!3568739 m!4056233))

(declare-fun m!4056235 () Bool)

(assert (=> b!3568740 m!4056235))

(declare-fun m!4056237 () Bool)

(assert (=> b!3568741 m!4056237))

(declare-fun m!4056239 () Bool)

(assert (=> b!3568741 m!4056239))

(declare-fun b_lambda!105117 () Bool)

(assert (= b_lambda!105069 (or b!3567655 b_lambda!105117)))

(declare-fun bs!569061 () Bool)

(declare-fun d!1051752 () Bool)

(assert (= bs!569061 (and d!1051752 b!3567655)))

(assert (=> bs!569061 (= (dynLambda!16081 lambda!123390 (h!42901 tokens!494)) (not (isSeparator!5506 (rule!8192 (h!42901 tokens!494)))))))

(assert (=> d!1051422 d!1051752))

(declare-fun b_lambda!105119 () Bool)

(assert (= b_lambda!105115 (or (and b!3568697 b_free!91351 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3567660 b_free!91331) (and b!3567674 b_free!91335 (= (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3568742 b_free!91355 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3567686 b_free!91339 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) b_lambda!105119)))

(declare-fun b_lambda!105121 () Bool)

(assert (= b_lambda!105113 (or (and b!3567660 b_free!91329) (and b!3568697 b_free!91349 (= (toValue!7774 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3568742 b_free!91353 (= (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3567674 b_free!91333 (= (toValue!7774 (transformation!5506 (rule!8192 separatorToken!241))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3567686 b_free!91337 (= (toValue!7774 (transformation!5506 (h!42900 rules!2135))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) b_lambda!105121)))

(declare-fun b_lambda!105123 () Bool)

(assert (= b_lambda!105061 (or (and b!3568697 b_free!91351 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3567686 b_free!91339 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3567660 b_free!91331 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3568742 b_free!91355 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3567674 b_free!91335) b_lambda!105123)))

(declare-fun b_lambda!105125 () Bool)

(assert (= b_lambda!105051 (or (and b!3568697 b_free!91351 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3567686 b_free!91339 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3567660 b_free!91331 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3568742 b_free!91355 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))))) (and b!3567674 b_free!91335) b_lambda!105125)))

(declare-fun b_lambda!105127 () Bool)

(assert (= b_lambda!105111 (or (and b!3567674 b_free!91333 (= (toValue!7774 (transformation!5506 (rule!8192 separatorToken!241))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (and b!3568697 b_free!91349 (= (toValue!7774 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (and b!3568742 b_free!91353) (and b!3567686 b_free!91337 (= (toValue!7774 (transformation!5506 (h!42900 rules!2135))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (and b!3567660 b_free!91329 (= (toValue!7774 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toValue!7774 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) b_lambda!105127)))

(declare-fun b_lambda!105129 () Bool)

(assert (= b_lambda!105067 (or b!3567655 b_lambda!105129)))

(declare-fun bs!569062 () Bool)

(declare-fun d!1051754 () Bool)

(assert (= bs!569062 (and d!1051754 b!3567655)))

(assert (=> bs!569062 (= (dynLambda!16081 lambda!123390 (h!42901 (t!288746 tokens!494))) (not (isSeparator!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))))

(assert (=> d!1051420 d!1051754))

(declare-fun b_lambda!105131 () Bool)

(assert (= b_lambda!105053 (or (and b!3568742 b_free!91355) (and b!3567660 b_free!91331 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (and b!3567686 b_free!91339 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (and b!3568697 b_free!91351 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) (and b!3567674 b_free!91335 (= (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))))) b_lambda!105131)))

(declare-fun b_lambda!105133 () Bool)

(assert (= b_lambda!105063 (or (and b!3568697 b_free!91351 (= (toChars!7633 (transformation!5506 (h!42900 (t!288745 rules!2135)))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3567660 b_free!91331) (and b!3567674 b_free!91335 (= (toChars!7633 (transformation!5506 (rule!8192 separatorToken!241))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3568742 b_free!91355 (= (toChars!7633 (transformation!5506 (rule!8192 (h!42901 (t!288746 tokens!494))))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) (and b!3567686 b_free!91339 (= (toChars!7633 (transformation!5506 (h!42900 rules!2135))) (toChars!7633 (transformation!5506 (rule!8192 (h!42901 tokens!494)))))) b_lambda!105133)))

(declare-fun b_lambda!105135 () Bool)

(assert (= b_lambda!105055 (or b!3567655 b_lambda!105135)))

(assert (=> b!3567853 d!1051752))

(declare-fun b_lambda!105137 () Bool)

(assert (= b_lambda!105109 (or b!3567678 b_lambda!105137)))

(declare-fun bs!569063 () Bool)

(declare-fun d!1051756 () Bool)

(assert (= bs!569063 (and d!1051756 b!3567678)))

(assert (=> bs!569063 (= (dynLambda!16081 lambda!123391 (h!42901 (t!288746 tokens!494))) (rulesProduceIndividualToken!2587 thiss!18206 rules!2135 (h!42901 (t!288746 tokens!494))))))

(assert (=> bs!569063 m!4054385))

(assert (=> d!1051704 d!1051756))

(check-sat (not b!3568115) (not d!1051504) (not b!3568135) (not b_lambda!105123) (not b!3568717) (not b!3568120) (not b_next!92037) (not b!3567717) b_and!256785 (not d!1051458) (not b_lambda!105129) (not b!3568741) (not b!3568055) (not b!3568614) (not b!3567827) (not b!3568414) (not d!1051702) (not b!3567823) (not d!1051368) (not d!1051370) (not d!1051414) (not b!3568047) (not b!3568641) (not b!3568086) (not d!1051586) (not d!1051738) (not b!3567756) (not b!3568418) (not bm!258650) (not b_next!92039) (not d!1051484) (not d!1051694) (not b!3568244) (not d!1051746) (not b!3568118) (not d!1051584) (not d!1051622) (not b!3568632) (not b!3568660) (not b!3568739) (not b!3568182) (not b!3567836) (not d!1051718) (not b!3568678) (not d!1051742) (not d!1051460) (not b!3568056) (not b_next!92053) (not b!3568320) (not d!1051714) (not b!3568184) (not b_lambda!105125) (not d!1051696) (not b!3568468) (not d!1051722) b_and!256769 (not b!3568253) (not d!1051470) (not d!1051332) (not d!1051418) (not d!1051734) (not d!1051698) (not b!3567980) (not b!3568166) (not b_lambda!105119) (not b!3568052) (not b!3568181) (not b!3567840) (not b!3568662) (not bm!258649) (not b!3568611) (not d!1051736) (not d!1051488) (not d!1051710) (not d!1051348) (not b!3568094) (not tb!203133) (not b!3568114) (not d!1051704) (not d!1051322) (not bm!258680) (not b_next!92043) (not b!3568136) (not d!1051428) tp_is_empty!17649 (not b!3568139) (not b!3568656) (not b!3568023) b_and!256771 (not b!3568191) (not d!1051546) (not b!3568243) (not d!1051572) (not b!3568200) (not b!3568322) (not b!3568369) (not b_lambda!105131) (not b!3568177) (not b!3568633) (not d!1051688) (not b!3568465) (not b!3568063) b_and!256781 (not b!3567714) (not b!3567819) (not b!3568010) (not d!1051634) (not b!3567985) (not b!3568011) b_and!256767 (not d!1051444) (not d!1051732) (not b!3568651) (not b!3567986) (not b!3568325) (not b!3567912) (not b!3568612) (not d!1051550) (not d!1051554) b_and!256775 (not bm!258678) (not b!3568626) (not d!1051324) (not bm!258664) (not b!3568686) (not d!1051692) b_and!256783 (not b!3568046) (not bm!258635) (not b!3568419) (not b!3567755) (not tb!203183) (not b!3568097) (not b!3568696) (not b!3568727) (not b!3567828) (not b!3568615) (not b!3568099) (not b!3567979) (not b!3568327) (not d!1051314) (not b!3567983) (not b!3568723) (not b!3567856) (not d!1051686) (not b!3568654) (not b!3568416) (not b!3568629) (not tb!203121) (not bm!258648) (not b!3567982) (not d!1051724) (not bm!258634) (not b_next!92055) (not b!3567830) (not d!1051330) (not b!3567911) (not d!1051436) (not b!3568616) (not b!3568263) (not b!3568676) (not d!1051690) (not d!1051452) (not b!3568635) (not d!1051556) (not b!3568714) (not d!1051720) (not b_next!92059) (not b!3567824) (not b!3568467) (not b!3568324) (not d!1051466) (not b!3568133) (not b!3568065) (not b!3568100) (not d!1051422) (not bm!258636) (not d!1051590) (not b!3567752) (not b!3568203) (not b!3568683) (not b_lambda!105127) (not d!1051392) (not b!3567753) (not b!3568350) (not b!3568625) (not b!3568167) (not b!3568728) (not b_next!92035) (not bm!258665) (not b_lambda!105117) (not d!1051408) (not b!3567795) (not b!3568631) (not b!3568644) (not d!1051628) b_and!256779 (not bm!258679) (not d!1051404) (not d!1051450) (not tb!203115) (not b!3568043) (not b!3568201) (not b!3568724) (not b!3568415) (not b!3568685) (not b!3568652) (not b!3568649) (not d!1051490) (not d!1051618) (not b!3568193) (not d!1051542) (not b!3568351) (not b!3568716) (not d!1051306) (not b!3568472) (not b!3567981) (not b!3568247) (not b!3568628) b_and!256773 (not b!3568119) (not d!1051468) (not b!3568346) (not b!3568695) (not b!3568618) (not d!1051424) (not d!1051708) (not b!3568252) (not b!3568620) (not b!3568107) (not d!1051624) (not b!3568038) (not b_next!92033) (not b!3568624) (not b!3568091) (not b!3567910) (not d!1051726) (not d!1051420) (not d!1051498) (not b!3568726) (not b!3568098) (not bm!258629) (not b_lambda!105137) b_and!256777 (not d!1051340) (not tb!203189) (not b_lambda!105133) (not d!1051748) (not b!3568113) (not b_lambda!105135) (not d!1051568) (not bm!258625) (not d!1051372) (not b!3568269) (not b!3568659) (not d!1051400) (not d!1051438) (not d!1051304) (not d!1051402) (not bm!258666) (not b_lambda!105121) (not b!3568132) (not b!3568321) (not b!3567906) (not b!3568192) (not b!3568183) (not b!3568251) (not b!3568248) (not b_next!92041) (not b!3568471) (not b!3568168) (not b!3567761) (not b!3568653) (not b!3568640) (not b!3568093) (not b!3567984) (not b!3568718) (not b!3568715) (not d!1051614) (not b!3568658) (not d!1051388) (not b!3568319) (not b!3568648) (not b_next!92057) (not b!3568617) (not b!3568627) (not b!3568323) (not d!1051750) (not b!3568671) (not bs!569063) (not b!3568702) (not b!3568469) (not d!1051462) (not b!3568722) (not b!3568613) (not d!1051700) (not b!3568140) (not b!3568178) (not d!1051338) (not d!1051320) (not b!3568740) (not b!3568121) (not b!3568198) (not bm!258638) (not b!3567905) (not b!3568622) (not d!1051730) (not b!3567820) (not b!3567909) (not b!3568619) (not b!3567715) (not b!3568630) (not b!3568675) (not bm!258677) (not b!3568254))
(check-sat (not b_next!92039) (not b_next!92053) b_and!256769 (not b_next!92043) b_and!256771 b_and!256781 b_and!256767 b_and!256775 b_and!256783 (not b_next!92055) (not b_next!92059) b_and!256773 (not b_next!92033) b_and!256777 (not b_next!92041) (not b_next!92057) (not b_next!92037) b_and!256785 b_and!256779 (not b_next!92035))
