; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!198464 () Bool)

(assert start!198464)

(declare-fun b!2016653 () Bool)

(declare-fun b_free!56353 () Bool)

(declare-fun b_next!57057 () Bool)

(assert (=> b!2016653 (= b_free!56353 (not b_next!57057))))

(declare-fun tp!600998 () Bool)

(declare-fun b_and!159765 () Bool)

(assert (=> b!2016653 (= tp!600998 b_and!159765)))

(declare-fun b_free!56355 () Bool)

(declare-fun b_next!57059 () Bool)

(assert (=> b!2016653 (= b_free!56355 (not b_next!57059))))

(declare-fun tp!600997 () Bool)

(declare-fun b_and!159767 () Bool)

(assert (=> b!2016653 (= tp!600997 b_and!159767)))

(declare-fun b!2016640 () Bool)

(declare-fun b_free!56357 () Bool)

(declare-fun b_next!57061 () Bool)

(assert (=> b!2016640 (= b_free!56357 (not b_next!57061))))

(declare-fun tp!601005 () Bool)

(declare-fun b_and!159769 () Bool)

(assert (=> b!2016640 (= tp!601005 b_and!159769)))

(declare-fun b_free!56359 () Bool)

(declare-fun b_next!57063 () Bool)

(assert (=> b!2016640 (= b_free!56359 (not b_next!57063))))

(declare-fun tp!601007 () Bool)

(declare-fun b_and!159771 () Bool)

(assert (=> b!2016640 (= tp!601007 b_and!159771)))

(declare-fun b!2016646 () Bool)

(declare-fun b_free!56361 () Bool)

(declare-fun b_next!57065 () Bool)

(assert (=> b!2016646 (= b_free!56361 (not b_next!57065))))

(declare-fun tp!601000 () Bool)

(declare-fun b_and!159773 () Bool)

(assert (=> b!2016646 (= tp!601000 b_and!159773)))

(declare-fun b_free!56363 () Bool)

(declare-fun b_next!57067 () Bool)

(assert (=> b!2016646 (= b_free!56363 (not b_next!57067))))

(declare-fun tp!601001 () Bool)

(declare-fun b_and!159775 () Bool)

(assert (=> b!2016646 (= tp!601001 b_and!159775)))

(declare-fun b!2016635 () Bool)

(declare-fun res!884663 () Bool)

(declare-fun e!1274425 () Bool)

(assert (=> b!2016635 (=> (not res!884663) (not e!1274425))))

(declare-datatypes ((List!22236 0))(
  ( (Nil!22154) (Cons!22154 (h!27555 (_ BitVec 16)) (t!188401 List!22236)) )
))
(declare-datatypes ((TokenValue!4116 0))(
  ( (FloatLiteralValue!8232 (text!29257 List!22236)) (TokenValueExt!4115 (__x!13730 Int)) (Broken!20580 (value!124995 List!22236)) (Object!4197) (End!4116) (Def!4116) (Underscore!4116) (Match!4116) (Else!4116) (Error!4116) (Case!4116) (If!4116) (Extends!4116) (Abstract!4116) (Class!4116) (Val!4116) (DelimiterValue!8232 (del!4176 List!22236)) (KeywordValue!4122 (value!124996 List!22236)) (CommentValue!8232 (value!124997 List!22236)) (WhitespaceValue!8232 (value!124998 List!22236)) (IndentationValue!4116 (value!124999 List!22236)) (String!25697) (Int32!4116) (Broken!20581 (value!125000 List!22236)) (Boolean!4117) (Unit!36749) (OperatorValue!4119 (op!4176 List!22236)) (IdentifierValue!8232 (value!125001 List!22236)) (IdentifierValue!8233 (value!125002 List!22236)) (WhitespaceValue!8233 (value!125003 List!22236)) (True!8232) (False!8232) (Broken!20582 (value!125004 List!22236)) (Broken!20583 (value!125005 List!22236)) (True!8233) (RightBrace!4116) (RightBracket!4116) (Colon!4116) (Null!4116) (Comma!4116) (LeftBracket!4116) (False!8233) (LeftBrace!4116) (ImaginaryLiteralValue!4116 (text!29258 List!22236)) (StringLiteralValue!12348 (value!125006 List!22236)) (EOFValue!4116 (value!125007 List!22236)) (IdentValue!4116 (value!125008 List!22236)) (DelimiterValue!8233 (value!125009 List!22236)) (DedentValue!4116 (value!125010 List!22236)) (NewLineValue!4116 (value!125011 List!22236)) (IntegerValue!12348 (value!125012 (_ BitVec 32)) (text!29259 List!22236)) (IntegerValue!12349 (value!125013 Int) (text!29260 List!22236)) (Times!4116) (Or!4116) (Equal!4116) (Minus!4116) (Broken!20584 (value!125014 List!22236)) (And!4116) (Div!4116) (LessEqual!4116) (Mod!4116) (Concat!9521) (Not!4116) (Plus!4116) (SpaceValue!4116 (value!125015 List!22236)) (IntegerValue!12350 (value!125016 Int) (text!29261 List!22236)) (StringLiteralValue!12349 (text!29262 List!22236)) (FloatLiteralValue!8233 (text!29263 List!22236)) (BytesLiteralValue!4116 (value!125017 List!22236)) (CommentValue!8233 (value!125018 List!22236)) (StringLiteralValue!12350 (value!125019 List!22236)) (ErrorTokenValue!4116 (msg!4177 List!22236)) )
))
(declare-datatypes ((C!10956 0))(
  ( (C!10957 (val!6430 Int)) )
))
(declare-datatypes ((List!22237 0))(
  ( (Nil!22155) (Cons!22155 (h!27556 C!10956) (t!188402 List!22237)) )
))
(declare-datatypes ((String!25698 0))(
  ( (String!25699 (value!125020 String)) )
))
(declare-datatypes ((Regex!5405 0))(
  ( (ElementMatch!5405 (c!325754 C!10956)) (Concat!9522 (regOne!11322 Regex!5405) (regTwo!11322 Regex!5405)) (EmptyExpr!5405) (Star!5405 (reg!5734 Regex!5405)) (EmptyLang!5405) (Union!5405 (regOne!11323 Regex!5405) (regTwo!11323 Regex!5405)) )
))
(declare-datatypes ((IArray!14817 0))(
  ( (IArray!14818 (innerList!7466 List!22237)) )
))
(declare-datatypes ((Conc!7406 0))(
  ( (Node!7406 (left!17626 Conc!7406) (right!17956 Conc!7406) (csize!15042 Int) (cheight!7617 Int)) (Leaf!10859 (xs!10304 IArray!14817) (csize!15043 Int)) (Empty!7406) )
))
(declare-datatypes ((BalanceConc!14628 0))(
  ( (BalanceConc!14629 (c!325755 Conc!7406)) )
))
(declare-datatypes ((TokenValueInjection!7816 0))(
  ( (TokenValueInjection!7817 (toValue!5649 Int) (toChars!5508 Int)) )
))
(declare-datatypes ((Rule!7760 0))(
  ( (Rule!7761 (regex!3980 Regex!5405) (tag!4458 String!25698) (isSeparator!3980 Bool) (transformation!3980 TokenValueInjection!7816)) )
))
(declare-datatypes ((Token!7512 0))(
  ( (Token!7513 (value!125021 TokenValue!4116) (rule!6207 Rule!7760) (size!17306 Int) (originalCharacters!4787 List!22237)) )
))
(declare-fun separatorToken!354 () Token!7512)

(assert (=> b!2016635 (= res!884663 (isSeparator!3980 (rule!6207 separatorToken!354)))))

(declare-fun b!2016637 () Bool)

(declare-fun res!884655 () Bool)

(assert (=> b!2016637 (=> (not res!884655) (not e!1274425))))

(declare-datatypes ((List!22238 0))(
  ( (Nil!22156) (Cons!22156 (h!27557 Rule!7760) (t!188403 List!22238)) )
))
(declare-fun rules!3198 () List!22238)

(declare-fun isEmpty!13779 (List!22238) Bool)

(assert (=> b!2016637 (= res!884655 (not (isEmpty!13779 rules!3198)))))

(declare-fun e!1274418 () Bool)

(declare-fun tp!601008 () Bool)

(declare-fun e!1274422 () Bool)

(declare-fun b!2016638 () Bool)

(declare-fun inv!29320 (String!25698) Bool)

(declare-fun inv!29323 (TokenValueInjection!7816) Bool)

(assert (=> b!2016638 (= e!1274422 (and tp!601008 (inv!29320 (tag!4458 (rule!6207 separatorToken!354))) (inv!29323 (transformation!3980 (rule!6207 separatorToken!354))) e!1274418))))

(declare-fun b!2016639 () Bool)

(declare-fun e!1274402 () Bool)

(declare-fun e!1274416 () Bool)

(assert (=> b!2016639 (= e!1274402 e!1274416)))

(declare-fun res!884665 () Bool)

(assert (=> b!2016639 (=> (not res!884665) (not e!1274416))))

(declare-fun lt!757316 () Rule!7760)

(declare-fun lt!757335 () List!22237)

(declare-fun matchR!2671 (Regex!5405 List!22237) Bool)

(assert (=> b!2016639 (= res!884665 (matchR!2671 (regex!3980 lt!757316) lt!757335))))

(declare-datatypes ((Option!4641 0))(
  ( (None!4640) (Some!4640 (v!26921 Rule!7760)) )
))
(declare-fun lt!757336 () Option!4641)

(declare-fun get!7022 (Option!4641) Rule!7760)

(assert (=> b!2016639 (= lt!757316 (get!7022 lt!757336))))

(assert (=> b!2016640 (= e!1274418 (and tp!601005 tp!601007))))

(declare-fun tp!601004 () Bool)

(declare-fun e!1274423 () Bool)

(declare-fun e!1274414 () Bool)

(declare-fun b!2016641 () Bool)

(declare-datatypes ((List!22239 0))(
  ( (Nil!22157) (Cons!22157 (h!27558 Token!7512) (t!188404 List!22239)) )
))
(declare-fun tokens!598 () List!22239)

(declare-fun inv!21 (TokenValue!4116) Bool)

(assert (=> b!2016641 (= e!1274423 (and (inv!21 (value!125021 (h!27558 tokens!598))) e!1274414 tp!601004))))

(declare-fun b!2016642 () Bool)

(declare-fun e!1274405 () Bool)

(declare-fun e!1274420 () Bool)

(assert (=> b!2016642 (= e!1274405 e!1274420)))

(declare-fun res!884656 () Bool)

(assert (=> b!2016642 (=> res!884656 e!1274420)))

(declare-fun lt!757326 () List!22237)

(declare-fun lt!757325 () List!22237)

(declare-fun lt!757333 () List!22237)

(assert (=> b!2016642 (= res!884656 (or (not (= lt!757325 lt!757326)) (not (= lt!757326 lt!757333)) (not (= lt!757325 lt!757333))))))

(declare-datatypes ((LexerInterface!3593 0))(
  ( (LexerInterfaceExt!3590 (__x!13731 Int)) (Lexer!3591) )
))
(declare-fun thiss!23328 () LexerInterface!3593)

(declare-fun printList!1112 (LexerInterface!3593 List!22239) List!22237)

(assert (=> b!2016642 (= lt!757326 (printList!1112 thiss!23328 (Cons!22157 (h!27558 tokens!598) Nil!22157)))))

(declare-fun lt!757317 () BalanceConc!14628)

(declare-fun list!9033 (BalanceConc!14628) List!22237)

(assert (=> b!2016642 (= lt!757325 (list!9033 lt!757317))))

(declare-datatypes ((IArray!14819 0))(
  ( (IArray!14820 (innerList!7467 List!22239)) )
))
(declare-datatypes ((Conc!7407 0))(
  ( (Node!7407 (left!17627 Conc!7407) (right!17957 Conc!7407) (csize!15044 Int) (cheight!7618 Int)) (Leaf!10860 (xs!10305 IArray!14819) (csize!15045 Int)) (Empty!7407) )
))
(declare-datatypes ((BalanceConc!14630 0))(
  ( (BalanceConc!14631 (c!325756 Conc!7407)) )
))
(declare-fun lt!757324 () BalanceConc!14630)

(declare-fun printTailRec!1061 (LexerInterface!3593 BalanceConc!14630 Int BalanceConc!14628) BalanceConc!14628)

(assert (=> b!2016642 (= lt!757317 (printTailRec!1061 thiss!23328 lt!757324 0 (BalanceConc!14629 Empty!7406)))))

(declare-fun print!1555 (LexerInterface!3593 BalanceConc!14630) BalanceConc!14628)

(assert (=> b!2016642 (= lt!757317 (print!1555 thiss!23328 lt!757324))))

(declare-fun singletonSeq!1956 (Token!7512) BalanceConc!14630)

(assert (=> b!2016642 (= lt!757324 (singletonSeq!1956 (h!27558 tokens!598)))))

(declare-fun lt!757327 () C!10956)

(declare-fun contains!4071 (List!22237 C!10956) Bool)

(declare-fun usedCharacters!418 (Regex!5405) List!22237)

(assert (=> b!2016642 (not (contains!4071 (usedCharacters!418 (regex!3980 (rule!6207 (h!27558 tokens!598)))) lt!757327))))

(declare-datatypes ((Unit!36750 0))(
  ( (Unit!36751) )
))
(declare-fun lt!757321 () Unit!36750)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!90 (LexerInterface!3593 List!22238 List!22238 Rule!7760 Rule!7760 C!10956) Unit!36750)

(assert (=> b!2016642 (= lt!757321 (lemmaNonSepRuleNotContainsCharContainedInASepRule!90 thiss!23328 rules!3198 rules!3198 (rule!6207 (h!27558 tokens!598)) (rule!6207 separatorToken!354) lt!757327))))

(declare-fun lt!757320 () Unit!36750)

(declare-fun e!1274403 () Unit!36750)

(assert (=> b!2016642 (= lt!757320 e!1274403)))

(declare-fun c!325753 () Bool)

(assert (=> b!2016642 (= c!325753 (not (contains!4071 (usedCharacters!418 (regex!3980 (rule!6207 separatorToken!354))) lt!757327)))))

(declare-fun head!4564 (List!22237) C!10956)

(assert (=> b!2016642 (= lt!757327 (head!4564 lt!757335))))

(declare-fun lt!757312 () List!22237)

(declare-fun ++!5981 (List!22237 List!22237) List!22237)

(assert (=> b!2016642 (= (++!5981 (++!5981 lt!757333 lt!757335) lt!757312) (++!5981 lt!757333 (++!5981 lt!757335 lt!757312)))))

(declare-fun lt!757323 () Unit!36750)

(declare-fun lemmaConcatAssociativity!1243 (List!22237 List!22237 List!22237) Unit!36750)

(assert (=> b!2016642 (= lt!757323 (lemmaConcatAssociativity!1243 lt!757333 lt!757335 lt!757312))))

(declare-fun b!2016643 () Bool)

(declare-fun res!884654 () Bool)

(assert (=> b!2016643 (=> (not res!884654) (not e!1274425))))

(declare-fun lambda!76285 () Int)

(declare-fun forall!4708 (List!22239 Int) Bool)

(assert (=> b!2016643 (= res!884654 (forall!4708 tokens!598 lambda!76285))))

(declare-fun b!2016644 () Bool)

(declare-fun res!884649 () Bool)

(assert (=> b!2016644 (=> res!884649 e!1274420)))

(declare-fun isEmpty!13780 (BalanceConc!14630) Bool)

(declare-datatypes ((tuple2!20820 0))(
  ( (tuple2!20821 (_1!11879 BalanceConc!14630) (_2!11879 BalanceConc!14628)) )
))
(declare-fun lex!1609 (LexerInterface!3593 List!22238 BalanceConc!14628) tuple2!20820)

(declare-fun seqFromList!2834 (List!22237) BalanceConc!14628)

(assert (=> b!2016644 (= res!884649 (isEmpty!13780 (_1!11879 (lex!1609 thiss!23328 rules!3198 (seqFromList!2834 lt!757333)))))))

(declare-fun b!2016645 () Bool)

(declare-fun res!884648 () Bool)

(assert (=> b!2016645 (=> (not res!884648) (not e!1274425))))

(declare-fun rulesProduceIndividualToken!1765 (LexerInterface!3593 List!22238 Token!7512) Bool)

(assert (=> b!2016645 (= res!884648 (rulesProduceIndividualToken!1765 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1274410 () Bool)

(assert (=> b!2016646 (= e!1274410 (and tp!601000 tp!601001))))

(declare-fun b!2016647 () Bool)

(declare-fun res!884661 () Bool)

(assert (=> b!2016647 (=> res!884661 e!1274420)))

(assert (=> b!2016647 (= res!884661 (not (rulesProduceIndividualToken!1765 thiss!23328 rules!3198 (h!27558 tokens!598))))))

(declare-fun b!2016636 () Bool)

(assert (=> b!2016636 (= e!1274425 (not e!1274405))))

(declare-fun res!884657 () Bool)

(assert (=> b!2016636 (=> res!884657 e!1274405)))

(declare-fun lt!757329 () Bool)

(declare-datatypes ((tuple2!20822 0))(
  ( (tuple2!20823 (_1!11880 Token!7512) (_2!11880 List!22237)) )
))
(declare-datatypes ((Option!4642 0))(
  ( (None!4641) (Some!4641 (v!26922 tuple2!20822)) )
))
(declare-fun lt!757330 () Option!4642)

(assert (=> b!2016636 (= res!884657 (or (and (not lt!757329) (= (_1!11880 (v!26922 lt!757330)) (h!27558 tokens!598))) lt!757329 (= (_1!11880 (v!26922 lt!757330)) (h!27558 tokens!598))))))

(get-info :version)

(assert (=> b!2016636 (= lt!757329 (not ((_ is Some!4641) lt!757330)))))

(declare-fun maxPrefix!2029 (LexerInterface!3593 List!22238 List!22237) Option!4642)

(assert (=> b!2016636 (= lt!757330 (maxPrefix!2029 thiss!23328 rules!3198 (++!5981 lt!757333 lt!757312)))))

(declare-fun printWithSeparatorTokenWhenNeededList!622 (LexerInterface!3593 List!22238 List!22239 Token!7512) List!22237)

(assert (=> b!2016636 (= lt!757312 (printWithSeparatorTokenWhenNeededList!622 thiss!23328 rules!3198 (t!188404 tokens!598) separatorToken!354))))

(declare-fun e!1274421 () Bool)

(assert (=> b!2016636 e!1274421))

(declare-fun res!884652 () Bool)

(assert (=> b!2016636 (=> (not res!884652) (not e!1274421))))

(declare-fun lt!757322 () Option!4641)

(declare-fun isDefined!3929 (Option!4641) Bool)

(assert (=> b!2016636 (= res!884652 (isDefined!3929 lt!757322))))

(declare-fun getRuleFromTag!795 (LexerInterface!3593 List!22238 String!25698) Option!4641)

(assert (=> b!2016636 (= lt!757322 (getRuleFromTag!795 thiss!23328 rules!3198 (tag!4458 (rule!6207 (h!27558 tokens!598)))))))

(declare-fun lt!757332 () Unit!36750)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!795 (LexerInterface!3593 List!22238 List!22237 Token!7512) Unit!36750)

(assert (=> b!2016636 (= lt!757332 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!795 thiss!23328 rules!3198 lt!757333 (h!27558 tokens!598)))))

(declare-fun e!1274413 () Bool)

(assert (=> b!2016636 e!1274413))

(declare-fun res!884646 () Bool)

(assert (=> b!2016636 (=> (not res!884646) (not e!1274413))))

(declare-fun lt!757331 () Option!4642)

(declare-fun isDefined!3930 (Option!4642) Bool)

(assert (=> b!2016636 (= res!884646 (isDefined!3930 lt!757331))))

(assert (=> b!2016636 (= lt!757331 (maxPrefix!2029 thiss!23328 rules!3198 lt!757333))))

(declare-fun lt!757319 () BalanceConc!14628)

(assert (=> b!2016636 (= lt!757333 (list!9033 lt!757319))))

(assert (=> b!2016636 e!1274402))

(declare-fun res!884662 () Bool)

(assert (=> b!2016636 (=> (not res!884662) (not e!1274402))))

(assert (=> b!2016636 (= res!884662 (isDefined!3929 lt!757336))))

(assert (=> b!2016636 (= lt!757336 (getRuleFromTag!795 thiss!23328 rules!3198 (tag!4458 (rule!6207 separatorToken!354))))))

(declare-fun lt!757314 () Unit!36750)

(assert (=> b!2016636 (= lt!757314 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!795 thiss!23328 rules!3198 lt!757335 separatorToken!354))))

(declare-fun charsOf!2520 (Token!7512) BalanceConc!14628)

(assert (=> b!2016636 (= lt!757335 (list!9033 (charsOf!2520 separatorToken!354)))))

(declare-fun lt!757328 () Unit!36750)

(declare-fun lemmaEqSameImage!666 (TokenValueInjection!7816 BalanceConc!14628 BalanceConc!14628) Unit!36750)

(assert (=> b!2016636 (= lt!757328 (lemmaEqSameImage!666 (transformation!3980 (rule!6207 (h!27558 tokens!598))) lt!757319 (seqFromList!2834 (originalCharacters!4787 (h!27558 tokens!598)))))))

(declare-fun lt!757318 () Unit!36750)

(declare-fun lemmaSemiInverse!937 (TokenValueInjection!7816 BalanceConc!14628) Unit!36750)

(assert (=> b!2016636 (= lt!757318 (lemmaSemiInverse!937 (transformation!3980 (rule!6207 (h!27558 tokens!598))) lt!757319))))

(assert (=> b!2016636 (= lt!757319 (charsOf!2520 (h!27558 tokens!598)))))

(declare-fun res!884650 () Bool)

(assert (=> start!198464 (=> (not res!884650) (not e!1274425))))

(assert (=> start!198464 (= res!884650 ((_ is Lexer!3591) thiss!23328))))

(assert (=> start!198464 e!1274425))

(assert (=> start!198464 true))

(declare-fun e!1274424 () Bool)

(assert (=> start!198464 e!1274424))

(declare-fun e!1274411 () Bool)

(assert (=> start!198464 e!1274411))

(declare-fun e!1274408 () Bool)

(declare-fun inv!29324 (Token!7512) Bool)

(assert (=> start!198464 (and (inv!29324 separatorToken!354) e!1274408)))

(declare-fun b!2016648 () Bool)

(declare-fun get!7023 (Option!4642) tuple2!20822)

(assert (=> b!2016648 (= e!1274413 (= (_1!11880 (get!7023 lt!757331)) (h!27558 tokens!598)))))

(declare-fun b!2016649 () Bool)

(declare-fun e!1274407 () Bool)

(declare-fun lt!757313 () Rule!7760)

(assert (=> b!2016649 (= e!1274407 (= (rule!6207 (h!27558 tokens!598)) lt!757313))))

(declare-fun b!2016650 () Bool)

(declare-fun res!884664 () Bool)

(assert (=> b!2016650 (=> (not res!884664) (not e!1274425))))

(declare-fun rulesInvariant!3200 (LexerInterface!3593 List!22238) Bool)

(assert (=> b!2016650 (= res!884664 (rulesInvariant!3200 thiss!23328 rules!3198))))

(declare-fun b!2016651 () Bool)

(assert (=> b!2016651 (= e!1274420 true)))

(declare-fun lt!757334 () Bool)

(declare-fun contains!4072 (List!22238 Rule!7760) Bool)

(assert (=> b!2016651 (= lt!757334 (contains!4072 rules!3198 (rule!6207 separatorToken!354)))))

(declare-fun b!2016652 () Bool)

(declare-fun res!884660 () Bool)

(assert (=> b!2016652 (=> (not res!884660) (not e!1274425))))

(assert (=> b!2016652 (= res!884660 ((_ is Cons!22157) tokens!598))))

(declare-fun e!1274419 () Bool)

(assert (=> b!2016653 (= e!1274419 (and tp!600998 tp!600997))))

(declare-fun b!2016654 () Bool)

(assert (=> b!2016654 (= e!1274416 (= (rule!6207 separatorToken!354) lt!757316))))

(declare-fun b!2016655 () Bool)

(declare-fun e!1274417 () Bool)

(assert (=> b!2016655 (= e!1274417 false)))

(declare-fun b!2016656 () Bool)

(declare-fun Unit!36752 () Unit!36750)

(assert (=> b!2016656 (= e!1274403 Unit!36752)))

(declare-fun b!2016657 () Bool)

(declare-fun e!1274409 () Bool)

(declare-fun tp!601006 () Bool)

(assert (=> b!2016657 (= e!1274409 (and tp!601006 (inv!29320 (tag!4458 (h!27557 rules!3198))) (inv!29323 (transformation!3980 (h!27557 rules!3198))) e!1274410))))

(declare-fun b!2016658 () Bool)

(declare-fun Unit!36753 () Unit!36750)

(assert (=> b!2016658 (= e!1274403 Unit!36753)))

(declare-fun lt!757315 () Unit!36750)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!306 (Regex!5405 List!22237 C!10956) Unit!36750)

(assert (=> b!2016658 (= lt!757315 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!306 (regex!3980 (rule!6207 separatorToken!354)) lt!757335 lt!757327))))

(declare-fun res!884653 () Bool)

(assert (=> b!2016658 (= res!884653 (not (matchR!2671 (regex!3980 (rule!6207 separatorToken!354)) lt!757335)))))

(assert (=> b!2016658 (=> (not res!884653) (not e!1274417))))

(assert (=> b!2016658 e!1274417))

(declare-fun b!2016659 () Bool)

(declare-fun res!884647 () Bool)

(assert (=> b!2016659 (=> (not res!884647) (not e!1274425))))

(declare-fun sepAndNonSepRulesDisjointChars!1078 (List!22238 List!22238) Bool)

(assert (=> b!2016659 (= res!884647 (sepAndNonSepRulesDisjointChars!1078 rules!3198 rules!3198))))

(declare-fun tp!601002 () Bool)

(declare-fun b!2016660 () Bool)

(assert (=> b!2016660 (= e!1274408 (and (inv!21 (value!125021 separatorToken!354)) e!1274422 tp!601002))))

(declare-fun b!2016661 () Bool)

(declare-fun res!884658 () Bool)

(assert (=> b!2016661 (=> res!884658 e!1274420)))

(assert (=> b!2016661 (= res!884658 (not (contains!4072 rules!3198 (rule!6207 (h!27558 tokens!598)))))))

(declare-fun b!2016662 () Bool)

(declare-fun tp!600996 () Bool)

(assert (=> b!2016662 (= e!1274424 (and e!1274409 tp!600996))))

(declare-fun b!2016663 () Bool)

(declare-fun res!884659 () Bool)

(assert (=> b!2016663 (=> (not res!884659) (not e!1274425))))

(declare-fun rulesProduceEachTokenIndividuallyList!1324 (LexerInterface!3593 List!22238 List!22239) Bool)

(assert (=> b!2016663 (= res!884659 (rulesProduceEachTokenIndividuallyList!1324 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2016664 () Bool)

(declare-fun tp!601003 () Bool)

(assert (=> b!2016664 (= e!1274414 (and tp!601003 (inv!29320 (tag!4458 (rule!6207 (h!27558 tokens!598)))) (inv!29323 (transformation!3980 (rule!6207 (h!27558 tokens!598)))) e!1274419))))

(declare-fun b!2016665 () Bool)

(assert (=> b!2016665 (= e!1274421 e!1274407)))

(declare-fun res!884651 () Bool)

(assert (=> b!2016665 (=> (not res!884651) (not e!1274407))))

(assert (=> b!2016665 (= res!884651 (matchR!2671 (regex!3980 lt!757313) lt!757333))))

(assert (=> b!2016665 (= lt!757313 (get!7022 lt!757322))))

(declare-fun tp!600999 () Bool)

(declare-fun b!2016666 () Bool)

(assert (=> b!2016666 (= e!1274411 (and (inv!29324 (h!27558 tokens!598)) e!1274423 tp!600999))))

(assert (= (and start!198464 res!884650) b!2016637))

(assert (= (and b!2016637 res!884655) b!2016650))

(assert (= (and b!2016650 res!884664) b!2016663))

(assert (= (and b!2016663 res!884659) b!2016645))

(assert (= (and b!2016645 res!884648) b!2016635))

(assert (= (and b!2016635 res!884663) b!2016643))

(assert (= (and b!2016643 res!884654) b!2016659))

(assert (= (and b!2016659 res!884647) b!2016652))

(assert (= (and b!2016652 res!884660) b!2016636))

(assert (= (and b!2016636 res!884662) b!2016639))

(assert (= (and b!2016639 res!884665) b!2016654))

(assert (= (and b!2016636 res!884646) b!2016648))

(assert (= (and b!2016636 res!884652) b!2016665))

(assert (= (and b!2016665 res!884651) b!2016649))

(assert (= (and b!2016636 (not res!884657)) b!2016642))

(assert (= (and b!2016642 c!325753) b!2016658))

(assert (= (and b!2016642 (not c!325753)) b!2016656))

(assert (= (and b!2016658 res!884653) b!2016655))

(assert (= (and b!2016642 (not res!884656)) b!2016647))

(assert (= (and b!2016647 (not res!884661)) b!2016644))

(assert (= (and b!2016644 (not res!884649)) b!2016661))

(assert (= (and b!2016661 (not res!884658)) b!2016651))

(assert (= b!2016657 b!2016646))

(assert (= b!2016662 b!2016657))

(assert (= (and start!198464 ((_ is Cons!22156) rules!3198)) b!2016662))

(assert (= b!2016664 b!2016653))

(assert (= b!2016641 b!2016664))

(assert (= b!2016666 b!2016641))

(assert (= (and start!198464 ((_ is Cons!22157) tokens!598)) b!2016666))

(assert (= b!2016638 b!2016640))

(assert (= b!2016660 b!2016638))

(assert (= start!198464 b!2016660))

(declare-fun m!2450109 () Bool)

(assert (=> b!2016659 m!2450109))

(declare-fun m!2450111 () Bool)

(assert (=> b!2016657 m!2450111))

(declare-fun m!2450113 () Bool)

(assert (=> b!2016657 m!2450113))

(declare-fun m!2450115 () Bool)

(assert (=> b!2016643 m!2450115))

(declare-fun m!2450117 () Bool)

(assert (=> b!2016661 m!2450117))

(declare-fun m!2450119 () Bool)

(assert (=> b!2016666 m!2450119))

(declare-fun m!2450121 () Bool)

(assert (=> b!2016665 m!2450121))

(declare-fun m!2450123 () Bool)

(assert (=> b!2016665 m!2450123))

(declare-fun m!2450125 () Bool)

(assert (=> b!2016650 m!2450125))

(declare-fun m!2450127 () Bool)

(assert (=> start!198464 m!2450127))

(declare-fun m!2450129 () Bool)

(assert (=> b!2016638 m!2450129))

(declare-fun m!2450131 () Bool)

(assert (=> b!2016638 m!2450131))

(declare-fun m!2450133 () Bool)

(assert (=> b!2016645 m!2450133))

(declare-fun m!2450135 () Bool)

(assert (=> b!2016651 m!2450135))

(declare-fun m!2450137 () Bool)

(assert (=> b!2016637 m!2450137))

(declare-fun m!2450139 () Bool)

(assert (=> b!2016641 m!2450139))

(declare-fun m!2450141 () Bool)

(assert (=> b!2016663 m!2450141))

(declare-fun m!2450143 () Bool)

(assert (=> b!2016664 m!2450143))

(declare-fun m!2450145 () Bool)

(assert (=> b!2016664 m!2450145))

(declare-fun m!2450147 () Bool)

(assert (=> b!2016658 m!2450147))

(declare-fun m!2450149 () Bool)

(assert (=> b!2016658 m!2450149))

(declare-fun m!2450151 () Bool)

(assert (=> b!2016648 m!2450151))

(declare-fun m!2450153 () Bool)

(assert (=> b!2016636 m!2450153))

(declare-fun m!2450155 () Bool)

(assert (=> b!2016636 m!2450155))

(declare-fun m!2450157 () Bool)

(assert (=> b!2016636 m!2450157))

(declare-fun m!2450159 () Bool)

(assert (=> b!2016636 m!2450159))

(declare-fun m!2450161 () Bool)

(assert (=> b!2016636 m!2450161))

(declare-fun m!2450163 () Bool)

(assert (=> b!2016636 m!2450163))

(declare-fun m!2450165 () Bool)

(assert (=> b!2016636 m!2450165))

(declare-fun m!2450167 () Bool)

(assert (=> b!2016636 m!2450167))

(declare-fun m!2450169 () Bool)

(assert (=> b!2016636 m!2450169))

(declare-fun m!2450171 () Bool)

(assert (=> b!2016636 m!2450171))

(declare-fun m!2450173 () Bool)

(assert (=> b!2016636 m!2450173))

(declare-fun m!2450175 () Bool)

(assert (=> b!2016636 m!2450175))

(declare-fun m!2450177 () Bool)

(assert (=> b!2016636 m!2450177))

(declare-fun m!2450179 () Bool)

(assert (=> b!2016636 m!2450179))

(declare-fun m!2450181 () Bool)

(assert (=> b!2016636 m!2450181))

(assert (=> b!2016636 m!2450177))

(declare-fun m!2450183 () Bool)

(assert (=> b!2016636 m!2450183))

(assert (=> b!2016636 m!2450159))

(assert (=> b!2016636 m!2450155))

(declare-fun m!2450185 () Bool)

(assert (=> b!2016636 m!2450185))

(declare-fun m!2450187 () Bool)

(assert (=> b!2016636 m!2450187))

(declare-fun m!2450189 () Bool)

(assert (=> b!2016639 m!2450189))

(declare-fun m!2450191 () Bool)

(assert (=> b!2016639 m!2450191))

(declare-fun m!2450193 () Bool)

(assert (=> b!2016644 m!2450193))

(assert (=> b!2016644 m!2450193))

(declare-fun m!2450195 () Bool)

(assert (=> b!2016644 m!2450195))

(declare-fun m!2450197 () Bool)

(assert (=> b!2016644 m!2450197))

(declare-fun m!2450199 () Bool)

(assert (=> b!2016642 m!2450199))

(declare-fun m!2450201 () Bool)

(assert (=> b!2016642 m!2450201))

(declare-fun m!2450203 () Bool)

(assert (=> b!2016642 m!2450203))

(declare-fun m!2450205 () Bool)

(assert (=> b!2016642 m!2450205))

(declare-fun m!2450207 () Bool)

(assert (=> b!2016642 m!2450207))

(declare-fun m!2450209 () Bool)

(assert (=> b!2016642 m!2450209))

(declare-fun m!2450211 () Bool)

(assert (=> b!2016642 m!2450211))

(declare-fun m!2450213 () Bool)

(assert (=> b!2016642 m!2450213))

(declare-fun m!2450215 () Bool)

(assert (=> b!2016642 m!2450215))

(assert (=> b!2016642 m!2450203))

(declare-fun m!2450217 () Bool)

(assert (=> b!2016642 m!2450217))

(assert (=> b!2016642 m!2450209))

(declare-fun m!2450219 () Bool)

(assert (=> b!2016642 m!2450219))

(declare-fun m!2450221 () Bool)

(assert (=> b!2016642 m!2450221))

(declare-fun m!2450223 () Bool)

(assert (=> b!2016642 m!2450223))

(declare-fun m!2450225 () Bool)

(assert (=> b!2016642 m!2450225))

(assert (=> b!2016642 m!2450207))

(declare-fun m!2450227 () Bool)

(assert (=> b!2016642 m!2450227))

(declare-fun m!2450229 () Bool)

(assert (=> b!2016642 m!2450229))

(assert (=> b!2016642 m!2450211))

(declare-fun m!2450231 () Bool)

(assert (=> b!2016660 m!2450231))

(declare-fun m!2450233 () Bool)

(assert (=> b!2016647 m!2450233))

(check-sat (not b!2016645) (not b_next!57057) (not b!2016660) (not b_next!57061) (not b!2016659) (not b!2016658) (not b!2016638) (not b!2016644) (not b!2016636) b_and!159765 (not b!2016641) b_and!159767 (not b!2016639) b_and!159769 (not b_next!57065) (not b_next!57067) (not b!2016637) b_and!159773 (not b_next!57063) (not b!2016657) (not b!2016647) (not b!2016665) (not b!2016643) (not start!198464) (not b!2016642) (not b!2016662) (not b!2016666) (not b!2016651) b_and!159771 (not b!2016661) b_and!159775 (not b_next!57059) (not b!2016663) (not b!2016650) (not b!2016648) (not b!2016664))
(check-sat b_and!159767 (not b_next!57057) (not b_next!57061) b_and!159773 (not b_next!57063) b_and!159771 b_and!159765 b_and!159775 (not b_next!57059) b_and!159769 (not b_next!57065) (not b_next!57067))
